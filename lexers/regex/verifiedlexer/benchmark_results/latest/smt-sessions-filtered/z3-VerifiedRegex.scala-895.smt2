; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46712 () Bool)

(assert start!46712)

(declare-fun b!515353 () Bool)

(declare-fun b_free!13523 () Bool)

(declare-fun b_next!13523 () Bool)

(assert (=> b!515353 (= b_free!13523 (not b_next!13523))))

(declare-fun tp!160833 () Bool)

(declare-fun b_and!50971 () Bool)

(assert (=> b!515353 (= tp!160833 b_and!50971)))

(declare-fun b!515351 () Bool)

(declare-fun b_free!13525 () Bool)

(declare-fun b_next!13525 () Bool)

(assert (=> b!515351 (= b_free!13525 (not b_next!13525))))

(declare-fun tp!160835 () Bool)

(declare-fun b_and!50973 () Bool)

(assert (=> b!515351 (= tp!160835 b_and!50973)))

(declare-fun b_free!13527 () Bool)

(declare-fun b_next!13527 () Bool)

(assert (=> start!46712 (= b_free!13527 (not b_next!13527))))

(declare-fun tp!160840 () Bool)

(declare-fun b_and!50975 () Bool)

(assert (=> start!46712 (= tp!160840 b_and!50975)))

(declare-fun b!515342 () Bool)

(declare-fun res!218542 () Bool)

(declare-fun e!308277 () Bool)

(assert (=> b!515342 (=> (not res!218542) (not e!308277))))

