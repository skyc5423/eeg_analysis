??+
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?"serve*2.0.02v2.0.0-rc2-26-g64c3d388??'
?
my_model/conv2d/kernelVarHandleOp*'
shared_namemy_model/conv2d/kernel*
dtype0*
_output_shapes
: *
shape:
?
*my_model/conv2d/kernel/Read/ReadVariableOpReadVariableOpmy_model/conv2d/kernel*
dtype0*&
_output_shapes
:
?
my_model/conv2d/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*%
shared_namemy_model/conv2d/bias
y
(my_model/conv2d/bias/Read/ReadVariableOpReadVariableOpmy_model/conv2d/bias*
dtype0*
_output_shapes
:
?
"my_model/batch_normalization/gammaVarHandleOp*
shape:*3
shared_name$"my_model/batch_normalization/gamma*
dtype0*
_output_shapes
: 
?
6my_model/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp"my_model/batch_normalization/gamma*
dtype0*
_output_shapes
:
?
!my_model/batch_normalization/betaVarHandleOp*2
shared_name#!my_model/batch_normalization/beta*
dtype0*
_output_shapes
: *
shape:
?
5my_model/batch_normalization/beta/Read/ReadVariableOpReadVariableOp!my_model/batch_normalization/beta*
dtype0*
_output_shapes
:
?
(my_model/batch_normalization/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:*9
shared_name*(my_model/batch_normalization/moving_mean
?
<my_model/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp(my_model/batch_normalization/moving_mean*
dtype0*
_output_shapes
:
?
,my_model/batch_normalization/moving_varianceVarHandleOp*
shape:*=
shared_name.,my_model/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
?
@my_model/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp,my_model/batch_normalization/moving_variance*
_output_shapes
:*
dtype0
?
my_model/conv2d_1/kernelVarHandleOp*
shape:*)
shared_namemy_model/conv2d_1/kernel*
dtype0*
_output_shapes
: 
?
,my_model/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpmy_model/conv2d_1/kernel*
dtype0*&
_output_shapes
:
?
my_model/conv2d_1/biasVarHandleOp*'
shared_namemy_model/conv2d_1/bias*
dtype0*
_output_shapes
: *
shape:
}
*my_model/conv2d_1/bias/Read/ReadVariableOpReadVariableOpmy_model/conv2d_1/bias*
dtype0*
_output_shapes
:
?
$my_model/batch_normalization_1/gammaVarHandleOp*
dtype0*
_output_shapes
: *
shape:*5
shared_name&$my_model/batch_normalization_1/gamma
?
8my_model/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp$my_model/batch_normalization_1/gamma*
dtype0*
_output_shapes
:
?
#my_model/batch_normalization_1/betaVarHandleOp*4
shared_name%#my_model/batch_normalization_1/beta*
dtype0*
_output_shapes
: *
shape:
?
7my_model/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp#my_model/batch_normalization_1/beta*
dtype0*
_output_shapes
:
?
*my_model/batch_normalization_1/moving_meanVarHandleOp*
shape:*;
shared_name,*my_model/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
?
>my_model/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp*my_model/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:
?
.my_model/batch_normalization_1/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:*?
shared_name0.my_model/batch_normalization_1/moving_variance
?
Bmy_model/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp.my_model/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:
?
my_model/conv2d_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape: *)
shared_namemy_model/conv2d_2/kernel
?
,my_model/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpmy_model/conv2d_2/kernel*&
_output_shapes
: *
dtype0
?
my_model/conv2d_2/biasVarHandleOp*'
shared_namemy_model/conv2d_2/bias*
dtype0*
_output_shapes
: *
shape: 
}
*my_model/conv2d_2/bias/Read/ReadVariableOpReadVariableOpmy_model/conv2d_2/bias*
dtype0*
_output_shapes
: 
?
$my_model/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
shape: *5
shared_name&$my_model/batch_normalization_2/gamma*
dtype0
?
8my_model/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp$my_model/batch_normalization_2/gamma*
dtype0*
_output_shapes
: 
?
#my_model/batch_normalization_2/betaVarHandleOp*
shape: *4
shared_name%#my_model/batch_normalization_2/beta*
dtype0*
_output_shapes
: 
?
7my_model/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp#my_model/batch_normalization_2/beta*
dtype0*
_output_shapes
: 
?
*my_model/batch_normalization_2/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape: *;
shared_name,*my_model/batch_normalization_2/moving_mean
?
>my_model/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp*my_model/batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
?
.my_model/batch_normalization_2/moving_varianceVarHandleOp*
shape: *?
shared_name0.my_model/batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
?
Bmy_model/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp.my_model/batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
?
my_model/conv2d_3/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape: @*)
shared_namemy_model/conv2d_3/kernel
?
,my_model/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpmy_model/conv2d_3/kernel*
dtype0*&
_output_shapes
: @
?
my_model/conv2d_3/biasVarHandleOp*
shape:@*'
shared_namemy_model/conv2d_3/bias*
dtype0*
_output_shapes
: 
}
*my_model/conv2d_3/bias/Read/ReadVariableOpReadVariableOpmy_model/conv2d_3/bias*
dtype0*
_output_shapes
:@
?
$my_model/batch_normalization_3/gammaVarHandleOp*
shape:@*5
shared_name&$my_model/batch_normalization_3/gamma*
dtype0*
_output_shapes
: 
?
8my_model/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp$my_model/batch_normalization_3/gamma*
_output_shapes
:@*
dtype0
?
#my_model/batch_normalization_3/betaVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*4
shared_name%#my_model/batch_normalization_3/beta
?
7my_model/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp#my_model/batch_normalization_3/beta*
dtype0*
_output_shapes
:@
?
*my_model/batch_normalization_3/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*;
shared_name,*my_model/batch_normalization_3/moving_mean
?
>my_model/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp*my_model/batch_normalization_3/moving_mean*
dtype0*
_output_shapes
:@
?
.my_model/batch_normalization_3/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *
shape:@*?
shared_name0.my_model/batch_normalization_3/moving_variance
?
Bmy_model/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp.my_model/batch_normalization_3/moving_variance*
dtype0*
_output_shapes
:@
?
my_model/dense/kernelVarHandleOp*
shape:
? ?*&
shared_namemy_model/dense/kernel*
dtype0*
_output_shapes
: 
?
)my_model/dense/kernel/Read/ReadVariableOpReadVariableOpmy_model/dense/kernel*
dtype0* 
_output_shapes
:
? ?

my_model/dense/biasVarHandleOp*
shape:?*$
shared_namemy_model/dense/bias*
dtype0*
_output_shapes
: 
x
'my_model/dense/bias/Read/ReadVariableOpReadVariableOpmy_model/dense/bias*
_output_shapes	
:?*
dtype0
?
my_model/dense_1/kernelVarHandleOp*(
shared_namemy_model/dense_1/kernel*
dtype0*
_output_shapes
: *
shape:
??
?
+my_model/dense_1/kernel/Read/ReadVariableOpReadVariableOpmy_model/dense_1/kernel*
dtype0* 
_output_shapes
:
??
?
my_model/dense_1/biasVarHandleOp*
shape:?*&
shared_namemy_model/dense_1/bias*
dtype0*
_output_shapes
: 
|
)my_model/dense_1/bias/Read/ReadVariableOpReadVariableOpmy_model/dense_1/bias*
dtype0*
_output_shapes	
:?
?
my_model/dense_2/kernelVarHandleOp*
shape:	?*(
shared_namemy_model/dense_2/kernel*
dtype0*
_output_shapes
: 
?
+my_model/dense_2/kernel/Read/ReadVariableOpReadVariableOpmy_model/dense_2/kernel*
dtype0*
_output_shapes
:	?
?
my_model/dense_2/biasVarHandleOp*&
shared_namemy_model/dense_2/bias*
dtype0*
_output_shapes
: *
shape:
{
)my_model/dense_2/bias/Read/ReadVariableOpReadVariableOpmy_model/dense_2/bias*
dtype0*
_output_shapes
:

NoOpNoOp
?N
ConstConst"/device:CPU:0*?N
value?NB?N B?M
?
relu
	conv1
bn1
	conv_do_1
	conv2
bn2
	conv_do_2
	conv3
	bn3

	conv_do_3
	conv4
bn4
	conv_do_4
reshape
fc1
do1
fc2
do2
fc3
out
regularization_losses
	variables
trainable_variables
	keras_api

signatures
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
?
$axis
	%gamma
&beta
'moving_mean
(moving_variance
)regularization_losses
*	variables
+trainable_variables
,	keras_api
R
-regularization_losses
.	variables
/trainable_variables
0	keras_api
h

1kernel
2bias
3regularization_losses
4	variables
5trainable_variables
6	keras_api
?
7axis
	8gamma
9beta
:moving_mean
;moving_variance
<regularization_losses
=	variables
>trainable_variables
?	keras_api
R
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
?
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
R
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
h

Wkernel
Xbias
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
?
]axis
	^gamma
_beta
`moving_mean
amoving_variance
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
R
fregularization_losses
g	variables
htrainable_variables
i	keras_api
R
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
h

nkernel
obias
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
R
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
h

xkernel
ybias
zregularization_losses
{	variables
|trainable_variables
}	keras_api
T
~regularization_losses
	variables
?trainable_variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
?
0
1
%2
&3
'4
(5
16
27
88
99
:10
;11
D12
E13
K14
L15
M16
N17
W18
X19
^20
_21
`22
a23
n24
o25
x26
y27
?28
?29
?
0
1
%2
&3
14
25
86
97
D8
E9
K10
L11
W12
X13
^14
_15
n16
o17
x18
y19
?20
?21
?
regularization_losses
?non_trainable_variables
trainable_variables
?layers
	variables
?metrics
 ?layer_regularization_losses
 
 
 
 
?
regularization_losses
?non_trainable_variables
trainable_variables
?layers
	variables
?metrics
 ?layer_regularization_losses
SQ
VARIABLE_VALUEmy_model/conv2d/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEmy_model/conv2d/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
 regularization_losses
?non_trainable_variables
"trainable_variables
?layers
!	variables
?metrics
 ?layer_regularization_losses
 
\Z
VARIABLE_VALUE"my_model/batch_normalization/gamma$bn1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE!my_model/batch_normalization/beta#bn1/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE(my_model/batch_normalization/moving_mean*bn1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE,my_model/batch_normalization/moving_variance.bn1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1
'2
(3

%0
&1
?
)regularization_losses
?non_trainable_variables
+trainable_variables
?layers
*	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
-regularization_losses
?non_trainable_variables
/trainable_variables
?layers
.	variables
?metrics
 ?layer_regularization_losses
US
VARIABLE_VALUEmy_model/conv2d_1/kernel'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEmy_model/conv2d_1/bias%conv2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

10
21

10
21
?
3regularization_losses
?non_trainable_variables
5trainable_variables
?layers
4	variables
?metrics
 ?layer_regularization_losses
 
^\
VARIABLE_VALUE$my_model/batch_normalization_1/gamma$bn2/gamma/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE#my_model/batch_normalization_1/beta#bn2/beta/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE*my_model/batch_normalization_1/moving_mean*bn2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE.my_model/batch_normalization_1/moving_variance.bn2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

80
91
:2
;3

80
91
?
<regularization_losses
?non_trainable_variables
>trainable_variables
?layers
=	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
@regularization_losses
?non_trainable_variables
Btrainable_variables
?layers
A	variables
?metrics
 ?layer_regularization_losses
US
VARIABLE_VALUEmy_model/conv2d_2/kernel'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEmy_model/conv2d_2/bias%conv3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
?
Fregularization_losses
?non_trainable_variables
Htrainable_variables
?layers
G	variables
?metrics
 ?layer_regularization_losses
 
^\
VARIABLE_VALUE$my_model/batch_normalization_2/gamma$bn3/gamma/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE#my_model/batch_normalization_2/beta#bn3/beta/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE*my_model/batch_normalization_2/moving_mean*bn3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE.my_model/batch_normalization_2/moving_variance.bn3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1
M2
N3

K0
L1
?
Oregularization_losses
?non_trainable_variables
Qtrainable_variables
?layers
P	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Sregularization_losses
?non_trainable_variables
Utrainable_variables
?layers
T	variables
?metrics
 ?layer_regularization_losses
US
VARIABLE_VALUEmy_model/conv2d_3/kernel'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEmy_model/conv2d_3/bias%conv4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

W0
X1

