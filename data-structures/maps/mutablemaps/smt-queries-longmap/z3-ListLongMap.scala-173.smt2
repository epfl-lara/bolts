; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3298 () Bool)

(assert start!3298)

(declare-fun b!20348 () Bool)

(declare-fun b_free!717 () Bool)

(declare-fun b_next!717 () Bool)

(assert (=> b!20348 (= b_free!717 (not b_next!717))))

(declare-fun tp!3379 () Bool)

(declare-fun b_and!1395 () Bool)

(assert (=> b!20348 (= tp!3379 b_and!1395)))

(declare-fun res!13431 () Bool)

(declare-fun e!13310 () Bool)

(assert (=> start!3298 (=> (not res!13431) (not e!13310))))

(declare-datatypes ((V!1133 0))(
  ( (V!1134 (val!517 Int)) )
))
(declare-datatypes ((ValueCell!291 0))(
  ( (ValueCellFull!291 (v!1551 V!1133)) (EmptyCell!291) )
))
(declare-datatypes ((array!1179 0))(
  ( (array!1180 (arr!561 (Array (_ BitVec 32) ValueCell!291)) (size!654 (_ BitVec 32))) )
))
(declare-datatypes ((array!1181 0))(
  ( (array!1182 (arr!562 (Array (_ BitVec 32) (_ BitVec 64))) (size!655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!168 0))(
  ( (LongMapFixedSize!169 (defaultEntry!1707 Int) (mask!4671 (_ BitVec 32)) (extraKeys!1613 (_ BitVec 32)) (zeroValue!1637 V!1133) (minValue!1637 V!1133) (_size!122 (_ BitVec 32)) (_keys!3131 array!1181) (_values!1699 array!1179) (_vacant!122 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!168 0))(
  ( (Cell!169 (v!1552 LongMapFixedSize!168)) )
))
(declare-datatypes ((LongMap!168 0))(
  ( (LongMap!169 (underlying!95 Cell!168)) )
))
(declare-fun thiss!938 () LongMap!168)

(declare-fun valid!86 (LongMap!168) Bool)

(assert (=> start!3298 (= res!13431 (valid!86 thiss!938))))

(assert (=> start!3298 e!13310))

(declare-fun e!13311 () Bool)

(assert (=> start!3298 e!13311))

(declare-fun b!20346 () Bool)

(declare-datatypes ((tuple2!838 0))(
  ( (tuple2!839 (_1!422 Bool) (_2!422 Cell!168)) )
))
(declare-fun e!13305 () tuple2!838)

(declare-fun lt!5943 () LongMapFixedSize!168)

(assert (=> b!20346 (= e!13305 (tuple2!839 true (Cell!169 lt!5943)))))

(declare-fun b!20347 () Bool)

(declare-fun res!13430 () Bool)

(declare-fun e!13303 () Bool)

(assert (=> b!20347 (=> (not res!13430) (not e!13303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!20347 (= res!13430 (validMask!0 (mask!4671 (v!1552 (underlying!95 thiss!938)))))))

(declare-fun mapIsEmpty!943 () Bool)

(declare-fun mapRes!943 () Bool)

(assert (=> mapIsEmpty!943 mapRes!943))

(declare-fun c!2209 () Bool)

(declare-fun c!2211 () Bool)

(declare-fun bm!1002 () Bool)

(declare-datatypes ((tuple2!840 0))(
  ( (tuple2!841 (_1!423 Bool) (_2!423 LongMapFixedSize!168)) )
))
(declare-fun call!1005 () tuple2!840)

(declare-fun update!18 (LongMapFixedSize!168 (_ BitVec 64) V!1133) tuple2!840)

(assert (=> bm!1002 (= call!1005 (update!18 lt!5943 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938))))))))

(declare-fun tp_is_empty!981 () Bool)

(declare-fun e!13306 () Bool)

(declare-fun e!13309 () Bool)

(declare-fun array_inv!397 (array!1181) Bool)

(declare-fun array_inv!398 (array!1179) Bool)

(assert (=> b!20348 (= e!13306 (and tp!3379 tp_is_empty!981 (array_inv!397 (_keys!3131 (v!1552 (underlying!95 thiss!938)))) (array_inv!398 (_values!1699 (v!1552 (underlying!95 thiss!938)))) e!13309))))

(declare-fun b!20349 () Bool)

(declare-fun e!13308 () tuple2!838)

(declare-fun e!13302 () tuple2!838)

(assert (=> b!20349 (= e!13308 e!13302)))

(declare-fun lt!5944 () Bool)

(assert (=> b!20349 (= c!2211 (and (not lt!5944) (= (bvand (extraKeys!1613 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!20350 () Bool)

(declare-fun lt!5947 () tuple2!840)

(declare-fun call!1006 () tuple2!840)

(assert (=> b!20350 (= lt!5947 call!1006)))

(assert (=> b!20350 (= e!13302 (tuple2!839 (_1!423 lt!5947) (Cell!169 (_2!423 lt!5947))))))

(declare-fun b!20351 () Bool)

(declare-fun lt!5946 () tuple2!840)

(assert (=> b!20351 (= e!13305 (tuple2!839 (_1!423 lt!5946) (Cell!169 (_2!423 lt!5946))))))

(assert (=> b!20351 (= lt!5946 call!1006)))

(declare-fun b!20352 () Bool)

(assert (=> b!20352 (= e!13303 (and (= (size!655 (_keys!3131 (v!1552 (underlying!95 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4671 (v!1552 (underlying!95 thiss!938))))) (bvsge (bvsub (size!655 (_keys!3131 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub (size!655 (_keys!3131 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001) (size!655 (_keys!3131 (v!1552 (underlying!95 thiss!938)))))))))

(declare-fun b!20353 () Bool)

(declare-fun e!13300 () Bool)

(assert (=> b!20353 (= e!13311 e!13300)))

(declare-fun b!20354 () Bool)

(assert (=> b!20354 (= e!13300 e!13306)))

(declare-fun b!20355 () Bool)

(assert (=> b!20355 (= e!13310 e!13303)))

(declare-fun res!13429 () Bool)

(assert (=> b!20355 (=> (not res!13429) (not e!13303))))

(assert (=> b!20355 (= res!13429 (_1!422 e!13308))))

(assert (=> b!20355 (= c!2209 (and (not lt!5944) (not (= (bvand (extraKeys!1613 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!20355 (= lt!5944 (= (bvand (extraKeys!1613 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!20 ((_ BitVec 32) Int) LongMapFixedSize!168)

(declare-fun computeNewMask!17 (LongMap!168 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20355 (= lt!5943 (getNewLongMapFixedSize!20 (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) (defaultEntry!1707 (v!1552 (underlying!95 thiss!938)))))))

(declare-fun b!20356 () Bool)

(declare-fun lt!5945 () tuple2!840)

(declare-fun lt!5948 () tuple2!840)

(assert (=> b!20356 (= e!13308 (tuple2!839 (and (_1!423 lt!5945) (_1!423 lt!5948)) (Cell!169 (_2!423 lt!5948))))))

(assert (=> b!20356 (= lt!5945 call!1005)))

(assert (=> b!20356 (= lt!5948 (update!18 (_2!423 lt!5945) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938)))))))

(declare-fun b!20357 () Bool)

(declare-fun c!2210 () Bool)

(assert (=> b!20357 (= c!2210 (and (not (= (bvand (extraKeys!1613 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!5944))))

(assert (=> b!20357 (= e!13302 e!13305)))

(declare-fun mapNonEmpty!943 () Bool)

(declare-fun tp!3378 () Bool)

(declare-fun e!13304 () Bool)

(assert (=> mapNonEmpty!943 (= mapRes!943 (and tp!3378 e!13304))))

(declare-fun mapKey!943 () (_ BitVec 32))

(declare-fun mapRest!943 () (Array (_ BitVec 32) ValueCell!291))

(declare-fun mapValue!943 () ValueCell!291)

(assert (=> mapNonEmpty!943 (= (arr!561 (_values!1699 (v!1552 (underlying!95 thiss!938)))) (store mapRest!943 mapKey!943 mapValue!943))))

(declare-fun bm!1003 () Bool)

(assert (=> bm!1003 (= call!1006 call!1005)))

(declare-fun b!20358 () Bool)

(assert (=> b!20358 (= e!13304 tp_is_empty!981)))

(declare-fun b!20359 () Bool)

(declare-fun e!13307 () Bool)

(assert (=> b!20359 (= e!13307 tp_is_empty!981)))

(declare-fun b!20360 () Bool)

(assert (=> b!20360 (= e!13309 (and e!13307 mapRes!943))))

(declare-fun condMapEmpty!943 () Bool)

(declare-fun mapDefault!943 () ValueCell!291)

(assert (=> b!20360 (= condMapEmpty!943 (= (arr!561 (_values!1699 (v!1552 (underlying!95 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!291)) mapDefault!943)))))

(assert (= (and start!3298 res!13431) b!20355))

(assert (= (and b!20355 c!2209) b!20356))

(assert (= (and b!20355 (not c!2209)) b!20349))

(assert (= (and b!20349 c!2211) b!20350))

(assert (= (and b!20349 (not c!2211)) b!20357))

(assert (= (and b!20357 c!2210) b!20351))

(assert (= (and b!20357 (not c!2210)) b!20346))

(assert (= (or b!20350 b!20351) bm!1003))

(assert (= (or b!20356 bm!1003) bm!1002))

(assert (= (and b!20355 res!13429) b!20347))

(assert (= (and b!20347 res!13430) b!20352))

(assert (= (and b!20360 condMapEmpty!943) mapIsEmpty!943))

(assert (= (and b!20360 (not condMapEmpty!943)) mapNonEmpty!943))

(get-info :version)

(assert (= (and mapNonEmpty!943 ((_ is ValueCellFull!291) mapValue!943)) b!20358))

(assert (= (and b!20360 ((_ is ValueCellFull!291) mapDefault!943)) b!20359))

(assert (= b!20348 b!20360))

(assert (= b!20354 b!20348))

(assert (= b!20353 b!20354))

(assert (= start!3298 b!20353))

(declare-fun m!14249 () Bool)

(assert (=> b!20356 m!14249))

(declare-fun m!14251 () Bool)

(assert (=> b!20355 m!14251))

(assert (=> b!20355 m!14251))

(declare-fun m!14253 () Bool)

(assert (=> b!20355 m!14253))

(declare-fun m!14255 () Bool)

(assert (=> bm!1002 m!14255))

(declare-fun m!14257 () Bool)

(assert (=> b!20348 m!14257))

(declare-fun m!14259 () Bool)

(assert (=> b!20348 m!14259))

(declare-fun m!14261 () Bool)

(assert (=> b!20347 m!14261))

(declare-fun m!14263 () Bool)

(assert (=> mapNonEmpty!943 m!14263))

(declare-fun m!14265 () Bool)

(assert (=> start!3298 m!14265))

(check-sat (not b!20356) b_and!1395 tp_is_empty!981 (not b!20355) (not b!20348) (not b!20347) (not b_next!717) (not mapNonEmpty!943) (not start!3298) (not bm!1002))
(check-sat b_and!1395 (not b_next!717))
(get-model)

(declare-fun b!20486 () Bool)

(declare-datatypes ((Unit!421 0))(
  ( (Unit!422) )
))
(declare-fun lt!6043 () Unit!421)

(declare-fun lt!6047 () Unit!421)

(assert (=> b!20486 (= lt!6043 lt!6047)))

(declare-fun call!1080 () Bool)

(assert (=> b!20486 call!1080))

(declare-datatypes ((SeekEntryResult!53 0))(
  ( (MissingZero!53 (index!2332 (_ BitVec 32))) (Found!53 (index!2333 (_ BitVec 32))) (Intermediate!53 (undefined!865 Bool) (index!2334 (_ BitVec 32)) (x!4964 (_ BitVec 32))) (Undefined!53) (MissingVacant!53 (index!2335 (_ BitVec 32))) )
))
(declare-fun lt!6040 () SeekEntryResult!53)

(declare-fun lt!6045 () array!1179)

(declare-fun lemmaValidKeyInArrayIsInListMap!4 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 (_ BitVec 32) Int) Unit!421)

(assert (=> b!20486 (= lt!6047 (lemmaValidKeyInArrayIsInListMap!4 (_keys!3131 (_2!423 lt!5945)) lt!6045 (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) (index!2333 lt!6040) (defaultEntry!1707 (_2!423 lt!5945))))))

(assert (=> b!20486 (= lt!6045 (array!1180 (store (arr!561 (_values!1699 (_2!423 lt!5945))) (index!2333 lt!6040) (ValueCellFull!291 (minValue!1637 (v!1552 (underlying!95 thiss!938))))) (size!654 (_values!1699 (_2!423 lt!5945)))))))

(declare-fun lt!6036 () Unit!421)

(declare-fun lt!6028 () Unit!421)

(assert (=> b!20486 (= lt!6036 lt!6028)))

(declare-datatypes ((tuple2!844 0))(
  ( (tuple2!845 (_1!425 (_ BitVec 64)) (_2!425 V!1133)) )
))
(declare-datatypes ((List!551 0))(
  ( (Nil!548) (Cons!547 (h!1113 tuple2!844) (t!3206 List!551)) )
))
(declare-datatypes ((ListLongMap!537 0))(
  ( (ListLongMap!538 (toList!284 List!551)) )
))
(declare-fun call!1082 () ListLongMap!537)

(declare-fun call!1065 () ListLongMap!537)

(assert (=> b!20486 (= call!1082 call!1065)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!4 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 (_ BitVec 32) (_ BitVec 64) V!1133 Int) Unit!421)

(assert (=> b!20486 (= lt!6028 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!4 (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) (index!2333 lt!6040) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938))) (defaultEntry!1707 (_2!423 lt!5945))))))

(declare-fun lt!6022 () Unit!421)

(declare-fun e!13393 () Unit!421)

(assert (=> b!20486 (= lt!6022 e!13393)))

(declare-fun c!2250 () Bool)

(declare-fun call!1069 () ListLongMap!537)

(declare-fun contains!212 (ListLongMap!537 (_ BitVec 64)) Bool)

(assert (=> b!20486 (= c!2250 (contains!212 call!1069 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!13399 () tuple2!840)

(assert (=> b!20486 (= e!13399 (tuple2!841 true (LongMapFixedSize!169 (defaultEntry!1707 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) (_size!122 (_2!423 lt!5945)) (_keys!3131 (_2!423 lt!5945)) (array!1180 (store (arr!561 (_values!1699 (_2!423 lt!5945))) (index!2333 lt!6040) (ValueCellFull!291 (minValue!1637 (v!1552 (underlying!95 thiss!938))))) (size!654 (_values!1699 (_2!423 lt!5945)))) (_vacant!122 (_2!423 lt!5945)))))))

(declare-fun b!20487 () Bool)

(declare-fun c!2248 () Bool)

(declare-fun lt!6032 () SeekEntryResult!53)

(assert (=> b!20487 (= c!2248 ((_ is MissingVacant!53) lt!6032))))

(declare-fun e!13392 () Bool)

(declare-fun e!13394 () Bool)

(assert (=> b!20487 (= e!13392 e!13394)))

(declare-fun bm!1058 () Bool)

(declare-fun call!1064 () Bool)

(declare-fun arrayContainsKey!0 (array!1181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!1058 (= call!1064 (arrayContainsKey!0 (_keys!3131 (_2!423 lt!5945)) #b1000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!20488 () Bool)

(declare-fun lt!6034 () Unit!421)

(declare-fun e!13401 () Unit!421)

(assert (=> b!20488 (= lt!6034 e!13401)))

(declare-fun c!2251 () Bool)

(assert (=> b!20488 (= c!2251 call!1080)))

(declare-fun e!13407 () tuple2!840)

(assert (=> b!20488 (= e!13407 (tuple2!841 false (_2!423 lt!5945)))))

(declare-fun b!20489 () Bool)

(declare-fun e!13398 () Bool)

(declare-fun call!1067 () ListLongMap!537)

(declare-fun call!1063 () ListLongMap!537)

(assert (=> b!20489 (= e!13398 (= call!1067 call!1063))))

(declare-fun b!20490 () Bool)

(declare-fun c!2252 () Bool)

(assert (=> b!20490 (= c!2252 ((_ is MissingVacant!53) lt!6040))))

(declare-fun e!13400 () tuple2!840)

(assert (=> b!20490 (= e!13407 e!13400)))

(declare-fun b!20491 () Bool)

(declare-fun res!13482 () Bool)

(declare-fun e!13402 () Bool)

(assert (=> b!20491 (=> (not res!13482) (not e!13402))))

(assert (=> b!20491 (= res!13482 (= (select (arr!562 (_keys!3131 (_2!423 lt!5945))) (index!2332 lt!6032)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1059 () Bool)

(declare-fun c!2247 () Bool)

(declare-fun c!2258 () Bool)

(assert (=> bm!1059 (= c!2247 c!2258)))

(declare-fun e!13390 () ListLongMap!537)

(assert (=> bm!1059 (= call!1080 (contains!212 e!13390 (ite c!2258 #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!562 (_keys!3131 (_2!423 lt!5945))) (index!2333 lt!6040)))))))

(declare-fun b!20492 () Bool)

(declare-fun res!13470 () Bool)

(assert (=> b!20492 (=> (not res!13470) (not e!13402))))

(declare-fun call!1078 () Bool)

(assert (=> b!20492 (= res!13470 call!1078)))

(assert (=> b!20492 (= e!13392 e!13402)))

(declare-fun b!20493 () Bool)

(declare-fun res!13469 () Bool)

(declare-fun call!1081 () Bool)

(assert (=> b!20493 (= res!13469 call!1081)))

(declare-fun e!13408 () Bool)

(assert (=> b!20493 (=> (not res!13469) (not e!13408))))

(declare-fun bm!1060 () Bool)

(declare-fun call!1066 () tuple2!840)

(declare-fun updateHelperNewKey!4 (LongMapFixedSize!168 (_ BitVec 64) V!1133 (_ BitVec 32)) tuple2!840)

(assert (=> bm!1060 (= call!1066 (updateHelperNewKey!4 (_2!423 lt!5945) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938))) (ite c!2252 (index!2335 lt!6040) (index!2332 lt!6040))))))

(declare-fun bm!1061 () Bool)

(declare-fun call!1070 () Bool)

(assert (=> bm!1061 (= call!1070 call!1081)))

(declare-fun b!20494 () Bool)

(declare-fun lt!6030 () Unit!421)

(assert (=> b!20494 (= e!13393 lt!6030)))

(declare-fun call!1074 () Unit!421)

(assert (=> b!20494 (= lt!6030 call!1074)))

(declare-fun lt!6029 () SeekEntryResult!53)

(declare-fun call!1077 () SeekEntryResult!53)

(assert (=> b!20494 (= lt!6029 call!1077)))

(declare-fun res!13480 () Bool)

(assert (=> b!20494 (= res!13480 ((_ is Found!53) lt!6029))))

(declare-fun e!13397 () Bool)

(assert (=> b!20494 (=> (not res!13480) (not e!13397))))

(assert (=> b!20494 e!13397))

(declare-fun b!20495 () Bool)

(declare-fun lt!6046 () Unit!421)

(assert (=> b!20495 (= e!13401 lt!6046)))

(declare-fun call!1072 () Unit!421)

(assert (=> b!20495 (= lt!6046 call!1072)))

(declare-fun lt!6031 () SeekEntryResult!53)

(declare-fun call!1076 () SeekEntryResult!53)

(assert (=> b!20495 (= lt!6031 call!1076)))

(declare-fun c!2256 () Bool)

(assert (=> b!20495 (= c!2256 ((_ is MissingZero!53) lt!6031))))

(declare-fun e!13410 () Bool)

(assert (=> b!20495 e!13410))

(declare-fun b!20496 () Bool)

(declare-fun e!13391 () Bool)

(assert (=> b!20496 (= e!13391 ((_ is Undefined!53) lt!6031))))

(declare-fun b!20497 () Bool)

(declare-fun c!2255 () Bool)

(assert (=> b!20497 (= c!2255 ((_ is MissingVacant!53) lt!6031))))

(assert (=> b!20497 (= e!13410 e!13391)))

(declare-fun b!20498 () Bool)

(assert (=> b!20498 (= e!13397 (= (select (arr!562 (_keys!3131 (_2!423 lt!5945))) (index!2333 lt!6029)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!20499 () Bool)

(declare-fun e!13396 () tuple2!840)

(declare-fun e!13403 () tuple2!840)

(assert (=> b!20499 (= e!13396 e!13403)))

(declare-fun c!2254 () Bool)

(assert (=> b!20499 (= c!2254 (= #b1000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1062 () Bool)

(declare-fun call!1083 () Bool)

(assert (=> bm!1062 (= call!1081 call!1083)))

(declare-fun bm!1063 () Bool)

(declare-fun lt!6039 () tuple2!840)

(declare-fun map!388 (LongMapFixedSize!168) ListLongMap!537)

(assert (=> bm!1063 (= call!1067 (map!388 (_2!423 lt!6039)))))

(declare-fun bm!1064 () Bool)

(declare-fun call!1084 () Bool)

(assert (=> bm!1064 (= call!1084 call!1064)))

(declare-fun b!20500 () Bool)

(declare-fun lt!6026 () Unit!421)

(declare-fun lt!6038 () Unit!421)

(assert (=> b!20500 (= lt!6026 lt!6038)))

(declare-fun call!1075 () ListLongMap!537)

(declare-fun call!1062 () ListLongMap!537)

(assert (=> b!20500 (= call!1075 call!1062)))

(declare-fun lt!6044 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!4 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 V!1133 Int) Unit!421)

(assert (=> b!20500 (= lt!6038 (lemmaChangeZeroKeyThenAddPairToListMap!4 (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) lt!6044 (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (_2!423 lt!5945)) (defaultEntry!1707 (_2!423 lt!5945))))))

(assert (=> b!20500 (= lt!6044 (bvor (extraKeys!1613 (_2!423 lt!5945)) #b00000000000000000000000000000001))))

(assert (=> b!20500 (= e!13403 (tuple2!841 true (LongMapFixedSize!169 (defaultEntry!1707 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (bvor (extraKeys!1613 (_2!423 lt!5945)) #b00000000000000000000000000000001) (minValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (_2!423 lt!5945)) (_size!122 (_2!423 lt!5945)) (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (_vacant!122 (_2!423 lt!5945)))))))

(declare-fun b!20501 () Bool)

(declare-fun lt!6025 () Unit!421)

(declare-fun lt!6035 () Unit!421)

(assert (=> b!20501 (= lt!6025 lt!6035)))

(assert (=> b!20501 (= call!1075 call!1062)))

(declare-fun lt!6027 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!4 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 V!1133 Int) Unit!421)

(assert (=> b!20501 (= lt!6035 (lemmaChangeLongMinValueKeyThenAddPairToListMap!4 (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) lt!6027 (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) (minValue!1637 (v!1552 (underlying!95 thiss!938))) (defaultEntry!1707 (_2!423 lt!5945))))))

(assert (=> b!20501 (= lt!6027 (bvor (extraKeys!1613 (_2!423 lt!5945)) #b00000000000000000000000000000010))))

(assert (=> b!20501 (= e!13403 (tuple2!841 true (LongMapFixedSize!169 (defaultEntry!1707 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (bvor (extraKeys!1613 (_2!423 lt!5945)) #b00000000000000000000000000000010) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (v!1552 (underlying!95 thiss!938))) (_size!122 (_2!423 lt!5945)) (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (_vacant!122 (_2!423 lt!5945)))))))

(declare-fun c!2253 () Bool)

(declare-fun bm!1065 () Bool)

(declare-fun call!1071 () ListLongMap!537)

(declare-fun getCurrentListMap!113 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 (_ BitVec 32) Int) ListLongMap!537)

(assert (=> bm!1065 (= call!1071 (getCurrentListMap!113 (_keys!3131 (_2!423 lt!5945)) (ite c!2253 (_values!1699 (_2!423 lt!5945)) lt!6045) (mask!4671 (_2!423 lt!5945)) (ite c!2253 (ite c!2254 lt!6044 lt!6027) (extraKeys!1613 (_2!423 lt!5945))) (ite (and c!2253 c!2254) (minValue!1637 (v!1552 (underlying!95 thiss!938))) (zeroValue!1637 (_2!423 lt!5945))) (ite c!2253 (ite c!2254 (minValue!1637 (_2!423 lt!5945)) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (minValue!1637 (_2!423 lt!5945))) #b00000000000000000000000000000000 (defaultEntry!1707 (_2!423 lt!5945))))))

(declare-fun b!20502 () Bool)

(declare-fun e!13405 () Bool)

(declare-fun call!1073 () Bool)

(assert (=> b!20502 (= e!13405 (not call!1073))))

(declare-fun bm!1066 () Bool)

(declare-fun call!1068 () Bool)

(assert (=> bm!1066 (= call!1068 call!1083)))

(declare-fun bm!1067 () Bool)

(assert (=> bm!1067 (= call!1069 (getCurrentListMap!113 (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) #b00000000000000000000000000000000 (defaultEntry!1707 (_2!423 lt!5945))))))

(declare-fun b!20503 () Bool)

(assert (=> b!20503 (= e!13402 (not call!1084))))

(declare-fun b!20504 () Bool)

(declare-fun Unit!423 () Unit!421)

(assert (=> b!20504 (= e!13401 Unit!423)))

(declare-fun lt!6023 () Unit!421)

(assert (=> b!20504 (= lt!6023 call!1074)))

(declare-fun lt!6037 () SeekEntryResult!53)

(assert (=> b!20504 (= lt!6037 call!1076)))

(declare-fun res!13477 () Bool)

(assert (=> b!20504 (= res!13477 ((_ is Found!53) lt!6037))))

(assert (=> b!20504 (=> (not res!13477) (not e!13408))))

(assert (=> b!20504 e!13408))

(declare-fun lt!6024 () Unit!421)

(assert (=> b!20504 (= lt!6024 lt!6023)))

(assert (=> b!20504 false))

(declare-fun b!20505 () Bool)

(assert (=> b!20505 (= e!13396 e!13407)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1181 (_ BitVec 32)) SeekEntryResult!53)

(assert (=> b!20505 (= lt!6040 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3131 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945))))))

(assert (=> b!20505 (= c!2258 ((_ is Undefined!53) lt!6040))))

(declare-fun bm!1068 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!4 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 (_ BitVec 64) Int) Unit!421)

(assert (=> bm!1068 (= call!1072 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!4 (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1707 (_2!423 lt!5945))))))

(declare-fun bm!1069 () Bool)

(assert (=> bm!1069 (= call!1075 call!1082)))

(declare-fun b!20506 () Bool)

(declare-fun lt!6041 () tuple2!840)

(assert (=> b!20506 (= lt!6041 call!1066)))

(assert (=> b!20506 (= e!13399 (tuple2!841 (_1!423 lt!6041) (_2!423 lt!6041)))))

(declare-fun c!2259 () Bool)

(declare-fun bm!1070 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!1070 (= call!1083 (inRange!0 (ite c!2258 (ite c!2251 (index!2333 lt!6037) (ite c!2256 (index!2332 lt!6031) (index!2335 lt!6031))) (ite c!2250 (index!2333 lt!6029) (ite c!2259 (index!2332 lt!6032) (index!2335 lt!6032)))) (mask!4671 (_2!423 lt!5945))))))

(declare-fun b!20507 () Bool)

(declare-fun res!13471 () Bool)

(assert (=> b!20507 (= res!13471 (= (select (arr!562 (_keys!3131 (_2!423 lt!5945))) (index!2335 lt!6032)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!13395 () Bool)

(assert (=> b!20507 (=> (not res!13471) (not e!13395))))

(declare-fun bm!1071 () Bool)

(assert (=> bm!1071 (= call!1065 (getCurrentListMap!113 (_keys!3131 (_2!423 lt!5945)) (ite c!2258 (_values!1699 (_2!423 lt!5945)) (array!1180 (store (arr!561 (_values!1699 (_2!423 lt!5945))) (index!2333 lt!6040) (ValueCellFull!291 (minValue!1637 (v!1552 (underlying!95 thiss!938))))) (size!654 (_values!1699 (_2!423 lt!5945))))) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) #b00000000000000000000000000000000 (defaultEntry!1707 (_2!423 lt!5945))))))

(declare-fun b!20508 () Bool)

(declare-fun e!13406 () Bool)

(assert (=> b!20508 (= e!13406 e!13398)))

(declare-fun c!2249 () Bool)

(assert (=> b!20508 (= c!2249 (_1!423 lt!6039))))

(declare-fun bm!1072 () Bool)

(declare-fun call!1061 () SeekEntryResult!53)

(assert (=> bm!1072 (= call!1077 call!1061)))

(declare-fun b!20509 () Bool)

(declare-fun res!13472 () Bool)

(assert (=> b!20509 (= res!13472 (= (select (arr!562 (_keys!3131 (_2!423 lt!5945))) (index!2335 lt!6031)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!13409 () Bool)

(assert (=> b!20509 (=> (not res!13472) (not e!13409))))

(declare-fun b!20510 () Bool)

(assert (=> b!20510 (= e!13395 (not call!1084))))

(declare-fun bm!1073 () Bool)

(assert (=> bm!1073 (= call!1063 (map!388 (_2!423 lt!5945)))))

(declare-fun bm!1074 () Bool)

(assert (=> bm!1074 (= call!1076 call!1061)))

(declare-fun bm!1075 () Bool)

(declare-fun call!1079 () ListLongMap!537)

(assert (=> bm!1075 (= call!1079 call!1069)))

(declare-fun b!20511 () Bool)

(assert (=> b!20511 (= e!13394 e!13395)))

(declare-fun res!13476 () Bool)

(assert (=> b!20511 (= res!13476 call!1078)))

(assert (=> b!20511 (=> (not res!13476) (not e!13395))))

(declare-fun b!20512 () Bool)

(assert (=> b!20512 (= e!13390 call!1065)))

(declare-fun bm!1076 () Bool)

(assert (=> bm!1076 (= call!1078 call!1068)))

(declare-fun b!20513 () Bool)

(declare-fun res!13473 () Bool)

(assert (=> b!20513 (=> (not res!13473) (not e!13405))))

(assert (=> b!20513 (= res!13473 call!1070)))

(assert (=> b!20513 (= e!13410 e!13405)))

(declare-fun b!20514 () Bool)

(assert (=> b!20514 (= e!13394 ((_ is Undefined!53) lt!6032))))

(declare-fun d!3681 () Bool)

(assert (=> d!3681 e!13406))

(declare-fun res!13475 () Bool)

(assert (=> d!3681 (=> (not res!13475) (not e!13406))))

(declare-fun valid!87 (LongMapFixedSize!168) Bool)

(assert (=> d!3681 (= res!13475 (valid!87 (_2!423 lt!6039)))))

(assert (=> d!3681 (= lt!6039 e!13396)))

(assert (=> d!3681 (= c!2253 (= #b1000000000000000000000000000000000000000000000000000000000000000 (bvneg #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3681 (valid!87 (_2!423 lt!5945))))

(assert (=> d!3681 (= (update!18 (_2!423 lt!5945) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938)))) lt!6039)))

(declare-fun b!20515 () Bool)

(declare-fun res!13481 () Bool)

(assert (=> b!20515 (=> (not res!13481) (not e!13405))))

(assert (=> b!20515 (= res!13481 (= (select (arr!562 (_keys!3131 (_2!423 lt!5945))) (index!2332 lt!6031)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!20516 () Bool)

(assert (=> b!20516 (= e!13400 e!13399)))

(declare-fun c!2257 () Bool)

(assert (=> b!20516 (= c!2257 ((_ is MissingZero!53) lt!6040))))

(declare-fun bm!1077 () Bool)

(assert (=> bm!1077 (= call!1062 call!1071)))

(declare-fun bm!1078 () Bool)

(declare-fun +!39 (ListLongMap!537 tuple2!844) ListLongMap!537)

(assert (=> bm!1078 (= call!1082 (+!39 (ite c!2253 call!1079 call!1069) (ite c!2253 (ite c!2254 (tuple2!845 #b0000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (tuple2!845 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938))))) (tuple2!845 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938)))))))))

(declare-fun b!20517 () Bool)

(assert (=> b!20517 (= e!13408 (= (select (arr!562 (_keys!3131 (_2!423 lt!5945))) (index!2333 lt!6037)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!20518 () Bool)

(assert (=> b!20518 (= e!13391 e!13409)))

(declare-fun res!13479 () Bool)

(assert (=> b!20518 (= res!13479 call!1070)))

(assert (=> b!20518 (=> (not res!13479) (not e!13409))))

(declare-fun bm!1079 () Bool)

(assert (=> bm!1079 (= call!1073 call!1064)))

(declare-fun bm!1080 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!4 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 (_ BitVec 64) Int) Unit!421)

(assert (=> bm!1080 (= call!1074 (lemmaInListMapThenSeekEntryOrOpenFindsIt!4 (_keys!3131 (_2!423 lt!5945)) (_values!1699 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945)) (extraKeys!1613 (_2!423 lt!5945)) (zeroValue!1637 (_2!423 lt!5945)) (minValue!1637 (_2!423 lt!5945)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1707 (_2!423 lt!5945))))))

(declare-fun b!20519 () Bool)

(declare-fun e!13404 () Bool)

(assert (=> b!20519 (= e!13404 (= call!1067 (+!39 call!1063 (tuple2!845 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1637 (v!1552 (underlying!95 thiss!938)))))))))

(declare-fun bm!1081 () Bool)

(assert (=> bm!1081 (= call!1061 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3131 (_2!423 lt!5945)) (mask!4671 (_2!423 lt!5945))))))

(declare-fun b!20520 () Bool)

(assert (=> b!20520 (= e!13398 e!13404)))

(declare-fun res!13474 () Bool)

(assert (=> b!20520 (= res!13474 (contains!212 call!1067 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!20520 (=> (not res!13474) (not e!13404))))

(declare-fun b!20521 () Bool)

(declare-fun res!13478 () Bool)

(assert (=> b!20521 (= res!13478 call!1068)))

(assert (=> b!20521 (=> (not res!13478) (not e!13397))))

(declare-fun b!20522 () Bool)

(declare-fun Unit!424 () Unit!421)

(assert (=> b!20522 (= e!13393 Unit!424)))

(declare-fun lt!6021 () Unit!421)

(assert (=> b!20522 (= lt!6021 call!1072)))

(assert (=> b!20522 (= lt!6032 call!1077)))

(assert (=> b!20522 (= c!2259 ((_ is MissingZero!53) lt!6032))))

(assert (=> b!20522 e!13392))

(declare-fun lt!6042 () Unit!421)

(assert (=> b!20522 (= lt!6042 lt!6021)))

(assert (=> b!20522 false))

(declare-fun b!20523 () Bool)

(assert (=> b!20523 (= e!13409 (not call!1073))))

(declare-fun b!20524 () Bool)

(declare-fun lt!6033 () tuple2!840)

(assert (=> b!20524 (= e!13400 (tuple2!841 (_1!423 lt!6033) (_2!423 lt!6033)))))

(assert (=> b!20524 (= lt!6033 call!1066)))

(declare-fun b!20525 () Bool)

(assert (=> b!20525 (= e!13390 call!1071)))

(assert (= (and d!3681 c!2253) b!20499))

(assert (= (and d!3681 (not c!2253)) b!20505))

(assert (= (and b!20499 c!2254) b!20500))

(assert (= (and b!20499 (not c!2254)) b!20501))

(assert (= (or b!20500 b!20501) bm!1077))

(assert (= (or b!20500 b!20501) bm!1075))

(assert (= (or b!20500 b!20501) bm!1069))

(assert (= (and b!20505 c!2258) b!20488))

(assert (= (and b!20505 (not c!2258)) b!20490))

(assert (= (and b!20488 c!2251) b!20504))

(assert (= (and b!20488 (not c!2251)) b!20495))

(assert (= (and b!20504 res!13477) b!20493))

(assert (= (and b!20493 res!13469) b!20517))

(assert (= (and b!20495 c!2256) b!20513))

(assert (= (and b!20495 (not c!2256)) b!20497))

(assert (= (and b!20513 res!13473) b!20515))

(assert (= (and b!20515 res!13481) b!20502))

(assert (= (and b!20497 c!2255) b!20518))

(assert (= (and b!20497 (not c!2255)) b!20496))

(assert (= (and b!20518 res!13479) b!20509))

(assert (= (and b!20509 res!13472) b!20523))

(assert (= (or b!20513 b!20518) bm!1061))

(assert (= (or b!20502 b!20523) bm!1079))

(assert (= (or b!20493 bm!1061) bm!1062))

(assert (= (or b!20504 b!20495) bm!1074))

(assert (= (and b!20490 c!2252) b!20524))

(assert (= (and b!20490 (not c!2252)) b!20516))

(assert (= (and b!20516 c!2257) b!20506))

(assert (= (and b!20516 (not c!2257)) b!20486))

(assert (= (and b!20486 c!2250) b!20494))

(assert (= (and b!20486 (not c!2250)) b!20522))

(assert (= (and b!20494 res!13480) b!20521))

(assert (= (and b!20521 res!13478) b!20498))

(assert (= (and b!20522 c!2259) b!20492))

(assert (= (and b!20522 (not c!2259)) b!20487))

(assert (= (and b!20492 res!13470) b!20491))

(assert (= (and b!20491 res!13482) b!20503))

(assert (= (and b!20487 c!2248) b!20511))

(assert (= (and b!20487 (not c!2248)) b!20514))

(assert (= (and b!20511 res!13476) b!20507))

(assert (= (and b!20507 res!13471) b!20510))

(assert (= (or b!20492 b!20511) bm!1076))

(assert (= (or b!20503 b!20510) bm!1064))

(assert (= (or b!20521 bm!1076) bm!1066))

(assert (= (or b!20494 b!20522) bm!1072))

(assert (= (or b!20524 b!20506) bm!1060))

(assert (= (or b!20504 b!20494) bm!1080))

(assert (= (or b!20488 b!20486) bm!1071))

(assert (= (or bm!1079 bm!1064) bm!1058))

(assert (= (or bm!1062 bm!1066) bm!1070))

(assert (= (or bm!1074 bm!1072) bm!1081))

(assert (= (or b!20495 b!20522) bm!1068))

(assert (= (or b!20488 b!20486) bm!1059))

(assert (= (and bm!1059 c!2247) b!20512))

(assert (= (and bm!1059 (not c!2247)) b!20525))

(assert (= (or bm!1077 b!20525) bm!1065))

(assert (= (or bm!1075 b!20486) bm!1067))

(assert (= (or bm!1069 b!20486) bm!1078))

(assert (= (and d!3681 res!13475) b!20508))

(assert (= (and b!20508 c!2249) b!20520))

(assert (= (and b!20508 (not c!2249)) b!20489))

(assert (= (and b!20520 res!13474) b!20519))

(assert (= (or b!20520 b!20519 b!20489) bm!1063))

(assert (= (or b!20519 b!20489) bm!1073))

(declare-fun m!14285 () Bool)

(assert (=> bm!1059 m!14285))

(declare-fun m!14287 () Bool)

(assert (=> bm!1059 m!14287))

(declare-fun m!14289 () Bool)

(assert (=> b!20515 m!14289))

(declare-fun m!14291 () Bool)

(assert (=> b!20491 m!14291))

(declare-fun m!14293 () Bool)

(assert (=> d!3681 m!14293))

(declare-fun m!14295 () Bool)

(assert (=> d!3681 m!14295))

(declare-fun m!14297 () Bool)

(assert (=> bm!1081 m!14297))

(declare-fun m!14299 () Bool)

(assert (=> bm!1080 m!14299))

(declare-fun m!14301 () Bool)

(assert (=> bm!1058 m!14301))

(declare-fun m!14303 () Bool)

(assert (=> b!20498 m!14303))

(declare-fun m!14305 () Bool)

(assert (=> bm!1060 m!14305))

(declare-fun m!14307 () Bool)

(assert (=> b!20509 m!14307))

(declare-fun m!14309 () Bool)

(assert (=> b!20500 m!14309))

(declare-fun m!14311 () Bool)

(assert (=> b!20520 m!14311))

(declare-fun m!14313 () Bool)

(assert (=> bm!1071 m!14313))

(declare-fun m!14315 () Bool)

(assert (=> bm!1071 m!14315))

(declare-fun m!14317 () Bool)

(assert (=> b!20517 m!14317))

(declare-fun m!14319 () Bool)

(assert (=> bm!1073 m!14319))

(declare-fun m!14321 () Bool)

(assert (=> bm!1070 m!14321))

(declare-fun m!14323 () Bool)

(assert (=> bm!1063 m!14323))

(declare-fun m!14325 () Bool)

(assert (=> bm!1065 m!14325))

(declare-fun m!14327 () Bool)

(assert (=> b!20507 m!14327))

(declare-fun m!14329 () Bool)

(assert (=> bm!1067 m!14329))

(declare-fun m!14331 () Bool)

(assert (=> b!20501 m!14331))

(assert (=> b!20505 m!14297))

(declare-fun m!14333 () Bool)

(assert (=> b!20519 m!14333))

(declare-fun m!14335 () Bool)

(assert (=> bm!1078 m!14335))

(declare-fun m!14337 () Bool)

(assert (=> b!20486 m!14337))

(assert (=> b!20486 m!14313))

(declare-fun m!14339 () Bool)

(assert (=> b!20486 m!14339))

(declare-fun m!14341 () Bool)

(assert (=> b!20486 m!14341))

(declare-fun m!14343 () Bool)

(assert (=> bm!1068 m!14343))

(assert (=> b!20356 d!3681))

(declare-fun d!3683 () Bool)

(assert (=> d!3683 (= (validMask!0 (mask!4671 (v!1552 (underlying!95 thiss!938)))) (and (or (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000000111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000001111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000011111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000001111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000011111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000001111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000011111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000001111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000011111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000001111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000011111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000001111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000011111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000001111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000011111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000111111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000001111111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000011111111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000111111111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00001111111111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00011111111111111111111111111111) (= (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!20347 d!3683))

(declare-fun d!3685 () Bool)

(assert (=> d!3685 (= (valid!86 thiss!938) (valid!87 (v!1552 (underlying!95 thiss!938))))))

(declare-fun bs!896 () Bool)

(assert (= bs!896 d!3685))

(declare-fun m!14345 () Bool)

(assert (=> bs!896 m!14345))

(assert (=> start!3298 d!3685))

(declare-fun b!20526 () Bool)

(declare-fun lt!6070 () Unit!421)

(declare-fun lt!6074 () Unit!421)

(assert (=> b!20526 (= lt!6070 lt!6074)))

(declare-fun call!1104 () Bool)

(assert (=> b!20526 call!1104))

(declare-fun lt!6067 () SeekEntryResult!53)

(declare-fun lt!6072 () array!1179)

(assert (=> b!20526 (= lt!6074 (lemmaValidKeyInArrayIsInListMap!4 (_keys!3131 lt!5943) lt!6072 (mask!4671 lt!5943) (extraKeys!1613 lt!5943) (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) (index!2333 lt!6067) (defaultEntry!1707 lt!5943)))))

(assert (=> b!20526 (= lt!6072 (array!1180 (store (arr!561 (_values!1699 lt!5943)) (index!2333 lt!6067) (ValueCellFull!291 (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))))) (size!654 (_values!1699 lt!5943))))))

(declare-fun lt!6063 () Unit!421)

(declare-fun lt!6055 () Unit!421)

(assert (=> b!20526 (= lt!6063 lt!6055)))

(declare-fun call!1106 () ListLongMap!537)

(declare-fun call!1089 () ListLongMap!537)

(assert (=> b!20526 (= call!1106 call!1089)))

(assert (=> b!20526 (= lt!6055 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!4 (_keys!3131 lt!5943) (_values!1699 lt!5943) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) (index!2333 lt!6067) (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (defaultEntry!1707 lt!5943)))))

(declare-fun lt!6049 () Unit!421)

(declare-fun e!13414 () Unit!421)

(assert (=> b!20526 (= lt!6049 e!13414)))

(declare-fun call!1093 () ListLongMap!537)

(declare-fun c!2263 () Bool)

(assert (=> b!20526 (= c!2263 (contains!212 call!1093 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!13420 () tuple2!840)

(assert (=> b!20526 (= e!13420 (tuple2!841 true (LongMapFixedSize!169 (defaultEntry!1707 lt!5943) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) (_size!122 lt!5943) (_keys!3131 lt!5943) (array!1180 (store (arr!561 (_values!1699 lt!5943)) (index!2333 lt!6067) (ValueCellFull!291 (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))))) (size!654 (_values!1699 lt!5943))) (_vacant!122 lt!5943))))))

(declare-fun b!20527 () Bool)

(declare-fun c!2261 () Bool)

(declare-fun lt!6059 () SeekEntryResult!53)

(assert (=> b!20527 (= c!2261 ((_ is MissingVacant!53) lt!6059))))

(declare-fun e!13413 () Bool)

(declare-fun e!13415 () Bool)

(assert (=> b!20527 (= e!13413 e!13415)))

(declare-fun bm!1082 () Bool)

(declare-fun call!1088 () Bool)

(assert (=> bm!1082 (= call!1088 (arrayContainsKey!0 (_keys!3131 lt!5943) (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun b!20528 () Bool)

(declare-fun lt!6061 () Unit!421)

(declare-fun e!13422 () Unit!421)

(assert (=> b!20528 (= lt!6061 e!13422)))

(declare-fun c!2264 () Bool)

(assert (=> b!20528 (= c!2264 call!1104)))

(declare-fun e!13428 () tuple2!840)

(assert (=> b!20528 (= e!13428 (tuple2!841 false lt!5943))))

(declare-fun b!20529 () Bool)

(declare-fun e!13419 () Bool)

(declare-fun call!1091 () ListLongMap!537)

(declare-fun call!1087 () ListLongMap!537)

(assert (=> b!20529 (= e!13419 (= call!1091 call!1087))))

(declare-fun b!20530 () Bool)

(declare-fun c!2265 () Bool)

(assert (=> b!20530 (= c!2265 ((_ is MissingVacant!53) lt!6067))))

(declare-fun e!13421 () tuple2!840)

(assert (=> b!20530 (= e!13428 e!13421)))

(declare-fun b!20531 () Bool)

(declare-fun res!13496 () Bool)

(declare-fun e!13423 () Bool)

(assert (=> b!20531 (=> (not res!13496) (not e!13423))))

(assert (=> b!20531 (= res!13496 (= (select (arr!562 (_keys!3131 lt!5943)) (index!2332 lt!6059)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1083 () Bool)

(declare-fun c!2260 () Bool)

(declare-fun c!2271 () Bool)

(assert (=> bm!1083 (= c!2260 c!2271)))

(declare-fun e!13411 () ListLongMap!537)

(assert (=> bm!1083 (= call!1104 (contains!212 e!13411 (ite c!2271 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (select (arr!562 (_keys!3131 lt!5943)) (index!2333 lt!6067)))))))

(declare-fun b!20532 () Bool)

(declare-fun res!13484 () Bool)

(assert (=> b!20532 (=> (not res!13484) (not e!13423))))

(declare-fun call!1102 () Bool)

(assert (=> b!20532 (= res!13484 call!1102)))

(assert (=> b!20532 (= e!13413 e!13423)))

(declare-fun b!20533 () Bool)

(declare-fun res!13483 () Bool)

(declare-fun call!1105 () Bool)

(assert (=> b!20533 (= res!13483 call!1105)))

(declare-fun e!13429 () Bool)

(assert (=> b!20533 (=> (not res!13483) (not e!13429))))

(declare-fun call!1090 () tuple2!840)

(declare-fun bm!1084 () Bool)

(assert (=> bm!1084 (= call!1090 (updateHelperNewKey!4 lt!5943 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (ite c!2265 (index!2335 lt!6067) (index!2332 lt!6067))))))

(declare-fun bm!1085 () Bool)

(declare-fun call!1094 () Bool)

(assert (=> bm!1085 (= call!1094 call!1105)))

(declare-fun b!20534 () Bool)

(declare-fun lt!6057 () Unit!421)

(assert (=> b!20534 (= e!13414 lt!6057)))

(declare-fun call!1098 () Unit!421)

(assert (=> b!20534 (= lt!6057 call!1098)))

(declare-fun lt!6056 () SeekEntryResult!53)

(declare-fun call!1101 () SeekEntryResult!53)

(assert (=> b!20534 (= lt!6056 call!1101)))

(declare-fun res!13494 () Bool)

(assert (=> b!20534 (= res!13494 ((_ is Found!53) lt!6056))))

(declare-fun e!13418 () Bool)

(assert (=> b!20534 (=> (not res!13494) (not e!13418))))

(assert (=> b!20534 e!13418))

(declare-fun b!20535 () Bool)

(declare-fun lt!6073 () Unit!421)

(assert (=> b!20535 (= e!13422 lt!6073)))

(declare-fun call!1096 () Unit!421)

(assert (=> b!20535 (= lt!6073 call!1096)))

(declare-fun lt!6058 () SeekEntryResult!53)

(declare-fun call!1100 () SeekEntryResult!53)

(assert (=> b!20535 (= lt!6058 call!1100)))

(declare-fun c!2269 () Bool)

(assert (=> b!20535 (= c!2269 ((_ is MissingZero!53) lt!6058))))

(declare-fun e!13431 () Bool)

(assert (=> b!20535 e!13431))

(declare-fun b!20536 () Bool)

(declare-fun e!13412 () Bool)

(assert (=> b!20536 (= e!13412 ((_ is Undefined!53) lt!6058))))

(declare-fun b!20537 () Bool)

(declare-fun c!2268 () Bool)

(assert (=> b!20537 (= c!2268 ((_ is MissingVacant!53) lt!6058))))

(assert (=> b!20537 (= e!13431 e!13412)))

(declare-fun b!20538 () Bool)

(assert (=> b!20538 (= e!13418 (= (select (arr!562 (_keys!3131 lt!5943)) (index!2333 lt!6056)) (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!20539 () Bool)

(declare-fun e!13417 () tuple2!840)

(declare-fun e!13424 () tuple2!840)

(assert (=> b!20539 (= e!13417 e!13424)))

(declare-fun c!2267 () Bool)

(assert (=> b!20539 (= c!2267 (= (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1086 () Bool)

(declare-fun call!1107 () Bool)

(assert (=> bm!1086 (= call!1105 call!1107)))

(declare-fun bm!1087 () Bool)

(declare-fun lt!6066 () tuple2!840)

(assert (=> bm!1087 (= call!1091 (map!388 (_2!423 lt!6066)))))

(declare-fun bm!1088 () Bool)

(declare-fun call!1108 () Bool)

(assert (=> bm!1088 (= call!1108 call!1088)))

(declare-fun b!20540 () Bool)

(declare-fun lt!6053 () Unit!421)

(declare-fun lt!6065 () Unit!421)

(assert (=> b!20540 (= lt!6053 lt!6065)))

(declare-fun call!1099 () ListLongMap!537)

(declare-fun call!1086 () ListLongMap!537)

(assert (=> b!20540 (= call!1099 call!1086)))

(declare-fun lt!6071 () (_ BitVec 32))

(assert (=> b!20540 (= lt!6065 (lemmaChangeZeroKeyThenAddPairToListMap!4 (_keys!3131 lt!5943) (_values!1699 lt!5943) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) lt!6071 (zeroValue!1637 lt!5943) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (minValue!1637 lt!5943) (defaultEntry!1707 lt!5943)))))

(assert (=> b!20540 (= lt!6071 (bvor (extraKeys!1613 lt!5943) #b00000000000000000000000000000001))))

(assert (=> b!20540 (= e!13424 (tuple2!841 true (LongMapFixedSize!169 (defaultEntry!1707 lt!5943) (mask!4671 lt!5943) (bvor (extraKeys!1613 lt!5943) #b00000000000000000000000000000001) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (minValue!1637 lt!5943) (_size!122 lt!5943) (_keys!3131 lt!5943) (_values!1699 lt!5943) (_vacant!122 lt!5943))))))

(declare-fun b!20541 () Bool)

(declare-fun lt!6052 () Unit!421)

(declare-fun lt!6062 () Unit!421)

(assert (=> b!20541 (= lt!6052 lt!6062)))

(assert (=> b!20541 (= call!1099 call!1086)))

(declare-fun lt!6054 () (_ BitVec 32))

(assert (=> b!20541 (= lt!6062 (lemmaChangeLongMinValueKeyThenAddPairToListMap!4 (_keys!3131 lt!5943) (_values!1699 lt!5943) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) lt!6054 (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (defaultEntry!1707 lt!5943)))))

(assert (=> b!20541 (= lt!6054 (bvor (extraKeys!1613 lt!5943) #b00000000000000000000000000000010))))

(assert (=> b!20541 (= e!13424 (tuple2!841 true (LongMapFixedSize!169 (defaultEntry!1707 lt!5943) (mask!4671 lt!5943) (bvor (extraKeys!1613 lt!5943) #b00000000000000000000000000000010) (zeroValue!1637 lt!5943) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (_size!122 lt!5943) (_keys!3131 lt!5943) (_values!1699 lt!5943) (_vacant!122 lt!5943))))))

(declare-fun call!1095 () ListLongMap!537)

(declare-fun c!2266 () Bool)

(declare-fun bm!1089 () Bool)

(assert (=> bm!1089 (= call!1095 (getCurrentListMap!113 (_keys!3131 lt!5943) (ite c!2266 (_values!1699 lt!5943) lt!6072) (mask!4671 lt!5943) (ite c!2266 (ite c!2267 lt!6071 lt!6054) (extraKeys!1613 lt!5943)) (ite (and c!2266 c!2267) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))) (zeroValue!1637 lt!5943)) (ite c!2266 (ite c!2267 (minValue!1637 lt!5943) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938))))) (minValue!1637 lt!5943)) #b00000000000000000000000000000000 (defaultEntry!1707 lt!5943)))))

(declare-fun b!20542 () Bool)

(declare-fun e!13426 () Bool)

(declare-fun call!1097 () Bool)

(assert (=> b!20542 (= e!13426 (not call!1097))))

(declare-fun bm!1090 () Bool)

(declare-fun call!1092 () Bool)

(assert (=> bm!1090 (= call!1092 call!1107)))

(declare-fun bm!1091 () Bool)

(assert (=> bm!1091 (= call!1093 (getCurrentListMap!113 (_keys!3131 lt!5943) (_values!1699 lt!5943) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) #b00000000000000000000000000000000 (defaultEntry!1707 lt!5943)))))

(declare-fun b!20543 () Bool)

(assert (=> b!20543 (= e!13423 (not call!1108))))

(declare-fun b!20544 () Bool)

(declare-fun Unit!425 () Unit!421)

(assert (=> b!20544 (= e!13422 Unit!425)))

(declare-fun lt!6050 () Unit!421)

(assert (=> b!20544 (= lt!6050 call!1098)))

(declare-fun lt!6064 () SeekEntryResult!53)

(assert (=> b!20544 (= lt!6064 call!1100)))

(declare-fun res!13491 () Bool)

(assert (=> b!20544 (= res!13491 ((_ is Found!53) lt!6064))))

(assert (=> b!20544 (=> (not res!13491) (not e!13429))))

(assert (=> b!20544 e!13429))

(declare-fun lt!6051 () Unit!421)

(assert (=> b!20544 (= lt!6051 lt!6050)))

(assert (=> b!20544 false))

(declare-fun b!20545 () Bool)

(assert (=> b!20545 (= e!13417 e!13428)))

(assert (=> b!20545 (= lt!6067 (seekEntryOrOpen!0 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3131 lt!5943) (mask!4671 lt!5943)))))

(assert (=> b!20545 (= c!2271 ((_ is Undefined!53) lt!6067))))

(declare-fun bm!1092 () Bool)

(assert (=> bm!1092 (= call!1096 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!4 (_keys!3131 lt!5943) (_values!1699 lt!5943) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1707 lt!5943)))))

(declare-fun bm!1093 () Bool)

(assert (=> bm!1093 (= call!1099 call!1106)))

(declare-fun b!20546 () Bool)

(declare-fun lt!6068 () tuple2!840)

(assert (=> b!20546 (= lt!6068 call!1090)))

(assert (=> b!20546 (= e!13420 (tuple2!841 (_1!423 lt!6068) (_2!423 lt!6068)))))

(declare-fun c!2272 () Bool)

(declare-fun bm!1094 () Bool)

(assert (=> bm!1094 (= call!1107 (inRange!0 (ite c!2271 (ite c!2264 (index!2333 lt!6064) (ite c!2269 (index!2332 lt!6058) (index!2335 lt!6058))) (ite c!2263 (index!2333 lt!6056) (ite c!2272 (index!2332 lt!6059) (index!2335 lt!6059)))) (mask!4671 lt!5943)))))

(declare-fun b!20547 () Bool)

(declare-fun res!13485 () Bool)

(assert (=> b!20547 (= res!13485 (= (select (arr!562 (_keys!3131 lt!5943)) (index!2335 lt!6059)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!13416 () Bool)

(assert (=> b!20547 (=> (not res!13485) (not e!13416))))

(declare-fun bm!1095 () Bool)

(assert (=> bm!1095 (= call!1089 (getCurrentListMap!113 (_keys!3131 lt!5943) (ite c!2271 (_values!1699 lt!5943) (array!1180 (store (arr!561 (_values!1699 lt!5943)) (index!2333 lt!6067) (ValueCellFull!291 (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))))) (size!654 (_values!1699 lt!5943)))) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) #b00000000000000000000000000000000 (defaultEntry!1707 lt!5943)))))

(declare-fun b!20548 () Bool)

(declare-fun e!13427 () Bool)

(assert (=> b!20548 (= e!13427 e!13419)))

(declare-fun c!2262 () Bool)

(assert (=> b!20548 (= c!2262 (_1!423 lt!6066))))

(declare-fun bm!1096 () Bool)

(declare-fun call!1085 () SeekEntryResult!53)

(assert (=> bm!1096 (= call!1101 call!1085)))

(declare-fun b!20549 () Bool)

(declare-fun res!13486 () Bool)

(assert (=> b!20549 (= res!13486 (= (select (arr!562 (_keys!3131 lt!5943)) (index!2335 lt!6058)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!13430 () Bool)

(assert (=> b!20549 (=> (not res!13486) (not e!13430))))

(declare-fun b!20550 () Bool)

(assert (=> b!20550 (= e!13416 (not call!1108))))

(declare-fun bm!1097 () Bool)

(assert (=> bm!1097 (= call!1087 (map!388 lt!5943))))

(declare-fun bm!1098 () Bool)

(assert (=> bm!1098 (= call!1100 call!1085)))

(declare-fun bm!1099 () Bool)

(declare-fun call!1103 () ListLongMap!537)

(assert (=> bm!1099 (= call!1103 call!1093)))

(declare-fun b!20551 () Bool)

(assert (=> b!20551 (= e!13415 e!13416)))

(declare-fun res!13490 () Bool)

(assert (=> b!20551 (= res!13490 call!1102)))

(assert (=> b!20551 (=> (not res!13490) (not e!13416))))

(declare-fun b!20552 () Bool)

(assert (=> b!20552 (= e!13411 call!1089)))

(declare-fun bm!1100 () Bool)

(assert (=> bm!1100 (= call!1102 call!1092)))

(declare-fun b!20553 () Bool)

(declare-fun res!13487 () Bool)

(assert (=> b!20553 (=> (not res!13487) (not e!13426))))

(assert (=> b!20553 (= res!13487 call!1094)))

(assert (=> b!20553 (= e!13431 e!13426)))

(declare-fun b!20554 () Bool)

(assert (=> b!20554 (= e!13415 ((_ is Undefined!53) lt!6059))))

(declare-fun d!3687 () Bool)

(assert (=> d!3687 e!13427))

(declare-fun res!13489 () Bool)

(assert (=> d!3687 (=> (not res!13489) (not e!13427))))

(assert (=> d!3687 (= res!13489 (valid!87 (_2!423 lt!6066)))))

(assert (=> d!3687 (= lt!6066 e!13417)))

(assert (=> d!3687 (= c!2266 (= (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (bvneg (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3687 (valid!87 lt!5943)))

(assert (=> d!3687 (= (update!18 lt!5943 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938))))) lt!6066)))

(declare-fun b!20555 () Bool)

(declare-fun res!13495 () Bool)

(assert (=> b!20555 (=> (not res!13495) (not e!13426))))

(assert (=> b!20555 (= res!13495 (= (select (arr!562 (_keys!3131 lt!5943)) (index!2332 lt!6058)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!20556 () Bool)

(assert (=> b!20556 (= e!13421 e!13420)))

(declare-fun c!2270 () Bool)

(assert (=> b!20556 (= c!2270 ((_ is MissingZero!53) lt!6067))))

(declare-fun bm!1101 () Bool)

(assert (=> bm!1101 (= call!1086 call!1095)))

(declare-fun bm!1102 () Bool)

(assert (=> bm!1102 (= call!1106 (+!39 (ite c!2266 call!1103 call!1093) (ite c!2266 (ite c!2267 (tuple2!845 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938))))) (tuple2!845 #b1000000000000000000000000000000000000000000000000000000000000000 (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938)))))) (tuple2!845 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938))))))))))

(declare-fun b!20557 () Bool)

(assert (=> b!20557 (= e!13429 (= (select (arr!562 (_keys!3131 lt!5943)) (index!2333 lt!6064)) (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!20558 () Bool)

(assert (=> b!20558 (= e!13412 e!13430)))

(declare-fun res!13493 () Bool)

(assert (=> b!20558 (= res!13493 call!1094)))

(assert (=> b!20558 (=> (not res!13493) (not e!13430))))

(declare-fun bm!1103 () Bool)

(assert (=> bm!1103 (= call!1097 call!1088)))

(declare-fun bm!1104 () Bool)

(assert (=> bm!1104 (= call!1098 (lemmaInListMapThenSeekEntryOrOpenFindsIt!4 (_keys!3131 lt!5943) (_values!1699 lt!5943) (mask!4671 lt!5943) (extraKeys!1613 lt!5943) (zeroValue!1637 lt!5943) (minValue!1637 lt!5943) (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1707 lt!5943)))))

(declare-fun e!13425 () Bool)

(declare-fun b!20559 () Bool)

(assert (=> b!20559 (= e!13425 (= call!1091 (+!39 call!1087 (tuple2!845 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2209 c!2211) (zeroValue!1637 (v!1552 (underlying!95 thiss!938))) (minValue!1637 (v!1552 (underlying!95 thiss!938))))))))))

(declare-fun bm!1105 () Bool)

(assert (=> bm!1105 (= call!1085 (seekEntryOrOpen!0 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3131 lt!5943) (mask!4671 lt!5943)))))

(declare-fun b!20560 () Bool)

(assert (=> b!20560 (= e!13419 e!13425)))

(declare-fun res!13488 () Bool)

(assert (=> b!20560 (= res!13488 (contains!212 call!1091 (ite (or c!2209 c!2211) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!20560 (=> (not res!13488) (not e!13425))))

(declare-fun b!20561 () Bool)

(declare-fun res!13492 () Bool)

(assert (=> b!20561 (= res!13492 call!1092)))

(assert (=> b!20561 (=> (not res!13492) (not e!13418))))

(declare-fun b!20562 () Bool)

(declare-fun Unit!426 () Unit!421)

(assert (=> b!20562 (= e!13414 Unit!426)))

(declare-fun lt!6048 () Unit!421)

(assert (=> b!20562 (= lt!6048 call!1096)))

(assert (=> b!20562 (= lt!6059 call!1101)))

(assert (=> b!20562 (= c!2272 ((_ is MissingZero!53) lt!6059))))

(assert (=> b!20562 e!13413))

(declare-fun lt!6069 () Unit!421)

(assert (=> b!20562 (= lt!6069 lt!6048)))

(assert (=> b!20562 false))

(declare-fun b!20563 () Bool)

(assert (=> b!20563 (= e!13430 (not call!1097))))

(declare-fun b!20564 () Bool)

(declare-fun lt!6060 () tuple2!840)

(assert (=> b!20564 (= e!13421 (tuple2!841 (_1!423 lt!6060) (_2!423 lt!6060)))))

(assert (=> b!20564 (= lt!6060 call!1090)))

(declare-fun b!20565 () Bool)

(assert (=> b!20565 (= e!13411 call!1095)))

(assert (= (and d!3687 c!2266) b!20539))

(assert (= (and d!3687 (not c!2266)) b!20545))

(assert (= (and b!20539 c!2267) b!20540))

(assert (= (and b!20539 (not c!2267)) b!20541))

(assert (= (or b!20540 b!20541) bm!1101))

(assert (= (or b!20540 b!20541) bm!1099))

(assert (= (or b!20540 b!20541) bm!1093))

(assert (= (and b!20545 c!2271) b!20528))

(assert (= (and b!20545 (not c!2271)) b!20530))

(assert (= (and b!20528 c!2264) b!20544))

(assert (= (and b!20528 (not c!2264)) b!20535))

(assert (= (and b!20544 res!13491) b!20533))

(assert (= (and b!20533 res!13483) b!20557))

(assert (= (and b!20535 c!2269) b!20553))

(assert (= (and b!20535 (not c!2269)) b!20537))

(assert (= (and b!20553 res!13487) b!20555))

(assert (= (and b!20555 res!13495) b!20542))

(assert (= (and b!20537 c!2268) b!20558))

(assert (= (and b!20537 (not c!2268)) b!20536))

(assert (= (and b!20558 res!13493) b!20549))

(assert (= (and b!20549 res!13486) b!20563))

(assert (= (or b!20553 b!20558) bm!1085))

(assert (= (or b!20542 b!20563) bm!1103))

(assert (= (or b!20533 bm!1085) bm!1086))

(assert (= (or b!20544 b!20535) bm!1098))

(assert (= (and b!20530 c!2265) b!20564))

(assert (= (and b!20530 (not c!2265)) b!20556))

(assert (= (and b!20556 c!2270) b!20546))

(assert (= (and b!20556 (not c!2270)) b!20526))

(assert (= (and b!20526 c!2263) b!20534))

(assert (= (and b!20526 (not c!2263)) b!20562))

(assert (= (and b!20534 res!13494) b!20561))

(assert (= (and b!20561 res!13492) b!20538))

(assert (= (and b!20562 c!2272) b!20532))

(assert (= (and b!20562 (not c!2272)) b!20527))

(assert (= (and b!20532 res!13484) b!20531))

(assert (= (and b!20531 res!13496) b!20543))

(assert (= (and b!20527 c!2261) b!20551))

(assert (= (and b!20527 (not c!2261)) b!20554))

(assert (= (and b!20551 res!13490) b!20547))

(assert (= (and b!20547 res!13485) b!20550))

(assert (= (or b!20532 b!20551) bm!1100))

(assert (= (or b!20543 b!20550) bm!1088))

(assert (= (or b!20561 bm!1100) bm!1090))

(assert (= (or b!20534 b!20562) bm!1096))

(assert (= (or b!20564 b!20546) bm!1084))

(assert (= (or b!20544 b!20534) bm!1104))

(assert (= (or b!20528 b!20526) bm!1095))

(assert (= (or bm!1103 bm!1088) bm!1082))

(assert (= (or bm!1086 bm!1090) bm!1094))

(assert (= (or bm!1098 bm!1096) bm!1105))

(assert (= (or b!20535 b!20562) bm!1092))

(assert (= (or b!20528 b!20526) bm!1083))

(assert (= (and bm!1083 c!2260) b!20552))

(assert (= (and bm!1083 (not c!2260)) b!20565))

(assert (= (or bm!1101 b!20565) bm!1089))

(assert (= (or bm!1099 b!20526) bm!1091))

(assert (= (or bm!1093 b!20526) bm!1102))

(assert (= (and d!3687 res!13489) b!20548))

(assert (= (and b!20548 c!2262) b!20560))

(assert (= (and b!20548 (not c!2262)) b!20529))

(assert (= (and b!20560 res!13488) b!20559))

(assert (= (or b!20560 b!20559 b!20529) bm!1087))

(assert (= (or b!20559 b!20529) bm!1097))

(declare-fun m!14347 () Bool)

(assert (=> bm!1083 m!14347))

(declare-fun m!14349 () Bool)

(assert (=> bm!1083 m!14349))

(declare-fun m!14351 () Bool)

(assert (=> b!20555 m!14351))

(declare-fun m!14353 () Bool)

(assert (=> b!20531 m!14353))

(declare-fun m!14355 () Bool)

(assert (=> d!3687 m!14355))

(declare-fun m!14357 () Bool)

(assert (=> d!3687 m!14357))

(declare-fun m!14359 () Bool)

(assert (=> bm!1105 m!14359))

(declare-fun m!14361 () Bool)

(assert (=> bm!1104 m!14361))

(declare-fun m!14363 () Bool)

(assert (=> bm!1082 m!14363))

(declare-fun m!14365 () Bool)

(assert (=> b!20538 m!14365))

(declare-fun m!14367 () Bool)

(assert (=> bm!1084 m!14367))

(declare-fun m!14369 () Bool)

(assert (=> b!20549 m!14369))

(declare-fun m!14371 () Bool)

(assert (=> b!20540 m!14371))

(declare-fun m!14373 () Bool)

(assert (=> b!20560 m!14373))

(declare-fun m!14375 () Bool)

(assert (=> bm!1095 m!14375))

(declare-fun m!14377 () Bool)

(assert (=> bm!1095 m!14377))

(declare-fun m!14379 () Bool)

(assert (=> b!20557 m!14379))

(declare-fun m!14381 () Bool)

(assert (=> bm!1097 m!14381))

(declare-fun m!14383 () Bool)

(assert (=> bm!1094 m!14383))

(declare-fun m!14385 () Bool)

(assert (=> bm!1087 m!14385))

(declare-fun m!14387 () Bool)

(assert (=> bm!1089 m!14387))

(declare-fun m!14389 () Bool)

(assert (=> b!20547 m!14389))

(declare-fun m!14391 () Bool)

(assert (=> bm!1091 m!14391))

(declare-fun m!14393 () Bool)

(assert (=> b!20541 m!14393))

(assert (=> b!20545 m!14359))

(declare-fun m!14395 () Bool)

(assert (=> b!20559 m!14395))

(declare-fun m!14397 () Bool)

(assert (=> bm!1102 m!14397))

(declare-fun m!14399 () Bool)

(assert (=> b!20526 m!14399))

(assert (=> b!20526 m!14375))

(declare-fun m!14401 () Bool)

(assert (=> b!20526 m!14401))

(declare-fun m!14403 () Bool)

(assert (=> b!20526 m!14403))

(declare-fun m!14405 () Bool)

(assert (=> bm!1092 m!14405))

(assert (=> bm!1002 d!3687))

(declare-fun d!3689 () Bool)

(assert (=> d!3689 (= (array_inv!397 (_keys!3131 (v!1552 (underlying!95 thiss!938)))) (bvsge (size!655 (_keys!3131 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!20348 d!3689))

(declare-fun d!3691 () Bool)

(assert (=> d!3691 (= (array_inv!398 (_values!1699 (v!1552 (underlying!95 thiss!938)))) (bvsge (size!654 (_values!1699 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!20348 d!3691))

(declare-fun d!3693 () Bool)

(declare-fun e!13438 () Bool)

(assert (=> d!3693 e!13438))

(declare-fun res!13501 () Bool)

(assert (=> d!3693 (=> (not res!13501) (not e!13438))))

(declare-fun lt!6127 () LongMapFixedSize!168)

(assert (=> d!3693 (= res!13501 (valid!87 lt!6127))))

(declare-fun lt!6134 () LongMapFixedSize!168)

(assert (=> d!3693 (= lt!6127 lt!6134)))

(declare-fun lt!6133 () Unit!421)

(declare-fun e!13440 () Unit!421)

(assert (=> d!3693 (= lt!6133 e!13440)))

(declare-fun c!2278 () Bool)

(assert (=> d!3693 (= c!2278 (not (= (map!388 lt!6134) (ListLongMap!538 Nil!548))))))

(declare-fun lt!6132 () Unit!421)

(declare-fun lt!6128 () Unit!421)

(assert (=> d!3693 (= lt!6132 lt!6128)))

(declare-fun lt!6130 () array!1181)

(declare-fun lt!6135 () (_ BitVec 32))

(declare-datatypes ((List!552 0))(
  ( (Nil!549) (Cons!548 (h!1114 (_ BitVec 64)) (t!3207 List!552)) )
))
(declare-fun lt!6143 () List!552)

(declare-fun arrayNoDuplicates!0 (array!1181 (_ BitVec 32) List!552) Bool)

(assert (=> d!3693 (arrayNoDuplicates!0 lt!6130 lt!6135 lt!6143)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1181 (_ BitVec 32) (_ BitVec 32) List!552) Unit!421)

(assert (=> d!3693 (= lt!6128 (lemmaArrayNoDuplicatesInAll0Array!0 lt!6130 lt!6135 (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001) lt!6143))))

(assert (=> d!3693 (= lt!6143 Nil!549)))

(assert (=> d!3693 (= lt!6135 #b00000000000000000000000000000000)))

(assert (=> d!3693 (= lt!6130 (array!1182 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6123 () Unit!421)

(declare-fun lt!6142 () Unit!421)

(assert (=> d!3693 (= lt!6123 lt!6142)))

(declare-fun lt!6138 () (_ BitVec 32))

(declare-fun lt!6125 () array!1181)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1181 (_ BitVec 32)) Bool)

(assert (=> d!3693 (arrayForallSeekEntryOrOpenFound!0 lt!6138 lt!6125 (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1181 (_ BitVec 32) (_ BitVec 32)) Unit!421)

(assert (=> d!3693 (= lt!6142 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!6125 (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) lt!6138))))

(assert (=> d!3693 (= lt!6138 #b00000000000000000000000000000000)))

(assert (=> d!3693 (= lt!6125 (array!1182 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6139 () Unit!421)

(declare-fun lt!6121 () Unit!421)

(assert (=> d!3693 (= lt!6139 lt!6121)))

(declare-fun lt!6124 () array!1181)

(declare-fun lt!6137 () (_ BitVec 32))

(declare-fun lt!6122 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1181 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3693 (= (arrayCountValidKeys!0 lt!6124 lt!6137 lt!6122) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1181 (_ BitVec 32) (_ BitVec 32)) Unit!421)

(assert (=> d!3693 (= lt!6121 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!6124 lt!6137 lt!6122))))

(assert (=> d!3693 (= lt!6122 (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3693 (= lt!6137 #b00000000000000000000000000000000)))

(assert (=> d!3693 (= lt!6124 (array!1182 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun dynLambda!138 (Int (_ BitVec 64)) V!1133)

(assert (=> d!3693 (= lt!6134 (LongMapFixedSize!169 (defaultEntry!1707 (v!1552 (underlying!95 thiss!938))) (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!138 (defaultEntry!1707 (v!1552 (underlying!95 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!138 (defaultEntry!1707 (v!1552 (underlying!95 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1182 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)) (array!1180 ((as const (Array (_ BitVec 32) ValueCell!291)) EmptyCell!291) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!3693 (validMask!0 (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))))))

(assert (=> d!3693 (= (getNewLongMapFixedSize!20 (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) (defaultEntry!1707 (v!1552 (underlying!95 thiss!938)))) lt!6127)))

(declare-fun b!20578 () Bool)

(declare-fun e!13439 () Bool)

(declare-fun lt!6140 () array!1181)

(declare-fun lt!6131 () tuple2!844)

(assert (=> b!20578 (= e!13439 (arrayContainsKey!0 lt!6140 (_1!425 lt!6131) #b00000000000000000000000000000000))))

(declare-fun b!20579 () Bool)

(declare-fun Unit!427 () Unit!421)

(assert (=> b!20579 (= e!13440 Unit!427)))

(declare-fun head!824 (List!551) tuple2!844)

(assert (=> b!20579 (= lt!6131 (head!824 (toList!284 (map!388 lt!6134))))))

(assert (=> b!20579 (= lt!6140 (array!1182 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6136 () (_ BitVec 32))

(assert (=> b!20579 (= lt!6136 #b00000000000000000000000000000000)))

(declare-fun lt!6126 () Unit!421)

(declare-fun lemmaKeyInListMapIsInArray!87 (array!1181 array!1179 (_ BitVec 32) (_ BitVec 32) V!1133 V!1133 (_ BitVec 64) Int) Unit!421)

(assert (=> b!20579 (= lt!6126 (lemmaKeyInListMapIsInArray!87 lt!6140 (array!1180 ((as const (Array (_ BitVec 32) ValueCell!291)) EmptyCell!291) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) lt!6136 (dynLambda!138 (defaultEntry!1707 (v!1552 (underlying!95 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!138 (defaultEntry!1707 (v!1552 (underlying!95 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!425 lt!6131) (defaultEntry!1707 (v!1552 (underlying!95 thiss!938)))))))

(declare-fun c!2277 () Bool)

(assert (=> b!20579 (= c!2277 (and (not (= (_1!425 lt!6131) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!425 lt!6131) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!20579 e!13439))

(declare-fun lt!6129 () Unit!421)

(assert (=> b!20579 (= lt!6129 lt!6126)))

(declare-fun lt!6141 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1181 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20579 (= lt!6141 (arrayScanForKey!0 (array!1182 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) #b00000000000000000000000000000001)) (_1!425 lt!6131) #b00000000000000000000000000000000))))

(assert (=> b!20579 false))

(declare-fun b!20580 () Bool)

(assert (=> b!20580 (= e!13438 (= (map!388 lt!6127) (ListLongMap!538 Nil!548)))))

(declare-fun b!20581 () Bool)

(declare-fun res!13502 () Bool)

(assert (=> b!20581 (=> (not res!13502) (not e!13438))))

(assert (=> b!20581 (= res!13502 (= (mask!4671 lt!6127) (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938))))))))

(declare-fun b!20582 () Bool)

(declare-fun Unit!428 () Unit!421)

(assert (=> b!20582 (= e!13440 Unit!428)))

(declare-fun b!20583 () Bool)

(assert (=> b!20583 (= e!13439 (ite (= (_1!425 lt!6131) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!6136 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!6136 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!3693 c!2278) b!20579))

(assert (= (and d!3693 (not c!2278)) b!20582))

(assert (= (and b!20579 c!2277) b!20578))

(assert (= (and b!20579 (not c!2277)) b!20583))

(assert (= (and d!3693 res!13501) b!20581))

(assert (= (and b!20581 res!13502) b!20580))

(declare-fun b_lambda!1501 () Bool)

(assert (=> (not b_lambda!1501) (not d!3693)))

(declare-fun t!3205 () Bool)

(declare-fun tb!641 () Bool)

(assert (=> (and b!20348 (= (defaultEntry!1707 (v!1552 (underlying!95 thiss!938))) (defaultEntry!1707 (v!1552 (underlying!95 thiss!938)))) t!3205) tb!641))

(declare-fun result!1053 () Bool)

(assert (=> tb!641 (= result!1053 tp_is_empty!981)))

(assert (=> d!3693 t!3205))

(declare-fun b_and!1399 () Bool)

(assert (= b_and!1395 (and (=> t!3205 result!1053) b_and!1399)))

(declare-fun b_lambda!1503 () Bool)

(assert (=> (not b_lambda!1503) (not b!20579)))

(assert (=> b!20579 t!3205))

(declare-fun b_and!1401 () Bool)

(assert (= b_and!1399 (and (=> t!3205 result!1053) b_and!1401)))

(assert (=> d!3693 m!14251))

(declare-fun m!14407 () Bool)

(assert (=> d!3693 m!14407))

(declare-fun m!14409 () Bool)

(assert (=> d!3693 m!14409))

(declare-fun m!14411 () Bool)

(assert (=> d!3693 m!14411))

(declare-fun m!14413 () Bool)

(assert (=> d!3693 m!14413))

(assert (=> d!3693 m!14251))

(declare-fun m!14415 () Bool)

(assert (=> d!3693 m!14415))

(declare-fun m!14417 () Bool)

(assert (=> d!3693 m!14417))

(declare-fun m!14419 () Bool)

(assert (=> d!3693 m!14419))

(declare-fun m!14421 () Bool)

(assert (=> d!3693 m!14421))

(assert (=> d!3693 m!14251))

(declare-fun m!14423 () Bool)

(assert (=> d!3693 m!14423))

(declare-fun m!14425 () Bool)

(assert (=> d!3693 m!14425))

(declare-fun m!14427 () Bool)

(assert (=> b!20578 m!14427))

(declare-fun m!14429 () Bool)

(assert (=> b!20579 m!14429))

(assert (=> b!20579 m!14417))

(assert (=> b!20579 m!14419))

(assert (=> b!20579 m!14251))

(assert (=> b!20579 m!14417))

(assert (=> b!20579 m!14417))

(declare-fun m!14431 () Bool)

(assert (=> b!20579 m!14431))

(declare-fun m!14433 () Bool)

(assert (=> b!20579 m!14433))

(declare-fun m!14435 () Bool)

(assert (=> b!20580 m!14435))

(assert (=> b!20355 d!3693))

(declare-fun d!3695 () Bool)

(declare-fun e!13445 () Bool)

(assert (=> d!3695 e!13445))

(declare-fun res!13505 () Bool)

(assert (=> d!3695 (=> (not res!13505) (not e!13445))))

(declare-fun lt!6149 () (_ BitVec 32))

(assert (=> d!3695 (= res!13505 (validMask!0 lt!6149))))

(declare-datatypes ((tuple2!846 0))(
  ( (tuple2!847 (_1!426 Unit!421) (_2!426 (_ BitVec 32))) )
))
(declare-fun e!13446 () tuple2!846)

(assert (=> d!3695 (= lt!6149 (_2!426 e!13446))))

(declare-fun c!2281 () Bool)

(declare-fun lt!6148 () tuple2!846)

(assert (=> d!3695 (= c!2281 (and (bvsgt (_2!426 lt!6148) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!122 (v!1552 (underlying!95 thiss!938)))) (_2!426 lt!6148)) (bvsge (bvadd (bvand (bvashr (_2!426 lt!6148) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!122 (v!1552 (underlying!95 thiss!938))))))))

(declare-fun Unit!429 () Unit!421)

(declare-fun Unit!430 () Unit!421)

(assert (=> d!3695 (= lt!6148 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!122 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))))) (mask!4671 (v!1552 (underlying!95 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!122 (v!1552 (underlying!95 thiss!938)))) (mask!4671 (v!1552 (underlying!95 thiss!938))))) (tuple2!847 Unit!429 (bvand (bvadd (bvshl (mask!4671 (v!1552 (underlying!95 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!847 Unit!430 (mask!4671 (v!1552 (underlying!95 thiss!938))))))))

(assert (=> d!3695 (validMask!0 (mask!4671 (v!1552 (underlying!95 thiss!938))))))

(assert (=> d!3695 (= (computeNewMask!17 thiss!938 (mask!4671 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (_size!122 (v!1552 (underlying!95 thiss!938)))) lt!6149)))

(declare-fun b!20592 () Bool)

(declare-fun computeNewMaskWhile!8 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!846)

(assert (=> b!20592 (= e!13446 (computeNewMaskWhile!8 (_size!122 (v!1552 (underlying!95 thiss!938))) (_vacant!122 (v!1552 (underlying!95 thiss!938))) (mask!4671 (v!1552 (underlying!95 thiss!938))) (_2!426 lt!6148)))))

(declare-fun b!20593 () Bool)

(declare-fun Unit!431 () Unit!421)

(assert (=> b!20593 (= e!13446 (tuple2!847 Unit!431 (_2!426 lt!6148)))))

(declare-fun b!20594 () Bool)

(assert (=> b!20594 (= e!13445 (bvsle (_size!122 (v!1552 (underlying!95 thiss!938))) (bvadd lt!6149 #b00000000000000000000000000000001)))))

(assert (= (and d!3695 c!2281) b!20592))

(assert (= (and d!3695 (not c!2281)) b!20593))

(assert (= (and d!3695 res!13505) b!20594))

(declare-fun m!14437 () Bool)

(assert (=> d!3695 m!14437))

(assert (=> d!3695 m!14261))

(declare-fun m!14439 () Bool)

(assert (=> b!20592 m!14439))

(assert (=> b!20355 d!3695))

(declare-fun b!20602 () Bool)

(declare-fun e!13452 () Bool)

(assert (=> b!20602 (= e!13452 tp_is_empty!981)))

(declare-fun condMapEmpty!949 () Bool)

(declare-fun mapDefault!949 () ValueCell!291)

(assert (=> mapNonEmpty!943 (= condMapEmpty!949 (= mapRest!943 ((as const (Array (_ BitVec 32) ValueCell!291)) mapDefault!949)))))

(declare-fun mapRes!949 () Bool)

(assert (=> mapNonEmpty!943 (= tp!3378 (and e!13452 mapRes!949))))

(declare-fun b!20601 () Bool)

(declare-fun e!13451 () Bool)

(assert (=> b!20601 (= e!13451 tp_is_empty!981)))

(declare-fun mapNonEmpty!949 () Bool)

(declare-fun tp!3388 () Bool)

(assert (=> mapNonEmpty!949 (= mapRes!949 (and tp!3388 e!13451))))

(declare-fun mapRest!949 () (Array (_ BitVec 32) ValueCell!291))

(declare-fun mapValue!949 () ValueCell!291)

(declare-fun mapKey!949 () (_ BitVec 32))

(assert (=> mapNonEmpty!949 (= mapRest!943 (store mapRest!949 mapKey!949 mapValue!949))))

(declare-fun mapIsEmpty!949 () Bool)

(assert (=> mapIsEmpty!949 mapRes!949))

(assert (= (and mapNonEmpty!943 condMapEmpty!949) mapIsEmpty!949))

(assert (= (and mapNonEmpty!943 (not condMapEmpty!949)) mapNonEmpty!949))

(assert (= (and mapNonEmpty!949 ((_ is ValueCellFull!291) mapValue!949)) b!20601))

(assert (= (and mapNonEmpty!943 ((_ is ValueCellFull!291) mapDefault!949)) b!20602))

(declare-fun m!14441 () Bool)

(assert (=> mapNonEmpty!949 m!14441))

(declare-fun b_lambda!1505 () Bool)

(assert (= b_lambda!1503 (or (and b!20348 b_free!717) b_lambda!1505)))

(declare-fun b_lambda!1507 () Bool)

(assert (= b_lambda!1501 (or (and b!20348 b_free!717) b_lambda!1507)))

(check-sat (not b!20580) (not b!20592) (not bm!1078) (not d!3687) (not bm!1071) (not b_next!717) (not b_lambda!1505) (not bm!1084) (not bm!1060) (not bm!1070) (not bm!1068) (not b!20540) (not bm!1083) (not d!3681) (not mapNonEmpty!949) (not bm!1065) (not b!20579) (not bm!1067) (not b!20545) (not b!20486) (not bm!1104) (not bm!1059) (not bm!1058) (not bm!1092) (not b!20578) (not b_lambda!1507) (not bm!1095) tp_is_empty!981 (not bm!1094) (not bm!1089) (not b!20526) (not b!20501) (not bm!1087) (not b!20520) (not bm!1105) (not b!20519) (not b!20560) (not bm!1102) (not bm!1097) (not b!20541) (not d!3695) (not d!3685) (not bm!1080) (not b!20505) (not b!20559) (not b!20500) (not bm!1081) b_and!1401 (not bm!1082) (not bm!1073) (not bm!1063) (not d!3693) (not bm!1091))
(check-sat b_and!1401 (not b_next!717))
