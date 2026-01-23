; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463996 () Bool)

(assert start!463996)

(declare-fun b!4627424 () Bool)

(declare-fun e!2886560 () Bool)

(declare-fun e!2886564 () Bool)

(assert (=> b!4627424 (= e!2886560 e!2886564)))

(declare-fun res!1940842 () Bool)

(assert (=> b!4627424 (=> res!1940842 e!2886564)))

(declare-datatypes ((K!12940 0))(
  ( (K!12941 (val!18623 Int)) )
))
(declare-datatypes ((V!13186 0))(
  ( (V!13187 (val!18624 Int)) )
))
(declare-datatypes ((tuple2!52510 0))(
  ( (tuple2!52511 (_1!29549 K!12940) (_2!29549 V!13186)) )
))
(declare-fun lt!1786093 () tuple2!52510)

(declare-datatypes ((List!51686 0))(
  ( (Nil!51562) (Cons!51562 (h!57620 tuple2!52510) (t!358726 List!51686)) )
))
(declare-datatypes ((ListMap!4301 0))(
  ( (ListMap!4302 (toList!4997 List!51686)) )
))
(declare-fun lt!1786081 () ListMap!4301)

(declare-fun lt!1786082 () ListMap!4301)

(declare-fun eq!831 (ListMap!4301 ListMap!4301) Bool)

(declare-fun +!1882 (ListMap!4301 tuple2!52510) ListMap!4301)

(assert (=> b!4627424 (= res!1940842 (not (eq!831 lt!1786081 (+!1882 lt!1786082 lt!1786093))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1786096 () List!51686)

(declare-datatypes ((tuple2!52512 0))(
  ( (tuple2!52513 (_1!29550 (_ BitVec 64)) (_2!29550 List!51686)) )
))
(declare-datatypes ((List!51687 0))(
  ( (Nil!51563) (Cons!51563 (h!57621 tuple2!52512) (t!358727 List!51687)) )
))
(declare-fun extractMap!1572 (List!51687) ListMap!4301)

(assert (=> b!4627424 (= lt!1786082 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786096) Nil!51563)))))

(declare-fun newBucket!224 () List!51686)

(assert (=> b!4627424 (= lt!1786081 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 newBucket!224) Nil!51563)))))

(declare-fun tp_is_empty!29359 () Bool)

(declare-fun tp!1342198 () Bool)

(declare-fun tp_is_empty!29357 () Bool)

(declare-fun b!4627425 () Bool)

(declare-fun e!2886559 () Bool)

(assert (=> b!4627425 (= e!2886559 (and tp_is_empty!29357 tp_is_empty!29359 tp!1342198))))

(declare-fun b!4627426 () Bool)

(declare-fun e!2886562 () Bool)

(declare-fun lt!1786086 () List!51687)

(declare-fun lambda!192612 () Int)

(declare-fun forall!10838 (List!51687 Int) Bool)

(assert (=> b!4627426 (= e!2886562 (forall!10838 lt!1786086 lambda!192612))))

(declare-fun lt!1786095 () ListMap!4301)

(declare-fun lt!1786083 () ListMap!4301)

(declare-fun key!4968 () K!12940)

(declare-fun -!556 (ListMap!4301 K!12940) ListMap!4301)

(assert (=> b!4627426 (eq!831 lt!1786095 (-!556 lt!1786083 key!4968))))

(declare-fun lt!1786107 () ListMap!4301)

(declare-datatypes ((Unit!112512 0))(
  ( (Unit!112513) )
))
(declare-fun lt!1786085 () Unit!112512)

(declare-fun lemmaRemovePreservesEq!12 (ListMap!4301 ListMap!4301 K!12940) Unit!112512)

(assert (=> b!4627426 (= lt!1786085 (lemmaRemovePreservesEq!12 lt!1786107 lt!1786083 key!4968))))

(declare-fun b!4627427 () Bool)

(declare-fun e!2886567 () Bool)

(declare-fun lt!1786091 () ListMap!4301)

(assert (=> b!4627427 (= e!2886567 (= lt!1786091 (ListMap!4302 Nil!51562)))))

(declare-fun res!1940851 () Bool)

(declare-fun e!2886569 () Bool)

(assert (=> start!463996 (=> (not res!1940851) (not e!2886569))))

(declare-fun oldBucket!40 () List!51686)

(declare-fun noDuplicateKeys!1516 (List!51686) Bool)

(assert (=> start!463996 (= res!1940851 (noDuplicateKeys!1516 oldBucket!40))))

(assert (=> start!463996 e!2886569))

(assert (=> start!463996 true))

(declare-fun e!2886566 () Bool)

(assert (=> start!463996 e!2886566))

(assert (=> start!463996 tp_is_empty!29357))

(assert (=> start!463996 e!2886559))

(declare-fun b!4627428 () Bool)

(declare-fun res!1940845 () Bool)

(declare-fun e!2886565 () Bool)

(assert (=> b!4627428 (=> (not res!1940845) (not e!2886565))))

(declare-datatypes ((Hashable!5913 0))(
  ( (HashableExt!5912 (__x!31616 Int)) )
))
(declare-fun hashF!1389 () Hashable!5913)

(declare-fun allKeysSameHash!1370 (List!51686 (_ BitVec 64) Hashable!5913) Bool)

