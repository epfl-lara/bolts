; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5370 () Bool)

(assert start!5370)

(declare-fun b_free!1353 () Bool)

(declare-fun b_next!1353 () Bool)

(assert (=> start!5370 (= b_free!1353 (not b_next!1353))))

(declare-fun tp!5717 () Bool)

(declare-fun b_and!2329 () Bool)

(assert (=> start!5370 (= tp!5717 b_and!2329)))

(declare-fun res!23275 () Bool)

(declare-fun e!24489 () Bool)

(assert (=> start!5370 (=> (not res!23275) (not e!24489))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5370 (= res!23275 (validMask!0 mask!853))))

(assert (=> start!5370 e!24489))

(assert (=> start!5370 true))

(assert (=> start!5370 tp!5717))

(declare-fun defaultEntry!470 () Int)

(declare-fun b!38555 () Bool)

(declare-datatypes ((V!2083 0))(
  ( (V!2084 (val!910 Int)) )
))
(declare-fun lt!14430 () V!2083)

(declare-datatypes ((array!2567 0))(
  ( (array!2568 (arr!1227 (Array (_ BitVec 32) (_ BitVec 64))) (size!1334 (_ BitVec 32))) )
))
(declare-fun lt!14432 () array!2567)

(declare-datatypes ((ValueCell!624 0))(
  ( (ValueCellFull!624 (v!1978 V!2083)) (EmptyCell!624) )
))
(declare-datatypes ((array!2569 0))(
  ( (array!2570 (arr!1228 (Array (_ BitVec 32) ValueCell!624)) (size!1335 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!228 0))(
  ( (LongMapFixedSize!229 (defaultEntry!1792 Int) (mask!5113 (_ BitVec 32)) (extraKeys!1683 (_ BitVec 32)) (zeroValue!1710 V!2083) (minValue!1710 V!2083) (_size!163 (_ BitVec 32)) (_keys!3245 array!2567) (_values!1775 array!2569) (_vacant!163 (_ BitVec 32))) )
))
(declare-fun valid!117 (LongMapFixedSize!228) Bool)

(assert (=> b!38555 (= e!24489 (not (valid!117 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-datatypes ((List!1060 0))(
  ( (Nil!1057) (Cons!1056 (h!1624 (_ BitVec 64)) (t!3905 List!1060)) )
))
(declare-fun arrayNoDuplicates!0 (array!2567 (_ BitVec 32) List!1060) Bool)

(assert (=> b!38555 (arrayNoDuplicates!0 lt!14432 #b00000000000000000000000000000000 Nil!1057)))

(declare-datatypes ((Unit!956 0))(
  ( (Unit!957) )
))
(declare-fun lt!14433 () Unit!956)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2567 (_ BitVec 32) (_ BitVec 32) List!1060) Unit!956)

(assert (=> b!38555 (= lt!14433 (lemmaArrayNoDuplicatesInAll0Array!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2567 (_ BitVec 32)) Bool)

(assert (=> b!38555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14432 mask!853)))

(declare-fun lt!14431 () Unit!956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2567 (_ BitVec 32) (_ BitVec 32)) Unit!956)

(assert (=> b!38555 (= lt!14431 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14432 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2567 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38555 (= (arrayCountValidKeys!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14434 () Unit!956)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2567 (_ BitVec 32) (_ BitVec 32)) Unit!956)

(assert (=> b!38555 (= lt!14434 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38555 (= lt!14432 (array!2568 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!185 (Int (_ BitVec 64)) V!2083)

(assert (=> b!38555 (= lt!14430 (dynLambda!185 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5370 res!23275) b!38555))

(declare-fun b_lambda!2031 () Bool)

(assert (=> (not b_lambda!2031) (not b!38555)))

(declare-fun t!3904 () Bool)

(declare-fun tb!831 () Bool)

(assert (=> (and start!5370 (= defaultEntry!470 defaultEntry!470) t!3904) tb!831))

(declare-fun result!1417 () Bool)

(declare-fun tp_is_empty!1743 () Bool)

(assert (=> tb!831 (= result!1417 tp_is_empty!1743)))

(assert (=> b!38555 t!3904))

(declare-fun b_and!2331 () Bool)

(assert (= b_and!2329 (and (=> t!3904 result!1417) b_and!2331)))

(declare-fun m!31277 () Bool)

(assert (=> start!5370 m!31277))

(declare-fun m!31279 () Bool)

(assert (=> b!38555 m!31279))

(declare-fun m!31281 () Bool)

(assert (=> b!38555 m!31281))

(declare-fun m!31283 () Bool)

(assert (=> b!38555 m!31283))

(declare-fun m!31285 () Bool)

(assert (=> b!38555 m!31285))

(declare-fun m!31287 () Bool)

(assert (=> b!38555 m!31287))

(declare-fun m!31289 () Bool)

(assert (=> b!38555 m!31289))

(declare-fun m!31291 () Bool)

(assert (=> b!38555 m!31291))

(declare-fun m!31293 () Bool)

(assert (=> b!38555 m!31293))

(check-sat b_and!2331 (not start!5370) (not b_lambda!2031) (not b!38555) (not b_next!1353) tp_is_empty!1743)
(check-sat b_and!2331 (not b_next!1353))
(get-model)

(declare-fun b_lambda!2035 () Bool)

(assert (= b_lambda!2031 (or (and start!5370 b_free!1353) b_lambda!2035)))

(check-sat b_and!2331 (not start!5370) (not b!38555) (not b_next!1353) tp_is_empty!1743 (not b_lambda!2035))
(check-sat b_and!2331 (not b_next!1353))
(get-model)

(declare-fun b!38582 () Bool)

(declare-fun e!24506 () Bool)

(declare-fun e!24505 () Bool)

(assert (=> b!38582 (= e!24506 e!24505)))

(declare-fun c!4429 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!38582 (= c!4429 (validKeyInArray!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(declare-fun b!38583 () Bool)

(declare-fun call!2903 () Bool)

(assert (=> b!38583 (= e!24505 call!2903)))

(declare-fun b!38584 () Bool)

(assert (=> b!38584 (= e!24505 call!2903)))

(declare-fun bm!2900 () Bool)

(assert (=> bm!2900 (= call!2903 (arrayNoDuplicates!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)))))

(declare-fun d!6261 () Bool)

(declare-fun res!23296 () Bool)

(declare-fun e!24507 () Bool)

(assert (=> d!6261 (=> res!23296 e!24507)))

(assert (=> d!6261 (= res!23296 (bvsge #b00000000000000000000000000000000 (size!1334 lt!14432)))))

(assert (=> d!6261 (= (arrayNoDuplicates!0 lt!14432 #b00000000000000000000000000000000 Nil!1057) e!24507)))

(declare-fun b!38585 () Bool)

(declare-fun e!24504 () Bool)

(declare-fun contains!501 (List!1060 (_ BitVec 64)) Bool)

(assert (=> b!38585 (= e!24504 (contains!501 Nil!1057 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(declare-fun b!38586 () Bool)

(assert (=> b!38586 (= e!24507 e!24506)))

(declare-fun res!23295 () Bool)

(assert (=> b!38586 (=> (not res!23295) (not e!24506))))

(assert (=> b!38586 (= res!23295 (not e!24504))))

(declare-fun res!23294 () Bool)

(assert (=> b!38586 (=> (not res!23294) (not e!24504))))

(assert (=> b!38586 (= res!23294 (validKeyInArray!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(assert (= (and d!6261 (not res!23296)) b!38586))

(assert (= (and b!38586 res!23294) b!38585))

(assert (= (and b!38586 res!23295) b!38582))

(assert (= (and b!38582 c!4429) b!38584))

(assert (= (and b!38582 (not c!4429)) b!38583))

(assert (= (or b!38584 b!38583) bm!2900))

(declare-fun m!31321 () Bool)

(assert (=> b!38582 m!31321))

(assert (=> b!38582 m!31321))

(declare-fun m!31323 () Bool)

(assert (=> b!38582 m!31323))

(assert (=> bm!2900 m!31321))

(declare-fun m!31325 () Bool)

(assert (=> bm!2900 m!31325))

(assert (=> b!38585 m!31321))

(assert (=> b!38585 m!31321))

(declare-fun m!31327 () Bool)

(assert (=> b!38585 m!31327))

(assert (=> b!38586 m!31321))

(assert (=> b!38586 m!31321))

(assert (=> b!38586 m!31323))

(assert (=> b!38555 d!6261))

(declare-fun d!6267 () Bool)

(declare-fun res!23303 () Bool)

(declare-fun e!24516 () Bool)

(assert (=> d!6267 (=> (not res!23303) (not e!24516))))

(declare-fun simpleValid!21 (LongMapFixedSize!228) Bool)

(assert (=> d!6267 (= res!23303 (simpleValid!21 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(assert (=> d!6267 (= (valid!117 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) e!24516)))

(declare-fun b!38605 () Bool)

(declare-fun res!23304 () Bool)

(assert (=> b!38605 (=> (not res!23304) (not e!24516))))

(assert (=> b!38605 (= res!23304 (= (arrayCountValidKeys!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (_size!163 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38606 () Bool)

(declare-fun res!23305 () Bool)

(assert (=> b!38606 (=> (not res!23305) (not e!24516))))

(assert (=> b!38606 (= res!23305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38607 () Bool)

(assert (=> b!38607 (= e!24516 (arrayNoDuplicates!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 Nil!1057))))

(assert (= (and d!6267 res!23303) b!38605))

(assert (= (and b!38605 res!23304) b!38606))

(assert (= (and b!38606 res!23305) b!38607))

(declare-fun m!31335 () Bool)

(assert (=> d!6267 m!31335))

(declare-fun m!31339 () Bool)

(assert (=> b!38605 m!31339))

(declare-fun m!31341 () Bool)

(assert (=> b!38606 m!31341))

(declare-fun m!31343 () Bool)

(assert (=> b!38607 m!31343))

(assert (=> b!38555 d!6267))

(declare-fun d!6275 () Bool)

(assert (=> d!6275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14432 mask!853)))

(declare-fun lt!14458 () Unit!956)

(declare-fun choose!34 (array!2567 (_ BitVec 32) (_ BitVec 32)) Unit!956)

(assert (=> d!6275 (= lt!14458 (choose!34 lt!14432 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!6275 (validMask!0 mask!853)))

(assert (=> d!6275 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14432 mask!853 #b00000000000000000000000000000000) lt!14458)))

(declare-fun bs!1595 () Bool)

(assert (= bs!1595 d!6275))

(assert (=> bs!1595 m!31283))

(declare-fun m!31345 () Bool)

(assert (=> bs!1595 m!31345))

(assert (=> bs!1595 m!31277))

(assert (=> b!38555 d!6275))

(declare-fun bm!2912 () Bool)

(declare-fun call!2915 () Bool)

(assert (=> bm!2912 (= call!2915 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14432 mask!853))))

(declare-fun b!38655 () Bool)

(declare-fun e!24554 () Bool)

(assert (=> b!38655 (= e!24554 call!2915)))

(declare-fun b!38656 () Bool)

(declare-fun e!24555 () Bool)

(assert (=> b!38656 (= e!24555 e!24554)))

(declare-fun lt!14477 () (_ BitVec 64))

(assert (=> b!38656 (= lt!14477 (select (arr!1227 lt!14432) #b00000000000000000000000000000000))))

(declare-fun lt!14478 () Unit!956)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2567 (_ BitVec 64) (_ BitVec 32)) Unit!956)

(assert (=> b!38656 (= lt!14478 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14432 lt!14477 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!38656 (arrayContainsKey!0 lt!14432 lt!14477 #b00000000000000000000000000000000)))

(declare-fun lt!14479 () Unit!956)

(assert (=> b!38656 (= lt!14479 lt!14478)))

(declare-fun res!23332 () Bool)

(declare-datatypes ((SeekEntryResult!177 0))(
  ( (MissingZero!177 (index!2830 (_ BitVec 32))) (Found!177 (index!2831 (_ BitVec 32))) (Intermediate!177 (undefined!989 Bool) (index!2832 (_ BitVec 32)) (x!7613 (_ BitVec 32))) (Undefined!177) (MissingVacant!177 (index!2833 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2567 (_ BitVec 32)) SeekEntryResult!177)

(assert (=> b!38656 (= res!23332 (= (seekEntryOrOpen!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853) (Found!177 #b00000000000000000000000000000000)))))

(assert (=> b!38656 (=> (not res!23332) (not e!24554))))

(declare-fun b!38657 () Bool)

(assert (=> b!38657 (= e!24555 call!2915)))

(declare-fun b!38654 () Bool)

(declare-fun e!24553 () Bool)

(assert (=> b!38654 (= e!24553 e!24555)))

(declare-fun c!4446 () Bool)

(assert (=> b!38654 (= c!4446 (validKeyInArray!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(declare-fun d!6277 () Bool)

(declare-fun res!23333 () Bool)

(assert (=> d!6277 (=> res!23333 e!24553)))

(assert (=> d!6277 (= res!23333 (bvsge #b00000000000000000000000000000000 (size!1334 lt!14432)))))

(assert (=> d!6277 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14432 mask!853) e!24553)))

(assert (= (and d!6277 (not res!23333)) b!38654))

(assert (= (and b!38654 c!4446) b!38656))

(assert (= (and b!38654 (not c!4446)) b!38657))

(assert (= (and b!38656 res!23332) b!38655))

(assert (= (or b!38655 b!38657) bm!2912))

(declare-fun m!31363 () Bool)

(assert (=> bm!2912 m!31363))

(assert (=> b!38656 m!31321))

(declare-fun m!31365 () Bool)

(assert (=> b!38656 m!31365))

(declare-fun m!31367 () Bool)

(assert (=> b!38656 m!31367))

(assert (=> b!38656 m!31321))

(declare-fun m!31369 () Bool)

(assert (=> b!38656 m!31369))

(assert (=> b!38654 m!31321))

(assert (=> b!38654 m!31321))

(assert (=> b!38654 m!31323))

(assert (=> b!38555 d!6277))

(declare-fun d!6287 () Bool)

(assert (=> d!6287 (arrayNoDuplicates!0 lt!14432 #b00000000000000000000000000000000 Nil!1057)))

(declare-fun lt!14487 () Unit!956)

(declare-fun choose!111 (array!2567 (_ BitVec 32) (_ BitVec 32) List!1060) Unit!956)

(assert (=> d!6287 (= lt!14487 (choose!111 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1057))))

(assert (=> d!6287 (= (size!1334 lt!14432) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!6287 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1057) lt!14487)))

(declare-fun bs!1598 () Bool)

(assert (= bs!1598 d!6287))

(assert (=> bs!1598 m!31289))

(declare-fun m!31379 () Bool)

(assert (=> bs!1598 m!31379))

(assert (=> b!38555 d!6287))

(declare-fun d!6291 () Bool)

(assert (=> d!6291 (= (arrayCountValidKeys!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14493 () Unit!956)

(declare-fun choose!59 (array!2567 (_ BitVec 32) (_ BitVec 32)) Unit!956)

(assert (=> d!6291 (= lt!14493 (choose!59 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6291 (bvslt (size!1334 lt!14432) #b01111111111111111111111111111111)))

(assert (=> d!6291 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14493)))

(declare-fun bs!1599 () Bool)

(assert (= bs!1599 d!6291))

(assert (=> bs!1599 m!31287))

(declare-fun m!31383 () Bool)

(assert (=> bs!1599 m!31383))

(assert (=> b!38555 d!6291))

(declare-fun b!38691 () Bool)

(declare-fun e!24573 () (_ BitVec 32))

(declare-fun call!2924 () (_ BitVec 32))

(assert (=> b!38691 (= e!24573 (bvadd #b00000000000000000000000000000001 call!2924))))

(declare-fun b!38692 () Bool)

(assert (=> b!38692 (= e!24573 call!2924)))

(declare-fun b!38693 () Bool)

(declare-fun e!24572 () (_ BitVec 32))

(assert (=> b!38693 (= e!24572 #b00000000000000000000000000000000)))

(declare-fun b!38694 () Bool)

(assert (=> b!38694 (= e!24572 e!24573)))

(declare-fun c!4459 () Bool)

(assert (=> b!38694 (= c!4459 (validKeyInArray!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(declare-fun bm!2921 () Bool)

(assert (=> bm!2921 (= call!2924 (arrayCountValidKeys!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!6295 () Bool)

(declare-fun lt!14503 () (_ BitVec 32))

(assert (=> d!6295 (and (bvsge lt!14503 #b00000000000000000000000000000000) (bvsle lt!14503 (bvsub (size!1334 lt!14432) #b00000000000000000000000000000000)))))

(assert (=> d!6295 (= lt!14503 e!24572)))

(declare-fun c!4458 () Bool)

(assert (=> d!6295 (= c!4458 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6295 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1334 lt!14432)))))

(assert (=> d!6295 (= (arrayCountValidKeys!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14503)))

(assert (= (and d!6295 c!4458) b!38693))

(assert (= (and d!6295 (not c!4458)) b!38694))

(assert (= (and b!38694 c!4459) b!38691))

(assert (= (and b!38694 (not c!4459)) b!38692))

(assert (= (or b!38691 b!38692) bm!2921))

(assert (=> b!38694 m!31321))

(assert (=> b!38694 m!31321))

(assert (=> b!38694 m!31323))

(declare-fun m!31399 () Bool)

(assert (=> bm!2921 m!31399))

(assert (=> b!38555 d!6295))

(declare-fun d!6305 () Bool)

(assert (=> d!6305 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5370 d!6305))

(check-sat (not d!6287) (not b!38607) (not b!38582) (not b!38654) (not b_next!1353) (not b!38585) (not b!38586) (not b!38694) (not d!6267) (not b_lambda!2035) (not b!38606) (not bm!2900) (not bm!2921) (not b!38656) b_and!2331 (not bm!2912) tp_is_empty!1743 (not d!6291) (not d!6275) (not b!38605))
(check-sat b_and!2331 (not b_next!1353))
(get-model)

(declare-fun b!38707 () Bool)

(declare-fun e!24585 () Bool)

(declare-fun e!24584 () Bool)

(assert (=> b!38707 (= e!24585 e!24584)))

(declare-fun c!4463 () Bool)

(assert (=> b!38707 (= c!4463 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38708 () Bool)

(declare-fun call!2928 () Bool)

(assert (=> b!38708 (= e!24584 call!2928)))

(declare-fun b!38709 () Bool)

(assert (=> b!38709 (= e!24584 call!2928)))

(declare-fun bm!2925 () Bool)

(assert (=> bm!2925 (= call!2928 (arrayNoDuplicates!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4463 (Cons!1056 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1057) Nil!1057)))))

(declare-fun d!6307 () Bool)

(declare-fun res!23353 () Bool)

(declare-fun e!24586 () Bool)

(assert (=> d!6307 (=> res!23353 e!24586)))

(assert (=> d!6307 (= res!23353 (bvsge #b00000000000000000000000000000000 (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6307 (= (arrayNoDuplicates!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 Nil!1057) e!24586)))

(declare-fun e!24583 () Bool)

(declare-fun b!38710 () Bool)

(assert (=> b!38710 (= e!24583 (contains!501 Nil!1057 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38711 () Bool)

(assert (=> b!38711 (= e!24586 e!24585)))

(declare-fun res!23352 () Bool)

(assert (=> b!38711 (=> (not res!23352) (not e!24585))))

(assert (=> b!38711 (= res!23352 (not e!24583))))

(declare-fun res!23351 () Bool)

(assert (=> b!38711 (=> (not res!23351) (not e!24583))))

(assert (=> b!38711 (= res!23351 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (= (and d!6307 (not res!23353)) b!38711))

(assert (= (and b!38711 res!23351) b!38710))

(assert (= (and b!38711 res!23352) b!38707))

(assert (= (and b!38707 c!4463) b!38709))

(assert (= (and b!38707 (not c!4463)) b!38708))

(assert (= (or b!38709 b!38708) bm!2925))

(declare-fun m!31409 () Bool)

(assert (=> b!38707 m!31409))

(assert (=> b!38707 m!31409))

(declare-fun m!31411 () Bool)

(assert (=> b!38707 m!31411))

(assert (=> bm!2925 m!31409))

(declare-fun m!31413 () Bool)

(assert (=> bm!2925 m!31413))

(assert (=> b!38710 m!31409))

(assert (=> b!38710 m!31409))

(declare-fun m!31415 () Bool)

(assert (=> b!38710 m!31415))

(assert (=> b!38711 m!31409))

(assert (=> b!38711 m!31409))

(assert (=> b!38711 m!31411))

(assert (=> b!38607 d!6307))

(declare-fun d!6309 () Bool)

(assert (=> d!6309 (= (validKeyInArray!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)) (and (not (= (select (arr!1227 lt!14432) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1227 lt!14432) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38582 d!6309))

(assert (=> d!6287 d!6261))

(declare-fun d!6311 () Bool)

(assert (=> d!6311 (arrayNoDuplicates!0 lt!14432 #b00000000000000000000000000000000 Nil!1057)))

(assert (=> d!6311 true))

(declare-fun res!23356 () Unit!956)

(assert (=> d!6311 (= (choose!111 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1057) res!23356)))

(declare-fun bs!1603 () Bool)

(assert (= bs!1603 d!6311))

(assert (=> bs!1603 m!31289))

(assert (=> d!6287 d!6311))

(assert (=> d!6291 d!6295))

(declare-fun d!6313 () Bool)

(assert (=> d!6313 (= (arrayCountValidKeys!0 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!6313 true))

(declare-fun _$88!19 () Unit!956)

(assert (=> d!6313 (= (choose!59 lt!14432 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!19)))

(declare-fun bs!1604 () Bool)

(assert (= bs!1604 d!6313))

(assert (=> bs!1604 m!31287))

(assert (=> d!6291 d!6313))

(declare-fun bm!2926 () Bool)

(declare-fun call!2929 () Bool)

(assert (=> bm!2926 (= call!2929 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14432 mask!853))))

(declare-fun b!38713 () Bool)

(declare-fun e!24588 () Bool)

(assert (=> b!38713 (= e!24588 call!2929)))

(declare-fun b!38714 () Bool)

(declare-fun e!24589 () Bool)

(assert (=> b!38714 (= e!24589 e!24588)))

(declare-fun lt!14513 () (_ BitVec 64))

(assert (=> b!38714 (= lt!14513 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14514 () Unit!956)

(assert (=> b!38714 (= lt!14514 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14432 lt!14513 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!38714 (arrayContainsKey!0 lt!14432 lt!14513 #b00000000000000000000000000000000)))

(declare-fun lt!14515 () Unit!956)

(assert (=> b!38714 (= lt!14515 lt!14514)))

(declare-fun res!23357 () Bool)

(assert (=> b!38714 (= res!23357 (= (seekEntryOrOpen!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14432 mask!853) (Found!177 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!38714 (=> (not res!23357) (not e!24588))))

(declare-fun b!38715 () Bool)

(assert (=> b!38715 (= e!24589 call!2929)))

(declare-fun b!38712 () Bool)

(declare-fun e!24587 () Bool)

(assert (=> b!38712 (= e!24587 e!24589)))

(declare-fun c!4464 () Bool)

(assert (=> b!38712 (= c!4464 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6315 () Bool)

(declare-fun res!23358 () Bool)

(assert (=> d!6315 (=> res!23358 e!24587)))

(assert (=> d!6315 (= res!23358 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 lt!14432)))))

(assert (=> d!6315 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14432 mask!853) e!24587)))

(assert (= (and d!6315 (not res!23358)) b!38712))

(assert (= (and b!38712 c!4464) b!38714))

(assert (= (and b!38712 (not c!4464)) b!38715))

(assert (= (and b!38714 res!23357) b!38713))

(assert (= (or b!38713 b!38715) bm!2926))

(declare-fun m!31417 () Bool)

(assert (=> bm!2926 m!31417))

(declare-fun m!31419 () Bool)

(assert (=> b!38714 m!31419))

(declare-fun m!31421 () Bool)

(assert (=> b!38714 m!31421))

(declare-fun m!31423 () Bool)

(assert (=> b!38714 m!31423))

(assert (=> b!38714 m!31419))

(declare-fun m!31425 () Bool)

(assert (=> b!38714 m!31425))

(assert (=> b!38712 m!31419))

(assert (=> b!38712 m!31419))

(declare-fun m!31427 () Bool)

(assert (=> b!38712 m!31427))

(assert (=> bm!2912 d!6315))

(declare-fun d!6317 () Bool)

(declare-fun lt!14518 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!25 (List!1060) (InoxSet (_ BitVec 64)))

(assert (=> d!6317 (= lt!14518 (select (content!25 Nil!1057) (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(declare-fun e!24595 () Bool)

(assert (=> d!6317 (= lt!14518 e!24595)))

(declare-fun res!23364 () Bool)

(assert (=> d!6317 (=> (not res!23364) (not e!24595))))

(get-info :version)

(assert (=> d!6317 (= res!23364 ((_ is Cons!1056) Nil!1057))))

(assert (=> d!6317 (= (contains!501 Nil!1057 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)) lt!14518)))

(declare-fun b!38720 () Bool)

(declare-fun e!24594 () Bool)

(assert (=> b!38720 (= e!24595 e!24594)))

(declare-fun res!23363 () Bool)

(assert (=> b!38720 (=> res!23363 e!24594)))

(assert (=> b!38720 (= res!23363 (= (h!1624 Nil!1057) (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(declare-fun b!38721 () Bool)

(assert (=> b!38721 (= e!24594 (contains!501 (t!3905 Nil!1057) (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(assert (= (and d!6317 res!23364) b!38720))

(assert (= (and b!38720 (not res!23363)) b!38721))

(declare-fun m!31429 () Bool)

(assert (=> d!6317 m!31429))

(assert (=> d!6317 m!31321))

(declare-fun m!31431 () Bool)

(assert (=> d!6317 m!31431))

(assert (=> b!38721 m!31321))

(declare-fun m!31433 () Bool)

(assert (=> b!38721 m!31433))

(assert (=> b!38585 d!6317))

(declare-fun e!24598 () Bool)

(declare-fun b!38733 () Bool)

(assert (=> b!38733 (= e!24598 (and (bvsge (extraKeys!1683 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (bvsle (extraKeys!1683 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000011) (bvsge (_vacant!163 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000)))))

(declare-fun b!38730 () Bool)

(declare-fun res!23376 () Bool)

(assert (=> b!38730 (=> (not res!23376) (not e!24598))))

(assert (=> b!38730 (= res!23376 (and (= (size!1335 (_values!1775 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001)) (= (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1335 (_values!1775 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge (_size!163 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (bvsle (_size!163 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001))))))

(declare-fun d!6319 () Bool)

(declare-fun res!23375 () Bool)

(assert (=> d!6319 (=> (not res!23375) (not e!24598))))

(assert (=> d!6319 (= res!23375 (validMask!0 (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (=> d!6319 (= (simpleValid!21 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) e!24598)))

(declare-fun b!38731 () Bool)

(declare-fun res!23374 () Bool)

(assert (=> b!38731 (=> (not res!23374) (not e!24598))))

(declare-fun size!1349 (LongMapFixedSize!228) (_ BitVec 32))

(assert (=> b!38731 (= res!23374 (bvsge (size!1349 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_size!163 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38732 () Bool)

(declare-fun res!23373 () Bool)

(assert (=> b!38732 (=> (not res!23373) (not e!24598))))

(assert (=> b!38732 (= res!23373 (= (size!1349 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (_size!163 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvsdiv (bvadd (extraKeys!1683 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!6319 res!23375) b!38730))

(assert (= (and b!38730 res!23376) b!38731))

(assert (= (and b!38731 res!23374) b!38732))

(assert (= (and b!38732 res!23373) b!38733))

(declare-fun m!31435 () Bool)

(assert (=> d!6319 m!31435))

(declare-fun m!31437 () Bool)

(assert (=> b!38731 m!31437))

(assert (=> b!38732 m!31437))

(assert (=> d!6267 d!6319))

(declare-fun b!38734 () Bool)

(declare-fun e!24601 () Bool)

(declare-fun e!24600 () Bool)

(assert (=> b!38734 (= e!24601 e!24600)))

(declare-fun c!4465 () Bool)

(assert (=> b!38734 (= c!4465 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38735 () Bool)

(declare-fun call!2930 () Bool)

(assert (=> b!38735 (= e!24600 call!2930)))

(declare-fun b!38736 () Bool)

(assert (=> b!38736 (= e!24600 call!2930)))

(declare-fun bm!2927 () Bool)

(assert (=> bm!2927 (= call!2930 (arrayNoDuplicates!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4465 (Cons!1056 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057))))))

(declare-fun d!6321 () Bool)

(declare-fun res!23379 () Bool)

(declare-fun e!24602 () Bool)

(assert (=> d!6321 (=> res!23379 e!24602)))

(assert (=> d!6321 (= res!23379 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 lt!14432)))))

(assert (=> d!6321 (= (arrayNoDuplicates!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) e!24602)))

(declare-fun b!38737 () Bool)

(declare-fun e!24599 () Bool)

(assert (=> b!38737 (= e!24599 (contains!501 (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38738 () Bool)

(assert (=> b!38738 (= e!24602 e!24601)))

(declare-fun res!23378 () Bool)

(assert (=> b!38738 (=> (not res!23378) (not e!24601))))

(assert (=> b!38738 (= res!23378 (not e!24599))))

(declare-fun res!23377 () Bool)

(assert (=> b!38738 (=> (not res!23377) (not e!24599))))

(assert (=> b!38738 (= res!23377 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6321 (not res!23379)) b!38738))

(assert (= (and b!38738 res!23377) b!38737))

(assert (= (and b!38738 res!23378) b!38734))

(assert (= (and b!38734 c!4465) b!38736))

(assert (= (and b!38734 (not c!4465)) b!38735))

(assert (= (or b!38736 b!38735) bm!2927))

(assert (=> b!38734 m!31419))

(assert (=> b!38734 m!31419))

(assert (=> b!38734 m!31427))

(assert (=> bm!2927 m!31419))

(declare-fun m!31439 () Bool)

(assert (=> bm!2927 m!31439))

(assert (=> b!38737 m!31419))

(assert (=> b!38737 m!31419))

(declare-fun m!31441 () Bool)

(assert (=> b!38737 m!31441))

(assert (=> b!38738 m!31419))

(assert (=> b!38738 m!31419))

(assert (=> b!38738 m!31427))

(assert (=> bm!2900 d!6321))

(assert (=> b!38654 d!6309))

(assert (=> b!38586 d!6309))

(assert (=> b!38694 d!6309))

(assert (=> d!6275 d!6277))

(declare-fun d!6325 () Bool)

(assert (=> d!6325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14432 mask!853)))

(assert (=> d!6325 true))

(declare-fun _$30!33 () Unit!956)

(assert (=> d!6325 (= (choose!34 lt!14432 mask!853 #b00000000000000000000000000000000) _$30!33)))

(declare-fun bs!1606 () Bool)

(assert (= bs!1606 d!6325))

(assert (=> bs!1606 m!31283))

(assert (=> d!6275 d!6325))

(assert (=> d!6275 d!6305))

(declare-fun bm!2928 () Bool)

(declare-fun call!2931 () Bool)

(assert (=> bm!2928 (= call!2931 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38740 () Bool)

(declare-fun e!24604 () Bool)

(assert (=> b!38740 (= e!24604 call!2931)))

(declare-fun b!38741 () Bool)

(declare-fun e!24605 () Bool)

(assert (=> b!38741 (= e!24605 e!24604)))

(declare-fun lt!14519 () (_ BitVec 64))

(assert (=> b!38741 (= lt!14519 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!14520 () Unit!956)

(assert (=> b!38741 (= lt!14520 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14519 #b00000000000000000000000000000000))))

(assert (=> b!38741 (arrayContainsKey!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14519 #b00000000000000000000000000000000)))

(declare-fun lt!14521 () Unit!956)

(assert (=> b!38741 (= lt!14521 lt!14520)))

(declare-fun res!23383 () Bool)

(assert (=> b!38741 (= res!23383 (= (seekEntryOrOpen!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (Found!177 #b00000000000000000000000000000000)))))

(assert (=> b!38741 (=> (not res!23383) (not e!24604))))

(declare-fun b!38742 () Bool)

(assert (=> b!38742 (= e!24605 call!2931)))

(declare-fun b!38739 () Bool)

(declare-fun e!24603 () Bool)

(assert (=> b!38739 (= e!24603 e!24605)))

(declare-fun c!4466 () Bool)

(assert (=> b!38739 (= c!4466 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun d!6329 () Bool)

(declare-fun res!23384 () Bool)

(assert (=> d!6329 (=> res!23384 e!24603)))

(assert (=> d!6329 (= res!23384 (bvsge #b00000000000000000000000000000000 (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6329 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) e!24603)))

(assert (= (and d!6329 (not res!23384)) b!38739))

(assert (= (and b!38739 c!4466) b!38741))

(assert (= (and b!38739 (not c!4466)) b!38742))

(assert (= (and b!38741 res!23383) b!38740))

(assert (= (or b!38740 b!38742) bm!2928))

(declare-fun m!31443 () Bool)

(assert (=> bm!2928 m!31443))

(assert (=> b!38741 m!31409))

(declare-fun m!31445 () Bool)

(assert (=> b!38741 m!31445))

(declare-fun m!31447 () Bool)

(assert (=> b!38741 m!31447))

(assert (=> b!38741 m!31409))

(declare-fun m!31449 () Bool)

(assert (=> b!38741 m!31449))

(assert (=> b!38739 m!31409))

(assert (=> b!38739 m!31409))

(assert (=> b!38739 m!31411))

(assert (=> b!38606 d!6329))

(declare-fun b!38747 () Bool)

(declare-fun e!24609 () (_ BitVec 32))

(declare-fun call!2933 () (_ BitVec 32))

(assert (=> b!38747 (= e!24609 (bvadd #b00000000000000000000000000000001 call!2933))))

(declare-fun b!38748 () Bool)

(assert (=> b!38748 (= e!24609 call!2933)))

(declare-fun b!38749 () Bool)

(declare-fun e!24608 () (_ BitVec 32))

(assert (=> b!38749 (= e!24608 #b00000000000000000000000000000000)))

(declare-fun b!38750 () Bool)

(assert (=> b!38750 (= e!24608 e!24609)))

(declare-fun c!4470 () Bool)

(assert (=> b!38750 (= c!4470 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!2930 () Bool)

(assert (=> bm!2930 (= call!2933 (arrayCountValidKeys!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!6333 () Bool)

(declare-fun lt!14523 () (_ BitVec 32))

(assert (=> d!6333 (and (bvsge lt!14523 #b00000000000000000000000000000000) (bvsle lt!14523 (bvsub (size!1334 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!6333 (= lt!14523 e!24608)))

(declare-fun c!4469 () Bool)

(assert (=> d!6333 (= c!4469 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6333 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1334 lt!14432)))))

(assert (=> d!6333 (= (arrayCountValidKeys!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!14523)))

(assert (= (and d!6333 c!4469) b!38749))

(assert (= (and d!6333 (not c!4469)) b!38750))

(assert (= (and b!38750 c!4470) b!38747))

(assert (= (and b!38750 (not c!4470)) b!38748))

(assert (= (or b!38747 b!38748) bm!2930))

(assert (=> b!38750 m!31419))

(assert (=> b!38750 m!31419))

(assert (=> b!38750 m!31427))

(declare-fun m!31457 () Bool)

(assert (=> bm!2930 m!31457))

(assert (=> bm!2921 d!6333))

(declare-fun d!6337 () Bool)

(assert (=> d!6337 (arrayContainsKey!0 lt!14432 lt!14477 #b00000000000000000000000000000000)))

(declare-fun lt!14530 () Unit!956)

(declare-fun choose!13 (array!2567 (_ BitVec 64) (_ BitVec 32)) Unit!956)

(assert (=> d!6337 (= lt!14530 (choose!13 lt!14432 lt!14477 #b00000000000000000000000000000000))))

(assert (=> d!6337 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6337 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14432 lt!14477 #b00000000000000000000000000000000) lt!14530)))

(declare-fun bs!1608 () Bool)

(assert (= bs!1608 d!6337))

(assert (=> bs!1608 m!31367))

(declare-fun m!31473 () Bool)

(assert (=> bs!1608 m!31473))

(assert (=> b!38656 d!6337))

(declare-fun d!6343 () Bool)

(declare-fun res!23391 () Bool)

(declare-fun e!24619 () Bool)

(assert (=> d!6343 (=> res!23391 e!24619)))

(assert (=> d!6343 (= res!23391 (= (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14477))))

(assert (=> d!6343 (= (arrayContainsKey!0 lt!14432 lt!14477 #b00000000000000000000000000000000) e!24619)))

(declare-fun b!38763 () Bool)

(declare-fun e!24620 () Bool)

(assert (=> b!38763 (= e!24619 e!24620)))

(declare-fun res!23392 () Bool)

(assert (=> b!38763 (=> (not res!23392) (not e!24620))))

(assert (=> b!38763 (= res!23392 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 lt!14432)))))

(declare-fun b!38764 () Bool)

(assert (=> b!38764 (= e!24620 (arrayContainsKey!0 lt!14432 lt!14477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6343 (not res!23391)) b!38763))

(assert (= (and b!38763 res!23392) b!38764))

(assert (=> d!6343 m!31321))

(declare-fun m!31475 () Bool)

(assert (=> b!38764 m!31475))

(assert (=> b!38656 d!6343))

(declare-fun b!38821 () Bool)

(declare-fun e!24656 () SeekEntryResult!177)

(assert (=> b!38821 (= e!24656 Undefined!177)))

(declare-fun b!38822 () Bool)

(declare-fun e!24655 () SeekEntryResult!177)

(declare-fun lt!14550 () SeekEntryResult!177)

(assert (=> b!38822 (= e!24655 (Found!177 (index!2832 lt!14550)))))

(declare-fun b!38823 () Bool)

(declare-fun c!4489 () Bool)

(declare-fun lt!14548 () (_ BitVec 64))

(assert (=> b!38823 (= c!4489 (= lt!14548 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!24657 () SeekEntryResult!177)

(assert (=> b!38823 (= e!24655 e!24657)))

(declare-fun d!6347 () Bool)

(declare-fun lt!14549 () SeekEntryResult!177)

(assert (=> d!6347 (and (or ((_ is Undefined!177) lt!14549) (not ((_ is Found!177) lt!14549)) (and (bvsge (index!2831 lt!14549) #b00000000000000000000000000000000) (bvslt (index!2831 lt!14549) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14549) ((_ is Found!177) lt!14549) (not ((_ is MissingZero!177) lt!14549)) (and (bvsge (index!2830 lt!14549) #b00000000000000000000000000000000) (bvslt (index!2830 lt!14549) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14549) ((_ is Found!177) lt!14549) ((_ is MissingZero!177) lt!14549) (not ((_ is MissingVacant!177) lt!14549)) (and (bvsge (index!2833 lt!14549) #b00000000000000000000000000000000) (bvslt (index!2833 lt!14549) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14549) (ite ((_ is Found!177) lt!14549) (= (select (arr!1227 lt!14432) (index!2831 lt!14549)) (select (arr!1227 lt!14432) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!177) lt!14549) (= (select (arr!1227 lt!14432) (index!2830 lt!14549)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!177) lt!14549) (= (select (arr!1227 lt!14432) (index!2833 lt!14549)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6347 (= lt!14549 e!24656)))

(declare-fun c!4488 () Bool)

(assert (=> d!6347 (= c!4488 (and ((_ is Intermediate!177) lt!14550) (undefined!989 lt!14550)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2567 (_ BitVec 32)) SeekEntryResult!177)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!6347 (= lt!14550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) mask!853) (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853))))

(assert (=> d!6347 (validMask!0 mask!853)))

(assert (=> d!6347 (= (seekEntryOrOpen!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853) lt!14549)))

(declare-fun b!38824 () Bool)

(assert (=> b!38824 (= e!24657 (MissingZero!177 (index!2832 lt!14550)))))

(declare-fun b!38825 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2567 (_ BitVec 32)) SeekEntryResult!177)

(assert (=> b!38825 (= e!24657 (seekKeyOrZeroReturnVacant!0 (x!7613 lt!14550) (index!2832 lt!14550) (index!2832 lt!14550) (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853))))

(declare-fun b!38826 () Bool)

(assert (=> b!38826 (= e!24656 e!24655)))

(assert (=> b!38826 (= lt!14548 (select (arr!1227 lt!14432) (index!2832 lt!14550)))))

(declare-fun c!4487 () Bool)

(assert (=> b!38826 (= c!4487 (= lt!14548 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(assert (= (and d!6347 c!4488) b!38821))

(assert (= (and d!6347 (not c!4488)) b!38826))

(assert (= (and b!38826 c!4487) b!38822))

(assert (= (and b!38826 (not c!4487)) b!38823))

(assert (= (and b!38823 c!4489) b!38824))

(assert (= (and b!38823 (not c!4489)) b!38825))

(assert (=> d!6347 m!31321))

(declare-fun m!31515 () Bool)

(assert (=> d!6347 m!31515))

(declare-fun m!31517 () Bool)

(assert (=> d!6347 m!31517))

(declare-fun m!31519 () Bool)

(assert (=> d!6347 m!31519))

(assert (=> d!6347 m!31277))

(declare-fun m!31521 () Bool)

(assert (=> d!6347 m!31521))

(assert (=> d!6347 m!31515))

(assert (=> d!6347 m!31321))

(declare-fun m!31525 () Bool)

(assert (=> d!6347 m!31525))

(assert (=> b!38825 m!31321))

(declare-fun m!31527 () Bool)

(assert (=> b!38825 m!31527))

(declare-fun m!31529 () Bool)

(assert (=> b!38826 m!31529))

(assert (=> b!38656 d!6347))

(declare-fun b!38829 () Bool)

(declare-fun e!24661 () (_ BitVec 32))

(declare-fun call!2941 () (_ BitVec 32))

(assert (=> b!38829 (= e!24661 (bvadd #b00000000000000000000000000000001 call!2941))))

(declare-fun b!38830 () Bool)

(assert (=> b!38830 (= e!24661 call!2941)))

(declare-fun b!38831 () Bool)

(declare-fun e!24660 () (_ BitVec 32))

(assert (=> b!38831 (= e!24660 #b00000000000000000000000000000000)))

(declare-fun b!38832 () Bool)

(assert (=> b!38832 (= e!24660 e!24661)))

(declare-fun c!4491 () Bool)

(assert (=> b!38832 (= c!4491 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun bm!2938 () Bool)

(assert (=> bm!2938 (= call!2941 (arrayCountValidKeys!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun d!6379 () Bool)

(declare-fun lt!14551 () (_ BitVec 32))

(assert (=> d!6379 (and (bvsge lt!14551 #b00000000000000000000000000000000) (bvsle lt!14551 (bvsub (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (=> d!6379 (= lt!14551 e!24660)))

(declare-fun c!4490 () Bool)

(assert (=> d!6379 (= c!4490 (bvsge #b00000000000000000000000000000000 (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6379 (and (bvsle #b00000000000000000000000000000000 (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6379 (= (arrayCountValidKeys!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) lt!14551)))

(assert (= (and d!6379 c!4490) b!38831))

(assert (= (and d!6379 (not c!4490)) b!38832))

(assert (= (and b!38832 c!4491) b!38829))

(assert (= (and b!38832 (not c!4491)) b!38830))

(assert (= (or b!38829 b!38830) bm!2938))

(assert (=> b!38832 m!31409))

(assert (=> b!38832 m!31409))

(assert (=> b!38832 m!31411))

(declare-fun m!31531 () Bool)

(assert (=> bm!2938 m!31531))

(assert (=> b!38605 d!6379))

(check-sat (not b!38731) (not b!38750) (not d!6347) (not b!38738) (not bm!2926) (not b!38737) (not d!6317) (not d!6313) (not bm!2930) (not b_next!1353) (not b!38732) (not d!6337) (not b!38710) (not d!6325) (not b_lambda!2035) (not b!38712) (not b!38832) (not b!38825) b_and!2331 (not bm!2925) (not b!38734) (not b!38764) (not b!38714) (not bm!2938) (not bm!2927) (not d!6311) tp_is_empty!1743 (not d!6319) (not b!38711) (not b!38721) (not b!38741) (not b!38707) (not bm!2928) (not b!38739))
(check-sat b_and!2331 (not b_next!1353))
(get-model)

(declare-fun d!6397 () Bool)

(assert (=> d!6397 (= (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38712 d!6397))

(declare-fun d!6399 () Bool)

(assert (=> d!6399 (arrayContainsKey!0 lt!14432 lt!14513 #b00000000000000000000000000000000)))

(declare-fun lt!14582 () Unit!956)

(assert (=> d!6399 (= lt!14582 (choose!13 lt!14432 lt!14513 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!6399 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!6399 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14432 lt!14513 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14582)))

(declare-fun bs!1615 () Bool)

(assert (= bs!1615 d!6399))

(assert (=> bs!1615 m!31423))

(declare-fun m!31601 () Bool)

(assert (=> bs!1615 m!31601))

(assert (=> b!38714 d!6399))

(declare-fun d!6403 () Bool)

(declare-fun res!23462 () Bool)

(declare-fun e!24709 () Bool)

(assert (=> d!6403 (=> res!23462 e!24709)))

(assert (=> d!6403 (= res!23462 (= (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14513))))

(assert (=> d!6403 (= (arrayContainsKey!0 lt!14432 lt!14513 #b00000000000000000000000000000000) e!24709)))

(declare-fun b!38911 () Bool)

(declare-fun e!24710 () Bool)

(assert (=> b!38911 (= e!24709 e!24710)))

(declare-fun res!23463 () Bool)

(assert (=> b!38911 (=> (not res!23463) (not e!24710))))

(assert (=> b!38911 (= res!23463 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 lt!14432)))))

(declare-fun b!38912 () Bool)

(assert (=> b!38912 (= e!24710 (arrayContainsKey!0 lt!14432 lt!14513 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6403 (not res!23462)) b!38911))

(assert (= (and b!38911 res!23463) b!38912))

(assert (=> d!6403 m!31321))

(declare-fun m!31603 () Bool)

(assert (=> b!38912 m!31603))

(assert (=> b!38714 d!6403))

(declare-fun b!38918 () Bool)

(declare-fun e!24716 () SeekEntryResult!177)

(assert (=> b!38918 (= e!24716 Undefined!177)))

(declare-fun b!38919 () Bool)

(declare-fun e!24715 () SeekEntryResult!177)

(declare-fun lt!14585 () SeekEntryResult!177)

(assert (=> b!38919 (= e!24715 (Found!177 (index!2832 lt!14585)))))

(declare-fun b!38920 () Bool)

(declare-fun c!4517 () Bool)

(declare-fun lt!14583 () (_ BitVec 64))

(assert (=> b!38920 (= c!4517 (= lt!14583 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!24717 () SeekEntryResult!177)

(assert (=> b!38920 (= e!24715 e!24717)))

(declare-fun d!6405 () Bool)

(declare-fun lt!14584 () SeekEntryResult!177)

(assert (=> d!6405 (and (or ((_ is Undefined!177) lt!14584) (not ((_ is Found!177) lt!14584)) (and (bvsge (index!2831 lt!14584) #b00000000000000000000000000000000) (bvslt (index!2831 lt!14584) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14584) ((_ is Found!177) lt!14584) (not ((_ is MissingZero!177) lt!14584)) (and (bvsge (index!2830 lt!14584) #b00000000000000000000000000000000) (bvslt (index!2830 lt!14584) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14584) ((_ is Found!177) lt!14584) ((_ is MissingZero!177) lt!14584) (not ((_ is MissingVacant!177) lt!14584)) (and (bvsge (index!2833 lt!14584) #b00000000000000000000000000000000) (bvslt (index!2833 lt!14584) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14584) (ite ((_ is Found!177) lt!14584) (= (select (arr!1227 lt!14432) (index!2831 lt!14584)) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!177) lt!14584) (= (select (arr!1227 lt!14432) (index!2830 lt!14584)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!177) lt!14584) (= (select (arr!1227 lt!14432) (index!2833 lt!14584)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6405 (= lt!14584 e!24716)))

(declare-fun c!4516 () Bool)

(assert (=> d!6405 (= c!4516 (and ((_ is Intermediate!177) lt!14585) (undefined!989 lt!14585)))))

(assert (=> d!6405 (= lt!14585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14432 mask!853))))

(assert (=> d!6405 (validMask!0 mask!853)))

(assert (=> d!6405 (= (seekEntryOrOpen!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14432 mask!853) lt!14584)))

(declare-fun b!38921 () Bool)

(assert (=> b!38921 (= e!24717 (MissingZero!177 (index!2832 lt!14585)))))

(declare-fun b!38922 () Bool)

(assert (=> b!38922 (= e!24717 (seekKeyOrZeroReturnVacant!0 (x!7613 lt!14585) (index!2832 lt!14585) (index!2832 lt!14585) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14432 mask!853))))

(declare-fun b!38923 () Bool)

(assert (=> b!38923 (= e!24716 e!24715)))

(assert (=> b!38923 (= lt!14583 (select (arr!1227 lt!14432) (index!2832 lt!14585)))))

(declare-fun c!4515 () Bool)

(assert (=> b!38923 (= c!4515 (= lt!14583 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6405 c!4516) b!38918))

(assert (= (and d!6405 (not c!4516)) b!38923))

(assert (= (and b!38923 c!4515) b!38919))

(assert (= (and b!38923 (not c!4515)) b!38920))

(assert (= (and b!38920 c!4517) b!38921))

(assert (= (and b!38920 (not c!4517)) b!38922))

(assert (=> d!6405 m!31419))

(declare-fun m!31611 () Bool)

(assert (=> d!6405 m!31611))

(declare-fun m!31613 () Bool)

(assert (=> d!6405 m!31613))

(declare-fun m!31615 () Bool)

(assert (=> d!6405 m!31615))

(assert (=> d!6405 m!31277))

(declare-fun m!31619 () Bool)

(assert (=> d!6405 m!31619))

(assert (=> d!6405 m!31611))

(assert (=> d!6405 m!31419))

(declare-fun m!31621 () Bool)

(assert (=> d!6405 m!31621))

(assert (=> b!38922 m!31419))

(declare-fun m!31623 () Bool)

(assert (=> b!38922 m!31623))

(declare-fun m!31625 () Bool)

(assert (=> b!38923 m!31625))

(assert (=> b!38714 d!6405))

(assert (=> d!6337 d!6343))

(declare-fun d!6409 () Bool)

(assert (=> d!6409 (arrayContainsKey!0 lt!14432 lt!14477 #b00000000000000000000000000000000)))

(assert (=> d!6409 true))

(declare-fun _$60!323 () Unit!956)

(assert (=> d!6409 (= (choose!13 lt!14432 lt!14477 #b00000000000000000000000000000000) _$60!323)))

(declare-fun bs!1616 () Bool)

(assert (= bs!1616 d!6409))

(assert (=> bs!1616 m!31367))

(assert (=> d!6337 d!6409))

(assert (=> b!38750 d!6397))

(declare-fun bm!2946 () Bool)

(declare-fun call!2949 () Bool)

(assert (=> bm!2946 (= call!2949 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38934 () Bool)

(declare-fun e!24725 () Bool)

(assert (=> b!38934 (= e!24725 call!2949)))

(declare-fun b!38935 () Bool)

(declare-fun e!24726 () Bool)

(assert (=> b!38935 (= e!24726 e!24725)))

(declare-fun lt!14587 () (_ BitVec 64))

(assert (=> b!38935 (= lt!14587 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14588 () Unit!956)

(assert (=> b!38935 (= lt!14588 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14587 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!38935 (arrayContainsKey!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14587 #b00000000000000000000000000000000)))

(declare-fun lt!14589 () Unit!956)

(assert (=> b!38935 (= lt!14589 lt!14588)))

(declare-fun res!23470 () Bool)

(assert (=> b!38935 (= res!23470 (= (seekEntryOrOpen!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (Found!177 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!38935 (=> (not res!23470) (not e!24725))))

(declare-fun b!38936 () Bool)

(assert (=> b!38936 (= e!24726 call!2949)))

(declare-fun b!38933 () Bool)

(declare-fun e!24724 () Bool)

(assert (=> b!38933 (= e!24724 e!24726)))

(declare-fun c!4521 () Bool)

(assert (=> b!38933 (= c!4521 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6413 () Bool)

(declare-fun res!23471 () Bool)

(assert (=> d!6413 (=> res!23471 e!24724)))

(assert (=> d!6413 (= res!23471 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6413 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) e!24724)))

(assert (= (and d!6413 (not res!23471)) b!38933))

(assert (= (and b!38933 c!4521) b!38935))

(assert (= (and b!38933 (not c!4521)) b!38936))

(assert (= (and b!38935 res!23470) b!38934))

(assert (= (or b!38934 b!38936) bm!2946))

(declare-fun m!31637 () Bool)

(assert (=> bm!2946 m!31637))

(declare-fun m!31639 () Bool)

(assert (=> b!38935 m!31639))

(declare-fun m!31641 () Bool)

(assert (=> b!38935 m!31641))

(declare-fun m!31643 () Bool)

(assert (=> b!38935 m!31643))

(assert (=> b!38935 m!31639))

(declare-fun m!31645 () Bool)

(assert (=> b!38935 m!31645))

(assert (=> b!38933 m!31639))

(assert (=> b!38933 m!31639))

(declare-fun m!31647 () Bool)

(assert (=> b!38933 m!31647))

(assert (=> bm!2928 d!6413))

(declare-fun b!38941 () Bool)

(declare-fun e!24731 () (_ BitVec 32))

(declare-fun call!2951 () (_ BitVec 32))

(assert (=> b!38941 (= e!24731 (bvadd #b00000000000000000000000000000001 call!2951))))

(declare-fun b!38942 () Bool)

(assert (=> b!38942 (= e!24731 call!2951)))

(declare-fun b!38943 () Bool)

(declare-fun e!24730 () (_ BitVec 32))

(assert (=> b!38943 (= e!24730 #b00000000000000000000000000000000)))

(declare-fun b!38944 () Bool)

(assert (=> b!38944 (= e!24730 e!24731)))

(declare-fun c!4524 () Bool)

(assert (=> b!38944 (= c!4524 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!2948 () Bool)

(assert (=> bm!2948 (= call!2951 (arrayCountValidKeys!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun d!6417 () Bool)

(declare-fun lt!14593 () (_ BitVec 32))

(assert (=> d!6417 (and (bvsge lt!14593 #b00000000000000000000000000000000) (bvsle lt!14593 (bvsub (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!6417 (= lt!14593 e!24730)))

(declare-fun c!4523 () Bool)

(assert (=> d!6417 (= c!4523 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6417 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6417 (= (arrayCountValidKeys!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) lt!14593)))

(assert (= (and d!6417 c!4523) b!38943))

(assert (= (and d!6417 (not c!4523)) b!38944))

(assert (= (and b!38944 c!4524) b!38941))

(assert (= (and b!38944 (not c!4524)) b!38942))

(assert (= (or b!38941 b!38942) bm!2948))

(assert (=> b!38944 m!31639))

(assert (=> b!38944 m!31639))

(assert (=> b!38944 m!31647))

(declare-fun m!31657 () Bool)

(assert (=> bm!2948 m!31657))

(assert (=> bm!2938 d!6417))

(declare-fun d!6423 () Bool)

(assert (=> d!6423 (= (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38832 d!6423))

(declare-fun b!38945 () Bool)

(declare-fun e!24733 () (_ BitVec 32))

(declare-fun call!2952 () (_ BitVec 32))

(assert (=> b!38945 (= e!24733 (bvadd #b00000000000000000000000000000001 call!2952))))

(declare-fun b!38946 () Bool)

(assert (=> b!38946 (= e!24733 call!2952)))

(declare-fun b!38947 () Bool)

(declare-fun e!24732 () (_ BitVec 32))

(assert (=> b!38947 (= e!24732 #b00000000000000000000000000000000)))

(declare-fun b!38948 () Bool)

(assert (=> b!38948 (= e!24732 e!24733)))

(declare-fun c!4526 () Bool)

(assert (=> b!38948 (= c!4526 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!2949 () Bool)

(assert (=> bm!2949 (= call!2952 (arrayCountValidKeys!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!6425 () Bool)

(declare-fun lt!14594 () (_ BitVec 32))

(assert (=> d!6425 (and (bvsge lt!14594 #b00000000000000000000000000000000) (bvsle lt!14594 (bvsub (size!1334 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!6425 (= lt!14594 e!24732)))

(declare-fun c!4525 () Bool)

(assert (=> d!6425 (= c!4525 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6425 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1334 lt!14432)))))

(assert (=> d!6425 (= (arrayCountValidKeys!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!14594)))

(assert (= (and d!6425 c!4525) b!38947))

(assert (= (and d!6425 (not c!4525)) b!38948))

(assert (= (and b!38948 c!4526) b!38945))

(assert (= (and b!38948 (not c!4526)) b!38946))

(assert (= (or b!38945 b!38946) bm!2949))

(declare-fun m!31659 () Bool)

(assert (=> b!38948 m!31659))

(assert (=> b!38948 m!31659))

(declare-fun m!31661 () Bool)

(assert (=> b!38948 m!31661))

(declare-fun m!31663 () Bool)

(assert (=> bm!2949 m!31663))

(assert (=> bm!2930 d!6425))

(declare-fun d!6427 () Bool)

(assert (=> d!6427 (= (validMask!0 (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (and (or (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000001111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000011111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000001111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000011111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000001111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000011111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000001111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000011111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000001111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000011111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000001111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000011111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000001111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000011111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000111111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000001111111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000011111111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000111111111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00001111111111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00011111111111111111111111111111) (= (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00111111111111111111111111111111)) (bvsle (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00111111111111111111111111111111)))))

(assert (=> d!6319 d!6427))

(assert (=> b!38739 d!6423))

(declare-fun d!6431 () Bool)

(assert (=> d!6431 (arrayContainsKey!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14519 #b00000000000000000000000000000000)))

(declare-fun lt!14595 () Unit!956)

(assert (=> d!6431 (= lt!14595 (choose!13 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14519 #b00000000000000000000000000000000))))

(assert (=> d!6431 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6431 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14519 #b00000000000000000000000000000000) lt!14595)))

(declare-fun bs!1618 () Bool)

(assert (= bs!1618 d!6431))

(assert (=> bs!1618 m!31447))

(declare-fun m!31665 () Bool)

(assert (=> bs!1618 m!31665))

(assert (=> b!38741 d!6431))

(declare-fun d!6433 () Bool)

(declare-fun res!23476 () Bool)

(declare-fun e!24737 () Bool)

(assert (=> d!6433 (=> res!23476 e!24737)))

(assert (=> d!6433 (= res!23476 (= (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) lt!14519))))

(assert (=> d!6433 (= (arrayContainsKey!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14519 #b00000000000000000000000000000000) e!24737)))

(declare-fun b!38953 () Bool)

(declare-fun e!24738 () Bool)

(assert (=> b!38953 (= e!24737 e!24738)))

(declare-fun res!23477 () Bool)

(assert (=> b!38953 (=> (not res!23477) (not e!24738))))

(assert (=> b!38953 (= res!23477 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun b!38954 () Bool)

(assert (=> b!38954 (= e!24738 (arrayContainsKey!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14519 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6433 (not res!23476)) b!38953))

(assert (= (and b!38953 res!23477) b!38954))

(assert (=> d!6433 m!31409))

(declare-fun m!31673 () Bool)

(assert (=> b!38954 m!31673))

(assert (=> b!38741 d!6433))

(declare-fun b!38955 () Bool)

(declare-fun e!24740 () SeekEntryResult!177)

(assert (=> b!38955 (= e!24740 Undefined!177)))

(declare-fun b!38956 () Bool)

(declare-fun e!24739 () SeekEntryResult!177)

(declare-fun lt!14601 () SeekEntryResult!177)

(assert (=> b!38956 (= e!24739 (Found!177 (index!2832 lt!14601)))))

(declare-fun b!38957 () Bool)

(declare-fun c!4530 () Bool)

(declare-fun lt!14599 () (_ BitVec 64))

(assert (=> b!38957 (= c!4530 (= lt!14599 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!24741 () SeekEntryResult!177)

(assert (=> b!38957 (= e!24739 e!24741)))

(declare-fun d!6435 () Bool)

(declare-fun lt!14600 () SeekEntryResult!177)

(assert (=> d!6435 (and (or ((_ is Undefined!177) lt!14600) (not ((_ is Found!177) lt!14600)) (and (bvsge (index!2831 lt!14600) #b00000000000000000000000000000000) (bvslt (index!2831 lt!14600) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or ((_ is Undefined!177) lt!14600) ((_ is Found!177) lt!14600) (not ((_ is MissingZero!177) lt!14600)) (and (bvsge (index!2830 lt!14600) #b00000000000000000000000000000000) (bvslt (index!2830 lt!14600) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or ((_ is Undefined!177) lt!14600) ((_ is Found!177) lt!14600) ((_ is MissingZero!177) lt!14600) (not ((_ is MissingVacant!177) lt!14600)) (and (bvsge (index!2833 lt!14600) #b00000000000000000000000000000000) (bvslt (index!2833 lt!14600) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or ((_ is Undefined!177) lt!14600) (ite ((_ is Found!177) lt!14600) (= (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2831 lt!14600)) (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!177) lt!14600) (= (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2830 lt!14600)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!177) lt!14600) (= (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2833 lt!14600)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6435 (= lt!14600 e!24740)))

(declare-fun c!4529 () Bool)

(assert (=> d!6435 (= c!4529 (and ((_ is Intermediate!177) lt!14601) (undefined!989 lt!14601)))))

(assert (=> d!6435 (= lt!14601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (=> d!6435 (validMask!0 (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(assert (=> d!6435 (= (seekEntryOrOpen!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) lt!14600)))

(declare-fun b!38958 () Bool)

(assert (=> b!38958 (= e!24741 (MissingZero!177 (index!2832 lt!14601)))))

(declare-fun b!38959 () Bool)

(assert (=> b!38959 (= e!24741 (seekKeyOrZeroReturnVacant!0 (x!7613 lt!14601) (index!2832 lt!14601) (index!2832 lt!14601) (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5113 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38960 () Bool)

(assert (=> b!38960 (= e!24740 e!24739)))

(assert (=> b!38960 (= lt!14599 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2832 lt!14601)))))

(declare-fun c!4528 () Bool)

(assert (=> b!38960 (= c!4528 (= lt!14599 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (= (and d!6435 c!4529) b!38955))

(assert (= (and d!6435 (not c!4529)) b!38960))

(assert (= (and b!38960 c!4528) b!38956))

(assert (= (and b!38960 (not c!4528)) b!38957))

(assert (= (and b!38957 c!4530) b!38958))

(assert (= (and b!38957 (not c!4530)) b!38959))

(assert (=> d!6435 m!31409))

(declare-fun m!31679 () Bool)

(assert (=> d!6435 m!31679))

(declare-fun m!31681 () Bool)

(assert (=> d!6435 m!31681))

(declare-fun m!31683 () Bool)

(assert (=> d!6435 m!31683))

(assert (=> d!6435 m!31435))

(declare-fun m!31685 () Bool)

(assert (=> d!6435 m!31685))

(assert (=> d!6435 m!31679))

(assert (=> d!6435 m!31409))

(declare-fun m!31689 () Bool)

(assert (=> d!6435 m!31689))

(assert (=> b!38959 m!31409))

(declare-fun m!31691 () Bool)

(assert (=> b!38959 m!31691))

(declare-fun m!31693 () Bool)

(assert (=> b!38960 m!31693))

(assert (=> b!38741 d!6435))

(assert (=> d!6311 d!6261))

(assert (=> b!38707 d!6423))

(declare-fun b!38989 () Bool)

(declare-fun e!24757 () SeekEntryResult!177)

(assert (=> b!38989 (= e!24757 (MissingVacant!177 (index!2832 lt!14550)))))

(declare-fun b!38990 () Bool)

(declare-fun e!24758 () SeekEntryResult!177)

(assert (=> b!38990 (= e!24758 (Found!177 (index!2832 lt!14550)))))

(declare-fun b!38991 () Bool)

(declare-fun c!4546 () Bool)

(declare-fun lt!14615 () (_ BitVec 64))

(assert (=> b!38991 (= c!4546 (= lt!14615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!38991 (= e!24758 e!24757)))

(declare-fun b!38992 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38992 (= e!24757 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7613 lt!14550) #b00000000000000000000000000000001) (nextIndex!0 (index!2832 lt!14550) (x!7613 lt!14550) mask!853) (index!2832 lt!14550) (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853))))

(declare-fun d!6445 () Bool)

(declare-fun lt!14614 () SeekEntryResult!177)

(assert (=> d!6445 (and (or ((_ is Undefined!177) lt!14614) (not ((_ is Found!177) lt!14614)) (and (bvsge (index!2831 lt!14614) #b00000000000000000000000000000000) (bvslt (index!2831 lt!14614) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14614) ((_ is Found!177) lt!14614) (not ((_ is MissingVacant!177) lt!14614)) (not (= (index!2833 lt!14614) (index!2832 lt!14550))) (and (bvsge (index!2833 lt!14614) #b00000000000000000000000000000000) (bvslt (index!2833 lt!14614) (size!1334 lt!14432)))) (or ((_ is Undefined!177) lt!14614) (ite ((_ is Found!177) lt!14614) (= (select (arr!1227 lt!14432) (index!2831 lt!14614)) (select (arr!1227 lt!14432) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!177) lt!14614) (= (index!2833 lt!14614) (index!2832 lt!14550)) (= (select (arr!1227 lt!14432) (index!2833 lt!14614)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!24759 () SeekEntryResult!177)

(assert (=> d!6445 (= lt!14614 e!24759)))

(declare-fun c!4545 () Bool)

(assert (=> d!6445 (= c!4545 (bvsge (x!7613 lt!14550) #b01111111111111111111111111111110))))

(assert (=> d!6445 (= lt!14615 (select (arr!1227 lt!14432) (index!2832 lt!14550)))))

(assert (=> d!6445 (validMask!0 mask!853)))

(assert (=> d!6445 (= (seekKeyOrZeroReturnVacant!0 (x!7613 lt!14550) (index!2832 lt!14550) (index!2832 lt!14550) (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853) lt!14614)))

(declare-fun b!38993 () Bool)

(assert (=> b!38993 (= e!24759 e!24758)))

(declare-fun c!4544 () Bool)

(assert (=> b!38993 (= c!4544 (= lt!14615 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(declare-fun b!38994 () Bool)

(assert (=> b!38994 (= e!24759 Undefined!177)))

(assert (= (and d!6445 c!4545) b!38994))

(assert (= (and d!6445 (not c!4545)) b!38993))

(assert (= (and b!38993 c!4544) b!38990))

(assert (= (and b!38993 (not c!4544)) b!38991))

(assert (= (and b!38991 c!4546) b!38989))

(assert (= (and b!38991 (not c!4546)) b!38992))

(declare-fun m!31709 () Bool)

(assert (=> b!38992 m!31709))

(assert (=> b!38992 m!31709))

(assert (=> b!38992 m!31321))

(declare-fun m!31711 () Bool)

(assert (=> b!38992 m!31711))

(declare-fun m!31713 () Bool)

(assert (=> d!6445 m!31713))

(declare-fun m!31715 () Bool)

(assert (=> d!6445 m!31715))

(assert (=> d!6445 m!31529))

(assert (=> d!6445 m!31277))

(assert (=> b!38825 d!6445))

(declare-fun b!39005 () Bool)

(declare-fun e!24768 () Bool)

(declare-fun e!24767 () Bool)

(assert (=> b!39005 (= e!24768 e!24767)))

(declare-fun c!4549 () Bool)

(assert (=> b!39005 (= c!4549 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39006 () Bool)

(declare-fun call!2954 () Bool)

(assert (=> b!39006 (= e!24767 call!2954)))

(declare-fun b!39007 () Bool)

(assert (=> b!39007 (= e!24767 call!2954)))

(declare-fun bm!2951 () Bool)

(assert (=> bm!2951 (= call!2954 (arrayNoDuplicates!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4549 (Cons!1056 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4463 (Cons!1056 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (ite c!4463 (Cons!1056 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1057) Nil!1057))))))

(declare-fun d!6449 () Bool)

(declare-fun res!23488 () Bool)

(declare-fun e!24769 () Bool)

(assert (=> d!6449 (=> res!23488 e!24769)))

(assert (=> d!6449 (= res!23488 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1334 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6449 (= (arrayNoDuplicates!0 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4463 (Cons!1056 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) e!24769)))

(declare-fun b!39008 () Bool)

(declare-fun e!24766 () Bool)

(assert (=> b!39008 (= e!24766 (contains!501 (ite c!4463 (Cons!1056 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1057) Nil!1057) (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39009 () Bool)

(assert (=> b!39009 (= e!24769 e!24768)))

(declare-fun res!23487 () Bool)

(assert (=> b!39009 (=> (not res!23487) (not e!24768))))

(assert (=> b!39009 (= res!23487 (not e!24766))))

(declare-fun res!23486 () Bool)

(assert (=> b!39009 (=> (not res!23486) (not e!24766))))

(assert (=> b!39009 (= res!23486 (validKeyInArray!0 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6449 (not res!23488)) b!39009))

(assert (= (and b!39009 res!23486) b!39008))

(assert (= (and b!39009 res!23487) b!39005))

(assert (= (and b!39005 c!4549) b!39007))

(assert (= (and b!39005 (not c!4549)) b!39006))

(assert (= (or b!39007 b!39006) bm!2951))

(assert (=> b!39005 m!31639))

(assert (=> b!39005 m!31639))

(assert (=> b!39005 m!31647))

(assert (=> bm!2951 m!31639))

(declare-fun m!31717 () Bool)

(assert (=> bm!2951 m!31717))

(assert (=> b!39008 m!31639))

(assert (=> b!39008 m!31639))

(declare-fun m!31719 () Bool)

(assert (=> b!39008 m!31719))

(assert (=> b!39009 m!31639))

(assert (=> b!39009 m!31639))

(assert (=> b!39009 m!31647))

(assert (=> bm!2925 d!6449))

(assert (=> b!38711 d!6423))

(declare-fun lt!14616 () Bool)

(declare-fun d!6451 () Bool)

(assert (=> d!6451 (= lt!14616 (select (content!25 Nil!1057) (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun e!24771 () Bool)

(assert (=> d!6451 (= lt!14616 e!24771)))

(declare-fun res!23490 () Bool)

(assert (=> d!6451 (=> (not res!23490) (not e!24771))))

(assert (=> d!6451 (= res!23490 ((_ is Cons!1056) Nil!1057))))

(assert (=> d!6451 (= (contains!501 Nil!1057 (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) lt!14616)))

(declare-fun b!39010 () Bool)

(declare-fun e!24770 () Bool)

(assert (=> b!39010 (= e!24771 e!24770)))

(declare-fun res!23489 () Bool)

(assert (=> b!39010 (=> res!23489 e!24770)))

(assert (=> b!39010 (= res!23489 (= (h!1624 Nil!1057) (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!39011 () Bool)

(assert (=> b!39011 (= e!24770 (contains!501 (t!3905 Nil!1057) (select (arr!1227 (_keys!3245 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (= (and d!6451 res!23490) b!39010))

(assert (= (and b!39010 (not res!23489)) b!39011))

(assert (=> d!6451 m!31429))

(assert (=> d!6451 m!31409))

(declare-fun m!31721 () Bool)

(assert (=> d!6451 m!31721))

(assert (=> b!39011 m!31409))

(declare-fun m!31723 () Bool)

(assert (=> b!39011 m!31723))

(assert (=> b!38710 d!6451))

(assert (=> d!6325 d!6277))

(declare-fun d!6453 () Bool)

(declare-fun res!23491 () Bool)

(declare-fun e!24772 () Bool)

(assert (=> d!6453 (=> res!23491 e!24772)))

(assert (=> d!6453 (= res!23491 (= (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14477))))

(assert (=> d!6453 (= (arrayContainsKey!0 lt!14432 lt!14477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!24772)))

(declare-fun b!39012 () Bool)

(declare-fun e!24773 () Bool)

(assert (=> b!39012 (= e!24772 e!24773)))

(declare-fun res!23492 () Bool)

(assert (=> b!39012 (=> (not res!23492) (not e!24773))))

(assert (=> b!39012 (= res!23492 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1334 lt!14432)))))

(declare-fun b!39013 () Bool)

(assert (=> b!39013 (= e!24773 (arrayContainsKey!0 lt!14432 lt!14477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!6453 (not res!23491)) b!39012))

(assert (= (and b!39012 res!23492) b!39013))

(assert (=> d!6453 m!31419))

(declare-fun m!31725 () Bool)

(assert (=> b!39013 m!31725))

(assert (=> b!38764 d!6453))

(assert (=> b!38734 d!6397))

(declare-fun d!6455 () Bool)

(assert (=> d!6455 (= (content!25 Nil!1057) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!6317 d!6455))

(declare-fun d!6459 () Bool)

(assert (=> d!6459 (= (size!1349 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (_size!163 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvsdiv (bvadd (extraKeys!1683 (LongMapFixedSize!229 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14430 lt!14430 #b00000000000000000000000000000000 lt!14432 (array!2570 ((as const (Array (_ BitVec 32) ValueCell!624)) EmptyCell!624) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!38731 d!6459))

(declare-fun b!39065 () Bool)

(declare-fun e!24809 () SeekEntryResult!177)

(assert (=> b!39065 (= e!24809 (Intermediate!177 true (toIndex!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun d!6461 () Bool)

(declare-fun e!24806 () Bool)

(assert (=> d!6461 e!24806))

(declare-fun c!4567 () Bool)

(declare-fun lt!14643 () SeekEntryResult!177)

(assert (=> d!6461 (= c!4567 (and ((_ is Intermediate!177) lt!14643) (undefined!989 lt!14643)))))

(assert (=> d!6461 (= lt!14643 e!24809)))

(declare-fun c!4568 () Bool)

(assert (=> d!6461 (= c!4568 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!14644 () (_ BitVec 64))

(assert (=> d!6461 (= lt!14644 (select (arr!1227 lt!14432) (toIndex!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!6461 (validMask!0 mask!853)))

(assert (=> d!6461 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) mask!853) (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853) lt!14643)))

(declare-fun b!39066 () Bool)

(assert (=> b!39066 (and (bvsge (index!2832 lt!14643) #b00000000000000000000000000000000) (bvslt (index!2832 lt!14643) (size!1334 lt!14432)))))

(declare-fun res!23514 () Bool)

(assert (=> b!39066 (= res!23514 (= (select (arr!1227 lt!14432) (index!2832 lt!14643)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!24807 () Bool)

(assert (=> b!39066 (=> res!23514 e!24807)))

(declare-fun b!39067 () Bool)

(declare-fun e!24810 () Bool)

(assert (=> b!39067 (= e!24806 e!24810)))

(declare-fun res!23513 () Bool)

(assert (=> b!39067 (= res!23513 (and ((_ is Intermediate!177) lt!14643) (not (undefined!989 lt!14643)) (bvslt (x!7613 lt!14643) #b01111111111111111111111111111110) (bvsge (x!7613 lt!14643) #b00000000000000000000000000000000) (bvsge (x!7613 lt!14643) #b00000000000000000000000000000000)))))

(assert (=> b!39067 (=> (not res!23513) (not e!24810))))

(declare-fun b!39068 () Bool)

(assert (=> b!39068 (and (bvsge (index!2832 lt!14643) #b00000000000000000000000000000000) (bvslt (index!2832 lt!14643) (size!1334 lt!14432)))))

(declare-fun res!23515 () Bool)

(assert (=> b!39068 (= res!23515 (= (select (arr!1227 lt!14432) (index!2832 lt!14643)) (select (arr!1227 lt!14432) #b00000000000000000000000000000000)))))

(assert (=> b!39068 (=> res!23515 e!24807)))

(assert (=> b!39068 (= e!24810 e!24807)))

(declare-fun b!39069 () Bool)

(declare-fun e!24808 () SeekEntryResult!177)

(assert (=> b!39069 (= e!24809 e!24808)))

(declare-fun c!4566 () Bool)

(assert (=> b!39069 (= c!4566 (or (= lt!14644 (select (arr!1227 lt!14432) #b00000000000000000000000000000000)) (= (bvadd lt!14644 lt!14644) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!39070 () Bool)

(assert (=> b!39070 (= e!24808 (Intermediate!177 false (toIndex!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!39071 () Bool)

(assert (=> b!39071 (= e!24808 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1227 lt!14432) #b00000000000000000000000000000000) lt!14432 mask!853))))

(declare-fun b!39072 () Bool)

(assert (=> b!39072 (= e!24806 (bvsge (x!7613 lt!14643) #b01111111111111111111111111111110))))

(declare-fun b!39073 () Bool)

(assert (=> b!39073 (and (bvsge (index!2832 lt!14643) #b00000000000000000000000000000000) (bvslt (index!2832 lt!14643) (size!1334 lt!14432)))))

(assert (=> b!39073 (= e!24807 (= (select (arr!1227 lt!14432) (index!2832 lt!14643)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!6461 c!4568) b!39065))

(assert (= (and d!6461 (not c!4568)) b!39069))

(assert (= (and b!39069 c!4566) b!39070))

(assert (= (and b!39069 (not c!4566)) b!39071))

(assert (= (and d!6461 c!4567) b!39072))

(assert (= (and d!6461 (not c!4567)) b!39067))

(assert (= (and b!39067 res!23513) b!39068))

(assert (= (and b!39068 (not res!23515)) b!39066))

(assert (= (and b!39066 (not res!23514)) b!39073))

(declare-fun m!31797 () Bool)

(assert (=> b!39066 m!31797))

(assert (=> b!39073 m!31797))

(assert (=> b!39071 m!31515))

(declare-fun m!31799 () Bool)

(assert (=> b!39071 m!31799))

(assert (=> b!39071 m!31799))

(assert (=> b!39071 m!31321))

(declare-fun m!31801 () Bool)

(assert (=> b!39071 m!31801))

(assert (=> b!39068 m!31797))

(assert (=> d!6461 m!31515))

(declare-fun m!31803 () Bool)

(assert (=> d!6461 m!31803))

(assert (=> d!6461 m!31277))

(assert (=> d!6347 d!6461))

(declare-fun d!6503 () Bool)

(declare-fun lt!14660 () (_ BitVec 32))

(declare-fun lt!14659 () (_ BitVec 32))

(assert (=> d!6503 (= lt!14660 (bvmul (bvxor lt!14659 (bvlshr lt!14659 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!6503 (= lt!14659 ((_ extract 31 0) (bvand (bvxor (select (arr!1227 lt!14432) #b00000000000000000000000000000000) (bvlshr (select (arr!1227 lt!14432) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!6503 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!23518 (let ((h!1627 ((_ extract 31 0) (bvand (bvxor (select (arr!1227 lt!14432) #b00000000000000000000000000000000) (bvlshr (select (arr!1227 lt!14432) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7629 (bvmul (bvxor h!1627 (bvlshr h!1627 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7629 (bvlshr x!7629 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!23518 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!23518 #b00000000000000000000000000000000))))))

(assert (=> d!6503 (= (toIndex!0 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!14660 (bvlshr lt!14660 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!6347 d!6503))

(assert (=> d!6347 d!6305))

(declare-fun b!39106 () Bool)

(declare-fun e!24831 () Bool)

(declare-fun e!24830 () Bool)

(assert (=> b!39106 (= e!24831 e!24830)))

(declare-fun c!4583 () Bool)

(assert (=> b!39106 (= c!4583 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39107 () Bool)

(declare-fun call!2957 () Bool)

(assert (=> b!39107 (= e!24830 call!2957)))

(declare-fun b!39108 () Bool)

(assert (=> b!39108 (= e!24830 call!2957)))

(declare-fun bm!2954 () Bool)

(assert (=> bm!2954 (= call!2957 (arrayNoDuplicates!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4583 (Cons!1056 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!4465 (Cons!1056 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057))) (ite c!4465 (Cons!1056 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)))))))

(declare-fun d!6515 () Bool)

(declare-fun res!23523 () Bool)

(declare-fun e!24832 () Bool)

(assert (=> d!6515 (=> res!23523 e!24832)))

(assert (=> d!6515 (= res!23523 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1334 lt!14432)))))

(assert (=> d!6515 (= (arrayNoDuplicates!0 lt!14432 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4465 (Cons!1056 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057))) e!24832)))

(declare-fun b!39109 () Bool)

(declare-fun e!24829 () Bool)

(assert (=> b!39109 (= e!24829 (contains!501 (ite c!4465 (Cons!1056 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39110 () Bool)

(assert (=> b!39110 (= e!24832 e!24831)))

(declare-fun res!23522 () Bool)

(assert (=> b!39110 (=> (not res!23522) (not e!24831))))

(assert (=> b!39110 (= res!23522 (not e!24829))))

(declare-fun res!23521 () Bool)

(assert (=> b!39110 (=> (not res!23521) (not e!24829))))

(assert (=> b!39110 (= res!23521 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!6515 (not res!23523)) b!39110))

(assert (= (and b!39110 res!23521) b!39109))

(assert (= (and b!39110 res!23522) b!39106))

(assert (= (and b!39106 c!4583) b!39108))

(assert (= (and b!39106 (not c!4583)) b!39107))

(assert (= (or b!39108 b!39107) bm!2954))

(assert (=> b!39106 m!31659))

(assert (=> b!39106 m!31659))

(assert (=> b!39106 m!31661))

(assert (=> bm!2954 m!31659))

(declare-fun m!31831 () Bool)

(assert (=> bm!2954 m!31831))

(assert (=> b!39109 m!31659))

(assert (=> b!39109 m!31659))

(declare-fun m!31833 () Bool)

(assert (=> b!39109 m!31833))

(assert (=> b!39110 m!31659))

(assert (=> b!39110 m!31659))

(assert (=> b!39110 m!31661))

(assert (=> bm!2927 d!6515))

(declare-fun bm!2955 () Bool)

(declare-fun call!2958 () Bool)

(assert (=> bm!2955 (= call!2958 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14432 mask!853))))

(declare-fun b!39112 () Bool)

(declare-fun e!24834 () Bool)

(assert (=> b!39112 (= e!24834 call!2958)))

(declare-fun b!39113 () Bool)

(declare-fun e!24835 () Bool)

(assert (=> b!39113 (= e!24835 e!24834)))

(declare-fun lt!14661 () (_ BitVec 64))

(assert (=> b!39113 (= lt!14661 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!14662 () Unit!956)

(assert (=> b!39113 (= lt!14662 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14432 lt!14661 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!39113 (arrayContainsKey!0 lt!14432 lt!14661 #b00000000000000000000000000000000)))

(declare-fun lt!14663 () Unit!956)

(assert (=> b!39113 (= lt!14663 lt!14662)))

(declare-fun res!23524 () Bool)

(assert (=> b!39113 (= res!23524 (= (seekEntryOrOpen!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!14432 mask!853) (Found!177 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!39113 (=> (not res!23524) (not e!24834))))

(declare-fun b!39114 () Bool)

(assert (=> b!39114 (= e!24835 call!2958)))

(declare-fun b!39111 () Bool)

(declare-fun e!24833 () Bool)

(assert (=> b!39111 (= e!24833 e!24835)))

(declare-fun c!4584 () Bool)

(assert (=> b!39111 (= c!4584 (validKeyInArray!0 (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!6519 () Bool)

(declare-fun res!23525 () Bool)

(assert (=> d!6519 (=> res!23525 e!24833)))

(assert (=> d!6519 (= res!23525 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1334 lt!14432)))))

(assert (=> d!6519 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14432 mask!853) e!24833)))

(assert (= (and d!6519 (not res!23525)) b!39111))

(assert (= (and b!39111 c!4584) b!39113))

(assert (= (and b!39111 (not c!4584)) b!39114))

(assert (= (and b!39113 res!23524) b!39112))

(assert (= (or b!39112 b!39114) bm!2955))

(declare-fun m!31835 () Bool)

(assert (=> bm!2955 m!31835))

(assert (=> b!39113 m!31659))

(declare-fun m!31837 () Bool)

(assert (=> b!39113 m!31837))

(declare-fun m!31839 () Bool)

(assert (=> b!39113 m!31839))

(assert (=> b!39113 m!31659))

(declare-fun m!31841 () Bool)

(assert (=> b!39113 m!31841))

(assert (=> b!39111 m!31659))

(assert (=> b!39111 m!31659))

(assert (=> b!39111 m!31661))

(assert (=> bm!2926 d!6519))

(declare-fun d!6521 () Bool)

(assert (not d!6521))

(assert (=> b!38721 d!6521))

(assert (=> b!38738 d!6397))

(declare-fun d!6523 () Bool)

(declare-fun lt!14664 () Bool)

(assert (=> d!6523 (= lt!14664 (select (content!25 (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!24837 () Bool)

(assert (=> d!6523 (= lt!14664 e!24837)))

(declare-fun res!23527 () Bool)

(assert (=> d!6523 (=> (not res!23527) (not e!24837))))

(assert (=> d!6523 (= res!23527 ((_ is Cons!1056) (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)))))

(assert (=> d!6523 (= (contains!501 (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!14664)))

(declare-fun b!39115 () Bool)

(declare-fun e!24836 () Bool)

(assert (=> b!39115 (= e!24837 e!24836)))

(declare-fun res!23526 () Bool)

(assert (=> b!39115 (=> res!23526 e!24836)))

(assert (=> b!39115 (= res!23526 (= (h!1624 (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39116 () Bool)

(assert (=> b!39116 (= e!24836 (contains!501 (t!3905 (ite c!4429 (Cons!1056 (select (arr!1227 lt!14432) #b00000000000000000000000000000000) Nil!1057) Nil!1057)) (select (arr!1227 lt!14432) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6523 res!23527) b!39115))

(assert (= (and b!39115 (not res!23526)) b!39116))

(declare-fun m!31843 () Bool)

(assert (=> d!6523 m!31843))

(assert (=> d!6523 m!31419))

(declare-fun m!31845 () Bool)

(assert (=> d!6523 m!31845))

(assert (=> b!39116 m!31419))

(declare-fun m!31847 () Bool)

(assert (=> b!39116 m!31847))

(assert (=> b!38737 d!6523))

(assert (=> d!6313 d!6295))

(assert (=> b!38732 d!6459))

(check-sat (not d!6435) (not b!38948) b_and!2331 (not b!38922) (not b!39071) (not d!6405) (not b!38992) (not b!39110) (not bm!2949) (not bm!2951) (not d!6461) (not b!38954) (not b!39106) (not b!39113) (not d!6431) (not b!39116) (not b!39005) (not b!38944) (not b!39008) (not b_next!1353) tp_is_empty!1743 (not b!39013) (not d!6445) (not b!39109) (not bm!2954) (not b!38935) (not bm!2948) (not b!39009) (not b!39111) (not d!6523) (not b!38912) (not d!6451) (not bm!2955) (not b!38933) (not d!6409) (not b_lambda!2035) (not d!6399) (not b!39011) (not bm!2946) (not b!38959))
(check-sat b_and!2331 (not b_next!1353))
