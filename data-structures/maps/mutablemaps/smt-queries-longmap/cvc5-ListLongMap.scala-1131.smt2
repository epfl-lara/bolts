; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23264 () Bool)

(assert start!23264)

(declare-fun b!244182 () Bool)

(declare-fun b_free!6535 () Bool)

(declare-fun b_next!6535 () Bool)

(assert (=> b!244182 (= b_free!6535 (not b_next!6535))))

(declare-fun tp!22831 () Bool)

(declare-fun b_and!13537 () Bool)

(assert (=> b!244182 (= tp!22831 b_and!13537)))

(declare-fun b!244160 () Bool)

(declare-datatypes ((Unit!7532 0))(
  ( (Unit!7533) )
))
(declare-fun e!158446 () Unit!7532)

(declare-fun Unit!7534 () Unit!7532)

(assert (=> b!244160 (= e!158446 Unit!7534)))

(declare-fun b!244161 () Bool)

(declare-fun res!119743 () Bool)

(declare-fun e!158450 () Bool)

(assert (=> b!244161 (=> (not res!119743) (not e!158450))))

(declare-fun call!22776 () Bool)

(assert (=> b!244161 (= res!119743 call!22776)))

(declare-fun e!158455 () Bool)

(assert (=> b!244161 (= e!158455 e!158450)))

(declare-fun c!40744 () Bool)

