; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242568 () Bool)

(assert start!242568)

(declare-fun b!2484425 () Bool)

(declare-fun b_free!72457 () Bool)

(declare-fun b_next!73161 () Bool)

(assert (=> b!2484425 (= b_free!72457 (not b_next!73161))))

(declare-fun tp!795380 () Bool)

(declare-fun b_and!188727 () Bool)

(assert (=> b!2484425 (= tp!795380 b_and!188727)))

(declare-fun b!2484422 () Bool)

(declare-fun b_free!72459 () Bool)

(declare-fun b_next!73163 () Bool)

(assert (=> b!2484422 (= b_free!72459 (not b_next!73163))))

(declare-fun tp!795384 () Bool)

(declare-fun b_and!188729 () Bool)

(assert (=> b!2484422 (= tp!795384 b_and!188729)))

(declare-fun b!2484418 () Bool)

(declare-fun e!1577368 () Bool)

(declare-datatypes ((V!5787 0))(
  ( (V!5788 (val!8943 Int)) )
))
(declare-datatypes ((K!5585 0))(
  ( (K!5586 (val!8944 Int)) )
))
(declare-datatypes ((tuple2!29052 0))(
  ( (tuple2!29053 (_1!17068 K!5585) (_2!17068 V!5787)) )
))
(declare-datatypes ((List!29274 0))(
  ( (Nil!29174) (Cons!29174 (h!34584 tuple2!29052) (t!210949 List!29274)) )
))
(declare-datatypes ((tuple2!29054 0))(
  ( (tuple2!29055 (_1!17069 (_ BitVec 64)) (_2!17069 List!29274)) )
))
(declare-datatypes ((List!29275 0))(
  ( (Nil!29175) (Cons!29175 (h!34585 tuple2!29054) (t!210950 List!29275)) )
))
(declare-datatypes ((ListLongMap!585 0))(
  ( (ListLongMap!586 (toList!1635 List!29275)) )
))
(declare-fun lt!890572 () ListLongMap!585)

(declare-datatypes ((Unit!42760 0))(
  ( (Unit!42761) )
))
(declare-datatypes ((Hashable!3310 0))(
  ( (HashableExt!3309 (__x!19106 Int)) )
))
(declare-datatypes ((array!12079 0))(
  ( (array!12080 (arr!5390 (Array (_ BitVec 32) List!29274)) (size!22809 (_ BitVec 32))) )
))
(declare-datatypes ((array!12081 0))(
  ( (array!12082 (arr!5391 (Array (_ BitVec 32) (_ BitVec 64))) (size!22810 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6800 0))(
  ( (LongMapFixedSize!6801 (defaultEntry!3774 Int) (mask!8589 (_ BitVec 32)) (extraKeys!3648 (_ BitVec 32)) (zeroValue!3658 List!29274) (minValue!3658 List!29274) (_size!6847 (_ BitVec 32)) (_keys!3697 array!12081) (_values!3680 array!12079) (_vacant!3461 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13417 0))(
  ( (Cell!13418 (v!31574 LongMapFixedSize!6800)) )
))
(declare-datatypes ((MutLongMap!3400 0))(
  ( (LongMap!3400 (underlying!7007 Cell!13417)) (MutLongMapExt!3399 (__x!19107 Int)) )
))
(declare-datatypes ((Cell!13419 0))(
  ( (Cell!13420 (v!31575 MutLongMap!3400)) )
))
(declare-datatypes ((MutableMap!3310 0))(
  ( (MutableMapExt!3309 (__x!19108 Int)) (HashMap!3310 (underlying!7008 Cell!13419) (hashF!5286 Hashable!3310) (_size!6848 (_ BitVec 32)) (defaultValue!3472 Int)) )
))
(declare-datatypes ((tuple2!29056 0))(
  ( (tuple2!29057 (_1!17070 Unit!42760) (_2!17070 MutableMap!3310)) )
))
(declare-fun lt!890564 () tuple2!29056)

(declare-fun allKeysSameHashInMap!178 (ListLongMap!585 Hashable!3310) Bool)

(assert (=> b!2484418 (= e!1577368 (allKeysSameHashInMap!178 lt!890572 (hashF!5286 (_2!17070 lt!890564))))))

(declare-fun b!2484419 () Bool)

(declare-fun e!1577370 () Bool)

(declare-fun lambda!94276 () Int)

(declare-fun forall!5989 (List!29275 Int) Bool)

(declare-fun map!6277 (MutLongMap!3400) ListLongMap!585)

(assert (=> b!2484419 (= e!1577370 (forall!5989 (toList!1635 (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564))))) lambda!94276))))

(assert (=> b!2484419 e!1577368))

(declare-fun res!1051562 () Bool)

(assert (=> b!2484419 (=> (not res!1051562) (not e!1577368))))

(assert (=> b!2484419 (= res!1051562 (forall!5989 (toList!1635 lt!890572) lambda!94276))))

(declare-fun lt!890562 () List!29274)

(declare-fun lt!890569 () (_ BitVec 64))

(declare-fun lt!890571 () ListLongMap!585)

(declare-fun +!94 (ListLongMap!585 tuple2!29054) ListLongMap!585)

(assert (=> b!2484419 (= lt!890572 (+!94 lt!890571 (tuple2!29055 lt!890569 lt!890562)))))

(declare-fun lt!890566 () Unit!42760)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!57 (ListLongMap!585 (_ BitVec 64) List!29274 Hashable!3310) Unit!42760)

(assert (=> b!2484419 (= lt!890566 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!57 lt!890571 lt!890569 lt!890562 (hashF!5286 (_2!17070 lt!890564))))))

(declare-fun allKeysSameHash!77 (List!29274 (_ BitVec 64) Hashable!3310) Bool)

(assert (=> b!2484419 (allKeysSameHash!77 lt!890562 lt!890569 (hashF!5286 (_2!17070 lt!890564)))))

(declare-fun key!2246 () K!5585)

(declare-fun lt!890563 () Unit!42760)

(declare-fun lt!890573 () List!29274)

(declare-fun lemmaRemovePairForKeyPreservesHash!66 (List!29274 K!5585 (_ BitVec 64) Hashable!3310) Unit!42760)

(assert (=> b!2484419 (= lt!890563 (lemmaRemovePairForKeyPreservesHash!66 lt!890573 key!2246 lt!890569 (hashF!5286 (_2!17070 lt!890564))))))

(assert (=> b!2484419 (allKeysSameHash!77 lt!890573 lt!890569 (hashF!5286 (_2!17070 lt!890564)))))

(declare-fun lt!890574 () Unit!42760)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!70 (List!29275 (_ BitVec 64) List!29274 Hashable!3310) Unit!42760)

(assert (=> b!2484419 (= lt!890574 (lemmaInLongMapAllKeySameHashThenForTuple!70 (toList!1635 lt!890571) lt!890569 lt!890573 (hashF!5286 (_2!17070 lt!890564))))))

(declare-fun b!2484421 () Bool)

(declare-fun e!1577372 () Bool)

(declare-fun e!1577366 () Bool)

(assert (=> b!2484421 (= e!1577372 e!1577366)))

(declare-fun e!1577364 () Bool)

(declare-fun e!1577369 () Bool)

(assert (=> b!2484422 (= e!1577364 (and e!1577369 tp!795384))))

(declare-fun b!2484423 () Bool)

(declare-fun e!1577365 () Bool)

(declare-fun tp!795379 () Bool)

(declare-fun mapRes!15693 () Bool)

(assert (=> b!2484423 (= e!1577365 (and tp!795379 mapRes!15693))))

(declare-fun condMapEmpty!15693 () Bool)

(declare-fun thiss!42540 () MutableMap!3310)

(declare-fun mapDefault!15693 () List!29274)

(assert (=> b!2484423 (= condMapEmpty!15693 (= (arr!5390 (_values!3680 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29274)) mapDefault!15693)))))

(declare-fun b!2484424 () Bool)

(declare-fun e!1577367 () Bool)

(assert (=> b!2484424 (= e!1577366 e!1577367)))

(declare-fun tp!795383 () Bool)

(declare-fun tp!795378 () Bool)

(declare-fun array_inv!3873 (array!12081) Bool)

(declare-fun array_inv!3874 (array!12079) Bool)

