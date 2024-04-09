; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21904 () Bool)

(assert start!21904)

(declare-fun b!221625 () Bool)

(declare-fun b_free!5959 () Bool)

(declare-fun b_next!5959 () Bool)

(assert (=> b!221625 (= b_free!5959 (not b_next!5959))))

(declare-fun tp!21018 () Bool)

(declare-fun b_and!12875 () Bool)

(assert (=> b!221625 (= tp!21018 b_and!12875)))

(declare-fun b!221612 () Bool)

(declare-fun e!144030 () Bool)

(declare-fun e!144036 () Bool)

(assert (=> b!221612 (= e!144030 e!144036)))

(declare-fun res!108754 () Bool)

(declare-fun call!20710 () Bool)

(assert (=> b!221612 (= res!108754 call!20710)))

(assert (=> b!221612 (=> (not res!108754) (not e!144036))))

(declare-fun b!221613 () Bool)

(declare-fun e!144041 () Bool)

(declare-fun call!20709 () Bool)

(assert (=> b!221613 (= e!144041 (not call!20709))))

(declare-fun b!221614 () Bool)

(declare-fun e!144029 () Bool)

(declare-fun tp_is_empty!5821 () Bool)

(assert (=> b!221614 (= e!144029 tp_is_empty!5821)))

(declare-fun b!221615 () Bool)

(declare-datatypes ((Unit!6622 0))(
  ( (Unit!6623) )
))
(declare-fun e!144039 () Unit!6622)

(declare-fun Unit!6624 () Unit!6622)

(assert (=> b!221615 (= e!144039 Unit!6624)))

(declare-fun lt!112482 () Unit!6622)

