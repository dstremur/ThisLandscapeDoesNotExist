ś

 ő
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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
Ŕ
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ÍĚL>"
Ttype0:
2
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Č
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:*
dtype0

conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_14/kernel
~
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*'
_output_shapes
:*
dtype0

conv2d_transpose_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_8/bias

+conv2d_transpose_8/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_8/bias*
_output_shapes	
:*
dtype0

conv2d_transpose_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_8/kernel

-conv2d_transpose_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_8/kernel*(
_output_shapes
:*
dtype0

conv2d_transpose_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_7/bias

+conv2d_transpose_7/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/bias*
_output_shapes	
:*
dtype0

conv2d_transpose_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_7/kernel

-conv2d_transpose_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/kernel*(
_output_shapes
:*
dtype0

conv2d_transpose_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_6/bias

+conv2d_transpose_6/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/bias*
_output_shapes	
:*
dtype0

conv2d_transpose_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_6/kernel

-conv2d_transpose_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/kernel*(
_output_shapes
:*
dtype0
r
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
k
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes

:*
dtype0
{
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/kernel
t
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*!
_output_shapes
:*
dtype0

NoOpNoOp
8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ö7
valueĚ7BÉ7 BÂ7
´
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Ś
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Č
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op*

)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
Č
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op*

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
Č
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op*

G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 
Č
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
 U_jit_compiled_convolution_op*
J
0
1
&2
'3
54
65
D6
E7
S8
T9*
J
0
1
&2
'3
54
65
D6
E7
S8
T9*
* 
°
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
[trace_0
\trace_1
]trace_2
^trace_3* 
6
_trace_0
`trace_1
atrace_2
btrace_3* 
* 

cserving_default* 

0
1*

0
1*
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

ptrace_0* 

qtrace_0* 

&0
'1*

&0
'1*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
ic
VARIABLE_VALUEconv2d_transpose_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

~trace_0* 

trace_0* 

50
61*

50
61*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

trace_0* 

trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

trace_0* 

trace_0* 

D0
E1*

D0
E1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

trace_0* 

trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_8/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_8/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

S0
T1*

S0
T1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

Ątrace_0* 

˘trace_0* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
C
0
1
2
3
4
5
6
7
	8*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
|
serving_default_input_7Placeholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
Ż
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_7dense_6/kerneldense_6/biasconv2d_transpose_6/kernelconv2d_transpose_6/biasconv2d_transpose_7/kernelconv2d_transpose_7/biasconv2d_transpose_8/kernelconv2d_transpose_8/biasconv2d_14/kernelconv2d_14/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_101410
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ě
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp-conv2d_transpose_6/kernel/Read/ReadVariableOp+conv2d_transpose_6/bias/Read/ReadVariableOp-conv2d_transpose_7/kernel/Read/ReadVariableOp+conv2d_transpose_7/bias/Read/ReadVariableOp-conv2d_transpose_8/kernel/Read/ReadVariableOp+conv2d_transpose_8/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_101901
˙
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasconv2d_transpose_6/kernelconv2d_transpose_6/biasconv2d_transpose_7/kernelconv2d_transpose_7/biasconv2d_transpose_8/kernelconv2d_transpose_8/biasconv2d_14/kernelconv2d_14/bias*
Tin
2*
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_101941ë
Ń
Ť
3__inference_conv2d_transpose_8_layer_call_fn_101785

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101042
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ó
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_101086

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Š
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
â 

N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_101766

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
â 

N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_101714

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ř	
ů
C__inference_dense_6_layer_call_and_return_conditional_losses_101066

inputs3
matmul_readvariableop_resource:/
biasadd_readvariableop_resource:

identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0k
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙t
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype0x
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityBiasAdd:output:0^NoOp*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ő*
ç
E__inference_generator_layer_call_and_return_conditional_losses_101350
input_7#
dense_6_101320:
dense_6_101322:
5
conv2d_transpose_6_101326:(
conv2d_transpose_6_101328:	5
conv2d_transpose_7_101332:(
conv2d_transpose_7_101334:	5
conv2d_transpose_8_101338:(
conv2d_transpose_8_101340:	+
conv2d_14_101344:
conv2d_14_101346:
identity˘!conv2d_14/StatefulPartitionedCall˘*conv2d_transpose_6/StatefulPartitionedCall˘*conv2d_transpose_7/StatefulPartitionedCall˘*conv2d_transpose_8/StatefulPartitionedCall˘dense_6/StatefulPartitionedCallň
dense_6/StatefulPartitionedCallStatefulPartitionedCallinput_7dense_6_101320dense_6_101322*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_101066č
reshape_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_101086Ŕ
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_101326conv2d_transpose_6_101328*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_100954ý
leaky_re_lu_18/PartitionedCallPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101098Ĺ
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0conv2d_transpose_7_101332conv2d_transpose_7_101334*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_100998ý
leaky_re_lu_19/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101110Ç
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_19/PartitionedCall:output:0conv2d_transpose_8_101338conv2d_transpose_8_101340*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101042˙
leaky_re_lu_20/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101122˘
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0conv2d_14_101344conv2d_14_101346*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101135
IdentityIdentity*conv2d_14/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp"^conv2d_14/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_7
â 

N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101042

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
f
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101098

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙  :X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙  
 
_user_specified_nameinputs

˙
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101135

inputs9
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙d
IdentityIdentitySigmoid:y:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ň*
ć
E__inference_generator_layer_call_and_return_conditional_losses_101142

inputs#
dense_6_101067:
dense_6_101069:
5
conv2d_transpose_6_101088:(
conv2d_transpose_6_101090:	5
conv2d_transpose_7_101100:(
conv2d_transpose_7_101102:	5
conv2d_transpose_8_101112:(
conv2d_transpose_8_101114:	+
conv2d_14_101136:
conv2d_14_101138:
identity˘!conv2d_14/StatefulPartitionedCall˘*conv2d_transpose_6/StatefulPartitionedCall˘*conv2d_transpose_7/StatefulPartitionedCall˘*conv2d_transpose_8/StatefulPartitionedCall˘dense_6/StatefulPartitionedCallń
dense_6/StatefulPartitionedCallStatefulPartitionedCallinputsdense_6_101067dense_6_101069*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_101066č
reshape_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_101086Ŕ
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_101088conv2d_transpose_6_101090*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_100954ý
leaky_re_lu_18/PartitionedCallPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101098Ĺ
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0conv2d_transpose_7_101100conv2d_transpose_7_101102*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_100998ý
leaky_re_lu_19/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101110Ç
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_19/PartitionedCall:output:0conv2d_transpose_8_101112conv2d_transpose_8_101114*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101042˙
leaky_re_lu_20/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101122˘
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0conv2d_14_101136conv2d_14_101138*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101135
IdentityIdentity*conv2d_14/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp"^conv2d_14/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ľ


$__inference_signature_wrapper_101410
input_7
unknown:
	unknown_0:
%
	unknown_1:
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	$
	unknown_7:
	unknown_8:
identity˘StatefulPartitionedCallŹ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_100917y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_7
Ó
a
E__inference_reshape_2_layer_call_and_return_conditional_losses_101672

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Š
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
f
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101110

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙@@:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
Ő*
ç
E__inference_generator_layer_call_and_return_conditional_losses_101383
input_7#
dense_6_101353:
dense_6_101355:
5
conv2d_transpose_6_101359:(
conv2d_transpose_6_101361:	5
conv2d_transpose_7_101365:(
conv2d_transpose_7_101367:	5
conv2d_transpose_8_101371:(
conv2d_transpose_8_101373:	+
conv2d_14_101377:
conv2d_14_101379:
identity˘!conv2d_14/StatefulPartitionedCall˘*conv2d_transpose_6/StatefulPartitionedCall˘*conv2d_transpose_7/StatefulPartitionedCall˘*conv2d_transpose_8/StatefulPartitionedCall˘dense_6/StatefulPartitionedCallň
dense_6/StatefulPartitionedCallStatefulPartitionedCallinput_7dense_6_101353dense_6_101355*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_101066č
reshape_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_101086Ŕ
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_101359conv2d_transpose_6_101361*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_100954ý
leaky_re_lu_18/PartitionedCallPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101098Ĺ
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0conv2d_transpose_7_101365conv2d_transpose_7_101367*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_100998ý
leaky_re_lu_19/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101110Ç
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_19/PartitionedCall:output:0conv2d_transpose_8_101371conv2d_transpose_8_101373*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101042˙
leaky_re_lu_20/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101122˘
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0conv2d_14_101377conv2d_14_101379*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101135
IdentityIdentity*conv2d_14/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp"^conv2d_14/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_7
Ń
Ť
3__inference_conv2d_transpose_6_layer_call_fn_101681

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_100954
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Đ
K
/__inference_leaky_re_lu_19_layer_call_fn_101771

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101110i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙@@:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
¸
F
*__inference_reshape_2_layer_call_fn_101658

inputs
identityź
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_101086i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü


*__inference_generator_layer_call_fn_101435

inputs
unknown:
	unknown_0:
%
	unknown_1:
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	$
	unknown_7:
	unknown_8:
identity˘StatefulPartitionedCallĎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_101142y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ě,

"__inference__traced_restore_101941
file_prefix4
assignvariableop_dense_6_kernel:/
assignvariableop_1_dense_6_bias:
H
,assignvariableop_2_conv2d_transpose_6_kernel:9
*assignvariableop_3_conv2d_transpose_6_bias:	H
,assignvariableop_4_conv2d_transpose_7_kernel:9
*assignvariableop_5_conv2d_transpose_7_bias:	H
,assignvariableop_6_conv2d_transpose_8_kernel:9
*assignvariableop_7_conv2d_transpose_8_bias:	>
#assignvariableop_8_conv2d_14_kernel:/
!assignvariableop_9_conv2d_14_bias:
identity_11˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9ł
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ů
valueĎBĚB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B Ő
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp,assignvariableop_2_conv2d_transpose_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp*assignvariableop_3_conv2d_transpose_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp,assignvariableop_4_conv2d_transpose_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp*assignvariableop_5_conv2d_transpose_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp,assignvariableop_6_conv2d_transpose_8_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp*assignvariableop_7_conv2d_transpose_8_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ť
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
Ü


*__inference_generator_layer_call_fn_101460

inputs
unknown:
	unknown_0:
%
	unknown_1:
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	$
	unknown_7:
	unknown_8:
identity˘StatefulPartitionedCallĎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_101269y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Đ
K
/__inference_leaky_re_lu_18_layer_call_fn_101719

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101098i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙  :X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙  
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101828

inputs
identityR
	LeakyRelu	LeakyReluinputs*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityLeakyRelu:activations:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙:Z V
2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ř
ú

!__inference__wrapped_model_100917
input_7E
0generator_dense_6_matmul_readvariableop_resource:A
1generator_dense_6_biasadd_readvariableop_resource:
a
Egenerator_conv2d_transpose_6_conv2d_transpose_readvariableop_resource:K
<generator_conv2d_transpose_6_biasadd_readvariableop_resource:	a
Egenerator_conv2d_transpose_7_conv2d_transpose_readvariableop_resource:K
<generator_conv2d_transpose_7_biasadd_readvariableop_resource:	a
Egenerator_conv2d_transpose_8_conv2d_transpose_readvariableop_resource:K
<generator_conv2d_transpose_8_biasadd_readvariableop_resource:	M
2generator_conv2d_14_conv2d_readvariableop_resource:A
3generator_conv2d_14_biasadd_readvariableop_resource:
identity˘*generator/conv2d_14/BiasAdd/ReadVariableOp˘)generator/conv2d_14/Conv2D/ReadVariableOp˘3generator/conv2d_transpose_6/BiasAdd/ReadVariableOp˘<generator/conv2d_transpose_6/conv2d_transpose/ReadVariableOp˘3generator/conv2d_transpose_7/BiasAdd/ReadVariableOp˘<generator/conv2d_transpose_7/conv2d_transpose/ReadVariableOp˘3generator/conv2d_transpose_8/BiasAdd/ReadVariableOp˘<generator/conv2d_transpose_8/conv2d_transpose/ReadVariableOp˘(generator/dense_6/BiasAdd/ReadVariableOp˘'generator/dense_6/MatMul/ReadVariableOp
'generator/dense_6/MatMul/ReadVariableOpReadVariableOp0generator_dense_6_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0
generator/dense_6/MatMulMatMulinput_7/generator/dense_6/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
(generator/dense_6/BiasAdd/ReadVariableOpReadVariableOp1generator_dense_6_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0Ž
generator/dense_6/BiasAddBiasAdd"generator/dense_6/MatMul:product:00generator/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙k
generator/reshape_2/ShapeShape"generator/dense_6/BiasAdd:output:0*
T0*
_output_shapes
:q
'generator/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)generator/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)generator/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ľ
!generator/reshape_2/strided_sliceStridedSlice"generator/reshape_2/Shape:output:00generator/reshape_2/strided_slice/stack:output:02generator/reshape_2/strided_slice/stack_1:output:02generator/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#generator/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#generator/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :f
#generator/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :
!generator/reshape_2/Reshape/shapePack*generator/reshape_2/strided_slice:output:0,generator/reshape_2/Reshape/shape/1:output:0,generator/reshape_2/Reshape/shape/2:output:0,generator/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:ą
generator/reshape_2/ReshapeReshape"generator/dense_6/BiasAdd:output:0*generator/reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙v
"generator/conv2d_transpose_6/ShapeShape$generator/reshape_2/Reshape:output:0*
T0*
_output_shapes
:z
0generator/conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2generator/conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*generator/conv2d_transpose_6/strided_sliceStridedSlice+generator/conv2d_transpose_6/Shape:output:09generator/conv2d_transpose_6/strided_slice/stack:output:0;generator/conv2d_transpose_6/strided_slice/stack_1:output:0;generator/conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$generator/conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B : f
$generator/conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B : g
$generator/conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :
"generator/conv2d_transpose_6/stackPack3generator/conv2d_transpose_6/strided_slice:output:0-generator/conv2d_transpose_6/stack/1:output:0-generator/conv2d_transpose_6/stack/2:output:0-generator/conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:|
2generator/conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4generator/conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4generator/conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
,generator/conv2d_transpose_6/strided_slice_1StridedSlice+generator/conv2d_transpose_6/stack:output:0;generator/conv2d_transpose_6/strided_slice_1/stack:output:0=generator/conv2d_transpose_6/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskĚ
<generator/conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ŕ
-generator/conv2d_transpose_6/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_6/stack:output:0Dgenerator/conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0$generator/reshape_2/Reshape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides
­
3generator/conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ß
$generator/conv2d_transpose_6/BiasAddBiasAdd6generator/conv2d_transpose_6/conv2d_transpose:output:0;generator/conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  
"generator/leaky_re_lu_18/LeakyRelu	LeakyRelu-generator/conv2d_transpose_6/BiasAdd:output:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  
"generator/conv2d_transpose_7/ShapeShape0generator/leaky_re_lu_18/LeakyRelu:activations:0*
T0*
_output_shapes
:z
0generator/conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2generator/conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*generator/conv2d_transpose_7/strided_sliceStridedSlice+generator/conv2d_transpose_7/Shape:output:09generator/conv2d_transpose_7/strided_slice/stack:output:0;generator/conv2d_transpose_7/strided_slice/stack_1:output:0;generator/conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$generator/conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@f
$generator/conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@g
$generator/conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value
B :
"generator/conv2d_transpose_7/stackPack3generator/conv2d_transpose_7/strided_slice:output:0-generator/conv2d_transpose_7/stack/1:output:0-generator/conv2d_transpose_7/stack/2:output:0-generator/conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:|
2generator/conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4generator/conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4generator/conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
,generator/conv2d_transpose_7/strided_slice_1StridedSlice+generator/conv2d_transpose_7/stack:output:0;generator/conv2d_transpose_7/strided_slice_1/stack:output:0=generator/conv2d_transpose_7/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskĚ
<generator/conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_7_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ě
-generator/conv2d_transpose_7/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_7/stack:output:0Dgenerator/conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:00generator/leaky_re_lu_18/LeakyRelu:activations:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides
­
3generator/conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ß
$generator/conv2d_transpose_7/BiasAddBiasAdd6generator/conv2d_transpose_7/conv2d_transpose:output:0;generator/conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
"generator/leaky_re_lu_19/LeakyRelu	LeakyRelu-generator/conv2d_transpose_7/BiasAdd:output:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
"generator/conv2d_transpose_8/ShapeShape0generator/leaky_re_lu_19/LeakyRelu:activations:0*
T0*
_output_shapes
:z
0generator/conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2generator/conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*generator/conv2d_transpose_8/strided_sliceStridedSlice+generator/conv2d_transpose_8/Shape:output:09generator/conv2d_transpose_8/strided_slice/stack:output:0;generator/conv2d_transpose_8/strided_slice/stack_1:output:0;generator/conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$generator/conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value
B :g
$generator/conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :g
$generator/conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value
B :
"generator/conv2d_transpose_8/stackPack3generator/conv2d_transpose_8/strided_slice:output:0-generator/conv2d_transpose_8/stack/1:output:0-generator/conv2d_transpose_8/stack/2:output:0-generator/conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:|
2generator/conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4generator/conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4generator/conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
,generator/conv2d_transpose_8/strided_slice_1StridedSlice+generator/conv2d_transpose_8/stack:output:0;generator/conv2d_transpose_8/strided_slice_1/stack:output:0=generator/conv2d_transpose_8/strided_slice_1/stack_1:output:0=generator/conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskĚ
<generator/conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOpEgenerator_conv2d_transpose_8_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Î
-generator/conv2d_transpose_8/conv2d_transposeConv2DBackpropInput+generator/conv2d_transpose_8/stack:output:0Dgenerator/conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:00generator/leaky_re_lu_19/LeakyRelu:activations:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
­
3generator/conv2d_transpose_8/BiasAdd/ReadVariableOpReadVariableOp<generator_conv2d_transpose_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
$generator/conv2d_transpose_8/BiasAddBiasAdd6generator/conv2d_transpose_8/conv2d_transpose:output:0;generator/conv2d_transpose_8/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
"generator/leaky_re_lu_20/LeakyRelu	LeakyRelu-generator/conv2d_transpose_8/BiasAdd:output:0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙Ľ
)generator/conv2d_14/Conv2D/ReadVariableOpReadVariableOp2generator_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0í
generator/conv2d_14/Conv2DConv2D0generator/leaky_re_lu_20/LeakyRelu:activations:01generator/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

*generator/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp3generator_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ť
generator/conv2d_14/BiasAddBiasAdd#generator/conv2d_14/Conv2D:output:02generator/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
generator/conv2d_14/SigmoidSigmoid$generator/conv2d_14/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentitygenerator/conv2d_14/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙Ó
NoOpNoOp+^generator/conv2d_14/BiasAdd/ReadVariableOp*^generator/conv2d_14/Conv2D/ReadVariableOp4^generator/conv2d_transpose_6/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_6/conv2d_transpose/ReadVariableOp4^generator/conv2d_transpose_7/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_7/conv2d_transpose/ReadVariableOp4^generator/conv2d_transpose_8/BiasAdd/ReadVariableOp=^generator/conv2d_transpose_8/conv2d_transpose/ReadVariableOp)^generator/dense_6/BiasAdd/ReadVariableOp(^generator/dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2X
*generator/conv2d_14/BiasAdd/ReadVariableOp*generator/conv2d_14/BiasAdd/ReadVariableOp2V
)generator/conv2d_14/Conv2D/ReadVariableOp)generator/conv2d_14/Conv2D/ReadVariableOp2j
3generator/conv2d_transpose_6/BiasAdd/ReadVariableOp3generator/conv2d_transpose_6/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_6/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_6/conv2d_transpose/ReadVariableOp2j
3generator/conv2d_transpose_7/BiasAdd/ReadVariableOp3generator/conv2d_transpose_7/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_7/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_7/conv2d_transpose/ReadVariableOp2j
3generator/conv2d_transpose_8/BiasAdd/ReadVariableOp3generator/conv2d_transpose_8/BiasAdd/ReadVariableOp2|
<generator/conv2d_transpose_8/conv2d_transpose/ReadVariableOp<generator/conv2d_transpose_8/conv2d_transpose/ReadVariableOp2T
(generator/dense_6/BiasAdd/ReadVariableOp(generator/dense_6/BiasAdd/ReadVariableOp2R
'generator/dense_6/MatMul/ReadVariableOp'generator/dense_6/MatMul/ReadVariableOp:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_7
žo
Ő	
E__inference_generator_layer_call_and_return_conditional_losses_101634

inputs;
&dense_6_matmul_readvariableop_resource:7
'dense_6_biasadd_readvariableop_resource:
W
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_6_biasadd_readvariableop_resource:	W
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_7_biasadd_readvariableop_resource:	W
;conv2d_transpose_8_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_8_biasadd_readvariableop_resource:	C
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:
identity˘ conv2d_14/BiasAdd/ReadVariableOp˘conv2d_14/Conv2D/ReadVariableOp˘)conv2d_transpose_6/BiasAdd/ReadVariableOp˘2conv2d_transpose_6/conv2d_transpose/ReadVariableOp˘)conv2d_transpose_7/BiasAdd/ReadVariableOp˘2conv2d_transpose_7/conv2d_transpose/ReadVariableOp˘)conv2d_transpose_8/BiasAdd/ReadVariableOp˘2conv2d_transpose_8/conv2d_transpose/ReadVariableOp˘dense_6/BiasAdd/ReadVariableOp˘dense_6/MatMul/ReadVariableOp
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0{
dense_6/MatMulMatMulinputs%dense_6/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙W
reshape_2/ShapeShapedense_6/BiasAdd:output:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ű
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_2/ReshapeReshapedense_6/BiasAdd:output:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙b
conv2d_transpose_6/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :č
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0reshape_2/Reshape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides

)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Á
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  |
leaky_re_lu_18/LeakyRelu	LeakyRelu#conv2d_transpose_6/BiasAdd:output:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  n
conv2d_transpose_7/ShapeShape&leaky_re_lu_18/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value
B :č
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0¤
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_18/LeakyRelu:activations:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides

)conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Á
conv2d_transpose_7/BiasAddBiasAdd,conv2d_transpose_7/conv2d_transpose:output:01conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@|
leaky_re_lu_19/LeakyRelu	LeakyRelu#conv2d_transpose_7/BiasAdd:output:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@n
conv2d_transpose_8/ShapeShape&leaky_re_lu_19/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_8/strided_sliceStridedSlice!conv2d_transpose_8/Shape:output:0/conv2d_transpose_8/strided_slice/stack:output:01conv2d_transpose_8/strided_slice/stack_1:output:01conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value
B :č
conv2d_transpose_8/stackPack)conv2d_transpose_8/strided_slice:output:0#conv2d_transpose_8/stack/1:output:0#conv2d_transpose_8/stack/2:output:0#conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_8/strided_slice_1StridedSlice!conv2d_transpose_8/stack:output:01conv2d_transpose_8/strided_slice_1/stack:output:03conv2d_transpose_8/strided_slice_1/stack_1:output:03conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
2conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_8_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ś
#conv2d_transpose_8/conv2d_transposeConv2DBackpropInput!conv2d_transpose_8/stack:output:0:conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_19/LeakyRelu:activations:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)conv2d_transpose_8/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ă
conv2d_transpose_8/BiasAddBiasAdd,conv2d_transpose_8/conv2d_transpose:output:01conv2d_transpose_8/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙~
leaky_re_lu_20/LeakyRelu	LeakyRelu#conv2d_transpose_8/BiasAdd:output:0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0Ď
conv2d_14/Conv2DConv2D&leaky_re_lu_20/LeakyRelu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙t
conv2d_14/SigmoidSigmoidconv2d_14/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙n
IdentityIdentityconv2d_14/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ď
NoOpNoOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOp*^conv2d_transpose_7/BiasAdd/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp*^conv2d_transpose_8/BiasAdd/ReadVariableOp3^conv2d_transpose_8/conv2d_transpose/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_7/BiasAdd/ReadVariableOp)conv2d_transpose_7/BiasAdd/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_8/BiasAdd/ReadVariableOp)conv2d_transpose_8/BiasAdd/ReadVariableOp2h
2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
â 

N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_100954

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ř
K
/__inference_leaky_re_lu_20_layer_call_fn_101823

inputs
identityĂ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101122k
IdentityIdentityPartitionedCall:output:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙:Z V
2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
f
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101776

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙@@:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@
 
_user_specified_nameinputs
Ň*
ć
E__inference_generator_layer_call_and_return_conditional_losses_101269

inputs#
dense_6_101239:
dense_6_101241:
5
conv2d_transpose_6_101245:(
conv2d_transpose_6_101247:	5
conv2d_transpose_7_101251:(
conv2d_transpose_7_101253:	5
conv2d_transpose_8_101257:(
conv2d_transpose_8_101259:	+
conv2d_14_101263:
conv2d_14_101265:
identity˘!conv2d_14/StatefulPartitionedCall˘*conv2d_transpose_6/StatefulPartitionedCall˘*conv2d_transpose_7/StatefulPartitionedCall˘*conv2d_transpose_8/StatefulPartitionedCall˘dense_6/StatefulPartitionedCallń
dense_6/StatefulPartitionedCallStatefulPartitionedCallinputsdense_6_101239dense_6_101241*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_101066č
reshape_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_2_layer_call_and_return_conditional_losses_101086Ŕ
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_transpose_6_101245conv2d_transpose_6_101247*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_100954ý
leaky_re_lu_18/PartitionedCallPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101098Ĺ
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_18/PartitionedCall:output:0conv2d_transpose_7_101251conv2d_transpose_7_101253*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_100998ý
leaky_re_lu_19/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101110Ç
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_19/PartitionedCall:output:0conv2d_transpose_8_101257conv2d_transpose_8_101259*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101042˙
leaky_re_lu_20/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101122˘
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0conv2d_14_101263conv2d_14_101265*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101135
IdentityIdentity*conv2d_14/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp"^conv2d_14/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
â 

N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101818

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Î

(__inference_dense_6_layer_call_fn_101643

inputs
unknown:
	unknown_0:

identity˘StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_101066q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
f
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101724

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙  :X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙  
 
_user_specified_nameinputs
ß


*__inference_generator_layer_call_fn_101165
input_7
unknown:
	unknown_0:
%
	unknown_1:
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	$
	unknown_7:
	unknown_8:
identity˘StatefulPartitionedCallĐ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_101142y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_7
ú
 
*__inference_conv2d_14_layer_call_fn_101837

inputs"
unknown:
	unknown_0:
identity˘StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101135y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
â 

N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_100998

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ů
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ý
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ß


*__inference_generator_layer_call_fn_101317
input_7
unknown:
	unknown_0:
%
	unknown_1:
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	$
	unknown_7:
	unknown_8:
identity˘StatefulPartitionedCallĐ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_generator_layer_call_and_return_conditional_losses_101269y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_7
žo
Ő	
E__inference_generator_layer_call_and_return_conditional_losses_101547

inputs;
&dense_6_matmul_readvariableop_resource:7
'dense_6_biasadd_readvariableop_resource:
W
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_6_biasadd_readvariableop_resource:	W
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_7_biasadd_readvariableop_resource:	W
;conv2d_transpose_8_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_8_biasadd_readvariableop_resource:	C
(conv2d_14_conv2d_readvariableop_resource:7
)conv2d_14_biasadd_readvariableop_resource:
identity˘ conv2d_14/BiasAdd/ReadVariableOp˘conv2d_14/Conv2D/ReadVariableOp˘)conv2d_transpose_6/BiasAdd/ReadVariableOp˘2conv2d_transpose_6/conv2d_transpose/ReadVariableOp˘)conv2d_transpose_7/BiasAdd/ReadVariableOp˘2conv2d_transpose_7/conv2d_transpose/ReadVariableOp˘)conv2d_transpose_8/BiasAdd/ReadVariableOp˘2conv2d_transpose_8/conv2d_transpose/ReadVariableOp˘dense_6/BiasAdd/ReadVariableOp˘dense_6/MatMul/ReadVariableOp
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0{
dense_6/MatMulMatMulinputs%dense_6/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙W
reshape_2/ShapeShapedense_6/BiasAdd:output:0*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :Ű
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_2/ReshapeReshapedense_6/BiasAdd:output:0 reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙b
conv2d_transpose_6/ShapeShapereshape_2/Reshape:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B : ]
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :č
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0reshape_2/Reshape:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  *
paddingSAME*
strides

)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Á
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  |
leaky_re_lu_18/LeakyRelu	LeakyRelu#conv2d_transpose_6/BiasAdd:output:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙  n
conv2d_transpose_7/ShapeShape&leaky_re_lu_18/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@]
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value
B :č
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0¤
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_18/LeakyRelu:activations:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
paddingSAME*
strides

)conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Á
conv2d_transpose_7/BiasAddBiasAdd,conv2d_transpose_7/conv2d_transpose:output:01conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@|
leaky_re_lu_19/LeakyRelu	LeakyRelu#conv2d_transpose_7/BiasAdd:output:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@@n
conv2d_transpose_8/ShapeShape&leaky_re_lu_19/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_8/strided_sliceStridedSlice!conv2d_transpose_8/Shape:output:0/conv2d_transpose_8/strided_slice/stack:output:01conv2d_transpose_8/strided_slice/stack_1:output:01conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value
B :]
conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value
B :č
conv2d_transpose_8/stackPack)conv2d_transpose_8/strided_slice:output:0#conv2d_transpose_8/stack/1:output:0#conv2d_transpose_8/stack/2:output:0#conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
"conv2d_transpose_8/strided_slice_1StridedSlice!conv2d_transpose_8/stack:output:01conv2d_transpose_8/strided_slice_1/stack:output:03conv2d_transpose_8/strided_slice_1/stack_1:output:03conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¸
2conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_8_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype0Ś
#conv2d_transpose_8/conv2d_transposeConv2DBackpropInput!conv2d_transpose_8/stack:output:0:conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_19/LeakyRelu:activations:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)conv2d_transpose_8/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ă
conv2d_transpose_8/BiasAddBiasAdd,conv2d_transpose_8/conv2d_transpose:output:01conv2d_transpose_8/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙~
leaky_re_lu_20/LeakyRelu	LeakyRelu#conv2d_transpose_8/BiasAdd:output:0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0Ď
conv2d_14/Conv2DConv2D&leaky_re_lu_20/LeakyRelu:activations:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙t
conv2d_14/SigmoidSigmoidconv2d_14/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙n
IdentityIdentityconv2d_14/Sigmoid:y:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ď
NoOpNoOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOp*^conv2d_transpose_7/BiasAdd/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp*^conv2d_transpose_8/BiasAdd/ReadVariableOp3^conv2d_transpose_8/conv2d_transpose/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_7/BiasAdd/ReadVariableOp)conv2d_transpose_7/BiasAdd/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_8/BiasAdd/ReadVariableOp)conv2d_transpose_8/BiasAdd/ReadVariableOp2h
2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

˙
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101848

inputs9
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
SigmoidSigmoidBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙d
IdentityIdentitySigmoid:y:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ř	
ů
C__inference_dense_6_layer_call_and_return_conditional_losses_101653

inputs3
matmul_readvariableop_resource:/
biasadd_readvariableop_resource:

identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0k
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙t
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype0x
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityBiasAdd:output:0^NoOp*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

f
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101122

inputs
identityR
	LeakyRelu	LeakyReluinputs*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityLeakyRelu:activations:0*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙:Z V
2
_output_shapes 
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ń
Ť
3__inference_conv2d_transpose_7_layer_call_fn_101733

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_100998
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ě!
ţ
__inference__traced_save_101901
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop8
4savev2_conv2d_transpose_6_kernel_read_readvariableop6
2savev2_conv2d_transpose_6_bias_read_readvariableop8
4savev2_conv2d_transpose_7_kernel_read_readvariableop6
2savev2_conv2d_transpose_7_bias_read_readvariableop8
4savev2_conv2d_transpose_8_kernel_read_readvariableop6
2savev2_conv2d_transpose_8_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: °
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ů
valueĎBĚB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ¤
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop4savev2_conv2d_transpose_6_kernel_read_readvariableop2savev2_conv2d_transpose_6_bias_read_readvariableop4savev2_conv2d_transpose_7_kernel_read_readvariableop2savev2_conv2d_transpose_7_bias_read_readvariableop4savev2_conv2d_transpose_8_kernel_read_readvariableop2savev2_conv2d_transpose_8_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: ::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
::"

_output_shapes

::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::-	)
'
_output_shapes
:: 


_output_shapes
::

_output_shapes
: "żL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ˇ
serving_defaultŁ
<
input_71
serving_default_input_7:0˙˙˙˙˙˙˙˙˙G
	conv2d_14:
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ůÔ
Î
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
ť
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op"
_tf_keras_layer
Ľ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op"
_tf_keras_layer
Ľ
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op"
_tf_keras_layer
Ľ
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
 U_jit_compiled_convolution_op"
_tf_keras_layer
f
0
1
&2
'3
54
65
D6
E7
S8
T9"
trackable_list_wrapper
f
0
1
&2
'3
54
65
D6
E7
S8
T9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ţ
[trace_0
\trace_1
]trace_2
^trace_32ó
*__inference_generator_layer_call_fn_101165
*__inference_generator_layer_call_fn_101435
*__inference_generator_layer_call_fn_101460
*__inference_generator_layer_call_fn_101317Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 z[trace_0z\trace_1z]trace_2z^trace_3
Ę
_trace_0
`trace_1
atrace_2
btrace_32ß
E__inference_generator_layer_call_and_return_conditional_losses_101547
E__inference_generator_layer_call_and_return_conditional_losses_101634
E__inference_generator_layer_call_and_return_conditional_losses_101350
E__inference_generator_layer_call_and_return_conditional_losses_101383Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 z_trace_0z`trace_1zatrace_2zbtrace_3
ĚBÉ
!__inference__wrapped_model_100917input_7"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
,
cserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ě
itrace_02Ď
(__inference_dense_6_layer_call_fn_101643˘
˛
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
annotationsŞ *
 zitrace_0

jtrace_02ę
C__inference_dense_6_layer_call_and_return_conditional_losses_101653˘
˛
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
annotationsŞ *
 zjtrace_0
#:!2dense_6/kernel
:2dense_6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î
ptrace_02Ń
*__inference_reshape_2_layer_call_fn_101658˘
˛
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
annotationsŞ *
 zptrace_0

qtrace_02ě
E__inference_reshape_2_layer_call_and_return_conditional_losses_101672˘
˛
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
annotationsŞ *
 zqtrace_0
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
÷
wtrace_02Ú
3__inference_conv2d_transpose_6_layer_call_fn_101681˘
˛
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
annotationsŞ *
 zwtrace_0

xtrace_02ő
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_101714˘
˛
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
annotationsŞ *
 zxtrace_0
5:32conv2d_transpose_6/kernel
&:$2conv2d_transpose_6/bias
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
ó
~trace_02Ö
/__inference_leaky_re_lu_18_layer_call_fn_101719˘
˛
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
annotationsŞ *
 z~trace_0

trace_02ń
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101724˘
˛
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
annotationsŞ *
 ztrace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ů
trace_02Ú
3__inference_conv2d_transpose_7_layer_call_fn_101733˘
˛
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
annotationsŞ *
 ztrace_0

trace_02ő
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_101766˘
˛
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
annotationsŞ *
 ztrace_0
5:32conv2d_transpose_7/kernel
&:$2conv2d_transpose_7/bias
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ő
trace_02Ö
/__inference_leaky_re_lu_19_layer_call_fn_101771˘
˛
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
annotationsŞ *
 ztrace_0

trace_02ń
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101776˘
˛
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
annotationsŞ *
 ztrace_0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ů
trace_02Ú
3__inference_conv2d_transpose_8_layer_call_fn_101785˘
˛
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
annotationsŞ *
 ztrace_0

trace_02ő
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101818˘
˛
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
annotationsŞ *
 ztrace_0
5:32conv2d_transpose_8/kernel
&:$2conv2d_transpose_8/bias
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ő
trace_02Ö
/__inference_leaky_re_lu_20_layer_call_fn_101823˘
˛
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
annotationsŞ *
 ztrace_0

trace_02ń
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101828˘
˛
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
annotationsŞ *
 ztrace_0
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
đ
Ątrace_02Ń
*__inference_conv2d_14_layer_call_fn_101837˘
˛
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
annotationsŞ *
 zĄtrace_0

˘trace_02ě
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101848˘
˛
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
annotationsŞ *
 z˘trace_0
+:)2conv2d_14/kernel
:2conv2d_14/bias
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ýBú
*__inference_generator_layer_call_fn_101165input_7"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
üBů
*__inference_generator_layer_call_fn_101435inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
üBů
*__inference_generator_layer_call_fn_101460inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ýBú
*__inference_generator_layer_call_fn_101317input_7"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
E__inference_generator_layer_call_and_return_conditional_losses_101547inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
E__inference_generator_layer_call_and_return_conditional_losses_101634inputs"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
E__inference_generator_layer_call_and_return_conditional_losses_101350input_7"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
E__inference_generator_layer_call_and_return_conditional_losses_101383input_7"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ËBČ
$__inference_signature_wrapper_101410input_7"
˛
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
annotationsŞ *
 
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
ÜBŮ
(__inference_dense_6_layer_call_fn_101643inputs"˘
˛
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
annotationsŞ *
 
÷Bô
C__inference_dense_6_layer_call_and_return_conditional_losses_101653inputs"˘
˛
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
annotationsŞ *
 
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
ŢBŰ
*__inference_reshape_2_layer_call_fn_101658inputs"˘
˛
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
annotationsŞ *
 
ůBö
E__inference_reshape_2_layer_call_and_return_conditional_losses_101672inputs"˘
˛
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
annotationsŞ *
 
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
çBä
3__inference_conv2d_transpose_6_layer_call_fn_101681inputs"˘
˛
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
annotationsŞ *
 
B˙
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_101714inputs"˘
˛
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
annotationsŞ *
 
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
ăBŕ
/__inference_leaky_re_lu_18_layer_call_fn_101719inputs"˘
˛
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
annotationsŞ *
 
ţBű
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101724inputs"˘
˛
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
annotationsŞ *
 
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
çBä
3__inference_conv2d_transpose_7_layer_call_fn_101733inputs"˘
˛
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
annotationsŞ *
 
B˙
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_101766inputs"˘
˛
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
annotationsŞ *
 
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
ăBŕ
/__inference_leaky_re_lu_19_layer_call_fn_101771inputs"˘
˛
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
annotationsŞ *
 
ţBű
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101776inputs"˘
˛
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
annotationsŞ *
 
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
çBä
3__inference_conv2d_transpose_8_layer_call_fn_101785inputs"˘
˛
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
annotationsŞ *
 
B˙
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101818inputs"˘
˛
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
annotationsŞ *
 
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
ăBŕ
/__inference_leaky_re_lu_20_layer_call_fn_101823inputs"˘
˛
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
annotationsŞ *
 
ţBű
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101828inputs"˘
˛
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
annotationsŞ *
 
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
ŢBŰ
*__inference_conv2d_14_layer_call_fn_101837inputs"˘
˛
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
annotationsŞ *
 
ůBö
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101848inputs"˘
˛
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
annotationsŞ *
 Ś
!__inference__wrapped_model_100917
&'56DEST1˘.
'˘$
"
input_7˙˙˙˙˙˙˙˙˙
Ş "?Ş<
:
	conv2d_14-*
	conv2d_14˙˙˙˙˙˙˙˙˙ş
E__inference_conv2d_14_layer_call_and_return_conditional_losses_101848qST:˘7
0˘-
+(
inputs˙˙˙˙˙˙˙˙˙
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 
*__inference_conv2d_14_layer_call_fn_101837dST:˘7
0˘-
+(
inputs˙˙˙˙˙˙˙˙˙
Ş ""˙˙˙˙˙˙˙˙˙ĺ
N__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_101714&'J˘G
@˘=
;8
inputs,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "@˘=
63
0,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 ˝
3__inference_conv2d_transpose_6_layer_call_fn_101681&'J˘G
@˘=
;8
inputs,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "30,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ĺ
N__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_10176656J˘G
@˘=
;8
inputs,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "@˘=
63
0,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 ˝
3__inference_conv2d_transpose_7_layer_call_fn_10173356J˘G
@˘=
;8
inputs,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "30,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ĺ
N__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_101818DEJ˘G
@˘=
;8
inputs,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "@˘=
63
0,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 ˝
3__inference_conv2d_transpose_8_layer_call_fn_101785DEJ˘G
@˘=
;8
inputs,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "30,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ś
C__inference_dense_6_layer_call_and_return_conditional_losses_101653_0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "'˘$

0˙˙˙˙˙˙˙˙˙
 ~
(__inference_dense_6_layer_call_fn_101643R0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Á
E__inference_generator_layer_call_and_return_conditional_losses_101350x
&'56DEST9˘6
/˘,
"
input_7˙˙˙˙˙˙˙˙˙
p 

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 Á
E__inference_generator_layer_call_and_return_conditional_losses_101383x
&'56DEST9˘6
/˘,
"
input_7˙˙˙˙˙˙˙˙˙
p

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 Ŕ
E__inference_generator_layer_call_and_return_conditional_losses_101547w
&'56DEST8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 Ŕ
E__inference_generator_layer_call_and_return_conditional_losses_101634w
&'56DEST8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙
 
*__inference_generator_layer_call_fn_101165k
&'56DEST9˘6
/˘,
"
input_7˙˙˙˙˙˙˙˙˙
p 

 
Ş ""˙˙˙˙˙˙˙˙˙
*__inference_generator_layer_call_fn_101317k
&'56DEST9˘6
/˘,
"
input_7˙˙˙˙˙˙˙˙˙
p

 
Ş ""˙˙˙˙˙˙˙˙˙
*__inference_generator_layer_call_fn_101435j
&'56DEST8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş ""˙˙˙˙˙˙˙˙˙
*__inference_generator_layer_call_fn_101460j
&'56DEST8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş ""˙˙˙˙˙˙˙˙˙¸
J__inference_leaky_re_lu_18_layer_call_and_return_conditional_losses_101724j8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙  
Ş ".˘+
$!
0˙˙˙˙˙˙˙˙˙  
 
/__inference_leaky_re_lu_18_layer_call_fn_101719]8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙  
Ş "!˙˙˙˙˙˙˙˙˙  ¸
J__inference_leaky_re_lu_19_layer_call_and_return_conditional_losses_101776j8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙@@
Ş ".˘+
$!
0˙˙˙˙˙˙˙˙˙@@
 
/__inference_leaky_re_lu_19_layer_call_fn_101771]8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙@@
Ş "!˙˙˙˙˙˙˙˙˙@@ź
J__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_101828n:˘7
0˘-
+(
inputs˙˙˙˙˙˙˙˙˙
Ş "0˘-
&#
0˙˙˙˙˙˙˙˙˙
 
/__inference_leaky_re_lu_20_layer_call_fn_101823a:˘7
0˘-
+(
inputs˙˙˙˙˙˙˙˙˙
Ş "# ˙˙˙˙˙˙˙˙˙Ź
E__inference_reshape_2_layer_call_and_return_conditional_losses_101672c1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş ".˘+
$!
0˙˙˙˙˙˙˙˙˙
 
*__inference_reshape_2_layer_call_fn_101658V1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "!˙˙˙˙˙˙˙˙˙´
$__inference_signature_wrapper_101410
&'56DEST<˘9
˘ 
2Ş/
-
input_7"
input_7˙˙˙˙˙˙˙˙˙"?Ş<
:
	conv2d_14-*
	conv2d_14˙˙˙˙˙˙˙˙˙