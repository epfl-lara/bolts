; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18134 () Bool)

(assert start!18134)

(declare-fun b!180404 () Bool)

(declare-fun b_free!4461 () Bool)

(declare-fun b_next!4461 () Bool)

(assert (=> b!180404 (= b_free!4461 (not b_next!4461))))

(declare-fun tp!16120 () Bool)

(declare-fun b_and!11013 () Bool)

(assert (=> b!180404 (= tp!16120 b_and!11013)))

(declare-fun res!85467 () Bool)

(declare-fun e!118854 () Bool)

(assert (=> start!18134 (=> (not res!85467) (not e!118854))))

(declare-datatypes ((V!5291 0))(
  ( (V!5292 (val!2161 Int)) )
))
(declare-datatypes ((ValueCell!1773 0))(
  ( (ValueCellFull!1773 (v!4050 V!5291)) (EmptyCell!1773) )
))
(declare-datatypes ((array!7638 0))(
  ( (array!7639 (arr!3616 (Array (_ BitVec 32) (_ BitVec 64))) (size!3924 (_ BitVec 32))) )
))
(declare-datatypes ((array!7640 0))(
  ( (array!7641 (arr!3617 (Array (_ BitVec 32) ValueCell!1773)) (size!3925 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2454 0))(
  ( (LongMapFixedSize!2455 (defaultEntry!3703 Int) (mask!8704 (_ BitVec 32)) (extraKeys!3440 (_ BitVec 32)) (zeroValue!3544 V!5291) (minValue!3544 V!5291) (_size!1276 (_ BitVec 32)) (_keys!5596 array!7638) (_values!3686 array!7640) (_vacant!1276 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2454)

(declare-fun valid!1011 (LongMapFixedSize!2454) Bool)

(assert (=> start!18134 (= res!85467 (valid!1011 thiss!1248))))

(assert (=> start!18134 e!118854))

(declare-fun e!118851 () Bool)

(assert (=> start!18134 e!118851))

(assert (=> start!18134 true))

(declare-fun b!180403 () Bool)

(declare-fun e!118852 () Bool)

(declare-fun tp_is_empty!4233 () Bool)

(assert (=> b!180403 (= e!118852 tp_is_empty!4233)))

(declare-fun e!118855 () Bool)

(declare-fun array_inv!2319 (array!7638) Bool)

(declare-fun array_inv!2320 (array!7640) Bool)

(assert (=> b!180404 (= e!118851 (and tp!16120 tp_is_empty!4233 (array_inv!2319 (_keys!5596 thiss!1248)) (array_inv!2320 (_values!3686 thiss!1248)) e!118855))))

(declare-fun b!180405 () Bool)

(declare-fun e!118853 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!180405 (= e!118853 (not (validMask!0 (mask!8704 thiss!1248))))))

(declare-fun b!180406 () Bool)

(declare-fun e!118850 () Bool)

(assert (=> b!180406 (= e!118850 tp_is_empty!4233)))

(declare-fun mapIsEmpty!7249 () Bool)

(declare-fun mapRes!7249 () Bool)

(assert (=> mapIsEmpty!7249 mapRes!7249))

(declare-fun b!180407 () Bool)

(declare-fun res!85466 () Bool)

(assert (=> b!180407 (=> (not res!85466) (not e!118854))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!180407 (= res!85466 (not (= key!828 (bvneg key!828))))))

(declare-fun b!180408 () Bool)

(declare-fun res!85465 () Bool)

(assert (=> b!180408 (=> (not res!85465) (not e!118853))))

(declare-datatypes ((tuple2!3366 0))(
  ( (tuple2!3367 (_1!1693 (_ BitVec 64)) (_2!1693 V!5291)) )
))
(declare-datatypes ((List!2316 0))(
  ( (Nil!2313) (Cons!2312 (h!2937 tuple2!3366) (t!7172 List!2316)) )
))
(declare-datatypes ((ListLongMap!2297 0))(
  ( (ListLongMap!2298 (toList!1164 List!2316)) )
))
(declare-fun contains!1234 (ListLongMap!2297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!807 (array!7638 array!7640 (_ BitVec 32) (_ BitVec 32) V!5291 V!5291 (_ BitVec 32) Int) ListLongMap!2297)

(assert (=> b!180408 (= res!85465 (contains!1234 (getCurrentListMap!807 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!7249 () Bool)

(declare-fun tp!16119 () Bool)

(assert (=> mapNonEmpty!7249 (= mapRes!7249 (and tp!16119 e!118850))))

(declare-fun mapKey!7249 () (_ BitVec 32))

(declare-fun mapRest!7249 () (Array (_ BitVec 32) ValueCell!1773))

(declare-fun mapValue!7249 () ValueCell!1773)

(assert (=> mapNonEmpty!7249 (= (arr!3617 (_values!3686 thiss!1248)) (store mapRest!7249 mapKey!7249 mapValue!7249))))

(declare-fun b!180409 () Bool)

(assert (=> b!180409 (= e!118855 (and e!118852 mapRes!7249))))

(declare-fun condMapEmpty!7249 () Bool)

(declare-fun mapDefault!7249 () ValueCell!1773)

(assert (=> b!180409 (= condMapEmpty!7249 (= (arr!3617 (_values!3686 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1773)) mapDefault!7249)))))

(declare-fun b!180410 () Bool)

(assert (=> b!180410 (= e!118854 e!118853)))

(declare-fun res!85468 () Bool)

(assert (=> b!180410 (=> (not res!85468) (not e!118853))))

(declare-datatypes ((SeekEntryResult!603 0))(
  ( (MissingZero!603 (index!4582 (_ BitVec 32))) (Found!603 (index!4583 (_ BitVec 32))) (Intermediate!603 (undefined!1415 Bool) (index!4584 (_ BitVec 32)) (x!19737 (_ BitVec 32))) (Undefined!603) (MissingVacant!603 (index!4585 (_ BitVec 32))) )
))
(declare-fun lt!89199 () SeekEntryResult!603)

(get-info :version)

(assert (=> b!180410 (= res!85468 (and (not ((_ is Undefined!603) lt!89199)) (not ((_ is MissingVacant!603) lt!89199)) (not ((_ is MissingZero!603) lt!89199)) ((_ is Found!603) lt!89199)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7638 (_ BitVec 32)) SeekEntryResult!603)

(assert (=> b!180410 (= lt!89199 (seekEntryOrOpen!0 key!828 (_keys!5596 thiss!1248) (mask!8704 thiss!1248)))))

(assert (= (and start!18134 res!85467) b!180407))

(assert (= (and b!180407 res!85466) b!180410))

(assert (= (and b!180410 res!85468) b!180408))

(assert (= (and b!180408 res!85465) b!180405))

(assert (= (and b!180409 condMapEmpty!7249) mapIsEmpty!7249))

(assert (= (and b!180409 (not condMapEmpty!7249)) mapNonEmpty!7249))

(assert (= (and mapNonEmpty!7249 ((_ is ValueCellFull!1773) mapValue!7249)) b!180406))

(assert (= (and b!180409 ((_ is ValueCellFull!1773) mapDefault!7249)) b!180403))

(assert (= b!180404 b!180409))

(assert (= start!18134 b!180404))

(declare-fun m!208455 () Bool)

(assert (=> b!180410 m!208455))

(declare-fun m!208457 () Bool)

(assert (=> b!180404 m!208457))

(declare-fun m!208459 () Bool)

(assert (=> b!180404 m!208459))

(declare-fun m!208461 () Bool)

(assert (=> b!180408 m!208461))

(assert (=> b!180408 m!208461))

(declare-fun m!208463 () Bool)

(assert (=> b!180408 m!208463))

(declare-fun m!208465 () Bool)

(assert (=> start!18134 m!208465))

(declare-fun m!208467 () Bool)

(assert (=> b!180405 m!208467))

(declare-fun m!208469 () Bool)

(assert (=> mapNonEmpty!7249 m!208469))

(check-sat (not b_next!4461) (not b!180408) (not b!180405) (not start!18134) tp_is_empty!4233 b_and!11013 (not b!180404) (not mapNonEmpty!7249) (not b!180410))
(check-sat b_and!11013 (not b_next!4461))
(get-model)

(declare-fun d!54149 () Bool)

(declare-fun e!118882 () Bool)

(assert (=> d!54149 e!118882))

(declare-fun res!85483 () Bool)

(assert (=> d!54149 (=> res!85483 e!118882)))

(declare-fun lt!89212 () Bool)

(assert (=> d!54149 (= res!85483 (not lt!89212))))

(declare-fun lt!89211 () Bool)

(assert (=> d!54149 (= lt!89212 lt!89211)))

(declare-datatypes ((Unit!5489 0))(
  ( (Unit!5490) )
))
(declare-fun lt!89214 () Unit!5489)

(declare-fun e!118883 () Unit!5489)

(assert (=> d!54149 (= lt!89214 e!118883)))

(declare-fun c!32296 () Bool)

(assert (=> d!54149 (= c!32296 lt!89211)))

(declare-fun containsKey!209 (List!2316 (_ BitVec 64)) Bool)

(assert (=> d!54149 (= lt!89211 (containsKey!209 (toList!1164 (getCurrentListMap!807 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248))) key!828))))

(assert (=> d!54149 (= (contains!1234 (getCurrentListMap!807 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)) key!828) lt!89212)))

(declare-fun b!180441 () Bool)

(declare-fun lt!89213 () Unit!5489)

(assert (=> b!180441 (= e!118883 lt!89213)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!158 (List!2316 (_ BitVec 64)) Unit!5489)

(assert (=> b!180441 (= lt!89213 (lemmaContainsKeyImpliesGetValueByKeyDefined!158 (toList!1164 (getCurrentListMap!807 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248))) key!828))))

(declare-datatypes ((Option!211 0))(
  ( (Some!210 (v!4052 V!5291)) (None!209) )
))
(declare-fun isDefined!159 (Option!211) Bool)

(declare-fun getValueByKey!205 (List!2316 (_ BitVec 64)) Option!211)

(assert (=> b!180441 (isDefined!159 (getValueByKey!205 (toList!1164 (getCurrentListMap!807 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248))) key!828))))

(declare-fun b!180442 () Bool)

(declare-fun Unit!5491 () Unit!5489)

(assert (=> b!180442 (= e!118883 Unit!5491)))

(declare-fun b!180443 () Bool)

(assert (=> b!180443 (= e!118882 (isDefined!159 (getValueByKey!205 (toList!1164 (getCurrentListMap!807 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248))) key!828)))))

(assert (= (and d!54149 c!32296) b!180441))

(assert (= (and d!54149 (not c!32296)) b!180442))

(assert (= (and d!54149 (not res!85483)) b!180443))

(declare-fun m!208487 () Bool)

(assert (=> d!54149 m!208487))

(declare-fun m!208489 () Bool)

(assert (=> b!180441 m!208489))

(declare-fun m!208491 () Bool)

(assert (=> b!180441 m!208491))

(assert (=> b!180441 m!208491))

(declare-fun m!208493 () Bool)

(assert (=> b!180441 m!208493))

(assert (=> b!180443 m!208491))

(assert (=> b!180443 m!208491))

(assert (=> b!180443 m!208493))

(assert (=> b!180408 d!54149))

(declare-fun b!180486 () Bool)

(declare-fun e!118918 () Bool)

(declare-fun e!118914 () Bool)

(assert (=> b!180486 (= e!118918 e!118914)))

(declare-fun c!32314 () Bool)

(assert (=> b!180486 (= c!32314 (not (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!180487 () Bool)

(declare-fun e!118915 () Bool)

(declare-fun e!118916 () Bool)

(assert (=> b!180487 (= e!118915 e!118916)))

(declare-fun res!85506 () Bool)

(assert (=> b!180487 (=> (not res!85506) (not e!118916))))

(declare-fun lt!89270 () ListLongMap!2297)

(assert (=> b!180487 (= res!85506 (contains!1234 lt!89270 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!180487 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3924 (_keys!5596 thiss!1248))))))

(declare-fun b!180488 () Bool)

(declare-fun e!118913 () ListLongMap!2297)

(declare-fun call!18248 () ListLongMap!2297)

(assert (=> b!180488 (= e!118913 call!18248)))

(declare-fun b!180489 () Bool)

(declare-fun call!18254 () Bool)

(assert (=> b!180489 (= e!118914 (not call!18254))))

(declare-fun b!180490 () Bool)

(declare-fun e!118917 () ListLongMap!2297)

(assert (=> b!180490 (= e!118917 call!18248)))

(declare-fun b!180491 () Bool)

(declare-fun e!118921 () ListLongMap!2297)

(assert (=> b!180491 (= e!118921 e!118913)))

(declare-fun c!32310 () Bool)

(assert (=> b!180491 (= c!32310 (and (not (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!180492 () Bool)

(declare-fun call!18251 () ListLongMap!2297)

(assert (=> b!180492 (= e!118917 call!18251)))

(declare-fun bm!18245 () Bool)

(declare-fun call!18252 () Bool)

(assert (=> bm!18245 (= call!18252 (contains!1234 lt!89270 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180494 () Bool)

(declare-fun res!85502 () Bool)

(assert (=> b!180494 (=> (not res!85502) (not e!118918))))

(assert (=> b!180494 (= res!85502 e!118915)))

(declare-fun res!85505 () Bool)

(assert (=> b!180494 (=> res!85505 e!118915)))

(declare-fun e!118920 () Bool)

(assert (=> b!180494 (= res!85505 (not e!118920))))

(declare-fun res!85504 () Bool)

(assert (=> b!180494 (=> (not res!85504) (not e!118920))))

(assert (=> b!180494 (= res!85504 (bvslt #b00000000000000000000000000000000 (size!3924 (_keys!5596 thiss!1248))))))

(declare-fun b!180495 () Bool)

(declare-fun e!118912 () Bool)

(declare-fun apply!149 (ListLongMap!2297 (_ BitVec 64)) V!5291)

(assert (=> b!180495 (= e!118912 (= (apply!149 lt!89270 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3544 thiss!1248)))))

(declare-fun c!32309 () Bool)

(declare-fun call!18249 () ListLongMap!2297)

(declare-fun call!18250 () ListLongMap!2297)

(declare-fun bm!18246 () Bool)

(declare-fun call!18253 () ListLongMap!2297)

(declare-fun +!264 (ListLongMap!2297 tuple2!3366) ListLongMap!2297)

(assert (=> bm!18246 (= call!18253 (+!264 (ite c!32309 call!18250 (ite c!32310 call!18249 call!18251)) (ite (or c!32309 c!32310) (tuple2!3367 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3544 thiss!1248)) (tuple2!3367 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3544 thiss!1248)))))))

(declare-fun b!180496 () Bool)

(declare-fun e!118922 () Bool)

(declare-fun e!118910 () Bool)

(assert (=> b!180496 (= e!118922 e!118910)))

(declare-fun res!85507 () Bool)

(assert (=> b!180496 (= res!85507 call!18252)))

(assert (=> b!180496 (=> (not res!85507) (not e!118910))))

(declare-fun bm!18247 () Bool)

(assert (=> bm!18247 (= call!18251 call!18249)))

(declare-fun b!180497 () Bool)

(declare-fun e!118919 () Unit!5489)

(declare-fun Unit!5492 () Unit!5489)

(assert (=> b!180497 (= e!118919 Unit!5492)))

(declare-fun b!180498 () Bool)

(declare-fun e!118911 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!180498 (= e!118911 (validKeyInArray!0 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180499 () Bool)

(assert (=> b!180499 (= e!118914 e!118912)))

(declare-fun res!85510 () Bool)

(assert (=> b!180499 (= res!85510 call!18254)))

(assert (=> b!180499 (=> (not res!85510) (not e!118912))))

(declare-fun b!180500 () Bool)

(declare-fun c!32312 () Bool)

(assert (=> b!180500 (= c!32312 (and (not (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!180500 (= e!118913 e!118917)))

(declare-fun b!180501 () Bool)

(declare-fun get!2065 (ValueCell!1773 V!5291) V!5291)

(declare-fun dynLambda!487 (Int (_ BitVec 64)) V!5291)

(assert (=> b!180501 (= e!118916 (= (apply!149 lt!89270 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000)) (get!2065 (select (arr!3617 (_values!3686 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!487 (defaultEntry!3703 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!180501 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3925 (_values!3686 thiss!1248))))))

(assert (=> b!180501 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3924 (_keys!5596 thiss!1248))))))

(declare-fun bm!18248 () Bool)

(assert (=> bm!18248 (= call!18248 call!18253)))

(declare-fun bm!18249 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!179 (array!7638 array!7640 (_ BitVec 32) (_ BitVec 32) V!5291 V!5291 (_ BitVec 32) Int) ListLongMap!2297)

(assert (=> bm!18249 (= call!18250 (getCurrentListMapNoExtraKeys!179 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)))))

(declare-fun bm!18250 () Bool)

(assert (=> bm!18250 (= call!18254 (contains!1234 lt!89270 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180502 () Bool)

(assert (=> b!180502 (= e!118921 (+!264 call!18253 (tuple2!3367 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3544 thiss!1248))))))

(declare-fun b!180493 () Bool)

(declare-fun lt!89267 () Unit!5489)

(assert (=> b!180493 (= e!118919 lt!89267)))

(declare-fun lt!89266 () ListLongMap!2297)

(assert (=> b!180493 (= lt!89266 (getCurrentListMapNoExtraKeys!179 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)))))

(declare-fun lt!89268 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89268 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89259 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89259 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89280 () Unit!5489)

(declare-fun addStillContains!125 (ListLongMap!2297 (_ BitVec 64) V!5291 (_ BitVec 64)) Unit!5489)

(assert (=> b!180493 (= lt!89280 (addStillContains!125 lt!89266 lt!89268 (zeroValue!3544 thiss!1248) lt!89259))))

(assert (=> b!180493 (contains!1234 (+!264 lt!89266 (tuple2!3367 lt!89268 (zeroValue!3544 thiss!1248))) lt!89259)))

(declare-fun lt!89260 () Unit!5489)

(assert (=> b!180493 (= lt!89260 lt!89280)))

(declare-fun lt!89277 () ListLongMap!2297)

(assert (=> b!180493 (= lt!89277 (getCurrentListMapNoExtraKeys!179 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)))))

(declare-fun lt!89272 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89272 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89263 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89263 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89273 () Unit!5489)

(declare-fun addApplyDifferent!125 (ListLongMap!2297 (_ BitVec 64) V!5291 (_ BitVec 64)) Unit!5489)

(assert (=> b!180493 (= lt!89273 (addApplyDifferent!125 lt!89277 lt!89272 (minValue!3544 thiss!1248) lt!89263))))

(assert (=> b!180493 (= (apply!149 (+!264 lt!89277 (tuple2!3367 lt!89272 (minValue!3544 thiss!1248))) lt!89263) (apply!149 lt!89277 lt!89263))))

(declare-fun lt!89274 () Unit!5489)

(assert (=> b!180493 (= lt!89274 lt!89273)))

(declare-fun lt!89275 () ListLongMap!2297)

(assert (=> b!180493 (= lt!89275 (getCurrentListMapNoExtraKeys!179 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)))))

(declare-fun lt!89262 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89262 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89276 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89276 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89265 () Unit!5489)

(assert (=> b!180493 (= lt!89265 (addApplyDifferent!125 lt!89275 lt!89262 (zeroValue!3544 thiss!1248) lt!89276))))

(assert (=> b!180493 (= (apply!149 (+!264 lt!89275 (tuple2!3367 lt!89262 (zeroValue!3544 thiss!1248))) lt!89276) (apply!149 lt!89275 lt!89276))))

(declare-fun lt!89279 () Unit!5489)

(assert (=> b!180493 (= lt!89279 lt!89265)))

(declare-fun lt!89271 () ListLongMap!2297)

(assert (=> b!180493 (= lt!89271 (getCurrentListMapNoExtraKeys!179 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)))))

(declare-fun lt!89278 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89278 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89264 () (_ BitVec 64))

(assert (=> b!180493 (= lt!89264 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180493 (= lt!89267 (addApplyDifferent!125 lt!89271 lt!89278 (minValue!3544 thiss!1248) lt!89264))))

(assert (=> b!180493 (= (apply!149 (+!264 lt!89271 (tuple2!3367 lt!89278 (minValue!3544 thiss!1248))) lt!89264) (apply!149 lt!89271 lt!89264))))

(declare-fun d!54151 () Bool)

(assert (=> d!54151 e!118918))

(declare-fun res!85503 () Bool)

(assert (=> d!54151 (=> (not res!85503) (not e!118918))))

(assert (=> d!54151 (= res!85503 (or (bvsge #b00000000000000000000000000000000 (size!3924 (_keys!5596 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3924 (_keys!5596 thiss!1248))))))))

(declare-fun lt!89261 () ListLongMap!2297)

(assert (=> d!54151 (= lt!89270 lt!89261)))

(declare-fun lt!89269 () Unit!5489)

(assert (=> d!54151 (= lt!89269 e!118919)))

(declare-fun c!32311 () Bool)

(assert (=> d!54151 (= c!32311 e!118911)))

(declare-fun res!85508 () Bool)

(assert (=> d!54151 (=> (not res!85508) (not e!118911))))

(assert (=> d!54151 (= res!85508 (bvslt #b00000000000000000000000000000000 (size!3924 (_keys!5596 thiss!1248))))))

(assert (=> d!54151 (= lt!89261 e!118921)))

(assert (=> d!54151 (= c!32309 (and (not (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54151 (validMask!0 (mask!8704 thiss!1248))))

(assert (=> d!54151 (= (getCurrentListMap!807 (_keys!5596 thiss!1248) (_values!3686 thiss!1248) (mask!8704 thiss!1248) (extraKeys!3440 thiss!1248) (zeroValue!3544 thiss!1248) (minValue!3544 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3703 thiss!1248)) lt!89270)))

(declare-fun b!180503 () Bool)

(assert (=> b!180503 (= e!118920 (validKeyInArray!0 (select (arr!3616 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!180504 () Bool)

(assert (=> b!180504 (= e!118922 (not call!18252))))

(declare-fun b!180505 () Bool)

(declare-fun res!85509 () Bool)

(assert (=> b!180505 (=> (not res!85509) (not e!118918))))

(assert (=> b!180505 (= res!85509 e!118922)))

(declare-fun c!32313 () Bool)

(assert (=> b!180505 (= c!32313 (not (= (bvand (extraKeys!3440 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!180506 () Bool)

(assert (=> b!180506 (= e!118910 (= (apply!149 lt!89270 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3544 thiss!1248)))))

(declare-fun bm!18251 () Bool)

(assert (=> bm!18251 (= call!18249 call!18250)))

(assert (= (and d!54151 c!32309) b!180502))

(assert (= (and d!54151 (not c!32309)) b!180491))

(assert (= (and b!180491 c!32310) b!180488))

(assert (= (and b!180491 (not c!32310)) b!180500))

(assert (= (and b!180500 c!32312) b!180490))

(assert (= (and b!180500 (not c!32312)) b!180492))

(assert (= (or b!180490 b!180492) bm!18247))

(assert (= (or b!180488 bm!18247) bm!18251))

(assert (= (or b!180488 b!180490) bm!18248))

(assert (= (or b!180502 bm!18251) bm!18249))

(assert (= (or b!180502 bm!18248) bm!18246))

(assert (= (and d!54151 res!85508) b!180498))

(assert (= (and d!54151 c!32311) b!180493))

(assert (= (and d!54151 (not c!32311)) b!180497))

(assert (= (and d!54151 res!85503) b!180494))

(assert (= (and b!180494 res!85504) b!180503))

(assert (= (and b!180494 (not res!85505)) b!180487))

(assert (= (and b!180487 res!85506) b!180501))

(assert (= (and b!180494 res!85502) b!180505))

(assert (= (and b!180505 c!32313) b!180496))

(assert (= (and b!180505 (not c!32313)) b!180504))

(assert (= (and b!180496 res!85507) b!180506))

(assert (= (or b!180496 b!180504) bm!18245))

(assert (= (and b!180505 res!85509) b!180486))

(assert (= (and b!180486 c!32314) b!180499))

(assert (= (and b!180486 (not c!32314)) b!180489))

(assert (= (and b!180499 res!85510) b!180495))

(assert (= (or b!180499 b!180489) bm!18250))

(declare-fun b_lambda!7149 () Bool)

(assert (=> (not b_lambda!7149) (not b!180501)))

(declare-fun t!7174 () Bool)

(declare-fun tb!2817 () Bool)

(assert (=> (and b!180404 (= (defaultEntry!3703 thiss!1248) (defaultEntry!3703 thiss!1248)) t!7174) tb!2817))

(declare-fun result!4713 () Bool)

(assert (=> tb!2817 (= result!4713 tp_is_empty!4233)))

(assert (=> b!180501 t!7174))

(declare-fun b_and!11017 () Bool)

(assert (= b_and!11013 (and (=> t!7174 result!4713) b_and!11017)))

(declare-fun m!208495 () Bool)

(assert (=> bm!18245 m!208495))

(declare-fun m!208497 () Bool)

(assert (=> b!180495 m!208497))

(declare-fun m!208499 () Bool)

(assert (=> bm!18249 m!208499))

(declare-fun m!208501 () Bool)

(assert (=> bm!18250 m!208501))

(declare-fun m!208503 () Bool)

(assert (=> bm!18246 m!208503))

(declare-fun m!208505 () Bool)

(assert (=> b!180493 m!208505))

(declare-fun m!208507 () Bool)

(assert (=> b!180493 m!208507))

(declare-fun m!208509 () Bool)

(assert (=> b!180493 m!208509))

(declare-fun m!208511 () Bool)

(assert (=> b!180493 m!208511))

(declare-fun m!208513 () Bool)

(assert (=> b!180493 m!208513))

(assert (=> b!180493 m!208509))

(declare-fun m!208515 () Bool)

(assert (=> b!180493 m!208515))

(declare-fun m!208517 () Bool)

(assert (=> b!180493 m!208517))

(declare-fun m!208519 () Bool)

(assert (=> b!180493 m!208519))

(declare-fun m!208521 () Bool)

(assert (=> b!180493 m!208521))

(declare-fun m!208523 () Bool)

(assert (=> b!180493 m!208523))

(assert (=> b!180493 m!208505))

(declare-fun m!208525 () Bool)

(assert (=> b!180493 m!208525))

(assert (=> b!180493 m!208517))

(declare-fun m!208527 () Bool)

(assert (=> b!180493 m!208527))

(declare-fun m!208529 () Bool)

(assert (=> b!180493 m!208529))

(assert (=> b!180493 m!208499))

(assert (=> b!180493 m!208529))

(declare-fun m!208531 () Bool)

(assert (=> b!180493 m!208531))

(declare-fun m!208533 () Bool)

(assert (=> b!180493 m!208533))

(declare-fun m!208535 () Bool)

(assert (=> b!180493 m!208535))

(assert (=> d!54151 m!208467))

(assert (=> b!180487 m!208527))

(assert (=> b!180487 m!208527))

(declare-fun m!208537 () Bool)

(assert (=> b!180487 m!208537))

(declare-fun m!208539 () Bool)

(assert (=> b!180501 m!208539))

(declare-fun m!208541 () Bool)

(assert (=> b!180501 m!208541))

(declare-fun m!208543 () Bool)

(assert (=> b!180501 m!208543))

(assert (=> b!180501 m!208539))

(assert (=> b!180501 m!208527))

(assert (=> b!180501 m!208541))

(assert (=> b!180501 m!208527))

(declare-fun m!208545 () Bool)

(assert (=> b!180501 m!208545))

(declare-fun m!208547 () Bool)

(assert (=> b!180502 m!208547))

(assert (=> b!180503 m!208527))

(assert (=> b!180503 m!208527))

(declare-fun m!208549 () Bool)

(assert (=> b!180503 m!208549))

(declare-fun m!208551 () Bool)

(assert (=> b!180506 m!208551))

(assert (=> b!180498 m!208527))

(assert (=> b!180498 m!208527))

(assert (=> b!180498 m!208549))

(assert (=> b!180408 d!54151))

(declare-fun d!54153 () Bool)

(assert (=> d!54153 (= (array_inv!2319 (_keys!5596 thiss!1248)) (bvsge (size!3924 (_keys!5596 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180404 d!54153))

(declare-fun d!54155 () Bool)

(assert (=> d!54155 (= (array_inv!2320 (_values!3686 thiss!1248)) (bvsge (size!3925 (_values!3686 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180404 d!54155))

(declare-fun d!54157 () Bool)

(assert (=> d!54157 (= (validMask!0 (mask!8704 thiss!1248)) (and (or (= (mask!8704 thiss!1248) #b00000000000000000000000000000111) (= (mask!8704 thiss!1248) #b00000000000000000000000000001111) (= (mask!8704 thiss!1248) #b00000000000000000000000000011111) (= (mask!8704 thiss!1248) #b00000000000000000000000000111111) (= (mask!8704 thiss!1248) #b00000000000000000000000001111111) (= (mask!8704 thiss!1248) #b00000000000000000000000011111111) (= (mask!8704 thiss!1248) #b00000000000000000000000111111111) (= (mask!8704 thiss!1248) #b00000000000000000000001111111111) (= (mask!8704 thiss!1248) #b00000000000000000000011111111111) (= (mask!8704 thiss!1248) #b00000000000000000000111111111111) (= (mask!8704 thiss!1248) #b00000000000000000001111111111111) (= (mask!8704 thiss!1248) #b00000000000000000011111111111111) (= (mask!8704 thiss!1248) #b00000000000000000111111111111111) (= (mask!8704 thiss!1248) #b00000000000000001111111111111111) (= (mask!8704 thiss!1248) #b00000000000000011111111111111111) (= (mask!8704 thiss!1248) #b00000000000000111111111111111111) (= (mask!8704 thiss!1248) #b00000000000001111111111111111111) (= (mask!8704 thiss!1248) #b00000000000011111111111111111111) (= (mask!8704 thiss!1248) #b00000000000111111111111111111111) (= (mask!8704 thiss!1248) #b00000000001111111111111111111111) (= (mask!8704 thiss!1248) #b00000000011111111111111111111111) (= (mask!8704 thiss!1248) #b00000000111111111111111111111111) (= (mask!8704 thiss!1248) #b00000001111111111111111111111111) (= (mask!8704 thiss!1248) #b00000011111111111111111111111111) (= (mask!8704 thiss!1248) #b00000111111111111111111111111111) (= (mask!8704 thiss!1248) #b00001111111111111111111111111111) (= (mask!8704 thiss!1248) #b00011111111111111111111111111111) (= (mask!8704 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8704 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!180405 d!54157))

(declare-fun d!54159 () Bool)

(declare-fun res!85517 () Bool)

(declare-fun e!118925 () Bool)

(assert (=> d!54159 (=> (not res!85517) (not e!118925))))

(declare-fun simpleValid!164 (LongMapFixedSize!2454) Bool)

(assert (=> d!54159 (= res!85517 (simpleValid!164 thiss!1248))))

(assert (=> d!54159 (= (valid!1011 thiss!1248) e!118925)))

(declare-fun b!180515 () Bool)

(declare-fun res!85518 () Bool)

(assert (=> b!180515 (=> (not res!85518) (not e!118925))))

(declare-fun arrayCountValidKeys!0 (array!7638 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!180515 (= res!85518 (= (arrayCountValidKeys!0 (_keys!5596 thiss!1248) #b00000000000000000000000000000000 (size!3924 (_keys!5596 thiss!1248))) (_size!1276 thiss!1248)))))

(declare-fun b!180516 () Bool)

(declare-fun res!85519 () Bool)

(assert (=> b!180516 (=> (not res!85519) (not e!118925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7638 (_ BitVec 32)) Bool)

(assert (=> b!180516 (= res!85519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5596 thiss!1248) (mask!8704 thiss!1248)))))

(declare-fun b!180517 () Bool)

(declare-datatypes ((List!2317 0))(
  ( (Nil!2314) (Cons!2313 (h!2938 (_ BitVec 64)) (t!7175 List!2317)) )
))
(declare-fun arrayNoDuplicates!0 (array!7638 (_ BitVec 32) List!2317) Bool)

(assert (=> b!180517 (= e!118925 (arrayNoDuplicates!0 (_keys!5596 thiss!1248) #b00000000000000000000000000000000 Nil!2314))))

(assert (= (and d!54159 res!85517) b!180515))

(assert (= (and b!180515 res!85518) b!180516))

(assert (= (and b!180516 res!85519) b!180517))

(declare-fun m!208553 () Bool)

(assert (=> d!54159 m!208553))

(declare-fun m!208555 () Bool)

(assert (=> b!180515 m!208555))

(declare-fun m!208557 () Bool)

(assert (=> b!180516 m!208557))

(declare-fun m!208559 () Bool)

(assert (=> b!180517 m!208559))

(assert (=> start!18134 d!54159))

(declare-fun b!180530 () Bool)

(declare-fun e!118934 () SeekEntryResult!603)

(declare-fun lt!89287 () SeekEntryResult!603)

(assert (=> b!180530 (= e!118934 (MissingZero!603 (index!4584 lt!89287)))))

(declare-fun b!180531 () Bool)

(declare-fun c!32321 () Bool)

(declare-fun lt!89288 () (_ BitVec 64))

(assert (=> b!180531 (= c!32321 (= lt!89288 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!118933 () SeekEntryResult!603)

(assert (=> b!180531 (= e!118933 e!118934)))

(declare-fun d!54161 () Bool)

(declare-fun lt!89289 () SeekEntryResult!603)

(assert (=> d!54161 (and (or ((_ is Undefined!603) lt!89289) (not ((_ is Found!603) lt!89289)) (and (bvsge (index!4583 lt!89289) #b00000000000000000000000000000000) (bvslt (index!4583 lt!89289) (size!3924 (_keys!5596 thiss!1248))))) (or ((_ is Undefined!603) lt!89289) ((_ is Found!603) lt!89289) (not ((_ is MissingZero!603) lt!89289)) (and (bvsge (index!4582 lt!89289) #b00000000000000000000000000000000) (bvslt (index!4582 lt!89289) (size!3924 (_keys!5596 thiss!1248))))) (or ((_ is Undefined!603) lt!89289) ((_ is Found!603) lt!89289) ((_ is MissingZero!603) lt!89289) (not ((_ is MissingVacant!603) lt!89289)) (and (bvsge (index!4585 lt!89289) #b00000000000000000000000000000000) (bvslt (index!4585 lt!89289) (size!3924 (_keys!5596 thiss!1248))))) (or ((_ is Undefined!603) lt!89289) (ite ((_ is Found!603) lt!89289) (= (select (arr!3616 (_keys!5596 thiss!1248)) (index!4583 lt!89289)) key!828) (ite ((_ is MissingZero!603) lt!89289) (= (select (arr!3616 (_keys!5596 thiss!1248)) (index!4582 lt!89289)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!603) lt!89289) (= (select (arr!3616 (_keys!5596 thiss!1248)) (index!4585 lt!89289)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!118932 () SeekEntryResult!603)

(assert (=> d!54161 (= lt!89289 e!118932)))

(declare-fun c!32323 () Bool)

(assert (=> d!54161 (= c!32323 (and ((_ is Intermediate!603) lt!89287) (undefined!1415 lt!89287)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7638 (_ BitVec 32)) SeekEntryResult!603)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54161 (= lt!89287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8704 thiss!1248)) key!828 (_keys!5596 thiss!1248) (mask!8704 thiss!1248)))))

(assert (=> d!54161 (validMask!0 (mask!8704 thiss!1248))))

(assert (=> d!54161 (= (seekEntryOrOpen!0 key!828 (_keys!5596 thiss!1248) (mask!8704 thiss!1248)) lt!89289)))

(declare-fun b!180532 () Bool)

(assert (=> b!180532 (= e!118932 e!118933)))

(assert (=> b!180532 (= lt!89288 (select (arr!3616 (_keys!5596 thiss!1248)) (index!4584 lt!89287)))))

(declare-fun c!32322 () Bool)

(assert (=> b!180532 (= c!32322 (= lt!89288 key!828))))

(declare-fun b!180533 () Bool)

(assert (=> b!180533 (= e!118933 (Found!603 (index!4584 lt!89287)))))

(declare-fun b!180534 () Bool)

(assert (=> b!180534 (= e!118932 Undefined!603)))

(declare-fun b!180535 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7638 (_ BitVec 32)) SeekEntryResult!603)

(assert (=> b!180535 (= e!118934 (seekKeyOrZeroReturnVacant!0 (x!19737 lt!89287) (index!4584 lt!89287) (index!4584 lt!89287) key!828 (_keys!5596 thiss!1248) (mask!8704 thiss!1248)))))

(assert (= (and d!54161 c!32323) b!180534))

(assert (= (and d!54161 (not c!32323)) b!180532))

(assert (= (and b!180532 c!32322) b!180533))

(assert (= (and b!180532 (not c!32322)) b!180531))

(assert (= (and b!180531 c!32321) b!180530))

(assert (= (and b!180531 (not c!32321)) b!180535))

(declare-fun m!208561 () Bool)

(assert (=> d!54161 m!208561))

(assert (=> d!54161 m!208467))

(declare-fun m!208563 () Bool)

(assert (=> d!54161 m!208563))

(declare-fun m!208565 () Bool)

(assert (=> d!54161 m!208565))

(declare-fun m!208567 () Bool)

(assert (=> d!54161 m!208567))

(declare-fun m!208569 () Bool)

(assert (=> d!54161 m!208569))

(assert (=> d!54161 m!208567))

(declare-fun m!208571 () Bool)

(assert (=> b!180532 m!208571))

(declare-fun m!208573 () Bool)

(assert (=> b!180535 m!208573))

(assert (=> b!180410 d!54161))

(declare-fun mapNonEmpty!7255 () Bool)

(declare-fun mapRes!7255 () Bool)

(declare-fun tp!16129 () Bool)

(declare-fun e!118940 () Bool)

(assert (=> mapNonEmpty!7255 (= mapRes!7255 (and tp!16129 e!118940))))

(declare-fun mapKey!7255 () (_ BitVec 32))

(declare-fun mapValue!7255 () ValueCell!1773)

(declare-fun mapRest!7255 () (Array (_ BitVec 32) ValueCell!1773))

(assert (=> mapNonEmpty!7255 (= mapRest!7249 (store mapRest!7255 mapKey!7255 mapValue!7255))))

(declare-fun b!180542 () Bool)

(assert (=> b!180542 (= e!118940 tp_is_empty!4233)))

(declare-fun b!180543 () Bool)

(declare-fun e!118939 () Bool)

(assert (=> b!180543 (= e!118939 tp_is_empty!4233)))

(declare-fun mapIsEmpty!7255 () Bool)

(assert (=> mapIsEmpty!7255 mapRes!7255))

(declare-fun condMapEmpty!7255 () Bool)

(declare-fun mapDefault!7255 () ValueCell!1773)

(assert (=> mapNonEmpty!7249 (= condMapEmpty!7255 (= mapRest!7249 ((as const (Array (_ BitVec 32) ValueCell!1773)) mapDefault!7255)))))

(assert (=> mapNonEmpty!7249 (= tp!16119 (and e!118939 mapRes!7255))))

(assert (= (and mapNonEmpty!7249 condMapEmpty!7255) mapIsEmpty!7255))

(assert (= (and mapNonEmpty!7249 (not condMapEmpty!7255)) mapNonEmpty!7255))

(assert (= (and mapNonEmpty!7255 ((_ is ValueCellFull!1773) mapValue!7255)) b!180542))

(assert (= (and mapNonEmpty!7249 ((_ is ValueCellFull!1773) mapDefault!7255)) b!180543))

(declare-fun m!208575 () Bool)

(assert (=> mapNonEmpty!7255 m!208575))

(declare-fun b_lambda!7151 () Bool)

(assert (= b_lambda!7149 (or (and b!180404 b_free!4461) b_lambda!7151)))

(check-sat (not bm!18245) (not b_next!4461) (not bm!18250) b_and!11017 (not b!180493) (not d!54161) (not b!180503) (not b!180443) (not b!180441) tp_is_empty!4233 (not d!54149) (not b!180501) (not b!180502) (not b!180495) (not d!54151) (not b_lambda!7151) (not mapNonEmpty!7255) (not d!54159) (not b!180498) (not b!180515) (not b!180516) (not b!180535) (not bm!18246) (not bm!18249) (not b!180506) (not b!180487) (not b!180517))
(check-sat b_and!11017 (not b_next!4461))