(assert (=> b!2484425 (= e!1577367 (and tp!795380 tp!795383 tp!795378 (array_inv!3873 (_keys!3697 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) (array_inv!3874 (_values!3680 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) e!1577365))))

(declare-fun b!2484426 () Bool)

(declare-fun res!1051559 () Bool)

(declare-fun e!1577363 () Bool)

(assert (=> b!2484426 (=> (not res!1051559) (not e!1577363))))

(declare-fun valid!2608 (MutableMap!3310) Bool)

(assert (=> b!2484426 (= res!1051559 (valid!2608 thiss!42540))))

(declare-fun res!1051558 () Bool)

(assert (=> start!242568 (=> (not res!1051558) (not e!1577363))))

(get-info :version)

(assert (=> start!242568 (= res!1051558 ((_ is HashMap!3310) thiss!42540))))

(assert (=> start!242568 e!1577363))

(assert (=> start!242568 e!1577364))

(declare-fun tp_is_empty!12345 () Bool)

(assert (=> start!242568 tp_is_empty!12345))

(declare-fun b!2484420 () Bool)

(declare-fun lt!890576 () MutLongMap!3400)

(assert (=> b!2484420 (= e!1577369 (and e!1577372 ((_ is LongMap!3400) lt!890576)))))

(assert (=> b!2484420 (= lt!890576 (v!31575 (underlying!7008 thiss!42540)))))

(declare-fun mapIsEmpty!15693 () Bool)

(assert (=> mapIsEmpty!15693 mapRes!15693))

(declare-fun b!2484427 () Bool)

(declare-fun res!1051560 () Bool)

(assert (=> b!2484427 (=> (not res!1051560) (not e!1577363))))

(declare-fun contains!5170 (MutableMap!3310 K!5585) Bool)

(assert (=> b!2484427 (= res!1051560 (contains!5170 thiss!42540 key!2246))))

(declare-fun mapNonEmpty!15693 () Bool)

(declare-fun tp!795382 () Bool)

(declare-fun tp!795381 () Bool)

(assert (=> mapNonEmpty!15693 (= mapRes!15693 (and tp!795382 tp!795381))))

(declare-fun mapRest!15693 () (Array (_ BitVec 32) List!29274))

(declare-fun mapKey!15693 () (_ BitVec 32))

(declare-fun mapValue!15693 () List!29274)

(assert (=> mapNonEmpty!15693 (= (arr!5390 (_values!3680 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) (store mapRest!15693 mapKey!15693 mapValue!15693))))

(declare-fun b!2484428 () Bool)

(assert (=> b!2484428 (= e!1577363 (not e!1577370))))

(declare-fun res!1051561 () Bool)

(assert (=> b!2484428 (=> res!1051561 e!1577370)))

(declare-datatypes ((tuple2!29058 0))(
  ( (tuple2!29059 (_1!17071 Bool) (_2!17071 MutLongMap!3400)) )
))
(declare-fun lt!890570 () tuple2!29058)

(assert (=> b!2484428 (= res!1051561 (not (_1!17071 lt!890570)))))

(declare-fun noDuplicateKeys!103 (List!29274) Bool)

(assert (=> b!2484428 (noDuplicateKeys!103 lt!890562)))

(declare-fun lt!890565 () Unit!42760)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!83 (List!29274 K!5585) Unit!42760)

(assert (=> b!2484428 (= lt!890565 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!83 lt!890573 key!2246))))

(declare-fun lt!890568 () Cell!13419)

(declare-fun Unit!42762 () Unit!42760)

(declare-fun Unit!42763 () Unit!42760)

(assert (=> b!2484428 (= lt!890564 (ite (_1!17071 lt!890570) (tuple2!29057 Unit!42762 (HashMap!3310 lt!890568 (hashF!5286 thiss!42540) (bvsub (_size!6848 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3472 thiss!42540))) (tuple2!29057 Unit!42763 (HashMap!3310 lt!890568 (hashF!5286 thiss!42540) (_size!6848 thiss!42540) (defaultValue!3472 thiss!42540)))))))

(assert (=> b!2484428 (= lt!890568 (Cell!13420 (_2!17071 lt!890570)))))

(declare-fun update!217 (MutLongMap!3400 (_ BitVec 64) List!29274) tuple2!29058)

(assert (=> b!2484428 (= lt!890570 (update!217 (v!31575 (underlying!7008 thiss!42540)) lt!890569 lt!890562))))

(declare-fun removePairForKey!95 (List!29274 K!5585) List!29274)

(assert (=> b!2484428 (= lt!890562 (removePairForKey!95 lt!890573 key!2246))))

(declare-datatypes ((ListMap!1115 0))(
  ( (ListMap!1116 (toList!1636 List!29274)) )
))
(declare-fun lt!890575 () ListMap!1115)

(declare-fun map!6278 (MutableMap!3310) ListMap!1115)

(assert (=> b!2484428 (= lt!890575 (map!6278 thiss!42540))))

(declare-fun lt!890567 () Unit!42760)

(declare-fun forallContained!884 (List!29275 Int tuple2!29054) Unit!42760)

(assert (=> b!2484428 (= lt!890567 (forallContained!884 (toList!1635 lt!890571) lambda!94276 (tuple2!29055 lt!890569 lt!890573)))))

(assert (=> b!2484428 (= lt!890571 (map!6277 (v!31575 (underlying!7008 thiss!42540))))))

(declare-fun apply!6960 (MutLongMap!3400 (_ BitVec 64)) List!29274)

(assert (=> b!2484428 (= lt!890573 (apply!6960 (v!31575 (underlying!7008 thiss!42540)) lt!890569))))

(declare-fun hash!729 (Hashable!3310 K!5585) (_ BitVec 64))

(assert (=> b!2484428 (= lt!890569 (hash!729 (hashF!5286 thiss!42540) key!2246))))

(assert (= (and start!242568 res!1051558) b!2484426))

(assert (= (and b!2484426 res!1051559) b!2484427))

(assert (= (and b!2484427 res!1051560) b!2484428))

(assert (= (and b!2484428 (not res!1051561)) b!2484419))

(assert (= (and b!2484419 res!1051562) b!2484418))

(assert (= (and b!2484423 condMapEmpty!15693) mapIsEmpty!15693))

(assert (= (and b!2484423 (not condMapEmpty!15693)) mapNonEmpty!15693))

(assert (= b!2484425 b!2484423))

(assert (= b!2484424 b!2484425))

(assert (= b!2484421 b!2484424))

(assert (= (and b!2484420 ((_ is LongMap!3400) (v!31575 (underlying!7008 thiss!42540)))) b!2484421))

(assert (= b!2484422 b!2484420))

(assert (= (and start!242568 ((_ is HashMap!3310) thiss!42540)) b!2484422))

(declare-fun m!2852379 () Bool)

(assert (=> b!2484419 m!2852379))

(declare-fun m!2852381 () Bool)

(assert (=> b!2484419 m!2852381))

(declare-fun m!2852383 () Bool)

(assert (=> b!2484419 m!2852383))

(declare-fun m!2852385 () Bool)

(assert (=> b!2484419 m!2852385))

(declare-fun m!2852387 () Bool)

(assert (=> b!2484419 m!2852387))

(declare-fun m!2852389 () Bool)

(assert (=> b!2484419 m!2852389))

(declare-fun m!2852391 () Bool)

(assert (=> b!2484419 m!2852391))

(declare-fun m!2852393 () Bool)

(assert (=> b!2484419 m!2852393))

(declare-fun m!2852395 () Bool)

(assert (=> b!2484419 m!2852395))

(declare-fun m!2852397 () Bool)

(assert (=> b!2484426 m!2852397))

(declare-fun m!2852399 () Bool)

(assert (=> b!2484427 m!2852399))

(declare-fun m!2852401 () Bool)

(assert (=> b!2484428 m!2852401))

(declare-fun m!2852403 () Bool)

(assert (=> b!2484428 m!2852403))

(declare-fun m!2852405 () Bool)

(assert (=> b!2484428 m!2852405))

(declare-fun m!2852407 () Bool)

(assert (=> b!2484428 m!2852407))

(declare-fun m!2852409 () Bool)

(assert (=> b!2484428 m!2852409))

(declare-fun m!2852411 () Bool)

(assert (=> b!2484428 m!2852411))

(declare-fun m!2852413 () Bool)

(assert (=> b!2484428 m!2852413))

(declare-fun m!2852415 () Bool)

(assert (=> b!2484428 m!2852415))

(declare-fun m!2852417 () Bool)

(assert (=> b!2484428 m!2852417))

(declare-fun m!2852419 () Bool)

(assert (=> b!2484425 m!2852419))

(declare-fun m!2852421 () Bool)

(assert (=> b!2484425 m!2852421))

(declare-fun m!2852423 () Bool)

(assert (=> b!2484418 m!2852423))

(declare-fun m!2852425 () Bool)

(assert (=> mapNonEmpty!15693 m!2852425))

(check-sat (not b_next!73161) tp_is_empty!12345 b_and!188727 b_and!188729 (not b!2484423) (not b!2484428) (not b!2484418) (not mapNonEmpty!15693) (not b!2484426) (not b_next!73163) (not b!2484419) (not b!2484425) (not b!2484427))
(check-sat b_and!188729 b_and!188727 (not b_next!73161) (not b_next!73163))
(get-model)

(declare-fun bs!467706 () Bool)

(declare-fun d!713325 () Bool)

(assert (= bs!467706 (and d!713325 b!2484428)))

(declare-fun lambda!94279 () Int)

(assert (=> bs!467706 (not (= lambda!94279 lambda!94276))))

(assert (=> d!713325 true))

(assert (=> d!713325 (= (allKeysSameHashInMap!178 lt!890572 (hashF!5286 (_2!17070 lt!890564))) (forall!5989 (toList!1635 lt!890572) lambda!94279))))

(declare-fun bs!467707 () Bool)

(assert (= bs!467707 d!713325))

(declare-fun m!2852427 () Bool)

(assert (=> bs!467707 m!2852427))

(assert (=> b!2484418 d!713325))

(declare-fun bs!467708 () Bool)

(declare-fun b!2484459 () Bool)

(assert (= bs!467708 (and b!2484459 b!2484428)))

(declare-fun lambda!94282 () Int)

(assert (=> bs!467708 (= lambda!94282 lambda!94276)))

(declare-fun bs!467709 () Bool)

(assert (= bs!467709 (and b!2484459 d!713325)))

(assert (=> bs!467709 (not (= lambda!94282 lambda!94279))))

(declare-fun bm!152294 () Bool)

(declare-fun call!152299 () (_ BitVec 64))

(assert (=> bm!152294 (= call!152299 (hash!729 (hashF!5286 thiss!42540) key!2246))))

(declare-fun b!2484453 () Bool)

(declare-fun e!1577387 () Unit!42760)

(declare-fun Unit!42764 () Unit!42760)

(assert (=> b!2484453 (= e!1577387 Unit!42764)))

(declare-fun e!1577393 () Bool)

(declare-fun b!2484454 () Bool)

(declare-fun lt!890623 () (_ BitVec 64))

(declare-datatypes ((Option!5768 0))(
  ( (None!5767) (Some!5767 (v!31580 tuple2!29052)) )
))
(declare-fun isDefined!4590 (Option!5768) Bool)

(declare-fun getPair!78 (List!29274 K!5585) Option!5768)

(assert (=> b!2484454 (= e!1577393 (isDefined!4590 (getPair!78 (apply!6960 (v!31575 (underlying!7008 thiss!42540)) lt!890623) key!2246)))))

(declare-fun b!2484455 () Bool)

(declare-fun e!1577390 () Bool)

(declare-fun call!152300 () Bool)

(assert (=> b!2484455 (= e!1577390 call!152300)))

(declare-fun b!2484456 () Bool)

(declare-fun e!1577391 () Unit!42760)

(declare-fun lt!890618 () Unit!42760)

(assert (=> b!2484456 (= e!1577391 lt!890618)))

(declare-fun lt!890632 () ListLongMap!585)

(declare-fun call!152304 () ListLongMap!585)

(assert (=> b!2484456 (= lt!890632 call!152304)))

(declare-fun lemmaInGenericMapThenInLongMap!78 (ListLongMap!585 K!5585 Hashable!3310) Unit!42760)

(assert (=> b!2484456 (= lt!890618 (lemmaInGenericMapThenInLongMap!78 lt!890632 key!2246 (hashF!5286 thiss!42540)))))

(declare-fun res!1051571 () Bool)

(declare-fun call!152301 () Bool)

(assert (=> b!2484456 (= res!1051571 call!152301)))

(declare-fun e!1577389 () Bool)

(assert (=> b!2484456 (=> (not res!1051571) (not e!1577389))))

(assert (=> b!2484456 e!1577389))

(declare-fun d!713327 () Bool)

(declare-fun lt!890635 () Bool)

(declare-fun contains!5171 (ListMap!1115 K!5585) Bool)

(assert (=> d!713327 (= lt!890635 (contains!5171 (map!6278 thiss!42540) key!2246))))

(assert (=> d!713327 (= lt!890635 e!1577393)))

(declare-fun res!1051570 () Bool)

(assert (=> d!713327 (=> (not res!1051570) (not e!1577393))))

(declare-fun contains!5172 (MutLongMap!3400 (_ BitVec 64)) Bool)

(assert (=> d!713327 (= res!1051570 (contains!5172 (v!31575 (underlying!7008 thiss!42540)) lt!890623))))

(declare-fun lt!890631 () Unit!42760)

(assert (=> d!713327 (= lt!890631 e!1577391)))

(declare-fun c!394924 () Bool)

(declare-fun extractMap!183 (List!29275) ListMap!1115)

(assert (=> d!713327 (= c!394924 (contains!5171 (extractMap!183 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540))))) key!2246))))