W0
X1
?
Yregularization_losses
?non_trainable_variables
[trainable_variables
?layers
Z	variables
?metrics
 ?layer_regularization_losses
 
^\
VARIABLE_VALUE$my_model/batch_normalization_3/gamma$bn4/gamma/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE#my_model/batch_normalization_3/beta#bn4/beta/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE*my_model/batch_normalization_3/moving_mean*bn4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE.my_model/batch_normalization_3/moving_variance.bn4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1
`2
a3

^0
_1
?
bregularization_losses
?non_trainable_variables
dtrainable_variables
?layers
c	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
fregularization_losses
?non_trainable_variables
htrainable_variables
?layers
g	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
jregularization_losses
?non_trainable_variables
ltrainable_variables
?layers
k	variables
?metrics
 ?layer_regularization_losses
PN
VARIABLE_VALUEmy_model/dense/kernel%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEmy_model/dense/bias#fc1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

n0
o1

n0
o1
?
pregularization_losses
?non_trainable_variables
rtrainable_variables
?layers
q	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
tregularization_losses
?non_trainable_variables
vtrainable_variables
?layers
u	variables
?metrics
 ?layer_regularization_losses
RP
VARIABLE_VALUEmy_model/dense_1/kernel%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEmy_model/dense_1/bias#fc2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

x0
y1

x0
y1
?
zregularization_losses
?non_trainable_variables
|trainable_variables
?layers
{	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
~regularization_losses
?non_trainable_variables
?trainable_variables
?layers
	variables
?metrics
 ?layer_regularization_losses
RP
VARIABLE_VALUEmy_model/dense_2/kernel%fc3/kernel/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEmy_model/dense_2/bias#fc3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?regularization_losses
?non_trainable_variables
?trainable_variables
?layers
?	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
?regularization_losses
?non_trainable_variables
?trainable_variables
?layers
?	variables
?metrics
 ?layer_regularization_losses
8
'0
(1
:2
;3
M4
N5
`6
a7
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
 
 
 
 
 
 
 
 
 
 

'0
(1
 
 
 
 
 
 
 
 
 
 
 

:0
;1
 
 
 
 
 
 
 
 
 
 
 

M0
N1
 
 
 
 
 
 
 
 
 
 
 

`0
a1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 *
dtype0*
_output_shapes
: 
?
serving_default_input_1Placeholder*
dtype0*1
_output_shapes
:???????????*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1my_model/conv2d/kernelmy_model/conv2d/bias"my_model/batch_normalization/gamma!my_model/batch_normalization/beta(my_model/batch_normalization/moving_mean,my_model/batch_normalization/moving_variancemy_model/conv2d_1/kernelmy_model/conv2d_1/bias$my_model/batch_normalization_1/gamma#my_model/batch_normalization_1/beta*my_model/batch_normalization_1/moving_mean.my_model/batch_normalization_1/moving_variancemy_model/conv2d_2/kernelmy_model/conv2d_2/bias$my_model/batch_normalization_2/gamma#my_model/batch_normalization_2/beta*my_model/batch_normalization_2/moving_mean.my_model/batch_normalization_2/moving_variancemy_model/conv2d_3/kernelmy_model/conv2d_3/bias$my_model/batch_normalization_3/gamma#my_model/batch_normalization_3/beta*my_model/batch_normalization_3/moving_mean.my_model/batch_normalization_3/moving_variancemy_model/dense/kernelmy_model/dense/biasmy_model/dense_1/kernelmy_model/dense_1/biasmy_model/dense_2/kernelmy_model/dense_2/bias*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????**
Tin#
!2*.
_gradient_op_typePartitionedCall-4918274*.
f)R'
%__inference_signature_wrapper_4916077
O
saver_filenamePlaceholder*
dtype0*
_output_shapes
: *
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*my_model/conv2d/kernel/Read/ReadVariableOp(my_model/conv2d/bias/Read/ReadVariableOp6my_model/batch_normalization/gamma/Read/ReadVariableOp5my_model/batch_normalization/beta/Read/ReadVariableOp<my_model/batch_normalization/moving_mean/Read/ReadVariableOp@my_model/batch_normalization/moving_variance/Read/ReadVariableOp,my_model/conv2d_1/kernel/Read/ReadVariableOp*my_model/conv2d_1/bias/Read/ReadVariableOp8my_model/batch_normalization_1/gamma/Read/ReadVariableOp7my_model/batch_normalization_1/beta/Read/ReadVariableOp>my_model/batch_normalization_1/moving_mean/Read/ReadVariableOpBmy_model/batch_normalization_1/moving_variance/Read/ReadVariableOp,my_model/conv2d_2/kernel/Read/ReadVariableOp*my_model/conv2d_2/bias/Read/ReadVariableOp8my_model/batch_normalization_2/gamma/Read/ReadVariableOp7my_model/batch_normalization_2/beta/Read/ReadVariableOp>my_model/batch_normalization_2/moving_mean/Read/ReadVariableOpBmy_model/batch_normalization_2/moving_variance/Read/ReadVariableOp,my_model/conv2d_3/kernel/Read/ReadVariableOp*my_model/conv2d_3/bias/Read/ReadVariableOp8my_model/batch_normalization_3/gamma/Read/ReadVariableOp7my_model/batch_normalization_3/beta/Read/ReadVariableOp>my_model/batch_normalization_3/moving_mean/Read/ReadVariableOpBmy_model/batch_normalization_3/moving_variance/Read/ReadVariableOp)my_model/dense/kernel/Read/ReadVariableOp'my_model/dense/bias/Read/ReadVariableOp+my_model/dense_1/kernel/Read/ReadVariableOp)my_model/dense_1/bias/Read/ReadVariableOp+my_model/dense_2/kernel/Read/ReadVariableOp)my_model/dense_2/bias/Read/ReadVariableOpConst*.
_gradient_op_typePartitionedCall-4918326*)
f$R"
 __inference__traced_save_4918325*
Tout
2*-
config_proto

CPU

GPU2*0J 8*+
Tin$
"2 *
_output_shapes
: 
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemy_model/conv2d/kernelmy_model/conv2d/bias"my_model/batch_normalization/gamma!my_model/batch_normalization/beta(my_model/batch_normalization/moving_mean,my_model/batch_normalization/moving_variancemy_model/conv2d_1/kernelmy_model/conv2d_1/bias$my_model/batch_normalization_1/gamma#my_model/batch_normalization_1/beta*my_model/batch_normalization_1/moving_mean.my_model/batch_normalization_1/moving_variancemy_model/conv2d_2/kernelmy_model/conv2d_2/bias$my_model/batch_normalization_2/gamma#my_model/batch_normalization_2/beta*my_model/batch_normalization_2/moving_mean.my_model/batch_normalization_2/moving_variancemy_model/conv2d_3/kernelmy_model/conv2d_3/bias$my_model/batch_normalization_3/gamma#my_model/batch_normalization_3/beta*my_model/batch_normalization_3/moving_mean.my_model/batch_normalization_3/moving_variancemy_model/dense/kernelmy_model/dense/biasmy_model/dense_1/kernelmy_model/dense_1/biasmy_model/dense_2/kernelmy_model/dense_2/bias*.
_gradient_op_typePartitionedCall-4918429*,
f'R%
#__inference__traced_restore_4918428*
Tout
2*-
config_proto

CPU

GPU2*0J 8**
Tin#
!2*
_output_shapes
: ??%
?/
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914019

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:H
ConstConst*
dtype0*
_output_shapes
: *
valueB J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
U0*
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????:::::*
T0L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+???????????????????????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_1:& "
 
_user_specified_nameinputs: : : : 
?
?
7__inference_batch_normalization_3_layer_call_fn_4917741

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*.
_gradient_op_typePartitionedCall-4914582*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4914581*
Tout
2*-
config_proto

CPU

GPU2*0J 8*A
_output_shapes/
-:+???????????????????????????@*
Tin	
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
Q
5__inference_spatial_dropout2d_1_layer_call_fn_4917405

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4914148*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914147*
Tout
2*-
config_proto

CPU

GPU2*0J 8*J
_output_shapes8
6:4????????????????????????????????????*
Tin
2?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingVALID*A
_output_shapes/
-:+????????????????????????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+????????????????????????????
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource^Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*%
valueB"             *
dtype0?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp8^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp*A
_output_shapes/
-:+???????????????????????????*
T0"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?
m
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914818

inputs
identity?;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:?????????JJ?
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"??????????????????q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????JJa
IdentityIdentitydropout/mul_1:z:0*/
_output_shapes
:?????????JJ*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4917061

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*
is_training( *
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????:::::J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?u
?
#__inference__traced_restore_4918428
file_prefix+
'assignvariableop_my_model_conv2d_kernel+
'assignvariableop_1_my_model_conv2d_bias9
5assignvariableop_2_my_model_batch_normalization_gamma8
4assignvariableop_3_my_model_batch_normalization_beta?
;assignvariableop_4_my_model_batch_normalization_moving_meanC
?assignvariableop_5_my_model_batch_normalization_moving_variance/
+assignvariableop_6_my_model_conv2d_1_kernel-
)assignvariableop_7_my_model_conv2d_1_bias;
7assignvariableop_8_my_model_batch_normalization_1_gamma:
6assignvariableop_9_my_model_batch_normalization_1_betaB
>assignvariableop_10_my_model_batch_normalization_1_moving_meanF
Bassignvariableop_11_my_model_batch_normalization_1_moving_variance0
,assignvariableop_12_my_model_conv2d_2_kernel.
*assignvariableop_13_my_model_conv2d_2_bias<
8assignvariableop_14_my_model_batch_normalization_2_gamma;
7assignvariableop_15_my_model_batch_normalization_2_betaB
>assignvariableop_16_my_model_batch_normalization_2_moving_meanF
Bassignvariableop_17_my_model_batch_normalization_2_moving_variance0
,assignvariableop_18_my_model_conv2d_3_kernel.
*assignvariableop_19_my_model_conv2d_3_bias<
8assignvariableop_20_my_model_batch_normalization_3_gamma;
7assignvariableop_21_my_model_batch_normalization_3_betaB
>assignvariableop_22_my_model_batch_normalization_3_moving_meanF
Bassignvariableop_23_my_model_batch_normalization_3_moving_variance-
)assignvariableop_24_my_model_dense_kernel+
'assignvariableop_25_my_model_dense_bias/
+assignvariableop_26_my_model_dense_1_kernel-
)assignvariableop_27_my_model_dense_1_bias/
+assignvariableop_28_my_model_dense_2_kernel-
)assignvariableop_29_my_model_dense_2_bias
identity_31??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	RestoreV2?RestoreV2_1?

RestoreV2/tensor_namesConst"/device:CPU:0*?	
value?	B?	B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn1/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn1/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn2/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn2/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn3/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn3/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn4/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn4/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc3/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc3/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:?
RestoreV2/shape_and_slicesConst"/device:CPU:0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp'assignvariableop_my_model_conv2d_kernelIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp'assignvariableop_1_my_model_conv2d_biasIdentity_1:output:0*
_output_shapes
 *
dtype0N

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp5assignvariableop_2_my_model_batch_normalization_gammaIdentity_2:output:0*
_output_shapes
 *
dtype0N

Identity_3IdentityRestoreV2:tensors:3*
_output_shapes
:*
T0?
AssignVariableOp_3AssignVariableOp4assignvariableop_3_my_model_batch_normalization_betaIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp;assignvariableop_4_my_model_batch_normalization_moving_meanIdentity_4:output:0*
dtype0*
_output_shapes
 N

Identity_5IdentityRestoreV2:tensors:5*
_output_shapes
:*
T0?
AssignVariableOp_5AssignVariableOp?assignvariableop_5_my_model_batch_normalization_moving_varianceIdentity_5:output:0*
dtype0*
_output_shapes
 N

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp+assignvariableop_6_my_model_conv2d_1_kernelIdentity_6:output:0*
dtype0*
_output_shapes
 N

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp)assignvariableop_7_my_model_conv2d_1_biasIdentity_7:output:0*
dtype0*
_output_shapes
 N

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp7assignvariableop_8_my_model_batch_normalization_1_gammaIdentity_8:output:0*
_output_shapes
 *
dtype0N

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp6assignvariableop_9_my_model_batch_normalization_1_betaIdentity_9:output:0*
dtype0*
_output_shapes
 P
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp>assignvariableop_10_my_model_batch_normalization_1_moving_meanIdentity_10:output:0*
dtype0*
_output_shapes
 P
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpBassignvariableop_11_my_model_batch_normalization_1_moving_varianceIdentity_11:output:0*
dtype0*
_output_shapes
 P
Identity_12IdentityRestoreV2:tensors:12*
_output_shapes
:*
T0?
AssignVariableOp_12AssignVariableOp,assignvariableop_12_my_model_conv2d_2_kernelIdentity_12:output:0*
dtype0*
_output_shapes
 P
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp*assignvariableop_13_my_model_conv2d_2_biasIdentity_13:output:0*
dtype0*
_output_shapes
 P
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp8assignvariableop_14_my_model_batch_normalization_2_gammaIdentity_14:output:0*
dtype0*
_output_shapes
 P
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp7assignvariableop_15_my_model_batch_normalization_2_betaIdentity_15:output:0*
dtype0*
_output_shapes
 P
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp>assignvariableop_16_my_model_batch_normalization_2_moving_meanIdentity_16:output:0*
dtype0*
_output_shapes
 P
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpBassignvariableop_17_my_model_batch_normalization_2_moving_varianceIdentity_17:output:0*
dtype0*
_output_shapes
 P
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp,assignvariableop_18_my_model_conv2d_3_kernelIdentity_18:output:0*
dtype0*
_output_shapes
 P
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_my_model_conv2d_3_biasIdentity_19:output:0*
_output_shapes
 *
dtype0P
Identity_20IdentityRestoreV2:tensors:20*
_output_shapes
:*
T0?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_my_model_batch_normalization_3_gammaIdentity_20:output:0*
dtype0*
_output_shapes
 P
Identity_21IdentityRestoreV2:tensors:21*
_output_shapes
:*
T0?
AssignVariableOp_21AssignVariableOp7assignvariableop_21_my_model_batch_normalization_3_betaIdentity_21:output:0*
dtype0*
_output_shapes
 P
Identity_22IdentityRestoreV2:tensors:22*
_output_shapes
:*
T0?
AssignVariableOp_22AssignVariableOp>assignvariableop_22_my_model_batch_normalization_3_moving_meanIdentity_22:output:0*
dtype0*
_output_shapes
 P
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpBassignvariableop_23_my_model_batch_normalization_3_moving_varianceIdentity_23:output:0*
dtype0*
_output_shapes
 P
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_my_model_dense_kernelIdentity_24:output:0*
dtype0*
_output_shapes
 P
Identity_25IdentityRestoreV2:tensors:25*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp'assignvariableop_25_my_model_dense_biasIdentity_25:output:0*
dtype0*
_output_shapes
 P
Identity_26IdentityRestoreV2:tensors:26*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_my_model_dense_1_kernelIdentity_26:output:0*
dtype0*
_output_shapes
 P
Identity_27IdentityRestoreV2:tensors:27*
_output_shapes
:*
T0?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_my_model_dense_1_biasIdentity_27:output:0*
dtype0*
_output_shapes
 P
Identity_28IdentityRestoreV2:tensors:28*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_my_model_dense_2_kernelIdentity_28:output:0*
dtype0*
_output_shapes
 P
Identity_29IdentityRestoreV2:tensors:29*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_my_model_dense_2_biasIdentity_29:output:0*
dtype0*
_output_shapes
 ?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B ?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
_output_shapes
: *
T0?
Identity_31IdentityIdentity_30:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: "#
identity_31Identity_31:output:0*?
_input_shapes|
z: ::::::::::::::::::::::::::::::2(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122
RestoreV2_1RestoreV2_12*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262$
AssignVariableOpAssignVariableOp2*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_8:+ '
%
_user_specified_namefile_prefix: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
?
D__inference_dense_2_layer_call_and_return_conditional_losses_4918095

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	?i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource^MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?z
)my_model/dense_2/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*/
_input_shapes
:??????????::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?
H
,__inference_activation_layer_call_fn_4916871

inputs
identity?
PartitionedCallPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4915224*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915221*
Tout
2h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?/
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917273

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
_output_shapes
: *
valueB *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????:::::*
T0*
U0L
Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:*
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: *
T0?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+???????????????????????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
?
*__inference_conv2d_1_layer_call_fn_4913917

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*A
_output_shapes/
-:+???????????????????????????*.
_gradient_op_typePartitionedCall-4913912?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4916876

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????JJb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915259

inputs
identity?;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskQ
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
dtype0*
_output_shapes
: *
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
_output_shapes
:*
T0*
N_
dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0_
dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"??????????????????i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:?????????@?
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"??????????????????q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*/
_output_shapes
:?????????@*
T0a
IdentityIdentitydropout/mul_1:z:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917395

inputs

identity_1q
IdentityIdentityinputs*J
_output_shapes8
6:4????????????????????????????????????*
T0~

Identity_1IdentityIdentity:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?	
%__inference_signature_wrapper_4916077
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30**
Tin#
!2*'
_output_shapes
:?????????*.
_gradient_op_typePartitionedCall-4916044*+
f&R$
"__inference__wrapped_model_4913623*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	input_1: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?	
`
D__inference_reshape_layer_call_and_return_conditional_losses_4917921

inputs
identity;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0R
Reshape/shape/1Const*
value
B :? *
dtype0*
_output_shapes
: u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:?????????? Y
IdentityIdentityReshape:output:0*(
_output_shapes
:?????????? *
T0"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_layer_call_fn_4916994

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*A
_output_shapes/
-:+???????????????????????????*.
_gradient_op_typePartitionedCall-4913758*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4913757?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
n
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4914411

inputs

identity_1q
IdentityIdentityinputs*J
_output_shapes8
6:4????????????????????????????????????*
T0~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4916896

inputs
identityN
ReluReluinputs*/
_output_shapes
:?????????$$*
T0b
IdentityIdentityRelu:activations:0*/
_output_shapes
:?????????$$*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
l
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914823

inputs

identity_1V
IdentityIdentityinputs*/
_output_shapes
:?????????JJ*
T0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????JJ"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_4918118B
>my_model_conv2d_kernel_regularizer_abs_readvariableop_resource
identity??5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp>my_model_conv2d_kernel_regularizer_abs_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
(my_model/conv2d/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentity*my_model/conv2d/kernel/Regularizer/add:z:06^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp*
_output_shapes
: *
T0"
identityIdentity:output:0*
_input_shapes
:2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:  
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4916866

inputs
identityN
ReluReluinputs*/
_output_shapes
:?????????@*
T0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
Q
5__inference_spatial_dropout2d_3_layer_call_fn_4917863

inputs
identity?
PartitionedCallPartitionedCallinputs*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915264*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????@*
Tin
2*.
_gradient_op_typePartitionedCall-4915273h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_3_layer_call_fn_4917808

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*.
_gradient_op_typePartitionedCall-4915194*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915169*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????@?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
?
7__inference_batch_normalization_2_layer_call_fn_4917565

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915057*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915044*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*/
_output_shapes
:????????? *
T0"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_4918047

inputs
identity?Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:_
dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0_
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
dtype0*(
_output_shapes
:??????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*(
_output_shapes
:??????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*(
_output_shapes
:??????????*
T0b
dropout/mulMulinputsdropout/truediv:z:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*(
_output_shapes
:??????????j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
b
)__inference_dropout_layer_call_fn_4917964

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915362*M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4915361*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4914398

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maskQ
dropout/rateConst*
_output_shapes
: *
valueB
 *   ?*
dtype0`
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/mulMulinputsdropout/truediv:z:0*
T0*J
_output_shapes8
6:4?????????????????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????|
IdentityIdentitydropout/mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_2_layer_call_fn_4917489

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*A
_output_shapes/
-:+??????????????????????????? *
Tin	
2*.
_gradient_op_typePartitionedCall-4914318*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4914317*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: : : 
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_4915374

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_layer_call_fn_4917003

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*A
_output_shapes/
-:+???????????????????????????*.
_gradient_op_typePartitionedCall-4913792*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4913791*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : :& "
 
_user_specified_nameinputs
??
?
E__inference_my_model_layer_call_and_return_conditional_losses_4915681
input_1)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_16
2batch_normalization_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_36
2batch_normalization_statefulpartitionedcall_args_4+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_18
4batch_normalization_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_38
4batch_normalization_1_statefulpartitionedcall_args_4+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_18
4batch_normalization_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_38
4batch_normalization_2_statefulpartitionedcall_args_4+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_18
4batch_normalization_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_38
4batch_normalization_3_statefulpartitionedcall_args_4(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp?)spatial_dropout2d/StatefulPartitionedCall?+spatial_dropout2d_1/StatefulPartitionedCall?+spatial_dropout2d_2/StatefulPartitionedCall?+spatial_dropout2d_3/StatefulPartitionedCallg
conv2d/CastCastinput_1*

SrcT0*

DstT0*1
_output_shapes
:????????????
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d/Cast:y:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????JJ*
Tin
2*.
_gradient_op_typePartitionedCall-4913650?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:02batch_normalization_statefulpartitionedcall_args_12batch_normalization_statefulpartitionedcall_args_22batch_normalization_statefulpartitionedcall_args_32batch_normalization_statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????JJ*
Tin	
2*.
_gradient_op_typePartitionedCall-4914757*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914756*
Tout
2?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*.
_gradient_op_typePartitionedCall-4914781*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914775*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ?
)spatial_dropout2d/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914818*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4914826?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2spatial_dropout2d/StatefulPartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4913912*N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911*
Tout
2?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:04batch_normalization_1_statefulpartitionedcall_args_14batch_normalization_1_statefulpartitionedcall_args_24batch_normalization_1_statefulpartitionedcall_args_34batch_normalization_1_statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4914910*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914897*
Tout
2?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*.
_gradient_op_typePartitionedCall-4914930*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914927*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$?
+spatial_dropout2d_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0*^spatial_dropout2d/StatefulPartitionedCall*.
_gradient_op_typePartitionedCall-4914973*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914965*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_1/StatefulPartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4914176*N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:04batch_normalization_2_statefulpartitionedcall_args_14batch_normalization_2_statefulpartitionedcall_args_24batch_normalization_2_statefulpartitionedcall_args_34batch_normalization_2_statefulpartitionedcall_args_4*/
_output_shapes
:????????? *
Tin	
2*.
_gradient_op_typePartitionedCall-4915057*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915044*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*.
_gradient_op_typePartitionedCall-4915077*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915074*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:????????? *
Tin
2?
+spatial_dropout2d_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0,^spatial_dropout2d_1/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:????????? *
Tin
2*.
_gradient_op_typePartitionedCall-4915115*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915114*
Tout
2?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_2/StatefulPartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4914440*N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:04batch_normalization_3_statefulpartitionedcall_args_14batch_normalization_3_statefulpartitionedcall_args_24batch_normalization_3_statefulpartitionedcall_args_34batch_normalization_3_statefulpartitionedcall_args_4*.
_gradient_op_typePartitionedCall-4915204*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915191*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????@?
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4915224*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915221*
Tout
2?
+spatial_dropout2d_3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0,^spatial_dropout2d_2/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????@*
Tin
2*.
_gradient_op_typePartitionedCall-4915267*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915259*
Tout
2?
reshape/PartitionedCallPartitionedCall4spatial_dropout2d_3/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:?????????? *.
_gradient_op_typePartitionedCall-4915296*M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4915290*
Tout
2?
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915327*K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4915321?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0,^spatial_dropout2d_3/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:??????????*
Tin
2*.
_gradient_op_typePartitionedCall-4915362*M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4915361*
Tout
2?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4915404*M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4915398*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:???????????
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:??????????*
Tin
2*.
_gradient_op_typePartitionedCall-4915446*O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915435?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tin
2*'
_output_shapes
:?????????*.
_gradient_op_typePartitionedCall-4915481*M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4915480*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
activation_1_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????*
Tin
2*.
_gradient_op_typePartitionedCall-4915501*R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4915500?
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_statefulpartitionedcall_args_1^conv2d/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
(my_model/conv2d/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0m
(my_model/conv2d/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_1_statefulpartitionedcall_args_1!^conv2d_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
:*
T0?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_2_statefulpartitionedcall_args_1!^conv2d_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_3_statefulpartitionedcall_args_1!^conv2d_3/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_statefulpartitionedcall_args_1^dense/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0* 
_output_shapes
:
? ?*
dtype0?
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
? ?x
'my_model/dense/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_1_statefulpartitionedcall_args_1 ^dense_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0* 
_output_shapes
:
??*
T0z
)my_model/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_2_statefulpartitionedcall_args_1 ^dense_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?z
)my_model/dense_2/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?	
IdentityIdentity'activation_1_1/PartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall6^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*^spatial_dropout2d/StatefulPartitionedCall,^spatial_dropout2d_1/StatefulPartitionedCall,^spatial_dropout2d_2/StatefulPartitionedCall,^spatial_dropout2d_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+spatial_dropout2d_1/StatefulPartitionedCall+spatial_dropout2d_1/StatefulPartitionedCall2Z
+spatial_dropout2d_3/StatefulPartitionedCall+spatial_dropout2d_3/StatefulPartitionedCall2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2V
)spatial_dropout2d/StatefulPartitionedCall)spatial_dropout2d/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2Z
+spatial_dropout2d_2/StatefulPartitionedCall+spatial_dropout2d_2/StatefulPartitionedCall2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall:' #
!
_user_specified_name	input_1: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
?	
*__inference_my_model_layer_call_fn_4916861
x"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallxstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????**
Tin#
!2*.
_gradient_op_typePartitionedCall-4915951*N
fIRG
E__inference_my_model_layer_call_and_return_conditional_losses_4915950?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:! 

_user_specified_namex: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
m
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4913872

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/mulMulinputsdropout/truediv:z:0*
T0*J
_output_shapes8
6:4?????????????????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????|
IdentityIdentitydropout/mul_1:z:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914970

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$$c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$$"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
Q
5__inference_spatial_dropout2d_2_layer_call_fn_4917621

inputs
identity?
PartitionedCallPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*J
_output_shapes8
6:4????????????????????????????????????*.
_gradient_op_typePartitionedCall-4914412*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4914411*
Tout
2?
IdentityIdentityPartitionedCall:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917611

inputs

identity_1V
IdentityIdentityinputs*/
_output_shapes
:????????? *
T0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? "!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914965

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
dtype0*
_output_shapes
: *
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
value	B :*
dtype0?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:?????????$$?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$$a
IdentityIdentitydropout/mul_1:z:0*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_4918133D
@my_model_conv2d_1_kernel_regularizer_abs_readvariableop_resource
identity??7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp@my_model_conv2d_1_kernel_regularizer_abs_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
:*
dtype0?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
IdentityIdentity,my_model/conv2d_1/kernel/Regularizer/add:z:08^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:  
?
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917471

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
epsilon%o?:*]
_output_shapesK
I:+??????????????????????????? : : : : :*
T0*
U0*
is_training( J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+??????????????????????????? *
T0"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
??
?!
E__inference_my_model_layer_call_and_return_conditional_losses_4916463
x)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resourceD
@batch_normalization_assignmovingavg_read_readvariableop_resourceF
Bbatch_normalization_assignmovingavg_1_read_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceF
Bbatch_normalization_1_assignmovingavg_read_readvariableop_resourceH
Dbatch_normalization_1_assignmovingavg_1_read_readvariableop_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceF
Bbatch_normalization_2_assignmovingavg_read_readvariableop_resourceH
Dbatch_normalization_2_assignmovingavg_1_read_readvariableop_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceF
Bbatch_normalization_3_assignmovingavg_read_readvariableop_resourceH
Dbatch_normalization_3_assignmovingavg_1_read_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity??7batch_normalization/AssignMovingAvg/AssignSubVariableOp?7batch_normalization/AssignMovingAvg/Read/ReadVariableOp?2batch_normalization/AssignMovingAvg/ReadVariableOp?9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp?9batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp?9batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp?;batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp?9batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp?4batch_normalization_2/AssignMovingAvg/ReadVariableOp?;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp?;batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp?6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?9batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp?4batch_normalization_3/AssignMovingAvg/ReadVariableOp?;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?;batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp?6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpa
conv2d/CastCastx*

DstT0*1
_output_shapes
:???????????*

SrcT0?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
conv2d/Conv2DConv2Dconv2d/Cast:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingVALID*/
_output_shapes
:?????????JJ?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????JJb
 batch_normalization/LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: b
 batch_normalization/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
batch_normalization/LogicalAnd
LogicalAnd)batch_normalization/LogicalAnd/x:output:0)batch_normalization/LogicalAnd/y:output:0*
_output_shapes
: ?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:\
batch_normalization/ConstConst*
valueB *
dtype0*
_output_shapes
: ^
batch_normalization/Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0"batch_normalization/Const:output:0$batch_normalization/Const_1:output:0*
epsilon%o?:*K
_output_shapes9
7:?????????JJ:::::*
T0*
U0`
batch_normalization/Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
7batch_normalization/AssignMovingAvg/Read/ReadVariableOpReadVariableOp@batch_normalization_assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
,batch_normalization/AssignMovingAvg/IdentityIdentity?batch_normalization/AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
)batch_normalization/AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*J
_class@
><loc:@batch_normalization/AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
'batch_normalization/AssignMovingAvg/subSub2batch_normalization/AssignMovingAvg/sub/x:output:0$batch_normalization/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*J
_class@
><loc:@batch_normalization/AssignMovingAvg/Read/ReadVariableOp?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp@batch_normalization_assignmovingavg_read_readvariableop_resource8^batch_normalization/AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
)batch_normalization/AssignMovingAvg/sub_1Sub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:01batch_normalization/FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*J
_class@
><loc:@batch_normalization/AssignMovingAvg/Read/ReadVariableOp?
'batch_normalization/AssignMovingAvg/mulMul-batch_normalization/AssignMovingAvg/sub_1:z:0+batch_normalization/AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*J
_class@
><loc:@batch_normalization/AssignMovingAvg/Read/ReadVariableOp?
7batch_normalization/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp@batch_normalization_assignmovingavg_read_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*J
_class@
><loc:@batch_normalization/AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
9batch_normalization/AssignMovingAvg_1/Read/ReadVariableOpReadVariableOpBbatch_normalization_assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
.batch_normalization/AssignMovingAvg_1/IdentityIdentityAbatch_normalization/AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
+batch_normalization/AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*L
_classB
@>loc:@batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
)batch_normalization/AssignMovingAvg_1/subSub4batch_normalization/AssignMovingAvg_1/sub/x:output:0$batch_normalization/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOpBbatch_normalization_assignmovingavg_1_read_readvariableop_resource:^batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
+batch_normalization/AssignMovingAvg_1/sub_1Sub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:05batch_normalization/FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
)batch_normalization/AssignMovingAvg_1/mulMul/batch_normalization/AssignMovingAvg_1/sub_1:z:0-batch_normalization/AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpBbatch_normalization_assignmovingavg_1_read_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*L
_classB
@>loc:@batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 {
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????JJd
spatial_dropout2d/ShapeShapeactivation/Relu:activations:0*
_output_shapes
:*
T0o
%spatial_dropout2d/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:q
'spatial_dropout2d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:q
'spatial_dropout2d/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
spatial_dropout2d/strided_sliceStridedSlice spatial_dropout2d/Shape:output:0.spatial_dropout2d/strided_slice/stack:output:00spatial_dropout2d/strided_slice/stack_1:output:00spatial_dropout2d/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maskq
'spatial_dropout2d/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:s
)spatial_dropout2d/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:s
)spatial_dropout2d/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
!spatial_dropout2d/strided_slice_1StridedSlice spatial_dropout2d/Shape:output:00spatial_dropout2d/strided_slice_1/stack:output:02spatial_dropout2d/strided_slice_1/stack_1:output:02spatial_dropout2d/strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0c
spatial_dropout2d/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: r
0spatial_dropout2d/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: r
0spatial_dropout2d/dropout/random_uniform/shape/2Const*
_output_shapes
: *
value	B :*
dtype0?
.spatial_dropout2d/dropout/random_uniform/shapePack(spatial_dropout2d/strided_slice:output:09spatial_dropout2d/dropout/random_uniform/shape/1:output:09spatial_dropout2d/dropout/random_uniform/shape/2:output:0*spatial_dropout2d/strided_slice_1:output:0*
N*
_output_shapes
:*
T0q
,spatial_dropout2d/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: q
,spatial_dropout2d/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
6spatial_dropout2d/dropout/random_uniform/RandomUniformRandomUniform7spatial_dropout2d/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
,spatial_dropout2d/dropout/random_uniform/subSub5spatial_dropout2d/dropout/random_uniform/max:output:05spatial_dropout2d/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
,spatial_dropout2d/dropout/random_uniform/mulMul?spatial_dropout2d/dropout/random_uniform/RandomUniform:output:00spatial_dropout2d/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
(spatial_dropout2d/dropout/random_uniformAdd0spatial_dropout2d/dropout/random_uniform/mul:z:05spatial_dropout2d/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????d
spatial_dropout2d/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
spatial_dropout2d/dropout/subSub(spatial_dropout2d/dropout/sub/x:output:0'spatial_dropout2d/dropout/rate:output:0*
T0*
_output_shapes
: h
#spatial_dropout2d/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
!spatial_dropout2d/dropout/truedivRealDiv,spatial_dropout2d/dropout/truediv/x:output:0!spatial_dropout2d/dropout/sub:z:0*
T0*
_output_shapes
: ?
&spatial_dropout2d/dropout/GreaterEqualGreaterEqual,spatial_dropout2d/dropout/random_uniform:z:0'spatial_dropout2d/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d/dropout/mulMulactivation/Relu:activations:0%spatial_dropout2d/dropout/truediv:z:0*/
_output_shapes
:?????????JJ*
T0?
spatial_dropout2d/dropout/CastCast*spatial_dropout2d/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d/dropout/mul_1Mul!spatial_dropout2d/dropout/mul:z:0"spatial_dropout2d/dropout/Cast:y:0*/
_output_shapes
:?????????JJ*
T0?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
:*
dtype0?
conv2d_1/Conv2DConv2D#spatial_dropout2d/dropout/mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingVALID*/
_output_shapes
:?????????$$?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????$$d
"batch_normalization_1/LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: d
"batch_normalization_1/LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
?
 batch_normalization_1/LogicalAnd
LogicalAnd+batch_normalization_1/LogicalAnd/x:output:0+batch_normalization_1/LogicalAnd/y:output:0*
_output_shapes
: ?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:^
batch_normalization_1/ConstConst*
valueB *
dtype0*
_output_shapes
: `
batch_normalization_1/Const_1Const*
dtype0*
_output_shapes
: *
valueB ?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0$batch_normalization_1/Const:output:0&batch_normalization_1/Const_1:output:0*
T0*
U0*
epsilon%o?:*K
_output_shapes9
7:?????????$$:::::b
batch_normalization_1/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *?p}??
9batch_normalization_1/AssignMovingAvg/Read/ReadVariableOpReadVariableOpBbatch_normalization_1_assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
.batch_normalization_1/AssignMovingAvg/IdentityIdentityAbatch_normalization_1/AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
+batch_normalization_1/AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*L
_classB
@>loc:@batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
)batch_normalization_1/AssignMovingAvg/subSub4batch_normalization_1/AssignMovingAvg/sub/x:output:0&batch_normalization_1/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOpBbatch_normalization_1_assignmovingavg_read_readvariableop_resource:^batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
+batch_normalization_1/AssignMovingAvg/sub_1Sub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:03batch_normalization_1/FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
)batch_normalization_1/AssignMovingAvg/mulMul/batch_normalization_1/AssignMovingAvg/sub_1:z:0-batch_normalization_1/AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpBbatch_normalization_1_assignmovingavg_read_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*L
_classB
@>loc:@batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
;batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOpReadVariableOpDbatch_normalization_1_assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
0batch_normalization_1/AssignMovingAvg_1/IdentityIdentityCbatch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:*
T0?
-batch_normalization_1/AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*N
_classD
B@loc:@batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
+batch_normalization_1/AssignMovingAvg_1/subSub6batch_normalization_1/AssignMovingAvg_1/sub/x:output:0&batch_normalization_1/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOpDbatch_normalization_1_assignmovingavg_1_read_readvariableop_resource<^batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
-batch_normalization_1/AssignMovingAvg_1/sub_1Sub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:07batch_normalization_1/FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
+batch_normalization_1/AssignMovingAvg_1/mulMul1batch_normalization_1/AssignMovingAvg_1/sub_1:z:0/batch_normalization_1/AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:*
T0?
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpDbatch_normalization_1_assignmovingavg_1_read_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:?????????$$*
T0h
spatial_dropout2d_1/ShapeShapeactivation_1/Relu:activations:0*
T0*
_output_shapes
:q
'spatial_dropout2d_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:s
)spatial_dropout2d_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:s
)spatial_dropout2d_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
!spatial_dropout2d_1/strided_sliceStridedSlice"spatial_dropout2d_1/Shape:output:00spatial_dropout2d_1/strided_slice/stack:output:02spatial_dropout2d_1/strided_slice/stack_1:output:02spatial_dropout2d_1/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0s
)spatial_dropout2d_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_1/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0u
+spatial_dropout2d_1/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
#spatial_dropout2d_1/strided_slice_1StridedSlice"spatial_dropout2d_1/Shape:output:02spatial_dropout2d_1/strided_slice_1/stack:output:04spatial_dropout2d_1/strided_slice_1/stack_1:output:04spatial_dropout2d_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: e
 spatial_dropout2d_1/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: t
2spatial_dropout2d_1/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: t
2spatial_dropout2d_1/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
0spatial_dropout2d_1/dropout/random_uniform/shapePack*spatial_dropout2d_1/strided_slice:output:0;spatial_dropout2d_1/dropout/random_uniform/shape/1:output:0;spatial_dropout2d_1/dropout/random_uniform/shape/2:output:0,spatial_dropout2d_1/strided_slice_1:output:0*
N*
_output_shapes
:*
T0s
.spatial_dropout2d_1/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    s
.spatial_dropout2d_1/dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
8spatial_dropout2d_1/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout2d_1/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
.spatial_dropout2d_1/dropout/random_uniform/subSub7spatial_dropout2d_1/dropout/random_uniform/max:output:07spatial_dropout2d_1/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
.spatial_dropout2d_1/dropout/random_uniform/mulMulAspatial_dropout2d_1/dropout/random_uniform/RandomUniform:output:02spatial_dropout2d_1/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
*spatial_dropout2d_1/dropout/random_uniformAdd2spatial_dropout2d_1/dropout/random_uniform/mul:z:07spatial_dropout2d_1/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????f
!spatial_dropout2d_1/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
spatial_dropout2d_1/dropout/subSub*spatial_dropout2d_1/dropout/sub/x:output:0)spatial_dropout2d_1/dropout/rate:output:0*
_output_shapes
: *
T0j
%spatial_dropout2d_1/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
#spatial_dropout2d_1/dropout/truedivRealDiv.spatial_dropout2d_1/dropout/truediv/x:output:0#spatial_dropout2d_1/dropout/sub:z:0*
T0*
_output_shapes
: ?
(spatial_dropout2d_1/dropout/GreaterEqualGreaterEqual.spatial_dropout2d_1/dropout/random_uniform:z:0)spatial_dropout2d_1/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d_1/dropout/mulMulactivation_1/Relu:activations:0'spatial_dropout2d_1/dropout/truediv:z:0*
T0*/
_output_shapes
:?????????$$?
 spatial_dropout2d_1/dropout/CastCast,spatial_dropout2d_1/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
!spatial_dropout2d_1/dropout/mul_1Mul#spatial_dropout2d_1/dropout/mul:z:0$spatial_dropout2d_1/dropout/Cast:y:0*/
_output_shapes
:?????????$$*
T0?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
conv2d_2/Conv2DConv2D%spatial_dropout2d_1/dropout/mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:????????? *
T0*
strides
*
paddingVALID?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? d
"batch_normalization_2/LogicalAnd/xConst*
dtype0
*
_output_shapes
: *
value	B
 Zd
"batch_normalization_2/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
 batch_normalization_2/LogicalAnd
LogicalAnd+batch_normalization_2/LogicalAnd/x:output:0+batch_normalization_2/LogicalAnd/y:output:0*
_output_shapes
: ?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ^
batch_normalization_2/ConstConst*
valueB *
dtype0*
_output_shapes
: `
batch_normalization_2/Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0$batch_normalization_2/Const:output:0&batch_normalization_2/Const_1:output:0*
epsilon%o?:*K
_output_shapes9
7:????????? : : : : :*
T0*
U0b
batch_normalization_2/Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
9batch_normalization_2/AssignMovingAvg/Read/ReadVariableOpReadVariableOpBbatch_normalization_2_assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0?
.batch_normalization_2/AssignMovingAvg/IdentityIdentityAbatch_normalization_2/AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
+batch_normalization_2/AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ??*L
_classB
@>loc:@batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp?
)batch_normalization_2/AssignMovingAvg/subSub4batch_normalization_2/AssignMovingAvg/sub/x:output:0&batch_normalization_2/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOpBbatch_normalization_2_assignmovingavg_read_readvariableop_resource:^batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
+batch_normalization_2/AssignMovingAvg/sub_1Sub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:03batch_normalization_2/FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
)batch_normalization_2/AssignMovingAvg/mulMul/batch_normalization_2/AssignMovingAvg/sub_1:z:0-batch_normalization_2/AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpBbatch_normalization_2_assignmovingavg_read_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*L
_classB
@>loc:@batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
;batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOpReadVariableOpDbatch_normalization_2_assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
0batch_normalization_2/AssignMovingAvg_1/IdentityIdentityCbatch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
-batch_normalization_2/AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*N
_classD
B@loc:@batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
+batch_normalization_2/AssignMovingAvg_1/subSub6batch_normalization_2/AssignMovingAvg_1/sub/x:output:0&batch_normalization_2/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*N
_classD
B@loc:@batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp?
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOpDbatch_normalization_2_assignmovingavg_1_read_readvariableop_resource<^batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
-batch_normalization_2/AssignMovingAvg_1/sub_1Sub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:07batch_normalization_2/FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*N
_classD
B@loc:@batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_1/mulMul1batch_normalization_2/AssignMovingAvg_1/sub_1:z:0/batch_normalization_2/AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpDbatch_normalization_2_assignmovingavg_1_read_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? h
spatial_dropout2d_2/ShapeShapeactivation_2/Relu:activations:0*
T0*
_output_shapes
:q
'spatial_dropout2d_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:s
)spatial_dropout2d_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:s
)spatial_dropout2d_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
!spatial_dropout2d_2/strided_sliceStridedSlice"spatial_dropout2d_2/Shape:output:00spatial_dropout2d_2/strided_slice/stack:output:02spatial_dropout2d_2/strided_slice/stack_1:output:02spatial_dropout2d_2/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_masks
)spatial_dropout2d_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_2/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:?
#spatial_dropout2d_2/strided_slice_1StridedSlice"spatial_dropout2d_2/Shape:output:02spatial_dropout2d_2/strided_slice_1/stack:output:04spatial_dropout2d_2/strided_slice_1/stack_1:output:04spatial_dropout2d_2/strided_slice_1/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maske
 spatial_dropout2d_2/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: t
