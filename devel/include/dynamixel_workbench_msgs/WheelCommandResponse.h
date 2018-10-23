// Generated by gencpp from file dynamixel_workbench_msgs/WheelCommandResponse.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_WHEELCOMMANDRESPONSE_H
#define DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_WHEELCOMMANDRESPONSE_H


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
struct WheelCommandResponse_
{
  typedef WheelCommandResponse_<ContainerAllocator> Type;

  WheelCommandResponse_()
    : result1(false)
    , result2(false)
    , result3(false)
    , result4(false)
    , result5(false)
    , result6(false)  {
    }
  WheelCommandResponse_(const ContainerAllocator& _alloc)
    : result1(false)
    , result2(false)
    , result3(false)
    , result4(false)
    , result5(false)
    , result6(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result1_type;
  _result1_type result1;

   typedef uint8_t _result2_type;
  _result2_type result2;

   typedef uint8_t _result3_type;
  _result3_type result3;

   typedef uint8_t _result4_type;
  _result4_type result4;

   typedef uint8_t _result5_type;
  _result5_type result5;

   typedef uint8_t _result6_type;
  _result6_type result6;





  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WheelCommandResponse_

typedef ::dynamixel_workbench_msgs::WheelCommandResponse_<std::allocator<void> > WheelCommandResponse;

typedef boost::shared_ptr< ::dynamixel_workbench_msgs::WheelCommandResponse > WheelCommandResponsePtr;
typedef boost::shared_ptr< ::dynamixel_workbench_msgs::WheelCommandResponse const> WheelCommandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6704d4d300d80107c044b1b9876947c8";
  }

  static const char* value(const ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6704d4d300d80107ULL;
  static const uint64_t static_value2 = 0xc044b1b9876947c8ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_workbench_msgs/WheelCommandResponse";
  }

  static const char* value(const ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result1\n\
bool result2\n\
bool result3\n\
bool result4\n\
bool result5\n\
bool result6\n\
\n\
";
  }

  static const char* value(const ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result1);
      stream.next(m.result2);
      stream.next(m.result3);
      stream.next(m.result4);
      stream.next(m.result5);
      stream.next(m.result6);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelCommandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_workbench_msgs::WheelCommandResponse_<ContainerAllocator>& v)
  {
    s << indent << "result1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result1);
    s << indent << "result2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result2);
    s << indent << "result3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result3);
    s << indent << "result4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result4);
    s << indent << "result5: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result5);
    s << indent << "result6: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_WORKBENCH_MSGS_MESSAGE_WHEELCOMMANDRESPONSE_H
