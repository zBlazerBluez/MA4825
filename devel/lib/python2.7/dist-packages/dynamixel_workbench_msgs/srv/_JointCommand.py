# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dynamixel_workbench_msgs/JointCommandRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class JointCommandRequest(genpy.Message):
  _md5sum = "d58e70f485ec85f7768652111cb4a8ef"
  _type = "dynamixel_workbench_msgs/JointCommandRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

string unit
uint8 id
float32 goal_position
float32 speed
"""
  __slots__ = ['unit','id','goal_position','speed']
  _slot_types = ['string','uint8','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       unit,id,goal_position,speed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(JointCommandRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.unit is None:
        self.unit = ''
      if self.id is None:
        self.id = 0
      if self.goal_position is None:
        self.goal_position = 0.
      if self.speed is None:
        self.speed = 0.
    else:
      self.unit = ''
      self.id = 0
      self.goal_position = 0.
      self.speed = 0.

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
      _x = self.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B2f().pack(_x.id, _x.goal_position, _x.speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unit = str[start:end].decode('utf-8')
      else:
        self.unit = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.id, _x.goal_position, _x.speed,) = _get_struct_B2f().unpack(str[start:end])
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
      _x = self.unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B2f().pack(_x.id, _x.goal_position, _x.speed))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unit = str[start:end].decode('utf-8')
      else:
        self.unit = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.id, _x.goal_position, _x.speed,) = _get_struct_B2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B2f = None
def _get_struct_B2f():
    global _struct_B2f
    if _struct_B2f is None:
        _struct_B2f = struct.Struct("<B2f")
    return _struct_B2f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dynamixel_workbench_msgs/JointCommandResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class JointCommandResponse(genpy.Message):
  _md5sum = "181b1b3801e118a4aa1620aede17def1"
  _type = "dynamixel_workbench_msgs/JointCommandResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool position_result
bool speed_result

"""
  __slots__ = ['position_result','speed_result']
  _slot_types = ['bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       position_result,speed_result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(JointCommandResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.position_result is None:
        self.position_result = False
      if self.speed_result is None:
        self.speed_result = False
    else:
      self.position_result = False
      self.speed_result = False

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
      buff.write(_get_struct_2B().pack(_x.position_result, _x.speed_result))
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
      end += 2
      (_x.position_result, _x.speed_result,) = _get_struct_2B().unpack(str[start:end])
      self.position_result = bool(self.position_result)
      self.speed_result = bool(self.speed_result)
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
      buff.write(_get_struct_2B().pack(_x.position_result, _x.speed_result))
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
      end += 2
      (_x.position_result, _x.speed_result,) = _get_struct_2B().unpack(str[start:end])
      self.position_result = bool(self.position_result)
      self.speed_result = bool(self.speed_result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
class JointCommand(object):
  _type          = 'dynamixel_workbench_msgs/JointCommand'
  _md5sum = '6f30535bbb57aee41ebc5cbacab95fb8'
  _request_class  = JointCommandRequest
  _response_class = JointCommandResponse
