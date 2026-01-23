; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!454256 () Bool)

(assert start!454256)

(declare-fun b!4565651 () Bool)

(declare-fun res!1905812 () Bool)

(declare-fun e!2846291 () Bool)

(assert (=> b!4565651 (=> res!1905812 e!2846291)))

(declare-datatypes ((K!12275 0))(
  ( (K!12276 (val!18091 Int)) )
))
(declare-datatypes ((V!12521 0))(
  ( (V!12522 (val!18092 Int)) )
))
(declare-datatypes ((tuple2!51450 0))(
  ( (tuple2!51451 (_1!29019 K!12275) (_2!29019 V!12521)) )
))
(declare-datatypes ((List!51022 0))(
  ( (Nil!50898) (Cons!50898 (h!56817 tuple2!51450) (t!358000 List!51022)) )
))
(declare-datatypes ((tuple2!51452 0))(
  ( (tuple2!51453 (_1!29020 (_ BitVec 64)) (_2!29020 List!51022)) )
))
(declare-datatypes ((List!51023 0))(
  ( (Nil!50899) (Cons!50899 (h!56818 tuple2!51452) (t!358001 List!51023)) )
))
(declare-datatypes ((ListLongMap!3147 0))(
  ( (ListLongMap!3148 (toList!4515 List!51023)) )
))
(declare-fun lm!1477 () ListLongMap!3147)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4565651 (= res!1905812 (or ((_ is Nil!50899) (toList!4515 lm!1477)) (= (_1!29020 (h!56818 (toList!4515 lm!1477))) hash!344)))))

(declare-fun b!4565652 () Bool)

(declare-fun e!2846297 () Bool)

(declare-fun e!2846298 () Bool)

(assert (=> b!4565652 (= e!2846297 e!2846298)))

(declare-fun res!1905813 () Bool)

(assert (=> b!4565652 (=> res!1905813 e!2846298)))

(declare-fun key!3287 () K!12275)

(declare-fun containsKeyBiggerList!224 (List!51023 K!12275) Bool)

(assert (=> b!4565652 (= res!1905813 (not (containsKeyBiggerList!224 (t!358001 (toList!4515 lm!1477)) key!3287)))))

(declare-fun lt!1734870 () ListLongMap!3147)

(assert (=> b!4565652 (containsKeyBiggerList!224 (toList!4515 lt!1734870) key!3287)))

(declare-datatypes ((Hashable!5649 0))(
  ( (HashableExt!5648 (__x!31352 Int)) )
))
(declare-fun hashF!1107 () Hashable!5649)

(declare-datatypes ((Unit!103209 0))(
  ( (Unit!103210) )
))
(declare-fun lt!1734863 () Unit!103209)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!136 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> b!4565652 (= lt!1734863 (lemmaInLongMapThenContainsKeyBiggerList!136 lt!1734870 key!3287 hashF!1107))))

(declare-fun b!4565653 () Bool)

(declare-fun e!2846292 () Bool)

(assert (=> b!4565653 (= e!2846298 e!2846292)))

(declare-fun res!1905814 () Bool)

(assert (=> b!4565653 (=> res!1905814 e!2846292)))

(declare-datatypes ((ListMap!3777 0))(
  ( (ListMap!3778 (toList!4516 List!51022)) )
))
(declare-fun contains!13765 (ListMap!3777 K!12275) Bool)

(declare-fun extractMap!1310 (List!51023) ListMap!3777)

(assert (=> b!4565653 (= res!1905814 (not (contains!13765 (extractMap!1310 (t!358001 (toList!4515 lm!1477))) key!3287)))))

(declare-fun lt!1734857 () ListMap!3777)

(assert (=> b!4565653 (contains!13765 lt!1734857 key!3287)))

(assert (=> b!4565653 (= lt!1734857 (extractMap!1310 (toList!4515 lt!1734870)))))

(declare-fun lt!1734869 () Unit!103209)

(declare-fun lemmaListContainsThenExtractedMapContains!210 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> b!4565653 (= lt!1734869 (lemmaListContainsThenExtractedMapContains!210 lt!1734870 key!3287 hashF!1107))))

(declare-fun b!4565655 () Bool)

(declare-fun res!1905809 () Bool)

(declare-fun e!2846293 () Bool)

(assert (=> b!4565655 (=> res!1905809 e!2846293)))

(declare-fun lt!1734871 () tuple2!51452)

(declare-fun contains!13766 (List!51023 tuple2!51452) Bool)

(assert (=> b!4565655 (= res!1905809 (not (contains!13766 (t!358001 (toList!4515 lm!1477)) lt!1734871)))))

(declare-fun b!4565656 () Bool)

(assert (=> b!4565656 (= e!2846291 e!2846293)))

(declare-fun res!1905811 () Bool)

(assert (=> b!4565656 (=> res!1905811 e!2846293)))

(declare-fun contains!13767 (ListLongMap!3147 (_ BitVec 64)) Bool)

(assert (=> b!4565656 (= res!1905811 (not (contains!13767 lt!1734870 hash!344)))))

(declare-fun tail!7883 (ListLongMap!3147) ListLongMap!3147)

(assert (=> b!4565656 (= lt!1734870 (tail!7883 lm!1477))))

(declare-fun b!4565657 () Bool)

(declare-fun e!2846290 () Bool)

(assert (=> b!4565657 (= e!2846290 (not e!2846291))))

(declare-fun res!1905801 () Bool)

(assert (=> b!4565657 (=> res!1905801 e!2846291)))

(declare-fun lt!1734866 () List!51022)

(declare-fun newBucket!178 () List!51022)

(declare-fun removePairForKey!881 (List!51022 K!12275) List!51022)

(assert (=> b!4565657 (= res!1905801 (not (= newBucket!178 (removePairForKey!881 lt!1734866 key!3287))))))

(declare-fun lambda!180813 () Int)

(declare-fun lt!1734864 () Unit!103209)

(declare-fun forallContained!2721 (List!51023 Int tuple2!51452) Unit!103209)

(assert (=> b!4565657 (= lt!1734864 (forallContained!2721 (toList!4515 lm!1477) lambda!180813 lt!1734871))))

(assert (=> b!4565657 (contains!13766 (toList!4515 lm!1477) lt!1734871)))

(assert (=> b!4565657 (= lt!1734871 (tuple2!51453 hash!344 lt!1734866))))

(declare-fun lt!1734865 () Unit!103209)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!766 (List!51023 (_ BitVec 64) List!51022) Unit!103209)

(assert (=> b!4565657 (= lt!1734865 (lemmaGetValueByKeyImpliesContainsTuple!766 (toList!4515 lm!1477) hash!344 lt!1734866))))

(declare-fun apply!11991 (ListLongMap!3147 (_ BitVec 64)) List!51022)

(assert (=> b!4565657 (= lt!1734866 (apply!11991 lm!1477 hash!344))))

(declare-fun lt!1734862 () (_ BitVec 64))

(assert (=> b!4565657 (contains!13767 lm!1477 lt!1734862)))

(declare-fun lt!1734872 () Unit!103209)

(declare-fun lemmaInGenMapThenLongMapContainsHash!328 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> b!4565657 (= lt!1734872 (lemmaInGenMapThenLongMapContainsHash!328 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4565658 () Bool)

(assert (=> b!4565658 (= e!2846293 e!2846297)))

(declare-fun res!1905803 () Bool)

(assert (=> b!4565658 (=> res!1905803 e!2846297)))

(declare-fun lt!1734868 () Bool)

(assert (=> b!4565658 (= res!1905803 lt!1734868)))

(declare-fun lt!1734858 () Unit!103209)

(declare-fun e!2846296 () Unit!103209)

(assert (=> b!4565658 (= lt!1734858 e!2846296)))

(declare-fun c!780776 () Bool)

(assert (=> b!4565658 (= c!780776 lt!1734868)))

(declare-fun containsKey!2004 (List!51022 K!12275) Bool)

(assert (=> b!4565658 (= lt!1734868 (not (containsKey!2004 lt!1734866 key!3287)))))

(declare-fun b!4565659 () Bool)

(declare-fun e!2846301 () Bool)

(declare-fun tp!1339422 () Bool)

(assert (=> b!4565659 (= e!2846301 tp!1339422)))

(declare-fun b!4565660 () Bool)

(declare-fun res!1905810 () Bool)

(declare-fun e!2846294 () Bool)

(assert (=> b!4565660 (=> (not res!1905810) (not e!2846294))))

(declare-fun allKeysSameHashInMap!1361 (ListLongMap!3147 Hashable!5649) Bool)

(assert (=> b!4565660 (= res!1905810 (allKeysSameHashInMap!1361 lm!1477 hashF!1107))))

(declare-fun b!4565661 () Bool)

(declare-fun e!2846300 () Bool)

(assert (=> b!4565661 (= e!2846300 e!2846290)))

(declare-fun res!1905802 () Bool)

(assert (=> b!4565661 (=> (not res!1905802) (not e!2846290))))

(assert (=> b!4565661 (= res!1905802 (= lt!1734862 hash!344))))

(declare-fun hash!3061 (Hashable!5649 K!12275) (_ BitVec 64))

(assert (=> b!4565661 (= lt!1734862 (hash!3061 hashF!1107 key!3287))))

(declare-fun b!4565662 () Bool)

(declare-fun Unit!103211 () Unit!103209)

(assert (=> b!4565662 (= e!2846296 Unit!103211)))

(declare-fun b!4565663 () Bool)

(declare-fun res!1905815 () Bool)

(assert (=> b!4565663 (=> res!1905815 e!2846291)))

(declare-fun noDuplicateKeys!1254 (List!51022) Bool)

(assert (=> b!4565663 (= res!1905815 (not (noDuplicateKeys!1254 newBucket!178)))))

(declare-fun b!4565664 () Bool)

(declare-fun e!2846299 () Bool)

(assert (=> b!4565664 (= e!2846292 e!2846299)))

(declare-fun res!1905806 () Bool)

(assert (=> b!4565664 (=> res!1905806 e!2846299)))

(declare-fun lt!1734867 () ListMap!3777)

(declare-fun lt!1734860 () ListMap!3777)

(declare-fun eq!693 (ListMap!3777 ListMap!3777) Bool)

(assert (=> b!4565664 (= res!1905806 (not (eq!693 lt!1734867 lt!1734860)))))

(declare-fun +!1676 (ListLongMap!3147 tuple2!51452) ListLongMap!3147)

(declare-fun head!9504 (ListLongMap!3147) tuple2!51452)

(assert (=> b!4565664 (= lt!1734867 (extractMap!1310 (toList!4515 (+!1676 lt!1734870 (head!9504 lm!1477)))))))

(declare-fun -!462 (ListMap!3777 K!12275) ListMap!3777)

(assert (=> b!4565664 (eq!693 (extractMap!1310 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)))) (-!462 lt!1734857 key!3287))))

(declare-fun lt!1734861 () Unit!103209)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!201 (ListLongMap!3147 (_ BitVec 64) List!51022 K!12275 Hashable!5649) Unit!103209)

