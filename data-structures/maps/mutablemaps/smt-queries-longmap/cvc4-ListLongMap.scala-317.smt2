; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5702 () Bool)

(assert start!5702)

(declare-fun b_free!1367 () Bool)

(declare-fun b_next!1367 () Bool)

(assert (=> start!5702 (= b_free!1367 (not b_next!1367))))

(declare-fun tp!5738 () Bool)

(declare-fun b_and!2375 () Bool)

(assert (=> start!5702 (= tp!5738 b_and!2375)))

(declare-fun res!24066 () Bool)

(declare-fun e!25571 () Bool)

(assert (=> start!5702 (=> (not res!24066) (not e!25571))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5702 (= res!24066 (validMask!0 mask!853))))

(assert (=> start!5702 e!25571))

(assert (=> start!5702 true))

(assert (=> start!5702 tp!5738))

(declare-fun b!40307 () Bool)

(declare-fun e!25572 () Bool)

(assert (=> b!40307 (= e!25571 (not e!25572))))

(declare-fun res!24067 () Bool)

(assert (=> b!40307 (=> res!24067 e!25572)))

(declare-datatypes ((V!2101 0))(
  ( (V!2102 (val!917 Int)) )
))
(declare-datatypes ((tuple2!1492 0))(
  ( (tuple2!1493 (_1!756 (_ BitVec 64)) (_2!756 V!2101)) )
))
(declare-datatypes ((List!1072 0))(
  ( (Nil!1069) (Cons!1068 (h!1642 tuple2!1492) (t!3937 List!1072)) )
))
(declare-datatypes ((ListLongMap!1073 0))(
  ( (ListLongMap!1074 (toList!552 List!1072)) )
))
(declare-fun lt!15498 () ListLongMap!1073)

(assert (=> b!40307 (= res!24067 (= lt!15498 (ListLongMap!1074 Nil!1069)))))

