; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432384 () Bool)

(assert start!432384)

(declare-fun b!4428933 () Bool)

(declare-fun e!2757723 () Bool)

(declare-fun e!2757725 () Bool)

(assert (=> b!4428933 (= e!2757723 (not e!2757725))))

(declare-fun res!1831578 () Bool)

(assert (=> b!4428933 (=> res!1831578 e!2757725)))

(declare-datatypes ((V!11231 0))(
  ( (V!11232 (val!17059 Int)) )
))
(declare-datatypes ((K!10985 0))(
  ( (K!10986 (val!17060 Int)) )
))
(declare-datatypes ((tuple2!49438 0))(
  ( (tuple2!49439 (_1!28013 K!10985) (_2!28013 V!11231)) )
))
(declare-datatypes ((List!49747 0))(
  ( (Nil!49623) (Cons!49623 (h!55318 tuple2!49438) (t!356685 List!49747)) )
))
(declare-datatypes ((tuple2!49440 0))(
  ( (tuple2!49441 (_1!28014 (_ BitVec 64)) (_2!28014 List!49747)) )
))
(declare-datatypes ((List!49748 0))(
  ( (Nil!49624) (Cons!49624 (h!55319 tuple2!49440) (t!356686 List!49748)) )
))
(declare-datatypes ((ListLongMap!2167 0))(
  ( (ListLongMap!2168 (toList!3517 List!49748)) )
))
(declare-fun lt!1628255 () ListLongMap!2167)

(declare-fun lambda!154782 () Int)

(declare-fun forall!9590 (List!49748 Int) Bool)

(assert (=> b!4428933 (= res!1831578 (not (forall!9590 (toList!3517 lt!1628255) lambda!154782)))))

(assert (=> b!4428933 (forall!9590 (toList!3517 lt!1628255) lambda!154782)))

(declare-fun lm!1616 () ListLongMap!2167)

(declare-fun lt!1628266 () tuple2!49440)

(declare-fun +!1114 (ListLongMap!2167 tuple2!49440) ListLongMap!2167)

(assert (=> b!4428933 (= lt!1628255 (+!1114 lm!1616 lt!1628266))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49747)

(assert (=> b!4428933 (= lt!1628266 (tuple2!49441 hash!366 newBucket!194))))

(declare-datatypes ((Unit!82527 0))(
  ( (Unit!82528) )
))
(declare-fun lt!1628259 () Unit!82527)

(declare-fun addValidProp!409 (ListLongMap!2167 Int (_ BitVec 64) List!49747) Unit!82527)

(assert (=> b!4428933 (= lt!1628259 (addValidProp!409 lm!1616 lambda!154782 hash!366 newBucket!194))))

(declare-fun b!4428934 () Bool)

(declare-fun e!2757722 () Bool)

(assert (=> b!4428934 (= e!2757722 e!2757723)))

(declare-fun res!1831580 () Bool)

(assert (=> b!4428934 (=> (not res!1831580) (not e!2757723))))

(declare-fun e!2757724 () Bool)

(assert (=> b!4428934 (= res!1831580 e!2757724)))

(declare-fun res!1831571 () Bool)

(assert (=> b!4428934 (=> res!1831571 e!2757724)))

(declare-fun e!2757726 () Bool)

(assert (=> b!4428934 (= res!1831571 e!2757726)))

(declare-fun res!1831579 () Bool)

(assert (=> b!4428934 (=> (not res!1831579) (not e!2757726))))

(declare-fun lt!1628252 () Bool)

(assert (=> b!4428934 (= res!1831579 lt!1628252)))

(declare-fun contains!12144 (ListLongMap!2167 (_ BitVec 64)) Bool)

(assert (=> b!4428934 (= lt!1628252 (contains!12144 lm!1616 hash!366))))

(declare-fun res!1831573 () Bool)

(declare-fun e!2757727 () Bool)

(assert (=> start!432384 (=> (not res!1831573) (not e!2757727))))

(assert (=> start!432384 (= res!1831573 (forall!9590 (toList!3517 lm!1616) lambda!154782))))

(assert (=> start!432384 e!2757727))

(declare-fun tp_is_empty!26305 () Bool)

(assert (=> start!432384 tp_is_empty!26305))

(declare-fun tp_is_empty!26307 () Bool)

(assert (=> start!432384 tp_is_empty!26307))

(declare-fun e!2757718 () Bool)

(assert (=> start!432384 e!2757718))

(declare-fun e!2757717 () Bool)

(declare-fun inv!65171 (ListLongMap!2167) Bool)

(assert (=> start!432384 (and (inv!65171 lm!1616) e!2757717)))

(assert (=> start!432384 true))

(declare-fun b!4428935 () Bool)

(declare-fun res!1831582 () Bool)

(assert (=> b!4428935 (=> (not res!1831582) (not e!2757727))))

(declare-datatypes ((Hashable!5159 0))(
  ( (HashableExt!5158 (__x!30862 Int)) )
))
(declare-fun hashF!1220 () Hashable!5159)

(declare-fun allKeysSameHashInMap!871 (ListLongMap!2167 Hashable!5159) Bool)

(assert (=> b!4428935 (= res!1831582 (allKeysSameHashInMap!871 lm!1616 hashF!1220))))

(declare-fun b!4428936 () Bool)

(declare-fun tp!1333387 () Bool)

(assert (=> b!4428936 (= e!2757717 tp!1333387)))

(declare-fun b!4428937 () Bool)

(assert (=> b!4428937 (= e!2757727 e!2757722)))

(declare-fun res!1831583 () Bool)

(assert (=> b!4428937 (=> (not res!1831583) (not e!2757722))))

(declare-datatypes ((ListMap!2761 0))(
  ( (ListMap!2762 (toList!3518 List!49747)) )
))
(declare-fun lt!1628250 () ListMap!2761)

(declare-fun key!3717 () K!10985)

(declare-fun contains!12145 (ListMap!2761 K!10985) Bool)

(assert (=> b!4428937 (= res!1831583 (not (contains!12145 lt!1628250 key!3717)))))

(declare-fun extractMap!826 (List!49748) ListMap!2761)

(assert (=> b!4428937 (= lt!1628250 (extractMap!826 (toList!3517 lm!1616)))))

(declare-fun b!4428938 () Bool)

(declare-fun res!1831572 () Bool)

(assert (=> b!4428938 (=> (not res!1831572) (not e!2757723))))

(declare-fun noDuplicateKeys!765 (List!49747) Bool)

(assert (=> b!4428938 (= res!1831572 (noDuplicateKeys!765 newBucket!194))))

(declare-fun b!4428939 () Bool)

(declare-fun res!1831575 () Bool)

(assert (=> b!4428939 (=> res!1831575 e!2757725)))

(get-info :version)

(assert (=> b!4428939 (= res!1831575 (or (and ((_ is Cons!49624) (toList!3517 lm!1616)) (= (_1!28014 (h!55319 (toList!3517 lm!1616))) hash!366)) (not ((_ is Cons!49624) (toList!3517 lm!1616))) (= (_1!28014 (h!55319 (toList!3517 lm!1616))) hash!366)))))

(declare-fun b!4428940 () Bool)

(declare-fun e!2757719 () Bool)

(declare-fun e!2757728 () Bool)

(assert (=> b!4428940 (= e!2757719 e!2757728)))

(declare-fun res!1831576 () Bool)

(assert (=> b!4428940 (=> res!1831576 e!2757728)))

(declare-fun lt!1628262 () ListMap!2761)

(declare-fun eq!423 (ListMap!2761 ListMap!2761) Bool)

(assert (=> b!4428940 (= res!1831576 (not (eq!423 lt!1628250 lt!1628262)))))

(declare-fun lt!1628251 () ListMap!2761)

(declare-fun addToMapMapFromBucket!402 (List!49747 ListMap!2761) ListMap!2761)

(assert (=> b!4428940 (= lt!1628262 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lm!1616))) lt!1628251))))

(declare-fun b!4428941 () Bool)

(declare-fun e!2757721 () Bool)

(assert (=> b!4428941 (= e!2757728 e!2757721)))

(declare-fun res!1831574 () Bool)

(assert (=> b!4428941 (=> res!1831574 e!2757721)))

(declare-fun containsKey!1148 (List!49747 K!10985) Bool)

(assert (=> b!4428941 (= res!1831574 (containsKey!1148 (_2!28014 (h!55319 (toList!3517 lm!1616))) key!3717))))

(declare-fun apply!11617 (ListLongMap!2167 (_ BitVec 64)) List!49747)

(assert (=> b!4428941 (not (containsKey!1148 (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616)))) key!3717))))

(declare-fun lt!1628260 () Unit!82527)

(declare-fun lemmaNotSameHashThenCannotContainKey!144 (ListLongMap!2167 K!10985 (_ BitVec 64) Hashable!5159) Unit!82527)

(assert (=> b!4428941 (= lt!1628260 (lemmaNotSameHashThenCannotContainKey!144 lm!1616 key!3717 (_1!28014 (h!55319 (toList!3517 lm!1616))) hashF!1220))))

(declare-fun b!4428942 () Bool)

(declare-fun lt!1628248 () ListLongMap!2167)

(assert (=> b!4428942 (= e!2757721 (forall!9590 (toList!3517 lt!1628248) lambda!154782))))

(declare-fun lt!1628253 () tuple2!49438)

(declare-fun lt!1628249 () ListMap!2761)

(declare-fun +!1115 (ListMap!2761 tuple2!49438) ListMap!2761)

(assert (=> b!4428942 (eq!423 (+!1115 lt!1628250 lt!1628253) lt!1628249)))

(declare-fun lt!1628256 () Unit!82527)

(declare-fun newValue!93 () V!11231)

(declare-fun lemmaAddToEqMapsPreservesEq!34 (ListMap!2761 ListMap!2761 K!10985 V!11231) Unit!82527)

(assert (=> b!4428942 (= lt!1628256 (lemmaAddToEqMapsPreservesEq!34 lt!1628250 lt!1628262 key!3717 newValue!93))))

(declare-fun lt!1628261 () ListMap!2761)

(assert (=> b!4428942 (eq!423 lt!1628261 lt!1628249)))

(assert (=> b!4428942 (= lt!1628249 (+!1115 lt!1628262 lt!1628253))))

(declare-fun lt!1628254 () ListMap!2761)

(assert (=> b!4428942 (= lt!1628261 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lm!1616))) lt!1628254))))

(declare-fun lt!1628257 () Unit!82527)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!194 (ListMap!2761 K!10985 V!11231 List!49747) Unit!82527)

(assert (=> b!4428942 (= lt!1628257 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!194 lt!1628251 key!3717 newValue!93 (_2!28014 (h!55319 (toList!3517 lm!1616)))))))

(declare-fun b!4428943 () Bool)

(declare-fun tp!1333388 () Bool)

(assert (=> b!4428943 (= e!2757718 (and tp_is_empty!26307 tp_is_empty!26305 tp!1333388))))

(declare-fun b!4428944 () Bool)

(assert (=> b!4428944 (= e!2757724 (and (not lt!1628252) (= newBucket!194 (Cons!49623 (tuple2!49439 key!3717 newValue!93) Nil!49623))))))

(declare-fun b!4428945 () Bool)

(assert (=> b!4428945 (= e!2757725 e!2757719)))

(declare-fun res!1831584 () Bool)

(assert (=> b!4428945 (=> res!1831584 e!2757719)))

(declare-fun head!9242 (ListLongMap!2167) tuple2!49440)

(assert (=> b!4428945 (= res!1831584 (= (head!9242 lm!1616) lt!1628266))))

(declare-fun lt!1628258 () ListMap!2761)

(assert (=> b!4428945 (eq!423 lt!1628258 lt!1628254)))

(assert (=> b!4428945 (= lt!1628254 (+!1115 lt!1628251 lt!1628253))))

(assert (=> b!4428945 (= lt!1628253 (tuple2!49439 key!3717 newValue!93))))

(declare-fun lt!1628265 () ListLongMap!2167)

(assert (=> b!4428945 (= lt!1628251 (extractMap!826 (toList!3517 lt!1628265)))))

(assert (=> b!4428945 (= lt!1628258 (extractMap!826 (toList!3517 lt!1628248)))))

(assert (=> b!4428945 (= lt!1628248 (+!1114 lt!1628265 lt!1628266))))

(declare-fun lt!1628267 () Unit!82527)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!139 (ListLongMap!2167 (_ BitVec 64) List!49747 K!10985 V!11231 Hashable!5159) Unit!82527)