(assert (=> b!4565664 (= lt!1734861 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!201 lt!1734870 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4565665 () Bool)

(declare-fun res!1905805 () Bool)

(assert (=> b!4565665 (=> res!1905805 e!2846293)))

(assert (=> b!4565665 (= res!1905805 (not (= (apply!11991 lt!1734870 hash!344) lt!1734866)))))

(declare-fun b!4565666 () Bool)

(declare-fun res!1905807 () Bool)

(assert (=> b!4565666 (=> (not res!1905807) (not e!2846290))))

(declare-fun allKeysSameHash!1108 (List!51022 (_ BitVec 64) Hashable!5649) Bool)

(assert (=> b!4565666 (= res!1905807 (allKeysSameHash!1108 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4565667 () Bool)

(declare-fun Unit!103212 () Unit!103209)

(assert (=> b!4565667 (= e!2846296 Unit!103212)))

(declare-fun lt!1734859 () Unit!103209)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!236 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> b!4565667 (= lt!1734859 (lemmaNotInItsHashBucketThenNotInMap!236 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4565667 false))

(declare-fun tp_is_empty!28293 () Bool)

(declare-fun e!2846295 () Bool)

(declare-fun tp_is_empty!28295 () Bool)

(declare-fun b!4565654 () Bool)

(declare-fun tp!1339423 () Bool)

(assert (=> b!4565654 (= e!2846295 (and tp_is_empty!28293 tp_is_empty!28295 tp!1339423))))

(declare-fun res!1905804 () Bool)

(assert (=> start!454256 (=> (not res!1905804) (not e!2846294))))

(declare-fun forall!10458 (List!51023 Int) Bool)

(assert (=> start!454256 (= res!1905804 (forall!10458 (toList!4515 lm!1477) lambda!180813))))

(assert (=> start!454256 e!2846294))

(assert (=> start!454256 true))

(declare-fun inv!66459 (ListLongMap!3147) Bool)

(assert (=> start!454256 (and (inv!66459 lm!1477) e!2846301)))

(assert (=> start!454256 tp_is_empty!28293))

(assert (=> start!454256 e!2846295))

(declare-fun b!4565668 () Bool)

(assert (=> b!4565668 (= e!2846299 (eq!693 lt!1734860 lt!1734867))))

(declare-fun b!4565669 () Bool)

(assert (=> b!4565669 (= e!2846294 e!2846300)))

(declare-fun res!1905808 () Bool)

(assert (=> b!4565669 (=> (not res!1905808) (not e!2846300))))

(assert (=> b!4565669 (= res!1905808 (contains!13765 lt!1734860 key!3287))))

(assert (=> b!4565669 (= lt!1734860 (extractMap!1310 (toList!4515 lm!1477)))))

(assert (= (and start!454256 res!1905804) b!4565660))

(assert (= (and b!4565660 res!1905810) b!4565669))

(assert (= (and b!4565669 res!1905808) b!4565661))

(assert (= (and b!4565661 res!1905802) b!4565666))

(assert (= (and b!4565666 res!1905807) b!4565657))

(assert (= (and b!4565657 (not res!1905801)) b!4565663))

(assert (= (and b!4565663 (not res!1905815)) b!4565651))

(assert (= (and b!4565651 (not res!1905812)) b!4565656))

(assert (= (and b!4565656 (not res!1905811)) b!4565665))

(assert (= (and b!4565665 (not res!1905805)) b!4565655))

(assert (= (and b!4565655 (not res!1905809)) b!4565658))

(assert (= (and b!4565658 c!780776) b!4565667))

(assert (= (and b!4565658 (not c!780776)) b!4565662))

(assert (= (and b!4565658 (not res!1905803)) b!4565652))

(assert (= (and b!4565652 (not res!1905813)) b!4565653))

(assert (= (and b!4565653 (not res!1905814)) b!4565664))

(assert (= (and b!4565664 (not res!1905806)) b!4565668))

(assert (= start!454256 b!4565659))

(assert (= (and start!454256 ((_ is Cons!50898) newBucket!178)) b!4565654))

(declare-fun m!5360029 () Bool)

(assert (=> b!4565657 m!5360029))

(declare-fun m!5360031 () Bool)

(assert (=> b!4565657 m!5360031))

(declare-fun m!5360033 () Bool)

(assert (=> b!4565657 m!5360033))

(declare-fun m!5360035 () Bool)

(assert (=> b!4565657 m!5360035))

(declare-fun m!5360037 () Bool)

(assert (=> b!4565657 m!5360037))

(declare-fun m!5360039 () Bool)

(assert (=> b!4565657 m!5360039))

(declare-fun m!5360041 () Bool)

(assert (=> b!4565657 m!5360041))

(declare-fun m!5360043 () Bool)

(assert (=> b!4565663 m!5360043))

(declare-fun m!5360045 () Bool)

(assert (=> b!4565667 m!5360045))

(declare-fun m!5360047 () Bool)

(assert (=> b!4565665 m!5360047))

(declare-fun m!5360049 () Bool)

(assert (=> b!4565658 m!5360049))

(declare-fun m!5360051 () Bool)

(assert (=> b!4565668 m!5360051))

(declare-fun m!5360053 () Bool)

(assert (=> b!4565669 m!5360053))

(declare-fun m!5360055 () Bool)

(assert (=> b!4565669 m!5360055))

(declare-fun m!5360057 () Bool)

(assert (=> b!4565660 m!5360057))

(declare-fun m!5360059 () Bool)

(assert (=> b!4565664 m!5360059))

(declare-fun m!5360061 () Bool)

(assert (=> b!4565664 m!5360061))

(declare-fun m!5360063 () Bool)

(assert (=> b!4565664 m!5360063))

(declare-fun m!5360065 () Bool)

(assert (=> b!4565664 m!5360065))

(declare-fun m!5360067 () Bool)

(assert (=> b!4565664 m!5360067))

(assert (=> b!4565664 m!5360061))

(declare-fun m!5360069 () Bool)

(assert (=> b!4565664 m!5360069))

(declare-fun m!5360071 () Bool)

(assert (=> b!4565664 m!5360071))

(assert (=> b!4565664 m!5360063))

(declare-fun m!5360073 () Bool)

(assert (=> b!4565664 m!5360073))

(assert (=> b!4565664 m!5360073))

(declare-fun m!5360075 () Bool)

(assert (=> b!4565664 m!5360075))

(declare-fun m!5360077 () Bool)

(assert (=> b!4565656 m!5360077))

(declare-fun m!5360079 () Bool)

(assert (=> b!4565656 m!5360079))

(declare-fun m!5360081 () Bool)

(assert (=> b!4565655 m!5360081))

(declare-fun m!5360083 () Bool)

(assert (=> b!4565666 m!5360083))

(declare-fun m!5360085 () Bool)

(assert (=> b!4565661 m!5360085))

(declare-fun m!5360087 () Bool)

(assert (=> start!454256 m!5360087))

(declare-fun m!5360089 () Bool)

(assert (=> start!454256 m!5360089))

(declare-fun m!5360091 () Bool)

(assert (=> b!4565653 m!5360091))

(declare-fun m!5360093 () Bool)

(assert (=> b!4565653 m!5360093))

(declare-fun m!5360095 () Bool)

(assert (=> b!4565653 m!5360095))

(declare-fun m!5360097 () Bool)

(assert (=> b!4565653 m!5360097))

(assert (=> b!4565653 m!5360095))

(declare-fun m!5360099 () Bool)

(assert (=> b!4565653 m!5360099))

(declare-fun m!5360101 () Bool)

(assert (=> b!4565652 m!5360101))

(declare-fun m!5360103 () Bool)

(assert (=> b!4565652 m!5360103))

(declare-fun m!5360105 () Bool)

(assert (=> b!4565652 m!5360105))

(check-sat (not b!4565659) (not b!4565664) (not b!4565661) (not b!4565663) tp_is_empty!28295 (not b!4565653) (not b!4565655) (not b!4565669) (not b!4565666) (not b!4565652) (not b!4565657) (not start!454256) (not b!4565668) tp_is_empty!28293 (not b!4565667) (not b!4565660) (not b!4565658) (not b!4565654) (not b!4565665) (not b!4565656))
(check-sat)
(get-model)

(declare-fun d!1423091 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8538 (List!51022) (InoxSet tuple2!51450))

(assert (=> d!1423091 (= (eq!693 lt!1734860 lt!1734867) (= (content!8538 (toList!4516 lt!1734860)) (content!8538 (toList!4516 lt!1734867))))))

(declare-fun bs!946316 () Bool)

(assert (= bs!946316 d!1423091))

(declare-fun m!5360107 () Bool)

(assert (=> bs!946316 m!5360107))

(declare-fun m!5360109 () Bool)

(assert (=> bs!946316 m!5360109))

(assert (=> b!4565668 d!1423091))

(declare-fun bs!946317 () Bool)

(declare-fun d!1423093 () Bool)

(assert (= bs!946317 (and d!1423093 start!454256)))

(declare-fun lambda!180816 () Int)

(assert (=> bs!946317 (not (= lambda!180816 lambda!180813))))

(assert (=> d!1423093 true))

(assert (=> d!1423093 (= (allKeysSameHashInMap!1361 lm!1477 hashF!1107) (forall!10458 (toList!4515 lm!1477) lambda!180816))))

(declare-fun bs!946318 () Bool)

(assert (= bs!946318 d!1423093))

(declare-fun m!5360111 () Bool)

(assert (=> bs!946318 m!5360111))

(assert (=> b!4565660 d!1423093))

(declare-fun bs!946319 () Bool)

(declare-fun d!1423095 () Bool)

(assert (= bs!946319 (and d!1423095 start!454256)))

(declare-fun lambda!180819 () Int)

(assert (=> bs!946319 (= lambda!180819 lambda!180813)))

(declare-fun bs!946320 () Bool)

(assert (= bs!946320 (and d!1423095 d!1423093)))

(assert (=> bs!946320 (not (= lambda!180819 lambda!180816))))

(assert (=> d!1423095 (not (contains!13765 (extractMap!1310 (toList!4515 lm!1477)) key!3287))))

(declare-fun lt!1734875 () Unit!103209)

(declare-fun choose!30305 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> d!1423095 (= lt!1734875 (choose!30305 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1423095 (forall!10458 (toList!4515 lm!1477) lambda!180819)))

(assert (=> d!1423095 (= (lemmaNotInItsHashBucketThenNotInMap!236 lm!1477 key!3287 hashF!1107) lt!1734875)))

(declare-fun bs!946321 () Bool)

(assert (= bs!946321 d!1423095))

(assert (=> bs!946321 m!5360055))

(assert (=> bs!946321 m!5360055))

(declare-fun m!5360113 () Bool)

(assert (=> bs!946321 m!5360113))

(declare-fun m!5360115 () Bool)

(assert (=> bs!946321 m!5360115))

(declare-fun m!5360117 () Bool)

(assert (=> bs!946321 m!5360117))

(assert (=> b!4565667 d!1423095))

(declare-fun d!1423099 () Bool)

(declare-fun res!1905826 () Bool)

(declare-fun e!2846312 () Bool)

(assert (=> d!1423099 (=> res!1905826 e!2846312)))

(assert (=> d!1423099 (= res!1905826 ((_ is Nil!50899) (toList!4515 lm!1477)))))

(assert (=> d!1423099 (= (forall!10458 (toList!4515 lm!1477) lambda!180813) e!2846312)))

(declare-fun b!4565682 () Bool)

(declare-fun e!2846313 () Bool)

(assert (=> b!4565682 (= e!2846312 e!2846313)))

(declare-fun res!1905827 () Bool)

(assert (=> b!4565682 (=> (not res!1905827) (not e!2846313))))

(declare-fun dynLambda!21295 (Int tuple2!51452) Bool)

(assert (=> b!4565682 (= res!1905827 (dynLambda!21295 lambda!180813 (h!56818 (toList!4515 lm!1477))))))

(declare-fun b!4565683 () Bool)

(assert (=> b!4565683 (= e!2846313 (forall!10458 (t!358001 (toList!4515 lm!1477)) lambda!180813))))

(assert (= (and d!1423099 (not res!1905826)) b!4565682))

(assert (= (and b!4565682 res!1905827) b!4565683))

(declare-fun b_lambda!163095 () Bool)

(assert (=> (not b_lambda!163095) (not b!4565682)))

(declare-fun m!5360133 () Bool)

(assert (=> b!4565682 m!5360133))

(declare-fun m!5360135 () Bool)

(assert (=> b!4565683 m!5360135))

(assert (=> start!454256 d!1423099))

(declare-fun d!1423107 () Bool)

(declare-fun isStrictlySorted!495 (List!51023) Bool)

(assert (=> d!1423107 (= (inv!66459 lm!1477) (isStrictlySorted!495 (toList!4515 lm!1477)))))

(declare-fun bs!946325 () Bool)

(assert (= bs!946325 d!1423107))

(declare-fun m!5360137 () Bool)

(assert (=> bs!946325 m!5360137))

(assert (=> start!454256 d!1423107))

(declare-fun d!1423109 () Bool)

(declare-fun hash!3064 (Hashable!5649 K!12275) (_ BitVec 64))

(assert (=> d!1423109 (= (hash!3061 hashF!1107 key!3287) (hash!3064 hashF!1107 key!3287))))

(declare-fun bs!946326 () Bool)

(assert (= bs!946326 d!1423109))

(declare-fun m!5360139 () Bool)

(assert (=> bs!946326 m!5360139))

(assert (=> b!4565661 d!1423109))

(declare-fun d!1423111 () Bool)

(declare-fun res!1905836 () Bool)

(declare-fun e!2846320 () Bool)

(assert (=> d!1423111 (=> res!1905836 e!2846320)))

(declare-fun e!2846321 () Bool)

(assert (=> d!1423111 (= res!1905836 e!2846321)))

(declare-fun res!1905835 () Bool)

(assert (=> d!1423111 (=> (not res!1905835) (not e!2846321))))

(assert (=> d!1423111 (= res!1905835 ((_ is Cons!50899) (t!358001 (toList!4515 lm!1477))))))

(assert (=> d!1423111 (= (containsKeyBiggerList!224 (t!358001 (toList!4515 lm!1477)) key!3287) e!2846320)))

(declare-fun b!4565690 () Bool)

(assert (=> b!4565690 (= e!2846321 (containsKey!2004 (_2!29020 (h!56818 (t!358001 (toList!4515 lm!1477)))) key!3287))))

(declare-fun b!4565691 () Bool)

(declare-fun e!2846322 () Bool)

(assert (=> b!4565691 (= e!2846320 e!2846322)))

(declare-fun res!1905834 () Bool)

(assert (=> b!4565691 (=> (not res!1905834) (not e!2846322))))

(assert (=> b!4565691 (= res!1905834 ((_ is Cons!50899) (t!358001 (toList!4515 lm!1477))))))

(declare-fun b!4565692 () Bool)

(assert (=> b!4565692 (= e!2846322 (containsKeyBiggerList!224 (t!358001 (t!358001 (toList!4515 lm!1477))) key!3287))))

(assert (= (and d!1423111 res!1905835) b!4565690))

(assert (= (and d!1423111 (not res!1905836)) b!4565691))

(assert (= (and b!4565691 res!1905834) b!4565692))

(declare-fun m!5360141 () Bool)

(assert (=> b!4565690 m!5360141))

(declare-fun m!5360143 () Bool)

(assert (=> b!4565692 m!5360143))

(assert (=> b!4565652 d!1423111))

(declare-fun d!1423113 () Bool)

(declare-fun res!1905839 () Bool)

(declare-fun e!2846323 () Bool)

(assert (=> d!1423113 (=> res!1905839 e!2846323)))

(declare-fun e!2846324 () Bool)

(assert (=> d!1423113 (= res!1905839 e!2846324)))

(declare-fun res!1905838 () Bool)

(assert (=> d!1423113 (=> (not res!1905838) (not e!2846324))))

(assert (=> d!1423113 (= res!1905838 ((_ is Cons!50899) (toList!4515 lt!1734870)))))

(assert (=> d!1423113 (= (containsKeyBiggerList!224 (toList!4515 lt!1734870) key!3287) e!2846323)))

(declare-fun b!4565693 () Bool)

(assert (=> b!4565693 (= e!2846324 (containsKey!2004 (_2!29020 (h!56818 (toList!4515 lt!1734870))) key!3287))))

(declare-fun b!4565694 () Bool)

(declare-fun e!2846325 () Bool)

(assert (=> b!4565694 (= e!2846323 e!2846325)))

(declare-fun res!1905837 () Bool)

(assert (=> b!4565694 (=> (not res!1905837) (not e!2846325))))

(assert (=> b!4565694 (= res!1905837 ((_ is Cons!50899) (toList!4515 lt!1734870)))))

(declare-fun b!4565695 () Bool)

(assert (=> b!4565695 (= e!2846325 (containsKeyBiggerList!224 (t!358001 (toList!4515 lt!1734870)) key!3287))))

(assert (= (and d!1423113 res!1905838) b!4565693))

(assert (= (and d!1423113 (not res!1905839)) b!4565694))

(assert (= (and b!4565694 res!1905837) b!4565695))

(declare-fun m!5360145 () Bool)

(assert (=> b!4565693 m!5360145))

(declare-fun m!5360147 () Bool)

(assert (=> b!4565695 m!5360147))

(assert (=> b!4565652 d!1423113))

(declare-fun bs!946330 () Bool)

(declare-fun d!1423115 () Bool)

(assert (= bs!946330 (and d!1423115 start!454256)))

(declare-fun lambda!180828 () Int)

(assert (=> bs!946330 (= lambda!180828 lambda!180813)))

(declare-fun bs!946331 () Bool)

(assert (= bs!946331 (and d!1423115 d!1423093)))

(assert (=> bs!946331 (not (= lambda!180828 lambda!180816))))

(declare-fun bs!946332 () Bool)

(assert (= bs!946332 (and d!1423115 d!1423095)))

(assert (=> bs!946332 (= lambda!180828 lambda!180819)))

(assert (=> d!1423115 (containsKeyBiggerList!224 (toList!4515 lt!1734870) key!3287)))

(declare-fun lt!1734884 () Unit!103209)

(declare-fun choose!30308 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> d!1423115 (= lt!1734884 (choose!30308 lt!1734870 key!3287 hashF!1107))))

(assert (=> d!1423115 (forall!10458 (toList!4515 lt!1734870) lambda!180828)))

(assert (=> d!1423115 (= (lemmaInLongMapThenContainsKeyBiggerList!136 lt!1734870 key!3287 hashF!1107) lt!1734884)))

(declare-fun bs!946333 () Bool)

(assert (= bs!946333 d!1423115))

(assert (=> bs!946333 m!5360103))

(declare-fun m!5360157 () Bool)

(assert (=> bs!946333 m!5360157))

(declare-fun m!5360159 () Bool)

(assert (=> bs!946333 m!5360159))

(assert (=> b!4565652 d!1423115))

(declare-fun d!1423119 () Bool)

(declare-fun res!1905847 () Bool)

(declare-fun e!2846333 () Bool)

(assert (=> d!1423119 (=> res!1905847 e!2846333)))

(assert (=> d!1423119 (= res!1905847 (not ((_ is Cons!50898) newBucket!178)))))

(assert (=> d!1423119 (= (noDuplicateKeys!1254 newBucket!178) e!2846333)))

(declare-fun b!4565703 () Bool)

(declare-fun e!2846334 () Bool)

(assert (=> b!4565703 (= e!2846333 e!2846334)))

(declare-fun res!1905848 () Bool)

(assert (=> b!4565703 (=> (not res!1905848) (not e!2846334))))

(assert (=> b!4565703 (= res!1905848 (not (containsKey!2004 (t!358000 newBucket!178) (_1!29019 (h!56817 newBucket!178)))))))

(declare-fun b!4565704 () Bool)

(assert (=> b!4565704 (= e!2846334 (noDuplicateKeys!1254 (t!358000 newBucket!178)))))

(assert (= (and d!1423119 (not res!1905847)) b!4565703))

(assert (= (and b!4565703 res!1905848) b!4565704))

(declare-fun m!5360179 () Bool)

(assert (=> b!4565703 m!5360179))

(declare-fun m!5360181 () Bool)

(assert (=> b!4565704 m!5360181))

(assert (=> b!4565663 d!1423119))

(declare-fun b!4565755 () Bool)

(declare-fun e!2846367 () Unit!103209)

(declare-fun e!2846371 () Unit!103209)

(assert (=> b!4565755 (= e!2846367 e!2846371)))

(declare-fun c!780788 () Bool)

(declare-fun call!318565 () Bool)

(assert (=> b!4565755 (= c!780788 call!318565)))

(declare-fun b!4565757 () Bool)

(declare-fun e!2846372 () Bool)

(declare-fun e!2846370 () Bool)

(assert (=> b!4565757 (= e!2846372 e!2846370)))

(declare-fun res!1905876 () Bool)

(assert (=> b!4565757 (=> (not res!1905876) (not e!2846370))))

(declare-datatypes ((Option!11290 0))(
  ( (None!11289) (Some!11289 (v!45115 V!12521)) )
))
(declare-fun isDefined!8561 (Option!11290) Bool)

(declare-fun getValueByKey!1222 (List!51022 K!12275) Option!11290)

(assert (=> b!4565757 (= res!1905876 (isDefined!8561 (getValueByKey!1222 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287)))))

(declare-fun b!4565758 () Bool)

(declare-datatypes ((List!51025 0))(
  ( (Nil!50901) (Cons!50901 (h!56822 K!12275) (t!358003 List!51025)) )
))
(declare-fun e!2846369 () List!51025)

(declare-fun getKeysList!529 (List!51022) List!51025)

(assert (=> b!4565758 (= e!2846369 (getKeysList!529 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477))))))))

(declare-fun b!4565759 () Bool)

(declare-fun keys!17760 (ListMap!3777) List!51025)

(assert (=> b!4565759 (= e!2846369 (keys!17760 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))))))