(declare-datatypes ((V!1490 0))(
  ( (V!1491 (val!1777 Int)) )
))
(declare-datatypes ((K!1392 0))(
  ( (K!1393 (val!1778 Int)) )
))
(declare-datatypes ((tuple2!5738 0))(
  ( (tuple2!5739 (_1!3085 K!1392) (_2!3085 V!1490)) )
))
(declare-datatypes ((List!4718 0))(
  ( (Nil!4708) (Cons!4708 (h!10105 tuple2!5738) (t!73262 List!4718)) )
))
(declare-datatypes ((array!1967 0))(
  ( (array!1968 (arr!906 (Array (_ BitVec 32) List!4718)) (size!3840 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!483 0))(
  ( (HashableExt!482 (__x!3424 Int)) )
))
(declare-datatypes ((array!1969 0))(
  ( (array!1970 (arr!907 (Array (_ BitVec 32) (_ BitVec 64))) (size!3841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1022 0))(
  ( (LongMapFixedSize!1023 (defaultEntry!862 Int) (mask!1931 (_ BitVec 32)) (extraKeys!757 (_ BitVec 32)) (zeroValue!767 List!4718) (minValue!767 List!4718) (_size!1131 (_ BitVec 32)) (_keys!802 array!1969) (_values!789 array!1967) (_vacant!572 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1985 0))(
  ( (Cell!1986 (v!15739 LongMapFixedSize!1022)) )
))
(declare-datatypes ((MutLongMap!511 0))(
  ( (LongMap!511 (underlying!1201 Cell!1985)) (MutLongMapExt!510 (__x!3425 Int)) )
))
(declare-datatypes ((Cell!1987 0))(
  ( (Cell!1988 (v!15740 MutLongMap!511)) )
))
(declare-datatypes ((MutableMap!483 0))(
  ( (MutableMapExt!482 (__x!3426 Int)) (HashMap!483 (underlying!1202 Cell!1987) (hashF!2359 Hashable!483) (_size!1132 (_ BitVec 32)) (defaultValue!632 Int)) )
))
(declare-datatypes ((tuple2!5740 0))(
  ( (tuple2!5741 (_1!3086 Bool) (_2!3086 MutableMap!483)) )
))
(declare-fun lt!213760 () tuple2!5740)

(assert (=> b!515342 (= res!218542 (_1!3086 lt!213760))))

(declare-fun b!515343 () Bool)

(declare-fun e!308279 () Bool)

(assert (=> b!515343 (= e!308279 e!308277)))

(declare-fun res!218544 () Bool)

(assert (=> b!515343 (=> (not res!218544) (not e!308277))))

(declare-datatypes ((ListMap!173 0))(
  ( (ListMap!174 (toList!406 List!4718)) )
))
(declare-fun lt!213758 () ListMap!173)

(declare-fun invariantList!65 (List!4718) Bool)

(assert (=> b!515343 (= res!218544 (invariantList!65 (toList!406 lt!213758)))))

(declare-fun map!1020 (MutableMap!483) ListMap!173)

(assert (=> b!515343 (= lt!213758 (map!1020 (_2!3086 lt!213760)))))

(declare-fun b!515344 () Bool)

(declare-fun e!308280 () Bool)

(declare-fun e!308282 () Bool)

(assert (=> b!515344 (= e!308280 e!308282)))

(declare-fun b!515345 () Bool)

(declare-fun lt!213759 () ListMap!173)

(declare-fun eq!24 (ListMap!173 ListMap!173) Bool)

(assert (=> b!515345 (= e!308277 (not (eq!24 lt!213758 lt!213759)))))

(declare-fun b!515346 () Bool)

(declare-fun e!308286 () Bool)

(declare-fun e!308285 () Bool)

(assert (=> b!515346 (= e!308286 e!308285)))

(declare-fun res!218541 () Bool)

(assert (=> b!515346 (=> (not res!218541) (not e!308285))))

(declare-fun lt!213756 () ListMap!173)

(declare-fun p!6060 () Int)

(declare-fun forall!1389 (List!4718 Int) Bool)

(assert (=> b!515346 (= res!218541 (forall!1389 (toList!406 lt!213756) p!6060))))

(declare-fun hm!65 () MutableMap!483)

(assert (=> b!515346 (= lt!213756 (map!1020 hm!65))))

(declare-fun mapIsEmpty!1969 () Bool)

(declare-fun mapRes!1969 () Bool)

(assert (=> mapIsEmpty!1969 mapRes!1969))

(declare-fun b!515347 () Bool)

(declare-fun res!218543 () Bool)

(assert (=> b!515347 (=> (not res!218543) (not e!308286))))

(declare-fun valid!470 (MutableMap!483) Bool)

(assert (=> b!515347 (= res!218543 (valid!470 hm!65))))

(declare-fun b!515348 () Bool)

(declare-fun e!308287 () Bool)

(declare-fun lt!213757 () MutLongMap!511)

(get-info :version)

(assert (=> b!515348 (= e!308287 (and e!308280 ((_ is LongMap!511) lt!213757)))))

(assert (=> b!515348 (= lt!213757 (v!15740 (underlying!1202 hm!65)))))

(declare-fun res!218539 () Bool)

(assert (=> start!46712 (=> (not res!218539) (not e!308286))))

(assert (=> start!46712 (= res!218539 ((_ is HashMap!483) hm!65))))

(assert (=> start!46712 e!308286))

(declare-fun e!308281 () Bool)

(assert (=> start!46712 e!308281))

(assert (=> start!46712 tp!160840))

(declare-fun tp_is_empty!2599 () Bool)

(assert (=> start!46712 tp_is_empty!2599))

(declare-fun b!515349 () Bool)

(declare-fun e!308284 () Bool)

(declare-fun tp!160834 () Bool)

(assert (=> b!515349 (= e!308284 (and tp!160834 mapRes!1969))))

(declare-fun condMapEmpty!1969 () Bool)

(declare-fun mapDefault!1969 () List!4718)

(assert (=> b!515349 (= condMapEmpty!1969 (= (arr!906 (_values!789 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) ((as const (Array (_ BitVec 32) List!4718)) mapDefault!1969)))))

(declare-fun b!515350 () Bool)

(declare-fun e!308278 () Bool)

(assert (=> b!515350 (= e!308282 e!308278)))

(assert (=> b!515351 (= e!308281 (and e!308287 tp!160835))))

(declare-fun mapNonEmpty!1969 () Bool)

(declare-fun tp!160838 () Bool)

(declare-fun tp!160837 () Bool)

(assert (=> mapNonEmpty!1969 (= mapRes!1969 (and tp!160838 tp!160837))))

(declare-fun mapRest!1969 () (Array (_ BitVec 32) List!4718))

(declare-fun mapValue!1969 () List!4718)

(declare-fun mapKey!1969 () (_ BitVec 32))

(assert (=> mapNonEmpty!1969 (= (arr!906 (_values!789 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) (store mapRest!1969 mapKey!1969 mapValue!1969))))

(declare-fun b!515352 () Bool)

(assert (=> b!515352 (= e!308285 e!308279)))

(declare-fun res!218540 () Bool)

(assert (=> b!515352 (=> (not res!218540) (not e!308279))))

(assert (=> b!515352 (= res!218540 (valid!470 (_2!3086 lt!213760)))))

(declare-fun k0!1740 () K!1392)

(declare-fun remove!31 (MutableMap!483 K!1392) tuple2!5740)

(assert (=> b!515352 (= lt!213760 (remove!31 hm!65 k0!1740))))

(declare-fun -!28 (ListMap!173 K!1392) ListMap!173)

(assert (=> b!515352 (= lt!213759 (-!28 lt!213756 k0!1740))))

(declare-fun tp!160839 () Bool)

(declare-fun tp!160836 () Bool)

(declare-fun array_inv!663 (array!1969) Bool)

(declare-fun array_inv!664 (array!1967) Bool)

(assert (=> b!515353 (= e!308278 (and tp!160833 tp!160836 tp!160839 (array_inv!663 (_keys!802 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) (array_inv!664 (_values!789 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) e!308284))))

(assert (= (and start!46712 res!218539) b!515347))

(assert (= (and b!515347 res!218543) b!515346))

(assert (= (and b!515346 res!218541) b!515352))

(assert (= (and b!515352 res!218540) b!515343))

(assert (= (and b!515343 res!218544) b!515342))

(assert (= (and b!515342 res!218542) b!515345))

(assert (= (and b!515349 condMapEmpty!1969) mapIsEmpty!1969))

(assert (= (and b!515349 (not condMapEmpty!1969)) mapNonEmpty!1969))

(assert (= b!515353 b!515349))

(assert (= b!515350 b!515353))

(assert (= b!515344 b!515350))

(assert (= (and b!515348 ((_ is LongMap!511) (v!15740 (underlying!1202 hm!65)))) b!515344))

(assert (= b!515351 b!515348))

(assert (= (and start!46712 ((_ is HashMap!483) hm!65)) b!515351))

(declare-fun m!761415 () Bool)

(assert (=> b!515353 m!761415))

(declare-fun m!761417 () Bool)

(assert (=> b!515353 m!761417))

(declare-fun m!761419 () Bool)

(assert (=> mapNonEmpty!1969 m!761419))

(declare-fun m!761421 () Bool)

(assert (=> b!515346 m!761421))

(declare-fun m!761423 () Bool)

(assert (=> b!515346 m!761423))

(declare-fun m!761425 () Bool)

(assert (=> b!515345 m!761425))

(declare-fun m!761427 () Bool)

(assert (=> b!515352 m!761427))

(declare-fun m!761429 () Bool)

(assert (=> b!515352 m!761429))

(declare-fun m!761431 () Bool)

(assert (=> b!515352 m!761431))

(declare-fun m!761433 () Bool)

(assert (=> b!515347 m!761433))

(declare-fun m!761435 () Bool)

(assert (=> b!515343 m!761435))

(declare-fun m!761437 () Bool)

(assert (=> b!515343 m!761437))

(check-sat (not b_next!13527) (not b!515346) b_and!50971 (not b_next!13525) (not b_next!13523) (not b!515352) (not mapNonEmpty!1969) (not b!515343) b_and!50973 (not b!515349) (not b!515345) tp_is_empty!2599 (not b!515353) b_and!50975 (not b!515347))
(check-sat b_and!50975 (not b_next!13527) b_and!50971 (not b_next!13525) (not b_next!13523) b_and!50973)
(get-model)

(declare-fun d!184422 () Bool)

(declare-fun res!218549 () Bool)

(declare-fun e!308290 () Bool)

(assert (=> d!184422 (=> (not res!218549) (not e!308290))))

(declare-fun valid!471 (MutLongMap!511) Bool)

(assert (=> d!184422 (= res!218549 (valid!471 (v!15740 (underlying!1202 hm!65))))))

(assert (=> d!184422 (= (valid!470 hm!65) e!308290)))

(declare-fun b!515358 () Bool)

(declare-fun res!218550 () Bool)

(assert (=> b!515358 (=> (not res!218550) (not e!308290))))

(declare-fun lambda!14375 () Int)

(declare-datatypes ((tuple2!5742 0))(
  ( (tuple2!5743 (_1!3087 (_ BitVec 64)) (_2!3087 List!4718)) )
))
(declare-datatypes ((List!4719 0))(
  ( (Nil!4709) (Cons!4709 (h!10106 tuple2!5742) (t!73265 List!4719)) )
))
(declare-fun forall!1390 (List!4719 Int) Bool)

(declare-datatypes ((ListLongMap!71 0))(
  ( (ListLongMap!72 (toList!407 List!4719)) )
))
(declare-fun map!1021 (MutLongMap!511) ListLongMap!71)

(assert (=> b!515358 (= res!218550 (forall!1390 (toList!407 (map!1021 (v!15740 (underlying!1202 hm!65)))) lambda!14375))))

(declare-fun b!515359 () Bool)

(declare-fun allKeysSameHashInMap!24 (ListLongMap!71 Hashable!483) Bool)

(assert (=> b!515359 (= e!308290 (allKeysSameHashInMap!24 (map!1021 (v!15740 (underlying!1202 hm!65))) (hashF!2359 hm!65)))))

(assert (= (and d!184422 res!218549) b!515358))

(assert (= (and b!515358 res!218550) b!515359))

(declare-fun m!761439 () Bool)

(assert (=> d!184422 m!761439))

(declare-fun m!761441 () Bool)

(assert (=> b!515358 m!761441))

(declare-fun m!761443 () Bool)

(assert (=> b!515358 m!761443))

(assert (=> b!515359 m!761441))

(assert (=> b!515359 m!761441))

(declare-fun m!761445 () Bool)

(assert (=> b!515359 m!761445))

(assert (=> b!515347 d!184422))

(declare-fun d!184424 () Bool)

(declare-fun noDuplicatedKeys!12 (List!4718) Bool)

(assert (=> d!184424 (= (invariantList!65 (toList!406 lt!213758)) (noDuplicatedKeys!12 (toList!406 lt!213758)))))

(declare-fun bs!59473 () Bool)

(assert (= bs!59473 d!184424))

(declare-fun m!761447 () Bool)

(assert (=> bs!59473 m!761447))

(assert (=> b!515343 d!184424))

(declare-fun d!184426 () Bool)

(declare-fun lt!213763 () ListMap!173)

(assert (=> d!184426 (invariantList!65 (toList!406 lt!213763))))

(declare-fun extractMap!17 (List!4719) ListMap!173)

(assert (=> d!184426 (= lt!213763 (extractMap!17 (toList!407 (map!1021 (v!15740 (underlying!1202 (_2!3086 lt!213760)))))))))

(assert (=> d!184426 (valid!470 (_2!3086 lt!213760))))

(assert (=> d!184426 (= (map!1020 (_2!3086 lt!213760)) lt!213763)))

(declare-fun bs!59474 () Bool)

(assert (= bs!59474 d!184426))

(declare-fun m!761449 () Bool)

(assert (=> bs!59474 m!761449))

(declare-fun m!761451 () Bool)

(assert (=> bs!59474 m!761451))

(declare-fun m!761453 () Bool)

(assert (=> bs!59474 m!761453))

(assert (=> bs!59474 m!761427))

(assert (=> b!515343 d!184426))

(declare-fun bs!59475 () Bool)

(declare-fun b!515360 () Bool)

(assert (= bs!59475 (and b!515360 b!515358)))

(declare-fun lambda!14376 () Int)

(assert (=> bs!59475 (= lambda!14376 lambda!14375)))

(declare-fun d!184428 () Bool)

(declare-fun res!218551 () Bool)

(declare-fun e!308291 () Bool)

(assert (=> d!184428 (=> (not res!218551) (not e!308291))))

(assert (=> d!184428 (= res!218551 (valid!471 (v!15740 (underlying!1202 (_2!3086 lt!213760)))))))

(assert (=> d!184428 (= (valid!470 (_2!3086 lt!213760)) e!308291)))

(declare-fun res!218552 () Bool)

(assert (=> b!515360 (=> (not res!218552) (not e!308291))))

(assert (=> b!515360 (= res!218552 (forall!1390 (toList!407 (map!1021 (v!15740 (underlying!1202 (_2!3086 lt!213760))))) lambda!14376))))

(declare-fun b!515361 () Bool)

(assert (=> b!515361 (= e!308291 (allKeysSameHashInMap!24 (map!1021 (v!15740 (underlying!1202 (_2!3086 lt!213760)))) (hashF!2359 (_2!3086 lt!213760))))))

(assert (= (and d!184428 res!218551) b!515360))

(assert (= (and b!515360 res!218552) b!515361))

(declare-fun m!761455 () Bool)

(assert (=> d!184428 m!761455))

(assert (=> b!515360 m!761451))

(declare-fun m!761457 () Bool)

(assert (=> b!515360 m!761457))

(assert (=> b!515361 m!761451))

(assert (=> b!515361 m!761451))

(declare-fun m!761459 () Bool)

(assert (=> b!515361 m!761459))

(assert (=> b!515352 d!184428))

(declare-fun bs!59476 () Bool)

(declare-fun b!515388 () Bool)

(assert (= bs!59476 (and b!515388 b!515358)))

(declare-fun lambda!14383 () Int)

(assert (=> bs!59476 (= lambda!14383 lambda!14375)))

(declare-fun bs!59477 () Bool)

(assert (= bs!59477 (and b!515388 b!515360)))

(assert (=> bs!59477 (= lambda!14383 lambda!14376)))

(declare-fun bm!37540 () Bool)

(declare-fun call!37549 () Bool)

(declare-datatypes ((Unit!8519 0))(
  ( (Unit!8520) )
))
(declare-datatypes ((tuple2!5744 0))(
  ( (tuple2!5745 (_1!3088 Unit!8519) (_2!3088 MutableMap!483)) )
))
(declare-fun lt!213842 () tuple2!5744)

(assert (=> bm!37540 (= call!37549 (valid!470 (_2!3088 lt!213842)))))

(declare-fun call!37545 () ListMap!173)

(declare-fun c!99870 () Bool)

(declare-fun call!37546 () ListMap!173)

(declare-fun lt!213833 () ListMap!173)

(declare-fun bm!37541 () Bool)

(assert (=> bm!37541 (= call!37545 (-!28 (ite c!99870 call!37546 lt!213833) k0!1740))))

(declare-fun b!515384 () Bool)

(declare-fun res!218560 () Bool)

(declare-fun e!308304 () Bool)

(assert (=> b!515384 (=> (not res!218560) (not e!308304))))

(declare-fun lt!213825 () tuple2!5740)

(assert (=> b!515384 (= res!218560 (valid!470 (_2!3086 lt!213825)))))

(declare-fun b!515385 () Bool)

(declare-fun e!308309 () ListMap!173)

(declare-fun call!37548 () ListMap!173)

(assert (=> b!515385 (= e!308309 call!37548)))

(declare-fun b!515386 () Bool)

(declare-fun e!308305 () Bool)

(declare-fun call!37551 () Bool)

(assert (=> b!515386 (= e!308305 call!37551)))

(declare-fun bm!37542 () Bool)

(declare-fun lt!213852 () ListLongMap!71)

(declare-fun lt!213839 () ListLongMap!71)

(assert (=> bm!37542 (= call!37546 (extractMap!17 (ite c!99870 (toList!407 lt!213852) (toList!407 lt!213839))))))

(declare-fun bm!37543 () Bool)

(declare-fun call!37547 () ListMap!173)

(assert (=> bm!37543 (= call!37547 (map!1020 (_2!3088 lt!213842)))))

(declare-fun d!184430 () Bool)

(assert (=> d!184430 e!308304))

(declare-fun res!218559 () Bool)

(assert (=> d!184430 (=> (not res!218559) (not e!308304))))

(assert (=> d!184430 (= res!218559 ((_ is HashMap!483) (_2!3086 lt!213825)))))

(declare-fun e!308308 () tuple2!5740)

(assert (=> d!184430 (= lt!213825 e!308308)))

(declare-fun lt!213835 () Bool)

(assert (=> d!184430 (= c!99870 (not lt!213835))))

(declare-fun contains!1073 (MutableMap!483 K!1392) Bool)

(assert (=> d!184430 (= lt!213835 (contains!1073 hm!65 k0!1740))))

(assert (=> d!184430 (valid!470 hm!65)))

(assert (=> d!184430 (= (remove!31 hm!65 k0!1740) lt!213825)))

(declare-fun b!515387 () Bool)

(assert (=> b!515387 (= e!308308 (tuple2!5741 true hm!65))))

(declare-fun call!37550 () ListLongMap!71)

(assert (=> b!515387 (= lt!213852 call!37550)))

(declare-fun lt!213828 () Unit!8519)

(declare-fun lemmaRemoveNotContainedDoesNotChange!9 (ListLongMap!71 K!1392 Hashable!483) Unit!8519)

(assert (=> b!515387 (= lt!213828 (lemmaRemoveNotContainedDoesNotChange!9 lt!213852 k0!1740 (hashF!2359 hm!65)))))

(assert (=> b!515387 (= call!37546 call!37545)))

(declare-fun lt!213830 () Unit!8519)

(assert (=> b!515387 (= lt!213830 lt!213828)))

(declare-fun bm!37544 () Bool)

(assert (=> bm!37544 (= call!37550 (map!1021 (ite c!99870 (v!15740 (underlying!1202 hm!65)) (v!15740 (underlying!1202 (_2!3088 lt!213842))))))))

(declare-datatypes ((tuple2!5746 0))(
  ( (tuple2!5747 (_1!3089 Bool) (_2!3089 MutLongMap!511)) )
))
(declare-fun lt!213836 () tuple2!5746)

(assert (=> b!515388 (= e!308308 (tuple2!5741 (_1!3089 lt!213836) (_2!3088 lt!213842)))))

(declare-fun lt!213829 () (_ BitVec 64))

(declare-fun hash!510 (Hashable!483 K!1392) (_ BitVec 64))

(assert (=> b!515388 (= lt!213829 (hash!510 (hashF!2359 hm!65) k0!1740))))

(declare-fun lt!213843 () List!4718)

(declare-fun apply!1179 (MutLongMap!511 (_ BitVec 64)) List!4718)

(assert (=> b!515388 (= lt!213843 (apply!1179 (v!15740 (underlying!1202 hm!65)) lt!213829))))

(declare-fun lt!213841 () Unit!8519)

(declare-fun forallContained!442 (List!4719 Int tuple2!5742) Unit!8519)

(assert (=> b!515388 (= lt!213841 (forallContained!442 (toList!407 (map!1021 (v!15740 (underlying!1202 hm!65)))) lambda!14383 (tuple2!5743 lt!213829 (apply!1179 (v!15740 (underlying!1202 hm!65)) lt!213829))))))

(assert (=> b!515388 (= lt!213833 (map!1020 hm!65))))

(assert (=> b!515388 (= lt!213839 (map!1021 (v!15740 (underlying!1202 hm!65))))))

(declare-fun lt!213850 () List!4718)

(declare-fun removePairForKey!11 (List!4718 K!1392) List!4718)

(assert (=> b!515388 (= lt!213850 (removePairForKey!11 lt!213843 k0!1740))))

(declare-fun update!50 (MutLongMap!511 (_ BitVec 64) List!4718) tuple2!5746)

(assert (=> b!515388 (= lt!213836 (update!50 (v!15740 (underlying!1202 hm!65)) lt!213829 lt!213850))))

(declare-fun Unit!8521 () Unit!8519)

(declare-fun Unit!8522 () Unit!8519)

(assert (=> b!515388 (= lt!213842 (ite (and (_1!3089 lt!213836) lt!213835) (tuple2!5745 Unit!8521 (HashMap!483 (Cell!1988 (_2!3089 lt!213836)) (hashF!2359 hm!65) (bvsub (_size!1132 hm!65) #b00000000000000000000000000000001) (defaultValue!632 hm!65))) (tuple2!5745 Unit!8522 (HashMap!483 (Cell!1988 (_2!3089 lt!213836)) (hashF!2359 hm!65) (_size!1132 hm!65) (defaultValue!632 hm!65)))))))

(declare-fun lt!213849 () Unit!8519)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!11 (List!4718 K!1392) Unit!8519)

(assert (=> b!515388 (= lt!213849 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!11 lt!213843 k0!1740))))

(declare-fun noDuplicateKeys!13 (List!4718) Bool)

(assert (=> b!515388 (noDuplicateKeys!13 (removePairForKey!11 lt!213843 k0!1740))))

(declare-fun lt!213851 () Unit!8519)

(assert (=> b!515388 (= lt!213851 lt!213849)))

(declare-fun c!99873 () Bool)

(assert (=> b!515388 (= c!99873 (_1!3089 lt!213836))))

(declare-fun lt!213853 () Unit!8519)

(declare-fun e!308307 () Unit!8519)

(assert (=> b!515388 (= lt!213853 e!308307)))

(declare-fun bm!37545 () Bool)

(declare-fun call!37552 () ListMap!173)

(assert (=> bm!37545 (= call!37551 (eq!24 call!37552 e!308309))))

(declare-fun c!99871 () Bool)

(declare-fun c!99872 () Bool)

(assert (=> bm!37545 (= c!99871 c!99872)))

(declare-fun b!515389 () Bool)

(assert (=> b!515389 (= e!308309 (-!28 call!37548 k0!1740))))

(declare-fun b!515390 () Bool)

(assert (=> b!515390 (eq!24 call!37547 call!37545)))

(declare-fun lt!213838 () Unit!8519)

(declare-fun lt!213847 () Unit!8519)

(assert (=> b!515390 (= lt!213838 lt!213847)))

(declare-fun +!20 (ListLongMap!71 tuple2!5742) ListLongMap!71)

(assert (=> b!515390 (eq!24 (extractMap!17 (toList!407 (+!20 lt!213839 (tuple2!5743 lt!213829 lt!213850)))) (-!28 call!37546 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!9 (ListLongMap!71 (_ BitVec 64) List!4718 K!1392 Hashable!483) Unit!8519)

(assert (=> b!515390 (= lt!213847 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!9 lt!213839 lt!213829 lt!213850 k0!1740 (hashF!2359 (_2!3088 lt!213842))))))

(declare-fun lt!213837 () Unit!8519)

(declare-fun Unit!8523 () Unit!8519)

(assert (=> b!515390 (= lt!213837 Unit!8523)))

(declare-fun contains!1074 (ListMap!173 K!1392) Bool)

(assert (=> b!515390 (contains!1074 lt!213833 k0!1740)))

(declare-fun lt!213832 () Unit!8519)

(declare-fun Unit!8524 () Unit!8519)

(assert (=> b!515390 (= lt!213832 Unit!8524)))

(assert (=> b!515390 call!37549))

(declare-fun lt!213834 () Unit!8519)

(declare-fun Unit!8525 () Unit!8519)

(assert (=> b!515390 (= lt!213834 Unit!8525)))

(assert (=> b!515390 (allKeysSameHashInMap!24 call!37550 (hashF!2359 (_2!3088 lt!213842)))))

(declare-fun lt!213844 () Unit!8519)

(declare-fun Unit!8526 () Unit!8519)

(assert (=> b!515390 (= lt!213844 Unit!8526)))

(assert (=> b!515390 (forall!1390 (toList!407 call!37550) lambda!14383)))

(declare-fun lt!213831 () Unit!8519)

(declare-fun lt!213848 () Unit!8519)

(assert (=> b!515390 (= lt!213831 lt!213848)))

(declare-fun e!308306 () Bool)

(assert (=> b!515390 e!308306))

(declare-fun res!218561 () Bool)

(assert (=> b!515390 (=> (not res!218561) (not e!308306))))

(declare-fun lt!213824 () ListLongMap!71)

(assert (=> b!515390 (= res!218561 (forall!1390 (toList!407 lt!213824) lambda!14383))))

(assert (=> b!515390 (= lt!213824 (+!20 lt!213839 (tuple2!5743 lt!213829 lt!213850)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!11 (ListLongMap!71 (_ BitVec 64) List!4718 Hashable!483) Unit!8519)

(assert (=> b!515390 (= lt!213848 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!11 lt!213839 lt!213829 lt!213850 (hashF!2359 (_2!3088 lt!213842))))))

(declare-fun lt!213845 () Unit!8519)

(declare-fun lt!213846 () Unit!8519)

(assert (=> b!515390 (= lt!213845 lt!213846)))

(declare-fun allKeysSameHash!12 (List!4718 (_ BitVec 64) Hashable!483) Bool)

(assert (=> b!515390 (allKeysSameHash!12 (removePairForKey!11 lt!213843 k0!1740) lt!213829 (hashF!2359 (_2!3088 lt!213842)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!11 (List!4718 K!1392 (_ BitVec 64) Hashable!483) Unit!8519)

(assert (=> b!515390 (= lt!213846 (lemmaRemovePairForKeyPreservesHash!11 lt!213843 k0!1740 lt!213829 (hashF!2359 (_2!3088 lt!213842))))))

(declare-fun lt!213826 () Unit!8519)

(declare-fun lt!213840 () Unit!8519)

(assert (=> b!515390 (= lt!213826 lt!213840)))

(assert (=> b!515390 (allKeysSameHash!12 lt!213843 lt!213829 (hashF!2359 (_2!3088 lt!213842)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!11 (List!4719 (_ BitVec 64) List!4718 Hashable!483) Unit!8519)

(assert (=> b!515390 (= lt!213840 (lemmaInLongMapAllKeySameHashThenForTuple!11 (toList!407 lt!213839) lt!213829 lt!213843 (hashF!2359 (_2!3088 lt!213842))))))

(declare-fun Unit!8527 () Unit!8519)

(assert (=> b!515390 (= e!308307 Unit!8527)))

(declare-fun b!515391 () Bool)

(assert (=> b!515391 (= call!37547 lt!213833)))

(declare-fun lt!213827 () Unit!8519)

(declare-fun Unit!8528 () Unit!8519)

(assert (=> b!515391 (= lt!213827 Unit!8528)))

(assert (=> b!515391 call!37549))

(declare-fun Unit!8529 () Unit!8519)

(assert (=> b!515391 (= e!308307 Unit!8529)))

(declare-fun b!515392 () Bool)

(assert (=> b!515392 (= e!308306 (allKeysSameHashInMap!24 lt!213824 (hashF!2359 (_2!3088 lt!213842))))))

(declare-fun b!515393 () Bool)

(assert (=> b!515393 (= e!308304 e!308305)))

(assert (=> b!515393 (= c!99872 (_1!3086 lt!213825))))

(declare-fun bm!37546 () Bool)

(assert (=> bm!37546 (= call!37548 (map!1020 hm!65))))

(declare-fun b!515394 () Bool)

(assert (=> b!515394 (= e!308305 call!37551)))

(declare-fun bm!37547 () Bool)

(assert (=> bm!37547 (= call!37552 (map!1020 (_2!3086 lt!213825)))))

(assert (= (and d!184430 c!99870) b!515387))

(assert (= (and d!184430 (not c!99870)) b!515388))

(assert (= (and b!515388 c!99873) b!515390))

(assert (= (and b!515388 (not c!99873)) b!515391))

(assert (= (and b!515390 res!218561) b!515392))

(assert (= (or b!515390 b!515391) bm!37540))

(assert (= (or b!515390 b!515391) bm!37543))

(assert (= (or b!515387 b!515390) bm!37544))

(assert (= (or b!515387 b!515390) bm!37542))

(assert (= (or b!515387 b!515390) bm!37541))

(assert (= (and d!184430 res!218559) b!515384))

(assert (= (and b!515384 res!218560) b!515393))

(assert (= (and b!515393 c!99872) b!515386))

(assert (= (and b!515393 (not c!99872)) b!515394))

(assert (= (or b!515386 b!515394) bm!37546))

(assert (= (or b!515386 b!515394) bm!37547))

(assert (= (or b!515386 b!515394) bm!37545))

(assert (= (and bm!37545 c!99871) b!515389))

(assert (= (and bm!37545 (not c!99871)) b!515385))

(declare-fun m!761461 () Bool)

(assert (=> bm!37545 m!761461))

(declare-fun m!761463 () Bool)

(assert (=> b!515388 m!761463))

(declare-fun m!761465 () Bool)

(assert (=> b!515388 m!761465))

(declare-fun m!761467 () Bool)

(assert (=> b!515388 m!761467))

(declare-fun m!761469 () Bool)

(assert (=> b!515388 m!761469))

(declare-fun m!761471 () Bool)

(assert (=> b!515388 m!761471))

(declare-fun m!761473 () Bool)

(assert (=> b!515388 m!761473))

(assert (=> b!515388 m!761441))

(assert (=> b!515388 m!761423))

(assert (=> b!515388 m!761463))

(declare-fun m!761475 () Bool)

(assert (=> b!515388 m!761475))

(declare-fun m!761477 () Bool)

(assert (=> b!515392 m!761477))

(declare-fun m!761479 () Bool)

(assert (=> bm!37544 m!761479))

(declare-fun m!761481 () Bool)

(assert (=> bm!37541 m!761481))

(declare-fun m!761483 () Bool)

(assert (=> bm!37540 m!761483))

(declare-fun m!761485 () Bool)

(assert (=> bm!37542 m!761485))

(assert (=> bm!37546 m!761423))

(declare-fun m!761487 () Bool)

(assert (=> b!515384 m!761487))

(declare-fun m!761489 () Bool)

(assert (=> bm!37543 m!761489))

(declare-fun m!761491 () Bool)

(assert (=> b!515387 m!761491))

(declare-fun m!761493 () Bool)

(assert (=> d!184430 m!761493))

(assert (=> d!184430 m!761433))

(declare-fun m!761495 () Bool)

(assert (=> b!515389 m!761495))

(declare-fun m!761497 () Bool)

(assert (=> bm!37547 m!761497))

(assert (=> b!515390 m!761463))

(declare-fun m!761499 () Bool)

(assert (=> b!515390 m!761499))

(declare-fun m!761501 () Bool)

(assert (=> b!515390 m!761501))

(declare-fun m!761503 () Bool)

(assert (=> b!515390 m!761503))

(declare-fun m!761505 () Bool)

(assert (=> b!515390 m!761505))

(declare-fun m!761507 () Bool)

(assert (=> b!515390 m!761507))

(declare-fun m!761509 () Bool)

(assert (=> b!515390 m!761509))

(assert (=> b!515390 m!761503))

(declare-fun m!761511 () Bool)

(assert (=> b!515390 m!761511))

(declare-fun m!761513 () Bool)

(assert (=> b!515390 m!761513))

(declare-fun m!761515 () Bool)

(assert (=> b!515390 m!761515))

(assert (=> b!515390 m!761463))

(declare-fun m!761517 () Bool)

(assert (=> b!515390 m!761517))

(declare-fun m!761519 () Bool)

(assert (=> b!515390 m!761519))

(declare-fun m!761521 () Bool)

(assert (=> b!515390 m!761521))

(declare-fun m!761523 () Bool)

(assert (=> b!515390 m!761523))

(declare-fun m!761525 () Bool)

(assert (=> b!515390 m!761525))

(assert (=> b!515390 m!761509))

(declare-fun m!761527 () Bool)

(assert (=> b!515390 m!761527))

(assert (=> b!515352 d!184430))

(declare-fun d!184432 () Bool)

(declare-fun e!308312 () Bool)

(assert (=> d!184432 e!308312))

(declare-fun res!218564 () Bool)

(assert (=> d!184432 (=> (not res!218564) (not e!308312))))

(declare-fun lt!213856 () ListMap!173)

(assert (=> d!184432 (= res!218564 (not (contains!1074 lt!213856 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!9 (List!4718 K!1392) List!4718)

(assert (=> d!184432 (= lt!213856 (ListMap!174 (removePresrvNoDuplicatedKeys!9 (toList!406 lt!213756) k0!1740)))))

(assert (=> d!184432 (= (-!28 lt!213756 k0!1740) lt!213856)))

(declare-fun b!515397 () Bool)

(declare-datatypes ((List!4720 0))(
  ( (Nil!4710) (Cons!4710 (h!10107 K!1392) (t!73266 List!4720)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!817 (List!4720) (InoxSet K!1392))

(declare-fun keys!1840 (ListMap!173) List!4720)

(assert (=> b!515397 (= e!308312 (= ((_ map and) (content!817 (keys!1840 lt!213756)) ((_ map not) (store ((as const (Array K!1392 Bool)) false) k0!1740 true))) (content!817 (keys!1840 lt!213856))))))

(assert (= (and d!184432 res!218564) b!515397))

(declare-fun m!761529 () Bool)

(assert (=> d!184432 m!761529))

(declare-fun m!761531 () Bool)

(assert (=> d!184432 m!761531))

(declare-fun m!761533 () Bool)

(assert (=> b!515397 m!761533))

(declare-fun m!761535 () Bool)

(assert (=> b!515397 m!761535))

(assert (=> b!515397 m!761533))

(declare-fun m!761537 () Bool)

(assert (=> b!515397 m!761537))

(declare-fun m!761539 () Bool)

(assert (=> b!515397 m!761539))

(declare-fun m!761541 () Bool)

(assert (=> b!515397 m!761541))

(assert (=> b!515397 m!761539))

(assert (=> b!515352 d!184432))

(declare-fun d!184434 () Bool)

(assert (=> d!184434 (= (array_inv!663 (_keys!802 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) (bvsge (size!3841 (_keys!802 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515353 d!184434))

(declare-fun d!184436 () Bool)

(assert (=> d!184436 (= (array_inv!664 (_values!789 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) (bvsge (size!3840 (_values!789 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515353 d!184436))

(declare-fun d!184438 () Bool)

(declare-fun content!818 (List!4718) (InoxSet tuple2!5738))

(assert (=> d!184438 (= (eq!24 lt!213758 lt!213759) (= (content!818 (toList!406 lt!213758)) (content!818 (toList!406 lt!213759))))))

(declare-fun bs!59478 () Bool)

(assert (= bs!59478 d!184438))

(declare-fun m!761543 () Bool)

(assert (=> bs!59478 m!761543))

(declare-fun m!761545 () Bool)

(assert (=> bs!59478 m!761545))

(assert (=> b!515345 d!184438))

(declare-fun d!184440 () Bool)

(declare-fun res!218569 () Bool)

(declare-fun e!308317 () Bool)

(assert (=> d!184440 (=> res!218569 e!308317)))

(assert (=> d!184440 (= res!218569 ((_ is Nil!4708) (toList!406 lt!213756)))))

(assert (=> d!184440 (= (forall!1389 (toList!406 lt!213756) p!6060) e!308317)))

(declare-fun b!515402 () Bool)

(declare-fun e!308318 () Bool)

(assert (=> b!515402 (= e!308317 e!308318)))

(declare-fun res!218570 () Bool)

(assert (=> b!515402 (=> (not res!218570) (not e!308318))))

(declare-fun dynLambda!2972 (Int tuple2!5738) Bool)

(assert (=> b!515402 (= res!218570 (dynLambda!2972 p!6060 (h!10105 (toList!406 lt!213756))))))

(declare-fun b!515403 () Bool)

(assert (=> b!515403 (= e!308318 (forall!1389 (t!73262 (toList!406 lt!213756)) p!6060))))

(assert (= (and d!184440 (not res!218569)) b!515402))

(assert (= (and b!515402 res!218570) b!515403))

(declare-fun b_lambda!20009 () Bool)

(assert (=> (not b_lambda!20009) (not b!515402)))

(declare-fun t!73264 () Bool)

(declare-fun tb!47143 () Bool)

(assert (=> (and start!46712 (= p!6060 p!6060) t!73264) tb!47143))

(declare-fun result!52182 () Bool)

(assert (=> tb!47143 (= result!52182 true)))

(assert (=> b!515402 t!73264))

(declare-fun b_and!50977 () Bool)

(assert (= b_and!50975 (and (=> t!73264 result!52182) b_and!50977)))

(declare-fun m!761547 () Bool)

(assert (=> b!515402 m!761547))

(declare-fun m!761549 () Bool)

(assert (=> b!515403 m!761549))

(assert (=> b!515346 d!184440))

(declare-fun d!184442 () Bool)

(declare-fun lt!213857 () ListMap!173)

(assert (=> d!184442 (invariantList!65 (toList!406 lt!213857))))

(assert (=> d!184442 (= lt!213857 (extractMap!17 (toList!407 (map!1021 (v!15740 (underlying!1202 hm!65))))))))

(assert (=> d!184442 (valid!470 hm!65)))

(assert (=> d!184442 (= (map!1020 hm!65) lt!213857)))

(declare-fun bs!59479 () Bool)

(assert (= bs!59479 d!184442))

(declare-fun m!761551 () Bool)

(assert (=> bs!59479 m!761551))

(assert (=> bs!59479 m!761441))

(declare-fun m!761553 () Bool)

(assert (=> bs!59479 m!761553))

(assert (=> bs!59479 m!761433))

(assert (=> b!515346 d!184442))

(declare-fun b!515408 () Bool)

(declare-fun e!308321 () Bool)

(declare-fun tp_is_empty!2601 () Bool)

(declare-fun tp!160843 () Bool)

(assert (=> b!515408 (= e!308321 (and tp_is_empty!2599 tp_is_empty!2601 tp!160843))))

(assert (=> b!515353 (= tp!160836 e!308321)))

(assert (= (and b!515353 ((_ is Cons!4708) (zeroValue!767 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65))))))) b!515408))

(declare-fun b!515409 () Bool)

(declare-fun e!308322 () Bool)

(declare-fun tp!160844 () Bool)

(assert (=> b!515409 (= e!308322 (and tp_is_empty!2599 tp_is_empty!2601 tp!160844))))

(assert (=> b!515353 (= tp!160839 e!308322)))

(assert (= (and b!515353 ((_ is Cons!4708) (minValue!767 (v!15739 (underlying!1201 (v!15740 (underlying!1202 hm!65))))))) b!515409))

(declare-fun b!515410 () Bool)

(declare-fun e!308323 () Bool)

(declare-fun tp!160845 () Bool)

(assert (=> b!515410 (= e!308323 (and tp_is_empty!2599 tp_is_empty!2601 tp!160845))))

(assert (=> b!515349 (= tp!160834 e!308323)))

(assert (= (and b!515349 ((_ is Cons!4708) mapDefault!1969)) b!515410))

(declare-fun mapIsEmpty!1972 () Bool)

(declare-fun mapRes!1972 () Bool)

(assert (=> mapIsEmpty!1972 mapRes!1972))

(declare-fun e!308328 () Bool)

(declare-fun tp!160854 () Bool)

(declare-fun b!515417 () Bool)

(assert (=> b!515417 (= e!308328 (and tp_is_empty!2599 tp_is_empty!2601 tp!160854))))

(declare-fun b!515418 () Bool)

(declare-fun tp!160852 () Bool)

(declare-fun e!308329 () Bool)

(assert (=> b!515418 (= e!308329 (and tp_is_empty!2599 tp_is_empty!2601 tp!160852))))

(declare-fun mapNonEmpty!1972 () Bool)

(declare-fun tp!160853 () Bool)

(assert (=> mapNonEmpty!1972 (= mapRes!1972 (and tp!160853 e!308328))))

(declare-fun mapKey!1972 () (_ BitVec 32))

(declare-fun mapRest!1972 () (Array (_ BitVec 32) List!4718))

(declare-fun mapValue!1972 () List!4718)

(assert (=> mapNonEmpty!1972 (= mapRest!1969 (store mapRest!1972 mapKey!1972 mapValue!1972))))

(declare-fun condMapEmpty!1972 () Bool)

(declare-fun mapDefault!1972 () List!4718)

(assert (=> mapNonEmpty!1969 (= condMapEmpty!1972 (= mapRest!1969 ((as const (Array (_ BitVec 32) List!4718)) mapDefault!1972)))))

(assert (=> mapNonEmpty!1969 (= tp!160838 (and e!308329 mapRes!1972))))

(assert (= (and mapNonEmpty!1969 condMapEmpty!1972) mapIsEmpty!1972))

(assert (= (and mapNonEmpty!1969 (not condMapEmpty!1972)) mapNonEmpty!1972))

(assert (= (and mapNonEmpty!1972 ((_ is Cons!4708) mapValue!1972)) b!515417))

(assert (= (and mapNonEmpty!1969 ((_ is Cons!4708) mapDefault!1972)) b!515418))

(declare-fun m!761555 () Bool)

(assert (=> mapNonEmpty!1972 m!761555))

(declare-fun tp!160855 () Bool)

(declare-fun b!515419 () Bool)

(declare-fun e!308330 () Bool)

(assert (=> b!515419 (= e!308330 (and tp_is_empty!2599 tp_is_empty!2601 tp!160855))))

(assert (=> mapNonEmpty!1969 (= tp!160837 e!308330)))

(assert (= (and mapNonEmpty!1969 ((_ is Cons!4708) mapValue!1969)) b!515419))

(declare-fun b_lambda!20011 () Bool)

(assert (= b_lambda!20009 (or (and start!46712 b_free!13527) b_lambda!20011)))

(check-sat (not bm!37544) (not b!515410) b_and!50971 (not mapNonEmpty!1972) (not b!515409) (not b!515359) (not b!515384) (not b!515360) (not bm!37545) (not d!184432) (not bm!37547) (not d!184428) (not b!515361) (not b!515392) (not d!184424) (not b!515408) b_and!50977 (not d!184438) (not b_next!13527) (not d!184430) (not d!184442) (not b!515387) (not b!515358) (not bm!37543) (not b!515417) (not b_next!13525) (not bm!37540) (not b_next!13523) (not b!515419) (not b!515388) b_and!50973 (not b!515418) (not b!515389) (not b!515397) (not b!515390) tp_is_empty!2599 tp_is_empty!2601 (not d!184422) (not b!515403) (not b_lambda!20011) (not bm!37542) (not bm!37541) (not bm!37546) (not d!184426))
(check-sat b_and!50971 (not b_next!13525) (not b_next!13523) b_and!50973 b_and!50977 (not b_next!13527))
