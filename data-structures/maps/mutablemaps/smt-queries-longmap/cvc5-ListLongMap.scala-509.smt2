; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12158 () Bool)

(assert start!12158)

(declare-fun b!102718 () Bool)

(declare-fun b_free!2497 () Bool)

(declare-fun b_next!2497 () Bool)

(assert (=> b!102718 (= b_free!2497 (not b_next!2497))))

(declare-fun tp!9803 () Bool)

(declare-fun b_and!6353 () Bool)

(assert (=> b!102718 (= tp!9803 b_and!6353)))

(declare-fun b!102715 () Bool)

(declare-fun b_free!2499 () Bool)

(declare-fun b_next!2499 () Bool)

(assert (=> b!102715 (= b_free!2499 (not b_next!2499))))

(declare-fun tp!9801 () Bool)

(declare-fun b_and!6355 () Bool)

(assert (=> b!102715 (= tp!9801 b_and!6355)))

(declare-fun b!102705 () Bool)

(declare-fun e!66901 () Bool)

(declare-fun tp_is_empty!2665 () Bool)

(assert (=> b!102705 (= e!66901 tp_is_empty!2665)))

(declare-fun b!102706 () Bool)

(declare-fun e!66898 () Bool)

(assert (=> b!102706 (= e!66898 tp_is_empty!2665)))

(declare-fun b!102707 () Bool)

(declare-fun e!66907 () Bool)

(assert (=> b!102707 (= e!66907 tp_is_empty!2665)))

(declare-fun mapIsEmpty!3875 () Bool)

(declare-fun mapRes!3875 () Bool)

(assert (=> mapIsEmpty!3875 mapRes!3875))

(declare-fun b!102708 () Bool)

(declare-datatypes ((Unit!3155 0))(
  ( (Unit!3156) )
))
(declare-fun e!66899 () Unit!3155)

(declare-fun Unit!3157 () Unit!3155)

(assert (=> b!102708 (= e!66899 Unit!3157)))

(declare-fun b!102709 () Bool)

(declare-fun e!66896 () Bool)

(declare-fun e!66908 () Bool)

(assert (=> b!102709 (= e!66896 (and e!66908 mapRes!3875))))

(declare-fun condMapEmpty!3876 () Bool)

(declare-datatypes ((V!3201 0))(
  ( (V!3202 (val!1377 Int)) )
))
(declare-datatypes ((array!4316 0))(
  ( (array!4317 (arr!2048 (Array (_ BitVec 32) (_ BitVec 64))) (size!2302 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!989 0))(
  ( (ValueCellFull!989 (v!2866 V!3201)) (EmptyCell!989) )
))
(declare-datatypes ((array!4318 0))(
  ( (array!4319 (arr!2049 (Array (_ BitVec 32) ValueCell!989)) (size!2303 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!886 0))(
  ( (LongMapFixedSize!887 (defaultEntry!2554 Int) (mask!6687 (_ BitVec 32)) (extraKeys!2363 (_ BitVec 32)) (zeroValue!2431 V!3201) (minValue!2431 V!3201) (_size!492 (_ BitVec 32)) (_keys!4256 array!4316) (_values!2537 array!4318) (_vacant!492 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!886)

(declare-fun mapDefault!3875 () ValueCell!989)