(declare-fun lt!890626 () Unit!42760)

(assert (=> d!713327 (= lt!890626 e!1577387)))

(declare-fun c!394922 () Bool)

(assert (=> d!713327 (= c!394922 (contains!5172 (v!31575 (underlying!7008 thiss!42540)) lt!890623))))

(assert (=> d!713327 (= lt!890623 (hash!729 (hashF!5286 thiss!42540) key!2246))))

(assert (=> d!713327 (valid!2608 thiss!42540)))

(assert (=> d!713327 (= (contains!5170 thiss!42540 key!2246) lt!890635)))

(declare-fun b!2484457 () Bool)

(assert (=> b!2484457 false))

(declare-fun lt!890620 () Unit!42760)

(declare-fun lt!890629 () Unit!42760)

(assert (=> b!2484457 (= lt!890620 lt!890629)))

(declare-fun lt!890617 () List!29275)

(declare-fun lt!890625 () List!29274)

(declare-fun contains!5173 (List!29275 tuple2!29054) Bool)

(assert (=> b!2484457 (contains!5173 lt!890617 (tuple2!29055 lt!890623 lt!890625))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!83 (List!29275 (_ BitVec 64) List!29274) Unit!42760)

(assert (=> b!2484457 (= lt!890629 (lemmaGetValueByKeyImpliesContainsTuple!83 lt!890617 lt!890623 lt!890625))))

(assert (=> b!2484457 (= lt!890625 (apply!6960 (v!31575 (underlying!7008 thiss!42540)) lt!890623))))

(assert (=> b!2484457 (= lt!890617 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540)))))))

(declare-fun lt!890627 () Unit!42760)

(declare-fun lt!890621 () Unit!42760)

(assert (=> b!2484457 (= lt!890627 lt!890621)))

(declare-fun lt!890630 () List!29275)

(declare-datatypes ((Option!5769 0))(
  ( (None!5768) (Some!5768 (v!31581 List!29274)) )
))
(declare-fun isDefined!4591 (Option!5769) Bool)

(declare-fun getValueByKey!147 (List!29275 (_ BitVec 64)) Option!5769)

(assert (=> b!2484457 (isDefined!4591 (getValueByKey!147 lt!890630 lt!890623))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!104 (List!29275 (_ BitVec 64)) Unit!42760)

(assert (=> b!2484457 (= lt!890621 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 lt!890630 lt!890623))))

(assert (=> b!2484457 (= lt!890630 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540)))))))

(declare-fun lt!890634 () Unit!42760)

(declare-fun lt!890636 () Unit!42760)

(assert (=> b!2484457 (= lt!890634 lt!890636)))

(declare-fun lt!890628 () List!29275)

(declare-fun containsKey!152 (List!29275 (_ BitVec 64)) Bool)

(assert (=> b!2484457 (containsKey!152 lt!890628 lt!890623)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!79 (List!29275 (_ BitVec 64)) Unit!42760)

(assert (=> b!2484457 (= lt!890636 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!79 lt!890628 lt!890623))))

(assert (=> b!2484457 (= lt!890628 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540)))))))

(declare-fun e!1577392 () Unit!42760)

(declare-fun Unit!42765 () Unit!42760)

(assert (=> b!2484457 (= e!1577392 Unit!42765)))

(declare-fun bm!152295 () Bool)

(declare-fun call!152303 () Option!5768)

(declare-fun call!152302 () List!29274)

(assert (=> bm!152295 (= call!152303 (getPair!78 call!152302 key!2246))))

(declare-fun bm!152296 () Bool)

(declare-fun contains!5174 (ListLongMap!585 (_ BitVec 64)) Bool)

(assert (=> bm!152296 (= call!152301 (contains!5174 (ite c!394924 lt!890632 call!152304) call!152299))))

(declare-fun b!2484458 () Bool)

(declare-fun Unit!42766 () Unit!42760)

(assert (=> b!2484458 (= e!1577392 Unit!42766)))

(assert (=> b!2484459 (= e!1577387 (forallContained!884 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540)))) lambda!94282 (tuple2!29055 lt!890623 (apply!6960 (v!31575 (underlying!7008 thiss!42540)) lt!890623))))))

(declare-fun c!394925 () Bool)

(assert (=> b!2484459 (= c!394925 (not (contains!5173 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540)))) (tuple2!29055 lt!890623 (apply!6960 (v!31575 (underlying!7008 thiss!42540)) lt!890623)))))))

(declare-fun lt!890624 () Unit!42760)

(assert (=> b!2484459 (= lt!890624 e!1577392)))

(declare-fun b!2484460 () Bool)

(declare-fun e!1577388 () Unit!42760)

(declare-fun Unit!42767 () Unit!42760)

(assert (=> b!2484460 (= e!1577388 Unit!42767)))

(declare-fun bm!152297 () Bool)

(assert (=> bm!152297 (= call!152300 (isDefined!4590 call!152303))))

(declare-fun b!2484461 () Bool)

(assert (=> b!2484461 (= e!1577391 e!1577388)))

(declare-fun res!1051569 () Bool)

(assert (=> b!2484461 (= res!1051569 call!152301)))

(assert (=> b!2484461 (=> (not res!1051569) (not e!1577390))))

(declare-fun c!394923 () Bool)

(assert (=> b!2484461 (= c!394923 e!1577390)))

(declare-fun bm!152298 () Bool)

(declare-fun apply!6961 (ListLongMap!585 (_ BitVec 64)) List!29274)

(assert (=> bm!152298 (= call!152302 (apply!6961 (ite c!394924 lt!890632 call!152304) call!152299))))

(declare-fun b!2484462 () Bool)

(assert (=> b!2484462 (= e!1577389 call!152300)))

(declare-fun bm!152299 () Bool)

(assert (=> bm!152299 (= call!152304 (map!6277 (v!31575 (underlying!7008 thiss!42540))))))

(declare-fun b!2484463 () Bool)

(assert (=> b!2484463 false))

(declare-fun lt!890622 () Unit!42760)

(declare-fun lt!890619 () Unit!42760)