(assert (=> b!4627428 (= res!1940845 (allKeysSameHash!1370 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4627429 () Bool)

(declare-fun res!1940847 () Bool)

(assert (=> b!4627429 (=> (not res!1940847) (not e!2886569))))

(declare-fun removePairForKey!1139 (List!51686 K!12940) List!51686)

(assert (=> b!4627429 (= res!1940847 (= (removePairForKey!1139 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4627430 () Bool)

(declare-fun e!2886570 () Bool)

(declare-fun e!2886568 () Bool)

(assert (=> b!4627430 (= e!2886570 e!2886568)))

(declare-fun res!1940852 () Bool)

(assert (=> b!4627430 (=> res!1940852 e!2886568)))

(declare-fun lt!1786084 () List!51686)

(assert (=> b!4627430 (= res!1940852 (not (= (removePairForKey!1139 lt!1786084 key!4968) lt!1786096)))))

(declare-fun tail!8151 (List!51686) List!51686)

(assert (=> b!4627430 (= lt!1786096 (tail!8151 newBucket!224))))

(assert (=> b!4627430 (= lt!1786084 (tail!8151 oldBucket!40))))

(declare-fun b!4627431 () Bool)

(declare-fun e!2886561 () Bool)

(assert (=> b!4627431 (= e!2886569 e!2886561)))

(declare-fun res!1940843 () Bool)

(assert (=> b!4627431 (=> (not res!1940843) (not e!2886561))))

(declare-fun contains!14623 (ListMap!4301 K!12940) Bool)

(assert (=> b!4627431 (= res!1940843 (contains!14623 lt!1786083 key!4968))))

(assert (=> b!4627431 (= lt!1786083 (extractMap!1572 lt!1786086))))

(assert (=> b!4627431 (= lt!1786086 (Cons!51563 (tuple2!52513 hash!414 oldBucket!40) Nil!51563))))

(declare-fun b!4627432 () Bool)

(declare-fun res!1940850 () Bool)

(assert (=> b!4627432 (=> (not res!1940850) (not e!2886569))))

(assert (=> b!4627432 (= res!1940850 (noDuplicateKeys!1516 newBucket!224))))

(declare-fun b!4627433 () Bool)

(declare-fun e!2886563 () Bool)

(assert (=> b!4627433 (= e!2886565 (not e!2886563))))

(declare-fun res!1940856 () Bool)

(assert (=> b!4627433 (=> res!1940856 e!2886563)))

(get-info :version)

(assert (=> b!4627433 (= res!1940856 (or (and ((_ is Cons!51562) oldBucket!40) (= (_1!29549 (h!57620 oldBucket!40)) key!4968)) (not ((_ is Cons!51562) oldBucket!40)) (= (_1!29549 (h!57620 oldBucket!40)) key!4968)))))

(assert (=> b!4627433 e!2886567))

(declare-fun res!1940849 () Bool)

(assert (=> b!4627433 (=> (not res!1940849) (not e!2886567))))

(declare-fun addToMapMapFromBucket!977 (List!51686 ListMap!4301) ListMap!4301)

(assert (=> b!4627433 (= res!1940849 (= lt!1786083 (addToMapMapFromBucket!977 oldBucket!40 lt!1786091)))))

(assert (=> b!4627433 (= lt!1786091 (extractMap!1572 Nil!51563))))

(assert (=> b!4627433 true))

(declare-fun b!4627434 () Bool)

(declare-fun res!1940854 () Bool)

(assert (=> b!4627434 (=> res!1940854 e!2886568)))

(assert (=> b!4627434 (= res!1940854 (not (= (removePairForKey!1139 (t!358726 oldBucket!40) key!4968) lt!1786096)))))

(declare-fun b!4627435 () Bool)

(declare-fun res!1940848 () Bool)

(assert (=> b!4627435 (=> (not res!1940848) (not e!2886569))))

(assert (=> b!4627435 (= res!1940848 (allKeysSameHash!1370 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4627436 () Bool)

(assert (=> b!4627436 (= e!2886564 e!2886562)))

(declare-fun res!1940853 () Bool)

(assert (=> b!4627436 (=> res!1940853 e!2886562)))

(declare-fun lt!1786103 () ListMap!4301)

(assert (=> b!4627436 (= res!1940853 (not (= lt!1786095 (+!1882 lt!1786103 (h!57620 oldBucket!40)))))))

(assert (=> b!4627436 (= lt!1786095 (-!556 lt!1786107 key!4968))))

(declare-fun lt!1786090 () ListMap!4301)

(assert (=> b!4627436 (= lt!1786107 (+!1882 lt!1786090 (h!57620 oldBucket!40)))))

(assert (=> b!4627436 (= (-!556 (+!1882 lt!1786090 (h!57620 oldBucket!40)) key!4968) (+!1882 lt!1786103 (h!57620 oldBucket!40)))))

(declare-fun lt!1786094 () Unit!112512)

(declare-fun addRemoveCommutativeForDiffKeys!11 (ListMap!4301 K!12940 V!13186 K!12940) Unit!112512)

(assert (=> b!4627436 (= lt!1786094 (addRemoveCommutativeForDiffKeys!11 lt!1786090 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40)) key!4968))))

(assert (=> b!4627436 (eq!831 lt!1786082 lt!1786103)))

(assert (=> b!4627436 (= lt!1786103 (-!556 lt!1786090 key!4968))))

(declare-fun lt!1786092 () Unit!112512)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!118 ((_ BitVec 64) List!51686 List!51686 K!12940 Hashable!5913) Unit!112512)

(assert (=> b!4627436 (= lt!1786092 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!118 hash!414 (t!358726 oldBucket!40) lt!1786096 key!4968 hashF!1389))))

(declare-fun b!4627437 () Bool)

(declare-fun tp!1342199 () Bool)

(assert (=> b!4627437 (= e!2886566 (and tp_is_empty!29357 tp_is_empty!29359 tp!1342199))))

(declare-fun b!4627438 () Bool)

(assert (=> b!4627438 (= e!2886561 e!2886565)))

(declare-fun res!1940855 () Bool)

(assert (=> b!4627438 (=> (not res!1940855) (not e!2886565))))

(declare-fun lt!1786105 () (_ BitVec 64))

(assert (=> b!4627438 (= res!1940855 (= lt!1786105 hash!414))))

(declare-fun hash!3525 (Hashable!5913 K!12940) (_ BitVec 64))

(assert (=> b!4627438 (= lt!1786105 (hash!3525 hashF!1389 key!4968))))

(declare-fun b!4627439 () Bool)

(assert (=> b!4627439 (= e!2886568 e!2886560)))

(declare-fun res!1940846 () Bool)

(assert (=> b!4627439 (=> res!1940846 e!2886560)))

(assert (=> b!4627439 (= res!1940846 (not (eq!831 lt!1786083 (+!1882 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563)) (h!57620 oldBucket!40)))))))

(assert (=> b!4627439 (eq!831 (addToMapMapFromBucket!977 (Cons!51562 lt!1786093 lt!1786096) (ListMap!4302 Nil!51562)) (+!1882 (addToMapMapFromBucket!977 lt!1786096 (ListMap!4302 Nil!51562)) lt!1786093))))

(declare-fun lt!1786109 () Unit!112512)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!82 (tuple2!52510 List!51686 ListMap!4301) Unit!112512)

(assert (=> b!4627439 (= lt!1786109 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!82 lt!1786093 lt!1786096 (ListMap!4302 Nil!51562)))))

(declare-fun head!9650 (List!51686) tuple2!52510)

(assert (=> b!4627439 (= lt!1786093 (head!9650 newBucket!224))))

(declare-fun lt!1786099 () tuple2!52510)

(assert (=> b!4627439 (eq!831 (addToMapMapFromBucket!977 (Cons!51562 lt!1786099 lt!1786084) (ListMap!4302 Nil!51562)) (+!1882 (addToMapMapFromBucket!977 lt!1786084 (ListMap!4302 Nil!51562)) lt!1786099))))

(declare-fun lt!1786102 () Unit!112512)

(assert (=> b!4627439 (= lt!1786102 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!82 lt!1786099 lt!1786084 (ListMap!4302 Nil!51562)))))

(assert (=> b!4627439 (= lt!1786099 (head!9650 oldBucket!40))))

(assert (=> b!4627439 (contains!14623 lt!1786090 key!4968)))

(declare-fun lt!1786089 () List!51687)

(assert (=> b!4627439 (= lt!1786090 (extractMap!1572 lt!1786089))))

(declare-fun lt!1786106 () Unit!112512)

(declare-datatypes ((ListLongMap!3587 0))(
  ( (ListLongMap!3588 (toList!4998 List!51687)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!334 (ListLongMap!3587 K!12940 Hashable!5913) Unit!112512)

(assert (=> b!4627439 (= lt!1786106 (lemmaListContainsThenExtractedMapContains!334 (ListLongMap!3588 lt!1786089) key!4968 hashF!1389))))

(assert (=> b!4627439 (= lt!1786089 (Cons!51563 (tuple2!52513 hash!414 (t!358726 oldBucket!40)) Nil!51563))))

(declare-fun b!4627440 () Bool)

(assert (=> b!4627440 (= e!2886563 e!2886570)))

(declare-fun res!1940844 () Bool)

(assert (=> b!4627440 (=> res!1940844 e!2886570)))

(declare-fun containsKey!2472 (List!51686 K!12940) Bool)

(assert (=> b!4627440 (= res!1940844 (not (containsKey!2472 (t!358726 oldBucket!40) key!4968)))))

(assert (=> b!4627440 (containsKey!2472 oldBucket!40 key!4968)))

(declare-fun lt!1786087 () Unit!112512)

(declare-fun lemmaGetPairDefinedThenContainsKey!62 (List!51686 K!12940 Hashable!5913) Unit!112512)

(assert (=> b!4627440 (= lt!1786087 (lemmaGetPairDefinedThenContainsKey!62 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1786098 () List!51686)

(declare-datatypes ((Option!11614 0))(
  ( (None!11613) (Some!11613 (v!45755 tuple2!52510)) )
))
(declare-fun isDefined!8879 (Option!11614) Bool)

(declare-fun getPair!308 (List!51686 K!12940) Option!11614)

(assert (=> b!4627440 (isDefined!8879 (getPair!308 lt!1786098 key!4968))))

(declare-fun lt!1786100 () tuple2!52512)

(declare-fun lt!1786108 () Unit!112512)

(declare-fun forallContained!3068 (List!51687 Int tuple2!52512) Unit!112512)

(assert (=> b!4627440 (= lt!1786108 (forallContained!3068 lt!1786086 lambda!192612 lt!1786100))))

(declare-fun contains!14624 (List!51687 tuple2!52512) Bool)

(assert (=> b!4627440 (contains!14624 lt!1786086 lt!1786100)))

(assert (=> b!4627440 (= lt!1786100 (tuple2!52513 lt!1786105 lt!1786098))))

(declare-fun lt!1786104 () Unit!112512)

(declare-fun lt!1786088 () ListLongMap!3587)

(declare-fun lemmaGetValueImpliesTupleContained!113 (ListLongMap!3587 (_ BitVec 64) List!51686) Unit!112512)

(assert (=> b!4627440 (= lt!1786104 (lemmaGetValueImpliesTupleContained!113 lt!1786088 lt!1786105 lt!1786098))))

(declare-fun apply!12181 (ListLongMap!3587 (_ BitVec 64)) List!51686)

(assert (=> b!4627440 (= lt!1786098 (apply!12181 lt!1786088 lt!1786105))))

(declare-fun contains!14625 (ListLongMap!3587 (_ BitVec 64)) Bool)

(assert (=> b!4627440 (contains!14625 lt!1786088 lt!1786105)))

(declare-fun lt!1786097 () Unit!112512)

(declare-fun lemmaInGenMapThenLongMapContainsHash!514 (ListLongMap!3587 K!12940 Hashable!5913) Unit!112512)

(assert (=> b!4627440 (= lt!1786097 (lemmaInGenMapThenLongMapContainsHash!514 lt!1786088 key!4968 hashF!1389))))

(declare-fun lt!1786101 () Unit!112512)

(declare-fun lemmaInGenMapThenGetPairDefined!104 (ListLongMap!3587 K!12940 Hashable!5913) Unit!112512)

(assert (=> b!4627440 (= lt!1786101 (lemmaInGenMapThenGetPairDefined!104 lt!1786088 key!4968 hashF!1389))))

(assert (=> b!4627440 (= lt!1786088 (ListLongMap!3588 lt!1786086))))

(assert (= (and start!463996 res!1940851) b!4627432))

(assert (= (and b!4627432 res!1940850) b!4627429))

(assert (= (and b!4627429 res!1940847) b!4627435))

(assert (= (and b!4627435 res!1940848) b!4627431))

(assert (= (and b!4627431 res!1940843) b!4627438))

(assert (= (and b!4627438 res!1940855) b!4627428))

(assert (= (and b!4627428 res!1940845) b!4627433))

(assert (= (and b!4627433 res!1940849) b!4627427))

(assert (= (and b!4627433 (not res!1940856)) b!4627440))

(assert (= (and b!4627440 (not res!1940844)) b!4627430))

(assert (= (and b!4627430 (not res!1940852)) b!4627434))

(assert (= (and b!4627434 (not res!1940854)) b!4627439))

(assert (= (and b!4627439 (not res!1940846)) b!4627424))

(assert (= (and b!4627424 (not res!1940842)) b!4627436))

(assert (= (and b!4627436 (not res!1940853)) b!4627426))

(assert (= (and start!463996 ((_ is Cons!51562) oldBucket!40)) b!4627437))

(assert (= (and start!463996 ((_ is Cons!51562) newBucket!224)) b!4627425))

(declare-fun m!5471567 () Bool)

(assert (=> b!4627435 m!5471567))

(declare-fun m!5471569 () Bool)

(assert (=> start!463996 m!5471569))

(declare-fun m!5471571 () Bool)

(assert (=> b!4627439 m!5471571))

(declare-fun m!5471573 () Bool)

(assert (=> b!4627439 m!5471573))

(declare-fun m!5471575 () Bool)

(assert (=> b!4627439 m!5471575))

(assert (=> b!4627439 m!5471571))

(declare-fun m!5471577 () Bool)

(assert (=> b!4627439 m!5471577))

(declare-fun m!5471579 () Bool)

(assert (=> b!4627439 m!5471579))

(declare-fun m!5471581 () Bool)

(assert (=> b!4627439 m!5471581))

(declare-fun m!5471583 () Bool)

(assert (=> b!4627439 m!5471583))

(assert (=> b!4627439 m!5471581))

(assert (=> b!4627439 m!5471573))

(declare-fun m!5471585 () Bool)

(assert (=> b!4627439 m!5471585))

(declare-fun m!5471587 () Bool)

(assert (=> b!4627439 m!5471587))

(declare-fun m!5471589 () Bool)

(assert (=> b!4627439 m!5471589))

(declare-fun m!5471591 () Bool)

(assert (=> b!4627439 m!5471591))

(declare-fun m!5471593 () Bool)

(assert (=> b!4627439 m!5471593))

(assert (=> b!4627439 m!5471585))

(assert (=> b!4627439 m!5471589))

(assert (=> b!4627439 m!5471593))

(declare-fun m!5471595 () Bool)

(assert (=> b!4627439 m!5471595))

(assert (=> b!4627439 m!5471587))

(declare-fun m!5471597 () Bool)

(assert (=> b!4627439 m!5471597))

(declare-fun m!5471599 () Bool)

(assert (=> b!4627439 m!5471599))

(declare-fun m!5471601 () Bool)

(assert (=> b!4627439 m!5471601))

(declare-fun m!5471603 () Bool)

(assert (=> b!4627439 m!5471603))

(declare-fun m!5471605 () Bool)

(assert (=> b!4627439 m!5471605))

(assert (=> b!4627439 m!5471591))

(declare-fun m!5471607 () Bool)

(assert (=> b!4627434 m!5471607))

(declare-fun m!5471609 () Bool)

(assert (=> b!4627438 m!5471609))

(declare-fun m!5471611 () Bool)

(assert (=> b!4627429 m!5471611))

(declare-fun m!5471613 () Bool)

(assert (=> b!4627440 m!5471613))

(declare-fun m!5471615 () Bool)

(assert (=> b!4627440 m!5471615))

(declare-fun m!5471617 () Bool)

(assert (=> b!4627440 m!5471617))

(declare-fun m!5471619 () Bool)

(assert (=> b!4627440 m!5471619))

(declare-fun m!5471621 () Bool)

(assert (=> b!4627440 m!5471621))

(declare-fun m!5471623 () Bool)

(assert (=> b!4627440 m!5471623))

(declare-fun m!5471625 () Bool)

(assert (=> b!4627440 m!5471625))

(assert (=> b!4627440 m!5471623))

(declare-fun m!5471627 () Bool)

(assert (=> b!4627440 m!5471627))

(declare-fun m!5471629 () Bool)

(assert (=> b!4627440 m!5471629))

(declare-fun m!5471631 () Bool)

(assert (=> b!4627440 m!5471631))

(declare-fun m!5471633 () Bool)

(assert (=> b!4627440 m!5471633))

(declare-fun m!5471635 () Bool)

(assert (=> b!4627440 m!5471635))

(declare-fun m!5471637 () Bool)

(assert (=> b!4627432 m!5471637))

(declare-fun m!5471639 () Bool)

(assert (=> b!4627426 m!5471639))

(declare-fun m!5471641 () Bool)

(assert (=> b!4627426 m!5471641))

(assert (=> b!4627426 m!5471641))

(declare-fun m!5471643 () Bool)

(assert (=> b!4627426 m!5471643))

(declare-fun m!5471645 () Bool)

(assert (=> b!4627426 m!5471645))

(declare-fun m!5471647 () Bool)

(assert (=> b!4627430 m!5471647))

(declare-fun m!5471649 () Bool)

(assert (=> b!4627430 m!5471649))

(declare-fun m!5471651 () Bool)

(assert (=> b!4627430 m!5471651))

(declare-fun m!5471653 () Bool)

(assert (=> b!4627428 m!5471653))

(declare-fun m!5471655 () Bool)

(assert (=> b!4627431 m!5471655))

(declare-fun m!5471657 () Bool)

(assert (=> b!4627431 m!5471657))

(declare-fun m!5471659 () Bool)

(assert (=> b!4627436 m!5471659))

(declare-fun m!5471661 () Bool)

(assert (=> b!4627436 m!5471661))

(declare-fun m!5471663 () Bool)

(assert (=> b!4627436 m!5471663))

(declare-fun m!5471665 () Bool)

(assert (=> b!4627436 m!5471665))

(declare-fun m!5471667 () Bool)

(assert (=> b!4627436 m!5471667))

(declare-fun m!5471669 () Bool)

(assert (=> b!4627436 m!5471669))

(declare-fun m!5471671 () Bool)

(assert (=> b!4627436 m!5471671))

(declare-fun m!5471673 () Bool)

(assert (=> b!4627436 m!5471673))

(assert (=> b!4627436 m!5471659))

(declare-fun m!5471675 () Bool)

(assert (=> b!4627424 m!5471675))

(assert (=> b!4627424 m!5471675))

(declare-fun m!5471677 () Bool)

(assert (=> b!4627424 m!5471677))

(declare-fun m!5471679 () Bool)

(assert (=> b!4627424 m!5471679))

(declare-fun m!5471681 () Bool)

(assert (=> b!4627424 m!5471681))

(declare-fun m!5471683 () Bool)

(assert (=> b!4627433 m!5471683))

(declare-fun m!5471685 () Bool)

(assert (=> b!4627433 m!5471685))

(check-sat (not b!4627437) (not b!4627424) (not b!4627439) (not b!4627431) (not start!463996) (not b!4627426) (not b!4627429) (not b!4627433) (not b!4627432) tp_is_empty!29359 (not b!4627430) (not b!4627425) (not b!4627440) (not b!4627436) tp_is_empty!29357 (not b!4627428) (not b!4627438) (not b!4627435) (not b!4627434))
(check-sat)
(get-model)

(declare-fun d!1457784 () Bool)

(declare-fun res!1940861 () Bool)

(declare-fun e!2886575 () Bool)

(assert (=> d!1457784 (=> res!1940861 e!2886575)))

(assert (=> d!1457784 (= res!1940861 (not ((_ is Cons!51562) oldBucket!40)))))

(assert (=> d!1457784 (= (noDuplicateKeys!1516 oldBucket!40) e!2886575)))

(declare-fun b!4627445 () Bool)

(declare-fun e!2886576 () Bool)

(assert (=> b!4627445 (= e!2886575 e!2886576)))

(declare-fun res!1940862 () Bool)

(assert (=> b!4627445 (=> (not res!1940862) (not e!2886576))))

(assert (=> b!4627445 (= res!1940862 (not (containsKey!2472 (t!358726 oldBucket!40) (_1!29549 (h!57620 oldBucket!40)))))))

(declare-fun b!4627446 () Bool)

(assert (=> b!4627446 (= e!2886576 (noDuplicateKeys!1516 (t!358726 oldBucket!40)))))

(assert (= (and d!1457784 (not res!1940861)) b!4627445))

(assert (= (and b!4627445 res!1940862) b!4627446))

(declare-fun m!5471687 () Bool)

(assert (=> b!4627445 m!5471687))

(declare-fun m!5471689 () Bool)

(assert (=> b!4627446 m!5471689))

(assert (=> start!463996 d!1457784))

(declare-fun d!1457786 () Bool)

(declare-fun res!1940867 () Bool)

(declare-fun e!2886581 () Bool)

(assert (=> d!1457786 (=> res!1940867 e!2886581)))

(assert (=> d!1457786 (= res!1940867 ((_ is Nil!51563) lt!1786086))))

(assert (=> d!1457786 (= (forall!10838 lt!1786086 lambda!192612) e!2886581)))

(declare-fun b!4627451 () Bool)

(declare-fun e!2886582 () Bool)

(assert (=> b!4627451 (= e!2886581 e!2886582)))

(declare-fun res!1940868 () Bool)

(assert (=> b!4627451 (=> (not res!1940868) (not e!2886582))))

(declare-fun dynLambda!21505 (Int tuple2!52512) Bool)

(assert (=> b!4627451 (= res!1940868 (dynLambda!21505 lambda!192612 (h!57621 lt!1786086)))))

(declare-fun b!4627452 () Bool)

(assert (=> b!4627452 (= e!2886582 (forall!10838 (t!358727 lt!1786086) lambda!192612))))

(assert (= (and d!1457786 (not res!1940867)) b!4627451))

(assert (= (and b!4627451 res!1940868) b!4627452))

(declare-fun b_lambda!170789 () Bool)

(assert (=> (not b_lambda!170789) (not b!4627451)))

(declare-fun m!5471691 () Bool)

(assert (=> b!4627451 m!5471691))

(declare-fun m!5471693 () Bool)

(assert (=> b!4627452 m!5471693))

(assert (=> b!4627426 d!1457786))

(declare-fun d!1457788 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8818 (List!51686) (InoxSet tuple2!52510))

(assert (=> d!1457788 (= (eq!831 lt!1786095 (-!556 lt!1786083 key!4968)) (= (content!8818 (toList!4997 lt!1786095)) (content!8818 (toList!4997 (-!556 lt!1786083 key!4968)))))))

(declare-fun bs!1024736 () Bool)

(assert (= bs!1024736 d!1457788))

(declare-fun m!5471695 () Bool)

(assert (=> bs!1024736 m!5471695))

(declare-fun m!5471697 () Bool)

(assert (=> bs!1024736 m!5471697))

(assert (=> b!4627426 d!1457788))

(declare-fun d!1457790 () Bool)

(declare-fun e!2886585 () Bool)

(assert (=> d!1457790 e!2886585))

(declare-fun res!1940871 () Bool)

(assert (=> d!1457790 (=> (not res!1940871) (not e!2886585))))

(declare-fun lt!1786112 () ListMap!4301)

(assert (=> d!1457790 (= res!1940871 (not (contains!14623 lt!1786112 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!260 (List!51686 K!12940) List!51686)

(assert (=> d!1457790 (= lt!1786112 (ListMap!4302 (removePresrvNoDuplicatedKeys!260 (toList!4997 lt!1786083) key!4968)))))

(assert (=> d!1457790 (= (-!556 lt!1786083 key!4968) lt!1786112)))

(declare-fun b!4627455 () Bool)

(declare-datatypes ((List!51688 0))(
  ( (Nil!51564) (Cons!51564 (h!57624 K!12940) (t!358730 List!51688)) )
))
(declare-fun content!8819 (List!51688) (InoxSet K!12940))

(declare-fun keys!18171 (ListMap!4301) List!51688)

(assert (=> b!4627455 (= e!2886585 (= ((_ map and) (content!8819 (keys!18171 lt!1786083)) ((_ map not) (store ((as const (Array K!12940 Bool)) false) key!4968 true))) (content!8819 (keys!18171 lt!1786112))))))

(assert (= (and d!1457790 res!1940871) b!4627455))

(declare-fun m!5471699 () Bool)

(assert (=> d!1457790 m!5471699))

(declare-fun m!5471701 () Bool)

(assert (=> d!1457790 m!5471701))

(declare-fun m!5471703 () Bool)

(assert (=> b!4627455 m!5471703))

(declare-fun m!5471705 () Bool)

(assert (=> b!4627455 m!5471705))

(assert (=> b!4627455 m!5471703))

(declare-fun m!5471707 () Bool)

(assert (=> b!4627455 m!5471707))

(assert (=> b!4627455 m!5471705))

(declare-fun m!5471709 () Bool)

(assert (=> b!4627455 m!5471709))

(declare-fun m!5471711 () Bool)

(assert (=> b!4627455 m!5471711))

(assert (=> b!4627426 d!1457790))

(declare-fun d!1457792 () Bool)

(assert (=> d!1457792 (eq!831 (-!556 lt!1786107 key!4968) (-!556 lt!1786083 key!4968))))

(declare-fun lt!1786117 () Unit!112512)

(declare-fun choose!31368 (ListMap!4301 ListMap!4301 K!12940) Unit!112512)

(assert (=> d!1457792 (= lt!1786117 (choose!31368 lt!1786107 lt!1786083 key!4968))))

(assert (=> d!1457792 (eq!831 lt!1786107 lt!1786083)))

(assert (=> d!1457792 (= (lemmaRemovePreservesEq!12 lt!1786107 lt!1786083 key!4968) lt!1786117)))

(declare-fun bs!1024737 () Bool)

(assert (= bs!1024737 d!1457792))

(declare-fun m!5471713 () Bool)

(assert (=> bs!1024737 m!5471713))

(assert (=> bs!1024737 m!5471671))

(assert (=> bs!1024737 m!5471641))

(declare-fun m!5471715 () Bool)

(assert (=> bs!1024737 m!5471715))

(assert (=> bs!1024737 m!5471671))

(assert (=> bs!1024737 m!5471641))

(declare-fun m!5471717 () Bool)

(assert (=> bs!1024737 m!5471717))

(assert (=> b!4627426 d!1457792))

(declare-fun d!1457796 () Bool)

(assert (=> d!1457796 true))

(assert (=> d!1457796 true))

(declare-fun lambda!192615 () Int)

(declare-fun forall!10839 (List!51686 Int) Bool)

(assert (=> d!1457796 (= (allKeysSameHash!1370 newBucket!224 hash!414 hashF!1389) (forall!10839 newBucket!224 lambda!192615))))

(declare-fun bs!1024738 () Bool)

(assert (= bs!1024738 d!1457796))

(declare-fun m!5471727 () Bool)

(assert (=> bs!1024738 m!5471727))

(assert (=> b!4627428 d!1457796))

(declare-fun d!1457806 () Bool)

(assert (=> d!1457806 (eq!831 (addToMapMapFromBucket!977 (Cons!51562 lt!1786093 lt!1786096) (ListMap!4302 Nil!51562)) (+!1882 (addToMapMapFromBucket!977 lt!1786096 (ListMap!4302 Nil!51562)) lt!1786093))))

(declare-fun lt!1786123 () Unit!112512)

(declare-fun choose!31369 (tuple2!52510 List!51686 ListMap!4301) Unit!112512)

(assert (=> d!1457806 (= lt!1786123 (choose!31369 lt!1786093 lt!1786096 (ListMap!4302 Nil!51562)))))

(assert (=> d!1457806 (noDuplicateKeys!1516 lt!1786096)))

(assert (=> d!1457806 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!82 lt!1786093 lt!1786096 (ListMap!4302 Nil!51562)) lt!1786123)))

(declare-fun bs!1024742 () Bool)

(assert (= bs!1024742 d!1457806))

(assert (=> bs!1024742 m!5471581))

(assert (=> bs!1024742 m!5471581))

(assert (=> bs!1024742 m!5471573))

(declare-fun m!5471743 () Bool)

(assert (=> bs!1024742 m!5471743))

(declare-fun m!5471745 () Bool)

(assert (=> bs!1024742 m!5471745))

(assert (=> bs!1024742 m!5471571))

(assert (=> bs!1024742 m!5471571))

(assert (=> bs!1024742 m!5471573))

(assert (=> bs!1024742 m!5471575))

(assert (=> b!4627439 d!1457806))

(declare-fun bs!1024754 () Bool)

(declare-fun b!4627599 () Bool)

(assert (= bs!1024754 (and b!4627599 d!1457796)))

(declare-fun lambda!192661 () Int)

(assert (=> bs!1024754 (not (= lambda!192661 lambda!192615))))

(assert (=> b!4627599 true))

(declare-fun bs!1024755 () Bool)

(declare-fun b!4627601 () Bool)

(assert (= bs!1024755 (and b!4627601 d!1457796)))

(declare-fun lambda!192662 () Int)

(assert (=> bs!1024755 (not (= lambda!192662 lambda!192615))))

(declare-fun bs!1024756 () Bool)

(assert (= bs!1024756 (and b!4627601 b!4627599)))

(assert (=> bs!1024756 (= lambda!192662 lambda!192661)))

(assert (=> b!4627601 true))

(declare-fun lambda!192663 () Int)

(assert (=> bs!1024755 (not (= lambda!192663 lambda!192615))))

(declare-fun lt!1786247 () ListMap!4301)

(assert (=> bs!1024756 (= (= lt!1786247 (ListMap!4302 Nil!51562)) (= lambda!192663 lambda!192661))))

(assert (=> b!4627601 (= (= lt!1786247 (ListMap!4302 Nil!51562)) (= lambda!192663 lambda!192662))))

(assert (=> b!4627601 true))

(declare-fun bs!1024757 () Bool)

(declare-fun d!1457816 () Bool)

(assert (= bs!1024757 (and d!1457816 d!1457796)))

(declare-fun lambda!192664 () Int)

(assert (=> bs!1024757 (not (= lambda!192664 lambda!192615))))

(declare-fun bs!1024758 () Bool)

(assert (= bs!1024758 (and d!1457816 b!4627599)))

(declare-fun lt!1786248 () ListMap!4301)

(assert (=> bs!1024758 (= (= lt!1786248 (ListMap!4302 Nil!51562)) (= lambda!192664 lambda!192661))))

(declare-fun bs!1024759 () Bool)

(assert (= bs!1024759 (and d!1457816 b!4627601)))

(assert (=> bs!1024759 (= (= lt!1786248 (ListMap!4302 Nil!51562)) (= lambda!192664 lambda!192662))))

(assert (=> bs!1024759 (= (= lt!1786248 lt!1786247) (= lambda!192664 lambda!192663))))

(assert (=> d!1457816 true))

(declare-fun b!4627598 () Bool)

(declare-fun res!1940940 () Bool)

(declare-fun e!2886675 () Bool)

(assert (=> b!4627598 (=> (not res!1940940) (not e!2886675))))

(assert (=> b!4627598 (= res!1940940 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192664))))

(declare-fun e!2886677 () ListMap!4301)

(assert (=> b!4627599 (= e!2886677 (ListMap!4302 Nil!51562))))

(declare-fun lt!1786254 () Unit!112512)

(declare-fun call!322813 () Unit!112512)

(assert (=> b!4627599 (= lt!1786254 call!322813)))

(declare-fun call!322811 () Bool)

(assert (=> b!4627599 call!322811))

(declare-fun lt!1786249 () Unit!112512)

(assert (=> b!4627599 (= lt!1786249 lt!1786254)))

(declare-fun call!322812 () Bool)

(assert (=> b!4627599 call!322812))

(declare-fun lt!1786259 () Unit!112512)

(declare-fun Unit!112514 () Unit!112512)

(assert (=> b!4627599 (= lt!1786259 Unit!112514)))

(declare-fun bm!322806 () Bool)

(declare-fun c!792104 () Bool)

(assert (=> bm!322806 (= call!322811 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792104 lambda!192661 lambda!192663)))))

(declare-fun bm!322807 () Bool)

(assert (=> bm!322807 (= call!322812 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792104 lambda!192661 lambda!192663)))))

(declare-fun bm!322808 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!513 (ListMap!4301) Unit!112512)

(assert (=> bm!322808 (= call!322813 (lemmaContainsAllItsOwnKeys!513 (ListMap!4302 Nil!51562)))))

(declare-fun b!4627600 () Bool)

(declare-fun invariantList!1211 (List!51686) Bool)

(assert (=> b!4627600 (= e!2886675 (invariantList!1211 (toList!4997 lt!1786248)))))

(assert (=> b!4627601 (= e!2886677 lt!1786247)))

(declare-fun lt!1786267 () ListMap!4301)

(assert (=> b!4627601 (= lt!1786267 (+!1882 (ListMap!4302 Nil!51562) (h!57620 (Cons!51562 lt!1786099 lt!1786084))))))

(assert (=> b!4627601 (= lt!1786247 (addToMapMapFromBucket!977 (t!358726 (Cons!51562 lt!1786099 lt!1786084)) (+!1882 (ListMap!4302 Nil!51562) (h!57620 (Cons!51562 lt!1786099 lt!1786084)))))))

(declare-fun lt!1786266 () Unit!112512)

(assert (=> b!4627601 (= lt!1786266 call!322813)))

(assert (=> b!4627601 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192662)))

(declare-fun lt!1786253 () Unit!112512)

(assert (=> b!4627601 (= lt!1786253 lt!1786266)))

(assert (=> b!4627601 (forall!10839 (toList!4997 lt!1786267) lambda!192663)))

(declare-fun lt!1786250 () Unit!112512)

(declare-fun Unit!112515 () Unit!112512)

(assert (=> b!4627601 (= lt!1786250 Unit!112515)))

(assert (=> b!4627601 (forall!10839 (t!358726 (Cons!51562 lt!1786099 lt!1786084)) lambda!192663)))

(declare-fun lt!1786265 () Unit!112512)

(declare-fun Unit!112516 () Unit!112512)

(assert (=> b!4627601 (= lt!1786265 Unit!112516)))

(declare-fun lt!1786258 () Unit!112512)

(declare-fun Unit!112517 () Unit!112512)

(assert (=> b!4627601 (= lt!1786258 Unit!112517)))

(declare-fun lt!1786251 () Unit!112512)

(declare-fun forallContained!3069 (List!51686 Int tuple2!52510) Unit!112512)

(assert (=> b!4627601 (= lt!1786251 (forallContained!3069 (toList!4997 lt!1786267) lambda!192663 (h!57620 (Cons!51562 lt!1786099 lt!1786084))))))

(assert (=> b!4627601 (contains!14623 lt!1786267 (_1!29549 (h!57620 (Cons!51562 lt!1786099 lt!1786084))))))

(declare-fun lt!1786263 () Unit!112512)

(declare-fun Unit!112518 () Unit!112512)

(assert (=> b!4627601 (= lt!1786263 Unit!112518)))

(assert (=> b!4627601 (contains!14623 lt!1786247 (_1!29549 (h!57620 (Cons!51562 lt!1786099 lt!1786084))))))

(declare-fun lt!1786252 () Unit!112512)

(declare-fun Unit!112519 () Unit!112512)

(assert (=> b!4627601 (= lt!1786252 Unit!112519)))

(assert (=> b!4627601 (forall!10839 (Cons!51562 lt!1786099 lt!1786084) lambda!192663)))

(declare-fun lt!1786261 () Unit!112512)

(declare-fun Unit!112520 () Unit!112512)

(assert (=> b!4627601 (= lt!1786261 Unit!112520)))

(assert (=> b!4627601 (forall!10839 (toList!4997 lt!1786267) lambda!192663)))

(declare-fun lt!1786260 () Unit!112512)

(declare-fun Unit!112521 () Unit!112512)

(assert (=> b!4627601 (= lt!1786260 Unit!112521)))

(declare-fun lt!1786264 () Unit!112512)

(declare-fun Unit!112522 () Unit!112512)

(assert (=> b!4627601 (= lt!1786264 Unit!112522)))

(declare-fun lt!1786255 () Unit!112512)

(declare-fun addForallContainsKeyThenBeforeAdding!512 (ListMap!4301 ListMap!4301 K!12940 V!13186) Unit!112512)

(assert (=> b!4627601 (= lt!1786255 (addForallContainsKeyThenBeforeAdding!512 (ListMap!4302 Nil!51562) lt!1786247 (_1!29549 (h!57620 (Cons!51562 lt!1786099 lt!1786084))) (_2!29549 (h!57620 (Cons!51562 lt!1786099 lt!1786084)))))))

(assert (=> b!4627601 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192663)))

(declare-fun lt!1786262 () Unit!112512)

(assert (=> b!4627601 (= lt!1786262 lt!1786255)))

(assert (=> b!4627601 call!322811))

(declare-fun lt!1786257 () Unit!112512)

(declare-fun Unit!112523 () Unit!112512)

(assert (=> b!4627601 (= lt!1786257 Unit!112523)))

(declare-fun res!1940939 () Bool)

(assert (=> b!4627601 (= res!1940939 (forall!10839 (Cons!51562 lt!1786099 lt!1786084) lambda!192663))))

(declare-fun e!2886676 () Bool)

(assert (=> b!4627601 (=> (not res!1940939) (not e!2886676))))

(assert (=> b!4627601 e!2886676))

(declare-fun lt!1786256 () Unit!112512)

(declare-fun Unit!112524 () Unit!112512)

(assert (=> b!4627601 (= lt!1786256 Unit!112524)))

(assert (=> d!1457816 e!2886675))

(declare-fun res!1940941 () Bool)

(assert (=> d!1457816 (=> (not res!1940941) (not e!2886675))))

(assert (=> d!1457816 (= res!1940941 (forall!10839 (Cons!51562 lt!1786099 lt!1786084) lambda!192664))))

(assert (=> d!1457816 (= lt!1786248 e!2886677)))

(assert (=> d!1457816 (= c!792104 ((_ is Nil!51562) (Cons!51562 lt!1786099 lt!1786084)))))

(assert (=> d!1457816 (noDuplicateKeys!1516 (Cons!51562 lt!1786099 lt!1786084))))

(assert (=> d!1457816 (= (addToMapMapFromBucket!977 (Cons!51562 lt!1786099 lt!1786084) (ListMap!4302 Nil!51562)) lt!1786248)))

(declare-fun b!4627602 () Bool)

(assert (=> b!4627602 (= e!2886676 call!322812)))

(assert (= (and d!1457816 c!792104) b!4627599))

(assert (= (and d!1457816 (not c!792104)) b!4627601))

(assert (= (and b!4627601 res!1940939) b!4627602))

(assert (= (or b!4627599 b!4627601) bm!322808))

(assert (= (or b!4627599 b!4627602) bm!322807))

(assert (= (or b!4627599 b!4627601) bm!322806))

(assert (= (and d!1457816 res!1940941) b!4627598))

(assert (= (and b!4627598 res!1940940) b!4627600))

(declare-fun m!5471853 () Bool)

(assert (=> b!4627598 m!5471853))

(declare-fun m!5471855 () Bool)

(assert (=> bm!322806 m!5471855))

(declare-fun m!5471857 () Bool)

(assert (=> d!1457816 m!5471857))

(declare-fun m!5471859 () Bool)

(assert (=> d!1457816 m!5471859))

(declare-fun m!5471861 () Bool)

(assert (=> b!4627600 m!5471861))

(declare-fun m!5471863 () Bool)

(assert (=> bm!322808 m!5471863))

(declare-fun m!5471865 () Bool)

(assert (=> b!4627601 m!5471865))

(declare-fun m!5471867 () Bool)

(assert (=> b!4627601 m!5471867))

(declare-fun m!5471869 () Bool)

(assert (=> b!4627601 m!5471869))

(declare-fun m!5471871 () Bool)

(assert (=> b!4627601 m!5471871))

(declare-fun m!5471873 () Bool)

(assert (=> b!4627601 m!5471873))

(declare-fun m!5471875 () Bool)

(assert (=> b!4627601 m!5471875))

(declare-fun m!5471877 () Bool)

(assert (=> b!4627601 m!5471877))

(declare-fun m!5471879 () Bool)

(assert (=> b!4627601 m!5471879))

(assert (=> b!4627601 m!5471869))

(declare-fun m!5471881 () Bool)

(assert (=> b!4627601 m!5471881))

(declare-fun m!5471883 () Bool)

(assert (=> b!4627601 m!5471883))

(assert (=> b!4627601 m!5471879))

(declare-fun m!5471885 () Bool)

(assert (=> b!4627601 m!5471885))

(assert (=> b!4627601 m!5471881))

(assert (=> bm!322807 m!5471855))

(assert (=> b!4627439 d!1457816))

(declare-fun d!1457848 () Bool)

(assert (=> d!1457848 (= (head!9650 oldBucket!40) (h!57620 oldBucket!40))))

(assert (=> b!4627439 d!1457848))

(declare-fun d!1457850 () Bool)

(assert (=> d!1457850 (= (head!9650 newBucket!224) (h!57620 newBucket!224))))

(assert (=> b!4627439 d!1457850))

(declare-fun d!1457852 () Bool)

(declare-fun e!2886680 () Bool)

(assert (=> d!1457852 e!2886680))

(declare-fun res!1940946 () Bool)

(assert (=> d!1457852 (=> (not res!1940946) (not e!2886680))))

(declare-fun lt!1786278 () ListMap!4301)

(assert (=> d!1457852 (= res!1940946 (contains!14623 lt!1786278 (_1!29549 lt!1786099)))))

(declare-fun lt!1786276 () List!51686)

(assert (=> d!1457852 (= lt!1786278 (ListMap!4302 lt!1786276))))

(declare-fun lt!1786279 () Unit!112512)

(declare-fun lt!1786277 () Unit!112512)

(assert (=> d!1457852 (= lt!1786279 lt!1786277)))

(declare-datatypes ((Option!11616 0))(
  ( (None!11615) (Some!11615 (v!45761 V!13186)) )
))
(declare-fun getValueByKey!1466 (List!51686 K!12940) Option!11616)

(assert (=> d!1457852 (= (getValueByKey!1466 lt!1786276 (_1!29549 lt!1786099)) (Some!11615 (_2!29549 lt!1786099)))))

(declare-fun lemmaContainsTupThenGetReturnValue!855 (List!51686 K!12940 V!13186) Unit!112512)

(assert (=> d!1457852 (= lt!1786277 (lemmaContainsTupThenGetReturnValue!855 lt!1786276 (_1!29549 lt!1786099) (_2!29549 lt!1786099)))))

(declare-fun insertNoDuplicatedKeys!363 (List!51686 K!12940 V!13186) List!51686)

(assert (=> d!1457852 (= lt!1786276 (insertNoDuplicatedKeys!363 (toList!4997 (addToMapMapFromBucket!977 lt!1786084 (ListMap!4302 Nil!51562))) (_1!29549 lt!1786099) (_2!29549 lt!1786099)))))

(assert (=> d!1457852 (= (+!1882 (addToMapMapFromBucket!977 lt!1786084 (ListMap!4302 Nil!51562)) lt!1786099) lt!1786278)))

(declare-fun b!4627609 () Bool)

(declare-fun res!1940947 () Bool)

(assert (=> b!4627609 (=> (not res!1940947) (not e!2886680))))

(assert (=> b!4627609 (= res!1940947 (= (getValueByKey!1466 (toList!4997 lt!1786278) (_1!29549 lt!1786099)) (Some!11615 (_2!29549 lt!1786099))))))

(declare-fun b!4627610 () Bool)

(declare-fun contains!14626 (List!51686 tuple2!52510) Bool)

(assert (=> b!4627610 (= e!2886680 (contains!14626 (toList!4997 lt!1786278) lt!1786099))))

(assert (= (and d!1457852 res!1940946) b!4627609))

(assert (= (and b!4627609 res!1940947) b!4627610))

(declare-fun m!5471887 () Bool)

(assert (=> d!1457852 m!5471887))

(declare-fun m!5471889 () Bool)

(assert (=> d!1457852 m!5471889))

(declare-fun m!5471891 () Bool)

(assert (=> d!1457852 m!5471891))

(declare-fun m!5471893 () Bool)

(assert (=> d!1457852 m!5471893))

(declare-fun m!5471895 () Bool)

(assert (=> b!4627609 m!5471895))

(declare-fun m!5471897 () Bool)

(assert (=> b!4627610 m!5471897))

(assert (=> b!4627439 d!1457852))

(declare-fun d!1457854 () Bool)

(assert (=> d!1457854 (= (eq!831 (addToMapMapFromBucket!977 (Cons!51562 lt!1786099 lt!1786084) (ListMap!4302 Nil!51562)) (+!1882 (addToMapMapFromBucket!977 lt!1786084 (ListMap!4302 Nil!51562)) lt!1786099)) (= (content!8818 (toList!4997 (addToMapMapFromBucket!977 (Cons!51562 lt!1786099 lt!1786084) (ListMap!4302 Nil!51562)))) (content!8818 (toList!4997 (+!1882 (addToMapMapFromBucket!977 lt!1786084 (ListMap!4302 Nil!51562)) lt!1786099)))))))

(declare-fun bs!1024760 () Bool)

(assert (= bs!1024760 d!1457854))

(declare-fun m!5471899 () Bool)

(assert (=> bs!1024760 m!5471899))

(declare-fun m!5471901 () Bool)

(assert (=> bs!1024760 m!5471901))

(assert (=> b!4627439 d!1457854))

(declare-fun d!1457856 () Bool)

(declare-fun e!2886681 () Bool)

(assert (=> d!1457856 e!2886681))

(declare-fun res!1940948 () Bool)

(assert (=> d!1457856 (=> (not res!1940948) (not e!2886681))))

(declare-fun lt!1786282 () ListMap!4301)

(assert (=> d!1457856 (= res!1940948 (contains!14623 lt!1786282 (_1!29549 (h!57620 oldBucket!40))))))

(declare-fun lt!1786280 () List!51686)

(assert (=> d!1457856 (= lt!1786282 (ListMap!4302 lt!1786280))))

(declare-fun lt!1786283 () Unit!112512)

(declare-fun lt!1786281 () Unit!112512)

(assert (=> d!1457856 (= lt!1786283 lt!1786281)))

(assert (=> d!1457856 (= (getValueByKey!1466 lt!1786280 (_1!29549 (h!57620 oldBucket!40))) (Some!11615 (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457856 (= lt!1786281 (lemmaContainsTupThenGetReturnValue!855 lt!1786280 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457856 (= lt!1786280 (insertNoDuplicatedKeys!363 (toList!4997 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563))) (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457856 (= (+!1882 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563)) (h!57620 oldBucket!40)) lt!1786282)))

(declare-fun b!4627611 () Bool)

(declare-fun res!1940949 () Bool)

(assert (=> b!4627611 (=> (not res!1940949) (not e!2886681))))

(assert (=> b!4627611 (= res!1940949 (= (getValueByKey!1466 (toList!4997 lt!1786282) (_1!29549 (h!57620 oldBucket!40))) (Some!11615 (_2!29549 (h!57620 oldBucket!40)))))))

(declare-fun b!4627612 () Bool)

(assert (=> b!4627612 (= e!2886681 (contains!14626 (toList!4997 lt!1786282) (h!57620 oldBucket!40)))))

(assert (= (and d!1457856 res!1940948) b!4627611))

(assert (= (and b!4627611 res!1940949) b!4627612))

(declare-fun m!5471903 () Bool)

(assert (=> d!1457856 m!5471903))

(declare-fun m!5471905 () Bool)

(assert (=> d!1457856 m!5471905))

(declare-fun m!5471907 () Bool)

(assert (=> d!1457856 m!5471907))

(declare-fun m!5471909 () Bool)

(assert (=> d!1457856 m!5471909))

(declare-fun m!5471911 () Bool)

(assert (=> b!4627611 m!5471911))

(declare-fun m!5471913 () Bool)

(assert (=> b!4627612 m!5471913))

(assert (=> b!4627439 d!1457856))

(declare-fun bs!1024761 () Bool)

(declare-fun d!1457858 () Bool)

(assert (= bs!1024761 (and d!1457858 b!4627440)))

(declare-fun lambda!192667 () Int)

(assert (=> bs!1024761 (= lambda!192667 lambda!192612)))

(declare-fun lt!1786286 () ListMap!4301)

(assert (=> d!1457858 (invariantList!1211 (toList!4997 lt!1786286))))

(declare-fun e!2886684 () ListMap!4301)

(assert (=> d!1457858 (= lt!1786286 e!2886684)))

(declare-fun c!792107 () Bool)

(assert (=> d!1457858 (= c!792107 ((_ is Cons!51563) (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563)))))

(assert (=> d!1457858 (forall!10838 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563) lambda!192667)))

(assert (=> d!1457858 (= (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563)) lt!1786286)))

(declare-fun b!4627617 () Bool)

(assert (=> b!4627617 (= e!2886684 (addToMapMapFromBucket!977 (_2!29550 (h!57621 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563))) (extractMap!1572 (t!358727 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563)))))))

(declare-fun b!4627618 () Bool)

(assert (=> b!4627618 (= e!2886684 (ListMap!4302 Nil!51562))))

(assert (= (and d!1457858 c!792107) b!4627617))

(assert (= (and d!1457858 (not c!792107)) b!4627618))

(declare-fun m!5471915 () Bool)

(assert (=> d!1457858 m!5471915))

(declare-fun m!5471917 () Bool)

(assert (=> d!1457858 m!5471917))

(declare-fun m!5471919 () Bool)

(assert (=> b!4627617 m!5471919))

(assert (=> b!4627617 m!5471919))

(declare-fun m!5471921 () Bool)

(assert (=> b!4627617 m!5471921))

(assert (=> b!4627439 d!1457858))

(declare-fun d!1457860 () Bool)

(assert (=> d!1457860 (eq!831 (addToMapMapFromBucket!977 (Cons!51562 lt!1786099 lt!1786084) (ListMap!4302 Nil!51562)) (+!1882 (addToMapMapFromBucket!977 lt!1786084 (ListMap!4302 Nil!51562)) lt!1786099))))

(declare-fun lt!1786287 () Unit!112512)

(assert (=> d!1457860 (= lt!1786287 (choose!31369 lt!1786099 lt!1786084 (ListMap!4302 Nil!51562)))))

(assert (=> d!1457860 (noDuplicateKeys!1516 lt!1786084)))

(assert (=> d!1457860 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!82 lt!1786099 lt!1786084 (ListMap!4302 Nil!51562)) lt!1786287)))

