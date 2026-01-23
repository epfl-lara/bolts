; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419468 () Bool)

(assert start!419468)

(declare-fun b!4345611 () Bool)

(declare-fun e!2704226 () Bool)

(declare-fun e!2704233 () Bool)

(assert (=> b!4345611 (= e!2704226 e!2704233)))

(declare-fun res!1784188 () Bool)

(assert (=> b!4345611 (=> res!1784188 e!2704233)))

(declare-fun lt!1559708 () Bool)

(assert (=> b!4345611 (= res!1784188 lt!1559708)))

(declare-datatypes ((K!10145 0))(
  ( (K!10146 (val!16387 Int)) )
))
(declare-datatypes ((V!10391 0))(
  ( (V!10392 (val!16388 Int)) )
))
(declare-datatypes ((tuple2!48094 0))(
  ( (tuple2!48095 (_1!27341 K!10145) (_2!27341 V!10391)) )
))
(declare-datatypes ((List!48911 0))(
  ( (Nil!48787) (Cons!48787 (h!54310 tuple2!48094) (t!355831 List!48911)) )
))
(declare-fun lt!1559704 () List!48911)

(declare-fun lt!1559714 () List!48911)

(assert (=> b!4345611 (= lt!1559704 lt!1559714)))

(declare-datatypes ((tuple2!48096 0))(
  ( (tuple2!48097 (_1!27342 (_ BitVec 64)) (_2!27342 List!48911)) )
))
(declare-datatypes ((List!48912 0))(
  ( (Nil!48788) (Cons!48788 (h!54311 tuple2!48096) (t!355832 List!48912)) )
))
(declare-datatypes ((ListLongMap!1495 0))(
  ( (ListLongMap!1496 (toList!2845 List!48912)) )
))
(declare-fun lt!1559709 () ListLongMap!1495)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun apply!11283 (ListLongMap!1495 (_ BitVec 64)) List!48911)

(assert (=> b!4345611 (= lt!1559704 (apply!11283 lt!1559709 hash!377))))

(declare-datatypes ((ListMap!2089 0))(
  ( (ListMap!2090 (toList!2846 List!48911)) )
))
(declare-fun lt!1559718 () ListMap!2089)

(declare-fun key!3918 () K!10145)

(declare-fun contains!10914 (ListMap!2089 K!10145) Bool)

(assert (=> b!4345611 (= lt!1559708 (contains!10914 lt!1559718 key!3918))))

(declare-fun lt!1559719 () ListMap!2089)

(assert (=> b!4345611 (= lt!1559708 (contains!10914 lt!1559719 key!3918))))

(declare-datatypes ((Unit!70505 0))(
  ( (Unit!70506) )
))
(declare-fun lt!1559702 () Unit!70505)

(declare-fun lemmaEquivalentThenSameContains!82 (ListMap!2089 ListMap!2089 K!10145) Unit!70505)

(assert (=> b!4345611 (= lt!1559702 (lemmaEquivalentThenSameContains!82 lt!1559719 lt!1559718 key!3918))))

(declare-fun eq!221 (ListMap!2089 ListMap!2089) Bool)

(assert (=> b!4345611 (eq!221 lt!1559719 lt!1559718)))

(declare-fun lt!1559717 () ListMap!2089)

(declare-fun -!232 (ListMap!2089 K!10145) ListMap!2089)

(assert (=> b!4345611 (= lt!1559718 (-!232 lt!1559717 key!3918))))

(declare-fun lm!1707 () ListLongMap!1495)

(declare-datatypes ((Hashable!4823 0))(
  ( (HashableExt!4822 (__x!30526 Int)) )
))
(declare-fun hashF!1247 () Hashable!4823)

(declare-fun lt!1559712 () Unit!70505)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!47 (ListLongMap!1495 (_ BitVec 64) List!48911 K!10145 Hashable!4823) Unit!70505)

(assert (=> b!4345611 (= lt!1559712 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!47 lm!1707 hash!377 lt!1559714 key!3918 hashF!1247))))

(declare-fun lt!1559699 () ListMap!2089)

(assert (=> b!4345611 (= lt!1559699 lt!1559719)))

(declare-fun extractMap!490 (List!48912) ListMap!2089)

(assert (=> b!4345611 (= lt!1559719 (extractMap!490 (toList!2845 lt!1559709)))))

(declare-fun lt!1559701 () List!48911)

(assert (=> b!4345611 (= lt!1559714 lt!1559701)))

(declare-fun +!533 (ListLongMap!1495 tuple2!48096) ListLongMap!1495)