(declare-fun b!4565760 () Bool)

(declare-fun lt!1734929 () Unit!103209)

(assert (=> b!4565760 (= e!2846367 lt!1734929)))

(declare-fun lt!1734928 () Unit!103209)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1125 (List!51022 K!12275) Unit!103209)

(assert (=> b!4565760 (= lt!1734928 (lemmaContainsKeyImpliesGetValueByKeyDefined!1125 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287))))

(assert (=> b!4565760 (isDefined!8561 (getValueByKey!1222 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287))))

(declare-fun lt!1734930 () Unit!103209)

(assert (=> b!4565760 (= lt!1734930 lt!1734928)))

(declare-fun lemmaInListThenGetKeysListContains!525 (List!51022 K!12275) Unit!103209)

(assert (=> b!4565760 (= lt!1734929 (lemmaInListThenGetKeysListContains!525 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287))))

(assert (=> b!4565760 call!318565))

(declare-fun bm!318560 () Bool)

(declare-fun contains!13769 (List!51025 K!12275) Bool)

(assert (=> bm!318560 (= call!318565 (contains!13769 e!2846369 key!3287))))

(declare-fun c!780789 () Bool)

(declare-fun c!780787 () Bool)

(assert (=> bm!318560 (= c!780789 c!780787)))

(declare-fun b!4565756 () Bool)