(declare-datatypes ((array!2595 0))(
  ( (array!2596 (arr!1241 (Array (_ BitVec 32) (_ BitVec 64))) (size!1378 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!631 0))(
  ( (ValueCellFull!631 (v!1994 V!2101)) (EmptyCell!631) )
))
(declare-datatypes ((array!2597 0))(
  ( (array!2598 (arr!1242 (Array (_ BitVec 32) ValueCell!631)) (size!1379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!242 0))(
  ( (LongMapFixedSize!243 (defaultEntry!1805 Int) (mask!5178 (_ BitVec 32)) (extraKeys!1696 (_ BitVec 32)) (zeroValue!1723 V!2101) (minValue!1723 V!2101) (_size!170 (_ BitVec 32)) (_keys!3294 array!2595) (_values!1788 array!2597) (_vacant!170 (_ BitVec 32))) )
))
(declare-fun lt!15499 () LongMapFixedSize!242)

(declare-fun map!694 (LongMapFixedSize!242) ListLongMap!1073)

(assert (=> b!40307 (= lt!15498 (map!694 lt!15499))))

(declare-fun lt!15494 () array!2595)

(declare-datatypes ((List!1073 0))(
  ( (Nil!1070) (Cons!1069 (h!1643 (_ BitVec 64)) (t!3938 List!1073)) )
))
(declare-fun arrayNoDuplicates!0 (array!2595 (_ BitVec 32) List!1073) Bool)

(assert (=> b!40307 (arrayNoDuplicates!0 lt!15494 #b00000000000000000000000000000000 Nil!1070)))

(declare-datatypes ((Unit!984 0))(
  ( (Unit!985) )
))
(declare-fun lt!15496 () Unit!984)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2595 (_ BitVec 32) (_ BitVec 32) List!1073) Unit!984)

(assert (=> b!40307 (= lt!15496 (lemmaArrayNoDuplicatesInAll0Array!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2595 (_ BitVec 32)) Bool)

(assert (=> b!40307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15494 mask!853)))

(declare-fun lt!15495 () Unit!984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2595 (_ BitVec 32) (_ BitVec 32)) Unit!984)

(assert (=> b!40307 (= lt!15495 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!15494 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2595 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!40307 (= (arrayCountValidKeys!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!15497 () Unit!984)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2595 (_ BitVec 32) (_ BitVec 32)) Unit!984)

(assert (=> b!40307 (= lt!15497 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun lt!15493 () V!2101)

(declare-fun defaultEntry!470 () Int)

(assert (=> b!40307 (= lt!15499 (LongMapFixedSize!243 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!15493 lt!15493 #b00000000000000000000000000000000 lt!15494 (array!2598 ((as const (Array (_ BitVec 32) ValueCell!631)) EmptyCell!631) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))

(assert (=> b!40307 (= lt!15494 (array!2596 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!192 (Int (_ BitVec 64)) V!2101)

(assert (=> b!40307 (= lt!15493 (dynLambda!192 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40308 () Bool)

(declare-fun res!24065 () Bool)

(assert (=> b!40308 (=> res!24065 e!25572)))

(declare-fun isEmpty!234 (List!1072) Bool)

(assert (=> b!40308 (= res!24065 (isEmpty!234 (toList!552 lt!15498)))))

(declare-fun b!40309 () Bool)

(declare-fun valid!124 (LongMapFixedSize!242) Bool)

(assert (=> b!40309 (= e!25572 (valid!124 lt!15499))))

(assert (= (and start!5702 res!24066) b!40307))

(assert (= (and b!40307 (not res!24067)) b!40308))

(assert (= (and b!40308 (not res!24065)) b!40309))

(declare-fun b_lambda!2081 () Bool)

(assert (=> (not b_lambda!2081) (not b!40307)))

(declare-fun t!3936 () Bool)

(declare-fun tb!851 () Bool)

(assert (=> (and start!5702 (= defaultEntry!470 defaultEntry!470) t!3936) tb!851))

(declare-fun result!1451 () Bool)

(declare-fun tp_is_empty!1757 () Bool)

(assert (=> tb!851 (= result!1451 tp_is_empty!1757)))

(assert (=> b!40307 t!3936))

(declare-fun b_and!2377 () Bool)

(assert (= b_and!2375 (and (=> t!3936 result!1451) b_and!2377)))

(declare-fun m!33283 () Bool)

(assert (=> start!5702 m!33283))

(declare-fun m!33285 () Bool)

(assert (=> b!40307 m!33285))

(declare-fun m!33287 () Bool)

(assert (=> b!40307 m!33287))

(declare-fun m!33289 () Bool)

(assert (=> b!40307 m!33289))

(declare-fun m!33291 () Bool)

(assert (=> b!40307 m!33291))

(declare-fun m!33293 () Bool)

(assert (=> b!40307 m!33293))

(declare-fun m!33295 () Bool)

(assert (=> b!40307 m!33295))

(declare-fun m!33297 () Bool)

(assert (=> b!40307 m!33297))

(declare-fun m!33299 () Bool)

(assert (=> b!40307 m!33299))

(declare-fun m!33301 () Bool)

(assert (=> b!40308 m!33301))

(declare-fun m!33303 () Bool)

(assert (=> b!40309 m!33303))

(push 1)

(assert (not b!40308))

(assert (not b!40307))

(assert b_and!2377)

(assert (not start!5702))

(assert (not b_next!1367))

(assert (not b!40309))

(assert tp_is_empty!1757)

(assert (not b_lambda!2081))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2377)

(assert (not b_next!1367))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2085 () Bool)

(assert (= b_lambda!2081 (or (and start!5702 b_free!1367) b_lambda!2085)))

(push 1)

(assert (not b!40308))

(assert (not b!40307))

(assert b_and!2377)

(assert (not start!5702))

(assert tp_is_empty!1757)

(assert (not b_lambda!2085))

(assert (not b_next!1367))

(assert (not b!40309))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2377)

(assert (not b_next!1367))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7006 () Bool)

(declare-fun res!24080 () Bool)

(declare-fun e!25583 () Bool)

(assert (=> d!7006 (=> (not res!24080) (not e!25583))))

(declare-fun simpleValid!27 (LongMapFixedSize!242) Bool)

(assert (=> d!7006 (= res!24080 (simpleValid!27 lt!15499))))

(assert (=> d!7006 (= (valid!124 lt!15499) e!25583)))

(declare-fun b!40328 () Bool)

(declare-fun res!24081 () Bool)

(assert (=> b!40328 (=> (not res!24081) (not e!25583))))

(assert (=> b!40328 (= res!24081 (= (arrayCountValidKeys!0 (_keys!3294 lt!15499) #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))) (_size!170 lt!15499)))))

(declare-fun b!40329 () Bool)

(declare-fun res!24082 () Bool)

(assert (=> b!40329 (=> (not res!24082) (not e!25583))))

(assert (=> b!40329 (= res!24082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3294 lt!15499) (mask!5178 lt!15499)))))

(declare-fun b!40330 () Bool)

(assert (=> b!40330 (= e!25583 (arrayNoDuplicates!0 (_keys!3294 lt!15499) #b00000000000000000000000000000000 Nil!1070))))

(assert (= (and d!7006 res!24080) b!40328))

(assert (= (and b!40328 res!24081) b!40329))

(assert (= (and b!40329 res!24082) b!40330))

(declare-fun m!33305 () Bool)

(assert (=> d!7006 m!33305))

(declare-fun m!33307 () Bool)

(assert (=> b!40328 m!33307))

(declare-fun m!33309 () Bool)

(assert (=> b!40329 m!33309))

(declare-fun m!33311 () Bool)

(assert (=> b!40330 m!33311))

(assert (=> b!40309 d!7006))

(declare-fun b!40353 () Bool)

(declare-fun e!25595 () (_ BitVec 32))

(assert (=> b!40353 (= e!25595 #b00000000000000000000000000000000)))

(declare-fun b!40354 () Bool)

(declare-fun e!25596 () (_ BitVec 32))

(assert (=> b!40354 (= e!25595 e!25596)))

(declare-fun c!4918 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!40354 (= c!4918 (validKeyInArray!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun d!7009 () Bool)

(declare-fun lt!15505 () (_ BitVec 32))

(assert (=> d!7009 (and (bvsge lt!15505 #b00000000000000000000000000000000) (bvsle lt!15505 (bvsub (size!1378 lt!15494) #b00000000000000000000000000000000)))))

(assert (=> d!7009 (= lt!15505 e!25595)))

(declare-fun c!4917 () Bool)

(assert (=> d!7009 (= c!4917 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7009 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1378 lt!15494)))))

(assert (=> d!7009 (= (arrayCountValidKeys!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!15505)))

(declare-fun b!40355 () Bool)

(declare-fun call!3104 () (_ BitVec 32))

(assert (=> b!40355 (= e!25596 call!3104)))

(declare-fun b!40356 () Bool)

(assert (=> b!40356 (= e!25596 (bvadd #b00000000000000000000000000000001 call!3104))))

(declare-fun bm!3101 () Bool)

(assert (=> bm!3101 (= call!3104 (arrayCountValidKeys!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7009 c!4917) b!40353))

(assert (= (and d!7009 (not c!4917)) b!40354))

(assert (= (and b!40354 c!4918) b!40356))

(assert (= (and b!40354 (not c!4918)) b!40355))

(assert (= (or b!40356 b!40355) bm!3101))

(declare-fun m!33331 () Bool)

(assert (=> b!40354 m!33331))

(assert (=> b!40354 m!33331))

(declare-fun m!33333 () Bool)

(assert (=> b!40354 m!33333))

(declare-fun m!33335 () Bool)

(assert (=> bm!3101 m!33335))

(assert (=> b!40307 d!7009))

(declare-fun b!40380 () Bool)

(declare-fun e!25616 () Bool)

(declare-fun e!25615 () Bool)

(assert (=> b!40380 (= e!25616 e!25615)))

(declare-fun c!4924 () Bool)

(assert (=> b!40380 (= c!4924 (validKeyInArray!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun b!40381 () Bool)

(declare-fun e!25617 () Bool)

(declare-fun call!3110 () Bool)

(assert (=> b!40381 (= e!25617 call!3110)))

(declare-fun b!40382 () Bool)

(assert (=> b!40382 (= e!25615 e!25617)))

(declare-fun lt!15520 () (_ BitVec 64))

(assert (=> b!40382 (= lt!15520 (select (arr!1241 lt!15494) #b00000000000000000000000000000000))))

(declare-fun lt!15518 () Unit!984)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2595 (_ BitVec 64) (_ BitVec 32)) Unit!984)

(assert (=> b!40382 (= lt!15518 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15494 lt!15520 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!40382 (arrayContainsKey!0 lt!15494 lt!15520 #b00000000000000000000000000000000)))

(declare-fun lt!15519 () Unit!984)

(assert (=> b!40382 (= lt!15519 lt!15518)))

(declare-fun res!24108 () Bool)

(declare-datatypes ((SeekEntryResult!183 0))(
  ( (MissingZero!183 (index!2854 (_ BitVec 32))) (Found!183 (index!2855 (_ BitVec 32))) (Intermediate!183 (undefined!995 Bool) (index!2856 (_ BitVec 32)) (x!7730 (_ BitVec 32))) (Undefined!183) (MissingVacant!183 (index!2857 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2595 (_ BitVec 32)) SeekEntryResult!183)

(assert (=> b!40382 (= res!24108 (= (seekEntryOrOpen!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853) (Found!183 #b00000000000000000000000000000000)))))

(assert (=> b!40382 (=> (not res!24108) (not e!25617))))

(declare-fun d!7019 () Bool)

(declare-fun res!24109 () Bool)

(assert (=> d!7019 (=> res!24109 e!25616)))

(assert (=> d!7019 (= res!24109 (bvsge #b00000000000000000000000000000000 (size!1378 lt!15494)))))

(assert (=> d!7019 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15494 mask!853) e!25616)))

(declare-fun b!40383 () Bool)

(assert (=> b!40383 (= e!25615 call!3110)))

(declare-fun bm!3107 () Bool)

(assert (=> bm!3107 (= call!3110 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!15494 mask!853))))

(assert (= (and d!7019 (not res!24109)) b!40380))

(assert (= (and b!40380 c!4924) b!40382))

(assert (= (and b!40380 (not c!4924)) b!40383))

(assert (= (and b!40382 res!24108) b!40381))

(assert (= (or b!40381 b!40383) bm!3107))

(assert (=> b!40380 m!33331))

(assert (=> b!40380 m!33331))

(assert (=> b!40380 m!33333))

(assert (=> b!40382 m!33331))

(declare-fun m!33351 () Bool)

(assert (=> b!40382 m!33351))

(declare-fun m!33353 () Bool)

(assert (=> b!40382 m!33353))

(assert (=> b!40382 m!33331))

(declare-fun m!33355 () Bool)

(assert (=> b!40382 m!33355))

(declare-fun m!33357 () Bool)

(assert (=> bm!3107 m!33357))

(assert (=> b!40307 d!7019))

(declare-fun b!40414 () Bool)

(declare-fun e!25637 () Bool)

(declare-fun call!3118 () Bool)

(assert (=> b!40414 (= e!25637 call!3118)))

(declare-fun b!40415 () Bool)

(assert (=> b!40415 (= e!25637 call!3118)))

(declare-fun b!40416 () Bool)

(declare-fun e!25639 () Bool)

(declare-fun contains!515 (List!1073 (_ BitVec 64)) Bool)

(assert (=> b!40416 (= e!25639 (contains!515 Nil!1070 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun b!40417 () Bool)

(declare-fun e!25636 () Bool)

(declare-fun e!25638 () Bool)

(assert (=> b!40417 (= e!25636 e!25638)))

(declare-fun res!24118 () Bool)

(assert (=> b!40417 (=> (not res!24118) (not e!25638))))

(assert (=> b!40417 (= res!24118 (not e!25639))))

(declare-fun res!24116 () Bool)

(assert (=> b!40417 (=> (not res!24116) (not e!25639))))

(assert (=> b!40417 (= res!24116 (validKeyInArray!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun d!7029 () Bool)

(declare-fun res!24117 () Bool)

(assert (=> d!7029 (=> res!24117 e!25636)))

(assert (=> d!7029 (= res!24117 (bvsge #b00000000000000000000000000000000 (size!1378 lt!15494)))))

(assert (=> d!7029 (= (arrayNoDuplicates!0 lt!15494 #b00000000000000000000000000000000 Nil!1070) e!25636)))

(declare-fun b!40418 () Bool)

(assert (=> b!40418 (= e!25638 e!25637)))

(declare-fun c!4937 () Bool)

(assert (=> b!40418 (= c!4937 (validKeyInArray!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun bm!3115 () Bool)

(assert (=> bm!3115 (= call!3118 (arrayNoDuplicates!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)))))

(assert (= (and d!7029 (not res!24117)) b!40417))

(assert (= (and b!40417 res!24116) b!40416))

(assert (= (and b!40417 res!24118) b!40418))

(assert (= (and b!40418 c!4937) b!40415))

(assert (= (and b!40418 (not c!4937)) b!40414))

(assert (= (or b!40415 b!40414) bm!3115))

(assert (=> b!40416 m!33331))

(assert (=> b!40416 m!33331))

(declare-fun m!33363 () Bool)

(assert (=> b!40416 m!33363))

(assert (=> b!40417 m!33331))

(assert (=> b!40417 m!33331))

(assert (=> b!40417 m!33333))

(assert (=> b!40418 m!33331))

(assert (=> b!40418 m!33331))

(assert (=> b!40418 m!33333))

(assert (=> bm!3115 m!33331))

(declare-fun m!33365 () Bool)

(assert (=> bm!3115 m!33365))

(assert (=> b!40307 d!7029))

(declare-fun d!7035 () Bool)

(assert (=> d!7035 (arrayNoDuplicates!0 lt!15494 #b00000000000000000000000000000000 Nil!1070)))

(declare-fun lt!15532 () Unit!984)

(declare-fun choose!111 (array!2595 (_ BitVec 32) (_ BitVec 32) List!1073) Unit!984)

(assert (=> d!7035 (= lt!15532 (choose!111 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1070))))

(assert (=> d!7035 (= (size!1378 lt!15494) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7035 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1070) lt!15532)))

(declare-fun bs!1698 () Bool)

(assert (= bs!1698 d!7035))

(assert (=> bs!1698 m!33285))

(declare-fun m!33369 () Bool)

(assert (=> bs!1698 m!33369))

(assert (=> b!40307 d!7035))

(declare-fun d!7039 () Bool)

(assert (=> d!7039 (= (arrayCountValidKeys!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!15535 () Unit!984)

(declare-fun choose!59 (array!2595 (_ BitVec 32) (_ BitVec 32)) Unit!984)

(assert (=> d!7039 (= lt!15535 (choose!59 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7039 (bvslt (size!1378 lt!15494) #b01111111111111111111111111111111)))

(assert (=> d!7039 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!15535)))

(declare-fun bs!1699 () Bool)

(assert (= bs!1699 d!7039))

(assert (=> bs!1699 m!33289))

(declare-fun m!33371 () Bool)

(assert (=> bs!1699 m!33371))

(assert (=> b!40307 d!7039))

(declare-fun d!7041 () Bool)

(assert (=> d!7041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15494 mask!853)))

(declare-fun lt!15547 () Unit!984)

(declare-fun choose!34 (array!2595 (_ BitVec 32) (_ BitVec 32)) Unit!984)

(assert (=> d!7041 (= lt!15547 (choose!34 lt!15494 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7041 (validMask!0 mask!853)))

(assert (=> d!7041 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!15494 mask!853 #b00000000000000000000000000000000) lt!15547)))

(declare-fun bs!1702 () Bool)

(assert (= bs!1702 d!7041))

(assert (=> bs!1702 m!33291))

(declare-fun m!33377 () Bool)

(assert (=> bs!1702 m!33377))

(assert (=> bs!1702 m!33283))

(assert (=> b!40307 d!7041))

(declare-fun d!7047 () Bool)

(declare-fun getCurrentListMap!313 (array!2595 array!2597 (_ BitVec 32) (_ BitVec 32) V!2101 V!2101 (_ BitVec 32) Int) ListLongMap!1073)

(assert (=> d!7047 (= (map!694 lt!15499) (getCurrentListMap!313 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)))))

(declare-fun bs!1704 () Bool)

(assert (= bs!1704 d!7047))

(declare-fun m!33397 () Bool)

(assert (=> bs!1704 m!33397))

(assert (=> b!40307 d!7047))

(declare-fun d!7055 () Bool)

(assert (=> d!7055 (= (isEmpty!234 (toList!552 lt!15498)) (is-Nil!1069 (toList!552 lt!15498)))))

(assert (=> b!40308 d!7055))

(declare-fun d!7059 () Bool)

(assert (=> d!7059 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5702 d!7059))

(push 1)

(assert (not bm!3115))

(assert (not bm!3107))

(assert (not b!40416))

(assert (not d!7041))

(assert (not b!40382))

(assert (not b!40329))

(assert (not b!40417))

(assert (not d!7047))

(assert tp_is_empty!1757)

(assert (not b!40380))

(assert (not b!40354))

(assert (not b_lambda!2085))

(assert (not b!40328))

(assert (not b_next!1367))

(assert (not b!40418))

(assert (not d!7039))

(assert (not bm!3101))

(assert b_and!2377)

(assert (not b!40330))

(assert (not d!7035))

(assert (not d!7006))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2377)

(assert (not b_next!1367))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!40534 () Bool)

(declare-fun e!25710 () (_ BitVec 32))

(assert (=> b!40534 (= e!25710 #b00000000000000000000000000000000)))

(declare-fun b!40535 () Bool)

(declare-fun e!25711 () (_ BitVec 32))

(assert (=> b!40535 (= e!25710 e!25711)))

(declare-fun c!4960 () Bool)

(assert (=> b!40535 (= c!4960 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!7107 () Bool)

(declare-fun lt!15581 () (_ BitVec 32))

(assert (=> d!7107 (and (bvsge lt!15581 #b00000000000000000000000000000000) (bvsle lt!15581 (bvsub (size!1378 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!7107 (= lt!15581 e!25710)))

(declare-fun c!4959 () Bool)

(assert (=> d!7107 (= c!4959 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7107 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1378 lt!15494)))))

(assert (=> d!7107 (= (arrayCountValidKeys!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15581)))

(declare-fun b!40536 () Bool)

(declare-fun call!3136 () (_ BitVec 32))

(assert (=> b!40536 (= e!25711 call!3136)))

(declare-fun b!40537 () Bool)

(assert (=> b!40537 (= e!25711 (bvadd #b00000000000000000000000000000001 call!3136))))

(declare-fun bm!3133 () Bool)

(assert (=> bm!3133 (= call!3136 (arrayCountValidKeys!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7107 c!4959) b!40534))

(assert (= (and d!7107 (not c!4959)) b!40535))

(assert (= (and b!40535 c!4960) b!40537))

(assert (= (and b!40535 (not c!4960)) b!40536))

(assert (= (or b!40537 b!40536) bm!3133))

(declare-fun m!33485 () Bool)

(assert (=> b!40535 m!33485))

(assert (=> b!40535 m!33485))

(declare-fun m!33487 () Bool)

(assert (=> b!40535 m!33487))

(declare-fun m!33489 () Bool)

(assert (=> bm!3133 m!33489))

(assert (=> bm!3101 d!7107))

(assert (=> d!7039 d!7009))

(declare-fun d!7109 () Bool)

(assert (=> d!7109 (= (arrayCountValidKeys!0 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!7109 true))

(declare-fun _$88!43 () Unit!984)

(assert (=> d!7109 (= (choose!59 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!43)))

(declare-fun bs!1711 () Bool)

(assert (= bs!1711 d!7109))

(assert (=> bs!1711 m!33289))

(assert (=> d!7039 d!7109))

(declare-fun d!7113 () Bool)

(assert (=> d!7113 (= (validKeyInArray!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)) (and (not (= (select (arr!1241 lt!15494) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1241 lt!15494) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40380 d!7113))

(declare-fun c!5000 () Bool)

(declare-fun c!5003 () Bool)

(declare-fun call!3175 () ListLongMap!1073)

(declare-fun call!3174 () ListLongMap!1073)

(declare-fun call!3177 () ListLongMap!1073)

(declare-fun call!3176 () ListLongMap!1073)

(declare-fun bm!3169 () Bool)

(declare-fun +!64 (ListLongMap!1073 tuple2!1492) ListLongMap!1073)

(assert (=> bm!3169 (= call!3174 (+!64 (ite c!5000 call!3176 (ite c!5003 call!3177 call!3175)) (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))))))

(declare-fun b!40663 () Bool)

(declare-fun e!25799 () ListLongMap!1073)

(declare-fun call!3172 () ListLongMap!1073)

(assert (=> b!40663 (= e!25799 call!3172)))

(declare-fun b!40664 () Bool)

(declare-fun e!25795 () Bool)

(declare-fun call!3178 () Bool)

(assert (=> b!40664 (= e!25795 (not call!3178))))

(declare-fun b!40665 () Bool)

(declare-fun e!25791 () Bool)

(assert (=> b!40665 (= e!25791 e!25795)))

(declare-fun c!5005 () Bool)

(assert (=> b!40665 (= c!5005 (not (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!40666 () Bool)

(declare-fun e!25789 () Bool)

(assert (=> b!40666 (= e!25789 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun b!40667 () Bool)

(declare-fun res!24250 () Bool)

(assert (=> b!40667 (=> (not res!24250) (not e!25791))))

(declare-fun e!25790 () Bool)

(assert (=> b!40667 (= res!24250 e!25790)))

(declare-fun c!5002 () Bool)

(assert (=> b!40667 (= c!5002 (not (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!40668 () Bool)

(declare-fun e!25793 () Bool)

(declare-fun e!25788 () Bool)

(assert (=> b!40668 (= e!25793 e!25788)))

(declare-fun res!24251 () Bool)

(assert (=> b!40668 (=> (not res!24251) (not e!25788))))

(declare-fun lt!15711 () ListLongMap!1073)

(declare-fun contains!516 (ListLongMap!1073 (_ BitVec 64)) Bool)

(assert (=> b!40668 (= res!24251 (contains!516 lt!15711 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (=> b!40668 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(declare-fun b!40669 () Bool)

(declare-fun e!25798 () Bool)

(assert (=> b!40669 (= e!25798 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun b!40670 () Bool)

(declare-fun apply!55 (ListLongMap!1073 (_ BitVec 64)) V!2101)

(declare-fun get!703 (ValueCell!631 V!2101) V!2101)

(assert (=> b!40670 (= e!25788 (= (apply!55 lt!15711 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)) (get!703 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000) (dynLambda!192 (defaultEntry!1805 lt!15499) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40670 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1379 (_values!1788 lt!15499))))))

(assert (=> b!40670 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(declare-fun b!40671 () Bool)

(declare-fun e!25796 () Unit!984)

(declare-fun Unit!986 () Unit!984)

(assert (=> b!40671 (= e!25796 Unit!986)))

(declare-fun b!40672 () Bool)

(declare-fun lt!15706 () Unit!984)

(assert (=> b!40672 (= e!25796 lt!15706)))

(declare-fun lt!15704 () ListLongMap!1073)

(declare-fun getCurrentListMapNoExtraKeys!33 (array!2595 array!2597 (_ BitVec 32) (_ BitVec 32) V!2101 V!2101 (_ BitVec 32) Int) ListLongMap!1073)

(assert (=> b!40672 (= lt!15704 (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)))))

(declare-fun lt!15702 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15702 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15720 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15720 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))

(declare-fun lt!15721 () Unit!984)

(declare-fun addStillContains!31 (ListLongMap!1073 (_ BitVec 64) V!2101 (_ BitVec 64)) Unit!984)

(assert (=> b!40672 (= lt!15721 (addStillContains!31 lt!15704 lt!15702 (zeroValue!1723 lt!15499) lt!15720))))

(assert (=> b!40672 (contains!516 (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))) lt!15720)))

(declare-fun lt!15717 () Unit!984)

(assert (=> b!40672 (= lt!15717 lt!15721)))

(declare-fun lt!15712 () ListLongMap!1073)

(assert (=> b!40672 (= lt!15712 (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)))))

(declare-fun lt!15707 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15707 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15703 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15703 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))

(declare-fun lt!15710 () Unit!984)

(declare-fun addApplyDifferent!31 (ListLongMap!1073 (_ BitVec 64) V!2101 (_ BitVec 64)) Unit!984)

(assert (=> b!40672 (= lt!15710 (addApplyDifferent!31 lt!15712 lt!15707 (minValue!1723 lt!15499) lt!15703))))

(assert (=> b!40672 (= (apply!55 (+!64 lt!15712 (tuple2!1493 lt!15707 (minValue!1723 lt!15499))) lt!15703) (apply!55 lt!15712 lt!15703))))

(declare-fun lt!15701 () Unit!984)

(assert (=> b!40672 (= lt!15701 lt!15710)))

(declare-fun lt!15714 () ListLongMap!1073)

(assert (=> b!40672 (= lt!15714 (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)))))

(declare-fun lt!15713 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15713 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15722 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15722 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))

(declare-fun lt!15718 () Unit!984)

(assert (=> b!40672 (= lt!15718 (addApplyDifferent!31 lt!15714 lt!15713 (zeroValue!1723 lt!15499) lt!15722))))

(assert (=> b!40672 (= (apply!55 (+!64 lt!15714 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))) lt!15722) (apply!55 lt!15714 lt!15722))))

(declare-fun lt!15709 () Unit!984)

(assert (=> b!40672 (= lt!15709 lt!15718)))

(declare-fun lt!15719 () ListLongMap!1073)

(assert (=> b!40672 (= lt!15719 (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)))))

(declare-fun lt!15708 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15708 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15705 () (_ BitVec 64))

(assert (=> b!40672 (= lt!15705 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))

(assert (=> b!40672 (= lt!15706 (addApplyDifferent!31 lt!15719 lt!15708 (minValue!1723 lt!15499) lt!15705))))

(assert (=> b!40672 (= (apply!55 (+!64 lt!15719 (tuple2!1493 lt!15708 (minValue!1723 lt!15499))) lt!15705) (apply!55 lt!15719 lt!15705))))

(declare-fun b!40674 () Bool)

(declare-fun e!25794 () Bool)

(assert (=> b!40674 (= e!25795 e!25794)))

(declare-fun res!24245 () Bool)

(assert (=> b!40674 (= res!24245 call!3178)))

(assert (=> b!40674 (=> (not res!24245) (not e!25794))))

(declare-fun b!40675 () Bool)

(declare-fun e!25797 () Bool)

(assert (=> b!40675 (= e!25797 (= (apply!55 lt!15711 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1723 lt!15499)))))

(declare-fun bm!3170 () Bool)

(assert (=> bm!3170 (= call!3177 call!3176)))

(declare-fun bm!3171 () Bool)

(assert (=> bm!3171 (= call!3175 call!3177)))

(declare-fun b!40676 () Bool)

(declare-fun res!24247 () Bool)

(assert (=> b!40676 (=> (not res!24247) (not e!25791))))

(assert (=> b!40676 (= res!24247 e!25793)))

(declare-fun res!24246 () Bool)

(assert (=> b!40676 (=> res!24246 e!25793)))

(assert (=> b!40676 (= res!24246 (not e!25798))))

(declare-fun res!24252 () Bool)

(assert (=> b!40676 (=> (not res!24252) (not e!25798))))

(assert (=> b!40676 (= res!24252 (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(declare-fun b!40677 () Bool)

(assert (=> b!40677 (= e!25794 (= (apply!55 lt!15711 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1723 lt!15499)))))

(declare-fun b!40678 () Bool)

(declare-fun e!25800 () ListLongMap!1073)

(assert (=> b!40678 (= e!25800 (+!64 call!3174 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))))

(declare-fun bm!3172 () Bool)

(assert (=> bm!3172 (= call!3176 (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)))))

(declare-fun b!40679 () Bool)

(assert (=> b!40679 (= e!25790 e!25797)))

(declare-fun res!24249 () Bool)

(declare-fun call!3173 () Bool)

(assert (=> b!40679 (= res!24249 call!3173)))

(assert (=> b!40679 (=> (not res!24249) (not e!25797))))

(declare-fun bm!3173 () Bool)

(assert (=> bm!3173 (= call!3172 call!3174)))

(declare-fun bm!3174 () Bool)

(assert (=> bm!3174 (= call!3178 (contains!516 lt!15711 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40680 () Bool)

(declare-fun e!25792 () ListLongMap!1073)

(assert (=> b!40680 (= e!25792 call!3172)))

(declare-fun b!40673 () Bool)

(assert (=> b!40673 (= e!25800 e!25792)))

(assert (=> b!40673 (= c!5003 (and (not (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!7115 () Bool)

(assert (=> d!7115 e!25791))

(declare-fun res!24253 () Bool)

(assert (=> d!7115 (=> (not res!24253) (not e!25791))))

(assert (=> d!7115 (= res!24253 (or (bvsge #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))))

(declare-fun lt!15715 () ListLongMap!1073)

(assert (=> d!7115 (= lt!15711 lt!15715)))

(declare-fun lt!15716 () Unit!984)

(assert (=> d!7115 (= lt!15716 e!25796)))

(declare-fun c!5004 () Bool)

(assert (=> d!7115 (= c!5004 e!25789)))

(declare-fun res!24248 () Bool)

(assert (=> d!7115 (=> (not res!24248) (not e!25789))))

(assert (=> d!7115 (= res!24248 (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7115 (= lt!15715 e!25800)))

(assert (=> d!7115 (= c!5000 (and (not (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!7115 (validMask!0 (mask!5178 lt!15499))))

(assert (=> d!7115 (= (getCurrentListMap!313 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)) lt!15711)))

(declare-fun b!40681 () Bool)

(declare-fun c!5001 () Bool)

(assert (=> b!40681 (= c!5001 (and (not (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1696 lt!15499) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!40681 (= e!25792 e!25799)))

(declare-fun b!40682 () Bool)

(assert (=> b!40682 (= e!25790 (not call!3173))))

(declare-fun bm!3175 () Bool)

(assert (=> bm!3175 (= call!3173 (contains!516 lt!15711 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40683 () Bool)

(assert (=> b!40683 (= e!25799 call!3175)))

(assert (= (and d!7115 c!5000) b!40678))

(assert (= (and d!7115 (not c!5000)) b!40673))

(assert (= (and b!40673 c!5003) b!40680))

(assert (= (and b!40673 (not c!5003)) b!40681))

(assert (= (and b!40681 c!5001) b!40663))

(assert (= (and b!40681 (not c!5001)) b!40683))

(assert (= (or b!40663 b!40683) bm!3171))

(assert (= (or b!40680 bm!3171) bm!3170))

(assert (= (or b!40680 b!40663) bm!3173))

(assert (= (or b!40678 bm!3170) bm!3172))

(assert (= (or b!40678 bm!3173) bm!3169))

(assert (= (and d!7115 res!24248) b!40666))

(assert (= (and d!7115 c!5004) b!40672))

(assert (= (and d!7115 (not c!5004)) b!40671))

(assert (= (and d!7115 res!24253) b!40676))

(assert (= (and b!40676 res!24252) b!40669))

(assert (= (and b!40676 (not res!24246)) b!40668))

(assert (= (and b!40668 res!24251) b!40670))

(assert (= (and b!40676 res!24247) b!40667))

(assert (= (and b!40667 c!5002) b!40679))

(assert (= (and b!40667 (not c!5002)) b!40682))

(assert (= (and b!40679 res!24249) b!40675))

(assert (= (or b!40679 b!40682) bm!3175))

(assert (= (and b!40667 res!24250) b!40665))

(assert (= (and b!40665 c!5005) b!40674))

(assert (= (and b!40665 (not c!5005)) b!40664))

(assert (= (and b!40674 res!24245) b!40677))

(assert (= (or b!40674 b!40664) bm!3174))

(declare-fun b_lambda!2091 () Bool)

(assert (=> (not b_lambda!2091) (not b!40670)))

(declare-fun tb!855 () Bool)

(declare-fun t!3942 () Bool)

(assert (=> (and start!5702 (= defaultEntry!470 (defaultEntry!1805 lt!15499)) t!3942) tb!855))

(declare-fun result!1457 () Bool)

(assert (=> tb!855 (= result!1457 tp_is_empty!1757)))

(assert (=> b!40670 t!3942))

(declare-fun b_and!2381 () Bool)

(assert (= b_and!2377 (and (=> t!3942 result!1457) b_and!2381)))

(declare-fun m!33563 () Bool)

(assert (=> bm!3169 m!33563))

(declare-fun m!33565 () Bool)

(assert (=> b!40672 m!33565))

(declare-fun m!33567 () Bool)

(assert (=> b!40672 m!33567))

(declare-fun m!33569 () Bool)

(assert (=> b!40672 m!33569))

(declare-fun m!33571 () Bool)

(assert (=> b!40672 m!33571))

(declare-fun m!33573 () Bool)

(assert (=> b!40672 m!33573))

(declare-fun m!33575 () Bool)

(assert (=> b!40672 m!33575))

(assert (=> b!40672 m!33573))

(declare-fun m!33577 () Bool)

(assert (=> b!40672 m!33577))

(declare-fun m!33579 () Bool)

(assert (=> b!40672 m!33579))

(declare-fun m!33581 () Bool)

(assert (=> b!40672 m!33581))

(declare-fun m!33583 () Bool)

(assert (=> b!40672 m!33583))

(declare-fun m!33585 () Bool)

(assert (=> b!40672 m!33585))

(declare-fun m!33587 () Bool)

(assert (=> b!40672 m!33587))

(declare-fun m!33589 () Bool)

(assert (=> b!40672 m!33589))

(declare-fun m!33591 () Bool)

(assert (=> b!40672 m!33591))

(assert (=> b!40672 m!33581))

(declare-fun m!33593 () Bool)

(assert (=> b!40672 m!33593))

(assert (=> b!40672 m!33589))

(declare-fun m!33595 () Bool)

(assert (=> b!40672 m!33595))

(assert (=> b!40672 m!33567))

(declare-fun m!33597 () Bool)

(assert (=> b!40672 m!33597))

(declare-fun m!33599 () Bool)

(assert (=> d!7115 m!33599))

(assert (=> b!40669 m!33585))

(assert (=> b!40669 m!33585))

(declare-fun m!33601 () Bool)

(assert (=> b!40669 m!33601))

(assert (=> b!40666 m!33585))

(assert (=> b!40666 m!33585))

(assert (=> b!40666 m!33601))

(declare-fun m!33603 () Bool)

(assert (=> b!40678 m!33603))

(assert (=> b!40668 m!33585))

(assert (=> b!40668 m!33585))

(declare-fun m!33605 () Bool)

(assert (=> b!40668 m!33605))

(declare-fun m!33607 () Bool)

(assert (=> b!40670 m!33607))

(declare-fun m!33609 () Bool)

(assert (=> b!40670 m!33609))

(declare-fun m!33611 () Bool)

(assert (=> b!40670 m!33611))

(assert (=> b!40670 m!33585))

(declare-fun m!33613 () Bool)

(assert (=> b!40670 m!33613))

(assert (=> b!40670 m!33609))

(assert (=> b!40670 m!33607))

(assert (=> b!40670 m!33585))

(declare-fun m!33615 () Bool)

(assert (=> b!40677 m!33615))

(assert (=> bm!3172 m!33583))

(declare-fun m!33617 () Bool)

(assert (=> b!40675 m!33617))

(declare-fun m!33619 () Bool)

(assert (=> bm!3174 m!33619))

(declare-fun m!33621 () Bool)

(assert (=> bm!3175 m!33621))

(assert (=> d!7047 d!7115))

(declare-fun d!7125 () Bool)

(declare-fun lt!15772 () Bool)

(declare-fun content!32 (List!1073) (Set (_ BitVec 64)))

(assert (=> d!7125 (= lt!15772 (member (select (arr!1241 lt!15494) #b00000000000000000000000000000000) (content!32 Nil!1070)))))

(declare-fun e!25824 () Bool)

(assert (=> d!7125 (= lt!15772 e!25824)))

(declare-fun res!24269 () Bool)

(assert (=> d!7125 (=> (not res!24269) (not e!25824))))

(assert (=> d!7125 (= res!24269 (is-Cons!1069 Nil!1070))))

(assert (=> d!7125 (= (contains!515 Nil!1070 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)) lt!15772)))

(declare-fun b!40712 () Bool)

(declare-fun e!25823 () Bool)

(assert (=> b!40712 (= e!25824 e!25823)))

(declare-fun res!24268 () Bool)

(assert (=> b!40712 (=> res!24268 e!25823)))

(assert (=> b!40712 (= res!24268 (= (h!1643 Nil!1070) (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun b!40713 () Bool)

(assert (=> b!40713 (= e!25823 (contains!515 (t!3938 Nil!1070) (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(assert (= (and d!7125 res!24269) b!40712))

(assert (= (and b!40712 (not res!24268)) b!40713))

(declare-fun m!33625 () Bool)

(assert (=> d!7125 m!33625))

(assert (=> d!7125 m!33331))

(declare-fun m!33627 () Bool)

(assert (=> d!7125 m!33627))

(assert (=> b!40713 m!33331))

(declare-fun m!33629 () Bool)

(assert (=> b!40713 m!33629))

(assert (=> b!40416 d!7125))

(declare-fun b!40746 () Bool)

(declare-fun res!24294 () Bool)

(declare-fun e!25841 () Bool)

(assert (=> b!40746 (=> (not res!24294) (not e!25841))))

(assert (=> b!40746 (= res!24294 (and (= (size!1379 (_values!1788 lt!15499)) (bvadd (mask!5178 lt!15499) #b00000000000000000000000000000001)) (= (size!1378 (_keys!3294 lt!15499)) (size!1379 (_values!1788 lt!15499))) (bvsge (_size!170 lt!15499) #b00000000000000000000000000000000) (bvsle (_size!170 lt!15499) (bvadd (mask!5178 lt!15499) #b00000000000000000000000000000001))))))

(declare-fun b!40749 () Bool)

(assert (=> b!40749 (= e!25841 (and (bvsge (extraKeys!1696 lt!15499) #b00000000000000000000000000000000) (bvsle (extraKeys!1696 lt!15499) #b00000000000000000000000000000011) (bvsge (_vacant!170 lt!15499) #b00000000000000000000000000000000)))))

(declare-fun d!7129 () Bool)

(declare-fun res!24292 () Bool)

(assert (=> d!7129 (=> (not res!24292) (not e!25841))))

(assert (=> d!7129 (= res!24292 (validMask!0 (mask!5178 lt!15499)))))

(assert (=> d!7129 (= (simpleValid!27 lt!15499) e!25841)))

(declare-fun b!40748 () Bool)

(declare-fun res!24295 () Bool)

(assert (=> b!40748 (=> (not res!24295) (not e!25841))))

(declare-fun size!1394 (LongMapFixedSize!242) (_ BitVec 32))

(assert (=> b!40748 (= res!24295 (= (size!1394 lt!15499) (bvadd (_size!170 lt!15499) (bvsdiv (bvadd (extraKeys!1696 lt!15499) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!40747 () Bool)

(declare-fun res!24293 () Bool)

(assert (=> b!40747 (=> (not res!24293) (not e!25841))))

(assert (=> b!40747 (= res!24293 (bvsge (size!1394 lt!15499) (_size!170 lt!15499)))))

(assert (= (and d!7129 res!24292) b!40746))

(assert (= (and b!40746 res!24294) b!40747))

(assert (= (and b!40747 res!24293) b!40748))

(assert (= (and b!40748 res!24295) b!40749))

(assert (=> d!7129 m!33599))

(declare-fun m!33631 () Bool)

(assert (=> b!40748 m!33631))

(assert (=> b!40747 m!33631))

(assert (=> d!7006 d!7129))

(assert (=> b!40354 d!7113))

(declare-fun b!40750 () Bool)

(declare-fun e!25843 () Bool)

(declare-fun e!25842 () Bool)

(assert (=> b!40750 (= e!25843 e!25842)))

(declare-fun c!5018 () Bool)

(assert (=> b!40750 (= c!5018 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40751 () Bool)

(declare-fun e!25844 () Bool)

(declare-fun call!3193 () Bool)

(assert (=> b!40751 (= e!25844 call!3193)))

(declare-fun b!40752 () Bool)

(assert (=> b!40752 (= e!25842 e!25844)))

(declare-fun lt!15775 () (_ BitVec 64))

(assert (=> b!40752 (= lt!15775 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15773 () Unit!984)

(assert (=> b!40752 (= lt!15773 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15494 lt!15775 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!40752 (arrayContainsKey!0 lt!15494 lt!15775 #b00000000000000000000000000000000)))

(declare-fun lt!15774 () Unit!984)

(assert (=> b!40752 (= lt!15774 lt!15773)))

(declare-fun res!24296 () Bool)

(assert (=> b!40752 (= res!24296 (= (seekEntryOrOpen!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15494 mask!853) (Found!183 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!40752 (=> (not res!24296) (not e!25844))))

(declare-fun d!7131 () Bool)

(declare-fun res!24297 () Bool)

(assert (=> d!7131 (=> res!24297 e!25843)))

(assert (=> d!7131 (= res!24297 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 lt!15494)))))

(assert (=> d!7131 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!15494 mask!853) e!25843)))

(declare-fun b!40753 () Bool)

(assert (=> b!40753 (= e!25842 call!3193)))

(declare-fun bm!3190 () Bool)

(assert (=> bm!3190 (= call!3193 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15494 mask!853))))

(assert (= (and d!7131 (not res!24297)) b!40750))

(assert (= (and b!40750 c!5018) b!40752))

(assert (= (and b!40750 (not c!5018)) b!40753))

(assert (= (and b!40752 res!24296) b!40751))

(assert (= (or b!40751 b!40753) bm!3190))

(assert (=> b!40750 m!33485))

(assert (=> b!40750 m!33485))

(assert (=> b!40750 m!33487))

(assert (=> b!40752 m!33485))

(declare-fun m!33633 () Bool)

(assert (=> b!40752 m!33633))

(declare-fun m!33635 () Bool)

(assert (=> b!40752 m!33635))

(assert (=> b!40752 m!33485))

(declare-fun m!33637 () Bool)

(assert (=> b!40752 m!33637))

(declare-fun m!33639 () Bool)

(assert (=> bm!3190 m!33639))

(assert (=> bm!3107 d!7131))

(declare-fun b!40754 () Bool)

(declare-fun e!25846 () Bool)

(declare-fun e!25845 () Bool)

(assert (=> b!40754 (= e!25846 e!25845)))

(declare-fun c!5019 () Bool)

(assert (=> b!40754 (= c!5019 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun b!40755 () Bool)

(declare-fun e!25847 () Bool)

(declare-fun call!3194 () Bool)

(assert (=> b!40755 (= e!25847 call!3194)))

(declare-fun b!40756 () Bool)

(assert (=> b!40756 (= e!25845 e!25847)))

(declare-fun lt!15778 () (_ BitVec 64))

(assert (=> b!40756 (= lt!15778 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))

(declare-fun lt!15776 () Unit!984)

(assert (=> b!40756 (= lt!15776 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3294 lt!15499) lt!15778 #b00000000000000000000000000000000))))

(assert (=> b!40756 (arrayContainsKey!0 (_keys!3294 lt!15499) lt!15778 #b00000000000000000000000000000000)))

(declare-fun lt!15777 () Unit!984)

(assert (=> b!40756 (= lt!15777 lt!15776)))

(declare-fun res!24298 () Bool)

(assert (=> b!40756 (= res!24298 (= (seekEntryOrOpen!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) (_keys!3294 lt!15499) (mask!5178 lt!15499)) (Found!183 #b00000000000000000000000000000000)))))

(assert (=> b!40756 (=> (not res!24298) (not e!25847))))

(declare-fun d!7133 () Bool)

(declare-fun res!24299 () Bool)

(assert (=> d!7133 (=> res!24299 e!25846)))

(assert (=> d!7133 (= res!24299 (bvsge #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7133 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3294 lt!15499) (mask!5178 lt!15499)) e!25846)))

(declare-fun b!40757 () Bool)

(assert (=> b!40757 (= e!25845 call!3194)))

(declare-fun bm!3191 () Bool)

(assert (=> bm!3191 (= call!3194 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3294 lt!15499) (mask!5178 lt!15499)))))

(assert (= (and d!7133 (not res!24299)) b!40754))

(assert (= (and b!40754 c!5019) b!40756))

(assert (= (and b!40754 (not c!5019)) b!40757))

(assert (= (and b!40756 res!24298) b!40755))

(assert (= (or b!40755 b!40757) bm!3191))

(assert (=> b!40754 m!33585))

(assert (=> b!40754 m!33585))

(assert (=> b!40754 m!33601))

(assert (=> b!40756 m!33585))

(declare-fun m!33641 () Bool)

(assert (=> b!40756 m!33641))

(declare-fun m!33643 () Bool)

(assert (=> b!40756 m!33643))

(assert (=> b!40756 m!33585))

(declare-fun m!33645 () Bool)

(assert (=> b!40756 m!33645))

(declare-fun m!33647 () Bool)

(assert (=> bm!3191 m!33647))

(assert (=> b!40329 d!7133))

(declare-fun b!40758 () Bool)

(declare-fun e!25849 () Bool)

(declare-fun call!3195 () Bool)

(assert (=> b!40758 (= e!25849 call!3195)))

(declare-fun b!40759 () Bool)

(assert (=> b!40759 (= e!25849 call!3195)))

(declare-fun b!40760 () Bool)

(declare-fun e!25851 () Bool)

(assert (=> b!40760 (= e!25851 (contains!515 Nil!1070 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun b!40761 () Bool)

(declare-fun e!25848 () Bool)

(declare-fun e!25850 () Bool)

(assert (=> b!40761 (= e!25848 e!25850)))

(declare-fun res!24302 () Bool)

(assert (=> b!40761 (=> (not res!24302) (not e!25850))))

(assert (=> b!40761 (= res!24302 (not e!25851))))

(declare-fun res!24300 () Bool)

(assert (=> b!40761 (=> (not res!24300) (not e!25851))))

(assert (=> b!40761 (= res!24300 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun d!7135 () Bool)

(declare-fun res!24301 () Bool)

(assert (=> d!7135 (=> res!24301 e!25848)))

(assert (=> d!7135 (= res!24301 (bvsge #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7135 (= (arrayNoDuplicates!0 (_keys!3294 lt!15499) #b00000000000000000000000000000000 Nil!1070) e!25848)))

(declare-fun b!40762 () Bool)

(assert (=> b!40762 (= e!25850 e!25849)))

(declare-fun c!5020 () Bool)

(assert (=> b!40762 (= c!5020 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun bm!3192 () Bool)

(assert (=> bm!3192 (= call!3195 (arrayNoDuplicates!0 (_keys!3294 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5020 (Cons!1069 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) Nil!1070) Nil!1070)))))

(assert (= (and d!7135 (not res!24301)) b!40761))

(assert (= (and b!40761 res!24300) b!40760))

(assert (= (and b!40761 res!24302) b!40762))

(assert (= (and b!40762 c!5020) b!40759))

(assert (= (and b!40762 (not c!5020)) b!40758))

(assert (= (or b!40759 b!40758) bm!3192))

(assert (=> b!40760 m!33585))

(assert (=> b!40760 m!33585))

(declare-fun m!33649 () Bool)

(assert (=> b!40760 m!33649))

(assert (=> b!40761 m!33585))

(assert (=> b!40761 m!33585))

(assert (=> b!40761 m!33601))

(assert (=> b!40762 m!33585))

(assert (=> b!40762 m!33585))

(assert (=> b!40762 m!33601))

(assert (=> bm!3192 m!33585))

(declare-fun m!33651 () Bool)

(assert (=> bm!3192 m!33651))

(assert (=> b!40330 d!7135))

(assert (=> b!40417 d!7113))

(assert (=> d!7041 d!7019))

(declare-fun d!7137 () Bool)

(assert (=> d!7137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15494 mask!853)))

(assert (=> d!7137 true))

(declare-fun _$30!57 () Unit!984)

(assert (=> d!7137 (= (choose!34 lt!15494 mask!853 #b00000000000000000000000000000000) _$30!57)))

(declare-fun bs!1714 () Bool)

(assert (= bs!1714 d!7137))

(assert (=> bs!1714 m!33291))

(assert (=> d!7041 d!7137))

(assert (=> d!7041 d!7059))

(declare-fun d!7139 () Bool)

(assert (=> d!7139 (arrayContainsKey!0 lt!15494 lt!15520 #b00000000000000000000000000000000)))

(declare-fun lt!15809 () Unit!984)

(declare-fun choose!13 (array!2595 (_ BitVec 64) (_ BitVec 32)) Unit!984)

(assert (=> d!7139 (= lt!15809 (choose!13 lt!15494 lt!15520 #b00000000000000000000000000000000))))

(assert (=> d!7139 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!7139 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15494 lt!15520 #b00000000000000000000000000000000) lt!15809)))

(declare-fun bs!1715 () Bool)

(assert (= bs!1715 d!7139))

(assert (=> bs!1715 m!33353))

(declare-fun m!33653 () Bool)

(assert (=> bs!1715 m!33653))

(assert (=> b!40382 d!7139))

(declare-fun d!7141 () Bool)

(declare-fun res!24316 () Bool)

(declare-fun e!25878 () Bool)

(assert (=> d!7141 (=> res!24316 e!25878)))

(assert (=> d!7141 (= res!24316 (= (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15520))))

(assert (=> d!7141 (= (arrayContainsKey!0 lt!15494 lt!15520 #b00000000000000000000000000000000) e!25878)))

(declare-fun b!40806 () Bool)

(declare-fun e!25879 () Bool)

(assert (=> b!40806 (= e!25878 e!25879)))

(declare-fun res!24317 () Bool)

(assert (=> b!40806 (=> (not res!24317) (not e!25879))))

(assert (=> b!40806 (= res!24317 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 lt!15494)))))

(declare-fun b!40807 () Bool)

(assert (=> b!40807 (= e!25879 (arrayContainsKey!0 lt!15494 lt!15520 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7141 (not res!24316)) b!40806))

(assert (= (and b!40806 res!24317) b!40807))

(assert (=> d!7141 m!33331))

(declare-fun m!33709 () Bool)

(assert (=> b!40807 m!33709))

(assert (=> b!40382 d!7141))

(declare-fun b!40834 () Bool)

(declare-fun c!5046 () Bool)

(declare-fun lt!15826 () (_ BitVec 64))

(assert (=> b!40834 (= c!5046 (= lt!15826 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25898 () SeekEntryResult!183)

(declare-fun e!25897 () SeekEntryResult!183)

(assert (=> b!40834 (= e!25898 e!25897)))

(declare-fun d!7145 () Bool)

(declare-fun lt!15828 () SeekEntryResult!183)

(assert (=> d!7145 (and (or (is-Undefined!183 lt!15828) (not (is-Found!183 lt!15828)) (and (bvsge (index!2855 lt!15828) #b00000000000000000000000000000000) (bvslt (index!2855 lt!15828) (size!1378 lt!15494)))) (or (is-Undefined!183 lt!15828) (is-Found!183 lt!15828) (not (is-MissingZero!183 lt!15828)) (and (bvsge (index!2854 lt!15828) #b00000000000000000000000000000000) (bvslt (index!2854 lt!15828) (size!1378 lt!15494)))) (or (is-Undefined!183 lt!15828) (is-Found!183 lt!15828) (is-MissingZero!183 lt!15828) (not (is-MissingVacant!183 lt!15828)) (and (bvsge (index!2857 lt!15828) #b00000000000000000000000000000000) (bvslt (index!2857 lt!15828) (size!1378 lt!15494)))) (or (is-Undefined!183 lt!15828) (ite (is-Found!183 lt!15828) (= (select (arr!1241 lt!15494) (index!2855 lt!15828)) (select (arr!1241 lt!15494) #b00000000000000000000000000000000)) (ite (is-MissingZero!183 lt!15828) (= (select (arr!1241 lt!15494) (index!2854 lt!15828)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!183 lt!15828) (= (select (arr!1241 lt!15494) (index!2857 lt!15828)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!25899 () SeekEntryResult!183)

(assert (=> d!7145 (= lt!15828 e!25899)))

(declare-fun c!5045 () Bool)

(declare-fun lt!15827 () SeekEntryResult!183)

(assert (=> d!7145 (= c!5045 (and (is-Intermediate!183 lt!15827) (undefined!995 lt!15827)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2595 (_ BitVec 32)) SeekEntryResult!183)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!7145 (= lt!15827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) mask!853) (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853))))

(assert (=> d!7145 (validMask!0 mask!853)))

(assert (=> d!7145 (= (seekEntryOrOpen!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853) lt!15828)))

(declare-fun b!40835 () Bool)

(assert (=> b!40835 (= e!25897 (MissingZero!183 (index!2856 lt!15827)))))

(declare-fun b!40836 () Bool)

(assert (=> b!40836 (= e!25899 Undefined!183)))

(declare-fun b!40837 () Bool)

(assert (=> b!40837 (= e!25899 e!25898)))

(assert (=> b!40837 (= lt!15826 (select (arr!1241 lt!15494) (index!2856 lt!15827)))))

(declare-fun c!5047 () Bool)

(assert (=> b!40837 (= c!5047 (= lt!15826 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun b!40838 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2595 (_ BitVec 32)) SeekEntryResult!183)

(assert (=> b!40838 (= e!25897 (seekKeyOrZeroReturnVacant!0 (x!7730 lt!15827) (index!2856 lt!15827) (index!2856 lt!15827) (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853))))

(declare-fun b!40839 () Bool)

(assert (=> b!40839 (= e!25898 (Found!183 (index!2856 lt!15827)))))

(assert (= (and d!7145 c!5045) b!40836))

(assert (= (and d!7145 (not c!5045)) b!40837))

(assert (= (and b!40837 c!5047) b!40839))

(assert (= (and b!40837 (not c!5047)) b!40834))

(assert (= (and b!40834 c!5046) b!40835))

(assert (= (and b!40834 (not c!5046)) b!40838))

(declare-fun m!33741 () Bool)

(assert (=> d!7145 m!33741))

(assert (=> d!7145 m!33331))

(declare-fun m!33743 () Bool)

(assert (=> d!7145 m!33743))

(assert (=> d!7145 m!33331))

(assert (=> d!7145 m!33741))

(declare-fun m!33745 () Bool)

(assert (=> d!7145 m!33745))

(assert (=> d!7145 m!33283))

(declare-fun m!33747 () Bool)

(assert (=> d!7145 m!33747))

(declare-fun m!33749 () Bool)

(assert (=> d!7145 m!33749))

(declare-fun m!33751 () Bool)

(assert (=> b!40837 m!33751))

(assert (=> b!40838 m!33331))

(declare-fun m!33753 () Bool)

(assert (=> b!40838 m!33753))

(assert (=> b!40382 d!7145))

(assert (=> b!40418 d!7113))

(declare-fun b!40840 () Bool)

(declare-fun e!25901 () Bool)

(declare-fun call!3205 () Bool)

(assert (=> b!40840 (= e!25901 call!3205)))

(declare-fun b!40841 () Bool)

(assert (=> b!40841 (= e!25901 call!3205)))

(declare-fun b!40842 () Bool)

(declare-fun e!25903 () Bool)

(assert (=> b!40842 (= e!25903 (contains!515 (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070) (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40843 () Bool)

(declare-fun e!25900 () Bool)

(declare-fun e!25902 () Bool)

(assert (=> b!40843 (= e!25900 e!25902)))

(declare-fun res!24328 () Bool)

(assert (=> b!40843 (=> (not res!24328) (not e!25902))))

(assert (=> b!40843 (= res!24328 (not e!25903))))

(declare-fun res!24326 () Bool)

(assert (=> b!40843 (=> (not res!24326) (not e!25903))))

(assert (=> b!40843 (= res!24326 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!7151 () Bool)

(declare-fun res!24327 () Bool)

(assert (=> d!7151 (=> res!24327 e!25900)))

(assert (=> d!7151 (= res!24327 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 lt!15494)))))

(assert (=> d!7151 (= (arrayNoDuplicates!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) e!25900)))

(declare-fun b!40844 () Bool)

(assert (=> b!40844 (= e!25902 e!25901)))

(declare-fun c!5048 () Bool)

(assert (=> b!40844 (= c!5048 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3202 () Bool)

(assert (=> bm!3202 (= call!3205 (arrayNoDuplicates!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5048 (Cons!1069 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070))))))

(assert (= (and d!7151 (not res!24327)) b!40843))

(assert (= (and b!40843 res!24326) b!40842))

(assert (= (and b!40843 res!24328) b!40844))

(assert (= (and b!40844 c!5048) b!40841))

(assert (= (and b!40844 (not c!5048)) b!40840))

(assert (= (or b!40841 b!40840) bm!3202))

(assert (=> b!40842 m!33485))

(assert (=> b!40842 m!33485))

(declare-fun m!33755 () Bool)

(assert (=> b!40842 m!33755))

(assert (=> b!40843 m!33485))

(assert (=> b!40843 m!33485))

(assert (=> b!40843 m!33487))

(assert (=> b!40844 m!33485))

(assert (=> b!40844 m!33485))

(assert (=> b!40844 m!33487))

(assert (=> bm!3202 m!33485))

(declare-fun m!33757 () Bool)

(assert (=> bm!3202 m!33757))

(assert (=> bm!3115 d!7151))

(declare-fun b!40845 () Bool)

(declare-fun e!25904 () (_ BitVec 32))

(assert (=> b!40845 (= e!25904 #b00000000000000000000000000000000)))

(declare-fun b!40846 () Bool)

(declare-fun e!25905 () (_ BitVec 32))

(assert (=> b!40846 (= e!25904 e!25905)))

(declare-fun c!5050 () Bool)

(assert (=> b!40846 (= c!5050 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun d!7153 () Bool)

(declare-fun lt!15829 () (_ BitVec 32))

(assert (=> d!7153 (and (bvsge lt!15829 #b00000000000000000000000000000000) (bvsle lt!15829 (bvsub (size!1378 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (=> d!7153 (= lt!15829 e!25904)))

(declare-fun c!5049 () Bool)

(assert (=> d!7153 (= c!5049 (bvsge #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7153 (and (bvsle #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1378 (_keys!3294 lt!15499)) (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7153 (= (arrayCountValidKeys!0 (_keys!3294 lt!15499) #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))) lt!15829)))

(declare-fun b!40847 () Bool)

(declare-fun call!3206 () (_ BitVec 32))

(assert (=> b!40847 (= e!25905 call!3206)))

(declare-fun b!40848 () Bool)

(assert (=> b!40848 (= e!25905 (bvadd #b00000000000000000000000000000001 call!3206))))

(declare-fun bm!3203 () Bool)

(assert (=> bm!3203 (= call!3206 (arrayCountValidKeys!0 (_keys!3294 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))))))

(assert (= (and d!7153 c!5049) b!40845))

(assert (= (and d!7153 (not c!5049)) b!40846))

(assert (= (and b!40846 c!5050) b!40848))

(assert (= (and b!40846 (not c!5050)) b!40847))

(assert (= (or b!40848 b!40847) bm!3203))

(assert (=> b!40846 m!33585))

(assert (=> b!40846 m!33585))

(assert (=> b!40846 m!33601))

(declare-fun m!33759 () Bool)

(assert (=> bm!3203 m!33759))

(assert (=> b!40328 d!7153))

(assert (=> d!7035 d!7029))

(declare-fun d!7155 () Bool)

(assert (=> d!7155 (arrayNoDuplicates!0 lt!15494 #b00000000000000000000000000000000 Nil!1070)))

(assert (=> d!7155 true))

(declare-fun res!24331 () Unit!984)

(assert (=> d!7155 (= (choose!111 lt!15494 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1070) res!24331)))

(declare-fun bs!1716 () Bool)

(assert (= bs!1716 d!7155))

(assert (=> bs!1716 m!33285))

(assert (=> d!7035 d!7155))

(push 1)

(assert (not d!7125))

(assert (not b!40760))

(assert (not bm!3192))

(assert (not b!40844))

(assert (not b!40666))

(assert (not b!40672))

(assert (not b!40762))

(assert (not b!40535))

(assert (not b!40748))

(assert (not b!40754))

(assert (not b!40669))

(assert (not bm!3190))

(assert (not d!7137))

(assert (not b!40713))

(assert (not d!7109))

(assert (not b!40668))

(assert (not b!40677))

(assert (not bm!3174))

(assert (not d!7115))

(assert (not b!40842))

(assert (not d!7155))

(assert (not bm!3202))

(assert (not bm!3175))

(assert (not b_lambda!2085))

(assert (not b_next!1367))

(assert (not b!40843))

(assert (not bm!3133))

(assert (not b!40761))

(assert (not b!40846))

(assert (not bm!3172))

(assert (not b!40675))

(assert (not b!40747))

(assert (not bm!3169))

(assert (not bm!3191))

(assert (not b_lambda!2091))

(assert (not b!40752))

(assert (not d!7139))

(assert (not d!7129))

(assert (not b!40838))

(assert (not b!40807))

(assert (not b!40678))

(assert b_and!2381)

(assert (not b!40756))

(assert (not bm!3203))

(assert (not d!7145))

(assert (not b!40670))

(assert tp_is_empty!1757)

(assert (not b!40750))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2381)

(assert (not b_next!1367))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7219 () Bool)

(assert (=> d!7219 (= (validMask!0 (mask!5178 lt!15499)) (and (or (= (mask!5178 lt!15499) #b00000000000000000000000000000111) (= (mask!5178 lt!15499) #b00000000000000000000000000001111) (= (mask!5178 lt!15499) #b00000000000000000000000000011111) (= (mask!5178 lt!15499) #b00000000000000000000000000111111) (= (mask!5178 lt!15499) #b00000000000000000000000001111111) (= (mask!5178 lt!15499) #b00000000000000000000000011111111) (= (mask!5178 lt!15499) #b00000000000000000000000111111111) (= (mask!5178 lt!15499) #b00000000000000000000001111111111) (= (mask!5178 lt!15499) #b00000000000000000000011111111111) (= (mask!5178 lt!15499) #b00000000000000000000111111111111) (= (mask!5178 lt!15499) #b00000000000000000001111111111111) (= (mask!5178 lt!15499) #b00000000000000000011111111111111) (= (mask!5178 lt!15499) #b00000000000000000111111111111111) (= (mask!5178 lt!15499) #b00000000000000001111111111111111) (= (mask!5178 lt!15499) #b00000000000000011111111111111111) (= (mask!5178 lt!15499) #b00000000000000111111111111111111) (= (mask!5178 lt!15499) #b00000000000001111111111111111111) (= (mask!5178 lt!15499) #b00000000000011111111111111111111) (= (mask!5178 lt!15499) #b00000000000111111111111111111111) (= (mask!5178 lt!15499) #b00000000001111111111111111111111) (= (mask!5178 lt!15499) #b00000000011111111111111111111111) (= (mask!5178 lt!15499) #b00000000111111111111111111111111) (= (mask!5178 lt!15499) #b00000001111111111111111111111111) (= (mask!5178 lt!15499) #b00000011111111111111111111111111) (= (mask!5178 lt!15499) #b00000111111111111111111111111111) (= (mask!5178 lt!15499) #b00001111111111111111111111111111) (= (mask!5178 lt!15499) #b00011111111111111111111111111111) (= (mask!5178 lt!15499) #b00111111111111111111111111111111)) (bvsle (mask!5178 lt!15499) #b00111111111111111111111111111111)))))

(assert (=> d!7129 d!7219))

(assert (=> d!7137 d!7019))

(declare-fun d!7221 () Bool)

(declare-datatypes ((Option!108 0))(
  ( (Some!107 (v!2000 V!2101)) (None!106) )
))
(declare-fun get!709 (Option!108) V!2101)

(declare-fun getValueByKey!102 (List!1072 (_ BitVec 64)) Option!108)

(assert (=> d!7221 (= (apply!55 lt!15711 #b1000000000000000000000000000000000000000000000000000000000000000) (get!709 (getValueByKey!102 (toList!552 lt!15711) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1723 () Bool)

(assert (= bs!1723 d!7221))

(declare-fun m!33935 () Bool)

(assert (=> bs!1723 m!33935))

(assert (=> bs!1723 m!33935))

(declare-fun m!33937 () Bool)

(assert (=> bs!1723 m!33937))

(assert (=> b!40677 d!7221))

(declare-fun d!7229 () Bool)

(assert (=> d!7229 (= (apply!55 lt!15711 #b0000000000000000000000000000000000000000000000000000000000000000) (get!709 (getValueByKey!102 (toList!552 lt!15711) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1724 () Bool)

(assert (= bs!1724 d!7229))

(declare-fun m!33939 () Bool)

(assert (=> bs!1724 m!33939))

(assert (=> bs!1724 m!33939))

(declare-fun m!33941 () Bool)

(assert (=> bs!1724 m!33941))

(assert (=> b!40675 d!7229))

(assert (=> d!7109 d!7009))

(declare-fun d!7231 () Bool)

(declare-fun e!25984 () Bool)

(assert (=> d!7231 e!25984))

(declare-fun res!24376 () Bool)

(assert (=> d!7231 (=> res!24376 e!25984)))

(declare-fun lt!15927 () Bool)

(assert (=> d!7231 (= res!24376 (not lt!15927))))

(declare-fun lt!15925 () Bool)

(assert (=> d!7231 (= lt!15927 lt!15925)))

(declare-fun lt!15924 () Unit!984)

(declare-fun e!25985 () Unit!984)

(assert (=> d!7231 (= lt!15924 e!25985)))

(declare-fun c!5093 () Bool)

(assert (=> d!7231 (= c!5093 lt!15925)))

(declare-fun containsKey!69 (List!1072 (_ BitVec 64)) Bool)

(assert (=> d!7231 (= lt!15925 (containsKey!69 (toList!552 (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))) lt!15720))))

(assert (=> d!7231 (= (contains!516 (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))) lt!15720) lt!15927)))

(declare-fun b!40979 () Bool)

(declare-fun lt!15926 () Unit!984)

(assert (=> b!40979 (= e!25985 lt!15926)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!57 (List!1072 (_ BitVec 64)) Unit!984)

(assert (=> b!40979 (= lt!15926 (lemmaContainsKeyImpliesGetValueByKeyDefined!57 (toList!552 (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))) lt!15720))))

(declare-fun isDefined!58 (Option!108) Bool)

(assert (=> b!40979 (isDefined!58 (getValueByKey!102 (toList!552 (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))) lt!15720))))

(declare-fun b!40980 () Bool)

(declare-fun Unit!991 () Unit!984)

(assert (=> b!40980 (= e!25985 Unit!991)))

(declare-fun b!40981 () Bool)

(assert (=> b!40981 (= e!25984 (isDefined!58 (getValueByKey!102 (toList!552 (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))) lt!15720)))))

(assert (= (and d!7231 c!5093) b!40979))

(assert (= (and d!7231 (not c!5093)) b!40980))

(assert (= (and d!7231 (not res!24376)) b!40981))

(declare-fun m!33951 () Bool)

(assert (=> d!7231 m!33951))

(declare-fun m!33953 () Bool)

(assert (=> b!40979 m!33953))

(declare-fun m!33955 () Bool)

(assert (=> b!40979 m!33955))

(assert (=> b!40979 m!33955))

(declare-fun m!33957 () Bool)

(assert (=> b!40979 m!33957))

(assert (=> b!40981 m!33955))

(assert (=> b!40981 m!33955))

(assert (=> b!40981 m!33957))

(assert (=> b!40672 d!7231))

(declare-fun d!7237 () Bool)

(declare-fun e!26012 () Bool)

(assert (=> d!7237 e!26012))

(declare-fun res!24400 () Bool)

(assert (=> d!7237 (=> (not res!24400) (not e!26012))))

(declare-fun lt!15960 () ListLongMap!1073)

(assert (=> d!7237 (= res!24400 (contains!516 lt!15960 (_1!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499)))))))

(declare-fun lt!15959 () List!1072)

(assert (=> d!7237 (= lt!15960 (ListLongMap!1074 lt!15959))))

(declare-fun lt!15962 () Unit!984)

(declare-fun lt!15961 () Unit!984)

(assert (=> d!7237 (= lt!15962 lt!15961)))

(assert (=> d!7237 (= (getValueByKey!102 lt!15959 (_1!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!27 (List!1072 (_ BitVec 64) V!2101) Unit!984)

(assert (=> d!7237 (= lt!15961 (lemmaContainsTupThenGetReturnValue!27 lt!15959 (_1!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499)))))))

(declare-fun insertStrictlySorted!24 (List!1072 (_ BitVec 64) V!2101) List!1072)

(assert (=> d!7237 (= lt!15959 (insertStrictlySorted!24 (toList!552 lt!15712) (_1!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499)))))))

(assert (=> d!7237 (= (+!64 lt!15712 (tuple2!1493 lt!15707 (minValue!1723 lt!15499))) lt!15960)))

(declare-fun b!41025 () Bool)

(declare-fun res!24401 () Bool)

(assert (=> b!41025 (=> (not res!24401) (not e!26012))))

(assert (=> b!41025 (= res!24401 (= (getValueByKey!102 (toList!552 lt!15960) (_1!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15707 (minValue!1723 lt!15499))))))))

(declare-fun b!41026 () Bool)

(declare-fun contains!520 (List!1072 tuple2!1492) Bool)

(assert (=> b!41026 (= e!26012 (contains!520 (toList!552 lt!15960) (tuple2!1493 lt!15707 (minValue!1723 lt!15499))))))

(assert (= (and d!7237 res!24400) b!41025))

(assert (= (and b!41025 res!24401) b!41026))

(declare-fun m!34027 () Bool)

(assert (=> d!7237 m!34027))

(declare-fun m!34029 () Bool)

(assert (=> d!7237 m!34029))

(declare-fun m!34031 () Bool)

(assert (=> d!7237 m!34031))

(declare-fun m!34033 () Bool)

(assert (=> d!7237 m!34033))

(declare-fun m!34035 () Bool)

(assert (=> b!41025 m!34035))

(declare-fun m!34037 () Bool)

(assert (=> b!41026 m!34037))

(assert (=> b!40672 d!7237))

(declare-fun d!7261 () Bool)

(assert (=> d!7261 (= (apply!55 (+!64 lt!15712 (tuple2!1493 lt!15707 (minValue!1723 lt!15499))) lt!15703) (apply!55 lt!15712 lt!15703))))

(declare-fun lt!15971 () Unit!984)

(declare-fun choose!250 (ListLongMap!1073 (_ BitVec 64) V!2101 (_ BitVec 64)) Unit!984)

(assert (=> d!7261 (= lt!15971 (choose!250 lt!15712 lt!15707 (minValue!1723 lt!15499) lt!15703))))

(declare-fun e!26019 () Bool)

(assert (=> d!7261 e!26019))

(declare-fun res!24408 () Bool)

(assert (=> d!7261 (=> (not res!24408) (not e!26019))))

(assert (=> d!7261 (= res!24408 (contains!516 lt!15712 lt!15703))))

(assert (=> d!7261 (= (addApplyDifferent!31 lt!15712 lt!15707 (minValue!1723 lt!15499) lt!15703) lt!15971)))

(declare-fun b!41035 () Bool)

(assert (=> b!41035 (= e!26019 (not (= lt!15703 lt!15707)))))

(assert (= (and d!7261 res!24408) b!41035))

(assert (=> d!7261 m!33573))

(declare-fun m!34043 () Bool)

(assert (=> d!7261 m!34043))

(assert (=> d!7261 m!33573))

(assert (=> d!7261 m!33577))

(declare-fun m!34047 () Bool)

(assert (=> d!7261 m!34047))

(assert (=> d!7261 m!33595))

(assert (=> b!40672 d!7261))

(declare-fun d!7265 () Bool)

(declare-fun e!26086 () Bool)

(assert (=> d!7265 e!26086))

(declare-fun res!24453 () Bool)

(assert (=> d!7265 (=> (not res!24453) (not e!26086))))

(declare-fun lt!16052 () ListLongMap!1073)

(assert (=> d!7265 (= res!24453 (not (contains!516 lt!16052 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!26085 () ListLongMap!1073)

(assert (=> d!7265 (= lt!16052 e!26085)))

(declare-fun c!5136 () Bool)

(assert (=> d!7265 (= c!5136 (bvsge #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7265 (validMask!0 (mask!5178 lt!15499))))

(assert (=> d!7265 (= (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) #b00000000000000000000000000000000 (defaultEntry!1805 lt!15499)) lt!16052)))

(declare-fun b!41141 () Bool)

(declare-fun e!26081 () Bool)

(assert (=> b!41141 (= e!26081 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (=> b!41141 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!41142 () Bool)

(declare-fun e!26080 () Bool)

(assert (=> b!41142 (= e!26086 e!26080)))

(declare-fun c!5138 () Bool)

(assert (=> b!41142 (= c!5138 e!26081)))

(declare-fun res!24451 () Bool)

(assert (=> b!41142 (=> (not res!24451) (not e!26081))))

(assert (=> b!41142 (= res!24451 (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(declare-fun b!41143 () Bool)

(declare-fun lt!16049 () Unit!984)

(declare-fun lt!16050 () Unit!984)

(assert (=> b!41143 (= lt!16049 lt!16050)))

(declare-fun lt!16047 () ListLongMap!1073)

(declare-fun lt!16048 () (_ BitVec 64))

(declare-fun lt!16053 () (_ BitVec 64))

(declare-fun lt!16051 () V!2101)

(assert (=> b!41143 (not (contains!516 (+!64 lt!16047 (tuple2!1493 lt!16048 lt!16051)) lt!16053))))

(declare-fun addStillNotContains!8 (ListLongMap!1073 (_ BitVec 64) V!2101 (_ BitVec 64)) Unit!984)

(assert (=> b!41143 (= lt!16050 (addStillNotContains!8 lt!16047 lt!16048 lt!16051 lt!16053))))

(assert (=> b!41143 (= lt!16053 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!41143 (= lt!16051 (get!703 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000) (dynLambda!192 (defaultEntry!1805 lt!15499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!41143 (= lt!16048 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))

(declare-fun call!3218 () ListLongMap!1073)

(assert (=> b!41143 (= lt!16047 call!3218)))

(declare-fun e!26083 () ListLongMap!1073)

(assert (=> b!41143 (= e!26083 (+!64 call!3218 (tuple2!1493 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) (get!703 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000) (dynLambda!192 (defaultEntry!1805 lt!15499) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!41144 () Bool)

(declare-fun e!26084 () Bool)

(declare-fun isEmpty!236 (ListLongMap!1073) Bool)

(assert (=> b!41144 (= e!26084 (isEmpty!236 lt!16052))))

(declare-fun b!41145 () Bool)

(declare-fun res!24452 () Bool)

(assert (=> b!41145 (=> (not res!24452) (not e!26086))))

(assert (=> b!41145 (= res!24452 (not (contains!516 lt!16052 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!41146 () Bool)

(assert (=> b!41146 (= e!26080 e!26084)))

(declare-fun c!5139 () Bool)

(assert (=> b!41146 (= c!5139 (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(declare-fun bm!3215 () Bool)

(assert (=> bm!3215 (= call!3218 (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1805 lt!15499)))))

(declare-fun b!41147 () Bool)

(assert (=> b!41147 (= e!26083 call!3218)))

(declare-fun b!41148 () Bool)

(assert (=> b!41148 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(assert (=> b!41148 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1379 (_values!1788 lt!15499))))))

(declare-fun e!26082 () Bool)

(assert (=> b!41148 (= e!26082 (= (apply!55 lt!16052 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)) (get!703 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000) (dynLambda!192 (defaultEntry!1805 lt!15499) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!41149 () Bool)

(assert (=> b!41149 (= e!26085 (ListLongMap!1074 Nil!1069))))

(declare-fun b!41150 () Bool)

(assert (=> b!41150 (= e!26084 (= lt!16052 (getCurrentListMapNoExtraKeys!33 (_keys!3294 lt!15499) (_values!1788 lt!15499) (mask!5178 lt!15499) (extraKeys!1696 lt!15499) (zeroValue!1723 lt!15499) (minValue!1723 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1805 lt!15499))))))

(declare-fun b!41151 () Bool)

(assert (=> b!41151 (= e!26080 e!26082)))

(assert (=> b!41151 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1378 (_keys!3294 lt!15499))))))

(declare-fun res!24454 () Bool)

(assert (=> b!41151 (= res!24454 (contains!516 lt!16052 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (=> b!41151 (=> (not res!24454) (not e!26082))))

(declare-fun b!41152 () Bool)

(assert (=> b!41152 (= e!26085 e!26083)))

(declare-fun c!5137 () Bool)

(assert (=> b!41152 (= c!5137 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (= (and d!7265 c!5136) b!41149))

(assert (= (and d!7265 (not c!5136)) b!41152))

(assert (= (and b!41152 c!5137) b!41143))

(assert (= (and b!41152 (not c!5137)) b!41147))

(assert (= (or b!41143 b!41147) bm!3215))

(assert (= (and d!7265 res!24453) b!41145))

(assert (= (and b!41145 res!24452) b!41142))

(assert (= (and b!41142 res!24451) b!41141))

(assert (= (and b!41142 c!5138) b!41151))

(assert (= (and b!41142 (not c!5138)) b!41146))

(assert (= (and b!41151 res!24454) b!41148))

(assert (= (and b!41146 c!5139) b!41150))

(assert (= (and b!41146 (not c!5139)) b!41144))

(declare-fun b_lambda!2099 () Bool)

(assert (=> (not b_lambda!2099) (not b!41143)))

(assert (=> b!41143 t!3942))

(declare-fun b_and!2389 () Bool)

(assert (= b_and!2381 (and (=> t!3942 result!1457) b_and!2389)))

(declare-fun b_lambda!2101 () Bool)

(assert (=> (not b_lambda!2101) (not b!41148)))

(assert (=> b!41148 t!3942))

(declare-fun b_and!2391 () Bool)

(assert (= b_and!2389 (and (=> t!3942 result!1457) b_and!2391)))

(assert (=> b!41143 m!33607))

(assert (=> b!41143 m!33609))

(assert (=> b!41143 m!33611))

(declare-fun m!34175 () Bool)

(assert (=> b!41143 m!34175))

(declare-fun m!34177 () Bool)

(assert (=> b!41143 m!34177))

(assert (=> b!41143 m!34177))

(declare-fun m!34179 () Bool)

(assert (=> b!41143 m!34179))

(declare-fun m!34181 () Bool)

(assert (=> b!41143 m!34181))

(assert (=> b!41143 m!33585))

(assert (=> b!41143 m!33609))

(assert (=> b!41143 m!33607))

(assert (=> b!41152 m!33585))

(assert (=> b!41152 m!33585))

(assert (=> b!41152 m!33601))

(assert (=> b!41151 m!33585))

(assert (=> b!41151 m!33585))

(declare-fun m!34183 () Bool)

(assert (=> b!41151 m!34183))

(assert (=> b!41141 m!33585))

(assert (=> b!41141 m!33585))

(assert (=> b!41141 m!33601))

(declare-fun m!34185 () Bool)

(assert (=> b!41145 m!34185))

(declare-fun m!34187 () Bool)

(assert (=> bm!3215 m!34187))

(assert (=> b!41150 m!34187))

(assert (=> b!41148 m!33607))

(assert (=> b!41148 m!33609))

(assert (=> b!41148 m!33611))

(assert (=> b!41148 m!33585))

(declare-fun m!34189 () Bool)

(assert (=> b!41148 m!34189))

(assert (=> b!41148 m!33585))

(assert (=> b!41148 m!33609))

(assert (=> b!41148 m!33607))

(declare-fun m!34191 () Bool)

(assert (=> b!41144 m!34191))

(declare-fun m!34193 () Bool)

(assert (=> d!7265 m!34193))

(assert (=> d!7265 m!33599))

(assert (=> b!40672 d!7265))

(declare-fun d!7309 () Bool)

(assert (=> d!7309 (= (apply!55 (+!64 lt!15714 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))) lt!15722) (get!709 (getValueByKey!102 (toList!552 (+!64 lt!15714 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499)))) lt!15722)))))

(declare-fun bs!1737 () Bool)

(assert (= bs!1737 d!7309))

(declare-fun m!34195 () Bool)

(assert (=> bs!1737 m!34195))

(assert (=> bs!1737 m!34195))

(declare-fun m!34197 () Bool)

(assert (=> bs!1737 m!34197))

(assert (=> b!40672 d!7309))

(declare-fun d!7311 () Bool)

(declare-fun e!26087 () Bool)

(assert (=> d!7311 e!26087))

(declare-fun res!24455 () Bool)

(assert (=> d!7311 (=> (not res!24455) (not e!26087))))

(declare-fun lt!16059 () ListLongMap!1073)

(assert (=> d!7311 (= res!24455 (contains!516 lt!16059 (_1!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499)))))))

(declare-fun lt!16058 () List!1072)

(assert (=> d!7311 (= lt!16059 (ListLongMap!1074 lt!16058))))

(declare-fun lt!16061 () Unit!984)

(declare-fun lt!16060 () Unit!984)

(assert (=> d!7311 (= lt!16061 lt!16060)))

(assert (=> d!7311 (= (getValueByKey!102 lt!16058 (_1!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499)))))))

(assert (=> d!7311 (= lt!16060 (lemmaContainsTupThenGetReturnValue!27 lt!16058 (_1!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499)))))))

(assert (=> d!7311 (= lt!16058 (insertStrictlySorted!24 (toList!552 lt!15714) (_1!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499)))))))

(assert (=> d!7311 (= (+!64 lt!15714 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))) lt!16059)))

(declare-fun b!41153 () Bool)

(declare-fun res!24456 () Bool)

(assert (=> b!41153 (=> (not res!24456) (not e!26087))))

(assert (=> b!41153 (= res!24456 (= (getValueByKey!102 (toList!552 lt!16059) (_1!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))))))))

(declare-fun b!41154 () Bool)

(assert (=> b!41154 (= e!26087 (contains!520 (toList!552 lt!16059) (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))))))

(assert (= (and d!7311 res!24455) b!41153))

(assert (= (and b!41153 res!24456) b!41154))

(declare-fun m!34199 () Bool)

(assert (=> d!7311 m!34199))

(declare-fun m!34201 () Bool)

(assert (=> d!7311 m!34201))

(declare-fun m!34203 () Bool)

(assert (=> d!7311 m!34203))

(declare-fun m!34205 () Bool)

(assert (=> d!7311 m!34205))

(declare-fun m!34207 () Bool)

(assert (=> b!41153 m!34207))

(declare-fun m!34209 () Bool)

(assert (=> b!41154 m!34209))

(assert (=> b!40672 d!7311))

(declare-fun d!7315 () Bool)

(assert (=> d!7315 (= (apply!55 (+!64 lt!15714 (tuple2!1493 lt!15713 (zeroValue!1723 lt!15499))) lt!15722) (apply!55 lt!15714 lt!15722))))

(declare-fun lt!16064 () Unit!984)

(assert (=> d!7315 (= lt!16064 (choose!250 lt!15714 lt!15713 (zeroValue!1723 lt!15499) lt!15722))))

(declare-fun e!26092 () Bool)

(assert (=> d!7315 e!26092))

(declare-fun res!24460 () Bool)

(assert (=> d!7315 (=> (not res!24460) (not e!26092))))

(assert (=> d!7315 (= res!24460 (contains!516 lt!15714 lt!15722))))

(assert (=> d!7315 (= (addApplyDifferent!31 lt!15714 lt!15713 (zeroValue!1723 lt!15499) lt!15722) lt!16064)))

(declare-fun b!41160 () Bool)

(assert (=> b!41160 (= e!26092 (not (= lt!15722 lt!15713)))))

(assert (= (and d!7315 res!24460) b!41160))

(assert (=> d!7315 m!33581))

(declare-fun m!34211 () Bool)

(assert (=> d!7315 m!34211))

(assert (=> d!7315 m!33581))

(assert (=> d!7315 m!33593))

(declare-fun m!34213 () Bool)

(assert (=> d!7315 m!34213))

(assert (=> d!7315 m!33565))

(assert (=> b!40672 d!7315))

(declare-fun d!7317 () Bool)

(assert (=> d!7317 (= (apply!55 (+!64 lt!15719 (tuple2!1493 lt!15708 (minValue!1723 lt!15499))) lt!15705) (apply!55 lt!15719 lt!15705))))

(declare-fun lt!16065 () Unit!984)

(assert (=> d!7317 (= lt!16065 (choose!250 lt!15719 lt!15708 (minValue!1723 lt!15499) lt!15705))))

(declare-fun e!26093 () Bool)

(assert (=> d!7317 e!26093))

(declare-fun res!24461 () Bool)

(assert (=> d!7317 (=> (not res!24461) (not e!26093))))

(assert (=> d!7317 (= res!24461 (contains!516 lt!15719 lt!15705))))

(assert (=> d!7317 (= (addApplyDifferent!31 lt!15719 lt!15708 (minValue!1723 lt!15499) lt!15705) lt!16065)))

(declare-fun b!41161 () Bool)

(assert (=> b!41161 (= e!26093 (not (= lt!15705 lt!15708)))))

(assert (= (and d!7317 res!24461) b!41161))

(assert (=> d!7317 m!33589))

(declare-fun m!34217 () Bool)

(assert (=> d!7317 m!34217))

(assert (=> d!7317 m!33589))

(assert (=> d!7317 m!33591))

(declare-fun m!34221 () Bool)

(assert (=> d!7317 m!34221))

(assert (=> d!7317 m!33575))

(assert (=> b!40672 d!7317))

(declare-fun d!7321 () Bool)

(assert (=> d!7321 (= (apply!55 (+!64 lt!15712 (tuple2!1493 lt!15707 (minValue!1723 lt!15499))) lt!15703) (get!709 (getValueByKey!102 (toList!552 (+!64 lt!15712 (tuple2!1493 lt!15707 (minValue!1723 lt!15499)))) lt!15703)))))

(declare-fun bs!1739 () Bool)

(assert (= bs!1739 d!7321))

(declare-fun m!34225 () Bool)

(assert (=> bs!1739 m!34225))

(assert (=> bs!1739 m!34225))

(declare-fun m!34227 () Bool)

(assert (=> bs!1739 m!34227))

(assert (=> b!40672 d!7321))

(declare-fun d!7325 () Bool)

(declare-fun e!26094 () Bool)

(assert (=> d!7325 e!26094))

(declare-fun res!24462 () Bool)

(assert (=> d!7325 (=> (not res!24462) (not e!26094))))

(declare-fun lt!16067 () ListLongMap!1073)

(assert (=> d!7325 (= res!24462 (contains!516 lt!16067 (_1!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))))))

(declare-fun lt!16066 () List!1072)

(assert (=> d!7325 (= lt!16067 (ListLongMap!1074 lt!16066))))

(declare-fun lt!16069 () Unit!984)

(declare-fun lt!16068 () Unit!984)

(assert (=> d!7325 (= lt!16069 lt!16068)))

(assert (=> d!7325 (= (getValueByKey!102 lt!16066 (_1!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))))))

(assert (=> d!7325 (= lt!16068 (lemmaContainsTupThenGetReturnValue!27 lt!16066 (_1!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))))))

(assert (=> d!7325 (= lt!16066 (insertStrictlySorted!24 (toList!552 lt!15704) (_1!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))))))

(assert (=> d!7325 (= (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))) lt!16067)))

(declare-fun b!41162 () Bool)

(declare-fun res!24463 () Bool)

(assert (=> b!41162 (=> (not res!24463) (not e!26094))))

(assert (=> b!41162 (= res!24463 (= (getValueByKey!102 (toList!552 lt!16067) (_1!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))))))))

(declare-fun b!41163 () Bool)

(assert (=> b!41163 (= e!26094 (contains!520 (toList!552 lt!16067) (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))))))

(assert (= (and d!7325 res!24462) b!41162))

(assert (= (and b!41162 res!24463) b!41163))

(declare-fun m!34231 () Bool)

(assert (=> d!7325 m!34231))

(declare-fun m!34233 () Bool)

(assert (=> d!7325 m!34233))

(declare-fun m!34235 () Bool)

(assert (=> d!7325 m!34235))

(declare-fun m!34237 () Bool)

(assert (=> d!7325 m!34237))

(declare-fun m!34239 () Bool)

(assert (=> b!41162 m!34239))

(declare-fun m!34241 () Bool)

(assert (=> b!41163 m!34241))

(assert (=> b!40672 d!7325))

(declare-fun d!7329 () Bool)

(assert (=> d!7329 (= (apply!55 (+!64 lt!15719 (tuple2!1493 lt!15708 (minValue!1723 lt!15499))) lt!15705) (get!709 (getValueByKey!102 (toList!552 (+!64 lt!15719 (tuple2!1493 lt!15708 (minValue!1723 lt!15499)))) lt!15705)))))

(declare-fun bs!1741 () Bool)

(assert (= bs!1741 d!7329))

(declare-fun m!34243 () Bool)

(assert (=> bs!1741 m!34243))

(assert (=> bs!1741 m!34243))

(declare-fun m!34245 () Bool)

(assert (=> bs!1741 m!34245))

(assert (=> b!40672 d!7329))

(declare-fun d!7331 () Bool)

(assert (=> d!7331 (= (apply!55 lt!15719 lt!15705) (get!709 (getValueByKey!102 (toList!552 lt!15719) lt!15705)))))

(declare-fun bs!1742 () Bool)

(assert (= bs!1742 d!7331))

(declare-fun m!34247 () Bool)

(assert (=> bs!1742 m!34247))

(assert (=> bs!1742 m!34247))

(declare-fun m!34249 () Bool)

(assert (=> bs!1742 m!34249))

(assert (=> b!40672 d!7331))

(declare-fun d!7333 () Bool)

(assert (=> d!7333 (= (apply!55 lt!15712 lt!15703) (get!709 (getValueByKey!102 (toList!552 lt!15712) lt!15703)))))

(declare-fun bs!1743 () Bool)

(assert (= bs!1743 d!7333))

(declare-fun m!34251 () Bool)

(assert (=> bs!1743 m!34251))

(assert (=> bs!1743 m!34251))

(declare-fun m!34253 () Bool)

(assert (=> bs!1743 m!34253))

(assert (=> b!40672 d!7333))

(declare-fun d!7335 () Bool)

(declare-fun e!26097 () Bool)

(assert (=> d!7335 e!26097))

(declare-fun res!24464 () Bool)

(assert (=> d!7335 (=> (not res!24464) (not e!26097))))

(declare-fun lt!16071 () ListLongMap!1073)

(assert (=> d!7335 (= res!24464 (contains!516 lt!16071 (_1!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499)))))))

(declare-fun lt!16070 () List!1072)

(assert (=> d!7335 (= lt!16071 (ListLongMap!1074 lt!16070))))

(declare-fun lt!16073 () Unit!984)

(declare-fun lt!16072 () Unit!984)

(assert (=> d!7335 (= lt!16073 lt!16072)))

(assert (=> d!7335 (= (getValueByKey!102 lt!16070 (_1!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499)))))))

(assert (=> d!7335 (= lt!16072 (lemmaContainsTupThenGetReturnValue!27 lt!16070 (_1!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499)))))))

(assert (=> d!7335 (= lt!16070 (insertStrictlySorted!24 (toList!552 lt!15719) (_1!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499))) (_2!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499)))))))

(assert (=> d!7335 (= (+!64 lt!15719 (tuple2!1493 lt!15708 (minValue!1723 lt!15499))) lt!16071)))

(declare-fun b!41168 () Bool)

(declare-fun res!24465 () Bool)

(assert (=> b!41168 (=> (not res!24465) (not e!26097))))

(assert (=> b!41168 (= res!24465 (= (getValueByKey!102 (toList!552 lt!16071) (_1!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 lt!15708 (minValue!1723 lt!15499))))))))

(declare-fun b!41169 () Bool)

(assert (=> b!41169 (= e!26097 (contains!520 (toList!552 lt!16071) (tuple2!1493 lt!15708 (minValue!1723 lt!15499))))))

(assert (= (and d!7335 res!24464) b!41168))

(assert (= (and b!41168 res!24465) b!41169))

(declare-fun m!34255 () Bool)

(assert (=> d!7335 m!34255))

(declare-fun m!34257 () Bool)

(assert (=> d!7335 m!34257))

(declare-fun m!34259 () Bool)

(assert (=> d!7335 m!34259))

(declare-fun m!34261 () Bool)

(assert (=> d!7335 m!34261))

(declare-fun m!34263 () Bool)

(assert (=> b!41168 m!34263))

(declare-fun m!34265 () Bool)

(assert (=> b!41169 m!34265))

(assert (=> b!40672 d!7335))

(declare-fun d!7337 () Bool)

(assert (=> d!7337 (contains!516 (+!64 lt!15704 (tuple2!1493 lt!15702 (zeroValue!1723 lt!15499))) lt!15720)))

(declare-fun lt!16076 () Unit!984)

(declare-fun choose!255 (ListLongMap!1073 (_ BitVec 64) V!2101 (_ BitVec 64)) Unit!984)

(assert (=> d!7337 (= lt!16076 (choose!255 lt!15704 lt!15702 (zeroValue!1723 lt!15499) lt!15720))))

(assert (=> d!7337 (contains!516 lt!15704 lt!15720)))

(assert (=> d!7337 (= (addStillContains!31 lt!15704 lt!15702 (zeroValue!1723 lt!15499) lt!15720) lt!16076)))

(declare-fun bs!1744 () Bool)

(assert (= bs!1744 d!7337))

(assert (=> bs!1744 m!33567))

(assert (=> bs!1744 m!33567))

(assert (=> bs!1744 m!33569))

(declare-fun m!34271 () Bool)

(assert (=> bs!1744 m!34271))

(declare-fun m!34273 () Bool)

(assert (=> bs!1744 m!34273))

(assert (=> b!40672 d!7337))

(declare-fun d!7339 () Bool)

(assert (=> d!7339 (= (apply!55 lt!15714 lt!15722) (get!709 (getValueByKey!102 (toList!552 lt!15714) lt!15722)))))

(declare-fun bs!1745 () Bool)

(assert (= bs!1745 d!7339))

(declare-fun m!34275 () Bool)

(assert (=> bs!1745 m!34275))

(assert (=> bs!1745 m!34275))

(declare-fun m!34277 () Bool)

(assert (=> bs!1745 m!34277))

(assert (=> b!40672 d!7339))

(declare-fun d!7341 () Bool)

(assert (=> d!7341 (= (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40843 d!7341))

(declare-fun b!41173 () Bool)

(declare-fun e!26100 () Bool)

(declare-fun call!3220 () Bool)

(assert (=> b!41173 (= e!26100 call!3220)))

(declare-fun b!41174 () Bool)

(assert (=> b!41174 (= e!26100 call!3220)))

(declare-fun b!41175 () Bool)

(declare-fun e!26102 () Bool)

(assert (=> b!41175 (= e!26102 (contains!515 (ite c!5020 (Cons!1069 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) Nil!1070) Nil!1070) (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41176 () Bool)

(declare-fun e!26099 () Bool)

(declare-fun e!26101 () Bool)

(assert (=> b!41176 (= e!26099 e!26101)))

(declare-fun res!24468 () Bool)

(assert (=> b!41176 (=> (not res!24468) (not e!26101))))

(assert (=> b!41176 (= res!24468 (not e!26102))))

(declare-fun res!24466 () Bool)

(assert (=> b!41176 (=> (not res!24466) (not e!26102))))

(assert (=> b!41176 (= res!24466 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!7343 () Bool)

(declare-fun res!24467 () Bool)

(assert (=> d!7343 (=> res!24467 e!26099)))

(assert (=> d!7343 (= res!24467 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7343 (= (arrayNoDuplicates!0 (_keys!3294 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5020 (Cons!1069 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) e!26099)))

(declare-fun b!41177 () Bool)

(assert (=> b!41177 (= e!26101 e!26100)))

(declare-fun c!5144 () Bool)

(assert (=> b!41177 (= c!5144 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3217 () Bool)

(assert (=> bm!3217 (= call!3220 (arrayNoDuplicates!0 (_keys!3294 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5144 (Cons!1069 (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5020 (Cons!1069 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (ite c!5020 (Cons!1069 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) Nil!1070) Nil!1070))))))

(assert (= (and d!7343 (not res!24467)) b!41176))

(assert (= (and b!41176 res!24466) b!41175))

(assert (= (and b!41176 res!24468) b!41177))

(assert (= (and b!41177 c!5144) b!41174))

(assert (= (and b!41177 (not c!5144)) b!41173))

(assert (= (or b!41174 b!41173) bm!3217))

(declare-fun m!34279 () Bool)

(assert (=> b!41175 m!34279))

(assert (=> b!41175 m!34279))

(declare-fun m!34281 () Bool)

(assert (=> b!41175 m!34281))

(assert (=> b!41176 m!34279))

(assert (=> b!41176 m!34279))

(declare-fun m!34283 () Bool)

(assert (=> b!41176 m!34283))

(assert (=> b!41177 m!34279))

(assert (=> b!41177 m!34279))

(assert (=> b!41177 m!34283))

(assert (=> bm!3217 m!34279))

(declare-fun m!34285 () Bool)

(assert (=> bm!3217 m!34285))

(assert (=> bm!3192 d!7343))

(declare-fun d!7345 () Bool)

(assert (not d!7345))

(assert (=> b!40713 d!7345))

(declare-fun d!7347 () Bool)

(declare-fun lt!16077 () Bool)

(assert (=> d!7347 (= lt!16077 (member (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (content!32 (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070))))))

(declare-fun e!26104 () Bool)

(assert (=> d!7347 (= lt!16077 e!26104)))

(declare-fun res!24470 () Bool)

(assert (=> d!7347 (=> (not res!24470) (not e!26104))))

(assert (=> d!7347 (= res!24470 (is-Cons!1069 (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)))))

(assert (=> d!7347 (= (contains!515 (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070) (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!16077)))

(declare-fun b!41178 () Bool)

(declare-fun e!26103 () Bool)

(assert (=> b!41178 (= e!26104 e!26103)))

(declare-fun res!24469 () Bool)

(assert (=> b!41178 (=> res!24469 e!26103)))

(assert (=> b!41178 (= res!24469 (= (h!1643 (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41179 () Bool)

(assert (=> b!41179 (= e!26103 (contains!515 (t!3938 (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!7347 res!24470) b!41178))

(assert (= (and b!41178 (not res!24469)) b!41179))

(declare-fun m!34287 () Bool)

(assert (=> d!7347 m!34287))

(assert (=> d!7347 m!33485))

(declare-fun m!34289 () Bool)

(assert (=> d!7347 m!34289))

(assert (=> b!41179 m!33485))

(declare-fun m!34291 () Bool)

(assert (=> b!41179 m!34291))

(assert (=> b!40842 d!7347))

(declare-fun d!7349 () Bool)

(assert (=> d!7349 (= (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40762 d!7349))

(declare-fun b!41180 () Bool)

(declare-fun e!26106 () Bool)

(declare-fun call!3221 () Bool)

(assert (=> b!41180 (= e!26106 call!3221)))

(declare-fun b!41181 () Bool)

(assert (=> b!41181 (= e!26106 call!3221)))

(declare-fun e!26108 () Bool)

(declare-fun b!41182 () Bool)

(assert (=> b!41182 (= e!26108 (contains!515 (ite c!5048 (Cons!1069 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!41183 () Bool)

(declare-fun e!26105 () Bool)

(declare-fun e!26107 () Bool)

(assert (=> b!41183 (= e!26105 e!26107)))

(declare-fun res!24473 () Bool)

(assert (=> b!41183 (=> (not res!24473) (not e!26107))))

(assert (=> b!41183 (= res!24473 (not e!26108))))

(declare-fun res!24471 () Bool)

(assert (=> b!41183 (=> (not res!24471) (not e!26108))))

(assert (=> b!41183 (= res!24471 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!7351 () Bool)

(declare-fun res!24472 () Bool)

(assert (=> d!7351 (=> res!24472 e!26105)))

(assert (=> d!7351 (= res!24472 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1378 lt!15494)))))

(assert (=> d!7351 (= (arrayNoDuplicates!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5048 (Cons!1069 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070))) e!26105)))

(declare-fun b!41184 () Bool)

(assert (=> b!41184 (= e!26107 e!26106)))

(declare-fun c!5145 () Bool)

(assert (=> b!41184 (= c!5145 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!3218 () Bool)

(assert (=> bm!3218 (= call!3221 (arrayNoDuplicates!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5145 (Cons!1069 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!5048 (Cons!1069 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070))) (ite c!5048 (Cons!1069 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)) (ite c!4937 (Cons!1069 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) Nil!1070) Nil!1070)))))))

(assert (= (and d!7351 (not res!24472)) b!41183))

(assert (= (and b!41183 res!24471) b!41182))

(assert (= (and b!41183 res!24473) b!41184))

(assert (= (and b!41184 c!5145) b!41181))

(assert (= (and b!41184 (not c!5145)) b!41180))

(assert (= (or b!41181 b!41180) bm!3218))

(declare-fun m!34293 () Bool)

(assert (=> b!41182 m!34293))

(assert (=> b!41182 m!34293))

(declare-fun m!34295 () Bool)

(assert (=> b!41182 m!34295))

(assert (=> b!41183 m!34293))

(assert (=> b!41183 m!34293))

(declare-fun m!34297 () Bool)

(assert (=> b!41183 m!34297))

(assert (=> b!41184 m!34293))

(assert (=> b!41184 m!34293))

(assert (=> b!41184 m!34297))

(assert (=> bm!3218 m!34293))

(declare-fun m!34299 () Bool)

(assert (=> bm!3218 m!34299))

(assert (=> bm!3202 d!7351))

(assert (=> d!7155 d!7029))

(declare-fun b!41239 () Bool)

(declare-fun lt!16103 () SeekEntryResult!183)

(assert (=> b!41239 (and (bvsge (index!2856 lt!16103) #b00000000000000000000000000000000) (bvslt (index!2856 lt!16103) (size!1378 lt!15494)))))

(declare-fun res!24494 () Bool)

(assert (=> b!41239 (= res!24494 (= (select (arr!1241 lt!15494) (index!2856 lt!16103)) (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun e!26142 () Bool)

(assert (=> b!41239 (=> res!24494 e!26142)))

(declare-fun e!26144 () Bool)

(assert (=> b!41239 (= e!26144 e!26142)))

(declare-fun b!41240 () Bool)

(declare-fun e!26141 () Bool)

(assert (=> b!41240 (= e!26141 (bvsge (x!7730 lt!16103) #b01111111111111111111111111111110))))

(declare-fun b!41241 () Bool)

(declare-fun e!26143 () SeekEntryResult!183)

(assert (=> b!41241 (= e!26143 (Intermediate!183 false (toIndex!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!41242 () Bool)

(assert (=> b!41242 (and (bvsge (index!2856 lt!16103) #b00000000000000000000000000000000) (bvslt (index!2856 lt!16103) (size!1378 lt!15494)))))

(declare-fun res!24492 () Bool)

(assert (=> b!41242 (= res!24492 (= (select (arr!1241 lt!15494) (index!2856 lt!16103)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!41242 (=> res!24492 e!26142)))

(declare-fun d!7353 () Bool)

(assert (=> d!7353 e!26141))

(declare-fun c!5165 () Bool)

(assert (=> d!7353 (= c!5165 (and (is-Intermediate!183 lt!16103) (undefined!995 lt!16103)))))

(declare-fun e!26140 () SeekEntryResult!183)

(assert (=> d!7353 (= lt!16103 e!26140)))

(declare-fun c!5164 () Bool)

(assert (=> d!7353 (= c!5164 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!16104 () (_ BitVec 64))

(assert (=> d!7353 (= lt!16104 (select (arr!1241 lt!15494) (toIndex!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!7353 (validMask!0 mask!853)))

(assert (=> d!7353 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) mask!853) (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853) lt!16103)))

(declare-fun b!41243 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41243 (= e!26143 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853))))

(declare-fun b!41244 () Bool)

(assert (=> b!41244 (and (bvsge (index!2856 lt!16103) #b00000000000000000000000000000000) (bvslt (index!2856 lt!16103) (size!1378 lt!15494)))))

(assert (=> b!41244 (= e!26142 (= (select (arr!1241 lt!15494) (index!2856 lt!16103)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41245 () Bool)

(assert (=> b!41245 (= e!26140 e!26143)))

(declare-fun c!5166 () Bool)

(assert (=> b!41245 (= c!5166 (or (= lt!16104 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)) (= (bvadd lt!16104 lt!16104) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!41246 () Bool)

(assert (=> b!41246 (= e!26140 (Intermediate!183 true (toIndex!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!41247 () Bool)

(assert (=> b!41247 (= e!26141 e!26144)))

(declare-fun res!24493 () Bool)

(assert (=> b!41247 (= res!24493 (and (is-Intermediate!183 lt!16103) (not (undefined!995 lt!16103)) (bvslt (x!7730 lt!16103) #b01111111111111111111111111111110) (bvsge (x!7730 lt!16103) #b00000000000000000000000000000000) (bvsge (x!7730 lt!16103) #b00000000000000000000000000000000)))))

(assert (=> b!41247 (=> (not res!24493) (not e!26144))))

(assert (= (and d!7353 c!5164) b!41246))

(assert (= (and d!7353 (not c!5164)) b!41245))

(assert (= (and b!41245 c!5166) b!41241))

(assert (= (and b!41245 (not c!5166)) b!41243))

(assert (= (and d!7353 c!5165) b!41240))

(assert (= (and d!7353 (not c!5165)) b!41247))

(assert (= (and b!41247 res!24493) b!41239))

(assert (= (and b!41239 (not res!24494)) b!41242))

(assert (= (and b!41242 (not res!24492)) b!41244))

(declare-fun m!34325 () Bool)

(assert (=> b!41244 m!34325))

(assert (=> d!7353 m!33741))

(declare-fun m!34327 () Bool)

(assert (=> d!7353 m!34327))

(assert (=> d!7353 m!33283))

(assert (=> b!41239 m!34325))

(assert (=> b!41243 m!33741))

(declare-fun m!34329 () Bool)

(assert (=> b!41243 m!34329))

(assert (=> b!41243 m!34329))

(assert (=> b!41243 m!33331))

(declare-fun m!34331 () Bool)

(assert (=> b!41243 m!34331))

(assert (=> b!41242 m!34325))

(assert (=> d!7145 d!7353))

(declare-fun d!7359 () Bool)

(declare-fun lt!16121 () (_ BitVec 32))

(declare-fun lt!16120 () (_ BitVec 32))

(assert (=> d!7359 (= lt!16121 (bvmul (bvxor lt!16120 (bvlshr lt!16120 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!7359 (= lt!16120 ((_ extract 31 0) (bvand (bvxor (select (arr!1241 lt!15494) #b00000000000000000000000000000000) (bvlshr (select (arr!1241 lt!15494) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!7359 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!24497 (let ((h!1646 ((_ extract 31 0) (bvand (bvxor (select (arr!1241 lt!15494) #b00000000000000000000000000000000) (bvlshr (select (arr!1241 lt!15494) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7759 (bvmul (bvxor h!1646 (bvlshr h!1646 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7759 (bvlshr x!7759 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!24497 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!24497 #b00000000000000000000000000000000))))))

(assert (=> d!7359 (= (toIndex!0 (select (arr!1241 lt!15494) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!16121 (bvlshr lt!16121 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!7145 d!7359))

(assert (=> d!7145 d!7059))

(assert (=> b!40844 d!7341))

(declare-fun d!7377 () Bool)

(declare-fun e!26154 () Bool)

(assert (=> d!7377 e!26154))

(declare-fun res!24503 () Bool)

(assert (=> d!7377 (=> res!24503 e!26154)))

(declare-fun lt!16125 () Bool)

(assert (=> d!7377 (= res!24503 (not lt!16125))))

(declare-fun lt!16123 () Bool)

(assert (=> d!7377 (= lt!16125 lt!16123)))

(declare-fun lt!16122 () Unit!984)

(declare-fun e!26155 () Unit!984)

(assert (=> d!7377 (= lt!16122 e!26155)))

(declare-fun c!5170 () Bool)

(assert (=> d!7377 (= c!5170 lt!16123)))

(assert (=> d!7377 (= lt!16123 (containsKey!69 (toList!552 lt!15711) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (=> d!7377 (= (contains!516 lt!15711 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)) lt!16125)))

(declare-fun b!41261 () Bool)

(declare-fun lt!16124 () Unit!984)

(assert (=> b!41261 (= e!26155 lt!16124)))

(assert (=> b!41261 (= lt!16124 (lemmaContainsKeyImpliesGetValueByKeyDefined!57 (toList!552 lt!15711) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (=> b!41261 (isDefined!58 (getValueByKey!102 (toList!552 lt!15711) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun b!41262 () Bool)

(declare-fun Unit!997 () Unit!984)

(assert (=> b!41262 (= e!26155 Unit!997)))

(declare-fun b!41263 () Bool)

(assert (=> b!41263 (= e!26154 (isDefined!58 (getValueByKey!102 (toList!552 lt!15711) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))))

(assert (= (and d!7377 c!5170) b!41261))

(assert (= (and d!7377 (not c!5170)) b!41262))

(assert (= (and d!7377 (not res!24503)) b!41263))

(assert (=> d!7377 m!33585))

(declare-fun m!34369 () Bool)

(assert (=> d!7377 m!34369))

(assert (=> b!41261 m!33585))

(declare-fun m!34371 () Bool)

(assert (=> b!41261 m!34371))

(assert (=> b!41261 m!33585))

(declare-fun m!34373 () Bool)

(assert (=> b!41261 m!34373))

(assert (=> b!41261 m!34373))

(declare-fun m!34375 () Bool)

(assert (=> b!41261 m!34375))

(assert (=> b!41263 m!33585))

(assert (=> b!41263 m!34373))

(assert (=> b!41263 m!34373))

(assert (=> b!41263 m!34375))

(assert (=> b!40668 d!7377))

(declare-fun d!7381 () Bool)

(declare-fun e!26158 () Bool)

(assert (=> d!7381 e!26158))

(declare-fun res!24504 () Bool)

(assert (=> d!7381 (=> res!24504 e!26158)))

(declare-fun lt!16130 () Bool)

(assert (=> d!7381 (= res!24504 (not lt!16130))))

(declare-fun lt!16128 () Bool)

(assert (=> d!7381 (= lt!16130 lt!16128)))

(declare-fun lt!16127 () Unit!984)

(declare-fun e!26159 () Unit!984)

(assert (=> d!7381 (= lt!16127 e!26159)))

(declare-fun c!5173 () Bool)

(assert (=> d!7381 (= c!5173 lt!16128)))

(assert (=> d!7381 (= lt!16128 (containsKey!69 (toList!552 lt!15711) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!7381 (= (contains!516 lt!15711 #b0000000000000000000000000000000000000000000000000000000000000000) lt!16130)))

(declare-fun b!41268 () Bool)

(declare-fun lt!16129 () Unit!984)

(assert (=> b!41268 (= e!26159 lt!16129)))

(assert (=> b!41268 (= lt!16129 (lemmaContainsKeyImpliesGetValueByKeyDefined!57 (toList!552 lt!15711) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!41268 (isDefined!58 (getValueByKey!102 (toList!552 lt!15711) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41269 () Bool)

(declare-fun Unit!999 () Unit!984)

(assert (=> b!41269 (= e!26159 Unit!999)))

(declare-fun b!41270 () Bool)

(assert (=> b!41270 (= e!26158 (isDefined!58 (getValueByKey!102 (toList!552 lt!15711) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7381 c!5173) b!41268))

(assert (= (and d!7381 (not c!5173)) b!41269))

(assert (= (and d!7381 (not res!24504)) b!41270))

(declare-fun m!34379 () Bool)

(assert (=> d!7381 m!34379))

(declare-fun m!34381 () Bool)

(assert (=> b!41268 m!34381))

(assert (=> b!41268 m!33939))

(assert (=> b!41268 m!33939))

(declare-fun m!34383 () Bool)

(assert (=> b!41268 m!34383))

(assert (=> b!41270 m!33939))

(assert (=> b!41270 m!33939))

(assert (=> b!41270 m!34383))

(assert (=> bm!3175 d!7381))

(assert (=> b!40846 d!7349))

(assert (=> b!40669 d!7349))

(declare-fun d!7385 () Bool)

(assert (=> d!7385 (arrayContainsKey!0 (_keys!3294 lt!15499) lt!15778 #b00000000000000000000000000000000)))

(declare-fun lt!16135 () Unit!984)

(assert (=> d!7385 (= lt!16135 (choose!13 (_keys!3294 lt!15499) lt!15778 #b00000000000000000000000000000000))))

(assert (=> d!7385 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!7385 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3294 lt!15499) lt!15778 #b00000000000000000000000000000000) lt!16135)))

(declare-fun bs!1748 () Bool)

(assert (= bs!1748 d!7385))

(assert (=> bs!1748 m!33643))

(declare-fun m!34391 () Bool)

(assert (=> bs!1748 m!34391))

(assert (=> b!40756 d!7385))

(declare-fun d!7389 () Bool)

(declare-fun res!24506 () Bool)

(declare-fun e!26162 () Bool)

(assert (=> d!7389 (=> res!24506 e!26162)))

(assert (=> d!7389 (= res!24506 (= (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) lt!15778))))

(assert (=> d!7389 (= (arrayContainsKey!0 (_keys!3294 lt!15499) lt!15778 #b00000000000000000000000000000000) e!26162)))

(declare-fun b!41274 () Bool)

(declare-fun e!26163 () Bool)

(assert (=> b!41274 (= e!26162 e!26163)))

(declare-fun res!24507 () Bool)

(assert (=> b!41274 (=> (not res!24507) (not e!26163))))

(assert (=> b!41274 (= res!24507 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))))))

(declare-fun b!41275 () Bool)

(assert (=> b!41275 (= e!26163 (arrayContainsKey!0 (_keys!3294 lt!15499) lt!15778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7389 (not res!24506)) b!41274))

(assert (= (and b!41274 res!24507) b!41275))

(assert (=> d!7389 m!33585))

(declare-fun m!34397 () Bool)

(assert (=> b!41275 m!34397))

(assert (=> b!40756 d!7389))

(declare-fun b!41276 () Bool)

(declare-fun c!5176 () Bool)

(declare-fun lt!16136 () (_ BitVec 64))

(assert (=> b!41276 (= c!5176 (= lt!16136 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!26165 () SeekEntryResult!183)

(declare-fun e!26164 () SeekEntryResult!183)

(assert (=> b!41276 (= e!26165 e!26164)))

(declare-fun d!7393 () Bool)

(declare-fun lt!16138 () SeekEntryResult!183)

(assert (=> d!7393 (and (or (is-Undefined!183 lt!16138) (not (is-Found!183 lt!16138)) (and (bvsge (index!2855 lt!16138) #b00000000000000000000000000000000) (bvslt (index!2855 lt!16138) (size!1378 (_keys!3294 lt!15499))))) (or (is-Undefined!183 lt!16138) (is-Found!183 lt!16138) (not (is-MissingZero!183 lt!16138)) (and (bvsge (index!2854 lt!16138) #b00000000000000000000000000000000) (bvslt (index!2854 lt!16138) (size!1378 (_keys!3294 lt!15499))))) (or (is-Undefined!183 lt!16138) (is-Found!183 lt!16138) (is-MissingZero!183 lt!16138) (not (is-MissingVacant!183 lt!16138)) (and (bvsge (index!2857 lt!16138) #b00000000000000000000000000000000) (bvslt (index!2857 lt!16138) (size!1378 (_keys!3294 lt!15499))))) (or (is-Undefined!183 lt!16138) (ite (is-Found!183 lt!16138) (= (select (arr!1241 (_keys!3294 lt!15499)) (index!2855 lt!16138)) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)) (ite (is-MissingZero!183 lt!16138) (= (select (arr!1241 (_keys!3294 lt!15499)) (index!2854 lt!16138)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!183 lt!16138) (= (select (arr!1241 (_keys!3294 lt!15499)) (index!2857 lt!16138)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!26166 () SeekEntryResult!183)

(assert (=> d!7393 (= lt!16138 e!26166)))

(declare-fun c!5175 () Bool)

(declare-fun lt!16137 () SeekEntryResult!183)

(assert (=> d!7393 (= c!5175 (and (is-Intermediate!183 lt!16137) (undefined!995 lt!16137)))))

(assert (=> d!7393 (= lt!16137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) (mask!5178 lt!15499)) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) (_keys!3294 lt!15499) (mask!5178 lt!15499)))))

(assert (=> d!7393 (validMask!0 (mask!5178 lt!15499))))

(assert (=> d!7393 (= (seekEntryOrOpen!0 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) (_keys!3294 lt!15499) (mask!5178 lt!15499)) lt!16138)))

(declare-fun b!41277 () Bool)

(assert (=> b!41277 (= e!26164 (MissingZero!183 (index!2856 lt!16137)))))

(declare-fun b!41278 () Bool)

(assert (=> b!41278 (= e!26166 Undefined!183)))

(declare-fun b!41279 () Bool)

(assert (=> b!41279 (= e!26166 e!26165)))

(assert (=> b!41279 (= lt!16136 (select (arr!1241 (_keys!3294 lt!15499)) (index!2856 lt!16137)))))

(declare-fun c!5177 () Bool)

(assert (=> b!41279 (= c!5177 (= lt!16136 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun b!41280 () Bool)

(assert (=> b!41280 (= e!26164 (seekKeyOrZeroReturnVacant!0 (x!7730 lt!16137) (index!2856 lt!16137) (index!2856 lt!16137) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) (_keys!3294 lt!15499) (mask!5178 lt!15499)))))

(declare-fun b!41281 () Bool)

(assert (=> b!41281 (= e!26165 (Found!183 (index!2856 lt!16137)))))

(assert (= (and d!7393 c!5175) b!41278))

(assert (= (and d!7393 (not c!5175)) b!41279))

(assert (= (and b!41279 c!5177) b!41281))

(assert (= (and b!41279 (not c!5177)) b!41276))

(assert (= (and b!41276 c!5176) b!41277))

(assert (= (and b!41276 (not c!5176)) b!41280))

(declare-fun m!34399 () Bool)

(assert (=> d!7393 m!34399))

(assert (=> d!7393 m!33585))

(declare-fun m!34401 () Bool)

(assert (=> d!7393 m!34401))

(assert (=> d!7393 m!33585))

(assert (=> d!7393 m!34399))

(declare-fun m!34405 () Bool)

(assert (=> d!7393 m!34405))

(assert (=> d!7393 m!33599))

(declare-fun m!34409 () Bool)

(assert (=> d!7393 m!34409))

(declare-fun m!34411 () Bool)

(assert (=> d!7393 m!34411))

(declare-fun m!34415 () Bool)

(assert (=> b!41279 m!34415))

(assert (=> b!41280 m!33585))

(declare-fun m!34417 () Bool)

(assert (=> b!41280 m!34417))

(assert (=> b!40756 d!7393))

(declare-fun d!7399 () Bool)

(assert (=> d!7399 (= (size!1394 lt!15499) (bvadd (_size!170 lt!15499) (bvsdiv (bvadd (extraKeys!1696 lt!15499) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!40748 d!7399))

(declare-fun d!7403 () Bool)

(assert (=> d!7403 (= (apply!55 lt!15711 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)) (get!709 (getValueByKey!102 (toList!552 lt!15711) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000))))))

(declare-fun bs!1750 () Bool)

(assert (= bs!1750 d!7403))

(assert (=> bs!1750 m!33585))

(assert (=> bs!1750 m!34373))

(assert (=> bs!1750 m!34373))

(declare-fun m!34433 () Bool)

(assert (=> bs!1750 m!34433))

(assert (=> b!40670 d!7403))

(declare-fun d!7405 () Bool)

(declare-fun c!5184 () Bool)

(assert (=> d!7405 (= c!5184 (is-ValueCellFull!631 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun e!26180 () V!2101)

(assert (=> d!7405 (= (get!703 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000) (dynLambda!192 (defaultEntry!1805 lt!15499) #b0000000000000000000000000000000000000000000000000000000000000000)) e!26180)))

(declare-fun b!41302 () Bool)

(declare-fun get!713 (ValueCell!631 V!2101) V!2101)

(assert (=> b!41302 (= e!26180 (get!713 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000) (dynLambda!192 (defaultEntry!1805 lt!15499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!41303 () Bool)

(declare-fun get!714 (ValueCell!631 V!2101) V!2101)

(assert (=> b!41303 (= e!26180 (get!714 (select (arr!1242 (_values!1788 lt!15499)) #b00000000000000000000000000000000) (dynLambda!192 (defaultEntry!1805 lt!15499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7405 c!5184) b!41302))

(assert (= (and d!7405 (not c!5184)) b!41303))

(assert (=> b!41302 m!33607))

(assert (=> b!41302 m!33609))

(declare-fun m!34447 () Bool)

(assert (=> b!41302 m!34447))

(assert (=> b!41303 m!33607))

(assert (=> b!41303 m!33609))

(declare-fun m!34449 () Bool)

(assert (=> b!41303 m!34449))

(assert (=> b!40670 d!7405))

(declare-fun b!41304 () Bool)

(declare-fun e!26181 () (_ BitVec 32))

(assert (=> b!41304 (= e!26181 #b00000000000000000000000000000000)))

(declare-fun b!41305 () Bool)

(declare-fun e!26182 () (_ BitVec 32))

(assert (=> b!41305 (= e!26181 e!26182)))

(declare-fun c!5186 () Bool)

(assert (=> b!41305 (= c!5186 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!7415 () Bool)

(declare-fun lt!16151 () (_ BitVec 32))

(assert (=> d!7415 (and (bvsge lt!16151 #b00000000000000000000000000000000) (bvsle lt!16151 (bvsub (size!1378 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!7415 (= lt!16151 e!26181)))

(declare-fun c!5185 () Bool)

(assert (=> d!7415 (= c!5185 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7415 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1378 lt!15494)))))

(assert (=> d!7415 (= (arrayCountValidKeys!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!16151)))

(declare-fun b!41306 () Bool)

(declare-fun call!3228 () (_ BitVec 32))

(assert (=> b!41306 (= e!26182 call!3228)))

(declare-fun b!41307 () Bool)

(assert (=> b!41307 (= e!26182 (bvadd #b00000000000000000000000000000001 call!3228))))

(declare-fun bm!3225 () Bool)

(assert (=> bm!3225 (= call!3228 (arrayCountValidKeys!0 lt!15494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7415 c!5185) b!41304))

(assert (= (and d!7415 (not c!5185)) b!41305))

(assert (= (and b!41305 c!5186) b!41307))

(assert (= (and b!41305 (not c!5186)) b!41306))

(assert (= (or b!41307 b!41306) bm!3225))

(assert (=> b!41305 m!34293))

(assert (=> b!41305 m!34293))

(assert (=> b!41305 m!34297))

(declare-fun m!34465 () Bool)

(assert (=> bm!3225 m!34465))

(assert (=> bm!3133 d!7415))

(declare-fun b!41311 () Bool)

(declare-fun e!26185 () (_ BitVec 32))

(assert (=> b!41311 (= e!26185 #b00000000000000000000000000000000)))

(declare-fun b!41312 () Bool)

(declare-fun e!26186 () (_ BitVec 32))

(assert (=> b!41312 (= e!26185 e!26186)))

(declare-fun c!5189 () Bool)

(assert (=> b!41312 (= c!5189 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!7419 () Bool)

(declare-fun lt!16156 () (_ BitVec 32))

(assert (=> d!7419 (and (bvsge lt!16156 #b00000000000000000000000000000000) (bvsle lt!16156 (bvsub (size!1378 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!7419 (= lt!16156 e!26185)))

(declare-fun c!5188 () Bool)

(assert (=> d!7419 (= c!5188 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7419 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1378 (_keys!3294 lt!15499)) (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7419 (= (arrayCountValidKeys!0 (_keys!3294 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))) lt!16156)))

(declare-fun b!41313 () Bool)

(declare-fun call!3229 () (_ BitVec 32))

(assert (=> b!41313 (= e!26186 call!3229)))

(declare-fun b!41314 () Bool)

(assert (=> b!41314 (= e!26186 (bvadd #b00000000000000000000000000000001 call!3229))))

(declare-fun bm!3226 () Bool)

(assert (=> bm!3226 (= call!3229 (arrayCountValidKeys!0 (_keys!3294 lt!15499) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))))))

(assert (= (and d!7419 c!5188) b!41311))

(assert (= (and d!7419 (not c!5188)) b!41312))

(assert (= (and b!41312 c!5189) b!41314))

(assert (= (and b!41312 (not c!5189)) b!41313))

(assert (= (or b!41314 b!41313) bm!3226))

(assert (=> b!41312 m!34279))

(assert (=> b!41312 m!34279))

(assert (=> b!41312 m!34283))

(declare-fun m!34473 () Bool)

(assert (=> bm!3226 m!34473))

(assert (=> bm!3203 d!7419))

(assert (=> b!40761 d!7349))

(assert (=> b!40666 d!7349))

(declare-fun d!7423 () Bool)

(declare-fun lt!16157 () Bool)

(assert (=> d!7423 (= lt!16157 (member (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000) (content!32 Nil!1070)))))

(declare-fun e!26192 () Bool)

(assert (=> d!7423 (= lt!16157 e!26192)))

(declare-fun res!24521 () Bool)

(assert (=> d!7423 (=> (not res!24521) (not e!26192))))

(assert (=> d!7423 (= res!24521 (is-Cons!1069 Nil!1070))))

(assert (=> d!7423 (= (contains!515 Nil!1070 (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)) lt!16157)))

(declare-fun b!41320 () Bool)

(declare-fun e!26191 () Bool)

(assert (=> b!41320 (= e!26192 e!26191)))

(declare-fun res!24520 () Bool)

(assert (=> b!41320 (=> res!24520 e!26191)))

(assert (=> b!41320 (= res!24520 (= (h!1643 Nil!1070) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(declare-fun b!41321 () Bool)

(assert (=> b!41321 (= e!26191 (contains!515 (t!3938 Nil!1070) (select (arr!1241 (_keys!3294 lt!15499)) #b00000000000000000000000000000000)))))

(assert (= (and d!7423 res!24521) b!41320))

(assert (= (and b!41320 (not res!24520)) b!41321))

(assert (=> d!7423 m!33625))

(assert (=> d!7423 m!33585))

(declare-fun m!34475 () Bool)

(assert (=> d!7423 m!34475))

(assert (=> b!41321 m!33585))

(declare-fun m!34477 () Bool)

(assert (=> b!41321 m!34477))

(assert (=> b!40760 d!7423))

(declare-fun b!41322 () Bool)

(declare-fun e!26194 () Bool)

(declare-fun e!26193 () Bool)

(assert (=> b!41322 (= e!26194 e!26193)))

(declare-fun c!5191 () Bool)

(assert (=> b!41322 (= c!5191 (validKeyInArray!0 (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41323 () Bool)

(declare-fun e!26195 () Bool)

(declare-fun call!3231 () Bool)

(assert (=> b!41323 (= e!26195 call!3231)))

(declare-fun b!41324 () Bool)

(assert (=> b!41324 (= e!26193 e!26195)))

(declare-fun lt!16160 () (_ BitVec 64))

(assert (=> b!41324 (= lt!16160 (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!16158 () Unit!984)

(assert (=> b!41324 (= lt!16158 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3294 lt!15499) lt!16160 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!41324 (arrayContainsKey!0 (_keys!3294 lt!15499) lt!16160 #b00000000000000000000000000000000)))

(declare-fun lt!16159 () Unit!984)

(assert (=> b!41324 (= lt!16159 lt!16158)))

(declare-fun res!24522 () Bool)

(assert (=> b!41324 (= res!24522 (= (seekEntryOrOpen!0 (select (arr!1241 (_keys!3294 lt!15499)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3294 lt!15499) (mask!5178 lt!15499)) (Found!183 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!41324 (=> (not res!24522) (not e!26195))))

(declare-fun d!7425 () Bool)

(declare-fun res!24523 () Bool)

(assert (=> d!7425 (=> res!24523 e!26194)))

(assert (=> d!7425 (= res!24523 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1378 (_keys!3294 lt!15499))))))

(assert (=> d!7425 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3294 lt!15499) (mask!5178 lt!15499)) e!26194)))

(declare-fun b!41325 () Bool)

(assert (=> b!41325 (= e!26193 call!3231)))

(declare-fun bm!3228 () Bool)

(assert (=> bm!3228 (= call!3231 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3294 lt!15499) (mask!5178 lt!15499)))))

(assert (= (and d!7425 (not res!24523)) b!41322))

(assert (= (and b!41322 c!5191) b!41324))

(assert (= (and b!41322 (not c!5191)) b!41325))

(assert (= (and b!41324 res!24522) b!41323))

(assert (= (or b!41323 b!41325) bm!3228))

(assert (=> b!41322 m!34279))

(assert (=> b!41322 m!34279))

(assert (=> b!41322 m!34283))

(assert (=> b!41324 m!34279))

(declare-fun m!34483 () Bool)

(assert (=> b!41324 m!34483))

(declare-fun m!34485 () Bool)

(assert (=> b!41324 m!34485))

(assert (=> b!41324 m!34279))

(declare-fun m!34487 () Bool)

(assert (=> b!41324 m!34487))

(declare-fun m!34489 () Bool)

(assert (=> bm!3228 m!34489))

(assert (=> bm!3191 d!7425))

(assert (=> d!7139 d!7141))

(declare-fun d!7429 () Bool)

(assert (=> d!7429 (arrayContainsKey!0 lt!15494 lt!15520 #b00000000000000000000000000000000)))

(assert (=> d!7429 true))

(declare-fun _$60!347 () Unit!984)

(assert (=> d!7429 (= (choose!13 lt!15494 lt!15520 #b00000000000000000000000000000000) _$60!347)))

(declare-fun bs!1754 () Bool)

(assert (= bs!1754 d!7429))

(assert (=> bs!1754 m!33353))

(assert (=> d!7139 d!7429))

(declare-fun d!7435 () Bool)

(declare-fun res!24528 () Bool)

(declare-fun e!26201 () Bool)

(assert (=> d!7435 (=> res!24528 e!26201)))

(assert (=> d!7435 (= res!24528 (= (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15520))))

(assert (=> d!7435 (= (arrayContainsKey!0 lt!15494 lt!15520 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!26201)))

(declare-fun b!41332 () Bool)

(declare-fun e!26202 () Bool)

(assert (=> b!41332 (= e!26201 e!26202)))

(declare-fun res!24529 () Bool)

(assert (=> b!41332 (=> (not res!24529) (not e!26202))))

(assert (=> b!41332 (= res!24529 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1378 lt!15494)))))

(declare-fun b!41333 () Bool)

(assert (=> b!41333 (= e!26202 (arrayContainsKey!0 lt!15494 lt!15520 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!7435 (not res!24528)) b!41332))

(assert (= (and b!41332 res!24529) b!41333))

(assert (=> d!7435 m!33485))

(declare-fun m!34503 () Bool)

(assert (=> b!41333 m!34503))

(assert (=> b!40807 d!7435))

(assert (=> b!40535 d!7341))

(declare-fun d!7439 () Bool)

(assert (=> d!7439 (= (content!32 Nil!1070) (as emptyset (Set (_ BitVec 64))))))

(assert (=> d!7125 d!7439))

(assert (=> b!40750 d!7341))

(declare-fun d!7441 () Bool)

(declare-fun e!26206 () Bool)

(assert (=> d!7441 e!26206))

(declare-fun res!24530 () Bool)

(assert (=> d!7441 (=> res!24530 e!26206)))

(declare-fun lt!16171 () Bool)

(assert (=> d!7441 (= res!24530 (not lt!16171))))

(declare-fun lt!16169 () Bool)

(assert (=> d!7441 (= lt!16171 lt!16169)))

(declare-fun lt!16168 () Unit!984)

(declare-fun e!26207 () Unit!984)

(assert (=> d!7441 (= lt!16168 e!26207)))

(declare-fun c!5196 () Bool)

(assert (=> d!7441 (= c!5196 lt!16169)))

(assert (=> d!7441 (= lt!16169 (containsKey!69 (toList!552 lt!15711) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!7441 (= (contains!516 lt!15711 #b1000000000000000000000000000000000000000000000000000000000000000) lt!16171)))

(declare-fun b!41340 () Bool)

(declare-fun lt!16170 () Unit!984)

(assert (=> b!41340 (= e!26207 lt!16170)))

(assert (=> b!41340 (= lt!16170 (lemmaContainsKeyImpliesGetValueByKeyDefined!57 (toList!552 lt!15711) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!41340 (isDefined!58 (getValueByKey!102 (toList!552 lt!15711) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41341 () Bool)

(declare-fun Unit!1000 () Unit!984)

(assert (=> b!41341 (= e!26207 Unit!1000)))

(declare-fun b!41342 () Bool)

(assert (=> b!41342 (= e!26206 (isDefined!58 (getValueByKey!102 (toList!552 lt!15711) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7441 c!5196) b!41340))

(assert (= (and d!7441 (not c!5196)) b!41341))

(assert (= (and d!7441 (not res!24530)) b!41342))

(declare-fun m!34519 () Bool)

(assert (=> d!7441 m!34519))

(declare-fun m!34521 () Bool)

(assert (=> b!41340 m!34521))

(assert (=> b!41340 m!33935))

(assert (=> b!41340 m!33935))

(declare-fun m!34523 () Bool)

(assert (=> b!41340 m!34523))

(assert (=> b!41342 m!33935))

(assert (=> b!41342 m!33935))

(assert (=> b!41342 m!34523))

(assert (=> bm!3174 d!7441))

(assert (=> d!7115 d!7219))

(assert (=> b!40747 d!7399))

(declare-fun b!41343 () Bool)

(declare-fun e!26209 () Bool)

(declare-fun e!26208 () Bool)

(assert (=> b!41343 (= e!26209 e!26208)))

(declare-fun c!5197 () Bool)

(assert (=> b!41343 (= c!5197 (validKeyInArray!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!41344 () Bool)

(declare-fun e!26210 () Bool)

(declare-fun call!3233 () Bool)

(assert (=> b!41344 (= e!26210 call!3233)))

(declare-fun b!41345 () Bool)

(assert (=> b!41345 (= e!26208 e!26210)))

(declare-fun lt!16174 () (_ BitVec 64))

(assert (=> b!41345 (= lt!16174 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!16172 () Unit!984)

(assert (=> b!41345 (= lt!16172 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15494 lt!16174 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!41345 (arrayContainsKey!0 lt!15494 lt!16174 #b00000000000000000000000000000000)))

(declare-fun lt!16173 () Unit!984)

(assert (=> b!41345 (= lt!16173 lt!16172)))

(declare-fun res!24531 () Bool)

(assert (=> b!41345 (= res!24531 (= (seekEntryOrOpen!0 (select (arr!1241 lt!15494) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!15494 mask!853) (Found!183 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!41345 (=> (not res!24531) (not e!26210))))

(declare-fun d!7443 () Bool)

(declare-fun res!24532 () Bool)

(assert (=> d!7443 (=> res!24532 e!26209)))

(assert (=> d!7443 (= res!24532 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1378 lt!15494)))))

(assert (=> d!7443 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15494 mask!853) e!26209)))

(declare-fun b!41346 () Bool)

(assert (=> b!41346 (= e!26208 call!3233)))

(declare-fun bm!3230 () Bool)

(assert (=> bm!3230 (= call!3233 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15494 mask!853))))

(assert (= (and d!7443 (not res!24532)) b!41343))

(assert (= (and b!41343 c!5197) b!41345))

(assert (= (and b!41343 (not c!5197)) b!41346))

(assert (= (and b!41345 res!24531) b!41344))

(assert (= (or b!41344 b!41346) bm!3230))

(assert (=> b!41343 m!34293))

(assert (=> b!41343 m!34293))

(assert (=> b!41343 m!34297))

(assert (=> b!41345 m!34293))

(declare-fun m!34525 () Bool)

(assert (=> b!41345 m!34525))

(declare-fun m!34527 () Bool)

(assert (=> b!41345 m!34527))

(assert (=> b!41345 m!34293))

(declare-fun m!34529 () Bool)

(assert (=> b!41345 m!34529))

(declare-fun m!34531 () Bool)

(assert (=> bm!3230 m!34531))

(assert (=> bm!3190 d!7443))

(declare-fun d!7445 () Bool)

(declare-fun e!26211 () Bool)

(assert (=> d!7445 e!26211))

(declare-fun res!24533 () Bool)

(assert (=> d!7445 (=> (not res!24533) (not e!26211))))

(declare-fun lt!16176 () ListLongMap!1073)

(assert (=> d!7445 (= res!24533 (contains!516 lt!16176 (_1!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))))))

(declare-fun lt!16175 () List!1072)

(assert (=> d!7445 (= lt!16176 (ListLongMap!1074 lt!16175))))

(declare-fun lt!16178 () Unit!984)

(declare-fun lt!16177 () Unit!984)

(assert (=> d!7445 (= lt!16178 lt!16177)))

(assert (=> d!7445 (= (getValueByKey!102 lt!16175 (_1!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))))))

(assert (=> d!7445 (= lt!16177 (lemmaContainsTupThenGetReturnValue!27 lt!16175 (_1!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))) (_2!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))))))

(assert (=> d!7445 (= lt!16175 (insertStrictlySorted!24 (toList!552 call!3174) (_1!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))) (_2!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))))))

(assert (=> d!7445 (= (+!64 call!3174 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))) lt!16176)))

(declare-fun b!41347 () Bool)

(declare-fun res!24534 () Bool)

(assert (=> b!41347 (=> (not res!24534) (not e!26211))))

(assert (=> b!41347 (= res!24534 (= (getValueByKey!102 (toList!552 lt!16176) (_1!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))) (Some!107 (_2!756 (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))))))

(declare-fun b!41348 () Bool)

(assert (=> b!41348 (= e!26211 (contains!520 (toList!552 lt!16176) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))))

(assert (= (and d!7445 res!24533) b!41347))

(assert (= (and b!41347 res!24534) b!41348))

(declare-fun m!34533 () Bool)

(assert (=> d!7445 m!34533))

(declare-fun m!34535 () Bool)

(assert (=> d!7445 m!34535))

(declare-fun m!34537 () Bool)

(assert (=> d!7445 m!34537))

(declare-fun m!34539 () Bool)

(assert (=> d!7445 m!34539))

(declare-fun m!34541 () Bool)

(assert (=> b!41347 m!34541))

(declare-fun m!34543 () Bool)

(assert (=> b!41348 m!34543))

(assert (=> b!40678 d!7445))

(assert (=> b!40754 d!7349))

(declare-fun b!41361 () Bool)

(declare-fun c!5206 () Bool)

(declare-fun lt!16183 () (_ BitVec 64))

(assert (=> b!41361 (= c!5206 (= lt!16183 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!26219 () SeekEntryResult!183)

(declare-fun e!26220 () SeekEntryResult!183)

(assert (=> b!41361 (= e!26219 e!26220)))

(declare-fun b!41362 () Bool)

(declare-fun e!26218 () SeekEntryResult!183)

(assert (=> b!41362 (= e!26218 Undefined!183)))

(declare-fun b!41363 () Bool)

(assert (=> b!41363 (= e!26220 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7730 lt!15827) #b00000000000000000000000000000001) (nextIndex!0 (index!2856 lt!15827) (x!7730 lt!15827) mask!853) (index!2856 lt!15827) (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853))))

(declare-fun d!7447 () Bool)

(declare-fun lt!16184 () SeekEntryResult!183)

(assert (=> d!7447 (and (or (is-Undefined!183 lt!16184) (not (is-Found!183 lt!16184)) (and (bvsge (index!2855 lt!16184) #b00000000000000000000000000000000) (bvslt (index!2855 lt!16184) (size!1378 lt!15494)))) (or (is-Undefined!183 lt!16184) (is-Found!183 lt!16184) (not (is-MissingVacant!183 lt!16184)) (not (= (index!2857 lt!16184) (index!2856 lt!15827))) (and (bvsge (index!2857 lt!16184) #b00000000000000000000000000000000) (bvslt (index!2857 lt!16184) (size!1378 lt!15494)))) (or (is-Undefined!183 lt!16184) (ite (is-Found!183 lt!16184) (= (select (arr!1241 lt!15494) (index!2855 lt!16184)) (select (arr!1241 lt!15494) #b00000000000000000000000000000000)) (and (is-MissingVacant!183 lt!16184) (= (index!2857 lt!16184) (index!2856 lt!15827)) (= (select (arr!1241 lt!15494) (index!2857 lt!16184)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!7447 (= lt!16184 e!26218)))

(declare-fun c!5204 () Bool)

(assert (=> d!7447 (= c!5204 (bvsge (x!7730 lt!15827) #b01111111111111111111111111111110))))

(assert (=> d!7447 (= lt!16183 (select (arr!1241 lt!15494) (index!2856 lt!15827)))))

(assert (=> d!7447 (validMask!0 mask!853)))

(assert (=> d!7447 (= (seekKeyOrZeroReturnVacant!0 (x!7730 lt!15827) (index!2856 lt!15827) (index!2856 lt!15827) (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15494 mask!853) lt!16184)))

(declare-fun b!41364 () Bool)

(assert (=> b!41364 (= e!26218 e!26219)))

(declare-fun c!5205 () Bool)

(assert (=> b!41364 (= c!5205 (= lt!16183 (select (arr!1241 lt!15494) #b00000000000000000000000000000000)))))

(declare-fun b!41365 () Bool)

(assert (=> b!41365 (= e!26219 (Found!183 (index!2856 lt!15827)))))

(declare-fun b!41366 () Bool)

(assert (=> b!41366 (= e!26220 (MissingVacant!183 (index!2856 lt!15827)))))

(assert (= (and d!7447 c!5204) b!41362))

(assert (= (and d!7447 (not c!5204)) b!41364))

(assert (= (and b!41364 c!5205) b!41365))

(assert (= (and b!41364 (not c!5205)) b!41361))

(assert (= (and b!41361 c!5206) b!41366))

(assert (= (and b!41361 (not c!5206)) b!41363))

(declare-fun m!34545 () Bool)

(assert (=> b!41363 m!34545))

(assert (=> b!41363 m!34545))

(assert (=> b!41363 m!33331))

(declare-fun m!34547 () Bool)

(assert (=> b!41363 m!34547))

(declare-fun m!34549 () Bool)

(assert (=> d!7447 m!34549))

(declare-fun m!34551 () Bool)

(assert (=> d!7447 m!34551))

(assert (=> d!7447 m!33751))

(assert (=> d!7447 m!33283))

(assert (=> b!40838 d!7447))

(assert (=> bm!3172 d!7265))

(declare-fun d!7449 () Bool)

(declare-fun e!26221 () Bool)

(assert (=> d!7449 e!26221))

(declare-fun res!24535 () Bool)

(assert (=> d!7449 (=> (not res!24535) (not e!26221))))

(declare-fun lt!16186 () ListLongMap!1073)

(assert (=> d!7449 (= res!24535 (contains!516 lt!16186 (_1!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))))))

(declare-fun lt!16185 () List!1072)

(assert (=> d!7449 (= lt!16186 (ListLongMap!1074 lt!16185))))

(declare-fun lt!16188 () Unit!984)

(declare-fun lt!16187 () Unit!984)

(assert (=> d!7449 (= lt!16188 lt!16187)))

(assert (=> d!7449 (= (getValueByKey!102 lt!16185 (_1!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))) (Some!107 (_2!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))))))

(assert (=> d!7449 (= lt!16187 (lemmaContainsTupThenGetReturnValue!27 lt!16185 (_1!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))) (_2!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))))))

(assert (=> d!7449 (= lt!16185 (insertStrictlySorted!24 (toList!552 (ite c!5000 call!3176 (ite c!5003 call!3177 call!3175))) (_1!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))) (_2!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))))))

(assert (=> d!7449 (= (+!64 (ite c!5000 call!3176 (ite c!5003 call!3177 call!3175)) (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))) lt!16186)))

(declare-fun b!41367 () Bool)

(declare-fun res!24536 () Bool)

(assert (=> b!41367 (=> (not res!24536) (not e!26221))))

(assert (=> b!41367 (= res!24536 (= (getValueByKey!102 (toList!552 lt!16186) (_1!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499))))) (Some!107 (_2!756 (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))))))))

(declare-fun b!41368 () Bool)

(assert (=> b!41368 (= e!26221 (contains!520 (toList!552 lt!16186) (ite (or c!5000 c!5003) (tuple2!1493 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1723 lt!15499)) (tuple2!1493 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1723 lt!15499)))))))

(assert (= (and d!7449 res!24535) b!41367))

(assert (= (and b!41367 res!24536) b!41368))

(declare-fun m!34553 () Bool)

(assert (=> d!7449 m!34553))

(declare-fun m!34555 () Bool)

(assert (=> d!7449 m!34555))

(declare-fun m!34557 () Bool)

(assert (=> d!7449 m!34557))

(declare-fun m!34559 () Bool)

(assert (=> d!7449 m!34559))

(declare-fun m!34561 () Bool)

(assert (=> b!41367 m!34561))

(declare-fun m!34563 () Bool)

(assert (=> b!41368 m!34563))

(assert (=> bm!3169 d!7449))

(declare-fun d!7451 () Bool)

(assert (=> d!7451 (arrayContainsKey!0 lt!15494 lt!15775 #b00000000000000000000000000000000)))

(declare-fun lt!16189 () Unit!984)

(assert (=> d!7451 (= lt!16189 (choose!13 lt!15494 lt!15775 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!7451 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!7451 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15494 lt!15775 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!16189)))

(declare-fun bs!1755 () Bool)

(assert (= bs!1755 d!7451))

(assert (=> bs!1755 m!33635))

(declare-fun m!34565 () Bool)

(assert (=> bs!1755 m!34565))

(assert (=> b!40752 d!7451))

(declare-fun d!7453 () Bool)

(declare-fun res!24537 () Bool)

(declare-fun e!26222 () Bool)

(assert (=> d!7453 (=> res!24537 e!26222)))

(assert (=> d!7453 (= res!24537 (= (select (arr!1241 lt!15494) #b00000000000000000000000000000000) lt!15775))))

(assert (=> d!7453 (= (arrayContainsKey!0 lt!15494 lt!15775 #b00000000000000000000000000000000) e!26222)))

(declare-fun b!41369 () Bool)

(declare-fun e!26223 () Bool)

(assert 