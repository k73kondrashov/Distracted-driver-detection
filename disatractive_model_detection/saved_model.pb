??*
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
E
Relu6
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Ƭ%
|
Conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv1/kernel
u
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*&
_output_shapes
: *
dtype0
t
bn_Conv1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebn_Conv1/gamma
m
"bn_Conv1/gamma/Read/ReadVariableOpReadVariableOpbn_Conv1/gamma*
_output_shapes
: *
dtype0
r
bn_Conv1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebn_Conv1/beta
k
!bn_Conv1/beta/Read/ReadVariableOpReadVariableOpbn_Conv1/beta*
_output_shapes
: *
dtype0
?
bn_Conv1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namebn_Conv1/moving_mean
y
(bn_Conv1/moving_mean/Read/ReadVariableOpReadVariableOpbn_Conv1/moving_mean*
_output_shapes
: *
dtype0
?
bn_Conv1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namebn_Conv1/moving_variance
?
,bn_Conv1/moving_variance/Read/ReadVariableOpReadVariableOpbn_Conv1/moving_variance*
_output_shapes
: *
dtype0
?
(expanded_conv_depthwise/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(expanded_conv_depthwise/depthwise_kernel
?
<expanded_conv_depthwise/depthwise_kernel/Read/ReadVariableOpReadVariableOp(expanded_conv_depthwise/depthwise_kernel*&
_output_shapes
: *
dtype0
?
 expanded_conv_depthwise_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" expanded_conv_depthwise_BN/gamma
?
4expanded_conv_depthwise_BN/gamma/Read/ReadVariableOpReadVariableOp expanded_conv_depthwise_BN/gamma*
_output_shapes
: *
dtype0
?
expanded_conv_depthwise_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!expanded_conv_depthwise_BN/beta
?
3expanded_conv_depthwise_BN/beta/Read/ReadVariableOpReadVariableOpexpanded_conv_depthwise_BN/beta*
_output_shapes
: *
dtype0
?
&expanded_conv_depthwise_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&expanded_conv_depthwise_BN/moving_mean
?
:expanded_conv_depthwise_BN/moving_mean/Read/ReadVariableOpReadVariableOp&expanded_conv_depthwise_BN/moving_mean*
_output_shapes
: *
dtype0
?
*expanded_conv_depthwise_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*expanded_conv_depthwise_BN/moving_variance
?
>expanded_conv_depthwise_BN/moving_variance/Read/ReadVariableOpReadVariableOp*expanded_conv_depthwise_BN/moving_variance*
_output_shapes
: *
dtype0
?
expanded_conv_project/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameexpanded_conv_project/kernel
?
0expanded_conv_project/kernel/Read/ReadVariableOpReadVariableOpexpanded_conv_project/kernel*&
_output_shapes
: *
dtype0
?
expanded_conv_project_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name expanded_conv_project_BN/gamma
?
2expanded_conv_project_BN/gamma/Read/ReadVariableOpReadVariableOpexpanded_conv_project_BN/gamma*
_output_shapes
:*
dtype0
?
expanded_conv_project_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameexpanded_conv_project_BN/beta
?
1expanded_conv_project_BN/beta/Read/ReadVariableOpReadVariableOpexpanded_conv_project_BN/beta*
_output_shapes
:*
dtype0
?
$expanded_conv_project_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$expanded_conv_project_BN/moving_mean
?
8expanded_conv_project_BN/moving_mean/Read/ReadVariableOpReadVariableOp$expanded_conv_project_BN/moving_mean*
_output_shapes
:*
dtype0
?
(expanded_conv_project_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(expanded_conv_project_BN/moving_variance
?
<expanded_conv_project_BN/moving_variance/Read/ReadVariableOpReadVariableOp(expanded_conv_project_BN/moving_variance*
_output_shapes
:*
dtype0
?
block_1_expand/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*&
shared_nameblock_1_expand/kernel
?
)block_1_expand/kernel/Read/ReadVariableOpReadVariableOpblock_1_expand/kernel*&
_output_shapes
:`*
dtype0
?
block_1_expand_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameblock_1_expand_BN/gamma

+block_1_expand_BN/gamma/Read/ReadVariableOpReadVariableOpblock_1_expand_BN/gamma*
_output_shapes
:`*
dtype0
?
block_1_expand_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameblock_1_expand_BN/beta
}
*block_1_expand_BN/beta/Read/ReadVariableOpReadVariableOpblock_1_expand_BN/beta*
_output_shapes
:`*
dtype0
?
block_1_expand_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_nameblock_1_expand_BN/moving_mean
?
1block_1_expand_BN/moving_mean/Read/ReadVariableOpReadVariableOpblock_1_expand_BN/moving_mean*
_output_shapes
:`*
dtype0
?
!block_1_expand_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*2
shared_name#!block_1_expand_BN/moving_variance
?
5block_1_expand_BN/moving_variance/Read/ReadVariableOpReadVariableOp!block_1_expand_BN/moving_variance*
_output_shapes
:`*
dtype0
?
"block_1_depthwise/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"block_1_depthwise/depthwise_kernel
?
6block_1_depthwise/depthwise_kernel/Read/ReadVariableOpReadVariableOp"block_1_depthwise/depthwise_kernel*&
_output_shapes
:`*
dtype0
?
block_1_depthwise_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*+
shared_nameblock_1_depthwise_BN/gamma
?
.block_1_depthwise_BN/gamma/Read/ReadVariableOpReadVariableOpblock_1_depthwise_BN/gamma*
_output_shapes
:`*
dtype0
?
block_1_depthwise_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`**
shared_nameblock_1_depthwise_BN/beta
?
-block_1_depthwise_BN/beta/Read/ReadVariableOpReadVariableOpblock_1_depthwise_BN/beta*
_output_shapes
:`*
dtype0
?
 block_1_depthwise_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*1
shared_name" block_1_depthwise_BN/moving_mean
?
4block_1_depthwise_BN/moving_mean/Read/ReadVariableOpReadVariableOp block_1_depthwise_BN/moving_mean*
_output_shapes
:`*
dtype0
?
$block_1_depthwise_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*5
shared_name&$block_1_depthwise_BN/moving_variance
?
8block_1_depthwise_BN/moving_variance/Read/ReadVariableOpReadVariableOp$block_1_depthwise_BN/moving_variance*
_output_shapes
:`*
dtype0
?
block_1_project/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameblock_1_project/kernel
?
*block_1_project/kernel/Read/ReadVariableOpReadVariableOpblock_1_project/kernel*&
_output_shapes
:`*
dtype0
?
block_1_project_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameblock_1_project_BN/gamma
?
,block_1_project_BN/gamma/Read/ReadVariableOpReadVariableOpblock_1_project_BN/gamma*
_output_shapes
:*
dtype0
?
block_1_project_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameblock_1_project_BN/beta

+block_1_project_BN/beta/Read/ReadVariableOpReadVariableOpblock_1_project_BN/beta*
_output_shapes
:*
dtype0
?
block_1_project_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name block_1_project_BN/moving_mean
?
2block_1_project_BN/moving_mean/Read/ReadVariableOpReadVariableOpblock_1_project_BN/moving_mean*
_output_shapes
:*
dtype0
?
"block_1_project_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"block_1_project_BN/moving_variance
?
6block_1_project_BN/moving_variance/Read/ReadVariableOpReadVariableOp"block_1_project_BN/moving_variance*
_output_shapes
:*
dtype0
?
block_2_expand/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameblock_2_expand/kernel
?
)block_2_expand/kernel/Read/ReadVariableOpReadVariableOpblock_2_expand/kernel*'
_output_shapes
:?*
dtype0
?
block_2_expand_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameblock_2_expand_BN/gamma
?
+block_2_expand_BN/gamma/Read/ReadVariableOpReadVariableOpblock_2_expand_BN/gamma*
_output_shapes	
:?*
dtype0
?
block_2_expand_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameblock_2_expand_BN/beta
~
*block_2_expand_BN/beta/Read/ReadVariableOpReadVariableOpblock_2_expand_BN/beta*
_output_shapes	
:?*
dtype0
?
block_2_expand_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameblock_2_expand_BN/moving_mean
?
1block_2_expand_BN/moving_mean/Read/ReadVariableOpReadVariableOpblock_2_expand_BN/moving_mean*
_output_shapes	
:?*
dtype0
?
!block_2_expand_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!block_2_expand_BN/moving_variance
?
5block_2_expand_BN/moving_variance/Read/ReadVariableOpReadVariableOp!block_2_expand_BN/moving_variance*
_output_shapes	
:?*
dtype0
?
"block_2_depthwise/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"block_2_depthwise/depthwise_kernel
?
6block_2_depthwise/depthwise_kernel/Read/ReadVariableOpReadVariableOp"block_2_depthwise/depthwise_kernel*'
_output_shapes
:?*
dtype0
?
block_2_depthwise_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameblock_2_depthwise_BN/gamma
?
.block_2_depthwise_BN/gamma/Read/ReadVariableOpReadVariableOpblock_2_depthwise_BN/gamma*
_output_shapes	
:?*
dtype0
?
block_2_depthwise_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameblock_2_depthwise_BN/beta
?
-block_2_depthwise_BN/beta/Read/ReadVariableOpReadVariableOpblock_2_depthwise_BN/beta*
_output_shapes	
:?*
dtype0
?
 block_2_depthwise_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" block_2_depthwise_BN/moving_mean
?
4block_2_depthwise_BN/moving_mean/Read/ReadVariableOpReadVariableOp block_2_depthwise_BN/moving_mean*
_output_shapes	
:?*
dtype0
?
$block_2_depthwise_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$block_2_depthwise_BN/moving_variance
?
8block_2_depthwise_BN/moving_variance/Read/ReadVariableOpReadVariableOp$block_2_depthwise_BN/moving_variance*
_output_shapes	
:?*
dtype0
?
block_2_project/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameblock_2_project/kernel
?
*block_2_project/kernel/Read/ReadVariableOpReadVariableOpblock_2_project/kernel*'
_output_shapes
:?*
dtype0
?
block_2_project_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameblock_2_project_BN/gamma
?
,block_2_project_BN/gamma/Read/ReadVariableOpReadVariableOpblock_2_project_BN/gamma*
_output_shapes
:*
dtype0
?
block_2_project_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameblock_2_project_BN/beta

+block_2_project_BN/beta/Read/ReadVariableOpReadVariableOpblock_2_project_BN/beta*
_output_shapes
:*
dtype0
?
block_2_project_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name block_2_project_BN/moving_mean
?
2block_2_project_BN/moving_mean/Read/ReadVariableOpReadVariableOpblock_2_project_BN/moving_mean*
_output_shapes
:*
dtype0
?
"block_2_project_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"block_2_project_BN/moving_variance
?
6block_2_project_BN/moving_variance/Read/ReadVariableOpReadVariableOp"block_2_project_BN/moving_variance*
_output_shapes
:*
dtype0
v
	C1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	C1/kernel
o
C1/kernel/Read/ReadVariableOpReadVariableOp	C1/kernel*&
_output_shapes
:@*
dtype0
f
C1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	C1/bias
_
C1/bias/Read/ReadVariableOpReadVariableOpC1/bias*
_output_shapes
:@*
dtype0
v
	C2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *
shared_name	C2/kernel
o
C2/kernel/Read/ReadVariableOpReadVariableOp	C2/kernel*&
_output_shapes
:@ *
dtype0
f
C2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	C2/bias
_
C2/bias/Read/ReadVariableOpReadVariableOpC2/bias*
_output_shapes
: *
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
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
?
Adam/C1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/C1/kernel/m
}
$Adam/C1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C1/kernel/m*&
_output_shapes
:@*
dtype0
t
Adam/C1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameAdam/C1/bias/m
m
"Adam/C1/bias/m/Read/ReadVariableOpReadVariableOpAdam/C1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/C2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameAdam/C2/kernel/m
}
$Adam/C2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C2/kernel/m*&
_output_shapes
:@ *
dtype0
t
Adam/C2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/C2/bias/m
m
"Adam/C2/bias/m/Read/ReadVariableOpReadVariableOpAdam/C2/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
?
Adam/C1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/C1/kernel/v
}
$Adam/C1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C1/kernel/v*&
_output_shapes
:@*
dtype0
t
Adam/C1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameAdam/C1/bias/v
m
"Adam/C1/bias/v/Read/ReadVariableOpReadVariableOpAdam/C1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/C2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameAdam/C2/kernel/v
}
$Adam/C2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C2/kernel/v*&
_output_shapes
:@ *
dtype0
t
Adam/C2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/C2/bias/v
m
"Adam/C2/bias/v/Read/ReadVariableOpReadVariableOpAdam/C2/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ʳ
value??B?? B??
?	
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer-20
layer_with_weights-14
layer-21
layer_with_weights-15
layer-22
layer-23
layer_with_weights-16
layer-24
layer_with_weights-17
layer-25
layer-26
layer_with_weights-18
layer-27
layer_with_weights-19
layer-28
layer-29
layer_with_weights-20
layer-30
 layer_with_weights-21
 layer-31
!layer_with_weights-22
!layer-32
"	optimizer
#regularization_losses
$trainable_variables
%	variables
&	keras_api
'
signatures

(_init_input_shape
^

)kernel
*regularization_losses
+trainable_variables
,	variables
-	keras_api
?
.axis
	/gamma
0beta
1moving_mean
2moving_variance
3regularization_losses
4trainable_variables
5	variables
6	keras_api
R
7regularization_losses
8trainable_variables
9	variables
:	keras_api
h
;depthwise_kernel
<regularization_losses
=trainable_variables
>	variables
?	keras_api
?
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
R
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
^

Mkernel
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
?
Raxis
	Sgamma
Tbeta
Umoving_mean
Vmoving_variance
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
^

[kernel
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
R
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
R
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
h
qdepthwise_kernel
rregularization_losses
strainable_variables
t	variables
u	keras_api
?
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance
{regularization_losses
|trainable_variables
}	variables
~	keras_api
U
regularization_losses
?trainable_variables
?	variables
?	keras_api
c
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
c
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
m
?depthwise_kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
c
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
 
P
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?
)0
/1
02
13
24
;5
A6
B7
C8
D9
M10
S11
T12
U13
V14
[15
a16
b17
c18
d19
q20
w21
x22
y23
z24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?
#regularization_losses
?metrics
$trainable_variables
?layer_metrics
?layers
?non_trainable_variables
%	variables
 ?layer_regularization_losses
 
 
XV
VARIABLE_VALUEConv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

)0
?
*regularization_losses
?metrics
+trainable_variables
?layer_metrics
?layers
?non_trainable_variables
,	variables
 ?layer_regularization_losses
 
YW
VARIABLE_VALUEbn_Conv1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbn_Conv1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbn_Conv1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEbn_Conv1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

/0
01
12
23
?
3regularization_losses
?metrics
4trainable_variables
?layer_metrics
?layers
?non_trainable_variables
5	variables
 ?layer_regularization_losses
 
 
 
?
7regularization_losses
?metrics
8trainable_variables
?layer_metrics
?layers
?non_trainable_variables
9	variables
 ?layer_regularization_losses