(declare-fun bs!1024762 () Bool)

(assert (= bs!1024762 d!1457860))

(assert (=> bs!1024762 m!5471591))

(assert (=> bs!1024762 m!5471591))

(assert (=> bs!1024762 m!5471593))

(declare-fun m!5471923 () Bool)

(assert (=> bs!1024762 m!5471923))

(declare-fun m!5471925 () Bool)

(assert (=> bs!1024762 m!5471925))

(assert (=> bs!1024762 m!5471589))

(assert (=> bs!1024762 m!5471589))

(assert (=> bs!1024762 m!5471593))

(assert (=> bs!1024762 m!5471595))

(assert (=> b!4627439 d!1457860))

(declare-fun bs!1024763 () Bool)

(declare-fun d!1457862 () Bool)

(assert (= bs!1024763 (and d!1457862 b!4627440)))

(declare-fun lambda!192668 () Int)

(assert (=> bs!1024763 (= lambda!192668 lambda!192612)))

(declare-fun bs!1024764 () Bool)

(assert (= bs!1024764 (and d!1457862 d!1457858)))

(assert (=> bs!1024764 (= lambda!192668 lambda!192667)))

(declare-fun lt!1786288 () ListMap!4301)

(assert (=> d!1457862 (invariantList!1211 (toList!4997 lt!1786288))))

(declare-fun e!2886685 () ListMap!4301)

(assert (=> d!1457862 (= lt!1786288 e!2886685)))

(declare-fun c!792108 () Bool)

(assert (=> d!1457862 (= c!792108 ((_ is Cons!51563) lt!1786089))))

(assert (=> d!1457862 (forall!10838 lt!1786089 lambda!192668)))

(assert (=> d!1457862 (= (extractMap!1572 lt!1786089) lt!1786288)))

(declare-fun b!4627619 () Bool)

(assert (=> b!4627619 (= e!2886685 (addToMapMapFromBucket!977 (_2!29550 (h!57621 lt!1786089)) (extractMap!1572 (t!358727 lt!1786089))))))

(declare-fun b!4627620 () Bool)

(assert (=> b!4627620 (= e!2886685 (ListMap!4302 Nil!51562))))

(assert (= (and d!1457862 c!792108) b!4627619))

(assert (= (and d!1457862 (not c!792108)) b!4627620))

(declare-fun m!5471927 () Bool)

(assert (=> d!1457862 m!5471927))

(declare-fun m!5471929 () Bool)

(assert (=> d!1457862 m!5471929))

(declare-fun m!5471931 () Bool)

(assert (=> b!4627619 m!5471931))

(assert (=> b!4627619 m!5471931))

(declare-fun m!5471933 () Bool)

(assert (=> b!4627619 m!5471933))

(assert (=> b!4627439 d!1457862))

(declare-fun d!1457864 () Bool)

(declare-fun e!2886686 () Bool)

(assert (=> d!1457864 e!2886686))

(declare-fun res!1940950 () Bool)

(assert (=> d!1457864 (=> (not res!1940950) (not e!2886686))))

(declare-fun lt!1786291 () ListMap!4301)

(assert (=> d!1457864 (= res!1940950 (contains!14623 lt!1786291 (_1!29549 lt!1786093)))))

(declare-fun lt!1786289 () List!51686)

(assert (=> d!1457864 (= lt!1786291 (ListMap!4302 lt!1786289))))

(declare-fun lt!1786292 () Unit!112512)

(declare-fun lt!1786290 () Unit!112512)

(assert (=> d!1457864 (= lt!1786292 lt!1786290)))

(assert (=> d!1457864 (= (getValueByKey!1466 lt!1786289 (_1!29549 lt!1786093)) (Some!11615 (_2!29549 lt!1786093)))))

(assert (=> d!1457864 (= lt!1786290 (lemmaContainsTupThenGetReturnValue!855 lt!1786289 (_1!29549 lt!1786093) (_2!29549 lt!1786093)))))

(assert (=> d!1457864 (= lt!1786289 (insertNoDuplicatedKeys!363 (toList!4997 (addToMapMapFromBucket!977 lt!1786096 (ListMap!4302 Nil!51562))) (_1!29549 lt!1786093) (_2!29549 lt!1786093)))))

(assert (=> d!1457864 (= (+!1882 (addToMapMapFromBucket!977 lt!1786096 (ListMap!4302 Nil!51562)) lt!1786093) lt!1786291)))

(declare-fun b!4627621 () Bool)

(declare-fun res!1940951 () Bool)

(assert (=> b!4627621 (=> (not res!1940951) (not e!2886686))))

(assert (=> b!4627621 (= res!1940951 (= (getValueByKey!1466 (toList!4997 lt!1786291) (_1!29549 lt!1786093)) (Some!11615 (_2!29549 lt!1786093))))))

(declare-fun b!4627622 () Bool)

(assert (=> b!4627622 (= e!2886686 (contains!14626 (toList!4997 lt!1786291) lt!1786093))))

(assert (= (and d!1457864 res!1940950) b!4627621))

(assert (= (and b!4627621 res!1940951) b!4627622))

(declare-fun m!5471935 () Bool)

(assert (=> d!1457864 m!5471935))

(declare-fun m!5471937 () Bool)

(assert (=> d!1457864 m!5471937))

(declare-fun m!5471939 () Bool)

(assert (=> d!1457864 m!5471939))

(declare-fun m!5471941 () Bool)

(assert (=> d!1457864 m!5471941))

(declare-fun m!5471943 () Bool)

(assert (=> b!4627621 m!5471943))

(declare-fun m!5471945 () Bool)

(assert (=> b!4627622 m!5471945))

(assert (=> b!4627439 d!1457864))

(declare-fun b!4627641 () Bool)

(declare-fun e!2886699 () Unit!112512)

(declare-fun lt!1786311 () Unit!112512)

(assert (=> b!4627641 (= e!2886699 lt!1786311)))

(declare-fun lt!1786315 () Unit!112512)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1368 (List!51686 K!12940) Unit!112512)

(assert (=> b!4627641 (= lt!1786315 (lemmaContainsKeyImpliesGetValueByKeyDefined!1368 (toList!4997 lt!1786090) key!4968))))

(declare-fun isDefined!8881 (Option!11616) Bool)

(assert (=> b!4627641 (isDefined!8881 (getValueByKey!1466 (toList!4997 lt!1786090) key!4968))))

(declare-fun lt!1786310 () Unit!112512)

(assert (=> b!4627641 (= lt!1786310 lt!1786315)))

(declare-fun lemmaInListThenGetKeysListContains!657 (List!51686 K!12940) Unit!112512)

(assert (=> b!4627641 (= lt!1786311 (lemmaInListThenGetKeysListContains!657 (toList!4997 lt!1786090) key!4968))))

(declare-fun call!322816 () Bool)

(assert (=> b!4627641 call!322816))

(declare-fun b!4627642 () Bool)

(declare-fun e!2886701 () Bool)

(declare-fun contains!14628 (List!51688 K!12940) Bool)

(assert (=> b!4627642 (= e!2886701 (contains!14628 (keys!18171 lt!1786090) key!4968))))

(declare-fun d!1457866 () Bool)

(declare-fun e!2886700 () Bool)

(assert (=> d!1457866 e!2886700))

(declare-fun res!1940958 () Bool)

(assert (=> d!1457866 (=> res!1940958 e!2886700)))

(declare-fun e!2886702 () Bool)

(assert (=> d!1457866 (= res!1940958 e!2886702)))

(declare-fun res!1940959 () Bool)

(assert (=> d!1457866 (=> (not res!1940959) (not e!2886702))))

(declare-fun lt!1786309 () Bool)

(assert (=> d!1457866 (= res!1940959 (not lt!1786309))))

(declare-fun lt!1786316 () Bool)

(assert (=> d!1457866 (= lt!1786309 lt!1786316)))

(declare-fun lt!1786314 () Unit!112512)

(assert (=> d!1457866 (= lt!1786314 e!2886699)))

(declare-fun c!792116 () Bool)

(assert (=> d!1457866 (= c!792116 lt!1786316)))

(declare-fun containsKey!2474 (List!51686 K!12940) Bool)

(assert (=> d!1457866 (= lt!1786316 (containsKey!2474 (toList!4997 lt!1786090) key!4968))))

(assert (=> d!1457866 (= (contains!14623 lt!1786090 key!4968) lt!1786309)))

(declare-fun b!4627643 () Bool)

(declare-fun e!2886703 () List!51688)

(declare-fun getKeysList!662 (List!51686) List!51688)

(assert (=> b!4627643 (= e!2886703 (getKeysList!662 (toList!4997 lt!1786090)))))

(declare-fun b!4627644 () Bool)

(assert (=> b!4627644 (= e!2886703 (keys!18171 lt!1786090))))

(declare-fun b!4627645 () Bool)

(assert (=> b!4627645 (= e!2886702 (not (contains!14628 (keys!18171 lt!1786090) key!4968)))))

(declare-fun b!4627646 () Bool)

(assert (=> b!4627646 (= e!2886700 e!2886701)))

(declare-fun res!1940960 () Bool)

(assert (=> b!4627646 (=> (not res!1940960) (not e!2886701))))

(assert (=> b!4627646 (= res!1940960 (isDefined!8881 (getValueByKey!1466 (toList!4997 lt!1786090) key!4968)))))

(declare-fun b!4627647 () Bool)

(declare-fun e!2886704 () Unit!112512)

(assert (=> b!4627647 (= e!2886699 e!2886704)))

(declare-fun c!792117 () Bool)

(assert (=> b!4627647 (= c!792117 call!322816)))

(declare-fun b!4627648 () Bool)

(declare-fun Unit!112526 () Unit!112512)

(assert (=> b!4627648 (= e!2886704 Unit!112526)))

(declare-fun b!4627649 () Bool)

(assert (=> b!4627649 false))

(declare-fun lt!1786312 () Unit!112512)

(declare-fun lt!1786313 () Unit!112512)

(assert (=> b!4627649 (= lt!1786312 lt!1786313)))

(assert (=> b!4627649 (containsKey!2474 (toList!4997 lt!1786090) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!661 (List!51686 K!12940) Unit!112512)

(assert (=> b!4627649 (= lt!1786313 (lemmaInGetKeysListThenContainsKey!661 (toList!4997 lt!1786090) key!4968))))

(declare-fun Unit!112527 () Unit!112512)

(assert (=> b!4627649 (= e!2886704 Unit!112527)))

(declare-fun bm!322811 () Bool)

(assert (=> bm!322811 (= call!322816 (contains!14628 e!2886703 key!4968))))

(declare-fun c!792115 () Bool)

(assert (=> bm!322811 (= c!792115 c!792116)))

(assert (= (and d!1457866 c!792116) b!4627641))

(assert (= (and d!1457866 (not c!792116)) b!4627647))

(assert (= (and b!4627647 c!792117) b!4627649))

(assert (= (and b!4627647 (not c!792117)) b!4627648))

(assert (= (or b!4627641 b!4627647) bm!322811))

(assert (= (and bm!322811 c!792115) b!4627643))

(assert (= (and bm!322811 (not c!792115)) b!4627644))

(assert (= (and d!1457866 res!1940959) b!4627645))

(assert (= (and d!1457866 (not res!1940958)) b!4627646))

(assert (= (and b!4627646 res!1940960) b!4627642))

(declare-fun m!5471947 () Bool)

(assert (=> d!1457866 m!5471947))

(assert (=> b!4627649 m!5471947))

(declare-fun m!5471949 () Bool)

(assert (=> b!4627649 m!5471949))

(declare-fun m!5471951 () Bool)

(assert (=> b!4627643 m!5471951))

(declare-fun m!5471953 () Bool)

(assert (=> bm!322811 m!5471953))

(declare-fun m!5471955 () Bool)

(assert (=> b!4627645 m!5471955))

(assert (=> b!4627645 m!5471955))

(declare-fun m!5471957 () Bool)

(assert (=> b!4627645 m!5471957))

(declare-fun m!5471959 () Bool)

(assert (=> b!4627641 m!5471959))

(declare-fun m!5471961 () Bool)

(assert (=> b!4627641 m!5471961))

(assert (=> b!4627641 m!5471961))

(declare-fun m!5471963 () Bool)

(assert (=> b!4627641 m!5471963))

(declare-fun m!5471965 () Bool)

(assert (=> b!4627641 m!5471965))

(assert (=> b!4627646 m!5471961))

(assert (=> b!4627646 m!5471961))

(assert (=> b!4627646 m!5471963))

(assert (=> b!4627642 m!5471955))

(assert (=> b!4627642 m!5471955))

(assert (=> b!4627642 m!5471957))

(assert (=> b!4627644 m!5471955))

(assert (=> b!4627439 d!1457866))

(declare-fun bs!1024765 () Bool)

(declare-fun d!1457868 () Bool)

(assert (= bs!1024765 (and d!1457868 b!4627440)))

(declare-fun lambda!192671 () Int)

(assert (=> bs!1024765 (= lambda!192671 lambda!192612)))

(declare-fun bs!1024766 () Bool)

(assert (= bs!1024766 (and d!1457868 d!1457858)))

(assert (=> bs!1024766 (= lambda!192671 lambda!192667)))

(declare-fun bs!1024767 () Bool)

(assert (= bs!1024767 (and d!1457868 d!1457862)))

(assert (=> bs!1024767 (= lambda!192671 lambda!192668)))

(assert (=> d!1457868 (contains!14623 (extractMap!1572 (toList!4998 (ListLongMap!3588 lt!1786089))) key!4968)))

(declare-fun lt!1786319 () Unit!112512)

(declare-fun choose!31375 (ListLongMap!3587 K!12940 Hashable!5913) Unit!112512)

(assert (=> d!1457868 (= lt!1786319 (choose!31375 (ListLongMap!3588 lt!1786089) key!4968 hashF!1389))))

(assert (=> d!1457868 (forall!10838 (toList!4998 (ListLongMap!3588 lt!1786089)) lambda!192671)))

(assert (=> d!1457868 (= (lemmaListContainsThenExtractedMapContains!334 (ListLongMap!3588 lt!1786089) key!4968 hashF!1389) lt!1786319)))

(declare-fun bs!1024768 () Bool)

(assert (= bs!1024768 d!1457868))

(declare-fun m!5471967 () Bool)

(assert (=> bs!1024768 m!5471967))

(assert (=> bs!1024768 m!5471967))

(declare-fun m!5471969 () Bool)

(assert (=> bs!1024768 m!5471969))

(declare-fun m!5471971 () Bool)

(assert (=> bs!1024768 m!5471971))

(declare-fun m!5471973 () Bool)

(assert (=> bs!1024768 m!5471973))

(assert (=> b!4627439 d!1457868))

(declare-fun d!1457870 () Bool)

(assert (=> d!1457870 (= (eq!831 (addToMapMapFromBucket!977 (Cons!51562 lt!1786093 lt!1786096) (ListMap!4302 Nil!51562)) (+!1882 (addToMapMapFromBucket!977 lt!1786096 (ListMap!4302 Nil!51562)) lt!1786093)) (= (content!8818 (toList!4997 (addToMapMapFromBucket!977 (Cons!51562 lt!1786093 lt!1786096) (ListMap!4302 Nil!51562)))) (content!8818 (toList!4997 (+!1882 (addToMapMapFromBucket!977 lt!1786096 (ListMap!4302 Nil!51562)) lt!1786093)))))))

(declare-fun bs!1024769 () Bool)

(assert (= bs!1024769 d!1457870))

(declare-fun m!5471975 () Bool)

(assert (=> bs!1024769 m!5471975))

(declare-fun m!5471977 () Bool)

(assert (=> bs!1024769 m!5471977))

(assert (=> b!4627439 d!1457870))

(declare-fun bs!1024770 () Bool)

(declare-fun b!4627651 () Bool)

(assert (= bs!1024770 (and b!4627651 d!1457796)))

(declare-fun lambda!192672 () Int)

(assert (=> bs!1024770 (not (= lambda!192672 lambda!192615))))

(declare-fun bs!1024771 () Bool)

(assert (= bs!1024771 (and b!4627651 b!4627599)))

(assert (=> bs!1024771 (= lambda!192672 lambda!192661)))

(declare-fun bs!1024772 () Bool)

(assert (= bs!1024772 (and b!4627651 d!1457816)))

(assert (=> bs!1024772 (= (= (ListMap!4302 Nil!51562) lt!1786248) (= lambda!192672 lambda!192664))))

(declare-fun bs!1024773 () Bool)

(assert (= bs!1024773 (and b!4627651 b!4627601)))

(assert (=> bs!1024773 (= lambda!192672 lambda!192662)))

(assert (=> bs!1024773 (= (= (ListMap!4302 Nil!51562) lt!1786247) (= lambda!192672 lambda!192663))))

(assert (=> b!4627651 true))

(declare-fun bs!1024774 () Bool)

(declare-fun b!4627653 () Bool)

(assert (= bs!1024774 (and b!4627653 b!4627651)))

(declare-fun lambda!192673 () Int)

(assert (=> bs!1024774 (= lambda!192673 lambda!192672)))

(declare-fun bs!1024775 () Bool)

(assert (= bs!1024775 (and b!4627653 d!1457796)))

(assert (=> bs!1024775 (not (= lambda!192673 lambda!192615))))

(declare-fun bs!1024776 () Bool)

(assert (= bs!1024776 (and b!4627653 b!4627599)))

(assert (=> bs!1024776 (= lambda!192673 lambda!192661)))

(declare-fun bs!1024777 () Bool)

(assert (= bs!1024777 (and b!4627653 d!1457816)))

(assert (=> bs!1024777 (= (= (ListMap!4302 Nil!51562) lt!1786248) (= lambda!192673 lambda!192664))))

(declare-fun bs!1024778 () Bool)

(assert (= bs!1024778 (and b!4627653 b!4627601)))

(assert (=> bs!1024778 (= lambda!192673 lambda!192662)))

(assert (=> bs!1024778 (= (= (ListMap!4302 Nil!51562) lt!1786247) (= lambda!192673 lambda!192663))))

(assert (=> b!4627653 true))

(declare-fun lt!1786320 () ListMap!4301)

(declare-fun lambda!192674 () Int)

(assert (=> bs!1024774 (= (= lt!1786320 (ListMap!4302 Nil!51562)) (= lambda!192674 lambda!192672))))

(assert (=> bs!1024775 (not (= lambda!192674 lambda!192615))))

(assert (=> b!4627653 (= (= lt!1786320 (ListMap!4302 Nil!51562)) (= lambda!192674 lambda!192673))))

(assert (=> bs!1024776 (= (= lt!1786320 (ListMap!4302 Nil!51562)) (= lambda!192674 lambda!192661))))

(assert (=> bs!1024777 (= (= lt!1786320 lt!1786248) (= lambda!192674 lambda!192664))))

(assert (=> bs!1024778 (= (= lt!1786320 (ListMap!4302 Nil!51562)) (= lambda!192674 lambda!192662))))

(assert (=> bs!1024778 (= (= lt!1786320 lt!1786247) (= lambda!192674 lambda!192663))))

(assert (=> b!4627653 true))

(declare-fun bs!1024779 () Bool)

(declare-fun d!1457872 () Bool)

(assert (= bs!1024779 (and d!1457872 b!4627653)))

(declare-fun lt!1786321 () ListMap!4301)

(declare-fun lambda!192675 () Int)

(assert (=> bs!1024779 (= (= lt!1786321 lt!1786320) (= lambda!192675 lambda!192674))))

(declare-fun bs!1024780 () Bool)

(assert (= bs!1024780 (and d!1457872 b!4627651)))

(assert (=> bs!1024780 (= (= lt!1786321 (ListMap!4302 Nil!51562)) (= lambda!192675 lambda!192672))))

(declare-fun bs!1024781 () Bool)

(assert (= bs!1024781 (and d!1457872 d!1457796)))

(assert (=> bs!1024781 (not (= lambda!192675 lambda!192615))))

(assert (=> bs!1024779 (= (= lt!1786321 (ListMap!4302 Nil!51562)) (= lambda!192675 lambda!192673))))

(declare-fun bs!1024782 () Bool)

(assert (= bs!1024782 (and d!1457872 b!4627599)))

(assert (=> bs!1024782 (= (= lt!1786321 (ListMap!4302 Nil!51562)) (= lambda!192675 lambda!192661))))

(declare-fun bs!1024783 () Bool)

(assert (= bs!1024783 (and d!1457872 d!1457816)))

(assert (=> bs!1024783 (= (= lt!1786321 lt!1786248) (= lambda!192675 lambda!192664))))

(declare-fun bs!1024784 () Bool)

(assert (= bs!1024784 (and d!1457872 b!4627601)))

(assert (=> bs!1024784 (= (= lt!1786321 (ListMap!4302 Nil!51562)) (= lambda!192675 lambda!192662))))

(assert (=> bs!1024784 (= (= lt!1786321 lt!1786247) (= lambda!192675 lambda!192663))))

(assert (=> d!1457872 true))

(declare-fun b!4627650 () Bool)

(declare-fun res!1940962 () Bool)

(declare-fun e!2886705 () Bool)

(assert (=> b!4627650 (=> (not res!1940962) (not e!2886705))))

(assert (=> b!4627650 (= res!1940962 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192675))))

(declare-fun e!2886707 () ListMap!4301)

(assert (=> b!4627651 (= e!2886707 (ListMap!4302 Nil!51562))))

(declare-fun lt!1786327 () Unit!112512)

(declare-fun call!322819 () Unit!112512)

(assert (=> b!4627651 (= lt!1786327 call!322819)))

(declare-fun call!322817 () Bool)

(assert (=> b!4627651 call!322817))

(declare-fun lt!1786322 () Unit!112512)

(assert (=> b!4627651 (= lt!1786322 lt!1786327)))

(declare-fun call!322818 () Bool)

(assert (=> b!4627651 call!322818))

(declare-fun lt!1786332 () Unit!112512)

(declare-fun Unit!112530 () Unit!112512)

(assert (=> b!4627651 (= lt!1786332 Unit!112530)))

(declare-fun c!792118 () Bool)

(declare-fun bm!322812 () Bool)

(assert (=> bm!322812 (= call!322817 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792118 lambda!192672 lambda!192674)))))

(declare-fun bm!322813 () Bool)

(assert (=> bm!322813 (= call!322818 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792118 lambda!192672 lambda!192674)))))

(declare-fun bm!322814 () Bool)

(assert (=> bm!322814 (= call!322819 (lemmaContainsAllItsOwnKeys!513 (ListMap!4302 Nil!51562)))))

(declare-fun b!4627652 () Bool)

(assert (=> b!4627652 (= e!2886705 (invariantList!1211 (toList!4997 lt!1786321)))))

(assert (=> b!4627653 (= e!2886707 lt!1786320)))

(declare-fun lt!1786340 () ListMap!4301)

(assert (=> b!4627653 (= lt!1786340 (+!1882 (ListMap!4302 Nil!51562) (h!57620 lt!1786096)))))

(assert (=> b!4627653 (= lt!1786320 (addToMapMapFromBucket!977 (t!358726 lt!1786096) (+!1882 (ListMap!4302 Nil!51562) (h!57620 lt!1786096))))))

(declare-fun lt!1786339 () Unit!112512)

(assert (=> b!4627653 (= lt!1786339 call!322819)))

(assert (=> b!4627653 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192673)))

(declare-fun lt!1786326 () Unit!112512)

(assert (=> b!4627653 (= lt!1786326 lt!1786339)))

(assert (=> b!4627653 (forall!10839 (toList!4997 lt!1786340) lambda!192674)))

(declare-fun lt!1786323 () Unit!112512)

(declare-fun Unit!112531 () Unit!112512)

(assert (=> b!4627653 (= lt!1786323 Unit!112531)))

(assert (=> b!4627653 (forall!10839 (t!358726 lt!1786096) lambda!192674)))

(declare-fun lt!1786338 () Unit!112512)

(declare-fun Unit!112532 () Unit!112512)

(assert (=> b!4627653 (= lt!1786338 Unit!112532)))

(declare-fun lt!1786331 () Unit!112512)

(declare-fun Unit!112533 () Unit!112512)

(assert (=> b!4627653 (= lt!1786331 Unit!112533)))

(declare-fun lt!1786324 () Unit!112512)

(assert (=> b!4627653 (= lt!1786324 (forallContained!3069 (toList!4997 lt!1786340) lambda!192674 (h!57620 lt!1786096)))))

(assert (=> b!4627653 (contains!14623 lt!1786340 (_1!29549 (h!57620 lt!1786096)))))

(declare-fun lt!1786336 () Unit!112512)

(declare-fun Unit!112534 () Unit!112512)

(assert (=> b!4627653 (= lt!1786336 Unit!112534)))

(assert (=> b!4627653 (contains!14623 lt!1786320 (_1!29549 (h!57620 lt!1786096)))))

(declare-fun lt!1786325 () Unit!112512)

(declare-fun Unit!112535 () Unit!112512)

(assert (=> b!4627653 (= lt!1786325 Unit!112535)))

(assert (=> b!4627653 (forall!10839 lt!1786096 lambda!192674)))

(declare-fun lt!1786334 () Unit!112512)

(declare-fun Unit!112536 () Unit!112512)

(assert (=> b!4627653 (= lt!1786334 Unit!112536)))

(assert (=> b!4627653 (forall!10839 (toList!4997 lt!1786340) lambda!192674)))

(declare-fun lt!1786333 () Unit!112512)

(declare-fun Unit!112537 () Unit!112512)

(assert (=> b!4627653 (= lt!1786333 Unit!112537)))

(declare-fun lt!1786337 () Unit!112512)

(declare-fun Unit!112538 () Unit!112512)

(assert (=> b!4627653 (= lt!1786337 Unit!112538)))

(declare-fun lt!1786328 () Unit!112512)

(assert (=> b!4627653 (= lt!1786328 (addForallContainsKeyThenBeforeAdding!512 (ListMap!4302 Nil!51562) lt!1786320 (_1!29549 (h!57620 lt!1786096)) (_2!29549 (h!57620 lt!1786096))))))

(assert (=> b!4627653 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192674)))

(declare-fun lt!1786335 () Unit!112512)

(assert (=> b!4627653 (= lt!1786335 lt!1786328)))

(assert (=> b!4627653 call!322817))

(declare-fun lt!1786330 () Unit!112512)

(declare-fun Unit!112539 () Unit!112512)

(assert (=> b!4627653 (= lt!1786330 Unit!112539)))

(declare-fun res!1940961 () Bool)

(assert (=> b!4627653 (= res!1940961 (forall!10839 lt!1786096 lambda!192674))))

(declare-fun e!2886706 () Bool)

(assert (=> b!4627653 (=> (not res!1940961) (not e!2886706))))

(assert (=> b!4627653 e!2886706))

(declare-fun lt!1786329 () Unit!112512)

(declare-fun Unit!112540 () Unit!112512)

(assert (=> b!4627653 (= lt!1786329 Unit!112540)))

(assert (=> d!1457872 e!2886705))

(declare-fun res!1940963 () Bool)

(assert (=> d!1457872 (=> (not res!1940963) (not e!2886705))))

(assert (=> d!1457872 (= res!1940963 (forall!10839 lt!1786096 lambda!192675))))

(assert (=> d!1457872 (= lt!1786321 e!2886707)))

(assert (=> d!1457872 (= c!792118 ((_ is Nil!51562) lt!1786096))))

(assert (=> d!1457872 (noDuplicateKeys!1516 lt!1786096)))

(assert (=> d!1457872 (= (addToMapMapFromBucket!977 lt!1786096 (ListMap!4302 Nil!51562)) lt!1786321)))

(declare-fun b!4627654 () Bool)

(assert (=> b!4627654 (= e!2886706 call!322818)))

(assert (= (and d!1457872 c!792118) b!4627651))

(assert (= (and d!1457872 (not c!792118)) b!4627653))

