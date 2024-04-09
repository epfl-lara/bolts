; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15804 () Bool)

(assert start!15804)

(declare-fun b!157453 () Bool)

(declare-fun b_free!3443 () Bool)

(declare-fun b_next!3443 () Bool)

(assert (=> b!157453 (= b_free!3443 (not b_next!3443))))

(declare-fun tp!12858 () Bool)

(declare-fun b_and!9875 () Bool)

(assert (=> b!157453 (= tp!12858 b_and!9875)))

(declare-fun mapNonEmpty!5514 () Bool)

(declare-fun mapRes!5514 () Bool)

(declare-fun tp!12857 () Bool)

(declare-fun e!103120 () Bool)

(assert (=> mapNonEmpty!5514 (= mapRes!5514 (and tp!12857 e!103120))))

(declare-datatypes ((V!3973 0))(
  ( (V!3974 (val!1667 Int)) )
))
(declare-datatypes ((ValueCell!1279 0))(
  ( (ValueCellFull!1279 (v!3528 V!3973)) (EmptyCell!1279) )
))
(declare-fun mapRest!5514 () (Array (_ BitVec 32) ValueCell!1279))

(declare-datatypes ((array!5544 0))(
  ( (array!5545 (arr!2628 (Array (_ BitVec 32) (_ BitVec 64))) (size!2907 (_ BitVec 32))) )
))
(declare-datatypes ((array!5546 0))(
  ( (array!5547 (arr!2629 (Array (_ BitVec 32) ValueCell!1279)) (size!2908 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1466 0))(
  ( (LongMapFixedSize!1467 (defaultEntry!3175 Int) (mask!7656 (_ BitVec 32)) (extraKeys!2916 (_ BitVec 32)) (zeroValue!3018 V!3973) (minValue!3018 V!3973) (_size!782 (_ BitVec 32)) (_keys!4951 array!5544) (_values!3158 array!5546) (_vacant!782 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1466)

(declare-fun mapKey!5514 () (_ BitVec 32))

(declare-fun mapValue!5514 () ValueCell!1279)

(assert (=> mapNonEmpty!5514 (= (arr!2629 (_values!3158 thiss!1248)) (store mapRest!5514 mapKey!5514 mapValue!5514))))

(declare-fun e!103118 () Bool)

(declare-fun e!103123 () Bool)

(declare-fun tp_is_empty!3245 () Bool)

(declare-fun array_inv!1663 (array!5544) Bool)

(declare-fun array_inv!1664 (array!5546) Bool)

(assert (=> b!157453 (= e!103118 (and tp!12858 tp_is_empty!3245 (array_inv!1663 (_keys!4951 thiss!1248)) (array_inv!1664 (_values!3158 thiss!1248)) e!103123))))

(declare-fun b!157454 () Bool)

(declare-fun res!74425 () Bool)

(declare-fun e!103119 () Bool)

(assert (=> b!157454 (=> (not res!74425) (not e!103119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157454 (= res!74425 (validMask!0 (mask!7656 thiss!1248)))))

(declare-fun mapIsEmpty!5514 () Bool)

(assert (=> mapIsEmpty!5514 mapRes!5514))

(declare-fun res!74424 () Bool)

(assert (=> start!15804 (=> (not res!74424) (not e!103119))))

(declare-fun valid!693 (LongMapFixedSize!1466) Bool)

(assert (=> start!15804 (= res!74424 (valid!693 thiss!1248))))

(assert (=> start!15804 e!103119))

(assert (=> start!15804 e!103118))

(assert (=> start!15804 true))

(declare-fun b!157455 () Bool)

(declare-fun res!74423 () Bool)

(assert (=> b!157455 (=> (not res!74423) (not e!103119))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157455 (= res!74423 (not (= key!828 (bvneg key!828))))))

(declare-fun b!157456 () Bool)

(declare-fun e!103121 () Bool)

(assert (=> b!157456 (= e!103121 tp_is_empty!3245)))

(declare-fun b!157457 () Bool)

(assert (=> b!157457 (= e!103119 (bvslt (mask!7656 thiss!1248) #b00000000000000000000000000000000))))

(declare-fun b!157458 () Bool)

(assert (=> b!157458 (= e!103120 tp_is_empty!3245)))

(declare-fun b!157459 () Bool)

(assert (=> b!157459 (= e!103123 (and e!103121 mapRes!5514))))

(declare-fun condMapEmpty!5514 () Bool)

(declare-fun mapDefault!5514 () ValueCell!1279)

