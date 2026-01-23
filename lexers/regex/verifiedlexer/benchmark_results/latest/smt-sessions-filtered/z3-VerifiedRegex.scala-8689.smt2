; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462580 () Bool)

(assert start!462580)

(declare-fun b!4620368 () Bool)

(declare-fun e!2882052 () Bool)

(declare-fun e!2882053 () Bool)

(assert (=> b!4620368 (= e!2882052 e!2882053)))

(declare-fun res!1936699 () Bool)

(assert (=> b!4620368 (=> (not res!1936699) (not e!2882053))))

(declare-datatypes ((K!12850 0))(
  ( (K!12851 (val!18551 Int)) )
))
(declare-datatypes ((V!13096 0))(
  ( (V!13097 (val!18552 Int)) )
))
(declare-datatypes ((tuple2!52366 0))(
  ( (tuple2!52367 (_1!29477 K!12850) (_2!29477 V!13096)) )
))
(declare-datatypes ((List!51588 0))(
  ( (Nil!51464) (Cons!51464 (h!57496 tuple2!52366) (t!358602 List!51588)) )
))
(declare-datatypes ((ListMap!4229 0))(
  ( (ListMap!4230 (toList!4925 List!51588)) )
))
(declare-fun lt!1776336 () ListMap!4229)

(declare-fun key!4968 () K!12850)

(declare-fun contains!14463 (ListMap!4229 K!12850) Bool)

(assert (=> b!4620368 (= res!1936699 (contains!14463 lt!1776336 key!4968))))

(declare-datatypes ((tuple2!52368 0))(
  ( (tuple2!52369 (_1!29478 (_ BitVec 64)) (_2!29478 List!51588)) )
))
(declare-datatypes ((List!51589 0))(
  ( (Nil!51465) (Cons!51465 (h!57497 tuple2!52368) (t!358603 List!51589)) )
))
(declare-fun lt!1776346 () List!51589)

(declare-fun extractMap!1536 (List!51589) ListMap!4229)