(assert (= (and b!4627653 res!1940961) b!4627654))

(assert (= (or b!4627651 b!4627653) bm!322814))

(assert (= (or b!4627651 b!4627654) bm!322813))

(assert (= (or b!4627651 b!4627653) bm!322812))

(assert (= (and d!1457872 res!1940963) b!4627650))

(assert (= (and b!4627650 res!1940962) b!4627652))

(declare-fun m!5471979 () Bool)

(assert (=> b!4627650 m!5471979))

(declare-fun m!5471981 () Bool)

(assert (=> bm!322812 m!5471981))

(declare-fun m!5471983 () Bool)

(assert (=> d!1457872 m!5471983))

(assert (=> d!1457872 m!5471745))

(declare-fun m!5471985 () Bool)

(assert (=> b!4627652 m!5471985))

(assert (=> bm!322814 m!5471863))

(declare-fun m!5471987 () Bool)

(assert (=> b!4627653 m!5471987))

(declare-fun m!5471989 () Bool)

(assert (=> b!4627653 m!5471989))

(declare-fun m!5471991 () Bool)

(assert (=> b!4627653 m!5471991))

(declare-fun m!5471993 () Bool)

(assert (=> b!4627653 m!5471993))

(declare-fun m!5471995 () Bool)

(assert (=> b!4627653 m!5471995))

(declare-fun m!5471997 () Bool)

(assert (=> b!4627653 m!5471997))

(declare-fun m!5471999 () Bool)

(assert (=> b!4627653 m!5471999))

(declare-fun m!5472001 () Bool)

(assert (=> b!4627653 m!5472001))

(assert (=> b!4627653 m!5471991))

(declare-fun m!5472003 () Bool)

(assert (=> b!4627653 m!5472003))

(declare-fun m!5472005 () Bool)

(assert (=> b!4627653 m!5472005))

(assert (=> b!4627653 m!5472001))

(declare-fun m!5472007 () Bool)

(assert (=> b!4627653 m!5472007))

(assert (=> b!4627653 m!5472003))

(assert (=> bm!322813 m!5471981))

(assert (=> b!4627439 d!1457872))

(declare-fun bs!1024785 () Bool)

(declare-fun b!4627656 () Bool)

(assert (= bs!1024785 (and b!4627656 b!4627653)))

(declare-fun lambda!192676 () Int)

(assert (=> bs!1024785 (= (= (ListMap!4302 Nil!51562) lt!1786320) (= lambda!192676 lambda!192674))))

(declare-fun bs!1024786 () Bool)

(assert (= bs!1024786 (and b!4627656 b!4627651)))

(assert (=> bs!1024786 (= lambda!192676 lambda!192672)))

(declare-fun bs!1024787 () Bool)

(assert (= bs!1024787 (and b!4627656 d!1457796)))

(assert (=> bs!1024787 (not (= lambda!192676 lambda!192615))))

(declare-fun bs!1024788 () Bool)

(assert (= bs!1024788 (and b!4627656 d!1457872)))

(assert (=> bs!1024788 (= (= (ListMap!4302 Nil!51562) lt!1786321) (= lambda!192676 lambda!192675))))

(assert (=> bs!1024785 (= lambda!192676 lambda!192673)))

(declare-fun bs!1024789 () Bool)

(assert (= bs!1024789 (and b!4627656 b!4627599)))

(assert (=> bs!1024789 (= lambda!192676 lambda!192661)))

(declare-fun bs!1024790 () Bool)

(assert (= bs!1024790 (and b!4627656 d!1457816)))

(assert (=> bs!1024790 (= (= (ListMap!4302 Nil!51562) lt!1786248) (= lambda!192676 lambda!192664))))

(declare-fun bs!1024791 () Bool)

(assert (= bs!1024791 (and b!4627656 b!4627601)))

(assert (=> bs!1024791 (= lambda!192676 lambda!192662)))

(assert (=> bs!1024791 (= (= (ListMap!4302 Nil!51562) lt!1786247) (= lambda!192676 lambda!192663))))

(assert (=> b!4627656 true))

(declare-fun bs!1024792 () Bool)

(declare-fun b!4627658 () Bool)

(assert (= bs!1024792 (and b!4627658 b!4627656)))

(declare-fun lambda!192677 () Int)

(assert (=> bs!1024792 (= lambda!192677 lambda!192676)))

(declare-fun bs!1024793 () Bool)

(assert (= bs!1024793 (and b!4627658 b!4627653)))

(assert (=> bs!1024793 (= (= (ListMap!4302 Nil!51562) lt!1786320) (= lambda!192677 lambda!192674))))

(declare-fun bs!1024794 () Bool)

(assert (= bs!1024794 (and b!4627658 b!4627651)))

(assert (=> bs!1024794 (= lambda!192677 lambda!192672)))

(declare-fun bs!1024795 () Bool)

(assert (= bs!1024795 (and b!4627658 d!1457796)))

(assert (=> bs!1024795 (not (= lambda!192677 lambda!192615))))

(declare-fun bs!1024796 () Bool)

(assert (= bs!1024796 (and b!4627658 d!1457872)))

(assert (=> bs!1024796 (= (= (ListMap!4302 Nil!51562) lt!1786321) (= lambda!192677 lambda!192675))))

(assert (=> bs!1024793 (= lambda!192677 lambda!192673)))

(declare-fun bs!1024797 () Bool)

(assert (= bs!1024797 (and b!4627658 b!4627599)))

(assert (=> bs!1024797 (= lambda!192677 lambda!192661)))

(declare-fun bs!1024798 () Bool)

(assert (= bs!1024798 (and b!4627658 d!1457816)))

(assert (=> bs!1024798 (= (= (ListMap!4302 Nil!51562) lt!1786248) (= lambda!192677 lambda!192664))))

(declare-fun bs!1024799 () Bool)

(assert (= bs!1024799 (and b!4627658 b!4627601)))

(assert (=> bs!1024799 (= lambda!192677 lambda!192662)))

(assert (=> bs!1024799 (= (= (ListMap!4302 Nil!51562) lt!1786247) (= lambda!192677 lambda!192663))))

(assert (=> b!4627658 true))

(declare-fun lt!1786341 () ListMap!4301)

(declare-fun lambda!192678 () Int)

(assert (=> bs!1024792 (= (= lt!1786341 (ListMap!4302 Nil!51562)) (= lambda!192678 lambda!192676))))

(assert (=> bs!1024793 (= (= lt!1786341 lt!1786320) (= lambda!192678 lambda!192674))))

(assert (=> bs!1024794 (= (= lt!1786341 (ListMap!4302 Nil!51562)) (= lambda!192678 lambda!192672))))

(assert (=> bs!1024795 (not (= lambda!192678 lambda!192615))))

(assert (=> bs!1024796 (= (= lt!1786341 lt!1786321) (= lambda!192678 lambda!192675))))

(assert (=> bs!1024793 (= (= lt!1786341 (ListMap!4302 Nil!51562)) (= lambda!192678 lambda!192673))))

(assert (=> bs!1024797 (= (= lt!1786341 (ListMap!4302 Nil!51562)) (= lambda!192678 lambda!192661))))

(assert (=> b!4627658 (= (= lt!1786341 (ListMap!4302 Nil!51562)) (= lambda!192678 lambda!192677))))

(assert (=> bs!1024798 (= (= lt!1786341 lt!1786248) (= lambda!192678 lambda!192664))))

(assert (=> bs!1024799 (= (= lt!1786341 (ListMap!4302 Nil!51562)) (= lambda!192678 lambda!192662))))

(assert (=> bs!1024799 (= (= lt!1786341 lt!1786247) (= lambda!192678 lambda!192663))))

(assert (=> b!4627658 true))

(declare-fun bs!1024800 () Bool)

(declare-fun d!1457874 () Bool)

(assert (= bs!1024800 (and d!1457874 b!4627656)))

(declare-fun lt!1786342 () ListMap!4301)

(declare-fun lambda!192679 () Int)

(assert (=> bs!1024800 (= (= lt!1786342 (ListMap!4302 Nil!51562)) (= lambda!192679 lambda!192676))))

(declare-fun bs!1024801 () Bool)

(assert (= bs!1024801 (and d!1457874 b!4627653)))

(assert (=> bs!1024801 (= (= lt!1786342 lt!1786320) (= lambda!192679 lambda!192674))))

(declare-fun bs!1024802 () Bool)

(assert (= bs!1024802 (and d!1457874 b!4627651)))

(assert (=> bs!1024802 (= (= lt!1786342 (ListMap!4302 Nil!51562)) (= lambda!192679 lambda!192672))))

(declare-fun bs!1024803 () Bool)

(assert (= bs!1024803 (and d!1457874 d!1457796)))

(assert (=> bs!1024803 (not (= lambda!192679 lambda!192615))))

(declare-fun bs!1024804 () Bool)

(assert (= bs!1024804 (and d!1457874 d!1457872)))

(assert (=> bs!1024804 (= (= lt!1786342 lt!1786321) (= lambda!192679 lambda!192675))))

(assert (=> bs!1024801 (= (= lt!1786342 (ListMap!4302 Nil!51562)) (= lambda!192679 lambda!192673))))

(declare-fun bs!1024805 () Bool)

(assert (= bs!1024805 (and d!1457874 b!4627599)))

(assert (=> bs!1024805 (= (= lt!1786342 (ListMap!4302 Nil!51562)) (= lambda!192679 lambda!192661))))

(declare-fun bs!1024806 () Bool)

(assert (= bs!1024806 (and d!1457874 b!4627658)))

(assert (=> bs!1024806 (= (= lt!1786342 lt!1786341) (= lambda!192679 lambda!192678))))

(assert (=> bs!1024806 (= (= lt!1786342 (ListMap!4302 Nil!51562)) (= lambda!192679 lambda!192677))))

(declare-fun bs!1024807 () Bool)

(assert (= bs!1024807 (and d!1457874 d!1457816)))

(assert (=> bs!1024807 (= (= lt!1786342 lt!1786248) (= lambda!192679 lambda!192664))))

(declare-fun bs!1024808 () Bool)

(assert (= bs!1024808 (and d!1457874 b!4627601)))

(assert (=> bs!1024808 (= (= lt!1786342 (ListMap!4302 Nil!51562)) (= lambda!192679 lambda!192662))))

(assert (=> bs!1024808 (= (= lt!1786342 lt!1786247) (= lambda!192679 lambda!192663))))

(assert (=> d!1457874 true))

(declare-fun b!4627655 () Bool)

(declare-fun res!1940965 () Bool)

(declare-fun e!2886708 () Bool)

(assert (=> b!4627655 (=> (not res!1940965) (not e!2886708))))

(assert (=> b!4627655 (= res!1940965 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192679))))

(declare-fun e!2886710 () ListMap!4301)

(assert (=> b!4627656 (= e!2886710 (ListMap!4302 Nil!51562))))

(declare-fun lt!1786348 () Unit!112512)

(declare-fun call!322822 () Unit!112512)

(assert (=> b!4627656 (= lt!1786348 call!322822)))

(declare-fun call!322820 () Bool)

(assert (=> b!4627656 call!322820))

(declare-fun lt!1786343 () Unit!112512)

(assert (=> b!4627656 (= lt!1786343 lt!1786348)))

(declare-fun call!322821 () Bool)

(assert (=> b!4627656 call!322821))

(declare-fun lt!1786353 () Unit!112512)

(declare-fun Unit!112552 () Unit!112512)

(assert (=> b!4627656 (= lt!1786353 Unit!112552)))

(declare-fun c!792119 () Bool)

(declare-fun bm!322815 () Bool)

(assert (=> bm!322815 (= call!322820 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792119 lambda!192676 lambda!192678)))))

(declare-fun bm!322816 () Bool)

(assert (=> bm!322816 (= call!322821 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792119 lambda!192676 lambda!192678)))))

(declare-fun bm!322817 () Bool)

(assert (=> bm!322817 (= call!322822 (lemmaContainsAllItsOwnKeys!513 (ListMap!4302 Nil!51562)))))

(declare-fun b!4627657 () Bool)

(assert (=> b!4627657 (= e!2886708 (invariantList!1211 (toList!4997 lt!1786342)))))

(assert (=> b!4627658 (= e!2886710 lt!1786341)))

(declare-fun lt!1786361 () ListMap!4301)

(assert (=> b!4627658 (= lt!1786361 (+!1882 (ListMap!4302 Nil!51562) (h!57620 lt!1786084)))))

(assert (=> b!4627658 (= lt!1786341 (addToMapMapFromBucket!977 (t!358726 lt!1786084) (+!1882 (ListMap!4302 Nil!51562) (h!57620 lt!1786084))))))

(declare-fun lt!1786360 () Unit!112512)

(assert (=> b!4627658 (= lt!1786360 call!322822)))

(assert (=> b!4627658 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192677)))

(declare-fun lt!1786347 () Unit!112512)

(assert (=> b!4627658 (= lt!1786347 lt!1786360)))

(assert (=> b!4627658 (forall!10839 (toList!4997 lt!1786361) lambda!192678)))

(declare-fun lt!1786344 () Unit!112512)

(declare-fun Unit!112553 () Unit!112512)

(assert (=> b!4627658 (= lt!1786344 Unit!112553)))

(assert (=> b!4627658 (forall!10839 (t!358726 lt!1786084) lambda!192678)))

(declare-fun lt!1786359 () Unit!112512)

(declare-fun Unit!112554 () Unit!112512)

(assert (=> b!4627658 (= lt!1786359 Unit!112554)))

(declare-fun lt!1786352 () Unit!112512)

(declare-fun Unit!112555 () Unit!112512)

(assert (=> b!4627658 (= lt!1786352 Unit!112555)))

(declare-fun lt!1786345 () Unit!112512)

(assert (=> b!4627658 (= lt!1786345 (forallContained!3069 (toList!4997 lt!1786361) lambda!192678 (h!57620 lt!1786084)))))

(assert (=> b!4627658 (contains!14623 lt!1786361 (_1!29549 (h!57620 lt!1786084)))))

(declare-fun lt!1786357 () Unit!112512)

(declare-fun Unit!112556 () Unit!112512)

(assert (=> b!4627658 (= lt!1786357 Unit!112556)))

(assert (=> b!4627658 (contains!14623 lt!1786341 (_1!29549 (h!57620 lt!1786084)))))

(declare-fun lt!1786346 () Unit!112512)

(declare-fun Unit!112557 () Unit!112512)

(assert (=> b!4627658 (= lt!1786346 Unit!112557)))

(assert (=> b!4627658 (forall!10839 lt!1786084 lambda!192678)))

(declare-fun lt!1786355 () Unit!112512)

(declare-fun Unit!112558 () Unit!112512)

(assert (=> b!4627658 (= lt!1786355 Unit!112558)))

(assert (=> b!4627658 (forall!10839 (toList!4997 lt!1786361) lambda!192678)))

(declare-fun lt!1786354 () Unit!112512)

(declare-fun Unit!112559 () Unit!112512)

(assert (=> b!4627658 (= lt!1786354 Unit!112559)))

(declare-fun lt!1786358 () Unit!112512)

(declare-fun Unit!112560 () Unit!112512)

(assert (=> b!4627658 (= lt!1786358 Unit!112560)))

(declare-fun lt!1786349 () Unit!112512)

(assert (=> b!4627658 (= lt!1786349 (addForallContainsKeyThenBeforeAdding!512 (ListMap!4302 Nil!51562) lt!1786341 (_1!29549 (h!57620 lt!1786084)) (_2!29549 (h!57620 lt!1786084))))))

(assert (=> b!4627658 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192678)))

(declare-fun lt!1786356 () Unit!112512)

(assert (=> b!4627658 (= lt!1786356 lt!1786349)))

(assert (=> b!4627658 call!322820))

(declare-fun lt!1786351 () Unit!112512)

(declare-fun Unit!112561 () Unit!112512)

(assert (=> b!4627658 (= lt!1786351 Unit!112561)))

(declare-fun res!1940964 () Bool)

(assert (=> b!4627658 (= res!1940964 (forall!10839 lt!1786084 lambda!192678))))

(declare-fun e!2886709 () Bool)

(assert (=> b!4627658 (=> (not res!1940964) (not e!2886709))))

(assert (=> b!4627658 e!2886709))

(declare-fun lt!1786350 () Unit!112512)

(declare-fun Unit!112562 () Unit!112512)

(assert (=> b!4627658 (= lt!1786350 Unit!112562)))

(assert (=> d!1457874 e!2886708))

(declare-fun res!1940966 () Bool)

(assert (=> d!1457874 (=> (not res!1940966) (not e!2886708))))

(assert (=> d!1457874 (= res!1940966 (forall!10839 lt!1786084 lambda!192679))))

(assert (=> d!1457874 (= lt!1786342 e!2886710)))

(assert (=> d!1457874 (= c!792119 ((_ is Nil!51562) lt!1786084))))

(assert (=> d!1457874 (noDuplicateKeys!1516 lt!1786084)))

(assert (=> d!1457874 (= (addToMapMapFromBucket!977 lt!1786084 (ListMap!4302 Nil!51562)) lt!1786342)))

(declare-fun b!4627659 () Bool)

(assert (=> b!4627659 (= e!2886709 call!322821)))

(assert (= (and d!1457874 c!792119) b!4627656))

(assert (= (and d!1457874 (not c!792119)) b!4627658))

(assert (= (and b!4627658 res!1940964) b!4627659))

(assert (= (or b!4627656 b!4627658) bm!322817))

(assert (= (or b!4627656 b!4627659) bm!322816))

(assert (= (or b!4627656 b!4627658) bm!322815))

(assert (= (and d!1457874 res!1940966) b!4627655))

(assert (= (and b!4627655 res!1940965) b!4627657))

(declare-fun m!5472009 () Bool)

(assert (=> b!4627655 m!5472009))

(declare-fun m!5472011 () Bool)

(assert (=> bm!322815 m!5472011))

(declare-fun m!5472013 () Bool)

(assert (=> d!1457874 m!5472013))

(assert (=> d!1457874 m!5471925))

(declare-fun m!5472015 () Bool)

(assert (=> b!4627657 m!5472015))

(assert (=> bm!322817 m!5471863))

(declare-fun m!5472017 () Bool)

(assert (=> b!4627658 m!5472017))

(declare-fun m!5472019 () Bool)

(assert (=> b!4627658 m!5472019))

(declare-fun m!5472021 () Bool)

(assert (=> b!4627658 m!5472021))

(declare-fun m!5472023 () Bool)

(assert (=> b!4627658 m!5472023))

(declare-fun m!5472025 () Bool)

(assert (=> b!4627658 m!5472025))

(declare-fun m!5472027 () Bool)

(assert (=> b!4627658 m!5472027))

(declare-fun m!5472029 () Bool)

(assert (=> b!4627658 m!5472029))

(declare-fun m!5472031 () Bool)

(assert (=> b!4627658 m!5472031))

(assert (=> b!4627658 m!5472021))

(declare-fun m!5472033 () Bool)

(assert (=> b!4627658 m!5472033))

(declare-fun m!5472035 () Bool)

(assert (=> b!4627658 m!5472035))

(assert (=> b!4627658 m!5472031))

(declare-fun m!5472037 () Bool)

(assert (=> b!4627658 m!5472037))

(assert (=> b!4627658 m!5472033))

(assert (=> bm!322816 m!5472011))

(assert (=> b!4627439 d!1457874))

(declare-fun d!1457876 () Bool)

(assert (=> d!1457876 (= (eq!831 lt!1786083 (+!1882 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563)) (h!57620 oldBucket!40))) (= (content!8818 (toList!4997 lt!1786083)) (content!8818 (toList!4997 (+!1882 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786084) Nil!51563)) (h!57620 oldBucket!40))))))))

(declare-fun bs!1024809 () Bool)

(assert (= bs!1024809 d!1457876))

(declare-fun m!5472039 () Bool)

(assert (=> bs!1024809 m!5472039))

(declare-fun m!5472041 () Bool)

(assert (=> bs!1024809 m!5472041))

(assert (=> b!4627439 d!1457876))

(declare-fun bs!1024810 () Bool)

(declare-fun b!4627661 () Bool)

(assert (= bs!1024810 (and b!4627661 b!4627656)))

(declare-fun lambda!192680 () Int)

(assert (=> bs!1024810 (= lambda!192680 lambda!192676)))

(declare-fun bs!1024811 () Bool)

(assert (= bs!1024811 (and b!4627661 b!4627653)))

(assert (=> bs!1024811 (= (= (ListMap!4302 Nil!51562) lt!1786320) (= lambda!192680 lambda!192674))))

(declare-fun bs!1024812 () Bool)

(assert (= bs!1024812 (and b!4627661 b!4627651)))

(assert (=> bs!1024812 (= lambda!192680 lambda!192672)))

(declare-fun bs!1024813 () Bool)

(assert (= bs!1024813 (and b!4627661 d!1457796)))

(assert (=> bs!1024813 (not (= lambda!192680 lambda!192615))))

(declare-fun bs!1024814 () Bool)

(assert (= bs!1024814 (and b!4627661 d!1457872)))

(assert (=> bs!1024814 (= (= (ListMap!4302 Nil!51562) lt!1786321) (= lambda!192680 lambda!192675))))

(assert (=> bs!1024811 (= lambda!192680 lambda!192673)))

(declare-fun bs!1024815 () Bool)

(assert (= bs!1024815 (and b!4627661 b!4627599)))

(assert (=> bs!1024815 (= lambda!192680 lambda!192661)))

(declare-fun bs!1024816 () Bool)

(assert (= bs!1024816 (and b!4627661 d!1457874)))

(assert (=> bs!1024816 (= (= (ListMap!4302 Nil!51562) lt!1786342) (= lambda!192680 lambda!192679))))

(declare-fun bs!1024817 () Bool)

(assert (= bs!1024817 (and b!4627661 b!4627658)))

(assert (=> bs!1024817 (= (= (ListMap!4302 Nil!51562) lt!1786341) (= lambda!192680 lambda!192678))))

(assert (=> bs!1024817 (= lambda!192680 lambda!192677)))

(declare-fun bs!1024818 () Bool)

(assert (= bs!1024818 (and b!4627661 d!1457816)))

(assert (=> bs!1024818 (= (= (ListMap!4302 Nil!51562) lt!1786248) (= lambda!192680 lambda!192664))))

(declare-fun bs!1024819 () Bool)

(assert (= bs!1024819 (and b!4627661 b!4627601)))

(assert (=> bs!1024819 (= lambda!192680 lambda!192662)))

(assert (=> bs!1024819 (= (= (ListMap!4302 Nil!51562) lt!1786247) (= lambda!192680 lambda!192663))))

(assert (=> b!4627661 true))

(declare-fun bs!1024820 () Bool)

(declare-fun b!4627663 () Bool)

(assert (= bs!1024820 (and b!4627663 b!4627656)))

(declare-fun lambda!192681 () Int)

(assert (=> bs!1024820 (= lambda!192681 lambda!192676)))

(declare-fun bs!1024821 () Bool)

(assert (= bs!1024821 (and b!4627663 b!4627653)))

(assert (=> bs!1024821 (= (= (ListMap!4302 Nil!51562) lt!1786320) (= lambda!192681 lambda!192674))))

(declare-fun bs!1024822 () Bool)

(assert (= bs!1024822 (and b!4627663 b!4627651)))

(assert (=> bs!1024822 (= lambda!192681 lambda!192672)))

(declare-fun bs!1024823 () Bool)

(assert (= bs!1024823 (and b!4627663 d!1457796)))

(assert (=> bs!1024823 (not (= lambda!192681 lambda!192615))))

(declare-fun bs!1024824 () Bool)

(assert (= bs!1024824 (and b!4627663 d!1457872)))

(assert (=> bs!1024824 (= (= (ListMap!4302 Nil!51562) lt!1786321) (= lambda!192681 lambda!192675))))

(assert (=> bs!1024821 (= lambda!192681 lambda!192673)))

(declare-fun bs!1024825 () Bool)

(assert (= bs!1024825 (and b!4627663 b!4627661)))

(assert (=> bs!1024825 (= lambda!192681 lambda!192680)))

(declare-fun bs!1024826 () Bool)

(assert (= bs!1024826 (and b!4627663 b!4627599)))

(assert (=> bs!1024826 (= lambda!192681 lambda!192661)))

(declare-fun bs!1024827 () Bool)

(assert (= bs!1024827 (and b!4627663 d!1457874)))

(assert (=> bs!1024827 (= (= (ListMap!4302 Nil!51562) lt!1786342) (= lambda!192681 lambda!192679))))

(declare-fun bs!1024828 () Bool)

(assert (= bs!1024828 (and b!4627663 b!4627658)))

(assert (=> bs!1024828 (= (= (ListMap!4302 Nil!51562) lt!1786341) (= lambda!192681 lambda!192678))))

(assert (=> bs!1024828 (= lambda!192681 lambda!192677)))

(declare-fun bs!1024829 () Bool)

(assert (= bs!1024829 (and b!4627663 d!1457816)))

(assert (=> bs!1024829 (= (= (ListMap!4302 Nil!51562) lt!1786248) (= lambda!192681 lambda!192664))))

(declare-fun bs!1024830 () Bool)

(assert (= bs!1024830 (and b!4627663 b!4627601)))

(assert (=> bs!1024830 (= lambda!192681 lambda!192662)))

(assert (=> bs!1024830 (= (= (ListMap!4302 Nil!51562) lt!1786247) (= lambda!192681 lambda!192663))))

(assert (=> b!4627663 true))

(declare-fun lt!1786362 () ListMap!4301)

(declare-fun lambda!192686 () Int)

(assert (=> b!4627663 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192681))))

(assert (=> bs!1024820 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192676))))

(assert (=> bs!1024821 (= (= lt!1786362 lt!1786320) (= lambda!192686 lambda!192674))))

(assert (=> bs!1024822 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192672))))

(assert (=> bs!1024823 (not (= lambda!192686 lambda!192615))))

(assert (=> bs!1024824 (= (= lt!1786362 lt!1786321) (= lambda!192686 lambda!192675))))

(assert (=> bs!1024821 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192673))))

(assert (=> bs!1024825 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192680))))

(assert (=> bs!1024826 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192661))))

(assert (=> bs!1024827 (= (= lt!1786362 lt!1786342) (= lambda!192686 lambda!192679))))

(assert (=> bs!1024828 (= (= lt!1786362 lt!1786341) (= lambda!192686 lambda!192678))))

(assert (=> bs!1024828 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192677))))

(assert (=> bs!1024829 (= (= lt!1786362 lt!1786248) (= lambda!192686 lambda!192664))))

(assert (=> bs!1024830 (= (= lt!1786362 (ListMap!4302 Nil!51562)) (= lambda!192686 lambda!192662))))

(assert (=> bs!1024830 (= (= lt!1786362 lt!1786247) (= lambda!192686 lambda!192663))))

(assert (=> b!4627663 true))

(declare-fun bs!1024831 () Bool)

(declare-fun d!1457878 () Bool)

(assert (= bs!1024831 (and d!1457878 b!4627663)))

(declare-fun lt!1786363 () ListMap!4301)

(declare-fun lambda!192691 () Int)

(assert (=> bs!1024831 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192681))))

(assert (=> bs!1024831 (= (= lt!1786363 lt!1786362) (= lambda!192691 lambda!192686))))

(declare-fun bs!1024832 () Bool)

(assert (= bs!1024832 (and d!1457878 b!4627656)))

(assert (=> bs!1024832 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192676))))

(declare-fun bs!1024833 () Bool)

(assert (= bs!1024833 (and d!1457878 b!4627653)))

(assert (=> bs!1024833 (= (= lt!1786363 lt!1786320) (= lambda!192691 lambda!192674))))

(declare-fun bs!1024834 () Bool)

(assert (= bs!1024834 (and d!1457878 b!4627651)))

(assert (=> bs!1024834 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192672))))

(declare-fun bs!1024835 () Bool)

(assert (= bs!1024835 (and d!1457878 d!1457796)))

(assert (=> bs!1024835 (not (= lambda!192691 lambda!192615))))

(declare-fun bs!1024836 () Bool)

