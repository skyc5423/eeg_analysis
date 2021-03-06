#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#
#  options string: py
#

import sys

from ..TSubject.ttypes import TSubject
from thrift.TRecursive import fix_spec
from thrift.Thrift import TType
from thrift.transport import TTransport

all_structs = []


class TSignal(object):
    """
    Attributes:
     - sessionId
     - signalGroup
     - label
     - phyMin
     - phyMax
     - digMin
     - digMax
     - adcBits
     - gain
     - dimension
     - sampleRate
     - samples
     - prefiltering
     - data
     - interpolatedData
     - badChannelSignal
     - interpolationSignal
    """


    def __init__(self, sessionId=None, signalGroup=None, label=None, phyMin=None, phyMax=None, digMin=None, digMax=None, adcBits=None, gain=None, dimension=None, sampleRate=None, samples=None, prefiltering=None, data=None, interpolatedData=None, badChannelSignal=None, interpolationSignal=None,):
        self.sessionId = sessionId
        self.signalGroup = signalGroup
        self.label = label
        self.phyMin = phyMin
        self.phyMax = phyMax
        self.digMin = digMin
        self.digMax = digMax
        self.adcBits = adcBits
        self.gain = gain
        self.dimension = dimension
        self.sampleRate = sampleRate
        self.samples = samples
        self.prefiltering = prefiltering
        self.data = data
        self.interpolatedData = interpolatedData
        self.badChannelSignal = badChannelSignal
        self.interpolationSignal = interpolationSignal

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.I64:
                    self.sessionId = iprot.readI64()
                else:
                    iprot.skip(ftype)
            elif fid == 2:
                if ftype == TType.I32:
                    self.signalGroup = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 3:
                if ftype == TType.I32:
                    self.label = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 4:
                if ftype == TType.DOUBLE:
                    self.phyMin = iprot.readDouble()
                else:
                    iprot.skip(ftype)
            elif fid == 5:
                if ftype == TType.DOUBLE:
                    self.phyMax = iprot.readDouble()
                else:
                    iprot.skip(ftype)
            elif fid == 6:
                if ftype == TType.I32:
                    self.digMin = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 7:
                if ftype == TType.I32:
                    self.digMax = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 8:
                if ftype == TType.I32:
                    self.adcBits = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 9:
                if ftype == TType.DOUBLE:
                    self.gain = iprot.readDouble()
                else:
                    iprot.skip(ftype)
            elif fid == 10:
                if ftype == TType.I32:
                    self.dimension = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 11:
                if ftype == TType.I32:
                    self.sampleRate = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 12:
                if ftype == TType.I32:
                    self.samples = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 13:
                if ftype == TType.STRING:
                    self.prefiltering = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 14:
                if ftype == TType.STRING:
                    self.data = iprot.readBinary()
                else:
                    iprot.skip(ftype)
            elif fid == 15:
                if ftype == TType.STRING:
                    self.interpolatedData = iprot.readBinary()
                else:
                    iprot.skip(ftype)
            elif fid == 16:
                if ftype == TType.BOOL:
                    self.badChannelSignal = iprot.readBool()
                else:
                    iprot.skip(ftype)
            elif fid == 17:
                if ftype == TType.BOOL:
                    self.interpolationSignal = iprot.readBool()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('TSignal')
        if self.sessionId is not None:
            oprot.writeFieldBegin('sessionId', TType.I64, 1)
            oprot.writeI64(self.sessionId)
            oprot.writeFieldEnd()
        if self.signalGroup is not None:
            oprot.writeFieldBegin('signalGroup', TType.I32, 2)
            oprot.writeI32(self.signalGroup)
            oprot.writeFieldEnd()
        if self.label is not None:
            oprot.writeFieldBegin('label', TType.I32, 3)
            oprot.writeI32(self.label)
            oprot.writeFieldEnd()
        if self.phyMin is not None:
            oprot.writeFieldBegin('phyMin', TType.DOUBLE, 4)
            oprot.writeDouble(self.phyMin)
            oprot.writeFieldEnd()
        if self.phyMax is not None:
            oprot.writeFieldBegin('phyMax', TType.DOUBLE, 5)
            oprot.writeDouble(self.phyMax)
            oprot.writeFieldEnd()
        if self.digMin is not None:
            oprot.writeFieldBegin('digMin', TType.I32, 6)
            oprot.writeI32(self.digMin)
            oprot.writeFieldEnd()
        if self.digMax is not None:
            oprot.writeFieldBegin('digMax', TType.I32, 7)
            oprot.writeI32(self.digMax)
            oprot.writeFieldEnd()
        if self.adcBits is not None:
            oprot.writeFieldBegin('adcBits', TType.I32, 8)
            oprot.writeI32(self.adcBits)
            oprot.writeFieldEnd()
        if self.gain is not None:
            oprot.writeFieldBegin('gain', TType.DOUBLE, 9)
            oprot.writeDouble(self.gain)
            oprot.writeFieldEnd()
        if self.dimension is not None:
            oprot.writeFieldBegin('dimension', TType.I32, 10)
            oprot.writeI32(self.dimension)
            oprot.writeFieldEnd()
        if self.sampleRate is not None:
            oprot.writeFieldBegin('sampleRate', TType.I32, 11)
            oprot.writeI32(self.sampleRate)
            oprot.writeFieldEnd()
        if self.samples is not None:
            oprot.writeFieldBegin('samples', TType.I32, 12)
            oprot.writeI32(self.samples)
            oprot.writeFieldEnd()
        if self.prefiltering is not None:
            oprot.writeFieldBegin('prefiltering', TType.STRING, 13)
            oprot.writeString(self.prefiltering.encode('utf-8') if sys.version_info[0] == 2 else self.prefiltering)
            oprot.writeFieldEnd()
        if self.data is not None:
            oprot.writeFieldBegin('data', TType.STRING, 14)
            oprot.writeBinary(self.data)
            oprot.writeFieldEnd()
        if self.interpolatedData is not None:
            oprot.writeFieldBegin('interpolatedData', TType.STRING, 15)
            oprot.writeBinary(self.interpolatedData)
            oprot.writeFieldEnd()
        if self.badChannelSignal is not None:
            oprot.writeFieldBegin('badChannelSignal', TType.BOOL, 16)
            oprot.writeBool(self.badChannelSignal)
            oprot.writeFieldEnd()
        if self.interpolationSignal is not None:
            oprot.writeFieldBegin('interpolationSignal', TType.BOOL, 17)
            oprot.writeBool(self.interpolationSignal)
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)


