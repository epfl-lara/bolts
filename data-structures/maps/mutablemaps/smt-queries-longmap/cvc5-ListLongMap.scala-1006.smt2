; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21648 () Bool)

(assert start!21648)

(declare-fun b!216924 () Bool)

(declare-fun b_free!5785 () Bool)

(declare-fun b_next!5785 () Bool)

(assert (=> b!216924 (= b_free!5785 (not b_next!5785))))

(declare-fun tp!20489 () Bool)

(declare-fun b_and!12693 () Bool)

(assert (=> b!216924 (= tp!20489 b_and!12693)))

(declare-fun res!106163 () Bool)

(declare-fun e!141136 () Bool)

(assert (=> start!21648 (=> (not res!106163) (not e!141136))))

(declare-datatypes ((V!7177 0))(
  ( (V!7178 (val!2868 Int)) )
))
(declare-datatypes ((ValueCell!2480 0))(
  ( (ValueCellFull!2480 (v!4882 V!7177)) (EmptyCell!2480) )
))
(declare-datatypes ((array!10532 0))(
  ( (array!10533 (arr!4987 (Array (_ BitVec 32) ValueCell!2480)) (size!5319 (_ BitVec 32))) )
))
(declare-datatypes ((array!10534 0))(
  ( (array!10535 (arr!4988 (Array (_ BitVec 32) (_ BitVec 64))) (size!5320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2860 0))(
  ( (LongMapFixedSize!2861 (defaultEntry!4080 Int) (mask!9827 (_ BitVec 32)) (extraKeys!3817 (_ BitVec 32)) (zeroValue!3921 V!7177) (minValue!3921 V!7177) (_size!1479 (_ BitVec 32)) (_keys!6129 array!10534) (_values!4063 array!10532) (_vacant!1479 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2860)

(declare-fun valid!1154 (LongMapFixedSize!2860) Bool)

(assert (=> start!21648 (= res!106163 (valid!1154 thiss!1504))))

(assert (=> start!21648 e!141136))

(declare-fun e!141132 () Bool)

(assert (=> start!21648 e!141132))

(assert (=> start!21648 true))

(declare-fun b!216920 () Bool)

(declare-fun e!141135 () Bool)

(declare-fun tp_is_empty!5647 () Bool)

(assert (=> b!216920 (= e!141135 tp_is_empty!5647)))

(declare-fun b!216921 () Bool)

(declare-fun res!106162 () Bool)

(assert (=> b!216921 (=> (not res!106162) (not e!141136))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216921 (= res!106162 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!9633 () Bool)

(declare-fun mapRes!9633 () Bool)

(declare-fun tp!20490 () Bool)

(declare-fun e!141133 () Bool)

(assert (=> mapNonEmpty!9633 (= mapRes!9633 (and tp!20490 e!141133))))

(declare-fun mapRest!9633 () (Array (_ BitVec 32) ValueCell!2480))

(declare-fun mapKey!9633 () (_ BitVec 32))

(declare-fun mapValue!9633 () ValueCell!2480)

(assert (=> mapNonEmpty!9633 (= (arr!4987 (_values!4063 thiss!1504)) (store mapRest!9633 mapKey!9633 mapValue!9633))))

(declare-fun mapIsEmpty!9633 () Bool)

(assert (=> mapIsEmpty!9633 mapRes!9633))

(declare-fun b!216922 () Bool)

(assert (=> b!216922 (= e!141133 tp_is_empty!5647)))

(declare-fun b!216923 () Bool)

(declare-fun e!141137 () Bool)

(assert (=> b!216923 (= e!141136 e!141137)))

(declare-fun res!106161 () Bool)

(assert (=> b!216923 (=> (not res!106161) (not e!141137))))

(declare-datatypes ((SeekEntryResult!766 0))(
  ( (MissingZero!766 (index!5234 (_ BitVec 32))) (Found!766 (index!5235 (_ BitVec 32))) (Intermediate!766 (undefined!1578 Bool) (index!5236 (_ BitVec 32)) (x!22702 (_ BitVec 32))) (Undefined!766) (MissingVacant!766 (index!5237 (_ BitVec 32))) )
))
(declare-fun lt!111283 () SeekEntryResult!766)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216923 (= res!106161 (or (= lt!111283 (MissingZero!766 index!297)) (= lt!111283 (MissingVacant!766 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10534 (_ BitVec 32)) SeekEntryResult!766)

(assert (=> b!216923 (= lt!111283 (seekEntryOrOpen!0 key!932 (_keys!6129 thiss!1504) (mask!9827 thiss!1504)))))

(declare-fun e!141134 () Bool)

(declare-fun array_inv!3289 (array!10534) Bool)

(declare-fun array_inv!3290 (array!10532) Bool)

(assert (=> b!216924 (= e!141132 (and tp!20489 tp_is_empty!5647 (array_inv!3289 (_keys!6129 thiss!1504)) (array_inv!3290 (_values!4063 thiss!1504)) e!141134))))

(declare-fun b!216925 () Bool)

(declare-fun res!106164 () Bool)

(assert (=> b!216925 (=> (not res!106164) (not e!141137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10534 (_ BitVec 32)) Bool)

(assert (=> b!216925 (= res!106164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6129 thiss!1504) (mask!9827 thiss!1504)))))

(declare-fun b!216926 () Bool)

(declare-fun res!106166 () Bool)

(assert (=> b!216926 (=> (not res!106166) (not e!141137))))

(assert (=> b!216926 (= res!106166 (and (= (size!5319 (_values!4063 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9827 thiss!1504))) (= (size!5320 (_keys!6129 thiss!1504)) (size!5319 (_values!4063 thiss!1504))) (bvsge (mask!9827 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3817 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3817 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216927 () Bool)

(declare-fun res!106167 () Bool)

(assert (=> b!216927 (=> (not res!106167) (not e!141137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216927 (= res!106167 (validMask!0 (mask!9827 thiss!1504)))))

(declare-fun b!216928 () Bool)

(assert (=> b!216928 (= e!141134 (and e!141135 mapRes!9633))))

(declare-fun condMapEmpty!9633 () Bool)

(declare-fun mapDefault!9633 () ValueCell!2480)

