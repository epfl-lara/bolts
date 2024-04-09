; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21968 () Bool)

(assert start!21968)

(declare-fun b!224538 () Bool)

(declare-fun b_free!6023 () Bool)

(declare-fun b_next!6023 () Bool)

(assert (=> b!224538 (= b_free!6023 (not b_next!6023))))

(declare-fun tp!21210 () Bool)

(declare-fun b_and!12939 () Bool)

(assert (=> b!224538 (= tp!21210 b_and!12939)))

(declare-fun b!224521 () Bool)

(declare-fun res!110517 () Bool)

(declare-fun e!145766 () Bool)

(assert (=> b!224521 (=> (not res!110517) (not e!145766))))

(declare-datatypes ((List!3358 0))(
  ( (Nil!3355) (Cons!3354 (h!4002 (_ BitVec 64)) (t!8325 List!3358)) )
))
(declare-fun contains!1557 (List!3358 (_ BitVec 64)) Bool)

(assert (=> b!224521 (= res!110517 (not (contains!1557 Nil!3355 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224522 () Bool)

(declare-datatypes ((Unit!6752 0))(
  ( (Unit!6753) )
))
(declare-fun e!145761 () Unit!6752)

(declare-fun Unit!6754 () Unit!6752)

(assert (=> b!224522 (= e!145761 Unit!6754)))

(declare-fun lt!113207 () Unit!6752)

(declare-datatypes ((V!7493 0))(
  ( (V!7494 (val!2987 Int)) )
))
(declare-datatypes ((ValueCell!2599 0))(
  ( (ValueCellFull!2599 (v!5003 V!7493)) (EmptyCell!2599) )
))
(declare-datatypes ((array!11012 0))(
  ( (array!11013 (arr!5225 (Array (_ BitVec 32) ValueCell!2599)) (size!5558 (_ BitVec 32))) )
))
(declare-datatypes ((array!11014 0))(
  ( (array!11015 (arr!5226 (Array (_ BitVec 32) (_ BitVec 64))) (size!5559 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3098 0))(
  ( (LongMapFixedSize!3099 (defaultEntry!4208 Int) (mask!10042 (_ BitVec 32)) (extraKeys!3945 (_ BitVec 32)) (zeroValue!4049 V!7493) (minValue!4049 V!7493) (_size!1598 (_ BitVec 32)) (_keys!6262 array!11014) (_values!4191 array!11012) (_vacant!1598 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3098)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!241 (array!11014 array!11012 (_ BitVec 32) (_ BitVec 32) V!7493 V!7493 (_ BitVec 64) Int) Unit!6752)

(assert (=> b!224522 (= lt!113207 (lemmaInListMapThenSeekEntryOrOpenFindsIt!241 (_keys!6262 thiss!1504) (_values!4191 thiss!1504) (mask!10042 thiss!1504) (extraKeys!3945 thiss!1504) (zeroValue!4049 thiss!1504) (minValue!4049 thiss!1504) key!932 (defaultEntry!4208 thiss!1504)))))

(assert (=> b!224522 false))

(declare-fun b!224523 () Bool)

(declare-fun res!110516 () Bool)

(declare-fun e!145770 () Bool)

(assert (=> b!224523 (=> (not res!110516) (not e!145770))))

(declare-fun call!20902 () Bool)

(assert (=> b!224523 (= res!110516 call!20902)))

(declare-fun e!145767 () Bool)

(assert (=> b!224523 (= e!145767 e!145770)))

(declare-fun b!224524 () Bool)

(declare-fun res!110513 () Bool)

(declare-datatypes ((SeekEntryResult!869 0))(
  ( (MissingZero!869 (index!5646 (_ BitVec 32))) (Found!869 (index!5647 (_ BitVec 32))) (Intermediate!869 (undefined!1681 Bool) (index!5648 (_ BitVec 32)) (x!23145 (_ BitVec 32))) (Undefined!869) (MissingVacant!869 (index!5649 (_ BitVec 32))) )
))
(declare-fun lt!113211 () SeekEntryResult!869)

(assert (=> b!224524 (= res!110513 (= (select (arr!5226 (_keys!6262 thiss!1504)) (index!5649 lt!113211)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!145771 () Bool)

(assert (=> b!224524 (=> (not res!110513) (not e!145771))))

(declare-fun res!110515 () Bool)

(declare-fun e!145769 () Bool)

(assert (=> start!21968 (=> (not res!110515) (not e!145769))))

(declare-fun valid!1241 (LongMapFixedSize!3098) Bool)

(assert (=> start!21968 (= res!110515 (valid!1241 thiss!1504))))

(assert (=> start!21968 e!145769))

(declare-fun e!145773 () Bool)

(assert (=> start!21968 e!145773))

(assert (=> start!21968 true))

(declare-fun b!224525 () Bool)

(declare-fun res!110508 () Bool)

(assert (=> b!224525 (=> (not res!110508) (not e!145766))))

(declare-fun noDuplicate!86 (List!3358) Bool)

(assert (=> b!224525 (= res!110508 (noDuplicate!86 Nil!3355))))

(declare-fun b!224526 () Bool)

(declare-fun e!145760 () Bool)

(assert (=> b!224526 (= e!145760 e!145766)))

(declare-fun res!110509 () Bool)

(assert (=> b!224526 (=> (not res!110509) (not e!145766))))

(assert (=> b!224526 (= res!110509 (and (bvslt (size!5559 (_keys!6262 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5559 (_keys!6262 thiss!1504)))))))

(declare-fun lt!113209 () Unit!6752)

(declare-fun e!145757 () Unit!6752)

(assert (=> b!224526 (= lt!113209 e!145757)))

(declare-fun c!37217 () Bool)

(declare-fun lt!113205 () Bool)

(assert (=> b!224526 (= c!37217 lt!113205)))

(declare-fun arrayContainsKey!0 (array!11014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!224526 (= lt!113205 (arrayContainsKey!0 (_keys!6262 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224527 () Bool)

(declare-fun Unit!6755 () Unit!6752)

(assert (=> b!224527 (= e!145757 Unit!6755)))

(declare-fun lt!113210 () Unit!6752)

(declare-fun lemmaArrayContainsKeyThenInListMap!79 (array!11014 array!11012 (_ BitVec 32) (_ BitVec 32) V!7493 V!7493 (_ BitVec 64) (_ BitVec 32) Int) Unit!6752)

(assert (=> b!224527 (= lt!113210 (lemmaArrayContainsKeyThenInListMap!79 (_keys!6262 thiss!1504) (_values!4191 thiss!1504) (mask!10042 thiss!1504) (extraKeys!3945 thiss!1504) (zeroValue!4049 thiss!1504) (minValue!4049 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4208 thiss!1504)))))

(assert (=> b!224527 false))

(declare-fun b!224528 () Bool)

(declare-fun call!20901 () Bool)

(assert (=> b!224528 (= e!145771 (not call!20901))))

(declare-fun b!224529 () Bool)

(declare-fun lt!113206 () Unit!6752)

(assert (=> b!224529 (= e!145761 lt!113206)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!249 (array!11014 array!11012 (_ BitVec 32) (_ BitVec 32) V!7493 V!7493 (_ BitVec 64) Int) Unit!6752)

(assert (=> b!224529 (= lt!113206 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!249 (_keys!6262 thiss!1504) (_values!4191 thiss!1504) (mask!10042 thiss!1504) (extraKeys!3945 thiss!1504) (zeroValue!4049 thiss!1504) (minValue!4049 thiss!1504) key!932 (defaultEntry!4208 thiss!1504)))))

(declare-fun c!37214 () Bool)

(assert (=> b!224529 (= c!37214 (is-MissingZero!869 lt!113211))))

(assert (=> b!224529 e!145767))

(declare-fun b!224530 () Bool)

(declare-fun res!110506 () Bool)

(assert (=> b!224530 (=> (not res!110506) (not e!145770))))

(assert (=> b!224530 (= res!110506 (= (select (arr!5226 (_keys!6262 thiss!1504)) (index!5646 lt!113211)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!224531 () Bool)

(declare-fun res!110505 () Bool)

(assert (=> b!224531 (=> (not res!110505) (not e!145769))))

(assert (=> b!224531 (= res!110505 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!224532 () Bool)

(declare-fun c!37216 () Bool)

(assert (=> b!224532 (= c!37216 (is-MissingVacant!869 lt!113211))))

(declare-fun e!145762 () Bool)

(assert (=> b!224532 (= e!145767 e!145762)))

(declare-fun b!224533 () Bool)

(declare-fun e!145759 () Bool)

(declare-fun tp_is_empty!5885 () Bool)

(assert (=> b!224533 (= e!145759 tp_is_empty!5885)))

(declare-fun b!224534 () Bool)

(assert (=> b!224534 (= e!145770 (not call!20901))))

(declare-fun bm!20898 () Bool)

(assert (=> bm!20898 (= call!20901 (arrayContainsKey!0 (_keys!6262 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224535 () Bool)

(declare-fun res!110524 () Bool)

(assert (=> b!224535 (=> (not res!110524) (not e!145766))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!224535 (= res!110524 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5559 (_keys!6262 thiss!1504)))))))

(declare-fun b!224536 () Bool)

(declare-fun e!145765 () Bool)

(assert (=> b!224536 (= e!145765 (not (contains!1557 Nil!3355 key!932)))))

(declare-fun b!224537 () Bool)

(declare-fun Unit!6756 () Unit!6752)

(assert (=> b!224537 (= e!145757 Unit!6756)))

(declare-fun mapNonEmpty!9997 () Bool)

(declare-fun mapRes!9997 () Bool)

(declare-fun tp!21211 () Bool)

(declare-fun e!145774 () Bool)

(assert (=> mapNonEmpty!9997 (= mapRes!9997 (and tp!21211 e!145774))))

(declare-fun mapKey!9997 () (_ BitVec 32))

(declare-fun mapValue!9997 () ValueCell!2599)

(declare-fun mapRest!9997 () (Array (_ BitVec 32) ValueCell!2599))

(assert (=> mapNonEmpty!9997 (= (arr!5225 (_values!4191 thiss!1504)) (store mapRest!9997 mapKey!9997 mapValue!9997))))

(declare-fun e!145758 () Bool)

(declare-fun array_inv!3449 (array!11014) Bool)

(declare-fun array_inv!3450 (array!11012) Bool)

(assert (=> b!224538 (= e!145773 (and tp!21210 tp_is_empty!5885 (array_inv!3449 (_keys!6262 thiss!1504)) (array_inv!3450 (_values!4191 thiss!1504)) e!145758))))

(declare-fun b!224539 () Bool)

(assert (=> b!224539 (= e!145774 tp_is_empty!5885)))

(declare-fun b!224540 () Bool)

(declare-fun e!145763 () Bool)

(assert (=> b!224540 (= e!145769 e!145763)))

(declare-fun res!110521 () Bool)

(assert (=> b!224540 (=> (not res!110521) (not e!145763))))

(assert (=> b!224540 (= res!110521 (or (= lt!113211 (MissingZero!869 index!297)) (= lt!113211 (MissingVacant!869 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11014 (_ BitVec 32)) SeekEntryResult!869)

(assert (=> b!224540 (= lt!113211 (seekEntryOrOpen!0 key!932 (_keys!6262 thiss!1504) (mask!10042 thiss!1504)))))

(declare-fun b!224541 () Bool)

(assert (=> b!224541 (= e!145762 e!145771)))

(declare-fun res!110512 () Bool)

(assert (=> b!224541 (= res!110512 call!20902)))

(assert (=> b!224541 (=> (not res!110512) (not e!145771))))

(declare-fun b!224542 () Bool)

(declare-fun res!110523 () Bool)

(assert (=> b!224542 (=> (not res!110523) (not e!145766))))

(declare-fun e!145772 () Bool)

(assert (=> b!224542 (= res!110523 e!145772)))

(declare-fun res!110507 () Bool)

(assert (=> b!224542 (=> res!110507 e!145772)))

(declare-fun e!145768 () Bool)

(assert (=> b!224542 (= res!110507 e!145768)))

(declare-fun res!110518 () Bool)

(assert (=> b!224542 (=> (not res!110518) (not e!145768))))

(assert (=> b!224542 (= res!110518 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!224543 () Bool)

(declare-fun res!110520 () Bool)

(assert (=> b!224543 (=> (not res!110520) (not e!145766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224543 (= res!110520 (validKeyInArray!0 key!932))))

(declare-fun b!224544 () Bool)

(declare-fun res!110510 () Bool)

(assert (=> b!224544 (=> (not res!110510) (not e!145766))))

(assert (=> b!224544 (= res!110510 (not (contains!1557 Nil!3355 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224545 () Bool)

(assert (=> b!224545 (= e!145763 e!145760)))

(declare-fun res!110519 () Bool)

(assert (=> b!224545 (=> (not res!110519) (not e!145760))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!224545 (= res!110519 (inRange!0 index!297 (mask!10042 thiss!1504)))))

(declare-fun lt!113204 () Unit!6752)

(assert (=> b!224545 (= lt!113204 e!145761)))

(declare-fun c!37215 () Bool)

(declare-datatypes ((tuple2!4422 0))(
  ( (tuple2!4423 (_1!2221 (_ BitVec 64)) (_2!2221 V!7493)) )
))
(declare-datatypes ((List!3359 0))(
  ( (Nil!3356) (Cons!3355 (h!4003 tuple2!4422) (t!8326 List!3359)) )
))
(declare-datatypes ((ListLongMap!3349 0))(
  ( (ListLongMap!3350 (toList!1690 List!3359)) )
))
(declare-fun contains!1558 (ListLongMap!3349 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1213 (array!11014 array!11012 (_ BitVec 32) (_ BitVec 32) V!7493 V!7493 (_ BitVec 32) Int) ListLongMap!3349)

(assert (=> b!224545 (= c!37215 (contains!1558 (getCurrentListMap!1213 (_keys!6262 thiss!1504) (_values!4191 thiss!1504) (mask!10042 thiss!1504) (extraKeys!3945 thiss!1504) (zeroValue!4049 thiss!1504) (minValue!4049 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4208 thiss!1504)) key!932))))

(declare-fun b!224546 () Bool)

(assert (=> b!224546 (= e!145758 (and e!145759 mapRes!9997))))

(declare-fun condMapEmpty!9997 () Bool)

(declare-fun mapDefault!9997 () ValueCell!2599)