(assert (= bs!1024836 (and d!1457878 d!1457872)))

(assert (=> bs!1024836 (= (= lt!1786363 lt!1786321) (= lambda!192691 lambda!192675))))

(assert (=> bs!1024833 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192673))))

(declare-fun bs!1024837 () Bool)

(assert (= bs!1024837 (and d!1457878 b!4627661)))

(assert (=> bs!1024837 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192680))))

(declare-fun bs!1024838 () Bool)

(assert (= bs!1024838 (and d!1457878 b!4627599)))

(assert (=> bs!1024838 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192661))))

(declare-fun bs!1024839 () Bool)

(assert (= bs!1024839 (and d!1457878 d!1457874)))

(assert (=> bs!1024839 (= (= lt!1786363 lt!1786342) (= lambda!192691 lambda!192679))))

(declare-fun bs!1024840 () Bool)

(assert (= bs!1024840 (and d!1457878 b!4627658)))

(assert (=> bs!1024840 (= (= lt!1786363 lt!1786341) (= lambda!192691 lambda!192678))))

(assert (=> bs!1024840 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192677))))

(declare-fun bs!1024841 () Bool)

(assert (= bs!1024841 (and d!1457878 d!1457816)))

(assert (=> bs!1024841 (= (= lt!1786363 lt!1786248) (= lambda!192691 lambda!192664))))

(declare-fun bs!1024842 () Bool)

(assert (= bs!1024842 (and d!1457878 b!4627601)))

(assert (=> bs!1024842 (= (= lt!1786363 (ListMap!4302 Nil!51562)) (= lambda!192691 lambda!192662))))

(assert (=> bs!1024842 (= (= lt!1786363 lt!1786247) (= lambda!192691 lambda!192663))))

(assert (=> d!1457878 true))

(declare-fun b!4627660 () Bool)

(declare-fun res!1940968 () Bool)

(declare-fun e!2886711 () Bool)

(assert (=> b!4627660 (=> (not res!1940968) (not e!2886711))))

(assert (=> b!4627660 (= res!1940968 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192691))))

(declare-fun e!2886713 () ListMap!4301)

(assert (=> b!4627661 (= e!2886713 (ListMap!4302 Nil!51562))))

(declare-fun lt!1786369 () Unit!112512)

(declare-fun call!322825 () Unit!112512)

(assert (=> b!4627661 (= lt!1786369 call!322825)))

(declare-fun call!322823 () Bool)

(assert (=> b!4627661 call!322823))

(declare-fun lt!1786364 () Unit!112512)

(assert (=> b!4627661 (= lt!1786364 lt!1786369)))

(declare-fun call!322824 () Bool)

(assert (=> b!4627661 call!322824))

(declare-fun lt!1786374 () Unit!112512)

(declare-fun Unit!112563 () Unit!112512)

(assert (=> b!4627661 (= lt!1786374 Unit!112563)))

(declare-fun bm!322818 () Bool)

(declare-fun c!792120 () Bool)

(assert (=> bm!322818 (= call!322823 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792120 lambda!192680 lambda!192686)))))

(declare-fun bm!322819 () Bool)

(assert (=> bm!322819 (= call!322824 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) (ite c!792120 lambda!192680 lambda!192686)))))

(declare-fun bm!322820 () Bool)

(assert (=> bm!322820 (= call!322825 (lemmaContainsAllItsOwnKeys!513 (ListMap!4302 Nil!51562)))))

(declare-fun b!4627662 () Bool)

(assert (=> b!4627662 (= e!2886711 (invariantList!1211 (toList!4997 lt!1786363)))))

(assert (=> b!4627663 (= e!2886713 lt!1786362)))

(declare-fun lt!1786382 () ListMap!4301)

(assert (=> b!4627663 (= lt!1786382 (+!1882 (ListMap!4302 Nil!51562) (h!57620 (Cons!51562 lt!1786093 lt!1786096))))))

(assert (=> b!4627663 (= lt!1786362 (addToMapMapFromBucket!977 (t!358726 (Cons!51562 lt!1786093 lt!1786096)) (+!1882 (ListMap!4302 Nil!51562) (h!57620 (Cons!51562 lt!1786093 lt!1786096)))))))

(declare-fun lt!1786381 () Unit!112512)

(assert (=> b!4627663 (= lt!1786381 call!322825)))

(assert (=> b!4627663 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192681)))

(declare-fun lt!1786368 () Unit!112512)

(assert (=> b!4627663 (= lt!1786368 lt!1786381)))

(assert (=> b!4627663 (forall!10839 (toList!4997 lt!1786382) lambda!192686)))

(declare-fun lt!1786365 () Unit!112512)

(declare-fun Unit!112564 () Unit!112512)

(assert (=> b!4627663 (= lt!1786365 Unit!112564)))

(assert (=> b!4627663 (forall!10839 (t!358726 (Cons!51562 lt!1786093 lt!1786096)) lambda!192686)))

(declare-fun lt!1786380 () Unit!112512)

(declare-fun Unit!112565 () Unit!112512)

(assert (=> b!4627663 (= lt!1786380 Unit!112565)))

(declare-fun lt!1786373 () Unit!112512)

(declare-fun Unit!112566 () Unit!112512)

(assert (=> b!4627663 (= lt!1786373 Unit!112566)))

(declare-fun lt!1786366 () Unit!112512)

(assert (=> b!4627663 (= lt!1786366 (forallContained!3069 (toList!4997 lt!1786382) lambda!192686 (h!57620 (Cons!51562 lt!1786093 lt!1786096))))))

(assert (=> b!4627663 (contains!14623 lt!1786382 (_1!29549 (h!57620 (Cons!51562 lt!1786093 lt!1786096))))))

(declare-fun lt!1786378 () Unit!112512)

(declare-fun Unit!112567 () Unit!112512)

(assert (=> b!4627663 (= lt!1786378 Unit!112567)))

(assert (=> b!4627663 (contains!14623 lt!1786362 (_1!29549 (h!57620 (Cons!51562 lt!1786093 lt!1786096))))))

(declare-fun lt!1786367 () Unit!112512)

(declare-fun Unit!112568 () Unit!112512)

(assert (=> b!4627663 (= lt!1786367 Unit!112568)))

(assert (=> b!4627663 (forall!10839 (Cons!51562 lt!1786093 lt!1786096) lambda!192686)))

(declare-fun lt!1786376 () Unit!112512)

(declare-fun Unit!112569 () Unit!112512)

(assert (=> b!4627663 (= lt!1786376 Unit!112569)))

(assert (=> b!4627663 (forall!10839 (toList!4997 lt!1786382) lambda!192686)))

(declare-fun lt!1786375 () Unit!112512)

(declare-fun Unit!112570 () Unit!112512)

(assert (=> b!4627663 (= lt!1786375 Unit!112570)))

(declare-fun lt!1786379 () Unit!112512)

(declare-fun Unit!112571 () Unit!112512)

(assert (=> b!4627663 (= lt!1786379 Unit!112571)))

(declare-fun lt!1786370 () Unit!112512)

(assert (=> b!4627663 (= lt!1786370 (addForallContainsKeyThenBeforeAdding!512 (ListMap!4302 Nil!51562) lt!1786362 (_1!29549 (h!57620 (Cons!51562 lt!1786093 lt!1786096))) (_2!29549 (h!57620 (Cons!51562 lt!1786093 lt!1786096)))))))

(assert (=> b!4627663 (forall!10839 (toList!4997 (ListMap!4302 Nil!51562)) lambda!192686)))

(declare-fun lt!1786377 () Unit!112512)

(assert (=> b!4627663 (= lt!1786377 lt!1786370)))

(assert (=> b!4627663 call!322823))

(declare-fun lt!1786372 () Unit!112512)

(declare-fun Unit!112572 () Unit!112512)

(assert (=> b!4627663 (= lt!1786372 Unit!112572)))

(declare-fun res!1940967 () Bool)

(assert (=> b!4627663 (= res!1940967 (forall!10839 (Cons!51562 lt!1786093 lt!1786096) lambda!192686))))

(declare-fun e!2886712 () Bool)

(assert (=> b!4627663 (=> (not res!1940967) (not e!2886712))))

(assert (=> b!4627663 e!2886712))

(declare-fun lt!1786371 () Unit!112512)

(declare-fun Unit!112573 () Unit!112512)

(assert (=> b!4627663 (= lt!1786371 Unit!112573)))

(assert (=> d!1457878 e!2886711))

(declare-fun res!1940969 () Bool)

(assert (=> d!1457878 (=> (not res!1940969) (not e!2886711))))

(assert (=> d!1457878 (= res!1940969 (forall!10839 (Cons!51562 lt!1786093 lt!1786096) lambda!192691))))

(assert (=> d!1457878 (= lt!1786363 e!2886713)))

(assert (=> d!1457878 (= c!792120 ((_ is Nil!51562) (Cons!51562 lt!1786093 lt!1786096)))))

(assert (=> d!1457878 (noDuplicateKeys!1516 (Cons!51562 lt!1786093 lt!1786096))))

(assert (=> d!1457878 (= (addToMapMapFromBucket!977 (Cons!51562 lt!1786093 lt!1786096) (ListMap!4302 Nil!51562)) lt!1786363)))

(declare-fun b!4627664 () Bool)

(assert (=> b!4627664 (= e!2886712 call!322824)))

(assert (= (and d!1457878 c!792120) b!4627661))

(assert (= (and d!1457878 (not c!792120)) b!4627663))

(assert (= (and b!4627663 res!1940967) b!4627664))

(assert (= (or b!4627661 b!4627663) bm!322820))

(assert (= (or b!4627661 b!4627664) bm!322819))

(assert (= (or b!4627661 b!4627663) bm!322818))

(assert (= (and d!1457878 res!1940969) b!4627660))

(assert (= (and b!4627660 res!1940968) b!4627662))

(declare-fun m!5472043 () Bool)

(assert (=> b!4627660 m!5472043))

(declare-fun m!5472045 () Bool)

(assert (=> bm!322818 m!5472045))

(declare-fun m!5472047 () Bool)

(assert (=> d!1457878 m!5472047))

(declare-fun m!5472049 () Bool)

(assert (=> d!1457878 m!5472049))

(declare-fun m!5472051 () Bool)

(assert (=> b!4627662 m!5472051))

(assert (=> bm!322820 m!5471863))

(declare-fun m!5472053 () Bool)

(assert (=> b!4627663 m!5472053))

(declare-fun m!5472055 () Bool)

(assert (=> b!4627663 m!5472055))

(declare-fun m!5472057 () Bool)

(assert (=> b!4627663 m!5472057))

(declare-fun m!5472059 () Bool)

(assert (=> b!4627663 m!5472059))

(declare-fun m!5472061 () Bool)

(assert (=> b!4627663 m!5472061))

(declare-fun m!5472063 () Bool)

(assert (=> b!4627663 m!5472063))

(declare-fun m!5472065 () Bool)

(assert (=> b!4627663 m!5472065))

(declare-fun m!5472067 () Bool)

(assert (=> b!4627663 m!5472067))

(assert (=> b!4627663 m!5472057))

(declare-fun m!5472069 () Bool)

(assert (=> b!4627663 m!5472069))

(declare-fun m!5472071 () Bool)

(assert (=> b!4627663 m!5472071))

(assert (=> b!4627663 m!5472067))

(declare-fun m!5472073 () Bool)

(assert (=> b!4627663 m!5472073))

(assert (=> b!4627663 m!5472069))

(assert (=> bm!322819 m!5472045))

(assert (=> b!4627439 d!1457878))

(declare-fun d!1457880 () Bool)

(declare-fun hash!3528 (Hashable!5913 K!12940) (_ BitVec 64))

(assert (=> d!1457880 (= (hash!3525 hashF!1389 key!4968) (hash!3528 hashF!1389 key!4968))))

(declare-fun bs!1024843 () Bool)

(assert (= bs!1024843 d!1457880))

(declare-fun m!5472075 () Bool)

(assert (=> bs!1024843 m!5472075))

(assert (=> b!4627438 d!1457880))

(declare-fun d!1457882 () Bool)

(assert (=> d!1457882 (= (eq!831 lt!1786081 (+!1882 lt!1786082 lt!1786093)) (= (content!8818 (toList!4997 lt!1786081)) (content!8818 (toList!4997 (+!1882 lt!1786082 lt!1786093)))))))

(declare-fun bs!1024844 () Bool)

(assert (= bs!1024844 d!1457882))

(declare-fun m!5472077 () Bool)

(assert (=> bs!1024844 m!5472077))

(declare-fun m!5472079 () Bool)

(assert (=> bs!1024844 m!5472079))

(assert (=> b!4627424 d!1457882))

(declare-fun d!1457884 () Bool)

(declare-fun e!2886716 () Bool)

(assert (=> d!1457884 e!2886716))

(declare-fun res!1940970 () Bool)

(assert (=> d!1457884 (=> (not res!1940970) (not e!2886716))))

(declare-fun lt!1786423 () ListMap!4301)

(assert (=> d!1457884 (= res!1940970 (contains!14623 lt!1786423 (_1!29549 lt!1786093)))))

(declare-fun lt!1786421 () List!51686)

(assert (=> d!1457884 (= lt!1786423 (ListMap!4302 lt!1786421))))

(declare-fun lt!1786424 () Unit!112512)

(declare-fun lt!1786422 () Unit!112512)

(assert (=> d!1457884 (= lt!1786424 lt!1786422)))

(assert (=> d!1457884 (= (getValueByKey!1466 lt!1786421 (_1!29549 lt!1786093)) (Some!11615 (_2!29549 lt!1786093)))))

(assert (=> d!1457884 (= lt!1786422 (lemmaContainsTupThenGetReturnValue!855 lt!1786421 (_1!29549 lt!1786093) (_2!29549 lt!1786093)))))

(assert (=> d!1457884 (= lt!1786421 (insertNoDuplicatedKeys!363 (toList!4997 lt!1786082) (_1!29549 lt!1786093) (_2!29549 lt!1786093)))))

(assert (=> d!1457884 (= (+!1882 lt!1786082 lt!1786093) lt!1786423)))

(declare-fun b!4627669 () Bool)

(declare-fun res!1940971 () Bool)

(assert (=> b!4627669 (=> (not res!1940971) (not e!2886716))))

(assert (=> b!4627669 (= res!1940971 (= (getValueByKey!1466 (toList!4997 lt!1786423) (_1!29549 lt!1786093)) (Some!11615 (_2!29549 lt!1786093))))))

(declare-fun b!4627670 () Bool)

(assert (=> b!4627670 (= e!2886716 (contains!14626 (toList!4997 lt!1786423) lt!1786093))))

(assert (= (and d!1457884 res!1940970) b!4627669))

(assert (= (and b!4627669 res!1940971) b!4627670))

(declare-fun m!5472081 () Bool)

(assert (=> d!1457884 m!5472081))

(declare-fun m!5472083 () Bool)

(assert (=> d!1457884 m!5472083))

(declare-fun m!5472085 () Bool)

(assert (=> d!1457884 m!5472085))

(declare-fun m!5472087 () Bool)

(assert (=> d!1457884 m!5472087))

(declare-fun m!5472089 () Bool)

(assert (=> b!4627669 m!5472089))

(declare-fun m!5472091 () Bool)

(assert (=> b!4627670 m!5472091))

(assert (=> b!4627424 d!1457884))

(declare-fun bs!1024845 () Bool)

(declare-fun d!1457886 () Bool)

(assert (= bs!1024845 (and d!1457886 b!4627440)))

(declare-fun lambda!192702 () Int)

(assert (=> bs!1024845 (= lambda!192702 lambda!192612)))

(declare-fun bs!1024846 () Bool)

(assert (= bs!1024846 (and d!1457886 d!1457858)))

(assert (=> bs!1024846 (= lambda!192702 lambda!192667)))

(declare-fun bs!1024847 () Bool)

(assert (= bs!1024847 (and d!1457886 d!1457862)))

(assert (=> bs!1024847 (= lambda!192702 lambda!192668)))

(declare-fun bs!1024848 () Bool)

(assert (= bs!1024848 (and d!1457886 d!1457868)))

(assert (=> bs!1024848 (= lambda!192702 lambda!192671)))

(declare-fun lt!1786427 () ListMap!4301)

(assert (=> d!1457886 (invariantList!1211 (toList!4997 lt!1786427))))

(declare-fun e!2886717 () ListMap!4301)

(assert (=> d!1457886 (= lt!1786427 e!2886717)))

(declare-fun c!792123 () Bool)

(assert (=> d!1457886 (= c!792123 ((_ is Cons!51563) (Cons!51563 (tuple2!52513 hash!414 lt!1786096) Nil!51563)))))

(assert (=> d!1457886 (forall!10838 (Cons!51563 (tuple2!52513 hash!414 lt!1786096) Nil!51563) lambda!192702)))

(assert (=> d!1457886 (= (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786096) Nil!51563)) lt!1786427)))

(declare-fun b!4627671 () Bool)

(assert (=> b!4627671 (= e!2886717 (addToMapMapFromBucket!977 (_2!29550 (h!57621 (Cons!51563 (tuple2!52513 hash!414 lt!1786096) Nil!51563))) (extractMap!1572 (t!358727 (Cons!51563 (tuple2!52513 hash!414 lt!1786096) Nil!51563)))))))

(declare-fun b!4627672 () Bool)

(assert (=> b!4627672 (= e!2886717 (ListMap!4302 Nil!51562))))

(assert (= (and d!1457886 c!792123) b!4627671))

(assert (= (and d!1457886 (not c!792123)) b!4627672))

(declare-fun m!5472093 () Bool)

(assert (=> d!1457886 m!5472093))

(declare-fun m!5472095 () Bool)

(assert (=> d!1457886 m!5472095))

(declare-fun m!5472097 () Bool)

(assert (=> b!4627671 m!5472097))

(assert (=> b!4627671 m!5472097))

(declare-fun m!5472099 () Bool)

(assert (=> b!4627671 m!5472099))

(assert (=> b!4627424 d!1457886))

(declare-fun bs!1024849 () Bool)

(declare-fun d!1457888 () Bool)

(assert (= bs!1024849 (and d!1457888 d!1457868)))

(declare-fun lambda!192707 () Int)

(assert (=> bs!1024849 (= lambda!192707 lambda!192671)))

(declare-fun bs!1024850 () Bool)

(assert (= bs!1024850 (and d!1457888 d!1457886)))

(assert (=> bs!1024850 (= lambda!192707 lambda!192702)))

(declare-fun bs!1024851 () Bool)

(assert (= bs!1024851 (and d!1457888 d!1457862)))

(assert (=> bs!1024851 (= lambda!192707 lambda!192668)))

(declare-fun bs!1024852 () Bool)

(assert (= bs!1024852 (and d!1457888 b!4627440)))

(assert (=> bs!1024852 (= lambda!192707 lambda!192612)))

(declare-fun bs!1024853 () Bool)

(assert (= bs!1024853 (and d!1457888 d!1457858)))

(assert (=> bs!1024853 (= lambda!192707 lambda!192667)))

(declare-fun lt!1786430 () ListMap!4301)

(assert (=> d!1457888 (invariantList!1211 (toList!4997 lt!1786430))))

(declare-fun e!2886720 () ListMap!4301)

(assert (=> d!1457888 (= lt!1786430 e!2886720)))

(declare-fun c!792124 () Bool)

(assert (=> d!1457888 (= c!792124 ((_ is Cons!51563) (Cons!51563 (tuple2!52513 hash!414 newBucket!224) Nil!51563)))))

(assert (=> d!1457888 (forall!10838 (Cons!51563 (tuple2!52513 hash!414 newBucket!224) Nil!51563) lambda!192707)))

(assert (=> d!1457888 (= (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 newBucket!224) Nil!51563)) lt!1786430)))

(declare-fun b!4627673 () Bool)

(assert (=> b!4627673 (= e!2886720 (addToMapMapFromBucket!977 (_2!29550 (h!57621 (Cons!51563 (tuple2!52513 hash!414 newBucket!224) Nil!51563))) (extractMap!1572 (t!358727 (Cons!51563 (tuple2!52513 hash!414 newBucket!224) Nil!51563)))))))

(declare-fun b!4627674 () Bool)

(assert (=> b!4627674 (= e!2886720 (ListMap!4302 Nil!51562))))

(assert (= (and d!1457888 c!792124) b!4627673))

(assert (= (and d!1457888 (not c!792124)) b!4627674))

(declare-fun m!5472101 () Bool)

(assert (=> d!1457888 m!5472101))

(declare-fun m!5472103 () Bool)

(assert (=> d!1457888 m!5472103))

(declare-fun m!5472105 () Bool)

(assert (=> b!4627673 m!5472105))

(assert (=> b!4627673 m!5472105))

(declare-fun m!5472107 () Bool)

(assert (=> b!4627673 m!5472107))

(assert (=> b!4627424 d!1457888))

(declare-fun bs!1024854 () Bool)

(declare-fun d!1457890 () Bool)

(assert (= bs!1024854 (and d!1457890 b!4627663)))

(declare-fun lambda!192710 () Int)

(assert (=> bs!1024854 (not (= lambda!192710 lambda!192681))))

(assert (=> bs!1024854 (not (= lambda!192710 lambda!192686))))

(declare-fun bs!1024855 () Bool)

(assert (= bs!1024855 (and d!1457890 b!4627656)))

(assert (=> bs!1024855 (not (= lambda!192710 lambda!192676))))

(declare-fun bs!1024856 () Bool)

(assert (= bs!1024856 (and d!1457890 b!4627653)))

(assert (=> bs!1024856 (not (= lambda!192710 lambda!192674))))

(declare-fun bs!1024857 () Bool)

(assert (= bs!1024857 (and d!1457890 b!4627651)))

(assert (=> bs!1024857 (not (= lambda!192710 lambda!192672))))

(declare-fun bs!1024858 () Bool)

(assert (= bs!1024858 (and d!1457890 d!1457796)))

(assert (=> bs!1024858 (= lambda!192710 lambda!192615)))

(assert (=> bs!1024856 (not (= lambda!192710 lambda!192673))))

(declare-fun bs!1024859 () Bool)

(assert (= bs!1024859 (and d!1457890 b!4627661)))

(assert (=> bs!1024859 (not (= lambda!192710 lambda!192680))))

(declare-fun bs!1024860 () Bool)

(assert (= bs!1024860 (and d!1457890 b!4627599)))

(assert (=> bs!1024860 (not (= lambda!192710 lambda!192661))))

(declare-fun bs!1024861 () Bool)

(assert (= bs!1024861 (and d!1457890 d!1457874)))

(assert (=> bs!1024861 (not (= lambda!192710 lambda!192679))))

(declare-fun bs!1024862 () Bool)

(assert (= bs!1024862 (and d!1457890 b!4627658)))

(assert (=> bs!1024862 (not (= lambda!192710 lambda!192678))))

(assert (=> bs!1024862 (not (= lambda!192710 lambda!192677))))

(declare-fun bs!1024863 () Bool)

(assert (= bs!1024863 (and d!1457890 d!1457816)))

(assert (=> bs!1024863 (not (= lambda!192710 lambda!192664))))

(declare-fun bs!1024864 () Bool)

(assert (= bs!1024864 (and d!1457890 b!4627601)))

(assert (=> bs!1024864 (not (= lambda!192710 lambda!192662))))

(assert (=> bs!1024864 (not (= lambda!192710 lambda!192663))))

(declare-fun bs!1024865 () Bool)

(assert (= bs!1024865 (and d!1457890 d!1457878)))

(assert (=> bs!1024865 (not (= lambda!192710 lambda!192691))))

(declare-fun bs!1024866 () Bool)

(assert (= bs!1024866 (and d!1457890 d!1457872)))

(assert (=> bs!1024866 (not (= lambda!192710 lambda!192675))))

(assert (=> d!1457890 true))

(assert (=> d!1457890 true))

(assert (=> d!1457890 (= (allKeysSameHash!1370 oldBucket!40 hash!414 hashF!1389) (forall!10839 oldBucket!40 lambda!192710))))

(declare-fun bs!1024867 () Bool)

(assert (= bs!1024867 d!1457890))

(declare-fun m!5472109 () Bool)

(assert (=> bs!1024867 m!5472109))

(assert (=> b!4627435 d!1457890))

(declare-fun d!1457892 () Bool)

(declare-fun lt!1786433 () List!51686)

(assert (=> d!1457892 (not (containsKey!2472 lt!1786433 key!4968))))

(declare-fun e!2886728 () List!51686)

(assert (=> d!1457892 (= lt!1786433 e!2886728)))

(declare-fun c!792130 () Bool)

(assert (=> d!1457892 (= c!792130 (and ((_ is Cons!51562) (t!358726 oldBucket!40)) (= (_1!29549 (h!57620 (t!358726 oldBucket!40))) key!4968)))))

(assert (=> d!1457892 (noDuplicateKeys!1516 (t!358726 oldBucket!40))))

(assert (=> d!1457892 (= (removePairForKey!1139 (t!358726 oldBucket!40) key!4968) lt!1786433)))

(declare-fun b!4627689 () Bool)

(assert (=> b!4627689 (= e!2886728 (t!358726 (t!358726 oldBucket!40)))))

(declare-fun b!4627690 () Bool)

(declare-fun e!2886727 () List!51686)

(assert (=> b!4627690 (= e!2886728 e!2886727)))

(declare-fun c!792129 () Bool)

(assert (=> b!4627690 (= c!792129 ((_ is Cons!51562) (t!358726 oldBucket!40)))))

(declare-fun b!4627692 () Bool)

(assert (=> b!4627692 (= e!2886727 Nil!51562)))

(declare-fun b!4627691 () Bool)

(assert (=> b!4627691 (= e!2886727 (Cons!51562 (h!57620 (t!358726 oldBucket!40)) (removePairForKey!1139 (t!358726 (t!358726 oldBucket!40)) key!4968)))))

(assert (= (and d!1457892 c!792130) b!4627689))

(assert (= (and d!1457892 (not c!792130)) b!4627690))

(assert (= (and b!4627690 c!792129) b!4627691))

(assert (= (and b!4627690 (not c!792129)) b!4627692))

(declare-fun m!5472111 () Bool)

(assert (=> d!1457892 m!5472111))

(assert (=> d!1457892 m!5471689))

(declare-fun m!5472113 () Bool)

(assert (=> b!4627691 m!5472113))

(assert (=> b!4627434 d!1457892))

(declare-fun d!1457894 () Bool)

(assert (=> d!1457894 (eq!831 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 lt!1786096) Nil!51563)) (-!556 (extractMap!1572 (Cons!51563 (tuple2!52513 hash!414 (t!358726 oldBucket!40)) Nil!51563)) key!4968))))

(declare-fun lt!1786458 () Unit!112512)

(declare-fun choose!31378 ((_ BitVec 64) List!51686 List!51686 K!12940 Hashable!5913) Unit!112512)

(assert (=> d!1457894 (= lt!1786458 (choose!31378 hash!414 (t!358726 oldBucket!40) lt!1786096 key!4968 hashF!1389))))

(assert (=> d!1457894 (noDuplicateKeys!1516 (t!358726 oldBucket!40))))

(assert (=> d!1457894 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!118 hash!414 (t!358726 oldBucket!40) lt!1786096 key!4968 hashF!1389) lt!1786458)))

(declare-fun bs!1024881 () Bool)

(assert (= bs!1024881 d!1457894))

(assert (=> bs!1024881 m!5471679))

(declare-fun m!5472155 () Bool)

(assert (=> bs!1024881 m!5472155))

(declare-fun m!5472157 () Bool)

(assert (=> bs!1024881 m!5472157))

(assert (=> bs!1024881 m!5471689))

(declare-fun m!5472159 () Bool)

(assert (=> bs!1024881 m!5472159))

(assert (=> bs!1024881 m!5472155))

(assert (=> bs!1024881 m!5471679))

(declare-fun m!5472161 () Bool)

(assert (=> bs!1024881 m!5472161))

(assert (=> bs!1024881 m!5472159))

(assert (=> b!4627436 d!1457894))

(declare-fun d!1457900 () Bool)

(declare-fun e!2886733 () Bool)