(assert (=> b!4565756 (= e!2846370 (contains!13769 (keys!17760 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287))))

(declare-fun d!1423125 () Bool)

(assert (=> d!1423125 e!2846372))

(declare-fun res!1905877 () Bool)

(assert (=> d!1423125 (=> res!1905877 e!2846372)))

(declare-fun e!2846368 () Bool)

(assert (=> d!1423125 (= res!1905877 e!2846368)))

(declare-fun res!1905875 () Bool)

(assert (=> d!1423125 (=> (not res!1905875) (not e!2846368))))

(declare-fun lt!1734934 () Bool)

(assert (=> d!1423125 (= res!1905875 (not lt!1734934))))

(declare-fun lt!1734927 () Bool)

(assert (=> d!1423125 (= lt!1734934 lt!1734927)))

(declare-fun lt!1734932 () Unit!103209)

(assert (=> d!1423125 (= lt!1734932 e!2846367)))

(assert (=> d!1423125 (= c!780787 lt!1734927)))

(declare-fun containsKey!2006 (List!51022 K!12275) Bool)

(assert (=> d!1423125 (= lt!1734927 (containsKey!2006 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287))))

(assert (=> d!1423125 (= (contains!13765 (extractMap!1310 (t!358001 (toList!4515 lm!1477))) key!3287) lt!1734934)))

(declare-fun b!4565761 () Bool)

(declare-fun Unit!103217 () Unit!103209)

(assert (=> b!4565761 (= e!2846371 Unit!103217)))

(declare-fun b!4565762 () Bool)

(assert (=> b!4565762 false))

(declare-fun lt!1734931 () Unit!103209)

(declare-fun lt!1734933 () Unit!103209)

(assert (=> b!4565762 (= lt!1734931 lt!1734933)))

(assert (=> b!4565762 (containsKey!2006 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!528 (List!51022 K!12275) Unit!103209)

(assert (=> b!4565762 (= lt!1734933 (lemmaInGetKeysListThenContainsKey!528 (toList!4516 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287))))

(declare-fun Unit!103218 () Unit!103209)

(assert (=> b!4565762 (= e!2846371 Unit!103218)))

(declare-fun b!4565763 () Bool)

(assert (=> b!4565763 (= e!2846368 (not (contains!13769 (keys!17760 (extractMap!1310 (t!358001 (toList!4515 lm!1477)))) key!3287)))))

(assert (= (and d!1423125 c!780787) b!4565760))

(assert (= (and d!1423125 (not c!780787)) b!4565755))

(assert (= (and b!4565755 c!780788) b!4565762))

(assert (= (and b!4565755 (not c!780788)) b!4565761))

(assert (= (or b!4565760 b!4565755) bm!318560))

(assert (= (and bm!318560 c!780789) b!4565758))

(assert (= (and bm!318560 (not c!780789)) b!4565759))

(assert (= (and d!1423125 res!1905875) b!4565763))

(assert (= (and d!1423125 (not res!1905877)) b!4565757))

(assert (= (and b!4565757 res!1905876) b!4565756))

(declare-fun m!5360239 () Bool)

(assert (=> b!4565758 m!5360239))

(declare-fun m!5360241 () Bool)

(assert (=> b!4565760 m!5360241))

(declare-fun m!5360243 () Bool)

(assert (=> b!4565760 m!5360243))

(assert (=> b!4565760 m!5360243))

(declare-fun m!5360245 () Bool)

(assert (=> b!4565760 m!5360245))

(declare-fun m!5360247 () Bool)

(assert (=> b!4565760 m!5360247))

(assert (=> b!4565756 m!5360095))

(declare-fun m!5360249 () Bool)

(assert (=> b!4565756 m!5360249))

(assert (=> b!4565756 m!5360249))

(declare-fun m!5360251 () Bool)

(assert (=> b!4565756 m!5360251))

(assert (=> b!4565757 m!5360243))

(assert (=> b!4565757 m!5360243))

(assert (=> b!4565757 m!5360245))

(assert (=> b!4565763 m!5360095))

(assert (=> b!4565763 m!5360249))

(assert (=> b!4565763 m!5360249))

(assert (=> b!4565763 m!5360251))

(assert (=> b!4565759 m!5360095))

(assert (=> b!4565759 m!5360249))

(declare-fun m!5360253 () Bool)

(assert (=> bm!318560 m!5360253))

(declare-fun m!5360255 () Bool)

(assert (=> b!4565762 m!5360255))

(declare-fun m!5360257 () Bool)

(assert (=> b!4565762 m!5360257))

(assert (=> d!1423125 m!5360255))

(assert (=> b!4565653 d!1423125))

(declare-fun bs!946364 () Bool)

(declare-fun d!1423145 () Bool)

(assert (= bs!946364 (and d!1423145 start!454256)))

(declare-fun lambda!180843 () Int)

(assert (=> bs!946364 (= lambda!180843 lambda!180813)))

(declare-fun bs!946365 () Bool)

(assert (= bs!946365 (and d!1423145 d!1423093)))

(assert (=> bs!946365 (not (= lambda!180843 lambda!180816))))

(declare-fun bs!946366 () Bool)

(assert (= bs!946366 (and d!1423145 d!1423095)))

(assert (=> bs!946366 (= lambda!180843 lambda!180819)))

(declare-fun bs!946367 () Bool)

(assert (= bs!946367 (and d!1423145 d!1423115)))

(assert (=> bs!946367 (= lambda!180843 lambda!180828)))

(declare-fun lt!1734966 () ListMap!3777)

(declare-fun invariantList!1081 (List!51022) Bool)

(assert (=> d!1423145 (invariantList!1081 (toList!4516 lt!1734966))))

(declare-fun e!2846407 () ListMap!3777)

(assert (=> d!1423145 (= lt!1734966 e!2846407)))

(declare-fun c!780803 () Bool)

(assert (=> d!1423145 (= c!780803 ((_ is Cons!50899) (t!358001 (toList!4515 lm!1477))))))

(assert (=> d!1423145 (forall!10458 (t!358001 (toList!4515 lm!1477)) lambda!180843)))

(assert (=> d!1423145 (= (extractMap!1310 (t!358001 (toList!4515 lm!1477))) lt!1734966)))

(declare-fun b!4565811 () Bool)

(declare-fun addToMapMapFromBucket!767 (List!51022 ListMap!3777) ListMap!3777)

(assert (=> b!4565811 (= e!2846407 (addToMapMapFromBucket!767 (_2!29020 (h!56818 (t!358001 (toList!4515 lm!1477)))) (extractMap!1310 (t!358001 (t!358001 (toList!4515 lm!1477))))))))

(declare-fun b!4565812 () Bool)

(assert (=> b!4565812 (= e!2846407 (ListMap!3778 Nil!50898))))

(assert (= (and d!1423145 c!780803) b!4565811))

(assert (= (and d!1423145 (not c!780803)) b!4565812))

(declare-fun m!5360305 () Bool)

(assert (=> d!1423145 m!5360305))

(declare-fun m!5360307 () Bool)

(assert (=> d!1423145 m!5360307))

(declare-fun m!5360309 () Bool)

(assert (=> b!4565811 m!5360309))

(assert (=> b!4565811 m!5360309))

(declare-fun m!5360311 () Bool)

(assert (=> b!4565811 m!5360311))

(assert (=> b!4565653 d!1423145))

(declare-fun b!4565813 () Bool)

(declare-fun e!2846408 () Unit!103209)

(declare-fun e!2846412 () Unit!103209)

(assert (=> b!4565813 (= e!2846408 e!2846412)))

(declare-fun c!780805 () Bool)

(declare-fun call!318569 () Bool)

(assert (=> b!4565813 (= c!780805 call!318569)))

(declare-fun b!4565815 () Bool)

(declare-fun e!2846413 () Bool)

(declare-fun e!2846411 () Bool)

(assert (=> b!4565815 (= e!2846413 e!2846411)))

(declare-fun res!1905900 () Bool)

(assert (=> b!4565815 (=> (not res!1905900) (not e!2846411))))

(assert (=> b!4565815 (= res!1905900 (isDefined!8561 (getValueByKey!1222 (toList!4516 lt!1734857) key!3287)))))

(declare-fun b!4565816 () Bool)

(declare-fun e!2846410 () List!51025)

(assert (=> b!4565816 (= e!2846410 (getKeysList!529 (toList!4516 lt!1734857)))))

(declare-fun b!4565817 () Bool)

(assert (=> b!4565817 (= e!2846410 (keys!17760 lt!1734857))))

(declare-fun b!4565818 () Bool)

(declare-fun lt!1734972 () Unit!103209)

(assert (=> b!4565818 (= e!2846408 lt!1734972)))

(declare-fun lt!1734971 () Unit!103209)

(assert (=> b!4565818 (= lt!1734971 (lemmaContainsKeyImpliesGetValueByKeyDefined!1125 (toList!4516 lt!1734857) key!3287))))

(assert (=> b!4565818 (isDefined!8561 (getValueByKey!1222 (toList!4516 lt!1734857) key!3287))))

(declare-fun lt!1734973 () Unit!103209)

(assert (=> b!4565818 (= lt!1734973 lt!1734971)))

(assert (=> b!4565818 (= lt!1734972 (lemmaInListThenGetKeysListContains!525 (toList!4516 lt!1734857) key!3287))))

(assert (=> b!4565818 call!318569))

(declare-fun bm!318564 () Bool)

(assert (=> bm!318564 (= call!318569 (contains!13769 e!2846410 key!3287))))

(declare-fun c!780806 () Bool)

(declare-fun c!780804 () Bool)

(assert (=> bm!318564 (= c!780806 c!780804)))

(declare-fun b!4565814 () Bool)

(assert (=> b!4565814 (= e!2846411 (contains!13769 (keys!17760 lt!1734857) key!3287))))

(declare-fun d!1423159 () Bool)

(assert (=> d!1423159 e!2846413))

(declare-fun res!1905901 () Bool)

(assert (=> d!1423159 (=> res!1905901 e!2846413)))

(declare-fun e!2846409 () Bool)

(assert (=> d!1423159 (= res!1905901 e!2846409)))

(declare-fun res!1905899 () Bool)

(assert (=> d!1423159 (=> (not res!1905899) (not e!2846409))))

(declare-fun lt!1734977 () Bool)

(assert (=> d!1423159 (= res!1905899 (not lt!1734977))))

(declare-fun lt!1734970 () Bool)

(assert (=> d!1423159 (= lt!1734977 lt!1734970)))

(declare-fun lt!1734975 () Unit!103209)

(assert (=> d!1423159 (= lt!1734975 e!2846408)))

(assert (=> d!1423159 (= c!780804 lt!1734970)))

(assert (=> d!1423159 (= lt!1734970 (containsKey!2006 (toList!4516 lt!1734857) key!3287))))

(assert (=> d!1423159 (= (contains!13765 lt!1734857 key!3287) lt!1734977)))

(declare-fun b!4565819 () Bool)

(declare-fun Unit!103221 () Unit!103209)

(assert (=> b!4565819 (= e!2846412 Unit!103221)))

(declare-fun b!4565820 () Bool)

(assert (=> b!4565820 false))

(declare-fun lt!1734974 () Unit!103209)

(declare-fun lt!1734976 () Unit!103209)

(assert (=> b!4565820 (= lt!1734974 lt!1734976)))

(assert (=> b!4565820 (containsKey!2006 (toList!4516 lt!1734857) key!3287)))

(assert (=> b!4565820 (= lt!1734976 (lemmaInGetKeysListThenContainsKey!528 (toList!4516 lt!1734857) key!3287))))

(declare-fun Unit!103222 () Unit!103209)

(assert (=> b!4565820 (= e!2846412 Unit!103222)))

(declare-fun b!4565821 () Bool)

(assert (=> b!4565821 (= e!2846409 (not (contains!13769 (keys!17760 lt!1734857) key!3287)))))

(assert (= (and d!1423159 c!780804) b!4565818))

(assert (= (and d!1423159 (not c!780804)) b!4565813))

(assert (= (and b!4565813 c!780805) b!4565820))

(assert (= (and b!4565813 (not c!780805)) b!4565819))

(assert (= (or b!4565818 b!4565813) bm!318564))

(assert (= (and bm!318564 c!780806) b!4565816))

(assert (= (and bm!318564 (not c!780806)) b!4565817))

(assert (= (and d!1423159 res!1905899) b!4565821))

(assert (= (and d!1423159 (not res!1905901)) b!4565815))

(assert (= (and b!4565815 res!1905900) b!4565814))

(declare-fun m!5360319 () Bool)

(assert (=> b!4565816 m!5360319))

(declare-fun m!5360321 () Bool)

(assert (=> b!4565818 m!5360321))

(declare-fun m!5360323 () Bool)

(assert (=> b!4565818 m!5360323))

(assert (=> b!4565818 m!5360323))

(declare-fun m!5360325 () Bool)

(assert (=> b!4565818 m!5360325))

(declare-fun m!5360327 () Bool)

(assert (=> b!4565818 m!5360327))

(declare-fun m!5360329 () Bool)

(assert (=> b!4565814 m!5360329))

(assert (=> b!4565814 m!5360329))

(declare-fun m!5360331 () Bool)

(assert (=> b!4565814 m!5360331))

(assert (=> b!4565815 m!5360323))

(assert (=> b!4565815 m!5360323))

(assert (=> b!4565815 m!5360325))

(assert (=> b!4565821 m!5360329))

(assert (=> b!4565821 m!5360329))

(assert (=> b!4565821 m!5360331))

(assert (=> b!4565817 m!5360329))

(declare-fun m!5360335 () Bool)

(assert (=> bm!318564 m!5360335))

(declare-fun m!5360341 () Bool)

(assert (=> b!4565820 m!5360341))

(declare-fun m!5360345 () Bool)

(assert (=> b!4565820 m!5360345))

(assert (=> d!1423159 m!5360341))

(assert (=> b!4565653 d!1423159))

(declare-fun bs!946377 () Bool)

(declare-fun d!1423163 () Bool)

(assert (= bs!946377 (and d!1423163 d!1423145)))

(declare-fun lambda!180847 () Int)

(assert (=> bs!946377 (= lambda!180847 lambda!180843)))

(declare-fun bs!946379 () Bool)

(assert (= bs!946379 (and d!1423163 start!454256)))

(assert (=> bs!946379 (= lambda!180847 lambda!180813)))

(declare-fun bs!946382 () Bool)

(assert (= bs!946382 (and d!1423163 d!1423093)))

(assert (=> bs!946382 (not (= lambda!180847 lambda!180816))))

(declare-fun bs!946385 () Bool)

(assert (= bs!946385 (and d!1423163 d!1423115)))

(assert (=> bs!946385 (= lambda!180847 lambda!180828)))

(declare-fun bs!946387 () Bool)

(assert (= bs!946387 (and d!1423163 d!1423095)))

(assert (=> bs!946387 (= lambda!180847 lambda!180819)))

(declare-fun lt!1734986 () ListMap!3777)

(assert (=> d!1423163 (invariantList!1081 (toList!4516 lt!1734986))))

(declare-fun e!2846420 () ListMap!3777)

(assert (=> d!1423163 (= lt!1734986 e!2846420)))

(declare-fun c!780810 () Bool)

(assert (=> d!1423163 (= c!780810 ((_ is Cons!50899) (toList!4515 lt!1734870)))))

(assert (=> d!1423163 (forall!10458 (toList!4515 lt!1734870) lambda!180847)))

(assert (=> d!1423163 (= (extractMap!1310 (toList!4515 lt!1734870)) lt!1734986)))

(declare-fun b!4565831 () Bool)

(assert (=> b!4565831 (= e!2846420 (addToMapMapFromBucket!767 (_2!29020 (h!56818 (toList!4515 lt!1734870))) (extractMap!1310 (t!358001 (toList!4515 lt!1734870)))))))

(declare-fun b!4565832 () Bool)

(assert (=> b!4565832 (= e!2846420 (ListMap!3778 Nil!50898))))

(assert (= (and d!1423163 c!780810) b!4565831))

(assert (= (and d!1423163 (not c!780810)) b!4565832))

(declare-fun m!5360365 () Bool)

(assert (=> d!1423163 m!5360365))

(declare-fun m!5360369 () Bool)

(assert (=> d!1423163 m!5360369))

(declare-fun m!5360371 () Bool)

(assert (=> b!4565831 m!5360371))

(assert (=> b!4565831 m!5360371))

(declare-fun m!5360373 () Bool)

(assert (=> b!4565831 m!5360373))

(assert (=> b!4565653 d!1423163))

(declare-fun bs!946395 () Bool)

(declare-fun d!1423169 () Bool)

(assert (= bs!946395 (and d!1423169 d!1423145)))

(declare-fun lambda!180853 () Int)

(assert (=> bs!946395 (= lambda!180853 lambda!180843)))

(declare-fun bs!946397 () Bool)

(assert (= bs!946397 (and d!1423169 start!454256)))

(assert (=> bs!946397 (= lambda!180853 lambda!180813)))

(declare-fun bs!946400 () Bool)

(assert (= bs!946400 (and d!1423169 d!1423093)))

(assert (=> bs!946400 (not (= lambda!180853 lambda!180816))))

(declare-fun bs!946404 () Bool)

(assert (= bs!946404 (and d!1423169 d!1423163)))

(assert (=> bs!946404 (= lambda!180853 lambda!180847)))

(declare-fun bs!946407 () Bool)

(assert (= bs!946407 (and d!1423169 d!1423115)))

(assert (=> bs!946407 (= lambda!180853 lambda!180828)))

(declare-fun bs!946410 () Bool)

(assert (= bs!946410 (and d!1423169 d!1423095)))

(assert (=> bs!946410 (= lambda!180853 lambda!180819)))

(assert (=> d!1423169 (contains!13765 (extractMap!1310 (toList!4515 lt!1734870)) key!3287)))

(declare-fun lt!1735023 () Unit!103209)

(declare-fun choose!30309 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> d!1423169 (= lt!1735023 (choose!30309 lt!1734870 key!3287 hashF!1107))))

(assert (=> d!1423169 (forall!10458 (toList!4515 lt!1734870) lambda!180853)))

(assert (=> d!1423169 (= (lemmaListContainsThenExtractedMapContains!210 lt!1734870 key!3287 hashF!1107) lt!1735023)))

(declare-fun bs!946412 () Bool)

(assert (= bs!946412 d!1423169))

(assert (=> bs!946412 m!5360093))

(assert (=> bs!946412 m!5360093))

(declare-fun m!5360435 () Bool)

(assert (=> bs!946412 m!5360435))

(declare-fun m!5360437 () Bool)

(assert (=> bs!946412 m!5360437))

(declare-fun m!5360439 () Bool)

(assert (=> bs!946412 m!5360439))

(assert (=> b!4565653 d!1423169))

(declare-fun bs!946413 () Bool)

(declare-fun d!1423193 () Bool)

(assert (= bs!946413 (and d!1423193 d!1423145)))

(declare-fun lambda!180855 () Int)

(assert (=> bs!946413 (= lambda!180855 lambda!180843)))

(declare-fun bs!946414 () Bool)

(assert (= bs!946414 (and d!1423193 d!1423169)))

(assert (=> bs!946414 (= lambda!180855 lambda!180853)))

(declare-fun bs!946415 () Bool)

(assert (= bs!946415 (and d!1423193 start!454256)))

(assert (=> bs!946415 (= lambda!180855 lambda!180813)))

(declare-fun bs!946416 () Bool)

(assert (= bs!946416 (and d!1423193 d!1423093)))

(assert (=> bs!946416 (not (= lambda!180855 lambda!180816))))

(declare-fun bs!946417 () Bool)

(assert (= bs!946417 (and d!1423193 d!1423163)))

(assert (=> bs!946417 (= lambda!180855 lambda!180847)))

(declare-fun bs!946418 () Bool)

(assert (= bs!946418 (and d!1423193 d!1423115)))

(assert (=> bs!946418 (= lambda!180855 lambda!180828)))

(declare-fun bs!946419 () Bool)

(assert (= bs!946419 (and d!1423193 d!1423095)))

(assert (=> bs!946419 (= lambda!180855 lambda!180819)))

(declare-fun lt!1735025 () ListMap!3777)

(assert (=> d!1423193 (invariantList!1081 (toList!4516 lt!1735025))))

(declare-fun e!2846444 () ListMap!3777)

(assert (=> d!1423193 (= lt!1735025 e!2846444)))

(declare-fun c!780819 () Bool)

(assert (=> d!1423193 (= c!780819 ((_ is Cons!50899) (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)))))))

(assert (=> d!1423193 (forall!10458 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178))) lambda!180855)))

