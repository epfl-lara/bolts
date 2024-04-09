; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23158 () Bool)

(assert start!23158)

(declare-fun b!242633 () Bool)

(declare-fun b_free!6511 () Bool)

(declare-fun b_next!6511 () Bool)

(assert (=> b!242633 (= b_free!6511 (not b_next!6511))))

(declare-fun tp!22750 () Bool)

(declare-fun b_and!13507 () Bool)

(assert (=> b!242633 (= tp!22750 b_and!13507)))

(declare-fun e!157493 () Bool)

(declare-fun e!157483 () Bool)

(declare-datatypes ((V!8145 0))(
  ( (V!8146 (val!3231 Int)) )
))
(declare-datatypes ((ValueCell!2843 0))(
  ( (ValueCellFull!2843 (v!5270 V!8145)) (EmptyCell!2843) )
))
(declare-datatypes ((array!12032 0))(
  ( (array!12033 (arr!5713 (Array (_ BitVec 32) ValueCell!2843)) (size!6055 (_ BitVec 32))) )
))
(declare-datatypes ((array!12034 0))(
  ( (array!12035 (arr!5714 (Array (_ BitVec 32) (_ BitVec 64))) (size!6056 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3586 0))(
  ( (LongMapFixedSize!3587 (defaultEntry!4498 Int) (mask!10583 (_ BitVec 32)) (extraKeys!4235 (_ BitVec 32)) (zeroValue!4339 V!8145) (minValue!4339 V!8145) (_size!1842 (_ BitVec 32)) (_keys!6607 array!12034) (_values!4481 array!12032) (_vacant!1842 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3586)

(declare-fun tp_is_empty!6373 () Bool)

(declare-fun array_inv!3771 (array!12034) Bool)

(declare-fun array_inv!3772 (array!12032) Bool)

(assert (=> b!242633 (= e!157493 (and tp!22750 tp_is_empty!6373 (array_inv!3771 (_keys!6607 thiss!1504)) (array_inv!3772 (_values!4481 thiss!1504)) e!157483))))

(declare-fun b!242634 () Bool)

(declare-fun res!118913 () Bool)

(declare-fun e!157491 () Bool)

(assert (=> b!242634 (=> (not res!118913) (not e!157491))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!242634 (= res!118913 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!242635 () Bool)

(declare-datatypes ((Unit!7481 0))(
  ( (Unit!7482) )
))
(declare-fun e!157490 () Unit!7481)

(declare-fun lt!121916 () Unit!7481)

(assert (=> b!242635 (= e!157490 lt!121916)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!363 (array!12034 array!12032 (_ BitVec 32) (_ BitVec 32) V!8145 V!8145 (_ BitVec 64) Int) Unit!7481)

(assert (=> b!242635 (= lt!121916 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!363 (_keys!6607 thiss!1504) (_values!4481 thiss!1504) (mask!10583 thiss!1504) (extraKeys!4235 thiss!1504) (zeroValue!4339 thiss!1504) (minValue!4339 thiss!1504) key!932 (defaultEntry!4498 thiss!1504)))))

(declare-fun c!40486 () Bool)

(declare-datatypes ((SeekEntryResult!1076 0))(
  ( (MissingZero!1076 (index!6474 (_ BitVec 32))) (Found!1076 (index!6475 (_ BitVec 32))) (Intermediate!1076 (undefined!1888 Bool) (index!6476 (_ BitVec 32)) (x!24300 (_ BitVec 32))) (Undefined!1076) (MissingVacant!1076 (index!6477 (_ BitVec 32))) )
))
(declare-fun lt!121917 () SeekEntryResult!1076)

(assert (=> b!242635 (= c!40486 (is-MissingZero!1076 lt!121917))))

(declare-fun e!157485 () Bool)

(assert (=> b!242635 e!157485))

(declare-fun b!242636 () Bool)

(declare-fun e!157494 () Bool)

(declare-datatypes ((List!3657 0))(
  ( (Nil!3654) (Cons!3653 (h!4310 (_ BitVec 64)) (t!8668 List!3657)) )
))
(declare-fun contains!1744 (List!3657 (_ BitVec 64)) Bool)

(assert (=> b!242636 (= e!157494 (contains!1744 Nil!3654 key!932))))

(declare-fun b!242637 () Bool)

(declare-fun e!157495 () Bool)

(assert (=> b!242637 (= e!157495 e!157494)))

(declare-fun res!118903 () Bool)

(assert (=> b!242637 (=> res!118903 e!157494)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!242637 (= res!118903 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!242638 () Bool)

(declare-fun e!157488 () Bool)

(assert (=> b!242638 (= e!157491 e!157488)))

(declare-fun res!118908 () Bool)

(assert (=> b!242638 (=> (not res!118908) (not e!157488))))

(assert (=> b!242638 (= res!118908 (or (= lt!121917 (MissingZero!1076 index!297)) (= lt!121917 (MissingVacant!1076 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12034 (_ BitVec 32)) SeekEntryResult!1076)

(assert (=> b!242638 (= lt!121917 (seekEntryOrOpen!0 key!932 (_keys!6607 thiss!1504) (mask!10583 thiss!1504)))))

(declare-fun b!242639 () Bool)

(declare-fun res!118910 () Bool)

(assert (=> b!242639 (=> (not res!118910) (not e!157495))))

(declare-fun noDuplicate!91 (List!3657) Bool)

(assert (=> b!242639 (= res!118910 (noDuplicate!91 Nil!3654))))

(declare-fun b!242640 () Bool)

(declare-fun e!157492 () Unit!7481)

(declare-fun Unit!7483 () Unit!7481)

(assert (=> b!242640 (= e!157492 Unit!7483)))

(declare-fun lt!121918 () Unit!7481)

(declare-fun lemmaArrayContainsKeyThenInListMap!160 (array!12034 array!12032 (_ BitVec 32) (_ BitVec 32) V!8145 V!8145 (_ BitVec 64) (_ BitVec 32) Int) Unit!7481)

(assert (=> b!242640 (= lt!121918 (lemmaArrayContainsKeyThenInListMap!160 (_keys!6607 thiss!1504) (_values!4481 thiss!1504) (mask!10583 thiss!1504) (extraKeys!4235 thiss!1504) (zeroValue!4339 thiss!1504) (minValue!4339 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4498 thiss!1504)))))

(assert (=> b!242640 false))

(declare-fun bm!22614 () Bool)

(declare-fun call!22618 () Bool)

(declare-fun arrayContainsKey!0 (array!12034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22614 (= call!22618 (arrayContainsKey!0 (_keys!6607 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242641 () Bool)

(declare-fun e!157496 () Bool)

(declare-fun mapRes!10804 () Bool)

(assert (=> b!242641 (= e!157483 (and e!157496 mapRes!10804))))

(declare-fun condMapEmpty!10804 () Bool)

(declare-fun mapDefault!10804 () ValueCell!2843)