~|
VARIABLE_VALUE(expanded_conv_depthwise/depthwise_kernel@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

;0
?
<regularization_losses
?metrics
=trainable_variables
?layer_metrics
?layers
?non_trainable_variables
>	variables
 ?layer_regularization_losses
 
ki
VARIABLE_VALUE expanded_conv_depthwise_BN/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEexpanded_conv_depthwise_BN/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE&expanded_conv_depthwise_BN/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE*expanded_conv_depthwise_BN/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

A0
B1
C2
D3
?
Eregularization_losses
?metrics
Ftrainable_variables
?layer_metrics
?layers
?non_trainable_variables
G	variables
 ?layer_regularization_losses
 
 
 
?
Iregularization_losses
?metrics
Jtrainable_variables
?layer_metrics
?layers
?non_trainable_variables
K	variables
 ?layer_regularization_losses
hf
VARIABLE_VALUEexpanded_conv_project/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

M0
?
Nregularization_losses
?metrics
Otrainable_variables
?layer_metrics
?layers
?non_trainable_variables
P	variables
 ?layer_regularization_losses
 
ig
VARIABLE_VALUEexpanded_conv_project_BN/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEexpanded_conv_project_BN/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE$expanded_conv_project_BN/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE(expanded_conv_project_BN/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

S0
T1
U2
V3
?
Wregularization_losses
?metrics
Xtrainable_variables
?layer_metrics
?layers
?non_trainable_variables
Y	variables
 ?layer_regularization_losses
a_
VARIABLE_VALUEblock_1_expand/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

[0
?
\regularization_losses
?metrics
]trainable_variables
?layer_metrics
?layers
?non_trainable_variables
^	variables
 ?layer_regularization_losses
 
b`
VARIABLE_VALUEblock_1_expand_BN/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEblock_1_expand_BN/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEblock_1_expand_BN/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE!block_1_expand_BN/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

a0
b1
c2
d3
?
eregularization_losses
?metrics
ftrainable_variables
?layer_metrics
?layers
?non_trainable_variables
g	variables
 ?layer_regularization_losses
 
 
 
?
iregularization_losses
?metrics
jtrainable_variables
?layer_metrics
?layers
?non_trainable_variables
k	variables
 ?layer_regularization_losses
 
 
 
?
mregularization_losses
?metrics
ntrainable_variables
?layer_metrics
?layers
?non_trainable_variables
o	variables
 ?layer_regularization_losses
xv
VARIABLE_VALUE"block_1_depthwise/depthwise_kernel@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

q0
?
rregularization_losses
?metrics
strainable_variables
?layer_metrics
?layers
?non_trainable_variables
t	variables
 ?layer_regularization_losses
 
ec
VARIABLE_VALUEblock_1_depthwise_BN/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEblock_1_depthwise_BN/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE block_1_depthwise_BN/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE$block_1_depthwise_BN/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

w0
x1
y2
z3
?
{regularization_losses
?metrics
|trainable_variables
?layer_metrics
?layers
?non_trainable_variables
}	variables
 ?layer_regularization_losses
 
 
 
?
regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
ca
VARIABLE_VALUEblock_1_project/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
db
VARIABLE_VALUEblock_1_project_BN/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEblock_1_project_BN/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_1_project_BN/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE"block_1_project_BN/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
b`
VARIABLE_VALUEblock_2_expand/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
ca
VARIABLE_VALUEblock_2_expand_BN/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEblock_2_expand_BN/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEblock_2_expand_BN/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE!block_2_expand_BN/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
 
 
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
yw
VARIABLE_VALUE"block_2_depthwise/depthwise_kernelAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
fd
VARIABLE_VALUEblock_2_depthwise_BN/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEblock_2_depthwise_BN/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE block_2_depthwise_BN/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$block_2_depthwise_BN/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
 
 
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
ca
VARIABLE_VALUEblock_2_project/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

?0
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
db
VARIABLE_VALUEblock_2_project_BN/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEblock_2_project_BN/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_2_project_BN/moving_mean<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE"block_2_project_BN/moving_variance@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
?0
?1
?2
?3
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
 
 
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
VT
VARIABLE_VALUE	C1/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEC1/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
VT
VARIABLE_VALUE	C2/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEC2/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
 
 
 
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_2/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
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

?0
?1
 
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
20
21
22
23
24
25
26
27
28
29
30
 31
!32
?
)0
/1
02
13
24
;5
A6
B7
C8
D9
M10
S11
T12
U13
V14
[15
a16
b17
c18
d19
q20
w21
x22
y23
z24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
 
 
 
 

)0
 
 
 
 

/0
01
12
23
 
 
 
 
 
 
 
 
 

;0
 
 
 
 

A0
B1
C2
D3
 
 
 
 
 
 
 
 
 

M0
 
 
 
 

S0
T1
U2
V3
 
 
 
 

[0
 
 
 
 

a0
b1
c2
d3
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

q0
 
 
 
 

w0
x1
y2
z3
 
 
 
 
 
 
 
 
 

?0
 
 
 
 
 
?0
?1
?2
?3
 
 
 
 

?0
 
 
 
 
 
?0
?1
?2
?3
 
 
 
 
 
 
 
 
 

?0
 
 
 
 
 
?0
?1
?2
?3
 
 
 
 
 
 
 
 
 

?0
 
 
 
 
 
?0
?1
?2
?3
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
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
yw
VARIABLE_VALUEAdam/C1/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/C1/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/C2/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/C2/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/C1/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/C1/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/C2/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/C2/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*0
_output_shapes
:?????????x?*
dtype0*%
shape:?????????x?
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Conv1/kernelbn_Conv1/gammabn_Conv1/betabn_Conv1/moving_meanbn_Conv1/moving_variance(expanded_conv_depthwise/depthwise_kernel expanded_conv_depthwise_BN/gammaexpanded_conv_depthwise_BN/beta&expanded_conv_depthwise_BN/moving_mean*expanded_conv_depthwise_BN/moving_varianceexpanded_conv_project/kernelexpanded_conv_project_BN/gammaexpanded_conv_project_BN/beta$expanded_conv_project_BN/moving_mean(expanded_conv_project_BN/moving_varianceblock_1_expand/kernelblock_1_expand_BN/gammablock_1_expand_BN/betablock_1_expand_BN/moving_mean!block_1_expand_BN/moving_variance"block_1_depthwise/depthwise_kernelblock_1_depthwise_BN/gammablock_1_depthwise_BN/beta block_1_depthwise_BN/moving_mean$block_1_depthwise_BN/moving_varianceblock_1_project/kernelblock_1_project_BN/gammablock_1_project_BN/betablock_1_project_BN/moving_mean"block_1_project_BN/moving_varianceblock_2_expand/kernelblock_2_expand_BN/gammablock_2_expand_BN/betablock_2_expand_BN/moving_mean!block_2_expand_BN/moving_variance"block_2_depthwise/depthwise_kernelblock_2_depthwise_BN/gammablock_2_depthwise_BN/beta block_2_depthwise_BN/moving_mean$block_2_depthwise_BN/moving_varianceblock_2_project/kernelblock_2_project_BN/gammablock_2_project_BN/betablock_2_project_BN/moving_mean"block_2_project_BN/moving_variance	C1/kernelC1/bias	C2/kernelC2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./01234567*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_15000
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Conv1/kernel/Read/ReadVariableOp"bn_Conv1/gamma/Read/ReadVariableOp!bn_Conv1/beta/Read/ReadVariableOp(bn_Conv1/moving_mean/Read/ReadVariableOp,bn_Conv1/moving_variance/Read/ReadVariableOp<expanded_conv_depthwise/depthwise_kernel/Read/ReadVariableOp4expanded_conv_depthwise_BN/gamma/Read/ReadVariableOp3expanded_conv_depthwise_BN/beta/Read/ReadVariableOp:expanded_conv_depthwise_BN/moving_mean/Read/ReadVariableOp>expanded_conv_depthwise_BN/moving_variance/Read/ReadVariableOp0expanded_conv_project/kernel/Read/ReadVariableOp2expanded_conv_project_BN/gamma/Read/ReadVariableOp1expanded_conv_project_BN/beta/Read/ReadVariableOp8expanded_conv_project_BN/moving_mean/Read/ReadVariableOp<expanded_conv_project_BN/moving_variance/Read/ReadVariableOp)block_1_expand/kernel/Read/ReadVariableOp+block_1_expand_BN/gamma/Read/ReadVariableOp*block_1_expand_BN/beta/Read/ReadVariableOp1block_1_expand_BN/moving_mean/Read/ReadVariableOp5block_1_expand_BN/moving_variance/Read/ReadVariableOp6block_1_depthwise/depthwise_kernel/Read/ReadVariableOp.block_1_depthwise_BN/gamma/Read/ReadVariableOp-block_1_depthwise_BN/beta/Read/ReadVariableOp4block_1_depthwise_BN/moving_mean/Read/ReadVariableOp8block_1_depthwise_BN/moving_variance/Read/ReadVariableOp*block_1_project/kernel/Read/ReadVariableOp,block_1_project_BN/gamma/Read/ReadVariableOp+block_1_project_BN/beta/Read/ReadVariableOp2block_1_project_BN/moving_mean/Read/ReadVariableOp6block_1_project_BN/moving_variance/Read/ReadVariableOp)block_2_expand/kernel/Read/ReadVariableOp+block_2_expand_BN/gamma/Read/ReadVariableOp*block_2_expand_BN/beta/Read/ReadVariableOp1block_2_expand_BN/moving_mean/Read/ReadVariableOp5block_2_expand_BN/moving_variance/Read/ReadVariableOp6block_2_depthwise/depthwise_kernel/Read/ReadVariableOp.block_2_depthwise_BN/gamma/Read/ReadVariableOp-block_2_depthwise_BN/beta/Read/ReadVariableOp4block_2_depthwise_BN/moving_mean/Read/ReadVariableOp8block_2_depthwise_BN/moving_variance/Read/ReadVariableOp*block_2_project/kernel/Read/ReadVariableOp,block_2_project_BN/gamma/Read/ReadVariableOp+block_2_project_BN/beta/Read/ReadVariableOp2block_2_project_BN/moving_mean/Read/ReadVariableOp6block_2_project_BN/moving_variance/Read/ReadVariableOpC1/kernel/Read/ReadVariableOpC1/bias/Read/ReadVariableOpC2/kernel/Read/ReadVariableOpC2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp$Adam/C1/kernel/m/Read/ReadVariableOp"Adam/C1/bias/m/Read/ReadVariableOp$Adam/C2/kernel/m/Read/ReadVariableOp"Adam/C2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp$Adam/C1/kernel/v/Read/ReadVariableOp"Adam/C1/bias/v/Read/ReadVariableOp$Adam/C2/kernel/v/Read/ReadVariableOp"Adam/C2/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*a
TinZ
X2V	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_17424
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv1/kernelbn_Conv1/gammabn_Conv1/betabn_Conv1/moving_meanbn_Conv1/moving_variance(expanded_conv_depthwise/depthwise_kernel expanded_conv_depthwise_BN/gammaexpanded_conv_depthwise_BN/beta&expanded_conv_depthwise_BN/moving_mean*expanded_conv_depthwise_BN/moving_varianceexpanded_conv_project/kernelexpanded_conv_project_BN/gammaexpanded_conv_project_BN/beta$expanded_conv_project_BN/moving_mean(expanded_conv_project_BN/moving_varianceblock_1_expand/kernelblock_1_expand_BN/gammablock_1_expand_BN/betablock_1_expand_BN/moving_mean!block_1_expand_BN/moving_variance"block_1_depthwise/depthwise_kernelblock_1_depthwise_BN/gammablock_1_depthwise_BN/beta block_1_depthwise_BN/moving_mean$block_1_depthwise_BN/moving_varianceblock_1_project/kernelblock_1_project_BN/gammablock_1_project_BN/betablock_1_project_BN/moving_mean"block_1_project_BN/moving_varianceblock_2_expand/kernelblock_2_expand_BN/gammablock_2_expand_BN/betablock_2_expand_BN/moving_mean!block_2_expand_BN/moving_variance"block_2_depthwise/depthwise_kernelblock_2_depthwise_BN/gammablock_2_depthwise_BN/beta block_2_depthwise_BN/moving_mean$block_2_depthwise_BN/moving_varianceblock_2_project/kernelblock_2_project_BN/gammablock_2_project_BN/betablock_2_project_BN/moving_mean"block_2_project_BN/moving_variance	C1/kernelC1/bias	C2/kernelC2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/C1/kernel/mAdam/C1/bias/mAdam/C2/kernel/mAdam/C2/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/C1/kernel/vAdam/C1/bias/vAdam/C2/kernel/vAdam/C2/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*`
TinY
W2U*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_17686??"
?

?
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_15819

inputs;
!depthwise_readvariableop_resource: 
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
	depthwise?
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+??????????????????????????? : 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_17026

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_17089

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 
  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
 :W S
/
_output_shapes
:?????????
 
 
_user_specified_nameinputs
?
b
F__inference_block_1_pad_layer_call_and_return_conditional_losses_16270

inputs
identity?
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               2
Pad/paddingsj
PadPadinputsPad/paddings:output:0*
T0*/
_output_shapes
:?????????=Q`2
Padh
IdentityIdentityPad:output:0*
T0*/
_output_shapes
:?????????=Q`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P`:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
G
+__inference_block_1_pad_layer_call_fn_16253

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_1_pad_layer_call_and_return_conditional_losses_121972
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_11957

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16538

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_15796

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????<P 2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????<P 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P :W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
=__inference_C1_layer_call_and_return_conditional_losses_17058

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15916

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_16990

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16184

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
b
F__inference_block_1_pad_layer_call_and_return_conditional_losses_12197

inputs
identity?
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               2
Pad/paddings?
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
Pad?
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16860

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
/__inference_block_2_project_layer_call_fn_16895

inputs"
unknown:?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_2_project_layer_call_and_return_conditional_losses_132792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????(?: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16046

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_13358

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 
  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
 :W S
/
_output_shapes
:?????????
 
 
_user_specified_nameinputs
?
?
"__inference_C2_layer_call_fn_17067

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C2_layer_call_and_return_conditional_losses_133462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????
 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
4__inference_block_1_depthwise_BN_layer_call_fn_16341

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_131262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
?
.__inference_block_1_expand_layer_call_fn_16107

inputs!
unknown:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_1_expand_layer_call_and_return_conditional_losses_130522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
??
?/
@__inference_model_layer_call_and_return_conditional_losses_15439

inputs>
$conv1_conv2d_readvariableop_resource: .
 bn_conv1_readvariableop_resource: 0
"bn_conv1_readvariableop_1_resource: ?
1bn_conv1_fusedbatchnormv3_readvariableop_resource: A
3bn_conv1_fusedbatchnormv3_readvariableop_1_resource: S
9expanded_conv_depthwise_depthwise_readvariableop_resource: @
2expanded_conv_depthwise_bn_readvariableop_resource: B
4expanded_conv_depthwise_bn_readvariableop_1_resource: Q
Cexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_resource: S
Eexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource: N
4expanded_conv_project_conv2d_readvariableop_resource: >
0expanded_conv_project_bn_readvariableop_resource:@
2expanded_conv_project_bn_readvariableop_1_resource:O
Aexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_resource:Q
Cexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_1_resource:G
-block_1_expand_conv2d_readvariableop_resource:`7
)block_1_expand_bn_readvariableop_resource:`9
+block_1_expand_bn_readvariableop_1_resource:`H
:block_1_expand_bn_fusedbatchnormv3_readvariableop_resource:`J
<block_1_expand_bn_fusedbatchnormv3_readvariableop_1_resource:`M
3block_1_depthwise_depthwise_readvariableop_resource:`:
,block_1_depthwise_bn_readvariableop_resource:`<
.block_1_depthwise_bn_readvariableop_1_resource:`K
=block_1_depthwise_bn_fusedbatchnormv3_readvariableop_resource:`M
?block_1_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource:`H
.block_1_project_conv2d_readvariableop_resource:`8
*block_1_project_bn_readvariableop_resource::
,block_1_project_bn_readvariableop_1_resource:I
;block_1_project_bn_fusedbatchnormv3_readvariableop_resource:K
=block_1_project_bn_fusedbatchnormv3_readvariableop_1_resource:H
-block_2_expand_conv2d_readvariableop_resource:?8
)block_2_expand_bn_readvariableop_resource:	?:
+block_2_expand_bn_readvariableop_1_resource:	?I
:block_2_expand_bn_fusedbatchnormv3_readvariableop_resource:	?K
<block_2_expand_bn_fusedbatchnormv3_readvariableop_1_resource:	?N
3block_2_depthwise_depthwise_readvariableop_resource:?;
,block_2_depthwise_bn_readvariableop_resource:	?=
.block_2_depthwise_bn_readvariableop_1_resource:	?L
=block_2_depthwise_bn_fusedbatchnormv3_readvariableop_resource:	?N
?block_2_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource:	?I
.block_2_project_conv2d_readvariableop_resource:?8
*block_2_project_bn_readvariableop_resource::
,block_2_project_bn_readvariableop_1_resource:I
;block_2_project_bn_fusedbatchnormv3_readvariableop_resource:K
=block_2_project_bn_fusedbatchnormv3_readvariableop_1_resource:;
!c1_conv2d_readvariableop_resource:@0
"c1_biasadd_readvariableop_resource:@;
!c2_conv2d_readvariableop_resource:@ 0
"c2_biasadd_readvariableop_resource: 8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@
5
'dense_2_biasadd_readvariableop_resource:

identity??C1/BiasAdd/ReadVariableOp?C1/Conv2D/ReadVariableOp?C2/BiasAdd/ReadVariableOp?C2/Conv2D/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?*block_1_depthwise/depthwise/ReadVariableOp?4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp?6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?#block_1_depthwise_BN/ReadVariableOp?%block_1_depthwise_BN/ReadVariableOp_1?$block_1_expand/Conv2D/ReadVariableOp?1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp?3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1? block_1_expand_BN/ReadVariableOp?"block_1_expand_BN/ReadVariableOp_1?%block_1_project/Conv2D/ReadVariableOp?2block_1_project_BN/FusedBatchNormV3/ReadVariableOp?4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1?!block_1_project_BN/ReadVariableOp?#block_1_project_BN/ReadVariableOp_1?*block_2_depthwise/depthwise/ReadVariableOp?4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp?6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?#block_2_depthwise_BN/ReadVariableOp?%block_2_depthwise_BN/ReadVariableOp_1?$block_2_expand/Conv2D/ReadVariableOp?1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp?3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1? block_2_expand_BN/ReadVariableOp?"block_2_expand_BN/ReadVariableOp_1?%block_2_project/Conv2D/ReadVariableOp?2block_2_project_BN/FusedBatchNormV3/ReadVariableOp?4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1?!block_2_project_BN/ReadVariableOp?#block_2_project_BN/ReadVariableOp_1?(bn_Conv1/FusedBatchNormV3/ReadVariableOp?*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1?bn_Conv1/ReadVariableOp?bn_Conv1/ReadVariableOp_1?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?0expanded_conv_depthwise/depthwise/ReadVariableOp?:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp?<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?)expanded_conv_depthwise_BN/ReadVariableOp?+expanded_conv_depthwise_BN/ReadVariableOp_1?+expanded_conv_project/Conv2D/ReadVariableOp?8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp?:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1?'expanded_conv_project_BN/ReadVariableOp?)expanded_conv_project_BN/ReadVariableOp_1?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2
Conv1/Conv2D?
bn_Conv1/ReadVariableOpReadVariableOp bn_conv1_readvariableop_resource*
_output_shapes
: *
dtype02
bn_Conv1/ReadVariableOp?
bn_Conv1/ReadVariableOp_1ReadVariableOp"bn_conv1_readvariableop_1_resource*
_output_shapes
: *
dtype02
bn_Conv1/ReadVariableOp_1?
(bn_Conv1/FusedBatchNormV3/ReadVariableOpReadVariableOp1bn_conv1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02*
(bn_Conv1/FusedBatchNormV3/ReadVariableOp?
*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp3bn_conv1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1?
bn_Conv1/FusedBatchNormV3FusedBatchNormV3Conv1/Conv2D:output:0bn_Conv1/ReadVariableOp:value:0!bn_Conv1/ReadVariableOp_1:value:00bn_Conv1/FusedBatchNormV3/ReadVariableOp:value:02bn_Conv1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
bn_Conv1/FusedBatchNormV3?
Conv1_relu/Relu6Relu6bn_Conv1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P 2
Conv1_relu/Relu6?
0expanded_conv_depthwise/depthwise/ReadVariableOpReadVariableOp9expanded_conv_depthwise_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype022
0expanded_conv_depthwise/depthwise/ReadVariableOp?
'expanded_conv_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'expanded_conv_depthwise/depthwise/Shape?
/expanded_conv_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      21
/expanded_conv_depthwise/depthwise/dilation_rate?
!expanded_conv_depthwise/depthwiseDepthwiseConv2dNativeConv1_relu/Relu6:activations:08expanded_conv_depthwise/depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2#
!expanded_conv_depthwise/depthwise?
)expanded_conv_depthwise_BN/ReadVariableOpReadVariableOp2expanded_conv_depthwise_bn_readvariableop_resource*
_output_shapes
: *
dtype02+
)expanded_conv_depthwise_BN/ReadVariableOp?
+expanded_conv_depthwise_BN/ReadVariableOp_1ReadVariableOp4expanded_conv_depthwise_bn_readvariableop_1_resource*
_output_shapes
: *
dtype02-
+expanded_conv_depthwise_BN/ReadVariableOp_1?
:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpCexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02<
:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02>
<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
+expanded_conv_depthwise_BN/FusedBatchNormV3FusedBatchNormV3*expanded_conv_depthwise/depthwise:output:01expanded_conv_depthwise_BN/ReadVariableOp:value:03expanded_conv_depthwise_BN/ReadVariableOp_1:value:0Bexpanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0Dexpanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2-
+expanded_conv_depthwise_BN/FusedBatchNormV3?
"expanded_conv_depthwise_relu/Relu6Relu6/expanded_conv_depthwise_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P 2$
"expanded_conv_depthwise_relu/Relu6?
+expanded_conv_project/Conv2D/ReadVariableOpReadVariableOp4expanded_conv_project_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+expanded_conv_project/Conv2D/ReadVariableOp?
expanded_conv_project/Conv2DConv2D0expanded_conv_depthwise_relu/Relu6:activations:03expanded_conv_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
2
expanded_conv_project/Conv2D?
'expanded_conv_project_BN/ReadVariableOpReadVariableOp0expanded_conv_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02)
'expanded_conv_project_BN/ReadVariableOp?
)expanded_conv_project_BN/ReadVariableOp_1ReadVariableOp2expanded_conv_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02+
)expanded_conv_project_BN/ReadVariableOp_1?
8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpAexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02:
8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp?
:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02<
:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1?
)expanded_conv_project_BN/FusedBatchNormV3FusedBatchNormV3%expanded_conv_project/Conv2D:output:0/expanded_conv_project_BN/ReadVariableOp:value:01expanded_conv_project_BN/ReadVariableOp_1:value:0@expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp:value:0Bexpanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( 2+
)expanded_conv_project_BN/FusedBatchNormV3?
$block_1_expand/Conv2D/ReadVariableOpReadVariableOp-block_1_expand_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02&
$block_1_expand/Conv2D/ReadVariableOp?
block_1_expand/Conv2DConv2D-expanded_conv_project_BN/FusedBatchNormV3:y:0,block_1_expand/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P`*
paddingSAME*
strides
2
block_1_expand/Conv2D?
 block_1_expand_BN/ReadVariableOpReadVariableOp)block_1_expand_bn_readvariableop_resource*
_output_shapes
:`*
dtype02"
 block_1_expand_BN/ReadVariableOp?
"block_1_expand_BN/ReadVariableOp_1ReadVariableOp+block_1_expand_bn_readvariableop_1_resource*
_output_shapes
:`*
dtype02$
"block_1_expand_BN/ReadVariableOp_1?
1block_1_expand_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp:block_1_expand_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype023
1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp?
3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<block_1_expand_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1?
"block_1_expand_BN/FusedBatchNormV3FusedBatchNormV3block_1_expand/Conv2D:output:0(block_1_expand_BN/ReadVariableOp:value:0*block_1_expand_BN/ReadVariableOp_1:value:09block_1_expand_BN/FusedBatchNormV3/ReadVariableOp:value:0;block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P`:`:`:`:`:*
epsilon%o?:*
is_training( 2$
"block_1_expand_BN/FusedBatchNormV3?
block_1_expand_relu/Relu6Relu6&block_1_expand_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P`2
block_1_expand_relu/Relu6?
block_1_pad/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               2
block_1_pad/Pad/paddings?
block_1_pad/PadPad'block_1_expand_relu/Relu6:activations:0!block_1_pad/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????=Q`2
block_1_pad/Pad?
*block_1_depthwise/depthwise/ReadVariableOpReadVariableOp3block_1_depthwise_depthwise_readvariableop_resource*&
_output_shapes
:`*
dtype02,
*block_1_depthwise/depthwise/ReadVariableOp?
!block_1_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      `      2#
!block_1_depthwise/depthwise/Shape?
)block_1_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2+
)block_1_depthwise/depthwise/dilation_rate?
block_1_depthwise/depthwiseDepthwiseConv2dNativeblock_1_pad/Pad:output:02block_1_depthwise/depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(`*
paddingVALID*
strides
2
block_1_depthwise/depthwise?
#block_1_depthwise_BN/ReadVariableOpReadVariableOp,block_1_depthwise_bn_readvariableop_resource*
_output_shapes
:`*
dtype02%
#block_1_depthwise_BN/ReadVariableOp?
%block_1_depthwise_BN/ReadVariableOp_1ReadVariableOp.block_1_depthwise_bn_readvariableop_1_resource*
_output_shapes
:`*
dtype02'
%block_1_depthwise_BN/ReadVariableOp_1?
4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp=block_1_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype026
4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?block_1_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype028
6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
%block_1_depthwise_BN/FusedBatchNormV3FusedBatchNormV3$block_1_depthwise/depthwise:output:0+block_1_depthwise_BN/ReadVariableOp:value:0-block_1_depthwise_BN/ReadVariableOp_1:value:0<block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0>block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(`:`:`:`:`:*
epsilon%o?:*
is_training( 2'
%block_1_depthwise_BN/FusedBatchNormV3?
block_1_depthwise_relu/Relu6Relu6)block_1_depthwise_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(`2
block_1_depthwise_relu/Relu6?
%block_1_project/Conv2D/ReadVariableOpReadVariableOp.block_1_project_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02'
%block_1_project/Conv2D/ReadVariableOp?
block_1_project/Conv2DConv2D*block_1_depthwise_relu/Relu6:activations:0-block_1_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
block_1_project/Conv2D?
!block_1_project_BN/ReadVariableOpReadVariableOp*block_1_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02#
!block_1_project_BN/ReadVariableOp?
#block_1_project_BN/ReadVariableOp_1ReadVariableOp,block_1_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02%
#block_1_project_BN/ReadVariableOp_1?
2block_1_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp;block_1_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype024
2block_1_project_BN/FusedBatchNormV3/ReadVariableOp?
4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp=block_1_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype026
4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1?
#block_1_project_BN/FusedBatchNormV3FusedBatchNormV3block_1_project/Conv2D:output:0)block_1_project_BN/ReadVariableOp:value:0+block_1_project_BN/ReadVariableOp_1:value:0:block_1_project_BN/FusedBatchNormV3/ReadVariableOp:value:0<block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2%
#block_1_project_BN/FusedBatchNormV3?
$block_2_expand/Conv2D/ReadVariableOpReadVariableOp-block_2_expand_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$block_2_expand/Conv2D/ReadVariableOp?
block_2_expand/Conv2DConv2D'block_1_project_BN/FusedBatchNormV3:y:0,block_2_expand/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
block_2_expand/Conv2D?
 block_2_expand_BN/ReadVariableOpReadVariableOp)block_2_expand_bn_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 block_2_expand_BN/ReadVariableOp?
"block_2_expand_BN/ReadVariableOp_1ReadVariableOp+block_2_expand_bn_readvariableop_1_resource*
_output_shapes	
:?*
dtype02$
"block_2_expand_BN/ReadVariableOp_1?
1block_2_expand_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp:block_2_expand_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype023
1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp?
3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<block_2_expand_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1?
"block_2_expand_BN/FusedBatchNormV3FusedBatchNormV3block_2_expand/Conv2D:output:0(block_2_expand_BN/ReadVariableOp:value:0*block_2_expand_BN/ReadVariableOp_1:value:09block_2_expand_BN/FusedBatchNormV3/ReadVariableOp:value:0;block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2$
"block_2_expand_BN/FusedBatchNormV3?
block_2_expand_relu/Relu6Relu6&block_2_expand_BN/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????(?2
block_2_expand_relu/Relu6?
*block_2_depthwise/depthwise/ReadVariableOpReadVariableOp3block_2_depthwise_depthwise_readvariableop_resource*'
_output_shapes
:?*
dtype02,
*block_2_depthwise/depthwise/ReadVariableOp?
!block_2_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2#
!block_2_depthwise/depthwise/Shape?
)block_2_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2+
)block_2_depthwise/depthwise/dilation_rate?
block_2_depthwise/depthwiseDepthwiseConv2dNative'block_2_expand_relu/Relu6:activations:02block_2_depthwise/depthwise/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
block_2_depthwise/depthwise?
#block_2_depthwise_BN/ReadVariableOpReadVariableOp,block_2_depthwise_bn_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block_2_depthwise_BN/ReadVariableOp?
%block_2_depthwise_BN/ReadVariableOp_1ReadVariableOp.block_2_depthwise_bn_readvariableop_1_resource*
_output_shapes	
:?*
dtype02'
%block_2_depthwise_BN/ReadVariableOp_1?
4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp=block_2_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype026
4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?block_2_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype028
6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
%block_2_depthwise_BN/FusedBatchNormV3FusedBatchNormV3$block_2_depthwise/depthwise:output:0+block_2_depthwise_BN/ReadVariableOp:value:0-block_2_depthwise_BN/ReadVariableOp_1:value:0<block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0>block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2'
%block_2_depthwise_BN/FusedBatchNormV3?
block_2_depthwise_relu/Relu6Relu6)block_2_depthwise_BN/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????(?2
block_2_depthwise_relu/Relu6?
%block_2_project/Conv2D/ReadVariableOpReadVariableOp.block_2_project_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02'
%block_2_project/Conv2D/ReadVariableOp?
block_2_project/Conv2DConv2D*block_2_depthwise_relu/Relu6:activations:0-block_2_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
block_2_project/Conv2D?
!block_2_project_BN/ReadVariableOpReadVariableOp*block_2_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02#
!block_2_project_BN/ReadVariableOp?
#block_2_project_BN/ReadVariableOp_1ReadVariableOp,block_2_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02%
#block_2_project_BN/ReadVariableOp_1?
2block_2_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp;block_2_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype024
2block_2_project_BN/FusedBatchNormV3/ReadVariableOp?
4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp=block_2_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype026
4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1?
#block_2_project_BN/FusedBatchNormV3FusedBatchNormV3block_2_project/Conv2D:output:0)block_2_project_BN/ReadVariableOp:value:0+block_2_project_BN/ReadVariableOp_1:value:0:block_2_project_BN/FusedBatchNormV3/ReadVariableOp:value:0<block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2%
#block_2_project_BN/FusedBatchNormV3?
block_2_add/addAddV2'block_1_project_BN/FusedBatchNormV3:y:0'block_2_project_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(2
block_2_add/add?
C1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
C1/Conv2D/ReadVariableOp?
	C1/Conv2DConv2Dblock_2_add/add:z:0 C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
	C1/Conv2D?
C1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
C1/BiasAdd/ReadVariableOp?

C1/BiasAddBiasAddC1/Conv2D:output:0!C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2

C1/BiasAddi
C1/ReluReluC1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2	
C1/Relu?
C2/Conv2D/ReadVariableOpReadVariableOp!c2_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
C2/Conv2D/ReadVariableOp?
	C2/Conv2DConv2DC1/Relu:activations:0 C2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 *
paddingSAME*
strides
2
	C2/Conv2D?
C2/BiasAdd/ReadVariableOpReadVariableOp"c2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
C2/BiasAdd/ReadVariableOp?

C2/BiasAddBiasAddC2/Conv2D:output:0!C2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 2

C2/BiasAddi
C2/ReluReluC2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
 2	
C2/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 
  2
flatten/Const?
flatten/ReshapeReshapeC2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Relu?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmaxt
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/BiasAdd/ReadVariableOp^C1/Conv2D/ReadVariableOp^C2/BiasAdd/ReadVariableOp^C2/Conv2D/ReadVariableOp^Conv1/Conv2D/ReadVariableOp+^block_1_depthwise/depthwise/ReadVariableOp5^block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp7^block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1$^block_1_depthwise_BN/ReadVariableOp&^block_1_depthwise_BN/ReadVariableOp_1%^block_1_expand/Conv2D/ReadVariableOp2^block_1_expand_BN/FusedBatchNormV3/ReadVariableOp4^block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1!^block_1_expand_BN/ReadVariableOp#^block_1_expand_BN/ReadVariableOp_1&^block_1_project/Conv2D/ReadVariableOp3^block_1_project_BN/FusedBatchNormV3/ReadVariableOp5^block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1"^block_1_project_BN/ReadVariableOp$^block_1_project_BN/ReadVariableOp_1+^block_2_depthwise/depthwise/ReadVariableOp5^block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp7^block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1$^block_2_depthwise_BN/ReadVariableOp&^block_2_depthwise_BN/ReadVariableOp_1%^block_2_expand/Conv2D/ReadVariableOp2^block_2_expand_BN/FusedBatchNormV3/ReadVariableOp4^block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1!^block_2_expand_BN/ReadVariableOp#^block_2_expand_BN/ReadVariableOp_1&^block_2_project/Conv2D/ReadVariableOp3^block_2_project_BN/FusedBatchNormV3/ReadVariableOp5^block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1"^block_2_project_BN/ReadVariableOp$^block_2_project_BN/ReadVariableOp_1)^bn_Conv1/FusedBatchNormV3/ReadVariableOp+^bn_Conv1/FusedBatchNormV3/ReadVariableOp_1^bn_Conv1/ReadVariableOp^bn_Conv1/ReadVariableOp_1^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp1^expanded_conv_depthwise/depthwise/ReadVariableOp;^expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp=^expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1*^expanded_conv_depthwise_BN/ReadVariableOp,^expanded_conv_depthwise_BN/ReadVariableOp_1,^expanded_conv_project/Conv2D/ReadVariableOp9^expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp;^expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1(^expanded_conv_project_BN/ReadVariableOp*^expanded_conv_project_BN/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 26
C1/BiasAdd/ReadVariableOpC1/BiasAdd/ReadVariableOp24
C1/Conv2D/ReadVariableOpC1/Conv2D/ReadVariableOp26
C2/BiasAdd/ReadVariableOpC2/BiasAdd/ReadVariableOp24
C2/Conv2D/ReadVariableOpC2/Conv2D/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2X
*block_1_depthwise/depthwise/ReadVariableOp*block_1_depthwise/depthwise/ReadVariableOp2l
4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp2p
6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_16block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12J
#block_1_depthwise_BN/ReadVariableOp#block_1_depthwise_BN/ReadVariableOp2N
%block_1_depthwise_BN/ReadVariableOp_1%block_1_depthwise_BN/ReadVariableOp_12L
$block_1_expand/Conv2D/ReadVariableOp$block_1_expand/Conv2D/ReadVariableOp2f
1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp2j
3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_13block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_12D
 block_1_expand_BN/ReadVariableOp block_1_expand_BN/ReadVariableOp2H
"block_1_expand_BN/ReadVariableOp_1"block_1_expand_BN/ReadVariableOp_12N
%block_1_project/Conv2D/ReadVariableOp%block_1_project/Conv2D/ReadVariableOp2h
2block_1_project_BN/FusedBatchNormV3/ReadVariableOp2block_1_project_BN/FusedBatchNormV3/ReadVariableOp2l
4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_14block_1_project_BN/FusedBatchNormV3/ReadVariableOp_12F
!block_1_project_BN/ReadVariableOp!block_1_project_BN/ReadVariableOp2J
#block_1_project_BN/ReadVariableOp_1#block_1_project_BN/ReadVariableOp_12X
*block_2_depthwise/depthwise/ReadVariableOp*block_2_depthwise/depthwise/ReadVariableOp2l
4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp2p
6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_16block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12J
#block_2_depthwise_BN/ReadVariableOp#block_2_depthwise_BN/ReadVariableOp2N
%block_2_depthwise_BN/ReadVariableOp_1%block_2_depthwise_BN/ReadVariableOp_12L
$block_2_expand/Conv2D/ReadVariableOp$block_2_expand/Conv2D/ReadVariableOp2f
1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp2j
3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_13block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_12D
 block_2_expand_BN/ReadVariableOp block_2_expand_BN/ReadVariableOp2H
"block_2_expand_BN/ReadVariableOp_1"block_2_expand_BN/ReadVariableOp_12N
%block_2_project/Conv2D/ReadVariableOp%block_2_project/Conv2D/ReadVariableOp2h
2block_2_project_BN/FusedBatchNormV3/ReadVariableOp2block_2_project_BN/FusedBatchNormV3/ReadVariableOp2l
4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_14block_2_project_BN/FusedBatchNormV3/ReadVariableOp_12F
!block_2_project_BN/ReadVariableOp!block_2_project_BN/ReadVariableOp2J
#block_2_project_BN/ReadVariableOp_1#block_2_project_BN/ReadVariableOp_12T
(bn_Conv1/FusedBatchNormV3/ReadVariableOp(bn_Conv1/FusedBatchNormV3/ReadVariableOp2X
*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1*bn_Conv1/FusedBatchNormV3/ReadVariableOp_122
bn_Conv1/ReadVariableOpbn_Conv1/ReadVariableOp26
bn_Conv1/ReadVariableOp_1bn_Conv1/ReadVariableOp_12<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2d
0expanded_conv_depthwise/depthwise/ReadVariableOp0expanded_conv_depthwise/depthwise/ReadVariableOp2x
:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp2|
<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12V
)expanded_conv_depthwise_BN/ReadVariableOp)expanded_conv_depthwise_BN/ReadVariableOp2Z
+expanded_conv_depthwise_BN/ReadVariableOp_1+expanded_conv_depthwise_BN/ReadVariableOp_12Z
+expanded_conv_project/Conv2D/ReadVariableOp+expanded_conv_project/Conv2D/ReadVariableOp2t
8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp2x
:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_12R
'expanded_conv_project_BN/ReadVariableOp'expanded_conv_project_BN/ReadVariableOp2V
)expanded_conv_project_BN/ReadVariableOp_1)expanded_conv_project_BN/ReadVariableOp_1:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?	
?
4__inference_block_2_depthwise_BN_layer_call_fn_16780

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_127232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
m
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_13141

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????(`2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????(`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(`:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
m
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_13270

inputs
identityZ
Relu6Relu6inputs*
T0*0
_output_shapes
:?????????(?2
Relu6p
IdentityIdentityRelu6:activations:0*
T0*0
_output_shapes
:?????????(?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????(?:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?	
?
1__inference_block_1_expand_BN_layer_call_fn_16127

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_120832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
2__inference_block_1_project_BN_layer_call_fn_16502

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_137882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_13621

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_12127

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_13405

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_13234

inputs<
!depthwise_readvariableop_resource:?
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*'
_output_shapes
:?*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
	depthwisev
IdentityIdentitydepthwise:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????(?: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15786

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_15976

inputs8
conv2d_readvariableop_resource: 
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_13126

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
??
?6
!__inference__traced_restore_17686
file_prefix7
assignvariableop_conv1_kernel: /
!assignvariableop_1_bn_conv1_gamma: .
 assignvariableop_2_bn_conv1_beta: 5
'assignvariableop_3_bn_conv1_moving_mean: 9
+assignvariableop_4_bn_conv1_moving_variance: U
;assignvariableop_5_expanded_conv_depthwise_depthwise_kernel: A
3assignvariableop_6_expanded_conv_depthwise_bn_gamma: @
2assignvariableop_7_expanded_conv_depthwise_bn_beta: G
9assignvariableop_8_expanded_conv_depthwise_bn_moving_mean: K
=assignvariableop_9_expanded_conv_depthwise_bn_moving_variance: J
0assignvariableop_10_expanded_conv_project_kernel: @
2assignvariableop_11_expanded_conv_project_bn_gamma:?
1assignvariableop_12_expanded_conv_project_bn_beta:F
8assignvariableop_13_expanded_conv_project_bn_moving_mean:J
<assignvariableop_14_expanded_conv_project_bn_moving_variance:C
)assignvariableop_15_block_1_expand_kernel:`9
+assignvariableop_16_block_1_expand_bn_gamma:`8
*assignvariableop_17_block_1_expand_bn_beta:`?
1assignvariableop_18_block_1_expand_bn_moving_mean:`C
5assignvariableop_19_block_1_expand_bn_moving_variance:`P
6assignvariableop_20_block_1_depthwise_depthwise_kernel:`<
.assignvariableop_21_block_1_depthwise_bn_gamma:`;
-assignvariableop_22_block_1_depthwise_bn_beta:`B
4assignvariableop_23_block_1_depthwise_bn_moving_mean:`F
8assignvariableop_24_block_1_depthwise_bn_moving_variance:`D
*assignvariableop_25_block_1_project_kernel:`:
,assignvariableop_26_block_1_project_bn_gamma:9
+assignvariableop_27_block_1_project_bn_beta:@
2assignvariableop_28_block_1_project_bn_moving_mean:D
6assignvariableop_29_block_1_project_bn_moving_variance:D
)assignvariableop_30_block_2_expand_kernel:?:
+assignvariableop_31_block_2_expand_bn_gamma:	?9
*assignvariableop_32_block_2_expand_bn_beta:	?@
1assignvariableop_33_block_2_expand_bn_moving_mean:	?D
5assignvariableop_34_block_2_expand_bn_moving_variance:	?Q
6assignvariableop_35_block_2_depthwise_depthwise_kernel:?=
.assignvariableop_36_block_2_depthwise_bn_gamma:	?<
-assignvariableop_37_block_2_depthwise_bn_beta:	?C
4assignvariableop_38_block_2_depthwise_bn_moving_mean:	?G
8assignvariableop_39_block_2_depthwise_bn_moving_variance:	?E
*assignvariableop_40_block_2_project_kernel:?:
,assignvariableop_41_block_2_project_bn_gamma:9
+assignvariableop_42_block_2_project_bn_beta:@
2assignvariableop_43_block_2_project_bn_moving_mean:D
6assignvariableop_44_block_2_project_bn_moving_variance:7
assignvariableop_45_c1_kernel:@)
assignvariableop_46_c1_bias:@7
assignvariableop_47_c2_kernel:@ )
assignvariableop_48_c2_bias: 4
 assignvariableop_49_dense_kernel:
??-
assignvariableop_50_dense_bias:	?5
"assignvariableop_51_dense_1_kernel:	?@.
 assignvariableop_52_dense_1_bias:@4
"assignvariableop_53_dense_2_kernel:@
.
 assignvariableop_54_dense_2_bias:
'
assignvariableop_55_adam_iter:	 )
assignvariableop_56_adam_beta_1: )
assignvariableop_57_adam_beta_2: (
assignvariableop_58_adam_decay: 0
&assignvariableop_59_adam_learning_rate: #
assignvariableop_60_total: #
assignvariableop_61_count: %
assignvariableop_62_total_1: %
assignvariableop_63_count_1: >
$assignvariableop_64_adam_c1_kernel_m:@0
"assignvariableop_65_adam_c1_bias_m:@>
$assignvariableop_66_adam_c2_kernel_m:@ 0
"assignvariableop_67_adam_c2_bias_m: ;
'assignvariableop_68_adam_dense_kernel_m:
??4
%assignvariableop_69_adam_dense_bias_m:	?<
)assignvariableop_70_adam_dense_1_kernel_m:	?@5
'assignvariableop_71_adam_dense_1_bias_m:@;
)assignvariableop_72_adam_dense_2_kernel_m:@
5
'assignvariableop_73_adam_dense_2_bias_m:
>
$assignvariableop_74_adam_c1_kernel_v:@0
"assignvariableop_75_adam_c1_bias_v:@>
$assignvariableop_76_adam_c2_kernel_v:@ 0
"assignvariableop_77_adam_c2_bias_v: ;
'assignvariableop_78_adam_dense_kernel_v:
??4
%assignvariableop_79_adam_dense_bias_v:	?<
)assignvariableop_80_adam_dense_1_kernel_v:	?@5
'assignvariableop_81_adam_dense_1_bias_v:@;
)assignvariableop_82_adam_dense_2_kernel_v:@
5
'assignvariableop_83_adam_dense_2_bias_v:

identity_85??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_9?+
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?*
value?*B?*UB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?
value?B?UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_bn_conv1_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_bn_conv1_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp'assignvariableop_3_bn_conv1_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp+assignvariableop_4_bn_conv1_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp;assignvariableop_5_expanded_conv_depthwise_depthwise_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp3assignvariableop_6_expanded_conv_depthwise_bn_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp2assignvariableop_7_expanded_conv_depthwise_bn_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp9assignvariableop_8_expanded_conv_depthwise_bn_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp=assignvariableop_9_expanded_conv_depthwise_bn_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_expanded_conv_project_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp2assignvariableop_11_expanded_conv_project_bn_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp1assignvariableop_12_expanded_conv_project_bn_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp8assignvariableop_13_expanded_conv_project_bn_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp<assignvariableop_14_expanded_conv_project_bn_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_block_1_expand_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_block_1_expand_bn_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_block_1_expand_bn_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp1assignvariableop_18_block_1_expand_bn_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp5assignvariableop_19_block_1_expand_bn_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_block_1_depthwise_depthwise_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp.assignvariableop_21_block_1_depthwise_bn_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp-assignvariableop_22_block_1_depthwise_bn_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp4assignvariableop_23_block_1_depthwise_bn_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp8assignvariableop_24_block_1_depthwise_bn_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_block_1_project_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_block_1_project_bn_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_block_1_project_bn_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_block_1_project_bn_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp6assignvariableop_29_block_1_project_bn_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_block_2_expand_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_block_2_expand_bn_gammaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_block_2_expand_bn_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp1assignvariableop_33_block_2_expand_bn_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp5assignvariableop_34_block_2_expand_bn_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp6assignvariableop_35_block_2_depthwise_depthwise_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp.assignvariableop_36_block_2_depthwise_bn_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp-assignvariableop_37_block_2_depthwise_bn_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp4assignvariableop_38_block_2_depthwise_bn_moving_meanIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp8assignvariableop_39_block_2_depthwise_bn_moving_varianceIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp*assignvariableop_40_block_2_project_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp,assignvariableop_41_block_2_project_bn_gammaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp+assignvariableop_42_block_2_project_bn_betaIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp2assignvariableop_43_block_2_project_bn_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp6assignvariableop_44_block_2_project_bn_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_c1_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_c1_biasIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpassignvariableop_47_c2_kernelIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_c2_biasIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp assignvariableop_49_dense_kernelIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpassignvariableop_50_dense_biasIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp"assignvariableop_51_dense_1_kernelIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp assignvariableop_52_dense_1_biasIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp"assignvariableop_53_dense_2_kernelIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp assignvariableop_54_dense_2_biasIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOpassignvariableop_55_adam_iterIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOpassignvariableop_56_adam_beta_1Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOpassignvariableop_57_adam_beta_2Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOpassignvariableop_58_adam_decayIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp&assignvariableop_59_adam_learning_rateIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOpassignvariableop_60_totalIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOpassignvariableop_61_countIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOpassignvariableop_62_total_1Identity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOpassignvariableop_63_count_1Identity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp$assignvariableop_64_adam_c1_kernel_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp"assignvariableop_65_adam_c1_bias_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp$assignvariableop_66_adam_c2_kernel_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp"assignvariableop_67_adam_c2_bias_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_kernel_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp%assignvariableop_69_adam_dense_bias_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_dense_1_kernel_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp'assignvariableop_71_adam_dense_1_bias_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_dense_2_kernel_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_dense_2_bias_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp$assignvariableop_74_adam_c1_kernel_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp"assignvariableop_75_adam_c1_bias_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp$assignvariableop_76_adam_c2_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp"assignvariableop_77_adam_c2_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp'assignvariableop_78_adam_dense_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp%assignvariableop_79_adam_dense_bias_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_dense_1_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp'assignvariableop_81_adam_dense_1_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp)assignvariableop_82_adam_dense_2_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp'assignvariableop_83_adam_dense_2_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_839
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_84f
Identity_85IdentityIdentity_84:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_85?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_85Identity_85:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_13908

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
?
@__inference_Conv1_layer_call_and_return_conditional_losses_12923

inputs8
conv2d_readvariableop_resource: 
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????x?: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_15000
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: 

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14:`

unknown_15:`

unknown_16:`

unknown_17:`

unknown_18:`$

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`$

unknown_24:`

unknown_25:

unknown_26:

unknown_27:

unknown_28:%

unknown_29:?

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?%

unknown_34:?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:?

unknown_40:

unknown_41:

unknown_42:

unknown_43:$

unknown_44:@

unknown_45:@$

unknown_46:@ 

unknown_47: 

unknown_48:
??

unknown_49:	?

unknown_50:	?@

unknown_51:@

unknown_52:@


unknown_53:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./01234567*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_116492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:?????????x?
!
_user_specified_name	input_1
?
j
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_16248

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????<P`2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????<P`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P`:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_12001

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
%__inference_Conv1_layer_call_fn_15655

inputs!
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_129232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????x?: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
b
F__inference_block_1_pad_layer_call_and_return_conditional_losses_16264

inputs
identity?
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               2
Pad/paddings?
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
Pad?
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
1__inference_block_1_expand_BN_layer_call_fn_16140

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_121272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
(__inference_bn_Conv1_layer_call_fn_15714

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_140752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
1__inference_block_2_expand_BN_layer_call_fn_16640

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_137362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?	
?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15867

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_129902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
=__inference_C1_layer_call_and_return_conditional_losses_13329

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_12519

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_12563

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_17149

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
O
3__inference_block_2_expand_relu_layer_call_fn_16717

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_132242
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????(?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????(?:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
1__inference_block_2_depthwise_layer_call_fn_16729

inputs"
unknown:?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_126362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_12636

inputs<
!depthwise_readvariableop_resource:?
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*'
_output_shapes
:?*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
	depthwise?
IdentityIdentitydepthwise:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
J__inference_block_2_project_layer_call_and_return_conditional_losses_13279

inputs9
conv2d_readvariableop_resource:?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????(?: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
8__inference_expanded_conv_project_BN_layer_call_fn_16028

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_139602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16878

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_12944

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_12849

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_12990

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_17083

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_133582
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
 :W S
/
_output_shapes
:?????????
 
 
_user_specified_nameinputs
?
j
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_13088

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????<P`2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????<P`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P`:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_15230

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: 

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14:`

unknown_15:`

unknown_16:`

unknown_17:`

unknown_18:`$

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`$

unknown_24:`

unknown_25:

unknown_26:

unknown_27:

unknown_28:%

unknown_29:?

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?%

unknown_34:?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:?

unknown_40:

unknown_41:

unknown_42:

unknown_43:$

unknown_44:@

unknown_45:@$

unknown_46:@ 

unknown_47: 

unknown_48:
??

unknown_49:	?

unknown_50:	?@

unknown_51:@

unknown_52:@


unknown_53:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./01234567*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_143572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
8__inference_expanded_conv_project_BN_layer_call_fn_16015

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_130352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_14877
input_1%
conv1_14734: 
bn_conv1_14737: 
bn_conv1_14739: 
bn_conv1_14741: 
bn_conv1_14743: 7
expanded_conv_depthwise_14747: .
 expanded_conv_depthwise_bn_14750: .
 expanded_conv_depthwise_bn_14752: .
 expanded_conv_depthwise_bn_14754: .
 expanded_conv_depthwise_bn_14756: 5
expanded_conv_project_14760: ,
expanded_conv_project_bn_14763:,
expanded_conv_project_bn_14765:,
expanded_conv_project_bn_14767:,
expanded_conv_project_bn_14769:.
block_1_expand_14772:`%
block_1_expand_bn_14775:`%
block_1_expand_bn_14777:`%
block_1_expand_bn_14779:`%
block_1_expand_bn_14781:`1
block_1_depthwise_14786:`(
block_1_depthwise_bn_14789:`(
block_1_depthwise_bn_14791:`(
block_1_depthwise_bn_14793:`(
block_1_depthwise_bn_14795:`/
block_1_project_14799:`&
block_1_project_bn_14802:&
block_1_project_bn_14804:&
block_1_project_bn_14806:&
block_1_project_bn_14808:/
block_2_expand_14811:?&
block_2_expand_bn_14814:	?&
block_2_expand_bn_14816:	?&
block_2_expand_bn_14818:	?&
block_2_expand_bn_14820:	?2
block_2_depthwise_14824:?)
block_2_depthwise_bn_14827:	?)
block_2_depthwise_bn_14829:	?)
block_2_depthwise_bn_14831:	?)
block_2_depthwise_bn_14833:	?0
block_2_project_14837:?&
block_2_project_bn_14840:&
block_2_project_bn_14842:&
block_2_project_bn_14844:&
block_2_project_bn_14846:"
c1_14850:@
c1_14852:@"
c2_14855:@ 
c2_14857: 
dense_14861:
??
dense_14863:	? 
dense_1_14866:	?@
dense_1_14868:@
dense_2_14871:@

dense_2_14873:

identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?)block_1_depthwise/StatefulPartitionedCall?,block_1_depthwise_BN/StatefulPartitionedCall?&block_1_expand/StatefulPartitionedCall?)block_1_expand_BN/StatefulPartitionedCall?'block_1_project/StatefulPartitionedCall?*block_1_project_BN/StatefulPartitionedCall?)block_2_depthwise/StatefulPartitionedCall?,block_2_depthwise_BN/StatefulPartitionedCall?&block_2_expand/StatefulPartitionedCall?)block_2_expand_BN/StatefulPartitionedCall?'block_2_project/StatefulPartitionedCall?*block_2_project_BN/StatefulPartitionedCall? bn_Conv1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?/expanded_conv_depthwise/StatefulPartitionedCall?2expanded_conv_depthwise_BN/StatefulPartitionedCall?-expanded_conv_project/StatefulPartitionedCall?0expanded_conv_project_BN/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1_14734*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_129232
Conv1/StatefulPartitionedCall?
 bn_Conv1/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0bn_conv1_14737bn_conv1_14739bn_conv1_14741bn_conv1_14743*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_140752"
 bn_Conv1/StatefulPartitionedCall?
Conv1_relu/PartitionedCallPartitionedCall)bn_Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_129592
Conv1_relu/PartitionedCall?
/expanded_conv_depthwise/StatefulPartitionedCallStatefulPartitionedCall#Conv1_relu/PartitionedCall:output:0expanded_conv_depthwise_14747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_1296921
/expanded_conv_depthwise/StatefulPartitionedCall?
2expanded_conv_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall8expanded_conv_depthwise/StatefulPartitionedCall:output:0 expanded_conv_depthwise_bn_14750 expanded_conv_depthwise_bn_14752 expanded_conv_depthwise_bn_14754 expanded_conv_depthwise_bn_14756*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_1401824
2expanded_conv_depthwise_BN/StatefulPartitionedCall?
,expanded_conv_depthwise_relu/PartitionedCallPartitionedCall;expanded_conv_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_130052.
,expanded_conv_depthwise_relu/PartitionedCall?
-expanded_conv_project/StatefulPartitionedCallStatefulPartitionedCall5expanded_conv_depthwise_relu/PartitionedCall:output:0expanded_conv_project_14760*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_130142/
-expanded_conv_project/StatefulPartitionedCall?
0expanded_conv_project_BN/StatefulPartitionedCallStatefulPartitionedCall6expanded_conv_project/StatefulPartitionedCall:output:0expanded_conv_project_bn_14763expanded_conv_project_bn_14765expanded_conv_project_bn_14767expanded_conv_project_bn_14769*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_1396022
0expanded_conv_project_BN/StatefulPartitionedCall?
&block_1_expand/StatefulPartitionedCallStatefulPartitionedCall9expanded_conv_project_BN/StatefulPartitionedCall:output:0block_1_expand_14772*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_1_expand_layer_call_and_return_conditional_losses_130522(
&block_1_expand/StatefulPartitionedCall?
)block_1_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_1_expand/StatefulPartitionedCall:output:0block_1_expand_bn_14775block_1_expand_bn_14777block_1_expand_bn_14779block_1_expand_bn_14781*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_139082+
)block_1_expand_BN/StatefulPartitionedCall?
#block_1_expand_relu/PartitionedCallPartitionedCall2block_1_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_130882%
#block_1_expand_relu/PartitionedCall?
block_1_pad/PartitionedCallPartitionedCall,block_1_expand_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????=Q`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_1_pad_layer_call_and_return_conditional_losses_130952
block_1_pad/PartitionedCall?
)block_1_depthwise/StatefulPartitionedCallStatefulPartitionedCall$block_1_pad/PartitionedCall:output:0block_1_depthwise_14786*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_131052+
)block_1_depthwise/StatefulPartitionedCall?
,block_1_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_1_depthwise/StatefulPartitionedCall:output:0block_1_depthwise_bn_14789block_1_depthwise_bn_14791block_1_depthwise_bn_14793block_1_depthwise_bn_14795*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_138462.
,block_1_depthwise_BN/StatefulPartitionedCall?
&block_1_depthwise_relu/PartitionedCallPartitionedCall5block_1_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_131412(
&block_1_depthwise_relu/PartitionedCall?
'block_1_project/StatefulPartitionedCallStatefulPartitionedCall/block_1_depthwise_relu/PartitionedCall:output:0block_1_project_14799*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_1_project_layer_call_and_return_conditional_losses_131502)
'block_1_project/StatefulPartitionedCall?
*block_1_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_1_project/StatefulPartitionedCall:output:0block_1_project_bn_14802block_1_project_bn_14804block_1_project_bn_14806block_1_project_bn_14808*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_137882,
*block_1_project_BN/StatefulPartitionedCall?
&block_2_expand/StatefulPartitionedCallStatefulPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:0block_2_expand_14811*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_2_expand_layer_call_and_return_conditional_losses_131882(
&block_2_expand/StatefulPartitionedCall?
)block_2_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_2_expand/StatefulPartitionedCall:output:0block_2_expand_bn_14814block_2_expand_bn_14816block_2_expand_bn_14818block_2_expand_bn_14820*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_137362+
)block_2_expand_BN/StatefulPartitionedCall?
#block_2_expand_relu/PartitionedCallPartitionedCall2block_2_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_132242%
#block_2_expand_relu/PartitionedCall?
)block_2_depthwise/StatefulPartitionedCallStatefulPartitionedCall,block_2_expand_relu/PartitionedCall:output:0block_2_depthwise_14824*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_132342+
)block_2_depthwise/StatefulPartitionedCall?
,block_2_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_2_depthwise/StatefulPartitionedCall:output:0block_2_depthwise_bn_14827block_2_depthwise_bn_14829block_2_depthwise_bn_14831block_2_depthwise_bn_14833*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_136792.
,block_2_depthwise_BN/StatefulPartitionedCall?
&block_2_depthwise_relu/PartitionedCallPartitionedCall5block_2_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_132702(
&block_2_depthwise_relu/PartitionedCall?
'block_2_project/StatefulPartitionedCallStatefulPartitionedCall/block_2_depthwise_relu/PartitionedCall:output:0block_2_project_14837*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_2_project_layer_call_and_return_conditional_losses_132792)
'block_2_project/StatefulPartitionedCall?
*block_2_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_2_project/StatefulPartitionedCall:output:0block_2_project_bn_14840block_2_project_bn_14842block_2_project_bn_14844block_2_project_bn_14846*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_136212,
*block_2_project_BN/StatefulPartitionedCall?
block_2_add/PartitionedCallPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:03block_2_project_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_2_add_layer_call_and_return_conditional_losses_133162
block_2_add/PartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCall$block_2_add/PartitionedCall:output:0c1_14850c1_14852*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_133292
C1/StatefulPartitionedCall?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0c2_14855c2_14857*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C2_layer_call_and_return_conditional_losses_133462
C2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall#C2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_133582
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_14861dense_14863*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_133712
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_14866dense_1_14868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_133882!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_14871dense_2_14873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_134052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^Conv1/StatefulPartitionedCall*^block_1_depthwise/StatefulPartitionedCall-^block_1_depthwise_BN/StatefulPartitionedCall'^block_1_expand/StatefulPartitionedCall*^block_1_expand_BN/StatefulPartitionedCall(^block_1_project/StatefulPartitionedCall+^block_1_project_BN/StatefulPartitionedCall*^block_2_depthwise/StatefulPartitionedCall-^block_2_depthwise_BN/StatefulPartitionedCall'^block_2_expand/StatefulPartitionedCall*^block_2_expand_BN/StatefulPartitionedCall(^block_2_project/StatefulPartitionedCall+^block_2_project_BN/StatefulPartitionedCall!^bn_Conv1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall0^expanded_conv_depthwise/StatefulPartitionedCall3^expanded_conv_depthwise_BN/StatefulPartitionedCall.^expanded_conv_project/StatefulPartitionedCall1^expanded_conv_project_BN/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2V
)block_1_depthwise/StatefulPartitionedCall)block_1_depthwise/StatefulPartitionedCall2\
,block_1_depthwise_BN/StatefulPartitionedCall,block_1_depthwise_BN/StatefulPartitionedCall2P
&block_1_expand/StatefulPartitionedCall&block_1_expand/StatefulPartitionedCall2V
)block_1_expand_BN/StatefulPartitionedCall)block_1_expand_BN/StatefulPartitionedCall2R
'block_1_project/StatefulPartitionedCall'block_1_project/StatefulPartitionedCall2X
*block_1_project_BN/StatefulPartitionedCall*block_1_project_BN/StatefulPartitionedCall2V
)block_2_depthwise/StatefulPartitionedCall)block_2_depthwise/StatefulPartitionedCall2\
,block_2_depthwise_BN/StatefulPartitionedCall,block_2_depthwise_BN/StatefulPartitionedCall2P
&block_2_expand/StatefulPartitionedCall&block_2_expand/StatefulPartitionedCall2V
)block_2_expand_BN/StatefulPartitionedCall)block_2_expand_BN/StatefulPartitionedCall2R
'block_2_project/StatefulPartitionedCall'block_2_project/StatefulPartitionedCall2X
*block_2_project_BN/StatefulPartitionedCall*block_2_project_BN/StatefulPartitionedCall2D
 bn_Conv1/StatefulPartitionedCall bn_Conv1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2b
/expanded_conv_depthwise/StatefulPartitionedCall/expanded_conv_depthwise/StatefulPartitionedCall2h
2expanded_conv_depthwise_BN/StatefulPartitionedCall2expanded_conv_depthwise_BN/StatefulPartitionedCall2^
-expanded_conv_project/StatefulPartitionedCall-expanded_conv_project/StatefulPartitionedCall2d
0expanded_conv_project_BN/StatefulPartitionedCall0expanded_conv_project_BN/StatefulPartitionedCall:Y U
0
_output_shapes
:?????????x?
!
_user_specified_name	input_1
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_11671

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_15115

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: 

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14:`

unknown_15:`

unknown_16:`

unknown_17:`

unknown_18:`$

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`$

unknown_24:`

unknown_25:

unknown_26:

unknown_27:

unknown_28:%

unknown_29:?

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?%

unknown_34:?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:?

unknown_40:

unknown_41:

unknown_42:

unknown_43:$

unknown_44:@

unknown_45:@$

unknown_46:@ 

unknown_47: 

unknown_48:
??

unknown_49:	?

unknown_50:	?@

unknown_51:@

unknown_52:@


unknown_53:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./01234567*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_134122
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_16972

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16556

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
?
2__inference_block_1_project_BN_layer_call_fn_16476

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_124372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_13073

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?	
?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15854

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_118752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
1__inference_block_2_expand_BN_layer_call_fn_16601

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_125192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
1__inference_block_2_depthwise_layer_call_fn_16736

inputs"
unknown:?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_132342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????(?: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16842

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_11788

inputs;
!depthwise_readvariableop_resource: 
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
	depthwise?
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+??????????????????????????? : 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
J__inference_block_2_project_layer_call_and_return_conditional_losses_16902

inputs9
conv2d_readvariableop_resource:?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????(?: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?

?
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_12969

inputs;
!depthwise_readvariableop_resource: 
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2
	depthwiseu
IdentityIdentitydepthwise:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P : 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?	
?
1__inference_block_2_expand_BN_layer_call_fn_16614

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_125632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_13960

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16238

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_13412

inputs%
conv1_12924: 
bn_conv1_12945: 
bn_conv1_12947: 
bn_conv1_12949: 
bn_conv1_12951: 7
expanded_conv_depthwise_12970: .
 expanded_conv_depthwise_bn_12991: .
 expanded_conv_depthwise_bn_12993: .
 expanded_conv_depthwise_bn_12995: .
 expanded_conv_depthwise_bn_12997: 5
expanded_conv_project_13015: ,
expanded_conv_project_bn_13036:,
expanded_conv_project_bn_13038:,
expanded_conv_project_bn_13040:,
expanded_conv_project_bn_13042:.
block_1_expand_13053:`%
block_1_expand_bn_13074:`%
block_1_expand_bn_13076:`%
block_1_expand_bn_13078:`%
block_1_expand_bn_13080:`1
block_1_depthwise_13106:`(
block_1_depthwise_bn_13127:`(
block_1_depthwise_bn_13129:`(
block_1_depthwise_bn_13131:`(
block_1_depthwise_bn_13133:`/
block_1_project_13151:`&
block_1_project_bn_13172:&
block_1_project_bn_13174:&
block_1_project_bn_13176:&
block_1_project_bn_13178:/
block_2_expand_13189:?&
block_2_expand_bn_13210:	?&
block_2_expand_bn_13212:	?&
block_2_expand_bn_13214:	?&
block_2_expand_bn_13216:	?2
block_2_depthwise_13235:?)
block_2_depthwise_bn_13256:	?)
block_2_depthwise_bn_13258:	?)
block_2_depthwise_bn_13260:	?)
block_2_depthwise_bn_13262:	?0
block_2_project_13280:?&
block_2_project_bn_13301:&
block_2_project_bn_13303:&
block_2_project_bn_13305:&
block_2_project_bn_13307:"
c1_13330:@
c1_13332:@"
c2_13347:@ 
c2_13349: 
dense_13372:
??
dense_13374:	? 
dense_1_13389:	?@
dense_1_13391:@
dense_2_13406:@

dense_2_13408:

identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?)block_1_depthwise/StatefulPartitionedCall?,block_1_depthwise_BN/StatefulPartitionedCall?&block_1_expand/StatefulPartitionedCall?)block_1_expand_BN/StatefulPartitionedCall?'block_1_project/StatefulPartitionedCall?*block_1_project_BN/StatefulPartitionedCall?)block_2_depthwise/StatefulPartitionedCall?,block_2_depthwise_BN/StatefulPartitionedCall?&block_2_expand/StatefulPartitionedCall?)block_2_expand_BN/StatefulPartitionedCall?'block_2_project/StatefulPartitionedCall?*block_2_project_BN/StatefulPartitionedCall? bn_Conv1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?/expanded_conv_depthwise/StatefulPartitionedCall?2expanded_conv_depthwise_BN/StatefulPartitionedCall?-expanded_conv_project/StatefulPartitionedCall?0expanded_conv_project_BN/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_12924*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_129232
Conv1/StatefulPartitionedCall?
 bn_Conv1/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0bn_conv1_12945bn_conv1_12947bn_conv1_12949bn_conv1_12951*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_129442"
 bn_Conv1/StatefulPartitionedCall?
Conv1_relu/PartitionedCallPartitionedCall)bn_Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_129592
Conv1_relu/PartitionedCall?
/expanded_conv_depthwise/StatefulPartitionedCallStatefulPartitionedCall#Conv1_relu/PartitionedCall:output:0expanded_conv_depthwise_12970*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_1296921
/expanded_conv_depthwise/StatefulPartitionedCall?
2expanded_conv_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall8expanded_conv_depthwise/StatefulPartitionedCall:output:0 expanded_conv_depthwise_bn_12991 expanded_conv_depthwise_bn_12993 expanded_conv_depthwise_bn_12995 expanded_conv_depthwise_bn_12997*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_1299024
2expanded_conv_depthwise_BN/StatefulPartitionedCall?
,expanded_conv_depthwise_relu/PartitionedCallPartitionedCall;expanded_conv_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_130052.
,expanded_conv_depthwise_relu/PartitionedCall?
-expanded_conv_project/StatefulPartitionedCallStatefulPartitionedCall5expanded_conv_depthwise_relu/PartitionedCall:output:0expanded_conv_project_13015*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_130142/
-expanded_conv_project/StatefulPartitionedCall?
0expanded_conv_project_BN/StatefulPartitionedCallStatefulPartitionedCall6expanded_conv_project/StatefulPartitionedCall:output:0expanded_conv_project_bn_13036expanded_conv_project_bn_13038expanded_conv_project_bn_13040expanded_conv_project_bn_13042*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_1303522
0expanded_conv_project_BN/StatefulPartitionedCall?
&block_1_expand/StatefulPartitionedCallStatefulPartitionedCall9expanded_conv_project_BN/StatefulPartitionedCall:output:0block_1_expand_13053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_1_expand_layer_call_and_return_conditional_losses_130522(
&block_1_expand/StatefulPartitionedCall?
)block_1_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_1_expand/StatefulPartitionedCall:output:0block_1_expand_bn_13074block_1_expand_bn_13076block_1_expand_bn_13078block_1_expand_bn_13080*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_130732+
)block_1_expand_BN/StatefulPartitionedCall?
#block_1_expand_relu/PartitionedCallPartitionedCall2block_1_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_130882%
#block_1_expand_relu/PartitionedCall?
block_1_pad/PartitionedCallPartitionedCall,block_1_expand_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????=Q`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_1_pad_layer_call_and_return_conditional_losses_130952
block_1_pad/PartitionedCall?
)block_1_depthwise/StatefulPartitionedCallStatefulPartitionedCall$block_1_pad/PartitionedCall:output:0block_1_depthwise_13106*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_131052+
)block_1_depthwise/StatefulPartitionedCall?
,block_1_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_1_depthwise/StatefulPartitionedCall:output:0block_1_depthwise_bn_13127block_1_depthwise_bn_13129block_1_depthwise_bn_13131block_1_depthwise_bn_13133*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_131262.
,block_1_depthwise_BN/StatefulPartitionedCall?
&block_1_depthwise_relu/PartitionedCallPartitionedCall5block_1_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_131412(
&block_1_depthwise_relu/PartitionedCall?
'block_1_project/StatefulPartitionedCallStatefulPartitionedCall/block_1_depthwise_relu/PartitionedCall:output:0block_1_project_13151*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_1_project_layer_call_and_return_conditional_losses_131502)
'block_1_project/StatefulPartitionedCall?
*block_1_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_1_project/StatefulPartitionedCall:output:0block_1_project_bn_13172block_1_project_bn_13174block_1_project_bn_13176block_1_project_bn_13178*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_131712,
*block_1_project_BN/StatefulPartitionedCall?
&block_2_expand/StatefulPartitionedCallStatefulPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:0block_2_expand_13189*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_2_expand_layer_call_and_return_conditional_losses_131882(
&block_2_expand/StatefulPartitionedCall?
)block_2_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_2_expand/StatefulPartitionedCall:output:0block_2_expand_bn_13210block_2_expand_bn_13212block_2_expand_bn_13214block_2_expand_bn_13216*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_132092+
)block_2_expand_BN/StatefulPartitionedCall?
#block_2_expand_relu/PartitionedCallPartitionedCall2block_2_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_132242%
#block_2_expand_relu/PartitionedCall?
)block_2_depthwise/StatefulPartitionedCallStatefulPartitionedCall,block_2_expand_relu/PartitionedCall:output:0block_2_depthwise_13235*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_132342+
)block_2_depthwise/StatefulPartitionedCall?
,block_2_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_2_depthwise/StatefulPartitionedCall:output:0block_2_depthwise_bn_13256block_2_depthwise_bn_13258block_2_depthwise_bn_13260block_2_depthwise_bn_13262*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_132552.
,block_2_depthwise_BN/StatefulPartitionedCall?
&block_2_depthwise_relu/PartitionedCallPartitionedCall5block_2_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_132702(
&block_2_depthwise_relu/PartitionedCall?
'block_2_project/StatefulPartitionedCallStatefulPartitionedCall/block_2_depthwise_relu/PartitionedCall:output:0block_2_project_13280*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_2_project_layer_call_and_return_conditional_losses_132792)
'block_2_project/StatefulPartitionedCall?
*block_2_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_2_project/StatefulPartitionedCall:output:0block_2_project_bn_13301block_2_project_bn_13303block_2_project_bn_13305block_2_project_bn_13307*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_133002,
*block_2_project_BN/StatefulPartitionedCall?
block_2_add/PartitionedCallPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:03block_2_project_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_2_add_layer_call_and_return_conditional_losses_133162
block_2_add/PartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCall$block_2_add/PartitionedCall:output:0c1_13330c1_13332*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_133292
C1/StatefulPartitionedCall?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0c2_13347c2_13349*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C2_layer_call_and_return_conditional_losses_133462
C2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall#C2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_133582
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13372dense_13374*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_133712
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_13389dense_1_13391*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_133882!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_13406dense_2_13408*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_134052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^Conv1/StatefulPartitionedCall*^block_1_depthwise/StatefulPartitionedCall-^block_1_depthwise_BN/StatefulPartitionedCall'^block_1_expand/StatefulPartitionedCall*^block_1_expand_BN/StatefulPartitionedCall(^block_1_project/StatefulPartitionedCall+^block_1_project_BN/StatefulPartitionedCall*^block_2_depthwise/StatefulPartitionedCall-^block_2_depthwise_BN/StatefulPartitionedCall'^block_2_expand/StatefulPartitionedCall*^block_2_expand_BN/StatefulPartitionedCall(^block_2_project/StatefulPartitionedCall+^block_2_project_BN/StatefulPartitionedCall!^bn_Conv1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall0^expanded_conv_depthwise/StatefulPartitionedCall3^expanded_conv_depthwise_BN/StatefulPartitionedCall.^expanded_conv_project/StatefulPartitionedCall1^expanded_conv_project_BN/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2V
)block_1_depthwise/StatefulPartitionedCall)block_1_depthwise/StatefulPartitionedCall2\
,block_1_depthwise_BN/StatefulPartitionedCall,block_1_depthwise_BN/StatefulPartitionedCall2P
&block_1_expand/StatefulPartitionedCall&block_1_expand/StatefulPartitionedCall2V
)block_1_expand_BN/StatefulPartitionedCall)block_1_expand_BN/StatefulPartitionedCall2R
'block_1_project/StatefulPartitionedCall'block_1_project/StatefulPartitionedCall2X
*block_1_project_BN/StatefulPartitionedCall*block_1_project_BN/StatefulPartitionedCall2V
)block_2_depthwise/StatefulPartitionedCall)block_2_depthwise/StatefulPartitionedCall2\
,block_2_depthwise_BN/StatefulPartitionedCall,block_2_depthwise_BN/StatefulPartitionedCall2P
&block_2_expand/StatefulPartitionedCall&block_2_expand/StatefulPartitionedCall2V
)block_2_expand_BN/StatefulPartitionedCall)block_2_expand_BN/StatefulPartitionedCall2R
'block_2_project/StatefulPartitionedCall'block_2_project/StatefulPartitionedCall2X
*block_2_project_BN/StatefulPartitionedCall*block_2_project_BN/StatefulPartitionedCall2D
 bn_Conv1/StatefulPartitionedCall bn_Conv1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2b