(assert (=> b!4345611 (= lt!1559709 (+!533 lm!1707 (tuple2!48097 hash!377 lt!1559714)))))

(declare-fun newBucket!200 () List!48911)

(declare-fun tail!6929 (List!48911) List!48911)

(assert (=> b!4345611 (= lt!1559714 (tail!6929 newBucket!200))))

(declare-fun e!2704231 () Bool)

(assert (=> b!4345611 e!2704231))

(declare-fun res!1784200 () Bool)

(assert (=> b!4345611 (=> (not res!1784200) (not e!2704231))))

(declare-fun lt!1559711 () ListMap!2089)

(declare-fun lt!1559705 () ListMap!2089)

(assert (=> b!4345611 (= res!1784200 (eq!221 lt!1559711 lt!1559705))))

(declare-fun lt!1559696 () tuple2!48094)

(declare-fun +!534 (ListMap!2089 tuple2!48094) ListMap!2089)

(assert (=> b!4345611 (= lt!1559705 (+!534 lt!1559699 lt!1559696))))

(declare-fun lt!1559698 () ListMap!2089)

(declare-fun addToMapMapFromBucket!139 (List!48911 ListMap!2089) ListMap!2089)

(assert (=> b!4345611 (= lt!1559699 (addToMapMapFromBucket!139 lt!1559701 lt!1559698))))

(declare-fun lt!1559706 () Unit!70505)

(declare-fun newValue!99 () V!10391)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!50 (ListMap!2089 K!10145 V!10391 List!48911) Unit!70505)

(assert (=> b!4345611 (= lt!1559706 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!50 lt!1559698 key!3918 newValue!99 lt!1559701))))

(declare-fun lt!1559700 () ListMap!2089)

(assert (=> b!4345611 (= lt!1559700 lt!1559711)))

(assert (=> b!4345611 (= lt!1559711 (addToMapMapFromBucket!139 lt!1559701 (+!534 lt!1559698 lt!1559696)))))

(declare-fun lt!1559710 () ListMap!2089)

(assert (=> b!4345611 (= lt!1559710 lt!1559700)))

(declare-fun lt!1559715 () List!48911)

(assert (=> b!4345611 (= lt!1559700 (addToMapMapFromBucket!139 lt!1559715 lt!1559698))))

(assert (=> b!4345611 (= lt!1559710 (addToMapMapFromBucket!139 newBucket!200 lt!1559698))))

(declare-fun lt!1559716 () ListLongMap!1495)

(assert (=> b!4345611 (= lt!1559710 (extractMap!490 (toList!2845 lt!1559716)))))

(assert (=> b!4345611 (= lt!1559698 (extractMap!490 (t!355832 (toList!2845 lm!1707))))))

(declare-fun b!4345612 () Bool)

(declare-fun e!2704229 () Bool)

(declare-fun lambda!138107 () Int)

(declare-fun forall!9023 (List!48912 Int) Bool)

(assert (=> b!4345612 (= e!2704229 (forall!9023 (toList!2845 lt!1559709) lambda!138107))))

(declare-fun e!2704227 () Bool)

(declare-fun b!4345613 () Bool)

(declare-fun lt!1559694 () tuple2!48096)

(get-info :version)

(assert (=> b!4345613 (= e!2704227 (or (not ((_ is Cons!48788) (toList!2845 lm!1707))) (not (= (_1!27342 (h!54311 (toList!2845 lm!1707))) hash!377)) (= lt!1559716 (ListLongMap!1496 (Cons!48788 lt!1559694 (t!355832 (toList!2845 lm!1707)))))))))

(declare-fun b!4345614 () Bool)

(declare-fun e!2704234 () Bool)

(assert (=> b!4345614 (= e!2704234 e!2704226)))

(declare-fun res!1784197 () Bool)

(assert (=> b!4345614 (=> res!1784197 e!2704226)))

(assert (=> b!4345614 (= res!1784197 (or (not ((_ is Cons!48788) (toList!2845 lm!1707))) (not (= (_1!27342 (h!54311 (toList!2845 lm!1707))) hash!377))))))

(assert (=> b!4345614 e!2704227))

(declare-fun res!1784203 () Bool)

(assert (=> b!4345614 (=> (not res!1784203) (not e!2704227))))

(assert (=> b!4345614 (= res!1784203 (forall!9023 (toList!2845 lt!1559716) lambda!138107))))

(assert (=> b!4345614 (= lt!1559716 (+!533 lm!1707 lt!1559694))))

