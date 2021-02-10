#include "ros/ros.h"
#include "commande/commandType.h"

int main(int argc, char** argv)
{
    ros::init(argc, argv, "commandPublisher");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<commande::commandType>("command", 10);
    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        commande::commandType msg;
        
        msg.u = 1; //commande linéaire en m/s
        msg.w = 1; //commande angulaire en rad/s
        msg.rayon = 0.5; //en m
        msg.demi_ecart = 0.5; // en m
        pub.publish(msg);

        ros::spinOnce();

        loop_rate.sleep();

    }

    return 0;



}
