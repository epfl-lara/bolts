; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5698 () Bool)

(assert start!5698)

(declare-fun b_free!1363 () Bool)

(declare-fun b_next!1363 () Bool)

(assert (=> start!5698 (= b_free!1363 (not b_next!1363))))

(declare-fun tp!5732 () Bool)

(declare-fun b_and!2367 () Bool)

(assert (=> start!5698 (= tp!5732 b_and!2367)))

(declare-fun res!24049 () Bool)

(declare-fun e!25559 () Bool)

(assert (=> start!5698 (=> (not res!24049) (not e!25559))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5698 (= res!24049 (validMask!0 mask!853))))

(assert (=> start!5698 e!25559))

(assert (=> start!5698 true))

(assert (=> start!5698 tp!5732))

(declare-fun b!40285 () Bool)

(declare-fun e!25560 () Bool)

(assert (=> b!40285 (= e!25559 (not e!25560))))

(declare-fun res!24047 () Bool)

(assert (=> b!40285 (=> res!24047 e!25560)))

(declare-datatypes ((V!2097 0))(
  ( (V!2098 (val!915 Int)) )
))
(declare-datatypes ((tuple2!1488 0))(
  ( (tuple2!1489 (_1!754 (_ BitVec 64)) (_2!754 V!2097)) )
))
(declare-datatypes ((List!1068 0))(
  ( (Nil!1065) (Cons!1064 (h!1638 tuple2!1488) (t!3929 List!1068)) )
))
(declare-datatypes ((ListLongMap!1069 0))(
  ( (ListLongMap!1070 (toList!550 List!1068)) )
))
(declare-fun lt!15454 () ListLongMap!1069)

(assert (=> b!40285 (= res!24047 (= lt!15454 (ListLongMap!1070 Nil!1065)))))