2spatial_dropout2d_2/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: t
2spatial_dropout2d_2/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
0spatial_dropout2d_2/dropout/random_uniform/shapePack*spatial_dropout2d_2/strided_slice:output:0;spatial_dropout2d_2/dropout/random_uniform/shape/1:output:0;spatial_dropout2d_2/dropout/random_uniform/shape/2:output:0,spatial_dropout2d_2/strided_slice_1:output:0*
N*
_output_shapes
:*
T0s
.spatial_dropout2d_2/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: s
.spatial_dropout2d_2/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
8spatial_dropout2d_2/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout2d_2/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
.spatial_dropout2d_2/dropout/random_uniform/subSub7spatial_dropout2d_2/dropout/random_uniform/max:output:07spatial_dropout2d_2/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
.spatial_dropout2d_2/dropout/random_uniform/mulMulAspatial_dropout2d_2/dropout/random_uniform/RandomUniform:output:02spatial_dropout2d_2/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
*spatial_dropout2d_2/dropout/random_uniformAdd2spatial_dropout2d_2/dropout/random_uniform/mul:z:07spatial_dropout2d_2/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????f
!spatial_dropout2d_2/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
spatial_dropout2d_2/dropout/subSub*spatial_dropout2d_2/dropout/sub/x:output:0)spatial_dropout2d_2/dropout/rate:output:0*
_output_shapes
: *
T0j
%spatial_dropout2d_2/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
#spatial_dropout2d_2/dropout/truedivRealDiv.spatial_dropout2d_2/dropout/truediv/x:output:0#spatial_dropout2d_2/dropout/sub:z:0*
_output_shapes
: *
T0?
(spatial_dropout2d_2/dropout/GreaterEqualGreaterEqual.spatial_dropout2d_2/dropout/random_uniform:z:0)spatial_dropout2d_2/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d_2/dropout/mulMulactivation_2/Relu:activations:0'spatial_dropout2d_2/dropout/truediv:z:0*
T0*/
_output_shapes
:????????? ?
 spatial_dropout2d_2/dropout/CastCast,spatial_dropout2d_2/dropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
!spatial_dropout2d_2/dropout/mul_1Mul#spatial_dropout2d_2/dropout/mul:z:0$spatial_dropout2d_2/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? ?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
conv2d_3/Conv2DConv2D%spatial_dropout2d_2/dropout/mul_1:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:?????????@*
T0*
strides
*
paddingVALID?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@d
"batch_normalization_3/LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: d
"batch_normalization_3/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
 batch_normalization_3/LogicalAnd