(assert (=> d!1423193 (= (extractMap!1310 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)))) lt!1735025)))

(declare-fun b!4565864 () Bool)

(assert (=> b!4565864 (= e!2846444 (addToMapMapFromBucket!767 (_2!29020 (h!56818 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178))))) (extractMap!1310 (t!358001 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)))))))))

(declare-fun b!4565865 () Bool)

(assert (=> b!4565865 (= e!2846444 (ListMap!3778 Nil!50898))))

(assert (= (and d!1423193 c!780819) b!4565864))

(assert (= (and d!1423193 (not c!780819)) b!4565865))

(declare-fun m!5360441 () Bool)

(assert (=> d!1423193 m!5360441))

(declare-fun m!5360443 () Bool)

(assert (=> d!1423193 m!5360443))

(declare-fun m!5360445 () Bool)

(assert (=> b!4565864 m!5360445))

(assert (=> b!4565864 m!5360445))

(declare-fun m!5360447 () Bool)

(assert (=> b!4565864 m!5360447))

(assert (=> b!4565664 d!1423193))

(declare-fun d!1423195 () Bool)

(assert (=> d!1423195 (= (eq!693 lt!1734867 lt!1734860) (= (content!8538 (toList!4516 lt!1734867)) (content!8538 (toList!4516 lt!1734860))))))

(declare-fun bs!946420 () Bool)

(assert (= bs!946420 d!1423195))

(assert (=> bs!946420 m!5360109))

(assert (=> bs!946420 m!5360107))

(assert (=> b!4565664 d!1423195))

(declare-fun d!1423197 () Bool)

(declare-fun e!2846465 () Bool)

(assert (=> d!1423197 e!2846465))

(declare-fun res!1905930 () Bool)

(assert (=> d!1423197 (=> (not res!1905930) (not e!2846465))))

(declare-fun lt!1735040 () ListLongMap!3147)

(assert (=> d!1423197 (= res!1905930 (contains!13767 lt!1735040 (_1!29020 (head!9504 lm!1477))))))

(declare-fun lt!1735039 () List!51023)

(assert (=> d!1423197 (= lt!1735040 (ListLongMap!3148 lt!1735039))))

(declare-fun lt!1735038 () Unit!103209)

(declare-fun lt!1735037 () Unit!103209)

(assert (=> d!1423197 (= lt!1735038 lt!1735037)))

(declare-datatypes ((Option!11291 0))(
  ( (None!11290) (Some!11290 (v!45116 List!51022)) )
))
(declare-fun getValueByKey!1223 (List!51023 (_ BitVec 64)) Option!11291)

(assert (=> d!1423197 (= (getValueByKey!1223 lt!1735039 (_1!29020 (head!9504 lm!1477))) (Some!11290 (_2!29020 (head!9504 lm!1477))))))

(declare-fun lemmaContainsTupThenGetReturnValue!756 (List!51023 (_ BitVec 64) List!51022) Unit!103209)

(assert (=> d!1423197 (= lt!1735037 (lemmaContainsTupThenGetReturnValue!756 lt!1735039 (_1!29020 (head!9504 lm!1477)) (_2!29020 (head!9504 lm!1477))))))

(declare-fun insertStrictlySorted!462 (List!51023 (_ BitVec 64) List!51022) List!51023)

(assert (=> d!1423197 (= lt!1735039 (insertStrictlySorted!462 (toList!4515 lt!1734870) (_1!29020 (head!9504 lm!1477)) (_2!29020 (head!9504 lm!1477))))))

(assert (=> d!1423197 (= (+!1676 lt!1734870 (head!9504 lm!1477)) lt!1735040)))

(declare-fun b!4565900 () Bool)

(declare-fun res!1905931 () Bool)

(assert (=> b!4565900 (=> (not res!1905931) (not e!2846465))))

(assert (=> b!4565900 (= res!1905931 (= (getValueByKey!1223 (toList!4515 lt!1735040) (_1!29020 (head!9504 lm!1477))) (Some!11290 (_2!29020 (head!9504 lm!1477)))))))

(declare-fun b!4565901 () Bool)

(assert (=> b!4565901 (= e!2846465 (contains!13766 (toList!4515 lt!1735040) (head!9504 lm!1477)))))

(assert (= (and d!1423197 res!1905930) b!4565900))

(assert (= (and b!4565900 res!1905931) b!4565901))

(declare-fun m!5360465 () Bool)

(assert (=> d!1423197 m!5360465))

(declare-fun m!5360467 () Bool)

(assert (=> d!1423197 m!5360467))

(declare-fun m!5360469 () Bool)

(assert (=> d!1423197 m!5360469))

(declare-fun m!5360471 () Bool)

(assert (=> d!1423197 m!5360471))

(declare-fun m!5360473 () Bool)

(assert (=> b!4565900 m!5360473))

(assert (=> b!4565901 m!5360073))

(declare-fun m!5360475 () Bool)

(assert (=> b!4565901 m!5360475))

(assert (=> b!4565664 d!1423197))

(declare-fun bs!946436 () Bool)

(declare-fun d!1423209 () Bool)

(assert (= bs!946436 (and d!1423209 d!1423145)))

(declare-fun lambda!180859 () Int)

(assert (=> bs!946436 (= lambda!180859 lambda!180843)))

(declare-fun bs!946437 () Bool)

(assert (= bs!946437 (and d!1423209 d!1423169)))

(assert (=> bs!946437 (= lambda!180859 lambda!180853)))

(declare-fun bs!946438 () Bool)

(assert (= bs!946438 (and d!1423209 start!454256)))

(assert (=> bs!946438 (= lambda!180859 lambda!180813)))

(declare-fun bs!946439 () Bool)

(assert (= bs!946439 (and d!1423209 d!1423193)))

(assert (=> bs!946439 (= lambda!180859 lambda!180855)))

(declare-fun bs!946440 () Bool)

(assert (= bs!946440 (and d!1423209 d!1423093)))

(assert (=> bs!946440 (not (= lambda!180859 lambda!180816))))

(declare-fun bs!946441 () Bool)

(assert (= bs!946441 (and d!1423209 d!1423163)))

(assert (=> bs!946441 (= lambda!180859 lambda!180847)))

(declare-fun bs!946442 () Bool)

(assert (= bs!946442 (and d!1423209 d!1423115)))

(assert (=> bs!946442 (= lambda!180859 lambda!180828)))

(declare-fun bs!946443 () Bool)

(assert (= bs!946443 (and d!1423209 d!1423095)))

(assert (=> bs!946443 (= lambda!180859 lambda!180819)))

(declare-fun lt!1735041 () ListMap!3777)

(assert (=> d!1423209 (invariantList!1081 (toList!4516 lt!1735041))))

(declare-fun e!2846466 () ListMap!3777)

(assert (=> d!1423209 (= lt!1735041 e!2846466)))

(declare-fun c!780826 () Bool)

(assert (=> d!1423209 (= c!780826 ((_ is Cons!50899) (toList!4515 (+!1676 lt!1734870 (head!9504 lm!1477)))))))

(assert (=> d!1423209 (forall!10458 (toList!4515 (+!1676 lt!1734870 (head!9504 lm!1477))) lambda!180859)))

(assert (=> d!1423209 (= (extractMap!1310 (toList!4515 (+!1676 lt!1734870 (head!9504 lm!1477)))) lt!1735041)))

(declare-fun b!4565902 () Bool)

(assert (=> b!4565902 (= e!2846466 (addToMapMapFromBucket!767 (_2!29020 (h!56818 (toList!4515 (+!1676 lt!1734870 (head!9504 lm!1477))))) (extractMap!1310 (t!358001 (toList!4515 (+!1676 lt!1734870 (head!9504 lm!1477)))))))))

(declare-fun b!4565903 () Bool)

(assert (=> b!4565903 (= e!2846466 (ListMap!3778 Nil!50898))))

(assert (= (and d!1423209 c!780826) b!4565902))

(assert (= (and d!1423209 (not c!780826)) b!4565903))

(declare-fun m!5360477 () Bool)

(assert (=> d!1423209 m!5360477))

(declare-fun m!5360479 () Bool)

(assert (=> d!1423209 m!5360479))

(declare-fun m!5360481 () Bool)

(assert (=> b!4565902 m!5360481))

(assert (=> b!4565902 m!5360481))

(declare-fun m!5360483 () Bool)

(assert (=> b!4565902 m!5360483))

(assert (=> b!4565664 d!1423209))

(declare-fun d!1423211 () Bool)

(assert (=> d!1423211 (= (eq!693 (extractMap!1310 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)))) (-!462 lt!1734857 key!3287)) (= (content!8538 (toList!4516 (extractMap!1310 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)))))) (content!8538 (toList!4516 (-!462 lt!1734857 key!3287)))))))

(declare-fun bs!946444 () Bool)

(assert (= bs!946444 d!1423211))

(declare-fun m!5360485 () Bool)

(assert (=> bs!946444 m!5360485))

(declare-fun m!5360487 () Bool)

(assert (=> bs!946444 m!5360487))

(assert (=> b!4565664 d!1423211))

(declare-fun bs!946445 () Bool)

(declare-fun d!1423213 () Bool)

(assert (= bs!946445 (and d!1423213 d!1423209)))

(declare-fun lambda!180862 () Int)

(assert (=> bs!946445 (= lambda!180862 lambda!180859)))

(declare-fun bs!946446 () Bool)

(assert (= bs!946446 (and d!1423213 d!1423145)))

(assert (=> bs!946446 (= lambda!180862 lambda!180843)))

(declare-fun bs!946447 () Bool)

(assert (= bs!946447 (and d!1423213 d!1423169)))

(assert (=> bs!946447 (= lambda!180862 lambda!180853)))

(declare-fun bs!946448 () Bool)

(assert (= bs!946448 (and d!1423213 start!454256)))

(assert (=> bs!946448 (= lambda!180862 lambda!180813)))

(declare-fun bs!946449 () Bool)

(assert (= bs!946449 (and d!1423213 d!1423193)))

(assert (=> bs!946449 (= lambda!180862 lambda!180855)))

(declare-fun bs!946450 () Bool)

(assert (= bs!946450 (and d!1423213 d!1423093)))

(assert (=> bs!946450 (not (= lambda!180862 lambda!180816))))

(declare-fun bs!946451 () Bool)

(assert (= bs!946451 (and d!1423213 d!1423163)))

(assert (=> bs!946451 (= lambda!180862 lambda!180847)))

(declare-fun bs!946452 () Bool)

(assert (= bs!946452 (and d!1423213 d!1423115)))

(assert (=> bs!946452 (= lambda!180862 lambda!180828)))

(declare-fun bs!946453 () Bool)

(assert (= bs!946453 (and d!1423213 d!1423095)))

(assert (=> bs!946453 (= lambda!180862 lambda!180819)))

(assert (=> d!1423213 (eq!693 (extractMap!1310 (toList!4515 (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)))) (-!462 (extractMap!1310 (toList!4515 lt!1734870)) key!3287))))

(declare-fun lt!1735044 () Unit!103209)

(declare-fun choose!30313 (ListLongMap!3147 (_ BitVec 64) List!51022 K!12275 Hashable!5649) Unit!103209)

(assert (=> d!1423213 (= lt!1735044 (choose!30313 lt!1734870 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1423213 (forall!10458 (toList!4515 lt!1734870) lambda!180862)))

(assert (=> d!1423213 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!201 lt!1734870 hash!344 newBucket!178 key!3287 hashF!1107) lt!1735044)))

(declare-fun bs!946454 () Bool)

(assert (= bs!946454 d!1423213))

(assert (=> bs!946454 m!5360061))

(assert (=> bs!946454 m!5360093))

(declare-fun m!5360489 () Bool)

(assert (=> bs!946454 m!5360489))

(declare-fun m!5360491 () Bool)

(assert (=> bs!946454 m!5360491))

(declare-fun m!5360493 () Bool)

(assert (=> bs!946454 m!5360493))

(assert (=> bs!946454 m!5360093))

(assert (=> bs!946454 m!5360069))

(assert (=> bs!946454 m!5360061))

(assert (=> bs!946454 m!5360489))

(declare-fun m!5360495 () Bool)

(assert (=> bs!946454 m!5360495))

(assert (=> b!4565664 d!1423213))

(declare-fun d!1423215 () Bool)

(declare-fun head!9506 (List!51023) tuple2!51452)

(assert (=> d!1423215 (= (head!9504 lm!1477) (head!9506 (toList!4515 lm!1477)))))

(declare-fun bs!946455 () Bool)