class TSignalAnnotation(object):
    """
    Attributes:
     - startIndex
     - endIndex
     - name
     - description
     - artifact
    """


    def __init__(self, startIndex=None, endIndex=None, name=None, description=None, artifact=None,):
        self.startIndex = startIndex
        self.endIndex = endIndex
        self.name = name
        self.description = description
        self.artifact = artifact

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.I32:
                    self.startIndex = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 2:
                if ftype == TType.I32:
                    self.endIndex = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 3:
                if ftype == TType.STRING:
                    self.name = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 4:
                if ftype == TType.STRING:
                    self.description = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 5:
                if ftype == TType.BOOL:
                    self.artifact = iprot.readBool()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('TSignalAnnotation')
        if self.startIndex is not None:
            oprot.writeFieldBegin('startIndex', TType.I32, 1)
            oprot.writeI32(self.startIndex)
            oprot.writeFieldEnd()
        if self.endIndex is not None:
            oprot.writeFieldBegin('endIndex', TType.I32, 2)
            oprot.writeI32(self.endIndex)
            oprot.writeFieldEnd()
        if self.name is not None:
            oprot.writeFieldBegin('name', TType.STRING, 3)
            oprot.writeString(self.name.encode('utf-8') if sys.version_info[0] == 2 else self.name)
            oprot.writeFieldEnd()
        if self.description is not None:
            oprot.writeFieldBegin('description', TType.STRING, 4)
            oprot.writeString(self.description.encode('utf-8') if sys.version_info[0] == 2 else self.description)
            oprot.writeFieldEnd()
        if self.artifact is not None:
            oprot.writeFieldBegin('artifact', TType.BOOL, 5)
            oprot.writeBool(self.artifact)
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)


