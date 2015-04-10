
def valid_datatype(datatype)
  return ['short', 'byte', 'char', 'int', 'double', 'float', 'string', 'String', 'bool', 'boolean'].include? datatype.chomp
end

def valid_name?(name)
  return !(name.include? '*')
end