(assert (=> b!4428945 (= lt!1628267 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!139 lt!1628265 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7302 (ListLongMap!2167) ListLongMap!2167)

(assert (=> b!4428945 (= lt!1628265 (tail!7302 lm!1616))))

(declare-fun lt!1628263 () Unit!82527)

(declare-fun e!2757720 () Unit!82527)

(assert (=> b!4428945 (= lt!1628263 e!2757720)))

(declare-fun c!753933 () Bool)

(declare-fun tail!7303 (List!49748) List!49748)

(assert (=> b!4428945 (= c!753933 (contains!12145 (extractMap!826 (tail!7303 (toList!3517 lm!1616))) key!3717))))

(declare-fun b!4428946 () Bool)

(declare-fun res!1831577 () Bool)

(assert (=> b!4428946 (=> (not res!1831577) (not e!2757727))))

(declare-fun hash!2172 (Hashable!5159 K!10985) (_ BitVec 64))

(assert (=> b!4428946 (= res!1831577 (= (hash!2172 hashF!1220 key!3717) hash!366))))

(declare-fun b!4428947 () Bool)

(declare-fun res!1831581 () Bool)

(assert (=> b!4428947 (=> (not res!1831581) (not e!2757723))))

(assert (=> b!4428947 (= res!1831581 (forall!9590 (toList!3517 lm!1616) lambda!154782))))

(declare-fun b!4428948 () Bool)

(declare-fun Unit!82529 () Unit!82527)

(assert (=> b!4428948 (= e!2757720 Unit!82529)))

(declare-fun b!4428949 () Bool)

(declare-fun res!1831585 () Bool)

(assert (=> b!4428949 (=> (not res!1831585) (not e!2757727))))

(declare-fun allKeysSameHash!725 (List!49747 (_ BitVec 64) Hashable!5159) Bool)

(assert (=> b!4428949 (= res!1831585 (allKeysSameHash!725 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4428950 () Bool)

(assert (=> b!4428950 (= e!2757726 (= newBucket!194 (Cons!49623 (tuple2!49439 key!3717 newValue!93) (apply!11617 lm!1616 hash!366))))))

(declare-fun b!4428951 () Bool)

(declare-fun Unit!82530 () Unit!82527)

(assert (=> b!4428951 (= e!2757720 Unit!82530)))

(declare-fun lt!1628264 () Unit!82527)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!52 (ListLongMap!2167 K!10985 Hashable!5159) Unit!82527)

(assert (=> b!4428951 (= lt!1628264 (lemmaExtractTailMapContainsThenExtractMapDoes!52 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4428951 false))

(assert (= (and start!432384 res!1831573) b!4428935))

(assert (= (and b!4428935 res!1831582) b!4428946))

(assert (= (and b!4428946 res!1831577) b!4428949))

(assert (= (and b!4428949 res!1831585) b!4428937))

(assert (= (and b!4428937 res!1831583) b!4428934))

(assert (= (and b!4428934 res!1831579) b!4428950))

(assert (= (and b!4428934 (not res!1831571)) b!4428944))

(assert (= (and b!4428934 res!1831580) b!4428938))

(assert (= (and b!4428938 res!1831572) b!4428947))

(assert (= (and b!4428947 res!1831581) b!4428933))

(assert (= (and b!4428933 (not res!1831578)) b!4428939))

(assert (= (and b!4428939 (not res!1831575)) b!4428945))

(assert (= (and b!4428945 c!753933) b!4428951))

(assert (= (and b!4428945 (not c!753933)) b!4428948))

(assert (= (and b!4428945 (not res!1831584)) b!4428940))

(assert (= (and b!4428940 (not res!1831576)) b!4428941))

(assert (= (and b!4428941 (not res!1831574)) b!4428942))

(assert (= (and start!432384 ((_ is Cons!49623) newBucket!194)) b!4428943))

(assert (= start!432384 b!4428936))

(declare-fun m!5112693 () Bool)

(assert (=> b!4428940 m!5112693))

(declare-fun m!5112695 () Bool)

(assert (=> b!4428940 m!5112695))

(declare-fun m!5112697 () Bool)

(assert (=> b!4428935 m!5112697))

(declare-fun m!5112699 () Bool)

(assert (=> b!4428938 m!5112699))

(declare-fun m!5112701 () Bool)

(assert (=> b!4428949 m!5112701))

(declare-fun m!5112703 () Bool)

(assert (=> b!4428951 m!5112703))

(declare-fun m!5112705 () Bool)

(assert (=> b!4428937 m!5112705))

(declare-fun m!5112707 () Bool)

(assert (=> b!4428937 m!5112707))

(declare-fun m!5112709 () Bool)

(assert (=> b!4428950 m!5112709))

(declare-fun m!5112711 () Bool)

(assert (=> b!4428942 m!5112711))

(declare-fun m!5112713 () Bool)

(assert (=> b!4428942 m!5112713))

(declare-fun m!5112715 () Bool)

(assert (=> b!4428942 m!5112715))

(declare-fun m!5112717 () Bool)

(assert (=> b!4428942 m!5112717))

(assert (=> b!4428942 m!5112713))

(declare-fun m!5112719 () Bool)

(assert (=> b!4428942 m!5112719))

(declare-fun m!5112721 () Bool)

(assert (=> b!4428942 m!5112721))

(declare-fun m!5112723 () Bool)

(assert (=> b!4428942 m!5112723))

(declare-fun m!5112725 () Bool)

(assert (=> b!4428942 m!5112725))

(declare-fun m!5112727 () Bool)

(assert (=> b!4428933 m!5112727))

(assert (=> b!4428933 m!5112727))

(declare-fun m!5112729 () Bool)

(assert (=> b!4428933 m!5112729))

(declare-fun m!5112731 () Bool)

(assert (=> b!4428933 m!5112731))

(declare-fun m!5112733 () Bool)

(assert (=> b!4428946 m!5112733))

(declare-fun m!5112735 () Bool)

(assert (=> b!4428941 m!5112735))

(declare-fun m!5112737 () Bool)

(assert (=> b!4428941 m!5112737))

(assert (=> b!4428941 m!5112737))

(declare-fun m!5112739 () Bool)

(assert (=> b!4428941 m!5112739))

(declare-fun m!5112741 () Bool)

(assert (=> b!4428941 m!5112741))

(declare-fun m!5112743 () Bool)

(assert (=> b!4428945 m!5112743))

(declare-fun m!5112745 () Bool)

(assert (=> b!4428945 m!5112745))

(declare-fun m!5112747 () Bool)

(assert (=> b!4428945 m!5112747))

(declare-fun m!5112749 () Bool)

(assert (=> b!4428945 m!5112749))

(declare-fun m!5112751 () Bool)

(assert (=> b!4428945 m!5112751))

(declare-fun m!5112753 () Bool)

(assert (=> b!4428945 m!5112753))

(declare-fun m!5112755 () Bool)

(assert (=> b!4428945 m!5112755))

(declare-fun m!5112757 () Bool)

(assert (=> b!4428945 m!5112757))

(assert (=> b!4428945 m!5112743))

(assert (=> b!4428945 m!5112745))

(declare-fun m!5112759 () Bool)

(assert (=> b!4428945 m!5112759))

(declare-fun m!5112761 () Bool)

(assert (=> b!4428945 m!5112761))

(declare-fun m!5112763 () Bool)

(assert (=> b!4428945 m!5112763))

(declare-fun m!5112765 () Bool)

(assert (=> b!4428934 m!5112765))

(declare-fun m!5112767 () Bool)

(assert (=> b!4428947 m!5112767))

(assert (=> start!432384 m!5112767))

(declare-fun m!5112769 () Bool)

(assert (=> start!432384 m!5112769))

(check-sat tp_is_empty!26307 (not b!4428936) (not b!4428951) (not b!4428949) (not b!4428943) (not b!4428935) (not b!4428940) (not start!432384) (not b!4428947) (not b!4428933) (not b!4428950) (not b!4428938) (not b!4428945) (not b!4428942) (not b!4428934) (not b!4428937) (not b!4428941) (not b!4428946) tp_is_empty!26305)
(check-sat)
(get-model)

(declare-fun d!1343149 () Bool)

(declare-fun res!1831599 () Bool)

(declare-fun e!2757745 () Bool)

(assert (=> d!1343149 (=> res!1831599 e!2757745)))

(assert (=> d!1343149 (= res!1831599 ((_ is Nil!49624) (toList!3517 lt!1628255)))))

(assert (=> d!1343149 (= (forall!9590 (toList!3517 lt!1628255) lambda!154782) e!2757745)))

(declare-fun b!4428971 () Bool)

(declare-fun e!2757746 () Bool)

(assert (=> b!4428971 (= e!2757745 e!2757746)))

(declare-fun res!1831600 () Bool)

(assert (=> b!4428971 (=> (not res!1831600) (not e!2757746))))

(declare-fun dynLambda!20858 (Int tuple2!49440) Bool)

(assert (=> b!4428971 (= res!1831600 (dynLambda!20858 lambda!154782 (h!55319 (toList!3517 lt!1628255))))))

(declare-fun b!4428972 () Bool)

(assert (=> b!4428972 (= e!2757746 (forall!9590 (t!356686 (toList!3517 lt!1628255)) lambda!154782))))

(assert (= (and d!1343149 (not res!1831599)) b!4428971))

(assert (= (and b!4428971 res!1831600) b!4428972))

(declare-fun b_lambda!143523 () Bool)

(assert (=> (not b_lambda!143523) (not b!4428971)))

(declare-fun m!5112785 () Bool)

(assert (=> b!4428971 m!5112785))

(declare-fun m!5112787 () Bool)

(assert (=> b!4428972 m!5112787))

(assert (=> b!4428933 d!1343149))

(declare-fun d!1343157 () Bool)

(declare-fun e!2757755 () Bool)

(assert (=> d!1343157 e!2757755))

(declare-fun res!1831611 () Bool)

(assert (=> d!1343157 (=> (not res!1831611) (not e!2757755))))

(declare-fun lt!1628292 () ListLongMap!2167)

(assert (=> d!1343157 (= res!1831611 (contains!12144 lt!1628292 (_1!28014 lt!1628266)))))

(declare-fun lt!1628291 () List!49748)

(assert (=> d!1343157 (= lt!1628292 (ListLongMap!2168 lt!1628291))))

(declare-fun lt!1628294 () Unit!82527)

(declare-fun lt!1628293 () Unit!82527)

(assert (=> d!1343157 (= lt!1628294 lt!1628293)))

(declare-datatypes ((Option!10745 0))(
  ( (None!10744) (Some!10744 (v!43938 List!49747)) )
))
(declare-fun getValueByKey!731 (List!49748 (_ BitVec 64)) Option!10745)

(assert (=> d!1343157 (= (getValueByKey!731 lt!1628291 (_1!28014 lt!1628266)) (Some!10744 (_2!28014 lt!1628266)))))

(declare-fun lemmaContainsTupThenGetReturnValue!465 (List!49748 (_ BitVec 64) List!49747) Unit!82527)

(assert (=> d!1343157 (= lt!1628293 (lemmaContainsTupThenGetReturnValue!465 lt!1628291 (_1!28014 lt!1628266) (_2!28014 lt!1628266)))))

(declare-fun insertStrictlySorted!270 (List!49748 (_ BitVec 64) List!49747) List!49748)

(assert (=> d!1343157 (= lt!1628291 (insertStrictlySorted!270 (toList!3517 lm!1616) (_1!28014 lt!1628266) (_2!28014 lt!1628266)))))

(assert (=> d!1343157 (= (+!1114 lm!1616 lt!1628266) lt!1628292)))

(declare-fun b!4428985 () Bool)

(declare-fun res!1831612 () Bool)

(assert (=> b!4428985 (=> (not res!1831612) (not e!2757755))))

(assert (=> b!4428985 (= res!1831612 (= (getValueByKey!731 (toList!3517 lt!1628292) (_1!28014 lt!1628266)) (Some!10744 (_2!28014 lt!1628266))))))

(declare-fun b!4428986 () Bool)

(declare-fun contains!12148 (List!49748 tuple2!49440) Bool)

(assert (=> b!4428986 (= e!2757755 (contains!12148 (toList!3517 lt!1628292) lt!1628266))))

(assert (= (and d!1343157 res!1831611) b!4428985))

(assert (= (and b!4428985 res!1831612) b!4428986))

(declare-fun m!5112801 () Bool)

(assert (=> d!1343157 m!5112801))

(declare-fun m!5112803 () Bool)

(assert (=> d!1343157 m!5112803))

(declare-fun m!5112805 () Bool)

(assert (=> d!1343157 m!5112805))

(declare-fun m!5112807 () Bool)

(assert (=> d!1343157 m!5112807))

(declare-fun m!5112809 () Bool)

(assert (=> b!4428985 m!5112809))

(declare-fun m!5112811 () Bool)

(assert (=> b!4428986 m!5112811))

(assert (=> b!4428933 d!1343157))

(declare-fun d!1343165 () Bool)

(assert (=> d!1343165 (forall!9590 (toList!3517 (+!1114 lm!1616 (tuple2!49441 hash!366 newBucket!194))) lambda!154782)))

(declare-fun lt!1628321 () Unit!82527)

(declare-fun choose!28020 (ListLongMap!2167 Int (_ BitVec 64) List!49747) Unit!82527)

(assert (=> d!1343165 (= lt!1628321 (choose!28020 lm!1616 lambda!154782 hash!366 newBucket!194))))

(declare-fun e!2757776 () Bool)

(assert (=> d!1343165 e!2757776))

(declare-fun res!1831624 () Bool)

(assert (=> d!1343165 (=> (not res!1831624) (not e!2757776))))

(assert (=> d!1343165 (= res!1831624 (forall!9590 (toList!3517 lm!1616) lambda!154782))))

(assert (=> d!1343165 (= (addValidProp!409 lm!1616 lambda!154782 hash!366 newBucket!194) lt!1628321)))

(declare-fun b!4429017 () Bool)

(assert (=> b!4429017 (= e!2757776 (dynLambda!20858 lambda!154782 (tuple2!49441 hash!366 newBucket!194)))))

(assert (= (and d!1343165 res!1831624) b!4429017))

(declare-fun b_lambda!143527 () Bool)

(assert (=> (not b_lambda!143527) (not b!4429017)))

(declare-fun m!5112833 () Bool)

(assert (=> d!1343165 m!5112833))

(declare-fun m!5112835 () Bool)

(assert (=> d!1343165 m!5112835))

(declare-fun m!5112837 () Bool)

(assert (=> d!1343165 m!5112837))

(assert (=> d!1343165 m!5112767))

(declare-fun m!5112839 () Bool)

(assert (=> b!4429017 m!5112839))

(assert (=> b!4428933 d!1343165))

(declare-fun d!1343169 () Bool)

(declare-fun e!2757784 () Bool)

(assert (=> d!1343169 e!2757784))

(declare-fun res!1831627 () Bool)

(assert (=> d!1343169 (=> res!1831627 e!2757784)))

(declare-fun lt!1628335 () Bool)

(assert (=> d!1343169 (= res!1831627 (not lt!1628335))))

(declare-fun lt!1628336 () Bool)

(assert (=> d!1343169 (= lt!1628335 lt!1628336)))

(declare-fun lt!1628333 () Unit!82527)

(declare-fun e!2757785 () Unit!82527)

(assert (=> d!1343169 (= lt!1628333 e!2757785)))

(declare-fun c!753951 () Bool)

(assert (=> d!1343169 (= c!753951 lt!1628336)))

(declare-fun containsKey!1151 (List!49748 (_ BitVec 64)) Bool)

(assert (=> d!1343169 (= lt!1628336 (containsKey!1151 (toList!3517 lm!1616) hash!366))))

(assert (=> d!1343169 (= (contains!12144 lm!1616 hash!366) lt!1628335)))

(declare-fun b!4429030 () Bool)

(declare-fun lt!1628334 () Unit!82527)

(assert (=> b!4429030 (= e!2757785 lt!1628334)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!640 (List!49748 (_ BitVec 64)) Unit!82527)

(assert (=> b!4429030 (= lt!1628334 (lemmaContainsKeyImpliesGetValueByKeyDefined!640 (toList!3517 lm!1616) hash!366))))

(declare-fun isDefined!8037 (Option!10745) Bool)

(assert (=> b!4429030 (isDefined!8037 (getValueByKey!731 (toList!3517 lm!1616) hash!366))))

(declare-fun b!4429031 () Bool)

(declare-fun Unit!82545 () Unit!82527)

(assert (=> b!4429031 (= e!2757785 Unit!82545)))

(declare-fun b!4429032 () Bool)

(assert (=> b!4429032 (= e!2757784 (isDefined!8037 (getValueByKey!731 (toList!3517 lm!1616) hash!366)))))

(assert (= (and d!1343169 c!753951) b!4429030))

(assert (= (and d!1343169 (not c!753951)) b!4429031))

(assert (= (and d!1343169 (not res!1831627)) b!4429032))

(declare-fun m!5112853 () Bool)

(assert (=> d!1343169 m!5112853))

(declare-fun m!5112855 () Bool)

(assert (=> b!4429030 m!5112855))

(declare-fun m!5112857 () Bool)

(assert (=> b!4429030 m!5112857))

(assert (=> b!4429030 m!5112857))

(declare-fun m!5112859 () Bool)

(assert (=> b!4429030 m!5112859))

(assert (=> b!4429032 m!5112857))

(assert (=> b!4429032 m!5112857))

(assert (=> b!4429032 m!5112859))

(assert (=> b!4428934 d!1343169))

(declare-fun d!1343175 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7972 (List!49747) (InoxSet tuple2!49438))

(assert (=> d!1343175 (= (eq!423 lt!1628250 lt!1628262) (= (content!7972 (toList!3518 lt!1628250)) (content!7972 (toList!3518 lt!1628262))))))

(declare-fun bs!759546 () Bool)

(assert (= bs!759546 d!1343175))

(declare-fun m!5112861 () Bool)

(assert (=> bs!759546 m!5112861))

(declare-fun m!5112863 () Bool)

(assert (=> bs!759546 m!5112863))

(assert (=> b!4428940 d!1343175))

(declare-fun b!4429090 () Bool)

(assert (=> b!4429090 true))

(declare-fun bs!759580 () Bool)

(declare-fun b!4429093 () Bool)

(assert (= bs!759580 (and b!4429093 b!4429090)))

(declare-fun lambda!154862 () Int)

(declare-fun lambda!154861 () Int)

(assert (=> bs!759580 (= lambda!154862 lambda!154861)))

(assert (=> b!4429093 true))

(declare-fun lambda!154863 () Int)

(declare-fun lt!1628489 () ListMap!2761)

(assert (=> bs!759580 (= (= lt!1628489 lt!1628251) (= lambda!154863 lambda!154861))))

(assert (=> b!4429093 (= (= lt!1628489 lt!1628251) (= lambda!154863 lambda!154862))))

(assert (=> b!4429093 true))

(declare-fun bs!759581 () Bool)

(declare-fun d!1343177 () Bool)

(assert (= bs!759581 (and d!1343177 b!4429090)))

(declare-fun lt!1628483 () ListMap!2761)

(declare-fun lambda!154864 () Int)

(assert (=> bs!759581 (= (= lt!1628483 lt!1628251) (= lambda!154864 lambda!154861))))

(declare-fun bs!759582 () Bool)

(assert (= bs!759582 (and d!1343177 b!4429093)))

(assert (=> bs!759582 (= (= lt!1628483 lt!1628251) (= lambda!154864 lambda!154862))))

(assert (=> bs!759582 (= (= lt!1628483 lt!1628489) (= lambda!154864 lambda!154863))))

(assert (=> d!1343177 true))

(declare-fun b!4429089 () Bool)

(declare-fun res!1831657 () Bool)

(declare-fun e!2757817 () Bool)

(assert (=> b!4429089 (=> (not res!1831657) (not e!2757817))))

(declare-fun forall!9592 (List!49747 Int) Bool)

(assert (=> b!4429089 (= res!1831657 (forall!9592 (toList!3518 lt!1628251) lambda!154864))))

(declare-fun e!2757815 () ListMap!2761)

(assert (=> b!4429090 (= e!2757815 lt!1628251)))

(declare-fun lt!1628490 () Unit!82527)

(declare-fun call!308234 () Unit!82527)

(assert (=> b!4429090 (= lt!1628490 call!308234)))

(declare-fun call!308232 () Bool)

(assert (=> b!4429090 call!308232))

(declare-fun lt!1628491 () Unit!82527)

(assert (=> b!4429090 (= lt!1628491 lt!1628490)))

(declare-fun call!308233 () Bool)

(assert (=> b!4429090 call!308233))

(declare-fun lt!1628486 () Unit!82527)

(declare-fun Unit!82547 () Unit!82527)

(assert (=> b!4429090 (= lt!1628486 Unit!82547)))

(assert (=> d!1343177 e!2757817))

(declare-fun res!1831656 () Bool)

(assert (=> d!1343177 (=> (not res!1831656) (not e!2757817))))

(assert (=> d!1343177 (= res!1831656 (forall!9592 (_2!28014 (h!55319 (toList!3517 lm!1616))) lambda!154864))))

(assert (=> d!1343177 (= lt!1628483 e!2757815)))

(declare-fun c!753963 () Bool)

(assert (=> d!1343177 (= c!753963 ((_ is Nil!49623) (_2!28014 (h!55319 (toList!3517 lm!1616)))))))

(assert (=> d!1343177 (noDuplicateKeys!765 (_2!28014 (h!55319 (toList!3517 lm!1616))))))

(assert (=> d!1343177 (= (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lm!1616))) lt!1628251) lt!1628483)))

(declare-fun bm!308227 () Bool)

(assert (=> bm!308227 (= call!308233 (forall!9592 (ite c!753963 (toList!3518 lt!1628251) (t!356685 (_2!28014 (h!55319 (toList!3517 lm!1616))))) (ite c!753963 lambda!154861 lambda!154863)))))

(declare-fun bm!308228 () Bool)

(assert (=> bm!308228 (= call!308232 (forall!9592 (toList!3518 lt!1628251) (ite c!753963 lambda!154861 lambda!154863)))))

(assert (=> b!4429093 (= e!2757815 lt!1628489)))

(declare-fun lt!1628485 () ListMap!2761)

(assert (=> b!4429093 (= lt!1628485 (+!1115 lt!1628251 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(assert (=> b!4429093 (= lt!1628489 (addToMapMapFromBucket!402 (t!356685 (_2!28014 (h!55319 (toList!3517 lm!1616)))) (+!1115 lt!1628251 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616)))))))))

(declare-fun lt!1628494 () Unit!82527)

(assert (=> b!4429093 (= lt!1628494 call!308234)))

(assert (=> b!4429093 (forall!9592 (toList!3518 lt!1628251) lambda!154862)))

(declare-fun lt!1628493 () Unit!82527)

(assert (=> b!4429093 (= lt!1628493 lt!1628494)))

(assert (=> b!4429093 (forall!9592 (toList!3518 lt!1628485) lambda!154863)))

(declare-fun lt!1628492 () Unit!82527)

(declare-fun Unit!82548 () Unit!82527)

(assert (=> b!4429093 (= lt!1628492 Unit!82548)))

(assert (=> b!4429093 call!308233))

(declare-fun lt!1628480 () Unit!82527)

(declare-fun Unit!82550 () Unit!82527)

(assert (=> b!4429093 (= lt!1628480 Unit!82550)))

(declare-fun lt!1628498 () Unit!82527)

(declare-fun Unit!82551 () Unit!82527)

(assert (=> b!4429093 (= lt!1628498 Unit!82551)))

(declare-fun lt!1628488 () Unit!82527)

(declare-fun forallContained!2105 (List!49747 Int tuple2!49438) Unit!82527)

(assert (=> b!4429093 (= lt!1628488 (forallContained!2105 (toList!3518 lt!1628485) lambda!154863 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(assert (=> b!4429093 (contains!12145 lt!1628485 (_1!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(declare-fun lt!1628482 () Unit!82527)

(declare-fun Unit!82552 () Unit!82527)

(assert (=> b!4429093 (= lt!1628482 Unit!82552)))

(assert (=> b!4429093 (contains!12145 lt!1628489 (_1!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(declare-fun lt!1628477 () Unit!82527)

(declare-fun Unit!82553 () Unit!82527)

(assert (=> b!4429093 (= lt!1628477 Unit!82553)))

(assert (=> b!4429093 (forall!9592 (_2!28014 (h!55319 (toList!3517 lm!1616))) lambda!154863)))

(declare-fun lt!1628487 () Unit!82527)

(declare-fun Unit!82554 () Unit!82527)

(assert (=> b!4429093 (= lt!1628487 Unit!82554)))

(assert (=> b!4429093 (forall!9592 (toList!3518 lt!1628485) lambda!154863)))

(declare-fun lt!1628496 () Unit!82527)

(declare-fun Unit!82555 () Unit!82527)

(assert (=> b!4429093 (= lt!1628496 Unit!82555)))

(declare-fun lt!1628481 () Unit!82527)

(declare-fun Unit!82556 () Unit!82527)

(assert (=> b!4429093 (= lt!1628481 Unit!82556)))

(declare-fun lt!1628479 () Unit!82527)

(declare-fun addForallContainsKeyThenBeforeAdding!183 (ListMap!2761 ListMap!2761 K!10985 V!11231) Unit!82527)

(assert (=> b!4429093 (= lt!1628479 (addForallContainsKeyThenBeforeAdding!183 lt!1628251 lt!1628489 (_1!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))) (_2!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616)))))))))

(assert (=> b!4429093 (forall!9592 (toList!3518 lt!1628251) lambda!154863)))

(declare-fun lt!1628478 () Unit!82527)

(assert (=> b!4429093 (= lt!1628478 lt!1628479)))

(assert (=> b!4429093 call!308232))

(declare-fun lt!1628484 () Unit!82527)

(declare-fun Unit!82557 () Unit!82527)

(assert (=> b!4429093 (= lt!1628484 Unit!82557)))

(declare-fun res!1831658 () Bool)

(assert (=> b!4429093 (= res!1831658 (forall!9592 (_2!28014 (h!55319 (toList!3517 lm!1616))) lambda!154863))))

(declare-fun e!2757816 () Bool)

(assert (=> b!4429093 (=> (not res!1831658) (not e!2757816))))

(assert (=> b!4429093 e!2757816))

(declare-fun lt!1628476 () Unit!82527)

(declare-fun Unit!82558 () Unit!82527)

(assert (=> b!4429093 (= lt!1628476 Unit!82558)))

(declare-fun b!4429094 () Bool)

(assert (=> b!4429094 (= e!2757816 (forall!9592 (toList!3518 lt!1628251) lambda!154863))))

(declare-fun b!4429095 () Bool)

(declare-fun invariantList!815 (List!49747) Bool)

(assert (=> b!4429095 (= e!2757817 (invariantList!815 (toList!3518 lt!1628483)))))

(declare-fun bm!308229 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!183 (ListMap!2761) Unit!82527)

(assert (=> bm!308229 (= call!308234 (lemmaContainsAllItsOwnKeys!183 lt!1628251))))

(assert (= (and d!1343177 c!753963) b!4429090))

(assert (= (and d!1343177 (not c!753963)) b!4429093))

(assert (= (and b!4429093 res!1831658) b!4429094))

(assert (= (or b!4429090 b!4429093) bm!308229))

(assert (= (or b!4429090 b!4429093) bm!308227))

(assert (= (or b!4429090 b!4429093) bm!308228))

(assert (= (and d!1343177 res!1831656) b!4429089))

(assert (= (and b!4429089 res!1831657) b!4429095))

(declare-fun m!5113003 () Bool)

(assert (=> b!4429095 m!5113003))

(declare-fun m!5113005 () Bool)

(assert (=> b!4429094 m!5113005))

(declare-fun m!5113007 () Bool)

(assert (=> b!4429089 m!5113007))

(declare-fun m!5113009 () Bool)

(assert (=> d!1343177 m!5113009))

(declare-fun m!5113011 () Bool)

(assert (=> d!1343177 m!5113011))

(declare-fun m!5113013 () Bool)

(assert (=> bm!308227 m!5113013))

(declare-fun m!5113015 () Bool)

(assert (=> b!4429093 m!5113015))

(declare-fun m!5113017 () Bool)

(assert (=> b!4429093 m!5113017))

(declare-fun m!5113019 () Bool)

(assert (=> b!4429093 m!5113019))

(assert (=> b!4429093 m!5113015))

(declare-fun m!5113021 () Bool)

(assert (=> b!4429093 m!5113021))

(declare-fun m!5113023 () Bool)

(assert (=> b!4429093 m!5113023))

(declare-fun m!5113025 () Bool)

(assert (=> b!4429093 m!5113025))

(declare-fun m!5113027 () Bool)

(assert (=> b!4429093 m!5113027))

(assert (=> b!4429093 m!5113017))

(declare-fun m!5113029 () Bool)

(assert (=> b!4429093 m!5113029))

(assert (=> b!4429093 m!5113005))

(declare-fun m!5113031 () Bool)

(assert (=> b!4429093 m!5113031))

(assert (=> b!4429093 m!5113027))

(declare-fun m!5113033 () Bool)

(assert (=> bm!308228 m!5113033))

(declare-fun m!5113035 () Bool)

(assert (=> bm!308229 m!5113035))

(assert (=> b!4428940 d!1343177))

(declare-fun d!1343209 () Bool)

(declare-fun res!1831665 () Bool)

(declare-fun e!2757822 () Bool)

(assert (=> d!1343209 (=> res!1831665 e!2757822)))

(assert (=> d!1343209 (= res!1831665 ((_ is Nil!49624) (toList!3517 lm!1616)))))

(assert (=> d!1343209 (= (forall!9590 (toList!3517 lm!1616) lambda!154782) e!2757822)))

(declare-fun b!4429102 () Bool)

(declare-fun e!2757823 () Bool)

(assert (=> b!4429102 (= e!2757822 e!2757823)))

(declare-fun res!1831666 () Bool)

(assert (=> b!4429102 (=> (not res!1831666) (not e!2757823))))

(assert (=> b!4429102 (= res!1831666 (dynLambda!20858 lambda!154782 (h!55319 (toList!3517 lm!1616))))))

(declare-fun b!4429103 () Bool)

(assert (=> b!4429103 (= e!2757823 (forall!9590 (t!356686 (toList!3517 lm!1616)) lambda!154782))))

(assert (= (and d!1343209 (not res!1831665)) b!4429102))

(assert (= (and b!4429102 res!1831666) b!4429103))

(declare-fun b_lambda!143531 () Bool)

(assert (=> (not b_lambda!143531) (not b!4429102)))

(declare-fun m!5113037 () Bool)

(assert (=> b!4429102 m!5113037))

(declare-fun m!5113039 () Bool)

(assert (=> b!4429103 m!5113039))

(assert (=> start!432384 d!1343209))

(declare-fun d!1343211 () Bool)

(declare-fun isStrictlySorted!241 (List!49748) Bool)

(assert (=> d!1343211 (= (inv!65171 lm!1616) (isStrictlySorted!241 (toList!3517 lm!1616)))))

(declare-fun bs!759583 () Bool)

(assert (= bs!759583 d!1343211))

(declare-fun m!5113041 () Bool)

(assert (=> bs!759583 m!5113041))

(assert (=> start!432384 d!1343211))

(declare-fun bs!759589 () Bool)

(declare-fun d!1343213 () Bool)

(assert (= bs!759589 (and d!1343213 start!432384)))

(declare-fun lambda!154868 () Int)

(assert (=> bs!759589 (= lambda!154868 lambda!154782)))

(assert (=> d!1343213 (contains!12145 (extractMap!826 (toList!3517 lm!1616)) key!3717)))

(declare-fun lt!1628538 () Unit!82527)

(declare-fun choose!28021 (ListLongMap!2167 K!10985 Hashable!5159) Unit!82527)

(assert (=> d!1343213 (= lt!1628538 (choose!28021 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1343213 (forall!9590 (toList!3517 lm!1616) lambda!154868)))

(assert (=> d!1343213 (= (lemmaExtractTailMapContainsThenExtractMapDoes!52 lm!1616 key!3717 hashF!1220) lt!1628538)))

(declare-fun bs!759592 () Bool)

(assert (= bs!759592 d!1343213))

(assert (=> bs!759592 m!5112707))

(assert (=> bs!759592 m!5112707))

(declare-fun m!5113075 () Bool)

(assert (=> bs!759592 m!5113075))

(declare-fun m!5113077 () Bool)

(assert (=> bs!759592 m!5113077))

(declare-fun m!5113079 () Bool)

(assert (=> bs!759592 m!5113079))

(assert (=> b!4428951 d!1343213))

(declare-fun d!1343225 () Bool)

(declare-fun res!1831679 () Bool)

(declare-fun e!2757835 () Bool)

(assert (=> d!1343225 (=> res!1831679 e!2757835)))

(assert (=> d!1343225 (= res!1831679 (and ((_ is Cons!49623) (_2!28014 (h!55319 (toList!3517 lm!1616)))) (= (_1!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))) key!3717)))))

(assert (=> d!1343225 (= (containsKey!1148 (_2!28014 (h!55319 (toList!3517 lm!1616))) key!3717) e!2757835)))

(declare-fun b!4429119 () Bool)

(declare-fun e!2757836 () Bool)

(assert (=> b!4429119 (= e!2757835 e!2757836)))

(declare-fun res!1831680 () Bool)

(assert (=> b!4429119 (=> (not res!1831680) (not e!2757836))))

(assert (=> b!4429119 (= res!1831680 ((_ is Cons!49623) (_2!28014 (h!55319 (toList!3517 lm!1616)))))))

(declare-fun b!4429120 () Bool)

(assert (=> b!4429120 (= e!2757836 (containsKey!1148 (t!356685 (_2!28014 (h!55319 (toList!3517 lm!1616)))) key!3717))))

(assert (= (and d!1343225 (not res!1831679)) b!4429119))

(assert (= (and b!4429119 res!1831680) b!4429120))

(declare-fun m!5113081 () Bool)

(assert (=> b!4429120 m!5113081))

(assert (=> b!4428941 d!1343225))

(declare-fun d!1343227 () Bool)

(declare-fun res!1831681 () Bool)

(declare-fun e!2757837 () Bool)

(assert (=> d!1343227 (=> res!1831681 e!2757837)))

(assert (=> d!1343227 (= res!1831681 (and ((_ is Cons!49623) (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616))))) (= (_1!28013 (h!55318 (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616)))))) key!3717)))))

(assert (=> d!1343227 (= (containsKey!1148 (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616)))) key!3717) e!2757837)))

(declare-fun b!4429121 () Bool)

(declare-fun e!2757838 () Bool)

(assert (=> b!4429121 (= e!2757837 e!2757838)))

(declare-fun res!1831682 () Bool)

(assert (=> b!4429121 (=> (not res!1831682) (not e!2757838))))

(assert (=> b!4429121 (= res!1831682 ((_ is Cons!49623) (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616))))))))