class TSQIParam(object):
    """
    Attributes:
     - indexList
    """


    def __init__(self, indexList=None,):
        self.indexList = indexList

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.LIST:
                    self.indexList = []
                    (_etype3, _size0) = iprot.readListBegin()
                    for _i4 in range(_size0):
                        _elem5 = iprot.readI32()
                        self.indexList.append(_elem5)
                    iprot.readListEnd()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('TSQIParam')
        if self.indexList is not None:
            oprot.writeFieldBegin('indexList', TType.LIST, 1)
            oprot.writeListBegin(TType.I32, len(self.indexList))
            for iter6 in self.indexList:
                oprot.writeI32(iter6)
            oprot.writeListEnd()
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)


class TSignalQualityIndexValue(object):
    """
    Attributes:
     - index
     - values
    """


    def __init__(self, index=None, values=None,):
        self.index = index
        self.values = values

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.I32:
                    self.index = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 2:
                if ftype == TType.LIST:
                    self.values = []
                    (_etype10, _size7) = iprot.readListBegin()
                    for _i11 in range(_size7):
                        _elem12 = iprot.readI32()
                        self.values.append(_elem12)
                    iprot.readListEnd()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('TSignalQualityIndexValue')
        if self.index is not None:
            oprot.writeFieldBegin('index', TType.I32, 1)
            oprot.writeI32(self.index)
            oprot.writeFieldEnd()
        if self.values is not None:
            oprot.writeFieldBegin('values', TType.LIST, 2)
            oprot.writeListBegin(TType.I32, len(self.values))
            for iter13 in self.values:
                oprot.writeI32(iter13)
            oprot.writeListEnd()
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)