LogicalAnd+batch_normalization_3/LogicalAnd/x:output:0+batch_normalization_3/LogicalAnd/y:output:0*
_output_shapes
: ?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0^
batch_normalization_3/ConstConst*
valueB *
dtype0*
_output_shapes
: `
batch_normalization_3/Const_1Const*
_output_shapes
: *
valueB *
dtype0?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0$batch_normalization_3/Const:output:0&batch_normalization_3/Const_1:output:0*
U0*
epsilon%o?:*K
_output_shapes9
7:?????????@:@:@:@:@:*
T0b
batch_normalization_3/Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
9batch_normalization_3/AssignMovingAvg/Read/ReadVariableOpReadVariableOpBbatch_normalization_3_assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0?
.batch_normalization_3/AssignMovingAvg/IdentityIdentityAbatch_normalization_3/AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
:@*
T0?
+batch_normalization_3/AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*L
_classB
@>loc:@batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
)batch_normalization_3/AssignMovingAvg/subSub4batch_normalization_3/AssignMovingAvg/sub/x:output:0&batch_normalization_3/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOpBbatch_normalization_3_assignmovingavg_read_readvariableop_resource:^batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
+batch_normalization_3/AssignMovingAvg/sub_1Sub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:03batch_normalization_3/FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
T0*L
_classB
@>loc:@batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp?
)batch_normalization_3/AssignMovingAvg/mulMul/batch_normalization_3/AssignMovingAvg/sub_1:z:0-batch_normalization_3/AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*L
_classB
@>loc:@batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@?
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpBbatch_normalization_3_assignmovingavg_read_readvariableop_resource-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *L
_classB
@>loc:@batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp*
dtype0?
;batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOpReadVariableOpDbatch_normalization_3_assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
0batch_normalization_3/AssignMovingAvg_1/IdentityIdentityCbatch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
-batch_normalization_3/AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*N
_classD
B@loc:@batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
+batch_normalization_3/AssignMovingAvg_1/subSub6batch_normalization_3/AssignMovingAvg_1/sub/x:output:0&batch_normalization_3/Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*N
_classD
B@loc:@batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOpDbatch_normalization_3_assignmovingavg_1_read_readvariableop_resource<^batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
-batch_normalization_3/AssignMovingAvg_1/sub_1Sub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:07batch_normalization_3/FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
T0*N
_classD
B@loc:@batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp?
+batch_normalization_3/AssignMovingAvg_1/mulMul1batch_normalization_3/AssignMovingAvg_1/sub_1:z:0/batch_normalization_3/AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
T0*N
_classD
B@loc:@batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp?
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpDbatch_normalization_3_assignmovingavg_1_read_readvariableop_resource/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
T0h
spatial_dropout2d_3/ShapeShapeactivation_3/Relu:activations:0*
_output_shapes
:*
T0q
'spatial_dropout2d_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:s
)spatial_dropout2d_3/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:s
)spatial_dropout2d_3/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
!spatial_dropout2d_3/strided_sliceStridedSlice"spatial_dropout2d_3/Shape:output:00spatial_dropout2d_3/strided_slice/stack:output:02spatial_dropout2d_3/strided_slice/stack_1:output:02spatial_dropout2d_3/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_masks
)spatial_dropout2d_3/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_3/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
#spatial_dropout2d_3/strided_slice_1StridedSlice"spatial_dropout2d_3/Shape:output:02spatial_dropout2d_3/strided_slice_1/stack:output:04spatial_dropout2d_3/strided_slice_1/stack_1:output:04spatial_dropout2d_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: e
 spatial_dropout2d_3/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: t
2spatial_dropout2d_3/dropout/random_uniform/shape/1Const*
_output_shapes
: *
value	B :*
dtype0t
2spatial_dropout2d_3/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
0spatial_dropout2d_3/dropout/random_uniform/shapePack*spatial_dropout2d_3/strided_slice:output:0;spatial_dropout2d_3/dropout/random_uniform/shape/1:output:0;spatial_dropout2d_3/dropout/random_uniform/shape/2:output:0,spatial_dropout2d_3/strided_slice_1:output:0*
T0*
N*
_output_shapes
:s
.spatial_dropout2d_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: s
.spatial_dropout2d_3/dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
8spatial_dropout2d_3/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout2d_3/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
.spatial_dropout2d_3/dropout/random_uniform/subSub7spatial_dropout2d_3/dropout/random_uniform/max:output:07spatial_dropout2d_3/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
.spatial_dropout2d_3/dropout/random_uniform/mulMulAspatial_dropout2d_3/dropout/random_uniform/RandomUniform:output:02spatial_dropout2d_3/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
*spatial_dropout2d_3/dropout/random_uniformAdd2spatial_dropout2d_3/dropout/random_uniform/mul:z:07spatial_dropout2d_3/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????f
!spatial_dropout2d_3/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
spatial_dropout2d_3/dropout/subSub*spatial_dropout2d_3/dropout/sub/x:output:0)spatial_dropout2d_3/dropout/rate:output:0*
T0*
_output_shapes
: j
%spatial_dropout2d_3/dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
#spatial_dropout2d_3/dropout/truedivRealDiv.spatial_dropout2d_3/dropout/truediv/x:output:0#spatial_dropout2d_3/dropout/sub:z:0*
T0*
_output_shapes
: ?
(spatial_dropout2d_3/dropout/GreaterEqualGreaterEqual.spatial_dropout2d_3/dropout/random_uniform:z:0)spatial_dropout2d_3/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d_3/dropout/mulMulactivation_3/Relu:activations:0'spatial_dropout2d_3/dropout/truediv:z:0*/
_output_shapes
:?????????@*
T0?
 spatial_dropout2d_3/dropout/CastCast,spatial_dropout2d_3/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
!spatial_dropout2d_3/dropout/mul_1Mul#spatial_dropout2d_3/dropout/mul:z:0$spatial_dropout2d_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@b
reshape/ShapeShape%spatial_dropout2d_3/dropout/mul_1:z:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0g
reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0Z
reshape/Reshape/shape/1Const*
value
B :? *
dtype0*
_output_shapes
: ?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:?
reshape/ReshapeReshape%spatial_dropout2d_3/dropout/mul_1:z:0reshape/Reshape/shape:output:0*
T0*(
_output_shapes
:?????????? ?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
dense/MatMulMatMulreshape/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:??
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Y
dropout/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: [
dropout/dropout/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
"dropout/dropout/random_uniform/subSub+dropout/dropout/random_uniform/max:output:0+dropout/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
"dropout/dropout/random_uniform/mulMul5dropout/dropout/random_uniform/RandomUniform:output:0&dropout/dropout/random_uniform/sub:z:0*(
_output_shapes
:??????????*
T0?
dropout/dropout/random_uniformAdd&dropout/dropout/random_uniform/mul:z:0+dropout/dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????Z
dropout/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: z
dropout/dropout/subSubdropout/dropout/sub/x:output:0dropout/dropout/rate:output:0*
T0*
_output_shapes
: ^
dropout/dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
dropout/dropout/truedivRealDiv"dropout/dropout/truediv/x:output:0dropout/dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/dropout/GreaterEqualGreaterEqual"dropout/dropout/random_uniform:z:0dropout/dropout/rate:output:0*
T0*(
_output_shapes
:???????????
dropout/dropout/mulMuldense/BiasAdd:output:0dropout/dropout/truediv:z:0*(
_output_shapes
:??????????*
T0?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*(
_output_shapes
:??????????*

SrcT0
?
dropout/dropout/mul_1Muldropout/dropout/mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
dense_1/MatMulMatMuldropout/dropout/mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
dropout_1/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: _
dropout_1/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:i
$dropout_1/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    i
$dropout_1/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
$dropout_1/dropout/random_uniform/subSub-dropout_1/dropout/random_uniform/max:output:0-dropout_1/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
$dropout_1/dropout/random_uniform/mulMul7dropout_1/dropout/random_uniform/RandomUniform:output:0(dropout_1/dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
 dropout_1/dropout/random_uniformAdd(dropout_1/dropout/random_uniform/mul:z:0-dropout_1/dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????\
dropout_1/dropout/sub/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
dropout_1/dropout/subSub dropout_1/dropout/sub/x:output:0dropout_1/dropout/rate:output:0*
T0*
_output_shapes
: `
dropout_1/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
dropout_1/dropout/truedivRealDiv$dropout_1/dropout/truediv/x:output:0dropout_1/dropout/sub:z:0*
_output_shapes
: *
T0?
dropout_1/dropout/GreaterEqualGreaterEqual$dropout_1/dropout/random_uniform:z:0dropout_1/dropout/rate:output:0*(
_output_shapes
:??????????*
T0?
dropout_1/dropout/mulMuldense_1/BiasAdd:output:0dropout_1/dropout/truediv:z:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*(
_output_shapes
:??????????*

SrcT0
?
dropout_1/dropout/mul_1Muldropout_1/dropout/mul:z:0dropout_1/dropout/Cast:y:0*(
_output_shapes
:??????????*
T0?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
dense_2/MatMulMatMuldropout_1/dropout/mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????m
activation_1_1/SoftmaxSoftmaxdense_2/BiasAdd:output:0*'
_output_shapes
:?????????*
T0?
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource^conv2d/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
(my_model/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*%
valueB"             *
dtype0?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource^conv2d_1/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
:*
T0?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource^conv2d_2/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
: *
T0?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource^conv2d_3/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource^dense/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
? ?x
'my_model/dense/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0l
'my_model/dense/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource^dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??z
)my_model/dense_1/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *
ף<?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource^dense_2/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
_output_shapes
:	?*
T0z
)my_model/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentity activation_1_1/Softmax:softmax:08^batch_normalization/AssignMovingAvg/AssignSubVariableOp8^batch_normalization/AssignMovingAvg/Read/ReadVariableOp3^batch_normalization/AssignMovingAvg/ReadVariableOp:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp:^batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp5^batch_normalization/AssignMovingAvg_1/ReadVariableOp#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1:^batch_normalization_1/AssignMovingAvg/AssignSubVariableOp:^batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp5^batch_normalization_1/AssignMovingAvg/ReadVariableOp<^batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp<^batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp7^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp:^batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp5^batch_normalization_2/AssignMovingAvg/ReadVariableOp<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp<^batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp7^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp:^batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp5^batch_normalization_3/AssignMovingAvg/ReadVariableOp<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp<^batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp7^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp6^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp2v
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp2r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp2z
;batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp;batch_normalization_1/AssignMovingAvg_1/Read/ReadVariableOp2v
9batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp9batch_normalization_3/AssignMovingAvg/Read/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2z
;batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp;batch_normalization_2/AssignMovingAvg_1/Read/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12z
;batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp;batch_normalization_3/AssignMovingAvg_1/Read/ReadVariableOp2z
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2v
9batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp9batch_normalization_2/AssignMovingAvg/Read/ReadVariableOp2r
7batch_normalization/AssignMovingAvg/Read/ReadVariableOp7batch_normalization/AssignMovingAvg/Read/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2v
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2z
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2v
9batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp9batch_normalization_1/AssignMovingAvg/Read/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2z
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2v
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp2r
7batch_normalization/AssignMovingAvg/AssignSubVariableOp7batch_normalization/AssignMovingAvg/AssignSubVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2v
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp2L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2v
9batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp9batch_normalization/AssignMovingAvg_1/Read/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp:! 

_user_specified_namex: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
o
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917848

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"??????????????????i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:?????????@?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@a
IdentityIdentitydropout/mul_1:z:0*/
_output_shapes
:?????????@*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
O
3__inference_spatial_dropout2d_layer_call_fn_4917107

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4913886*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4913885*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*J
_output_shapes8
6:4?????????????????????????????????????
IdentityIdentityPartitionedCall:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917390

inputs
identity?;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: _
strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskQ
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
_output_shapes
:*
T0*
N_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/mulMulinputsdropout/truediv:z:0*
T0*J
_output_shapes8
6:4?????????????????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????|
IdentityIdentitydropout/mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4915221

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?/
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917701

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
T0*
U0L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@*
T0?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:@*
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:@?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:@?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_1: : : : :& "
 
_user_specified_nameinputs
?/
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4917039

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:H
ConstConst*
dtype0*
_output_shapes
: *
valueB J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
T0*
U0*
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????:::::L
Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *?p}??
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
:*
T0?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:*
T0?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
 *6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+???????????????????????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
?
7__inference_batch_normalization_1_layer_call_fn_4917228

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin	
2*.
_gradient_op_typePartitionedCall-4914900*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914875?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*>
_input_shapes-
+:?????????$$::::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs: : 
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_4917994

inputs

identity_1O
IdentityIdentityinputs*(
_output_shapes
:??????????*
T0\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
'__inference_dense_layer_call_fn_4917959

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4915321*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915327?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:?????????? ::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs
?
l
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917097

inputs

identity_1q
IdentityIdentityinputs*J
_output_shapes8
6:4????????????????????????????????????*
T0~

Identity_1IdentityIdentity:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*A
_output_shapes/
-:+???????????????????????????*
T0*
strides
*
paddingVALID?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*A
_output_shapes/
-:+???????????????????????????*
T0?
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource^Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
(my_model/conv2d/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0m
(my_model/conv2d/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?
?
7__inference_batch_normalization_2_layer_call_fn_4917480

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*A
_output_shapes/
-:+??????????????????????????? *
Tin	
2*.
_gradient_op_typePartitionedCall-4914284*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4914283*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall: : : :& "
 
_user_specified_nameinputs: 
?
d
+__inference_dropout_1_layer_call_fn_4918057

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915446*O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915435*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
n
5__inference_spatial_dropout2d_2_layer_call_fn_4917570

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915115*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915114*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*A
_output_shapes/
-:+??????????????????????????? *
T0*
strides
*
paddingVALID?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? ?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource^Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
: *
T0?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp8^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?/
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915022

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*K
_output_shapes9
7:????????? : : : : :*
T0*
U0L
Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*/
_output_shapes
:????????? *
T0"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
e
I__inference_activation_1_layer_call_and_return_conditional_losses_4918105

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*&
_input_shapes
:?????????:& "
 
_user_specified_nameinputs
?	
`
D__inference_reshape_layer_call_and_return_conditional_losses_4915290

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskR
Reshape/shape/1Const*
value
B :? *
dtype0*
_output_shapes
: u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
_output_shapes
:*
T0e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:?????????? Y
IdentityIdentityReshape:output:0*(
_output_shapes
:?????????? *
T0"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_4915361

inputs
identity?Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:_
dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0_
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
dtype0*(
_output_shapes
:??????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????R
dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*(
_output_shapes
:??????????b
dropout/mulMulinputsdropout/truediv:z:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*(
_output_shapes
:??????????j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*(
_output_shapes
:??????????*
T0Z
IdentityIdentitydropout/mul_1:z:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
n
5__inference_spatial_dropout2d_3_layer_call_fn_4917858

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????@*
Tin
2*.
_gradient_op_typePartitionedCall-4915267*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915259?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
B__inference_dense_layer_call_and_return_conditional_losses_4917952

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ?j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource^MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0* 
_output_shapes
:
? ?*
T0x
'my_model/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0l
'my_model/dense/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0l
'my_model/dense/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*/
_input_shapes
:?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
E
)__inference_dropout_layer_call_fn_4917969

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4915375*M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4915374*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_1_layer_call_fn_4917237

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin	
2*.
_gradient_op_typePartitionedCall-4914910*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914897*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*/
_output_shapes
:?????????$$*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????$$::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914053

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
dtype0
*
_output_shapes
: *
value	B
 Z N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
is_training( *
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????:::::*
T0*
U0J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_1: : : : :& "
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_4913623
input_12
.my_model_conv2d_conv2d_readvariableop_resource3
/my_model_conv2d_biasadd_readvariableop_resource8
4my_model_batch_normalization_readvariableop_resource:
6my_model_batch_normalization_readvariableop_1_resourceI
Emy_model_batch_normalization_fusedbatchnormv3_readvariableop_resourceK
Gmy_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource4
0my_model_conv2d_1_conv2d_readvariableop_resource5
1my_model_conv2d_1_biasadd_readvariableop_resource:
6my_model_batch_normalization_1_readvariableop_resource<
8my_model_batch_normalization_1_readvariableop_1_resourceK
Gmy_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceM
Imy_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource4
0my_model_conv2d_2_conv2d_readvariableop_resource5
1my_model_conv2d_2_biasadd_readvariableop_resource:
6my_model_batch_normalization_2_readvariableop_resource<
8my_model_batch_normalization_2_readvariableop_1_resourceK
Gmy_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceM
Imy_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource4
0my_model_conv2d_3_conv2d_readvariableop_resource5
1my_model_conv2d_3_biasadd_readvariableop_resource:
6my_model_batch_normalization_3_readvariableop_resource<
8my_model_batch_normalization_3_readvariableop_1_resourceK
Gmy_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceM
Imy_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource1
-my_model_dense_matmul_readvariableop_resource2
.my_model_dense_biasadd_readvariableop_resource3
/my_model_dense_1_matmul_readvariableop_resource4
0my_model_dense_1_biasadd_readvariableop_resource3
/my_model_dense_2_matmul_readvariableop_resource4
0my_model_dense_2_biasadd_readvariableop_resource
identity??<my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp?>my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?+my_model/batch_normalization/ReadVariableOp?-my_model/batch_normalization/ReadVariableOp_1?>my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?@my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?-my_model/batch_normalization_1/ReadVariableOp?/my_model/batch_normalization_1/ReadVariableOp_1?>my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?@my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?-my_model/batch_normalization_2/ReadVariableOp?/my_model/batch_normalization_2/ReadVariableOp_1?>my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?@my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?-my_model/batch_normalization_3/ReadVariableOp?/my_model/batch_normalization_3/ReadVariableOp_1?&my_model/conv2d/BiasAdd/ReadVariableOp?%my_model/conv2d/Conv2D/ReadVariableOp?(my_model/conv2d_1/BiasAdd/ReadVariableOp?'my_model/conv2d_1/Conv2D/ReadVariableOp?(my_model/conv2d_2/BiasAdd/ReadVariableOp?'my_model/conv2d_2/Conv2D/ReadVariableOp?(my_model/conv2d_3/BiasAdd/ReadVariableOp?'my_model/conv2d_3/Conv2D/ReadVariableOp?%my_model/dense/BiasAdd/ReadVariableOp?$my_model/dense/MatMul/ReadVariableOp?'my_model/dense_1/BiasAdd/ReadVariableOp?&my_model/dense_1/MatMul/ReadVariableOp?'my_model/dense_2/BiasAdd/ReadVariableOp?&my_model/dense_2/MatMul/ReadVariableOpi
my_model/CastCastinput_1*

DstT0*1
_output_shapes
:???????????*

SrcT0?
%my_model/conv2d/Conv2D/ReadVariableOpReadVariableOp.my_model_conv2d_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
:*
dtype0?
my_model/conv2d/Conv2DConv2Dmy_model/Cast:y:0-my_model/conv2d/Conv2D/ReadVariableOp:value:0*
paddingVALID*/
_output_shapes
:?????????JJ*
T0*
strides
?
&my_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp/my_model_conv2d_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
my_model/conv2d/BiasAddBiasAddmy_model/conv2d/Conv2D:output:0.my_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????JJk
)my_model/batch_normalization/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: k
)my_model/batch_normalization/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
'my_model/batch_normalization/LogicalAnd
LogicalAnd2my_model/batch_normalization/LogicalAnd/x:output:02my_model/batch_normalization/LogicalAnd/y:output:0*
_output_shapes
: ?
+my_model/batch_normalization/ReadVariableOpReadVariableOp4my_model_batch_normalization_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
-my_model/batch_normalization/ReadVariableOp_1ReadVariableOp6my_model_batch_normalization_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
<my_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpEmy_model_batch_normalization_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
>my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpGmy_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
-my_model/batch_normalization/FusedBatchNormV3FusedBatchNormV3 my_model/conv2d/BiasAdd:output:03my_model/batch_normalization/ReadVariableOp:value:05my_model/batch_normalization/ReadVariableOp_1:value:0Dmy_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Fmy_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
U0*
is_training( *
epsilon%o?:*K
_output_shapes9
7:?????????JJ:::::*
T0g
"my_model/batch_normalization/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
my_model/activation/ReluRelu1my_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:?????????JJ*
T0v
 my_model/spatial_dropout2d/ShapeShape&my_model/activation/Relu:activations:0*
T0*
_output_shapes
:x
.my_model/spatial_dropout2d/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:z
0my_model/spatial_dropout2d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:z
0my_model/spatial_dropout2d/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:?
(my_model/spatial_dropout2d/strided_sliceStridedSlice)my_model/spatial_dropout2d/Shape:output:07my_model/spatial_dropout2d/strided_slice/stack:output:09my_model/spatial_dropout2d/strided_slice/stack_1:output:09my_model/spatial_dropout2d/strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskz
0my_model/spatial_dropout2d/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:|
2my_model/spatial_dropout2d/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:|
2my_model/spatial_dropout2d/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
*my_model/spatial_dropout2d/strided_slice_1StridedSlice)my_model/spatial_dropout2d/Shape:output:09my_model/spatial_dropout2d/strided_slice_1/stack:output:0;my_model/spatial_dropout2d/strided_slice_1/stack_1:output:0;my_model/spatial_dropout2d/strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: l
'my_model/spatial_dropout2d/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: {
9my_model/spatial_dropout2d/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: {
9my_model/spatial_dropout2d/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
7my_model/spatial_dropout2d/dropout/random_uniform/shapePack1my_model/spatial_dropout2d/strided_slice:output:0Bmy_model/spatial_dropout2d/dropout/random_uniform/shape/1:output:0Bmy_model/spatial_dropout2d/dropout/random_uniform/shape/2:output:03my_model/spatial_dropout2d/strided_slice_1:output:0*
T0*
N*
_output_shapes
:z
5my_model/spatial_dropout2d/dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0z
5my_model/spatial_dropout2d/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
?my_model/spatial_dropout2d/dropout/random_uniform/RandomUniformRandomUniform@my_model/spatial_dropout2d/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
5my_model/spatial_dropout2d/dropout/random_uniform/subSub>my_model/spatial_dropout2d/dropout/random_uniform/max:output:0>my_model/spatial_dropout2d/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
5my_model/spatial_dropout2d/dropout/random_uniform/mulMulHmy_model/spatial_dropout2d/dropout/random_uniform/RandomUniform:output:09my_model/spatial_dropout2d/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
1my_model/spatial_dropout2d/dropout/random_uniformAdd9my_model/spatial_dropout2d/dropout/random_uniform/mul:z:0>my_model/spatial_dropout2d/dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0m
(my_model/spatial_dropout2d/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
&my_model/spatial_dropout2d/dropout/subSub1my_model/spatial_dropout2d/dropout/sub/x:output:00my_model/spatial_dropout2d/dropout/rate:output:0*
T0*
_output_shapes
: q
,my_model/spatial_dropout2d/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
*my_model/spatial_dropout2d/dropout/truedivRealDiv5my_model/spatial_dropout2d/dropout/truediv/x:output:0*my_model/spatial_dropout2d/dropout/sub:z:0*
_output_shapes
: *
T0?
/my_model/spatial_dropout2d/dropout/GreaterEqualGreaterEqual5my_model/spatial_dropout2d/dropout/random_uniform:z:00my_model/spatial_dropout2d/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
&my_model/spatial_dropout2d/dropout/mulMul&my_model/activation/Relu:activations:0.my_model/spatial_dropout2d/dropout/truediv:z:0*
T0*/
_output_shapes
:?????????JJ?
'my_model/spatial_dropout2d/dropout/CastCast3my_model/spatial_dropout2d/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
(my_model/spatial_dropout2d/dropout/mul_1Mul*my_model/spatial_dropout2d/dropout/mul:z:0+my_model/spatial_dropout2d/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????JJ?
'my_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp0my_model_conv2d_1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
:*
dtype0?
my_model/conv2d_1/Conv2DConv2D,my_model/spatial_dropout2d/dropout/mul_1:z:0/my_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingVALID*/
_output_shapes
:?????????$$?
(my_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp1my_model_conv2d_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
my_model/conv2d_1/BiasAddBiasAdd!my_model/conv2d_1/Conv2D:output:00my_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:?????????$$*
T0m
+my_model/batch_normalization_1/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: m
+my_model/batch_normalization_1/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
)my_model/batch_normalization_1/LogicalAnd
LogicalAnd4my_model/batch_normalization_1/LogicalAnd/x:output:04my_model/batch_normalization_1/LogicalAnd/y:output:0*
_output_shapes
: ?
-my_model/batch_normalization_1/ReadVariableOpReadVariableOp6my_model_batch_normalization_1_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
/my_model/batch_normalization_1/ReadVariableOp_1ReadVariableOp8my_model_batch_normalization_1_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
>my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpGmy_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
@my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImy_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
/my_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3"my_model/conv2d_1/BiasAdd:output:05my_model/batch_normalization_1/ReadVariableOp:value:07my_model/batch_normalization_1/ReadVariableOp_1:value:0Fmy_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Hmy_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*
is_training( *
epsilon%o?:*K
_output_shapes9
7:?????????$$:::::i
$my_model/batch_normalization_1/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
my_model/activation_1/ReluRelu3my_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:?????????$$*
T0z
"my_model/spatial_dropout2d_1/ShapeShape(my_model/activation_1/Relu:activations:0*
_output_shapes
:*
T0z
0my_model/spatial_dropout2d_1/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0|
2my_model/spatial_dropout2d_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:|
2my_model/spatial_dropout2d_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
*my_model/spatial_dropout2d_1/strided_sliceStridedSlice+my_model/spatial_dropout2d_1/Shape:output:09my_model/spatial_dropout2d_1/strided_slice/stack:output:0;my_model/spatial_dropout2d_1/strided_slice/stack_1:output:0;my_model/spatial_dropout2d_1/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask|
2my_model/spatial_dropout2d_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:~
4my_model/spatial_dropout2d_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:~
4my_model/spatial_dropout2d_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
,my_model/spatial_dropout2d_1/strided_slice_1StridedSlice+my_model/spatial_dropout2d_1/Shape:output:0;my_model/spatial_dropout2d_1/strided_slice_1/stack:output:0=my_model/spatial_dropout2d_1/strided_slice_1/stack_1:output:0=my_model/spatial_dropout2d_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: n
)my_model/spatial_dropout2d_1/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: }
;my_model/spatial_dropout2d_1/dropout/random_uniform/shape/1Const*
_output_shapes
: *
value	B :*
dtype0}
;my_model/spatial_dropout2d_1/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
9my_model/spatial_dropout2d_1/dropout/random_uniform/shapePack3my_model/spatial_dropout2d_1/strided_slice:output:0Dmy_model/spatial_dropout2d_1/dropout/random_uniform/shape/1:output:0Dmy_model/spatial_dropout2d_1/dropout/random_uniform/shape/2:output:05my_model/spatial_dropout2d_1/strided_slice_1:output:0*
T0*
N*
_output_shapes
:|
7my_model/spatial_dropout2d_1/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: |
7my_model/spatial_dropout2d_1/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
Amy_model/spatial_dropout2d_1/dropout/random_uniform/RandomUniformRandomUniformBmy_model/spatial_dropout2d_1/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
7my_model/spatial_dropout2d_1/dropout/random_uniform/subSub@my_model/spatial_dropout2d_1/dropout/random_uniform/max:output:0@my_model/spatial_dropout2d_1/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
7my_model/spatial_dropout2d_1/dropout/random_uniform/mulMulJmy_model/spatial_dropout2d_1/dropout/random_uniform/RandomUniform:output:0;my_model/spatial_dropout2d_1/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
3my_model/spatial_dropout2d_1/dropout/random_uniformAdd;my_model/spatial_dropout2d_1/dropout/random_uniform/mul:z:0@my_model/spatial_dropout2d_1/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????o
*my_model/spatial_dropout2d_1/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
(my_model/spatial_dropout2d_1/dropout/subSub3my_model/spatial_dropout2d_1/dropout/sub/x:output:02my_model/spatial_dropout2d_1/dropout/rate:output:0*
T0*
_output_shapes
: s
.my_model/spatial_dropout2d_1/dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
,my_model/spatial_dropout2d_1/dropout/truedivRealDiv7my_model/spatial_dropout2d_1/dropout/truediv/x:output:0,my_model/spatial_dropout2d_1/dropout/sub:z:0*
T0*
_output_shapes
: ?
1my_model/spatial_dropout2d_1/dropout/GreaterEqualGreaterEqual7my_model/spatial_dropout2d_1/dropout/random_uniform:z:02my_model/spatial_dropout2d_1/dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0?
(my_model/spatial_dropout2d_1/dropout/mulMul(my_model/activation_1/Relu:activations:00my_model/spatial_dropout2d_1/dropout/truediv:z:0*
T0*/
_output_shapes
:?????????$$?
)my_model/spatial_dropout2d_1/dropout/CastCast5my_model/spatial_dropout2d_1/dropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
*my_model/spatial_dropout2d_1/dropout/mul_1Mul,my_model/spatial_dropout2d_1/dropout/mul:z:0-my_model/spatial_dropout2d_1/dropout/Cast:y:0*/
_output_shapes
:?????????$$*
T0?
'my_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp0my_model_conv2d_2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
my_model/conv2d_2/Conv2DConv2D.my_model/spatial_dropout2d_1/dropout/mul_1:z:0/my_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
paddingVALID*/
_output_shapes
:????????? *
T0*
strides
?
(my_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp1my_model_conv2d_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
my_model/conv2d_2/BiasAddBiasAdd!my_model/conv2d_2/Conv2D:output:00my_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? m
+my_model/batch_normalization_2/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: m
+my_model/batch_normalization_2/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
)my_model/batch_normalization_2/LogicalAnd
LogicalAnd4my_model/batch_normalization_2/LogicalAnd/x:output:04my_model/batch_normalization_2/LogicalAnd/y:output:0*
_output_shapes
: ?
-my_model/batch_normalization_2/ReadVariableOpReadVariableOp6my_model_batch_normalization_2_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0?
/my_model/batch_normalization_2/ReadVariableOp_1ReadVariableOp8my_model_batch_normalization_2_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
>my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpGmy_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
@my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImy_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
/my_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3"my_model/conv2d_2/BiasAdd:output:05my_model/batch_normalization_2/ReadVariableOp:value:07my_model/batch_normalization_2/ReadVariableOp_1:value:0Fmy_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Hmy_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*K
_output_shapes9
7:????????? : : : : :*
T0*
U0*
is_training( *
epsilon%o?:i
$my_model/batch_normalization_2/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
my_model/activation_2/ReluRelu3my_model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? z
"my_model/spatial_dropout2d_2/ShapeShape(my_model/activation_2/Relu:activations:0*
_output_shapes
:*
T0z
0my_model/spatial_dropout2d_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:|
2my_model/spatial_dropout2d_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:|
2my_model/spatial_dropout2d_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
*my_model/spatial_dropout2d_2/strided_sliceStridedSlice+my_model/spatial_dropout2d_2/Shape:output:09my_model/spatial_dropout2d_2/strided_slice/stack:output:0;my_model/spatial_dropout2d_2/strided_slice/stack_1:output:0;my_model/spatial_dropout2d_2/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask|
2my_model/spatial_dropout2d_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:~
4my_model/spatial_dropout2d_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:~
4my_model/spatial_dropout2d_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
,my_model/spatial_dropout2d_2/strided_slice_1StridedSlice+my_model/spatial_dropout2d_2/Shape:output:0;my_model/spatial_dropout2d_2/strided_slice_1/stack:output:0=my_model/spatial_dropout2d_2/strided_slice_1/stack_1:output:0=my_model/spatial_dropout2d_2/strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0n
)my_model/spatial_dropout2d_2/dropout/rateConst*
dtype0*
_output_shapes
: *
valueB
 *   ?}
;my_model/spatial_dropout2d_2/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: }
;my_model/spatial_dropout2d_2/dropout/random_uniform/shape/2Const*
_output_shapes
: *
value	B :*
dtype0?
9my_model/spatial_dropout2d_2/dropout/random_uniform/shapePack3my_model/spatial_dropout2d_2/strided_slice:output:0Dmy_model/spatial_dropout2d_2/dropout/random_uniform/shape/1:output:0Dmy_model/spatial_dropout2d_2/dropout/random_uniform/shape/2:output:05my_model/spatial_dropout2d_2/strided_slice_1:output:0*
T0*
N*
_output_shapes
:|
7my_model/spatial_dropout2d_2/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    |
7my_model/spatial_dropout2d_2/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
Amy_model/spatial_dropout2d_2/dropout/random_uniform/RandomUniformRandomUniformBmy_model/spatial_dropout2d_2/dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
7my_model/spatial_dropout2d_2/dropout/random_uniform/subSub@my_model/spatial_dropout2d_2/dropout/random_uniform/max:output:0@my_model/spatial_dropout2d_2/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
7my_model/spatial_dropout2d_2/dropout/random_uniform/mulMulJmy_model/spatial_dropout2d_2/dropout/random_uniform/RandomUniform:output:0;my_model/spatial_dropout2d_2/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
3my_model/spatial_dropout2d_2/dropout/random_uniformAdd;my_model/spatial_dropout2d_2/dropout/random_uniform/mul:z:0@my_model/spatial_dropout2d_2/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????o
*my_model/spatial_dropout2d_2/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
(my_model/spatial_dropout2d_2/dropout/subSub3my_model/spatial_dropout2d_2/dropout/sub/x:output:02my_model/spatial_dropout2d_2/dropout/rate:output:0*
T0*
_output_shapes
: s
.my_model/spatial_dropout2d_2/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
,my_model/spatial_dropout2d_2/dropout/truedivRealDiv7my_model/spatial_dropout2d_2/dropout/truediv/x:output:0,my_model/spatial_dropout2d_2/dropout/sub:z:0*
T0*
_output_shapes
: ?
1my_model/spatial_dropout2d_2/dropout/GreaterEqualGreaterEqual7my_model/spatial_dropout2d_2/dropout/random_uniform:z:02my_model/spatial_dropout2d_2/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
(my_model/spatial_dropout2d_2/dropout/mulMul(my_model/activation_2/Relu:activations:00my_model/spatial_dropout2d_2/dropout/truediv:z:0*
T0*/
_output_shapes
:????????? ?
)my_model/spatial_dropout2d_2/dropout/CastCast5my_model/spatial_dropout2d_2/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
*my_model/spatial_dropout2d_2/dropout/mul_1Mul,my_model/spatial_dropout2d_2/dropout/mul:z:0-my_model/spatial_dropout2d_2/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? ?
'my_model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp0my_model_conv2d_3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
my_model/conv2d_3/Conv2DConv2D.my_model/spatial_dropout2d_2/dropout/mul_1:z:0/my_model/conv2d_3/Conv2D/ReadVariableOp:value:0*
paddingVALID*/
_output_shapes
:?????????@*
T0*
strides
?
(my_model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp1my_model_conv2d_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
my_model/conv2d_3/BiasAddBiasAdd!my_model/conv2d_3/Conv2D:output:00my_model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@m
+my_model/batch_normalization_3/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: m
+my_model/batch_normalization_3/LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
?
)my_model/batch_normalization_3/LogicalAnd
LogicalAnd4my_model/batch_normalization_3/LogicalAnd/x:output:04my_model/batch_normalization_3/LogicalAnd/y:output:0*
_output_shapes
: ?
-my_model/batch_normalization_3/ReadVariableOpReadVariableOp6my_model_batch_normalization_3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
/my_model/batch_normalization_3/ReadVariableOp_1ReadVariableOp8my_model_batch_normalization_3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
>my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpGmy_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0?
@my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImy_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
/my_model/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3"my_model/conv2d_3/BiasAdd:output:05my_model/batch_normalization_3/ReadVariableOp:value:07my_model/batch_normalization_3/ReadVariableOp_1:value:0Fmy_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Hmy_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*K
_output_shapes9
7:?????????@:@:@:@:@:*
T0*
U0*
is_training( *
epsilon%o?:i
$my_model/batch_normalization_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *?p}??
my_model/activation_3/ReluRelu3my_model/batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
T0z
"my_model/spatial_dropout2d_3/ShapeShape(my_model/activation_3/Relu:activations:0*
_output_shapes
:*
T0z
0my_model/spatial_dropout2d_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:|
2my_model/spatial_dropout2d_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:|
2my_model/spatial_dropout2d_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
*my_model/spatial_dropout2d_3/strided_sliceStridedSlice+my_model/spatial_dropout2d_3/Shape:output:09my_model/spatial_dropout2d_3/strided_slice/stack:output:0;my_model/spatial_dropout2d_3/strided_slice/stack_1:output:0;my_model/spatial_dropout2d_3/strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: |
2my_model/spatial_dropout2d_3/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:~
4my_model/spatial_dropout2d_3/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:~
4my_model/spatial_dropout2d_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
,my_model/spatial_dropout2d_3/strided_slice_1StridedSlice+my_model/spatial_dropout2d_3/Shape:output:0;my_model/spatial_dropout2d_3/strided_slice_1/stack:output:0=my_model/spatial_dropout2d_3/strided_slice_1/stack_1:output:0=my_model/spatial_dropout2d_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: n
)my_model/spatial_dropout2d_3/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: }
;my_model/spatial_dropout2d_3/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: }
;my_model/spatial_dropout2d_3/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
9my_model/spatial_dropout2d_3/dropout/random_uniform/shapePack3my_model/spatial_dropout2d_3/strided_slice:output:0Dmy_model/spatial_dropout2d_3/dropout/random_uniform/shape/1:output:0Dmy_model/spatial_dropout2d_3/dropout/random_uniform/shape/2:output:05my_model/spatial_dropout2d_3/strided_slice_1:output:0*
T0*
N*
_output_shapes
:|
7my_model/spatial_dropout2d_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: |
7my_model/spatial_dropout2d_3/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
Amy_model/spatial_dropout2d_3/dropout/random_uniform/RandomUniformRandomUniformBmy_model/spatial_dropout2d_3/dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
7my_model/spatial_dropout2d_3/dropout/random_uniform/subSub@my_model/spatial_dropout2d_3/dropout/random_uniform/max:output:0@my_model/spatial_dropout2d_3/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
7my_model/spatial_dropout2d_3/dropout/random_uniform/mulMulJmy_model/spatial_dropout2d_3/dropout/random_uniform/RandomUniform:output:0;my_model/spatial_dropout2d_3/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
3my_model/spatial_dropout2d_3/dropout/random_uniformAdd;my_model/spatial_dropout2d_3/dropout/random_uniform/mul:z:0@my_model/spatial_dropout2d_3/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????o
*my_model/spatial_dropout2d_3/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
(my_model/spatial_dropout2d_3/dropout/subSub3my_model/spatial_dropout2d_3/dropout/sub/x:output:02my_model/spatial_dropout2d_3/dropout/rate:output:0*
_output_shapes
: *
T0s
.my_model/spatial_dropout2d_3/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
,my_model/spatial_dropout2d_3/dropout/truedivRealDiv7my_model/spatial_dropout2d_3/dropout/truediv/x:output:0,my_model/spatial_dropout2d_3/dropout/sub:z:0*
_output_shapes
: *
T0?
1my_model/spatial_dropout2d_3/dropout/GreaterEqualGreaterEqual7my_model/spatial_dropout2d_3/dropout/random_uniform:z:02my_model/spatial_dropout2d_3/dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0?
(my_model/spatial_dropout2d_3/dropout/mulMul(my_model/activation_3/Relu:activations:00my_model/spatial_dropout2d_3/dropout/truediv:z:0*
T0*/
_output_shapes
:?????????@?
)my_model/spatial_dropout2d_3/dropout/CastCast5my_model/spatial_dropout2d_3/dropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
*my_model/spatial_dropout2d_3/dropout/mul_1Mul,my_model/spatial_dropout2d_3/dropout/mul:z:0-my_model/spatial_dropout2d_3/dropout/Cast:y:0*/
_output_shapes
:?????????@*
T0t
my_model/reshape/ShapeShape.my_model/spatial_dropout2d_3/dropout/mul_1:z:0*
T0*
_output_shapes
:n
$my_model/reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:p
&my_model/reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:p
&my_model/reshape/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:?
my_model/reshape/strided_sliceStridedSlicemy_model/reshape/Shape:output:0-my_model/reshape/strided_slice/stack:output:0/my_model/reshape/strided_slice/stack_1:output:0/my_model/reshape/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0c
 my_model/reshape/Reshape/shape/1Const*
value
B :? *
dtype0*
_output_shapes
: ?
my_model/reshape/Reshape/shapePack'my_model/reshape/strided_slice:output:0)my_model/reshape/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:?
my_model/reshape/ReshapeReshape.my_model/spatial_dropout2d_3/dropout/mul_1:z:0'my_model/reshape/Reshape/shape:output:0*
T0*(
_output_shapes
:?????????? ?
$my_model/dense/MatMul/ReadVariableOpReadVariableOp-my_model_dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
my_model/dense/MatMulMatMul!my_model/reshape/Reshape:output:0,my_model/dense/MatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
%my_model/dense/BiasAdd/ReadVariableOpReadVariableOp.my_model_dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:??
my_model/dense/BiasAddBiasAddmy_model/dense/MatMul:product:0-my_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
my_model/dropout/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: m
my_model/dropout/dropout/ShapeShapemy_model/dense/BiasAdd:output:0*
T0*
_output_shapes
:p
+my_model/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: p
+my_model/dropout/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
5my_model/dropout/dropout/random_uniform/RandomUniformRandomUniform'my_model/dropout/dropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
+my_model/dropout/dropout/random_uniform/subSub4my_model/dropout/dropout/random_uniform/max:output:04my_model/dropout/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
+my_model/dropout/dropout/random_uniform/mulMul>my_model/dropout/dropout/random_uniform/RandomUniform:output:0/my_model/dropout/dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
'my_model/dropout/dropout/random_uniformAdd/my_model/dropout/dropout/random_uniform/mul:z:04my_model/dropout/dropout/random_uniform/min:output:0*(
_output_shapes
:??????????*
T0c
my_model/dropout/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
my_model/dropout/dropout/subSub'my_model/dropout/dropout/sub/x:output:0&my_model/dropout/dropout/rate:output:0*
T0*
_output_shapes
: g
"my_model/dropout/dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
 my_model/dropout/dropout/truedivRealDiv+my_model/dropout/dropout/truediv/x:output:0 my_model/dropout/dropout/sub:z:0*
T0*
_output_shapes
: ?
%my_model/dropout/dropout/GreaterEqualGreaterEqual+my_model/dropout/dropout/random_uniform:z:0&my_model/dropout/dropout/rate:output:0*
T0*(
_output_shapes
:???????????
my_model/dropout/dropout/mulMulmy_model/dense/BiasAdd:output:0$my_model/dropout/dropout/truediv:z:0*(
_output_shapes
:??????????*
T0?
my_model/dropout/dropout/CastCast)my_model/dropout/dropout/GreaterEqual:z:0*

DstT0*(
_output_shapes
:??????????*

SrcT0
?
my_model/dropout/dropout/mul_1Mul my_model/dropout/dropout/mul:z:0!my_model/dropout/dropout/Cast:y:0*(
_output_shapes
:??????????*
T0?
&my_model/dense_1/MatMul/ReadVariableOpReadVariableOp/my_model_dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
my_model/dense_1/MatMulMatMul"my_model/dropout/dropout/mul_1:z:0.my_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'my_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp0my_model_dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:??
my_model/dense_1/BiasAddBiasAdd!my_model/dense_1/MatMul:product:0/my_model/dense_1/BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0d
my_model/dropout_1/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: q
 my_model/dropout_1/dropout/ShapeShape!my_model/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:r
-my_model/dropout_1/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: r
-my_model/dropout_1/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
7my_model/dropout_1/dropout/random_uniform/RandomUniformRandomUniform)my_model/dropout_1/dropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
-my_model/dropout_1/dropout/random_uniform/subSub6my_model/dropout_1/dropout/random_uniform/max:output:06my_model/dropout_1/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
-my_model/dropout_1/dropout/random_uniform/mulMul@my_model/dropout_1/dropout/random_uniform/RandomUniform:output:01my_model/dropout_1/dropout/random_uniform/sub:z:0*(
_output_shapes
:??????????*
T0?
)my_model/dropout_1/dropout/random_uniformAdd1my_model/dropout_1/dropout/random_uniform/mul:z:06my_model/dropout_1/dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????e
 my_model/dropout_1/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
my_model/dropout_1/dropout/subSub)my_model/dropout_1/dropout/sub/x:output:0(my_model/dropout_1/dropout/rate:output:0*
T0*
_output_shapes
: i
$my_model/dropout_1/dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
"my_model/dropout_1/dropout/truedivRealDiv-my_model/dropout_1/dropout/truediv/x:output:0"my_model/dropout_1/dropout/sub:z:0*
_output_shapes
: *
T0?
'my_model/dropout_1/dropout/GreaterEqualGreaterEqual-my_model/dropout_1/dropout/random_uniform:z:0(my_model/dropout_1/dropout/rate:output:0*
T0*(
_output_shapes
:???????????
my_model/dropout_1/dropout/mulMul!my_model/dense_1/BiasAdd:output:0&my_model/dropout_1/dropout/truediv:z:0*
T0*(
_output_shapes
:???????????
my_model/dropout_1/dropout/CastCast+my_model/dropout_1/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*(
_output_shapes
:???????????
 my_model/dropout_1/dropout/mul_1Mul"my_model/dropout_1/dropout/mul:z:0#my_model/dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
&my_model/dense_2/MatMul/ReadVariableOpReadVariableOp/my_model_dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
my_model/dense_2/MatMulMatMul$my_model/dropout_1/dropout/mul_1:z:0.my_model/dense_2/MatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
'my_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp0my_model_dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
my_model/dense_2/BiasAddBiasAdd!my_model/dense_2/MatMul:product:0/my_model/dense_2/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0
my_model/activation_1_1/SoftmaxSoftmax!my_model/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentity)my_model/activation_1_1/Softmax:softmax:0=^my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp?^my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1,^my_model/batch_normalization/ReadVariableOp.^my_model/batch_normalization/ReadVariableOp_1?^my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpA^my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1.^my_model/batch_normalization_1/ReadVariableOp0^my_model/batch_normalization_1/ReadVariableOp_1?^my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpA^my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1.^my_model/batch_normalization_2/ReadVariableOp0^my_model/batch_normalization_2/ReadVariableOp_1?^my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpA^my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1.^my_model/batch_normalization_3/ReadVariableOp0^my_model/batch_normalization_3/ReadVariableOp_1'^my_model/conv2d/BiasAdd/ReadVariableOp&^my_model/conv2d/Conv2D/ReadVariableOp)^my_model/conv2d_1/BiasAdd/ReadVariableOp(^my_model/conv2d_1/Conv2D/ReadVariableOp)^my_model/conv2d_2/BiasAdd/ReadVariableOp(^my_model/conv2d_2/Conv2D/ReadVariableOp)^my_model/conv2d_3/BiasAdd/ReadVariableOp(^my_model/conv2d_3/Conv2D/ReadVariableOp&^my_model/dense/BiasAdd/ReadVariableOp%^my_model/dense/MatMul/ReadVariableOp(^my_model/dense_1/BiasAdd/ReadVariableOp'^my_model/dense_1/MatMul/ReadVariableOp(^my_model/dense_2/BiasAdd/ReadVariableOp'^my_model/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2R
'my_model/conv2d_3/Conv2D/ReadVariableOp'my_model/conv2d_3/Conv2D/ReadVariableOp2?
@my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1@my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12^
-my_model/batch_normalization_1/ReadVariableOp-my_model/batch_normalization_1/ReadVariableOp2b
/my_model/batch_normalization_1/ReadVariableOp_1/my_model/batch_normalization_1/ReadVariableOp_12N
%my_model/dense/BiasAdd/ReadVariableOp%my_model/dense/BiasAdd/ReadVariableOp2P
&my_model/conv2d/BiasAdd/ReadVariableOp&my_model/conv2d/BiasAdd/ReadVariableOp2N
%my_model/conv2d/Conv2D/ReadVariableOp%my_model/conv2d/Conv2D/ReadVariableOp2b
/my_model/batch_normalization_2/ReadVariableOp_1/my_model/batch_normalization_2/ReadVariableOp_12?
>my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1>my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12|
<my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp<my_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2^
-my_model/batch_normalization_2/ReadVariableOp-my_model/batch_normalization_2/ReadVariableOp2?
@my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1@my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/my_model/batch_normalization_3/ReadVariableOp_1/my_model/batch_normalization_3/ReadVariableOp_12P
&my_model/dense_1/MatMul/ReadVariableOp&my_model/dense_1/MatMul/ReadVariableOp2R
'my_model/dense_2/BiasAdd/ReadVariableOp'my_model/dense_2/BiasAdd/ReadVariableOp2^
-my_model/batch_normalization/ReadVariableOp_1-my_model/batch_normalization/ReadVariableOp_12T
(my_model/conv2d_3/BiasAdd/ReadVariableOp(my_model/conv2d_3/BiasAdd/ReadVariableOp2P
&my_model/dense_2/MatMul/ReadVariableOp&my_model/dense_2/MatMul/ReadVariableOp2^
-my_model/batch_normalization_3/ReadVariableOp-my_model/batch_normalization_3/ReadVariableOp2L
$my_model/dense/MatMul/ReadVariableOp$my_model/dense/MatMul/ReadVariableOp2R
'my_model/dense_1/BiasAdd/ReadVariableOp'my_model/dense_1/BiasAdd/ReadVariableOp2?
@my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1@my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12T
(my_model/conv2d_2/BiasAdd/ReadVariableOp(my_model/conv2d_2/BiasAdd/ReadVariableOp2R
'my_model/conv2d_1/Conv2D/ReadVariableOp'my_model/conv2d_1/Conv2D/ReadVariableOp2Z
+my_model/batch_normalization/ReadVariableOp+my_model/batch_normalization/ReadVariableOp2?
>my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>my_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
>my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp>my_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
>my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp>my_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2R
'my_model/conv2d_2/Conv2D/ReadVariableOp'my_model/conv2d_2/Conv2D/ReadVariableOp2T
(my_model/conv2d_1/BiasAdd/ReadVariableOp(my_model/conv2d_1/BiasAdd/ReadVariableOp: : : : : : : :' #
!
_user_specified_name	input_1: : : : : : : : :	 :
 : : : : : : : : : : : : : 
?/
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917197

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
dtype0*
_output_shapes
: *
valueB ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
T0*
U0*
epsilon%o?:*K
_output_shapes9
7:?????????$$:::::L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*>
_input_shapes-
+:?????????$$::::2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp: :& "
 
_user_specified_nameinputs: : : 
?/
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915169

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*K
_output_shapes9
7:?????????@:@:@:@:@:*
T0*
U0L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:@*
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:@?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_1: : :& "
 
_user_specified_nameinputs: : 
?
n
5__inference_spatial_dropout2d_1_layer_call_fn_4917354

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin
2*.
_gradient_op_typePartitionedCall-4914973*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914965*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*/
_output_shapes
:?????????$$*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????$$22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915114

inputs
identity?;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
dtype0*
_output_shapes
: *
value	B :?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*8
_output_shapes&
$:"??????????????????*
T0*
dtype0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"??????????????????i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:????????? ?
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"??????????????????q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*/
_output_shapes
:????????? *
T0a
IdentityIdentitydropout/mul_1:z:0*/
_output_shapes
:????????? *
T0"
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?
?
D__inference_dense_2_layer_call_and_return_conditional_losses_4915480

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	?i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource^MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?z
)my_model/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?
n
5__inference_spatial_dropout2d_3_layer_call_fn_4917904

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*J
_output_shapes8
6:4????????????????????????????????????*.
_gradient_op_typePartitionedCall-4914663*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4914662*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
J
.__inference_activation_1_layer_call_fn_4918100

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4915501*R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4915500*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????*
Tin
2`
IdentityIdentityPartitionedCall:output:0*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*&
_input_shapes
:?????????:& "
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915191

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*K
_output_shapes9
7:?????????@:@:@:@:@:*
T0*
U0*
is_training( *
epsilon%o?:J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*/
_output_shapes
:?????????@*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4914927

inputs
identityN
ReluReluinputs*/
_output_shapes
:?????????$$*
T0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917219

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z *
dtype0
N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
epsilon%o?:*K
_output_shapes9
7:?????????$$:::::*
T0*
U0*
is_training( J
ConstConst*
dtype0*
_output_shapes
: *
valueB
 *?p}??
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*/
_output_shapes
:?????????$$*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????$$::::2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:& "
 
_user_specified_nameinputs: : : : 
?
l
3__inference_spatial_dropout2d_layer_call_fn_4917102

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*J
_output_shapes8
6:4????????????????????????????????????*
Tin
2*.
_gradient_op_typePartitionedCall-4913873*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4913872*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_layer_call_fn_4916927

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????JJ*
Tin	
2*.
_gradient_op_typePartitionedCall-4914757*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914756*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*/
_output_shapes
:?????????JJ*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????JJ::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
?
__inference_loss_fn_5_4918208C
?my_model_dense_1_kernel_regularizer_abs_readvariableop_resource
identity??6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp?my_model_dense_1_kernel_regularizer_abs_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??z
)my_model/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentity+my_model/dense_1/kernel/Regularizer/add:z:07^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:  
??
?
E__inference_my_model_layer_call_and_return_conditional_losses_4915565
input_1)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_16
2batch_normalization_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_36
2batch_normalization_statefulpartitionedcall_args_4+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_18
4batch_normalization_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_38
4batch_normalization_1_statefulpartitionedcall_args_4+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_18
4batch_normalization_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_38
4batch_normalization_2_statefulpartitionedcall_args_4+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_18
4batch_normalization_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_38
4batch_normalization_3_statefulpartitionedcall_args_4(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp?)spatial_dropout2d/StatefulPartitionedCall?+spatial_dropout2d_1/StatefulPartitionedCall?+spatial_dropout2d_2/StatefulPartitionedCall?+spatial_dropout2d_3/StatefulPartitionedCallg
conv2d/CastCastinput_1*

DstT0*1
_output_shapes
:???????????*

SrcT0?
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d/Cast:y:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4913650*L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:02batch_normalization_statefulpartitionedcall_args_12batch_normalization_statefulpartitionedcall_args_22batch_normalization_statefulpartitionedcall_args_32batch_normalization_statefulpartitionedcall_args_4*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914724*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????JJ*
Tin	
2*.
_gradient_op_typePartitionedCall-4914725?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914775*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4914781?
)spatial_dropout2d/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914818*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????JJ*
Tin
2*.
_gradient_op_typePartitionedCall-4914826?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2spatial_dropout2d/StatefulPartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin
2*.
_gradient_op_typePartitionedCall-4913912*N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911*
Tout
2?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:04batch_normalization_1_statefulpartitionedcall_args_14batch_normalization_1_statefulpartitionedcall_args_24batch_normalization_1_statefulpartitionedcall_args_34batch_normalization_1_statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4914900*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914875*
Tout
2?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin
2*.
_gradient_op_typePartitionedCall-4914930*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914927*
Tout
2?
+spatial_dropout2d_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0*^spatial_dropout2d/StatefulPartitionedCall*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914965*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin
2*.
_gradient_op_typePartitionedCall-4914973?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_1/StatefulPartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:????????? *
Tin
2*.
_gradient_op_typePartitionedCall-4914176*N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:04batch_normalization_2_statefulpartitionedcall_args_14batch_normalization_2_statefulpartitionedcall_args_24batch_normalization_2_statefulpartitionedcall_args_34batch_normalization_2_statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:????????? *
Tin	
2*.
_gradient_op_typePartitionedCall-4915047*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915022*
Tout
2?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*.
_gradient_op_typePartitionedCall-4915077*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915074*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:????????? *
Tin
2?
+spatial_dropout2d_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0,^spatial_dropout2d_1/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:????????? *
Tin
2*.
_gradient_op_typePartitionedCall-4915115*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915114*
Tout
2?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_2/StatefulPartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4914440*N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434*
Tout
2?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:04batch_normalization_3_statefulpartitionedcall_args_14batch_normalization_3_statefulpartitionedcall_args_24batch_normalization_3_statefulpartitionedcall_args_34batch_normalization_3_statefulpartitionedcall_args_4*.
_gradient_op_typePartitionedCall-4915194*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915169*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????@*
Tin	
2?
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4915224*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915221*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
+spatial_dropout2d_3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0,^spatial_dropout2d_2/StatefulPartitionedCall*/
_output_shapes
:?????????@*
Tin
2*.
_gradient_op_typePartitionedCall-4915267*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915259*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
reshape/PartitionedCallPartitionedCall4spatial_dropout2d_3/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:?????????? *
Tin
2*.
_gradient_op_typePartitionedCall-4915296*M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4915290*
Tout
2?
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4915327*K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4915321*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:??????????*
Tin
2?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0,^spatial_dropout2d_3/StatefulPartitionedCall*.
_gradient_op_typePartitionedCall-4915362*M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4915361*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:???????????
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4915404*M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4915398*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:???????????
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915446*O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915435*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????*
Tin
2*.
_gradient_op_typePartitionedCall-4915481*M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4915480*
Tout
2?
activation_1_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*.
_gradient_op_typePartitionedCall-4915501*R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4915500*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*'
_output_shapes
:??????????
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_statefulpartitionedcall_args_1^conv2d/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
:*
dtype0?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
:*
T0?
(my_model/conv2d/kernel/Regularizer/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             ?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *
?#<?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_1_statefulpartitionedcall_args_1!^conv2d_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
:*
T0?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *
?#<?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_2_statefulpartitionedcall_args_1!^conv2d_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*%
valueB"             *
dtype0?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_3_statefulpartitionedcall_args_1!^conv2d_3/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_statefulpartitionedcall_args_1^dense/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
? ?x
'my_model/dense/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0l
'my_model/dense/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_1_statefulpartitionedcall_args_1 ^dense_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??z
)my_model/dense_1/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_2_statefulpartitionedcall_args_1 ^dense_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:	?*
dtype0?
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
_output_shapes
:	?*
T0z
)my_model/dense_2/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?	
IdentityIdentity'activation_1_1/PartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall6^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*^spatial_dropout2d/StatefulPartitionedCall,^spatial_dropout2d_1/StatefulPartitionedCall,^spatial_dropout2d_2/StatefulPartitionedCall,^spatial_dropout2d_3/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2Z
+spatial_dropout2d_2/StatefulPartitionedCall+spatial_dropout2d_2/StatefulPartitionedCall2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+spatial_dropout2d_1/StatefulPartitionedCall+spatial_dropout2d_1/StatefulPartitionedCall2Z
+spatial_dropout2d_3/StatefulPartitionedCall+spatial_dropout2d_3/StatefulPartitionedCall2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2V
)spatial_dropout2d/StatefulPartitionedCall)spatial_dropout2d/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:' #
!
_user_specified_name	input_1: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
l
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4913885

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
*__inference_conv2d_2_layer_call_fn_4914181

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4914176*N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*A
_output_shapes/
-:+??????????????????????????? ?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
?/
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4914283

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
T0*
U0*
epsilon%o?:L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+??????????????????????????? *
T0"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
?
__inference_loss_fn_4_4918193A
=my_model_dense_kernel_regularizer_abs_readvariableop_resource
identity??4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp=my_model_dense_kernel_regularizer_abs_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0* 
_output_shapes
:
? ?*
dtype0?
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
? ?x
'my_model/dense/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
valueB
 *