(assert (=> b!2484463 (= lt!890622 lt!890619)))

(declare-fun lt!890633 () ListLongMap!585)

(assert (=> b!2484463 (contains!5171 (extractMap!183 (toList!1635 lt!890633)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!78 (ListLongMap!585 K!5585 Hashable!3310) Unit!42760)

(assert (=> b!2484463 (= lt!890619 (lemmaInLongMapThenInGenericMap!78 lt!890633 key!2246 (hashF!5286 thiss!42540)))))

(assert (=> b!2484463 (= lt!890633 call!152304)))

(declare-fun Unit!42768 () Unit!42760)

(assert (=> b!2484463 (= e!1577388 Unit!42768)))

(assert (= (and d!713327 c!394922) b!2484459))

(assert (= (and d!713327 (not c!394922)) b!2484453))

(assert (= (and b!2484459 c!394925) b!2484457))

(assert (= (and b!2484459 (not c!394925)) b!2484458))

(assert (= (and d!713327 c!394924) b!2484456))

(assert (= (and d!713327 (not c!394924)) b!2484461))

(assert (= (and b!2484456 res!1051571) b!2484462))

(assert (= (and b!2484461 res!1051569) b!2484455))

(assert (= (and b!2484461 c!394923) b!2484463))

(assert (= (and b!2484461 (not c!394923)) b!2484460))

(assert (= (or b!2484456 b!2484461 b!2484455 b!2484463) bm!152299))

(assert (= (or b!2484456 b!2484462 b!2484461 b!2484455) bm!152294))

(assert (= (or b!2484456 b!2484461) bm!152296))

(assert (= (or b!2484462 b!2484455) bm!152298))

(assert (= (or b!2484462 b!2484455) bm!152295))

(assert (= (or b!2484462 b!2484455) bm!152297))

(assert (= (and d!713327 res!1051570) b!2484454))

(assert (=> bm!152294 m!2852415))

(declare-fun m!2852429 () Bool)

(assert (=> b!2484457 m!2852429))

(declare-fun m!2852431 () Bool)

(assert (=> b!2484457 m!2852431))

(declare-fun m!2852433 () Bool)

(assert (=> b!2484457 m!2852433))

(assert (=> b!2484457 m!2852401))

(declare-fun m!2852435 () Bool)

(assert (=> b!2484457 m!2852435))

(declare-fun m!2852437 () Bool)

(assert (=> b!2484457 m!2852437))

(declare-fun m!2852439 () Bool)

(assert (=> b!2484457 m!2852439))

(assert (=> b!2484457 m!2852435))

(declare-fun m!2852441 () Bool)

(assert (=> b!2484457 m!2852441))

(declare-fun m!2852443 () Bool)

(assert (=> b!2484457 m!2852443))

(declare-fun m!2852445 () Bool)

(assert (=> bm!152296 m!2852445))

(assert (=> d!713327 m!2852397))

(assert (=> d!713327 m!2852403))

(declare-fun m!2852447 () Bool)

(assert (=> d!713327 m!2852447))

(declare-fun m!2852449 () Bool)

(assert (=> d!713327 m!2852449))

(declare-fun m!2852451 () Bool)

(assert (=> d!713327 m!2852451))

(assert (=> d!713327 m!2852449))

(assert (=> d!713327 m!2852415))

(assert (=> d!713327 m!2852403))

(declare-fun m!2852453 () Bool)

(assert (=> d!713327 m!2852453))

(assert (=> d!713327 m!2852401))

(assert (=> b!2484459 m!2852401))

(assert (=> b!2484459 m!2852439))

(declare-fun m!2852455 () Bool)

(assert (=> b!2484459 m!2852455))

(declare-fun m!2852457 () Bool)

(assert (=> b!2484459 m!2852457))

(declare-fun m!2852459 () Bool)

(assert (=> b!2484456 m!2852459))

(declare-fun m!2852461 () Bool)

(assert (=> bm!152298 m!2852461))

(declare-fun m!2852463 () Bool)

(assert (=> bm!152295 m!2852463))

(assert (=> bm!152299 m!2852401))

(declare-fun m!2852465 () Bool)

(assert (=> bm!152297 m!2852465))

(assert (=> b!2484454 m!2852439))

(assert (=> b!2484454 m!2852439))

(declare-fun m!2852467 () Bool)

(assert (=> b!2484454 m!2852467))

(assert (=> b!2484454 m!2852467))

(declare-fun m!2852469 () Bool)

(assert (=> b!2484454 m!2852469))

(declare-fun m!2852471 () Bool)

(assert (=> b!2484463 m!2852471))

(assert (=> b!2484463 m!2852471))

(declare-fun m!2852473 () Bool)

(assert (=> b!2484463 m!2852473))

(declare-fun m!2852475 () Bool)

(assert (=> b!2484463 m!2852475))

(assert (=> b!2484427 d!713327))

(declare-fun d!713329 () Bool)

(assert (=> d!713329 (= (array_inv!3873 (_keys!3697 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) (bvsge (size!22810 (_keys!3697 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484425 d!713329))

(declare-fun d!713331 () Bool)

(assert (=> d!713331 (= (array_inv!3874 (_values!3680 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) (bvsge (size!22809 (_values!3680 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2484425 d!713331))

(declare-fun d!713333 () Bool)

(declare-fun dynLambda!12492 (Int tuple2!29054) Bool)

(assert (=> d!713333 (dynLambda!12492 lambda!94276 (tuple2!29055 lt!890569 lt!890573))))

(declare-fun lt!890639 () Unit!42760)

(declare-fun choose!14671 (List!29275 Int tuple2!29054) Unit!42760)

(assert (=> d!713333 (= lt!890639 (choose!14671 (toList!1635 lt!890571) lambda!94276 (tuple2!29055 lt!890569 lt!890573)))))

(declare-fun e!1577396 () Bool)

(assert (=> d!713333 e!1577396))

(declare-fun res!1051574 () Bool)

(assert (=> d!713333 (=> (not res!1051574) (not e!1577396))))

(assert (=> d!713333 (= res!1051574 (forall!5989 (toList!1635 lt!890571) lambda!94276))))

(assert (=> d!713333 (= (forallContained!884 (toList!1635 lt!890571) lambda!94276 (tuple2!29055 lt!890569 lt!890573)) lt!890639)))

(declare-fun b!2484466 () Bool)

(assert (=> b!2484466 (= e!1577396 (contains!5173 (toList!1635 lt!890571) (tuple2!29055 lt!890569 lt!890573)))))

(assert (= (and d!713333 res!1051574) b!2484466))

(declare-fun b_lambda!76239 () Bool)

(assert (=> (not b_lambda!76239) (not d!713333)))

(declare-fun m!2852477 () Bool)

(assert (=> d!713333 m!2852477))

(declare-fun m!2852479 () Bool)

(assert (=> d!713333 m!2852479))

(declare-fun m!2852481 () Bool)

(assert (=> d!713333 m!2852481))

(declare-fun m!2852483 () Bool)

(assert (=> b!2484466 m!2852483))

(assert (=> b!2484428 d!713333))

(declare-fun b!2484478 () Bool)

(declare-fun e!1577402 () List!29274)

(assert (=> b!2484478 (= e!1577402 Nil!29174)))

(declare-fun b!2484476 () Bool)

(declare-fun e!1577401 () List!29274)

(assert (=> b!2484476 (= e!1577401 e!1577402)))

(declare-fun c!394931 () Bool)

(assert (=> b!2484476 (= c!394931 ((_ is Cons!29174) lt!890573))))

(declare-fun d!713335 () Bool)

(declare-fun lt!890642 () List!29274)

(declare-fun containsKey!153 (List!29274 K!5585) Bool)

(assert (=> d!713335 (not (containsKey!153 lt!890642 key!2246))))

(assert (=> d!713335 (= lt!890642 e!1577401)))

(declare-fun c!394930 () Bool)

(assert (=> d!713335 (= c!394930 (and ((_ is Cons!29174) lt!890573) (= (_1!17068 (h!34584 lt!890573)) key!2246)))))

(assert (=> d!713335 (noDuplicateKeys!103 lt!890573)))

(assert (=> d!713335 (= (removePairForKey!95 lt!890573 key!2246) lt!890642)))

(declare-fun b!2484477 () Bool)

(assert (=> b!2484477 (= e!1577402 (Cons!29174 (h!34584 lt!890573) (removePairForKey!95 (t!210949 lt!890573) key!2246)))))

(declare-fun b!2484475 () Bool)

(assert (=> b!2484475 (= e!1577401 (t!210949 lt!890573))))

(assert (= (and d!713335 c!394930) b!2484475))

(assert (= (and d!713335 (not c!394930)) b!2484476))

(assert (= (and b!2484476 c!394931) b!2484477))

(assert (= (and b!2484476 (not c!394931)) b!2484478))

(declare-fun m!2852485 () Bool)

(assert (=> d!713335 m!2852485))

(declare-fun m!2852487 () Bool)

(assert (=> d!713335 m!2852487))

(declare-fun m!2852489 () Bool)

(assert (=> b!2484477 m!2852489))

(assert (=> b!2484428 d!713335))

(declare-fun d!713337 () Bool)

(declare-fun e!1577405 () Bool)

(assert (=> d!713337 e!1577405))

(declare-fun c!394934 () Bool)

(assert (=> d!713337 (= c!394934 (contains!5172 (v!31575 (underlying!7008 thiss!42540)) lt!890569))))

(declare-fun lt!890645 () List!29274)

(declare-fun apply!6962 (LongMapFixedSize!6800 (_ BitVec 64)) List!29274)

(assert (=> d!713337 (= lt!890645 (apply!6962 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))) lt!890569))))

(declare-fun valid!2609 (MutLongMap!3400) Bool)

(assert (=> d!713337 (valid!2609 (v!31575 (underlying!7008 thiss!42540)))))

(assert (=> d!713337 (= (apply!6960 (v!31575 (underlying!7008 thiss!42540)) lt!890569) lt!890645)))

(declare-fun b!2484483 () Bool)

(declare-fun get!9003 (Option!5769) List!29274)

(assert (=> b!2484483 (= e!1577405 (= lt!890645 (get!9003 (getValueByKey!147 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540)))) lt!890569))))))

(declare-fun b!2484484 () Bool)

(declare-fun dynLambda!12493 (Int (_ BitVec 64)) List!29274)

(assert (=> b!2484484 (= e!1577405 (= lt!890645 (dynLambda!12493 (defaultEntry!3774 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540))))) lt!890569)))))

(assert (=> b!2484484 ((_ is LongMap!3400) (v!31575 (underlying!7008 thiss!42540)))))

(assert (= (and d!713337 c!394934) b!2484483))

(assert (= (and d!713337 (not c!394934)) b!2484484))

(declare-fun b_lambda!76241 () Bool)

(assert (=> (not b_lambda!76241) (not b!2484484)))

(declare-fun t!210952 () Bool)

(declare-fun tb!140393 () Bool)

(assert (=> (and b!2484425 (= (defaultEntry!3774 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540))))) (defaultEntry!3774 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540)))))) t!210952) tb!140393))