class TSignalSession(object):
    """
    Attributes:
     - id
     - name
     - recStartTime
     - recStopTime
     - eegSamplingRate
     - eegSamples
     - montage
     - eyeStatus
     - impedanceOn
     - transducer
     - description
     - stationId
     - stationCode
     - moduleId
     - moduleCode
     - subject
     - sigAnnotations
     - signals
     - sqiValues
     - sqiParam
     - yFileType
     - cleanSignalTime
     - interpolation
     - artifactSegmentRejection
     - revision
     - badChannel
     - artifactAnnotations
    """


    def __init__(self, id=None, name=None, recStartTime=None, recStopTime=None, eegSamplingRate=None, eegSamples=None, montage=None, eyeStatus=None, impedanceOn=None, transducer=None, description=None, stationId=None, stationCode=None, moduleId=None, moduleCode=None, subject=None, sigAnnotations=None, signals=None, sqiValues=None, sqiParam=None, yFileType=None, cleanSignalTime=None, interpolation=None, artifactSegmentRejection=None, revision=None, badChannel=None, artifactAnnotations=None,):
        self.id = id
        self.name = name
        self.recStartTime = recStartTime
        self.recStopTime = recStopTime
        self.eegSamplingRate = eegSamplingRate
        self.eegSamples = eegSamples
        self.montage = montage
        self.eyeStatus = eyeStatus
        self.impedanceOn = impedanceOn
        self.transducer = transducer
        self.description = description
        self.stationId = stationId
        self.stationCode = stationCode
        self.moduleId = moduleId
        self.moduleCode = moduleCode
        self.subject = subject
        self.sigAnnotations = sigAnnotations
        self.signals = signals
        self.sqiValues = sqiValues
        self.sqiParam = sqiParam
        self.yFileType = yFileType
        self.cleanSignalTime = cleanSignalTime
        self.interpolation = interpolation
        self.artifactSegmentRejection = artifactSegmentRejection
        self.revision = revision
        self.badChannel = badChannel
        self.artifactAnnotations = artifactAnnotations

    def read(self, iprot):
        if iprot._fast_decode is not None and isinstance(iprot.trans, TTransport.CReadableTransport) and self.thrift_spec is not None:
            iprot._fast_decode(self, iprot, [self.__class__, self.thrift_spec])
            return
        iprot.readStructBegin()
        while True:
            (fname, ftype, fid) = iprot.readFieldBegin()
            if ftype == TType.STOP:
                break
            if fid == 1:
                if ftype == TType.I64:
                    self.id = iprot.readI64()
                else:
                    iprot.skip(ftype)
            elif fid == 2:
                if ftype == TType.STRING:
                    self.name = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 3:
                if ftype == TType.I64:
                    self.recStartTime = iprot.readI64()
                else:
                    iprot.skip(ftype)
            elif fid == 4:
                if ftype == TType.I64:
                    self.recStopTime = iprot.readI64()
                else:
                    iprot.skip(ftype)
            elif fid == 5:
                if ftype == TType.I32:
                    self.eegSamplingRate = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 6:
                if ftype == TType.I32:
                    self.eegSamples = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 7:
                if ftype == TType.I32:
                    self.montage = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 8:
                if ftype == TType.I32:
                    self.eyeStatus = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 9:
                if ftype == TType.BOOL:
                    self.impedanceOn = iprot.readBool()
                else:
                    iprot.skip(ftype)
            elif fid == 10:
                if ftype == TType.I32:
                    self.transducer = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 11:
                if ftype == TType.STRING:
                    self.description = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 12:
                if ftype == TType.I64:
                    self.stationId = iprot.readI64()
                else:
                    iprot.skip(ftype)
            elif fid == 13:
                if ftype == TType.STRING:
                    self.stationCode = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 14:
                if ftype == TType.I64:
                    self.moduleId = iprot.readI64()
                else:
                    iprot.skip(ftype)
            elif fid == 15:
                if ftype == TType.STRING:
                    self.moduleCode = iprot.readString().decode('utf-8') if sys.version_info[0] == 2 else iprot.readString()
                else:
                    iprot.skip(ftype)
            elif fid == 16:
                if ftype == TType.STRUCT:
                    self.subject = TSubject()
                    self.subject.read(iprot)
                else:
                    iprot.skip(ftype)
            elif fid == 17:
                if ftype == TType.LIST:
                    self.sigAnnotations = []
                    (_etype17, _size14) = iprot.readListBegin()
                    for _i18 in range(_size14):
                        _elem19 = TSignalAnnotation()
                        _elem19.read(iprot)
                        self.sigAnnotations.append(_elem19)
                    iprot.readListEnd()
                else:
                    iprot.skip(ftype)
            elif fid == 18:
                if ftype == TType.LIST:
                    self.signals = []
                    (_etype23, _size20) = iprot.readListBegin()
                    for _i24 in range(_size20):
                        _elem25 = TSignal()
                        _elem25.read(iprot)
                        self.signals.append(_elem25)
                    iprot.readListEnd()
                else:
                    iprot.skip(ftype)
            elif fid == 19:
                if ftype == TType.LIST:
                    self.sqiValues = []
                    (_etype29, _size26) = iprot.readListBegin()
                    for _i30 in range(_size26):
                        _elem31 = TSignalQualityIndexValue()
                        _elem31.read(iprot)
                        self.sqiValues.append(_elem31)
                    iprot.readListEnd()
                else:
                    iprot.skip(ftype)
            elif fid == 20:
                if ftype == TType.STRUCT:
                    self.sqiParam = TSQIParam()
                    self.sqiParam.read(iprot)
                else:
                    iprot.skip(ftype)
            elif fid == 21:
                if ftype == TType.I32:
                    self.yFileType = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 22:
                if ftype == TType.I32:
                    self.cleanSignalTime = iprot.readI32()
                else:
                    iprot.skip(ftype)
            elif fid == 23:
                if ftype == TType.BOOL:
                    self.interpolation = iprot.readBool()
                else:
                    iprot.skip(ftype)
            elif fid == 24:
                if ftype == TType.BOOL:
                    self.artifactSegmentRejection = iprot.readBool()
                else:
                    iprot.skip(ftype)
            elif fid == 25:
                if ftype == TType.BOOL:
                    self.revision = iprot.readBool()
                else:
                    iprot.skip(ftype)
            elif fid == 26:
                if ftype == TType.BOOL:
                    self.badChannel = iprot.readBool()
                else:
                    iprot.skip(ftype)
            elif fid == 27:
                if ftype == TType.LIST:
                    self.artifactAnnotations = []
                    (_etype35, _size32) = iprot.readListBegin()
                    for _i36 in range(_size32):
                        _elem37 = TSignalAnnotation()
                        _elem37.read(iprot)
                        self.artifactAnnotations.append(_elem37)
                    iprot.readListEnd()
                else:
                    iprot.skip(ftype)
            else:
                iprot.skip(ftype)
            iprot.readFieldEnd()
        iprot.readStructEnd()

    def write(self, oprot):
        if oprot._fast_encode is not None and self.thrift_spec is not None:
            oprot.trans.write(oprot._fast_encode(self, [self.__class__, self.thrift_spec]))
            return
        oprot.writeStructBegin('TSignalSession')
        if self.id is not None:
            oprot.writeFieldBegin('id', TType.I64, 1)
            oprot.writeI64(self.id)
            oprot.writeFieldEnd()
        if self.name is not None:
            oprot.writeFieldBegin('name', TType.STRING, 2)
            oprot.writeString(self.name.encode('utf-8') if sys.version_info[0] == 2 else self.name)
            oprot.writeFieldEnd()
        if self.recStartTime is not None:
            oprot.writeFieldBegin('recStartTime', TType.I64, 3)
            oprot.writeI64(self.recStartTime)
            oprot.writeFieldEnd()
        if self.recStopTime is not None:
            oprot.writeFieldBegin('recStopTime', TType.I64, 4)
            oprot.writeI64(self.recStopTime)
            oprot.writeFieldEnd()
        if self.eegSamplingRate is not None:
            oprot.writeFieldBegin('eegSamplingRate', TType.I32, 5)
            oprot.writeI32(self.eegSamplingRate)
            oprot.writeFieldEnd()
        if self.eegSamples is not None:
            oprot.writeFieldBegin('eegSamples', TType.I32, 6)
            oprot.writeI32(self.eegSamples)
            oprot.writeFieldEnd()
        if self.montage is not None:
            oprot.writeFieldBegin('montage', TType.I32, 7)
            oprot.writeI32(self.montage)
            oprot.writeFieldEnd()
        if self.eyeStatus is not None:
            oprot.writeFieldBegin('eyeStatus', TType.I32, 8)
            oprot.writeI32(self.eyeStatus)
            oprot.writeFieldEnd()
        if self.impedanceOn is not None:
            oprot.writeFieldBegin('impedanceOn', TType.BOOL, 9)
            oprot.writeBool(self.impedanceOn)
            oprot.writeFieldEnd()
        if self.transducer is not None:
            oprot.writeFieldBegin('transducer', TType.I32, 10)
            oprot.writeI32(self.transducer)
            oprot.writeFieldEnd()
        if self.description is not None:
            oprot.writeFieldBegin('description', TType.STRING, 11)
            oprot.writeString(self.description.encode('utf-8') if sys.version_info[0] == 2 else self.description)
            oprot.writeFieldEnd()
        if self.stationId is not None:
            oprot.writeFieldBegin('stationId', TType.I64, 12)
            oprot.writeI64(self.stationId)
            oprot.writeFieldEnd()
        if self.stationCode is not None:
            oprot.writeFieldBegin('stationCode', TType.STRING, 13)
            oprot.writeString(self.stationCode.encode('utf-8') if sys.version_info[0] == 2 else self.stationCode)
            oprot.writeFieldEnd()
        if self.moduleId is not None:
            oprot.writeFieldBegin('moduleId', TType.I64, 14)
            oprot.writeI64(self.moduleId)
            oprot.writeFieldEnd()
        if self.moduleCode is not None:
            oprot.writeFieldBegin('moduleCode', TType.STRING, 15)
            oprot.writeString(self.moduleCode.encode('utf-8') if sys.version_info[0] == 2 else self.moduleCode)
            oprot.writeFieldEnd()
        if self.subject is not None:
            oprot.writeFieldBegin('subject', TType.STRUCT, 16)
            self.subject.write(oprot)
            oprot.writeFieldEnd()
        if self.sigAnnotations is not None:
            oprot.writeFieldBegin('sigAnnotations', TType.LIST, 17)
            oprot.writeListBegin(TType.STRUCT, len(self.sigAnnotations))
            for iter38 in self.sigAnnotations:
                iter38.write(oprot)
            oprot.writeListEnd()
            oprot.writeFieldEnd()
        if self.signals is not None:
            oprot.writeFieldBegin('signals', TType.LIST, 18)
            oprot.writeListBegin(TType.STRUCT, len(self.signals))
            for iter39 in self.signals:
                iter39.write(oprot)
            oprot.writeListEnd()
            oprot.writeFieldEnd()
        if self.sqiValues is not None:
            oprot.writeFieldBegin('sqiValues', TType.LIST, 19)
            oprot.writeListBegin(TType.STRUCT, len(self.sqiValues))
            for iter40 in self.sqiValues:
                iter40.write(oprot)
            oprot.writeListEnd()
            oprot.writeFieldEnd()
        if self.sqiParam is not None:
            oprot.writeFieldBegin('sqiParam', TType.STRUCT, 20)
            self.sqiParam.write(oprot)
            oprot.writeFieldEnd()
        if self.yFileType is not None:
            oprot.writeFieldBegin('yFileType', TType.I32, 21)
            oprot.writeI32(self.yFileType)
            oprot.writeFieldEnd()
        if self.cleanSignalTime is not None:
            oprot.writeFieldBegin('cleanSignalTime', TType.I32, 22)
            oprot.writeI32(self.cleanSignalTime)
            oprot.writeFieldEnd()
        if self.interpolation is not None:
            oprot.writeFieldBegin('interpolation', TType.BOOL, 23)
            oprot.writeBool(self.interpolation)
            oprot.writeFieldEnd()
        if self.artifactSegmentRejection is not None:
            oprot.writeFieldBegin('artifactSegmentRejection', TType.BOOL, 24)
            oprot.writeBool(self.artifactSegmentRejection)
            oprot.writeFieldEnd()
        if self.revision is not None:
            oprot.writeFieldBegin('revision', TType.BOOL, 25)
            oprot.writeBool(self.revision)
            oprot.writeFieldEnd()
        if self.badChannel is not None:
            oprot.writeFieldBegin('badChannel', TType.BOOL, 26)
            oprot.writeBool(self.badChannel)
            oprot.writeFieldEnd()
        if self.artifactAnnotations is not None:
            oprot.writeFieldBegin('artifactAnnotations', TType.LIST, 27)
            oprot.writeListBegin(TType.STRUCT, len(self.artifactAnnotations))
            for iter41 in self.artifactAnnotations:
                iter41.write(oprot)
            oprot.writeListEnd()
            oprot.writeFieldEnd()
        oprot.writeFieldStop()
        oprot.writeStructEnd()

    def validate(self):
        return

    def __repr__(self):
        L = ['%s=%r' % (key, value)
             for key, value in self.__dict__.items()]
        return '%s(%s)' % (self.__class__.__name__, ', '.join(L))

    def __eq__(self, other):
        return isinstance(other, self.__class__) and self.__dict__ == other.__dict__

    def __ne__(self, other):
        return not (self == other)
