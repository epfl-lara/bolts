; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21598 () Bool)

(assert start!21598)

(declare-fun b!216274 () Bool)

(declare-fun b_free!5749 () Bool)

(declare-fun b_next!5749 () Bool)

(assert (=> b!216274 (= b_free!5749 (not b_next!5749))))

(declare-fun tp!20379 () Bool)

(declare-fun b_and!12657 () Bool)

(assert (=> b!216274 (= tp!20379 b_and!12657)))

(declare-fun b!216264 () Bool)

(declare-fun e!140718 () Bool)

(declare-datatypes ((V!7129 0))(
  ( (V!7130 (val!2850 Int)) )
))
(declare-datatypes ((ValueCell!2462 0))(
  ( (ValueCellFull!2462 (v!4864 V!7129)) (EmptyCell!2462) )
))
(declare-datatypes ((array!10458 0))(
  ( (array!10459 (arr!4951 (Array (_ BitVec 32) ValueCell!2462)) (size!5283 (_ BitVec 32))) )
))
(declare-datatypes ((array!10460 0))(
  ( (array!10461 (arr!4952 (Array (_ BitVec 32) (_ BitVec 64))) (size!5284 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2824 0))(
  ( (LongMapFixedSize!2825 (defaultEntry!4062 Int) (mask!9794 (_ BitVec 32)) (extraKeys!3799 (_ BitVec 32)) (zeroValue!3903 V!7129) (minValue!3903 V!7129) (_size!1461 (_ BitVec 32)) (_keys!6109 array!10460) (_values!4045 array!10458) (_vacant!1461 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2824)

(assert (=> b!216264 (= e!140718 (bvsgt #b00000000000000000000000000000000 (size!5284 (_keys!6109 thiss!1504))))))

(declare-fun b!216265 () Bool)

(declare-fun res!105763 () Bool)

(assert (=> b!216265 (=> (not res!105763) (not e!140718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10460 (_ BitVec 32)) Bool)

(assert (=> b!216265 (= res!105763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6109 thiss!1504) (mask!9794 thiss!1504)))))

(declare-fun b!216266 () Bool)

(declare-fun e!140719 () Bool)

(assert (=> b!216266 (= e!140719 e!140718)))

(declare-fun res!105764 () Bool)

(assert (=> b!216266 (=> (not res!105764) (not e!140718))))

(declare-datatypes ((SeekEntryResult!752 0))(
  ( (MissingZero!752 (index!5178 (_ BitVec 32))) (Found!752 (index!5179 (_ BitVec 32))) (Intermediate!752 (undefined!1564 Bool) (index!5180 (_ BitVec 32)) (x!22632 (_ BitVec 32))) (Undefined!752) (MissingVacant!752 (index!5181 (_ BitVec 32))) )
))
(declare-fun lt!111163 () SeekEntryResult!752)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216266 (= res!105764 (or (= lt!111163 (MissingZero!752 index!297)) (= lt!111163 (MissingVacant!752 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10460 (_ BitVec 32)) SeekEntryResult!752)

(assert (=> b!216266 (= lt!111163 (seekEntryOrOpen!0 key!932 (_keys!6109 thiss!1504) (mask!9794 thiss!1504)))))

(declare-fun mapNonEmpty!9576 () Bool)

(declare-fun mapRes!9576 () Bool)

(declare-fun tp!20378 () Bool)

(declare-fun e!140715 () Bool)

(assert (=> mapNonEmpty!9576 (= mapRes!9576 (and tp!20378 e!140715))))

(declare-fun mapKey!9576 () (_ BitVec 32))

(declare-fun mapRest!9576 () (Array (_ BitVec 32) ValueCell!2462))

(declare-fun mapValue!9576 () ValueCell!2462)

(assert (=> mapNonEmpty!9576 (= (arr!4951 (_values!4045 thiss!1504)) (store mapRest!9576 mapKey!9576 mapValue!9576))))

(declare-fun b!216267 () Bool)

(declare-fun tp_is_empty!5611 () Bool)

(assert (=> b!216267 (= e!140715 tp_is_empty!5611)))

(declare-fun b!216268 () Bool)

(declare-fun res!105761 () Bool)

(assert (=> b!216268 (=> (not res!105761) (not e!140718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216268 (= res!105761 (validMask!0 (mask!9794 thiss!1504)))))

(declare-fun b!216269 () Bool)

(declare-fun res!105765 () Bool)

(assert (=> b!216269 (=> (not res!105765) (not e!140718))))

(declare-datatypes ((List!3164 0))(
  ( (Nil!3161) (Cons!3160 (h!3807 (_ BitVec 64)) (t!8127 List!3164)) )
))
(declare-fun arrayNoDuplicates!0 (array!10460 (_ BitVec 32) List!3164) Bool)

(assert (=> b!216269 (= res!105765 (arrayNoDuplicates!0 (_keys!6109 thiss!1504) #b00000000000000000000000000000000 Nil!3161))))

(declare-fun res!105762 () Bool)

(assert (=> start!21598 (=> (not res!105762) (not e!140719))))

(declare-fun valid!1139 (LongMapFixedSize!2824) Bool)

(assert (=> start!21598 (= res!105762 (valid!1139 thiss!1504))))

(assert (=> start!21598 e!140719))

(declare-fun e!140721 () Bool)

(assert (=> start!21598 e!140721))

(assert (=> start!21598 true))

(declare-fun b!216270 () Bool)

(declare-fun e!140716 () Bool)

(declare-fun e!140720 () Bool)

(assert (=> b!216270 (= e!140716 (and e!140720 mapRes!9576))))

(declare-fun condMapEmpty!9576 () Bool)

(declare-fun mapDefault!9576 () ValueCell!2462)