(assert (=> b!2484484 t!210952))

(declare-fun result!173374 () Bool)

(declare-fun b_and!188731 () Bool)

(assert (= b_and!188727 (and (=> t!210952 result!173374) b_and!188731)))

(declare-fun m!2852491 () Bool)

(assert (=> d!713337 m!2852491))

(declare-fun m!2852493 () Bool)

(assert (=> d!713337 m!2852493))

(declare-fun m!2852495 () Bool)

(assert (=> d!713337 m!2852495))

(assert (=> b!2484483 m!2852401))

(declare-fun m!2852497 () Bool)

(assert (=> b!2484483 m!2852497))

(assert (=> b!2484483 m!2852497))

(declare-fun m!2852499 () Bool)

(assert (=> b!2484483 m!2852499))

(declare-fun m!2852501 () Bool)

(assert (=> b!2484484 m!2852501))

(assert (=> b!2484428 d!713337))

(declare-fun d!713339 () Bool)

(declare-fun hash!733 (Hashable!3310 K!5585) (_ BitVec 64))

(assert (=> d!713339 (= (hash!729 (hashF!5286 thiss!42540) key!2246) (hash!733 (hashF!5286 thiss!42540) key!2246))))

(declare-fun bs!467710 () Bool)

(assert (= bs!467710 d!713339))

(declare-fun m!2852503 () Bool)

(assert (=> bs!467710 m!2852503))

(assert (=> b!2484428 d!713339))

(declare-fun d!713341 () Bool)

(declare-fun res!1051579 () Bool)

(declare-fun e!1577410 () Bool)

(assert (=> d!713341 (=> res!1051579 e!1577410)))

(assert (=> d!713341 (= res!1051579 (not ((_ is Cons!29174) lt!890562)))))

(assert (=> d!713341 (= (noDuplicateKeys!103 lt!890562) e!1577410)))

(declare-fun b!2484489 () Bool)

(declare-fun e!1577411 () Bool)

(assert (=> b!2484489 (= e!1577410 e!1577411)))

(declare-fun res!1051580 () Bool)

(assert (=> b!2484489 (=> (not res!1051580) (not e!1577411))))

(assert (=> b!2484489 (= res!1051580 (not (containsKey!153 (t!210949 lt!890562) (_1!17068 (h!34584 lt!890562)))))))

(declare-fun b!2484490 () Bool)

(assert (=> b!2484490 (= e!1577411 (noDuplicateKeys!103 (t!210949 lt!890562)))))

(assert (= (and d!713341 (not res!1051579)) b!2484489))

(assert (= (and b!2484489 res!1051580) b!2484490))

(declare-fun m!2852505 () Bool)

(assert (=> b!2484489 m!2852505))

(declare-fun m!2852507 () Bool)

(assert (=> b!2484490 m!2852507))

(assert (=> b!2484428 d!713341))

(declare-fun d!713343 () Bool)

(declare-fun map!6279 (LongMapFixedSize!6800) ListLongMap!585)

(assert (=> d!713343 (= (map!6277 (v!31575 (underlying!7008 thiss!42540))) (map!6279 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540))))))))

(declare-fun bs!467711 () Bool)

(assert (= bs!467711 d!713343))

(declare-fun m!2852509 () Bool)

(assert (=> bs!467711 m!2852509))

(assert (=> b!2484428 d!713343))

(declare-fun call!152309 () ListLongMap!585)

(declare-fun b!2484509 () Bool)

(declare-fun e!1577426 () Bool)

(declare-fun call!152310 () ListLongMap!585)

(assert (=> b!2484509 (= e!1577426 (= call!152309 (+!94 call!152310 (tuple2!29055 lt!890569 lt!890562))))))

(declare-fun b!2484510 () Bool)

(declare-fun e!1577423 () tuple2!29058)

(declare-fun lt!890654 () tuple2!29058)

(assert (=> b!2484510 (= e!1577423 (tuple2!29059 false (_2!17071 lt!890654)))))

(declare-fun b!2484511 () Bool)

(declare-fun res!1051587 () Bool)

(declare-fun e!1577422 () Bool)

(assert (=> b!2484511 (=> (not res!1051587) (not e!1577422))))

(declare-fun lt!890656 () tuple2!29058)

(assert (=> b!2484511 (= res!1051587 (valid!2609 (_2!17071 lt!890656)))))

(declare-fun b!2484512 () Bool)

(declare-fun e!1577424 () tuple2!29058)

(assert (=> b!2484512 (= e!1577424 (tuple2!29059 true (v!31575 (underlying!7008 thiss!42540))))))

(declare-fun d!713345 () Bool)

(assert (=> d!713345 e!1577422))

(declare-fun res!1051588 () Bool)

(assert (=> d!713345 (=> (not res!1051588) (not e!1577422))))

(assert (=> d!713345 (= res!1051588 ((_ is LongMap!3400) (_2!17071 lt!890656)))))

(assert (=> d!713345 (= lt!890656 e!1577423)))

(declare-fun c!394941 () Bool)

(assert (=> d!713345 (= c!394941 (_1!17071 lt!890654))))

(assert (=> d!713345 (= lt!890654 e!1577424)))

(declare-fun c!394943 () Bool)

(declare-fun imbalanced!22 (MutLongMap!3400) Bool)

(assert (=> d!713345 (= c!394943 (imbalanced!22 (v!31575 (underlying!7008 thiss!42540))))))

(assert (=> d!713345 (valid!2609 (v!31575 (underlying!7008 thiss!42540)))))

(assert (=> d!713345 (= (update!217 (v!31575 (underlying!7008 thiss!42540)) lt!890569 lt!890562) lt!890656)))

(declare-fun b!2484513 () Bool)

(declare-fun e!1577425 () Bool)

(assert (=> b!2484513 (= e!1577422 e!1577425)))

(declare-fun c!394942 () Bool)

(assert (=> b!2484513 (= c!394942 (_1!17071 lt!890656))))

(declare-fun b!2484514 () Bool)

(declare-datatypes ((tuple2!29060 0))(
  ( (tuple2!29061 (_1!17072 Bool) (_2!17072 LongMapFixedSize!6800)) )
))
(declare-fun lt!890657 () tuple2!29060)

(assert (=> b!2484514 (= e!1577423 (tuple2!29059 (_1!17072 lt!890657) (LongMap!3400 (Cell!13418 (_2!17072 lt!890657)))))))

(declare-fun update!218 (LongMapFixedSize!6800 (_ BitVec 64) List!29274) tuple2!29060)

(assert (=> b!2484514 (= lt!890657 (update!218 (v!31574 (underlying!7007 (_2!17071 lt!890654))) lt!890569 lt!890562))))

(declare-fun bm!152304 () Bool)

(assert (=> bm!152304 (= call!152310 (map!6277 (ite c!394942 (v!31575 (underlying!7008 thiss!42540)) (_2!17071 lt!890656))))))

(declare-fun b!2484515 () Bool)

(declare-fun lt!890655 () tuple2!29058)

(assert (=> b!2484515 (= e!1577424 (tuple2!29059 (_1!17071 lt!890655) (_2!17071 lt!890655)))))

(declare-fun repack!26 (MutLongMap!3400) tuple2!29058)

(assert (=> b!2484515 (= lt!890655 (repack!26 (v!31575 (underlying!7008 thiss!42540))))))

(declare-fun bm!152305 () Bool)

(assert (=> bm!152305 (= call!152309 (map!6277 (ite c!394942 (_2!17071 lt!890656) (v!31575 (underlying!7008 thiss!42540)))))))

(declare-fun b!2484516 () Bool)

(assert (=> b!2484516 (= e!1577425 (= call!152310 call!152309))))

