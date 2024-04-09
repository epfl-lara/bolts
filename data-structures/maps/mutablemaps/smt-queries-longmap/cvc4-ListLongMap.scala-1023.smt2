; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21774 () Bool)

(assert start!21774)

(declare-fun b!218989 () Bool)

(declare-fun b_free!5891 () Bool)

(declare-fun b_next!5891 () Bool)

(assert (=> b!218989 (= b_free!5891 (not b_next!5891))))

(declare-fun tp!20810 () Bool)

(declare-fun b_and!12801 () Bool)

(assert (=> b!218989 (= tp!20810 b_and!12801)))

(declare-fun mapNonEmpty!9795 () Bool)

(declare-fun mapRes!9795 () Bool)

(declare-fun tp!20811 () Bool)

(declare-fun e!142480 () Bool)

(assert (=> mapNonEmpty!9795 (= mapRes!9795 (and tp!20811 e!142480))))

(declare-fun mapKey!9795 () (_ BitVec 32))

(declare-datatypes ((V!7317 0))(
  ( (V!7318 (val!2921 Int)) )
))
(declare-datatypes ((ValueCell!2533 0))(
  ( (ValueCellFull!2533 (v!4936 V!7317)) (EmptyCell!2533) )
))
(declare-datatypes ((array!10746 0))(
  ( (array!10747 (arr!5093 (Array (_ BitVec 32) ValueCell!2533)) (size!5425 (_ BitVec 32))) )
))
(declare-datatypes ((array!10748 0))(
  ( (array!10749 (arr!5094 (Array (_ BitVec 32) (_ BitVec 64))) (size!5426 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2966 0))(
  ( (LongMapFixedSize!2967 (defaultEntry!4136 Int) (mask!9919 (_ BitVec 32)) (extraKeys!3873 (_ BitVec 32)) (zeroValue!3977 V!7317) (minValue!3977 V!7317) (_size!1532 (_ BitVec 32)) (_keys!6186 array!10748) (_values!4119 array!10746) (_vacant!1532 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2966)

(declare-fun mapValue!9795 () ValueCell!2533)

(declare-fun mapRest!9795 () (Array (_ BitVec 32) ValueCell!2533))

(assert (=> mapNonEmpty!9795 (= (arr!5093 (_values!4119 thiss!1504)) (store mapRest!9795 mapKey!9795 mapValue!9795))))

(declare-fun b!218987 () Bool)

(declare-fun e!142477 () Bool)

(declare-fun e!142483 () Bool)

(assert (=> b!218987 (= e!142477 e!142483)))

(declare-fun res!107355 () Bool)

(declare-fun call!20460 () Bool)

(assert (=> b!218987 (= res!107355 call!20460)))

(assert (=> b!218987 (=> (not res!107355) (not e!142483))))

(declare-fun mapIsEmpty!9795 () Bool)

(assert (=> mapIsEmpty!9795 mapRes!9795))

(declare-fun res!107358 () Bool)

(declare-fun e!142486 () Bool)

(assert (=> start!21774 (=> (not res!107358) (not e!142486))))

(declare-fun valid!1192 (LongMapFixedSize!2966) Bool)

(assert (=> start!21774 (= res!107358 (valid!1192 thiss!1504))))

(assert (=> start!21774 e!142486))

(declare-fun e!142482 () Bool)

(assert (=> start!21774 e!142482))

(assert (=> start!21774 true))

(declare-fun b!218988 () Bool)

(declare-fun call!20461 () Bool)

(assert (=> b!218988 (= e!142483 (not call!20461))))

(declare-fun e!142484 () Bool)

(declare-fun tp_is_empty!5753 () Bool)

(declare-fun array_inv!3363 (array!10748) Bool)

(declare-fun array_inv!3364 (array!10746) Bool)

(assert (=> b!218989 (= e!142482 (and tp!20810 tp_is_empty!5753 (array_inv!3363 (_keys!6186 thiss!1504)) (array_inv!3364 (_values!4119 thiss!1504)) e!142484))))

(declare-fun bm!20457 () Bool)

(declare-datatypes ((SeekEntryResult!806 0))(
  ( (MissingZero!806 (index!5394 (_ BitVec 32))) (Found!806 (index!5395 (_ BitVec 32))) (Intermediate!806 (undefined!1618 Bool) (index!5396 (_ BitVec 32)) (x!22888 (_ BitVec 32))) (Undefined!806) (MissingVacant!806 (index!5397 (_ BitVec 32))) )
))
(declare-fun lt!111753 () SeekEntryResult!806)

(declare-fun c!36425 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20457 (= call!20460 (inRange!0 (ite c!36425 (index!5394 lt!111753) (index!5397 lt!111753)) (mask!9919 thiss!1504)))))

(declare-fun b!218990 () Bool)

(declare-fun res!107356 () Bool)

(assert (=> b!218990 (= res!107356 (= (select (arr!5094 (_keys!6186 thiss!1504)) (index!5397 lt!111753)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218990 (=> (not res!107356) (not e!142483))))

(declare-fun b!218991 () Bool)

(declare-fun res!107361 () Bool)

(declare-fun e!142481 () Bool)

(assert (=> b!218991 (=> (not res!107361) (not e!142481))))

(assert (=> b!218991 (= res!107361 call!20460)))

(declare-fun e!142479 () Bool)

(assert (=> b!218991 (= e!142479 e!142481)))

(declare-fun b!218992 () Bool)

(declare-fun e!142488 () Bool)

(declare-fun e!142487 () Bool)

(assert (=> b!218992 (= e!142488 e!142487)))

(declare-fun res!107359 () Bool)

(assert (=> b!218992 (=> (not res!107359) (not e!142487))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218992 (= res!107359 (inRange!0 index!297 (mask!9919 thiss!1504)))))

(declare-datatypes ((Unit!6529 0))(
  ( (Unit!6530) )
))
(declare-fun lt!111751 () Unit!6529)

(declare-fun e!142478 () Unit!6529)

(assert (=> b!218992 (= lt!111751 e!142478)))

(declare-fun c!36427 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4332 0))(
  ( (tuple2!4333 (_1!2176 (_ BitVec 64)) (_2!2176 V!7317)) )
))
(declare-datatypes ((List!3258 0))(
  ( (Nil!3255) (Cons!3254 (h!3901 tuple2!4332) (t!8223 List!3258)) )
))
(declare-datatypes ((ListLongMap!3259 0))(
  ( (ListLongMap!3260 (toList!1645 List!3258)) )
))
(declare-fun contains!1480 (ListLongMap!3259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1168 (array!10748 array!10746 (_ BitVec 32) (_ BitVec 32) V!7317 V!7317 (_ BitVec 32) Int) ListLongMap!3259)

(assert (=> b!218992 (= c!36427 (contains!1480 (getCurrentListMap!1168 (_keys!6186 thiss!1504) (_values!4119 thiss!1504) (mask!9919 thiss!1504) (extraKeys!3873 thiss!1504) (zeroValue!3977 thiss!1504) (minValue!3977 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4136 thiss!1504)) key!932))))

(declare-fun b!218993 () Bool)

(declare-fun res!107360 () Bool)

(assert (=> b!218993 (=> (not res!107360) (not e!142481))))

(assert (=> b!218993 (= res!107360 (= (select (arr!5094 (_keys!6186 thiss!1504)) (index!5394 lt!111753)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218994 () Bool)

(declare-fun Unit!6531 () Unit!6529)

(assert (=> b!218994 (= e!142478 Unit!6531)))

(declare-fun lt!111754 () Unit!6529)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!194 (array!10748 array!10746 (_ BitVec 32) (_ BitVec 32) V!7317 V!7317 (_ BitVec 64) Int) Unit!6529)

(assert (=> b!218994 (= lt!111754 (lemmaInListMapThenSeekEntryOrOpenFindsIt!194 (_keys!6186 thiss!1504) (_values!4119 thiss!1504) (mask!9919 thiss!1504) (extraKeys!3873 thiss!1504) (zeroValue!3977 thiss!1504) (minValue!3977 thiss!1504) key!932 (defaultEntry!4136 thiss!1504)))))

(assert (=> b!218994 false))

(declare-fun b!218995 () Bool)

(declare-fun res!107354 () Bool)

(assert (=> b!218995 (=> (not res!107354) (not e!142486))))

(assert (=> b!218995 (= res!107354 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218996 () Bool)

(declare-fun c!36426 () Bool)

(assert (=> b!218996 (= c!36426 (is-MissingVacant!806 lt!111753))))

(assert (=> b!218996 (= e!142479 e!142477)))

(declare-fun b!218997 () Bool)

(declare-fun lt!111752 () Unit!6529)

(assert (=> b!218997 (= e!142478 lt!111752)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!202 (array!10748 array!10746 (_ BitVec 32) (_ BitVec 32) V!7317 V!7317 (_ BitVec 64) Int) Unit!6529)

(assert (=> b!218997 (= lt!111752 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!202 (_keys!6186 thiss!1504) (_values!4119 thiss!1504) (mask!9919 thiss!1504) (extraKeys!3873 thiss!1504) (zeroValue!3977 thiss!1504) (minValue!3977 thiss!1504) key!932 (defaultEntry!4136 thiss!1504)))))

(assert (=> b!218997 (= c!36425 (is-MissingZero!806 lt!111753))))

(assert (=> b!218997 e!142479))

(declare-fun b!218998 () Bool)

(assert (=> b!218998 (= e!142481 (not call!20461))))

(declare-fun b!218999 () Bool)

(assert (=> b!218999 (= e!142480 tp_is_empty!5753)))

(declare-fun bm!20458 () Bool)

(declare-fun arrayContainsKey!0 (array!10748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20458 (= call!20461 (arrayContainsKey!0 (_keys!6186 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219000 () Bool)

(assert (=> b!219000 (= e!142486 e!142488)))

(declare-fun res!107357 () Bool)

(assert (=> b!219000 (=> (not res!107357) (not e!142488))))

(assert (=> b!219000 (= res!107357 (or (= lt!111753 (MissingZero!806 index!297)) (= lt!111753 (MissingVacant!806 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10748 (_ BitVec 32)) SeekEntryResult!806)

(assert (=> b!219000 (= lt!111753 (seekEntryOrOpen!0 key!932 (_keys!6186 thiss!1504) (mask!9919 thiss!1504)))))

(declare-fun b!219001 () Bool)

(declare-fun e!142485 () Bool)

(assert (=> b!219001 (= e!142484 (and e!142485 mapRes!9795))))

(declare-fun condMapEmpty!9795 () Bool)

(declare-fun mapDefault!9795 () ValueCell!2533)

