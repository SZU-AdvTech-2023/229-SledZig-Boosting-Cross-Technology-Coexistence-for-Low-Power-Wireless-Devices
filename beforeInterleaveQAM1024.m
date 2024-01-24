function [Before_interleave_masks,Before_interleave_bits] = beforeInterleaveQAM1024(sim_consts,matrix_deinterleave,subcarriers)
%BEFOREINTERLEAVEQAM1024 此处显示有关此函数的摘要
    %----------------------QAM-1024----------------------------------
    output_bits=zeros(1,sim_consts.block_size);
    output_masks = zeros(1,sim_consts.block_size);
    %对于WiFi 2.412GHz, ZigBee 2.410GHz,ZigBee处于WiFi 48个subcarrier中的[16-21]
    %QAM1024 x1000 x1000 2,3,4,5;7,8,9,10
%     for k=15*10+2:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*10+3:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*10+4:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*10+5:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*10+7:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*10+8:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*10+9:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*10+10:10:21*10
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+2;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+3;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+4;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+5;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+7;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+8;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+9;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*10+10;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    %Before_interleave_bits=output_bits(matrix_deinterleave);
    Before_interleave_masks=output_masks(matrix_deinterleave);
    Before_interleave_bits=output_bits(matrix_deinterleave);
end