/expanded_conv_depthwise/StatefulPartitionedCall/expanded_conv_depthwise/StatefulPartitionedCall2h
2expanded_conv_depthwise_BN/StatefulPartitionedCall2expanded_conv_depthwise_BN/StatefulPartitionedCall2^
-expanded_conv_project/StatefulPartitionedCall-expanded_conv_project/StatefulPartitionedCall2d
0expanded_conv_project_BN/StatefulPartitionedCall0expanded_conv_project_BN/StatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
s
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_15962

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????<P 2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????<P 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P :W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?

?
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_13105

inputs;
!depthwise_readvariableop_resource:`
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:`*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      `      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(`*
paddingVALID*
strides
2
	depthwiseu
IdentityIdentitydepthwise:output:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????=Q`: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:W S
/
_output_shapes
:?????????=Q`
 
_user_specified_nameinputs
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15750

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_13679

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
p
F__inference_block_2_add_layer_call_and_return_conditional_losses_13316

inputs
inputs_1
identity_
addAddV2inputsinputs_1*
T0*/
_output_shapes
:?????????(2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????(:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
=__inference_C2_layer_call_and_return_conditional_losses_13346

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????
 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
I__inference_block_1_expand_layer_call_and_return_conditional_losses_16114

inputs8
conv2d_readvariableop_resource:`
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P`*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16426

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16372

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16064

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_16754

inputs<
!depthwise_readvariableop_resource:?
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*'
_output_shapes
:?*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
	depthwisev
IdentityIdentitydepthwise:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????(?: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
2__inference_block_1_project_BN_layer_call_fn_16489

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_131712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
7__inference_expanded_conv_depthwise_layer_call_fn_15803

inputs!
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_117882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+??????????????????????????? : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
I__inference_block_2_expand_layer_call_and_return_conditional_losses_16588

inputs9
conv2d_readvariableop_resource:?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
Conv2Ds
IdentityIdentityConv2D:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????(: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
b
F__inference_block_1_pad_layer_call_and_return_conditional_losses_13095

inputs
identity?
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               2
Pad/paddingsj
PadPadinputsPad/paddings:output:0*
T0*/
_output_shapes
:?????????=Q`2
Padh
IdentityIdentityPad:output:0*
T0*/
_output_shapes
:?????????=Q`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P`:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
?
"__inference_C1_layer_call_fn_17047

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_133292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
?
4__inference_block_2_depthwise_BN_layer_call_fn_16767

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_126792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15934

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
W
+__inference_block_2_add_layer_call_fn_17032
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_2_add_layer_call_and_return_conditional_losses_133162
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????(:?????????(:Y U
/
_output_shapes
:?????????(
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????(
"
_user_specified_name
inputs/1
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_12679

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_17129

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_13014

inputs8
conv2d_readvariableop_resource: 
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?

?
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_12224

inputs;
!depthwise_readvariableop_resource:`
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:`*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      `      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????`*
paddingVALID*
strides
2
	depthwise?
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????`: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
4__inference_block_1_depthwise_BN_layer_call_fn_16354

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_138462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?	
?
2__inference_block_1_project_BN_layer_call_fn_16463

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_123932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_dense_1_layer_call_fn_17118

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_133882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
O
3__inference_block_1_expand_relu_layer_call_fn_16243

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_130882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<P`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P`:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
?
I__inference_block_1_expand_layer_call_and_return_conditional_losses_13052

inputs8
conv2d_readvariableop_resource:`
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P`*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16202

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_13035

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
a
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_12959

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????<P 2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????<P 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P :W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_14357

inputs%
conv1_14214: 
bn_conv1_14217: 
bn_conv1_14219: 
bn_conv1_14221: 
bn_conv1_14223: 7
expanded_conv_depthwise_14227: .
 expanded_conv_depthwise_bn_14230: .
 expanded_conv_depthwise_bn_14232: .
 expanded_conv_depthwise_bn_14234: .
 expanded_conv_depthwise_bn_14236: 5
expanded_conv_project_14240: ,
expanded_conv_project_bn_14243:,
expanded_conv_project_bn_14245:,
expanded_conv_project_bn_14247:,
expanded_conv_project_bn_14249:.
block_1_expand_14252:`%
block_1_expand_bn_14255:`%
block_1_expand_bn_14257:`%
block_1_expand_bn_14259:`%
block_1_expand_bn_14261:`1
block_1_depthwise_14266:`(
block_1_depthwise_bn_14269:`(
block_1_depthwise_bn_14271:`(
block_1_depthwise_bn_14273:`(
block_1_depthwise_bn_14275:`/
block_1_project_14279:`&
block_1_project_bn_14282:&
block_1_project_bn_14284:&
block_1_project_bn_14286:&
block_1_project_bn_14288:/
block_2_expand_14291:?&
block_2_expand_bn_14294:	?&
block_2_expand_bn_14296:	?&
block_2_expand_bn_14298:	?&
block_2_expand_bn_14300:	?2
block_2_depthwise_14304:?)
block_2_depthwise_bn_14307:	?)
block_2_depthwise_bn_14309:	?)
block_2_depthwise_bn_14311:	?)
block_2_depthwise_bn_14313:	?0
block_2_project_14317:?&
block_2_project_bn_14320:&
block_2_project_bn_14322:&
block_2_project_bn_14324:&
block_2_project_bn_14326:"
c1_14330:@
c1_14332:@"
c2_14335:@ 
c2_14337: 
dense_14341:
??
dense_14343:	? 
dense_1_14346:	?@
dense_1_14348:@
dense_2_14351:@

dense_2_14353:

identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?)block_1_depthwise/StatefulPartitionedCall?,block_1_depthwise_BN/StatefulPartitionedCall?&block_1_expand/StatefulPartitionedCall?)block_1_expand_BN/StatefulPartitionedCall?'block_1_project/StatefulPartitionedCall?*block_1_project_BN/StatefulPartitionedCall?)block_2_depthwise/StatefulPartitionedCall?,block_2_depthwise_BN/StatefulPartitionedCall?&block_2_expand/StatefulPartitionedCall?)block_2_expand_BN/StatefulPartitionedCall?'block_2_project/StatefulPartitionedCall?*block_2_project_BN/StatefulPartitionedCall? bn_Conv1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?/expanded_conv_depthwise/StatefulPartitionedCall?2expanded_conv_depthwise_BN/StatefulPartitionedCall?-expanded_conv_project/StatefulPartitionedCall?0expanded_conv_project_BN/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_14214*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_129232
Conv1/StatefulPartitionedCall?
 bn_Conv1/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0bn_conv1_14217bn_conv1_14219bn_conv1_14221bn_conv1_14223*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_140752"
 bn_Conv1/StatefulPartitionedCall?
Conv1_relu/PartitionedCallPartitionedCall)bn_Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_129592
Conv1_relu/PartitionedCall?
/expanded_conv_depthwise/StatefulPartitionedCallStatefulPartitionedCall#Conv1_relu/PartitionedCall:output:0expanded_conv_depthwise_14227*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_1296921
/expanded_conv_depthwise/StatefulPartitionedCall?
2expanded_conv_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall8expanded_conv_depthwise/StatefulPartitionedCall:output:0 expanded_conv_depthwise_bn_14230 expanded_conv_depthwise_bn_14232 expanded_conv_depthwise_bn_14234 expanded_conv_depthwise_bn_14236*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_1401824
2expanded_conv_depthwise_BN/StatefulPartitionedCall?
,expanded_conv_depthwise_relu/PartitionedCallPartitionedCall;expanded_conv_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_130052.
,expanded_conv_depthwise_relu/PartitionedCall?
-expanded_conv_project/StatefulPartitionedCallStatefulPartitionedCall5expanded_conv_depthwise_relu/PartitionedCall:output:0expanded_conv_project_14240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_130142/
-expanded_conv_project/StatefulPartitionedCall?
0expanded_conv_project_BN/StatefulPartitionedCallStatefulPartitionedCall6expanded_conv_project/StatefulPartitionedCall:output:0expanded_conv_project_bn_14243expanded_conv_project_bn_14245expanded_conv_project_bn_14247expanded_conv_project_bn_14249*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_1396022
0expanded_conv_project_BN/StatefulPartitionedCall?
&block_1_expand/StatefulPartitionedCallStatefulPartitionedCall9expanded_conv_project_BN/StatefulPartitionedCall:output:0block_1_expand_14252*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_1_expand_layer_call_and_return_conditional_losses_130522(
&block_1_expand/StatefulPartitionedCall?
)block_1_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_1_expand/StatefulPartitionedCall:output:0block_1_expand_bn_14255block_1_expand_bn_14257block_1_expand_bn_14259block_1_expand_bn_14261*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_139082+
)block_1_expand_BN/StatefulPartitionedCall?
#block_1_expand_relu/PartitionedCallPartitionedCall2block_1_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_130882%
#block_1_expand_relu/PartitionedCall?
block_1_pad/PartitionedCallPartitionedCall,block_1_expand_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????=Q`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_1_pad_layer_call_and_return_conditional_losses_130952
block_1_pad/PartitionedCall?
)block_1_depthwise/StatefulPartitionedCallStatefulPartitionedCall$block_1_pad/PartitionedCall:output:0block_1_depthwise_14266*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_131052+
)block_1_depthwise/StatefulPartitionedCall?
,block_1_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_1_depthwise/StatefulPartitionedCall:output:0block_1_depthwise_bn_14269block_1_depthwise_bn_14271block_1_depthwise_bn_14273block_1_depthwise_bn_14275*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_138462.
,block_1_depthwise_BN/StatefulPartitionedCall?
&block_1_depthwise_relu/PartitionedCallPartitionedCall5block_1_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_131412(
&block_1_depthwise_relu/PartitionedCall?
'block_1_project/StatefulPartitionedCallStatefulPartitionedCall/block_1_depthwise_relu/PartitionedCall:output:0block_1_project_14279*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_1_project_layer_call_and_return_conditional_losses_131502)
'block_1_project/StatefulPartitionedCall?
*block_1_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_1_project/StatefulPartitionedCall:output:0block_1_project_bn_14282block_1_project_bn_14284block_1_project_bn_14286block_1_project_bn_14288*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_137882,
*block_1_project_BN/StatefulPartitionedCall?
&block_2_expand/StatefulPartitionedCallStatefulPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:0block_2_expand_14291*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_2_expand_layer_call_and_return_conditional_losses_131882(
&block_2_expand/StatefulPartitionedCall?
)block_2_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_2_expand/StatefulPartitionedCall:output:0block_2_expand_bn_14294block_2_expand_bn_14296block_2_expand_bn_14298block_2_expand_bn_14300*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_137362+
)block_2_expand_BN/StatefulPartitionedCall?
#block_2_expand_relu/PartitionedCallPartitionedCall2block_2_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_132242%
#block_2_expand_relu/PartitionedCall?
)block_2_depthwise/StatefulPartitionedCallStatefulPartitionedCall,block_2_expand_relu/PartitionedCall:output:0block_2_depthwise_14304*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_132342+
)block_2_depthwise/StatefulPartitionedCall?
,block_2_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_2_depthwise/StatefulPartitionedCall:output:0block_2_depthwise_bn_14307block_2_depthwise_bn_14309block_2_depthwise_bn_14311block_2_depthwise_bn_14313*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_136792.
,block_2_depthwise_BN/StatefulPartitionedCall?
&block_2_depthwise_relu/PartitionedCallPartitionedCall5block_2_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_132702(
&block_2_depthwise_relu/PartitionedCall?
'block_2_project/StatefulPartitionedCallStatefulPartitionedCall/block_2_depthwise_relu/PartitionedCall:output:0block_2_project_14317*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_2_project_layer_call_and_return_conditional_losses_132792)
'block_2_project/StatefulPartitionedCall?
*block_2_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_2_project/StatefulPartitionedCall:output:0block_2_project_bn_14320block_2_project_bn_14322block_2_project_bn_14324block_2_project_bn_14326*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_136212,
*block_2_project_BN/StatefulPartitionedCall?
block_2_add/PartitionedCallPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:03block_2_project_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_2_add_layer_call_and_return_conditional_losses_133162
block_2_add/PartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCall$block_2_add/PartitionedCall:output:0c1_14330c1_14332*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_133292
C1/StatefulPartitionedCall?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0c2_14335c2_14337*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C2_layer_call_and_return_conditional_losses_133462
C2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall#C2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_133582
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_14341dense_14343*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_133712
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_14346dense_1_14348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_133882!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_14351dense_2_14353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_134052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^Conv1/StatefulPartitionedCall*^block_1_depthwise/StatefulPartitionedCall-^block_1_depthwise_BN/StatefulPartitionedCall'^block_1_expand/StatefulPartitionedCall*^block_1_expand_BN/StatefulPartitionedCall(^block_1_project/StatefulPartitionedCall+^block_1_project_BN/StatefulPartitionedCall*^block_2_depthwise/StatefulPartitionedCall-^block_2_depthwise_BN/StatefulPartitionedCall'^block_2_expand/StatefulPartitionedCall*^block_2_expand_BN/StatefulPartitionedCall(^block_2_project/StatefulPartitionedCall+^block_2_project_BN/StatefulPartitionedCall!^bn_Conv1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall0^expanded_conv_depthwise/StatefulPartitionedCall3^expanded_conv_depthwise_BN/StatefulPartitionedCall.^expanded_conv_project/StatefulPartitionedCall1^expanded_conv_project_BN/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2V
)block_1_depthwise/StatefulPartitionedCall)block_1_depthwise/StatefulPartitionedCall2\
,block_1_depthwise_BN/StatefulPartitionedCall,block_1_depthwise_BN/StatefulPartitionedCall2P
&block_1_expand/StatefulPartitionedCall&block_1_expand/StatefulPartitionedCall2V
)block_1_expand_BN/StatefulPartitionedCall)block_1_expand_BN/StatefulPartitionedCall2R
'block_1_project/StatefulPartitionedCall'block_1_project/StatefulPartitionedCall2X
*block_1_project_BN/StatefulPartitionedCall*block_1_project_BN/StatefulPartitionedCall2V
)block_2_depthwise/StatefulPartitionedCall)block_2_depthwise/StatefulPartitionedCall2\
,block_2_depthwise_BN/StatefulPartitionedCall,block_2_depthwise_BN/StatefulPartitionedCall2P
&block_2_expand/StatefulPartitionedCall&block_2_expand/StatefulPartitionedCall2V
)block_2_expand_BN/StatefulPartitionedCall)block_2_expand_BN/StatefulPartitionedCall2R
'block_2_project/StatefulPartitionedCall'block_2_project/StatefulPartitionedCall2X
*block_2_project_BN/StatefulPartitionedCall*block_2_project_BN/StatefulPartitionedCall2D
 bn_Conv1/StatefulPartitionedCall bn_Conv1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2b