all_structs.append(TSignal)
TSignal.thrift_spec = (
    None,  # 0
    (1, TType.I64, 'sessionId', None, None, ),  # 1
    (2, TType.I32, 'signalGroup', None, None, ),  # 2
    (3, TType.I32, 'label', None, None, ),  # 3
    (4, TType.DOUBLE, 'phyMin', None, None, ),  # 4
    (5, TType.DOUBLE, 'phyMax', None, None, ),  # 5
    (6, TType.I32, 'digMin', None, None, ),  # 6
    (7, TType.I32, 'digMax', None, None, ),  # 7
    (8, TType.I32, 'adcBits', None, None, ),  # 8
    (9, TType.DOUBLE, 'gain', None, None, ),  # 9
    (10, TType.I32, 'dimension', None, None, ),  # 10
    (11, TType.I32, 'sampleRate', None, None, ),  # 11
    (12, TType.I32, 'samples', None, None, ),  # 12
    (13, TType.STRING, 'prefiltering', 'UTF8', None, ),  # 13
    (14, TType.STRING, 'data', 'BINARY', None, ),  # 14
    (15, TType.STRING, 'interpolatedData', 'BINARY', None, ),  # 15
    (16, TType.BOOL, 'badChannelSignal', None, None, ),  # 16
    (17, TType.BOOL, 'interpolationSignal', None, None, ),  # 17
)
all_structs.append(TSignalAnnotation)
TSignalAnnotation.thrift_spec = (
    None,  # 0
    (1, TType.I32, 'startIndex', None, None, ),  # 1
    (2, TType.I32, 'endIndex', None, None, ),  # 2
    (3, TType.STRING, 'name', 'UTF8', None, ),  # 3
    (4, TType.STRING, 'description', 'UTF8', None, ),  # 4
    (5, TType.BOOL, 'artifact', None, None, ),  # 5
)
all_structs.append(TSQIParam)
TSQIParam.thrift_spec = (
    None,  # 0
    (1, TType.LIST, 'indexList', (TType.I32, None, False), None, ),  # 1
)
all_structs.append(TSignalQualityIndexValue)
TSignalQualityIndexValue.thrift_spec = (
    None,  # 0
    (1, TType.I32, 'index', None, None, ),  # 1
    (2, TType.LIST, 'values', (TType.I32, None, False), None, ),  # 2
)
all_structs.append(TSignalSession)
TSignalSession.thrift_spec = (
    None,  # 0
    (1, TType.I64, 'id', None, None, ),  # 1
    (2, TType.STRING, 'name', 'UTF8', None, ),  # 2
    (3, TType.I64, 'recStartTime', None, None, ),  # 3
    (4, TType.I64, 'recStopTime', None, None, ),  # 4
    (5, TType.I32, 'eegSamplingRate', None, None, ),  # 5
    (6, TType.I32, 'eegSamples', None, None, ),  # 6
    (7, TType.I32, 'montage', None, None, ),  # 7
    (8, TType.I32, 'eyeStatus', None, None, ),  # 8
    (9, TType.BOOL, 'impedanceOn', None, None, ),  # 9
    (10, TType.I32, 'transducer', None, None, ),  # 10
    (11, TType.STRING, 'description', 'UTF8', None, ),  # 11
    (12, TType.I64, 'stationId', None, None, ),  # 12
    (13, TType.STRING, 'stationCode', 'UTF8', None, ),  # 13
    (14, TType.I64, 'moduleId', None, None, ),  # 14
    (15, TType.STRING, 'moduleCode', 'UTF8', None, ),  # 15
    (16, TType.STRUCT, 'subject', [TSubject, None], None, ),  # 16
    (17, TType.LIST, 'sigAnnotations', (TType.STRUCT, [TSignalAnnotation, None], False), None, ),  # 17
    (18, TType.LIST, 'signals', (TType.STRUCT, [TSignal, None], False), None, ),  # 18
    (19, TType.LIST, 'sqiValues', (TType.STRUCT, [TSignalQualityIndexValue, None], False), None, ),  # 19
    (20, TType.STRUCT, 'sqiParam', [TSQIParam, None], None, ),  # 20
    (21, TType.I32, 'yFileType', None, None, ),  # 21
    (22, TType.I32, 'cleanSignalTime', None, None, ),  # 22
    (23, TType.BOOL, 'interpolation', None, None, ),  # 23
    (24, TType.BOOL, 'artifactSegmentRejection', None, None, ),  # 24
    (25, TType.BOOL, 'revision', None, None, ),  # 25
    (26, TType.BOOL, 'badChannel', None, None, ),  # 26
    (27, TType.LIST, 'artifactAnnotations', (TType.STRUCT, [TSignalAnnotation, None], False), None, ),  # 27
)
fix_spec(all_structs)
del all_structs