(declare-fun b!4429122 () Bool)

(assert (=> b!4429122 (= e!2757838 (containsKey!1148 (t!356685 (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616))))) key!3717))))

(assert (= (and d!1343227 (not res!1831681)) b!4429121))

(assert (= (and b!4429121 res!1831682) b!4429122))

(declare-fun m!5113083 () Bool)

(assert (=> b!4429122 m!5113083))

(assert (=> b!4428941 d!1343227))

(declare-fun d!1343229 () Bool)

(declare-fun get!16177 (Option!10745) List!49747)

(assert (=> d!1343229 (= (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616)))) (get!16177 (getValueByKey!731 (toList!3517 lm!1616) (_1!28014 (h!55319 (toList!3517 lm!1616))))))))

(declare-fun bs!759604 () Bool)

(assert (= bs!759604 d!1343229))

(declare-fun m!5113085 () Bool)

(assert (=> bs!759604 m!5113085))

(assert (=> bs!759604 m!5113085))

(declare-fun m!5113087 () Bool)

(assert (=> bs!759604 m!5113087))

(assert (=> b!4428941 d!1343229))

(declare-fun bs!759605 () Bool)

(declare-fun d!1343231 () Bool)

(assert (= bs!759605 (and d!1343231 start!432384)))

(declare-fun lambda!154874 () Int)

