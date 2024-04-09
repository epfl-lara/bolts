; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21412 () Bool)

(assert start!21412)

(declare-fun b!214994 () Bool)

(declare-fun b_free!5705 () Bool)

(declare-fun b_next!5705 () Bool)

(assert (=> b!214994 (= b_free!5705 (not b_next!5705))))

(declare-fun tp!20218 () Bool)

(declare-fun b_and!12613 () Bool)

(assert (=> b!214994 (= tp!20218 b_and!12613)))

(declare-fun b!214993 () Bool)

(declare-fun e!139858 () Bool)

(declare-fun tp_is_empty!5567 () Bool)

(assert (=> b!214993 (= e!139858 tp_is_empty!5567)))

(declare-fun e!139855 () Bool)

(declare-datatypes ((V!7069 0))(
  ( (V!7070 (val!2828 Int)) )
))
(declare-datatypes ((ValueCell!2440 0))(
  ( (ValueCellFull!2440 (v!4842 V!7069)) (EmptyCell!2440) )
))
(declare-datatypes ((array!10354 0))(
  ( (array!10355 (arr!4907 (Array (_ BitVec 32) ValueCell!2440)) (size!5235 (_ BitVec 32))) )
))
(declare-datatypes ((array!10356 0))(
  ( (array!10357 (arr!4908 (Array (_ BitVec 32) (_ BitVec 64))) (size!5236 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2780 0))(
  ( (LongMapFixedSize!2781 (defaultEntry!4040 Int) (mask!9722 (_ BitVec 32)) (extraKeys!3777 (_ BitVec 32)) (zeroValue!3881 V!7069) (minValue!3881 V!7069) (_size!1439 (_ BitVec 32)) (_keys!6065 array!10356) (_values!4023 array!10354) (_vacant!1439 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2780)

(declare-fun e!139860 () Bool)

(declare-fun array_inv!3241 (array!10356) Bool)

(declare-fun array_inv!3242 (array!10354) Bool)

(assert (=> b!214994 (= e!139855 (and tp!20218 tp_is_empty!5567 (array_inv!3241 (_keys!6065 thiss!1504)) (array_inv!3242 (_values!4023 thiss!1504)) e!139860))))

(declare-fun b!214995 () Bool)

(declare-fun e!139859 () Bool)

(assert (=> b!214995 (= e!139859 tp_is_empty!5567)))

(declare-fun b!214996 () Bool)

(declare-fun e!139861 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214996 (= e!139861 (not (validMask!0 (mask!9722 thiss!1504))))))

(declare-fun b!214997 () Bool)

(declare-fun mapRes!9482 () Bool)

(assert (=> b!214997 (= e!139860 (and e!139858 mapRes!9482))))

(declare-fun condMapEmpty!9482 () Bool)

(declare-fun mapDefault!9482 () ValueCell!2440)

