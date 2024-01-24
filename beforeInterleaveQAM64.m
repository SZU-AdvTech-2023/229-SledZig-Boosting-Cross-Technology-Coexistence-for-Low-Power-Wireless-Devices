function [Before_interleave_masks,Before_interleave_bits] = beforeInterleaveQAM64(sim_consts,matrix_deinterleave,subcarriers)
%BEFOREINTERLEAVEQAM64 �˴���ʾ�йش˺�����ժҪ

    %----------------------QAM-64----------------------------------
    output_bits=zeros(1,sim_consts.block_size);    
    output_masks = zeros(1,sim_consts.block_size);
    %����WiFi 2.412GHz, ZigBee 2.410GHz,ZigBee����WiFi 48��subcarrier�е�[18-24] 16-21
    %QAM-64 ���õ���2 3 5 6������Ϊ�ؼ�����
    %�������bitsΪsignificant bits
%     for k=15*6+2:6:21*6     %16-21���ز��ĵ�2������ %x10x10�����������
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*6+3:6:21*6     %16-21���ز��ĵ�3������
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*6+5:6:21*6     %16-21���ز��ĵ�5������
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*6+6:6:21*6     %16-21���ز��ĵ�6������
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+2;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+3;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+5;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+6;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    %Before_interleave_bits=output_bits(matrix_deinterleave);
    Before_interleave_masks=output_masks(matrix_deinterleave);  %��Ϊ��֯ǰ��λ��
    Before_interleave_bits=output_bits(matrix_deinterleave);    %��Ϊ��֯ǰ�ı���
end

