; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23190 () Bool)

(assert start!23190)

(declare-fun b!243061 () Bool)

(declare-fun b_free!6517 () Bool)

(declare-fun b_next!6517 () Bool)

(assert (=> b!243061 (= b_free!6517 (not b_next!6517))))

(declare-fun tp!22771 () Bool)

(declare-fun b_and!13515 () Bool)

(assert (=> b!243061 (= tp!22771 b_and!13515)))

(declare-fun b!243039 () Bool)

(declare-fun res!119126 () Bool)

(declare-fun e!157737 () Bool)

(assert (=> b!243039 (=> (not res!119126) (not e!157737))))

(declare-datatypes ((V!8153 0))(
  ( (V!8154 (val!3234 Int)) )
))
(declare-datatypes ((ValueCell!2846 0))(
  ( (ValueCellFull!2846 (v!5275 V!8153)) (EmptyCell!2846) )
))
(declare-datatypes ((array!12046 0))(
  ( (array!12047 (arr!5719 (Array (_ BitVec 32) ValueCell!2846)) (size!6061 (_ BitVec 32))) )
))
(declare-datatypes ((array!12048 0))(
  ( (array!12049 (arr!5720 (Array (_ BitVec 32) (_ BitVec 64))) (size!6062 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3592 0))(
  ( (LongMapFixedSize!3593 (defaultEntry!4505 Int) (mask!10594 (_ BitVec 32)) (extraKeys!4242 (_ BitVec 32)) (zeroValue!4346 V!8153) (minValue!4346 V!8153) (_size!1845 (_ BitVec 32)) (_keys!6615 array!12048) (_values!4488 array!12046) (_vacant!1845 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3592)

(declare-datatypes ((SeekEntryResult!1079 0))(
  ( (MissingZero!1079 (index!6486 (_ BitVec 32))) (Found!1079 (index!6487 (_ BitVec 32))) (Intermediate!1079 (undefined!1891 Bool) (index!6488 (_ BitVec 32)) (x!24321 (_ BitVec 32))) (Undefined!1079) (MissingVacant!1079 (index!6489 (_ BitVec 32))) )
))
(declare-fun lt!122074 () SeekEntryResult!1079)

(assert (=> b!243039 (= res!119126 (= (select (arr!5720 (_keys!6615 thiss!1504)) (index!6486 lt!122074)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243040 () Bool)

(declare-fun e!157736 () Bool)

(declare-fun e!157752 () Bool)

(assert (=> b!243040 (= e!157736 e!157752)))

(declare-fun res!119125 () Bool)

(assert (=> b!243040 (=> (not res!119125) (not e!157752))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!243040 (= res!119125 (or (= lt!122074 (MissingZero!1079 index!297)) (= lt!122074 (MissingVacant!1079 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12048 (_ BitVec 32)) SeekEntryResult!1079)

(assert (=> b!243040 (= lt!122074 (seekEntryOrOpen!0 key!932 (_keys!6615 thiss!1504) (mask!10594 thiss!1504)))))

(declare-fun b!243041 () Bool)

(declare-fun res!119128 () Bool)

(declare-fun e!157735 () Bool)

(assert (=> b!243041 (=> (not res!119128) (not e!157735))))

(declare-datatypes ((List!3662 0))(
  ( (Nil!3659) (Cons!3658 (h!4315 (_ BitVec 64)) (t!8675 List!3662)) )
))
(declare-fun contains!1749 (List!3662 (_ BitVec 64)) Bool)

(assert (=> b!243041 (= res!119128 (not (contains!1749 Nil!3659 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!10816 () Bool)

(declare-fun mapRes!10816 () Bool)

(declare-fun tp!22770 () Bool)

(declare-fun e!157746 () Bool)

(assert (=> mapNonEmpty!10816 (= mapRes!10816 (and tp!22770 e!157746))))

(declare-fun mapKey!10816 () (_ BitVec 32))

(declare-fun mapRest!10816 () (Array (_ BitVec 32) ValueCell!2846))

(declare-fun mapValue!10816 () ValueCell!2846)

(assert (=> mapNonEmpty!10816 (= (arr!5719 (_values!4488 thiss!1504)) (store mapRest!10816 mapKey!10816 mapValue!10816))))

(declare-fun b!243042 () Bool)

(declare-fun e!157741 () Bool)

(declare-fun tp_is_empty!6379 () Bool)

(assert (=> b!243042 (= e!157741 tp_is_empty!6379)))

(declare-fun b!243043 () Bool)

(declare-fun res!119119 () Bool)

(assert (=> b!243043 (=> (not res!119119) (not e!157735))))

(assert (=> b!243043 (= res!119119 (not (contains!1749 Nil!3659 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!243044 () Bool)

(assert (=> b!243044 (= e!157746 tp_is_empty!6379)))

(declare-fun b!243045 () Bool)

(declare-fun e!157742 () Bool)

(declare-fun call!22663 () Bool)

(assert (=> b!243045 (= e!157742 (not call!22663))))

(declare-fun b!243046 () Bool)

(declare-datatypes ((Unit!7496 0))(
  ( (Unit!7497) )
))
(declare-fun e!157749 () Unit!7496)

(declare-fun Unit!7498 () Unit!7496)

(assert (=> b!243046 (= e!157749 Unit!7498)))

(declare-fun lt!122076 () Unit!7496)

(declare-fun lemmaArrayContainsKeyThenInListMap!163 (array!12048 array!12046 (_ BitVec 32) (_ BitVec 32) V!8153 V!8153 (_ BitVec 64) (_ BitVec 32) Int) Unit!7496)

(assert (=> b!243046 (= lt!122076 (lemmaArrayContainsKeyThenInListMap!163 (_keys!6615 thiss!1504) (_values!4488 thiss!1504) (mask!10594 thiss!1504) (extraKeys!4242 thiss!1504) (zeroValue!4346 thiss!1504) (minValue!4346 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4505 thiss!1504)))))

(assert (=> b!243046 false))

(declare-fun b!243047 () Bool)

(declare-fun arrayNoDuplicates!0 (array!12048 (_ BitVec 32) List!3662) Bool)

(assert (=> b!243047 (= e!157735 (not (arrayNoDuplicates!0 (_keys!6615 thiss!1504) #b00000000000000000000000000000000 Nil!3659)))))

(declare-fun b!243048 () Bool)

(declare-fun e!157745 () Bool)

(assert (=> b!243048 (= e!157745 e!157735)))

(declare-fun res!119133 () Bool)

(assert (=> b!243048 (=> (not res!119133) (not e!157735))))

(assert (=> b!243048 (= res!119133 (and (bvslt (size!6062 (_keys!6615 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6062 (_keys!6615 thiss!1504)))))))

(declare-fun lt!122078 () Unit!7496)

(assert (=> b!243048 (= lt!122078 e!157749)))

(declare-fun c!40559 () Bool)

(declare-fun arrayContainsKey!0 (array!12048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!243048 (= c!40559 (arrayContainsKey!0 (_keys!6615 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243049 () Bool)

(declare-fun e!157743 () Bool)

(assert (=> b!243049 (= e!157743 e!157742)))

(declare-fun res!119122 () Bool)

(declare-fun call!22662 () Bool)

(assert (=> b!243049 (= res!119122 call!22662)))

(assert (=> b!243049 (=> (not res!119122) (not e!157742))))

(declare-fun b!243050 () Bool)

(declare-fun res!119131 () Bool)

(assert (=> b!243050 (= res!119131 (= (select (arr!5720 (_keys!6615 thiss!1504)) (index!6489 lt!122074)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!243050 (=> (not res!119131) (not e!157742))))

(declare-fun b!243051 () Bool)

(declare-fun e!157740 () Unit!7496)

(declare-fun Unit!7499 () Unit!7496)

(assert (=> b!243051 (= e!157740 Unit!7499)))

(declare-fun lt!122077 () Unit!7496)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!359 (array!12048 array!12046 (_ BitVec 32) (_ BitVec 32) V!8153 V!8153 (_ BitVec 64) Int) Unit!7496)

(assert (=> b!243051 (= lt!122077 (lemmaInListMapThenSeekEntryOrOpenFindsIt!359 (_keys!6615 thiss!1504) (_values!4488 thiss!1504) (mask!10594 thiss!1504) (extraKeys!4242 thiss!1504) (zeroValue!4346 thiss!1504) (minValue!4346 thiss!1504) key!932 (defaultEntry!4505 thiss!1504)))))

(assert (=> b!243051 false))

(declare-fun b!243052 () Bool)

(declare-fun e!157738 () Bool)

(assert (=> b!243052 (= e!157738 (and e!157741 mapRes!10816))))

(declare-fun condMapEmpty!10816 () Bool)

(declare-fun mapDefault!10816 () ValueCell!2846)

