; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503410 () Bool)

(assert start!503410)

(declare-fun b!4838910 () Bool)

(declare-fun e!3024095 () Bool)

(declare-fun tp!1363696 () Bool)

(assert (=> b!4838910 (= e!3024095 tp!1363696)))

(declare-fun b!4838911 () Bool)

(declare-fun e!3024092 () Bool)

(declare-fun e!3024091 () Bool)

(assert (=> b!4838911 (= e!3024092 e!3024091)))

(declare-fun res!2062556 () Bool)

(assert (=> b!4838911 (=> res!2062556 e!3024091)))

(declare-datatypes ((K!17059 0))(
  ( (K!17060 (val!21953 Int)) )
))
(declare-datatypes ((V!17305 0))(
  ( (V!17306 (val!21954 Int)) )
))
(declare-datatypes ((tuple2!58778 0))(
  ( (tuple2!58779 (_1!32683 K!17059) (_2!32683 V!17305)) )
))
(declare-datatypes ((List!55432 0))(
  ( (Nil!55308) (Cons!55308 (h!61743 tuple2!58778) (t!362928 List!55432)) )
))
(declare-datatypes ((ListMap!7069 0))(
  ( (ListMap!7070 (toList!7715 List!55432)) )
))
(declare-fun lt!1983605 () ListMap!7069)

(declare-fun key!6540 () K!17059)

(declare-fun contains!19068 (ListMap!7069 K!17059) Bool)

(assert (=> b!4838911 (= res!2062556 (not (contains!19068 lt!1983605 key!6540)))))

(declare-datatypes ((tuple2!58780 0))(
  ( (tuple2!58781 (_1!32684 (_ BitVec 64)) (_2!32684 List!55432)) )
))
(declare-datatypes ((List!55433 0))(
  ( (Nil!55309) (Cons!55309 (h!61744 tuple2!58780) (t!362929 List!55433)) )
))
(declare-datatypes ((ListLongMap!6255 0))(
  ( (ListLongMap!6256 (toList!7716 List!55433)) )
))
(declare-fun lt!1983607 () ListLongMap!6255)

(declare-fun extractMap!2754 (List!55433) ListMap!7069)

(assert (=> b!4838911 (contains!19068 (extractMap!2754 (toList!7716 lt!1983607)) key!6540)))

(declare-datatypes ((Unit!144869 0))(
  ( (Unit!144870) )
))
(declare-fun lt!1983606 () Unit!144869)

(declare-datatypes ((Hashable!7396 0))(
  ( (HashableExt!7395 (__x!33671 Int)) )
))
(declare-fun hashF!1662 () Hashable!7396)

(declare-fun lemmaListContainsThenExtractedMapContains!740 (ListLongMap!6255 K!17059 Hashable!7396) Unit!144869)

(assert (=> b!4838911 (= lt!1983606 (lemmaListContainsThenExtractedMapContains!740 lt!1983607 key!6540 hashF!1662))))

(declare-fun lm!2671 () ListLongMap!6255)

(declare-fun tail!9469 (ListLongMap!6255) ListLongMap!6255)

(assert (=> b!4838911 (= lt!1983607 (tail!9469 lm!2671))))

(declare-fun b!4838912 () Bool)

(declare-fun res!2062554 () Bool)

(declare-fun e!3024094 () Bool)

(assert (=> b!4838912 (=> (not res!2062554) (not e!3024094))))

(declare-fun e!3024096 () Bool)

(assert (=> b!4838912 (= res!2062554 e!3024096)))

(declare-fun res!2062559 () Bool)

(assert (=> b!4838912 (=> res!2062559 e!3024096)))

(get-info :version)

(assert (=> b!4838912 (= res!2062559 (not ((_ is Cons!55309) (toList!7716 lm!2671))))))

(declare-fun b!4838913 () Bool)

(declare-fun res!2062558 () Bool)

(assert (=> b!4838913 (=> (not res!2062558) (not e!3024094))))

(declare-fun allKeysSameHashInMap!2712 (ListLongMap!6255 Hashable!7396) Bool)

(assert (=> b!4838913 (= res!2062558 (allKeysSameHashInMap!2712 lm!2671 hashF!1662))))

(declare-fun b!4838914 () Bool)

(declare-fun e!3024093 () Bool)

(assert (=> b!4838914 (= e!3024093 (not e!3024092))))

(declare-fun res!2062560 () Bool)

(assert (=> b!4838914 (=> res!2062560 e!3024092)))

(declare-fun containsKeyBiggerList!680 (List!55433 K!17059) Bool)

(assert (=> b!4838914 (= res!2062560 (not (containsKeyBiggerList!680 (t!362929 (toList!7716 lm!2671)) key!6540)))))

(declare-fun tail!9470 (List!55433) List!55433)

(assert (=> b!4838914 (containsKeyBiggerList!680 (tail!9470 (toList!7716 lm!2671)) key!6540)))

(declare-fun lt!1983603 () Unit!144869)

(declare-fun lemmaInBiggerListButNotHeadThenTail!40 (ListLongMap!6255 K!17059 Hashable!7396) Unit!144869)

