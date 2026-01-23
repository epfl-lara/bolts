; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492450 () Bool)

(assert start!492450)

(declare-fun bs!1153777 () Bool)

(declare-fun b!4787382 () Bool)

(assert (= bs!1153777 (and b!4787382 start!492450)))

(declare-fun lambda!229548 () Int)

(declare-fun lambda!229547 () Int)

(assert (=> bs!1153777 (not (= lambda!229548 lambda!229547))))

(assert (=> b!4787382 true))

(assert (=> b!4787382 true))

(assert (=> b!4787382 true))

(declare-fun b!4787376 () Bool)

(declare-fun res!2033855 () Bool)

(declare-fun e!2989101 () Bool)

(assert (=> b!4787376 (=> (not res!2033855) (not e!2989101))))

(declare-datatypes ((K!15664 0))(
  ( (K!15665 (val!20837 Int)) )
))
(declare-datatypes ((V!15910 0))(
  ( (V!15911 (val!20838 Int)) )
))
(declare-datatypes ((tuple2!56648 0))(
  ( (tuple2!56649 (_1!31618 K!15664) (_2!31618 V!15910)) )
))
(declare-datatypes ((List!54225 0))(
  ( (Nil!54101) (Cons!54101 (h!60525 tuple2!56648) (t!361675 List!54225)) )
))
(declare-datatypes ((tuple2!56650 0))(
  ( (tuple2!56651 (_1!31619 (_ BitVec 64)) (_2!31619 List!54225)) )
))
(declare-datatypes ((List!54226 0))(
  ( (Nil!54102) (Cons!54102 (h!60526 tuple2!56650) (t!361676 List!54226)) )
))
(declare-datatypes ((ListLongMap!5241 0))(
  ( (ListLongMap!5242 (toList!6819 List!54226)) )
))
(declare-fun lm!2473 () ListLongMap!5241)

(declare-fun key!5896 () K!15664)

(declare-datatypes ((ListMap!6291 0))(
  ( (ListMap!6292 (toList!6820 List!54225)) )
))
(declare-fun contains!17687 (ListMap!6291 K!15664) Bool)

(declare-fun extractMap!2397 (List!54226) ListMap!6291)

(assert (=> b!4787376 (= res!2033855 (contains!17687 (extractMap!2397 (toList!6819 lm!2473)) key!5896))))

(declare-fun b!4787377 () Bool)

(declare-fun e!2989102 () Bool)

(assert (=> b!4787377 (= e!2989102 true)))

(declare-fun lt!1948108 () Bool)

(declare-fun e!2989105 () Bool)

(assert (=> b!4787377 (= lt!1948108 e!2989105)))

(declare-fun res!2033862 () Bool)

(assert (=> b!4787377 (=> res!2033862 e!2989105)))

(declare-fun e!2989104 () Bool)

(assert (=> b!4787377 (= res!2033862 e!2989104)))

(declare-fun res!2033856 () Bool)

(assert (=> b!4787377 (=> (not res!2033856) (not e!2989104))))

(declare-fun lt!1948106 () Bool)

(assert (=> b!4787377 (= res!2033856 lt!1948106)))

(declare-fun lt!1948113 () ListMap!6291)

(assert (=> b!4787377 (= lt!1948106 (contains!17687 lt!1948113 key!5896))))

(declare-fun b!4787378 () Bool)

(declare-fun e!2989103 () Bool)

(assert (=> b!4787378 (= e!2989101 (not e!2989103))))

(declare-fun res!2033864 () Bool)

(assert (=> b!4787378 (=> res!2033864 e!2989103)))

(declare-fun value!3111 () V!15910)

(declare-fun getValue!66 (List!54226 K!15664) V!15910)

