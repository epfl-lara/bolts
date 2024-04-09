; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19518 () Bool)

(assert start!19518)

(declare-fun b!191495 () Bool)

(declare-fun b_free!4683 () Bool)

(declare-fun b_next!4683 () Bool)

(assert (=> b!191495 (= b_free!4683 (not b_next!4683))))

(declare-fun tp!16899 () Bool)

(declare-fun b_and!11375 () Bool)

(assert (=> b!191495 (= tp!16899 b_and!11375)))

(declare-fun b!191494 () Bool)

(declare-fun res!90520 () Bool)

(declare-fun e!126038 () Bool)

(assert (=> b!191494 (=> (not res!90520) (not e!126038))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!191494 (= res!90520 (not (= key!828 (bvneg key!828))))))

(declare-fun e!126036 () Bool)

(declare-fun tp_is_empty!4455 () Bool)

(declare-datatypes ((V!5587 0))(
  ( (V!5588 (val!2272 Int)) )
))
(declare-datatypes ((ValueCell!1884 0))(
  ( (ValueCellFull!1884 (v!4208 V!5587)) (EmptyCell!1884) )
))
(declare-datatypes ((array!8148 0))(
  ( (array!8149 (arr!3838 (Array (_ BitVec 32) (_ BitVec 64))) (size!4160 (_ BitVec 32))) )
))
(declare-datatypes ((array!8150 0))(
  ( (array!8151 (arr!3839 (Array (_ BitVec 32) ValueCell!1884)) (size!4161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2676 0))(
  ( (LongMapFixedSize!2677 (defaultEntry!3910 Int) (mask!9131 (_ BitVec 32)) (extraKeys!3647 (_ BitVec 32)) (zeroValue!3751 V!5587) (minValue!3751 V!5587) (_size!1387 (_ BitVec 32)) (_keys!5888 array!8148) (_values!3893 array!8150) (_vacant!1387 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2676)

(declare-fun e!126040 () Bool)

(declare-fun array_inv!2479 (array!8148) Bool)

(declare-fun array_inv!2480 (array!8150) Bool)

(assert (=> b!191495 (= e!126036 (and tp!16899 tp_is_empty!4455 (array_inv!2479 (_keys!5888 thiss!1248)) (array_inv!2480 (_values!3893 thiss!1248)) e!126040))))

(declare-fun e!126039 () Bool)

(declare-datatypes ((SeekEntryResult!689 0))(
  ( (MissingZero!689 (index!4926 (_ BitVec 32))) (Found!689 (index!4927 (_ BitVec 32))) (Intermediate!689 (undefined!1501 Bool) (index!4928 (_ BitVec 32)) (x!20561 (_ BitVec 32))) (Undefined!689) (MissingVacant!689 (index!4929 (_ BitVec 32))) )
))
(declare-fun lt!95130 () SeekEntryResult!689)

(declare-fun b!191496 () Bool)

(assert (=> b!191496 (= e!126039 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4927 lt!95130)) key!828))))

(declare-fun mapIsEmpty!7695 () Bool)

(declare-fun mapRes!7695 () Bool)

(assert (=> mapIsEmpty!7695 mapRes!7695))

(declare-fun b!191497 () Bool)

(declare-fun e!126033 () Bool)

(assert (=> b!191497 (= e!126033 (or (not (= (size!4161 (_values!3893 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9131 thiss!1248)))) (not (= (size!4160 (_keys!5888 thiss!1248)) (size!4161 (_values!3893 thiss!1248)))) (bvslt (mask!9131 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3647 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!191498 () Bool)

(declare-fun e!126041 () Bool)

(assert (=> b!191498 (= e!126040 (and e!126041 mapRes!7695))))

(declare-fun condMapEmpty!7695 () Bool)

(declare-fun mapDefault!7695 () ValueCell!1884)

(assert (=> b!191498 (= condMapEmpty!7695 (= (arr!3839 (_values!3893 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1884)) mapDefault!7695)))))

(declare-fun res!90517 () Bool)

(assert (=> start!19518 (=> (not res!90517) (not e!126038))))

(declare-fun valid!1090 (LongMapFixedSize!2676) Bool)

(assert (=> start!19518 (= res!90517 (valid!1090 thiss!1248))))

(assert (=> start!19518 e!126038))

(assert (=> start!19518 e!126036))

(assert (=> start!19518 true))

(assert (=> start!19518 tp_is_empty!4455))

(declare-fun b!191499 () Bool)

(declare-fun e!126037 () Bool)

(assert (=> b!191499 (= e!126038 e!126037)))

(declare-fun res!90518 () Bool)

(assert (=> b!191499 (=> (not res!90518) (not e!126037))))

(get-info :version)

(assert (=> b!191499 (= res!90518 (and (not ((_ is Undefined!689) lt!95130)) (not ((_ is MissingVacant!689) lt!95130)) (not ((_ is MissingZero!689) lt!95130)) ((_ is Found!689) lt!95130)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8148 (_ BitVec 32)) SeekEntryResult!689)

(assert (=> b!191499 (= lt!95130 (seekEntryOrOpen!0 key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun b!191500 () Bool)

(declare-datatypes ((Unit!5790 0))(
  ( (Unit!5791) )
))
(declare-fun e!126032 () Unit!5790)

(declare-fun Unit!5792 () Unit!5790)

(assert (=> b!191500 (= e!126032 Unit!5792)))

(declare-fun lt!95132 () Unit!5790)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!179 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 64) Int) Unit!5790)

(assert (=> b!191500 (= lt!95132 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!179 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)))))

(assert (=> b!191500 false))

(declare-fun mapNonEmpty!7695 () Bool)

(declare-fun tp!16898 () Bool)

(declare-fun e!126034 () Bool)

(assert (=> mapNonEmpty!7695 (= mapRes!7695 (and tp!16898 e!126034))))

(declare-fun mapValue!7695 () ValueCell!1884)

(declare-fun mapKey!7695 () (_ BitVec 32))

(declare-fun mapRest!7695 () (Array (_ BitVec 32) ValueCell!1884))

(assert (=> mapNonEmpty!7695 (= (arr!3839 (_values!3893 thiss!1248)) (store mapRest!7695 mapKey!7695 mapValue!7695))))

(declare-fun b!191501 () Bool)

(assert (=> b!191501 (= e!126034 tp_is_empty!4455)))

(declare-fun b!191502 () Bool)

(assert (=> b!191502 (= e!126037 (not e!126033))))

(declare-fun res!90516 () Bool)

(assert (=> b!191502 (=> res!90516 e!126033)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!191502 (= res!90516 (not (validMask!0 (mask!9131 thiss!1248))))))

(declare-datatypes ((tuple2!3528 0))(
  ( (tuple2!3529 (_1!1774 (_ BitVec 64)) (_2!1774 V!5587)) )
))
(declare-datatypes ((List!2445 0))(
  ( (Nil!2442) (Cons!2441 (h!3080 tuple2!3528) (t!7367 List!2445)) )
))
(declare-datatypes ((ListLongMap!2459 0))(
  ( (ListLongMap!2460 (toList!1245 List!2445)) )
))
(declare-fun lt!95133 () ListLongMap!2459)

(declare-fun v!309 () V!5587)

(declare-fun +!303 (ListLongMap!2459 tuple2!3528) ListLongMap!2459)

(declare-fun getCurrentListMap!888 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 32) Int) ListLongMap!2459)

(assert (=> b!191502 (= (+!303 lt!95133 (tuple2!3529 key!828 v!309)) (getCurrentListMap!888 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95128 () Unit!5790)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!109 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 32) (_ BitVec 64) V!5587 Int) Unit!5790)

(assert (=> b!191502 (= lt!95128 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!109 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (index!4927 lt!95130) key!828 v!309 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95129 () Unit!5790)

(assert (=> b!191502 (= lt!95129 e!126032)))

(declare-fun c!34462 () Bool)

(declare-fun contains!1353 (ListLongMap!2459 (_ BitVec 64)) Bool)

(assert (=> b!191502 (= c!34462 (contains!1353 lt!95133 key!828))))

(assert (=> b!191502 (= lt!95133 (getCurrentListMap!888 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun b!191503 () Bool)

(declare-fun lt!95131 () Unit!5790)

(assert (=> b!191503 (= e!126032 lt!95131)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!175 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 64) Int) Unit!5790)

(assert (=> b!191503 (= lt!95131 (lemmaInListMapThenSeekEntryOrOpenFindsIt!175 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)))))

(declare-fun res!90519 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!191503 (= res!90519 (inRange!0 (index!4927 lt!95130) (mask!9131 thiss!1248)))))

(assert (=> b!191503 (=> (not res!90519) (not e!126039))))

(assert (=> b!191503 e!126039))

(declare-fun b!191504 () Bool)

(assert (=> b!191504 (= e!126041 tp_is_empty!4455)))

(assert (= (and start!19518 res!90517) b!191494))

(assert (= (and b!191494 res!90520) b!191499))

(assert (= (and b!191499 res!90518) b!191502))

(assert (= (and b!191502 c!34462) b!191503))

(assert (= (and b!191502 (not c!34462)) b!191500))

(assert (= (and b!191503 res!90519) b!191496))

(assert (= (and b!191502 (not res!90516)) b!191497))

(assert (= (and b!191498 condMapEmpty!7695) mapIsEmpty!7695))

(assert (= (and b!191498 (not condMapEmpty!7695)) mapNonEmpty!7695))

(assert (= (and mapNonEmpty!7695 ((_ is ValueCellFull!1884) mapValue!7695)) b!191501))

(assert (= (and b!191498 ((_ is ValueCellFull!1884) mapDefault!7695)) b!191504))

(assert (= b!191495 b!191498))

(assert (= start!19518 b!191495))

(declare-fun m!218097 () Bool)

(assert (=> b!191496 m!218097))

(declare-fun m!218099 () Bool)

(assert (=> b!191499 m!218099))

(declare-fun m!218101 () Bool)

(assert (=> b!191500 m!218101))

(declare-fun m!218103 () Bool)

(assert (=> b!191502 m!218103))

(declare-fun m!218105 () Bool)

(assert (=> b!191502 m!218105))

(declare-fun m!218107 () Bool)

(assert (=> b!191502 m!218107))

(declare-fun m!218109 () Bool)

(assert (=> b!191502 m!218109))

(declare-fun m!218111 () Bool)

(assert (=> b!191502 m!218111))

(declare-fun m!218113 () Bool)

(assert (=> b!191502 m!218113))

(declare-fun m!218115 () Bool)

(assert (=> b!191502 m!218115))

(declare-fun m!218117 () Bool)

(assert (=> b!191503 m!218117))

(declare-fun m!218119 () Bool)

(assert (=> b!191503 m!218119))

(declare-fun m!218121 () Bool)

(assert (=> mapNonEmpty!7695 m!218121))

(declare-fun m!218123 () Bool)

(assert (=> start!19518 m!218123))

(declare-fun m!218125 () Bool)

(assert (=> b!191495 m!218125))

(declare-fun m!218127 () Bool)

(assert (=> b!191495 m!218127))

(check-sat (not b!191499) (not b_next!4683) (not mapNonEmpty!7695) (not b!191502) tp_is_empty!4455 (not b!191503) b_and!11375 (not b!191495) (not start!19518) (not b!191500))
(check-sat b_and!11375 (not b_next!4683))
(get-model)

(declare-fun d!56071 () Bool)

(declare-fun res!90542 () Bool)

(declare-fun e!126074 () Bool)

(assert (=> d!56071 (=> (not res!90542) (not e!126074))))

(declare-fun simpleValid!197 (LongMapFixedSize!2676) Bool)

(assert (=> d!56071 (= res!90542 (simpleValid!197 thiss!1248))))

(assert (=> d!56071 (= (valid!1090 thiss!1248) e!126074)))

(declare-fun b!191544 () Bool)

(declare-fun res!90543 () Bool)

(assert (=> b!191544 (=> (not res!90543) (not e!126074))))

(declare-fun arrayCountValidKeys!0 (array!8148 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!191544 (= res!90543 (= (arrayCountValidKeys!0 (_keys!5888 thiss!1248) #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))) (_size!1387 thiss!1248)))))

(declare-fun b!191545 () Bool)

(declare-fun res!90544 () Bool)

(assert (=> b!191545 (=> (not res!90544) (not e!126074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8148 (_ BitVec 32)) Bool)

(assert (=> b!191545 (= res!90544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun b!191546 () Bool)

(declare-datatypes ((List!2447 0))(
  ( (Nil!2444) (Cons!2443 (h!3082 (_ BitVec 64)) (t!7371 List!2447)) )
))
(declare-fun arrayNoDuplicates!0 (array!8148 (_ BitVec 32) List!2447) Bool)

(assert (=> b!191546 (= e!126074 (arrayNoDuplicates!0 (_keys!5888 thiss!1248) #b00000000000000000000000000000000 Nil!2444))))

(assert (= (and d!56071 res!90542) b!191544))

(assert (= (and b!191544 res!90543) b!191545))

(assert (= (and b!191545 res!90544) b!191546))

(declare-fun m!218161 () Bool)

(assert (=> d!56071 m!218161))

(declare-fun m!218163 () Bool)

(assert (=> b!191544 m!218163))

(declare-fun m!218165 () Bool)

(assert (=> b!191545 m!218165))

(declare-fun m!218167 () Bool)

(assert (=> b!191546 m!218167))

(assert (=> start!19518 d!56071))

(declare-fun d!56073 () Bool)

(declare-fun e!126077 () Bool)

(assert (=> d!56073 e!126077))

(declare-fun res!90549 () Bool)

(assert (=> d!56073 (=> (not res!90549) (not e!126077))))

(declare-fun lt!95157 () SeekEntryResult!689)

(assert (=> d!56073 (= res!90549 ((_ is Found!689) lt!95157))))

(assert (=> d!56073 (= lt!95157 (seekEntryOrOpen!0 key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun lt!95156 () Unit!5790)

(declare-fun choose!1045 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 64) Int) Unit!5790)

(assert (=> d!56073 (= lt!95156 (choose!1045 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)))))

(assert (=> d!56073 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56073 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!175 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)) lt!95156)))

(declare-fun b!191551 () Bool)

(declare-fun res!90550 () Bool)

(assert (=> b!191551 (=> (not res!90550) (not e!126077))))

(assert (=> b!191551 (= res!90550 (inRange!0 (index!4927 lt!95157) (mask!9131 thiss!1248)))))

(declare-fun b!191552 () Bool)

(assert (=> b!191552 (= e!126077 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4927 lt!95157)) key!828))))

(assert (=> b!191552 (and (bvsge (index!4927 lt!95157) #b00000000000000000000000000000000) (bvslt (index!4927 lt!95157) (size!4160 (_keys!5888 thiss!1248))))))

(assert (= (and d!56073 res!90549) b!191551))

(assert (= (and b!191551 res!90550) b!191552))

(assert (=> d!56073 m!218099))

(declare-fun m!218169 () Bool)

(assert (=> d!56073 m!218169))

(assert (=> d!56073 m!218115))

(declare-fun m!218171 () Bool)

(assert (=> b!191551 m!218171))

(declare-fun m!218173 () Bool)

(assert (=> b!191552 m!218173))

(assert (=> b!191503 d!56073))

(declare-fun d!56075 () Bool)

(assert (=> d!56075 (= (inRange!0 (index!4927 lt!95130) (mask!9131 thiss!1248)) (and (bvsge (index!4927 lt!95130) #b00000000000000000000000000000000) (bvslt (index!4927 lt!95130) (bvadd (mask!9131 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!191503 d!56075))

(declare-fun d!56077 () Bool)

(declare-fun e!126083 () Bool)

(assert (=> d!56077 e!126083))

(declare-fun res!90553 () Bool)

(assert (=> d!56077 (=> res!90553 e!126083)))

(declare-fun lt!95167 () Bool)

(assert (=> d!56077 (= res!90553 (not lt!95167))))

(declare-fun lt!95168 () Bool)

(assert (=> d!56077 (= lt!95167 lt!95168)))

(declare-fun lt!95169 () Unit!5790)

(declare-fun e!126082 () Unit!5790)

(assert (=> d!56077 (= lt!95169 e!126082)))

(declare-fun c!34468 () Bool)

(assert (=> d!56077 (= c!34468 lt!95168)))

(declare-fun containsKey!242 (List!2445 (_ BitVec 64)) Bool)

(assert (=> d!56077 (= lt!95168 (containsKey!242 (toList!1245 lt!95133) key!828))))

(assert (=> d!56077 (= (contains!1353 lt!95133 key!828) lt!95167)))

(declare-fun b!191559 () Bool)

(declare-fun lt!95166 () Unit!5790)

(assert (=> b!191559 (= e!126082 lt!95166)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!191 (List!2445 (_ BitVec 64)) Unit!5790)

(assert (=> b!191559 (= lt!95166 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95133) key!828))))

(declare-datatypes ((Option!244 0))(
  ( (Some!243 (v!4212 V!5587)) (None!242) )
))
(declare-fun isDefined!192 (Option!244) Bool)

(declare-fun getValueByKey!238 (List!2445 (_ BitVec 64)) Option!244)

(assert (=> b!191559 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95133) key!828))))

(declare-fun b!191560 () Bool)

(declare-fun Unit!5796 () Unit!5790)

(assert (=> b!191560 (= e!126082 Unit!5796)))

(declare-fun b!191561 () Bool)

(assert (=> b!191561 (= e!126083 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95133) key!828)))))

(assert (= (and d!56077 c!34468) b!191559))

(assert (= (and d!56077 (not c!34468)) b!191560))

(assert (= (and d!56077 (not res!90553)) b!191561))

(declare-fun m!218175 () Bool)

(assert (=> d!56077 m!218175))

(declare-fun m!218177 () Bool)

(assert (=> b!191559 m!218177))

(declare-fun m!218179 () Bool)

(assert (=> b!191559 m!218179))

(assert (=> b!191559 m!218179))

(declare-fun m!218181 () Bool)

(assert (=> b!191559 m!218181))

(assert (=> b!191561 m!218179))

(assert (=> b!191561 m!218179))

(assert (=> b!191561 m!218181))

(assert (=> b!191502 d!56077))

(declare-fun d!56079 () Bool)

(assert (=> d!56079 (= (validMask!0 (mask!9131 thiss!1248)) (and (or (= (mask!9131 thiss!1248) #b00000000000000000000000000000111) (= (mask!9131 thiss!1248) #b00000000000000000000000000001111) (= (mask!9131 thiss!1248) #b00000000000000000000000000011111) (= (mask!9131 thiss!1248) #b00000000000000000000000000111111) (= (mask!9131 thiss!1248) #b00000000000000000000000001111111) (= (mask!9131 thiss!1248) #b00000000000000000000000011111111) (= (mask!9131 thiss!1248) #b00000000000000000000000111111111) (= (mask!9131 thiss!1248) #b00000000000000000000001111111111) (= (mask!9131 thiss!1248) #b00000000000000000000011111111111) (= (mask!9131 thiss!1248) #b00000000000000000000111111111111) (= (mask!9131 thiss!1248) #b00000000000000000001111111111111) (= (mask!9131 thiss!1248) #b00000000000000000011111111111111) (= (mask!9131 thiss!1248) #b00000000000000000111111111111111) (= (mask!9131 thiss!1248) #b00000000000000001111111111111111) (= (mask!9131 thiss!1248) #b00000000000000011111111111111111) (= (mask!9131 thiss!1248) #b00000000000000111111111111111111) (= (mask!9131 thiss!1248) #b00000000000001111111111111111111) (= (mask!9131 thiss!1248) #b00000000000011111111111111111111) (= (mask!9131 thiss!1248) #b00000000000111111111111111111111) (= (mask!9131 thiss!1248) #b00000000001111111111111111111111) (= (mask!9131 thiss!1248) #b00000000011111111111111111111111) (= (mask!9131 thiss!1248) #b00000000111111111111111111111111) (= (mask!9131 thiss!1248) #b00000001111111111111111111111111) (= (mask!9131 thiss!1248) #b00000011111111111111111111111111) (= (mask!9131 thiss!1248) #b00000111111111111111111111111111) (= (mask!9131 thiss!1248) #b00001111111111111111111111111111) (= (mask!9131 thiss!1248) #b00011111111111111111111111111111) (= (mask!9131 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9131 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!191502 d!56079))

(declare-fun d!56081 () Bool)

(declare-fun e!126086 () Bool)

(assert (=> d!56081 e!126086))

(declare-fun res!90556 () Bool)

(assert (=> d!56081 (=> (not res!90556) (not e!126086))))

(assert (=> d!56081 (= res!90556 (and (bvsge (index!4927 lt!95130) #b00000000000000000000000000000000) (bvslt (index!4927 lt!95130) (size!4161 (_values!3893 thiss!1248)))))))

(declare-fun lt!95172 () Unit!5790)

(declare-fun choose!1046 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 32) (_ BitVec 64) V!5587 Int) Unit!5790)

(assert (=> d!56081 (= lt!95172 (choose!1046 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (index!4927 lt!95130) key!828 v!309 (defaultEntry!3910 thiss!1248)))))

(assert (=> d!56081 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56081 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!109 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (index!4927 lt!95130) key!828 v!309 (defaultEntry!3910 thiss!1248)) lt!95172)))

(declare-fun b!191564 () Bool)

(assert (=> b!191564 (= e!126086 (= (+!303 (getCurrentListMap!888 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)) (tuple2!3529 key!828 v!309)) (getCurrentListMap!888 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248))))))

(assert (= (and d!56081 res!90556) b!191564))

(declare-fun m!218183 () Bool)

(assert (=> d!56081 m!218183))

(assert (=> d!56081 m!218115))

(assert (=> b!191564 m!218107))

(assert (=> b!191564 m!218107))

(declare-fun m!218185 () Bool)

(assert (=> b!191564 m!218185))

(assert (=> b!191564 m!218109))

(assert (=> b!191564 m!218111))

(assert (=> b!191502 d!56081))

(declare-fun b!191607 () Bool)

(declare-fun e!126120 () ListLongMap!2459)

(declare-fun call!19343 () ListLongMap!2459)

(assert (=> b!191607 (= e!126120 (+!303 call!19343 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))

(declare-fun e!126125 () Bool)

(declare-fun b!191608 () Bool)

(declare-fun lt!95234 () ListLongMap!2459)

(declare-fun apply!182 (ListLongMap!2459 (_ BitVec 64)) V!5587)

(declare-fun get!2214 (ValueCell!1884 V!5587) V!5587)

(declare-fun dynLambda!520 (Int (_ BitVec 64)) V!5587)

(assert (=> b!191608 (= e!126125 (= (apply!182 lt!95234 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) (get!2214 (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!191608 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4161 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))))))))

(assert (=> b!191608 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191609 () Bool)

(declare-fun e!126118 () Bool)

(assert (=> b!191609 (= e!126118 (= (apply!182 lt!95234 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3751 thiss!1248)))))

(declare-fun b!191610 () Bool)

(declare-fun e!126124 () Bool)

(declare-fun call!19342 () Bool)

(assert (=> b!191610 (= e!126124 (not call!19342))))

(declare-fun bm!19338 () Bool)

(declare-fun call!19347 () ListLongMap!2459)

(declare-fun getCurrentListMapNoExtraKeys!212 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 32) Int) ListLongMap!2459)

(assert (=> bm!19338 (= call!19347 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun b!191611 () Bool)

(declare-fun c!34484 () Bool)

(assert (=> b!191611 (= c!34484 (and (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!126116 () ListLongMap!2459)

(declare-fun e!126117 () ListLongMap!2459)

(assert (=> b!191611 (= e!126116 e!126117)))

(declare-fun b!191612 () Bool)

(assert (=> b!191612 (= e!126120 e!126116)))

(declare-fun c!34482 () Bool)

(assert (=> b!191612 (= c!34482 (and (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!191613 () Bool)

(declare-fun call!19346 () ListLongMap!2459)

(assert (=> b!191613 (= e!126117 call!19346)))

(declare-fun call!19345 () ListLongMap!2459)

(declare-fun bm!19339 () Bool)

(declare-fun c!34486 () Bool)

(declare-fun call!19341 () ListLongMap!2459)

(assert (=> bm!19339 (= call!19343 (+!303 (ite c!34486 call!19347 (ite c!34482 call!19341 call!19345)) (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(declare-fun d!56083 () Bool)

(declare-fun e!126115 () Bool)

(assert (=> d!56083 e!126115))

(declare-fun res!90582 () Bool)

(assert (=> d!56083 (=> (not res!90582) (not e!126115))))

(assert (=> d!56083 (= res!90582 (or (bvsge #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))))

(declare-fun lt!95223 () ListLongMap!2459)

(assert (=> d!56083 (= lt!95234 lt!95223)))

(declare-fun lt!95233 () Unit!5790)

(declare-fun e!126121 () Unit!5790)

(assert (=> d!56083 (= lt!95233 e!126121)))

(declare-fun c!34485 () Bool)

(declare-fun e!126122 () Bool)

(assert (=> d!56083 (= c!34485 e!126122)))

(declare-fun res!90579 () Bool)

(assert (=> d!56083 (=> (not res!90579) (not e!126122))))

(assert (=> d!56083 (= res!90579 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56083 (= lt!95223 e!126120)))

(assert (=> d!56083 (= c!34486 (and (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56083 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56083 (= (getCurrentListMap!888 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)) lt!95234)))

(declare-fun b!191614 () Bool)

(assert (=> b!191614 (= e!126115 e!126124)))

(declare-fun c!34481 () Bool)

(assert (=> b!191614 (= c!34481 (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19340 () Bool)

(assert (=> bm!19340 (= call!19342 (contains!1353 lt!95234 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19341 () Bool)

(assert (=> bm!19341 (= call!19345 call!19341)))

(declare-fun b!191615 () Bool)

(declare-fun lt!95230 () Unit!5790)

(assert (=> b!191615 (= e!126121 lt!95230)))

(declare-fun lt!95226 () ListLongMap!2459)

(assert (=> b!191615 (= lt!95226 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95219 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95219 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95229 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95229 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95220 () Unit!5790)

(declare-fun addStillContains!158 (ListLongMap!2459 (_ BitVec 64) V!5587 (_ BitVec 64)) Unit!5790)

(assert (=> b!191615 (= lt!95220 (addStillContains!158 lt!95226 lt!95219 (zeroValue!3751 thiss!1248) lt!95229))))

(assert (=> b!191615 (contains!1353 (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))) lt!95229)))

(declare-fun lt!95217 () Unit!5790)

(assert (=> b!191615 (= lt!95217 lt!95220)))

(declare-fun lt!95227 () ListLongMap!2459)

(assert (=> b!191615 (= lt!95227 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95221 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95221 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95224 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95224 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95235 () Unit!5790)

(declare-fun addApplyDifferent!158 (ListLongMap!2459 (_ BitVec 64) V!5587 (_ BitVec 64)) Unit!5790)

(assert (=> b!191615 (= lt!95235 (addApplyDifferent!158 lt!95227 lt!95221 (minValue!3751 thiss!1248) lt!95224))))

(assert (=> b!191615 (= (apply!182 (+!303 lt!95227 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))) lt!95224) (apply!182 lt!95227 lt!95224))))

(declare-fun lt!95237 () Unit!5790)

(assert (=> b!191615 (= lt!95237 lt!95235)))

(declare-fun lt!95236 () ListLongMap!2459)

(assert (=> b!191615 (= lt!95236 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95225 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95225 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95228 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95228 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95222 () Unit!5790)

(assert (=> b!191615 (= lt!95222 (addApplyDifferent!158 lt!95236 lt!95225 (zeroValue!3751 thiss!1248) lt!95228))))

(assert (=> b!191615 (= (apply!182 (+!303 lt!95236 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))) lt!95228) (apply!182 lt!95236 lt!95228))))

(declare-fun lt!95218 () Unit!5790)

(assert (=> b!191615 (= lt!95218 lt!95222)))

(declare-fun lt!95238 () ListLongMap!2459)

(assert (=> b!191615 (= lt!95238 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95231 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95231 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95232 () (_ BitVec 64))

(assert (=> b!191615 (= lt!95232 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191615 (= lt!95230 (addApplyDifferent!158 lt!95238 lt!95231 (minValue!3751 thiss!1248) lt!95232))))

(assert (=> b!191615 (= (apply!182 (+!303 lt!95238 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))) lt!95232) (apply!182 lt!95238 lt!95232))))

(declare-fun b!191616 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!191616 (= e!126122 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191617 () Bool)

(declare-fun e!126113 () Bool)

(assert (=> b!191617 (= e!126113 e!126125)))

(declare-fun res!90576 () Bool)

(assert (=> b!191617 (=> (not res!90576) (not e!126125))))

(assert (=> b!191617 (= res!90576 (contains!1353 lt!95234 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191617 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun bm!19342 () Bool)

(declare-fun call!19344 () Bool)

(assert (=> bm!19342 (= call!19344 (contains!1353 lt!95234 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191618 () Bool)

(assert (=> b!191618 (= e!126117 call!19345)))

(declare-fun b!191619 () Bool)

(declare-fun e!126123 () Bool)

(assert (=> b!191619 (= e!126123 e!126118)))

(declare-fun res!90577 () Bool)

(assert (=> b!191619 (= res!90577 call!19344)))

(assert (=> b!191619 (=> (not res!90577) (not e!126118))))

(declare-fun b!191620 () Bool)

(declare-fun e!126114 () Bool)

(assert (=> b!191620 (= e!126114 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191621 () Bool)

(assert (=> b!191621 (= e!126116 call!19346)))

(declare-fun bm!19343 () Bool)

(assert (=> bm!19343 (= call!19346 call!19343)))

(declare-fun b!191622 () Bool)

(assert (=> b!191622 (= e!126123 (not call!19344))))

(declare-fun b!191623 () Bool)

(declare-fun Unit!5797 () Unit!5790)

(assert (=> b!191623 (= e!126121 Unit!5797)))

(declare-fun b!191624 () Bool)

(declare-fun res!90578 () Bool)

(assert (=> b!191624 (=> (not res!90578) (not e!126115))))

(assert (=> b!191624 (= res!90578 e!126113)))

(declare-fun res!90575 () Bool)

(assert (=> b!191624 (=> res!90575 e!126113)))

(assert (=> b!191624 (= res!90575 (not e!126114))))

(declare-fun res!90583 () Bool)

(assert (=> b!191624 (=> (not res!90583) (not e!126114))))

(assert (=> b!191624 (= res!90583 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191625 () Bool)

(declare-fun res!90580 () Bool)

(assert (=> b!191625 (=> (not res!90580) (not e!126115))))

(assert (=> b!191625 (= res!90580 e!126123)))

(declare-fun c!34483 () Bool)

(assert (=> b!191625 (= c!34483 (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19344 () Bool)

(assert (=> bm!19344 (= call!19341 call!19347)))

(declare-fun b!191626 () Bool)

(declare-fun e!126119 () Bool)

(assert (=> b!191626 (= e!126124 e!126119)))

(declare-fun res!90581 () Bool)

(assert (=> b!191626 (= res!90581 call!19342)))

(assert (=> b!191626 (=> (not res!90581) (not e!126119))))

(declare-fun b!191627 () Bool)

(assert (=> b!191627 (= e!126119 (= (apply!182 lt!95234 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3751 thiss!1248)))))

(assert (= (and d!56083 c!34486) b!191607))

(assert (= (and d!56083 (not c!34486)) b!191612))

(assert (= (and b!191612 c!34482) b!191621))

(assert (= (and b!191612 (not c!34482)) b!191611))

(assert (= (and b!191611 c!34484) b!191613))

(assert (= (and b!191611 (not c!34484)) b!191618))

(assert (= (or b!191613 b!191618) bm!19341))

(assert (= (or b!191621 bm!19341) bm!19344))

(assert (= (or b!191621 b!191613) bm!19343))

(assert (= (or b!191607 bm!19344) bm!19338))

(assert (= (or b!191607 bm!19343) bm!19339))

(assert (= (and d!56083 res!90579) b!191616))

(assert (= (and d!56083 c!34485) b!191615))

(assert (= (and d!56083 (not c!34485)) b!191623))

(assert (= (and d!56083 res!90582) b!191624))

(assert (= (and b!191624 res!90583) b!191620))

(assert (= (and b!191624 (not res!90575)) b!191617))

(assert (= (and b!191617 res!90576) b!191608))

(assert (= (and b!191624 res!90578) b!191625))

(assert (= (and b!191625 c!34483) b!191619))

(assert (= (and b!191625 (not c!34483)) b!191622))

(assert (= (and b!191619 res!90577) b!191609))

(assert (= (or b!191619 b!191622) bm!19342))

(assert (= (and b!191625 res!90580) b!191614))

(assert (= (and b!191614 c!34481) b!191626))

(assert (= (and b!191614 (not c!34481)) b!191610))

(assert (= (and b!191626 res!90581) b!191627))

(assert (= (or b!191626 b!191610) bm!19340))

(declare-fun b_lambda!7429 () Bool)

(assert (=> (not b_lambda!7429) (not b!191608)))

(declare-fun t!7370 () Bool)

(declare-fun tb!2883 () Bool)

(assert (=> (and b!191495 (= (defaultEntry!3910 thiss!1248) (defaultEntry!3910 thiss!1248)) t!7370) tb!2883))

(declare-fun result!4911 () Bool)

(assert (=> tb!2883 (= result!4911 tp_is_empty!4455)))

(assert (=> b!191608 t!7370))

(declare-fun b_and!11379 () Bool)

(assert (= b_and!11375 (and (=> t!7370 result!4911) b_and!11379)))

(declare-fun m!218187 () Bool)

(assert (=> b!191617 m!218187))

(assert (=> b!191617 m!218187))

(declare-fun m!218189 () Bool)

(assert (=> b!191617 m!218189))

(assert (=> b!191608 m!218187))

(declare-fun m!218191 () Bool)

(assert (=> b!191608 m!218191))

(declare-fun m!218193 () Bool)

(assert (=> b!191608 m!218193))

(declare-fun m!218195 () Bool)

(assert (=> b!191608 m!218195))

(assert (=> b!191608 m!218193))

(assert (=> b!191608 m!218187))

(declare-fun m!218197 () Bool)

(assert (=> b!191608 m!218197))

(assert (=> b!191608 m!218191))

(declare-fun m!218199 () Bool)

(assert (=> b!191609 m!218199))

(declare-fun m!218201 () Bool)

(assert (=> bm!19338 m!218201))

(declare-fun m!218203 () Bool)

(assert (=> b!191627 m!218203))

(declare-fun m!218205 () Bool)

(assert (=> b!191615 m!218205))

(declare-fun m!218207 () Bool)

(assert (=> b!191615 m!218207))

(declare-fun m!218209 () Bool)

(assert (=> b!191615 m!218209))

(declare-fun m!218211 () Bool)

(assert (=> b!191615 m!218211))

(assert (=> b!191615 m!218207))

(declare-fun m!218213 () Bool)

(assert (=> b!191615 m!218213))

(declare-fun m!218215 () Bool)

(assert (=> b!191615 m!218215))

(declare-fun m!218217 () Bool)

(assert (=> b!191615 m!218217))

(declare-fun m!218219 () Bool)

(assert (=> b!191615 m!218219))

(declare-fun m!218221 () Bool)

(assert (=> b!191615 m!218221))

(assert (=> b!191615 m!218201))

(declare-fun m!218223 () Bool)

(assert (=> b!191615 m!218223))

(declare-fun m!218225 () Bool)

(assert (=> b!191615 m!218225))

(declare-fun m!218227 () Bool)

(assert (=> b!191615 m!218227))

(assert (=> b!191615 m!218211))

(declare-fun m!218229 () Bool)

(assert (=> b!191615 m!218229))

(declare-fun m!218231 () Bool)

(assert (=> b!191615 m!218231))

(assert (=> b!191615 m!218187))

(declare-fun m!218233 () Bool)

(assert (=> b!191615 m!218233))

(assert (=> b!191615 m!218223))

(assert (=> b!191615 m!218219))

(assert (=> b!191620 m!218187))

(assert (=> b!191620 m!218187))

(declare-fun m!218235 () Bool)

(assert (=> b!191620 m!218235))

(declare-fun m!218237 () Bool)

(assert (=> bm!19340 m!218237))

(assert (=> b!191616 m!218187))

(assert (=> b!191616 m!218187))

(assert (=> b!191616 m!218235))

(declare-fun m!218239 () Bool)

(assert (=> bm!19342 m!218239))

(declare-fun m!218241 () Bool)

(assert (=> bm!19339 m!218241))

(assert (=> d!56083 m!218115))

(declare-fun m!218243 () Bool)

(assert (=> b!191607 m!218243))

(assert (=> b!191502 d!56083))

(declare-fun b!191630 () Bool)

(declare-fun e!126133 () ListLongMap!2459)

(declare-fun call!19350 () ListLongMap!2459)

(assert (=> b!191630 (= e!126133 (+!303 call!19350 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))

(declare-fun b!191631 () Bool)

(declare-fun e!126138 () Bool)

(declare-fun lt!95256 () ListLongMap!2459)

(assert (=> b!191631 (= e!126138 (= (apply!182 lt!95256 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) (get!2214 (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!191631 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4161 (_values!3893 thiss!1248))))))

(assert (=> b!191631 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191632 () Bool)

(declare-fun e!126131 () Bool)

(assert (=> b!191632 (= e!126131 (= (apply!182 lt!95256 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3751 thiss!1248)))))

(declare-fun b!191633 () Bool)

(declare-fun e!126137 () Bool)

(declare-fun call!19349 () Bool)

(assert (=> b!191633 (= e!126137 (not call!19349))))

(declare-fun bm!19345 () Bool)

(declare-fun call!19354 () ListLongMap!2459)

(assert (=> bm!19345 (= call!19354 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun b!191634 () Bool)

(declare-fun c!34490 () Bool)

(assert (=> b!191634 (= c!34490 (and (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!126129 () ListLongMap!2459)

(declare-fun e!126130 () ListLongMap!2459)

(assert (=> b!191634 (= e!126129 e!126130)))

(declare-fun b!191635 () Bool)

(assert (=> b!191635 (= e!126133 e!126129)))

(declare-fun c!34488 () Bool)

(assert (=> b!191635 (= c!34488 (and (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!191636 () Bool)

(declare-fun call!19353 () ListLongMap!2459)

(assert (=> b!191636 (= e!126130 call!19353)))

(declare-fun bm!19346 () Bool)

(declare-fun call!19348 () ListLongMap!2459)

(declare-fun c!34492 () Bool)

(declare-fun call!19352 () ListLongMap!2459)

(assert (=> bm!19346 (= call!19350 (+!303 (ite c!34492 call!19354 (ite c!34488 call!19348 call!19352)) (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(declare-fun d!56085 () Bool)

(declare-fun e!126128 () Bool)

(assert (=> d!56085 e!126128))

(declare-fun res!90591 () Bool)

(assert (=> d!56085 (=> (not res!90591) (not e!126128))))

(assert (=> d!56085 (= res!90591 (or (bvsge #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))))

(declare-fun lt!95245 () ListLongMap!2459)

(assert (=> d!56085 (= lt!95256 lt!95245)))

(declare-fun lt!95255 () Unit!5790)

(declare-fun e!126134 () Unit!5790)

(assert (=> d!56085 (= lt!95255 e!126134)))

(declare-fun c!34491 () Bool)

(declare-fun e!126135 () Bool)

(assert (=> d!56085 (= c!34491 e!126135)))

(declare-fun res!90588 () Bool)

(assert (=> d!56085 (=> (not res!90588) (not e!126135))))

(assert (=> d!56085 (= res!90588 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56085 (= lt!95245 e!126133)))

(assert (=> d!56085 (= c!34492 (and (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56085 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56085 (= (getCurrentListMap!888 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)) lt!95256)))

(declare-fun b!191637 () Bool)

(assert (=> b!191637 (= e!126128 e!126137)))

(declare-fun c!34487 () Bool)

(assert (=> b!191637 (= c!34487 (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19347 () Bool)

(assert (=> bm!19347 (= call!19349 (contains!1353 lt!95256 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19348 () Bool)

(assert (=> bm!19348 (= call!19352 call!19348)))

(declare-fun b!191638 () Bool)

(declare-fun lt!95252 () Unit!5790)

(assert (=> b!191638 (= e!126134 lt!95252)))

(declare-fun lt!95248 () ListLongMap!2459)

(assert (=> b!191638 (= lt!95248 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95241 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95241 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95251 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95251 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95242 () Unit!5790)

(assert (=> b!191638 (= lt!95242 (addStillContains!158 lt!95248 lt!95241 (zeroValue!3751 thiss!1248) lt!95251))))

(assert (=> b!191638 (contains!1353 (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))) lt!95251)))

(declare-fun lt!95239 () Unit!5790)

(assert (=> b!191638 (= lt!95239 lt!95242)))

(declare-fun lt!95249 () ListLongMap!2459)

(assert (=> b!191638 (= lt!95249 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95243 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95243 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95246 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95246 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95257 () Unit!5790)

(assert (=> b!191638 (= lt!95257 (addApplyDifferent!158 lt!95249 lt!95243 (minValue!3751 thiss!1248) lt!95246))))

(assert (=> b!191638 (= (apply!182 (+!303 lt!95249 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))) lt!95246) (apply!182 lt!95249 lt!95246))))

(declare-fun lt!95259 () Unit!5790)

(assert (=> b!191638 (= lt!95259 lt!95257)))

(declare-fun lt!95258 () ListLongMap!2459)

(assert (=> b!191638 (= lt!95258 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95247 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95247 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95250 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95250 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95244 () Unit!5790)

(assert (=> b!191638 (= lt!95244 (addApplyDifferent!158 lt!95258 lt!95247 (zeroValue!3751 thiss!1248) lt!95250))))

(assert (=> b!191638 (= (apply!182 (+!303 lt!95258 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))) lt!95250) (apply!182 lt!95258 lt!95250))))

(declare-fun lt!95240 () Unit!5790)

(assert (=> b!191638 (= lt!95240 lt!95244)))

(declare-fun lt!95260 () ListLongMap!2459)

(assert (=> b!191638 (= lt!95260 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(declare-fun lt!95253 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95253 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95254 () (_ BitVec 64))

(assert (=> b!191638 (= lt!95254 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191638 (= lt!95252 (addApplyDifferent!158 lt!95260 lt!95253 (minValue!3751 thiss!1248) lt!95254))))

(assert (=> b!191638 (= (apply!182 (+!303 lt!95260 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))) lt!95254) (apply!182 lt!95260 lt!95254))))

(declare-fun b!191639 () Bool)

(assert (=> b!191639 (= e!126135 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191640 () Bool)

(declare-fun e!126126 () Bool)

(assert (=> b!191640 (= e!126126 e!126138)))

(declare-fun res!90585 () Bool)

(assert (=> b!191640 (=> (not res!90585) (not e!126138))))

(assert (=> b!191640 (= res!90585 (contains!1353 lt!95256 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191640 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun bm!19349 () Bool)

(declare-fun call!19351 () Bool)

(assert (=> bm!19349 (= call!19351 (contains!1353 lt!95256 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191641 () Bool)

(assert (=> b!191641 (= e!126130 call!19352)))

(declare-fun b!191642 () Bool)

(declare-fun e!126136 () Bool)

(assert (=> b!191642 (= e!126136 e!126131)))

(declare-fun res!90586 () Bool)

(assert (=> b!191642 (= res!90586 call!19351)))

(assert (=> b!191642 (=> (not res!90586) (not e!126131))))

(declare-fun b!191643 () Bool)

(declare-fun e!126127 () Bool)

(assert (=> b!191643 (= e!126127 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191644 () Bool)

(assert (=> b!191644 (= e!126129 call!19353)))

(declare-fun bm!19350 () Bool)

(assert (=> bm!19350 (= call!19353 call!19350)))

(declare-fun b!191645 () Bool)

(assert (=> b!191645 (= e!126136 (not call!19351))))

(declare-fun b!191646 () Bool)

(declare-fun Unit!5798 () Unit!5790)

(assert (=> b!191646 (= e!126134 Unit!5798)))

(declare-fun b!191647 () Bool)

(declare-fun res!90587 () Bool)

(assert (=> b!191647 (=> (not res!90587) (not e!126128))))

(assert (=> b!191647 (= res!90587 e!126126)))

(declare-fun res!90584 () Bool)

(assert (=> b!191647 (=> res!90584 e!126126)))

(assert (=> b!191647 (= res!90584 (not e!126127))))

(declare-fun res!90592 () Bool)

(assert (=> b!191647 (=> (not res!90592) (not e!126127))))

(assert (=> b!191647 (= res!90592 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191648 () Bool)

(declare-fun res!90589 () Bool)

(assert (=> b!191648 (=> (not res!90589) (not e!126128))))

(assert (=> b!191648 (= res!90589 e!126136)))

(declare-fun c!34489 () Bool)

(assert (=> b!191648 (= c!34489 (not (= (bvand (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19351 () Bool)

(assert (=> bm!19351 (= call!19348 call!19354)))

(declare-fun b!191649 () Bool)

(declare-fun e!126132 () Bool)

(assert (=> b!191649 (= e!126137 e!126132)))

(declare-fun res!90590 () Bool)

(assert (=> b!191649 (= res!90590 call!19349)))

(assert (=> b!191649 (=> (not res!90590) (not e!126132))))

(declare-fun b!191650 () Bool)

(assert (=> b!191650 (= e!126132 (= (apply!182 lt!95256 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3751 thiss!1248)))))

(assert (= (and d!56085 c!34492) b!191630))

(assert (= (and d!56085 (not c!34492)) b!191635))

(assert (= (and b!191635 c!34488) b!191644))

(assert (= (and b!191635 (not c!34488)) b!191634))

(assert (= (and b!191634 c!34490) b!191636))

(assert (= (and b!191634 (not c!34490)) b!191641))

(assert (= (or b!191636 b!191641) bm!19348))

(assert (= (or b!191644 bm!19348) bm!19351))

(assert (= (or b!191644 b!191636) bm!19350))

(assert (= (or b!191630 bm!19351) bm!19345))

(assert (= (or b!191630 bm!19350) bm!19346))

(assert (= (and d!56085 res!90588) b!191639))

(assert (= (and d!56085 c!34491) b!191638))

(assert (= (and d!56085 (not c!34491)) b!191646))

(assert (= (and d!56085 res!90591) b!191647))

(assert (= (and b!191647 res!90592) b!191643))

(assert (= (and b!191647 (not res!90584)) b!191640))

(assert (= (and b!191640 res!90585) b!191631))

(assert (= (and b!191647 res!90587) b!191648))

(assert (= (and b!191648 c!34489) b!191642))

(assert (= (and b!191648 (not c!34489)) b!191645))

(assert (= (and b!191642 res!90586) b!191632))

(assert (= (or b!191642 b!191645) bm!19349))

(assert (= (and b!191648 res!90589) b!191637))

(assert (= (and b!191637 c!34487) b!191649))

(assert (= (and b!191637 (not c!34487)) b!191633))

(assert (= (and b!191649 res!90590) b!191650))

(assert (= (or b!191649 b!191633) bm!19347))

(declare-fun b_lambda!7431 () Bool)

(assert (=> (not b_lambda!7431) (not b!191631)))

(assert (=> b!191631 t!7370))

(declare-fun b_and!11381 () Bool)

(assert (= b_and!11379 (and (=> t!7370 result!4911) b_and!11381)))

(assert (=> b!191640 m!218187))

(assert (=> b!191640 m!218187))

(declare-fun m!218245 () Bool)

(assert (=> b!191640 m!218245))

(assert (=> b!191631 m!218187))

(declare-fun m!218247 () Bool)

(assert (=> b!191631 m!218247))

(assert (=> b!191631 m!218193))

(declare-fun m!218249 () Bool)

(assert (=> b!191631 m!218249))

(assert (=> b!191631 m!218193))

(assert (=> b!191631 m!218187))

(declare-fun m!218251 () Bool)

(assert (=> b!191631 m!218251))

(assert (=> b!191631 m!218247))

(declare-fun m!218253 () Bool)

(assert (=> b!191632 m!218253))

(declare-fun m!218255 () Bool)

(assert (=> bm!19345 m!218255))

(declare-fun m!218257 () Bool)

(assert (=> b!191650 m!218257))

(declare-fun m!218259 () Bool)

(assert (=> b!191638 m!218259))

(declare-fun m!218261 () Bool)

(assert (=> b!191638 m!218261))

(declare-fun m!218263 () Bool)

(assert (=> b!191638 m!218263))

(declare-fun m!218265 () Bool)

(assert (=> b!191638 m!218265))

(assert (=> b!191638 m!218261))

(declare-fun m!218267 () Bool)

(assert (=> b!191638 m!218267))

(declare-fun m!218269 () Bool)

(assert (=> b!191638 m!218269))

(declare-fun m!218271 () Bool)

(assert (=> b!191638 m!218271))

(declare-fun m!218273 () Bool)

(assert (=> b!191638 m!218273))

(declare-fun m!218275 () Bool)

(assert (=> b!191638 m!218275))

(assert (=> b!191638 m!218255))

(declare-fun m!218277 () Bool)

(assert (=> b!191638 m!218277))

(declare-fun m!218279 () Bool)

(assert (=> b!191638 m!218279))

(declare-fun m!218281 () Bool)

(assert (=> b!191638 m!218281))

(assert (=> b!191638 m!218265))

(declare-fun m!218283 () Bool)

(assert (=> b!191638 m!218283))

(declare-fun m!218285 () Bool)

(assert (=> b!191638 m!218285))

(assert (=> b!191638 m!218187))

(declare-fun m!218287 () Bool)

(assert (=> b!191638 m!218287))

(assert (=> b!191638 m!218277))

(assert (=> b!191638 m!218273))

(assert (=> b!191643 m!218187))

(assert (=> b!191643 m!218187))

(assert (=> b!191643 m!218235))

(declare-fun m!218289 () Bool)

(assert (=> bm!19347 m!218289))

(assert (=> b!191639 m!218187))

(assert (=> b!191639 m!218187))

(assert (=> b!191639 m!218235))

(declare-fun m!218291 () Bool)

(assert (=> bm!19349 m!218291))

(declare-fun m!218293 () Bool)

(assert (=> bm!19346 m!218293))

(assert (=> d!56085 m!218115))

(declare-fun m!218295 () Bool)

(assert (=> b!191630 m!218295))

(assert (=> b!191502 d!56085))

(declare-fun d!56087 () Bool)

(declare-fun e!126141 () Bool)

(assert (=> d!56087 e!126141))

(declare-fun res!90598 () Bool)

(assert (=> d!56087 (=> (not res!90598) (not e!126141))))

(declare-fun lt!95271 () ListLongMap!2459)

(assert (=> d!56087 (= res!90598 (contains!1353 lt!95271 (_1!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun lt!95269 () List!2445)

(assert (=> d!56087 (= lt!95271 (ListLongMap!2460 lt!95269))))

(declare-fun lt!95270 () Unit!5790)

(declare-fun lt!95272 () Unit!5790)

(assert (=> d!56087 (= lt!95270 lt!95272)))

(assert (=> d!56087 (= (getValueByKey!238 lt!95269 (_1!1774 (tuple2!3529 key!828 v!309))) (Some!243 (_2!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!127 (List!2445 (_ BitVec 64) V!5587) Unit!5790)

(assert (=> d!56087 (= lt!95272 (lemmaContainsTupThenGetReturnValue!127 lt!95269 (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun insertStrictlySorted!129 (List!2445 (_ BitVec 64) V!5587) List!2445)

(assert (=> d!56087 (= lt!95269 (insertStrictlySorted!129 (toList!1245 lt!95133) (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))))))

(assert (=> d!56087 (= (+!303 lt!95133 (tuple2!3529 key!828 v!309)) lt!95271)))

(declare-fun b!191655 () Bool)

(declare-fun res!90597 () Bool)

(assert (=> b!191655 (=> (not res!90597) (not e!126141))))

(assert (=> b!191655 (= res!90597 (= (getValueByKey!238 (toList!1245 lt!95271) (_1!1774 (tuple2!3529 key!828 v!309))) (Some!243 (_2!1774 (tuple2!3529 key!828 v!309)))))))

(declare-fun b!191656 () Bool)

(declare-fun contains!1355 (List!2445 tuple2!3528) Bool)

(assert (=> b!191656 (= e!126141 (contains!1355 (toList!1245 lt!95271) (tuple2!3529 key!828 v!309)))))

(assert (= (and d!56087 res!90598) b!191655))

(assert (= (and b!191655 res!90597) b!191656))

(declare-fun m!218297 () Bool)

(assert (=> d!56087 m!218297))

(declare-fun m!218299 () Bool)

(assert (=> d!56087 m!218299))

(declare-fun m!218301 () Bool)

(assert (=> d!56087 m!218301))

(declare-fun m!218303 () Bool)

(assert (=> d!56087 m!218303))

(declare-fun m!218305 () Bool)

(assert (=> b!191655 m!218305))

(declare-fun m!218307 () Bool)

(assert (=> b!191656 m!218307))

(assert (=> b!191502 d!56087))

(declare-fun b!191673 () Bool)

(declare-fun lt!95277 () SeekEntryResult!689)

(assert (=> b!191673 (and (bvsge (index!4926 lt!95277) #b00000000000000000000000000000000) (bvslt (index!4926 lt!95277) (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun res!90608 () Bool)

(assert (=> b!191673 (= res!90608 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4926 lt!95277)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!126153 () Bool)

(assert (=> b!191673 (=> (not res!90608) (not e!126153))))

(declare-fun d!56089 () Bool)

(declare-fun e!126151 () Bool)

(assert (=> d!56089 e!126151))

(declare-fun c!34497 () Bool)

(assert (=> d!56089 (= c!34497 ((_ is MissingZero!689) lt!95277))))

(assert (=> d!56089 (= lt!95277 (seekEntryOrOpen!0 key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun lt!95278 () Unit!5790)

(declare-fun choose!1047 (array!8148 array!8150 (_ BitVec 32) (_ BitVec 32) V!5587 V!5587 (_ BitVec 64) Int) Unit!5790)

(assert (=> d!56089 (= lt!95278 (choose!1047 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)))))

(assert (=> d!56089 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56089 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!179 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)) lt!95278)))

(declare-fun b!191674 () Bool)

(declare-fun res!90610 () Bool)

(declare-fun e!126150 () Bool)

(assert (=> b!191674 (=> (not res!90610) (not e!126150))))

(assert (=> b!191674 (= res!90610 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4929 lt!95277)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191674 (and (bvsge (index!4929 lt!95277) #b00000000000000000000000000000000) (bvslt (index!4929 lt!95277) (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191675 () Bool)

(declare-fun call!19359 () Bool)

(assert (=> b!191675 (= e!126153 (not call!19359))))

(declare-fun call!19360 () Bool)

(declare-fun bm!19356 () Bool)

(assert (=> bm!19356 (= call!19360 (inRange!0 (ite c!34497 (index!4926 lt!95277) (index!4929 lt!95277)) (mask!9131 thiss!1248)))))

(declare-fun bm!19357 () Bool)

(declare-fun arrayContainsKey!0 (array!8148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19357 (= call!19359 (arrayContainsKey!0 (_keys!5888 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!191676 () Bool)

(declare-fun e!126152 () Bool)

(assert (=> b!191676 (= e!126151 e!126152)))

(declare-fun c!34498 () Bool)

(assert (=> b!191676 (= c!34498 ((_ is MissingVacant!689) lt!95277))))

(declare-fun b!191677 () Bool)

(assert (=> b!191677 (= e!126150 (not call!19359))))

(declare-fun b!191678 () Bool)

(assert (=> b!191678 (= e!126152 ((_ is Undefined!689) lt!95277))))

(declare-fun b!191679 () Bool)

(declare-fun res!90609 () Bool)

(assert (=> b!191679 (=> (not res!90609) (not e!126150))))

(assert (=> b!191679 (= res!90609 call!19360)))

(assert (=> b!191679 (= e!126152 e!126150)))

(declare-fun b!191680 () Bool)

(assert (=> b!191680 (= e!126151 e!126153)))

(declare-fun res!90607 () Bool)

(assert (=> b!191680 (= res!90607 call!19360)))

(assert (=> b!191680 (=> (not res!90607) (not e!126153))))

(assert (= (and d!56089 c!34497) b!191680))

(assert (= (and d!56089 (not c!34497)) b!191676))

(assert (= (and b!191680 res!90607) b!191673))

(assert (= (and b!191673 res!90608) b!191675))

(assert (= (and b!191676 c!34498) b!191679))

(assert (= (and b!191676 (not c!34498)) b!191678))

(assert (= (and b!191679 res!90609) b!191674))

(assert (= (and b!191674 res!90610) b!191677))

(assert (= (or b!191680 b!191679) bm!19356))

(assert (= (or b!191675 b!191677) bm!19357))

(declare-fun m!218309 () Bool)

(assert (=> bm!19357 m!218309))

(assert (=> d!56089 m!218099))

(declare-fun m!218311 () Bool)

(assert (=> d!56089 m!218311))

(assert (=> d!56089 m!218115))

(declare-fun m!218313 () Bool)

(assert (=> bm!19356 m!218313))

(declare-fun m!218315 () Bool)

(assert (=> b!191673 m!218315))

(declare-fun m!218317 () Bool)

(assert (=> b!191674 m!218317))

(assert (=> b!191500 d!56089))

(declare-fun b!191693 () Bool)

(declare-fun e!126160 () SeekEntryResult!689)

(declare-fun lt!95287 () SeekEntryResult!689)

(assert (=> b!191693 (= e!126160 (MissingZero!689 (index!4928 lt!95287)))))

(declare-fun b!191694 () Bool)

(declare-fun c!34506 () Bool)

(declare-fun lt!95286 () (_ BitVec 64))

(assert (=> b!191694 (= c!34506 (= lt!95286 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!126161 () SeekEntryResult!689)

(assert (=> b!191694 (= e!126161 e!126160)))

(declare-fun b!191695 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8148 (_ BitVec 32)) SeekEntryResult!689)

(assert (=> b!191695 (= e!126160 (seekKeyOrZeroReturnVacant!0 (x!20561 lt!95287) (index!4928 lt!95287) (index!4928 lt!95287) key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun d!56091 () Bool)

(declare-fun lt!95285 () SeekEntryResult!689)

(assert (=> d!56091 (and (or ((_ is Undefined!689) lt!95285) (not ((_ is Found!689) lt!95285)) (and (bvsge (index!4927 lt!95285) #b00000000000000000000000000000000) (bvslt (index!4927 lt!95285) (size!4160 (_keys!5888 thiss!1248))))) (or ((_ is Undefined!689) lt!95285) ((_ is Found!689) lt!95285) (not ((_ is MissingZero!689) lt!95285)) (and (bvsge (index!4926 lt!95285) #b00000000000000000000000000000000) (bvslt (index!4926 lt!95285) (size!4160 (_keys!5888 thiss!1248))))) (or ((_ is Undefined!689) lt!95285) ((_ is Found!689) lt!95285) ((_ is MissingZero!689) lt!95285) (not ((_ is MissingVacant!689) lt!95285)) (and (bvsge (index!4929 lt!95285) #b00000000000000000000000000000000) (bvslt (index!4929 lt!95285) (size!4160 (_keys!5888 thiss!1248))))) (or ((_ is Undefined!689) lt!95285) (ite ((_ is Found!689) lt!95285) (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4927 lt!95285)) key!828) (ite ((_ is MissingZero!689) lt!95285) (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4926 lt!95285)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!689) lt!95285) (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4929 lt!95285)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!126162 () SeekEntryResult!689)

(assert (=> d!56091 (= lt!95285 e!126162)))

(declare-fun c!34505 () Bool)

(assert (=> d!56091 (= c!34505 (and ((_ is Intermediate!689) lt!95287) (undefined!1501 lt!95287)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8148 (_ BitVec 32)) SeekEntryResult!689)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56091 (= lt!95287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9131 thiss!1248)) key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(assert (=> d!56091 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56091 (= (seekEntryOrOpen!0 key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)) lt!95285)))

(declare-fun b!191696 () Bool)

(assert (=> b!191696 (= e!126162 Undefined!689)))

(declare-fun b!191697 () Bool)

(assert (=> b!191697 (= e!126161 (Found!689 (index!4928 lt!95287)))))

(declare-fun b!191698 () Bool)

(assert (=> b!191698 (= e!126162 e!126161)))

(assert (=> b!191698 (= lt!95286 (select (arr!3838 (_keys!5888 thiss!1248)) (index!4928 lt!95287)))))

(declare-fun c!34507 () Bool)

(assert (=> b!191698 (= c!34507 (= lt!95286 key!828))))

(assert (= (and d!56091 c!34505) b!191696))

(assert (= (and d!56091 (not c!34505)) b!191698))

(assert (= (and b!191698 c!34507) b!191697))

(assert (= (and b!191698 (not c!34507)) b!191694))

(assert (= (and b!191694 c!34506) b!191693))

(assert (= (and b!191694 (not c!34506)) b!191695))

(declare-fun m!218319 () Bool)

(assert (=> b!191695 m!218319))

(declare-fun m!218321 () Bool)

(assert (=> d!56091 m!218321))

(declare-fun m!218323 () Bool)

(assert (=> d!56091 m!218323))

(declare-fun m!218325 () Bool)

(assert (=> d!56091 m!218325))

(assert (=> d!56091 m!218115))

(declare-fun m!218327 () Bool)

(assert (=> d!56091 m!218327))

(declare-fun m!218329 () Bool)

(assert (=> d!56091 m!218329))

(assert (=> d!56091 m!218323))

(declare-fun m!218331 () Bool)

(assert (=> b!191698 m!218331))

(assert (=> b!191499 d!56091))

(declare-fun d!56093 () Bool)

(assert (=> d!56093 (= (array_inv!2479 (_keys!5888 thiss!1248)) (bvsge (size!4160 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191495 d!56093))

(declare-fun d!56095 () Bool)

(assert (=> d!56095 (= (array_inv!2480 (_values!3893 thiss!1248)) (bvsge (size!4161 (_values!3893 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!191495 d!56095))

(declare-fun b!191705 () Bool)

(declare-fun e!126167 () Bool)

(assert (=> b!191705 (= e!126167 tp_is_empty!4455)))

(declare-fun mapNonEmpty!7701 () Bool)

(declare-fun mapRes!7701 () Bool)

(declare-fun tp!16908 () Bool)

(assert (=> mapNonEmpty!7701 (= mapRes!7701 (and tp!16908 e!126167))))

(declare-fun mapKey!7701 () (_ BitVec 32))

(declare-fun mapRest!7701 () (Array (_ BitVec 32) ValueCell!1884))

(declare-fun mapValue!7701 () ValueCell!1884)

(assert (=> mapNonEmpty!7701 (= mapRest!7695 (store mapRest!7701 mapKey!7701 mapValue!7701))))

(declare-fun condMapEmpty!7701 () Bool)

(declare-fun mapDefault!7701 () ValueCell!1884)

(assert (=> mapNonEmpty!7695 (= condMapEmpty!7701 (= mapRest!7695 ((as const (Array (_ BitVec 32) ValueCell!1884)) mapDefault!7701)))))

(declare-fun e!126168 () Bool)

(assert (=> mapNonEmpty!7695 (= tp!16898 (and e!126168 mapRes!7701))))

(declare-fun b!191706 () Bool)

(assert (=> b!191706 (= e!126168 tp_is_empty!4455)))

(declare-fun mapIsEmpty!7701 () Bool)

(assert (=> mapIsEmpty!7701 mapRes!7701))

(assert (= (and mapNonEmpty!7695 condMapEmpty!7701) mapIsEmpty!7701))

(assert (= (and mapNonEmpty!7695 (not condMapEmpty!7701)) mapNonEmpty!7701))

(assert (= (and mapNonEmpty!7701 ((_ is ValueCellFull!1884) mapValue!7701)) b!191705))

(assert (= (and mapNonEmpty!7695 ((_ is ValueCellFull!1884) mapDefault!7701)) b!191706))

(declare-fun m!218333 () Bool)

(assert (=> mapNonEmpty!7701 m!218333))

(declare-fun b_lambda!7433 () Bool)

(assert (= b_lambda!7429 (or (and b!191495 b_free!4683) b_lambda!7433)))

(declare-fun b_lambda!7435 () Bool)

(assert (= b_lambda!7431 (or (and b!191495 b_free!4683) b_lambda!7435)))

(check-sat (not b!191655) (not b!191620) (not b!191564) (not b_next!4683) (not bm!19338) tp_is_empty!4455 (not b!191640) (not b!191544) (not b!191638) (not d!56077) (not b!191616) (not b!191656) (not b!191615) (not bm!19345) (not bm!19342) (not bm!19357) (not b!191627) (not b!191545) (not b!191546) (not d!56089) (not d!56081) (not b!191630) b_and!11381 (not d!56083) (not bm!19340) (not b!191631) (not b!191639) (not b!191559) (not bm!19356) (not b!191643) (not d!56073) (not b_lambda!7435) (not d!56085) (not d!56091) (not d!56087) (not bm!19349) (not bm!19347) (not b!191561) (not b!191632) (not b!191695) (not bm!19339) (not b!191607) (not b!191551) (not mapNonEmpty!7701) (not b!191608) (not b!191617) (not b!191609) (not d!56071) (not b!191650) (not bm!19346) (not b_lambda!7433))
(check-sat b_and!11381 (not b_next!4683))
(get-model)

(declare-fun d!56097 () Bool)

(declare-fun get!2215 (Option!244) V!5587)

(assert (=> d!56097 (= (apply!182 lt!95256 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2215 (getValueByKey!238 (toList!1245 lt!95256) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7665 () Bool)

(assert (= bs!7665 d!56097))

(declare-fun m!218335 () Bool)

(assert (=> bs!7665 m!218335))

(assert (=> bs!7665 m!218335))

(declare-fun m!218337 () Bool)

(assert (=> bs!7665 m!218337))

(assert (=> b!191650 d!56097))

(declare-fun d!56099 () Bool)

(assert (=> d!56099 (= (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!191620 d!56099))

(assert (=> d!56083 d!56079))

(assert (=> d!56073 d!56091))

(declare-fun d!56101 () Bool)

(declare-fun e!126171 () Bool)

(assert (=> d!56101 e!126171))

(declare-fun res!90615 () Bool)

(assert (=> d!56101 (=> (not res!90615) (not e!126171))))

(declare-fun lt!95290 () SeekEntryResult!689)

(assert (=> d!56101 (= res!90615 ((_ is Found!689) lt!95290))))

(assert (=> d!56101 (= lt!95290 (seekEntryOrOpen!0 key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(assert (=> d!56101 true))

(declare-fun _$33!144 () Unit!5790)

(assert (=> d!56101 (= (choose!1045 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)) _$33!144)))

(declare-fun b!191711 () Bool)

(declare-fun res!90616 () Bool)

(assert (=> b!191711 (=> (not res!90616) (not e!126171))))

(assert (=> b!191711 (= res!90616 (inRange!0 (index!4927 lt!95290) (mask!9131 thiss!1248)))))

(declare-fun b!191712 () Bool)

(assert (=> b!191712 (= e!126171 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4927 lt!95290)) key!828))))

(assert (= (and d!56101 res!90615) b!191711))

(assert (= (and b!191711 res!90616) b!191712))

(assert (=> d!56101 m!218099))

(declare-fun m!218339 () Bool)

(assert (=> b!191711 m!218339))

(declare-fun m!218341 () Bool)

(assert (=> b!191712 m!218341))

(assert (=> d!56073 d!56101))

(assert (=> d!56073 d!56079))

(assert (=> d!56085 d!56079))

(declare-fun d!56103 () Bool)

(declare-fun c!34512 () Bool)

(assert (=> d!56103 (= c!34512 (and ((_ is Cons!2441) (toList!1245 lt!95271)) (= (_1!1774 (h!3080 (toList!1245 lt!95271))) (_1!1774 (tuple2!3529 key!828 v!309)))))))

(declare-fun e!126176 () Option!244)

(assert (=> d!56103 (= (getValueByKey!238 (toList!1245 lt!95271) (_1!1774 (tuple2!3529 key!828 v!309))) e!126176)))

(declare-fun e!126177 () Option!244)

(declare-fun b!191723 () Bool)

(assert (=> b!191723 (= e!126177 (getValueByKey!238 (t!7367 (toList!1245 lt!95271)) (_1!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun b!191721 () Bool)

(assert (=> b!191721 (= e!126176 (Some!243 (_2!1774 (h!3080 (toList!1245 lt!95271)))))))

(declare-fun b!191722 () Bool)

(assert (=> b!191722 (= e!126176 e!126177)))

(declare-fun c!34513 () Bool)

(assert (=> b!191722 (= c!34513 (and ((_ is Cons!2441) (toList!1245 lt!95271)) (not (= (_1!1774 (h!3080 (toList!1245 lt!95271))) (_1!1774 (tuple2!3529 key!828 v!309))))))))

(declare-fun b!191724 () Bool)

(assert (=> b!191724 (= e!126177 None!242)))

(assert (= (and d!56103 c!34512) b!191721))

(assert (= (and d!56103 (not c!34512)) b!191722))

(assert (= (and b!191722 c!34513) b!191723))

(assert (= (and b!191722 (not c!34513)) b!191724))

(declare-fun m!218343 () Bool)

(assert (=> b!191723 m!218343))

(assert (=> b!191655 d!56103))

(declare-fun d!56105 () Bool)

(declare-fun e!126178 () Bool)

(assert (=> d!56105 e!126178))

(declare-fun res!90618 () Bool)

(assert (=> d!56105 (=> (not res!90618) (not e!126178))))

(declare-fun lt!95293 () ListLongMap!2459)

(assert (=> d!56105 (= res!90618 (contains!1353 lt!95293 (_1!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(declare-fun lt!95291 () List!2445)

(assert (=> d!56105 (= lt!95293 (ListLongMap!2460 lt!95291))))

(declare-fun lt!95292 () Unit!5790)

(declare-fun lt!95294 () Unit!5790)

(assert (=> d!56105 (= lt!95292 lt!95294)))

(assert (=> d!56105 (= (getValueByKey!238 lt!95291 (_1!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))) (Some!243 (_2!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(assert (=> d!56105 (= lt!95294 (lemmaContainsTupThenGetReturnValue!127 lt!95291 (_1!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (_2!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(assert (=> d!56105 (= lt!95291 (insertStrictlySorted!129 (toList!1245 (ite c!34492 call!19354 (ite c!34488 call!19348 call!19352))) (_1!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (_2!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(assert (=> d!56105 (= (+!303 (ite c!34492 call!19354 (ite c!34488 call!19348 call!19352)) (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) lt!95293)))

(declare-fun b!191725 () Bool)

(declare-fun res!90617 () Bool)

(assert (=> b!191725 (=> (not res!90617) (not e!126178))))

(assert (=> b!191725 (= res!90617 (= (getValueByKey!238 (toList!1245 lt!95293) (_1!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))) (Some!243 (_2!1774 (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))))

(declare-fun b!191726 () Bool)

(assert (=> b!191726 (= e!126178 (contains!1355 (toList!1245 lt!95293) (ite (or c!34492 c!34488) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (= (and d!56105 res!90618) b!191725))

(assert (= (and b!191725 res!90617) b!191726))

(declare-fun m!218345 () Bool)

(assert (=> d!56105 m!218345))

(declare-fun m!218347 () Bool)

(assert (=> d!56105 m!218347))

(declare-fun m!218349 () Bool)

(assert (=> d!56105 m!218349))

(declare-fun m!218351 () Bool)

(assert (=> d!56105 m!218351))

(declare-fun m!218353 () Bool)

(assert (=> b!191725 m!218353))

(declare-fun m!218355 () Bool)

(assert (=> b!191726 m!218355))

(assert (=> bm!19346 d!56105))

(declare-fun d!56107 () Bool)

(declare-fun res!90623 () Bool)

(declare-fun e!126183 () Bool)

(assert (=> d!56107 (=> res!90623 e!126183)))

(assert (=> d!56107 (= res!90623 (and ((_ is Cons!2441) (toList!1245 lt!95133)) (= (_1!1774 (h!3080 (toList!1245 lt!95133))) key!828)))))

(assert (=> d!56107 (= (containsKey!242 (toList!1245 lt!95133) key!828) e!126183)))

(declare-fun b!191731 () Bool)

(declare-fun e!126184 () Bool)

(assert (=> b!191731 (= e!126183 e!126184)))

(declare-fun res!90624 () Bool)

(assert (=> b!191731 (=> (not res!90624) (not e!126184))))

(assert (=> b!191731 (= res!90624 (and (or (not ((_ is Cons!2441) (toList!1245 lt!95133))) (bvsle (_1!1774 (h!3080 (toList!1245 lt!95133))) key!828)) ((_ is Cons!2441) (toList!1245 lt!95133)) (bvslt (_1!1774 (h!3080 (toList!1245 lt!95133))) key!828)))))

(declare-fun b!191732 () Bool)

(assert (=> b!191732 (= e!126184 (containsKey!242 (t!7367 (toList!1245 lt!95133)) key!828))))

(assert (= (and d!56107 (not res!90623)) b!191731))

(assert (= (and b!191731 res!90624) b!191732))

(declare-fun m!218357 () Bool)

(assert (=> b!191732 m!218357))

(assert (=> d!56077 d!56107))

(declare-fun d!56109 () Bool)

(declare-fun e!126185 () Bool)

(assert (=> d!56109 e!126185))

(declare-fun res!90626 () Bool)

(assert (=> d!56109 (=> (not res!90626) (not e!126185))))

(declare-fun lt!95297 () ListLongMap!2459)

(assert (=> d!56109 (= res!90626 (contains!1353 lt!95297 (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(declare-fun lt!95295 () List!2445)

(assert (=> d!56109 (= lt!95297 (ListLongMap!2460 lt!95295))))

(declare-fun lt!95296 () Unit!5790)

(declare-fun lt!95298 () Unit!5790)

(assert (=> d!56109 (= lt!95296 lt!95298)))

(assert (=> d!56109 (= (getValueByKey!238 lt!95295 (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (=> d!56109 (= lt!95298 (lemmaContainsTupThenGetReturnValue!127 lt!95295 (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (=> d!56109 (= lt!95295 (insertStrictlySorted!129 (toList!1245 call!19343) (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (=> d!56109 (= (+!303 call!19343 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))) lt!95297)))

(declare-fun b!191733 () Bool)

(declare-fun res!90625 () Bool)

(assert (=> b!191733 (=> (not res!90625) (not e!126185))))

(assert (=> b!191733 (= res!90625 (= (getValueByKey!238 (toList!1245 lt!95297) (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(declare-fun b!191734 () Bool)

(assert (=> b!191734 (= e!126185 (contains!1355 (toList!1245 lt!95297) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))

(assert (= (and d!56109 res!90626) b!191733))

(assert (= (and b!191733 res!90625) b!191734))

(declare-fun m!218359 () Bool)

(assert (=> d!56109 m!218359))

(declare-fun m!218361 () Bool)

(assert (=> d!56109 m!218361))

(declare-fun m!218363 () Bool)

(assert (=> d!56109 m!218363))

(declare-fun m!218365 () Bool)

(assert (=> d!56109 m!218365))

(declare-fun m!218367 () Bool)

(assert (=> b!191733 m!218367))

(declare-fun m!218369 () Bool)

(assert (=> b!191734 m!218369))

(assert (=> b!191607 d!56109))

(declare-fun lt!95301 () Bool)

(declare-fun d!56111 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!152 (List!2445) (InoxSet tuple2!3528))

(assert (=> d!56111 (= lt!95301 (select (content!152 (toList!1245 lt!95271)) (tuple2!3529 key!828 v!309)))))

(declare-fun e!126190 () Bool)

(assert (=> d!56111 (= lt!95301 e!126190)))

(declare-fun res!90632 () Bool)

(assert (=> d!56111 (=> (not res!90632) (not e!126190))))

(assert (=> d!56111 (= res!90632 ((_ is Cons!2441) (toList!1245 lt!95271)))))

(assert (=> d!56111 (= (contains!1355 (toList!1245 lt!95271) (tuple2!3529 key!828 v!309)) lt!95301)))

(declare-fun b!191739 () Bool)

(declare-fun e!126191 () Bool)

(assert (=> b!191739 (= e!126190 e!126191)))

(declare-fun res!90631 () Bool)

(assert (=> b!191739 (=> res!90631 e!126191)))

(assert (=> b!191739 (= res!90631 (= (h!3080 (toList!1245 lt!95271)) (tuple2!3529 key!828 v!309)))))

(declare-fun b!191740 () Bool)

(assert (=> b!191740 (= e!126191 (contains!1355 (t!7367 (toList!1245 lt!95271)) (tuple2!3529 key!828 v!309)))))

(assert (= (and d!56111 res!90632) b!191739))

(assert (= (and b!191739 (not res!90631)) b!191740))

(declare-fun m!218371 () Bool)

(assert (=> d!56111 m!218371))

(declare-fun m!218373 () Bool)

(assert (=> d!56111 m!218373))

(declare-fun m!218375 () Bool)

(assert (=> b!191740 m!218375))

(assert (=> b!191656 d!56111))

(declare-fun d!56113 () Bool)

(declare-fun e!126193 () Bool)

(assert (=> d!56113 e!126193))

(declare-fun res!90633 () Bool)

(assert (=> d!56113 (=> res!90633 e!126193)))

(declare-fun lt!95303 () Bool)

(assert (=> d!56113 (= res!90633 (not lt!95303))))

(declare-fun lt!95304 () Bool)

(assert (=> d!56113 (= lt!95303 lt!95304)))

(declare-fun lt!95305 () Unit!5790)

(declare-fun e!126192 () Unit!5790)

(assert (=> d!56113 (= lt!95305 e!126192)))

(declare-fun c!34514 () Bool)

(assert (=> d!56113 (= c!34514 lt!95304)))

(assert (=> d!56113 (= lt!95304 (containsKey!242 (toList!1245 lt!95271) (_1!1774 (tuple2!3529 key!828 v!309))))))

(assert (=> d!56113 (= (contains!1353 lt!95271 (_1!1774 (tuple2!3529 key!828 v!309))) lt!95303)))

(declare-fun b!191741 () Bool)

(declare-fun lt!95302 () Unit!5790)

(assert (=> b!191741 (= e!126192 lt!95302)))

(assert (=> b!191741 (= lt!95302 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95271) (_1!1774 (tuple2!3529 key!828 v!309))))))

(assert (=> b!191741 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95271) (_1!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun b!191742 () Bool)

(declare-fun Unit!5799 () Unit!5790)

(assert (=> b!191742 (= e!126192 Unit!5799)))

(declare-fun b!191743 () Bool)

(assert (=> b!191743 (= e!126193 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95271) (_1!1774 (tuple2!3529 key!828 v!309)))))))

(assert (= (and d!56113 c!34514) b!191741))

(assert (= (and d!56113 (not c!34514)) b!191742))

(assert (= (and d!56113 (not res!90633)) b!191743))

(declare-fun m!218377 () Bool)

(assert (=> d!56113 m!218377))

(declare-fun m!218379 () Bool)

(assert (=> b!191741 m!218379))

(assert (=> b!191741 m!218305))

(assert (=> b!191741 m!218305))

(declare-fun m!218381 () Bool)

(assert (=> b!191741 m!218381))

(assert (=> b!191743 m!218305))

(assert (=> b!191743 m!218305))

(assert (=> b!191743 m!218381))

(assert (=> d!56087 d!56113))

(declare-fun c!34515 () Bool)

(declare-fun d!56115 () Bool)

(assert (=> d!56115 (= c!34515 (and ((_ is Cons!2441) lt!95269) (= (_1!1774 (h!3080 lt!95269)) (_1!1774 (tuple2!3529 key!828 v!309)))))))

(declare-fun e!126194 () Option!244)

(assert (=> d!56115 (= (getValueByKey!238 lt!95269 (_1!1774 (tuple2!3529 key!828 v!309))) e!126194)))

(declare-fun b!191746 () Bool)

(declare-fun e!126195 () Option!244)

(assert (=> b!191746 (= e!126195 (getValueByKey!238 (t!7367 lt!95269) (_1!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun b!191744 () Bool)

(assert (=> b!191744 (= e!126194 (Some!243 (_2!1774 (h!3080 lt!95269))))))

(declare-fun b!191745 () Bool)

(assert (=> b!191745 (= e!126194 e!126195)))

(declare-fun c!34516 () Bool)

(assert (=> b!191745 (= c!34516 (and ((_ is Cons!2441) lt!95269) (not (= (_1!1774 (h!3080 lt!95269)) (_1!1774 (tuple2!3529 key!828 v!309))))))))

(declare-fun b!191747 () Bool)

(assert (=> b!191747 (= e!126195 None!242)))

(assert (= (and d!56115 c!34515) b!191744))

(assert (= (and d!56115 (not c!34515)) b!191745))

(assert (= (and b!191745 c!34516) b!191746))

(assert (= (and b!191745 (not c!34516)) b!191747))

(declare-fun m!218383 () Bool)

(assert (=> b!191746 m!218383))

(assert (=> d!56087 d!56115))

(declare-fun d!56117 () Bool)

(assert (=> d!56117 (= (getValueByKey!238 lt!95269 (_1!1774 (tuple2!3529 key!828 v!309))) (Some!243 (_2!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun lt!95308 () Unit!5790)

(declare-fun choose!1048 (List!2445 (_ BitVec 64) V!5587) Unit!5790)

(assert (=> d!56117 (= lt!95308 (choose!1048 lt!95269 (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun e!126198 () Bool)

(assert (=> d!56117 e!126198))

(declare-fun res!90638 () Bool)

(assert (=> d!56117 (=> (not res!90638) (not e!126198))))

(declare-fun isStrictlySorted!350 (List!2445) Bool)

(assert (=> d!56117 (= res!90638 (isStrictlySorted!350 lt!95269))))

(assert (=> d!56117 (= (lemmaContainsTupThenGetReturnValue!127 lt!95269 (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))) lt!95308)))

(declare-fun b!191752 () Bool)

(declare-fun res!90639 () Bool)

(assert (=> b!191752 (=> (not res!90639) (not e!126198))))

(assert (=> b!191752 (= res!90639 (containsKey!242 lt!95269 (_1!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun b!191753 () Bool)

(assert (=> b!191753 (= e!126198 (contains!1355 lt!95269 (tuple2!3529 (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309)))))))

(assert (= (and d!56117 res!90638) b!191752))

(assert (= (and b!191752 res!90639) b!191753))

(assert (=> d!56117 m!218299))

(declare-fun m!218385 () Bool)

(assert (=> d!56117 m!218385))

(declare-fun m!218387 () Bool)

(assert (=> d!56117 m!218387))

(declare-fun m!218389 () Bool)

(assert (=> b!191752 m!218389))

(declare-fun m!218391 () Bool)

(assert (=> b!191753 m!218391))

(assert (=> d!56087 d!56117))

(declare-fun b!191774 () Bool)

(declare-fun e!126213 () List!2445)

(declare-fun call!19368 () List!2445)

(assert (=> b!191774 (= e!126213 call!19368)))

(declare-fun b!191775 () Bool)

(declare-fun res!90644 () Bool)

(declare-fun e!126209 () Bool)

(assert (=> b!191775 (=> (not res!90644) (not e!126209))))

(declare-fun lt!95311 () List!2445)

(assert (=> b!191775 (= res!90644 (containsKey!242 lt!95311 (_1!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun bm!19364 () Bool)

(declare-fun call!19369 () List!2445)

(assert (=> bm!19364 (= call!19369 call!19368)))

(declare-fun b!191776 () Bool)

(declare-fun e!126210 () List!2445)

(assert (=> b!191776 (= e!126210 (insertStrictlySorted!129 (t!7367 (toList!1245 lt!95133)) (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun b!191777 () Bool)

(declare-fun e!126212 () List!2445)

(assert (=> b!191777 (= e!126212 e!126213)))

(declare-fun c!34527 () Bool)

(assert (=> b!191777 (= c!34527 (and ((_ is Cons!2441) (toList!1245 lt!95133)) (= (_1!1774 (h!3080 (toList!1245 lt!95133))) (_1!1774 (tuple2!3529 key!828 v!309)))))))

(declare-fun bm!19365 () Bool)

(declare-fun call!19367 () List!2445)

(assert (=> bm!19365 (= call!19368 call!19367)))

(declare-fun b!191778 () Bool)

(declare-fun e!126211 () List!2445)

(assert (=> b!191778 (= e!126211 call!19369)))

(declare-fun b!191779 () Bool)

(declare-fun c!34525 () Bool)

(assert (=> b!191779 (= c!34525 (and ((_ is Cons!2441) (toList!1245 lt!95133)) (bvsgt (_1!1774 (h!3080 (toList!1245 lt!95133))) (_1!1774 (tuple2!3529 key!828 v!309)))))))

(assert (=> b!191779 (= e!126213 e!126211)))

(declare-fun b!191780 () Bool)

(assert (=> b!191780 (= e!126210 (ite c!34527 (t!7367 (toList!1245 lt!95133)) (ite c!34525 (Cons!2441 (h!3080 (toList!1245 lt!95133)) (t!7367 (toList!1245 lt!95133))) Nil!2442)))))

(declare-fun b!191781 () Bool)

(assert (=> b!191781 (= e!126211 call!19369)))

(declare-fun b!191782 () Bool)

(assert (=> b!191782 (= e!126209 (contains!1355 lt!95311 (tuple2!3529 (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309)))))))

(declare-fun d!56119 () Bool)

(assert (=> d!56119 e!126209))

(declare-fun res!90645 () Bool)

(assert (=> d!56119 (=> (not res!90645) (not e!126209))))

(assert (=> d!56119 (= res!90645 (isStrictlySorted!350 lt!95311))))

(assert (=> d!56119 (= lt!95311 e!126212)))

(declare-fun c!34526 () Bool)

(assert (=> d!56119 (= c!34526 (and ((_ is Cons!2441) (toList!1245 lt!95133)) (bvslt (_1!1774 (h!3080 (toList!1245 lt!95133))) (_1!1774 (tuple2!3529 key!828 v!309)))))))

(assert (=> d!56119 (isStrictlySorted!350 (toList!1245 lt!95133))))

(assert (=> d!56119 (= (insertStrictlySorted!129 (toList!1245 lt!95133) (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))) lt!95311)))

(declare-fun bm!19366 () Bool)

(declare-fun $colon$colon!100 (List!2445 tuple2!3528) List!2445)

(assert (=> bm!19366 (= call!19367 ($colon$colon!100 e!126210 (ite c!34526 (h!3080 (toList!1245 lt!95133)) (tuple2!3529 (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))))))))

(declare-fun c!34528 () Bool)

(assert (=> bm!19366 (= c!34528 c!34526)))

(declare-fun b!191783 () Bool)

(assert (=> b!191783 (= e!126212 call!19367)))

(assert (= (and d!56119 c!34526) b!191783))

(assert (= (and d!56119 (not c!34526)) b!191777))

(assert (= (and b!191777 c!34527) b!191774))

(assert (= (and b!191777 (not c!34527)) b!191779))

(assert (= (and b!191779 c!34525) b!191781))

(assert (= (and b!191779 (not c!34525)) b!191778))

(assert (= (or b!191781 b!191778) bm!19364))

(assert (= (or b!191774 bm!19364) bm!19365))

(assert (= (or b!191783 bm!19365) bm!19366))

(assert (= (and bm!19366 c!34528) b!191776))

(assert (= (and bm!19366 (not c!34528)) b!191780))

(assert (= (and d!56119 res!90645) b!191775))

(assert (= (and b!191775 res!90644) b!191782))

(declare-fun m!218393 () Bool)

(assert (=> b!191782 m!218393))

(declare-fun m!218395 () Bool)

(assert (=> b!191776 m!218395))

(declare-fun m!218397 () Bool)

(assert (=> b!191775 m!218397))

(declare-fun m!218399 () Bool)

(assert (=> bm!19366 m!218399))

(declare-fun m!218401 () Bool)

(assert (=> d!56119 m!218401))

(declare-fun m!218403 () Bool)

(assert (=> d!56119 m!218403))

(assert (=> d!56087 d!56119))

(declare-fun d!56121 () Bool)

(assert (=> d!56121 (= (apply!182 lt!95227 lt!95224) (get!2215 (getValueByKey!238 (toList!1245 lt!95227) lt!95224)))))

(declare-fun bs!7666 () Bool)

(assert (= bs!7666 d!56121))

(declare-fun m!218405 () Bool)

(assert (=> bs!7666 m!218405))

(assert (=> bs!7666 m!218405))

(declare-fun m!218407 () Bool)

(assert (=> bs!7666 m!218407))

(assert (=> b!191615 d!56121))

(declare-fun d!56123 () Bool)

(assert (=> d!56123 (= (apply!182 (+!303 lt!95227 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))) lt!95224) (get!2215 (getValueByKey!238 (toList!1245 (+!303 lt!95227 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248)))) lt!95224)))))

(declare-fun bs!7667 () Bool)

(assert (= bs!7667 d!56123))

(declare-fun m!218409 () Bool)

(assert (=> bs!7667 m!218409))

(assert (=> bs!7667 m!218409))

(declare-fun m!218411 () Bool)

(assert (=> bs!7667 m!218411))

(assert (=> b!191615 d!56123))

(declare-fun d!56125 () Bool)

(assert (=> d!56125 (= (apply!182 (+!303 lt!95227 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))) lt!95224) (apply!182 lt!95227 lt!95224))))

(declare-fun lt!95314 () Unit!5790)

(declare-fun choose!1049 (ListLongMap!2459 (_ BitVec 64) V!5587 (_ BitVec 64)) Unit!5790)

(assert (=> d!56125 (= lt!95314 (choose!1049 lt!95227 lt!95221 (minValue!3751 thiss!1248) lt!95224))))

(declare-fun e!126216 () Bool)

(assert (=> d!56125 e!126216))

(declare-fun res!90648 () Bool)

(assert (=> d!56125 (=> (not res!90648) (not e!126216))))

(assert (=> d!56125 (= res!90648 (contains!1353 lt!95227 lt!95224))))

(assert (=> d!56125 (= (addApplyDifferent!158 lt!95227 lt!95221 (minValue!3751 thiss!1248) lt!95224) lt!95314)))

(declare-fun b!191787 () Bool)

(assert (=> b!191787 (= e!126216 (not (= lt!95224 lt!95221)))))

(assert (= (and d!56125 res!90648) b!191787))

(assert (=> d!56125 m!218215))

(assert (=> d!56125 m!218219))

(assert (=> d!56125 m!218219))

(assert (=> d!56125 m!218221))

(declare-fun m!218413 () Bool)

(assert (=> d!56125 m!218413))

(declare-fun m!218415 () Bool)

(assert (=> d!56125 m!218415))

(assert (=> b!191615 d!56125))

(declare-fun d!56127 () Bool)

(declare-fun e!126218 () Bool)

(assert (=> d!56127 e!126218))

(declare-fun res!90649 () Bool)

(assert (=> d!56127 (=> res!90649 e!126218)))

(declare-fun lt!95316 () Bool)

(assert (=> d!56127 (= res!90649 (not lt!95316))))

(declare-fun lt!95317 () Bool)

(assert (=> d!56127 (= lt!95316 lt!95317)))

(declare-fun lt!95318 () Unit!5790)

(declare-fun e!126217 () Unit!5790)

(assert (=> d!56127 (= lt!95318 e!126217)))

(declare-fun c!34529 () Bool)

(assert (=> d!56127 (= c!34529 lt!95317)))

(assert (=> d!56127 (= lt!95317 (containsKey!242 (toList!1245 (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))) lt!95229))))

(assert (=> d!56127 (= (contains!1353 (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))) lt!95229) lt!95316)))

(declare-fun b!191788 () Bool)

(declare-fun lt!95315 () Unit!5790)

(assert (=> b!191788 (= e!126217 lt!95315)))

(assert (=> b!191788 (= lt!95315 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))) lt!95229))))

(assert (=> b!191788 (isDefined!192 (getValueByKey!238 (toList!1245 (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))) lt!95229))))

(declare-fun b!191789 () Bool)

(declare-fun Unit!5800 () Unit!5790)

(assert (=> b!191789 (= e!126217 Unit!5800)))

(declare-fun b!191790 () Bool)

(assert (=> b!191790 (= e!126218 (isDefined!192 (getValueByKey!238 (toList!1245 (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))) lt!95229)))))

(assert (= (and d!56127 c!34529) b!191788))

(assert (= (and d!56127 (not c!34529)) b!191789))

(assert (= (and d!56127 (not res!90649)) b!191790))

(declare-fun m!218417 () Bool)

(assert (=> d!56127 m!218417))

(declare-fun m!218419 () Bool)

(assert (=> b!191788 m!218419))

(declare-fun m!218421 () Bool)

(assert (=> b!191788 m!218421))

(assert (=> b!191788 m!218421))

(declare-fun m!218423 () Bool)

(assert (=> b!191788 m!218423))

(assert (=> b!191790 m!218421))

(assert (=> b!191790 m!218421))

(assert (=> b!191790 m!218423))

(assert (=> b!191615 d!56127))

(declare-fun d!56129 () Bool)

(assert (=> d!56129 (= (apply!182 lt!95238 lt!95232) (get!2215 (getValueByKey!238 (toList!1245 lt!95238) lt!95232)))))

(declare-fun bs!7668 () Bool)

(assert (= bs!7668 d!56129))

(declare-fun m!218425 () Bool)

(assert (=> bs!7668 m!218425))

(assert (=> bs!7668 m!218425))

(declare-fun m!218427 () Bool)

(assert (=> bs!7668 m!218427))

(assert (=> b!191615 d!56129))

(declare-fun d!56131 () Bool)

(assert (=> d!56131 (= (apply!182 lt!95236 lt!95228) (get!2215 (getValueByKey!238 (toList!1245 lt!95236) lt!95228)))))

(declare-fun bs!7669 () Bool)

(assert (= bs!7669 d!56131))

(declare-fun m!218429 () Bool)

(assert (=> bs!7669 m!218429))

(assert (=> bs!7669 m!218429))

(declare-fun m!218431 () Bool)

(assert (=> bs!7669 m!218431))

(assert (=> b!191615 d!56131))

(declare-fun d!56133 () Bool)

(declare-fun e!126219 () Bool)

(assert (=> d!56133 e!126219))

(declare-fun res!90651 () Bool)

(assert (=> d!56133 (=> (not res!90651) (not e!126219))))

(declare-fun lt!95321 () ListLongMap!2459)

(assert (=> d!56133 (= res!90651 (contains!1353 lt!95321 (_1!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))))))

(declare-fun lt!95319 () List!2445)

(assert (=> d!56133 (= lt!95321 (ListLongMap!2460 lt!95319))))

(declare-fun lt!95320 () Unit!5790)

(declare-fun lt!95322 () Unit!5790)

(assert (=> d!56133 (= lt!95320 lt!95322)))

(assert (=> d!56133 (= (getValueByKey!238 lt!95319 (_1!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56133 (= lt!95322 (lemmaContainsTupThenGetReturnValue!127 lt!95319 (_1!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56133 (= lt!95319 (insertStrictlySorted!129 (toList!1245 lt!95226) (_1!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56133 (= (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))) lt!95321)))

(declare-fun b!191791 () Bool)

(declare-fun res!90650 () Bool)

(assert (=> b!191791 (=> (not res!90650) (not e!126219))))

(assert (=> b!191791 (= res!90650 (= (getValueByKey!238 (toList!1245 lt!95321) (_1!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))))))))

(declare-fun b!191792 () Bool)

(assert (=> b!191792 (= e!126219 (contains!1355 (toList!1245 lt!95321) (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))))))

(assert (= (and d!56133 res!90651) b!191791))

(assert (= (and b!191791 res!90650) b!191792))

(declare-fun m!218433 () Bool)

(assert (=> d!56133 m!218433))

(declare-fun m!218435 () Bool)

(assert (=> d!56133 m!218435))

(declare-fun m!218437 () Bool)

(assert (=> d!56133 m!218437))

(declare-fun m!218439 () Bool)

(assert (=> d!56133 m!218439))

(declare-fun m!218441 () Bool)

(assert (=> b!191791 m!218441))

(declare-fun m!218443 () Bool)

(assert (=> b!191792 m!218443))

(assert (=> b!191615 d!56133))

(declare-fun d!56135 () Bool)

(declare-fun e!126220 () Bool)

(assert (=> d!56135 e!126220))

(declare-fun res!90653 () Bool)

(assert (=> d!56135 (=> (not res!90653) (not e!126220))))

(declare-fun lt!95325 () ListLongMap!2459)

(assert (=> d!56135 (= res!90653 (contains!1353 lt!95325 (_1!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248)))))))

(declare-fun lt!95323 () List!2445)

(assert (=> d!56135 (= lt!95325 (ListLongMap!2460 lt!95323))))

(declare-fun lt!95324 () Unit!5790)

(declare-fun lt!95326 () Unit!5790)

(assert (=> d!56135 (= lt!95324 lt!95326)))

(assert (=> d!56135 (= (getValueByKey!238 lt!95323 (_1!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248)))))))

(assert (=> d!56135 (= lt!95326 (lemmaContainsTupThenGetReturnValue!127 lt!95323 (_1!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248)))))))

(assert (=> d!56135 (= lt!95323 (insertStrictlySorted!129 (toList!1245 lt!95238) (_1!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248)))))))

(assert (=> d!56135 (= (+!303 lt!95238 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))) lt!95325)))

(declare-fun b!191793 () Bool)

(declare-fun res!90652 () Bool)

(assert (=> b!191793 (=> (not res!90652) (not e!126220))))

(assert (=> b!191793 (= res!90652 (= (getValueByKey!238 (toList!1245 lt!95325) (_1!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))))))))

(declare-fun b!191794 () Bool)

(assert (=> b!191794 (= e!126220 (contains!1355 (toList!1245 lt!95325) (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))))))

(assert (= (and d!56135 res!90653) b!191793))

(assert (= (and b!191793 res!90652) b!191794))

(declare-fun m!218445 () Bool)

(assert (=> d!56135 m!218445))

(declare-fun m!218447 () Bool)

(assert (=> d!56135 m!218447))

(declare-fun m!218449 () Bool)

(assert (=> d!56135 m!218449))

(declare-fun m!218451 () Bool)

(assert (=> d!56135 m!218451))

(declare-fun m!218453 () Bool)

(assert (=> b!191793 m!218453))

(declare-fun m!218455 () Bool)

(assert (=> b!191794 m!218455))

(assert (=> b!191615 d!56135))

(declare-fun d!56137 () Bool)

(assert (=> d!56137 (= (apply!182 (+!303 lt!95238 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))) lt!95232) (get!2215 (getValueByKey!238 (toList!1245 (+!303 lt!95238 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248)))) lt!95232)))))

(declare-fun bs!7670 () Bool)

(assert (= bs!7670 d!56137))

(declare-fun m!218457 () Bool)

(assert (=> bs!7670 m!218457))

(assert (=> bs!7670 m!218457))

(declare-fun m!218459 () Bool)

(assert (=> bs!7670 m!218459))

(assert (=> b!191615 d!56137))

(declare-fun b!191819 () Bool)

(declare-fun e!126240 () Bool)

(declare-fun e!126238 () Bool)

(assert (=> b!191819 (= e!126240 e!126238)))

(declare-fun c!34539 () Bool)

(declare-fun e!126239 () Bool)

(assert (=> b!191819 (= c!34539 e!126239)))

(declare-fun res!90665 () Bool)

(assert (=> b!191819 (=> (not res!90665) (not e!126239))))

(assert (=> b!191819 (= res!90665 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191820 () Bool)

(declare-fun lt!95341 () Unit!5790)

(declare-fun lt!95347 () Unit!5790)

(assert (=> b!191820 (= lt!95341 lt!95347)))

(declare-fun lt!95346 () (_ BitVec 64))

(declare-fun lt!95343 () ListLongMap!2459)

(declare-fun lt!95345 () V!5587)

(declare-fun lt!95342 () (_ BitVec 64))

(assert (=> b!191820 (not (contains!1353 (+!303 lt!95343 (tuple2!3529 lt!95346 lt!95345)) lt!95342))))

(declare-fun addStillNotContains!97 (ListLongMap!2459 (_ BitVec 64) V!5587 (_ BitVec 64)) Unit!5790)

(assert (=> b!191820 (= lt!95347 (addStillNotContains!97 lt!95343 lt!95346 lt!95345 lt!95342))))

(assert (=> b!191820 (= lt!95342 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!191820 (= lt!95345 (get!2214 (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!191820 (= lt!95346 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!19372 () ListLongMap!2459)

(assert (=> b!191820 (= lt!95343 call!19372)))

(declare-fun e!126237 () ListLongMap!2459)

(assert (=> b!191820 (= e!126237 (+!303 call!19372 (tuple2!3529 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000) (get!2214 (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!191821 () Bool)

(assert (=> b!191821 (= e!126239 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191821 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!191822 () Bool)

(declare-fun e!126235 () Bool)

(assert (=> b!191822 (= e!126238 e!126235)))

(declare-fun c!34540 () Bool)

(assert (=> b!191822 (= c!34540 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191823 () Bool)

(declare-fun lt!95344 () ListLongMap!2459)

(declare-fun isEmpty!488 (ListLongMap!2459) Bool)

(assert (=> b!191823 (= e!126235 (isEmpty!488 lt!95344))))

(declare-fun b!191824 () Bool)

(declare-fun e!126241 () ListLongMap!2459)

(assert (=> b!191824 (= e!126241 e!126237)))

(declare-fun c!34541 () Bool)

(assert (=> b!191824 (= c!34541 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191825 () Bool)

(assert (=> b!191825 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> b!191825 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4161 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))))))))

(declare-fun e!126236 () Bool)

(assert (=> b!191825 (= e!126236 (= (apply!182 lt!95344 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) (get!2214 (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!19369 () Bool)

(assert (=> bm!19369 (= call!19372 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3910 thiss!1248)))))

(declare-fun b!191826 () Bool)

(assert (=> b!191826 (= e!126238 e!126236)))

(assert (=> b!191826 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun res!90662 () Bool)

(assert (=> b!191826 (= res!90662 (contains!1353 lt!95344 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191826 (=> (not res!90662) (not e!126236))))

(declare-fun b!191827 () Bool)

(assert (=> b!191827 (= e!126237 call!19372)))

(declare-fun d!56139 () Bool)

(assert (=> d!56139 e!126240))

(declare-fun res!90664 () Bool)

(assert (=> d!56139 (=> (not res!90664) (not e!126240))))

(assert (=> d!56139 (= res!90664 (not (contains!1353 lt!95344 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56139 (= lt!95344 e!126241)))

(declare-fun c!34538 () Bool)

(assert (=> d!56139 (= c!34538 (bvsge #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56139 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56139 (= (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)) lt!95344)))

(declare-fun b!191828 () Bool)

(assert (=> b!191828 (= e!126235 (= lt!95344 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3910 thiss!1248))))))

(declare-fun b!191829 () Bool)

(assert (=> b!191829 (= e!126241 (ListLongMap!2460 Nil!2442))))

(declare-fun b!191830 () Bool)

(declare-fun res!90663 () Bool)

(assert (=> b!191830 (=> (not res!90663) (not e!126240))))

(assert (=> b!191830 (= res!90663 (not (contains!1353 lt!95344 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56139 c!34538) b!191829))

(assert (= (and d!56139 (not c!34538)) b!191824))

(assert (= (and b!191824 c!34541) b!191820))

(assert (= (and b!191824 (not c!34541)) b!191827))

(assert (= (or b!191820 b!191827) bm!19369))

(assert (= (and d!56139 res!90664) b!191830))

(assert (= (and b!191830 res!90663) b!191819))

(assert (= (and b!191819 res!90665) b!191821))

(assert (= (and b!191819 c!34539) b!191826))

(assert (= (and b!191819 (not c!34539)) b!191822))

(assert (= (and b!191826 res!90662) b!191825))

(assert (= (and b!191822 c!34540) b!191828))

(assert (= (and b!191822 (not c!34540)) b!191823))

(declare-fun b_lambda!7437 () Bool)

(assert (=> (not b_lambda!7437) (not b!191820)))

(assert (=> b!191820 t!7370))

(declare-fun b_and!11383 () Bool)

(assert (= b_and!11381 (and (=> t!7370 result!4911) b_and!11383)))

(declare-fun b_lambda!7439 () Bool)

(assert (=> (not b_lambda!7439) (not b!191825)))

(assert (=> b!191825 t!7370))

(declare-fun b_and!11385 () Bool)

(assert (= b_and!11383 (and (=> t!7370 result!4911) b_and!11385)))

(declare-fun m!218461 () Bool)

(assert (=> b!191830 m!218461))

(declare-fun m!218463 () Bool)

(assert (=> d!56139 m!218463))

(assert (=> d!56139 m!218115))

(declare-fun m!218465 () Bool)

(assert (=> b!191828 m!218465))

(assert (=> b!191820 m!218187))

(declare-fun m!218467 () Bool)

(assert (=> b!191820 m!218467))

(assert (=> b!191820 m!218191))

(declare-fun m!218469 () Bool)

(assert (=> b!191820 m!218469))

(assert (=> b!191820 m!218193))

(assert (=> b!191820 m!218469))

(declare-fun m!218471 () Bool)

(assert (=> b!191820 m!218471))

(declare-fun m!218473 () Bool)

(assert (=> b!191820 m!218473))

(assert (=> b!191820 m!218191))

(assert (=> b!191820 m!218193))

(assert (=> b!191820 m!218195))

(assert (=> b!191826 m!218187))

(assert (=> b!191826 m!218187))

(declare-fun m!218475 () Bool)

(assert (=> b!191826 m!218475))

(declare-fun m!218477 () Bool)

(assert (=> b!191823 m!218477))

(assert (=> bm!19369 m!218465))

(assert (=> b!191825 m!218187))

(assert (=> b!191825 m!218187))

(declare-fun m!218479 () Bool)

(assert (=> b!191825 m!218479))

(assert (=> b!191825 m!218191))

(assert (=> b!191825 m!218193))

(assert (=> b!191825 m!218191))

(assert (=> b!191825 m!218193))

(assert (=> b!191825 m!218195))

(assert (=> b!191821 m!218187))

(assert (=> b!191821 m!218187))

(assert (=> b!191821 m!218235))

(assert (=> b!191824 m!218187))

(assert (=> b!191824 m!218187))

(assert (=> b!191824 m!218235))

(assert (=> b!191615 d!56139))

(declare-fun d!56141 () Bool)

(assert (=> d!56141 (= (apply!182 (+!303 lt!95236 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))) lt!95228) (apply!182 lt!95236 lt!95228))))

(declare-fun lt!95348 () Unit!5790)

(assert (=> d!56141 (= lt!95348 (choose!1049 lt!95236 lt!95225 (zeroValue!3751 thiss!1248) lt!95228))))

(declare-fun e!126242 () Bool)

(assert (=> d!56141 e!126242))

(declare-fun res!90666 () Bool)

(assert (=> d!56141 (=> (not res!90666) (not e!126242))))

(assert (=> d!56141 (= res!90666 (contains!1353 lt!95236 lt!95228))))

(assert (=> d!56141 (= (addApplyDifferent!158 lt!95236 lt!95225 (zeroValue!3751 thiss!1248) lt!95228) lt!95348)))

(declare-fun b!191831 () Bool)

(assert (=> b!191831 (= e!126242 (not (= lt!95228 lt!95225)))))

(assert (= (and d!56141 res!90666) b!191831))

(assert (=> d!56141 m!218227))

(assert (=> d!56141 m!218211))

(assert (=> d!56141 m!218211))

(assert (=> d!56141 m!218229))

(declare-fun m!218481 () Bool)

(assert (=> d!56141 m!218481))

(declare-fun m!218483 () Bool)

(assert (=> d!56141 m!218483))

(assert (=> b!191615 d!56141))

(declare-fun d!56143 () Bool)

(assert (=> d!56143 (= (apply!182 (+!303 lt!95238 (tuple2!3529 lt!95231 (minValue!3751 thiss!1248))) lt!95232) (apply!182 lt!95238 lt!95232))))

(declare-fun lt!95349 () Unit!5790)

(assert (=> d!56143 (= lt!95349 (choose!1049 lt!95238 lt!95231 (minValue!3751 thiss!1248) lt!95232))))

(declare-fun e!126243 () Bool)

(assert (=> d!56143 e!126243))

(declare-fun res!90667 () Bool)

(assert (=> d!56143 (=> (not res!90667) (not e!126243))))

(assert (=> d!56143 (= res!90667 (contains!1353 lt!95238 lt!95232))))

(assert (=> d!56143 (= (addApplyDifferent!158 lt!95238 lt!95231 (minValue!3751 thiss!1248) lt!95232) lt!95349)))

(declare-fun b!191832 () Bool)

(assert (=> b!191832 (= e!126243 (not (= lt!95232 lt!95231)))))

(assert (= (and d!56143 res!90667) b!191832))

(assert (=> d!56143 m!218217))

(assert (=> d!56143 m!218207))

(assert (=> d!56143 m!218207))

(assert (=> d!56143 m!218213))

(declare-fun m!218485 () Bool)

(assert (=> d!56143 m!218485))

(declare-fun m!218487 () Bool)

(assert (=> d!56143 m!218487))

(assert (=> b!191615 d!56143))

(declare-fun d!56145 () Bool)

(declare-fun e!126244 () Bool)

(assert (=> d!56145 e!126244))

(declare-fun res!90669 () Bool)

(assert (=> d!56145 (=> (not res!90669) (not e!126244))))

(declare-fun lt!95352 () ListLongMap!2459)

(assert (=> d!56145 (= res!90669 (contains!1353 lt!95352 (_1!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248)))))))

(declare-fun lt!95350 () List!2445)

(assert (=> d!56145 (= lt!95352 (ListLongMap!2460 lt!95350))))

(declare-fun lt!95351 () Unit!5790)

(declare-fun lt!95353 () Unit!5790)

(assert (=> d!56145 (= lt!95351 lt!95353)))

(assert (=> d!56145 (= (getValueByKey!238 lt!95350 (_1!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56145 (= lt!95353 (lemmaContainsTupThenGetReturnValue!127 lt!95350 (_1!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56145 (= lt!95350 (insertStrictlySorted!129 (toList!1245 lt!95236) (_1!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56145 (= (+!303 lt!95236 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))) lt!95352)))

(declare-fun b!191833 () Bool)

(declare-fun res!90668 () Bool)

(assert (=> b!191833 (=> (not res!90668) (not e!126244))))

(assert (=> b!191833 (= res!90668 (= (getValueByKey!238 (toList!1245 lt!95352) (_1!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))))))))

(declare-fun b!191834 () Bool)

(assert (=> b!191834 (= e!126244 (contains!1355 (toList!1245 lt!95352) (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))))))

(assert (= (and d!56145 res!90669) b!191833))

(assert (= (and b!191833 res!90668) b!191834))

(declare-fun m!218489 () Bool)

(assert (=> d!56145 m!218489))

(declare-fun m!218491 () Bool)

(assert (=> d!56145 m!218491))

(declare-fun m!218493 () Bool)

(assert (=> d!56145 m!218493))

(declare-fun m!218495 () Bool)

(assert (=> d!56145 m!218495))

(declare-fun m!218497 () Bool)

(assert (=> b!191833 m!218497))

(declare-fun m!218499 () Bool)

(assert (=> b!191834 m!218499))

(assert (=> b!191615 d!56145))

(declare-fun d!56147 () Bool)

(declare-fun e!126245 () Bool)

(assert (=> d!56147 e!126245))

(declare-fun res!90671 () Bool)

(assert (=> d!56147 (=> (not res!90671) (not e!126245))))

(declare-fun lt!95356 () ListLongMap!2459)

(assert (=> d!56147 (= res!90671 (contains!1353 lt!95356 (_1!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248)))))))

(declare-fun lt!95354 () List!2445)

(assert (=> d!56147 (= lt!95356 (ListLongMap!2460 lt!95354))))

(declare-fun lt!95355 () Unit!5790)

(declare-fun lt!95357 () Unit!5790)

(assert (=> d!56147 (= lt!95355 lt!95357)))

(assert (=> d!56147 (= (getValueByKey!238 lt!95354 (_1!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248)))))))

(assert (=> d!56147 (= lt!95357 (lemmaContainsTupThenGetReturnValue!127 lt!95354 (_1!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248)))))))

(assert (=> d!56147 (= lt!95354 (insertStrictlySorted!129 (toList!1245 lt!95227) (_1!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248)))))))

(assert (=> d!56147 (= (+!303 lt!95227 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))) lt!95356)))

(declare-fun b!191835 () Bool)

(declare-fun res!90670 () Bool)

(assert (=> b!191835 (=> (not res!90670) (not e!126245))))

(assert (=> b!191835 (= res!90670 (= (getValueByKey!238 (toList!1245 lt!95356) (_1!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))))))))

(declare-fun b!191836 () Bool)

(assert (=> b!191836 (= e!126245 (contains!1355 (toList!1245 lt!95356) (tuple2!3529 lt!95221 (minValue!3751 thiss!1248))))))

(assert (= (and d!56147 res!90671) b!191835))

(assert (= (and b!191835 res!90670) b!191836))

(declare-fun m!218501 () Bool)

(assert (=> d!56147 m!218501))

(declare-fun m!218503 () Bool)

(assert (=> d!56147 m!218503))

(declare-fun m!218505 () Bool)

(assert (=> d!56147 m!218505))

(declare-fun m!218507 () Bool)

(assert (=> d!56147 m!218507))

(declare-fun m!218509 () Bool)

(assert (=> b!191835 m!218509))

(declare-fun m!218511 () Bool)

(assert (=> b!191836 m!218511))

(assert (=> b!191615 d!56147))

(declare-fun d!56149 () Bool)

(assert (=> d!56149 (contains!1353 (+!303 lt!95226 (tuple2!3529 lt!95219 (zeroValue!3751 thiss!1248))) lt!95229)))

(declare-fun lt!95360 () Unit!5790)

(declare-fun choose!1050 (ListLongMap!2459 (_ BitVec 64) V!5587 (_ BitVec 64)) Unit!5790)

(assert (=> d!56149 (= lt!95360 (choose!1050 lt!95226 lt!95219 (zeroValue!3751 thiss!1248) lt!95229))))

(assert (=> d!56149 (contains!1353 lt!95226 lt!95229)))

(assert (=> d!56149 (= (addStillContains!158 lt!95226 lt!95219 (zeroValue!3751 thiss!1248) lt!95229) lt!95360)))

(declare-fun bs!7671 () Bool)

(assert (= bs!7671 d!56149))

(assert (=> bs!7671 m!218223))

(assert (=> bs!7671 m!218223))

(assert (=> bs!7671 m!218225))

(declare-fun m!218513 () Bool)

(assert (=> bs!7671 m!218513))

(declare-fun m!218515 () Bool)

(assert (=> bs!7671 m!218515))

(assert (=> b!191615 d!56149))

(declare-fun d!56151 () Bool)

(assert (=> d!56151 (= (apply!182 (+!303 lt!95236 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248))) lt!95228) (get!2215 (getValueByKey!238 (toList!1245 (+!303 lt!95236 (tuple2!3529 lt!95225 (zeroValue!3751 thiss!1248)))) lt!95228)))))

(declare-fun bs!7672 () Bool)

(assert (= bs!7672 d!56151))

(declare-fun m!218517 () Bool)

(assert (=> bs!7672 m!218517))

(assert (=> bs!7672 m!218517))

(declare-fun m!218519 () Bool)

(assert (=> bs!7672 m!218519))

(assert (=> b!191615 d!56151))

(declare-fun d!56153 () Bool)

(declare-fun e!126246 () Bool)

(assert (=> d!56153 e!126246))

(declare-fun res!90673 () Bool)

(assert (=> d!56153 (=> (not res!90673) (not e!126246))))

(declare-fun lt!95363 () ListLongMap!2459)

(assert (=> d!56153 (= res!90673 (contains!1353 lt!95363 (_1!1774 (tuple2!3529 key!828 v!309))))))

(declare-fun lt!95361 () List!2445)

(assert (=> d!56153 (= lt!95363 (ListLongMap!2460 lt!95361))))

(declare-fun lt!95362 () Unit!5790)

(declare-fun lt!95364 () Unit!5790)

(assert (=> d!56153 (= lt!95362 lt!95364)))

(assert (=> d!56153 (= (getValueByKey!238 lt!95361 (_1!1774 (tuple2!3529 key!828 v!309))) (Some!243 (_2!1774 (tuple2!3529 key!828 v!309))))))

(assert (=> d!56153 (= lt!95364 (lemmaContainsTupThenGetReturnValue!127 lt!95361 (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))))))

(assert (=> d!56153 (= lt!95361 (insertStrictlySorted!129 (toList!1245 (getCurrentListMap!888 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248))) (_1!1774 (tuple2!3529 key!828 v!309)) (_2!1774 (tuple2!3529 key!828 v!309))))))

(assert (=> d!56153 (= (+!303 (getCurrentListMap!888 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)) (tuple2!3529 key!828 v!309)) lt!95363)))

(declare-fun b!191838 () Bool)

(declare-fun res!90672 () Bool)

(assert (=> b!191838 (=> (not res!90672) (not e!126246))))

(assert (=> b!191838 (= res!90672 (= (getValueByKey!238 (toList!1245 lt!95363) (_1!1774 (tuple2!3529 key!828 v!309))) (Some!243 (_2!1774 (tuple2!3529 key!828 v!309)))))))

(declare-fun b!191839 () Bool)

(assert (=> b!191839 (= e!126246 (contains!1355 (toList!1245 lt!95363) (tuple2!3529 key!828 v!309)))))

(assert (= (and d!56153 res!90673) b!191838))

(assert (= (and b!191838 res!90672) b!191839))

(declare-fun m!218521 () Bool)

(assert (=> d!56153 m!218521))

(declare-fun m!218523 () Bool)

(assert (=> d!56153 m!218523))

(declare-fun m!218525 () Bool)

(assert (=> d!56153 m!218525))

(declare-fun m!218527 () Bool)

(assert (=> d!56153 m!218527))

(declare-fun m!218529 () Bool)

(assert (=> b!191838 m!218529))

(declare-fun m!218531 () Bool)

(assert (=> b!191839 m!218531))

(assert (=> b!191564 d!56153))

(assert (=> b!191564 d!56085))

(assert (=> b!191564 d!56083))

(declare-fun d!56155 () Bool)

(declare-fun e!126247 () Bool)

(assert (=> d!56155 e!126247))

(declare-fun res!90675 () Bool)

(assert (=> d!56155 (=> (not res!90675) (not e!126247))))

(declare-fun lt!95367 () ListLongMap!2459)

(assert (=> d!56155 (= res!90675 (contains!1353 lt!95367 (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(declare-fun lt!95365 () List!2445)

(assert (=> d!56155 (= lt!95367 (ListLongMap!2460 lt!95365))))

(declare-fun lt!95366 () Unit!5790)

(declare-fun lt!95368 () Unit!5790)

(assert (=> d!56155 (= lt!95366 lt!95368)))

(assert (=> d!56155 (= (getValueByKey!238 lt!95365 (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (=> d!56155 (= lt!95368 (lemmaContainsTupThenGetReturnValue!127 lt!95365 (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (=> d!56155 (= lt!95365 (insertStrictlySorted!129 (toList!1245 call!19350) (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (=> d!56155 (= (+!303 call!19350 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))) lt!95367)))

(declare-fun b!191840 () Bool)

(declare-fun res!90674 () Bool)

(assert (=> b!191840 (=> (not res!90674) (not e!126247))))

(assert (=> b!191840 (= res!90674 (= (getValueByKey!238 (toList!1245 lt!95367) (_1!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(declare-fun b!191841 () Bool)

(assert (=> b!191841 (= e!126247 (contains!1355 (toList!1245 lt!95367) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))

(assert (= (and d!56155 res!90675) b!191840))

(assert (= (and b!191840 res!90674) b!191841))

(declare-fun m!218533 () Bool)

(assert (=> d!56155 m!218533))

(declare-fun m!218535 () Bool)

(assert (=> d!56155 m!218535))

(declare-fun m!218537 () Bool)

(assert (=> d!56155 m!218537))

(declare-fun m!218539 () Bool)

(assert (=> d!56155 m!218539))

(declare-fun m!218541 () Bool)

(assert (=> b!191840 m!218541))

(declare-fun m!218543 () Bool)

(assert (=> b!191841 m!218543))

(assert (=> b!191630 d!56155))

(declare-fun d!56157 () Bool)

(assert (=> d!56157 (= (apply!182 lt!95256 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) (get!2215 (getValueByKey!238 (toList!1245 lt!95256) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7673 () Bool)

(assert (= bs!7673 d!56157))

(assert (=> bs!7673 m!218187))

(declare-fun m!218545 () Bool)

(assert (=> bs!7673 m!218545))

(assert (=> bs!7673 m!218545))

(declare-fun m!218547 () Bool)

(assert (=> bs!7673 m!218547))

(assert (=> b!191631 d!56157))

(declare-fun d!56159 () Bool)

(declare-fun c!34544 () Bool)

(assert (=> d!56159 (= c!34544 ((_ is ValueCellFull!1884) (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!126250 () V!5587)

(assert (=> d!56159 (= (get!2214 (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!126250)))

(declare-fun b!191846 () Bool)

(declare-fun get!2216 (ValueCell!1884 V!5587) V!5587)

(assert (=> b!191846 (= e!126250 (get!2216 (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!191847 () Bool)

(declare-fun get!2217 (ValueCell!1884 V!5587) V!5587)

(assert (=> b!191847 (= e!126250 (get!2217 (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56159 c!34544) b!191846))

(assert (= (and d!56159 (not c!34544)) b!191847))

(assert (=> b!191846 m!218247))

(assert (=> b!191846 m!218193))

(declare-fun m!218549 () Bool)

(assert (=> b!191846 m!218549))

(assert (=> b!191847 m!218247))

(assert (=> b!191847 m!218193))

(declare-fun m!218551 () Bool)

(assert (=> b!191847 m!218551))

(assert (=> b!191631 d!56159))

(declare-fun d!56161 () Bool)

(assert (=> d!56161 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95133) key!828))))

(declare-fun lt!95371 () Unit!5790)

(declare-fun choose!1051 (List!2445 (_ BitVec 64)) Unit!5790)

(assert (=> d!56161 (= lt!95371 (choose!1051 (toList!1245 lt!95133) key!828))))

(declare-fun e!126253 () Bool)

(assert (=> d!56161 e!126253))

(declare-fun res!90678 () Bool)

(assert (=> d!56161 (=> (not res!90678) (not e!126253))))

(assert (=> d!56161 (= res!90678 (isStrictlySorted!350 (toList!1245 lt!95133)))))

(assert (=> d!56161 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95133) key!828) lt!95371)))

(declare-fun b!191850 () Bool)

(assert (=> b!191850 (= e!126253 (containsKey!242 (toList!1245 lt!95133) key!828))))

(assert (= (and d!56161 res!90678) b!191850))

(assert (=> d!56161 m!218179))

(assert (=> d!56161 m!218179))

(assert (=> d!56161 m!218181))

(declare-fun m!218553 () Bool)

(assert (=> d!56161 m!218553))

(assert (=> d!56161 m!218403))

(assert (=> b!191850 m!218175))

(assert (=> b!191559 d!56161))

(declare-fun d!56163 () Bool)

(declare-fun isEmpty!489 (Option!244) Bool)

(assert (=> d!56163 (= (isDefined!192 (getValueByKey!238 (toList!1245 lt!95133) key!828)) (not (isEmpty!489 (getValueByKey!238 (toList!1245 lt!95133) key!828))))))

(declare-fun bs!7674 () Bool)

(assert (= bs!7674 d!56163))

(assert (=> bs!7674 m!218179))

(declare-fun m!218555 () Bool)

(assert (=> bs!7674 m!218555))

(assert (=> b!191559 d!56163))

(declare-fun d!56165 () Bool)

(declare-fun c!34545 () Bool)

(assert (=> d!56165 (= c!34545 (and ((_ is Cons!2441) (toList!1245 lt!95133)) (= (_1!1774 (h!3080 (toList!1245 lt!95133))) key!828)))))

(declare-fun e!126254 () Option!244)

(assert (=> d!56165 (= (getValueByKey!238 (toList!1245 lt!95133) key!828) e!126254)))

(declare-fun b!191853 () Bool)

(declare-fun e!126255 () Option!244)

(assert (=> b!191853 (= e!126255 (getValueByKey!238 (t!7367 (toList!1245 lt!95133)) key!828))))

(declare-fun b!191851 () Bool)

(assert (=> b!191851 (= e!126254 (Some!243 (_2!1774 (h!3080 (toList!1245 lt!95133)))))))

(declare-fun b!191852 () Bool)

(assert (=> b!191852 (= e!126254 e!126255)))

(declare-fun c!34546 () Bool)

(assert (=> b!191852 (= c!34546 (and ((_ is Cons!2441) (toList!1245 lt!95133)) (not (= (_1!1774 (h!3080 (toList!1245 lt!95133))) key!828))))))

(declare-fun b!191854 () Bool)

(assert (=> b!191854 (= e!126255 None!242)))

(assert (= (and d!56165 c!34545) b!191851))

(assert (= (and d!56165 (not c!34545)) b!191852))

(assert (= (and b!191852 c!34546) b!191853))

(assert (= (and b!191852 (not c!34546)) b!191854))

(declare-fun m!218557 () Bool)

(assert (=> b!191853 m!218557))

(assert (=> b!191559 d!56165))

(assert (=> b!191616 d!56099))

(declare-fun d!56167 () Bool)

(declare-fun e!126257 () Bool)

(assert (=> d!56167 e!126257))

(declare-fun res!90679 () Bool)

(assert (=> d!56167 (=> res!90679 e!126257)))

(declare-fun lt!95373 () Bool)

(assert (=> d!56167 (= res!90679 (not lt!95373))))

(declare-fun lt!95374 () Bool)

(assert (=> d!56167 (= lt!95373 lt!95374)))

(declare-fun lt!95375 () Unit!5790)

(declare-fun e!126256 () Unit!5790)

(assert (=> d!56167 (= lt!95375 e!126256)))

(declare-fun c!34547 () Bool)

(assert (=> d!56167 (= c!34547 lt!95374)))

(assert (=> d!56167 (= lt!95374 (containsKey!242 (toList!1245 lt!95234) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56167 (= (contains!1353 lt!95234 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) lt!95373)))

(declare-fun b!191855 () Bool)

(declare-fun lt!95372 () Unit!5790)

(assert (=> b!191855 (= e!126256 lt!95372)))

(assert (=> b!191855 (= lt!95372 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95234) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191855 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95234) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191856 () Bool)

(declare-fun Unit!5801 () Unit!5790)

(assert (=> b!191856 (= e!126256 Unit!5801)))

(declare-fun b!191857 () Bool)

(assert (=> b!191857 (= e!126257 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95234) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56167 c!34547) b!191855))

(assert (= (and d!56167 (not c!34547)) b!191856))

(assert (= (and d!56167 (not res!90679)) b!191857))

(assert (=> d!56167 m!218187))

(declare-fun m!218559 () Bool)

(assert (=> d!56167 m!218559))

(assert (=> b!191855 m!218187))

(declare-fun m!218561 () Bool)

(assert (=> b!191855 m!218561))

(assert (=> b!191855 m!218187))

(declare-fun m!218563 () Bool)

(assert (=> b!191855 m!218563))

(assert (=> b!191855 m!218563))

(declare-fun m!218565 () Bool)

(assert (=> b!191855 m!218565))

(assert (=> b!191857 m!218187))

(assert (=> b!191857 m!218563))

(assert (=> b!191857 m!218563))

(assert (=> b!191857 m!218565))

(assert (=> b!191617 d!56167))

(declare-fun d!56169 () Bool)

(assert (=> d!56169 (= (apply!182 lt!95256 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2215 (getValueByKey!238 (toList!1245 lt!95256) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7675 () Bool)

(assert (= bs!7675 d!56169))

(declare-fun m!218567 () Bool)

(assert (=> bs!7675 m!218567))

(assert (=> bs!7675 m!218567))

(declare-fun m!218569 () Bool)

(assert (=> bs!7675 m!218569))

(assert (=> b!191632 d!56169))

(assert (=> d!56089 d!56091))

(declare-fun b!191874 () Bool)

(declare-fun res!90690 () Bool)

(declare-fun e!126267 () Bool)

(assert (=> b!191874 (=> (not res!90690) (not e!126267))))

(declare-fun lt!95378 () SeekEntryResult!689)

(assert (=> b!191874 (= res!90690 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4929 lt!95378)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191875 () Bool)

(declare-fun e!126269 () Bool)

(declare-fun e!126268 () Bool)

(assert (=> b!191875 (= e!126269 e!126268)))

(declare-fun c!34553 () Bool)

(assert (=> b!191875 (= c!34553 ((_ is MissingVacant!689) lt!95378))))

(declare-fun b!191876 () Bool)

(declare-fun res!90691 () Bool)

(assert (=> b!191876 (= res!90691 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4926 lt!95378)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!126266 () Bool)

(assert (=> b!191876 (=> (not res!90691) (not e!126266))))

(declare-fun d!56171 () Bool)

(assert (=> d!56171 e!126269))

(declare-fun c!34552 () Bool)

(assert (=> d!56171 (= c!34552 ((_ is MissingZero!689) lt!95378))))

(assert (=> d!56171 (= lt!95378 (seekEntryOrOpen!0 key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(assert (=> d!56171 true))

(declare-fun _$34!1078 () Unit!5790)

(assert (=> d!56171 (= (choose!1047 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) key!828 (defaultEntry!3910 thiss!1248)) _$34!1078)))

(declare-fun b!191877 () Bool)

(assert (=> b!191877 (= e!126268 ((_ is Undefined!689) lt!95378))))

(declare-fun bm!19374 () Bool)

(declare-fun call!19377 () Bool)

(assert (=> bm!19374 (= call!19377 (arrayContainsKey!0 (_keys!5888 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!191878 () Bool)

(declare-fun res!90688 () Bool)

(assert (=> b!191878 (=> (not res!90688) (not e!126267))))

(declare-fun call!19378 () Bool)

(assert (=> b!191878 (= res!90688 call!19378)))

(assert (=> b!191878 (= e!126268 e!126267)))

(declare-fun bm!19375 () Bool)

(assert (=> bm!19375 (= call!19378 (inRange!0 (ite c!34552 (index!4926 lt!95378) (index!4929 lt!95378)) (mask!9131 thiss!1248)))))

(declare-fun b!191879 () Bool)

(assert (=> b!191879 (= e!126267 (not call!19377))))

(declare-fun b!191880 () Bool)

(assert (=> b!191880 (= e!126269 e!126266)))

(declare-fun res!90689 () Bool)

(assert (=> b!191880 (= res!90689 call!19378)))

(assert (=> b!191880 (=> (not res!90689) (not e!126266))))

(declare-fun b!191881 () Bool)

(assert (=> b!191881 (= e!126266 (not call!19377))))

(assert (= (and d!56171 c!34552) b!191880))

(assert (= (and d!56171 (not c!34552)) b!191875))

(assert (= (and b!191880 res!90689) b!191876))

(assert (= (and b!191876 res!90691) b!191881))

(assert (= (and b!191875 c!34553) b!191878))

(assert (= (and b!191875 (not c!34553)) b!191877))

(assert (= (and b!191878 res!90688) b!191874))

(assert (= (and b!191874 res!90690) b!191879))

(assert (= (or b!191880 b!191878) bm!19375))

(assert (= (or b!191881 b!191879) bm!19374))

(declare-fun m!218571 () Bool)

(assert (=> b!191876 m!218571))

(assert (=> d!56171 m!218099))

(declare-fun m!218573 () Bool)

(assert (=> b!191874 m!218573))

(declare-fun m!218575 () Bool)

(assert (=> bm!19375 m!218575))

(assert (=> bm!19374 m!218309))

(assert (=> d!56089 d!56171))

(assert (=> d!56089 d!56079))

(assert (=> b!191561 d!56163))

(assert (=> b!191561 d!56165))

(declare-fun d!56173 () Bool)

(declare-fun e!126271 () Bool)

(assert (=> d!56173 e!126271))

(declare-fun res!90692 () Bool)

(assert (=> d!56173 (=> res!90692 e!126271)))

(declare-fun lt!95380 () Bool)

(assert (=> d!56173 (= res!90692 (not lt!95380))))

(declare-fun lt!95381 () Bool)

(assert (=> d!56173 (= lt!95380 lt!95381)))

(declare-fun lt!95382 () Unit!5790)

(declare-fun e!126270 () Unit!5790)

(assert (=> d!56173 (= lt!95382 e!126270)))

(declare-fun c!34554 () Bool)

(assert (=> d!56173 (= c!34554 lt!95381)))

(assert (=> d!56173 (= lt!95381 (containsKey!242 (toList!1245 lt!95234) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56173 (= (contains!1353 lt!95234 #b0000000000000000000000000000000000000000000000000000000000000000) lt!95380)))

(declare-fun b!191882 () Bool)

(declare-fun lt!95379 () Unit!5790)

(assert (=> b!191882 (= e!126270 lt!95379)))

(assert (=> b!191882 (= lt!95379 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95234) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191882 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95234) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191883 () Bool)

(declare-fun Unit!5802 () Unit!5790)

(assert (=> b!191883 (= e!126270 Unit!5802)))

(declare-fun b!191884 () Bool)

(assert (=> b!191884 (= e!126271 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95234) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56173 c!34554) b!191882))

(assert (= (and d!56173 (not c!34554)) b!191883))

(assert (= (and d!56173 (not res!90692)) b!191884))

(declare-fun m!218577 () Bool)

(assert (=> d!56173 m!218577))

(declare-fun m!218579 () Bool)

(assert (=> b!191882 m!218579))

(declare-fun m!218581 () Bool)

(assert (=> b!191882 m!218581))

(assert (=> b!191882 m!218581))

(declare-fun m!218583 () Bool)

(assert (=> b!191882 m!218583))

(assert (=> b!191884 m!218581))

(assert (=> b!191884 m!218581))

(assert (=> b!191884 m!218583))

(assert (=> bm!19342 d!56173))

(declare-fun b!191885 () Bool)

(declare-fun e!126277 () Bool)

(declare-fun e!126275 () Bool)

(assert (=> b!191885 (= e!126277 e!126275)))

(declare-fun c!34556 () Bool)

(declare-fun e!126276 () Bool)

(assert (=> b!191885 (= c!34556 e!126276)))

(declare-fun res!90696 () Bool)

(assert (=> b!191885 (=> (not res!90696) (not e!126276))))

(assert (=> b!191885 (= res!90696 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191886 () Bool)

(declare-fun lt!95383 () Unit!5790)

(declare-fun lt!95389 () Unit!5790)

(assert (=> b!191886 (= lt!95383 lt!95389)))

(declare-fun lt!95387 () V!5587)

(declare-fun lt!95385 () ListLongMap!2459)

(declare-fun lt!95388 () (_ BitVec 64))

(declare-fun lt!95384 () (_ BitVec 64))

(assert (=> b!191886 (not (contains!1353 (+!303 lt!95385 (tuple2!3529 lt!95388 lt!95387)) lt!95384))))

(assert (=> b!191886 (= lt!95389 (addStillNotContains!97 lt!95385 lt!95388 lt!95387 lt!95384))))

(assert (=> b!191886 (= lt!95384 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!191886 (= lt!95387 (get!2214 (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!191886 (= lt!95388 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!19379 () ListLongMap!2459)

(assert (=> b!191886 (= lt!95385 call!19379)))

(declare-fun e!126274 () ListLongMap!2459)

(assert (=> b!191886 (= e!126274 (+!303 call!19379 (tuple2!3529 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000) (get!2214 (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!191887 () Bool)

(assert (=> b!191887 (= e!126276 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191887 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!191888 () Bool)

(declare-fun e!126272 () Bool)

(assert (=> b!191888 (= e!126275 e!126272)))

(declare-fun c!34557 () Bool)

(assert (=> b!191888 (= c!34557 (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191889 () Bool)

(declare-fun lt!95386 () ListLongMap!2459)

(assert (=> b!191889 (= e!126272 (isEmpty!488 lt!95386))))

(declare-fun b!191890 () Bool)

(declare-fun e!126278 () ListLongMap!2459)

(assert (=> b!191890 (= e!126278 e!126274)))

(declare-fun c!34558 () Bool)

(assert (=> b!191890 (= c!34558 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191891 () Bool)

(assert (=> b!191891 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> b!191891 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4161 (_values!3893 thiss!1248))))))

(declare-fun e!126273 () Bool)

(assert (=> b!191891 (= e!126273 (= (apply!182 lt!95386 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) (get!2214 (select (arr!3839 (_values!3893 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!19376 () Bool)

(assert (=> bm!19376 (= call!19379 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3910 thiss!1248)))))

(declare-fun b!191892 () Bool)

(assert (=> b!191892 (= e!126275 e!126273)))

(assert (=> b!191892 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun res!90693 () Bool)

(assert (=> b!191892 (= res!90693 (contains!1353 lt!95386 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!191892 (=> (not res!90693) (not e!126273))))

(declare-fun b!191893 () Bool)

(assert (=> b!191893 (= e!126274 call!19379)))

(declare-fun d!56175 () Bool)

(assert (=> d!56175 e!126277))

(declare-fun res!90695 () Bool)

(assert (=> d!56175 (=> (not res!90695) (not e!126277))))

(assert (=> d!56175 (= res!90695 (not (contains!1353 lt!95386 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56175 (= lt!95386 e!126278)))

(declare-fun c!34555 () Bool)

(assert (=> d!56175 (= c!34555 (bvsge #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56175 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56175 (= (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)) lt!95386)))

(declare-fun b!191894 () Bool)

(assert (=> b!191894 (= e!126272 (= lt!95386 (getCurrentListMapNoExtraKeys!212 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3910 thiss!1248))))))

(declare-fun b!191895 () Bool)

(assert (=> b!191895 (= e!126278 (ListLongMap!2460 Nil!2442))))

(declare-fun b!191896 () Bool)

(declare-fun res!90694 () Bool)

(assert (=> b!191896 (=> (not res!90694) (not e!126277))))

(assert (=> b!191896 (= res!90694 (not (contains!1353 lt!95386 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56175 c!34555) b!191895))

(assert (= (and d!56175 (not c!34555)) b!191890))

(assert (= (and b!191890 c!34558) b!191886))

(assert (= (and b!191890 (not c!34558)) b!191893))

(assert (= (or b!191886 b!191893) bm!19376))

(assert (= (and d!56175 res!90695) b!191896))

(assert (= (and b!191896 res!90694) b!191885))

(assert (= (and b!191885 res!90696) b!191887))

(assert (= (and b!191885 c!34556) b!191892))

(assert (= (and b!191885 (not c!34556)) b!191888))

(assert (= (and b!191892 res!90693) b!191891))

(assert (= (and b!191888 c!34557) b!191894))

(assert (= (and b!191888 (not c!34557)) b!191889))

(declare-fun b_lambda!7441 () Bool)

(assert (=> (not b_lambda!7441) (not b!191886)))

(assert (=> b!191886 t!7370))

(declare-fun b_and!11387 () Bool)

(assert (= b_and!11385 (and (=> t!7370 result!4911) b_and!11387)))

(declare-fun b_lambda!7443 () Bool)

(assert (=> (not b_lambda!7443) (not b!191891)))

(assert (=> b!191891 t!7370))

(declare-fun b_and!11389 () Bool)

(assert (= b_and!11387 (and (=> t!7370 result!4911) b_and!11389)))

(declare-fun m!218585 () Bool)

(assert (=> b!191896 m!218585))

(declare-fun m!218587 () Bool)

(assert (=> d!56175 m!218587))

(assert (=> d!56175 m!218115))

(declare-fun m!218589 () Bool)

(assert (=> b!191894 m!218589))

(assert (=> b!191886 m!218187))

(declare-fun m!218591 () Bool)

(assert (=> b!191886 m!218591))

(assert (=> b!191886 m!218247))

(declare-fun m!218593 () Bool)

(assert (=> b!191886 m!218593))

(assert (=> b!191886 m!218193))

(assert (=> b!191886 m!218593))

(declare-fun m!218595 () Bool)

(assert (=> b!191886 m!218595))

(declare-fun m!218597 () Bool)

(assert (=> b!191886 m!218597))

(assert (=> b!191886 m!218247))

(assert (=> b!191886 m!218193))

(assert (=> b!191886 m!218249))

(assert (=> b!191892 m!218187))

(assert (=> b!191892 m!218187))

(declare-fun m!218599 () Bool)

(assert (=> b!191892 m!218599))

(declare-fun m!218601 () Bool)

(assert (=> b!191889 m!218601))

(assert (=> bm!19376 m!218589))

(assert (=> b!191891 m!218187))

(assert (=> b!191891 m!218187))

(declare-fun m!218603 () Bool)

(assert (=> b!191891 m!218603))

(assert (=> b!191891 m!218247))

(assert (=> b!191891 m!218193))

(assert (=> b!191891 m!218247))

(assert (=> b!191891 m!218193))

(assert (=> b!191891 m!218249))

(assert (=> b!191887 m!218187))

(assert (=> b!191887 m!218187))

(assert (=> b!191887 m!218235))

(assert (=> b!191890 m!218187))

(assert (=> b!191890 m!218187))

(assert (=> b!191890 m!218235))

(assert (=> bm!19345 d!56175))

(declare-fun b!191905 () Bool)

(declare-fun e!126284 () (_ BitVec 32))

(declare-fun call!19382 () (_ BitVec 32))

(assert (=> b!191905 (= e!126284 call!19382)))

(declare-fun d!56177 () Bool)

(declare-fun lt!95392 () (_ BitVec 32))

(assert (=> d!56177 (and (bvsge lt!95392 #b00000000000000000000000000000000) (bvsle lt!95392 (bvsub (size!4160 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!126283 () (_ BitVec 32))

(assert (=> d!56177 (= lt!95392 e!126283)))

(declare-fun c!34564 () Bool)

(assert (=> d!56177 (= c!34564 (bvsge #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56177 (and (bvsle #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4160 (_keys!5888 thiss!1248)) (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56177 (= (arrayCountValidKeys!0 (_keys!5888 thiss!1248) #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))) lt!95392)))

(declare-fun b!191906 () Bool)

(assert (=> b!191906 (= e!126283 e!126284)))

(declare-fun c!34563 () Bool)

(assert (=> b!191906 (= c!34563 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191907 () Bool)

(assert (=> b!191907 (= e!126283 #b00000000000000000000000000000000)))

(declare-fun bm!19379 () Bool)

(assert (=> bm!19379 (= call!19382 (arrayCountValidKeys!0 (_keys!5888 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!191908 () Bool)

(assert (=> b!191908 (= e!126284 (bvadd #b00000000000000000000000000000001 call!19382))))

(assert (= (and d!56177 c!34564) b!191907))

(assert (= (and d!56177 (not c!34564)) b!191906))

(assert (= (and b!191906 c!34563) b!191908))

(assert (= (and b!191906 (not c!34563)) b!191905))

(assert (= (or b!191908 b!191905) bm!19379))

(assert (=> b!191906 m!218187))

(assert (=> b!191906 m!218187))

(assert (=> b!191906 m!218235))

(declare-fun m!218605 () Bool)

(assert (=> bm!19379 m!218605))

(assert (=> b!191544 d!56177))

(declare-fun d!56179 () Bool)

(assert (=> d!56179 (= (apply!182 lt!95234 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2215 (getValueByKey!238 (toList!1245 lt!95234) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7676 () Bool)

(assert (= bs!7676 d!56179))

(declare-fun m!218607 () Bool)

(assert (=> bs!7676 m!218607))

(assert (=> bs!7676 m!218607))

(declare-fun m!218609 () Bool)

(assert (=> bs!7676 m!218609))

(assert (=> b!191627 d!56179))

(declare-fun bm!19382 () Bool)

(declare-fun call!19385 () Bool)

(assert (=> bm!19382 (= call!19385 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun b!191917 () Bool)

(declare-fun e!126292 () Bool)

(declare-fun e!126293 () Bool)

(assert (=> b!191917 (= e!126292 e!126293)))

(declare-fun lt!95399 () (_ BitVec 64))

(assert (=> b!191917 (= lt!95399 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95401 () Unit!5790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8148 (_ BitVec 64) (_ BitVec 32)) Unit!5790)

(assert (=> b!191917 (= lt!95401 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5888 thiss!1248) lt!95399 #b00000000000000000000000000000000))))

(assert (=> b!191917 (arrayContainsKey!0 (_keys!5888 thiss!1248) lt!95399 #b00000000000000000000000000000000)))

(declare-fun lt!95400 () Unit!5790)

(assert (=> b!191917 (= lt!95400 lt!95401)))

(declare-fun res!90701 () Bool)

(assert (=> b!191917 (= res!90701 (= (seekEntryOrOpen!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000) (_keys!5888 thiss!1248) (mask!9131 thiss!1248)) (Found!689 #b00000000000000000000000000000000)))))

(assert (=> b!191917 (=> (not res!90701) (not e!126293))))

(declare-fun b!191918 () Bool)

(assert (=> b!191918 (= e!126293 call!19385)))

(declare-fun b!191919 () Bool)

(declare-fun e!126291 () Bool)

(assert (=> b!191919 (= e!126291 e!126292)))

(declare-fun c!34567 () Bool)

(assert (=> b!191919 (= c!34567 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191920 () Bool)

(assert (=> b!191920 (= e!126292 call!19385)))

(declare-fun d!56181 () Bool)

(declare-fun res!90702 () Bool)

(assert (=> d!56181 (=> res!90702 e!126291)))

(assert (=> d!56181 (= res!90702 (bvsge #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56181 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)) e!126291)))

(assert (= (and d!56181 (not res!90702)) b!191919))

(assert (= (and b!191919 c!34567) b!191917))

(assert (= (and b!191919 (not c!34567)) b!191920))

(assert (= (and b!191917 res!90701) b!191918))

(assert (= (or b!191918 b!191920) bm!19382))

(declare-fun m!218611 () Bool)

(assert (=> bm!19382 m!218611))

(assert (=> b!191917 m!218187))

(declare-fun m!218613 () Bool)

(assert (=> b!191917 m!218613))

(declare-fun m!218615 () Bool)

(assert (=> b!191917 m!218615))

(assert (=> b!191917 m!218187))

(declare-fun m!218617 () Bool)

(assert (=> b!191917 m!218617))

(assert (=> b!191919 m!218187))

(assert (=> b!191919 m!218187))

(assert (=> b!191919 m!218235))

(assert (=> b!191545 d!56181))

(declare-fun d!56183 () Bool)

(declare-fun e!126294 () Bool)

(assert (=> d!56183 e!126294))

(declare-fun res!90704 () Bool)

(assert (=> d!56183 (=> (not res!90704) (not e!126294))))

(declare-fun lt!95404 () ListLongMap!2459)

(assert (=> d!56183 (= res!90704 (contains!1353 lt!95404 (_1!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(declare-fun lt!95402 () List!2445)

(assert (=> d!56183 (= lt!95404 (ListLongMap!2460 lt!95402))))

(declare-fun lt!95403 () Unit!5790)

(declare-fun lt!95405 () Unit!5790)

(assert (=> d!56183 (= lt!95403 lt!95405)))

(assert (=> d!56183 (= (getValueByKey!238 lt!95402 (_1!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))) (Some!243 (_2!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(assert (=> d!56183 (= lt!95405 (lemmaContainsTupThenGetReturnValue!127 lt!95402 (_1!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (_2!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(assert (=> d!56183 (= lt!95402 (insertStrictlySorted!129 (toList!1245 (ite c!34486 call!19347 (ite c!34482 call!19341 call!19345))) (_1!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) (_2!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))))))

(assert (=> d!56183 (= (+!303 (ite c!34486 call!19347 (ite c!34482 call!19341 call!19345)) (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))) lt!95404)))

(declare-fun b!191921 () Bool)

(declare-fun res!90703 () Bool)

(assert (=> b!191921 (=> (not res!90703) (not e!126294))))

(assert (=> b!191921 (= res!90703 (= (getValueByKey!238 (toList!1245 lt!95404) (_1!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248))))) (Some!243 (_2!1774 (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))))

(declare-fun b!191922 () Bool)

(assert (=> b!191922 (= e!126294 (contains!1355 (toList!1245 lt!95404) (ite (or c!34486 c!34482) (tuple2!3529 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3751 thiss!1248)) (tuple2!3529 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3751 thiss!1248)))))))

(assert (= (and d!56183 res!90704) b!191921))

(assert (= (and b!191921 res!90703) b!191922))

(declare-fun m!218619 () Bool)

(assert (=> d!56183 m!218619))

(declare-fun m!218621 () Bool)

(assert (=> d!56183 m!218621))

(declare-fun m!218623 () Bool)

(assert (=> d!56183 m!218623))

(declare-fun m!218625 () Bool)

(assert (=> d!56183 m!218625))

(declare-fun m!218627 () Bool)

(assert (=> b!191921 m!218627))

(declare-fun m!218629 () Bool)

(assert (=> b!191922 m!218629))

(assert (=> bm!19339 d!56183))

(declare-fun d!56185 () Bool)

(declare-fun res!90713 () Bool)

(declare-fun e!126305 () Bool)

(assert (=> d!56185 (=> res!90713 e!126305)))

(assert (=> d!56185 (= res!90713 (bvsge #b00000000000000000000000000000000 (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> d!56185 (= (arrayNoDuplicates!0 (_keys!5888 thiss!1248) #b00000000000000000000000000000000 Nil!2444) e!126305)))

(declare-fun bm!19385 () Bool)

(declare-fun call!19388 () Bool)

(declare-fun c!34570 () Bool)

(assert (=> bm!19385 (= call!19388 (arrayNoDuplicates!0 (_keys!5888 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!34570 (Cons!2443 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000) Nil!2444) Nil!2444)))))

(declare-fun b!191933 () Bool)

(declare-fun e!126306 () Bool)

(assert (=> b!191933 (= e!126306 call!19388)))

(declare-fun b!191934 () Bool)

(assert (=> b!191934 (= e!126306 call!19388)))

(declare-fun b!191935 () Bool)

(declare-fun e!126303 () Bool)

(assert (=> b!191935 (= e!126305 e!126303)))

(declare-fun res!90711 () Bool)

(assert (=> b!191935 (=> (not res!90711) (not e!126303))))

(declare-fun e!126304 () Bool)

(assert (=> b!191935 (= res!90711 (not e!126304))))

(declare-fun res!90712 () Bool)

(assert (=> b!191935 (=> (not res!90712) (not e!126304))))

(assert (=> b!191935 (= res!90712 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191936 () Bool)

(declare-fun contains!1356 (List!2447 (_ BitVec 64)) Bool)

(assert (=> b!191936 (= e!126304 (contains!1356 Nil!2444 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!191937 () Bool)

(assert (=> b!191937 (= e!126303 e!126306)))

(assert (=> b!191937 (= c!34570 (validKeyInArray!0 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!56185 (not res!90713)) b!191935))

(assert (= (and b!191935 res!90712) b!191936))

(assert (= (and b!191935 res!90711) b!191937))

(assert (= (and b!191937 c!34570) b!191933))

(assert (= (and b!191937 (not c!34570)) b!191934))

(assert (= (or b!191933 b!191934) bm!19385))

(assert (=> bm!19385 m!218187))

(declare-fun m!218631 () Bool)

(assert (=> bm!19385 m!218631))

(assert (=> b!191935 m!218187))

(assert (=> b!191935 m!218187))

(assert (=> b!191935 m!218235))

(assert (=> b!191936 m!218187))

(assert (=> b!191936 m!218187))

(declare-fun m!218633 () Bool)

(assert (=> b!191936 m!218633))

(assert (=> b!191937 m!218187))

(assert (=> b!191937 m!218187))

(assert (=> b!191937 m!218235))

(assert (=> b!191546 d!56185))

(declare-fun b!191950 () Bool)

(declare-fun e!126315 () SeekEntryResult!689)

(assert (=> b!191950 (= e!126315 (MissingVacant!689 (index!4928 lt!95287)))))

(declare-fun b!191951 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!191951 (= e!126315 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20561 lt!95287) #b00000000000000000000000000000001) (nextIndex!0 (index!4928 lt!95287) (x!20561 lt!95287) (mask!9131 thiss!1248)) (index!4928 lt!95287) key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun b!191952 () Bool)

(declare-fun e!126313 () SeekEntryResult!689)

(declare-fun e!126314 () SeekEntryResult!689)

(assert (=> b!191952 (= e!126313 e!126314)))

(declare-fun c!34577 () Bool)

(declare-fun lt!95411 () (_ BitVec 64))

(assert (=> b!191952 (= c!34577 (= lt!95411 key!828))))

(declare-fun d!56187 () Bool)

(declare-fun lt!95410 () SeekEntryResult!689)

(assert (=> d!56187 (and (or ((_ is Undefined!689) lt!95410) (not ((_ is Found!689) lt!95410)) (and (bvsge (index!4927 lt!95410) #b00000000000000000000000000000000) (bvslt (index!4927 lt!95410) (size!4160 (_keys!5888 thiss!1248))))) (or ((_ is Undefined!689) lt!95410) ((_ is Found!689) lt!95410) (not ((_ is MissingVacant!689) lt!95410)) (not (= (index!4929 lt!95410) (index!4928 lt!95287))) (and (bvsge (index!4929 lt!95410) #b00000000000000000000000000000000) (bvslt (index!4929 lt!95410) (size!4160 (_keys!5888 thiss!1248))))) (or ((_ is Undefined!689) lt!95410) (ite ((_ is Found!689) lt!95410) (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4927 lt!95410)) key!828) (and ((_ is MissingVacant!689) lt!95410) (= (index!4929 lt!95410) (index!4928 lt!95287)) (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4929 lt!95410)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!56187 (= lt!95410 e!126313)))

(declare-fun c!34578 () Bool)

(assert (=> d!56187 (= c!34578 (bvsge (x!20561 lt!95287) #b01111111111111111111111111111110))))

(assert (=> d!56187 (= lt!95411 (select (arr!3838 (_keys!5888 thiss!1248)) (index!4928 lt!95287)))))

(assert (=> d!56187 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56187 (= (seekKeyOrZeroReturnVacant!0 (x!20561 lt!95287) (index!4928 lt!95287) (index!4928 lt!95287) key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)) lt!95410)))

(declare-fun b!191953 () Bool)

(declare-fun c!34579 () Bool)

(assert (=> b!191953 (= c!34579 (= lt!95411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191953 (= e!126314 e!126315)))

(declare-fun b!191954 () Bool)

(assert (=> b!191954 (= e!126313 Undefined!689)))

(declare-fun b!191955 () Bool)

(assert (=> b!191955 (= e!126314 (Found!689 (index!4928 lt!95287)))))

(assert (= (and d!56187 c!34578) b!191954))

(assert (= (and d!56187 (not c!34578)) b!191952))

(assert (= (and b!191952 c!34577) b!191955))

(assert (= (and b!191952 (not c!34577)) b!191953))

(assert (= (and b!191953 c!34579) b!191950))

(assert (= (and b!191953 (not c!34579)) b!191951))

(declare-fun m!218635 () Bool)

(assert (=> b!191951 m!218635))

(assert (=> b!191951 m!218635))

(declare-fun m!218637 () Bool)

(assert (=> b!191951 m!218637))

(declare-fun m!218639 () Bool)

(assert (=> d!56187 m!218639))

(declare-fun m!218641 () Bool)

(assert (=> d!56187 m!218641))

(assert (=> d!56187 m!218331))

(assert (=> d!56187 m!218115))

(assert (=> b!191695 d!56187))

(assert (=> b!191643 d!56099))

(declare-fun d!56189 () Bool)

(assert (=> d!56189 (= (+!303 (getCurrentListMap!888 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)) (tuple2!3529 key!828 v!309)) (getCurrentListMap!888 (_keys!5888 thiss!1248) (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248))) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3910 thiss!1248)))))

(assert (=> d!56189 true))

(declare-fun _$5!152 () Unit!5790)

(assert (=> d!56189 (= (choose!1046 (_keys!5888 thiss!1248) (_values!3893 thiss!1248) (mask!9131 thiss!1248) (extraKeys!3647 thiss!1248) (zeroValue!3751 thiss!1248) (minValue!3751 thiss!1248) (index!4927 lt!95130) key!828 v!309 (defaultEntry!3910 thiss!1248)) _$5!152)))

(declare-fun bs!7677 () Bool)

(assert (= bs!7677 d!56189))

(assert (=> bs!7677 m!218107))

(assert (=> bs!7677 m!218107))

(assert (=> bs!7677 m!218185))

(assert (=> bs!7677 m!218109))

(assert (=> bs!7677 m!218111))

(assert (=> d!56081 d!56189))

(assert (=> d!56081 d!56079))

(declare-fun d!56191 () Bool)

(declare-fun e!126317 () Bool)

(assert (=> d!56191 e!126317))

(declare-fun res!90714 () Bool)

(assert (=> d!56191 (=> res!90714 e!126317)))

(declare-fun lt!95413 () Bool)

(assert (=> d!56191 (= res!90714 (not lt!95413))))

(declare-fun lt!95414 () Bool)

(assert (=> d!56191 (= lt!95413 lt!95414)))

(declare-fun lt!95415 () Unit!5790)

(declare-fun e!126316 () Unit!5790)

(assert (=> d!56191 (= lt!95415 e!126316)))

(declare-fun c!34580 () Bool)

(assert (=> d!56191 (= c!34580 lt!95414)))

(assert (=> d!56191 (= lt!95414 (containsKey!242 (toList!1245 lt!95234) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56191 (= (contains!1353 lt!95234 #b1000000000000000000000000000000000000000000000000000000000000000) lt!95413)))

(declare-fun b!191956 () Bool)

(declare-fun lt!95412 () Unit!5790)

(assert (=> b!191956 (= e!126316 lt!95412)))

(assert (=> b!191956 (= lt!95412 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95234) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191956 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95234) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191957 () Bool)

(declare-fun Unit!5803 () Unit!5790)

(assert (=> b!191957 (= e!126316 Unit!5803)))

(declare-fun b!191958 () Bool)

(assert (=> b!191958 (= e!126317 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95234) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56191 c!34580) b!191956))

(assert (= (and d!56191 (not c!34580)) b!191957))

(assert (= (and d!56191 (not res!90714)) b!191958))

(declare-fun m!218643 () Bool)

(assert (=> d!56191 m!218643))

(declare-fun m!218645 () Bool)

(assert (=> b!191956 m!218645))

(assert (=> b!191956 m!218607))

(assert (=> b!191956 m!218607))

(declare-fun m!218647 () Bool)

(assert (=> b!191956 m!218647))

(assert (=> b!191958 m!218607))

(assert (=> b!191958 m!218607))

(assert (=> b!191958 m!218647))

(assert (=> bm!19340 d!56191))

(declare-fun d!56193 () Bool)

(declare-fun e!126319 () Bool)

(assert (=> d!56193 e!126319))

(declare-fun res!90715 () Bool)

(assert (=> d!56193 (=> res!90715 e!126319)))

(declare-fun lt!95417 () Bool)

(assert (=> d!56193 (= res!90715 (not lt!95417))))

(declare-fun lt!95418 () Bool)

(assert (=> d!56193 (= lt!95417 lt!95418)))

(declare-fun lt!95419 () Unit!5790)

(declare-fun e!126318 () Unit!5790)

(assert (=> d!56193 (= lt!95419 e!126318)))

(declare-fun c!34581 () Bool)

(assert (=> d!56193 (= c!34581 lt!95418)))

(assert (=> d!56193 (= lt!95418 (containsKey!242 (toList!1245 lt!95256) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56193 (= (contains!1353 lt!95256 #b1000000000000000000000000000000000000000000000000000000000000000) lt!95417)))

(declare-fun b!191959 () Bool)

(declare-fun lt!95416 () Unit!5790)

(assert (=> b!191959 (= e!126318 lt!95416)))

(assert (=> b!191959 (= lt!95416 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95256) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191959 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95256) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191960 () Bool)

(declare-fun Unit!5804 () Unit!5790)

(assert (=> b!191960 (= e!126318 Unit!5804)))

(declare-fun b!191961 () Bool)

(assert (=> b!191961 (= e!126319 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95256) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56193 c!34581) b!191959))

(assert (= (and d!56193 (not c!34581)) b!191960))

(assert (= (and d!56193 (not res!90715)) b!191961))

(declare-fun m!218649 () Bool)

(assert (=> d!56193 m!218649))

(declare-fun m!218651 () Bool)

(assert (=> b!191959 m!218651))

(assert (=> b!191959 m!218335))

(assert (=> b!191959 m!218335))

(declare-fun m!218653 () Bool)

(assert (=> b!191959 m!218653))

(assert (=> b!191961 m!218335))

(assert (=> b!191961 m!218335))

(assert (=> b!191961 m!218653))

(assert (=> bm!19347 d!56193))

(declare-fun b!191980 () Bool)

(declare-fun e!126333 () SeekEntryResult!689)

(assert (=> b!191980 (= e!126333 (Intermediate!689 true (toIndex!0 key!828 (mask!9131 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!191981 () Bool)

(declare-fun lt!95425 () SeekEntryResult!689)

(assert (=> b!191981 (and (bvsge (index!4928 lt!95425) #b00000000000000000000000000000000) (bvslt (index!4928 lt!95425) (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun res!90722 () Bool)

(assert (=> b!191981 (= res!90722 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4928 lt!95425)) key!828))))

(declare-fun e!126331 () Bool)

(assert (=> b!191981 (=> res!90722 e!126331)))

(declare-fun e!126334 () Bool)

(assert (=> b!191981 (= e!126334 e!126331)))

(declare-fun b!191982 () Bool)

(declare-fun e!126330 () SeekEntryResult!689)

(assert (=> b!191982 (= e!126333 e!126330)))

(declare-fun c!34589 () Bool)

(declare-fun lt!95424 () (_ BitVec 64))

(assert (=> b!191982 (= c!34589 (or (= lt!95424 key!828) (= (bvadd lt!95424 lt!95424) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!191983 () Bool)

(assert (=> b!191983 (and (bvsge (index!4928 lt!95425) #b00000000000000000000000000000000) (bvslt (index!4928 lt!95425) (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun res!90724 () Bool)

(assert (=> b!191983 (= res!90724 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4928 lt!95425)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!191983 (=> res!90724 e!126331)))

(declare-fun b!191984 () Bool)

(assert (=> b!191984 (and (bvsge (index!4928 lt!95425) #b00000000000000000000000000000000) (bvslt (index!4928 lt!95425) (size!4160 (_keys!5888 thiss!1248))))))

(assert (=> b!191984 (= e!126331 (= (select (arr!3838 (_keys!5888 thiss!1248)) (index!4928 lt!95425)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!191985 () Bool)

(declare-fun e!126332 () Bool)

(assert (=> b!191985 (= e!126332 (bvsge (x!20561 lt!95425) #b01111111111111111111111111111110))))

(declare-fun b!191986 () Bool)

(assert (=> b!191986 (= e!126330 (Intermediate!689 false (toIndex!0 key!828 (mask!9131 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!191987 () Bool)

(assert (=> b!191987 (= e!126330 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!9131 thiss!1248)) #b00000000000000000000000000000000 (mask!9131 thiss!1248)) key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)))))

(declare-fun b!191988 () Bool)

(assert (=> b!191988 (= e!126332 e!126334)))

(declare-fun res!90723 () Bool)

(assert (=> b!191988 (= res!90723 (and ((_ is Intermediate!689) lt!95425) (not (undefined!1501 lt!95425)) (bvslt (x!20561 lt!95425) #b01111111111111111111111111111110) (bvsge (x!20561 lt!95425) #b00000000000000000000000000000000) (bvsge (x!20561 lt!95425) #b00000000000000000000000000000000)))))

(assert (=> b!191988 (=> (not res!90723) (not e!126334))))

(declare-fun d!56195 () Bool)

(assert (=> d!56195 e!126332))

(declare-fun c!34588 () Bool)

(assert (=> d!56195 (= c!34588 (and ((_ is Intermediate!689) lt!95425) (undefined!1501 lt!95425)))))

(assert (=> d!56195 (= lt!95425 e!126333)))

(declare-fun c!34590 () Bool)

(assert (=> d!56195 (= c!34590 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!56195 (= lt!95424 (select (arr!3838 (_keys!5888 thiss!1248)) (toIndex!0 key!828 (mask!9131 thiss!1248))))))

(assert (=> d!56195 (validMask!0 (mask!9131 thiss!1248))))

(assert (=> d!56195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9131 thiss!1248)) key!828 (_keys!5888 thiss!1248) (mask!9131 thiss!1248)) lt!95425)))

(assert (= (and d!56195 c!34590) b!191980))

(assert (= (and d!56195 (not c!34590)) b!191982))

(assert (= (and b!191982 c!34589) b!191986))

(assert (= (and b!191982 (not c!34589)) b!191987))

(assert (= (and d!56195 c!34588) b!191985))

(assert (= (and d!56195 (not c!34588)) b!191988))

(assert (= (and b!191988 res!90723) b!191981))

(assert (= (and b!191981 (not res!90722)) b!191983))

(assert (= (and b!191983 (not res!90724)) b!191984))

(assert (=> d!56195 m!218323))

(declare-fun m!218655 () Bool)

(assert (=> d!56195 m!218655))

(assert (=> d!56195 m!218115))

(assert (=> b!191987 m!218323))

(declare-fun m!218657 () Bool)

(assert (=> b!191987 m!218657))

(assert (=> b!191987 m!218657))

(declare-fun m!218659 () Bool)

(assert (=> b!191987 m!218659))

(declare-fun m!218661 () Bool)

(assert (=> b!191983 m!218661))

(assert (=> b!191981 m!218661))

(assert (=> b!191984 m!218661))

(assert (=> d!56091 d!56195))

(declare-fun d!56197 () Bool)

(declare-fun lt!95431 () (_ BitVec 32))

(declare-fun lt!95430 () (_ BitVec 32))

(assert (=> d!56197 (= lt!95431 (bvmul (bvxor lt!95430 (bvlshr lt!95430 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!56197 (= lt!95430 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!56197 (and (bvsge (mask!9131 thiss!1248) #b00000000000000000000000000000000) (let ((res!90725 (let ((h!3083 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20580 (bvmul (bvxor h!3083 (bvlshr h!3083 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20580 (bvlshr x!20580 #b00000000000000000000000000001101)) (mask!9131 thiss!1248)))))) (and (bvslt res!90725 (bvadd (mask!9131 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!90725 #b00000000000000000000000000000000))))))

(assert (=> d!56197 (= (toIndex!0 key!828 (mask!9131 thiss!1248)) (bvand (bvxor lt!95431 (bvlshr lt!95431 #b00000000000000000000000000001101)) (mask!9131 thiss!1248)))))

(assert (=> d!56091 d!56197))

(assert (=> d!56091 d!56079))

(declare-fun d!56199 () Bool)

(assert (=> d!56199 (= (apply!182 lt!95234 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) (get!2215 (getValueByKey!238 (toList!1245 lt!95234) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7678 () Bool)

(assert (= bs!7678 d!56199))

(assert (=> bs!7678 m!218187))

(assert (=> bs!7678 m!218563))

(assert (=> bs!7678 m!218563))

(declare-fun m!218663 () Bool)

(assert (=> bs!7678 m!218663))

(assert (=> b!191608 d!56199))

(declare-fun d!56201 () Bool)

(declare-fun c!34591 () Bool)

(assert (=> d!56201 (= c!34591 ((_ is ValueCellFull!1884) (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000)))))

(declare-fun e!126335 () V!5587)

(assert (=> d!56201 (= (get!2214 (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!126335)))

(declare-fun b!191989 () Bool)

(assert (=> b!191989 (= e!126335 (get!2216 (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!191990 () Bool)

(assert (=> b!191990 (= e!126335 (get!2217 (select (arr!3839 (array!8151 (store (arr!3839 (_values!3893 thiss!1248)) (index!4927 lt!95130) (ValueCellFull!1884 v!309)) (size!4161 (_values!3893 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!520 (defaultEntry!3910 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56201 c!34591) b!191989))

(assert (= (and d!56201 (not c!34591)) b!191990))

(assert (=> b!191989 m!218191))

(assert (=> b!191989 m!218193))

(declare-fun m!218665 () Bool)

(assert (=> b!191989 m!218665))

(assert (=> b!191990 m!218191))

(assert (=> b!191990 m!218193))

(declare-fun m!218667 () Bool)

(assert (=> b!191990 m!218667))

(assert (=> b!191608 d!56201))

(declare-fun d!56203 () Bool)

(assert (=> d!56203 (= (apply!182 lt!95234 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2215 (getValueByKey!238 (toList!1245 lt!95234) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7679 () Bool)

(assert (= bs!7679 d!56203))

(assert (=> bs!7679 m!218581))

(assert (=> bs!7679 m!218581))

(declare-fun m!218669 () Bool)

(assert (=> bs!7679 m!218669))

(assert (=> b!191609 d!56203))

(declare-fun d!56205 () Bool)

(assert (=> d!56205 (= (apply!182 (+!303 lt!95258 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))) lt!95250) (apply!182 lt!95258 lt!95250))))

(declare-fun lt!95432 () Unit!5790)

(assert (=> d!56205 (= lt!95432 (choose!1049 lt!95258 lt!95247 (zeroValue!3751 thiss!1248) lt!95250))))

(declare-fun e!126336 () Bool)

(assert (=> d!56205 e!126336))

(declare-fun res!90726 () Bool)

(assert (=> d!56205 (=> (not res!90726) (not e!126336))))

(assert (=> d!56205 (= res!90726 (contains!1353 lt!95258 lt!95250))))

(assert (=> d!56205 (= (addApplyDifferent!158 lt!95258 lt!95247 (zeroValue!3751 thiss!1248) lt!95250) lt!95432)))

(declare-fun b!191991 () Bool)

(assert (=> b!191991 (= e!126336 (not (= lt!95250 lt!95247)))))

(assert (= (and d!56205 res!90726) b!191991))

(assert (=> d!56205 m!218281))

(assert (=> d!56205 m!218265))

(assert (=> d!56205 m!218265))

(assert (=> d!56205 m!218283))

(declare-fun m!218671 () Bool)

(assert (=> d!56205 m!218671))

(declare-fun m!218673 () Bool)

(assert (=> d!56205 m!218673))

(assert (=> b!191638 d!56205))

(declare-fun d!56207 () Bool)

(assert (=> d!56207 (contains!1353 (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))) lt!95251)))

(declare-fun lt!95433 () Unit!5790)

(assert (=> d!56207 (= lt!95433 (choose!1050 lt!95248 lt!95241 (zeroValue!3751 thiss!1248) lt!95251))))

(assert (=> d!56207 (contains!1353 lt!95248 lt!95251)))

(assert (=> d!56207 (= (addStillContains!158 lt!95248 lt!95241 (zeroValue!3751 thiss!1248) lt!95251) lt!95433)))

(declare-fun bs!7680 () Bool)

(assert (= bs!7680 d!56207))

(assert (=> bs!7680 m!218277))

(assert (=> bs!7680 m!218277))

(assert (=> bs!7680 m!218279))

(declare-fun m!218675 () Bool)

(assert (=> bs!7680 m!218675))

(declare-fun m!218677 () Bool)

(assert (=> bs!7680 m!218677))

(assert (=> b!191638 d!56207))

(declare-fun d!56209 () Bool)

(assert (=> d!56209 (= (apply!182 (+!303 lt!95260 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))) lt!95254) (apply!182 lt!95260 lt!95254))))

(declare-fun lt!95434 () Unit!5790)

(assert (=> d!56209 (= lt!95434 (choose!1049 lt!95260 lt!95253 (minValue!3751 thiss!1248) lt!95254))))

(declare-fun e!126337 () Bool)

(assert (=> d!56209 e!126337))

(declare-fun res!90727 () Bool)

(assert (=> d!56209 (=> (not res!90727) (not e!126337))))

(assert (=> d!56209 (= res!90727 (contains!1353 lt!95260 lt!95254))))

(assert (=> d!56209 (= (addApplyDifferent!158 lt!95260 lt!95253 (minValue!3751 thiss!1248) lt!95254) lt!95434)))

(declare-fun b!191992 () Bool)

(assert (=> b!191992 (= e!126337 (not (= lt!95254 lt!95253)))))

(assert (= (and d!56209 res!90727) b!191992))

(assert (=> d!56209 m!218271))

(assert (=> d!56209 m!218261))

(assert (=> d!56209 m!218261))

(assert (=> d!56209 m!218267))

(declare-fun m!218679 () Bool)

(assert (=> d!56209 m!218679))

(declare-fun m!218681 () Bool)

(assert (=> d!56209 m!218681))

(assert (=> b!191638 d!56209))

(declare-fun d!56211 () Bool)

(declare-fun e!126338 () Bool)

(assert (=> d!56211 e!126338))

(declare-fun res!90729 () Bool)

(assert (=> d!56211 (=> (not res!90729) (not e!126338))))

(declare-fun lt!95437 () ListLongMap!2459)

(assert (=> d!56211 (= res!90729 (contains!1353 lt!95437 (_1!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248)))))))

(declare-fun lt!95435 () List!2445)

(assert (=> d!56211 (= lt!95437 (ListLongMap!2460 lt!95435))))

(declare-fun lt!95436 () Unit!5790)

(declare-fun lt!95438 () Unit!5790)

(assert (=> d!56211 (= lt!95436 lt!95438)))

(assert (=> d!56211 (= (getValueByKey!238 lt!95435 (_1!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248)))))))

(assert (=> d!56211 (= lt!95438 (lemmaContainsTupThenGetReturnValue!127 lt!95435 (_1!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248)))))))

(assert (=> d!56211 (= lt!95435 (insertStrictlySorted!129 (toList!1245 lt!95249) (_1!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248)))))))

(assert (=> d!56211 (= (+!303 lt!95249 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))) lt!95437)))

(declare-fun b!191993 () Bool)

(declare-fun res!90728 () Bool)

(assert (=> b!191993 (=> (not res!90728) (not e!126338))))

(assert (=> b!191993 (= res!90728 (= (getValueByKey!238 (toList!1245 lt!95437) (_1!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))))))))

(declare-fun b!191994 () Bool)

(assert (=> b!191994 (= e!126338 (contains!1355 (toList!1245 lt!95437) (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))))))

(assert (= (and d!56211 res!90729) b!191993))

(assert (= (and b!191993 res!90728) b!191994))

(declare-fun m!218683 () Bool)

(assert (=> d!56211 m!218683))

(declare-fun m!218685 () Bool)

(assert (=> d!56211 m!218685))

(declare-fun m!218687 () Bool)

(assert (=> d!56211 m!218687))

(declare-fun m!218689 () Bool)

(assert (=> d!56211 m!218689))

(declare-fun m!218691 () Bool)

(assert (=> b!191993 m!218691))

(declare-fun m!218693 () Bool)

(assert (=> b!191994 m!218693))

(assert (=> b!191638 d!56211))

(declare-fun d!56213 () Bool)

(declare-fun e!126339 () Bool)

(assert (=> d!56213 e!126339))

(declare-fun res!90731 () Bool)

(assert (=> d!56213 (=> (not res!90731) (not e!126339))))

(declare-fun lt!95441 () ListLongMap!2459)

(assert (=> d!56213 (= res!90731 (contains!1353 lt!95441 (_1!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248)))))))

(declare-fun lt!95439 () List!2445)

(assert (=> d!56213 (= lt!95441 (ListLongMap!2460 lt!95439))))

(declare-fun lt!95440 () Unit!5790)

(declare-fun lt!95442 () Unit!5790)

(assert (=> d!56213 (= lt!95440 lt!95442)))

(assert (=> d!56213 (= (getValueByKey!238 lt!95439 (_1!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248)))))))

(assert (=> d!56213 (= lt!95442 (lemmaContainsTupThenGetReturnValue!127 lt!95439 (_1!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248)))))))

(assert (=> d!56213 (= lt!95439 (insertStrictlySorted!129 (toList!1245 lt!95260) (_1!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248)))))))

(assert (=> d!56213 (= (+!303 lt!95260 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))) lt!95441)))

(declare-fun b!191995 () Bool)

(declare-fun res!90730 () Bool)

(assert (=> b!191995 (=> (not res!90730) (not e!126339))))

(assert (=> b!191995 (= res!90730 (= (getValueByKey!238 (toList!1245 lt!95441) (_1!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))))))))

(declare-fun b!191996 () Bool)

(assert (=> b!191996 (= e!126339 (contains!1355 (toList!1245 lt!95441) (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))))))

(assert (= (and d!56213 res!90731) b!191995))

(assert (= (and b!191995 res!90730) b!191996))

(declare-fun m!218695 () Bool)

(assert (=> d!56213 m!218695))

(declare-fun m!218697 () Bool)

(assert (=> d!56213 m!218697))

(declare-fun m!218699 () Bool)

(assert (=> d!56213 m!218699))

(declare-fun m!218701 () Bool)

(assert (=> d!56213 m!218701))

(declare-fun m!218703 () Bool)

(assert (=> b!191995 m!218703))

(declare-fun m!218705 () Bool)

(assert (=> b!191996 m!218705))

(assert (=> b!191638 d!56213))

(declare-fun d!56215 () Bool)

(assert (=> d!56215 (= (apply!182 lt!95249 lt!95246) (get!2215 (getValueByKey!238 (toList!1245 lt!95249) lt!95246)))))

(declare-fun bs!7681 () Bool)

(assert (= bs!7681 d!56215))

(declare-fun m!218707 () Bool)

(assert (=> bs!7681 m!218707))

(assert (=> bs!7681 m!218707))

(declare-fun m!218709 () Bool)

(assert (=> bs!7681 m!218709))

(assert (=> b!191638 d!56215))

(assert (=> b!191638 d!56175))

(declare-fun d!56217 () Bool)

(assert (=> d!56217 (= (apply!182 (+!303 lt!95249 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))) lt!95246) (get!2215 (getValueByKey!238 (toList!1245 (+!303 lt!95249 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248)))) lt!95246)))))

(declare-fun bs!7682 () Bool)

(assert (= bs!7682 d!56217))

(declare-fun m!218711 () Bool)

(assert (=> bs!7682 m!218711))

(assert (=> bs!7682 m!218711))

(declare-fun m!218713 () Bool)

(assert (=> bs!7682 m!218713))

(assert (=> b!191638 d!56217))

(declare-fun d!56219 () Bool)

(assert (=> d!56219 (= (apply!182 (+!303 lt!95260 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248))) lt!95254) (get!2215 (getValueByKey!238 (toList!1245 (+!303 lt!95260 (tuple2!3529 lt!95253 (minValue!3751 thiss!1248)))) lt!95254)))))

(declare-fun bs!7683 () Bool)

(assert (= bs!7683 d!56219))

(declare-fun m!218715 () Bool)

(assert (=> bs!7683 m!218715))

(assert (=> bs!7683 m!218715))

(declare-fun m!218717 () Bool)

(assert (=> bs!7683 m!218717))

(assert (=> b!191638 d!56219))

(declare-fun d!56221 () Bool)

(declare-fun e!126340 () Bool)

(assert (=> d!56221 e!126340))

(declare-fun res!90733 () Bool)

(assert (=> d!56221 (=> (not res!90733) (not e!126340))))

(declare-fun lt!95445 () ListLongMap!2459)

(assert (=> d!56221 (= res!90733 (contains!1353 lt!95445 (_1!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248)))))))

(declare-fun lt!95443 () List!2445)

(assert (=> d!56221 (= lt!95445 (ListLongMap!2460 lt!95443))))

(declare-fun lt!95444 () Unit!5790)

(declare-fun lt!95446 () Unit!5790)

(assert (=> d!56221 (= lt!95444 lt!95446)))

(assert (=> d!56221 (= (getValueByKey!238 lt!95443 (_1!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56221 (= lt!95446 (lemmaContainsTupThenGetReturnValue!127 lt!95443 (_1!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56221 (= lt!95443 (insertStrictlySorted!129 (toList!1245 lt!95258) (_1!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56221 (= (+!303 lt!95258 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))) lt!95445)))

(declare-fun b!191997 () Bool)

(declare-fun res!90732 () Bool)

(assert (=> b!191997 (=> (not res!90732) (not e!126340))))

(assert (=> b!191997 (= res!90732 (= (getValueByKey!238 (toList!1245 lt!95445) (_1!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))))))))

(declare-fun b!191998 () Bool)

(assert (=> b!191998 (= e!126340 (contains!1355 (toList!1245 lt!95445) (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))))))

(assert (= (and d!56221 res!90733) b!191997))

(assert (= (and b!191997 res!90732) b!191998))

(declare-fun m!218719 () Bool)

(assert (=> d!56221 m!218719))

(declare-fun m!218721 () Bool)

(assert (=> d!56221 m!218721))

(declare-fun m!218723 () Bool)

(assert (=> d!56221 m!218723))

(declare-fun m!218725 () Bool)

(assert (=> d!56221 m!218725))

(declare-fun m!218727 () Bool)

(assert (=> b!191997 m!218727))

(declare-fun m!218729 () Bool)

(assert (=> b!191998 m!218729))

(assert (=> b!191638 d!56221))

(declare-fun d!56223 () Bool)

(assert (=> d!56223 (= (apply!182 lt!95260 lt!95254) (get!2215 (getValueByKey!238 (toList!1245 lt!95260) lt!95254)))))

(declare-fun bs!7684 () Bool)

(assert (= bs!7684 d!56223))

(declare-fun m!218731 () Bool)

(assert (=> bs!7684 m!218731))

(assert (=> bs!7684 m!218731))

(declare-fun m!218733 () Bool)

(assert (=> bs!7684 m!218733))

(assert (=> b!191638 d!56223))

(declare-fun d!56225 () Bool)

(declare-fun e!126341 () Bool)

(assert (=> d!56225 e!126341))

(declare-fun res!90735 () Bool)

(assert (=> d!56225 (=> (not res!90735) (not e!126341))))

(declare-fun lt!95449 () ListLongMap!2459)

(assert (=> d!56225 (= res!90735 (contains!1353 lt!95449 (_1!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))))))

(declare-fun lt!95447 () List!2445)

(assert (=> d!56225 (= lt!95449 (ListLongMap!2460 lt!95447))))

(declare-fun lt!95448 () Unit!5790)

(declare-fun lt!95450 () Unit!5790)

(assert (=> d!56225 (= lt!95448 lt!95450)))

(assert (=> d!56225 (= (getValueByKey!238 lt!95447 (_1!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56225 (= lt!95450 (lemmaContainsTupThenGetReturnValue!127 lt!95447 (_1!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56225 (= lt!95447 (insertStrictlySorted!129 (toList!1245 lt!95248) (_1!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))) (_2!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))))))

(assert (=> d!56225 (= (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))) lt!95449)))

(declare-fun b!191999 () Bool)

(declare-fun res!90734 () Bool)

(assert (=> b!191999 (=> (not res!90734) (not e!126341))))

(assert (=> b!191999 (= res!90734 (= (getValueByKey!238 (toList!1245 lt!95449) (_1!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))) (Some!243 (_2!1774 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))))))))

(declare-fun b!192000 () Bool)

(assert (=> b!192000 (= e!126341 (contains!1355 (toList!1245 lt!95449) (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))))))

(assert (= (and d!56225 res!90735) b!191999))

(assert (= (and b!191999 res!90734) b!192000))

(declare-fun m!218735 () Bool)

(assert (=> d!56225 m!218735))

(declare-fun m!218737 () Bool)

(assert (=> d!56225 m!218737))

(declare-fun m!218739 () Bool)

(assert (=> d!56225 m!218739))

(declare-fun m!218741 () Bool)

(assert (=> d!56225 m!218741))

(declare-fun m!218743 () Bool)

(assert (=> b!191999 m!218743))

(declare-fun m!218745 () Bool)

(assert (=> b!192000 m!218745))

(assert (=> b!191638 d!56225))

(declare-fun d!56227 () Bool)

(assert (=> d!56227 (= (apply!182 (+!303 lt!95249 (tuple2!3529 lt!95243 (minValue!3751 thiss!1248))) lt!95246) (apply!182 lt!95249 lt!95246))))

(declare-fun lt!95451 () Unit!5790)

(assert (=> d!56227 (= lt!95451 (choose!1049 lt!95249 lt!95243 (minValue!3751 thiss!1248) lt!95246))))

(declare-fun e!126342 () Bool)

(assert (=> d!56227 e!126342))

(declare-fun res!90736 () Bool)

(assert (=> d!56227 (=> (not res!90736) (not e!126342))))

(assert (=> d!56227 (= res!90736 (contains!1353 lt!95249 lt!95246))))

(assert (=> d!56227 (= (addApplyDifferent!158 lt!95249 lt!95243 (minValue!3751 thiss!1248) lt!95246) lt!95451)))

(declare-fun b!192001 () Bool)

(assert (=> b!192001 (= e!126342 (not (= lt!95246 lt!95243)))))

(assert (= (and d!56227 res!90736) b!192001))

(assert (=> d!56227 m!218269))

(assert (=> d!56227 m!218273))

(assert (=> d!56227 m!218273))

(assert (=> d!56227 m!218275))

(declare-fun m!218747 () Bool)

(assert (=> d!56227 m!218747))

(declare-fun m!218749 () Bool)

(assert (=> d!56227 m!218749))

(assert (=> b!191638 d!56227))

(declare-fun d!56229 () Bool)

(assert (=> d!56229 (= (apply!182 lt!95258 lt!95250) (get!2215 (getValueByKey!238 (toList!1245 lt!95258) lt!95250)))))

(declare-fun bs!7685 () Bool)

(assert (= bs!7685 d!56229))

(declare-fun m!218751 () Bool)

(assert (=> bs!7685 m!218751))

(assert (=> bs!7685 m!218751))

(declare-fun m!218753 () Bool)

(assert (=> bs!7685 m!218753))

(assert (=> b!191638 d!56229))

(declare-fun d!56231 () Bool)

(assert (=> d!56231 (= (apply!182 (+!303 lt!95258 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248))) lt!95250) (get!2215 (getValueByKey!238 (toList!1245 (+!303 lt!95258 (tuple2!3529 lt!95247 (zeroValue!3751 thiss!1248)))) lt!95250)))))

(declare-fun bs!7686 () Bool)

(assert (= bs!7686 d!56231))

(declare-fun m!218755 () Bool)

(assert (=> bs!7686 m!218755))

(assert (=> bs!7686 m!218755))

(declare-fun m!218757 () Bool)

(assert (=> bs!7686 m!218757))

(assert (=> b!191638 d!56231))

(declare-fun d!56233 () Bool)

(declare-fun e!126344 () Bool)

(assert (=> d!56233 e!126344))

(declare-fun res!90737 () Bool)

(assert (=> d!56233 (=> res!90737 e!126344)))

(declare-fun lt!95453 () Bool)

(assert (=> d!56233 (= res!90737 (not lt!95453))))

(declare-fun lt!95454 () Bool)

(assert (=> d!56233 (= lt!95453 lt!95454)))

(declare-fun lt!95455 () Unit!5790)

(declare-fun e!126343 () Unit!5790)

(assert (=> d!56233 (= lt!95455 e!126343)))

(declare-fun c!34592 () Bool)

(assert (=> d!56233 (= c!34592 lt!95454)))

(assert (=> d!56233 (= lt!95454 (containsKey!242 (toList!1245 (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))) lt!95251))))

(assert (=> d!56233 (= (contains!1353 (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248))) lt!95251) lt!95453)))

(declare-fun b!192002 () Bool)

(declare-fun lt!95452 () Unit!5790)

(assert (=> b!192002 (= e!126343 lt!95452)))

(assert (=> b!192002 (= lt!95452 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))) lt!95251))))

(assert (=> b!192002 (isDefined!192 (getValueByKey!238 (toList!1245 (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))) lt!95251))))

(declare-fun b!192003 () Bool)

(declare-fun Unit!5805 () Unit!5790)

(assert (=> b!192003 (= e!126343 Unit!5805)))

(declare-fun b!192004 () Bool)

(assert (=> b!192004 (= e!126344 (isDefined!192 (getValueByKey!238 (toList!1245 (+!303 lt!95248 (tuple2!3529 lt!95241 (zeroValue!3751 thiss!1248)))) lt!95251)))))

(assert (= (and d!56233 c!34592) b!192002))

(assert (= (and d!56233 (not c!34592)) b!192003))

(assert (= (and d!56233 (not res!90737)) b!192004))

(declare-fun m!218759 () Bool)

(assert (=> d!56233 m!218759))

(declare-fun m!218761 () Bool)

(assert (=> b!192002 m!218761))

(declare-fun m!218763 () Bool)

(assert (=> b!192002 m!218763))

(assert (=> b!192002 m!218763))

(declare-fun m!218765 () Bool)

(assert (=> b!192002 m!218765))

(assert (=> b!192004 m!218763))

(assert (=> b!192004 m!218763))

(assert (=> b!192004 m!218765))

(assert (=> b!191638 d!56233))

(assert (=> b!191639 d!56099))

(assert (=> bm!19338 d!56139))

(declare-fun d!56235 () Bool)

(assert (=> d!56235 (= (inRange!0 (ite c!34497 (index!4926 lt!95277) (index!4929 lt!95277)) (mask!9131 thiss!1248)) (and (bvsge (ite c!34497 (index!4926 lt!95277) (index!4929 lt!95277)) #b00000000000000000000000000000000) (bvslt (ite c!34497 (index!4926 lt!95277) (index!4929 lt!95277)) (bvadd (mask!9131 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!19356 d!56235))

(declare-fun d!56237 () Bool)

(declare-fun e!126346 () Bool)

(assert (=> d!56237 e!126346))

(declare-fun res!90738 () Bool)

(assert (=> d!56237 (=> res!90738 e!126346)))

(declare-fun lt!95457 () Bool)

(assert (=> d!56237 (= res!90738 (not lt!95457))))

(declare-fun lt!95458 () Bool)

(assert (=> d!56237 (= lt!95457 lt!95458)))

(declare-fun lt!95459 () Unit!5790)

(declare-fun e!126345 () Unit!5790)

(assert (=> d!56237 (= lt!95459 e!126345)))

(declare-fun c!34593 () Bool)

(assert (=> d!56237 (= c!34593 lt!95458)))

(assert (=> d!56237 (= lt!95458 (containsKey!242 (toList!1245 lt!95256) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56237 (= (contains!1353 lt!95256 (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)) lt!95457)))

(declare-fun b!192005 () Bool)

(declare-fun lt!95456 () Unit!5790)

(assert (=> b!192005 (= e!126345 lt!95456)))

(assert (=> b!192005 (= lt!95456 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95256) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192005 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95256) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192006 () Bool)

(declare-fun Unit!5806 () Unit!5790)

(assert (=> b!192006 (= e!126345 Unit!5806)))

(declare-fun b!192007 () Bool)

(assert (=> b!192007 (= e!126346 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95256) (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56237 c!34593) b!192005))

(assert (= (and d!56237 (not c!34593)) b!192006))

(assert (= (and d!56237 (not res!90738)) b!192007))

(assert (=> d!56237 m!218187))

(declare-fun m!218767 () Bool)

(assert (=> d!56237 m!218767))

(assert (=> b!192005 m!218187))

(declare-fun m!218769 () Bool)

(assert (=> b!192005 m!218769))

(assert (=> b!192005 m!218187))

(assert (=> b!192005 m!218545))

(assert (=> b!192005 m!218545))

(declare-fun m!218771 () Bool)

(assert (=> b!192005 m!218771))

(assert (=> b!192007 m!218187))

(assert (=> b!192007 m!218545))

(assert (=> b!192007 m!218545))

(assert (=> b!192007 m!218771))

(assert (=> b!191640 d!56237))

(declare-fun d!56239 () Bool)

(declare-fun res!90743 () Bool)

(declare-fun e!126351 () Bool)

(assert (=> d!56239 (=> res!90743 e!126351)))

(assert (=> d!56239 (= res!90743 (= (select (arr!3838 (_keys!5888 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!56239 (= (arrayContainsKey!0 (_keys!5888 thiss!1248) key!828 #b00000000000000000000000000000000) e!126351)))

(declare-fun b!192012 () Bool)

(declare-fun e!126352 () Bool)

(assert (=> b!192012 (= e!126351 e!126352)))

(declare-fun res!90744 () Bool)

(assert (=> b!192012 (=> (not res!90744) (not e!126352))))

(assert (=> b!192012 (= res!90744 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4160 (_keys!5888 thiss!1248))))))

(declare-fun b!192013 () Bool)

(assert (=> b!192013 (= e!126352 (arrayContainsKey!0 (_keys!5888 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!56239 (not res!90743)) b!192012))

(assert (= (and b!192012 res!90744) b!192013))

(assert (=> d!56239 m!218187))

(declare-fun m!218773 () Bool)

(assert (=> b!192013 m!218773))

(assert (=> bm!19357 d!56239))

(declare-fun d!56241 () Bool)

(declare-fun e!126354 () Bool)

(assert (=> d!56241 e!126354))

(declare-fun res!90745 () Bool)

(assert (=> d!56241 (=> res!90745 e!126354)))

(declare-fun lt!95461 () Bool)

(assert (=> d!56241 (= res!90745 (not lt!95461))))

(declare-fun lt!95462 () Bool)

(assert (=> d!56241 (= lt!95461 lt!95462)))

(declare-fun lt!95463 () Unit!5790)

(declare-fun e!126353 () Unit!5790)

(assert (=> d!56241 (= lt!95463 e!126353)))

(declare-fun c!34594 () Bool)

(assert (=> d!56241 (= c!34594 lt!95462)))

(assert (=> d!56241 (= lt!95462 (containsKey!242 (toList!1245 lt!95256) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56241 (= (contains!1353 lt!95256 #b0000000000000000000000000000000000000000000000000000000000000000) lt!95461)))

(declare-fun b!192014 () Bool)

(declare-fun lt!95460 () Unit!5790)

(assert (=> b!192014 (= e!126353 lt!95460)))

(assert (=> b!192014 (= lt!95460 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!1245 lt!95256) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192014 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95256) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192015 () Bool)

(declare-fun Unit!5807 () Unit!5790)

(assert (=> b!192015 (= e!126353 Unit!5807)))

(declare-fun b!192016 () Bool)

(assert (=> b!192016 (= e!126354 (isDefined!192 (getValueByKey!238 (toList!1245 lt!95256) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56241 c!34594) b!192014))

(assert (= (and d!56241 (not c!34594)) b!192015))

(assert (= (and d!56241 (not res!90745)) b!192016))

(declare-fun m!218775 () Bool)

(assert (=> d!56241 m!218775))

(declare-fun m!218777 () Bool)

(assert (=> b!192014 m!218777))

(assert (=> b!192014 m!218567))

(assert (=> b!192014 m!218567))

(declare-fun m!218779 () Bool)

(assert (=> b!192014 m!218779))

(assert (=> b!192016 m!218567))

(assert (=> b!192016 m!218567))

(assert (=> b!192016 m!218779))

(assert (=> bm!19349 d!56241))

(declare-fun d!56243 () Bool)

(assert (=> d!56243 (= (inRange!0 (index!4927 lt!95157) (mask!9131 thiss!1248)) (and (bvsge (index!4927 lt!95157) #b00000000000000000000000000000000) (bvslt (index!4927 lt!95157) (bvadd (mask!9131 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!191551 d!56243))

(declare-fun b!192025 () Bool)

(declare-fun res!90757 () Bool)

(declare-fun e!126357 () Bool)

(assert (=> b!192025 (=> (not res!90757) (not e!126357))))

(assert (=> b!192025 (= res!90757 (and (= (size!4161 (_values!3893 thiss!1248)) (bvadd (mask!9131 thiss!1248) #b00000000000000000000000000000001)) (= (size!4160 (_keys!5888 thiss!1248)) (size!4161 (_values!3893 thiss!1248))) (bvsge (_size!1387 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1387 thiss!1248) (bvadd (mask!9131 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!192026 () Bool)

(declare-fun res!90756 () Bool)

(assert (=> b!192026 (=> (not res!90756) (not e!126357))))

(declare-fun size!4164 (LongMapFixedSize!2676) (_ BitVec 32))

(assert (=> b!192026 (= res!90756 (bvsge (size!4164 thiss!1248) (_size!1387 thiss!1248)))))

(declare-fun b!192028 () Bool)

(assert (=> b!192028 (= e!126357 (and (bvsge (extraKeys!3647 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3647 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1387 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!192027 () Bool)

(declare-fun res!90754 () Bool)

(assert (=> b!192027 (=> (not res!90754) (not e!126357))))

(assert (=> b!192027 (= res!90754 (= (size!4164 thiss!1248) (bvadd (_size!1387 thiss!1248) (bvsdiv (bvadd (extraKeys!3647 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!56245 () Bool)

(declare-fun res!90755 () Bool)

(assert (=> d!56245 (=> (not res!90755) (not e!126357))))

(assert (=> d!56245 (= res!90755 (validMask!0 (mask!9131 thiss!1248)))))

(assert (=> d!56245 (= (simpleValid!197 thiss!1248) e!126357)))

(assert (= (and d!56245 res!90755) b!192025))

(assert (= (and b!192025 res!90757) b!192026))

(assert (= (and b!192026 res!90756) b!192027))

(assert (= (and b!192027 res!90754) b!192028))

(declare-fun m!218781 () Bool)

(assert (=> b!192026 m!218781))

(assert (=> b!192027 m!218781))

(assert (=> d!56245 m!218115))

(assert (=> d!56071 d!56245))

(declare-fun b!192029 () Bool)

(declare-fun e!126358 () Bool)

(assert (=> b!192029 (= e!126358 tp_is_empty!4455)))

(declare-fun mapNonEmpty!7702 () Bool)

(declare-fun mapRes!7702 () Bool)

(declare-fun tp!16909 () Bool)

(assert (=> mapNonEmpty!7702 (= mapRes!7702 (and tp!16909 e!126358))))

(declare-fun mapRest!7702 () (Array (_ BitVec 32) ValueCell!1884))

(declare-fun mapValue!7702 () ValueCell!1884)

(declare-fun mapKey!7702 () (_ BitVec 32))

(assert (=> mapNonEmpty!7702 (= mapRest!7701 (store mapRest!7702 mapKey!7702 mapValue!7702))))

(declare-fun condMapEmpty!7702 () Bool)

(declare-fun mapDefault!7702 () ValueCell!1884)

(assert (=> mapNonEmpty!7701 (= condMapEmpty!7702 (= mapRest!7701 ((as const (Array (_ BitVec 32) ValueCell!1884)) mapDefault!7702)))))

(declare-fun e!126359 () Bool)

(assert (=> mapNonEmpty!7701 (= tp!16908 (and e!126359 mapRes!7702))))

(declare-fun b!192030 () Bool)

(assert (=> b!192030 (= e!126359 tp_is_empty!4455)))

(declare-fun mapIsEmpty!7702 () Bool)

(assert (=> mapIsEmpty!7702 mapRes!7702))

(assert (= (and mapNonEmpty!7701 condMapEmpty!7702) mapIsEmpty!7702))

(assert (= (and mapNonEmpty!7701 (not condMapEmpty!7702)) mapNonEmpty!7702))

(assert (= (and mapNonEmpty!7702 ((_ is ValueCellFull!1884) mapValue!7702)) b!192029))

(assert (= (and mapNonEmpty!7701 ((_ is ValueCellFull!1884) mapDefault!7702)) b!192030))

(declare-fun m!218783 () Bool)

(assert (=> mapNonEmpty!7702 m!218783))

(declare-fun b_lambda!7445 () Bool)

(assert (= b_lambda!7437 (or (and b!191495 b_free!4683) b_lambda!7445)))

(declare-fun b_lambda!7447 () Bool)

(assert (= b_lambda!7441 (or (and b!191495 b_free!4683) b_lambda!7447)))

(declare-fun b_lambda!7449 () Bool)

(assert (= b_lambda!7443 (or (and b!191495 b_free!4683) b_lambda!7449)))

(declare-fun b_lambda!7451 () Bool)

(assert (= b_lambda!7439 (or (and b!191495 b_free!4683) b_lambda!7451)))

(check-sat (not d!56163) (not b!191725) (not d!56167) (not d!56187) (not b!191839) (not d!56145) (not d!56113) (not b!191857) (not b!191723) (not d!56241) (not d!56199) (not d!56179) (not d!56171) (not b!191853) (not b!191919) (not d!56105) (not b!191790) (not b!191775) (not b!191711) (not b_lambda!7451) (not bm!19379) (not d!56121) (not d!56217) (not d!56161) (not b!192002) (not d!56101) (not b!191833) (not b!191726) (not d!56157) (not d!56183) (not d!56173) (not b!192004) (not b!191820) (not d!56147) (not b!191996) (not d!56131) (not b!192014) (not d!56205) (not d!56119) (not b!191824) (not b!191889) (not b!191746) (not b!191850) (not b!191791) (not d!56097) (not b_next!4683) (not d!56231) (not d!56169) (not b!191825) (not d!56149) (not b!191994) (not b!191989) (not b!192013) (not b!191937) (not bm!19385) (not b!191995) (not d!56143) (not b!191896) (not b!191999) (not d!56139) (not b!191788) (not b!191958) (not d!56141) (not b!191734) (not d!56195) (not b!191884) (not b!191743) (not d!56191) (not b!191886) (not b!191823) b_and!11389 (not bm!19366) (not b!191840) (not b!191956) (not b!191917) (not mapNonEmpty!7702) (not b!191794) (not d!56225) (not d!56227) (not b!191998) (not b!191828) (not b!191830) (not b!191891) (not d!56155) (not b!191834) (not b!191936) (not b!192007) (not b_lambda!7435) (not b!191951) (not b!191741) (not d!56221) (not b!191841) (not d!56207) (not bm!19369) (not b!191959) tp_is_empty!4455 (not d!56245) (not d!56109) (not d!56223) (not d!56229) (not b!191793) (not b!191782) (not b!191821) (not b!191792) (not b!191882) (not b!191776) (not b!191835) (not d!56153) (not d!56237) (not b!191894) (not b!191847) (not d!56213) (not bm!19374) (not b!192016) (not d!56123) (not b!191826) (not b!192005) (not b!191740) (not d!56175) (not b!191987) (not d!56189) (not b!191855) (not d!56193) (not d!56151) (not b!191921) (not d!56117) (not b!191752) (not d!56211) (not b!191732) (not d!56125) (not b_lambda!7447) (not d!56215) (not d!56129) (not b!191753) (not b!191836) (not b!191906) (not b!191733) (not d!56133) (not b!191922) (not b!191890) (not b!191997) (not b!191993) (not d!56209) (not bm!19382) (not b!192026) (not b_lambda!7445) (not d!56219) (not d!56135) (not d!56233) (not b!191838) (not b_lambda!7449) (not b!191961) (not b!192027) (not d!56137) (not bm!19376) (not b!191846) (not b!191990) (not b!192000) (not b!191892) (not d!56127) (not d!56111) (not d!56203) (not b_lambda!7433) (not b!191887) (not bm!19375) (not b!191935))
(check-sat b_and!11389 (not b_next!4683))
