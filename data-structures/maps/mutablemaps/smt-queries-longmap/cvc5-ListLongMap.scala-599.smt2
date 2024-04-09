; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15748 () Bool)

(assert start!15748)

(declare-fun b!157000 () Bool)

(declare-fun b_free!3403 () Bool)

(declare-fun b_next!3403 () Bool)

(assert (=> b!157000 (= b_free!3403 (not b_next!3403))))

(declare-fun tp!12734 () Bool)

(declare-fun b_and!9835 () Bool)

(assert (=> b!157000 (= tp!12734 b_and!9835)))

(declare-fun mapNonEmpty!5450 () Bool)

(declare-fun mapRes!5450 () Bool)

(declare-fun tp!12733 () Bool)

(declare-fun e!102699 () Bool)

(assert (=> mapNonEmpty!5450 (= mapRes!5450 (and tp!12733 e!102699))))

(declare-fun mapKey!5450 () (_ BitVec 32))

(declare-datatypes ((V!3921 0))(
  ( (V!3922 (val!1647 Int)) )
))
(declare-datatypes ((ValueCell!1259 0))(
  ( (ValueCellFull!1259 (v!3508 V!3921)) (EmptyCell!1259) )
))
(declare-fun mapValue!5450 () ValueCell!1259)

(declare-fun mapRest!5450 () (Array (_ BitVec 32) ValueCell!1259))

(declare-datatypes ((array!5462 0))(
  ( (array!5463 (arr!2588 (Array (_ BitVec 32) (_ BitVec 64))) (size!2866 (_ BitVec 32))) )
))
(declare-datatypes ((array!5464 0))(
  ( (array!5465 (arr!2589 (Array (_ BitVec 32) ValueCell!1259)) (size!2867 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1426 0))(
  ( (LongMapFixedSize!1427 (defaultEntry!3155 Int) (mask!7622 (_ BitVec 32)) (extraKeys!2896 (_ BitVec 32)) (zeroValue!2998 V!3921) (minValue!2998 V!3921) (_size!762 (_ BitVec 32)) (_keys!4930 array!5462) (_values!3138 array!5464) (_vacant!762 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1426)

(assert (=> mapNonEmpty!5450 (= (arr!2589 (_values!3138 thiss!1248)) (store mapRest!5450 mapKey!5450 mapValue!5450))))

(declare-fun b!156997 () Bool)

(declare-fun e!102700 () Bool)

(declare-fun e!102704 () Bool)

(assert (=> b!156997 (= e!102700 (and e!102704 mapRes!5450))))

(declare-fun condMapEmpty!5450 () Bool)

(declare-fun mapDefault!5450 () ValueCell!1259)

