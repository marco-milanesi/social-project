§
À
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.42v2.4.3-115-g64918868e218ýû
±
*dueling_double_deep_q_network/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*;
shared_name,*dueling_double_deep_q_network/dense/kernel
ª
>dueling_double_deep_q_network/dense/kernel/Read/ReadVariableOpReadVariableOp*dueling_double_deep_q_network/dense/kernel*
_output_shapes
:	*
dtype0
©
(dueling_double_deep_q_network/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(dueling_double_deep_q_network/dense/bias
¢
<dueling_double_deep_q_network/dense/bias/Read/ReadVariableOpReadVariableOp(dueling_double_deep_q_network/dense/bias*
_output_shapes	
:*
dtype0
¶
,dueling_double_deep_q_network/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*=
shared_name.,dueling_double_deep_q_network/dense_1/kernel
¯
@dueling_double_deep_q_network/dense_1/kernel/Read/ReadVariableOpReadVariableOp,dueling_double_deep_q_network/dense_1/kernel* 
_output_shapes
:
*
dtype0
­
*dueling_double_deep_q_network/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*dueling_double_deep_q_network/dense_1/bias
¦
>dueling_double_deep_q_network/dense_1/bias/Read/ReadVariableOpReadVariableOp*dueling_double_deep_q_network/dense_1/bias*
_output_shapes	
:*
dtype0
µ
,dueling_double_deep_q_network/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*=
shared_name.,dueling_double_deep_q_network/dense_2/kernel
®
@dueling_double_deep_q_network/dense_2/kernel/Read/ReadVariableOpReadVariableOp,dueling_double_deep_q_network/dense_2/kernel*
_output_shapes
:	*
dtype0
¬
*dueling_double_deep_q_network/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*dueling_double_deep_q_network/dense_2/bias
¥
>dueling_double_deep_q_network/dense_2/bias/Read/ReadVariableOpReadVariableOp*dueling_double_deep_q_network/dense_2/bias*
_output_shapes
:*
dtype0
µ
,dueling_double_deep_q_network/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*=
shared_name.,dueling_double_deep_q_network/dense_3/kernel
®
@dueling_double_deep_q_network/dense_3/kernel/Read/ReadVariableOpReadVariableOp,dueling_double_deep_q_network/dense_3/kernel*
_output_shapes
:	*
dtype0
¬
*dueling_double_deep_q_network/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*dueling_double_deep_q_network/dense_3/bias
¥
>dueling_double_deep_q_network/dense_3/bias/Read/ReadVariableOpReadVariableOp*dueling_double_deep_q_network/dense_3/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
¿
1Adam/dueling_double_deep_q_network/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*B
shared_name31Adam/dueling_double_deep_q_network/dense/kernel/m
¸
EAdam/dueling_double_deep_q_network/dense/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense/kernel/m*
_output_shapes
:	*
dtype0
·
/Adam/dueling_double_deep_q_network/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adam/dueling_double_deep_q_network/dense/bias/m
°
CAdam/dueling_double_deep_q_network/dense/bias/m/Read/ReadVariableOpReadVariableOp/Adam/dueling_double_deep_q_network/dense/bias/m*
_output_shapes	
:*
dtype0
Ä
3Adam/dueling_double_deep_q_network/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*D
shared_name53Adam/dueling_double_deep_q_network/dense_1/kernel/m
½
GAdam/dueling_double_deep_q_network/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp3Adam/dueling_double_deep_q_network/dense_1/kernel/m* 
_output_shapes
:
*
dtype0
»
1Adam/dueling_double_deep_q_network/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/dueling_double_deep_q_network/dense_1/bias/m
´
EAdam/dueling_double_deep_q_network/dense_1/bias/m/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense_1/bias/m*
_output_shapes	
:*
dtype0
Ã
3Adam/dueling_double_deep_q_network/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*D
shared_name53Adam/dueling_double_deep_q_network/dense_2/kernel/m
¼
GAdam/dueling_double_deep_q_network/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp3Adam/dueling_double_deep_q_network/dense_2/kernel/m*
_output_shapes
:	*
dtype0
º
1Adam/dueling_double_deep_q_network/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/dueling_double_deep_q_network/dense_2/bias/m
³
EAdam/dueling_double_deep_q_network/dense_2/bias/m/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense_2/bias/m*
_output_shapes
:*
dtype0
Ã
3Adam/dueling_double_deep_q_network/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*D
shared_name53Adam/dueling_double_deep_q_network/dense_3/kernel/m
¼
GAdam/dueling_double_deep_q_network/dense_3/kernel/m/Read/ReadVariableOpReadVariableOp3Adam/dueling_double_deep_q_network/dense_3/kernel/m*
_output_shapes
:	*
dtype0
º
1Adam/dueling_double_deep_q_network/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/dueling_double_deep_q_network/dense_3/bias/m
³
EAdam/dueling_double_deep_q_network/dense_3/bias/m/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense_3/bias/m*
_output_shapes
:*
dtype0
¿
1Adam/dueling_double_deep_q_network/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*B
shared_name31Adam/dueling_double_deep_q_network/dense/kernel/v
¸
EAdam/dueling_double_deep_q_network/dense/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense/kernel/v*
_output_shapes
:	*
dtype0
·
/Adam/dueling_double_deep_q_network/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adam/dueling_double_deep_q_network/dense/bias/v
°
CAdam/dueling_double_deep_q_network/dense/bias/v/Read/ReadVariableOpReadVariableOp/Adam/dueling_double_deep_q_network/dense/bias/v*
_output_shapes	
:*
dtype0
Ä
3Adam/dueling_double_deep_q_network/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*D
shared_name53Adam/dueling_double_deep_q_network/dense_1/kernel/v
½
GAdam/dueling_double_deep_q_network/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp3Adam/dueling_double_deep_q_network/dense_1/kernel/v* 
_output_shapes
:
*
dtype0
»
1Adam/dueling_double_deep_q_network/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/dueling_double_deep_q_network/dense_1/bias/v
´
EAdam/dueling_double_deep_q_network/dense_1/bias/v/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense_1/bias/v*
_output_shapes	
:*
dtype0
Ã
3Adam/dueling_double_deep_q_network/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*D
shared_name53Adam/dueling_double_deep_q_network/dense_2/kernel/v
¼
GAdam/dueling_double_deep_q_network/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp3Adam/dueling_double_deep_q_network/dense_2/kernel/v*
_output_shapes
:	*
dtype0
º
1Adam/dueling_double_deep_q_network/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/dueling_double_deep_q_network/dense_2/bias/v
³
EAdam/dueling_double_deep_q_network/dense_2/bias/v/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense_2/bias/v*
_output_shapes
:*
dtype0
Ã
3Adam/dueling_double_deep_q_network/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*D
shared_name53Adam/dueling_double_deep_q_network/dense_3/kernel/v
¼
GAdam/dueling_double_deep_q_network/dense_3/kernel/v/Read/ReadVariableOpReadVariableOp3Adam/dueling_double_deep_q_network/dense_3/kernel/v*
_output_shapes
:	*
dtype0
º
1Adam/dueling_double_deep_q_network/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/dueling_double_deep_q_network/dense_3/bias/v
³
EAdam/dueling_double_deep_q_network/dense_3/bias/v/Read/ReadVariableOpReadVariableOp1Adam/dueling_double_deep_q_network/dense_3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
º1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*õ0
valueë0Bè0 Bá0


dense1

dense2
V
A
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
Ð
#iter

$beta_1

%beta_2
	&decay
'learning_ratemPmQmRmSmTmUmVmWvXvYvZv[v\v]v^v_
8
0
1
2
3
4
5
6
7
 
8
0
1
2
3
4
5
6
7
­
trainable_variables
(metrics

)layers
*layer_metrics
+non_trainable_variables
regularization_losses
,layer_regularization_losses
	variables
 
hf
VARIABLE_VALUE*dueling_double_deep_q_network/dense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE(dueling_double_deep_q_network/dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
-metrics

.layers
/layer_metrics
	variables
0non_trainable_variables
regularization_losses
1layer_regularization_losses
trainable_variables
jh
VARIABLE_VALUE,dueling_double_deep_q_network/dense_1/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*dueling_double_deep_q_network/dense_1/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
2metrics

3layers
4layer_metrics
	variables
5non_trainable_variables
regularization_losses
6layer_regularization_losses
trainable_variables
ec
VARIABLE_VALUE,dueling_double_deep_q_network/dense_2/kernel#V/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE*dueling_double_deep_q_network/dense_2/bias!V/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
7metrics

8layers
9layer_metrics
	variables
:non_trainable_variables
regularization_losses
;layer_regularization_losses
trainable_variables
ec
VARIABLE_VALUE,dueling_double_deep_q_network/dense_3/kernel#A/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE*dueling_double_deep_q_network/dense_3/bias!A/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
<metrics

=layers
>layer_metrics
	variables
?non_trainable_variables
 regularization_losses
@layer_regularization_losses
!trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
C2

0
1
2
3
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
4
	Dtotal
	Ecount
F	variables
G	keras_api
4
	Htotal
	Icount
J	variables
K	keras_api
4
	Ltotal
	Mcount
N	variables
O	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

F	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

J	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

N	variables

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense/kernel/mDdense1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE/Adam/dueling_double_deep_q_network/dense/bias/mBdense1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/dueling_double_deep_q_network/dense_1/kernel/mDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense_1/bias/mBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/dueling_double_deep_q_network/dense_2/kernel/m?V/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense_2/bias/m=V/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/dueling_double_deep_q_network/dense_3/kernel/m?A/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense_3/bias/m=A/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense/kernel/vDdense1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE/Adam/dueling_double_deep_q_network/dense/bias/vBdense1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/dueling_double_deep_q_network/dense_1/kernel/vDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense_1/bias/vBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/dueling_double_deep_q_network/dense_2/kernel/v?V/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense_2/bias/v=V/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/dueling_double_deep_q_network/dense_3/kernel/v?A/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/dueling_double_deep_q_network/dense_3/bias/v=A/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
½
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1*dueling_double_deep_q_network/dense/kernel(dueling_double_deep_q_network/dense/bias,dueling_double_deep_q_network/dense_1/kernel*dueling_double_deep_q_network/dense_1/bias,dueling_double_deep_q_network/dense_2/kernel*dueling_double_deep_q_network/dense_2/bias,dueling_double_deep_q_network/dense_3/kernel*dueling_double_deep_q_network/dense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_signature_wrapper_194486664
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename>dueling_double_deep_q_network/dense/kernel/Read/ReadVariableOp<dueling_double_deep_q_network/dense/bias/Read/ReadVariableOp@dueling_double_deep_q_network/dense_1/kernel/Read/ReadVariableOp>dueling_double_deep_q_network/dense_1/bias/Read/ReadVariableOp@dueling_double_deep_q_network/dense_2/kernel/Read/ReadVariableOp>dueling_double_deep_q_network/dense_2/bias/Read/ReadVariableOp@dueling_double_deep_q_network/dense_3/kernel/Read/ReadVariableOp>dueling_double_deep_q_network/dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense/kernel/m/Read/ReadVariableOpCAdam/dueling_double_deep_q_network/dense/bias/m/Read/ReadVariableOpGAdam/dueling_double_deep_q_network/dense_1/kernel/m/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense_1/bias/m/Read/ReadVariableOpGAdam/dueling_double_deep_q_network/dense_2/kernel/m/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense_2/bias/m/Read/ReadVariableOpGAdam/dueling_double_deep_q_network/dense_3/kernel/m/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense_3/bias/m/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense/kernel/v/Read/ReadVariableOpCAdam/dueling_double_deep_q_network/dense/bias/v/Read/ReadVariableOpGAdam/dueling_double_deep_q_network/dense_1/kernel/v/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense_1/bias/v/Read/ReadVariableOpGAdam/dueling_double_deep_q_network/dense_2/kernel/v/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense_2/bias/v/Read/ReadVariableOpGAdam/dueling_double_deep_q_network/dense_3/kernel/v/Read/ReadVariableOpEAdam/dueling_double_deep_q_network/dense_3/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_save_194486871
Ï
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*dueling_double_deep_q_network/dense/kernel(dueling_double_deep_q_network/dense/bias,dueling_double_deep_q_network/dense_1/kernel*dueling_double_deep_q_network/dense_1/bias,dueling_double_deep_q_network/dense_2/kernel*dueling_double_deep_q_network/dense_2/bias,dueling_double_deep_q_network/dense_3/kernel*dueling_double_deep_q_network/dense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_21Adam/dueling_double_deep_q_network/dense/kernel/m/Adam/dueling_double_deep_q_network/dense/bias/m3Adam/dueling_double_deep_q_network/dense_1/kernel/m1Adam/dueling_double_deep_q_network/dense_1/bias/m3Adam/dueling_double_deep_q_network/dense_2/kernel/m1Adam/dueling_double_deep_q_network/dense_2/bias/m3Adam/dueling_double_deep_q_network/dense_3/kernel/m1Adam/dueling_double_deep_q_network/dense_3/bias/m1Adam/dueling_double_deep_q_network/dense/kernel/v/Adam/dueling_double_deep_q_network/dense/bias/v3Adam/dueling_double_deep_q_network/dense_1/kernel/v1Adam/dueling_double_deep_q_network/dense_1/bias/v3Adam/dueling_double_deep_q_network/dense_2/kernel/v1Adam/dueling_double_deep_q_network/dense_2/bias/v3Adam/dueling_double_deep_q_network/dense_3/kernel/v1Adam/dueling_double_deep_q_network/dense_3/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference__traced_restore_194486986øÍ
	
ß
F__inference_dense_3_layer_call_and_return_conditional_losses_194486733

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù	
ß
F__inference_dense_1_layer_call_and_return_conditional_losses_194486695

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
R
¿
"__inference__traced_save_194486871
file_prefixI
Esavev2_dueling_double_deep_q_network_dense_kernel_read_readvariableopG
Csavev2_dueling_double_deep_q_network_dense_bias_read_readvariableopK
Gsavev2_dueling_double_deep_q_network_dense_1_kernel_read_readvariableopI
Esavev2_dueling_double_deep_q_network_dense_1_bias_read_readvariableopK
Gsavev2_dueling_double_deep_q_network_dense_2_kernel_read_readvariableopI
Esavev2_dueling_double_deep_q_network_dense_2_bias_read_readvariableopK
Gsavev2_dueling_double_deep_q_network_dense_3_kernel_read_readvariableopI
Esavev2_dueling_double_deep_q_network_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_kernel_m_read_readvariableopN
Jsavev2_adam_dueling_double_deep_q_network_dense_bias_m_read_readvariableopR
Nsavev2_adam_dueling_double_deep_q_network_dense_1_kernel_m_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_1_bias_m_read_readvariableopR
Nsavev2_adam_dueling_double_deep_q_network_dense_2_kernel_m_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_2_bias_m_read_readvariableopR
Nsavev2_adam_dueling_double_deep_q_network_dense_3_kernel_m_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_3_bias_m_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_kernel_v_read_readvariableopN
Jsavev2_adam_dueling_double_deep_q_network_dense_bias_v_read_readvariableopR
Nsavev2_adam_dueling_double_deep_q_network_dense_1_kernel_v_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_1_bias_v_read_readvariableopR
Nsavev2_adam_dueling_double_deep_q_network_dense_2_kernel_v_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_2_bias_v_read_readvariableopR
Nsavev2_adam_dueling_double_deep_q_network_dense_3_kernel_v_read_readvariableopP
Lsavev2_adam_dueling_double_deep_q_network_dense_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¦
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*¸
value®B«$B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB#V/kernel/.ATTRIBUTES/VARIABLE_VALUEB!V/bias/.ATTRIBUTES/VARIABLE_VALUEB#A/kernel/.ATTRIBUTES/VARIABLE_VALUEB!A/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÐ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices¡
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Esavev2_dueling_double_deep_q_network_dense_kernel_read_readvariableopCsavev2_dueling_double_deep_q_network_dense_bias_read_readvariableopGsavev2_dueling_double_deep_q_network_dense_1_kernel_read_readvariableopEsavev2_dueling_double_deep_q_network_dense_1_bias_read_readvariableopGsavev2_dueling_double_deep_q_network_dense_2_kernel_read_readvariableopEsavev2_dueling_double_deep_q_network_dense_2_bias_read_readvariableopGsavev2_dueling_double_deep_q_network_dense_3_kernel_read_readvariableopEsavev2_dueling_double_deep_q_network_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_kernel_m_read_readvariableopJsavev2_adam_dueling_double_deep_q_network_dense_bias_m_read_readvariableopNsavev2_adam_dueling_double_deep_q_network_dense_1_kernel_m_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_1_bias_m_read_readvariableopNsavev2_adam_dueling_double_deep_q_network_dense_2_kernel_m_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_2_bias_m_read_readvariableopNsavev2_adam_dueling_double_deep_q_network_dense_3_kernel_m_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_3_bias_m_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_kernel_v_read_readvariableopJsavev2_adam_dueling_double_deep_q_network_dense_bias_v_read_readvariableopNsavev2_adam_dueling_double_deep_q_network_dense_1_kernel_v_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_1_bias_v_read_readvariableopNsavev2_adam_dueling_double_deep_q_network_dense_2_kernel_v_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_2_bias_v_read_readvariableopNsavev2_adam_dueling_double_deep_q_network_dense_3_kernel_v_read_readvariableopLsavev2_adam_dueling_double_deep_q_network_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapesò
ï: :	::
::	::	:: : : : : : : : : : : :	::
::	::	::	::
::	::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::% !

_output_shapes
:	: !

_output_shapes
::%"!

_output_shapes
:	: #

_output_shapes
::$

_output_shapes
: 
ô	
Ý
D__inference_dense_layer_call_and_return_conditional_losses_194486506

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

%__inference__traced_restore_194486986
file_prefix?
;assignvariableop_dueling_double_deep_q_network_dense_kernel?
;assignvariableop_1_dueling_double_deep_q_network_dense_biasC
?assignvariableop_2_dueling_double_deep_q_network_dense_1_kernelA
=assignvariableop_3_dueling_double_deep_q_network_dense_1_biasC
?assignvariableop_4_dueling_double_deep_q_network_dense_2_kernelA
=assignvariableop_5_dueling_double_deep_q_network_dense_2_biasC
?assignvariableop_6_dueling_double_deep_q_network_dense_3_kernelA
=assignvariableop_7_dueling_double_deep_q_network_dense_3_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1
assignvariableop_17_total_2
assignvariableop_18_count_2I
Eassignvariableop_19_adam_dueling_double_deep_q_network_dense_kernel_mG
Cassignvariableop_20_adam_dueling_double_deep_q_network_dense_bias_mK
Gassignvariableop_21_adam_dueling_double_deep_q_network_dense_1_kernel_mI
Eassignvariableop_22_adam_dueling_double_deep_q_network_dense_1_bias_mK
Gassignvariableop_23_adam_dueling_double_deep_q_network_dense_2_kernel_mI
Eassignvariableop_24_adam_dueling_double_deep_q_network_dense_2_bias_mK
Gassignvariableop_25_adam_dueling_double_deep_q_network_dense_3_kernel_mI
Eassignvariableop_26_adam_dueling_double_deep_q_network_dense_3_bias_mI
Eassignvariableop_27_adam_dueling_double_deep_q_network_dense_kernel_vG
Cassignvariableop_28_adam_dueling_double_deep_q_network_dense_bias_vK
Gassignvariableop_29_adam_dueling_double_deep_q_network_dense_1_kernel_vI
Eassignvariableop_30_adam_dueling_double_deep_q_network_dense_1_bias_vK
Gassignvariableop_31_adam_dueling_double_deep_q_network_dense_2_kernel_vI
Eassignvariableop_32_adam_dueling_double_deep_q_network_dense_2_bias_vK
Gassignvariableop_33_adam_dueling_double_deep_q_network_dense_3_kernel_vI
Eassignvariableop_34_adam_dueling_double_deep_q_network_dense_3_bias_v
identity_36¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¬
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*¸
value®B«$B(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB#V/kernel/.ATTRIBUTES/VARIABLE_VALUEB!V/bias/.ATTRIBUTES/VARIABLE_VALUEB#A/kernel/.ATTRIBUTES/VARIABLE_VALUEB!A/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDdense1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDdense2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBdense2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?V/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=V/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?A/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB=A/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesâ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityº
AssignVariableOpAssignVariableOp;assignvariableop_dueling_double_deep_q_network_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1À
AssignVariableOp_1AssignVariableOp;assignvariableop_1_dueling_double_deep_q_network_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ä
AssignVariableOp_2AssignVariableOp?assignvariableop_2_dueling_double_deep_q_network_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Â
AssignVariableOp_3AssignVariableOp=assignvariableop_3_dueling_double_deep_q_network_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ä
AssignVariableOp_4AssignVariableOp?assignvariableop_4_dueling_double_deep_q_network_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Â
AssignVariableOp_5AssignVariableOp=assignvariableop_5_dueling_double_deep_q_network_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ä
AssignVariableOp_6AssignVariableOp?assignvariableop_6_dueling_double_deep_q_network_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Â
AssignVariableOp_7AssignVariableOp=assignvariableop_7_dueling_double_deep_q_network_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8¡
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¦
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12®
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¡
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Í
AssignVariableOp_19AssignVariableOpEassignvariableop_19_adam_dueling_double_deep_q_network_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ë
AssignVariableOp_20AssignVariableOpCassignvariableop_20_adam_dueling_double_deep_q_network_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ï
AssignVariableOp_21AssignVariableOpGassignvariableop_21_adam_dueling_double_deep_q_network_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Í
AssignVariableOp_22AssignVariableOpEassignvariableop_22_adam_dueling_double_deep_q_network_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ï
AssignVariableOp_23AssignVariableOpGassignvariableop_23_adam_dueling_double_deep_q_network_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Í
AssignVariableOp_24AssignVariableOpEassignvariableop_24_adam_dueling_double_deep_q_network_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ï
AssignVariableOp_25AssignVariableOpGassignvariableop_25_adam_dueling_double_deep_q_network_dense_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Í
AssignVariableOp_26AssignVariableOpEassignvariableop_26_adam_dueling_double_deep_q_network_dense_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Í
AssignVariableOp_27AssignVariableOpEassignvariableop_27_adam_dueling_double_deep_q_network_dense_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ë
AssignVariableOp_28AssignVariableOpCassignvariableop_28_adam_dueling_double_deep_q_network_dense_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Ï
AssignVariableOp_29AssignVariableOpGassignvariableop_29_adam_dueling_double_deep_q_network_dense_1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Í
AssignVariableOp_30AssignVariableOpEassignvariableop_30_adam_dueling_double_deep_q_network_dense_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Ï
AssignVariableOp_31AssignVariableOpGassignvariableop_31_adam_dueling_double_deep_q_network_dense_2_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Í
AssignVariableOp_32AssignVariableOpEassignvariableop_32_adam_dueling_double_deep_q_network_dense_2_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ï
AssignVariableOp_33AssignVariableOpGassignvariableop_33_adam_dueling_double_deep_q_network_dense_3_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Í
AssignVariableOp_34AssignVariableOpEassignvariableop_34_adam_dueling_double_deep_q_network_dense_3_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpà
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35Ó
Identity_36IdentityIdentity_35:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_36"#
identity_36Identity_36:output:0*£
_input_shapes
: :::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ô	
Ý
D__inference_dense_layer_call_and_return_conditional_losses_194486675

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

+__inference_dense_2_layer_call_fn_194486723

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_1944865592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù	
ß
F__inference_dense_1_layer_call_and_return_conditional_losses_194486533

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å

+__inference_dense_1_layer_call_fn_194486704

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_1944865332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ß
F__inference_dense_2_layer_call_and_return_conditional_losses_194486559

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
H
	
$__inference__wrapped_model_194486491
input_1F
Bdueling_double_deep_q_network_dense_matmul_readvariableop_resourceG
Cdueling_double_deep_q_network_dense_biasadd_readvariableop_resourceH
Ddueling_double_deep_q_network_dense_1_matmul_readvariableop_resourceI
Edueling_double_deep_q_network_dense_1_biasadd_readvariableop_resourceH
Ddueling_double_deep_q_network_dense_2_matmul_readvariableop_resourceI
Edueling_double_deep_q_network_dense_2_biasadd_readvariableop_resourceH
Ddueling_double_deep_q_network_dense_3_matmul_readvariableop_resourceI
Edueling_double_deep_q_network_dense_3_biasadd_readvariableop_resource
identity

identity_1¢:dueling_double_deep_q_network/dense/BiasAdd/ReadVariableOp¢9dueling_double_deep_q_network/dense/MatMul/ReadVariableOp¢<dueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOp¢;dueling_double_deep_q_network/dense_1/MatMul/ReadVariableOp¢<dueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOp¢;dueling_double_deep_q_network/dense_2/MatMul/ReadVariableOp¢<dueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOp¢;dueling_double_deep_q_network/dense_3/MatMul/ReadVariableOpú
9dueling_double_deep_q_network/dense/MatMul/ReadVariableOpReadVariableOpBdueling_double_deep_q_network_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02;
9dueling_double_deep_q_network/dense/MatMul/ReadVariableOpá
*dueling_double_deep_q_network/dense/MatMulMatMulinput_1Adueling_double_deep_q_network/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*dueling_double_deep_q_network/dense/MatMulù
:dueling_double_deep_q_network/dense/BiasAdd/ReadVariableOpReadVariableOpCdueling_double_deep_q_network_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02<
:dueling_double_deep_q_network/dense/BiasAdd/ReadVariableOp
+dueling_double_deep_q_network/dense/BiasAddBiasAdd4dueling_double_deep_q_network/dense/MatMul:product:0Bdueling_double_deep_q_network/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+dueling_double_deep_q_network/dense/BiasAddÅ
(dueling_double_deep_q_network/dense/ReluRelu4dueling_double_deep_q_network/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(dueling_double_deep_q_network/dense/Relu
;dueling_double_deep_q_network/dense_1/MatMul/ReadVariableOpReadVariableOpDdueling_double_deep_q_network_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02=
;dueling_double_deep_q_network/dense_1/MatMul/ReadVariableOp
,dueling_double_deep_q_network/dense_1/MatMulMatMul6dueling_double_deep_q_network/dense/Relu:activations:0Cdueling_double_deep_q_network/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,dueling_double_deep_q_network/dense_1/MatMulÿ
<dueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOpReadVariableOpEdueling_double_deep_q_network_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02>
<dueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOp
-dueling_double_deep_q_network/dense_1/BiasAddBiasAdd6dueling_double_deep_q_network/dense_1/MatMul:product:0Ddueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-dueling_double_deep_q_network/dense_1/BiasAddË
*dueling_double_deep_q_network/dense_1/ReluRelu6dueling_double_deep_q_network/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*dueling_double_deep_q_network/dense_1/Relu
;dueling_double_deep_q_network/dense_2/MatMul/ReadVariableOpReadVariableOpDdueling_double_deep_q_network_dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02=
;dueling_double_deep_q_network/dense_2/MatMul/ReadVariableOp
,dueling_double_deep_q_network/dense_2/MatMulMatMul8dueling_double_deep_q_network/dense_1/Relu:activations:0Cdueling_double_deep_q_network/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,dueling_double_deep_q_network/dense_2/MatMulþ
<dueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOpReadVariableOpEdueling_double_deep_q_network_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02>
<dueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOp
-dueling_double_deep_q_network/dense_2/BiasAddBiasAdd6dueling_double_deep_q_network/dense_2/MatMul:product:0Ddueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-dueling_double_deep_q_network/dense_2/BiasAdd
;dueling_double_deep_q_network/dense_3/MatMul/ReadVariableOpReadVariableOpDdueling_double_deep_q_network_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02=
;dueling_double_deep_q_network/dense_3/MatMul/ReadVariableOp
,dueling_double_deep_q_network/dense_3/MatMulMatMul8dueling_double_deep_q_network/dense_1/Relu:activations:0Cdueling_double_deep_q_network/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,dueling_double_deep_q_network/dense_3/MatMulþ
<dueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOpReadVariableOpEdueling_double_deep_q_network_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02>
<dueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOp
-dueling_double_deep_q_network/dense_3/BiasAddBiasAdd6dueling_double_deep_q_network/dense_3/MatMul:product:0Ddueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-dueling_double_deep_q_network/dense_3/BiasAdd®
4dueling_double_deep_q_network/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :26
4dueling_double_deep_q_network/Mean/reduction_indices
"dueling_double_deep_q_network/MeanMean6dueling_double_deep_q_network/dense_3/BiasAdd:output:0=dueling_double_deep_q_network/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2$
"dueling_double_deep_q_network/Meanä
!dueling_double_deep_q_network/subSub6dueling_double_deep_q_network/dense_3/BiasAdd:output:0+dueling_double_deep_q_network/Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!dueling_double_deep_q_network/subà
!dueling_double_deep_q_network/addAddV26dueling_double_deep_q_network/dense_2/BiasAdd:output:0%dueling_double_deep_q_network/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!dueling_double_deep_q_network/addé
IdentityIdentity%dueling_double_deep_q_network/add:z:0;^dueling_double_deep_q_network/dense/BiasAdd/ReadVariableOp:^dueling_double_deep_q_network/dense/MatMul/ReadVariableOp=^dueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOp<^dueling_double_deep_q_network/dense_1/MatMul/ReadVariableOp=^dueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOp<^dueling_double_deep_q_network/dense_2/MatMul/ReadVariableOp=^dueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOp<^dueling_double_deep_q_network/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityþ

Identity_1Identity6dueling_double_deep_q_network/dense_3/BiasAdd:output:0;^dueling_double_deep_q_network/dense/BiasAdd/ReadVariableOp:^dueling_double_deep_q_network/dense/MatMul/ReadVariableOp=^dueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOp<^dueling_double_deep_q_network/dense_1/MatMul/ReadVariableOp=^dueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOp<^dueling_double_deep_q_network/dense_2/MatMul/ReadVariableOp=^dueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOp<^dueling_double_deep_q_network/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ::::::::2x
:dueling_double_deep_q_network/dense/BiasAdd/ReadVariableOp:dueling_double_deep_q_network/dense/BiasAdd/ReadVariableOp2v
9dueling_double_deep_q_network/dense/MatMul/ReadVariableOp9dueling_double_deep_q_network/dense/MatMul/ReadVariableOp2|
<dueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOp<dueling_double_deep_q_network/dense_1/BiasAdd/ReadVariableOp2z
;dueling_double_deep_q_network/dense_1/MatMul/ReadVariableOp;dueling_double_deep_q_network/dense_1/MatMul/ReadVariableOp2|
<dueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOp<dueling_double_deep_q_network/dense_2/BiasAdd/ReadVariableOp2z
;dueling_double_deep_q_network/dense_2/MatMul/ReadVariableOp;dueling_double_deep_q_network/dense_2/MatMul/ReadVariableOp2|
<dueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOp<dueling_double_deep_q_network/dense_3/BiasAdd/ReadVariableOp2z
;dueling_double_deep_q_network/dense_3/MatMul/ReadVariableOp;dueling_double_deep_q_network/dense_3/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
	
ß
F__inference_dense_2_layer_call_and_return_conditional_losses_194486714

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
~
)__inference_dense_layer_call_fn_194486684

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_1944865062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú	
ç
'__inference_signature_wrapper_194486664
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__wrapped_model_1944864912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ø
Æ
\__inference_dueling_double_deep_q_network_layer_call_and_return_conditional_losses_194486607
input_1
dense_194486517
dense_194486519
dense_1_194486544
dense_1_194486546
dense_2_194486570
dense_2_194486572
dense_3_194486596
dense_3_194486598
identity

identity_1¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_194486517dense_194486519*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_1944865062
dense/StatefulPartitionedCall¹
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_194486544dense_1_194486546*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_1944865332!
dense_1/StatefulPartitionedCallº
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_194486570dense_2_194486572*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_1944865592!
dense_2/StatefulPartitionedCallº
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_3_194486596dense_3_194486598*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_1944865852!
dense_3/StatefulPartitionedCallr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indices¢
MeanMean(dense_3/StatefulPartitionedCall:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
Mean|
subSub(dense_3/StatefulPartitionedCall:output:0Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
subx
addAddV2(dense_2/StatefulPartitionedCall:output:0sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addá
IdentityIdentityadd:z:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity(dense_3/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ã

+__inference_dense_3_layer_call_fn_194486742

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_1944865852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬


A__inference_dueling_double_deep_q_network_layer_call_fn_194486631
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity

identity_1¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *e
f`R^
\__inference_dueling_double_deep_q_network_layer_call_and_return_conditional_losses_1944866072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
	
ß
F__inference_dense_3_layer_call_and_return_conditional_losses_194486585

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*é
serving_defaultÕ
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ<
output_20
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Å}
å

dense1

dense2
V
A
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
`_default_save_signature
*a&call_and_return_all_conditional_losses
b__call__"ô
_tf_keras_modelÚ{"class_name": "DuelingDoubleDeepQNetwork", "name": "dueling_double_deep_q_network", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "DuelingDoubleDeepQNetwork"}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
é

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*c&call_and_return_all_conditional_losses
d__call__"Ä
_tf_keras_layerª{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 2]}}
ñ

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"Ì
_tf_keras_layer²{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 128]}}
ñ

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"Ì
_tf_keras_layer²{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 128]}}
ñ

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
*i&call_and_return_all_conditional_losses
j__call__"Ì
_tf_keras_layer²{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 128]}}
ã
#iter

$beta_1

%beta_2
	&decay
'learning_ratemPmQmRmSmTmUmVmWvXvYvZv[v\v]v^v_"
	optimizer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
Ê
trainable_variables
(metrics

)layers
*layer_metrics
+non_trainable_variables
regularization_losses
,layer_regularization_losses
	variables
b__call__
`_default_save_signature
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
,
kserving_default"
signature_map
=:;	2*dueling_double_deep_q_network/dense/kernel
7:52(dueling_double_deep_q_network/dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
-metrics

.layers
/layer_metrics
	variables
0non_trainable_variables
regularization_losses
1layer_regularization_losses
trainable_variables
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
@:>
2,dueling_double_deep_q_network/dense_1/kernel
9:72*dueling_double_deep_q_network/dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
2metrics

3layers
4layer_metrics
	variables
5non_trainable_variables
regularization_losses
6layer_regularization_losses
trainable_variables
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
?:=	2,dueling_double_deep_q_network/dense_2/kernel
8:62*dueling_double_deep_q_network/dense_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
7metrics

8layers
9layer_metrics
	variables
:non_trainable_variables
regularization_losses
;layer_regularization_losses
trainable_variables
h__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
?:=	2,dueling_double_deep_q_network/dense_3/kernel
8:62*dueling_double_deep_q_network/dense_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
<metrics

=layers
>layer_metrics
	variables
?non_trainable_variables
 regularization_losses
@layer_regularization_losses
!trainable_variables
j__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
A0
B1
C2"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
»
	Dtotal
	Ecount
F	variables
G	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Í
	Htotal
	Icount
J	variables
K	keras_api"
_tf_keras_metric|{"class_name": "Mean", "name": "output_1_loss", "dtype": "float32", "config": {"name": "output_1_loss", "dtype": "float32"}}
Í
	Ltotal
	Mcount
N	variables
O	keras_api"
_tf_keras_metric|{"class_name": "Mean", "name": "output_2_loss", "dtype": "float32", "config": {"name": "output_2_loss", "dtype": "float32"}}
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
:  (2total
:  (2count
.
H0
I1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
B:@	21Adam/dueling_double_deep_q_network/dense/kernel/m
<::2/Adam/dueling_double_deep_q_network/dense/bias/m
E:C
23Adam/dueling_double_deep_q_network/dense_1/kernel/m
>:<21Adam/dueling_double_deep_q_network/dense_1/bias/m
D:B	23Adam/dueling_double_deep_q_network/dense_2/kernel/m
=:;21Adam/dueling_double_deep_q_network/dense_2/bias/m
D:B	23Adam/dueling_double_deep_q_network/dense_3/kernel/m
=:;21Adam/dueling_double_deep_q_network/dense_3/bias/m
B:@	21Adam/dueling_double_deep_q_network/dense/kernel/v
<::2/Adam/dueling_double_deep_q_network/dense/bias/v
E:C
23Adam/dueling_double_deep_q_network/dense_1/kernel/v
>:<21Adam/dueling_double_deep_q_network/dense_1/bias/v
D:B	23Adam/dueling_double_deep_q_network/dense_2/kernel/v
=:;21Adam/dueling_double_deep_q_network/dense_2/bias/v
D:B	23Adam/dueling_double_deep_q_network/dense_3/kernel/v
=:;21Adam/dueling_double_deep_q_network/dense_3/bias/v
â2ß
$__inference__wrapped_model_194486491¶
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
©2¦
\__inference_dueling_double_deep_q_network_layer_call_and_return_conditional_losses_194486607Å
²
FullArgSpec
args
jself
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
2
A__inference_dueling_double_deep_q_network_layer_call_fn_194486631Å
²
FullArgSpec
args
jself
jstate
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_dense_layer_call_and_return_conditional_losses_194486675¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_layer_call_fn_194486684¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_1_layer_call_and_return_conditional_losses_194486695¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_1_layer_call_fn_194486704¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_2_layer_call_and_return_conditional_losses_194486714¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_2_layer_call_fn_194486723¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_3_layer_call_and_return_conditional_losses_194486733¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_3_layer_call_fn_194486742¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÎBË
'__inference_signature_wrapper_194486664input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 Ê
$__inference__wrapped_model_194486491¡0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "cª`
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
.
output_2"
output_2ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_1_layer_call_and_return_conditional_losses_194486695^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_1_layer_call_fn_194486704Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_2_layer_call_and_return_conditional_losses_194486714]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_2_layer_call_fn_194486723P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_3_layer_call_and_return_conditional_losses_194486733]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_3_layer_call_fn_194486742P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_layer_call_and_return_conditional_losses_194486675]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_layer_call_fn_194486684P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿê
\__inference_dueling_double_deep_q_network_layer_call_and_return_conditional_losses_1944866070¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "K¢H
A¢>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 À
A__inference_dueling_double_deep_q_network_layer_call_fn_194486631{0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "=¢:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿØ
'__inference_signature_wrapper_194486664¬;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ"cª`
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
.
output_2"
output_2ÿÿÿÿÿÿÿÿÿ