(assert (= bs!946455 d!1423215))

(declare-fun m!5360497 () Bool)

(assert (=> bs!946455 m!5360497))

(assert (=> b!4565664 d!1423215))

(declare-fun d!1423217 () Bool)

(declare-fun e!2846467 () Bool)

(assert (=> d!1423217 e!2846467))

(declare-fun res!1905932 () Bool)

(assert (=> d!1423217 (=> (not res!1905932) (not e!2846467))))

(declare-fun lt!1735048 () ListLongMap!3147)

(assert (=> d!1423217 (= res!1905932 (contains!13767 lt!1735048 (_1!29020 (tuple2!51453 hash!344 newBucket!178))))))

(declare-fun lt!1735047 () List!51023)

(assert (=> d!1423217 (= lt!1735048 (ListLongMap!3148 lt!1735047))))

(declare-fun lt!1735046 () Unit!103209)

(declare-fun lt!1735045 () Unit!103209)

(assert (=> d!1423217 (= lt!1735046 lt!1735045)))

(assert (=> d!1423217 (= (getValueByKey!1223 lt!1735047 (_1!29020 (tuple2!51453 hash!344 newBucket!178))) (Some!11290 (_2!29020 (tuple2!51453 hash!344 newBucket!178))))))

(assert (=> d!1423217 (= lt!1735045 (lemmaContainsTupThenGetReturnValue!756 lt!1735047 (_1!29020 (tuple2!51453 hash!344 newBucket!178)) (_2!29020 (tuple2!51453 hash!344 newBucket!178))))))

(assert (=> d!1423217 (= lt!1735047 (insertStrictlySorted!462 (toList!4515 lt!1734870) (_1!29020 (tuple2!51453 hash!344 newBucket!178)) (_2!29020 (tuple2!51453 hash!344 newBucket!178))))))

(assert (=> d!1423217 (= (+!1676 lt!1734870 (tuple2!51453 hash!344 newBucket!178)) lt!1735048)))

(declare-fun b!4565904 () Bool)

(declare-fun res!1905933 () Bool)

(assert (=> b!4565904 (=> (not res!1905933) (not e!2846467))))

(assert (=> b!4565904 (= res!1905933 (= (getValueByKey!1223 (toList!4515 lt!1735048) (_1!29020 (tuple2!51453 hash!344 newBucket!178))) (Some!11290 (_2!29020 (tuple2!51453 hash!344 newBucket!178)))))))

(declare-fun b!4565905 () Bool)

(assert (=> b!4565905 (= e!2846467 (contains!13766 (toList!4515 lt!1735048) (tuple2!51453 hash!344 newBucket!178)))))

(assert (= (and d!1423217 res!1905932) b!4565904))

(assert (= (and b!4565904 res!1905933) b!4565905))

(declare-fun m!5360499 () Bool)

(assert (=> d!1423217 m!5360499))

(declare-fun m!5360501 () Bool)

(assert (=> d!1423217 m!5360501))

(declare-fun m!5360503 () Bool)

(assert (=> d!1423217 m!5360503))

(declare-fun m!5360505 () Bool)

(assert (=> d!1423217 m!5360505))

(declare-fun m!5360507 () Bool)

(assert (=> b!4565904 m!5360507))

(declare-fun m!5360509 () Bool)

(assert (=> b!4565905 m!5360509))

(assert (=> b!4565664 d!1423217))

(declare-fun d!1423219 () Bool)

(declare-fun e!2846470 () Bool)

(assert (=> d!1423219 e!2846470))

(declare-fun res!1905936 () Bool)

(assert (=> d!1423219 (=> (not res!1905936) (not e!2846470))))

(declare-fun lt!1735051 () ListMap!3777)

