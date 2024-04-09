; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80264 () Bool)

(assert start!80264)

(declare-fun b!942335 () Bool)

(declare-fun b_free!17949 () Bool)

(declare-fun b_next!17949 () Bool)

(assert (=> b!942335 (= b_free!17949 (not b_next!17949))))

(declare-fun tp!62350 () Bool)

(declare-fun b_and!29379 () Bool)

(assert (=> b!942335 (= tp!62350 b_and!29379)))

(declare-fun b!942329 () Bool)

(declare-fun e!529863 () Bool)

(declare-fun e!529862 () Bool)

(declare-fun mapRes!32504 () Bool)

(assert (=> b!942329 (= e!529863 (and e!529862 mapRes!32504))))

(declare-fun condMapEmpty!32504 () Bool)

(declare-datatypes ((V!32241 0))(
  ( (V!32242 (val!10279 Int)) )
))
(declare-datatypes ((ValueCell!9747 0))(
  ( (ValueCellFull!9747 (v!12810 V!32241)) (EmptyCell!9747) )
))
(declare-datatypes ((array!56900 0))(
  ( (array!56901 (arr!27373 (Array (_ BitVec 32) ValueCell!9747)) (size!27839 (_ BitVec 32))) )
))
(declare-datatypes ((array!56902 0))(
  ( (array!56903 (arr!27374 (Array (_ BitVec 32) (_ BitVec 64))) (size!27840 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4644 0))(
  ( (LongMapFixedSize!4645 (defaultEntry!5613 Int) (mask!27213 (_ BitVec 32)) (extraKeys!5345 (_ BitVec 32)) (zeroValue!5449 V!32241) (minValue!5449 V!32241) (_size!2377 (_ BitVec 32)) (_keys!10481 array!56902) (_values!5636 array!56900) (_vacant!2377 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4644)

(declare-fun mapDefault!32504 () ValueCell!9747)

(assert (=> b!942329 (= condMapEmpty!32504 (= (arr!27373 (_values!5636 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9747)) mapDefault!32504)))))

(declare-fun b!942330 () Bool)

(declare-fun res!633345 () Bool)

(declare-fun e!529864 () Bool)

(assert (=> b!942330 (=> (not res!633345) (not e!529864))))

(assert (=> b!942330 (= res!633345 (and (= (size!27839 (_values!5636 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27213 thiss!1141))) (= (size!27840 (_keys!10481 thiss!1141)) (size!27839 (_values!5636 thiss!1141))) (bvsge (mask!27213 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5345 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5345 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942331 () Bool)

(declare-fun tp_is_empty!20457 () Bool)

(assert (=> b!942331 (= e!529862 tp_is_empty!20457)))

(declare-fun b!942332 () Bool)

(declare-fun res!633343 () Bool)

(assert (=> b!942332 (=> (not res!633343) (not e!529864))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9024 0))(
  ( (MissingZero!9024 (index!38466 (_ BitVec 32))) (Found!9024 (index!38467 (_ BitVec 32))) (Intermediate!9024 (undefined!9836 Bool) (index!38468 (_ BitVec 32)) (x!80906 (_ BitVec 32))) (Undefined!9024) (MissingVacant!9024 (index!38469 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56902 (_ BitVec 32)) SeekEntryResult!9024)

(assert (=> b!942332 (= res!633343 (not ((_ is Found!9024) (seekEntry!0 key!756 (_keys!10481 thiss!1141) (mask!27213 thiss!1141)))))))

(declare-fun b!942333 () Bool)

(declare-fun e!529861 () Bool)

(assert (=> b!942333 (= e!529861 tp_is_empty!20457)))

(declare-fun b!942334 () Bool)

(declare-fun res!633348 () Bool)

(assert (=> b!942334 (=> (not res!633348) (not e!529864))))

(assert (=> b!942334 (= res!633348 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!529860 () Bool)

(declare-fun array_inv!21224 (array!56902) Bool)

(declare-fun array_inv!21225 (array!56900) Bool)

(assert (=> b!942335 (= e!529860 (and tp!62350 tp_is_empty!20457 (array_inv!21224 (_keys!10481 thiss!1141)) (array_inv!21225 (_values!5636 thiss!1141)) e!529863))))

(declare-fun b!942336 () Bool)

(declare-fun res!633342 () Bool)

(assert (=> b!942336 (=> (not res!633342) (not e!529864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942336 (= res!633342 (validMask!0 (mask!27213 thiss!1141)))))

(declare-fun mapIsEmpty!32504 () Bool)

(assert (=> mapIsEmpty!32504 mapRes!32504))

(declare-fun b!942337 () Bool)

(declare-fun res!633344 () Bool)

(assert (=> b!942337 (=> (not res!633344) (not e!529864))))

(declare-datatypes ((List!19348 0))(
  ( (Nil!19345) (Cons!19344 (h!20494 (_ BitVec 64)) (t!27671 List!19348)) )
))
(declare-fun arrayNoDuplicates!0 (array!56902 (_ BitVec 32) List!19348) Bool)

(assert (=> b!942337 (= res!633344 (arrayNoDuplicates!0 (_keys!10481 thiss!1141) #b00000000000000000000000000000000 Nil!19345))))

(declare-fun res!633346 () Bool)

(assert (=> start!80264 (=> (not res!633346) (not e!529864))))

(declare-fun valid!1759 (LongMapFixedSize!4644) Bool)

(assert (=> start!80264 (= res!633346 (valid!1759 thiss!1141))))

(assert (=> start!80264 e!529864))

(assert (=> start!80264 e!529860))

(assert (=> start!80264 true))

(declare-fun b!942338 () Bool)

(assert (=> b!942338 (= e!529864 (bvsgt #b00000000000000000000000000000000 (size!27840 (_keys!10481 thiss!1141))))))

(declare-fun b!942339 () Bool)

(declare-fun res!633347 () Bool)

(assert (=> b!942339 (=> (not res!633347) (not e!529864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56902 (_ BitVec 32)) Bool)

(assert (=> b!942339 (= res!633347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10481 thiss!1141) (mask!27213 thiss!1141)))))

(declare-fun mapNonEmpty!32504 () Bool)

(declare-fun tp!62351 () Bool)

(assert (=> mapNonEmpty!32504 (= mapRes!32504 (and tp!62351 e!529861))))

(declare-fun mapRest!32504 () (Array (_ BitVec 32) ValueCell!9747))

(declare-fun mapValue!32504 () ValueCell!9747)

(declare-fun mapKey!32504 () (_ BitVec 32))

(assert (=> mapNonEmpty!32504 (= (arr!27373 (_values!5636 thiss!1141)) (store mapRest!32504 mapKey!32504 mapValue!32504))))

(assert (= (and start!80264 res!633346) b!942334))

(assert (= (and b!942334 res!633348) b!942332))

(assert (= (and b!942332 res!633343) b!942336))

(assert (= (and b!942336 res!633342) b!942330))

(assert (= (and b!942330 res!633345) b!942339))

(assert (= (and b!942339 res!633347) b!942337))

(assert (= (and b!942337 res!633344) b!942338))

(assert (= (and b!942329 condMapEmpty!32504) mapIsEmpty!32504))

(assert (= (and b!942329 (not condMapEmpty!32504)) mapNonEmpty!32504))

(assert (= (and mapNonEmpty!32504 ((_ is ValueCellFull!9747) mapValue!32504)) b!942333))

(assert (= (and b!942329 ((_ is ValueCellFull!9747) mapDefault!32504)) b!942331))

(assert (= b!942335 b!942329))

(assert (= start!80264 b!942335))

(declare-fun m!876991 () Bool)

(assert (=> b!942336 m!876991))

(declare-fun m!876993 () Bool)

(assert (=> b!942332 m!876993))

(declare-fun m!876995 () Bool)

(assert (=> mapNonEmpty!32504 m!876995))

(declare-fun m!876997 () Bool)

(assert (=> b!942337 m!876997))

(declare-fun m!876999 () Bool)

(assert (=> start!80264 m!876999))

(declare-fun m!877001 () Bool)

(assert (=> b!942335 m!877001))

(declare-fun m!877003 () Bool)

(assert (=> b!942335 m!877003))

(declare-fun m!877005 () Bool)

(assert (=> b!942339 m!877005))

(check-sat (not b!942335) (not b_next!17949) (not b!942339) (not b!942332) (not b!942337) (not mapNonEmpty!32504) tp_is_empty!20457 (not start!80264) b_and!29379 (not b!942336))
(check-sat b_and!29379 (not b_next!17949))
(get-model)

(declare-fun b!942385 () Bool)

(declare-fun e!529891 () SeekEntryResult!9024)

(declare-fun lt!425111 () SeekEntryResult!9024)

(assert (=> b!942385 (= e!529891 (Found!9024 (index!38468 lt!425111)))))

(declare-fun b!942386 () Bool)

(declare-fun e!529892 () SeekEntryResult!9024)

(declare-fun lt!425110 () SeekEntryResult!9024)

(assert (=> b!942386 (= e!529892 (ite ((_ is MissingVacant!9024) lt!425110) (MissingZero!9024 (index!38469 lt!425110)) lt!425110))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56902 (_ BitVec 32)) SeekEntryResult!9024)

(assert (=> b!942386 (= lt!425110 (seekKeyOrZeroReturnVacant!0 (x!80906 lt!425111) (index!38468 lt!425111) (index!38468 lt!425111) key!756 (_keys!10481 thiss!1141) (mask!27213 thiss!1141)))))

(declare-fun b!942387 () Bool)

(declare-fun e!529890 () SeekEntryResult!9024)

(assert (=> b!942387 (= e!529890 Undefined!9024)))

(declare-fun d!114111 () Bool)

(declare-fun lt!425112 () SeekEntryResult!9024)

(assert (=> d!114111 (and (or ((_ is MissingVacant!9024) lt!425112) (not ((_ is Found!9024) lt!425112)) (and (bvsge (index!38467 lt!425112) #b00000000000000000000000000000000) (bvslt (index!38467 lt!425112) (size!27840 (_keys!10481 thiss!1141))))) (not ((_ is MissingVacant!9024) lt!425112)) (or (not ((_ is Found!9024) lt!425112)) (= (select (arr!27374 (_keys!10481 thiss!1141)) (index!38467 lt!425112)) key!756)))))

(assert (=> d!114111 (= lt!425112 e!529890)))

(declare-fun c!98152 () Bool)

(assert (=> d!114111 (= c!98152 (and ((_ is Intermediate!9024) lt!425111) (undefined!9836 lt!425111)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56902 (_ BitVec 32)) SeekEntryResult!9024)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114111 (= lt!425111 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27213 thiss!1141)) key!756 (_keys!10481 thiss!1141) (mask!27213 thiss!1141)))))

(assert (=> d!114111 (validMask!0 (mask!27213 thiss!1141))))

(assert (=> d!114111 (= (seekEntry!0 key!756 (_keys!10481 thiss!1141) (mask!27213 thiss!1141)) lt!425112)))

(declare-fun b!942388 () Bool)

(declare-fun c!98153 () Bool)

(declare-fun lt!425109 () (_ BitVec 64))

(assert (=> b!942388 (= c!98153 (= lt!425109 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!942388 (= e!529891 e!529892)))

(declare-fun b!942389 () Bool)

(assert (=> b!942389 (= e!529892 (MissingZero!9024 (index!38468 lt!425111)))))

(declare-fun b!942390 () Bool)

(assert (=> b!942390 (= e!529890 e!529891)))

(assert (=> b!942390 (= lt!425109 (select (arr!27374 (_keys!10481 thiss!1141)) (index!38468 lt!425111)))))

(declare-fun c!98154 () Bool)

(assert (=> b!942390 (= c!98154 (= lt!425109 key!756))))

(assert (= (and d!114111 c!98152) b!942387))

(assert (= (and d!114111 (not c!98152)) b!942390))

(assert (= (and b!942390 c!98154) b!942385))

(assert (= (and b!942390 (not c!98154)) b!942388))

(assert (= (and b!942388 c!98153) b!942389))

(assert (= (and b!942388 (not c!98153)) b!942386))

(declare-fun m!877023 () Bool)

(assert (=> b!942386 m!877023))

(declare-fun m!877025 () Bool)

(assert (=> d!114111 m!877025))

(declare-fun m!877027 () Bool)

(assert (=> d!114111 m!877027))

(assert (=> d!114111 m!877027))

(declare-fun m!877029 () Bool)

(assert (=> d!114111 m!877029))

(assert (=> d!114111 m!876991))

(declare-fun m!877031 () Bool)

(assert (=> b!942390 m!877031))

(assert (=> b!942332 d!114111))

(declare-fun d!114113 () Bool)

(declare-fun res!633376 () Bool)

(declare-fun e!529895 () Bool)

(assert (=> d!114113 (=> (not res!633376) (not e!529895))))

(declare-fun simpleValid!346 (LongMapFixedSize!4644) Bool)

(assert (=> d!114113 (= res!633376 (simpleValid!346 thiss!1141))))

(assert (=> d!114113 (= (valid!1759 thiss!1141) e!529895)))

(declare-fun b!942397 () Bool)

(declare-fun res!633377 () Bool)

(assert (=> b!942397 (=> (not res!633377) (not e!529895))))

(declare-fun arrayCountValidKeys!0 (array!56902 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!942397 (= res!633377 (= (arrayCountValidKeys!0 (_keys!10481 thiss!1141) #b00000000000000000000000000000000 (size!27840 (_keys!10481 thiss!1141))) (_size!2377 thiss!1141)))))

(declare-fun b!942398 () Bool)

(declare-fun res!633378 () Bool)

(assert (=> b!942398 (=> (not res!633378) (not e!529895))))

(assert (=> b!942398 (= res!633378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10481 thiss!1141) (mask!27213 thiss!1141)))))

(declare-fun b!942399 () Bool)

(assert (=> b!942399 (= e!529895 (arrayNoDuplicates!0 (_keys!10481 thiss!1141) #b00000000000000000000000000000000 Nil!19345))))

(assert (= (and d!114113 res!633376) b!942397))

(assert (= (and b!942397 res!633377) b!942398))

(assert (= (and b!942398 res!633378) b!942399))

(declare-fun m!877033 () Bool)

(assert (=> d!114113 m!877033))

(declare-fun m!877035 () Bool)

(assert (=> b!942397 m!877035))

(assert (=> b!942398 m!877005))

(assert (=> b!942399 m!876997))

(assert (=> start!80264 d!114113))

(declare-fun d!114115 () Bool)

(declare-fun res!633385 () Bool)

(declare-fun e!529907 () Bool)

(assert (=> d!114115 (=> res!633385 e!529907)))

(assert (=> d!114115 (= res!633385 (bvsge #b00000000000000000000000000000000 (size!27840 (_keys!10481 thiss!1141))))))

(assert (=> d!114115 (= (arrayNoDuplicates!0 (_keys!10481 thiss!1141) #b00000000000000000000000000000000 Nil!19345) e!529907)))

(declare-fun b!942410 () Bool)

(declare-fun e!529904 () Bool)

(assert (=> b!942410 (= e!529907 e!529904)))

(declare-fun res!633387 () Bool)

(assert (=> b!942410 (=> (not res!633387) (not e!529904))))

(declare-fun e!529905 () Bool)

(assert (=> b!942410 (= res!633387 (not e!529905))))

(declare-fun res!633386 () Bool)

(assert (=> b!942410 (=> (not res!633386) (not e!529905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!942410 (= res!633386 (validKeyInArray!0 (select (arr!27374 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!942411 () Bool)

(declare-fun e!529906 () Bool)

(declare-fun call!40962 () Bool)

(assert (=> b!942411 (= e!529906 call!40962)))

(declare-fun b!942412 () Bool)

(assert (=> b!942412 (= e!529906 call!40962)))

(declare-fun bm!40959 () Bool)

(declare-fun c!98157 () Bool)

(assert (=> bm!40959 (= call!40962 (arrayNoDuplicates!0 (_keys!10481 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98157 (Cons!19344 (select (arr!27374 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000) Nil!19345) Nil!19345)))))

(declare-fun b!942413 () Bool)

(assert (=> b!942413 (= e!529904 e!529906)))

(assert (=> b!942413 (= c!98157 (validKeyInArray!0 (select (arr!27374 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!942414 () Bool)

(declare-fun contains!5146 (List!19348 (_ BitVec 64)) Bool)

(assert (=> b!942414 (= e!529905 (contains!5146 Nil!19345 (select (arr!27374 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114115 (not res!633385)) b!942410))

(assert (= (and b!942410 res!633386) b!942414))

(assert (= (and b!942410 res!633387) b!942413))

(assert (= (and b!942413 c!98157) b!942411))

(assert (= (and b!942413 (not c!98157)) b!942412))

(assert (= (or b!942411 b!942412) bm!40959))

(declare-fun m!877037 () Bool)

(assert (=> b!942410 m!877037))

(assert (=> b!942410 m!877037))

(declare-fun m!877039 () Bool)

(assert (=> b!942410 m!877039))

(assert (=> bm!40959 m!877037))

(declare-fun m!877041 () Bool)

(assert (=> bm!40959 m!877041))

(assert (=> b!942413 m!877037))

(assert (=> b!942413 m!877037))

(assert (=> b!942413 m!877039))

(assert (=> b!942414 m!877037))

(assert (=> b!942414 m!877037))

(declare-fun m!877043 () Bool)

(assert (=> b!942414 m!877043))

(assert (=> b!942337 d!114115))

(declare-fun b!942423 () Bool)

(declare-fun e!529915 () Bool)

(declare-fun call!40965 () Bool)

(assert (=> b!942423 (= e!529915 call!40965)))

(declare-fun b!942424 () Bool)

(declare-fun e!529914 () Bool)

(assert (=> b!942424 (= e!529914 e!529915)))

(declare-fun c!98160 () Bool)

(assert (=> b!942424 (= c!98160 (validKeyInArray!0 (select (arr!27374 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114117 () Bool)

(declare-fun res!633392 () Bool)

(assert (=> d!114117 (=> res!633392 e!529914)))

(assert (=> d!114117 (= res!633392 (bvsge #b00000000000000000000000000000000 (size!27840 (_keys!10481 thiss!1141))))))

(assert (=> d!114117 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10481 thiss!1141) (mask!27213 thiss!1141)) e!529914)))

(declare-fun b!942425 () Bool)

(declare-fun e!529916 () Bool)

(assert (=> b!942425 (= e!529915 e!529916)))

(declare-fun lt!425120 () (_ BitVec 64))

(assert (=> b!942425 (= lt!425120 (select (arr!27374 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31817 0))(
  ( (Unit!31818) )
))
(declare-fun lt!425119 () Unit!31817)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56902 (_ BitVec 64) (_ BitVec 32)) Unit!31817)

(assert (=> b!942425 (= lt!425119 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10481 thiss!1141) lt!425120 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!942425 (arrayContainsKey!0 (_keys!10481 thiss!1141) lt!425120 #b00000000000000000000000000000000)))

(declare-fun lt!425121 () Unit!31817)

(assert (=> b!942425 (= lt!425121 lt!425119)))

(declare-fun res!633393 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56902 (_ BitVec 32)) SeekEntryResult!9024)

(assert (=> b!942425 (= res!633393 (= (seekEntryOrOpen!0 (select (arr!27374 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000) (_keys!10481 thiss!1141) (mask!27213 thiss!1141)) (Found!9024 #b00000000000000000000000000000000)))))

(assert (=> b!942425 (=> (not res!633393) (not e!529916))))

(declare-fun bm!40962 () Bool)

(assert (=> bm!40962 (= call!40965 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10481 thiss!1141) (mask!27213 thiss!1141)))))

(declare-fun b!942426 () Bool)

(assert (=> b!942426 (= e!529916 call!40965)))

(assert (= (and d!114117 (not res!633392)) b!942424))

(assert (= (and b!942424 c!98160) b!942425))

(assert (= (and b!942424 (not c!98160)) b!942423))

(assert (= (and b!942425 res!633393) b!942426))

(assert (= (or b!942426 b!942423) bm!40962))

(assert (=> b!942424 m!877037))

(assert (=> b!942424 m!877037))

(assert (=> b!942424 m!877039))

(assert (=> b!942425 m!877037))

(declare-fun m!877045 () Bool)

(assert (=> b!942425 m!877045))

(declare-fun m!877047 () Bool)

(assert (=> b!942425 m!877047))

(assert (=> b!942425 m!877037))

(declare-fun m!877049 () Bool)

(assert (=> b!942425 m!877049))

(declare-fun m!877051 () Bool)

(assert (=> bm!40962 m!877051))

(assert (=> b!942339 d!114117))

(declare-fun d!114119 () Bool)

(assert (=> d!114119 (= (validMask!0 (mask!27213 thiss!1141)) (and (or (= (mask!27213 thiss!1141) #b00000000000000000000000000000111) (= (mask!27213 thiss!1141) #b00000000000000000000000000001111) (= (mask!27213 thiss!1141) #b00000000000000000000000000011111) (= (mask!27213 thiss!1141) #b00000000000000000000000000111111) (= (mask!27213 thiss!1141) #b00000000000000000000000001111111) (= (mask!27213 thiss!1141) #b00000000000000000000000011111111) (= (mask!27213 thiss!1141) #b00000000000000000000000111111111) (= (mask!27213 thiss!1141) #b00000000000000000000001111111111) (= (mask!27213 thiss!1141) #b00000000000000000000011111111111) (= (mask!27213 thiss!1141) #b00000000000000000000111111111111) (= (mask!27213 thiss!1141) #b00000000000000000001111111111111) (= (mask!27213 thiss!1141) #b00000000000000000011111111111111) (= (mask!27213 thiss!1141) #b00000000000000000111111111111111) (= (mask!27213 thiss!1141) #b00000000000000001111111111111111) (= (mask!27213 thiss!1141) #b00000000000000011111111111111111) (= (mask!27213 thiss!1141) #b00000000000000111111111111111111) (= (mask!27213 thiss!1141) #b00000000000001111111111111111111) (= (mask!27213 thiss!1141) #b00000000000011111111111111111111) (= (mask!27213 thiss!1141) #b00000000000111111111111111111111) (= (mask!27213 thiss!1141) #b00000000001111111111111111111111) (= (mask!27213 thiss!1141) #b00000000011111111111111111111111) (= (mask!27213 thiss!1141) #b00000000111111111111111111111111) (= (mask!27213 thiss!1141) #b00000001111111111111111111111111) (= (mask!27213 thiss!1141) #b00000011111111111111111111111111) (= (mask!27213 thiss!1141) #b00000111111111111111111111111111) (= (mask!27213 thiss!1141) #b00001111111111111111111111111111) (= (mask!27213 thiss!1141) #b00011111111111111111111111111111) (= (mask!27213 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27213 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!942336 d!114119))

(declare-fun d!114121 () Bool)

(assert (=> d!114121 (= (array_inv!21224 (_keys!10481 thiss!1141)) (bvsge (size!27840 (_keys!10481 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!942335 d!114121))

(declare-fun d!114123 () Bool)

(assert (=> d!114123 (= (array_inv!21225 (_values!5636 thiss!1141)) (bvsge (size!27839 (_values!5636 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!942335 d!114123))

(declare-fun mapNonEmpty!32510 () Bool)

(declare-fun mapRes!32510 () Bool)

(declare-fun tp!62360 () Bool)

(declare-fun e!529921 () Bool)

(assert (=> mapNonEmpty!32510 (= mapRes!32510 (and tp!62360 e!529921))))

(declare-fun mapKey!32510 () (_ BitVec 32))

(declare-fun mapRest!32510 () (Array (_ BitVec 32) ValueCell!9747))

(declare-fun mapValue!32510 () ValueCell!9747)

(assert (=> mapNonEmpty!32510 (= mapRest!32504 (store mapRest!32510 mapKey!32510 mapValue!32510))))

(declare-fun condMapEmpty!32510 () Bool)

(declare-fun mapDefault!32510 () ValueCell!9747)

(assert (=> mapNonEmpty!32504 (= condMapEmpty!32510 (= mapRest!32504 ((as const (Array (_ BitVec 32) ValueCell!9747)) mapDefault!32510)))))

(declare-fun e!529922 () Bool)

(assert (=> mapNonEmpty!32504 (= tp!62351 (and e!529922 mapRes!32510))))

(declare-fun b!942434 () Bool)

(assert (=> b!942434 (= e!529922 tp_is_empty!20457)))

(declare-fun mapIsEmpty!32510 () Bool)

(assert (=> mapIsEmpty!32510 mapRes!32510))

(declare-fun b!942433 () Bool)

(assert (=> b!942433 (= e!529921 tp_is_empty!20457)))

(assert (= (and mapNonEmpty!32504 condMapEmpty!32510) mapIsEmpty!32510))

(assert (= (and mapNonEmpty!32504 (not condMapEmpty!32510)) mapNonEmpty!32510))

(assert (= (and mapNonEmpty!32510 ((_ is ValueCellFull!9747) mapValue!32510)) b!942433))

(assert (= (and mapNonEmpty!32504 ((_ is ValueCellFull!9747) mapDefault!32510)) b!942434))

(declare-fun m!877053 () Bool)

(assert (=> mapNonEmpty!32510 m!877053))

(check-sat (not b!942398) (not mapNonEmpty!32510) (not b!942424) (not b!942397) tp_is_empty!20457 (not bm!40962) (not d!114111) (not b!942425) (not b!942413) (not b!942386) (not b!942399) (not b_next!17949) (not b!942414) b_and!29379 (not bm!40959) (not b!942410) (not d!114113))
(check-sat b_and!29379 (not b_next!17949))