(declare-fun b!2484517 () Bool)

(assert (=> b!2484517 (= e!1577425 e!1577426)))

(declare-fun res!1051589 () Bool)

(assert (=> b!2484517 (= res!1051589 (contains!5174 call!152309 lt!890569))))

(assert (=> b!2484517 (=> (not res!1051589) (not e!1577426))))

(assert (= (and d!713345 c!394943) b!2484515))

(assert (= (and d!713345 (not c!394943)) b!2484512))

(assert (= (and d!713345 c!394941) b!2484514))

(assert (= (and d!713345 (not c!394941)) b!2484510))

(assert (= (and d!713345 res!1051588) b!2484511))

(assert (= (and b!2484511 res!1051587) b!2484513))

(assert (= (and b!2484513 c!394942) b!2484517))

(assert (= (and b!2484513 (not c!394942)) b!2484516))

(assert (= (and b!2484517 res!1051589) b!2484509))

(assert (= (or b!2484509 b!2484516) bm!152304))

(assert (= (or b!2484517 b!2484509 b!2484516) bm!152305))

(declare-fun m!2852511 () Bool)

(assert (=> b!2484509 m!2852511))

(declare-fun m!2852513 () Bool)

(assert (=> b!2484511 m!2852513))

(declare-fun m!2852515 () Bool)

(assert (=> bm!152304 m!2852515))

(declare-fun m!2852517 () Bool)

(assert (=> b!2484514 m!2852517))

(declare-fun m!2852519 () Bool)

(assert (=> bm!152305 m!2852519))

(declare-fun m!2852521 () Bool)

(assert (=> d!713345 m!2852521))

(assert (=> d!713345 m!2852495))

(declare-fun m!2852523 () Bool)

(assert (=> b!2484515 m!2852523))

(declare-fun m!2852525 () Bool)

(assert (=> b!2484517 m!2852525))

(assert (=> b!2484428 d!713345))

(declare-fun d!713347 () Bool)

(declare-fun lt!890660 () ListMap!1115)

(declare-fun invariantList!417 (List!29274) Bool)

(assert (=> d!713347 (invariantList!417 (toList!1636 lt!890660))))

(assert (=> d!713347 (= lt!890660 (extractMap!183 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540))))))))

(assert (=> d!713347 (valid!2608 thiss!42540)))

(assert (=> d!713347 (= (map!6278 thiss!42540) lt!890660)))

(declare-fun bs!467712 () Bool)

(assert (= bs!467712 d!713347))

(declare-fun m!2852527 () Bool)

(assert (=> bs!467712 m!2852527))

(assert (=> bs!467712 m!2852401))

(assert (=> bs!467712 m!2852449))

(assert (=> bs!467712 m!2852397))

(assert (=> b!2484428 d!713347))

(declare-fun d!713349 () Bool)

(assert (=> d!713349 (noDuplicateKeys!103 (removePairForKey!95 lt!890573 key!2246))))

(declare-fun lt!890663 () Unit!42760)

(declare-fun choose!14672 (List!29274 K!5585) Unit!42760)

(assert (=> d!713349 (= lt!890663 (choose!14672 lt!890573 key!2246))))

(assert (=> d!713349 (noDuplicateKeys!103 lt!890573)))

(assert (=> d!713349 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!83 lt!890573 key!2246) lt!890663)))

(declare-fun bs!467713 () Bool)

(assert (= bs!467713 d!713349))

(assert (=> bs!467713 m!2852411))

(assert (=> bs!467713 m!2852411))

(declare-fun m!2852529 () Bool)

(assert (=> bs!467713 m!2852529))

(declare-fun m!2852531 () Bool)

(assert (=> bs!467713 m!2852531))

(assert (=> bs!467713 m!2852487))

(assert (=> b!2484428 d!713349))

(declare-fun d!713351 () Bool)

(assert (=> d!713351 (allKeysSameHash!77 (removePairForKey!95 lt!890573 key!2246) lt!890569 (hashF!5286 (_2!17070 lt!890564)))))

(declare-fun lt!890666 () Unit!42760)

(declare-fun choose!14673 (List!29274 K!5585 (_ BitVec 64) Hashable!3310) Unit!42760)

(assert (=> d!713351 (= lt!890666 (choose!14673 lt!890573 key!2246 lt!890569 (hashF!5286 (_2!17070 lt!890564))))))

(assert (=> d!713351 (noDuplicateKeys!103 lt!890573)))

(assert (=> d!713351 (= (lemmaRemovePairForKeyPreservesHash!66 lt!890573 key!2246 lt!890569 (hashF!5286 (_2!17070 lt!890564))) lt!890666)))

(declare-fun bs!467714 () Bool)

(assert (= bs!467714 d!713351))

(assert (=> bs!467714 m!2852411))

(assert (=> bs!467714 m!2852411))

(declare-fun m!2852533 () Bool)

(assert (=> bs!467714 m!2852533))

(declare-fun m!2852535 () Bool)

(assert (=> bs!467714 m!2852535))

(assert (=> bs!467714 m!2852487))

(assert (=> b!2484419 d!713351))

(declare-fun d!713353 () Bool)

(declare-fun e!1577429 () Bool)

(assert (=> d!713353 e!1577429))

(declare-fun res!1051594 () Bool)

(assert (=> d!713353 (=> (not res!1051594) (not e!1577429))))

(declare-fun lt!890678 () ListLongMap!585)

(assert (=> d!713353 (= res!1051594 (contains!5174 lt!890678 (_1!17069 (tuple2!29055 lt!890569 lt!890562))))))

(declare-fun lt!890676 () List!29275)

(assert (=> d!713353 (= lt!890678 (ListLongMap!586 lt!890676))))

(declare-fun lt!890677 () Unit!42760)

(declare-fun lt!890675 () Unit!42760)

(assert (=> d!713353 (= lt!890677 lt!890675)))

(assert (=> d!713353 (= (getValueByKey!147 lt!890676 (_1!17069 (tuple2!29055 lt!890569 lt!890562))) (Some!5768 (_2!17069 (tuple2!29055 lt!890569 lt!890562))))))

(declare-fun lemmaContainsTupThenGetReturnValue!21 (List!29275 (_ BitVec 64) List!29274) Unit!42760)

(assert (=> d!713353 (= lt!890675 (lemmaContainsTupThenGetReturnValue!21 lt!890676 (_1!17069 (tuple2!29055 lt!890569 lt!890562)) (_2!17069 (tuple2!29055 lt!890569 lt!890562))))))

(declare-fun insertStrictlySorted!15 (List!29275 (_ BitVec 64) List!29274) List!29275)

(assert (=> d!713353 (= lt!890676 (insertStrictlySorted!15 (toList!1635 lt!890571) (_1!17069 (tuple2!29055 lt!890569 lt!890562)) (_2!17069 (tuple2!29055 lt!890569 lt!890562))))))

(assert (=> d!713353 (= (+!94 lt!890571 (tuple2!29055 lt!890569 lt!890562)) lt!890678)))

(declare-fun b!2484522 () Bool)

(declare-fun res!1051595 () Bool)

(assert (=> b!2484522 (=> (not res!1051595) (not e!1577429))))

(assert (=> b!2484522 (= res!1051595 (= (getValueByKey!147 (toList!1635 lt!890678) (_1!17069 (tuple2!29055 lt!890569 lt!890562))) (Some!5768 (_2!17069 (tuple2!29055 lt!890569 lt!890562)))))))

(declare-fun b!2484523 () Bool)

(assert (=> b!2484523 (= e!1577429 (contains!5173 (toList!1635 lt!890678) (tuple2!29055 lt!890569 lt!890562)))))

(assert (= (and d!713353 res!1051594) b!2484522))

(assert (= (and b!2484522 res!1051595) b!2484523))

(declare-fun m!2852537 () Bool)

(assert (=> d!713353 m!2852537))

(declare-fun m!2852539 () Bool)

(assert (=> d!713353 m!2852539))

(declare-fun m!2852541 () Bool)

(assert (=> d!713353 m!2852541))

(declare-fun m!2852543 () Bool)

(assert (=> d!713353 m!2852543))

(declare-fun m!2852545 () Bool)

(assert (=> b!2484522 m!2852545))

(declare-fun m!2852547 () Bool)

(assert (=> b!2484523 m!2852547))

(assert (=> b!2484419 d!713353))

(declare-fun d!713355 () Bool)

(assert (=> d!713355 (= (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564)))) (map!6279 (v!31574 (underlying!7007 (v!31575 (underlying!7008 (_2!17070 lt!890564)))))))))

(declare-fun bs!467715 () Bool)

(assert (= bs!467715 d!713355))

(declare-fun m!2852549 () Bool)

(assert (=> bs!467715 m!2852549))

(assert (=> b!2484419 d!713355))

(declare-fun d!713357 () Bool)

(assert (=> d!713357 true))

(assert (=> d!713357 true))

(declare-fun lambda!94285 () Int)

(declare-fun forall!5990 (List!29274 Int) Bool)

(assert (=> d!713357 (= (allKeysSameHash!77 lt!890562 lt!890569 (hashF!5286 (_2!17070 lt!890564))) (forall!5990 lt!890562 lambda!94285))))

(declare-fun bs!467716 () Bool)

(assert (= bs!467716 d!713357))

(declare-fun m!2852551 () Bool)

(assert (=> bs!467716 m!2852551))

(assert (=> b!2484419 d!713357))