(declare-datatypes ((V!8177 0))(
  ( (V!8178 (val!3243 Int)) )
))
(declare-datatypes ((ValueCell!2855 0))(
  ( (ValueCellFull!2855 (v!5288 V!8177)) (EmptyCell!2855) )
))
(declare-datatypes ((array!12086 0))(
  ( (array!12087 (arr!5737 (Array (_ BitVec 32) ValueCell!2855)) (size!6079 (_ BitVec 32))) )
))
(declare-datatypes ((array!12088 0))(
  ( (array!12089 (arr!5738 (Array (_ BitVec 32) (_ BitVec 64))) (size!6080 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3610 0))(
  ( (LongMapFixedSize!3611 (defaultEntry!4522 Int) (mask!10621 (_ BitVec 32)) (extraKeys!4259 (_ BitVec 32)) (zeroValue!4363 V!8177) (minValue!4363 V!8177) (_size!1854 (_ BitVec 32)) (_keys!6634 array!12088) (_values!4505 array!12086) (_vacant!1854 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3610)

(declare-fun bm!22773 () Bool)

(declare-datatypes ((SeekEntryResult!1088 0))(
  ( (MissingZero!1088 (index!6522 (_ BitVec 32))) (Found!1088 (index!6523 (_ BitVec 32))) (Intermediate!1088 (undefined!1900 Bool) (index!6524 (_ BitVec 32)) (x!24374 (_ BitVec 32))) (Undefined!1088) (MissingVacant!1088 (index!6525 (_ BitVec 32))) )
))
(declare-fun lt!122462 () SeekEntryResult!1088)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22773 (= call!22776 (inRange!0 (ite c!40744 (index!6522 lt!122462) (index!6525 lt!122462)) (mask!10621 thiss!1504)))))

(declare-fun b!244162 () Bool)

(declare-fun e!158462 () Bool)

(declare-fun e!158457 () Bool)

(assert (=> b!244162 (= e!158462 e!158457)))

(declare-fun res!119752 () Bool)

(assert (=> b!244162 (= res!119752 call!22776)))

(assert (=> b!244162 (=> (not res!119752) (not e!158457))))

(declare-fun b!244163 () Bool)

(declare-fun res!119744 () Bool)

(assert (=> b!244163 (=> (not res!119744) (not e!158450))))

(assert (=> b!244163 (= res!119744 (= (select (arr!5738 (_keys!6634 thiss!1504)) (index!6522 lt!122462)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!10849 () Bool)

(declare-fun mapRes!10849 () Bool)

(declare-fun tp!22830 () Bool)

(declare-fun e!158454 () Bool)

(assert (=> mapNonEmpty!10849 (= mapRes!10849 (and tp!22830 e!158454))))

(declare-fun mapKey!10849 () (_ BitVec 32))

(declare-fun mapValue!10849 () ValueCell!2855)

(declare-fun mapRest!10849 () (Array (_ BitVec 32) ValueCell!2855))

(assert (=> mapNonEmpty!10849 (= (arr!5737 (_values!4505 thiss!1504)) (store mapRest!10849 mapKey!10849 mapValue!10849))))

(declare-fun bm!22774 () Bool)

(declare-fun call!22777 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22774 (= call!22777 (arrayContainsKey!0 (_keys!6634 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244164 () Bool)

(declare-fun e!158452 () Unit!7532)

(declare-fun lt!122464 () Unit!7532)

(assert (=> b!244164 (= e!158452 lt!122464)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!369 (array!12088 array!12086 (_ BitVec 32) (_ BitVec 32) V!8177 V!8177 (_ BitVec 64) Int) Unit!7532)

(assert (=> b!244164 (= lt!122464 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!369 (_keys!6634 thiss!1504) (_values!4505 thiss!1504) (mask!10621 thiss!1504) (extraKeys!4259 thiss!1504) (zeroValue!4363 thiss!1504) (minValue!4363 thiss!1504) key!932 (defaultEntry!4522 thiss!1504)))))

(assert (=> b!244164 (= c!40744 (is-MissingZero!1088 lt!122462))))

(assert (=> b!244164 e!158455))

(declare-fun b!244165 () Bool)

(assert (=> b!244165 (= e!158450 (not call!22777))))

(declare-fun b!244166 () Bool)

(declare-fun e!158461 () Bool)

(declare-fun e!158456 () Bool)

(assert (=> b!244166 (= e!158461 e!158456)))

(declare-fun res!119740 () Bool)

(assert (=> b!244166 (=> (not res!119740) (not e!158456))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!244166 (= res!119740 (inRange!0 index!297 (mask!10621 thiss!1504)))))

(declare-fun lt!122460 () Unit!7532)

(assert (=> b!244166 (= lt!122460 e!158452)))

(declare-fun c!40743 () Bool)

(declare-datatypes ((tuple2!4768 0))(
  ( (tuple2!4769 (_1!2394 (_ BitVec 64)) (_2!2394 V!8177)) )
))
(declare-datatypes ((List!3674 0))(
  ( (Nil!3671) (Cons!3670 (h!4327 tuple2!4768) (t!8691 List!3674)) )
))
(declare-datatypes ((ListLongMap!3695 0))(
  ( (ListLongMap!3696 (toList!1863 List!3674)) )
))
(declare-fun contains!1759 (ListLongMap!3695 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1386 (array!12088 array!12086 (_ BitVec 32) (_ BitVec 32) V!8177 V!8177 (_ BitVec 32) Int) ListLongMap!3695)

(assert (=> b!244166 (= c!40743 (contains!1759 (getCurrentListMap!1386 (_keys!6634 thiss!1504) (_values!4505 thiss!1504) (mask!10621 thiss!1504) (extraKeys!4259 thiss!1504) (zeroValue!4363 thiss!1504) (minValue!4363 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4522 thiss!1504)) key!932))))

(declare-fun b!244168 () Bool)

(declare-fun e!158447 () Bool)

(declare-datatypes ((List!3675 0))(
  ( (Nil!3672) (Cons!3671 (h!4328 (_ BitVec 64)) (t!8692 List!3675)) )
))
(declare-fun contains!1760 (List!3675 (_ BitVec 64)) Bool)

(assert (=> b!244168 (= e!158447 (not (contains!1760 Nil!3672 key!932)))))

(declare-fun b!244169 () Bool)

(declare-fun Unit!7535 () Unit!7532)

(assert (=> b!244169 (= e!158452 Unit!7535)))

(declare-fun lt!122461 () Unit!7532)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!366 (array!12088 array!12086 (_ BitVec 32) (_ BitVec 32) V!8177 V!8177 (_ BitVec 64) Int) Unit!7532)

(assert (=> b!244169 (= lt!122461 (lemmaInListMapThenSeekEntryOrOpenFindsIt!366 (_keys!6634 thiss!1504) (_values!4505 thiss!1504) (mask!10621 thiss!1504) (extraKeys!4259 thiss!1504) (zeroValue!4363 thiss!1504) (minValue!4363 thiss!1504) key!932 (defaultEntry!4522 thiss!1504)))))

(assert (=> b!244169 false))

(declare-fun b!244170 () Bool)

(assert (=> b!244170 (= e!158457 (not call!22777))))

(declare-fun b!244171 () Bool)

(declare-fun e!158449 () Bool)

(assert (=> b!244171 (= e!158449 e!158447)))

(declare-fun res!119739 () Bool)

(assert (=> b!244171 (=> (not res!119739) (not e!158447))))

(assert (=> b!244171 (= res!119739 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!244172 () Bool)

(declare-fun res!119741 () Bool)

(declare-fun e!158458 () Bool)

(assert (=> b!244172 (=> (not res!119741) (not e!158458))))

(assert (=> b!244172 (= res!119741 e!158449)))

(declare-fun res!119754 () Bool)

(assert (=> b!244172 (=> res!119754 e!158449)))

(declare-fun e!158445 () Bool)

(assert (=> b!244172 (= res!119754 e!158445)))

(declare-fun res!119749 () Bool)

(assert (=> b!244172 (=> (not res!119749) (not e!158445))))

(assert (=> b!244172 (= res!119749 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!244173 () Bool)

(declare-fun e!158451 () Bool)

(assert (=> b!244173 (= e!158451 e!158461)))

(declare-fun res!119750 () Bool)

(assert (=> b!244173 (=> (not res!119750) (not e!158461))))

(assert (=> b!244173 (= res!119750 (or (= lt!122462 (MissingZero!1088 index!297)) (= lt!122462 (MissingVacant!1088 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12088 (_ BitVec 32)) SeekEntryResult!1088)

(assert (=> b!244173 (= lt!122462 (seekEntryOrOpen!0 key!932 (_keys!6634 thiss!1504) (mask!10621 thiss!1504)))))

(declare-fun b!244174 () Bool)

(declare-fun c!40742 () Bool)

(assert (=> b!244174 (= c!40742 (is-MissingVacant!1088 lt!122462))))

(assert (=> b!244174 (= e!158455 e!158462)))

(declare-fun mapIsEmpty!10849 () Bool)

(assert (=> mapIsEmpty!10849 mapRes!10849))

(declare-fun b!244175 () Bool)

(assert (=> b!244175 (= e!158456 e!158458)))

(declare-fun res!119755 () Bool)

(assert (=> b!244175 (=> (not res!119755) (not e!158458))))

(assert (=> b!244175 (= res!119755 (and (bvslt (size!6080 (_keys!6634 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6080 (_keys!6634 thiss!1504)))))))

(declare-fun lt!122463 () Unit!7532)

(assert (=> b!244175 (= lt!122463 e!158446)))

(declare-fun c!40745 () Bool)

(assert (=> b!244175 (= c!40745 (arrayContainsKey!0 (_keys!6634 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244176 () Bool)

(declare-fun res!119748 () Bool)

(assert (=> b!244176 (=> (not res!119748) (not e!158458))))

(assert (=> b!244176 (= res!119748 (not (contains!1760 Nil!3672 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244177 () Bool)

(declare-fun res!119745 () Bool)

(assert (=> b!244177 (=> (not res!119745) (not e!158458))))

(assert (=> b!244177 (= res!119745 (not (contains!1760 Nil!3672 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244178 () Bool)

(declare-fun res!119751 () Bool)

(assert (=> b!244178 (=> (not res!119751) (not e!158458))))

(declare-fun noDuplicate!100 (List!3675) Bool)

(assert (=> b!244178 (= res!119751 (noDuplicate!100 Nil!3672))))

(declare-fun res!119753 () Bool)

(assert (=> start!23264 (=> (not res!119753) (not e!158451))))

(declare-fun valid!1406 (LongMapFixedSize!3610) Bool)

(assert (=> start!23264 (= res!119753 (valid!1406 thiss!1504))))

(assert (=> start!23264 e!158451))

(declare-fun e!158453 () Bool)

(assert (=> start!23264 e!158453))

(assert (=> start!23264 true))

(declare-fun b!244167 () Bool)

(declare-fun Unit!7536 () Unit!7532)

(assert (=> b!244167 (= e!158446 Unit!7536)))

(declare-fun lt!122459 () Unit!7532)

(declare-fun lemmaArrayContainsKeyThenInListMap!168 (array!12088 array!12086 (_ BitVec 32) (_ BitVec 32) V!8177 V!8177 (_ BitVec 64) (_ BitVec 32) Int) Unit!7532)

(assert (=> b!244167 (= lt!122459 (lemmaArrayContainsKeyThenInListMap!168 (_keys!6634 thiss!1504) (_values!4505 thiss!1504) (mask!10621 thiss!1504) (extraKeys!4259 thiss!1504) (zeroValue!4363 thiss!1504) (minValue!4363 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4522 thiss!1504)))))

(assert (=> b!244167 false))

(declare-fun b!244179 () Bool)

(declare-fun res!119756 () Bool)

(assert (=> b!244179 (= res!119756 (= (select (arr!5738 (_keys!6634 thiss!1504)) (index!6525 lt!122462)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!244179 (=> (not res!119756) (not e!158457))))

(declare-fun b!244180 () Bool)

(assert (=> b!244180 (= e!158462 (is-Undefined!1088 lt!122462))))

(declare-fun b!244181 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!244181 (= e!158458 (not (validKeyInArray!0 key!932)))))

(declare-fun e!158460 () Bool)

(declare-fun tp_is_empty!6397 () Bool)

(declare-fun array_inv!3783 (array!12088) Bool)

(declare-fun array_inv!3784 (array!12086) Bool)

(assert (=> b!244182 (= e!158453 (and tp!22831 tp_is_empty!6397 (array_inv!3783 (_keys!6634 thiss!1504)) (array_inv!3784 (_values!4505 thiss!1504)) e!158460))))

(declare-fun b!244183 () Bool)

(declare-fun res!119742 () Bool)

(assert (=> b!244183 (=> (not res!119742) (not e!158458))))

(declare-fun arrayNoDuplicates!0 (array!12088 (_ BitVec 32) List!3675) Bool)

(assert (=> b!244183 (= res!119742 (arrayNoDuplicates!0 (_keys!6634 thiss!1504) #b00000000000000000000000000000000 Nil!3672))))

(declare-fun b!244184 () Bool)

(declare-fun res!119746 () Bool)

(assert (=> b!244184 (=> (not res!119746) (not e!158451))))

(assert (=> b!244184 (= res!119746 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!244185 () Bool)

(assert (=> b!244185 (= e!158454 tp_is_empty!6397)))

(declare-fun b!244186 () Bool)

(declare-fun e!158448 () Bool)

(assert (=> b!244186 (= e!158460 (and e!158448 mapRes!10849))))

(declare-fun condMapEmpty!10849 () Bool)

(declare-fun mapDefault!10849 () ValueCell!2855)