(assert (=> b!4345614 (= lt!1559694 (tuple2!48097 hash!377 newBucket!200))))

(declare-fun lt!1559703 () Unit!70505)

(declare-fun addValidProp!85 (ListLongMap!1495 Int (_ BitVec 64) List!48911) Unit!70505)

(assert (=> b!4345614 (= lt!1559703 (addValidProp!85 lm!1707 lambda!138107 hash!377 newBucket!200))))

(assert (=> b!4345614 (forall!9023 (toList!2845 lm!1707) lambda!138107)))

(declare-fun b!4345615 () Bool)

(declare-fun e!2704230 () Bool)

(declare-fun e!2704228 () Bool)

(assert (=> b!4345615 (= e!2704230 e!2704228)))

(declare-fun res!1784190 () Bool)

(assert (=> b!4345615 (=> (not res!1784190) (not e!2704228))))

(assert (=> b!4345615 (= res!1784190 (contains!10914 lt!1559717 key!3918))))

(assert (=> b!4345615 (= lt!1559717 (extractMap!490 (toList!2845 lm!1707)))))

(declare-fun b!4345616 () Bool)

(declare-fun res!1784199 () Bool)

(assert (=> b!4345616 (=> res!1784199 e!2704233)))

(declare-fun allKeysSameHashInMap!535 (ListLongMap!1495 Hashable!4823) Bool)

(assert (=> b!4345616 (= res!1784199 (not (allKeysSameHashInMap!535 lt!1559709 hashF!1247)))))

(declare-fun b!4345617 () Bool)

(declare-fun e!2704232 () Bool)

(declare-fun tp!1329483 () Bool)

(assert (=> b!4345617 (= e!2704232 tp!1329483)))

(declare-fun b!4345619 () Bool)

(declare-fun res!1784193 () Bool)

(assert (=> b!4345619 (=> (not res!1784193) (not e!2704230))))

(declare-fun allKeysSameHash!389 (List!48911 (_ BitVec 64) Hashable!4823) Bool)