(declare-fun bs!467717 () Bool)

(declare-fun d!713359 () Bool)

(assert (= bs!467717 (and d!713359 b!2484428)))

(declare-fun lambda!94288 () Int)

(assert (=> bs!467717 (not (= lambda!94288 lambda!94276))))

(declare-fun bs!467718 () Bool)

(assert (= bs!467718 (and d!713359 d!713325)))

(assert (=> bs!467718 (= lambda!94288 lambda!94279)))

(declare-fun bs!467719 () Bool)

(assert (= bs!467719 (and d!713359 b!2484459)))

(assert (=> bs!467719 (not (= lambda!94288 lambda!94282))))

(assert (=> d!713359 true))

(assert (=> d!713359 (allKeysSameHash!77 lt!890573 lt!890569 (hashF!5286 (_2!17070 lt!890564)))))

(declare-fun lt!890681 () Unit!42760)

(declare-fun choose!14674 (List!29275 (_ BitVec 64) List!29274 Hashable!3310) Unit!42760)

(assert (=> d!713359 (= lt!890681 (choose!14674 (toList!1635 lt!890571) lt!890569 lt!890573 (hashF!5286 (_2!17070 lt!890564))))))

(assert (=> d!713359 (forall!5989 (toList!1635 lt!890571) lambda!94288)))

(assert (=> d!713359 (= (lemmaInLongMapAllKeySameHashThenForTuple!70 (toList!1635 lt!890571) lt!890569 lt!890573 (hashF!5286 (_2!17070 lt!890564))) lt!890681)))

(declare-fun bs!467720 () Bool)

(assert (= bs!467720 d!713359))

(assert (=> bs!467720 m!2852391))

(declare-fun m!2852553 () Bool)

(assert (=> bs!467720 m!2852553))

(declare-fun m!2852555 () Bool)

(assert (=> bs!467720 m!2852555))

(assert (=> b!2484419 d!713359))

(declare-fun d!713361 () Bool)

(declare-fun res!1051600 () Bool)

(declare-fun e!1577434 () Bool)

(assert (=> d!713361 (=> res!1051600 e!1577434)))

(assert (=> d!713361 (= res!1051600 ((_ is Nil!29175) (toList!1635 lt!890572)))))

(assert (=> d!713361 (= (forall!5989 (toList!1635 lt!890572) lambda!94276) e!1577434)))

(declare-fun b!2484532 () Bool)

(declare-fun e!1577435 () Bool)

(assert (=> b!2484532 (= e!1577434 e!1577435)))

(declare-fun res!1051601 () Bool)

(assert (=> b!2484532 (=> (not res!1051601) (not e!1577435))))

(assert (=> b!2484532 (= res!1051601 (dynLambda!12492 lambda!94276 (h!34585 (toList!1635 lt!890572))))))

(declare-fun b!2484533 () Bool)

(assert (=> b!2484533 (= e!1577435 (forall!5989 (t!210950 (toList!1635 lt!890572)) lambda!94276))))

(assert (= (and d!713361 (not res!1051600)) b!2484532))

(assert (= (and b!2484532 res!1051601) b!2484533))

(declare-fun b_lambda!76243 () Bool)

(assert (=> (not b_lambda!76243) (not b!2484532)))

(declare-fun m!2852557 () Bool)

(assert (=> b!2484532 m!2852557))

(declare-fun m!2852559 () Bool)

(assert (=> b!2484533 m!2852559))

(assert (=> b!2484419 d!713361))

(declare-fun bs!467721 () Bool)

(declare-fun d!713363 () Bool)

(assert (= bs!467721 (and d!713363 d!713357)))

(declare-fun lambda!94289 () Int)

(assert (=> bs!467721 (= lambda!94289 lambda!94285)))

(assert (=> d!713363 true))

(assert (=> d!713363 true))

(assert (=> d!713363 (= (allKeysSameHash!77 lt!890573 lt!890569 (hashF!5286 (_2!17070 lt!890564))) (forall!5990 lt!890573 lambda!94289))))

(declare-fun bs!467722 () Bool)

(assert (= bs!467722 d!713363))

(declare-fun m!2852561 () Bool)

(assert (=> bs!467722 m!2852561))

(assert (=> b!2484419 d!713363))

(declare-fun bs!467723 () Bool)

(declare-fun d!713365 () Bool)

(assert (= bs!467723 (and d!713365 b!2484428)))

(declare-fun lambda!94294 () Int)

(assert (=> bs!467723 (= lambda!94294 lambda!94276)))

(declare-fun bs!467724 () Bool)

(assert (= bs!467724 (and d!713365 d!713325)))

(assert (=> bs!467724 (not (= lambda!94294 lambda!94279))))

(declare-fun bs!467725 () Bool)

(assert (= bs!467725 (and d!713365 b!2484459)))

(assert (=> bs!467725 (= lambda!94294 lambda!94282)))

(declare-fun bs!467726 () Bool)

(assert (= bs!467726 (and d!713365 d!713359)))

(assert (=> bs!467726 (not (= lambda!94294 lambda!94288))))

(declare-fun e!1577438 () Bool)

(assert (=> d!713365 e!1577438))

(declare-fun res!1051604 () Bool)

(assert (=> d!713365 (=> (not res!1051604) (not e!1577438))))

(declare-fun lt!890687 () ListLongMap!585)

(assert (=> d!713365 (= res!1051604 (forall!5989 (toList!1635 lt!890687) lambda!94294))))

(assert (=> d!713365 (= lt!890687 (+!94 lt!890571 (tuple2!29055 lt!890569 lt!890562)))))

(declare-fun lt!890686 () Unit!42760)

(declare-fun choose!14675 (ListLongMap!585 (_ BitVec 64) List!29274 Hashable!3310) Unit!42760)

(assert (=> d!713365 (= lt!890686 (choose!14675 lt!890571 lt!890569 lt!890562 (hashF!5286 (_2!17070 lt!890564))))))

(assert (=> d!713365 (forall!5989 (toList!1635 lt!890571) lambda!94294)))

(assert (=> d!713365 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!57 lt!890571 lt!890569 lt!890562 (hashF!5286 (_2!17070 lt!890564))) lt!890686)))

(declare-fun b!2484536 () Bool)

(assert (=> b!2484536 (= e!1577438 (allKeysSameHashInMap!178 lt!890687 (hashF!5286 (_2!17070 lt!890564))))))

(assert (= (and d!713365 res!1051604) b!2484536))

(declare-fun m!2852563 () Bool)

(assert (=> d!713365 m!2852563))

(assert (=> d!713365 m!2852383))

(declare-fun m!2852565 () Bool)

(assert (=> d!713365 m!2852565))

(declare-fun m!2852567 () Bool)

(assert (=> d!713365 m!2852567))

(declare-fun m!2852569 () Bool)

(assert (=> b!2484536 m!2852569))

(assert (=> b!2484419 d!713365))

(declare-fun d!713367 () Bool)

(declare-fun res!1051605 () Bool)

(declare-fun e!1577439 () Bool)

(assert (=> d!713367 (=> res!1051605 e!1577439)))

(assert (=> d!713367 (= res!1051605 ((_ is Nil!29175) (toList!1635 (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564)))))))))

(assert (=> d!713367 (= (forall!5989 (toList!1635 (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564))))) lambda!94276) e!1577439)))

(declare-fun b!2484537 () Bool)

(declare-fun e!1577440 () Bool)

(assert (=> b!2484537 (= e!1577439 e!1577440)))

(declare-fun res!1051606 () Bool)

(assert (=> b!2484537 (=> (not res!1051606) (not e!1577440))))

(assert (=> b!2484537 (= res!1051606 (dynLambda!12492 lambda!94276 (h!34585 (toList!1635 (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564))))))))))

(declare-fun b!2484538 () Bool)

(assert (=> b!2484538 (= e!1577440 (forall!5989 (t!210950 (toList!1635 (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564)))))) lambda!94276))))

(assert (= (and d!713367 (not res!1051605)) b!2484537))

(assert (= (and b!2484537 res!1051606) b!2484538))

(declare-fun b_lambda!76245 () Bool)

(assert (=> (not b_lambda!76245) (not b!2484537)))

(declare-fun m!2852571 () Bool)

(assert (=> b!2484537 m!2852571))

(declare-fun m!2852573 () Bool)

(assert (=> b!2484538 m!2852573))

(assert (=> b!2484419 d!713367))

(declare-fun bs!467727 () Bool)

(declare-fun b!2484543 () Bool)

(assert (= bs!467727 (and b!2484543 d!713325)))

(declare-fun lambda!94297 () Int)

(assert (=> bs!467727 (not (= lambda!94297 lambda!94279))))

(declare-fun bs!467728 () Bool)

(assert (= bs!467728 (and b!2484543 b!2484428)))

(assert (=> bs!467728 (= lambda!94297 lambda!94276)))

(declare-fun bs!467729 () Bool)

(assert (= bs!467729 (and b!2484543 d!713365)))

(assert (=> bs!467729 (= lambda!94297 lambda!94294)))

(declare-fun bs!467730 () Bool)

(assert (= bs!467730 (and b!2484543 d!713359)))

(assert (=> bs!467730 (not (= lambda!94297 lambda!94288))))

(declare-fun bs!467731 () Bool)

(assert (= bs!467731 (and b!2484543 b!2484459)))

(assert (=> bs!467731 (= lambda!94297 lambda!94282)))

