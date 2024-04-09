; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18450 () Bool)

(assert start!18450)

(declare-fun b!182889 () Bool)

(declare-fun b_free!4515 () Bool)

(declare-fun b_next!4515 () Bool)

(assert (=> b!182889 (= b_free!4515 (not b_next!4515))))

(declare-fun tp!16310 () Bool)

(declare-fun b_and!11099 () Bool)

(assert (=> b!182889 (= tp!16310 b_and!11099)))

(declare-fun b!182883 () Bool)

(declare-fun res!86595 () Bool)

(declare-fun e!120421 () Bool)

(assert (=> b!182883 (=> (not res!86595) (not e!120421))))

(declare-datatypes ((V!5363 0))(
  ( (V!5364 (val!2188 Int)) )
))
(declare-datatypes ((ValueCell!1800 0))(
  ( (ValueCellFull!1800 (v!4085 V!5363)) (EmptyCell!1800) )
))
(declare-datatypes ((array!7762 0))(
  ( (array!7763 (arr!3670 (Array (_ BitVec 32) (_ BitVec 64))) (size!3982 (_ BitVec 32))) )
))
(declare-datatypes ((array!7764 0))(
  ( (array!7765 (arr!3671 (Array (_ BitVec 32) ValueCell!1800)) (size!3983 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2508 0))(
  ( (LongMapFixedSize!2509 (defaultEntry!3742 Int) (mask!8795 (_ BitVec 32)) (extraKeys!3479 (_ BitVec 32)) (zeroValue!3583 V!5363) (minValue!3583 V!5363) (_size!1303 (_ BitVec 32)) (_keys!5657 array!7762) (_values!3725 array!7764) (_vacant!1303 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2508)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3406 0))(
  ( (tuple2!3407 (_1!1713 (_ BitVec 64)) (_2!1713 V!5363)) )
))
(declare-datatypes ((List!2349 0))(
  ( (Nil!2346) (Cons!2345 (h!2974 tuple2!3406) (t!7221 List!2349)) )
))
(declare-datatypes ((ListLongMap!2337 0))(
  ( (ListLongMap!2338 (toList!1184 List!2349)) )
))
(declare-fun contains!1263 (ListLongMap!2337 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!827 (array!7762 array!7764 (_ BitVec 32) (_ BitVec 32) V!5363 V!5363 (_ BitVec 32) Int) ListLongMap!2337)

(assert (=> b!182883 (= res!86595 (contains!1263 (getCurrentListMap!827 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)) key!828))))

(declare-fun b!182884 () Bool)

(declare-fun res!86594 () Bool)

(assert (=> b!182884 (=> (not res!86594) (not e!120421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182884 (= res!86594 (validMask!0 (mask!8795 thiss!1248)))))

(declare-fun mapIsEmpty!7358 () Bool)

(declare-fun mapRes!7358 () Bool)

(assert (=> mapIsEmpty!7358 mapRes!7358))

(declare-fun b!182885 () Bool)

(declare-fun e!120420 () Bool)

(declare-fun tp_is_empty!4287 () Bool)

(assert (=> b!182885 (= e!120420 tp_is_empty!4287)))

(declare-fun res!86597 () Bool)

(declare-fun e!120416 () Bool)

(assert (=> start!18450 (=> (not res!86597) (not e!120416))))

(declare-fun valid!1031 (LongMapFixedSize!2508) Bool)

(assert (=> start!18450 (= res!86597 (valid!1031 thiss!1248))))

(assert (=> start!18450 e!120416))

(declare-fun e!120417 () Bool)

(assert (=> start!18450 e!120417))

(assert (=> start!18450 true))

(declare-fun b!182886 () Bool)

(declare-fun e!120415 () Bool)

(declare-fun e!120418 () Bool)

(assert (=> b!182886 (= e!120415 (and e!120418 mapRes!7358))))

(declare-fun condMapEmpty!7358 () Bool)

(declare-fun mapDefault!7358 () ValueCell!1800)

(assert (=> b!182886 (= condMapEmpty!7358 (= (arr!3671 (_values!3725 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1800)) mapDefault!7358)))))

(declare-fun b!182887 () Bool)

(declare-fun res!86596 () Bool)

(assert (=> b!182887 (=> (not res!86596) (not e!120421))))

(declare-datatypes ((List!2350 0))(
  ( (Nil!2347) (Cons!2346 (h!2975 (_ BitVec 64)) (t!7222 List!2350)) )
))
(declare-fun arrayNoDuplicates!0 (array!7762 (_ BitVec 32) List!2350) Bool)

(assert (=> b!182887 (= res!86596 (arrayNoDuplicates!0 (_keys!5657 thiss!1248) #b00000000000000000000000000000000 Nil!2347))))

(declare-fun b!182888 () Bool)

(declare-fun res!86593 () Bool)

(assert (=> b!182888 (=> (not res!86593) (not e!120416))))

(assert (=> b!182888 (= res!86593 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!2363 (array!7762) Bool)

(declare-fun array_inv!2364 (array!7764) Bool)

(assert (=> b!182889 (= e!120417 (and tp!16310 tp_is_empty!4287 (array_inv!2363 (_keys!5657 thiss!1248)) (array_inv!2364 (_values!3725 thiss!1248)) e!120415))))

(declare-fun b!182890 () Bool)

(declare-fun res!86591 () Bool)

(assert (=> b!182890 (=> (not res!86591) (not e!120421))))

(assert (=> b!182890 (= res!86591 (and (= (size!3983 (_values!3725 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8795 thiss!1248))) (= (size!3982 (_keys!5657 thiss!1248)) (size!3983 (_values!3725 thiss!1248))) (bvsge (mask!8795 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3479 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3479 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7358 () Bool)

(declare-fun tp!16309 () Bool)

(assert (=> mapNonEmpty!7358 (= mapRes!7358 (and tp!16309 e!120420))))

(declare-fun mapKey!7358 () (_ BitVec 32))

(declare-fun mapValue!7358 () ValueCell!1800)

(declare-fun mapRest!7358 () (Array (_ BitVec 32) ValueCell!1800))

(assert (=> mapNonEmpty!7358 (= (arr!3671 (_values!3725 thiss!1248)) (store mapRest!7358 mapKey!7358 mapValue!7358))))

(declare-fun b!182891 () Bool)

(assert (=> b!182891 (= e!120416 e!120421)))

(declare-fun res!86592 () Bool)

(assert (=> b!182891 (=> (not res!86592) (not e!120421))))

(declare-datatypes ((SeekEntryResult!624 0))(
  ( (MissingZero!624 (index!4666 (_ BitVec 32))) (Found!624 (index!4667 (_ BitVec 32))) (Intermediate!624 (undefined!1436 Bool) (index!4668 (_ BitVec 32)) (x!19942 (_ BitVec 32))) (Undefined!624) (MissingVacant!624 (index!4669 (_ BitVec 32))) )
))
(declare-fun lt!90443 () SeekEntryResult!624)

(get-info :version)

(assert (=> b!182891 (= res!86592 (and (not ((_ is Undefined!624) lt!90443)) (not ((_ is MissingVacant!624) lt!90443)) (not ((_ is MissingZero!624) lt!90443)) ((_ is Found!624) lt!90443)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7762 (_ BitVec 32)) SeekEntryResult!624)

(assert (=> b!182891 (= lt!90443 (seekEntryOrOpen!0 key!828 (_keys!5657 thiss!1248) (mask!8795 thiss!1248)))))

(declare-fun b!182892 () Bool)

(assert (=> b!182892 (= e!120418 tp_is_empty!4287)))

(declare-fun b!182893 () Bool)

(declare-fun res!86598 () Bool)

(assert (=> b!182893 (=> (not res!86598) (not e!120421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7762 (_ BitVec 32)) Bool)

(assert (=> b!182893 (= res!86598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5657 thiss!1248) (mask!8795 thiss!1248)))))

(declare-fun b!182894 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!182894 (= e!120421 (not (validKeyInArray!0 key!828)))))

(assert (= (and start!18450 res!86597) b!182888))

(assert (= (and b!182888 res!86593) b!182891))

(assert (= (and b!182891 res!86592) b!182883))

(assert (= (and b!182883 res!86595) b!182884))

(assert (= (and b!182884 res!86594) b!182890))

(assert (= (and b!182890 res!86591) b!182893))

(assert (= (and b!182893 res!86598) b!182887))

(assert (= (and b!182887 res!86596) b!182894))

(assert (= (and b!182886 condMapEmpty!7358) mapIsEmpty!7358))

(assert (= (and b!182886 (not condMapEmpty!7358)) mapNonEmpty!7358))

(assert (= (and mapNonEmpty!7358 ((_ is ValueCellFull!1800) mapValue!7358)) b!182885))

(assert (= (and b!182886 ((_ is ValueCellFull!1800) mapDefault!7358)) b!182892))

(assert (= b!182889 b!182886))

(assert (= start!18450 b!182889))

(declare-fun m!210529 () Bool)

(assert (=> b!182884 m!210529))

(declare-fun m!210531 () Bool)

(assert (=> b!182894 m!210531))

(declare-fun m!210533 () Bool)

(assert (=> b!182883 m!210533))

(assert (=> b!182883 m!210533))

(declare-fun m!210535 () Bool)

(assert (=> b!182883 m!210535))

(declare-fun m!210537 () Bool)

(assert (=> mapNonEmpty!7358 m!210537))

(declare-fun m!210539 () Bool)

(assert (=> b!182889 m!210539))

(declare-fun m!210541 () Bool)

(assert (=> b!182889 m!210541))

(declare-fun m!210543 () Bool)

(assert (=> start!18450 m!210543))

(declare-fun m!210545 () Bool)

(assert (=> b!182887 m!210545))

(declare-fun m!210547 () Bool)

(assert (=> b!182891 m!210547))

(declare-fun m!210549 () Bool)

(assert (=> b!182893 m!210549))

(check-sat tp_is_empty!4287 (not b!182887) (not start!18450) (not b!182883) (not b!182894) (not b!182889) b_and!11099 (not b!182884) (not b_next!4515) (not mapNonEmpty!7358) (not b!182893) (not b!182891))
(check-sat b_and!11099 (not b_next!4515))
(get-model)

(declare-fun d!54581 () Bool)

(assert (=> d!54581 (= (validKeyInArray!0 key!828) (and (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!182894 d!54581))

(declare-fun d!54583 () Bool)

(declare-fun res!86629 () Bool)

(declare-fun e!120445 () Bool)

(assert (=> d!54583 (=> (not res!86629) (not e!120445))))

(declare-fun simpleValid!172 (LongMapFixedSize!2508) Bool)

(assert (=> d!54583 (= res!86629 (simpleValid!172 thiss!1248))))

(assert (=> d!54583 (= (valid!1031 thiss!1248) e!120445)))

(declare-fun b!182937 () Bool)

(declare-fun res!86630 () Bool)

(assert (=> b!182937 (=> (not res!86630) (not e!120445))))

(declare-fun arrayCountValidKeys!0 (array!7762 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!182937 (= res!86630 (= (arrayCountValidKeys!0 (_keys!5657 thiss!1248) #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))) (_size!1303 thiss!1248)))))

(declare-fun b!182938 () Bool)

(declare-fun res!86631 () Bool)

(assert (=> b!182938 (=> (not res!86631) (not e!120445))))

(assert (=> b!182938 (= res!86631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5657 thiss!1248) (mask!8795 thiss!1248)))))

(declare-fun b!182939 () Bool)

(assert (=> b!182939 (= e!120445 (arrayNoDuplicates!0 (_keys!5657 thiss!1248) #b00000000000000000000000000000000 Nil!2347))))

(assert (= (and d!54583 res!86629) b!182937))

(assert (= (and b!182937 res!86630) b!182938))

(assert (= (and b!182938 res!86631) b!182939))

(declare-fun m!210573 () Bool)

(assert (=> d!54583 m!210573))

(declare-fun m!210575 () Bool)

(assert (=> b!182937 m!210575))

(assert (=> b!182938 m!210549))

(assert (=> b!182939 m!210545))

(assert (=> start!18450 d!54583))

(declare-fun d!54585 () Bool)

(declare-fun e!120450 () Bool)

(assert (=> d!54585 e!120450))

(declare-fun res!86634 () Bool)

(assert (=> d!54585 (=> res!86634 e!120450)))

(declare-fun lt!90457 () Bool)

(assert (=> d!54585 (= res!86634 (not lt!90457))))

(declare-fun lt!90456 () Bool)

(assert (=> d!54585 (= lt!90457 lt!90456)))

(declare-datatypes ((Unit!5537 0))(
  ( (Unit!5538) )
))
(declare-fun lt!90458 () Unit!5537)

(declare-fun e!120451 () Unit!5537)

(assert (=> d!54585 (= lt!90458 e!120451)))

(declare-fun c!32765 () Bool)

(assert (=> d!54585 (= c!32765 lt!90456)))

(declare-fun containsKey!217 (List!2349 (_ BitVec 64)) Bool)

(assert (=> d!54585 (= lt!90456 (containsKey!217 (toList!1184 (getCurrentListMap!827 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248))) key!828))))

(assert (=> d!54585 (= (contains!1263 (getCurrentListMap!827 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)) key!828) lt!90457)))

(declare-fun b!182946 () Bool)

(declare-fun lt!90455 () Unit!5537)

(assert (=> b!182946 (= e!120451 lt!90455)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!166 (List!2349 (_ BitVec 64)) Unit!5537)

(assert (=> b!182946 (= lt!90455 (lemmaContainsKeyImpliesGetValueByKeyDefined!166 (toList!1184 (getCurrentListMap!827 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248))) key!828))))

(declare-datatypes ((Option!219 0))(
  ( (Some!218 (v!4087 V!5363)) (None!217) )
))
(declare-fun isDefined!167 (Option!219) Bool)

(declare-fun getValueByKey!213 (List!2349 (_ BitVec 64)) Option!219)

(assert (=> b!182946 (isDefined!167 (getValueByKey!213 (toList!1184 (getCurrentListMap!827 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248))) key!828))))

(declare-fun b!182947 () Bool)

(declare-fun Unit!5539 () Unit!5537)

(assert (=> b!182947 (= e!120451 Unit!5539)))

(declare-fun b!182948 () Bool)

(assert (=> b!182948 (= e!120450 (isDefined!167 (getValueByKey!213 (toList!1184 (getCurrentListMap!827 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248))) key!828)))))

(assert (= (and d!54585 c!32765) b!182946))

(assert (= (and d!54585 (not c!32765)) b!182947))

(assert (= (and d!54585 (not res!86634)) b!182948))

(declare-fun m!210577 () Bool)

(assert (=> d!54585 m!210577))

(declare-fun m!210579 () Bool)

(assert (=> b!182946 m!210579))

(declare-fun m!210581 () Bool)

(assert (=> b!182946 m!210581))

(assert (=> b!182946 m!210581))

(declare-fun m!210583 () Bool)

(assert (=> b!182946 m!210583))

(assert (=> b!182948 m!210581))

(assert (=> b!182948 m!210581))

(assert (=> b!182948 m!210583))

(assert (=> b!182883 d!54585))

(declare-fun bm!18470 () Bool)

(declare-fun call!18475 () Bool)

(declare-fun lt!90513 () ListLongMap!2337)

(assert (=> bm!18470 (= call!18475 (contains!1263 lt!90513 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182991 () Bool)

(declare-fun e!120482 () Bool)

(declare-fun apply!157 (ListLongMap!2337 (_ BitVec 64)) V!5363)

(assert (=> b!182991 (= e!120482 (= (apply!157 lt!90513 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3583 thiss!1248)))))

(declare-fun bm!18471 () Bool)

(declare-fun call!18474 () ListLongMap!2337)

(declare-fun call!18476 () ListLongMap!2337)

(assert (=> bm!18471 (= call!18474 call!18476)))

(declare-fun b!182992 () Bool)

(declare-fun c!32780 () Bool)

(assert (=> b!182992 (= c!32780 (and (not (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!120490 () ListLongMap!2337)

(declare-fun e!120480 () ListLongMap!2337)

(assert (=> b!182992 (= e!120490 e!120480)))

(declare-fun b!182993 () Bool)

(declare-fun e!120486 () Bool)

(assert (=> b!182993 (= e!120486 (validKeyInArray!0 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182994 () Bool)

(declare-fun e!120478 () Bool)

(declare-fun call!18479 () Bool)

(assert (=> b!182994 (= e!120478 (not call!18479))))

(declare-fun b!182995 () Bool)

(declare-fun res!86659 () Bool)

(declare-fun e!120488 () Bool)

(assert (=> b!182995 (=> (not res!86659) (not e!120488))))

(declare-fun e!120487 () Bool)

(assert (=> b!182995 (= res!86659 e!120487)))

(declare-fun res!86661 () Bool)

(assert (=> b!182995 (=> res!86661 e!120487)))

(declare-fun e!120481 () Bool)

(assert (=> b!182995 (= res!86661 (not e!120481))))

(declare-fun res!86656 () Bool)

(assert (=> b!182995 (=> (not res!86656) (not e!120481))))

(assert (=> b!182995 (= res!86656 (bvslt #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))))))

(declare-fun b!182996 () Bool)

(declare-fun call!18478 () ListLongMap!2337)

(assert (=> b!182996 (= e!120480 call!18478)))

(declare-fun bm!18472 () Bool)

(declare-fun call!18477 () ListLongMap!2337)

(assert (=> bm!18472 (= call!18478 call!18477)))

(declare-fun b!182998 () Bool)

(declare-fun e!120489 () Bool)

(assert (=> b!182998 (= e!120489 (= (apply!157 lt!90513 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3583 thiss!1248)))))

(declare-fun bm!18473 () Bool)

(assert (=> bm!18473 (= call!18479 (contains!1263 lt!90513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182999 () Bool)

(declare-fun e!120485 () Bool)

(assert (=> b!182999 (= e!120485 (not call!18475))))

(declare-fun b!183000 () Bool)

(assert (=> b!183000 (= e!120490 call!18478)))

(declare-fun b!183001 () Bool)

(assert (=> b!183001 (= e!120478 e!120489)))

(declare-fun res!86654 () Bool)

(assert (=> b!183001 (= res!86654 call!18479)))

(assert (=> b!183001 (=> (not res!86654) (not e!120489))))

(declare-fun b!183002 () Bool)

(declare-fun e!120483 () Bool)

(declare-fun get!2103 (ValueCell!1800 V!5363) V!5363)

(declare-fun dynLambda!495 (Int (_ BitVec 64)) V!5363)

(assert (=> b!183002 (= e!120483 (= (apply!157 lt!90513 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)) (get!2103 (select (arr!3671 (_values!3725 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!495 (defaultEntry!3742 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!183002 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3983 (_values!3725 thiss!1248))))))

(assert (=> b!183002 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))))))

(declare-fun bm!18474 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!187 (array!7762 array!7764 (_ BitVec 32) (_ BitVec 32) V!5363 V!5363 (_ BitVec 32) Int) ListLongMap!2337)

(assert (=> bm!18474 (= call!18476 (getCurrentListMapNoExtraKeys!187 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)))))

(declare-fun b!183003 () Bool)

(assert (=> b!183003 (= e!120485 e!120482)))

(declare-fun res!86658 () Bool)

(assert (=> b!183003 (= res!86658 call!18475)))

(assert (=> b!183003 (=> (not res!86658) (not e!120482))))

(declare-fun b!183004 () Bool)

(assert (=> b!183004 (= e!120481 (validKeyInArray!0 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183005 () Bool)

(assert (=> b!183005 (= e!120488 e!120485)))

(declare-fun c!32782 () Bool)

(assert (=> b!183005 (= c!32782 (not (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!183006 () Bool)

(declare-fun e!120479 () ListLongMap!2337)

(assert (=> b!183006 (= e!120479 e!120490)))

(declare-fun c!32783 () Bool)

(assert (=> b!183006 (= c!32783 (and (not (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!183007 () Bool)

(assert (=> b!183007 (= e!120487 e!120483)))

(declare-fun res!86660 () Bool)

(assert (=> b!183007 (=> (not res!86660) (not e!120483))))

(assert (=> b!183007 (= res!86660 (contains!1263 lt!90513 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))))))

(declare-fun d!54587 () Bool)

(assert (=> d!54587 e!120488))

(declare-fun res!86655 () Bool)

(assert (=> d!54587 (=> (not res!86655) (not e!120488))))

(assert (=> d!54587 (= res!86655 (or (bvsge #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))))))))

(declare-fun lt!90508 () ListLongMap!2337)

(assert (=> d!54587 (= lt!90513 lt!90508)))

(declare-fun lt!90520 () Unit!5537)

(declare-fun e!120484 () Unit!5537)

(assert (=> d!54587 (= lt!90520 e!120484)))

(declare-fun c!32778 () Bool)

(assert (=> d!54587 (= c!32778 e!120486)))

(declare-fun res!86657 () Bool)

(assert (=> d!54587 (=> (not res!86657) (not e!120486))))

(assert (=> d!54587 (= res!86657 (bvslt #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))))))

(assert (=> d!54587 (= lt!90508 e!120479)))

(declare-fun c!32779 () Bool)

(assert (=> d!54587 (= c!32779 (and (not (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54587 (validMask!0 (mask!8795 thiss!1248))))

(assert (=> d!54587 (= (getCurrentListMap!827 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)) lt!90513)))

(declare-fun b!182997 () Bool)

(declare-fun lt!90524 () Unit!5537)

(assert (=> b!182997 (= e!120484 lt!90524)))

(declare-fun lt!90521 () ListLongMap!2337)

(assert (=> b!182997 (= lt!90521 (getCurrentListMapNoExtraKeys!187 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)))))

(declare-fun lt!90519 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90519 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90514 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90514 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90518 () Unit!5537)

(declare-fun addStillContains!133 (ListLongMap!2337 (_ BitVec 64) V!5363 (_ BitVec 64)) Unit!5537)

(assert (=> b!182997 (= lt!90518 (addStillContains!133 lt!90521 lt!90519 (zeroValue!3583 thiss!1248) lt!90514))))

(declare-fun +!272 (ListLongMap!2337 tuple2!3406) ListLongMap!2337)

(assert (=> b!182997 (contains!1263 (+!272 lt!90521 (tuple2!3407 lt!90519 (zeroValue!3583 thiss!1248))) lt!90514)))

(declare-fun lt!90505 () Unit!5537)

(assert (=> b!182997 (= lt!90505 lt!90518)))

(declare-fun lt!90515 () ListLongMap!2337)

(assert (=> b!182997 (= lt!90515 (getCurrentListMapNoExtraKeys!187 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)))))

(declare-fun lt!90512 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90512 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90522 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90522 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90510 () Unit!5537)

(declare-fun addApplyDifferent!133 (ListLongMap!2337 (_ BitVec 64) V!5363 (_ BitVec 64)) Unit!5537)

(assert (=> b!182997 (= lt!90510 (addApplyDifferent!133 lt!90515 lt!90512 (minValue!3583 thiss!1248) lt!90522))))

(assert (=> b!182997 (= (apply!157 (+!272 lt!90515 (tuple2!3407 lt!90512 (minValue!3583 thiss!1248))) lt!90522) (apply!157 lt!90515 lt!90522))))

(declare-fun lt!90511 () Unit!5537)

(assert (=> b!182997 (= lt!90511 lt!90510)))

(declare-fun lt!90509 () ListLongMap!2337)

(assert (=> b!182997 (= lt!90509 (getCurrentListMapNoExtraKeys!187 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)))))

(declare-fun lt!90516 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90516 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90507 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90507 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90523 () Unit!5537)

(assert (=> b!182997 (= lt!90523 (addApplyDifferent!133 lt!90509 lt!90516 (zeroValue!3583 thiss!1248) lt!90507))))

(assert (=> b!182997 (= (apply!157 (+!272 lt!90509 (tuple2!3407 lt!90516 (zeroValue!3583 thiss!1248))) lt!90507) (apply!157 lt!90509 lt!90507))))

(declare-fun lt!90503 () Unit!5537)

(assert (=> b!182997 (= lt!90503 lt!90523)))

(declare-fun lt!90506 () ListLongMap!2337)

(assert (=> b!182997 (= lt!90506 (getCurrentListMapNoExtraKeys!187 (_keys!5657 thiss!1248) (_values!3725 thiss!1248) (mask!8795 thiss!1248) (extraKeys!3479 thiss!1248) (zeroValue!3583 thiss!1248) (minValue!3583 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3742 thiss!1248)))))

(declare-fun lt!90504 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90504 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90517 () (_ BitVec 64))

(assert (=> b!182997 (= lt!90517 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182997 (= lt!90524 (addApplyDifferent!133 lt!90506 lt!90504 (minValue!3583 thiss!1248) lt!90517))))

(assert (=> b!182997 (= (apply!157 (+!272 lt!90506 (tuple2!3407 lt!90504 (minValue!3583 thiss!1248))) lt!90517) (apply!157 lt!90506 lt!90517))))

(declare-fun call!18473 () ListLongMap!2337)

(declare-fun bm!18475 () Bool)

(assert (=> bm!18475 (= call!18477 (+!272 (ite c!32779 call!18476 (ite c!32783 call!18474 call!18473)) (ite (or c!32779 c!32783) (tuple2!3407 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3583 thiss!1248)) (tuple2!3407 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3583 thiss!1248)))))))

(declare-fun b!183008 () Bool)

(declare-fun res!86653 () Bool)

(assert (=> b!183008 (=> (not res!86653) (not e!120488))))

(assert (=> b!183008 (= res!86653 e!120478)))

(declare-fun c!32781 () Bool)

(assert (=> b!183008 (= c!32781 (not (= (bvand (extraKeys!3479 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!183009 () Bool)

(assert (=> b!183009 (= e!120479 (+!272 call!18477 (tuple2!3407 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3583 thiss!1248))))))

(declare-fun bm!18476 () Bool)

(assert (=> bm!18476 (= call!18473 call!18474)))

(declare-fun b!183010 () Bool)

(assert (=> b!183010 (= e!120480 call!18473)))

(declare-fun b!183011 () Bool)

(declare-fun Unit!5540 () Unit!5537)

(assert (=> b!183011 (= e!120484 Unit!5540)))

(assert (= (and d!54587 c!32779) b!183009))

(assert (= (and d!54587 (not c!32779)) b!183006))

(assert (= (and b!183006 c!32783) b!183000))

(assert (= (and b!183006 (not c!32783)) b!182992))

(assert (= (and b!182992 c!32780) b!182996))

(assert (= (and b!182992 (not c!32780)) b!183010))

(assert (= (or b!182996 b!183010) bm!18476))

(assert (= (or b!183000 bm!18476) bm!18471))

(assert (= (or b!183000 b!182996) bm!18472))

(assert (= (or b!183009 bm!18471) bm!18474))

(assert (= (or b!183009 bm!18472) bm!18475))

(assert (= (and d!54587 res!86657) b!182993))

(assert (= (and d!54587 c!32778) b!182997))

(assert (= (and d!54587 (not c!32778)) b!183011))

(assert (= (and d!54587 res!86655) b!182995))

(assert (= (and b!182995 res!86656) b!183004))

(assert (= (and b!182995 (not res!86661)) b!183007))

(assert (= (and b!183007 res!86660) b!183002))

(assert (= (and b!182995 res!86659) b!183008))

(assert (= (and b!183008 c!32781) b!183001))

(assert (= (and b!183008 (not c!32781)) b!182994))

(assert (= (and b!183001 res!86654) b!182998))

(assert (= (or b!183001 b!182994) bm!18473))

(assert (= (and b!183008 res!86653) b!183005))

(assert (= (and b!183005 c!32782) b!183003))

(assert (= (and b!183005 (not c!32782)) b!182999))

(assert (= (and b!183003 res!86658) b!182991))

(assert (= (or b!183003 b!182999) bm!18470))

(declare-fun b_lambda!7213 () Bool)

(assert (=> (not b_lambda!7213) (not b!183002)))

(declare-fun t!7226 () Bool)

(declare-fun tb!2833 () Bool)

(assert (=> (and b!182889 (= (defaultEntry!3742 thiss!1248) (defaultEntry!3742 thiss!1248)) t!7226) tb!2833))

(declare-fun result!4761 () Bool)

(assert (=> tb!2833 (= result!4761 tp_is_empty!4287)))

(assert (=> b!183002 t!7226))

(declare-fun b_and!11103 () Bool)

(assert (= b_and!11099 (and (=> t!7226 result!4761) b_and!11103)))

(declare-fun m!210585 () Bool)

(assert (=> b!183007 m!210585))

(assert (=> b!183007 m!210585))

(declare-fun m!210587 () Bool)

(assert (=> b!183007 m!210587))

(assert (=> b!183004 m!210585))

(assert (=> b!183004 m!210585))

(declare-fun m!210589 () Bool)

(assert (=> b!183004 m!210589))

(assert (=> b!182993 m!210585))

(assert (=> b!182993 m!210585))

(assert (=> b!182993 m!210589))

(declare-fun m!210591 () Bool)

(assert (=> bm!18473 m!210591))

(declare-fun m!210593 () Bool)

(assert (=> b!182991 m!210593))

(declare-fun m!210595 () Bool)

(assert (=> b!182998 m!210595))

(assert (=> d!54587 m!210529))

(declare-fun m!210597 () Bool)

(assert (=> bm!18470 m!210597))

(declare-fun m!210599 () Bool)

(assert (=> b!183009 m!210599))

(declare-fun m!210601 () Bool)

(assert (=> bm!18475 m!210601))

(declare-fun m!210603 () Bool)

(assert (=> b!182997 m!210603))

(declare-fun m!210605 () Bool)

(assert (=> b!182997 m!210605))

(declare-fun m!210607 () Bool)

(assert (=> b!182997 m!210607))

(declare-fun m!210609 () Bool)

(assert (=> b!182997 m!210609))

(declare-fun m!210611 () Bool)

(assert (=> b!182997 m!210611))

(declare-fun m!210613 () Bool)

(assert (=> b!182997 m!210613))

(declare-fun m!210615 () Bool)

(assert (=> b!182997 m!210615))

(declare-fun m!210617 () Bool)

(assert (=> b!182997 m!210617))

(declare-fun m!210619 () Bool)

(assert (=> b!182997 m!210619))

(declare-fun m!210621 () Bool)

(assert (=> b!182997 m!210621))

(assert (=> b!182997 m!210617))

(declare-fun m!210623 () Bool)

(assert (=> b!182997 m!210623))

(assert (=> b!182997 m!210585))

(declare-fun m!210625 () Bool)

(assert (=> b!182997 m!210625))

(declare-fun m!210627 () Bool)

(assert (=> b!182997 m!210627))

(assert (=> b!182997 m!210621))

(declare-fun m!210629 () Bool)

(assert (=> b!182997 m!210629))

(assert (=> b!182997 m!210605))

(assert (=> b!182997 m!210613))

(declare-fun m!210631 () Bool)

(assert (=> b!182997 m!210631))

(declare-fun m!210633 () Bool)

(assert (=> b!182997 m!210633))

(assert (=> bm!18474 m!210603))

(declare-fun m!210635 () Bool)

(assert (=> b!183002 m!210635))

(declare-fun m!210637 () Bool)

(assert (=> b!183002 m!210637))

(assert (=> b!183002 m!210585))

(declare-fun m!210639 () Bool)

(assert (=> b!183002 m!210639))

(assert (=> b!183002 m!210585))

(assert (=> b!183002 m!210637))

(assert (=> b!183002 m!210635))

(declare-fun m!210641 () Bool)

(assert (=> b!183002 m!210641))

(assert (=> b!182883 d!54587))

(declare-fun b!183026 () Bool)

(declare-fun e!120499 () SeekEntryResult!624)

(declare-fun e!120498 () SeekEntryResult!624)

(assert (=> b!183026 (= e!120499 e!120498)))

(declare-fun lt!90532 () (_ BitVec 64))

(declare-fun lt!90531 () SeekEntryResult!624)

(assert (=> b!183026 (= lt!90532 (select (arr!3670 (_keys!5657 thiss!1248)) (index!4668 lt!90531)))))

(declare-fun c!32790 () Bool)

(assert (=> b!183026 (= c!32790 (= lt!90532 key!828))))

(declare-fun b!183027 () Bool)

(declare-fun c!32791 () Bool)

(assert (=> b!183027 (= c!32791 (= lt!90532 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!120497 () SeekEntryResult!624)

(assert (=> b!183027 (= e!120498 e!120497)))

(declare-fun b!183028 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7762 (_ BitVec 32)) SeekEntryResult!624)

(assert (=> b!183028 (= e!120497 (seekKeyOrZeroReturnVacant!0 (x!19942 lt!90531) (index!4668 lt!90531) (index!4668 lt!90531) key!828 (_keys!5657 thiss!1248) (mask!8795 thiss!1248)))))

(declare-fun d!54589 () Bool)

(declare-fun lt!90533 () SeekEntryResult!624)

(assert (=> d!54589 (and (or ((_ is Undefined!624) lt!90533) (not ((_ is Found!624) lt!90533)) (and (bvsge (index!4667 lt!90533) #b00000000000000000000000000000000) (bvslt (index!4667 lt!90533) (size!3982 (_keys!5657 thiss!1248))))) (or ((_ is Undefined!624) lt!90533) ((_ is Found!624) lt!90533) (not ((_ is MissingZero!624) lt!90533)) (and (bvsge (index!4666 lt!90533) #b00000000000000000000000000000000) (bvslt (index!4666 lt!90533) (size!3982 (_keys!5657 thiss!1248))))) (or ((_ is Undefined!624) lt!90533) ((_ is Found!624) lt!90533) ((_ is MissingZero!624) lt!90533) (not ((_ is MissingVacant!624) lt!90533)) (and (bvsge (index!4669 lt!90533) #b00000000000000000000000000000000) (bvslt (index!4669 lt!90533) (size!3982 (_keys!5657 thiss!1248))))) (or ((_ is Undefined!624) lt!90533) (ite ((_ is Found!624) lt!90533) (= (select (arr!3670 (_keys!5657 thiss!1248)) (index!4667 lt!90533)) key!828) (ite ((_ is MissingZero!624) lt!90533) (= (select (arr!3670 (_keys!5657 thiss!1248)) (index!4666 lt!90533)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!624) lt!90533) (= (select (arr!3670 (_keys!5657 thiss!1248)) (index!4669 lt!90533)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54589 (= lt!90533 e!120499)))

(declare-fun c!32792 () Bool)

(assert (=> d!54589 (= c!32792 (and ((_ is Intermediate!624) lt!90531) (undefined!1436 lt!90531)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7762 (_ BitVec 32)) SeekEntryResult!624)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54589 (= lt!90531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8795 thiss!1248)) key!828 (_keys!5657 thiss!1248) (mask!8795 thiss!1248)))))

(assert (=> d!54589 (validMask!0 (mask!8795 thiss!1248))))

(assert (=> d!54589 (= (seekEntryOrOpen!0 key!828 (_keys!5657 thiss!1248) (mask!8795 thiss!1248)) lt!90533)))

(declare-fun b!183029 () Bool)

(assert (=> b!183029 (= e!120499 Undefined!624)))

(declare-fun b!183030 () Bool)

(assert (=> b!183030 (= e!120497 (MissingZero!624 (index!4668 lt!90531)))))

(declare-fun b!183031 () Bool)

(assert (=> b!183031 (= e!120498 (Found!624 (index!4668 lt!90531)))))

(assert (= (and d!54589 c!32792) b!183029))

(assert (= (and d!54589 (not c!32792)) b!183026))

(assert (= (and b!183026 c!32790) b!183031))

(assert (= (and b!183026 (not c!32790)) b!183027))

(assert (= (and b!183027 c!32791) b!183030))

(assert (= (and b!183027 (not c!32791)) b!183028))

(declare-fun m!210643 () Bool)

(assert (=> b!183026 m!210643))

(declare-fun m!210645 () Bool)

(assert (=> b!183028 m!210645))

(declare-fun m!210647 () Bool)

(assert (=> d!54589 m!210647))

(assert (=> d!54589 m!210529))

(declare-fun m!210649 () Bool)

(assert (=> d!54589 m!210649))

(declare-fun m!210651 () Bool)

(assert (=> d!54589 m!210651))

(declare-fun m!210653 () Bool)

(assert (=> d!54589 m!210653))

(declare-fun m!210655 () Bool)

(assert (=> d!54589 m!210655))

(assert (=> d!54589 m!210653))

(assert (=> b!182891 d!54589))

(declare-fun b!183042 () Bool)

(declare-fun e!120508 () Bool)

(declare-fun call!18482 () Bool)

(assert (=> b!183042 (= e!120508 call!18482)))

(declare-fun b!183043 () Bool)

(declare-fun e!120509 () Bool)

(declare-fun e!120511 () Bool)

(assert (=> b!183043 (= e!120509 e!120511)))

(declare-fun res!86670 () Bool)

(assert (=> b!183043 (=> (not res!86670) (not e!120511))))

(declare-fun e!120510 () Bool)

(assert (=> b!183043 (= res!86670 (not e!120510))))

(declare-fun res!86668 () Bool)

(assert (=> b!183043 (=> (not res!86668) (not e!120510))))

(assert (=> b!183043 (= res!86668 (validKeyInArray!0 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54591 () Bool)

(declare-fun res!86669 () Bool)

(assert (=> d!54591 (=> res!86669 e!120509)))

(assert (=> d!54591 (= res!86669 (bvsge #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))))))

(assert (=> d!54591 (= (arrayNoDuplicates!0 (_keys!5657 thiss!1248) #b00000000000000000000000000000000 Nil!2347) e!120509)))

(declare-fun bm!18479 () Bool)

(declare-fun c!32795 () Bool)

(assert (=> bm!18479 (= call!18482 (arrayNoDuplicates!0 (_keys!5657 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32795 (Cons!2346 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000) Nil!2347) Nil!2347)))))

(declare-fun b!183044 () Bool)

(declare-fun contains!1265 (List!2350 (_ BitVec 64)) Bool)

(assert (=> b!183044 (= e!120510 (contains!1265 Nil!2347 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183045 () Bool)

(assert (=> b!183045 (= e!120511 e!120508)))

(assert (=> b!183045 (= c!32795 (validKeyInArray!0 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183046 () Bool)

(assert (=> b!183046 (= e!120508 call!18482)))

(assert (= (and d!54591 (not res!86669)) b!183043))

(assert (= (and b!183043 res!86668) b!183044))

(assert (= (and b!183043 res!86670) b!183045))

(assert (= (and b!183045 c!32795) b!183042))

(assert (= (and b!183045 (not c!32795)) b!183046))

(assert (= (or b!183042 b!183046) bm!18479))

(assert (=> b!183043 m!210585))

(assert (=> b!183043 m!210585))

(assert (=> b!183043 m!210589))

(assert (=> bm!18479 m!210585))

(declare-fun m!210657 () Bool)

(assert (=> bm!18479 m!210657))

(assert (=> b!183044 m!210585))

(assert (=> b!183044 m!210585))

(declare-fun m!210659 () Bool)

(assert (=> b!183044 m!210659))

(assert (=> b!183045 m!210585))

(assert (=> b!183045 m!210585))

(assert (=> b!183045 m!210589))

(assert (=> b!182887 d!54591))

(declare-fun d!54593 () Bool)

(declare-fun res!86675 () Bool)

(declare-fun e!120519 () Bool)

(assert (=> d!54593 (=> res!86675 e!120519)))

(assert (=> d!54593 (= res!86675 (bvsge #b00000000000000000000000000000000 (size!3982 (_keys!5657 thiss!1248))))))

(assert (=> d!54593 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5657 thiss!1248) (mask!8795 thiss!1248)) e!120519)))

(declare-fun b!183055 () Bool)

(declare-fun e!120520 () Bool)

(declare-fun e!120518 () Bool)

(assert (=> b!183055 (= e!120520 e!120518)))

(declare-fun lt!90542 () (_ BitVec 64))

(assert (=> b!183055 (= lt!90542 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90540 () Unit!5537)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7762 (_ BitVec 64) (_ BitVec 32)) Unit!5537)

(assert (=> b!183055 (= lt!90540 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5657 thiss!1248) lt!90542 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!183055 (arrayContainsKey!0 (_keys!5657 thiss!1248) lt!90542 #b00000000000000000000000000000000)))

(declare-fun lt!90541 () Unit!5537)

(assert (=> b!183055 (= lt!90541 lt!90540)))

(declare-fun res!86676 () Bool)

(assert (=> b!183055 (= res!86676 (= (seekEntryOrOpen!0 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000) (_keys!5657 thiss!1248) (mask!8795 thiss!1248)) (Found!624 #b00000000000000000000000000000000)))))

(assert (=> b!183055 (=> (not res!86676) (not e!120518))))

(declare-fun b!183056 () Bool)

(declare-fun call!18485 () Bool)

(assert (=> b!183056 (= e!120520 call!18485)))

(declare-fun bm!18482 () Bool)

(assert (=> bm!18482 (= call!18485 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5657 thiss!1248) (mask!8795 thiss!1248)))))

(declare-fun b!183057 () Bool)

(assert (=> b!183057 (= e!120519 e!120520)))

(declare-fun c!32798 () Bool)

(assert (=> b!183057 (= c!32798 (validKeyInArray!0 (select (arr!3670 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183058 () Bool)

(assert (=> b!183058 (= e!120518 call!18485)))

(assert (= (and d!54593 (not res!86675)) b!183057))

(assert (= (and b!183057 c!32798) b!183055))

(assert (= (and b!183057 (not c!32798)) b!183056))

(assert (= (and b!183055 res!86676) b!183058))

(assert (= (or b!183058 b!183056) bm!18482))

(assert (=> b!183055 m!210585))

(declare-fun m!210661 () Bool)

(assert (=> b!183055 m!210661))

(declare-fun m!210663 () Bool)

(assert (=> b!183055 m!210663))

(assert (=> b!183055 m!210585))

(declare-fun m!210665 () Bool)

(assert (=> b!183055 m!210665))

(declare-fun m!210667 () Bool)

(assert (=> bm!18482 m!210667))

(assert (=> b!183057 m!210585))

(assert (=> b!183057 m!210585))

(assert (=> b!183057 m!210589))

(assert (=> b!182893 d!54593))

(declare-fun d!54595 () Bool)

(assert (=> d!54595 (= (array_inv!2363 (_keys!5657 thiss!1248)) (bvsge (size!3982 (_keys!5657 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182889 d!54595))

(declare-fun d!54597 () Bool)

(assert (=> d!54597 (= (array_inv!2364 (_values!3725 thiss!1248)) (bvsge (size!3983 (_values!3725 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182889 d!54597))

(declare-fun d!54599 () Bool)

(assert (=> d!54599 (= (validMask!0 (mask!8795 thiss!1248)) (and (or (= (mask!8795 thiss!1248) #b00000000000000000000000000000111) (= (mask!8795 thiss!1248) #b00000000000000000000000000001111) (= (mask!8795 thiss!1248) #b00000000000000000000000000011111) (= (mask!8795 thiss!1248) #b00000000000000000000000000111111) (= (mask!8795 thiss!1248) #b00000000000000000000000001111111) (= (mask!8795 thiss!1248) #b00000000000000000000000011111111) (= (mask!8795 thiss!1248) #b00000000000000000000000111111111) (= (mask!8795 thiss!1248) #b00000000000000000000001111111111) (= (mask!8795 thiss!1248) #b00000000000000000000011111111111) (= (mask!8795 thiss!1248) #b00000000000000000000111111111111) (= (mask!8795 thiss!1248) #b00000000000000000001111111111111) (= (mask!8795 thiss!1248) #b00000000000000000011111111111111) (= (mask!8795 thiss!1248) #b00000000000000000111111111111111) (= (mask!8795 thiss!1248) #b00000000000000001111111111111111) (= (mask!8795 thiss!1248) #b00000000000000011111111111111111) (= (mask!8795 thiss!1248) #b00000000000000111111111111111111) (= (mask!8795 thiss!1248) #b00000000000001111111111111111111) (= (mask!8795 thiss!1248) #b00000000000011111111111111111111) (= (mask!8795 thiss!1248) #b00000000000111111111111111111111) (= (mask!8795 thiss!1248) #b00000000001111111111111111111111) (= (mask!8795 thiss!1248) #b00000000011111111111111111111111) (= (mask!8795 thiss!1248) #b00000000111111111111111111111111) (= (mask!8795 thiss!1248) #b00000001111111111111111111111111) (= (mask!8795 thiss!1248) #b00000011111111111111111111111111) (= (mask!8795 thiss!1248) #b00000111111111111111111111111111) (= (mask!8795 thiss!1248) #b00001111111111111111111111111111) (= (mask!8795 thiss!1248) #b00011111111111111111111111111111) (= (mask!8795 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8795 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!182884 d!54599))

(declare-fun condMapEmpty!7364 () Bool)

(declare-fun mapDefault!7364 () ValueCell!1800)

(assert (=> mapNonEmpty!7358 (= condMapEmpty!7364 (= mapRest!7358 ((as const (Array (_ BitVec 32) ValueCell!1800)) mapDefault!7364)))))

(declare-fun e!120526 () Bool)

(declare-fun mapRes!7364 () Bool)

(assert (=> mapNonEmpty!7358 (= tp!16309 (and e!120526 mapRes!7364))))

(declare-fun b!183066 () Bool)

(assert (=> b!183066 (= e!120526 tp_is_empty!4287)))

(declare-fun mapIsEmpty!7364 () Bool)

(assert (=> mapIsEmpty!7364 mapRes!7364))

(declare-fun b!183065 () Bool)

(declare-fun e!120525 () Bool)

(assert (=> b!183065 (= e!120525 tp_is_empty!4287)))

(declare-fun mapNonEmpty!7364 () Bool)

(declare-fun tp!16319 () Bool)

(assert (=> mapNonEmpty!7364 (= mapRes!7364 (and tp!16319 e!120525))))

(declare-fun mapValue!7364 () ValueCell!1800)

(declare-fun mapRest!7364 () (Array (_ BitVec 32) ValueCell!1800))

(declare-fun mapKey!7364 () (_ BitVec 32))

(assert (=> mapNonEmpty!7364 (= mapRest!7358 (store mapRest!7364 mapKey!7364 mapValue!7364))))

(assert (= (and mapNonEmpty!7358 condMapEmpty!7364) mapIsEmpty!7364))

(assert (= (and mapNonEmpty!7358 (not condMapEmpty!7364)) mapNonEmpty!7364))

(assert (= (and mapNonEmpty!7364 ((_ is ValueCellFull!1800) mapValue!7364)) b!183065))

(assert (= (and mapNonEmpty!7358 ((_ is ValueCellFull!1800) mapDefault!7364)) b!183066))

(declare-fun m!210669 () Bool)

(assert (=> mapNonEmpty!7364 m!210669))

(declare-fun b_lambda!7215 () Bool)

(assert (= b_lambda!7213 (or (and b!182889 b_free!4515) b_lambda!7215)))

(check-sat tp_is_empty!4287 (not b!183004) (not b!183007) (not bm!18479) (not bm!18475) (not b!182946) (not bm!18474) (not b_lambda!7215) (not mapNonEmpty!7364) (not b!182948) (not b!182997) (not b!182939) (not b!182937) (not b!183028) (not bm!18473) (not d!54587) b_and!11103 (not b_next!4515) (not b!182991) (not b!182938) (not b!183043) (not b!183009) (not b!183045) (not b!183002) (not bm!18482) (not d!54585) (not b!182998) (not b!182993) (not d!54589) (not b!183044) (not d!54583) (not b!183057) (not bm!18470) (not b!183055))
(check-sat b_and!11103 (not b_next!4515))