(assert (=> d!1457900 e!2886733))

(declare-fun res!1940981 () Bool)

(assert (=> d!1457900 (=> (not res!1940981) (not e!2886733))))

(declare-fun lt!1786461 () ListMap!4301)

(assert (=> d!1457900 (= res!1940981 (contains!14623 lt!1786461 (_1!29549 (h!57620 oldBucket!40))))))

(declare-fun lt!1786459 () List!51686)

(assert (=> d!1457900 (= lt!1786461 (ListMap!4302 lt!1786459))))

(declare-fun lt!1786462 () Unit!112512)

(declare-fun lt!1786460 () Unit!112512)

(assert (=> d!1457900 (= lt!1786462 lt!1786460)))

(assert (=> d!1457900 (= (getValueByKey!1466 lt!1786459 (_1!29549 (h!57620 oldBucket!40))) (Some!11615 (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457900 (= lt!1786460 (lemmaContainsTupThenGetReturnValue!855 lt!1786459 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457900 (= lt!1786459 (insertNoDuplicatedKeys!363 (toList!4997 lt!1786103) (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457900 (= (+!1882 lt!1786103 (h!57620 oldBucket!40)) lt!1786461)))

(declare-fun b!4627702 () Bool)

(declare-fun res!1940982 () Bool)

(assert (=> b!4627702 (=> (not res!1940982) (not e!2886733))))

(assert (=> b!4627702 (= res!1940982 (= (getValueByKey!1466 (toList!4997 lt!1786461) (_1!29549 (h!57620 oldBucket!40))) (Some!11615 (_2!29549 (h!57620 oldBucket!40)))))))

(declare-fun b!4627703 () Bool)

(assert (=> b!4627703 (= e!2886733 (contains!14626 (toList!4997 lt!1786461) (h!57620 oldBucket!40)))))

(assert (= (and d!1457900 res!1940981) b!4627702))

(assert (= (and b!4627702 res!1940982) b!4627703))

(declare-fun m!5472163 () Bool)

(assert (=> d!1457900 m!5472163))

(declare-fun m!5472165 () Bool)

(assert (=> d!1457900 m!5472165))

(declare-fun m!5472167 () Bool)

(assert (=> d!1457900 m!5472167))

(declare-fun m!5472169 () Bool)

(assert (=> d!1457900 m!5472169))

(declare-fun m!5472171 () Bool)

(assert (=> b!4627702 m!5472171))

(declare-fun m!5472173 () Bool)

(assert (=> b!4627703 m!5472173))

(assert (=> b!4627436 d!1457900))

(declare-fun d!1457902 () Bool)

(declare-fun e!2886734 () Bool)

(assert (=> d!1457902 e!2886734))

(declare-fun res!1940983 () Bool)

(assert (=> d!1457902 (=> (not res!1940983) (not e!2886734))))

(declare-fun lt!1786465 () ListMap!4301)

(assert (=> d!1457902 (= res!1940983 (contains!14623 lt!1786465 (_1!29549 (h!57620 oldBucket!40))))))

(declare-fun lt!1786463 () List!51686)

(assert (=> d!1457902 (= lt!1786465 (ListMap!4302 lt!1786463))))

(declare-fun lt!1786466 () Unit!112512)

(declare-fun lt!1786464 () Unit!112512)

(assert (=> d!1457902 (= lt!1786466 lt!1786464)))

(assert (=> d!1457902 (= (getValueByKey!1466 lt!1786463 (_1!29549 (h!57620 oldBucket!40))) (Some!11615 (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457902 (= lt!1786464 (lemmaContainsTupThenGetReturnValue!855 lt!1786463 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457902 (= lt!1786463 (insertNoDuplicatedKeys!363 (toList!4997 lt!1786090) (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> d!1457902 (= (+!1882 lt!1786090 (h!57620 oldBucket!40)) lt!1786465)))

(declare-fun b!4627704 () Bool)

(declare-fun res!1940984 () Bool)

(assert (=> b!4627704 (=> (not res!1940984) (not e!2886734))))

(assert (=> b!4627704 (= res!1940984 (= (getValueByKey!1466 (toList!4997 lt!1786465) (_1!29549 (h!57620 oldBucket!40))) (Some!11615 (_2!29549 (h!57620 oldBucket!40)))))))

(declare-fun b!4627705 () Bool)

(assert (=> b!4627705 (= e!2886734 (contains!14626 (toList!4997 lt!1786465) (h!57620 oldBucket!40)))))

(assert (= (and d!1457902 res!1940983) b!4627704))

(assert (= (and b!4627704 res!1940984) b!4627705))

(declare-fun m!5472175 () Bool)

(assert (=> d!1457902 m!5472175))

(declare-fun m!5472177 () Bool)

(assert (=> d!1457902 m!5472177))

(declare-fun m!5472179 () Bool)

(assert (=> d!1457902 m!5472179))

(declare-fun m!5472181 () Bool)

(assert (=> d!1457902 m!5472181))

(declare-fun m!5472183 () Bool)

(assert (=> b!4627704 m!5472183))

(declare-fun m!5472185 () Bool)

(assert (=> b!4627705 m!5472185))

(assert (=> b!4627436 d!1457902))

(declare-fun d!1457904 () Bool)

(assert (=> d!1457904 (= (-!556 (+!1882 lt!1786090 (tuple2!52511 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40)))) key!4968) (+!1882 (-!556 lt!1786090 key!4968) (tuple2!52511 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40)))))))

(declare-fun lt!1786473 () Unit!112512)

(declare-fun choose!31379 (ListMap!4301 K!12940 V!13186 K!12940) Unit!112512)

(assert (=> d!1457904 (= lt!1786473 (choose!31379 lt!1786090 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40)) key!4968))))

(assert (=> d!1457904 (not (= (_1!29549 (h!57620 oldBucket!40)) key!4968))))

(assert (=> d!1457904 (= (addRemoveCommutativeForDiffKeys!11 lt!1786090 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40)) key!4968) lt!1786473)))

(declare-fun bs!1024882 () Bool)

(assert (= bs!1024882 d!1457904))

(declare-fun m!5472213 () Bool)

(assert (=> bs!1024882 m!5472213))

(assert (=> bs!1024882 m!5471673))

(declare-fun m!5472215 () Bool)

(assert (=> bs!1024882 m!5472215))

(declare-fun m!5472217 () Bool)

(assert (=> bs!1024882 m!5472217))

(declare-fun m!5472219 () Bool)

(assert (=> bs!1024882 m!5472219))

(assert (=> bs!1024882 m!5471673))

(assert (=> bs!1024882 m!5472217))

(assert (=> b!4627436 d!1457904))

(declare-fun d!1457910 () Bool)

(assert (=> d!1457910 (= (eq!831 lt!1786082 lt!1786103) (= (content!8818 (toList!4997 lt!1786082)) (content!8818 (toList!4997 lt!1786103))))))

(declare-fun bs!1024883 () Bool)

(assert (= bs!1024883 d!1457910))

(declare-fun m!5472221 () Bool)

(assert (=> bs!1024883 m!5472221))

(declare-fun m!5472223 () Bool)

(assert (=> bs!1024883 m!5472223))

(assert (=> b!4627436 d!1457910))

(declare-fun d!1457912 () Bool)

(declare-fun e!2886739 () Bool)

(assert (=> d!1457912 e!2886739))

(declare-fun res!1940989 () Bool)

(assert (=> d!1457912 (=> (not res!1940989) (not e!2886739))))

(declare-fun lt!1786474 () ListMap!4301)

(assert (=> d!1457912 (= res!1940989 (not (contains!14623 lt!1786474 key!4968)))))

(assert (=> d!1457912 (= lt!1786474 (ListMap!4302 (removePresrvNoDuplicatedKeys!260 (toList!4997 lt!1786107) key!4968)))))

(assert (=> d!1457912 (= (-!556 lt!1786107 key!4968) lt!1786474)))

(declare-fun b!4627710 () Bool)

(assert (=> b!4627710 (= e!2886739 (= ((_ map and) (content!8819 (keys!18171 lt!1786107)) ((_ map not) (store ((as const (Array K!12940 Bool)) false) key!4968 true))) (content!8819 (keys!18171 lt!1786474))))))

(assert (= (and d!1457912 res!1940989) b!4627710))

(declare-fun m!5472225 () Bool)

(assert (=> d!1457912 m!5472225))

(declare-fun m!5472227 () Bool)

(assert (=> d!1457912 m!5472227))

(declare-fun m!5472229 () Bool)

(assert (=> b!4627710 m!5472229))

(declare-fun m!5472231 () Bool)

(assert (=> b!4627710 m!5472231))

(assert (=> b!4627710 m!5472229))

(declare-fun m!5472233 () Bool)

(assert (=> b!4627710 m!5472233))

(assert (=> b!4627710 m!5472231))

(declare-fun m!5472235 () Bool)

(assert (=> b!4627710 m!5472235))

(assert (=> b!4627710 m!5471711))

(assert (=> b!4627436 d!1457912))

(declare-fun d!1457914 () Bool)

(declare-fun e!2886740 () Bool)

(assert (=> d!1457914 e!2886740))

(declare-fun res!1940990 () Bool)

(assert (=> d!1457914 (=> (not res!1940990) (not e!2886740))))

(declare-fun lt!1786475 () ListMap!4301)

(assert (=> d!1457914 (= res!1940990 (not (contains!14623 lt!1786475 key!4968)))))

(assert (=> d!1457914 (= lt!1786475 (ListMap!4302 (removePresrvNoDuplicatedKeys!260 (toList!4997 lt!1786090) key!4968)))))

(assert (=> d!1457914 (= (-!556 lt!1786090 key!4968) lt!1786475)))

(declare-fun b!4627711 () Bool)

(assert (=> b!4627711 (= e!2886740 (= ((_ map and) (content!8819 (keys!18171 lt!1786090)) ((_ map not) (store ((as const (Array K!12940 Bool)) false) key!4968 true))) (content!8819 (keys!18171 lt!1786475))))))

(assert (= (and d!1457914 res!1940990) b!4627711))

(declare-fun m!5472237 () Bool)

(assert (=> d!1457914 m!5472237))

(declare-fun m!5472239 () Bool)

(assert (=> d!1457914 m!5472239))

(declare-fun m!5472241 () Bool)

(assert (=> b!4627711 m!5472241))

(assert (=> b!4627711 m!5471955))

(assert (=> b!4627711 m!5472241))

(declare-fun m!5472243 () Bool)

(assert (=> b!4627711 m!5472243))

(assert (=> b!4627711 m!5471955))

(declare-fun m!5472245 () Bool)

(assert (=> b!4627711 m!5472245))

(assert (=> b!4627711 m!5471711))

(assert (=> b!4627436 d!1457914))

(declare-fun d!1457916 () Bool)

(declare-fun e!2886741 () Bool)

(assert (=> d!1457916 e!2886741))

(declare-fun res!1940991 () Bool)

(assert (=> d!1457916 (=> (not res!1940991) (not e!2886741))))

(declare-fun lt!1786476 () ListMap!4301)

(assert (=> d!1457916 (= res!1940991 (not (contains!14623 lt!1786476 key!4968)))))

(assert (=> d!1457916 (= lt!1786476 (ListMap!4302 (removePresrvNoDuplicatedKeys!260 (toList!4997 (+!1882 lt!1786090 (h!57620 oldBucket!40))) key!4968)))))

(assert (=> d!1457916 (= (-!556 (+!1882 lt!1786090 (h!57620 oldBucket!40)) key!4968) lt!1786476)))

(declare-fun b!4627712 () Bool)

(assert (=> b!4627712 (= e!2886741 (= ((_ map and) (content!8819 (keys!18171 (+!1882 lt!1786090 (h!57620 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12940 Bool)) false) key!4968 true))) (content!8819 (keys!18171 lt!1786476))))))

(assert (= (and d!1457916 res!1940991) b!4627712))

(declare-fun m!5472247 () Bool)

(assert (=> d!1457916 m!5472247))

(declare-fun m!5472249 () Bool)

(assert (=> d!1457916 m!5472249))

(declare-fun m!5472251 () Bool)

(assert (=> b!4627712 m!5472251))

(assert (=> b!4627712 m!5471659))

(declare-fun m!5472253 () Bool)

(assert (=> b!4627712 m!5472253))

(assert (=> b!4627712 m!5472251))

(declare-fun m!5472255 () Bool)

(assert (=> b!4627712 m!5472255))

(assert (=> b!4627712 m!5472253))

(declare-fun m!5472257 () Bool)

(assert (=> b!4627712 m!5472257))

(assert (=> b!4627712 m!5471711))

(assert (=> b!4627436 d!1457916))

(declare-fun d!1457918 () Bool)

(declare-fun res!1940992 () Bool)

(declare-fun e!2886742 () Bool)

(assert (=> d!1457918 (=> res!1940992 e!2886742)))

(assert (=> d!1457918 (= res!1940992 (not ((_ is Cons!51562) newBucket!224)))))

(assert (=> d!1457918 (= (noDuplicateKeys!1516 newBucket!224) e!2886742)))

(declare-fun b!4627713 () Bool)

(declare-fun e!2886743 () Bool)

(assert (=> b!4627713 (= e!2886742 e!2886743)))

(declare-fun res!1940993 () Bool)

(assert (=> b!4627713 (=> (not res!1940993) (not e!2886743))))

(assert (=> b!4627713 (= res!1940993 (not (containsKey!2472 (t!358726 newBucket!224) (_1!29549 (h!57620 newBucket!224)))))))

(declare-fun b!4627714 () Bool)

(assert (=> b!4627714 (= e!2886743 (noDuplicateKeys!1516 (t!358726 newBucket!224)))))

(assert (= (and d!1457918 (not res!1940992)) b!4627713))

(assert (= (and b!4627713 res!1940993) b!4627714))

(declare-fun m!5472259 () Bool)

(assert (=> b!4627713 m!5472259))

(declare-fun m!5472261 () Bool)

(assert (=> b!4627714 m!5472261))

(assert (=> b!4627432 d!1457918))

(declare-fun bs!1024884 () Bool)

(declare-fun b!4627716 () Bool)

(assert (= bs!1024884 (and b!4627716 b!4627663)))

(declare-fun lambda!192720 () Int)

(assert (=> bs!1024884 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192681))))

(assert (=> bs!1024884 (= (= lt!1786091 lt!1786362) (= lambda!192720 lambda!192686))))

(declare-fun bs!1024885 () Bool)

(assert (= bs!1024885 (and b!4627716 b!4627656)))

(assert (=> bs!1024885 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192676))))

(declare-fun bs!1024886 () Bool)

(assert (= bs!1024886 (and b!4627716 b!4627653)))

(assert (=> bs!1024886 (= (= lt!1786091 lt!1786320) (= lambda!192720 lambda!192674))))

(declare-fun bs!1024887 () Bool)

(assert (= bs!1024887 (and b!4627716 d!1457890)))

(assert (=> bs!1024887 (not (= lambda!192720 lambda!192710))))

(declare-fun bs!1024888 () Bool)

(assert (= bs!1024888 (and b!4627716 b!4627651)))

(assert (=> bs!1024888 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192672))))

(declare-fun bs!1024889 () Bool)

(assert (= bs!1024889 (and b!4627716 d!1457796)))

(assert (=> bs!1024889 (not (= lambda!192720 lambda!192615))))

(assert (=> bs!1024886 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192673))))

(declare-fun bs!1024890 () Bool)

(assert (= bs!1024890 (and b!4627716 b!4627661)))

(assert (=> bs!1024890 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192680))))

(declare-fun bs!1024891 () Bool)

(assert (= bs!1024891 (and b!4627716 b!4627599)))

(assert (=> bs!1024891 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192661))))

(declare-fun bs!1024892 () Bool)

(assert (= bs!1024892 (and b!4627716 d!1457874)))

(assert (=> bs!1024892 (= (= lt!1786091 lt!1786342) (= lambda!192720 lambda!192679))))

(declare-fun bs!1024893 () Bool)

(assert (= bs!1024893 (and b!4627716 b!4627658)))

(assert (=> bs!1024893 (= (= lt!1786091 lt!1786341) (= lambda!192720 lambda!192678))))

(assert (=> bs!1024893 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192677))))

(declare-fun bs!1024894 () Bool)

(assert (= bs!1024894 (and b!4627716 d!1457816)))

(assert (=> bs!1024894 (= (= lt!1786091 lt!1786248) (= lambda!192720 lambda!192664))))

(declare-fun bs!1024895 () Bool)

(assert (= bs!1024895 (and b!4627716 b!4627601)))

(assert (=> bs!1024895 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192720 lambda!192662))))

(assert (=> bs!1024895 (= (= lt!1786091 lt!1786247) (= lambda!192720 lambda!192663))))

(declare-fun bs!1024896 () Bool)

(assert (= bs!1024896 (and b!4627716 d!1457878)))

(assert (=> bs!1024896 (= (= lt!1786091 lt!1786363) (= lambda!192720 lambda!192691))))

(declare-fun bs!1024897 () Bool)

(assert (= bs!1024897 (and b!4627716 d!1457872)))

(assert (=> bs!1024897 (= (= lt!1786091 lt!1786321) (= lambda!192720 lambda!192675))))

(assert (=> b!4627716 true))

(declare-fun bs!1024898 () Bool)

(declare-fun b!4627718 () Bool)

(assert (= bs!1024898 (and b!4627718 b!4627663)))

(declare-fun lambda!192721 () Int)

(assert (=> bs!1024898 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192681))))

(assert (=> bs!1024898 (= (= lt!1786091 lt!1786362) (= lambda!192721 lambda!192686))))

(declare-fun bs!1024899 () Bool)

(assert (= bs!1024899 (and b!4627718 b!4627656)))

(assert (=> bs!1024899 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192676))))

(declare-fun bs!1024900 () Bool)

(assert (= bs!1024900 (and b!4627718 b!4627653)))

(assert (=> bs!1024900 (= (= lt!1786091 lt!1786320) (= lambda!192721 lambda!192674))))

(declare-fun bs!1024901 () Bool)

(assert (= bs!1024901 (and b!4627718 d!1457890)))

(assert (=> bs!1024901 (not (= lambda!192721 lambda!192710))))

(declare-fun bs!1024902 () Bool)

(assert (= bs!1024902 (and b!4627718 b!4627651)))

(assert (=> bs!1024902 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192672))))

(declare-fun bs!1024903 () Bool)

(assert (= bs!1024903 (and b!4627718 d!1457796)))

(assert (=> bs!1024903 (not (= lambda!192721 lambda!192615))))

(assert (=> bs!1024900 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192673))))

(declare-fun bs!1024904 () Bool)

(assert (= bs!1024904 (and b!4627718 b!4627661)))

(assert (=> bs!1024904 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192680))))

(declare-fun bs!1024905 () Bool)

(assert (= bs!1024905 (and b!4627718 d!1457874)))

(assert (=> bs!1024905 (= (= lt!1786091 lt!1786342) (= lambda!192721 lambda!192679))))

(declare-fun bs!1024906 () Bool)

(assert (= bs!1024906 (and b!4627718 b!4627658)))

(assert (=> bs!1024906 (= (= lt!1786091 lt!1786341) (= lambda!192721 lambda!192678))))

(assert (=> bs!1024906 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192677))))

(declare-fun bs!1024907 () Bool)

(assert (= bs!1024907 (and b!4627718 d!1457816)))

(assert (=> bs!1024907 (= (= lt!1786091 lt!1786248) (= lambda!192721 lambda!192664))))

(declare-fun bs!1024908 () Bool)

(assert (= bs!1024908 (and b!4627718 b!4627601)))

(assert (=> bs!1024908 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192662))))

(assert (=> bs!1024908 (= (= lt!1786091 lt!1786247) (= lambda!192721 lambda!192663))))

(declare-fun bs!1024909 () Bool)

(assert (= bs!1024909 (and b!4627718 d!1457878)))

(assert (=> bs!1024909 (= (= lt!1786091 lt!1786363) (= lambda!192721 lambda!192691))))

(declare-fun bs!1024910 () Bool)

(assert (= bs!1024910 (and b!4627718 d!1457872)))

(assert (=> bs!1024910 (= (= lt!1786091 lt!1786321) (= lambda!192721 lambda!192675))))

(declare-fun bs!1024911 () Bool)

(assert (= bs!1024911 (and b!4627718 b!4627599)))

(assert (=> bs!1024911 (= (= lt!1786091 (ListMap!4302 Nil!51562)) (= lambda!192721 lambda!192661))))

(declare-fun bs!1024912 () Bool)

(assert (= bs!1024912 (and b!4627718 b!4627716)))

(assert (=> bs!1024912 (= lambda!192721 lambda!192720)))

(assert (=> b!4627718 true))

(declare-fun lt!1786477 () ListMap!4301)

(declare-fun lambda!192722 () Int)

(assert (=> bs!1024898 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192681))))

(assert (=> bs!1024898 (= (= lt!1786477 lt!1786362) (= lambda!192722 lambda!192686))))

(assert (=> bs!1024899 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192676))))

(assert (=> bs!1024900 (= (= lt!1786477 lt!1786320) (= lambda!192722 lambda!192674))))

(assert (=> bs!1024901 (not (= lambda!192722 lambda!192710))))

(assert (=> bs!1024902 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192672))))

(assert (=> bs!1024903 (not (= lambda!192722 lambda!192615))))

(assert (=> bs!1024900 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192673))))

(assert (=> bs!1024904 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192680))))

(assert (=> bs!1024905 (= (= lt!1786477 lt!1786342) (= lambda!192722 lambda!192679))))

(assert (=> bs!1024906 (= (= lt!1786477 lt!1786341) (= lambda!192722 lambda!192678))))

(assert (=> bs!1024906 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192677))))

(assert (=> bs!1024907 (= (= lt!1786477 lt!1786248) (= lambda!192722 lambda!192664))))

(assert (=> bs!1024908 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192662))))

(assert (=> bs!1024908 (= (= lt!1786477 lt!1786247) (= lambda!192722 lambda!192663))))

(assert (=> bs!1024909 (= (= lt!1786477 lt!1786363) (= lambda!192722 lambda!192691))))

(assert (=> bs!1024910 (= (= lt!1786477 lt!1786321) (= lambda!192722 lambda!192675))))

(assert (=> b!4627718 (= (= lt!1786477 lt!1786091) (= lambda!192722 lambda!192721))))

(assert (=> bs!1024911 (= (= lt!1786477 (ListMap!4302 Nil!51562)) (= lambda!192722 lambda!192661))))

(assert (=> bs!1024912 (= (= lt!1786477 lt!1786091) (= lambda!192722 lambda!192720))))

(assert (=> b!4627718 true))

(declare-fun bs!1024914 () Bool)

(declare-fun d!1457920 () Bool)

(assert (= bs!1024914 (and d!1457920 b!4627663)))

(declare-fun lt!1786478 () ListMap!4301)

(declare-fun lambda!192723 () Int)

(assert (=> bs!1024914 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192681))))

(assert (=> bs!1024914 (= (= lt!1786478 lt!1786362) (= lambda!192723 lambda!192686))))

(declare-fun bs!1024915 () Bool)

(assert (= bs!1024915 (and d!1457920 b!4627656)))

(assert (=> bs!1024915 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192676))))

(declare-fun bs!1024916 () Bool)

(assert (= bs!1024916 (and d!1457920 b!4627653)))

(assert (=> bs!1024916 (= (= lt!1786478 lt!1786320) (= lambda!192723 lambda!192674))))

(declare-fun bs!1024917 () Bool)

(assert (= bs!1024917 (and d!1457920 d!1457890)))

(assert (=> bs!1024917 (not (= lambda!192723 lambda!192710))))

(declare-fun bs!1024918 () Bool)

(assert (= bs!1024918 (and d!1457920 b!4627651)))

(assert (=> bs!1024918 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192672))))

(declare-fun bs!1024919 () Bool)

(assert (= bs!1024919 (and d!1457920 d!1457796)))

(assert (=> bs!1024919 (not (= lambda!192723 lambda!192615))))

(declare-fun bs!1024920 () Bool)

(assert (= bs!1024920 (and d!1457920 b!4627718)))

(assert (=> bs!1024920 (= (= lt!1786478 lt!1786477) (= lambda!192723 lambda!192722))))

(assert (=> bs!1024916 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192673))))

(declare-fun bs!1024921 () Bool)

(assert (= bs!1024921 (and d!1457920 b!4627661)))

(assert (=> bs!1024921 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192680))))

(declare-fun bs!1024922 () Bool)

(assert (= bs!1024922 (and d!1457920 d!1457874)))

(assert (=> bs!1024922 (= (= lt!1786478 lt!1786342) (= lambda!192723 lambda!192679))))

(declare-fun bs!1024923 () Bool)

(assert (= bs!1024923 (and d!1457920 b!4627658)))

(assert (=> bs!1024923 (= (= lt!1786478 lt!1786341) (= lambda!192723 lambda!192678))))

(assert (=> bs!1024923 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192677))))

(declare-fun bs!1024924 () Bool)

(assert (= bs!1024924 (and d!1457920 d!1457816)))

(assert (=> bs!1024924 (= (= lt!1786478 lt!1786248) (= lambda!192723 lambda!192664))))

(declare-fun bs!1024925 () Bool)

(assert (= bs!1024925 (and d!1457920 b!4627601)))

(assert (=> bs!1024925 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192662))))

(assert (=> bs!1024925 (= (= lt!1786478 lt!1786247) (= lambda!192723 lambda!192663))))

(declare-fun bs!1024926 () Bool)

(assert (= bs!1024926 (and d!1457920 d!1457878)))

(assert (=> bs!1024926 (= (= lt!1786478 lt!1786363) (= lambda!192723 lambda!192691))))

(declare-fun bs!1024927 () Bool)

(assert (= bs!1024927 (and d!1457920 d!1457872)))

(assert (=> bs!1024927 (= (= lt!1786478 lt!1786321) (= lambda!192723 lambda!192675))))

(assert (=> bs!1024920 (= (= lt!1786478 lt!1786091) (= lambda!192723 lambda!192721))))

(declare-fun bs!1024928 () Bool)

(assert (= bs!1024928 (and d!1457920 b!4627599)))

(assert (=> bs!1024928 (= (= lt!1786478 (ListMap!4302 Nil!51562)) (= lambda!192723 lambda!192661))))

(declare-fun bs!1024929 () Bool)

(assert (= bs!1024929 (and d!1457920 b!4627716)))

(assert (=> bs!1024929 (= (= lt!1786478 lt!1786091) (= lambda!192723 lambda!192720))))

(assert (=> d!1457920 true))

(declare-fun b!4627715 () Bool)

(declare-fun res!1940995 () Bool)

(declare-fun e!2886744 () Bool)

(assert (=> b!4627715 (=> (not res!1940995) (not e!2886744))))

(assert (=> b!4627715 (= res!1940995 (forall!10839 (toList!4997 lt!1786091) lambda!192723))))

(declare-fun e!2886746 () ListMap!4301)

(assert (=> b!4627716 (= e!2886746 lt!1786091)))

(declare-fun lt!1786484 () Unit!112512)

(declare-fun call!322837 () Unit!112512)

(assert (=> b!4627716 (= lt!1786484 call!322837)))

(declare-fun call!322835 () Bool)

(assert (=> b!4627716 call!322835))

(declare-fun lt!1786479 () Unit!112512)

(assert (=> b!4627716 (= lt!1786479 lt!1786484)))

(declare-fun call!322836 () Bool)

(assert (=> b!4627716 call!322836))

(declare-fun lt!1786489 () Unit!112512)

(declare-fun Unit!112587 () Unit!112512)

(assert (=> b!4627716 (= lt!1786489 Unit!112587)))

(declare-fun c!792133 () Bool)

(declare-fun bm!322830 () Bool)

(assert (=> bm!322830 (= call!322835 (forall!10839 (toList!4997 lt!1786091) (ite c!792133 lambda!192720 lambda!192722)))))

(declare-fun bm!322831 () Bool)

(assert (=> bm!322831 (= call!322836 (forall!10839 (toList!4997 lt!1786091) (ite c!792133 lambda!192720 lambda!192722)))))

