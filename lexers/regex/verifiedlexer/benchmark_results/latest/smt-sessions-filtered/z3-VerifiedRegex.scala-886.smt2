; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46592 () Bool)

(assert start!46592)

(declare-fun b_free!13415 () Bool)

(declare-fun b_next!13415 () Bool)

(assert (=> start!46592 (= b_free!13415 (not b_next!13415))))

(declare-fun tp!160333 () Bool)

(declare-fun b_and!50847 () Bool)

(assert (=> start!46592 (= tp!160333 b_and!50847)))

(declare-fun b!514357 () Bool)

(declare-fun b_free!13417 () Bool)

(declare-fun b_next!13417 () Bool)

(assert (=> b!514357 (= b_free!13417 (not b_next!13417))))

(declare-fun tp!160330 () Bool)

(declare-fun b_and!50849 () Bool)

(assert (=> b!514357 (= tp!160330 b_and!50849)))

(declare-fun b!514350 () Bool)

(declare-fun b_free!13419 () Bool)

(declare-fun b_next!13419 () Bool)

(assert (=> b!514350 (= b_free!13419 (not b_next!13419))))

(declare-fun tp!160327 () Bool)

(declare-fun b_and!50851 () Bool)

(assert (=> b!514350 (= tp!160327 b_and!50851)))

(declare-fun b!514345 () Bool)

(declare-fun res!218090 () Bool)

(declare-fun e!307478 () Bool)

(assert (=> b!514345 (=> (not res!218090) (not e!307478))))