(assert (=> b!4838914 (= lt!1983603 (lemmaInBiggerListButNotHeadThenTail!40 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4838915 () Bool)

(declare-fun res!2062553 () Bool)

(assert (=> b!4838915 (=> (not res!2062553) (not e!3024094))))

(assert (=> b!4838915 (= res!2062553 (containsKeyBiggerList!680 (toList!7716 lm!2671) key!6540))))

(declare-fun b!4838916 () Bool)

(declare-fun res!2062555 () Bool)

(assert (=> b!4838916 (=> (not res!2062555) (not e!3024094))))

(assert (=> b!4838916 (= res!2062555 ((_ is Cons!55309) (toList!7716 lm!2671)))))

(declare-fun res!2062557 () Bool)

(assert (=> start!503410 (=> (not res!2062557) (not e!3024094))))

(declare-fun lambda!240409 () Int)

(declare-fun forall!12811 (List!55433 Int) Bool)

(assert (=> start!503410 (= res!2062557 (forall!12811 (toList!7716 lm!2671) lambda!240409))))

(assert (=> start!503410 e!3024094))

(declare-fun inv!70959 (ListLongMap!6255) Bool)

(assert (=> start!503410 (and (inv!70959 lm!2671) e!3024095)))

(assert (=> start!503410 true))

(declare-fun tp_is_empty!34895 () Bool)

(assert (=> start!503410 tp_is_empty!34895))

(declare-fun b!4838909 () Bool)

(declare-fun containsKey!4556 (List!55432 K!17059) Bool)

(assert (=> b!4838909 (= e!3024096 (not (containsKey!4556 (_2!32684 (h!61744 (toList!7716 lm!2671))) key!6540)))))

(declare-fun b!4838917 () Bool)

(assert (=> b!4838917 (= e!3024091 true)))

(declare-datatypes ((Option!13599 0))(
  ( (None!13598) (Some!13598 (v!49320 V!17305)) )
))
(declare-fun lt!1983604 () Option!13599)

(declare-fun getValueByKey!2697 (List!55432 K!17059) Option!13599)

(assert (=> b!4838917 (= lt!1983604 (getValueByKey!2697 (toList!7715 lt!1983605) key!6540))))

(declare-fun b!4838918 () Bool)

(assert (=> b!4838918 (= e!3024094 e!3024093)))

(declare-fun res!2062552 () Bool)

(assert (=> b!4838918 (=> (not res!2062552) (not e!3024093))))

(declare-fun addToMapMapFromBucket!1894 (List!55432 ListMap!7069) ListMap!7069)

(assert (=> b!4838918 (= res!2062552 (= (extractMap!2754 (toList!7716 lm!2671)) (addToMapMapFromBucket!1894 (_2!32684 (h!61744 (toList!7716 lm!2671))) lt!1983605)))))

(assert (=> b!4838918 (= lt!1983605 (extractMap!2754 (t!362929 (toList!7716 lm!2671))))))

(assert (= (and start!503410 res!2062557) b!4838913))

(assert (= (and b!4838913 res!2062558) b!4838915))

(assert (= (and b!4838915 res!2062553) b!4838912))

(assert (= (and b!4838912 (not res!2062559)) b!4838909))

(assert (= (and b!4838912 res!2062554) b!4838916))

(assert (= (and b!4838916 res!2062555) b!4838918))

(assert (= (and b!4838918 res!2062552) b!4838914))

(assert (= (and b!4838914 (not res!2062560)) b!4838911))

(assert (= (and b!4838911 (not res!2062556)) b!4838917))

(assert (= start!503410 b!4838910))

(declare-fun m!5834500 () Bool)

(assert (=> b!4838914 m!5834500))

(declare-fun m!5834502 () Bool)

(assert (=> b!4838914 m!5834502))

(assert (=> b!4838914 m!5834502))

(declare-fun m!5834504 () Bool)

(assert (=> b!4838914 m!5834504))

(declare-fun m!5834506 () Bool)

(assert (=> b!4838914 m!5834506))

(declare-fun m!5834508 () Bool)

(assert (=> b!4838911 m!5834508))

(declare-fun m!5834510 () Bool)

(assert (=> b!4838911 m!5834510))

(declare-fun m!5834512 () Bool)

(assert (=> b!4838911 m!5834512))

(declare-fun m!5834514 () Bool)

(assert (=> b!4838911 m!5834514))

(assert (=> b!4838911 m!5834514))

(declare-fun m!5834516 () Bool)

(assert (=> b!4838911 m!5834516))

(declare-fun m!5834518 () Bool)

(assert (=> start!503410 m!5834518))

(declare-fun m!5834520 () Bool)

(assert (=> start!503410 m!5834520))

(declare-fun m!5834522 () Bool)

(assert (=> b!4838913 m!5834522))

(declare-fun m!5834524 () Bool)

(assert (=> b!4838909 m!5834524))

(declare-fun m!5834526 () Bool)

(assert (=> b!4838918 m!5834526))

(declare-fun m!5834528 () Bool)

(assert (=> b!4838918 m!5834528))

(declare-fun m!5834530 () Bool)

(assert (=> b!4838918 m!5834530))

(declare-fun m!5834532 () Bool)

(assert (=> b!4838915 m!5834532))

(declare-fun m!5834534 () Bool)

(assert (=> b!4838917 m!5834534))

(check-sat (not b!4838910) (not b!4838913) (not b!4838918) (not b!4838909) (not b!4838914) (not b!4838911) (not start!503410) (not b!4838915) (not b!4838917) tp_is_empty!34895)
(check-sat)
