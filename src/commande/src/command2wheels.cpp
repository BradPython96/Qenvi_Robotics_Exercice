#include "ros/ros.h"
#include "commande/wheelType.h"
#include "commande/commandType.h"

float r;
float L;
float u;
float w;

void commandCallBack(const commande::commandType::ConstPtr& msg)
{
    r = msg->rayon; //Rayon des roues
    L = msg->demi_ecart; //demi écart entre les roues
    u = msg->u; //commande linéaire
    w = msg->w; //commande angulaire
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "command2wheels");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<commande::wheelType>("wheels", 10);
    ros::Rate loop_rate(10);

    ros::Subscriber sub = n.subscribe("command", 10, commandCallBack);

    float saturation = 5; //Saturation en vitesse des roues 

    while(ros::ok())
    {
        commande::wheelType msg;

        
        msg.w1 = std::min(1/r*u + 1*L/r * w, saturation); //vitesse de rotation de la roue 1
        msg.w2 = std::min(1/r*u - L/r * w, saturation); //vitesse de rotation de la roue 2
        ROS_INFO("u = %f \t w = %f \t w1 = %f \t w2 = %f",u, w, msg.w1, msg.w2);
        pub.publish(msg);


        ros::spinOnce();

        loop_rate.sleep();

    }


return 0;
}