ף<*
dtype0?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0l
'my_model/dense/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
IdentityIdentity)my_model/dense/kernel/Regularizer/add:z:05^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:  
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915435

inputs
identity?Q
dropout/rateConst*
_output_shapes
: *
valueB
 *   ?*
dtype0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
dtype0*(
_output_shapes
:??????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*(
_output_shapes
:??????????*
T0R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*(
_output_shapes
:??????????*
T0b
dropout/mulMulinputsdropout/truediv:z:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*(
_output_shapes
:??????????*

SrcT0
j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*(
_output_shapes
:??????????*
T0Z
IdentityIdentitydropout/mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
paddingVALID*A
_output_shapes/
-:+???????????????????????????@*
T0*
strides
?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource^Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp8^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::2r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?/
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4914547

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
T0*
U0L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
:@*
T0?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:@*
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:@?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:@?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+???????????????????????????@*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4916985

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
epsilon%o?:*K
_output_shapes9
7:?????????JJ:::::*
T0*
U0*
is_training( J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*/
_output_shapes
:?????????JJ*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????JJ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?/
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4913757

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z*
dtype0
N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????:::::*
T0*
U0L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:*
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+???????????????????????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917799

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*K
_output_shapes9
7:?????????@:@:@:@:@:*
T0*
U0*
is_training( *
epsilon%o?:J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*/
_output_shapes
:?????????@*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_1:& "
 
_user_specified_nameinputs: : : : 
?
?
)__inference_dense_1_layer_call_fn_4918027

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915404*M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4915398*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
)__inference_dense_2_layer_call_fn_4918077

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4915481*M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4915480*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*'
_output_shapes
:??????????
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
?
Q
5__inference_spatial_dropout2d_1_layer_call_fn_4917359

inputs
identity?
PartitionedCallPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4914979*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914970*
Tout
2h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917853

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@c

Identity_1IdentityIdentity:output:0*/
_output_shapes
:?????????@*
T0"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917657

inputs

identity_1q
IdentityIdentityinputs*J
_output_shapes8
6:4????????????????????????????????????*
T0~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
ޡ
?
E__inference_my_model_layer_call_and_return_conditional_losses_4916791
x)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resource@
<batch_normalization_fusedbatchnormv3_readvariableop_resourceB
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity??3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpa
conv2d/CastCastx*

SrcT0*

DstT0*1
_output_shapes
:????????????
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
conv2d/Conv2DConv2Dconv2d/Cast:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
strides
*
paddingVALID*/
_output_shapes
:?????????JJ*
T0?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????JJb
 batch_normalization/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: b
 batch_normalization/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
batch_normalization/LogicalAnd
LogicalAnd)batch_normalization/LogicalAnd/x:output:0)batch_normalization/LogicalAnd/y:output:0*
_output_shapes
: ?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*K
_output_shapes9
7:?????????JJ:::::*
T0*
U0*
is_training( *
epsilon%o?:^
batch_normalization/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: {
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????JJd
spatial_dropout2d/ShapeShapeactivation/Relu:activations:0*
T0*
_output_shapes
:o
%spatial_dropout2d/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: q
'spatial_dropout2d/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:q
'spatial_dropout2d/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
spatial_dropout2d/strided_sliceStridedSlice spatial_dropout2d/Shape:output:0.spatial_dropout2d/strided_slice/stack:output:00spatial_dropout2d/strided_slice/stack_1:output:00spatial_dropout2d/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maskq
'spatial_dropout2d/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:s
)spatial_dropout2d/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0s
)spatial_dropout2d/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
!spatial_dropout2d/strided_slice_1StridedSlice spatial_dropout2d/Shape:output:00spatial_dropout2d/strided_slice_1/stack:output:02spatial_dropout2d/strided_slice_1/stack_1:output:02spatial_dropout2d/strided_slice_1/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maskc
spatial_dropout2d/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: r
0spatial_dropout2d/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: r
0spatial_dropout2d/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
.spatial_dropout2d/dropout/random_uniform/shapePack(spatial_dropout2d/strided_slice:output:09spatial_dropout2d/dropout/random_uniform/shape/1:output:09spatial_dropout2d/dropout/random_uniform/shape/2:output:0*spatial_dropout2d/strided_slice_1:output:0*
T0*
N*
_output_shapes
:q
,spatial_dropout2d/dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0q
,spatial_dropout2d/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
6spatial_dropout2d/dropout/random_uniform/RandomUniformRandomUniform7spatial_dropout2d/dropout/random_uniform/shape:output:0*8
_output_shapes&
$:"??????????????????*
T0*
dtype0?
,spatial_dropout2d/dropout/random_uniform/subSub5spatial_dropout2d/dropout/random_uniform/max:output:05spatial_dropout2d/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
,spatial_dropout2d/dropout/random_uniform/mulMul?spatial_dropout2d/dropout/random_uniform/RandomUniform:output:00spatial_dropout2d/dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
(spatial_dropout2d/dropout/random_uniformAdd0spatial_dropout2d/dropout/random_uniform/mul:z:05spatial_dropout2d/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????d
spatial_dropout2d/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
spatial_dropout2d/dropout/subSub(spatial_dropout2d/dropout/sub/x:output:0'spatial_dropout2d/dropout/rate:output:0*
T0*
_output_shapes
: h
#spatial_dropout2d/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
!spatial_dropout2d/dropout/truedivRealDiv,spatial_dropout2d/dropout/truediv/x:output:0!spatial_dropout2d/dropout/sub:z:0*
T0*
_output_shapes
: ?
&spatial_dropout2d/dropout/GreaterEqualGreaterEqual,spatial_dropout2d/dropout/random_uniform:z:0'spatial_dropout2d/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d/dropout/mulMulactivation/Relu:activations:0%spatial_dropout2d/dropout/truediv:z:0*
T0*/
_output_shapes
:?????????JJ?
spatial_dropout2d/dropout/CastCast*spatial_dropout2d/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d/dropout/mul_1Mul!spatial_dropout2d/dropout/mul:z:0"spatial_dropout2d/dropout/Cast:y:0*/
_output_shapes
:?????????JJ*
T0?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
conv2d_1/Conv2DConv2D#spatial_dropout2d/dropout/mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:?????????$$*
T0*
strides
*
paddingVALID?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:?????????$$*
T0d
"batch_normalization_1/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: d
"batch_normalization_1/LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
?
 batch_normalization_1/LogicalAnd
LogicalAnd+batch_normalization_1/LogicalAnd/x:output:0+batch_normalization_1/LogicalAnd/y:output:0*
_output_shapes
: ?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
epsilon%o?:*K
_output_shapes9
7:?????????$$:::::*
T0*
U0*
is_training( `
batch_normalization_1/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????$$h
spatial_dropout2d_1/ShapeShapeactivation_1/Relu:activations:0*
T0*
_output_shapes
:q
'spatial_dropout2d_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: s
)spatial_dropout2d_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:s
)spatial_dropout2d_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
!spatial_dropout2d_1/strided_sliceStridedSlice"spatial_dropout2d_1/Shape:output:00spatial_dropout2d_1/strided_slice/stack:output:02spatial_dropout2d_1/strided_slice/stack_1:output:02spatial_dropout2d_1/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0s
)spatial_dropout2d_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
#spatial_dropout2d_1/strided_slice_1StridedSlice"spatial_dropout2d_1/Shape:output:02spatial_dropout2d_1/strided_slice_1/stack:output:04spatial_dropout2d_1/strided_slice_1/stack_1:output:04spatial_dropout2d_1/strided_slice_1/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maske
 spatial_dropout2d_1/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: t
2spatial_dropout2d_1/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: t
2spatial_dropout2d_1/dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
0spatial_dropout2d_1/dropout/random_uniform/shapePack*spatial_dropout2d_1/strided_slice:output:0;spatial_dropout2d_1/dropout/random_uniform/shape/1:output:0;spatial_dropout2d_1/dropout/random_uniform/shape/2:output:0,spatial_dropout2d_1/strided_slice_1:output:0*
T0*
N*
_output_shapes
:s
.spatial_dropout2d_1/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: s
.spatial_dropout2d_1/dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
8spatial_dropout2d_1/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout2d_1/dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
.spatial_dropout2d_1/dropout/random_uniform/subSub7spatial_dropout2d_1/dropout/random_uniform/max:output:07spatial_dropout2d_1/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
.spatial_dropout2d_1/dropout/random_uniform/mulMulAspatial_dropout2d_1/dropout/random_uniform/RandomUniform:output:02spatial_dropout2d_1/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
*spatial_dropout2d_1/dropout/random_uniformAdd2spatial_dropout2d_1/dropout/random_uniform/mul:z:07spatial_dropout2d_1/dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0f
!spatial_dropout2d_1/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
spatial_dropout2d_1/dropout/subSub*spatial_dropout2d_1/dropout/sub/x:output:0)spatial_dropout2d_1/dropout/rate:output:0*
_output_shapes
: *
T0j
%spatial_dropout2d_1/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
#spatial_dropout2d_1/dropout/truedivRealDiv.spatial_dropout2d_1/dropout/truediv/x:output:0#spatial_dropout2d_1/dropout/sub:z:0*
T0*
_output_shapes
: ?
(spatial_dropout2d_1/dropout/GreaterEqualGreaterEqual.spatial_dropout2d_1/dropout/random_uniform:z:0)spatial_dropout2d_1/dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
spatial_dropout2d_1/dropout/mulMulactivation_1/Relu:activations:0'spatial_dropout2d_1/dropout/truediv:z:0*
T0*/
_output_shapes
:?????????$$?
 spatial_dropout2d_1/dropout/CastCast,spatial_dropout2d_1/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
!spatial_dropout2d_1/dropout/mul_1Mul#spatial_dropout2d_1/dropout/mul:z:0$spatial_dropout2d_1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$$?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
conv2d_2/Conv2DConv2D%spatial_dropout2d_1/dropout/mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingVALID*/
_output_shapes
:????????? ?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:????????? *
T0d
"batch_normalization_2/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: d
"batch_normalization_2/LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
?
 batch_normalization_2/LogicalAnd
LogicalAnd+batch_normalization_2/LogicalAnd/x:output:0+batch_normalization_2/LogicalAnd/y:output:0*
_output_shapes
: ?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*
is_training( *
epsilon%o?:*K
_output_shapes9
7:????????? : : : : :`
batch_normalization_2/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? h
spatial_dropout2d_2/ShapeShapeactivation_2/Relu:activations:0*
T0*
_output_shapes
:q
'spatial_dropout2d_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:s
)spatial_dropout2d_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:s
)spatial_dropout2d_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
!spatial_dropout2d_2/strided_sliceStridedSlice"spatial_dropout2d_2/Shape:output:00spatial_dropout2d_2/strided_slice/stack:output:02spatial_dropout2d_2/strided_slice/stack_1:output:02spatial_dropout2d_2/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0s
)spatial_dropout2d_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_2/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
#spatial_dropout2d_2/strided_slice_1StridedSlice"spatial_dropout2d_2/Shape:output:02spatial_dropout2d_2/strided_slice_1/stack:output:04spatial_dropout2d_2/strided_slice_1/stack_1:output:04spatial_dropout2d_2/strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0e
 spatial_dropout2d_2/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: t
2spatial_dropout2d_2/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: t
2spatial_dropout2d_2/dropout/random_uniform/shape/2Const*
_output_shapes
: *
value	B :*
dtype0?
0spatial_dropout2d_2/dropout/random_uniform/shapePack*spatial_dropout2d_2/strided_slice:output:0;spatial_dropout2d_2/dropout/random_uniform/shape/1:output:0;spatial_dropout2d_2/dropout/random_uniform/shape/2:output:0,spatial_dropout2d_2/strided_slice_1:output:0*
T0*
N*
_output_shapes
:s
.spatial_dropout2d_2/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: s
.spatial_dropout2d_2/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
8spatial_dropout2d_2/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout2d_2/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
.spatial_dropout2d_2/dropout/random_uniform/subSub7spatial_dropout2d_2/dropout/random_uniform/max:output:07spatial_dropout2d_2/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
.spatial_dropout2d_2/dropout/random_uniform/mulMulAspatial_dropout2d_2/dropout/random_uniform/RandomUniform:output:02spatial_dropout2d_2/dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
*spatial_dropout2d_2/dropout/random_uniformAdd2spatial_dropout2d_2/dropout/random_uniform/mul:z:07spatial_dropout2d_2/dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????f
!spatial_dropout2d_2/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
spatial_dropout2d_2/dropout/subSub*spatial_dropout2d_2/dropout/sub/x:output:0)spatial_dropout2d_2/dropout/rate:output:0*
T0*
_output_shapes
: j
%spatial_dropout2d_2/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
#spatial_dropout2d_2/dropout/truedivRealDiv.spatial_dropout2d_2/dropout/truediv/x:output:0#spatial_dropout2d_2/dropout/sub:z:0*
T0*
_output_shapes
: ?
(spatial_dropout2d_2/dropout/GreaterEqualGreaterEqual.spatial_dropout2d_2/dropout/random_uniform:z:0)spatial_dropout2d_2/dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0?
spatial_dropout2d_2/dropout/mulMulactivation_2/Relu:activations:0'spatial_dropout2d_2/dropout/truediv:z:0*
T0*/
_output_shapes
:????????? ?
 spatial_dropout2d_2/dropout/CastCast,spatial_dropout2d_2/dropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
!spatial_dropout2d_2/dropout/mul_1Mul#spatial_dropout2d_2/dropout/mul:z:0$spatial_dropout2d_2/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? ?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
conv2d_3/Conv2DConv2D%spatial_dropout2d_2/dropout/mul_1:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingVALID*/
_output_shapes
:?????????@?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@d
"batch_normalization_3/LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: d
"batch_normalization_3/LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ?
 batch_normalization_3/LogicalAnd
LogicalAnd+batch_normalization_3/LogicalAnd/x:output:0+batch_normalization_3/LogicalAnd/y:output:0*
_output_shapes
: ?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*
is_training( *
epsilon%o?:*K
_output_shapes9
7:?????????@:@:@:@:@:`
batch_normalization_3/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@h
spatial_dropout2d_3/ShapeShapeactivation_3/Relu:activations:0*
T0*
_output_shapes
:q
'spatial_dropout2d_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:s
)spatial_dropout2d_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:s
)spatial_dropout2d_3/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
!spatial_dropout2d_3/strided_sliceStridedSlice"spatial_dropout2d_3/Shape:output:00spatial_dropout2d_3/strided_slice/stack:output:02spatial_dropout2d_3/strided_slice/stack_1:output:02spatial_dropout2d_3/strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: s
)spatial_dropout2d_3/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_3/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:u
+spatial_dropout2d_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
#spatial_dropout2d_3/strided_slice_1StridedSlice"spatial_dropout2d_3/Shape:output:02spatial_dropout2d_3/strided_slice_1/stack:output:04spatial_dropout2d_3/strided_slice_1/stack_1:output:04spatial_dropout2d_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: e
 spatial_dropout2d_3/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: t
2spatial_dropout2d_3/dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: t
2spatial_dropout2d_3/dropout/random_uniform/shape/2Const*
_output_shapes
: *
value	B :*
dtype0?
0spatial_dropout2d_3/dropout/random_uniform/shapePack*spatial_dropout2d_3/strided_slice:output:0;spatial_dropout2d_3/dropout/random_uniform/shape/1:output:0;spatial_dropout2d_3/dropout/random_uniform/shape/2:output:0,spatial_dropout2d_3/strided_slice_1:output:0*
T0*
N*
_output_shapes
:s
.spatial_dropout2d_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: s
.spatial_dropout2d_3/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
8spatial_dropout2d_3/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout2d_3/dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
.spatial_dropout2d_3/dropout/random_uniform/subSub7spatial_dropout2d_3/dropout/random_uniform/max:output:07spatial_dropout2d_3/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
.spatial_dropout2d_3/dropout/random_uniform/mulMulAspatial_dropout2d_3/dropout/random_uniform/RandomUniform:output:02spatial_dropout2d_3/dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
*spatial_dropout2d_3/dropout/random_uniformAdd2spatial_dropout2d_3/dropout/random_uniform/mul:z:07spatial_dropout2d_3/dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0f
!spatial_dropout2d_3/dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
spatial_dropout2d_3/dropout/subSub*spatial_dropout2d_3/dropout/sub/x:output:0)spatial_dropout2d_3/dropout/rate:output:0*
T0*
_output_shapes
: j
%spatial_dropout2d_3/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
#spatial_dropout2d_3/dropout/truedivRealDiv.spatial_dropout2d_3/dropout/truediv/x:output:0#spatial_dropout2d_3/dropout/sub:z:0*
T0*
_output_shapes
: ?
(spatial_dropout2d_3/dropout/GreaterEqualGreaterEqual.spatial_dropout2d_3/dropout/random_uniform:z:0)spatial_dropout2d_3/dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0?
spatial_dropout2d_3/dropout/mulMulactivation_3/Relu:activations:0'spatial_dropout2d_3/dropout/truediv:z:0*
T0*/
_output_shapes
:?????????@?
 spatial_dropout2d_3/dropout/CastCast,spatial_dropout2d_3/dropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
!spatial_dropout2d_3/dropout/mul_1Mul#spatial_dropout2d_3/dropout/mul:z:0$spatial_dropout2d_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@b
reshape/ShapeShape%spatial_dropout2d_3/dropout/mul_1:z:0*
_output_shapes
:*
T0e
reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:g
reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:g
reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: Z
reshape/Reshape/shape/1Const*
value
B :? *
dtype0*
_output_shapes
: ?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:?
reshape/ReshapeReshape%spatial_dropout2d_3/dropout/mul_1:z:0reshape/Reshape/shape:output:0*(
_output_shapes
:?????????? *
T0?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
dense/MatMulMatMulreshape/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:??
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Y
dropout/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: [
dropout/dropout/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: g
"dropout/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
dtype0*(
_output_shapes
:??????????*
T0?
"dropout/dropout/random_uniform/subSub+dropout/dropout/random_uniform/max:output:0+dropout/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
"dropout/dropout/random_uniform/mulMul5dropout/dropout/random_uniform/RandomUniform:output:0&dropout/dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/dropout/random_uniformAdd&dropout/dropout/random_uniform/mul:z:0+dropout/dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????Z
dropout/dropout/sub/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0z
dropout/dropout/subSubdropout/dropout/sub/x:output:0dropout/dropout/rate:output:0*
_output_shapes
: *
T0^
dropout/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
dropout/dropout/truedivRealDiv"dropout/dropout/truediv/x:output:0dropout/dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/dropout/GreaterEqualGreaterEqual"dropout/dropout/random_uniform:z:0dropout/dropout/rate:output:0*
T0*(
_output_shapes
:???????????
dropout/dropout/mulMuldense/BiasAdd:output:0dropout/dropout/truediv:z:0*
T0*(
_output_shapes
:???????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*(
_output_shapes
:???????????
dropout/dropout/mul_1Muldropout/dropout/mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
dense_1/MatMulMatMuldropout/dropout/mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:??
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
dropout_1/dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: _
dropout_1/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:i
$dropout_1/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    i
$dropout_1/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
dtype0*(
_output_shapes
:??????????*
T0?
$dropout_1/dropout/random_uniform/subSub-dropout_1/dropout/random_uniform/max:output:0-dropout_1/dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
$dropout_1/dropout/random_uniform/mulMul7dropout_1/dropout/random_uniform/RandomUniform:output:0(dropout_1/dropout/random_uniform/sub:z:0*(
_output_shapes
:??????????*
T0?
 dropout_1/dropout/random_uniformAdd(dropout_1/dropout/random_uniform/mul:z:0-dropout_1/dropout/random_uniform/min:output:0*(
_output_shapes
:??????????*
T0\
dropout_1/dropout/sub/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
dropout_1/dropout/subSub dropout_1/dropout/sub/x:output:0dropout_1/dropout/rate:output:0*
_output_shapes
: *
T0`
dropout_1/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
dropout_1/dropout/truedivRealDiv$dropout_1/dropout/truediv/x:output:0dropout_1/dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout_1/dropout/GreaterEqualGreaterEqual$dropout_1/dropout/random_uniform:z:0dropout_1/dropout/rate:output:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/mulMuldense_1/BiasAdd:output:0dropout_1/dropout/truediv:z:0*(
_output_shapes
:??????????*
T0?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*(
_output_shapes
:??????????*

SrcT0
?
dropout_1/dropout/mul_1Muldropout_1/dropout/mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
dense_2/MatMulMatMuldropout_1/dropout/mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????m
activation_1_1/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource^conv2d/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
:*
T0?
(my_model/conv2d/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource^conv2d_1/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
:*
T0?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource^conv2d_2/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: *
dtype0?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *
?#<?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource^conv2d_3/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
: @*
T0?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *
?#<?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource^dense/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0* 
_output_shapes
:
? ?*
T0x
'my_model/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
valueB
 *
ף<*
dtype0?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource^dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??z
)my_model/dense_1/kernel/Regularizer/ConstConst*
dtype0*
_output_shapes
:*
valueB"       ?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource^dense_2/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?z
)my_model/dense_2/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentity activation_1_1/Softmax:softmax:04^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp6^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp2H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp2L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp:! 

_user_specified_namex: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
o
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917344

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: _
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
dtype0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:?????????$$?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$$a
IdentityIdentitydropout/mul_1:z:0*/
_output_shapes
:?????????$$*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_2_layer_call_fn_4917556

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915047*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915022?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs: : 
?
l
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917143

inputs

identity_1V
IdentityIdentityinputs*/
_output_shapes
:?????????JJ*
T0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????JJ"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914134

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
dtype0*
_output_shapes
: *
value	B :`
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/mulMulinputsdropout/truediv:z:0*
T0*J
_output_shapes8
6:4?????????????????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*J
_output_shapes8
6:4????????????????????????????????????*
T0|
IdentityIdentitydropout/mul_1:z:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915264

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917606

inputs
identity?;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: _
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maskQ
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
value	B :*
dtype0`
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"??????????????????i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:????????? ?
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"??????????????????q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? a
IdentityIdentitydropout/mul_1:z:0*/
_output_shapes
:????????? *
T0"
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?>
?
 __inference__traced_save_4918325
file_prefix5
1savev2_my_model_conv2d_kernel_read_readvariableop3
/savev2_my_model_conv2d_bias_read_readvariableopA
=savev2_my_model_batch_normalization_gamma_read_readvariableop@
<savev2_my_model_batch_normalization_beta_read_readvariableopG
Csavev2_my_model_batch_normalization_moving_mean_read_readvariableopK
Gsavev2_my_model_batch_normalization_moving_variance_read_readvariableop7
3savev2_my_model_conv2d_1_kernel_read_readvariableop5
1savev2_my_model_conv2d_1_bias_read_readvariableopC
?savev2_my_model_batch_normalization_1_gamma_read_readvariableopB
>savev2_my_model_batch_normalization_1_beta_read_readvariableopI
Esavev2_my_model_batch_normalization_1_moving_mean_read_readvariableopM
Isavev2_my_model_batch_normalization_1_moving_variance_read_readvariableop7
3savev2_my_model_conv2d_2_kernel_read_readvariableop5
1savev2_my_model_conv2d_2_bias_read_readvariableopC
?savev2_my_model_batch_normalization_2_gamma_read_readvariableopB
>savev2_my_model_batch_normalization_2_beta_read_readvariableopI
Esavev2_my_model_batch_normalization_2_moving_mean_read_readvariableopM
Isavev2_my_model_batch_normalization_2_moving_variance_read_readvariableop7
3savev2_my_model_conv2d_3_kernel_read_readvariableop5
1savev2_my_model_conv2d_3_bias_read_readvariableopC
?savev2_my_model_batch_normalization_3_gamma_read_readvariableopB
>savev2_my_model_batch_normalization_3_beta_read_readvariableopI
Esavev2_my_model_batch_normalization_3_moving_mean_read_readvariableopM
Isavev2_my_model_batch_normalization_3_moving_variance_read_readvariableop4
0savev2_my_model_dense_kernel_read_readvariableop2
.savev2_my_model_dense_bias_read_readvariableop6
2savev2_my_model_dense_1_kernel_read_readvariableop4
0savev2_my_model_dense_1_bias_read_readvariableop6
2savev2_my_model_dense_2_kernel_read_readvariableop4
0savev2_my_model_dense_2_bias_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_dd6c1aa1b6904c888c8b16761eb0736a/part*
dtype0*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?

SaveV2/tensor_namesConst"/device:CPU:0*?	
value?	B?	B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn1/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn1/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn2/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn2/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn3/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn3/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB$bn4/gamma/.ATTRIBUTES/VARIABLE_VALUEB#bn4/beta/.ATTRIBUTES/VARIABLE_VALUEB*bn4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB.bn4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc3/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc3/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:?
SaveV2/shape_and_slicesConst"/device:CPU:0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_my_model_conv2d_kernel_read_readvariableop/savev2_my_model_conv2d_bias_read_readvariableop=savev2_my_model_batch_normalization_gamma_read_readvariableop<savev2_my_model_batch_normalization_beta_read_readvariableopCsavev2_my_model_batch_normalization_moving_mean_read_readvariableopGsavev2_my_model_batch_normalization_moving_variance_read_readvariableop3savev2_my_model_conv2d_1_kernel_read_readvariableop1savev2_my_model_conv2d_1_bias_read_readvariableop?savev2_my_model_batch_normalization_1_gamma_read_readvariableop>savev2_my_model_batch_normalization_1_beta_read_readvariableopEsavev2_my_model_batch_normalization_1_moving_mean_read_readvariableopIsavev2_my_model_batch_normalization_1_moving_variance_read_readvariableop3savev2_my_model_conv2d_2_kernel_read_readvariableop1savev2_my_model_conv2d_2_bias_read_readvariableop?savev2_my_model_batch_normalization_2_gamma_read_readvariableop>savev2_my_model_batch_normalization_2_beta_read_readvariableopEsavev2_my_model_batch_normalization_2_moving_mean_read_readvariableopIsavev2_my_model_batch_normalization_2_moving_variance_read_readvariableop3savev2_my_model_conv2d_3_kernel_read_readvariableop1savev2_my_model_conv2d_3_bias_read_readvariableop?savev2_my_model_batch_normalization_3_gamma_read_readvariableop>savev2_my_model_batch_normalization_3_beta_read_readvariableopEsavev2_my_model_batch_normalization_3_moving_mean_read_readvariableopIsavev2_my_model_batch_normalization_3_moving_variance_read_readvariableop0savev2_my_model_dense_kernel_read_readvariableop.savev2_my_model_dense_bias_read_readvariableop2savev2_my_model_dense_1_kernel_read_readvariableop0savev2_my_model_dense_1_bias_read_readvariableop2savev2_my_model_dense_2_kernel_read_readvariableop0savev2_my_model_dense_2_bias_read_readvariableop"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: ?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B ?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
_output_shapes
: *
T0"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::::::::: : : : : : : @:@:@:@:@:@:
? ?:?:
??:?:	?:: 2
SaveV2_1SaveV2_12(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV2: : : : : : : : : : : : : : : : : : : : : :+ '
%
_user_specified_namefile_prefix: : : : : : : : :	 :
 
?
?	
*__inference_my_model_layer_call_fn_4915984
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30*
Tout
2*-
config_proto

CPU

GPU2*0J 8**
Tin#
!2*'
_output_shapes
:?????????*.
_gradient_op_typePartitionedCall-4915951*N
fIRG
E__inference_my_model_layer_call_and_return_conditional_losses_4915950?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	input_1: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?/
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917449

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z*
dtype0
N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
T0*
U0*
epsilon%o?:*]
_output_shapesK
I:+??????????????????????????? : : : : :L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+??????????????????????????? *
T0"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp: :& "
 
_user_specified_nameinputs: : : 
?
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4914581

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
dtype0
*
_output_shapes
: *
value	B
 Z N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
T0*
U0*
is_training( *
epsilon%o?:J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: :& "
 
_user_specified_nameinputs: : : 
?/
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4916963

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
dtype0
*
_output_shapes
: *
value	B
 ZN
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
T0*
U0*
epsilon%o?:*K
_output_shapes9
7:?????????JJ:::::L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*>
_input_shapes-
+:?????????JJ::::2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_4917989

inputs
identity?Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: C
dropout/ShapeShapeinputs*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*(
_output_shapes
:??????????b
dropout/mulMulinputsdropout/truediv:z:0*(
_output_shapes
:??????????*
T0p
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*(
_output_shapes
:??????????j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*(
_output_shapes
:??????????*
T0Z
IdentityIdentitydropout/mul_1:z:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
D__inference_dense_1_layer_call_and_return_conditional_losses_4918020

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
??j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:?w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource^MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0* 
_output_shapes
:
??*
dtype0?
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??z
)my_model/dense_1/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?
?
__inference_loss_fn_2_4918178D
@my_model_conv2d_2_kernel_regularizer_abs_readvariableop_resource
identity??7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp@my_model_conv2d_2_kernel_regularizer_abs_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
: *
T0?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentity,my_model/conv2d_2/kernel/Regularizer/add:z:08^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:  
?
m
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917092

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_maskQ
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*8
_output_shapes&
$:"??????????????????*
T0*
dtype0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/mulMulinputsdropout/truediv:z:0*
T0*J
_output_shapes8
6:4?????????????????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*J
_output_shapes8
6:4????????????????????????????????????*
T0|
IdentityIdentitydropout/mul_1:z:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
H
,__inference_activation_layer_call_fn_4916901

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4914930*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914927*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915044

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*
is_training( *
epsilon%o?:*K
_output_shapes9
7:????????? : : : : :J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_4918052

inputs

identity_1O
IdentityIdentityinputs*(
_output_shapes
:??????????*
T0\

Identity_1IdentityIdentity:output:0*(
_output_shapes
:??????????*
T0"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917899

inputs

identity_1q
IdentityIdentityinputs*J
_output_shapes8
6:4????????????????????????????????????*
T0~

Identity_1IdentityIdentity:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_1_layer_call_fn_4917304

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*A
_output_shapes/
-:+???????????????????????????*.
_gradient_op_typePartitionedCall-4914020*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914019?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4915074

inputs
identityN
ReluReluinputs*/
_output_shapes
:????????? *
T0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
??
?
E__inference_my_model_layer_call_and_return_conditional_losses_4915798
x)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_16
2batch_normalization_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_36
2batch_normalization_statefulpartitionedcall_args_4+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_18
4batch_normalization_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_38
4batch_normalization_1_statefulpartitionedcall_args_4+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_18
4batch_normalization_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_38
4batch_normalization_2_statefulpartitionedcall_args_4+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_18
4batch_normalization_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_38
4batch_normalization_3_statefulpartitionedcall_args_4(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp?)spatial_dropout2d/StatefulPartitionedCall?+spatial_dropout2d_1/StatefulPartitionedCall?+spatial_dropout2d_2/StatefulPartitionedCall?+spatial_dropout2d_3/StatefulPartitionedCalla
conv2d/CastCastx*

SrcT0*

DstT0*1
_output_shapes
:????????????
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d/Cast:y:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4913650*L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:02batch_normalization_statefulpartitionedcall_args_12batch_normalization_statefulpartitionedcall_args_22batch_normalization_statefulpartitionedcall_args_32batch_normalization_statefulpartitionedcall_args_4*.
_gradient_op_typePartitionedCall-4914725*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914724*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????JJ?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4914781*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914775*
Tout
2?
)spatial_dropout2d/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4914826*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914818*
Tout
2?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2spatial_dropout2d/StatefulPartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4913912*N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:04batch_normalization_1_statefulpartitionedcall_args_14batch_normalization_1_statefulpartitionedcall_args_24batch_normalization_1_statefulpartitionedcall_args_34batch_normalization_1_statefulpartitionedcall_args_4*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4914900*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914875?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin
2*.
_gradient_op_typePartitionedCall-4914930*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914927?
+spatial_dropout2d_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0*^spatial_dropout2d/StatefulPartitionedCall*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????$$*
Tin
2*.
_gradient_op_typePartitionedCall-4914973*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914965?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_1/StatefulPartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4914176*N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:????????? *
Tin
2?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:04batch_normalization_2_statefulpartitionedcall_args_14batch_normalization_2_statefulpartitionedcall_args_24batch_normalization_2_statefulpartitionedcall_args_34batch_normalization_2_statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915047*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915022*
Tout
2?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915077*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915074*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
+spatial_dropout2d_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0,^spatial_dropout2d_1/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915115*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915114*
Tout
2?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_2/StatefulPartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*/
_output_shapes
:?????????@*
Tin
2*.
_gradient_op_typePartitionedCall-4914440*N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:04batch_normalization_3_statefulpartitionedcall_args_14batch_normalization_3_statefulpartitionedcall_args_24batch_normalization_3_statefulpartitionedcall_args_34batch_normalization_3_statefulpartitionedcall_args_4*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915169*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4915194?
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4915224*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915221*
Tout
2?
+spatial_dropout2d_3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0,^spatial_dropout2d_2/StatefulPartitionedCall*.
_gradient_op_typePartitionedCall-4915267*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915259*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????@*
Tin
2?
reshape/PartitionedCallPartitionedCall4spatial_dropout2d_3/StatefulPartitionedCall:output:0*.
_gradient_op_typePartitionedCall-4915296*M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4915290*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:?????????? ?
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915327*K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4915321*
Tout
2?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0,^spatial_dropout2d_3/StatefulPartitionedCall*M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4915361*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915362?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4915398*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915404?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915446*O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915435?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4915480*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????*
Tin
2*.
_gradient_op_typePartitionedCall-4915481?
activation_1_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*'
_output_shapes
:?????????*.
_gradient_op_typePartitionedCall-4915501*R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4915500*
Tout
2?
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_statefulpartitionedcall_args_1^conv2d/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
(my_model/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*%
valueB"             *
dtype0?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_1_statefulpartitionedcall_args_1!^conv2d_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
:*
dtype0?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
valueB
 *
?#<*
dtype0?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_2_statefulpartitionedcall_args_1!^conv2d_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
: *
T0?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_3_statefulpartitionedcall_args_1!^conv2d_3/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*&
_output_shapes
: @*
dtype0?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*&
_output_shapes
: @*
T0?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
valueB
 *
?#<*
dtype0?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_statefulpartitionedcall_args_1^dense/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
? ?x
'my_model/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0l
'my_model/dense/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_1_statefulpartitionedcall_args_1 ^dense_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??z
)my_model/dense_1/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
valueB
 *
ף<*
dtype0?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_2_statefulpartitionedcall_args_1 ^dense_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
_output_shapes
:	?*
T0z
)my_model/dense_2/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?	
IdentityIdentity'activation_1_1/PartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall6^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*^spatial_dropout2d/StatefulPartitionedCall,^spatial_dropout2d_1/StatefulPartitionedCall,^spatial_dropout2d_2/StatefulPartitionedCall,^spatial_dropout2d_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2V
)spatial_dropout2d/StatefulPartitionedCall)spatial_dropout2d/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2Z
+spatial_dropout2d_2/StatefulPartitionedCall+spatial_dropout2d_2/StatefulPartitionedCall2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+spatial_dropout2d_1/StatefulPartitionedCall+spatial_dropout2d_1/StatefulPartitionedCall2Z
+spatial_dropout2d_3/StatefulPartitionedCall+spatial_dropout2d_3/StatefulPartitionedCall2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall: : : : : : : : : : : : : :! 

_user_specified_namex: : : : : : : : :	 :
 : : : : : : : 
?
?
__inference_loss_fn_6_4918148C
?my_model_dense_2_kernel_regularizer_abs_readvariableop_resource
identity??6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp?
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp?my_model_dense_2_kernel_regularizer_abs_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
_output_shapes
:	?*
T0z
)my_model/dense_2/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
valueB
 *
ף<*
dtype0?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentity+my_model/dense_2/kernel/Regularizer/add:z:07^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:  
?
n
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914147

inputs

identity_1q
IdentityIdentityinputs*J
_output_shapes8
6:4????????????????????????????????????*
T0~

Identity_1IdentityIdentity:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?/
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914875

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
dtype0*
_output_shapes
: *
valueB ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
U0*
epsilon%o?:*K
_output_shapes9
7:?????????$$:::::*
T0L
Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: *
T0?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:*
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????$$"
identityIdentity:output:0*>
_input_shapes-
+:?????????$$::::2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
m
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917138

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0_
strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:a
strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskQ
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
value	B :*
dtype0`
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*8
_output_shapes&
$:"??????????????????*
T0*
dtype0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0i
dropout/mulMulinputsdropout/truediv:z:0*
T0*/
_output_shapes
:?????????JJ?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
q
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*/
_output_shapes
:?????????JJ*
T0a
IdentityIdentitydropout/mul_1:z:0*/
_output_shapes
:?????????JJ*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_3_layer_call_fn_4917817

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*.
_gradient_op_typePartitionedCall-4915204*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915191*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:?????????@?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*/
_output_shapes
:?????????@*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?/
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914724

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
T0*
U0*
epsilon%o?:*K
_output_shapes9
7:?????????JJ:::::L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
:*
T0?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 *8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*>
_input_shapes-
+:?????????JJ::::2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp: : : :& "
 
_user_specified_nameinputs: 
?
e
I__inference_activation_1_layer_call_and_return_conditional_losses_4915500

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*&
_input_shapes
:?????????:& "
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914897

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
U0*
is_training( *
epsilon%o?:*K
_output_shapes9
7:?????????$$:::::*
T0J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*/
_output_shapes
:?????????$$*
T0"
identityIdentity:output:0*>
_input_shapes-
+:?????????$$::::2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:& "
 
_user_specified_nameinputs: : : : 
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4914775

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????JJb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
Q
5__inference_spatial_dropout2d_2_layer_call_fn_4917575

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4915126*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915125*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:????????? h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915125

inputs

identity_1V
IdentityIdentityinputs*/
_output_shapes
:????????? *
T0c

Identity_1IdentityIdentity:output:0*/
_output_shapes
:????????? *
T0"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?/
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917525

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
dtype0
*
_output_shapes
: *
value	B
 ZN
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*K
_output_shapes9
7:????????? : : : : :*
T0*
U0L
Const_2Const*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
T0*
_output_shapes
: ?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
: *
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: *
T0?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
l
3__inference_spatial_dropout2d_layer_call_fn_4917148

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4914826*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914818*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*.
_input_shapes
:?????????JJ22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914756

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z *
dtype0
N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*K
_output_shapes9
7:?????????JJ:::::*
T0*
U0*
is_training( *
epsilon%o?:J
ConstConst*
_output_shapes
: *
valueB
 *?p}?*
dtype0?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*>
_input_shapes-
+:?????????JJ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : : :& "
 
_user_specified_nameinputs: 
?
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917723

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
_output_shapes
: *
value	B
 Z *
dtype0
N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
T0*
U0*
is_training( J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+???????????????????????????@*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : : :& "
 
_user_specified_nameinputs: 
?
?
__inference_loss_fn_3_4918163D
@my_model_conv2d_3_kernel_regularizer_abs_readvariableop_resource
identity??7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp@my_model_conv2d_3_kernel_regularizer_abs_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentity,my_model/conv2d_3/kernel/Regularizer/add:z:08^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp*
_output_shapes
: *
T0"
identityIdentity:output:0*
_input_shapes
:2r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:  
??
?
E__inference_my_model_layer_call_and_return_conditional_losses_4915950
x)
%conv2d_statefulpartitionedcall_args_1)
%conv2d_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_16
2batch_normalization_statefulpartitionedcall_args_26
2batch_normalization_statefulpartitionedcall_args_36
2batch_normalization_statefulpartitionedcall_args_4+
'conv2d_1_statefulpartitionedcall_args_1+
'conv2d_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_18
4batch_normalization_1_statefulpartitionedcall_args_28
4batch_normalization_1_statefulpartitionedcall_args_38
4batch_normalization_1_statefulpartitionedcall_args_4+
'conv2d_2_statefulpartitionedcall_args_1+
'conv2d_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_18
4batch_normalization_2_statefulpartitionedcall_args_28
4batch_normalization_2_statefulpartitionedcall_args_38
4batch_normalization_2_statefulpartitionedcall_args_4+
'conv2d_3_statefulpartitionedcall_args_1+
'conv2d_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_18
4batch_normalization_3_statefulpartitionedcall_args_28
4batch_normalization_3_statefulpartitionedcall_args_38
4batch_normalization_3_statefulpartitionedcall_args_4(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp?7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp?)spatial_dropout2d/StatefulPartitionedCall?+spatial_dropout2d_1/StatefulPartitionedCall?+spatial_dropout2d_2/StatefulPartitionedCall?+spatial_dropout2d_3/StatefulPartitionedCalla
conv2d/CastCastx*

DstT0*1
_output_shapes
:???????????*

SrcT0?
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d/Cast:y:0%conv2d_statefulpartitionedcall_args_1%conv2d_statefulpartitionedcall_args_2*/
_output_shapes
:?????????JJ*
Tin
2*.
_gradient_op_typePartitionedCall-4913650*L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:02batch_normalization_statefulpartitionedcall_args_12batch_normalization_statefulpartitionedcall_args_22batch_normalization_statefulpartitionedcall_args_32batch_normalization_statefulpartitionedcall_args_4*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????JJ*
Tin	
2*.
_gradient_op_typePartitionedCall-4914757*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914756?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*/
_output_shapes
:?????????JJ*
Tin
2*.
_gradient_op_typePartitionedCall-4914781*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914775*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
)spatial_dropout2d/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914818*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4914826?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2spatial_dropout2d/StatefulPartitionedCall:output:0'conv2d_1_statefulpartitionedcall_args_1'conv2d_1_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4913912*N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:04batch_normalization_1_statefulpartitionedcall_args_14batch_normalization_1_statefulpartitionedcall_args_24batch_normalization_1_statefulpartitionedcall_args_34batch_normalization_1_statefulpartitionedcall_args_4*/
_output_shapes
:?????????$$*
Tin	
2*.
_gradient_op_typePartitionedCall-4914910*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914897*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914927*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4914930?
+spatial_dropout2d_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0*^spatial_dropout2d/StatefulPartitionedCall*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914965*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????$$*.
_gradient_op_typePartitionedCall-4914973?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_1/StatefulPartitionedCall:output:0'conv2d_2_statefulpartitionedcall_args_1'conv2d_2_statefulpartitionedcall_args_2*/
_output_shapes
:????????? *
Tin
2*.
_gradient_op_typePartitionedCall-4914176*N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:04batch_normalization_2_statefulpartitionedcall_args_14batch_normalization_2_statefulpartitionedcall_args_24batch_normalization_2_statefulpartitionedcall_args_34batch_normalization_2_statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*
Tin	
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915057*[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4915044*
Tout
2?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915074*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915077?
+spatial_dropout2d_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0,^spatial_dropout2d_1/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:????????? *.
_gradient_op_typePartitionedCall-4915115*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4915114*
Tout
2?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_2/StatefulPartitionedCall:output:0'conv2d_3_statefulpartitionedcall_args_1'conv2d_3_statefulpartitionedcall_args_2*N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4914440?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:04batch_normalization_3_statefulpartitionedcall_args_14batch_normalization_3_statefulpartitionedcall_args_24batch_normalization_3_statefulpartitionedcall_args_34batch_normalization_3_statefulpartitionedcall_args_4*.
_gradient_op_typePartitionedCall-4915204*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4915191*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????@*
Tin	
2?
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4915224*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915221*
Tout
2?
+spatial_dropout2d_3/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0,^spatial_dropout2d_2/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????@*.
_gradient_op_typePartitionedCall-4915267*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4915259*
Tout
2?
reshape/PartitionedCallPartitionedCall4spatial_dropout2d_3/StatefulPartitionedCall:output:0*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:?????????? *
Tin
2*.
_gradient_op_typePartitionedCall-4915296*M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4915290?
dense/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:??????????*
Tin
2*.
_gradient_op_typePartitionedCall-4915327*K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4915321?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0,^spatial_dropout2d_3/StatefulPartitionedCall*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915362*M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4915361?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4915404*M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4915398*
Tout
2*-
config_proto

CPU

GPU2*0J 8*(
_output_shapes
:??????????*
Tin
2?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????*.
_gradient_op_typePartitionedCall-4915446*O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915435*
Tout
2?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*'
_output_shapes
:?????????*.
_gradient_op_typePartitionedCall-4915481*M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4915480*
Tout
2?
activation_1_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*.
_gradient_op_typePartitionedCall-4915501*R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4915500*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*'
_output_shapes
:??????????
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_statefulpartitionedcall_args_1^conv2d/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
&my_model/conv2d/kernel/Regularizer/AbsAbs=my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
(my_model/conv2d/kernel/Regularizer/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             ?
&my_model/conv2d/kernel/Regularizer/SumSum*my_model/conv2d/kernel/Regularizer/Abs:y:01my_model/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/mulMul1my_model/conv2d/kernel/Regularizer/mul/x:output:0/my_model/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: m
(my_model/conv2d/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
&my_model/conv2d/kernel/Regularizer/addAddV21my_model/conv2d/kernel/Regularizer/add/x:output:0*my_model/conv2d/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_1_statefulpartitionedcall_args_1!^conv2d_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/AbsAbs?my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*my_model/conv2d_1/kernel/Regularizer/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:?
(my_model/conv2d_1/kernel/Regularizer/SumSum,my_model/conv2d_1/kernel/Regularizer/Abs:y:03my_model/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_1/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/mulMul3my_model/conv2d_1/kernel/Regularizer/mul/x:output:01my_model/conv2d_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_1/kernel/Regularizer/addAddV23my_model/conv2d_1/kernel/Regularizer/add/x:output:0,my_model/conv2d_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_2_statefulpartitionedcall_args_1!^conv2d_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/AbsAbs?my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ?
*my_model/conv2d_2/kernel/Regularizer/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             ?
(my_model/conv2d_2/kernel/Regularizer/SumSum,my_model/conv2d_2/kernel/Regularizer/Abs:y:03my_model/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_2/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_2/kernel/Regularizer/mulMul3my_model/conv2d_2/kernel/Regularizer/mul/x:output:01my_model/conv2d_2/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0o
*my_model/conv2d_2/kernel/Regularizer/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
(my_model/conv2d_2/kernel/Regularizer/addAddV23my_model/conv2d_2/kernel/Regularizer/add/x:output:0,my_model/conv2d_2/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_3_statefulpartitionedcall_args_1!^conv2d_3/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*&
_output_shapes
: @?
(my_model/conv2d_3/kernel/Regularizer/AbsAbs?my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @?
*my_model/conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*%
valueB"             *
dtype0?
(my_model/conv2d_3/kernel/Regularizer/SumSum,my_model/conv2d_3/kernel/Regularizer/Abs:y:03my_model/conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/mul/xConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/mulMul3my_model/conv2d_3/kernel/Regularizer/mul/x:output:01my_model/conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
*my_model/conv2d_3/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
(my_model/conv2d_3/kernel/Regularizer/addAddV23my_model/conv2d_3/kernel/Regularizer/add/x:output:0,my_model/conv2d_3/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_statefulpartitionedcall_args_1^dense/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0* 
_output_shapes
:
? ?*
T0x
'my_model/dense/kernel/Regularizer/ConstConst*
dtype0*
_output_shapes
:*
valueB"       ?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_1_statefulpartitionedcall_args_1 ^dense_1/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0* 
_output_shapes
:
??*
dtype0?
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0* 
_output_shapes
:
??*
T0z
)my_model/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
valueB"       *
dtype0?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_2_statefulpartitionedcall_args_1 ^dense_2/StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:	??
'my_model/dense_2/kernel/Regularizer/AbsAbs>my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?z
)my_model/dense_2/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_2/kernel/Regularizer/SumSum+my_model/dense_2/kernel/Regularizer/Abs:y:02my_model/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)my_model/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
valueB
 *
ף<*
dtype0?
'my_model/dense_2/kernel/Regularizer/mulMul2my_model/dense_2/kernel/Regularizer/mul/x:output:00my_model/dense_2/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_2/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
'my_model/dense_2/kernel/Regularizer/addAddV22my_model/dense_2/kernel/Regularizer/add/x:output:0+my_model/dense_2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?	
IdentityIdentity'activation_1_1/PartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall6^my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp8^my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp7^my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp*^spatial_dropout2d/StatefulPartitionedCall,^spatial_dropout2d_1/StatefulPartitionedCall,^spatial_dropout2d_2/StatefulPartitionedCall,^spatial_dropout2d_3/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::2p
6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_2/kernel/Regularizer/Abs/ReadVariableOp2r
7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_2/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2r
7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_3/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2Z
+spatial_dropout2d_1/StatefulPartitionedCall+spatial_dropout2d_1/StatefulPartitionedCall2Z
+spatial_dropout2d_3/StatefulPartitionedCall+spatial_dropout2d_3/StatefulPartitionedCall2n
5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp5my_model/conv2d/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2V
)spatial_dropout2d/StatefulPartitionedCall)spatial_dropout2d/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2Z
+spatial_dropout2d_2/StatefulPartitionedCall+spatial_dropout2d_2/StatefulPartitionedCall2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2r
7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp7my_model/conv2d_1/kernel/Regularizer/Abs/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall:! 

_user_specified_namex: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
H
,__inference_activation_layer_call_fn_4916891

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4915077*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4915074*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:????????? h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?
n
5__inference_spatial_dropout2d_2_layer_call_fn_4917616

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*J
_output_shapes8
6:4????????????????????????????????????*
Tin
2*.
_gradient_op_typePartitionedCall-4914399*Y
fTRR
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4914398*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
B__inference_dense_layer_call_and_return_conditional_losses_4915321

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ?j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:?w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource^MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
? ??
%my_model/dense/kernel/Regularizer/AbsAbs<my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
? ?x
'my_model/dense/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
%my_model/dense/kernel/Regularizer/SumSum)my_model/dense/kernel/Regularizer/Abs:y:00my_model/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: l
'my_model/dense/kernel/Regularizer/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *
ף<?
%my_model/dense/kernel/Regularizer/mulMul0my_model/dense/kernel/Regularizer/mul/x:output:0.my_model/dense/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0l
'my_model/dense/kernel/Regularizer/add/xConst*
_output_shapes
: *
valueB
 *    *
dtype0?
%my_model/dense/kernel/Regularizer/addAddV20my_model/dense/kernel/Regularizer/add/x:output:0)my_model/dense/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp5^my_model/dense/kernel/Regularizer/Abs/ReadVariableOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:?????????? ::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2l
4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp4my_model/dense/kernel/Regularizer/Abs/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?
o
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4914662

inputs
identity?;
ShapeShapeinputs*
_output_shapes
:*
T0]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskQ
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
_output_shapes
: *
value	B :*
dtype0?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*8
_output_shapes&
$:"???????????????????
dropout/mulMulinputsdropout/truediv:z:0*
T0*J
_output_shapes8
6:4?????????????????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????|
IdentityIdentitydropout/mul_1:z:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
O
3__inference_spatial_dropout2d_layer_call_fn_4917153

inputs
identity?
PartitionedCallPartitionedCallinputs*-
config_proto

CPU

GPU2*0J 8*
Tin
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4914832*W
fRRP
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4914823*
Tout
2h
IdentityIdentityPartitionedCall:output:0*/
_output_shapes
:?????????JJ*
T0"
identityIdentity:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_3_layer_call_fn_4917732

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*-
config_proto

CPU

GPU2*0J 8*A
_output_shapes/
-:+???????????????????????????@*
Tin	
2*.
_gradient_op_typePartitionedCall-4914548*[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4914547*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : : : 
?
Q
5__inference_spatial_dropout2d_3_layer_call_fn_4917909

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*J
_output_shapes8
6:4????????????????????????????????????*.
_gradient_op_typePartitionedCall-4914676*Y
fTRR
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4914675?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?/
?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917777

inputs
readvariableop_resource
readvariableop_1_resource0
,assignmovingavg_read_readvariableop_resource2
.assignmovingavg_1_read_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?#AssignMovingAvg/Read/ReadVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?%AssignMovingAvg_1/Read/ReadVariableOp? AssignMovingAvg_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z*
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@H
ConstConst*
valueB *
dtype0*
_output_shapes
: J
Const_1Const*
valueB *
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0Const:output:0Const_1:output:0*
epsilon%o?:*K
_output_shapes9
7:?????????@:@:@:@:@:*
T0*
U0L
Const_2Const*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
#AssignMovingAvg/Read/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@v
AssignMovingAvg/IdentityIdentity+AssignMovingAvg/Read/ReadVariableOp:value:0*
_output_shapes
:@*
T0?
AssignMovingAvg/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
: ?
AssignMovingAvg/ReadVariableOpReadVariableOp,assignmovingavg_read_readvariableop_resource$^AssignMovingAvg/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
_output_shapes
:@?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,assignmovingavg_read_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*6
_class,
*(loc:@AssignMovingAvg/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
%AssignMovingAvg_1/Read/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:@z
AssignMovingAvg_1/IdentityIdentity-AssignMovingAvg_1/Read/ReadVariableOp:value:0*
_output_shapes
:@*
T0?
AssignMovingAvg_1/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
valueB
 *  ??*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
: ?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
: ?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp.assignmovingavg_1_read_readvariableop_resource&^AssignMovingAvg_1/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:@*
dtype0?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:@?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
_output_shapes
:@?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.assignmovingavg_1_read_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*8
_class.
,*loc:@AssignMovingAvg_1/Read/ReadVariableOp*
dtype0*
_output_shapes
 ?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp$^AssignMovingAvg/Read/ReadVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp&^AssignMovingAvg_1/Read/ReadVariableOp!^AssignMovingAvg_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/Read/ReadVariableOp%AssignMovingAvg_1/Read/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#AssignMovingAvg/Read/ReadVariableOp#AssignMovingAvg/Read/ReadVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp:& "
 
_user_specified_nameinputs: : : : 
?
n
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917349

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$$c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$$"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????$$:& "
 
_user_specified_nameinputs
?
H
,__inference_activation_layer_call_fn_4916881

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4914781*P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4914775*
Tout
2*-
config_proto

CPU

GPU2*0J 8*/
_output_shapes
:?????????JJ*
Tin
2h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*.
_input_shapes
:?????????JJ:& "
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4913791

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
is_training( *
epsilon%o?:*]
_output_shapesK
I:+???????????????????????????:::::*
T0*
U0J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*A
_output_shapes/
-:+???????????????????????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : : : :& "
 
_user_specified_nameinputs
?
o
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917894

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0_
strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: Q
dropout/rateConst*
_output_shapes
: *
valueB
 *   ?*
dtype0`
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
_output_shapes
: *
value	B :*
dtype0?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*
T0*8
_output_shapes&
$:"??????????????????R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
_output_shapes
: *
T0V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/mulMulinputsdropout/truediv:z:0*
T0*J
_output_shapes8
6:4?????????????????????????????????????
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*8
_output_shapes&
$:"??????????????????*

SrcT0
?
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*J
_output_shapes8
6:4????????????????????????????????????*
T0|
IdentityIdentitydropout/mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917547

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
epsilon%o?:*K
_output_shapes9
7:????????? : : : : :*
T0*
U0*
is_training( J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*/
_output_shapes
:????????? *
T0"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp: : :& "
 
_user_specified_nameinputs: : 
?
o
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917652

inputs
identity?;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: Q
dropout/rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/1Const*
value	B :*
dtype0*
_output_shapes
: `
dropout/random_uniform/shape/2Const*
value	B :*
dtype0*
_output_shapes
: ?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
T0*
N*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: _
dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*
dtype0*8
_output_shapes&
$:"???????????????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*8
_output_shapes&
$:"??????????????????*
T0R
dropout/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*8
_output_shapes&
$:"??????????????????*
T0?
dropout/mulMulinputsdropout/truediv:z:0*J
_output_shapes8
6:4????????????????????????????????????*
T0?
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*

DstT0*8
_output_shapes&
$:"???????????????????
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????|
IdentityIdentitydropout/mul_1:z:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_1_layer_call_fn_4917313

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*A
_output_shapes/
-:+???????????????????????????*
Tin	
2*.
_gradient_op_typePartitionedCall-4914054*[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4914053*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*A
_output_shapes/
-:+???????????????????????????*
T0"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs: : 
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915442

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
n
5__inference_spatial_dropout2d_1_layer_call_fn_4917400

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*Y
fTRR
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4914134*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*J
_output_shapes8
6:4????????????????????????????????????*.
_gradient_op_typePartitionedCall-4914135?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?	
*__inference_my_model_layer_call_fn_4916826
x"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallxstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30*.
_gradient_op_typePartitionedCall-4915799*N
fIRG
E__inference_my_model_layer_call_and_return_conditional_losses_4915798*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????**
Tin#
!2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:! 

_user_specified_namex: : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : 
?
c
G__inference_activation_layer_call_and_return_conditional_losses_4916886

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:????????? b
IdentityIdentityRelu:activations:0*/
_output_shapes
:????????? *
T0"
identityIdentity:output:0*.
_input_shapes
:????????? :& "
 
_user_specified_nameinputs
?
?
D__inference_dense_1_layer_call_and_return_conditional_losses_4915398

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
??j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes	
:?w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource^MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0* 
_output_shapes
:
???
'my_model/dense_1/kernel/Regularizer/AbsAbs>my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??z
)my_model/dense_1/kernel/Regularizer/ConstConst*
valueB"       *
dtype0*
_output_shapes
:?
'my_model/dense_1/kernel/Regularizer/SumSum+my_model/dense_1/kernel/Regularizer/Abs:y:02my_model/dense_1/kernel/Regularizer/Const:output:0*
_output_shapes
: *
T0n
)my_model/dense_1/kernel/Regularizer/mul/xConst*
valueB
 *
ף<*
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/mulMul2my_model/dense_1/kernel/Regularizer/mul/x:output:00my_model/dense_1/kernel/Regularizer/Sum:output:0*
_output_shapes
: *
T0n
)my_model/dense_1/kernel/Regularizer/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: ?
'my_model/dense_1/kernel/Regularizer/addAddV22my_model/dense_1/kernel/Regularizer/add/x:output:0+my_model/dense_1/kernel/Regularizer/mul:z:0*
_output_shapes
: *
T0?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*/
_input_shapes
:??????????::2p
6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp6my_model/dense_1/kernel/Regularizer/Abs/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
?
?	
*__inference_my_model_layer_call_fn_4915832
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30*
Tout
2*-
config_proto

CPU

GPU2*0J 8*'
_output_shapes
:?????????**
Tin#
!2*.
_gradient_op_typePartitionedCall-4915799*N
fIRG
E__inference_my_model_layer_call_and_return_conditional_losses_4915798?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:
 : : : : : : : : : : : : : : : : : : : : :' #
!
_user_specified_name	input_1: : : : : : : : :	 
?
?
(__inference_conv2d_layer_call_fn_4913655

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*A
_output_shapes/
-:+???????????????????????????*.
_gradient_op_typePartitionedCall-4913650*L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917295

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: ^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
:?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*]
_output_shapesK
I:+???????????????????????????:::::*
T0*
U0*
is_training( *
epsilon%o?:J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
ReadVariableOpReadVariableOp2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_1:& "
 
_user_specified_nameinputs: : : : 
?
?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4914317

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1N
LogicalAnd/xConst*
value	B
 Z *
dtype0
*
_output_shapes
: N
LogicalAnd/yConst*
_output_shapes
: *
value	B
 Z*
dtype0
^

LogicalAnd
LogicalAndLogicalAnd/x:output:0LogicalAnd/y:output:0*
_output_shapes
: ?
ReadVariableOpReadVariableOpreadvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource",/job:localhost/replica:0/task:0/device:GPU:0*
dtype0*
_output_shapes
: ?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
U0*
is_training( *
epsilon%o?:*]
_output_shapesK
I:+??????????????????????????? : : : : :*
T0J
ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: ?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp: : : : :& "
 
_user_specified_nameinputs
?
n
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4914675

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"!

identity_1Identity_1:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_layer_call_fn_4916918

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4*
Tin	
2*/
_output_shapes
:?????????JJ*.
_gradient_op_typePartitionedCall-4914725*Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4914724*
Tout
2*-
config_proto

CPU

GPU2*0J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????JJ"
identityIdentity:output:0*>
_input_shapes-
+:?????????JJ::::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: : : 
?
E
)__inference_reshape_layer_call_fn_4917926

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4915296*M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4915290*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:?????????? a
IdentityIdentityPartitionedCall:output:0*(
_output_shapes
:?????????? *
T0"
identityIdentity:output:0*.
_input_shapes
:?????????@:& "
 
_user_specified_nameinputs
?
G
+__inference_dropout_1_layer_call_fn_4918062

inputs
identity?
PartitionedCallPartitionedCallinputs*.
_gradient_op_typePartitionedCall-4915454*O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4915442*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*(
_output_shapes
:??????????a
IdentityIdentityPartitionedCall:output:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
*__inference_conv2d_3_layer_call_fn_4914445

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*.
_gradient_op_typePartitionedCall-4914440*N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434*
Tout
2*-
config_proto

CPU

GPU2*0J 8*
Tin
2*A
_output_shapes/
-:+???????????????????????????@?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*H
_input_shapes7
5:+??????????????????????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : "wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*?
serving_default?
E
input_1:
serving_default_input_1:0???????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:??
?
relu
	conv1
bn1
	conv_do_1
	conv2
bn2
	conv_do_2
	conv3
	bn3

	conv_do_3
	conv4
bn4
	conv_do_4
reshape
fc1
do1
fc2
do2
fc3
out
regularization_losses
	variables
trainable_variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?
_tf_keras_model?{"name": "my_model", "backend": "tensorflow", "trainable": true, "dtype": "float32", "keras_version": "2.2.4-tf", "expects_training_arg": true, "batch_input_shape": null, "model_config": {"class_name": "MyModel"}, "class_name": "MyModel"}
?
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation", "trainable": true, "dtype": "float32", "config": {"name": "activation", "activation": "relu", "trainable": true, "dtype": "float32"}, "expects_training_arg": false, "batch_input_shape": null, "class_name": "Activation"}
?

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d", "trainable": true, "dtype": "float32", "config": {"activity_regularizer": null, "bias_initializer": {"config": {}, "class_name": "Zeros"}, "padding": "valid", "activation": "linear", "trainable": true, "dtype": "float32", "use_bias": true, "filters": 8, "kernel_constraint": null, "kernel_size": [5, 5], "name": "conv2d", "dilation_rate": [1, 1], "kernel_initializer": {"config": {"seed": null}, "class_name": "GlorotUniform"}, "strides": [4, 4], "data_format": "channels_last", "bias_regularizer": null, "kernel_regularizer": {"config": {"l2": 0.0, "l1": 0.009999999776482582}, "class_name": "L1L2"}, "bias_constraint": null}, "expects_training_arg": false, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"-1": 3}}, "class_name": "InputSpec"}, "class_name": "Conv2D"}
?
$axis
	%gamma
&beta
'moving_mean
(moving_variance
)regularization_losses
*	variables
+trainable_variables
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization", "trainable": true, "dtype": "float32", "config": {"gamma_initializer": {"config": {}, "class_name": "Ones"}, "gamma_constraint": null, "trainable": true, "dtype": "float32", "beta_initializer": {"config": {}, "class_name": "Zeros"}, "scale": true, "epsilon": 0.001, "center": true, "moving_variance_initializer": {"config": {}, "class_name": "Ones"}, "name": "batch_normalization", "momentum": 0.99, "gamma_regularizer": null, "moving_mean_initializer": {"config": {}, "class_name": "Zeros"}, "axis": [3], "beta_constraint": null, "beta_regularizer": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"3": 8}}, "class_name": "InputSpec"}, "class_name": "BatchNormalization"}
?
-regularization_losses
.	variables
/trainable_variables
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "spatial_dropout2d", "trainable": true, "dtype": "float32", "config": {"name": "spatial_dropout2d", "rate": 0.5, "noise_shape": null, "trainable": true, "dtype": "float32", "seed": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {}}, "class_name": "InputSpec"}, "class_name": "SpatialDropout2D"}
?

1kernel
2bias
3regularization_losses
4	variables
5trainable_variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d_1", "trainable": true, "dtype": "float32", "config": {"activity_regularizer": null, "bias_initializer": {"config": {}, "class_name": "Zeros"}, "padding": "valid", "activation": "linear", "trainable": true, "dtype": "float32", "use_bias": true, "filters": 16, "kernel_constraint": null, "kernel_size": [3, 3], "name": "conv2d_1", "dilation_rate": [1, 1], "kernel_initializer": {"config": {"seed": null}, "class_name": "GlorotUniform"}, "strides": [2, 2], "data_format": "channels_last", "bias_regularizer": null, "kernel_regularizer": {"config": {"l2": 0.0, "l1": 0.009999999776482582}, "class_name": "L1L2"}, "bias_constraint": null}, "expects_training_arg": false, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"-1": 8}}, "class_name": "InputSpec"}, "class_name": "Conv2D"}
?
7axis
	8gamma
9beta
:moving_mean
;moving_variance
<regularization_losses
=	variables
>trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "config": {"gamma_initializer": {"config": {}, "class_name": "Ones"}, "gamma_constraint": null, "trainable": true, "dtype": "float32", "beta_initializer": {"config": {}, "class_name": "Zeros"}, "scale": true, "epsilon": 0.001, "center": true, "moving_variance_initializer": {"config": {}, "class_name": "Ones"}, "name": "batch_normalization_1", "momentum": 0.99, "gamma_regularizer": null, "moving_mean_initializer": {"config": {}, "class_name": "Zeros"}, "axis": [3], "beta_constraint": null, "beta_regularizer": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"3": 16}}, "class_name": "InputSpec"}, "class_name": "BatchNormalization"}
?
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "spatial_dropout2d_1", "trainable": true, "dtype": "float32", "config": {"name": "spatial_dropout2d_1", "rate": 0.5, "noise_shape": null, "trainable": true, "dtype": "float32", "seed": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {}}, "class_name": "InputSpec"}, "class_name": "SpatialDropout2D"}
?

Dkernel
Ebias
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d_2", "trainable": true, "dtype": "float32", "config": {"activity_regularizer": null, "bias_initializer": {"config": {}, "class_name": "Zeros"}, "padding": "valid", "activation": "linear", "trainable": true, "dtype": "float32", "use_bias": true, "filters": 32, "kernel_constraint": null, "kernel_size": [3, 3], "name": "conv2d_2", "dilation_rate": [1, 1], "kernel_initializer": {"config": {"seed": null}, "class_name": "GlorotUniform"}, "strides": [2, 2], "data_format": "channels_last", "bias_regularizer": null, "kernel_regularizer": {"config": {"l2": 0.0, "l1": 0.009999999776482582}, "class_name": "L1L2"}, "bias_constraint": null}, "expects_training_arg": false, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"-1": 16}}, "class_name": "InputSpec"}, "class_name": "Conv2D"}
?
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "config": {"gamma_initializer": {"config": {}, "class_name": "Ones"}, "gamma_constraint": null, "trainable": true, "dtype": "float32", "beta_initializer": {"config": {}, "class_name": "Zeros"}, "scale": true, "epsilon": 0.001, "center": true, "moving_variance_initializer": {"config": {}, "class_name": "Ones"}, "name": "batch_normalization_2", "momentum": 0.99, "gamma_regularizer": null, "moving_mean_initializer": {"config": {}, "class_name": "Zeros"}, "axis": [3], "beta_constraint": null, "beta_regularizer": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"3": 32}}, "class_name": "InputSpec"}, "class_name": "BatchNormalization"}
?
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "spatial_dropout2d_2", "trainable": true, "dtype": "float32", "config": {"name": "spatial_dropout2d_2", "rate": 0.5, "noise_shape": null, "trainable": true, "dtype": "float32", "seed": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {}}, "class_name": "InputSpec"}, "class_name": "SpatialDropout2D"}
?

Wkernel
Xbias
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv2d_3", "trainable": true, "dtype": "float32", "config": {"activity_regularizer": null, "bias_initializer": {"config": {}, "class_name": "Zeros"}, "padding": "valid", "activation": "linear", "trainable": true, "dtype": "float32", "use_bias": true, "filters": 64, "kernel_constraint": null, "kernel_size": [3, 3], "name": "conv2d_3", "dilation_rate": [1, 1], "kernel_initializer": {"config": {"seed": null}, "class_name": "GlorotUniform"}, "strides": [2, 2], "data_format": "channels_last", "bias_regularizer": null, "kernel_regularizer": {"config": {"l2": 0.0, "l1": 0.009999999776482582}, "class_name": "L1L2"}, "bias_constraint": null}, "expects_training_arg": false, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"-1": 32}}, "class_name": "InputSpec"}, "class_name": "Conv2D"}
?
]axis
	^gamma
_beta
`moving_mean
amoving_variance
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "config": {"gamma_initializer": {"config": {}, "class_name": "Ones"}, "gamma_constraint": null, "trainable": true, "dtype": "float32", "beta_initializer": {"config": {}, "class_name": "Zeros"}, "scale": true, "epsilon": 0.001, "center": true, "moving_variance_initializer": {"config": {}, "class_name": "Ones"}, "name": "batch_normalization_3", "momentum": 0.99, "gamma_regularizer": null, "moving_mean_initializer": {"config": {}, "class_name": "Zeros"}, "axis": [3], "beta_constraint": null, "beta_regularizer": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {"3": 64}}, "class_name": "InputSpec"}, "class_name": "BatchNormalization"}
?
fregularization_losses
g	variables
htrainable_variables
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "spatial_dropout2d_3", "trainable": true, "dtype": "float32", "config": {"name": "spatial_dropout2d_3", "rate": 0.5, "noise_shape": null, "trainable": true, "dtype": "float32", "seed": null}, "expects_training_arg": true, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": null, "max_ndim": null, "dtype": null, "ndim": 4, "shape": null, "axes": {}}, "class_name": "InputSpec"}, "class_name": "SpatialDropout2D"}
?
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "reshape", "trainable": true, "dtype": "float32", "config": {"name": "reshape", "target_shape": [4096], "trainable": true, "dtype": "float32"}, "expects_training_arg": false, "batch_input_shape": null, "class_name": "Reshape"}
?

nkernel
obias
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "dtype": "float32", "config": {"units": 256, "bias_initializer": {"config": {}, "class_name": "Zeros"}, "kernel_initializer": {"config": {"seed": null}, "class_name": "GlorotUniform"}, "activation": "linear", "trainable": true, "dtype": "float32", "use_bias": true, "kernel_constraint": null, "name": "dense", "kernel_regularizer": {"config": {"l2": 0.0, "l1": 0.019999999552965164}, "class_name": "L1L2"}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null}, "expects_training_arg": false, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": 2, "max_ndim": null, "dtype": null, "ndim": null, "shape": null, "axes": {"-1": 4096}}, "class_name": "InputSpec"}, "class_name": "Dense"}
?
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "dtype": "float32", "config": {"name": "dropout", "rate": 0.5, "noise_shape": null, "trainable": true, "dtype": "float32", "seed": null}, "expects_training_arg": true, "batch_input_shape": null, "class_name": "Dropout"}
?

xkernel
ybias
zregularization_losses
{	variables
|trainable_variables
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "dtype": "float32", "config": {"units": 128, "bias_initializer": {"config": {}, "class_name": "Zeros"}, "kernel_initializer": {"config": {"seed": null}, "class_name": "GlorotUniform"}, "activation": "linear", "trainable": true, "dtype": "float32", "use_bias": true, "kernel_constraint": null, "name": "dense_1", "kernel_regularizer": {"config": {"l2": 0.0, "l1": 0.019999999552965164}, "class_name": "L1L2"}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null}, "expects_training_arg": false, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": 2, "max_ndim": null, "dtype": null, "ndim": null, "shape": null, "axes": {"-1": 256}}, "class_name": "InputSpec"}, "class_name": "Dense"}
?
~regularization_losses
	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_1", "trainable": true, "dtype": "float32", "config": {"name": "dropout_1", "rate": 0.5, "noise_shape": null, "trainable": true, "dtype": "float32", "seed": null}, "expects_training_arg": true, "batch_input_shape": null, "class_name": "Dropout"}
?
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "dtype": "float32", "config": {"units": 4, "bias_initializer": {"config": {}, "class_name": "Zeros"}, "kernel_initializer": {"config": {"seed": null}, "class_name": "GlorotUniform"}, "activation": "linear", "trainable": true, "dtype": "float32", "use_bias": true, "kernel_constraint": null, "name": "dense_2", "kernel_regularizer": {"config": {"l2": 0.0, "l1": 0.019999999552965164}, "class_name": "L1L2"}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null}, "expects_training_arg": false, "batch_input_shape": null, "input_spec": {"config": {"min_ndim": 2, "max_ndim": null, "dtype": null, "ndim": null, "shape": null, "axes": {"-1": 128}}, "class_name": "InputSpec"}, "class_name": "Dense"}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_1", "trainable": true, "dtype": "float32", "config": {"name": "activation_1", "activation": "softmax", "trainable": true, "dtype": "float32"}, "expects_training_arg": false, "batch_input_shape": null, "class_name": "Activation"}
X
?0
?1
?6
?3
?2
?4
?5"
trackable_list_wrapper
?
0
1
%2
&3
'4
(5
16
27
88
99
:10
;11
D12
E13
K14
L15
M16
N17
W18
X19
^20
_21
`22
a23
n24
o25
x26
y27
?28
?29"
trackable_list_wrapper
?
0
1
%2
&3
14
25
86
97
D8
E9
K10
L11
W12
X13
^14
_15
n16
o17
x18
y19
?20
?21"
trackable_list_wrapper
?
regularization_losses
?non_trainable_variables
trainable_variables
?layers
	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses
?_default_save_signature"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
?non_trainable_variables
trainable_variables
?layers
	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
0:.2my_model/conv2d/kernel
": 2my_model/conv2d/bias
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
 regularization_losses
?non_trainable_variables
"trainable_variables
?layers
!	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0:.2"my_model/batch_normalization/gamma
/:-2!my_model/batch_normalization/beta
8:6 (2(my_model/batch_normalization/moving_mean
<:: (2,my_model/batch_normalization/moving_variance
 "
trackable_list_wrapper
<
%0
&1
'2
(3"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
)regularization_losses
?non_trainable_variables
+trainable_variables
?layers
*	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
-regularization_losses
?non_trainable_variables
/trainable_variables
?layers
.	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
2:02my_model/conv2d_1/kernel
$:"2my_model/conv2d_1/bias
(
?0"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
3regularization_losses
?non_trainable_variables
5trainable_variables
?layers
4	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
2:02$my_model/batch_normalization_1/gamma
1:/2#my_model/batch_normalization_1/beta
::8 (2*my_model/batch_normalization_1/moving_mean
>:< (2.my_model/batch_normalization_1/moving_variance
 "
trackable_list_wrapper
<
80
91
:2
;3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
<regularization_losses
?non_trainable_variables
>trainable_variables
?layers
=	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@regularization_losses
?non_trainable_variables
Btrainable_variables
?layers
A	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
2:0 2my_model/conv2d_2/kernel
$:" 2my_model/conv2d_2/bias
(
?0"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
Fregularization_losses
?non_trainable_variables
Htrainable_variables
?layers
G	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
2:0 2$my_model/batch_normalization_2/gamma
1:/ 2#my_model/batch_normalization_2/beta
::8  (2*my_model/batch_normalization_2/moving_mean
>:<  (2.my_model/batch_normalization_2/moving_variance
 "
trackable_list_wrapper
<
K0
L1
M2
N3"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
Oregularization_losses
?non_trainable_variables
Qtrainable_variables
?layers
P	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Sregularization_losses
?non_trainable_variables
Utrainable_variables
?layers
T	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
2:0 @2my_model/conv2d_3/kernel
$:"@2my_model/conv2d_3/bias
(
?0"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
?
Yregularization_losses
?non_trainable_variables
[trainable_variables
?layers
Z	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
2:0@2$my_model/batch_normalization_3/gamma
1:/@2#my_model/batch_normalization_3/beta
::8@ (2*my_model/batch_normalization_3/moving_mean
>:<@ (2.my_model/batch_normalization_3/moving_variance
 "
trackable_list_wrapper
<
^0
_1
`2
a3"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
?
bregularization_losses
?non_trainable_variables
dtrainable_variables
?layers
c	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
fregularization_losses
?non_trainable_variables
htrainable_variables
?layers
g	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
jregularization_losses
?non_trainable_variables
ltrainable_variables
?layers
k	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
):'
? ?2my_model/dense/kernel
": ?2my_model/dense/bias
(
?0"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
?
pregularization_losses
?non_trainable_variables
rtrainable_variables
?layers
q	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
tregularization_losses
?non_trainable_variables
vtrainable_variables
?layers
u	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
+:)
??2my_model/dense_1/kernel
$:"?2my_model/dense_1/bias
(
?0"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
?
zregularization_losses
?non_trainable_variables
|trainable_variables
?layers
{	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~regularization_losses
?non_trainable_variables
?trainable_variables
?layers
	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
*:(	?2my_model/dense_2/kernel
#:!2my_model/dense_2/bias
(
?0"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?regularization_losses
?non_trainable_variables
?trainable_variables
?layers
?	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?non_trainable_variables
?trainable_variables
?layers
?	variables
?metrics
 ?layer_regularization_losses
?__call__
'?"call_and_return_conditional_losses
+?&call_and_return_all_conditional_losses"
_generic_user_object
X
'0
(1
:2
;3
M4
N5
`6
a7"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
*__inference_my_model_layer_call_fn_4916826
*__inference_my_model_layer_call_fn_4915984
*__inference_my_model_layer_call_fn_4915832
*__inference_my_model_layer_call_fn_4916861?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_my_model_layer_call_and_return_conditional_losses_4916791
E__inference_my_model_layer_call_and_return_conditional_losses_4915681
E__inference_my_model_layer_call_and_return_conditional_losses_4916463
E__inference_my_model_layer_call_and_return_conditional_losses_4915565?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_4913623?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
input_1???????????
?2?
,__inference_activation_layer_call_fn_4916901
,__inference_activation_layer_call_fn_4916891
,__inference_activation_layer_call_fn_4916871
,__inference_activation_layer_call_fn_4916881?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_activation_layer_call_and_return_conditional_losses_4916876
G__inference_activation_layer_call_and_return_conditional_losses_4916896
G__inference_activation_layer_call_and_return_conditional_losses_4916886
G__inference_activation_layer_call_and_return_conditional_losses_4916866?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_layer_call_fn_4913655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
5__inference_batch_normalization_layer_call_fn_4916927
5__inference_batch_normalization_layer_call_fn_4916918
5__inference_batch_normalization_layer_call_fn_4917003
5__inference_batch_normalization_layer_call_fn_4916994?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4917039
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4917061
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4916985
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4916963?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_spatial_dropout2d_layer_call_fn_4917148
3__inference_spatial_dropout2d_layer_call_fn_4917107
3__inference_spatial_dropout2d_layer_call_fn_4917102
3__inference_spatial_dropout2d_layer_call_fn_4917153?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917092
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917143
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917097
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917138?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv2d_1_layer_call_fn_4913917?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
7__inference_batch_normalization_1_layer_call_fn_4917228
7__inference_batch_normalization_1_layer_call_fn_4917237
7__inference_batch_normalization_1_layer_call_fn_4917313
7__inference_batch_normalization_1_layer_call_fn_4917304?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917273
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917197
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917219
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917295?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
5__inference_spatial_dropout2d_1_layer_call_fn_4917400
5__inference_spatial_dropout2d_1_layer_call_fn_4917405
5__inference_spatial_dropout2d_1_layer_call_fn_4917359
5__inference_spatial_dropout2d_1_layer_call_fn_4917354?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917390
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917395
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917344
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917349?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv2d_2_layer_call_fn_4914181?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
7__inference_batch_normalization_2_layer_call_fn_4917565
7__inference_batch_normalization_2_layer_call_fn_4917556
7__inference_batch_normalization_2_layer_call_fn_4917480
7__inference_batch_normalization_2_layer_call_fn_4917489?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917525
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917471
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917449
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917547?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
5__inference_spatial_dropout2d_2_layer_call_fn_4917616
5__inference_spatial_dropout2d_2_layer_call_fn_4917621
5__inference_spatial_dropout2d_2_layer_call_fn_4917575
5__inference_spatial_dropout2d_2_layer_call_fn_4917570?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917611
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917652
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917606
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917657?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv2d_3_layer_call_fn_4914445?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+??????????????????????????? 
?2?
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+??????????????????????????? 
?2?
7__inference_batch_normalization_3_layer_call_fn_4917741
7__inference_batch_normalization_3_layer_call_fn_4917732
7__inference_batch_normalization_3_layer_call_fn_4917817
7__inference_batch_normalization_3_layer_call_fn_4917808?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917701
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917723
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917799
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917777?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
5__inference_spatial_dropout2d_3_layer_call_fn_4917904
5__inference_spatial_dropout2d_3_layer_call_fn_4917858
5__inference_spatial_dropout2d_3_layer_call_fn_4917909
5__inference_spatial_dropout2d_3_layer_call_fn_4917863?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917894
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917853
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917848
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917899?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_reshape_layer_call_fn_4917926?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_reshape_layer_call_and_return_conditional_losses_4917921?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_layer_call_fn_4917959?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_layer_call_and_return_conditional_losses_4917952?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_layer_call_fn_4917964
)__inference_dropout_layer_call_fn_4917969?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_layer_call_and_return_conditional_losses_4917994
D__inference_dropout_layer_call_and_return_conditional_losses_4917989?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_1_layer_call_fn_4918027?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_1_layer_call_and_return_conditional_losses_4918020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_1_layer_call_fn_4918062
+__inference_dropout_1_layer_call_fn_4918057?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_4918052
F__inference_dropout_1_layer_call_and_return_conditional_losses_4918047?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_2_layer_call_fn_4918077?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_2_layer_call_and_return_conditional_losses_4918095?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_1_layer_call_fn_4918100?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_1_layer_call_and_return_conditional_losses_4918105?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_4918118?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_4918133?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_6_4918148?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_4918163?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_4918178?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_4918193?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_4918208?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
4B2
%__inference_signature_wrapper_4916077input_1?
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917894?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? "H?E
>?;
04????????????????????????????????????
? ?
*__inference_my_model_layer_call_fn_4915832| %&'(1289:;DEKLMNWX^_`anoxy??>?;
4?1
+?(
input_1???????????
p
? "???????????
3__inference_spatial_dropout2d_layer_call_fn_4917102?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? ";?84?????????????????????????????????????
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917899?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? "H?E
>?;
04????????????????????????????????????
? <
__inference_loss_fn_0_4918118?

? 
? "? ?
3__inference_spatial_dropout2d_layer_call_fn_4917107?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? ";?84?????????????????????????????????????
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917701?^_`aM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917219r89:;;?8
1?.
(?%
inputs?????????$$
p 
? "-?*
#? 
0?????????$$
? ?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917723?^_`aM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
)__inference_reshape_layer_call_fn_4917926T7?4
-?*
(?%
inputs?????????@
? "??????????? ?
7__inference_batch_normalization_1_layer_call_fn_4917228e89:;;?8
1?.
(?%
inputs?????????$$
p
? " ??????????$$?
3__inference_spatial_dropout2d_layer_call_fn_4917153_;?8
1?.
(?%
inputs?????????JJ
p 
? " ??????????JJ?
3__inference_spatial_dropout2d_layer_call_fn_4917148_;?8
1?.
(?%
inputs?????????JJ
p
? " ??????????JJ?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917197r89:;;?8
1?.
(?%
inputs?????????$$
p
? "-?*
#? 
0?????????$$
? ?
G__inference_activation_layer_call_and_return_conditional_losses_4916866h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
7__inference_batch_normalization_1_layer_call_fn_4917237e89:;;?8
1?.
(?%
inputs?????????$$
p 
? " ??????????$$?
*__inference_conv2d_1_layer_call_fn_4913917?12I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
G__inference_activation_layer_call_and_return_conditional_losses_4916876h7?4
-?*
(?%
inputs?????????JJ
? "-?*
#? 
0?????????JJ
? ?
7__inference_batch_normalization_1_layer_call_fn_4917304?89:;M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
G__inference_activation_layer_call_and_return_conditional_losses_4916886h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917273?89:;M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_3_layer_call_fn_4917732?^_`aM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_1_layer_call_fn_4917313?89:;M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
7__inference_batch_normalization_2_layer_call_fn_4917480?KLMNM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
G__inference_activation_layer_call_and_return_conditional_losses_4916896h7?4
-?*
(?%
inputs?????????$$
? "-?*
#? 
0?????????$$
? ?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4917039?%&'(M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_3_layer_call_fn_4917741?^_`aM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
,__inference_activation_layer_call_fn_4916901[7?4
-?*
(?%
inputs?????????$$
? " ??????????$$?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917777r^_`a;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4917061?%&'(M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
*__inference_my_model_layer_call_fn_4915984| %&'(1289:;DEKLMNWX^_`anoxy??>?;
4?1
+?(
input_1???????????
p 
? "???????????
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_4917295?89:;M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_2_layer_call_fn_4917489?KLMNM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
D__inference_dense_2_layer_call_and_return_conditional_losses_4918095_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ?
7__inference_batch_normalization_3_layer_call_fn_4917808e^_`a;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
E__inference_my_model_layer_call_and_return_conditional_losses_4916463? %&'(1289:;DEKLMNWX^_`anoxy??8?5
.?+
%?"
x???????????
p
? "%?"
?
0?????????
? ?
,__inference_activation_layer_call_fn_4916871[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
7__inference_batch_normalization_2_layer_call_fn_4917556eKLMN;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
7__inference_batch_normalization_3_layer_call_fn_4917817e^_`a;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4917799r^_`a;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
7__inference_batch_normalization_2_layer_call_fn_4917565eKLMN;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
,__inference_activation_layer_call_fn_4916881[7?4
-?*
(?%
inputs?????????JJ
? " ??????????JJ?
,__inference_activation_layer_call_fn_4916891[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
+__inference_dropout_1_layer_call_fn_4918062Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_1_layer_call_fn_4918057Q4?1
*?'
!?
inputs??????????
p
? "????????????
5__inference_batch_normalization_layer_call_fn_4916918e%&'(;?8
1?.
(?%
inputs?????????JJ
p
? " ??????????JJ=
__inference_loss_fn_6_4918148??

? 
? "? ?
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917611l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917606l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
C__inference_conv2d_layer_call_and_return_conditional_losses_4913644?I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
5__inference_batch_normalization_layer_call_fn_4916927e%&'(;?8
1?.
(?%
inputs?????????JJ
p 
? " ??????????JJ?
%__inference_signature_wrapper_4916077? %&'(1289:;DEKLMNWX^_`anoxy??E?B
? 
;?8
6
input_1+?(
input_1???????????"3?0
.
output_1"?
output_1??????????
E__inference_conv2d_3_layer_call_and_return_conditional_losses_4914434?WXI?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????@
? ?
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917652?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? "H?E
>?;
04????????????????????????????????????
? ?
I__inference_activation_1_layer_call_and_return_conditional_losses_4918105X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
P__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_4917657?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_conv2d_layer_call_fn_4913655?I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
B__inference_dense_layer_call_and_return_conditional_losses_4917952^no0?-
&?#
!?
inputs?????????? 
? "&?#
?
0??????????
? ?
*__inference_my_model_layer_call_fn_4916826v %&'(1289:;DEKLMNWX^_`anoxy??8?5
.?+
%?"
x???????????
p
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_4918052^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_4918047^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
.__inference_activation_1_layer_call_fn_4918100K/?,
%?"
 ?
inputs?????????
? "???????????
5__inference_batch_normalization_layer_call_fn_4916994?%&'(M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+???????????????????????????<
__inference_loss_fn_5_4918208x?

? 
? "? ?
D__inference_dropout_layer_call_and_return_conditional_losses_4917994^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_4917989^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
*__inference_my_model_layer_call_fn_4916861v %&'(1289:;DEKLMNWX^_`anoxy??8?5
.?+
%?"
x???????????
p 
? "???????????
E__inference_my_model_layer_call_and_return_conditional_losses_4916791? %&'(1289:;DEKLMNWX^_`anoxy??8?5
.?+
%?"
x???????????
p 
? "%?"
?
0?????????
? |
'__inference_dense_layer_call_fn_4917959Qno0?-
&?#
!?
inputs?????????? 
? "????????????
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917449?KLMNM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? 
)__inference_dense_2_layer_call_fn_4918077R??0?-
&?#
!?
inputs??????????
? "???????????
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4916963r%&'(;?8
1?.
(?%
inputs?????????JJ
p
? "-?*
#? 
0?????????JJ
? ?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917471?KLMNM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917525rKLMN;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
P__inference_batch_normalization_layer_call_and_return_conditional_losses_4916985r%&'(;?8
1?.
(?%
inputs?????????JJ
p 
? "-?*
#? 
0?????????JJ
? ?
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_4917547rKLMN;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? <
__inference_loss_fn_4_4918193n?

? 
? "? ~
)__inference_dropout_layer_call_fn_4917964Q4?1
*?'
!?
inputs??????????
p
? "???????????~
)__inference_dropout_layer_call_fn_4917969Q4?1
*?'
!?
inputs??????????
p 
? "???????????~
)__inference_dense_1_layer_call_fn_4918027Qxy0?-
&?#
!?
inputs??????????
? "????????????
*__inference_conv2d_2_layer_call_fn_4914181?DEI?F
??<
:?7
inputs+???????????????????????????
? "2?/+??????????????????????????? <
__inference_loss_fn_3_4918163W?

? 
? "? ?
*__inference_conv2d_3_layer_call_fn_4914445?WXI?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+???????????????????????????@?
"__inference__wrapped_model_4913623? %&'(1289:;DEKLMNWX^_`anoxy??:?7
0?-
+?(
input_1???????????
? "3?0
.
output_1"?
output_1??????????
D__inference_dense_1_layer_call_and_return_conditional_losses_4918020^xy0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
D__inference_reshape_layer_call_and_return_conditional_losses_4917921a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0?????????? 
? ?
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917092?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917138l;?8
1?.
(?%
inputs?????????JJ
p
? "-?*
#? 
0?????????JJ
? ?
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917143l;?8
1?.
(?%
inputs?????????JJ
p 
? "-?*
#? 
0?????????JJ
? ?
E__inference_conv2d_1_layer_call_and_return_conditional_losses_4913911?12I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
N__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_4917097?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? "H?E
>?;
04????????????????????????????????????
? ?
5__inference_spatial_dropout2d_1_layer_call_fn_4917400?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? ";?84?????????????????????????????????????
E__inference_my_model_layer_call_and_return_conditional_losses_4915565? %&'(1289:;DEKLMNWX^_`anoxy??>?;
4?1
+?(
input_1???????????
p
? "%?"
?
0?????????
? ?
5__inference_spatial_dropout2d_1_layer_call_fn_4917354_;?8
1?.
(?%
inputs?????????$$
p
? " ??????????$$?
5__inference_spatial_dropout2d_1_layer_call_fn_4917405?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? ";?84?????????????????????????????????????
5__inference_spatial_dropout2d_2_layer_call_fn_4917570_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
5__inference_spatial_dropout2d_2_layer_call_fn_4917616?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? ";?84?????????????????????????????????????
5__inference_spatial_dropout2d_2_layer_call_fn_4917621?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? ";?84?????????????????????????????????????
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917344l;?8
1?.
(?%
inputs?????????$$
p
? "-?*
#? 
0?????????$$
? ?
5__inference_spatial_dropout2d_1_layer_call_fn_4917359_;?8
1?.
(?%
inputs?????????$$
p 
? " ??????????$$?
5__inference_spatial_dropout2d_2_layer_call_fn_4917575_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917349l;?8
1?.
(?%
inputs?????????$$
p 
? "-?*
#? 
0?????????$$
? <
__inference_loss_fn_2_4918178D?

? 
? "? ?
E__inference_conv2d_2_layer_call_and_return_conditional_losses_4914170?DEI?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+??????????????????????????? 
? ?
5__inference_spatial_dropout2d_3_layer_call_fn_4917904?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? ";?84?????????????????????????????????????
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917853l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
P__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_4917848l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? <
__inference_loss_fn_1_49181331?

? 
? "? ?
5__inference_batch_normalization_layer_call_fn_4917003?%&'(M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
5__inference_spatial_dropout2d_3_layer_call_fn_4917858_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
5__inference_spatial_dropout2d_3_layer_call_fn_4917863_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
5__inference_spatial_dropout2d_3_layer_call_fn_4917909?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? ";?84?????????????????????????????????????
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917390?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? "H?E
>?;
04????????????????????????????????????
? ?
E__inference_my_model_layer_call_and_return_conditional_losses_4915681? %&'(1289:;DEKLMNWX^_`anoxy??>?;
4?1
+?(
input_1???????????
p 
? "%?"
?
0?????????
? ?
P__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_4917395?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? "H?E
>?;
04????????????????????????????????????
? 