(assert (=> d!1423219 (= res!1905936 (not (contains!13765 lt!1735051 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!195 (List!51022 K!12275) List!51022)

(assert (=> d!1423219 (= lt!1735051 (ListMap!3778 (removePresrvNoDuplicatedKeys!195 (toList!4516 lt!1734857) key!3287)))))

(assert (=> d!1423219 (= (-!462 lt!1734857 key!3287) lt!1735051)))

(declare-fun b!4565908 () Bool)

(declare-fun content!8539 (List!51025) (InoxSet K!12275))

(assert (=> b!4565908 (= e!2846470 (= ((_ map and) (content!8539 (keys!17760 lt!1734857)) ((_ map not) (store ((as const (Array K!12275 Bool)) false) key!3287 true))) (content!8539 (keys!17760 lt!1735051))))))

(assert (= (and d!1423219 res!1905936) b!4565908))

(declare-fun m!5360511 () Bool)

(assert (=> d!1423219 m!5360511))

(declare-fun m!5360513 () Bool)

(assert (=> d!1423219 m!5360513))

(declare-fun m!5360515 () Bool)

(assert (=> b!4565908 m!5360515))

(declare-fun m!5360517 () Bool)

(assert (=> b!4565908 m!5360517))

(declare-fun m!5360519 () Bool)

(assert (=> b!4565908 m!5360519))

(assert (=> b!4565908 m!5360517))

(assert (=> b!4565908 m!5360329))

(declare-fun m!5360521 () Bool)

(assert (=> b!4565908 m!5360521))

(assert (=> b!4565908 m!5360329))

(assert (=> b!4565664 d!1423219))

(declare-fun d!1423221 () Bool)

(declare-fun get!16777 (Option!11291) List!51022)

(assert (=> d!1423221 (= (apply!11991 lt!1734870 hash!344) (get!16777 (getValueByKey!1223 (toList!4515 lt!1734870) hash!344)))))

(declare-fun bs!946456 () Bool)

(assert (= bs!946456 d!1423221))

(declare-fun m!5360523 () Bool)

(assert (=> bs!946456 m!5360523))

(assert (=> bs!946456 m!5360523))

(declare-fun m!5360525 () Bool)

(assert (=> bs!946456 m!5360525))

(assert (=> b!4565665 d!1423221))

(declare-fun d!1423223 () Bool)

(declare-fun lt!1735054 () Bool)

(declare-fun content!8540 (List!51023) (InoxSet tuple2!51452))

(assert (=> d!1423223 (= lt!1735054 (select (content!8540 (t!358001 (toList!4515 lm!1477))) lt!1734871))))

(declare-fun e!2846476 () Bool)

(assert (=> d!1423223 (= lt!1735054 e!2846476)))

(declare-fun res!1905941 () Bool)

(assert (=> d!1423223 (=> (not res!1905941) (not e!2846476))))

(assert (=> d!1423223 (= res!1905941 ((_ is Cons!50899) (t!358001 (toList!4515 lm!1477))))))

(assert (=> d!1423223 (= (contains!13766 (t!358001 (toList!4515 lm!1477)) lt!1734871) lt!1735054)))

(declare-fun b!4565913 () Bool)

(declare-fun e!2846475 () Bool)

(assert (=> b!4565913 (= e!2846476 e!2846475)))

(declare-fun res!1905942 () Bool)

(assert (=> b!4565913 (=> res!1905942 e!2846475)))

(assert (=> b!4565913 (= res!1905942 (= (h!56818 (t!358001 (toList!4515 lm!1477))) lt!1734871))))

(declare-fun b!4565914 () Bool)

(assert (=> b!4565914 (= e!2846475 (contains!13766 (t!358001 (t!358001 (toList!4515 lm!1477))) lt!1734871))))

(assert (= (and d!1423223 res!1905941) b!4565913))

(assert (= (and b!4565913 (not res!1905942)) b!4565914))

(declare-fun m!5360527 () Bool)

(assert (=> d!1423223 m!5360527))

(declare-fun m!5360529 () Bool)

(assert (=> d!1423223 m!5360529))

(declare-fun m!5360531 () Bool)

(assert (=> b!4565914 m!5360531))

(assert (=> b!4565655 d!1423223))

(declare-fun d!1423225 () Bool)

(assert (=> d!1423225 true))

(assert (=> d!1423225 true))

(declare-fun lambda!180865 () Int)

(declare-fun forall!10460 (List!51022 Int) Bool)

(assert (=> d!1423225 (= (allKeysSameHash!1108 newBucket!178 hash!344 hashF!1107) (forall!10460 newBucket!178 lambda!180865))))

(declare-fun bs!946457 () Bool)

(assert (= bs!946457 d!1423225))

(declare-fun m!5360533 () Bool)

(assert (=> bs!946457 m!5360533))

(assert (=> b!4565666 d!1423225))

(declare-fun d!1423227 () Bool)

(declare-fun e!2846482 () Bool)

(assert (=> d!1423227 e!2846482))

(declare-fun res!1905945 () Bool)

(assert (=> d!1423227 (=> res!1905945 e!2846482)))

(declare-fun lt!1735066 () Bool)

(assert (=> d!1423227 (= res!1905945 (not lt!1735066))))

(declare-fun lt!1735064 () Bool)

(assert (=> d!1423227 (= lt!1735066 lt!1735064)))

(declare-fun lt!1735063 () Unit!103209)

(declare-fun e!2846481 () Unit!103209)

(assert (=> d!1423227 (= lt!1735063 e!2846481)))

(declare-fun c!780829 () Bool)

(assert (=> d!1423227 (= c!780829 lt!1735064)))

(declare-fun containsKey!2008 (List!51023 (_ BitVec 64)) Bool)

(assert (=> d!1423227 (= lt!1735064 (containsKey!2008 (toList!4515 lt!1734870) hash!344))))

(assert (=> d!1423227 (= (contains!13767 lt!1734870 hash!344) lt!1735066)))

(declare-fun b!4565925 () Bool)

(declare-fun lt!1735065 () Unit!103209)

(assert (=> b!4565925 (= e!2846481 lt!1735065)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1127 (List!51023 (_ BitVec 64)) Unit!103209)

(assert (=> b!4565925 (= lt!1735065 (lemmaContainsKeyImpliesGetValueByKeyDefined!1127 (toList!4515 lt!1734870) hash!344))))

(declare-fun isDefined!8563 (Option!11291) Bool)

(assert (=> b!4565925 (isDefined!8563 (getValueByKey!1223 (toList!4515 lt!1734870) hash!344))))

(declare-fun b!4565926 () Bool)

(declare-fun Unit!103225 () Unit!103209)

(assert (=> b!4565926 (= e!2846481 Unit!103225)))

(declare-fun b!4565927 () Bool)

(assert (=> b!4565927 (= e!2846482 (isDefined!8563 (getValueByKey!1223 (toList!4515 lt!1734870) hash!344)))))

(assert (= (and d!1423227 c!780829) b!4565925))

(assert (= (and d!1423227 (not c!780829)) b!4565926))

(assert (= (and d!1423227 (not res!1905945)) b!4565927))

(declare-fun m!5360535 () Bool)

(assert (=> d!1423227 m!5360535))

(declare-fun m!5360537 () Bool)

(assert (=> b!4565925 m!5360537))

(assert (=> b!4565925 m!5360523))

(assert (=> b!4565925 m!5360523))

(declare-fun m!5360539 () Bool)

(assert (=> b!4565925 m!5360539))

(assert (=> b!4565927 m!5360523))

(assert (=> b!4565927 m!5360523))

(assert (=> b!4565927 m!5360539))

(assert (=> b!4565656 d!1423227))

(declare-fun d!1423229 () Bool)

(declare-fun tail!7885 (List!51023) List!51023)

(assert (=> d!1423229 (= (tail!7883 lm!1477) (ListLongMap!3148 (tail!7885 (toList!4515 lm!1477))))))

(declare-fun bs!946458 () Bool)

(assert (= bs!946458 d!1423229))

(declare-fun m!5360541 () Bool)

(assert (=> bs!946458 m!5360541))

(assert (=> b!4565656 d!1423229))

(declare-fun b!4565939 () Bool)

(declare-fun e!2846488 () List!51022)

(assert (=> b!4565939 (= e!2846488 Nil!50898)))

(declare-fun b!4565936 () Bool)

(declare-fun e!2846487 () List!51022)

(assert (=> b!4565936 (= e!2846487 (t!358000 lt!1734866))))

(declare-fun b!4565937 () Bool)

(assert (=> b!4565937 (= e!2846487 e!2846488)))

(declare-fun c!780834 () Bool)

(assert (=> b!4565937 (= c!780834 ((_ is Cons!50898) lt!1734866))))

(declare-fun b!4565938 () Bool)

(assert (=> b!4565938 (= e!2846488 (Cons!50898 (h!56817 lt!1734866) (removePairForKey!881 (t!358000 lt!1734866) key!3287)))))

(declare-fun d!1423231 () Bool)

(declare-fun lt!1735069 () List!51022)

(assert (=> d!1423231 (not (containsKey!2004 lt!1735069 key!3287))))

(assert (=> d!1423231 (= lt!1735069 e!2846487)))

(declare-fun c!780835 () Bool)

(assert (=> d!1423231 (= c!780835 (and ((_ is Cons!50898) lt!1734866) (= (_1!29019 (h!56817 lt!1734866)) key!3287)))))

(assert (=> d!1423231 (noDuplicateKeys!1254 lt!1734866)))

(assert (=> d!1423231 (= (removePairForKey!881 lt!1734866 key!3287) lt!1735069)))

(assert (= (and d!1423231 c!780835) b!4565936))

(assert (= (and d!1423231 (not c!780835)) b!4565937))

(assert (= (and b!4565937 c!780834) b!4565938))

(assert (= (and b!4565937 (not c!780834)) b!4565939))

(declare-fun m!5360543 () Bool)

(assert (=> b!4565938 m!5360543))

(declare-fun m!5360545 () Bool)

(assert (=> d!1423231 m!5360545))

(declare-fun m!5360547 () Bool)

(assert (=> d!1423231 m!5360547))

(assert (=> b!4565657 d!1423231))

(declare-fun d!1423233 () Bool)

(assert (=> d!1423233 (= (apply!11991 lm!1477 hash!344) (get!16777 (getValueByKey!1223 (toList!4515 lm!1477) hash!344)))))

(declare-fun bs!946459 () Bool)

(assert (= bs!946459 d!1423233))

(declare-fun m!5360549 () Bool)

(assert (=> bs!946459 m!5360549))

(assert (=> bs!946459 m!5360549))

(declare-fun m!5360551 () Bool)

(assert (=> bs!946459 m!5360551))

(assert (=> b!4565657 d!1423233))

(declare-fun d!1423235 () Bool)

(assert (=> d!1423235 (dynLambda!21295 lambda!180813 lt!1734871)))

(declare-fun lt!1735072 () Unit!103209)

(declare-fun choose!30314 (List!51023 Int tuple2!51452) Unit!103209)

(assert (=> d!1423235 (= lt!1735072 (choose!30314 (toList!4515 lm!1477) lambda!180813 lt!1734871))))

(declare-fun e!2846491 () Bool)

(assert (=> d!1423235 e!2846491))

(declare-fun res!1905948 () Bool)

(assert (=> d!1423235 (=> (not res!1905948) (not e!2846491))))

(assert (=> d!1423235 (= res!1905948 (forall!10458 (toList!4515 lm!1477) lambda!180813))))

(assert (=> d!1423235 (= (forallContained!2721 (toList!4515 lm!1477) lambda!180813 lt!1734871) lt!1735072)))

(declare-fun b!4565942 () Bool)

(assert (=> b!4565942 (= e!2846491 (contains!13766 (toList!4515 lm!1477) lt!1734871))))

(assert (= (and d!1423235 res!1905948) b!4565942))

(declare-fun b_lambda!163105 () Bool)

(assert (=> (not b_lambda!163105) (not d!1423235)))

(declare-fun m!5360553 () Bool)

(assert (=> d!1423235 m!5360553))

(declare-fun m!5360555 () Bool)

(assert (=> d!1423235 m!5360555))

(assert (=> d!1423235 m!5360087))

(assert (=> b!4565942 m!5360035))

(assert (=> b!4565657 d!1423235))

(declare-fun d!1423237 () Bool)

(declare-fun e!2846493 () Bool)

(assert (=> d!1423237 e!2846493))

(declare-fun res!1905949 () Bool)

(assert (=> d!1423237 (=> res!1905949 e!2846493)))

(declare-fun lt!1735076 () Bool)

(assert (=> d!1423237 (= res!1905949 (not lt!1735076))))

(declare-fun lt!1735074 () Bool)

(assert (=> d!1423237 (= lt!1735076 lt!1735074)))

(declare-fun lt!1735073 () Unit!103209)

(declare-fun e!2846492 () Unit!103209)

(assert (=> d!1423237 (= lt!1735073 e!2846492)))

(declare-fun c!780836 () Bool)

(assert (=> d!1423237 (= c!780836 lt!1735074)))

(assert (=> d!1423237 (= lt!1735074 (containsKey!2008 (toList!4515 lm!1477) lt!1734862))))

(assert (=> d!1423237 (= (contains!13767 lm!1477 lt!1734862) lt!1735076)))

(declare-fun b!4565943 () Bool)

(declare-fun lt!1735075 () Unit!103209)

(assert (=> b!4565943 (= e!2846492 lt!1735075)))

(assert (=> b!4565943 (= lt!1735075 (lemmaContainsKeyImpliesGetValueByKeyDefined!1127 (toList!4515 lm!1477) lt!1734862))))

(assert (=> b!4565943 (isDefined!8563 (getValueByKey!1223 (toList!4515 lm!1477) lt!1734862))))

(declare-fun b!4565944 () Bool)

(declare-fun Unit!103226 () Unit!103209)

(assert (=> b!4565944 (= e!2846492 Unit!103226)))

(declare-fun b!4565945 () Bool)

(assert (=> b!4565945 (= e!2846493 (isDefined!8563 (getValueByKey!1223 (toList!4515 lm!1477) lt!1734862)))))

(assert (= (and d!1423237 c!780836) b!4565943))

(assert (= (and d!1423237 (not c!780836)) b!4565944))

(assert (= (and d!1423237 (not res!1905949)) b!4565945))

(declare-fun m!5360557 () Bool)

(assert (=> d!1423237 m!5360557))

(declare-fun m!5360559 () Bool)

(assert (=> b!4565943 m!5360559))

(declare-fun m!5360561 () Bool)

(assert (=> b!4565943 m!5360561))

(assert (=> b!4565943 m!5360561))

(declare-fun m!5360563 () Bool)

(assert (=> b!4565943 m!5360563))

(assert (=> b!4565945 m!5360561))

(assert (=> b!4565945 m!5360561))

(assert (=> b!4565945 m!5360563))

(assert (=> b!4565657 d!1423237))

(declare-fun d!1423239 () Bool)

(declare-fun lt!1735077 () Bool)

(assert (=> d!1423239 (= lt!1735077 (select (content!8540 (toList!4515 lm!1477)) lt!1734871))))

(declare-fun e!2846495 () Bool)

(assert (=> d!1423239 (= lt!1735077 e!2846495)))

(declare-fun res!1905950 () Bool)

(assert (=> d!1423239 (=> (not res!1905950) (not e!2846495))))

(assert (=> d!1423239 (= res!1905950 ((_ is Cons!50899) (toList!4515 lm!1477)))))

(assert (=> d!1423239 (= (contains!13766 (toList!4515 lm!1477) lt!1734871) lt!1735077)))

(declare-fun b!4565946 () Bool)

(declare-fun e!2846494 () Bool)

(assert (=> b!4565946 (= e!2846495 e!2846494)))

(declare-fun res!1905951 () Bool)

(assert (=> b!4565946 (=> res!1905951 e!2846494)))

(assert (=> b!4565946 (= res!1905951 (= (h!56818 (toList!4515 lm!1477)) lt!1734871))))

(declare-fun b!4565947 () Bool)

(assert (=> b!4565947 (= e!2846494 (contains!13766 (t!358001 (toList!4515 lm!1477)) lt!1734871))))

(assert (= (and d!1423239 res!1905950) b!4565946))

(assert (= (and b!4565946 (not res!1905951)) b!4565947))

(declare-fun m!5360565 () Bool)

(assert (=> d!1423239 m!5360565))

(declare-fun m!5360567 () Bool)

(assert (=> d!1423239 m!5360567))

(assert (=> b!4565947 m!5360081))

(assert (=> b!4565657 d!1423239))

(declare-fun bs!946460 () Bool)

(declare-fun d!1423241 () Bool)

(assert (= bs!946460 (and d!1423241 d!1423209)))

(declare-fun lambda!180868 () Int)

(assert (=> bs!946460 (= lambda!180868 lambda!180859)))

(declare-fun bs!946461 () Bool)

(assert (= bs!946461 (and d!1423241 d!1423169)))

(assert (=> bs!946461 (= lambda!180868 lambda!180853)))

(declare-fun bs!946462 () Bool)

(assert (= bs!946462 (and d!1423241 start!454256)))

(assert (=> bs!946462 (= lambda!180868 lambda!180813)))

(declare-fun bs!946463 () Bool)

(assert (= bs!946463 (and d!1423241 d!1423193)))

(assert (=> bs!946463 (= lambda!180868 lambda!180855)))

(declare-fun bs!946464 () Bool)

(assert (= bs!946464 (and d!1423241 d!1423093)))

(assert (=> bs!946464 (not (= lambda!180868 lambda!180816))))

(declare-fun bs!946465 () Bool)

(assert (= bs!946465 (and d!1423241 d!1423163)))

(assert (=> bs!946465 (= lambda!180868 lambda!180847)))

(declare-fun bs!946466 () Bool)

(assert (= bs!946466 (and d!1423241 d!1423145)))

(assert (=> bs!946466 (= lambda!180868 lambda!180843)))

(declare-fun bs!946467 () Bool)

(assert (= bs!946467 (and d!1423241 d!1423213)))

(assert (=> bs!946467 (= lambda!180868 lambda!180862)))

(declare-fun bs!946468 () Bool)

(assert (= bs!946468 (and d!1423241 d!1423115)))

(assert (=> bs!946468 (= lambda!180868 lambda!180828)))

(declare-fun bs!946469 () Bool)

(assert (= bs!946469 (and d!1423241 d!1423095)))

(assert (=> bs!946469 (= lambda!180868 lambda!180819)))

(assert (=> d!1423241 (contains!13767 lm!1477 (hash!3061 hashF!1107 key!3287))))

(declare-fun lt!1735080 () Unit!103209)

(declare-fun choose!30315 (ListLongMap!3147 K!12275 Hashable!5649) Unit!103209)

(assert (=> d!1423241 (= lt!1735080 (choose!30315 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1423241 (forall!10458 (toList!4515 lm!1477) lambda!180868)))

(assert (=> d!1423241 (= (lemmaInGenMapThenLongMapContainsHash!328 lm!1477 key!3287 hashF!1107) lt!1735080)))

(declare-fun bs!946470 () Bool)

(assert (= bs!946470 d!1423241))

(assert (=> bs!946470 m!5360085))

(assert (=> bs!946470 m!5360085))

(declare-fun m!5360569 () Bool)

(assert (=> bs!946470 m!5360569))

(declare-fun m!5360571 () Bool)

(assert (=> bs!946470 m!5360571))

(declare-fun m!5360573 () Bool)

(assert (=> bs!946470 m!5360573))

(assert (=> b!4565657 d!1423241))

(declare-fun d!1423243 () Bool)

(assert (=> d!1423243 (contains!13766 (toList!4515 lm!1477) (tuple2!51453 hash!344 lt!1734866))))

(declare-fun lt!1735083 () Unit!103209)

(declare-fun choose!30316 (List!51023 (_ BitVec 64) List!51022) Unit!103209)

(assert (=> d!1423243 (= lt!1735083 (choose!30316 (toList!4515 lm!1477) hash!344 lt!1734866))))

(declare-fun e!2846498 () Bool)

(assert (=> d!1423243 e!2846498))

(declare-fun res!1905954 () Bool)

(assert (=> d!1423243 (=> (not res!1905954) (not e!2846498))))

(assert (=> d!1423243 (= res!1905954 (isStrictlySorted!495 (toList!4515 lm!1477)))))

(assert (=> d!1423243 (= (lemmaGetValueByKeyImpliesContainsTuple!766 (toList!4515 lm!1477) hash!344 lt!1734866) lt!1735083)))

(declare-fun b!4565950 () Bool)

(assert (=> b!4565950 (= e!2846498 (= (getValueByKey!1223 (toList!4515 lm!1477) hash!344) (Some!11290 lt!1734866)))))

(assert (= (and d!1423243 res!1905954) b!4565950))

(declare-fun m!5360575 () Bool)

(assert (=> d!1423243 m!5360575))

(declare-fun m!5360577 () Bool)

(assert (=> d!1423243 m!5360577))

(assert (=> d!1423243 m!5360137))

(assert (=> b!4565950 m!5360549))

(assert (=> b!4565657 d!1423243))

(declare-fun d!1423245 () Bool)

(declare-fun res!1905959 () Bool)

(declare-fun e!2846503 () Bool)

(assert (=> d!1423245 (=> res!1905959 e!2846503)))

(assert (=> d!1423245 (= res!1905959 (and ((_ is Cons!50898) lt!1734866) (= (_1!29019 (h!56817 lt!1734866)) key!3287)))))

(assert (=> d!1423245 (= (containsKey!2004 lt!1734866 key!3287) e!2846503)))

(declare-fun b!4565955 () Bool)

(declare-fun e!2846504 () Bool)

(assert (=> b!4565955 (= e!2846503 e!2846504)))

(declare-fun res!1905960 () Bool)

(assert (=> b!4565955 (=> (not res!1905960) (not e!2846504))))

(assert (=> b!4565955 (= res!1905960 ((_ is Cons!50898) lt!1734866))))

(declare-fun b!4565956 () Bool)

(assert (=> b!4565956 (= e!2846504 (containsKey!2004 (t!358000 lt!1734866) key!3287))))

(assert (= (and d!1423245 (not res!1905959)) b!4565955))

(assert (= (and b!4565955 res!1905960) b!4565956))

(declare-fun m!5360579 () Bool)

(assert (=> b!4565956 m!5360579))

(assert (=> b!4565658 d!1423245))

(declare-fun b!4565957 () Bool)

(declare-fun e!2846505 () Unit!103209)

(declare-fun e!2846509 () Unit!103209)

(assert (=> b!4565957 (= e!2846505 e!2846509)))

(declare-fun c!780838 () Bool)

(declare-fun call!318572 () Bool)

(assert (=> b!4565957 (= c!780838 call!318572)))

(declare-fun b!4565959 () Bool)

(declare-fun e!2846510 () Bool)

(declare-fun e!2846508 () Bool)

(assert (=> b!4565959 (= e!2846510 e!2846508)))

(declare-fun res!1905962 () Bool)

(assert (=> b!4565959 (=> (not res!1905962) (not e!2846508))))

(assert (=> b!4565959 (= res!1905962 (isDefined!8561 (getValueByKey!1222 (toList!4516 lt!1734860) key!3287)))))

(declare-fun b!4565960 () Bool)

(declare-fun e!2846507 () List!51025)

(assert (=> b!4565960 (= e!2846507 (getKeysList!529 (toList!4516 lt!1734860)))))

(declare-fun b!4565961 () Bool)

(assert (=> b!4565961 (= e!2846507 (keys!17760 lt!1734860))))

(declare-fun b!4565962 () Bool)

(declare-fun lt!1735086 () Unit!103209)

(assert (=> b!4565962 (= e!2846505 lt!1735086)))

(declare-fun lt!1735085 () Unit!103209)

(assert (=> b!4565962 (= lt!1735085 (lemmaContainsKeyImpliesGetValueByKeyDefined!1125 (toList!4516 lt!1734860) key!3287))))

(assert (=> b!4565962 (isDefined!8561 (getValueByKey!1222 (toList!4516 lt!1734860) key!3287))))

(declare-fun lt!1735087 () Unit!103209)

(assert (=> b!4565962 (= lt!1735087 lt!1735085)))

(assert (=> b!4565962 (= lt!1735086 (lemmaInListThenGetKeysListContains!525 (toList!4516 lt!1734860) key!3287))))

(assert (=> b!4565962 call!318572))

(declare-fun bm!318567 () Bool)

(assert (=> bm!318567 (= call!318572 (contains!13769 e!2846507 key!3287))))

(declare-fun c!780839 () Bool)

(declare-fun c!780837 () Bool)

(assert (=> bm!318567 (= c!780839 c!780837)))

(declare-fun b!4565958 () Bool)

(assert (=> b!4565958 (= e!2846508 (contains!13769 (keys!17760 lt!1734860) key!3287))))

(declare-fun d!1423247 () Bool)

(assert (=> d!1423247 e!2846510))

(declare-fun res!1905963 () Bool)

(assert (=> d!1423247 (=> res!1905963 e!2846510)))

(declare-fun e!2846506 () Bool)

(assert (=> d!1423247 (= res!1905963 e!2846506)))

(declare-fun res!1905961 () Bool)

(assert (=> d!1423247 (=> (not res!1905961) (not e!2846506))))

(declare-fun lt!1735091 () Bool)

(assert (=> d!1423247 (= res!1905961 (not lt!1735091))))

(declare-fun lt!1735084 () Bool)

(assert (=> d!1423247 (= lt!1735091 lt!1735084)))

(declare-fun lt!1735089 () Unit!103209)

(assert (=> d!1423247 (= lt!1735089 e!2846505)))

(assert (=> d!1423247 (= c!780837 lt!1735084)))

(assert (=> d!1423247 (= lt!1735084 (containsKey!2006 (toList!4516 lt!1734860) key!3287))))

(assert (=> d!1423247 (= (contains!13765 lt!1734860 key!3287) lt!1735091)))

(declare-fun b!4565963 () Bool)

(declare-fun Unit!103227 () Unit!103209)

(assert (=> b!4565963 (= e!2846509 Unit!103227)))

(declare-fun b!4565964 () Bool)

(assert (=> b!4565964 false))

(declare-fun lt!1735088 () Unit!103209)

(declare-fun lt!1735090 () Unit!103209)

(assert (=> b!4565964 (= lt!1735088 lt!1735090)))

(assert (=> b!4565964 (containsKey!2006 (toList!4516 lt!1734860) key!3287)))

(assert (=> b!4565964 (= lt!1735090 (lemmaInGetKeysListThenContainsKey!528 (toList!4516 lt!1734860) key!3287))))

(declare-fun Unit!103228 () Unit!103209)

(assert (=> b!4565964 (= e!2846509 Unit!103228)))

(declare-fun b!4565965 () Bool)

(assert (=> b!4565965 (= e!2846506 (not (contains!13769 (keys!17760 lt!1734860) key!3287)))))

(assert (= (and d!1423247 c!780837) b!4565962))

(assert (= (and d!1423247 (not c!780837)) b!4565957))

(assert (= (and b!4565957 c!780838) b!4565964))

(assert (= (and b!4565957 (not c!780838)) b!4565963))

(assert (= (or b!4565962 b!4565957) bm!318567))

(assert (= (and bm!318567 c!780839) b!4565960))

(assert (= (and bm!318567 (not c!780839)) b!4565961))

(assert (= (and d!1423247 res!1905961) b!4565965))

(assert (= (and d!1423247 (not res!1905963)) b!4565959))

(assert (= (and b!4565959 res!1905962) b!4565958))

(declare-fun m!5360581 () Bool)

(assert (=> b!4565960 m!5360581))

(declare-fun m!5360583 () Bool)

(assert (=> b!4565962 m!5360583))

(declare-fun m!5360585 () Bool)

(assert (=> b!4565962 m!5360585))

(assert (=> b!4565962 m!5360585))

(declare-fun m!5360587 () Bool)

(assert (=> b!4565962 m!5360587))

(declare-fun m!5360589 () Bool)

(assert (=> b!4565962 m!5360589))

(declare-fun m!5360591 () Bool)

(assert (=> b!4565958 m!5360591))

(assert (=> b!4565958 m!5360591))

(declare-fun m!5360593 () Bool)

(assert (=> b!4565958 m!5360593))

(assert (=> b!4565959 m!5360585))

(assert (=> b!4565959 m!5360585))

(assert (=> b!4565959 m!5360587))

(assert (=> b!4565965 m!5360591))

(assert (=> b!4565965 m!5360591))

(assert (=> b!4565965 m!5360593))

(assert (=> b!4565961 m!5360591))

(declare-fun m!5360595 () Bool)

(assert (=> bm!318567 m!5360595))

(declare-fun m!5360597 () Bool)

(assert (=> b!4565964 m!5360597))

(declare-fun m!5360599 () Bool)

(assert (=> b!4565964 m!5360599))

(assert (=> d!1423247 m!5360597))

(assert (=> b!4565669 d!1423247))

(declare-fun bs!946471 () Bool)

(declare-fun d!1423249 () Bool)

(assert (= bs!946471 (and d!1423249 d!1423209)))

(declare-fun lambda!180869 () Int)

(assert (=> bs!946471 (= lambda!180869 lambda!180859)))

(declare-fun bs!946472 () Bool)

(assert (= bs!946472 (and d!1423249 d!1423169)))

(assert (=> bs!946472 (= lambda!180869 lambda!180853)))

(declare-fun bs!946473 () Bool)

(assert (= bs!946473 (and d!1423249 start!454256)))

(assert (=> bs!946473 (= lambda!180869 lambda!180813)))

(declare-fun bs!946474 () Bool)

(assert (= bs!946474 (and d!1423249 d!1423193)))

(assert (=> bs!946474 (= lambda!180869 lambda!180855)))

(declare-fun bs!946475 () Bool)

(assert (= bs!946475 (and d!1423249 d!1423093)))

(assert (=> bs!946475 (not (= lambda!180869 lambda!180816))))

(declare-fun bs!946476 () Bool)

(assert (= bs!946476 (and d!1423249 d!1423163)))

(assert (=> bs!946476 (= lambda!180869 lambda!180847)))

(declare-fun bs!946477 () Bool)

(assert (= bs!946477 (and d!1423249 d!1423241)))

(assert (=> bs!946477 (= lambda!180869 lambda!180868)))

(declare-fun bs!946478 () Bool)

(assert (= bs!946478 (and d!1423249 d!1423145)))

(assert (=> bs!946478 (= lambda!180869 lambda!180843)))

(declare-fun bs!946479 () Bool)

(assert (= bs!946479 (and d!1423249 d!1423213)))

(assert (=> bs!946479 (= lambda!180869 lambda!180862)))

(declare-fun bs!946480 () Bool)

(assert (= bs!946480 (and d!1423249 d!1423115)))

(assert (=> bs!946480 (= lambda!180869 lambda!180828)))

(declare-fun bs!946481 () Bool)

(assert (= bs!946481 (and d!1423249 d!1423095)))

(assert (=> bs!946481 (= lambda!180869 lambda!180819)))

(declare-fun lt!1735092 () ListMap!3777)

(assert (=> d!1423249 (invariantList!1081 (toList!4516 lt!1735092))))

(declare-fun e!2846511 () ListMap!3777)

(assert (=> d!1423249 (= lt!1735092 e!2846511)))

(declare-fun c!780840 () Bool)

(assert (=> d!1423249 (= c!780840 ((_ is Cons!50899) (toList!4515 lm!1477)))))

(assert (=> d!1423249 (forall!10458 (toList!4515 lm!1477) lambda!180869)))

(assert (=> d!1423249 (= (extractMap!1310 (toList!4515 lm!1477)) lt!1735092)))

(declare-fun b!4565966 () Bool)

(assert (=> b!4565966 (= e!2846511 (addToMapMapFromBucket!767 (_2!29020 (h!56818 (toList!4515 lm!1477))) (extractMap!1310 (t!358001 (toList!4515 lm!1477)))))))

(declare-fun b!4565967 () Bool)

(assert (=> b!4565967 (= e!2846511 (ListMap!3778 Nil!50898))))

(assert (= (and d!1423249 c!780840) b!4565966))

(assert (= (and d!1423249 (not c!780840)) b!4565967))

(declare-fun m!5360601 () Bool)

(assert (=> d!1423249 m!5360601))

(declare-fun m!5360603 () Bool)

(assert (=> d!1423249 m!5360603))

(assert (=> b!4565966 m!5360095))

(assert (=> b!4565966 m!5360095))

(declare-fun m!5360605 () Bool)

(assert (=> b!4565966 m!5360605))

(assert (=> b!4565669 d!1423249))

(declare-fun b!4565972 () Bool)

(declare-fun e!2846514 () Bool)

(declare-fun tp!1339437 () Bool)

(declare-fun tp!1339438 () Bool)

(assert (=> b!4565972 (= e!2846514 (and tp!1339437 tp!1339438))))

(assert (=> b!4565659 (= tp!1339422 e!2846514)))

(assert (= (and b!4565659 ((_ is Cons!50899) (toList!4515 lm!1477))) b!4565972))

(declare-fun tp!1339441 () Bool)

(declare-fun b!4565977 () Bool)

(declare-fun e!2846517 () Bool)

(assert (=> b!4565977 (= e!2846517 (and tp_is_empty!28293 tp_is_empty!28295 tp!1339441))))

(assert (=> b!4565654 (= tp!1339423 e!2846517)))

(assert (= (and b!4565654 ((_ is Cons!50898) (t!358000 newBucket!178))) b!4565977))

(declare-fun b_lambda!163107 () Bool)

(assert (= b_lambda!163105 (or start!454256 b_lambda!163107)))

(declare-fun bs!946482 () Bool)

(declare-fun d!1423251 () Bool)

(assert (= bs!946482 (and d!1423251 start!454256)))

(assert (=> bs!946482 (= (dynLambda!21295 lambda!180813 lt!1734871) (noDuplicateKeys!1254 (_2!29020 lt!1734871)))))

(declare-fun m!5360607 () Bool)

(assert (=> bs!946482 m!5360607))

(assert (=> d!1423235 d!1423251))

(declare-fun b_lambda!163109 () Bool)

(assert (= b_lambda!163095 (or start!454256 b_lambda!163109)))

(declare-fun bs!946483 () Bool)

(declare-fun d!1423253 () Bool)

(assert (= bs!946483 (and d!1423253 start!454256)))

(assert (=> bs!946483 (= (dynLambda!21295 lambda!180813 (h!56818 (toList!4515 lm!1477))) (noDuplicateKeys!1254 (_2!29020 (h!56818 (toList!4515 lm!1477)))))))

(declare-fun m!5360609 () Bool)

(assert (=> bs!946483 m!5360609))

(assert (=> b!4565682 d!1423253))

(check-sat (not b!4565925) (not d!1423223) (not b!4565959) (not b!4565815) (not b!4565956) (not b_lambda!163109) (not b!4565692) (not bs!946482) (not b_lambda!163107) (not d!1423163) (not d!1423159) (not d!1423229) (not b!4565757) (not b!4565900) tp_is_empty!28293 (not d!1423093) (not d!1423235) (not b!4565901) (not b!4565758) (not d!1423169) (not b!4565966) (not b!4565947) (not b!4565759) (not d!1423125) (not d!1423249) (not d!1423217) (not b!4565695) tp_is_empty!28295 (not d!1423219) (not d!1423243) (not d!1423225) (not b!4565763) (not bs!946483) (not d!1423197) (not b!4565938) (not b!4565820) (not b!4565965) (not b!4565814) (not d!1423227) (not b!4565964) (not b!4565756) (not b!4565905) (not d!1423215) (not b!4565817) (not b!4565811) (not d!1423247) (not d!1423095) (not d!1423145) (not d!1423209) (not bm!318564) (not d!1423115) (not d!1423195) (not b!4565945) (not b!4565943) (not d!1423211) (not d!1423107) (not b!4565908) (not d!1423091) (not b!4565942) (not b!4565831) (not d!1423109) (not b!4565703) (not b!4565818) (not b!4565816) (not d!1423237) (not b!4565914) (not b!4565704) (not b!4565762) (not b!4565972) (not d!1423213) (not b!4565683) (not b!4565962) (not b!4565864) (not bm!318560) (not b!4565690) (not b!4565760) (not d!1423233) (not b!4565960) (not d!1423239) (not d!1423241) (not d!1423231) (not b!4565950) (not b!4565927) (not bm!318567) (not d!1423221) (not b!4565958) (not b!4565904) (not b!4565961) (not d!1423193) (not b!4565902) (not b!4565693) (not b!4565977) (not b!4565821))
(check-sat)
