// Generated by gencpp from file dynamixel_workbench_msgs/Input2ValRequest.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_INPUT2VALREQUEST_H
#define DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_INPUT2VALREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dynamixel_workbench_msgs
{
template <class ContainerAllocator>
struct Input2ValRequest_
{
  typedef Input2ValRequest_<ContainerAllocator> Type;

  Input2ValRequest_()
    : id(0)
    , radian(0.0)
    , speed(0.0)  {
    }
  Input2ValRequest_(const ContainerAllocator& _alloc)
    : id(0)
    , radian(0.0)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef float _radian_type;
  _radian_type radian;

   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Input2ValRequest_

typedef ::dynamixel_workbench_msgs::Input2ValRequest_<std::allocator<void> > Input2ValRequest;

typedef boost::shared_ptr< ::dynamixel_workbench_msgs::Input2ValRequest > Input2ValRequestPtr;
typedef boost::shared_ptr< ::dynamixel_workbench_msgs::Input2ValRequest const> Input2ValRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dynamixel_workbench_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dynamixel_workbench_msgs': ['/home/ryanlim95/catkin_ws/src/dynamixel-workbench/dynamixel-workbench-msgs/dynamixel_workbench_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25761d1ec2cfb824f8c0233246eb6301";
  }

  static const char* value(const ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25761d1ec2cfb824ULL;
  static const uint64_t static_value2 = 0xf8c0233246eb6301ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_workbench_msgs/Input2ValRequest";
  }

  static const char* value(const ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
uint8 id\n\
float32 radian\n\
float32 speed\n\
";
  }

  static const char* value(const ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.radian);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Input2ValRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_workbench_msgs::Input2ValRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "radian: ";
    Printer<float>::stream(s, indent + "  ", v.radian);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_INPUT2VALREQUEST_H