(declare-fun bm!322832 () Bool)

(assert (=> bm!322832 (= call!322837 (lemmaContainsAllItsOwnKeys!513 lt!1786091))))

(declare-fun b!4627717 () Bool)

(assert (=> b!4627717 (= e!2886744 (invariantList!1211 (toList!4997 lt!1786478)))))

(assert (=> b!4627718 (= e!2886746 lt!1786477)))

(declare-fun lt!1786497 () ListMap!4301)

(assert (=> b!4627718 (= lt!1786497 (+!1882 lt!1786091 (h!57620 oldBucket!40)))))

(assert (=> b!4627718 (= lt!1786477 (addToMapMapFromBucket!977 (t!358726 oldBucket!40) (+!1882 lt!1786091 (h!57620 oldBucket!40))))))

(declare-fun lt!1786496 () Unit!112512)

(assert (=> b!4627718 (= lt!1786496 call!322837)))

(assert (=> b!4627718 (forall!10839 (toList!4997 lt!1786091) lambda!192721)))

(declare-fun lt!1786483 () Unit!112512)

(assert (=> b!4627718 (= lt!1786483 lt!1786496)))

(assert (=> b!4627718 (forall!10839 (toList!4997 lt!1786497) lambda!192722)))

(declare-fun lt!1786480 () Unit!112512)

(declare-fun Unit!112593 () Unit!112512)

(assert (=> b!4627718 (= lt!1786480 Unit!112593)))

(assert (=> b!4627718 (forall!10839 (t!358726 oldBucket!40) lambda!192722)))

(declare-fun lt!1786495 () Unit!112512)

(declare-fun Unit!112595 () Unit!112512)

(assert (=> b!4627718 (= lt!1786495 Unit!112595)))

(declare-fun lt!1786488 () Unit!112512)

(declare-fun Unit!112597 () Unit!112512)

(assert (=> b!4627718 (= lt!1786488 Unit!112597)))

(declare-fun lt!1786481 () Unit!112512)

(assert (=> b!4627718 (= lt!1786481 (forallContained!3069 (toList!4997 lt!1786497) lambda!192722 (h!57620 oldBucket!40)))))

(assert (=> b!4627718 (contains!14623 lt!1786497 (_1!29549 (h!57620 oldBucket!40)))))

(declare-fun lt!1786493 () Unit!112512)

(declare-fun Unit!112599 () Unit!112512)

(assert (=> b!4627718 (= lt!1786493 Unit!112599)))

(assert (=> b!4627718 (contains!14623 lt!1786477 (_1!29549 (h!57620 oldBucket!40)))))

(declare-fun lt!1786482 () Unit!112512)

(declare-fun Unit!112600 () Unit!112512)

(assert (=> b!4627718 (= lt!1786482 Unit!112600)))

(assert (=> b!4627718 (forall!10839 oldBucket!40 lambda!192722)))

(declare-fun lt!1786491 () Unit!112512)

(declare-fun Unit!112602 () Unit!112512)

(assert (=> b!4627718 (= lt!1786491 Unit!112602)))

(assert (=> b!4627718 (forall!10839 (toList!4997 lt!1786497) lambda!192722)))

(declare-fun lt!1786490 () Unit!112512)

(declare-fun Unit!112603 () Unit!112512)

(assert (=> b!4627718 (= lt!1786490 Unit!112603)))

(declare-fun lt!1786494 () Unit!112512)

(declare-fun Unit!112604 () Unit!112512)

(assert (=> b!4627718 (= lt!1786494 Unit!112604)))

(declare-fun lt!1786485 () Unit!112512)

(assert (=> b!4627718 (= lt!1786485 (addForallContainsKeyThenBeforeAdding!512 lt!1786091 lt!1786477 (_1!29549 (h!57620 oldBucket!40)) (_2!29549 (h!57620 oldBucket!40))))))

(assert (=> b!4627718 (forall!10839 (toList!4997 lt!1786091) lambda!192722)))

(declare-fun lt!1786492 () Unit!112512)

(assert (=> b!4627718 (= lt!1786492 lt!1786485)))

(assert (=> b!4627718 call!322835))

(declare-fun lt!1786487 () Unit!112512)

(declare-fun Unit!112606 () Unit!112512)

(assert (=> b!4627718 (= lt!1786487 Unit!112606)))

(declare-fun res!1940994 () Bool)

(assert (=> b!4627718 (= res!1940994 (forall!10839 oldBucket!40 lambda!192722))))

(declare-fun e!2886745 () Bool)

(assert (=> b!4627718 (=> (not res!1940994) (not e!2886745))))

(assert (=> b!4627718 e!2886745))

(declare-fun lt!1786486 () Unit!112512)

(declare-fun Unit!112608 () Unit!112512)

(assert (=> b!4627718 (= lt!1786486 Unit!112608)))

(assert (=> d!1457920 e!2886744))

(declare-fun res!1940996 () Bool)

(assert (=> d!1457920 (=> (not res!1940996) (not e!2886744))))

(assert (=> d!1457920 (= res!1940996 (forall!10839 oldBucket!40 lambda!192723))))

(assert (=> d!1457920 (= lt!1786478 e!2886746)))

(assert (=> d!1457920 (= c!792133 ((_ is Nil!51562) oldBucket!40))))

(assert (=> d!1457920 (noDuplicateKeys!1516 oldBucket!40)))

(assert (=> d!1457920 (= (addToMapMapFromBucket!977 oldBucket!40 lt!1786091) lt!1786478)))

(declare-fun b!4627719 () Bool)

(assert (=> b!4627719 (= e!2886745 call!322836)))

(assert (= (and d!1457920 c!792133) b!4627716))

(assert (= (and d!1457920 (not c!792133)) b!4627718))

(assert (= (and b!4627718 res!1940994) b!4627719))

(assert (= (or b!4627716 b!4627718) bm!322832))

(assert (= (or b!4627716 b!4627719) bm!322831))

(assert (= (or b!4627716 b!4627718) bm!322830))

(assert (= (and d!1457920 res!1940996) b!4627715))

(assert (= (and b!4627715 res!1940995) b!4627717))

(declare-fun m!5472271 () Bool)

(assert (=> b!4627715 m!5472271))

(declare-fun m!5472273 () Bool)

(assert (=> bm!322830 m!5472273))

(declare-fun m!5472275 () Bool)

(assert (=> d!1457920 m!5472275))

(assert (=> d!1457920 m!5471569))

(declare-fun m!5472277 () Bool)

(assert (=> b!4627717 m!5472277))

(declare-fun m!5472279 () Bool)

(assert (=> bm!322832 m!5472279))

(declare-fun m!5472281 () Bool)

(assert (=> b!4627718 m!5472281))

(declare-fun m!5472283 () Bool)

(assert (=> b!4627718 m!5472283))

(declare-fun m!5472285 () Bool)

(assert (=> b!4627718 m!5472285))

(declare-fun m!5472287 () Bool)

(assert (=> b!4627718 m!5472287))

(declare-fun m!5472289 () Bool)

(assert (=> b!4627718 m!5472289))

(declare-fun m!5472291 () Bool)

(assert (=> b!4627718 m!5472291))

(declare-fun m!5472293 () Bool)

(assert (=> b!4627718 m!5472293))

(declare-fun m!5472295 () Bool)

(assert (=> b!4627718 m!5472295))

(assert (=> b!4627718 m!5472285))

(declare-fun m!5472297 () Bool)

(assert (=> b!4627718 m!5472297))

(declare-fun m!5472299 () Bool)

(assert (=> b!4627718 m!5472299))

(assert (=> b!4627718 m!5472295))

(declare-fun m!5472301 () Bool)

(assert (=> b!4627718 m!5472301))

(assert (=> b!4627718 m!5472297))

(assert (=> bm!322831 m!5472273))

(assert (=> b!4627433 d!1457920))

(declare-fun bs!1024930 () Bool)

(declare-fun d!1457924 () Bool)

(assert (= bs!1024930 (and d!1457924 d!1457868)))

(declare-fun lambda!192724 () Int)

(assert (=> bs!1024930 (= lambda!192724 lambda!192671)))

(declare-fun bs!1024931 () Bool)

(assert (= bs!1024931 (and d!1457924 d!1457886)))

(assert (=> bs!1024931 (= lambda!192724 lambda!192702)))

(declare-fun bs!1024932 () Bool)

(assert (= bs!1024932 (and d!1457924 d!1457862)))

(assert (=> bs!1024932 (= lambda!192724 lambda!192668)))

(declare-fun bs!1024933 () Bool)

(assert (= bs!1024933 (and d!1457924 b!4627440)))

(assert (=> bs!1024933 (= lambda!192724 lambda!192612)))

(declare-fun bs!1024934 () Bool)

(assert (= bs!1024934 (and d!1457924 d!1457888)))

(assert (=> bs!1024934 (= lambda!192724 lambda!192707)))

(declare-fun bs!1024935 () Bool)

(assert (= bs!1024935 (and d!1457924 d!1457858)))

(assert (=> bs!1024935 (= lambda!192724 lambda!192667)))

(declare-fun lt!1786501 () ListMap!4301)

(assert (=> d!1457924 (invariantList!1211 (toList!4997 lt!1786501))))

(declare-fun e!2886747 () ListMap!4301)

(assert (=> d!1457924 (= lt!1786501 e!2886747)))

(declare-fun c!792134 () Bool)

(assert (=> d!1457924 (= c!792134 ((_ is Cons!51563) Nil!51563))))

(assert (=> d!1457924 (forall!10838 Nil!51563 lambda!192724)))

(assert (=> d!1457924 (= (extractMap!1572 Nil!51563) lt!1786501)))

(declare-fun b!4627720 () Bool)

(assert (=> b!4627720 (= e!2886747 (addToMapMapFromBucket!977 (_2!29550 (h!57621 Nil!51563)) (extractMap!1572 (t!358727 Nil!51563))))))

(declare-fun b!4627721 () Bool)

(assert (=> b!4627721 (= e!2886747 (ListMap!4302 Nil!51562))))

(assert (= (and d!1457924 c!792134) b!4627720))

(assert (= (and d!1457924 (not c!792134)) b!4627721))

(declare-fun m!5472303 () Bool)

(assert (=> d!1457924 m!5472303))

(declare-fun m!5472305 () Bool)

(assert (=> d!1457924 m!5472305))

(declare-fun m!5472307 () Bool)

(assert (=> b!4627720 m!5472307))

(assert (=> b!4627720 m!5472307))

(declare-fun m!5472309 () Bool)

(assert (=> b!4627720 m!5472309))

(assert (=> b!4627433 d!1457924))

(declare-fun d!1457926 () Bool)

(assert (=> d!1457926 (contains!14624 (toList!4998 lt!1786088) (tuple2!52513 lt!1786105 lt!1786098))))

(declare-fun lt!1786507 () Unit!112512)

(declare-fun choose!31382 (ListLongMap!3587 (_ BitVec 64) List!51686) Unit!112512)

(assert (=> d!1457926 (= lt!1786507 (choose!31382 lt!1786088 lt!1786105 lt!1786098))))

(assert (=> d!1457926 (contains!14625 lt!1786088 lt!1786105)))

(assert (=> d!1457926 (= (lemmaGetValueImpliesTupleContained!113 lt!1786088 lt!1786105 lt!1786098) lt!1786507)))

(declare-fun bs!1024937 () Bool)

(assert (= bs!1024937 d!1457926))

(declare-fun m!5472317 () Bool)

(assert (=> bs!1024937 m!5472317))

(declare-fun m!5472319 () Bool)

(assert (=> bs!1024937 m!5472319))

(assert (=> bs!1024937 m!5471633))

(assert (=> b!4627440 d!1457926))

(declare-fun d!1457930 () Bool)

(declare-datatypes ((Option!11618 0))(
  ( (None!11617) (Some!11617 (v!45763 List!51686)) )
))
(declare-fun get!17098 (Option!11618) List!51686)

(declare-fun getValueByKey!1468 (List!51687 (_ BitVec 64)) Option!11618)

(assert (=> d!1457930 (= (apply!12181 lt!1786088 lt!1786105) (get!17098 (getValueByKey!1468 (toList!4998 lt!1786088) lt!1786105)))))

(declare-fun bs!1024939 () Bool)

(assert (= bs!1024939 d!1457930))

(declare-fun m!5472339 () Bool)

(assert (=> bs!1024939 m!5472339))

(assert (=> bs!1024939 m!5472339))

(declare-fun m!5472341 () Bool)

(assert (=> bs!1024939 m!5472341))

(assert (=> b!4627440 d!1457930))

(declare-fun d!1457936 () Bool)

(declare-fun e!2886754 () Bool)

(assert (=> d!1457936 e!2886754))

(declare-fun res!1941000 () Bool)

(assert (=> d!1457936 (=> res!1941000 e!2886754)))

(declare-fun lt!1786519 () Bool)

(assert (=> d!1457936 (= res!1941000 (not lt!1786519))))

(declare-fun lt!1786520 () Bool)

(assert (=> d!1457936 (= lt!1786519 lt!1786520)))

(declare-fun lt!1786517 () Unit!112512)

(declare-fun e!2886753 () Unit!112512)

(assert (=> d!1457936 (= lt!1786517 e!2886753)))

(declare-fun c!792137 () Bool)

(assert (=> d!1457936 (= c!792137 lt!1786520)))

(declare-fun containsKey!2476 (List!51687 (_ BitVec 64)) Bool)

(assert (=> d!1457936 (= lt!1786520 (containsKey!2476 (toList!4998 lt!1786088) lt!1786105))))

(assert (=> d!1457936 (= (contains!14625 lt!1786088 lt!1786105) lt!1786519)))

(declare-fun b!4627730 () Bool)

(declare-fun lt!1786518 () Unit!112512)