(assert (=> bs!759605 (= lambda!154874 lambda!154782)))

(declare-fun bs!759606 () Bool)

(assert (= bs!759606 (and d!1343231 d!1343213)))

(assert (=> bs!759606 (= lambda!154874 lambda!154868)))

(assert (=> d!1343231 (not (containsKey!1148 (apply!11617 lm!1616 (_1!28014 (h!55319 (toList!3517 lm!1616)))) key!3717))))

(declare-fun lt!1628541 () Unit!82527)

(declare-fun choose!28023 (ListLongMap!2167 K!10985 (_ BitVec 64) Hashable!5159) Unit!82527)

(assert (=> d!1343231 (= lt!1628541 (choose!28023 lm!1616 key!3717 (_1!28014 (h!55319 (toList!3517 lm!1616))) hashF!1220))))

(assert (=> d!1343231 (forall!9590 (toList!3517 lm!1616) lambda!154874)))

(assert (=> d!1343231 (= (lemmaNotSameHashThenCannotContainKey!144 lm!1616 key!3717 (_1!28014 (h!55319 (toList!3517 lm!1616))) hashF!1220) lt!1628541)))

(declare-fun bs!759607 () Bool)

(assert (= bs!759607 d!1343231))

(assert (=> bs!759607 m!5112737))

(assert (=> bs!759607 m!5112737))

(assert (=> bs!759607 m!5112739))

(declare-fun m!5113121 () Bool)

(assert (=> bs!759607 m!5113121))

(declare-fun m!5113123 () Bool)

(assert (=> bs!759607 m!5113123))

(assert (=> b!4428941 d!1343231))

(declare-fun bs!759608 () Bool)

(declare-fun b!4429124 () Bool)

(assert (= bs!759608 (and b!4429124 b!4429090)))

(declare-fun lambda!154875 () Int)

(assert (=> bs!759608 (= (= lt!1628254 lt!1628251) (= lambda!154875 lambda!154861))))

(declare-fun bs!759609 () Bool)

(assert (= bs!759609 (and b!4429124 b!4429093)))

(assert (=> bs!759609 (= (= lt!1628254 lt!1628251) (= lambda!154875 lambda!154862))))

(assert (=> bs!759609 (= (= lt!1628254 lt!1628489) (= lambda!154875 lambda!154863))))

(declare-fun bs!759610 () Bool)

(assert (= bs!759610 (and b!4429124 d!1343177)))

(assert (=> bs!759610 (= (= lt!1628254 lt!1628483) (= lambda!154875 lambda!154864))))

(assert (=> b!4429124 true))

(declare-fun bs!759611 () Bool)

(declare-fun b!4429125 () Bool)

(assert (= bs!759611 (and b!4429125 b!4429093)))

(declare-fun lambda!154876 () Int)

(assert (=> bs!759611 (= (= lt!1628254 lt!1628489) (= lambda!154876 lambda!154863))))

(declare-fun bs!759612 () Bool)

(assert (= bs!759612 (and b!4429125 b!4429090)))

(assert (=> bs!759612 (= (= lt!1628254 lt!1628251) (= lambda!154876 lambda!154861))))

(declare-fun bs!759613 () Bool)

(assert (= bs!759613 (and b!4429125 b!4429124)))

(assert (=> bs!759613 (= lambda!154876 lambda!154875)))

(declare-fun bs!759614 () Bool)

(assert (= bs!759614 (and b!4429125 d!1343177)))

(assert (=> bs!759614 (= (= lt!1628254 lt!1628483) (= lambda!154876 lambda!154864))))

(assert (=> bs!759611 (= (= lt!1628254 lt!1628251) (= lambda!154876 lambda!154862))))

(assert (=> b!4429125 true))

(declare-fun lambda!154877 () Int)

(declare-fun lt!1628555 () ListMap!2761)

(assert (=> b!4429125 (= (= lt!1628555 lt!1628254) (= lambda!154877 lambda!154876))))

(assert (=> bs!759611 (= (= lt!1628555 lt!1628489) (= lambda!154877 lambda!154863))))

(assert (=> bs!759612 (= (= lt!1628555 lt!1628251) (= lambda!154877 lambda!154861))))

(assert (=> bs!759613 (= (= lt!1628555 lt!1628254) (= lambda!154877 lambda!154875))))

(assert (=> bs!759614 (= (= lt!1628555 lt!1628483) (= lambda!154877 lambda!154864))))

(assert (=> bs!759611 (= (= lt!1628555 lt!1628251) (= lambda!154877 lambda!154862))))

(assert (=> b!4429125 true))

(declare-fun bs!759615 () Bool)

(declare-fun d!1343235 () Bool)

(assert (= bs!759615 (and d!1343235 b!4429125)))

(declare-fun lt!1628549 () ListMap!2761)

(declare-fun lambda!154878 () Int)

(assert (=> bs!759615 (= (= lt!1628549 lt!1628254) (= lambda!154878 lambda!154876))))

(declare-fun bs!759616 () Bool)

(assert (= bs!759616 (and d!1343235 b!4429093)))

(assert (=> bs!759616 (= (= lt!1628549 lt!1628489) (= lambda!154878 lambda!154863))))

(declare-fun bs!759617 () Bool)

(assert (= bs!759617 (and d!1343235 b!4429090)))

(assert (=> bs!759617 (= (= lt!1628549 lt!1628251) (= lambda!154878 lambda!154861))))

(declare-fun bs!759618 () Bool)

(assert (= bs!759618 (and d!1343235 b!4429124)))

(assert (=> bs!759618 (= (= lt!1628549 lt!1628254) (= lambda!154878 lambda!154875))))

(assert (=> bs!759615 (= (= lt!1628549 lt!1628555) (= lambda!154878 lambda!154877))))

(declare-fun bs!759619 () Bool)

(assert (= bs!759619 (and d!1343235 d!1343177)))

(assert (=> bs!759619 (= (= lt!1628549 lt!1628483) (= lambda!154878 lambda!154864))))

(assert (=> bs!759616 (= (= lt!1628549 lt!1628251) (= lambda!154878 lambda!154862))))

(assert (=> d!1343235 true))

(declare-fun b!4429123 () Bool)

(declare-fun res!1831684 () Bool)

(declare-fun e!2757841 () Bool)

(assert (=> b!4429123 (=> (not res!1831684) (not e!2757841))))

(assert (=> b!4429123 (= res!1831684 (forall!9592 (toList!3518 lt!1628254) lambda!154878))))

(declare-fun e!2757839 () ListMap!2761)

(assert (=> b!4429124 (= e!2757839 lt!1628254)))

(declare-fun lt!1628556 () Unit!82527)

(declare-fun call!308240 () Unit!82527)

(assert (=> b!4429124 (= lt!1628556 call!308240)))

(declare-fun call!308238 () Bool)

(assert (=> b!4429124 call!308238))

(declare-fun lt!1628557 () Unit!82527)

(assert (=> b!4429124 (= lt!1628557 lt!1628556)))

(declare-fun call!308239 () Bool)

(assert (=> b!4429124 call!308239))

(declare-fun lt!1628552 () Unit!82527)

(declare-fun Unit!82559 () Unit!82527)

(assert (=> b!4429124 (= lt!1628552 Unit!82559)))

(assert (=> d!1343235 e!2757841))

(declare-fun res!1831683 () Bool)

(assert (=> d!1343235 (=> (not res!1831683) (not e!2757841))))

(assert (=> d!1343235 (= res!1831683 (forall!9592 (_2!28014 (h!55319 (toList!3517 lm!1616))) lambda!154878))))

(assert (=> d!1343235 (= lt!1628549 e!2757839)))

(declare-fun c!753965 () Bool)

(assert (=> d!1343235 (= c!753965 ((_ is Nil!49623) (_2!28014 (h!55319 (toList!3517 lm!1616)))))))

(assert (=> d!1343235 (noDuplicateKeys!765 (_2!28014 (h!55319 (toList!3517 lm!1616))))))

(assert (=> d!1343235 (= (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lm!1616))) lt!1628254) lt!1628549)))

(declare-fun bm!308233 () Bool)

(assert (=> bm!308233 (= call!308239 (forall!9592 (ite c!753965 (toList!3518 lt!1628254) (t!356685 (_2!28014 (h!55319 (toList!3517 lm!1616))))) (ite c!753965 lambda!154875 lambda!154877)))))

(declare-fun bm!308234 () Bool)

(assert (=> bm!308234 (= call!308238 (forall!9592 (toList!3518 lt!1628254) (ite c!753965 lambda!154875 lambda!154877)))))

(assert (=> b!4429125 (= e!2757839 lt!1628555)))

(declare-fun lt!1628551 () ListMap!2761)

(assert (=> b!4429125 (= lt!1628551 (+!1115 lt!1628254 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(assert (=> b!4429125 (= lt!1628555 (addToMapMapFromBucket!402 (t!356685 (_2!28014 (h!55319 (toList!3517 lm!1616)))) (+!1115 lt!1628254 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616)))))))))

(declare-fun lt!1628560 () Unit!82527)

(assert (=> b!4429125 (= lt!1628560 call!308240)))

(assert (=> b!4429125 (forall!9592 (toList!3518 lt!1628254) lambda!154876)))

(declare-fun lt!1628559 () Unit!82527)

(assert (=> b!4429125 (= lt!1628559 lt!1628560)))

(assert (=> b!4429125 (forall!9592 (toList!3518 lt!1628551) lambda!154877)))

(declare-fun lt!1628558 () Unit!82527)

(declare-fun Unit!82560 () Unit!82527)

(assert (=> b!4429125 (= lt!1628558 Unit!82560)))

(assert (=> b!4429125 call!308239))

(declare-fun lt!1628546 () Unit!82527)

(declare-fun Unit!82561 () Unit!82527)

(assert (=> b!4429125 (= lt!1628546 Unit!82561)))

(declare-fun lt!1628562 () Unit!82527)

(declare-fun Unit!82562 () Unit!82527)

(assert (=> b!4429125 (= lt!1628562 Unit!82562)))

(declare-fun lt!1628554 () Unit!82527)