/expanded_conv_depthwise/StatefulPartitionedCall/expanded_conv_depthwise/StatefulPartitionedCall2h
2expanded_conv_depthwise_BN/StatefulPartitionedCall2expanded_conv_depthwise_BN/StatefulPartitionedCall2^
-expanded_conv_project/StatefulPartitionedCall-expanded_conv_project/StatefulPartitionedCall2d
0expanded_conv_project_BN/StatefulPartitionedCall0expanded_conv_project_BN/StatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
G
+__inference_block_1_pad_layer_call_fn_16258

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????=Q`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_1_pad_layer_call_and_return_conditional_losses_130952
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????=Q`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P`:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
m
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_16436

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????(`2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????(`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(`:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
s
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_13005

inputs
identityY
Relu6Relu6inputs*
T0*/
_output_shapes
:?????????<P 2
Relu6o
IdentityIdentityRelu6:activations:0*
T0*/
_output_shapes
:?????????<P 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P :W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15898

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_13525
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: 

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14:`

unknown_15:`

unknown_16:`

unknown_17:`

unknown_18:`$

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`$

unknown_24:`

unknown_25:

unknown_26:

unknown_27:

unknown_28:%

unknown_29:?

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?%

unknown_34:?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:?

unknown_40:

unknown_41:

unknown_42:

unknown_43:$

unknown_44:@

unknown_45:@$

unknown_46:@ 

unknown_47: 

unknown_48:
??

unknown_49:	?

unknown_50:	?@

unknown_51:@

unknown_52:@


unknown_53:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./01234567*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_134122
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:?????????x?
!
_user_specified_name	input_1
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_13300

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
R
6__inference_block_1_depthwise_relu_layer_call_fn_16431

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_131412
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????(`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(`:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_11715

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_16745

inputs<
!depthwise_readvariableop_resource:?
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*'
_output_shapes
:?*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
	depthwise?
IdentityIdentitydepthwise:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
j
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_13224

inputs
identityZ
Relu6Relu6inputs*
T0*0
_output_shapes
:?????????(?2
Relu6p
IdentityIdentityRelu6:activations:0*
T0*0
_output_shapes
:?????????(?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????(?:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15732

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16520

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_13255

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
J__inference_block_1_project_layer_call_and_return_conditional_losses_13150

inputs8
conv2d_readvariableop_resource:`
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????(`: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_13371

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16082

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
1__inference_block_1_expand_BN_layer_call_fn_16166

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_139082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?
?
7__inference_expanded_conv_depthwise_layer_call_fn_15810

inputs!
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_129692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_12311

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
R
6__inference_block_2_depthwise_relu_layer_call_fn_16883

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_132702
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????(?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????(?:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_13788

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_14585
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: 

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14:`

unknown_15:`

unknown_16:`

unknown_17:`

unknown_18:`$

unknown_19:`

unknown_20:`

unknown_21:`

unknown_22:`

unknown_23:`$

unknown_24:`

unknown_25:

unknown_26:

unknown_27:

unknown_28:%

unknown_29:?

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?%

unknown_34:?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:?

unknown_40:

unknown_41:

unknown_42:

unknown_43:$

unknown_44:@

unknown_45:@$

unknown_46:@ 

unknown_47: 

unknown_48:
??

unknown_49:	?

unknown_50:	?@

unknown_51:@

unknown_52:@


unknown_53:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./01234567*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_143572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:?????????x?
!
_user_specified_name	input_1
?
?
%__inference_dense_layer_call_fn_17098

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_133712
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15952

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
2__inference_block_2_project_BN_layer_call_fn_16941

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_133002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15841

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_118312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_17109

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16100

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
1__inference_block_2_expand_BN_layer_call_fn_16627

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_132092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?	
?
8__inference_expanded_conv_project_BN_layer_call_fn_16002

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_120012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
(__inference_bn_Conv1_layer_call_fn_15688

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_117152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
2__inference_block_2_project_BN_layer_call_fn_16954

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_136212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_13846

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
?
5__inference_expanded_conv_project_layer_call_fn_15969

inputs!
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_130142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?	
?
4__inference_block_1_depthwise_BN_layer_call_fn_16315

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_122672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16712

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
'__inference_dense_2_layer_call_fn_17138

inputs
unknown:@

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_134052
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_12437

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_11831

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
J__inference_block_1_project_layer_call_and_return_conditional_losses_16450

inputs8
conv2d_readvariableop_resource:`
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????(`: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
j
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_16722

inputs
identityZ
Relu6Relu6inputs*
T0*0
_output_shapes
:?????????(?2
Relu6p
IdentityIdentityRelu6:activations:0*
T0*0
_output_shapes
:?????????(?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????(?:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_13736

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?	
?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15880

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_140182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_14731
input_1%
conv1_14588: 
bn_conv1_14591: 
bn_conv1_14593: 
bn_conv1_14595: 
bn_conv1_14597: 7
expanded_conv_depthwise_14601: .
 expanded_conv_depthwise_bn_14604: .
 expanded_conv_depthwise_bn_14606: .
 expanded_conv_depthwise_bn_14608: .
 expanded_conv_depthwise_bn_14610: 5
expanded_conv_project_14614: ,
expanded_conv_project_bn_14617:,
expanded_conv_project_bn_14619:,
expanded_conv_project_bn_14621:,
expanded_conv_project_bn_14623:.
block_1_expand_14626:`%
block_1_expand_bn_14629:`%
block_1_expand_bn_14631:`%
block_1_expand_bn_14633:`%
block_1_expand_bn_14635:`1
block_1_depthwise_14640:`(
block_1_depthwise_bn_14643:`(
block_1_depthwise_bn_14645:`(
block_1_depthwise_bn_14647:`(
block_1_depthwise_bn_14649:`/
block_1_project_14653:`&
block_1_project_bn_14656:&
block_1_project_bn_14658:&
block_1_project_bn_14660:&
block_1_project_bn_14662:/
block_2_expand_14665:?&
block_2_expand_bn_14668:	?&
block_2_expand_bn_14670:	?&
block_2_expand_bn_14672:	?&
block_2_expand_bn_14674:	?2
block_2_depthwise_14678:?)
block_2_depthwise_bn_14681:	?)
block_2_depthwise_bn_14683:	?)
block_2_depthwise_bn_14685:	?)
block_2_depthwise_bn_14687:	?0
block_2_project_14691:?&
block_2_project_bn_14694:&
block_2_project_bn_14696:&
block_2_project_bn_14698:&
block_2_project_bn_14700:"
c1_14704:@
c1_14706:@"
c2_14709:@ 
c2_14711: 
dense_14715:
??
dense_14717:	? 
dense_1_14720:	?@
dense_1_14722:@
dense_2_14725:@

dense_2_14727:

identity??C1/StatefulPartitionedCall?C2/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?)block_1_depthwise/StatefulPartitionedCall?,block_1_depthwise_BN/StatefulPartitionedCall?&block_1_expand/StatefulPartitionedCall?)block_1_expand_BN/StatefulPartitionedCall?'block_1_project/StatefulPartitionedCall?*block_1_project_BN/StatefulPartitionedCall?)block_2_depthwise/StatefulPartitionedCall?,block_2_depthwise_BN/StatefulPartitionedCall?&block_2_expand/StatefulPartitionedCall?)block_2_expand_BN/StatefulPartitionedCall?'block_2_project/StatefulPartitionedCall?*block_2_project_BN/StatefulPartitionedCall? bn_Conv1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?/expanded_conv_depthwise/StatefulPartitionedCall?2expanded_conv_depthwise_BN/StatefulPartitionedCall?-expanded_conv_project/StatefulPartitionedCall?0expanded_conv_project_BN/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1_14588*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_129232
Conv1/StatefulPartitionedCall?
 bn_Conv1/StatefulPartitionedCallStatefulPartitionedCall&Conv1/StatefulPartitionedCall:output:0bn_conv1_14591bn_conv1_14593bn_conv1_14595bn_conv1_14597*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_129442"
 bn_Conv1/StatefulPartitionedCall?
Conv1_relu/PartitionedCallPartitionedCall)bn_Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_129592
Conv1_relu/PartitionedCall?
/expanded_conv_depthwise/StatefulPartitionedCallStatefulPartitionedCall#Conv1_relu/PartitionedCall:output:0expanded_conv_depthwise_14601*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_1296921
/expanded_conv_depthwise/StatefulPartitionedCall?
2expanded_conv_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall8expanded_conv_depthwise/StatefulPartitionedCall:output:0 expanded_conv_depthwise_bn_14604 expanded_conv_depthwise_bn_14606 expanded_conv_depthwise_bn_14608 expanded_conv_depthwise_bn_14610*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_1299024
2expanded_conv_depthwise_BN/StatefulPartitionedCall?
,expanded_conv_depthwise_relu/PartitionedCallPartitionedCall;expanded_conv_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_130052.
,expanded_conv_depthwise_relu/PartitionedCall?
-expanded_conv_project/StatefulPartitionedCallStatefulPartitionedCall5expanded_conv_depthwise_relu/PartitionedCall:output:0expanded_conv_project_14614*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_130142/
-expanded_conv_project/StatefulPartitionedCall?
0expanded_conv_project_BN/StatefulPartitionedCallStatefulPartitionedCall6expanded_conv_project/StatefulPartitionedCall:output:0expanded_conv_project_bn_14617expanded_conv_project_bn_14619expanded_conv_project_bn_14621expanded_conv_project_bn_14623*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_1303522
0expanded_conv_project_BN/StatefulPartitionedCall?
&block_1_expand/StatefulPartitionedCallStatefulPartitionedCall9expanded_conv_project_BN/StatefulPartitionedCall:output:0block_1_expand_14626*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_1_expand_layer_call_and_return_conditional_losses_130522(
&block_1_expand/StatefulPartitionedCall?
)block_1_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_1_expand/StatefulPartitionedCall:output:0block_1_expand_bn_14629block_1_expand_bn_14631block_1_expand_bn_14633block_1_expand_bn_14635*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_130732+
)block_1_expand_BN/StatefulPartitionedCall?
#block_1_expand_relu/PartitionedCallPartitionedCall2block_1_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_130882%
#block_1_expand_relu/PartitionedCall?
block_1_pad/PartitionedCallPartitionedCall,block_1_expand_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????=Q`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_1_pad_layer_call_and_return_conditional_losses_130952
block_1_pad/PartitionedCall?
)block_1_depthwise/StatefulPartitionedCallStatefulPartitionedCall$block_1_pad/PartitionedCall:output:0block_1_depthwise_14640*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_131052+
)block_1_depthwise/StatefulPartitionedCall?
,block_1_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_1_depthwise/StatefulPartitionedCall:output:0block_1_depthwise_bn_14643block_1_depthwise_bn_14645block_1_depthwise_bn_14647block_1_depthwise_bn_14649*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_131262.
,block_1_depthwise_BN/StatefulPartitionedCall?
&block_1_depthwise_relu/PartitionedCallPartitionedCall5block_1_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_131412(
&block_1_depthwise_relu/PartitionedCall?
'block_1_project/StatefulPartitionedCallStatefulPartitionedCall/block_1_depthwise_relu/PartitionedCall:output:0block_1_project_14653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_1_project_layer_call_and_return_conditional_losses_131502)
'block_1_project/StatefulPartitionedCall?
*block_1_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_1_project/StatefulPartitionedCall:output:0block_1_project_bn_14656block_1_project_bn_14658block_1_project_bn_14660block_1_project_bn_14662*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_131712,
*block_1_project_BN/StatefulPartitionedCall?
&block_2_expand/StatefulPartitionedCallStatefulPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:0block_2_expand_14665*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_2_expand_layer_call_and_return_conditional_losses_131882(
&block_2_expand/StatefulPartitionedCall?
)block_2_expand_BN/StatefulPartitionedCallStatefulPartitionedCall/block_2_expand/StatefulPartitionedCall:output:0block_2_expand_bn_14668block_2_expand_bn_14670block_2_expand_bn_14672block_2_expand_bn_14674*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_132092+
)block_2_expand_BN/StatefulPartitionedCall?
#block_2_expand_relu/PartitionedCallPartitionedCall2block_2_expand_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_132242%
#block_2_expand_relu/PartitionedCall?
)block_2_depthwise/StatefulPartitionedCallStatefulPartitionedCall,block_2_expand_relu/PartitionedCall:output:0block_2_depthwise_14678*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_132342+
)block_2_depthwise/StatefulPartitionedCall?
,block_2_depthwise_BN/StatefulPartitionedCallStatefulPartitionedCall2block_2_depthwise/StatefulPartitionedCall:output:0block_2_depthwise_bn_14681block_2_depthwise_bn_14683block_2_depthwise_bn_14685block_2_depthwise_bn_14687*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_132552.
,block_2_depthwise_BN/StatefulPartitionedCall?
&block_2_depthwise_relu/PartitionedCallPartitionedCall5block_2_depthwise_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_132702(
&block_2_depthwise_relu/PartitionedCall?
'block_2_project/StatefulPartitionedCallStatefulPartitionedCall/block_2_depthwise_relu/PartitionedCall:output:0block_2_project_14691*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_2_project_layer_call_and_return_conditional_losses_132792)
'block_2_project/StatefulPartitionedCall?
*block_2_project_BN/StatefulPartitionedCallStatefulPartitionedCall0block_2_project/StatefulPartitionedCall:output:0block_2_project_bn_14694block_2_project_bn_14696block_2_project_bn_14698block_2_project_bn_14700*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_133002,
*block_2_project_BN/StatefulPartitionedCall?
block_2_add/PartitionedCallPartitionedCall3block_1_project_BN/StatefulPartitionedCall:output:03block_2_project_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block_2_add_layer_call_and_return_conditional_losses_133162
block_2_add/PartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCall$block_2_add/PartitionedCall:output:0c1_14704c1_14706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_133292
C1/StatefulPartitionedCall?
C2/StatefulPartitionedCallStatefulPartitionedCall#C1/StatefulPartitionedCall:output:0c2_14709c2_14711*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_C2_layer_call_and_return_conditional_losses_133462
C2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall#C2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_133582
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_14715dense_14717*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_133712
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_14720dense_1_14722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_133882!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_14725dense_2_14727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_134052!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C2/StatefulPartitionedCall^Conv1/StatefulPartitionedCall*^block_1_depthwise/StatefulPartitionedCall-^block_1_depthwise_BN/StatefulPartitionedCall'^block_1_expand/StatefulPartitionedCall*^block_1_expand_BN/StatefulPartitionedCall(^block_1_project/StatefulPartitionedCall+^block_1_project_BN/StatefulPartitionedCall*^block_2_depthwise/StatefulPartitionedCall-^block_2_depthwise_BN/StatefulPartitionedCall'^block_2_expand/StatefulPartitionedCall*^block_2_expand_BN/StatefulPartitionedCall(^block_2_project/StatefulPartitionedCall+^block_2_project_BN/StatefulPartitionedCall!^bn_Conv1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall0^expanded_conv_depthwise/StatefulPartitionedCall3^expanded_conv_depthwise_BN/StatefulPartitionedCall.^expanded_conv_project/StatefulPartitionedCall1^expanded_conv_project_BN/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C2/StatefulPartitionedCallC2/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2V
)block_1_depthwise/StatefulPartitionedCall)block_1_depthwise/StatefulPartitionedCall2\
,block_1_depthwise_BN/StatefulPartitionedCall,block_1_depthwise_BN/StatefulPartitionedCall2P
&block_1_expand/StatefulPartitionedCall&block_1_expand/StatefulPartitionedCall2V
)block_1_expand_BN/StatefulPartitionedCall)block_1_expand_BN/StatefulPartitionedCall2R
'block_1_project/StatefulPartitionedCall'block_1_project/StatefulPartitionedCall2X
*block_1_project_BN/StatefulPartitionedCall*block_1_project_BN/StatefulPartitionedCall2V
)block_2_depthwise/StatefulPartitionedCall)block_2_depthwise/StatefulPartitionedCall2\
,block_2_depthwise_BN/StatefulPartitionedCall,block_2_depthwise_BN/StatefulPartitionedCall2P
&block_2_expand/StatefulPartitionedCall&block_2_expand/StatefulPartitionedCall2V
)block_2_expand_BN/StatefulPartitionedCall)block_2_expand_BN/StatefulPartitionedCall2R
'block_2_project/StatefulPartitionedCall'block_2_project/StatefulPartitionedCall2X
*block_2_project_BN/StatefulPartitionedCall*block_2_project_BN/StatefulPartitionedCall2D
 bn_Conv1/StatefulPartitionedCall bn_Conv1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2b
