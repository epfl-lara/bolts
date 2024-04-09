; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5700 () Bool)

(assert start!5700)

(declare-fun b_free!1365 () Bool)

(declare-fun b_next!1365 () Bool)

(assert (=> start!5700 (= b_free!1365 (not b_next!1365))))

(declare-fun tp!5735 () Bool)

(declare-fun b_and!2371 () Bool)

(assert (=> start!5700 (= tp!5735 b_and!2371)))

(declare-fun res!24058 () Bool)

(declare-fun e!25566 () Bool)

(assert (=> start!5700 (=> (not res!24058) (not e!25566))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5700 (= res!24058 (validMask!0 mask!853))))

(assert (=> start!5700 e!25566))

(assert (=> start!5700 true))

(assert (=> start!5700 tp!5735))

(declare-fun b!40296 () Bool)

(declare-fun e!25565 () Bool)

(assert (=> b!40296 (= e!25566 (not e!25565))))

(declare-fun res!24056 () Bool)

(assert (=> b!40296 (=> res!24056 e!25565)))

(declare-datatypes ((V!2099 0))(
  ( (V!2100 (val!916 Int)) )
))
(declare-datatypes ((tuple2!1490 0))(
  ( (tuple2!1491 (_1!755 (_ BitVec 64)) (_2!755 V!2099)) )
))
(declare-datatypes ((List!1070 0))(
  ( (Nil!1067) (Cons!1066 (h!1640 tuple2!1490) (t!3933 List!1070)) )
))
(declare-datatypes ((ListLongMap!1071 0))(
  ( (ListLongMap!1072 (toList!551 List!1070)) )
))
(declare-fun lt!15478 () ListLongMap!1071)

(assert (=> b!40296 (= res!24056 (= lt!15478 (ListLongMap!1072 Nil!1067)))))