(assert (=> b!4429125 (= lt!1628554 (forallContained!2105 (toList!3518 lt!1628551) lambda!154877 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(assert (=> b!4429125 (contains!12145 lt!1628551 (_1!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(declare-fun lt!1628548 () Unit!82527)

(declare-fun Unit!82563 () Unit!82527)

(assert (=> b!4429125 (= lt!1628548 Unit!82563)))

(assert (=> b!4429125 (contains!12145 lt!1628555 (_1!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))))))

(declare-fun lt!1628543 () Unit!82527)

(declare-fun Unit!82564 () Unit!82527)

(assert (=> b!4429125 (= lt!1628543 Unit!82564)))

(assert (=> b!4429125 (forall!9592 (_2!28014 (h!55319 (toList!3517 lm!1616))) lambda!154877)))

(declare-fun lt!1628553 () Unit!82527)

(declare-fun Unit!82565 () Unit!82527)

(assert (=> b!4429125 (= lt!1628553 Unit!82565)))

(assert (=> b!4429125 (forall!9592 (toList!3518 lt!1628551) lambda!154877)))

(declare-fun lt!1628561 () Unit!82527)

(declare-fun Unit!82566 () Unit!82527)

(assert (=> b!4429125 (= lt!1628561 Unit!82566)))

(declare-fun lt!1628547 () Unit!82527)

(declare-fun Unit!82567 () Unit!82527)

(assert (=> b!4429125 (= lt!1628547 Unit!82567)))

(declare-fun lt!1628545 () Unit!82527)

(assert (=> b!4429125 (= lt!1628545 (addForallContainsKeyThenBeforeAdding!183 lt!1628254 lt!1628555 (_1!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616))))) (_2!28013 (h!55318 (_2!28014 (h!55319 (toList!3517 lm!1616)))))))))

(assert (=> b!4429125 (forall!9592 (toList!3518 lt!1628254) lambda!154877)))

(declare-fun lt!1628544 () Unit!82527)

(assert (=> b!4429125 (= lt!1628544 lt!1628545)))

(assert (=> b!4429125 call!308238))

(declare-fun lt!1628550 () Unit!82527)

(declare-fun Unit!82568 () Unit!82527)

(assert (=> b!4429125 (= lt!1628550 Unit!82568)))

(declare-fun res!1831685 () Bool)

(assert (=> b!4429125 (= res!1831685 (forall!9592 (_2!28014 (h!55319 (toList!3517 lm!1616))) lambda!154877))))

(declare-fun e!2757840 () Bool)

(assert (=> b!4429125 (=> (not res!1831685) (not e!2757840))))

(assert (=> b!4429125 e!2757840))

(declare-fun lt!1628542 () Unit!82527)

(declare-fun Unit!82569 () Unit!82527)

(assert (=> b!4429125 (= lt!1628542 Unit!82569)))

(declare-fun b!4429126 () Bool)

(assert (=> b!4429126 (= e!2757840 (forall!9592 (toList!3518 lt!1628254) lambda!154877))))

(declare-fun b!4429127 () Bool)

(assert (=> b!4429127 (= e!2757841 (invariantList!815 (toList!3518 lt!1628549)))))

(declare-fun bm!308235 () Bool)

(assert (=> bm!308235 (= call!308240 (lemmaContainsAllItsOwnKeys!183 lt!1628254))))

(assert (= (and d!1343235 c!753965) b!4429124))

(assert (= (and d!1343235 (not c!753965)) b!4429125))

(assert (= (and b!4429125 res!1831685) b!4429126))

(assert (= (or b!4429124 b!4429125) bm!308235))

(assert (= (or b!4429124 b!4429125) bm!308233))

(assert (= (or b!4429124 b!4429125) bm!308234))

(assert (= (and d!1343235 res!1831683) b!4429123))

(assert (= (and b!4429123 res!1831684) b!4429127))

(declare-fun m!5113125 () Bool)

(assert (=> b!4429127 m!5113125))

(declare-fun m!5113127 () Bool)

(assert (=> b!4429126 m!5113127))

(declare-fun m!5113129 () Bool)

(assert (=> b!4429123 m!5113129))

(declare-fun m!5113131 () Bool)

(assert (=> d!1343235 m!5113131))

(assert (=> d!1343235 m!5113011))

(declare-fun m!5113133 () Bool)

(assert (=> bm!308233 m!5113133))

(declare-fun m!5113135 () Bool)

(assert (=> b!4429125 m!5113135))

(declare-fun m!5113137 () Bool)

(assert (=> b!4429125 m!5113137))

(declare-fun m!5113139 () Bool)

(assert (=> b!4429125 m!5113139))

(assert (=> b!4429125 m!5113135))

(declare-fun m!5113141 () Bool)

(assert (=> b!4429125 m!5113141))

(declare-fun m!5113143 () Bool)

(assert (=> b!4429125 m!5113143))

(declare-fun m!5113145 () Bool)

(assert (=> b!4429125 m!5113145))

(declare-fun m!5113147 () Bool)

(assert (=> b!4429125 m!5113147))

(assert (=> b!4429125 m!5113137))

(declare-fun m!5113149 () Bool)

(assert (=> b!4429125 m!5113149))

(assert (=> b!4429125 m!5113127))

(declare-fun m!5113151 () Bool)

(assert (=> b!4429125 m!5113151))

(assert (=> b!4429125 m!5113147))

(declare-fun m!5113153 () Bool)

(assert (=> bm!308234 m!5113153))

(declare-fun m!5113155 () Bool)

(assert (=> bm!308235 m!5113155))

(assert (=> b!4428942 d!1343235))

(declare-fun d!1343237 () Bool)

(assert (=> d!1343237 (eq!423 (+!1115 lt!1628250 (tuple2!49439 key!3717 newValue!93)) (+!1115 lt!1628262 (tuple2!49439 key!3717 newValue!93)))))

(declare-fun lt!1628572 () Unit!82527)

(declare-fun choose!28025 (ListMap!2761 ListMap!2761 K!10985 V!11231) Unit!82527)

(assert (=> d!1343237 (= lt!1628572 (choose!28025 lt!1628250 lt!1628262 key!3717 newValue!93))))

(assert (=> d!1343237 (eq!423 lt!1628250 lt!1628262)))

(assert (=> d!1343237 (= (lemmaAddToEqMapsPreservesEq!34 lt!1628250 lt!1628262 key!3717 newValue!93) lt!1628572)))

(declare-fun bs!759624 () Bool)

(assert (= bs!759624 d!1343237))

(declare-fun m!5113197 () Bool)

(assert (=> bs!759624 m!5113197))

(declare-fun m!5113199 () Bool)

(assert (=> bs!759624 m!5113199))

(declare-fun m!5113201 () Bool)

(assert (=> bs!759624 m!5113201))

(assert (=> bs!759624 m!5113197))

(declare-fun m!5113203 () Bool)

(assert (=> bs!759624 m!5113203))

(assert (=> bs!759624 m!5112693))

(assert (=> bs!759624 m!5113199))

(assert (=> b!4428942 d!1343237))

(declare-fun d!1343255 () Bool)

(assert (=> d!1343255 (= (eq!423 lt!1628261 lt!1628249) (= (content!7972 (toList!3518 lt!1628261)) (content!7972 (toList!3518 lt!1628249))))))

(declare-fun bs!759625 () Bool)

(assert (= bs!759625 d!1343255))

(declare-fun m!5113205 () Bool)

(assert (=> bs!759625 m!5113205))

(declare-fun m!5113207 () Bool)

(assert (=> bs!759625 m!5113207))

(assert (=> b!4428942 d!1343255))

(declare-fun d!1343257 () Bool)

(assert (=> d!1343257 (eq!423 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lm!1616))) (+!1115 lt!1628251 (tuple2!49439 key!3717 newValue!93))) (+!1115 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lm!1616))) lt!1628251) (tuple2!49439 key!3717 newValue!93)))))

(declare-fun lt!1628578 () Unit!82527)

(declare-fun choose!28026 (ListMap!2761 K!10985 V!11231 List!49747) Unit!82527)

(assert (=> d!1343257 (= lt!1628578 (choose!28026 lt!1628251 key!3717 newValue!93 (_2!28014 (h!55319 (toList!3517 lm!1616)))))))

(assert (=> d!1343257 (not (containsKey!1148 (_2!28014 (h!55319 (toList!3517 lm!1616))) key!3717))))

(assert (=> d!1343257 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!194 lt!1628251 key!3717 newValue!93 (_2!28014 (h!55319 (toList!3517 lm!1616)))) lt!1628578)))

(declare-fun bs!759639 () Bool)

(assert (= bs!759639 d!1343257))

(declare-fun m!5113219 () Bool)

(assert (=> bs!759639 m!5113219))

(declare-fun m!5113221 () Bool)

(assert (=> bs!759639 m!5113221))

(assert (=> bs!759639 m!5113221))

(declare-fun m!5113223 () Bool)

(assert (=> bs!759639 m!5113223))

(declare-fun m!5113225 () Bool)

(assert (=> bs!759639 m!5113225))

(assert (=> bs!759639 m!5112695))

(assert (=> bs!759639 m!5113219))

(declare-fun m!5113227 () Bool)

(assert (=> bs!759639 m!5113227))

(assert (=> bs!759639 m!5112695))

(assert (=> bs!759639 m!5113223))

(assert (=> bs!759639 m!5112735))

(assert (=> b!4428942 d!1343257))

(declare-fun d!1343267 () Bool)

(assert (=> d!1343267 (= (eq!423 (+!1115 lt!1628250 lt!1628253) lt!1628249) (= (content!7972 (toList!3518 (+!1115 lt!1628250 lt!1628253))) (content!7972 (toList!3518 lt!1628249))))))

(declare-fun bs!759640 () Bool)

(assert (= bs!759640 d!1343267))

(declare-fun m!5113229 () Bool)

(assert (=> bs!759640 m!5113229))

(assert (=> bs!759640 m!5113207))

(assert (=> b!4428942 d!1343267))

(declare-fun d!1343269 () Bool)

(declare-fun res!1831698 () Bool)

(declare-fun e!2757859 () Bool)

(assert (=> d!1343269 (=> res!1831698 e!2757859)))

(assert (=> d!1343269 (= res!1831698 ((_ is Nil!49624) (toList!3517 lt!1628248)))))

(assert (=> d!1343269 (= (forall!9590 (toList!3517 lt!1628248) lambda!154782) e!2757859)))

(declare-fun b!4429150 () Bool)

(declare-fun e!2757860 () Bool)

(assert (=> b!4429150 (= e!2757859 e!2757860)))

(declare-fun res!1831699 () Bool)

(assert (=> b!4429150 (=> (not res!1831699) (not e!2757860))))

(assert (=> b!4429150 (= res!1831699 (dynLambda!20858 lambda!154782 (h!55319 (toList!3517 lt!1628248))))))

(declare-fun b!4429151 () Bool)

(assert (=> b!4429151 (= e!2757860 (forall!9590 (t!356686 (toList!3517 lt!1628248)) lambda!154782))))

(assert (= (and d!1343269 (not res!1831698)) b!4429150))

(assert (= (and b!4429150 res!1831699) b!4429151))

(declare-fun b_lambda!143545 () Bool)

(assert (=> (not b_lambda!143545) (not b!4429150)))

(declare-fun m!5113231 () Bool)

(assert (=> b!4429150 m!5113231))

(declare-fun m!5113233 () Bool)

(assert (=> b!4429151 m!5113233))

(assert (=> b!4428942 d!1343269))

(declare-fun d!1343271 () Bool)

(declare-fun e!2757863 () Bool)

(assert (=> d!1343271 e!2757863))

(declare-fun res!1831704 () Bool)

(assert (=> d!1343271 (=> (not res!1831704) (not e!2757863))))

(declare-fun lt!1628590 () ListMap!2761)

(assert (=> d!1343271 (= res!1831704 (contains!12145 lt!1628590 (_1!28013 lt!1628253)))))

(declare-fun lt!1628588 () List!49747)

(assert (=> d!1343271 (= lt!1628590 (ListMap!2762 lt!1628588))))

(declare-fun lt!1628587 () Unit!82527)

(declare-fun lt!1628589 () Unit!82527)

(assert (=> d!1343271 (= lt!1628587 lt!1628589)))

(declare-datatypes ((Option!10746 0))(
  ( (None!10745) (Some!10745 (v!43939 V!11231)) )
))
(declare-fun getValueByKey!732 (List!49747 K!10985) Option!10746)

(assert (=> d!1343271 (= (getValueByKey!732 lt!1628588 (_1!28013 lt!1628253)) (Some!10745 (_2!28013 lt!1628253)))))

(declare-fun lemmaContainsTupThenGetReturnValue!467 (List!49747 K!10985 V!11231) Unit!82527)

(assert (=> d!1343271 (= lt!1628589 (lemmaContainsTupThenGetReturnValue!467 lt!1628588 (_1!28013 lt!1628253) (_2!28013 lt!1628253)))))

(declare-fun insertNoDuplicatedKeys!205 (List!49747 K!10985 V!11231) List!49747)

(assert (=> d!1343271 (= lt!1628588 (insertNoDuplicatedKeys!205 (toList!3518 lt!1628250) (_1!28013 lt!1628253) (_2!28013 lt!1628253)))))

(assert (=> d!1343271 (= (+!1115 lt!1628250 lt!1628253) lt!1628590)))

(declare-fun b!4429156 () Bool)

(declare-fun res!1831705 () Bool)

(assert (=> b!4429156 (=> (not res!1831705) (not e!2757863))))

(assert (=> b!4429156 (= res!1831705 (= (getValueByKey!732 (toList!3518 lt!1628590) (_1!28013 lt!1628253)) (Some!10745 (_2!28013 lt!1628253))))))

(declare-fun b!4429157 () Bool)

(declare-fun contains!12150 (List!49747 tuple2!49438) Bool)

(assert (=> b!4429157 (= e!2757863 (contains!12150 (toList!3518 lt!1628590) lt!1628253))))

(assert (= (and d!1343271 res!1831704) b!4429156))

(assert (= (and b!4429156 res!1831705) b!4429157))

(declare-fun m!5113235 () Bool)

(assert (=> d!1343271 m!5113235))

(declare-fun m!5113237 () Bool)

(assert (=> d!1343271 m!5113237))

(declare-fun m!5113239 () Bool)

(assert (=> d!1343271 m!5113239))

(declare-fun m!5113241 () Bool)

(assert (=> d!1343271 m!5113241))

(declare-fun m!5113243 () Bool)

(assert (=> b!4429156 m!5113243))

(declare-fun m!5113245 () Bool)

(assert (=> b!4429157 m!5113245))

(assert (=> b!4428942 d!1343271))

(declare-fun d!1343273 () Bool)

(declare-fun e!2757864 () Bool)

(assert (=> d!1343273 e!2757864))

(declare-fun res!1831706 () Bool)

(assert (=> d!1343273 (=> (not res!1831706) (not e!2757864))))

(declare-fun lt!1628594 () ListMap!2761)

(assert (=> d!1343273 (= res!1831706 (contains!12145 lt!1628594 (_1!28013 lt!1628253)))))

(declare-fun lt!1628592 () List!49747)

(assert (=> d!1343273 (= lt!1628594 (ListMap!2762 lt!1628592))))

(declare-fun lt!1628591 () Unit!82527)

(declare-fun lt!1628593 () Unit!82527)

(assert (=> d!1343273 (= lt!1628591 lt!1628593)))

(assert (=> d!1343273 (= (getValueByKey!732 lt!1628592 (_1!28013 lt!1628253)) (Some!10745 (_2!28013 lt!1628253)))))

(assert (=> d!1343273 (= lt!1628593 (lemmaContainsTupThenGetReturnValue!467 lt!1628592 (_1!28013 lt!1628253) (_2!28013 lt!1628253)))))

(assert (=> d!1343273 (= lt!1628592 (insertNoDuplicatedKeys!205 (toList!3518 lt!1628262) (_1!28013 lt!1628253) (_2!28013 lt!1628253)))))

(assert (=> d!1343273 (= (+!1115 lt!1628262 lt!1628253) lt!1628594)))

(declare-fun b!4429158 () Bool)

(declare-fun res!1831707 () Bool)

(assert (=> b!4429158 (=> (not res!1831707) (not e!2757864))))

(assert (=> b!4429158 (= res!1831707 (= (getValueByKey!732 (toList!3518 lt!1628594) (_1!28013 lt!1628253)) (Some!10745 (_2!28013 lt!1628253))))))

(declare-fun b!4429159 () Bool)

(assert (=> b!4429159 (= e!2757864 (contains!12150 (toList!3518 lt!1628594) lt!1628253))))

(assert (= (and d!1343273 res!1831706) b!4429158))

(assert (= (and b!4429158 res!1831707) b!4429159))

(declare-fun m!5113247 () Bool)

(assert (=> d!1343273 m!5113247))

(declare-fun m!5113249 () Bool)

(assert (=> d!1343273 m!5113249))

(declare-fun m!5113251 () Bool)

(assert (=> d!1343273 m!5113251))

(declare-fun m!5113253 () Bool)

(assert (=> d!1343273 m!5113253))

(declare-fun m!5113255 () Bool)

(assert (=> b!4429158 m!5113255))

(declare-fun m!5113257 () Bool)

(assert (=> b!4429159 m!5113257))

(assert (=> b!4428942 d!1343273))