(declare-datatypes ((array!2587 0))(
  ( (array!2588 (arr!1237 (Array (_ BitVec 32) (_ BitVec 64))) (size!1374 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!629 0))(
  ( (ValueCellFull!629 (v!1992 V!2097)) (EmptyCell!629) )
))
(declare-datatypes ((array!2589 0))(
  ( (array!2590 (arr!1238 (Array (_ BitVec 32) ValueCell!629)) (size!1375 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!238 0))(
  ( (LongMapFixedSize!239 (defaultEntry!1803 Int) (mask!5176 (_ BitVec 32)) (extraKeys!1694 (_ BitVec 32)) (zeroValue!1721 V!2097) (minValue!1721 V!2097) (_size!168 (_ BitVec 32)) (_keys!3292 array!2587) (_values!1786 array!2589) (_vacant!168 (_ BitVec 32))) )
))
(declare-fun lt!15453 () LongMapFixedSize!238)

(declare-fun map!692 (LongMapFixedSize!238) ListLongMap!1069)

(assert (=> b!40285 (= lt!15454 (map!692 lt!15453))))

(declare-fun lt!15455 () array!2587)

(declare-datatypes ((List!1069 0))(
  ( (Nil!1066) (Cons!1065 (h!1639 (_ BitVec 64)) (t!3930 List!1069)) )
))
(declare-fun arrayNoDuplicates!0 (array!2587 (_ BitVec 32) List!1069) Bool)

(assert (=> b!40285 (arrayNoDuplicates!0 lt!15455 #b00000000000000000000000000000000 Nil!1066)))

(declare-datatypes ((Unit!980 0))(
  ( (Unit!981) )
))
(declare-fun lt!15451 () Unit!980)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2587 (_ BitVec 32) (_ BitVec 32) List!1069) Unit!980)

(assert (=> b!40285 (= lt!15451 (lemmaArrayNoDuplicatesInAll0Array!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2587 (_ BitVec 32)) Bool)

(assert (=> b!40285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15455 mask!853)))

(declare-fun lt!15456 () Unit!980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2587 (_ BitVec 32) (_ BitVec 32)) Unit!980)

(assert (=> b!40285 (= lt!15456 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!15455 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2587 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!40285 (= (arrayCountValidKeys!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!15457 () Unit!980)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2587 (_ BitVec 32) (_ BitVec 32)) Unit!980)

(assert (=> b!40285 (= lt!15457 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!15452 () V!2097)

(assert (=> b!40285 (= lt!15453 (LongMapFixedSize!239 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!15452 lt!15452 #b00000000000000000000000000000000 lt!15455 (array!2590 ((as const (Array (_ BitVec 32) ValueCell!629)) EmptyCell!629) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))

(assert (=> b!40285 (= lt!15455 (array!2588 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!190 (Int (_ BitVec 64)) V!2097)

(assert (=> b!40285 (= lt!15452 (dynLambda!190 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40286 () Bool)

(declare-fun res!24048 () Bool)

(assert (=> b!40286 (=> res!24048 e!25560)))

(declare-fun isEmpty!232 (List!1068) Bool)

(assert (=> b!40286 (= res!24048 (isEmpty!232 (toList!550 lt!15454)))))

(declare-fun b!40287 () Bool)

(declare-fun valid!122 (LongMapFixedSize!238) Bool)

(assert (=> b!40287 (= e!25560 (valid!122 lt!15453))))

(assert (= (and start!5698 res!24049) b!40285))

(assert (= (and b!40285 (not res!24047)) b!40286))

(assert (= (and b!40286 (not res!24048)) b!40287))

(declare-fun b_lambda!2077 () Bool)

(assert (=> (not b_lambda!2077) (not b!40285)))

(declare-fun t!3928 () Bool)

(declare-fun tb!847 () Bool)

(assert (=> (and start!5698 (= defaultEntry!470 defaultEntry!470) t!3928) tb!847))

(declare-fun result!1443 () Bool)

(declare-fun tp_is_empty!1753 () Bool)

(assert (=> tb!847 (= result!1443 tp_is_empty!1753)))

(assert (=> b!40285 t!3928))

(declare-fun b_and!2369 () Bool)

(assert (= b_and!2367 (and (=> t!3928 result!1443) b_and!2369)))

(declare-fun m!33239 () Bool)

(assert (=> start!5698 m!33239))

(declare-fun m!33241 () Bool)

(assert (=> b!40285 m!33241))

(declare-fun m!33243 () Bool)

(assert (=> b!40285 m!33243))

(declare-fun m!33245 () Bool)

(assert (=> b!40285 m!33245))

(declare-fun m!33247 () Bool)

(assert (=> b!40285 m!33247))

(declare-fun m!33249 () Bool)

(assert (=> b!40285 m!33249))

(declare-fun m!33251 () Bool)

(assert (=> b!40285 m!33251))

(declare-fun m!33253 () Bool)

(assert (=> b!40285 m!33253))

(declare-fun m!33255 () Bool)

(assert (=> b!40285 m!33255))

(declare-fun m!33257 () Bool)

(assert (=> b!40286 m!33257))

(declare-fun m!33259 () Bool)

(assert (=> b!40287 m!33259))

(push 1)

(assert (not b_lambda!2077))

(assert b_and!2369)

(assert (not b_next!1363))

(assert (not start!5698))

(assert (not b!40287))

(assert (not b!40285))

(assert (not b!40286))

(assert tp_is_empty!1753)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2369)

(assert (not b_next!1363))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2083 () Bool)

(assert (= b_lambda!2077 (or (and start!5698 b_free!1363) b_lambda!2083)))

(push 1)

(assert b_and!2369)

(assert (not b_next!1363))

(assert (not start!5698))

(assert (not b!40287))

(assert (not b!40285))

(assert tp_is_empty!1753)

(assert (not b!40286))

(assert (not b_lambda!2083))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2369)

(assert (not b_next!1363))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7001 () Bool)

(assert (=> d!7001 (= (isEmpty!232 (toList!550 lt!15454)) (is-Nil!1065 (toList!550 lt!15454)))))

(assert (=> b!40286 d!7001))

(declare-fun d!7003 () Bool)

(assert (=> d!7003 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5698 d!7003))

(declare-fun d!7011 () Bool)

(declare-fun res!24092 () Bool)

(declare-fun e!25594 () Bool)

(assert (=> d!7011 (=> (not res!24092) (not e!25594))))

(declare-fun simpleValid!26 (LongMapFixedSize!238) Bool)

(assert (=> d!7011 (= res!24092 (simpleValid!26 lt!15453))))

(assert (=> d!7011 (= (valid!122 lt!15453) e!25594)))

(declare-fun b!40350 () Bool)

(declare-fun res!24093 () Bool)

(assert (=> b!40350 (=> (not res!24093) (not e!25594))))

(assert (=> b!40350 (= res!24093 (= (arrayCountValidKeys!0 (_keys!3292 lt!15453) #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))) (_size!168 lt!15453)))))

(declare-fun b!40351 () Bool)

(declare-fun res!24094 () Bool)

(assert (=> b!40351 (=> (not res!24094) (not e!25594))))

(assert (=> b!40351 (= res!24094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3292 lt!15453) (mask!5176 lt!15453)))))

(declare-fun b!40352 () Bool)

(assert (=> b!40352 (= e!25594 (arrayNoDuplicates!0 (_keys!3292 lt!15453) #b00000000000000000000000000000000 Nil!1066))))

(assert (= (and d!7011 res!24092) b!40350))

(assert (= (and b!40350 res!24093) b!40351))

(assert (= (and b!40351 res!24094) b!40352))

(declare-fun m!33323 () Bool)

(assert (=> d!7011 m!33323))

(declare-fun m!33325 () Bool)

(assert (=> b!40350 m!33325))

(declare-fun m!33327 () Bool)

(assert (=> b!40351 m!33327))

(declare-fun m!33329 () Bool)

(assert (=> b!40352 m!33329))

(assert (=> b!40287 d!7011))

(declare-fun d!7017 () Bool)

(assert (=> d!7017 (arrayNoDuplicates!0 lt!15455 #b00000000000000000000000000000000 Nil!1066)))

(declare-fun lt!15508 () Unit!980)

(declare-fun choose!111 (array!2587 (_ BitVec 32) (_ BitVec 32) List!1069) Unit!980)

(assert (=> d!7017 (= lt!15508 (choose!111 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1066))))

(assert (=> d!7017 (= (size!1374 lt!15455) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7017 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1066) lt!15508)))

(declare-fun bs!1694 () Bool)

(assert (= bs!1694 d!7017))

(assert (=> bs!1694 m!33251))

(declare-fun m!33337 () Bool)

(assert (=> bs!1694 m!33337))

(assert (=> b!40285 d!7017))

(declare-fun d!7021 () Bool)

(declare-fun res!24107 () Bool)

(declare-fun e!25612 () Bool)

(assert (=> d!7021 (=> res!24107 e!25612)))

(assert (=> d!7021 (= res!24107 (bvsge #b00000000000000000000000000000000 (size!1374 lt!15455)))))

(assert (=> d!7021 (= (arrayNoDuplicates!0 lt!15455 #b00000000000000000000000000000000 Nil!1066) e!25612)))

(declare-fun b!40375 () Bool)

(declare-fun e!25614 () Bool)

(assert (=> b!40375 (= e!25612 e!25614)))

(declare-fun res!24105 () Bool)

(assert (=> b!40375 (=> (not res!24105) (not e!25614))))

(declare-fun e!25611 () Bool)

(assert (=> b!40375 (= res!24105 (not e!25611))))

(declare-fun res!24106 () Bool)

(assert (=> b!40375 (=> (not res!24106) (not e!25611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!40375 (= res!24106 (validKeyInArray!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun b!40376 () Bool)

(declare-fun e!25613 () Bool)

(declare-fun call!3109 () Bool)

(assert (=> b!40376 (= e!25613 call!3109)))

(declare-fun b!40377 () Bool)

(assert (=> b!40377 (= e!25613 call!3109)))

(declare-fun b!40378 () Bool)

(declare-fun contains!514 (List!1069 (_ BitVec 64)) Bool)

(assert (=> b!40378 (= e!25611 (contains!514 Nil!1066 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun b!40379 () Bool)

(assert (=> b!40379 (= e!25614 e!25613)))

(declare-fun c!4923 () Bool)

(assert (=> b!40379 (= c!4923 (validKeyInArray!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun bm!3106 () Bool)

(assert (=> bm!3106 (= call!3109 (arrayNoDuplicates!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)))))

(assert (= (and d!7021 (not res!24107)) b!40375))

(assert (= (and b!40375 res!24106) b!40378))

(assert (= (and b!40375 res!24105) b!40379))

(assert (= (and b!40379 c!4923) b!40376))

(assert (= (and b!40379 (not c!4923)) b!40377))

(assert (= (or b!40376 b!40377) bm!3106))

(declare-fun m!33343 () Bool)

(assert (=> b!40375 m!33343))

(assert (=> b!40375 m!33343))

(declare-fun m!33345 () Bool)

(assert (=> b!40375 m!33345))

(assert (=> b!40378 m!33343))

(assert (=> b!40378 m!33343))

(declare-fun m!33347 () Bool)

(assert (=> b!40378 m!33347))

(assert (=> b!40379 m!33343))

(assert (=> b!40379 m!33343))

(assert (=> b!40379 m!33345))

(assert (=> bm!3106 m!33343))

(declare-fun m!33349 () Bool)

(assert (=> bm!3106 m!33349))

(assert (=> b!40285 d!7021))

(declare-fun b!40410 () Bool)

(declare-fun e!25634 () (_ BitVec 32))

(assert (=> b!40410 (= e!25634 #b00000000000000000000000000000000)))

(declare-fun d!7027 () Bool)

(declare-fun lt!15528 () (_ BitVec 32))

(assert (=> d!7027 (and (bvsge lt!15528 #b00000000000000000000000000000000) (bvsle lt!15528 (bvsub (size!1374 lt!15455) #b00000000000000000000000000000000)))))

(assert (=> d!7027 (= lt!15528 e!25634)))

(declare-fun c!4936 () Bool)

(assert (=> d!7027 (= c!4936 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7027 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1374 lt!15455)))))

(assert (=> d!7027 (= (arrayCountValidKeys!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!15528)))

(declare-fun bm!3114 () Bool)

(declare-fun call!3117 () (_ BitVec 32))

(assert (=> bm!3114 (= call!3117 (arrayCountValidKeys!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!40411 () Bool)

(declare-fun e!25635 () (_ BitVec 32))

(assert (=> b!40411 (= e!25634 e!25635)))

(declare-fun c!4935 () Bool)

(assert (=> b!40411 (= c!4935 (validKeyInArray!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun b!40412 () Bool)

(assert (=> b!40412 (= e!25635 call!3117)))

(declare-fun b!40413 () Bool)

(assert (=> b!40413 (= e!25635 (bvadd #b00000000000000000000000000000001 call!3117))))

(assert (= (and d!7027 c!4936) b!40410))

(assert (= (and d!7027 (not c!4936)) b!40411))

(assert (= (and b!40411 c!4935) b!40413))

(assert (= (and b!40411 (not c!4935)) b!40412))

(assert (= (or b!40413 b!40412) bm!3114))

(declare-fun m!33361 () Bool)

(assert (=> bm!3114 m!33361))

(assert (=> b!40411 m!33343))

(assert (=> b!40411 m!33343))

(assert (=> b!40411 m!33345))

(assert (=> b!40285 d!7027))

(declare-fun d!7033 () Bool)

(declare-fun getCurrentListMap!312 (array!2587 array!2589 (_ BitVec 32) (_ BitVec 32) V!2097 V!2097 (_ BitVec 32) Int) ListLongMap!1069)

(assert (=> d!7033 (= (map!692 lt!15453) (getCurrentListMap!312 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)))))

(declare-fun bs!1700 () Bool)

(assert (= bs!1700 d!7033))

(declare-fun m!33373 () Bool)

(assert (=> bs!1700 m!33373))

(assert (=> b!40285 d!7033))

(declare-fun d!7043 () Bool)

(assert (=> d!7043 (= (arrayCountValidKeys!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!15546 () Unit!980)

(declare-fun choose!59 (array!2587 (_ BitVec 32) (_ BitVec 32)) Unit!980)

(assert (=> d!7043 (= lt!15546 (choose!59 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7043 (bvslt (size!1374 lt!15455) #b01111111111111111111111111111111)))

(assert (=> d!7043 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!15546)))

(declare-fun bs!1701 () Bool)

(assert (= bs!1701 d!7043))

(assert (=> bs!1701 m!33253))

(declare-fun m!33375 () Bool)

(assert (=> bs!1701 m!33375))

(assert (=> b!40285 d!7043))

(declare-fun d!7045 () Bool)

(assert (=> d!7045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15455 mask!853)))

(declare-fun lt!15553 () Unit!980)

(declare-fun choose!34 (array!2587 (_ BitVec 32) (_ BitVec 32)) Unit!980)

(assert (=> d!7045 (= lt!15553 (choose!34 lt!15455 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7045 (validMask!0 mask!853)))

(assert (=> d!7045 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!15455 mask!853 #b00000000000000000000000000000000) lt!15553)))

(declare-fun bs!1703 () Bool)

(assert (= bs!1703 d!7045))

(assert (=> bs!1703 m!33241))

(declare-fun m!33387 () Bool)

(assert (=> bs!1703 m!33387))

(assert (=> bs!1703 m!33239))

(assert (=> b!40285 d!7045))

(declare-fun b!40452 () Bool)

(declare-fun e!25660 () Bool)

(declare-fun call!3125 () Bool)

(assert (=> b!40452 (= e!25660 call!3125)))

(declare-fun d!7051 () Bool)

(declare-fun res!24138 () Bool)

(declare-fun e!25662 () Bool)

(assert (=> d!7051 (=> res!24138 e!25662)))

(assert (=> d!7051 (= res!24138 (bvsge #b00000000000000000000000000000000 (size!1374 lt!15455)))))

(assert (=> d!7051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15455 mask!853) e!25662)))

(declare-fun b!40453 () Bool)

(assert (=> b!40453 (= e!25662 e!25660)))

(declare-fun c!4945 () Bool)

(assert (=> b!40453 (= c!4945 (validKeyInArray!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun b!40454 () Bool)

(declare-fun e!25661 () Bool)

(assert (=> b!40454 (= e!25660 e!25661)))

(declare-fun lt!15560 () (_ BitVec 64))

(assert (=> b!40454 (= lt!15560 (select (arr!1237 lt!15455) #b00000000000000000000000000000000))))

(declare-fun lt!15561 () Unit!980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2587 (_ BitVec 64) (_ BitVec 32)) Unit!980)

(assert (=> b!40454 (= lt!15561 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15455 lt!15560 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!40454 (arrayContainsKey!0 lt!15455 lt!15560 #b00000000000000000000000000000000)))

(declare-fun lt!15562 () Unit!980)

(assert (=> b!40454 (= lt!15562 lt!15561)))

(declare-fun res!24139 () Bool)

(declare-datatypes ((SeekEntryResult!185 0))(
  ( (MissingZero!185 (index!2862 (_ BitVec 32))) (Found!185 (index!2863 (_ BitVec 32))) (Intermediate!185 (undefined!997 Bool) (index!2864 (_ BitVec 32)) (x!7732 (_ BitVec 32))) (Undefined!185) (MissingVacant!185 (index!2865 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2587 (_ BitVec 32)) SeekEntryResult!185)

(assert (=> b!40454 (= res!24139 (= (seekEntryOrOpen!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853) (Found!185 #b00000000000000000000000000000000)))))

(assert (=> b!40454 (=> (not res!24139) (not e!25661))))

(declare-fun b!40455 () Bool)

(assert (=> b!40455 (= e!25661 call!3125)))

(declare-fun bm!3122 () Bool)

(assert (=> bm!3122 (= call!3125 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!15455 mask!853))))

(assert (= (and d!7051 (not res!24138)) b!40453))

(assert (= (and b!40453 c!4945) b!40454))

(assert (= (and b!40453 (not c!4945)) b!40452))

(assert (= (and b!40454 res!24139) b!40455))

(assert (= (or b!40455 b!40452) bm!3122))

(assert (=> b!40453 m!33343))

(assert (=> b!40453 m!33343))

(assert (=> b!40453 m!33345))

(assert (=> b!40454 m!33343))

(declare-fun m!33399 () Bool)

(assert (=> b!40454 m!33399))

(declare-fun m!33401 () Bool)

(assert (=> b!40454 m!33401))

(assert (=> b!40454 m!33343))

(declare-fun m!33403 () Bool)

(assert (=> b!40454 m!33403))

(declare-fun m!33405 () Bool)

(assert (=> bm!3122 m!33405))

(assert (=> b!40285 d!7051))

(push 1)

(assert (not b!40378))

(assert (not d!7033))

(assert (not d!7043))

(assert b_and!2369)

(assert (not b_next!1363))

(assert (not bm!3122))

(assert (not d!7017))

(assert (not bm!3106))

(assert (not b!40375))

(assert (not b_lambda!2083))

(assert (not b!40453))

(assert (not bm!3114))

(assert (not d!7011))

(assert (not b!40351))

(assert (not b!40454))

(assert (not b!40350))

(assert (not b!40411))

(assert (not d!7045))

(assert (not b!40352))

(assert (not b!40379))

(assert tp_is_empty!1753)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2369)

(assert (not b_next!1363))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!40470 () Bool)

(declare-fun e!25671 () Bool)

(declare-fun call!3126 () Bool)

(assert (=> b!40470 (= e!25671 call!3126)))

(declare-fun d!7065 () Bool)

(declare-fun res!24154 () Bool)

(declare-fun e!25673 () Bool)

(assert (=> d!7065 (=> res!24154 e!25673)))

(assert (=> d!7065 (= res!24154 (bvsge #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7065 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3292 lt!15453) (mask!5176 lt!15453)) e!25673)))

(declare-fun b!40471 () Bool)

(assert (=> b!40471 (= e!25673 e!25671)))

(declare-fun c!4946 () Bool)

(assert (=> b!40471 (= c!4946 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40472 () Bool)

(declare-fun e!25672 () Bool)

(assert (=> b!40472 (= e!25671 e!25672)))

(declare-fun lt!15566 () (_ BitVec 64))

(assert (=> b!40472 (= lt!15566 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))

(declare-fun lt!15567 () Unit!980)

(assert (=> b!40472 (= lt!15567 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3292 lt!15453) lt!15566 #b00000000000000000000000000000000))))

(assert (=> b!40472 (arrayContainsKey!0 (_keys!3292 lt!15453) lt!15566 #b00000000000000000000000000000000)))

(declare-fun lt!15568 () Unit!980)

(assert (=> b!40472 (= lt!15568 lt!15567)))

(declare-fun res!24155 () Bool)

(assert (=> b!40472 (= res!24155 (= (seekEntryOrOpen!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) (_keys!3292 lt!15453) (mask!5176 lt!15453)) (Found!185 #b00000000000000000000000000000000)))))

(assert (=> b!40472 (=> (not res!24155) (not e!25672))))

(declare-fun b!40473 () Bool)

(assert (=> b!40473 (= e!25672 call!3126)))

(declare-fun bm!3123 () Bool)

(assert (=> bm!3123 (= call!3126 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3292 lt!15453) (mask!5176 lt!15453)))))

(assert (= (and d!7065 (not res!24154)) b!40471))

(assert (= (and b!40471 c!4946) b!40472))

(assert (= (and b!40471 (not c!4946)) b!40470))

(assert (= (and b!40472 res!24155) b!40473))

(assert (= (or b!40473 b!40470) bm!3123))

(declare-fun m!33413 () Bool)

(assert (=> b!40471 m!33413))

(assert (=> b!40471 m!33413))

(declare-fun m!33415 () Bool)

(assert (=> b!40471 m!33415))

(assert (=> b!40472 m!33413))

(declare-fun m!33417 () Bool)

(assert (=> b!40472 m!33417))

(declare-fun m!33419 () Bool)

(assert (=> b!40472 m!33419))

(assert (=> b!40472 m!33413))

(declare-fun m!33421 () Bool)

(assert (=> b!40472 m!33421))

(declare-fun m!33423 () Bool)

(assert (=> bm!3123 m!33423))

(assert (=> b!40351 d!7065))

(assert (=> d!7043 d!7027))

(declare-fun d!7067 () Bool)

(assert (=> d!7067 (= (arrayCountValidKeys!0 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!7067 true))

(declare-fun _$88!39 () Unit!980)

(assert (=> d!7067 (= (choose!59 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!39)))

(declare-fun bs!1705 () Bool)

(assert (= bs!1705 d!7067))

(assert (=> bs!1705 m!33253))

(assert (=> d!7043 d!7067))

(declare-fun d!7071 () Bool)

(assert (=> d!7071 (= (validKeyInArray!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)) (and (not (= (select (arr!1237 lt!15455) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1237 lt!15455) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40379 d!7071))

(declare-fun d!7075 () Bool)

(declare-fun res!24162 () Bool)

(declare-fun e!25676 () Bool)

(assert (=> d!7075 (=> res!24162 e!25676)))

(assert (=> d!7075 (= res!24162 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 lt!15455)))))

(assert (=> d!7075 (= (arrayNoDuplicates!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) e!25676)))

(declare-fun b!40478 () Bool)

(declare-fun e!25678 () Bool)

(assert (=> b!40478 (= e!25676 e!25678)))

(declare-fun res!24160 () Bool)

(assert (=> b!40478 (=> (not res!24160) (not e!25678))))

(declare-fun e!25675 () Bool)

(assert (=> b!40478 (= res!24160 (not e!25675))))

(declare-fun res!24161 () Bool)

(assert (=> b!40478 (=> (not res!24161) (not e!25675))))

(assert (=> b!40478 (= res!24161 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40479 () Bool)

(declare-fun e!25677 () Bool)

(declare-fun call!3127 () Bool)

(assert (=> b!40479 (= e!25677 call!3127)))

(declare-fun b!40480 () Bool)

(assert (=> b!40480 (= e!25677 call!3127)))

(declare-fun b!40481 () Bool)

(assert (=> b!40481 (= e!25675 (contains!514 (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40482 () Bool)

(assert (=> b!40482 (= e!25678 e!25677)))

(declare-fun c!4947 () Bool)

(assert (=> b!40482 (= c!4947 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3124 () Bool)

(assert (=> bm!3124 (= call!3127 (arrayNoDuplicates!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4947 (Cons!1065 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066))))))

(assert (= (and d!7075 (not res!24162)) b!40478))

(assert (= (and b!40478 res!24161) b!40481))

(assert (= (and b!40478 res!24160) b!40482))

(assert (= (and b!40482 c!4947) b!40479))

(assert (= (and b!40482 (not c!4947)) b!40480))

(assert (= (or b!40479 b!40480) bm!3124))

(declare-fun m!33429 () Bool)

(assert (=> b!40478 m!33429))

(assert (=> b!40478 m!33429))

(declare-fun m!33433 () Bool)

(assert (=> b!40478 m!33433))

(assert (=> b!40481 m!33429))

(assert (=> b!40481 m!33429))

(declare-fun m!33441 () Bool)

(assert (=> b!40481 m!33441))

(assert (=> b!40482 m!33429))

(assert (=> b!40482 m!33429))

(assert (=> b!40482 m!33433))

(assert (=> bm!3124 m!33429))

(declare-fun m!33447 () Bool)

(assert (=> bm!3124 m!33447))

(assert (=> bm!3106 d!7075))

(assert (=> d!7017 d!7021))

(declare-fun d!7081 () Bool)

(assert (=> d!7081 (arrayNoDuplicates!0 lt!15455 #b00000000000000000000000000000000 Nil!1066)))

(assert (=> d!7081 true))

(declare-fun res!24170 () Unit!980)

(assert (=> d!7081 (= (choose!111 lt!15455 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1066) res!24170)))

(declare-fun bs!1707 () Bool)

(assert (= bs!1707 d!7081))

(assert (=> bs!1707 m!33251))

(assert (=> d!7017 d!7081))

(declare-fun d!7085 () Bool)

(declare-fun res!24176 () Bool)

(declare-fun e!25691 () Bool)

(assert (=> d!7085 (=> res!24176 e!25691)))

(assert (=> d!7085 (= res!24176 (bvsge #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7085 (= (arrayNoDuplicates!0 (_keys!3292 lt!15453) #b00000000000000000000000000000000 Nil!1066) e!25691)))

(declare-fun b!40497 () Bool)

(declare-fun e!25693 () Bool)

(assert (=> b!40497 (= e!25691 e!25693)))

(declare-fun res!24174 () Bool)

(assert (=> b!40497 (=> (not res!24174) (not e!25693))))

(declare-fun e!25690 () Bool)

(assert (=> b!40497 (= res!24174 (not e!25690))))

(declare-fun res!24175 () Bool)

(assert (=> b!40497 (=> (not res!24175) (not e!25690))))

(assert (=> b!40497 (= res!24175 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40498 () Bool)

(declare-fun e!25692 () Bool)

(declare-fun call!3131 () Bool)

(assert (=> b!40498 (= e!25692 call!3131)))

(declare-fun b!40499 () Bool)

(assert (=> b!40499 (= e!25692 call!3131)))

(declare-fun b!40500 () Bool)

(assert (=> b!40500 (= e!25690 (contains!514 Nil!1066 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40501 () Bool)

(assert (=> b!40501 (= e!25693 e!25692)))

(declare-fun c!4951 () Bool)

(assert (=> b!40501 (= c!4951 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun bm!3128 () Bool)

(assert (=> bm!3128 (= call!3131 (arrayNoDuplicates!0 (_keys!3292 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4951 (Cons!1065 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) Nil!1066) Nil!1066)))))

(assert (= (and d!7085 (not res!24176)) b!40497))

(assert (= (and b!40497 res!24175) b!40500))

(assert (= (and b!40497 res!24174) b!40501))

(assert (= (and b!40501 c!4951) b!40498))

(assert (= (and b!40501 (not c!4951)) b!40499))

(assert (= (or b!40498 b!40499) bm!3128))

(assert (=> b!40497 m!33413))

(assert (=> b!40497 m!33413))

(assert (=> b!40497 m!33415))

(assert (=> b!40500 m!33413))

(assert (=> b!40500 m!33413))

(declare-fun m!33461 () Bool)

(assert (=> b!40500 m!33461))

(assert (=> b!40501 m!33413))

(assert (=> b!40501 m!33413))

(assert (=> b!40501 m!33415))

(assert (=> bm!3128 m!33413))

(declare-fun m!33463 () Bool)

(assert (=> bm!3128 m!33463))

(assert (=> b!40352 d!7085))

(declare-fun b!40502 () Bool)

(declare-fun e!25694 () (_ BitVec 32))

(assert (=> b!40502 (= e!25694 #b00000000000000000000000000000000)))

(declare-fun d!7089 () Bool)

(declare-fun lt!15572 () (_ BitVec 32))

(assert (=> d!7089 (and (bvsge lt!15572 #b00000000000000000000000000000000) (bvsle lt!15572 (bvsub (size!1374 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!7089 (= lt!15572 e!25694)))

(declare-fun c!4953 () Bool)

(assert (=> d!7089 (= c!4953 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7089 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1374 lt!15455)))))

(assert (=> d!7089 (= (arrayCountValidKeys!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15572)))

(declare-fun bm!3129 () Bool)

(declare-fun call!3132 () (_ BitVec 32))

(assert (=> bm!3129 (= call!3132 (arrayCountValidKeys!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!40503 () Bool)

(declare-fun e!25695 () (_ BitVec 32))

(assert (=> b!40503 (= e!25694 e!25695)))

(declare-fun c!4952 () Bool)

(assert (=> b!40503 (= c!4952 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40504 () Bool)

(assert (=> b!40504 (= e!25695 call!3132)))

(declare-fun b!40505 () Bool)

(assert (=> b!40505 (= e!25695 (bvadd #b00000000000000000000000000000001 call!3132))))

(assert (= (and d!7089 c!4953) b!40502))

(assert (= (and d!7089 (not c!4953)) b!40503))

(assert (= (and b!40503 c!4952) b!40505))

(assert (= (and b!40503 (not c!4952)) b!40504))

(assert (= (or b!40505 b!40504) bm!3129))

(declare-fun m!33465 () Bool)

(assert (=> bm!3129 m!33465))

(assert (=> b!40503 m!33429))

(assert (=> b!40503 m!33429))

(assert (=> b!40503 m!33433))

(assert (=> bm!3114 d!7089))

(declare-fun b!40522 () Bool)

(declare-fun res!24191 () Bool)

(declare-fun e!25702 () Bool)

(assert (=> b!40522 (=> (not res!24191) (not e!25702))))

(assert (=> b!40522 (= res!24191 (and (= (size!1375 (_values!1786 lt!15453)) (bvadd (mask!5176 lt!15453) #b00000000000000000000000000000001)) (= (size!1374 (_keys!3292 lt!15453)) (size!1375 (_values!1786 lt!15453))) (bvsge (_size!168 lt!15453) #b00000000000000000000000000000000) (bvsle (_size!168 lt!15453) (bvadd (mask!5176 lt!15453) #b00000000000000000000000000000001))))))

(declare-fun b!40524 () Bool)

(declare-fun res!24189 () Bool)

(assert (=> b!40524 (=> (not res!24189) (not e!25702))))

(declare-fun size!1393 (LongMapFixedSize!238) (_ BitVec 32))

(assert (=> b!40524 (= res!24189 (= (size!1393 lt!15453) (bvadd (_size!168 lt!15453) (bvsdiv (bvadd (extraKeys!1694 lt!15453) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!40523 () Bool)

(declare-fun res!24188 () Bool)

(assert (=> b!40523 (=> (not res!24188) (not e!25702))))

(assert (=> b!40523 (= res!24188 (bvsge (size!1393 lt!15453) (_size!168 lt!15453)))))

(declare-fun d!7091 () Bool)

(declare-fun res!24190 () Bool)

(assert (=> d!7091 (=> (not res!24190) (not e!25702))))

(assert (=> d!7091 (= res!24190 (validMask!0 (mask!5176 lt!15453)))))

(assert (=> d!7091 (= (simpleValid!26 lt!15453) e!25702)))

(declare-fun b!40525 () Bool)

(assert (=> b!40525 (= e!25702 (and (bvsge (extraKeys!1694 lt!15453) #b00000000000000000000000000000000) (bvsle (extraKeys!1694 lt!15453) #b00000000000000000000000000000011) (bvsge (_vacant!168 lt!15453) #b00000000000000000000000000000000)))))

(assert (= (and d!7091 res!24190) b!40522))

(assert (= (and b!40522 res!24191) b!40523))

(assert (= (and b!40523 res!24188) b!40524))

(assert (= (and b!40524 res!24189) b!40525))

(declare-fun m!33471 () Bool)

(assert (=> b!40524 m!33471))

(assert (=> b!40523 m!33471))

(declare-fun m!33473 () Bool)

(assert (=> d!7091 m!33473))

(assert (=> d!7011 d!7091))

(declare-fun d!7101 () Bool)

(assert (=> d!7101 (arrayContainsKey!0 lt!15455 lt!15560 #b00000000000000000000000000000000)))

(declare-fun lt!15580 () Unit!980)

(declare-fun choose!13 (array!2587 (_ BitVec 64) (_ BitVec 32)) Unit!980)

(assert (=> d!7101 (= lt!15580 (choose!13 lt!15455 lt!15560 #b00000000000000000000000000000000))))

(assert (=> d!7101 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!7101 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15455 lt!15560 #b00000000000000000000000000000000) lt!15580)))

(declare-fun bs!1710 () Bool)

(assert (= bs!1710 d!7101))

(assert (=> bs!1710 m!33401))

(declare-fun m!33483 () Bool)

(assert (=> bs!1710 m!33483))

(assert (=> b!40454 d!7101))

(declare-fun d!7105 () Bool)

(declare-fun res!24198 () Bool)

(declare-fun e!25712 () Bool)

(assert (=> d!7105 (=> res!24198 e!25712)))

(assert (=> d!7105 (= res!24198 (= (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15560))))

(assert (=> d!7105 (= (arrayContainsKey!0 lt!15455 lt!15560 #b00000000000000000000000000000000) e!25712)))

(declare-fun b!40538 () Bool)

(declare-fun e!25713 () Bool)

(assert (=> b!40538 (= e!25712 e!25713)))

(declare-fun res!24199 () Bool)

(assert (=> b!40538 (=> (not res!24199) (not e!25713))))

(assert (=> b!40538 (= res!24199 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 lt!15455)))))

(declare-fun b!40539 () Bool)

(assert (=> b!40539 (= e!25713 (arrayContainsKey!0 lt!15455 lt!15560 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7105 (not res!24198)) b!40538))

(assert (= (and b!40538 res!24199) b!40539))

(assert (=> d!7105 m!33343))

(declare-fun m!33491 () Bool)

(assert (=> b!40539 m!33491))

(assert (=> b!40454 d!7105))

(declare-fun b!40552 () Bool)

(declare-fun e!25720 () SeekEntryResult!185)

(declare-fun e!25721 () SeekEntryResult!185)

(assert (=> b!40552 (= e!25720 e!25721)))

(declare-fun lt!15589 () (_ BitVec 64))

(declare-fun lt!15588 () SeekEntryResult!185)

(assert (=> b!40552 (= lt!15589 (select (arr!1237 lt!15455) (index!2864 lt!15588)))))

(declare-fun c!4969 () Bool)

(assert (=> b!40552 (= c!4969 (= lt!15589 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun b!40553 () Bool)

(assert (=> b!40553 (= e!25721 (Found!185 (index!2864 lt!15588)))))

(declare-fun b!40554 () Bool)

(declare-fun e!25722 () SeekEntryResult!185)

(assert (=> b!40554 (= e!25722 (MissingZero!185 (index!2864 lt!15588)))))

(declare-fun d!7111 () Bool)

(declare-fun lt!15590 () SeekEntryResult!185)

(assert (=> d!7111 (and (or (is-Undefined!185 lt!15590) (not (is-Found!185 lt!15590)) (and (bvsge (index!2863 lt!15590) #b00000000000000000000000000000000) (bvslt (index!2863 lt!15590) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15590) (is-Found!185 lt!15590) (not (is-MissingZero!185 lt!15590)) (and (bvsge (index!2862 lt!15590) #b00000000000000000000000000000000) (bvslt (index!2862 lt!15590) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15590) (is-Found!185 lt!15590) (is-MissingZero!185 lt!15590) (not (is-MissingVacant!185 lt!15590)) (and (bvsge (index!2865 lt!15590) #b00000000000000000000000000000000) (bvslt (index!2865 lt!15590) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15590) (ite (is-Found!185 lt!15590) (= (select (arr!1237 lt!15455) (index!2863 lt!15590)) (select (arr!1237 lt!15455) #b00000000000000000000000000000000)) (ite (is-MissingZero!185 lt!15590) (= (select (arr!1237 lt!15455) (index!2862 lt!15590)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!185 lt!15590) (= (select (arr!1237 lt!15455) (index!2865 lt!15590)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!7111 (= lt!15590 e!25720)))

(declare-fun c!4968 () Bool)

(assert (=> d!7111 (= c!4968 (and (is-Intermediate!185 lt!15588) (undefined!997 lt!15588)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2587 (_ BitVec 32)) SeekEntryResult!185)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!7111 (= lt!15588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) mask!853) (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853))))

(assert (=> d!7111 (validMask!0 mask!853)))

(assert (=> d!7111 (= (seekEntryOrOpen!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853) lt!15590)))

(declare-fun b!40555 () Bool)

(declare-fun c!4967 () Bool)

(assert (=> b!40555 (= c!4967 (= lt!15589 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40555 (= e!25721 e!25722)))

(declare-fun b!40556 () Bool)

(assert (=> b!40556 (= e!25720 Undefined!185)))

(declare-fun b!40557 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2587 (_ BitVec 32)) SeekEntryResult!185)

(assert (=> b!40557 (= e!25722 (seekKeyOrZeroReturnVacant!0 (x!7732 lt!15588) (index!2864 lt!15588) (index!2864 lt!15588) (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853))))

(assert (= (and d!7111 c!4968) b!40556))

(assert (= (and d!7111 (not c!4968)) b!40552))

(assert (= (and b!40552 c!4969) b!40553))

(assert (= (and b!40552 (not c!4969)) b!40555))

(assert (= (and b!40555 c!4967) b!40554))

(assert (= (and b!40555 (not c!4967)) b!40557))

(declare-fun m!33493 () Bool)

(assert (=> b!40552 m!33493))

(declare-fun m!33495 () Bool)

(assert (=> d!7111 m!33495))

(assert (=> d!7111 m!33239))

(assert (=> d!7111 m!33343))

(declare-fun m!33497 () Bool)

(assert (=> d!7111 m!33497))

(declare-fun m!33499 () Bool)

(assert (=> d!7111 m!33499))

(assert (=> d!7111 m!33497))

(assert (=> d!7111 m!33343))

(declare-fun m!33501 () Bool)

(assert (=> d!7111 m!33501))

(declare-fun m!33503 () Bool)

(assert (=> d!7111 m!33503))

(assert (=> b!40557 m!33343))

(declare-fun m!33505 () Bool)

(assert (=> b!40557 m!33505))

(assert (=> b!40454 d!7111))

(assert (=> d!7045 d!7051))

(declare-fun d!7117 () Bool)

(assert (=> d!7117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15455 mask!853)))

(assert (=> d!7117 true))

(declare-fun _$30!54 () Unit!980)

(assert (=> d!7117 (= (choose!34 lt!15455 mask!853 #b00000000000000000000000000000000) _$30!54)))

(declare-fun bs!1712 () Bool)

(assert (= bs!1712 d!7117))

(assert (=> bs!1712 m!33241))

(assert (=> d!7045 d!7117))

(assert (=> d!7045 d!7003))

(declare-fun bm!3193 () Bool)

(declare-fun call!3199 () ListLongMap!1069)

(declare-fun getCurrentListMapNoExtraKeys!34 (array!2587 array!2589 (_ BitVec 32) (_ BitVec 32) V!2097 V!2097 (_ BitVec 32) Int) ListLongMap!1069)

(assert (=> bm!3193 (= call!3199 (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)))))

(declare-fun call!3196 () ListLongMap!1069)

(declare-fun call!3202 () ListLongMap!1069)

(declare-fun c!5025 () Bool)

(declare-fun call!3197 () ListLongMap!1069)

(declare-fun c!5030 () Bool)

(declare-fun bm!3194 () Bool)

(declare-fun +!65 (ListLongMap!1069 tuple2!1488) ListLongMap!1069)

(assert (=> bm!3194 (= call!3202 (+!65 (ite c!5030 call!3199 (ite c!5025 call!3197 call!3196)) (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))))))

(declare-fun b!40771 () Bool)

(declare-fun e!25864 () Bool)

(declare-fun e!25860 () Bool)

(assert (=> b!40771 (= e!25864 e!25860)))

(declare-fun res!24303 () Bool)

(assert (=> b!40771 (=> (not res!24303) (not e!25860))))

(declare-fun lt!15796 () ListLongMap!1069)

(declare-fun contains!518 (ListLongMap!1069 (_ BitVec 64)) Bool)

(assert (=> b!40771 (= res!24303 (contains!518 lt!15796 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(assert (=> b!40771 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(declare-fun bm!3195 () Bool)

(assert (=> bm!3195 (= call!3197 call!3199)))

(declare-fun b!40772 () Bool)

(declare-fun res!24304 () Bool)

(declare-fun e!25863 () Bool)

(assert (=> b!40772 (=> (not res!24304) (not e!25863))))

(declare-fun e!25867 () Bool)

(assert (=> b!40772 (= res!24304 e!25867)))

(declare-fun c!5023 () Bool)

(assert (=> b!40772 (= c!5023 (not (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!40773 () Bool)

(declare-fun e!25858 () ListLongMap!1069)

(declare-fun e!25861 () ListLongMap!1069)

(assert (=> b!40773 (= e!25858 e!25861)))

(assert (=> b!40773 (= c!5025 (and (not (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!40774 () Bool)

(assert (=> b!40774 (= e!25858 (+!65 call!3202 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))))

(declare-fun b!40775 () Bool)

(declare-fun e!25855 () Bool)

(declare-fun call!3201 () Bool)

(assert (=> b!40775 (= e!25855 (not call!3201))))

(declare-fun b!40776 () Bool)

(declare-fun call!3200 () Bool)

(assert (=> b!40776 (= e!25867 (not call!3200))))

(declare-fun bm!3196 () Bool)

(assert (=> bm!3196 (= call!3201 (contains!518 lt!15796 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40777 () Bool)

(declare-fun e!25865 () Bool)

(assert (=> b!40777 (= e!25867 e!25865)))

(declare-fun res!24306 () Bool)

(assert (=> b!40777 (= res!24306 call!3200)))

(assert (=> b!40777 (=> (not res!24306) (not e!25865))))

(declare-fun bm!3197 () Bool)

(assert (=> bm!3197 (= call!3196 call!3197)))

(declare-fun b!40778 () Bool)

(declare-fun e!25856 () Bool)

(assert (=> b!40778 (= e!25855 e!25856)))

(declare-fun res!24311 () Bool)

(assert (=> b!40778 (= res!24311 call!3201)))

(assert (=> b!40778 (=> (not res!24311) (not e!25856))))

(declare-fun bm!3198 () Bool)

(assert (=> bm!3198 (= call!3200 (contains!518 lt!15796 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40779 () Bool)

(declare-fun apply!57 (ListLongMap!1069 (_ BitVec 64)) V!2097)

(assert (=> b!40779 (= e!25865 (= (apply!57 lt!15796 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1721 lt!15453)))))

(declare-fun b!40780 () Bool)

(declare-fun e!25854 () Unit!980)

(declare-fun Unit!987 () Unit!980)

(assert (=> b!40780 (= e!25854 Unit!987)))

(declare-fun b!40781 () Bool)

(declare-fun e!25862 () Bool)

(assert (=> b!40781 (= e!25862 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40782 () Bool)

(declare-fun res!24310 () Bool)

(assert (=> b!40782 (=> (not res!24310) (not e!25863))))

(assert (=> b!40782 (= res!24310 e!25864)))

(declare-fun res!24309 () Bool)

(assert (=> b!40782 (=> res!24309 e!25864)))

(assert (=> b!40782 (= res!24309 (not e!25862))))

(declare-fun res!24308 () Bool)

(assert (=> b!40782 (=> (not res!24308) (not e!25862))))

(assert (=> b!40782 (= res!24308 (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(declare-fun b!40783 () Bool)

(declare-fun c!5026 () Bool)

(assert (=> b!40783 (= c!5026 (and (not (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!25868 () ListLongMap!1069)

(assert (=> b!40783 (= e!25861 e!25868)))

(declare-fun b!40784 () Bool)

(declare-fun get!704 (ValueCell!629 V!2097) V!2097)

(assert (=> b!40784 (= e!25860 (= (apply!57 lt!15796 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)) (get!704 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000) (dynLambda!190 (defaultEntry!1803 lt!15453) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40784 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1375 (_values!1786 lt!15453))))))

(assert (=> b!40784 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(declare-fun b!40785 () Bool)

(declare-fun call!3198 () ListLongMap!1069)

(assert (=> b!40785 (= e!25861 call!3198)))

(declare-fun d!7119 () Bool)

(assert (=> d!7119 e!25863))

(declare-fun res!24307 () Bool)

(assert (=> d!7119 (=> (not res!24307) (not e!25863))))

(assert (=> d!7119 (= res!24307 (or (bvsge #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))))

(declare-fun lt!15794 () ListLongMap!1069)

(assert (=> d!7119 (= lt!15796 lt!15794)))

(declare-fun lt!15801 () Unit!980)

(assert (=> d!7119 (= lt!15801 e!25854)))

(declare-fun c!5028 () Bool)

(declare-fun e!25866 () Bool)

(assert (=> d!7119 (= c!5028 e!25866)))

(declare-fun res!24305 () Bool)

(assert (=> d!7119 (=> (not res!24305) (not e!25866))))

(assert (=> d!7119 (= res!24305 (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7119 (= lt!15794 e!25858)))

(assert (=> d!7119 (= c!5030 (and (not (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!7119 (validMask!0 (mask!5176 lt!15453))))

(assert (=> d!7119 (= (getCurrentListMap!312 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)) lt!15796)))

(declare-fun b!40786 () Bool)

(assert (=> b!40786 (= e!25863 e!25855)))

(declare-fun c!5024 () Bool)

(assert (=> b!40786 (= c!5024 (not (= (bvand (extraKeys!1694 lt!15453) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!40787 () Bool)

(assert (=> b!40787 (= e!25868 call!3196)))

(declare-fun b!40788 () Bool)

(declare-fun lt!15802 () Unit!980)

(assert (=> b!40788 (= e!25854 lt!15802)))

(declare-fun lt!15803 () ListLongMap!1069)

(assert (=> b!40788 (= lt!15803 (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)))))

(declare-fun lt!15800 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15800 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15788 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15788 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))

(declare-fun lt!15787 () Unit!980)

(declare-fun addStillContains!33 (ListLongMap!1069 (_ BitVec 64) V!2097 (_ BitVec 64)) Unit!980)

(assert (=> b!40788 (= lt!15787 (addStillContains!33 lt!15803 lt!15800 (zeroValue!1721 lt!15453) lt!15788))))

(assert (=> b!40788 (contains!518 (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))) lt!15788)))

(declare-fun lt!15798 () Unit!980)

(assert (=> b!40788 (= lt!15798 lt!15787)))

(declare-fun lt!15805 () ListLongMap!1069)

(assert (=> b!40788 (= lt!15805 (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)))))

(declare-fun lt!15790 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15790 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15804 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15804 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))

(declare-fun lt!15793 () Unit!980)

(declare-fun addApplyDifferent!33 (ListLongMap!1069 (_ BitVec 64) V!2097 (_ BitVec 64)) Unit!980)

(assert (=> b!40788 (= lt!15793 (addApplyDifferent!33 lt!15805 lt!15790 (minValue!1721 lt!15453) lt!15804))))

(assert (=> b!40788 (= (apply!57 (+!65 lt!15805 (tuple2!1489 lt!15790 (minValue!1721 lt!15453))) lt!15804) (apply!57 lt!15805 lt!15804))))

(declare-fun lt!15785 () Unit!980)

(assert (=> b!40788 (= lt!15785 lt!15793)))

(declare-fun lt!15806 () ListLongMap!1069)

(assert (=> b!40788 (= lt!15806 (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)))))

(declare-fun lt!15795 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15795 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15789 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15789 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))

(declare-fun lt!15791 () Unit!980)

(assert (=> b!40788 (= lt!15791 (addApplyDifferent!33 lt!15806 lt!15795 (zeroValue!1721 lt!15453) lt!15789))))

(assert (=> b!40788 (= (apply!57 (+!65 lt!15806 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))) lt!15789) (apply!57 lt!15806 lt!15789))))

(declare-fun lt!15799 () Unit!980)

(assert (=> b!40788 (= lt!15799 lt!15791)))

(declare-fun lt!15786 () ListLongMap!1069)

(assert (=> b!40788 (= lt!15786 (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)))))

(declare-fun lt!15792 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15792 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15797 () (_ BitVec 64))

(assert (=> b!40788 (= lt!15797 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))

(assert (=> b!40788 (= lt!15802 (addApplyDifferent!33 lt!15786 lt!15792 (minValue!1721 lt!15453) lt!15797))))

(assert (=> b!40788 (= (apply!57 (+!65 lt!15786 (tuple2!1489 lt!15792 (minValue!1721 lt!15453))) lt!15797) (apply!57 lt!15786 lt!15797))))

(declare-fun b!40789 () Bool)

(assert (=> b!40789 (= e!25856 (= (apply!57 lt!15796 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1721 lt!15453)))))

(declare-fun b!40790 () Bool)

(assert (=> b!40790 (= e!25868 call!3198)))

(declare-fun b!40791 () Bool)

(assert (=> b!40791 (= e!25866 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun bm!3199 () Bool)

(assert (=> bm!3199 (= call!3198 call!3202)))

(assert (= (and d!7119 c!5030) b!40774))

(assert (= (and d!7119 (not c!5030)) b!40773))

(assert (= (and b!40773 c!5025) b!40785))

(assert (= (and b!40773 (not c!5025)) b!40783))

(assert (= (and b!40783 c!5026) b!40790))

(assert (= (and b!40783 (not c!5026)) b!40787))

(assert (= (or b!40790 b!40787) bm!3197))

(assert (= (or b!40785 bm!3197) bm!3195))

(assert (= (or b!40785 b!40790) bm!3199))

(assert (= (or b!40774 bm!3195) bm!3193))

(assert (= (or b!40774 bm!3199) bm!3194))

(assert (= (and d!7119 res!24305) b!40791))

(assert (= (and d!7119 c!5028) b!40788))

(assert (= (and d!7119 (not c!5028)) b!40780))

(assert (= (and d!7119 res!24307) b!40782))

(assert (= (and b!40782 res!24308) b!40781))

(assert (= (and b!40782 (not res!24309)) b!40771))

(assert (= (and b!40771 res!24303) b!40784))

(assert (= (and b!40782 res!24310) b!40772))

(assert (= (and b!40772 c!5023) b!40777))

(assert (= (and b!40772 (not c!5023)) b!40776))

(assert (= (and b!40777 res!24306) b!40779))

(assert (= (or b!40777 b!40776) bm!3198))

(assert (= (and b!40772 res!24304) b!40786))

(assert (= (and b!40786 c!5024) b!40778))

(assert (= (and b!40786 (not c!5024)) b!40775))

(assert (= (and b!40778 res!24311) b!40789))

(assert (= (or b!40778 b!40775) bm!3196))

(declare-fun b_lambda!2093 () Bool)

(assert (=> (not b_lambda!2093) (not b!40784)))

(declare-fun tb!857 () Bool)

(declare-fun t!3944 () Bool)

(assert (=> (and start!5698 (= defaultEntry!470 (defaultEntry!1803 lt!15453)) t!3944) tb!857))

(declare-fun result!1459 () Bool)

(assert (=> tb!857 (= result!1459 tp_is_empty!1753)))

(assert (=> b!40784 t!3944))

(declare-fun b_and!2383 () Bool)

(assert (= b_and!2369 (and (=> t!3944 result!1459) b_and!2383)))

(assert (=> b!40771 m!33413))

(assert (=> b!40771 m!33413))

(declare-fun m!33655 () Bool)

(assert (=> b!40771 m!33655))

(assert (=> b!40791 m!33413))

(assert (=> b!40791 m!33413))

(assert (=> b!40791 m!33415))

(declare-fun m!33657 () Bool)

(assert (=> b!40779 m!33657))

(declare-fun m!33659 () Bool)

(assert (=> b!40789 m!33659))

(declare-fun m!33661 () Bool)

(assert (=> bm!3196 m!33661))

(assert (=> d!7119 m!33473))

(declare-fun m!33663 () Bool)

(assert (=> bm!3193 m!33663))

(declare-fun m!33665 () Bool)

(assert (=> b!40784 m!33665))

(declare-fun m!33667 () Bool)

(assert (=> b!40784 m!33667))

(assert (=> b!40784 m!33413))

(assert (=> b!40784 m!33413))

(declare-fun m!33669 () Bool)

(assert (=> b!40784 m!33669))

(assert (=> b!40784 m!33667))

(assert (=> b!40784 m!33665))

(declare-fun m!33671 () Bool)

(assert (=> b!40784 m!33671))

(declare-fun m!33673 () Bool)

(assert (=> b!40774 m!33673))

(declare-fun m!33675 () Bool)

(assert (=> bm!3194 m!33675))

(declare-fun m!33677 () Bool)

(assert (=> bm!3198 m!33677))

(declare-fun m!33679 () Bool)

(assert (=> b!40788 m!33679))

(assert (=> b!40788 m!33663))

(declare-fun m!33681 () Bool)

(assert (=> b!40788 m!33681))

(declare-fun m!33683 () Bool)

(assert (=> b!40788 m!33683))

(declare-fun m!33685 () Bool)

(assert (=> b!40788 m!33685))

(declare-fun m!33687 () Bool)

(assert (=> b!40788 m!33687))

(assert (=> b!40788 m!33687))

(declare-fun m!33689 () Bool)

(assert (=> b!40788 m!33689))

(declare-fun m!33691 () Bool)

(assert (=> b!40788 m!33691))

(declare-fun m!33693 () Bool)

(assert (=> b!40788 m!33693))

(declare-fun m!33695 () Bool)

(assert (=> b!40788 m!33695))

(declare-fun m!33697 () Bool)

(assert (=> b!40788 m!33697))

(assert (=> b!40788 m!33679))

(declare-fun m!33699 () Bool)

(assert (=> b!40788 m!33699))

(declare-fun m!33701 () Bool)

(assert (=> b!40788 m!33701))

(assert (=> b!40788 m!33681))

(declare-fun m!33703 () Bool)

(assert (=> b!40788 m!33703))

(assert (=> b!40788 m!33413))

(declare-fun m!33705 () Bool)

(assert (=> b!40788 m!33705))

(assert (=> b!40788 m!33695))

(declare-fun m!33707 () Bool)

(assert (=> b!40788 m!33707))

(assert (=> b!40781 m!33413))

(assert (=> b!40781 m!33413))

(assert (=> b!40781 m!33415))

(assert (=> d!7033 d!7119))

(declare-fun d!7143 () Bool)

(declare-fun lt!15815 () Bool)

(declare-fun content!33 (List!1069) (Set (_ BitVec 64)))

(assert (=> d!7143 (= lt!15815 (set.member (select (arr!1237 lt!15455) #b00000000000000000000000000000000) (content!33 Nil!1066)))))

(declare-fun e!25885 () Bool)

(assert (=> d!7143 (= lt!15815 e!25885)))

(declare-fun res!24323 () Bool)

(assert (=> d!7143 (=> (not res!24323) (not e!25885))))

(assert (=> d!7143 (= res!24323 (is-Cons!1065 Nil!1066))))

(assert (=> d!7143 (= (contains!514 Nil!1066 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)) lt!15815)))

(declare-fun b!40812 () Bool)

(declare-fun e!25884 () Bool)

(assert (=> b!40812 (= e!25885 e!25884)))

(declare-fun res!24322 () Bool)

(assert (=> b!40812 (=> res!24322 e!25884)))

(assert (=> b!40812 (= res!24322 (= (h!1639 Nil!1066) (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun b!40813 () Bool)

(assert (=> b!40813 (= e!25884 (contains!514 (t!3930 Nil!1066) (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(assert (= (and d!7143 res!24323) b!40812))

(assert (= (and b!40812 (not res!24322)) b!40813))

(declare-fun m!33725 () Bool)

(assert (=> d!7143 m!33725))

(assert (=> d!7143 m!33343))

(declare-fun m!33727 () Bool)

(assert (=> d!7143 m!33727))

(assert (=> b!40813 m!33343))

(declare-fun m!33729 () Bool)

(assert (=> b!40813 m!33729))

(assert (=> b!40378 d!7143))

(assert (=> b!40411 d!7071))

(declare-fun b!40814 () Bool)

(declare-fun e!25886 () Bool)

(declare-fun call!3203 () Bool)

(assert (=> b!40814 (= e!25886 call!3203)))

(declare-fun d!7147 () Bool)

(declare-fun res!24324 () Bool)

(declare-fun e!25888 () Bool)

(assert (=> d!7147 (=> res!24324 e!25888)))

(assert (=> d!7147 (= res!24324 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 lt!15455)))))

(assert (=> d!7147 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!15455 mask!853) e!25888)))

(declare-fun b!40815 () Bool)

(assert (=> b!40815 (= e!25888 e!25886)))

(declare-fun c!5036 () Bool)

(assert (=> b!40815 (= c!5036 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40816 () Bool)

(declare-fun e!25887 () Bool)

(assert (=> b!40816 (= e!25886 e!25887)))

(declare-fun lt!15816 () (_ BitVec 64))

(assert (=> b!40816 (= lt!15816 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15817 () Unit!980)

(assert (=> b!40816 (= lt!15817 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15455 lt!15816 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!40816 (arrayContainsKey!0 lt!15455 lt!15816 #b00000000000000000000000000000000)))

(declare-fun lt!15818 () Unit!980)

(assert (=> b!40816 (= lt!15818 lt!15817)))

(declare-fun res!24325 () Bool)

(assert (=> b!40816 (= res!24325 (= (seekEntryOrOpen!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15455 mask!853) (Found!185 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!40816 (=> (not res!24325) (not e!25887))))

(declare-fun b!40817 () Bool)

(assert (=> b!40817 (= e!25887 call!3203)))

(declare-fun bm!3200 () Bool)

(assert (=> bm!3200 (= call!3203 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15455 mask!853))))

(assert (= (and d!7147 (not res!24324)) b!40815))

(assert (= (and b!40815 c!5036) b!40816))

(assert (= (and b!40815 (not c!5036)) b!40814))

(assert (= (and b!40816 res!24325) b!40817))

(assert (= (or b!40817 b!40814) bm!3200))

(assert (=> b!40815 m!33429))

(assert (=> b!40815 m!33429))

(assert (=> b!40815 m!33433))

(assert (=> b!40816 m!33429))

(declare-fun m!33731 () Bool)

(assert (=> b!40816 m!33731))

(declare-fun m!33733 () Bool)

(assert (=> b!40816 m!33733))

(assert (=> b!40816 m!33429))

(declare-fun m!33735 () Bool)

(assert (=> b!40816 m!33735))

(declare-fun m!33737 () Bool)

(assert (=> bm!3200 m!33737))

(assert (=> bm!3122 d!7147))

(declare-fun b!40818 () Bool)

(declare-fun e!25889 () (_ BitVec 32))

(assert (=> b!40818 (= e!25889 #b00000000000000000000000000000000)))

(declare-fun d!7149 () Bool)

(declare-fun lt!15819 () (_ BitVec 32))

(assert (=> d!7149 (and (bvsge lt!15819 #b00000000000000000000000000000000) (bvsle lt!15819 (bvsub (size!1374 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(assert (=> d!7149 (= lt!15819 e!25889)))

(declare-fun c!5038 () Bool)

(assert (=> d!7149 (= c!5038 (bvsge #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7149 (and (bvsle #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1374 (_keys!3292 lt!15453)) (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7149 (= (arrayCountValidKeys!0 (_keys!3292 lt!15453) #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))) lt!15819)))

(declare-fun bm!3201 () Bool)

(declare-fun call!3204 () (_ BitVec 32))

(assert (=> bm!3201 (= call!3204 (arrayCountValidKeys!0 (_keys!3292 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))))))

(declare-fun b!40819 () Bool)

(declare-fun e!25890 () (_ BitVec 32))

(assert (=> b!40819 (= e!25889 e!25890)))

(declare-fun c!5037 () Bool)

(assert (=> b!40819 (= c!5037 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40820 () Bool)

(assert (=> b!40820 (= e!25890 call!3204)))

(declare-fun b!40821 () Bool)

(assert (=> b!40821 (= e!25890 (bvadd #b00000000000000000000000000000001 call!3204))))

(assert (= (and d!7149 c!5038) b!40818))

(assert (= (and d!7149 (not c!5038)) b!40819))

(assert (= (and b!40819 c!5037) b!40821))

(assert (= (and b!40819 (not c!5037)) b!40820))

(assert (= (or b!40821 b!40820) bm!3201))

(declare-fun m!33739 () Bool)

(assert (=> bm!3201 m!33739))

(assert (=> b!40819 m!33413))

(assert (=> b!40819 m!33413))

(assert (=> b!40819 m!33415))

(assert (=> b!40350 d!7149))

(assert (=> b!40453 d!7071))

(assert (=> b!40375 d!7071))

(push 1)

(assert (not b!40501))

(assert (not bm!3201))

(assert (not b!40497))

(assert (not bm!3128))

(assert (not b!40791))

(assert (not d!7091))

(assert (not bm!3129))

(assert (not b!40813))

(assert (not b!40481))

(assert (not b!40779))

(assert (not bm!3194))

(assert (not d!7117))

(assert (not b!40523))

(assert b_and!2383)

(assert (not d!7119))

(assert (not b!40500))

(assert (not bm!3196))

(assert (not bm!3198))

(assert (not b_lambda!2093))

(assert (not bm!3123))

(assert (not b!40482))

(assert (not b!40557))

(assert (not d!7067))

(assert (not b!40788))

(assert (not b!40472))

(assert (not b_next!1363))

(assert (not b!40774))

(assert (not b!40539))

(assert (not b!40503))

(assert (not d!7101))

(assert (not b!40816))

(assert (not b!40781))

(assert (not b!40478))

(assert (not bm!3124))

(assert (not bm!3193))

(assert (not b_lambda!2083))

(assert (not b!40771))

(assert (not b!40471))

(assert (not b!40815))

(assert (not b!40524))

(assert (not d!7081))

(assert (not b!40789))

(assert (not d!7111))

(assert (not b!40784))

(assert (not d!7143))

(assert tp_is_empty!1753)

(assert (not b!40819))

(assert (not bm!3200))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2383)

(assert (not b_next!1363))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!40849 () Bool)

(declare-fun e!25906 () Bool)

(declare-fun call!3207 () Bool)

(assert (=> b!40849 (= e!25906 call!3207)))

(declare-fun d!7157 () Bool)

(declare-fun res!24332 () Bool)

(declare-fun e!25908 () Bool)

(assert (=> d!7157 (=> res!24332 e!25908)))

(assert (=> d!7157 (= res!24332 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7157 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3292 lt!15453) (mask!5176 lt!15453)) e!25908)))

(declare-fun b!40850 () Bool)

(assert (=> b!40850 (= e!25908 e!25906)))

(declare-fun c!5051 () Bool)

(assert (=> b!40850 (= c!5051 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40851 () Bool)

(declare-fun e!25907 () Bool)

(assert (=> b!40851 (= e!25906 e!25907)))

(declare-fun lt!15830 () (_ BitVec 64))

(assert (=> b!40851 (= lt!15830 (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15831 () Unit!980)

(assert (=> b!40851 (= lt!15831 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3292 lt!15453) lt!15830 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!40851 (arrayContainsKey!0 (_keys!3292 lt!15453) lt!15830 #b00000000000000000000000000000000)))

(declare-fun lt!15832 () Unit!980)

(assert (=> b!40851 (= lt!15832 lt!15831)))

(declare-fun res!24333 () Bool)

(assert (=> b!40851 (= res!24333 (= (seekEntryOrOpen!0 (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3292 lt!15453) (mask!5176 lt!15453)) (Found!185 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!40851 (=> (not res!24333) (not e!25907))))

(declare-fun b!40852 () Bool)

(assert (=> b!40852 (= e!25907 call!3207)))

(declare-fun bm!3204 () Bool)

(assert (=> bm!3204 (= call!3207 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3292 lt!15453) (mask!5176 lt!15453)))))

(assert (= (and d!7157 (not res!24332)) b!40850))

(assert (= (and b!40850 c!5051) b!40851))

(assert (= (and b!40850 (not c!5051)) b!40849))

(assert (= (and b!40851 res!24333) b!40852))

(assert (= (or b!40852 b!40849) bm!3204))

(declare-fun m!33761 () Bool)

(assert (=> b!40850 m!33761))

(assert (=> b!40850 m!33761))

(declare-fun m!33763 () Bool)

(assert (=> b!40850 m!33763))

(assert (=> b!40851 m!33761))

(declare-fun m!33765 () Bool)

(assert (=> b!40851 m!33765))

(declare-fun m!33767 () Bool)

(assert (=> b!40851 m!33767))

(assert (=> b!40851 m!33761))

(declare-fun m!33769 () Bool)

(assert (=> b!40851 m!33769))

(declare-fun m!33771 () Bool)

(assert (=> bm!3204 m!33771))

(assert (=> bm!3123 d!7157))

(declare-fun d!7159 () Bool)

(declare-fun res!24334 () Bool)

(declare-fun e!25909 () Bool)

(assert (=> d!7159 (=> res!24334 e!25909)))

(assert (=> d!7159 (= res!24334 (= (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15560))))

(assert (=> d!7159 (= (arrayContainsKey!0 lt!15455 lt!15560 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!25909)))

(declare-fun b!40853 () Bool)

(declare-fun e!25910 () Bool)

(assert (=> b!40853 (= e!25909 e!25910)))

(declare-fun res!24335 () Bool)

(assert (=> b!40853 (=> (not res!24335) (not e!25910))))

(assert (=> b!40853 (= res!24335 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1374 lt!15455)))))

(declare-fun b!40854 () Bool)

(assert (=> b!40854 (= e!25910 (arrayContainsKey!0 lt!15455 lt!15560 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!7159 (not res!24334)) b!40853))

(assert (= (and b!40853 res!24335) b!40854))

(assert (=> d!7159 m!33429))

(declare-fun m!33773 () Bool)

(assert (=> b!40854 m!33773))

(assert (=> b!40539 d!7159))

(assert (=> d!7067 d!7027))

(declare-fun d!7161 () Bool)

(declare-fun e!25916 () Bool)

(assert (=> d!7161 e!25916))

(declare-fun res!24338 () Bool)

(assert (=> d!7161 (=> res!24338 e!25916)))

(declare-fun lt!15842 () Bool)

(assert (=> d!7161 (= res!24338 (not lt!15842))))

(declare-fun lt!15841 () Bool)

(assert (=> d!7161 (= lt!15842 lt!15841)))

(declare-fun lt!15843 () Unit!980)

(declare-fun e!25915 () Unit!980)

(assert (=> d!7161 (= lt!15843 e!25915)))

(declare-fun c!5054 () Bool)

(assert (=> d!7161 (= c!5054 lt!15841)))

(declare-fun containsKey!68 (List!1068 (_ BitVec 64)) Bool)

(assert (=> d!7161 (= lt!15841 (containsKey!68 (toList!550 lt!15796) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!7161 (= (contains!518 lt!15796 #b1000000000000000000000000000000000000000000000000000000000000000) lt!15842)))

(declare-fun b!40861 () Bool)

(declare-fun lt!15844 () Unit!980)

(assert (=> b!40861 (= e!25915 lt!15844)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!56 (List!1068 (_ BitVec 64)) Unit!980)

(assert (=> b!40861 (= lt!15844 (lemmaContainsKeyImpliesGetValueByKeyDefined!56 (toList!550 lt!15796) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!106 0))(
  ( (Some!105 (v!1998 V!2097)) (None!104) )
))
(declare-fun isDefined!57 (Option!106) Bool)

(declare-fun getValueByKey!100 (List!1068 (_ BitVec 64)) Option!106)

(assert (=> b!40861 (isDefined!57 (getValueByKey!100 (toList!550 lt!15796) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40862 () Bool)

(declare-fun Unit!989 () Unit!980)

(assert (=> b!40862 (= e!25915 Unit!989)))

(declare-fun b!40863 () Bool)

(assert (=> b!40863 (= e!25916 (isDefined!57 (getValueByKey!100 (toList!550 lt!15796) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7161 c!5054) b!40861))

(assert (= (and d!7161 (not c!5054)) b!40862))

(assert (= (and d!7161 (not res!24338)) b!40863))

(declare-fun m!33775 () Bool)

(assert (=> d!7161 m!33775))

(declare-fun m!33777 () Bool)

(assert (=> b!40861 m!33777))

(declare-fun m!33779 () Bool)

(assert (=> b!40861 m!33779))

(assert (=> b!40861 m!33779))

(declare-fun m!33781 () Bool)

(assert (=> b!40861 m!33781))

(assert (=> b!40863 m!33779))

(assert (=> b!40863 m!33779))

(assert (=> b!40863 m!33781))

(assert (=> bm!3196 d!7161))

(declare-fun d!7163 () Bool)

(assert (=> d!7163 (= (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40497 d!7163))

(declare-fun b!40864 () Bool)

(declare-fun e!25917 () Bool)

(declare-fun call!3208 () Bool)

(assert (=> b!40864 (= e!25917 call!3208)))

(declare-fun d!7165 () Bool)

(declare-fun res!24339 () Bool)

(declare-fun e!25919 () Bool)

(assert (=> d!7165 (=> res!24339 e!25919)))

(assert (=> d!7165 (= res!24339 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1374 lt!15455)))))

(assert (=> d!7165 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15455 mask!853) e!25919)))

(declare-fun b!40865 () Bool)

(assert (=> b!40865 (= e!25919 e!25917)))

(declare-fun c!5055 () Bool)

(assert (=> b!40865 (= c!5055 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!40866 () Bool)

(declare-fun e!25918 () Bool)

(assert (=> b!40866 (= e!25917 e!25918)))

(declare-fun lt!15845 () (_ BitVec 64))

(assert (=> b!40866 (= lt!15845 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!15846 () Unit!980)

(assert (=> b!40866 (= lt!15846 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15455 lt!15845 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!40866 (arrayContainsKey!0 lt!15455 lt!15845 #b00000000000000000000000000000000)))

(declare-fun lt!15847 () Unit!980)

(assert (=> b!40866 (= lt!15847 lt!15846)))

(declare-fun res!24340 () Bool)

(assert (=> b!40866 (= res!24340 (= (seekEntryOrOpen!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!15455 mask!853) (Found!185 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!40866 (=> (not res!24340) (not e!25918))))

(declare-fun b!40867 () Bool)

(assert (=> b!40867 (= e!25918 call!3208)))

(declare-fun bm!3205 () Bool)

(assert (=> bm!3205 (= call!3208 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15455 mask!853))))

(assert (= (and d!7165 (not res!24339)) b!40865))

(assert (= (and b!40865 c!5055) b!40866))

(assert (= (and b!40865 (not c!5055)) b!40864))

(assert (= (and b!40866 res!24340) b!40867))

(assert (= (or b!40867 b!40864) bm!3205))

(declare-fun m!33783 () Bool)

(assert (=> b!40865 m!33783))

(assert (=> b!40865 m!33783))

(declare-fun m!33785 () Bool)

(assert (=> b!40865 m!33785))

(assert (=> b!40866 m!33783))

(declare-fun m!33787 () Bool)

(assert (=> b!40866 m!33787))

(declare-fun m!33789 () Bool)

(assert (=> b!40866 m!33789))

(assert (=> b!40866 m!33783))

(declare-fun m!33791 () Bool)

(assert (=> b!40866 m!33791))

(declare-fun m!33793 () Bool)

(assert (=> bm!3205 m!33793))

(assert (=> bm!3200 d!7165))

(declare-fun d!7167 () Bool)

(declare-fun e!25921 () Bool)

(assert (=> d!7167 e!25921))

(declare-fun res!24341 () Bool)

(assert (=> d!7167 (=> res!24341 e!25921)))

(declare-fun lt!15849 () Bool)

(assert (=> d!7167 (= res!24341 (not lt!15849))))

(declare-fun lt!15848 () Bool)

(assert (=> d!7167 (= lt!15849 lt!15848)))

(declare-fun lt!15850 () Unit!980)

(declare-fun e!25920 () Unit!980)

(assert (=> d!7167 (= lt!15850 e!25920)))

(declare-fun c!5056 () Bool)

(assert (=> d!7167 (= c!5056 lt!15848)))

(assert (=> d!7167 (= lt!15848 (containsKey!68 (toList!550 lt!15796) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!7167 (= (contains!518 lt!15796 #b0000000000000000000000000000000000000000000000000000000000000000) lt!15849)))

(declare-fun b!40868 () Bool)

(declare-fun lt!15851 () Unit!980)

(assert (=> b!40868 (= e!25920 lt!15851)))

(assert (=> b!40868 (= lt!15851 (lemmaContainsKeyImpliesGetValueByKeyDefined!56 (toList!550 lt!15796) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40868 (isDefined!57 (getValueByKey!100 (toList!550 lt!15796) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40869 () Bool)

(declare-fun Unit!990 () Unit!980)

(assert (=> b!40869 (= e!25920 Unit!990)))

(declare-fun b!40870 () Bool)

(assert (=> b!40870 (= e!25921 (isDefined!57 (getValueByKey!100 (toList!550 lt!15796) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7167 c!5056) b!40868))

(assert (= (and d!7167 (not c!5056)) b!40869))

(assert (= (and d!7167 (not res!24341)) b!40870))

(declare-fun m!33795 () Bool)

(assert (=> d!7167 m!33795))

(declare-fun m!33797 () Bool)

(assert (=> b!40868 m!33797))

(declare-fun m!33799 () Bool)

(assert (=> b!40868 m!33799))

(assert (=> b!40868 m!33799))

(declare-fun m!33801 () Bool)

(assert (=> b!40868 m!33801))

(assert (=> b!40870 m!33799))

(assert (=> b!40870 m!33799))

(assert (=> b!40870 m!33801))

(assert (=> bm!3198 d!7167))

(declare-fun d!7169 () Bool)

(assert (=> d!7169 (arrayContainsKey!0 (_keys!3292 lt!15453) lt!15566 #b00000000000000000000000000000000)))

(declare-fun lt!15852 () Unit!980)

(assert (=> d!7169 (= lt!15852 (choose!13 (_keys!3292 lt!15453) lt!15566 #b00000000000000000000000000000000))))

(assert (=> d!7169 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!7169 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3292 lt!15453) lt!15566 #b00000000000000000000000000000000) lt!15852)))

(declare-fun bs!1717 () Bool)

(assert (= bs!1717 d!7169))

(assert (=> bs!1717 m!33419))

(declare-fun m!33803 () Bool)

(assert (=> bs!1717 m!33803))

(assert (=> b!40472 d!7169))

(declare-fun d!7171 () Bool)

(declare-fun res!24342 () Bool)

(declare-fun e!25922 () Bool)

(assert (=> d!7171 (=> res!24342 e!25922)))

(assert (=> d!7171 (= res!24342 (= (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) lt!15566))))

(assert (=> d!7171 (= (arrayContainsKey!0 (_keys!3292 lt!15453) lt!15566 #b00000000000000000000000000000000) e!25922)))

(declare-fun b!40871 () Bool)

(declare-fun e!25923 () Bool)

(assert (=> b!40871 (= e!25922 e!25923)))

(declare-fun res!24343 () Bool)

(assert (=> b!40871 (=> (not res!24343) (not e!25923))))

(assert (=> b!40871 (= res!24343 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))))))

(declare-fun b!40872 () Bool)

(assert (=> b!40872 (= e!25923 (arrayContainsKey!0 (_keys!3292 lt!15453) lt!15566 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7171 (not res!24342)) b!40871))

(assert (= (and b!40871 res!24343) b!40872))

(assert (=> d!7171 m!33413))

(declare-fun m!33805 () Bool)

(assert (=> b!40872 m!33805))

(assert (=> b!40472 d!7171))

(declare-fun b!40873 () Bool)

(declare-fun e!25924 () SeekEntryResult!185)

(declare-fun e!25925 () SeekEntryResult!185)

(assert (=> b!40873 (= e!25924 e!25925)))

(declare-fun lt!15854 () (_ BitVec 64))

(declare-fun lt!15853 () SeekEntryResult!185)

(assert (=> b!40873 (= lt!15854 (select (arr!1237 (_keys!3292 lt!15453)) (index!2864 lt!15853)))))

(declare-fun c!5059 () Bool)

(assert (=> b!40873 (= c!5059 (= lt!15854 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40874 () Bool)

(assert (=> b!40874 (= e!25925 (Found!185 (index!2864 lt!15853)))))

(declare-fun b!40875 () Bool)

(declare-fun e!25926 () SeekEntryResult!185)

(assert (=> b!40875 (= e!25926 (MissingZero!185 (index!2864 lt!15853)))))

(declare-fun d!7173 () Bool)

(declare-fun lt!15855 () SeekEntryResult!185)

(assert (=> d!7173 (and (or (is-Undefined!185 lt!15855) (not (is-Found!185 lt!15855)) (and (bvsge (index!2863 lt!15855) #b00000000000000000000000000000000) (bvslt (index!2863 lt!15855) (size!1374 (_keys!3292 lt!15453))))) (or (is-Undefined!185 lt!15855) (is-Found!185 lt!15855) (not (is-MissingZero!185 lt!15855)) (and (bvsge (index!2862 lt!15855) #b00000000000000000000000000000000) (bvslt (index!2862 lt!15855) (size!1374 (_keys!3292 lt!15453))))) (or (is-Undefined!185 lt!15855) (is-Found!185 lt!15855) (is-MissingZero!185 lt!15855) (not (is-MissingVacant!185 lt!15855)) (and (bvsge (index!2865 lt!15855) #b00000000000000000000000000000000) (bvslt (index!2865 lt!15855) (size!1374 (_keys!3292 lt!15453))))) (or (is-Undefined!185 lt!15855) (ite (is-Found!185 lt!15855) (= (select (arr!1237 (_keys!3292 lt!15453)) (index!2863 lt!15855)) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)) (ite (is-MissingZero!185 lt!15855) (= (select (arr!1237 (_keys!3292 lt!15453)) (index!2862 lt!15855)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!185 lt!15855) (= (select (arr!1237 (_keys!3292 lt!15453)) (index!2865 lt!15855)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!7173 (= lt!15855 e!25924)))

(declare-fun c!5058 () Bool)

(assert (=> d!7173 (= c!5058 (and (is-Intermediate!185 lt!15853) (undefined!997 lt!15853)))))

(assert (=> d!7173 (= lt!15853 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) (mask!5176 lt!15453)) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) (_keys!3292 lt!15453) (mask!5176 lt!15453)))))

(assert (=> d!7173 (validMask!0 (mask!5176 lt!15453))))

(assert (=> d!7173 (= (seekEntryOrOpen!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) (_keys!3292 lt!15453) (mask!5176 lt!15453)) lt!15855)))

(declare-fun b!40876 () Bool)

(declare-fun c!5057 () Bool)

(assert (=> b!40876 (= c!5057 (= lt!15854 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40876 (= e!25925 e!25926)))

(declare-fun b!40877 () Bool)

(assert (=> b!40877 (= e!25924 Undefined!185)))

(declare-fun b!40878 () Bool)

(assert (=> b!40878 (= e!25926 (seekKeyOrZeroReturnVacant!0 (x!7732 lt!15853) (index!2864 lt!15853) (index!2864 lt!15853) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) (_keys!3292 lt!15453) (mask!5176 lt!15453)))))

(assert (= (and d!7173 c!5058) b!40877))

(assert (= (and d!7173 (not c!5058)) b!40873))

(assert (= (and b!40873 c!5059) b!40874))

(assert (= (and b!40873 (not c!5059)) b!40876))

(assert (= (and b!40876 c!5057) b!40875))

(assert (= (and b!40876 (not c!5057)) b!40878))

(declare-fun m!33807 () Bool)

(assert (=> b!40873 m!33807))

(declare-fun m!33809 () Bool)

(assert (=> d!7173 m!33809))

(assert (=> d!7173 m!33473))

(assert (=> d!7173 m!33413))

(declare-fun m!33811 () Bool)

(assert (=> d!7173 m!33811))

(declare-fun m!33813 () Bool)

(assert (=> d!7173 m!33813))

(assert (=> d!7173 m!33811))

(assert (=> d!7173 m!33413))

(declare-fun m!33815 () Bool)

(assert (=> d!7173 m!33815))

(declare-fun m!33817 () Bool)

(assert (=> d!7173 m!33817))

(assert (=> b!40878 m!33413))

(declare-fun m!33819 () Bool)

(assert (=> b!40878 m!33819))

(assert (=> b!40472 d!7173))

(declare-fun d!7175 () Bool)

(assert (=> d!7175 (= (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40815 d!7175))

(declare-fun b!40879 () Bool)

(declare-fun e!25927 () (_ BitVec 32))

(assert (=> b!40879 (= e!25927 #b00000000000000000000000000000000)))

(declare-fun d!7177 () Bool)

(declare-fun lt!15856 () (_ BitVec 32))

(assert (=> d!7177 (and (bvsge lt!15856 #b00000000000000000000000000000000) (bvsle lt!15856 (bvsub (size!1374 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!7177 (= lt!15856 e!25927)))

(declare-fun c!5061 () Bool)

(assert (=> d!7177 (= c!5061 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7177 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1374 (_keys!3292 lt!15453)) (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7177 (= (arrayCountValidKeys!0 (_keys!3292 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))) lt!15856)))

(declare-fun bm!3206 () Bool)

(declare-fun call!3209 () (_ BitVec 32))

(assert (=> bm!3206 (= call!3209 (arrayCountValidKeys!0 (_keys!3292 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))))))

(declare-fun b!40880 () Bool)

(declare-fun e!25928 () (_ BitVec 32))

(assert (=> b!40880 (= e!25927 e!25928)))

(declare-fun c!5060 () Bool)

(assert (=> b!40880 (= c!5060 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40881 () Bool)

(assert (=> b!40881 (= e!25928 call!3209)))

(declare-fun b!40882 () Bool)

(assert (=> b!40882 (= e!25928 (bvadd #b00000000000000000000000000000001 call!3209))))

(assert (= (and d!7177 c!5061) b!40879))

(assert (= (and d!7177 (not c!5061)) b!40880))

(assert (= (and b!40880 c!5060) b!40882))

(assert (= (and b!40880 (not c!5060)) b!40881))

(assert (= (or b!40882 b!40881) bm!3206))

(declare-fun m!33821 () Bool)

(assert (=> bm!3206 m!33821))

(assert (=> b!40880 m!33761))

(assert (=> b!40880 m!33761))

(assert (=> b!40880 m!33763))

(assert (=> bm!3201 d!7177))

(declare-fun d!7179 () Bool)

(assert (=> d!7179 (= (validMask!0 (mask!5176 lt!15453)) (and (or (= (mask!5176 lt!15453) #b00000000000000000000000000000111) (= (mask!5176 lt!15453) #b00000000000000000000000000001111) (= (mask!5176 lt!15453) #b00000000000000000000000000011111) (= (mask!5176 lt!15453) #b00000000000000000000000000111111) (= (mask!5176 lt!15453) #b00000000000000000000000001111111) (= (mask!5176 lt!15453) #b00000000000000000000000011111111) (= (mask!5176 lt!15453) #b00000000000000000000000111111111) (= (mask!5176 lt!15453) #b00000000000000000000001111111111) (= (mask!5176 lt!15453) #b00000000000000000000011111111111) (= (mask!5176 lt!15453) #b00000000000000000000111111111111) (= (mask!5176 lt!15453) #b00000000000000000001111111111111) (= (mask!5176 lt!15453) #b00000000000000000011111111111111) (= (mask!5176 lt!15453) #b00000000000000000111111111111111) (= (mask!5176 lt!15453) #b00000000000000001111111111111111) (= (mask!5176 lt!15453) #b00000000000000011111111111111111) (= (mask!5176 lt!15453) #b00000000000000111111111111111111) (= (mask!5176 lt!15453) #b00000000000001111111111111111111) (= (mask!5176 lt!15453) #b00000000000011111111111111111111) (= (mask!5176 lt!15453) #b00000000000111111111111111111111) (= (mask!5176 lt!15453) #b00000000001111111111111111111111) (= (mask!5176 lt!15453) #b00000000011111111111111111111111) (= (mask!5176 lt!15453) #b00000000111111111111111111111111) (= (mask!5176 lt!15453) #b00000001111111111111111111111111) (= (mask!5176 lt!15453) #b00000011111111111111111111111111) (= (mask!5176 lt!15453) #b00000111111111111111111111111111) (= (mask!5176 lt!15453) #b00001111111111111111111111111111) (= (mask!5176 lt!15453) #b00011111111111111111111111111111) (= (mask!5176 lt!15453) #b00111111111111111111111111111111)) (bvsle (mask!5176 lt!15453) #b00111111111111111111111111111111)))))

(assert (=> d!7091 d!7179))

(assert (=> b!40791 d!7163))

(assert (=> b!40471 d!7163))

(declare-fun d!7181 () Bool)

(assert (=> d!7181 (= (size!1393 lt!15453) (bvadd (_size!168 lt!15453) (bvsdiv (bvadd (extraKeys!1694 lt!15453) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!40524 d!7181))

(assert (=> d!7101 d!7105))

(declare-fun d!7183 () Bool)

(assert (=> d!7183 (arrayContainsKey!0 lt!15455 lt!15560 #b00000000000000000000000000000000)))

(assert (=> d!7183 true))

(declare-fun _$60!341 () Unit!980)

(assert (=> d!7183 (= (choose!13 lt!15455 lt!15560 #b00000000000000000000000000000000) _$60!341)))

(declare-fun bs!1718 () Bool)

(assert (= bs!1718 d!7183))

(assert (=> bs!1718 m!33401))

(assert (=> d!7101 d!7183))

(declare-fun d!7185 () Bool)

(assert (not d!7185))

(assert (=> b!40813 d!7185))

(declare-fun d!7187 () Bool)

(assert (=> d!7187 (arrayContainsKey!0 lt!15455 lt!15816 #b00000000000000000000000000000000)))

(declare-fun lt!15857 () Unit!980)

(assert (=> d!7187 (= lt!15857 (choose!13 lt!15455 lt!15816 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!7187 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!7187 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15455 lt!15816 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15857)))

(declare-fun bs!1719 () Bool)

(assert (= bs!1719 d!7187))

(assert (=> bs!1719 m!33733))

(declare-fun m!33823 () Bool)

(assert (=> bs!1719 m!33823))

(assert (=> b!40816 d!7187))

(declare-fun d!7189 () Bool)

(declare-fun res!24344 () Bool)

(declare-fun e!25929 () Bool)

(assert (=> d!7189 (=> res!24344 e!25929)))

(assert (=> d!7189 (= res!24344 (= (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15816))))

(assert (=> d!7189 (= (arrayContainsKey!0 lt!15455 lt!15816 #b00000000000000000000000000000000) e!25929)))

(declare-fun b!40883 () Bool)

(declare-fun e!25930 () Bool)

(assert (=> b!40883 (= e!25929 e!25930)))

(declare-fun res!24345 () Bool)

(assert (=> b!40883 (=> (not res!24345) (not e!25930))))

(assert (=> b!40883 (= res!24345 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 lt!15455)))))

(declare-fun b!40884 () Bool)

(assert (=> b!40884 (= e!25930 (arrayContainsKey!0 lt!15455 lt!15816 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7189 (not res!24344)) b!40883))

(assert (= (and b!40883 res!24345) b!40884))

(assert (=> d!7189 m!33343))

(declare-fun m!33825 () Bool)

(assert (=> b!40884 m!33825))

(assert (=> b!40816 d!7189))

(declare-fun b!40885 () Bool)

(declare-fun e!25931 () SeekEntryResult!185)

(declare-fun e!25932 () SeekEntryResult!185)

(assert (=> b!40885 (= e!25931 e!25932)))

(declare-fun lt!15859 () (_ BitVec 64))

(declare-fun lt!15858 () SeekEntryResult!185)

(assert (=> b!40885 (= lt!15859 (select (arr!1237 lt!15455) (index!2864 lt!15858)))))

(declare-fun c!5064 () Bool)

(assert (=> b!40885 (= c!5064 (= lt!15859 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40886 () Bool)

(assert (=> b!40886 (= e!25932 (Found!185 (index!2864 lt!15858)))))

(declare-fun b!40887 () Bool)

(declare-fun e!25933 () SeekEntryResult!185)

(assert (=> b!40887 (= e!25933 (MissingZero!185 (index!2864 lt!15858)))))

(declare-fun d!7191 () Bool)

(declare-fun lt!15860 () SeekEntryResult!185)

(assert (=> d!7191 (and (or (is-Undefined!185 lt!15860) (not (is-Found!185 lt!15860)) (and (bvsge (index!2863 lt!15860) #b00000000000000000000000000000000) (bvslt (index!2863 lt!15860) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15860) (is-Found!185 lt!15860) (not (is-MissingZero!185 lt!15860)) (and (bvsge (index!2862 lt!15860) #b00000000000000000000000000000000) (bvslt (index!2862 lt!15860) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15860) (is-Found!185 lt!15860) (is-MissingZero!185 lt!15860) (not (is-MissingVacant!185 lt!15860)) (and (bvsge (index!2865 lt!15860) #b00000000000000000000000000000000) (bvslt (index!2865 lt!15860) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15860) (ite (is-Found!185 lt!15860) (= (select (arr!1237 lt!15455) (index!2863 lt!15860)) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite (is-MissingZero!185 lt!15860) (= (select (arr!1237 lt!15455) (index!2862 lt!15860)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!185 lt!15860) (= (select (arr!1237 lt!15455) (index!2865 lt!15860)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!7191 (= lt!15860 e!25931)))

(declare-fun c!5063 () Bool)

(assert (=> d!7191 (= c!5063 (and (is-Intermediate!185 lt!15858) (undefined!997 lt!15858)))))

(assert (=> d!7191 (= lt!15858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15455 mask!853))))

(assert (=> d!7191 (validMask!0 mask!853)))

(assert (=> d!7191 (= (seekEntryOrOpen!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15455 mask!853) lt!15860)))

(declare-fun b!40888 () Bool)

(declare-fun c!5062 () Bool)

(assert (=> b!40888 (= c!5062 (= lt!15859 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40888 (= e!25932 e!25933)))

(declare-fun b!40889 () Bool)

(assert (=> b!40889 (= e!25931 Undefined!185)))

(declare-fun b!40890 () Bool)

(assert (=> b!40890 (= e!25933 (seekKeyOrZeroReturnVacant!0 (x!7732 lt!15858) (index!2864 lt!15858) (index!2864 lt!15858) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15455 mask!853))))

(assert (= (and d!7191 c!5063) b!40889))

(assert (= (and d!7191 (not c!5063)) b!40885))

(assert (= (and b!40885 c!5064) b!40886))

(assert (= (and b!40885 (not c!5064)) b!40888))

(assert (= (and b!40888 c!5062) b!40887))

(assert (= (and b!40888 (not c!5062)) b!40890))

(declare-fun m!33827 () Bool)

(assert (=> b!40885 m!33827))

(declare-fun m!33829 () Bool)

(assert (=> d!7191 m!33829))

(assert (=> d!7191 m!33239))

(assert (=> d!7191 m!33429))

(declare-fun m!33831 () Bool)

(assert (=> d!7191 m!33831))

(declare-fun m!33833 () Bool)

(assert (=> d!7191 m!33833))

(assert (=> d!7191 m!33831))

(assert (=> d!7191 m!33429))

(declare-fun m!33835 () Bool)

(assert (=> d!7191 m!33835))

(declare-fun m!33837 () Bool)

(assert (=> d!7191 m!33837))

(assert (=> b!40890 m!33429))

(declare-fun m!33839 () Bool)

(assert (=> b!40890 m!33839))

(assert (=> b!40816 d!7191))

(assert (=> b!40819 d!7163))

(assert (=> d!7119 d!7179))

(declare-fun d!7193 () Bool)

(declare-fun e!25936 () Bool)

(assert (=> d!7193 e!25936))

(declare-fun res!24351 () Bool)

(assert (=> d!7193 (=> (not res!24351) (not e!25936))))

(declare-fun lt!15869 () ListLongMap!1069)

(assert (=> d!7193 (= res!24351 (contains!518 lt!15869 (_1!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))))))

(declare-fun lt!15872 () List!1068)

(assert (=> d!7193 (= lt!15869 (ListLongMap!1070 lt!15872))))

(declare-fun lt!15870 () Unit!980)

(declare-fun lt!15871 () Unit!980)

(assert (=> d!7193 (= lt!15870 lt!15871)))

(assert (=> d!7193 (= (getValueByKey!100 lt!15872 (_1!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!26 (List!1068 (_ BitVec 64) V!2097) Unit!980)

(assert (=> d!7193 (= lt!15871 (lemmaContainsTupThenGetReturnValue!26 lt!15872 (_1!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))) (_2!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))))))

(declare-fun insertStrictlySorted!23 (List!1068 (_ BitVec 64) V!2097) List!1068)

(assert (=> d!7193 (= lt!15872 (insertStrictlySorted!23 (toList!550 call!3202) (_1!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))) (_2!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))))))

(assert (=> d!7193 (= (+!65 call!3202 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))) lt!15869)))

(declare-fun b!40895 () Bool)

(declare-fun res!24350 () Bool)

(assert (=> b!40895 (=> (not res!24350) (not e!25936))))

(assert (=> b!40895 (= res!24350 (= (getValueByKey!100 (toList!550 lt!15869) (_1!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))))))

(declare-fun b!40896 () Bool)

(declare-fun contains!519 (List!1068 tuple2!1488) Bool)

(assert (=> b!40896 (= e!25936 (contains!519 (toList!550 lt!15869) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))))

(assert (= (and d!7193 res!24351) b!40895))

(assert (= (and b!40895 res!24350) b!40896))

(declare-fun m!33841 () Bool)

(assert (=> d!7193 m!33841))

(declare-fun m!33843 () Bool)

(assert (=> d!7193 m!33843))

(declare-fun m!33845 () Bool)

(assert (=> d!7193 m!33845))

(declare-fun m!33847 () Bool)

(assert (=> d!7193 m!33847))

(declare-fun m!33849 () Bool)

(assert (=> b!40895 m!33849))

(declare-fun m!33851 () Bool)

(assert (=> b!40896 m!33851))

(assert (=> b!40774 d!7193))

(assert (=> b!40482 d!7175))

(assert (=> b!40503 d!7175))

(declare-fun b!40929 () Bool)

(declare-fun e!25960 () ListLongMap!1069)

(declare-fun call!3212 () ListLongMap!1069)

(assert (=> b!40929 (= e!25960 call!3212)))

(declare-fun b!40930 () Bool)

(declare-fun lt!15894 () Unit!980)

(declare-fun lt!15890 () Unit!980)

(assert (=> b!40930 (= lt!15894 lt!15890)))

(declare-fun lt!15889 () ListLongMap!1069)

(declare-fun lt!15893 () V!2097)

(declare-fun lt!15888 () (_ BitVec 64))

(declare-fun lt!15891 () (_ BitVec 64))

(assert (=> b!40930 (not (contains!518 (+!65 lt!15889 (tuple2!1489 lt!15891 lt!15893)) lt!15888))))

(declare-fun addStillNotContains!7 (ListLongMap!1069 (_ BitVec 64) V!2097 (_ BitVec 64)) Unit!980)

(assert (=> b!40930 (= lt!15890 (addStillNotContains!7 lt!15889 lt!15891 lt!15893 lt!15888))))

(assert (=> b!40930 (= lt!15888 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!40930 (= lt!15893 (get!704 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000) (dynLambda!190 (defaultEntry!1803 lt!15453) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!40930 (= lt!15891 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))

(assert (=> b!40930 (= lt!15889 call!3212)))

(assert (=> b!40930 (= e!25960 (+!65 call!3212 (tuple2!1489 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) (get!704 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000) (dynLambda!190 (defaultEntry!1803 lt!15453) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!3209 () Bool)

(assert (=> bm!3209 (= call!3212 (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1803 lt!15453)))))

(declare-fun b!40931 () Bool)

(declare-fun e!25959 () Bool)

(assert (=> b!40931 (= e!25959 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(assert (=> b!40931 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!40932 () Bool)

(declare-fun e!25962 () Bool)

(declare-fun e!25957 () Bool)

(assert (=> b!40932 (= e!25962 e!25957)))

(declare-fun c!5077 () Bool)

(assert (=> b!40932 (= c!5077 (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(declare-fun b!40933 () Bool)

(declare-fun lt!15892 () ListLongMap!1069)

(assert (=> b!40933 (= e!25957 (= lt!15892 (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1803 lt!15453))))))

(declare-fun b!40934 () Bool)

(assert (=> b!40934 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(assert (=> b!40934 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1375 (_values!1786 lt!15453))))))

(declare-fun e!25956 () Bool)

(assert (=> b!40934 (= e!25956 (= (apply!57 lt!15892 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)) (get!704 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000) (dynLambda!190 (defaultEntry!1803 lt!15453) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!7195 () Bool)

(declare-fun e!25958 () Bool)

(assert (=> d!7195 e!25958))

(declare-fun res!24364 () Bool)

(assert (=> d!7195 (=> (not res!24364) (not e!25958))))

(assert (=> d!7195 (= res!24364 (not (contains!518 lt!15892 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!25961 () ListLongMap!1069)

(assert (=> d!7195 (= lt!15892 e!25961)))

(declare-fun c!5079 () Bool)

(assert (=> d!7195 (= c!5079 (bvsge #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7195 (validMask!0 (mask!5176 lt!15453))))

(assert (=> d!7195 (= (getCurrentListMapNoExtraKeys!34 (_keys!3292 lt!15453) (_values!1786 lt!15453) (mask!5176 lt!15453) (extraKeys!1694 lt!15453) (zeroValue!1721 lt!15453) (minValue!1721 lt!15453) #b00000000000000000000000000000000 (defaultEntry!1803 lt!15453)) lt!15892)))

(declare-fun b!40935 () Bool)

(assert (=> b!40935 (= e!25958 e!25962)))

(declare-fun c!5078 () Bool)

(assert (=> b!40935 (= c!5078 e!25959)))

(declare-fun res!24362 () Bool)

(assert (=> b!40935 (=> (not res!24362) (not e!25959))))

(assert (=> b!40935 (= res!24362 (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(declare-fun b!40936 () Bool)

(assert (=> b!40936 (= e!25961 (ListLongMap!1070 Nil!1065))))

(declare-fun b!40937 () Bool)

(declare-fun isEmpty!235 (ListLongMap!1069) Bool)

(assert (=> b!40937 (= e!25957 (isEmpty!235 lt!15892))))

(declare-fun b!40938 () Bool)

(assert (=> b!40938 (= e!25961 e!25960)))

(declare-fun c!5076 () Bool)

(assert (=> b!40938 (= c!5076 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40939 () Bool)

(assert (=> b!40939 (= e!25962 e!25956)))

(assert (=> b!40939 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1374 (_keys!3292 lt!15453))))))

(declare-fun res!24365 () Bool)

(assert (=> b!40939 (= res!24365 (contains!518 lt!15892 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(assert (=> b!40939 (=> (not res!24365) (not e!25956))))

(declare-fun b!40940 () Bool)

(declare-fun res!24363 () Bool)

(assert (=> b!40940 (=> (not res!24363) (not e!25958))))

(assert (=> b!40940 (= res!24363 (not (contains!518 lt!15892 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7195 c!5079) b!40936))

(assert (= (and d!7195 (not c!5079)) b!40938))

(assert (= (and b!40938 c!5076) b!40930))

(assert (= (and b!40938 (not c!5076)) b!40929))

(assert (= (or b!40930 b!40929) bm!3209))

(assert (= (and d!7195 res!24364) b!40940))

(assert (= (and b!40940 res!24363) b!40935))

(assert (= (and b!40935 res!24362) b!40931))

(assert (= (and b!40935 c!5078) b!40939))

(assert (= (and b!40935 (not c!5078)) b!40932))

(assert (= (and b!40939 res!24365) b!40934))

(assert (= (and b!40932 c!5077) b!40933))

(assert (= (and b!40932 (not c!5077)) b!40937))

(declare-fun b_lambda!2095 () Bool)

(assert (=> (not b_lambda!2095) (not b!40930)))

(assert (=> b!40930 t!3944))

(declare-fun b_and!2385 () Bool)

(assert (= b_and!2383 (and (=> t!3944 result!1459) b_and!2385)))

(declare-fun b_lambda!2097 () Bool)

(assert (=> (not b_lambda!2097) (not b!40934)))

(assert (=> b!40934 t!3944))

(declare-fun b_and!2387 () Bool)

(assert (= b_and!2385 (and (=> t!3944 result!1459) b_and!2387)))

(declare-fun m!33865 () Bool)

(assert (=> bm!3209 m!33865))

(declare-fun m!33867 () Bool)

(assert (=> b!40937 m!33867))

(declare-fun m!33869 () Bool)

(assert (=> b!40930 m!33869))

(assert (=> b!40930 m!33667))

(assert (=> b!40930 m!33665))

(assert (=> b!40930 m!33671))

(assert (=> b!40930 m!33413))

(declare-fun m!33871 () Bool)

(assert (=> b!40930 m!33871))

(assert (=> b!40930 m!33665))

(declare-fun m!33873 () Bool)

(assert (=> b!40930 m!33873))

(assert (=> b!40930 m!33667))

(assert (=> b!40930 m!33873))

(declare-fun m!33875 () Bool)

(assert (=> b!40930 m!33875))

(declare-fun m!33877 () Bool)

(assert (=> d!7195 m!33877))

(assert (=> d!7195 m!33473))

(declare-fun m!33879 () Bool)

(assert (=> b!40940 m!33879))

(assert (=> b!40938 m!33413))

(assert (=> b!40938 m!33413))

(assert (=> b!40938 m!33415))

(assert (=> b!40934 m!33413))

(declare-fun m!33881 () Bool)

(assert (=> b!40934 m!33881))

(assert (=> b!40934 m!33667))

(assert (=> b!40934 m!33665))

(assert (=> b!40934 m!33671))

(assert (=> b!40934 m!33413))

(assert (=> b!40934 m!33665))

(assert (=> b!40934 m!33667))

(assert (=> b!40931 m!33413))

(assert (=> b!40931 m!33413))

(assert (=> b!40931 m!33415))

(assert (=> b!40933 m!33865))

(assert (=> b!40939 m!33413))

(assert (=> b!40939 m!33413))

(declare-fun m!33883 () Bool)

(assert (=> b!40939 m!33883))

(assert (=> bm!3193 d!7195))

(declare-fun d!7205 () Bool)

(declare-fun res!24368 () Bool)

(declare-fun e!25970 () Bool)

(assert (=> d!7205 (=> res!24368 e!25970)))

(assert (=> d!7205 (= res!24368 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1374 lt!15455)))))

(assert (=> d!7205 (= (arrayNoDuplicates!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4947 (Cons!1065 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066))) e!25970)))

(declare-fun b!40953 () Bool)

(declare-fun e!25972 () Bool)

(assert (=> b!40953 (= e!25970 e!25972)))

(declare-fun res!24366 () Bool)

(assert (=> b!40953 (=> (not res!24366) (not e!25972))))

(declare-fun e!25969 () Bool)

(assert (=> b!40953 (= res!24366 (not e!25969))))

(declare-fun res!24367 () Bool)

(assert (=> b!40953 (=> (not res!24367) (not e!25969))))

(assert (=> b!40953 (= res!24367 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!40954 () Bool)

(declare-fun e!25971 () Bool)

(declare-fun call!3213 () Bool)

(assert (=> b!40954 (= e!25971 call!3213)))

(declare-fun b!40955 () Bool)

(assert (=> b!40955 (= e!25971 call!3213)))

(declare-fun b!40956 () Bool)

(assert (=> b!40956 (= e!25969 (contains!514 (ite c!4947 (Cons!1065 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!40957 () Bool)

(assert (=> b!40957 (= e!25972 e!25971)))

(declare-fun c!5086 () Bool)

(assert (=> b!40957 (= c!5086 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!3210 () Bool)

(assert (=> bm!3210 (= call!3213 (arrayNoDuplicates!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5086 (Cons!1065 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!4947 (Cons!1065 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066))) (ite c!4947 (Cons!1065 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)))))))

(assert (= (and d!7205 (not res!24368)) b!40953))

(assert (= (and b!40953 res!24367) b!40956))

(assert (= (and b!40953 res!24366) b!40957))

(assert (= (and b!40957 c!5086) b!40954))

(assert (= (and b!40957 (not c!5086)) b!40955))

(assert (= (or b!40954 b!40955) bm!3210))

(assert (=> b!40953 m!33783))

(assert (=> b!40953 m!33783))

(assert (=> b!40953 m!33785))

(assert (=> b!40956 m!33783))

(assert (=> b!40956 m!33783))

(declare-fun m!33885 () Bool)

(assert (=> b!40956 m!33885))

(assert (=> b!40957 m!33783))

(assert (=> b!40957 m!33783))

(assert (=> b!40957 m!33785))

(assert (=> bm!3210 m!33783))

(declare-fun m!33887 () Bool)

(assert (=> bm!3210 m!33887))

(assert (=> bm!3124 d!7205))

(assert (=> b!40523 d!7181))

(assert (=> d!7081 d!7021))

(declare-fun d!7207 () Bool)

(assert (=> d!7207 (= (content!33 Nil!1066) (as set.empty (Set (_ BitVec 64))))))

(assert (=> d!7143 d!7207))

(declare-fun d!7209 () Bool)

(declare-fun get!710 (Option!106) V!2097)

(assert (=> d!7209 (= (apply!57 lt!15796 #b1000000000000000000000000000000000000000000000000000000000000000) (get!710 (getValueByKey!100 (toList!550 lt!15796) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1721 () Bool)

(assert (= bs!1721 d!7209))

(assert (=> bs!1721 m!33779))

(assert (=> bs!1721 m!33779))

(declare-fun m!33897 () Bool)

(assert (=> bs!1721 m!33897))

(assert (=> b!40789 d!7209))

(declare-fun d!7215 () Bool)

(declare-fun e!25977 () Bool)

(assert (=> d!7215 e!25977))

(declare-fun res!24369 () Bool)

(assert (=> d!7215 (=> res!24369 e!25977)))

(declare-fun lt!15902 () Bool)

(assert (=> d!7215 (= res!24369 (not lt!15902))))

(declare-fun lt!15901 () Bool)

(assert (=> d!7215 (= lt!15902 lt!15901)))

(declare-fun lt!15903 () Unit!980)

(declare-fun e!25976 () Unit!980)

(assert (=> d!7215 (= lt!15903 e!25976)))

(declare-fun c!5090 () Bool)

(assert (=> d!7215 (= c!5090 lt!15901)))

(assert (=> d!7215 (= lt!15901 (containsKey!68 (toList!550 lt!15796) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(assert (=> d!7215 (= (contains!518 lt!15796 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)) lt!15902)))

(declare-fun b!40964 () Bool)

(declare-fun lt!15904 () Unit!980)

(assert (=> b!40964 (= e!25976 lt!15904)))

(assert (=> b!40964 (= lt!15904 (lemmaContainsKeyImpliesGetValueByKeyDefined!56 (toList!550 lt!15796) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(assert (=> b!40964 (isDefined!57 (getValueByKey!100 (toList!550 lt!15796) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!40965 () Bool)

(declare-fun Unit!993 () Unit!980)

(assert (=> b!40965 (= e!25976 Unit!993)))

(declare-fun b!40966 () Bool)

(assert (=> b!40966 (= e!25977 (isDefined!57 (getValueByKey!100 (toList!550 lt!15796) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))))

(assert (= (and d!7215 c!5090) b!40964))

(assert (= (and d!7215 (not c!5090)) b!40965))

(assert (= (and d!7215 (not res!24369)) b!40966))

(assert (=> d!7215 m!33413))

(declare-fun m!33899 () Bool)

(assert (=> d!7215 m!33899))

(assert (=> b!40964 m!33413))

(declare-fun m!33901 () Bool)

(assert (=> b!40964 m!33901))

(assert (=> b!40964 m!33413))

(declare-fun m!33903 () Bool)

(assert (=> b!40964 m!33903))

(assert (=> b!40964 m!33903))

(declare-fun m!33905 () Bool)

(assert (=> b!40964 m!33905))

(assert (=> b!40966 m!33413))

(assert (=> b!40966 m!33903))

(assert (=> b!40966 m!33903))

(assert (=> b!40966 m!33905))

(assert (=> b!40771 d!7215))

(declare-fun d!7217 () Bool)

(declare-fun e!25978 () Bool)

(assert (=> d!7217 e!25978))

(declare-fun res!24371 () Bool)

(assert (=> d!7217 (=> (not res!24371) (not e!25978))))

(declare-fun lt!15905 () ListLongMap!1069)

(assert (=> d!7217 (= res!24371 (contains!518 lt!15905 (_1!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453)))))))

(declare-fun lt!15908 () List!1068)

(assert (=> d!7217 (= lt!15905 (ListLongMap!1070 lt!15908))))

(declare-fun lt!15906 () Unit!980)

(declare-fun lt!15907 () Unit!980)

(assert (=> d!7217 (= lt!15906 lt!15907)))

(assert (=> d!7217 (= (getValueByKey!100 lt!15908 (_1!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453)))))))

(assert (=> d!7217 (= lt!15907 (lemmaContainsTupThenGetReturnValue!26 lt!15908 (_1!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453)))))))

(assert (=> d!7217 (= lt!15908 (insertStrictlySorted!23 (toList!550 lt!15786) (_1!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453)))))))

(assert (=> d!7217 (= (+!65 lt!15786 (tuple2!1489 lt!15792 (minValue!1721 lt!15453))) lt!15905)))

(declare-fun b!40967 () Bool)

(declare-fun res!24370 () Bool)

(assert (=> b!40967 (=> (not res!24370) (not e!25978))))

(assert (=> b!40967 (= res!24370 (= (getValueByKey!100 (toList!550 lt!15905) (_1!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15792 (minValue!1721 lt!15453))))))))

(declare-fun b!40968 () Bool)

(assert (=> b!40968 (= e!25978 (contains!519 (toList!550 lt!15905) (tuple2!1489 lt!15792 (minValue!1721 lt!15453))))))

(assert (= (and d!7217 res!24371) b!40967))

(assert (= (and b!40967 res!24370) b!40968))

(declare-fun m!33907 () Bool)

(assert (=> d!7217 m!33907))

(declare-fun m!33909 () Bool)

(assert (=> d!7217 m!33909))

(declare-fun m!33911 () Bool)

(assert (=> d!7217 m!33911))

(declare-fun m!33913 () Bool)

(assert (=> d!7217 m!33913))

(declare-fun m!33915 () Bool)

(assert (=> b!40967 m!33915))

(declare-fun m!33917 () Bool)

(assert (=> b!40968 m!33917))

(assert (=> b!40788 d!7217))

(declare-fun d!7223 () Bool)

(assert (=> d!7223 (= (apply!57 lt!15805 lt!15804) (get!710 (getValueByKey!100 (toList!550 lt!15805) lt!15804)))))

(declare-fun bs!1722 () Bool)

(assert (= bs!1722 d!7223))

(declare-fun m!33919 () Bool)

(assert (=> bs!1722 m!33919))

(assert (=> bs!1722 m!33919))

(declare-fun m!33921 () Bool)

(assert (=> bs!1722 m!33921))

(assert (=> b!40788 d!7223))

(declare-fun d!7225 () Bool)

(declare-fun e!25979 () Bool)

(assert (=> d!7225 e!25979))

(declare-fun res!24373 () Bool)

(assert (=> d!7225 (=> (not res!24373) (not e!25979))))

(declare-fun lt!15909 () ListLongMap!1069)

(assert (=> d!7225 (= res!24373 (contains!518 lt!15909 (_1!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453)))))))

(declare-fun lt!15912 () List!1068)

(assert (=> d!7225 (= lt!15909 (ListLongMap!1070 lt!15912))))

(declare-fun lt!15910 () Unit!980)

(declare-fun lt!15911 () Unit!980)

(assert (=> d!7225 (= lt!15910 lt!15911)))

(assert (=> d!7225 (= (getValueByKey!100 lt!15912 (_1!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453)))))))

(assert (=> d!7225 (= lt!15911 (lemmaContainsTupThenGetReturnValue!26 lt!15912 (_1!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453)))))))

(assert (=> d!7225 (= lt!15912 (insertStrictlySorted!23 (toList!550 lt!15806) (_1!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453)))))))

(assert (=> d!7225 (= (+!65 lt!15806 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))) lt!15909)))

(declare-fun b!40969 () Bool)

(declare-fun res!24372 () Bool)

(assert (=> b!40969 (=> (not res!24372) (not e!25979))))

(assert (=> b!40969 (= res!24372 (= (getValueByKey!100 (toList!550 lt!15909) (_1!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))))))))

(declare-fun b!40970 () Bool)

(assert (=> b!40970 (= e!25979 (contains!519 (toList!550 lt!15909) (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))))))

(assert (= (and d!7225 res!24373) b!40969))

(assert (= (and b!40969 res!24372) b!40970))

(declare-fun m!33923 () Bool)

(assert (=> d!7225 m!33923))

(declare-fun m!33925 () Bool)

(assert (=> d!7225 m!33925))

(declare-fun m!33927 () Bool)

(assert (=> d!7225 m!33927))

(declare-fun m!33929 () Bool)

(assert (=> d!7225 m!33929))

(declare-fun m!33931 () Bool)

(assert (=> b!40969 m!33931))

(declare-fun m!33933 () Bool)

(assert (=> b!40970 m!33933))

(assert (=> b!40788 d!7225))

(declare-fun d!7227 () Bool)

(assert (=> d!7227 (contains!518 (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))) lt!15788)))

(declare-fun lt!15915 () Unit!980)

(declare-fun choose!253 (ListLongMap!1069 (_ BitVec 64) V!2097 (_ BitVec 64)) Unit!980)

(assert (=> d!7227 (= lt!15915 (choose!253 lt!15803 lt!15800 (zeroValue!1721 lt!15453) lt!15788))))

(assert (=> d!7227 (contains!518 lt!15803 lt!15788)))

(assert (=> d!7227 (= (addStillContains!33 lt!15803 lt!15800 (zeroValue!1721 lt!15453) lt!15788) lt!15915)))

(declare-fun bs!1725 () Bool)

(assert (= bs!1725 d!7227))

(assert (=> bs!1725 m!33681))

(assert (=> bs!1725 m!33681))

(assert (=> bs!1725 m!33703))

(declare-fun m!33943 () Bool)

(assert (=> bs!1725 m!33943))

(declare-fun m!33945 () Bool)

(assert (=> bs!1725 m!33945))

(assert (=> b!40788 d!7227))

(declare-fun d!7233 () Bool)

(assert (=> d!7233 (= (apply!57 (+!65 lt!15805 (tuple2!1489 lt!15790 (minValue!1721 lt!15453))) lt!15804) (get!710 (getValueByKey!100 (toList!550 (+!65 lt!15805 (tuple2!1489 lt!15790 (minValue!1721 lt!15453)))) lt!15804)))))

(declare-fun bs!1726 () Bool)

(assert (= bs!1726 d!7233))

(declare-fun m!33947 () Bool)

(assert (=> bs!1726 m!33947))

(assert (=> bs!1726 m!33947))

(declare-fun m!33949 () Bool)

(assert (=> bs!1726 m!33949))

(assert (=> b!40788 d!7233))

(declare-fun d!7235 () Bool)

(assert (=> d!7235 (= (apply!57 (+!65 lt!15806 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))) lt!15789) (apply!57 lt!15806 lt!15789))))

(declare-fun lt!15930 () Unit!980)

(declare-fun choose!254 (ListLongMap!1069 (_ BitVec 64) V!2097 (_ BitVec 64)) Unit!980)

(assert (=> d!7235 (= lt!15930 (choose!254 lt!15806 lt!15795 (zeroValue!1721 lt!15453) lt!15789))))

(declare-fun e!25988 () Bool)

(assert (=> d!7235 e!25988))

(declare-fun res!24379 () Bool)

(assert (=> d!7235 (=> (not res!24379) (not e!25988))))

(assert (=> d!7235 (= res!24379 (contains!518 lt!15806 lt!15789))))

(assert (=> d!7235 (= (addApplyDifferent!33 lt!15806 lt!15795 (zeroValue!1721 lt!15453) lt!15789) lt!15930)))

(declare-fun b!40984 () Bool)

(assert (=> b!40984 (= e!25988 (not (= lt!15789 lt!15795)))))

(assert (= (and d!7235 res!24379) b!40984))

(declare-fun m!33959 () Bool)

(assert (=> d!7235 m!33959))

(assert (=> d!7235 m!33695))

(assert (=> d!7235 m!33697))

(assert (=> d!7235 m!33695))

(assert (=> d!7235 m!33691))

(declare-fun m!33961 () Bool)

(assert (=> d!7235 m!33961))

(assert (=> b!40788 d!7235))

(declare-fun d!7239 () Bool)

(assert (=> d!7239 (= (apply!57 (+!65 lt!15786 (tuple2!1489 lt!15792 (minValue!1721 lt!15453))) lt!15797) (get!710 (getValueByKey!100 (toList!550 (+!65 lt!15786 (tuple2!1489 lt!15792 (minValue!1721 lt!15453)))) lt!15797)))))

(declare-fun bs!1727 () Bool)

(assert (= bs!1727 d!7239))

(declare-fun m!33963 () Bool)

(assert (=> bs!1727 m!33963))

(assert (=> bs!1727 m!33963))

(declare-fun m!33965 () Bool)

(assert (=> bs!1727 m!33965))

(assert (=> b!40788 d!7239))

(declare-fun d!7241 () Bool)

(declare-fun e!25993 () Bool)

(assert (=> d!7241 e!25993))

(declare-fun res!24381 () Bool)

(assert (=> d!7241 (=> (not res!24381) (not e!25993))))

(declare-fun lt!15935 () ListLongMap!1069)

(assert (=> d!7241 (= res!24381 (contains!518 lt!15935 (_1!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453)))))))

(declare-fun lt!15938 () List!1068)

(assert (=> d!7241 (= lt!15935 (ListLongMap!1070 lt!15938))))

(declare-fun lt!15936 () Unit!980)

(declare-fun lt!15937 () Unit!980)

(assert (=> d!7241 (= lt!15936 lt!15937)))

(assert (=> d!7241 (= (getValueByKey!100 lt!15938 (_1!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453)))))))

(assert (=> d!7241 (= lt!15937 (lemmaContainsTupThenGetReturnValue!26 lt!15938 (_1!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453)))))))

(assert (=> d!7241 (= lt!15938 (insertStrictlySorted!23 (toList!550 lt!15805) (_1!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453)))))))

(assert (=> d!7241 (= (+!65 lt!15805 (tuple2!1489 lt!15790 (minValue!1721 lt!15453))) lt!15935)))

(declare-fun b!40993 () Bool)

(declare-fun res!24380 () Bool)

(assert (=> b!40993 (=> (not res!24380) (not e!25993))))

(assert (=> b!40993 (= res!24380 (= (getValueByKey!100 (toList!550 lt!15935) (_1!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15790 (minValue!1721 lt!15453))))))))

(declare-fun b!40994 () Bool)

(assert (=> b!40994 (= e!25993 (contains!519 (toList!550 lt!15935) (tuple2!1489 lt!15790 (minValue!1721 lt!15453))))))

(assert (= (and d!7241 res!24381) b!40993))

(assert (= (and b!40993 res!24380) b!40994))

(declare-fun m!33967 () Bool)

(assert (=> d!7241 m!33967))

(declare-fun m!33969 () Bool)

(assert (=> d!7241 m!33969))

(declare-fun m!33971 () Bool)

(assert (=> d!7241 m!33971))

(declare-fun m!33973 () Bool)

(assert (=> d!7241 m!33973))

(declare-fun m!33975 () Bool)

(assert (=> b!40993 m!33975))

(declare-fun m!33977 () Bool)

(assert (=> b!40994 m!33977))

(assert (=> b!40788 d!7241))

(declare-fun d!7243 () Bool)

(assert (=> d!7243 (= (apply!57 (+!65 lt!15786 (tuple2!1489 lt!15792 (minValue!1721 lt!15453))) lt!15797) (apply!57 lt!15786 lt!15797))))

(declare-fun lt!15939 () Unit!980)

(assert (=> d!7243 (= lt!15939 (choose!254 lt!15786 lt!15792 (minValue!1721 lt!15453) lt!15797))))

(declare-fun e!25998 () Bool)

(assert (=> d!7243 e!25998))

(declare-fun res!24384 () Bool)

(assert (=> d!7243 (=> (not res!24384) (not e!25998))))

(assert (=> d!7243 (= res!24384 (contains!518 lt!15786 lt!15797))))

(assert (=> d!7243 (= (addApplyDifferent!33 lt!15786 lt!15792 (minValue!1721 lt!15453) lt!15797) lt!15939)))

(declare-fun b!41001 () Bool)

(assert (=> b!41001 (= e!25998 (not (= lt!15797 lt!15792)))))

(assert (= (and d!7243 res!24384) b!41001))

(declare-fun m!33979 () Bool)

(assert (=> d!7243 m!33979))

(assert (=> d!7243 m!33679))

(assert (=> d!7243 m!33699))

(assert (=> d!7243 m!33679))

(assert (=> d!7243 m!33693))

(declare-fun m!33981 () Bool)

(assert (=> d!7243 m!33981))

(assert (=> b!40788 d!7243))

(declare-fun d!7245 () Bool)

(assert (=> d!7245 (= (apply!57 (+!65 lt!15805 (tuple2!1489 lt!15790 (minValue!1721 lt!15453))) lt!15804) (apply!57 lt!15805 lt!15804))))

(declare-fun lt!15940 () Unit!980)

(assert (=> d!7245 (= lt!15940 (choose!254 lt!15805 lt!15790 (minValue!1721 lt!15453) lt!15804))))

(declare-fun e!26001 () Bool)

(assert (=> d!7245 e!26001))

(declare-fun res!24389 () Bool)

(assert (=> d!7245 (=> (not res!24389) (not e!26001))))

(assert (=> d!7245 (= res!24389 (contains!518 lt!15805 lt!15804))))

(assert (=> d!7245 (= (addApplyDifferent!33 lt!15805 lt!15790 (minValue!1721 lt!15453) lt!15804) lt!15940)))

(declare-fun b!41006 () Bool)

(assert (=> b!41006 (= e!26001 (not (= lt!15804 lt!15790)))))

(assert (= (and d!7245 res!24389) b!41006))

(declare-fun m!33983 () Bool)

(assert (=> d!7245 m!33983))

(assert (=> d!7245 m!33687))

(assert (=> d!7245 m!33689))

(assert (=> d!7245 m!33687))

(assert (=> d!7245 m!33707))

(declare-fun m!33985 () Bool)

(assert (=> d!7245 m!33985))

(assert (=> b!40788 d!7245))

(declare-fun d!7247 () Bool)

(declare-fun e!26002 () Bool)

(assert (=> d!7247 e!26002))

(declare-fun res!24391 () Bool)

(assert (=> d!7247 (=> (not res!24391) (not e!26002))))

(declare-fun lt!15941 () ListLongMap!1069)

(assert (=> d!7247 (= res!24391 (contains!518 lt!15941 (_1!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))))))

(declare-fun lt!15944 () List!1068)

(assert (=> d!7247 (= lt!15941 (ListLongMap!1070 lt!15944))))

(declare-fun lt!15942 () Unit!980)

(declare-fun lt!15943 () Unit!980)

(assert (=> d!7247 (= lt!15942 lt!15943)))

(assert (=> d!7247 (= (getValueByKey!100 lt!15944 (_1!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))))))

(assert (=> d!7247 (= lt!15943 (lemmaContainsTupThenGetReturnValue!26 lt!15944 (_1!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))))))

(assert (=> d!7247 (= lt!15944 (insertStrictlySorted!23 (toList!550 lt!15803) (_1!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))) (_2!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))))))

(assert (=> d!7247 (= (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))) lt!15941)))

(declare-fun b!41007 () Bool)

(declare-fun res!24390 () Bool)

(assert (=> b!41007 (=> (not res!24390) (not e!26002))))

(assert (=> b!41007 (= res!24390 (= (getValueByKey!100 (toList!550 lt!15941) (_1!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))) (Some!105 (_2!754 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))))))))

(declare-fun b!41008 () Bool)

(assert (=> b!41008 (= e!26002 (contains!519 (toList!550 lt!15941) (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))))))

(assert (= (and d!7247 res!24391) b!41007))

(assert (= (and b!41007 res!24390) b!41008))

(declare-fun m!33987 () Bool)

(assert (=> d!7247 m!33987))

(declare-fun m!33989 () Bool)

(assert (=> d!7247 m!33989))

(declare-fun m!33991 () Bool)

(assert (=> d!7247 m!33991))

(declare-fun m!33993 () Bool)

(assert (=> d!7247 m!33993))

(declare-fun m!33995 () Bool)

(assert (=> b!41007 m!33995))

(declare-fun m!33997 () Bool)

(assert (=> b!41008 m!33997))

(assert (=> b!40788 d!7247))

(assert (=> b!40788 d!7195))

(declare-fun d!7249 () Bool)

(assert (=> d!7249 (= (apply!57 (+!65 lt!15806 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453))) lt!15789) (get!710 (getValueByKey!100 (toList!550 (+!65 lt!15806 (tuple2!1489 lt!15795 (zeroValue!1721 lt!15453)))) lt!15789)))))

(declare-fun bs!1728 () Bool)

(assert (= bs!1728 d!7249))

(declare-fun m!33999 () Bool)

(assert (=> bs!1728 m!33999))

(assert (=> bs!1728 m!33999))

(declare-fun m!34001 () Bool)

(assert (=> bs!1728 m!34001))

(assert (=> b!40788 d!7249))

(declare-fun d!7251 () Bool)

(assert (=> d!7251 (= (apply!57 lt!15786 lt!15797) (get!710 (getValueByKey!100 (toList!550 lt!15786) lt!15797)))))

(declare-fun bs!1729 () Bool)

(assert (= bs!1729 d!7251))

(declare-fun m!34003 () Bool)

(assert (=> bs!1729 m!34003))

(assert (=> bs!1729 m!34003))

(declare-fun m!34005 () Bool)

(assert (=> bs!1729 m!34005))

(assert (=> b!40788 d!7251))

(declare-fun d!7253 () Bool)

(declare-fun e!26004 () Bool)

(assert (=> d!7253 e!26004))

(declare-fun res!24392 () Bool)

(assert (=> d!7253 (=> res!24392 e!26004)))

(declare-fun lt!15954 () Bool)

(assert (=> d!7253 (= res!24392 (not lt!15954))))

(declare-fun lt!15951 () Bool)

(assert (=> d!7253 (= lt!15954 lt!15951)))

(declare-fun lt!15955 () Unit!980)

(declare-fun e!26003 () Unit!980)

(assert (=> d!7253 (= lt!15955 e!26003)))

(declare-fun c!5100 () Bool)

(assert (=> d!7253 (= c!5100 lt!15951)))

(assert (=> d!7253 (= lt!15951 (containsKey!68 (toList!550 (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))) lt!15788))))

(assert (=> d!7253 (= (contains!518 (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453))) lt!15788) lt!15954)))

(declare-fun b!41009 () Bool)

(declare-fun lt!15956 () Unit!980)

(assert (=> b!41009 (= e!26003 lt!15956)))

(assert (=> b!41009 (= lt!15956 (lemmaContainsKeyImpliesGetValueByKeyDefined!56 (toList!550 (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))) lt!15788))))

(assert (=> b!41009 (isDefined!57 (getValueByKey!100 (toList!550 (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))) lt!15788))))

(declare-fun b!41010 () Bool)

(declare-fun Unit!994 () Unit!980)

(assert (=> b!41010 (= e!26003 Unit!994)))

(declare-fun b!41011 () Bool)

(assert (=> b!41011 (= e!26004 (isDefined!57 (getValueByKey!100 (toList!550 (+!65 lt!15803 (tuple2!1489 lt!15800 (zeroValue!1721 lt!15453)))) lt!15788)))))

(assert (= (and d!7253 c!5100) b!41009))

(assert (= (and d!7253 (not c!5100)) b!41010))

(assert (= (and d!7253 (not res!24392)) b!41011))

(declare-fun m!34007 () Bool)

(assert (=> d!7253 m!34007))

(declare-fun m!34009 () Bool)

(assert (=> b!41009 m!34009))

(declare-fun m!34011 () Bool)

(assert (=> b!41009 m!34011))

(assert (=> b!41009 m!34011))

(declare-fun m!34013 () Bool)

(assert (=> b!41009 m!34013))

(assert (=> b!41011 m!34011))

(assert (=> b!41011 m!34011))

(assert (=> b!41011 m!34013))

(assert (=> b!40788 d!7253))

(declare-fun d!7255 () Bool)

(assert (=> d!7255 (= (apply!57 lt!15806 lt!15789) (get!710 (getValueByKey!100 (toList!550 lt!15806) lt!15789)))))

(declare-fun bs!1730 () Bool)

(assert (= bs!1730 d!7255))

(declare-fun m!34015 () Bool)

(assert (=> bs!1730 m!34015))

(assert (=> bs!1730 m!34015))

(declare-fun m!34017 () Bool)

(assert (=> bs!1730 m!34017))

(assert (=> b!40788 d!7255))

(declare-fun b!41052 () Bool)

(declare-fun e!26030 () SeekEntryResult!185)

(declare-fun e!26029 () SeekEntryResult!185)

(assert (=> b!41052 (= e!26030 e!26029)))

(declare-fun c!5112 () Bool)

(declare-fun lt!15984 () (_ BitVec 64))

(assert (=> b!41052 (= c!5112 (= lt!15984 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun d!7257 () Bool)

(declare-fun lt!15985 () SeekEntryResult!185)

(assert (=> d!7257 (and (or (is-Undefined!185 lt!15985) (not (is-Found!185 lt!15985)) (and (bvsge (index!2863 lt!15985) #b00000000000000000000000000000000) (bvslt (index!2863 lt!15985) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15985) (is-Found!185 lt!15985) (not (is-MissingVacant!185 lt!15985)) (not (= (index!2865 lt!15985) (index!2864 lt!15588))) (and (bvsge (index!2865 lt!15985) #b00000000000000000000000000000000) (bvslt (index!2865 lt!15985) (size!1374 lt!15455)))) (or (is-Undefined!185 lt!15985) (ite (is-Found!185 lt!15985) (= (select (arr!1237 lt!15455) (index!2863 lt!15985)) (select (arr!1237 lt!15455) #b00000000000000000000000000000000)) (and (is-MissingVacant!185 lt!15985) (= (index!2865 lt!15985) (index!2864 lt!15588)) (= (select (arr!1237 lt!15455) (index!2865 lt!15985)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!7257 (= lt!15985 e!26030)))

(declare-fun c!5113 () Bool)

(assert (=> d!7257 (= c!5113 (bvsge (x!7732 lt!15588) #b01111111111111111111111111111110))))

(assert (=> d!7257 (= lt!15984 (select (arr!1237 lt!15455) (index!2864 lt!15588)))))

(assert (=> d!7257 (validMask!0 mask!853)))

(assert (=> d!7257 (= (seekKeyOrZeroReturnVacant!0 (x!7732 lt!15588) (index!2864 lt!15588) (index!2864 lt!15588) (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853) lt!15985)))

(declare-fun b!41053 () Bool)

(declare-fun c!5111 () Bool)

(assert (=> b!41053 (= c!5111 (= lt!15984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!26028 () SeekEntryResult!185)

(assert (=> b!41053 (= e!26029 e!26028)))

(declare-fun b!41054 () Bool)

(assert (=> b!41054 (= e!26030 Undefined!185)))

(declare-fun b!41055 () Bool)

(assert (=> b!41055 (= e!26029 (Found!185 (index!2864 lt!15588)))))

(declare-fun b!41056 () Bool)

(assert (=> b!41056 (= e!26028 (MissingVacant!185 (index!2864 lt!15588)))))

(declare-fun b!41057 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41057 (= e!26028 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7732 lt!15588) #b00000000000000000000000000000001) (nextIndex!0 (index!2864 lt!15588) (x!7732 lt!15588) mask!853) (index!2864 lt!15588) (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853))))

(assert (= (and d!7257 c!5113) b!41054))

(assert (= (and d!7257 (not c!5113)) b!41052))

(assert (= (and b!41052 c!5112) b!41055))

(assert (= (and b!41052 (not c!5112)) b!41053))

(assert (= (and b!41053 c!5111) b!41056))

(assert (= (and b!41053 (not c!5111)) b!41057))

(declare-fun m!34059 () Bool)

(assert (=> d!7257 m!34059))

(declare-fun m!34061 () Bool)

(assert (=> d!7257 m!34061))

(assert (=> d!7257 m!33493))

(assert (=> d!7257 m!33239))

(declare-fun m!34063 () Bool)

(assert (=> b!41057 m!34063))

(assert (=> b!41057 m!34063))

(assert (=> b!41057 m!33343))

(declare-fun m!34065 () Bool)

(assert (=> b!41057 m!34065))

(assert (=> b!40557 d!7257))

(declare-fun b!41058 () Bool)

(declare-fun e!26031 () (_ BitVec 32))

(assert (=> b!41058 (= e!26031 #b00000000000000000000000000000000)))

(declare-fun d!7277 () Bool)

(declare-fun lt!15986 () (_ BitVec 32))

(assert (=> d!7277 (and (bvsge lt!15986 #b00000000000000000000000000000000) (bvsle lt!15986 (bvsub (size!1374 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!7277 (= lt!15986 e!26031)))

(declare-fun c!5115 () Bool)

(assert (=> d!7277 (= c!5115 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7277 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1374 lt!15455)))))

(assert (=> d!7277 (= (arrayCountValidKeys!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15986)))

(declare-fun bm!3212 () Bool)

(declare-fun call!3215 () (_ BitVec 32))

(assert (=> bm!3212 (= call!3215 (arrayCountValidKeys!0 lt!15455 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!41059 () Bool)

(declare-fun e!26032 () (_ BitVec 32))

(assert (=> b!41059 (= e!26031 e!26032)))

(declare-fun c!5114 () Bool)

(assert (=> b!41059 (= c!5114 (validKeyInArray!0 (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!41060 () Bool)

(assert (=> b!41060 (= e!26032 call!3215)))

(declare-fun b!41061 () Bool)

(assert (=> b!41061 (= e!26032 (bvadd #b00000000000000000000000000000001 call!3215))))

(assert (= (and d!7277 c!5115) b!41058))

(assert (= (and d!7277 (not c!5115)) b!41059))

(assert (= (and b!41059 c!5114) b!41061))

(assert (= (and b!41059 (not c!5114)) b!41060))

(assert (= (or b!41061 b!41060) bm!3212))

(declare-fun m!34067 () Bool)

(assert (=> bm!3212 m!34067))

(assert (=> b!41059 m!33783))

(assert (=> b!41059 m!33783))

(assert (=> b!41059 m!33785))

(assert (=> bm!3129 d!7277))

(declare-fun d!7279 () Bool)

(declare-fun e!26034 () Bool)

(assert (=> d!7279 e!26034))

(declare-fun res!24416 () Bool)

(assert (=> d!7279 (=> (not res!24416) (not e!26034))))

(declare-fun lt!15991 () ListLongMap!1069)

(assert (=> d!7279 (= res!24416 (contains!518 lt!15991 (_1!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))))))

(declare-fun lt!15994 () List!1068)

(assert (=> d!7279 (= lt!15991 (ListLongMap!1070 lt!15994))))

(declare-fun lt!15992 () Unit!980)

(declare-fun lt!15993 () Unit!980)

(assert (=> d!7279 (= lt!15992 lt!15993)))

(assert (=> d!7279 (= (getValueByKey!100 lt!15994 (_1!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))) (Some!105 (_2!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))))))

(assert (=> d!7279 (= lt!15993 (lemmaContainsTupThenGetReturnValue!26 lt!15994 (_1!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))) (_2!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))))))

(assert (=> d!7279 (= lt!15994 (insertStrictlySorted!23 (toList!550 (ite c!5030 call!3199 (ite c!5025 call!3197 call!3196))) (_1!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))) (_2!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))))))

(assert (=> d!7279 (= (+!65 (ite c!5030 call!3199 (ite c!5025 call!3197 call!3196)) (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))) lt!15991)))

(declare-fun b!41064 () Bool)

(declare-fun res!24415 () Bool)

(assert (=> b!41064 (=> (not res!24415) (not e!26034))))

(assert (=> b!41064 (= res!24415 (= (getValueByKey!100 (toList!550 lt!15991) (_1!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453))))) (Some!105 (_2!754 (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))))))))

(declare-fun b!41065 () Bool)

(assert (=> b!41065 (= e!26034 (contains!519 (toList!550 lt!15991) (ite (or c!5030 c!5025) (tuple2!1489 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1721 lt!15453)) (tuple2!1489 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1721 lt!15453)))))))

(assert (= (and d!7279 res!24416) b!41064))

(assert (= (and b!41064 res!24415) b!41065))

(declare-fun m!34081 () Bool)

(assert (=> d!7279 m!34081))

(declare-fun m!34083 () Bool)

(assert (=> d!7279 m!34083))

(declare-fun m!34085 () Bool)

(assert (=> d!7279 m!34085))

(declare-fun m!34087 () Bool)

(assert (=> d!7279 m!34087))

(declare-fun m!34089 () Bool)

(assert (=> b!41064 m!34089))

(declare-fun m!34091 () Bool)

(assert (=> b!41065 m!34091))

(assert (=> bm!3194 d!7279))

(declare-fun d!7283 () Bool)

(declare-fun lt!15995 () Bool)

(assert (=> d!7283 (= lt!15995 (set.member (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (content!33 (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066))))))

(declare-fun e!26036 () Bool)

(assert (=> d!7283 (= lt!15995 e!26036)))

(declare-fun res!24418 () Bool)

(assert (=> d!7283 (=> (not res!24418) (not e!26036))))

(assert (=> d!7283 (= res!24418 (is-Cons!1065 (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)))))

(assert (=> d!7283 (= (contains!514 (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!15995)))

(declare-fun b!41066 () Bool)

(declare-fun e!26035 () Bool)

(assert (=> b!41066 (= e!26036 e!26035)))

(declare-fun res!24417 () Bool)

(assert (=> b!41066 (=> res!24417 e!26035)))

(assert (=> b!41066 (= res!24417 (= (h!1639 (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41067 () Bool)

(assert (=> b!41067 (= e!26035 (contains!514 (t!3930 (ite c!4923 (Cons!1065 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (select (arr!1237 lt!15455) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!7283 res!24418) b!41066))

(assert (= (and b!41066 (not res!24417)) b!41067))

(declare-fun m!34093 () Bool)

(assert (=> d!7283 m!34093))

(assert (=> d!7283 m!33429))

(declare-fun m!34095 () Bool)

(assert (=> d!7283 m!34095))

(assert (=> b!41067 m!33429))

(declare-fun m!34097 () Bool)

(assert (=> b!41067 m!34097))

(assert (=> b!40481 d!7283))

(declare-fun d!7285 () Bool)

(declare-fun lt!15996 () Bool)

(assert (=> d!7285 (= lt!15996 (set.member (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) (content!33 Nil!1066)))))

(declare-fun e!26038 () Bool)

(assert (=> d!7285 (= lt!15996 e!26038)))

(declare-fun res!24420 () Bool)

(assert (=> d!7285 (=> (not res!24420) (not e!26038))))

(assert (=> d!7285 (= res!24420 (is-Cons!1065 Nil!1066))))

(assert (=> d!7285 (= (contains!514 Nil!1066 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)) lt!15996)))

(declare-fun b!41068 () Bool)

(declare-fun e!26037 () Bool)

(assert (=> b!41068 (= e!26038 e!26037)))

(declare-fun res!24419 () Bool)

(assert (=> b!41068 (=> res!24419 e!26037)))

(assert (=> b!41068 (= res!24419 (= (h!1639 Nil!1066) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun b!41069 () Bool)

(assert (=> b!41069 (= e!26037 (contains!514 (t!3930 Nil!1066) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)))))

(assert (= (and d!7285 res!24420) b!41068))

(assert (= (and b!41068 (not res!24419)) b!41069))

(assert (=> d!7285 m!33725))

(assert (=> d!7285 m!33413))

(declare-fun m!34099 () Bool)

(assert (=> d!7285 m!34099))

(assert (=> b!41069 m!33413))

(declare-fun m!34101 () Bool)

(assert (=> b!41069 m!34101))

(assert (=> b!40500 d!7285))

(assert (=> b!40781 d!7163))

(assert (=> b!40501 d!7163))

(assert (=> b!40478 d!7175))

(declare-fun b!41132 () Bool)

(declare-fun e!26078 () Bool)

(declare-fun e!26077 () Bool)

(assert (=> b!41132 (= e!26078 e!26077)))

(declare-fun res!24448 () Bool)

(declare-fun lt!16046 () SeekEntryResult!185)

(assert (=> b!41132 (= res!24448 (and (is-Intermediate!185 lt!16046) (not (undefined!997 lt!16046)) (bvslt (x!7732 lt!16046) #b01111111111111111111111111111110) (bvsge (x!7732 lt!16046) #b00000000000000000000000000000000) (bvsge (x!7732 lt!16046) #b00000000000000000000000000000000)))))

(assert (=> b!41132 (=> (not res!24448) (not e!26077))))

(declare-fun b!41133 () Bool)

(declare-fun e!26076 () SeekEntryResult!185)

(assert (=> b!41133 (= e!26076 (Intermediate!185 false (toIndex!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!41134 () Bool)

(assert (=> b!41134 (= e!26078 (bvsge (x!7732 lt!16046) #b01111111111111111111111111111110))))

(declare-fun b!41135 () Bool)

(assert (=> b!41135 (and (bvsge (index!2864 lt!16046) #b00000000000000000000000000000000) (bvslt (index!2864 lt!16046) (size!1374 lt!15455)))))

(declare-fun res!24447 () Bool)

(assert (=> b!41135 (= res!24447 (= (select (arr!1237 lt!15455) (index!2864 lt!16046)) (select (arr!1237 lt!15455) #b00000000000000000000000000000000)))))

(declare-fun e!26079 () Bool)

(assert (=> b!41135 (=> res!24447 e!26079)))

(assert (=> b!41135 (= e!26077 e!26079)))

(declare-fun b!41136 () Bool)

(assert (=> b!41136 (= e!26076 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853))))

(declare-fun d!7287 () Bool)

(assert (=> d!7287 e!26078))

(declare-fun c!5133 () Bool)

(assert (=> d!7287 (= c!5133 (and (is-Intermediate!185 lt!16046) (undefined!997 lt!16046)))))

(declare-fun e!26075 () SeekEntryResult!185)

(assert (=> d!7287 (= lt!16046 e!26075)))

(declare-fun c!5134 () Bool)

(assert (=> d!7287 (= c!5134 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!16045 () (_ BitVec 64))

(assert (=> d!7287 (= lt!16045 (select (arr!1237 lt!15455) (toIndex!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!7287 (validMask!0 mask!853)))

(assert (=> d!7287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) mask!853) (select (arr!1237 lt!15455) #b00000000000000000000000000000000) lt!15455 mask!853) lt!16046)))

(declare-fun b!41137 () Bool)

(assert (=> b!41137 (and (bvsge (index!2864 lt!16046) #b00000000000000000000000000000000) (bvslt (index!2864 lt!16046) (size!1374 lt!15455)))))

(assert (=> b!41137 (= e!26079 (= (select (arr!1237 lt!15455) (index!2864 lt!16046)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41138 () Bool)

(assert (=> b!41138 (and (bvsge (index!2864 lt!16046) #b00000000000000000000000000000000) (bvslt (index!2864 lt!16046) (size!1374 lt!15455)))))

(declare-fun res!24449 () Bool)

(assert (=> b!41138 (= res!24449 (= (select (arr!1237 lt!15455) (index!2864 lt!16046)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!41138 (=> res!24449 e!26079)))

(declare-fun b!41139 () Bool)

(assert (=> b!41139 (= e!26075 (Intermediate!185 true (toIndex!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!41140 () Bool)

(assert (=> b!41140 (= e!26075 e!26076)))

(declare-fun c!5135 () Bool)

(assert (=> b!41140 (= c!5135 (or (= lt!16045 (select (arr!1237 lt!15455) #b00000000000000000000000000000000)) (= (bvadd lt!16045 lt!16045) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7287 c!5134) b!41139))

(assert (= (and d!7287 (not c!5134)) b!41140))

(assert (= (and b!41140 c!5135) b!41133))

(assert (= (and b!41140 (not c!5135)) b!41136))

(assert (= (and d!7287 c!5133) b!41134))

(assert (= (and d!7287 (not c!5133)) b!41132))

(assert (= (and b!41132 res!24448) b!41135))

(assert (= (and b!41135 (not res!24447)) b!41138))

(assert (= (and b!41138 (not res!24449)) b!41137))

(declare-fun m!34167 () Bool)

(assert (=> b!41135 m!34167))

(assert (=> b!41138 m!34167))

(assert (=> b!41136 m!33497))

(declare-fun m!34169 () Bool)

(assert (=> b!41136 m!34169))

(assert (=> b!41136 m!34169))

(assert (=> b!41136 m!33343))

(declare-fun m!34171 () Bool)

(assert (=> b!41136 m!34171))

(assert (=> b!41137 m!34167))

(assert (=> d!7287 m!33497))

(declare-fun m!34173 () Bool)

(assert (=> d!7287 m!34173))

(assert (=> d!7287 m!33239))

(assert (=> d!7111 d!7287))

(declare-fun d!7307 () Bool)

(declare-fun lt!16063 () (_ BitVec 32))

(declare-fun lt!16062 () (_ BitVec 32))

(assert (=> d!7307 (= lt!16063 (bvmul (bvxor lt!16062 (bvlshr lt!16062 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!7307 (= lt!16062 ((_ extract 31 0) (bvand (bvxor (select (arr!1237 lt!15455) #b00000000000000000000000000000000) (bvlshr (select (arr!1237 lt!15455) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!7307 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!24450 (let ((h!1645 ((_ extract 31 0) (bvand (bvxor (select (arr!1237 lt!15455) #b00000000000000000000000000000000) (bvlshr (select (arr!1237 lt!15455) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7756 (bvmul (bvxor h!1645 (bvlshr h!1645 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7756 (bvlshr x!7756 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!24450 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!24450 #b00000000000000000000000000000000))))))

(assert (=> d!7307 (= (toIndex!0 (select (arr!1237 lt!15455) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!16063 (bvlshr lt!16063 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!7111 d!7307))

(assert (=> d!7111 d!7003))

(declare-fun d!7313 () Bool)

(declare-fun res!24459 () Bool)

(declare-fun e!26089 () Bool)

(assert (=> d!7313 (=> res!24459 e!26089)))

(assert (=> d!7313 (= res!24459 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1374 (_keys!3292 lt!15453))))))

(assert (=> d!7313 (= (arrayNoDuplicates!0 (_keys!3292 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4951 (Cons!1065 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) e!26089)))

(declare-fun b!41155 () Bool)

(declare-fun e!26091 () Bool)

(assert (=> b!41155 (= e!26089 e!26091)))

(declare-fun res!24457 () Bool)

(assert (=> b!41155 (=> (not res!24457) (not e!26091))))

(declare-fun e!26088 () Bool)

(assert (=> b!41155 (= res!24457 (not e!26088))))

(declare-fun res!24458 () Bool)

(assert (=> b!41155 (=> (not res!24458) (not e!26088))))

(assert (=> b!41155 (= res!24458 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41156 () Bool)

(declare-fun e!26090 () Bool)

(declare-fun call!3219 () Bool)

(assert (=> b!41156 (= e!26090 call!3219)))

(declare-fun b!41157 () Bool)

(assert (=> b!41157 (= e!26090 call!3219)))

(declare-fun b!41158 () Bool)

(assert (=> b!41158 (= e!26088 (contains!514 (ite c!4951 (Cons!1065 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) Nil!1066) Nil!1066) (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41159 () Bool)

(assert (=> b!41159 (= e!26091 e!26090)))

(declare-fun c!5140 () Bool)

(assert (=> b!41159 (= c!5140 (validKeyInArray!0 (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3216 () Bool)

(assert (=> bm!3216 (= call!3219 (arrayNoDuplicates!0 (_keys!3292 lt!15453) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5140 (Cons!1065 (select (arr!1237 (_keys!3292 lt!15453)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4951 (Cons!1065 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) Nil!1066) Nil!1066)) (ite c!4951 (Cons!1065 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000) Nil!1066) Nil!1066))))))

(assert (= (and d!7313 (not res!24459)) b!41155))

(assert (= (and b!41155 res!24458) b!41158))

(assert (= (and b!41155 res!24457) b!41159))

(assert (= (and b!41159 c!5140) b!41156))

(assert (= (and b!41159 (not c!5140)) b!41157))

(assert (= (or b!41156 b!41157) bm!3216))

(assert (=> b!41155 m!33761))

(assert (=> b!41155 m!33761))

(assert (=> b!41155 m!33763))

(assert (=> b!41158 m!33761))

(assert (=> b!41158 m!33761))

(declare-fun m!34215 () Bool)

(assert (=> b!41158 m!34215))

(assert (=> b!41159 m!33761))

(assert (=> b!41159 m!33761))

(assert (=> b!41159 m!33763))

(assert (=> bm!3216 m!33761))

(declare-fun m!34219 () Bool)

(assert (=> bm!3216 m!34219))

(assert (=> bm!3128 d!7313))

(declare-fun d!7319 () Bool)

(assert (=> d!7319 (= (apply!57 lt!15796 #b0000000000000000000000000000000000000000000000000000000000000000) (get!710 (getValueByKey!100 (toList!550 lt!15796) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1738 () Bool)

(assert (= bs!1738 d!7319))

(assert (=> bs!1738 m!33799))

(assert (=> bs!1738 m!33799))

(declare-fun m!34223 () Bool)

(assert (=> bs!1738 m!34223))

(assert (=> b!40779 d!7319))

(declare-fun d!7323 () Bool)

(assert (=> d!7323 (= (apply!57 lt!15796 (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000)) (get!710 (getValueByKey!100 (toList!550 lt!15796) (select (arr!1237 (_keys!3292 lt!15453)) #b00000000000000000000000000000000))))))

(declare-fun bs!1740 () Bool)

(assert (= bs!1740 d!7323))

(assert (=> bs!1740 m!33413))

(assert (=> bs!1740 m!33903))

(assert (=> bs!1740 m!33903))

(declare-fun m!34229 () Bool)

(assert (=> bs!1740 m!34229))

(assert (=> b!40784 d!7323))

(declare-fun d!7327 () Bool)

(declare-fun c!5143 () Bool)

(assert (=> d!7327 (= c!5143 (is-ValueCellFull!629 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000)))))

(declare-fun e!26098 () V!2097)

(assert (=> d!7327 (= (get!704 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000) (dynLambda!190 (defaultEntry!1803 lt!15453) #b0000000000000000000000000000000000000000000000000000000000000000)) e!26098)))

(declare-fun b!41170 () Bool)

(declare-fun get!711 (ValueCell!629 V!2097) V!2097)

(assert (=> b!41170 (= e!26098 (get!711 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000) (dynLambda!190 (defaultEntry!1803 lt!15453) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!41171 () Bool)

(declare-fun get!712 (ValueCell!629 V!2097) V!2097)

(assert (=> b!41171 (= e!26098 (get!712 (select (arr!1238 (_values!1786 lt!15453)) #b00000000000000000000000000000000) (dynLambda!190 (defaultEntry!1803 lt!15453) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7327 c!5143) b!41170))

(assert (= (and d!7327 (not c!5143)) b!41171))

(assert (=> b!41170 m!33667))

(assert (=> b!41170 m!33665))

(declare-fun m!34267 () Bool)

(assert (=> b!41170 m!34267))

(assert (=> b!41171 m!33667))

(assert (=> b!41171 m!33665))

(declare-fun m!34269 () Bool)

(assert (=> b!41171 m!34269))

(assert (=> b!40784 d!7327))

(assert (=> d!7117 d!7051))

(declare-fun b_lambda!2103 () Bool)

(assert (= b_lambda!2093 (or (and start!5698 b_free!1363 (= defaultEntry!470 (defaultEntry!1803 lt!15453))) b_lambda!2103)))

(push 1)

(assert (not b!40969))

(assert (not d!7279))

(assert (not d!7215))

(assert (not d!7245))

(assert (not b!41158))

(assert (not b!41136))

(assert (not b!40890))

(assert (not d!7217))

(assert (not d!7255))

(assert (not b!40895))

(assert (not d!7187))

(assert (not b!41059))

(assert (not d!7225))

(assert (not b!41171))

(assert (not b!40870))

(assert (not b!40872))

(assert (not d!7251))

(assert (not d!7173))

(assert b_and!2387)

(assert (not bm!3212))

(assert (not b!40930))

(assert (not d!7167))

(assert (not b!41170))

(assert (not b!40868))

(assert (not b!40953))

(assert (not b!40933))

(assert (not b!40865))

(assert (not d!7209))

(assert (not b!41069))

(assert (not b!40851))

(assert (not d!7239))

(assert (not b!40967))

(assert (not b!40878))

(assert (not d!7323))

(assert (not b!41057))

(assert (not b_next!1363))

(assert (not b!41064))

(assert (not d!7241))

(assert (not b!40863))

(assert (not b!40968))

(assert (not b!40896))

(assert (not d!7235))

(assert (not d!7319))

(assert (not b!41009))

(assert (not b!40964))

(assert (not bm!3210))

(assert (not d!7233))

(assert (not d!7243))

(assert (not b!40940))

(assert (not d!7191))

(assert (not d!7249))

(assert (not b_lambda!2097))

(assert (not b!40937))

(assert (not b!41008))

(assert (not b!40880))

(assert (not b!40934))

(assert (not d!7227))

(assert (not b!40956))

(assert (not b!40970))

(assert (not d!7193))

(assert (not b_lambda!2095))

(assert (not b!40854))

(assert (not b!40966))

(assert (not bm!3209))

(assert (not b!41159))

(assert (not b!40866))

(assert (not bm!3206))

(assert (not d!7195))

(assert (not b!40939))

(assert (not d!7223))

(assert (not d!7247))

(assert (not d!7161))

(assert (not d!7253))

(assert (not b!40993))

(assert (not b!41011))

(assert (not b!40931))

(assert (not bm!3216))

(assert (not b!41007))

(assert (not d!7283))

(assert (not b!41155))

(assert (not b!40884))

(assert (not b!40861))

(assert (not b!41065))

(assert (not b_lambda!2083))

(assert (not d!7257))

(assert (not d!7285))

(assert (not d!7183))

(assert (not bm!3205))

(assert (not d!7169))

(assert (not b_lambda!2103))

(assert (not d!7287))

(assert (not b!40850))

(assert (not b!40957))

(assert tp_is_empty!1753)

(assert (not b!41067))

(assert (not bm!3204))

(assert (not b!40938))

(assert (not b!40994))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2387)

(assert (not b_next!1363))

(check-sat)

(pop 1)

