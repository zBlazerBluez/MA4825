# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dynamixel_workbench_msgs/WheelCommandRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class WheelCommandRequest(genpy.Message):
  _md5sum = "0278bfb5ea9e6dcc5ff74346c66c1661"
  _type = "dynamixel_workbench_msgs/WheelCommandRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

float32 vel1
float32 vel2
float32 vel3
float32 vel4
float32 vel5
float32 vel6
"""
  __slots__ = ['vel1','vel2','vel3','vel4','vel5','vel6']
  _slot_types = ['float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       vel1,vel2,vel3,vel4,vel5,vel6

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WheelCommandRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.vel1 is None:
        self.vel1 = 0.
      if self.vel2 is None:
        self.vel2 = 0.
      if self.vel3 is None:
        self.vel3 = 0.
      if self.vel4 is None:
        self.vel4 = 0.
      if self.vel5 is None:
        self.vel5 = 0.
      if self.vel6 is None:
        self.vel6 = 0.
    else:
      self.vel1 = 0.
      self.vel2 = 0.
      self.vel3 = 0.
      self.vel4 = 0.
      self.vel5 = 0.
      self.vel6 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.vel1, _x.vel2, _x.vel3, _x.vel4, _x.vel5, _x.vel6))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.vel1, _x.vel2, _x.vel3, _x.vel4, _x.vel5, _x.vel6,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.vel1, _x.vel2, _x.vel3, _x.vel4, _x.vel5, _x.vel6))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.vel1, _x.vel2, _x.vel3, _x.vel4, _x.vel5, _x.vel6,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dynamixel_workbench_msgs/WheelCommandResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class WheelCommandResponse(genpy.Message):
  _md5sum = "6704d4d300d80107c044b1b9876947c8"
  _type = "dynamixel_workbench_msgs/WheelCommandResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool result1
bool result2
bool result3
bool result4
bool result5
bool result6

"""
  __slots__ = ['result1','result2','result3','result4','result5','result6']
  _slot_types = ['bool','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result1,result2,result3,result4,result5,result6

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WheelCommandResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.result1 is None:
        self.result1 = False
      if self.result2 is None:
        self.result2 = False
      if self.result3 is None:
        self.result3 = False
      if self.result4 is None:
        self.result4 = False
      if self.result5 is None:
        self.result5 = False
      if self.result6 is None:
        self.result6 = False
    else:
      self.result1 = False
      self.result2 = False
      self.result3 = False
      self.result4 = False
      self.result5 = False
      self.result6 = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6B().pack(_x.result1, _x.result2, _x.result3, _x.result4, _x.result5, _x.result6))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.result1, _x.result2, _x.result3, _x.result4, _x.result5, _x.result6,) = _get_struct_6B().unpack(str[start:end])
      self.result1 = bool(self.result1)
      self.result2 = bool(self.result2)
      self.result3 = bool(self.result3)
      self.result4 = bool(self.result4)
      self.result5 = bool(self.result5)
      self.result6 = bool(self.result6)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6B().pack(_x.result1, _x.result2, _x.result3, _x.result4, _x.result5, _x.result6))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.result1, _x.result2, _x.result3, _x.result4, _x.result5, _x.result6,) = _get_struct_6B().unpack(str[start:end])
      self.result1 = bool(self.result1)
      self.result2 = bool(self.result2)
      self.result3 = bool(self.result3)
      self.result4 = bool(self.result4)
      self.result5 = bool(self.result5)
      self.result6 = bool(self.result6)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6B = None
def _get_struct_6B():
    global _struct_6B
    if _struct_6B is None:
        _struct_6B = struct.Struct("<6B")
    return _struct_6B
class WheelCommand(object):
  _type          = 'dynamixel_workbench_msgs/WheelCommand'
  _md5sum = 'baceffa34ff35ffa84b373eb230d842b'
  _request_class  = WheelCommandRequest
  _response_class = WheelCommandResponse