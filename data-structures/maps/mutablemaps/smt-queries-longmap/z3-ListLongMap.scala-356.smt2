; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6744 () Bool)

(assert start!6744)

(declare-fun b_free!1515 () Bool)

(declare-fun b_next!1515 () Bool)

(assert (=> start!6744 (= b_free!1515 (not b_next!1515))))

(declare-fun tp!5960 () Bool)

(declare-fun b_and!2713 () Bool)

(assert (=> start!6744 (= tp!5960 b_and!2713)))

(declare-fun b!44125 () Bool)

(declare-datatypes ((Unit!1233 0))(
  ( (Unit!1234) )
))
(declare-fun e!27981 () Unit!1233)

(declare-fun Unit!1235 () Unit!1233)

(assert (=> b!44125 (= e!27981 Unit!1235)))

(declare-datatypes ((V!2327 0))(
  ( (V!2328 (val!991 Int)) )
))
(declare-datatypes ((tuple2!1640 0))(
  ( (tuple2!1641 (_1!830 (_ BitVec 64)) (_2!830 V!2327)) )
))
(declare-fun lt!19312 () tuple2!1640)

(declare-datatypes ((List!1226 0))(
  ( (Nil!1223) (Cons!1222 (h!1799 tuple2!1640) (t!4251 List!1226)) )
))
(declare-datatypes ((ListLongMap!1221 0))(
  ( (ListLongMap!1222 (toList!626 List!1226)) )
))
(declare-fun lt!19309 () ListLongMap!1221)

(declare-fun head!894 (List!1226) tuple2!1640)

(assert (=> b!44125 (= lt!19312 (head!894 (toList!626 lt!19309)))))

(declare-datatypes ((ValueCell!705 0))(
  ( (ValueCellFull!705 (v!2086 V!2327)) (EmptyCell!705) )
))
(declare-datatypes ((array!2951 0))(
  ( (array!2952 (arr!1419 (Array (_ BitVec 32) ValueCell!705)) (size!1622 (_ BitVec 32))) )
))
(declare-fun lt!19316 () array!2951)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2953 0))(
  ( (array!2954 (arr!1420 (Array (_ BitVec 32) (_ BitVec 64))) (size!1623 (_ BitVec 32))) )
))
(declare-fun lt!19313 () array!2953)

(declare-fun lt!19321 () V!2327)

(declare-fun lt!19314 () Unit!1233)

(declare-fun lemmaKeyInListMapIsInArray!109 (array!2953 array!2951 (_ BitVec 32) (_ BitVec 32) V!2327 V!2327 (_ BitVec 64) Int) Unit!1233)