(assert (=> b!4627730 (= e!2886753 lt!1786518)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1370 (List!51687 (_ BitVec 64)) Unit!112512)

(assert (=> b!4627730 (= lt!1786518 (lemmaContainsKeyImpliesGetValueByKeyDefined!1370 (toList!4998 lt!1786088) lt!1786105))))

(declare-fun isDefined!8883 (Option!11618) Bool)

(assert (=> b!4627730 (isDefined!8883 (getValueByKey!1468 (toList!4998 lt!1786088) lt!1786105))))

(declare-fun b!4627731 () Bool)

(declare-fun Unit!112609 () Unit!112512)

(assert (=> b!4627731 (= e!2886753 Unit!112609)))

(declare-fun b!4627732 () Bool)

(assert (=> b!4627732 (= e!2886754 (isDefined!8883 (getValueByKey!1468 (toList!4998 lt!1786088) lt!1786105)))))

(assert (= (and d!1457936 c!792137) b!4627730))

(assert (= (and d!1457936 (not c!792137)) b!4627731))

(assert (= (and d!1457936 (not res!1941000)) b!4627732))

(declare-fun m!5472343 () Bool)

(assert (=> d!1457936 m!5472343))

(declare-fun m!5472345 () Bool)

(assert (=> b!4627730 m!5472345))

(assert (=> b!4627730 m!5472339))

(assert (=> b!4627730 m!5472339))

(declare-fun m!5472347 () Bool)

(assert (=> b!4627730 m!5472347))

(assert (=> b!4627732 m!5472339))

(assert (=> b!4627732 m!5472339))

(assert (=> b!4627732 m!5472347))

(assert (=> b!4627440 d!1457936))

(declare-fun b!4627761 () Bool)

(declare-fun e!2886774 () Option!11614)

(declare-fun e!2886773 () Option!11614)

(assert (=> b!4627761 (= e!2886774 e!2886773)))

(declare-fun c!792145 () Bool)

(assert (=> b!4627761 (= c!792145 ((_ is Cons!51562) lt!1786098))))

(declare-fun b!4627762 () Bool)

(declare-fun e!2886775 () Bool)

(assert (=> b!4627762 (= e!2886775 (not (containsKey!2472 lt!1786098 key!4968)))))

(declare-fun b!4627764 () Bool)

(declare-fun e!2886772 () Bool)

(declare-fun e!2886771 () Bool)

(assert (=> b!4627764 (= e!2886772 e!2886771)))

(declare-fun res!1941022 () Bool)

(assert (=> b!4627764 (=> (not res!1941022) (not e!2886771))))

(declare-fun lt!1786545 () Option!11614)

(assert (=> b!4627764 (= res!1941022 (isDefined!8879 lt!1786545))))

(declare-fun b!4627765 () Bool)

(declare-fun get!17099 (Option!11614) tuple2!52510)

(assert (=> b!4627765 (= e!2886771 (contains!14626 lt!1786098 (get!17099 lt!1786545)))))

(declare-fun b!4627766 () Bool)

(assert (=> b!4627766 (= e!2886774 (Some!11613 (h!57620 lt!1786098)))))

(declare-fun b!4627767 () Bool)

(assert (=> b!4627767 (= e!2886773 (getPair!308 (t!358726 lt!1786098) key!4968))))

(declare-fun b!4627768 () Bool)

(assert (=> b!4627768 (= e!2886773 None!11613)))

(declare-fun b!4627763 () Bool)

(declare-fun res!1941020 () Bool)

(assert (=> b!4627763 (=> (not res!1941020) (not e!2886771))))

(assert (=> b!4627763 (= res!1941020 (= (_1!29549 (get!17099 lt!1786545)) key!4968))))

(declare-fun d!1457938 () Bool)

(assert (=> d!1457938 e!2886772))

(declare-fun res!1941021 () Bool)

(assert (=> d!1457938 (=> res!1941021 e!2886772)))

(assert (=> d!1457938 (= res!1941021 e!2886775)))

(declare-fun res!1941019 () Bool)

(assert (=> d!1457938 (=> (not res!1941019) (not e!2886775))))

(declare-fun isEmpty!28938 (Option!11614) Bool)

(assert (=> d!1457938 (= res!1941019 (isEmpty!28938 lt!1786545))))

(assert (=> d!1457938 (= lt!1786545 e!2886774)))

(declare-fun c!792143 () Bool)

(assert (=> d!1457938 (= c!792143 (and ((_ is Cons!51562) lt!1786098) (= (_1!29549 (h!57620 lt!1786098)) key!4968)))))

(assert (=> d!1457938 (noDuplicateKeys!1516 lt!1786098)))

(assert (=> d!1457938 (= (getPair!308 lt!1786098 key!4968) lt!1786545)))

(assert (= (and d!1457938 c!792143) b!4627766))

(assert (= (and d!1457938 (not c!792143)) b!4627761))

(assert (= (and b!4627761 c!792145) b!4627767))

(assert (= (and b!4627761 (not c!792145)) b!4627768))

(assert (= (and d!1457938 res!1941019) b!4627762))

(assert (= (and d!1457938 (not res!1941021)) b!4627764))

(assert (= (and b!4627764 res!1941022) b!4627763))

(assert (= (and b!4627763 res!1941020) b!4627765))

(declare-fun m!5472401 () Bool)

(assert (=> b!4627764 m!5472401))

(declare-fun m!5472403 () Bool)

(assert (=> b!4627765 m!5472403))

(assert (=> b!4627765 m!5472403))

(declare-fun m!5472405 () Bool)

(assert (=> b!4627765 m!5472405))

(declare-fun m!5472407 () Bool)

(assert (=> d!1457938 m!5472407))

(declare-fun m!5472409 () Bool)

(assert (=> d!1457938 m!5472409))

(declare-fun m!5472411 () Bool)

(assert (=> b!4627762 m!5472411))

(assert (=> b!4627763 m!5472403))

(declare-fun m!5472413 () Bool)

(assert (=> b!4627767 m!5472413))

(assert (=> b!4627440 d!1457938))

(declare-fun d!1457956 () Bool)

(assert (=> d!1457956 (dynLambda!21505 lambda!192612 lt!1786100)))

(declare-fun lt!1786568 () Unit!112512)

(declare-fun choose!31383 (List!51687 Int tuple2!52512) Unit!112512)

(assert (=> d!1457956 (= lt!1786568 (choose!31383 lt!1786086 lambda!192612 lt!1786100))))

(declare-fun e!2886781 () Bool)

(assert (=> d!1457956 e!2886781))

(declare-fun res!1941028 () Bool)

(assert (=> d!1457956 (=> (not res!1941028) (not e!2886781))))

(assert (=> d!1457956 (= res!1941028 (forall!10838 lt!1786086 lambda!192612))))

(assert (=> d!1457956 (= (forallContained!3068 lt!1786086 lambda!192612 lt!1786100) lt!1786568)))

(declare-fun b!4627776 () Bool)

(assert (=> b!4627776 (= e!2886781 (contains!14624 lt!1786086 lt!1786100))))

(assert (= (and d!1457956 res!1941028) b!4627776))

(declare-fun b_lambda!170793 () Bool)

(assert (=> (not b_lambda!170793) (not d!1457956)))

(declare-fun m!5472415 () Bool)

(assert (=> d!1457956 m!5472415))

(declare-fun m!5472417 () Bool)

(assert (=> d!1457956 m!5472417))

(assert (=> d!1457956 m!5471639))

(assert (=> b!4627776 m!5471629))

(assert (=> b!4627440 d!1457956))

(declare-fun bs!1024965 () Bool)

(declare-fun d!1457958 () Bool)

(assert (= bs!1024965 (and d!1457958 d!1457868)))

(declare-fun lambda!192732 () Int)

(assert (=> bs!1024965 (= lambda!192732 lambda!192671)))

(declare-fun bs!1024966 () Bool)

(assert (= bs!1024966 (and d!1457958 d!1457886)))

(assert (=> bs!1024966 (= lambda!192732 lambda!192702)))

(declare-fun bs!1024967 () Bool)

(assert (= bs!1024967 (and d!1457958 d!1457862)))

(assert (=> bs!1024967 (= lambda!192732 lambda!192668)))

(declare-fun bs!1024968 () Bool)

(assert (= bs!1024968 (and d!1457958 b!4627440)))

(assert (=> bs!1024968 (= lambda!192732 lambda!192612)))

(declare-fun bs!1024969 () Bool)

(assert (= bs!1024969 (and d!1457958 d!1457924)))

(assert (=> bs!1024969 (= lambda!192732 lambda!192724)))

(declare-fun bs!1024970 () Bool)

(assert (= bs!1024970 (and d!1457958 d!1457888)))

(assert (=> bs!1024970 (= lambda!192732 lambda!192707)))

(declare-fun bs!1024971 () Bool)

(assert (= bs!1024971 (and d!1457958 d!1457858)))

(assert (=> bs!1024971 (= lambda!192732 lambda!192667)))

(assert (=> d!1457958 (contains!14625 lt!1786088 (hash!3525 hashF!1389 key!4968))))

(declare-fun lt!1786579 () Unit!112512)

(declare-fun choose!31384 (ListLongMap!3587 K!12940 Hashable!5913) Unit!112512)

(assert (=> d!1457958 (= lt!1786579 (choose!31384 lt!1786088 key!4968 hashF!1389))))

(assert (=> d!1457958 (forall!10838 (toList!4998 lt!1786088) lambda!192732)))

(assert (=> d!1457958 (= (lemmaInGenMapThenLongMapContainsHash!514 lt!1786088 key!4968 hashF!1389) lt!1786579)))

(declare-fun bs!1024972 () Bool)

(assert (= bs!1024972 d!1457958))

(assert (=> bs!1024972 m!5471609))

(assert (=> bs!1024972 m!5471609))

(declare-fun m!5472473 () Bool)

(assert (=> bs!1024972 m!5472473))

(declare-fun m!5472477 () Bool)

(assert (=> bs!1024972 m!5472477))

(declare-fun m!5472481 () Bool)

(assert (=> bs!1024972 m!5472481))

(assert (=> b!4627440 d!1457958))

(declare-fun d!1457964 () Bool)

(assert (=> d!1457964 (containsKey!2472 oldBucket!40 key!4968)))

(declare-fun lt!1786590 () Unit!112512)

(declare-fun choose!31385 (List!51686 K!12940 Hashable!5913) Unit!112512)

(assert (=> d!1457964 (= lt!1786590 (choose!31385 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1457964 (noDuplicateKeys!1516 oldBucket!40)))

(assert (=> d!1457964 (= (lemmaGetPairDefinedThenContainsKey!62 oldBucket!40 key!4968 hashF!1389) lt!1786590)))

(declare-fun bs!1024973 () Bool)

(assert (= bs!1024973 d!1457964))

(assert (=> bs!1024973 m!5471621))

(declare-fun m!5472501 () Bool)

(assert (=> bs!1024973 m!5472501))

(assert (=> bs!1024973 m!5471569))

(assert (=> b!4627440 d!1457964))

(declare-fun d!1457970 () Bool)

(declare-fun lt!1786593 () Bool)

(declare-fun content!8823 (List!51687) (InoxSet tuple2!52512))

(assert (=> d!1457970 (= lt!1786593 (select (content!8823 lt!1786086) lt!1786100))))

(declare-fun e!2886794 () Bool)

(assert (=> d!1457970 (= lt!1786593 e!2886794)))

(declare-fun res!1941040 () Bool)

(assert (=> d!1457970 (=> (not res!1941040) (not e!2886794))))

(assert (=> d!1457970 (= res!1941040 ((_ is Cons!51563) lt!1786086))))

(assert (=> d!1457970 (= (contains!14624 lt!1786086 lt!1786100) lt!1786593)))

(declare-fun b!4627794 () Bool)

(declare-fun e!2886795 () Bool)

(assert (=> b!4627794 (= e!2886794 e!2886795)))

(declare-fun res!1941041 () Bool)

(assert (=> b!4627794 (=> res!1941041 e!2886795)))

(assert (=> b!4627794 (= res!1941041 (= (h!57621 lt!1786086) lt!1786100))))

(declare-fun b!4627795 () Bool)

(assert (=> b!4627795 (= e!2886795 (contains!14624 (t!358727 lt!1786086) lt!1786100))))

(assert (= (and d!1457970 res!1941040) b!4627794))

(assert (= (and b!4627794 (not res!1941041)) b!4627795))

(declare-fun m!5472503 () Bool)

(assert (=> d!1457970 m!5472503))

(declare-fun m!5472505 () Bool)

(assert (=> d!1457970 m!5472505))

(declare-fun m!5472507 () Bool)

(assert (=> b!4627795 m!5472507))

(assert (=> b!4627440 d!1457970))

(declare-fun d!1457972 () Bool)

(declare-fun res!1941046 () Bool)

(declare-fun e!2886800 () Bool)

(assert (=> d!1457972 (=> res!1941046 e!2886800)))

(assert (=> d!1457972 (= res!1941046 (and ((_ is Cons!51562) (t!358726 oldBucket!40)) (= (_1!29549 (h!57620 (t!358726 oldBucket!40))) key!4968)))))

(assert (=> d!1457972 (= (containsKey!2472 (t!358726 oldBucket!40) key!4968) e!2886800)))

(declare-fun b!4627800 () Bool)

(declare-fun e!2886801 () Bool)

(assert (=> b!4627800 (= e!2886800 e!2886801)))

(declare-fun res!1941047 () Bool)

(assert (=> b!4627800 (=> (not res!1941047) (not e!2886801))))

(assert (=> b!4627800 (= res!1941047 ((_ is Cons!51562) (t!358726 oldBucket!40)))))

(declare-fun b!4627801 () Bool)

(assert (=> b!4627801 (= e!2886801 (containsKey!2472 (t!358726 (t!358726 oldBucket!40)) key!4968))))

(assert (= (and d!1457972 (not res!1941046)) b!4627800))

(assert (= (and b!4627800 res!1941047) b!4627801))

(declare-fun m!5472509 () Bool)

(assert (=> b!4627801 m!5472509))

(assert (=> b!4627440 d!1457972))

(declare-fun bs!1025075 () Bool)

(declare-fun d!1457974 () Bool)

(assert (= bs!1025075 (and d!1457974 d!1457868)))

(declare-fun lambda!192753 () Int)

(assert (=> bs!1025075 (= lambda!192753 lambda!192671)))

(declare-fun bs!1025076 () Bool)

(assert (= bs!1025076 (and d!1457974 d!1457886)))

(assert (=> bs!1025076 (= lambda!192753 lambda!192702)))

(declare-fun bs!1025077 () Bool)

(assert (= bs!1025077 (and d!1457974 b!4627440)))

(assert (=> bs!1025077 (= lambda!192753 lambda!192612)))

(declare-fun bs!1025078 () Bool)

(assert (= bs!1025078 (and d!1457974 d!1457924)))

(assert (=> bs!1025078 (= lambda!192753 lambda!192724)))

(declare-fun bs!1025079 () Bool)

(assert (= bs!1025079 (and d!1457974 d!1457888)))

(assert (=> bs!1025079 (= lambda!192753 lambda!192707)))

(declare-fun bs!1025080 () Bool)

(assert (= bs!1025080 (and d!1457974 d!1457858)))

(assert (=> bs!1025080 (= lambda!192753 lambda!192667)))

(declare-fun bs!1025081 () Bool)

(assert (= bs!1025081 (and d!1457974 d!1457862)))

(assert (=> bs!1025081 (= lambda!192753 lambda!192668)))

(declare-fun bs!1025082 () Bool)

(assert (= bs!1025082 (and d!1457974 d!1457958)))

(assert (=> bs!1025082 (= lambda!192753 lambda!192732)))

(declare-fun b!4627828 () Bool)

(declare-fun lt!1786681 () List!51686)

(declare-fun lt!1786685 () (_ BitVec 64))

(declare-fun e!2886816 () Bool)

(assert (=> b!4627828 (= e!2886816 (= (getValueByKey!1468 (toList!4998 lt!1786088) lt!1786685) (Some!11617 lt!1786681)))))

(declare-fun e!2886815 () Bool)

(assert (=> d!1457974 e!2886815))

(declare-fun res!1941066 () Bool)

(assert (=> d!1457974 (=> (not res!1941066) (not e!2886815))))

(assert (=> d!1457974 (= res!1941066 (forall!10838 (toList!4998 lt!1786088) lambda!192753))))

(declare-fun lt!1786686 () Unit!112512)

(declare-fun choose!31386 (ListLongMap!3587 K!12940 Hashable!5913) Unit!112512)

(assert (=> d!1457974 (= lt!1786686 (choose!31386 lt!1786088 key!4968 hashF!1389))))

(assert (=> d!1457974 (forall!10838 (toList!4998 lt!1786088) lambda!192753)))

(assert (=> d!1457974 (= (lemmaInGenMapThenGetPairDefined!104 lt!1786088 key!4968 hashF!1389) lt!1786686)))

(declare-fun b!4627825 () Bool)

(declare-fun res!1941067 () Bool)

(assert (=> b!4627825 (=> (not res!1941067) (not e!2886815))))

(declare-fun allKeysSameHashInMap!1538 (ListLongMap!3587 Hashable!5913) Bool)

(assert (=> b!4627825 (= res!1941067 (allKeysSameHashInMap!1538 lt!1786088 hashF!1389))))

(declare-fun b!4627826 () Bool)

(declare-fun res!1941065 () Bool)

(assert (=> b!4627826 (=> (not res!1941065) (not e!2886815))))

(assert (=> b!4627826 (= res!1941065 (contains!14623 (extractMap!1572 (toList!4998 lt!1786088)) key!4968))))

(declare-fun b!4627827 () Bool)

(assert (=> b!4627827 (= e!2886815 (isDefined!8879 (getPair!308 (apply!12181 lt!1786088 (hash!3525 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1786682 () Unit!112512)

(assert (=> b!4627827 (= lt!1786682 (forallContained!3068 (toList!4998 lt!1786088) lambda!192753 (tuple2!52513 (hash!3525 hashF!1389 key!4968) (apply!12181 lt!1786088 (hash!3525 hashF!1389 key!4968)))))))

(declare-fun lt!1786684 () Unit!112512)

(declare-fun lt!1786680 () Unit!112512)

(assert (=> b!4627827 (= lt!1786684 lt!1786680)))

(assert (=> b!4627827 (contains!14624 (toList!4998 lt!1786088) (tuple2!52513 lt!1786685 lt!1786681))))

(assert (=> b!4627827 (= lt!1786680 (lemmaGetValueImpliesTupleContained!113 lt!1786088 lt!1786685 lt!1786681))))

(assert (=> b!4627827 e!2886816))

(declare-fun res!1941068 () Bool)

(assert (=> b!4627827 (=> (not res!1941068) (not e!2886816))))

(assert (=> b!4627827 (= res!1941068 (contains!14625 lt!1786088 lt!1786685))))

(assert (=> b!4627827 (= lt!1786681 (apply!12181 lt!1786088 (hash!3525 hashF!1389 key!4968)))))

(assert (=> b!4627827 (= lt!1786685 (hash!3525 hashF!1389 key!4968))))

(declare-fun lt!1786687 () Unit!112512)

(declare-fun lt!1786683 () Unit!112512)

(assert (=> b!4627827 (= lt!1786687 lt!1786683)))

(assert (=> b!4627827 (contains!14625 lt!1786088 (hash!3525 hashF!1389 key!4968))))

(assert (=> b!4627827 (= lt!1786683 (lemmaInGenMapThenLongMapContainsHash!514 lt!1786088 key!4968 hashF!1389))))

(assert (= (and d!1457974 res!1941066) b!4627825))

(assert (= (and b!4627825 res!1941067) b!4627826))

(assert (= (and b!4627826 res!1941065) b!4627827))

(assert (= (and b!4627827 res!1941068) b!4627828))

(declare-fun m!5472587 () Bool)

(assert (=> b!4627828 m!5472587))

(declare-fun m!5472589 () Bool)

(assert (=> d!1457974 m!5472589))

(declare-fun m!5472591 () Bool)

(assert (=> d!1457974 m!5472591))

(assert (=> d!1457974 m!5472589))

(declare-fun m!5472593 () Bool)

(assert (=> b!4627825 m!5472593))

(declare-fun m!5472595 () Bool)

(assert (=> b!4627826 m!5472595))

(assert (=> b!4627826 m!5472595))

(declare-fun m!5472597 () Bool)

(assert (=> b!4627826 m!5472597))

(declare-fun m!5472599 () Bool)

(assert (=> b!4627827 m!5472599))

(declare-fun m!5472601 () Bool)

(assert (=> b!4627827 m!5472601))

(declare-fun m!5472603 () Bool)

(assert (=> b!4627827 m!5472603))

(declare-fun m!5472605 () Bool)

(assert (=> b!4627827 m!5472605))

(assert (=> b!4627827 m!5472599))

(declare-fun m!5472607 () Bool)

(assert (=> b!4627827 m!5472607))

(declare-fun m!5472609 () Bool)

(assert (=> b!4627827 m!5472609))

(declare-fun m!5472611 () Bool)

(assert (=> b!4627827 m!5472611))

(assert (=> b!4627827 m!5471613))

(assert (=> b!4627827 m!5471609))

(assert (=> b!4627827 m!5472473))

(assert (=> b!4627827 m!5471609))

(assert (=> b!4627827 m!5471609))

(assert (=> b!4627827 m!5472605))

(assert (=> b!4627440 d!1457974))

(declare-fun d!1457986 () Bool)

(assert (=> d!1457986 (= (isDefined!8879 (getPair!308 lt!1786098 key!4968)) (not (isEmpty!28938 (getPair!308 lt!1786098 key!4968))))))

(declare-fun bs!1025095 () Bool)

(assert (= bs!1025095 d!1457986))

(assert (=> bs!1025095 m!5471623))

(declare-fun m!5472613 () Bool)

(assert (=> bs!1025095 m!5472613))

(assert (=> b!4627440 d!1457986))

(declare-fun d!1457988 () Bool)

(declare-fun res!1941069 () Bool)

(declare-fun e!2886817 () Bool)

(assert (=> d!1457988 (=> res!1941069 e!2886817)))

(assert (=> d!1457988 (= res!1941069 (and ((_ is Cons!51562) oldBucket!40) (= (_1!29549 (h!57620 oldBucket!40)) key!4968)))))

(assert (=> d!1457988 (= (containsKey!2472 oldBucket!40 key!4968) e!2886817)))

(declare-fun b!4627829 () Bool)

(declare-fun e!2886818 () Bool)

(assert (=> b!4627829 (= e!2886817 e!2886818)))

(declare-fun res!1941070 () Bool)

(assert (=> b!4627829 (=> (not res!1941070) (not e!2886818))))

(assert (=> b!4627829 (= res!1941070 ((_ is Cons!51562) oldBucket!40))))

(declare-fun b!4627830 () Bool)

(assert (=> b!4627830 (= e!2886818 (containsKey!2472 (t!358726 oldBucket!40) key!4968))))

(assert (= (and d!1457988 (not res!1941069)) b!4627829))

(assert (= (and b!4627829 res!1941070) b!4627830))

(assert (=> b!4627830 m!5471631))

(assert (=> b!4627440 d!1457988))

(declare-fun d!1457990 () Bool)

(declare-fun lt!1786688 () List!51686)

(assert (=> d!1457990 (not (containsKey!2472 lt!1786688 key!4968))))

(declare-fun e!2886820 () List!51686)

(assert (=> d!1457990 (= lt!1786688 e!2886820)))

(declare-fun c!792153 () Bool)

(assert (=> d!1457990 (= c!792153 (and ((_ is Cons!51562) oldBucket!40) (= (_1!29549 (h!57620 oldBucket!40)) key!4968)))))

(assert (=> d!1457990 (noDuplicateKeys!1516 oldBucket!40)))

(assert (=> d!1457990 (= (removePairForKey!1139 oldBucket!40 key!4968) lt!1786688)))

(declare-fun b!4627831 () Bool)

(assert (=> b!4627831 (= e!2886820 (t!358726 oldBucket!40))))

(declare-fun b!4627832 () Bool)

(declare-fun e!2886819 () List!51686)

(assert (=> b!4627832 (= e!2886820 e!2886819)))

(declare-fun c!792152 () Bool)

(assert (=> b!4627832 (= c!792152 ((_ is Cons!51562) oldBucket!40))))

(declare-fun b!4627834 () Bool)

(assert (=> b!4627834 (= e!2886819 Nil!51562)))

(declare-fun b!4627833 () Bool)

(assert (=> b!4627833 (= e!2886819 (Cons!51562 (h!57620 oldBucket!40) (removePairForKey!1139 (t!358726 oldBucket!40) key!4968)))))

(assert (= (and d!1457990 c!792153) b!4627831))

(assert (= (and d!1457990 (not c!792153)) b!4627832))

(assert (= (and b!4627832 c!792152) b!4627833))

(assert (= (and b!4627832 (not c!792152)) b!4627834))

(declare-fun m!5472615 () Bool)

(assert (=> d!1457990 m!5472615))

(assert (=> d!1457990 m!5471569))

(assert (=> b!4627833 m!5471607))

(assert (=> b!4627429 d!1457990))

(declare-fun b!4627835 () Bool)

(declare-fun e!2886821 () Unit!112512)

(declare-fun lt!1786691 () Unit!112512)

(assert (=> b!4627835 (= e!2886821 lt!1786691)))

(declare-fun lt!1786695 () Unit!112512)

(assert (=> b!4627835 (= lt!1786695 (lemmaContainsKeyImpliesGetValueByKeyDefined!1368 (toList!4997 lt!1786083) key!4968))))

(assert (=> b!4627835 (isDefined!8881 (getValueByKey!1466 (toList!4997 lt!1786083) key!4968))))

(declare-fun lt!1786690 () Unit!112512)

(assert (=> b!4627835 (= lt!1786690 lt!1786695)))

(assert (=> b!4627835 (= lt!1786691 (lemmaInListThenGetKeysListContains!657 (toList!4997 lt!1786083) key!4968))))

(declare-fun call!322851 () Bool)

(assert (=> b!4627835 call!322851))

(declare-fun b!4627836 () Bool)

(declare-fun e!2886823 () Bool)

(assert (=> b!4627836 (= e!2886823 (contains!14628 (keys!18171 lt!1786083) key!4968))))

(declare-fun d!1457992 () Bool)

(declare-fun e!2886822 () Bool)

(assert (=> d!1457992 e!2886822))

(declare-fun res!1941071 () Bool)

(assert (=> d!1457992 (=> res!1941071 e!2886822)))

(declare-fun e!2886824 () Bool)

(assert (=> d!1457992 (= res!1941071 e!2886824)))

(declare-fun res!1941072 () Bool)

(assert (=> d!1457992 (=> (not res!1941072) (not e!2886824))))

(declare-fun lt!1786689 () Bool)

(assert (=> d!1457992 (= res!1941072 (not lt!1786689))))

(declare-fun lt!1786696 () Bool)

(assert (=> d!1457992 (= lt!1786689 lt!1786696)))

(declare-fun lt!1786694 () Unit!112512)

(assert (=> d!1457992 (= lt!1786694 e!2886821)))

(declare-fun c!792155 () Bool)

(assert (=> d!1457992 (= c!792155 lt!1786696)))

(assert (=> d!1457992 (= lt!1786696 (containsKey!2474 (toList!4997 lt!1786083) key!4968))))

(assert (=> d!1457992 (= (contains!14623 lt!1786083 key!4968) lt!1786689)))

(declare-fun b!4627837 () Bool)

(declare-fun e!2886825 () List!51688)

(assert (=> b!4627837 (= e!2886825 (getKeysList!662 (toList!4997 lt!1786083)))))

(declare-fun b!4627838 () Bool)

(assert (=> b!4627838 (= e!2886825 (keys!18171 lt!1786083))))

(declare-fun b!4627839 () Bool)

(assert (=> b!4627839 (= e!2886824 (not (contains!14628 (keys!18171 lt!1786083) key!4968)))))

(declare-fun b!4627840 () Bool)

(assert (=> b!4627840 (= e!2886822 e!2886823)))

(declare-fun res!1941073 () Bool)

(assert (=> b!4627840 (=> (not res!1941073) (not e!2886823))))

(assert (=> b!4627840 (= res!1941073 (isDefined!8881 (getValueByKey!1466 (toList!4997 lt!1786083) key!4968)))))

(declare-fun b!4627841 () Bool)

(declare-fun e!2886826 () Unit!112512)

(assert (=> b!4627841 (= e!2886821 e!2886826)))

(declare-fun c!792156 () Bool)

(assert (=> b!4627841 (= c!792156 call!322851)))

(declare-fun b!4627842 () Bool)

(declare-fun Unit!112621 () Unit!112512)

(assert (=> b!4627842 (= e!2886826 Unit!112621)))

(declare-fun b!4627843 () Bool)

(assert (=> b!4627843 false))

(declare-fun lt!1786692 () Unit!112512)

(declare-fun lt!1786693 () Unit!112512)

(assert (=> b!4627843 (= lt!1786692 lt!1786693)))

(assert (=> b!4627843 (containsKey!2474 (toList!4997 lt!1786083) key!4968)))

(assert (=> b!4627843 (= lt!1786693 (lemmaInGetKeysListThenContainsKey!661 (toList!4997 lt!1786083) key!4968))))

(declare-fun Unit!112622 () Unit!112512)

(assert (=> b!4627843 (= e!2886826 Unit!112622)))

(declare-fun bm!322846 () Bool)

(assert (=> bm!322846 (= call!322851 (contains!14628 e!2886825 key!4968))))

(declare-fun c!792154 () Bool)

(assert (=> bm!322846 (= c!792154 c!792155)))

(assert (= (and d!1457992 c!792155) b!4627835))

(assert (= (and d!1457992 (not c!792155)) b!4627841))

(assert (= (and b!4627841 c!792156) b!4627843))

(assert (= (and b!4627841 (not c!792156)) b!4627842))

(assert (= (or b!4627835 b!4627841) bm!322846))

(assert (= (and bm!322846 c!792154) b!4627837))

(assert (= (and bm!322846 (not c!792154)) b!4627838))

(assert (= (and d!1457992 res!1941072) b!4627839))

(assert (= (and d!1457992 (not res!1941071)) b!4627840))

(assert (= (and b!4627840 res!1941073) b!4627836))

(declare-fun m!5472617 () Bool)

(assert (=> d!1457992 m!5472617))

(assert (=> b!4627843 m!5472617))

(declare-fun m!5472619 () Bool)

(assert (=> b!4627843 m!5472619))

(declare-fun m!5472621 () Bool)

(assert (=> b!4627837 m!5472621))

(declare-fun m!5472623 () Bool)

(assert (=> bm!322846 m!5472623))

(assert (=> b!4627839 m!5471705))

(assert (=> b!4627839 m!5471705))

(declare-fun m!5472627 () Bool)

(assert (=> b!4627839 m!5472627))

(declare-fun m!5472631 () Bool)

(assert (=> b!4627835 m!5472631))

(declare-fun m!5472635 () Bool)

(assert (=> b!4627835 m!5472635))

(assert (=> b!4627835 m!5472635))

(declare-fun m!5472637 () Bool)

(assert (=> b!4627835 m!5472637))

(declare-fun m!5472641 () Bool)

(assert (=> b!4627835 m!5472641))

(assert (=> b!4627840 m!5472635))

(assert (=> b!4627840 m!5472635))

(assert (=> b!4627840 m!5472637))

(assert (=> b!4627836 m!5471705))

(assert (=> b!4627836 m!5471705))

(assert (=> b!4627836 m!5472627))

(assert (=> b!4627838 m!5471705))

(assert (=> b!4627431 d!1457992))

(declare-fun bs!1025100 () Bool)

(declare-fun d!1457994 () Bool)

(assert (= bs!1025100 (and d!1457994 d!1457974)))

(declare-fun lambda!192755 () Int)

(assert (=> bs!1025100 (= lambda!192755 lambda!192753)))

(declare-fun bs!1025101 () Bool)

(assert (= bs!1025101 (and d!1457994 d!1457868)))

(assert (=> bs!1025101 (= lambda!192755 lambda!192671)))

(declare-fun bs!1025102 () Bool)

(assert (= bs!1025102 (and d!1457994 d!1457886)))

(assert (=> bs!1025102 (= lambda!192755 lambda!192702)))

(declare-fun bs!1025103 () Bool)

(assert (= bs!1025103 (and d!1457994 b!4627440)))

(assert (=> bs!1025103 (= lambda!192755 lambda!192612)))

(declare-fun bs!1025105 () Bool)

(assert (= bs!1025105 (and d!1457994 d!1457924)))

(assert (=> bs!1025105 (= lambda!192755 lambda!192724)))

(declare-fun bs!1025106 () Bool)

(assert (= bs!1025106 (and d!1457994 d!1457888)))

(assert (=> bs!1025106 (= lambda!192755 lambda!192707)))

(declare-fun bs!1025107 () Bool)

(assert (= bs!1025107 (and d!1457994 d!1457858)))

(assert (=> bs!1025107 (= lambda!192755 lambda!192667)))

(declare-fun bs!1025108 () Bool)

(assert (= bs!1025108 (and d!1457994 d!1457862)))

(assert (=> bs!1025108 (= lambda!192755 lambda!192668)))

(declare-fun bs!1025110 () Bool)

(assert (= bs!1025110 (and d!1457994 d!1457958)))

(assert (=> bs!1025110 (= lambda!192755 lambda!192732)))

(declare-fun lt!1786697 () ListMap!4301)

(assert (=> d!1457994 (invariantList!1211 (toList!4997 lt!1786697))))

(declare-fun e!2886827 () ListMap!4301)

(assert (=> d!1457994 (= lt!1786697 e!2886827)))

(declare-fun c!792157 () Bool)

(assert (=> d!1457994 (= c!792157 ((_ is Cons!51563) lt!1786086))))

(assert (=> d!1457994 (forall!10838 lt!1786086 lambda!192755)))

(assert (=> d!1457994 (= (extractMap!1572 lt!1786086) lt!1786697)))

(declare-fun b!4627844 () Bool)

(assert (=> b!4627844 (= e!2886827 (addToMapMapFromBucket!977 (_2!29550 (h!57621 lt!1786086)) (extractMap!1572 (t!358727 lt!1786086))))))

(declare-fun b!4627845 () Bool)

(assert (=> b!4627845 (= e!2886827 (ListMap!4302 Nil!51562))))

(assert (= (and d!1457994 c!792157) b!4627844))

(assert (= (and d!1457994 (not c!792157)) b!4627845))

(declare-fun m!5472669 () Bool)

(assert (=> d!1457994 m!5472669))

(declare-fun m!5472671 () Bool)

(assert (=> d!1457994 m!5472671))

(declare-fun m!5472673 () Bool)

(assert (=> b!4627844 m!5472673))

(assert (=> b!4627844 m!5472673))

(declare-fun m!5472675 () Bool)

(assert (=> b!4627844 m!5472675))

(assert (=> b!4627431 d!1457994))

(declare-fun d!1458000 () Bool)

(declare-fun lt!1786699 () List!51686)

(assert (=> d!1458000 (not (containsKey!2472 lt!1786699 key!4968))))

(declare-fun e!2886830 () List!51686)

(assert (=> d!1458000 (= lt!1786699 e!2886830)))

(declare-fun c!792160 () Bool)

(assert (=> d!1458000 (= c!792160 (and ((_ is Cons!51562) lt!1786084) (= (_1!29549 (h!57620 lt!1786084)) key!4968)))))

(assert (=> d!1458000 (noDuplicateKeys!1516 lt!1786084)))

(assert (=> d!1458000 (= (removePairForKey!1139 lt!1786084 key!4968) lt!1786699)))

(declare-fun b!4627848 () Bool)

(assert (=> b!4627848 (= e!2886830 (t!358726 lt!1786084))))

(declare-fun b!4627849 () Bool)

(declare-fun e!2886829 () List!51686)

(assert (=> b!4627849 (= e!2886830 e!2886829)))

(declare-fun c!792159 () Bool)

(assert (=> b!4627849 (= c!792159 ((_ is Cons!51562) lt!1786084))))

(declare-fun b!4627851 () Bool)

(assert (=> b!4627851 (= e!2886829 Nil!51562)))

(declare-fun b!4627850 () Bool)

(assert (=> b!4627850 (= e!2886829 (Cons!51562 (h!57620 lt!1786084) (removePairForKey!1139 (t!358726 lt!1786084) key!4968)))))

(assert (= (and d!1458000 c!792160) b!4627848))

(assert (= (and d!1458000 (not c!792160)) b!4627849))

(assert (= (and b!4627849 c!792159) b!4627850))

(assert (= (and b!4627849 (not c!792159)) b!4627851))

(declare-fun m!5472677 () Bool)

(assert (=> d!1458000 m!5472677))

(assert (=> d!1458000 m!5471925))

(declare-fun m!5472681 () Bool)

(assert (=> b!4627850 m!5472681))

(assert (=> b!4627430 d!1458000))

(declare-fun d!1458002 () Bool)

(assert (=> d!1458002 (= (tail!8151 newBucket!224) (t!358726 newBucket!224))))

(assert (=> b!4627430 d!1458002))

(declare-fun d!1458008 () Bool)

(assert (=> d!1458008 (= (tail!8151 oldBucket!40) (t!358726 oldBucket!40))))

(assert (=> b!4627430 d!1458008))

(declare-fun e!2886835 () Bool)

(declare-fun b!4627860 () Bool)

(declare-fun tp!1342202 () Bool)

(assert (=> b!4627860 (= e!2886835 (and tp_is_empty!29357 tp_is_empty!29359 tp!1342202))))

(assert (=> b!4627437 (= tp!1342199 e!2886835)))

(assert (= (and b!4627437 ((_ is Cons!51562) (t!358726 oldBucket!40))) b!4627860))

(declare-fun e!2886836 () Bool)

(declare-fun b!4627861 () Bool)

(declare-fun tp!1342203 () Bool)

(assert (=> b!4627861 (= e!2886836 (and tp_is_empty!29357 tp_is_empty!29359 tp!1342203))))

(assert (=> b!4627425 (= tp!1342198 e!2886836)))

(assert (= (and b!4627425 ((_ is Cons!51562) (t!358726 newBucket!224))) b!4627861))

(declare-fun b_lambda!170795 () Bool)

(assert (= b_lambda!170793 (or b!4627440 b_lambda!170795)))

(declare-fun bs!1025125 () Bool)

(declare-fun d!1458012 () Bool)

(assert (= bs!1025125 (and d!1458012 b!4627440)))

(assert (=> bs!1025125 (= (dynLambda!21505 lambda!192612 lt!1786100) (noDuplicateKeys!1516 (_2!29550 lt!1786100)))))

(declare-fun m!5472705 () Bool)

(assert (=> bs!1025125 m!5472705))

(assert (=> d!1457956 d!1458012))

(declare-fun b_lambda!170797 () Bool)

(assert (= b_lambda!170789 (or b!4627440 b_lambda!170797)))

(declare-fun bs!1025127 () Bool)

(declare-fun d!1458014 () Bool)

(assert (= bs!1025127 (and d!1458014 b!4627440)))

(assert (=> bs!1025127 (= (dynLambda!21505 lambda!192612 (h!57621 lt!1786086)) (noDuplicateKeys!1516 (_2!29550 (h!57621 lt!1786086))))))

(declare-fun m!5472707 () Bool)

(assert (=> bs!1025127 m!5472707))

(assert (=> b!4627451 d!1458014))

(check-sat (not d!1457938) (not b!4627643) (not b!4627612) (not b!4627609) (not bm!322813) (not b!4627671) (not b_lambda!170795) (not b!4627704) (not d!1457792) (not bm!322806) (not bm!322846) (not b!4627645) (not d!1457872) (not b!4627713) (not b!4627801) (not b!4627455) (not d!1457788) (not d!1457890) (not d!1457796) (not b!4627711) (not d!1457914) (not b!4627662) (not b!4627702) (not b!4627763) (not d!1457986) (not b!4627652) (not d!1457916) (not bm!322816) (not b_lambda!170797) (not b!4627660) (not d!1457924) (not bm!322832) (not bm!322807) (not d!1457882) (not b!4627670) (not b!4627762) (not d!1457888) (not d!1457856) (not b!4627839) (not d!1457974) (not d!1457956) (not b!4627840) tp_is_empty!29359 (not d!1457904) (not b!4627833) (not d!1457958) (not b!4627617) (not bm!322819) (not b!4627827) (not b!4627691) (not b!4627673) (not d!1457994) (not d!1457910) (not b!4627703) (not d!1457878) (not b!4627669) (not bm!322820) (not d!1458000) (not b!4627657) (not d!1457892) (not b!4627843) (not b!4627860) (not d!1457902) (not b!4627705) (not b!4627826) (not d!1457912) (not b!4627653) (not b!4627718) (not d!1457876) (not d!1457868) (not bm!322812) (not b!4627764) (not bm!322830) (not b!4627850) (not d!1457926) (not d!1457806) (not b!4627717) (not b!4627601) (not d!1457886) (not bm!322814) (not d!1457862) (not d!1457870) (not b!4627710) (not b!4627610) (not b!4627598) (not b!4627619) tp_is_empty!29357 (not d!1457884) (not d!1457864) (not b!4627452) (not d!1457920) (not d!1457858) (not b!4627644) (not b!4627730) (not b!4627658) (not b!4627621) (not b!4627767) (not bm!322815) (not b!4627828) (not b!4627611) (not b!4627714) (not d!1457790) (not bm!322817) (not b!4627835) (not bm!322811) (not b!4627649) (not bm!322808) (not d!1457970) (not b!4627795) (not bs!1025127) (not b!4627446) (not b!4627641) (not d!1457900) (not d!1457992) (not b!4627837) (not b!4627776) (not d!1457936) (not b!4627622) (not d!1457816) (not b!4627720) (not b!4627830) (not b!4627715) (not b!4627445) (not d!1457880) (not d!1457852) (not bs!1025125) (not b!4627844) (not d!1457990) (not b!4627650) (not bm!322818) (not b!4627712) (not d!1457854) (not b!4627663) (not b!4627825) (not d!1457860) (not b!4627765) (not b!4627600) (not b!4627838) (not d!1457894) (not b!4627642) (not b!4627732) (not b!4627861) (not b!4627655) (not b!4627646) (not d!1457866) (not d!1457930) (not bm!322831) (not d!1457964) (not d!1457874) (not b!4627836))
(check-sat)