(assert (=> b!4620368 (= lt!1776336 (extractMap!1536 lt!1776346))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51588)

(assert (=> b!4620368 (= lt!1776346 (Cons!51465 (tuple2!52369 hash!414 oldBucket!40) Nil!51465))))

(declare-fun b!4620369 () Bool)

(declare-fun e!2882050 () Bool)

(declare-fun e!2882051 () Bool)

(assert (=> b!4620369 (= e!2882050 e!2882051)))

(declare-fun res!1936692 () Bool)

(assert (=> b!4620369 (=> res!1936692 e!2882051)))

(declare-fun containsKey!2384 (List!51588 K!12850) Bool)

(assert (=> b!4620369 (= res!1936692 (not (containsKey!2384 (t!358602 oldBucket!40) key!4968)))))

(assert (=> b!4620369 (containsKey!2384 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5877 0))(
  ( (HashableExt!5876 (__x!31580 Int)) )
))
(declare-fun hashF!1389 () Hashable!5877)

(declare-datatypes ((Unit!110900 0))(
  ( (Unit!110901) )
))
(declare-fun lt!1776347 () Unit!110900)

(declare-fun lemmaGetPairDefinedThenContainsKey!26 (List!51588 K!12850 Hashable!5877) Unit!110900)

(assert (=> b!4620369 (= lt!1776347 (lemmaGetPairDefinedThenContainsKey!26 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1776341 () List!51588)

(declare-datatypes ((Option!11526 0))(
  ( (None!11525) (Some!11525 (v!45615 tuple2!52366)) )
))
(declare-fun isDefined!8791 (Option!11526) Bool)

(declare-fun getPair!272 (List!51588 K!12850) Option!11526)

(assert (=> b!4620369 (isDefined!8791 (getPair!272 lt!1776341 key!4968))))

(declare-fun lt!1776335 () Unit!110900)

(declare-fun lt!1776343 () tuple2!52368)

(declare-fun lambda!190586 () Int)

(declare-fun forallContained!3006 (List!51589 Int tuple2!52368) Unit!110900)

(assert (=> b!4620369 (= lt!1776335 (forallContained!3006 lt!1776346 lambda!190586 lt!1776343))))

(declare-fun contains!14464 (List!51589 tuple2!52368) Bool)

(assert (=> b!4620369 (contains!14464 lt!1776346 lt!1776343)))

(declare-fun lt!1776338 () (_ BitVec 64))

(assert (=> b!4620369 (= lt!1776343 (tuple2!52369 lt!1776338 lt!1776341))))

(declare-datatypes ((ListLongMap!3515 0))(
  ( (ListLongMap!3516 (toList!4926 List!51589)) )
))
(declare-fun lt!1776344 () ListLongMap!3515)

(declare-fun lt!1776337 () Unit!110900)

(declare-fun lemmaGetValueImpliesTupleContained!77 (ListLongMap!3515 (_ BitVec 64) List!51588) Unit!110900)

(assert (=> b!4620369 (= lt!1776337 (lemmaGetValueImpliesTupleContained!77 lt!1776344 lt!1776338 lt!1776341))))

(declare-fun apply!12145 (ListLongMap!3515 (_ BitVec 64)) List!51588)

(assert (=> b!4620369 (= lt!1776341 (apply!12145 lt!1776344 lt!1776338))))

(declare-fun contains!14465 (ListLongMap!3515 (_ BitVec 64)) Bool)

(assert (=> b!4620369 (contains!14465 lt!1776344 lt!1776338)))

(declare-fun lt!1776340 () Unit!110900)

(declare-fun lemmaInGenMapThenLongMapContainsHash!478 (ListLongMap!3515 K!12850 Hashable!5877) Unit!110900)

(assert (=> b!4620369 (= lt!1776340 (lemmaInGenMapThenLongMapContainsHash!478 lt!1776344 key!4968 hashF!1389))))

(declare-fun lt!1776342 () Unit!110900)

(declare-fun lemmaInGenMapThenGetPairDefined!68 (ListLongMap!3515 K!12850 Hashable!5877) Unit!110900)

(assert (=> b!4620369 (= lt!1776342 (lemmaInGenMapThenGetPairDefined!68 lt!1776344 key!4968 hashF!1389))))

(assert (=> b!4620369 (= lt!1776344 (ListLongMap!3516 lt!1776346))))

(declare-fun res!1936695 () Bool)

(assert (=> start!462580 (=> (not res!1936695) (not e!2882052))))

(declare-fun noDuplicateKeys!1480 (List!51588) Bool)

(assert (=> start!462580 (= res!1936695 (noDuplicateKeys!1480 oldBucket!40))))

(assert (=> start!462580 e!2882052))

(assert (=> start!462580 true))

(declare-fun e!2882049 () Bool)

(assert (=> start!462580 e!2882049))

(declare-fun tp_is_empty!29213 () Bool)

(assert (=> start!462580 tp_is_empty!29213))

(declare-fun e!2882054 () Bool)

(assert (=> start!462580 e!2882054))

(declare-fun b!4620370 () Bool)

(declare-fun e!2882046 () Bool)

(assert (=> b!4620370 (= e!2882053 e!2882046)))

(declare-fun res!1936703 () Bool)

(assert (=> b!4620370 (=> (not res!1936703) (not e!2882046))))

(assert (=> b!4620370 (= res!1936703 (= lt!1776338 hash!414))))

(declare-fun hash!3452 (Hashable!5877 K!12850) (_ BitVec 64))

(assert (=> b!4620370 (= lt!1776338 (hash!3452 hashF!1389 key!4968))))

(declare-fun b!4620371 () Bool)

(declare-fun e!2882045 () Bool)

(assert (=> b!4620371 (= e!2882045 true)))

(declare-fun lt!1776334 () Bool)

(declare-fun newBucket!224 () List!51588)

(declare-fun lt!1776350 () List!51588)

(declare-fun head!9614 (List!51588) tuple2!52366)

(assert (=> b!4620371 (= lt!1776334 (noDuplicateKeys!1480 (Cons!51464 (head!9614 newBucket!224) lt!1776350)))))

(declare-fun b!4620372 () Bool)

(declare-fun e!2882047 () Bool)

(assert (=> b!4620372 (= e!2882047 e!2882045)))

(declare-fun res!1936702 () Bool)

(assert (=> b!4620372 (=> res!1936702 e!2882045)))

(assert (=> b!4620372 (= res!1936702 (not (noDuplicateKeys!1480 lt!1776350)))))

(declare-fun lt!1776339 () tuple2!52366)

(declare-fun lt!1776333 () List!51588)

(declare-fun eq!795 (ListMap!4229 ListMap!4229) Bool)

(declare-fun addToMapMapFromBucket!941 (List!51588 ListMap!4229) ListMap!4229)

(declare-fun +!1846 (ListMap!4229 tuple2!52366) ListMap!4229)

(assert (=> b!4620372 (eq!795 (addToMapMapFromBucket!941 (Cons!51464 lt!1776339 lt!1776333) (ListMap!4230 Nil!51464)) (+!1846 (addToMapMapFromBucket!941 lt!1776333 (ListMap!4230 Nil!51464)) lt!1776339))))

(declare-fun lt!1776349 () Unit!110900)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!46 (tuple2!52366 List!51588 ListMap!4229) Unit!110900)

(assert (=> b!4620372 (= lt!1776349 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!46 lt!1776339 lt!1776333 (ListMap!4230 Nil!51464)))))

(assert (=> b!4620372 (= lt!1776339 (head!9614 oldBucket!40))))

(declare-fun lt!1776351 () List!51589)

(assert (=> b!4620372 (contains!14463 (extractMap!1536 lt!1776351) key!4968)))

(declare-fun lt!1776345 () Unit!110900)

(declare-fun lemmaListContainsThenExtractedMapContains!298 (ListLongMap!3515 K!12850 Hashable!5877) Unit!110900)

(assert (=> b!4620372 (= lt!1776345 (lemmaListContainsThenExtractedMapContains!298 (ListLongMap!3516 lt!1776351) key!4968 hashF!1389))))

(assert (=> b!4620372 (= lt!1776351 (Cons!51465 (tuple2!52369 hash!414 (t!358602 oldBucket!40)) Nil!51465))))

(declare-fun b!4620373 () Bool)

(declare-fun res!1936704 () Bool)

(assert (=> b!4620373 (=> (not res!1936704) (not e!2882052))))

(assert (=> b!4620373 (= res!1936704 (noDuplicateKeys!1480 newBucket!224))))

(declare-fun b!4620374 () Bool)

(declare-fun res!1936701 () Bool)

(assert (=> b!4620374 (=> (not res!1936701) (not e!2882052))))

(declare-fun removePairForKey!1103 (List!51588 K!12850) List!51588)

(assert (=> b!4620374 (= res!1936701 (= (removePairForKey!1103 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4620375 () Bool)

(assert (=> b!4620375 (= e!2882051 e!2882047)))

(declare-fun res!1936693 () Bool)

(assert (=> b!4620375 (=> res!1936693 e!2882047)))

(assert (=> b!4620375 (= res!1936693 (not (= (removePairForKey!1103 lt!1776333 key!4968) lt!1776350)))))

(declare-fun tail!8115 (List!51588) List!51588)

(assert (=> b!4620375 (= lt!1776350 (tail!8115 newBucket!224))))

(assert (=> b!4620375 (= lt!1776333 (tail!8115 oldBucket!40))))

(declare-fun b!4620376 () Bool)

(declare-fun res!1936697 () Bool)

(assert (=> b!4620376 (=> res!1936697 e!2882047)))

(assert (=> b!4620376 (= res!1936697 (not (= (removePairForKey!1103 (t!358602 oldBucket!40) key!4968) lt!1776350)))))

(declare-fun b!4620377 () Bool)

(declare-fun tp_is_empty!29215 () Bool)

(declare-fun tp!1341878 () Bool)

(assert (=> b!4620377 (= e!2882049 (and tp_is_empty!29213 tp_is_empty!29215 tp!1341878))))

(declare-fun b!4620378 () Bool)

(declare-fun res!1936700 () Bool)

(assert (=> b!4620378 (=> (not res!1936700) (not e!2882052))))

(declare-fun allKeysSameHash!1334 (List!51588 (_ BitVec 64) Hashable!5877) Bool)

(assert (=> b!4620378 (= res!1936700 (allKeysSameHash!1334 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4620379 () Bool)

(assert (=> b!4620379 (= e!2882046 (not e!2882050))))

(declare-fun res!1936698 () Bool)

(assert (=> b!4620379 (=> res!1936698 e!2882050)))

(get-info :version)

(assert (=> b!4620379 (= res!1936698 (or (and ((_ is Cons!51464) oldBucket!40) (= (_1!29477 (h!57496 oldBucket!40)) key!4968)) (not ((_ is Cons!51464) oldBucket!40)) (= (_1!29477 (h!57496 oldBucket!40)) key!4968)))))

(declare-fun e!2882048 () Bool)

(assert (=> b!4620379 e!2882048))

(declare-fun res!1936694 () Bool)

(assert (=> b!4620379 (=> (not res!1936694) (not e!2882048))))

(declare-fun lt!1776348 () ListMap!4229)

(assert (=> b!4620379 (= res!1936694 (= lt!1776336 (addToMapMapFromBucket!941 oldBucket!40 lt!1776348)))))

(assert (=> b!4620379 (= lt!1776348 (extractMap!1536 Nil!51465))))

(assert (=> b!4620379 true))

(declare-fun b!4620380 () Bool)

(assert (=> b!4620380 (= e!2882048 (= lt!1776348 (ListMap!4230 Nil!51464)))))

(declare-fun tp!1341879 () Bool)

(declare-fun b!4620381 () Bool)

(assert (=> b!4620381 (= e!2882054 (and tp_is_empty!29213 tp_is_empty!29215 tp!1341879))))

(declare-fun b!4620382 () Bool)

(declare-fun res!1936696 () Bool)

(assert (=> b!4620382 (=> (not res!1936696) (not e!2882046))))

(assert (=> b!4620382 (= res!1936696 (allKeysSameHash!1334 newBucket!224 hash!414 hashF!1389))))

(assert (= (and start!462580 res!1936695) b!4620373))

(assert (= (and b!4620373 res!1936704) b!4620374))

(assert (= (and b!4620374 res!1936701) b!4620378))

(assert (= (and b!4620378 res!1936700) b!4620368))

(assert (= (and b!4620368 res!1936699) b!4620370))

(assert (= (and b!4620370 res!1936703) b!4620382))

(assert (= (and b!4620382 res!1936696) b!4620379))

(assert (= (and b!4620379 res!1936694) b!4620380))

(assert (= (and b!4620379 (not res!1936698)) b!4620369))

(assert (= (and b!4620369 (not res!1936692)) b!4620375))

(assert (= (and b!4620375 (not res!1936693)) b!4620376))

(assert (= (and b!4620376 (not res!1936697)) b!4620372))

(assert (= (and b!4620372 (not res!1936702)) b!4620371))

(assert (= (and start!462580 ((_ is Cons!51464) oldBucket!40)) b!4620377))

(assert (= (and start!462580 ((_ is Cons!51464) newBucket!224)) b!4620381))

(declare-fun m!5456527 () Bool)

(assert (=> b!4620374 m!5456527))

(declare-fun m!5456529 () Bool)

(assert (=> start!462580 m!5456529))

(declare-fun m!5456531 () Bool)

(assert (=> b!4620370 m!5456531))

(declare-fun m!5456533 () Bool)

(assert (=> b!4620379 m!5456533))

(declare-fun m!5456535 () Bool)

(assert (=> b!4620379 m!5456535))

(declare-fun m!5456537 () Bool)

(assert (=> b!4620382 m!5456537))

(declare-fun m!5456539 () Bool)

(assert (=> b!4620376 m!5456539))

(declare-fun m!5456541 () Bool)

(assert (=> b!4620369 m!5456541))

(declare-fun m!5456543 () Bool)

(assert (=> b!4620369 m!5456543))

(assert (=> b!4620369 m!5456541))

(declare-fun m!5456545 () Bool)

(assert (=> b!4620369 m!5456545))

(declare-fun m!5456547 () Bool)

(assert (=> b!4620369 m!5456547))

(declare-fun m!5456549 () Bool)

(assert (=> b!4620369 m!5456549))

(declare-fun m!5456551 () Bool)

(assert (=> b!4620369 m!5456551))

(declare-fun m!5456553 () Bool)

(assert (=> b!4620369 m!5456553))

(declare-fun m!5456555 () Bool)

(assert (=> b!4620369 m!5456555))

(declare-fun m!5456557 () Bool)

(assert (=> b!4620369 m!5456557))

(declare-fun m!5456559 () Bool)

(assert (=> b!4620369 m!5456559))

(declare-fun m!5456561 () Bool)

(assert (=> b!4620369 m!5456561))

(declare-fun m!5456563 () Bool)

(assert (=> b!4620369 m!5456563))

(declare-fun m!5456565 () Bool)

(assert (=> b!4620373 m!5456565))

(declare-fun m!5456567 () Bool)

(assert (=> b!4620371 m!5456567))

(declare-fun m!5456569 () Bool)

(assert (=> b!4620371 m!5456569))

(declare-fun m!5456571 () Bool)

(assert (=> b!4620368 m!5456571))

(declare-fun m!5456573 () Bool)

(assert (=> b!4620368 m!5456573))

(declare-fun m!5456575 () Bool)

(assert (=> b!4620378 m!5456575))

(declare-fun m!5456577 () Bool)

(assert (=> b!4620372 m!5456577))

(assert (=> b!4620372 m!5456577))

(declare-fun m!5456579 () Bool)

(assert (=> b!4620372 m!5456579))

(declare-fun m!5456581 () Bool)

(assert (=> b!4620372 m!5456581))

(declare-fun m!5456583 () Bool)

(assert (=> b!4620372 m!5456583))

(declare-fun m!5456585 () Bool)

(assert (=> b!4620372 m!5456585))

(declare-fun m!5456587 () Bool)

(assert (=> b!4620372 m!5456587))

(assert (=> b!4620372 m!5456585))

(declare-fun m!5456589 () Bool)

(assert (=> b!4620372 m!5456589))

(declare-fun m!5456591 () Bool)

(assert (=> b!4620372 m!5456591))

(declare-fun m!5456593 () Bool)

(assert (=> b!4620372 m!5456593))

(assert (=> b!4620372 m!5456589))

(assert (=> b!4620372 m!5456593))

(declare-fun m!5456595 () Bool)

(assert (=> b!4620372 m!5456595))

(declare-fun m!5456597 () Bool)

(assert (=> b!4620375 m!5456597))

(declare-fun m!5456599 () Bool)

(assert (=> b!4620375 m!5456599))

(declare-fun m!5456601 () Bool)

(assert (=> b!4620375 m!5456601))

(check-sat (not b!4620375) (not b!4620371) (not b!4620376) (not b!4620381) (not b!4620378) tp_is_empty!29213 (not b!4620382) tp_is_empty!29215 (not b!4620372) (not b!4620370) (not b!4620374) (not b!4620377) (not b!4620368) (not b!4620369) (not start!462580) (not b!4620379) (not b!4620373))
(check-sat)