(declare-fun b!4429178 () Bool)

(declare-fun e!2757881 () Bool)

(declare-datatypes ((List!49750 0))(
  ( (Nil!49626) (Cons!49626 (h!55323 K!10985) (t!356688 List!49750)) )
))
(declare-fun contains!12151 (List!49750 K!10985) Bool)

(declare-fun keys!16954 (ListMap!2761) List!49750)

(assert (=> b!4429178 (= e!2757881 (contains!12151 (keys!16954 lt!1628250) key!3717))))

(declare-fun b!4429179 () Bool)

(assert (=> b!4429179 false))

(declare-fun lt!1628618 () Unit!82527)

(declare-fun lt!1628612 () Unit!82527)

(assert (=> b!4429179 (= lt!1628618 lt!1628612)))

(declare-fun containsKey!1152 (List!49747 K!10985) Bool)

(assert (=> b!4429179 (containsKey!1152 (toList!3518 lt!1628250) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!260 (List!49747 K!10985) Unit!82527)

(assert (=> b!4429179 (= lt!1628612 (lemmaInGetKeysListThenContainsKey!260 (toList!3518 lt!1628250) key!3717))))

(declare-fun e!2757882 () Unit!82527)

(declare-fun Unit!82581 () Unit!82527)

(assert (=> b!4429179 (= e!2757882 Unit!82581)))

(declare-fun b!4429180 () Bool)

(declare-fun Unit!82582 () Unit!82527)

(assert (=> b!4429180 (= e!2757882 Unit!82582)))

(declare-fun d!1343275 () Bool)

(declare-fun e!2757877 () Bool)

(assert (=> d!1343275 e!2757877))

(declare-fun res!1831715 () Bool)

(assert (=> d!1343275 (=> res!1831715 e!2757877)))

(declare-fun e!2757879 () Bool)

(assert (=> d!1343275 (= res!1831715 e!2757879)))

(declare-fun res!1831714 () Bool)

(assert (=> d!1343275 (=> (not res!1831714) (not e!2757879))))

(declare-fun lt!1628615 () Bool)

(assert (=> d!1343275 (= res!1831714 (not lt!1628615))))

(declare-fun lt!1628616 () Bool)

(assert (=> d!1343275 (= lt!1628615 lt!1628616)))

(declare-fun lt!1628617 () Unit!82527)

(declare-fun e!2757878 () Unit!82527)

(assert (=> d!1343275 (= lt!1628617 e!2757878)))

(declare-fun c!753973 () Bool)

(assert (=> d!1343275 (= c!753973 lt!1628616)))

(assert (=> d!1343275 (= lt!1628616 (containsKey!1152 (toList!3518 lt!1628250) key!3717))))

(assert (=> d!1343275 (= (contains!12145 lt!1628250 key!3717) lt!1628615)))

(declare-fun b!4429181 () Bool)

(assert (=> b!4429181 (= e!2757879 (not (contains!12151 (keys!16954 lt!1628250) key!3717)))))

(declare-fun b!4429182 () Bool)

(declare-fun e!2757880 () List!49750)

(assert (=> b!4429182 (= e!2757880 (keys!16954 lt!1628250))))

(declare-fun bm!308238 () Bool)

(declare-fun call!308243 () Bool)

(assert (=> bm!308238 (= call!308243 (contains!12151 e!2757880 key!3717))))

(declare-fun c!753972 () Bool)

(assert (=> bm!308238 (= c!753972 c!753973)))

(declare-fun b!4429183 () Bool)

(assert (=> b!4429183 (= e!2757878 e!2757882)))

(declare-fun c!753974 () Bool)

(assert (=> b!4429183 (= c!753974 call!308243)))

(declare-fun b!4429184 () Bool)

(assert (=> b!4429184 (= e!2757877 e!2757881)))

(declare-fun res!1831716 () Bool)

(assert (=> b!4429184 (=> (not res!1831716) (not e!2757881))))

(declare-fun isDefined!8038 (Option!10746) Bool)

(assert (=> b!4429184 (= res!1831716 (isDefined!8038 (getValueByKey!732 (toList!3518 lt!1628250) key!3717)))))

(declare-fun b!4429185 () Bool)

(declare-fun lt!1628613 () Unit!82527)

(assert (=> b!4429185 (= e!2757878 lt!1628613)))

(declare-fun lt!1628614 () Unit!82527)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!641 (List!49747 K!10985) Unit!82527)

(assert (=> b!4429185 (= lt!1628614 (lemmaContainsKeyImpliesGetValueByKeyDefined!641 (toList!3518 lt!1628250) key!3717))))

(assert (=> b!4429185 (isDefined!8038 (getValueByKey!732 (toList!3518 lt!1628250) key!3717))))

(declare-fun lt!1628611 () Unit!82527)

(assert (=> b!4429185 (= lt!1628611 lt!1628614)))

(declare-fun lemmaInListThenGetKeysListContains!259 (List!49747 K!10985) Unit!82527)

(assert (=> b!4429185 (= lt!1628613 (lemmaInListThenGetKeysListContains!259 (toList!3518 lt!1628250) key!3717))))

(assert (=> b!4429185 call!308243))

(declare-fun b!4429186 () Bool)

(declare-fun getKeysList!262 (List!49747) List!49750)

(assert (=> b!4429186 (= e!2757880 (getKeysList!262 (toList!3518 lt!1628250)))))

(assert (= (and d!1343275 c!753973) b!4429185))

(assert (= (and d!1343275 (not c!753973)) b!4429183))

(assert (= (and b!4429183 c!753974) b!4429179))

(assert (= (and b!4429183 (not c!753974)) b!4429180))

(assert (= (or b!4429185 b!4429183) bm!308238))

(assert (= (and bm!308238 c!753972) b!4429186))

(assert (= (and bm!308238 (not c!753972)) b!4429182))

(assert (= (and d!1343275 res!1831714) b!4429181))

(assert (= (and d!1343275 (not res!1831715)) b!4429184))

(assert (= (and b!4429184 res!1831716) b!4429178))

(declare-fun m!5113259 () Bool)

(assert (=> b!4429178 m!5113259))

(assert (=> b!4429178 m!5113259))

(declare-fun m!5113261 () Bool)

(assert (=> b!4429178 m!5113261))

(assert (=> b!4429182 m!5113259))

(declare-fun m!5113263 () Bool)

(assert (=> b!4429185 m!5113263))

(declare-fun m!5113265 () Bool)

(assert (=> b!4429185 m!5113265))

(assert (=> b!4429185 m!5113265))

(declare-fun m!5113267 () Bool)

(assert (=> b!4429185 m!5113267))

(declare-fun m!5113269 () Bool)

(assert (=> b!4429185 m!5113269))

(assert (=> b!4429184 m!5113265))

(assert (=> b!4429184 m!5113265))

(assert (=> b!4429184 m!5113267))

(declare-fun m!5113271 () Bool)

(assert (=> b!4429186 m!5113271))

(declare-fun m!5113273 () Bool)

(assert (=> b!4429179 m!5113273))

(declare-fun m!5113275 () Bool)

(assert (=> b!4429179 m!5113275))

(assert (=> d!1343275 m!5113273))

(declare-fun m!5113277 () Bool)

(assert (=> bm!308238 m!5113277))

(assert (=> b!4429181 m!5113259))

(assert (=> b!4429181 m!5113259))

(assert (=> b!4429181 m!5113261))

(assert (=> b!4428937 d!1343275))

(declare-fun bs!759641 () Bool)

(declare-fun d!1343277 () Bool)

(assert (= bs!759641 (and d!1343277 start!432384)))

(declare-fun lambda!154884 () Int)

(assert (=> bs!759641 (= lambda!154884 lambda!154782)))

(declare-fun bs!759642 () Bool)

(assert (= bs!759642 (and d!1343277 d!1343213)))

(assert (=> bs!759642 (= lambda!154884 lambda!154868)))

(declare-fun bs!759643 () Bool)

(assert (= bs!759643 (and d!1343277 d!1343231)))

(assert (=> bs!759643 (= lambda!154884 lambda!154874)))

(declare-fun lt!1628621 () ListMap!2761)

(assert (=> d!1343277 (invariantList!815 (toList!3518 lt!1628621))))

(declare-fun e!2757885 () ListMap!2761)

(assert (=> d!1343277 (= lt!1628621 e!2757885)))

(declare-fun c!753977 () Bool)

(assert (=> d!1343277 (= c!753977 ((_ is Cons!49624) (toList!3517 lm!1616)))))

(assert (=> d!1343277 (forall!9590 (toList!3517 lm!1616) lambda!154884)))

(assert (=> d!1343277 (= (extractMap!826 (toList!3517 lm!1616)) lt!1628621)))

(declare-fun b!4429191 () Bool)

(assert (=> b!4429191 (= e!2757885 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lm!1616))) (extractMap!826 (t!356686 (toList!3517 lm!1616)))))))

(declare-fun b!4429192 () Bool)

(assert (=> b!4429192 (= e!2757885 (ListMap!2762 Nil!49623))))

(assert (= (and d!1343277 c!753977) b!4429191))

(assert (= (and d!1343277 (not c!753977)) b!4429192))

(declare-fun m!5113279 () Bool)

(assert (=> d!1343277 m!5113279))

(declare-fun m!5113281 () Bool)

(assert (=> d!1343277 m!5113281))

(declare-fun m!5113283 () Bool)

(assert (=> b!4429191 m!5113283))

(assert (=> b!4429191 m!5113283))

(declare-fun m!5113285 () Bool)

(assert (=> b!4429191 m!5113285))

(assert (=> b!4428937 d!1343277))

(declare-fun d!1343279 () Bool)

(declare-fun res!1831721 () Bool)

(declare-fun e!2757890 () Bool)

(assert (=> d!1343279 (=> res!1831721 e!2757890)))

(assert (=> d!1343279 (= res!1831721 (not ((_ is Cons!49623) newBucket!194)))))

(assert (=> d!1343279 (= (noDuplicateKeys!765 newBucket!194) e!2757890)))

(declare-fun b!4429197 () Bool)

(declare-fun e!2757891 () Bool)

(assert (=> b!4429197 (= e!2757890 e!2757891)))

(declare-fun res!1831722 () Bool)

(assert (=> b!4429197 (=> (not res!1831722) (not e!2757891))))

(assert (=> b!4429197 (= res!1831722 (not (containsKey!1148 (t!356685 newBucket!194) (_1!28013 (h!55318 newBucket!194)))))))

(declare-fun b!4429198 () Bool)

(assert (=> b!4429198 (= e!2757891 (noDuplicateKeys!765 (t!356685 newBucket!194)))))

(assert (= (and d!1343279 (not res!1831721)) b!4429197))

(assert (= (and b!4429197 res!1831722) b!4429198))

(declare-fun m!5113287 () Bool)

(assert (=> b!4429197 m!5113287))

(declare-fun m!5113289 () Bool)

(assert (=> b!4429198 m!5113289))

(assert (=> b!4428938 d!1343279))

(declare-fun bs!759644 () Bool)

(declare-fun d!1343281 () Bool)

(assert (= bs!759644 (and d!1343281 b!4429125)))

(declare-fun lambda!154887 () Int)

(assert (=> bs!759644 (not (= lambda!154887 lambda!154876))))

(declare-fun bs!759645 () Bool)

(assert (= bs!759645 (and d!1343281 b!4429093)))

(assert (=> bs!759645 (not (= lambda!154887 lambda!154863))))

(declare-fun bs!759646 () Bool)

(assert (= bs!759646 (and d!1343281 b!4429090)))

(assert (=> bs!759646 (not (= lambda!154887 lambda!154861))))

(declare-fun bs!759647 () Bool)

(assert (= bs!759647 (and d!1343281 b!4429124)))

(assert (=> bs!759647 (not (= lambda!154887 lambda!154875))))

(assert (=> bs!759644 (not (= lambda!154887 lambda!154877))))

(declare-fun bs!759648 () Bool)

(assert (= bs!759648 (and d!1343281 d!1343235)))

(assert (=> bs!759648 (not (= lambda!154887 lambda!154878))))

(declare-fun bs!759649 () Bool)

(assert (= bs!759649 (and d!1343281 d!1343177)))

(assert (=> bs!759649 (not (= lambda!154887 lambda!154864))))

(assert (=> bs!759645 (not (= lambda!154887 lambda!154862))))

(assert (=> d!1343281 true))

(assert (=> d!1343281 true))

(assert (=> d!1343281 (= (allKeysSameHash!725 newBucket!194 hash!366 hashF!1220) (forall!9592 newBucket!194 lambda!154887))))

(declare-fun bs!759650 () Bool)

(assert (= bs!759650 d!1343281))

(declare-fun m!5113291 () Bool)

(assert (=> bs!759650 m!5113291))

(assert (=> b!4428949 d!1343281))

(declare-fun d!1343283 () Bool)

(assert (=> d!1343283 (= (apply!11617 lm!1616 hash!366) (get!16177 (getValueByKey!731 (toList!3517 lm!1616) hash!366)))))

(declare-fun bs!759651 () Bool)

(assert (= bs!759651 d!1343283))

(assert (=> bs!759651 m!5112857))

(assert (=> bs!759651 m!5112857))

(declare-fun m!5113293 () Bool)

(assert (=> bs!759651 m!5113293))

(assert (=> b!4428950 d!1343283))

(declare-fun d!1343285 () Bool)

(assert (=> d!1343285 (= (eq!423 lt!1628258 lt!1628254) (= (content!7972 (toList!3518 lt!1628258)) (content!7972 (toList!3518 lt!1628254))))))

(declare-fun bs!759652 () Bool)

(assert (= bs!759652 d!1343285))

(declare-fun m!5113295 () Bool)

(assert (=> bs!759652 m!5113295))

(declare-fun m!5113297 () Bool)

(assert (=> bs!759652 m!5113297))

(assert (=> b!4428945 d!1343285))

(declare-fun d!1343287 () Bool)

(declare-fun e!2757892 () Bool)

(assert (=> d!1343287 e!2757892))

(declare-fun res!1831723 () Bool)

(assert (=> d!1343287 (=> (not res!1831723) (not e!2757892))))

(declare-fun lt!1628623 () ListLongMap!2167)

(assert (=> d!1343287 (= res!1831723 (contains!12144 lt!1628623 (_1!28014 lt!1628266)))))

(declare-fun lt!1628622 () List!49748)

(assert (=> d!1343287 (= lt!1628623 (ListLongMap!2168 lt!1628622))))

(declare-fun lt!1628625 () Unit!82527)

(declare-fun lt!1628624 () Unit!82527)

(assert (=> d!1343287 (= lt!1628625 lt!1628624)))

(assert (=> d!1343287 (= (getValueByKey!731 lt!1628622 (_1!28014 lt!1628266)) (Some!10744 (_2!28014 lt!1628266)))))

(assert (=> d!1343287 (= lt!1628624 (lemmaContainsTupThenGetReturnValue!465 lt!1628622 (_1!28014 lt!1628266) (_2!28014 lt!1628266)))))

(assert (=> d!1343287 (= lt!1628622 (insertStrictlySorted!270 (toList!3517 lt!1628265) (_1!28014 lt!1628266) (_2!28014 lt!1628266)))))

(assert (=> d!1343287 (= (+!1114 lt!1628265 lt!1628266) lt!1628623)))