(assert (=> b!44125 (= lt!19314 (lemmaKeyInListMapIsInArray!109 lt!19313 lt!19316 mask!853 #b00000000000000000000000000000000 lt!19321 lt!19321 (_1!830 lt!19312) defaultEntry!470))))

(declare-fun res!26060 () Bool)

(assert (=> b!44125 (= res!26060 (and (not (= (_1!830 lt!19312) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!830 lt!19312) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!27984 () Bool)

(assert (=> b!44125 (=> (not res!26060) (not e!27984))))

(assert (=> b!44125 e!27984))

(declare-fun lt!19311 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2953 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44125 (= lt!19311 (arrayScanForKey!0 lt!19313 (_1!830 lt!19312) #b00000000000000000000000000000000))))

(assert (=> b!44125 false))

(declare-fun b!44126 () Bool)

(declare-fun arrayContainsKey!0 (array!2953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!44126 (= e!27984 (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) #b00000000000000000000000000000000))))

(declare-fun res!26061 () Bool)

(declare-fun e!27983 () Bool)

(assert (=> start!6744 (=> (not res!26061) (not e!27983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6744 (= res!26061 (validMask!0 mask!853))))

(assert (=> start!6744 e!27983))

(assert (=> start!6744 true))

(assert (=> start!6744 tp!5960))

(declare-fun b!44127 () Bool)

(declare-fun Unit!1236 () Unit!1233)

(assert (=> b!44127 (= e!27981 Unit!1236)))

(declare-fun b!44128 () Bool)

(declare-fun e!27982 () Bool)

(assert (=> b!44128 (= e!27983 (not e!27982))))

(declare-fun res!26062 () Bool)

(assert (=> b!44128 (=> (not res!26062) (not e!27982))))

(declare-datatypes ((LongMapFixedSize!390 0))(
  ( (LongMapFixedSize!391 (defaultEntry!1897 Int) (mask!5474 (_ BitVec 32)) (extraKeys!1788 (_ BitVec 32)) (zeroValue!1815 V!2327) (minValue!1815 V!2327) (_size!244 (_ BitVec 32)) (_keys!3464 array!2953) (_values!1880 array!2951) (_vacant!244 (_ BitVec 32))) )
))
(declare-fun lt!19310 () LongMapFixedSize!390)

(declare-fun valid!129 (LongMapFixedSize!390) Bool)

(assert (=> b!44128 (= res!26062 (valid!129 lt!19310))))

(declare-fun lt!19318 () Unit!1233)

(assert (=> b!44128 (= lt!19318 e!27981)))

(declare-fun c!5752 () Bool)

(declare-fun lt!19317 () Bool)

(assert (=> b!44128 (= c!5752 lt!19317)))

(assert (=> b!44128 (= lt!19317 (not (= lt!19309 (ListLongMap!1222 Nil!1223))))))

(declare-fun map!846 (LongMapFixedSize!390) ListLongMap!1221)

(assert (=> b!44128 (= lt!19309 (map!846 lt!19310))))

(declare-datatypes ((List!1227 0))(
  ( (Nil!1224) (Cons!1223 (h!1800 (_ BitVec 64)) (t!4252 List!1227)) )
))
(declare-fun arrayNoDuplicates!0 (array!2953 (_ BitVec 32) List!1227) Bool)

(assert (=> b!44128 (arrayNoDuplicates!0 lt!19313 #b00000000000000000000000000000000 Nil!1224)))

(declare-fun lt!19320 () Unit!1233)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2953 (_ BitVec 32) (_ BitVec 32) List!1227) Unit!1233)

(assert (=> b!44128 (= lt!19320 (lemmaArrayNoDuplicatesInAll0Array!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2953 (_ BitVec 32)) Bool)

(assert (=> b!44128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19313 mask!853)))

(declare-fun lt!19319 () Unit!1233)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2953 (_ BitVec 32) (_ BitVec 32)) Unit!1233)

(assert (=> b!44128 (= lt!19319 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19313 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2953 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44128 (= (arrayCountValidKeys!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19315 () Unit!1233)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2953 (_ BitVec 32) (_ BitVec 32)) Unit!1233)

(assert (=> b!44128 (= lt!19315 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!44128 (= lt!19310 (LongMapFixedSize!391 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19321 lt!19321 #b00000000000000000000000000000000 lt!19313 lt!19316 #b00000000000000000000000000000000))))

(assert (=> b!44128 (= lt!19316 (array!2952 ((as const (Array (_ BitVec 32) ValueCell!705)) EmptyCell!705) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!44128 (= lt!19313 (array!2954 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!266 (Int (_ BitVec 64)) V!2327)

(assert (=> b!44128 (= lt!19321 (dynLambda!266 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44129 () Bool)

(assert (=> b!44129 (= e!27982 (not lt!19317))))

(assert (= (and start!6744 res!26061) b!44128))

(assert (= (and b!44128 c!5752) b!44125))

(assert (= (and b!44128 (not c!5752)) b!44127))

(assert (= (and b!44125 res!26060) b!44126))

(assert (= (and b!44128 res!26062) b!44129))

(declare-fun b_lambda!2331 () Bool)

(assert (=> (not b_lambda!2331) (not b!44128)))

(declare-fun t!4250 () Bool)

(declare-fun tb!1011 () Bool)

(assert (=> (and start!6744 (= defaultEntry!470 defaultEntry!470) t!4250) tb!1011))

(declare-fun result!1759 () Bool)

(declare-fun tp_is_empty!1905 () Bool)

(assert (=> tb!1011 (= result!1759 tp_is_empty!1905)))

(assert (=> b!44128 t!4250))

(declare-fun b_and!2715 () Bool)

(assert (= b_and!2713 (and (=> t!4250 result!1759) b_and!2715)))

(declare-fun m!38355 () Bool)

(assert (=> b!44125 m!38355))

(declare-fun m!38357 () Bool)

(assert (=> b!44125 m!38357))

(declare-fun m!38359 () Bool)

(assert (=> b!44125 m!38359))

(declare-fun m!38361 () Bool)

(assert (=> b!44126 m!38361))

(declare-fun m!38363 () Bool)

(assert (=> start!6744 m!38363))

(declare-fun m!38365 () Bool)

(assert (=> b!44128 m!38365))

(declare-fun m!38367 () Bool)

(assert (=> b!44128 m!38367))

(declare-fun m!38369 () Bool)

(assert (=> b!44128 m!38369))

(declare-fun m!38371 () Bool)

(assert (=> b!44128 m!38371))

(declare-fun m!38373 () Bool)

(assert (=> b!44128 m!38373))

(declare-fun m!38375 () Bool)

(assert (=> b!44128 m!38375))

(declare-fun m!38377 () Bool)

(assert (=> b!44128 m!38377))

(declare-fun m!38379 () Bool)

(assert (=> b!44128 m!38379))

(declare-fun m!38381 () Bool)

(assert (=> b!44128 m!38381))

(check-sat (not b_lambda!2331) b_and!2715 (not b_next!1515) (not b!44128) (not b!44125) (not b!44126) tp_is_empty!1905 (not start!6744))
(check-sat b_and!2715 (not b_next!1515))
(get-model)

(declare-fun b_lambda!2339 () Bool)

(assert (= b_lambda!2331 (or (and start!6744 b_free!1515) b_lambda!2339)))

(check-sat b_and!2715 (not b_next!1515) (not b!44128) (not b!44125) (not b!44126) tp_is_empty!1905 (not start!6744) (not b_lambda!2339))
(check-sat b_and!2715 (not b_next!1515))
(get-model)

(declare-fun d!8313 () Bool)

(assert (=> d!8313 (= (head!894 (toList!626 lt!19309)) (h!1799 (toList!626 lt!19309)))))

(assert (=> b!44125 d!8313))

(declare-fun d!8315 () Bool)

(declare-fun e!28007 () Bool)

(assert (=> d!8315 e!28007))

(declare-fun c!5760 () Bool)

(assert (=> d!8315 (= c!5760 (and (not (= (_1!830 lt!19312) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!830 lt!19312) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19375 () Unit!1233)

(declare-fun choose!270 (array!2953 array!2951 (_ BitVec 32) (_ BitVec 32) V!2327 V!2327 (_ BitVec 64) Int) Unit!1233)

(assert (=> d!8315 (= lt!19375 (choose!270 lt!19313 lt!19316 mask!853 #b00000000000000000000000000000000 lt!19321 lt!19321 (_1!830 lt!19312) defaultEntry!470))))

(assert (=> d!8315 (validMask!0 mask!853)))

(assert (=> d!8315 (= (lemmaKeyInListMapIsInArray!109 lt!19313 lt!19316 mask!853 #b00000000000000000000000000000000 lt!19321 lt!19321 (_1!830 lt!19312) defaultEntry!470) lt!19375)))

(declare-fun b!44163 () Bool)

(assert (=> b!44163 (= e!28007 (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) #b00000000000000000000000000000000))))

(declare-fun b!44164 () Bool)

(assert (=> b!44164 (= e!28007 (ite (= (_1!830 lt!19312) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8315 c!5760) b!44163))

(assert (= (and d!8315 (not c!5760)) b!44164))

(declare-fun m!38421 () Bool)

(assert (=> d!8315 m!38421))

(assert (=> d!8315 m!38363))

(assert (=> b!44163 m!38361))

(assert (=> b!44125 d!8315))

(declare-fun d!8321 () Bool)

(declare-fun lt!19387 () (_ BitVec 32))

(assert (=> d!8321 (and (or (bvslt lt!19387 #b00000000000000000000000000000000) (bvsge lt!19387 (size!1623 lt!19313)) (and (bvsge lt!19387 #b00000000000000000000000000000000) (bvslt lt!19387 (size!1623 lt!19313)))) (bvsge lt!19387 #b00000000000000000000000000000000) (bvslt lt!19387 (size!1623 lt!19313)) (= (select (arr!1420 lt!19313) lt!19387) (_1!830 lt!19312)))))

(declare-fun e!28023 () (_ BitVec 32))

(assert (=> d!8321 (= lt!19387 e!28023)))

(declare-fun c!5767 () Bool)

(assert (=> d!8321 (= c!5767 (= (select (arr!1420 lt!19313) #b00000000000000000000000000000000) (_1!830 lt!19312)))))

(assert (=> d!8321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1623 lt!19313)) (bvslt (size!1623 lt!19313) #b01111111111111111111111111111111))))

(assert (=> d!8321 (= (arrayScanForKey!0 lt!19313 (_1!830 lt!19312) #b00000000000000000000000000000000) lt!19387)))

(declare-fun b!44186 () Bool)

(assert (=> b!44186 (= e!28023 #b00000000000000000000000000000000)))

(declare-fun b!44187 () Bool)

(assert (=> b!44187 (= e!28023 (arrayScanForKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8321 c!5767) b!44186))

(assert (= (and d!8321 (not c!5767)) b!44187))

(declare-fun m!38443 () Bool)

(assert (=> d!8321 m!38443))

(declare-fun m!38445 () Bool)

(assert (=> d!8321 m!38445))

(declare-fun m!38447 () Bool)

(assert (=> b!44187 m!38447))

(assert (=> b!44125 d!8321))

(declare-fun d!8327 () Bool)

(declare-fun res!26106 () Bool)

(declare-fun e!28039 () Bool)

(assert (=> d!8327 (=> res!26106 e!28039)))

(assert (=> d!8327 (= res!26106 (= (select (arr!1420 lt!19313) #b00000000000000000000000000000000) (_1!830 lt!19312)))))

(assert (=> d!8327 (= (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) #b00000000000000000000000000000000) e!28039)))

(declare-fun b!44211 () Bool)

(declare-fun e!28040 () Bool)

(assert (=> b!44211 (= e!28039 e!28040)))

(declare-fun res!26107 () Bool)

(assert (=> b!44211 (=> (not res!26107) (not e!28040))))

(assert (=> b!44211 (= res!26107 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(declare-fun b!44212 () Bool)

(assert (=> b!44212 (= e!28040 (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8327 (not res!26106)) b!44211))

(assert (= (and b!44211 res!26107) b!44212))

(assert (=> d!8327 m!38445))

(declare-fun m!38457 () Bool)

(assert (=> b!44212 m!38457))

(assert (=> b!44126 d!8327))

(declare-fun d!8331 () Bool)

(assert (=> d!8331 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6744 d!8331))

(declare-fun bm!3566 () Bool)

(declare-fun call!3569 () Bool)

(assert (=> bm!3566 (= call!3569 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19313 mask!853))))

(declare-fun b!44265 () Bool)

(declare-fun e!28071 () Bool)

(declare-fun e!28072 () Bool)

(assert (=> b!44265 (= e!28071 e!28072)))

(declare-fun lt!19413 () (_ BitVec 64))

(assert (=> b!44265 (= lt!19413 (select (arr!1420 lt!19313) #b00000000000000000000000000000000))))

(declare-fun lt!19412 () Unit!1233)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2953 (_ BitVec 64) (_ BitVec 32)) Unit!1233)

(assert (=> b!44265 (= lt!19412 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19313 lt!19413 #b00000000000000000000000000000000))))

(assert (=> b!44265 (arrayContainsKey!0 lt!19313 lt!19413 #b00000000000000000000000000000000)))

(declare-fun lt!19414 () Unit!1233)

(assert (=> b!44265 (= lt!19414 lt!19412)))

(declare-fun res!26127 () Bool)

(declare-datatypes ((SeekEntryResult!214 0))(
  ( (MissingZero!214 (index!2978 (_ BitVec 32))) (Found!214 (index!2979 (_ BitVec 32))) (Intermediate!214 (undefined!1026 Bool) (index!2980 (_ BitVec 32)) (x!8368 (_ BitVec 32))) (Undefined!214) (MissingVacant!214 (index!2981 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2953 (_ BitVec 32)) SeekEntryResult!214)

(assert (=> b!44265 (= res!26127 (= (seekEntryOrOpen!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853) (Found!214 #b00000000000000000000000000000000)))))

(assert (=> b!44265 (=> (not res!26127) (not e!28072))))

(declare-fun b!44266 () Bool)

(declare-fun e!28070 () Bool)

(assert (=> b!44266 (= e!28070 e!28071)))

(declare-fun c!5787 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!44266 (= c!5787 (validKeyInArray!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun b!44267 () Bool)

(assert (=> b!44267 (= e!28072 call!3569)))

(declare-fun b!44268 () Bool)

(assert (=> b!44268 (= e!28071 call!3569)))

(declare-fun d!8341 () Bool)

(declare-fun res!26126 () Bool)

(assert (=> d!8341 (=> res!26126 e!28070)))

(assert (=> d!8341 (= res!26126 (bvsge #b00000000000000000000000000000000 (size!1623 lt!19313)))))

(assert (=> d!8341 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19313 mask!853) e!28070)))

(assert (= (and d!8341 (not res!26126)) b!44266))

(assert (= (and b!44266 c!5787) b!44265))

(assert (= (and b!44266 (not c!5787)) b!44268))

(assert (= (and b!44265 res!26127) b!44267))

(assert (= (or b!44267 b!44268) bm!3566))

(declare-fun m!38479 () Bool)

(assert (=> bm!3566 m!38479))

(assert (=> b!44265 m!38445))

(declare-fun m!38481 () Bool)

(assert (=> b!44265 m!38481))

(declare-fun m!38483 () Bool)

(assert (=> b!44265 m!38483))

(assert (=> b!44265 m!38445))

(declare-fun m!38485 () Bool)

(assert (=> b!44265 m!38485))

(assert (=> b!44266 m!38445))

(assert (=> b!44266 m!38445))

(declare-fun m!38487 () Bool)

(assert (=> b!44266 m!38487))

(assert (=> b!44128 d!8341))

(declare-fun d!8347 () Bool)

(assert (=> d!8347 (= (arrayCountValidKeys!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19420 () Unit!1233)

(declare-fun choose!59 (array!2953 (_ BitVec 32) (_ BitVec 32)) Unit!1233)

(assert (=> d!8347 (= lt!19420 (choose!59 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8347 (bvslt (size!1623 lt!19313) #b01111111111111111111111111111111)))

(assert (=> d!8347 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19420)))

(declare-fun bs!2012 () Bool)

(assert (= bs!2012 d!8347))

(assert (=> bs!2012 m!38365))

(declare-fun m!38489 () Bool)

(assert (=> bs!2012 m!38489))

(assert (=> b!44128 d!8347))

(declare-fun d!8349 () Bool)

(assert (=> d!8349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19313 mask!853)))

(declare-fun lt!19423 () Unit!1233)

(declare-fun choose!34 (array!2953 (_ BitVec 32) (_ BitVec 32)) Unit!1233)

(assert (=> d!8349 (= lt!19423 (choose!34 lt!19313 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!8349 (validMask!0 mask!853)))

(assert (=> d!8349 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19313 mask!853 #b00000000000000000000000000000000) lt!19423)))

(declare-fun bs!2014 () Bool)

(assert (= bs!2014 d!8349))

(assert (=> bs!2014 m!38381))

(declare-fun m!38501 () Bool)

(assert (=> bs!2014 m!38501))

(assert (=> bs!2014 m!38363))

(assert (=> b!44128 d!8349))

(declare-fun d!8357 () Bool)

(declare-fun lt!19429 () (_ BitVec 32))

(assert (=> d!8357 (and (bvsge lt!19429 #b00000000000000000000000000000000) (bvsle lt!19429 (bvsub (size!1623 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun e!28086 () (_ BitVec 32))

(assert (=> d!8357 (= lt!19429 e!28086)))

(declare-fun c!5796 () Bool)

(assert (=> d!8357 (= c!5796 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8357 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1623 lt!19313)))))

(assert (=> d!8357 (= (arrayCountValidKeys!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19429)))

(declare-fun b!44289 () Bool)

(declare-fun e!28085 () (_ BitVec 32))

(assert (=> b!44289 (= e!28086 e!28085)))

(declare-fun c!5797 () Bool)

(assert (=> b!44289 (= c!5797 (validKeyInArray!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun b!44290 () Bool)

(assert (=> b!44290 (= e!28086 #b00000000000000000000000000000000)))

(declare-fun bm!3572 () Bool)

(declare-fun call!3575 () (_ BitVec 32))

(assert (=> bm!3572 (= call!3575 (arrayCountValidKeys!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!44291 () Bool)

(assert (=> b!44291 (= e!28085 call!3575)))

(declare-fun b!44292 () Bool)

(assert (=> b!44292 (= e!28085 (bvadd #b00000000000000000000000000000001 call!3575))))

(assert (= (and d!8357 c!5796) b!44290))

(assert (= (and d!8357 (not c!5796)) b!44289))

(assert (= (and b!44289 c!5797) b!44292))

(assert (= (and b!44289 (not c!5797)) b!44291))

(assert (= (or b!44292 b!44291) bm!3572))

(assert (=> b!44289 m!38445))

(assert (=> b!44289 m!38445))

(assert (=> b!44289 m!38487))

(declare-fun m!38505 () Bool)

(assert (=> bm!3572 m!38505))

(assert (=> b!44128 d!8357))

(declare-fun d!8363 () Bool)

(declare-fun res!26144 () Bool)

(declare-fun e!28098 () Bool)

(assert (=> d!8363 (=> (not res!26144) (not e!28098))))

(declare-fun simpleValid!31 (LongMapFixedSize!390) Bool)

(assert (=> d!8363 (= res!26144 (simpleValid!31 lt!19310))))

(assert (=> d!8363 (= (valid!129 lt!19310) e!28098)))

(declare-fun b!44311 () Bool)

(declare-fun res!26145 () Bool)

(assert (=> b!44311 (=> (not res!26145) (not e!28098))))

(assert (=> b!44311 (= res!26145 (= (arrayCountValidKeys!0 (_keys!3464 lt!19310) #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))) (_size!244 lt!19310)))))

(declare-fun b!44312 () Bool)

(declare-fun res!26146 () Bool)

(assert (=> b!44312 (=> (not res!26146) (not e!28098))))

(assert (=> b!44312 (= res!26146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3464 lt!19310) (mask!5474 lt!19310)))))

(declare-fun b!44313 () Bool)

(assert (=> b!44313 (= e!28098 (arrayNoDuplicates!0 (_keys!3464 lt!19310) #b00000000000000000000000000000000 Nil!1224))))

(assert (= (and d!8363 res!26144) b!44311))

(assert (= (and b!44311 res!26145) b!44312))

(assert (= (and b!44312 res!26146) b!44313))

(declare-fun m!38513 () Bool)

(assert (=> d!8363 m!38513))

(declare-fun m!38515 () Bool)

(assert (=> b!44311 m!38515))

(declare-fun m!38517 () Bool)

(assert (=> b!44312 m!38517))

(declare-fun m!38519 () Bool)

(assert (=> b!44313 m!38519))

(assert (=> b!44128 d!8363))

(declare-fun d!8371 () Bool)

(assert (=> d!8371 (arrayNoDuplicates!0 lt!19313 #b00000000000000000000000000000000 Nil!1224)))

(declare-fun lt!19438 () Unit!1233)

(declare-fun choose!111 (array!2953 (_ BitVec 32) (_ BitVec 32) List!1227) Unit!1233)

(assert (=> d!8371 (= lt!19438 (choose!111 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1224))))

(assert (=> d!8371 (= (size!1623 lt!19313) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!8371 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1224) lt!19438)))

(declare-fun bs!2015 () Bool)

(assert (= bs!2015 d!8371))

(assert (=> bs!2015 m!38379))

(declare-fun m!38523 () Bool)

(assert (=> bs!2015 m!38523))

(assert (=> b!44128 d!8371))

(declare-fun d!8375 () Bool)

(declare-fun getCurrentListMap!357 (array!2953 array!2951 (_ BitVec 32) (_ BitVec 32) V!2327 V!2327 (_ BitVec 32) Int) ListLongMap!1221)

(assert (=> d!8375 (= (map!846 lt!19310) (getCurrentListMap!357 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)))))

(declare-fun bs!2016 () Bool)

(assert (= bs!2016 d!8375))

(declare-fun m!38531 () Bool)

(assert (=> bs!2016 m!38531))

(assert (=> b!44128 d!8375))

(declare-fun d!8379 () Bool)

(declare-fun res!26161 () Bool)

(declare-fun e!28120 () Bool)

(assert (=> d!8379 (=> res!26161 e!28120)))

(assert (=> d!8379 (= res!26161 (bvsge #b00000000000000000000000000000000 (size!1623 lt!19313)))))

(assert (=> d!8379 (= (arrayNoDuplicates!0 lt!19313 #b00000000000000000000000000000000 Nil!1224) e!28120)))

(declare-fun b!44342 () Bool)

(declare-fun e!28119 () Bool)

(declare-fun contains!578 (List!1227 (_ BitVec 64)) Bool)

(assert (=> b!44342 (= e!28119 (contains!578 Nil!1224 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun bm!3575 () Bool)

(declare-fun call!3578 () Bool)

(declare-fun c!5809 () Bool)

(assert (=> bm!3575 (= call!3578 (arrayNoDuplicates!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)))))

(declare-fun b!44343 () Bool)

(declare-fun e!28122 () Bool)

(declare-fun e!28121 () Bool)

(assert (=> b!44343 (= e!28122 e!28121)))

(assert (=> b!44343 (= c!5809 (validKeyInArray!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun b!44344 () Bool)

(assert (=> b!44344 (= e!28121 call!3578)))

(declare-fun b!44345 () Bool)

(assert (=> b!44345 (= e!28120 e!28122)))

(declare-fun res!26159 () Bool)

(assert (=> b!44345 (=> (not res!26159) (not e!28122))))

(assert (=> b!44345 (= res!26159 (not e!28119))))

(declare-fun res!26160 () Bool)

(assert (=> b!44345 (=> (not res!26160) (not e!28119))))

(assert (=> b!44345 (= res!26160 (validKeyInArray!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun b!44346 () Bool)

(assert (=> b!44346 (= e!28121 call!3578)))

(assert (= (and d!8379 (not res!26161)) b!44345))

(assert (= (and b!44345 res!26160) b!44342))

(assert (= (and b!44345 res!26159) b!44343))

(assert (= (and b!44343 c!5809) b!44346))

(assert (= (and b!44343 (not c!5809)) b!44344))

(assert (= (or b!44346 b!44344) bm!3575))

(assert (=> b!44342 m!38445))

(assert (=> b!44342 m!38445))

(declare-fun m!38533 () Bool)

(assert (=> b!44342 m!38533))

(assert (=> bm!3575 m!38445))

(declare-fun m!38535 () Bool)

(assert (=> bm!3575 m!38535))

(assert (=> b!44343 m!38445))

(assert (=> b!44343 m!38445))

(assert (=> b!44343 m!38487))

(assert (=> b!44345 m!38445))

(assert (=> b!44345 m!38445))

(assert (=> b!44345 m!38487))

(assert (=> b!44128 d!8379))

(check-sat (not b!44312) (not d!8375) (not b!44313) (not b!44187) (not d!8363) (not bm!3566) (not b!44265) (not b!44212) (not d!8371) (not b!44343) (not bm!3572) (not d!8347) (not b!44342) (not d!8349) (not b!44163) (not d!8315) (not bm!3575) b_and!2715 (not b!44311) (not b_next!1515) (not b!44289) (not b!44345) (not b!44266) tp_is_empty!1905 (not b_lambda!2339))
(check-sat b_and!2715 (not b_next!1515))
(get-model)

(declare-fun d!8381 () Bool)

(declare-fun lt!19442 () (_ BitVec 32))

(assert (=> d!8381 (and (bvsge lt!19442 #b00000000000000000000000000000000) (bvsle lt!19442 (bvsub (size!1623 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!28124 () (_ BitVec 32))

(assert (=> d!8381 (= lt!19442 e!28124)))

(declare-fun c!5810 () Bool)

(assert (=> d!8381 (= c!5810 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8381 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1623 lt!19313)))))

(assert (=> d!8381 (= (arrayCountValidKeys!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!19442)))

(declare-fun b!44347 () Bool)

(declare-fun e!28123 () (_ BitVec 32))

(assert (=> b!44347 (= e!28124 e!28123)))

(declare-fun c!5811 () Bool)

(assert (=> b!44347 (= c!5811 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44348 () Bool)

(assert (=> b!44348 (= e!28124 #b00000000000000000000000000000000)))

(declare-fun bm!3576 () Bool)

(declare-fun call!3579 () (_ BitVec 32))

(assert (=> bm!3576 (= call!3579 (arrayCountValidKeys!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!44349 () Bool)

(assert (=> b!44349 (= e!28123 call!3579)))

(declare-fun b!44350 () Bool)

(assert (=> b!44350 (= e!28123 (bvadd #b00000000000000000000000000000001 call!3579))))

(assert (= (and d!8381 c!5810) b!44348))

(assert (= (and d!8381 (not c!5810)) b!44347))

(assert (= (and b!44347 c!5811) b!44350))

(assert (= (and b!44347 (not c!5811)) b!44349))

(assert (= (or b!44350 b!44349) bm!3576))

(declare-fun m!38537 () Bool)

(assert (=> b!44347 m!38537))

(assert (=> b!44347 m!38537))

(declare-fun m!38539 () Bool)

(assert (=> b!44347 m!38539))

(declare-fun m!38541 () Bool)

(assert (=> bm!3576 m!38541))

(assert (=> bm!3572 d!8381))

(declare-fun bm!3577 () Bool)

(declare-fun call!3580 () Bool)

(assert (=> bm!3577 (= call!3580 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!19313 mask!853))))

(declare-fun b!44351 () Bool)

(declare-fun e!28126 () Bool)

(declare-fun e!28127 () Bool)

(assert (=> b!44351 (= e!28126 e!28127)))

(declare-fun lt!19444 () (_ BitVec 64))

(assert (=> b!44351 (= lt!19444 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!19443 () Unit!1233)

(assert (=> b!44351 (= lt!19443 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19313 lt!19444 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!44351 (arrayContainsKey!0 lt!19313 lt!19444 #b00000000000000000000000000000000)))

(declare-fun lt!19445 () Unit!1233)

(assert (=> b!44351 (= lt!19445 lt!19443)))

(declare-fun res!26163 () Bool)

(assert (=> b!44351 (= res!26163 (= (seekEntryOrOpen!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19313 mask!853) (Found!214 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!44351 (=> (not res!26163) (not e!28127))))

(declare-fun b!44352 () Bool)

(declare-fun e!28125 () Bool)

(assert (=> b!44352 (= e!28125 e!28126)))

(declare-fun c!5812 () Bool)

(assert (=> b!44352 (= c!5812 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44353 () Bool)

(assert (=> b!44353 (= e!28127 call!3580)))

(declare-fun b!44354 () Bool)

(assert (=> b!44354 (= e!28126 call!3580)))

(declare-fun d!8383 () Bool)

(declare-fun res!26162 () Bool)

(assert (=> d!8383 (=> res!26162 e!28125)))

(assert (=> d!8383 (= res!26162 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(assert (=> d!8383 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19313 mask!853) e!28125)))

(assert (= (and d!8383 (not res!26162)) b!44352))

(assert (= (and b!44352 c!5812) b!44351))

(assert (= (and b!44352 (not c!5812)) b!44354))

(assert (= (and b!44351 res!26163) b!44353))

(assert (= (or b!44353 b!44354) bm!3577))

(declare-fun m!38543 () Bool)

(assert (=> bm!3577 m!38543))

(assert (=> b!44351 m!38537))

(declare-fun m!38545 () Bool)

(assert (=> b!44351 m!38545))

(declare-fun m!38547 () Bool)

(assert (=> b!44351 m!38547))

(assert (=> b!44351 m!38537))

(declare-fun m!38549 () Bool)

(assert (=> b!44351 m!38549))

(assert (=> b!44352 m!38537))

(assert (=> b!44352 m!38537))

(assert (=> b!44352 m!38539))

(assert (=> bm!3566 d!8383))

(declare-fun d!8387 () Bool)

(declare-fun res!26164 () Bool)

(declare-fun e!28128 () Bool)

(assert (=> d!8387 (=> res!26164 e!28128)))

(assert (=> d!8387 (= res!26164 (= (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_1!830 lt!19312)))))

(assert (=> d!8387 (= (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!28128)))

(declare-fun b!44355 () Bool)

(declare-fun e!28129 () Bool)

(assert (=> b!44355 (= e!28128 e!28129)))

(declare-fun res!26165 () Bool)

(assert (=> b!44355 (=> (not res!26165) (not e!28129))))

(assert (=> b!44355 (= res!26165 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(declare-fun b!44356 () Bool)

(assert (=> b!44356 (= e!28129 (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8387 (not res!26164)) b!44355))

(assert (= (and b!44355 res!26165) b!44356))

(assert (=> d!8387 m!38537))

(declare-fun m!38551 () Bool)

(assert (=> b!44356 m!38551))

(assert (=> b!44212 d!8387))

(declare-fun d!8389 () Bool)

(declare-fun lt!19446 () (_ BitVec 32))

(assert (=> d!8389 (and (bvsge lt!19446 #b00000000000000000000000000000000) (bvsle lt!19446 (bvsub (size!1623 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun e!28131 () (_ BitVec 32))

(assert (=> d!8389 (= lt!19446 e!28131)))

(declare-fun c!5813 () Bool)

(assert (=> d!8389 (= c!5813 (bvsge #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8389 (and (bvsle #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1623 (_keys!3464 lt!19310)) (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8389 (= (arrayCountValidKeys!0 (_keys!3464 lt!19310) #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))) lt!19446)))

(declare-fun b!44357 () Bool)

(declare-fun e!28130 () (_ BitVec 32))

(assert (=> b!44357 (= e!28131 e!28130)))

(declare-fun c!5814 () Bool)

(assert (=> b!44357 (= c!5814 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44358 () Bool)

(assert (=> b!44358 (= e!28131 #b00000000000000000000000000000000)))

(declare-fun bm!3578 () Bool)

(declare-fun call!3581 () (_ BitVec 32))

(assert (=> bm!3578 (= call!3581 (arrayCountValidKeys!0 (_keys!3464 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))))))

(declare-fun b!44359 () Bool)

(assert (=> b!44359 (= e!28130 call!3581)))

(declare-fun b!44360 () Bool)

(assert (=> b!44360 (= e!28130 (bvadd #b00000000000000000000000000000001 call!3581))))

(assert (= (and d!8389 c!5813) b!44358))

(assert (= (and d!8389 (not c!5813)) b!44357))

(assert (= (and b!44357 c!5814) b!44360))

(assert (= (and b!44357 (not c!5814)) b!44359))

(assert (= (or b!44360 b!44359) bm!3578))

(declare-fun m!38553 () Bool)

(assert (=> b!44357 m!38553))

(assert (=> b!44357 m!38553))

(declare-fun m!38555 () Bool)

(assert (=> b!44357 m!38555))

(declare-fun m!38557 () Bool)

(assert (=> bm!3578 m!38557))

(assert (=> b!44311 d!8389))

(declare-fun d!8393 () Bool)

(assert (=> d!8393 (arrayContainsKey!0 lt!19313 lt!19413 #b00000000000000000000000000000000)))

(declare-fun lt!19449 () Unit!1233)

(declare-fun choose!13 (array!2953 (_ BitVec 64) (_ BitVec 32)) Unit!1233)

(assert (=> d!8393 (= lt!19449 (choose!13 lt!19313 lt!19413 #b00000000000000000000000000000000))))

(assert (=> d!8393 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!8393 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19313 lt!19413 #b00000000000000000000000000000000) lt!19449)))

(declare-fun bs!2017 () Bool)

(assert (= bs!2017 d!8393))

(assert (=> bs!2017 m!38483))

(declare-fun m!38559 () Bool)

(assert (=> bs!2017 m!38559))

(assert (=> b!44265 d!8393))

(declare-fun d!8395 () Bool)

(declare-fun res!26166 () Bool)

(declare-fun e!28132 () Bool)

(assert (=> d!8395 (=> res!26166 e!28132)))

(assert (=> d!8395 (= res!26166 (= (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19413))))

(assert (=> d!8395 (= (arrayContainsKey!0 lt!19313 lt!19413 #b00000000000000000000000000000000) e!28132)))

(declare-fun b!44361 () Bool)

(declare-fun e!28133 () Bool)

(assert (=> b!44361 (= e!28132 e!28133)))

(declare-fun res!26167 () Bool)

(assert (=> b!44361 (=> (not res!26167) (not e!28133))))

(assert (=> b!44361 (= res!26167 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(declare-fun b!44362 () Bool)

(assert (=> b!44362 (= e!28133 (arrayContainsKey!0 lt!19313 lt!19413 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8395 (not res!26166)) b!44361))

(assert (= (and b!44361 res!26167) b!44362))

(assert (=> d!8395 m!38445))

(declare-fun m!38561 () Bool)

(assert (=> b!44362 m!38561))

(assert (=> b!44265 d!8395))

(declare-fun b!44426 () Bool)

(declare-fun lt!19469 () SeekEntryResult!214)

(declare-fun e!28169 () SeekEntryResult!214)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2953 (_ BitVec 32)) SeekEntryResult!214)

(assert (=> b!44426 (= e!28169 (seekKeyOrZeroReturnVacant!0 (x!8368 lt!19469) (index!2980 lt!19469) (index!2980 lt!19469) (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853))))

(declare-fun b!44427 () Bool)

(declare-fun e!28170 () SeekEntryResult!214)

(assert (=> b!44427 (= e!28170 (Found!214 (index!2980 lt!19469)))))

(declare-fun b!44428 () Bool)

(declare-fun e!28168 () SeekEntryResult!214)

(assert (=> b!44428 (= e!28168 Undefined!214)))

(declare-fun d!8399 () Bool)

(declare-fun lt!19471 () SeekEntryResult!214)

(get-info :version)

(assert (=> d!8399 (and (or ((_ is Undefined!214) lt!19471) (not ((_ is Found!214) lt!19471)) (and (bvsge (index!2979 lt!19471) #b00000000000000000000000000000000) (bvslt (index!2979 lt!19471) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19471) ((_ is Found!214) lt!19471) (not ((_ is MissingZero!214) lt!19471)) (and (bvsge (index!2978 lt!19471) #b00000000000000000000000000000000) (bvslt (index!2978 lt!19471) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19471) ((_ is Found!214) lt!19471) ((_ is MissingZero!214) lt!19471) (not ((_ is MissingVacant!214) lt!19471)) (and (bvsge (index!2981 lt!19471) #b00000000000000000000000000000000) (bvslt (index!2981 lt!19471) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19471) (ite ((_ is Found!214) lt!19471) (= (select (arr!1420 lt!19313) (index!2979 lt!19471)) (select (arr!1420 lt!19313) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!214) lt!19471) (= (select (arr!1420 lt!19313) (index!2978 lt!19471)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!214) lt!19471) (= (select (arr!1420 lt!19313) (index!2981 lt!19471)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!8399 (= lt!19471 e!28168)))

(declare-fun c!5828 () Bool)

(assert (=> d!8399 (= c!5828 (and ((_ is Intermediate!214) lt!19469) (undefined!1026 lt!19469)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2953 (_ BitVec 32)) SeekEntryResult!214)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!8399 (= lt!19469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) mask!853) (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853))))

(assert (=> d!8399 (validMask!0 mask!853)))

(assert (=> d!8399 (= (seekEntryOrOpen!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853) lt!19471)))

(declare-fun b!44429 () Bool)

(assert (=> b!44429 (= e!28169 (MissingZero!214 (index!2980 lt!19469)))))

(declare-fun b!44430 () Bool)

(declare-fun c!5826 () Bool)

(declare-fun lt!19470 () (_ BitVec 64))

(assert (=> b!44430 (= c!5826 (= lt!19470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!44430 (= e!28170 e!28169)))

(declare-fun b!44431 () Bool)

(assert (=> b!44431 (= e!28168 e!28170)))

(assert (=> b!44431 (= lt!19470 (select (arr!1420 lt!19313) (index!2980 lt!19469)))))

(declare-fun c!5827 () Bool)

(assert (=> b!44431 (= c!5827 (= lt!19470 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(assert (= (and d!8399 c!5828) b!44428))

(assert (= (and d!8399 (not c!5828)) b!44431))

(assert (= (and b!44431 c!5827) b!44427))

(assert (= (and b!44431 (not c!5827)) b!44430))

(assert (= (and b!44430 c!5826) b!44429))

(assert (= (and b!44430 (not c!5826)) b!44426))

(assert (=> b!44426 m!38445))

(declare-fun m!38613 () Bool)

(assert (=> b!44426 m!38613))

(assert (=> d!8399 m!38363))

(declare-fun m!38615 () Bool)

(assert (=> d!8399 m!38615))

(declare-fun m!38617 () Bool)

(assert (=> d!8399 m!38617))

(declare-fun m!38619 () Bool)

(assert (=> d!8399 m!38619))

(assert (=> d!8399 m!38445))

(declare-fun m!38621 () Bool)

(assert (=> d!8399 m!38621))

(declare-fun m!38623 () Bool)

(assert (=> d!8399 m!38623))

(assert (=> d!8399 m!38445))

(assert (=> d!8399 m!38619))

(declare-fun m!38625 () Bool)

(assert (=> b!44431 m!38625))

(assert (=> b!44265 d!8399))

(declare-fun d!8429 () Bool)

(declare-fun e!28175 () Bool)

(assert (=> d!8429 e!28175))

(declare-fun c!5831 () Bool)

(assert (=> d!8429 (= c!5831 (and (not (= (_1!830 lt!19312) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!830 lt!19312) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!8429 true))

(declare-fun _$15!80 () Unit!1233)

(assert (=> d!8429 (= (choose!270 lt!19313 lt!19316 mask!853 #b00000000000000000000000000000000 lt!19321 lt!19321 (_1!830 lt!19312) defaultEntry!470) _$15!80)))

(declare-fun b!44438 () Bool)

(assert (=> b!44438 (= e!28175 (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) #b00000000000000000000000000000000))))

(declare-fun b!44439 () Bool)

(assert (=> b!44439 (= e!28175 (ite (= (_1!830 lt!19312) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8429 c!5831) b!44438))

(assert (= (and d!8429 (not c!5831)) b!44439))

(assert (=> b!44438 m!38361))

(assert (=> d!8315 d!8429))

(assert (=> d!8315 d!8331))

(declare-fun bm!3583 () Bool)

(declare-fun call!3586 () Bool)

(assert (=> bm!3583 (= call!3586 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3464 lt!19310) (mask!5474 lt!19310)))))

(declare-fun b!44440 () Bool)

(declare-fun e!28177 () Bool)

(declare-fun e!28178 () Bool)

(assert (=> b!44440 (= e!28177 e!28178)))

(declare-fun lt!19476 () (_ BitVec 64))

(assert (=> b!44440 (= lt!19476 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))

(declare-fun lt!19475 () Unit!1233)

(assert (=> b!44440 (= lt!19475 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3464 lt!19310) lt!19476 #b00000000000000000000000000000000))))

(assert (=> b!44440 (arrayContainsKey!0 (_keys!3464 lt!19310) lt!19476 #b00000000000000000000000000000000)))

(declare-fun lt!19477 () Unit!1233)

(assert (=> b!44440 (= lt!19477 lt!19475)))

(declare-fun res!26215 () Bool)

(assert (=> b!44440 (= res!26215 (= (seekEntryOrOpen!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) (_keys!3464 lt!19310) (mask!5474 lt!19310)) (Found!214 #b00000000000000000000000000000000)))))

(assert (=> b!44440 (=> (not res!26215) (not e!28178))))

(declare-fun b!44441 () Bool)

(declare-fun e!28176 () Bool)

(assert (=> b!44441 (= e!28176 e!28177)))

(declare-fun c!5832 () Bool)

(assert (=> b!44441 (= c!5832 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44442 () Bool)

(assert (=> b!44442 (= e!28178 call!3586)))

(declare-fun b!44443 () Bool)

(assert (=> b!44443 (= e!28177 call!3586)))

(declare-fun d!8435 () Bool)

(declare-fun res!26214 () Bool)

(assert (=> d!8435 (=> res!26214 e!28176)))

(assert (=> d!8435 (= res!26214 (bvsge #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8435 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3464 lt!19310) (mask!5474 lt!19310)) e!28176)))

(assert (= (and d!8435 (not res!26214)) b!44441))

(assert (= (and b!44441 c!5832) b!44440))

(assert (= (and b!44441 (not c!5832)) b!44443))

(assert (= (and b!44440 res!26215) b!44442))

(assert (= (or b!44442 b!44443) bm!3583))

(declare-fun m!38631 () Bool)

(assert (=> bm!3583 m!38631))

(assert (=> b!44440 m!38553))

(declare-fun m!38633 () Bool)

(assert (=> b!44440 m!38633))

(declare-fun m!38635 () Bool)

(assert (=> b!44440 m!38635))

(assert (=> b!44440 m!38553))

(declare-fun m!38637 () Bool)

(assert (=> b!44440 m!38637))

(assert (=> b!44441 m!38553))

(assert (=> b!44441 m!38553))

(assert (=> b!44441 m!38555))

(assert (=> b!44312 d!8435))

(declare-fun d!8437 () Bool)

(assert (=> d!8437 (= (validKeyInArray!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)) (and (not (= (select (arr!1420 lt!19313) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1420 lt!19313) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44345 d!8437))

(assert (=> b!44289 d!8437))

(declare-fun d!8439 () Bool)

(declare-fun res!26218 () Bool)

(declare-fun e!28180 () Bool)

(assert (=> d!8439 (=> res!26218 e!28180)))

(assert (=> d!8439 (= res!26218 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(assert (=> d!8439 (= (arrayNoDuplicates!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) e!28180)))

(declare-fun b!44444 () Bool)

(declare-fun e!28179 () Bool)

(assert (=> b!44444 (= e!28179 (contains!578 (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3584 () Bool)

(declare-fun c!5833 () Bool)

(declare-fun call!3587 () Bool)

(assert (=> bm!3584 (= call!3587 (arrayNoDuplicates!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5833 (Cons!1223 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224))))))

(declare-fun b!44445 () Bool)

(declare-fun e!28182 () Bool)

(declare-fun e!28181 () Bool)

(assert (=> b!44445 (= e!28182 e!28181)))

(assert (=> b!44445 (= c!5833 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44446 () Bool)

(assert (=> b!44446 (= e!28181 call!3587)))

(declare-fun b!44447 () Bool)

(assert (=> b!44447 (= e!28180 e!28182)))

(declare-fun res!26216 () Bool)

(assert (=> b!44447 (=> (not res!26216) (not e!28182))))

(assert (=> b!44447 (= res!26216 (not e!28179))))

(declare-fun res!26217 () Bool)

(assert (=> b!44447 (=> (not res!26217) (not e!28179))))

(assert (=> b!44447 (= res!26217 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44448 () Bool)

(assert (=> b!44448 (= e!28181 call!3587)))

(assert (= (and d!8439 (not res!26218)) b!44447))

(assert (= (and b!44447 res!26217) b!44444))

(assert (= (and b!44447 res!26216) b!44445))

(assert (= (and b!44445 c!5833) b!44448))

(assert (= (and b!44445 (not c!5833)) b!44446))

(assert (= (or b!44448 b!44446) bm!3584))

(assert (=> b!44444 m!38537))

(assert (=> b!44444 m!38537))

(declare-fun m!38639 () Bool)

(assert (=> b!44444 m!38639))

(assert (=> bm!3584 m!38537))

(declare-fun m!38641 () Bool)

(assert (=> bm!3584 m!38641))

(assert (=> b!44445 m!38537))

(assert (=> b!44445 m!38537))

(assert (=> b!44445 m!38539))

(assert (=> b!44447 m!38537))

(assert (=> b!44447 m!38537))

(assert (=> b!44447 m!38539))

(assert (=> bm!3575 d!8439))

(assert (=> d!8347 d!8357))

(declare-fun d!8441 () Bool)

(assert (=> d!8441 (= (arrayCountValidKeys!0 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!8441 true))

(declare-fun _$88!58 () Unit!1233)

(assert (=> d!8441 (= (choose!59 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!58)))

(declare-fun bs!2023 () Bool)

(assert (= bs!2023 d!8441))

(assert (=> bs!2023 m!38365))

(assert (=> d!8347 d!8441))

(assert (=> b!44163 d!8327))

(assert (=> b!44343 d!8437))

(declare-fun b!44459 () Bool)

(declare-fun res!26227 () Bool)

(declare-fun e!28185 () Bool)

(assert (=> b!44459 (=> (not res!26227) (not e!28185))))

(declare-fun size!1640 (LongMapFixedSize!390) (_ BitVec 32))

(assert (=> b!44459 (= res!26227 (= (size!1640 lt!19310) (bvadd (_size!244 lt!19310) (bvsdiv (bvadd (extraKeys!1788 lt!19310) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!44457 () Bool)

(declare-fun res!26228 () Bool)

(assert (=> b!44457 (=> (not res!26228) (not e!28185))))

(assert (=> b!44457 (= res!26228 (and (= (size!1622 (_values!1880 lt!19310)) (bvadd (mask!5474 lt!19310) #b00000000000000000000000000000001)) (= (size!1623 (_keys!3464 lt!19310)) (size!1622 (_values!1880 lt!19310))) (bvsge (_size!244 lt!19310) #b00000000000000000000000000000000) (bvsle (_size!244 lt!19310) (bvadd (mask!5474 lt!19310) #b00000000000000000000000000000001))))))

(declare-fun d!8443 () Bool)

(declare-fun res!26230 () Bool)

(assert (=> d!8443 (=> (not res!26230) (not e!28185))))

(assert (=> d!8443 (= res!26230 (validMask!0 (mask!5474 lt!19310)))))

(assert (=> d!8443 (= (simpleValid!31 lt!19310) e!28185)))

(declare-fun b!44458 () Bool)

(declare-fun res!26229 () Bool)

(assert (=> b!44458 (=> (not res!26229) (not e!28185))))

(assert (=> b!44458 (= res!26229 (bvsge (size!1640 lt!19310) (_size!244 lt!19310)))))

(declare-fun b!44460 () Bool)

(assert (=> b!44460 (= e!28185 (and (bvsge (extraKeys!1788 lt!19310) #b00000000000000000000000000000000) (bvsle (extraKeys!1788 lt!19310) #b00000000000000000000000000000011) (bvsge (_vacant!244 lt!19310) #b00000000000000000000000000000000)))))

(assert (= (and d!8443 res!26230) b!44457))

(assert (= (and b!44457 res!26228) b!44458))

(assert (= (and b!44458 res!26229) b!44459))

(assert (= (and b!44459 res!26227) b!44460))

(declare-fun m!38643 () Bool)

(assert (=> b!44459 m!38643))

(declare-fun m!38645 () Bool)

(assert (=> d!8443 m!38645))

(assert (=> b!44458 m!38643))

(assert (=> d!8363 d!8443))

(declare-fun d!8445 () Bool)

(declare-fun lt!19484 () (_ BitVec 32))

(assert (=> d!8445 (and (or (bvslt lt!19484 #b00000000000000000000000000000000) (bvsge lt!19484 (size!1623 lt!19313)) (and (bvsge lt!19484 #b00000000000000000000000000000000) (bvslt lt!19484 (size!1623 lt!19313)))) (bvsge lt!19484 #b00000000000000000000000000000000) (bvslt lt!19484 (size!1623 lt!19313)) (= (select (arr!1420 lt!19313) lt!19484) (_1!830 lt!19312)))))

(declare-fun e!28190 () (_ BitVec 32))

(assert (=> d!8445 (= lt!19484 e!28190)))

(declare-fun c!5838 () Bool)

(assert (=> d!8445 (= c!5838 (= (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_1!830 lt!19312)))))

(assert (=> d!8445 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 lt!19313)) (bvslt (size!1623 lt!19313) #b01111111111111111111111111111111))))

(assert (=> d!8445 (= (arrayScanForKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19484)))

(declare-fun b!44469 () Bool)

(assert (=> b!44469 (= e!28190 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(declare-fun b!44470 () Bool)

(assert (=> b!44470 (= e!28190 (arrayScanForKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8445 c!5838) b!44469))

(assert (= (and d!8445 (not c!5838)) b!44470))

(declare-fun m!38647 () Bool)

(assert (=> d!8445 m!38647))

(assert (=> d!8445 m!38537))

(declare-fun m!38649 () Bool)

(assert (=> b!44470 m!38649))

(assert (=> b!44187 d!8445))

(assert (=> b!44266 d!8437))

(declare-fun b!44627 () Bool)

(declare-fun res!26288 () Bool)

(declare-fun e!28289 () Bool)

(assert (=> b!44627 (=> (not res!26288) (not e!28289))))

(declare-fun e!28299 () Bool)

(assert (=> b!44627 (= res!26288 e!28299)))

(declare-fun c!5893 () Bool)

(assert (=> b!44627 (= c!5893 (not (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!44628 () Bool)

(declare-fun e!28294 () ListLongMap!1221)

(declare-fun call!3624 () ListLongMap!1221)

(declare-fun +!70 (ListLongMap!1221 tuple2!1640) ListLongMap!1221)

(assert (=> b!44628 (= e!28294 (+!70 call!3624 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))))

(declare-fun b!44629 () Bool)

(declare-fun e!28296 () Bool)

(declare-fun e!28293 () Bool)

(assert (=> b!44629 (= e!28296 e!28293)))

(declare-fun res!26289 () Bool)

(assert (=> b!44629 (=> (not res!26289) (not e!28293))))

(declare-fun lt!19603 () ListLongMap!1221)

(declare-fun contains!579 (ListLongMap!1221 (_ BitVec 64)) Bool)

(assert (=> b!44629 (= res!26289 (contains!579 lt!19603 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(assert (=> b!44629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(declare-fun bm!3618 () Bool)

(declare-fun call!3622 () ListLongMap!1221)

(declare-fun call!3626 () ListLongMap!1221)

(assert (=> bm!3618 (= call!3622 call!3626)))

(declare-fun b!44630 () Bool)

(declare-fun e!28298 () ListLongMap!1221)

(assert (=> b!44630 (= e!28294 e!28298)))

(declare-fun c!5894 () Bool)

(assert (=> b!44630 (= c!5894 (and (not (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!44631 () Bool)

(declare-fun call!3627 () ListLongMap!1221)

(assert (=> b!44631 (= e!28298 call!3627)))

(declare-fun b!44632 () Bool)

(declare-fun res!26293 () Bool)

(assert (=> b!44632 (=> (not res!26293) (not e!28289))))

(assert (=> b!44632 (= res!26293 e!28296)))

(declare-fun res!26291 () Bool)

(assert (=> b!44632 (=> res!26291 e!28296)))

(declare-fun e!28288 () Bool)

(assert (=> b!44632 (= res!26291 (not e!28288))))

(declare-fun res!26292 () Bool)

(assert (=> b!44632 (=> (not res!26292) (not e!28288))))

(assert (=> b!44632 (= res!26292 (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(declare-fun b!44633 () Bool)

(declare-fun e!28292 () Bool)

(assert (=> b!44633 (= e!28289 e!28292)))

(declare-fun c!5895 () Bool)

(assert (=> b!44633 (= c!5895 (not (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!44634 () Bool)

(declare-fun call!3625 () Bool)

(assert (=> b!44634 (= e!28292 (not call!3625))))

(declare-fun b!44635 () Bool)

(declare-fun e!28287 () ListLongMap!1221)

(declare-fun call!3621 () ListLongMap!1221)

(assert (=> b!44635 (= e!28287 call!3621)))

(declare-fun bm!3620 () Bool)

(assert (=> bm!3620 (= call!3621 call!3622)))

(declare-fun bm!3621 () Bool)

(assert (=> bm!3621 (= call!3627 call!3624)))

(declare-fun b!44636 () Bool)

(declare-fun call!3623 () Bool)

(assert (=> b!44636 (= e!28299 (not call!3623))))

(declare-fun b!44637 () Bool)

(assert (=> b!44637 (= e!28288 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44638 () Bool)

(declare-fun c!5892 () Bool)

(assert (=> b!44638 (= c!5892 (and (not (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!44638 (= e!28298 e!28287)))

(declare-fun b!44639 () Bool)

(declare-fun e!28295 () Bool)

(declare-fun apply!61 (ListLongMap!1221 (_ BitVec 64)) V!2327)

(assert (=> b!44639 (= e!28295 (= (apply!61 lt!19603 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1815 lt!19310)))))

(declare-fun d!8447 () Bool)

(assert (=> d!8447 e!28289))

(declare-fun res!26290 () Bool)

(assert (=> d!8447 (=> (not res!26290) (not e!28289))))

(assert (=> d!8447 (= res!26290 (or (bvsge #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))))

(declare-fun lt!19607 () ListLongMap!1221)

(assert (=> d!8447 (= lt!19603 lt!19607)))

(declare-fun lt!19594 () Unit!1233)

(declare-fun e!28291 () Unit!1233)

(assert (=> d!8447 (= lt!19594 e!28291)))

(declare-fun c!5896 () Bool)

(declare-fun e!28297 () Bool)

(assert (=> d!8447 (= c!5896 e!28297)))

(declare-fun res!26294 () Bool)

(assert (=> d!8447 (=> (not res!26294) (not e!28297))))

(assert (=> d!8447 (= res!26294 (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8447 (= lt!19607 e!28294)))

(declare-fun c!5891 () Bool)

(assert (=> d!8447 (= c!5891 (and (not (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1788 lt!19310) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!8447 (validMask!0 (mask!5474 lt!19310))))

(assert (=> d!8447 (= (getCurrentListMap!357 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)) lt!19603)))

(declare-fun bm!3619 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!39 (array!2953 array!2951 (_ BitVec 32) (_ BitVec 32) V!2327 V!2327 (_ BitVec 32) Int) ListLongMap!1221)

(assert (=> bm!3619 (= call!3626 (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)))))

(declare-fun bm!3622 () Bool)

(assert (=> bm!3622 (= call!3625 (contains!579 lt!19603 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44640 () Bool)

(declare-fun get!803 (ValueCell!705 V!2327) V!2327)

(assert (=> b!44640 (= e!28293 (= (apply!61 lt!19603 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)) (get!803 (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000) (dynLambda!266 (defaultEntry!1897 lt!19310) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44640 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1622 (_values!1880 lt!19310))))))

(assert (=> b!44640 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(declare-fun b!44641 () Bool)

(assert (=> b!44641 (= e!28299 e!28295)))

(declare-fun res!26287 () Bool)

(assert (=> b!44641 (= res!26287 call!3623)))

(assert (=> b!44641 (=> (not res!26287) (not e!28295))))

(declare-fun b!44642 () Bool)

(declare-fun lt!19609 () Unit!1233)

(assert (=> b!44642 (= e!28291 lt!19609)))

(declare-fun lt!19597 () ListLongMap!1221)

(assert (=> b!44642 (= lt!19597 (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)))))

(declare-fun lt!19602 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19602 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19606 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19606 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))

(declare-fun lt!19605 () Unit!1233)

(declare-fun addStillContains!37 (ListLongMap!1221 (_ BitVec 64) V!2327 (_ BitVec 64)) Unit!1233)

(assert (=> b!44642 (= lt!19605 (addStillContains!37 lt!19597 lt!19602 (zeroValue!1815 lt!19310) lt!19606))))

(assert (=> b!44642 (contains!579 (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))) lt!19606)))

(declare-fun lt!19608 () Unit!1233)

(assert (=> b!44642 (= lt!19608 lt!19605)))

(declare-fun lt!19613 () ListLongMap!1221)

(assert (=> b!44642 (= lt!19613 (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)))))

(declare-fun lt!19610 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19610 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19599 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19599 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))

(declare-fun lt!19598 () Unit!1233)

(declare-fun addApplyDifferent!37 (ListLongMap!1221 (_ BitVec 64) V!2327 (_ BitVec 64)) Unit!1233)

(assert (=> b!44642 (= lt!19598 (addApplyDifferent!37 lt!19613 lt!19610 (minValue!1815 lt!19310) lt!19599))))

(assert (=> b!44642 (= (apply!61 (+!70 lt!19613 (tuple2!1641 lt!19610 (minValue!1815 lt!19310))) lt!19599) (apply!61 lt!19613 lt!19599))))

(declare-fun lt!19596 () Unit!1233)

(assert (=> b!44642 (= lt!19596 lt!19598)))

(declare-fun lt!19611 () ListLongMap!1221)

(assert (=> b!44642 (= lt!19611 (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)))))

(declare-fun lt!19615 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19615 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19614 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19614 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))

(declare-fun lt!19601 () Unit!1233)

(assert (=> b!44642 (= lt!19601 (addApplyDifferent!37 lt!19611 lt!19615 (zeroValue!1815 lt!19310) lt!19614))))

(assert (=> b!44642 (= (apply!61 (+!70 lt!19611 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))) lt!19614) (apply!61 lt!19611 lt!19614))))

(declare-fun lt!19612 () Unit!1233)

(assert (=> b!44642 (= lt!19612 lt!19601)))

(declare-fun lt!19600 () ListLongMap!1221)

(assert (=> b!44642 (= lt!19600 (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)))))

(declare-fun lt!19604 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19604 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!19595 () (_ BitVec 64))

(assert (=> b!44642 (= lt!19595 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))

(assert (=> b!44642 (= lt!19609 (addApplyDifferent!37 lt!19600 lt!19604 (minValue!1815 lt!19310) lt!19595))))

(assert (=> b!44642 (= (apply!61 (+!70 lt!19600 (tuple2!1641 lt!19604 (minValue!1815 lt!19310))) lt!19595) (apply!61 lt!19600 lt!19595))))

(declare-fun b!44643 () Bool)

(assert (=> b!44643 (= e!28287 call!3627)))

(declare-fun b!44644 () Bool)

(declare-fun Unit!1241 () Unit!1233)

(assert (=> b!44644 (= e!28291 Unit!1241)))

(declare-fun b!44645 () Bool)

(assert (=> b!44645 (= e!28297 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44646 () Bool)

(declare-fun e!28290 () Bool)

(assert (=> b!44646 (= e!28292 e!28290)))

(declare-fun res!26286 () Bool)

(assert (=> b!44646 (= res!26286 call!3625)))

(assert (=> b!44646 (=> (not res!26286) (not e!28290))))

(declare-fun bm!3623 () Bool)

(assert (=> bm!3623 (= call!3624 (+!70 (ite c!5891 call!3626 (ite c!5894 call!3622 call!3621)) (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))))))

(declare-fun bm!3624 () Bool)

(assert (=> bm!3624 (= call!3623 (contains!579 lt!19603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44647 () Bool)

(assert (=> b!44647 (= e!28290 (= (apply!61 lt!19603 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1815 lt!19310)))))

(assert (= (and d!8447 c!5891) b!44628))

(assert (= (and d!8447 (not c!5891)) b!44630))

(assert (= (and b!44630 c!5894) b!44631))

(assert (= (and b!44630 (not c!5894)) b!44638))

(assert (= (and b!44638 c!5892) b!44643))

(assert (= (and b!44638 (not c!5892)) b!44635))

(assert (= (or b!44643 b!44635) bm!3620))

(assert (= (or b!44631 bm!3620) bm!3618))

(assert (= (or b!44631 b!44643) bm!3621))

(assert (= (or b!44628 bm!3618) bm!3619))

(assert (= (or b!44628 bm!3621) bm!3623))

(assert (= (and d!8447 res!26294) b!44645))

(assert (= (and d!8447 c!5896) b!44642))

(assert (= (and d!8447 (not c!5896)) b!44644))

(assert (= (and d!8447 res!26290) b!44632))

(assert (= (and b!44632 res!26292) b!44637))

(assert (= (and b!44632 (not res!26291)) b!44629))

(assert (= (and b!44629 res!26289) b!44640))

(assert (= (and b!44632 res!26293) b!44627))

(assert (= (and b!44627 c!5893) b!44641))

(assert (= (and b!44627 (not c!5893)) b!44636))

(assert (= (and b!44641 res!26287) b!44639))

(assert (= (or b!44641 b!44636) bm!3624))

(assert (= (and b!44627 res!26288) b!44633))

(assert (= (and b!44633 c!5895) b!44646))

(assert (= (and b!44633 (not c!5895)) b!44634))

(assert (= (and b!44646 res!26286) b!44647))

(assert (= (or b!44646 b!44634) bm!3622))

(declare-fun b_lambda!2341 () Bool)

(assert (=> (not b_lambda!2341) (not b!44640)))

(declare-fun tb!1015 () Bool)

(declare-fun t!4258 () Bool)

(assert (=> (and start!6744 (= defaultEntry!470 (defaultEntry!1897 lt!19310)) t!4258) tb!1015))

(declare-fun result!1767 () Bool)

(assert (=> tb!1015 (= result!1767 tp_is_empty!1905)))

(assert (=> b!44640 t!4258))

(declare-fun b_and!2721 () Bool)

(assert (= b_and!2715 (and (=> t!4258 result!1767) b_and!2721)))

(assert (=> b!44629 m!38553))

(assert (=> b!44629 m!38553))

(declare-fun m!38719 () Bool)

(assert (=> b!44629 m!38719))

(declare-fun m!38721 () Bool)

(assert (=> bm!3622 m!38721))

(declare-fun m!38723 () Bool)

(assert (=> bm!3619 m!38723))

(declare-fun m!38725 () Bool)

(assert (=> b!44647 m!38725))

(assert (=> d!8447 m!38645))

(declare-fun m!38727 () Bool)

(assert (=> b!44639 m!38727))

(declare-fun m!38729 () Bool)

(assert (=> b!44628 m!38729))

(assert (=> b!44637 m!38553))

(assert (=> b!44637 m!38553))

(assert (=> b!44637 m!38555))

(declare-fun m!38731 () Bool)

(assert (=> b!44642 m!38731))

(declare-fun m!38733 () Bool)

(assert (=> b!44642 m!38733))

(declare-fun m!38735 () Bool)

(assert (=> b!44642 m!38735))

(assert (=> b!44642 m!38735))

(declare-fun m!38737 () Bool)

(assert (=> b!44642 m!38737))

(declare-fun m!38739 () Bool)

(assert (=> b!44642 m!38739))

(declare-fun m!38741 () Bool)

(assert (=> b!44642 m!38741))

(declare-fun m!38743 () Bool)

(assert (=> b!44642 m!38743))

(declare-fun m!38745 () Bool)

(assert (=> b!44642 m!38745))

(declare-fun m!38747 () Bool)

(assert (=> b!44642 m!38747))

(declare-fun m!38749 () Bool)

(assert (=> b!44642 m!38749))

(declare-fun m!38751 () Bool)

(assert (=> b!44642 m!38751))

(declare-fun m!38753 () Bool)

(assert (=> b!44642 m!38753))

(assert (=> b!44642 m!38751))

(declare-fun m!38755 () Bool)

(assert (=> b!44642 m!38755))

(assert (=> b!44642 m!38755))

(declare-fun m!38757 () Bool)

(assert (=> b!44642 m!38757))

(assert (=> b!44642 m!38723))

(assert (=> b!44642 m!38739))

(assert (=> b!44642 m!38553))

(declare-fun m!38759 () Bool)

(assert (=> b!44642 m!38759))

(assert (=> b!44645 m!38553))

(assert (=> b!44645 m!38553))

(assert (=> b!44645 m!38555))

(declare-fun m!38761 () Bool)

(assert (=> b!44640 m!38761))

(declare-fun m!38763 () Bool)

(assert (=> b!44640 m!38763))

(assert (=> b!44640 m!38553))

(declare-fun m!38765 () Bool)

(assert (=> b!44640 m!38765))

(assert (=> b!44640 m!38763))

(assert (=> b!44640 m!38761))

(declare-fun m!38767 () Bool)

(assert (=> b!44640 m!38767))

(assert (=> b!44640 m!38553))

(declare-fun m!38769 () Bool)

(assert (=> bm!3624 m!38769))

(declare-fun m!38771 () Bool)

(assert (=> bm!3623 m!38771))

(assert (=> d!8375 d!8447))

(declare-fun d!8479 () Bool)

(declare-fun res!26297 () Bool)

(declare-fun e!28307 () Bool)

(assert (=> d!8479 (=> res!26297 e!28307)))

(assert (=> d!8479 (= res!26297 (bvsge #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8479 (= (arrayNoDuplicates!0 (_keys!3464 lt!19310) #b00000000000000000000000000000000 Nil!1224) e!28307)))

(declare-fun b!44660 () Bool)

(declare-fun e!28306 () Bool)

(assert (=> b!44660 (= e!28306 (contains!578 Nil!1224 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun bm!3631 () Bool)

(declare-fun call!3634 () Bool)

(declare-fun c!5903 () Bool)

(assert (=> bm!3631 (= call!3634 (arrayNoDuplicates!0 (_keys!3464 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5903 (Cons!1223 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) Nil!1224) Nil!1224)))))

(declare-fun b!44661 () Bool)

(declare-fun e!28309 () Bool)

(declare-fun e!28308 () Bool)

(assert (=> b!44661 (= e!28309 e!28308)))

(assert (=> b!44661 (= c!5903 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44662 () Bool)

(assert (=> b!44662 (= e!28308 call!3634)))

(declare-fun b!44663 () Bool)

(assert (=> b!44663 (= e!28307 e!28309)))

(declare-fun res!26295 () Bool)

(assert (=> b!44663 (=> (not res!26295) (not e!28309))))

(assert (=> b!44663 (= res!26295 (not e!28306))))

(declare-fun res!26296 () Bool)

(assert (=> b!44663 (=> (not res!26296) (not e!28306))))

(assert (=> b!44663 (= res!26296 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44664 () Bool)

(assert (=> b!44664 (= e!28308 call!3634)))

(assert (= (and d!8479 (not res!26297)) b!44663))

(assert (= (and b!44663 res!26296) b!44660))

(assert (= (and b!44663 res!26295) b!44661))

(assert (= (and b!44661 c!5903) b!44664))

(assert (= (and b!44661 (not c!5903)) b!44662))

(assert (= (or b!44664 b!44662) bm!3631))

(assert (=> b!44660 m!38553))

(assert (=> b!44660 m!38553))

(declare-fun m!38773 () Bool)

(assert (=> b!44660 m!38773))

(assert (=> bm!3631 m!38553))

(declare-fun m!38775 () Bool)

(assert (=> bm!3631 m!38775))

(assert (=> b!44661 m!38553))

(assert (=> b!44661 m!38553))

(assert (=> b!44661 m!38555))

(assert (=> b!44663 m!38553))

(assert (=> b!44663 m!38553))

(assert (=> b!44663 m!38555))

(assert (=> b!44313 d!8479))

(assert (=> d!8371 d!8379))

(declare-fun d!8481 () Bool)

(assert (=> d!8481 (arrayNoDuplicates!0 lt!19313 #b00000000000000000000000000000000 Nil!1224)))

(assert (=> d!8481 true))

(declare-fun res!26302 () Unit!1233)

(assert (=> d!8481 (= (choose!111 lt!19313 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1224) res!26302)))

(declare-fun bs!2027 () Bool)

(assert (= bs!2027 d!8481))

(assert (=> bs!2027 m!38379))

(assert (=> d!8371 d!8481))

(declare-fun d!8483 () Bool)

(declare-fun lt!19684 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!43 (List!1227) (InoxSet (_ BitVec 64)))

(assert (=> d!8483 (= lt!19684 (select (content!43 Nil!1224) (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun e!28344 () Bool)

(assert (=> d!8483 (= lt!19684 e!28344)))

(declare-fun res!26330 () Bool)

(assert (=> d!8483 (=> (not res!26330) (not e!28344))))

(assert (=> d!8483 (= res!26330 ((_ is Cons!1223) Nil!1224))))

(assert (=> d!8483 (= (contains!578 Nil!1224 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)) lt!19684)))

(declare-fun b!44712 () Bool)

(declare-fun e!28343 () Bool)

(assert (=> b!44712 (= e!28344 e!28343)))

(declare-fun res!26331 () Bool)

(assert (=> b!44712 (=> res!26331 e!28343)))

(assert (=> b!44712 (= res!26331 (= (h!1800 Nil!1224) (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun b!44713 () Bool)

(assert (=> b!44713 (= e!28343 (contains!578 (t!4252 Nil!1224) (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(assert (= (and d!8483 res!26330) b!44712))

(assert (= (and b!44712 (not res!26331)) b!44713))

(declare-fun m!38815 () Bool)

(assert (=> d!8483 m!38815))

(assert (=> d!8483 m!38445))

(declare-fun m!38819 () Bool)

(assert (=> d!8483 m!38819))

(assert (=> b!44713 m!38445))

(declare-fun m!38825 () Bool)

(assert (=> b!44713 m!38825))

(assert (=> b!44342 d!8483))

(assert (=> d!8349 d!8341))

(declare-fun d!8485 () Bool)

(assert (=> d!8485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19313 mask!853)))

(assert (=> d!8485 true))

(declare-fun _$30!75 () Unit!1233)

(assert (=> d!8485 (= (choose!34 lt!19313 mask!853 #b00000000000000000000000000000000) _$30!75)))

(declare-fun bs!2028 () Bool)

(assert (= bs!2028 d!8485))

(assert (=> bs!2028 m!38381))

(assert (=> d!8349 d!8485))

(assert (=> d!8349 d!8331))

(check-sat (not d!8393) (not b!44629) (not b!44362) (not d!8485) (not b!44642) (not b!44637) (not b!44663) (not b!44470) (not b!44357) (not b!44647) (not b!44713) (not d!8447) (not bm!3624) (not b!44445) (not b!44447) (not bm!3576) (not b!44639) (not b!44660) (not b!44352) (not bm!3577) (not b!44459) (not bm!3584) (not b!44426) (not bm!3622) (not b!44351) (not b!44458) (not b!44628) (not d!8399) (not b!44440) (not b!44444) (not bm!3619) (not b!44640) (not b_next!1515) (not d!8481) (not bm!3578) (not d!8441) b_and!2721 (not bm!3623) (not bm!3631) (not b!44645) (not b!44347) (not b!44438) (not bm!3583) (not b!44356) (not b!44441) (not d!8483) (not b_lambda!2341) (not d!8443) (not b!44661) tp_is_empty!1905 (not b_lambda!2339))
(check-sat b_and!2721 (not b_next!1515))
(get-model)

(assert (=> d!8393 d!8395))

(declare-fun d!8495 () Bool)

(assert (=> d!8495 (arrayContainsKey!0 lt!19313 lt!19413 #b00000000000000000000000000000000)))

(assert (=> d!8495 true))

(declare-fun _$60!350 () Unit!1233)

(assert (=> d!8495 (= (choose!13 lt!19313 lt!19413 #b00000000000000000000000000000000) _$60!350)))

(declare-fun bs!2029 () Bool)

(assert (= bs!2029 d!8495))

(assert (=> bs!2029 m!38483))

(assert (=> d!8393 d!8495))

(declare-fun d!8497 () Bool)

(assert (=> d!8497 (= (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44445 d!8497))

(declare-fun d!8499 () Bool)

(declare-fun res!26350 () Bool)

(declare-fun e!28373 () Bool)

(assert (=> d!8499 (=> res!26350 e!28373)))

(assert (=> d!8499 (= res!26350 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(assert (=> d!8499 (= (arrayNoDuplicates!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5833 (Cons!1223 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224))) e!28373)))

(declare-fun b!44758 () Bool)

(declare-fun e!28372 () Bool)

(assert (=> b!44758 (= e!28372 (contains!578 (ite c!5833 (Cons!1223 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun call!3660 () Bool)

(declare-fun bm!3657 () Bool)

(declare-fun c!5927 () Bool)

(assert (=> bm!3657 (= call!3660 (arrayNoDuplicates!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5927 (Cons!1223 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!5833 (Cons!1223 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224))) (ite c!5833 (Cons!1223 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)))))))

(declare-fun b!44759 () Bool)

(declare-fun e!28375 () Bool)

(declare-fun e!28374 () Bool)

(assert (=> b!44759 (= e!28375 e!28374)))

(assert (=> b!44759 (= c!5927 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!44760 () Bool)

(assert (=> b!44760 (= e!28374 call!3660)))

(declare-fun b!44761 () Bool)

(assert (=> b!44761 (= e!28373 e!28375)))

(declare-fun res!26348 () Bool)

(assert (=> b!44761 (=> (not res!26348) (not e!28375))))

(assert (=> b!44761 (= res!26348 (not e!28372))))

(declare-fun res!26349 () Bool)

(assert (=> b!44761 (=> (not res!26349) (not e!28372))))

(assert (=> b!44761 (= res!26349 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!44762 () Bool)

(assert (=> b!44762 (= e!28374 call!3660)))

(assert (= (and d!8499 (not res!26350)) b!44761))

(assert (= (and b!44761 res!26349) b!44758))

(assert (= (and b!44761 res!26348) b!44759))

(assert (= (and b!44759 c!5927) b!44762))

(assert (= (and b!44759 (not c!5927)) b!44760))

(assert (= (or b!44762 b!44760) bm!3657))

(declare-fun m!38909 () Bool)

(assert (=> b!44758 m!38909))

(assert (=> b!44758 m!38909))

(declare-fun m!38911 () Bool)

(assert (=> b!44758 m!38911))

(assert (=> bm!3657 m!38909))

(declare-fun m!38913 () Bool)

(assert (=> bm!3657 m!38913))

(assert (=> b!44759 m!38909))

(assert (=> b!44759 m!38909))

(declare-fun m!38915 () Bool)

(assert (=> b!44759 m!38915))

(assert (=> b!44761 m!38909))

(assert (=> b!44761 m!38909))

(assert (=> b!44761 m!38915))

(assert (=> bm!3584 d!8499))

(declare-fun d!8501 () Bool)

(assert (=> d!8501 (= (validMask!0 (mask!5474 lt!19310)) (and (or (= (mask!5474 lt!19310) #b00000000000000000000000000000111) (= (mask!5474 lt!19310) #b00000000000000000000000000001111) (= (mask!5474 lt!19310) #b00000000000000000000000000011111) (= (mask!5474 lt!19310) #b00000000000000000000000000111111) (= (mask!5474 lt!19310) #b00000000000000000000000001111111) (= (mask!5474 lt!19310) #b00000000000000000000000011111111) (= (mask!5474 lt!19310) #b00000000000000000000000111111111) (= (mask!5474 lt!19310) #b00000000000000000000001111111111) (= (mask!5474 lt!19310) #b00000000000000000000011111111111) (= (mask!5474 lt!19310) #b00000000000000000000111111111111) (= (mask!5474 lt!19310) #b00000000000000000001111111111111) (= (mask!5474 lt!19310) #b00000000000000000011111111111111) (= (mask!5474 lt!19310) #b00000000000000000111111111111111) (= (mask!5474 lt!19310) #b00000000000000001111111111111111) (= (mask!5474 lt!19310) #b00000000000000011111111111111111) (= (mask!5474 lt!19310) #b00000000000000111111111111111111) (= (mask!5474 lt!19310) #b00000000000001111111111111111111) (= (mask!5474 lt!19310) #b00000000000011111111111111111111) (= (mask!5474 lt!19310) #b00000000000111111111111111111111) (= (mask!5474 lt!19310) #b00000000001111111111111111111111) (= (mask!5474 lt!19310) #b00000000011111111111111111111111) (= (mask!5474 lt!19310) #b00000000111111111111111111111111) (= (mask!5474 lt!19310) #b00000001111111111111111111111111) (= (mask!5474 lt!19310) #b00000011111111111111111111111111) (= (mask!5474 lt!19310) #b00000111111111111111111111111111) (= (mask!5474 lt!19310) #b00001111111111111111111111111111) (= (mask!5474 lt!19310) #b00011111111111111111111111111111) (= (mask!5474 lt!19310) #b00111111111111111111111111111111)) (bvsle (mask!5474 lt!19310) #b00111111111111111111111111111111)))))

(assert (=> d!8443 d!8501))

(assert (=> d!8485 d!8341))

(declare-fun d!8503 () Bool)

(assert (=> d!8503 (= (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!44637 d!8503))

(declare-fun d!8505 () Bool)

(declare-fun lt!19712 () (_ BitVec 32))

(assert (=> d!8505 (and (or (bvslt lt!19712 #b00000000000000000000000000000000) (bvsge lt!19712 (size!1623 lt!19313)) (and (bvsge lt!19712 #b00000000000000000000000000000000) (bvslt lt!19712 (size!1623 lt!19313)))) (bvsge lt!19712 #b00000000000000000000000000000000) (bvslt lt!19712 (size!1623 lt!19313)) (= (select (arr!1420 lt!19313) lt!19712) (_1!830 lt!19312)))))

(declare-fun e!28376 () (_ BitVec 32))

(assert (=> d!8505 (= lt!19712 e!28376)))

(declare-fun c!5928 () Bool)

(assert (=> d!8505 (= c!5928 (= (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (_1!830 lt!19312)))))

(assert (=> d!8505 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1623 lt!19313)) (bvslt (size!1623 lt!19313) #b01111111111111111111111111111111))))

(assert (=> d!8505 (= (arrayScanForKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!19712)))

(declare-fun b!44763 () Bool)

(assert (=> b!44763 (= e!28376 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))

(declare-fun b!44764 () Bool)

(assert (=> b!44764 (= e!28376 (arrayScanForKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8505 c!5928) b!44763))

(assert (= (and d!8505 (not c!5928)) b!44764))

(declare-fun m!38917 () Bool)

(assert (=> d!8505 m!38917))

(assert (=> d!8505 m!38909))

(declare-fun m!38919 () Bool)

(assert (=> b!44764 m!38919))

(assert (=> b!44470 d!8505))

(assert (=> b!44447 d!8497))

(assert (=> d!8447 d!8501))

(assert (=> b!44661 d!8503))

(declare-fun d!8507 () Bool)

(declare-datatypes ((Option!112 0))(
  ( (Some!111 (v!2091 V!2327)) (None!110) )
))
(declare-fun get!806 (Option!112) V!2327)

(declare-fun getValueByKey!106 (List!1226 (_ BitVec 64)) Option!112)

(assert (=> d!8507 (= (apply!61 lt!19603 #b1000000000000000000000000000000000000000000000000000000000000000) (get!806 (getValueByKey!106 (toList!626 lt!19603) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2030 () Bool)

(assert (= bs!2030 d!8507))

(declare-fun m!38921 () Bool)

(assert (=> bs!2030 m!38921))

(assert (=> bs!2030 m!38921))

(declare-fun m!38923 () Bool)

(assert (=> bs!2030 m!38923))

(assert (=> b!44647 d!8507))

(assert (=> b!44352 d!8497))

(declare-fun b!44789 () Bool)

(declare-fun e!28394 () Bool)

(assert (=> b!44789 (= e!28394 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(assert (=> b!44789 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!3660 () Bool)

(declare-fun call!3663 () ListLongMap!1221)

(assert (=> bm!3660 (= call!3663 (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1897 lt!19310)))))

(declare-fun b!44790 () Bool)

(declare-fun e!28393 () Bool)

(declare-fun e!28392 () Bool)

(assert (=> b!44790 (= e!28393 e!28392)))

(declare-fun c!5937 () Bool)

(assert (=> b!44790 (= c!5937 (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(declare-fun b!44791 () Bool)

(declare-fun e!28395 () ListLongMap!1221)

(declare-fun e!28396 () ListLongMap!1221)

(assert (=> b!44791 (= e!28395 e!28396)))

(declare-fun c!5938 () Bool)

(assert (=> b!44791 (= c!5938 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun d!8509 () Bool)

(declare-fun e!28391 () Bool)

(assert (=> d!8509 e!28391))

(declare-fun res!26361 () Bool)

(assert (=> d!8509 (=> (not res!26361) (not e!28391))))

(declare-fun lt!19727 () ListLongMap!1221)

(assert (=> d!8509 (= res!26361 (not (contains!579 lt!19727 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!8509 (= lt!19727 e!28395)))

(declare-fun c!5940 () Bool)

(assert (=> d!8509 (= c!5940 (bvsge #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8509 (validMask!0 (mask!5474 lt!19310))))

(assert (=> d!8509 (= (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) #b00000000000000000000000000000000 (defaultEntry!1897 lt!19310)) lt!19727)))

(declare-fun b!44792 () Bool)

(declare-fun lt!19729 () Unit!1233)

(declare-fun lt!19728 () Unit!1233)

(assert (=> b!44792 (= lt!19729 lt!19728)))

(declare-fun lt!19733 () (_ BitVec 64))

(declare-fun lt!19730 () (_ BitVec 64))

(declare-fun lt!19731 () ListLongMap!1221)

(declare-fun lt!19732 () V!2327)

(assert (=> b!44792 (not (contains!579 (+!70 lt!19731 (tuple2!1641 lt!19730 lt!19732)) lt!19733))))

(declare-fun addStillNotContains!13 (ListLongMap!1221 (_ BitVec 64) V!2327 (_ BitVec 64)) Unit!1233)

(assert (=> b!44792 (= lt!19728 (addStillNotContains!13 lt!19731 lt!19730 lt!19732 lt!19733))))

(assert (=> b!44792 (= lt!19733 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!44792 (= lt!19732 (get!803 (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000) (dynLambda!266 (defaultEntry!1897 lt!19310) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!44792 (= lt!19730 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))

(assert (=> b!44792 (= lt!19731 call!3663)))

(assert (=> b!44792 (= e!28396 (+!70 call!3663 (tuple2!1641 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) (get!803 (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000) (dynLambda!266 (defaultEntry!1897 lt!19310) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!44793 () Bool)

(declare-fun isEmpty!292 (ListLongMap!1221) Bool)

(assert (=> b!44793 (= e!28392 (isEmpty!292 lt!19727))))

(declare-fun b!44794 () Bool)

(assert (=> b!44794 (= e!28391 e!28393)))

(declare-fun c!5939 () Bool)

(assert (=> b!44794 (= c!5939 e!28394)))

(declare-fun res!26362 () Bool)

(assert (=> b!44794 (=> (not res!26362) (not e!28394))))

(assert (=> b!44794 (= res!26362 (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(declare-fun b!44795 () Bool)

(assert (=> b!44795 (= e!28395 (ListLongMap!1222 Nil!1223))))

(declare-fun b!44796 () Bool)

(assert (=> b!44796 (= e!28396 call!3663)))

(declare-fun b!44797 () Bool)

(declare-fun res!26359 () Bool)

(assert (=> b!44797 (=> (not res!26359) (not e!28391))))

(assert (=> b!44797 (= res!26359 (not (contains!579 lt!19727 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!44798 () Bool)

(declare-fun e!28397 () Bool)

(assert (=> b!44798 (= e!28393 e!28397)))

(assert (=> b!44798 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(declare-fun res!26360 () Bool)

(assert (=> b!44798 (= res!26360 (contains!579 lt!19727 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(assert (=> b!44798 (=> (not res!26360) (not e!28397))))

(declare-fun b!44799 () Bool)

(assert (=> b!44799 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1623 (_keys!3464 lt!19310))))))

(assert (=> b!44799 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1622 (_values!1880 lt!19310))))))

(assert (=> b!44799 (= e!28397 (= (apply!61 lt!19727 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)) (get!803 (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000) (dynLambda!266 (defaultEntry!1897 lt!19310) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!44800 () Bool)

(assert (=> b!44800 (= e!28392 (= lt!19727 (getCurrentListMapNoExtraKeys!39 (_keys!3464 lt!19310) (_values!1880 lt!19310) (mask!5474 lt!19310) (extraKeys!1788 lt!19310) (zeroValue!1815 lt!19310) (minValue!1815 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1897 lt!19310))))))

(assert (= (and d!8509 c!5940) b!44795))

(assert (= (and d!8509 (not c!5940)) b!44791))

(assert (= (and b!44791 c!5938) b!44792))

(assert (= (and b!44791 (not c!5938)) b!44796))

(assert (= (or b!44792 b!44796) bm!3660))

(assert (= (and d!8509 res!26361) b!44797))

(assert (= (and b!44797 res!26359) b!44794))

(assert (= (and b!44794 res!26362) b!44789))

(assert (= (and b!44794 c!5939) b!44798))

(assert (= (and b!44794 (not c!5939)) b!44790))

(assert (= (and b!44798 res!26360) b!44799))

(assert (= (and b!44790 c!5937) b!44800))

(assert (= (and b!44790 (not c!5937)) b!44793))

(declare-fun b_lambda!2347 () Bool)

(assert (=> (not b_lambda!2347) (not b!44792)))

(assert (=> b!44792 t!4258))

(declare-fun b_and!2727 () Bool)

(assert (= b_and!2721 (and (=> t!4258 result!1767) b_and!2727)))

(declare-fun b_lambda!2349 () Bool)

(assert (=> (not b_lambda!2349) (not b!44799)))

(assert (=> b!44799 t!4258))

(declare-fun b_and!2729 () Bool)

(assert (= b_and!2727 (and (=> t!4258 result!1767) b_and!2729)))

(assert (=> b!44798 m!38553))

(assert (=> b!44798 m!38553))

(declare-fun m!38925 () Bool)

(assert (=> b!44798 m!38925))

(declare-fun m!38927 () Bool)

(assert (=> b!44793 m!38927))

(declare-fun m!38929 () Bool)

(assert (=> d!8509 m!38929))

(assert (=> d!8509 m!38645))

(declare-fun m!38931 () Bool)

(assert (=> b!44800 m!38931))

(assert (=> b!44789 m!38553))

(assert (=> b!44789 m!38553))

(assert (=> b!44789 m!38555))

(assert (=> b!44791 m!38553))

(assert (=> b!44791 m!38553))

(assert (=> b!44791 m!38555))

(assert (=> bm!3660 m!38931))

(declare-fun m!38933 () Bool)

(assert (=> b!44792 m!38933))

(assert (=> b!44792 m!38933))

(declare-fun m!38935 () Bool)

(assert (=> b!44792 m!38935))

(declare-fun m!38937 () Bool)

(assert (=> b!44792 m!38937))

(assert (=> b!44792 m!38763))

(assert (=> b!44792 m!38761))

(assert (=> b!44792 m!38553))

(declare-fun m!38939 () Bool)

(assert (=> b!44792 m!38939))

(assert (=> b!44792 m!38763))

(assert (=> b!44792 m!38761))

(assert (=> b!44792 m!38767))

(declare-fun m!38941 () Bool)

(assert (=> b!44797 m!38941))

(assert (=> b!44799 m!38553))

(declare-fun m!38943 () Bool)

(assert (=> b!44799 m!38943))

(assert (=> b!44799 m!38763))

(assert (=> b!44799 m!38761))

(assert (=> b!44799 m!38767))

(assert (=> b!44799 m!38763))

(assert (=> b!44799 m!38761))

(assert (=> b!44799 m!38553))

(assert (=> bm!3619 d!8509))

(declare-fun d!8511 () Bool)

(declare-fun res!26365 () Bool)

(declare-fun e!28399 () Bool)

(assert (=> d!8511 (=> res!26365 e!28399)))

(assert (=> d!8511 (= res!26365 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8511 (= (arrayNoDuplicates!0 (_keys!3464 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5903 (Cons!1223 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) e!28399)))

(declare-fun b!44801 () Bool)

(declare-fun e!28398 () Bool)

(assert (=> b!44801 (= e!28398 (contains!578 (ite c!5903 (Cons!1223 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) Nil!1224) Nil!1224) (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!5941 () Bool)

(declare-fun bm!3661 () Bool)

(declare-fun call!3664 () Bool)

(assert (=> bm!3661 (= call!3664 (arrayNoDuplicates!0 (_keys!3464 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5941 (Cons!1223 (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5903 (Cons!1223 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (ite c!5903 (Cons!1223 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) Nil!1224) Nil!1224))))))

(declare-fun b!44802 () Bool)

(declare-fun e!28401 () Bool)

(declare-fun e!28400 () Bool)

(assert (=> b!44802 (= e!28401 e!28400)))

(assert (=> b!44802 (= c!5941 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44803 () Bool)

(assert (=> b!44803 (= e!28400 call!3664)))

(declare-fun b!44804 () Bool)

(assert (=> b!44804 (= e!28399 e!28401)))

(declare-fun res!26363 () Bool)

(assert (=> b!44804 (=> (not res!26363) (not e!28401))))

(assert (=> b!44804 (= res!26363 (not e!28398))))

(declare-fun res!26364 () Bool)

(assert (=> b!44804 (=> (not res!26364) (not e!28398))))

(assert (=> b!44804 (= res!26364 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44805 () Bool)

(assert (=> b!44805 (= e!28400 call!3664)))

(assert (= (and d!8511 (not res!26365)) b!44804))

(assert (= (and b!44804 res!26364) b!44801))

(assert (= (and b!44804 res!26363) b!44802))

(assert (= (and b!44802 c!5941) b!44805))

(assert (= (and b!44802 (not c!5941)) b!44803))

(assert (= (or b!44805 b!44803) bm!3661))

(declare-fun m!38945 () Bool)

(assert (=> b!44801 m!38945))

(assert (=> b!44801 m!38945))

(declare-fun m!38947 () Bool)

(assert (=> b!44801 m!38947))

(assert (=> bm!3661 m!38945))

(declare-fun m!38949 () Bool)

(assert (=> bm!3661 m!38949))

(assert (=> b!44802 m!38945))

(assert (=> b!44802 m!38945))

(declare-fun m!38951 () Bool)

(assert (=> b!44802 m!38951))

(assert (=> b!44804 m!38945))

(assert (=> b!44804 m!38945))

(assert (=> b!44804 m!38951))

(assert (=> bm!3631 d!8511))

(declare-fun d!8513 () Bool)

(declare-fun e!28407 () Bool)

(assert (=> d!8513 e!28407))

(declare-fun res!26368 () Bool)

(assert (=> d!8513 (=> res!26368 e!28407)))

(declare-fun lt!19742 () Bool)

(assert (=> d!8513 (= res!26368 (not lt!19742))))

(declare-fun lt!19745 () Bool)

(assert (=> d!8513 (= lt!19742 lt!19745)))

(declare-fun lt!19744 () Unit!1233)

(declare-fun e!28406 () Unit!1233)

(assert (=> d!8513 (= lt!19744 e!28406)))

(declare-fun c!5944 () Bool)

(assert (=> d!8513 (= c!5944 lt!19745)))

(declare-fun containsKey!74 (List!1226 (_ BitVec 64)) Bool)

(assert (=> d!8513 (= lt!19745 (containsKey!74 (toList!626 lt!19603) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8513 (= (contains!579 lt!19603 #b0000000000000000000000000000000000000000000000000000000000000000) lt!19742)))

(declare-fun b!44812 () Bool)

(declare-fun lt!19743 () Unit!1233)

(assert (=> b!44812 (= e!28406 lt!19743)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!62 (List!1226 (_ BitVec 64)) Unit!1233)

(assert (=> b!44812 (= lt!19743 (lemmaContainsKeyImpliesGetValueByKeyDefined!62 (toList!626 lt!19603) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!63 (Option!112) Bool)

(assert (=> b!44812 (isDefined!63 (getValueByKey!106 (toList!626 lt!19603) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!44813 () Bool)

(declare-fun Unit!1244 () Unit!1233)

(assert (=> b!44813 (= e!28406 Unit!1244)))

(declare-fun b!44814 () Bool)

(assert (=> b!44814 (= e!28407 (isDefined!63 (getValueByKey!106 (toList!626 lt!19603) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8513 c!5944) b!44812))

(assert (= (and d!8513 (not c!5944)) b!44813))

(assert (= (and d!8513 (not res!26368)) b!44814))

(declare-fun m!38953 () Bool)

(assert (=> d!8513 m!38953))

(declare-fun m!38955 () Bool)

(assert (=> b!44812 m!38955))

(declare-fun m!38957 () Bool)

(assert (=> b!44812 m!38957))

(assert (=> b!44812 m!38957))

(declare-fun m!38959 () Bool)

(assert (=> b!44812 m!38959))

(assert (=> b!44814 m!38957))

(assert (=> b!44814 m!38957))

(assert (=> b!44814 m!38959))

(assert (=> bm!3624 d!8513))

(declare-fun d!8515 () Bool)

(declare-fun lt!19746 () Bool)

(assert (=> d!8515 (= lt!19746 (select (content!43 Nil!1224) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun e!28409 () Bool)

(assert (=> d!8515 (= lt!19746 e!28409)))

(declare-fun res!26369 () Bool)

(assert (=> d!8515 (=> (not res!26369) (not e!28409))))

(assert (=> d!8515 (= res!26369 ((_ is Cons!1223) Nil!1224))))

(assert (=> d!8515 (= (contains!578 Nil!1224 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)) lt!19746)))

(declare-fun b!44815 () Bool)

(declare-fun e!28408 () Bool)

(assert (=> b!44815 (= e!28409 e!28408)))

(declare-fun res!26370 () Bool)

(assert (=> b!44815 (=> res!26370 e!28408)))

(assert (=> b!44815 (= res!26370 (= (h!1800 Nil!1224) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44816 () Bool)

(assert (=> b!44816 (= e!28408 (contains!578 (t!4252 Nil!1224) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(assert (= (and d!8515 res!26369) b!44815))

(assert (= (and b!44815 (not res!26370)) b!44816))

(assert (=> d!8515 m!38815))

(assert (=> d!8515 m!38553))

(declare-fun m!38961 () Bool)

(assert (=> d!8515 m!38961))

(assert (=> b!44816 m!38553))

(declare-fun m!38963 () Bool)

(assert (=> b!44816 m!38963))

(assert (=> b!44660 d!8515))

(declare-fun d!8517 () Bool)

(declare-fun e!28412 () Bool)

(assert (=> d!8517 e!28412))

(declare-fun res!26376 () Bool)

(assert (=> d!8517 (=> (not res!26376) (not e!28412))))

(declare-fun lt!19755 () ListLongMap!1221)

(assert (=> d!8517 (= res!26376 (contains!579 lt!19755 (_1!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))))))

(declare-fun lt!19757 () List!1226)

(assert (=> d!8517 (= lt!19755 (ListLongMap!1222 lt!19757))))

(declare-fun lt!19758 () Unit!1233)

(declare-fun lt!19756 () Unit!1233)

(assert (=> d!8517 (= lt!19758 lt!19756)))

(assert (=> d!8517 (= (getValueByKey!106 lt!19757 (_1!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))) (Some!111 (_2!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!32 (List!1226 (_ BitVec 64) V!2327) Unit!1233)

(assert (=> d!8517 (= lt!19756 (lemmaContainsTupThenGetReturnValue!32 lt!19757 (_1!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))) (_2!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))))))

(declare-fun insertStrictlySorted!29 (List!1226 (_ BitVec 64) V!2327) List!1226)

(assert (=> d!8517 (= lt!19757 (insertStrictlySorted!29 (toList!626 (ite c!5891 call!3626 (ite c!5894 call!3622 call!3621))) (_1!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))) (_2!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))))))

(assert (=> d!8517 (= (+!70 (ite c!5891 call!3626 (ite c!5894 call!3622 call!3621)) (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))) lt!19755)))

(declare-fun b!44821 () Bool)

(declare-fun res!26375 () Bool)

(assert (=> b!44821 (=> (not res!26375) (not e!28412))))

(assert (=> b!44821 (= res!26375 (= (getValueByKey!106 (toList!626 lt!19755) (_1!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))) (Some!111 (_2!830 (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))))))))

(declare-fun b!44822 () Bool)

(declare-fun contains!582 (List!1226 tuple2!1640) Bool)

(assert (=> b!44822 (= e!28412 (contains!582 (toList!626 lt!19755) (ite (or c!5891 c!5894) (tuple2!1641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1815 lt!19310)) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))))))

(assert (= (and d!8517 res!26376) b!44821))

(assert (= (and b!44821 res!26375) b!44822))

(declare-fun m!38965 () Bool)

(assert (=> d!8517 m!38965))

(declare-fun m!38967 () Bool)

(assert (=> d!8517 m!38967))

(declare-fun m!38969 () Bool)

(assert (=> d!8517 m!38969))

(declare-fun m!38971 () Bool)

(assert (=> d!8517 m!38971))

(declare-fun m!38973 () Bool)

(assert (=> b!44821 m!38973))

(declare-fun m!38975 () Bool)

(assert (=> b!44822 m!38975))

(assert (=> bm!3623 d!8517))

(declare-fun d!8519 () Bool)

(declare-fun lt!19759 () Bool)

(assert (=> d!8519 (= lt!19759 (select (content!43 (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!28414 () Bool)

(assert (=> d!8519 (= lt!19759 e!28414)))

(declare-fun res!26377 () Bool)

(assert (=> d!8519 (=> (not res!26377) (not e!28414))))

(assert (=> d!8519 (= res!26377 ((_ is Cons!1223) (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)))))

(assert (=> d!8519 (= (contains!578 (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!19759)))

(declare-fun b!44823 () Bool)

(declare-fun e!28413 () Bool)

(assert (=> b!44823 (= e!28414 e!28413)))

(declare-fun res!26378 () Bool)

(assert (=> b!44823 (=> res!26378 e!28413)))

(assert (=> b!44823 (= res!26378 (= (h!1800 (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44824 () Bool)

(assert (=> b!44824 (= e!28413 (contains!578 (t!4252 (ite c!5809 (Cons!1223 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) Nil!1224) Nil!1224)) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8519 res!26377) b!44823))

(assert (= (and b!44823 (not res!26378)) b!44824))

(declare-fun m!38977 () Bool)

(assert (=> d!8519 m!38977))

(assert (=> d!8519 m!38537))

(declare-fun m!38979 () Bool)

(assert (=> d!8519 m!38979))

(assert (=> b!44824 m!38537))

(declare-fun m!38981 () Bool)

(assert (=> b!44824 m!38981))

(assert (=> b!44444 d!8519))

(assert (=> b!44438 d!8327))

(assert (=> b!44663 d!8503))

(declare-fun bm!3662 () Bool)

(declare-fun call!3665 () Bool)

(assert (=> bm!3662 (= call!3665 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!19313 mask!853))))

(declare-fun b!44825 () Bool)

(declare-fun e!28416 () Bool)

(declare-fun e!28417 () Bool)

(assert (=> b!44825 (= e!28416 e!28417)))

(declare-fun lt!19761 () (_ BitVec 64))

(assert (=> b!44825 (= lt!19761 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!19760 () Unit!1233)

(assert (=> b!44825 (= lt!19760 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19313 lt!19761 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!44825 (arrayContainsKey!0 lt!19313 lt!19761 #b00000000000000000000000000000000)))

(declare-fun lt!19762 () Unit!1233)

(assert (=> b!44825 (= lt!19762 lt!19760)))

(declare-fun res!26380 () Bool)

(assert (=> b!44825 (= res!26380 (= (seekEntryOrOpen!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!19313 mask!853) (Found!214 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!44825 (=> (not res!26380) (not e!28417))))

(declare-fun b!44826 () Bool)

(declare-fun e!28415 () Bool)

(assert (=> b!44826 (= e!28415 e!28416)))

(declare-fun c!5945 () Bool)

(assert (=> b!44826 (= c!5945 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!44827 () Bool)

(assert (=> b!44827 (= e!28417 call!3665)))

(declare-fun b!44828 () Bool)

(assert (=> b!44828 (= e!28416 call!3665)))

(declare-fun d!8521 () Bool)

(declare-fun res!26379 () Bool)

(assert (=> d!8521 (=> res!26379 e!28415)))

(assert (=> d!8521 (= res!26379 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(assert (=> d!8521 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!19313 mask!853) e!28415)))

(assert (= (and d!8521 (not res!26379)) b!44826))

(assert (= (and b!44826 c!5945) b!44825))

(assert (= (and b!44826 (not c!5945)) b!44828))

(assert (= (and b!44825 res!26380) b!44827))

(assert (= (or b!44827 b!44828) bm!3662))

(declare-fun m!38983 () Bool)

(assert (=> bm!3662 m!38983))

(assert (=> b!44825 m!38909))

(declare-fun m!38985 () Bool)

(assert (=> b!44825 m!38985))

(declare-fun m!38987 () Bool)

(assert (=> b!44825 m!38987))

(assert (=> b!44825 m!38909))

(declare-fun m!38989 () Bool)

(assert (=> b!44825 m!38989))

(assert (=> b!44826 m!38909))

(assert (=> b!44826 m!38909))

(assert (=> b!44826 m!38915))

(assert (=> bm!3577 d!8521))

(declare-fun d!8523 () Bool)

(declare-fun lt!19763 () (_ BitVec 32))

(assert (=> d!8523 (and (bvsge lt!19763 #b00000000000000000000000000000000) (bvsle lt!19763 (bvsub (size!1623 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun e!28419 () (_ BitVec 32))

(assert (=> d!8523 (= lt!19763 e!28419)))

(declare-fun c!5946 () Bool)

(assert (=> d!8523 (= c!5946 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8523 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1623 lt!19313)))))

(assert (=> d!8523 (= (arrayCountValidKeys!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!19763)))

(declare-fun b!44829 () Bool)

(declare-fun e!28418 () (_ BitVec 32))

(assert (=> b!44829 (= e!28419 e!28418)))

(declare-fun c!5947 () Bool)

(assert (=> b!44829 (= c!5947 (validKeyInArray!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!44830 () Bool)

(assert (=> b!44830 (= e!28419 #b00000000000000000000000000000000)))

(declare-fun bm!3663 () Bool)

(declare-fun call!3666 () (_ BitVec 32))

(assert (=> bm!3663 (= call!3666 (arrayCountValidKeys!0 lt!19313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!44831 () Bool)

(assert (=> b!44831 (= e!28418 call!3666)))

(declare-fun b!44832 () Bool)

(assert (=> b!44832 (= e!28418 (bvadd #b00000000000000000000000000000001 call!3666))))

(assert (= (and d!8523 c!5946) b!44830))

(assert (= (and d!8523 (not c!5946)) b!44829))

(assert (= (and b!44829 c!5947) b!44832))

(assert (= (and b!44829 (not c!5947)) b!44831))

(assert (= (or b!44832 b!44831) bm!3663))

(assert (=> b!44829 m!38909))

(assert (=> b!44829 m!38909))

(assert (=> b!44829 m!38915))

(declare-fun m!38991 () Bool)

(assert (=> bm!3663 m!38991))

(assert (=> bm!3576 d!8523))

(declare-fun d!8525 () Bool)

(declare-fun res!26381 () Bool)

(declare-fun e!28420 () Bool)

(assert (=> d!8525 (=> res!26381 e!28420)))

(assert (=> d!8525 (= res!26381 (= (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (_1!830 lt!19312)))))

(assert (=> d!8525 (= (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) e!28420)))

(declare-fun b!44833 () Bool)

(declare-fun e!28421 () Bool)

(assert (=> b!44833 (= e!28420 e!28421)))

(declare-fun res!26382 () Bool)

(assert (=> b!44833 (=> (not res!26382) (not e!28421))))

(assert (=> b!44833 (= res!26382 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(declare-fun b!44834 () Bool)

(assert (=> b!44834 (= e!28421 (arrayContainsKey!0 lt!19313 (_1!830 lt!19312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8525 (not res!26381)) b!44833))

(assert (= (and b!44833 res!26382) b!44834))

(assert (=> d!8525 m!38909))

(declare-fun m!38993 () Bool)

(assert (=> b!44834 m!38993))

(assert (=> b!44356 d!8525))

(declare-fun d!8527 () Bool)

(assert (=> d!8527 (arrayContainsKey!0 lt!19313 lt!19444 #b00000000000000000000000000000000)))

(declare-fun lt!19764 () Unit!1233)

(assert (=> d!8527 (= lt!19764 (choose!13 lt!19313 lt!19444 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!8527 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!8527 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19313 lt!19444 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19764)))

(declare-fun bs!2031 () Bool)

(assert (= bs!2031 d!8527))

(assert (=> bs!2031 m!38547))

(declare-fun m!38995 () Bool)

(assert (=> bs!2031 m!38995))

(assert (=> b!44351 d!8527))

(declare-fun d!8529 () Bool)

(declare-fun res!26383 () Bool)

(declare-fun e!28422 () Bool)

(assert (=> d!8529 (=> res!26383 e!28422)))

(assert (=> d!8529 (= res!26383 (= (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19444))))

(assert (=> d!8529 (= (arrayContainsKey!0 lt!19313 lt!19444 #b00000000000000000000000000000000) e!28422)))

(declare-fun b!44835 () Bool)

(declare-fun e!28423 () Bool)

(assert (=> b!44835 (= e!28422 e!28423)))

(declare-fun res!26384 () Bool)

(assert (=> b!44835 (=> (not res!26384) (not e!28423))))

(assert (=> b!44835 (= res!26384 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(declare-fun b!44836 () Bool)

(assert (=> b!44836 (= e!28423 (arrayContainsKey!0 lt!19313 lt!19444 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8529 (not res!26383)) b!44835))

(assert (= (and b!44835 res!26384) b!44836))

(assert (=> d!8529 m!38445))

(declare-fun m!38997 () Bool)

(assert (=> b!44836 m!38997))

(assert (=> b!44351 d!8529))

(declare-fun e!28425 () SeekEntryResult!214)

(declare-fun lt!19765 () SeekEntryResult!214)

(declare-fun b!44837 () Bool)

(assert (=> b!44837 (= e!28425 (seekKeyOrZeroReturnVacant!0 (x!8368 lt!19765) (index!2980 lt!19765) (index!2980 lt!19765) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19313 mask!853))))

(declare-fun b!44838 () Bool)

(declare-fun e!28426 () SeekEntryResult!214)

(assert (=> b!44838 (= e!28426 (Found!214 (index!2980 lt!19765)))))

(declare-fun b!44839 () Bool)

(declare-fun e!28424 () SeekEntryResult!214)

(assert (=> b!44839 (= e!28424 Undefined!214)))

(declare-fun d!8531 () Bool)

(declare-fun lt!19767 () SeekEntryResult!214)

(assert (=> d!8531 (and (or ((_ is Undefined!214) lt!19767) (not ((_ is Found!214) lt!19767)) (and (bvsge (index!2979 lt!19767) #b00000000000000000000000000000000) (bvslt (index!2979 lt!19767) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19767) ((_ is Found!214) lt!19767) (not ((_ is MissingZero!214) lt!19767)) (and (bvsge (index!2978 lt!19767) #b00000000000000000000000000000000) (bvslt (index!2978 lt!19767) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19767) ((_ is Found!214) lt!19767) ((_ is MissingZero!214) lt!19767) (not ((_ is MissingVacant!214) lt!19767)) (and (bvsge (index!2981 lt!19767) #b00000000000000000000000000000000) (bvslt (index!2981 lt!19767) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19767) (ite ((_ is Found!214) lt!19767) (= (select (arr!1420 lt!19313) (index!2979 lt!19767)) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!214) lt!19767) (= (select (arr!1420 lt!19313) (index!2978 lt!19767)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!214) lt!19767) (= (select (arr!1420 lt!19313) (index!2981 lt!19767)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!8531 (= lt!19767 e!28424)))

(declare-fun c!5950 () Bool)

(assert (=> d!8531 (= c!5950 (and ((_ is Intermediate!214) lt!19765) (undefined!1026 lt!19765)))))

(assert (=> d!8531 (= lt!19765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19313 mask!853))))

(assert (=> d!8531 (validMask!0 mask!853)))

(assert (=> d!8531 (= (seekEntryOrOpen!0 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19313 mask!853) lt!19767)))

(declare-fun b!44840 () Bool)

(assert (=> b!44840 (= e!28425 (MissingZero!214 (index!2980 lt!19765)))))

(declare-fun b!44841 () Bool)

(declare-fun c!5948 () Bool)

(declare-fun lt!19766 () (_ BitVec 64))

(assert (=> b!44841 (= c!5948 (= lt!19766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!44841 (= e!28426 e!28425)))

(declare-fun b!44842 () Bool)

(assert (=> b!44842 (= e!28424 e!28426)))

(assert (=> b!44842 (= lt!19766 (select (arr!1420 lt!19313) (index!2980 lt!19765)))))

(declare-fun c!5949 () Bool)

(assert (=> b!44842 (= c!5949 (= lt!19766 (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!8531 c!5950) b!44839))

(assert (= (and d!8531 (not c!5950)) b!44842))

(assert (= (and b!44842 c!5949) b!44838))

(assert (= (and b!44842 (not c!5949)) b!44841))

(assert (= (and b!44841 c!5948) b!44840))

(assert (= (and b!44841 (not c!5948)) b!44837))

(assert (=> b!44837 m!38537))

(declare-fun m!38999 () Bool)

(assert (=> b!44837 m!38999))

(assert (=> d!8531 m!38363))

(declare-fun m!39001 () Bool)

(assert (=> d!8531 m!39001))

(declare-fun m!39003 () Bool)

(assert (=> d!8531 m!39003))

(declare-fun m!39005 () Bool)

(assert (=> d!8531 m!39005))

(assert (=> d!8531 m!38537))

(declare-fun m!39007 () Bool)

(assert (=> d!8531 m!39007))

(declare-fun m!39009 () Bool)

(assert (=> d!8531 m!39009))

(assert (=> d!8531 m!38537))

(assert (=> d!8531 m!39005))

(declare-fun m!39011 () Bool)

(assert (=> b!44842 m!39011))

(assert (=> b!44351 d!8531))

(assert (=> b!44347 d!8497))

(declare-fun b!44877 () Bool)

(declare-fun e!28450 () SeekEntryResult!214)

(assert (=> b!44877 (= e!28450 (Intermediate!214 false (toIndex!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!44878 () Bool)

(declare-fun e!28447 () SeekEntryResult!214)

(assert (=> b!44878 (= e!28447 (Intermediate!214 true (toIndex!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!44879 () Bool)

(declare-fun lt!19796 () SeekEntryResult!214)

(assert (=> b!44879 (and (bvsge (index!2980 lt!19796) #b00000000000000000000000000000000) (bvslt (index!2980 lt!19796) (size!1623 lt!19313)))))

(declare-fun res!26401 () Bool)

(assert (=> b!44879 (= res!26401 (= (select (arr!1420 lt!19313) (index!2980 lt!19796)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!28449 () Bool)

(assert (=> b!44879 (=> res!26401 e!28449)))

(declare-fun b!44880 () Bool)

(declare-fun e!28448 () Bool)

(declare-fun e!28451 () Bool)

(assert (=> b!44880 (= e!28448 e!28451)))

(declare-fun res!26399 () Bool)

(assert (=> b!44880 (= res!26399 (and ((_ is Intermediate!214) lt!19796) (not (undefined!1026 lt!19796)) (bvslt (x!8368 lt!19796) #b01111111111111111111111111111110) (bvsge (x!8368 lt!19796) #b00000000000000000000000000000000) (bvsge (x!8368 lt!19796) #b00000000000000000000000000000000)))))

(assert (=> b!44880 (=> (not res!26399) (not e!28451))))

(declare-fun b!44881 () Bool)

(assert (=> b!44881 (and (bvsge (index!2980 lt!19796) #b00000000000000000000000000000000) (bvslt (index!2980 lt!19796) (size!1623 lt!19313)))))

(assert (=> b!44881 (= e!28449 (= (select (arr!1420 lt!19313) (index!2980 lt!19796)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!8533 () Bool)

(assert (=> d!8533 e!28448))

(declare-fun c!5963 () Bool)

(assert (=> d!8533 (= c!5963 (and ((_ is Intermediate!214) lt!19796) (undefined!1026 lt!19796)))))

(assert (=> d!8533 (= lt!19796 e!28447)))

(declare-fun c!5961 () Bool)

(assert (=> d!8533 (= c!5961 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!19797 () (_ BitVec 64))

(assert (=> d!8533 (= lt!19797 (select (arr!1420 lt!19313) (toIndex!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!8533 (validMask!0 mask!853)))

(assert (=> d!8533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) mask!853) (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853) lt!19796)))

(declare-fun b!44882 () Bool)

(assert (=> b!44882 (and (bvsge (index!2980 lt!19796) #b00000000000000000000000000000000) (bvslt (index!2980 lt!19796) (size!1623 lt!19313)))))

(declare-fun res!26400 () Bool)

(assert (=> b!44882 (= res!26400 (= (select (arr!1420 lt!19313) (index!2980 lt!19796)) (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(assert (=> b!44882 (=> res!26400 e!28449)))

(assert (=> b!44882 (= e!28451 e!28449)))

(declare-fun b!44883 () Bool)

(assert (=> b!44883 (= e!28448 (bvsge (x!8368 lt!19796) #b01111111111111111111111111111110))))

(declare-fun b!44884 () Bool)

(assert (=> b!44884 (= e!28447 e!28450)))

(declare-fun c!5962 () Bool)

(assert (=> b!44884 (= c!5962 (or (= lt!19797 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)) (= (bvadd lt!19797 lt!19797) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!44885 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!44885 (= e!28450 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853))))

(assert (= (and d!8533 c!5961) b!44878))

(assert (= (and d!8533 (not c!5961)) b!44884))

(assert (= (and b!44884 c!5962) b!44877))

(assert (= (and b!44884 (not c!5962)) b!44885))

(assert (= (and d!8533 c!5963) b!44883))

(assert (= (and d!8533 (not c!5963)) b!44880))

(assert (= (and b!44880 res!26399) b!44882))

(assert (= (and b!44882 (not res!26400)) b!44879))

(assert (= (and b!44879 (not res!26401)) b!44881))

(assert (=> b!44885 m!38619))

(declare-fun m!39029 () Bool)

(assert (=> b!44885 m!39029))

(assert (=> b!44885 m!39029))

(assert (=> b!44885 m!38445))

(declare-fun m!39031 () Bool)

(assert (=> b!44885 m!39031))

(declare-fun m!39033 () Bool)

(assert (=> b!44881 m!39033))

(assert (=> b!44879 m!39033))

(assert (=> b!44882 m!39033))

(assert (=> d!8533 m!38619))

(declare-fun m!39035 () Bool)

(assert (=> d!8533 m!39035))

(assert (=> d!8533 m!38363))

(assert (=> d!8399 d!8533))

(declare-fun d!8545 () Bool)

(declare-fun lt!19807 () (_ BitVec 32))

(declare-fun lt!19806 () (_ BitVec 32))

(assert (=> d!8545 (= lt!19807 (bvmul (bvxor lt!19806 (bvlshr lt!19806 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!8545 (= lt!19806 ((_ extract 31 0) (bvand (bvxor (select (arr!1420 lt!19313) #b00000000000000000000000000000000) (bvlshr (select (arr!1420 lt!19313) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!8545 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!26402 (let ((h!1803 ((_ extract 31 0) (bvand (bvxor (select (arr!1420 lt!19313) #b00000000000000000000000000000000) (bvlshr (select (arr!1420 lt!19313) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!8388 (bvmul (bvxor h!1803 (bvlshr h!1803 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!8388 (bvlshr x!8388 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!26402 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!26402 #b00000000000000000000000000000000))))))

(assert (=> d!8545 (= (toIndex!0 (select (arr!1420 lt!19313) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!19807 (bvlshr lt!19807 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!8399 d!8545))

(assert (=> d!8399 d!8331))

(assert (=> d!8441 d!8357))

(declare-fun d!8549 () Bool)

(declare-fun e!28453 () Bool)

(assert (=> d!8549 e!28453))

(declare-fun res!26406 () Bool)

(assert (=> d!8549 (=> (not res!26406) (not e!28453))))

(declare-fun lt!19808 () ListLongMap!1221)

(assert (=> d!8549 (= res!26406 (contains!579 lt!19808 (_1!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310)))))))

(declare-fun lt!19810 () List!1226)

(assert (=> d!8549 (= lt!19808 (ListLongMap!1222 lt!19810))))

(declare-fun lt!19811 () Unit!1233)

(declare-fun lt!19809 () Unit!1233)

(assert (=> d!8549 (= lt!19811 lt!19809)))

(assert (=> d!8549 (= (getValueByKey!106 lt!19810 (_1!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310)))))))

(assert (=> d!8549 (= lt!19809 (lemmaContainsTupThenGetReturnValue!32 lt!19810 (_1!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310)))))))

(assert (=> d!8549 (= lt!19810 (insertStrictlySorted!29 (toList!626 lt!19611) (_1!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310)))))))

(assert (=> d!8549 (= (+!70 lt!19611 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))) lt!19808)))

(declare-fun b!44888 () Bool)

(declare-fun res!26405 () Bool)

(assert (=> b!44888 (=> (not res!26405) (not e!28453))))

(assert (=> b!44888 (= res!26405 (= (getValueByKey!106 (toList!626 lt!19808) (_1!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))))))))

(declare-fun b!44889 () Bool)

(assert (=> b!44889 (= e!28453 (contains!582 (toList!626 lt!19808) (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))))))

(assert (= (and d!8549 res!26406) b!44888))

(assert (= (and b!44888 res!26405) b!44889))

(declare-fun m!39049 () Bool)

(assert (=> d!8549 m!39049))

(declare-fun m!39051 () Bool)

(assert (=> d!8549 m!39051))

(declare-fun m!39053 () Bool)

(assert (=> d!8549 m!39053))

(declare-fun m!39055 () Bool)

(assert (=> d!8549 m!39055))

(declare-fun m!39057 () Bool)

(assert (=> b!44888 m!39057))

(declare-fun m!39059 () Bool)

(assert (=> b!44889 m!39059))

(assert (=> b!44642 d!8549))

(declare-fun d!8551 () Bool)

(declare-fun e!28455 () Bool)

(assert (=> d!8551 e!28455))

(declare-fun res!26407 () Bool)

(assert (=> d!8551 (=> res!26407 e!28455)))

(declare-fun lt!19812 () Bool)

(assert (=> d!8551 (= res!26407 (not lt!19812))))

(declare-fun lt!19815 () Bool)

(assert (=> d!8551 (= lt!19812 lt!19815)))

(declare-fun lt!19814 () Unit!1233)

(declare-fun e!28454 () Unit!1233)

(assert (=> d!8551 (= lt!19814 e!28454)))

(declare-fun c!5964 () Bool)

(assert (=> d!8551 (= c!5964 lt!19815)))

(assert (=> d!8551 (= lt!19815 (containsKey!74 (toList!626 (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))) lt!19606))))

(assert (=> d!8551 (= (contains!579 (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))) lt!19606) lt!19812)))

(declare-fun b!44890 () Bool)

(declare-fun lt!19813 () Unit!1233)

(assert (=> b!44890 (= e!28454 lt!19813)))

(assert (=> b!44890 (= lt!19813 (lemmaContainsKeyImpliesGetValueByKeyDefined!62 (toList!626 (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))) lt!19606))))

(assert (=> b!44890 (isDefined!63 (getValueByKey!106 (toList!626 (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))) lt!19606))))

(declare-fun b!44891 () Bool)

(declare-fun Unit!1247 () Unit!1233)

(assert (=> b!44891 (= e!28454 Unit!1247)))

(declare-fun b!44892 () Bool)

(assert (=> b!44892 (= e!28455 (isDefined!63 (getValueByKey!106 (toList!626 (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))) lt!19606)))))

(assert (= (and d!8551 c!5964) b!44890))

(assert (= (and d!8551 (not c!5964)) b!44891))

(assert (= (and d!8551 (not res!26407)) b!44892))

(declare-fun m!39061 () Bool)

(assert (=> d!8551 m!39061))

(declare-fun m!39063 () Bool)

(assert (=> b!44890 m!39063))

(declare-fun m!39065 () Bool)

(assert (=> b!44890 m!39065))

(assert (=> b!44890 m!39065))

(declare-fun m!39067 () Bool)

(assert (=> b!44890 m!39067))

(assert (=> b!44892 m!39065))

(assert (=> b!44892 m!39065))

(assert (=> b!44892 m!39067))

(assert (=> b!44642 d!8551))

(assert (=> b!44642 d!8509))

(declare-fun d!8553 () Bool)

(assert (=> d!8553 (= (apply!61 lt!19613 lt!19599) (get!806 (getValueByKey!106 (toList!626 lt!19613) lt!19599)))))

(declare-fun bs!2032 () Bool)

(assert (= bs!2032 d!8553))

(declare-fun m!39069 () Bool)

(assert (=> bs!2032 m!39069))

(assert (=> bs!2032 m!39069))

(declare-fun m!39071 () Bool)

(assert (=> bs!2032 m!39071))

(assert (=> b!44642 d!8553))

(declare-fun d!8555 () Bool)

(assert (=> d!8555 (= (apply!61 (+!70 lt!19600 (tuple2!1641 lt!19604 (minValue!1815 lt!19310))) lt!19595) (get!806 (getValueByKey!106 (toList!626 (+!70 lt!19600 (tuple2!1641 lt!19604 (minValue!1815 lt!19310)))) lt!19595)))))

(declare-fun bs!2033 () Bool)

(assert (= bs!2033 d!8555))

(declare-fun m!39073 () Bool)

(assert (=> bs!2033 m!39073))

(assert (=> bs!2033 m!39073))

(declare-fun m!39075 () Bool)

(assert (=> bs!2033 m!39075))

(assert (=> b!44642 d!8555))

(declare-fun d!8557 () Bool)

(assert (=> d!8557 (= (apply!61 lt!19600 lt!19595) (get!806 (getValueByKey!106 (toList!626 lt!19600) lt!19595)))))

(declare-fun bs!2034 () Bool)

(assert (= bs!2034 d!8557))

(declare-fun m!39077 () Bool)

(assert (=> bs!2034 m!39077))

(assert (=> bs!2034 m!39077))

(declare-fun m!39079 () Bool)

(assert (=> bs!2034 m!39079))

(assert (=> b!44642 d!8557))

(declare-fun d!8559 () Bool)

(assert (=> d!8559 (= (apply!61 lt!19611 lt!19614) (get!806 (getValueByKey!106 (toList!626 lt!19611) lt!19614)))))

(declare-fun bs!2035 () Bool)

(assert (= bs!2035 d!8559))

(declare-fun m!39081 () Bool)

(assert (=> bs!2035 m!39081))

(assert (=> bs!2035 m!39081))

(declare-fun m!39083 () Bool)

(assert (=> bs!2035 m!39083))

(assert (=> b!44642 d!8559))

(declare-fun d!8561 () Bool)

(assert (=> d!8561 (= (apply!61 (+!70 lt!19600 (tuple2!1641 lt!19604 (minValue!1815 lt!19310))) lt!19595) (apply!61 lt!19600 lt!19595))))

(declare-fun lt!19825 () Unit!1233)

(declare-fun choose!273 (ListLongMap!1221 (_ BitVec 64) V!2327 (_ BitVec 64)) Unit!1233)

(assert (=> d!8561 (= lt!19825 (choose!273 lt!19600 lt!19604 (minValue!1815 lt!19310) lt!19595))))

(declare-fun e!28470 () Bool)

(assert (=> d!8561 e!28470))

(declare-fun res!26412 () Bool)

(assert (=> d!8561 (=> (not res!26412) (not e!28470))))

(assert (=> d!8561 (= res!26412 (contains!579 lt!19600 lt!19595))))

(assert (=> d!8561 (= (addApplyDifferent!37 lt!19600 lt!19604 (minValue!1815 lt!19310) lt!19595) lt!19825)))

(declare-fun b!44916 () Bool)

(assert (=> b!44916 (= e!28470 (not (= lt!19595 lt!19604)))))

(assert (= (and d!8561 res!26412) b!44916))

(assert (=> d!8561 m!38751))

(assert (=> d!8561 m!38753))

(declare-fun m!39097 () Bool)

(assert (=> d!8561 m!39097))

(assert (=> d!8561 m!38751))

(assert (=> d!8561 m!38747))

(declare-fun m!39099 () Bool)

(assert (=> d!8561 m!39099))

(assert (=> b!44642 d!8561))

(declare-fun d!8569 () Bool)

(declare-fun e!28473 () Bool)

(assert (=> d!8569 e!28473))

(declare-fun res!26414 () Bool)

(assert (=> d!8569 (=> (not res!26414) (not e!28473))))

(declare-fun lt!19829 () ListLongMap!1221)

(assert (=> d!8569 (= res!26414 (contains!579 lt!19829 (_1!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310)))))))

(declare-fun lt!19831 () List!1226)

(assert (=> d!8569 (= lt!19829 (ListLongMap!1222 lt!19831))))

(declare-fun lt!19832 () Unit!1233)

(declare-fun lt!19830 () Unit!1233)

(assert (=> d!8569 (= lt!19832 lt!19830)))

(assert (=> d!8569 (= (getValueByKey!106 lt!19831 (_1!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310)))))))

(assert (=> d!8569 (= lt!19830 (lemmaContainsTupThenGetReturnValue!32 lt!19831 (_1!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310)))))))

(assert (=> d!8569 (= lt!19831 (insertStrictlySorted!29 (toList!626 lt!19600) (_1!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310)))))))

(assert (=> d!8569 (= (+!70 lt!19600 (tuple2!1641 lt!19604 (minValue!1815 lt!19310))) lt!19829)))

(declare-fun b!44923 () Bool)

(declare-fun res!26413 () Bool)

(assert (=> b!44923 (=> (not res!26413) (not e!28473))))

(assert (=> b!44923 (= res!26413 (= (getValueByKey!106 (toList!626 lt!19829) (_1!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19604 (minValue!1815 lt!19310))))))))

(declare-fun b!44924 () Bool)

(assert (=> b!44924 (= e!28473 (contains!582 (toList!626 lt!19829) (tuple2!1641 lt!19604 (minValue!1815 lt!19310))))))

(assert (= (and d!8569 res!26414) b!44923))

(assert (= (and b!44923 res!26413) b!44924))

(declare-fun m!39115 () Bool)

(assert (=> d!8569 m!39115))

(declare-fun m!39117 () Bool)

(assert (=> d!8569 m!39117))

(declare-fun m!39119 () Bool)

(assert (=> d!8569 m!39119))

(declare-fun m!39121 () Bool)

(assert (=> d!8569 m!39121))

(declare-fun m!39123 () Bool)

(assert (=> b!44923 m!39123))

(declare-fun m!39125 () Bool)

(assert (=> b!44924 m!39125))

(assert (=> b!44642 d!8569))

(declare-fun d!8575 () Bool)

(assert (=> d!8575 (= (apply!61 (+!70 lt!19611 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))) lt!19614) (get!806 (getValueByKey!106 (toList!626 (+!70 lt!19611 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310)))) lt!19614)))))

(declare-fun bs!2037 () Bool)

(assert (= bs!2037 d!8575))

(declare-fun m!39127 () Bool)

(assert (=> bs!2037 m!39127))

(assert (=> bs!2037 m!39127))

(declare-fun m!39129 () Bool)

(assert (=> bs!2037 m!39129))

(assert (=> b!44642 d!8575))

(declare-fun d!8577 () Bool)

(declare-fun e!28474 () Bool)

(assert (=> d!8577 e!28474))

(declare-fun res!26416 () Bool)

(assert (=> d!8577 (=> (not res!26416) (not e!28474))))

(declare-fun lt!19833 () ListLongMap!1221)

(assert (=> d!8577 (= res!26416 (contains!579 lt!19833 (_1!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310)))))))

(declare-fun lt!19835 () List!1226)

(assert (=> d!8577 (= lt!19833 (ListLongMap!1222 lt!19835))))

(declare-fun lt!19836 () Unit!1233)

(declare-fun lt!19834 () Unit!1233)

(assert (=> d!8577 (= lt!19836 lt!19834)))

(assert (=> d!8577 (= (getValueByKey!106 lt!19835 (_1!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310)))))))

(assert (=> d!8577 (= lt!19834 (lemmaContainsTupThenGetReturnValue!32 lt!19835 (_1!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310)))))))

(assert (=> d!8577 (= lt!19835 (insertStrictlySorted!29 (toList!626 lt!19613) (_1!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310)))))))

(assert (=> d!8577 (= (+!70 lt!19613 (tuple2!1641 lt!19610 (minValue!1815 lt!19310))) lt!19833)))

(declare-fun b!44925 () Bool)

(declare-fun res!26415 () Bool)

(assert (=> b!44925 (=> (not res!26415) (not e!28474))))

(assert (=> b!44925 (= res!26415 (= (getValueByKey!106 (toList!626 lt!19833) (_1!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19610 (minValue!1815 lt!19310))))))))

(declare-fun b!44926 () Bool)

(assert (=> b!44926 (= e!28474 (contains!582 (toList!626 lt!19833) (tuple2!1641 lt!19610 (minValue!1815 lt!19310))))))

(assert (= (and d!8577 res!26416) b!44925))

(assert (= (and b!44925 res!26415) b!44926))

(declare-fun m!39131 () Bool)

(assert (=> d!8577 m!39131))

(declare-fun m!39133 () Bool)

(assert (=> d!8577 m!39133))

(declare-fun m!39135 () Bool)

(assert (=> d!8577 m!39135))

(declare-fun m!39137 () Bool)

(assert (=> d!8577 m!39137))

(declare-fun m!39139 () Bool)

(assert (=> b!44925 m!39139))

(declare-fun m!39141 () Bool)

(assert (=> b!44926 m!39141))

(assert (=> b!44642 d!8577))

(declare-fun d!8579 () Bool)

(assert (=> d!8579 (contains!579 (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))) lt!19606)))

(declare-fun lt!19839 () Unit!1233)

(declare-fun choose!274 (ListLongMap!1221 (_ BitVec 64) V!2327 (_ BitVec 64)) Unit!1233)

(assert (=> d!8579 (= lt!19839 (choose!274 lt!19597 lt!19602 (zeroValue!1815 lt!19310) lt!19606))))

(assert (=> d!8579 (contains!579 lt!19597 lt!19606)))

(assert (=> d!8579 (= (addStillContains!37 lt!19597 lt!19602 (zeroValue!1815 lt!19310) lt!19606) lt!19839)))

(declare-fun bs!2039 () Bool)

(assert (= bs!2039 d!8579))

(assert (=> bs!2039 m!38755))

(assert (=> bs!2039 m!38755))

(assert (=> bs!2039 m!38757))

(declare-fun m!39147 () Bool)

(assert (=> bs!2039 m!39147))

(declare-fun m!39149 () Bool)

(assert (=> bs!2039 m!39149))

(assert (=> b!44642 d!8579))

(declare-fun d!8583 () Bool)

(assert (=> d!8583 (= (apply!61 (+!70 lt!19613 (tuple2!1641 lt!19610 (minValue!1815 lt!19310))) lt!19599) (apply!61 lt!19613 lt!19599))))

(declare-fun lt!19840 () Unit!1233)

(assert (=> d!8583 (= lt!19840 (choose!273 lt!19613 lt!19610 (minValue!1815 lt!19310) lt!19599))))

(declare-fun e!28475 () Bool)

(assert (=> d!8583 e!28475))

(declare-fun res!26417 () Bool)

(assert (=> d!8583 (=> (not res!26417) (not e!28475))))

(assert (=> d!8583 (= res!26417 (contains!579 lt!19613 lt!19599))))

(assert (=> d!8583 (= (addApplyDifferent!37 lt!19613 lt!19610 (minValue!1815 lt!19310) lt!19599) lt!19840)))

(declare-fun b!44928 () Bool)

(assert (=> b!44928 (= e!28475 (not (= lt!19599 lt!19610)))))

(assert (= (and d!8583 res!26417) b!44928))

(assert (=> d!8583 m!38739))

(assert (=> d!8583 m!38741))

(declare-fun m!39151 () Bool)

(assert (=> d!8583 m!39151))

(assert (=> d!8583 m!38739))

(assert (=> d!8583 m!38733))

(declare-fun m!39153 () Bool)

(assert (=> d!8583 m!39153))

(assert (=> b!44642 d!8583))

(declare-fun d!8585 () Bool)

(assert (=> d!8585 (= (apply!61 (+!70 lt!19613 (tuple2!1641 lt!19610 (minValue!1815 lt!19310))) lt!19599) (get!806 (getValueByKey!106 (toList!626 (+!70 lt!19613 (tuple2!1641 lt!19610 (minValue!1815 lt!19310)))) lt!19599)))))

(declare-fun bs!2040 () Bool)

(assert (= bs!2040 d!8585))

(declare-fun m!39155 () Bool)

(assert (=> bs!2040 m!39155))

(assert (=> bs!2040 m!39155))

(declare-fun m!39157 () Bool)

(assert (=> bs!2040 m!39157))

(assert (=> b!44642 d!8585))

(declare-fun d!8587 () Bool)

(declare-fun e!28476 () Bool)

(assert (=> d!8587 e!28476))

(declare-fun res!26419 () Bool)

(assert (=> d!8587 (=> (not res!26419) (not e!28476))))

(declare-fun lt!19841 () ListLongMap!1221)

(assert (=> d!8587 (= res!26419 (contains!579 lt!19841 (_1!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))))))

(declare-fun lt!19843 () List!1226)

(assert (=> d!8587 (= lt!19841 (ListLongMap!1222 lt!19843))))

(declare-fun lt!19844 () Unit!1233)

(declare-fun lt!19842 () Unit!1233)

(assert (=> d!8587 (= lt!19844 lt!19842)))

(assert (=> d!8587 (= (getValueByKey!106 lt!19843 (_1!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))))))

(assert (=> d!8587 (= lt!19842 (lemmaContainsTupThenGetReturnValue!32 lt!19843 (_1!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))))))

(assert (=> d!8587 (= lt!19843 (insertStrictlySorted!29 (toList!626 lt!19597) (_1!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))) (_2!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))))))

(assert (=> d!8587 (= (+!70 lt!19597 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))) lt!19841)))

(declare-fun b!44929 () Bool)

(declare-fun res!26418 () Bool)

(assert (=> b!44929 (=> (not res!26418) (not e!28476))))

(assert (=> b!44929 (= res!26418 (= (getValueByKey!106 (toList!626 lt!19841) (_1!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))))))))

(declare-fun b!44930 () Bool)

(assert (=> b!44930 (= e!28476 (contains!582 (toList!626 lt!19841) (tuple2!1641 lt!19602 (zeroValue!1815 lt!19310))))))

(assert (= (and d!8587 res!26419) b!44929))

(assert (= (and b!44929 res!26418) b!44930))

(declare-fun m!39159 () Bool)

(assert (=> d!8587 m!39159))

(declare-fun m!39161 () Bool)

(assert (=> d!8587 m!39161))

(declare-fun m!39163 () Bool)

(assert (=> d!8587 m!39163))

(declare-fun m!39165 () Bool)

(assert (=> d!8587 m!39165))

(declare-fun m!39167 () Bool)

(assert (=> b!44929 m!39167))

(declare-fun m!39169 () Bool)

(assert (=> b!44930 m!39169))

(assert (=> b!44642 d!8587))

(declare-fun d!8589 () Bool)

(assert (=> d!8589 (= (apply!61 (+!70 lt!19611 (tuple2!1641 lt!19615 (zeroValue!1815 lt!19310))) lt!19614) (apply!61 lt!19611 lt!19614))))

(declare-fun lt!19849 () Unit!1233)

(assert (=> d!8589 (= lt!19849 (choose!273 lt!19611 lt!19615 (zeroValue!1815 lt!19310) lt!19614))))

(declare-fun e!28477 () Bool)

(assert (=> d!8589 e!28477))

(declare-fun res!26420 () Bool)

(assert (=> d!8589 (=> (not res!26420) (not e!28477))))

(assert (=> d!8589 (= res!26420 (contains!579 lt!19611 lt!19614))))

(assert (=> d!8589 (= (addApplyDifferent!37 lt!19611 lt!19615 (zeroValue!1815 lt!19310) lt!19614) lt!19849)))

(declare-fun b!44931 () Bool)

(assert (=> b!44931 (= e!28477 (not (= lt!19614 lt!19615)))))

(assert (= (and d!8589 res!26420) b!44931))

(assert (=> d!8589 m!38735))

(assert (=> d!8589 m!38737))

(declare-fun m!39171 () Bool)

(assert (=> d!8589 m!39171))

(assert (=> d!8589 m!38735))

(assert (=> d!8589 m!38731))

(declare-fun m!39173 () Bool)

(assert (=> d!8589 m!39173))

(assert (=> b!44642 d!8589))

(assert (=> b!44441 d!8503))

(declare-fun d!8591 () Bool)

(assert (=> d!8591 (arrayContainsKey!0 (_keys!3464 lt!19310) lt!19476 #b00000000000000000000000000000000)))

(declare-fun lt!19854 () Unit!1233)

(assert (=> d!8591 (= lt!19854 (choose!13 (_keys!3464 lt!19310) lt!19476 #b00000000000000000000000000000000))))

(assert (=> d!8591 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!8591 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3464 lt!19310) lt!19476 #b00000000000000000000000000000000) lt!19854)))

(declare-fun bs!2041 () Bool)

(assert (= bs!2041 d!8591))

(assert (=> bs!2041 m!38635))

(declare-fun m!39175 () Bool)

(assert (=> bs!2041 m!39175))

(assert (=> b!44440 d!8591))

(declare-fun d!8593 () Bool)

(declare-fun res!26425 () Bool)

(declare-fun e!28480 () Bool)

(assert (=> d!8593 (=> res!26425 e!28480)))

(assert (=> d!8593 (= res!26425 (= (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) lt!19476))))

(assert (=> d!8593 (= (arrayContainsKey!0 (_keys!3464 lt!19310) lt!19476 #b00000000000000000000000000000000) e!28480)))

(declare-fun b!44936 () Bool)

(declare-fun e!28481 () Bool)

(assert (=> b!44936 (= e!28480 e!28481)))

(declare-fun res!26426 () Bool)

(assert (=> b!44936 (=> (not res!26426) (not e!28481))))

(assert (=> b!44936 (= res!26426 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))))))

(declare-fun b!44937 () Bool)

(assert (=> b!44937 (= e!28481 (arrayContainsKey!0 (_keys!3464 lt!19310) lt!19476 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8593 (not res!26425)) b!44936))

(assert (= (and b!44936 res!26426) b!44937))

(assert (=> d!8593 m!38553))

(declare-fun m!39177 () Bool)

(assert (=> b!44937 m!39177))

(assert (=> b!44440 d!8593))

(declare-fun b!44938 () Bool)

(declare-fun e!28483 () SeekEntryResult!214)

(declare-fun lt!19855 () SeekEntryResult!214)

(assert (=> b!44938 (= e!28483 (seekKeyOrZeroReturnVacant!0 (x!8368 lt!19855) (index!2980 lt!19855) (index!2980 lt!19855) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) (_keys!3464 lt!19310) (mask!5474 lt!19310)))))

(declare-fun b!44939 () Bool)

(declare-fun e!28484 () SeekEntryResult!214)

(assert (=> b!44939 (= e!28484 (Found!214 (index!2980 lt!19855)))))

(declare-fun b!44940 () Bool)

(declare-fun e!28482 () SeekEntryResult!214)

(assert (=> b!44940 (= e!28482 Undefined!214)))

(declare-fun d!8595 () Bool)

(declare-fun lt!19857 () SeekEntryResult!214)

(assert (=> d!8595 (and (or ((_ is Undefined!214) lt!19857) (not ((_ is Found!214) lt!19857)) (and (bvsge (index!2979 lt!19857) #b00000000000000000000000000000000) (bvslt (index!2979 lt!19857) (size!1623 (_keys!3464 lt!19310))))) (or ((_ is Undefined!214) lt!19857) ((_ is Found!214) lt!19857) (not ((_ is MissingZero!214) lt!19857)) (and (bvsge (index!2978 lt!19857) #b00000000000000000000000000000000) (bvslt (index!2978 lt!19857) (size!1623 (_keys!3464 lt!19310))))) (or ((_ is Undefined!214) lt!19857) ((_ is Found!214) lt!19857) ((_ is MissingZero!214) lt!19857) (not ((_ is MissingVacant!214) lt!19857)) (and (bvsge (index!2981 lt!19857) #b00000000000000000000000000000000) (bvslt (index!2981 lt!19857) (size!1623 (_keys!3464 lt!19310))))) (or ((_ is Undefined!214) lt!19857) (ite ((_ is Found!214) lt!19857) (= (select (arr!1420 (_keys!3464 lt!19310)) (index!2979 lt!19857)) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!214) lt!19857) (= (select (arr!1420 (_keys!3464 lt!19310)) (index!2978 lt!19857)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!214) lt!19857) (= (select (arr!1420 (_keys!3464 lt!19310)) (index!2981 lt!19857)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!8595 (= lt!19857 e!28482)))

(declare-fun c!5979 () Bool)

(assert (=> d!8595 (= c!5979 (and ((_ is Intermediate!214) lt!19855) (undefined!1026 lt!19855)))))

(assert (=> d!8595 (= lt!19855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) (mask!5474 lt!19310)) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) (_keys!3464 lt!19310) (mask!5474 lt!19310)))))

(assert (=> d!8595 (validMask!0 (mask!5474 lt!19310))))

(assert (=> d!8595 (= (seekEntryOrOpen!0 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000) (_keys!3464 lt!19310) (mask!5474 lt!19310)) lt!19857)))

(declare-fun b!44941 () Bool)

(assert (=> b!44941 (= e!28483 (MissingZero!214 (index!2980 lt!19855)))))

(declare-fun b!44942 () Bool)

(declare-fun c!5977 () Bool)

(declare-fun lt!19856 () (_ BitVec 64))

(assert (=> b!44942 (= c!5977 (= lt!19856 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!44942 (= e!28484 e!28483)))

(declare-fun b!44943 () Bool)

(assert (=> b!44943 (= e!28482 e!28484)))

(assert (=> b!44943 (= lt!19856 (select (arr!1420 (_keys!3464 lt!19310)) (index!2980 lt!19855)))))

(declare-fun c!5978 () Bool)

(assert (=> b!44943 (= c!5978 (= lt!19856 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(assert (= (and d!8595 c!5979) b!44940))

(assert (= (and d!8595 (not c!5979)) b!44943))

(assert (= (and b!44943 c!5978) b!44939))

(assert (= (and b!44943 (not c!5978)) b!44942))

(assert (= (and b!44942 c!5977) b!44941))

(assert (= (and b!44942 (not c!5977)) b!44938))

(assert (=> b!44938 m!38553))

(declare-fun m!39179 () Bool)

(assert (=> b!44938 m!39179))

(assert (=> d!8595 m!38645))

(declare-fun m!39181 () Bool)

(assert (=> d!8595 m!39181))

(declare-fun m!39183 () Bool)

(assert (=> d!8595 m!39183))

(declare-fun m!39185 () Bool)

(assert (=> d!8595 m!39185))

(assert (=> d!8595 m!38553))

(declare-fun m!39187 () Bool)

(assert (=> d!8595 m!39187))

(declare-fun m!39189 () Bool)

(assert (=> d!8595 m!39189))

(assert (=> d!8595 m!38553))

(assert (=> d!8595 m!39185))

(declare-fun m!39191 () Bool)

(assert (=> b!44943 m!39191))

(assert (=> b!44440 d!8595))

(assert (=> b!44645 d!8503))

(declare-fun d!8597 () Bool)

(declare-fun lt!19862 () (_ BitVec 32))

(assert (=> d!8597 (and (bvsge lt!19862 #b00000000000000000000000000000000) (bvsle lt!19862 (bvsub (size!1623 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!28487 () (_ BitVec 32))

(assert (=> d!8597 (= lt!19862 e!28487)))

(declare-fun c!5980 () Bool)

(assert (=> d!8597 (= c!5980 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8597 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1623 (_keys!3464 lt!19310)) (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8597 (= (arrayCountValidKeys!0 (_keys!3464 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))) lt!19862)))

(declare-fun b!44946 () Bool)

(declare-fun e!28486 () (_ BitVec 32))

(assert (=> b!44946 (= e!28487 e!28486)))

(declare-fun c!5981 () Bool)

(assert (=> b!44946 (= c!5981 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44947 () Bool)

(assert (=> b!44947 (= e!28487 #b00000000000000000000000000000000)))

(declare-fun bm!3664 () Bool)

(declare-fun call!3667 () (_ BitVec 32))

(assert (=> bm!3664 (= call!3667 (arrayCountValidKeys!0 (_keys!3464 lt!19310) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))))))

(declare-fun b!44948 () Bool)

(assert (=> b!44948 (= e!28486 call!3667)))

(declare-fun b!44949 () Bool)

(assert (=> b!44949 (= e!28486 (bvadd #b00000000000000000000000000000001 call!3667))))

(assert (= (and d!8597 c!5980) b!44947))

(assert (= (and d!8597 (not c!5980)) b!44946))

(assert (= (and b!44946 c!5981) b!44949))

(assert (= (and b!44946 (not c!5981)) b!44948))

(assert (= (or b!44949 b!44948) bm!3664))

(assert (=> b!44946 m!38945))

(assert (=> b!44946 m!38945))

(assert (=> b!44946 m!38951))

(declare-fun m!39205 () Bool)

(assert (=> bm!3664 m!39205))

(assert (=> bm!3578 d!8597))

(declare-fun d!8601 () Bool)

(declare-fun e!28489 () Bool)

(assert (=> d!8601 e!28489))

(declare-fun res!26429 () Bool)

(assert (=> d!8601 (=> res!26429 e!28489)))

(declare-fun lt!19865 () Bool)

(assert (=> d!8601 (= res!26429 (not lt!19865))))

(declare-fun lt!19868 () Bool)

(assert (=> d!8601 (= lt!19865 lt!19868)))

(declare-fun lt!19867 () Unit!1233)

(declare-fun e!28488 () Unit!1233)

(assert (=> d!8601 (= lt!19867 e!28488)))

(declare-fun c!5982 () Bool)

(assert (=> d!8601 (= c!5982 lt!19868)))

(assert (=> d!8601 (= lt!19868 (containsKey!74 (toList!626 lt!19603) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(assert (=> d!8601 (= (contains!579 lt!19603 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)) lt!19865)))

(declare-fun b!44952 () Bool)

(declare-fun lt!19866 () Unit!1233)

(assert (=> b!44952 (= e!28488 lt!19866)))

(assert (=> b!44952 (= lt!19866 (lemmaContainsKeyImpliesGetValueByKeyDefined!62 (toList!626 lt!19603) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(assert (=> b!44952 (isDefined!63 (getValueByKey!106 (toList!626 lt!19603) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun b!44953 () Bool)

(declare-fun Unit!1249 () Unit!1233)

(assert (=> b!44953 (= e!28488 Unit!1249)))

(declare-fun b!44954 () Bool)

(assert (=> b!44954 (= e!28489 (isDefined!63 (getValueByKey!106 (toList!626 lt!19603) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))))

(assert (= (and d!8601 c!5982) b!44952))

(assert (= (and d!8601 (not c!5982)) b!44953))

(assert (= (and d!8601 (not res!26429)) b!44954))

(assert (=> d!8601 m!38553))

(declare-fun m!39207 () Bool)

(assert (=> d!8601 m!39207))

(assert (=> b!44952 m!38553))

(declare-fun m!39209 () Bool)

(assert (=> b!44952 m!39209))

(assert (=> b!44952 m!38553))

(declare-fun m!39211 () Bool)

(assert (=> b!44952 m!39211))

(assert (=> b!44952 m!39211))

(declare-fun m!39213 () Bool)

(assert (=> b!44952 m!39213))

(assert (=> b!44954 m!38553))

(assert (=> b!44954 m!39211))

(assert (=> b!44954 m!39211))

(assert (=> b!44954 m!39213))

(assert (=> b!44629 d!8601))

(declare-fun d!8603 () Bool)

(declare-fun e!28494 () Bool)

(assert (=> d!8603 e!28494))

(declare-fun res!26431 () Bool)

(assert (=> d!8603 (=> (not res!26431) (not e!28494))))

(declare-fun lt!19881 () ListLongMap!1221)

(assert (=> d!8603 (= res!26431 (contains!579 lt!19881 (_1!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))))))

(declare-fun lt!19883 () List!1226)

(assert (=> d!8603 (= lt!19881 (ListLongMap!1222 lt!19883))))

(declare-fun lt!19884 () Unit!1233)

(declare-fun lt!19882 () Unit!1233)

(assert (=> d!8603 (= lt!19884 lt!19882)))

(assert (=> d!8603 (= (getValueByKey!106 lt!19883 (_1!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))))))

(assert (=> d!8603 (= lt!19882 (lemmaContainsTupThenGetReturnValue!32 lt!19883 (_1!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))) (_2!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))))))

(assert (=> d!8603 (= lt!19883 (insertStrictlySorted!29 (toList!626 call!3624) (_1!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))) (_2!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))))))

(assert (=> d!8603 (= (+!70 call!3624 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))) lt!19881)))

(declare-fun b!44961 () Bool)

(declare-fun res!26430 () Bool)

(assert (=> b!44961 (=> (not res!26430) (not e!28494))))

(assert (=> b!44961 (= res!26430 (= (getValueByKey!106 (toList!626 lt!19881) (_1!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310)))) (Some!111 (_2!830 (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))))))

(declare-fun b!44962 () Bool)

(assert (=> b!44962 (= e!28494 (contains!582 (toList!626 lt!19881) (tuple2!1641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1815 lt!19310))))))

(assert (= (and d!8603 res!26431) b!44961))

(assert (= (and b!44961 res!26430) b!44962))

(declare-fun m!39215 () Bool)

(assert (=> d!8603 m!39215))

(declare-fun m!39217 () Bool)

(assert (=> d!8603 m!39217))

(declare-fun m!39219 () Bool)

(assert (=> d!8603 m!39219))

(declare-fun m!39221 () Bool)

(assert (=> d!8603 m!39221))

(declare-fun m!39223 () Bool)

(assert (=> b!44961 m!39223))

(declare-fun m!39225 () Bool)

(assert (=> b!44962 m!39225))

(assert (=> b!44628 d!8603))

(declare-fun bm!3667 () Bool)

(declare-fun call!3670 () Bool)

(assert (=> bm!3667 (= call!3670 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3464 lt!19310) (mask!5474 lt!19310)))))

(declare-fun b!44963 () Bool)

(declare-fun e!28496 () Bool)

(declare-fun e!28497 () Bool)

(assert (=> b!44963 (= e!28496 e!28497)))

(declare-fun lt!19886 () (_ BitVec 64))

(assert (=> b!44963 (= lt!19886 (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!19885 () Unit!1233)

(assert (=> b!44963 (= lt!19885 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3464 lt!19310) lt!19886 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!44963 (arrayContainsKey!0 (_keys!3464 lt!19310) lt!19886 #b00000000000000000000000000000000)))

(declare-fun lt!19887 () Unit!1233)

(assert (=> b!44963 (= lt!19887 lt!19885)))

(declare-fun res!26433 () Bool)

(assert (=> b!44963 (= res!26433 (= (seekEntryOrOpen!0 (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3464 lt!19310) (mask!5474 lt!19310)) (Found!214 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!44963 (=> (not res!26433) (not e!28497))))

(declare-fun b!44964 () Bool)

(declare-fun e!28495 () Bool)

(assert (=> b!44964 (= e!28495 e!28496)))

(declare-fun c!5987 () Bool)

(assert (=> b!44964 (= c!5987 (validKeyInArray!0 (select (arr!1420 (_keys!3464 lt!19310)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!44965 () Bool)

(assert (=> b!44965 (= e!28497 call!3670)))

(declare-fun b!44966 () Bool)

(assert (=> b!44966 (= e!28496 call!3670)))

(declare-fun d!8605 () Bool)

(declare-fun res!26432 () Bool)

(assert (=> d!8605 (=> res!26432 e!28495)))

(assert (=> d!8605 (= res!26432 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1623 (_keys!3464 lt!19310))))))

(assert (=> d!8605 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3464 lt!19310) (mask!5474 lt!19310)) e!28495)))

(assert (= (and d!8605 (not res!26432)) b!44964))

(assert (= (and b!44964 c!5987) b!44963))

(assert (= (and b!44964 (not c!5987)) b!44966))

(assert (= (and b!44963 res!26433) b!44965))

(assert (= (or b!44965 b!44966) bm!3667))

(declare-fun m!39227 () Bool)

(assert (=> bm!3667 m!39227))

(assert (=> b!44963 m!38945))

(declare-fun m!39229 () Bool)

(assert (=> b!44963 m!39229))

(declare-fun m!39231 () Bool)

(assert (=> b!44963 m!39231))

(assert (=> b!44963 m!38945))

(declare-fun m!39233 () Bool)

(assert (=> b!44963 m!39233))

(assert (=> b!44964 m!38945))

(assert (=> b!44964 m!38945))

(assert (=> b!44964 m!38951))

(assert (=> bm!3583 d!8605))

(declare-fun d!8607 () Bool)

(assert (=> d!8607 (= (size!1640 lt!19310) (bvadd (_size!244 lt!19310) (bvsdiv (bvadd (extraKeys!1788 lt!19310) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!44458 d!8607))

(declare-fun e!28539 () SeekEntryResult!214)

(declare-fun b!45034 () Bool)

(assert (=> b!45034 (= e!28539 (seekKeyOrZeroReturnVacant!0 (bvadd (x!8368 lt!19469) #b00000000000000000000000000000001) (nextIndex!0 (index!2980 lt!19469) (x!8368 lt!19469) mask!853) (index!2980 lt!19469) (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853))))

(declare-fun b!45035 () Bool)

(declare-fun e!28538 () SeekEntryResult!214)

(declare-fun e!28540 () SeekEntryResult!214)

(assert (=> b!45035 (= e!28538 e!28540)))

(declare-fun c!6006 () Bool)

(declare-fun lt!19939 () (_ BitVec 64))

(assert (=> b!45035 (= c!6006 (= lt!19939 (select (arr!1420 lt!19313) #b00000000000000000000000000000000)))))

(declare-fun d!8609 () Bool)

(declare-fun lt!19940 () SeekEntryResult!214)

(assert (=> d!8609 (and (or ((_ is Undefined!214) lt!19940) (not ((_ is Found!214) lt!19940)) (and (bvsge (index!2979 lt!19940) #b00000000000000000000000000000000) (bvslt (index!2979 lt!19940) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19940) ((_ is Found!214) lt!19940) (not ((_ is MissingVacant!214) lt!19940)) (not (= (index!2981 lt!19940) (index!2980 lt!19469))) (and (bvsge (index!2981 lt!19940) #b00000000000000000000000000000000) (bvslt (index!2981 lt!19940) (size!1623 lt!19313)))) (or ((_ is Undefined!214) lt!19940) (ite ((_ is Found!214) lt!19940) (= (select (arr!1420 lt!19313) (index!2979 lt!19940)) (select (arr!1420 lt!19313) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!214) lt!19940) (= (index!2981 lt!19940) (index!2980 lt!19469)) (= (select (arr!1420 lt!19313) (index!2981 lt!19940)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!8609 (= lt!19940 e!28538)))

(declare-fun c!6007 () Bool)

(assert (=> d!8609 (= c!6007 (bvsge (x!8368 lt!19469) #b01111111111111111111111111111110))))

(assert (=> d!8609 (= lt!19939 (select (arr!1420 lt!19313) (index!2980 lt!19469)))))

(assert (=> d!8609 (validMask!0 mask!853)))

(assert (=> d!8609 (= (seekKeyOrZeroReturnVacant!0 (x!8368 lt!19469) (index!2980 lt!19469) (index!2980 lt!19469) (select (arr!1420 lt!19313) #b00000000000000000000000000000000) lt!19313 mask!853) lt!19940)))

(declare-fun b!45036 () Bool)

(assert (=> b!45036 (= e!28540 (Found!214 (index!2980 lt!19469)))))

(declare-fun b!45037 () Bool)

(assert (=> b!45037 (= e!28539 (MissingVacant!214 (index!2980 lt!19469)))))

(declare-fun b!45038 () Bool)

(declare-fun c!6008 () Bool)

(assert (=> b!45038 (= c!6008 (= lt!19939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45038 (= e!28540 e!28539)))

(declare-fun b!45039 () Bool)

(assert (=> b!45039 (= e!28538 Undefined!214)))

(assert (= (and d!8609 c!6007) b!45039))

(assert (= (and d!8609 (not c!6007)) b!45035))

(assert (= (and b!45035 c!6006) b!45036))

(assert (= (and b!45035 (not c!6006)) b!45038))

(assert (= (and b!45038 c!6008) b!45037))

(assert (= (and b!45038 (not c!6008)) b!45034))

(declare-fun m!39363 () Bool)

(assert (=> b!45034 m!39363))

(assert (=> b!45034 m!39363))

(assert (=> b!45034 m!38445))

(declare-fun m!39365 () Bool)

(assert (=> b!45034 m!39365))

(declare-fun m!39367 () Bool)

(assert (=> d!8609 m!39367))

(declare-fun m!39369 () Bool)

(assert (=> d!8609 m!39369))

(assert (=> d!8609 m!38625))

(assert (=> d!8609 m!38363))

(assert (=> b!44426 d!8609))

(declare-fun d!8647 () Bool)

(assert (=> d!8647 (= (apply!61 lt!19603 #b0000000000000000000000000000000000000000000000000000000000000000) (get!806 (getValueByKey!106 (toList!626 lt!19603) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2050 () Bool)

(assert (= bs!2050 d!8647))

(assert (=> bs!2050 m!38957))

(assert (=> bs!2050 m!38957))

(declare-fun m!39371 () Bool)

(assert (=> bs!2050 m!39371))

(assert (=> b!44639 d!8647))

(assert (=> b!44357 d!8503))

(declare-fun d!8649 () Bool)

(assert (not d!8649))

(assert (=> b!44713 d!8649))

(assert (=> d!8481 d!8379))

(declare-fun d!8651 () Bool)

(assert (=> d!8651 (= (content!43 Nil!1224) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!8483 d!8651))

(declare-fun d!8655 () Bool)

(assert (=> d!8655 (= (apply!61 lt!19603 (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000)) (get!806 (getValueByKey!106 (toList!626 lt!19603) (select (arr!1420 (_keys!3464 lt!19310)) #b00000000000000000000000000000000))))))

(declare-fun bs!2052 () Bool)

(assert (= bs!2052 d!8655))

(assert (=> bs!2052 m!38553))

(assert (=> bs!2052 m!39211))

(assert (=> bs!2052 m!39211))

(declare-fun m!39377 () Bool)

(assert (=> bs!2052 m!39377))

(assert (=> b!44640 d!8655))

(declare-fun d!8657 () Bool)

(declare-fun c!6011 () Bool)

(assert (=> d!8657 (= c!6011 ((_ is ValueCellFull!705) (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000)))))

(declare-fun e!28543 () V!2327)

(assert (=> d!8657 (= (get!803 (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000) (dynLambda!266 (defaultEntry!1897 lt!19310) #b0000000000000000000000000000000000000000000000000000000000000000)) e!28543)))

(declare-fun b!45045 () Bool)

(declare-fun get!809 (ValueCell!705 V!2327) V!2327)

(assert (=> b!45045 (= e!28543 (get!809 (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000) (dynLambda!266 (defaultEntry!1897 lt!19310) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!45046 () Bool)

(declare-fun get!810 (ValueCell!705 V!2327) V!2327)

(assert (=> b!45046 (= e!28543 (get!810 (select (arr!1419 (_values!1880 lt!19310)) #b00000000000000000000000000000000) (dynLambda!266 (defaultEntry!1897 lt!19310) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8657 c!6011) b!45045))

(assert (= (and d!8657 (not c!6011)) b!45046))

(assert (=> b!45045 m!38763))

(assert (=> b!45045 m!38761))

(declare-fun m!39379 () Bool)

(assert (=> b!45045 m!39379))

(assert (=> b!45046 m!38763))

(assert (=> b!45046 m!38761))

(declare-fun m!39381 () Bool)

(assert (=> b!45046 m!39381))

(assert (=> b!44640 d!8657))

(declare-fun d!8659 () Bool)

(declare-fun e!28547 () Bool)

(assert (=> d!8659 e!28547))

(declare-fun res!26465 () Bool)

(assert (=> d!8659 (=> res!26465 e!28547)))

(declare-fun lt!19944 () Bool)

(assert (=> d!8659 (= res!26465 (not lt!19944))))

(declare-fun lt!19947 () Bool)

(assert (=> d!8659 (= lt!19944 lt!19947)))

(declare-fun lt!19946 () Unit!1233)

(declare-fun e!28546 () Unit!1233)

(assert (=> d!8659 (= lt!19946 e!28546)))

(declare-fun c!6012 () Bool)

(assert (=> d!8659 (= c!6012 lt!19947)))

(assert (=> d!8659 (= lt!19947 (containsKey!74 (toList!626 lt!19603) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8659 (= (contains!579 lt!19603 #b1000000000000000000000000000000000000000000000000000000000000000) lt!19944)))

(declare-fun b!45050 () Bool)

(declare-fun lt!19945 () Unit!1233)

(assert (=> b!45050 (= e!28546 lt!19945)))

(assert (=> b!45050 (= lt!19945 (lemmaContainsKeyImpliesGetValueByKeyDefined!62 (toList!626 lt!19603) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!45050 (isDefined!63 (getValueByKey!106 (toList!626 lt!19603) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!45051 () Bool)

(declare-fun Unit!1251 () Unit!1233)

(assert (=> b!45051 (= e!28546 Unit!1251)))

(declare-fun b!45052 () Bool)

(assert (=> b!45052 (= e!28547 (isDefined!63 (getValueByKey!106 (toList!626 lt!19603) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8659 c!6012) b!45050))

(assert (= (and d!8659 (not c!6012)) b!45051))

(assert (= (and d!8659 (not res!26465)) b!45052))

(declare-fun m!39383 () Bool)

(assert (=> d!8659 m!39383))

(declare-fun m!39385 () Bool)

(assert (=> b!45050 m!39385))

(assert (=> b!45050 m!38921))

(assert (=> b!45050 m!38921))

(declare-fun m!39387 () Bool)

(assert (=> b!45050 m!39387))

(assert (=> b!45052 m!38921))

(assert (=> b!45052 m!38921))

(assert (=> b!45052 m!39387))

(assert (=> bm!3622 d!8659))

(declare-fun d!8661 () Bool)

(declare-fun res!26466 () Bool)

(declare-fun e!28548 () Bool)

(assert (=> d!8661 (=> res!26466 e!28548)))

(assert (=> d!8661 (= res!26466 (= (select (arr!1420 lt!19313) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!19413))))

(assert (=> d!8661 (= (arrayContainsKey!0 lt!19313 lt!19413 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!28548)))

(declare-fun b!45053 () Bool)

(declare-fun e!28549 () Bool)

(assert (=> b!45053 (= e!28548 e!28549)))

(declare-fun res!26467 () Bool)

(assert (=> b!45053 (=> (not res!26467) (not e!28549))))

(assert (=> b!45053 (= res!26467 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1623 lt!19313)))))

(declare-fun b!45054 () Bool)

(assert (=> b!45054 (= e!28549 (arrayContainsKey!0 lt!19313 lt!19413 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!8661 (not res!26466)) b!45053))

(assert (= (and b!45053 res!26467) b!45054))

(assert (=> d!8661 m!38537))

(declare-fun m!39389 () Bool)

(assert (=> b!45054 m!39389))

(assert (=> b!44362 d!8661))

(assert (=> b!44459 d!8607))

(declare-fun b_lambda!2355 () Bool)

(assert (= b_lambda!2341 (or (and start!6744 b_free!1515 (= defaultEntry!470 (defaultEntry!1897 lt!19310))) b_lambda!2355)))

(check-sat (not b!44964) (not b!44758) (not d!8555) (not b!44801) (not b!44793) (not b!44821) (not b!44822) (not bm!3667) (not b!44761) (not b!44797) (not bm!3660) (not b!44892) (not d!8531) (not b!44923) (not b!44814) (not d!8551) (not b!44829) (not b!44926) (not b!45034) (not d!8513) (not b!44764) (not d!8549) (not b!44924) (not d!8589) (not d!8659) (not b!44800) (not d!8509) (not d!8533) (not b!44826) (not b!44791) (not d!8557) (not b!44825) b_and!2729 (not b!44816) (not bm!3664) (not d!8655) (not b_next!1515) (not d!8495) (not d!8591) (not d!8583) (not b!44802) (not b!44929) (not b!45052) (not b!44834) (not d!8601) (not bm!3663) (not d!8515) (not d!8609) (not d!8517) (not bm!3662) (not bm!3657) (not b!44962) (not d!8603) (not b!44925) (not b_lambda!2355) (not b!44961) (not bm!3661) (not d!8575) (not b!44836) (not d!8569) (not b!45054) (not b!45050) (not b!44937) (not b!44837) (not b!44792) (not b!44759) (not b_lambda!2347) (not b!44938) (not d!8577) (not b!44952) (not d!8519) (not b!44885) (not d!8559) (not b!44789) (not d!8579) (not b!44930) (not b!44824) (not d!8507) (not b_lambda!2349) (not d!8553) (not b!44799) (not b!45046) (not b!44889) (not b!44946) (not b!44890) (not d!8587) (not d!8647) (not d!8527) (not d!8595) (not d!8561) (not b!44888) (not b!44804) (not b!44812) (not b!44954) (not b!44798) tp_is_empty!1905 (not d!8585) (not b!45045) (not b_lambda!2339) (not b!44963))
(check-sat b_and!2729 (not b_next!1515))