(assert (=> b!4787378 (= res!2033864 (not (= (getValue!66 (toList!6819 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!520 (List!54226 K!15664) Bool)

(assert (=> b!4787378 (containsKeyBiggerList!520 (toList!6819 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6870 0))(
  ( (HashableExt!6869 (__x!32893 Int)) )
))
(declare-fun hashF!1559 () Hashable!6870)

(declare-datatypes ((Unit!139585 0))(
  ( (Unit!139586) )
))
(declare-fun lt!1948110 () Unit!139585)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!260 (ListLongMap!5241 K!15664 Hashable!6870) Unit!139585)

(assert (=> b!4787378 (= lt!1948110 (lemmaInLongMapThenContainsKeyBiggerList!260 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2989099 () Bool)

(assert (=> b!4787378 e!2989099))

(declare-fun res!2033859 () Bool)

(assert (=> b!4787378 (=> (not res!2033859) (not e!2989099))))

(declare-fun lt!1948107 () (_ BitVec 64))

(declare-fun contains!17688 (ListLongMap!5241 (_ BitVec 64)) Bool)

(assert (=> b!4787378 (= res!2033859 (contains!17688 lm!2473 lt!1948107))))

(declare-fun hash!4892 (Hashable!6870 K!15664) (_ BitVec 64))

(assert (=> b!4787378 (= lt!1948107 (hash!4892 hashF!1559 key!5896))))

(declare-fun lt!1948112 () Unit!139585)

(declare-fun lemmaInGenericMapThenInLongMap!274 (ListLongMap!5241 K!15664 Hashable!6870) Unit!139585)

(assert (=> b!4787378 (= lt!1948112 (lemmaInGenericMapThenInLongMap!274 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4787379 () Bool)

(declare-datatypes ((Option!13017 0))(
  ( (None!13016) (Some!13016 (v!48279 tuple2!56648)) )
))
(declare-fun isDefined!10159 (Option!13017) Bool)

(declare-fun getPair!842 (List!54225 K!15664) Option!13017)

(declare-fun apply!12926 (ListLongMap!5241 (_ BitVec 64)) List!54225)

(assert (=> b!4787379 (= e!2989099 (isDefined!10159 (getPair!842 (apply!12926 lm!2473 lt!1948107) key!5896)))))

(declare-fun b!4787380 () Bool)

(declare-fun e!2989106 () Bool)

(assert (=> b!4787380 (= e!2989106 (not lt!1948106))))

(declare-fun b!4787381 () Bool)

(declare-fun e!2989100 () Bool)

(declare-fun tp!1357740 () Bool)

(assert (=> b!4787381 (= e!2989100 tp!1357740)))

(assert (=> b!4787382 (= e!2989103 e!2989102)))

(declare-fun res!2033866 () Bool)

(assert (=> b!4787382 (=> res!2033866 e!2989102)))

(declare-fun noDuplicateKeys!2313 (List!54225) Bool)

(assert (=> b!4787382 (= res!2033866 (not (noDuplicateKeys!2313 (_2!31619 (h!60526 (toList!6819 lm!2473))))))))

(assert (=> b!4787382 (= lt!1948113 (extractMap!2397 (t!361676 (toList!6819 lm!2473))))))

(declare-fun lt!1948114 () ListLongMap!5241)

(assert (=> b!4787382 (not (contains!17687 (extractMap!2397 (toList!6819 lt!1948114)) key!5896))))

(declare-fun lt!1948115 () Unit!139585)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!4 (ListLongMap!5241 K!15664 Hashable!6870) Unit!139585)

(assert (=> b!4787382 (= lt!1948115 (lemmaHashNotInLongMapThenNotInGenerated!4 lt!1948114 key!5896 hashF!1559))))

(declare-fun tail!9219 (ListLongMap!5241) ListLongMap!5241)

(assert (=> b!4787382 (= lt!1948114 (tail!9219 lm!2473))))

(declare-fun lambda!229549 () Int)

(declare-fun lt!1948104 () tuple2!56648)

(declare-fun lt!1948109 () Unit!139585)

(declare-fun forallContained!4123 (List!54225 Int tuple2!56648) Unit!139585)

(assert (=> b!4787382 (= lt!1948109 (forallContained!4123 (_2!31619 (h!60526 (toList!6819 lm!2473))) lambda!229549 lt!1948104))))

(assert (=> b!4787382 (= lt!1948104 (tuple2!56649 key!5896 value!3111))))

(declare-fun lt!1948105 () Unit!139585)

(declare-fun forallContained!4124 (List!54226 Int tuple2!56650) Unit!139585)

(assert (=> b!4787382 (= lt!1948105 (forallContained!4124 (toList!6819 lm!2473) lambda!229548 (h!60526 (toList!6819 lm!2473))))))

(declare-fun res!2033861 () Bool)

(assert (=> start!492450 (=> (not res!2033861) (not e!2989101))))

(declare-fun forall!12180 (List!54226 Int) Bool)

(assert (=> start!492450 (= res!2033861 (forall!12180 (toList!6819 lm!2473) lambda!229547))))

(assert (=> start!492450 e!2989101))

(declare-fun inv!69690 (ListLongMap!5241) Bool)

(assert (=> start!492450 (and (inv!69690 lm!2473) e!2989100)))

(assert (=> start!492450 true))

(declare-fun tp_is_empty!33361 () Bool)

(assert (=> start!492450 tp_is_empty!33361))

(declare-fun tp_is_empty!33363 () Bool)

(assert (=> start!492450 tp_is_empty!33363))

(declare-fun b!4787383 () Bool)

(assert (=> b!4787383 (= e!2989104 false)))

(declare-fun lt!1948111 () V!15910)

(declare-fun apply!12927 (ListMap!6291 K!15664) V!15910)

(assert (=> b!4787383 (= lt!1948111 (apply!12927 lt!1948113 key!5896))))

(declare-fun b!4787384 () Bool)

(declare-fun res!2033860 () Bool)

(assert (=> b!4787384 (=> (not res!2033860) (not e!2989101))))

(declare-fun allKeysSameHashInMap!2275 (ListLongMap!5241 Hashable!6870) Bool)

(assert (=> b!4787384 (= res!2033860 (allKeysSameHashInMap!2275 lm!2473 hashF!1559))))

(declare-fun b!4787385 () Bool)

(assert (=> b!4787385 (= e!2989105 e!2989106)))

(declare-fun res!2033865 () Bool)

(assert (=> b!4787385 (=> (not res!2033865) (not e!2989106))))

(declare-fun contains!17689 (List!54225 tuple2!56648) Bool)

(assert (=> b!4787385 (= res!2033865 (contains!17689 (_2!31619 (h!60526 (toList!6819 lm!2473))) lt!1948104))))

(declare-fun b!4787386 () Bool)

(declare-fun res!2033858 () Bool)

(assert (=> b!4787386 (=> res!2033858 e!2989102)))

(declare-fun addToMapMapFromBucket!1682 (List!54225 ListMap!6291) ListMap!6291)

(assert (=> b!4787386 (= res!2033858 (not (contains!17687 (addToMapMapFromBucket!1682 (_2!31619 (h!60526 (toList!6819 lm!2473))) lt!1948113) key!5896)))))

(declare-fun b!4787387 () Bool)

(declare-fun res!2033863 () Bool)

(assert (=> b!4787387 (=> res!2033863 e!2989103)))

(get-info :version)

(assert (=> b!4787387 (= res!2033863 (not ((_ is Cons!54102) (toList!6819 lm!2473))))))

(declare-fun b!4787388 () Bool)

(declare-fun res!2033857 () Bool)

(assert (=> b!4787388 (=> res!2033857 e!2989103)))

(declare-fun containsKey!3880 (List!54225 K!15664) Bool)

(assert (=> b!4787388 (= res!2033857 (not (containsKey!3880 (_2!31619 (h!60526 (toList!6819 lm!2473))) key!5896)))))

(assert (= (and start!492450 res!2033861) b!4787384))

(assert (= (and b!4787384 res!2033860) b!4787376))

(assert (= (and b!4787376 res!2033855) b!4787378))

(assert (= (and b!4787378 res!2033859) b!4787379))

(assert (= (and b!4787378 (not res!2033864)) b!4787387))

(assert (= (and b!4787387 (not res!2033863)) b!4787388))

(assert (= (and b!4787388 (not res!2033857)) b!4787382))

(assert (= (and b!4787382 (not res!2033866)) b!4787386))

(assert (= (and b!4787386 (not res!2033858)) b!4787377))

(assert (= (and b!4787377 res!2033856) b!4787383))

(assert (= (and b!4787377 (not res!2033862)) b!4787385))

(assert (= (and b!4787385 res!2033865) b!4787380))

(assert (= start!492450 b!4787381))

(declare-fun m!5766670 () Bool)

(assert (=> b!4787377 m!5766670))

(declare-fun m!5766672 () Bool)

(assert (=> b!4787386 m!5766672))

(assert (=> b!4787386 m!5766672))

(declare-fun m!5766674 () Bool)

(assert (=> b!4787386 m!5766674))

(declare-fun m!5766676 () Bool)

(assert (=> b!4787383 m!5766676))

(declare-fun m!5766678 () Bool)

(assert (=> b!4787384 m!5766678))

(declare-fun m!5766680 () Bool)

(assert (=> b!4787388 m!5766680))

(declare-fun m!5766682 () Bool)

(assert (=> b!4787376 m!5766682))

(assert (=> b!4787376 m!5766682))

(declare-fun m!5766684 () Bool)

(assert (=> b!4787376 m!5766684))

(declare-fun m!5766686 () Bool)

(assert (=> start!492450 m!5766686))

(declare-fun m!5766688 () Bool)

(assert (=> start!492450 m!5766688))

(declare-fun m!5766690 () Bool)

(assert (=> b!4787379 m!5766690))

(assert (=> b!4787379 m!5766690))

(declare-fun m!5766692 () Bool)

(assert (=> b!4787379 m!5766692))

(assert (=> b!4787379 m!5766692))

(declare-fun m!5766694 () Bool)

(assert (=> b!4787379 m!5766694))

(declare-fun m!5766696 () Bool)

(assert (=> b!4787382 m!5766696))

(declare-fun m!5766698 () Bool)

(assert (=> b!4787382 m!5766698))

(declare-fun m!5766700 () Bool)

(assert (=> b!4787382 m!5766700))

(assert (=> b!4787382 m!5766696))

(declare-fun m!5766702 () Bool)

(assert (=> b!4787382 m!5766702))

(declare-fun m!5766704 () Bool)

(assert (=> b!4787382 m!5766704))

(declare-fun m!5766706 () Bool)

(assert (=> b!4787382 m!5766706))

(declare-fun m!5766708 () Bool)

(assert (=> b!4787382 m!5766708))

(declare-fun m!5766710 () Bool)

(assert (=> b!4787382 m!5766710))

(declare-fun m!5766712 () Bool)

(assert (=> b!4787378 m!5766712))

(declare-fun m!5766714 () Bool)

(assert (=> b!4787378 m!5766714))

(declare-fun m!5766716 () Bool)

(assert (=> b!4787378 m!5766716))

(declare-fun m!5766718 () Bool)

(assert (=> b!4787378 m!5766718))

(declare-fun m!5766720 () Bool)

(assert (=> b!4787378 m!5766720))

(declare-fun m!5766722 () Bool)

(assert (=> b!4787378 m!5766722))

(declare-fun m!5766724 () Bool)

(assert (=> b!4787385 m!5766724))

(check-sat (not b!4787379) (not b!4787388) (not b!4787378) (not b!4787386) (not b!4787383) (not b!4787384) (not b!4787385) (not b!4787381) (not b!4787376) (not start!492450) (not b!4787377) (not b!4787382) tp_is_empty!33361 tp_is_empty!33363)
(check-sat)