(declare-datatypes ((V!7409 0))(
  ( (V!7410 (val!2955 Int)) )
))
(declare-datatypes ((ValueCell!2567 0))(
  ( (ValueCellFull!2567 (v!4971 V!7409)) (EmptyCell!2567) )
))
(declare-datatypes ((array!10884 0))(
  ( (array!10885 (arr!5161 (Array (_ BitVec 32) ValueCell!2567)) (size!5494 (_ BitVec 32))) )
))
(declare-datatypes ((array!10886 0))(
  ( (array!10887 (arr!5162 (Array (_ BitVec 32) (_ BitVec 64))) (size!5495 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3034 0))(
  ( (LongMapFixedSize!3035 (defaultEntry!4176 Int) (mask!9990 (_ BitVec 32)) (extraKeys!3913 (_ BitVec 32)) (zeroValue!4017 V!7409) (minValue!4017 V!7409) (_size!1566 (_ BitVec 32)) (_keys!6230 array!10886) (_values!4159 array!10884) (_vacant!1566 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3034)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!52 (array!10886 array!10884 (_ BitVec 32) (_ BitVec 32) V!7409 V!7409 (_ BitVec 64) (_ BitVec 32) Int) Unit!6622)

(assert (=> b!221615 (= lt!112482 (lemmaArrayContainsKeyThenInListMap!52 (_keys!6230 thiss!1504) (_values!4159 thiss!1504) (mask!9990 thiss!1504) (extraKeys!3913 thiss!1504) (zeroValue!4017 thiss!1504) (minValue!4017 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4176 thiss!1504)))))

(assert (=> b!221615 false))

(declare-fun res!108749 () Bool)

(declare-fun e!144044 () Bool)

(assert (=> start!21904 (=> (not res!108749) (not e!144044))))

(declare-fun valid!1217 (LongMapFixedSize!3034) Bool)

(assert (=> start!21904 (= res!108749 (valid!1217 thiss!1504))))

(assert (=> start!21904 e!144044))

(declare-fun e!144033 () Bool)

(assert (=> start!21904 e!144033))

(assert (=> start!21904 true))

(declare-fun b!221616 () Bool)

(declare-fun e!144031 () Bool)

(assert (=> b!221616 (= e!144031 false)))

(declare-fun lt!112481 () Bool)

(declare-datatypes ((List!3308 0))(
  ( (Nil!3305) (Cons!3304 (h!3952 (_ BitVec 64)) (t!8275 List!3308)) )
))
(declare-fun arrayNoDuplicates!0 (array!10886 (_ BitVec 32) List!3308) Bool)

(assert (=> b!221616 (= lt!112481 (arrayNoDuplicates!0 (_keys!6230 thiss!1504) #b00000000000000000000000000000000 Nil!3305))))

(declare-fun mapNonEmpty!9901 () Bool)

(declare-fun mapRes!9901 () Bool)

(declare-fun tp!21019 () Bool)

(declare-fun e!144043 () Bool)

(assert (=> mapNonEmpty!9901 (= mapRes!9901 (and tp!21019 e!144043))))

(declare-fun mapValue!9901 () ValueCell!2567)

(declare-fun mapKey!9901 () (_ BitVec 32))

(declare-fun mapRest!9901 () (Array (_ BitVec 32) ValueCell!2567))

(assert (=> mapNonEmpty!9901 (= (arr!5161 (_values!4159 thiss!1504)) (store mapRest!9901 mapKey!9901 mapValue!9901))))

(declare-fun b!221617 () Bool)

(declare-fun res!108753 () Bool)

(assert (=> b!221617 (=> (not res!108753) (not e!144031))))

(declare-fun noDuplicate!63 (List!3308) Bool)

(assert (=> b!221617 (= res!108753 (noDuplicate!63 Nil!3305))))

(declare-fun b!221618 () Bool)

(declare-fun e!144046 () Bool)

(declare-fun e!144032 () Bool)

(assert (=> b!221618 (= e!144046 e!144032)))

(declare-fun res!108761 () Bool)

(assert (=> b!221618 (=> (not res!108761) (not e!144032))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!221618 (= res!108761 (inRange!0 index!297 (mask!9990 thiss!1504)))))

(declare-fun lt!112485 () Unit!6622)

(declare-fun e!144037 () Unit!6622)

(assert (=> b!221618 (= lt!112485 e!144037)))

(declare-fun c!36830 () Bool)

(declare-datatypes ((tuple2!4382 0))(
  ( (tuple2!4383 (_1!2201 (_ BitVec 64)) (_2!2201 V!7409)) )
))
(declare-datatypes ((List!3309 0))(
  ( (Nil!3306) (Cons!3305 (h!3953 tuple2!4382) (t!8276 List!3309)) )
))
(declare-datatypes ((ListLongMap!3309 0))(
  ( (ListLongMap!3310 (toList!1670 List!3309)) )
))
(declare-fun contains!1507 (ListLongMap!3309 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1193 (array!10886 array!10884 (_ BitVec 32) (_ BitVec 32) V!7409 V!7409 (_ BitVec 32) Int) ListLongMap!3309)

(assert (=> b!221618 (= c!36830 (contains!1507 (getCurrentListMap!1193 (_keys!6230 thiss!1504) (_values!4159 thiss!1504) (mask!9990 thiss!1504) (extraKeys!3913 thiss!1504) (zeroValue!4017 thiss!1504) (minValue!4017 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4176 thiss!1504)) key!932))))

(declare-fun b!221619 () Bool)

(declare-fun res!108759 () Bool)

(assert (=> b!221619 (=> (not res!108759) (not e!144031))))

(declare-fun e!144042 () Bool)

(assert (=> b!221619 (= res!108759 e!144042)))

(declare-fun res!108755 () Bool)

(assert (=> b!221619 (=> res!108755 e!144042)))

(declare-fun e!144034 () Bool)

(assert (=> b!221619 (= res!108755 e!144034)))

(declare-fun res!108758 () Bool)

(assert (=> b!221619 (=> (not res!108758) (not e!144034))))

(assert (=> b!221619 (= res!108758 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun mapIsEmpty!9901 () Bool)

(assert (=> mapIsEmpty!9901 mapRes!9901))

(declare-fun c!36833 () Bool)

(declare-fun bm!20706 () Bool)

(declare-datatypes ((SeekEntryResult!838 0))(
  ( (MissingZero!838 (index!5522 (_ BitVec 32))) (Found!838 (index!5523 (_ BitVec 32))) (Intermediate!838 (undefined!1650 Bool) (index!5524 (_ BitVec 32)) (x!23034 (_ BitVec 32))) (Undefined!838) (MissingVacant!838 (index!5525 (_ BitVec 32))) )
))
(declare-fun lt!112484 () SeekEntryResult!838)

(assert (=> bm!20706 (= call!20710 (inRange!0 (ite c!36833 (index!5522 lt!112484) (index!5525 lt!112484)) (mask!9990 thiss!1504)))))

(declare-fun b!221620 () Bool)

(declare-fun lt!112480 () Unit!6622)

(assert (=> b!221620 (= e!144037 lt!112480)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!228 (array!10886 array!10884 (_ BitVec 32) (_ BitVec 32) V!7409 V!7409 (_ BitVec 64) Int) Unit!6622)

(assert (=> b!221620 (= lt!112480 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!228 (_keys!6230 thiss!1504) (_values!4159 thiss!1504) (mask!9990 thiss!1504) (extraKeys!3913 thiss!1504) (zeroValue!4017 thiss!1504) (minValue!4017 thiss!1504) key!932 (defaultEntry!4176 thiss!1504)))))

(assert (=> b!221620 (= c!36833 (is-MissingZero!838 lt!112484))))

(declare-fun e!144040 () Bool)

(assert (=> b!221620 e!144040))

(declare-fun b!221621 () Bool)

(declare-fun contains!1508 (List!3308 (_ BitVec 64)) Bool)

(assert (=> b!221621 (= e!144034 (contains!1508 Nil!3305 key!932))))

(declare-fun b!221622 () Bool)

(declare-fun e!144038 () Bool)

(assert (=> b!221622 (= e!144038 (and e!144029 mapRes!9901))))

(declare-fun condMapEmpty!9901 () Bool)

(declare-fun mapDefault!9901 () ValueCell!2567)

