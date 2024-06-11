________________________________________________________________________________________________
 Layer (type)                   Output Shape         Param #     Connected to                     
==================================================================================================
 input_1 (InputLayer)           [(None, 64, 64, 1)]  0           []                               
                                                                                                  
 conv2d (Conv2D)                (None, 64, 64, 64)   640         ['input_1[0][0]']                
                                                                                                  
 conv2d_1 (Conv2D)              (None, 64, 64, 64)   36928       ['conv2d[0][0]']                 
                                                                                                  
 max_pooling2d (MaxPooling2D)   (None, 32, 32, 64)   0           ['conv2d_1[0][0]']               
                                                                                                  
 conv2d_2 (Conv2D)              (None, 32, 32, 128)  73856       ['max_pooling2d[0][0]']          
                                                                                                  
 conv2d_3 (Conv2D)              (None, 32, 32, 128)  147584      ['conv2d_2[0][0]']               
                                                                                                  
 max_pooling2d_1 (MaxPooling2D)  (None, 16, 16, 128)  0          ['conv2d_3[0][0]']               
                                                                                                  
 conv2d_4 (Conv2D)              (None, 16, 16, 256)  295168      ['max_pooling2d_1[0][0]']        
                                                                                                  
 conv2d_5 (Conv2D)              (None, 16, 16, 256)  590080      ['conv2d_4[0][0]']               
                                                                                                  
 max_pooling2d_2 (MaxPooling2D)  (None, 8, 8, 256)   0           ['conv2d_5[0][0]']               
                                                                                                  
 conv2d_6 (Conv2D)              (None, 8, 8, 512)    1180160     ['max_pooling2d_2[0][0]']        
                                                                                                  
 conv2d_7 (Conv2D)              (None, 8, 8, 512)    2359808     ['conv2d_6[0][0]']               
                                                                                                  
 dropout_1 (Dropout)            (None, 8, 8, 512)    0           ['conv2d_7[0][0]']               
                                                                                                  
 conv2d_8 (Conv2D)              (None, 8, 8, 512)    2359808     ['dropout_1[0][0]']              
                                                                                                  
 conv2d_9 (Conv2D)              (None, 8, 8, 512)    2359808     ['conv2d_8[0][0]']   
 dropout_2 (Dropout)            (None, 8, 8, 512)    0           ['conv2d_9[0][0]']               
                                                                                                  
 concatenate (Concatenate)      (None, 8, 8, 1024)   0           ['dropout_2[0][0]',              
                                                                  'dropout_1[0][0]']              
                                                                                                  
 conv2d_10 (Conv2D)             (None, 8, 8, 512)    4719104     ['concatenate[0][0]']            
                                                                                                  
 conv2d_11 (Conv2D)             (None, 8, 8, 512)    2359808     ['conv2d_10[0][0]']              
                                                                                                  
 dropout_3 (Dropout)            (None, 8, 8, 512)    0           ['conv2d_11[0][0]']              
                                                                                                  
 conv2d_transpose (Conv2DTransp  (None, 16, 16, 256)  524544     ['dropout_3[0][0]']              
 ose)                                                                                             
                                                                                                  
 batch_normalization (BatchNorm  (None, 16, 16, 256)  1024       ['conv2d_transpose[0][0]']       
 alization)                                                                                       
                                                                                                  
 dropout (Dropout)              (None, 16, 16, 256)  0           ['conv2d_5[0][0]']               
                                                                                                  
 activation (Activation)        (None, 16, 16, 256)  0           ['batch_normalization[0][0]']    
                                                                                                  
 reshape (Reshape)              (None, 1, 16, 16, 2  0           ['dropout[0][0]']                
                                56)                                                               
                                                                                                  
 reshape_1 (Reshape)            (None, 1, 16, 16, 2  0           ['activation[0][0]']             
                                56)                                                               
                                                                                                  
 concatenate_1 (Concatenate)    (None, 2, 16, 16, 2  0           ['reshape[0][0]',                
                                56)                               'reshape_1[0][0]']              
                                                                                                  
 conv_lstm2d (ConvLSTM2D)       (None, 16, 16, 128)  1769984     ['concatenate_1[0][0]']          
                                                                                                  
 conv2d_12 (Conv2D)             (None, 16, 16, 256)  295168      ['conv_lstm2d[0][0]']            
                                                                                                  
 conv2d_13 (Conv2D)             (None, 16, 16, 256)  590080      ['conv2d_12[0][0]']
                                                                                                  
 conv2d_transpose_1 (Conv2DTran  (None, 32, 32, 128)  131200     ['conv2d_13[0][0]']              
 spose)                                                                                           
                                                                                                  
 batch_normalization_1 (BatchNo  (None, 32, 32, 128)  512        ['conv2d_transpose_1[0][0]']     
 rmalization)                                                                                     
                                                                                                  
 activation_1 (Activation)      (None, 32, 32, 128)  0           ['batch_normalization_1[0][0]']  
                                                                                                  
 reshape_2 (Reshape)            (None, 1, 32, 32, 1  0           ['conv2d_3[0][0]']               
                                28)                                                               
                                                                                                  
 reshape_3 (Reshape)            (None, 1, 32, 32, 1  0           ['activation_1[0][0]']           
                                28)                                                               
                                                                                                  
 concatenate_2 (Concatenate)    (None, 2, 32, 32, 1  0           ['reshape_2[0][0]',              
                                28)                               'reshape_3[0][0]']              
                                                                                                  
 conv_lstm2d_1 (ConvLSTM2D)     (None, 32, 32, 64)   442624      ['concatenate_2[0][0]']          
                                                                                                  
 conv2d_14 (Conv2D)             (None, 32, 32, 128)  73856       ['conv_lstm2d_1[0][0]']          
                                                                                                  
 conv2d_15 (Conv2D)             (None, 32, 32, 128)  147584      ['conv2d_14[0][0]']              
                                                                                                  
 conv2d_transpose_2 (Conv2DTran  (None, 64, 64, 64)  32832       ['conv2d_15[0][0]']              
 spose)                                                                                           
                                                                                                  
 batch_normalization_2 (BatchNo  (None, 64, 64, 64)  256         ['conv2d_transpose_2[0][0]']     
 rmalization)                                                                                     
                                                                                                  
 activation_2 (Activation)      (None, 64, 64, 64)   0           ['batch_normalization_2[0][0]']  
                                                                                                  
 reshape_4 (Reshape)            (None, 1, 64, 64, 6  0           ['conv2d_1[0][0]']               
                                4)                                                                
                                                                                                  
 reshape_5 (Reshape)            (None, 1, 64, 64, 6  0           ['activation_2[0][0]']  
                              4)                                                                
                                                                                                  
 concatenate_3 (Concatenate)    (None, 2, 64, 64, 6  0           ['reshape_4[0][0]',              
                                4)                                'reshape_5[0][0]']              
                                                                                                  
 conv_lstm2d_2 (ConvLSTM2D)     (None, 64, 64, 32)   110720      ['concatenate_3[0][0]']          
                                                                                                  
 conv2d_16 (Conv2D)             (None, 64, 64, 64)   18496       ['conv_lstm2d_2[0][0]']          
                                                                                                  
 conv2d_17 (Conv2D)             (None, 64, 64, 64)   36928       ['conv2d_16[0][0]']              
                                                                                                  
 conv2d_18 (Conv2D)             (None, 64, 64, 2)    1154        ['conv2d_17[0][0]']              
                                                                                                  
 conv2d_19 (Conv2D)             (None, 64, 64, 1)    3           ['conv2d_18[0][0]']              
                                                                                                  
==================================================================================================
Total params: 20,659,717
Trainable params: 20,658,821
Non-trainable params: 896
