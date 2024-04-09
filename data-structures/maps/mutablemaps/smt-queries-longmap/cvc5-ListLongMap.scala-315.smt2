; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5368 () Bool)

(assert start!5368)

(declare-fun b_free!1351 () Bool)

(declare-fun b_next!1351 () Bool)

(assert (=> start!5368 (= b_free!1351 (not b_next!1351))))

(declare-fun tp!5714 () Bool)

(declare-fun b_and!2325 () Bool)

(assert (=> start!5368 (= tp!5714 b_and!2325)))

(declare-fun res!23272 () Bool)

(declare-fun e!24486 () Bool)

(assert (=> start!5368 (=> (not res!23272) (not e!24486))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5368 (= res!23272 (validMask!0 mask!853))))

(assert (=> start!5368 e!24486))

(assert (=> start!5368 true))

(assert (=> start!5368 tp!5714))

(declare-fun defaultEntry!470 () Int)

(declare-fun b!38550 () Bool)

(declare-datatypes ((array!2563 0))(
  ( (array!2564 (arr!1225 (Array (_ BitVec 32) (_ BitVec 64))) (size!1332 (_ BitVec 32))) )
))
(declare-fun lt!14417 () array!2563)

(declare-datatypes ((V!2081 0))(
  ( (V!2082 (val!909 Int)) )
))
(declare-fun lt!14415 () V!2081)