(declare-datatypes ((array!2591 0))(
  ( (array!2592 (arr!1239 (Array (_ BitVec 32) (_ BitVec 64))) (size!1376 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!630 0))(
  ( (ValueCellFull!630 (v!1993 V!2099)) (EmptyCell!630) )
))
(declare-datatypes ((array!2593 0))(
  ( (array!2594 (arr!1240 (Array (_ BitVec 32) ValueCell!630)) (size!1377 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!240 0))(
  ( (LongMapFixedSize!241 (defaultEntry!1804 Int) (mask!5177 (_ BitVec 32)) (extraKeys!1695 (_ BitVec 32)) (zeroValue!1722 V!2099) (minValue!1722 V!2099) (_size!169 (_ BitVec 32)) (_keys!3293 array!2591) (_values!1787 array!2593) (_vacant!169 (_ BitVec 32))) )
))
(declare-fun lt!15472 () LongMapFixedSize!240)

(declare-fun map!693 (LongMapFixedSize!240) ListLongMap!1071)

(assert (=> b!40296 (= lt!15478 (map!693 lt!15472))))

(declare-fun lt!15477 () array!2591)

(declare-datatypes ((List!1071 0))(
  ( (Nil!1068) (Cons!1067 (h!1641 (_ BitVec 64)) (t!3934 List!1071)) )
))
(declare-fun arrayNoDuplicates!0 (array!2591 (_ BitVec 32) List!1071) Bool)

(assert (=> b!40296 (arrayNoDuplicates!0 lt!15477 #b00000000000000000000000000000000 Nil!1068)))

(declare-datatypes ((Unit!982 0))(
  ( (Unit!983) )
))
(declare-fun lt!15474 () Unit!982)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2591 (_ BitVec 32) (_ BitVec 32) List!1071) Unit!982)

(assert (=> b!40296 (= lt!15474 (lemmaArrayNoDuplicatesInAll0Array!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2591 (_ BitVec 32)) Bool)

(assert (=> b!40296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15477 mask!853)))

(declare-fun lt!15475 () Unit!982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2591 (_ BitVec 32) (_ BitVec 32)) Unit!982)

(assert (=> b!40296 (= lt!15475 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!15477 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2591 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!40296 (= (arrayCountValidKeys!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!15473 () Unit!982)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2591 (_ BitVec 32) (_ BitVec 32)) Unit!982)

(assert (=> b!40296 (= lt!15473 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun lt!15476 () V!2099)

(declare-fun defaultEntry!470 () Int)

(assert (=> b!40296 (= lt!15472 (LongMapFixedSize!241 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!15476 lt!15476 #b00000000000000000000000000000000 lt!15477 (array!2594 ((as const (Array (_ BitVec 32) ValueCell!630)) EmptyCell!630) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))

(assert (=> b!40296 (= lt!15477 (array!2592 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!191 (Int (_ BitVec 64)) V!2099)

(assert (=> b!40296 (= lt!15476 (dynLambda!191 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40297 () Bool)

(declare-fun res!24057 () Bool)

(assert (=> b!40297 (=> res!24057 e!25565)))

(declare-fun isEmpty!233 (List!1070) Bool)

(assert (=> b!40297 (= res!24057 (isEmpty!233 (toList!551 lt!15478)))))

(declare-fun b!40298 () Bool)

(declare-fun valid!123 (LongMapFixedSize!240) Bool)

(assert (=> b!40298 (= e!25565 (valid!123 lt!15472))))

(assert (= (and start!5700 res!24058) b!40296))

(assert (= (and b!40296 (not res!24056)) b!40297))

(assert (= (and b!40297 (not res!24057)) b!40298))

(declare-fun b_lambda!2079 () Bool)

(assert (=> (not b_lambda!2079) (not b!40296)))

(declare-fun t!3932 () Bool)

(declare-fun tb!849 () Bool)

(assert (=> (and start!5700 (= defaultEntry!470 defaultEntry!470) t!3932) tb!849))

(declare-fun result!1447 () Bool)

(declare-fun tp_is_empty!1755 () Bool)

(assert (=> tb!849 (= result!1447 tp_is_empty!1755)))

(assert (=> b!40296 t!3932))

(declare-fun b_and!2373 () Bool)

(assert (= b_and!2371 (and (=> t!3932 result!1447) b_and!2373)))

(declare-fun m!33261 () Bool)

(assert (=> start!5700 m!33261))

(declare-fun m!33263 () Bool)

(assert (=> b!40296 m!33263))

(declare-fun m!33265 () Bool)

(assert (=> b!40296 m!33265))

(declare-fun m!33267 () Bool)

(assert (=> b!40296 m!33267))

(declare-fun m!33269 () Bool)

(assert (=> b!40296 m!33269))

(declare-fun m!33271 () Bool)

(assert (=> b!40296 m!33271))

(declare-fun m!33273 () Bool)

(assert (=> b!40296 m!33273))

(declare-fun m!33275 () Bool)

(assert (=> b!40296 m!33275))

(declare-fun m!33277 () Bool)

(assert (=> b!40296 m!33277))

(declare-fun m!33279 () Bool)

(assert (=> b!40297 m!33279))

(declare-fun m!33281 () Bool)

(assert (=> b!40298 m!33281))

(check-sat (not start!5700) (not b!40298) (not b!40297) (not b_lambda!2079) b_and!2373 (not b!40296) tp_is_empty!1755 (not b_next!1365))
(check-sat b_and!2373 (not b_next!1365))
(get-model)

(declare-fun b_lambda!2087 () Bool)

(assert (= b_lambda!2079 (or (and start!5700 b_free!1365) b_lambda!2087)))

(check-sat (not start!5700) (not b!40298) (not b!40297) b_and!2373 (not b!40296) (not b_lambda!2087) tp_is_empty!1755 (not b_next!1365))
(check-sat b_and!2373 (not b_next!1365))
(get-model)

(declare-fun b!40331 () Bool)

(declare-fun e!25584 () Bool)

(declare-fun e!25585 () Bool)

(assert (=> b!40331 (= e!25584 e!25585)))

(declare-fun c!4912 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!40331 (= c!4912 (validKeyInArray!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun b!40332 () Bool)

(declare-fun call!3101 () Bool)

(assert (=> b!40332 (= e!25585 call!3101)))

(declare-fun bm!3098 () Bool)

(assert (=> bm!3098 (= call!3101 (arrayNoDuplicates!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)))))

(declare-fun b!40333 () Bool)

(assert (=> b!40333 (= e!25585 call!3101)))

(declare-fun d!7007 () Bool)

(declare-fun res!24084 () Bool)

(declare-fun e!25587 () Bool)

(assert (=> d!7007 (=> res!24084 e!25587)))

(assert (=> d!7007 (= res!24084 (bvsge #b00000000000000000000000000000000 (size!1376 lt!15477)))))

(assert (=> d!7007 (= (arrayNoDuplicates!0 lt!15477 #b00000000000000000000000000000000 Nil!1068) e!25587)))

(declare-fun b!40334 () Bool)

(declare-fun e!25586 () Bool)

(declare-fun contains!513 (List!1071 (_ BitVec 64)) Bool)

(assert (=> b!40334 (= e!25586 (contains!513 Nil!1068 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun b!40335 () Bool)

(assert (=> b!40335 (= e!25587 e!25584)))

(declare-fun res!24085 () Bool)

(assert (=> b!40335 (=> (not res!24085) (not e!25584))))

(assert (=> b!40335 (= res!24085 (not e!25586))))

(declare-fun res!24083 () Bool)

(assert (=> b!40335 (=> (not res!24083) (not e!25586))))

(assert (=> b!40335 (= res!24083 (validKeyInArray!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(assert (= (and d!7007 (not res!24084)) b!40335))

(assert (= (and b!40335 res!24083) b!40334))

(assert (= (and b!40335 res!24085) b!40331))

(assert (= (and b!40331 c!4912) b!40333))

(assert (= (and b!40331 (not c!4912)) b!40332))

(assert (= (or b!40333 b!40332) bm!3098))

(declare-fun m!33313 () Bool)

(assert (=> b!40331 m!33313))

(assert (=> b!40331 m!33313))

(declare-fun m!33315 () Bool)

(assert (=> b!40331 m!33315))

(assert (=> bm!3098 m!33313))

(declare-fun m!33317 () Bool)

(assert (=> bm!3098 m!33317))

(assert (=> b!40334 m!33313))

(assert (=> b!40334 m!33313))

(declare-fun m!33319 () Bool)

(assert (=> b!40334 m!33319))

(assert (=> b!40335 m!33313))

(assert (=> b!40335 m!33313))

(assert (=> b!40335 m!33315))

(assert (=> b!40296 d!7007))

(declare-fun d!7013 () Bool)

(assert (=> d!7013 (= (arrayCountValidKeys!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!15502 () Unit!982)

(declare-fun choose!59 (array!2591 (_ BitVec 32) (_ BitVec 32)) Unit!982)

(assert (=> d!7013 (= lt!15502 (choose!59 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7013 (bvslt (size!1376 lt!15477) #b01111111111111111111111111111111)))

(assert (=> d!7013 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!15502)))

(declare-fun bs!1693 () Bool)

(assert (= bs!1693 d!7013))

(assert (=> bs!1693 m!33269))

(declare-fun m!33321 () Bool)

(assert (=> bs!1693 m!33321))

(assert (=> b!40296 d!7013))

(declare-fun d!7015 () Bool)

(declare-fun getCurrentListMap!311 (array!2591 array!2593 (_ BitVec 32) (_ BitVec 32) V!2099 V!2099 (_ BitVec 32) Int) ListLongMap!1071)

(assert (=> d!7015 (= (map!693 lt!15472) (getCurrentListMap!311 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)))))

(declare-fun bs!1695 () Bool)

(assert (= bs!1695 d!7015))

(declare-fun m!33339 () Bool)

(assert (=> bs!1695 m!33339))

(assert (=> b!40296 d!7015))

(declare-fun d!7023 () Bool)

(assert (=> d!7023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15477 mask!853)))

(declare-fun lt!15517 () Unit!982)

(declare-fun choose!34 (array!2591 (_ BitVec 32) (_ BitVec 32)) Unit!982)

(assert (=> d!7023 (= lt!15517 (choose!34 lt!15477 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7023 (validMask!0 mask!853)))

(assert (=> d!7023 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!15477 mask!853 #b00000000000000000000000000000000) lt!15517)))

(declare-fun bs!1696 () Bool)

(assert (= bs!1696 d!7023))

(assert (=> bs!1696 m!33265))

(declare-fun m!33341 () Bool)

(assert (=> bs!1696 m!33341))

(assert (=> bs!1696 m!33261))

(assert (=> b!40296 d!7023))

(declare-fun d!7025 () Bool)

(assert (=> d!7025 (arrayNoDuplicates!0 lt!15477 #b00000000000000000000000000000000 Nil!1068)))

(declare-fun lt!15523 () Unit!982)

(declare-fun choose!111 (array!2591 (_ BitVec 32) (_ BitVec 32) List!1071) Unit!982)

(assert (=> d!7025 (= lt!15523 (choose!111 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1068))))

(assert (=> d!7025 (= (size!1376 lt!15477) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7025 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1068) lt!15523)))

(declare-fun bs!1697 () Bool)

(assert (= bs!1697 d!7025))

(assert (=> bs!1697 m!33277))

(declare-fun m!33359 () Bool)

(assert (=> bs!1697 m!33359))

(assert (=> b!40296 d!7025))

(declare-fun b!40419 () Bool)

(declare-fun e!25640 () (_ BitVec 32))

(declare-fun e!25641 () (_ BitVec 32))

(assert (=> b!40419 (= e!25640 e!25641)))

(declare-fun c!4939 () Bool)

(assert (=> b!40419 (= c!4939 (validKeyInArray!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun d!7031 () Bool)

(declare-fun lt!15529 () (_ BitVec 32))

(assert (=> d!7031 (and (bvsge lt!15529 #b00000000000000000000000000000000) (bvsle lt!15529 (bvsub (size!1376 lt!15477) #b00000000000000000000000000000000)))))

(assert (=> d!7031 (= lt!15529 e!25640)))

(declare-fun c!4938 () Bool)

(assert (=> d!7031 (= c!4938 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7031 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1376 lt!15477)))))

(assert (=> d!7031 (= (arrayCountValidKeys!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!15529)))

(declare-fun bm!3116 () Bool)

(declare-fun call!3119 () (_ BitVec 32))

(assert (=> bm!3116 (= call!3119 (arrayCountValidKeys!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!40420 () Bool)

(assert (=> b!40420 (= e!25641 (bvadd #b00000000000000000000000000000001 call!3119))))

(declare-fun b!40421 () Bool)

(assert (=> b!40421 (= e!25641 call!3119)))

(declare-fun b!40422 () Bool)

(assert (=> b!40422 (= e!25640 #b00000000000000000000000000000000)))

(assert (= (and d!7031 c!4938) b!40422))

(assert (= (and d!7031 (not c!4938)) b!40419))

(assert (= (and b!40419 c!4939) b!40420))

(assert (= (and b!40419 (not c!4939)) b!40421))

(assert (= (or b!40420 b!40421) bm!3116))

(assert (=> b!40419 m!33313))

(assert (=> b!40419 m!33313))

(assert (=> b!40419 m!33315))

(declare-fun m!33367 () Bool)

(assert (=> bm!3116 m!33367))

(assert (=> b!40296 d!7031))

(declare-fun b!40431 () Bool)

(declare-fun e!25649 () Bool)

(declare-fun call!3122 () Bool)

(assert (=> b!40431 (= e!25649 call!3122)))

(declare-fun bm!3119 () Bool)

(assert (=> bm!3119 (= call!3122 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!15477 mask!853))))

(declare-fun b!40432 () Bool)

(declare-fun e!25650 () Bool)

(assert (=> b!40432 (= e!25650 e!25649)))

(declare-fun lt!15550 () (_ BitVec 64))

(assert (=> b!40432 (= lt!15550 (select (arr!1239 lt!15477) #b00000000000000000000000000000000))))

(declare-fun lt!15548 () Unit!982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2591 (_ BitVec 64) (_ BitVec 32)) Unit!982)

(assert (=> b!40432 (= lt!15548 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15477 lt!15550 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!40432 (arrayContainsKey!0 lt!15477 lt!15550 #b00000000000000000000000000000000)))

(declare-fun lt!15549 () Unit!982)

(assert (=> b!40432 (= lt!15549 lt!15548)))

(declare-fun res!24123 () Bool)

(declare-datatypes ((SeekEntryResult!184 0))(
  ( (MissingZero!184 (index!2858 (_ BitVec 32))) (Found!184 (index!2859 (_ BitVec 32))) (Intermediate!184 (undefined!996 Bool) (index!2860 (_ BitVec 32)) (x!7731 (_ BitVec 32))) (Undefined!184) (MissingVacant!184 (index!2861 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2591 (_ BitVec 32)) SeekEntryResult!184)

(assert (=> b!40432 (= res!24123 (= (seekEntryOrOpen!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853) (Found!184 #b00000000000000000000000000000000)))))

(assert (=> b!40432 (=> (not res!24123) (not e!25649))))

(declare-fun d!7037 () Bool)

(declare-fun res!24124 () Bool)

(declare-fun e!25648 () Bool)

(assert (=> d!7037 (=> res!24124 e!25648)))

(assert (=> d!7037 (= res!24124 (bvsge #b00000000000000000000000000000000 (size!1376 lt!15477)))))

(assert (=> d!7037 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15477 mask!853) e!25648)))

(declare-fun b!40433 () Bool)

(assert (=> b!40433 (= e!25650 call!3122)))

(declare-fun b!40434 () Bool)

(assert (=> b!40434 (= e!25648 e!25650)))

(declare-fun c!4942 () Bool)

(assert (=> b!40434 (= c!4942 (validKeyInArray!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(assert (= (and d!7037 (not res!24124)) b!40434))

(assert (= (and b!40434 c!4942) b!40432))

(assert (= (and b!40434 (not c!4942)) b!40433))

(assert (= (and b!40432 res!24123) b!40431))

(assert (= (or b!40431 b!40433) bm!3119))

(declare-fun m!33379 () Bool)

(assert (=> bm!3119 m!33379))

(assert (=> b!40432 m!33313))

(declare-fun m!33381 () Bool)

(assert (=> b!40432 m!33381))

(declare-fun m!33383 () Bool)

(assert (=> b!40432 m!33383))

(assert (=> b!40432 m!33313))

(declare-fun m!33385 () Bool)

(assert (=> b!40432 m!33385))

(assert (=> b!40434 m!33313))

(assert (=> b!40434 m!33313))

(assert (=> b!40434 m!33315))

(assert (=> b!40296 d!7037))

(declare-fun d!7049 () Bool)

(declare-fun res!24131 () Bool)

(declare-fun e!25653 () Bool)

(assert (=> d!7049 (=> (not res!24131) (not e!25653))))

(declare-fun simpleValid!28 (LongMapFixedSize!240) Bool)

(assert (=> d!7049 (= res!24131 (simpleValid!28 lt!15472))))

(assert (=> d!7049 (= (valid!123 lt!15472) e!25653)))

(declare-fun b!40441 () Bool)

(declare-fun res!24132 () Bool)

(assert (=> b!40441 (=> (not res!24132) (not e!25653))))

(assert (=> b!40441 (= res!24132 (= (arrayCountValidKeys!0 (_keys!3293 lt!15472) #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))) (_size!169 lt!15472)))))

(declare-fun b!40442 () Bool)

(declare-fun res!24133 () Bool)

(assert (=> b!40442 (=> (not res!24133) (not e!25653))))

(assert (=> b!40442 (= res!24133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3293 lt!15472) (mask!5177 lt!15472)))))

(declare-fun b!40443 () Bool)

(assert (=> b!40443 (= e!25653 (arrayNoDuplicates!0 (_keys!3293 lt!15472) #b00000000000000000000000000000000 Nil!1068))))

(assert (= (and d!7049 res!24131) b!40441))

(assert (= (and b!40441 res!24132) b!40442))

(assert (= (and b!40442 res!24133) b!40443))

(declare-fun m!33389 () Bool)

(assert (=> d!7049 m!33389))

(declare-fun m!33391 () Bool)

(assert (=> b!40441 m!33391))

(declare-fun m!33393 () Bool)

(assert (=> b!40442 m!33393))

(declare-fun m!33395 () Bool)

(assert (=> b!40443 m!33395))

(assert (=> b!40298 d!7049))

(declare-fun d!7053 () Bool)

(get-info :version)

(assert (=> d!7053 (= (isEmpty!233 (toList!551 lt!15478)) ((_ is Nil!1067) (toList!551 lt!15478)))))

(assert (=> b!40297 d!7053))

(declare-fun d!7057 () Bool)

(assert (=> d!7057 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5700 d!7057))

(check-sat (not b!40335) (not bm!3119) (not bm!3116) (not b!40419) (not d!7025) (not b!40443) (not d!7023) (not d!7049) b_and!2373 (not d!7015) (not b!40432) (not b_lambda!2087) (not b!40434) (not b!40334) (not b!40331) (not b!40442) (not bm!3098) (not b!40441) (not d!7013) tp_is_empty!1755 (not b_next!1365))
(check-sat b_and!2373 (not b_next!1365))
(get-model)

(declare-fun d!7061 () Bool)

(declare-fun lt!15565 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!31 (List!1071) (InoxSet (_ BitVec 64)))

(assert (=> d!7061 (= lt!15565 (select (content!31 Nil!1068) (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun e!25667 () Bool)

(assert (=> d!7061 (= lt!15565 e!25667)))

(declare-fun res!24145 () Bool)

(assert (=> d!7061 (=> (not res!24145) (not e!25667))))

(assert (=> d!7061 (= res!24145 ((_ is Cons!1067) Nil!1068))))

(assert (=> d!7061 (= (contains!513 Nil!1068 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)) lt!15565)))

(declare-fun b!40460 () Bool)

(declare-fun e!25668 () Bool)

(assert (=> b!40460 (= e!25667 e!25668)))

(declare-fun res!24144 () Bool)

(assert (=> b!40460 (=> res!24144 e!25668)))

(assert (=> b!40460 (= res!24144 (= (h!1641 Nil!1068) (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun b!40461 () Bool)

(assert (=> b!40461 (= e!25668 (contains!513 (t!3934 Nil!1068) (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(assert (= (and d!7061 res!24145) b!40460))

(assert (= (and b!40460 (not res!24144)) b!40461))

(declare-fun m!33407 () Bool)

(assert (=> d!7061 m!33407))

(assert (=> d!7061 m!33313))

(declare-fun m!33409 () Bool)

(assert (=> d!7061 m!33409))

(assert (=> b!40461 m!33313))

(declare-fun m!33411 () Bool)

(assert (=> b!40461 m!33411))

(assert (=> b!40334 d!7061))

(declare-fun d!7063 () Bool)

(declare-fun res!24158 () Bool)

(declare-fun e!25674 () Bool)

(assert (=> d!7063 (=> (not res!24158) (not e!25674))))

(assert (=> d!7063 (= res!24158 (validMask!0 (mask!5177 lt!15472)))))

(assert (=> d!7063 (= (simpleValid!28 lt!15472) e!25674)))

(declare-fun b!40475 () Bool)

(declare-fun res!24159 () Bool)

(assert (=> b!40475 (=> (not res!24159) (not e!25674))))

(declare-fun size!1391 (LongMapFixedSize!240) (_ BitVec 32))

(assert (=> b!40475 (= res!24159 (bvsge (size!1391 lt!15472) (_size!169 lt!15472)))))

(declare-fun b!40477 () Bool)

(assert (=> b!40477 (= e!25674 (and (bvsge (extraKeys!1695 lt!15472) #b00000000000000000000000000000000) (bvsle (extraKeys!1695 lt!15472) #b00000000000000000000000000000011) (bvsge (_vacant!169 lt!15472) #b00000000000000000000000000000000)))))

(declare-fun b!40474 () Bool)

(declare-fun res!24156 () Bool)

(assert (=> b!40474 (=> (not res!24156) (not e!25674))))

(assert (=> b!40474 (= res!24156 (and (= (size!1377 (_values!1787 lt!15472)) (bvadd (mask!5177 lt!15472) #b00000000000000000000000000000001)) (= (size!1376 (_keys!3293 lt!15472)) (size!1377 (_values!1787 lt!15472))) (bvsge (_size!169 lt!15472) #b00000000000000000000000000000000) (bvsle (_size!169 lt!15472) (bvadd (mask!5177 lt!15472) #b00000000000000000000000000000001))))))

(declare-fun b!40476 () Bool)

(declare-fun res!24157 () Bool)

(assert (=> b!40476 (=> (not res!24157) (not e!25674))))

(assert (=> b!40476 (= res!24157 (= (size!1391 lt!15472) (bvadd (_size!169 lt!15472) (bvsdiv (bvadd (extraKeys!1695 lt!15472) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!7063 res!24158) b!40474))

(assert (= (and b!40474 res!24156) b!40475))

(assert (= (and b!40475 res!24159) b!40476))

(assert (= (and b!40476 res!24157) b!40477))

(declare-fun m!33425 () Bool)

(assert (=> d!7063 m!33425))

(declare-fun m!33427 () Bool)

(assert (=> b!40475 m!33427))

(assert (=> b!40476 m!33427))

(assert (=> d!7049 d!7063))

(assert (=> d!7013 d!7031))

(declare-fun d!7069 () Bool)

(assert (=> d!7069 (= (arrayCountValidKeys!0 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!7069 true))

(declare-fun _$88!40 () Unit!982)

(assert (=> d!7069 (= (choose!59 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!40)))

(declare-fun bs!1706 () Bool)

(assert (= bs!1706 d!7069))

(assert (=> bs!1706 m!33269))

(assert (=> d!7013 d!7069))

(declare-fun d!7073 () Bool)

(assert (=> d!7073 (= (validKeyInArray!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)) (and (not (= (select (arr!1239 lt!15477) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1239 lt!15477) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40335 d!7073))

(declare-fun b!40483 () Bool)

(declare-fun e!25680 () Bool)

(declare-fun call!3128 () Bool)

(assert (=> b!40483 (= e!25680 call!3128)))

(declare-fun bm!3125 () Bool)

(assert (=> bm!3125 (= call!3128 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3293 lt!15472) (mask!5177 lt!15472)))))

(declare-fun b!40484 () Bool)

(declare-fun e!25681 () Bool)

(assert (=> b!40484 (= e!25681 e!25680)))

(declare-fun lt!15571 () (_ BitVec 64))

(assert (=> b!40484 (= lt!15571 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))

(declare-fun lt!15569 () Unit!982)

(assert (=> b!40484 (= lt!15569 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3293 lt!15472) lt!15571 #b00000000000000000000000000000000))))

(assert (=> b!40484 (arrayContainsKey!0 (_keys!3293 lt!15472) lt!15571 #b00000000000000000000000000000000)))

(declare-fun lt!15570 () Unit!982)

(assert (=> b!40484 (= lt!15570 lt!15569)))

(declare-fun res!24163 () Bool)

(assert (=> b!40484 (= res!24163 (= (seekEntryOrOpen!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) (_keys!3293 lt!15472) (mask!5177 lt!15472)) (Found!184 #b00000000000000000000000000000000)))))

(assert (=> b!40484 (=> (not res!24163) (not e!25680))))

(declare-fun d!7077 () Bool)

(declare-fun res!24164 () Bool)

(declare-fun e!25679 () Bool)

(assert (=> d!7077 (=> res!24164 e!25679)))

(assert (=> d!7077 (= res!24164 (bvsge #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7077 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3293 lt!15472) (mask!5177 lt!15472)) e!25679)))

(declare-fun b!40485 () Bool)

(assert (=> b!40485 (= e!25681 call!3128)))

(declare-fun b!40486 () Bool)

(assert (=> b!40486 (= e!25679 e!25681)))

(declare-fun c!4948 () Bool)

(assert (=> b!40486 (= c!4948 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (= (and d!7077 (not res!24164)) b!40486))

(assert (= (and b!40486 c!4948) b!40484))

(assert (= (and b!40486 (not c!4948)) b!40485))

(assert (= (and b!40484 res!24163) b!40483))

(assert (= (or b!40483 b!40485) bm!3125))

(declare-fun m!33431 () Bool)

(assert (=> bm!3125 m!33431))

(declare-fun m!33435 () Bool)

(assert (=> b!40484 m!33435))

(declare-fun m!33437 () Bool)

(assert (=> b!40484 m!33437))

(declare-fun m!33439 () Bool)

(assert (=> b!40484 m!33439))

(assert (=> b!40484 m!33435))

(declare-fun m!33443 () Bool)

(assert (=> b!40484 m!33443))

(assert (=> b!40486 m!33435))

(assert (=> b!40486 m!33435))

(declare-fun m!33445 () Bool)

(assert (=> b!40486 m!33445))

(assert (=> b!40442 d!7077))

(declare-fun b!40487 () Bool)

(declare-fun e!25682 () Bool)

(declare-fun e!25683 () Bool)

(assert (=> b!40487 (= e!25682 e!25683)))

(declare-fun c!4949 () Bool)

(assert (=> b!40487 (= c!4949 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun b!40488 () Bool)

(declare-fun call!3129 () Bool)

(assert (=> b!40488 (= e!25683 call!3129)))

(declare-fun bm!3126 () Bool)

(assert (=> bm!3126 (= call!3129 (arrayNoDuplicates!0 (_keys!3293 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4949 (Cons!1067 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) Nil!1068) Nil!1068)))))

(declare-fun b!40489 () Bool)

(assert (=> b!40489 (= e!25683 call!3129)))

(declare-fun d!7079 () Bool)

(declare-fun res!24166 () Bool)

(declare-fun e!25685 () Bool)

(assert (=> d!7079 (=> res!24166 e!25685)))

(assert (=> d!7079 (= res!24166 (bvsge #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7079 (= (arrayNoDuplicates!0 (_keys!3293 lt!15472) #b00000000000000000000000000000000 Nil!1068) e!25685)))

(declare-fun b!40490 () Bool)

(declare-fun e!25684 () Bool)

(assert (=> b!40490 (= e!25684 (contains!513 Nil!1068 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun b!40491 () Bool)

(assert (=> b!40491 (= e!25685 e!25682)))

(declare-fun res!24167 () Bool)

(assert (=> b!40491 (=> (not res!24167) (not e!25682))))

(assert (=> b!40491 (= res!24167 (not e!25684))))

(declare-fun res!24165 () Bool)

(assert (=> b!40491 (=> (not res!24165) (not e!25684))))

(assert (=> b!40491 (= res!24165 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (= (and d!7079 (not res!24166)) b!40491))

(assert (= (and b!40491 res!24165) b!40490))

(assert (= (and b!40491 res!24167) b!40487))

(assert (= (and b!40487 c!4949) b!40489))

(assert (= (and b!40487 (not c!4949)) b!40488))

(assert (= (or b!40489 b!40488) bm!3126))

(assert (=> b!40487 m!33435))

(assert (=> b!40487 m!33435))

(assert (=> b!40487 m!33445))

(assert (=> bm!3126 m!33435))

(declare-fun m!33449 () Bool)

(assert (=> bm!3126 m!33449))

(assert (=> b!40490 m!33435))

(assert (=> b!40490 m!33435))

(declare-fun m!33451 () Bool)

(assert (=> b!40490 m!33451))

(assert (=> b!40491 m!33435))

(assert (=> b!40491 m!33435))

(assert (=> b!40491 m!33445))

(assert (=> b!40443 d!7079))

(declare-fun b!40492 () Bool)

(declare-fun e!25686 () Bool)

(declare-fun e!25687 () Bool)

(assert (=> b!40492 (= e!25686 e!25687)))

(declare-fun c!4950 () Bool)

(assert (=> b!40492 (= c!4950 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40493 () Bool)

(declare-fun call!3130 () Bool)

(assert (=> b!40493 (= e!25687 call!3130)))

(declare-fun bm!3127 () Bool)

(assert (=> bm!3127 (= call!3130 (arrayNoDuplicates!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4950 (Cons!1067 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068))))))

(declare-fun b!40494 () Bool)

(assert (=> b!40494 (= e!25687 call!3130)))

(declare-fun d!7083 () Bool)

(declare-fun res!24172 () Bool)

(declare-fun e!25689 () Bool)

(assert (=> d!7083 (=> res!24172 e!25689)))

(assert (=> d!7083 (= res!24172 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 lt!15477)))))

(assert (=> d!7083 (= (arrayNoDuplicates!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) e!25689)))

(declare-fun b!40495 () Bool)

(declare-fun e!25688 () Bool)

(assert (=> b!40495 (= e!25688 (contains!513 (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40496 () Bool)

(assert (=> b!40496 (= e!25689 e!25686)))

(declare-fun res!24173 () Bool)

(assert (=> b!40496 (=> (not res!24173) (not e!25686))))

(assert (=> b!40496 (= res!24173 (not e!25688))))

(declare-fun res!24171 () Bool)

(assert (=> b!40496 (=> (not res!24171) (not e!25688))))

(assert (=> b!40496 (= res!24171 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!7083 (not res!24172)) b!40496))

(assert (= (and b!40496 res!24171) b!40495))

(assert (= (and b!40496 res!24173) b!40492))

(assert (= (and b!40492 c!4950) b!40494))

(assert (= (and b!40492 (not c!4950)) b!40493))

(assert (= (or b!40494 b!40493) bm!3127))

(declare-fun m!33453 () Bool)

(assert (=> b!40492 m!33453))

(assert (=> b!40492 m!33453))

(declare-fun m!33455 () Bool)

(assert (=> b!40492 m!33455))

(assert (=> bm!3127 m!33453))

(declare-fun m!33457 () Bool)

(assert (=> bm!3127 m!33457))

(assert (=> b!40495 m!33453))

(assert (=> b!40495 m!33453))

(declare-fun m!33459 () Bool)

(assert (=> b!40495 m!33459))

(assert (=> b!40496 m!33453))

(assert (=> b!40496 m!33453))

(assert (=> b!40496 m!33455))

(assert (=> bm!3098 d!7083))

(assert (=> d!7023 d!7037))

(declare-fun d!7087 () Bool)

(assert (=> d!7087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!15477 mask!853)))

(assert (=> d!7087 true))

(declare-fun _$30!51 () Unit!982)

(assert (=> d!7087 (= (choose!34 lt!15477 mask!853 #b00000000000000000000000000000000) _$30!51)))

(declare-fun bs!1708 () Bool)

(assert (= bs!1708 d!7087))

(assert (=> bs!1708 m!33265))

(assert (=> d!7023 d!7087))

(assert (=> d!7023 d!7057))

(assert (=> b!40419 d!7073))

(declare-fun b!40506 () Bool)

(declare-fun e!25696 () (_ BitVec 32))

(declare-fun e!25697 () (_ BitVec 32))

(assert (=> b!40506 (= e!25696 e!25697)))

(declare-fun c!4955 () Bool)

(assert (=> b!40506 (= c!4955 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!7093 () Bool)

(declare-fun lt!15573 () (_ BitVec 32))

(assert (=> d!7093 (and (bvsge lt!15573 #b00000000000000000000000000000000) (bvsle lt!15573 (bvsub (size!1376 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!7093 (= lt!15573 e!25696)))

(declare-fun c!4954 () Bool)

(assert (=> d!7093 (= c!4954 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7093 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1376 lt!15477)))))

(assert (=> d!7093 (= (arrayCountValidKeys!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15573)))

(declare-fun bm!3130 () Bool)

(declare-fun call!3133 () (_ BitVec 32))

(assert (=> bm!3130 (= call!3133 (arrayCountValidKeys!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!40507 () Bool)

(assert (=> b!40507 (= e!25697 (bvadd #b00000000000000000000000000000001 call!3133))))

(declare-fun b!40508 () Bool)

(assert (=> b!40508 (= e!25697 call!3133)))

(declare-fun b!40509 () Bool)

(assert (=> b!40509 (= e!25696 #b00000000000000000000000000000000)))

(assert (= (and d!7093 c!4954) b!40509))

(assert (= (and d!7093 (not c!4954)) b!40506))

(assert (= (and b!40506 c!4955) b!40507))

(assert (= (and b!40506 (not c!4955)) b!40508))

(assert (= (or b!40507 b!40508) bm!3130))

(assert (=> b!40506 m!33453))

(assert (=> b!40506 m!33453))

(assert (=> b!40506 m!33455))

(declare-fun m!33467 () Bool)

(assert (=> bm!3130 m!33467))

(assert (=> bm!3116 d!7093))

(assert (=> b!40434 d!7073))

(declare-fun b!40510 () Bool)

(declare-fun e!25698 () (_ BitVec 32))

(declare-fun e!25699 () (_ BitVec 32))

(assert (=> b!40510 (= e!25698 e!25699)))

(declare-fun c!4957 () Bool)

(assert (=> b!40510 (= c!4957 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun d!7095 () Bool)

(declare-fun lt!15574 () (_ BitVec 32))

(assert (=> d!7095 (and (bvsge lt!15574 #b00000000000000000000000000000000) (bvsle lt!15574 (bvsub (size!1376 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (=> d!7095 (= lt!15574 e!25698)))

(declare-fun c!4956 () Bool)

(assert (=> d!7095 (= c!4956 (bvsge #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7095 (and (bvsle #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1376 (_keys!3293 lt!15472)) (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7095 (= (arrayCountValidKeys!0 (_keys!3293 lt!15472) #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))) lt!15574)))

(declare-fun bm!3131 () Bool)

(declare-fun call!3134 () (_ BitVec 32))

(assert (=> bm!3131 (= call!3134 (arrayCountValidKeys!0 (_keys!3293 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))))))

(declare-fun b!40511 () Bool)

(assert (=> b!40511 (= e!25699 (bvadd #b00000000000000000000000000000001 call!3134))))

(declare-fun b!40512 () Bool)

(assert (=> b!40512 (= e!25699 call!3134)))

(declare-fun b!40513 () Bool)

(assert (=> b!40513 (= e!25698 #b00000000000000000000000000000000)))

(assert (= (and d!7095 c!4956) b!40513))

(assert (= (and d!7095 (not c!4956)) b!40510))

(assert (= (and b!40510 c!4957) b!40511))

(assert (= (and b!40510 (not c!4957)) b!40512))

(assert (= (or b!40511 b!40512) bm!3131))

(assert (=> b!40510 m!33435))

(assert (=> b!40510 m!33435))

(assert (=> b!40510 m!33445))

(declare-fun m!33469 () Bool)

(assert (=> bm!3131 m!33469))

(assert (=> b!40441 d!7095))

(assert (=> b!40331 d!7073))

(assert (=> d!7025 d!7007))

(declare-fun d!7097 () Bool)

(assert (=> d!7097 (arrayNoDuplicates!0 lt!15477 #b00000000000000000000000000000000 Nil!1068)))

(assert (=> d!7097 true))

(declare-fun res!24187 () Unit!982)

(assert (=> d!7097 (= (choose!111 lt!15477 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1068) res!24187)))

(declare-fun bs!1709 () Bool)

(assert (= bs!1709 d!7097))

(assert (=> bs!1709 m!33277))

(assert (=> d!7025 d!7097))

(declare-fun b!40526 () Bool)

(declare-fun e!25704 () Bool)

(declare-fun call!3135 () Bool)

(assert (=> b!40526 (= e!25704 call!3135)))

(declare-fun bm!3132 () Bool)

(assert (=> bm!3132 (= call!3135 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15477 mask!853))))

(declare-fun b!40527 () Bool)

(declare-fun e!25705 () Bool)

(assert (=> b!40527 (= e!25705 e!25704)))

(declare-fun lt!15577 () (_ BitVec 64))

(assert (=> b!40527 (= lt!15577 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15575 () Unit!982)

(assert (=> b!40527 (= lt!15575 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15477 lt!15577 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!40527 (arrayContainsKey!0 lt!15477 lt!15577 #b00000000000000000000000000000000)))

(declare-fun lt!15576 () Unit!982)

(assert (=> b!40527 (= lt!15576 lt!15575)))

(declare-fun res!24192 () Bool)

(assert (=> b!40527 (= res!24192 (= (seekEntryOrOpen!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15477 mask!853) (Found!184 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!40527 (=> (not res!24192) (not e!25704))))

(declare-fun d!7099 () Bool)

(declare-fun res!24193 () Bool)

(declare-fun e!25703 () Bool)

(assert (=> d!7099 (=> res!24193 e!25703)))

(assert (=> d!7099 (= res!24193 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 lt!15477)))))

(assert (=> d!7099 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!15477 mask!853) e!25703)))

(declare-fun b!40528 () Bool)

(assert (=> b!40528 (= e!25705 call!3135)))

(declare-fun b!40529 () Bool)

(assert (=> b!40529 (= e!25703 e!25705)))

(declare-fun c!4958 () Bool)

(assert (=> b!40529 (= c!4958 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!7099 (not res!24193)) b!40529))

(assert (= (and b!40529 c!4958) b!40527))

(assert (= (and b!40529 (not c!4958)) b!40528))

(assert (= (and b!40527 res!24192) b!40526))

(assert (= (or b!40526 b!40528) bm!3132))

(declare-fun m!33475 () Bool)

(assert (=> bm!3132 m!33475))

(assert (=> b!40527 m!33453))

(declare-fun m!33477 () Bool)

(assert (=> b!40527 m!33477))

(declare-fun m!33479 () Bool)

(assert (=> b!40527 m!33479))

(assert (=> b!40527 m!33453))

(declare-fun m!33481 () Bool)

(assert (=> b!40527 m!33481))

(assert (=> b!40529 m!33453))

(assert (=> b!40529 m!33453))

(assert (=> b!40529 m!33455))

(assert (=> bm!3119 d!7099))

(declare-fun bm!3162 () Bool)

(declare-fun call!3165 () Bool)

(declare-fun lt!15693 () ListLongMap!1071)

(declare-fun contains!517 (ListLongMap!1071 (_ BitVec 64)) Bool)

(assert (=> bm!3162 (= call!3165 (contains!517 lt!15693 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40642 () Bool)

(declare-fun e!25778 () ListLongMap!1071)

(declare-fun e!25783 () ListLongMap!1071)

(assert (=> b!40642 (= e!25778 e!25783)))

(declare-fun c!4998 () Bool)

(assert (=> b!40642 (= c!4998 (and (not (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!40643 () Bool)

(declare-fun e!25776 () Bool)

(declare-fun apply!56 (ListLongMap!1071 (_ BitVec 64)) V!2099)

(assert (=> b!40643 (= e!25776 (= (apply!56 lt!15693 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1722 lt!15472)))))

(declare-fun b!40644 () Bool)

(declare-fun call!3166 () ListLongMap!1071)

(declare-fun +!66 (ListLongMap!1071 tuple2!1490) ListLongMap!1071)

(assert (=> b!40644 (= e!25778 (+!66 call!3166 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))))

(declare-fun b!40645 () Bool)

(declare-fun e!25781 () Bool)

(declare-fun call!3171 () Bool)

(assert (=> b!40645 (= e!25781 (not call!3171))))

(declare-fun b!40646 () Bool)

(declare-fun res!24237 () Bool)

(declare-fun e!25785 () Bool)

(assert (=> b!40646 (=> (not res!24237) (not e!25785))))

(declare-fun e!25777 () Bool)

(assert (=> b!40646 (= res!24237 e!25777)))

(declare-fun res!24238 () Bool)

(assert (=> b!40646 (=> res!24238 e!25777)))

(declare-fun e!25786 () Bool)

(assert (=> b!40646 (= res!24238 (not e!25786))))

(declare-fun res!24242 () Bool)

(assert (=> b!40646 (=> (not res!24242) (not e!25786))))

(assert (=> b!40646 (= res!24242 (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(declare-fun bm!3163 () Bool)

(assert (=> bm!3163 (= call!3171 (contains!517 lt!15693 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40647 () Bool)

(declare-fun e!25779 () ListLongMap!1071)

(declare-fun call!3169 () ListLongMap!1071)

(assert (=> b!40647 (= e!25779 call!3169)))

(declare-fun call!3170 () ListLongMap!1071)

(declare-fun bm!3164 () Bool)

(declare-fun c!4999 () Bool)

(declare-fun call!3168 () ListLongMap!1071)

(assert (=> bm!3164 (= call!3166 (+!66 (ite c!4999 call!3170 (ite c!4998 call!3168 call!3169)) (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))))))

(declare-fun b!40648 () Bool)

(declare-fun e!25775 () Bool)

(assert (=> b!40648 (= e!25781 e!25775)))

(declare-fun res!24236 () Bool)

(assert (=> b!40648 (= res!24236 call!3171)))

(assert (=> b!40648 (=> (not res!24236) (not e!25775))))

(declare-fun b!40649 () Bool)

(declare-fun e!25780 () Unit!982)

(declare-fun lt!15681 () Unit!982)

(assert (=> b!40649 (= e!25780 lt!15681)))

(declare-fun lt!15679 () ListLongMap!1071)

(declare-fun getCurrentListMapNoExtraKeys!35 (array!2591 array!2593 (_ BitVec 32) (_ BitVec 32) V!2099 V!2099 (_ BitVec 32) Int) ListLongMap!1071)

(assert (=> b!40649 (= lt!15679 (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)))))

(declare-fun lt!15692 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15692 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15689 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15689 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))

(declare-fun lt!15690 () Unit!982)

(declare-fun addStillContains!32 (ListLongMap!1071 (_ BitVec 64) V!2099 (_ BitVec 64)) Unit!982)

(assert (=> b!40649 (= lt!15690 (addStillContains!32 lt!15679 lt!15692 (zeroValue!1722 lt!15472) lt!15689))))

(assert (=> b!40649 (contains!517 (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))) lt!15689)))

(declare-fun lt!15697 () Unit!982)

(assert (=> b!40649 (= lt!15697 lt!15690)))

(declare-fun lt!15688 () ListLongMap!1071)

(assert (=> b!40649 (= lt!15688 (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)))))

(declare-fun lt!15687 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15687 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15680 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15680 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))

(declare-fun lt!15699 () Unit!982)

(declare-fun addApplyDifferent!32 (ListLongMap!1071 (_ BitVec 64) V!2099 (_ BitVec 64)) Unit!982)

(assert (=> b!40649 (= lt!15699 (addApplyDifferent!32 lt!15688 lt!15687 (minValue!1722 lt!15472) lt!15680))))

(assert (=> b!40649 (= (apply!56 (+!66 lt!15688 (tuple2!1491 lt!15687 (minValue!1722 lt!15472))) lt!15680) (apply!56 lt!15688 lt!15680))))

(declare-fun lt!15691 () Unit!982)

(assert (=> b!40649 (= lt!15691 lt!15699)))

(declare-fun lt!15685 () ListLongMap!1071)

(assert (=> b!40649 (= lt!15685 (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)))))

(declare-fun lt!15683 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15683 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15695 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15695 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))

(declare-fun lt!15700 () Unit!982)

(assert (=> b!40649 (= lt!15700 (addApplyDifferent!32 lt!15685 lt!15683 (zeroValue!1722 lt!15472) lt!15695))))

(assert (=> b!40649 (= (apply!56 (+!66 lt!15685 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))) lt!15695) (apply!56 lt!15685 lt!15695))))

(declare-fun lt!15682 () Unit!982)

(assert (=> b!40649 (= lt!15682 lt!15700)))

(declare-fun lt!15684 () ListLongMap!1071)

(assert (=> b!40649 (= lt!15684 (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)))))

(declare-fun lt!15686 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15686 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15696 () (_ BitVec 64))

(assert (=> b!40649 (= lt!15696 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))

(assert (=> b!40649 (= lt!15681 (addApplyDifferent!32 lt!15684 lt!15686 (minValue!1722 lt!15472) lt!15696))))

(assert (=> b!40649 (= (apply!56 (+!66 lt!15684 (tuple2!1491 lt!15686 (minValue!1722 lt!15472))) lt!15696) (apply!56 lt!15684 lt!15696))))

(declare-fun b!40650 () Bool)

(declare-fun res!24244 () Bool)

(assert (=> b!40650 (=> (not res!24244) (not e!25785))))

(assert (=> b!40650 (= res!24244 e!25781)))

(declare-fun c!4994 () Bool)

(assert (=> b!40650 (= c!4994 (not (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!40651 () Bool)

(declare-fun Unit!988 () Unit!982)

(assert (=> b!40651 (= e!25780 Unit!988)))

(declare-fun b!40652 () Bool)

(declare-fun e!25784 () Bool)

(assert (=> b!40652 (= e!25784 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun b!40653 () Bool)

(assert (=> b!40653 (= e!25786 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun d!7103 () Bool)

(assert (=> d!7103 e!25785))

(declare-fun res!24243 () Bool)

(assert (=> d!7103 (=> (not res!24243) (not e!25785))))

(assert (=> d!7103 (= res!24243 (or (bvsge #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))))

(declare-fun lt!15698 () ListLongMap!1071)

(assert (=> d!7103 (= lt!15693 lt!15698)))

(declare-fun lt!15694 () Unit!982)

(assert (=> d!7103 (= lt!15694 e!25780)))

(declare-fun c!4996 () Bool)

(assert (=> d!7103 (= c!4996 e!25784)))

(declare-fun res!24241 () Bool)

(assert (=> d!7103 (=> (not res!24241) (not e!25784))))

(assert (=> d!7103 (= res!24241 (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7103 (= lt!15698 e!25778)))

(assert (=> d!7103 (= c!4999 (and (not (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!7103 (validMask!0 (mask!5177 lt!15472))))

(assert (=> d!7103 (= (getCurrentListMap!311 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)) lt!15693)))

(declare-fun b!40654 () Bool)

(declare-fun e!25782 () Bool)

(assert (=> b!40654 (= e!25782 e!25776)))

(declare-fun res!24239 () Bool)

(assert (=> b!40654 (= res!24239 call!3165)))

(assert (=> b!40654 (=> (not res!24239) (not e!25776))))

(declare-fun b!40655 () Bool)

(declare-fun e!25787 () Bool)

(declare-fun get!705 (ValueCell!630 V!2099) V!2099)

(assert (=> b!40655 (= e!25787 (= (apply!56 lt!15693 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)) (get!705 (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000) (dynLambda!191 (defaultEntry!1804 lt!15472) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40655 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1377 (_values!1787 lt!15472))))))

(assert (=> b!40655 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(declare-fun b!40656 () Bool)

(declare-fun c!4997 () Bool)

(assert (=> b!40656 (= c!4997 (and (not (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!40656 (= e!25783 e!25779)))

(declare-fun b!40657 () Bool)

(declare-fun call!3167 () ListLongMap!1071)

(assert (=> b!40657 (= e!25779 call!3167)))

(declare-fun bm!3165 () Bool)

(assert (=> bm!3165 (= call!3168 call!3170)))

(declare-fun b!40658 () Bool)

(assert (=> b!40658 (= e!25775 (= (apply!56 lt!15693 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1722 lt!15472)))))

(declare-fun bm!3166 () Bool)

(assert (=> bm!3166 (= call!3170 (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)))))

(declare-fun b!40659 () Bool)

(assert (=> b!40659 (= e!25783 call!3167)))

(declare-fun b!40660 () Bool)

(assert (=> b!40660 (= e!25777 e!25787)))

(declare-fun res!24240 () Bool)

(assert (=> b!40660 (=> (not res!24240) (not e!25787))))

(assert (=> b!40660 (= res!24240 (contains!517 lt!15693 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (=> b!40660 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(declare-fun b!40661 () Bool)

(assert (=> b!40661 (= e!25782 (not call!3165))))

(declare-fun bm!3167 () Bool)

(assert (=> bm!3167 (= call!3167 call!3166)))

(declare-fun b!40662 () Bool)

(assert (=> b!40662 (= e!25785 e!25782)))

(declare-fun c!4995 () Bool)

(assert (=> b!40662 (= c!4995 (not (= (bvand (extraKeys!1695 lt!15472) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3168 () Bool)

(assert (=> bm!3168 (= call!3169 call!3168)))

(assert (= (and d!7103 c!4999) b!40644))

(assert (= (and d!7103 (not c!4999)) b!40642))

(assert (= (and b!40642 c!4998) b!40659))

(assert (= (and b!40642 (not c!4998)) b!40656))

(assert (= (and b!40656 c!4997) b!40657))

(assert (= (and b!40656 (not c!4997)) b!40647))

(assert (= (or b!40657 b!40647) bm!3168))

(assert (= (or b!40659 bm!3168) bm!3165))

(assert (= (or b!40659 b!40657) bm!3167))

(assert (= (or b!40644 bm!3165) bm!3166))

(assert (= (or b!40644 bm!3167) bm!3164))

(assert (= (and d!7103 res!24241) b!40652))

(assert (= (and d!7103 c!4996) b!40649))

(assert (= (and d!7103 (not c!4996)) b!40651))

(assert (= (and d!7103 res!24243) b!40646))

(assert (= (and b!40646 res!24242) b!40653))

(assert (= (and b!40646 (not res!24238)) b!40660))

(assert (= (and b!40660 res!24240) b!40655))

(assert (= (and b!40646 res!24237) b!40650))

(assert (= (and b!40650 c!4994) b!40648))

(assert (= (and b!40650 (not c!4994)) b!40645))

(assert (= (and b!40648 res!24236) b!40658))

(assert (= (or b!40648 b!40645) bm!3163))

(assert (= (and b!40650 res!24244) b!40662))

(assert (= (and b!40662 c!4995) b!40654))

(assert (= (and b!40662 (not c!4995)) b!40661))

(assert (= (and b!40654 res!24239) b!40643))

(assert (= (or b!40654 b!40661) bm!3162))

(declare-fun b_lambda!2089 () Bool)

(assert (=> (not b_lambda!2089) (not b!40655)))

(declare-fun tb!853 () Bool)

(declare-fun t!3940 () Bool)

(assert (=> (and start!5700 (= defaultEntry!470 (defaultEntry!1804 lt!15472)) t!3940) tb!853))

(declare-fun result!1455 () Bool)

(assert (=> tb!853 (= result!1455 tp_is_empty!1755)))

(assert (=> b!40655 t!3940))

(declare-fun b_and!2379 () Bool)

(assert (= b_and!2373 (and (=> t!3940 result!1455) b_and!2379)))

(assert (=> b!40660 m!33435))

(assert (=> b!40660 m!33435))

(declare-fun m!33507 () Bool)

(assert (=> b!40660 m!33507))

(declare-fun m!33509 () Bool)

(assert (=> b!40644 m!33509))

(assert (=> b!40653 m!33435))

(assert (=> b!40653 m!33435))

(assert (=> b!40653 m!33445))

(declare-fun m!33511 () Bool)

(assert (=> bm!3166 m!33511))

(assert (=> b!40655 m!33435))

(declare-fun m!33513 () Bool)

(assert (=> b!40655 m!33513))

(assert (=> b!40655 m!33435))

(declare-fun m!33515 () Bool)

(assert (=> b!40655 m!33515))

(declare-fun m!33517 () Bool)

(assert (=> b!40655 m!33517))

(assert (=> b!40655 m!33517))

(assert (=> b!40655 m!33513))

(declare-fun m!33519 () Bool)

(assert (=> b!40655 m!33519))

(declare-fun m!33521 () Bool)

(assert (=> bm!3164 m!33521))

(declare-fun m!33523 () Bool)

(assert (=> b!40649 m!33523))

(assert (=> b!40649 m!33511))

(declare-fun m!33525 () Bool)

(assert (=> b!40649 m!33525))

(declare-fun m!33527 () Bool)

(assert (=> b!40649 m!33527))

(declare-fun m!33529 () Bool)

(assert (=> b!40649 m!33529))

(declare-fun m!33531 () Bool)

(assert (=> b!40649 m!33531))

(declare-fun m!33533 () Bool)

(assert (=> b!40649 m!33533))

(declare-fun m!33535 () Bool)

(assert (=> b!40649 m!33535))

(assert (=> b!40649 m!33435))

(assert (=> b!40649 m!33523))

(declare-fun m!33537 () Bool)

(assert (=> b!40649 m!33537))

(assert (=> b!40649 m!33525))

(declare-fun m!33539 () Bool)

(assert (=> b!40649 m!33539))

(declare-fun m!33541 () Bool)

(assert (=> b!40649 m!33541))

(declare-fun m!33543 () Bool)

(assert (=> b!40649 m!33543))

(assert (=> b!40649 m!33541))

(assert (=> b!40649 m!33535))

(declare-fun m!33545 () Bool)

(assert (=> b!40649 m!33545))

(declare-fun m!33547 () Bool)

(assert (=> b!40649 m!33547))

(declare-fun m!33549 () Bool)

(assert (=> b!40649 m!33549))

(declare-fun m!33551 () Bool)

(assert (=> b!40649 m!33551))

(declare-fun m!33553 () Bool)

(assert (=> bm!3162 m!33553))

(assert (=> b!40652 m!33435))

(assert (=> b!40652 m!33435))

(assert (=> b!40652 m!33445))

(declare-fun m!33555 () Bool)

(assert (=> b!40643 m!33555))

(declare-fun m!33557 () Bool)

(assert (=> b!40658 m!33557))

(assert (=> d!7103 m!33425))

(declare-fun m!33559 () Bool)

(assert (=> bm!3163 m!33559))

(assert (=> d!7015 d!7103))

(declare-fun d!7121 () Bool)

(assert (=> d!7121 (arrayContainsKey!0 lt!15477 lt!15550 #b00000000000000000000000000000000)))

(declare-fun lt!15729 () Unit!982)

(declare-fun choose!13 (array!2591 (_ BitVec 64) (_ BitVec 32)) Unit!982)

(assert (=> d!7121 (= lt!15729 (choose!13 lt!15477 lt!15550 #b00000000000000000000000000000000))))

(assert (=> d!7121 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!7121 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15477 lt!15550 #b00000000000000000000000000000000) lt!15729)))

(declare-fun bs!1713 () Bool)

(assert (= bs!1713 d!7121))

(assert (=> bs!1713 m!33383))

(declare-fun m!33561 () Bool)

(assert (=> bs!1713 m!33561))

(assert (=> b!40432 d!7121))

(declare-fun d!7123 () Bool)

(declare-fun res!24258 () Bool)

(declare-fun e!25811 () Bool)

(assert (=> d!7123 (=> res!24258 e!25811)))

(assert (=> d!7123 (= res!24258 (= (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15550))))

(assert (=> d!7123 (= (arrayContainsKey!0 lt!15477 lt!15550 #b00000000000000000000000000000000) e!25811)))

(declare-fun b!40700 () Bool)

(declare-fun e!25812 () Bool)

(assert (=> b!40700 (= e!25811 e!25812)))

(declare-fun res!24259 () Bool)

(assert (=> b!40700 (=> (not res!24259) (not e!25812))))

(assert (=> b!40700 (= res!24259 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 lt!15477)))))

(declare-fun b!40701 () Bool)

(assert (=> b!40701 (= e!25812 (arrayContainsKey!0 lt!15477 lt!15550 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7123 (not res!24258)) b!40700))

(assert (= (and b!40700 res!24259) b!40701))

(assert (=> d!7123 m!33313))

(declare-fun m!33623 () Bool)

(assert (=> b!40701 m!33623))

(assert (=> b!40432 d!7123))

(declare-fun b!40801 () Bool)

(declare-fun c!5033 () Bool)

(declare-fun lt!15810 () (_ BitVec 64))

(assert (=> b!40801 (= c!5033 (= lt!15810 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25876 () SeekEntryResult!184)

(declare-fun e!25877 () SeekEntryResult!184)

(assert (=> b!40801 (= e!25876 e!25877)))

(declare-fun b!40802 () Bool)

(declare-fun lt!15811 () SeekEntryResult!184)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2591 (_ BitVec 32)) SeekEntryResult!184)

(assert (=> b!40802 (= e!25877 (seekKeyOrZeroReturnVacant!0 (x!7731 lt!15811) (index!2860 lt!15811) (index!2860 lt!15811) (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853))))

(declare-fun b!40803 () Bool)

(declare-fun e!25875 () SeekEntryResult!184)

(assert (=> b!40803 (= e!25875 e!25876)))

(assert (=> b!40803 (= lt!15810 (select (arr!1239 lt!15477) (index!2860 lt!15811)))))

(declare-fun c!5034 () Bool)

(assert (=> b!40803 (= c!5034 (= lt!15810 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun b!40800 () Bool)

(assert (=> b!40800 (= e!25875 Undefined!184)))

(declare-fun d!7127 () Bool)

(declare-fun lt!15812 () SeekEntryResult!184)

(assert (=> d!7127 (and (or ((_ is Undefined!184) lt!15812) (not ((_ is Found!184) lt!15812)) (and (bvsge (index!2859 lt!15812) #b00000000000000000000000000000000) (bvslt (index!2859 lt!15812) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!15812) ((_ is Found!184) lt!15812) (not ((_ is MissingZero!184) lt!15812)) (and (bvsge (index!2858 lt!15812) #b00000000000000000000000000000000) (bvslt (index!2858 lt!15812) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!15812) ((_ is Found!184) lt!15812) ((_ is MissingZero!184) lt!15812) (not ((_ is MissingVacant!184) lt!15812)) (and (bvsge (index!2861 lt!15812) #b00000000000000000000000000000000) (bvslt (index!2861 lt!15812) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!15812) (ite ((_ is Found!184) lt!15812) (= (select (arr!1239 lt!15477) (index!2859 lt!15812)) (select (arr!1239 lt!15477) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!184) lt!15812) (= (select (arr!1239 lt!15477) (index!2858 lt!15812)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!184) lt!15812) (= (select (arr!1239 lt!15477) (index!2861 lt!15812)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!7127 (= lt!15812 e!25875)))

(declare-fun c!5035 () Bool)

(assert (=> d!7127 (= c!5035 (and ((_ is Intermediate!184) lt!15811) (undefined!996 lt!15811)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2591 (_ BitVec 32)) SeekEntryResult!184)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!7127 (= lt!15811 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) mask!853) (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853))))

(assert (=> d!7127 (validMask!0 mask!853)))

(assert (=> d!7127 (= (seekEntryOrOpen!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853) lt!15812)))

(declare-fun b!40804 () Bool)

(assert (=> b!40804 (= e!25877 (MissingZero!184 (index!2860 lt!15811)))))

(declare-fun b!40805 () Bool)

(assert (=> b!40805 (= e!25876 (Found!184 (index!2860 lt!15811)))))

(assert (= (and d!7127 c!5035) b!40800))

(assert (= (and d!7127 (not c!5035)) b!40803))

(assert (= (and b!40803 c!5034) b!40805))

(assert (= (and b!40803 (not c!5034)) b!40801))

(assert (= (and b!40801 c!5033) b!40804))

(assert (= (and b!40801 (not c!5033)) b!40802))

(assert (=> b!40802 m!33313))

(declare-fun m!33711 () Bool)

(assert (=> b!40802 m!33711))

(declare-fun m!33713 () Bool)

(assert (=> b!40803 m!33713))

(declare-fun m!33715 () Bool)

(assert (=> d!7127 m!33715))

(assert (=> d!7127 m!33313))

(declare-fun m!33717 () Bool)

(assert (=> d!7127 m!33717))

(declare-fun m!33719 () Bool)

(assert (=> d!7127 m!33719))

(assert (=> d!7127 m!33313))

(assert (=> d!7127 m!33715))

(declare-fun m!33721 () Bool)

(assert (=> d!7127 m!33721))

(declare-fun m!33723 () Bool)

(assert (=> d!7127 m!33723))

(assert (=> d!7127 m!33261))

(assert (=> b!40432 d!7127))

(check-sat (not b!40491) (not bm!3125) b_and!2379 (not bm!3127) (not b!40658) (not b!40475) (not d!7097) (not b!40649) (not b_lambda!2087) (not bm!3132) (not bm!3126) (not b!40476) (not b!40653) (not b!40527) (not b!40652) (not d!7121) (not b!40495) (not b!40490) (not b_lambda!2089) (not b!40461) (not bm!3166) (not d!7061) (not b!40644) (not bm!3130) (not d!7087) tp_is_empty!1755 (not b_next!1365) (not bm!3163) (not bm!3164) (not b!40506) (not b!40655) (not b!40529) (not b!40510) (not b!40496) (not b!40484) (not b!40701) (not b!40486) (not b!40643) (not b!40660) (not b!40492) (not bm!3131) (not bm!3162) (not d!7063) (not d!7069) (not d!7127) (not b!40487) (not d!7103) (not b!40802))
(check-sat b_and!2379 (not b_next!1365))
(get-model)

(declare-fun d!7197 () Bool)

(declare-fun lt!15873 () Bool)

(assert (=> d!7197 (= lt!15873 (select (content!31 Nil!1068) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun e!25937 () Bool)

(assert (=> d!7197 (= lt!15873 e!25937)))

(declare-fun res!24353 () Bool)

(assert (=> d!7197 (=> (not res!24353) (not e!25937))))

(assert (=> d!7197 (= res!24353 ((_ is Cons!1067) Nil!1068))))

(assert (=> d!7197 (= (contains!513 Nil!1068 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)) lt!15873)))

(declare-fun b!40897 () Bool)

(declare-fun e!25938 () Bool)

(assert (=> b!40897 (= e!25937 e!25938)))

(declare-fun res!24352 () Bool)

(assert (=> b!40897 (=> res!24352 e!25938)))

(assert (=> b!40897 (= res!24352 (= (h!1641 Nil!1068) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun b!40898 () Bool)

(assert (=> b!40898 (= e!25938 (contains!513 (t!3934 Nil!1068) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (= (and d!7197 res!24353) b!40897))

(assert (= (and b!40897 (not res!24352)) b!40898))

(assert (=> d!7197 m!33407))

(assert (=> d!7197 m!33435))

(declare-fun m!33853 () Bool)

(assert (=> d!7197 m!33853))

(assert (=> b!40898 m!33435))

(declare-fun m!33855 () Bool)

(assert (=> b!40898 m!33855))

(assert (=> b!40490 d!7197))

(declare-fun d!7199 () Bool)

(declare-datatypes ((Option!107 0))(
  ( (Some!106 (v!1999 V!2099)) (None!105) )
))
(declare-fun get!706 (Option!107) V!2099)

(declare-fun getValueByKey!101 (List!1070 (_ BitVec 64)) Option!107)

(assert (=> d!7199 (= (apply!56 lt!15693 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)) (get!706 (getValueByKey!101 (toList!551 lt!15693) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))))

(declare-fun bs!1720 () Bool)

(assert (= bs!1720 d!7199))

(assert (=> bs!1720 m!33435))

(declare-fun m!33857 () Bool)

(assert (=> bs!1720 m!33857))

(assert (=> bs!1720 m!33857))

(declare-fun m!33859 () Bool)

(assert (=> bs!1720 m!33859))

(assert (=> b!40655 d!7199))

(declare-fun d!7201 () Bool)

(declare-fun c!5071 () Bool)

(assert (=> d!7201 (= c!5071 ((_ is ValueCellFull!630) (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun e!25945 () V!2099)

(assert (=> d!7201 (= (get!705 (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000) (dynLambda!191 (defaultEntry!1804 lt!15472) #b0000000000000000000000000000000000000000000000000000000000000000)) e!25945)))

(declare-fun b!40911 () Bool)

(declare-fun get!707 (ValueCell!630 V!2099) V!2099)

(assert (=> b!40911 (= e!25945 (get!707 (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000) (dynLambda!191 (defaultEntry!1804 lt!15472) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!40912 () Bool)

(declare-fun get!708 (ValueCell!630 V!2099) V!2099)

(assert (=> b!40912 (= e!25945 (get!708 (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000) (dynLambda!191 (defaultEntry!1804 lt!15472) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7201 c!5071) b!40911))

(assert (= (and d!7201 (not c!5071)) b!40912))

(assert (=> b!40911 m!33517))

(assert (=> b!40911 m!33513))

(declare-fun m!33861 () Bool)

(assert (=> b!40911 m!33861))

(assert (=> b!40912 m!33517))

(assert (=> b!40912 m!33513))

(declare-fun m!33863 () Bool)

(assert (=> b!40912 m!33863))

(assert (=> b!40655 d!7201))

(declare-fun b!40958 () Bool)

(declare-fun e!25975 () SeekEntryResult!184)

(assert (=> b!40958 (= e!25975 (Found!184 (index!2860 lt!15811)))))

(declare-fun b!40959 () Bool)

(declare-fun e!25973 () SeekEntryResult!184)

(assert (=> b!40959 (= e!25973 e!25975)))

(declare-fun c!5089 () Bool)

(declare-fun lt!15900 () (_ BitVec 64))

(assert (=> b!40959 (= c!5089 (= lt!15900 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun b!40960 () Bool)

(declare-fun c!5087 () Bool)

(assert (=> b!40960 (= c!5087 (= lt!15900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25974 () SeekEntryResult!184)

(assert (=> b!40960 (= e!25975 e!25974)))

(declare-fun d!7203 () Bool)

(declare-fun lt!15899 () SeekEntryResult!184)

(assert (=> d!7203 (and (or ((_ is Undefined!184) lt!15899) (not ((_ is Found!184) lt!15899)) (and (bvsge (index!2859 lt!15899) #b00000000000000000000000000000000) (bvslt (index!2859 lt!15899) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!15899) ((_ is Found!184) lt!15899) (not ((_ is MissingVacant!184) lt!15899)) (not (= (index!2861 lt!15899) (index!2860 lt!15811))) (and (bvsge (index!2861 lt!15899) #b00000000000000000000000000000000) (bvslt (index!2861 lt!15899) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!15899) (ite ((_ is Found!184) lt!15899) (= (select (arr!1239 lt!15477) (index!2859 lt!15899)) (select (arr!1239 lt!15477) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!184) lt!15899) (= (index!2861 lt!15899) (index!2860 lt!15811)) (= (select (arr!1239 lt!15477) (index!2861 lt!15899)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!7203 (= lt!15899 e!25973)))

(declare-fun c!5088 () Bool)

(assert (=> d!7203 (= c!5088 (bvsge (x!7731 lt!15811) #b01111111111111111111111111111110))))

(assert (=> d!7203 (= lt!15900 (select (arr!1239 lt!15477) (index!2860 lt!15811)))))

(assert (=> d!7203 (validMask!0 mask!853)))

(assert (=> d!7203 (= (seekKeyOrZeroReturnVacant!0 (x!7731 lt!15811) (index!2860 lt!15811) (index!2860 lt!15811) (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853) lt!15899)))

(declare-fun b!40961 () Bool)

(assert (=> b!40961 (= e!25974 (MissingVacant!184 (index!2860 lt!15811)))))

(declare-fun b!40962 () Bool)

(assert (=> b!40962 (= e!25973 Undefined!184)))

(declare-fun b!40963 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!40963 (= e!25974 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7731 lt!15811) #b00000000000000000000000000000001) (nextIndex!0 (index!2860 lt!15811) (x!7731 lt!15811) mask!853) (index!2860 lt!15811) (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853))))

(assert (= (and d!7203 c!5088) b!40962))

(assert (= (and d!7203 (not c!5088)) b!40959))

(assert (= (and b!40959 c!5089) b!40958))

(assert (= (and b!40959 (not c!5089)) b!40960))

(assert (= (and b!40960 c!5087) b!40961))

(assert (= (and b!40960 (not c!5087)) b!40963))

(declare-fun m!33889 () Bool)

(assert (=> d!7203 m!33889))

(declare-fun m!33891 () Bool)

(assert (=> d!7203 m!33891))

(assert (=> d!7203 m!33713))

(assert (=> d!7203 m!33261))

(declare-fun m!33893 () Bool)

(assert (=> b!40963 m!33893))

(assert (=> b!40963 m!33893))

(assert (=> b!40963 m!33313))

(declare-fun m!33895 () Bool)

(assert (=> b!40963 m!33895))

(assert (=> b!40802 d!7203))

(declare-fun d!7211 () Bool)

(assert (=> d!7211 (= (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40491 d!7211))

(assert (=> d!7087 d!7037))

(declare-fun b!41016 () Bool)

(declare-fun e!26010 () SeekEntryResult!184)

(assert (=> b!41016 (= e!26010 (Intermediate!184 true (toIndex!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!41017 () Bool)

(declare-fun e!26008 () SeekEntryResult!184)

(assert (=> b!41017 (= e!26010 e!26008)))

(declare-fun c!5101 () Bool)

(declare-fun lt!15958 () (_ BitVec 64))

(assert (=> b!41017 (= c!5101 (or (= lt!15958 (select (arr!1239 lt!15477) #b00000000000000000000000000000000)) (= (bvadd lt!15958 lt!15958) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!41018 () Bool)

(declare-fun lt!15957 () SeekEntryResult!184)

(assert (=> b!41018 (and (bvsge (index!2860 lt!15957) #b00000000000000000000000000000000) (bvslt (index!2860 lt!15957) (size!1376 lt!15477)))))

(declare-fun res!24397 () Bool)

(assert (=> b!41018 (= res!24397 (= (select (arr!1239 lt!15477) (index!2860 lt!15957)) (select (arr!1239 lt!15477) #b00000000000000000000000000000000)))))

(declare-fun e!26011 () Bool)

(assert (=> b!41018 (=> res!24397 e!26011)))

(declare-fun e!26007 () Bool)

(assert (=> b!41018 (= e!26007 e!26011)))

(declare-fun b!41019 () Bool)

(declare-fun e!26009 () Bool)

(assert (=> b!41019 (= e!26009 e!26007)))

(declare-fun res!24398 () Bool)

(assert (=> b!41019 (= res!24398 (and ((_ is Intermediate!184) lt!15957) (not (undefined!996 lt!15957)) (bvslt (x!7731 lt!15957) #b01111111111111111111111111111110) (bvsge (x!7731 lt!15957) #b00000000000000000000000000000000) (bvsge (x!7731 lt!15957) #b00000000000000000000000000000000)))))

(assert (=> b!41019 (=> (not res!24398) (not e!26007))))

(declare-fun b!41021 () Bool)

(assert (=> b!41021 (= e!26008 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853))))

(declare-fun b!41022 () Bool)

(assert (=> b!41022 (= e!26008 (Intermediate!184 false (toIndex!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!41023 () Bool)

(assert (=> b!41023 (= e!26009 (bvsge (x!7731 lt!15957) #b01111111111111111111111111111110))))

(declare-fun b!41024 () Bool)

(assert (=> b!41024 (and (bvsge (index!2860 lt!15957) #b00000000000000000000000000000000) (bvslt (index!2860 lt!15957) (size!1376 lt!15477)))))

(declare-fun res!24399 () Bool)

(assert (=> b!41024 (= res!24399 (= (select (arr!1239 lt!15477) (index!2860 lt!15957)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!41024 (=> res!24399 e!26011)))

(declare-fun d!7213 () Bool)

(assert (=> d!7213 e!26009))

(declare-fun c!5103 () Bool)

(assert (=> d!7213 (= c!5103 (and ((_ is Intermediate!184) lt!15957) (undefined!996 lt!15957)))))

(assert (=> d!7213 (= lt!15957 e!26010)))

(declare-fun c!5102 () Bool)

(assert (=> d!7213 (= c!5102 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!7213 (= lt!15958 (select (arr!1239 lt!15477) (toIndex!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!7213 (validMask!0 mask!853)))

(assert (=> d!7213 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) mask!853) (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15477 mask!853) lt!15957)))

(declare-fun b!41020 () Bool)

(assert (=> b!41020 (and (bvsge (index!2860 lt!15957) #b00000000000000000000000000000000) (bvslt (index!2860 lt!15957) (size!1376 lt!15477)))))

(assert (=> b!41020 (= e!26011 (= (select (arr!1239 lt!15477) (index!2860 lt!15957)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7213 c!5102) b!41016))

(assert (= (and d!7213 (not c!5102)) b!41017))

(assert (= (and b!41017 c!5101) b!41022))

(assert (= (and b!41017 (not c!5101)) b!41021))

(assert (= (and d!7213 c!5103) b!41023))

(assert (= (and d!7213 (not c!5103)) b!41019))

(assert (= (and b!41019 res!24398) b!41018))

(assert (= (and b!41018 (not res!24397)) b!41024))

(assert (= (and b!41024 (not res!24399)) b!41020))

(declare-fun m!34019 () Bool)

(assert (=> b!41020 m!34019))

(assert (=> d!7213 m!33715))

(declare-fun m!34021 () Bool)

(assert (=> d!7213 m!34021))

(assert (=> d!7213 m!33261))

(assert (=> b!41018 m!34019))

(assert (=> b!41024 m!34019))

(assert (=> b!41021 m!33715))

(declare-fun m!34023 () Bool)

(assert (=> b!41021 m!34023))

(assert (=> b!41021 m!34023))

(assert (=> b!41021 m!33313))

(declare-fun m!34025 () Bool)

(assert (=> b!41021 m!34025))

(assert (=> d!7127 d!7213))

(declare-fun d!7259 () Bool)

(declare-fun lt!15970 () (_ BitVec 32))

(declare-fun lt!15969 () (_ BitVec 32))

(assert (=> d!7259 (= lt!15970 (bvmul (bvxor lt!15969 (bvlshr lt!15969 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!7259 (= lt!15969 ((_ extract 31 0) (bvand (bvxor (select (arr!1239 lt!15477) #b00000000000000000000000000000000) (bvlshr (select (arr!1239 lt!15477) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!7259 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!24402 (let ((h!1644 ((_ extract 31 0) (bvand (bvxor (select (arr!1239 lt!15477) #b00000000000000000000000000000000) (bvlshr (select (arr!1239 lt!15477) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7752 (bvmul (bvxor h!1644 (bvlshr h!1644 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7752 (bvlshr x!7752 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!24402 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!24402 #b00000000000000000000000000000000))))))

(assert (=> d!7259 (= (toIndex!0 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!15970 (bvlshr lt!15970 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!7127 d!7259))

(assert (=> d!7127 d!7057))

(declare-fun b!41030 () Bool)

(declare-fun e!26015 () Bool)

(declare-fun e!26016 () Bool)

(assert (=> b!41030 (= e!26015 e!26016)))

(declare-fun c!5104 () Bool)

(assert (=> b!41030 (= c!5104 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41031 () Bool)

(declare-fun call!3214 () Bool)

(assert (=> b!41031 (= e!26016 call!3214)))

(declare-fun bm!3211 () Bool)

(assert (=> bm!3211 (= call!3214 (arrayNoDuplicates!0 (_keys!3293 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5104 (Cons!1067 (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4949 (Cons!1067 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (ite c!4949 (Cons!1067 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) Nil!1068) Nil!1068))))))

(declare-fun b!41032 () Bool)

(assert (=> b!41032 (= e!26016 call!3214)))

(declare-fun d!7263 () Bool)

(declare-fun res!24406 () Bool)

(declare-fun e!26018 () Bool)

(assert (=> d!7263 (=> res!24406 e!26018)))

(assert (=> d!7263 (= res!24406 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7263 (= (arrayNoDuplicates!0 (_keys!3293 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4949 (Cons!1067 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) e!26018)))

(declare-fun b!41033 () Bool)

(declare-fun e!26017 () Bool)

(assert (=> b!41033 (= e!26017 (contains!513 (ite c!4949 (Cons!1067 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) Nil!1068) Nil!1068) (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41034 () Bool)

(assert (=> b!41034 (= e!26018 e!26015)))

(declare-fun res!24407 () Bool)

(assert (=> b!41034 (=> (not res!24407) (not e!26015))))

(assert (=> b!41034 (= res!24407 (not e!26017))))

(declare-fun res!24405 () Bool)

(assert (=> b!41034 (=> (not res!24405) (not e!26017))))

(assert (=> b!41034 (= res!24405 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!7263 (not res!24406)) b!41034))

(assert (= (and b!41034 res!24405) b!41033))

(assert (= (and b!41034 res!24407) b!41030))

(assert (= (and b!41030 c!5104) b!41032))

(assert (= (and b!41030 (not c!5104)) b!41031))

(assert (= (or b!41032 b!41031) bm!3211))

(declare-fun m!34039 () Bool)

(assert (=> b!41030 m!34039))

(assert (=> b!41030 m!34039))

(declare-fun m!34041 () Bool)

(assert (=> b!41030 m!34041))

(assert (=> bm!3211 m!34039))

(declare-fun m!34045 () Bool)

(assert (=> bm!3211 m!34045))

(assert (=> b!41033 m!34039))

(assert (=> b!41033 m!34039))

(declare-fun m!34049 () Bool)

(assert (=> b!41033 m!34049))

(assert (=> b!41034 m!34039))

(assert (=> b!41034 m!34039))

(assert (=> b!41034 m!34041))

(assert (=> bm!3126 d!7263))

(assert (=> b!40652 d!7211))

(declare-fun d!7267 () Bool)

(assert (=> d!7267 (= (validMask!0 (mask!5177 lt!15472)) (and (or (= (mask!5177 lt!15472) #b00000000000000000000000000000111) (= (mask!5177 lt!15472) #b00000000000000000000000000001111) (= (mask!5177 lt!15472) #b00000000000000000000000000011111) (= (mask!5177 lt!15472) #b00000000000000000000000000111111) (= (mask!5177 lt!15472) #b00000000000000000000000001111111) (= (mask!5177 lt!15472) #b00000000000000000000000011111111) (= (mask!5177 lt!15472) #b00000000000000000000000111111111) (= (mask!5177 lt!15472) #b00000000000000000000001111111111) (= (mask!5177 lt!15472) #b00000000000000000000011111111111) (= (mask!5177 lt!15472) #b00000000000000000000111111111111) (= (mask!5177 lt!15472) #b00000000000000000001111111111111) (= (mask!5177 lt!15472) #b00000000000000000011111111111111) (= (mask!5177 lt!15472) #b00000000000000000111111111111111) (= (mask!5177 lt!15472) #b00000000000000001111111111111111) (= (mask!5177 lt!15472) #b00000000000000011111111111111111) (= (mask!5177 lt!15472) #b00000000000000111111111111111111) (= (mask!5177 lt!15472) #b00000000000001111111111111111111) (= (mask!5177 lt!15472) #b00000000000011111111111111111111) (= (mask!5177 lt!15472) #b00000000000111111111111111111111) (= (mask!5177 lt!15472) #b00000000001111111111111111111111) (= (mask!5177 lt!15472) #b00000000011111111111111111111111) (= (mask!5177 lt!15472) #b00000000111111111111111111111111) (= (mask!5177 lt!15472) #b00000001111111111111111111111111) (= (mask!5177 lt!15472) #b00000011111111111111111111111111) (= (mask!5177 lt!15472) #b00000111111111111111111111111111) (= (mask!5177 lt!15472) #b00001111111111111111111111111111) (= (mask!5177 lt!15472) #b00011111111111111111111111111111) (= (mask!5177 lt!15472) #b00111111111111111111111111111111)) (bvsle (mask!5177 lt!15472) #b00111111111111111111111111111111)))))

(assert (=> d!7063 d!7267))

(assert (=> b!40653 d!7211))

(declare-fun d!7269 () Bool)

(assert (=> d!7269 (= (size!1391 lt!15472) (bvadd (_size!169 lt!15472) (bvsdiv (bvadd (extraKeys!1695 lt!15472) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!40476 d!7269))

(declare-fun d!7271 () Bool)

(assert (=> d!7271 (= (apply!56 (+!66 lt!15685 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))) lt!15695) (get!706 (getValueByKey!101 (toList!551 (+!66 lt!15685 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472)))) lt!15695)))))

(declare-fun bs!1731 () Bool)

(assert (= bs!1731 d!7271))

(declare-fun m!34051 () Bool)

(assert (=> bs!1731 m!34051))

(assert (=> bs!1731 m!34051))

(declare-fun m!34053 () Bool)

(assert (=> bs!1731 m!34053))

(assert (=> b!40649 d!7271))

(declare-fun d!7273 () Bool)

(assert (=> d!7273 (= (apply!56 lt!15684 lt!15696) (get!706 (getValueByKey!101 (toList!551 lt!15684) lt!15696)))))

(declare-fun bs!1732 () Bool)

(assert (= bs!1732 d!7273))

(declare-fun m!34055 () Bool)

(assert (=> bs!1732 m!34055))

(assert (=> bs!1732 m!34055))

(declare-fun m!34057 () Bool)

(assert (=> bs!1732 m!34057))

(assert (=> b!40649 d!7273))

(declare-fun d!7275 () Bool)

(declare-fun e!26033 () Bool)

(assert (=> d!7275 e!26033))

(declare-fun res!24413 () Bool)

(assert (=> d!7275 (=> (not res!24413) (not e!26033))))

(declare-fun lt!15990 () ListLongMap!1071)

(assert (=> d!7275 (= res!24413 (contains!517 lt!15990 (_1!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))))))

(declare-fun lt!15988 () List!1070)

(assert (=> d!7275 (= lt!15990 (ListLongMap!1072 lt!15988))))

(declare-fun lt!15989 () Unit!982)

(declare-fun lt!15987 () Unit!982)

(assert (=> d!7275 (= lt!15989 lt!15987)))

(assert (=> d!7275 (= (getValueByKey!101 lt!15988 (_1!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!28 (List!1070 (_ BitVec 64) V!2099) Unit!982)

(assert (=> d!7275 (= lt!15987 (lemmaContainsTupThenGetReturnValue!28 lt!15988 (_1!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))))))

(declare-fun insertStrictlySorted!25 (List!1070 (_ BitVec 64) V!2099) List!1070)

(assert (=> d!7275 (= lt!15988 (insertStrictlySorted!25 (toList!551 lt!15679) (_1!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))))))

(assert (=> d!7275 (= (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))) lt!15990)))

(declare-fun b!41062 () Bool)

(declare-fun res!24414 () Bool)

(assert (=> b!41062 (=> (not res!24414) (not e!26033))))

(assert (=> b!41062 (= res!24414 (= (getValueByKey!101 (toList!551 lt!15990) (_1!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))))))))

(declare-fun b!41063 () Bool)

(declare-fun contains!521 (List!1070 tuple2!1490) Bool)

(assert (=> b!41063 (= e!26033 (contains!521 (toList!551 lt!15990) (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))))))

(assert (= (and d!7275 res!24413) b!41062))

(assert (= (and b!41062 res!24414) b!41063))

(declare-fun m!34069 () Bool)

(assert (=> d!7275 m!34069))

(declare-fun m!34071 () Bool)

(assert (=> d!7275 m!34071))

(declare-fun m!34073 () Bool)

(assert (=> d!7275 m!34073))

(declare-fun m!34075 () Bool)

(assert (=> d!7275 m!34075))

(declare-fun m!34077 () Bool)

(assert (=> b!41062 m!34077))

(declare-fun m!34079 () Bool)

(assert (=> b!41063 m!34079))

(assert (=> b!40649 d!7275))

(declare-fun d!7281 () Bool)

(declare-fun e!26044 () Bool)

(assert (=> d!7281 e!26044))

(declare-fun res!24423 () Bool)

(assert (=> d!7281 (=> res!24423 e!26044)))

(declare-fun lt!16006 () Bool)

(assert (=> d!7281 (= res!24423 (not lt!16006))))

(declare-fun lt!16008 () Bool)

(assert (=> d!7281 (= lt!16006 lt!16008)))

(declare-fun lt!16007 () Unit!982)

(declare-fun e!26043 () Unit!982)

(assert (=> d!7281 (= lt!16007 e!26043)))

(declare-fun c!5118 () Bool)

(assert (=> d!7281 (= c!5118 lt!16008)))

(declare-fun containsKey!70 (List!1070 (_ BitVec 64)) Bool)

(assert (=> d!7281 (= lt!16008 (containsKey!70 (toList!551 (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))) lt!15689))))

(assert (=> d!7281 (= (contains!517 (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))) lt!15689) lt!16006)))

(declare-fun b!41076 () Bool)

(declare-fun lt!16005 () Unit!982)

(assert (=> b!41076 (= e!26043 lt!16005)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!58 (List!1070 (_ BitVec 64)) Unit!982)

(assert (=> b!41076 (= lt!16005 (lemmaContainsKeyImpliesGetValueByKeyDefined!58 (toList!551 (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))) lt!15689))))

(declare-fun isDefined!59 (Option!107) Bool)

(assert (=> b!41076 (isDefined!59 (getValueByKey!101 (toList!551 (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))) lt!15689))))

(declare-fun b!41077 () Bool)

(declare-fun Unit!992 () Unit!982)

(assert (=> b!41077 (= e!26043 Unit!992)))

(declare-fun b!41078 () Bool)

(assert (=> b!41078 (= e!26044 (isDefined!59 (getValueByKey!101 (toList!551 (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472)))) lt!15689)))))

(assert (= (and d!7281 c!5118) b!41076))

(assert (= (and d!7281 (not c!5118)) b!41077))

(assert (= (and d!7281 (not res!24423)) b!41078))

(declare-fun m!34103 () Bool)

(assert (=> d!7281 m!34103))

(declare-fun m!34105 () Bool)

(assert (=> b!41076 m!34105))

(declare-fun m!34107 () Bool)

(assert (=> b!41076 m!34107))

(assert (=> b!41076 m!34107))

(declare-fun m!34109 () Bool)

(assert (=> b!41076 m!34109))

(assert (=> b!41078 m!34107))

(assert (=> b!41078 m!34107))

(assert (=> b!41078 m!34109))

(assert (=> b!40649 d!7281))

(declare-fun d!7289 () Bool)

(declare-fun e!26045 () Bool)

(assert (=> d!7289 e!26045))

(declare-fun res!24424 () Bool)

(assert (=> d!7289 (=> (not res!24424) (not e!26045))))

(declare-fun lt!16012 () ListLongMap!1071)

(assert (=> d!7289 (= res!24424 (contains!517 lt!16012 (_1!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472)))))))

(declare-fun lt!16010 () List!1070)

(assert (=> d!7289 (= lt!16012 (ListLongMap!1072 lt!16010))))

(declare-fun lt!16011 () Unit!982)

(declare-fun lt!16009 () Unit!982)

(assert (=> d!7289 (= lt!16011 lt!16009)))

(assert (=> d!7289 (= (getValueByKey!101 lt!16010 (_1!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472)))))))

(assert (=> d!7289 (= lt!16009 (lemmaContainsTupThenGetReturnValue!28 lt!16010 (_1!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472)))))))

(assert (=> d!7289 (= lt!16010 (insertStrictlySorted!25 (toList!551 lt!15688) (_1!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472)))))))

(assert (=> d!7289 (= (+!66 lt!15688 (tuple2!1491 lt!15687 (minValue!1722 lt!15472))) lt!16012)))

(declare-fun b!41079 () Bool)

(declare-fun res!24425 () Bool)

(assert (=> b!41079 (=> (not res!24425) (not e!26045))))

(assert (=> b!41079 (= res!24425 (= (getValueByKey!101 (toList!551 lt!16012) (_1!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15687 (minValue!1722 lt!15472))))))))

(declare-fun b!41080 () Bool)

(assert (=> b!41080 (= e!26045 (contains!521 (toList!551 lt!16012) (tuple2!1491 lt!15687 (minValue!1722 lt!15472))))))

(assert (= (and d!7289 res!24424) b!41079))

(assert (= (and b!41079 res!24425) b!41080))

(declare-fun m!34111 () Bool)

(assert (=> d!7289 m!34111))

(declare-fun m!34113 () Bool)

(assert (=> d!7289 m!34113))

(declare-fun m!34115 () Bool)

(assert (=> d!7289 m!34115))

(declare-fun m!34117 () Bool)

(assert (=> d!7289 m!34117))

(declare-fun m!34119 () Bool)

(assert (=> b!41079 m!34119))

(declare-fun m!34121 () Bool)

(assert (=> b!41080 m!34121))

(assert (=> b!40649 d!7289))

(declare-fun d!7291 () Bool)

(declare-fun e!26046 () Bool)

(assert (=> d!7291 e!26046))

(declare-fun res!24426 () Bool)

(assert (=> d!7291 (=> (not res!24426) (not e!26046))))

(declare-fun lt!16016 () ListLongMap!1071)

(assert (=> d!7291 (= res!24426 (contains!517 lt!16016 (_1!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472)))))))

(declare-fun lt!16014 () List!1070)

(assert (=> d!7291 (= lt!16016 (ListLongMap!1072 lt!16014))))

(declare-fun lt!16015 () Unit!982)

(declare-fun lt!16013 () Unit!982)

(assert (=> d!7291 (= lt!16015 lt!16013)))

(assert (=> d!7291 (= (getValueByKey!101 lt!16014 (_1!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472)))))))

(assert (=> d!7291 (= lt!16013 (lemmaContainsTupThenGetReturnValue!28 lt!16014 (_1!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472)))))))

(assert (=> d!7291 (= lt!16014 (insertStrictlySorted!25 (toList!551 lt!15685) (_1!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472)))))))

(assert (=> d!7291 (= (+!66 lt!15685 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))) lt!16016)))

(declare-fun b!41081 () Bool)

(declare-fun res!24427 () Bool)

(assert (=> b!41081 (=> (not res!24427) (not e!26046))))

(assert (=> b!41081 (= res!24427 (= (getValueByKey!101 (toList!551 lt!16016) (_1!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))))))))

(declare-fun b!41082 () Bool)

(assert (=> b!41082 (= e!26046 (contains!521 (toList!551 lt!16016) (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))))))

(assert (= (and d!7291 res!24426) b!41081))

(assert (= (and b!41081 res!24427) b!41082))

(declare-fun m!34123 () Bool)

(assert (=> d!7291 m!34123))

(declare-fun m!34125 () Bool)

(assert (=> d!7291 m!34125))

(declare-fun m!34127 () Bool)

(assert (=> d!7291 m!34127))

(declare-fun m!34129 () Bool)

(assert (=> d!7291 m!34129))

(declare-fun m!34131 () Bool)

(assert (=> b!41081 m!34131))

(declare-fun m!34133 () Bool)

(assert (=> b!41082 m!34133))

(assert (=> b!40649 d!7291))

(declare-fun d!7293 () Bool)

(assert (=> d!7293 (= (apply!56 (+!66 lt!15684 (tuple2!1491 lt!15686 (minValue!1722 lt!15472))) lt!15696) (apply!56 lt!15684 lt!15696))))

(declare-fun lt!16033 () Unit!982)

(declare-fun choose!251 (ListLongMap!1071 (_ BitVec 64) V!2099 (_ BitVec 64)) Unit!982)

(assert (=> d!7293 (= lt!16033 (choose!251 lt!15684 lt!15686 (minValue!1722 lt!15472) lt!15696))))

(declare-fun e!26053 () Bool)

(assert (=> d!7293 e!26053))

(declare-fun res!24430 () Bool)

(assert (=> d!7293 (=> (not res!24430) (not e!26053))))

(assert (=> d!7293 (= res!24430 (contains!517 lt!15684 lt!15696))))

(assert (=> d!7293 (= (addApplyDifferent!32 lt!15684 lt!15686 (minValue!1722 lt!15472) lt!15696) lt!16033)))

(declare-fun b!41094 () Bool)

(assert (=> b!41094 (= e!26053 (not (= lt!15696 lt!15686)))))

(assert (= (and d!7293 res!24430) b!41094))

(assert (=> d!7293 m!33551))

(declare-fun m!34135 () Bool)

(assert (=> d!7293 m!34135))

(assert (=> d!7293 m!33525))

(declare-fun m!34137 () Bool)

(assert (=> d!7293 m!34137))

(assert (=> d!7293 m!33525))

(assert (=> d!7293 m!33527))

(assert (=> b!40649 d!7293))

(declare-fun d!7295 () Bool)

(declare-fun e!26054 () Bool)

(assert (=> d!7295 e!26054))

(declare-fun res!24431 () Bool)

(assert (=> d!7295 (=> (not res!24431) (not e!26054))))

(declare-fun lt!16037 () ListLongMap!1071)

(assert (=> d!7295 (= res!24431 (contains!517 lt!16037 (_1!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472)))))))

(declare-fun lt!16035 () List!1070)

(assert (=> d!7295 (= lt!16037 (ListLongMap!1072 lt!16035))))

(declare-fun lt!16036 () Unit!982)

(declare-fun lt!16034 () Unit!982)

(assert (=> d!7295 (= lt!16036 lt!16034)))

(assert (=> d!7295 (= (getValueByKey!101 lt!16035 (_1!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472)))))))

(assert (=> d!7295 (= lt!16034 (lemmaContainsTupThenGetReturnValue!28 lt!16035 (_1!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472)))))))

(assert (=> d!7295 (= lt!16035 (insertStrictlySorted!25 (toList!551 lt!15684) (_1!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472))) (_2!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472)))))))

(assert (=> d!7295 (= (+!66 lt!15684 (tuple2!1491 lt!15686 (minValue!1722 lt!15472))) lt!16037)))

(declare-fun b!41095 () Bool)

(declare-fun res!24432 () Bool)

(assert (=> b!41095 (=> (not res!24432) (not e!26054))))

(assert (=> b!41095 (= res!24432 (= (getValueByKey!101 (toList!551 lt!16037) (_1!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 lt!15686 (minValue!1722 lt!15472))))))))

(declare-fun b!41096 () Bool)

(assert (=> b!41096 (= e!26054 (contains!521 (toList!551 lt!16037) (tuple2!1491 lt!15686 (minValue!1722 lt!15472))))))

(assert (= (and d!7295 res!24431) b!41095))

(assert (= (and b!41095 res!24432) b!41096))

(declare-fun m!34139 () Bool)

(assert (=> d!7295 m!34139))

(declare-fun m!34141 () Bool)

(assert (=> d!7295 m!34141))

(declare-fun m!34143 () Bool)

(assert (=> d!7295 m!34143))

(declare-fun m!34145 () Bool)

(assert (=> d!7295 m!34145))

(declare-fun m!34147 () Bool)

(assert (=> b!41095 m!34147))

(declare-fun m!34149 () Bool)

(assert (=> b!41096 m!34149))

(assert (=> b!40649 d!7295))

(declare-fun d!7297 () Bool)

(assert (=> d!7297 (contains!517 (+!66 lt!15679 (tuple2!1491 lt!15692 (zeroValue!1722 lt!15472))) lt!15689)))

(declare-fun lt!16044 () Unit!982)

(declare-fun choose!252 (ListLongMap!1071 (_ BitVec 64) V!2099 (_ BitVec 64)) Unit!982)

(assert (=> d!7297 (= lt!16044 (choose!252 lt!15679 lt!15692 (zeroValue!1722 lt!15472) lt!15689))))

(assert (=> d!7297 (contains!517 lt!15679 lt!15689)))

(assert (=> d!7297 (= (addStillContains!32 lt!15679 lt!15692 (zeroValue!1722 lt!15472) lt!15689) lt!16044)))

(declare-fun bs!1733 () Bool)

(assert (= bs!1733 d!7297))

(assert (=> bs!1733 m!33541))

(assert (=> bs!1733 m!33541))

(assert (=> bs!1733 m!33543))

(declare-fun m!34151 () Bool)

(assert (=> bs!1733 m!34151))

(declare-fun m!34153 () Bool)

(assert (=> bs!1733 m!34153))

(assert (=> b!40649 d!7297))

(declare-fun d!7299 () Bool)

(assert (=> d!7299 (= (apply!56 lt!15688 lt!15680) (get!706 (getValueByKey!101 (toList!551 lt!15688) lt!15680)))))

(declare-fun bs!1734 () Bool)

(assert (= bs!1734 d!7299))

(declare-fun m!34155 () Bool)

(assert (=> bs!1734 m!34155))

(assert (=> bs!1734 m!34155))

(declare-fun m!34157 () Bool)

(assert (=> bs!1734 m!34157))

(assert (=> b!40649 d!7299))

(declare-fun d!7301 () Bool)

(assert (=> d!7301 (= (apply!56 (+!66 lt!15688 (tuple2!1491 lt!15687 (minValue!1722 lt!15472))) lt!15680) (get!706 (getValueByKey!101 (toList!551 (+!66 lt!15688 (tuple2!1491 lt!15687 (minValue!1722 lt!15472)))) lt!15680)))))

(declare-fun bs!1735 () Bool)

(assert (= bs!1735 d!7301))

(declare-fun m!34159 () Bool)

(assert (=> bs!1735 m!34159))

(assert (=> bs!1735 m!34159))

(declare-fun m!34161 () Bool)

(assert (=> bs!1735 m!34161))

(assert (=> b!40649 d!7301))

(declare-fun d!7303 () Bool)

(assert (=> d!7303 (= (apply!56 (+!66 lt!15684 (tuple2!1491 lt!15686 (minValue!1722 lt!15472))) lt!15696) (get!706 (getValueByKey!101 (toList!551 (+!66 lt!15684 (tuple2!1491 lt!15686 (minValue!1722 lt!15472)))) lt!15696)))))

(declare-fun bs!1736 () Bool)

(assert (= bs!1736 d!7303))

(declare-fun m!34163 () Bool)

(assert (=> bs!1736 m!34163))

(assert (=> bs!1736 m!34163))

(declare-fun m!34165 () Bool)

(assert (=> bs!1736 m!34165))

(assert (=> b!40649 d!7303))

(declare-fun b!41227 () Bool)

(declare-fun e!26134 () Bool)

(assert (=> b!41227 (= e!26134 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (=> b!41227 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!3221 () Bool)

(declare-fun call!3224 () ListLongMap!1071)

(assert (=> bm!3221 (= call!3224 (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1804 lt!15472)))))

(declare-fun b!41228 () Bool)

(declare-fun e!26133 () Bool)

(declare-fun lt!16102 () ListLongMap!1071)

(assert (=> b!41228 (= e!26133 (= lt!16102 (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1804 lt!15472))))))

(declare-fun b!41229 () Bool)

(declare-fun isEmpty!237 (ListLongMap!1071) Bool)

(assert (=> b!41229 (= e!26133 (isEmpty!237 lt!16102))))

(declare-fun d!7305 () Bool)

(declare-fun e!26137 () Bool)

(assert (=> d!7305 e!26137))

(declare-fun res!24489 () Bool)

(assert (=> d!7305 (=> (not res!24489) (not e!26137))))

(assert (=> d!7305 (= res!24489 (not (contains!517 lt!16102 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!26138 () ListLongMap!1071)

(assert (=> d!7305 (= lt!16102 e!26138)))

(declare-fun c!5163 () Bool)

(assert (=> d!7305 (= c!5163 (bvsge #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7305 (validMask!0 (mask!5177 lt!15472))))

(assert (=> d!7305 (= (getCurrentListMapNoExtraKeys!35 (_keys!3293 lt!15472) (_values!1787 lt!15472) (mask!5177 lt!15472) (extraKeys!1695 lt!15472) (zeroValue!1722 lt!15472) (minValue!1722 lt!15472) #b00000000000000000000000000000000 (defaultEntry!1804 lt!15472)) lt!16102)))

(declare-fun b!41230 () Bool)

(declare-fun e!26135 () ListLongMap!1071)

(assert (=> b!41230 (= e!26135 call!3224)))

(declare-fun b!41231 () Bool)

(assert (=> b!41231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(assert (=> b!41231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1377 (_values!1787 lt!15472))))))

(declare-fun e!26136 () Bool)

(assert (=> b!41231 (= e!26136 (= (apply!56 lt!16102 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)) (get!705 (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000) (dynLambda!191 (defaultEntry!1804 lt!15472) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!41232 () Bool)

(declare-fun e!26139 () Bool)

(assert (=> b!41232 (= e!26137 e!26139)))

(declare-fun c!5161 () Bool)

(assert (=> b!41232 (= c!5161 e!26134)))

(declare-fun res!24488 () Bool)

(assert (=> b!41232 (=> (not res!24488) (not e!26134))))

(assert (=> b!41232 (= res!24488 (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(declare-fun b!41233 () Bool)

(assert (=> b!41233 (= e!26138 (ListLongMap!1072 Nil!1067))))

(declare-fun b!41234 () Bool)

(assert (=> b!41234 (= e!26139 e!26133)))

(declare-fun c!5160 () Bool)

(assert (=> b!41234 (= c!5160 (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(declare-fun b!41235 () Bool)

(declare-fun res!24490 () Bool)

(assert (=> b!41235 (=> (not res!24490) (not e!26137))))

(assert (=> b!41235 (= res!24490 (not (contains!517 lt!16102 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!41236 () Bool)

(declare-fun lt!16097 () Unit!982)

(declare-fun lt!16098 () Unit!982)

(assert (=> b!41236 (= lt!16097 lt!16098)))

(declare-fun lt!16096 () (_ BitVec 64))

(declare-fun lt!16100 () V!2099)

(declare-fun lt!16101 () ListLongMap!1071)

(declare-fun lt!16099 () (_ BitVec 64))

(assert (=> b!41236 (not (contains!517 (+!66 lt!16101 (tuple2!1491 lt!16099 lt!16100)) lt!16096))))

(declare-fun addStillNotContains!9 (ListLongMap!1071 (_ BitVec 64) V!2099 (_ BitVec 64)) Unit!982)

(assert (=> b!41236 (= lt!16098 (addStillNotContains!9 lt!16101 lt!16099 lt!16100 lt!16096))))

(assert (=> b!41236 (= lt!16096 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!41236 (= lt!16100 (get!705 (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000) (dynLambda!191 (defaultEntry!1804 lt!15472) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!41236 (= lt!16099 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))

(assert (=> b!41236 (= lt!16101 call!3224)))

(assert (=> b!41236 (= e!26135 (+!66 call!3224 (tuple2!1491 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) (get!705 (select (arr!1240 (_values!1787 lt!15472)) #b00000000000000000000000000000000) (dynLambda!191 (defaultEntry!1804 lt!15472) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!41237 () Bool)

(assert (=> b!41237 (= e!26139 e!26136)))

(assert (=> b!41237 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1376 (_keys!3293 lt!15472))))))

(declare-fun res!24491 () Bool)

(assert (=> b!41237 (= res!24491 (contains!517 lt!16102 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (=> b!41237 (=> (not res!24491) (not e!26136))))

(declare-fun b!41238 () Bool)

(assert (=> b!41238 (= e!26138 e!26135)))

(declare-fun c!5162 () Bool)

(assert (=> b!41238 (= c!5162 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (= (and d!7305 c!5163) b!41233))

(assert (= (and d!7305 (not c!5163)) b!41238))

(assert (= (and b!41238 c!5162) b!41236))

(assert (= (and b!41238 (not c!5162)) b!41230))

(assert (= (or b!41236 b!41230) bm!3221))

(assert (= (and d!7305 res!24489) b!41235))

(assert (= (and b!41235 res!24490) b!41232))

(assert (= (and b!41232 res!24488) b!41227))

(assert (= (and b!41232 c!5161) b!41237))

(assert (= (and b!41232 (not c!5161)) b!41234))

(assert (= (and b!41237 res!24491) b!41231))

(assert (= (and b!41234 c!5160) b!41228))

(assert (= (and b!41234 (not c!5160)) b!41229))

(declare-fun b_lambda!2105 () Bool)

(assert (=> (not b_lambda!2105) (not b!41231)))

(assert (=> b!41231 t!3940))

(declare-fun b_and!2393 () Bool)

(assert (= b_and!2379 (and (=> t!3940 result!1455) b_and!2393)))

(declare-fun b_lambda!2107 () Bool)

(assert (=> (not b_lambda!2107) (not b!41236)))

(assert (=> b!41236 t!3940))

(declare-fun b_and!2395 () Bool)

(assert (= b_and!2393 (and (=> t!3940 result!1455) b_and!2395)))

(declare-fun m!34301 () Bool)

(assert (=> b!41236 m!34301))

(assert (=> b!41236 m!34301))

(declare-fun m!34303 () Bool)

(assert (=> b!41236 m!34303))

(declare-fun m!34305 () Bool)

(assert (=> b!41236 m!34305))

(assert (=> b!41236 m!33517))

(assert (=> b!41236 m!33513))

(assert (=> b!41236 m!33519))

(assert (=> b!41236 m!33517))

(declare-fun m!34307 () Bool)

(assert (=> b!41236 m!34307))

(assert (=> b!41236 m!33435))

(assert (=> b!41236 m!33513))

(declare-fun m!34309 () Bool)

(assert (=> bm!3221 m!34309))

(assert (=> b!41237 m!33435))

(assert (=> b!41237 m!33435))

(declare-fun m!34311 () Bool)

(assert (=> b!41237 m!34311))

(declare-fun m!34313 () Bool)

(assert (=> d!7305 m!34313))

(assert (=> d!7305 m!33425))

(declare-fun m!34315 () Bool)

(assert (=> b!41235 m!34315))

(assert (=> b!41228 m!34309))

(declare-fun m!34317 () Bool)

(assert (=> b!41229 m!34317))

(assert (=> b!41231 m!33517))

(assert (=> b!41231 m!33513))

(assert (=> b!41231 m!33519))

(assert (=> b!41231 m!33517))

(assert (=> b!41231 m!33435))

(declare-fun m!34319 () Bool)

(assert (=> b!41231 m!34319))

(assert (=> b!41231 m!33435))

(assert (=> b!41231 m!33513))

(assert (=> b!41238 m!33435))

(assert (=> b!41238 m!33435))

(assert (=> b!41238 m!33445))

(assert (=> b!41227 m!33435))

(assert (=> b!41227 m!33435))

(assert (=> b!41227 m!33445))

(assert (=> b!40649 d!7305))

(declare-fun d!7355 () Bool)

(assert (=> d!7355 (= (apply!56 (+!66 lt!15685 (tuple2!1491 lt!15683 (zeroValue!1722 lt!15472))) lt!15695) (apply!56 lt!15685 lt!15695))))

(declare-fun lt!16105 () Unit!982)

(assert (=> d!7355 (= lt!16105 (choose!251 lt!15685 lt!15683 (zeroValue!1722 lt!15472) lt!15695))))

(declare-fun e!26145 () Bool)

(assert (=> d!7355 e!26145))

(declare-fun res!24495 () Bool)

(assert (=> d!7355 (=> (not res!24495) (not e!26145))))

(assert (=> d!7355 (= res!24495 (contains!517 lt!15685 lt!15695))))

(assert (=> d!7355 (= (addApplyDifferent!32 lt!15685 lt!15683 (zeroValue!1722 lt!15472) lt!15695) lt!16105)))

(declare-fun b!41248 () Bool)

(assert (=> b!41248 (= e!26145 (not (= lt!15695 lt!15683)))))

(assert (= (and d!7355 res!24495) b!41248))

(assert (=> d!7355 m!33539))

(declare-fun m!34321 () Bool)

(assert (=> d!7355 m!34321))

(assert (=> d!7355 m!33535))

(declare-fun m!34323 () Bool)

(assert (=> d!7355 m!34323))

(assert (=> d!7355 m!33535))

(assert (=> d!7355 m!33545))

(assert (=> b!40649 d!7355))

(declare-fun d!7357 () Bool)

(assert (=> d!7357 (= (apply!56 (+!66 lt!15688 (tuple2!1491 lt!15687 (minValue!1722 lt!15472))) lt!15680) (apply!56 lt!15688 lt!15680))))

(declare-fun lt!16106 () Unit!982)

(assert (=> d!7357 (= lt!16106 (choose!251 lt!15688 lt!15687 (minValue!1722 lt!15472) lt!15680))))

(declare-fun e!26146 () Bool)

(assert (=> d!7357 e!26146))

(declare-fun res!24496 () Bool)

(assert (=> d!7357 (=> (not res!24496) (not e!26146))))

(assert (=> d!7357 (= res!24496 (contains!517 lt!15688 lt!15680))))

(assert (=> d!7357 (= (addApplyDifferent!32 lt!15688 lt!15687 (minValue!1722 lt!15472) lt!15680) lt!16106)))

(declare-fun b!41249 () Bool)

(assert (=> b!41249 (= e!26146 (not (= lt!15680 lt!15687)))))

(assert (= (and d!7357 res!24496) b!41249))

(assert (=> d!7357 m!33531))

(declare-fun m!34333 () Bool)

(assert (=> d!7357 m!34333))

(assert (=> d!7357 m!33523))

(declare-fun m!34335 () Bool)

(assert (=> d!7357 m!34335))

(assert (=> d!7357 m!33523))

(assert (=> d!7357 m!33537))

(assert (=> b!40649 d!7357))

(declare-fun d!7361 () Bool)

(assert (=> d!7361 (= (apply!56 lt!15685 lt!15695) (get!706 (getValueByKey!101 (toList!551 lt!15685) lt!15695)))))

(declare-fun bs!1746 () Bool)

(assert (= bs!1746 d!7361))

(declare-fun m!34337 () Bool)

(assert (=> bs!1746 m!34337))

(assert (=> bs!1746 m!34337))

(declare-fun m!34339 () Bool)

(assert (=> bs!1746 m!34339))

(assert (=> b!40649 d!7361))

(assert (=> b!40487 d!7211))

(declare-fun d!7363 () Bool)

(assert (=> d!7363 (= (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!40506 d!7363))

(assert (=> d!7121 d!7123))

(declare-fun d!7365 () Bool)

(assert (=> d!7365 (arrayContainsKey!0 lt!15477 lt!15550 #b00000000000000000000000000000000)))

(assert (=> d!7365 true))

(declare-fun _$60!344 () Unit!982)

(assert (=> d!7365 (= (choose!13 lt!15477 lt!15550 #b00000000000000000000000000000000) _$60!344)))

(declare-fun bs!1747 () Bool)

(assert (= bs!1747 d!7365))

(assert (=> bs!1747 m!33383))

(assert (=> d!7121 d!7365))

(assert (=> b!40475 d!7269))

(declare-fun b!41250 () Bool)

(declare-fun e!26147 () (_ BitVec 32))

(declare-fun e!26148 () (_ BitVec 32))

(assert (=> b!41250 (= e!26147 e!26148)))

(declare-fun c!5168 () Bool)

(assert (=> b!41250 (= c!5168 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!7367 () Bool)

(declare-fun lt!16107 () (_ BitVec 32))

(assert (=> d!7367 (and (bvsge lt!16107 #b00000000000000000000000000000000) (bvsle lt!16107 (bvsub (size!1376 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!7367 (= lt!16107 e!26147)))

(declare-fun c!5167 () Bool)

(assert (=> d!7367 (= c!5167 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7367 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1376 lt!15477)))))

(assert (=> d!7367 (= (arrayCountValidKeys!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!16107)))

(declare-fun bm!3222 () Bool)

(declare-fun call!3225 () (_ BitVec 32))

(assert (=> bm!3222 (= call!3225 (arrayCountValidKeys!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!41251 () Bool)

(assert (=> b!41251 (= e!26148 (bvadd #b00000000000000000000000000000001 call!3225))))

(declare-fun b!41252 () Bool)

(assert (=> b!41252 (= e!26148 call!3225)))

(declare-fun b!41253 () Bool)

(assert (=> b!41253 (= e!26147 #b00000000000000000000000000000000)))

(assert (= (and d!7367 c!5167) b!41253))

(assert (= (and d!7367 (not c!5167)) b!41250))

(assert (= (and b!41250 c!5168) b!41251))

(assert (= (and b!41250 (not c!5168)) b!41252))

(assert (= (or b!41251 b!41252) bm!3222))

(declare-fun m!34341 () Bool)

(assert (=> b!41250 m!34341))

(assert (=> b!41250 m!34341))

(declare-fun m!34343 () Bool)

(assert (=> b!41250 m!34343))

(declare-fun m!34345 () Bool)

(assert (=> bm!3222 m!34345))

(assert (=> bm!3130 d!7367))

(declare-fun d!7369 () Bool)

(declare-fun e!26149 () Bool)

(assert (=> d!7369 e!26149))

(declare-fun res!24498 () Bool)

(assert (=> d!7369 (=> (not res!24498) (not e!26149))))

(declare-fun lt!16111 () ListLongMap!1071)

(assert (=> d!7369 (= res!24498 (contains!517 lt!16111 (_1!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))))))

(declare-fun lt!16109 () List!1070)

(assert (=> d!7369 (= lt!16111 (ListLongMap!1072 lt!16109))))

(declare-fun lt!16110 () Unit!982)

(declare-fun lt!16108 () Unit!982)

(assert (=> d!7369 (= lt!16110 lt!16108)))

(assert (=> d!7369 (= (getValueByKey!101 lt!16109 (_1!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))) (Some!106 (_2!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))))))

(assert (=> d!7369 (= lt!16108 (lemmaContainsTupThenGetReturnValue!28 lt!16109 (_1!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))) (_2!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))))))

(assert (=> d!7369 (= lt!16109 (insertStrictlySorted!25 (toList!551 (ite c!4999 call!3170 (ite c!4998 call!3168 call!3169))) (_1!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))) (_2!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))))))

(assert (=> d!7369 (= (+!66 (ite c!4999 call!3170 (ite c!4998 call!3168 call!3169)) (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))) lt!16111)))

(declare-fun b!41254 () Bool)

(declare-fun res!24499 () Bool)

(assert (=> b!41254 (=> (not res!24499) (not e!26149))))

(assert (=> b!41254 (= res!24499 (= (getValueByKey!101 (toList!551 lt!16111) (_1!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))) (Some!106 (_2!755 (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))))))))

(declare-fun b!41255 () Bool)

(assert (=> b!41255 (= e!26149 (contains!521 (toList!551 lt!16111) (ite (or c!4999 c!4998) (tuple2!1491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1722 lt!15472)) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))))))

(assert (= (and d!7369 res!24498) b!41254))

(assert (= (and b!41254 res!24499) b!41255))

(declare-fun m!34347 () Bool)

(assert (=> d!7369 m!34347))

(declare-fun m!34349 () Bool)

(assert (=> d!7369 m!34349))

(declare-fun m!34351 () Bool)

(assert (=> d!7369 m!34351))

(declare-fun m!34353 () Bool)

(assert (=> d!7369 m!34353))

(declare-fun m!34355 () Bool)

(assert (=> b!41254 m!34355))

(declare-fun m!34357 () Bool)

(assert (=> b!41255 m!34357))

(assert (=> bm!3164 d!7369))

(assert (=> b!40496 d!7363))

(assert (=> d!7097 d!7007))

(declare-fun d!7371 () Bool)

(declare-fun res!24500 () Bool)

(declare-fun e!26150 () Bool)

(assert (=> d!7371 (=> res!24500 e!26150)))

(assert (=> d!7371 (= res!24500 (= (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15550))))

(assert (=> d!7371 (= (arrayContainsKey!0 lt!15477 lt!15550 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!26150)))

(declare-fun b!41256 () Bool)

(declare-fun e!26151 () Bool)

(assert (=> b!41256 (= e!26150 e!26151)))

(declare-fun res!24501 () Bool)

(assert (=> b!41256 (=> (not res!24501) (not e!26151))))

(assert (=> b!41256 (= res!24501 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1376 lt!15477)))))

(declare-fun b!41257 () Bool)

(assert (=> b!41257 (= e!26151 (arrayContainsKey!0 lt!15477 lt!15550 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!7371 (not res!24500)) b!41256))

(assert (= (and b!41256 res!24501) b!41257))

(assert (=> d!7371 m!33453))

(declare-fun m!34359 () Bool)

(assert (=> b!41257 m!34359))

(assert (=> b!40701 d!7371))

(declare-fun d!7373 () Bool)

(assert (not d!7373))

(assert (=> b!40461 d!7373))

(declare-fun d!7375 () Bool)

(declare-fun e!26153 () Bool)

(assert (=> d!7375 e!26153))

(declare-fun res!24502 () Bool)

(assert (=> d!7375 (=> res!24502 e!26153)))

(declare-fun lt!16117 () Bool)

(assert (=> d!7375 (= res!24502 (not lt!16117))))

(declare-fun lt!16119 () Bool)

(assert (=> d!7375 (= lt!16117 lt!16119)))

(declare-fun lt!16118 () Unit!982)

(declare-fun e!26152 () Unit!982)

(assert (=> d!7375 (= lt!16118 e!26152)))

(declare-fun c!5169 () Bool)

(assert (=> d!7375 (= c!5169 lt!16119)))

(assert (=> d!7375 (= lt!16119 (containsKey!70 (toList!551 lt!15693) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!7375 (= (contains!517 lt!15693 #b0000000000000000000000000000000000000000000000000000000000000000) lt!16117)))

(declare-fun b!41258 () Bool)

(declare-fun lt!16116 () Unit!982)

(assert (=> b!41258 (= e!26152 lt!16116)))

(assert (=> b!41258 (= lt!16116 (lemmaContainsKeyImpliesGetValueByKeyDefined!58 (toList!551 lt!15693) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!41258 (isDefined!59 (getValueByKey!101 (toList!551 lt!15693) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41259 () Bool)

(declare-fun Unit!995 () Unit!982)

(assert (=> b!41259 (= e!26152 Unit!995)))

(declare-fun b!41260 () Bool)

(assert (=> b!41260 (= e!26153 (isDefined!59 (getValueByKey!101 (toList!551 lt!15693) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7375 c!5169) b!41258))

(assert (= (and d!7375 (not c!5169)) b!41259))

(assert (= (and d!7375 (not res!24502)) b!41260))

(declare-fun m!34361 () Bool)

(assert (=> d!7375 m!34361))

(declare-fun m!34363 () Bool)

(assert (=> b!41258 m!34363))

(declare-fun m!34365 () Bool)

(assert (=> b!41258 m!34365))

(assert (=> b!41258 m!34365))

(declare-fun m!34367 () Bool)

(assert (=> b!41258 m!34367))

(assert (=> b!41260 m!34365))

(assert (=> b!41260 m!34365))

(assert (=> b!41260 m!34367))

(assert (=> bm!3163 d!7375))

(assert (=> d!7103 d!7267))

(assert (=> b!40529 d!7363))

(declare-fun b!41264 () Bool)

(declare-fun e!26156 () (_ BitVec 32))

(declare-fun e!26157 () (_ BitVec 32))

(assert (=> b!41264 (= e!26156 e!26157)))

(declare-fun c!5172 () Bool)

(assert (=> b!41264 (= c!5172 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!7379 () Bool)

(declare-fun lt!16126 () (_ BitVec 32))

(assert (=> d!7379 (and (bvsge lt!16126 #b00000000000000000000000000000000) (bvsle lt!16126 (bvsub (size!1376 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!7379 (= lt!16126 e!26156)))

(declare-fun c!5171 () Bool)

(assert (=> d!7379 (= c!5171 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7379 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1376 (_keys!3293 lt!15472)) (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7379 (= (arrayCountValidKeys!0 (_keys!3293 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))) lt!16126)))

(declare-fun bm!3223 () Bool)

(declare-fun call!3226 () (_ BitVec 32))

(assert (=> bm!3223 (= call!3226 (arrayCountValidKeys!0 (_keys!3293 lt!15472) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))))))

(declare-fun b!41265 () Bool)

(assert (=> b!41265 (= e!26157 (bvadd #b00000000000000000000000000000001 call!3226))))

(declare-fun b!41266 () Bool)

(assert (=> b!41266 (= e!26157 call!3226)))

(declare-fun b!41267 () Bool)

(assert (=> b!41267 (= e!26156 #b00000000000000000000000000000000)))

(assert (= (and d!7379 c!5171) b!41267))

(assert (= (and d!7379 (not c!5171)) b!41264))

(assert (= (and b!41264 c!5172) b!41265))

(assert (= (and b!41264 (not c!5172)) b!41266))

(assert (= (or b!41265 b!41266) bm!3223))

(assert (=> b!41264 m!34039))

(assert (=> b!41264 m!34039))

(assert (=> b!41264 m!34041))

(declare-fun m!34377 () Bool)

(assert (=> bm!3223 m!34377))

(assert (=> bm!3131 d!7379))

(declare-fun d!7383 () Bool)

(declare-fun e!26161 () Bool)

(assert (=> d!7383 e!26161))

(declare-fun res!24505 () Bool)

(assert (=> d!7383 (=> res!24505 e!26161)))

(declare-fun lt!16132 () Bool)

(assert (=> d!7383 (= res!24505 (not lt!16132))))

(declare-fun lt!16134 () Bool)

(assert (=> d!7383 (= lt!16132 lt!16134)))

(declare-fun lt!16133 () Unit!982)

(declare-fun e!26160 () Unit!982)

(assert (=> d!7383 (= lt!16133 e!26160)))

(declare-fun c!5174 () Bool)

(assert (=> d!7383 (= c!5174 lt!16134)))

(assert (=> d!7383 (= lt!16134 (containsKey!70 (toList!551 lt!15693) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (=> d!7383 (= (contains!517 lt!15693 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)) lt!16132)))

(declare-fun b!41271 () Bool)

(declare-fun lt!16131 () Unit!982)

(assert (=> b!41271 (= e!26160 lt!16131)))

(assert (=> b!41271 (= lt!16131 (lemmaContainsKeyImpliesGetValueByKeyDefined!58 (toList!551 lt!15693) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(assert (=> b!41271 (isDefined!59 (getValueByKey!101 (toList!551 lt!15693) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun b!41272 () Bool)

(declare-fun Unit!996 () Unit!982)

(assert (=> b!41272 (= e!26160 Unit!996)))

(declare-fun b!41273 () Bool)

(assert (=> b!41273 (= e!26161 (isDefined!59 (getValueByKey!101 (toList!551 lt!15693) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000))))))

(assert (= (and d!7383 c!5174) b!41271))

(assert (= (and d!7383 (not c!5174)) b!41272))

(assert (= (and d!7383 (not res!24505)) b!41273))

(assert (=> d!7383 m!33435))

(declare-fun m!34385 () Bool)

(assert (=> d!7383 m!34385))

(assert (=> b!41271 m!33435))

(declare-fun m!34387 () Bool)

(assert (=> b!41271 m!34387))

(assert (=> b!41271 m!33435))

(assert (=> b!41271 m!33857))

(assert (=> b!41271 m!33857))

(declare-fun m!34389 () Bool)

(assert (=> b!41271 m!34389))

(assert (=> b!41273 m!33435))

(assert (=> b!41273 m!33857))

(assert (=> b!41273 m!33857))

(assert (=> b!41273 m!34389))

(assert (=> b!40660 d!7383))

(declare-fun d!7387 () Bool)

(assert (=> d!7387 (= (apply!56 lt!15693 #b1000000000000000000000000000000000000000000000000000000000000000) (get!706 (getValueByKey!101 (toList!551 lt!15693) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1749 () Bool)

(assert (= bs!1749 d!7387))

(declare-fun m!34393 () Bool)

(assert (=> bs!1749 m!34393))

(assert (=> bs!1749 m!34393))

(declare-fun m!34395 () Bool)

(assert (=> bs!1749 m!34395))

(assert (=> b!40643 d!7387))

(declare-fun d!7391 () Bool)

(assert (=> d!7391 (= (content!31 Nil!1068) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!7061 d!7391))

(declare-fun d!7395 () Bool)

(declare-fun lt!16139 () Bool)

(assert (=> d!7395 (= lt!16139 (select (content!31 (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!26167 () Bool)

(assert (=> d!7395 (= lt!16139 e!26167)))

(declare-fun res!24509 () Bool)

(assert (=> d!7395 (=> (not res!24509) (not e!26167))))

(assert (=> d!7395 (= res!24509 ((_ is Cons!1067) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)))))

(assert (=> d!7395 (= (contains!513 (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!16139)))

(declare-fun b!41282 () Bool)

(declare-fun e!26168 () Bool)

(assert (=> b!41282 (= e!26167 e!26168)))

(declare-fun res!24508 () Bool)

(assert (=> b!41282 (=> res!24508 e!26168)))

(assert (=> b!41282 (= res!24508 (= (h!1641 (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41283 () Bool)

(assert (=> b!41283 (= e!26168 (contains!513 (t!3934 (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!7395 res!24509) b!41282))

(assert (= (and b!41282 (not res!24508)) b!41283))

(declare-fun m!34403 () Bool)

(assert (=> d!7395 m!34403))

(assert (=> d!7395 m!33453))

(declare-fun m!34407 () Bool)

(assert (=> d!7395 m!34407))

(assert (=> b!41283 m!33453))

(declare-fun m!34413 () Bool)

(assert (=> b!41283 m!34413))

(assert (=> b!40495 d!7395))

(declare-fun d!7397 () Bool)

(declare-fun e!26169 () Bool)

(assert (=> d!7397 e!26169))

(declare-fun res!24510 () Bool)

(assert (=> d!7397 (=> (not res!24510) (not e!26169))))

(declare-fun lt!16143 () ListLongMap!1071)

(assert (=> d!7397 (= res!24510 (contains!517 lt!16143 (_1!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))))))

(declare-fun lt!16141 () List!1070)

(assert (=> d!7397 (= lt!16143 (ListLongMap!1072 lt!16141))))

(declare-fun lt!16142 () Unit!982)

(declare-fun lt!16140 () Unit!982)

(assert (=> d!7397 (= lt!16142 lt!16140)))

(assert (=> d!7397 (= (getValueByKey!101 lt!16141 (_1!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))))))

(assert (=> d!7397 (= lt!16140 (lemmaContainsTupThenGetReturnValue!28 lt!16141 (_1!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))) (_2!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))))))

(assert (=> d!7397 (= lt!16141 (insertStrictlySorted!25 (toList!551 call!3166) (_1!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))) (_2!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))))))

(assert (=> d!7397 (= (+!66 call!3166 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))) lt!16143)))

(declare-fun b!41284 () Bool)

(declare-fun res!24511 () Bool)

(assert (=> b!41284 (=> (not res!24511) (not e!26169))))

(assert (=> b!41284 (= res!24511 (= (getValueByKey!101 (toList!551 lt!16143) (_1!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472)))) (Some!106 (_2!755 (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))))))

(declare-fun b!41285 () Bool)

(assert (=> b!41285 (= e!26169 (contains!521 (toList!551 lt!16143) (tuple2!1491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1722 lt!15472))))))

(assert (= (and d!7397 res!24510) b!41284))

(assert (= (and b!41284 res!24511) b!41285))

(declare-fun m!34419 () Bool)

(assert (=> d!7397 m!34419))

(declare-fun m!34421 () Bool)

(assert (=> d!7397 m!34421))

(declare-fun m!34423 () Bool)

(assert (=> d!7397 m!34423))

(declare-fun m!34425 () Bool)

(assert (=> d!7397 m!34425))

(declare-fun m!34427 () Bool)

(assert (=> b!41284 m!34427))

(declare-fun m!34429 () Bool)

(assert (=> b!41285 m!34429))

(assert (=> b!40644 d!7397))

(assert (=> b!40486 d!7211))

(declare-fun b!41286 () Bool)

(declare-fun e!26171 () Bool)

(declare-fun call!3227 () Bool)

(assert (=> b!41286 (= e!26171 call!3227)))

(declare-fun bm!3224 () Bool)

(assert (=> bm!3224 (= call!3227 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15477 mask!853))))

(declare-fun b!41287 () Bool)

(declare-fun e!26172 () Bool)

(assert (=> b!41287 (= e!26172 e!26171)))

(declare-fun lt!16146 () (_ BitVec 64))

(assert (=> b!41287 (= lt!16146 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!16144 () Unit!982)

(assert (=> b!41287 (= lt!16144 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15477 lt!16146 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!41287 (arrayContainsKey!0 lt!15477 lt!16146 #b00000000000000000000000000000000)))

(declare-fun lt!16145 () Unit!982)

(assert (=> b!41287 (= lt!16145 lt!16144)))

(declare-fun res!24512 () Bool)

(assert (=> b!41287 (= res!24512 (= (seekEntryOrOpen!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!15477 mask!853) (Found!184 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!41287 (=> (not res!24512) (not e!26171))))

(declare-fun d!7401 () Bool)

(declare-fun res!24513 () Bool)

(declare-fun e!26170 () Bool)

(assert (=> d!7401 (=> res!24513 e!26170)))

(assert (=> d!7401 (= res!24513 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1376 lt!15477)))))

(assert (=> d!7401 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!15477 mask!853) e!26170)))

(declare-fun b!41288 () Bool)

(assert (=> b!41288 (= e!26172 call!3227)))

(declare-fun b!41289 () Bool)

(assert (=> b!41289 (= e!26170 e!26172)))

(declare-fun c!5178 () Bool)

(assert (=> b!41289 (= c!5178 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!7401 (not res!24513)) b!41289))

(assert (= (and b!41289 c!5178) b!41287))

(assert (= (and b!41289 (not c!5178)) b!41288))

(assert (= (and b!41287 res!24512) b!41286))

(assert (= (or b!41286 b!41288) bm!3224))

(declare-fun m!34431 () Bool)

(assert (=> bm!3224 m!34431))

(assert (=> b!41287 m!34341))

(declare-fun m!34435 () Bool)

(assert (=> b!41287 m!34435))

(declare-fun m!34437 () Bool)

(assert (=> b!41287 m!34437))

(assert (=> b!41287 m!34341))

(declare-fun m!34439 () Bool)

(assert (=> b!41287 m!34439))

(assert (=> b!41289 m!34341))

(assert (=> b!41289 m!34341))

(assert (=> b!41289 m!34343))

(assert (=> bm!3132 d!7401))

(declare-fun d!7407 () Bool)

(assert (=> d!7407 (= (apply!56 lt!15693 #b0000000000000000000000000000000000000000000000000000000000000000) (get!706 (getValueByKey!101 (toList!551 lt!15693) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1751 () Bool)

(assert (= bs!1751 d!7407))

(assert (=> bs!1751 m!34365))

(assert (=> bs!1751 m!34365))

(declare-fun m!34441 () Bool)

(assert (=> bs!1751 m!34441))

(assert (=> b!40658 d!7407))

(assert (=> b!40492 d!7363))

(declare-fun d!7409 () Bool)

(assert (=> d!7409 (arrayContainsKey!0 lt!15477 lt!15577 #b00000000000000000000000000000000)))

(declare-fun lt!16147 () Unit!982)

(assert (=> d!7409 (= lt!16147 (choose!13 lt!15477 lt!15577 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!7409 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!7409 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!15477 lt!15577 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!16147)))

(declare-fun bs!1752 () Bool)

(assert (= bs!1752 d!7409))

(assert (=> bs!1752 m!33479))

(declare-fun m!34443 () Bool)

(assert (=> bs!1752 m!34443))

(assert (=> b!40527 d!7409))

(declare-fun d!7411 () Bool)

(declare-fun res!24514 () Bool)

(declare-fun e!26175 () Bool)

(assert (=> d!7411 (=> res!24514 e!26175)))

(assert (=> d!7411 (= res!24514 (= (select (arr!1239 lt!15477) #b00000000000000000000000000000000) lt!15577))))

(assert (=> d!7411 (= (arrayContainsKey!0 lt!15477 lt!15577 #b00000000000000000000000000000000) e!26175)))

(declare-fun b!41294 () Bool)

(declare-fun e!26176 () Bool)

(assert (=> b!41294 (= e!26175 e!26176)))

(declare-fun res!24515 () Bool)

(assert (=> b!41294 (=> (not res!24515) (not e!26176))))

(assert (=> b!41294 (= res!24515 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 lt!15477)))))

(declare-fun b!41295 () Bool)

(assert (=> b!41295 (= e!26176 (arrayContainsKey!0 lt!15477 lt!15577 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7411 (not res!24514)) b!41294))

(assert (= (and b!41294 res!24515) b!41295))

(assert (=> d!7411 m!33313))

(declare-fun m!34445 () Bool)

(assert (=> b!41295 m!34445))

(assert (=> b!40527 d!7411))

(declare-fun b!41297 () Bool)

(declare-fun c!5181 () Bool)

(declare-fun lt!16148 () (_ BitVec 64))

(assert (=> b!41297 (= c!5181 (= lt!16148 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!26178 () SeekEntryResult!184)

(declare-fun e!26179 () SeekEntryResult!184)

(assert (=> b!41297 (= e!26178 e!26179)))

(declare-fun lt!16149 () SeekEntryResult!184)

(declare-fun b!41298 () Bool)

(assert (=> b!41298 (= e!26179 (seekKeyOrZeroReturnVacant!0 (x!7731 lt!16149) (index!2860 lt!16149) (index!2860 lt!16149) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15477 mask!853))))

(declare-fun b!41299 () Bool)

(declare-fun e!26177 () SeekEntryResult!184)

(assert (=> b!41299 (= e!26177 e!26178)))

(assert (=> b!41299 (= lt!16148 (select (arr!1239 lt!15477) (index!2860 lt!16149)))))

(declare-fun c!5182 () Bool)

(assert (=> b!41299 (= c!5182 (= lt!16148 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!41296 () Bool)

(assert (=> b!41296 (= e!26177 Undefined!184)))

(declare-fun d!7413 () Bool)

(declare-fun lt!16150 () SeekEntryResult!184)

(assert (=> d!7413 (and (or ((_ is Undefined!184) lt!16150) (not ((_ is Found!184) lt!16150)) (and (bvsge (index!2859 lt!16150) #b00000000000000000000000000000000) (bvslt (index!2859 lt!16150) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!16150) ((_ is Found!184) lt!16150) (not ((_ is MissingZero!184) lt!16150)) (and (bvsge (index!2858 lt!16150) #b00000000000000000000000000000000) (bvslt (index!2858 lt!16150) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!16150) ((_ is Found!184) lt!16150) ((_ is MissingZero!184) lt!16150) (not ((_ is MissingVacant!184) lt!16150)) (and (bvsge (index!2861 lt!16150) #b00000000000000000000000000000000) (bvslt (index!2861 lt!16150) (size!1376 lt!15477)))) (or ((_ is Undefined!184) lt!16150) (ite ((_ is Found!184) lt!16150) (= (select (arr!1239 lt!15477) (index!2859 lt!16150)) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!184) lt!16150) (= (select (arr!1239 lt!15477) (index!2858 lt!16150)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!184) lt!16150) (= (select (arr!1239 lt!15477) (index!2861 lt!16150)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!7413 (= lt!16150 e!26177)))

(declare-fun c!5183 () Bool)

(assert (=> d!7413 (= c!5183 (and ((_ is Intermediate!184) lt!16149) (undefined!996 lt!16149)))))

(assert (=> d!7413 (= lt!16149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15477 mask!853))))

(assert (=> d!7413 (validMask!0 mask!853)))

(assert (=> d!7413 (= (seekEntryOrOpen!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15477 mask!853) lt!16150)))

(declare-fun b!41300 () Bool)

(assert (=> b!41300 (= e!26179 (MissingZero!184 (index!2860 lt!16149)))))

(declare-fun b!41301 () Bool)

(assert (=> b!41301 (= e!26178 (Found!184 (index!2860 lt!16149)))))

(assert (= (and d!7413 c!5183) b!41296))

(assert (= (and d!7413 (not c!5183)) b!41299))

(assert (= (and b!41299 c!5182) b!41301))

(assert (= (and b!41299 (not c!5182)) b!41297))

(assert (= (and b!41297 c!5181) b!41300))

(assert (= (and b!41297 (not c!5181)) b!41298))

(assert (=> b!41298 m!33453))

(declare-fun m!34451 () Bool)

(assert (=> b!41298 m!34451))

(declare-fun m!34453 () Bool)

(assert (=> b!41299 m!34453))

(declare-fun m!34455 () Bool)

(assert (=> d!7413 m!34455))

(assert (=> d!7413 m!33453))

(declare-fun m!34457 () Bool)

(assert (=> d!7413 m!34457))

(declare-fun m!34459 () Bool)

(assert (=> d!7413 m!34459))

(assert (=> d!7413 m!33453))

(assert (=> d!7413 m!34455))

(declare-fun m!34461 () Bool)

(assert (=> d!7413 m!34461))

(declare-fun m!34463 () Bool)

(assert (=> d!7413 m!34463))

(assert (=> d!7413 m!33261))

(assert (=> b!40527 d!7413))

(assert (=> bm!3166 d!7305))

(declare-fun d!7417 () Bool)

(declare-fun e!26184 () Bool)

(assert (=> d!7417 e!26184))

(declare-fun res!24516 () Bool)

(assert (=> d!7417 (=> res!24516 e!26184)))

(declare-fun lt!16153 () Bool)

(assert (=> d!7417 (= res!24516 (not lt!16153))))

(declare-fun lt!16155 () Bool)

(assert (=> d!7417 (= lt!16153 lt!16155)))

(declare-fun lt!16154 () Unit!982)

(declare-fun e!26183 () Unit!982)

(assert (=> d!7417 (= lt!16154 e!26183)))

(declare-fun c!5187 () Bool)

(assert (=> d!7417 (= c!5187 lt!16155)))

(assert (=> d!7417 (= lt!16155 (containsKey!70 (toList!551 lt!15693) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!7417 (= (contains!517 lt!15693 #b1000000000000000000000000000000000000000000000000000000000000000) lt!16153)))

(declare-fun b!41308 () Bool)

(declare-fun lt!16152 () Unit!982)

(assert (=> b!41308 (= e!26183 lt!16152)))

(assert (=> b!41308 (= lt!16152 (lemmaContainsKeyImpliesGetValueByKeyDefined!58 (toList!551 lt!15693) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!41308 (isDefined!59 (getValueByKey!101 (toList!551 lt!15693) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41309 () Bool)

(declare-fun Unit!998 () Unit!982)

(assert (=> b!41309 (= e!26183 Unit!998)))

(declare-fun b!41310 () Bool)

(assert (=> b!41310 (= e!26184 (isDefined!59 (getValueByKey!101 (toList!551 lt!15693) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7417 c!5187) b!41308))

(assert (= (and d!7417 (not c!5187)) b!41309))

(assert (= (and d!7417 (not res!24516)) b!41310))

(declare-fun m!34467 () Bool)

(assert (=> d!7417 m!34467))

(declare-fun m!34469 () Bool)

(assert (=> b!41308 m!34469))

(assert (=> b!41308 m!34393))

(assert (=> b!41308 m!34393))

(declare-fun m!34471 () Bool)

(assert (=> b!41308 m!34471))

(assert (=> b!41310 m!34393))

(assert (=> b!41310 m!34393))

(assert (=> b!41310 m!34471))

(assert (=> bm!3162 d!7417))

(assert (=> d!7069 d!7031))

(assert (=> b!40510 d!7211))

(declare-fun b!41315 () Bool)

(declare-fun e!26187 () Bool)

(declare-fun e!26188 () Bool)

(assert (=> b!41315 (= e!26187 e!26188)))

(declare-fun c!5190 () Bool)

(assert (=> b!41315 (= c!5190 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!41316 () Bool)

(declare-fun call!3230 () Bool)

(assert (=> b!41316 (= e!26188 call!3230)))

(declare-fun bm!3227 () Bool)

(assert (=> bm!3227 (= call!3230 (arrayNoDuplicates!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5190 (Cons!1067 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!4950 (Cons!1067 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068))) (ite c!4950 (Cons!1067 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)))))))

(declare-fun b!41317 () Bool)

(assert (=> b!41317 (= e!26188 call!3230)))

(declare-fun d!7421 () Bool)

(declare-fun res!24518 () Bool)

(declare-fun e!26190 () Bool)

(assert (=> d!7421 (=> res!24518 e!26190)))

(assert (=> d!7421 (= res!24518 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1376 lt!15477)))))

(assert (=> d!7421 (= (arrayNoDuplicates!0 lt!15477 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4950 (Cons!1067 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068))) e!26190)))

(declare-fun e!26189 () Bool)

(declare-fun b!41318 () Bool)

(assert (=> b!41318 (= e!26189 (contains!513 (ite c!4950 (Cons!1067 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (ite c!4912 (Cons!1067 (select (arr!1239 lt!15477) #b00000000000000000000000000000000) Nil!1068) Nil!1068)) (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!41319 () Bool)

(assert (=> b!41319 (= e!26190 e!26187)))

(declare-fun res!24519 () Bool)

(assert (=> b!41319 (=> (not res!24519) (not e!26187))))

(assert (=> b!41319 (= res!24519 (not e!26189))))

(declare-fun res!24517 () Bool)

(assert (=> b!41319 (=> (not res!24517) (not e!26189))))

(assert (=> b!41319 (= res!24517 (validKeyInArray!0 (select (arr!1239 lt!15477) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!7421 (not res!24518)) b!41319))

(assert (= (and b!41319 res!24517) b!41318))

(assert (= (and b!41319 res!24519) b!41315))

(assert (= (and b!41315 c!5190) b!41317))

(assert (= (and b!41315 (not c!5190)) b!41316))

(assert (= (or b!41317 b!41316) bm!3227))

(assert (=> b!41315 m!34341))

(assert (=> b!41315 m!34341))

(assert (=> b!41315 m!34343))

(assert (=> bm!3227 m!34341))

(declare-fun m!34479 () Bool)

(assert (=> bm!3227 m!34479))

(assert (=> b!41318 m!34341))

(assert (=> b!41318 m!34341))

(declare-fun m!34481 () Bool)

(assert (=> b!41318 m!34481))

(assert (=> b!41319 m!34341))

(assert (=> b!41319 m!34341))

(assert (=> b!41319 m!34343))

(assert (=> bm!3127 d!7421))

(declare-fun b!41326 () Bool)

(declare-fun e!26197 () Bool)

(declare-fun call!3232 () Bool)

(assert (=> b!41326 (= e!26197 call!3232)))

(declare-fun bm!3229 () Bool)

(assert (=> bm!3229 (= call!3232 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3293 lt!15472) (mask!5177 lt!15472)))))

(declare-fun b!41327 () Bool)

(declare-fun e!26198 () Bool)

(assert (=> b!41327 (= e!26198 e!26197)))

(declare-fun lt!16163 () (_ BitVec 64))

(assert (=> b!41327 (= lt!16163 (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!16161 () Unit!982)

(assert (=> b!41327 (= lt!16161 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3293 lt!15472) lt!16163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!41327 (arrayContainsKey!0 (_keys!3293 lt!15472) lt!16163 #b00000000000000000000000000000000)))

(declare-fun lt!16162 () Unit!982)

(assert (=> b!41327 (= lt!16162 lt!16161)))

(declare-fun res!24524 () Bool)

(assert (=> b!41327 (= res!24524 (= (seekEntryOrOpen!0 (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3293 lt!15472) (mask!5177 lt!15472)) (Found!184 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!41327 (=> (not res!24524) (not e!26197))))

(declare-fun d!7427 () Bool)

(declare-fun res!24525 () Bool)

(declare-fun e!26196 () Bool)

(assert (=> d!7427 (=> res!24525 e!26196)))

(assert (=> d!7427 (= res!24525 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))))))

(assert (=> d!7427 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3293 lt!15472) (mask!5177 lt!15472)) e!26196)))

(declare-fun b!41328 () Bool)

(assert (=> b!41328 (= e!26198 call!3232)))

(declare-fun b!41329 () Bool)

(assert (=> b!41329 (= e!26196 e!26198)))

(declare-fun c!5192 () Bool)

(assert (=> b!41329 (= c!5192 (validKeyInArray!0 (select (arr!1239 (_keys!3293 lt!15472)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!7427 (not res!24525)) b!41329))

(assert (= (and b!41329 c!5192) b!41327))

(assert (= (and b!41329 (not c!5192)) b!41328))

(assert (= (and b!41327 res!24524) b!41326))

(assert (= (or b!41326 b!41328) bm!3229))

(declare-fun m!34491 () Bool)

(assert (=> bm!3229 m!34491))

(assert (=> b!41327 m!34039))

(declare-fun m!34493 () Bool)

(assert (=> b!41327 m!34493))

(declare-fun m!34495 () Bool)

(assert (=> b!41327 m!34495))

(assert (=> b!41327 m!34039))

(declare-fun m!34497 () Bool)

(assert (=> b!41327 m!34497))

(assert (=> b!41329 m!34039))

(assert (=> b!41329 m!34039))

(assert (=> b!41329 m!34041))

(assert (=> bm!3125 d!7427))

(declare-fun d!7431 () Bool)

(assert (=> d!7431 (arrayContainsKey!0 (_keys!3293 lt!15472) lt!15571 #b00000000000000000000000000000000)))

(declare-fun lt!16164 () Unit!982)

(assert (=> d!7431 (= lt!16164 (choose!13 (_keys!3293 lt!15472) lt!15571 #b00000000000000000000000000000000))))

(assert (=> d!7431 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!7431 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3293 lt!15472) lt!15571 #b00000000000000000000000000000000) lt!16164)))

(declare-fun bs!1753 () Bool)

(assert (= bs!1753 d!7431))

(assert (=> bs!1753 m!33439))

(declare-fun m!34499 () Bool)

(assert (=> bs!1753 m!34499))

(assert (=> b!40484 d!7431))

(declare-fun d!7433 () Bool)

(declare-fun res!24526 () Bool)

(declare-fun e!26199 () Bool)

(assert (=> d!7433 (=> res!24526 e!26199)))

(assert (=> d!7433 (= res!24526 (= (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) lt!15571))))

(assert (=> d!7433 (= (arrayContainsKey!0 (_keys!3293 lt!15472) lt!15571 #b00000000000000000000000000000000) e!26199)))

(declare-fun b!41330 () Bool)

(declare-fun e!26200 () Bool)

(assert (=> b!41330 (= e!26199 e!26200)))

(declare-fun res!24527 () Bool)

(assert (=> b!41330 (=> (not res!24527) (not e!26200))))

(assert (=> b!41330 (= res!24527 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1376 (_keys!3293 lt!15472))))))

(declare-fun b!41331 () Bool)

(assert (=> b!41331 (= e!26200 (arrayContainsKey!0 (_keys!3293 lt!15472) lt!15571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7433 (not res!24526)) b!41330))

(assert (= (and b!41330 res!24527) b!41331))

(assert (=> d!7433 m!33435))

(declare-fun m!34501 () Bool)

(assert (=> b!41331 m!34501))

(assert (=> b!40484 d!7433))

(declare-fun b!41335 () Bool)

(declare-fun c!5193 () Bool)

(declare-fun lt!16165 () (_ BitVec 64))

(assert (=> b!41335 (= c!5193 (= lt!16165 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!26204 () SeekEntryResult!184)

(declare-fun e!26205 () SeekEntryResult!184)

(assert (=> b!41335 (= e!26204 e!26205)))

(declare-fun b!41336 () Bool)

(declare-fun lt!16166 () SeekEntryResult!184)

(assert (=> b!41336 (= e!26205 (seekKeyOrZeroReturnVacant!0 (x!7731 lt!16166) (index!2860 lt!16166) (index!2860 lt!16166) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) (_keys!3293 lt!15472) (mask!5177 lt!15472)))))

(declare-fun b!41337 () Bool)

(declare-fun e!26203 () SeekEntryResult!184)

(assert (=> b!41337 (= e!26203 e!26204)))

(assert (=> b!41337 (= lt!16165 (select (arr!1239 (_keys!3293 lt!15472)) (index!2860 lt!16166)))))

(declare-fun c!5194 () Bool)

(assert (=> b!41337 (= c!5194 (= lt!16165 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)))))

(declare-fun b!41334 () Bool)

(assert (=> b!41334 (= e!26203 Undefined!184)))

(declare-fun d!7437 () Bool)

(declare-fun lt!16167 () SeekEntryResult!184)

(assert (=> d!7437 (and (or ((_ is Undefined!184) lt!16167) (not ((_ is Found!184) lt!16167)) (and (bvsge (index!2859 lt!16167) #b00000000000000000000000000000000) (bvslt (index!2859 lt!16167) (size!1376 (_keys!3293 lt!15472))))) (or ((_ is Undefined!184) lt!16167) ((_ is Found!184) lt!16167) (not ((_ is MissingZero!184) lt!16167)) (and (bvsge (index!2858 lt!16167) #b00000000000000000000000000000000) (bvslt (index!2858 lt!16167) (size!1376 (_keys!3293 lt!15472))))) (or ((_ is Undefined!184) lt!16167) ((_ is Found!184) lt!16167) ((_ is MissingZero!184) lt!16167) (not ((_ is MissingVacant!184) lt!16167)) (and (bvsge (index!2861 lt!16167) #b00000000000000000000000000000000) (bvslt (index!2861 lt!16167) (size!1376 (_keys!3293 lt!15472))))) (or ((_ is Undefined!184) lt!16167) (ite ((_ is Found!184) lt!16167) (= (select (arr!1239 (_keys!3293 lt!15472)) (index!2859 lt!16167)) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!184) lt!16167) (= (select (arr!1239 (_keys!3293 lt!15472)) (index!2858 lt!16167)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!184) lt!16167) (= (select (arr!1239 (_keys!3293 lt!15472)) (index!2861 lt!16167)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!7437 (= lt!16167 e!26203)))

(declare-fun c!5195 () Bool)

(assert (=> d!7437 (= c!5195 (and ((_ is Intermediate!184) lt!16166) (undefined!996 lt!16166)))))

(assert (=> d!7437 (= lt!16166 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) (mask!5177 lt!15472)) (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) (_keys!3293 lt!15472) (mask!5177 lt!15472)))))

(assert (=> d!7437 (validMask!0 (mask!5177 lt!15472))))

(assert (=> d!7437 (= (seekEntryOrOpen!0 (select (arr!1239 (_keys!3293 lt!15472)) #b00000000000000000000000000000000) (_keys!3293 lt!15472) (mask!5177 lt!15472)) lt!16167)))

(declare-fun b!41338 () Bool)

(assert (=> b!41338 (= e!26205 (MissingZero!184 (index!2860 lt!16166)))))

(declare-fun b!41339 () Bool)

(assert (=> b!41339 (= e!26204 (Found!184 (index!2860 lt!16166)))))

(assert (= (and d!7437 c!5195) b!41334))

(assert (= (and d!7437 (not c!5195)) b!41337))

(assert (= (and b!41337 c!5194) b!41339))

(assert (= (and b!41337 (not c!5194)) b!41335))

(assert (= (and b!41335 c!5193) b!41338))

(assert (= (and b!41335 (not c!5193)) b!41336))

(assert (=> b!41336 m!33435))

(declare-fun m!34505 () Bool)

(assert (=> b!41336 m!34505))

(declare-fun m!34507 () Bool)

(assert (=> b!41337 m!34507))

(declare-fun m!34509 () Bool)

(assert (=> d!7437 m!34509))

(assert (=> d!7437 m!33435))

(declare-fun m!34511 () Bool)

(assert (=> d!7437 m!34511))

(declare-fun m!34513 () Bool)

(assert (=> d!7437 m!34513))

(assert (=> d!7437 m!33435))

(assert (=> d!7437 m!34509))

(declare-fun m!34515 () Bool)

(assert (=> d!7437 m!34515))

(declare-fun m!34517 () Bool)

(assert (=> d!7437 m!34517))

(assert (=> d!7437 m!33425))

(assert (=> b!40484 d!7437))

(declare-fun b_lambda!2109 () Bool)

(assert (= b_lambda!2089 (or (and start!5700 b_free!1365 (= defaultEntry!470 (defaultEntry!1804 lt!15472))) b_lambda!2109)))

(check-sat (not b!41254) (not d!7383) (not d!7407) (not b!41080) (not bm!3229) (not b!41095) (not d!7305) (not b!41081) (not bm!3224) (not d!7397) (not b!41273) (not d!7299) (not d!7293) (not b!41229) (not bm!3221) (not d!7199) (not d!7395) (not d!7387) (not b!41034) (not bm!3211) (not d!7437) (not d!7197) (not b!40912) (not d!7273) (not b!41298) (not d!7271) (not b!41255) (not b!41260) (not b!41096) (not b!41295) (not b!41228) (not b!41258) (not b!41250) (not d!7275) (not b!40963) (not b_lambda!2107) (not b!41327) (not b!41078) (not b!41287) tp_is_empty!1755 (not b_next!1365) b_and!2395 (not b!41264) (not b!41227) (not bm!3227) (not d!7409) (not d!7297) (not bm!3222) (not b!41271) (not d!7413) (not b!41315) (not b!41231) (not d!7375) (not d!7203) (not b!41285) (not b!41235) (not d!7361) (not b!41082) (not b!41284) (not b!41079) (not b!40911) (not b!41030) (not d!7357) (not b!41308) (not d!7281) (not d!7355) (not d!7369) (not d!7291) (not d!7213) (not b!41238) (not b!41310) (not b!41283) (not d!7365) (not b_lambda!2105) (not b!41336) (not b_lambda!2109) (not b!41076) (not b!41063) (not b!41319) (not b!41033) (not b!41331) (not b!41318) (not b!41021) (not b!41329) (not d!7303) (not b!41237) (not b!41289) (not d!7301) (not b!41257) (not d!7417) (not b!41236) (not b!41062) (not bm!3223) (not b!40898) (not d!7295) (not d!7289) (not b_lambda!2087) (not d!7431))
(check-sat b_and!2395 (not b_next!1365))