(declare-fun b!4429203 () Bool)

(declare-fun res!1831724 () Bool)

(assert (=> b!4429203 (=> (not res!1831724) (not e!2757892))))

(assert (=> b!4429203 (= res!1831724 (= (getValueByKey!731 (toList!3517 lt!1628623) (_1!28014 lt!1628266)) (Some!10744 (_2!28014 lt!1628266))))))

(declare-fun b!4429204 () Bool)

(assert (=> b!4429204 (= e!2757892 (contains!12148 (toList!3517 lt!1628623) lt!1628266))))

(assert (= (and d!1343287 res!1831723) b!4429203))

(assert (= (and b!4429203 res!1831724) b!4429204))

(declare-fun m!5113299 () Bool)

(assert (=> d!1343287 m!5113299))

(declare-fun m!5113301 () Bool)

(assert (=> d!1343287 m!5113301))

(declare-fun m!5113303 () Bool)

(assert (=> d!1343287 m!5113303))

(declare-fun m!5113305 () Bool)

(assert (=> d!1343287 m!5113305))

(declare-fun m!5113307 () Bool)

(assert (=> b!4429203 m!5113307))

(declare-fun m!5113309 () Bool)

(assert (=> b!4429204 m!5113309))

(assert (=> b!4428945 d!1343287))

(declare-fun d!1343289 () Bool)

(declare-fun e!2757893 () Bool)

(assert (=> d!1343289 e!2757893))

(declare-fun res!1831725 () Bool)

(assert (=> d!1343289 (=> (not res!1831725) (not e!2757893))))

(declare-fun lt!1628629 () ListMap!2761)

(assert (=> d!1343289 (= res!1831725 (contains!12145 lt!1628629 (_1!28013 lt!1628253)))))

(declare-fun lt!1628627 () List!49747)

(assert (=> d!1343289 (= lt!1628629 (ListMap!2762 lt!1628627))))

(declare-fun lt!1628626 () Unit!82527)

(declare-fun lt!1628628 () Unit!82527)

(assert (=> d!1343289 (= lt!1628626 lt!1628628)))

(assert (=> d!1343289 (= (getValueByKey!732 lt!1628627 (_1!28013 lt!1628253)) (Some!10745 (_2!28013 lt!1628253)))))

(assert (=> d!1343289 (= lt!1628628 (lemmaContainsTupThenGetReturnValue!467 lt!1628627 (_1!28013 lt!1628253) (_2!28013 lt!1628253)))))

(assert (=> d!1343289 (= lt!1628627 (insertNoDuplicatedKeys!205 (toList!3518 lt!1628251) (_1!28013 lt!1628253) (_2!28013 lt!1628253)))))

(assert (=> d!1343289 (= (+!1115 lt!1628251 lt!1628253) lt!1628629)))

(declare-fun b!4429205 () Bool)

(declare-fun res!1831726 () Bool)

(assert (=> b!4429205 (=> (not res!1831726) (not e!2757893))))

(assert (=> b!4429205 (= res!1831726 (= (getValueByKey!732 (toList!3518 lt!1628629) (_1!28013 lt!1628253)) (Some!10745 (_2!28013 lt!1628253))))))

(declare-fun b!4429206 () Bool)

(assert (=> b!4429206 (= e!2757893 (contains!12150 (toList!3518 lt!1628629) lt!1628253))))

(assert (= (and d!1343289 res!1831725) b!4429205))

(assert (= (and b!4429205 res!1831726) b!4429206))

(declare-fun m!5113311 () Bool)

(assert (=> d!1343289 m!5113311))

(declare-fun m!5113313 () Bool)

(assert (=> d!1343289 m!5113313))

(declare-fun m!5113315 () Bool)

(assert (=> d!1343289 m!5113315))

(declare-fun m!5113317 () Bool)

(assert (=> d!1343289 m!5113317))

(declare-fun m!5113319 () Bool)

(assert (=> b!4429205 m!5113319))

(declare-fun m!5113321 () Bool)

(assert (=> b!4429206 m!5113321))

(assert (=> b!4428945 d!1343289))

(declare-fun bs!759653 () Bool)

(declare-fun d!1343291 () Bool)

(assert (= bs!759653 (and d!1343291 start!432384)))

(declare-fun lambda!154888 () Int)

(assert (=> bs!759653 (= lambda!154888 lambda!154782)))

(declare-fun bs!759654 () Bool)

(assert (= bs!759654 (and d!1343291 d!1343213)))

(assert (=> bs!759654 (= lambda!154888 lambda!154868)))

(declare-fun bs!759655 () Bool)

(assert (= bs!759655 (and d!1343291 d!1343231)))

(assert (=> bs!759655 (= lambda!154888 lambda!154874)))

(declare-fun bs!759656 () Bool)

(assert (= bs!759656 (and d!1343291 d!1343277)))

(assert (=> bs!759656 (= lambda!154888 lambda!154884)))

(declare-fun lt!1628630 () ListMap!2761)

(assert (=> d!1343291 (invariantList!815 (toList!3518 lt!1628630))))

(declare-fun e!2757894 () ListMap!2761)

(assert (=> d!1343291 (= lt!1628630 e!2757894)))

(declare-fun c!753978 () Bool)

(assert (=> d!1343291 (= c!753978 ((_ is Cons!49624) (toList!3517 lt!1628248)))))

(assert (=> d!1343291 (forall!9590 (toList!3517 lt!1628248) lambda!154888)))

(assert (=> d!1343291 (= (extractMap!826 (toList!3517 lt!1628248)) lt!1628630)))

(declare-fun b!4429207 () Bool)

(assert (=> b!4429207 (= e!2757894 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lt!1628248))) (extractMap!826 (t!356686 (toList!3517 lt!1628248)))))))

(declare-fun b!4429208 () Bool)

(assert (=> b!4429208 (= e!2757894 (ListMap!2762 Nil!49623))))

(assert (= (and d!1343291 c!753978) b!4429207))

(assert (= (and d!1343291 (not c!753978)) b!4429208))

(declare-fun m!5113323 () Bool)

(assert (=> d!1343291 m!5113323))

(declare-fun m!5113325 () Bool)

(assert (=> d!1343291 m!5113325))

(declare-fun m!5113327 () Bool)

(assert (=> b!4429207 m!5113327))

(assert (=> b!4429207 m!5113327))

(declare-fun m!5113329 () Bool)

(assert (=> b!4429207 m!5113329))

(assert (=> b!4428945 d!1343291))

(declare-fun bs!759657 () Bool)

(declare-fun d!1343293 () Bool)

(assert (= bs!759657 (and d!1343293 d!1343277)))

(declare-fun lambda!154891 () Int)

(assert (=> bs!759657 (= lambda!154891 lambda!154884)))

(declare-fun bs!759658 () Bool)

(assert (= bs!759658 (and d!1343293 d!1343213)))

(assert (=> bs!759658 (= lambda!154891 lambda!154868)))

(declare-fun bs!759659 () Bool)

(assert (= bs!759659 (and d!1343293 start!432384)))

(assert (=> bs!759659 (= lambda!154891 lambda!154782)))

(declare-fun bs!759660 () Bool)

(assert (= bs!759660 (and d!1343293 d!1343231)))

(assert (=> bs!759660 (= lambda!154891 lambda!154874)))

(declare-fun bs!759661 () Bool)

(assert (= bs!759661 (and d!1343293 d!1343291)))

(assert (=> bs!759661 (= lambda!154891 lambda!154888)))

(assert (=> d!1343293 (eq!423 (extractMap!826 (toList!3517 (+!1114 lt!1628265 (tuple2!49441 hash!366 newBucket!194)))) (+!1115 (extractMap!826 (toList!3517 lt!1628265)) (tuple2!49439 key!3717 newValue!93)))))

(declare-fun lt!1628633 () Unit!82527)

(declare-fun choose!28029 (ListLongMap!2167 (_ BitVec 64) List!49747 K!10985 V!11231 Hashable!5159) Unit!82527)

(assert (=> d!1343293 (= lt!1628633 (choose!28029 lt!1628265 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1343293 (forall!9590 (toList!3517 lt!1628265) lambda!154891)))

(assert (=> d!1343293 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!139 lt!1628265 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1628633)))

(declare-fun bs!759662 () Bool)

(assert (= bs!759662 d!1343293))

(declare-fun m!5113331 () Bool)

(assert (=> bs!759662 m!5113331))

(declare-fun m!5113333 () Bool)

(assert (=> bs!759662 m!5113333))

(declare-fun m!5113335 () Bool)

(assert (=> bs!759662 m!5113335))

(declare-fun m!5113337 () Bool)

(assert (=> bs!759662 m!5113337))

(declare-fun m!5113339 () Bool)

(assert (=> bs!759662 m!5113339))

(declare-fun m!5113341 () Bool)

(assert (=> bs!759662 m!5113341))

(assert (=> bs!759662 m!5112751))

(assert (=> bs!759662 m!5113333))

(assert (=> bs!759662 m!5112751))

(assert (=> bs!759662 m!5113331))

(assert (=> b!4428945 d!1343293))

(declare-fun d!1343295 () Bool)

(assert (=> d!1343295 (= (tail!7302 lm!1616) (ListLongMap!2168 (tail!7303 (toList!3517 lm!1616))))))

(declare-fun bs!759663 () Bool)

(assert (= bs!759663 d!1343295))

(assert (=> bs!759663 m!5112743))

(assert (=> b!4428945 d!1343295))

(declare-fun bs!759664 () Bool)

(declare-fun d!1343297 () Bool)

(assert (= bs!759664 (and d!1343297 d!1343277)))

(declare-fun lambda!154892 () Int)

(assert (=> bs!759664 (= lambda!154892 lambda!154884)))

(declare-fun bs!759665 () Bool)

(assert (= bs!759665 (and d!1343297 d!1343213)))

(assert (=> bs!759665 (= lambda!154892 lambda!154868)))

(declare-fun bs!759666 () Bool)

(assert (= bs!759666 (and d!1343297 start!432384)))

(assert (=> bs!759666 (= lambda!154892 lambda!154782)))

(declare-fun bs!759667 () Bool)

(assert (= bs!759667 (and d!1343297 d!1343231)))

(assert (=> bs!759667 (= lambda!154892 lambda!154874)))

(declare-fun bs!759668 () Bool)

(assert (= bs!759668 (and d!1343297 d!1343293)))

(assert (=> bs!759668 (= lambda!154892 lambda!154891)))

(declare-fun bs!759669 () Bool)

(assert (= bs!759669 (and d!1343297 d!1343291)))

(assert (=> bs!759669 (= lambda!154892 lambda!154888)))

(declare-fun lt!1628634 () ListMap!2761)

(assert (=> d!1343297 (invariantList!815 (toList!3518 lt!1628634))))

(declare-fun e!2757895 () ListMap!2761)

(assert (=> d!1343297 (= lt!1628634 e!2757895)))

(declare-fun c!753979 () Bool)

(assert (=> d!1343297 (= c!753979 ((_ is Cons!49624) (tail!7303 (toList!3517 lm!1616))))))

(assert (=> d!1343297 (forall!9590 (tail!7303 (toList!3517 lm!1616)) lambda!154892)))

(assert (=> d!1343297 (= (extractMap!826 (tail!7303 (toList!3517 lm!1616))) lt!1628634)))

(declare-fun b!4429209 () Bool)

(assert (=> b!4429209 (= e!2757895 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (tail!7303 (toList!3517 lm!1616)))) (extractMap!826 (t!356686 (tail!7303 (toList!3517 lm!1616))))))))

(declare-fun b!4429210 () Bool)

(assert (=> b!4429210 (= e!2757895 (ListMap!2762 Nil!49623))))

(assert (= (and d!1343297 c!753979) b!4429209))

(assert (= (and d!1343297 (not c!753979)) b!4429210))

(declare-fun m!5113343 () Bool)

(assert (=> d!1343297 m!5113343))

(assert (=> d!1343297 m!5112743))

(declare-fun m!5113345 () Bool)

(assert (=> d!1343297 m!5113345))

(declare-fun m!5113347 () Bool)

(assert (=> b!4429209 m!5113347))

(assert (=> b!4429209 m!5113347))

(declare-fun m!5113349 () Bool)

(assert (=> b!4429209 m!5113349))

(assert (=> b!4428945 d!1343297))

(declare-fun d!1343299 () Bool)

(assert (=> d!1343299 (= (tail!7303 (toList!3517 lm!1616)) (t!356686 (toList!3517 lm!1616)))))

(assert (=> b!4428945 d!1343299))

(declare-fun b!4429211 () Bool)

(declare-fun e!2757900 () Bool)

(assert (=> b!4429211 (= e!2757900 (contains!12151 (keys!16954 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717))))

(declare-fun b!4429212 () Bool)

(assert (=> b!4429212 false))

(declare-fun lt!1628642 () Unit!82527)

(declare-fun lt!1628636 () Unit!82527)

(assert (=> b!4429212 (= lt!1628642 lt!1628636)))

(assert (=> b!4429212 (containsKey!1152 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717)))

(assert (=> b!4429212 (= lt!1628636 (lemmaInGetKeysListThenContainsKey!260 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717))))

(declare-fun e!2757901 () Unit!82527)

(declare-fun Unit!82583 () Unit!82527)

(assert (=> b!4429212 (= e!2757901 Unit!82583)))

(declare-fun b!4429213 () Bool)

(declare-fun Unit!82584 () Unit!82527)

(assert (=> b!4429213 (= e!2757901 Unit!82584)))

(declare-fun d!1343301 () Bool)

(declare-fun e!2757896 () Bool)

(assert (=> d!1343301 e!2757896))

(declare-fun res!1831728 () Bool)

(assert (=> d!1343301 (=> res!1831728 e!2757896)))

(declare-fun e!2757898 () Bool)

(assert (=> d!1343301 (= res!1831728 e!2757898)))

(declare-fun res!1831727 () Bool)

(assert (=> d!1343301 (=> (not res!1831727) (not e!2757898))))

(declare-fun lt!1628639 () Bool)

(assert (=> d!1343301 (= res!1831727 (not lt!1628639))))

(declare-fun lt!1628640 () Bool)

(assert (=> d!1343301 (= lt!1628639 lt!1628640)))

(declare-fun lt!1628641 () Unit!82527)

(declare-fun e!2757897 () Unit!82527)

(assert (=> d!1343301 (= lt!1628641 e!2757897)))

(declare-fun c!753981 () Bool)

(assert (=> d!1343301 (= c!753981 lt!1628640)))

(assert (=> d!1343301 (= lt!1628640 (containsKey!1152 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717))))

(assert (=> d!1343301 (= (contains!12145 (extractMap!826 (tail!7303 (toList!3517 lm!1616))) key!3717) lt!1628639)))

(declare-fun b!4429214 () Bool)

(assert (=> b!4429214 (= e!2757898 (not (contains!12151 (keys!16954 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717)))))

(declare-fun b!4429215 () Bool)

(declare-fun e!2757899 () List!49750)

(assert (=> b!4429215 (= e!2757899 (keys!16954 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))))))

(declare-fun bm!308239 () Bool)

(declare-fun call!308244 () Bool)

(assert (=> bm!308239 (= call!308244 (contains!12151 e!2757899 key!3717))))

(declare-fun c!753980 () Bool)