(declare-datatypes ((ValueCell!623 0))(
  ( (ValueCellFull!623 (v!1977 V!2081)) (EmptyCell!623) )
))
(declare-datatypes ((array!2565 0))(
  ( (array!2566 (arr!1226 (Array (_ BitVec 32) ValueCell!623)) (size!1333 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!226 0))(
  ( (LongMapFixedSize!227 (defaultEntry!1791 Int) (mask!5112 (_ BitVec 32)) (extraKeys!1682 (_ BitVec 32)) (zeroValue!1709 V!2081) (minValue!1709 V!2081) (_size!162 (_ BitVec 32)) (_keys!3244 array!2563) (_values!1774 array!2565) (_vacant!162 (_ BitVec 32))) )
))
(declare-fun valid!116 (LongMapFixedSize!226) Bool)

(assert (=> b!38550 (= e!24486 (not (valid!116 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-datatypes ((List!1059 0))(
  ( (Nil!1056) (Cons!1055 (h!1623 (_ BitVec 64)) (t!3902 List!1059)) )
))
(declare-fun arrayNoDuplicates!0 (array!2563 (_ BitVec 32) List!1059) Bool)

(assert (=> b!38550 (arrayNoDuplicates!0 lt!14417 #b00000000000000000000000000000000 Nil!1056)))

(declare-datatypes ((Unit!954 0))(
  ( (Unit!955) )
))
(declare-fun lt!14419 () Unit!954)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2563 (_ BitVec 32) (_ BitVec 32) List!1059) Unit!954)

(assert (=> b!38550 (= lt!14419 (lemmaArrayNoDuplicatesInAll0Array!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2563 (_ BitVec 32)) Bool)

(assert (=> b!38550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14417 mask!853)))

(declare-fun lt!14416 () Unit!954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2563 (_ BitVec 32) (_ BitVec 32)) Unit!954)

(assert (=> b!38550 (= lt!14416 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14417 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2563 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38550 (= (arrayCountValidKeys!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14418 () Unit!954)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2563 (_ BitVec 32) (_ BitVec 32)) Unit!954)

(assert (=> b!38550 (= lt!14418 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38550 (= lt!14417 (array!2564 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!184 (Int (_ BitVec 64)) V!2081)

(assert (=> b!38550 (= lt!14415 (dynLambda!184 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5368 res!23272) b!38550))

(declare-fun b_lambda!2029 () Bool)

(assert (=> (not b_lambda!2029) (not b!38550)))

(declare-fun t!3901 () Bool)

(declare-fun tb!829 () Bool)

(assert (=> (and start!5368 (= defaultEntry!470 defaultEntry!470) t!3901) tb!829))

(declare-fun result!1413 () Bool)

(declare-fun tp_is_empty!1741 () Bool)

(assert (=> tb!829 (= result!1413 tp_is_empty!1741)))

(assert (=> b!38550 t!3901))

(declare-fun b_and!2327 () Bool)

(assert (= b_and!2325 (and (=> t!3901 result!1413) b_and!2327)))

(declare-fun m!31259 () Bool)

(assert (=> start!5368 m!31259))

(declare-fun m!31261 () Bool)

(assert (=> b!38550 m!31261))

(declare-fun m!31263 () Bool)

(assert (=> b!38550 m!31263))

(declare-fun m!31265 () Bool)

(assert (=> b!38550 m!31265))

(declare-fun m!31267 () Bool)

(assert (=> b!38550 m!31267))

(declare-fun m!31269 () Bool)

(assert (=> b!38550 m!31269))

(declare-fun m!31271 () Bool)

(assert (=> b!38550 m!31271))

(declare-fun m!31273 () Bool)

(assert (=> b!38550 m!31273))

(declare-fun m!31275 () Bool)

(assert (=> b!38550 m!31275))

(push 1)

(assert (not b!38550))

(assert b_and!2327)

(assert (not b_next!1351))

(assert tp_is_empty!1741)

(assert (not b_lambda!2029))

(assert (not start!5368))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2327)

(assert (not b_next!1351))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2039 () Bool)

(assert (= b_lambda!2029 (or (and start!5368 b_free!1351) b_lambda!2039)))

(push 1)

(assert (not b!38550))

(assert b_and!2327)

(assert (not b_next!1351))

(assert (not start!5368))

(assert (not b_lambda!2039))

(assert tp_is_empty!1741)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2327)

(assert (not b_next!1351))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6259 () Bool)

(assert (=> d!6259 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5368 d!6259))

(declare-fun d!6269 () Bool)

(assert (=> d!6269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14417 mask!853)))

(declare-fun lt!14454 () Unit!954)

(declare-fun choose!34 (array!2563 (_ BitVec 32) (_ BitVec 32)) Unit!954)

(assert (=> d!6269 (= lt!14454 (choose!34 lt!14417 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!6269 (validMask!0 mask!853)))

(assert (=> d!6269 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14417 mask!853 #b00000000000000000000000000000000) lt!14454)))

(declare-fun bs!1594 () Bool)

(assert (= bs!1594 d!6269))

(assert (=> bs!1594 m!31271))

(declare-fun m!31329 () Bool)

(assert (=> bs!1594 m!31329))

(assert (=> bs!1594 m!31259))

(assert (=> b!38550 d!6269))

(declare-fun bm!2908 () Bool)

(declare-fun call!2911 () Bool)

(declare-fun c!4440 () Bool)

(assert (=> bm!2908 (= call!2911 (arrayNoDuplicates!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)))))

(declare-fun b!38628 () Bool)

(declare-fun e!24536 () Bool)

(declare-fun e!24534 () Bool)

(assert (=> b!38628 (= e!24536 e!24534)))

(declare-fun res!23320 () Bool)

(assert (=> b!38628 (=> (not res!23320) (not e!24534))))

(declare-fun e!24535 () Bool)

(assert (=> b!38628 (= res!23320 (not e!24535))))

(declare-fun res!23318 () Bool)

(assert (=> b!38628 (=> (not res!23318) (not e!24535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!38628 (= res!23318 (validKeyInArray!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(declare-fun b!38629 () Bool)

(declare-fun e!24533 () Bool)

(assert (=> b!38629 (= e!24534 e!24533)))

(assert (=> b!38629 (= c!4440 (validKeyInArray!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(declare-fun d!6271 () Bool)

(declare-fun res!23319 () Bool)

(assert (=> d!6271 (=> res!23319 e!24536)))

(assert (=> d!6271 (= res!23319 (bvsge #b00000000000000000000000000000000 (size!1332 lt!14417)))))

(assert (=> d!6271 (= (arrayNoDuplicates!0 lt!14417 #b00000000000000000000000000000000 Nil!1056) e!24536)))

(declare-fun b!38630 () Bool)

(assert (=> b!38630 (= e!24533 call!2911)))

(declare-fun b!38631 () Bool)

(declare-fun contains!502 (List!1059 (_ BitVec 64)) Bool)

(assert (=> b!38631 (= e!24535 (contains!502 Nil!1056 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(declare-fun b!38632 () Bool)

(assert (=> b!38632 (= e!24533 call!2911)))

(assert (= (and d!6271 (not res!23319)) b!38628))

(assert (= (and b!38628 res!23318) b!38631))

(assert (= (and b!38628 res!23320) b!38629))

(assert (= (and b!38629 c!4440) b!38632))

(assert (= (and b!38629 (not c!4440)) b!38630))

(assert (= (or b!38632 b!38630) bm!2908))

(declare-fun m!31347 () Bool)

(assert (=> bm!2908 m!31347))

(declare-fun m!31349 () Bool)

(assert (=> bm!2908 m!31349))

(assert (=> b!38628 m!31347))

(assert (=> b!38628 m!31347))

(declare-fun m!31351 () Bool)

(assert (=> b!38628 m!31351))

(assert (=> b!38629 m!31347))

(assert (=> b!38629 m!31347))

(assert (=> b!38629 m!31351))

(assert (=> b!38631 m!31347))

(assert (=> b!38631 m!31347))

(declare-fun m!31353 () Bool)

(assert (=> b!38631 m!31353))

(assert (=> b!38550 d!6271))

(declare-fun d!6279 () Bool)

(assert (=> d!6279 (= (arrayCountValidKeys!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14461 () Unit!954)

(declare-fun choose!59 (array!2563 (_ BitVec 32) (_ BitVec 32)) Unit!954)

(assert (=> d!6279 (= lt!14461 (choose!59 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6279 (bvslt (size!1332 lt!14417) #b01111111111111111111111111111111)))

(assert (=> d!6279 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14461)))

(declare-fun bs!1596 () Bool)

(assert (= bs!1596 d!6279))

(assert (=> bs!1596 m!31267))

(declare-fun m!31359 () Bool)

(assert (=> bs!1596 m!31359))

(assert (=> b!38550 d!6279))

(declare-fun d!6283 () Bool)

(assert (=> d!6283 (arrayNoDuplicates!0 lt!14417 #b00000000000000000000000000000000 Nil!1056)))

(declare-fun lt!14470 () Unit!954)

(declare-fun choose!111 (array!2563 (_ BitVec 32) (_ BitVec 32) List!1059) Unit!954)

(assert (=> d!6283 (= lt!14470 (choose!111 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1056))))

(assert (=> d!6283 (= (size!1332 lt!14417) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!6283 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1056) lt!14470)))

(declare-fun bs!1597 () Bool)

(assert (= bs!1597 d!6283))

(assert (=> bs!1597 m!31275))

(declare-fun m!31361 () Bool)

(assert (=> bs!1597 m!31361))

(assert (=> b!38550 d!6283))

(declare-fun bm!2918 () Bool)

(declare-fun call!2921 () (_ BitVec 32))

(assert (=> bm!2918 (= call!2921 (arrayCountValidKeys!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38670 () Bool)

(declare-fun e!24564 () (_ BitVec 32))

(assert (=> b!38670 (= e!24564 call!2921)))

(declare-fun b!38671 () Bool)

(declare-fun e!24563 () (_ BitVec 32))

(assert (=> b!38671 (= e!24563 e!24564)))

(declare-fun c!4452 () Bool)

(assert (=> b!38671 (= c!4452 (validKeyInArray!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(declare-fun d!6285 () Bool)

(declare-fun lt!14488 () (_ BitVec 32))

(assert (=> d!6285 (and (bvsge lt!14488 #b00000000000000000000000000000000) (bvsle lt!14488 (bvsub (size!1332 lt!14417) #b00000000000000000000000000000000)))))

(assert (=> d!6285 (= lt!14488 e!24563)))

(declare-fun c!4453 () Bool)

(assert (=> d!6285 (= c!4453 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6285 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1332 lt!14417)))))

(assert (=> d!6285 (= (arrayCountValidKeys!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14488)))

(declare-fun b!38672 () Bool)

(assert (=> b!38672 (= e!24564 (bvadd #b00000000000000000000000000000001 call!2921))))

(declare-fun b!38673 () Bool)

(assert (=> b!38673 (= e!24563 #b00000000000000000000000000000000)))

(assert (= (and d!6285 c!4453) b!38673))

(assert (= (and d!6285 (not c!4453)) b!38671))

(assert (= (and b!38671 c!4452) b!38672))

(assert (= (and b!38671 (not c!4452)) b!38670))

(assert (= (or b!38672 b!38670) bm!2918))

(declare-fun m!31381 () Bool)

(assert (=> bm!2918 m!31381))

(assert (=> b!38671 m!31347))

(assert (=> b!38671 m!31347))

(assert (=> b!38671 m!31351))

(assert (=> b!38550 d!6285))

(declare-fun d!6293 () Bool)

(declare-fun res!23342 () Bool)

(declare-fun e!24571 () Bool)

(assert (=> d!6293 (=> (not res!23342) (not e!24571))))

(declare-fun simpleValid!22 (LongMapFixedSize!226) Bool)

(assert (=> d!6293 (= res!23342 (simpleValid!22 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(assert (=> d!6293 (= (valid!116 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) e!24571)))

(declare-fun b!38688 () Bool)

(declare-fun res!23343 () Bool)

(assert (=> b!38688 (=> (not res!23343) (not e!24571))))

(assert (=> b!38688 (= res!23343 (= (arrayCountValidKeys!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (_size!162 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38689 () Bool)

(declare-fun res!23344 () Bool)

(assert (=> b!38689 (=> (not res!23344) (not e!24571))))

(assert (=> b!38689 (= res!23344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38690 () Bool)

(assert (=> b!38690 (= e!24571 (arrayNoDuplicates!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 Nil!1056))))

(assert (= (and d!6293 res!23342) b!38688))

(assert (= (and b!38688 res!23343) b!38689))

(assert (= (and b!38689 res!23344) b!38690))

(declare-fun m!31389 () Bool)

(assert (=> d!6293 m!31389))

(declare-fun m!31391 () Bool)

(assert (=> b!38688 m!31391))

(declare-fun m!31393 () Bool)

(assert (=> b!38689 m!31393))

(declare-fun m!31395 () Bool)

(assert (=> b!38690 m!31395))

(assert (=> b!38550 d!6293))

(declare-fun b!38703 () Bool)

(declare-fun e!24581 () Bool)

(declare-fun call!2927 () Bool)

(assert (=> b!38703 (= e!24581 call!2927)))

(declare-fun d!6301 () Bool)

(declare-fun res!23349 () Bool)

(declare-fun e!24582 () Bool)

(assert (=> d!6301 (=> res!23349 e!24582)))

(assert (=> d!6301 (= res!23349 (bvsge #b00000000000000000000000000000000 (size!1332 lt!14417)))))

(assert (=> d!6301 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14417 mask!853) e!24582)))

(declare-fun bm!2924 () Bool)

(assert (=> bm!2924 (= call!2927 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14417 mask!853))))

(declare-fun b!38704 () Bool)

(declare-fun e!24580 () Bool)

(assert (=> b!38704 (= e!24581 e!24580)))

(declare-fun lt!14510 () (_ BitVec 64))

(assert (=> b!38704 (= lt!14510 (select (arr!1225 lt!14417) #b00000000000000000000000000000000))))

(declare-fun lt!14512 () Unit!954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2563 (_ BitVec 64) (_ BitVec 32)) Unit!954)

(assert (=> b!38704 (= lt!14512 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14417 lt!14510 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!38704 (arrayContainsKey!0 lt!14417 lt!14510 #b00000000000000000000000000000000)))

(declare-fun lt!14511 () Unit!954)

(assert (=> b!38704 (= lt!14511 lt!14512)))

(declare-fun res!23350 () Bool)

(declare-datatypes ((SeekEntryResult!179 0))(
  ( (MissingZero!179 (index!2838 (_ BitVec 32))) (Found!179 (index!2839 (_ BitVec 32))) (Intermediate!179 (undefined!991 Bool) (index!2840 (_ BitVec 32)) (x!7615 (_ BitVec 32))) (Undefined!179) (MissingVacant!179 (index!2841 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2563 (_ BitVec 32)) SeekEntryResult!179)

(assert (=> b!38704 (= res!23350 (= (seekEntryOrOpen!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853) (Found!179 #b00000000000000000000000000000000)))))

(assert (=> b!38704 (=> (not res!23350) (not e!24580))))

(declare-fun b!38705 () Bool)

(assert (=> b!38705 (= e!24580 call!2927)))

(declare-fun b!38706 () Bool)

(assert (=> b!38706 (= e!24582 e!24581)))

(declare-fun c!4462 () Bool)

(assert (=> b!38706 (= c!4462 (validKeyInArray!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(assert (= (and d!6301 (not res!23349)) b!38706))

(assert (= (and b!38706 c!4462) b!38704))

(assert (= (and b!38706 (not c!4462)) b!38703))

(assert (= (and b!38704 res!23350) b!38705))

(assert (= (or b!38705 b!38703) bm!2924))

(declare-fun m!31401 () Bool)

(assert (=> bm!2924 m!31401))

(assert (=> b!38704 m!31347))

(declare-fun m!31403 () Bool)

(assert (=> b!38704 m!31403))

(declare-fun m!31405 () Bool)

(assert (=> b!38704 m!31405))

(assert (=> b!38704 m!31347))

(declare-fun m!31407 () Bool)

(assert (=> b!38704 m!31407))

(assert (=> b!38706 m!31347))

(assert (=> b!38706 m!31347))

(assert (=> b!38706 m!31351))

(assert (=> b!38550 d!6301))

(push 1)

(assert (not b!38631))

(assert (not b!38689))

(assert (not b!38671))

(assert (not b!38706))

(assert (not bm!2924))

(assert b_and!2327)

(assert (not b!38690))

(assert (not b_next!1351))

(assert (not bm!2918))

(assert (not bm!2908))

(assert (not b!38688))

(assert (not d!6279))

(assert (not b!38629))

(assert (not d!6269))

(assert (not b!38628))

(assert (not d!6283))

(assert (not d!6293))

(assert (not b!38704))

(assert (not b_lambda!2039))

(assert tp_is_empty!1741)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2327)

(assert (not b_next!1351))

(check-sat)

(get-model)

(pop 1)

(assert (=> d!6283 d!6271))

(declare-fun d!6323 () Bool)

(assert (=> d!6323 (arrayNoDuplicates!0 lt!14417 #b00000000000000000000000000000000 Nil!1056)))

(assert (=> d!6323 true))

(declare-fun res!23382 () Unit!954)

(assert (=> d!6323 (= (choose!111 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1056) res!23382)))

(declare-fun bs!1605 () Bool)

(assert (= bs!1605 d!6323))

(assert (=> bs!1605 m!31275))

(assert (=> d!6283 d!6323))

(assert (=> d!6269 d!6301))

(declare-fun d!6327 () Bool)

(assert (=> d!6327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14417 mask!853)))

(assert (=> d!6327 true))

(declare-fun _$30!36 () Unit!954)

(assert (=> d!6327 (= (choose!34 lt!14417 mask!853 #b00000000000000000000000000000000) _$30!36)))

(declare-fun bs!1607 () Bool)

(assert (= bs!1607 d!6327))

(assert (=> bs!1607 m!31271))

(assert (=> d!6269 d!6327))

(assert (=> d!6269 d!6259))

(declare-fun call!2932 () (_ BitVec 32))

(declare-fun bm!2929 () Bool)

(assert (=> bm!2929 (= call!2932 (arrayCountValidKeys!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun b!38743 () Bool)

(declare-fun e!24607 () (_ BitVec 32))

(assert (=> b!38743 (= e!24607 call!2932)))

(declare-fun b!38744 () Bool)

(declare-fun e!24606 () (_ BitVec 32))

(assert (=> b!38744 (= e!24606 e!24607)))

(declare-fun c!4467 () Bool)

(assert (=> b!38744 (= c!4467 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun d!6331 () Bool)

(declare-fun lt!14522 () (_ BitVec 32))

(assert (=> d!6331 (and (bvsge lt!14522 #b00000000000000000000000000000000) (bvsle lt!14522 (bvsub (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (=> d!6331 (= lt!14522 e!24606)))

(declare-fun c!4468 () Bool)

(assert (=> d!6331 (= c!4468 (bvsge #b00000000000000000000000000000000 (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6331 (and (bvsle #b00000000000000000000000000000000 (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6331 (= (arrayCountValidKeys!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) lt!14522)))

(declare-fun b!38745 () Bool)

(assert (=> b!38745 (= e!24607 (bvadd #b00000000000000000000000000000001 call!2932))))

(declare-fun b!38746 () Bool)

(assert (=> b!38746 (= e!24606 #b00000000000000000000000000000000)))

(assert (= (and d!6331 c!4468) b!38746))

(assert (= (and d!6331 (not c!4468)) b!38744))

(assert (= (and b!38744 c!4467) b!38745))

(assert (= (and b!38744 (not c!4467)) b!38743))

(assert (= (or b!38745 b!38743) bm!2929))

(declare-fun m!31451 () Bool)

(assert (=> bm!2929 m!31451))

(declare-fun m!31453 () Bool)

(assert (=> b!38744 m!31453))

(assert (=> b!38744 m!31453))

(declare-fun m!31455 () Bool)

(assert (=> b!38744 m!31455))

(assert (=> b!38688 d!6331))

(declare-fun bm!2931 () Bool)

(declare-fun call!2934 () (_ BitVec 32))

(assert (=> bm!2931 (= call!2934 (arrayCountValidKeys!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38751 () Bool)

(declare-fun e!24611 () (_ BitVec 32))

(assert (=> b!38751 (= e!24611 call!2934)))

(declare-fun b!38752 () Bool)

(declare-fun e!24610 () (_ BitVec 32))

(assert (=> b!38752 (= e!24610 e!24611)))

(declare-fun c!4471 () Bool)

(assert (=> b!38752 (= c!4471 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6335 () Bool)

(declare-fun lt!14524 () (_ BitVec 32))

(assert (=> d!6335 (and (bvsge lt!14524 #b00000000000000000000000000000000) (bvsle lt!14524 (bvsub (size!1332 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!6335 (= lt!14524 e!24610)))

(declare-fun c!4472 () Bool)

(assert (=> d!6335 (= c!4472 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6335 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1332 lt!14417)))))

(assert (=> d!6335 (= (arrayCountValidKeys!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!14524)))

(declare-fun b!38753 () Bool)

(assert (=> b!38753 (= e!24611 (bvadd #b00000000000000000000000000000001 call!2934))))

(declare-fun b!38754 () Bool)

(assert (=> b!38754 (= e!24610 #b00000000000000000000000000000000)))

(assert (= (and d!6335 c!4472) b!38754))

(assert (= (and d!6335 (not c!4472)) b!38752))

(assert (= (and b!38752 c!4471) b!38753))

(assert (= (and b!38752 (not c!4471)) b!38751))

(assert (= (or b!38753 b!38751) bm!2931))

(declare-fun m!31459 () Bool)

(assert (=> bm!2931 m!31459))

(declare-fun m!31461 () Bool)

(assert (=> b!38752 m!31461))

(assert (=> b!38752 m!31461))

(declare-fun m!31463 () Bool)

(assert (=> b!38752 m!31463))

(assert (=> bm!2918 d!6335))

(declare-fun b!38755 () Bool)

(declare-fun e!24613 () Bool)

(declare-fun call!2935 () Bool)

(assert (=> b!38755 (= e!24613 call!2935)))

(declare-fun d!6339 () Bool)

(declare-fun res!23385 () Bool)

(declare-fun e!24614 () Bool)

(assert (=> d!6339 (=> res!23385 e!24614)))

(assert (=> d!6339 (= res!23385 (bvsge #b00000000000000000000000000000000 (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6339 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) e!24614)))

(declare-fun bm!2932 () Bool)

(assert (=> bm!2932 (= call!2935 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38756 () Bool)

(declare-fun e!24612 () Bool)

(assert (=> b!38756 (= e!24613 e!24612)))

(declare-fun lt!14525 () (_ BitVec 64))

(assert (=> b!38756 (= lt!14525 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!14527 () Unit!954)

(assert (=> b!38756 (= lt!14527 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14525 #b00000000000000000000000000000000))))

(assert (=> b!38756 (arrayContainsKey!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14525 #b00000000000000000000000000000000)))

(declare-fun lt!14526 () Unit!954)

(assert (=> b!38756 (= lt!14526 lt!14527)))

(declare-fun res!23386 () Bool)

(assert (=> b!38756 (= res!23386 (= (seekEntryOrOpen!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (Found!179 #b00000000000000000000000000000000)))))

(assert (=> b!38756 (=> (not res!23386) (not e!24612))))

(declare-fun b!38757 () Bool)

(assert (=> b!38757 (= e!24612 call!2935)))

(declare-fun b!38758 () Bool)

(assert (=> b!38758 (= e!24614 e!24613)))

(declare-fun c!4473 () Bool)

(assert (=> b!38758 (= c!4473 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (= (and d!6339 (not res!23385)) b!38758))

(assert (= (and b!38758 c!4473) b!38756))

(assert (= (and b!38758 (not c!4473)) b!38755))

(assert (= (and b!38756 res!23386) b!38757))

(assert (= (or b!38757 b!38755) bm!2932))

(declare-fun m!31465 () Bool)

(assert (=> bm!2932 m!31465))

(assert (=> b!38756 m!31453))

(declare-fun m!31467 () Bool)

(assert (=> b!38756 m!31467))

(declare-fun m!31469 () Bool)

(assert (=> b!38756 m!31469))

(assert (=> b!38756 m!31453))

(declare-fun m!31471 () Bool)

(assert (=> b!38756 m!31471))

(assert (=> b!38758 m!31453))

(assert (=> b!38758 m!31453))

(assert (=> b!38758 m!31455))

(assert (=> b!38689 d!6339))

(declare-fun d!6341 () Bool)

(assert (=> d!6341 (= (validKeyInArray!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)) (and (not (= (select (arr!1225 lt!14417) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1225 lt!14417) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38671 d!6341))

(declare-fun b!38773 () Bool)

(declare-fun res!23403 () Bool)

(declare-fun e!24623 () Bool)

(assert (=> b!38773 (=> (not res!23403) (not e!24623))))

(assert (=> b!38773 (= res!23403 (and (= (size!1333 (_values!1774 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001)) (= (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1333 (_values!1774 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge (_size!162 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (bvsle (_size!162 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001))))))

(declare-fun d!6345 () Bool)

(declare-fun res!23402 () Bool)

(assert (=> d!6345 (=> (not res!23402) (not e!24623))))

(assert (=> d!6345 (= res!23402 (validMask!0 (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (=> d!6345 (= (simpleValid!22 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) e!24623)))

(declare-fun b!38776 () Bool)

(assert (=> b!38776 (= e!24623 (and (bvsge (extraKeys!1682 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (bvsle (extraKeys!1682 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000011) (bvsge (_vacant!162 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000)))))

(declare-fun b!38775 () Bool)

(declare-fun res!23404 () Bool)

(assert (=> b!38775 (=> (not res!23404) (not e!24623))))

(declare-fun size!1351 (LongMapFixedSize!226) (_ BitVec 32))

(assert (=> b!38775 (= res!23404 (= (size!1351 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (_size!162 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvsdiv (bvadd (extraKeys!1682 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!38774 () Bool)

(declare-fun res!23401 () Bool)

(assert (=> b!38774 (=> (not res!23401) (not e!24623))))

(assert (=> b!38774 (= res!23401 (bvsge (size!1351 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_size!162 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (= (and d!6345 res!23402) b!38773))

(assert (= (and b!38773 res!23403) b!38774))

(assert (= (and b!38774 res!23401) b!38775))

(assert (= (and b!38775 res!23404) b!38776))

(declare-fun m!31477 () Bool)

(assert (=> d!6345 m!31477))

(declare-fun m!31479 () Bool)

(assert (=> b!38775 m!31479))

(assert (=> b!38774 m!31479))

(assert (=> d!6293 d!6345))

(assert (=> d!6279 d!6285))

(declare-fun d!6349 () Bool)

(assert (=> d!6349 (= (arrayCountValidKeys!0 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!6349 true))

(declare-fun _$88!22 () Unit!954)

(assert (=> d!6349 (= (choose!59 lt!14417 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!22)))

(declare-fun bs!1609 () Bool)

(assert (= bs!1609 d!6349))

(assert (=> bs!1609 m!31267))

(assert (=> d!6279 d!6349))

(declare-fun d!6353 () Bool)

(assert (=> d!6353 (arrayContainsKey!0 lt!14417 lt!14510 #b00000000000000000000000000000000)))

(declare-fun lt!14535 () Unit!954)

(declare-fun choose!13 (array!2563 (_ BitVec 64) (_ BitVec 32)) Unit!954)

(assert (=> d!6353 (= lt!14535 (choose!13 lt!14417 lt!14510 #b00000000000000000000000000000000))))

(assert (=> d!6353 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6353 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14417 lt!14510 #b00000000000000000000000000000000) lt!14535)))

(declare-fun bs!1610 () Bool)

(assert (= bs!1610 d!6353))

(assert (=> bs!1610 m!31405))

(declare-fun m!31493 () Bool)

(assert (=> bs!1610 m!31493))

(assert (=> b!38704 d!6353))

(declare-fun d!6359 () Bool)

(declare-fun res!23414 () Bool)

(declare-fun e!24635 () Bool)

(assert (=> d!6359 (=> res!23414 e!24635)))

(assert (=> d!6359 (= res!23414 (= (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14510))))

(assert (=> d!6359 (= (arrayContainsKey!0 lt!14417 lt!14510 #b00000000000000000000000000000000) e!24635)))

(declare-fun b!38793 () Bool)

(declare-fun e!24636 () Bool)

(assert (=> b!38793 (= e!24635 e!24636)))

(declare-fun res!23415 () Bool)

(assert (=> b!38793 (=> (not res!23415) (not e!24636))))

(assert (=> b!38793 (= res!23415 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 lt!14417)))))

(declare-fun b!38794 () Bool)

(assert (=> b!38794 (= e!24636 (arrayContainsKey!0 lt!14417 lt!14510 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6359 (not res!23414)) b!38793))

(assert (= (and b!38793 res!23415) b!38794))

(assert (=> d!6359 m!31347))

(declare-fun m!31503 () Bool)

(assert (=> b!38794 m!31503))

(assert (=> b!38704 d!6359))

(declare-fun b!38845 () Bool)

(declare-fun e!24668 () SeekEntryResult!179)

(declare-fun e!24670 () SeekEntryResult!179)

(assert (=> b!38845 (= e!24668 e!24670)))

(declare-fun lt!14559 () (_ BitVec 64))

(declare-fun lt!14560 () SeekEntryResult!179)

(assert (=> b!38845 (= lt!14559 (select (arr!1225 lt!14417) (index!2840 lt!14560)))))

(declare-fun c!4500 () Bool)

(assert (=> b!38845 (= c!4500 (= lt!14559 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(declare-fun e!24669 () SeekEntryResult!179)

(declare-fun b!38846 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2563 (_ BitVec 32)) SeekEntryResult!179)

(assert (=> b!38846 (= e!24669 (seekKeyOrZeroReturnVacant!0 (x!7615 lt!14560) (index!2840 lt!14560) (index!2840 lt!14560) (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853))))

(declare-fun b!38847 () Bool)

(assert (=> b!38847 (= e!24670 (Found!179 (index!2840 lt!14560)))))

(declare-fun b!38849 () Bool)

(declare-fun c!4498 () Bool)

(assert (=> b!38849 (= c!4498 (= lt!14559 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!38849 (= e!24670 e!24669)))

(declare-fun b!38850 () Bool)

(assert (=> b!38850 (= e!24669 (MissingZero!179 (index!2840 lt!14560)))))

(declare-fun d!6367 () Bool)

(declare-fun lt!14558 () SeekEntryResult!179)

(assert (=> d!6367 (and (or (is-Undefined!179 lt!14558) (not (is-Found!179 lt!14558)) (and (bvsge (index!2839 lt!14558) #b00000000000000000000000000000000) (bvslt (index!2839 lt!14558) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14558) (is-Found!179 lt!14558) (not (is-MissingZero!179 lt!14558)) (and (bvsge (index!2838 lt!14558) #b00000000000000000000000000000000) (bvslt (index!2838 lt!14558) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14558) (is-Found!179 lt!14558) (is-MissingZero!179 lt!14558) (not (is-MissingVacant!179 lt!14558)) (and (bvsge (index!2841 lt!14558) #b00000000000000000000000000000000) (bvslt (index!2841 lt!14558) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14558) (ite (is-Found!179 lt!14558) (= (select (arr!1225 lt!14417) (index!2839 lt!14558)) (select (arr!1225 lt!14417) #b00000000000000000000000000000000)) (ite (is-MissingZero!179 lt!14558) (= (select (arr!1225 lt!14417) (index!2838 lt!14558)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!179 lt!14558) (= (select (arr!1225 lt!14417) (index!2841 lt!14558)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6367 (= lt!14558 e!24668)))

(declare-fun c!4499 () Bool)

(assert (=> d!6367 (= c!4499 (and (is-Intermediate!179 lt!14560) (undefined!991 lt!14560)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2563 (_ BitVec 32)) SeekEntryResult!179)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!6367 (= lt!14560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) mask!853) (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853))))

(assert (=> d!6367 (validMask!0 mask!853)))

(assert (=> d!6367 (= (seekEntryOrOpen!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853) lt!14558)))

(declare-fun b!38848 () Bool)

(assert (=> b!38848 (= e!24668 Undefined!179)))

(assert (= (and d!6367 c!4499) b!38848))

(assert (= (and d!6367 (not c!4499)) b!38845))

(assert (= (and b!38845 c!4500) b!38847))

(assert (= (and b!38845 (not c!4500)) b!38849))

(assert (= (and b!38849 c!4498) b!38850))

(assert (= (and b!38849 (not c!4498)) b!38846))

(declare-fun m!31533 () Bool)

(assert (=> b!38845 m!31533))

(assert (=> b!38846 m!31347))

(declare-fun m!31535 () Bool)

(assert (=> b!38846 m!31535))

(declare-fun m!31537 () Bool)

(assert (=> d!6367 m!31537))

(assert (=> d!6367 m!31347))

(declare-fun m!31539 () Bool)

(assert (=> d!6367 m!31539))

(assert (=> d!6367 m!31259))

(declare-fun m!31541 () Bool)

(assert (=> d!6367 m!31541))

(assert (=> d!6367 m!31347))

(assert (=> d!6367 m!31537))

(declare-fun m!31543 () Bool)

(assert (=> d!6367 m!31543))

(declare-fun m!31545 () Bool)

(assert (=> d!6367 m!31545))

(assert (=> b!38704 d!6367))

(declare-fun bm!2939 () Bool)

(declare-fun call!2942 () Bool)

(declare-fun c!4501 () Bool)

(assert (=> bm!2939 (= call!2942 (arrayNoDuplicates!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4501 (Cons!1055 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056))))))

(declare-fun b!38851 () Bool)

(declare-fun e!24674 () Bool)

(declare-fun e!24672 () Bool)

(assert (=> b!38851 (= e!24674 e!24672)))

(declare-fun res!23430 () Bool)

(assert (=> b!38851 (=> (not res!23430) (not e!24672))))

(declare-fun e!24673 () Bool)

(assert (=> b!38851 (= res!23430 (not e!24673))))

(declare-fun res!23428 () Bool)

(assert (=> b!38851 (=> (not res!23428) (not e!24673))))

(assert (=> b!38851 (= res!23428 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38852 () Bool)

(declare-fun e!24671 () Bool)

(assert (=> b!38852 (= e!24672 e!24671)))

(assert (=> b!38852 (= c!4501 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6381 () Bool)

(declare-fun res!23429 () Bool)

(assert (=> d!6381 (=> res!23429 e!24674)))

(assert (=> d!6381 (= res!23429 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 lt!14417)))))

(assert (=> d!6381 (= (arrayNoDuplicates!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) e!24674)))

(declare-fun b!38853 () Bool)

(assert (=> b!38853 (= e!24671 call!2942)))

(declare-fun b!38854 () Bool)

(assert (=> b!38854 (= e!24673 (contains!502 (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38855 () Bool)

(assert (=> b!38855 (= e!24671 call!2942)))

(assert (= (and d!6381 (not res!23429)) b!38851))

(assert (= (and b!38851 res!23428) b!38854))

(assert (= (and b!38851 res!23430) b!38852))

(assert (= (and b!38852 c!4501) b!38855))

(assert (= (and b!38852 (not c!4501)) b!38853))

(assert (= (or b!38855 b!38853) bm!2939))

(assert (=> bm!2939 m!31461))

(declare-fun m!31547 () Bool)

(assert (=> bm!2939 m!31547))

(assert (=> b!38851 m!31461))

(assert (=> b!38851 m!31461))

(assert (=> b!38851 m!31463))

(assert (=> b!38852 m!31461))

(assert (=> b!38852 m!31461))

(assert (=> b!38852 m!31463))

(assert (=> b!38854 m!31461))

(assert (=> b!38854 m!31461))

(declare-fun m!31549 () Bool)

(assert (=> b!38854 m!31549))

(assert (=> bm!2908 d!6381))

(declare-fun bm!2940 () Bool)

(declare-fun c!4502 () Bool)

(declare-fun call!2943 () Bool)

(assert (=> bm!2940 (= call!2943 (arrayNoDuplicates!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4502 (Cons!1055 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1056) Nil!1056)))))

(declare-fun b!38856 () Bool)

(declare-fun e!24678 () Bool)

(declare-fun e!24676 () Bool)

(assert (=> b!38856 (= e!24678 e!24676)))

(declare-fun res!23433 () Bool)

(assert (=> b!38856 (=> (not res!23433) (not e!24676))))

(declare-fun e!24677 () Bool)

(assert (=> b!38856 (= res!23433 (not e!24677))))

(declare-fun res!23431 () Bool)

(assert (=> b!38856 (=> (not res!23431) (not e!24677))))

(assert (=> b!38856 (= res!23431 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38857 () Bool)

(declare-fun e!24675 () Bool)

(assert (=> b!38857 (= e!24676 e!24675)))

(assert (=> b!38857 (= c!4502 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun d!6383 () Bool)

(declare-fun res!23432 () Bool)

(assert (=> d!6383 (=> res!23432 e!24678)))

(assert (=> d!6383 (= res!23432 (bvsge #b00000000000000000000000000000000 (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6383 (= (arrayNoDuplicates!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 Nil!1056) e!24678)))

(declare-fun b!38858 () Bool)

(assert (=> b!38858 (= e!24675 call!2943)))

(declare-fun b!38859 () Bool)

(assert (=> b!38859 (= e!24677 (contains!502 Nil!1056 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38860 () Bool)

(assert (=> b!38860 (= e!24675 call!2943)))

(assert (= (and d!6383 (not res!23432)) b!38856))

(assert (= (and b!38856 res!23431) b!38859))

(assert (= (and b!38856 res!23433) b!38857))

(assert (= (and b!38857 c!4502) b!38860))

(assert (= (and b!38857 (not c!4502)) b!38858))

(assert (= (or b!38860 b!38858) bm!2940))

(assert (=> bm!2940 m!31453))

(declare-fun m!31551 () Bool)

(assert (=> bm!2940 m!31551))

(assert (=> b!38856 m!31453))

(assert (=> b!38856 m!31453))

(assert (=> b!38856 m!31455))

(assert (=> b!38857 m!31453))

(assert (=> b!38857 m!31453))

(assert (=> b!38857 m!31455))

(assert (=> b!38859 m!31453))

(assert (=> b!38859 m!31453))

(declare-fun m!31553 () Bool)

(assert (=> b!38859 m!31553))

(assert (=> b!38690 d!6383))

(declare-fun b!38861 () Bool)

(declare-fun e!24680 () Bool)

(declare-fun call!2944 () Bool)

(assert (=> b!38861 (= e!24680 call!2944)))

(declare-fun d!6385 () Bool)

(declare-fun res!23434 () Bool)

(declare-fun e!24681 () Bool)

(assert (=> d!6385 (=> res!23434 e!24681)))

(assert (=> d!6385 (= res!23434 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 lt!14417)))))

(assert (=> d!6385 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14417 mask!853) e!24681)))

(declare-fun bm!2941 () Bool)

(assert (=> bm!2941 (= call!2944 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14417 mask!853))))

(declare-fun b!38862 () Bool)

(declare-fun e!24679 () Bool)

(assert (=> b!38862 (= e!24680 e!24679)))

(declare-fun lt!14561 () (_ BitVec 64))

(assert (=> b!38862 (= lt!14561 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14563 () Unit!954)

(assert (=> b!38862 (= lt!14563 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14417 lt!14561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!38862 (arrayContainsKey!0 lt!14417 lt!14561 #b00000000000000000000000000000000)))

(declare-fun lt!14562 () Unit!954)

(assert (=> b!38862 (= lt!14562 lt!14563)))

(declare-fun res!23435 () Bool)

(assert (=> b!38862 (= res!23435 (= (seekEntryOrOpen!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14417 mask!853) (Found!179 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!38862 (=> (not res!23435) (not e!24679))))

(declare-fun b!38863 () Bool)

(assert (=> b!38863 (= e!24679 call!2944)))

(declare-fun b!38864 () Bool)

(assert (=> b!38864 (= e!24681 e!24680)))

(declare-fun c!4503 () Bool)

(assert (=> b!38864 (= c!4503 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6385 (not res!23434)) b!38864))

(assert (= (and b!38864 c!4503) b!38862))

(assert (= (and b!38864 (not c!4503)) b!38861))

(assert (= (and b!38862 res!23435) b!38863))

(assert (= (or b!38863 b!38861) bm!2941))

(declare-fun m!31555 () Bool)

(assert (=> bm!2941 m!31555))

(assert (=> b!38862 m!31461))

(declare-fun m!31557 () Bool)

(assert (=> b!38862 m!31557))

(declare-fun m!31559 () Bool)

(assert (=> b!38862 m!31559))

(assert (=> b!38862 m!31461))

(declare-fun m!31561 () Bool)

(assert (=> b!38862 m!31561))

(assert (=> b!38864 m!31461))

(assert (=> b!38864 m!31461))

(assert (=> b!38864 m!31463))

(assert (=> bm!2924 d!6385))

(assert (=> b!38628 d!6341))

(assert (=> b!38706 d!6341))

(assert (=> b!38629 d!6341))

(declare-fun d!6387 () Bool)

(declare-fun lt!14572 () Bool)

(declare-fun content!26 (List!1059) (Set (_ BitVec 64)))

(assert (=> d!6387 (= lt!14572 (set.member (select (arr!1225 lt!14417) #b00000000000000000000000000000000) (content!26 Nil!1056)))))

(declare-fun e!24693 () Bool)

(assert (=> d!6387 (= lt!14572 e!24693)))

(declare-fun res!23441 () Bool)

(assert (=> d!6387 (=> (not res!23441) (not e!24693))))

(assert (=> d!6387 (= res!23441 (is-Cons!1055 Nil!1056))))

(assert (=> d!6387 (= (contains!502 Nil!1056 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)) lt!14572)))

(declare-fun b!38881 () Bool)

(declare-fun e!24692 () Bool)

(assert (=> b!38881 (= e!24693 e!24692)))

(declare-fun res!23440 () Bool)

(assert (=> b!38881 (=> res!23440 e!24692)))

(assert (=> b!38881 (= res!23440 (= (h!1623 Nil!1056) (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(declare-fun b!38882 () Bool)

(assert (=> b!38882 (= e!24692 (contains!502 (t!3902 Nil!1056) (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(assert (= (and d!6387 res!23441) b!38881))

(assert (= (and b!38881 (not res!23440)) b!38882))

(declare-fun m!31563 () Bool)

(assert (=> d!6387 m!31563))

(assert (=> d!6387 m!31347))

(declare-fun m!31565 () Bool)

(assert (=> d!6387 m!31565))

(assert (=> b!38882 m!31347))

(declare-fun m!31567 () Bool)

(assert (=> b!38882 m!31567))

(assert (=> b!38631 d!6387))

(push 1)

(assert (not b!38774))

(assert (not b!38852))

(assert (not b!38752))

(assert (not d!6349))

(assert (not b!38756))

(assert (not d!6327))

(assert (not b!38846))

(assert (not b_next!1351))

(assert (not d!6323))

(assert (not bm!2939))

(assert (not b!38862))

(assert (not b!38864))

(assert (not d!6345))

(assert (not bm!2929))

(assert (not bm!2932))

(assert (not b!38758))

(assert (not bm!2931))

(assert (not b!38856))

(assert (not b!38859))

(assert (not d!6353))

(assert (not b!38744))

(assert (not b!38794))

(assert b_and!2327)

(assert (not b!38854))

(assert (not b!38851))

(assert (not b!38775))

(assert (not d!6367))

(assert (not bm!2940))

(assert (not bm!2941))

(assert (not b_lambda!2039))

(assert (not b!38882))

(assert tp_is_empty!1741)

(assert (not d!6387))

(assert (not b!38857))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2327)

(assert (not b_next!1351))

(check-sat)

(get-model)

(pop 1)

(declare-fun c!4514 () Bool)

(declare-fun bm!2943 () Bool)

(declare-fun call!2946 () Bool)

(assert (=> bm!2943 (= call!2946 (arrayNoDuplicates!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4514 (Cons!1055 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!4501 (Cons!1055 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056))) (ite c!4501 (Cons!1055 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)))))))

(declare-fun b!38913 () Bool)

(declare-fun e!24714 () Bool)

(declare-fun e!24712 () Bool)

(assert (=> b!38913 (= e!24714 e!24712)))

(declare-fun res!23466 () Bool)

(assert (=> b!38913 (=> (not res!23466) (not e!24712))))

(declare-fun e!24713 () Bool)

(assert (=> b!38913 (= res!23466 (not e!24713))))

(declare-fun res!23464 () Bool)

(assert (=> b!38913 (=> (not res!23464) (not e!24713))))

(assert (=> b!38913 (= res!23464 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!38914 () Bool)

(declare-fun e!24711 () Bool)

(assert (=> b!38914 (= e!24712 e!24711)))

(assert (=> b!38914 (= c!4514 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!6402 () Bool)

(declare-fun res!23465 () Bool)

(assert (=> d!6402 (=> res!23465 e!24714)))

(assert (=> d!6402 (= res!23465 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1332 lt!14417)))))

(assert (=> d!6402 (= (arrayNoDuplicates!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4501 (Cons!1055 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056))) e!24714)))

(declare-fun b!38915 () Bool)

(assert (=> b!38915 (= e!24711 call!2946)))

(declare-fun b!38916 () Bool)

(assert (=> b!38916 (= e!24713 (contains!502 (ite c!4501 (Cons!1055 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!38917 () Bool)

(assert (=> b!38917 (= e!24711 call!2946)))

(assert (= (and d!6402 (not res!23465)) b!38913))

(assert (= (and b!38913 res!23464) b!38916))

(assert (= (and b!38913 res!23466) b!38914))

(assert (= (and b!38914 c!4514) b!38917))

(assert (= (and b!38914 (not c!4514)) b!38915))

(assert (= (or b!38917 b!38915) bm!2943))

(declare-fun m!31605 () Bool)

(assert (=> bm!2943 m!31605))

(declare-fun m!31607 () Bool)

(assert (=> bm!2943 m!31607))

(assert (=> b!38913 m!31605))

(assert (=> b!38913 m!31605))

(declare-fun m!31609 () Bool)

(assert (=> b!38913 m!31609))

(assert (=> b!38914 m!31605))

(assert (=> b!38914 m!31605))

(assert (=> b!38914 m!31609))

(assert (=> b!38916 m!31605))

(assert (=> b!38916 m!31605))

(declare-fun m!31617 () Bool)

(assert (=> b!38916 m!31617))

(assert (=> bm!2939 d!6402))

(declare-fun c!4518 () Bool)

(declare-fun call!2947 () Bool)

(declare-fun bm!2944 () Bool)

(assert (=> bm!2944 (= call!2947 (arrayNoDuplicates!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4518 (Cons!1055 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4502 (Cons!1055 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (ite c!4502 (Cons!1055 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1056) Nil!1056))))))

(declare-fun b!38924 () Bool)

(declare-fun e!24721 () Bool)

(declare-fun e!24719 () Bool)

(assert (=> b!38924 (= e!24721 e!24719)))

(declare-fun res!23469 () Bool)

(assert (=> b!38924 (=> (not res!23469) (not e!24719))))

(declare-fun e!24720 () Bool)

(assert (=> b!38924 (= res!23469 (not e!24720))))

(declare-fun res!23467 () Bool)

(assert (=> b!38924 (=> (not res!23467) (not e!24720))))

(assert (=> b!38924 (= res!23467 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38925 () Bool)

(declare-fun e!24718 () Bool)

(assert (=> b!38925 (= e!24719 e!24718)))

(assert (=> b!38925 (= c!4518 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6407 () Bool)

(declare-fun res!23468 () Bool)

(assert (=> d!6407 (=> res!23468 e!24721)))

(assert (=> d!6407 (= res!23468 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6407 (= (arrayNoDuplicates!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4502 (Cons!1055 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) e!24721)))

(declare-fun b!38926 () Bool)

(assert (=> b!38926 (= e!24718 call!2947)))

(declare-fun b!38927 () Bool)

(assert (=> b!38927 (= e!24720 (contains!502 (ite c!4502 (Cons!1055 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1056) Nil!1056) (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38928 () Bool)

(assert (=> b!38928 (= e!24718 call!2947)))

(assert (= (and d!6407 (not res!23468)) b!38924))

(assert (= (and b!38924 res!23467) b!38927))

(assert (= (and b!38924 res!23469) b!38925))

(assert (= (and b!38925 c!4518) b!38928))

(assert (= (and b!38925 (not c!4518)) b!38926))

(assert (= (or b!38928 b!38926) bm!2944))

(declare-fun m!31627 () Bool)

(assert (=> bm!2944 m!31627))

(declare-fun m!31629 () Bool)

(assert (=> bm!2944 m!31629))

(assert (=> b!38924 m!31627))

(assert (=> b!38924 m!31627))

(declare-fun m!31631 () Bool)

(assert (=> b!38924 m!31631))

(assert (=> b!38925 m!31627))

(assert (=> b!38925 m!31627))

(assert (=> b!38925 m!31631))

(assert (=> b!38927 m!31627))

(assert (=> b!38927 m!31627))

(declare-fun m!31633 () Bool)

(assert (=> b!38927 m!31633))

(assert (=> bm!2940 d!6407))

(declare-fun call!2948 () (_ BitVec 32))

(declare-fun bm!2945 () Bool)

(assert (=> bm!2945 (= call!2948 (arrayCountValidKeys!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun b!38929 () Bool)

(declare-fun e!24723 () (_ BitVec 32))

(assert (=> b!38929 (= e!24723 call!2948)))

(declare-fun b!38930 () Bool)

(declare-fun e!24722 () (_ BitVec 32))

(assert (=> b!38930 (= e!24722 e!24723)))

(declare-fun c!4519 () Bool)

(assert (=> b!38930 (= c!4519 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun lt!14586 () (_ BitVec 32))

(declare-fun d!6411 () Bool)

(assert (=> d!6411 (and (bvsge lt!14586 #b00000000000000000000000000000000) (bvsle lt!14586 (bvsub (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!6411 (= lt!14586 e!24722)))

(declare-fun c!4520 () Bool)

(assert (=> d!6411 (= c!4520 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6411 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6411 (= (arrayCountValidKeys!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) lt!14586)))

(declare-fun b!38931 () Bool)

(assert (=> b!38931 (= e!24723 (bvadd #b00000000000000000000000000000001 call!2948))))

(declare-fun b!38932 () Bool)

(assert (=> b!38932 (= e!24722 #b00000000000000000000000000000000)))

(assert (= (and d!6411 c!4520) b!38932))

(assert (= (and d!6411 (not c!4520)) b!38930))

(assert (= (and b!38930 c!4519) b!38931))

(assert (= (and b!38930 (not c!4519)) b!38929))

(assert (= (or b!38931 b!38929) bm!2945))

(declare-fun m!31635 () Bool)

(assert (=> bm!2945 m!31635))

(assert (=> b!38930 m!31627))

(assert (=> b!38930 m!31627))

(assert (=> b!38930 m!31631))

(assert (=> bm!2929 d!6411))

(assert (=> d!6323 d!6271))

(declare-fun b!38937 () Bool)

(declare-fun e!24728 () Bool)

(declare-fun call!2950 () Bool)

(assert (=> b!38937 (= e!24728 call!2950)))

(declare-fun d!6415 () Bool)

(declare-fun res!23472 () Bool)

(declare-fun e!24729 () Bool)

(assert (=> d!6415 (=> res!23472 e!24729)))

(assert (=> d!6415 (= res!23472 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1332 lt!14417)))))

(assert (=> d!6415 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14417 mask!853) e!24729)))

(declare-fun bm!2947 () Bool)

(assert (=> bm!2947 (= call!2950 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14417 mask!853))))

(declare-fun b!38938 () Bool)

(declare-fun e!24727 () Bool)

(assert (=> b!38938 (= e!24728 e!24727)))

(declare-fun lt!14590 () (_ BitVec 64))

(assert (=> b!38938 (= lt!14590 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!14592 () Unit!954)

(assert (=> b!38938 (= lt!14592 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14417 lt!14590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!38938 (arrayContainsKey!0 lt!14417 lt!14590 #b00000000000000000000000000000000)))

(declare-fun lt!14591 () Unit!954)

(assert (=> b!38938 (= lt!14591 lt!14592)))

(declare-fun res!23473 () Bool)

(assert (=> b!38938 (= res!23473 (= (seekEntryOrOpen!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!14417 mask!853) (Found!179 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!38938 (=> (not res!23473) (not e!24727))))

(declare-fun b!38939 () Bool)

(assert (=> b!38939 (= e!24727 call!2950)))

(declare-fun b!38940 () Bool)

(assert (=> b!38940 (= e!24729 e!24728)))

(declare-fun c!4522 () Bool)

(assert (=> b!38940 (= c!4522 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!6415 (not res!23472)) b!38940))

(assert (= (and b!38940 c!4522) b!38938))

(assert (= (and b!38940 (not c!4522)) b!38937))

(assert (= (and b!38938 res!23473) b!38939))

(assert (= (or b!38939 b!38937) bm!2947))

(declare-fun m!31649 () Bool)

(assert (=> bm!2947 m!31649))

(assert (=> b!38938 m!31605))

(declare-fun m!31651 () Bool)

(assert (=> b!38938 m!31651))

(declare-fun m!31653 () Bool)

(assert (=> b!38938 m!31653))

(assert (=> b!38938 m!31605))

(declare-fun m!31655 () Bool)

(assert (=> b!38938 m!31655))

(assert (=> b!38940 m!31605))

(assert (=> b!38940 m!31605))

(assert (=> b!38940 m!31609))

(assert (=> bm!2941 d!6415))

(declare-fun d!6419 () Bool)

(assert (=> d!6419 (= (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38857 d!6419))

(assert (=> d!6353 d!6359))

(declare-fun d!6421 () Bool)

(assert (=> d!6421 (arrayContainsKey!0 lt!14417 lt!14510 #b00000000000000000000000000000000)))

(assert (=> d!6421 true))

(declare-fun _$60!326 () Unit!954)

(assert (=> d!6421 (= (choose!13 lt!14417 lt!14510 #b00000000000000000000000000000000) _$60!326)))

(declare-fun bs!1617 () Bool)

(assert (= bs!1617 d!6421))

(assert (=> bs!1617 m!31405))

(assert (=> d!6353 d!6421))

(assert (=> b!38744 d!6419))

(declare-fun b!38949 () Bool)

(declare-fun e!24735 () Bool)

(declare-fun call!2953 () Bool)

(assert (=> b!38949 (= e!24735 call!2953)))

(declare-fun d!6429 () Bool)

(declare-fun res!23474 () Bool)

(declare-fun e!24736 () Bool)

(assert (=> d!6429 (=> res!23474 e!24736)))

(assert (=> d!6429 (= res!23474 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6429 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) e!24736)))

(declare-fun bm!2950 () Bool)

(assert (=> bm!2950 (= call!2953 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38950 () Bool)

(declare-fun e!24734 () Bool)

(assert (=> b!38950 (= e!24735 e!24734)))

(declare-fun lt!14596 () (_ BitVec 64))

(assert (=> b!38950 (= lt!14596 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14598 () Unit!954)

(assert (=> b!38950 (= lt!14598 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14596 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!38950 (arrayContainsKey!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14596 #b00000000000000000000000000000000)))

(declare-fun lt!14597 () Unit!954)

(assert (=> b!38950 (= lt!14597 lt!14598)))

(declare-fun res!23475 () Bool)

(assert (=> b!38950 (= res!23475 (= (seekEntryOrOpen!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (Found!179 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!38950 (=> (not res!23475) (not e!24734))))

(declare-fun b!38951 () Bool)

(assert (=> b!38951 (= e!24734 call!2953)))

(declare-fun b!38952 () Bool)

(assert (=> b!38952 (= e!24736 e!24735)))

(declare-fun c!4527 () Bool)

(assert (=> b!38952 (= c!4527 (validKeyInArray!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6429 (not res!23474)) b!38952))

(assert (= (and b!38952 c!4527) b!38950))

(assert (= (and b!38952 (not c!4527)) b!38949))

(assert (= (and b!38950 res!23475) b!38951))

(assert (= (or b!38951 b!38949) bm!2950))

(declare-fun m!31667 () Bool)

(assert (=> bm!2950 m!31667))

(assert (=> b!38950 m!31627))

(declare-fun m!31669 () Bool)

(assert (=> b!38950 m!31669))

(declare-fun m!31671 () Bool)

(assert (=> b!38950 m!31671))

(assert (=> b!38950 m!31627))

(declare-fun m!31675 () Bool)

(assert (=> b!38950 m!31675))

(assert (=> b!38952 m!31627))

(assert (=> b!38952 m!31627))

(assert (=> b!38952 m!31631))

(assert (=> bm!2932 d!6429))

(assert (=> b!38856 d!6419))

(declare-fun d!6437 () Bool)

(assert (=> d!6437 (= (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38851 d!6437))

(declare-fun d!6439 () Bool)

(assert (=> d!6439 (arrayContainsKey!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14525 #b00000000000000000000000000000000)))

(declare-fun lt!14602 () Unit!954)

(assert (=> d!6439 (= lt!14602 (choose!13 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14525 #b00000000000000000000000000000000))))

(assert (=> d!6439 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6439 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14525 #b00000000000000000000000000000000) lt!14602)))

(declare-fun bs!1619 () Bool)

(assert (= bs!1619 d!6439))

(assert (=> bs!1619 m!31469))

(declare-fun m!31677 () Bool)

(assert (=> bs!1619 m!31677))

(assert (=> b!38756 d!6439))

(declare-fun d!6441 () Bool)

(declare-fun res!23478 () Bool)

(declare-fun e!24742 () Bool)

(assert (=> d!6441 (=> res!23478 e!24742)))

(assert (=> d!6441 (= res!23478 (= (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) lt!14525))))

(assert (=> d!6441 (= (arrayContainsKey!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14525 #b00000000000000000000000000000000) e!24742)))

(declare-fun b!38961 () Bool)

(declare-fun e!24743 () Bool)

(assert (=> b!38961 (= e!24742 e!24743)))

(declare-fun res!23479 () Bool)

(assert (=> b!38961 (=> (not res!23479) (not e!24743))))

(assert (=> b!38961 (= res!23479 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun b!38962 () Bool)

(assert (=> b!38962 (= e!24743 (arrayContainsKey!0 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14525 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6441 (not res!23478)) b!38961))

(assert (= (and b!38961 res!23479) b!38962))

(assert (=> d!6441 m!31453))

(declare-fun m!31687 () Bool)

(assert (=> b!38962 m!31687))

(assert (=> b!38756 d!6441))

(declare-fun b!38963 () Bool)

(declare-fun e!24744 () SeekEntryResult!179)

(declare-fun e!24746 () SeekEntryResult!179)

(assert (=> b!38963 (= e!24744 e!24746)))

(declare-fun lt!14604 () (_ BitVec 64))

(declare-fun lt!14605 () SeekEntryResult!179)

(assert (=> b!38963 (= lt!14604 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2840 lt!14605)))))

(declare-fun c!4533 () Bool)

(assert (=> b!38963 (= c!4533 (= lt!14604 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38964 () Bool)

(declare-fun e!24745 () SeekEntryResult!179)

(assert (=> b!38964 (= e!24745 (seekKeyOrZeroReturnVacant!0 (x!7615 lt!14605) (index!2840 lt!14605) (index!2840 lt!14605) (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38965 () Bool)

(assert (=> b!38965 (= e!24746 (Found!179 (index!2840 lt!14605)))))

(declare-fun b!38967 () Bool)

(declare-fun c!4531 () Bool)

(assert (=> b!38967 (= c!4531 (= lt!14604 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!38967 (= e!24746 e!24745)))

(declare-fun b!38968 () Bool)

(assert (=> b!38968 (= e!24745 (MissingZero!179 (index!2840 lt!14605)))))

(declare-fun lt!14603 () SeekEntryResult!179)

(declare-fun d!6443 () Bool)

(assert (=> d!6443 (and (or (is-Undefined!179 lt!14603) (not (is-Found!179 lt!14603)) (and (bvsge (index!2839 lt!14603) #b00000000000000000000000000000000) (bvslt (index!2839 lt!14603) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or (is-Undefined!179 lt!14603) (is-Found!179 lt!14603) (not (is-MissingZero!179 lt!14603)) (and (bvsge (index!2838 lt!14603) #b00000000000000000000000000000000) (bvslt (index!2838 lt!14603) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or (is-Undefined!179 lt!14603) (is-Found!179 lt!14603) (is-MissingZero!179 lt!14603) (not (is-MissingVacant!179 lt!14603)) (and (bvsge (index!2841 lt!14603) #b00000000000000000000000000000000) (bvslt (index!2841 lt!14603) (size!1332 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or (is-Undefined!179 lt!14603) (ite (is-Found!179 lt!14603) (= (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2839 lt!14603)) (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (ite (is-MissingZero!179 lt!14603) (= (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2838 lt!14603)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!179 lt!14603) (= (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2841 lt!14603)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6443 (= lt!14603 e!24744)))

(declare-fun c!4532 () Bool)

(assert (=> d!6443 (= c!4532 (and (is-Intermediate!179 lt!14605) (undefined!991 lt!14605)))))

(assert (=> d!6443 (= lt!14605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (=> d!6443 (validMask!0 (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(assert (=> d!6443 (= (seekEntryOrOpen!0 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) lt!14603)))

(declare-fun b!38966 () Bool)

(assert (=> b!38966 (= e!24744 Undefined!179)))

(assert (= (and d!6443 c!4532) b!38966))

(assert (= (and d!6443 (not c!4532)) b!38963))

(assert (= (and b!38963 c!4533) b!38965))

(assert (= (and b!38963 (not c!4533)) b!38967))

(assert (= (and b!38967 c!4531) b!38968))

(assert (= (and b!38967 (not c!4531)) b!38964))

(declare-fun m!31695 () Bool)

(assert (=> b!38963 m!31695))

(assert (=> b!38964 m!31453))

(declare-fun m!31697 () Bool)

(assert (=> b!38964 m!31697))

(declare-fun m!31699 () Bool)

(assert (=> d!6443 m!31699))

(assert (=> d!6443 m!31453))

(declare-fun m!31701 () Bool)

(assert (=> d!6443 m!31701))

(assert (=> d!6443 m!31477))

(declare-fun m!31703 () Bool)

(assert (=> d!6443 m!31703))

(assert (=> d!6443 m!31453))

(assert (=> d!6443 m!31699))

(declare-fun m!31705 () Bool)

(assert (=> d!6443 m!31705))

(declare-fun m!31707 () Bool)

(assert (=> d!6443 m!31707))

(assert (=> b!38756 d!6443))

(assert (=> b!38852 d!6437))

(declare-fun b!39014 () Bool)

(declare-fun e!24775 () Bool)

(declare-fun lt!14618 () SeekEntryResult!179)

(assert (=> b!39014 (= e!24775 (bvsge (x!7615 lt!14618) #b01111111111111111111111111111110))))

(declare-fun b!39015 () Bool)

(declare-fun e!24777 () Bool)

(assert (=> b!39015 (= e!24775 e!24777)))

(declare-fun res!23494 () Bool)

(assert (=> b!39015 (= res!23494 (and (is-Intermediate!179 lt!14618) (not (undefined!991 lt!14618)) (bvslt (x!7615 lt!14618) #b01111111111111111111111111111110) (bvsge (x!7615 lt!14618) #b00000000000000000000000000000000) (bvsge (x!7615 lt!14618) #b00000000000000000000000000000000)))))

(assert (=> b!39015 (=> (not res!23494) (not e!24777))))

(declare-fun b!39016 () Bool)

(assert (=> b!39016 (and (bvsge (index!2840 lt!14618) #b00000000000000000000000000000000) (bvslt (index!2840 lt!14618) (size!1332 lt!14417)))))

(declare-fun e!24776 () Bool)

(assert (=> b!39016 (= e!24776 (= (select (arr!1225 lt!14417) (index!2840 lt!14618)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39017 () Bool)

(declare-fun e!24774 () SeekEntryResult!179)

(assert (=> b!39017 (= e!24774 (Intermediate!179 false (toIndex!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!39018 () Bool)

(declare-fun e!24778 () SeekEntryResult!179)

(assert (=> b!39018 (= e!24778 e!24774)))

(declare-fun c!4550 () Bool)

(declare-fun lt!14617 () (_ BitVec 64))

(assert (=> b!39018 (= c!4550 (or (= lt!14617 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)) (= (bvadd lt!14617 lt!14617) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!39019 () Bool)

(assert (=> b!39019 (= e!24778 (Intermediate!179 true (toIndex!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!39020 () Bool)

(assert (=> b!39020 (and (bvsge (index!2840 lt!14618) #b00000000000000000000000000000000) (bvslt (index!2840 lt!14618) (size!1332 lt!14417)))))

(declare-fun res!23495 () Bool)

(assert (=> b!39020 (= res!23495 (= (select (arr!1225 lt!14417) (index!2840 lt!14618)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39020 (=> res!23495 e!24776)))

(declare-fun d!6447 () Bool)

(assert (=> d!6447 e!24775))

(declare-fun c!4551 () Bool)

(assert (=> d!6447 (= c!4551 (and (is-Intermediate!179 lt!14618) (undefined!991 lt!14618)))))

(assert (=> d!6447 (= lt!14618 e!24778)))

(declare-fun c!4552 () Bool)

(assert (=> d!6447 (= c!4552 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!6447 (= lt!14617 (select (arr!1225 lt!14417) (toIndex!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!6447 (validMask!0 mask!853)))

(assert (=> d!6447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) mask!853) (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853) lt!14618)))

(declare-fun b!39021 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!39021 (= e!24774 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853))))

(declare-fun b!39022 () Bool)

(assert (=> b!39022 (and (bvsge (index!2840 lt!14618) #b00000000000000000000000000000000) (bvslt (index!2840 lt!14618) (size!1332 lt!14417)))))

(declare-fun res!23493 () Bool)

(assert (=> b!39022 (= res!23493 (= (select (arr!1225 lt!14417) (index!2840 lt!14618)) (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(assert (=> b!39022 (=> res!23493 e!24776)))

(assert (=> b!39022 (= e!24777 e!24776)))

(assert (= (and d!6447 c!4552) b!39019))

(assert (= (and d!6447 (not c!4552)) b!39018))

(assert (= (and b!39018 c!4550) b!39017))

(assert (= (and b!39018 (not c!4550)) b!39021))

(assert (= (and d!6447 c!4551) b!39014))

(assert (= (and d!6447 (not c!4551)) b!39015))

(assert (= (and b!39015 res!23494) b!39022))

(assert (= (and b!39022 (not res!23493)) b!39020))

(assert (= (and b!39020 (not res!23495)) b!39016))

(assert (=> b!39021 m!31537))

(declare-fun m!31727 () Bool)

(assert (=> b!39021 m!31727))

(assert (=> b!39021 m!31727))

(assert (=> b!39021 m!31347))

(declare-fun m!31729 () Bool)

(assert (=> b!39021 m!31729))

(declare-fun m!31731 () Bool)

(assert (=> b!39020 m!31731))

(assert (=> b!39016 m!31731))

(assert (=> d!6447 m!31537))

(declare-fun m!31733 () Bool)

(assert (=> d!6447 m!31733))

(assert (=> d!6447 m!31259))

(assert (=> b!39022 m!31731))

(assert (=> d!6367 d!6447))

(declare-fun d!6457 () Bool)

(declare-fun lt!14624 () (_ BitVec 32))

(declare-fun lt!14623 () (_ BitVec 32))

(assert (=> d!6457 (= lt!14624 (bvmul (bvxor lt!14623 (bvlshr lt!14623 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!6457 (= lt!14623 ((_ extract 31 0) (bvand (bvxor (select (arr!1225 lt!14417) #b00000000000000000000000000000000) (bvlshr (select (arr!1225 lt!14417) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!6457 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!23496 (let ((h!1626 ((_ extract 31 0) (bvand (bvxor (select (arr!1225 lt!14417) #b00000000000000000000000000000000) (bvlshr (select (arr!1225 lt!14417) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7626 (bvmul (bvxor h!1626 (bvlshr h!1626 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7626 (bvlshr x!7626 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!23496 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!23496 #b00000000000000000000000000000000))))))

(assert (=> d!6457 (= (toIndex!0 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!14624 (bvlshr lt!14624 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!6367 d!6457))

(assert (=> d!6367 d!6259))

(declare-fun d!6463 () Bool)

(assert (=> d!6463 (arrayContainsKey!0 lt!14417 lt!14561 #b00000000000000000000000000000000)))

(declare-fun lt!14625 () Unit!954)

(assert (=> d!6463 (= lt!14625 (choose!13 lt!14417 lt!14561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!6463 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!6463 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14417 lt!14561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14625)))

(declare-fun bs!1620 () Bool)

(assert (= bs!1620 d!6463))

(assert (=> bs!1620 m!31559))

(declare-fun m!31735 () Bool)

(assert (=> bs!1620 m!31735))

(assert (=> b!38862 d!6463))

(declare-fun d!6465 () Bool)

(declare-fun res!23497 () Bool)

(declare-fun e!24779 () Bool)

(assert (=> d!6465 (=> res!23497 e!24779)))

(assert (=> d!6465 (= res!23497 (= (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14561))))

(assert (=> d!6465 (= (arrayContainsKey!0 lt!14417 lt!14561 #b00000000000000000000000000000000) e!24779)))

(declare-fun b!39023 () Bool)

(declare-fun e!24780 () Bool)

(assert (=> b!39023 (= e!24779 e!24780)))

(declare-fun res!23498 () Bool)

(assert (=> b!39023 (=> (not res!23498) (not e!24780))))

(assert (=> b!39023 (= res!23498 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1332 lt!14417)))))

(declare-fun b!39024 () Bool)

(assert (=> b!39024 (= e!24780 (arrayContainsKey!0 lt!14417 lt!14561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6465 (not res!23497)) b!39023))

(assert (= (and b!39023 res!23498) b!39024))

(assert (=> d!6465 m!31347))

(declare-fun m!31737 () Bool)

(assert (=> b!39024 m!31737))

(assert (=> b!38862 d!6465))

(declare-fun b!39025 () Bool)

(declare-fun e!24781 () SeekEntryResult!179)

(declare-fun e!24783 () SeekEntryResult!179)

(assert (=> b!39025 (= e!24781 e!24783)))

(declare-fun lt!14627 () (_ BitVec 64))

(declare-fun lt!14628 () SeekEntryResult!179)

(assert (=> b!39025 (= lt!14627 (select (arr!1225 lt!14417) (index!2840 lt!14628)))))

(declare-fun c!4555 () Bool)

(assert (=> b!39025 (= c!4555 (= lt!14627 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39026 () Bool)

(declare-fun e!24782 () SeekEntryResult!179)

(assert (=> b!39026 (= e!24782 (seekKeyOrZeroReturnVacant!0 (x!7615 lt!14628) (index!2840 lt!14628) (index!2840 lt!14628) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14417 mask!853))))

(declare-fun b!39027 () Bool)

(assert (=> b!39027 (= e!24783 (Found!179 (index!2840 lt!14628)))))

(declare-fun b!39029 () Bool)

(declare-fun c!4553 () Bool)

(assert (=> b!39029 (= c!4553 (= lt!14627 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39029 (= e!24783 e!24782)))

(declare-fun b!39030 () Bool)

(assert (=> b!39030 (= e!24782 (MissingZero!179 (index!2840 lt!14628)))))

(declare-fun d!6467 () Bool)

(declare-fun lt!14626 () SeekEntryResult!179)

(assert (=> d!6467 (and (or (is-Undefined!179 lt!14626) (not (is-Found!179 lt!14626)) (and (bvsge (index!2839 lt!14626) #b00000000000000000000000000000000) (bvslt (index!2839 lt!14626) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14626) (is-Found!179 lt!14626) (not (is-MissingZero!179 lt!14626)) (and (bvsge (index!2838 lt!14626) #b00000000000000000000000000000000) (bvslt (index!2838 lt!14626) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14626) (is-Found!179 lt!14626) (is-MissingZero!179 lt!14626) (not (is-MissingVacant!179 lt!14626)) (and (bvsge (index!2841 lt!14626) #b00000000000000000000000000000000) (bvslt (index!2841 lt!14626) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14626) (ite (is-Found!179 lt!14626) (= (select (arr!1225 lt!14417) (index!2839 lt!14626)) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite (is-MissingZero!179 lt!14626) (= (select (arr!1225 lt!14417) (index!2838 lt!14626)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!179 lt!14626) (= (select (arr!1225 lt!14417) (index!2841 lt!14626)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6467 (= lt!14626 e!24781)))

(declare-fun c!4554 () Bool)

(assert (=> d!6467 (= c!4554 (and (is-Intermediate!179 lt!14628) (undefined!991 lt!14628)))))

(assert (=> d!6467 (= lt!14628 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14417 mask!853))))

(assert (=> d!6467 (validMask!0 mask!853)))

(assert (=> d!6467 (= (seekEntryOrOpen!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14417 mask!853) lt!14626)))

(declare-fun b!39028 () Bool)

(assert (=> b!39028 (= e!24781 Undefined!179)))

(assert (= (and d!6467 c!4554) b!39028))

(assert (= (and d!6467 (not c!4554)) b!39025))

(assert (= (and b!39025 c!4555) b!39027))

(assert (= (and b!39025 (not c!4555)) b!39029))

(assert (= (and b!39029 c!4553) b!39030))

(assert (= (and b!39029 (not c!4553)) b!39026))

(declare-fun m!31739 () Bool)

(assert (=> b!39025 m!31739))

(assert (=> b!39026 m!31461))

(declare-fun m!31741 () Bool)

(assert (=> b!39026 m!31741))

(declare-fun m!31743 () Bool)

(assert (=> d!6467 m!31743))

(assert (=> d!6467 m!31461))

(declare-fun m!31745 () Bool)

(assert (=> d!6467 m!31745))

(assert (=> d!6467 m!31259))

(declare-fun m!31747 () Bool)

(assert (=> d!6467 m!31747))

(assert (=> d!6467 m!31461))

(assert (=> d!6467 m!31743))

(declare-fun m!31749 () Bool)

(assert (=> d!6467 m!31749))

(declare-fun m!31751 () Bool)

(assert (=> d!6467 m!31751))

(assert (=> b!38862 d!6467))

(declare-fun d!6469 () Bool)

(declare-fun lt!14629 () Bool)

(assert (=> d!6469 (= lt!14629 (set.member (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (content!26 (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056))))))

(declare-fun e!24785 () Bool)

(assert (=> d!6469 (= lt!14629 e!24785)))

(declare-fun res!23500 () Bool)

(assert (=> d!6469 (=> (not res!23500) (not e!24785))))

(assert (=> d!6469 (= res!23500 (is-Cons!1055 (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)))))

(assert (=> d!6469 (= (contains!502 (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!14629)))

(declare-fun b!39031 () Bool)

(declare-fun e!24784 () Bool)

(assert (=> b!39031 (= e!24785 e!24784)))

(declare-fun res!23499 () Bool)

(assert (=> b!39031 (=> res!23499 e!24784)))

(assert (=> b!39031 (= res!23499 (= (h!1623 (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39032 () Bool)

(assert (=> b!39032 (= e!24784 (contains!502 (t!3902 (ite c!4440 (Cons!1055 (select (arr!1225 lt!14417) #b00000000000000000000000000000000) Nil!1056) Nil!1056)) (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6469 res!23500) b!39031))

(assert (= (and b!39031 (not res!23499)) b!39032))

(declare-fun m!31753 () Bool)

(assert (=> d!6469 m!31753))

(assert (=> d!6469 m!31461))

(declare-fun m!31755 () Bool)

(assert (=> d!6469 m!31755))

(assert (=> b!39032 m!31461))

(declare-fun m!31757 () Bool)

(assert (=> b!39032 m!31757))

(assert (=> b!38854 d!6469))

(assert (=> b!38864 d!6437))

(declare-fun lt!14630 () Bool)

(declare-fun d!6471 () Bool)

(assert (=> d!6471 (= lt!14630 (set.member (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (content!26 Nil!1056)))))

(declare-fun e!24787 () Bool)

(assert (=> d!6471 (= lt!14630 e!24787)))

(declare-fun res!23502 () Bool)

(assert (=> d!6471 (=> (not res!23502) (not e!24787))))

(assert (=> d!6471 (= res!23502 (is-Cons!1055 Nil!1056))))

(assert (=> d!6471 (= (contains!502 Nil!1056 (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) lt!14630)))

(declare-fun b!39033 () Bool)

(declare-fun e!24786 () Bool)

(assert (=> b!39033 (= e!24787 e!24786)))

(declare-fun res!23501 () Bool)

(assert (=> b!39033 (=> res!23501 e!24786)))

(assert (=> b!39033 (= res!23501 (= (h!1623 Nil!1056) (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!39034 () Bool)

(assert (=> b!39034 (= e!24786 (contains!502 (t!3902 Nil!1056) (select (arr!1225 (_keys!3244 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (= (and d!6471 res!23502) b!39033))

(assert (= (and b!39033 (not res!23501)) b!39034))

(assert (=> d!6471 m!31563))

(assert (=> d!6471 m!31453))

(declare-fun m!31759 () Bool)

(assert (=> d!6471 m!31759))

(assert (=> b!39034 m!31453))

(declare-fun m!31761 () Bool)

(assert (=> b!39034 m!31761))

(assert (=> b!38859 d!6471))

(assert (=> b!38758 d!6419))

(declare-fun d!6473 () Bool)

(assert (not d!6473))

(assert (=> b!38882 d!6473))

(declare-fun d!6475 () Bool)

(assert (=> d!6475 (= (size!1351 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (_size!162 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvsdiv (bvadd (extraKeys!1682 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!38774 d!6475))

(assert (=> b!38775 d!6475))

(declare-fun d!6477 () Bool)

(assert (=> d!6477 (= (validMask!0 (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (and (or (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000001111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000011111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000001111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000011111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000001111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000011111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000001111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000011111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000001111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000011111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000001111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000011111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000001111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000011111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000111111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000001111111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000011111111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000111111111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00001111111111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00011111111111111111111111111111) (= (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00111111111111111111111111111111)) (bvsle (mask!5112 (LongMapFixedSize!227 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14415 lt!14415 #b00000000000000000000000000000000 lt!14417 (array!2566 ((as const (Array (_ BitVec 32) ValueCell!623)) EmptyCell!623) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00111111111111111111111111111111)))))

(assert (=> d!6345 d!6477))

(declare-fun b!39094 () Bool)

(declare-fun e!24823 () SeekEntryResult!179)

(assert (=> b!39094 (= e!24823 Undefined!179)))

(declare-fun b!39095 () Bool)

(declare-fun e!24824 () SeekEntryResult!179)

(assert (=> b!39095 (= e!24824 (Found!179 (index!2840 lt!14560)))))

(declare-fun d!6479 () Bool)

(declare-fun lt!14653 () SeekEntryResult!179)

(assert (=> d!6479 (and (or (is-Undefined!179 lt!14653) (not (is-Found!179 lt!14653)) (and (bvsge (index!2839 lt!14653) #b00000000000000000000000000000000) (bvslt (index!2839 lt!14653) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14653) (is-Found!179 lt!14653) (not (is-MissingVacant!179 lt!14653)) (not (= (index!2841 lt!14653) (index!2840 lt!14560))) (and (bvsge (index!2841 lt!14653) #b00000000000000000000000000000000) (bvslt (index!2841 lt!14653) (size!1332 lt!14417)))) (or (is-Undefined!179 lt!14653) (ite (is-Found!179 lt!14653) (= (select (arr!1225 lt!14417) (index!2839 lt!14653)) (select (arr!1225 lt!14417) #b00000000000000000000000000000000)) (and (is-MissingVacant!179 lt!14653) (= (index!2841 lt!14653) (index!2840 lt!14560)) (= (select (arr!1225 lt!14417) (index!2841 lt!14653)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!6479 (= lt!14653 e!24823)))

(declare-fun c!4579 () Bool)

(assert (=> d!6479 (= c!4579 (bvsge (x!7615 lt!14560) #b01111111111111111111111111111110))))

(declare-fun lt!14652 () (_ BitVec 64))

(assert (=> d!6479 (= lt!14652 (select (arr!1225 lt!14417) (index!2840 lt!14560)))))

(assert (=> d!6479 (validMask!0 mask!853)))

(assert (=> d!6479 (= (seekKeyOrZeroReturnVacant!0 (x!7615 lt!14560) (index!2840 lt!14560) (index!2840 lt!14560) (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853) lt!14653)))

(declare-fun b!39096 () Bool)

(declare-fun e!24822 () SeekEntryResult!179)

(assert (=> b!39096 (= e!24822 (MissingVacant!179 (index!2840 lt!14560)))))

(declare-fun b!39097 () Bool)

(declare-fun c!4580 () Bool)

(assert (=> b!39097 (= c!4580 (= lt!14652 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39097 (= e!24824 e!24822)))

(declare-fun b!39098 () Bool)

(assert (=> b!39098 (= e!24822 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7615 lt!14560) #b00000000000000000000000000000001) (nextIndex!0 (index!2840 lt!14560) (x!7615 lt!14560) mask!853) (index!2840 lt!14560) (select (arr!1225 lt!14417) #b00000000000000000000000000000000) lt!14417 mask!853))))

(declare-fun b!39099 () Bool)

(assert (=> b!39099 (= e!24823 e!24824)))

(declare-fun c!4578 () Bool)

(assert (=> b!39099 (= c!4578 (= lt!14652 (select (arr!1225 lt!14417) #b00000000000000000000000000000000)))))

(assert (= (and d!6479 c!4579) b!39094))

(assert (= (and d!6479 (not c!4579)) b!39099))

(assert (= (and b!39099 c!4578) b!39095))

(assert (= (and b!39099 (not c!4578)) b!39097))

(assert (= (and b!39097 c!4580) b!39096))

(assert (= (and b!39097 (not c!4580)) b!39098))

(declare-fun m!31819 () Bool)

(assert (=> d!6479 m!31819))

(declare-fun m!31821 () Bool)

(assert (=> d!6479 m!31821))

(assert (=> d!6479 m!31533))

(assert (=> d!6479 m!31259))

(declare-fun m!31823 () Bool)

(assert (=> b!39098 m!31823))

(assert (=> b!39098 m!31823))

(assert (=> b!39098 m!31347))

(declare-fun m!31825 () Bool)

(assert (=> b!39098 m!31825))

(assert (=> b!38846 d!6479))

(declare-fun d!6511 () Bool)

(assert (=> d!6511 (= (content!26 Nil!1056) (as set.empty (Set (_ BitVec 64))))))

(assert (=> d!6387 d!6511))

(declare-fun bm!2953 () Bool)

(declare-fun call!2956 () (_ BitVec 32))

(assert (=> bm!2953 (= call!2956 (arrayCountValidKeys!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!39100 () Bool)

(declare-fun e!24826 () (_ BitVec 32))

(assert (=> b!39100 (= e!24826 call!2956)))

(declare-fun b!39101 () Bool)

(declare-fun e!24825 () (_ BitVec 32))

(assert (=> b!39101 (= e!24825 e!24826)))

(declare-fun c!4581 () Bool)

(assert (=> b!39101 (= c!4581 (validKeyInArray!0 (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!6513 () Bool)

(declare-fun lt!14658 () (_ BitVec 32))

(assert (=> d!6513 (and (bvsge lt!14658 #b00000000000000000000000000000000) (bvsle lt!14658 (bvsub (size!1332 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!6513 (= lt!14658 e!24825)))

(declare-fun c!4582 () Bool)

(assert (=> d!6513 (= c!4582 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6513 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1332 lt!14417)))))

(assert (=> d!6513 (= (arrayCountValidKeys!0 lt!14417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!14658)))

(declare-fun b!39102 () Bool)

(assert (=> b!39102 (= e!24826 (bvadd #b00000000000000000000000000000001 call!2956))))

(declare-fun b!39103 () Bool)

(assert (=> b!39103 (= e!24825 #b00000000000000000000000000000000)))

(assert (= (and d!6513 c!4582) b!39103))

(assert (= (and d!6513 (not c!4582)) b!39101))

(assert (= (and b!39101 c!4581) b!39102))

(assert (= (and b!39101 (not c!4581)) b!39100))

(assert (= (or b!39102 b!39100) bm!2953))

(declare-fun m!31827 () Bool)

(assert (=> bm!2953 m!31827))

(assert (=> b!39101 m!31605))

(assert (=> b!39101 m!31605))

(assert (=> b!39101 m!31609))

(assert (=> bm!2931 d!6513))

(declare-fun d!6517 () Bool)

(declare-fun res!23519 () Bool)

(declare-fun e!24827 () Bool)

(assert (=> d!6517 (=> res!23519 e!24827)))

(assert (=> d!6517 (= res!23519 (= (select (arr!1225 lt!14417) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14510))))

(assert (=> d!6517 (= (arrayContainsKey!0 lt!14417 lt!14510 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!24827)))

(declare-fun b!39104 () Bool)

(declare-fun e!24828 () Bool)

(assert (=> b!39104 (= e!24827 e!24828)))

(declare-fun res!23520 () Bool)

(assert (=> b!39104 (=> (not res!23520) (not e!24828))))

(assert (=> b!39104 (= res!23520 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1332 lt!14417)))))

(declare-fun b!39105 () Bool)

(assert (=> b!39105 (= e!24828 (arrayContainsKey!0 lt!14417 lt!14510 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!6517 (not res!23519)) b!39104))

(assert (= (and b!39104 res!23520) b!39105))

(assert (=> d!6517 m!31461))

(declare-fun m!31829 () Bool)

(assert (=> b!39105 m!31829))

(assert (=> b!38794 d!6517))

(assert (=> d!6327 d!6301))

(assert (=> d!6349 d!6285))

(assert (=> b!38752 d!6437))

(push 1)

(assert (not b!39098))

(assert (not b!38952))

(assert (not bm!2944))

(assert (not bm!2950))

(assert (not b!39032))

(assert (not b!38940))

(assert (not b!39034))