(declare-datatypes ((V!1445 0))(
  ( (V!1446 (val!1741 Int)) )
))
(declare-datatypes ((K!1347 0))(
  ( (K!1348 (val!1742 Int)) )
))
(declare-datatypes ((tuple2!5640 0))(
  ( (tuple2!5641 (_1!3036 K!1347) (_2!3036 V!1445)) )
))
(declare-datatypes ((List!4690 0))(
  ( (Nil!4680) (Cons!4680 (h!10077 tuple2!5640) (t!73218 List!4690)) )
))
(declare-datatypes ((array!1885 0))(
  ( (array!1886 (arr!870 (Array (_ BitVec 32) List!4690)) (size!3804 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!465 0))(
  ( (HashableExt!464 (__x!3370 Int)) )
))
(declare-datatypes ((array!1887 0))(
  ( (array!1888 (arr!871 (Array (_ BitVec 32) (_ BitVec 64))) (size!3805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!986 0))(
  ( (LongMapFixedSize!987 (defaultEntry!844 Int) (mask!1904 (_ BitVec 32)) (extraKeys!739 (_ BitVec 32)) (zeroValue!749 List!4690) (minValue!749 List!4690) (_size!1095 (_ BitVec 32)) (_keys!784 array!1887) (_values!771 array!1885) (_vacant!554 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1913 0))(
  ( (Cell!1914 (v!15703 LongMapFixedSize!986)) )
))
(declare-datatypes ((MutLongMap!493 0))(
  ( (LongMap!493 (underlying!1165 Cell!1913)) (MutLongMapExt!492 (__x!3371 Int)) )
))
(declare-datatypes ((Cell!1915 0))(
  ( (Cell!1916 (v!15704 MutLongMap!493)) )
))
(declare-datatypes ((MutableMap!465 0))(
  ( (MutableMapExt!464 (__x!3372 Int)) (HashMap!465 (underlying!1166 Cell!1915) (hashF!2341 Hashable!465) (_size!1096 (_ BitVec 32)) (defaultValue!614 Int)) )
))
(declare-fun hm!65 () MutableMap!465)

(declare-fun valid!449 (MutableMap!465) Bool)

(assert (=> b!514345 (= res!218090 (valid!449 hm!65))))

(declare-fun mapNonEmpty!1900 () Bool)

(declare-fun mapRes!1900 () Bool)

(declare-fun tp!160326 () Bool)

(declare-fun tp!160329 () Bool)

(assert (=> mapNonEmpty!1900 (= mapRes!1900 (and tp!160326 tp!160329))))

(declare-fun mapKey!1900 () (_ BitVec 32))

(declare-fun mapRest!1900 () (Array (_ BitVec 32) List!4690))

(declare-fun mapValue!1900 () List!4690)

(assert (=> mapNonEmpty!1900 (= (arr!870 (_values!771 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) (store mapRest!1900 mapKey!1900 mapValue!1900))))

(declare-fun b!514346 () Bool)

(declare-fun res!218094 () Bool)

(declare-fun e!307476 () Bool)

(assert (=> b!514346 (=> (not res!218094) (not e!307476))))

(declare-datatypes ((ListMap!139 0))(
  ( (ListMap!140 (toList!384 List!4690)) )
))
(declare-fun lt!212962 () ListMap!139)

(declare-fun lt!212961 () ListMap!139)

(declare-fun eq!13 (ListMap!139 ListMap!139) Bool)

(assert (=> b!514346 (= res!218094 (eq!13 lt!212962 lt!212961))))

(declare-fun b!514347 () Bool)

(declare-fun e!307475 () Bool)

(declare-fun e!307472 () Bool)

(assert (=> b!514347 (= e!307475 e!307472)))

(declare-fun b!514348 () Bool)

(declare-datatypes ((tuple2!5642 0))(
  ( (tuple2!5643 (_1!3037 Bool) (_2!3037 MutableMap!465)) )
))
(declare-fun lt!212960 () tuple2!5642)

(get-info :version)

(assert (=> b!514348 (= e!307476 (not ((_ is HashMap!465) (_2!3037 lt!212960))))))

(declare-fun p!6060 () Int)

(declare-fun forall!1368 (List!4690 Int) Bool)

(assert (=> b!514348 (forall!1368 (toList!384 lt!212961) p!6060)))

(declare-datatypes ((Unit!8452 0))(
  ( (Unit!8453) )
))
(declare-fun lt!212958 () Unit!8452)

(declare-fun lt!212963 () ListMap!139)

(declare-fun lemmaForallSubset!2 (List!4690 List!4690 Int) Unit!8452)

(assert (=> b!514348 (= lt!212958 (lemmaForallSubset!2 (toList!384 lt!212961) (toList!384 lt!212963) p!6060))))

(declare-fun res!218096 () Bool)

(assert (=> start!46592 (=> (not res!218096) (not e!307478))))

(assert (=> start!46592 (= res!218096 ((_ is HashMap!465) hm!65))))

(assert (=> start!46592 e!307478))

(declare-fun e!307468 () Bool)

(assert (=> start!46592 e!307468))

(assert (=> start!46592 tp!160333))

(declare-fun tp_is_empty!2553 () Bool)

(assert (=> start!46592 tp_is_empty!2553))

(declare-fun mapIsEmpty!1900 () Bool)

(assert (=> mapIsEmpty!1900 mapRes!1900))

(declare-fun b!514349 () Bool)

(declare-fun e!307477 () Bool)

(assert (=> b!514349 (= e!307477 e!307476)))

(declare-fun res!218091 () Bool)

(assert (=> b!514349 (=> (not res!218091) (not e!307476))))

(declare-fun invariantList!49 (List!4690) Bool)

(assert (=> b!514349 (= res!218091 (invariantList!49 (toList!384 lt!212962)))))

(declare-fun map!990 (MutableMap!465) ListMap!139)

(assert (=> b!514349 (= lt!212962 (map!990 (_2!3037 lt!212960)))))

(declare-fun e!307469 () Bool)

(assert (=> b!514350 (= e!307468 (and e!307469 tp!160327))))

(declare-fun b!514351 () Bool)

(declare-fun e!307473 () Bool)

(assert (=> b!514351 (= e!307478 e!307473)))

(declare-fun res!218092 () Bool)

(assert (=> b!514351 (=> (not res!218092) (not e!307473))))

(assert (=> b!514351 (= res!218092 (forall!1368 (toList!384 lt!212963) p!6060))))

(assert (=> b!514351 (= lt!212963 (map!990 hm!65))))

(declare-fun b!514352 () Bool)

(declare-fun e!307470 () Bool)

(declare-fun tp!160332 () Bool)

(assert (=> b!514352 (= e!307470 (and tp!160332 mapRes!1900))))

(declare-fun condMapEmpty!1900 () Bool)

(declare-fun mapDefault!1900 () List!4690)

(assert (=> b!514352 (= condMapEmpty!1900 (= (arr!870 (_values!771 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) ((as const (Array (_ BitVec 32) List!4690)) mapDefault!1900)))))

(declare-fun b!514353 () Bool)

(declare-fun res!218093 () Bool)

(assert (=> b!514353 (=> (not res!218093) (not e!307476))))

(assert (=> b!514353 (= res!218093 (_1!3037 lt!212960))))

(declare-fun b!514354 () Bool)

(declare-fun e!307474 () Bool)

(assert (=> b!514354 (= e!307472 e!307474)))

(declare-fun b!514355 () Bool)

(assert (=> b!514355 (= e!307473 e!307477)))

(declare-fun res!218095 () Bool)

(assert (=> b!514355 (=> (not res!218095) (not e!307477))))

(assert (=> b!514355 (= res!218095 (valid!449 (_2!3037 lt!212960)))))

(declare-fun k0!1740 () K!1347)

(declare-fun remove!18 (MutableMap!465 K!1347) tuple2!5642)

(assert (=> b!514355 (= lt!212960 (remove!18 hm!65 k0!1740))))

(declare-fun -!15 (ListMap!139 K!1347) ListMap!139)

(assert (=> b!514355 (= lt!212961 (-!15 lt!212963 k0!1740))))

(declare-fun b!514356 () Bool)

(declare-fun lt!212959 () MutLongMap!493)

(assert (=> b!514356 (= e!307469 (and e!307475 ((_ is LongMap!493) lt!212959)))))

(assert (=> b!514356 (= lt!212959 (v!15704 (underlying!1166 hm!65)))))

(declare-fun tp!160331 () Bool)

(declare-fun tp!160328 () Bool)

(declare-fun array_inv!631 (array!1887) Bool)

(declare-fun array_inv!632 (array!1885) Bool)

(assert (=> b!514357 (= e!307474 (and tp!160330 tp!160328 tp!160331 (array_inv!631 (_keys!784 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) (array_inv!632 (_values!771 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) e!307470))))

(assert (= (and start!46592 res!218096) b!514345))

(assert (= (and b!514345 res!218090) b!514351))

(assert (= (and b!514351 res!218092) b!514355))

(assert (= (and b!514355 res!218095) b!514349))

(assert (= (and b!514349 res!218091) b!514353))

(assert (= (and b!514353 res!218093) b!514346))

(assert (= (and b!514346 res!218094) b!514348))

(assert (= (and b!514352 condMapEmpty!1900) mapIsEmpty!1900))

(assert (= (and b!514352 (not condMapEmpty!1900)) mapNonEmpty!1900))

(assert (= b!514357 b!514352))

(assert (= b!514354 b!514357))

(assert (= b!514347 b!514354))

(assert (= (and b!514356 ((_ is LongMap!493) (v!15704 (underlying!1166 hm!65)))) b!514347))

(assert (= b!514350 b!514356))

(assert (= (and start!46592 ((_ is HashMap!465) hm!65)) b!514350))

(declare-fun m!760355 () Bool)

(assert (=> b!514355 m!760355))

(declare-fun m!760357 () Bool)

(assert (=> b!514355 m!760357))

(declare-fun m!760359 () Bool)

(assert (=> b!514355 m!760359))

(declare-fun m!760361 () Bool)

(assert (=> b!514345 m!760361))

(declare-fun m!760363 () Bool)

(assert (=> b!514349 m!760363))

(declare-fun m!760365 () Bool)

(assert (=> b!514349 m!760365))

(declare-fun m!760367 () Bool)

(assert (=> b!514351 m!760367))

(declare-fun m!760369 () Bool)

(assert (=> b!514351 m!760369))

(declare-fun m!760371 () Bool)

(assert (=> b!514346 m!760371))

(declare-fun m!760373 () Bool)

(assert (=> b!514357 m!760373))

(declare-fun m!760375 () Bool)

(assert (=> b!514357 m!760375))

(declare-fun m!760377 () Bool)

(assert (=> b!514348 m!760377))

(declare-fun m!760379 () Bool)

(assert (=> b!514348 m!760379))

(declare-fun m!760381 () Bool)

(assert (=> mapNonEmpty!1900 m!760381))

(check-sat (not b!514346) (not b_next!13417) (not b!514351) (not mapNonEmpty!1900) (not b_next!13415) b_and!50847 (not b!514355) (not b_next!13419) (not b!514349) b_and!50851 (not b!514352) (not b!514357) b_and!50849 (not b!514345) tp_is_empty!2553 (not b!514348))
(check-sat b_and!50849 (not b_next!13417) (not b_next!13415) b_and!50847 (not b_next!13419) b_and!50851)
(get-model)

(declare-fun d!184303 () Bool)

(declare-fun noDuplicatedKeys!8 (List!4690) Bool)

(assert (=> d!184303 (= (invariantList!49 (toList!384 lt!212962)) (noDuplicatedKeys!8 (toList!384 lt!212962)))))

(declare-fun bs!59423 () Bool)

(assert (= bs!59423 d!184303))

(declare-fun m!760383 () Bool)

(assert (=> bs!59423 m!760383))

(assert (=> b!514349 d!184303))

(declare-fun d!184305 () Bool)

(declare-fun lt!212966 () ListMap!139)

(assert (=> d!184305 (invariantList!49 (toList!384 lt!212966))))

(declare-datatypes ((tuple2!5644 0))(
  ( (tuple2!5645 (_1!3038 (_ BitVec 64)) (_2!3038 List!4690)) )
))
(declare-datatypes ((List!4691 0))(
  ( (Nil!4681) (Cons!4681 (h!10078 tuple2!5644) (t!73223 List!4691)) )
))
(declare-fun extractMap!12 (List!4691) ListMap!139)

(declare-datatypes ((ListLongMap!61 0))(
  ( (ListLongMap!62 (toList!385 List!4691)) )
))
(declare-fun map!991 (MutLongMap!493) ListLongMap!61)

(assert (=> d!184305 (= lt!212966 (extractMap!12 (toList!385 (map!991 (v!15704 (underlying!1166 (_2!3037 lt!212960)))))))))

(assert (=> d!184305 (valid!449 (_2!3037 lt!212960))))

(assert (=> d!184305 (= (map!990 (_2!3037 lt!212960)) lt!212966)))

(declare-fun bs!59424 () Bool)

(assert (= bs!59424 d!184305))

(declare-fun m!760385 () Bool)

(assert (=> bs!59424 m!760385))

(declare-fun m!760387 () Bool)

(assert (=> bs!59424 m!760387))

(declare-fun m!760389 () Bool)

(assert (=> bs!59424 m!760389))

(assert (=> bs!59424 m!760355))

(assert (=> b!514349 d!184305))

(declare-fun d!184307 () Bool)

(declare-fun res!218101 () Bool)

(declare-fun e!307481 () Bool)

(assert (=> d!184307 (=> (not res!218101) (not e!307481))))

(declare-fun valid!450 (MutLongMap!493) Bool)

(assert (=> d!184307 (= res!218101 (valid!450 (v!15704 (underlying!1166 (_2!3037 lt!212960)))))))

(assert (=> d!184307 (= (valid!449 (_2!3037 lt!212960)) e!307481)))

(declare-fun b!514362 () Bool)

(declare-fun res!218102 () Bool)

(assert (=> b!514362 (=> (not res!218102) (not e!307481))))

(declare-fun lambda!14320 () Int)

(declare-fun forall!1369 (List!4691 Int) Bool)

(assert (=> b!514362 (= res!218102 (forall!1369 (toList!385 (map!991 (v!15704 (underlying!1166 (_2!3037 lt!212960))))) lambda!14320))))

(declare-fun b!514363 () Bool)

(declare-fun allKeysSameHashInMap!19 (ListLongMap!61 Hashable!465) Bool)

(assert (=> b!514363 (= e!307481 (allKeysSameHashInMap!19 (map!991 (v!15704 (underlying!1166 (_2!3037 lt!212960)))) (hashF!2341 (_2!3037 lt!212960))))))

(assert (= (and d!184307 res!218101) b!514362))

(assert (= (and b!514362 res!218102) b!514363))

(declare-fun m!760391 () Bool)

(assert (=> d!184307 m!760391))

(assert (=> b!514362 m!760387))

(declare-fun m!760393 () Bool)

(assert (=> b!514362 m!760393))

(assert (=> b!514363 m!760387))

(assert (=> b!514363 m!760387))

(declare-fun m!760395 () Bool)

(assert (=> b!514363 m!760395))

(assert (=> b!514355 d!184307))

(declare-fun bs!59425 () Bool)

(declare-fun b!514390 () Bool)

(assert (= bs!59425 (and b!514390 b!514362)))

(declare-fun lambda!14327 () Int)

(assert (=> bs!59425 (= lambda!14327 lambda!14320)))

(declare-fun b!514386 () Bool)

(declare-fun e!307496 () Bool)

(declare-fun call!37407 () Bool)

(assert (=> b!514386 (= e!307496 call!37407)))

(declare-fun b!514387 () Bool)

(assert (=> b!514387 (= e!307496 call!37407)))

(declare-fun lt!213041 () tuple2!5642)

(declare-fun c!99798 () Bool)

(declare-fun bm!37396 () Bool)

(declare-fun call!37401 () ListMap!139)

(assert (=> bm!37396 (= call!37401 (map!990 (ite c!99798 hm!65 (_2!3037 lt!213041))))))

(declare-fun bm!37397 () Bool)

(declare-fun call!37405 () ListMap!139)

(assert (=> bm!37397 (= call!37405 (map!990 (ite c!99798 (_2!3037 lt!213041) hm!65)))))

(declare-fun c!99800 () Bool)

(declare-fun bm!37398 () Bool)

(declare-fun call!37408 () ListMap!139)

(declare-fun call!37402 () ListMap!139)

(declare-fun lt!213027 () ListMap!139)

(assert (=> bm!37398 (= call!37402 (-!15 (ite c!99800 call!37408 lt!213027) k0!1740))))

(declare-fun lt!213047 () ListLongMap!61)

(declare-fun lt!213028 () ListLongMap!61)

(declare-fun bm!37399 () Bool)

(assert (=> bm!37399 (= call!37408 (extractMap!12 (ite c!99800 (toList!385 lt!213047) (toList!385 lt!213028))))))

(declare-fun b!514388 () Bool)

(declare-fun e!307494 () Bool)

(declare-fun lt!213056 () ListLongMap!61)

(declare-datatypes ((tuple2!5646 0))(
  ( (tuple2!5647 (_1!3039 Unit!8452) (_2!3039 MutableMap!465)) )
))
(declare-fun lt!213050 () tuple2!5646)

(assert (=> b!514388 (= e!307494 (allKeysSameHashInMap!19 lt!213056 (hashF!2341 (_2!3039 lt!213050))))))

(declare-fun b!514389 () Bool)

(declare-fun call!37406 () ListMap!139)

(assert (=> b!514389 (= call!37406 lt!213027)))

(declare-fun lt!213055 () Unit!8452)

(declare-fun Unit!8454 () Unit!8452)

(assert (=> b!514389 (= lt!213055 Unit!8454)))

(declare-fun call!37403 () Bool)

(assert (=> b!514389 call!37403))

(declare-fun e!307498 () Unit!8452)

(declare-fun Unit!8455 () Unit!8452)

(assert (=> b!514389 (= e!307498 Unit!8455)))

(declare-fun e!307499 () tuple2!5642)

(declare-datatypes ((tuple2!5648 0))(
  ( (tuple2!5649 (_1!3040 Bool) (_2!3040 MutLongMap!493)) )
))
(declare-fun lt!213036 () tuple2!5648)

(assert (=> b!514390 (= e!307499 (tuple2!5643 (_1!3040 lt!213036) (_2!3039 lt!213050)))))

(declare-fun lt!213040 () (_ BitVec 64))

(declare-fun hash!505 (Hashable!465 K!1347) (_ BitVec 64))

(assert (=> b!514390 (= lt!213040 (hash!505 (hashF!2341 hm!65) k0!1740))))

(declare-fun lt!213045 () List!4690)

(declare-fun apply!1174 (MutLongMap!493 (_ BitVec 64)) List!4690)

(assert (=> b!514390 (= lt!213045 (apply!1174 (v!15704 (underlying!1166 hm!65)) lt!213040))))

(declare-fun lt!213054 () Unit!8452)

(declare-fun forallContained!437 (List!4691 Int tuple2!5644) Unit!8452)

(assert (=> b!514390 (= lt!213054 (forallContained!437 (toList!385 (map!991 (v!15704 (underlying!1166 hm!65)))) lambda!14327 (tuple2!5645 lt!213040 (apply!1174 (v!15704 (underlying!1166 hm!65)) lt!213040))))))

(assert (=> b!514390 (= lt!213027 (map!990 hm!65))))

(assert (=> b!514390 (= lt!213028 (map!991 (v!15704 (underlying!1166 hm!65))))))

(declare-fun lt!213038 () List!4690)

(declare-fun removePairForKey!6 (List!4690 K!1347) List!4690)

(assert (=> b!514390 (= lt!213038 (removePairForKey!6 lt!213045 k0!1740))))

(declare-fun update!45 (MutLongMap!493 (_ BitVec 64) List!4690) tuple2!5648)

(assert (=> b!514390 (= lt!213036 (update!45 (v!15704 (underlying!1166 hm!65)) lt!213040 lt!213038))))

(declare-fun lt!213034 () Bool)

(declare-fun Unit!8456 () Unit!8452)

(declare-fun Unit!8457 () Unit!8452)

(assert (=> b!514390 (= lt!213050 (ite (and (_1!3040 lt!213036) lt!213034) (tuple2!5647 Unit!8456 (HashMap!465 (Cell!1916 (_2!3040 lt!213036)) (hashF!2341 hm!65) (bvsub (_size!1096 hm!65) #b00000000000000000000000000000001) (defaultValue!614 hm!65))) (tuple2!5647 Unit!8457 (HashMap!465 (Cell!1916 (_2!3040 lt!213036)) (hashF!2341 hm!65) (_size!1096 hm!65) (defaultValue!614 hm!65)))))))

(declare-fun lt!213052 () Unit!8452)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!6 (List!4690 K!1347) Unit!8452)

(assert (=> b!514390 (= lt!213052 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!6 lt!213045 k0!1740))))

(declare-fun noDuplicateKeys!8 (List!4690) Bool)

(assert (=> b!514390 (noDuplicateKeys!8 (removePairForKey!6 lt!213045 k0!1740))))

(declare-fun lt!213037 () Unit!8452)

(assert (=> b!514390 (= lt!213037 lt!213052)))

(declare-fun c!99801 () Bool)

(assert (=> b!514390 (= c!99801 (_1!3040 lt!213036))))

(declare-fun lt!213043 () Unit!8452)

(assert (=> b!514390 (= lt!213043 e!307498)))

(declare-fun bm!37401 () Bool)

(declare-fun e!307495 () ListMap!139)

(assert (=> bm!37401 (= call!37407 (eq!13 (ite c!99798 call!37405 call!37401) e!307495))))

(declare-fun c!99799 () Bool)

(assert (=> bm!37401 (= c!99799 c!99798)))

(declare-fun bm!37402 () Bool)

(assert (=> bm!37402 (= call!37403 (valid!449 (_2!3039 lt!213050)))))

(declare-fun bm!37403 () Bool)

(declare-fun call!37404 () ListLongMap!61)

(assert (=> bm!37403 (= call!37404 (map!991 (ite c!99800 (v!15704 (underlying!1166 hm!65)) (v!15704 (underlying!1166 (_2!3039 lt!213050))))))))

(declare-fun b!514391 () Bool)

(assert (=> b!514391 (= e!307499 (tuple2!5643 true hm!65))))

(assert (=> b!514391 (= lt!213047 call!37404)))

(declare-fun lt!213030 () Unit!8452)

(declare-fun lemmaRemoveNotContainedDoesNotChange!4 (ListLongMap!61 K!1347 Hashable!465) Unit!8452)

(assert (=> b!514391 (= lt!213030 (lemmaRemoveNotContainedDoesNotChange!4 lt!213047 k0!1740 (hashF!2341 hm!65)))))

(assert (=> b!514391 (= call!37408 call!37402)))

(declare-fun lt!213044 () Unit!8452)

(assert (=> b!514391 (= lt!213044 lt!213030)))

(declare-fun b!514392 () Bool)

(declare-fun e!307497 () Bool)

(assert (=> b!514392 (= e!307497 e!307496)))

(assert (=> b!514392 (= c!99798 (_1!3037 lt!213041))))

(declare-fun d!184309 () Bool)

(assert (=> d!184309 e!307497))

(declare-fun res!218111 () Bool)

(assert (=> d!184309 (=> (not res!218111) (not e!307497))))

(assert (=> d!184309 (= res!218111 ((_ is HashMap!465) (_2!3037 lt!213041)))))

(assert (=> d!184309 (= lt!213041 e!307499)))

(assert (=> d!184309 (= c!99800 (not lt!213034))))

(declare-fun contains!1063 (MutableMap!465 K!1347) Bool)

(assert (=> d!184309 (= lt!213034 (contains!1063 hm!65 k0!1740))))

(assert (=> d!184309 (valid!449 hm!65)))

(assert (=> d!184309 (= (remove!18 hm!65 k0!1740) lt!213041)))

(declare-fun bm!37400 () Bool)

(assert (=> bm!37400 (= call!37406 (map!990 (_2!3039 lt!213050)))))

(declare-fun b!514393 () Bool)

(declare-fun res!218109 () Bool)

(assert (=> b!514393 (=> (not res!218109) (not e!307497))))

(assert (=> b!514393 (= res!218109 (valid!449 (_2!3037 lt!213041)))))

(declare-fun b!514394 () Bool)

(assert (=> b!514394 (= e!307495 call!37405)))

(declare-fun b!514395 () Bool)

(assert (=> b!514395 (= e!307495 (-!15 call!37401 k0!1740))))

(declare-fun b!514396 () Bool)

(assert (=> b!514396 (eq!13 call!37406 call!37402)))

(declare-fun lt!213053 () Unit!8452)

(declare-fun lt!213031 () Unit!8452)

(assert (=> b!514396 (= lt!213053 lt!213031)))

(declare-fun +!15 (ListLongMap!61 tuple2!5644) ListLongMap!61)

(assert (=> b!514396 (eq!13 (extractMap!12 (toList!385 (+!15 lt!213028 (tuple2!5645 lt!213040 lt!213038)))) (-!15 call!37408 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!4 (ListLongMap!61 (_ BitVec 64) List!4690 K!1347 Hashable!465) Unit!8452)

(assert (=> b!514396 (= lt!213031 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!4 lt!213028 lt!213040 lt!213038 k0!1740 (hashF!2341 (_2!3039 lt!213050))))))

(declare-fun lt!213046 () Unit!8452)

(declare-fun Unit!8458 () Unit!8452)

(assert (=> b!514396 (= lt!213046 Unit!8458)))

(declare-fun contains!1064 (ListMap!139 K!1347) Bool)

(assert (=> b!514396 (contains!1064 lt!213027 k0!1740)))

(declare-fun lt!213029 () Unit!8452)

(declare-fun Unit!8459 () Unit!8452)

(assert (=> b!514396 (= lt!213029 Unit!8459)))

(assert (=> b!514396 call!37403))

(declare-fun lt!213049 () Unit!8452)

(declare-fun Unit!8460 () Unit!8452)

(assert (=> b!514396 (= lt!213049 Unit!8460)))

(assert (=> b!514396 (allKeysSameHashInMap!19 call!37404 (hashF!2341 (_2!3039 lt!213050)))))

(declare-fun lt!213039 () Unit!8452)

(declare-fun Unit!8461 () Unit!8452)

(assert (=> b!514396 (= lt!213039 Unit!8461)))

(assert (=> b!514396 (forall!1369 (toList!385 call!37404) lambda!14327)))

(declare-fun lt!213033 () Unit!8452)

(declare-fun lt!213032 () Unit!8452)

(assert (=> b!514396 (= lt!213033 lt!213032)))

(assert (=> b!514396 e!307494))

(declare-fun res!218110 () Bool)

(assert (=> b!514396 (=> (not res!218110) (not e!307494))))

(assert (=> b!514396 (= res!218110 (forall!1369 (toList!385 lt!213056) lambda!14327))))

(assert (=> b!514396 (= lt!213056 (+!15 lt!213028 (tuple2!5645 lt!213040 lt!213038)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!6 (ListLongMap!61 (_ BitVec 64) List!4690 Hashable!465) Unit!8452)

(assert (=> b!514396 (= lt!213032 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!6 lt!213028 lt!213040 lt!213038 (hashF!2341 (_2!3039 lt!213050))))))

(declare-fun lt!213051 () Unit!8452)

(declare-fun lt!213042 () Unit!8452)

(assert (=> b!514396 (= lt!213051 lt!213042)))

(declare-fun allKeysSameHash!7 (List!4690 (_ BitVec 64) Hashable!465) Bool)

(assert (=> b!514396 (allKeysSameHash!7 (removePairForKey!6 lt!213045 k0!1740) lt!213040 (hashF!2341 (_2!3039 lt!213050)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!6 (List!4690 K!1347 (_ BitVec 64) Hashable!465) Unit!8452)

(assert (=> b!514396 (= lt!213042 (lemmaRemovePairForKeyPreservesHash!6 lt!213045 k0!1740 lt!213040 (hashF!2341 (_2!3039 lt!213050))))))

(declare-fun lt!213035 () Unit!8452)

(declare-fun lt!213048 () Unit!8452)

(assert (=> b!514396 (= lt!213035 lt!213048)))

(assert (=> b!514396 (allKeysSameHash!7 lt!213045 lt!213040 (hashF!2341 (_2!3039 lt!213050)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!6 (List!4691 (_ BitVec 64) List!4690 Hashable!465) Unit!8452)

(assert (=> b!514396 (= lt!213048 (lemmaInLongMapAllKeySameHashThenForTuple!6 (toList!385 lt!213028) lt!213040 lt!213045 (hashF!2341 (_2!3039 lt!213050))))))

(declare-fun Unit!8462 () Unit!8452)

(assert (=> b!514396 (= e!307498 Unit!8462)))

(assert (= (and d!184309 c!99800) b!514391))

(assert (= (and d!184309 (not c!99800)) b!514390))

(assert (= (and b!514390 c!99801) b!514396))

(assert (= (and b!514390 (not c!99801)) b!514389))

(assert (= (and b!514396 res!218110) b!514388))

(assert (= (or b!514396 b!514389) bm!37402))

(assert (= (or b!514396 b!514389) bm!37400))

(assert (= (or b!514391 b!514396) bm!37403))

(assert (= (or b!514391 b!514396) bm!37399))

(assert (= (or b!514391 b!514396) bm!37398))

(assert (= (and d!184309 res!218111) b!514393))

(assert (= (and b!514393 res!218109) b!514392))

(assert (= (and b!514392 c!99798) b!514387))

(assert (= (and b!514392 (not c!99798)) b!514386))

(assert (= (or b!514387 b!514386) bm!37397))

(assert (= (or b!514387 b!514386) bm!37396))

(assert (= (or b!514387 b!514386) bm!37401))

(assert (= (and bm!37401 c!99799) b!514395))

(assert (= (and bm!37401 (not c!99799)) b!514394))

(declare-fun m!760397 () Bool)

(assert (=> bm!37397 m!760397))

(declare-fun m!760399 () Bool)

(assert (=> b!514388 m!760399))

(declare-fun m!760401 () Bool)

(assert (=> b!514393 m!760401))

(declare-fun m!760403 () Bool)

(assert (=> bm!37400 m!760403))

(declare-fun m!760405 () Bool)

(assert (=> d!184309 m!760405))

(assert (=> d!184309 m!760361))

(declare-fun m!760407 () Bool)

(assert (=> bm!37403 m!760407))

(declare-fun m!760409 () Bool)

(assert (=> bm!37401 m!760409))

(declare-fun m!760411 () Bool)

(assert (=> b!514396 m!760411))

(declare-fun m!760413 () Bool)

(assert (=> b!514396 m!760413))

(declare-fun m!760415 () Bool)

(assert (=> b!514396 m!760415))

(declare-fun m!760417 () Bool)

(assert (=> b!514396 m!760417))

(declare-fun m!760419 () Bool)

(assert (=> b!514396 m!760419))

(declare-fun m!760421 () Bool)

(assert (=> b!514396 m!760421))

(declare-fun m!760423 () Bool)

(assert (=> b!514396 m!760423))

(declare-fun m!760425 () Bool)

(assert (=> b!514396 m!760425))

(declare-fun m!760427 () Bool)

(assert (=> b!514396 m!760427))

(declare-fun m!760429 () Bool)

(assert (=> b!514396 m!760429))

(assert (=> b!514396 m!760427))

(declare-fun m!760431 () Bool)

(assert (=> b!514396 m!760431))

(declare-fun m!760433 () Bool)

(assert (=> b!514396 m!760433))

(declare-fun m!760435 () Bool)

(assert (=> b!514396 m!760435))

(assert (=> b!514396 m!760429))

(assert (=> b!514396 m!760413))

(declare-fun m!760437 () Bool)

(assert (=> b!514396 m!760437))

(declare-fun m!760439 () Bool)

(assert (=> b!514396 m!760439))

(declare-fun m!760441 () Bool)

(assert (=> b!514396 m!760441))

(declare-fun m!760443 () Bool)

(assert (=> b!514391 m!760443))

(declare-fun m!760445 () Bool)

(assert (=> bm!37398 m!760445))

(declare-fun m!760447 () Bool)

(assert (=> b!514395 m!760447))

(declare-fun m!760449 () Bool)

(assert (=> bm!37402 m!760449))

(declare-fun m!760451 () Bool)

(assert (=> bm!37396 m!760451))

(assert (=> b!514390 m!760427))

(declare-fun m!760453 () Bool)

(assert (=> b!514390 m!760453))

(declare-fun m!760455 () Bool)

(assert (=> b!514390 m!760455))

(declare-fun m!760457 () Bool)

(assert (=> b!514390 m!760457))

(declare-fun m!760459 () Bool)

(assert (=> b!514390 m!760459))

(declare-fun m!760461 () Bool)

(assert (=> b!514390 m!760461))

(assert (=> b!514390 m!760427))

(declare-fun m!760463 () Bool)

(assert (=> b!514390 m!760463))

(declare-fun m!760465 () Bool)

(assert (=> b!514390 m!760465))

(assert (=> b!514390 m!760369))

(declare-fun m!760467 () Bool)

(assert (=> bm!37399 m!760467))

(assert (=> b!514355 d!184309))

(declare-fun d!184311 () Bool)

(declare-fun e!307502 () Bool)

(assert (=> d!184311 e!307502))

(declare-fun res!218114 () Bool)

(assert (=> d!184311 (=> (not res!218114) (not e!307502))))

(declare-fun lt!213059 () ListMap!139)

(assert (=> d!184311 (= res!218114 (not (contains!1064 lt!213059 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!4 (List!4690 K!1347) List!4690)

(assert (=> d!184311 (= lt!213059 (ListMap!140 (removePresrvNoDuplicatedKeys!4 (toList!384 lt!212963) k0!1740)))))

(assert (=> d!184311 (= (-!15 lt!212963 k0!1740) lt!213059)))

(declare-fun b!514399 () Bool)

(declare-datatypes ((List!4692 0))(
  ( (Nil!4682) (Cons!4682 (h!10079 K!1347) (t!73224 List!4692)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!811 (List!4692) (InoxSet K!1347))

(declare-fun keys!1817 (ListMap!139) List!4692)

(assert (=> b!514399 (= e!307502 (= ((_ map and) (content!811 (keys!1817 lt!212963)) ((_ map not) (store ((as const (Array K!1347 Bool)) false) k0!1740 true))) (content!811 (keys!1817 lt!213059))))))

(assert (= (and d!184311 res!218114) b!514399))

(declare-fun m!760469 () Bool)

(assert (=> d!184311 m!760469))

(declare-fun m!760471 () Bool)

(assert (=> d!184311 m!760471))

(declare-fun m!760473 () Bool)

(assert (=> b!514399 m!760473))

(declare-fun m!760475 () Bool)

(assert (=> b!514399 m!760475))

(declare-fun m!760477 () Bool)

(assert (=> b!514399 m!760477))

(assert (=> b!514399 m!760473))

(declare-fun m!760479 () Bool)

(assert (=> b!514399 m!760479))

(assert (=> b!514399 m!760475))

(declare-fun m!760481 () Bool)

(assert (=> b!514399 m!760481))

(assert (=> b!514355 d!184311))

(declare-fun d!184313 () Bool)

(declare-fun content!812 (List!4690) (InoxSet tuple2!5640))

(assert (=> d!184313 (= (eq!13 lt!212962 lt!212961) (= (content!812 (toList!384 lt!212962)) (content!812 (toList!384 lt!212961))))))

(declare-fun bs!59426 () Bool)

(assert (= bs!59426 d!184313))

(declare-fun m!760483 () Bool)

(assert (=> bs!59426 m!760483))

(declare-fun m!760485 () Bool)

(assert (=> bs!59426 m!760485))

(assert (=> b!514346 d!184313))

(declare-fun d!184315 () Bool)

(declare-fun res!218119 () Bool)

(declare-fun e!307507 () Bool)

(assert (=> d!184315 (=> res!218119 e!307507)))

(assert (=> d!184315 (= res!218119 ((_ is Nil!4680) (toList!384 lt!212963)))))

(assert (=> d!184315 (= (forall!1368 (toList!384 lt!212963) p!6060) e!307507)))

(declare-fun b!514404 () Bool)

(declare-fun e!307508 () Bool)

(assert (=> b!514404 (= e!307507 e!307508)))

(declare-fun res!218120 () Bool)

(assert (=> b!514404 (=> (not res!218120) (not e!307508))))

(declare-fun dynLambda!2967 (Int tuple2!5640) Bool)

(assert (=> b!514404 (= res!218120 (dynLambda!2967 p!6060 (h!10077 (toList!384 lt!212963))))))

(declare-fun b!514405 () Bool)

(assert (=> b!514405 (= e!307508 (forall!1368 (t!73218 (toList!384 lt!212963)) p!6060))))

(assert (= (and d!184315 (not res!218119)) b!514404))

(assert (= (and b!514404 res!218120) b!514405))

(declare-fun b_lambda!19977 () Bool)

(assert (=> (not b_lambda!19977) (not b!514404)))

(declare-fun t!73220 () Bool)

(declare-fun tb!47127 () Bool)

(assert (=> (and start!46592 (= p!6060 p!6060) t!73220) tb!47127))

(declare-fun result!52146 () Bool)

(assert (=> tb!47127 (= result!52146 true)))

(assert (=> b!514404 t!73220))

(declare-fun b_and!50853 () Bool)

(assert (= b_and!50847 (and (=> t!73220 result!52146) b_and!50853)))

(declare-fun m!760487 () Bool)

(assert (=> b!514404 m!760487))

(declare-fun m!760489 () Bool)

(assert (=> b!514405 m!760489))

(assert (=> b!514351 d!184315))

(declare-fun d!184317 () Bool)

(declare-fun lt!213060 () ListMap!139)

(assert (=> d!184317 (invariantList!49 (toList!384 lt!213060))))

(assert (=> d!184317 (= lt!213060 (extractMap!12 (toList!385 (map!991 (v!15704 (underlying!1166 hm!65))))))))

(assert (=> d!184317 (valid!449 hm!65)))

(assert (=> d!184317 (= (map!990 hm!65) lt!213060)))

(declare-fun bs!59427 () Bool)

(assert (= bs!59427 d!184317))

(declare-fun m!760491 () Bool)

(assert (=> bs!59427 m!760491))

(assert (=> bs!59427 m!760459))

(declare-fun m!760493 () Bool)

(assert (=> bs!59427 m!760493))

(assert (=> bs!59427 m!760361))

(assert (=> b!514351 d!184317))

(declare-fun d!184319 () Bool)

(assert (=> d!184319 (= (array_inv!631 (_keys!784 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) (bvsge (size!3805 (_keys!784 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514357 d!184319))

(declare-fun d!184321 () Bool)

(assert (=> d!184321 (= (array_inv!632 (_values!771 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) (bvsge (size!3804 (_values!771 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514357 d!184321))

(declare-fun d!184323 () Bool)

(declare-fun res!218121 () Bool)

(declare-fun e!307509 () Bool)

(assert (=> d!184323 (=> res!218121 e!307509)))

(assert (=> d!184323 (= res!218121 ((_ is Nil!4680) (toList!384 lt!212961)))))

(assert (=> d!184323 (= (forall!1368 (toList!384 lt!212961) p!6060) e!307509)))

(declare-fun b!514406 () Bool)

(declare-fun e!307510 () Bool)

(assert (=> b!514406 (= e!307509 e!307510)))

(declare-fun res!218122 () Bool)

(assert (=> b!514406 (=> (not res!218122) (not e!307510))))

(assert (=> b!514406 (= res!218122 (dynLambda!2967 p!6060 (h!10077 (toList!384 lt!212961))))))

(declare-fun b!514407 () Bool)

(assert (=> b!514407 (= e!307510 (forall!1368 (t!73218 (toList!384 lt!212961)) p!6060))))

(assert (= (and d!184323 (not res!218121)) b!514406))

(assert (= (and b!514406 res!218122) b!514407))

(declare-fun b_lambda!19979 () Bool)

(assert (=> (not b_lambda!19979) (not b!514406)))

(declare-fun t!73222 () Bool)

(declare-fun tb!47129 () Bool)

(assert (=> (and start!46592 (= p!6060 p!6060) t!73222) tb!47129))

(declare-fun result!52148 () Bool)

(assert (=> tb!47129 (= result!52148 true)))

(assert (=> b!514406 t!73222))

(declare-fun b_and!50855 () Bool)

(assert (= b_and!50853 (and (=> t!73222 result!52148) b_and!50855)))

(declare-fun m!760495 () Bool)

(assert (=> b!514406 m!760495))

(declare-fun m!760497 () Bool)

(assert (=> b!514407 m!760497))

(assert (=> b!514348 d!184323))

(declare-fun d!184325 () Bool)

(assert (=> d!184325 (forall!1368 (toList!384 lt!212961) p!6060)))

(declare-fun lt!213063 () Unit!8452)

(declare-fun choose!3668 (List!4690 List!4690 Int) Unit!8452)

(assert (=> d!184325 (= lt!213063 (choose!3668 (toList!384 lt!212961) (toList!384 lt!212963) p!6060))))

(assert (=> d!184325 (invariantList!49 (toList!384 lt!212961))))

(assert (=> d!184325 (= (lemmaForallSubset!2 (toList!384 lt!212961) (toList!384 lt!212963) p!6060) lt!213063)))

(declare-fun bs!59428 () Bool)

(assert (= bs!59428 d!184325))

(assert (=> bs!59428 m!760377))

(declare-fun m!760499 () Bool)

(assert (=> bs!59428 m!760499))

(declare-fun m!760501 () Bool)

(assert (=> bs!59428 m!760501))

(assert (=> b!514348 d!184325))

(declare-fun bs!59429 () Bool)

(declare-fun b!514408 () Bool)

(assert (= bs!59429 (and b!514408 b!514362)))

(declare-fun lambda!14328 () Int)

(assert (=> bs!59429 (= lambda!14328 lambda!14320)))

(declare-fun bs!59430 () Bool)

(assert (= bs!59430 (and b!514408 b!514390)))

(assert (=> bs!59430 (= lambda!14328 lambda!14327)))

(declare-fun d!184327 () Bool)

(declare-fun res!218123 () Bool)

(declare-fun e!307511 () Bool)

(assert (=> d!184327 (=> (not res!218123) (not e!307511))))

(assert (=> d!184327 (= res!218123 (valid!450 (v!15704 (underlying!1166 hm!65))))))

(assert (=> d!184327 (= (valid!449 hm!65) e!307511)))

(declare-fun res!218124 () Bool)

(assert (=> b!514408 (=> (not res!218124) (not e!307511))))

(assert (=> b!514408 (= res!218124 (forall!1369 (toList!385 (map!991 (v!15704 (underlying!1166 hm!65)))) lambda!14328))))

(declare-fun b!514409 () Bool)

(assert (=> b!514409 (= e!307511 (allKeysSameHashInMap!19 (map!991 (v!15704 (underlying!1166 hm!65))) (hashF!2341 hm!65)))))

(assert (= (and d!184327 res!218123) b!514408))

(assert (= (and b!514408 res!218124) b!514409))

(declare-fun m!760503 () Bool)

(assert (=> d!184327 m!760503))

(assert (=> b!514408 m!760459))

(declare-fun m!760505 () Bool)

(assert (=> b!514408 m!760505))

(assert (=> b!514409 m!760459))

(assert (=> b!514409 m!760459))

(declare-fun m!760507 () Bool)

(assert (=> b!514409 m!760507))

(assert (=> b!514345 d!184327))

(declare-fun mapIsEmpty!1903 () Bool)

(declare-fun mapRes!1903 () Bool)

(assert (=> mapIsEmpty!1903 mapRes!1903))

(declare-fun tp!160340 () Bool)

(declare-fun b!514417 () Bool)

(declare-fun tp_is_empty!2555 () Bool)

(declare-fun e!307516 () Bool)

(assert (=> b!514417 (= e!307516 (and tp_is_empty!2553 tp_is_empty!2555 tp!160340))))

(declare-fun mapNonEmpty!1903 () Bool)

(declare-fun tp!160341 () Bool)

(declare-fun e!307517 () Bool)

(assert (=> mapNonEmpty!1903 (= mapRes!1903 (and tp!160341 e!307517))))

(declare-fun mapRest!1903 () (Array (_ BitVec 32) List!4690))

(declare-fun mapValue!1903 () List!4690)

(declare-fun mapKey!1903 () (_ BitVec 32))

(assert (=> mapNonEmpty!1903 (= mapRest!1900 (store mapRest!1903 mapKey!1903 mapValue!1903))))

(declare-fun condMapEmpty!1903 () Bool)

(declare-fun mapDefault!1903 () List!4690)

(assert (=> mapNonEmpty!1900 (= condMapEmpty!1903 (= mapRest!1900 ((as const (Array (_ BitVec 32) List!4690)) mapDefault!1903)))))

(assert (=> mapNonEmpty!1900 (= tp!160326 (and e!307516 mapRes!1903))))

(declare-fun b!514416 () Bool)

(declare-fun tp!160342 () Bool)

(assert (=> b!514416 (= e!307517 (and tp_is_empty!2553 tp_is_empty!2555 tp!160342))))

(assert (= (and mapNonEmpty!1900 condMapEmpty!1903) mapIsEmpty!1903))

(assert (= (and mapNonEmpty!1900 (not condMapEmpty!1903)) mapNonEmpty!1903))

(assert (= (and mapNonEmpty!1903 ((_ is Cons!4680) mapValue!1903)) b!514416))

(assert (= (and mapNonEmpty!1900 ((_ is Cons!4680) mapDefault!1903)) b!514417))

(declare-fun m!760509 () Bool)

(assert (=> mapNonEmpty!1903 m!760509))

(declare-fun tp!160345 () Bool)

(declare-fun b!514422 () Bool)

(declare-fun e!307520 () Bool)

(assert (=> b!514422 (= e!307520 (and tp_is_empty!2553 tp_is_empty!2555 tp!160345))))

(assert (=> mapNonEmpty!1900 (= tp!160329 e!307520)))

(assert (= (and mapNonEmpty!1900 ((_ is Cons!4680) mapValue!1900)) b!514422))

(declare-fun b!514423 () Bool)

(declare-fun tp!160346 () Bool)

(declare-fun e!307521 () Bool)

(assert (=> b!514423 (= e!307521 (and tp_is_empty!2553 tp_is_empty!2555 tp!160346))))

(assert (=> b!514352 (= tp!160332 e!307521)))

(assert (= (and b!514352 ((_ is Cons!4680) mapDefault!1900)) b!514423))

(declare-fun e!307522 () Bool)

(declare-fun tp!160347 () Bool)

(declare-fun b!514424 () Bool)

(assert (=> b!514424 (= e!307522 (and tp_is_empty!2553 tp_is_empty!2555 tp!160347))))

(assert (=> b!514357 (= tp!160328 e!307522)))

(assert (= (and b!514357 ((_ is Cons!4680) (zeroValue!749 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65))))))) b!514424))

(declare-fun tp!160348 () Bool)

(declare-fun e!307523 () Bool)

(declare-fun b!514425 () Bool)

(assert (=> b!514425 (= e!307523 (and tp_is_empty!2553 tp_is_empty!2555 tp!160348))))

(assert (=> b!514357 (= tp!160331 e!307523)))

(assert (= (and b!514357 ((_ is Cons!4680) (minValue!749 (v!15703 (underlying!1165 (v!15704 (underlying!1166 hm!65))))))) b!514425))

(declare-fun b_lambda!19981 () Bool)

(assert (= b_lambda!19979 (or (and start!46592 b_free!13415) b_lambda!19981)))

(declare-fun b_lambda!19983 () Bool)

(assert (= b_lambda!19977 (or (and start!46592 b_free!13415) b_lambda!19983)))

(check-sat b_and!50855 (not d!184325) (not b!514405) (not b!514363) (not d!184305) (not b!514399) (not b!514395) (not bm!37401) (not b!514388) (not b_lambda!19983) (not b_lambda!19981) (not d!184313) (not b!514417) (not b!514408) (not d!184317) b_and!50849 (not b!514422) (not b!514416) (not mapNonEmpty!1903) (not bm!37402) (not b_next!13417) (not bm!37396) (not b!514390) (not bm!37398) (not d!184327) (not d!184311) (not bm!37400) (not b!514362) tp_is_empty!2553 (not d!184309) (not bm!37403) (not bm!37399) (not b!514424) (not d!184303) (not b!514423) (not b_next!13415) tp_is_empty!2555 (not b!514425) (not b!514407) (not b!514391) (not b!514396) (not d!184307) (not bm!37397) (not b!514409) (not b_next!13419) (not b!514393) b_and!50851)
(check-sat b_and!50855 b_and!50849 (not b_next!13417) (not b_next!13415) (not b_next!13419) b_and!50851)