/expanded_conv_depthwise/StatefulPartitionedCall/expanded_conv_depthwise/StatefulPartitionedCall2h
2expanded_conv_depthwise_BN/StatefulPartitionedCall2expanded_conv_depthwise_BN/StatefulPartitionedCall2^
-expanded_conv_project/StatefulPartitionedCall-expanded_conv_project/StatefulPartitionedCall2d
0expanded_conv_project_BN/StatefulPartitionedCall0expanded_conv_project_BN/StatefulPartitionedCall:Y U
0
_output_shapes
:?????????x?
!
_user_specified_name	input_1
??
?$
__inference__traced_save_17424
file_prefix+
'savev2_conv1_kernel_read_readvariableop-
)savev2_bn_conv1_gamma_read_readvariableop,
(savev2_bn_conv1_beta_read_readvariableop3
/savev2_bn_conv1_moving_mean_read_readvariableop7
3savev2_bn_conv1_moving_variance_read_readvariableopG
Csavev2_expanded_conv_depthwise_depthwise_kernel_read_readvariableop?
;savev2_expanded_conv_depthwise_bn_gamma_read_readvariableop>
:savev2_expanded_conv_depthwise_bn_beta_read_readvariableopE
Asavev2_expanded_conv_depthwise_bn_moving_mean_read_readvariableopI
Esavev2_expanded_conv_depthwise_bn_moving_variance_read_readvariableop;
7savev2_expanded_conv_project_kernel_read_readvariableop=
9savev2_expanded_conv_project_bn_gamma_read_readvariableop<
8savev2_expanded_conv_project_bn_beta_read_readvariableopC
?savev2_expanded_conv_project_bn_moving_mean_read_readvariableopG
Csavev2_expanded_conv_project_bn_moving_variance_read_readvariableop4
0savev2_block_1_expand_kernel_read_readvariableop6
2savev2_block_1_expand_bn_gamma_read_readvariableop5
1savev2_block_1_expand_bn_beta_read_readvariableop<
8savev2_block_1_expand_bn_moving_mean_read_readvariableop@
<savev2_block_1_expand_bn_moving_variance_read_readvariableopA
=savev2_block_1_depthwise_depthwise_kernel_read_readvariableop9
5savev2_block_1_depthwise_bn_gamma_read_readvariableop8
4savev2_block_1_depthwise_bn_beta_read_readvariableop?
;savev2_block_1_depthwise_bn_moving_mean_read_readvariableopC
?savev2_block_1_depthwise_bn_moving_variance_read_readvariableop5
1savev2_block_1_project_kernel_read_readvariableop7
3savev2_block_1_project_bn_gamma_read_readvariableop6
2savev2_block_1_project_bn_beta_read_readvariableop=
9savev2_block_1_project_bn_moving_mean_read_readvariableopA
=savev2_block_1_project_bn_moving_variance_read_readvariableop4
0savev2_block_2_expand_kernel_read_readvariableop6
2savev2_block_2_expand_bn_gamma_read_readvariableop5
1savev2_block_2_expand_bn_beta_read_readvariableop<
8savev2_block_2_expand_bn_moving_mean_read_readvariableop@
<savev2_block_2_expand_bn_moving_variance_read_readvariableopA
=savev2_block_2_depthwise_depthwise_kernel_read_readvariableop9
5savev2_block_2_depthwise_bn_gamma_read_readvariableop8
4savev2_block_2_depthwise_bn_beta_read_readvariableop?
;savev2_block_2_depthwise_bn_moving_mean_read_readvariableopC
?savev2_block_2_depthwise_bn_moving_variance_read_readvariableop5
1savev2_block_2_project_kernel_read_readvariableop7
3savev2_block_2_project_bn_gamma_read_readvariableop6
2savev2_block_2_project_bn_beta_read_readvariableop=
9savev2_block_2_project_bn_moving_mean_read_readvariableopA
=savev2_block_2_project_bn_moving_variance_read_readvariableop(
$savev2_c1_kernel_read_readvariableop&
"savev2_c1_bias_read_readvariableop(
$savev2_c2_kernel_read_readvariableop&
"savev2_c2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop/
+savev2_adam_c1_kernel_m_read_readvariableop-
)savev2_adam_c1_bias_m_read_readvariableop/
+savev2_adam_c2_kernel_m_read_readvariableop-
)savev2_adam_c2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop/
+savev2_adam_c1_kernel_v_read_readvariableop-
)savev2_adam_c1_bias_v_read_readvariableop/
+savev2_adam_c2_kernel_v_read_readvariableop-
)savev2_adam_c2_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?*
value?*B?*UB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-8/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?
value?B?UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop)savev2_bn_conv1_gamma_read_readvariableop(savev2_bn_conv1_beta_read_readvariableop/savev2_bn_conv1_moving_mean_read_readvariableop3savev2_bn_conv1_moving_variance_read_readvariableopCsavev2_expanded_conv_depthwise_depthwise_kernel_read_readvariableop;savev2_expanded_conv_depthwise_bn_gamma_read_readvariableop:savev2_expanded_conv_depthwise_bn_beta_read_readvariableopAsavev2_expanded_conv_depthwise_bn_moving_mean_read_readvariableopEsavev2_expanded_conv_depthwise_bn_moving_variance_read_readvariableop7savev2_expanded_conv_project_kernel_read_readvariableop9savev2_expanded_conv_project_bn_gamma_read_readvariableop8savev2_expanded_conv_project_bn_beta_read_readvariableop?savev2_expanded_conv_project_bn_moving_mean_read_readvariableopCsavev2_expanded_conv_project_bn_moving_variance_read_readvariableop0savev2_block_1_expand_kernel_read_readvariableop2savev2_block_1_expand_bn_gamma_read_readvariableop1savev2_block_1_expand_bn_beta_read_readvariableop8savev2_block_1_expand_bn_moving_mean_read_readvariableop<savev2_block_1_expand_bn_moving_variance_read_readvariableop=savev2_block_1_depthwise_depthwise_kernel_read_readvariableop5savev2_block_1_depthwise_bn_gamma_read_readvariableop4savev2_block_1_depthwise_bn_beta_read_readvariableop;savev2_block_1_depthwise_bn_moving_mean_read_readvariableop?savev2_block_1_depthwise_bn_moving_variance_read_readvariableop1savev2_block_1_project_kernel_read_readvariableop3savev2_block_1_project_bn_gamma_read_readvariableop2savev2_block_1_project_bn_beta_read_readvariableop9savev2_block_1_project_bn_moving_mean_read_readvariableop=savev2_block_1_project_bn_moving_variance_read_readvariableop0savev2_block_2_expand_kernel_read_readvariableop2savev2_block_2_expand_bn_gamma_read_readvariableop1savev2_block_2_expand_bn_beta_read_readvariableop8savev2_block_2_expand_bn_moving_mean_read_readvariableop<savev2_block_2_expand_bn_moving_variance_read_readvariableop=savev2_block_2_depthwise_depthwise_kernel_read_readvariableop5savev2_block_2_depthwise_bn_gamma_read_readvariableop4savev2_block_2_depthwise_bn_beta_read_readvariableop;savev2_block_2_depthwise_bn_moving_mean_read_readvariableop?savev2_block_2_depthwise_bn_moving_variance_read_readvariableop1savev2_block_2_project_kernel_read_readvariableop3savev2_block_2_project_bn_gamma_read_readvariableop2savev2_block_2_project_bn_beta_read_readvariableop9savev2_block_2_project_bn_moving_mean_read_readvariableop=savev2_block_2_project_bn_moving_variance_read_readvariableop$savev2_c1_kernel_read_readvariableop"savev2_c1_bias_read_readvariableop$savev2_c2_kernel_read_readvariableop"savev2_c2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop+savev2_adam_c1_kernel_m_read_readvariableop)savev2_adam_c1_bias_m_read_readvariableop+savev2_adam_c2_kernel_m_read_readvariableop)savev2_adam_c2_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop+savev2_adam_c1_kernel_v_read_readvariableop)savev2_adam_c1_bias_v_read_readvariableop+savev2_adam_c2_kernel_v_read_readvariableop)savev2_adam_c2_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : : : : :::::`:`:`:`:`:`:`:`:`:`:`:::::?:?:?:?:?:?:?:?:?:?:?:::::@:@:@ : :
??:?:	?@:@:@
:
: : : : : : : : : :@:@:@ : :
??:?:	?@:@:@
:
:@:@:@ : :
??:?:	?@:@:@
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:,(
&
_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:,(
&
_output_shapes
:`: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::-)
'
_output_shapes
:?:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:-$)
'
_output_shapes
:?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:-))
'
_output_shapes
:?: *

_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:@: /

