; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21390 () Bool)

(assert start!21390)

(declare-fun b!214843 () Bool)

(declare-fun b_free!5695 () Bool)

(declare-fun b_next!5695 () Bool)

(assert (=> b!214843 (= b_free!5695 (not b_next!5695))))

(declare-fun tp!20186 () Bool)

(declare-fun b_and!12603 () Bool)

(assert (=> b!214843 (= tp!20186 b_and!12603)))

(declare-fun b!214839 () Bool)

(declare-fun res!105158 () Bool)

(declare-fun e!139741 () Bool)

(assert (=> b!214839 (=> (not res!105158) (not e!139741))))

(declare-datatypes ((V!7057 0))(
  ( (V!7058 (val!2823 Int)) )
))
(declare-datatypes ((ValueCell!2435 0))(
  ( (ValueCellFull!2435 (v!4837 V!7057)) (EmptyCell!2435) )
))
(declare-datatypes ((array!10332 0))(
  ( (array!10333 (arr!4897 (Array (_ BitVec 32) ValueCell!2435)) (size!5225 (_ BitVec 32))) )
))
(declare-datatypes ((array!10334 0))(
  ( (array!10335 (arr!4898 (Array (_ BitVec 32) (_ BitVec 64))) (size!5226 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2770 0))(
  ( (LongMapFixedSize!2771 (defaultEntry!4035 Int) (mask!9713 (_ BitVec 32)) (extraKeys!3772 (_ BitVec 32)) (zeroValue!3876 V!7057) (minValue!3876 V!7057) (_size!1434 (_ BitVec 32)) (_keys!6059 array!10334) (_values!4018 array!10332) (_vacant!1434 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2770)

(assert (=> b!214839 (= res!105158 (and (bvsge (mask!9713 thiss!1504) #b00000000000000000000000000000000) (= (size!5226 (_keys!6059 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9713 thiss!1504)))))))

(declare-fun b!214840 () Bool)

(declare-fun e!139739 () Bool)

(declare-fun tp_is_empty!5557 () Bool)

(assert (=> b!214840 (= e!139739 tp_is_empty!5557)))

(declare-fun mapIsEmpty!9464 () Bool)

(declare-fun mapRes!9464 () Bool)

(assert (=> mapIsEmpty!9464 mapRes!9464))

(declare-fun b!214841 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214841 (= e!139741 (not (validKeyInArray!0 key!932)))))

(declare-fun e!139743 () Bool)

(declare-fun e!139740 () Bool)

(declare-fun array_inv!3231 (array!10334) Bool)

(declare-fun array_inv!3232 (array!10332) Bool)

(assert (=> b!214843 (= e!139743 (and tp!20186 tp_is_empty!5557 (array_inv!3231 (_keys!6059 thiss!1504)) (array_inv!3232 (_values!4018 thiss!1504)) e!139740))))

(declare-fun b!214844 () Bool)

(declare-fun res!105154 () Bool)

(assert (=> b!214844 (=> (not res!105154) (not e!139741))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!734 0))(
  ( (MissingZero!734 (index!5106 (_ BitVec 32))) (Found!734 (index!5107 (_ BitVec 32))) (Intermediate!734 (undefined!1546 Bool) (index!5108 (_ BitVec 32)) (x!22434 (_ BitVec 32))) (Undefined!734) (MissingVacant!734 (index!5109 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10334 (_ BitVec 32)) SeekEntryResult!734)

(assert (=> b!214844 (= res!105154 (not (= (seekEntryOrOpen!0 key!932 (_keys!6059 thiss!1504) (mask!9713 thiss!1504)) (MissingZero!734 index!297))))))

(declare-fun b!214845 () Bool)

(declare-fun e!139744 () Bool)

(assert (=> b!214845 (= e!139744 tp_is_empty!5557)))

(declare-fun b!214846 () Bool)

(assert (=> b!214846 (= e!139740 (and e!139739 mapRes!9464))))

(declare-fun condMapEmpty!9464 () Bool)

(declare-fun mapDefault!9464 () ValueCell!2435)

