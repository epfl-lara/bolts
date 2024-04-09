; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21964 () Bool)

(assert start!21964)

(declare-fun b!224336 () Bool)

(declare-fun b_free!6019 () Bool)

(declare-fun b_next!6019 () Bool)

(assert (=> b!224336 (= b_free!6019 (not b_next!6019))))

(declare-fun tp!21198 () Bool)

(declare-fun b_and!12935 () Bool)

(assert (=> b!224336 (= tp!21198 b_and!12935)))

(declare-fun b!224329 () Bool)

(declare-fun e!145651 () Bool)

(declare-fun e!145664 () Bool)

(assert (=> b!224329 (= e!145651 e!145664)))

(declare-fun res!110395 () Bool)

(assert (=> b!224329 (=> (not res!110395) (not e!145664))))

(declare-datatypes ((V!7489 0))(
  ( (V!7490 (val!2985 Int)) )
))
(declare-datatypes ((ValueCell!2597 0))(
  ( (ValueCellFull!2597 (v!5001 V!7489)) (EmptyCell!2597) )
))
(declare-datatypes ((array!11004 0))(
  ( (array!11005 (arr!5221 (Array (_ BitVec 32) ValueCell!2597)) (size!5554 (_ BitVec 32))) )
))
(declare-datatypes ((array!11006 0))(
  ( (array!11007 (arr!5222 (Array (_ BitVec 32) (_ BitVec 64))) (size!5555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3094 0))(
  ( (LongMapFixedSize!3095 (defaultEntry!4206 Int) (mask!10040 (_ BitVec 32)) (extraKeys!3943 (_ BitVec 32)) (zeroValue!4047 V!7489) (minValue!4047 V!7489) (_size!1596 (_ BitVec 32)) (_keys!6260 array!11006) (_values!4189 array!11004) (_vacant!1596 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3094)

(assert (=> b!224329 (= res!110395 (and (bvslt (size!5555 (_keys!6260 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5555 (_keys!6260 thiss!1504)))))))

(declare-datatypes ((Unit!6744 0))(
  ( (Unit!6745) )
))
(declare-fun lt!113157 () Unit!6744)

(declare-fun e!145652 () Unit!6744)

(assert (=> b!224329 (= lt!113157 e!145652)))

(declare-fun c!37193 () Bool)

(declare-fun lt!113158 () Bool)

(assert (=> b!224329 (= c!37193 lt!113158)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!224329 (= lt!113158 (arrayContainsKey!0 (_keys!6260 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224330 () Bool)

(declare-fun res!110399 () Bool)

(assert (=> b!224330 (=> (not res!110399) (not e!145664))))

(declare-datatypes ((List!3355 0))(
  ( (Nil!3352) (Cons!3351 (h!3999 (_ BitVec 64)) (t!8322 List!3355)) )
))
(declare-fun noDuplicate!84 (List!3355) Bool)

(assert (=> b!224330 (= res!110399 (noDuplicate!84 Nil!3352))))

(declare-fun b!224331 () Bool)

(declare-fun e!145649 () Unit!6744)

(declare-fun Unit!6746 () Unit!6744)

(assert (=> b!224331 (= e!145649 Unit!6746)))

(declare-fun lt!113163 () Unit!6744)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!239 (array!11006 array!11004 (_ BitVec 32) (_ BitVec 32) V!7489 V!7489 (_ BitVec 64) Int) Unit!6744)

(assert (=> b!224331 (= lt!113163 (lemmaInListMapThenSeekEntryOrOpenFindsIt!239 (_keys!6260 thiss!1504) (_values!4189 thiss!1504) (mask!10040 thiss!1504) (extraKeys!3943 thiss!1504) (zeroValue!4047 thiss!1504) (minValue!4047 thiss!1504) key!932 (defaultEntry!4206 thiss!1504)))))

(assert (=> b!224331 false))

(declare-fun b!224332 () Bool)

(declare-fun res!110402 () Bool)

(assert (=> b!224332 (=> (not res!110402) (not e!145664))))

(declare-fun contains!1554 (List!3355 (_ BitVec 64)) Bool)

(assert (=> b!224332 (= res!110402 (not (contains!1554 Nil!3352 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224333 () Bool)

(declare-fun lt!113161 () Unit!6744)

(assert (=> b!224333 (= e!145649 lt!113161)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!247 (array!11006 array!11004 (_ BitVec 32) (_ BitVec 32) V!7489 V!7489 (_ BitVec 64) Int) Unit!6744)

(assert (=> b!224333 (= lt!113161 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!247 (_keys!6260 thiss!1504) (_values!4189 thiss!1504) (mask!10040 thiss!1504) (extraKeys!3943 thiss!1504) (zeroValue!4047 thiss!1504) (minValue!4047 thiss!1504) key!932 (defaultEntry!4206 thiss!1504)))))

(declare-fun c!37192 () Bool)

(declare-datatypes ((SeekEntryResult!867 0))(
  ( (MissingZero!867 (index!5638 (_ BitVec 32))) (Found!867 (index!5639 (_ BitVec 32))) (Intermediate!867 (undefined!1679 Bool) (index!5640 (_ BitVec 32)) (x!23143 (_ BitVec 32))) (Undefined!867) (MissingVacant!867 (index!5641 (_ BitVec 32))) )
))
(declare-fun lt!113162 () SeekEntryResult!867)

(assert (=> b!224333 (= c!37192 (is-MissingZero!867 lt!113162))))

(declare-fun e!145655 () Bool)

(assert (=> b!224333 e!145655))

(declare-fun b!224334 () Bool)

(declare-fun e!145658 () Bool)

(declare-fun e!145666 () Bool)

(assert (=> b!224334 (= e!145658 e!145666)))

(declare-fun res!110400 () Bool)

(declare-fun call!20889 () Bool)

(assert (=> b!224334 (= res!110400 call!20889)))

(assert (=> b!224334 (=> (not res!110400) (not e!145666))))

(declare-fun b!224335 () Bool)

(declare-fun res!110396 () Bool)

(assert (=> b!224335 (=> (not res!110396) (not e!145664))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!224335 (= res!110396 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5555 (_keys!6260 thiss!1504)))))))

(declare-fun tp_is_empty!5881 () Bool)

(declare-fun e!145662 () Bool)

(declare-fun e!145657 () Bool)

(declare-fun array_inv!3445 (array!11006) Bool)

(declare-fun array_inv!3446 (array!11004) Bool)

(assert (=> b!224336 (= e!145657 (and tp!21198 tp_is_empty!5881 (array_inv!3445 (_keys!6260 thiss!1504)) (array_inv!3446 (_values!4189 thiss!1504)) e!145662))))

(declare-fun b!224337 () Bool)

(declare-fun e!145665 () Bool)

(declare-fun e!145656 () Bool)

(assert (=> b!224337 (= e!145665 e!145656)))

(declare-fun res!110404 () Bool)

(assert (=> b!224337 (=> (not res!110404) (not e!145656))))

(assert (=> b!224337 (= res!110404 (or (= lt!113162 (MissingZero!867 index!297)) (= lt!113162 (MissingVacant!867 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11006 (_ BitVec 32)) SeekEntryResult!867)

(assert (=> b!224337 (= lt!113162 (seekEntryOrOpen!0 key!932 (_keys!6260 thiss!1504) (mask!10040 thiss!1504)))))

(declare-fun b!224338 () Bool)

(declare-fun res!110388 () Bool)

(declare-fun e!145659 () Bool)

(assert (=> b!224338 (=> (not res!110388) (not e!145659))))

(assert (=> b!224338 (= res!110388 (= (select (arr!5222 (_keys!6260 thiss!1504)) (index!5638 lt!113162)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!224339 () Bool)

(declare-fun e!145650 () Bool)

(assert (=> b!224339 (= e!145650 (not (contains!1554 Nil!3352 key!932)))))

(declare-fun b!224340 () Bool)

(declare-fun e!145663 () Bool)

(assert (=> b!224340 (= e!145663 tp_is_empty!5881)))

(declare-fun res!110389 () Bool)

(assert (=> start!21964 (=> (not res!110389) (not e!145665))))

(declare-fun valid!1239 (LongMapFixedSize!3094) Bool)

(assert (=> start!21964 (= res!110389 (valid!1239 thiss!1504))))

(assert (=> start!21964 e!145665))

(assert (=> start!21964 e!145657))

(assert (=> start!21964 true))

(declare-fun b!224341 () Bool)

(assert (=> b!224341 (= e!145658 (is-Undefined!867 lt!113162))))

(declare-fun b!224342 () Bool)

(declare-fun res!110391 () Bool)

(assert (=> b!224342 (=> (not res!110391) (not e!145664))))

(declare-fun arrayNoDuplicates!0 (array!11006 (_ BitVec 32) List!3355) Bool)

(assert (=> b!224342 (= res!110391 (arrayNoDuplicates!0 (_keys!6260 thiss!1504) #b00000000000000000000000000000000 Nil!3352))))

(declare-fun b!224343 () Bool)

(declare-fun res!110394 () Bool)

(assert (=> b!224343 (= res!110394 (= (select (arr!5222 (_keys!6260 thiss!1504)) (index!5641 lt!113162)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!224343 (=> (not res!110394) (not e!145666))))

(declare-fun b!224344 () Bool)

(declare-fun e!145654 () Bool)

(assert (=> b!224344 (= e!145654 e!145650)))

(declare-fun res!110403 () Bool)

(assert (=> b!224344 (=> (not res!110403) (not e!145650))))

(assert (=> b!224344 (= res!110403 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun mapNonEmpty!9991 () Bool)

(declare-fun mapRes!9991 () Bool)

(declare-fun tp!21199 () Bool)

(declare-fun e!145660 () Bool)

(assert (=> mapNonEmpty!9991 (= mapRes!9991 (and tp!21199 e!145660))))

(declare-fun mapRest!9991 () (Array (_ BitVec 32) ValueCell!2597))

(declare-fun mapKey!9991 () (_ BitVec 32))

(declare-fun mapValue!9991 () ValueCell!2597)

(assert (=> mapNonEmpty!9991 (= (arr!5221 (_values!4189 thiss!1504)) (store mapRest!9991 mapKey!9991 mapValue!9991))))

(declare-fun b!224345 () Bool)

(declare-fun res!110386 () Bool)

(assert (=> b!224345 (=> (not res!110386) (not e!145664))))

(assert (=> b!224345 (= res!110386 (not (contains!1554 Nil!3352 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224346 () Bool)

(declare-fun res!110397 () Bool)

(assert (=> b!224346 (=> (not res!110397) (not e!145665))))

(assert (=> b!224346 (= res!110397 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!9991 () Bool)

(assert (=> mapIsEmpty!9991 mapRes!9991))

(declare-fun b!224347 () Bool)

(declare-fun call!20890 () Bool)

(assert (=> b!224347 (= e!145666 (not call!20890))))

(declare-fun b!224348 () Bool)

(declare-fun res!110390 () Bool)

(assert (=> b!224348 (=> (not res!110390) (not e!145664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224348 (= res!110390 (validKeyInArray!0 key!932))))

(declare-fun b!224349 () Bool)

(assert (=> b!224349 (= e!145660 tp_is_empty!5881)))

(declare-fun bm!20886 () Bool)

(assert (=> bm!20886 (= call!20890 (arrayContainsKey!0 (_keys!6260 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!20887 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20887 (= call!20889 (inRange!0 (ite c!37192 (index!5638 lt!113162) (index!5641 lt!113162)) (mask!10040 thiss!1504)))))

(declare-fun b!224350 () Bool)

(declare-fun e!145661 () Bool)

(assert (=> b!224350 (= e!145661 (contains!1554 Nil!3352 key!932))))

(declare-fun b!224351 () Bool)

(assert (=> b!224351 (= e!145659 (not call!20890))))

(declare-fun b!224352 () Bool)

(assert (=> b!224352 (= e!145662 (and e!145663 mapRes!9991))))

(declare-fun condMapEmpty!9991 () Bool)

(declare-fun mapDefault!9991 () ValueCell!2597)