(assert (=> bm!308239 (= c!753980 c!753981)))

(declare-fun b!4429216 () Bool)

(assert (=> b!4429216 (= e!2757897 e!2757901)))

(declare-fun c!753982 () Bool)

(assert (=> b!4429216 (= c!753982 call!308244)))

(declare-fun b!4429217 () Bool)

(assert (=> b!4429217 (= e!2757896 e!2757900)))

(declare-fun res!1831729 () Bool)

(assert (=> b!4429217 (=> (not res!1831729) (not e!2757900))))

(assert (=> b!4429217 (= res!1831729 (isDefined!8038 (getValueByKey!732 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717)))))

(declare-fun b!4429218 () Bool)

(declare-fun lt!1628637 () Unit!82527)

(assert (=> b!4429218 (= e!2757897 lt!1628637)))

(declare-fun lt!1628638 () Unit!82527)

(assert (=> b!4429218 (= lt!1628638 (lemmaContainsKeyImpliesGetValueByKeyDefined!641 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717))))

(assert (=> b!4429218 (isDefined!8038 (getValueByKey!732 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717))))

(declare-fun lt!1628635 () Unit!82527)

(assert (=> b!4429218 (= lt!1628635 lt!1628638)))

(assert (=> b!4429218 (= lt!1628637 (lemmaInListThenGetKeysListContains!259 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616)))) key!3717))))

(assert (=> b!4429218 call!308244))

(declare-fun b!4429219 () Bool)

(assert (=> b!4429219 (= e!2757899 (getKeysList!262 (toList!3518 (extractMap!826 (tail!7303 (toList!3517 lm!1616))))))))

(assert (= (and d!1343301 c!753981) b!4429218))

(assert (= (and d!1343301 (not c!753981)) b!4429216))

(assert (= (and b!4429216 c!753982) b!4429212))

(assert (= (and b!4429216 (not c!753982)) b!4429213))

(assert (= (or b!4429218 b!4429216) bm!308239))

(assert (= (and bm!308239 c!753980) b!4429219))

(assert (= (and bm!308239 (not c!753980)) b!4429215))

(assert (= (and d!1343301 res!1831727) b!4429214))

(assert (= (and d!1343301 (not res!1831728)) b!4429217))

(assert (= (and b!4429217 res!1831729) b!4429211))

(assert (=> b!4429211 m!5112745))

(declare-fun m!5113351 () Bool)

(assert (=> b!4429211 m!5113351))

(assert (=> b!4429211 m!5113351))

(declare-fun m!5113353 () Bool)

(assert (=> b!4429211 m!5113353))

(assert (=> b!4429215 m!5112745))

(assert (=> b!4429215 m!5113351))

(declare-fun m!5113355 () Bool)

(assert (=> b!4429218 m!5113355))

(declare-fun m!5113357 () Bool)

(assert (=> b!4429218 m!5113357))

(assert (=> b!4429218 m!5113357))

(declare-fun m!5113359 () Bool)

(assert (=> b!4429218 m!5113359))

(declare-fun m!5113361 () Bool)

(assert (=> b!4429218 m!5113361))

(assert (=> b!4429217 m!5113357))

(assert (=> b!4429217 m!5113357))

(assert (=> b!4429217 m!5113359))

(declare-fun m!5113363 () Bool)

(assert (=> b!4429219 m!5113363))

(declare-fun m!5113365 () Bool)

(assert (=> b!4429212 m!5113365))

(declare-fun m!5113367 () Bool)

(assert (=> b!4429212 m!5113367))

(assert (=> d!1343301 m!5113365))

(declare-fun m!5113369 () Bool)

(assert (=> bm!308239 m!5113369))

(assert (=> b!4429214 m!5112745))

(assert (=> b!4429214 m!5113351))

(assert (=> b!4429214 m!5113351))

(assert (=> b!4429214 m!5113353))

(assert (=> b!4428945 d!1343301))

(declare-fun bs!759670 () Bool)

(declare-fun d!1343303 () Bool)

(assert (= bs!759670 (and d!1343303 d!1343277)))

(declare-fun lambda!154893 () Int)

(assert (=> bs!759670 (= lambda!154893 lambda!154884)))

(declare-fun bs!759671 () Bool)

(assert (= bs!759671 (and d!1343303 d!1343213)))

(assert (=> bs!759671 (= lambda!154893 lambda!154868)))

(declare-fun bs!759672 () Bool)

(assert (= bs!759672 (and d!1343303 d!1343231)))

(assert (=> bs!759672 (= lambda!154893 lambda!154874)))

(declare-fun bs!759673 () Bool)

(assert (= bs!759673 (and d!1343303 d!1343293)))

(assert (=> bs!759673 (= lambda!154893 lambda!154891)))

(declare-fun bs!759674 () Bool)

(assert (= bs!759674 (and d!1343303 d!1343291)))

(assert (=> bs!759674 (= lambda!154893 lambda!154888)))

(declare-fun bs!759675 () Bool)

(assert (= bs!759675 (and d!1343303 d!1343297)))

(assert (=> bs!759675 (= lambda!154893 lambda!154892)))

(declare-fun bs!759676 () Bool)

(assert (= bs!759676 (and d!1343303 start!432384)))

(assert (=> bs!759676 (= lambda!154893 lambda!154782)))

(declare-fun lt!1628643 () ListMap!2761)

(assert (=> d!1343303 (invariantList!815 (toList!3518 lt!1628643))))

(declare-fun e!2757902 () ListMap!2761)

(assert (=> d!1343303 (= lt!1628643 e!2757902)))

(declare-fun c!753983 () Bool)

(assert (=> d!1343303 (= c!753983 ((_ is Cons!49624) (toList!3517 lt!1628265)))))

(assert (=> d!1343303 (forall!9590 (toList!3517 lt!1628265) lambda!154893)))

(assert (=> d!1343303 (= (extractMap!826 (toList!3517 lt!1628265)) lt!1628643)))

(declare-fun b!4429220 () Bool)

(assert (=> b!4429220 (= e!2757902 (addToMapMapFromBucket!402 (_2!28014 (h!55319 (toList!3517 lt!1628265))) (extractMap!826 (t!356686 (toList!3517 lt!1628265)))))))

(declare-fun b!4429221 () Bool)

(assert (=> b!4429221 (= e!2757902 (ListMap!2762 Nil!49623))))

(assert (= (and d!1343303 c!753983) b!4429220))

(assert (= (and d!1343303 (not c!753983)) b!4429221))

(declare-fun m!5113371 () Bool)

(assert (=> d!1343303 m!5113371))

(declare-fun m!5113373 () Bool)

(assert (=> d!1343303 m!5113373))

(declare-fun m!5113375 () Bool)

(assert (=> b!4429220 m!5113375))

(assert (=> b!4429220 m!5113375))

(declare-fun m!5113377 () Bool)

(assert (=> b!4429220 m!5113377))

(assert (=> b!4428945 d!1343303))

(declare-fun d!1343305 () Bool)

(declare-fun head!9244 (List!49748) tuple2!49440)

(assert (=> d!1343305 (= (head!9242 lm!1616) (head!9244 (toList!3517 lm!1616)))))

(declare-fun bs!759677 () Bool)

(assert (= bs!759677 d!1343305))

(declare-fun m!5113379 () Bool)

(assert (=> bs!759677 m!5113379))

(assert (=> b!4428945 d!1343305))

(declare-fun bs!759678 () Bool)

(declare-fun d!1343307 () Bool)

(assert (= bs!759678 (and d!1343307 d!1343277)))

(declare-fun lambda!154896 () Int)

(assert (=> bs!759678 (not (= lambda!154896 lambda!154884))))

(declare-fun bs!759679 () Bool)

(assert (= bs!759679 (and d!1343307 d!1343213)))

(assert (=> bs!759679 (not (= lambda!154896 lambda!154868))))

(declare-fun bs!759680 () Bool)

(assert (= bs!759680 (and d!1343307 d!1343231)))

(assert (=> bs!759680 (not (= lambda!154896 lambda!154874))))

(declare-fun bs!759681 () Bool)

(assert (= bs!759681 (and d!1343307 d!1343293)))

(assert (=> bs!759681 (not (= lambda!154896 lambda!154891))))

(declare-fun bs!759682 () Bool)

(assert (= bs!759682 (and d!1343307 d!1343291)))

(assert (=> bs!759682 (not (= lambda!154896 lambda!154888))))

(declare-fun bs!759683 () Bool)

(assert (= bs!759683 (and d!1343307 d!1343303)))

(assert (=> bs!759683 (not (= lambda!154896 lambda!154893))))

(declare-fun bs!759684 () Bool)

(assert (= bs!759684 (and d!1343307 d!1343297)))

(assert (=> bs!759684 (not (= lambda!154896 lambda!154892))))

(declare-fun bs!759685 () Bool)

(assert (= bs!759685 (and d!1343307 start!432384)))

(assert (=> bs!759685 (not (= lambda!154896 lambda!154782))))

(assert (=> d!1343307 true))

(assert (=> d!1343307 (= (allKeysSameHashInMap!871 lm!1616 hashF!1220) (forall!9590 (toList!3517 lm!1616) lambda!154896))))

(declare-fun bs!759686 () Bool)

(assert (= bs!759686 d!1343307))

(declare-fun m!5113381 () Bool)

(assert (=> bs!759686 m!5113381))

(assert (=> b!4428935 d!1343307))

(declare-fun d!1343309 () Bool)

(declare-fun hash!2178 (Hashable!5159 K!10985) (_ BitVec 64))

(assert (=> d!1343309 (= (hash!2172 hashF!1220 key!3717) (hash!2178 hashF!1220 key!3717))))

(declare-fun bs!759687 () Bool)

(assert (= bs!759687 d!1343309))

(declare-fun m!5113383 () Bool)

(assert (=> bs!759687 m!5113383))

(assert (=> b!4428946 d!1343309))

(assert (=> b!4428947 d!1343209))

(declare-fun tp!1333400 () Bool)

(declare-fun b!4429228 () Bool)

(declare-fun e!2757905 () Bool)

(assert (=> b!4429228 (= e!2757905 (and tp_is_empty!26307 tp_is_empty!26305 tp!1333400))))

(assert (=> b!4428943 (= tp!1333388 e!2757905)))

(assert (= (and b!4428943 ((_ is Cons!49623) (t!356685 newBucket!194))) b!4429228))

(declare-fun b!4429233 () Bool)

(declare-fun e!2757908 () Bool)

(declare-fun tp!1333405 () Bool)

(declare-fun tp!1333406 () Bool)

(assert (=> b!4429233 (= e!2757908 (and tp!1333405 tp!1333406))))

(assert (=> b!4428936 (= tp!1333387 e!2757908)))

(assert (= (and b!4428936 ((_ is Cons!49624) (toList!3517 lm!1616))) b!4429233))

(declare-fun b_lambda!143547 () Bool)

(assert (= b_lambda!143523 (or start!432384 b_lambda!143547)))

(declare-fun bs!759688 () Bool)

(declare-fun d!1343311 () Bool)

(assert (= bs!759688 (and d!1343311 start!432384)))

(assert (=> bs!759688 (= (dynLambda!20858 lambda!154782 (h!55319 (toList!3517 lt!1628255))) (noDuplicateKeys!765 (_2!28014 (h!55319 (toList!3517 lt!1628255)))))))

(declare-fun m!5113385 () Bool)

(assert (=> bs!759688 m!5113385))

(assert (=> b!4428971 d!1343311))

(declare-fun b_lambda!143549 () Bool)

(assert (= b_lambda!143527 (or start!432384 b_lambda!143549)))

(declare-fun bs!759689 () Bool)

(declare-fun d!1343313 () Bool)

(assert (= bs!759689 (and d!1343313 start!432384)))

(assert (=> bs!759689 (= (dynLambda!20858 lambda!154782 (tuple2!49441 hash!366 newBucket!194)) (noDuplicateKeys!765 (_2!28014 (tuple2!49441 hash!366 newBucket!194))))))

(declare-fun m!5113387 () Bool)

(assert (=> bs!759689 m!5113387))

(assert (=> b!4429017 d!1343313))

(declare-fun b_lambda!143551 () Bool)

(assert (= b_lambda!143545 (or start!432384 b_lambda!143551)))

(declare-fun bs!759690 () Bool)

(declare-fun d!1343315 () Bool)

(assert (= bs!759690 (and d!1343315 start!432384)))

(assert (=> bs!759690 (= (dynLambda!20858 lambda!154782 (h!55319 (toList!3517 lt!1628248))) (noDuplicateKeys!765 (_2!28014 (h!55319 (toList!3517 lt!1628248)))))))

(declare-fun m!5113389 () Bool)

(assert (=> bs!759690 m!5113389))

(assert (=> b!4429150 d!1343315))

(declare-fun b_lambda!143553 () Bool)

(assert (= b_lambda!143531 (or start!432384 b_lambda!143553)))

(declare-fun bs!759691 () Bool)

(declare-fun d!1343317 () Bool)

(assert (= bs!759691 (and d!1343317 start!432384)))

(assert (=> bs!759691 (= (dynLambda!20858 lambda!154782 (h!55319 (toList!3517 lm!1616))) (noDuplicateKeys!765 (_2!28014 (h!55319 (toList!3517 lm!1616)))))))

(assert (=> bs!759691 m!5113011))

(assert (=> b!4429102 d!1343317))

(check-sat (not d!1343289) (not bm!308228) (not b!4429186) (not b!4429159) (not d!1343275) (not b!4429185) (not bs!759690) (not b!4429204) (not b!4429032) (not b!4429205) (not b!4429217) (not d!1343235) (not d!1343291) (not b!4429197) (not b!4429215) (not bm!308229) (not bs!759691) (not b!4429209) (not d!1343213) (not b_lambda!143547) (not d!1343309) (not d!1343237) (not bm!308227) (not d!1343297) (not b!4429219) (not d!1343285) (not d!1343157) (not d!1343283) (not b!4429158) tp_is_empty!26307 (not bs!759689) (not b!4429030) (not b_lambda!143551) (not d!1343229) (not d!1343255) (not b!4429089) (not b!4429125) (not d!1343303) (not b_lambda!143549) (not b!4429122) (not b!4429214) (not b!4429095) (not bm!308239) (not d!1343267) (not bs!759688) (not b!4429179) (not d!1343305) (not b!4429203) (not d!1343287) (not d!1343271) (not d!1343293) (not d!1343295) (not bm!308234) (not b!4429220) (not bm!308233) (not b!4429198) (not d!1343277) (not b!4429094) (not b!4429191) (not b!4429228) (not d!1343165) (not b!4429211) (not b!4429123) (not b!4428986) (not b!4429103) (not b!4428985) (not b!4429233) (not d!1343281) (not b!4429178) (not bm!308238) (not b!4429127) (not d!1343177) (not b!4429126) (not b!4429218) (not d!1343301) (not d!1343257) (not b!4429156) (not b!4429151) (not b!4429181) (not b!4429157) (not d!1343169) tp_is_empty!26305 (not b!4429120) (not b!4429093) (not b!4429182) (not b!4428972) (not b_lambda!143553) (not bm!308235) (not b!4429212) (not d!1343307) (not d!1343175) (not b!4429206) (not d!1343273) (not d!1343231) (not d!1343211) (not b!4429207) (not b!4429184))
(check-sat)