_output_shapes
:@:,0(
&
_output_shapes
:@ : 1

_output_shapes
: :&2"
 
_output_shapes
:
??:!3

_output_shapes	
:?:%4!

_output_shapes
:	?@: 5

_output_shapes
:@:$6 

_output_shapes

:@
: 7

_output_shapes
:
:8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :,A(
&
_output_shapes
:@: B

_output_shapes
:@:,C(
&
_output_shapes
:@ : D

_output_shapes
: :&E"
 
_output_shapes
:
??:!F

_output_shapes	
:?:%G!

_output_shapes
:	?@: H

_output_shapes
:@:$I 

_output_shapes

:@
: J

_output_shapes
:
:,K(
&
_output_shapes
:@: L

_output_shapes
:@:,M(
&
_output_shapes
:@ : N

_output_shapes
: :&O"
 
_output_shapes
:
??:!P

_output_shapes	
:?:%Q!

_output_shapes
:	?@: R

_output_shapes
:@:$S 

_output_shapes

:@
: T

_output_shapes
:
:U

_output_shapes
: 
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16824

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
(__inference_bn_Conv1_layer_call_fn_15675

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_116712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_12267

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
(__inference_bn_Conv1_layer_call_fn_15701

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_129442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
@__inference_Conv1_layer_call_and_return_conditional_losses_15662

inputs8
conv2d_readvariableop_resource: 
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2
Conv2Dr
IdentityIdentityConv2D:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????x?: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?	
?
2__inference_block_2_project_BN_layer_call_fn_16928

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_128492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
??
?/
@__inference_model_layer_call_and_return_conditional_losses_15648

inputs>
$conv1_conv2d_readvariableop_resource: .
 bn_conv1_readvariableop_resource: 0
"bn_conv1_readvariableop_1_resource: ?
1bn_conv1_fusedbatchnormv3_readvariableop_resource: A
3bn_conv1_fusedbatchnormv3_readvariableop_1_resource: S
9expanded_conv_depthwise_depthwise_readvariableop_resource: @
2expanded_conv_depthwise_bn_readvariableop_resource: B
4expanded_conv_depthwise_bn_readvariableop_1_resource: Q
Cexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_resource: S
Eexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource: N
4expanded_conv_project_conv2d_readvariableop_resource: >
0expanded_conv_project_bn_readvariableop_resource:@
2expanded_conv_project_bn_readvariableop_1_resource:O
Aexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_resource:Q
Cexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_1_resource:G
-block_1_expand_conv2d_readvariableop_resource:`7
)block_1_expand_bn_readvariableop_resource:`9
+block_1_expand_bn_readvariableop_1_resource:`H
:block_1_expand_bn_fusedbatchnormv3_readvariableop_resource:`J
<block_1_expand_bn_fusedbatchnormv3_readvariableop_1_resource:`M
3block_1_depthwise_depthwise_readvariableop_resource:`:
,block_1_depthwise_bn_readvariableop_resource:`<
.block_1_depthwise_bn_readvariableop_1_resource:`K
=block_1_depthwise_bn_fusedbatchnormv3_readvariableop_resource:`M
?block_1_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource:`H
.block_1_project_conv2d_readvariableop_resource:`8
*block_1_project_bn_readvariableop_resource::
,block_1_project_bn_readvariableop_1_resource:I
;block_1_project_bn_fusedbatchnormv3_readvariableop_resource:K
=block_1_project_bn_fusedbatchnormv3_readvariableop_1_resource:H
-block_2_expand_conv2d_readvariableop_resource:?8
)block_2_expand_bn_readvariableop_resource:	?:
+block_2_expand_bn_readvariableop_1_resource:	?I
:block_2_expand_bn_fusedbatchnormv3_readvariableop_resource:	?K
<block_2_expand_bn_fusedbatchnormv3_readvariableop_1_resource:	?N
3block_2_depthwise_depthwise_readvariableop_resource:?;
,block_2_depthwise_bn_readvariableop_resource:	?=
.block_2_depthwise_bn_readvariableop_1_resource:	?L
=block_2_depthwise_bn_fusedbatchnormv3_readvariableop_resource:	?N
?block_2_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource:	?I
.block_2_project_conv2d_readvariableop_resource:?8
*block_2_project_bn_readvariableop_resource::
,block_2_project_bn_readvariableop_1_resource:I
;block_2_project_bn_fusedbatchnormv3_readvariableop_resource:K
=block_2_project_bn_fusedbatchnormv3_readvariableop_1_resource:;
!c1_conv2d_readvariableop_resource:@0
"c1_biasadd_readvariableop_resource:@;
!c2_conv2d_readvariableop_resource:@ 0
"c2_biasadd_readvariableop_resource: 8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@
5
'dense_2_biasadd_readvariableop_resource:

identity??C1/BiasAdd/ReadVariableOp?C1/Conv2D/ReadVariableOp?C2/BiasAdd/ReadVariableOp?C2/Conv2D/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?*block_1_depthwise/depthwise/ReadVariableOp?4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp?6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?#block_1_depthwise_BN/ReadVariableOp?%block_1_depthwise_BN/ReadVariableOp_1?$block_1_expand/Conv2D/ReadVariableOp?1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp?3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1? block_1_expand_BN/ReadVariableOp?"block_1_expand_BN/ReadVariableOp_1?%block_1_project/Conv2D/ReadVariableOp?2block_1_project_BN/FusedBatchNormV3/ReadVariableOp?4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1?!block_1_project_BN/ReadVariableOp?#block_1_project_BN/ReadVariableOp_1?*block_2_depthwise/depthwise/ReadVariableOp?4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp?6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?#block_2_depthwise_BN/ReadVariableOp?%block_2_depthwise_BN/ReadVariableOp_1?$block_2_expand/Conv2D/ReadVariableOp?1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp?3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1? block_2_expand_BN/ReadVariableOp?"block_2_expand_BN/ReadVariableOp_1?%block_2_project/Conv2D/ReadVariableOp?2block_2_project_BN/FusedBatchNormV3/ReadVariableOp?4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1?!block_2_project_BN/ReadVariableOp?#block_2_project_BN/ReadVariableOp_1?(bn_Conv1/FusedBatchNormV3/ReadVariableOp?*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1?bn_Conv1/ReadVariableOp?bn_Conv1/ReadVariableOp_1?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?0expanded_conv_depthwise/depthwise/ReadVariableOp?:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp?<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?)expanded_conv_depthwise_BN/ReadVariableOp?+expanded_conv_depthwise_BN/ReadVariableOp_1?+expanded_conv_project/Conv2D/ReadVariableOp?8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp?:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1?'expanded_conv_project_BN/ReadVariableOp?)expanded_conv_project_BN/ReadVariableOp_1?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2
Conv1/Conv2D?
bn_Conv1/ReadVariableOpReadVariableOp bn_conv1_readvariableop_resource*
_output_shapes
: *
dtype02
bn_Conv1/ReadVariableOp?
bn_Conv1/ReadVariableOp_1ReadVariableOp"bn_conv1_readvariableop_1_resource*
_output_shapes
: *
dtype02
bn_Conv1/ReadVariableOp_1?
(bn_Conv1/FusedBatchNormV3/ReadVariableOpReadVariableOp1bn_conv1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02*
(bn_Conv1/FusedBatchNormV3/ReadVariableOp?
*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp3bn_conv1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1?
bn_Conv1/FusedBatchNormV3FusedBatchNormV3Conv1/Conv2D:output:0bn_Conv1/ReadVariableOp:value:0!bn_Conv1/ReadVariableOp_1:value:00bn_Conv1/FusedBatchNormV3/ReadVariableOp:value:02bn_Conv1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
bn_Conv1/FusedBatchNormV3?
Conv1_relu/Relu6Relu6bn_Conv1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P 2
Conv1_relu/Relu6?
0expanded_conv_depthwise/depthwise/ReadVariableOpReadVariableOp9expanded_conv_depthwise_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype022
0expanded_conv_depthwise/depthwise/ReadVariableOp?
'expanded_conv_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'expanded_conv_depthwise/depthwise/Shape?
/expanded_conv_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      21
/expanded_conv_depthwise/depthwise/dilation_rate?
!expanded_conv_depthwise/depthwiseDepthwiseConv2dNativeConv1_relu/Relu6:activations:08expanded_conv_depthwise/depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2#
!expanded_conv_depthwise/depthwise?
)expanded_conv_depthwise_BN/ReadVariableOpReadVariableOp2expanded_conv_depthwise_bn_readvariableop_resource*
_output_shapes
: *
dtype02+
)expanded_conv_depthwise_BN/ReadVariableOp?
+expanded_conv_depthwise_BN/ReadVariableOp_1ReadVariableOp4expanded_conv_depthwise_bn_readvariableop_1_resource*
_output_shapes
: *
dtype02-
+expanded_conv_depthwise_BN/ReadVariableOp_1?
:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpCexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02<
:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEexpanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02>
<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
+expanded_conv_depthwise_BN/FusedBatchNormV3FusedBatchNormV3*expanded_conv_depthwise/depthwise:output:01expanded_conv_depthwise_BN/ReadVariableOp:value:03expanded_conv_depthwise_BN/ReadVariableOp_1:value:0Bexpanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0Dexpanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2-
+expanded_conv_depthwise_BN/FusedBatchNormV3?
"expanded_conv_depthwise_relu/Relu6Relu6/expanded_conv_depthwise_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P 2$
"expanded_conv_depthwise_relu/Relu6?
+expanded_conv_project/Conv2D/ReadVariableOpReadVariableOp4expanded_conv_project_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+expanded_conv_project/Conv2D/ReadVariableOp?
expanded_conv_project/Conv2DConv2D0expanded_conv_depthwise_relu/Relu6:activations:03expanded_conv_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
2
expanded_conv_project/Conv2D?
'expanded_conv_project_BN/ReadVariableOpReadVariableOp0expanded_conv_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02)
'expanded_conv_project_BN/ReadVariableOp?
)expanded_conv_project_BN/ReadVariableOp_1ReadVariableOp2expanded_conv_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02+
)expanded_conv_project_BN/ReadVariableOp_1?
8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpAexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02:
8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp?
:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCexpanded_conv_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02<
:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1?
)expanded_conv_project_BN/FusedBatchNormV3FusedBatchNormV3%expanded_conv_project/Conv2D:output:0/expanded_conv_project_BN/ReadVariableOp:value:01expanded_conv_project_BN/ReadVariableOp_1:value:0@expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp:value:0Bexpanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( 2+
)expanded_conv_project_BN/FusedBatchNormV3?
$block_1_expand/Conv2D/ReadVariableOpReadVariableOp-block_1_expand_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02&
$block_1_expand/Conv2D/ReadVariableOp?
block_1_expand/Conv2DConv2D-expanded_conv_project_BN/FusedBatchNormV3:y:0,block_1_expand/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P`*
paddingSAME*
strides
2
block_1_expand/Conv2D?
 block_1_expand_BN/ReadVariableOpReadVariableOp)block_1_expand_bn_readvariableop_resource*
_output_shapes
:`*
dtype02"
 block_1_expand_BN/ReadVariableOp?
"block_1_expand_BN/ReadVariableOp_1ReadVariableOp+block_1_expand_bn_readvariableop_1_resource*
_output_shapes
:`*
dtype02$
"block_1_expand_BN/ReadVariableOp_1?
1block_1_expand_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp:block_1_expand_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype023
1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp?
3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<block_1_expand_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype025
3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1?
"block_1_expand_BN/FusedBatchNormV3FusedBatchNormV3block_1_expand/Conv2D:output:0(block_1_expand_BN/ReadVariableOp:value:0*block_1_expand_BN/ReadVariableOp_1:value:09block_1_expand_BN/FusedBatchNormV3/ReadVariableOp:value:0;block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P`:`:`:`:`:*
epsilon%o?:*
is_training( 2$
"block_1_expand_BN/FusedBatchNormV3?
block_1_expand_relu/Relu6Relu6&block_1_expand_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P`2
block_1_expand_relu/Relu6?
block_1_pad/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               2
block_1_pad/Pad/paddings?
block_1_pad/PadPad'block_1_expand_relu/Relu6:activations:0!block_1_pad/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????=Q`2
block_1_pad/Pad?
*block_1_depthwise/depthwise/ReadVariableOpReadVariableOp3block_1_depthwise_depthwise_readvariableop_resource*&
_output_shapes
:`*
dtype02,
*block_1_depthwise/depthwise/ReadVariableOp?
!block_1_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      `      2#
!block_1_depthwise/depthwise/Shape?
)block_1_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2+
)block_1_depthwise/depthwise/dilation_rate?
block_1_depthwise/depthwiseDepthwiseConv2dNativeblock_1_pad/Pad:output:02block_1_depthwise/depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(`*
paddingVALID*
strides
2
block_1_depthwise/depthwise?
#block_1_depthwise_BN/ReadVariableOpReadVariableOp,block_1_depthwise_bn_readvariableop_resource*
_output_shapes
:`*
dtype02%
#block_1_depthwise_BN/ReadVariableOp?
%block_1_depthwise_BN/ReadVariableOp_1ReadVariableOp.block_1_depthwise_bn_readvariableop_1_resource*
_output_shapes
:`*
dtype02'
%block_1_depthwise_BN/ReadVariableOp_1?
4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp=block_1_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype026
4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?block_1_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype028
6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
%block_1_depthwise_BN/FusedBatchNormV3FusedBatchNormV3$block_1_depthwise/depthwise:output:0+block_1_depthwise_BN/ReadVariableOp:value:0-block_1_depthwise_BN/ReadVariableOp_1:value:0<block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0>block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(`:`:`:`:`:*
epsilon%o?:*
is_training( 2'
%block_1_depthwise_BN/FusedBatchNormV3?
block_1_depthwise_relu/Relu6Relu6)block_1_depthwise_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(`2
block_1_depthwise_relu/Relu6?
%block_1_project/Conv2D/ReadVariableOpReadVariableOp.block_1_project_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02'
%block_1_project/Conv2D/ReadVariableOp?
block_1_project/Conv2DConv2D*block_1_depthwise_relu/Relu6:activations:0-block_1_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
block_1_project/Conv2D?
!block_1_project_BN/ReadVariableOpReadVariableOp*block_1_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02#
!block_1_project_BN/ReadVariableOp?
#block_1_project_BN/ReadVariableOp_1ReadVariableOp,block_1_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02%
#block_1_project_BN/ReadVariableOp_1?
2block_1_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp;block_1_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype024
2block_1_project_BN/FusedBatchNormV3/ReadVariableOp?
4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp=block_1_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype026
4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1?
#block_1_project_BN/FusedBatchNormV3FusedBatchNormV3block_1_project/Conv2D:output:0)block_1_project_BN/ReadVariableOp:value:0+block_1_project_BN/ReadVariableOp_1:value:0:block_1_project_BN/FusedBatchNormV3/ReadVariableOp:value:0<block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2%
#block_1_project_BN/FusedBatchNormV3?
$block_2_expand/Conv2D/ReadVariableOpReadVariableOp-block_2_expand_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02&
$block_2_expand/Conv2D/ReadVariableOp?
block_2_expand/Conv2DConv2D'block_1_project_BN/FusedBatchNormV3:y:0,block_2_expand/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
block_2_expand/Conv2D?
 block_2_expand_BN/ReadVariableOpReadVariableOp)block_2_expand_bn_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 block_2_expand_BN/ReadVariableOp?
"block_2_expand_BN/ReadVariableOp_1ReadVariableOp+block_2_expand_bn_readvariableop_1_resource*
_output_shapes	
:?*
dtype02$
"block_2_expand_BN/ReadVariableOp_1?
1block_2_expand_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp:block_2_expand_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype023
1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp?
3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<block_2_expand_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1?
"block_2_expand_BN/FusedBatchNormV3FusedBatchNormV3block_2_expand/Conv2D:output:0(block_2_expand_BN/ReadVariableOp:value:0*block_2_expand_BN/ReadVariableOp_1:value:09block_2_expand_BN/FusedBatchNormV3/ReadVariableOp:value:0;block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2$
"block_2_expand_BN/FusedBatchNormV3?
block_2_expand_relu/Relu6Relu6&block_2_expand_BN/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????(?2
block_2_expand_relu/Relu6?
*block_2_depthwise/depthwise/ReadVariableOpReadVariableOp3block_2_depthwise_depthwise_readvariableop_resource*'
_output_shapes
:?*
dtype02,
*block_2_depthwise/depthwise/ReadVariableOp?
!block_2_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2#
!block_2_depthwise/depthwise/Shape?
)block_2_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2+
)block_2_depthwise/depthwise/dilation_rate?
block_2_depthwise/depthwiseDepthwiseConv2dNative'block_2_expand_relu/Relu6:activations:02block_2_depthwise/depthwise/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
block_2_depthwise/depthwise?
#block_2_depthwise_BN/ReadVariableOpReadVariableOp,block_2_depthwise_bn_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block_2_depthwise_BN/ReadVariableOp?
%block_2_depthwise_BN/ReadVariableOp_1ReadVariableOp.block_2_depthwise_bn_readvariableop_1_resource*
_output_shapes	
:?*
dtype02'
%block_2_depthwise_BN/ReadVariableOp_1?
4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp=block_2_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype026
4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?block_2_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype028
6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
%block_2_depthwise_BN/FusedBatchNormV3FusedBatchNormV3$block_2_depthwise/depthwise:output:0+block_2_depthwise_BN/ReadVariableOp:value:0-block_2_depthwise_BN/ReadVariableOp_1:value:0<block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0>block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2'
%block_2_depthwise_BN/FusedBatchNormV3?
block_2_depthwise_relu/Relu6Relu6)block_2_depthwise_BN/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????(?2
block_2_depthwise_relu/Relu6?
%block_2_project/Conv2D/ReadVariableOpReadVariableOp.block_2_project_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02'
%block_2_project/Conv2D/ReadVariableOp?
block_2_project/Conv2DConv2D*block_2_depthwise_relu/Relu6:activations:0-block_2_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
block_2_project/Conv2D?
!block_2_project_BN/ReadVariableOpReadVariableOp*block_2_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02#
!block_2_project_BN/ReadVariableOp?
#block_2_project_BN/ReadVariableOp_1ReadVariableOp,block_2_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02%
#block_2_project_BN/ReadVariableOp_1?
2block_2_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp;block_2_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype024
2block_2_project_BN/FusedBatchNormV3/ReadVariableOp?
4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp=block_2_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype026
4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1?
#block_2_project_BN/FusedBatchNormV3FusedBatchNormV3block_2_project/Conv2D:output:0)block_2_project_BN/ReadVariableOp:value:0+block_2_project_BN/ReadVariableOp_1:value:0:block_2_project_BN/FusedBatchNormV3/ReadVariableOp:value:0<block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2%
#block_2_project_BN/FusedBatchNormV3?
block_2_add/addAddV2'block_1_project_BN/FusedBatchNormV3:y:0'block_2_project_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(2
block_2_add/add?
C1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
C1/Conv2D/ReadVariableOp?
	C1/Conv2DConv2Dblock_2_add/add:z:0 C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
	C1/Conv2D?
C1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
C1/BiasAdd/ReadVariableOp?

C1/BiasAddBiasAddC1/Conv2D:output:0!C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2

C1/BiasAddi
C1/ReluReluC1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2	
C1/Relu?
C2/Conv2D/ReadVariableOpReadVariableOp!c2_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
C2/Conv2D/ReadVariableOp?
	C2/Conv2DConv2DC1/Relu:activations:0 C2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 *
paddingSAME*
strides
2
	C2/Conv2D?
C2/BiasAdd/ReadVariableOpReadVariableOp"c2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
C2/BiasAdd/ReadVariableOp?

C2/BiasAddBiasAddC2/Conv2D:output:0!C2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 2

C2/BiasAddi
C2/ReluReluC2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
 2	
C2/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 
  2
flatten/Const?
flatten/ReshapeReshapeC2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Relu?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmaxt
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/BiasAdd/ReadVariableOp^C1/Conv2D/ReadVariableOp^C2/BiasAdd/ReadVariableOp^C2/Conv2D/ReadVariableOp^Conv1/Conv2D/ReadVariableOp+^block_1_depthwise/depthwise/ReadVariableOp5^block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp7^block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1$^block_1_depthwise_BN/ReadVariableOp&^block_1_depthwise_BN/ReadVariableOp_1%^block_1_expand/Conv2D/ReadVariableOp2^block_1_expand_BN/FusedBatchNormV3/ReadVariableOp4^block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1!^block_1_expand_BN/ReadVariableOp#^block_1_expand_BN/ReadVariableOp_1&^block_1_project/Conv2D/ReadVariableOp3^block_1_project_BN/FusedBatchNormV3/ReadVariableOp5^block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1"^block_1_project_BN/ReadVariableOp$^block_1_project_BN/ReadVariableOp_1+^block_2_depthwise/depthwise/ReadVariableOp5^block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp7^block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1$^block_2_depthwise_BN/ReadVariableOp&^block_2_depthwise_BN/ReadVariableOp_1%^block_2_expand/Conv2D/ReadVariableOp2^block_2_expand_BN/FusedBatchNormV3/ReadVariableOp4^block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1!^block_2_expand_BN/ReadVariableOp#^block_2_expand_BN/ReadVariableOp_1&^block_2_project/Conv2D/ReadVariableOp3^block_2_project_BN/FusedBatchNormV3/ReadVariableOp5^block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1"^block_2_project_BN/ReadVariableOp$^block_2_project_BN/ReadVariableOp_1)^bn_Conv1/FusedBatchNormV3/ReadVariableOp+^bn_Conv1/FusedBatchNormV3/ReadVariableOp_1^bn_Conv1/ReadVariableOp^bn_Conv1/ReadVariableOp_1^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp1^expanded_conv_depthwise/depthwise/ReadVariableOp;^expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp=^expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1*^expanded_conv_depthwise_BN/ReadVariableOp,^expanded_conv_depthwise_BN/ReadVariableOp_1,^expanded_conv_project/Conv2D/ReadVariableOp9^expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp;^expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1(^expanded_conv_project_BN/ReadVariableOp*^expanded_conv_project_BN/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 26
C1/BiasAdd/ReadVariableOpC1/BiasAdd/ReadVariableOp24
C1/Conv2D/ReadVariableOpC1/Conv2D/ReadVariableOp26
C2/BiasAdd/ReadVariableOpC2/BiasAdd/ReadVariableOp24
C2/Conv2D/ReadVariableOpC2/Conv2D/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2X
*block_1_depthwise/depthwise/ReadVariableOp*block_1_depthwise/depthwise/ReadVariableOp2l
4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp4block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp2p
6block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_16block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12J
#block_1_depthwise_BN/ReadVariableOp#block_1_depthwise_BN/ReadVariableOp2N
%block_1_depthwise_BN/ReadVariableOp_1%block_1_depthwise_BN/ReadVariableOp_12L
$block_1_expand/Conv2D/ReadVariableOp$block_1_expand/Conv2D/ReadVariableOp2f
1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp1block_1_expand_BN/FusedBatchNormV3/ReadVariableOp2j
3block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_13block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_12D
 block_1_expand_BN/ReadVariableOp block_1_expand_BN/ReadVariableOp2H
"block_1_expand_BN/ReadVariableOp_1"block_1_expand_BN/ReadVariableOp_12N
%block_1_project/Conv2D/ReadVariableOp%block_1_project/Conv2D/ReadVariableOp2h
2block_1_project_BN/FusedBatchNormV3/ReadVariableOp2block_1_project_BN/FusedBatchNormV3/ReadVariableOp2l
4block_1_project_BN/FusedBatchNormV3/ReadVariableOp_14block_1_project_BN/FusedBatchNormV3/ReadVariableOp_12F
!block_1_project_BN/ReadVariableOp!block_1_project_BN/ReadVariableOp2J
#block_1_project_BN/ReadVariableOp_1#block_1_project_BN/ReadVariableOp_12X
*block_2_depthwise/depthwise/ReadVariableOp*block_2_depthwise/depthwise/ReadVariableOp2l
4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp4block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp2p
6block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_16block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12J
#block_2_depthwise_BN/ReadVariableOp#block_2_depthwise_BN/ReadVariableOp2N
%block_2_depthwise_BN/ReadVariableOp_1%block_2_depthwise_BN/ReadVariableOp_12L
$block_2_expand/Conv2D/ReadVariableOp$block_2_expand/Conv2D/ReadVariableOp2f
1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp1block_2_expand_BN/FusedBatchNormV3/ReadVariableOp2j
3block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_13block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_12D
 block_2_expand_BN/ReadVariableOp block_2_expand_BN/ReadVariableOp2H
"block_2_expand_BN/ReadVariableOp_1"block_2_expand_BN/ReadVariableOp_12N
%block_2_project/Conv2D/ReadVariableOp%block_2_project/Conv2D/ReadVariableOp2h
2block_2_project_BN/FusedBatchNormV3/ReadVariableOp2block_2_project_BN/FusedBatchNormV3/ReadVariableOp2l
4block_2_project_BN/FusedBatchNormV3/ReadVariableOp_14block_2_project_BN/FusedBatchNormV3/ReadVariableOp_12F
!block_2_project_BN/ReadVariableOp!block_2_project_BN/ReadVariableOp2J
#block_2_project_BN/ReadVariableOp_1#block_2_project_BN/ReadVariableOp_12T
(bn_Conv1/FusedBatchNormV3/ReadVariableOp(bn_Conv1/FusedBatchNormV3/ReadVariableOp2X
*bn_Conv1/FusedBatchNormV3/ReadVariableOp_1*bn_Conv1/FusedBatchNormV3/ReadVariableOp_122
bn_Conv1/ReadVariableOpbn_Conv1/ReadVariableOp26
bn_Conv1/ReadVariableOp_1bn_Conv1/ReadVariableOp_12<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2d
0expanded_conv_depthwise/depthwise/ReadVariableOp0expanded_conv_depthwise/depthwise/ReadVariableOp2x
:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp:expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp2|
<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1<expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12V
)expanded_conv_depthwise_BN/ReadVariableOp)expanded_conv_depthwise_BN/ReadVariableOp2Z
+expanded_conv_depthwise_BN/ReadVariableOp_1+expanded_conv_depthwise_BN/ReadVariableOp_12Z
+expanded_conv_project/Conv2D/ReadVariableOp+expanded_conv_project/Conv2D/ReadVariableOp2t
8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp8expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp2x
:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1:expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_12R
'expanded_conv_project_BN/ReadVariableOp'expanded_conv_project_BN/ReadVariableOp2V
)expanded_conv_project_BN/ReadVariableOp_1)expanded_conv_project_BN/ReadVariableOp_1:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16694

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_12083

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?	
?
8__inference_expanded_conv_project_BN_layer_call_fn_15989

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_119572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
=__inference_C2_layer_call_and_return_conditional_losses_17078

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????
 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
1__inference_block_1_depthwise_layer_call_fn_16284

inputs!
unknown:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_131052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????=Q`: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????=Q`
 
_user_specified_nameinputs
?
?
B__inference_dense_1_layer_call_and_return_conditional_losses_13388

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_block_2_depthwise_BN_layer_call_fn_16793

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_132552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16390

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
r
F__inference_block_2_add_layer_call_and_return_conditional_losses_17038
inputs_0
inputs_1
identitya
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:?????????(2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????(:?????????(:Y U
/
_output_shapes
:?????????(
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????(
"
_user_specified_name
inputs/1
?
m
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_16888

inputs
identityZ
Relu6Relu6inputs*
T0*0
_output_shapes
:?????????(?2
Relu6p
IdentityIdentityRelu6:activations:0*
T0*0
_output_shapes
:?????????(?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????(?:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
1__inference_block_1_depthwise_layer_call_fn_16277

inputs!
unknown:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_122242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????`: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_14018

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_13171

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_13209

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
I__inference_block_2_expand_layer_call_and_return_conditional_losses_13188

inputs9
conv2d_readvariableop_resource:?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
Conv2Ds
IdentityIdentityConv2D:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityf
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????(: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16574

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15768

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_12805

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
X
<__inference_expanded_conv_depthwise_relu_layer_call_fn_15957

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_130052
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<P 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P :W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
/__inference_block_1_project_layer_call_fn_16443

inputs!
unknown:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_block_1_project_layer_call_and_return_conditional_losses_131502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????(`: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_14075

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_17008

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16408

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????(`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????(`
 
_user_specified_nameinputs
?
?
1__inference_block_1_expand_BN_layer_call_fn_16153

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_130732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?

?
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_16302

inputs;
!depthwise_readvariableop_resource:`
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:`*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      `      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(`*
paddingVALID*
strides
2
	depthwiseu
IdentityIdentitydepthwise:output:0^NoOp*
T0*/
_output_shapes
:?????????(`2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????=Q`: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:W S
/
_output_shapes
:?????????=Q`
 
_user_specified_nameinputs
?

?
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_15828

inputs;
!depthwise_readvariableop_resource: 
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2
	depthwiseu
IdentityIdentitydepthwise:output:0^NoOp*
T0*/
_output_shapes
:?????????<P 2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????<P : 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
.__inference_block_2_expand_layer_call_fn_16581

inputs"
unknown:?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_block_2_expand_layer_call_and_return_conditional_losses_131882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????(: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
?
2__inference_block_2_project_BN_layer_call_fn_16915

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_128052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
4__inference_block_2_depthwise_BN_layer_call_fn_16806

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????(?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_136792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????(?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????(?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????(?
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16676

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_12393

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Ѹ
?4
 __inference__wrapped_model_11649
input_1D
*model_conv1_conv2d_readvariableop_resource: 4
&model_bn_conv1_readvariableop_resource: 6
(model_bn_conv1_readvariableop_1_resource: E
7model_bn_conv1_fusedbatchnormv3_readvariableop_resource: G
9model_bn_conv1_fusedbatchnormv3_readvariableop_1_resource: Y
?model_expanded_conv_depthwise_depthwise_readvariableop_resource: F
8model_expanded_conv_depthwise_bn_readvariableop_resource: H
:model_expanded_conv_depthwise_bn_readvariableop_1_resource: W
Imodel_expanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_resource: Y
Kmodel_expanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource: T
:model_expanded_conv_project_conv2d_readvariableop_resource: D
6model_expanded_conv_project_bn_readvariableop_resource:F
8model_expanded_conv_project_bn_readvariableop_1_resource:U
Gmodel_expanded_conv_project_bn_fusedbatchnormv3_readvariableop_resource:W
Imodel_expanded_conv_project_bn_fusedbatchnormv3_readvariableop_1_resource:M
3model_block_1_expand_conv2d_readvariableop_resource:`=
/model_block_1_expand_bn_readvariableop_resource:`?
1model_block_1_expand_bn_readvariableop_1_resource:`N
@model_block_1_expand_bn_fusedbatchnormv3_readvariableop_resource:`P
Bmodel_block_1_expand_bn_fusedbatchnormv3_readvariableop_1_resource:`S
9model_block_1_depthwise_depthwise_readvariableop_resource:`@
2model_block_1_depthwise_bn_readvariableop_resource:`B
4model_block_1_depthwise_bn_readvariableop_1_resource:`Q
Cmodel_block_1_depthwise_bn_fusedbatchnormv3_readvariableop_resource:`S
Emodel_block_1_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource:`N
4model_block_1_project_conv2d_readvariableop_resource:`>
0model_block_1_project_bn_readvariableop_resource:@
2model_block_1_project_bn_readvariableop_1_resource:O
Amodel_block_1_project_bn_fusedbatchnormv3_readvariableop_resource:Q
Cmodel_block_1_project_bn_fusedbatchnormv3_readvariableop_1_resource:N
3model_block_2_expand_conv2d_readvariableop_resource:?>
/model_block_2_expand_bn_readvariableop_resource:	?@
1model_block_2_expand_bn_readvariableop_1_resource:	?O
@model_block_2_expand_bn_fusedbatchnormv3_readvariableop_resource:	?Q
Bmodel_block_2_expand_bn_fusedbatchnormv3_readvariableop_1_resource:	?T
9model_block_2_depthwise_depthwise_readvariableop_resource:?A
2model_block_2_depthwise_bn_readvariableop_resource:	?C
4model_block_2_depthwise_bn_readvariableop_1_resource:	?R
Cmodel_block_2_depthwise_bn_fusedbatchnormv3_readvariableop_resource:	?T
Emodel_block_2_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource:	?O
4model_block_2_project_conv2d_readvariableop_resource:?>
0model_block_2_project_bn_readvariableop_resource:@
2model_block_2_project_bn_readvariableop_1_resource:O
Amodel_block_2_project_bn_fusedbatchnormv3_readvariableop_resource:Q
Cmodel_block_2_project_bn_fusedbatchnormv3_readvariableop_1_resource:A
'model_c1_conv2d_readvariableop_resource:@6
(model_c1_biasadd_readvariableop_resource:@A
'model_c2_conv2d_readvariableop_resource:@ 6
(model_c2_biasadd_readvariableop_resource: >
*model_dense_matmul_readvariableop_resource:
??:
+model_dense_biasadd_readvariableop_resource:	??
,model_dense_1_matmul_readvariableop_resource:	?@;
-model_dense_1_biasadd_readvariableop_resource:@>
,model_dense_2_matmul_readvariableop_resource:@
;
-model_dense_2_biasadd_readvariableop_resource:

identity??model/C1/BiasAdd/ReadVariableOp?model/C1/Conv2D/ReadVariableOp?model/C2/BiasAdd/ReadVariableOp?model/C2/Conv2D/ReadVariableOp?!model/Conv1/Conv2D/ReadVariableOp?0model/block_1_depthwise/depthwise/ReadVariableOp?:model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp?<model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?)model/block_1_depthwise_BN/ReadVariableOp?+model/block_1_depthwise_BN/ReadVariableOp_1?*model/block_1_expand/Conv2D/ReadVariableOp?7model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp?9model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1?&model/block_1_expand_BN/ReadVariableOp?(model/block_1_expand_BN/ReadVariableOp_1?+model/block_1_project/Conv2D/ReadVariableOp?8model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp?:model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1?'model/block_1_project_BN/ReadVariableOp?)model/block_1_project_BN/ReadVariableOp_1?0model/block_2_depthwise/depthwise/ReadVariableOp?:model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp?<model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?)model/block_2_depthwise_BN/ReadVariableOp?+model/block_2_depthwise_BN/ReadVariableOp_1?*model/block_2_expand/Conv2D/ReadVariableOp?7model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp?9model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1?&model/block_2_expand_BN/ReadVariableOp?(model/block_2_expand_BN/ReadVariableOp_1?+model/block_2_project/Conv2D/ReadVariableOp?8model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp?:model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1?'model/block_2_project_BN/ReadVariableOp?)model/block_2_project_BN/ReadVariableOp_1?.model/bn_Conv1/FusedBatchNormV3/ReadVariableOp?0model/bn_Conv1/FusedBatchNormV3/ReadVariableOp_1?model/bn_Conv1/ReadVariableOp?model/bn_Conv1/ReadVariableOp_1?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?$model/dense_2/BiasAdd/ReadVariableOp?#model/dense_2/MatMul/ReadVariableOp?6model/expanded_conv_depthwise/depthwise/ReadVariableOp?@model/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp?Bmodel/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?/model/expanded_conv_depthwise_BN/ReadVariableOp?1model/expanded_conv_depthwise_BN/ReadVariableOp_1?1model/expanded_conv_project/Conv2D/ReadVariableOp?>model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp?@model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1?-model/expanded_conv_project_BN/ReadVariableOp?/model/expanded_conv_project_BN/ReadVariableOp_1?
!model/Conv1/Conv2D/ReadVariableOpReadVariableOp*model_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02#
!model/Conv1/Conv2D/ReadVariableOp?
model/Conv1/Conv2DConv2Dinput_1)model/Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2
model/Conv1/Conv2D?
model/bn_Conv1/ReadVariableOpReadVariableOp&model_bn_conv1_readvariableop_resource*
_output_shapes
: *
dtype02
model/bn_Conv1/ReadVariableOp?
model/bn_Conv1/ReadVariableOp_1ReadVariableOp(model_bn_conv1_readvariableop_1_resource*
_output_shapes
: *
dtype02!
model/bn_Conv1/ReadVariableOp_1?
.model/bn_Conv1/FusedBatchNormV3/ReadVariableOpReadVariableOp7model_bn_conv1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype020
.model/bn_Conv1/FusedBatchNormV3/ReadVariableOp?
0model/bn_Conv1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp9model_bn_conv1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype022
0model/bn_Conv1/FusedBatchNormV3/ReadVariableOp_1?
model/bn_Conv1/FusedBatchNormV3FusedBatchNormV3model/Conv1/Conv2D:output:0%model/bn_Conv1/ReadVariableOp:value:0'model/bn_Conv1/ReadVariableOp_1:value:06model/bn_Conv1/FusedBatchNormV3/ReadVariableOp:value:08model/bn_Conv1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 2!
model/bn_Conv1/FusedBatchNormV3?
model/Conv1_relu/Relu6Relu6#model/bn_Conv1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P 2
model/Conv1_relu/Relu6?
6model/expanded_conv_depthwise/depthwise/ReadVariableOpReadVariableOp?model_expanded_conv_depthwise_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype028
6model/expanded_conv_depthwise/depthwise/ReadVariableOp?
-model/expanded_conv_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2/
-model/expanded_conv_depthwise/depthwise/Shape?
5model/expanded_conv_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/expanded_conv_depthwise/depthwise/dilation_rate?
'model/expanded_conv_depthwise/depthwiseDepthwiseConv2dNative$model/Conv1_relu/Relu6:activations:0>model/expanded_conv_depthwise/depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P *
paddingSAME*
strides
2)
'model/expanded_conv_depthwise/depthwise?
/model/expanded_conv_depthwise_BN/ReadVariableOpReadVariableOp8model_expanded_conv_depthwise_bn_readvariableop_resource*
_output_shapes
: *
dtype021
/model/expanded_conv_depthwise_BN/ReadVariableOp?
1model/expanded_conv_depthwise_BN/ReadVariableOp_1ReadVariableOp:model_expanded_conv_depthwise_bn_readvariableop_1_resource*
_output_shapes
: *
dtype023
1model/expanded_conv_depthwise_BN/ReadVariableOp_1?
@model/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpImodel_expanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02B
@model/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
Bmodel/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKmodel_expanded_conv_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02D
Bmodel/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
1model/expanded_conv_depthwise_BN/FusedBatchNormV3FusedBatchNormV30model/expanded_conv_depthwise/depthwise:output:07model/expanded_conv_depthwise_BN/ReadVariableOp:value:09model/expanded_conv_depthwise_BN/ReadVariableOp_1:value:0Hmodel/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0Jmodel/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P : : : : :*
epsilon%o?:*
is_training( 23
1model/expanded_conv_depthwise_BN/FusedBatchNormV3?
(model/expanded_conv_depthwise_relu/Relu6Relu65model/expanded_conv_depthwise_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P 2*
(model/expanded_conv_depthwise_relu/Relu6?
1model/expanded_conv_project/Conv2D/ReadVariableOpReadVariableOp:model_expanded_conv_project_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1model/expanded_conv_project/Conv2D/ReadVariableOp?
"model/expanded_conv_project/Conv2DConv2D6model/expanded_conv_depthwise_relu/Relu6:activations:09model/expanded_conv_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
2$
"model/expanded_conv_project/Conv2D?
-model/expanded_conv_project_BN/ReadVariableOpReadVariableOp6model_expanded_conv_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02/
-model/expanded_conv_project_BN/ReadVariableOp?
/model/expanded_conv_project_BN/ReadVariableOp_1ReadVariableOp8model_expanded_conv_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype021
/model/expanded_conv_project_BN/ReadVariableOp_1?
>model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_expanded_conv_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02@
>model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp?
@model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_expanded_conv_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02B
@model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1?
/model/expanded_conv_project_BN/FusedBatchNormV3FusedBatchNormV3+model/expanded_conv_project/Conv2D:output:05model/expanded_conv_project_BN/ReadVariableOp:value:07model/expanded_conv_project_BN/ReadVariableOp_1:value:0Fmodel/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp:value:0Hmodel/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( 21
/model/expanded_conv_project_BN/FusedBatchNormV3?
*model/block_1_expand/Conv2D/ReadVariableOpReadVariableOp3model_block_1_expand_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02,
*model/block_1_expand/Conv2D/ReadVariableOp?
model/block_1_expand/Conv2DConv2D3model/expanded_conv_project_BN/FusedBatchNormV3:y:02model/block_1_expand/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P`*
paddingSAME*
strides
2
model/block_1_expand/Conv2D?
&model/block_1_expand_BN/ReadVariableOpReadVariableOp/model_block_1_expand_bn_readvariableop_resource*
_output_shapes
:`*
dtype02(
&model/block_1_expand_BN/ReadVariableOp?
(model/block_1_expand_BN/ReadVariableOp_1ReadVariableOp1model_block_1_expand_bn_readvariableop_1_resource*
_output_shapes
:`*
dtype02*
(model/block_1_expand_BN/ReadVariableOp_1?
7model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp@model_block_1_expand_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype029
7model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp?
9model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBmodel_block_1_expand_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02;
9model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1?
(model/block_1_expand_BN/FusedBatchNormV3FusedBatchNormV3$model/block_1_expand/Conv2D:output:0.model/block_1_expand_BN/ReadVariableOp:value:00model/block_1_expand_BN/ReadVariableOp_1:value:0?model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp:value:0Amodel/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P`:`:`:`:`:*
epsilon%o?:*
is_training( 2*
(model/block_1_expand_BN/FusedBatchNormV3?
model/block_1_expand_relu/Relu6Relu6,model/block_1_expand_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P`2!
model/block_1_expand_relu/Relu6?
model/block_1_pad/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               2 
model/block_1_pad/Pad/paddings?
model/block_1_pad/PadPad-model/block_1_expand_relu/Relu6:activations:0'model/block_1_pad/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????=Q`2
model/block_1_pad/Pad?
0model/block_1_depthwise/depthwise/ReadVariableOpReadVariableOp9model_block_1_depthwise_depthwise_readvariableop_resource*&
_output_shapes
:`*
dtype022
0model/block_1_depthwise/depthwise/ReadVariableOp?
'model/block_1_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      `      2)
'model/block_1_depthwise/depthwise/Shape?
/model/block_1_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      21
/model/block_1_depthwise/depthwise/dilation_rate?
!model/block_1_depthwise/depthwiseDepthwiseConv2dNativemodel/block_1_pad/Pad:output:08model/block_1_depthwise/depthwise/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(`*
paddingVALID*
strides
2#
!model/block_1_depthwise/depthwise?
)model/block_1_depthwise_BN/ReadVariableOpReadVariableOp2model_block_1_depthwise_bn_readvariableop_resource*
_output_shapes
:`*
dtype02+
)model/block_1_depthwise_BN/ReadVariableOp?
+model/block_1_depthwise_BN/ReadVariableOp_1ReadVariableOp4model_block_1_depthwise_bn_readvariableop_1_resource*
_output_shapes
:`*
dtype02-
+model/block_1_depthwise_BN/ReadVariableOp_1?
:model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpCmodel_block_1_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02<
:model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
<model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEmodel_block_1_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02>
<model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
+model/block_1_depthwise_BN/FusedBatchNormV3FusedBatchNormV3*model/block_1_depthwise/depthwise:output:01model/block_1_depthwise_BN/ReadVariableOp:value:03model/block_1_depthwise_BN/ReadVariableOp_1:value:0Bmodel/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0Dmodel/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(`:`:`:`:`:*
epsilon%o?:*
is_training( 2-
+model/block_1_depthwise_BN/FusedBatchNormV3?
"model/block_1_depthwise_relu/Relu6Relu6/model/block_1_depthwise_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(`2$
"model/block_1_depthwise_relu/Relu6?
+model/block_1_project/Conv2D/ReadVariableOpReadVariableOp4model_block_1_project_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02-
+model/block_1_project/Conv2D/ReadVariableOp?
model/block_1_project/Conv2DConv2D0model/block_1_depthwise_relu/Relu6:activations:03model/block_1_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
model/block_1_project/Conv2D?
'model/block_1_project_BN/ReadVariableOpReadVariableOp0model_block_1_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02)
'model/block_1_project_BN/ReadVariableOp?
)model/block_1_project_BN/ReadVariableOp_1ReadVariableOp2model_block_1_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02+
)model/block_1_project_BN/ReadVariableOp_1?
8model/block_1_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpAmodel_block_1_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02:
8model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp?
:model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCmodel_block_1_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02<
:model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1?
)model/block_1_project_BN/FusedBatchNormV3FusedBatchNormV3%model/block_1_project/Conv2D:output:0/model/block_1_project_BN/ReadVariableOp:value:01model/block_1_project_BN/ReadVariableOp_1:value:0@model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp:value:0Bmodel/block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2+
)model/block_1_project_BN/FusedBatchNormV3?
*model/block_2_expand/Conv2D/ReadVariableOpReadVariableOp3model_block_2_expand_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02,
*model/block_2_expand/Conv2D/ReadVariableOp?
model/block_2_expand/Conv2DConv2D-model/block_1_project_BN/FusedBatchNormV3:y:02model/block_2_expand/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2
model/block_2_expand/Conv2D?
&model/block_2_expand_BN/ReadVariableOpReadVariableOp/model_block_2_expand_bn_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model/block_2_expand_BN/ReadVariableOp?
(model/block_2_expand_BN/ReadVariableOp_1ReadVariableOp1model_block_2_expand_bn_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(model/block_2_expand_BN/ReadVariableOp_1?
7model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOpReadVariableOp@model_block_2_expand_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp?
9model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBmodel_block_2_expand_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1?
(model/block_2_expand_BN/FusedBatchNormV3FusedBatchNormV3$model/block_2_expand/Conv2D:output:0.model/block_2_expand_BN/ReadVariableOp:value:00model/block_2_expand_BN/ReadVariableOp_1:value:0?model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp:value:0Amodel/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(model/block_2_expand_BN/FusedBatchNormV3?
model/block_2_expand_relu/Relu6Relu6,model/block_2_expand_BN/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????(?2!
model/block_2_expand_relu/Relu6?
0model/block_2_depthwise/depthwise/ReadVariableOpReadVariableOp9model_block_2_depthwise_depthwise_readvariableop_resource*'
_output_shapes
:?*
dtype022
0model/block_2_depthwise/depthwise/ReadVariableOp?
'model/block_2_depthwise/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2)
'model/block_2_depthwise/depthwise/Shape?
/model/block_2_depthwise/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      21
/model/block_2_depthwise/depthwise/dilation_rate?
!model/block_2_depthwise/depthwiseDepthwiseConv2dNative-model/block_2_expand_relu/Relu6:activations:08model/block_2_depthwise/depthwise/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????(?*
paddingSAME*
strides
2#
!model/block_2_depthwise/depthwise?
)model/block_2_depthwise_BN/ReadVariableOpReadVariableOp2model_block_2_depthwise_bn_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)model/block_2_depthwise_BN/ReadVariableOp?
+model/block_2_depthwise_BN/ReadVariableOp_1ReadVariableOp4model_block_2_depthwise_bn_readvariableop_1_resource*
_output_shapes	
:?*
dtype02-
+model/block_2_depthwise_BN/ReadVariableOp_1?
:model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpCmodel_block_2_depthwise_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp?
<model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpEmodel_block_2_depthwise_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02>
<model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1?
+model/block_2_depthwise_BN/FusedBatchNormV3FusedBatchNormV3*model/block_2_depthwise/depthwise:output:01model/block_2_depthwise_BN/ReadVariableOp:value:03model/block_2_depthwise_BN/ReadVariableOp_1:value:0Bmodel/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp:value:0Dmodel/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????(?:?:?:?:?:*
epsilon%o?:*
is_training( 2-
+model/block_2_depthwise_BN/FusedBatchNormV3?
"model/block_2_depthwise_relu/Relu6Relu6/model/block_2_depthwise_BN/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????(?2$
"model/block_2_depthwise_relu/Relu6?
+model/block_2_project/Conv2D/ReadVariableOpReadVariableOp4model_block_2_project_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02-
+model/block_2_project/Conv2D/ReadVariableOp?
model/block_2_project/Conv2DConv2D0model/block_2_depthwise_relu/Relu6:activations:03model/block_2_project/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
2
model/block_2_project/Conv2D?
'model/block_2_project_BN/ReadVariableOpReadVariableOp0model_block_2_project_bn_readvariableop_resource*
_output_shapes
:*
dtype02)
'model/block_2_project_BN/ReadVariableOp?
)model/block_2_project_BN/ReadVariableOp_1ReadVariableOp2model_block_2_project_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02+
)model/block_2_project_BN/ReadVariableOp_1?
8model/block_2_project_BN/FusedBatchNormV3/ReadVariableOpReadVariableOpAmodel_block_2_project_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02:
8model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp?
:model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCmodel_block_2_project_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02<
:model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1?
)model/block_2_project_BN/FusedBatchNormV3FusedBatchNormV3%model/block_2_project/Conv2D:output:0/model/block_2_project_BN/ReadVariableOp:value:01model/block_2_project_BN/ReadVariableOp_1:value:0@model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp:value:0Bmodel/block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( 2+
)model/block_2_project_BN/FusedBatchNormV3?
model/block_2_add/addAddV2-model/block_1_project_BN/FusedBatchNormV3:y:0-model/block_2_project_BN/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(2
model/block_2_add/add?
model/C1/Conv2D/ReadVariableOpReadVariableOp'model_c1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
model/C1/Conv2D/ReadVariableOp?
model/C1/Conv2DConv2Dmodel/block_2_add/add:z:0&model/C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
model/C1/Conv2D?
model/C1/BiasAdd/ReadVariableOpReadVariableOp(model_c1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
model/C1/BiasAdd/ReadVariableOp?
model/C1/BiasAddBiasAddmodel/C1/Conv2D:output:0'model/C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/C1/BiasAdd{
model/C1/ReluRelumodel/C1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
model/C1/Relu?
model/C2/Conv2D/ReadVariableOpReadVariableOp'model_c2_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
model/C2/Conv2D/ReadVariableOp?
model/C2/Conv2DConv2Dmodel/C1/Relu:activations:0&model/C2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 *
paddingSAME*
strides
2
model/C2/Conv2D?
model/C2/BiasAdd/ReadVariableOpReadVariableOp(model_c2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
model/C2/BiasAdd/ReadVariableOp?
model/C2/BiasAddBiasAddmodel/C2/Conv2D:output:0'model/C2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
 2
model/C2/BiasAdd{
model/C2/ReluRelumodel/C2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
 2
model/C2/Relu{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 
  2
model/flatten/Const?
model/flatten/ReshapeReshapemodel/C2/Relu:activations:0model/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
model/flatten/Reshape?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!model/dense/MatMul/ReadVariableOp?
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense/MatMul?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"model/dense/BiasAdd/ReadVariableOp?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/dense/BiasAdd}
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/dense/Relu?
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02%
#model/dense_1/MatMul/ReadVariableOp?
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model/dense_1/MatMul?
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model/dense_1/BiasAdd?
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model/dense_1/Relu?
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02%
#model/dense_2/MatMul/ReadVariableOp?
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_2/MatMul?
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp?
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_2/BiasAdd?
model/dense_2/SoftmaxSoftmaxmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model/dense_2/Softmaxz
IdentityIdentitymodel/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp ^model/C1/BiasAdd/ReadVariableOp^model/C1/Conv2D/ReadVariableOp ^model/C2/BiasAdd/ReadVariableOp^model/C2/Conv2D/ReadVariableOp"^model/Conv1/Conv2D/ReadVariableOp1^model/block_1_depthwise/depthwise/ReadVariableOp;^model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp=^model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1*^model/block_1_depthwise_BN/ReadVariableOp,^model/block_1_depthwise_BN/ReadVariableOp_1+^model/block_1_expand/Conv2D/ReadVariableOp8^model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp:^model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_1'^model/block_1_expand_BN/ReadVariableOp)^model/block_1_expand_BN/ReadVariableOp_1,^model/block_1_project/Conv2D/ReadVariableOp9^model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp;^model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1(^model/block_1_project_BN/ReadVariableOp*^model/block_1_project_BN/ReadVariableOp_11^model/block_2_depthwise/depthwise/ReadVariableOp;^model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp=^model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1*^model/block_2_depthwise_BN/ReadVariableOp,^model/block_2_depthwise_BN/ReadVariableOp_1+^model/block_2_expand/Conv2D/ReadVariableOp8^model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp:^model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_1'^model/block_2_expand_BN/ReadVariableOp)^model/block_2_expand_BN/ReadVariableOp_1,^model/block_2_project/Conv2D/ReadVariableOp9^model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp;^model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1(^model/block_2_project_BN/ReadVariableOp*^model/block_2_project_BN/ReadVariableOp_1/^model/bn_Conv1/FusedBatchNormV3/ReadVariableOp1^model/bn_Conv1/FusedBatchNormV3/ReadVariableOp_1^model/bn_Conv1/ReadVariableOp ^model/bn_Conv1/ReadVariableOp_1#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp7^model/expanded_conv_depthwise/depthwise/ReadVariableOpA^model/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOpC^model/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_10^model/expanded_conv_depthwise_BN/ReadVariableOp2^model/expanded_conv_depthwise_BN/ReadVariableOp_12^model/expanded_conv_project/Conv2D/ReadVariableOp?^model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOpA^model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1.^model/expanded_conv_project_BN/ReadVariableOp0^model/expanded_conv_project_BN/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
model/C1/BiasAdd/ReadVariableOpmodel/C1/BiasAdd/ReadVariableOp2@
model/C1/Conv2D/ReadVariableOpmodel/C1/Conv2D/ReadVariableOp2B
model/C2/BiasAdd/ReadVariableOpmodel/C2/BiasAdd/ReadVariableOp2@
model/C2/Conv2D/ReadVariableOpmodel/C2/Conv2D/ReadVariableOp2F
!model/Conv1/Conv2D/ReadVariableOp!model/Conv1/Conv2D/ReadVariableOp2d
0model/block_1_depthwise/depthwise/ReadVariableOp0model/block_1_depthwise/depthwise/ReadVariableOp2x
:model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp:model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp2|
<model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1<model/block_1_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12V
)model/block_1_depthwise_BN/ReadVariableOp)model/block_1_depthwise_BN/ReadVariableOp2Z
+model/block_1_depthwise_BN/ReadVariableOp_1+model/block_1_depthwise_BN/ReadVariableOp_12X
*model/block_1_expand/Conv2D/ReadVariableOp*model/block_1_expand/Conv2D/ReadVariableOp2r
7model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp7model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp2v
9model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_19model/block_1_expand_BN/FusedBatchNormV3/ReadVariableOp_12P
&model/block_1_expand_BN/ReadVariableOp&model/block_1_expand_BN/ReadVariableOp2T
(model/block_1_expand_BN/ReadVariableOp_1(model/block_1_expand_BN/ReadVariableOp_12Z
+model/block_1_project/Conv2D/ReadVariableOp+model/block_1_project/Conv2D/ReadVariableOp2t
8model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp8model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp2x
:model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp_1:model/block_1_project_BN/FusedBatchNormV3/ReadVariableOp_12R
'model/block_1_project_BN/ReadVariableOp'model/block_1_project_BN/ReadVariableOp2V
)model/block_1_project_BN/ReadVariableOp_1)model/block_1_project_BN/ReadVariableOp_12d
0model/block_2_depthwise/depthwise/ReadVariableOp0model/block_2_depthwise/depthwise/ReadVariableOp2x
:model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp:model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp2|
<model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1<model/block_2_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12V
)model/block_2_depthwise_BN/ReadVariableOp)model/block_2_depthwise_BN/ReadVariableOp2Z
+model/block_2_depthwise_BN/ReadVariableOp_1+model/block_2_depthwise_BN/ReadVariableOp_12X
*model/block_2_expand/Conv2D/ReadVariableOp*model/block_2_expand/Conv2D/ReadVariableOp2r
7model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp7model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp2v
9model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_19model/block_2_expand_BN/FusedBatchNormV3/ReadVariableOp_12P
&model/block_2_expand_BN/ReadVariableOp&model/block_2_expand_BN/ReadVariableOp2T
(model/block_2_expand_BN/ReadVariableOp_1(model/block_2_expand_BN/ReadVariableOp_12Z
+model/block_2_project/Conv2D/ReadVariableOp+model/block_2_project/Conv2D/ReadVariableOp2t
8model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp8model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp2x
:model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp_1:model/block_2_project_BN/FusedBatchNormV3/ReadVariableOp_12R
'model/block_2_project_BN/ReadVariableOp'model/block_2_project_BN/ReadVariableOp2V
)model/block_2_project_BN/ReadVariableOp_1)model/block_2_project_BN/ReadVariableOp_12`
.model/bn_Conv1/FusedBatchNormV3/ReadVariableOp.model/bn_Conv1/FusedBatchNormV3/ReadVariableOp2d
0model/bn_Conv1/FusedBatchNormV3/ReadVariableOp_10model/bn_Conv1/FusedBatchNormV3/ReadVariableOp_12>
model/bn_Conv1/ReadVariableOpmodel/bn_Conv1/ReadVariableOp2B
model/bn_Conv1/ReadVariableOp_1model/bn_Conv1/ReadVariableOp_12H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2p
6model/expanded_conv_depthwise/depthwise/ReadVariableOp6model/expanded_conv_depthwise/depthwise/ReadVariableOp2?
@model/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp@model/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp2?
Bmodel/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_1Bmodel/expanded_conv_depthwise_BN/FusedBatchNormV3/ReadVariableOp_12b
/model/expanded_conv_depthwise_BN/ReadVariableOp/model/expanded_conv_depthwise_BN/ReadVariableOp2f
1model/expanded_conv_depthwise_BN/ReadVariableOp_11model/expanded_conv_depthwise_BN/ReadVariableOp_12f
1model/expanded_conv_project/Conv2D/ReadVariableOp1model/expanded_conv_project/Conv2D/ReadVariableOp2?
>model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp>model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp2?
@model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_1@model/expanded_conv_project_BN/FusedBatchNormV3/ReadVariableOp_12^
-model/expanded_conv_project_BN/ReadVariableOp-model/expanded_conv_project_BN/ReadVariableOp2b
/model/expanded_conv_project_BN/ReadVariableOp_1/model/expanded_conv_project_BN/ReadVariableOp_1:Y U
0
_output_shapes
:?????????x?
!
_user_specified_name	input_1
?	
?
4__inference_block_1_depthwise_BN_layer_call_fn_16328

inputs
unknown:`
	unknown_0:`
	unknown_1:`
	unknown_2:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????`*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_123112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????`: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
F
*__inference_Conv1_relu_layer_call_fn_15791

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_129592
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<P 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P :W S
/
_output_shapes
:?????????<P 
 
_user_specified_nameinputs
?
?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16220

inputs%
readvariableop_resource:`'
readvariableop_1_resource:`6
(fusedbatchnormv3_readvariableop_resource:`8
*fusedbatchnormv3_readvariableop_1_resource:`
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P`:`:`:`:`:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<P`2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<P`: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<P`
 
_user_specified_nameinputs
?

?
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_16293

inputs;
!depthwise_readvariableop_resource:`
identity??depthwise/ReadVariableOp?
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:`*
dtype02
depthwise/ReadVariableOp{
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      `      2
depthwise/Shape?
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2
depthwise/dilation_rate?
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????`*
paddingVALID*
strides
2
	depthwise?
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`2

Identityi
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????`: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16658

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_12723

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_11875

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
D
input_19
serving_default_input_1:0?????????x?;
dense_20
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer-20
layer_with_weights-14
layer-21
layer_with_weights-15
layer-22
layer-23
layer_with_weights-16
layer-24
layer_with_weights-17
layer-25
layer-26
layer_with_weights-18
layer-27
layer_with_weights-19
layer-28
layer-29
layer_with_weights-20
layer-30
 layer_with_weights-21
 layer-31
!layer_with_weights-22
!layer-32
"	optimizer
#regularization_losses
$trainable_variables
%	variables
&	keras_api
'
signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"
_tf_keras_network
6
(_init_input_shape"
_tf_keras_input_layer
?

)kernel
*regularization_losses
+trainable_variables
,	variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.axis
	/gamma
0beta
1moving_mean
2moving_variance
3regularization_losses
4trainable_variables
5	variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
7regularization_losses
8trainable_variables
9	variables
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
;depthwise_kernel
<regularization_losses
=trainable_variables
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Mkernel
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Raxis
	Sgamma
Tbeta
Umoving_mean
Vmoving_variance
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

[kernel
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
qdepthwise_kernel
rregularization_losses
strainable_variables
t	variables
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance
{regularization_losses
|trainable_variables
}	variables
~	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?depthwise_kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
 "
trackable_list_wrapper
p
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9"
trackable_list_wrapper
?
)0
/1
02
13
24
;5
A6
B7
C8
D9
M10
S11
T12
U13
V14
[15
a16
b17
c18
d19
q20
w21
x22
y23
z24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54"
trackable_list_wrapper
?
#regularization_losses
?metrics
$trainable_variables
?layer_metrics
?layers
?non_trainable_variables
%	variables
 ?layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
&:$ 2Conv1/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
)0"
trackable_list_wrapper
?
*regularization_losses
?metrics
+trainable_variables
?layer_metrics
?layers
?non_trainable_variables
,	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2bn_Conv1/gamma
: 2bn_Conv1/beta
$:"  (2bn_Conv1/moving_mean
(:&  (2bn_Conv1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
/0
01
12
23"
trackable_list_wrapper
?
3regularization_losses
?metrics
4trainable_variables
?layer_metrics
?layers
?non_trainable_variables
5	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
7regularization_losses
?metrics
8trainable_variables
?layer_metrics
?layers
?non_trainable_variables
9	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
B:@ 2(expanded_conv_depthwise/depthwise_kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
;0"
trackable_list_wrapper
?
<regularization_losses
?metrics
=trainable_variables
?layer_metrics
?layers
?non_trainable_variables
>	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.:, 2 expanded_conv_depthwise_BN/gamma
-:+ 2expanded_conv_depthwise_BN/beta
6:4  (2&expanded_conv_depthwise_BN/moving_mean
::8  (2*expanded_conv_depthwise_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
A0
B1
C2
D3"
trackable_list_wrapper
?
Eregularization_losses
?metrics
Ftrainable_variables
?layer_metrics
?layers
?non_trainable_variables
G	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Iregularization_losses
?metrics
Jtrainable_variables
?layer_metrics
?layers
?non_trainable_variables
K	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4 2expanded_conv_project/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
M0"
trackable_list_wrapper
?
Nregularization_losses
?metrics
Otrainable_variables
?layer_metrics
?layers
?non_trainable_variables
P	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*2expanded_conv_project_BN/gamma
+:)2expanded_conv_project_BN/beta
4:2 (2$expanded_conv_project_BN/moving_mean
8:6 (2(expanded_conv_project_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
S0
T1
U2
V3"
trackable_list_wrapper
?
Wregularization_losses
?metrics
Xtrainable_variables
?layer_metrics
?layers
?non_trainable_variables
Y	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-`2block_1_expand/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
[0"
trackable_list_wrapper
?
\regularization_losses
?metrics
]trainable_variables
?layer_metrics
?layers
?non_trainable_variables
^	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
%:#`2block_1_expand_BN/gamma
$:"`2block_1_expand_BN/beta
-:+` (2block_1_expand_BN/moving_mean
1:/` (2!block_1_expand_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
a0
b1
c2
d3"
trackable_list_wrapper
?
eregularization_losses
?metrics
ftrainable_variables
?layer_metrics
?layers
?non_trainable_variables
g	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
iregularization_losses
?metrics
jtrainable_variables
?layer_metrics
?layers
?non_trainable_variables
k	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
mregularization_losses
?metrics
ntrainable_variables
?layer_metrics
?layers
?non_trainable_variables
o	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
<::`2"block_1_depthwise/depthwise_kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
?
rregularization_losses
?metrics
strainable_variables
?layer_metrics
?layers
?non_trainable_variables
t	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(:&`2block_1_depthwise_BN/gamma
':%`2block_1_depthwise_BN/beta
0:.` (2 block_1_depthwise_BN/moving_mean
4:2` (2$block_1_depthwise_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
w0
x1
y2
z3"
trackable_list_wrapper
?
{regularization_losses
?metrics
|trainable_variables
?layer_metrics
?layers
?non_trainable_variables
}	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0:.`2block_1_project/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
&:$2block_1_project_BN/gamma
%:#2block_1_project_BN/beta
.:, (2block_1_project_BN/moving_mean
2:0 (2"block_1_project_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0:.?2block_2_expand/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
&:$?2block_2_expand_BN/gamma
%:#?2block_2_expand_BN/beta
.:,? (2block_2_expand_BN/moving_mean
2:0? (2!block_2_expand_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
=:;?2"block_2_depthwise/depthwise_kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'?2block_2_depthwise_BN/gamma
(:&?2block_2_depthwise_BN/beta
1:/? (2 block_2_depthwise_BN/moving_mean
5:3? (2$block_2_depthwise_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
1:/?2block_2_project/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
&:$2block_2_project_BN/gamma
%:#2block_2_project_BN/beta
.:, (2block_2_project_BN/moving_mean
2:0 (2"block_2_project_BN/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!@2	C1/kernel
:@2C1/bias
 "
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
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!@ 2	C2/kernel
: 2C2/bias
 "
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
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
??2dense/kernel
:?2
dense/bias
 "
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
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?@2dense_1/kernel
:@2dense_1/bias
 "
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
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@
2dense_2/kernel
:
2dense_2/bias
 "
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
?metrics
?trainable_variables
?layer_metrics
?layers
?non_trainable_variables
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
?
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
20
21
22
23
24
25
26
27
28
29
30
 31
!32"
trackable_list_wrapper
?
)0
/1
02
13
24
;5
A6
B7
C8
D9
M10
S11
T12
U13
V14
[15
a16
b17
c18
d19
q20
w21
x22
y23
z24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
/0
01
12
23"
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
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
A0
B1
C2
D3"
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
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
S0
T1
U2
V3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
[0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
a0
b1
c2
d3"
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
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
w0
x1
y2
z3"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
(:&@2Adam/C1/kernel/m
:@2Adam/C1/bias/m
(:&@ 2Adam/C2/kernel/m
: 2Adam/C2/bias/m
%:#
??2Adam/dense/kernel/m
:?2Adam/dense/bias/m
&:$	?@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
%:#@
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
(:&@2Adam/C1/kernel/v
:@2Adam/C1/bias/v
(:&@ 2Adam/C2/kernel/v
: 2Adam/C2/bias/v
%:#
??2Adam/dense/kernel/v
:?2Adam/dense/bias/v
&:$	?@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
%:#@
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
?2?
%__inference_model_layer_call_fn_13525
%__inference_model_layer_call_fn_15115
%__inference_model_layer_call_fn_15230
%__inference_model_layer_call_fn_14585?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_11649input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_model_layer_call_and_return_conditional_losses_15439
@__inference_model_layer_call_and_return_conditional_losses_15648
@__inference_model_layer_call_and_return_conditional_losses_14731
@__inference_model_layer_call_and_return_conditional_losses_14877?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_Conv1_layer_call_fn_15655?
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
@__inference_Conv1_layer_call_and_return_conditional_losses_15662?
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
(__inference_bn_Conv1_layer_call_fn_15675
(__inference_bn_Conv1_layer_call_fn_15688
(__inference_bn_Conv1_layer_call_fn_15701
(__inference_bn_Conv1_layer_call_fn_15714?
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
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15732
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15750
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15768
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15786?
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
*__inference_Conv1_relu_layer_call_fn_15791?
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
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_15796?
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
7__inference_expanded_conv_depthwise_layer_call_fn_15803
7__inference_expanded_conv_depthwise_layer_call_fn_15810?
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
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_15819
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_15828?
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
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15841
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15854
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15867
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15880?
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
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15898
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15916
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15934
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15952?
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
<__inference_expanded_conv_depthwise_relu_layer_call_fn_15957?
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
?2?
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_15962?
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
5__inference_expanded_conv_project_layer_call_fn_15969?
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
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_15976?
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
8__inference_expanded_conv_project_BN_layer_call_fn_15989
8__inference_expanded_conv_project_BN_layer_call_fn_16002
8__inference_expanded_conv_project_BN_layer_call_fn_16015
8__inference_expanded_conv_project_BN_layer_call_fn_16028?
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
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16046
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16064
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16082
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16100?
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
.__inference_block_1_expand_layer_call_fn_16107?
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
I__inference_block_1_expand_layer_call_and_return_conditional_losses_16114?
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
1__inference_block_1_expand_BN_layer_call_fn_16127
1__inference_block_1_expand_BN_layer_call_fn_16140
1__inference_block_1_expand_BN_layer_call_fn_16153
1__inference_block_1_expand_BN_layer_call_fn_16166?
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
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16184
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16202
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16220
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16238?
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
3__inference_block_1_expand_relu_layer_call_fn_16243?
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
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_16248?
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
?2?
+__inference_block_1_pad_layer_call_fn_16253
+__inference_block_1_pad_layer_call_fn_16258?
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
F__inference_block_1_pad_layer_call_and_return_conditional_losses_16264
F__inference_block_1_pad_layer_call_and_return_conditional_losses_16270?
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
1__inference_block_1_depthwise_layer_call_fn_16277
1__inference_block_1_depthwise_layer_call_fn_16284?
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
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_16293
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_16302?
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
4__inference_block_1_depthwise_BN_layer_call_fn_16315
4__inference_block_1_depthwise_BN_layer_call_fn_16328
4__inference_block_1_depthwise_BN_layer_call_fn_16341
4__inference_block_1_depthwise_BN_layer_call_fn_16354?
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
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16372
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16390
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16408
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16426?
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
6__inference_block_1_depthwise_relu_layer_call_fn_16431?
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
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_16436?
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
/__inference_block_1_project_layer_call_fn_16443?
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
J__inference_block_1_project_layer_call_and_return_conditional_losses_16450?
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
2__inference_block_1_project_BN_layer_call_fn_16463
2__inference_block_1_project_BN_layer_call_fn_16476
2__inference_block_1_project_BN_layer_call_fn_16489
2__inference_block_1_project_BN_layer_call_fn_16502?
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
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16520
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16538
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16556
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16574?
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
.__inference_block_2_expand_layer_call_fn_16581?
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
I__inference_block_2_expand_layer_call_and_return_conditional_losses_16588?
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
1__inference_block_2_expand_BN_layer_call_fn_16601
1__inference_block_2_expand_BN_layer_call_fn_16614
1__inference_block_2_expand_BN_layer_call_fn_16627
1__inference_block_2_expand_BN_layer_call_fn_16640?
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
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16658
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16676
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16694
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16712?
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
3__inference_block_2_expand_relu_layer_call_fn_16717?
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
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_16722?
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
1__inference_block_2_depthwise_layer_call_fn_16729
1__inference_block_2_depthwise_layer_call_fn_16736?
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
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_16745
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_16754?
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
4__inference_block_2_depthwise_BN_layer_call_fn_16767
4__inference_block_2_depthwise_BN_layer_call_fn_16780
4__inference_block_2_depthwise_BN_layer_call_fn_16793
4__inference_block_2_depthwise_BN_layer_call_fn_16806?
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
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16824
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16842
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16860
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16878?
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
6__inference_block_2_depthwise_relu_layer_call_fn_16883?
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
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_16888?
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
/__inference_block_2_project_layer_call_fn_16895?
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
J__inference_block_2_project_layer_call_and_return_conditional_losses_16902?
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
2__inference_block_2_project_BN_layer_call_fn_16915
2__inference_block_2_project_BN_layer_call_fn_16928
2__inference_block_2_project_BN_layer_call_fn_16941
2__inference_block_2_project_BN_layer_call_fn_16954?
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
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_16972
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_16990
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_17008
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_17026?
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
+__inference_block_2_add_layer_call_fn_17032?
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
F__inference_block_2_add_layer_call_and_return_conditional_losses_17038?
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
"__inference_C1_layer_call_fn_17047?
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
=__inference_C1_layer_call_and_return_conditional_losses_17058?
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
"__inference_C2_layer_call_fn_17067?
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
=__inference_C2_layer_call_and_return_conditional_losses_17078?
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
'__inference_flatten_layer_call_fn_17083?
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
B__inference_flatten_layer_call_and_return_conditional_losses_17089?
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
%__inference_dense_layer_call_fn_17098?
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
@__inference_dense_layer_call_and_return_conditional_losses_17109?
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
'__inference_dense_1_layer_call_fn_17118?
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
B__inference_dense_1_layer_call_and_return_conditional_losses_17129?
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
'__inference_dense_2_layer_call_fn_17138?
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
B__inference_dense_2_layer_call_and_return_conditional_losses_17149?
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
?B?
#__inference_signature_wrapper_15000input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
=__inference_C1_layer_call_and_return_conditional_losses_17058n??7?4
-?*
(?%
inputs?????????(
? "-?*
#? 
0?????????@
? ?
"__inference_C1_layer_call_fn_17047a??7?4
-?*
(?%
inputs?????????(
? " ??????????@?
=__inference_C2_layer_call_and_return_conditional_losses_17078n??7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????
 
? ?
"__inference_C2_layer_call_fn_17067a??7?4
-?*
(?%
inputs?????????@
? " ??????????
 ?
@__inference_Conv1_layer_call_and_return_conditional_losses_15662l)8?5
.?+
)?&
inputs?????????x?
? "-?*
#? 
0?????????<P 
? ?
%__inference_Conv1_layer_call_fn_15655_)8?5
.?+
)?&
inputs?????????x?
? " ??????????<P ?
E__inference_Conv1_relu_layer_call_and_return_conditional_losses_15796h7?4
-?*
(?%
inputs?????????<P 
? "-?*
#? 
0?????????<P 
? ?
*__inference_Conv1_relu_layer_call_fn_15791[7?4
-?*
(?%
inputs?????????<P 
? " ??????????<P ?
 __inference__wrapped_model_11649?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????9?6
/?,
*?'
input_1?????????x?
? "1?.
,
dense_2!?
dense_2?????????
?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16372?wxyzM?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16390?wxyzM?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16408rwxyz;?8
1?.
(?%
inputs?????????(`
p 
? "-?*
#? 
0?????????(`
? ?
O__inference_block_1_depthwise_BN_layer_call_and_return_conditional_losses_16426rwxyz;?8
1?.
(?%
inputs?????????(`
p
? "-?*
#? 
0?????????(`
? ?
4__inference_block_1_depthwise_BN_layer_call_fn_16315?wxyzM?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
4__inference_block_1_depthwise_BN_layer_call_fn_16328?wxyzM?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
4__inference_block_1_depthwise_BN_layer_call_fn_16341ewxyz;?8
1?.
(?%
inputs?????????(`
p 
? " ??????????(`?
4__inference_block_1_depthwise_BN_layer_call_fn_16354ewxyz;?8
1?.
(?%
inputs?????????(`
p
? " ??????????(`?
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_16293?qI?F
??<
:?7
inputs+???????????????????????????`
? "??<
5?2
0+???????????????????????????`
? ?
L__inference_block_1_depthwise_layer_call_and_return_conditional_losses_16302kq7?4
-?*
(?%
inputs?????????=Q`
? "-?*
#? 
0?????????(`
? ?
1__inference_block_1_depthwise_layer_call_fn_16277?qI?F
??<
:?7
inputs+???????????????????????????`
? "2?/+???????????????????????????`?
1__inference_block_1_depthwise_layer_call_fn_16284^q7?4
-?*
(?%
inputs?????????=Q`
? " ??????????(`?
Q__inference_block_1_depthwise_relu_layer_call_and_return_conditional_losses_16436h7?4
-?*
(?%
inputs?????????(`
? "-?*
#? 
0?????????(`
? ?
6__inference_block_1_depthwise_relu_layer_call_fn_16431[7?4
-?*
(?%
inputs?????????(`
? " ??????????(`?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16184?abcdM?J
C?@
:?7
inputs+???????????????????????????`
p 
? "??<
5?2
0+???????????????????????????`
? ?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16202?abcdM?J
C?@
:?7
inputs+???????????????????????????`
p
? "??<
5?2
0+???????????????????????????`
? ?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16220rabcd;?8
1?.
(?%
inputs?????????<P`
p 
? "-?*
#? 
0?????????<P`
? ?
L__inference_block_1_expand_BN_layer_call_and_return_conditional_losses_16238rabcd;?8
1?.
(?%
inputs?????????<P`
p
? "-?*
#? 
0?????????<P`
? ?
1__inference_block_1_expand_BN_layer_call_fn_16127?abcdM?J
C?@
:?7
inputs+???????????????????????????`
p 
? "2?/+???????????????????????????`?
1__inference_block_1_expand_BN_layer_call_fn_16140?abcdM?J
C?@
:?7
inputs+???????????????????????????`
p
? "2?/+???????????????????????????`?
1__inference_block_1_expand_BN_layer_call_fn_16153eabcd;?8
1?.
(?%
inputs?????????<P`
p 
? " ??????????<P`?
1__inference_block_1_expand_BN_layer_call_fn_16166eabcd;?8
1?.
(?%
inputs?????????<P`
p
? " ??????????<P`?
I__inference_block_1_expand_layer_call_and_return_conditional_losses_16114k[7?4
-?*
(?%
inputs?????????<P
? "-?*
#? 
0?????????<P`
? ?
.__inference_block_1_expand_layer_call_fn_16107^[7?4
-?*
(?%
inputs?????????<P
? " ??????????<P`?
N__inference_block_1_expand_relu_layer_call_and_return_conditional_losses_16248h7?4
-?*
(?%
inputs?????????<P`
? "-?*
#? 
0?????????<P`
? ?
3__inference_block_1_expand_relu_layer_call_fn_16243[7?4
-?*
(?%
inputs?????????<P`
? " ??????????<P`?
F__inference_block_1_pad_layer_call_and_return_conditional_losses_16264?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
F__inference_block_1_pad_layer_call_and_return_conditional_losses_16270h7?4
-?*
(?%
inputs?????????<P`
? "-?*
#? 
0?????????=Q`
? ?
+__inference_block_1_pad_layer_call_fn_16253?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
+__inference_block_1_pad_layer_call_fn_16258[7?4
-?*
(?%
inputs?????????<P`
? " ??????????=Q`?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16520?????M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16538?????M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16556v????;?8
1?.
(?%
inputs?????????(
p 
? "-?*
#? 
0?????????(
? ?
M__inference_block_1_project_BN_layer_call_and_return_conditional_losses_16574v????;?8
1?.
(?%
inputs?????????(
p
? "-?*
#? 
0?????????(
? ?
2__inference_block_1_project_BN_layer_call_fn_16463?????M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
2__inference_block_1_project_BN_layer_call_fn_16476?????M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
2__inference_block_1_project_BN_layer_call_fn_16489i????;?8
1?.
(?%
inputs?????????(
p 
? " ??????????(?
2__inference_block_1_project_BN_layer_call_fn_16502i????;?8
1?.
(?%
inputs?????????(
p
? " ??????????(?
J__inference_block_1_project_layer_call_and_return_conditional_losses_16450l?7?4
-?*
(?%
inputs?????????(`
? "-?*
#? 
0?????????(
? ?
/__inference_block_1_project_layer_call_fn_16443_?7?4
-?*
(?%
inputs?????????(`
? " ??????????(?
F__inference_block_2_add_layer_call_and_return_conditional_losses_17038?j?g
`?]
[?X
*?'
inputs/0?????????(
*?'
inputs/1?????????(
? "-?*
#? 
0?????????(
? ?
+__inference_block_2_add_layer_call_fn_17032?j?g
`?]
[?X
*?'
inputs/0?????????(
*?'
inputs/1?????????(
? " ??????????(?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16824?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16842?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16860x????<?9
2?/
)?&
inputs?????????(?
p 
? ".?+
$?!
0?????????(?
? ?
O__inference_block_2_depthwise_BN_layer_call_and_return_conditional_losses_16878x????<?9
2?/
)?&
inputs?????????(?
p
? ".?+
$?!
0?????????(?
? ?
4__inference_block_2_depthwise_BN_layer_call_fn_16767?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
4__inference_block_2_depthwise_BN_layer_call_fn_16780?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
4__inference_block_2_depthwise_BN_layer_call_fn_16793k????<?9
2?/
)?&
inputs?????????(?
p 
? "!??????????(??
4__inference_block_2_depthwise_BN_layer_call_fn_16806k????<?9
2?/
)?&
inputs?????????(?
p
? "!??????????(??
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_16745??J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
L__inference_block_2_depthwise_layer_call_and_return_conditional_losses_16754n?8?5
.?+
)?&
inputs?????????(?
? ".?+
$?!
0?????????(?
? ?
1__inference_block_2_depthwise_layer_call_fn_16729??J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
1__inference_block_2_depthwise_layer_call_fn_16736a?8?5
.?+
)?&
inputs?????????(?
? "!??????????(??
Q__inference_block_2_depthwise_relu_layer_call_and_return_conditional_losses_16888j8?5
.?+
)?&
inputs?????????(?
? ".?+
$?!
0?????????(?
? ?
6__inference_block_2_depthwise_relu_layer_call_fn_16883]8?5
.?+
)?&
inputs?????????(?
? "!??????????(??
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16658?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16676?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16694x????<?9
2?/
)?&
inputs?????????(?
p 
? ".?+
$?!
0?????????(?
? ?
L__inference_block_2_expand_BN_layer_call_and_return_conditional_losses_16712x????<?9
2?/
)?&
inputs?????????(?
p
? ".?+
$?!
0?????????(?
? ?
1__inference_block_2_expand_BN_layer_call_fn_16601?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
1__inference_block_2_expand_BN_layer_call_fn_16614?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
1__inference_block_2_expand_BN_layer_call_fn_16627k????<?9
2?/
)?&
inputs?????????(?
p 
? "!??????????(??
1__inference_block_2_expand_BN_layer_call_fn_16640k????<?9
2?/
)?&
inputs?????????(?
p
? "!??????????(??
I__inference_block_2_expand_layer_call_and_return_conditional_losses_16588m?7?4
-?*
(?%
inputs?????????(
? ".?+
$?!
0?????????(?
? ?
.__inference_block_2_expand_layer_call_fn_16581`?7?4
-?*
(?%
inputs?????????(
? "!??????????(??
N__inference_block_2_expand_relu_layer_call_and_return_conditional_losses_16722j8?5
.?+
)?&
inputs?????????(?
? ".?+
$?!
0?????????(?
? ?
3__inference_block_2_expand_relu_layer_call_fn_16717]8?5
.?+
)?&
inputs?????????(?
? "!??????????(??
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_16972?????M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_16990?????M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_17008v????;?8
1?.
(?%
inputs?????????(
p 
? "-?*
#? 
0?????????(
? ?
M__inference_block_2_project_BN_layer_call_and_return_conditional_losses_17026v????;?8
1?.
(?%
inputs?????????(
p
? "-?*
#? 
0?????????(
? ?
2__inference_block_2_project_BN_layer_call_fn_16915?????M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
2__inference_block_2_project_BN_layer_call_fn_16928?????M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
2__inference_block_2_project_BN_layer_call_fn_16941i????;?8
1?.
(?%
inputs?????????(
p 
? " ??????????(?
2__inference_block_2_project_BN_layer_call_fn_16954i????;?8
1?.
(?%
inputs?????????(
p
? " ??????????(?
J__inference_block_2_project_layer_call_and_return_conditional_losses_16902m?8?5
.?+
)?&
inputs?????????(?
? "-?*
#? 
0?????????(
? ?
/__inference_block_2_project_layer_call_fn_16895`?8?5
.?+
)?&
inputs?????????(?
? " ??????????(?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15732?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15750?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15768r/012;?8
1?.
(?%
inputs?????????<P 
p 
? "-?*
#? 
0?????????<P 
? ?
C__inference_bn_Conv1_layer_call_and_return_conditional_losses_15786r/012;?8
1?.
(?%
inputs?????????<P 
p
? "-?*
#? 
0?????????<P 
? ?
(__inference_bn_Conv1_layer_call_fn_15675?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
(__inference_bn_Conv1_layer_call_fn_15688?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
(__inference_bn_Conv1_layer_call_fn_15701e/012;?8
1?.
(?%
inputs?????????<P 
p 
? " ??????????<P ?
(__inference_bn_Conv1_layer_call_fn_15714e/012;?8
1?.
(?%
inputs?????????<P 
p
? " ??????????<P ?
B__inference_dense_1_layer_call_and_return_conditional_losses_17129_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? }
'__inference_dense_1_layer_call_fn_17118R??0?-
&?#
!?
inputs??????????
? "??????????@?
B__inference_dense_2_layer_call_and_return_conditional_losses_17149^??/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????

? |
'__inference_dense_2_layer_call_fn_17138Q??/?,
%?"
 ?
inputs?????????@
? "??????????
?
@__inference_dense_layer_call_and_return_conditional_losses_17109`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? |
%__inference_dense_layer_call_fn_17098S??0?-
&?#
!?
inputs??????????
? "????????????
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15898?ABCDM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15916?ABCDM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15934rABCD;?8
1?.
(?%
inputs?????????<P 
p 
? "-?*
#? 
0?????????<P 
? ?
U__inference_expanded_conv_depthwise_BN_layer_call_and_return_conditional_losses_15952rABCD;?8
1?.
(?%
inputs?????????<P 
p
? "-?*
#? 
0?????????<P 
? ?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15841?ABCDM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15854?ABCDM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15867eABCD;?8
1?.
(?%
inputs?????????<P 
p 
? " ??????????<P ?
:__inference_expanded_conv_depthwise_BN_layer_call_fn_15880eABCD;?8
1?.
(?%
inputs?????????<P 
p
? " ??????????<P ?
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_15819?;I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_expanded_conv_depthwise_layer_call_and_return_conditional_losses_15828k;7?4
-?*
(?%
inputs?????????<P 
? "-?*
#? 
0?????????<P 
? ?
7__inference_expanded_conv_depthwise_layer_call_fn_15803?;I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+??????????????????????????? ?
7__inference_expanded_conv_depthwise_layer_call_fn_15810^;7?4
-?*
(?%
inputs?????????<P 
? " ??????????<P ?
W__inference_expanded_conv_depthwise_relu_layer_call_and_return_conditional_losses_15962h7?4
-?*
(?%
inputs?????????<P 
? "-?*
#? 
0?????????<P 
? ?
<__inference_expanded_conv_depthwise_relu_layer_call_fn_15957[7?4
-?*
(?%
inputs?????????<P 
? " ??????????<P ?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16046?STUVM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16064?STUVM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16082rSTUV;?8
1?.
(?%
inputs?????????<P
p 
? "-?*
#? 
0?????????<P
? ?
S__inference_expanded_conv_project_BN_layer_call_and_return_conditional_losses_16100rSTUV;?8
1?.
(?%
inputs?????????<P
p
? "-?*
#? 
0?????????<P
? ?
8__inference_expanded_conv_project_BN_layer_call_fn_15989?STUVM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
8__inference_expanded_conv_project_BN_layer_call_fn_16002?STUVM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
8__inference_expanded_conv_project_BN_layer_call_fn_16015eSTUV;?8
1?.
(?%
inputs?????????<P
p 
? " ??????????<P?
8__inference_expanded_conv_project_BN_layer_call_fn_16028eSTUV;?8
1?.
(?%
inputs?????????<P
p
? " ??????????<P?
P__inference_expanded_conv_project_layer_call_and_return_conditional_losses_15976kM7?4
-?*
(?%
inputs?????????<P 
? "-?*
#? 
0?????????<P
? ?
5__inference_expanded_conv_project_layer_call_fn_15969^M7?4
-?*
(?%
inputs?????????<P 
? " ??????????<P?
B__inference_flatten_layer_call_and_return_conditional_losses_17089a7?4
-?*
(?%
inputs?????????
 
? "&?#
?
0??????????
? 
'__inference_flatten_layer_call_fn_17083T7?4
-?*
(?%
inputs?????????
 
? "????????????
@__inference_model_layer_call_and_return_conditional_losses_14731?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????A?>
7?4
*?'
input_1?????????x?
p 

 
? "%?"
?
0?????????

? ?
@__inference_model_layer_call_and_return_conditional_losses_14877?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????A?>
7?4
*?'
input_1?????????x?
p

 
? "%?"
?
0?????????

? ?
@__inference_model_layer_call_and_return_conditional_losses_15439?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????@?=
6?3
)?&
inputs?????????x?
p 

 
? "%?"
?
0?????????

? ?
@__inference_model_layer_call_and_return_conditional_losses_15648?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????@?=
6?3
)?&
inputs?????????x?
p

 
? "%?"
?
0?????????

? ?
%__inference_model_layer_call_fn_13525?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????A?>
7?4
*?'
input_1?????????x?
p 

 
? "??????????
?
%__inference_model_layer_call_fn_14585?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????A?>
7?4
*?'
input_1?????????x?
p

 
? "??????????
?
%__inference_model_layer_call_fn_15115?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????@?=
6?3
)?&
inputs?????????x?
p 

 
? "??????????
?
%__inference_model_layer_call_fn_15230?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????@?=
6?3
)?&
inputs?????????x?
p

 
? "??????????
?
#__inference_signature_wrapper_15000?U)/012;ABCDMSTUV[abcdqwxyz??????????????????????????????D?A
? 
:?7
5
input_1*?'
input_1?????????x?"1?.
,
dense_2!?
dense_2?????????