(declare-fun d!713369 () Bool)

(declare-fun res!1051611 () Bool)

(declare-fun e!1577443 () Bool)

(assert (=> d!713369 (=> (not res!1051611) (not e!1577443))))

(assert (=> d!713369 (= res!1051611 (valid!2609 (v!31575 (underlying!7008 thiss!42540))))))

(assert (=> d!713369 (= (valid!2608 thiss!42540) e!1577443)))

(declare-fun res!1051612 () Bool)

(assert (=> b!2484543 (=> (not res!1051612) (not e!1577443))))

(assert (=> b!2484543 (= res!1051612 (forall!5989 (toList!1635 (map!6277 (v!31575 (underlying!7008 thiss!42540)))) lambda!94297))))

(declare-fun b!2484544 () Bool)

(assert (=> b!2484544 (= e!1577443 (allKeysSameHashInMap!178 (map!6277 (v!31575 (underlying!7008 thiss!42540))) (hashF!5286 thiss!42540)))))

(assert (= (and d!713369 res!1051611) b!2484543))

(assert (= (and b!2484543 res!1051612) b!2484544))

(assert (=> d!713369 m!2852495))

(assert (=> b!2484543 m!2852401))

(declare-fun m!2852575 () Bool)

(assert (=> b!2484543 m!2852575))

(assert (=> b!2484544 m!2852401))

(assert (=> b!2484544 m!2852401))

(declare-fun m!2852577 () Bool)

(assert (=> b!2484544 m!2852577))

(assert (=> b!2484426 d!713369))

(declare-fun mapIsEmpty!15696 () Bool)

(declare-fun mapRes!15696 () Bool)

(assert (=> mapIsEmpty!15696 mapRes!15696))

(declare-fun mapNonEmpty!15696 () Bool)

(declare-fun tp!795393 () Bool)

(declare-fun e!1577448 () Bool)

(assert (=> mapNonEmpty!15696 (= mapRes!15696 (and tp!795393 e!1577448))))

(declare-fun mapKey!15696 () (_ BitVec 32))

(declare-fun mapValue!15696 () List!29274)

(declare-fun mapRest!15696 () (Array (_ BitVec 32) List!29274))

(assert (=> mapNonEmpty!15696 (= mapRest!15693 (store mapRest!15696 mapKey!15696 mapValue!15696))))

(declare-fun b!2484551 () Bool)

(declare-fun tp_is_empty!12347 () Bool)

(declare-fun tp!795392 () Bool)

(assert (=> b!2484551 (= e!1577448 (and tp_is_empty!12345 tp_is_empty!12347 tp!795392))))

(declare-fun b!2484552 () Bool)

(declare-fun e!1577449 () Bool)

(declare-fun tp!795391 () Bool)

(assert (=> b!2484552 (= e!1577449 (and tp_is_empty!12345 tp_is_empty!12347 tp!795391))))

(declare-fun condMapEmpty!15696 () Bool)

(declare-fun mapDefault!15696 () List!29274)

(assert (=> mapNonEmpty!15693 (= condMapEmpty!15696 (= mapRest!15693 ((as const (Array (_ BitVec 32) List!29274)) mapDefault!15696)))))

(assert (=> mapNonEmpty!15693 (= tp!795382 (and e!1577449 mapRes!15696))))

(assert (= (and mapNonEmpty!15693 condMapEmpty!15696) mapIsEmpty!15696))

(assert (= (and mapNonEmpty!15693 (not condMapEmpty!15696)) mapNonEmpty!15696))

(assert (= (and mapNonEmpty!15696 ((_ is Cons!29174) mapValue!15696)) b!2484551))

(assert (= (and mapNonEmpty!15693 ((_ is Cons!29174) mapDefault!15696)) b!2484552))

(declare-fun m!2852579 () Bool)

(assert (=> mapNonEmpty!15696 m!2852579))

(declare-fun e!1577452 () Bool)

(declare-fun b!2484557 () Bool)

(declare-fun tp!795396 () Bool)

(assert (=> b!2484557 (= e!1577452 (and tp_is_empty!12345 tp_is_empty!12347 tp!795396))))

(assert (=> mapNonEmpty!15693 (= tp!795381 e!1577452)))

(assert (= (and mapNonEmpty!15693 ((_ is Cons!29174) mapValue!15693)) b!2484557))

(declare-fun b!2484558 () Bool)

(declare-fun e!1577453 () Bool)

(declare-fun tp!795397 () Bool)

(assert (=> b!2484558 (= e!1577453 (and tp_is_empty!12345 tp_is_empty!12347 tp!795397))))

(assert (=> b!2484423 (= tp!795379 e!1577453)))

(assert (= (and b!2484423 ((_ is Cons!29174) mapDefault!15693)) b!2484558))

(declare-fun b!2484559 () Bool)

(declare-fun e!1577454 () Bool)

(declare-fun tp!795398 () Bool)

(assert (=> b!2484559 (= e!1577454 (and tp_is_empty!12345 tp_is_empty!12347 tp!795398))))

(assert (=> b!2484425 (= tp!795383 e!1577454)))

(assert (= (and b!2484425 ((_ is Cons!29174) (zeroValue!3658 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540))))))) b!2484559))

(declare-fun e!1577455 () Bool)

(declare-fun tp!795399 () Bool)

(declare-fun b!2484560 () Bool)

(assert (=> b!2484560 (= e!1577455 (and tp_is_empty!12345 tp_is_empty!12347 tp!795399))))

(assert (=> b!2484425 (= tp!795378 e!1577455)))

(assert (= (and b!2484425 ((_ is Cons!29174) (minValue!3658 (v!31574 (underlying!7007 (v!31575 (underlying!7008 thiss!42540))))))) b!2484560))

(declare-fun b_lambda!76247 () Bool)

(assert (= b_lambda!76243 (or b!2484428 b_lambda!76247)))

(declare-fun bs!467732 () Bool)

(declare-fun d!713371 () Bool)

(assert (= bs!467732 (and d!713371 b!2484428)))

(assert (=> bs!467732 (= (dynLambda!12492 lambda!94276 (h!34585 (toList!1635 lt!890572))) (noDuplicateKeys!103 (_2!17069 (h!34585 (toList!1635 lt!890572)))))))

(declare-fun m!2852581 () Bool)

(assert (=> bs!467732 m!2852581))

(assert (=> b!2484532 d!713371))

(declare-fun b_lambda!76249 () Bool)

(assert (= b_lambda!76241 (or (and b!2484425 b_free!72457) b_lambda!76249)))

(declare-fun b_lambda!76251 () Bool)

(assert (= b_lambda!76239 (or b!2484428 b_lambda!76251)))

(declare-fun bs!467733 () Bool)

(declare-fun d!713373 () Bool)

(assert (= bs!467733 (and d!713373 b!2484428)))

(assert (=> bs!467733 (= (dynLambda!12492 lambda!94276 (tuple2!29055 lt!890569 lt!890573)) (noDuplicateKeys!103 (_2!17069 (tuple2!29055 lt!890569 lt!890573))))))

(declare-fun m!2852583 () Bool)

(assert (=> bs!467733 m!2852583))

(assert (=> d!713333 d!713373))

(declare-fun b_lambda!76253 () Bool)

(assert (= b_lambda!76245 (or b!2484428 b_lambda!76253)))

(declare-fun bs!467734 () Bool)

(declare-fun d!713375 () Bool)

(assert (= bs!467734 (and d!713375 b!2484428)))

(assert (=> bs!467734 (= (dynLambda!12492 lambda!94276 (h!34585 (toList!1635 (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564))))))) (noDuplicateKeys!103 (_2!17069 (h!34585 (toList!1635 (map!6277 (v!31575 (underlying!7008 (_2!17070 lt!890564)))))))))))

(declare-fun m!2852585 () Bool)

(assert (=> bs!467734 m!2852585))

(assert (=> b!2484537 d!713375))

(check-sat tp_is_empty!12345 (not d!713327) (not bm!152294) (not b_lambda!76249) (not b!2484558) (not b!2484517) (not b!2484543) (not b!2484463) (not bm!152296) (not bs!467732) (not b!2484466) (not b!2484454) (not tb!140393) (not bm!152305) (not b!2484515) (not b!2484523) (not b_next!73161) (not d!713347) (not b!2484456) (not b_lambda!76247) (not b!2484457) (not b!2484557) (not b!2484489) (not bm!152295) tp_is_empty!12347 (not b!2484459) (not d!713335) (not mapNonEmpty!15696) (not d!713357) (not b!2484538) (not b!2484511) (not d!713339) (not d!713359) (not d!713343) b_and!188729 (not d!713345) (not d!713363) (not b!2484544) (not b_lambda!76251) (not d!713337) (not bs!467733) (not b!2484552) (not b!2484560) (not bm!152299) (not bm!152304) (not d!713355) b_and!188731 (not b!2484509) (not d!713353) (not d!713369) (not b!2484551) (not b_lambda!76253) (not b!2484514) (not bm!152297) (not b!2484490) (not bm!152298) (not b_next!73163) (not d!713325) (not b!2484559) (not b!2484533) (not b!2484536) (not d!713333) (not d!713351) (not d!713349) (not d!713365) (not b!2484483) (not b!2484522) (not b!2484477) (not bs!467734))
(check-sat b_and!188729 b_and!188731 (not b_next!73161) (not b_next!73163))