(assert (=> b!4345619 (= res!1784193 (allKeysSameHash!389 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp!1329484 () Bool)

(declare-fun b!4345620 () Bool)

(declare-fun tp_is_empty!24963 () Bool)

(declare-fun tp_is_empty!24961 () Bool)

(declare-fun e!2704225 () Bool)

(assert (=> b!4345620 (= e!2704225 (and tp_is_empty!24961 tp_is_empty!24963 tp!1329484))))

(declare-fun b!4345621 () Bool)

(declare-fun res!1784189 () Bool)

(assert (=> b!4345621 (=> (not res!1784189) (not e!2704230))))

(declare-fun hash!1406 (Hashable!4823 K!10145) (_ BitVec 64))

(assert (=> b!4345621 (= res!1784189 (= (hash!1406 hashF!1247 key!3918) hash!377))))

(declare-fun b!4345622 () Bool)

(declare-fun res!1784195 () Bool)

(assert (=> b!4345622 (=> (not res!1784195) (not e!2704228))))

(declare-fun contains!10915 (ListLongMap!1495 (_ BitVec 64)) Bool)

(assert (=> b!4345622 (= res!1784195 (contains!10915 lm!1707 hash!377))))

(declare-fun b!4345623 () Bool)

(assert (=> b!4345623 (= e!2704231 (eq!221 lt!1559700 lt!1559705))))

(declare-fun b!4345624 () Bool)

(declare-fun res!1784201 () Bool)

(assert (=> b!4345624 (=> (not res!1784201) (not e!2704230))))

(assert (=> b!4345624 (= res!1784201 (allKeysSameHashInMap!535 lm!1707 hashF!1247))))

(declare-fun b!4345625 () Bool)

(declare-fun res!1784196 () Bool)

(assert (=> b!4345625 (=> (not res!1784196) (not e!2704227))))

(assert (=> b!4345625 (= res!1784196 (forall!9023 (toList!2845 lt!1559716) lambda!138107))))

(declare-fun b!4345626 () Bool)

(declare-fun res!1784202 () Bool)

(assert (=> b!4345626 (=> res!1784202 e!2704234)))

(declare-fun noDuplicateKeys!431 (List!48911) Bool)

(assert (=> b!4345626 (= res!1784202 (not (noDuplicateKeys!431 newBucket!200)))))

(declare-fun b!4345627 () Bool)

(assert (=> b!4345627 (= e!2704228 (not e!2704234))))

(declare-fun res!1784194 () Bool)

(assert (=> b!4345627 (=> res!1784194 e!2704234)))

(assert (=> b!4345627 (= res!1784194 (not (= newBucket!200 lt!1559715)))))

(assert (=> b!4345627 (= lt!1559715 (Cons!48787 lt!1559696 lt!1559701))))

(declare-fun lt!1559707 () List!48911)

(declare-fun removePairForKey!401 (List!48911 K!10145) List!48911)

(assert (=> b!4345627 (= lt!1559701 (removePairForKey!401 lt!1559707 key!3918))))

(assert (=> b!4345627 (= lt!1559696 (tuple2!48095 key!3918 newValue!99))))

(declare-fun lt!1559695 () Unit!70505)

(declare-fun lt!1559713 () tuple2!48096)

(declare-fun forallContained!1673 (List!48912 Int tuple2!48096) Unit!70505)

(assert (=> b!4345627 (= lt!1559695 (forallContained!1673 (toList!2845 lm!1707) lambda!138107 lt!1559713))))

(declare-fun contains!10916 (List!48912 tuple2!48096) Bool)

(assert (=> b!4345627 (contains!10916 (toList!2845 lm!1707) lt!1559713)))

(assert (=> b!4345627 (= lt!1559713 (tuple2!48097 hash!377 lt!1559707))))

(declare-fun lt!1559720 () Unit!70505)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!278 (List!48912 (_ BitVec 64) List!48911) Unit!70505)

(assert (=> b!4345627 (= lt!1559720 (lemmaGetValueByKeyImpliesContainsTuple!278 (toList!2845 lm!1707) hash!377 lt!1559707))))

(assert (=> b!4345627 (= lt!1559707 (apply!11283 lm!1707 hash!377))))

(declare-fun b!4345628 () Bool)

(declare-fun res!1784192 () Bool)

(assert (=> b!4345628 (=> res!1784192 e!2704233)))

(assert (=> b!4345628 (= res!1784192 (not (forall!9023 (toList!2845 lt!1559709) lambda!138107)))))

(declare-fun res!1784191 () Bool)

(assert (=> start!419468 (=> (not res!1784191) (not e!2704230))))

(assert (=> start!419468 (= res!1784191 (forall!9023 (toList!2845 lm!1707) lambda!138107))))

(assert (=> start!419468 e!2704230))

(assert (=> start!419468 e!2704225))

(assert (=> start!419468 true))

(declare-fun inv!64331 (ListLongMap!1495) Bool)

(assert (=> start!419468 (and (inv!64331 lm!1707) e!2704232)))

(assert (=> start!419468 tp_is_empty!24961))

(assert (=> start!419468 tp_is_empty!24963))

(declare-fun b!4345618 () Bool)

(assert (=> b!4345618 (= e!2704233 e!2704229)))

(declare-fun res!1784198 () Bool)

(assert (=> b!4345618 (=> res!1784198 e!2704229)))

(declare-fun lt!1559697 () Bool)

(assert (=> b!4345618 (= res!1784198 (and (or (not lt!1559697) (not (= newBucket!200 (Cons!48787 lt!1559696 lt!1559704)))) (or lt!1559697 (not (= newBucket!200 (Cons!48787 lt!1559696 Nil!48787))))))))

(assert (=> b!4345618 (= lt!1559697 (contains!10915 lt!1559709 hash!377))))

(assert (= (and start!419468 res!1784191) b!4345624))

(assert (= (and b!4345624 res!1784201) b!4345621))

(assert (= (and b!4345621 res!1784189) b!4345619))

(assert (= (and b!4345619 res!1784193) b!4345615))

(assert (= (and b!4345615 res!1784190) b!4345622))

(assert (= (and b!4345622 res!1784195) b!4345627))

(assert (= (and b!4345627 (not res!1784194)) b!4345626))

(assert (= (and b!4345626 (not res!1784202)) b!4345614))

(assert (= (and b!4345614 res!1784203) b!4345625))

(assert (= (and b!4345625 res!1784196) b!4345613))

(assert (= (and b!4345614 (not res!1784197)) b!4345611))

(assert (= (and b!4345611 res!1784200) b!4345623))

(assert (= (and b!4345611 (not res!1784188)) b!4345628))

(assert (= (and b!4345628 (not res!1784192)) b!4345616))

(assert (= (and b!4345616 (not res!1784199)) b!4345618))

(assert (= (and b!4345618 (not res!1784198)) b!4345612))

(assert (= (and start!419468 ((_ is Cons!48787) newBucket!200)) b!4345620))

(assert (= start!419468 b!4345617))

(declare-fun m!4952925 () Bool)

(assert (=> b!4345614 m!4952925))

(declare-fun m!4952927 () Bool)

(assert (=> b!4345614 m!4952927))

(declare-fun m!4952929 () Bool)

(assert (=> b!4345614 m!4952929))

(declare-fun m!4952931 () Bool)

(assert (=> b!4345614 m!4952931))

(declare-fun m!4952933 () Bool)

(assert (=> b!4345628 m!4952933))

(declare-fun m!4952935 () Bool)

(assert (=> b!4345611 m!4952935))

(declare-fun m!4952937 () Bool)

(assert (=> b!4345611 m!4952937))

(declare-fun m!4952939 () Bool)

(assert (=> b!4345611 m!4952939))

(declare-fun m!4952941 () Bool)

(assert (=> b!4345611 m!4952941))

(declare-fun m!4952943 () Bool)

(assert (=> b!4345611 m!4952943))

(declare-fun m!4952945 () Bool)

(assert (=> b!4345611 m!4952945))

(declare-fun m!4952947 () Bool)

(assert (=> b!4345611 m!4952947))

(declare-fun m!4952949 () Bool)

(assert (=> b!4345611 m!4952949))

(declare-fun m!4952951 () Bool)

(assert (=> b!4345611 m!4952951))

(declare-fun m!4952953 () Bool)

(assert (=> b!4345611 m!4952953))

(declare-fun m!4952955 () Bool)

(assert (=> b!4345611 m!4952955))

(declare-fun m!4952957 () Bool)

(assert (=> b!4345611 m!4952957))

(declare-fun m!4952959 () Bool)

(assert (=> b!4345611 m!4952959))

(declare-fun m!4952961 () Bool)

(assert (=> b!4345611 m!4952961))

(declare-fun m!4952963 () Bool)

(assert (=> b!4345611 m!4952963))

(declare-fun m!4952965 () Bool)

(assert (=> b!4345611 m!4952965))

(declare-fun m!4952967 () Bool)

(assert (=> b!4345611 m!4952967))

(declare-fun m!4952969 () Bool)

(assert (=> b!4345611 m!4952969))

(assert (=> b!4345611 m!4952963))

(declare-fun m!4952971 () Bool)

(assert (=> b!4345611 m!4952971))

(declare-fun m!4952973 () Bool)

(assert (=> b!4345611 m!4952973))

(declare-fun m!4952975 () Bool)

(assert (=> b!4345615 m!4952975))

(declare-fun m!4952977 () Bool)

(assert (=> b!4345615 m!4952977))

(declare-fun m!4952979 () Bool)

(assert (=> b!4345622 m!4952979))

(assert (=> b!4345612 m!4952933))

(declare-fun m!4952981 () Bool)

(assert (=> b!4345618 m!4952981))

(declare-fun m!4952983 () Bool)

(assert (=> b!4345621 m!4952983))

(assert (=> start!419468 m!4952931))

(declare-fun m!4952985 () Bool)

(assert (=> start!419468 m!4952985))

(declare-fun m!4952987 () Bool)

(assert (=> b!4345619 m!4952987))

(assert (=> b!4345625 m!4952925))

(declare-fun m!4952989 () Bool)

(assert (=> b!4345623 m!4952989))

(declare-fun m!4952991 () Bool)

(assert (=> b!4345627 m!4952991))

(declare-fun m!4952993 () Bool)

(assert (=> b!4345627 m!4952993))

(declare-fun m!4952995 () Bool)

(assert (=> b!4345627 m!4952995))

(declare-fun m!4952997 () Bool)

(assert (=> b!4345627 m!4952997))

(declare-fun m!4952999 () Bool)

(assert (=> b!4345627 m!4952999))

(declare-fun m!4953001 () Bool)

(assert (=> b!4345616 m!4953001))

(declare-fun m!4953003 () Bool)

(assert (=> b!4345624 m!4953003))

(declare-fun m!4953005 () Bool)

(assert (=> b!4345626 m!4953005))

(check-sat (not b!4345627) (not b!4345614) tp_is_empty!24963 tp_is_empty!24961 (not b!4345625) (not start!419468) (not b!4345621) (not b!4345612) (not b!4345624) (not b!4345615) (not b!4345622) (not b!4345620) (not b!4345616) (not b!4345623) (not b!4345611) (not b!4345628) (not b!4345617) (not b!4345618) (not b!4345626) (not b!4345619))
(check-sat)
