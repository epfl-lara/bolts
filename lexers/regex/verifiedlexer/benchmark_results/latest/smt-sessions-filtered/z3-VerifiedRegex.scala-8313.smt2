; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431936 () Bool)

(assert start!431936)

(declare-fun b!4426651 () Bool)

(declare-fun res!1830350 () Bool)

(declare-fun e!2756263 () Bool)

(assert (=> b!4426651 (=> (not res!1830350) (not e!2756263))))

(declare-datatypes ((K!10970 0))(
  ( (K!10971 (val!17047 Int)) )
))
(declare-datatypes ((V!11216 0))(
  ( (V!11217 (val!17048 Int)) )
))
(declare-datatypes ((tuple2!49414 0))(
  ( (tuple2!49415 (_1!28001 K!10970) (_2!28001 V!11216)) )
))
(declare-datatypes ((List!49729 0))(
  ( (Nil!49605) (Cons!49605 (h!55294 tuple2!49414) (t!356667 List!49729)) )
))
(declare-fun newBucket!194 () List!49729)

(declare-fun noDuplicateKeys!759 (List!49729) Bool)

(assert (=> b!4426651 (= res!1830350 (noDuplicateKeys!759 newBucket!194))))

(declare-fun b!4426652 () Bool)

(declare-datatypes ((Unit!82123 0))(
  ( (Unit!82124) )
))
(declare-fun e!2756271 () Unit!82123)

(declare-fun Unit!82125 () Unit!82123)

(assert (=> b!4426652 (= e!2756271 Unit!82125)))

(declare-fun key!3717 () K!10970)

(declare-fun lt!1625973 () Unit!82123)

(declare-datatypes ((tuple2!49416 0))(
  ( (tuple2!49417 (_1!28002 (_ BitVec 64)) (_2!28002 List!49729)) )
))
(declare-datatypes ((List!49730 0))(
  ( (Nil!49606) (Cons!49606 (h!55295 tuple2!49416) (t!356668 List!49730)) )
))
(declare-datatypes ((ListLongMap!2155 0))(
  ( (ListLongMap!2156 (toList!3505 List!49730)) )
))
(declare-fun lm!1616 () ListLongMap!2155)

(declare-datatypes ((Hashable!5153 0))(
  ( (HashableExt!5152 (__x!30856 Int)) )
))
(declare-fun hashF!1220 () Hashable!5153)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!46 (ListLongMap!2155 K!10970 Hashable!5153) Unit!82123)

(assert (=> b!4426652 (= lt!1625973 (lemmaExtractTailMapContainsThenExtractMapDoes!46 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4426652 false))

(declare-fun newValue!93 () V!11216)

(declare-fun lt!1625982 () Bool)

(declare-fun b!4426653 () Bool)

(declare-fun e!2756270 () Bool)

(assert (=> b!4426653 (= e!2756270 (and (not lt!1625982) (= newBucket!194 (Cons!49605 (tuple2!49415 key!3717 newValue!93) Nil!49605))))))

(declare-fun b!4426654 () Bool)

(declare-fun res!1830342 () Bool)

(declare-fun e!2756268 () Bool)

(assert (=> b!4426654 (=> (not res!1830342) (not e!2756268))))

(declare-fun allKeysSameHashInMap!865 (ListLongMap!2155 Hashable!5153) Bool)

(assert (=> b!4426654 (= res!1830342 (allKeysSameHashInMap!865 lm!1616 hashF!1220))))

(declare-fun b!4426655 () Bool)

(declare-fun e!2756261 () Bool)

(assert (=> b!4426655 (= e!2756268 e!2756261)))

(declare-fun res!1830340 () Bool)

(assert (=> b!4426655 (=> (not res!1830340) (not e!2756261))))

(declare-datatypes ((ListMap!2749 0))(
  ( (ListMap!2750 (toList!3506 List!49729)) )
))
(declare-fun lt!1625981 () ListMap!2749)

(declare-fun contains!12114 (ListMap!2749 K!10970) Bool)

(assert (=> b!4426655 (= res!1830340 (not (contains!12114 lt!1625981 key!3717)))))

(declare-fun extractMap!820 (List!49730) ListMap!2749)

(assert (=> b!4426655 (= lt!1625981 (extractMap!820 (toList!3505 lm!1616)))))

(declare-fun b!4426656 () Bool)

(declare-fun e!2756272 () Bool)

(declare-fun e!2756266 () Bool)

(assert (=> b!4426656 (= e!2756272 e!2756266)))

(declare-fun res!1830341 () Bool)

(assert (=> b!4426656 (=> res!1830341 e!2756266)))

(declare-fun containsKey!1130 (List!49729 K!10970) Bool)

(assert (=> b!4426656 (= res!1830341 (containsKey!1130 (_2!28002 (h!55295 (toList!3505 lm!1616))) key!3717))))

(declare-fun apply!11611 (ListLongMap!2155 (_ BitVec 64)) List!49729)

(assert (=> b!4426656 (not (containsKey!1130 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))) key!3717))))

(declare-fun lt!1625971 () Unit!82123)

(declare-fun lemmaNotSameHashThenCannotContainKey!138 (ListLongMap!2155 K!10970 (_ BitVec 64) Hashable!5153) Unit!82123)

(assert (=> b!4426656 (= lt!1625971 (lemmaNotSameHashThenCannotContainKey!138 lm!1616 key!3717 (_1!28002 (h!55295 (toList!3505 lm!1616))) hashF!1220))))

(declare-fun b!4426658 () Bool)

(declare-fun e!2756265 () Bool)

(assert (=> b!4426658 (= e!2756263 (not e!2756265))))

(declare-fun res!1830345 () Bool)

(assert (=> b!4426658 (=> res!1830345 e!2756265)))

(declare-fun lt!1625976 () ListLongMap!2155)

(declare-fun lambda!154244 () Int)

(declare-fun forall!9576 (List!49730 Int) Bool)

(assert (=> b!4426658 (= res!1830345 (not (forall!9576 (toList!3505 lt!1625976) lambda!154244)))))

(assert (=> b!4426658 (forall!9576 (toList!3505 lt!1625976) lambda!154244)))

(declare-fun lt!1625978 () tuple2!49416)

(declare-fun +!1102 (ListLongMap!2155 tuple2!49416) ListLongMap!2155)

(assert (=> b!4426658 (= lt!1625976 (+!1102 lm!1616 lt!1625978))))

(declare-fun hash!366 () (_ BitVec 64))

(assert (=> b!4426658 (= lt!1625978 (tuple2!49417 hash!366 newBucket!194))))

(declare-fun lt!1625983 () Unit!82123)

(declare-fun addValidProp!403 (ListLongMap!2155 Int (_ BitVec 64) List!49729) Unit!82123)

(assert (=> b!4426658 (= lt!1625983 (addValidProp!403 lm!1616 lambda!154244 hash!366 newBucket!194))))

(declare-fun b!4426659 () Bool)

(declare-fun res!1830348 () Bool)

(assert (=> b!4426659 (=> (not res!1830348) (not e!2756268))))

(declare-fun allKeysSameHash!719 (List!49729 (_ BitVec 64) Hashable!5153) Bool)

(assert (=> b!4426659 (= res!1830348 (allKeysSameHash!719 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4426660 () Bool)

(declare-fun Unit!82126 () Unit!82123)

(assert (=> b!4426660 (= e!2756271 Unit!82126)))

(declare-fun e!2756267 () Bool)

(declare-fun b!4426661 () Bool)

(assert (=> b!4426661 (= e!2756267 (= newBucket!194 (Cons!49605 (tuple2!49415 key!3717 newValue!93) (apply!11611 lm!1616 hash!366))))))

(declare-fun b!4426662 () Bool)

(declare-fun res!1830339 () Bool)

(assert (=> b!4426662 (=> res!1830339 e!2756265)))

(get-info :version)

(assert (=> b!4426662 (= res!1830339 (or (and ((_ is Cons!49606) (toList!3505 lm!1616)) (= (_1!28002 (h!55295 (toList!3505 lm!1616))) hash!366)) (not ((_ is Cons!49606) (toList!3505 lm!1616))) (= (_1!28002 (h!55295 (toList!3505 lm!1616))) hash!366)))))

(declare-fun b!4426663 () Bool)

(assert (=> b!4426663 (= e!2756261 e!2756263)))

(declare-fun res!1830337 () Bool)

(assert (=> b!4426663 (=> (not res!1830337) (not e!2756263))))

(assert (=> b!4426663 (= res!1830337 e!2756270)))

(declare-fun res!1830351 () Bool)

(assert (=> b!4426663 (=> res!1830351 e!2756270)))

(assert (=> b!4426663 (= res!1830351 e!2756267)))

(declare-fun res!1830346 () Bool)

(assert (=> b!4426663 (=> (not res!1830346) (not e!2756267))))

(assert (=> b!4426663 (= res!1830346 lt!1625982)))

(declare-fun contains!12115 (ListLongMap!2155 (_ BitVec 64)) Bool)

(assert (=> b!4426663 (= lt!1625982 (contains!12115 lm!1616 hash!366))))

(declare-fun tp!1333289 () Bool)

(declare-fun e!2756264 () Bool)

(declare-fun tp_is_empty!26283 () Bool)

(declare-fun tp_is_empty!26281 () Bool)

(declare-fun b!4426664 () Bool)

(assert (=> b!4426664 (= e!2756264 (and tp_is_empty!26283 tp_is_empty!26281 tp!1333289))))

(declare-fun b!4426665 () Bool)

(declare-fun e!2756262 () Bool)

(assert (=> b!4426665 (= e!2756265 e!2756262)))

(declare-fun res!1830344 () Bool)

(assert (=> b!4426665 (=> res!1830344 e!2756262)))

(declare-fun head!9230 (ListLongMap!2155) tuple2!49416)

(assert (=> b!4426665 (= res!1830344 (= (head!9230 lm!1616) lt!1625978))))

(declare-fun lt!1625977 () ListMap!2749)

(declare-fun lt!1625979 () ListMap!2749)

(declare-fun eq!417 (ListMap!2749 ListMap!2749) Bool)

(assert (=> b!4426665 (eq!417 lt!1625977 lt!1625979)))

(declare-fun lt!1625969 () ListMap!2749)

(declare-fun lt!1625974 () tuple2!49414)

(declare-fun +!1103 (ListMap!2749 tuple2!49414) ListMap!2749)

(assert (=> b!4426665 (= lt!1625979 (+!1103 lt!1625969 lt!1625974))))

(assert (=> b!4426665 (= lt!1625974 (tuple2!49415 key!3717 newValue!93))))

(declare-fun lt!1625987 () ListLongMap!2155)

(assert (=> b!4426665 (= lt!1625969 (extractMap!820 (toList!3505 lt!1625987)))))

(assert (=> b!4426665 (= lt!1625977 (extractMap!820 (toList!3505 (+!1102 lt!1625987 lt!1625978))))))

(declare-fun lt!1625980 () Unit!82123)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!133 (ListLongMap!2155 (_ BitVec 64) List!49729 K!10970 V!11216 Hashable!5153) Unit!82123)

(assert (=> b!4426665 (= lt!1625980 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!133 lt!1625987 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7290 (ListLongMap!2155) ListLongMap!2155)

(assert (=> b!4426665 (= lt!1625987 (tail!7290 lm!1616))))

(declare-fun lt!1625972 () Unit!82123)

(assert (=> b!4426665 (= lt!1625972 e!2756271)))

(declare-fun c!753493 () Bool)

(declare-fun tail!7291 (List!49730) List!49730)

(assert (=> b!4426665 (= c!753493 (contains!12114 (extractMap!820 (tail!7291 (toList!3505 lm!1616))) key!3717))))

(declare-fun b!4426657 () Bool)

(declare-fun isEmpty!28349 (ListLongMap!2155) Bool)

(assert (=> b!4426657 (= e!2756266 (not (isEmpty!28349 lm!1616)))))

(declare-fun lt!1625984 () ListMap!2749)

(assert (=> b!4426657 (eq!417 (+!1103 lt!1625981 lt!1625974) lt!1625984)))

(declare-fun lt!1625970 () Unit!82123)

(declare-fun lt!1625985 () ListMap!2749)

(declare-fun lemmaAddToEqMapsPreservesEq!28 (ListMap!2749 ListMap!2749 K!10970 V!11216) Unit!82123)

(assert (=> b!4426657 (= lt!1625970 (lemmaAddToEqMapsPreservesEq!28 lt!1625981 lt!1625985 key!3717 newValue!93))))

(declare-fun lt!1625975 () ListMap!2749)

(assert (=> b!4426657 (eq!417 lt!1625975 lt!1625984)))

(assert (=> b!4426657 (= lt!1625984 (+!1103 lt!1625985 lt!1625974))))

(declare-fun addToMapMapFromBucket!396 (List!49729 ListMap!2749) ListMap!2749)

(assert (=> b!4426657 (= lt!1625975 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625979))))

(declare-fun lt!1625986 () Unit!82123)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!188 (ListMap!2749 K!10970 V!11216 List!49729) Unit!82123)

(assert (=> b!4426657 (= lt!1625986 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!188 lt!1625969 key!3717 newValue!93 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(declare-fun res!1830338 () Bool)

(assert (=> start!431936 (=> (not res!1830338) (not e!2756268))))

(assert (=> start!431936 (= res!1830338 (forall!9576 (toList!3505 lm!1616) lambda!154244))))

(assert (=> start!431936 e!2756268))

(assert (=> start!431936 tp_is_empty!26281))

(assert (=> start!431936 tp_is_empty!26283))

(assert (=> start!431936 e!2756264))

(declare-fun e!2756269 () Bool)

(declare-fun inv!65156 (ListLongMap!2155) Bool)

(assert (=> start!431936 (and (inv!65156 lm!1616) e!2756269)))

(assert (=> start!431936 true))

(declare-fun b!4426666 () Bool)

(declare-fun tp!1333290 () Bool)

(assert (=> b!4426666 (= e!2756269 tp!1333290)))

(declare-fun b!4426667 () Bool)

(declare-fun res!1830349 () Bool)

(assert (=> b!4426667 (=> (not res!1830349) (not e!2756263))))

(assert (=> b!4426667 (= res!1830349 (forall!9576 (toList!3505 lm!1616) lambda!154244))))

(declare-fun b!4426668 () Bool)

(declare-fun res!1830343 () Bool)

(assert (=> b!4426668 (=> (not res!1830343) (not e!2756268))))

(declare-fun hash!2144 (Hashable!5153 K!10970) (_ BitVec 64))

(assert (=> b!4426668 (= res!1830343 (= (hash!2144 hashF!1220 key!3717) hash!366))))

(declare-fun b!4426669 () Bool)

(assert (=> b!4426669 (= e!2756262 e!2756272)))

(declare-fun res!1830347 () Bool)

(assert (=> b!4426669 (=> res!1830347 e!2756272)))

(assert (=> b!4426669 (= res!1830347 (not (eq!417 lt!1625981 lt!1625985)))))

(assert (=> b!4426669 (= lt!1625985 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969))))

(assert (= (and start!431936 res!1830338) b!4426654))

(assert (= (and b!4426654 res!1830342) b!4426668))

(assert (= (and b!4426668 res!1830343) b!4426659))

(assert (= (and b!4426659 res!1830348) b!4426655))

(assert (= (and b!4426655 res!1830340) b!4426663))

(assert (= (and b!4426663 res!1830346) b!4426661))

(assert (= (and b!4426663 (not res!1830351)) b!4426653))

(assert (= (and b!4426663 res!1830337) b!4426651))

(assert (= (and b!4426651 res!1830350) b!4426667))

(assert (= (and b!4426667 res!1830349) b!4426658))

(assert (= (and b!4426658 (not res!1830345)) b!4426662))

(assert (= (and b!4426662 (not res!1830339)) b!4426665))

(assert (= (and b!4426665 c!753493) b!4426652))

(assert (= (and b!4426665 (not c!753493)) b!4426660))

(assert (= (and b!4426665 (not res!1830344)) b!4426669))

(assert (= (and b!4426669 (not res!1830347)) b!4426656))

(assert (= (and b!4426656 (not res!1830341)) b!4426657))

(assert (= (and start!431936 ((_ is Cons!49605) newBucket!194)) b!4426664))

(assert (= start!431936 b!4426666))

(declare-fun m!5108027 () Bool)

(assert (=> b!4426667 m!5108027))

(assert (=> start!431936 m!5108027))

(declare-fun m!5108029 () Bool)

(assert (=> start!431936 m!5108029))

(declare-fun m!5108031 () Bool)

(assert (=> b!4426654 m!5108031))

(declare-fun m!5108033 () Bool)

(assert (=> b!4426655 m!5108033))

(declare-fun m!5108035 () Bool)

(assert (=> b!4426655 m!5108035))

(declare-fun m!5108037 () Bool)

(assert (=> b!4426658 m!5108037))

(assert (=> b!4426658 m!5108037))

(declare-fun m!5108039 () Bool)

(assert (=> b!4426658 m!5108039))

(declare-fun m!5108041 () Bool)

(assert (=> b!4426658 m!5108041))

(declare-fun m!5108043 () Bool)

(assert (=> b!4426661 m!5108043))

(declare-fun m!5108045 () Bool)

(assert (=> b!4426663 m!5108045))

(declare-fun m!5108047 () Bool)

(assert (=> b!4426652 m!5108047))

(declare-fun m!5108049 () Bool)

(assert (=> b!4426669 m!5108049))

(declare-fun m!5108051 () Bool)

(assert (=> b!4426669 m!5108051))

(declare-fun m!5108053 () Bool)

(assert (=> b!4426659 m!5108053))

(declare-fun m!5108055 () Bool)

(assert (=> b!4426657 m!5108055))

(assert (=> b!4426657 m!5108055))

(declare-fun m!5108057 () Bool)

(assert (=> b!4426657 m!5108057))

(declare-fun m!5108059 () Bool)

(assert (=> b!4426657 m!5108059))

(declare-fun m!5108061 () Bool)

(assert (=> b!4426657 m!5108061))

(declare-fun m!5108063 () Bool)

(assert (=> b!4426657 m!5108063))

(declare-fun m!5108065 () Bool)

(assert (=> b!4426657 m!5108065))

(declare-fun m!5108067 () Bool)

(assert (=> b!4426657 m!5108067))

(declare-fun m!5108069 () Bool)

(assert (=> b!4426657 m!5108069))

(declare-fun m!5108071 () Bool)

(assert (=> b!4426668 m!5108071))

(declare-fun m!5108073 () Bool)

(assert (=> b!4426651 m!5108073))

(declare-fun m!5108075 () Bool)

(assert (=> b!4426665 m!5108075))

(declare-fun m!5108077 () Bool)

(assert (=> b!4426665 m!5108077))

(declare-fun m!5108079 () Bool)

(assert (=> b!4426665 m!5108079))

(declare-fun m!5108081 () Bool)

(assert (=> b!4426665 m!5108081))

(assert (=> b!4426665 m!5108075))

(assert (=> b!4426665 m!5108077))

(declare-fun m!5108083 () Bool)

(assert (=> b!4426665 m!5108083))

(declare-fun m!5108085 () Bool)

(assert (=> b!4426665 m!5108085))

(declare-fun m!5108087 () Bool)

(assert (=> b!4426665 m!5108087))

(declare-fun m!5108089 () Bool)

(assert (=> b!4426665 m!5108089))

(declare-fun m!5108091 () Bool)

(assert (=> b!4426665 m!5108091))

(declare-fun m!5108093 () Bool)

(assert (=> b!4426665 m!5108093))

(declare-fun m!5108095 () Bool)

(assert (=> b!4426665 m!5108095))

(declare-fun m!5108097 () Bool)

(assert (=> b!4426656 m!5108097))

(declare-fun m!5108099 () Bool)

(assert (=> b!4426656 m!5108099))

(assert (=> b!4426656 m!5108099))

(declare-fun m!5108101 () Bool)

(assert (=> b!4426656 m!5108101))

(declare-fun m!5108103 () Bool)

(assert (=> b!4426656 m!5108103))

(check-sat (not b!4426664) (not b!4426668) (not b!4426667) (not b!4426669) (not b!4426663) (not b!4426665) (not b!4426651) (not b!4426659) (not b!4426654) (not start!431936) (not b!4426655) tp_is_empty!26281 (not b!4426661) (not b!4426657) (not b!4426656) (not b!4426658) (not b!4426652) (not b!4426666) tp_is_empty!26283)
(check-sat)
(get-model)

(declare-fun d!1341932 () Bool)

(declare-fun hash!2149 (Hashable!5153 K!10970) (_ BitVec 64))

(assert (=> d!1341932 (= (hash!2144 hashF!1220 key!3717) (hash!2149 hashF!1220 key!3717))))

(declare-fun bs!757828 () Bool)

(assert (= bs!757828 d!1341932))

(declare-fun m!5108105 () Bool)

(assert (=> bs!757828 m!5108105))

(assert (=> b!4426668 d!1341932))

(declare-fun d!1341934 () Bool)

(assert (=> d!1341934 (eq!417 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (+!1103 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969) (tuple2!49415 key!3717 newValue!93)))))

(declare-fun lt!1625990 () Unit!82123)

(declare-fun choose!27965 (ListMap!2749 K!10970 V!11216 List!49729) Unit!82123)

(assert (=> d!1341934 (= lt!1625990 (choose!27965 lt!1625969 key!3717 newValue!93 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1341934 (not (containsKey!1130 (_2!28002 (h!55295 (toList!3505 lm!1616))) key!3717))))

(assert (=> d!1341934 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!188 lt!1625969 key!3717 newValue!93 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lt!1625990)))

(declare-fun bs!757829 () Bool)

(assert (= bs!757829 d!1341934))

(assert (=> bs!757829 m!5108051))

(declare-fun m!5108107 () Bool)

(assert (=> bs!757829 m!5108107))

(declare-fun m!5108109 () Bool)

(assert (=> bs!757829 m!5108109))

(declare-fun m!5108111 () Bool)

(assert (=> bs!757829 m!5108111))

(assert (=> bs!757829 m!5108107))

(declare-fun m!5108113 () Bool)

(assert (=> bs!757829 m!5108113))

(assert (=> bs!757829 m!5108051))

(declare-fun m!5108115 () Bool)

(assert (=> bs!757829 m!5108115))

(assert (=> bs!757829 m!5108111))

(assert (=> bs!757829 m!5108115))

(assert (=> bs!757829 m!5108097))

(assert (=> b!4426657 d!1341934))

(declare-fun d!1341938 () Bool)

(declare-fun e!2756292 () Bool)

(assert (=> d!1341938 e!2756292))

(declare-fun res!1830373 () Bool)

(assert (=> d!1341938 (=> (not res!1830373) (not e!2756292))))

(declare-fun lt!1626024 () ListMap!2749)

(assert (=> d!1341938 (= res!1830373 (contains!12114 lt!1626024 (_1!28001 lt!1625974)))))

(declare-fun lt!1626026 () List!49729)

(assert (=> d!1341938 (= lt!1626024 (ListMap!2750 lt!1626026))))

(declare-fun lt!1626025 () Unit!82123)

(declare-fun lt!1626023 () Unit!82123)

(assert (=> d!1341938 (= lt!1626025 lt!1626023)))

(declare-datatypes ((Option!10733 0))(
  ( (None!10732) (Some!10732 (v!43920 V!11216)) )
))
(declare-fun getValueByKey!719 (List!49729 K!10970) Option!10733)

(assert (=> d!1341938 (= (getValueByKey!719 lt!1626026 (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974)))))

(declare-fun lemmaContainsTupThenGetReturnValue!454 (List!49729 K!10970 V!11216) Unit!82123)

(assert (=> d!1341938 (= lt!1626023 (lemmaContainsTupThenGetReturnValue!454 lt!1626026 (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun insertNoDuplicatedKeys!199 (List!49729 K!10970 V!11216) List!49729)

(assert (=> d!1341938 (= lt!1626026 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625985) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(assert (=> d!1341938 (= (+!1103 lt!1625985 lt!1625974) lt!1626024)))

(declare-fun b!4426699 () Bool)

(declare-fun res!1830374 () Bool)

(assert (=> b!4426699 (=> (not res!1830374) (not e!2756292))))

(assert (=> b!4426699 (= res!1830374 (= (getValueByKey!719 (toList!3506 lt!1626024) (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974))))))

(declare-fun b!4426700 () Bool)

(declare-fun contains!12118 (List!49729 tuple2!49414) Bool)

(assert (=> b!4426700 (= e!2756292 (contains!12118 (toList!3506 lt!1626024) lt!1625974))))

(assert (= (and d!1341938 res!1830373) b!4426699))

(assert (= (and b!4426699 res!1830374) b!4426700))

(declare-fun m!5108149 () Bool)

(assert (=> d!1341938 m!5108149))

(declare-fun m!5108151 () Bool)

(assert (=> d!1341938 m!5108151))

(declare-fun m!5108153 () Bool)

(assert (=> d!1341938 m!5108153))

(declare-fun m!5108155 () Bool)

(assert (=> d!1341938 m!5108155))

(declare-fun m!5108157 () Bool)

(assert (=> b!4426699 m!5108157))

(declare-fun m!5108159 () Bool)

(assert (=> b!4426700 m!5108159))

(assert (=> b!4426657 d!1341938))

(declare-fun d!1341952 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7962 (List!49729) (InoxSet tuple2!49414))

(assert (=> d!1341952 (= (eq!417 (+!1103 lt!1625981 lt!1625974) lt!1625984) (= (content!7962 (toList!3506 (+!1103 lt!1625981 lt!1625974))) (content!7962 (toList!3506 lt!1625984))))))

(declare-fun bs!757833 () Bool)

(assert (= bs!757833 d!1341952))

(declare-fun m!5108169 () Bool)

(assert (=> bs!757833 m!5108169))

(declare-fun m!5108171 () Bool)

(assert (=> bs!757833 m!5108171))

(assert (=> b!4426657 d!1341952))

(declare-fun d!1341956 () Bool)

(assert (=> d!1341956 (= (eq!417 lt!1625975 lt!1625984) (= (content!7962 (toList!3506 lt!1625975)) (content!7962 (toList!3506 lt!1625984))))))

(declare-fun bs!757834 () Bool)

(assert (= bs!757834 d!1341956))

(declare-fun m!5108173 () Bool)

(assert (=> bs!757834 m!5108173))

(assert (=> bs!757834 m!5108171))

(assert (=> b!4426657 d!1341956))

(declare-fun d!1341958 () Bool)

(declare-fun e!2756296 () Bool)

(assert (=> d!1341958 e!2756296))

(declare-fun res!1830378 () Bool)

(assert (=> d!1341958 (=> (not res!1830378) (not e!2756296))))

(declare-fun lt!1626031 () ListMap!2749)

(assert (=> d!1341958 (= res!1830378 (contains!12114 lt!1626031 (_1!28001 lt!1625974)))))

(declare-fun lt!1626033 () List!49729)

(assert (=> d!1341958 (= lt!1626031 (ListMap!2750 lt!1626033))))

(declare-fun lt!1626032 () Unit!82123)

(declare-fun lt!1626030 () Unit!82123)

(assert (=> d!1341958 (= lt!1626032 lt!1626030)))

(assert (=> d!1341958 (= (getValueByKey!719 lt!1626033 (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974)))))

(assert (=> d!1341958 (= lt!1626030 (lemmaContainsTupThenGetReturnValue!454 lt!1626033 (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(assert (=> d!1341958 (= lt!1626033 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625981) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(assert (=> d!1341958 (= (+!1103 lt!1625981 lt!1625974) lt!1626031)))

(declare-fun b!4426705 () Bool)

(declare-fun res!1830379 () Bool)

(assert (=> b!4426705 (=> (not res!1830379) (not e!2756296))))

(assert (=> b!4426705 (= res!1830379 (= (getValueByKey!719 (toList!3506 lt!1626031) (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974))))))

(declare-fun b!4426706 () Bool)

(assert (=> b!4426706 (= e!2756296 (contains!12118 (toList!3506 lt!1626031) lt!1625974))))

(assert (= (and d!1341958 res!1830378) b!4426705))

(assert (= (and b!4426705 res!1830379) b!4426706))

(declare-fun m!5108175 () Bool)

(assert (=> d!1341958 m!5108175))

(declare-fun m!5108177 () Bool)

(assert (=> d!1341958 m!5108177))

(declare-fun m!5108179 () Bool)

(assert (=> d!1341958 m!5108179))

(declare-fun m!5108181 () Bool)

(assert (=> d!1341958 m!5108181))

(declare-fun m!5108183 () Bool)

(assert (=> b!4426705 m!5108183))

(declare-fun m!5108185 () Bool)

(assert (=> b!4426706 m!5108185))

(assert (=> b!4426657 d!1341958))

(declare-fun b!4426751 () Bool)

(assert (=> b!4426751 true))

(declare-fun bs!757848 () Bool)

(declare-fun b!4426752 () Bool)

(assert (= bs!757848 (and b!4426752 b!4426751)))

(declare-fun lambda!154312 () Int)

(declare-fun lambda!154311 () Int)

(assert (=> bs!757848 (= lambda!154312 lambda!154311)))

(assert (=> b!4426752 true))

(declare-fun lambda!154313 () Int)

(declare-fun lt!1626164 () ListMap!2749)

(assert (=> bs!757848 (= (= lt!1626164 lt!1625979) (= lambda!154313 lambda!154311))))

(assert (=> b!4426752 (= (= lt!1626164 lt!1625979) (= lambda!154313 lambda!154312))))

(assert (=> b!4426752 true))

(declare-fun bs!757849 () Bool)

(declare-fun d!1341960 () Bool)

(assert (= bs!757849 (and d!1341960 b!4426751)))

(declare-fun lt!1626165 () ListMap!2749)

(declare-fun lambda!154314 () Int)

(assert (=> bs!757849 (= (= lt!1626165 lt!1625979) (= lambda!154314 lambda!154311))))

(declare-fun bs!757850 () Bool)

(assert (= bs!757850 (and d!1341960 b!4426752)))

(assert (=> bs!757850 (= (= lt!1626165 lt!1625979) (= lambda!154314 lambda!154312))))

(assert (=> bs!757850 (= (= lt!1626165 lt!1626164) (= lambda!154314 lambda!154313))))

(assert (=> d!1341960 true))

(declare-fun e!2756325 () Bool)

(assert (=> d!1341960 e!2756325))

(declare-fun res!1830411 () Bool)

(assert (=> d!1341960 (=> (not res!1830411) (not e!2756325))))

(declare-fun forall!9578 (List!49729 Int) Bool)

(assert (=> d!1341960 (= res!1830411 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154314))))

(declare-fun e!2756324 () ListMap!2749)

(assert (=> d!1341960 (= lt!1626165 e!2756324)))

(declare-fun c!753502 () Bool)

(assert (=> d!1341960 (= c!753502 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1341960 (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616))))))

(assert (=> d!1341960 (= (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625979) lt!1626165)))

(declare-fun b!4426750 () Bool)

(declare-fun e!2756326 () Bool)

(assert (=> b!4426750 (= e!2756326 (forall!9578 (toList!3506 lt!1625979) lambda!154313))))

(assert (=> b!4426751 (= e!2756324 lt!1625979)))

(declare-fun lt!1626178 () Unit!82123)

(declare-fun call!308010 () Unit!82123)

(assert (=> b!4426751 (= lt!1626178 call!308010)))

(declare-fun call!308012 () Bool)

(assert (=> b!4426751 call!308012))

(declare-fun lt!1626171 () Unit!82123)

(assert (=> b!4426751 (= lt!1626171 lt!1626178)))

(declare-fun call!308011 () Bool)

(assert (=> b!4426751 call!308011))

(declare-fun lt!1626177 () Unit!82123)

(declare-fun Unit!82139 () Unit!82123)

(assert (=> b!4426751 (= lt!1626177 Unit!82139)))

(declare-fun bm!308005 () Bool)

(assert (=> bm!308005 (= call!308012 (forall!9578 (toList!3506 lt!1625979) (ite c!753502 lambda!154311 lambda!154312)))))

(declare-fun bm!308006 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!177 (ListMap!2749) Unit!82123)

(assert (=> bm!308006 (= call!308010 (lemmaContainsAllItsOwnKeys!177 lt!1625979))))

(assert (=> b!4426752 (= e!2756324 lt!1626164)))

(declare-fun lt!1626184 () ListMap!2749)

(assert (=> b!4426752 (= lt!1626184 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4426752 (= lt!1626164 (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626180 () Unit!82123)

(assert (=> b!4426752 (= lt!1626180 call!308010)))

(assert (=> b!4426752 call!308012))

(declare-fun lt!1626182 () Unit!82123)

(assert (=> b!4426752 (= lt!1626182 lt!1626180)))

(assert (=> b!4426752 (forall!9578 (toList!3506 lt!1626184) lambda!154313)))

(declare-fun lt!1626169 () Unit!82123)

(declare-fun Unit!82140 () Unit!82123)

(assert (=> b!4426752 (= lt!1626169 Unit!82140)))

(assert (=> b!4426752 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154313)))

(declare-fun lt!1626168 () Unit!82123)

(declare-fun Unit!82142 () Unit!82123)

(assert (=> b!4426752 (= lt!1626168 Unit!82142)))

(declare-fun lt!1626176 () Unit!82123)

(declare-fun Unit!82143 () Unit!82123)

(assert (=> b!4426752 (= lt!1626176 Unit!82143)))

(declare-fun lt!1626181 () Unit!82123)

(declare-fun forallContained!2097 (List!49729 Int tuple2!49414) Unit!82123)

(assert (=> b!4426752 (= lt!1626181 (forallContained!2097 (toList!3506 lt!1626184) lambda!154313 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4426752 (contains!12114 lt!1626184 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626170 () Unit!82123)

(declare-fun Unit!82144 () Unit!82123)

(assert (=> b!4426752 (= lt!1626170 Unit!82144)))

(assert (=> b!4426752 (contains!12114 lt!1626164 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626174 () Unit!82123)

(declare-fun Unit!82145 () Unit!82123)

(assert (=> b!4426752 (= lt!1626174 Unit!82145)))

(assert (=> b!4426752 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154313)))

(declare-fun lt!1626172 () Unit!82123)

(declare-fun Unit!82146 () Unit!82123)

(assert (=> b!4426752 (= lt!1626172 Unit!82146)))

(assert (=> b!4426752 (forall!9578 (toList!3506 lt!1626184) lambda!154313)))

(declare-fun lt!1626175 () Unit!82123)

(declare-fun Unit!82147 () Unit!82123)

(assert (=> b!4426752 (= lt!1626175 Unit!82147)))

(declare-fun lt!1626173 () Unit!82123)

(declare-fun Unit!82148 () Unit!82123)

(assert (=> b!4426752 (= lt!1626173 Unit!82148)))

(declare-fun lt!1626183 () Unit!82123)

(declare-fun addForallContainsKeyThenBeforeAdding!177 (ListMap!2749 ListMap!2749 K!10970 V!11216) Unit!82123)

(assert (=> b!4426752 (= lt!1626183 (addForallContainsKeyThenBeforeAdding!177 lt!1625979 lt!1626164 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4426752 call!308011))

(declare-fun lt!1626166 () Unit!82123)

(assert (=> b!4426752 (= lt!1626166 lt!1626183)))

(assert (=> b!4426752 (forall!9578 (toList!3506 lt!1625979) lambda!154313)))

(declare-fun lt!1626167 () Unit!82123)

(declare-fun Unit!82150 () Unit!82123)

(assert (=> b!4426752 (= lt!1626167 Unit!82150)))

(declare-fun res!1830412 () Bool)

(assert (=> b!4426752 (= res!1830412 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154313))))

(assert (=> b!4426752 (=> (not res!1830412) (not e!2756326))))

(assert (=> b!4426752 e!2756326))

(declare-fun lt!1626179 () Unit!82123)

(declare-fun Unit!82151 () Unit!82123)

(assert (=> b!4426752 (= lt!1626179 Unit!82151)))

(declare-fun b!4426753 () Bool)

(declare-fun invariantList!809 (List!49729) Bool)

(assert (=> b!4426753 (= e!2756325 (invariantList!809 (toList!3506 lt!1626165)))))

(declare-fun b!4426754 () Bool)

(declare-fun res!1830413 () Bool)

(assert (=> b!4426754 (=> (not res!1830413) (not e!2756325))))

(assert (=> b!4426754 (= res!1830413 (forall!9578 (toList!3506 lt!1625979) lambda!154314))))

(declare-fun bm!308007 () Bool)

(assert (=> bm!308007 (= call!308011 (forall!9578 (toList!3506 lt!1625979) (ite c!753502 lambda!154311 lambda!154313)))))

(assert (= (and d!1341960 c!753502) b!4426751))

(assert (= (and d!1341960 (not c!753502)) b!4426752))

(assert (= (and b!4426752 res!1830412) b!4426750))

(assert (= (or b!4426751 b!4426752) bm!308006))

(assert (= (or b!4426751 b!4426752) bm!308005))

(assert (= (or b!4426751 b!4426752) bm!308007))

(assert (= (and d!1341960 res!1830411) b!4426754))

(assert (= (and b!4426754 res!1830413) b!4426753))

(declare-fun m!5108287 () Bool)

(assert (=> bm!308006 m!5108287))

(declare-fun m!5108289 () Bool)

(assert (=> bm!308007 m!5108289))

(declare-fun m!5108291 () Bool)

(assert (=> bm!308005 m!5108291))

(declare-fun m!5108293 () Bool)

(assert (=> b!4426754 m!5108293))

(declare-fun m!5108295 () Bool)

(assert (=> b!4426750 m!5108295))

(declare-fun m!5108297 () Bool)

(assert (=> d!1341960 m!5108297))

(declare-fun m!5108299 () Bool)

(assert (=> d!1341960 m!5108299))

(declare-fun m!5108301 () Bool)

(assert (=> b!4426753 m!5108301))

(declare-fun m!5108303 () Bool)

(assert (=> b!4426752 m!5108303))

(declare-fun m!5108305 () Bool)

(assert (=> b!4426752 m!5108305))

(assert (=> b!4426752 m!5108303))

(declare-fun m!5108307 () Bool)

(assert (=> b!4426752 m!5108307))

(assert (=> b!4426752 m!5108295))

(declare-fun m!5108309 () Bool)

(assert (=> b!4426752 m!5108309))

(declare-fun m!5108311 () Bool)

(assert (=> b!4426752 m!5108311))

(declare-fun m!5108313 () Bool)

(assert (=> b!4426752 m!5108313))

(assert (=> b!4426752 m!5108309))

(declare-fun m!5108315 () Bool)

(assert (=> b!4426752 m!5108315))

(declare-fun m!5108317 () Bool)

(assert (=> b!4426752 m!5108317))

(declare-fun m!5108319 () Bool)

(assert (=> b!4426752 m!5108319))

(assert (=> b!4426752 m!5108315))

(assert (=> b!4426657 d!1341960))

(declare-fun d!1341988 () Bool)

(declare-fun isEmpty!28351 (List!49730) Bool)

(assert (=> d!1341988 (= (isEmpty!28349 lm!1616) (isEmpty!28351 (toList!3505 lm!1616)))))

(declare-fun bs!757851 () Bool)

(assert (= bs!757851 d!1341988))

(declare-fun m!5108321 () Bool)

(assert (=> bs!757851 m!5108321))

(assert (=> b!4426657 d!1341988))

(declare-fun d!1341990 () Bool)

(assert (=> d!1341990 (eq!417 (+!1103 lt!1625981 (tuple2!49415 key!3717 newValue!93)) (+!1103 lt!1625985 (tuple2!49415 key!3717 newValue!93)))))

(declare-fun lt!1626211 () Unit!82123)

(declare-fun choose!27967 (ListMap!2749 ListMap!2749 K!10970 V!11216) Unit!82123)

(assert (=> d!1341990 (= lt!1626211 (choose!27967 lt!1625981 lt!1625985 key!3717 newValue!93))))

(assert (=> d!1341990 (eq!417 lt!1625981 lt!1625985)))

(assert (=> d!1341990 (= (lemmaAddToEqMapsPreservesEq!28 lt!1625981 lt!1625985 key!3717 newValue!93) lt!1626211)))

(declare-fun bs!757852 () Bool)

(assert (= bs!757852 d!1341990))

(assert (=> bs!757852 m!5108049))

(declare-fun m!5108343 () Bool)

(assert (=> bs!757852 m!5108343))

(declare-fun m!5108345 () Bool)

(assert (=> bs!757852 m!5108345))

(declare-fun m!5108347 () Bool)

(assert (=> bs!757852 m!5108347))

(assert (=> bs!757852 m!5108347))

(assert (=> bs!757852 m!5108345))

(declare-fun m!5108349 () Bool)

(assert (=> bs!757852 m!5108349))

(assert (=> b!4426657 d!1341990))

(declare-fun bs!757853 () Bool)

(declare-fun d!1341994 () Bool)

(assert (= bs!757853 (and d!1341994 b!4426751)))

(declare-fun lambda!154317 () Int)

(assert (=> bs!757853 (not (= lambda!154317 lambda!154311))))

(declare-fun bs!757854 () Bool)

(assert (= bs!757854 (and d!1341994 b!4426752)))

(assert (=> bs!757854 (not (= lambda!154317 lambda!154312))))

(assert (=> bs!757854 (not (= lambda!154317 lambda!154313))))

(declare-fun bs!757855 () Bool)

(assert (= bs!757855 (and d!1341994 d!1341960)))

(assert (=> bs!757855 (not (= lambda!154317 lambda!154314))))

(assert (=> d!1341994 true))

(assert (=> d!1341994 true))

(assert (=> d!1341994 (= (allKeysSameHash!719 newBucket!194 hash!366 hashF!1220) (forall!9578 newBucket!194 lambda!154317))))

(declare-fun bs!757856 () Bool)

(assert (= bs!757856 d!1341994))

(declare-fun m!5108351 () Bool)

(assert (=> bs!757856 m!5108351))

(assert (=> b!4426659 d!1341994))

(declare-fun d!1341996 () Bool)

(assert (=> d!1341996 (= (eq!417 lt!1625981 lt!1625985) (= (content!7962 (toList!3506 lt!1625981)) (content!7962 (toList!3506 lt!1625985))))))

(declare-fun bs!757857 () Bool)

(assert (= bs!757857 d!1341996))

(declare-fun m!5108353 () Bool)

(assert (=> bs!757857 m!5108353))

(declare-fun m!5108355 () Bool)

(assert (=> bs!757857 m!5108355))

(assert (=> b!4426669 d!1341996))

(declare-fun bs!757858 () Bool)

(declare-fun b!4426789 () Bool)

(assert (= bs!757858 (and b!4426789 b!4426751)))

(declare-fun lambda!154318 () Int)

(assert (=> bs!757858 (= (= lt!1625969 lt!1625979) (= lambda!154318 lambda!154311))))

(declare-fun bs!757859 () Bool)

(assert (= bs!757859 (and b!4426789 d!1341994)))

(assert (=> bs!757859 (not (= lambda!154318 lambda!154317))))

(declare-fun bs!757860 () Bool)

(assert (= bs!757860 (and b!4426789 d!1341960)))

(assert (=> bs!757860 (= (= lt!1625969 lt!1626165) (= lambda!154318 lambda!154314))))

(declare-fun bs!757861 () Bool)

(assert (= bs!757861 (and b!4426789 b!4426752)))

(assert (=> bs!757861 (= (= lt!1625969 lt!1626164) (= lambda!154318 lambda!154313))))

(assert (=> bs!757861 (= (= lt!1625969 lt!1625979) (= lambda!154318 lambda!154312))))

(assert (=> b!4426789 true))

(declare-fun bs!757862 () Bool)

(declare-fun b!4426790 () Bool)

(assert (= bs!757862 (and b!4426790 b!4426751)))

(declare-fun lambda!154319 () Int)

(assert (=> bs!757862 (= (= lt!1625969 lt!1625979) (= lambda!154319 lambda!154311))))

(declare-fun bs!757863 () Bool)

(assert (= bs!757863 (and b!4426790 d!1341994)))

(assert (=> bs!757863 (not (= lambda!154319 lambda!154317))))

(declare-fun bs!757864 () Bool)

(assert (= bs!757864 (and b!4426790 d!1341960)))

(assert (=> bs!757864 (= (= lt!1625969 lt!1626165) (= lambda!154319 lambda!154314))))

(declare-fun bs!757865 () Bool)

(assert (= bs!757865 (and b!4426790 b!4426752)))

(assert (=> bs!757865 (= (= lt!1625969 lt!1626164) (= lambda!154319 lambda!154313))))

(declare-fun bs!757866 () Bool)

(assert (= bs!757866 (and b!4426790 b!4426789)))

(assert (=> bs!757866 (= lambda!154319 lambda!154318)))

(assert (=> bs!757865 (= (= lt!1625969 lt!1625979) (= lambda!154319 lambda!154312))))

(assert (=> b!4426790 true))

(declare-fun lambda!154320 () Int)

(declare-fun lt!1626212 () ListMap!2749)

(assert (=> bs!757862 (= (= lt!1626212 lt!1625979) (= lambda!154320 lambda!154311))))

(assert (=> bs!757863 (not (= lambda!154320 lambda!154317))))

(assert (=> bs!757864 (= (= lt!1626212 lt!1626165) (= lambda!154320 lambda!154314))))

(assert (=> b!4426790 (= (= lt!1626212 lt!1625969) (= lambda!154320 lambda!154319))))

(assert (=> bs!757865 (= (= lt!1626212 lt!1626164) (= lambda!154320 lambda!154313))))

(assert (=> bs!757866 (= (= lt!1626212 lt!1625969) (= lambda!154320 lambda!154318))))

(assert (=> bs!757865 (= (= lt!1626212 lt!1625979) (= lambda!154320 lambda!154312))))

(assert (=> b!4426790 true))

(declare-fun bs!757867 () Bool)

(declare-fun d!1341998 () Bool)

(assert (= bs!757867 (and d!1341998 b!4426790)))

(declare-fun lt!1626213 () ListMap!2749)

(declare-fun lambda!154321 () Int)

(assert (=> bs!757867 (= (= lt!1626213 lt!1626212) (= lambda!154321 lambda!154320))))

(declare-fun bs!757868 () Bool)

(assert (= bs!757868 (and d!1341998 b!4426751)))

(assert (=> bs!757868 (= (= lt!1626213 lt!1625979) (= lambda!154321 lambda!154311))))

(declare-fun bs!757869 () Bool)

(assert (= bs!757869 (and d!1341998 d!1341994)))

(assert (=> bs!757869 (not (= lambda!154321 lambda!154317))))

(declare-fun bs!757870 () Bool)

(assert (= bs!757870 (and d!1341998 d!1341960)))

(assert (=> bs!757870 (= (= lt!1626213 lt!1626165) (= lambda!154321 lambda!154314))))

(assert (=> bs!757867 (= (= lt!1626213 lt!1625969) (= lambda!154321 lambda!154319))))

(declare-fun bs!757871 () Bool)

(assert (= bs!757871 (and d!1341998 b!4426752)))

(assert (=> bs!757871 (= (= lt!1626213 lt!1626164) (= lambda!154321 lambda!154313))))

(declare-fun bs!757872 () Bool)

(assert (= bs!757872 (and d!1341998 b!4426789)))

(assert (=> bs!757872 (= (= lt!1626213 lt!1625969) (= lambda!154321 lambda!154318))))

(assert (=> bs!757871 (= (= lt!1626213 lt!1625979) (= lambda!154321 lambda!154312))))

(assert (=> d!1341998 true))

(declare-fun e!2756346 () Bool)

(assert (=> d!1341998 e!2756346))

(declare-fun res!1830423 () Bool)

(assert (=> d!1341998 (=> (not res!1830423) (not e!2756346))))

(assert (=> d!1341998 (= res!1830423 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154321))))

(declare-fun e!2756345 () ListMap!2749)

(assert (=> d!1341998 (= lt!1626213 e!2756345)))

(declare-fun c!753512 () Bool)

(assert (=> d!1341998 (= c!753512 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1341998 (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616))))))

(assert (=> d!1341998 (= (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969) lt!1626213)))

(declare-fun b!4426788 () Bool)

(declare-fun e!2756347 () Bool)

(assert (=> b!4426788 (= e!2756347 (forall!9578 (toList!3506 lt!1625969) lambda!154320))))

(assert (=> b!4426789 (= e!2756345 lt!1625969)))

(declare-fun lt!1626226 () Unit!82123)

(declare-fun call!308016 () Unit!82123)

(assert (=> b!4426789 (= lt!1626226 call!308016)))

(declare-fun call!308018 () Bool)

(assert (=> b!4426789 call!308018))

(declare-fun lt!1626219 () Unit!82123)

(assert (=> b!4426789 (= lt!1626219 lt!1626226)))

(declare-fun call!308017 () Bool)

(assert (=> b!4426789 call!308017))

(declare-fun lt!1626225 () Unit!82123)

(declare-fun Unit!82152 () Unit!82123)

(assert (=> b!4426789 (= lt!1626225 Unit!82152)))

(declare-fun bm!308011 () Bool)

(assert (=> bm!308011 (= call!308018 (forall!9578 (toList!3506 lt!1625969) (ite c!753512 lambda!154318 lambda!154319)))))

(declare-fun bm!308012 () Bool)

(assert (=> bm!308012 (= call!308016 (lemmaContainsAllItsOwnKeys!177 lt!1625969))))

(assert (=> b!4426790 (= e!2756345 lt!1626212)))

(declare-fun lt!1626232 () ListMap!2749)

(assert (=> b!4426790 (= lt!1626232 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4426790 (= lt!1626212 (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626228 () Unit!82123)

(assert (=> b!4426790 (= lt!1626228 call!308016)))

(assert (=> b!4426790 call!308018))

(declare-fun lt!1626230 () Unit!82123)

(assert (=> b!4426790 (= lt!1626230 lt!1626228)))

(assert (=> b!4426790 (forall!9578 (toList!3506 lt!1626232) lambda!154320)))

(declare-fun lt!1626217 () Unit!82123)

(declare-fun Unit!82153 () Unit!82123)

(assert (=> b!4426790 (= lt!1626217 Unit!82153)))

(assert (=> b!4426790 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154320)))

(declare-fun lt!1626216 () Unit!82123)

(declare-fun Unit!82154 () Unit!82123)

(assert (=> b!4426790 (= lt!1626216 Unit!82154)))

(declare-fun lt!1626224 () Unit!82123)

(declare-fun Unit!82155 () Unit!82123)

(assert (=> b!4426790 (= lt!1626224 Unit!82155)))

(declare-fun lt!1626229 () Unit!82123)

(assert (=> b!4426790 (= lt!1626229 (forallContained!2097 (toList!3506 lt!1626232) lambda!154320 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4426790 (contains!12114 lt!1626232 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626218 () Unit!82123)

(declare-fun Unit!82156 () Unit!82123)

(assert (=> b!4426790 (= lt!1626218 Unit!82156)))

(assert (=> b!4426790 (contains!12114 lt!1626212 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626222 () Unit!82123)

(declare-fun Unit!82157 () Unit!82123)

(assert (=> b!4426790 (= lt!1626222 Unit!82157)))

(assert (=> b!4426790 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154320)))

(declare-fun lt!1626220 () Unit!82123)

(declare-fun Unit!82158 () Unit!82123)

(assert (=> b!4426790 (= lt!1626220 Unit!82158)))

(assert (=> b!4426790 (forall!9578 (toList!3506 lt!1626232) lambda!154320)))

(declare-fun lt!1626223 () Unit!82123)

(declare-fun Unit!82159 () Unit!82123)

(assert (=> b!4426790 (= lt!1626223 Unit!82159)))

(declare-fun lt!1626221 () Unit!82123)

(declare-fun Unit!82160 () Unit!82123)

(assert (=> b!4426790 (= lt!1626221 Unit!82160)))

(declare-fun lt!1626231 () Unit!82123)

(assert (=> b!4426790 (= lt!1626231 (addForallContainsKeyThenBeforeAdding!177 lt!1625969 lt!1626212 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4426790 call!308017))

(declare-fun lt!1626214 () Unit!82123)

(assert (=> b!4426790 (= lt!1626214 lt!1626231)))

(assert (=> b!4426790 (forall!9578 (toList!3506 lt!1625969) lambda!154320)))

(declare-fun lt!1626215 () Unit!82123)

(declare-fun Unit!82162 () Unit!82123)

(assert (=> b!4426790 (= lt!1626215 Unit!82162)))

(declare-fun res!1830424 () Bool)

(assert (=> b!4426790 (= res!1830424 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154320))))

(assert (=> b!4426790 (=> (not res!1830424) (not e!2756347))))

(assert (=> b!4426790 e!2756347))

(declare-fun lt!1626227 () Unit!82123)

(declare-fun Unit!82163 () Unit!82123)

(assert (=> b!4426790 (= lt!1626227 Unit!82163)))

(declare-fun b!4426791 () Bool)

(assert (=> b!4426791 (= e!2756346 (invariantList!809 (toList!3506 lt!1626213)))))

(declare-fun b!4426792 () Bool)

(declare-fun res!1830425 () Bool)

(assert (=> b!4426792 (=> (not res!1830425) (not e!2756346))))

(assert (=> b!4426792 (= res!1830425 (forall!9578 (toList!3506 lt!1625969) lambda!154321))))

(declare-fun bm!308013 () Bool)

(assert (=> bm!308013 (= call!308017 (forall!9578 (toList!3506 lt!1625969) (ite c!753512 lambda!154318 lambda!154320)))))

(assert (= (and d!1341998 c!753512) b!4426789))

(assert (= (and d!1341998 (not c!753512)) b!4426790))

(assert (= (and b!4426790 res!1830424) b!4426788))

(assert (= (or b!4426789 b!4426790) bm!308012))

(assert (= (or b!4426789 b!4426790) bm!308011))

(assert (= (or b!4426789 b!4426790) bm!308013))

(assert (= (and d!1341998 res!1830423) b!4426792))

(assert (= (and b!4426792 res!1830425) b!4426791))

(declare-fun m!5108357 () Bool)

(assert (=> bm!308012 m!5108357))

(declare-fun m!5108359 () Bool)

(assert (=> bm!308013 m!5108359))

(declare-fun m!5108361 () Bool)

(assert (=> bm!308011 m!5108361))

(declare-fun m!5108363 () Bool)

(assert (=> b!4426792 m!5108363))

(declare-fun m!5108365 () Bool)

(assert (=> b!4426788 m!5108365))

(declare-fun m!5108367 () Bool)

(assert (=> d!1341998 m!5108367))

(assert (=> d!1341998 m!5108299))

(declare-fun m!5108369 () Bool)

(assert (=> b!4426791 m!5108369))

(declare-fun m!5108371 () Bool)

(assert (=> b!4426790 m!5108371))

(declare-fun m!5108373 () Bool)

(assert (=> b!4426790 m!5108373))

(assert (=> b!4426790 m!5108371))

(declare-fun m!5108375 () Bool)

(assert (=> b!4426790 m!5108375))

(assert (=> b!4426790 m!5108365))

(declare-fun m!5108377 () Bool)

(assert (=> b!4426790 m!5108377))

(declare-fun m!5108379 () Bool)

(assert (=> b!4426790 m!5108379))

(declare-fun m!5108383 () Bool)

(assert (=> b!4426790 m!5108383))

(assert (=> b!4426790 m!5108377))

(declare-fun m!5108389 () Bool)

(assert (=> b!4426790 m!5108389))

(declare-fun m!5108391 () Bool)

(assert (=> b!4426790 m!5108391))

(declare-fun m!5108395 () Bool)

(assert (=> b!4426790 m!5108395))

(assert (=> b!4426790 m!5108389))

(assert (=> b!4426669 d!1341998))

(declare-fun d!1342002 () Bool)

(declare-fun res!1830436 () Bool)

(declare-fun e!2756361 () Bool)

(assert (=> d!1342002 (=> res!1830436 e!2756361)))

(assert (=> d!1342002 (= res!1830436 ((_ is Nil!49606) (toList!3505 lt!1625976)))))

(assert (=> d!1342002 (= (forall!9576 (toList!3505 lt!1625976) lambda!154244) e!2756361)))

(declare-fun b!4426809 () Bool)

(declare-fun e!2756362 () Bool)

(assert (=> b!4426809 (= e!2756361 e!2756362)))

(declare-fun res!1830437 () Bool)

(assert (=> b!4426809 (=> (not res!1830437) (not e!2756362))))

(declare-fun dynLambda!20850 (Int tuple2!49416) Bool)

(assert (=> b!4426809 (= res!1830437 (dynLambda!20850 lambda!154244 (h!55295 (toList!3505 lt!1625976))))))

(declare-fun b!4426810 () Bool)

(assert (=> b!4426810 (= e!2756362 (forall!9576 (t!356668 (toList!3505 lt!1625976)) lambda!154244))))

(assert (= (and d!1342002 (not res!1830436)) b!4426809))

(assert (= (and b!4426809 res!1830437) b!4426810))

(declare-fun b_lambda!143217 () Bool)

(assert (=> (not b_lambda!143217) (not b!4426809)))

(declare-fun m!5108401 () Bool)

(assert (=> b!4426809 m!5108401))

(declare-fun m!5108403 () Bool)

(assert (=> b!4426810 m!5108403))

(assert (=> b!4426658 d!1342002))

(declare-fun d!1342006 () Bool)

(declare-fun e!2756365 () Bool)

(assert (=> d!1342006 e!2756365))

(declare-fun res!1830442 () Bool)

(assert (=> d!1342006 (=> (not res!1830442) (not e!2756365))))

(declare-fun lt!1626247 () ListLongMap!2155)

(assert (=> d!1342006 (= res!1830442 (contains!12115 lt!1626247 (_1!28002 lt!1625978)))))

(declare-fun lt!1626246 () List!49730)

(assert (=> d!1342006 (= lt!1626247 (ListLongMap!2156 lt!1626246))))

(declare-fun lt!1626244 () Unit!82123)

(declare-fun lt!1626245 () Unit!82123)

(assert (=> d!1342006 (= lt!1626244 lt!1626245)))

(declare-datatypes ((Option!10734 0))(
  ( (None!10733) (Some!10733 (v!43921 List!49729)) )
))
(declare-fun getValueByKey!720 (List!49730 (_ BitVec 64)) Option!10734)

(assert (=> d!1342006 (= (getValueByKey!720 lt!1626246 (_1!28002 lt!1625978)) (Some!10733 (_2!28002 lt!1625978)))))

(declare-fun lemmaContainsTupThenGetReturnValue!455 (List!49730 (_ BitVec 64) List!49729) Unit!82123)

(assert (=> d!1342006 (= lt!1626245 (lemmaContainsTupThenGetReturnValue!455 lt!1626246 (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(declare-fun insertStrictlySorted!264 (List!49730 (_ BitVec 64) List!49729) List!49730)

(assert (=> d!1342006 (= lt!1626246 (insertStrictlySorted!264 (toList!3505 lm!1616) (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(assert (=> d!1342006 (= (+!1102 lm!1616 lt!1625978) lt!1626247)))

(declare-fun b!4426815 () Bool)

(declare-fun res!1830443 () Bool)

(assert (=> b!4426815 (=> (not res!1830443) (not e!2756365))))

(assert (=> b!4426815 (= res!1830443 (= (getValueByKey!720 (toList!3505 lt!1626247) (_1!28002 lt!1625978)) (Some!10733 (_2!28002 lt!1625978))))))

(declare-fun b!4426816 () Bool)

(declare-fun contains!12120 (List!49730 tuple2!49416) Bool)

(assert (=> b!4426816 (= e!2756365 (contains!12120 (toList!3505 lt!1626247) lt!1625978))))

(assert (= (and d!1342006 res!1830442) b!4426815))

(assert (= (and b!4426815 res!1830443) b!4426816))

(declare-fun m!5108405 () Bool)

(assert (=> d!1342006 m!5108405))

(declare-fun m!5108407 () Bool)

(assert (=> d!1342006 m!5108407))

(declare-fun m!5108409 () Bool)

(assert (=> d!1342006 m!5108409))

(declare-fun m!5108411 () Bool)

(assert (=> d!1342006 m!5108411))

(declare-fun m!5108413 () Bool)

(assert (=> b!4426815 m!5108413))

(declare-fun m!5108415 () Bool)

(assert (=> b!4426816 m!5108415))

(assert (=> b!4426658 d!1342006))

(declare-fun d!1342008 () Bool)

(assert (=> d!1342008 (forall!9576 (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194))) lambda!154244)))

(declare-fun lt!1626274 () Unit!82123)

(declare-fun choose!27969 (ListLongMap!2155 Int (_ BitVec 64) List!49729) Unit!82123)

(assert (=> d!1342008 (= lt!1626274 (choose!27969 lm!1616 lambda!154244 hash!366 newBucket!194))))

(declare-fun e!2756371 () Bool)

(assert (=> d!1342008 e!2756371))

(declare-fun res!1830449 () Bool)

(assert (=> d!1342008 (=> (not res!1830449) (not e!2756371))))

(assert (=> d!1342008 (= res!1830449 (forall!9576 (toList!3505 lm!1616) lambda!154244))))

(assert (=> d!1342008 (= (addValidProp!403 lm!1616 lambda!154244 hash!366 newBucket!194) lt!1626274)))

(declare-fun b!4426825 () Bool)

(assert (=> b!4426825 (= e!2756371 (dynLambda!20850 lambda!154244 (tuple2!49417 hash!366 newBucket!194)))))

(assert (= (and d!1342008 res!1830449) b!4426825))

(declare-fun b_lambda!143219 () Bool)

(assert (=> (not b_lambda!143219) (not b!4426825)))

(declare-fun m!5108427 () Bool)

(assert (=> d!1342008 m!5108427))

(declare-fun m!5108429 () Bool)

(assert (=> d!1342008 m!5108429))

(declare-fun m!5108431 () Bool)

(assert (=> d!1342008 m!5108431))

(assert (=> d!1342008 m!5108027))

(declare-fun m!5108433 () Bool)

(assert (=> b!4426825 m!5108433))

(assert (=> b!4426658 d!1342008))

(declare-fun b!4426846 () Bool)

(declare-fun e!2756387 () Unit!82123)

(declare-fun e!2756385 () Unit!82123)

(assert (=> b!4426846 (= e!2756387 e!2756385)))

(declare-fun c!753525 () Bool)

(declare-fun call!308024 () Bool)

(assert (=> b!4426846 (= c!753525 call!308024)))

(declare-fun b!4426847 () Bool)

(declare-datatypes ((List!49732 0))(
  ( (Nil!49608) (Cons!49608 (h!55299 K!10970) (t!356670 List!49732)) )
))
(declare-fun e!2756389 () List!49732)

(declare-fun keys!16942 (ListMap!2749) List!49732)

(assert (=> b!4426847 (= e!2756389 (keys!16942 lt!1625981))))

(declare-fun b!4426848 () Bool)

(declare-fun e!2756386 () Bool)

(declare-fun contains!12121 (List!49732 K!10970) Bool)

(assert (=> b!4426848 (= e!2756386 (contains!12121 (keys!16942 lt!1625981) key!3717))))

(declare-fun d!1342014 () Bool)

(declare-fun e!2756390 () Bool)

(assert (=> d!1342014 e!2756390))

(declare-fun res!1830458 () Bool)

(assert (=> d!1342014 (=> res!1830458 e!2756390)))

(declare-fun e!2756388 () Bool)

(assert (=> d!1342014 (= res!1830458 e!2756388)))

(declare-fun res!1830460 () Bool)

(assert (=> d!1342014 (=> (not res!1830460) (not e!2756388))))

(declare-fun lt!1626299 () Bool)

(assert (=> d!1342014 (= res!1830460 (not lt!1626299))))

(declare-fun lt!1626302 () Bool)

(assert (=> d!1342014 (= lt!1626299 lt!1626302)))

(declare-fun lt!1626304 () Unit!82123)

(assert (=> d!1342014 (= lt!1626304 e!2756387)))

(declare-fun c!753523 () Bool)

(assert (=> d!1342014 (= c!753523 lt!1626302)))

(declare-fun containsKey!1133 (List!49729 K!10970) Bool)

(assert (=> d!1342014 (= lt!1626302 (containsKey!1133 (toList!3506 lt!1625981) key!3717))))

(assert (=> d!1342014 (= (contains!12114 lt!1625981 key!3717) lt!1626299)))

(declare-fun b!4426849 () Bool)

(declare-fun getKeysList!256 (List!49729) List!49732)

(assert (=> b!4426849 (= e!2756389 (getKeysList!256 (toList!3506 lt!1625981)))))

(declare-fun b!4426850 () Bool)

(assert (=> b!4426850 (= e!2756390 e!2756386)))

(declare-fun res!1830459 () Bool)

(assert (=> b!4426850 (=> (not res!1830459) (not e!2756386))))

(declare-fun isDefined!8025 (Option!10733) Bool)

(assert (=> b!4426850 (= res!1830459 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1625981) key!3717)))))

(declare-fun b!4426851 () Bool)

(declare-fun Unit!82174 () Unit!82123)

(assert (=> b!4426851 (= e!2756385 Unit!82174)))

(declare-fun b!4426852 () Bool)

(declare-fun lt!1626298 () Unit!82123)

(assert (=> b!4426852 (= e!2756387 lt!1626298)))

(declare-fun lt!1626305 () Unit!82123)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!628 (List!49729 K!10970) Unit!82123)

(assert (=> b!4426852 (= lt!1626305 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1625981) key!3717))))

(assert (=> b!4426852 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1625981) key!3717))))

(declare-fun lt!1626300 () Unit!82123)

(assert (=> b!4426852 (= lt!1626300 lt!1626305)))

(declare-fun lemmaInListThenGetKeysListContains!253 (List!49729 K!10970) Unit!82123)

(assert (=> b!4426852 (= lt!1626298 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1625981) key!3717))))

(assert (=> b!4426852 call!308024))

(declare-fun b!4426853 () Bool)

(assert (=> b!4426853 (= e!2756388 (not (contains!12121 (keys!16942 lt!1625981) key!3717)))))

(declare-fun bm!308019 () Bool)

(assert (=> bm!308019 (= call!308024 (contains!12121 e!2756389 key!3717))))

(declare-fun c!753524 () Bool)

(assert (=> bm!308019 (= c!753524 c!753523)))

(declare-fun b!4426854 () Bool)

(assert (=> b!4426854 false))

(declare-fun lt!1626301 () Unit!82123)

(declare-fun lt!1626303 () Unit!82123)

(assert (=> b!4426854 (= lt!1626301 lt!1626303)))

(assert (=> b!4426854 (containsKey!1133 (toList!3506 lt!1625981) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!254 (List!49729 K!10970) Unit!82123)

(assert (=> b!4426854 (= lt!1626303 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1625981) key!3717))))

(declare-fun Unit!82175 () Unit!82123)

(assert (=> b!4426854 (= e!2756385 Unit!82175)))

(assert (= (and d!1342014 c!753523) b!4426852))

(assert (= (and d!1342014 (not c!753523)) b!4426846))

(assert (= (and b!4426846 c!753525) b!4426854))

(assert (= (and b!4426846 (not c!753525)) b!4426851))

(assert (= (or b!4426852 b!4426846) bm!308019))

(assert (= (and bm!308019 c!753524) b!4426849))

(assert (= (and bm!308019 (not c!753524)) b!4426847))

(assert (= (and d!1342014 res!1830460) b!4426853))

(assert (= (and d!1342014 (not res!1830458)) b!4426850))

(assert (= (and b!4426850 res!1830459) b!4426848))

(declare-fun m!5108493 () Bool)

(assert (=> b!4426854 m!5108493))

(declare-fun m!5108495 () Bool)

(assert (=> b!4426854 m!5108495))

(declare-fun m!5108497 () Bool)

(assert (=> b!4426848 m!5108497))

(assert (=> b!4426848 m!5108497))

(declare-fun m!5108499 () Bool)

(assert (=> b!4426848 m!5108499))

(assert (=> b!4426853 m!5108497))

(assert (=> b!4426853 m!5108497))

(assert (=> b!4426853 m!5108499))

(declare-fun m!5108501 () Bool)

(assert (=> b!4426849 m!5108501))

(declare-fun m!5108503 () Bool)

(assert (=> b!4426850 m!5108503))

(assert (=> b!4426850 m!5108503))

(declare-fun m!5108505 () Bool)

(assert (=> b!4426850 m!5108505))

(assert (=> d!1342014 m!5108493))

(declare-fun m!5108507 () Bool)

(assert (=> bm!308019 m!5108507))

(assert (=> b!4426847 m!5108497))

(declare-fun m!5108509 () Bool)

(assert (=> b!4426852 m!5108509))

(assert (=> b!4426852 m!5108503))

(assert (=> b!4426852 m!5108503))

(assert (=> b!4426852 m!5108505))

(declare-fun m!5108511 () Bool)

(assert (=> b!4426852 m!5108511))

(assert (=> b!4426655 d!1342014))

(declare-fun bs!757932 () Bool)

(declare-fun d!1342022 () Bool)

(assert (= bs!757932 (and d!1342022 start!431936)))

(declare-fun lambda!154343 () Int)

(assert (=> bs!757932 (= lambda!154343 lambda!154244)))

(declare-fun lt!1626323 () ListMap!2749)

(assert (=> d!1342022 (invariantList!809 (toList!3506 lt!1626323))))

(declare-fun e!2756403 () ListMap!2749)

(assert (=> d!1342022 (= lt!1626323 e!2756403)))

(declare-fun c!753534 () Bool)

(assert (=> d!1342022 (= c!753534 ((_ is Cons!49606) (toList!3505 lm!1616)))))

(assert (=> d!1342022 (forall!9576 (toList!3505 lm!1616) lambda!154343)))

(assert (=> d!1342022 (= (extractMap!820 (toList!3505 lm!1616)) lt!1626323)))

(declare-fun b!4426880 () Bool)

(assert (=> b!4426880 (= e!2756403 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))))))

(declare-fun b!4426882 () Bool)

(assert (=> b!4426882 (= e!2756403 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342022 c!753534) b!4426880))

(assert (= (and d!1342022 (not c!753534)) b!4426882))

(declare-fun m!5108579 () Bool)

(assert (=> d!1342022 m!5108579))

(declare-fun m!5108581 () Bool)

(assert (=> d!1342022 m!5108581))

(declare-fun m!5108583 () Bool)

(assert (=> b!4426880 m!5108583))

(assert (=> b!4426880 m!5108583))

(declare-fun m!5108585 () Bool)

(assert (=> b!4426880 m!5108585))

(assert (=> b!4426655 d!1342022))

(declare-fun bs!757933 () Bool)

(declare-fun d!1342044 () Bool)

(assert (= bs!757933 (and d!1342044 start!431936)))

(declare-fun lambda!154344 () Int)

(assert (=> bs!757933 (= lambda!154344 lambda!154244)))

(declare-fun bs!757934 () Bool)

(assert (= bs!757934 (and d!1342044 d!1342022)))

(assert (=> bs!757934 (= lambda!154344 lambda!154343)))

(declare-fun lt!1626324 () ListMap!2749)

(assert (=> d!1342044 (invariantList!809 (toList!3506 lt!1626324))))

(declare-fun e!2756409 () ListMap!2749)

(assert (=> d!1342044 (= lt!1626324 e!2756409)))

(declare-fun c!753535 () Bool)

(assert (=> d!1342044 (= c!753535 ((_ is Cons!49606) (toList!3505 lt!1625987)))))

(assert (=> d!1342044 (forall!9576 (toList!3505 lt!1625987) lambda!154344)))

(assert (=> d!1342044 (= (extractMap!820 (toList!3505 lt!1625987)) lt!1626324)))

(declare-fun b!4426891 () Bool)

(assert (=> b!4426891 (= e!2756409 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lt!1625987))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))))))

(declare-fun b!4426892 () Bool)

(assert (=> b!4426892 (= e!2756409 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342044 c!753535) b!4426891))

(assert (= (and d!1342044 (not c!753535)) b!4426892))

(declare-fun m!5108589 () Bool)

(assert (=> d!1342044 m!5108589))

(declare-fun m!5108591 () Bool)

(assert (=> d!1342044 m!5108591))

(declare-fun m!5108593 () Bool)

(assert (=> b!4426891 m!5108593))

(assert (=> b!4426891 m!5108593))

(declare-fun m!5108597 () Bool)

(assert (=> b!4426891 m!5108597))

(assert (=> b!4426665 d!1342044))

(declare-fun bs!757938 () Bool)

(declare-fun d!1342052 () Bool)

(assert (= bs!757938 (and d!1342052 start!431936)))

(declare-fun lambda!154345 () Int)

(assert (=> bs!757938 (= lambda!154345 lambda!154244)))

(declare-fun bs!757939 () Bool)

(assert (= bs!757939 (and d!1342052 d!1342022)))

(assert (=> bs!757939 (= lambda!154345 lambda!154343)))

(declare-fun bs!757940 () Bool)

(assert (= bs!757940 (and d!1342052 d!1342044)))

(assert (=> bs!757940 (= lambda!154345 lambda!154344)))

(declare-fun lt!1626325 () ListMap!2749)

(assert (=> d!1342052 (invariantList!809 (toList!3506 lt!1626325))))

(declare-fun e!2756411 () ListMap!2749)

(assert (=> d!1342052 (= lt!1626325 e!2756411)))

(declare-fun c!753536 () Bool)

(assert (=> d!1342052 (= c!753536 ((_ is Cons!49606) (toList!3505 (+!1102 lt!1625987 lt!1625978))))))

(assert (=> d!1342052 (forall!9576 (toList!3505 (+!1102 lt!1625987 lt!1625978)) lambda!154345)))

(assert (=> d!1342052 (= (extractMap!820 (toList!3505 (+!1102 lt!1625987 lt!1625978))) lt!1626325)))

(declare-fun b!4426894 () Bool)

(assert (=> b!4426894 (= e!2756411 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))))))

(declare-fun b!4426895 () Bool)

(assert (=> b!4426895 (= e!2756411 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342052 c!753536) b!4426894))

(assert (= (and d!1342052 (not c!753536)) b!4426895))

(declare-fun m!5108599 () Bool)

(assert (=> d!1342052 m!5108599))

(declare-fun m!5108601 () Bool)

(assert (=> d!1342052 m!5108601))

(declare-fun m!5108603 () Bool)

(assert (=> b!4426894 m!5108603))

(assert (=> b!4426894 m!5108603))

(declare-fun m!5108605 () Bool)

(assert (=> b!4426894 m!5108605))

(assert (=> b!4426665 d!1342052))

(declare-fun d!1342054 () Bool)

(declare-fun e!2756412 () Bool)

(assert (=> d!1342054 e!2756412))

(declare-fun res!1830466 () Bool)

(assert (=> d!1342054 (=> (not res!1830466) (not e!2756412))))

(declare-fun lt!1626329 () ListLongMap!2155)

(assert (=> d!1342054 (= res!1830466 (contains!12115 lt!1626329 (_1!28002 lt!1625978)))))

(declare-fun lt!1626328 () List!49730)

(assert (=> d!1342054 (= lt!1626329 (ListLongMap!2156 lt!1626328))))

(declare-fun lt!1626326 () Unit!82123)

(declare-fun lt!1626327 () Unit!82123)

(assert (=> d!1342054 (= lt!1626326 lt!1626327)))

(assert (=> d!1342054 (= (getValueByKey!720 lt!1626328 (_1!28002 lt!1625978)) (Some!10733 (_2!28002 lt!1625978)))))

(assert (=> d!1342054 (= lt!1626327 (lemmaContainsTupThenGetReturnValue!455 lt!1626328 (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(assert (=> d!1342054 (= lt!1626328 (insertStrictlySorted!264 (toList!3505 lt!1625987) (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(assert (=> d!1342054 (= (+!1102 lt!1625987 lt!1625978) lt!1626329)))

(declare-fun b!4426896 () Bool)

(declare-fun res!1830467 () Bool)

(assert (=> b!4426896 (=> (not res!1830467) (not e!2756412))))

(assert (=> b!4426896 (= res!1830467 (= (getValueByKey!720 (toList!3505 lt!1626329) (_1!28002 lt!1625978)) (Some!10733 (_2!28002 lt!1625978))))))

(declare-fun b!4426897 () Bool)

(assert (=> b!4426897 (= e!2756412 (contains!12120 (toList!3505 lt!1626329) lt!1625978))))

(assert (= (and d!1342054 res!1830466) b!4426896))

(assert (= (and b!4426896 res!1830467) b!4426897))

(declare-fun m!5108607 () Bool)

(assert (=> d!1342054 m!5108607))

(declare-fun m!5108609 () Bool)

(assert (=> d!1342054 m!5108609))

(declare-fun m!5108611 () Bool)

(assert (=> d!1342054 m!5108611))

(declare-fun m!5108613 () Bool)

(assert (=> d!1342054 m!5108613))

(declare-fun m!5108615 () Bool)

(assert (=> b!4426896 m!5108615))

(declare-fun m!5108617 () Bool)

(assert (=> b!4426897 m!5108617))

(assert (=> b!4426665 d!1342054))

(declare-fun d!1342056 () Bool)

(assert (=> d!1342056 (= (eq!417 lt!1625977 lt!1625979) (= (content!7962 (toList!3506 lt!1625977)) (content!7962 (toList!3506 lt!1625979))))))

(declare-fun bs!757941 () Bool)

(assert (= bs!757941 d!1342056))

(declare-fun m!5108619 () Bool)

(assert (=> bs!757941 m!5108619))

(declare-fun m!5108621 () Bool)

(assert (=> bs!757941 m!5108621))

(assert (=> b!4426665 d!1342056))

(declare-fun bs!757942 () Bool)

(declare-fun d!1342058 () Bool)

(assert (= bs!757942 (and d!1342058 start!431936)))

(declare-fun lambda!154348 () Int)

(assert (=> bs!757942 (= lambda!154348 lambda!154244)))

(declare-fun bs!757943 () Bool)

(assert (= bs!757943 (and d!1342058 d!1342022)))

(assert (=> bs!757943 (= lambda!154348 lambda!154343)))

(declare-fun bs!757944 () Bool)

(assert (= bs!757944 (and d!1342058 d!1342044)))

(assert (=> bs!757944 (= lambda!154348 lambda!154344)))

(declare-fun bs!757945 () Bool)

(assert (= bs!757945 (and d!1342058 d!1342052)))

(assert (=> bs!757945 (= lambda!154348 lambda!154345)))

(assert (=> d!1342058 (eq!417 (extractMap!820 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)))) (+!1103 (extractMap!820 (toList!3505 lt!1625987)) (tuple2!49415 key!3717 newValue!93)))))

(declare-fun lt!1626332 () Unit!82123)

(declare-fun choose!27971 (ListLongMap!2155 (_ BitVec 64) List!49729 K!10970 V!11216 Hashable!5153) Unit!82123)

(assert (=> d!1342058 (= lt!1626332 (choose!27971 lt!1625987 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1342058 (forall!9576 (toList!3505 lt!1625987) lambda!154348)))

(assert (=> d!1342058 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!133 lt!1625987 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1626332)))

(declare-fun bs!757946 () Bool)

(assert (= bs!757946 d!1342058))

(declare-fun m!5108623 () Bool)

(assert (=> bs!757946 m!5108623))

(declare-fun m!5108625 () Bool)

(assert (=> bs!757946 m!5108625))

(declare-fun m!5108627 () Bool)

(assert (=> bs!757946 m!5108627))

(declare-fun m!5108629 () Bool)

(assert (=> bs!757946 m!5108629))

(declare-fun m!5108631 () Bool)

(assert (=> bs!757946 m!5108631))

(declare-fun m!5108633 () Bool)

(assert (=> bs!757946 m!5108633))

(assert (=> bs!757946 m!5108091))

(assert (=> bs!757946 m!5108625))

(assert (=> bs!757946 m!5108091))

(assert (=> bs!757946 m!5108627))

(assert (=> b!4426665 d!1342058))

(declare-fun d!1342060 () Bool)

(assert (=> d!1342060 (= (tail!7290 lm!1616) (ListLongMap!2156 (tail!7291 (toList!3505 lm!1616))))))

(declare-fun bs!757947 () Bool)

(assert (= bs!757947 d!1342060))

(assert (=> bs!757947 m!5108075))

(assert (=> b!4426665 d!1342060))

(declare-fun bs!757948 () Bool)

(declare-fun d!1342062 () Bool)

(assert (= bs!757948 (and d!1342062 d!1342044)))

(declare-fun lambda!154349 () Int)

(assert (=> bs!757948 (= lambda!154349 lambda!154344)))

(declare-fun bs!757949 () Bool)

(assert (= bs!757949 (and d!1342062 d!1342052)))

(assert (=> bs!757949 (= lambda!154349 lambda!154345)))

(declare-fun bs!757950 () Bool)

(assert (= bs!757950 (and d!1342062 d!1342058)))

(assert (=> bs!757950 (= lambda!154349 lambda!154348)))

(declare-fun bs!757951 () Bool)

(assert (= bs!757951 (and d!1342062 d!1342022)))

(assert (=> bs!757951 (= lambda!154349 lambda!154343)))

(declare-fun bs!757952 () Bool)

(assert (= bs!757952 (and d!1342062 start!431936)))

(assert (=> bs!757952 (= lambda!154349 lambda!154244)))

(declare-fun lt!1626333 () ListMap!2749)

(assert (=> d!1342062 (invariantList!809 (toList!3506 lt!1626333))))

(declare-fun e!2756413 () ListMap!2749)

(assert (=> d!1342062 (= lt!1626333 e!2756413)))

(declare-fun c!753537 () Bool)

(assert (=> d!1342062 (= c!753537 ((_ is Cons!49606) (tail!7291 (toList!3505 lm!1616))))))

(assert (=> d!1342062 (forall!9576 (tail!7291 (toList!3505 lm!1616)) lambda!154349)))

(assert (=> d!1342062 (= (extractMap!820 (tail!7291 (toList!3505 lm!1616))) lt!1626333)))

(declare-fun b!4426898 () Bool)

(assert (=> b!4426898 (= e!2756413 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))))))

(declare-fun b!4426899 () Bool)

(assert (=> b!4426899 (= e!2756413 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342062 c!753537) b!4426898))

(assert (= (and d!1342062 (not c!753537)) b!4426899))

(declare-fun m!5108635 () Bool)

(assert (=> d!1342062 m!5108635))

(assert (=> d!1342062 m!5108075))

(declare-fun m!5108637 () Bool)

(assert (=> d!1342062 m!5108637))

(declare-fun m!5108639 () Bool)

(assert (=> b!4426898 m!5108639))

(assert (=> b!4426898 m!5108639))

(declare-fun m!5108641 () Bool)

(assert (=> b!4426898 m!5108641))

(assert (=> b!4426665 d!1342062))

(declare-fun d!1342064 () Bool)

(assert (=> d!1342064 (= (tail!7291 (toList!3505 lm!1616)) (t!356668 (toList!3505 lm!1616)))))

(assert (=> b!4426665 d!1342064))

(declare-fun b!4426900 () Bool)

(declare-fun e!2756416 () Unit!82123)

(declare-fun e!2756414 () Unit!82123)

(assert (=> b!4426900 (= e!2756416 e!2756414)))

(declare-fun c!753540 () Bool)

(declare-fun call!308026 () Bool)

(assert (=> b!4426900 (= c!753540 call!308026)))

(declare-fun b!4426901 () Bool)

(declare-fun e!2756418 () List!49732)

(assert (=> b!4426901 (= e!2756418 (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))

(declare-fun b!4426902 () Bool)

(declare-fun e!2756415 () Bool)

(assert (=> b!4426902 (= e!2756415 (contains!12121 (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(declare-fun d!1342066 () Bool)

(declare-fun e!2756419 () Bool)

(assert (=> d!1342066 e!2756419))

(declare-fun res!1830468 () Bool)

(assert (=> d!1342066 (=> res!1830468 e!2756419)))

(declare-fun e!2756417 () Bool)

(assert (=> d!1342066 (= res!1830468 e!2756417)))

(declare-fun res!1830470 () Bool)

(assert (=> d!1342066 (=> (not res!1830470) (not e!2756417))))

(declare-fun lt!1626335 () Bool)

(assert (=> d!1342066 (= res!1830470 (not lt!1626335))))

(declare-fun lt!1626338 () Bool)

(assert (=> d!1342066 (= lt!1626335 lt!1626338)))

(declare-fun lt!1626340 () Unit!82123)

(assert (=> d!1342066 (= lt!1626340 e!2756416)))

(declare-fun c!753538 () Bool)

(assert (=> d!1342066 (= c!753538 lt!1626338)))

(assert (=> d!1342066 (= lt!1626338 (containsKey!1133 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(assert (=> d!1342066 (= (contains!12114 (extractMap!820 (tail!7291 (toList!3505 lm!1616))) key!3717) lt!1626335)))

(declare-fun b!4426903 () Bool)

(assert (=> b!4426903 (= e!2756418 (getKeysList!256 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))

(declare-fun b!4426904 () Bool)

(assert (=> b!4426904 (= e!2756419 e!2756415)))

(declare-fun res!1830469 () Bool)

(assert (=> b!4426904 (=> (not res!1830469) (not e!2756415))))

(assert (=> b!4426904 (= res!1830469 (isDefined!8025 (getValueByKey!719 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717)))))

(declare-fun b!4426905 () Bool)

(declare-fun Unit!82178 () Unit!82123)

(assert (=> b!4426905 (= e!2756414 Unit!82178)))

(declare-fun b!4426906 () Bool)

(declare-fun lt!1626334 () Unit!82123)

(assert (=> b!4426906 (= e!2756416 lt!1626334)))

(declare-fun lt!1626341 () Unit!82123)

(assert (=> b!4426906 (= lt!1626341 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(assert (=> b!4426906 (isDefined!8025 (getValueByKey!719 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(declare-fun lt!1626336 () Unit!82123)

(assert (=> b!4426906 (= lt!1626336 lt!1626341)))

(assert (=> b!4426906 (= lt!1626334 (lemmaInListThenGetKeysListContains!253 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(assert (=> b!4426906 call!308026))

(declare-fun b!4426907 () Bool)

(assert (=> b!4426907 (= e!2756417 (not (contains!12121 (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717)))))

(declare-fun bm!308021 () Bool)

(assert (=> bm!308021 (= call!308026 (contains!12121 e!2756418 key!3717))))

(declare-fun c!753539 () Bool)

(assert (=> bm!308021 (= c!753539 c!753538)))

(declare-fun b!4426908 () Bool)

(assert (=> b!4426908 false))

(declare-fun lt!1626337 () Unit!82123)

(declare-fun lt!1626339 () Unit!82123)

(assert (=> b!4426908 (= lt!1626337 lt!1626339)))

(assert (=> b!4426908 (containsKey!1133 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717)))

(assert (=> b!4426908 (= lt!1626339 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(declare-fun Unit!82179 () Unit!82123)

(assert (=> b!4426908 (= e!2756414 Unit!82179)))

(assert (= (and d!1342066 c!753538) b!4426906))

(assert (= (and d!1342066 (not c!753538)) b!4426900))

(assert (= (and b!4426900 c!753540) b!4426908))

(assert (= (and b!4426900 (not c!753540)) b!4426905))

(assert (= (or b!4426906 b!4426900) bm!308021))

(assert (= (and bm!308021 c!753539) b!4426903))

(assert (= (and bm!308021 (not c!753539)) b!4426901))

(assert (= (and d!1342066 res!1830470) b!4426907))

(assert (= (and d!1342066 (not res!1830468)) b!4426904))

(assert (= (and b!4426904 res!1830469) b!4426902))

(declare-fun m!5108643 () Bool)

(assert (=> b!4426908 m!5108643))

(declare-fun m!5108645 () Bool)

(assert (=> b!4426908 m!5108645))

(assert (=> b!4426902 m!5108077))

(declare-fun m!5108647 () Bool)

(assert (=> b!4426902 m!5108647))

(assert (=> b!4426902 m!5108647))

(declare-fun m!5108649 () Bool)

(assert (=> b!4426902 m!5108649))

(assert (=> b!4426907 m!5108077))

(assert (=> b!4426907 m!5108647))

(assert (=> b!4426907 m!5108647))

(assert (=> b!4426907 m!5108649))

(declare-fun m!5108651 () Bool)

(assert (=> b!4426903 m!5108651))

(declare-fun m!5108653 () Bool)

(assert (=> b!4426904 m!5108653))

(assert (=> b!4426904 m!5108653))

(declare-fun m!5108655 () Bool)

(assert (=> b!4426904 m!5108655))

(assert (=> d!1342066 m!5108643))

(declare-fun m!5108657 () Bool)

(assert (=> bm!308021 m!5108657))

(assert (=> b!4426901 m!5108077))

(assert (=> b!4426901 m!5108647))

(declare-fun m!5108659 () Bool)

(assert (=> b!4426906 m!5108659))

(assert (=> b!4426906 m!5108653))

(assert (=> b!4426906 m!5108653))

(assert (=> b!4426906 m!5108655))

(declare-fun m!5108661 () Bool)

(assert (=> b!4426906 m!5108661))

(assert (=> b!4426665 d!1342066))

(declare-fun d!1342068 () Bool)

(declare-fun head!9232 (List!49730) tuple2!49416)

(assert (=> d!1342068 (= (head!9230 lm!1616) (head!9232 (toList!3505 lm!1616)))))

(declare-fun bs!757953 () Bool)

(assert (= bs!757953 d!1342068))

(declare-fun m!5108663 () Bool)

(assert (=> bs!757953 m!5108663))

(assert (=> b!4426665 d!1342068))

(declare-fun d!1342070 () Bool)

(declare-fun e!2756420 () Bool)

(assert (=> d!1342070 e!2756420))

(declare-fun res!1830471 () Bool)

(assert (=> d!1342070 (=> (not res!1830471) (not e!2756420))))

(declare-fun lt!1626343 () ListMap!2749)

(assert (=> d!1342070 (= res!1830471 (contains!12114 lt!1626343 (_1!28001 lt!1625974)))))

(declare-fun lt!1626345 () List!49729)

(assert (=> d!1342070 (= lt!1626343 (ListMap!2750 lt!1626345))))

(declare-fun lt!1626344 () Unit!82123)

(declare-fun lt!1626342 () Unit!82123)

(assert (=> d!1342070 (= lt!1626344 lt!1626342)))

(assert (=> d!1342070 (= (getValueByKey!719 lt!1626345 (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974)))))

(assert (=> d!1342070 (= lt!1626342 (lemmaContainsTupThenGetReturnValue!454 lt!1626345 (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(assert (=> d!1342070 (= lt!1626345 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625969) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(assert (=> d!1342070 (= (+!1103 lt!1625969 lt!1625974) lt!1626343)))

(declare-fun b!4426909 () Bool)

(declare-fun res!1830472 () Bool)

(assert (=> b!4426909 (=> (not res!1830472) (not e!2756420))))

(assert (=> b!4426909 (= res!1830472 (= (getValueByKey!719 (toList!3506 lt!1626343) (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974))))))

(declare-fun b!4426910 () Bool)

(assert (=> b!4426910 (= e!2756420 (contains!12118 (toList!3506 lt!1626343) lt!1625974))))

(assert (= (and d!1342070 res!1830471) b!4426909))

(assert (= (and b!4426909 res!1830472) b!4426910))

(declare-fun m!5108665 () Bool)

(assert (=> d!1342070 m!5108665))

(declare-fun m!5108667 () Bool)

(assert (=> d!1342070 m!5108667))

(declare-fun m!5108669 () Bool)

(assert (=> d!1342070 m!5108669))

(declare-fun m!5108671 () Bool)

(assert (=> d!1342070 m!5108671))

(declare-fun m!5108673 () Bool)

(assert (=> b!4426909 m!5108673))

(declare-fun m!5108675 () Bool)

(assert (=> b!4426910 m!5108675))

(assert (=> b!4426665 d!1342070))

(declare-fun d!1342072 () Bool)

(declare-fun res!1830473 () Bool)

(declare-fun e!2756421 () Bool)

(assert (=> d!1342072 (=> res!1830473 e!2756421)))

(assert (=> d!1342072 (= res!1830473 ((_ is Nil!49606) (toList!3505 lm!1616)))))

(assert (=> d!1342072 (= (forall!9576 (toList!3505 lm!1616) lambda!154244) e!2756421)))

(declare-fun b!4426911 () Bool)

(declare-fun e!2756422 () Bool)

(assert (=> b!4426911 (= e!2756421 e!2756422)))

(declare-fun res!1830474 () Bool)

(assert (=> b!4426911 (=> (not res!1830474) (not e!2756422))))

(assert (=> b!4426911 (= res!1830474 (dynLambda!20850 lambda!154244 (h!55295 (toList!3505 lm!1616))))))

(declare-fun b!4426912 () Bool)

(assert (=> b!4426912 (= e!2756422 (forall!9576 (t!356668 (toList!3505 lm!1616)) lambda!154244))))

(assert (= (and d!1342072 (not res!1830473)) b!4426911))

(assert (= (and b!4426911 res!1830474) b!4426912))

(declare-fun b_lambda!143227 () Bool)

(assert (=> (not b_lambda!143227) (not b!4426911)))

(declare-fun m!5108677 () Bool)

(assert (=> b!4426911 m!5108677))

(declare-fun m!5108679 () Bool)

(assert (=> b!4426912 m!5108679))

(assert (=> start!431936 d!1342072))

(declare-fun d!1342074 () Bool)

(declare-fun isStrictlySorted!236 (List!49730) Bool)

(assert (=> d!1342074 (= (inv!65156 lm!1616) (isStrictlySorted!236 (toList!3505 lm!1616)))))

(declare-fun bs!757954 () Bool)

(assert (= bs!757954 d!1342074))

(declare-fun m!5108681 () Bool)

(assert (=> bs!757954 m!5108681))

(assert (=> start!431936 d!1342074))

(declare-fun bs!757955 () Bool)

(declare-fun d!1342076 () Bool)

(assert (= bs!757955 (and d!1342076 d!1342044)))

(declare-fun lambda!154352 () Int)

(assert (=> bs!757955 (not (= lambda!154352 lambda!154344))))

(declare-fun bs!757956 () Bool)

(assert (= bs!757956 (and d!1342076 d!1342052)))

(assert (=> bs!757956 (not (= lambda!154352 lambda!154345))))

(declare-fun bs!757957 () Bool)

(assert (= bs!757957 (and d!1342076 d!1342058)))

(assert (=> bs!757957 (not (= lambda!154352 lambda!154348))))

(declare-fun bs!757958 () Bool)

(assert (= bs!757958 (and d!1342076 d!1342022)))

(assert (=> bs!757958 (not (= lambda!154352 lambda!154343))))

(declare-fun bs!757959 () Bool)

(assert (= bs!757959 (and d!1342076 start!431936)))

(assert (=> bs!757959 (not (= lambda!154352 lambda!154244))))

(declare-fun bs!757960 () Bool)

(assert (= bs!757960 (and d!1342076 d!1342062)))

(assert (=> bs!757960 (not (= lambda!154352 lambda!154349))))

(assert (=> d!1342076 true))

(assert (=> d!1342076 (= (allKeysSameHashInMap!865 lm!1616 hashF!1220) (forall!9576 (toList!3505 lm!1616) lambda!154352))))

(declare-fun bs!757961 () Bool)

(assert (= bs!757961 d!1342076))

(declare-fun m!5108683 () Bool)

(assert (=> bs!757961 m!5108683))

(assert (=> b!4426654 d!1342076))

(assert (=> b!4426667 d!1342072))

(declare-fun d!1342078 () Bool)

(declare-fun res!1830479 () Bool)

(declare-fun e!2756427 () Bool)

(assert (=> d!1342078 (=> res!1830479 e!2756427)))

(assert (=> d!1342078 (= res!1830479 (and ((_ is Cons!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))) (= (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) key!3717)))))

(assert (=> d!1342078 (= (containsKey!1130 (_2!28002 (h!55295 (toList!3505 lm!1616))) key!3717) e!2756427)))

(declare-fun b!4426919 () Bool)

(declare-fun e!2756428 () Bool)

(assert (=> b!4426919 (= e!2756427 e!2756428)))

(declare-fun res!1830480 () Bool)

(assert (=> b!4426919 (=> (not res!1830480) (not e!2756428))))

(assert (=> b!4426919 (= res!1830480 ((_ is Cons!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(declare-fun b!4426920 () Bool)

(assert (=> b!4426920 (= e!2756428 (containsKey!1130 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) key!3717))))

(assert (= (and d!1342078 (not res!1830479)) b!4426919))

(assert (= (and b!4426919 res!1830480) b!4426920))

(declare-fun m!5108685 () Bool)

(assert (=> b!4426920 m!5108685))

(assert (=> b!4426656 d!1342078))

(declare-fun d!1342080 () Bool)

(declare-fun res!1830481 () Bool)

(declare-fun e!2756429 () Bool)

(assert (=> d!1342080 (=> res!1830481 e!2756429)))

(assert (=> d!1342080 (= res!1830481 (and ((_ is Cons!49605) (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616))))) (= (_1!28001 (h!55294 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))))) key!3717)))))

(assert (=> d!1342080 (= (containsKey!1130 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))) key!3717) e!2756429)))

(declare-fun b!4426921 () Bool)

(declare-fun e!2756430 () Bool)

(assert (=> b!4426921 (= e!2756429 e!2756430)))

(declare-fun res!1830482 () Bool)

(assert (=> b!4426921 (=> (not res!1830482) (not e!2756430))))

(assert (=> b!4426921 (= res!1830482 ((_ is Cons!49605) (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun b!4426922 () Bool)

(assert (=> b!4426922 (= e!2756430 (containsKey!1130 (t!356667 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616))))) key!3717))))

(assert (= (and d!1342080 (not res!1830481)) b!4426921))

(assert (= (and b!4426921 res!1830482) b!4426922))

(declare-fun m!5108687 () Bool)

(assert (=> b!4426922 m!5108687))

(assert (=> b!4426656 d!1342080))

(declare-fun d!1342082 () Bool)

(declare-fun get!16168 (Option!10734) List!49729)

(assert (=> d!1342082 (= (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))) (get!16168 (getValueByKey!720 (toList!3505 lm!1616) (_1!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun bs!757962 () Bool)

(assert (= bs!757962 d!1342082))

(declare-fun m!5108689 () Bool)

(assert (=> bs!757962 m!5108689))

(assert (=> bs!757962 m!5108689))

(declare-fun m!5108691 () Bool)

(assert (=> bs!757962 m!5108691))

(assert (=> b!4426656 d!1342082))

(declare-fun bs!757963 () Bool)

(declare-fun d!1342084 () Bool)

(assert (= bs!757963 (and d!1342084 d!1342044)))

(declare-fun lambda!154355 () Int)

(assert (=> bs!757963 (= lambda!154355 lambda!154344)))

(declare-fun bs!757964 () Bool)

(assert (= bs!757964 (and d!1342084 d!1342058)))

(assert (=> bs!757964 (= lambda!154355 lambda!154348)))

(declare-fun bs!757965 () Bool)

(assert (= bs!757965 (and d!1342084 d!1342022)))

(assert (=> bs!757965 (= lambda!154355 lambda!154343)))

(declare-fun bs!757966 () Bool)

(assert (= bs!757966 (and d!1342084 start!431936)))

(assert (=> bs!757966 (= lambda!154355 lambda!154244)))

(declare-fun bs!757967 () Bool)

(assert (= bs!757967 (and d!1342084 d!1342062)))

(assert (=> bs!757967 (= lambda!154355 lambda!154349)))

(declare-fun bs!757968 () Bool)

(assert (= bs!757968 (and d!1342084 d!1342052)))

(assert (=> bs!757968 (= lambda!154355 lambda!154345)))

(declare-fun bs!757969 () Bool)

(assert (= bs!757969 (and d!1342084 d!1342076)))

(assert (=> bs!757969 (not (= lambda!154355 lambda!154352))))

(assert (=> d!1342084 (not (containsKey!1130 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))) key!3717))))

(declare-fun lt!1626348 () Unit!82123)

(declare-fun choose!27972 (ListLongMap!2155 K!10970 (_ BitVec 64) Hashable!5153) Unit!82123)

(assert (=> d!1342084 (= lt!1626348 (choose!27972 lm!1616 key!3717 (_1!28002 (h!55295 (toList!3505 lm!1616))) hashF!1220))))

(assert (=> d!1342084 (forall!9576 (toList!3505 lm!1616) lambda!154355)))

(assert (=> d!1342084 (= (lemmaNotSameHashThenCannotContainKey!138 lm!1616 key!3717 (_1!28002 (h!55295 (toList!3505 lm!1616))) hashF!1220) lt!1626348)))

(declare-fun bs!757970 () Bool)

(assert (= bs!757970 d!1342084))

(assert (=> bs!757970 m!5108099))

(assert (=> bs!757970 m!5108099))

(assert (=> bs!757970 m!5108101))

(declare-fun m!5108693 () Bool)

(assert (=> bs!757970 m!5108693))

(declare-fun m!5108695 () Bool)

(assert (=> bs!757970 m!5108695))

(assert (=> b!4426656 d!1342084))

(declare-fun d!1342086 () Bool)

(declare-fun e!2756436 () Bool)

(assert (=> d!1342086 e!2756436))

(declare-fun res!1830485 () Bool)

(assert (=> d!1342086 (=> res!1830485 e!2756436)))

(declare-fun lt!1626360 () Bool)

(assert (=> d!1342086 (= res!1830485 (not lt!1626360))))

(declare-fun lt!1626359 () Bool)

(assert (=> d!1342086 (= lt!1626360 lt!1626359)))

(declare-fun lt!1626357 () Unit!82123)

(declare-fun e!2756435 () Unit!82123)

(assert (=> d!1342086 (= lt!1626357 e!2756435)))

(declare-fun c!753543 () Bool)

(assert (=> d!1342086 (= c!753543 lt!1626359)))

(declare-fun containsKey!1134 (List!49730 (_ BitVec 64)) Bool)

(assert (=> d!1342086 (= lt!1626359 (containsKey!1134 (toList!3505 lm!1616) hash!366))))

(assert (=> d!1342086 (= (contains!12115 lm!1616 hash!366) lt!1626360)))

(declare-fun b!4426929 () Bool)

(declare-fun lt!1626358 () Unit!82123)

(assert (=> b!4426929 (= e!2756435 lt!1626358)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!629 (List!49730 (_ BitVec 64)) Unit!82123)

(assert (=> b!4426929 (= lt!1626358 (lemmaContainsKeyImpliesGetValueByKeyDefined!629 (toList!3505 lm!1616) hash!366))))

(declare-fun isDefined!8026 (Option!10734) Bool)

(assert (=> b!4426929 (isDefined!8026 (getValueByKey!720 (toList!3505 lm!1616) hash!366))))

(declare-fun b!4426930 () Bool)

(declare-fun Unit!82180 () Unit!82123)

(assert (=> b!4426930 (= e!2756435 Unit!82180)))

(declare-fun b!4426931 () Bool)

(assert (=> b!4426931 (= e!2756436 (isDefined!8026 (getValueByKey!720 (toList!3505 lm!1616) hash!366)))))

(assert (= (and d!1342086 c!753543) b!4426929))

(assert (= (and d!1342086 (not c!753543)) b!4426930))

(assert (= (and d!1342086 (not res!1830485)) b!4426931))

(declare-fun m!5108697 () Bool)

(assert (=> d!1342086 m!5108697))

(declare-fun m!5108699 () Bool)

(assert (=> b!4426929 m!5108699))

(declare-fun m!5108701 () Bool)

(assert (=> b!4426929 m!5108701))

(assert (=> b!4426929 m!5108701))

(declare-fun m!5108703 () Bool)

(assert (=> b!4426929 m!5108703))

(assert (=> b!4426931 m!5108701))

(assert (=> b!4426931 m!5108701))

(assert (=> b!4426931 m!5108703))

(assert (=> b!4426663 d!1342086))

(declare-fun bs!757971 () Bool)

(declare-fun d!1342088 () Bool)

(assert (= bs!757971 (and d!1342088 d!1342044)))

(declare-fun lambda!154358 () Int)

(assert (=> bs!757971 (= lambda!154358 lambda!154344)))

(declare-fun bs!757972 () Bool)

(assert (= bs!757972 (and d!1342088 d!1342058)))

(assert (=> bs!757972 (= lambda!154358 lambda!154348)))

(declare-fun bs!757973 () Bool)

(assert (= bs!757973 (and d!1342088 d!1342022)))

(assert (=> bs!757973 (= lambda!154358 lambda!154343)))

(declare-fun bs!757974 () Bool)

(assert (= bs!757974 (and d!1342088 start!431936)))

(assert (=> bs!757974 (= lambda!154358 lambda!154244)))

(declare-fun bs!757975 () Bool)

(assert (= bs!757975 (and d!1342088 d!1342062)))

(assert (=> bs!757975 (= lambda!154358 lambda!154349)))

(declare-fun bs!757976 () Bool)

(assert (= bs!757976 (and d!1342088 d!1342084)))

(assert (=> bs!757976 (= lambda!154358 lambda!154355)))

(declare-fun bs!757977 () Bool)

(assert (= bs!757977 (and d!1342088 d!1342052)))

(assert (=> bs!757977 (= lambda!154358 lambda!154345)))

(declare-fun bs!757978 () Bool)

(assert (= bs!757978 (and d!1342088 d!1342076)))

(assert (=> bs!757978 (not (= lambda!154358 lambda!154352))))

(assert (=> d!1342088 (contains!12114 (extractMap!820 (toList!3505 lm!1616)) key!3717)))

(declare-fun lt!1626363 () Unit!82123)

(declare-fun choose!27973 (ListLongMap!2155 K!10970 Hashable!5153) Unit!82123)

(assert (=> d!1342088 (= lt!1626363 (choose!27973 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1342088 (forall!9576 (toList!3505 lm!1616) lambda!154358)))

(assert (=> d!1342088 (= (lemmaExtractTailMapContainsThenExtractMapDoes!46 lm!1616 key!3717 hashF!1220) lt!1626363)))

(declare-fun bs!757979 () Bool)

(assert (= bs!757979 d!1342088))

(assert (=> bs!757979 m!5108035))

(assert (=> bs!757979 m!5108035))

(declare-fun m!5108705 () Bool)

(assert (=> bs!757979 m!5108705))

(declare-fun m!5108707 () Bool)

(assert (=> bs!757979 m!5108707))

(declare-fun m!5108709 () Bool)

(assert (=> bs!757979 m!5108709))

(assert (=> b!4426652 d!1342088))

(declare-fun d!1342090 () Bool)

(declare-fun res!1830490 () Bool)

(declare-fun e!2756441 () Bool)

(assert (=> d!1342090 (=> res!1830490 e!2756441)))

(assert (=> d!1342090 (= res!1830490 (not ((_ is Cons!49605) newBucket!194)))))

(assert (=> d!1342090 (= (noDuplicateKeys!759 newBucket!194) e!2756441)))

(declare-fun b!4426936 () Bool)

(declare-fun e!2756442 () Bool)

(assert (=> b!4426936 (= e!2756441 e!2756442)))

(declare-fun res!1830491 () Bool)

(assert (=> b!4426936 (=> (not res!1830491) (not e!2756442))))

(assert (=> b!4426936 (= res!1830491 (not (containsKey!1130 (t!356667 newBucket!194) (_1!28001 (h!55294 newBucket!194)))))))

(declare-fun b!4426937 () Bool)

(assert (=> b!4426937 (= e!2756442 (noDuplicateKeys!759 (t!356667 newBucket!194)))))

(assert (= (and d!1342090 (not res!1830490)) b!4426936))

(assert (= (and b!4426936 res!1830491) b!4426937))

(declare-fun m!5108711 () Bool)

(assert (=> b!4426936 m!5108711))

(declare-fun m!5108713 () Bool)

(assert (=> b!4426937 m!5108713))

(assert (=> b!4426651 d!1342090))

(declare-fun d!1342092 () Bool)

(assert (=> d!1342092 (= (apply!11611 lm!1616 hash!366) (get!16168 (getValueByKey!720 (toList!3505 lm!1616) hash!366)))))

(declare-fun bs!757980 () Bool)

(assert (= bs!757980 d!1342092))

(assert (=> bs!757980 m!5108701))

(assert (=> bs!757980 m!5108701))

(declare-fun m!5108715 () Bool)

(assert (=> bs!757980 m!5108715))

(assert (=> b!4426661 d!1342092))

(declare-fun b!4426942 () Bool)

(declare-fun tp!1333302 () Bool)

(declare-fun e!2756445 () Bool)

(assert (=> b!4426942 (= e!2756445 (and tp_is_empty!26283 tp_is_empty!26281 tp!1333302))))

(assert (=> b!4426664 (= tp!1333289 e!2756445)))

(assert (= (and b!4426664 ((_ is Cons!49605) (t!356667 newBucket!194))) b!4426942))

(declare-fun b!4426947 () Bool)

(declare-fun e!2756448 () Bool)

(declare-fun tp!1333307 () Bool)

(declare-fun tp!1333308 () Bool)

(assert (=> b!4426947 (= e!2756448 (and tp!1333307 tp!1333308))))

(assert (=> b!4426666 (= tp!1333290 e!2756448)))

(assert (= (and b!4426666 ((_ is Cons!49606) (toList!3505 lm!1616))) b!4426947))

(declare-fun b_lambda!143229 () Bool)

(assert (= b_lambda!143217 (or start!431936 b_lambda!143229)))

(declare-fun bs!757981 () Bool)

(declare-fun d!1342094 () Bool)

(assert (= bs!757981 (and d!1342094 start!431936)))

(assert (=> bs!757981 (= (dynLambda!20850 lambda!154244 (h!55295 (toList!3505 lt!1625976))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lt!1625976)))))))

(declare-fun m!5108717 () Bool)

(assert (=> bs!757981 m!5108717))

(assert (=> b!4426809 d!1342094))

(declare-fun b_lambda!143231 () Bool)

(assert (= b_lambda!143219 (or start!431936 b_lambda!143231)))

(declare-fun bs!757982 () Bool)

(declare-fun d!1342096 () Bool)

(assert (= bs!757982 (and d!1342096 start!431936)))

(assert (=> bs!757982 (= (dynLambda!20850 lambda!154244 (tuple2!49417 hash!366 newBucket!194)) (noDuplicateKeys!759 (_2!28002 (tuple2!49417 hash!366 newBucket!194))))))

(declare-fun m!5108719 () Bool)

(assert (=> bs!757982 m!5108719))

(assert (=> b!4426825 d!1342096))

(declare-fun b_lambda!143233 () Bool)

(assert (= b_lambda!143227 (or start!431936 b_lambda!143233)))

(declare-fun bs!757983 () Bool)

(declare-fun d!1342098 () Bool)

(assert (= bs!757983 (and d!1342098 start!431936)))

(assert (=> bs!757983 (= (dynLambda!20850 lambda!154244 (h!55295 (toList!3505 lm!1616))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> bs!757983 m!5108299))

(assert (=> b!4426911 d!1342098))

(check-sat (not b!4426792) (not d!1342052) (not d!1342054) (not b!4426920) (not b!4426896) (not d!1342014) (not b!4426903) (not d!1341958) (not d!1342086) (not b!4426852) (not b!4426936) (not d!1342084) (not d!1341988) (not bs!757983) (not d!1342060) (not d!1342068) (not d!1342062) (not b!4426912) (not b!4426816) (not b_lambda!143233) (not d!1341934) (not bm!308006) tp_is_empty!26281 (not d!1341932) (not b_lambda!143231) (not b!4426853) (not b!4426788) (not b!4426750) (not d!1342006) (not b!4426901) (not b!4426848) (not b!4426891) (not d!1342074) (not b!4426907) (not d!1342066) (not b!4426752) (not b!4426910) (not bs!757982) (not d!1341990) (not b!4426908) (not b!4426706) (not bm!308013) (not b!4426815) (not b!4426700) (not b!4426699) (not d!1341956) (not d!1341952) (not b!4426894) (not b!4426898) (not b!4426947) (not b!4426849) (not b!4426942) (not d!1341996) (not b!4426904) (not d!1341960) (not d!1341938) (not bm!308007) (not bm!308021) (not b!4426931) (not d!1342076) (not d!1342070) (not b!4426854) (not b!4426880) (not b!4426791) (not b!4426909) (not d!1342082) (not bm!308012) (not d!1342056) (not bm!308005) (not b!4426754) (not b!4426906) (not d!1341998) (not b!4426929) (not b!4426897) (not b!4426705) (not d!1342022) (not b!4426937) (not b!4426922) (not d!1342044) (not b_lambda!143229) (not bm!308011) (not b!4426902) (not d!1342008) (not b!4426850) (not b!4426753) (not b!4426847) (not b!4426810) (not d!1342058) (not b!4426790) (not bm!308019) (not bs!757981) tp_is_empty!26283 (not d!1342088) (not d!1341994) (not d!1342092))
(check-sat)
(get-model)

(declare-fun b!4426958 () Bool)

(declare-fun e!2756454 () Option!10733)

(assert (=> b!4426958 (= e!2756454 (getValueByKey!719 (t!356667 (toList!3506 lt!1626031)) (_1!28001 lt!1625974)))))

(declare-fun b!4426957 () Bool)

(declare-fun e!2756453 () Option!10733)

(assert (=> b!4426957 (= e!2756453 e!2756454)))

(declare-fun c!753549 () Bool)

(assert (=> b!4426957 (= c!753549 (and ((_ is Cons!49605) (toList!3506 lt!1626031)) (not (= (_1!28001 (h!55294 (toList!3506 lt!1626031))) (_1!28001 lt!1625974)))))))

(declare-fun d!1342100 () Bool)

(declare-fun c!753548 () Bool)

(assert (=> d!1342100 (= c!753548 (and ((_ is Cons!49605) (toList!3506 lt!1626031)) (= (_1!28001 (h!55294 (toList!3506 lt!1626031))) (_1!28001 lt!1625974))))))

(assert (=> d!1342100 (= (getValueByKey!719 (toList!3506 lt!1626031) (_1!28001 lt!1625974)) e!2756453)))

(declare-fun b!4426956 () Bool)

(assert (=> b!4426956 (= e!2756453 (Some!10732 (_2!28001 (h!55294 (toList!3506 lt!1626031)))))))

(declare-fun b!4426959 () Bool)

(assert (=> b!4426959 (= e!2756454 None!10732)))

(assert (= (and d!1342100 c!753548) b!4426956))

(assert (= (and d!1342100 (not c!753548)) b!4426957))

(assert (= (and b!4426957 c!753549) b!4426958))

(assert (= (and b!4426957 (not c!753549)) b!4426959))

(declare-fun m!5108721 () Bool)

(assert (=> b!4426958 m!5108721))

(assert (=> b!4426705 d!1342100))

(declare-fun d!1342102 () Bool)

(declare-fun res!1830492 () Bool)

(declare-fun e!2756455 () Bool)

(assert (=> d!1342102 (=> res!1830492 e!2756455)))

(assert (=> d!1342102 (= res!1830492 (not ((_ is Cons!49605) (t!356667 newBucket!194))))))

(assert (=> d!1342102 (= (noDuplicateKeys!759 (t!356667 newBucket!194)) e!2756455)))

(declare-fun b!4426960 () Bool)

(declare-fun e!2756456 () Bool)

(assert (=> b!4426960 (= e!2756455 e!2756456)))

(declare-fun res!1830493 () Bool)

(assert (=> b!4426960 (=> (not res!1830493) (not e!2756456))))

(assert (=> b!4426960 (= res!1830493 (not (containsKey!1130 (t!356667 (t!356667 newBucket!194)) (_1!28001 (h!55294 (t!356667 newBucket!194))))))))

(declare-fun b!4426961 () Bool)

(assert (=> b!4426961 (= e!2756456 (noDuplicateKeys!759 (t!356667 (t!356667 newBucket!194))))))

(assert (= (and d!1342102 (not res!1830492)) b!4426960))

(assert (= (and b!4426960 res!1830493) b!4426961))

(declare-fun m!5108723 () Bool)

(assert (=> b!4426960 m!5108723))

(declare-fun m!5108725 () Bool)

(assert (=> b!4426961 m!5108725))

(assert (=> b!4426937 d!1342102))

(declare-fun d!1342104 () Bool)

(declare-fun lt!1626366 () Bool)

(declare-fun content!7963 (List!49732) (InoxSet K!10970))

(assert (=> d!1342104 (= lt!1626366 (select (content!7963 e!2756389) key!3717))))

(declare-fun e!2756461 () Bool)

(assert (=> d!1342104 (= lt!1626366 e!2756461)))

(declare-fun res!1830498 () Bool)

(assert (=> d!1342104 (=> (not res!1830498) (not e!2756461))))

(assert (=> d!1342104 (= res!1830498 ((_ is Cons!49608) e!2756389))))

(assert (=> d!1342104 (= (contains!12121 e!2756389 key!3717) lt!1626366)))

(declare-fun b!4426966 () Bool)

(declare-fun e!2756462 () Bool)

(assert (=> b!4426966 (= e!2756461 e!2756462)))

(declare-fun res!1830499 () Bool)

(assert (=> b!4426966 (=> res!1830499 e!2756462)))

(assert (=> b!4426966 (= res!1830499 (= (h!55299 e!2756389) key!3717))))

(declare-fun b!4426967 () Bool)

(assert (=> b!4426967 (= e!2756462 (contains!12121 (t!356670 e!2756389) key!3717))))

(assert (= (and d!1342104 res!1830498) b!4426966))

(assert (= (and b!4426966 (not res!1830499)) b!4426967))

(declare-fun m!5108727 () Bool)

(assert (=> d!1342104 m!5108727))

(declare-fun m!5108729 () Bool)

(assert (=> d!1342104 m!5108729))

(declare-fun m!5108731 () Bool)

(assert (=> b!4426967 m!5108731))

(assert (=> bm!308019 d!1342104))

(declare-fun d!1342106 () Bool)

(declare-fun res!1830504 () Bool)

(declare-fun e!2756467 () Bool)

(assert (=> d!1342106 (=> res!1830504 e!2756467)))

(assert (=> d!1342106 (= res!1830504 ((_ is Nil!49605) (toList!3506 lt!1625969)))))

(assert (=> d!1342106 (= (forall!9578 (toList!3506 lt!1625969) lambda!154320) e!2756467)))

(declare-fun b!4426972 () Bool)

(declare-fun e!2756468 () Bool)

(assert (=> b!4426972 (= e!2756467 e!2756468)))

(declare-fun res!1830505 () Bool)

(assert (=> b!4426972 (=> (not res!1830505) (not e!2756468))))

(declare-fun dynLambda!20851 (Int tuple2!49414) Bool)

(assert (=> b!4426972 (= res!1830505 (dynLambda!20851 lambda!154320 (h!55294 (toList!3506 lt!1625969))))))

(declare-fun b!4426973 () Bool)

(assert (=> b!4426973 (= e!2756468 (forall!9578 (t!356667 (toList!3506 lt!1625969)) lambda!154320))))

(assert (= (and d!1342106 (not res!1830504)) b!4426972))

(assert (= (and b!4426972 res!1830505) b!4426973))

(declare-fun b_lambda!143235 () Bool)

(assert (=> (not b_lambda!143235) (not b!4426972)))

(declare-fun m!5108733 () Bool)

(assert (=> b!4426972 m!5108733))

(declare-fun m!5108735 () Bool)

(assert (=> b!4426973 m!5108735))

(assert (=> b!4426788 d!1342106))

(declare-fun d!1342108 () Bool)

(declare-fun res!1830510 () Bool)

(declare-fun e!2756473 () Bool)

(assert (=> d!1342108 (=> res!1830510 e!2756473)))

(assert (=> d!1342108 (= res!1830510 (and ((_ is Cons!49605) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= (_1!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) key!3717)))))

(assert (=> d!1342108 (= (containsKey!1133 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717) e!2756473)))

(declare-fun b!4426978 () Bool)

(declare-fun e!2756474 () Bool)

(assert (=> b!4426978 (= e!2756473 e!2756474)))

(declare-fun res!1830511 () Bool)

(assert (=> b!4426978 (=> (not res!1830511) (not e!2756474))))

(assert (=> b!4426978 (= res!1830511 ((_ is Cons!49605) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))

(declare-fun b!4426979 () Bool)

(assert (=> b!4426979 (= e!2756474 (containsKey!1133 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) key!3717))))

(assert (= (and d!1342108 (not res!1830510)) b!4426978))

(assert (= (and b!4426978 res!1830511) b!4426979))

(declare-fun m!5108737 () Bool)

(assert (=> b!4426979 m!5108737))

(assert (=> b!4426908 d!1342108))

(declare-fun d!1342110 () Bool)

(assert (=> d!1342110 (containsKey!1133 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717)))

(declare-fun lt!1626369 () Unit!82123)

(declare-fun choose!27974 (List!49729 K!10970) Unit!82123)

(assert (=> d!1342110 (= lt!1626369 (choose!27974 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(assert (=> d!1342110 (invariantList!809 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))

(assert (=> d!1342110 (= (lemmaInGetKeysListThenContainsKey!254 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717) lt!1626369)))

(declare-fun bs!757984 () Bool)

(assert (= bs!757984 d!1342110))

(assert (=> bs!757984 m!5108643))

(declare-fun m!5108739 () Bool)

(assert (=> bs!757984 m!5108739))

(declare-fun m!5108741 () Bool)

(assert (=> bs!757984 m!5108741))

(assert (=> b!4426908 d!1342110))

(declare-fun d!1342112 () Bool)

(declare-fun res!1830512 () Bool)

(declare-fun e!2756475 () Bool)

(assert (=> d!1342112 (=> res!1830512 e!2756475)))

(assert (=> d!1342112 (= res!1830512 (and ((_ is Cons!49605) (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (= (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) key!3717)))))

(assert (=> d!1342112 (= (containsKey!1130 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) key!3717) e!2756475)))

(declare-fun b!4426980 () Bool)

(declare-fun e!2756476 () Bool)

(assert (=> b!4426980 (= e!2756475 e!2756476)))

(declare-fun res!1830513 () Bool)

(assert (=> b!4426980 (=> (not res!1830513) (not e!2756476))))

(assert (=> b!4426980 (= res!1830513 ((_ is Cons!49605) (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun b!4426981 () Bool)

(assert (=> b!4426981 (= e!2756476 (containsKey!1130 (t!356667 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) key!3717))))

(assert (= (and d!1342112 (not res!1830512)) b!4426980))

(assert (= (and b!4426980 res!1830513) b!4426981))

(declare-fun m!5108743 () Bool)

(assert (=> b!4426981 m!5108743))

(assert (=> b!4426920 d!1342112))

(declare-fun d!1342114 () Bool)

(declare-fun isEmpty!28352 (Option!10733) Bool)

(assert (=> d!1342114 (= (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1625981) key!3717)) (not (isEmpty!28352 (getValueByKey!719 (toList!3506 lt!1625981) key!3717))))))

(declare-fun bs!757985 () Bool)

(assert (= bs!757985 d!1342114))

(assert (=> bs!757985 m!5108503))

(declare-fun m!5108745 () Bool)

(assert (=> bs!757985 m!5108745))

(assert (=> b!4426850 d!1342114))

(declare-fun b!4426984 () Bool)

(declare-fun e!2756478 () Option!10733)

(assert (=> b!4426984 (= e!2756478 (getValueByKey!719 (t!356667 (toList!3506 lt!1625981)) key!3717))))

(declare-fun b!4426983 () Bool)

(declare-fun e!2756477 () Option!10733)

(assert (=> b!4426983 (= e!2756477 e!2756478)))

(declare-fun c!753551 () Bool)

(assert (=> b!4426983 (= c!753551 (and ((_ is Cons!49605) (toList!3506 lt!1625981)) (not (= (_1!28001 (h!55294 (toList!3506 lt!1625981))) key!3717))))))

(declare-fun d!1342116 () Bool)

(declare-fun c!753550 () Bool)

(assert (=> d!1342116 (= c!753550 (and ((_ is Cons!49605) (toList!3506 lt!1625981)) (= (_1!28001 (h!55294 (toList!3506 lt!1625981))) key!3717)))))

(assert (=> d!1342116 (= (getValueByKey!719 (toList!3506 lt!1625981) key!3717) e!2756477)))

(declare-fun b!4426982 () Bool)

(assert (=> b!4426982 (= e!2756477 (Some!10732 (_2!28001 (h!55294 (toList!3506 lt!1625981)))))))

(declare-fun b!4426985 () Bool)

(assert (=> b!4426985 (= e!2756478 None!10732)))

(assert (= (and d!1342116 c!753550) b!4426982))

(assert (= (and d!1342116 (not c!753550)) b!4426983))

(assert (= (and b!4426983 c!753551) b!4426984))

(assert (= (and b!4426983 (not c!753551)) b!4426985))

(declare-fun m!5108747 () Bool)

(assert (=> b!4426984 m!5108747))

(assert (=> b!4426850 d!1342116))

(declare-fun d!1342118 () Bool)

(declare-fun res!1830514 () Bool)

(declare-fun e!2756479 () Bool)

(assert (=> d!1342118 (=> res!1830514 e!2756479)))

(assert (=> d!1342118 (= res!1830514 (not ((_ is Cons!49605) (_2!28002 (tuple2!49417 hash!366 newBucket!194)))))))

(assert (=> d!1342118 (= (noDuplicateKeys!759 (_2!28002 (tuple2!49417 hash!366 newBucket!194))) e!2756479)))

(declare-fun b!4426986 () Bool)

(declare-fun e!2756480 () Bool)

(assert (=> b!4426986 (= e!2756479 e!2756480)))

(declare-fun res!1830515 () Bool)

(assert (=> b!4426986 (=> (not res!1830515) (not e!2756480))))

(assert (=> b!4426986 (= res!1830515 (not (containsKey!1130 (t!356667 (_2!28002 (tuple2!49417 hash!366 newBucket!194))) (_1!28001 (h!55294 (_2!28002 (tuple2!49417 hash!366 newBucket!194)))))))))

(declare-fun b!4426987 () Bool)

(assert (=> b!4426987 (= e!2756480 (noDuplicateKeys!759 (t!356667 (_2!28002 (tuple2!49417 hash!366 newBucket!194)))))))

(assert (= (and d!1342118 (not res!1830514)) b!4426986))

(assert (= (and b!4426986 res!1830515) b!4426987))

(declare-fun m!5108749 () Bool)

(assert (=> b!4426986 m!5108749))

(declare-fun m!5108751 () Bool)

(assert (=> b!4426987 m!5108751))

(assert (=> bs!757982 d!1342118))

(declare-fun d!1342120 () Bool)

(declare-fun res!1830516 () Bool)

(declare-fun e!2756481 () Bool)

(assert (=> d!1342120 (=> res!1830516 e!2756481)))

(assert (=> d!1342120 (= res!1830516 ((_ is Nil!49606) (t!356668 (toList!3505 lm!1616))))))

(assert (=> d!1342120 (= (forall!9576 (t!356668 (toList!3505 lm!1616)) lambda!154244) e!2756481)))

(declare-fun b!4426988 () Bool)

(declare-fun e!2756482 () Bool)

(assert (=> b!4426988 (= e!2756481 e!2756482)))

(declare-fun res!1830517 () Bool)

(assert (=> b!4426988 (=> (not res!1830517) (not e!2756482))))

(assert (=> b!4426988 (= res!1830517 (dynLambda!20850 lambda!154244 (h!55295 (t!356668 (toList!3505 lm!1616)))))))

(declare-fun b!4426989 () Bool)

(assert (=> b!4426989 (= e!2756482 (forall!9576 (t!356668 (t!356668 (toList!3505 lm!1616))) lambda!154244))))

(assert (= (and d!1342120 (not res!1830516)) b!4426988))

(assert (= (and b!4426988 res!1830517) b!4426989))

(declare-fun b_lambda!143237 () Bool)

(assert (=> (not b_lambda!143237) (not b!4426988)))

(declare-fun m!5108753 () Bool)

(assert (=> b!4426988 m!5108753))

(declare-fun m!5108755 () Bool)

(assert (=> b!4426989 m!5108755))

(assert (=> b!4426912 d!1342120))

(declare-fun d!1342122 () Bool)

(declare-fun res!1830522 () Bool)

(declare-fun e!2756487 () Bool)

(assert (=> d!1342122 (=> res!1830522 e!2756487)))

(assert (=> d!1342122 (= res!1830522 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (= (_1!28002 (h!55295 (toList!3505 lm!1616))) hash!366)))))

(assert (=> d!1342122 (= (containsKey!1134 (toList!3505 lm!1616) hash!366) e!2756487)))

(declare-fun b!4426994 () Bool)

(declare-fun e!2756488 () Bool)

(assert (=> b!4426994 (= e!2756487 e!2756488)))

(declare-fun res!1830523 () Bool)

(assert (=> b!4426994 (=> (not res!1830523) (not e!2756488))))

(assert (=> b!4426994 (= res!1830523 (and (or (not ((_ is Cons!49606) (toList!3505 lm!1616))) (bvsle (_1!28002 (h!55295 (toList!3505 lm!1616))) hash!366)) ((_ is Cons!49606) (toList!3505 lm!1616)) (bvslt (_1!28002 (h!55295 (toList!3505 lm!1616))) hash!366)))))

(declare-fun b!4426995 () Bool)

(assert (=> b!4426995 (= e!2756488 (containsKey!1134 (t!356668 (toList!3505 lm!1616)) hash!366))))

(assert (= (and d!1342122 (not res!1830522)) b!4426994))

(assert (= (and b!4426994 res!1830523) b!4426995))

(declare-fun m!5108757 () Bool)

(assert (=> b!4426995 m!5108757))

(assert (=> d!1342086 d!1342122))

(declare-fun bs!757986 () Bool)

(declare-fun b!4426997 () Bool)

(assert (= bs!757986 (and b!4426997 b!4426790)))

(declare-fun lambda!154359 () Int)

(assert (=> bs!757986 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626212) (= lambda!154359 lambda!154320))))

(declare-fun bs!757987 () Bool)

(assert (= bs!757987 (and b!4426997 b!4426751)))

(assert (=> bs!757987 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625979) (= lambda!154359 lambda!154311))))

(declare-fun bs!757988 () Bool)

(assert (= bs!757988 (and b!4426997 d!1341994)))

(assert (=> bs!757988 (not (= lambda!154359 lambda!154317))))

(declare-fun bs!757989 () Bool)

(assert (= bs!757989 (and b!4426997 d!1341960)))

(assert (=> bs!757989 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626165) (= lambda!154359 lambda!154314))))

(declare-fun bs!757990 () Bool)

(assert (= bs!757990 (and b!4426997 d!1341998)))

(assert (=> bs!757990 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626213) (= lambda!154359 lambda!154321))))

(assert (=> bs!757986 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625969) (= lambda!154359 lambda!154319))))

(declare-fun bs!757991 () Bool)

(assert (= bs!757991 (and b!4426997 b!4426752)))

(assert (=> bs!757991 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626164) (= lambda!154359 lambda!154313))))

(declare-fun bs!757992 () Bool)

(assert (= bs!757992 (and b!4426997 b!4426789)))

(assert (=> bs!757992 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625969) (= lambda!154359 lambda!154318))))

(assert (=> bs!757991 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625979) (= lambda!154359 lambda!154312))))

(assert (=> b!4426997 true))

(declare-fun bs!757993 () Bool)

(declare-fun b!4426998 () Bool)

(assert (= bs!757993 (and b!4426998 b!4426790)))

(declare-fun lambda!154360 () Int)

(assert (=> bs!757993 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626212) (= lambda!154360 lambda!154320))))

(declare-fun bs!757994 () Bool)

(assert (= bs!757994 (and b!4426998 b!4426751)))

(assert (=> bs!757994 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625979) (= lambda!154360 lambda!154311))))

(declare-fun bs!757995 () Bool)

(assert (= bs!757995 (and b!4426998 d!1341994)))

(assert (=> bs!757995 (not (= lambda!154360 lambda!154317))))

(declare-fun bs!757996 () Bool)

(assert (= bs!757996 (and b!4426998 d!1341960)))

(assert (=> bs!757996 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626165) (= lambda!154360 lambda!154314))))

(declare-fun bs!757997 () Bool)

(assert (= bs!757997 (and b!4426998 d!1341998)))

(assert (=> bs!757997 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626213) (= lambda!154360 lambda!154321))))

(declare-fun bs!757998 () Bool)

(assert (= bs!757998 (and b!4426998 b!4426997)))

(assert (=> bs!757998 (= lambda!154360 lambda!154359)))

(assert (=> bs!757993 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625969) (= lambda!154360 lambda!154319))))

(declare-fun bs!757999 () Bool)

(assert (= bs!757999 (and b!4426998 b!4426752)))

(assert (=> bs!757999 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626164) (= lambda!154360 lambda!154313))))

(declare-fun bs!758000 () Bool)

(assert (= bs!758000 (and b!4426998 b!4426789)))

(assert (=> bs!758000 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625969) (= lambda!154360 lambda!154318))))

(assert (=> bs!757999 (= (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1625979) (= lambda!154360 lambda!154312))))

(assert (=> b!4426998 true))

(declare-fun lambda!154361 () Int)

(declare-fun lt!1626370 () ListMap!2749)

(assert (=> bs!757993 (= (= lt!1626370 lt!1626212) (= lambda!154361 lambda!154320))))

(assert (=> b!4426998 (= (= lt!1626370 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154361 lambda!154360))))

(assert (=> bs!757994 (= (= lt!1626370 lt!1625979) (= lambda!154361 lambda!154311))))

(assert (=> bs!757995 (not (= lambda!154361 lambda!154317))))

(assert (=> bs!757996 (= (= lt!1626370 lt!1626165) (= lambda!154361 lambda!154314))))

(assert (=> bs!757997 (= (= lt!1626370 lt!1626213) (= lambda!154361 lambda!154321))))

(assert (=> bs!757998 (= (= lt!1626370 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154361 lambda!154359))))

(assert (=> bs!757993 (= (= lt!1626370 lt!1625969) (= lambda!154361 lambda!154319))))

(assert (=> bs!757999 (= (= lt!1626370 lt!1626164) (= lambda!154361 lambda!154313))))

(assert (=> bs!758000 (= (= lt!1626370 lt!1625969) (= lambda!154361 lambda!154318))))

(assert (=> bs!757999 (= (= lt!1626370 lt!1625979) (= lambda!154361 lambda!154312))))

(assert (=> b!4426998 true))

(declare-fun bs!758001 () Bool)

(declare-fun d!1342124 () Bool)

(assert (= bs!758001 (and d!1342124 b!4426790)))

(declare-fun lambda!154362 () Int)

(declare-fun lt!1626371 () ListMap!2749)

(assert (=> bs!758001 (= (= lt!1626371 lt!1626212) (= lambda!154362 lambda!154320))))

(declare-fun bs!758002 () Bool)

(assert (= bs!758002 (and d!1342124 b!4426998)))

(assert (=> bs!758002 (= (= lt!1626371 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154362 lambda!154360))))

(declare-fun bs!758003 () Bool)

(assert (= bs!758003 (and d!1342124 b!4426751)))

(assert (=> bs!758003 (= (= lt!1626371 lt!1625979) (= lambda!154362 lambda!154311))))

(assert (=> bs!758002 (= (= lt!1626371 lt!1626370) (= lambda!154362 lambda!154361))))

(declare-fun bs!758004 () Bool)

(assert (= bs!758004 (and d!1342124 d!1341994)))

(assert (=> bs!758004 (not (= lambda!154362 lambda!154317))))

(declare-fun bs!758005 () Bool)

(assert (= bs!758005 (and d!1342124 d!1341960)))

(assert (=> bs!758005 (= (= lt!1626371 lt!1626165) (= lambda!154362 lambda!154314))))

(declare-fun bs!758006 () Bool)

(assert (= bs!758006 (and d!1342124 d!1341998)))

(assert (=> bs!758006 (= (= lt!1626371 lt!1626213) (= lambda!154362 lambda!154321))))

(declare-fun bs!758007 () Bool)

(assert (= bs!758007 (and d!1342124 b!4426997)))

(assert (=> bs!758007 (= (= lt!1626371 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154362 lambda!154359))))

(assert (=> bs!758001 (= (= lt!1626371 lt!1625969) (= lambda!154362 lambda!154319))))

(declare-fun bs!758008 () Bool)

(assert (= bs!758008 (and d!1342124 b!4426752)))

(assert (=> bs!758008 (= (= lt!1626371 lt!1626164) (= lambda!154362 lambda!154313))))

(declare-fun bs!758009 () Bool)

(assert (= bs!758009 (and d!1342124 b!4426789)))

(assert (=> bs!758009 (= (= lt!1626371 lt!1625969) (= lambda!154362 lambda!154318))))

(assert (=> bs!758008 (= (= lt!1626371 lt!1625979) (= lambda!154362 lambda!154312))))

(assert (=> d!1342124 true))

(declare-fun e!2756490 () Bool)

(assert (=> d!1342124 e!2756490))

(declare-fun res!1830524 () Bool)

(assert (=> d!1342124 (=> (not res!1830524) (not e!2756490))))

(assert (=> d!1342124 (= res!1830524 (forall!9578 (_2!28002 (h!55295 (toList!3505 lt!1625987))) lambda!154362))))

(declare-fun e!2756489 () ListMap!2749)

(assert (=> d!1342124 (= lt!1626371 e!2756489)))

(declare-fun c!753552 () Bool)

(assert (=> d!1342124 (= c!753552 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lt!1625987)))))))

(assert (=> d!1342124 (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lt!1625987))))))

(assert (=> d!1342124 (= (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lt!1625987))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) lt!1626371)))

(declare-fun b!4426996 () Bool)

(declare-fun e!2756491 () Bool)

(assert (=> b!4426996 (= e!2756491 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) lambda!154361))))

(assert (=> b!4426997 (= e!2756489 (extractMap!820 (t!356668 (toList!3505 lt!1625987))))))

(declare-fun lt!1626384 () Unit!82123)

(declare-fun call!308027 () Unit!82123)

(assert (=> b!4426997 (= lt!1626384 call!308027)))

(declare-fun call!308029 () Bool)

(assert (=> b!4426997 call!308029))

(declare-fun lt!1626377 () Unit!82123)

(assert (=> b!4426997 (= lt!1626377 lt!1626384)))

(declare-fun call!308028 () Bool)

(assert (=> b!4426997 call!308028))

(declare-fun lt!1626383 () Unit!82123)

(declare-fun Unit!82181 () Unit!82123)

(assert (=> b!4426997 (= lt!1626383 Unit!82181)))

(declare-fun bm!308022 () Bool)

(assert (=> bm!308022 (= call!308029 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (ite c!753552 lambda!154359 lambda!154360)))))

(declare-fun bm!308023 () Bool)

(assert (=> bm!308023 (= call!308027 (lemmaContainsAllItsOwnKeys!177 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))))))

(assert (=> b!4426998 (= e!2756489 lt!1626370)))

(declare-fun lt!1626390 () ListMap!2749)

(assert (=> b!4426998 (= lt!1626390 (+!1103 (extractMap!820 (t!356668 (toList!3505 lt!1625987))) (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625987))))))))

(assert (=> b!4426998 (= lt!1626370 (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 lt!1625987)))) (+!1103 (extractMap!820 (t!356668 (toList!3505 lt!1625987))) (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625987)))))))))

(declare-fun lt!1626386 () Unit!82123)

(assert (=> b!4426998 (= lt!1626386 call!308027)))

(assert (=> b!4426998 call!308029))

(declare-fun lt!1626388 () Unit!82123)

(assert (=> b!4426998 (= lt!1626388 lt!1626386)))

(assert (=> b!4426998 (forall!9578 (toList!3506 lt!1626390) lambda!154361)))

(declare-fun lt!1626375 () Unit!82123)

(declare-fun Unit!82182 () Unit!82123)

(assert (=> b!4426998 (= lt!1626375 Unit!82182)))

(assert (=> b!4426998 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lt!1625987)))) lambda!154361)))

(declare-fun lt!1626374 () Unit!82123)

(declare-fun Unit!82183 () Unit!82123)

(assert (=> b!4426998 (= lt!1626374 Unit!82183)))

(declare-fun lt!1626382 () Unit!82123)

(declare-fun Unit!82184 () Unit!82123)

(assert (=> b!4426998 (= lt!1626382 Unit!82184)))

(declare-fun lt!1626387 () Unit!82123)

(assert (=> b!4426998 (= lt!1626387 (forallContained!2097 (toList!3506 lt!1626390) lambda!154361 (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625987))))))))

(assert (=> b!4426998 (contains!12114 lt!1626390 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625987))))))))

(declare-fun lt!1626376 () Unit!82123)

(declare-fun Unit!82185 () Unit!82123)

(assert (=> b!4426998 (= lt!1626376 Unit!82185)))

(assert (=> b!4426998 (contains!12114 lt!1626370 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625987))))))))

(declare-fun lt!1626380 () Unit!82123)

(declare-fun Unit!82186 () Unit!82123)

(assert (=> b!4426998 (= lt!1626380 Unit!82186)))

(assert (=> b!4426998 (forall!9578 (_2!28002 (h!55295 (toList!3505 lt!1625987))) lambda!154361)))

(declare-fun lt!1626378 () Unit!82123)

(declare-fun Unit!82187 () Unit!82123)

(assert (=> b!4426998 (= lt!1626378 Unit!82187)))

(assert (=> b!4426998 (forall!9578 (toList!3506 lt!1626390) lambda!154361)))

(declare-fun lt!1626381 () Unit!82123)

(declare-fun Unit!82188 () Unit!82123)

(assert (=> b!4426998 (= lt!1626381 Unit!82188)))

(declare-fun lt!1626379 () Unit!82123)

(declare-fun Unit!82189 () Unit!82123)

(assert (=> b!4426998 (= lt!1626379 Unit!82189)))

(declare-fun lt!1626389 () Unit!82123)

(assert (=> b!4426998 (= lt!1626389 (addForallContainsKeyThenBeforeAdding!177 (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626370 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625987))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625987)))))))))

(assert (=> b!4426998 call!308028))

(declare-fun lt!1626372 () Unit!82123)

(assert (=> b!4426998 (= lt!1626372 lt!1626389)))

(assert (=> b!4426998 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) lambda!154361)))

(declare-fun lt!1626373 () Unit!82123)

(declare-fun Unit!82190 () Unit!82123)

(assert (=> b!4426998 (= lt!1626373 Unit!82190)))

(declare-fun res!1830525 () Bool)

(assert (=> b!4426998 (= res!1830525 (forall!9578 (_2!28002 (h!55295 (toList!3505 lt!1625987))) lambda!154361))))

(assert (=> b!4426998 (=> (not res!1830525) (not e!2756491))))

(assert (=> b!4426998 e!2756491))

(declare-fun lt!1626385 () Unit!82123)

(declare-fun Unit!82191 () Unit!82123)

(assert (=> b!4426998 (= lt!1626385 Unit!82191)))

(declare-fun b!4426999 () Bool)

(assert (=> b!4426999 (= e!2756490 (invariantList!809 (toList!3506 lt!1626371)))))

(declare-fun b!4427000 () Bool)

(declare-fun res!1830526 () Bool)

(assert (=> b!4427000 (=> (not res!1830526) (not e!2756490))))

(assert (=> b!4427000 (= res!1830526 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) lambda!154362))))

(declare-fun bm!308024 () Bool)

(assert (=> bm!308024 (= call!308028 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (ite c!753552 lambda!154359 lambda!154361)))))

(assert (= (and d!1342124 c!753552) b!4426997))

(assert (= (and d!1342124 (not c!753552)) b!4426998))

(assert (= (and b!4426998 res!1830525) b!4426996))

(assert (= (or b!4426997 b!4426998) bm!308023))

(assert (= (or b!4426997 b!4426998) bm!308022))

(assert (= (or b!4426997 b!4426998) bm!308024))

(assert (= (and d!1342124 res!1830524) b!4427000))

(assert (= (and b!4427000 res!1830526) b!4426999))

(assert (=> bm!308023 m!5108593))

(declare-fun m!5108759 () Bool)

(assert (=> bm!308023 m!5108759))

(declare-fun m!5108761 () Bool)

(assert (=> bm!308024 m!5108761))

(declare-fun m!5108763 () Bool)

(assert (=> bm!308022 m!5108763))

(declare-fun m!5108765 () Bool)

(assert (=> b!4427000 m!5108765))

(declare-fun m!5108767 () Bool)

(assert (=> b!4426996 m!5108767))

(declare-fun m!5108769 () Bool)

(assert (=> d!1342124 m!5108769))

(declare-fun m!5108771 () Bool)

(assert (=> d!1342124 m!5108771))

(declare-fun m!5108773 () Bool)

(assert (=> b!4426999 m!5108773))

(declare-fun m!5108775 () Bool)

(assert (=> b!4426998 m!5108775))

(declare-fun m!5108777 () Bool)

(assert (=> b!4426998 m!5108777))

(assert (=> b!4426998 m!5108775))

(declare-fun m!5108779 () Bool)

(assert (=> b!4426998 m!5108779))

(assert (=> b!4426998 m!5108767))

(declare-fun m!5108781 () Bool)

(assert (=> b!4426998 m!5108781))

(declare-fun m!5108783 () Bool)

(assert (=> b!4426998 m!5108783))

(assert (=> b!4426998 m!5108593))

(declare-fun m!5108785 () Bool)

(assert (=> b!4426998 m!5108785))

(assert (=> b!4426998 m!5108781))

(declare-fun m!5108787 () Bool)

(assert (=> b!4426998 m!5108787))

(declare-fun m!5108789 () Bool)

(assert (=> b!4426998 m!5108789))

(declare-fun m!5108791 () Bool)

(assert (=> b!4426998 m!5108791))

(assert (=> b!4426998 m!5108593))

(assert (=> b!4426998 m!5108787))

(assert (=> b!4426891 d!1342124))

(declare-fun bs!758010 () Bool)

(declare-fun d!1342126 () Bool)

(assert (= bs!758010 (and d!1342126 d!1342044)))

(declare-fun lambda!154363 () Int)

(assert (=> bs!758010 (= lambda!154363 lambda!154344)))

(declare-fun bs!758011 () Bool)

(assert (= bs!758011 (and d!1342126 d!1342058)))

(assert (=> bs!758011 (= lambda!154363 lambda!154348)))

(declare-fun bs!758012 () Bool)

(assert (= bs!758012 (and d!1342126 d!1342022)))

(assert (=> bs!758012 (= lambda!154363 lambda!154343)))

(declare-fun bs!758013 () Bool)

(assert (= bs!758013 (and d!1342126 start!431936)))

(assert (=> bs!758013 (= lambda!154363 lambda!154244)))

(declare-fun bs!758014 () Bool)

(assert (= bs!758014 (and d!1342126 d!1342062)))

(assert (=> bs!758014 (= lambda!154363 lambda!154349)))

(declare-fun bs!758015 () Bool)

(assert (= bs!758015 (and d!1342126 d!1342088)))

(assert (=> bs!758015 (= lambda!154363 lambda!154358)))

(declare-fun bs!758016 () Bool)

(assert (= bs!758016 (and d!1342126 d!1342084)))

(assert (=> bs!758016 (= lambda!154363 lambda!154355)))

(declare-fun bs!758017 () Bool)

(assert (= bs!758017 (and d!1342126 d!1342052)))

(assert (=> bs!758017 (= lambda!154363 lambda!154345)))

(declare-fun bs!758018 () Bool)

(assert (= bs!758018 (and d!1342126 d!1342076)))

(assert (=> bs!758018 (not (= lambda!154363 lambda!154352))))

(declare-fun lt!1626391 () ListMap!2749)

(assert (=> d!1342126 (invariantList!809 (toList!3506 lt!1626391))))

(declare-fun e!2756492 () ListMap!2749)

(assert (=> d!1342126 (= lt!1626391 e!2756492)))

(declare-fun c!753553 () Bool)

(assert (=> d!1342126 (= c!753553 ((_ is Cons!49606) (t!356668 (toList!3505 lt!1625987))))))

(assert (=> d!1342126 (forall!9576 (t!356668 (toList!3505 lt!1625987)) lambda!154363)))

(assert (=> d!1342126 (= (extractMap!820 (t!356668 (toList!3505 lt!1625987))) lt!1626391)))

(declare-fun b!4427001 () Bool)

(assert (=> b!4427001 (= e!2756492 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (t!356668 (toList!3505 lt!1625987)))) (extractMap!820 (t!356668 (t!356668 (toList!3505 lt!1625987))))))))

(declare-fun b!4427002 () Bool)

(assert (=> b!4427002 (= e!2756492 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342126 c!753553) b!4427001))

(assert (= (and d!1342126 (not c!753553)) b!4427002))

(declare-fun m!5108793 () Bool)

(assert (=> d!1342126 m!5108793))

(declare-fun m!5108795 () Bool)

(assert (=> d!1342126 m!5108795))

(declare-fun m!5108797 () Bool)

(assert (=> b!4427001 m!5108797))

(assert (=> b!4427001 m!5108797))

(declare-fun m!5108799 () Bool)

(assert (=> b!4427001 m!5108799))

(assert (=> b!4426891 d!1342126))

(declare-fun d!1342128 () Bool)

(declare-fun lt!1626394 () Bool)

(assert (=> d!1342128 (= lt!1626394 (select (content!7962 (toList!3506 lt!1626343)) lt!1625974))))

(declare-fun e!2756498 () Bool)

(assert (=> d!1342128 (= lt!1626394 e!2756498)))

(declare-fun res!1830532 () Bool)

(assert (=> d!1342128 (=> (not res!1830532) (not e!2756498))))

(assert (=> d!1342128 (= res!1830532 ((_ is Cons!49605) (toList!3506 lt!1626343)))))

(assert (=> d!1342128 (= (contains!12118 (toList!3506 lt!1626343) lt!1625974) lt!1626394)))

(declare-fun b!4427007 () Bool)

(declare-fun e!2756497 () Bool)

(assert (=> b!4427007 (= e!2756498 e!2756497)))

(declare-fun res!1830531 () Bool)

(assert (=> b!4427007 (=> res!1830531 e!2756497)))

(assert (=> b!4427007 (= res!1830531 (= (h!55294 (toList!3506 lt!1626343)) lt!1625974))))

(declare-fun b!4427008 () Bool)

(assert (=> b!4427008 (= e!2756497 (contains!12118 (t!356667 (toList!3506 lt!1626343)) lt!1625974))))

(assert (= (and d!1342128 res!1830532) b!4427007))

(assert (= (and b!4427007 (not res!1830531)) b!4427008))

(declare-fun m!5108801 () Bool)

(assert (=> d!1342128 m!5108801))

(declare-fun m!5108803 () Bool)

(assert (=> d!1342128 m!5108803))

(declare-fun m!5108805 () Bool)

(assert (=> b!4427008 m!5108805))

(assert (=> b!4426910 d!1342128))

(declare-fun d!1342130 () Bool)

(declare-fun lt!1626397 () Bool)

(declare-fun content!7964 (List!49730) (InoxSet tuple2!49416))

(assert (=> d!1342130 (= lt!1626397 (select (content!7964 (toList!3505 lt!1626329)) lt!1625978))))

(declare-fun e!2756504 () Bool)

(assert (=> d!1342130 (= lt!1626397 e!2756504)))

(declare-fun res!1830537 () Bool)

(assert (=> d!1342130 (=> (not res!1830537) (not e!2756504))))

(assert (=> d!1342130 (= res!1830537 ((_ is Cons!49606) (toList!3505 lt!1626329)))))

(assert (=> d!1342130 (= (contains!12120 (toList!3505 lt!1626329) lt!1625978) lt!1626397)))

(declare-fun b!4427013 () Bool)

(declare-fun e!2756503 () Bool)

(assert (=> b!4427013 (= e!2756504 e!2756503)))

(declare-fun res!1830538 () Bool)

(assert (=> b!4427013 (=> res!1830538 e!2756503)))

(assert (=> b!4427013 (= res!1830538 (= (h!55295 (toList!3505 lt!1626329)) lt!1625978))))

(declare-fun b!4427014 () Bool)

(assert (=> b!4427014 (= e!2756503 (contains!12120 (t!356668 (toList!3505 lt!1626329)) lt!1625978))))

(assert (= (and d!1342130 res!1830537) b!4427013))

(assert (= (and b!4427013 (not res!1830538)) b!4427014))

(declare-fun m!5108807 () Bool)

(assert (=> d!1342130 m!5108807))

(declare-fun m!5108809 () Bool)

(assert (=> d!1342130 m!5108809))

(declare-fun m!5108811 () Bool)

(assert (=> b!4427014 m!5108811))

(assert (=> b!4426897 d!1342130))

(declare-fun d!1342132 () Bool)

(assert (=> d!1342132 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1625981) key!3717))))

(declare-fun lt!1626400 () Unit!82123)

(declare-fun choose!27975 (List!49729 K!10970) Unit!82123)

(assert (=> d!1342132 (= lt!1626400 (choose!27975 (toList!3506 lt!1625981) key!3717))))

(assert (=> d!1342132 (invariantList!809 (toList!3506 lt!1625981))))

(assert (=> d!1342132 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1625981) key!3717) lt!1626400)))

(declare-fun bs!758019 () Bool)

(assert (= bs!758019 d!1342132))

(assert (=> bs!758019 m!5108503))

(assert (=> bs!758019 m!5108503))

(assert (=> bs!758019 m!5108505))

(declare-fun m!5108813 () Bool)

(assert (=> bs!758019 m!5108813))

(declare-fun m!5108815 () Bool)

(assert (=> bs!758019 m!5108815))

(assert (=> b!4426852 d!1342132))

(assert (=> b!4426852 d!1342114))

(assert (=> b!4426852 d!1342116))

(declare-fun d!1342134 () Bool)

(assert (=> d!1342134 (contains!12121 (getKeysList!256 (toList!3506 lt!1625981)) key!3717)))

(declare-fun lt!1626403 () Unit!82123)

(declare-fun choose!27976 (List!49729 K!10970) Unit!82123)

(assert (=> d!1342134 (= lt!1626403 (choose!27976 (toList!3506 lt!1625981) key!3717))))

(assert (=> d!1342134 (invariantList!809 (toList!3506 lt!1625981))))

(assert (=> d!1342134 (= (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1625981) key!3717) lt!1626403)))

(declare-fun bs!758020 () Bool)

(assert (= bs!758020 d!1342134))

(assert (=> bs!758020 m!5108501))

(assert (=> bs!758020 m!5108501))

(declare-fun m!5108817 () Bool)

(assert (=> bs!758020 m!5108817))

(declare-fun m!5108819 () Bool)

(assert (=> bs!758020 m!5108819))

(assert (=> bs!758020 m!5108815))

(assert (=> b!4426852 d!1342134))

(assert (=> d!1342058 d!1342044))

(declare-fun d!1342136 () Bool)

(declare-fun res!1830539 () Bool)

(declare-fun e!2756505 () Bool)

(assert (=> d!1342136 (=> res!1830539 e!2756505)))

(assert (=> d!1342136 (= res!1830539 ((_ is Nil!49606) (toList!3505 lt!1625987)))))

(assert (=> d!1342136 (= (forall!9576 (toList!3505 lt!1625987) lambda!154348) e!2756505)))

(declare-fun b!4427015 () Bool)

(declare-fun e!2756506 () Bool)

(assert (=> b!4427015 (= e!2756505 e!2756506)))

(declare-fun res!1830540 () Bool)

(assert (=> b!4427015 (=> (not res!1830540) (not e!2756506))))

(assert (=> b!4427015 (= res!1830540 (dynLambda!20850 lambda!154348 (h!55295 (toList!3505 lt!1625987))))))

(declare-fun b!4427016 () Bool)

(assert (=> b!4427016 (= e!2756506 (forall!9576 (t!356668 (toList!3505 lt!1625987)) lambda!154348))))

(assert (= (and d!1342136 (not res!1830539)) b!4427015))

(assert (= (and b!4427015 res!1830540) b!4427016))

(declare-fun b_lambda!143239 () Bool)

(assert (=> (not b_lambda!143239) (not b!4427015)))

(declare-fun m!5108821 () Bool)

(assert (=> b!4427015 m!5108821))

(declare-fun m!5108823 () Bool)

(assert (=> b!4427016 m!5108823))

(assert (=> d!1342058 d!1342136))

(declare-fun d!1342138 () Bool)

(assert (=> d!1342138 (eq!417 (extractMap!820 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)))) (+!1103 (extractMap!820 (toList!3505 lt!1625987)) (tuple2!49415 key!3717 newValue!93)))))

(assert (=> d!1342138 true))

(declare-fun _$9!215 () Unit!82123)

(assert (=> d!1342138 (= (choose!27971 lt!1625987 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!215)))

(declare-fun bs!758021 () Bool)

(assert (= bs!758021 d!1342138))

(assert (=> bs!758021 m!5108091))

(assert (=> bs!758021 m!5108627))

(assert (=> bs!758021 m!5108633))

(assert (=> bs!758021 m!5108625))

(assert (=> bs!758021 m!5108091))

(assert (=> bs!758021 m!5108625))

(assert (=> bs!758021 m!5108627))

(assert (=> bs!758021 m!5108629))

(assert (=> d!1342058 d!1342138))

(declare-fun d!1342140 () Bool)

(assert (=> d!1342140 (= (eq!417 (extractMap!820 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)))) (+!1103 (extractMap!820 (toList!3505 lt!1625987)) (tuple2!49415 key!3717 newValue!93))) (= (content!7962 (toList!3506 (extractMap!820 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)))))) (content!7962 (toList!3506 (+!1103 (extractMap!820 (toList!3505 lt!1625987)) (tuple2!49415 key!3717 newValue!93))))))))

(declare-fun bs!758022 () Bool)

(assert (= bs!758022 d!1342140))

(declare-fun m!5108825 () Bool)

(assert (=> bs!758022 m!5108825))

(declare-fun m!5108827 () Bool)

(assert (=> bs!758022 m!5108827))

(assert (=> d!1342058 d!1342140))

(declare-fun d!1342142 () Bool)

(declare-fun e!2756507 () Bool)

(assert (=> d!1342142 e!2756507))

(declare-fun res!1830541 () Bool)

(assert (=> d!1342142 (=> (not res!1830541) (not e!2756507))))

(declare-fun lt!1626407 () ListLongMap!2155)

(assert (=> d!1342142 (= res!1830541 (contains!12115 lt!1626407 (_1!28002 (tuple2!49417 hash!366 newBucket!194))))))

(declare-fun lt!1626406 () List!49730)

(assert (=> d!1342142 (= lt!1626407 (ListLongMap!2156 lt!1626406))))

(declare-fun lt!1626404 () Unit!82123)

(declare-fun lt!1626405 () Unit!82123)

(assert (=> d!1342142 (= lt!1626404 lt!1626405)))

(assert (=> d!1342142 (= (getValueByKey!720 lt!1626406 (_1!28002 (tuple2!49417 hash!366 newBucket!194))) (Some!10733 (_2!28002 (tuple2!49417 hash!366 newBucket!194))))))

(assert (=> d!1342142 (= lt!1626405 (lemmaContainsTupThenGetReturnValue!455 lt!1626406 (_1!28002 (tuple2!49417 hash!366 newBucket!194)) (_2!28002 (tuple2!49417 hash!366 newBucket!194))))))

(assert (=> d!1342142 (= lt!1626406 (insertStrictlySorted!264 (toList!3505 lt!1625987) (_1!28002 (tuple2!49417 hash!366 newBucket!194)) (_2!28002 (tuple2!49417 hash!366 newBucket!194))))))

(assert (=> d!1342142 (= (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)) lt!1626407)))

(declare-fun b!4427017 () Bool)

(declare-fun res!1830542 () Bool)

(assert (=> b!4427017 (=> (not res!1830542) (not e!2756507))))

(assert (=> b!4427017 (= res!1830542 (= (getValueByKey!720 (toList!3505 lt!1626407) (_1!28002 (tuple2!49417 hash!366 newBucket!194))) (Some!10733 (_2!28002 (tuple2!49417 hash!366 newBucket!194)))))))

(declare-fun b!4427018 () Bool)

(assert (=> b!4427018 (= e!2756507 (contains!12120 (toList!3505 lt!1626407) (tuple2!49417 hash!366 newBucket!194)))))

(assert (= (and d!1342142 res!1830541) b!4427017))

(assert (= (and b!4427017 res!1830542) b!4427018))

(declare-fun m!5108829 () Bool)

(assert (=> d!1342142 m!5108829))

(declare-fun m!5108831 () Bool)

(assert (=> d!1342142 m!5108831))

(declare-fun m!5108833 () Bool)

(assert (=> d!1342142 m!5108833))

(declare-fun m!5108835 () Bool)

(assert (=> d!1342142 m!5108835))

(declare-fun m!5108837 () Bool)

(assert (=> b!4427017 m!5108837))

(declare-fun m!5108839 () Bool)

(assert (=> b!4427018 m!5108839))

(assert (=> d!1342058 d!1342142))

(declare-fun bs!758023 () Bool)

(declare-fun d!1342144 () Bool)

(assert (= bs!758023 (and d!1342144 d!1342044)))

(declare-fun lambda!154364 () Int)

(assert (=> bs!758023 (= lambda!154364 lambda!154344)))

(declare-fun bs!758024 () Bool)

(assert (= bs!758024 (and d!1342144 d!1342058)))

(assert (=> bs!758024 (= lambda!154364 lambda!154348)))

(declare-fun bs!758025 () Bool)

(assert (= bs!758025 (and d!1342144 d!1342022)))

(assert (=> bs!758025 (= lambda!154364 lambda!154343)))

(declare-fun bs!758026 () Bool)

(assert (= bs!758026 (and d!1342144 start!431936)))

(assert (=> bs!758026 (= lambda!154364 lambda!154244)))

(declare-fun bs!758027 () Bool)

(assert (= bs!758027 (and d!1342144 d!1342062)))

(assert (=> bs!758027 (= lambda!154364 lambda!154349)))

(declare-fun bs!758028 () Bool)

(assert (= bs!758028 (and d!1342144 d!1342126)))

(assert (=> bs!758028 (= lambda!154364 lambda!154363)))

(declare-fun bs!758029 () Bool)

(assert (= bs!758029 (and d!1342144 d!1342088)))

(assert (=> bs!758029 (= lambda!154364 lambda!154358)))

(declare-fun bs!758030 () Bool)

(assert (= bs!758030 (and d!1342144 d!1342084)))

(assert (=> bs!758030 (= lambda!154364 lambda!154355)))

(declare-fun bs!758031 () Bool)

(assert (= bs!758031 (and d!1342144 d!1342052)))

(assert (=> bs!758031 (= lambda!154364 lambda!154345)))

(declare-fun bs!758032 () Bool)

(assert (= bs!758032 (and d!1342144 d!1342076)))

(assert (=> bs!758032 (not (= lambda!154364 lambda!154352))))

(declare-fun lt!1626408 () ListMap!2749)

(assert (=> d!1342144 (invariantList!809 (toList!3506 lt!1626408))))

(declare-fun e!2756508 () ListMap!2749)

(assert (=> d!1342144 (= lt!1626408 e!2756508)))

(declare-fun c!753554 () Bool)

(assert (=> d!1342144 (= c!753554 ((_ is Cons!49606) (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)))))))

(assert (=> d!1342144 (forall!9576 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194))) lambda!154364)))

(assert (=> d!1342144 (= (extractMap!820 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)))) lt!1626408)))

(declare-fun b!4427019 () Bool)

(assert (=> b!4427019 (= e!2756508 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194))))) (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 (tuple2!49417 hash!366 newBucket!194)))))))))

(declare-fun b!4427020 () Bool)

(assert (=> b!4427020 (= e!2756508 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342144 c!753554) b!4427019))

(assert (= (and d!1342144 (not c!753554)) b!4427020))

(declare-fun m!5108841 () Bool)

(assert (=> d!1342144 m!5108841))

(declare-fun m!5108843 () Bool)

(assert (=> d!1342144 m!5108843))

(declare-fun m!5108845 () Bool)

(assert (=> b!4427019 m!5108845))

(assert (=> b!4427019 m!5108845))

(declare-fun m!5108847 () Bool)

(assert (=> b!4427019 m!5108847))

(assert (=> d!1342058 d!1342144))

(declare-fun d!1342146 () Bool)

(declare-fun e!2756509 () Bool)

(assert (=> d!1342146 e!2756509))

(declare-fun res!1830543 () Bool)

(assert (=> d!1342146 (=> (not res!1830543) (not e!2756509))))

(declare-fun lt!1626410 () ListMap!2749)

(assert (=> d!1342146 (= res!1830543 (contains!12114 lt!1626410 (_1!28001 (tuple2!49415 key!3717 newValue!93))))))

(declare-fun lt!1626412 () List!49729)

(assert (=> d!1342146 (= lt!1626410 (ListMap!2750 lt!1626412))))

(declare-fun lt!1626411 () Unit!82123)

(declare-fun lt!1626409 () Unit!82123)

(assert (=> d!1342146 (= lt!1626411 lt!1626409)))

(assert (=> d!1342146 (= (getValueByKey!719 lt!1626412 (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342146 (= lt!1626409 (lemmaContainsTupThenGetReturnValue!454 lt!1626412 (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342146 (= lt!1626412 (insertNoDuplicatedKeys!199 (toList!3506 (extractMap!820 (toList!3505 lt!1625987))) (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342146 (= (+!1103 (extractMap!820 (toList!3505 lt!1625987)) (tuple2!49415 key!3717 newValue!93)) lt!1626410)))

(declare-fun b!4427021 () Bool)

(declare-fun res!1830544 () Bool)

(assert (=> b!4427021 (=> (not res!1830544) (not e!2756509))))

(assert (=> b!4427021 (= res!1830544 (= (getValueByKey!719 (toList!3506 lt!1626410) (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93)))))))

(declare-fun b!4427022 () Bool)

(assert (=> b!4427022 (= e!2756509 (contains!12118 (toList!3506 lt!1626410) (tuple2!49415 key!3717 newValue!93)))))

(assert (= (and d!1342146 res!1830543) b!4427021))

(assert (= (and b!4427021 res!1830544) b!4427022))

(declare-fun m!5108849 () Bool)

(assert (=> d!1342146 m!5108849))

(declare-fun m!5108851 () Bool)

(assert (=> d!1342146 m!5108851))

(declare-fun m!5108853 () Bool)

(assert (=> d!1342146 m!5108853))

(declare-fun m!5108855 () Bool)

(assert (=> d!1342146 m!5108855))

(declare-fun m!5108857 () Bool)

(assert (=> b!4427021 m!5108857))

(declare-fun m!5108859 () Bool)

(assert (=> b!4427022 m!5108859))

(assert (=> d!1342058 d!1342146))

(declare-fun d!1342148 () Bool)

(declare-fun lt!1626413 () Bool)

(assert (=> d!1342148 (= lt!1626413 (select (content!7963 (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) key!3717))))

(declare-fun e!2756510 () Bool)

(assert (=> d!1342148 (= lt!1626413 e!2756510)))

(declare-fun res!1830545 () Bool)

(assert (=> d!1342148 (=> (not res!1830545) (not e!2756510))))

(assert (=> d!1342148 (= res!1830545 ((_ is Cons!49608) (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))

(assert (=> d!1342148 (= (contains!12121 (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717) lt!1626413)))

(declare-fun b!4427023 () Bool)

(declare-fun e!2756511 () Bool)

(assert (=> b!4427023 (= e!2756510 e!2756511)))

(declare-fun res!1830546 () Bool)

(assert (=> b!4427023 (=> res!1830546 e!2756511)))

(assert (=> b!4427023 (= res!1830546 (= (h!55299 (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) key!3717))))

(declare-fun b!4427024 () Bool)

(assert (=> b!4427024 (= e!2756511 (contains!12121 (t!356670 (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) key!3717))))

(assert (= (and d!1342148 res!1830545) b!4427023))

(assert (= (and b!4427023 (not res!1830546)) b!4427024))

(assert (=> d!1342148 m!5108647))

(declare-fun m!5108861 () Bool)

(assert (=> d!1342148 m!5108861))

(declare-fun m!5108863 () Bool)

(assert (=> d!1342148 m!5108863))

(declare-fun m!5108865 () Bool)

(assert (=> b!4427024 m!5108865))

(assert (=> b!4426907 d!1342148))

(declare-fun b!4427032 () Bool)

(assert (=> b!4427032 true))

(declare-fun d!1342150 () Bool)

(declare-fun e!2756514 () Bool)

(assert (=> d!1342150 e!2756514))

(declare-fun res!1830553 () Bool)

(assert (=> d!1342150 (=> (not res!1830553) (not e!2756514))))

(declare-fun lt!1626416 () List!49732)

(declare-fun noDuplicate!659 (List!49732) Bool)

(assert (=> d!1342150 (= res!1830553 (noDuplicate!659 lt!1626416))))

(assert (=> d!1342150 (= lt!1626416 (getKeysList!256 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))

(assert (=> d!1342150 (= (keys!16942 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) lt!1626416)))

(declare-fun b!4427031 () Bool)

(declare-fun res!1830554 () Bool)

(assert (=> b!4427031 (=> (not res!1830554) (not e!2756514))))

(declare-fun length!174 (List!49732) Int)

(declare-fun length!175 (List!49729) Int)

(assert (=> b!4427031 (= res!1830554 (= (length!174 lt!1626416) (length!175 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))))

(declare-fun res!1830555 () Bool)

(assert (=> b!4427032 (=> (not res!1830555) (not e!2756514))))

(declare-fun lambda!154369 () Int)

(declare-fun forall!9579 (List!49732 Int) Bool)

(assert (=> b!4427032 (= res!1830555 (forall!9579 lt!1626416 lambda!154369))))

(declare-fun b!4427033 () Bool)

(declare-fun lambda!154370 () Int)

(declare-fun map!10836 (List!49729 Int) List!49732)

(assert (=> b!4427033 (= e!2756514 (= (content!7963 lt!1626416) (content!7963 (map!10836 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) lambda!154370))))))

(assert (= (and d!1342150 res!1830553) b!4427031))

(assert (= (and b!4427031 res!1830554) b!4427032))

(assert (= (and b!4427032 res!1830555) b!4427033))

(declare-fun m!5108867 () Bool)

(assert (=> d!1342150 m!5108867))

(assert (=> d!1342150 m!5108651))

(declare-fun m!5108869 () Bool)

(assert (=> b!4427031 m!5108869))

(declare-fun m!5108871 () Bool)

(assert (=> b!4427031 m!5108871))

(declare-fun m!5108873 () Bool)

(assert (=> b!4427032 m!5108873))

(declare-fun m!5108875 () Bool)

(assert (=> b!4427033 m!5108875))

(declare-fun m!5108877 () Bool)

(assert (=> b!4427033 m!5108877))

(assert (=> b!4427033 m!5108877))

(declare-fun m!5108879 () Bool)

(assert (=> b!4427033 m!5108879))

(assert (=> b!4426907 d!1342150))

(declare-fun d!1342152 () Bool)

(declare-fun noDuplicatedKeys!175 (List!49729) Bool)

(assert (=> d!1342152 (= (invariantList!809 (toList!3506 lt!1626324)) (noDuplicatedKeys!175 (toList!3506 lt!1626324)))))

(declare-fun bs!758033 () Bool)

(assert (= bs!758033 d!1342152))

(declare-fun m!5108881 () Bool)

(assert (=> bs!758033 m!5108881))

(assert (=> d!1342044 d!1342152))

(declare-fun d!1342154 () Bool)

(declare-fun res!1830556 () Bool)

(declare-fun e!2756515 () Bool)

(assert (=> d!1342154 (=> res!1830556 e!2756515)))

(assert (=> d!1342154 (= res!1830556 ((_ is Nil!49606) (toList!3505 lt!1625987)))))

(assert (=> d!1342154 (= (forall!9576 (toList!3505 lt!1625987) lambda!154344) e!2756515)))

(declare-fun b!4427036 () Bool)

(declare-fun e!2756516 () Bool)

(assert (=> b!4427036 (= e!2756515 e!2756516)))

(declare-fun res!1830557 () Bool)

(assert (=> b!4427036 (=> (not res!1830557) (not e!2756516))))

(assert (=> b!4427036 (= res!1830557 (dynLambda!20850 lambda!154344 (h!55295 (toList!3505 lt!1625987))))))

(declare-fun b!4427037 () Bool)

(assert (=> b!4427037 (= e!2756516 (forall!9576 (t!356668 (toList!3505 lt!1625987)) lambda!154344))))

(assert (= (and d!1342154 (not res!1830556)) b!4427036))

(assert (= (and b!4427036 res!1830557) b!4427037))

(declare-fun b_lambda!143241 () Bool)

(assert (=> (not b_lambda!143241) (not b!4427036)))

(declare-fun m!5108883 () Bool)

(assert (=> b!4427036 m!5108883))

(declare-fun m!5108885 () Bool)

(assert (=> b!4427037 m!5108885))

(assert (=> d!1342044 d!1342154))

(declare-fun d!1342156 () Bool)

(declare-fun lt!1626417 () Bool)

(assert (=> d!1342156 (= lt!1626417 (select (content!7963 (keys!16942 lt!1625981)) key!3717))))

(declare-fun e!2756517 () Bool)

(assert (=> d!1342156 (= lt!1626417 e!2756517)))

(declare-fun res!1830558 () Bool)

(assert (=> d!1342156 (=> (not res!1830558) (not e!2756517))))

(assert (=> d!1342156 (= res!1830558 ((_ is Cons!49608) (keys!16942 lt!1625981)))))

(assert (=> d!1342156 (= (contains!12121 (keys!16942 lt!1625981) key!3717) lt!1626417)))

(declare-fun b!4427038 () Bool)

(declare-fun e!2756518 () Bool)

(assert (=> b!4427038 (= e!2756517 e!2756518)))

(declare-fun res!1830559 () Bool)

(assert (=> b!4427038 (=> res!1830559 e!2756518)))

(assert (=> b!4427038 (= res!1830559 (= (h!55299 (keys!16942 lt!1625981)) key!3717))))

(declare-fun b!4427039 () Bool)

(assert (=> b!4427039 (= e!2756518 (contains!12121 (t!356670 (keys!16942 lt!1625981)) key!3717))))

(assert (= (and d!1342156 res!1830558) b!4427038))

(assert (= (and b!4427038 (not res!1830559)) b!4427039))

(assert (=> d!1342156 m!5108497))

(declare-fun m!5108887 () Bool)

(assert (=> d!1342156 m!5108887))

(declare-fun m!5108889 () Bool)

(assert (=> d!1342156 m!5108889))

(declare-fun m!5108891 () Bool)

(assert (=> b!4427039 m!5108891))

(assert (=> b!4426848 d!1342156))

(declare-fun bs!758034 () Bool)

(declare-fun b!4427041 () Bool)

(assert (= bs!758034 (and b!4427041 b!4427032)))

(declare-fun lambda!154371 () Int)

(assert (=> bs!758034 (= (= (toList!3506 lt!1625981) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154371 lambda!154369))))

(assert (=> b!4427041 true))

(declare-fun bs!758035 () Bool)

(declare-fun b!4427042 () Bool)

(assert (= bs!758035 (and b!4427042 b!4427033)))

(declare-fun lambda!154372 () Int)

(assert (=> bs!758035 (= lambda!154372 lambda!154370)))

(declare-fun d!1342158 () Bool)

(declare-fun e!2756519 () Bool)

(assert (=> d!1342158 e!2756519))

(declare-fun res!1830560 () Bool)

(assert (=> d!1342158 (=> (not res!1830560) (not e!2756519))))

(declare-fun lt!1626418 () List!49732)

(assert (=> d!1342158 (= res!1830560 (noDuplicate!659 lt!1626418))))

(assert (=> d!1342158 (= lt!1626418 (getKeysList!256 (toList!3506 lt!1625981)))))

(assert (=> d!1342158 (= (keys!16942 lt!1625981) lt!1626418)))

(declare-fun b!4427040 () Bool)

(declare-fun res!1830561 () Bool)

(assert (=> b!4427040 (=> (not res!1830561) (not e!2756519))))

(assert (=> b!4427040 (= res!1830561 (= (length!174 lt!1626418) (length!175 (toList!3506 lt!1625981))))))

(declare-fun res!1830562 () Bool)

(assert (=> b!4427041 (=> (not res!1830562) (not e!2756519))))

(assert (=> b!4427041 (= res!1830562 (forall!9579 lt!1626418 lambda!154371))))

(assert (=> b!4427042 (= e!2756519 (= (content!7963 lt!1626418) (content!7963 (map!10836 (toList!3506 lt!1625981) lambda!154372))))))

(assert (= (and d!1342158 res!1830560) b!4427040))

(assert (= (and b!4427040 res!1830561) b!4427041))

(assert (= (and b!4427041 res!1830562) b!4427042))

(declare-fun m!5108893 () Bool)

(assert (=> d!1342158 m!5108893))

(assert (=> d!1342158 m!5108501))

(declare-fun m!5108895 () Bool)

(assert (=> b!4427040 m!5108895))

(declare-fun m!5108897 () Bool)

(assert (=> b!4427040 m!5108897))

(declare-fun m!5108899 () Bool)

(assert (=> b!4427041 m!5108899))

(declare-fun m!5108901 () Bool)

(assert (=> b!4427042 m!5108901))

(declare-fun m!5108903 () Bool)

(assert (=> b!4427042 m!5108903))

(assert (=> b!4427042 m!5108903))

(declare-fun m!5108905 () Bool)

(assert (=> b!4427042 m!5108905))

(assert (=> b!4426848 d!1342158))

(declare-fun d!1342160 () Bool)

(assert (=> d!1342160 (= (get!16168 (getValueByKey!720 (toList!3505 lm!1616) (_1!28002 (h!55295 (toList!3505 lm!1616))))) (v!43921 (getValueByKey!720 (toList!3505 lm!1616) (_1!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> d!1342082 d!1342160))

(declare-fun d!1342162 () Bool)

(declare-fun c!753559 () Bool)

(assert (=> d!1342162 (= c!753559 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (= (_1!28002 (h!55295 (toList!3505 lm!1616))) (_1!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun e!2756524 () Option!10734)

(assert (=> d!1342162 (= (getValueByKey!720 (toList!3505 lm!1616) (_1!28002 (h!55295 (toList!3505 lm!1616)))) e!2756524)))

(declare-fun b!4427053 () Bool)

(declare-fun e!2756525 () Option!10734)

(assert (=> b!4427053 (= e!2756525 (getValueByKey!720 (t!356668 (toList!3505 lm!1616)) (_1!28002 (h!55295 (toList!3505 lm!1616)))))))

(declare-fun b!4427051 () Bool)

(assert (=> b!4427051 (= e!2756524 (Some!10733 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(declare-fun b!4427054 () Bool)

(assert (=> b!4427054 (= e!2756525 None!10733)))

(declare-fun b!4427052 () Bool)

(assert (=> b!4427052 (= e!2756524 e!2756525)))

(declare-fun c!753560 () Bool)

(assert (=> b!4427052 (= c!753560 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (not (= (_1!28002 (h!55295 (toList!3505 lm!1616))) (_1!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (= (and d!1342162 c!753559) b!4427051))

(assert (= (and d!1342162 (not c!753559)) b!4427052))

(assert (= (and b!4427052 c!753560) b!4427053))

(assert (= (and b!4427052 (not c!753560)) b!4427054))

(declare-fun m!5108907 () Bool)

(assert (=> b!4427053 m!5108907))

(assert (=> d!1342082 d!1342162))

(declare-fun b!4427057 () Bool)

(declare-fun e!2756527 () Option!10733)

(assert (=> b!4427057 (= e!2756527 (getValueByKey!719 (t!356667 (toList!3506 lt!1626024)) (_1!28001 lt!1625974)))))

(declare-fun b!4427056 () Bool)

(declare-fun e!2756526 () Option!10733)

(assert (=> b!4427056 (= e!2756526 e!2756527)))

(declare-fun c!753562 () Bool)

(assert (=> b!4427056 (= c!753562 (and ((_ is Cons!49605) (toList!3506 lt!1626024)) (not (= (_1!28001 (h!55294 (toList!3506 lt!1626024))) (_1!28001 lt!1625974)))))))

(declare-fun d!1342164 () Bool)

(declare-fun c!753561 () Bool)

(assert (=> d!1342164 (= c!753561 (and ((_ is Cons!49605) (toList!3506 lt!1626024)) (= (_1!28001 (h!55294 (toList!3506 lt!1626024))) (_1!28001 lt!1625974))))))

(assert (=> d!1342164 (= (getValueByKey!719 (toList!3506 lt!1626024) (_1!28001 lt!1625974)) e!2756526)))

(declare-fun b!4427055 () Bool)

(assert (=> b!4427055 (= e!2756526 (Some!10732 (_2!28001 (h!55294 (toList!3506 lt!1626024)))))))

(declare-fun b!4427058 () Bool)

(assert (=> b!4427058 (= e!2756527 None!10732)))

(assert (= (and d!1342164 c!753561) b!4427055))

(assert (= (and d!1342164 (not c!753561)) b!4427056))

(assert (= (and b!4427056 c!753562) b!4427057))

(assert (= (and b!4427056 (not c!753562)) b!4427058))

(declare-fun m!5108909 () Bool)

(assert (=> b!4427057 m!5108909))

(assert (=> b!4426699 d!1342164))

(declare-fun bs!758036 () Bool)

(declare-fun b!4427085 () Bool)

(assert (= bs!758036 (and b!4427085 b!4427032)))

(declare-fun lambda!154383 () Int)

(assert (=> bs!758036 (= (= (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154383 lambda!154369))))

(declare-fun bs!758037 () Bool)

(assert (= bs!758037 (and b!4427085 b!4427041)))

(assert (=> bs!758037 (= (= (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (toList!3506 lt!1625981)) (= lambda!154383 lambda!154371))))

(assert (=> b!4427085 true))

(declare-fun bs!758038 () Bool)

(declare-fun b!4427079 () Bool)

(assert (= bs!758038 (and b!4427079 b!4427032)))

(declare-fun lambda!154384 () Int)

(assert (=> bs!758038 (= (= (Cons!49605 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154384 lambda!154369))))

(declare-fun bs!758039 () Bool)

(assert (= bs!758039 (and b!4427079 b!4427041)))

(assert (=> bs!758039 (= (= (Cons!49605 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (toList!3506 lt!1625981)) (= lambda!154384 lambda!154371))))

(declare-fun bs!758041 () Bool)

(assert (= bs!758041 (and b!4427079 b!4427085)))

(assert (=> bs!758041 (= (= (Cons!49605 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (= lambda!154384 lambda!154383))))

(assert (=> b!4427079 true))

(declare-fun bs!758043 () Bool)

(declare-fun b!4427081 () Bool)

(assert (= bs!758043 (and b!4427081 b!4427032)))

(declare-fun lambda!154386 () Int)

(assert (=> bs!758043 (= lambda!154386 lambda!154369)))

(declare-fun bs!758045 () Bool)

(assert (= bs!758045 (and b!4427081 b!4427041)))

(assert (=> bs!758045 (= (= (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) (toList!3506 lt!1625981)) (= lambda!154386 lambda!154371))))

(declare-fun bs!758046 () Bool)

(assert (= bs!758046 (and b!4427081 b!4427085)))

(assert (=> bs!758046 (= (= (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (= lambda!154386 lambda!154383))))

(declare-fun bs!758048 () Bool)

(assert (= bs!758048 (and b!4427081 b!4427079)))

(assert (=> bs!758048 (= (= (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) (Cons!49605 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))) (= lambda!154386 lambda!154384))))

(assert (=> b!4427081 true))

(declare-fun bs!758050 () Bool)

(declare-fun b!4427083 () Bool)

(assert (= bs!758050 (and b!4427083 b!4427033)))

(declare-fun lambda!154387 () Int)

(assert (=> bs!758050 (= lambda!154387 lambda!154370)))

(declare-fun bs!758051 () Bool)

(assert (= bs!758051 (and b!4427083 b!4427042)))

(assert (=> bs!758051 (= lambda!154387 lambda!154372)))

(declare-fun b!4427077 () Bool)

(declare-fun e!2756538 () Unit!82123)

(declare-fun Unit!82192 () Unit!82123)

(assert (=> b!4427077 (= e!2756538 Unit!82192)))

(declare-fun b!4427078 () Bool)

(declare-fun e!2756539 () List!49732)

(assert (=> b!4427078 (= e!2756539 Nil!49608)))

(assert (=> b!4427079 (= e!2756539 (Cons!49608 (_1!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (getKeysList!256 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))))

(declare-fun c!753571 () Bool)

(assert (=> b!4427079 (= c!753571 (containsKey!1133 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (_1!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))))

(declare-fun lt!1626438 () Unit!82123)

(assert (=> b!4427079 (= lt!1626438 e!2756538)))

(declare-fun c!753569 () Bool)

(assert (=> b!4427079 (= c!753569 (contains!12121 (getKeysList!256 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (_1!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))))

(declare-fun lt!1626439 () Unit!82123)

(declare-fun e!2756537 () Unit!82123)

(assert (=> b!4427079 (= lt!1626439 e!2756537)))

(declare-fun lt!1626437 () List!49732)

(assert (=> b!4427079 (= lt!1626437 (getKeysList!256 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626435 () Unit!82123)

(declare-fun lemmaForallContainsAddHeadPreserves!81 (List!49729 List!49732 tuple2!49414) Unit!82123)

(assert (=> b!4427079 (= lt!1626435 (lemmaForallContainsAddHeadPreserves!81 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) lt!1626437 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))))

(assert (=> b!4427079 (forall!9579 lt!1626437 lambda!154384)))

(declare-fun lt!1626440 () Unit!82123)

(assert (=> b!4427079 (= lt!1626440 lt!1626435)))

(declare-fun res!1830569 () Bool)

(declare-fun e!2756536 () Bool)

(assert (=> b!4427081 (=> (not res!1830569) (not e!2756536))))

(declare-fun lt!1626436 () List!49732)

(assert (=> b!4427081 (= res!1830569 (forall!9579 lt!1626436 lambda!154386))))

(declare-fun b!4427082 () Bool)

(declare-fun res!1830570 () Bool)

(assert (=> b!4427082 (=> (not res!1830570) (not e!2756536))))

(assert (=> b!4427082 (= res!1830570 (= (length!174 lt!1626436) (length!175 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))))

(assert (=> b!4427083 (= e!2756536 (= (content!7963 lt!1626436) (content!7963 (map!10836 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) lambda!154387))))))

(declare-fun d!1342166 () Bool)

(assert (=> d!1342166 e!2756536))

(declare-fun res!1830571 () Bool)

(assert (=> d!1342166 (=> (not res!1830571) (not e!2756536))))

(assert (=> d!1342166 (= res!1830571 (noDuplicate!659 lt!1626436))))

(assert (=> d!1342166 (= lt!1626436 e!2756539)))

(declare-fun c!753570 () Bool)

(assert (=> d!1342166 (= c!753570 ((_ is Cons!49605) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))

(assert (=> d!1342166 (invariantList!809 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))

(assert (=> d!1342166 (= (getKeysList!256 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) lt!1626436)))

(declare-fun b!4427080 () Bool)

(assert (=> b!4427080 false))

(declare-fun Unit!82193 () Unit!82123)

(assert (=> b!4427080 (= e!2756538 Unit!82193)))

(declare-fun b!4427084 () Bool)

(declare-fun Unit!82194 () Unit!82123)

(assert (=> b!4427084 (= e!2756537 Unit!82194)))

(assert (=> b!4427085 false))

(declare-fun lt!1626441 () Unit!82123)

(declare-fun forallContained!2098 (List!49732 Int K!10970) Unit!82123)

(assert (=> b!4427085 (= lt!1626441 (forallContained!2098 (getKeysList!256 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) lambda!154383 (_1!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))))

(declare-fun Unit!82195 () Unit!82123)

(assert (=> b!4427085 (= e!2756537 Unit!82195)))

(assert (= (and d!1342166 c!753570) b!4427079))

(assert (= (and d!1342166 (not c!753570)) b!4427078))

(assert (= (and b!4427079 c!753571) b!4427080))

(assert (= (and b!4427079 (not c!753571)) b!4427077))

(assert (= (and b!4427079 c!753569) b!4427085))

(assert (= (and b!4427079 (not c!753569)) b!4427084))

(assert (= (and d!1342166 res!1830571) b!4427082))

(assert (= (and b!4427082 res!1830570) b!4427081))

(assert (= (and b!4427081 res!1830569) b!4427083))

(declare-fun m!5108915 () Bool)

(assert (=> b!4427082 m!5108915))

(assert (=> b!4427082 m!5108871))

(declare-fun m!5108917 () Bool)

(assert (=> d!1342166 m!5108917))

(assert (=> d!1342166 m!5108741))

(declare-fun m!5108919 () Bool)

(assert (=> b!4427079 m!5108919))

(declare-fun m!5108921 () Bool)

(assert (=> b!4427079 m!5108921))

(declare-fun m!5108923 () Bool)

(assert (=> b!4427079 m!5108923))

(assert (=> b!4427079 m!5108923))

(declare-fun m!5108925 () Bool)

(assert (=> b!4427079 m!5108925))

(declare-fun m!5108927 () Bool)

(assert (=> b!4427079 m!5108927))

(declare-fun m!5108929 () Bool)

(assert (=> b!4427081 m!5108929))

(assert (=> b!4427085 m!5108923))

(assert (=> b!4427085 m!5108923))

(declare-fun m!5108931 () Bool)

(assert (=> b!4427085 m!5108931))

(declare-fun m!5108933 () Bool)

(assert (=> b!4427083 m!5108933))

(declare-fun m!5108935 () Bool)

(assert (=> b!4427083 m!5108935))

(assert (=> b!4427083 m!5108935))

(declare-fun m!5108937 () Bool)

(assert (=> b!4427083 m!5108937))

(assert (=> b!4426903 d!1342166))

(declare-fun d!1342172 () Bool)

(declare-fun res!1830572 () Bool)

(declare-fun e!2756540 () Bool)

(assert (=> d!1342172 (=> res!1830572 e!2756540)))

(assert (=> d!1342172 (= res!1830572 (and ((_ is Cons!49605) (toList!3506 lt!1625981)) (= (_1!28001 (h!55294 (toList!3506 lt!1625981))) key!3717)))))

(assert (=> d!1342172 (= (containsKey!1133 (toList!3506 lt!1625981) key!3717) e!2756540)))

(declare-fun b!4427088 () Bool)

(declare-fun e!2756541 () Bool)

(assert (=> b!4427088 (= e!2756540 e!2756541)))

(declare-fun res!1830573 () Bool)

(assert (=> b!4427088 (=> (not res!1830573) (not e!2756541))))

(assert (=> b!4427088 (= res!1830573 ((_ is Cons!49605) (toList!3506 lt!1625981)))))

(declare-fun b!4427089 () Bool)

(assert (=> b!4427089 (= e!2756541 (containsKey!1133 (t!356667 (toList!3506 lt!1625981)) key!3717))))

(assert (= (and d!1342172 (not res!1830572)) b!4427088))

(assert (= (and b!4427088 res!1830573) b!4427089))

(declare-fun m!5108939 () Bool)

(assert (=> b!4427089 m!5108939))

(assert (=> d!1342014 d!1342172))

(declare-fun d!1342176 () Bool)

(declare-fun choose!27980 (Hashable!5153 K!10970) (_ BitVec 64))

(assert (=> d!1342176 (= (hash!2149 hashF!1220 key!3717) (choose!27980 hashF!1220 key!3717))))

(declare-fun bs!758055 () Bool)

(assert (= bs!758055 d!1342176))

(declare-fun m!5108941 () Bool)

(assert (=> bs!758055 m!5108941))

(assert (=> d!1341932 d!1342176))

(assert (=> d!1342066 d!1342108))

(declare-fun b!4427090 () Bool)

(declare-fun e!2756544 () Unit!82123)

(declare-fun e!2756542 () Unit!82123)

(assert (=> b!4427090 (= e!2756544 e!2756542)))

(declare-fun c!753574 () Bool)

(declare-fun call!308030 () Bool)

(assert (=> b!4427090 (= c!753574 call!308030)))

(declare-fun b!4427091 () Bool)

(declare-fun e!2756546 () List!49732)

(assert (=> b!4427091 (= e!2756546 (keys!16942 lt!1626031))))

(declare-fun b!4427092 () Bool)

(declare-fun e!2756543 () Bool)

(assert (=> b!4427092 (= e!2756543 (contains!12121 (keys!16942 lt!1626031) (_1!28001 lt!1625974)))))

(declare-fun d!1342178 () Bool)

(declare-fun e!2756547 () Bool)

(assert (=> d!1342178 e!2756547))

(declare-fun res!1830574 () Bool)

(assert (=> d!1342178 (=> res!1830574 e!2756547)))

(declare-fun e!2756545 () Bool)

(assert (=> d!1342178 (= res!1830574 e!2756545)))

(declare-fun res!1830576 () Bool)

(assert (=> d!1342178 (=> (not res!1830576) (not e!2756545))))

(declare-fun lt!1626444 () Bool)

(assert (=> d!1342178 (= res!1830576 (not lt!1626444))))

(declare-fun lt!1626447 () Bool)

(assert (=> d!1342178 (= lt!1626444 lt!1626447)))

(declare-fun lt!1626449 () Unit!82123)

(assert (=> d!1342178 (= lt!1626449 e!2756544)))

(declare-fun c!753572 () Bool)

(assert (=> d!1342178 (= c!753572 lt!1626447)))

(assert (=> d!1342178 (= lt!1626447 (containsKey!1133 (toList!3506 lt!1626031) (_1!28001 lt!1625974)))))

(assert (=> d!1342178 (= (contains!12114 lt!1626031 (_1!28001 lt!1625974)) lt!1626444)))

(declare-fun b!4427093 () Bool)

(assert (=> b!4427093 (= e!2756546 (getKeysList!256 (toList!3506 lt!1626031)))))

(declare-fun b!4427094 () Bool)

(assert (=> b!4427094 (= e!2756547 e!2756543)))

(declare-fun res!1830575 () Bool)

(assert (=> b!4427094 (=> (not res!1830575) (not e!2756543))))

(assert (=> b!4427094 (= res!1830575 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626031) (_1!28001 lt!1625974))))))

(declare-fun b!4427095 () Bool)

(declare-fun Unit!82196 () Unit!82123)

(assert (=> b!4427095 (= e!2756542 Unit!82196)))

(declare-fun b!4427096 () Bool)

(declare-fun lt!1626443 () Unit!82123)

(assert (=> b!4427096 (= e!2756544 lt!1626443)))

(declare-fun lt!1626450 () Unit!82123)

(assert (=> b!4427096 (= lt!1626450 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1626031) (_1!28001 lt!1625974)))))

(assert (=> b!4427096 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626031) (_1!28001 lt!1625974)))))

(declare-fun lt!1626445 () Unit!82123)

(assert (=> b!4427096 (= lt!1626445 lt!1626450)))

(assert (=> b!4427096 (= lt!1626443 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1626031) (_1!28001 lt!1625974)))))

(assert (=> b!4427096 call!308030))

(declare-fun b!4427097 () Bool)

(assert (=> b!4427097 (= e!2756545 (not (contains!12121 (keys!16942 lt!1626031) (_1!28001 lt!1625974))))))

(declare-fun bm!308025 () Bool)

(assert (=> bm!308025 (= call!308030 (contains!12121 e!2756546 (_1!28001 lt!1625974)))))

(declare-fun c!753573 () Bool)

(assert (=> bm!308025 (= c!753573 c!753572)))

(declare-fun b!4427098 () Bool)

(assert (=> b!4427098 false))

(declare-fun lt!1626446 () Unit!82123)

(declare-fun lt!1626448 () Unit!82123)

(assert (=> b!4427098 (= lt!1626446 lt!1626448)))

(assert (=> b!4427098 (containsKey!1133 (toList!3506 lt!1626031) (_1!28001 lt!1625974))))

(assert (=> b!4427098 (= lt!1626448 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1626031) (_1!28001 lt!1625974)))))

(declare-fun Unit!82197 () Unit!82123)

(assert (=> b!4427098 (= e!2756542 Unit!82197)))

(assert (= (and d!1342178 c!753572) b!4427096))

(assert (= (and d!1342178 (not c!753572)) b!4427090))

(assert (= (and b!4427090 c!753574) b!4427098))

(assert (= (and b!4427090 (not c!753574)) b!4427095))

(assert (= (or b!4427096 b!4427090) bm!308025))

(assert (= (and bm!308025 c!753573) b!4427093))

(assert (= (and bm!308025 (not c!753573)) b!4427091))

(assert (= (and d!1342178 res!1830576) b!4427097))

(assert (= (and d!1342178 (not res!1830574)) b!4427094))

(assert (= (and b!4427094 res!1830575) b!4427092))

(declare-fun m!5108943 () Bool)

(assert (=> b!4427098 m!5108943))

(declare-fun m!5108945 () Bool)

(assert (=> b!4427098 m!5108945))

(declare-fun m!5108947 () Bool)

(assert (=> b!4427092 m!5108947))

(assert (=> b!4427092 m!5108947))

(declare-fun m!5108949 () Bool)

(assert (=> b!4427092 m!5108949))

(assert (=> b!4427097 m!5108947))

(assert (=> b!4427097 m!5108947))

(assert (=> b!4427097 m!5108949))

(declare-fun m!5108951 () Bool)

(assert (=> b!4427093 m!5108951))

(assert (=> b!4427094 m!5108183))

(assert (=> b!4427094 m!5108183))

(declare-fun m!5108953 () Bool)

(assert (=> b!4427094 m!5108953))

(assert (=> d!1342178 m!5108943))

(declare-fun m!5108955 () Bool)

(assert (=> bm!308025 m!5108955))

(assert (=> b!4427091 m!5108947))

(declare-fun m!5108957 () Bool)

(assert (=> b!4427096 m!5108957))

(assert (=> b!4427096 m!5108183))

(assert (=> b!4427096 m!5108183))

(assert (=> b!4427096 m!5108953))

(declare-fun m!5108959 () Bool)

(assert (=> b!4427096 m!5108959))

(assert (=> d!1341958 d!1342178))

(declare-fun b!4427101 () Bool)

(declare-fun e!2756549 () Option!10733)

(assert (=> b!4427101 (= e!2756549 (getValueByKey!719 (t!356667 lt!1626033) (_1!28001 lt!1625974)))))

(declare-fun b!4427100 () Bool)

(declare-fun e!2756548 () Option!10733)

(assert (=> b!4427100 (= e!2756548 e!2756549)))

(declare-fun c!753576 () Bool)

(assert (=> b!4427100 (= c!753576 (and ((_ is Cons!49605) lt!1626033) (not (= (_1!28001 (h!55294 lt!1626033)) (_1!28001 lt!1625974)))))))

(declare-fun d!1342180 () Bool)

(declare-fun c!753575 () Bool)

(assert (=> d!1342180 (= c!753575 (and ((_ is Cons!49605) lt!1626033) (= (_1!28001 (h!55294 lt!1626033)) (_1!28001 lt!1625974))))))

(assert (=> d!1342180 (= (getValueByKey!719 lt!1626033 (_1!28001 lt!1625974)) e!2756548)))

(declare-fun b!4427099 () Bool)

(assert (=> b!4427099 (= e!2756548 (Some!10732 (_2!28001 (h!55294 lt!1626033))))))

(declare-fun b!4427102 () Bool)

(assert (=> b!4427102 (= e!2756549 None!10732)))

(assert (= (and d!1342180 c!753575) b!4427099))

(assert (= (and d!1342180 (not c!753575)) b!4427100))

(assert (= (and b!4427100 c!753576) b!4427101))

(assert (= (and b!4427100 (not c!753576)) b!4427102))

(declare-fun m!5108961 () Bool)

(assert (=> b!4427101 m!5108961))

(assert (=> d!1341958 d!1342180))

(declare-fun d!1342182 () Bool)

(assert (=> d!1342182 (= (getValueByKey!719 lt!1626033 (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974)))))

(declare-fun lt!1626453 () Unit!82123)

(declare-fun choose!27982 (List!49729 K!10970 V!11216) Unit!82123)

(assert (=> d!1342182 (= lt!1626453 (choose!27982 lt!1626033 (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun e!2756558 () Bool)

(assert (=> d!1342182 e!2756558))

(declare-fun res!1830581 () Bool)

(assert (=> d!1342182 (=> (not res!1830581) (not e!2756558))))

(assert (=> d!1342182 (= res!1830581 (invariantList!809 lt!1626033))))

(assert (=> d!1342182 (= (lemmaContainsTupThenGetReturnValue!454 lt!1626033 (_1!28001 lt!1625974) (_2!28001 lt!1625974)) lt!1626453)))

(declare-fun b!4427119 () Bool)

(declare-fun res!1830582 () Bool)

(assert (=> b!4427119 (=> (not res!1830582) (not e!2756558))))

(assert (=> b!4427119 (= res!1830582 (containsKey!1133 lt!1626033 (_1!28001 lt!1625974)))))

(declare-fun b!4427120 () Bool)

(assert (=> b!4427120 (= e!2756558 (contains!12118 lt!1626033 (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))

(assert (= (and d!1342182 res!1830581) b!4427119))

(assert (= (and b!4427119 res!1830582) b!4427120))

(assert (=> d!1342182 m!5108177))

(declare-fun m!5108963 () Bool)

(assert (=> d!1342182 m!5108963))

(declare-fun m!5108967 () Bool)

(assert (=> d!1342182 m!5108967))

(declare-fun m!5108969 () Bool)

(assert (=> b!4427119 m!5108969))

(declare-fun m!5108971 () Bool)

(assert (=> b!4427120 m!5108971))

(assert (=> d!1341958 d!1342182))

(declare-fun b!4427177 () Bool)

(declare-fun e!2756595 () List!49729)

(assert (=> b!4427177 (= e!2756595 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625981)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun c!753603 () Bool)

(declare-fun call!308039 () List!49729)

(declare-fun c!753602 () Bool)

(declare-fun c!753599 () Bool)

(declare-fun bm!308034 () Bool)

(declare-fun $colon$colon!786 (List!49729 tuple2!49414) List!49729)

(assert (=> bm!308034 (= call!308039 ($colon$colon!786 (ite c!753602 (t!356667 (toList!3506 lt!1625981)) (ite c!753603 (toList!3506 lt!1625981) e!2756595)) (ite (or c!753602 c!753603) (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974)) (ite c!753599 (h!55294 (toList!3506 lt!1625981)) (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))))

(declare-fun b!4427178 () Bool)

(declare-fun e!2756596 () List!49729)

(declare-fun call!308040 () List!49729)

(assert (=> b!4427178 (= e!2756596 call!308040)))

(declare-fun bm!308035 () Bool)

(declare-fun call!308041 () List!49729)

(assert (=> bm!308035 (= call!308040 call!308041)))

(declare-fun c!753600 () Bool)

(assert (=> bm!308035 (= c!753600 c!753599)))

(declare-fun b!4427180 () Bool)

(declare-fun e!2756601 () List!49729)

(assert (=> b!4427180 (= e!2756601 call!308039)))

(declare-fun lt!1626492 () List!49732)

(declare-fun call!308042 () List!49732)

(assert (=> b!4427180 (= lt!1626492 call!308042)))

(declare-fun lt!1626493 () Unit!82123)

(declare-fun lemmaSubseqRefl!100 (List!49732) Unit!82123)

(assert (=> b!4427180 (= lt!1626493 (lemmaSubseqRefl!100 lt!1626492))))

(declare-fun subseq!616 (List!49732 List!49732) Bool)

(assert (=> b!4427180 (subseq!616 lt!1626492 lt!1626492)))

(declare-fun lt!1626495 () Unit!82123)

(assert (=> b!4427180 (= lt!1626495 lt!1626493)))

(declare-fun bm!308036 () Bool)

(assert (=> bm!308036 (= call!308041 call!308039)))

(declare-fun b!4427181 () Bool)

(declare-fun e!2756598 () Unit!82123)

(declare-fun Unit!82200 () Unit!82123)

(assert (=> b!4427181 (= e!2756598 Unit!82200)))

(declare-fun b!4427182 () Bool)

(declare-fun e!2756599 () List!49729)

(assert (=> b!4427182 (= e!2756601 e!2756599)))

(declare-fun res!1830609 () Bool)

(assert (=> b!4427182 (= res!1830609 ((_ is Cons!49605) (toList!3506 lt!1625981)))))

(declare-fun e!2756597 () Bool)

(assert (=> b!4427182 (=> (not res!1830609) (not e!2756597))))

(assert (=> b!4427182 (= c!753603 e!2756597)))

(declare-fun b!4427183 () Bool)

(assert (=> b!4427183 (= e!2756599 call!308041)))

(declare-fun b!4427184 () Bool)

(declare-fun res!1830608 () Bool)

(declare-fun e!2756600 () Bool)

(assert (=> b!4427184 (=> (not res!1830608) (not e!2756600))))

(declare-fun lt!1626491 () List!49729)

(assert (=> b!4427184 (= res!1830608 (containsKey!1133 lt!1626491 (_1!28001 lt!1625974)))))

(declare-fun b!4427179 () Bool)

(assert (=> b!4427179 (= e!2756597 (not (containsKey!1133 (toList!3506 lt!1625981) (_1!28001 lt!1625974))))))

(declare-fun d!1342186 () Bool)

(assert (=> d!1342186 e!2756600))

(declare-fun res!1830610 () Bool)

(assert (=> d!1342186 (=> (not res!1830610) (not e!2756600))))

(assert (=> d!1342186 (= res!1830610 (invariantList!809 lt!1626491))))

(assert (=> d!1342186 (= lt!1626491 e!2756601)))

(assert (=> d!1342186 (= c!753602 (and ((_ is Cons!49605) (toList!3506 lt!1625981)) (= (_1!28001 (h!55294 (toList!3506 lt!1625981))) (_1!28001 lt!1625974))))))

(assert (=> d!1342186 (invariantList!809 (toList!3506 lt!1625981))))

(assert (=> d!1342186 (= (insertNoDuplicatedKeys!199 (toList!3506 lt!1625981) (_1!28001 lt!1625974) (_2!28001 lt!1625974)) lt!1626491)))

(declare-fun b!4427185 () Bool)

(assert (=> b!4427185 (= e!2756595 Nil!49605)))

(declare-fun b!4427186 () Bool)

(declare-fun lt!1626487 () List!49729)

(assert (=> b!4427186 (= e!2756596 lt!1626487)))

(assert (=> b!4427186 (= lt!1626487 call!308040)))

(declare-fun c!753601 () Bool)

(assert (=> b!4427186 (= c!753601 (containsKey!1133 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625981)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)) (_1!28001 (h!55294 (toList!3506 lt!1625981)))))))

(declare-fun lt!1626494 () Unit!82123)

(assert (=> b!4427186 (= lt!1626494 e!2756598)))

(declare-fun bm!308037 () Bool)

(declare-fun lt!1626490 () List!49729)

(assert (=> bm!308037 (= call!308042 (getKeysList!256 (ite c!753602 (toList!3506 lt!1625981) lt!1626490)))))

(declare-fun b!4427187 () Bool)

(assert (=> b!4427187 false))

(declare-fun lt!1626486 () Unit!82123)

(declare-fun lt!1626489 () Unit!82123)

(assert (=> b!4427187 (= lt!1626486 lt!1626489)))

(assert (=> b!4427187 (containsKey!1133 (t!356667 (toList!3506 lt!1625981)) (_1!28001 (h!55294 (toList!3506 lt!1625981))))))

(assert (=> b!4427187 (= lt!1626489 (lemmaInGetKeysListThenContainsKey!254 (t!356667 (toList!3506 lt!1625981)) (_1!28001 (h!55294 (toList!3506 lt!1625981)))))))

(declare-fun lt!1626485 () Unit!82123)

(declare-fun lt!1626488 () Unit!82123)

(assert (=> b!4427187 (= lt!1626485 lt!1626488)))

(assert (=> b!4427187 (contains!12121 call!308042 (_1!28001 (h!55294 (toList!3506 lt!1625981))))))

(assert (=> b!4427187 (= lt!1626488 (lemmaInListThenGetKeysListContains!253 lt!1626490 (_1!28001 (h!55294 (toList!3506 lt!1625981)))))))

(assert (=> b!4427187 (= lt!1626490 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625981)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun Unit!82202 () Unit!82123)

(assert (=> b!4427187 (= e!2756598 Unit!82202)))

(declare-fun b!4427188 () Bool)

(declare-fun res!1830607 () Bool)

(assert (=> b!4427188 (=> (not res!1830607) (not e!2756600))))

(assert (=> b!4427188 (= res!1830607 (contains!12118 lt!1626491 (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))

(declare-fun b!4427189 () Bool)

(assert (=> b!4427189 (= e!2756600 (= (content!7963 (getKeysList!256 lt!1626491)) ((_ map or) (content!7963 (getKeysList!256 (toList!3506 lt!1625981))) (store ((as const (Array K!10970 Bool)) false) (_1!28001 lt!1625974) true))))))

(declare-fun b!4427190 () Bool)

(assert (=> b!4427190 (= c!753599 ((_ is Cons!49605) (toList!3506 lt!1625981)))))

(assert (=> b!4427190 (= e!2756599 e!2756596)))

(assert (= (and d!1342186 c!753602) b!4427180))

(assert (= (and d!1342186 (not c!753602)) b!4427182))

(assert (= (and b!4427182 res!1830609) b!4427179))

(assert (= (and b!4427182 c!753603) b!4427183))

(assert (= (and b!4427182 (not c!753603)) b!4427190))

(assert (= (and b!4427190 c!753599) b!4427186))

(assert (= (and b!4427190 (not c!753599)) b!4427178))

(assert (= (and b!4427186 c!753601) b!4427187))

(assert (= (and b!4427186 (not c!753601)) b!4427181))

(assert (= (or b!4427186 b!4427178) bm!308035))

(assert (= (and bm!308035 c!753600) b!4427177))

(assert (= (and bm!308035 (not c!753600)) b!4427185))

(assert (= (or b!4427183 bm!308035) bm!308036))

(assert (= (or b!4427180 b!4427187) bm!308037))

(assert (= (or b!4427180 bm!308036) bm!308034))

(assert (= (and d!1342186 res!1830610) b!4427184))

(assert (= (and b!4427184 res!1830608) b!4427188))

(assert (= (and b!4427188 res!1830607) b!4427189))

(declare-fun m!5109007 () Bool)

(assert (=> b!4427187 m!5109007))

(declare-fun m!5109009 () Bool)

(assert (=> b!4427187 m!5109009))

(declare-fun m!5109011 () Bool)

(assert (=> b!4427187 m!5109011))

(declare-fun m!5109013 () Bool)

(assert (=> b!4427187 m!5109013))

(declare-fun m!5109015 () Bool)

(assert (=> b!4427187 m!5109015))

(declare-fun m!5109017 () Bool)

(assert (=> b!4427188 m!5109017))

(declare-fun m!5109019 () Bool)

(assert (=> b!4427179 m!5109019))

(declare-fun m!5109021 () Bool)

(assert (=> d!1342186 m!5109021))

(assert (=> d!1342186 m!5108815))

(declare-fun m!5109023 () Bool)

(assert (=> bm!308037 m!5109023))

(declare-fun m!5109025 () Bool)

(assert (=> b!4427189 m!5109025))

(declare-fun m!5109027 () Bool)

(assert (=> b!4427189 m!5109027))

(declare-fun m!5109029 () Bool)

(assert (=> b!4427189 m!5109029))

(assert (=> b!4427189 m!5109025))

(assert (=> b!4427189 m!5108501))

(declare-fun m!5109031 () Bool)

(assert (=> b!4427189 m!5109031))

(assert (=> b!4427189 m!5108501))

(declare-fun m!5109033 () Bool)

(assert (=> b!4427180 m!5109033))

(declare-fun m!5109035 () Bool)

(assert (=> b!4427180 m!5109035))

(declare-fun m!5109037 () Bool)

(assert (=> b!4427184 m!5109037))

(assert (=> b!4427186 m!5109011))

(assert (=> b!4427186 m!5109011))

(declare-fun m!5109039 () Bool)

(assert (=> b!4427186 m!5109039))

(declare-fun m!5109041 () Bool)

(assert (=> bm!308034 m!5109041))

(assert (=> b!4427177 m!5109011))

(assert (=> d!1341958 d!1342186))

(assert (=> b!4426901 d!1342150))

(declare-fun d!1342208 () Bool)

(declare-fun res!1830613 () Bool)

(declare-fun e!2756606 () Bool)

(assert (=> d!1342208 (=> res!1830613 e!2756606)))

(assert (=> d!1342208 (= res!1830613 ((_ is Nil!49605) newBucket!194))))

(assert (=> d!1342208 (= (forall!9578 newBucket!194 lambda!154317) e!2756606)))

(declare-fun b!4427197 () Bool)

(declare-fun e!2756607 () Bool)

(assert (=> b!4427197 (= e!2756606 e!2756607)))

(declare-fun res!1830614 () Bool)

(assert (=> b!4427197 (=> (not res!1830614) (not e!2756607))))

(assert (=> b!4427197 (= res!1830614 (dynLambda!20851 lambda!154317 (h!55294 newBucket!194)))))

(declare-fun b!4427198 () Bool)

(assert (=> b!4427198 (= e!2756607 (forall!9578 (t!356667 newBucket!194) lambda!154317))))

(assert (= (and d!1342208 (not res!1830613)) b!4427197))

(assert (= (and b!4427197 res!1830614) b!4427198))

(declare-fun b_lambda!143247 () Bool)

(assert (=> (not b_lambda!143247) (not b!4427197)))

(declare-fun m!5109043 () Bool)

(assert (=> b!4427197 m!5109043))

(declare-fun m!5109045 () Bool)

(assert (=> b!4427198 m!5109045))

(assert (=> d!1341994 d!1342208))

(declare-fun d!1342210 () Bool)

(declare-fun lt!1626497 () Bool)

(assert (=> d!1342210 (= lt!1626497 (select (content!7964 (toList!3505 lt!1626247)) lt!1625978))))

(declare-fun e!2756609 () Bool)

(assert (=> d!1342210 (= lt!1626497 e!2756609)))

(declare-fun res!1830615 () Bool)

(assert (=> d!1342210 (=> (not res!1830615) (not e!2756609))))

(assert (=> d!1342210 (= res!1830615 ((_ is Cons!49606) (toList!3505 lt!1626247)))))

(assert (=> d!1342210 (= (contains!12120 (toList!3505 lt!1626247) lt!1625978) lt!1626497)))

(declare-fun b!4427199 () Bool)

(declare-fun e!2756608 () Bool)

(assert (=> b!4427199 (= e!2756609 e!2756608)))

(declare-fun res!1830616 () Bool)

(assert (=> b!4427199 (=> res!1830616 e!2756608)))

(assert (=> b!4427199 (= res!1830616 (= (h!55295 (toList!3505 lt!1626247)) lt!1625978))))

(declare-fun b!4427200 () Bool)

(assert (=> b!4427200 (= e!2756608 (contains!12120 (t!356668 (toList!3505 lt!1626247)) lt!1625978))))

(assert (= (and d!1342210 res!1830615) b!4427199))

(assert (= (and b!4427199 (not res!1830616)) b!4427200))

(declare-fun m!5109047 () Bool)

(assert (=> d!1342210 m!5109047))

(declare-fun m!5109049 () Bool)

(assert (=> d!1342210 m!5109049))

(declare-fun m!5109051 () Bool)

(assert (=> b!4427200 m!5109051))

(assert (=> b!4426816 d!1342210))

(declare-fun d!1342212 () Bool)

(declare-fun res!1830617 () Bool)

(declare-fun e!2756610 () Bool)

(assert (=> d!1342212 (=> res!1830617 e!2756610)))

(assert (=> d!1342212 (= res!1830617 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342212 (= (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154314) e!2756610)))

(declare-fun b!4427201 () Bool)

(declare-fun e!2756611 () Bool)

(assert (=> b!4427201 (= e!2756610 e!2756611)))

(declare-fun res!1830618 () Bool)

(assert (=> b!4427201 (=> (not res!1830618) (not e!2756611))))

(assert (=> b!4427201 (= res!1830618 (dynLambda!20851 lambda!154314 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun b!4427202 () Bool)

(assert (=> b!4427202 (= e!2756611 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154314))))

(assert (= (and d!1342212 (not res!1830617)) b!4427201))

(assert (= (and b!4427201 res!1830618) b!4427202))

(declare-fun b_lambda!143249 () Bool)

(assert (=> (not b_lambda!143249) (not b!4427201)))

(declare-fun m!5109053 () Bool)

(assert (=> b!4427201 m!5109053))

(declare-fun m!5109055 () Bool)

(assert (=> b!4427202 m!5109055))

(assert (=> d!1341960 d!1342212))

(declare-fun d!1342214 () Bool)

(declare-fun res!1830619 () Bool)

(declare-fun e!2756612 () Bool)

(assert (=> d!1342214 (=> res!1830619 e!2756612)))

(assert (=> d!1342214 (= res!1830619 (not ((_ is Cons!49605) (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> d!1342214 (= (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616)))) e!2756612)))

(declare-fun b!4427203 () Bool)

(declare-fun e!2756613 () Bool)

(assert (=> b!4427203 (= e!2756612 e!2756613)))

(declare-fun res!1830620 () Bool)

(assert (=> b!4427203 (=> (not res!1830620) (not e!2756613))))

(assert (=> b!4427203 (= res!1830620 (not (containsKey!1130 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun b!4427204 () Bool)

(assert (=> b!4427204 (= e!2756613 (noDuplicateKeys!759 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (= (and d!1342214 (not res!1830619)) b!4427203))

(assert (= (and b!4427203 res!1830620) b!4427204))

(declare-fun m!5109061 () Bool)

(assert (=> b!4427203 m!5109061))

(declare-fun m!5109063 () Bool)

(assert (=> b!4427204 m!5109063))

(assert (=> d!1341960 d!1342214))

(declare-fun d!1342218 () Bool)

(declare-fun res!1830621 () Bool)

(declare-fun e!2756614 () Bool)

(assert (=> d!1342218 (=> res!1830621 e!2756614)))

(assert (=> d!1342218 (= res!1830621 ((_ is Nil!49606) (toList!3505 lm!1616)))))

(assert (=> d!1342218 (= (forall!9576 (toList!3505 lm!1616) lambda!154352) e!2756614)))

(declare-fun b!4427205 () Bool)

(declare-fun e!2756615 () Bool)

(assert (=> b!4427205 (= e!2756614 e!2756615)))

(declare-fun res!1830622 () Bool)

(assert (=> b!4427205 (=> (not res!1830622) (not e!2756615))))

(assert (=> b!4427205 (= res!1830622 (dynLambda!20850 lambda!154352 (h!55295 (toList!3505 lm!1616))))))

(declare-fun b!4427206 () Bool)

(assert (=> b!4427206 (= e!2756615 (forall!9576 (t!356668 (toList!3505 lm!1616)) lambda!154352))))

(assert (= (and d!1342218 (not res!1830621)) b!4427205))

(assert (= (and b!4427205 res!1830622) b!4427206))

(declare-fun b_lambda!143251 () Bool)

(assert (=> (not b_lambda!143251) (not b!4427205)))

(declare-fun m!5109065 () Bool)

(assert (=> b!4427205 m!5109065))

(declare-fun m!5109067 () Bool)

(assert (=> b!4427206 m!5109067))

(assert (=> d!1342076 d!1342218))

(declare-fun b!4427207 () Bool)

(declare-fun e!2756618 () Unit!82123)

(declare-fun e!2756616 () Unit!82123)

(assert (=> b!4427207 (= e!2756618 e!2756616)))

(declare-fun c!753608 () Bool)

(declare-fun call!308043 () Bool)

(assert (=> b!4427207 (= c!753608 call!308043)))

(declare-fun b!4427208 () Bool)

(declare-fun e!2756620 () List!49732)

(assert (=> b!4427208 (= e!2756620 (keys!16942 lt!1626343))))

(declare-fun b!4427209 () Bool)

(declare-fun e!2756617 () Bool)

(assert (=> b!4427209 (= e!2756617 (contains!12121 (keys!16942 lt!1626343) (_1!28001 lt!1625974)))))

(declare-fun d!1342220 () Bool)

(declare-fun e!2756621 () Bool)

(assert (=> d!1342220 e!2756621))

(declare-fun res!1830623 () Bool)

(assert (=> d!1342220 (=> res!1830623 e!2756621)))

(declare-fun e!2756619 () Bool)

(assert (=> d!1342220 (= res!1830623 e!2756619)))

(declare-fun res!1830625 () Bool)

(assert (=> d!1342220 (=> (not res!1830625) (not e!2756619))))

(declare-fun lt!1626499 () Bool)

(assert (=> d!1342220 (= res!1830625 (not lt!1626499))))

(declare-fun lt!1626502 () Bool)

(assert (=> d!1342220 (= lt!1626499 lt!1626502)))

(declare-fun lt!1626504 () Unit!82123)

(assert (=> d!1342220 (= lt!1626504 e!2756618)))

(declare-fun c!753606 () Bool)

(assert (=> d!1342220 (= c!753606 lt!1626502)))

(assert (=> d!1342220 (= lt!1626502 (containsKey!1133 (toList!3506 lt!1626343) (_1!28001 lt!1625974)))))

(assert (=> d!1342220 (= (contains!12114 lt!1626343 (_1!28001 lt!1625974)) lt!1626499)))

(declare-fun b!4427210 () Bool)

(assert (=> b!4427210 (= e!2756620 (getKeysList!256 (toList!3506 lt!1626343)))))

(declare-fun b!4427211 () Bool)

(assert (=> b!4427211 (= e!2756621 e!2756617)))

(declare-fun res!1830624 () Bool)

(assert (=> b!4427211 (=> (not res!1830624) (not e!2756617))))

(assert (=> b!4427211 (= res!1830624 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626343) (_1!28001 lt!1625974))))))

(declare-fun b!4427212 () Bool)

(declare-fun Unit!82204 () Unit!82123)

(assert (=> b!4427212 (= e!2756616 Unit!82204)))

(declare-fun b!4427213 () Bool)

(declare-fun lt!1626498 () Unit!82123)

(assert (=> b!4427213 (= e!2756618 lt!1626498)))

(declare-fun lt!1626505 () Unit!82123)

(assert (=> b!4427213 (= lt!1626505 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1626343) (_1!28001 lt!1625974)))))

(assert (=> b!4427213 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626343) (_1!28001 lt!1625974)))))

(declare-fun lt!1626500 () Unit!82123)

(assert (=> b!4427213 (= lt!1626500 lt!1626505)))

(assert (=> b!4427213 (= lt!1626498 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1626343) (_1!28001 lt!1625974)))))

(assert (=> b!4427213 call!308043))

(declare-fun b!4427214 () Bool)

(assert (=> b!4427214 (= e!2756619 (not (contains!12121 (keys!16942 lt!1626343) (_1!28001 lt!1625974))))))

(declare-fun bm!308038 () Bool)

(assert (=> bm!308038 (= call!308043 (contains!12121 e!2756620 (_1!28001 lt!1625974)))))

(declare-fun c!753607 () Bool)

(assert (=> bm!308038 (= c!753607 c!753606)))

(declare-fun b!4427215 () Bool)

(assert (=> b!4427215 false))

(declare-fun lt!1626501 () Unit!82123)

(declare-fun lt!1626503 () Unit!82123)

(assert (=> b!4427215 (= lt!1626501 lt!1626503)))

(assert (=> b!4427215 (containsKey!1133 (toList!3506 lt!1626343) (_1!28001 lt!1625974))))

(assert (=> b!4427215 (= lt!1626503 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1626343) (_1!28001 lt!1625974)))))

(declare-fun Unit!82205 () Unit!82123)

(assert (=> b!4427215 (= e!2756616 Unit!82205)))

(assert (= (and d!1342220 c!753606) b!4427213))

(assert (= (and d!1342220 (not c!753606)) b!4427207))

(assert (= (and b!4427207 c!753608) b!4427215))

(assert (= (and b!4427207 (not c!753608)) b!4427212))

(assert (= (or b!4427213 b!4427207) bm!308038))

(assert (= (and bm!308038 c!753607) b!4427210))

(assert (= (and bm!308038 (not c!753607)) b!4427208))

(assert (= (and d!1342220 res!1830625) b!4427214))

(assert (= (and d!1342220 (not res!1830623)) b!4427211))

(assert (= (and b!4427211 res!1830624) b!4427209))

(declare-fun m!5109069 () Bool)

(assert (=> b!4427215 m!5109069))

(declare-fun m!5109071 () Bool)

(assert (=> b!4427215 m!5109071))

(declare-fun m!5109073 () Bool)

(assert (=> b!4427209 m!5109073))

(assert (=> b!4427209 m!5109073))

(declare-fun m!5109075 () Bool)

(assert (=> b!4427209 m!5109075))

(assert (=> b!4427214 m!5109073))

(assert (=> b!4427214 m!5109073))

(assert (=> b!4427214 m!5109075))

(declare-fun m!5109077 () Bool)

(assert (=> b!4427210 m!5109077))

(assert (=> b!4427211 m!5108673))

(assert (=> b!4427211 m!5108673))

(declare-fun m!5109079 () Bool)

(assert (=> b!4427211 m!5109079))

(assert (=> d!1342220 m!5109069))

(declare-fun m!5109081 () Bool)

(assert (=> bm!308038 m!5109081))

(assert (=> b!4427208 m!5109073))

(declare-fun m!5109083 () Bool)

(assert (=> b!4427213 m!5109083))

(assert (=> b!4427213 m!5108673))

(assert (=> b!4427213 m!5108673))

(assert (=> b!4427213 m!5109079))

(declare-fun m!5109085 () Bool)

(assert (=> b!4427213 m!5109085))

(assert (=> d!1342070 d!1342220))

(declare-fun b!4427218 () Bool)

(declare-fun e!2756623 () Option!10733)

(assert (=> b!4427218 (= e!2756623 (getValueByKey!719 (t!356667 lt!1626345) (_1!28001 lt!1625974)))))

(declare-fun b!4427217 () Bool)

(declare-fun e!2756622 () Option!10733)

(assert (=> b!4427217 (= e!2756622 e!2756623)))

(declare-fun c!753610 () Bool)

(assert (=> b!4427217 (= c!753610 (and ((_ is Cons!49605) lt!1626345) (not (= (_1!28001 (h!55294 lt!1626345)) (_1!28001 lt!1625974)))))))

(declare-fun d!1342222 () Bool)

(declare-fun c!753609 () Bool)

(assert (=> d!1342222 (= c!753609 (and ((_ is Cons!49605) lt!1626345) (= (_1!28001 (h!55294 lt!1626345)) (_1!28001 lt!1625974))))))

(assert (=> d!1342222 (= (getValueByKey!719 lt!1626345 (_1!28001 lt!1625974)) e!2756622)))

(declare-fun b!4427216 () Bool)

(assert (=> b!4427216 (= e!2756622 (Some!10732 (_2!28001 (h!55294 lt!1626345))))))

(declare-fun b!4427219 () Bool)

(assert (=> b!4427219 (= e!2756623 None!10732)))

(assert (= (and d!1342222 c!753609) b!4427216))

(assert (= (and d!1342222 (not c!753609)) b!4427217))

(assert (= (and b!4427217 c!753610) b!4427218))

(assert (= (and b!4427217 (not c!753610)) b!4427219))

(declare-fun m!5109087 () Bool)

(assert (=> b!4427218 m!5109087))

(assert (=> d!1342070 d!1342222))

(declare-fun d!1342224 () Bool)

(assert (=> d!1342224 (= (getValueByKey!719 lt!1626345 (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974)))))

(declare-fun lt!1626506 () Unit!82123)

(assert (=> d!1342224 (= lt!1626506 (choose!27982 lt!1626345 (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun e!2756624 () Bool)

(assert (=> d!1342224 e!2756624))

(declare-fun res!1830626 () Bool)

(assert (=> d!1342224 (=> (not res!1830626) (not e!2756624))))

(assert (=> d!1342224 (= res!1830626 (invariantList!809 lt!1626345))))

(assert (=> d!1342224 (= (lemmaContainsTupThenGetReturnValue!454 lt!1626345 (_1!28001 lt!1625974) (_2!28001 lt!1625974)) lt!1626506)))

(declare-fun b!4427220 () Bool)

(declare-fun res!1830627 () Bool)

(assert (=> b!4427220 (=> (not res!1830627) (not e!2756624))))

(assert (=> b!4427220 (= res!1830627 (containsKey!1133 lt!1626345 (_1!28001 lt!1625974)))))

(declare-fun b!4427221 () Bool)

(assert (=> b!4427221 (= e!2756624 (contains!12118 lt!1626345 (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))

(assert (= (and d!1342224 res!1830626) b!4427220))

(assert (= (and b!4427220 res!1830627) b!4427221))

(assert (=> d!1342224 m!5108667))

(declare-fun m!5109089 () Bool)

(assert (=> d!1342224 m!5109089))

(declare-fun m!5109091 () Bool)

(assert (=> d!1342224 m!5109091))

(declare-fun m!5109093 () Bool)

(assert (=> b!4427220 m!5109093))

(declare-fun m!5109095 () Bool)

(assert (=> b!4427221 m!5109095))

(assert (=> d!1342070 d!1342224))

(declare-fun b!4427222 () Bool)

(declare-fun e!2756625 () List!49729)

(assert (=> b!4427222 (= e!2756625 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625969)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun c!753611 () Bool)

(declare-fun c!753614 () Bool)

(declare-fun bm!308039 () Bool)

(declare-fun c!753615 () Bool)

(declare-fun call!308044 () List!49729)

(assert (=> bm!308039 (= call!308044 ($colon$colon!786 (ite c!753614 (t!356667 (toList!3506 lt!1625969)) (ite c!753615 (toList!3506 lt!1625969) e!2756625)) (ite (or c!753614 c!753615) (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974)) (ite c!753611 (h!55294 (toList!3506 lt!1625969)) (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))))

(declare-fun b!4427223 () Bool)

(declare-fun e!2756626 () List!49729)

(declare-fun call!308045 () List!49729)

(assert (=> b!4427223 (= e!2756626 call!308045)))

(declare-fun bm!308040 () Bool)

(declare-fun call!308046 () List!49729)

(assert (=> bm!308040 (= call!308045 call!308046)))

(declare-fun c!753612 () Bool)

(assert (=> bm!308040 (= c!753612 c!753611)))

(declare-fun b!4427225 () Bool)

(declare-fun e!2756631 () List!49729)

(assert (=> b!4427225 (= e!2756631 call!308044)))

(declare-fun lt!1626514 () List!49732)

(declare-fun call!308047 () List!49732)

(assert (=> b!4427225 (= lt!1626514 call!308047)))

(declare-fun lt!1626515 () Unit!82123)

(assert (=> b!4427225 (= lt!1626515 (lemmaSubseqRefl!100 lt!1626514))))

(assert (=> b!4427225 (subseq!616 lt!1626514 lt!1626514)))

(declare-fun lt!1626517 () Unit!82123)

(assert (=> b!4427225 (= lt!1626517 lt!1626515)))

(declare-fun bm!308041 () Bool)

(assert (=> bm!308041 (= call!308046 call!308044)))

(declare-fun b!4427226 () Bool)

(declare-fun e!2756628 () Unit!82123)

(declare-fun Unit!82207 () Unit!82123)

(assert (=> b!4427226 (= e!2756628 Unit!82207)))

(declare-fun b!4427227 () Bool)

(declare-fun e!2756629 () List!49729)

(assert (=> b!4427227 (= e!2756631 e!2756629)))

(declare-fun res!1830630 () Bool)

(assert (=> b!4427227 (= res!1830630 ((_ is Cons!49605) (toList!3506 lt!1625969)))))

(declare-fun e!2756627 () Bool)

(assert (=> b!4427227 (=> (not res!1830630) (not e!2756627))))

(assert (=> b!4427227 (= c!753615 e!2756627)))

(declare-fun b!4427228 () Bool)

(assert (=> b!4427228 (= e!2756629 call!308046)))

(declare-fun b!4427229 () Bool)

(declare-fun res!1830629 () Bool)

(declare-fun e!2756630 () Bool)

(assert (=> b!4427229 (=> (not res!1830629) (not e!2756630))))

(declare-fun lt!1626513 () List!49729)

(assert (=> b!4427229 (= res!1830629 (containsKey!1133 lt!1626513 (_1!28001 lt!1625974)))))

(declare-fun b!4427224 () Bool)

(assert (=> b!4427224 (= e!2756627 (not (containsKey!1133 (toList!3506 lt!1625969) (_1!28001 lt!1625974))))))

(declare-fun d!1342226 () Bool)

(assert (=> d!1342226 e!2756630))

(declare-fun res!1830631 () Bool)

(assert (=> d!1342226 (=> (not res!1830631) (not e!2756630))))

(assert (=> d!1342226 (= res!1830631 (invariantList!809 lt!1626513))))

(assert (=> d!1342226 (= lt!1626513 e!2756631)))

(assert (=> d!1342226 (= c!753614 (and ((_ is Cons!49605) (toList!3506 lt!1625969)) (= (_1!28001 (h!55294 (toList!3506 lt!1625969))) (_1!28001 lt!1625974))))))

(assert (=> d!1342226 (invariantList!809 (toList!3506 lt!1625969))))

(assert (=> d!1342226 (= (insertNoDuplicatedKeys!199 (toList!3506 lt!1625969) (_1!28001 lt!1625974) (_2!28001 lt!1625974)) lt!1626513)))

(declare-fun b!4427230 () Bool)

(assert (=> b!4427230 (= e!2756625 Nil!49605)))

(declare-fun b!4427231 () Bool)

(declare-fun lt!1626509 () List!49729)

(assert (=> b!4427231 (= e!2756626 lt!1626509)))

(assert (=> b!4427231 (= lt!1626509 call!308045)))

(declare-fun c!753613 () Bool)

(assert (=> b!4427231 (= c!753613 (containsKey!1133 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625969)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)) (_1!28001 (h!55294 (toList!3506 lt!1625969)))))))

(declare-fun lt!1626516 () Unit!82123)

(assert (=> b!4427231 (= lt!1626516 e!2756628)))

(declare-fun lt!1626512 () List!49729)

(declare-fun bm!308042 () Bool)

(assert (=> bm!308042 (= call!308047 (getKeysList!256 (ite c!753614 (toList!3506 lt!1625969) lt!1626512)))))

(declare-fun b!4427232 () Bool)

(assert (=> b!4427232 false))

(declare-fun lt!1626508 () Unit!82123)

(declare-fun lt!1626511 () Unit!82123)

(assert (=> b!4427232 (= lt!1626508 lt!1626511)))

(assert (=> b!4427232 (containsKey!1133 (t!356667 (toList!3506 lt!1625969)) (_1!28001 (h!55294 (toList!3506 lt!1625969))))))

(assert (=> b!4427232 (= lt!1626511 (lemmaInGetKeysListThenContainsKey!254 (t!356667 (toList!3506 lt!1625969)) (_1!28001 (h!55294 (toList!3506 lt!1625969)))))))

(declare-fun lt!1626507 () Unit!82123)

(declare-fun lt!1626510 () Unit!82123)

(assert (=> b!4427232 (= lt!1626507 lt!1626510)))

(assert (=> b!4427232 (contains!12121 call!308047 (_1!28001 (h!55294 (toList!3506 lt!1625969))))))

(assert (=> b!4427232 (= lt!1626510 (lemmaInListThenGetKeysListContains!253 lt!1626512 (_1!28001 (h!55294 (toList!3506 lt!1625969)))))))

(assert (=> b!4427232 (= lt!1626512 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625969)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun Unit!82216 () Unit!82123)

(assert (=> b!4427232 (= e!2756628 Unit!82216)))

(declare-fun b!4427233 () Bool)

(declare-fun res!1830628 () Bool)

(assert (=> b!4427233 (=> (not res!1830628) (not e!2756630))))

(assert (=> b!4427233 (= res!1830628 (contains!12118 lt!1626513 (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))

(declare-fun b!4427234 () Bool)

(assert (=> b!4427234 (= e!2756630 (= (content!7963 (getKeysList!256 lt!1626513)) ((_ map or) (content!7963 (getKeysList!256 (toList!3506 lt!1625969))) (store ((as const (Array K!10970 Bool)) false) (_1!28001 lt!1625974) true))))))

(declare-fun b!4427235 () Bool)

(assert (=> b!4427235 (= c!753611 ((_ is Cons!49605) (toList!3506 lt!1625969)))))

(assert (=> b!4427235 (= e!2756629 e!2756626)))

(assert (= (and d!1342226 c!753614) b!4427225))

(assert (= (and d!1342226 (not c!753614)) b!4427227))

(assert (= (and b!4427227 res!1830630) b!4427224))

(assert (= (and b!4427227 c!753615) b!4427228))

(assert (= (and b!4427227 (not c!753615)) b!4427235))

(assert (= (and b!4427235 c!753611) b!4427231))

(assert (= (and b!4427235 (not c!753611)) b!4427223))

(assert (= (and b!4427231 c!753613) b!4427232))

(assert (= (and b!4427231 (not c!753613)) b!4427226))

(assert (= (or b!4427231 b!4427223) bm!308040))

(assert (= (and bm!308040 c!753612) b!4427222))

(assert (= (and bm!308040 (not c!753612)) b!4427230))

(assert (= (or b!4427228 bm!308040) bm!308041))

(assert (= (or b!4427225 b!4427232) bm!308042))

(assert (= (or b!4427225 bm!308041) bm!308039))

(assert (= (and d!1342226 res!1830631) b!4427229))

(assert (= (and b!4427229 res!1830629) b!4427233))

(assert (= (and b!4427233 res!1830628) b!4427234))

(declare-fun m!5109097 () Bool)

(assert (=> b!4427232 m!5109097))

(declare-fun m!5109099 () Bool)

(assert (=> b!4427232 m!5109099))

(declare-fun m!5109101 () Bool)

(assert (=> b!4427232 m!5109101))

(declare-fun m!5109103 () Bool)

(assert (=> b!4427232 m!5109103))

(declare-fun m!5109105 () Bool)

(assert (=> b!4427232 m!5109105))

(declare-fun m!5109107 () Bool)

(assert (=> b!4427233 m!5109107))

(declare-fun m!5109109 () Bool)

(assert (=> b!4427224 m!5109109))

(declare-fun m!5109111 () Bool)

(assert (=> d!1342226 m!5109111))

(declare-fun m!5109113 () Bool)

(assert (=> d!1342226 m!5109113))

(declare-fun m!5109115 () Bool)

(assert (=> bm!308042 m!5109115))

(declare-fun m!5109117 () Bool)

(assert (=> b!4427234 m!5109117))

(declare-fun m!5109119 () Bool)

(assert (=> b!4427234 m!5109119))

(assert (=> b!4427234 m!5109029))

(assert (=> b!4427234 m!5109117))

(declare-fun m!5109121 () Bool)

(assert (=> b!4427234 m!5109121))

(declare-fun m!5109123 () Bool)

(assert (=> b!4427234 m!5109123))

(assert (=> b!4427234 m!5109121))

(declare-fun m!5109125 () Bool)

(assert (=> b!4427225 m!5109125))

(declare-fun m!5109127 () Bool)

(assert (=> b!4427225 m!5109127))

(declare-fun m!5109129 () Bool)

(assert (=> b!4427229 m!5109129))

(assert (=> b!4427231 m!5109101))

(assert (=> b!4427231 m!5109101))

(declare-fun m!5109131 () Bool)

(assert (=> b!4427231 m!5109131))

(declare-fun m!5109133 () Bool)

(assert (=> bm!308039 m!5109133))

(assert (=> b!4427222 m!5109101))

(assert (=> d!1342070 d!1342226))

(declare-fun d!1342228 () Bool)

(declare-fun res!1830632 () Bool)

(declare-fun e!2756632 () Bool)

(assert (=> d!1342228 (=> res!1830632 e!2756632)))

(assert (=> d!1342228 (= res!1830632 (and ((_ is Cons!49605) (t!356667 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))))) (= (_1!28001 (h!55294 (t!356667 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616))))))) key!3717)))))

(assert (=> d!1342228 (= (containsKey!1130 (t!356667 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616))))) key!3717) e!2756632)))

(declare-fun b!4427236 () Bool)

(declare-fun e!2756633 () Bool)

(assert (=> b!4427236 (= e!2756632 e!2756633)))

(declare-fun res!1830633 () Bool)

(assert (=> b!4427236 (=> (not res!1830633) (not e!2756633))))

(assert (=> b!4427236 (= res!1830633 ((_ is Cons!49605) (t!356667 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun b!4427237 () Bool)

(assert (=> b!4427237 (= e!2756633 (containsKey!1130 (t!356667 (t!356667 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))))) key!3717))))

(assert (= (and d!1342228 (not res!1830632)) b!4427236))

(assert (= (and b!4427236 res!1830633) b!4427237))

(declare-fun m!5109135 () Bool)

(assert (=> b!4427237 m!5109135))

(assert (=> b!4426922 d!1342228))

(declare-fun d!1342230 () Bool)

(declare-fun res!1830634 () Bool)

(declare-fun e!2756634 () Bool)

(assert (=> d!1342230 (=> res!1830634 e!2756634)))

(assert (=> d!1342230 (= res!1830634 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342230 (= (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154321) e!2756634)))

(declare-fun b!4427238 () Bool)

(declare-fun e!2756635 () Bool)

(assert (=> b!4427238 (= e!2756634 e!2756635)))

(declare-fun res!1830635 () Bool)

(assert (=> b!4427238 (=> (not res!1830635) (not e!2756635))))

(assert (=> b!4427238 (= res!1830635 (dynLambda!20851 lambda!154321 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun b!4427239 () Bool)

(assert (=> b!4427239 (= e!2756635 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154321))))

(assert (= (and d!1342230 (not res!1830634)) b!4427238))

(assert (= (and b!4427238 res!1830635) b!4427239))

(declare-fun b_lambda!143253 () Bool)

(assert (=> (not b_lambda!143253) (not b!4427238)))

(declare-fun m!5109137 () Bool)

(assert (=> b!4427238 m!5109137))

(declare-fun m!5109139 () Bool)

(assert (=> b!4427239 m!5109139))

(assert (=> d!1341998 d!1342230))

(assert (=> d!1341998 d!1342214))

(declare-fun d!1342232 () Bool)

(declare-fun e!2756637 () Bool)

(assert (=> d!1342232 e!2756637))

(declare-fun res!1830636 () Bool)

(assert (=> d!1342232 (=> res!1830636 e!2756637)))

(declare-fun lt!1626521 () Bool)

(assert (=> d!1342232 (= res!1830636 (not lt!1626521))))

(declare-fun lt!1626520 () Bool)

(assert (=> d!1342232 (= lt!1626521 lt!1626520)))

(declare-fun lt!1626518 () Unit!82123)

(declare-fun e!2756636 () Unit!82123)

(assert (=> d!1342232 (= lt!1626518 e!2756636)))

(declare-fun c!753616 () Bool)

(assert (=> d!1342232 (= c!753616 lt!1626520)))

(assert (=> d!1342232 (= lt!1626520 (containsKey!1134 (toList!3505 lt!1626329) (_1!28002 lt!1625978)))))

(assert (=> d!1342232 (= (contains!12115 lt!1626329 (_1!28002 lt!1625978)) lt!1626521)))

(declare-fun b!4427240 () Bool)

(declare-fun lt!1626519 () Unit!82123)

(assert (=> b!4427240 (= e!2756636 lt!1626519)))

(assert (=> b!4427240 (= lt!1626519 (lemmaContainsKeyImpliesGetValueByKeyDefined!629 (toList!3505 lt!1626329) (_1!28002 lt!1625978)))))

(assert (=> b!4427240 (isDefined!8026 (getValueByKey!720 (toList!3505 lt!1626329) (_1!28002 lt!1625978)))))

(declare-fun b!4427241 () Bool)

(declare-fun Unit!82219 () Unit!82123)

(assert (=> b!4427241 (= e!2756636 Unit!82219)))

(declare-fun b!4427242 () Bool)

(assert (=> b!4427242 (= e!2756637 (isDefined!8026 (getValueByKey!720 (toList!3505 lt!1626329) (_1!28002 lt!1625978))))))

(assert (= (and d!1342232 c!753616) b!4427240))

(assert (= (and d!1342232 (not c!753616)) b!4427241))

(assert (= (and d!1342232 (not res!1830636)) b!4427242))

(declare-fun m!5109141 () Bool)

(assert (=> d!1342232 m!5109141))

(declare-fun m!5109143 () Bool)

(assert (=> b!4427240 m!5109143))

(assert (=> b!4427240 m!5108615))

(assert (=> b!4427240 m!5108615))

(declare-fun m!5109145 () Bool)

(assert (=> b!4427240 m!5109145))

(assert (=> b!4427242 m!5108615))

(assert (=> b!4427242 m!5108615))

(assert (=> b!4427242 m!5109145))

(assert (=> d!1342054 d!1342232))

(declare-fun d!1342234 () Bool)

(declare-fun c!753617 () Bool)

(assert (=> d!1342234 (= c!753617 (and ((_ is Cons!49606) lt!1626328) (= (_1!28002 (h!55295 lt!1626328)) (_1!28002 lt!1625978))))))

(declare-fun e!2756638 () Option!10734)

(assert (=> d!1342234 (= (getValueByKey!720 lt!1626328 (_1!28002 lt!1625978)) e!2756638)))

(declare-fun b!4427245 () Bool)

(declare-fun e!2756639 () Option!10734)

(assert (=> b!4427245 (= e!2756639 (getValueByKey!720 (t!356668 lt!1626328) (_1!28002 lt!1625978)))))

(declare-fun b!4427243 () Bool)

(assert (=> b!4427243 (= e!2756638 (Some!10733 (_2!28002 (h!55295 lt!1626328))))))

(declare-fun b!4427246 () Bool)

(assert (=> b!4427246 (= e!2756639 None!10733)))

(declare-fun b!4427244 () Bool)

(assert (=> b!4427244 (= e!2756638 e!2756639)))

(declare-fun c!753618 () Bool)

(assert (=> b!4427244 (= c!753618 (and ((_ is Cons!49606) lt!1626328) (not (= (_1!28002 (h!55295 lt!1626328)) (_1!28002 lt!1625978)))))))

(assert (= (and d!1342234 c!753617) b!4427243))

(assert (= (and d!1342234 (not c!753617)) b!4427244))

(assert (= (and b!4427244 c!753618) b!4427245))

(assert (= (and b!4427244 (not c!753618)) b!4427246))

(declare-fun m!5109147 () Bool)

(assert (=> b!4427245 m!5109147))

(assert (=> d!1342054 d!1342234))

(declare-fun d!1342236 () Bool)

(assert (=> d!1342236 (= (getValueByKey!720 lt!1626328 (_1!28002 lt!1625978)) (Some!10733 (_2!28002 lt!1625978)))))

(declare-fun lt!1626526 () Unit!82123)

(declare-fun choose!27984 (List!49730 (_ BitVec 64) List!49729) Unit!82123)

(assert (=> d!1342236 (= lt!1626526 (choose!27984 lt!1626328 (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(declare-fun e!2756644 () Bool)

(assert (=> d!1342236 e!2756644))

(declare-fun res!1830647 () Bool)

(assert (=> d!1342236 (=> (not res!1830647) (not e!2756644))))

(assert (=> d!1342236 (= res!1830647 (isStrictlySorted!236 lt!1626328))))

(assert (=> d!1342236 (= (lemmaContainsTupThenGetReturnValue!455 lt!1626328 (_1!28002 lt!1625978) (_2!28002 lt!1625978)) lt!1626526)))

(declare-fun b!4427257 () Bool)

(declare-fun res!1830648 () Bool)

(assert (=> b!4427257 (=> (not res!1830648) (not e!2756644))))

(assert (=> b!4427257 (= res!1830648 (containsKey!1134 lt!1626328 (_1!28002 lt!1625978)))))

(declare-fun b!4427258 () Bool)

(assert (=> b!4427258 (= e!2756644 (contains!12120 lt!1626328 (tuple2!49417 (_1!28002 lt!1625978) (_2!28002 lt!1625978))))))

(assert (= (and d!1342236 res!1830647) b!4427257))

(assert (= (and b!4427257 res!1830648) b!4427258))

(assert (=> d!1342236 m!5108609))

(declare-fun m!5109149 () Bool)

(assert (=> d!1342236 m!5109149))

(declare-fun m!5109151 () Bool)

(assert (=> d!1342236 m!5109151))

(declare-fun m!5109153 () Bool)

(assert (=> b!4427257 m!5109153))

(declare-fun m!5109155 () Bool)

(assert (=> b!4427258 m!5109155))

(assert (=> d!1342054 d!1342236))

(declare-fun call!308056 () List!49730)

(declare-fun bm!308049 () Bool)

(declare-fun e!2756663 () List!49730)

(declare-fun c!753636 () Bool)

(declare-fun $colon$colon!787 (List!49730 tuple2!49416) List!49730)

(assert (=> bm!308049 (= call!308056 ($colon$colon!787 e!2756663 (ite c!753636 (h!55295 (toList!3505 lt!1625987)) (tuple2!49417 (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))))

(declare-fun c!753634 () Bool)

(assert (=> bm!308049 (= c!753634 c!753636)))

(declare-fun b!4427296 () Bool)

(declare-fun c!753633 () Bool)

(assert (=> b!4427296 (= c!753633 (and ((_ is Cons!49606) (toList!3505 lt!1625987)) (bvsgt (_1!28002 (h!55295 (toList!3505 lt!1625987))) (_1!28002 lt!1625978))))))

(declare-fun e!2756662 () List!49730)

(declare-fun e!2756664 () List!49730)

(assert (=> b!4427296 (= e!2756662 e!2756664)))

(declare-fun bm!308050 () Bool)

(declare-fun call!308055 () List!49730)

(declare-fun call!308054 () List!49730)

(assert (=> bm!308050 (= call!308055 call!308054)))

(declare-fun b!4427297 () Bool)

(declare-fun e!2756665 () Bool)

(declare-fun lt!1626532 () List!49730)

(assert (=> b!4427297 (= e!2756665 (contains!12120 lt!1626532 (tuple2!49417 (_1!28002 lt!1625978) (_2!28002 lt!1625978))))))

(declare-fun b!4427298 () Bool)

(declare-fun e!2756666 () List!49730)

(assert (=> b!4427298 (= e!2756666 e!2756662)))

(declare-fun c!753635 () Bool)

(assert (=> b!4427298 (= c!753635 (and ((_ is Cons!49606) (toList!3505 lt!1625987)) (= (_1!28002 (h!55295 (toList!3505 lt!1625987))) (_1!28002 lt!1625978))))))

(declare-fun b!4427299 () Bool)

(assert (=> b!4427299 (= e!2756662 call!308054)))

(declare-fun b!4427300 () Bool)

(declare-fun res!1830657 () Bool)

(assert (=> b!4427300 (=> (not res!1830657) (not e!2756665))))

(assert (=> b!4427300 (= res!1830657 (containsKey!1134 lt!1626532 (_1!28002 lt!1625978)))))

(declare-fun d!1342238 () Bool)

(assert (=> d!1342238 e!2756665))

(declare-fun res!1830656 () Bool)

(assert (=> d!1342238 (=> (not res!1830656) (not e!2756665))))

(assert (=> d!1342238 (= res!1830656 (isStrictlySorted!236 lt!1626532))))

(assert (=> d!1342238 (= lt!1626532 e!2756666)))

(assert (=> d!1342238 (= c!753636 (and ((_ is Cons!49606) (toList!3505 lt!1625987)) (bvslt (_1!28002 (h!55295 (toList!3505 lt!1625987))) (_1!28002 lt!1625978))))))

(assert (=> d!1342238 (isStrictlySorted!236 (toList!3505 lt!1625987))))

(assert (=> d!1342238 (= (insertStrictlySorted!264 (toList!3505 lt!1625987) (_1!28002 lt!1625978) (_2!28002 lt!1625978)) lt!1626532)))

(declare-fun b!4427301 () Bool)

(assert (=> b!4427301 (= e!2756663 (insertStrictlySorted!264 (t!356668 (toList!3505 lt!1625987)) (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(declare-fun b!4427302 () Bool)

(assert (=> b!4427302 (= e!2756664 call!308055)))

(declare-fun b!4427303 () Bool)

(assert (=> b!4427303 (= e!2756666 call!308056)))

(declare-fun b!4427304 () Bool)

(assert (=> b!4427304 (= e!2756663 (ite c!753635 (t!356668 (toList!3505 lt!1625987)) (ite c!753633 (Cons!49606 (h!55295 (toList!3505 lt!1625987)) (t!356668 (toList!3505 lt!1625987))) Nil!49606)))))

(declare-fun bm!308051 () Bool)

(assert (=> bm!308051 (= call!308054 call!308056)))

(declare-fun b!4427305 () Bool)

(assert (=> b!4427305 (= e!2756664 call!308055)))

(assert (= (and d!1342238 c!753636) b!4427303))

(assert (= (and d!1342238 (not c!753636)) b!4427298))

(assert (= (and b!4427298 c!753635) b!4427299))

(assert (= (and b!4427298 (not c!753635)) b!4427296))

(assert (= (and b!4427296 c!753633) b!4427305))

(assert (= (and b!4427296 (not c!753633)) b!4427302))

(assert (= (or b!4427305 b!4427302) bm!308050))

(assert (= (or b!4427299 bm!308050) bm!308051))

(assert (= (or b!4427303 bm!308051) bm!308049))

(assert (= (and bm!308049 c!753634) b!4427301))

(assert (= (and bm!308049 (not c!753634)) b!4427304))

(assert (= (and d!1342238 res!1830656) b!4427300))

(assert (= (and b!4427300 res!1830657) b!4427297))

(declare-fun m!5109191 () Bool)

(assert (=> d!1342238 m!5109191))

(declare-fun m!5109193 () Bool)

(assert (=> d!1342238 m!5109193))

(declare-fun m!5109195 () Bool)

(assert (=> b!4427301 m!5109195))

(declare-fun m!5109197 () Bool)

(assert (=> b!4427297 m!5109197))

(declare-fun m!5109199 () Bool)

(assert (=> bm!308049 m!5109199))

(declare-fun m!5109201 () Bool)

(assert (=> b!4427300 m!5109201))

(assert (=> d!1342054 d!1342238))

(declare-fun bs!758071 () Bool)

(declare-fun b!4427308 () Bool)

(assert (= bs!758071 (and b!4427308 b!4426790)))

(declare-fun lambda!154397 () Int)

(assert (=> bs!758071 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626212) (= lambda!154397 lambda!154320))))

(declare-fun bs!758072 () Bool)

(assert (= bs!758072 (and b!4427308 b!4426998)))

(assert (=> bs!758072 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154397 lambda!154360))))

(declare-fun bs!758073 () Bool)

(assert (= bs!758073 (and b!4427308 b!4426751)))

(assert (=> bs!758073 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625979) (= lambda!154397 lambda!154311))))

(assert (=> bs!758072 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626370) (= lambda!154397 lambda!154361))))

(declare-fun bs!758074 () Bool)

(assert (= bs!758074 (and b!4427308 d!1341994)))

(assert (=> bs!758074 (not (= lambda!154397 lambda!154317))))

(declare-fun bs!758075 () Bool)

(assert (= bs!758075 (and b!4427308 d!1341960)))

(assert (=> bs!758075 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626165) (= lambda!154397 lambda!154314))))

(declare-fun bs!758076 () Bool)

(assert (= bs!758076 (and b!4427308 d!1341998)))

(assert (=> bs!758076 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626213) (= lambda!154397 lambda!154321))))

(declare-fun bs!758077 () Bool)

(assert (= bs!758077 (and b!4427308 b!4426997)))

(assert (=> bs!758077 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154397 lambda!154359))))

(assert (=> bs!758071 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625969) (= lambda!154397 lambda!154319))))

(declare-fun bs!758078 () Bool)

(assert (= bs!758078 (and b!4427308 b!4426752)))

(assert (=> bs!758078 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626164) (= lambda!154397 lambda!154313))))

(declare-fun bs!758079 () Bool)

(assert (= bs!758079 (and b!4427308 d!1342124)))

(assert (=> bs!758079 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626371) (= lambda!154397 lambda!154362))))

(declare-fun bs!758080 () Bool)

(assert (= bs!758080 (and b!4427308 b!4426789)))

(assert (=> bs!758080 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625969) (= lambda!154397 lambda!154318))))

(assert (=> bs!758078 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625979) (= lambda!154397 lambda!154312))))

(assert (=> b!4427308 true))

(declare-fun bs!758081 () Bool)

(declare-fun b!4427309 () Bool)

(assert (= bs!758081 (and b!4427309 b!4426790)))

(declare-fun lambda!154400 () Int)

(assert (=> bs!758081 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626212) (= lambda!154400 lambda!154320))))

(declare-fun bs!758082 () Bool)

(assert (= bs!758082 (and b!4427309 b!4426998)))

(assert (=> bs!758082 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154400 lambda!154360))))

(declare-fun bs!758083 () Bool)

(assert (= bs!758083 (and b!4427309 b!4426751)))

(assert (=> bs!758083 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625979) (= lambda!154400 lambda!154311))))

(assert (=> bs!758082 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626370) (= lambda!154400 lambda!154361))))

(declare-fun bs!758084 () Bool)

(assert (= bs!758084 (and b!4427309 d!1341994)))

(assert (=> bs!758084 (not (= lambda!154400 lambda!154317))))

(declare-fun bs!758085 () Bool)

(assert (= bs!758085 (and b!4427309 d!1341960)))

(assert (=> bs!758085 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626165) (= lambda!154400 lambda!154314))))

(declare-fun bs!758086 () Bool)

(assert (= bs!758086 (and b!4427309 d!1341998)))

(assert (=> bs!758086 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626213) (= lambda!154400 lambda!154321))))

(declare-fun bs!758087 () Bool)

(assert (= bs!758087 (and b!4427309 b!4426997)))

(assert (=> bs!758087 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154400 lambda!154359))))

(assert (=> bs!758081 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625969) (= lambda!154400 lambda!154319))))

(declare-fun bs!758090 () Bool)

(assert (= bs!758090 (and b!4427309 b!4426752)))

(assert (=> bs!758090 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626164) (= lambda!154400 lambda!154313))))

(declare-fun bs!758092 () Bool)

(assert (= bs!758092 (and b!4427309 d!1342124)))

(assert (=> bs!758092 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626371) (= lambda!154400 lambda!154362))))

(assert (=> bs!758090 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625979) (= lambda!154400 lambda!154312))))

(declare-fun bs!758095 () Bool)

(assert (= bs!758095 (and b!4427309 b!4426789)))

(assert (=> bs!758095 (= (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1625969) (= lambda!154400 lambda!154318))))

(declare-fun bs!758096 () Bool)

(assert (= bs!758096 (and b!4427309 b!4427308)))

(assert (=> bs!758096 (= lambda!154400 lambda!154397)))

(assert (=> b!4427309 true))

(declare-fun lt!1626533 () ListMap!2749)

(declare-fun lambda!154402 () Int)

(assert (=> bs!758081 (= (= lt!1626533 lt!1626212) (= lambda!154402 lambda!154320))))

(assert (=> bs!758082 (= (= lt!1626533 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154402 lambda!154360))))

(assert (=> bs!758083 (= (= lt!1626533 lt!1625979) (= lambda!154402 lambda!154311))))

(assert (=> bs!758082 (= (= lt!1626533 lt!1626370) (= lambda!154402 lambda!154361))))

(assert (=> bs!758084 (not (= lambda!154402 lambda!154317))))

(assert (=> bs!758085 (= (= lt!1626533 lt!1626165) (= lambda!154402 lambda!154314))))

(assert (=> bs!758086 (= (= lt!1626533 lt!1626213) (= lambda!154402 lambda!154321))))

(assert (=> bs!758087 (= (= lt!1626533 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154402 lambda!154359))))

(assert (=> bs!758081 (= (= lt!1626533 lt!1625969) (= lambda!154402 lambda!154319))))

(assert (=> bs!758090 (= (= lt!1626533 lt!1626164) (= lambda!154402 lambda!154313))))

(assert (=> bs!758092 (= (= lt!1626533 lt!1626371) (= lambda!154402 lambda!154362))))

(assert (=> bs!758090 (= (= lt!1626533 lt!1625979) (= lambda!154402 lambda!154312))))

(assert (=> bs!758095 (= (= lt!1626533 lt!1625969) (= lambda!154402 lambda!154318))))

(assert (=> bs!758096 (= (= lt!1626533 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154402 lambda!154397))))

(assert (=> b!4427309 (= (= lt!1626533 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154402 lambda!154400))))

(assert (=> b!4427309 true))

(declare-fun bs!758102 () Bool)

(declare-fun d!1342254 () Bool)

(assert (= bs!758102 (and d!1342254 b!4426790)))

(declare-fun lambda!154403 () Int)

(declare-fun lt!1626534 () ListMap!2749)

(assert (=> bs!758102 (= (= lt!1626534 lt!1626212) (= lambda!154403 lambda!154320))))

(declare-fun bs!758103 () Bool)

(assert (= bs!758103 (and d!1342254 b!4426998)))

(assert (=> bs!758103 (= (= lt!1626534 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154403 lambda!154360))))

(declare-fun bs!758104 () Bool)

(assert (= bs!758104 (and d!1342254 b!4426751)))

(assert (=> bs!758104 (= (= lt!1626534 lt!1625979) (= lambda!154403 lambda!154311))))

(assert (=> bs!758103 (= (= lt!1626534 lt!1626370) (= lambda!154403 lambda!154361))))

(declare-fun bs!758105 () Bool)

(assert (= bs!758105 (and d!1342254 d!1341994)))

(assert (=> bs!758105 (not (= lambda!154403 lambda!154317))))

(declare-fun bs!758106 () Bool)

(assert (= bs!758106 (and d!1342254 d!1341998)))

(assert (=> bs!758106 (= (= lt!1626534 lt!1626213) (= lambda!154403 lambda!154321))))

(declare-fun bs!758107 () Bool)

(assert (= bs!758107 (and d!1342254 b!4426997)))

(assert (=> bs!758107 (= (= lt!1626534 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154403 lambda!154359))))

(assert (=> bs!758102 (= (= lt!1626534 lt!1625969) (= lambda!154403 lambda!154319))))

(declare-fun bs!758108 () Bool)

(assert (= bs!758108 (and d!1342254 b!4426752)))

(assert (=> bs!758108 (= (= lt!1626534 lt!1626164) (= lambda!154403 lambda!154313))))

(declare-fun bs!758109 () Bool)

(assert (= bs!758109 (and d!1342254 d!1342124)))

(assert (=> bs!758109 (= (= lt!1626534 lt!1626371) (= lambda!154403 lambda!154362))))

(assert (=> bs!758108 (= (= lt!1626534 lt!1625979) (= lambda!154403 lambda!154312))))

(declare-fun bs!758110 () Bool)

(assert (= bs!758110 (and d!1342254 d!1341960)))

(assert (=> bs!758110 (= (= lt!1626534 lt!1626165) (= lambda!154403 lambda!154314))))

(declare-fun bs!758111 () Bool)

(assert (= bs!758111 (and d!1342254 b!4427309)))

(assert (=> bs!758111 (= (= lt!1626534 lt!1626533) (= lambda!154403 lambda!154402))))

(declare-fun bs!758112 () Bool)

(assert (= bs!758112 (and d!1342254 b!4426789)))

(assert (=> bs!758112 (= (= lt!1626534 lt!1625969) (= lambda!154403 lambda!154318))))

(declare-fun bs!758113 () Bool)

(assert (= bs!758113 (and d!1342254 b!4427308)))

(assert (=> bs!758113 (= (= lt!1626534 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154403 lambda!154397))))

(assert (=> bs!758111 (= (= lt!1626534 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154403 lambda!154400))))

(assert (=> d!1342254 true))

(declare-fun e!2756668 () Bool)

(assert (=> d!1342254 e!2756668))

(declare-fun res!1830658 () Bool)

(assert (=> d!1342254 (=> (not res!1830658) (not e!2756668))))

(assert (=> d!1342254 (= res!1830658 (forall!9578 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))) lambda!154403))))

(declare-fun e!2756667 () ListMap!2749)

(assert (=> d!1342254 (= lt!1626534 e!2756667)))

(declare-fun c!753637 () Bool)

(assert (=> d!1342254 (= c!753637 ((_ is Nil!49605) (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616))))))))

(assert (=> d!1342254 (noDuplicateKeys!759 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))))))

(assert (=> d!1342254 (= (addToMapMapFromBucket!396 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) lt!1626534)))

(declare-fun b!4427307 () Bool)

(declare-fun e!2756669 () Bool)

(assert (=> b!4427307 (= e!2756669 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) lambda!154402))))

(assert (=> b!4427308 (= e!2756667 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))))))

(declare-fun lt!1626547 () Unit!82123)

(declare-fun call!308057 () Unit!82123)

(assert (=> b!4427308 (= lt!1626547 call!308057)))

(declare-fun call!308059 () Bool)

(assert (=> b!4427308 call!308059))

(declare-fun lt!1626540 () Unit!82123)

(assert (=> b!4427308 (= lt!1626540 lt!1626547)))

(declare-fun call!308058 () Bool)

(assert (=> b!4427308 call!308058))

(declare-fun lt!1626546 () Unit!82123)

(declare-fun Unit!82220 () Unit!82123)

(assert (=> b!4427308 (= lt!1626546 Unit!82220)))

(declare-fun bm!308052 () Bool)

(assert (=> bm!308052 (= call!308059 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (ite c!753637 lambda!154397 lambda!154400)))))

(declare-fun bm!308053 () Bool)

(assert (=> bm!308053 (= call!308057 (lemmaContainsAllItsOwnKeys!177 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))))))

(assert (=> b!4427309 (= e!2756667 lt!1626533)))

(declare-fun lt!1626553 () ListMap!2749)

(assert (=> b!4427309 (= lt!1626553 (+!1103 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) (h!55294 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))))))))

(assert (=> b!4427309 (= lt!1626533 (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616))))) (+!1103 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) (h!55294 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616))))))))))

(declare-fun lt!1626549 () Unit!82123)

(assert (=> b!4427309 (= lt!1626549 call!308057)))

(assert (=> b!4427309 call!308059))

(declare-fun lt!1626551 () Unit!82123)

(assert (=> b!4427309 (= lt!1626551 lt!1626549)))

(assert (=> b!4427309 (forall!9578 (toList!3506 lt!1626553) lambda!154402)))

(declare-fun lt!1626538 () Unit!82123)

(declare-fun Unit!82221 () Unit!82123)

(assert (=> b!4427309 (= lt!1626538 Unit!82221)))

(assert (=> b!4427309 (forall!9578 (t!356667 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616))))) lambda!154402)))

(declare-fun lt!1626537 () Unit!82123)

(declare-fun Unit!82222 () Unit!82123)

(assert (=> b!4427309 (= lt!1626537 Unit!82222)))

(declare-fun lt!1626545 () Unit!82123)

(declare-fun Unit!82223 () Unit!82123)

(assert (=> b!4427309 (= lt!1626545 Unit!82223)))

(declare-fun lt!1626550 () Unit!82123)

(assert (=> b!4427309 (= lt!1626550 (forallContained!2097 (toList!3506 lt!1626553) lambda!154402 (h!55294 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))))))))

(assert (=> b!4427309 (contains!12114 lt!1626553 (_1!28001 (h!55294 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626539 () Unit!82123)

(declare-fun Unit!82224 () Unit!82123)

(assert (=> b!4427309 (= lt!1626539 Unit!82224)))

(assert (=> b!4427309 (contains!12114 lt!1626533 (_1!28001 (h!55294 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626543 () Unit!82123)

(declare-fun Unit!82225 () Unit!82123)

(assert (=> b!4427309 (= lt!1626543 Unit!82225)))

(assert (=> b!4427309 (forall!9578 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))) lambda!154402)))

(declare-fun lt!1626541 () Unit!82123)

(declare-fun Unit!82226 () Unit!82123)

(assert (=> b!4427309 (= lt!1626541 Unit!82226)))

(assert (=> b!4427309 (forall!9578 (toList!3506 lt!1626553) lambda!154402)))

(declare-fun lt!1626544 () Unit!82123)

(declare-fun Unit!82227 () Unit!82123)

(assert (=> b!4427309 (= lt!1626544 Unit!82227)))

(declare-fun lt!1626542 () Unit!82123)

(declare-fun Unit!82228 () Unit!82123)

(assert (=> b!4427309 (= lt!1626542 Unit!82228)))

(declare-fun lt!1626552 () Unit!82123)

(assert (=> b!4427309 (= lt!1626552 (addForallContainsKeyThenBeforeAdding!177 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626533 (_1!28001 (h!55294 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616))))))))))

(assert (=> b!4427309 call!308058))

(declare-fun lt!1626535 () Unit!82123)

(assert (=> b!4427309 (= lt!1626535 lt!1626552)))

(assert (=> b!4427309 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) lambda!154402)))

(declare-fun lt!1626536 () Unit!82123)

(declare-fun Unit!82229 () Unit!82123)

(assert (=> b!4427309 (= lt!1626536 Unit!82229)))

(declare-fun res!1830659 () Bool)

(assert (=> b!4427309 (= res!1830659 (forall!9578 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616)))) lambda!154402))))

(assert (=> b!4427309 (=> (not res!1830659) (not e!2756669))))

(assert (=> b!4427309 e!2756669))

(declare-fun lt!1626548 () Unit!82123)

(declare-fun Unit!82230 () Unit!82123)

(assert (=> b!4427309 (= lt!1626548 Unit!82230)))

(declare-fun b!4427310 () Bool)

(assert (=> b!4427310 (= e!2756668 (invariantList!809 (toList!3506 lt!1626534)))))

(declare-fun b!4427311 () Bool)

(declare-fun res!1830660 () Bool)

(assert (=> b!4427311 (=> (not res!1830660) (not e!2756668))))

(assert (=> b!4427311 (= res!1830660 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) lambda!154403))))

(declare-fun bm!308054 () Bool)

(assert (=> bm!308054 (= call!308058 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (ite c!753637 lambda!154397 lambda!154402)))))

(assert (= (and d!1342254 c!753637) b!4427308))

(assert (= (and d!1342254 (not c!753637)) b!4427309))

(assert (= (and b!4427309 res!1830659) b!4427307))

(assert (= (or b!4427308 b!4427309) bm!308053))

(assert (= (or b!4427308 b!4427309) bm!308052))

(assert (= (or b!4427308 b!4427309) bm!308054))

(assert (= (and d!1342254 res!1830658) b!4427311))

(assert (= (and b!4427311 res!1830660) b!4427310))

(assert (=> bm!308053 m!5108639))

(declare-fun m!5109267 () Bool)

(assert (=> bm!308053 m!5109267))

(declare-fun m!5109269 () Bool)

(assert (=> bm!308054 m!5109269))

(declare-fun m!5109271 () Bool)

(assert (=> bm!308052 m!5109271))

(declare-fun m!5109273 () Bool)

(assert (=> b!4427311 m!5109273))

(declare-fun m!5109275 () Bool)

(assert (=> b!4427307 m!5109275))

(declare-fun m!5109277 () Bool)

(assert (=> d!1342254 m!5109277))

(declare-fun m!5109279 () Bool)

(assert (=> d!1342254 m!5109279))

(declare-fun m!5109281 () Bool)

(assert (=> b!4427310 m!5109281))

(declare-fun m!5109283 () Bool)

(assert (=> b!4427309 m!5109283))

(declare-fun m!5109285 () Bool)

(assert (=> b!4427309 m!5109285))

(assert (=> b!4427309 m!5109283))

(declare-fun m!5109287 () Bool)

(assert (=> b!4427309 m!5109287))

(assert (=> b!4427309 m!5109275))

(declare-fun m!5109289 () Bool)

(assert (=> b!4427309 m!5109289))

(declare-fun m!5109291 () Bool)

(assert (=> b!4427309 m!5109291))

(assert (=> b!4427309 m!5108639))

(declare-fun m!5109293 () Bool)

(assert (=> b!4427309 m!5109293))

(assert (=> b!4427309 m!5109289))

(declare-fun m!5109295 () Bool)

(assert (=> b!4427309 m!5109295))

(declare-fun m!5109297 () Bool)

(assert (=> b!4427309 m!5109297))

(declare-fun m!5109299 () Bool)

(assert (=> b!4427309 m!5109299))

(assert (=> b!4427309 m!5108639))

(assert (=> b!4427309 m!5109295))

(assert (=> b!4426898 d!1342254))

(declare-fun bs!758124 () Bool)

(declare-fun d!1342266 () Bool)

(assert (= bs!758124 (and d!1342266 d!1342044)))

(declare-fun lambda!154405 () Int)

(assert (=> bs!758124 (= lambda!154405 lambda!154344)))

(declare-fun bs!758125 () Bool)

(assert (= bs!758125 (and d!1342266 d!1342058)))

(assert (=> bs!758125 (= lambda!154405 lambda!154348)))

(declare-fun bs!758126 () Bool)

(assert (= bs!758126 (and d!1342266 d!1342022)))

(assert (=> bs!758126 (= lambda!154405 lambda!154343)))

(declare-fun bs!758127 () Bool)

(assert (= bs!758127 (and d!1342266 start!431936)))

(assert (=> bs!758127 (= lambda!154405 lambda!154244)))

(declare-fun bs!758129 () Bool)

(assert (= bs!758129 (and d!1342266 d!1342144)))

(assert (=> bs!758129 (= lambda!154405 lambda!154364)))

(declare-fun bs!758131 () Bool)

(assert (= bs!758131 (and d!1342266 d!1342062)))

(assert (=> bs!758131 (= lambda!154405 lambda!154349)))

(declare-fun bs!758133 () Bool)

(assert (= bs!758133 (and d!1342266 d!1342126)))

(assert (=> bs!758133 (= lambda!154405 lambda!154363)))

(declare-fun bs!758135 () Bool)

(assert (= bs!758135 (and d!1342266 d!1342088)))

(assert (=> bs!758135 (= lambda!154405 lambda!154358)))

(declare-fun bs!758137 () Bool)

(assert (= bs!758137 (and d!1342266 d!1342084)))

(assert (=> bs!758137 (= lambda!154405 lambda!154355)))

(declare-fun bs!758139 () Bool)

(assert (= bs!758139 (and d!1342266 d!1342052)))

(assert (=> bs!758139 (= lambda!154405 lambda!154345)))

(declare-fun bs!758141 () Bool)

(assert (= bs!758141 (and d!1342266 d!1342076)))

(assert (=> bs!758141 (not (= lambda!154405 lambda!154352))))

(declare-fun lt!1626598 () ListMap!2749)

(assert (=> d!1342266 (invariantList!809 (toList!3506 lt!1626598))))

(declare-fun e!2756688 () ListMap!2749)

(assert (=> d!1342266 (= lt!1626598 e!2756688)))

(declare-fun c!753645 () Bool)

(assert (=> d!1342266 (= c!753645 ((_ is Cons!49606) (t!356668 (tail!7291 (toList!3505 lm!1616)))))))

(assert (=> d!1342266 (forall!9576 (t!356668 (tail!7291 (toList!3505 lm!1616))) lambda!154405)))

(assert (=> d!1342266 (= (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616)))) lt!1626598)))

(declare-fun b!4427339 () Bool)

(assert (=> b!4427339 (= e!2756688 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (t!356668 (tail!7291 (toList!3505 lm!1616)))))))))

(declare-fun b!4427340 () Bool)

(assert (=> b!4427340 (= e!2756688 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342266 c!753645) b!4427339))

(assert (= (and d!1342266 (not c!753645)) b!4427340))

(declare-fun m!5109301 () Bool)

(assert (=> d!1342266 m!5109301))

(declare-fun m!5109303 () Bool)

(assert (=> d!1342266 m!5109303))

(declare-fun m!5109305 () Bool)

(assert (=> b!4427339 m!5109305))

(assert (=> b!4427339 m!5109305))

(declare-fun m!5109307 () Bool)

(assert (=> b!4427339 m!5109307))

(assert (=> b!4426898 d!1342266))

(declare-fun d!1342268 () Bool)

(declare-fun res!1830674 () Bool)

(declare-fun e!2756689 () Bool)

(assert (=> d!1342268 (=> res!1830674 e!2756689)))

(assert (=> d!1342268 (= res!1830674 ((_ is Nil!49606) (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194)))))))

(assert (=> d!1342268 (= (forall!9576 (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194))) lambda!154244) e!2756689)))

(declare-fun b!4427341 () Bool)

(declare-fun e!2756690 () Bool)

(assert (=> b!4427341 (= e!2756689 e!2756690)))

(declare-fun res!1830675 () Bool)

(assert (=> b!4427341 (=> (not res!1830675) (not e!2756690))))

(assert (=> b!4427341 (= res!1830675 (dynLambda!20850 lambda!154244 (h!55295 (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194))))))))

(declare-fun b!4427342 () Bool)

(assert (=> b!4427342 (= e!2756690 (forall!9576 (t!356668 (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194)))) lambda!154244))))

(assert (= (and d!1342268 (not res!1830674)) b!4427341))

(assert (= (and b!4427341 res!1830675) b!4427342))

(declare-fun b_lambda!143257 () Bool)

(assert (=> (not b_lambda!143257) (not b!4427341)))

(declare-fun m!5109309 () Bool)

(assert (=> b!4427341 m!5109309))

(declare-fun m!5109311 () Bool)

(assert (=> b!4427342 m!5109311))

(assert (=> d!1342008 d!1342268))

(declare-fun d!1342270 () Bool)

(declare-fun e!2756691 () Bool)

(assert (=> d!1342270 e!2756691))

(declare-fun res!1830676 () Bool)

(assert (=> d!1342270 (=> (not res!1830676) (not e!2756691))))

(declare-fun lt!1626602 () ListLongMap!2155)

(assert (=> d!1342270 (= res!1830676 (contains!12115 lt!1626602 (_1!28002 (tuple2!49417 hash!366 newBucket!194))))))

(declare-fun lt!1626601 () List!49730)

(assert (=> d!1342270 (= lt!1626602 (ListLongMap!2156 lt!1626601))))

(declare-fun lt!1626599 () Unit!82123)

(declare-fun lt!1626600 () Unit!82123)

(assert (=> d!1342270 (= lt!1626599 lt!1626600)))

(assert (=> d!1342270 (= (getValueByKey!720 lt!1626601 (_1!28002 (tuple2!49417 hash!366 newBucket!194))) (Some!10733 (_2!28002 (tuple2!49417 hash!366 newBucket!194))))))

(assert (=> d!1342270 (= lt!1626600 (lemmaContainsTupThenGetReturnValue!455 lt!1626601 (_1!28002 (tuple2!49417 hash!366 newBucket!194)) (_2!28002 (tuple2!49417 hash!366 newBucket!194))))))

(assert (=> d!1342270 (= lt!1626601 (insertStrictlySorted!264 (toList!3505 lm!1616) (_1!28002 (tuple2!49417 hash!366 newBucket!194)) (_2!28002 (tuple2!49417 hash!366 newBucket!194))))))

(assert (=> d!1342270 (= (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194)) lt!1626602)))

(declare-fun b!4427343 () Bool)

(declare-fun res!1830677 () Bool)

(assert (=> b!4427343 (=> (not res!1830677) (not e!2756691))))

(assert (=> b!4427343 (= res!1830677 (= (getValueByKey!720 (toList!3505 lt!1626602) (_1!28002 (tuple2!49417 hash!366 newBucket!194))) (Some!10733 (_2!28002 (tuple2!49417 hash!366 newBucket!194)))))))

(declare-fun b!4427344 () Bool)

(assert (=> b!4427344 (= e!2756691 (contains!12120 (toList!3505 lt!1626602) (tuple2!49417 hash!366 newBucket!194)))))

(assert (= (and d!1342270 res!1830676) b!4427343))

(assert (= (and b!4427343 res!1830677) b!4427344))

(declare-fun m!5109313 () Bool)

(assert (=> d!1342270 m!5109313))

(declare-fun m!5109315 () Bool)

(assert (=> d!1342270 m!5109315))

(declare-fun m!5109317 () Bool)

(assert (=> d!1342270 m!5109317))

(declare-fun m!5109319 () Bool)

(assert (=> d!1342270 m!5109319))

(declare-fun m!5109321 () Bool)

(assert (=> b!4427343 m!5109321))

(declare-fun m!5109323 () Bool)

(assert (=> b!4427344 m!5109323))

(assert (=> d!1342008 d!1342270))

(declare-fun d!1342272 () Bool)

(assert (=> d!1342272 (forall!9576 (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194))) lambda!154244)))

(assert (=> d!1342272 true))

(declare-fun _$31!391 () Unit!82123)

(assert (=> d!1342272 (= (choose!27969 lm!1616 lambda!154244 hash!366 newBucket!194) _$31!391)))

(declare-fun bs!758158 () Bool)

(assert (= bs!758158 d!1342272))

(assert (=> bs!758158 m!5108427))

(assert (=> bs!758158 m!5108429))

(assert (=> d!1342008 d!1342272))

(assert (=> d!1342008 d!1342072))

(declare-fun d!1342274 () Bool)

(declare-fun c!753648 () Bool)

(assert (=> d!1342274 (= c!753648 ((_ is Nil!49605) (toList!3506 lt!1625975)))))

(declare-fun e!2756698 () (InoxSet tuple2!49414))

(assert (=> d!1342274 (= (content!7962 (toList!3506 lt!1625975)) e!2756698)))

(declare-fun b!4427354 () Bool)

(assert (=> b!4427354 (= e!2756698 ((as const (Array tuple2!49414 Bool)) false))))

(declare-fun b!4427355 () Bool)

(assert (=> b!4427355 (= e!2756698 ((_ map or) (store ((as const (Array tuple2!49414 Bool)) false) (h!55294 (toList!3506 lt!1625975)) true) (content!7962 (t!356667 (toList!3506 lt!1625975)))))))

(assert (= (and d!1342274 c!753648) b!4427354))

(assert (= (and d!1342274 (not c!753648)) b!4427355))

(declare-fun m!5109367 () Bool)

(assert (=> b!4427355 m!5109367))

(declare-fun m!5109369 () Bool)

(assert (=> b!4427355 m!5109369))

(assert (=> d!1341956 d!1342274))

(declare-fun d!1342282 () Bool)

(declare-fun c!753649 () Bool)

(assert (=> d!1342282 (= c!753649 ((_ is Nil!49605) (toList!3506 lt!1625984)))))

(declare-fun e!2756701 () (InoxSet tuple2!49414))

(assert (=> d!1342282 (= (content!7962 (toList!3506 lt!1625984)) e!2756701)))

(declare-fun b!4427358 () Bool)

(assert (=> b!4427358 (= e!2756701 ((as const (Array tuple2!49414 Bool)) false))))

(declare-fun b!4427359 () Bool)

(assert (=> b!4427359 (= e!2756701 ((_ map or) (store ((as const (Array tuple2!49414 Bool)) false) (h!55294 (toList!3506 lt!1625984)) true) (content!7962 (t!356667 (toList!3506 lt!1625984)))))))

(assert (= (and d!1342282 c!753649) b!4427358))

(assert (= (and d!1342282 (not c!753649)) b!4427359))

(declare-fun m!5109373 () Bool)

(assert (=> b!4427359 m!5109373))

(declare-fun m!5109375 () Bool)

(assert (=> b!4427359 m!5109375))

(assert (=> d!1341956 d!1342282))

(declare-fun d!1342286 () Bool)

(assert (=> d!1342286 (= (invariantList!809 (toList!3506 lt!1626333)) (noDuplicatedKeys!175 (toList!3506 lt!1626333)))))

(declare-fun bs!758159 () Bool)

(assert (= bs!758159 d!1342286))

(declare-fun m!5109377 () Bool)

(assert (=> bs!758159 m!5109377))

(assert (=> d!1342062 d!1342286))

(declare-fun d!1342288 () Bool)

(declare-fun res!1830684 () Bool)

(declare-fun e!2756702 () Bool)

(assert (=> d!1342288 (=> res!1830684 e!2756702)))

(assert (=> d!1342288 (= res!1830684 ((_ is Nil!49606) (tail!7291 (toList!3505 lm!1616))))))

(assert (=> d!1342288 (= (forall!9576 (tail!7291 (toList!3505 lm!1616)) lambda!154349) e!2756702)))

(declare-fun b!4427360 () Bool)

(declare-fun e!2756703 () Bool)

(assert (=> b!4427360 (= e!2756702 e!2756703)))

(declare-fun res!1830685 () Bool)

(assert (=> b!4427360 (=> (not res!1830685) (not e!2756703))))

(assert (=> b!4427360 (= res!1830685 (dynLambda!20850 lambda!154349 (h!55295 (tail!7291 (toList!3505 lm!1616)))))))

(declare-fun b!4427361 () Bool)

(assert (=> b!4427361 (= e!2756703 (forall!9576 (t!356668 (tail!7291 (toList!3505 lm!1616))) lambda!154349))))

(assert (= (and d!1342288 (not res!1830684)) b!4427360))

(assert (= (and b!4427360 res!1830685) b!4427361))

(declare-fun b_lambda!143265 () Bool)

(assert (=> (not b_lambda!143265) (not b!4427360)))

(declare-fun m!5109379 () Bool)

(assert (=> b!4427360 m!5109379))

(declare-fun m!5109381 () Bool)

(assert (=> b!4427361 m!5109381))

(assert (=> d!1342062 d!1342288))

(assert (=> d!1341990 d!1341996))

(declare-fun d!1342290 () Bool)

(assert (=> d!1342290 (= (eq!417 (+!1103 lt!1625981 (tuple2!49415 key!3717 newValue!93)) (+!1103 lt!1625985 (tuple2!49415 key!3717 newValue!93))) (= (content!7962 (toList!3506 (+!1103 lt!1625981 (tuple2!49415 key!3717 newValue!93)))) (content!7962 (toList!3506 (+!1103 lt!1625985 (tuple2!49415 key!3717 newValue!93))))))))

(declare-fun bs!758160 () Bool)

(assert (= bs!758160 d!1342290))

(declare-fun m!5109383 () Bool)

(assert (=> bs!758160 m!5109383))

(declare-fun m!5109385 () Bool)

(assert (=> bs!758160 m!5109385))

(assert (=> d!1341990 d!1342290))

(declare-fun d!1342292 () Bool)

(assert (=> d!1342292 (eq!417 (+!1103 lt!1625981 (tuple2!49415 key!3717 newValue!93)) (+!1103 lt!1625985 (tuple2!49415 key!3717 newValue!93)))))

(assert (=> d!1342292 true))

(declare-fun _$65!1665 () Unit!82123)

(assert (=> d!1342292 (= (choose!27967 lt!1625981 lt!1625985 key!3717 newValue!93) _$65!1665)))

(declare-fun bs!758161 () Bool)

(assert (= bs!758161 d!1342292))

(assert (=> bs!758161 m!5108347))

(assert (=> bs!758161 m!5108345))

(assert (=> bs!758161 m!5108347))

(assert (=> bs!758161 m!5108345))

(assert (=> bs!758161 m!5108349))

(assert (=> d!1341990 d!1342292))

(declare-fun d!1342300 () Bool)

(declare-fun e!2756715 () Bool)

(assert (=> d!1342300 e!2756715))

(declare-fun res!1830697 () Bool)

(assert (=> d!1342300 (=> (not res!1830697) (not e!2756715))))

(declare-fun lt!1626610 () ListMap!2749)

(assert (=> d!1342300 (= res!1830697 (contains!12114 lt!1626610 (_1!28001 (tuple2!49415 key!3717 newValue!93))))))

(declare-fun lt!1626612 () List!49729)

(assert (=> d!1342300 (= lt!1626610 (ListMap!2750 lt!1626612))))

(declare-fun lt!1626611 () Unit!82123)

(declare-fun lt!1626609 () Unit!82123)

(assert (=> d!1342300 (= lt!1626611 lt!1626609)))

(assert (=> d!1342300 (= (getValueByKey!719 lt!1626612 (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342300 (= lt!1626609 (lemmaContainsTupThenGetReturnValue!454 lt!1626612 (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342300 (= lt!1626612 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625981) (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342300 (= (+!1103 lt!1625981 (tuple2!49415 key!3717 newValue!93)) lt!1626610)))

(declare-fun b!4427373 () Bool)

(declare-fun res!1830698 () Bool)

(assert (=> b!4427373 (=> (not res!1830698) (not e!2756715))))

(assert (=> b!4427373 (= res!1830698 (= (getValueByKey!719 (toList!3506 lt!1626610) (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93)))))))

(declare-fun b!4427374 () Bool)

(assert (=> b!4427374 (= e!2756715 (contains!12118 (toList!3506 lt!1626610) (tuple2!49415 key!3717 newValue!93)))))

(assert (= (and d!1342300 res!1830697) b!4427373))

(assert (= (and b!4427373 res!1830698) b!4427374))

(declare-fun m!5109401 () Bool)

(assert (=> d!1342300 m!5109401))

(declare-fun m!5109403 () Bool)

(assert (=> d!1342300 m!5109403))

(declare-fun m!5109405 () Bool)

(assert (=> d!1342300 m!5109405))

(declare-fun m!5109407 () Bool)

(assert (=> d!1342300 m!5109407))

(declare-fun m!5109409 () Bool)

(assert (=> b!4427373 m!5109409))

(declare-fun m!5109411 () Bool)

(assert (=> b!4427374 m!5109411))

(assert (=> d!1341990 d!1342300))

(declare-fun d!1342302 () Bool)

(declare-fun e!2756718 () Bool)

(assert (=> d!1342302 e!2756718))

(declare-fun res!1830701 () Bool)

(assert (=> d!1342302 (=> (not res!1830701) (not e!2756718))))

(declare-fun lt!1626614 () ListMap!2749)

(assert (=> d!1342302 (= res!1830701 (contains!12114 lt!1626614 (_1!28001 (tuple2!49415 key!3717 newValue!93))))))

(declare-fun lt!1626616 () List!49729)

(assert (=> d!1342302 (= lt!1626614 (ListMap!2750 lt!1626616))))

(declare-fun lt!1626615 () Unit!82123)

(declare-fun lt!1626613 () Unit!82123)

(assert (=> d!1342302 (= lt!1626615 lt!1626613)))

(assert (=> d!1342302 (= (getValueByKey!719 lt!1626616 (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342302 (= lt!1626613 (lemmaContainsTupThenGetReturnValue!454 lt!1626616 (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342302 (= lt!1626616 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625985) (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342302 (= (+!1103 lt!1625985 (tuple2!49415 key!3717 newValue!93)) lt!1626614)))

(declare-fun b!4427379 () Bool)

(declare-fun res!1830702 () Bool)

(assert (=> b!4427379 (=> (not res!1830702) (not e!2756718))))

(assert (=> b!4427379 (= res!1830702 (= (getValueByKey!719 (toList!3506 lt!1626614) (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93)))))))

(declare-fun b!4427380 () Bool)

(assert (=> b!4427380 (= e!2756718 (contains!12118 (toList!3506 lt!1626614) (tuple2!49415 key!3717 newValue!93)))))

(assert (= (and d!1342302 res!1830701) b!4427379))

(assert (= (and b!4427379 res!1830702) b!4427380))

(declare-fun m!5109413 () Bool)

(assert (=> d!1342302 m!5109413))

(declare-fun m!5109415 () Bool)

(assert (=> d!1342302 m!5109415))

(declare-fun m!5109417 () Bool)

(assert (=> d!1342302 m!5109417))

(declare-fun m!5109419 () Bool)

(assert (=> d!1342302 m!5109419))

(declare-fun m!5109421 () Bool)

(assert (=> b!4427379 m!5109421))

(declare-fun m!5109423 () Bool)

(assert (=> b!4427380 m!5109423))

(assert (=> d!1341990 d!1342302))

(declare-fun bs!758191 () Bool)

(declare-fun d!1342304 () Bool)

(assert (= bs!758191 (and d!1342304 b!4426790)))

(declare-fun lambda!154416 () Int)

(assert (=> bs!758191 (= lambda!154416 lambda!154320)))

(declare-fun bs!758192 () Bool)

(assert (= bs!758192 (and d!1342304 b!4426998)))

(assert (=> bs!758192 (= (= lt!1626212 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154416 lambda!154360))))

(declare-fun bs!758193 () Bool)

(assert (= bs!758193 (and d!1342304 b!4426751)))

(assert (=> bs!758193 (= (= lt!1626212 lt!1625979) (= lambda!154416 lambda!154311))))

(assert (=> bs!758192 (= (= lt!1626212 lt!1626370) (= lambda!154416 lambda!154361))))

(declare-fun bs!758194 () Bool)

(assert (= bs!758194 (and d!1342304 d!1341994)))

(assert (=> bs!758194 (not (= lambda!154416 lambda!154317))))

(declare-fun bs!758195 () Bool)

(assert (= bs!758195 (and d!1342304 d!1341998)))

(assert (=> bs!758195 (= (= lt!1626212 lt!1626213) (= lambda!154416 lambda!154321))))

(declare-fun bs!758197 () Bool)

(assert (= bs!758197 (and d!1342304 b!4426997)))

(assert (=> bs!758197 (= (= lt!1626212 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154416 lambda!154359))))

(assert (=> bs!758191 (= (= lt!1626212 lt!1625969) (= lambda!154416 lambda!154319))))

(declare-fun bs!758198 () Bool)

(assert (= bs!758198 (and d!1342304 b!4426752)))

(assert (=> bs!758198 (= (= lt!1626212 lt!1626164) (= lambda!154416 lambda!154313))))

(declare-fun bs!758200 () Bool)

(assert (= bs!758200 (and d!1342304 d!1342124)))

(assert (=> bs!758200 (= (= lt!1626212 lt!1626371) (= lambda!154416 lambda!154362))))

(declare-fun bs!758202 () Bool)

(assert (= bs!758202 (and d!1342304 d!1341960)))

(assert (=> bs!758202 (= (= lt!1626212 lt!1626165) (= lambda!154416 lambda!154314))))

(declare-fun bs!758204 () Bool)

(assert (= bs!758204 (and d!1342304 b!4427309)))

(assert (=> bs!758204 (= (= lt!1626212 lt!1626533) (= lambda!154416 lambda!154402))))

(declare-fun bs!758206 () Bool)

(assert (= bs!758206 (and d!1342304 b!4426789)))

(assert (=> bs!758206 (= (= lt!1626212 lt!1625969) (= lambda!154416 lambda!154318))))

(declare-fun bs!758208 () Bool)

(assert (= bs!758208 (and d!1342304 b!4427308)))

(assert (=> bs!758208 (= (= lt!1626212 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154416 lambda!154397))))

(assert (=> bs!758204 (= (= lt!1626212 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154416 lambda!154400))))

(assert (=> bs!758198 (= (= lt!1626212 lt!1625979) (= lambda!154416 lambda!154312))))

(declare-fun bs!758212 () Bool)

(assert (= bs!758212 (and d!1342304 d!1342254)))

(assert (=> bs!758212 (= (= lt!1626212 lt!1626534) (= lambda!154416 lambda!154403))))

(assert (=> d!1342304 true))

(assert (=> d!1342304 (forall!9578 (toList!3506 lt!1625969) lambda!154416)))

(declare-fun lt!1626644 () Unit!82123)

(declare-fun choose!27986 (ListMap!2749 ListMap!2749 K!10970 V!11216) Unit!82123)

(assert (=> d!1342304 (= lt!1626644 (choose!27986 lt!1625969 lt!1626212 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342304 (forall!9578 (toList!3506 (+!1103 lt!1625969 (tuple2!49415 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))) lambda!154416)))

(assert (=> d!1342304 (= (addForallContainsKeyThenBeforeAdding!177 lt!1625969 lt!1626212 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626644)))

(declare-fun bs!758218 () Bool)

(assert (= bs!758218 d!1342304))

(declare-fun m!5109437 () Bool)

(assert (=> bs!758218 m!5109437))

(declare-fun m!5109439 () Bool)

(assert (=> bs!758218 m!5109439))

(declare-fun m!5109441 () Bool)

(assert (=> bs!758218 m!5109441))

(declare-fun m!5109443 () Bool)

(assert (=> bs!758218 m!5109443))

(assert (=> b!4426790 d!1342304))

(declare-fun d!1342316 () Bool)

(declare-fun res!1830714 () Bool)

(declare-fun e!2756730 () Bool)

(assert (=> d!1342316 (=> res!1830714 e!2756730)))

(assert (=> d!1342316 (= res!1830714 ((_ is Nil!49605) (toList!3506 lt!1626232)))))

(assert (=> d!1342316 (= (forall!9578 (toList!3506 lt!1626232) lambda!154320) e!2756730)))

(declare-fun b!4427393 () Bool)

(declare-fun e!2756731 () Bool)

(assert (=> b!4427393 (= e!2756730 e!2756731)))

(declare-fun res!1830715 () Bool)

(assert (=> b!4427393 (=> (not res!1830715) (not e!2756731))))

(assert (=> b!4427393 (= res!1830715 (dynLambda!20851 lambda!154320 (h!55294 (toList!3506 lt!1626232))))))

(declare-fun b!4427394 () Bool)

(assert (=> b!4427394 (= e!2756731 (forall!9578 (t!356667 (toList!3506 lt!1626232)) lambda!154320))))

(assert (= (and d!1342316 (not res!1830714)) b!4427393))

(assert (= (and b!4427393 res!1830715) b!4427394))

(declare-fun b_lambda!143273 () Bool)

(assert (=> (not b_lambda!143273) (not b!4427393)))

(declare-fun m!5109445 () Bool)

(assert (=> b!4427393 m!5109445))

(declare-fun m!5109447 () Bool)

(assert (=> b!4427394 m!5109447))

(assert (=> b!4426790 d!1342316))

(declare-fun bs!758220 () Bool)

(declare-fun b!4427396 () Bool)

(assert (= bs!758220 (and b!4427396 b!4426790)))

(declare-fun lambda!154418 () Int)

(assert (=> bs!758220 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154418 lambda!154320))))

(declare-fun bs!758221 () Bool)

(assert (= bs!758221 (and b!4427396 b!4426998)))

(assert (=> bs!758221 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154418 lambda!154360))))

(declare-fun bs!758222 () Bool)

(assert (= bs!758222 (and b!4427396 b!4426751)))

(assert (=> bs!758222 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154418 lambda!154311))))

(assert (=> bs!758221 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626370) (= lambda!154418 lambda!154361))))

(declare-fun bs!758223 () Bool)

(assert (= bs!758223 (and b!4427396 d!1341994)))

(assert (=> bs!758223 (not (= lambda!154418 lambda!154317))))

(declare-fun bs!758224 () Bool)

(assert (= bs!758224 (and b!4427396 b!4426997)))

(assert (=> bs!758224 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154418 lambda!154359))))

(assert (=> bs!758220 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154418 lambda!154319))))

(declare-fun bs!758225 () Bool)

(assert (= bs!758225 (and b!4427396 b!4426752)))

(assert (=> bs!758225 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626164) (= lambda!154418 lambda!154313))))

(declare-fun bs!758226 () Bool)

(assert (= bs!758226 (and b!4427396 d!1342124)))

(assert (=> bs!758226 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626371) (= lambda!154418 lambda!154362))))

(declare-fun bs!758227 () Bool)

(assert (= bs!758227 (and b!4427396 d!1341960)))

(assert (=> bs!758227 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626165) (= lambda!154418 lambda!154314))))

(declare-fun bs!758228 () Bool)

(assert (= bs!758228 (and b!4427396 b!4427309)))

(assert (=> bs!758228 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626533) (= lambda!154418 lambda!154402))))

(declare-fun bs!758229 () Bool)

(assert (= bs!758229 (and b!4427396 d!1341998)))

(assert (=> bs!758229 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626213) (= lambda!154418 lambda!154321))))

(declare-fun bs!758230 () Bool)

(assert (= bs!758230 (and b!4427396 d!1342304)))

(assert (=> bs!758230 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154418 lambda!154416))))

(declare-fun bs!758231 () Bool)

(assert (= bs!758231 (and b!4427396 b!4426789)))

(assert (=> bs!758231 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154418 lambda!154318))))

(declare-fun bs!758232 () Bool)

(assert (= bs!758232 (and b!4427396 b!4427308)))

(assert (=> bs!758232 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154418 lambda!154397))))

(assert (=> bs!758228 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154418 lambda!154400))))

(assert (=> bs!758225 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154418 lambda!154312))))

(declare-fun bs!758233 () Bool)

(assert (= bs!758233 (and b!4427396 d!1342254)))

(assert (=> bs!758233 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626534) (= lambda!154418 lambda!154403))))

(assert (=> b!4427396 true))

(declare-fun bs!758236 () Bool)

(declare-fun b!4427397 () Bool)

(assert (= bs!758236 (and b!4427397 b!4426790)))

(declare-fun lambda!154420 () Int)

(assert (=> bs!758236 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154420 lambda!154320))))

(declare-fun bs!758238 () Bool)

(assert (= bs!758238 (and b!4427397 b!4426998)))

(assert (=> bs!758238 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154420 lambda!154360))))

(declare-fun bs!758240 () Bool)

(assert (= bs!758240 (and b!4427397 b!4426751)))

(assert (=> bs!758240 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154420 lambda!154311))))

(assert (=> bs!758238 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626370) (= lambda!154420 lambda!154361))))

(declare-fun bs!758241 () Bool)

(assert (= bs!758241 (and b!4427397 b!4426997)))

(assert (=> bs!758241 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154420 lambda!154359))))

(assert (=> bs!758236 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154420 lambda!154319))))

(declare-fun bs!758244 () Bool)

(assert (= bs!758244 (and b!4427397 b!4426752)))

(assert (=> bs!758244 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626164) (= lambda!154420 lambda!154313))))

(declare-fun bs!758246 () Bool)

(assert (= bs!758246 (and b!4427397 d!1342124)))

(assert (=> bs!758246 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626371) (= lambda!154420 lambda!154362))))

(declare-fun bs!758248 () Bool)

(assert (= bs!758248 (and b!4427397 d!1341994)))

(assert (=> bs!758248 (not (= lambda!154420 lambda!154317))))

(declare-fun bs!758250 () Bool)

(assert (= bs!758250 (and b!4427397 b!4427396)))

(assert (=> bs!758250 (= lambda!154420 lambda!154418)))

(declare-fun bs!758251 () Bool)

(assert (= bs!758251 (and b!4427397 d!1341960)))

(assert (=> bs!758251 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626165) (= lambda!154420 lambda!154314))))

(declare-fun bs!758252 () Bool)

(assert (= bs!758252 (and b!4427397 b!4427309)))

(assert (=> bs!758252 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626533) (= lambda!154420 lambda!154402))))

(declare-fun bs!758253 () Bool)

(assert (= bs!758253 (and b!4427397 d!1341998)))

(assert (=> bs!758253 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626213) (= lambda!154420 lambda!154321))))

(declare-fun bs!758254 () Bool)

(assert (= bs!758254 (and b!4427397 d!1342304)))

(assert (=> bs!758254 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154420 lambda!154416))))

(declare-fun bs!758255 () Bool)

(assert (= bs!758255 (and b!4427397 b!4426789)))

(assert (=> bs!758255 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154420 lambda!154318))))

(declare-fun bs!758256 () Bool)

(assert (= bs!758256 (and b!4427397 b!4427308)))

(assert (=> bs!758256 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154420 lambda!154397))))

(assert (=> bs!758252 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154420 lambda!154400))))

(assert (=> bs!758244 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154420 lambda!154312))))

(declare-fun bs!758257 () Bool)

(assert (= bs!758257 (and b!4427397 d!1342254)))

(assert (=> bs!758257 (= (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626534) (= lambda!154420 lambda!154403))))

(assert (=> b!4427397 true))

(declare-fun lt!1626645 () ListMap!2749)

(declare-fun lambda!154421 () Int)

(assert (=> bs!758236 (= (= lt!1626645 lt!1626212) (= lambda!154421 lambda!154320))))

(assert (=> bs!758238 (= (= lt!1626645 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154421 lambda!154360))))

(assert (=> bs!758240 (= (= lt!1626645 lt!1625979) (= lambda!154421 lambda!154311))))

(assert (=> bs!758238 (= (= lt!1626645 lt!1626370) (= lambda!154421 lambda!154361))))

(assert (=> bs!758241 (= (= lt!1626645 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154421 lambda!154359))))

(assert (=> bs!758236 (= (= lt!1626645 lt!1625969) (= lambda!154421 lambda!154319))))

(assert (=> bs!758244 (= (= lt!1626645 lt!1626164) (= lambda!154421 lambda!154313))))

(assert (=> bs!758246 (= (= lt!1626645 lt!1626371) (= lambda!154421 lambda!154362))))

(assert (=> bs!758248 (not (= lambda!154421 lambda!154317))))

(assert (=> bs!758250 (= (= lt!1626645 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154421 lambda!154418))))

(assert (=> bs!758251 (= (= lt!1626645 lt!1626165) (= lambda!154421 lambda!154314))))

(assert (=> bs!758252 (= (= lt!1626645 lt!1626533) (= lambda!154421 lambda!154402))))

(assert (=> b!4427397 (= (= lt!1626645 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154421 lambda!154420))))

(assert (=> bs!758253 (= (= lt!1626645 lt!1626213) (= lambda!154421 lambda!154321))))

(assert (=> bs!758254 (= (= lt!1626645 lt!1626212) (= lambda!154421 lambda!154416))))

(assert (=> bs!758255 (= (= lt!1626645 lt!1625969) (= lambda!154421 lambda!154318))))

(assert (=> bs!758256 (= (= lt!1626645 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154421 lambda!154397))))

(assert (=> bs!758252 (= (= lt!1626645 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154421 lambda!154400))))

(assert (=> bs!758244 (= (= lt!1626645 lt!1625979) (= lambda!154421 lambda!154312))))

(assert (=> bs!758257 (= (= lt!1626645 lt!1626534) (= lambda!154421 lambda!154403))))

(assert (=> b!4427397 true))

(declare-fun bs!758258 () Bool)

(declare-fun d!1342318 () Bool)

(assert (= bs!758258 (and d!1342318 b!4426790)))

(declare-fun lambda!154422 () Int)

(declare-fun lt!1626646 () ListMap!2749)

(assert (=> bs!758258 (= (= lt!1626646 lt!1626212) (= lambda!154422 lambda!154320))))

(declare-fun bs!758259 () Bool)

(assert (= bs!758259 (and d!1342318 b!4426998)))

(assert (=> bs!758259 (= (= lt!1626646 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154422 lambda!154360))))

(declare-fun bs!758260 () Bool)

(assert (= bs!758260 (and d!1342318 b!4426751)))

(assert (=> bs!758260 (= (= lt!1626646 lt!1625979) (= lambda!154422 lambda!154311))))

(assert (=> bs!758259 (= (= lt!1626646 lt!1626370) (= lambda!154422 lambda!154361))))

(declare-fun bs!758262 () Bool)

(assert (= bs!758262 (and d!1342318 b!4426997)))

(assert (=> bs!758262 (= (= lt!1626646 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154422 lambda!154359))))

(assert (=> bs!758258 (= (= lt!1626646 lt!1625969) (= lambda!154422 lambda!154319))))

(declare-fun bs!758263 () Bool)

(assert (= bs!758263 (and d!1342318 b!4426752)))

(assert (=> bs!758263 (= (= lt!1626646 lt!1626164) (= lambda!154422 lambda!154313))))

(declare-fun bs!758264 () Bool)

(assert (= bs!758264 (and d!1342318 b!4427397)))

(assert (=> bs!758264 (= (= lt!1626646 lt!1626645) (= lambda!154422 lambda!154421))))

(declare-fun bs!758266 () Bool)

(assert (= bs!758266 (and d!1342318 d!1342124)))

(assert (=> bs!758266 (= (= lt!1626646 lt!1626371) (= lambda!154422 lambda!154362))))

(declare-fun bs!758268 () Bool)

(assert (= bs!758268 (and d!1342318 d!1341994)))

(assert (=> bs!758268 (not (= lambda!154422 lambda!154317))))

(declare-fun bs!758270 () Bool)

(assert (= bs!758270 (and d!1342318 b!4427396)))

(assert (=> bs!758270 (= (= lt!1626646 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154422 lambda!154418))))

(declare-fun bs!758272 () Bool)

(assert (= bs!758272 (and d!1342318 d!1341960)))

(assert (=> bs!758272 (= (= lt!1626646 lt!1626165) (= lambda!154422 lambda!154314))))

(declare-fun bs!758274 () Bool)

(assert (= bs!758274 (and d!1342318 b!4427309)))

(assert (=> bs!758274 (= (= lt!1626646 lt!1626533) (= lambda!154422 lambda!154402))))

(assert (=> bs!758264 (= (= lt!1626646 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154422 lambda!154420))))

(declare-fun bs!758276 () Bool)

(assert (= bs!758276 (and d!1342318 d!1341998)))

(assert (=> bs!758276 (= (= lt!1626646 lt!1626213) (= lambda!154422 lambda!154321))))

(declare-fun bs!758278 () Bool)

(assert (= bs!758278 (and d!1342318 d!1342304)))

(assert (=> bs!758278 (= (= lt!1626646 lt!1626212) (= lambda!154422 lambda!154416))))

(declare-fun bs!758280 () Bool)

(assert (= bs!758280 (and d!1342318 b!4426789)))

(assert (=> bs!758280 (= (= lt!1626646 lt!1625969) (= lambda!154422 lambda!154318))))

(declare-fun bs!758282 () Bool)

(assert (= bs!758282 (and d!1342318 b!4427308)))

(assert (=> bs!758282 (= (= lt!1626646 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154422 lambda!154397))))

(assert (=> bs!758274 (= (= lt!1626646 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154422 lambda!154400))))

(assert (=> bs!758263 (= (= lt!1626646 lt!1625979) (= lambda!154422 lambda!154312))))

(declare-fun bs!758284 () Bool)

(assert (= bs!758284 (and d!1342318 d!1342254)))

(assert (=> bs!758284 (= (= lt!1626646 lt!1626534) (= lambda!154422 lambda!154403))))

(assert (=> d!1342318 true))

(declare-fun e!2756733 () Bool)

(assert (=> d!1342318 e!2756733))

(declare-fun res!1830716 () Bool)

(assert (=> d!1342318 (=> (not res!1830716) (not e!2756733))))

(assert (=> d!1342318 (= res!1830716 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154422))))

(declare-fun e!2756732 () ListMap!2749)

(assert (=> d!1342318 (= lt!1626646 e!2756732)))

(declare-fun c!753651 () Bool)

(assert (=> d!1342318 (= c!753651 ((_ is Nil!49605) (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> d!1342318 (noDuplicateKeys!759 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342318 (= (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626646)))

(declare-fun e!2756734 () Bool)

(declare-fun b!4427395 () Bool)

(assert (=> b!4427395 (= e!2756734 (forall!9578 (toList!3506 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lambda!154421))))

(assert (=> b!4427396 (= e!2756732 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626659 () Unit!82123)

(declare-fun call!308068 () Unit!82123)

(assert (=> b!4427396 (= lt!1626659 call!308068)))

(declare-fun call!308070 () Bool)

(assert (=> b!4427396 call!308070))

(declare-fun lt!1626652 () Unit!82123)

(assert (=> b!4427396 (= lt!1626652 lt!1626659)))

(declare-fun call!308069 () Bool)

(assert (=> b!4427396 call!308069))

(declare-fun lt!1626658 () Unit!82123)

(declare-fun Unit!82246 () Unit!82123)

(assert (=> b!4427396 (= lt!1626658 Unit!82246)))

(declare-fun bm!308063 () Bool)

(assert (=> bm!308063 (= call!308070 (forall!9578 (toList!3506 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (ite c!753651 lambda!154418 lambda!154420)))))

(declare-fun bm!308064 () Bool)

(assert (=> bm!308064 (= call!308068 (lemmaContainsAllItsOwnKeys!177 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427397 (= e!2756732 lt!1626645)))

(declare-fun lt!1626665 () ListMap!2749)

(assert (=> b!4427397 (= lt!1626665 (+!1103 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427397 (= lt!1626645 (addToMapMapFromBucket!396 (t!356667 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun lt!1626661 () Unit!82123)

(assert (=> b!4427397 (= lt!1626661 call!308068)))

(assert (=> b!4427397 call!308070))

(declare-fun lt!1626663 () Unit!82123)

(assert (=> b!4427397 (= lt!1626663 lt!1626661)))

(assert (=> b!4427397 (forall!9578 (toList!3506 lt!1626665) lambda!154421)))

(declare-fun lt!1626650 () Unit!82123)

(declare-fun Unit!82247 () Unit!82123)

(assert (=> b!4427397 (= lt!1626650 Unit!82247)))

(assert (=> b!4427397 (forall!9578 (t!356667 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lambda!154421)))

(declare-fun lt!1626649 () Unit!82123)

(declare-fun Unit!82248 () Unit!82123)

(assert (=> b!4427397 (= lt!1626649 Unit!82248)))

(declare-fun lt!1626657 () Unit!82123)

(declare-fun Unit!82249 () Unit!82123)

(assert (=> b!4427397 (= lt!1626657 Unit!82249)))

(declare-fun lt!1626662 () Unit!82123)

(assert (=> b!4427397 (= lt!1626662 (forallContained!2097 (toList!3506 lt!1626665) lambda!154421 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427397 (contains!12114 lt!1626665 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626651 () Unit!82123)

(declare-fun Unit!82250 () Unit!82123)

(assert (=> b!4427397 (= lt!1626651 Unit!82250)))

(assert (=> b!4427397 (contains!12114 lt!1626645 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626655 () Unit!82123)

(declare-fun Unit!82251 () Unit!82123)

(assert (=> b!4427397 (= lt!1626655 Unit!82251)))

(assert (=> b!4427397 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154421)))

(declare-fun lt!1626653 () Unit!82123)

(declare-fun Unit!82252 () Unit!82123)

(assert (=> b!4427397 (= lt!1626653 Unit!82252)))

(assert (=> b!4427397 (forall!9578 (toList!3506 lt!1626665) lambda!154421)))

(declare-fun lt!1626656 () Unit!82123)

(declare-fun Unit!82253 () Unit!82123)

(assert (=> b!4427397 (= lt!1626656 Unit!82253)))

(declare-fun lt!1626654 () Unit!82123)

(declare-fun Unit!82254 () Unit!82123)

(assert (=> b!4427397 (= lt!1626654 Unit!82254)))

(declare-fun lt!1626664 () Unit!82123)

(assert (=> b!4427397 (= lt!1626664 (addForallContainsKeyThenBeforeAdding!177 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626645 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (_2!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(assert (=> b!4427397 call!308069))

(declare-fun lt!1626647 () Unit!82123)

(assert (=> b!4427397 (= lt!1626647 lt!1626664)))

(assert (=> b!4427397 (forall!9578 (toList!3506 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lambda!154421)))

(declare-fun lt!1626648 () Unit!82123)

(declare-fun Unit!82255 () Unit!82123)

(assert (=> b!4427397 (= lt!1626648 Unit!82255)))

(declare-fun res!1830717 () Bool)

(assert (=> b!4427397 (= res!1830717 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154421))))

(assert (=> b!4427397 (=> (not res!1830717) (not e!2756734))))

(assert (=> b!4427397 e!2756734))

(declare-fun lt!1626660 () Unit!82123)

(declare-fun Unit!82256 () Unit!82123)

(assert (=> b!4427397 (= lt!1626660 Unit!82256)))

(declare-fun b!4427398 () Bool)

(assert (=> b!4427398 (= e!2756733 (invariantList!809 (toList!3506 lt!1626646)))))

(declare-fun b!4427399 () Bool)

(declare-fun res!1830718 () Bool)

(assert (=> b!4427399 (=> (not res!1830718) (not e!2756733))))

(assert (=> b!4427399 (= res!1830718 (forall!9578 (toList!3506 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lambda!154422))))

(declare-fun bm!308065 () Bool)

(assert (=> bm!308065 (= call!308069 (forall!9578 (toList!3506 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (ite c!753651 lambda!154418 lambda!154421)))))

(assert (= (and d!1342318 c!753651) b!4427396))

(assert (= (and d!1342318 (not c!753651)) b!4427397))

(assert (= (and b!4427397 res!1830717) b!4427395))

(assert (= (or b!4427396 b!4427397) bm!308064))

(assert (= (or b!4427396 b!4427397) bm!308063))

(assert (= (or b!4427396 b!4427397) bm!308065))

(assert (= (and d!1342318 res!1830716) b!4427399))

(assert (= (and b!4427399 res!1830718) b!4427398))

(assert (=> bm!308064 m!5108389))

(declare-fun m!5109523 () Bool)

(assert (=> bm!308064 m!5109523))

(declare-fun m!5109527 () Bool)

(assert (=> bm!308065 m!5109527))

(declare-fun m!5109531 () Bool)

(assert (=> bm!308063 m!5109531))

(declare-fun m!5109533 () Bool)

(assert (=> b!4427399 m!5109533))

(declare-fun m!5109535 () Bool)

(assert (=> b!4427395 m!5109535))

(declare-fun m!5109537 () Bool)

(assert (=> d!1342318 m!5109537))

(assert (=> d!1342318 m!5109063))

(declare-fun m!5109539 () Bool)

(assert (=> b!4427398 m!5109539))

(declare-fun m!5109541 () Bool)

(assert (=> b!4427397 m!5109541))

(declare-fun m!5109543 () Bool)

(assert (=> b!4427397 m!5109543))

(assert (=> b!4427397 m!5109541))

(declare-fun m!5109545 () Bool)

(assert (=> b!4427397 m!5109545))

(assert (=> b!4427397 m!5109535))

(declare-fun m!5109547 () Bool)

(assert (=> b!4427397 m!5109547))

(declare-fun m!5109549 () Bool)

(assert (=> b!4427397 m!5109549))

(assert (=> b!4427397 m!5108389))

(declare-fun m!5109553 () Bool)

(assert (=> b!4427397 m!5109553))

(assert (=> b!4427397 m!5109547))

(declare-fun m!5109559 () Bool)

(assert (=> b!4427397 m!5109559))

(declare-fun m!5109563 () Bool)

(assert (=> b!4427397 m!5109563))

(declare-fun m!5109569 () Bool)

(assert (=> b!4427397 m!5109569))

(assert (=> b!4427397 m!5108389))

(assert (=> b!4427397 m!5109559))

(assert (=> b!4426790 d!1342318))

(declare-fun d!1342336 () Bool)

(declare-fun e!2756747 () Bool)

(assert (=> d!1342336 e!2756747))

(declare-fun res!1830731 () Bool)

(assert (=> d!1342336 (=> (not res!1830731) (not e!2756747))))

(declare-fun lt!1626680 () ListMap!2749)

(assert (=> d!1342336 (= res!1830731 (contains!12114 lt!1626680 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626682 () List!49729)

(assert (=> d!1342336 (= lt!1626680 (ListMap!2750 lt!1626682))))

(declare-fun lt!1626681 () Unit!82123)

(declare-fun lt!1626679 () Unit!82123)

(assert (=> d!1342336 (= lt!1626681 lt!1626679)))

(assert (=> d!1342336 (= (getValueByKey!719 lt!1626682 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (Some!10732 (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342336 (= lt!1626679 (lemmaContainsTupThenGetReturnValue!454 lt!1626682 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342336 (= lt!1626682 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625969) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342336 (= (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626680)))

(declare-fun b!4427416 () Bool)

(declare-fun res!1830732 () Bool)

(assert (=> b!4427416 (=> (not res!1830732) (not e!2756747))))

(assert (=> b!4427416 (= res!1830732 (= (getValueByKey!719 (toList!3506 lt!1626680) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (Some!10732 (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun b!4427417 () Bool)

(assert (=> b!4427417 (= e!2756747 (contains!12118 (toList!3506 lt!1626680) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (= (and d!1342336 res!1830731) b!4427416))

(assert (= (and b!4427416 res!1830732) b!4427417))

(declare-fun m!5109571 () Bool)

(assert (=> d!1342336 m!5109571))

(declare-fun m!5109573 () Bool)

(assert (=> d!1342336 m!5109573))

(declare-fun m!5109575 () Bool)

(assert (=> d!1342336 m!5109575))

(declare-fun m!5109577 () Bool)

(assert (=> d!1342336 m!5109577))

(declare-fun m!5109579 () Bool)

(assert (=> b!4427416 m!5109579))

(declare-fun m!5109581 () Bool)

(assert (=> b!4427417 m!5109581))

(assert (=> b!4426790 d!1342336))

(declare-fun d!1342338 () Bool)

(declare-fun res!1830733 () Bool)

(declare-fun e!2756748 () Bool)

(assert (=> d!1342338 (=> res!1830733 e!2756748)))

(assert (=> d!1342338 (= res!1830733 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342338 (= (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154320) e!2756748)))

(declare-fun b!4427418 () Bool)

(declare-fun e!2756749 () Bool)

(assert (=> b!4427418 (= e!2756748 e!2756749)))

(declare-fun res!1830734 () Bool)

(assert (=> b!4427418 (=> (not res!1830734) (not e!2756749))))

(assert (=> b!4427418 (= res!1830734 (dynLambda!20851 lambda!154320 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun b!4427419 () Bool)

(assert (=> b!4427419 (= e!2756749 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154320))))

(assert (= (and d!1342338 (not res!1830733)) b!4427418))

(assert (= (and b!4427418 res!1830734) b!4427419))

(declare-fun b_lambda!143277 () Bool)

(assert (=> (not b_lambda!143277) (not b!4427418)))

(declare-fun m!5109583 () Bool)

(assert (=> b!4427418 m!5109583))

(assert (=> b!4427419 m!5108395))

(assert (=> b!4426790 d!1342338))

(declare-fun d!1342340 () Bool)

(assert (=> d!1342340 (dynLambda!20851 lambda!154320 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(declare-fun lt!1626685 () Unit!82123)

(declare-fun choose!27987 (List!49729 Int tuple2!49414) Unit!82123)

(assert (=> d!1342340 (= lt!1626685 (choose!27987 (toList!3506 lt!1626232) lambda!154320 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun e!2756752 () Bool)

(assert (=> d!1342340 e!2756752))

(declare-fun res!1830737 () Bool)

(assert (=> d!1342340 (=> (not res!1830737) (not e!2756752))))

(assert (=> d!1342340 (= res!1830737 (forall!9578 (toList!3506 lt!1626232) lambda!154320))))

(assert (=> d!1342340 (= (forallContained!2097 (toList!3506 lt!1626232) lambda!154320 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626685)))

(declare-fun b!4427422 () Bool)

(assert (=> b!4427422 (= e!2756752 (contains!12118 (toList!3506 lt!1626232) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (= (and d!1342340 res!1830737) b!4427422))

(declare-fun b_lambda!143279 () Bool)

(assert (=> (not b_lambda!143279) (not d!1342340)))

(assert (=> d!1342340 m!5109583))

(declare-fun m!5109585 () Bool)

(assert (=> d!1342340 m!5109585))

(assert (=> d!1342340 m!5108377))

(declare-fun m!5109587 () Bool)

(assert (=> b!4427422 m!5109587))

(assert (=> b!4426790 d!1342340))

(declare-fun b!4427423 () Bool)

(declare-fun e!2756755 () Unit!82123)

(declare-fun e!2756753 () Unit!82123)

(assert (=> b!4427423 (= e!2756755 e!2756753)))

(declare-fun c!753656 () Bool)

(declare-fun call!308071 () Bool)

(assert (=> b!4427423 (= c!753656 call!308071)))

(declare-fun b!4427424 () Bool)

(declare-fun e!2756757 () List!49732)

(assert (=> b!4427424 (= e!2756757 (keys!16942 lt!1626232))))

(declare-fun b!4427425 () Bool)

(declare-fun e!2756754 () Bool)

(assert (=> b!4427425 (= e!2756754 (contains!12121 (keys!16942 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun d!1342342 () Bool)

(declare-fun e!2756758 () Bool)

(assert (=> d!1342342 e!2756758))

(declare-fun res!1830738 () Bool)

(assert (=> d!1342342 (=> res!1830738 e!2756758)))

(declare-fun e!2756756 () Bool)

(assert (=> d!1342342 (= res!1830738 e!2756756)))

(declare-fun res!1830740 () Bool)

(assert (=> d!1342342 (=> (not res!1830740) (not e!2756756))))

(declare-fun lt!1626687 () Bool)

(assert (=> d!1342342 (= res!1830740 (not lt!1626687))))

(declare-fun lt!1626690 () Bool)

(assert (=> d!1342342 (= lt!1626687 lt!1626690)))

(declare-fun lt!1626692 () Unit!82123)

(assert (=> d!1342342 (= lt!1626692 e!2756755)))

(declare-fun c!753654 () Bool)

(assert (=> d!1342342 (= c!753654 lt!1626690)))

(assert (=> d!1342342 (= lt!1626690 (containsKey!1133 (toList!3506 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342342 (= (contains!12114 lt!1626232 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626687)))

(declare-fun b!4427426 () Bool)

(assert (=> b!4427426 (= e!2756757 (getKeysList!256 (toList!3506 lt!1626232)))))

(declare-fun b!4427427 () Bool)

(assert (=> b!4427427 (= e!2756758 e!2756754)))

(declare-fun res!1830739 () Bool)

(assert (=> b!4427427 (=> (not res!1830739) (not e!2756754))))

(assert (=> b!4427427 (= res!1830739 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun b!4427428 () Bool)

(declare-fun Unit!82258 () Unit!82123)

(assert (=> b!4427428 (= e!2756753 Unit!82258)))

(declare-fun b!4427429 () Bool)

(declare-fun lt!1626686 () Unit!82123)

(assert (=> b!4427429 (= e!2756755 lt!1626686)))

(declare-fun lt!1626693 () Unit!82123)

(assert (=> b!4427429 (= lt!1626693 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427429 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626688 () Unit!82123)

(assert (=> b!4427429 (= lt!1626688 lt!1626693)))

(assert (=> b!4427429 (= lt!1626686 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427429 call!308071))

(declare-fun b!4427430 () Bool)

(assert (=> b!4427430 (= e!2756756 (not (contains!12121 (keys!16942 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun bm!308066 () Bool)

(assert (=> bm!308066 (= call!308071 (contains!12121 e!2756757 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun c!753655 () Bool)

(assert (=> bm!308066 (= c!753655 c!753654)))

(declare-fun b!4427431 () Bool)

(assert (=> b!4427431 false))

(declare-fun lt!1626689 () Unit!82123)

(declare-fun lt!1626691 () Unit!82123)

(assert (=> b!4427431 (= lt!1626689 lt!1626691)))

(assert (=> b!4427431 (containsKey!1133 (toList!3506 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427431 (= lt!1626691 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1626232) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun Unit!82259 () Unit!82123)

(assert (=> b!4427431 (= e!2756753 Unit!82259)))

(assert (= (and d!1342342 c!753654) b!4427429))

(assert (= (and d!1342342 (not c!753654)) b!4427423))

(assert (= (and b!4427423 c!753656) b!4427431))

(assert (= (and b!4427423 (not c!753656)) b!4427428))

(assert (= (or b!4427429 b!4427423) bm!308066))

(assert (= (and bm!308066 c!753655) b!4427426))

(assert (= (and bm!308066 (not c!753655)) b!4427424))

(assert (= (and d!1342342 res!1830740) b!4427430))

(assert (= (and d!1342342 (not res!1830738)) b!4427427))

(assert (= (and b!4427427 res!1830739) b!4427425))

(declare-fun m!5109589 () Bool)

(assert (=> b!4427431 m!5109589))

(declare-fun m!5109591 () Bool)

(assert (=> b!4427431 m!5109591))

(declare-fun m!5109593 () Bool)

(assert (=> b!4427425 m!5109593))

(assert (=> b!4427425 m!5109593))

(declare-fun m!5109595 () Bool)

(assert (=> b!4427425 m!5109595))

(assert (=> b!4427430 m!5109593))

(assert (=> b!4427430 m!5109593))

(assert (=> b!4427430 m!5109595))

(declare-fun m!5109597 () Bool)

(assert (=> b!4427426 m!5109597))

(declare-fun m!5109599 () Bool)

(assert (=> b!4427427 m!5109599))

(assert (=> b!4427427 m!5109599))

(declare-fun m!5109601 () Bool)

(assert (=> b!4427427 m!5109601))

(assert (=> d!1342342 m!5109589))

(declare-fun m!5109603 () Bool)

(assert (=> bm!308066 m!5109603))

(assert (=> b!4427424 m!5109593))

(declare-fun m!5109605 () Bool)

(assert (=> b!4427429 m!5109605))

(assert (=> b!4427429 m!5109599))

(assert (=> b!4427429 m!5109599))

(assert (=> b!4427429 m!5109601))

(declare-fun m!5109607 () Bool)

(assert (=> b!4427429 m!5109607))

(assert (=> b!4426790 d!1342342))

(declare-fun d!1342344 () Bool)

(declare-fun res!1830741 () Bool)

(declare-fun e!2756759 () Bool)

(assert (=> d!1342344 (=> res!1830741 e!2756759)))

(assert (=> d!1342344 (= res!1830741 ((_ is Nil!49605) (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> d!1342344 (= (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154320) e!2756759)))

(declare-fun b!4427432 () Bool)

(declare-fun e!2756760 () Bool)

(assert (=> b!4427432 (= e!2756759 e!2756760)))

(declare-fun res!1830742 () Bool)

(assert (=> b!4427432 (=> (not res!1830742) (not e!2756760))))

(assert (=> b!4427432 (= res!1830742 (dynLambda!20851 lambda!154320 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun b!4427433 () Bool)

(assert (=> b!4427433 (= e!2756760 (forall!9578 (t!356667 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lambda!154320))))

(assert (= (and d!1342344 (not res!1830741)) b!4427432))

(assert (= (and b!4427432 res!1830742) b!4427433))

(declare-fun b_lambda!143281 () Bool)

(assert (=> (not b_lambda!143281) (not b!4427432)))

(declare-fun m!5109609 () Bool)

(assert (=> b!4427432 m!5109609))

(declare-fun m!5109611 () Bool)

(assert (=> b!4427433 m!5109611))

(assert (=> b!4426790 d!1342344))

(assert (=> b!4426790 d!1342106))

(declare-fun b!4427434 () Bool)

(declare-fun e!2756763 () Unit!82123)

(declare-fun e!2756761 () Unit!82123)

(assert (=> b!4427434 (= e!2756763 e!2756761)))

(declare-fun c!753659 () Bool)

(declare-fun call!308072 () Bool)

(assert (=> b!4427434 (= c!753659 call!308072)))

(declare-fun b!4427435 () Bool)

(declare-fun e!2756765 () List!49732)

(assert (=> b!4427435 (= e!2756765 (keys!16942 lt!1626212))))

(declare-fun b!4427436 () Bool)

(declare-fun e!2756762 () Bool)

(assert (=> b!4427436 (= e!2756762 (contains!12121 (keys!16942 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun d!1342346 () Bool)

(declare-fun e!2756766 () Bool)

(assert (=> d!1342346 e!2756766))

(declare-fun res!1830743 () Bool)

(assert (=> d!1342346 (=> res!1830743 e!2756766)))

(declare-fun e!2756764 () Bool)

(assert (=> d!1342346 (= res!1830743 e!2756764)))

(declare-fun res!1830745 () Bool)

(assert (=> d!1342346 (=> (not res!1830745) (not e!2756764))))

(declare-fun lt!1626695 () Bool)

(assert (=> d!1342346 (= res!1830745 (not lt!1626695))))

(declare-fun lt!1626698 () Bool)

(assert (=> d!1342346 (= lt!1626695 lt!1626698)))

(declare-fun lt!1626700 () Unit!82123)

(assert (=> d!1342346 (= lt!1626700 e!2756763)))

(declare-fun c!753657 () Bool)

(assert (=> d!1342346 (= c!753657 lt!1626698)))

(assert (=> d!1342346 (= lt!1626698 (containsKey!1133 (toList!3506 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342346 (= (contains!12114 lt!1626212 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626695)))

(declare-fun b!4427437 () Bool)

(assert (=> b!4427437 (= e!2756765 (getKeysList!256 (toList!3506 lt!1626212)))))

(declare-fun b!4427438 () Bool)

(assert (=> b!4427438 (= e!2756766 e!2756762)))

(declare-fun res!1830744 () Bool)

(assert (=> b!4427438 (=> (not res!1830744) (not e!2756762))))

(assert (=> b!4427438 (= res!1830744 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun b!4427439 () Bool)

(declare-fun Unit!82260 () Unit!82123)

(assert (=> b!4427439 (= e!2756761 Unit!82260)))

(declare-fun b!4427440 () Bool)

(declare-fun lt!1626694 () Unit!82123)

(assert (=> b!4427440 (= e!2756763 lt!1626694)))

(declare-fun lt!1626701 () Unit!82123)

(assert (=> b!4427440 (= lt!1626701 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427440 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626696 () Unit!82123)

(assert (=> b!4427440 (= lt!1626696 lt!1626701)))

(assert (=> b!4427440 (= lt!1626694 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427440 call!308072))

(declare-fun b!4427441 () Bool)

(assert (=> b!4427441 (= e!2756764 (not (contains!12121 (keys!16942 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun bm!308067 () Bool)

(assert (=> bm!308067 (= call!308072 (contains!12121 e!2756765 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun c!753658 () Bool)

(assert (=> bm!308067 (= c!753658 c!753657)))

(declare-fun b!4427442 () Bool)

(assert (=> b!4427442 false))

(declare-fun lt!1626697 () Unit!82123)

(declare-fun lt!1626699 () Unit!82123)

(assert (=> b!4427442 (= lt!1626697 lt!1626699)))

(assert (=> b!4427442 (containsKey!1133 (toList!3506 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427442 (= lt!1626699 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1626212) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun Unit!82261 () Unit!82123)

(assert (=> b!4427442 (= e!2756761 Unit!82261)))

(assert (= (and d!1342346 c!753657) b!4427440))

(assert (= (and d!1342346 (not c!753657)) b!4427434))

(assert (= (and b!4427434 c!753659) b!4427442))

(assert (= (and b!4427434 (not c!753659)) b!4427439))

(assert (= (or b!4427440 b!4427434) bm!308067))

(assert (= (and bm!308067 c!753658) b!4427437))

(assert (= (and bm!308067 (not c!753658)) b!4427435))

(assert (= (and d!1342346 res!1830745) b!4427441))

(assert (= (and d!1342346 (not res!1830743)) b!4427438))

(assert (= (and b!4427438 res!1830744) b!4427436))

(declare-fun m!5109613 () Bool)

(assert (=> b!4427442 m!5109613))

(declare-fun m!5109615 () Bool)

(assert (=> b!4427442 m!5109615))

(declare-fun m!5109617 () Bool)

(assert (=> b!4427436 m!5109617))

(assert (=> b!4427436 m!5109617))

(declare-fun m!5109619 () Bool)

(assert (=> b!4427436 m!5109619))

(assert (=> b!4427441 m!5109617))

(assert (=> b!4427441 m!5109617))

(assert (=> b!4427441 m!5109619))

(declare-fun m!5109621 () Bool)

(assert (=> b!4427437 m!5109621))

(declare-fun m!5109623 () Bool)

(assert (=> b!4427438 m!5109623))

(assert (=> b!4427438 m!5109623))

(declare-fun m!5109625 () Bool)

(assert (=> b!4427438 m!5109625))

(assert (=> d!1342346 m!5109613))

(declare-fun m!5109627 () Bool)

(assert (=> bm!308067 m!5109627))

(assert (=> b!4427435 m!5109617))

(declare-fun m!5109629 () Bool)

(assert (=> b!4427440 m!5109629))

(assert (=> b!4427440 m!5109623))

(assert (=> b!4427440 m!5109623))

(assert (=> b!4427440 m!5109625))

(declare-fun m!5109631 () Bool)

(assert (=> b!4427440 m!5109631))

(assert (=> b!4426790 d!1342346))

(declare-fun b!4427443 () Bool)

(declare-fun e!2756769 () Unit!82123)

(declare-fun e!2756767 () Unit!82123)

(assert (=> b!4427443 (= e!2756769 e!2756767)))

(declare-fun c!753662 () Bool)

(declare-fun call!308073 () Bool)

(assert (=> b!4427443 (= c!753662 call!308073)))

(declare-fun b!4427444 () Bool)

(declare-fun e!2756771 () List!49732)

(assert (=> b!4427444 (= e!2756771 (keys!16942 (extractMap!820 (toList!3505 lm!1616))))))

(declare-fun b!4427445 () Bool)

(declare-fun e!2756768 () Bool)

(assert (=> b!4427445 (= e!2756768 (contains!12121 (keys!16942 (extractMap!820 (toList!3505 lm!1616))) key!3717))))

(declare-fun d!1342348 () Bool)

(declare-fun e!2756772 () Bool)

(assert (=> d!1342348 e!2756772))

(declare-fun res!1830746 () Bool)

(assert (=> d!1342348 (=> res!1830746 e!2756772)))

(declare-fun e!2756770 () Bool)

(assert (=> d!1342348 (= res!1830746 e!2756770)))

(declare-fun res!1830748 () Bool)

(assert (=> d!1342348 (=> (not res!1830748) (not e!2756770))))

(declare-fun lt!1626703 () Bool)

(assert (=> d!1342348 (= res!1830748 (not lt!1626703))))

(declare-fun lt!1626706 () Bool)

(assert (=> d!1342348 (= lt!1626703 lt!1626706)))

(declare-fun lt!1626708 () Unit!82123)

(assert (=> d!1342348 (= lt!1626708 e!2756769)))

(declare-fun c!753660 () Bool)

(assert (=> d!1342348 (= c!753660 lt!1626706)))

(assert (=> d!1342348 (= lt!1626706 (containsKey!1133 (toList!3506 (extractMap!820 (toList!3505 lm!1616))) key!3717))))

(assert (=> d!1342348 (= (contains!12114 (extractMap!820 (toList!3505 lm!1616)) key!3717) lt!1626703)))

(declare-fun b!4427446 () Bool)

(assert (=> b!4427446 (= e!2756771 (getKeysList!256 (toList!3506 (extractMap!820 (toList!3505 lm!1616)))))))

(declare-fun b!4427447 () Bool)

(assert (=> b!4427447 (= e!2756772 e!2756768)))

(declare-fun res!1830747 () Bool)

(assert (=> b!4427447 (=> (not res!1830747) (not e!2756768))))

(assert (=> b!4427447 (= res!1830747 (isDefined!8025 (getValueByKey!719 (toList!3506 (extractMap!820 (toList!3505 lm!1616))) key!3717)))))

(declare-fun b!4427448 () Bool)

(declare-fun Unit!82262 () Unit!82123)

(assert (=> b!4427448 (= e!2756767 Unit!82262)))

(declare-fun b!4427449 () Bool)

(declare-fun lt!1626702 () Unit!82123)

(assert (=> b!4427449 (= e!2756769 lt!1626702)))

(declare-fun lt!1626709 () Unit!82123)

(assert (=> b!4427449 (= lt!1626709 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 (extractMap!820 (toList!3505 lm!1616))) key!3717))))

(assert (=> b!4427449 (isDefined!8025 (getValueByKey!719 (toList!3506 (extractMap!820 (toList!3505 lm!1616))) key!3717))))

(declare-fun lt!1626704 () Unit!82123)

(assert (=> b!4427449 (= lt!1626704 lt!1626709)))

(assert (=> b!4427449 (= lt!1626702 (lemmaInListThenGetKeysListContains!253 (toList!3506 (extractMap!820 (toList!3505 lm!1616))) key!3717))))

(assert (=> b!4427449 call!308073))

(declare-fun b!4427450 () Bool)

(assert (=> b!4427450 (= e!2756770 (not (contains!12121 (keys!16942 (extractMap!820 (toList!3505 lm!1616))) key!3717)))))

(declare-fun bm!308068 () Bool)

(assert (=> bm!308068 (= call!308073 (contains!12121 e!2756771 key!3717))))

(declare-fun c!753661 () Bool)

(assert (=> bm!308068 (= c!753661 c!753660)))

(declare-fun b!4427451 () Bool)

(assert (=> b!4427451 false))

(declare-fun lt!1626705 () Unit!82123)

(declare-fun lt!1626707 () Unit!82123)

(assert (=> b!4427451 (= lt!1626705 lt!1626707)))

(assert (=> b!4427451 (containsKey!1133 (toList!3506 (extractMap!820 (toList!3505 lm!1616))) key!3717)))

(assert (=> b!4427451 (= lt!1626707 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 (extractMap!820 (toList!3505 lm!1616))) key!3717))))

(declare-fun Unit!82263 () Unit!82123)

(assert (=> b!4427451 (= e!2756767 Unit!82263)))

(assert (= (and d!1342348 c!753660) b!4427449))

(assert (= (and d!1342348 (not c!753660)) b!4427443))

(assert (= (and b!4427443 c!753662) b!4427451))

(assert (= (and b!4427443 (not c!753662)) b!4427448))

(assert (= (or b!4427449 b!4427443) bm!308068))

(assert (= (and bm!308068 c!753661) b!4427446))

(assert (= (and bm!308068 (not c!753661)) b!4427444))

(assert (= (and d!1342348 res!1830748) b!4427450))

(assert (= (and d!1342348 (not res!1830746)) b!4427447))

(assert (= (and b!4427447 res!1830747) b!4427445))

(declare-fun m!5109633 () Bool)

(assert (=> b!4427451 m!5109633))

(declare-fun m!5109635 () Bool)

(assert (=> b!4427451 m!5109635))

(assert (=> b!4427445 m!5108035))

(declare-fun m!5109637 () Bool)

(assert (=> b!4427445 m!5109637))

(assert (=> b!4427445 m!5109637))

(declare-fun m!5109639 () Bool)

(assert (=> b!4427445 m!5109639))

(assert (=> b!4427450 m!5108035))

(assert (=> b!4427450 m!5109637))

(assert (=> b!4427450 m!5109637))

(assert (=> b!4427450 m!5109639))

(declare-fun m!5109641 () Bool)

(assert (=> b!4427446 m!5109641))

(declare-fun m!5109643 () Bool)

(assert (=> b!4427447 m!5109643))

(assert (=> b!4427447 m!5109643))

(declare-fun m!5109645 () Bool)

(assert (=> b!4427447 m!5109645))

(assert (=> d!1342348 m!5109633))

(declare-fun m!5109647 () Bool)

(assert (=> bm!308068 m!5109647))

(assert (=> b!4427444 m!5108035))

(assert (=> b!4427444 m!5109637))

(declare-fun m!5109649 () Bool)

(assert (=> b!4427449 m!5109649))

(assert (=> b!4427449 m!5109643))

(assert (=> b!4427449 m!5109643))

(assert (=> b!4427449 m!5109645))

(declare-fun m!5109651 () Bool)

(assert (=> b!4427449 m!5109651))

(assert (=> d!1342088 d!1342348))

(assert (=> d!1342088 d!1342022))

(declare-fun d!1342350 () Bool)

(assert (=> d!1342350 (contains!12114 (extractMap!820 (toList!3505 lm!1616)) key!3717)))

(assert (=> d!1342350 true))

(declare-fun _$12!1193 () Unit!82123)

(assert (=> d!1342350 (= (choose!27973 lm!1616 key!3717 hashF!1220) _$12!1193)))

(declare-fun bs!758286 () Bool)

(assert (= bs!758286 d!1342350))

(assert (=> bs!758286 m!5108035))

(assert (=> bs!758286 m!5108035))

(assert (=> bs!758286 m!5108705))

(assert (=> d!1342088 d!1342350))

(declare-fun d!1342358 () Bool)

(declare-fun res!1830753 () Bool)

(declare-fun e!2756777 () Bool)

(assert (=> d!1342358 (=> res!1830753 e!2756777)))

(assert (=> d!1342358 (= res!1830753 ((_ is Nil!49606) (toList!3505 lm!1616)))))

(assert (=> d!1342358 (= (forall!9576 (toList!3505 lm!1616) lambda!154358) e!2756777)))

(declare-fun b!4427456 () Bool)

(declare-fun e!2756778 () Bool)

(assert (=> b!4427456 (= e!2756777 e!2756778)))

(declare-fun res!1830754 () Bool)

(assert (=> b!4427456 (=> (not res!1830754) (not e!2756778))))

(assert (=> b!4427456 (= res!1830754 (dynLambda!20850 lambda!154358 (h!55295 (toList!3505 lm!1616))))))

(declare-fun b!4427457 () Bool)

(assert (=> b!4427457 (= e!2756778 (forall!9576 (t!356668 (toList!3505 lm!1616)) lambda!154358))))

(assert (= (and d!1342358 (not res!1830753)) b!4427456))

(assert (= (and b!4427456 res!1830754) b!4427457))

(declare-fun b_lambda!143283 () Bool)

(assert (=> (not b_lambda!143283) (not b!4427456)))

(declare-fun m!5109663 () Bool)

(assert (=> b!4427456 m!5109663))

(declare-fun m!5109665 () Bool)

(assert (=> b!4427457 m!5109665))

(assert (=> d!1342088 d!1342358))

(declare-fun d!1342360 () Bool)

(assert (=> d!1342360 (= (invariantList!809 (toList!3506 lt!1626165)) (noDuplicatedKeys!175 (toList!3506 lt!1626165)))))

(declare-fun bs!758287 () Bool)

(assert (= bs!758287 d!1342360))

(declare-fun m!5109667 () Bool)

(assert (=> bs!758287 m!5109667))

(assert (=> b!4426753 d!1342360))

(declare-fun d!1342362 () Bool)

(declare-fun res!1830759 () Bool)

(declare-fun e!2756783 () Bool)

(assert (=> d!1342362 (=> res!1830759 e!2756783)))

(assert (=> d!1342362 (= res!1830759 (or ((_ is Nil!49606) (toList!3505 lm!1616)) ((_ is Nil!49606) (t!356668 (toList!3505 lm!1616)))))))

(assert (=> d!1342362 (= (isStrictlySorted!236 (toList!3505 lm!1616)) e!2756783)))

(declare-fun b!4427462 () Bool)

(declare-fun e!2756784 () Bool)

(assert (=> b!4427462 (= e!2756783 e!2756784)))

(declare-fun res!1830760 () Bool)

(assert (=> b!4427462 (=> (not res!1830760) (not e!2756784))))

(assert (=> b!4427462 (= res!1830760 (bvslt (_1!28002 (h!55295 (toList!3505 lm!1616))) (_1!28002 (h!55295 (t!356668 (toList!3505 lm!1616))))))))

(declare-fun b!4427463 () Bool)

(assert (=> b!4427463 (= e!2756784 (isStrictlySorted!236 (t!356668 (toList!3505 lm!1616))))))

(assert (= (and d!1342362 (not res!1830759)) b!4427462))

(assert (= (and b!4427462 res!1830760) b!4427463))

(declare-fun m!5109669 () Bool)

(assert (=> b!4427463 m!5109669))

(assert (=> d!1342074 d!1342362))

(declare-fun d!1342364 () Bool)

(declare-fun res!1830761 () Bool)

(declare-fun e!2756785 () Bool)

(assert (=> d!1342364 (=> res!1830761 e!2756785)))

(assert (=> d!1342364 (= res!1830761 ((_ is Nil!49605) (toList!3506 lt!1625979)))))

(assert (=> d!1342364 (= (forall!9578 (toList!3506 lt!1625979) (ite c!753502 lambda!154311 lambda!154313)) e!2756785)))

(declare-fun b!4427464 () Bool)

(declare-fun e!2756786 () Bool)

(assert (=> b!4427464 (= e!2756785 e!2756786)))

(declare-fun res!1830762 () Bool)

(assert (=> b!4427464 (=> (not res!1830762) (not e!2756786))))

(assert (=> b!4427464 (= res!1830762 (dynLambda!20851 (ite c!753502 lambda!154311 lambda!154313) (h!55294 (toList!3506 lt!1625979))))))

(declare-fun b!4427465 () Bool)

(assert (=> b!4427465 (= e!2756786 (forall!9578 (t!356667 (toList!3506 lt!1625979)) (ite c!753502 lambda!154311 lambda!154313)))))

(assert (= (and d!1342364 (not res!1830761)) b!4427464))

(assert (= (and b!4427464 res!1830762) b!4427465))

(declare-fun b_lambda!143285 () Bool)

(assert (=> (not b_lambda!143285) (not b!4427464)))

(declare-fun m!5109671 () Bool)

(assert (=> b!4427464 m!5109671))

(declare-fun m!5109673 () Bool)

(assert (=> b!4427465 m!5109673))

(assert (=> bm!308007 d!1342364))

(declare-fun d!1342366 () Bool)

(assert (=> d!1342366 (= (get!16168 (getValueByKey!720 (toList!3505 lm!1616) hash!366)) (v!43921 (getValueByKey!720 (toList!3505 lm!1616) hash!366)))))

(assert (=> d!1342092 d!1342366))

(declare-fun d!1342368 () Bool)

(declare-fun c!753663 () Bool)

(assert (=> d!1342368 (= c!753663 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (= (_1!28002 (h!55295 (toList!3505 lm!1616))) hash!366)))))

(declare-fun e!2756787 () Option!10734)

(assert (=> d!1342368 (= (getValueByKey!720 (toList!3505 lm!1616) hash!366) e!2756787)))

(declare-fun b!4427468 () Bool)

(declare-fun e!2756788 () Option!10734)

(assert (=> b!4427468 (= e!2756788 (getValueByKey!720 (t!356668 (toList!3505 lm!1616)) hash!366))))

(declare-fun b!4427466 () Bool)

(assert (=> b!4427466 (= e!2756787 (Some!10733 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(declare-fun b!4427469 () Bool)

(assert (=> b!4427469 (= e!2756788 None!10733)))

(declare-fun b!4427467 () Bool)

(assert (=> b!4427467 (= e!2756787 e!2756788)))

(declare-fun c!753664 () Bool)

(assert (=> b!4427467 (= c!753664 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (not (= (_1!28002 (h!55295 (toList!3505 lm!1616))) hash!366))))))

(assert (= (and d!1342368 c!753663) b!4427466))

(assert (= (and d!1342368 (not c!753663)) b!4427467))

(assert (= (and b!4427467 c!753664) b!4427468))

(assert (= (and b!4427467 (not c!753664)) b!4427469))

(declare-fun m!5109675 () Bool)

(assert (=> b!4427468 m!5109675))

(assert (=> d!1342092 d!1342368))

(declare-fun d!1342370 () Bool)

(assert (=> d!1342370 (= (isEmpty!28351 (toList!3505 lm!1616)) ((_ is Nil!49606) (toList!3505 lm!1616)))))

(assert (=> d!1341988 d!1342370))

(declare-fun d!1342372 () Bool)

(declare-fun res!1830763 () Bool)

(declare-fun e!2756789 () Bool)

(assert (=> d!1342372 (=> res!1830763 e!2756789)))

(assert (=> d!1342372 (= res!1830763 ((_ is Nil!49605) (toList!3506 lt!1625969)))))

(assert (=> d!1342372 (= (forall!9578 (toList!3506 lt!1625969) lambda!154321) e!2756789)))

(declare-fun b!4427470 () Bool)

(declare-fun e!2756790 () Bool)

(assert (=> b!4427470 (= e!2756789 e!2756790)))

(declare-fun res!1830764 () Bool)

(assert (=> b!4427470 (=> (not res!1830764) (not e!2756790))))

(assert (=> b!4427470 (= res!1830764 (dynLambda!20851 lambda!154321 (h!55294 (toList!3506 lt!1625969))))))

(declare-fun b!4427471 () Bool)

(assert (=> b!4427471 (= e!2756790 (forall!9578 (t!356667 (toList!3506 lt!1625969)) lambda!154321))))

(assert (= (and d!1342372 (not res!1830763)) b!4427470))

(assert (= (and b!4427470 res!1830764) b!4427471))

(declare-fun b_lambda!143287 () Bool)

(assert (=> (not b_lambda!143287) (not b!4427470)))

(declare-fun m!5109677 () Bool)

(assert (=> b!4427470 m!5109677))

(declare-fun m!5109679 () Bool)

(assert (=> b!4427471 m!5109679))

(assert (=> b!4426792 d!1342372))

(declare-fun bs!758288 () Bool)

(declare-fun d!1342374 () Bool)

(assert (= bs!758288 (and d!1342374 b!4426790)))

(declare-fun lambda!154430 () Int)

(assert (=> bs!758288 (= (= lt!1625979 lt!1626212) (= lambda!154430 lambda!154320))))

(declare-fun bs!758289 () Bool)

(assert (= bs!758289 (and d!1342374 b!4426998)))

(assert (=> bs!758289 (= (= lt!1625979 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154430 lambda!154360))))

(assert (=> bs!758289 (= (= lt!1625979 lt!1626370) (= lambda!154430 lambda!154361))))

(declare-fun bs!758290 () Bool)

(assert (= bs!758290 (and d!1342374 b!4426997)))

(assert (=> bs!758290 (= (= lt!1625979 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154430 lambda!154359))))

(assert (=> bs!758288 (= (= lt!1625979 lt!1625969) (= lambda!154430 lambda!154319))))

(declare-fun bs!758291 () Bool)

(assert (= bs!758291 (and d!1342374 b!4426752)))

(assert (=> bs!758291 (= (= lt!1625979 lt!1626164) (= lambda!154430 lambda!154313))))

(declare-fun bs!758292 () Bool)

(assert (= bs!758292 (and d!1342374 b!4427397)))

(assert (=> bs!758292 (= (= lt!1625979 lt!1626645) (= lambda!154430 lambda!154421))))

(declare-fun bs!758293 () Bool)

(assert (= bs!758293 (and d!1342374 d!1342124)))

(assert (=> bs!758293 (= (= lt!1625979 lt!1626371) (= lambda!154430 lambda!154362))))

(declare-fun bs!758294 () Bool)

(assert (= bs!758294 (and d!1342374 b!4426751)))

(assert (=> bs!758294 (= lambda!154430 lambda!154311)))

(declare-fun bs!758295 () Bool)

(assert (= bs!758295 (and d!1342374 d!1342318)))

(assert (=> bs!758295 (= (= lt!1625979 lt!1626646) (= lambda!154430 lambda!154422))))

(declare-fun bs!758296 () Bool)

(assert (= bs!758296 (and d!1342374 d!1341994)))

(assert (=> bs!758296 (not (= lambda!154430 lambda!154317))))

(declare-fun bs!758297 () Bool)

(assert (= bs!758297 (and d!1342374 b!4427396)))

(assert (=> bs!758297 (= (= lt!1625979 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154430 lambda!154418))))

(declare-fun bs!758298 () Bool)

(assert (= bs!758298 (and d!1342374 d!1341960)))

(assert (=> bs!758298 (= (= lt!1625979 lt!1626165) (= lambda!154430 lambda!154314))))

(declare-fun bs!758299 () Bool)

(assert (= bs!758299 (and d!1342374 b!4427309)))

(assert (=> bs!758299 (= (= lt!1625979 lt!1626533) (= lambda!154430 lambda!154402))))

(assert (=> bs!758292 (= (= lt!1625979 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154430 lambda!154420))))

(declare-fun bs!758300 () Bool)

(assert (= bs!758300 (and d!1342374 d!1341998)))

(assert (=> bs!758300 (= (= lt!1625979 lt!1626213) (= lambda!154430 lambda!154321))))

(declare-fun bs!758301 () Bool)

(assert (= bs!758301 (and d!1342374 d!1342304)))

(assert (=> bs!758301 (= (= lt!1625979 lt!1626212) (= lambda!154430 lambda!154416))))

(declare-fun bs!758302 () Bool)

(assert (= bs!758302 (and d!1342374 b!4426789)))

(assert (=> bs!758302 (= (= lt!1625979 lt!1625969) (= lambda!154430 lambda!154318))))

(declare-fun bs!758303 () Bool)

(assert (= bs!758303 (and d!1342374 b!4427308)))

(assert (=> bs!758303 (= (= lt!1625979 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154430 lambda!154397))))

(assert (=> bs!758299 (= (= lt!1625979 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154430 lambda!154400))))

(assert (=> bs!758291 (= lambda!154430 lambda!154312)))

(declare-fun bs!758304 () Bool)

(assert (= bs!758304 (and d!1342374 d!1342254)))

(assert (=> bs!758304 (= (= lt!1625979 lt!1626534) (= lambda!154430 lambda!154403))))

(assert (=> d!1342374 true))

(assert (=> d!1342374 (forall!9578 (toList!3506 lt!1625979) lambda!154430)))

(declare-fun lt!1626727 () Unit!82123)

(declare-fun choose!27989 (ListMap!2749) Unit!82123)

(assert (=> d!1342374 (= lt!1626727 (choose!27989 lt!1625979))))

(assert (=> d!1342374 (= (lemmaContainsAllItsOwnKeys!177 lt!1625979) lt!1626727)))

(declare-fun bs!758305 () Bool)

(assert (= bs!758305 d!1342374))

(declare-fun m!5109681 () Bool)

(assert (=> bs!758305 m!5109681))

(declare-fun m!5109683 () Bool)

(assert (=> bs!758305 m!5109683))

(assert (=> bm!308006 d!1342374))

(assert (=> d!1342060 d!1342064))

(declare-fun d!1342376 () Bool)

(declare-fun c!753671 () Bool)

(assert (=> d!1342376 (= c!753671 ((_ is Nil!49605) (toList!3506 (+!1103 lt!1625981 lt!1625974))))))

(declare-fun e!2756799 () (InoxSet tuple2!49414))

(assert (=> d!1342376 (= (content!7962 (toList!3506 (+!1103 lt!1625981 lt!1625974))) e!2756799)))

(declare-fun b!4427490 () Bool)

(assert (=> b!4427490 (= e!2756799 ((as const (Array tuple2!49414 Bool)) false))))

(declare-fun b!4427491 () Bool)

(assert (=> b!4427491 (= e!2756799 ((_ map or) (store ((as const (Array tuple2!49414 Bool)) false) (h!55294 (toList!3506 (+!1103 lt!1625981 lt!1625974))) true) (content!7962 (t!356667 (toList!3506 (+!1103 lt!1625981 lt!1625974))))))))

(assert (= (and d!1342376 c!753671) b!4427490))

(assert (= (and d!1342376 (not c!753671)) b!4427491))

(declare-fun m!5109685 () Bool)

(assert (=> b!4427491 m!5109685))

(declare-fun m!5109687 () Bool)

(assert (=> b!4427491 m!5109687))

(assert (=> d!1341952 d!1342376))

(assert (=> d!1341952 d!1342282))

(declare-fun d!1342378 () Bool)

(declare-fun res!1830771 () Bool)

(declare-fun e!2756800 () Bool)

(assert (=> d!1342378 (=> res!1830771 e!2756800)))

(assert (=> d!1342378 (= res!1830771 ((_ is Nil!49605) (toList!3506 lt!1625969)))))

(assert (=> d!1342378 (= (forall!9578 (toList!3506 lt!1625969) (ite c!753512 lambda!154318 lambda!154319)) e!2756800)))

(declare-fun b!4427492 () Bool)

(declare-fun e!2756801 () Bool)

(assert (=> b!4427492 (= e!2756800 e!2756801)))

(declare-fun res!1830772 () Bool)

(assert (=> b!4427492 (=> (not res!1830772) (not e!2756801))))

(assert (=> b!4427492 (= res!1830772 (dynLambda!20851 (ite c!753512 lambda!154318 lambda!154319) (h!55294 (toList!3506 lt!1625969))))))

(declare-fun b!4427493 () Bool)

(assert (=> b!4427493 (= e!2756801 (forall!9578 (t!356667 (toList!3506 lt!1625969)) (ite c!753512 lambda!154318 lambda!154319)))))

(assert (= (and d!1342378 (not res!1830771)) b!4427492))

(assert (= (and b!4427492 res!1830772) b!4427493))

(declare-fun b_lambda!143289 () Bool)

(assert (=> (not b_lambda!143289) (not b!4427492)))

(declare-fun m!5109689 () Bool)

(assert (=> b!4427492 m!5109689))

(declare-fun m!5109691 () Bool)

(assert (=> b!4427493 m!5109691))

(assert (=> bm!308011 d!1342378))

(declare-fun d!1342380 () Bool)

(declare-fun res!1830773 () Bool)

(declare-fun e!2756802 () Bool)

(assert (=> d!1342380 (=> res!1830773 e!2756802)))

(assert (=> d!1342380 (= res!1830773 ((_ is Nil!49605) (toList!3506 lt!1625979)))))

(assert (=> d!1342380 (= (forall!9578 (toList!3506 lt!1625979) lambda!154313) e!2756802)))

(declare-fun b!4427494 () Bool)

(declare-fun e!2756803 () Bool)

(assert (=> b!4427494 (= e!2756802 e!2756803)))

(declare-fun res!1830774 () Bool)

(assert (=> b!4427494 (=> (not res!1830774) (not e!2756803))))

(assert (=> b!4427494 (= res!1830774 (dynLambda!20851 lambda!154313 (h!55294 (toList!3506 lt!1625979))))))

(declare-fun b!4427495 () Bool)

(assert (=> b!4427495 (= e!2756803 (forall!9578 (t!356667 (toList!3506 lt!1625979)) lambda!154313))))

(assert (= (and d!1342380 (not res!1830773)) b!4427494))

(assert (= (and b!4427494 res!1830774) b!4427495))

(declare-fun b_lambda!143291 () Bool)

(assert (=> (not b_lambda!143291) (not b!4427494)))

(declare-fun m!5109693 () Bool)

(assert (=> b!4427494 m!5109693))

(declare-fun m!5109695 () Bool)

(assert (=> b!4427495 m!5109695))

(assert (=> b!4426750 d!1342380))

(declare-fun d!1342382 () Bool)

(declare-fun res!1830775 () Bool)

(declare-fun e!2756804 () Bool)

(assert (=> d!1342382 (=> res!1830775 e!2756804)))

(assert (=> d!1342382 (= res!1830775 (and ((_ is Cons!49605) (t!356667 newBucket!194)) (= (_1!28001 (h!55294 (t!356667 newBucket!194))) (_1!28001 (h!55294 newBucket!194)))))))

(assert (=> d!1342382 (= (containsKey!1130 (t!356667 newBucket!194) (_1!28001 (h!55294 newBucket!194))) e!2756804)))

(declare-fun b!4427496 () Bool)

(declare-fun e!2756805 () Bool)

(assert (=> b!4427496 (= e!2756804 e!2756805)))

(declare-fun res!1830776 () Bool)

(assert (=> b!4427496 (=> (not res!1830776) (not e!2756805))))

(assert (=> b!4427496 (= res!1830776 ((_ is Cons!49605) (t!356667 newBucket!194)))))

(declare-fun b!4427497 () Bool)

(assert (=> b!4427497 (= e!2756805 (containsKey!1130 (t!356667 (t!356667 newBucket!194)) (_1!28001 (h!55294 newBucket!194))))))

(assert (= (and d!1342382 (not res!1830775)) b!4427496))

(assert (= (and b!4427496 res!1830776) b!4427497))

(declare-fun m!5109697 () Bool)

(assert (=> b!4427497 m!5109697))

(assert (=> b!4426936 d!1342382))

(declare-fun d!1342384 () Bool)

(declare-fun lt!1626728 () Bool)

(assert (=> d!1342384 (= lt!1626728 (select (content!7962 (toList!3506 lt!1626031)) lt!1625974))))

(declare-fun e!2756807 () Bool)

(assert (=> d!1342384 (= lt!1626728 e!2756807)))

(declare-fun res!1830778 () Bool)

(assert (=> d!1342384 (=> (not res!1830778) (not e!2756807))))

(assert (=> d!1342384 (= res!1830778 ((_ is Cons!49605) (toList!3506 lt!1626031)))))

(assert (=> d!1342384 (= (contains!12118 (toList!3506 lt!1626031) lt!1625974) lt!1626728)))

(declare-fun b!4427498 () Bool)

(declare-fun e!2756806 () Bool)

(assert (=> b!4427498 (= e!2756807 e!2756806)))

(declare-fun res!1830777 () Bool)

(assert (=> b!4427498 (=> res!1830777 e!2756806)))

(assert (=> b!4427498 (= res!1830777 (= (h!55294 (toList!3506 lt!1626031)) lt!1625974))))

(declare-fun b!4427499 () Bool)

(assert (=> b!4427499 (= e!2756806 (contains!12118 (t!356667 (toList!3506 lt!1626031)) lt!1625974))))

(assert (= (and d!1342384 res!1830778) b!4427498))

(assert (= (and b!4427498 (not res!1830777)) b!4427499))

(declare-fun m!5109699 () Bool)

(assert (=> d!1342384 m!5109699))

(declare-fun m!5109701 () Bool)

(assert (=> d!1342384 m!5109701))

(declare-fun m!5109703 () Bool)

(assert (=> b!4427499 m!5109703))

(assert (=> b!4426706 d!1342384))

(declare-fun d!1342386 () Bool)

(declare-fun lt!1626729 () Bool)

(assert (=> d!1342386 (= lt!1626729 (select (content!7963 e!2756418) key!3717))))

(declare-fun e!2756808 () Bool)

(assert (=> d!1342386 (= lt!1626729 e!2756808)))

(declare-fun res!1830779 () Bool)

(assert (=> d!1342386 (=> (not res!1830779) (not e!2756808))))

(assert (=> d!1342386 (= res!1830779 ((_ is Cons!49608) e!2756418))))

(assert (=> d!1342386 (= (contains!12121 e!2756418 key!3717) lt!1626729)))

(declare-fun b!4427500 () Bool)

(declare-fun e!2756809 () Bool)

(assert (=> b!4427500 (= e!2756808 e!2756809)))

(declare-fun res!1830780 () Bool)

(assert (=> b!4427500 (=> res!1830780 e!2756809)))

(assert (=> b!4427500 (= res!1830780 (= (h!55299 e!2756418) key!3717))))

(declare-fun b!4427501 () Bool)

(assert (=> b!4427501 (= e!2756809 (contains!12121 (t!356670 e!2756418) key!3717))))

(assert (= (and d!1342386 res!1830779) b!4427500))

(assert (= (and b!4427500 (not res!1830780)) b!4427501))

(declare-fun m!5109705 () Bool)

(assert (=> d!1342386 m!5109705))

(declare-fun m!5109707 () Bool)

(assert (=> d!1342386 m!5109707))

(declare-fun m!5109709 () Bool)

(assert (=> b!4427501 m!5109709))

(assert (=> bm!308021 d!1342386))

(assert (=> b!4426853 d!1342156))

(assert (=> b!4426853 d!1342158))

(declare-fun d!1342388 () Bool)

(assert (=> d!1342388 (eq!417 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (+!1103 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969) (tuple2!49415 key!3717 newValue!93)))))

(assert (=> d!1342388 true))

(declare-fun _$15!652 () Unit!82123)

(assert (=> d!1342388 (= (choose!27965 lt!1625969 key!3717 newValue!93 (_2!28002 (h!55295 (toList!3505 lm!1616)))) _$15!652)))

(declare-fun bs!758313 () Bool)

(assert (= bs!758313 d!1342388))

(assert (=> bs!758313 m!5108111))

(assert (=> bs!758313 m!5108107))

(assert (=> bs!758313 m!5108113))

(assert (=> bs!758313 m!5108115))

(assert (=> bs!758313 m!5108051))

(assert (=> bs!758313 m!5108107))

(assert (=> bs!758313 m!5108115))

(assert (=> bs!758313 m!5108111))

(assert (=> bs!758313 m!5108051))

(assert (=> d!1341934 d!1342388))

(declare-fun d!1342394 () Bool)

(declare-fun e!2756816 () Bool)

(assert (=> d!1342394 e!2756816))

(declare-fun res!1830786 () Bool)

(assert (=> d!1342394 (=> (not res!1830786) (not e!2756816))))

(declare-fun lt!1626738 () ListMap!2749)

(assert (=> d!1342394 (= res!1830786 (contains!12114 lt!1626738 (_1!28001 (tuple2!49415 key!3717 newValue!93))))))

(declare-fun lt!1626740 () List!49729)

(assert (=> d!1342394 (= lt!1626738 (ListMap!2750 lt!1626740))))

(declare-fun lt!1626739 () Unit!82123)

(declare-fun lt!1626737 () Unit!82123)

(assert (=> d!1342394 (= lt!1626739 lt!1626737)))

(assert (=> d!1342394 (= (getValueByKey!719 lt!1626740 (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342394 (= lt!1626737 (lemmaContainsTupThenGetReturnValue!454 lt!1626740 (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342394 (= lt!1626740 (insertNoDuplicatedKeys!199 (toList!3506 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969)) (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342394 (= (+!1103 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969) (tuple2!49415 key!3717 newValue!93)) lt!1626738)))

(declare-fun b!4427515 () Bool)

(declare-fun res!1830787 () Bool)

(assert (=> b!4427515 (=> (not res!1830787) (not e!2756816))))

(assert (=> b!4427515 (= res!1830787 (= (getValueByKey!719 (toList!3506 lt!1626738) (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93)))))))

(declare-fun b!4427516 () Bool)

(assert (=> b!4427516 (= e!2756816 (contains!12118 (toList!3506 lt!1626738) (tuple2!49415 key!3717 newValue!93)))))

(assert (= (and d!1342394 res!1830786) b!4427515))

(assert (= (and b!4427515 res!1830787) b!4427516))

(declare-fun m!5109741 () Bool)

(assert (=> d!1342394 m!5109741))

(declare-fun m!5109743 () Bool)

(assert (=> d!1342394 m!5109743))

(declare-fun m!5109745 () Bool)

(assert (=> d!1342394 m!5109745))

(declare-fun m!5109747 () Bool)

(assert (=> d!1342394 m!5109747))

(declare-fun m!5109749 () Bool)

(assert (=> b!4427515 m!5109749))

(declare-fun m!5109751 () Bool)

(assert (=> b!4427516 m!5109751))

(assert (=> d!1341934 d!1342394))

(declare-fun d!1342396 () Bool)

(declare-fun e!2756817 () Bool)

(assert (=> d!1342396 e!2756817))

(declare-fun res!1830788 () Bool)

(assert (=> d!1342396 (=> (not res!1830788) (not e!2756817))))

(declare-fun lt!1626742 () ListMap!2749)

(assert (=> d!1342396 (= res!1830788 (contains!12114 lt!1626742 (_1!28001 (tuple2!49415 key!3717 newValue!93))))))

(declare-fun lt!1626744 () List!49729)

(assert (=> d!1342396 (= lt!1626742 (ListMap!2750 lt!1626744))))

(declare-fun lt!1626743 () Unit!82123)

(declare-fun lt!1626741 () Unit!82123)

(assert (=> d!1342396 (= lt!1626743 lt!1626741)))

(assert (=> d!1342396 (= (getValueByKey!719 lt!1626744 (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342396 (= lt!1626741 (lemmaContainsTupThenGetReturnValue!454 lt!1626744 (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342396 (= lt!1626744 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625969) (_1!28001 (tuple2!49415 key!3717 newValue!93)) (_2!28001 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> d!1342396 (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626742)))

(declare-fun b!4427517 () Bool)

(declare-fun res!1830789 () Bool)

(assert (=> b!4427517 (=> (not res!1830789) (not e!2756817))))

(assert (=> b!4427517 (= res!1830789 (= (getValueByKey!719 (toList!3506 lt!1626742) (_1!28001 (tuple2!49415 key!3717 newValue!93))) (Some!10732 (_2!28001 (tuple2!49415 key!3717 newValue!93)))))))

(declare-fun b!4427518 () Bool)

(assert (=> b!4427518 (= e!2756817 (contains!12118 (toList!3506 lt!1626742) (tuple2!49415 key!3717 newValue!93)))))

(assert (= (and d!1342396 res!1830788) b!4427517))

(assert (= (and b!4427517 res!1830789) b!4427518))

(declare-fun m!5109753 () Bool)

(assert (=> d!1342396 m!5109753))

(declare-fun m!5109755 () Bool)

(assert (=> d!1342396 m!5109755))

(declare-fun m!5109757 () Bool)

(assert (=> d!1342396 m!5109757))

(declare-fun m!5109759 () Bool)

(assert (=> d!1342396 m!5109759))

(declare-fun m!5109761 () Bool)

(assert (=> b!4427517 m!5109761))

(declare-fun m!5109763 () Bool)

(assert (=> b!4427518 m!5109763))

(assert (=> d!1341934 d!1342396))

(assert (=> d!1341934 d!1342078))

(declare-fun bs!758315 () Bool)

(declare-fun b!4427522 () Bool)

(assert (= bs!758315 (and b!4427522 b!4426790)))

(declare-fun lambda!154439 () Int)

(assert (=> bs!758315 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626212) (= lambda!154439 lambda!154320))))

(declare-fun bs!758316 () Bool)

(assert (= bs!758316 (and b!4427522 b!4426998)))

(assert (=> bs!758316 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626370) (= lambda!154439 lambda!154361))))

(declare-fun bs!758317 () Bool)

(assert (= bs!758317 (and b!4427522 b!4426997)))

(assert (=> bs!758317 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154439 lambda!154359))))

(assert (=> bs!758315 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625969) (= lambda!154439 lambda!154319))))

(declare-fun bs!758318 () Bool)

(assert (= bs!758318 (and b!4427522 b!4426752)))

(assert (=> bs!758318 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626164) (= lambda!154439 lambda!154313))))

(declare-fun bs!758319 () Bool)

(assert (= bs!758319 (and b!4427522 b!4427397)))

(assert (=> bs!758319 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626645) (= lambda!154439 lambda!154421))))

(declare-fun bs!758320 () Bool)

(assert (= bs!758320 (and b!4427522 d!1342124)))

(assert (=> bs!758320 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626371) (= lambda!154439 lambda!154362))))

(assert (=> bs!758316 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154439 lambda!154360))))

(declare-fun bs!758322 () Bool)

(assert (= bs!758322 (and b!4427522 d!1342374)))

(assert (=> bs!758322 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625979) (= lambda!154439 lambda!154430))))

(declare-fun bs!758323 () Bool)

(assert (= bs!758323 (and b!4427522 b!4426751)))

(assert (=> bs!758323 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625979) (= lambda!154439 lambda!154311))))

(declare-fun bs!758324 () Bool)

(assert (= bs!758324 (and b!4427522 d!1342318)))

(assert (=> bs!758324 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626646) (= lambda!154439 lambda!154422))))

(declare-fun bs!758325 () Bool)

(assert (= bs!758325 (and b!4427522 d!1341994)))

(assert (=> bs!758325 (not (= lambda!154439 lambda!154317))))

(declare-fun bs!758326 () Bool)

(assert (= bs!758326 (and b!4427522 b!4427396)))

(assert (=> bs!758326 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154439 lambda!154418))))

(declare-fun bs!758327 () Bool)

(assert (= bs!758327 (and b!4427522 d!1341960)))

(assert (=> bs!758327 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626165) (= lambda!154439 lambda!154314))))

(declare-fun bs!758328 () Bool)

(assert (= bs!758328 (and b!4427522 b!4427309)))

(assert (=> bs!758328 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626533) (= lambda!154439 lambda!154402))))

(assert (=> bs!758319 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154439 lambda!154420))))

(declare-fun bs!758329 () Bool)

(assert (= bs!758329 (and b!4427522 d!1341998)))

(assert (=> bs!758329 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626213) (= lambda!154439 lambda!154321))))

(declare-fun bs!758330 () Bool)

(assert (= bs!758330 (and b!4427522 d!1342304)))

(assert (=> bs!758330 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626212) (= lambda!154439 lambda!154416))))

(declare-fun bs!758331 () Bool)

(assert (= bs!758331 (and b!4427522 b!4426789)))

(assert (=> bs!758331 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625969) (= lambda!154439 lambda!154318))))

(declare-fun bs!758332 () Bool)

(assert (= bs!758332 (and b!4427522 b!4427308)))

(assert (=> bs!758332 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154439 lambda!154397))))

(assert (=> bs!758328 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154439 lambda!154400))))

(assert (=> bs!758318 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625979) (= lambda!154439 lambda!154312))))

(declare-fun bs!758333 () Bool)

(assert (= bs!758333 (and b!4427522 d!1342254)))

(assert (=> bs!758333 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626534) (= lambda!154439 lambda!154403))))

(assert (=> b!4427522 true))

(declare-fun bs!758334 () Bool)

(declare-fun b!4427523 () Bool)

(assert (= bs!758334 (and b!4427523 b!4426790)))

(declare-fun lambda!154440 () Int)

(assert (=> bs!758334 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626212) (= lambda!154440 lambda!154320))))

(declare-fun bs!758335 () Bool)

(assert (= bs!758335 (and b!4427523 b!4427522)))

(assert (=> bs!758335 (= lambda!154440 lambda!154439)))

(declare-fun bs!758336 () Bool)

(assert (= bs!758336 (and b!4427523 b!4426998)))

(assert (=> bs!758336 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626370) (= lambda!154440 lambda!154361))))

(declare-fun bs!758337 () Bool)

(assert (= bs!758337 (and b!4427523 b!4426997)))

(assert (=> bs!758337 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154440 lambda!154359))))

(assert (=> bs!758334 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625969) (= lambda!154440 lambda!154319))))

(declare-fun bs!758338 () Bool)

(assert (= bs!758338 (and b!4427523 b!4426752)))

(assert (=> bs!758338 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626164) (= lambda!154440 lambda!154313))))

(declare-fun bs!758339 () Bool)

(assert (= bs!758339 (and b!4427523 b!4427397)))

(assert (=> bs!758339 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626645) (= lambda!154440 lambda!154421))))

(declare-fun bs!758340 () Bool)

(assert (= bs!758340 (and b!4427523 d!1342124)))

(assert (=> bs!758340 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626371) (= lambda!154440 lambda!154362))))

(assert (=> bs!758336 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154440 lambda!154360))))

(declare-fun bs!758341 () Bool)

(assert (= bs!758341 (and b!4427523 d!1342374)))

(assert (=> bs!758341 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625979) (= lambda!154440 lambda!154430))))

(declare-fun bs!758342 () Bool)

(assert (= bs!758342 (and b!4427523 b!4426751)))

(assert (=> bs!758342 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625979) (= lambda!154440 lambda!154311))))

(declare-fun bs!758343 () Bool)

(assert (= bs!758343 (and b!4427523 d!1342318)))

(assert (=> bs!758343 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626646) (= lambda!154440 lambda!154422))))

(declare-fun bs!758344 () Bool)

(assert (= bs!758344 (and b!4427523 d!1341994)))

(assert (=> bs!758344 (not (= lambda!154440 lambda!154317))))

(declare-fun bs!758345 () Bool)

(assert (= bs!758345 (and b!4427523 b!4427396)))

(assert (=> bs!758345 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154440 lambda!154418))))

(declare-fun bs!758346 () Bool)

(assert (= bs!758346 (and b!4427523 d!1341960)))

(assert (=> bs!758346 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626165) (= lambda!154440 lambda!154314))))

(declare-fun bs!758347 () Bool)

(assert (= bs!758347 (and b!4427523 b!4427309)))

(assert (=> bs!758347 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626533) (= lambda!154440 lambda!154402))))

(assert (=> bs!758339 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154440 lambda!154420))))

(declare-fun bs!758348 () Bool)

(assert (= bs!758348 (and b!4427523 d!1341998)))

(assert (=> bs!758348 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626213) (= lambda!154440 lambda!154321))))

(declare-fun bs!758349 () Bool)

(assert (= bs!758349 (and b!4427523 d!1342304)))

(assert (=> bs!758349 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626212) (= lambda!154440 lambda!154416))))

(declare-fun bs!758350 () Bool)

(assert (= bs!758350 (and b!4427523 b!4426789)))

(assert (=> bs!758350 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625969) (= lambda!154440 lambda!154318))))

(declare-fun bs!758351 () Bool)

(assert (= bs!758351 (and b!4427523 b!4427308)))

(assert (=> bs!758351 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154440 lambda!154397))))

(assert (=> bs!758347 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154440 lambda!154400))))

(assert (=> bs!758338 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1625979) (= lambda!154440 lambda!154312))))

(declare-fun bs!758352 () Bool)

(assert (= bs!758352 (and b!4427523 d!1342254)))

(assert (=> bs!758352 (= (= (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626534) (= lambda!154440 lambda!154403))))

(assert (=> b!4427523 true))

(declare-fun lambda!154441 () Int)

(declare-fun lt!1626749 () ListMap!2749)

(assert (=> bs!758334 (= (= lt!1626749 lt!1626212) (= lambda!154441 lambda!154320))))

(assert (=> bs!758335 (= (= lt!1626749 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154441 lambda!154439))))

(assert (=> bs!758336 (= (= lt!1626749 lt!1626370) (= lambda!154441 lambda!154361))))

(assert (=> bs!758337 (= (= lt!1626749 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154441 lambda!154359))))

(assert (=> bs!758334 (= (= lt!1626749 lt!1625969) (= lambda!154441 lambda!154319))))

(assert (=> bs!758338 (= (= lt!1626749 lt!1626164) (= lambda!154441 lambda!154313))))

(assert (=> bs!758339 (= (= lt!1626749 lt!1626645) (= lambda!154441 lambda!154421))))

(assert (=> bs!758340 (= (= lt!1626749 lt!1626371) (= lambda!154441 lambda!154362))))

(assert (=> bs!758336 (= (= lt!1626749 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154441 lambda!154360))))

(assert (=> bs!758341 (= (= lt!1626749 lt!1625979) (= lambda!154441 lambda!154430))))

(assert (=> bs!758342 (= (= lt!1626749 lt!1625979) (= lambda!154441 lambda!154311))))

(assert (=> bs!758343 (= (= lt!1626749 lt!1626646) (= lambda!154441 lambda!154422))))

(assert (=> bs!758344 (not (= lambda!154441 lambda!154317))))

(assert (=> bs!758345 (= (= lt!1626749 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154441 lambda!154418))))

(assert (=> bs!758346 (= (= lt!1626749 lt!1626165) (= lambda!154441 lambda!154314))))

(assert (=> bs!758347 (= (= lt!1626749 lt!1626533) (= lambda!154441 lambda!154402))))

(assert (=> bs!758339 (= (= lt!1626749 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154441 lambda!154420))))

(assert (=> bs!758348 (= (= lt!1626749 lt!1626213) (= lambda!154441 lambda!154321))))

(assert (=> bs!758349 (= (= lt!1626749 lt!1626212) (= lambda!154441 lambda!154416))))

(assert (=> bs!758350 (= (= lt!1626749 lt!1625969) (= lambda!154441 lambda!154318))))

(assert (=> bs!758351 (= (= lt!1626749 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154441 lambda!154397))))

(assert (=> bs!758347 (= (= lt!1626749 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154441 lambda!154400))))

(assert (=> b!4427523 (= (= lt!1626749 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154441 lambda!154440))))

(assert (=> bs!758338 (= (= lt!1626749 lt!1625979) (= lambda!154441 lambda!154312))))

(assert (=> bs!758352 (= (= lt!1626749 lt!1626534) (= lambda!154441 lambda!154403))))

(assert (=> b!4427523 true))

(declare-fun bs!758353 () Bool)

(declare-fun d!1342400 () Bool)

(assert (= bs!758353 (and d!1342400 b!4426790)))

(declare-fun lt!1626750 () ListMap!2749)

(declare-fun lambda!154442 () Int)

(assert (=> bs!758353 (= (= lt!1626750 lt!1626212) (= lambda!154442 lambda!154320))))

(declare-fun bs!758354 () Bool)

(assert (= bs!758354 (and d!1342400 b!4427522)))

(assert (=> bs!758354 (= (= lt!1626750 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154442 lambda!154439))))

(declare-fun bs!758355 () Bool)

(assert (= bs!758355 (and d!1342400 b!4426998)))

(assert (=> bs!758355 (= (= lt!1626750 lt!1626370) (= lambda!154442 lambda!154361))))

(declare-fun bs!758356 () Bool)

(assert (= bs!758356 (and d!1342400 b!4426997)))

(assert (=> bs!758356 (= (= lt!1626750 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154442 lambda!154359))))

(assert (=> bs!758353 (= (= lt!1626750 lt!1625969) (= lambda!154442 lambda!154319))))

(declare-fun bs!758357 () Bool)

(assert (= bs!758357 (and d!1342400 b!4426752)))

(assert (=> bs!758357 (= (= lt!1626750 lt!1626164) (= lambda!154442 lambda!154313))))

(declare-fun bs!758358 () Bool)

(assert (= bs!758358 (and d!1342400 b!4427397)))

(assert (=> bs!758358 (= (= lt!1626750 lt!1626645) (= lambda!154442 lambda!154421))))

(declare-fun bs!758359 () Bool)

(assert (= bs!758359 (and d!1342400 d!1342124)))

(assert (=> bs!758359 (= (= lt!1626750 lt!1626371) (= lambda!154442 lambda!154362))))

(assert (=> bs!758355 (= (= lt!1626750 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154442 lambda!154360))))

(declare-fun bs!758360 () Bool)

(assert (= bs!758360 (and d!1342400 d!1342374)))

(assert (=> bs!758360 (= (= lt!1626750 lt!1625979) (= lambda!154442 lambda!154430))))

(declare-fun bs!758361 () Bool)

(assert (= bs!758361 (and d!1342400 b!4426751)))

(assert (=> bs!758361 (= (= lt!1626750 lt!1625979) (= lambda!154442 lambda!154311))))

(declare-fun bs!758362 () Bool)

(assert (= bs!758362 (and d!1342400 d!1342318)))

(assert (=> bs!758362 (= (= lt!1626750 lt!1626646) (= lambda!154442 lambda!154422))))

(declare-fun bs!758363 () Bool)

(assert (= bs!758363 (and d!1342400 d!1341994)))

(assert (=> bs!758363 (not (= lambda!154442 lambda!154317))))

(declare-fun bs!758364 () Bool)

(assert (= bs!758364 (and d!1342400 b!4427523)))

(assert (=> bs!758364 (= (= lt!1626750 lt!1626749) (= lambda!154442 lambda!154441))))

(declare-fun bs!758365 () Bool)

(assert (= bs!758365 (and d!1342400 b!4427396)))

(assert (=> bs!758365 (= (= lt!1626750 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154442 lambda!154418))))

(declare-fun bs!758366 () Bool)

(assert (= bs!758366 (and d!1342400 d!1341960)))

(assert (=> bs!758366 (= (= lt!1626750 lt!1626165) (= lambda!154442 lambda!154314))))

(declare-fun bs!758367 () Bool)

(assert (= bs!758367 (and d!1342400 b!4427309)))

(assert (=> bs!758367 (= (= lt!1626750 lt!1626533) (= lambda!154442 lambda!154402))))

(assert (=> bs!758358 (= (= lt!1626750 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154442 lambda!154420))))

(declare-fun bs!758368 () Bool)

(assert (= bs!758368 (and d!1342400 d!1341998)))

(assert (=> bs!758368 (= (= lt!1626750 lt!1626213) (= lambda!154442 lambda!154321))))

(declare-fun bs!758369 () Bool)

(assert (= bs!758369 (and d!1342400 d!1342304)))

(assert (=> bs!758369 (= (= lt!1626750 lt!1626212) (= lambda!154442 lambda!154416))))

(declare-fun bs!758370 () Bool)

(assert (= bs!758370 (and d!1342400 b!4426789)))

(assert (=> bs!758370 (= (= lt!1626750 lt!1625969) (= lambda!154442 lambda!154318))))

(declare-fun bs!758371 () Bool)

(assert (= bs!758371 (and d!1342400 b!4427308)))

(assert (=> bs!758371 (= (= lt!1626750 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154442 lambda!154397))))

(assert (=> bs!758367 (= (= lt!1626750 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154442 lambda!154400))))

(assert (=> bs!758364 (= (= lt!1626750 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154442 lambda!154440))))

(assert (=> bs!758357 (= (= lt!1626750 lt!1625979) (= lambda!154442 lambda!154312))))

(declare-fun bs!758372 () Bool)

(assert (= bs!758372 (and d!1342400 d!1342254)))

(assert (=> bs!758372 (= (= lt!1626750 lt!1626534) (= lambda!154442 lambda!154403))))

(assert (=> d!1342400 true))

(declare-fun e!2756820 () Bool)

(assert (=> d!1342400 e!2756820))

(declare-fun res!1830792 () Bool)

(assert (=> d!1342400 (=> (not res!1830792) (not e!2756820))))

(assert (=> d!1342400 (= res!1830792 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154442))))

(declare-fun e!2756819 () ListMap!2749)

(assert (=> d!1342400 (= lt!1626750 e!2756819)))

(declare-fun c!753675 () Bool)

(assert (=> d!1342400 (= c!753675 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342400 (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616))))))

(assert (=> d!1342400 (= (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) lt!1626750)))

(declare-fun e!2756821 () Bool)

(declare-fun b!4427521 () Bool)

(assert (=> b!4427521 (= e!2756821 (forall!9578 (toList!3506 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) lambda!154441))))

(assert (=> b!4427522 (= e!2756819 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)))))

(declare-fun lt!1626763 () Unit!82123)

(declare-fun call!308074 () Unit!82123)

(assert (=> b!4427522 (= lt!1626763 call!308074)))

(declare-fun call!308076 () Bool)

(assert (=> b!4427522 call!308076))

(declare-fun lt!1626756 () Unit!82123)

(assert (=> b!4427522 (= lt!1626756 lt!1626763)))

(declare-fun call!308075 () Bool)

(assert (=> b!4427522 call!308075))

(declare-fun lt!1626762 () Unit!82123)

(declare-fun Unit!82275 () Unit!82123)

(assert (=> b!4427522 (= lt!1626762 Unit!82275)))

(declare-fun bm!308069 () Bool)

(assert (=> bm!308069 (= call!308076 (forall!9578 (toList!3506 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (ite c!753675 lambda!154439 lambda!154440)))))

(declare-fun bm!308070 () Bool)

(assert (=> bm!308070 (= call!308074 (lemmaContainsAllItsOwnKeys!177 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))))))

(assert (=> b!4427523 (= e!2756819 lt!1626749)))

(declare-fun lt!1626769 () ListMap!2749)

(assert (=> b!4427523 (= lt!1626769 (+!1103 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427523 (= lt!1626749 (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) (+!1103 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626765 () Unit!82123)

(assert (=> b!4427523 (= lt!1626765 call!308074)))

(assert (=> b!4427523 call!308076))

(declare-fun lt!1626767 () Unit!82123)

(assert (=> b!4427523 (= lt!1626767 lt!1626765)))

(assert (=> b!4427523 (forall!9578 (toList!3506 lt!1626769) lambda!154441)))

(declare-fun lt!1626754 () Unit!82123)

(declare-fun Unit!82276 () Unit!82123)

(assert (=> b!4427523 (= lt!1626754 Unit!82276)))

(assert (=> b!4427523 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154441)))

(declare-fun lt!1626753 () Unit!82123)

(declare-fun Unit!82277 () Unit!82123)

(assert (=> b!4427523 (= lt!1626753 Unit!82277)))

(declare-fun lt!1626761 () Unit!82123)

(declare-fun Unit!82278 () Unit!82123)

(assert (=> b!4427523 (= lt!1626761 Unit!82278)))

(declare-fun lt!1626766 () Unit!82123)

(assert (=> b!4427523 (= lt!1626766 (forallContained!2097 (toList!3506 lt!1626769) lambda!154441 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427523 (contains!12114 lt!1626769 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626755 () Unit!82123)

(declare-fun Unit!82279 () Unit!82123)

(assert (=> b!4427523 (= lt!1626755 Unit!82279)))

(assert (=> b!4427523 (contains!12114 lt!1626749 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626759 () Unit!82123)

(declare-fun Unit!82280 () Unit!82123)

(assert (=> b!4427523 (= lt!1626759 Unit!82280)))

(assert (=> b!4427523 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154441)))

(declare-fun lt!1626757 () Unit!82123)

(declare-fun Unit!82281 () Unit!82123)

(assert (=> b!4427523 (= lt!1626757 Unit!82281)))

(assert (=> b!4427523 (forall!9578 (toList!3506 lt!1626769) lambda!154441)))

(declare-fun lt!1626760 () Unit!82123)

(declare-fun Unit!82282 () Unit!82123)

(assert (=> b!4427523 (= lt!1626760 Unit!82282)))

(declare-fun lt!1626758 () Unit!82123)

(declare-fun Unit!82283 () Unit!82123)

(assert (=> b!4427523 (= lt!1626758 Unit!82283)))

(declare-fun lt!1626768 () Unit!82123)

(assert (=> b!4427523 (= lt!1626768 (addForallContainsKeyThenBeforeAdding!177 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93)) lt!1626749 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427523 call!308075))

(declare-fun lt!1626751 () Unit!82123)

(assert (=> b!4427523 (= lt!1626751 lt!1626768)))

(assert (=> b!4427523 (forall!9578 (toList!3506 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) lambda!154441)))

(declare-fun lt!1626752 () Unit!82123)

(declare-fun Unit!82284 () Unit!82123)

(assert (=> b!4427523 (= lt!1626752 Unit!82284)))

(declare-fun res!1830793 () Bool)

(assert (=> b!4427523 (= res!1830793 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154441))))

(assert (=> b!4427523 (=> (not res!1830793) (not e!2756821))))

(assert (=> b!4427523 e!2756821))

(declare-fun lt!1626764 () Unit!82123)

(declare-fun Unit!82285 () Unit!82123)

(assert (=> b!4427523 (= lt!1626764 Unit!82285)))

(declare-fun b!4427524 () Bool)

(assert (=> b!4427524 (= e!2756820 (invariantList!809 (toList!3506 lt!1626750)))))

(declare-fun b!4427525 () Bool)

(declare-fun res!1830794 () Bool)

(assert (=> b!4427525 (=> (not res!1830794) (not e!2756820))))

(assert (=> b!4427525 (= res!1830794 (forall!9578 (toList!3506 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) lambda!154442))))

(declare-fun bm!308071 () Bool)

(assert (=> bm!308071 (= call!308075 (forall!9578 (toList!3506 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (ite c!753675 lambda!154439 lambda!154441)))))

(assert (= (and d!1342400 c!753675) b!4427522))

(assert (= (and d!1342400 (not c!753675)) b!4427523))

(assert (= (and b!4427523 res!1830793) b!4427521))

(assert (= (or b!4427522 b!4427523) bm!308070))

(assert (= (or b!4427522 b!4427523) bm!308069))

(assert (= (or b!4427522 b!4427523) bm!308071))

(assert (= (and d!1342400 res!1830792) b!4427525))

(assert (= (and b!4427525 res!1830794) b!4427524))

(assert (=> bm!308070 m!5108115))

(declare-fun m!5109809 () Bool)

(assert (=> bm!308070 m!5109809))

(declare-fun m!5109811 () Bool)

(assert (=> bm!308071 m!5109811))

(declare-fun m!5109813 () Bool)

(assert (=> bm!308069 m!5109813))

(declare-fun m!5109815 () Bool)

(assert (=> b!4427525 m!5109815))

(declare-fun m!5109817 () Bool)

(assert (=> b!4427521 m!5109817))

(declare-fun m!5109819 () Bool)

(assert (=> d!1342400 m!5109819))

(assert (=> d!1342400 m!5108299))

(declare-fun m!5109821 () Bool)

(assert (=> b!4427524 m!5109821))

(declare-fun m!5109823 () Bool)

(assert (=> b!4427523 m!5109823))

(declare-fun m!5109825 () Bool)

(assert (=> b!4427523 m!5109825))

(assert (=> b!4427523 m!5109823))

(declare-fun m!5109827 () Bool)

(assert (=> b!4427523 m!5109827))

(assert (=> b!4427523 m!5109817))

(declare-fun m!5109829 () Bool)

(assert (=> b!4427523 m!5109829))

(declare-fun m!5109831 () Bool)

(assert (=> b!4427523 m!5109831))

(assert (=> b!4427523 m!5108115))

(declare-fun m!5109833 () Bool)

(assert (=> b!4427523 m!5109833))

(assert (=> b!4427523 m!5109829))

(declare-fun m!5109835 () Bool)

(assert (=> b!4427523 m!5109835))

(declare-fun m!5109837 () Bool)

(assert (=> b!4427523 m!5109837))

(declare-fun m!5109839 () Bool)

(assert (=> b!4427523 m!5109839))

(assert (=> b!4427523 m!5108115))

(assert (=> b!4427523 m!5109835))

(assert (=> d!1341934 d!1342400))

(assert (=> d!1341934 d!1341998))

(declare-fun d!1342414 () Bool)

(assert (=> d!1342414 (= (eq!417 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (+!1103 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969) (tuple2!49415 key!3717 newValue!93))) (= (content!7962 (toList!3506 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))))) (content!7962 (toList!3506 (+!1103 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) lt!1625969) (tuple2!49415 key!3717 newValue!93))))))))

(declare-fun bs!758373 () Bool)

(assert (= bs!758373 d!1342414))

(declare-fun m!5109841 () Bool)

(assert (=> bs!758373 m!5109841))

(declare-fun m!5109843 () Bool)

(assert (=> bs!758373 m!5109843))

(assert (=> d!1341934 d!1342414))

(declare-fun d!1342416 () Bool)

(assert (=> d!1342416 (= (head!9232 (toList!3505 lm!1616)) (h!55295 (toList!3505 lm!1616)))))

(assert (=> d!1342068 d!1342416))

(declare-fun b!4427555 () Bool)

(declare-fun e!2756837 () Option!10733)

(assert (=> b!4427555 (= e!2756837 (getValueByKey!719 (t!356667 (toList!3506 lt!1626343)) (_1!28001 lt!1625974)))))

(declare-fun b!4427554 () Bool)

(declare-fun e!2756836 () Option!10733)

(assert (=> b!4427554 (= e!2756836 e!2756837)))

(declare-fun c!753686 () Bool)

(assert (=> b!4427554 (= c!753686 (and ((_ is Cons!49605) (toList!3506 lt!1626343)) (not (= (_1!28001 (h!55294 (toList!3506 lt!1626343))) (_1!28001 lt!1625974)))))))

(declare-fun d!1342418 () Bool)

(declare-fun c!753685 () Bool)

(assert (=> d!1342418 (= c!753685 (and ((_ is Cons!49605) (toList!3506 lt!1626343)) (= (_1!28001 (h!55294 (toList!3506 lt!1626343))) (_1!28001 lt!1625974))))))

(assert (=> d!1342418 (= (getValueByKey!719 (toList!3506 lt!1626343) (_1!28001 lt!1625974)) e!2756836)))

(declare-fun b!4427553 () Bool)

(assert (=> b!4427553 (= e!2756836 (Some!10732 (_2!28001 (h!55294 (toList!3506 lt!1626343)))))))

(declare-fun b!4427556 () Bool)

(assert (=> b!4427556 (= e!2756837 None!10732)))

(assert (= (and d!1342418 c!753685) b!4427553))

(assert (= (and d!1342418 (not c!753685)) b!4427554))

(assert (= (and b!4427554 c!753686) b!4427555))

(assert (= (and b!4427554 (not c!753686)) b!4427556))

(declare-fun m!5109845 () Bool)

(assert (=> b!4427555 m!5109845))

(assert (=> b!4426909 d!1342418))

(declare-fun d!1342420 () Bool)

(assert (=> d!1342420 (isDefined!8025 (getValueByKey!719 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(declare-fun lt!1626783 () Unit!82123)

(assert (=> d!1342420 (= lt!1626783 (choose!27975 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(assert (=> d!1342420 (invariantList!809 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))

(assert (=> d!1342420 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717) lt!1626783)))

(declare-fun bs!758374 () Bool)

(assert (= bs!758374 d!1342420))

(assert (=> bs!758374 m!5108653))

(assert (=> bs!758374 m!5108653))

(assert (=> bs!758374 m!5108655))

(declare-fun m!5109847 () Bool)

(assert (=> bs!758374 m!5109847))

(assert (=> bs!758374 m!5108741))

(assert (=> b!4426906 d!1342420))

(declare-fun d!1342422 () Bool)

(assert (=> d!1342422 (= (isDefined!8025 (getValueByKey!719 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717)) (not (isEmpty!28352 (getValueByKey!719 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))))

(declare-fun bs!758375 () Bool)

(assert (= bs!758375 d!1342422))

(assert (=> bs!758375 m!5108653))

(declare-fun m!5109849 () Bool)

(assert (=> bs!758375 m!5109849))

(assert (=> b!4426906 d!1342422))

(declare-fun b!4427559 () Bool)

(declare-fun e!2756839 () Option!10733)

(assert (=> b!4427559 (= e!2756839 (getValueByKey!719 (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) key!3717))))

(declare-fun b!4427558 () Bool)

(declare-fun e!2756838 () Option!10733)

(assert (=> b!4427558 (= e!2756838 e!2756839)))

(declare-fun c!753688 () Bool)

(assert (=> b!4427558 (= c!753688 (and ((_ is Cons!49605) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (not (= (_1!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) key!3717))))))

(declare-fun d!1342424 () Bool)

(declare-fun c!753687 () Bool)

(assert (=> d!1342424 (= c!753687 (and ((_ is Cons!49605) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= (_1!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) key!3717)))))

(assert (=> d!1342424 (= (getValueByKey!719 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717) e!2756838)))

(declare-fun b!4427557 () Bool)

(assert (=> b!4427557 (= e!2756838 (Some!10732 (_2!28001 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))))))

(declare-fun b!4427560 () Bool)

(assert (=> b!4427560 (= e!2756839 None!10732)))

(assert (= (and d!1342424 c!753687) b!4427557))

(assert (= (and d!1342424 (not c!753687)) b!4427558))

(assert (= (and b!4427558 c!753688) b!4427559))

(assert (= (and b!4427558 (not c!753688)) b!4427560))

(declare-fun m!5109851 () Bool)

(assert (=> b!4427559 m!5109851))

(assert (=> b!4426906 d!1342424))

(declare-fun d!1342426 () Bool)

(assert (=> d!1342426 (contains!12121 (getKeysList!256 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) key!3717)))

(declare-fun lt!1626784 () Unit!82123)

(assert (=> d!1342426 (= lt!1626784 (choose!27976 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717))))

(assert (=> d!1342426 (invariantList!809 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))))

(assert (=> d!1342426 (= (lemmaInListThenGetKeysListContains!253 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))) key!3717) lt!1626784)))

(declare-fun bs!758376 () Bool)

(assert (= bs!758376 d!1342426))

(assert (=> bs!758376 m!5108651))

(assert (=> bs!758376 m!5108651))

(declare-fun m!5109853 () Bool)

(assert (=> bs!758376 m!5109853))

(declare-fun m!5109855 () Bool)

(assert (=> bs!758376 m!5109855))

(assert (=> bs!758376 m!5108741))

(assert (=> b!4426906 d!1342426))

(declare-fun d!1342428 () Bool)

(declare-fun c!753691 () Bool)

(assert (=> d!1342428 (= c!753691 (and ((_ is Cons!49606) (toList!3505 lt!1626329)) (= (_1!28002 (h!55295 (toList!3505 lt!1626329))) (_1!28002 lt!1625978))))))

(declare-fun e!2756842 () Option!10734)

(assert (=> d!1342428 (= (getValueByKey!720 (toList!3505 lt!1626329) (_1!28002 lt!1625978)) e!2756842)))

(declare-fun b!4427567 () Bool)

(declare-fun e!2756843 () Option!10734)

(assert (=> b!4427567 (= e!2756843 (getValueByKey!720 (t!356668 (toList!3505 lt!1626329)) (_1!28002 lt!1625978)))))

(declare-fun b!4427565 () Bool)

(assert (=> b!4427565 (= e!2756842 (Some!10733 (_2!28002 (h!55295 (toList!3505 lt!1626329)))))))

(declare-fun b!4427568 () Bool)

(assert (=> b!4427568 (= e!2756843 None!10733)))

(declare-fun b!4427566 () Bool)

(assert (=> b!4427566 (= e!2756842 e!2756843)))

(declare-fun c!753692 () Bool)

(assert (=> b!4427566 (= c!753692 (and ((_ is Cons!49606) (toList!3505 lt!1626329)) (not (= (_1!28002 (h!55295 (toList!3505 lt!1626329))) (_1!28002 lt!1625978)))))))

(assert (= (and d!1342428 c!753691) b!4427565))

(assert (= (and d!1342428 (not c!753691)) b!4427566))

(assert (= (and b!4427566 c!753692) b!4427567))

(assert (= (and b!4427566 (not c!753692)) b!4427568))

(declare-fun m!5109857 () Bool)

(assert (=> b!4427567 m!5109857))

(assert (=> b!4426896 d!1342428))

(assert (=> b!4426902 d!1342148))

(assert (=> b!4426902 d!1342150))

(assert (=> b!4426847 d!1342158))

(declare-fun d!1342430 () Bool)

(declare-fun isEmpty!28355 (Option!10734) Bool)

(assert (=> d!1342430 (= (isDefined!8026 (getValueByKey!720 (toList!3505 lm!1616) hash!366)) (not (isEmpty!28355 (getValueByKey!720 (toList!3505 lm!1616) hash!366))))))

(declare-fun bs!758377 () Bool)

(assert (= bs!758377 d!1342430))

(assert (=> bs!758377 m!5108701))

(declare-fun m!5109859 () Bool)

(assert (=> bs!758377 m!5109859))

(assert (=> b!4426931 d!1342430))

(assert (=> b!4426931 d!1342368))

(declare-fun bs!758378 () Bool)

(declare-fun b!4427574 () Bool)

(assert (= bs!758378 (and b!4427574 d!1342400)))

(declare-fun lambda!154443 () Int)

(assert (=> bs!758378 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626750) (= lambda!154443 lambda!154442))))

(declare-fun bs!758379 () Bool)

(assert (= bs!758379 (and b!4427574 b!4426790)))

(assert (=> bs!758379 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626212) (= lambda!154443 lambda!154320))))

(declare-fun bs!758380 () Bool)

(assert (= bs!758380 (and b!4427574 b!4427522)))

(assert (=> bs!758380 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154443 lambda!154439))))

(declare-fun bs!758381 () Bool)

(assert (= bs!758381 (and b!4427574 b!4426998)))

(assert (=> bs!758381 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626370) (= lambda!154443 lambda!154361))))

(declare-fun bs!758382 () Bool)

(assert (= bs!758382 (and b!4427574 b!4426997)))

(assert (=> bs!758382 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154443 lambda!154359))))

(assert (=> bs!758379 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625969) (= lambda!154443 lambda!154319))))

(declare-fun bs!758383 () Bool)

(assert (= bs!758383 (and b!4427574 b!4426752)))

(assert (=> bs!758383 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626164) (= lambda!154443 lambda!154313))))

(declare-fun bs!758384 () Bool)

(assert (= bs!758384 (and b!4427574 b!4427397)))

(assert (=> bs!758384 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626645) (= lambda!154443 lambda!154421))))

(declare-fun bs!758385 () Bool)

(assert (= bs!758385 (and b!4427574 d!1342124)))

(assert (=> bs!758385 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626371) (= lambda!154443 lambda!154362))))

(assert (=> bs!758381 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154443 lambda!154360))))

(declare-fun bs!758386 () Bool)

(assert (= bs!758386 (and b!4427574 d!1342374)))

(assert (=> bs!758386 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625979) (= lambda!154443 lambda!154430))))

(declare-fun bs!758387 () Bool)

(assert (= bs!758387 (and b!4427574 b!4426751)))

(assert (=> bs!758387 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625979) (= lambda!154443 lambda!154311))))

(declare-fun bs!758388 () Bool)

(assert (= bs!758388 (and b!4427574 d!1342318)))

(assert (=> bs!758388 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626646) (= lambda!154443 lambda!154422))))

(declare-fun bs!758389 () Bool)

(assert (= bs!758389 (and b!4427574 d!1341994)))

(assert (=> bs!758389 (not (= lambda!154443 lambda!154317))))

(declare-fun bs!758390 () Bool)

(assert (= bs!758390 (and b!4427574 b!4427523)))

(assert (=> bs!758390 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626749) (= lambda!154443 lambda!154441))))

(declare-fun bs!758391 () Bool)

(assert (= bs!758391 (and b!4427574 b!4427396)))

(assert (=> bs!758391 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154443 lambda!154418))))

(declare-fun bs!758392 () Bool)

(assert (= bs!758392 (and b!4427574 d!1341960)))

(assert (=> bs!758392 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626165) (= lambda!154443 lambda!154314))))

(declare-fun bs!758393 () Bool)

(assert (= bs!758393 (and b!4427574 b!4427309)))

(assert (=> bs!758393 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626533) (= lambda!154443 lambda!154402))))

(assert (=> bs!758384 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154443 lambda!154420))))

(declare-fun bs!758394 () Bool)

(assert (= bs!758394 (and b!4427574 d!1341998)))

(assert (=> bs!758394 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626213) (= lambda!154443 lambda!154321))))

(declare-fun bs!758395 () Bool)

(assert (= bs!758395 (and b!4427574 d!1342304)))

(assert (=> bs!758395 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626212) (= lambda!154443 lambda!154416))))

(declare-fun bs!758396 () Bool)

(assert (= bs!758396 (and b!4427574 b!4426789)))

(assert (=> bs!758396 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625969) (= lambda!154443 lambda!154318))))

(declare-fun bs!758397 () Bool)

(assert (= bs!758397 (and b!4427574 b!4427308)))

(assert (=> bs!758397 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154443 lambda!154397))))

(assert (=> bs!758393 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154443 lambda!154400))))

(assert (=> bs!758390 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154443 lambda!154440))))

(assert (=> bs!758383 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625979) (= lambda!154443 lambda!154312))))

(declare-fun bs!758398 () Bool)

(assert (= bs!758398 (and b!4427574 d!1342254)))

(assert (=> bs!758398 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626534) (= lambda!154443 lambda!154403))))

(assert (=> b!4427574 true))

(declare-fun bs!758399 () Bool)

(declare-fun b!4427575 () Bool)

(assert (= bs!758399 (and b!4427575 d!1342400)))

(declare-fun lambda!154444 () Int)

(assert (=> bs!758399 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626750) (= lambda!154444 lambda!154442))))

(declare-fun bs!758400 () Bool)

(assert (= bs!758400 (and b!4427575 b!4426790)))

(assert (=> bs!758400 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626212) (= lambda!154444 lambda!154320))))

(declare-fun bs!758401 () Bool)

(assert (= bs!758401 (and b!4427575 b!4427522)))

(assert (=> bs!758401 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154444 lambda!154439))))

(declare-fun bs!758402 () Bool)

(assert (= bs!758402 (and b!4427575 b!4426998)))

(assert (=> bs!758402 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626370) (= lambda!154444 lambda!154361))))

(declare-fun bs!758403 () Bool)

(assert (= bs!758403 (and b!4427575 b!4426997)))

(assert (=> bs!758403 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154444 lambda!154359))))

(declare-fun bs!758404 () Bool)

(assert (= bs!758404 (and b!4427575 b!4426752)))

(assert (=> bs!758404 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626164) (= lambda!154444 lambda!154313))))

(declare-fun bs!758405 () Bool)

(assert (= bs!758405 (and b!4427575 b!4427397)))

(assert (=> bs!758405 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626645) (= lambda!154444 lambda!154421))))

(declare-fun bs!758406 () Bool)

(assert (= bs!758406 (and b!4427575 d!1342124)))

(assert (=> bs!758406 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626371) (= lambda!154444 lambda!154362))))

(assert (=> bs!758402 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154444 lambda!154360))))

(declare-fun bs!758407 () Bool)

(assert (= bs!758407 (and b!4427575 d!1342374)))

(assert (=> bs!758407 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625979) (= lambda!154444 lambda!154430))))

(declare-fun bs!758408 () Bool)

(assert (= bs!758408 (and b!4427575 b!4426751)))

(assert (=> bs!758408 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625979) (= lambda!154444 lambda!154311))))

(declare-fun bs!758409 () Bool)

(assert (= bs!758409 (and b!4427575 d!1342318)))

(assert (=> bs!758409 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626646) (= lambda!154444 lambda!154422))))

(declare-fun bs!758410 () Bool)

(assert (= bs!758410 (and b!4427575 d!1341994)))

(assert (=> bs!758410 (not (= lambda!154444 lambda!154317))))

(declare-fun bs!758411 () Bool)

(assert (= bs!758411 (and b!4427575 b!4427523)))

(assert (=> bs!758411 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626749) (= lambda!154444 lambda!154441))))

(declare-fun bs!758412 () Bool)

(assert (= bs!758412 (and b!4427575 b!4427396)))

(assert (=> bs!758412 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154444 lambda!154418))))

(declare-fun bs!758413 () Bool)

(assert (= bs!758413 (and b!4427575 d!1341960)))

(assert (=> bs!758413 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626165) (= lambda!154444 lambda!154314))))

(declare-fun bs!758414 () Bool)

(assert (= bs!758414 (and b!4427575 b!4427309)))

(assert (=> bs!758414 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626533) (= lambda!154444 lambda!154402))))

(assert (=> bs!758405 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154444 lambda!154420))))

(declare-fun bs!758415 () Bool)

(assert (= bs!758415 (and b!4427575 d!1341998)))

(assert (=> bs!758415 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626213) (= lambda!154444 lambda!154321))))

(declare-fun bs!758416 () Bool)

(assert (= bs!758416 (and b!4427575 d!1342304)))

(assert (=> bs!758416 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626212) (= lambda!154444 lambda!154416))))

(assert (=> bs!758400 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625969) (= lambda!154444 lambda!154319))))

(declare-fun bs!758417 () Bool)

(assert (= bs!758417 (and b!4427575 b!4427574)))

(assert (=> bs!758417 (= lambda!154444 lambda!154443)))

(declare-fun bs!758418 () Bool)

(assert (= bs!758418 (and b!4427575 b!4426789)))

(assert (=> bs!758418 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625969) (= lambda!154444 lambda!154318))))

(declare-fun bs!758419 () Bool)

(assert (= bs!758419 (and b!4427575 b!4427308)))

(assert (=> bs!758419 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154444 lambda!154397))))

(assert (=> bs!758414 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154444 lambda!154400))))

(assert (=> bs!758411 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154444 lambda!154440))))

(assert (=> bs!758404 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1625979) (= lambda!154444 lambda!154312))))

(declare-fun bs!758420 () Bool)

(assert (= bs!758420 (and b!4427575 d!1342254)))

(assert (=> bs!758420 (= (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626534) (= lambda!154444 lambda!154403))))

(assert (=> b!4427575 true))

(declare-fun lt!1626785 () ListMap!2749)

(declare-fun lambda!154445 () Int)

(assert (=> bs!758399 (= (= lt!1626785 lt!1626750) (= lambda!154445 lambda!154442))))

(assert (=> bs!758400 (= (= lt!1626785 lt!1626212) (= lambda!154445 lambda!154320))))

(assert (=> bs!758401 (= (= lt!1626785 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154445 lambda!154439))))

(assert (=> bs!758402 (= (= lt!1626785 lt!1626370) (= lambda!154445 lambda!154361))))

(assert (=> b!4427575 (= (= lt!1626785 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154445 lambda!154444))))

(assert (=> bs!758403 (= (= lt!1626785 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154445 lambda!154359))))

(assert (=> bs!758404 (= (= lt!1626785 lt!1626164) (= lambda!154445 lambda!154313))))

(assert (=> bs!758405 (= (= lt!1626785 lt!1626645) (= lambda!154445 lambda!154421))))

(assert (=> bs!758406 (= (= lt!1626785 lt!1626371) (= lambda!154445 lambda!154362))))

(assert (=> bs!758402 (= (= lt!1626785 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154445 lambda!154360))))

(assert (=> bs!758407 (= (= lt!1626785 lt!1625979) (= lambda!154445 lambda!154430))))

(assert (=> bs!758408 (= (= lt!1626785 lt!1625979) (= lambda!154445 lambda!154311))))

(assert (=> bs!758409 (= (= lt!1626785 lt!1626646) (= lambda!154445 lambda!154422))))

(assert (=> bs!758410 (not (= lambda!154445 lambda!154317))))

(assert (=> bs!758411 (= (= lt!1626785 lt!1626749) (= lambda!154445 lambda!154441))))

(assert (=> bs!758412 (= (= lt!1626785 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154445 lambda!154418))))

(assert (=> bs!758413 (= (= lt!1626785 lt!1626165) (= lambda!154445 lambda!154314))))

(assert (=> bs!758414 (= (= lt!1626785 lt!1626533) (= lambda!154445 lambda!154402))))

(assert (=> bs!758405 (= (= lt!1626785 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154445 lambda!154420))))

(assert (=> bs!758415 (= (= lt!1626785 lt!1626213) (= lambda!154445 lambda!154321))))

(assert (=> bs!758416 (= (= lt!1626785 lt!1626212) (= lambda!154445 lambda!154416))))

(assert (=> bs!758400 (= (= lt!1626785 lt!1625969) (= lambda!154445 lambda!154319))))

(assert (=> bs!758417 (= (= lt!1626785 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154445 lambda!154443))))

(assert (=> bs!758418 (= (= lt!1626785 lt!1625969) (= lambda!154445 lambda!154318))))

(assert (=> bs!758419 (= (= lt!1626785 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154445 lambda!154397))))

(assert (=> bs!758414 (= (= lt!1626785 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154445 lambda!154400))))

(assert (=> bs!758411 (= (= lt!1626785 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154445 lambda!154440))))

(assert (=> bs!758404 (= (= lt!1626785 lt!1625979) (= lambda!154445 lambda!154312))))

(assert (=> bs!758420 (= (= lt!1626785 lt!1626534) (= lambda!154445 lambda!154403))))

(assert (=> b!4427575 true))

(declare-fun bs!758445 () Bool)

(declare-fun d!1342432 () Bool)

(assert (= bs!758445 (and d!1342432 d!1342400)))

(declare-fun lambda!154448 () Int)

(declare-fun lt!1626786 () ListMap!2749)

(assert (=> bs!758445 (= (= lt!1626786 lt!1626750) (= lambda!154448 lambda!154442))))

(declare-fun bs!758447 () Bool)

(assert (= bs!758447 (and d!1342432 b!4426790)))

(assert (=> bs!758447 (= (= lt!1626786 lt!1626212) (= lambda!154448 lambda!154320))))

(declare-fun bs!758449 () Bool)

(assert (= bs!758449 (and d!1342432 b!4427522)))

(assert (=> bs!758449 (= (= lt!1626786 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154448 lambda!154439))))

(declare-fun bs!758451 () Bool)

(assert (= bs!758451 (and d!1342432 b!4426998)))

(assert (=> bs!758451 (= (= lt!1626786 lt!1626370) (= lambda!154448 lambda!154361))))

(declare-fun bs!758453 () Bool)

(assert (= bs!758453 (and d!1342432 b!4427575)))

(assert (=> bs!758453 (= (= lt!1626786 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154448 lambda!154444))))

(declare-fun bs!758454 () Bool)

(assert (= bs!758454 (and d!1342432 b!4426997)))

(assert (=> bs!758454 (= (= lt!1626786 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154448 lambda!154359))))

(declare-fun bs!758456 () Bool)

(assert (= bs!758456 (and d!1342432 b!4426752)))

(assert (=> bs!758456 (= (= lt!1626786 lt!1626164) (= lambda!154448 lambda!154313))))

(declare-fun bs!758458 () Bool)

(assert (= bs!758458 (and d!1342432 b!4427397)))

(assert (=> bs!758458 (= (= lt!1626786 lt!1626645) (= lambda!154448 lambda!154421))))

(assert (=> bs!758453 (= (= lt!1626786 lt!1626785) (= lambda!154448 lambda!154445))))

(declare-fun bs!758460 () Bool)

(assert (= bs!758460 (and d!1342432 d!1342124)))

(assert (=> bs!758460 (= (= lt!1626786 lt!1626371) (= lambda!154448 lambda!154362))))

(assert (=> bs!758451 (= (= lt!1626786 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154448 lambda!154360))))

(declare-fun bs!758463 () Bool)

(assert (= bs!758463 (and d!1342432 d!1342374)))

(assert (=> bs!758463 (= (= lt!1626786 lt!1625979) (= lambda!154448 lambda!154430))))

(declare-fun bs!758464 () Bool)

(assert (= bs!758464 (and d!1342432 b!4426751)))

(assert (=> bs!758464 (= (= lt!1626786 lt!1625979) (= lambda!154448 lambda!154311))))

(declare-fun bs!758465 () Bool)

(assert (= bs!758465 (and d!1342432 d!1342318)))

(assert (=> bs!758465 (= (= lt!1626786 lt!1626646) (= lambda!154448 lambda!154422))))

(declare-fun bs!758466 () Bool)

(assert (= bs!758466 (and d!1342432 d!1341994)))

(assert (=> bs!758466 (not (= lambda!154448 lambda!154317))))

(declare-fun bs!758467 () Bool)

(assert (= bs!758467 (and d!1342432 b!4427523)))

(assert (=> bs!758467 (= (= lt!1626786 lt!1626749) (= lambda!154448 lambda!154441))))

(declare-fun bs!758468 () Bool)

(assert (= bs!758468 (and d!1342432 b!4427396)))

(assert (=> bs!758468 (= (= lt!1626786 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154448 lambda!154418))))

(declare-fun bs!758469 () Bool)

(assert (= bs!758469 (and d!1342432 d!1341960)))

(assert (=> bs!758469 (= (= lt!1626786 lt!1626165) (= lambda!154448 lambda!154314))))

(declare-fun bs!758470 () Bool)

(assert (= bs!758470 (and d!1342432 b!4427309)))

(assert (=> bs!758470 (= (= lt!1626786 lt!1626533) (= lambda!154448 lambda!154402))))

(assert (=> bs!758458 (= (= lt!1626786 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154448 lambda!154420))))

(declare-fun bs!758471 () Bool)

(assert (= bs!758471 (and d!1342432 d!1341998)))

(assert (=> bs!758471 (= (= lt!1626786 lt!1626213) (= lambda!154448 lambda!154321))))

(declare-fun bs!758472 () Bool)

(assert (= bs!758472 (and d!1342432 d!1342304)))

(assert (=> bs!758472 (= (= lt!1626786 lt!1626212) (= lambda!154448 lambda!154416))))

(assert (=> bs!758447 (= (= lt!1626786 lt!1625969) (= lambda!154448 lambda!154319))))

(declare-fun bs!758473 () Bool)

(assert (= bs!758473 (and d!1342432 b!4427574)))

(assert (=> bs!758473 (= (= lt!1626786 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154448 lambda!154443))))

(declare-fun bs!758474 () Bool)

(assert (= bs!758474 (and d!1342432 b!4426789)))

(assert (=> bs!758474 (= (= lt!1626786 lt!1625969) (= lambda!154448 lambda!154318))))

(declare-fun bs!758475 () Bool)

(assert (= bs!758475 (and d!1342432 b!4427308)))

(assert (=> bs!758475 (= (= lt!1626786 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154448 lambda!154397))))

(assert (=> bs!758470 (= (= lt!1626786 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154448 lambda!154400))))

(assert (=> bs!758467 (= (= lt!1626786 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154448 lambda!154440))))

(assert (=> bs!758456 (= (= lt!1626786 lt!1625979) (= lambda!154448 lambda!154312))))

(declare-fun bs!758476 () Bool)

(assert (= bs!758476 (and d!1342432 d!1342254)))

(assert (=> bs!758476 (= (= lt!1626786 lt!1626534) (= lambda!154448 lambda!154403))))

(assert (=> d!1342432 true))

(declare-fun e!2756847 () Bool)

(assert (=> d!1342432 e!2756847))

(declare-fun res!1830808 () Bool)

(assert (=> d!1342432 (=> (not res!1830808) (not e!2756847))))

(assert (=> d!1342432 (= res!1830808 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154448))))

(declare-fun e!2756846 () ListMap!2749)

(assert (=> d!1342432 (= lt!1626786 e!2756846)))

(declare-fun c!753693 () Bool)

(assert (=> d!1342432 (= c!753693 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342432 (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616))))))

(assert (=> d!1342432 (= (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 lm!1616))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) lt!1626786)))

(declare-fun b!4427573 () Bool)

(declare-fun e!2756848 () Bool)

(assert (=> b!4427573 (= e!2756848 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) lambda!154445))))

(assert (=> b!4427574 (= e!2756846 (extractMap!820 (t!356668 (toList!3505 lm!1616))))))

(declare-fun lt!1626799 () Unit!82123)

(declare-fun call!308083 () Unit!82123)

(assert (=> b!4427574 (= lt!1626799 call!308083)))

(declare-fun call!308085 () Bool)

(assert (=> b!4427574 call!308085))

(declare-fun lt!1626792 () Unit!82123)

(assert (=> b!4427574 (= lt!1626792 lt!1626799)))

(declare-fun call!308084 () Bool)

(assert (=> b!4427574 call!308084))

(declare-fun lt!1626798 () Unit!82123)

(declare-fun Unit!82299 () Unit!82123)

(assert (=> b!4427574 (= lt!1626798 Unit!82299)))

(declare-fun bm!308078 () Bool)

(assert (=> bm!308078 (= call!308085 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (ite c!753693 lambda!154443 lambda!154444)))))

(declare-fun bm!308079 () Bool)

(assert (=> bm!308079 (= call!308083 (lemmaContainsAllItsOwnKeys!177 (extractMap!820 (t!356668 (toList!3505 lm!1616)))))))

(assert (=> b!4427575 (= e!2756846 lt!1626785)))

(declare-fun lt!1626805 () ListMap!2749)

(assert (=> b!4427575 (= lt!1626805 (+!1103 (extractMap!820 (t!356668 (toList!3505 lm!1616))) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427575 (= lt!1626785 (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) (+!1103 (extractMap!820 (t!356668 (toList!3505 lm!1616))) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626801 () Unit!82123)

(assert (=> b!4427575 (= lt!1626801 call!308083)))

(assert (=> b!4427575 call!308085))

(declare-fun lt!1626803 () Unit!82123)

(assert (=> b!4427575 (= lt!1626803 lt!1626801)))

(assert (=> b!4427575 (forall!9578 (toList!3506 lt!1626805) lambda!154445)))

(declare-fun lt!1626790 () Unit!82123)

(declare-fun Unit!82300 () Unit!82123)

(assert (=> b!4427575 (= lt!1626790 Unit!82300)))

(assert (=> b!4427575 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154445)))

(declare-fun lt!1626789 () Unit!82123)

(declare-fun Unit!82301 () Unit!82123)

(assert (=> b!4427575 (= lt!1626789 Unit!82301)))

(declare-fun lt!1626797 () Unit!82123)

(declare-fun Unit!82302 () Unit!82123)

(assert (=> b!4427575 (= lt!1626797 Unit!82302)))

(declare-fun lt!1626802 () Unit!82123)

(assert (=> b!4427575 (= lt!1626802 (forallContained!2097 (toList!3506 lt!1626805) lambda!154445 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427575 (contains!12114 lt!1626805 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626791 () Unit!82123)

(declare-fun Unit!82303 () Unit!82123)

(assert (=> b!4427575 (= lt!1626791 Unit!82303)))

(assert (=> b!4427575 (contains!12114 lt!1626785 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626795 () Unit!82123)

(declare-fun Unit!82304 () Unit!82123)

(assert (=> b!4427575 (= lt!1626795 Unit!82304)))

(assert (=> b!4427575 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154445)))

(declare-fun lt!1626793 () Unit!82123)

(declare-fun Unit!82305 () Unit!82123)

(assert (=> b!4427575 (= lt!1626793 Unit!82305)))

(assert (=> b!4427575 (forall!9578 (toList!3506 lt!1626805) lambda!154445)))

(declare-fun lt!1626796 () Unit!82123)

(declare-fun Unit!82306 () Unit!82123)

(assert (=> b!4427575 (= lt!1626796 Unit!82306)))

(declare-fun lt!1626794 () Unit!82123)

(declare-fun Unit!82307 () Unit!82123)

(assert (=> b!4427575 (= lt!1626794 Unit!82307)))

(declare-fun lt!1626804 () Unit!82123)

(assert (=> b!4427575 (= lt!1626804 (addForallContainsKeyThenBeforeAdding!177 (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626785 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427575 call!308084))

(declare-fun lt!1626787 () Unit!82123)

(assert (=> b!4427575 (= lt!1626787 lt!1626804)))

(assert (=> b!4427575 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) lambda!154445)))

(declare-fun lt!1626788 () Unit!82123)

(declare-fun Unit!82308 () Unit!82123)

(assert (=> b!4427575 (= lt!1626788 Unit!82308)))

(declare-fun res!1830809 () Bool)

(assert (=> b!4427575 (= res!1830809 (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154445))))

(assert (=> b!4427575 (=> (not res!1830809) (not e!2756848))))

(assert (=> b!4427575 e!2756848))

(declare-fun lt!1626800 () Unit!82123)

(declare-fun Unit!82309 () Unit!82123)

(assert (=> b!4427575 (= lt!1626800 Unit!82309)))

(declare-fun b!4427576 () Bool)

(assert (=> b!4427576 (= e!2756847 (invariantList!809 (toList!3506 lt!1626786)))))

(declare-fun b!4427577 () Bool)

(declare-fun res!1830810 () Bool)

(assert (=> b!4427577 (=> (not res!1830810) (not e!2756847))))

(assert (=> b!4427577 (= res!1830810 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) lambda!154448))))

(declare-fun bm!308080 () Bool)

(assert (=> bm!308080 (= call!308084 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (ite c!753693 lambda!154443 lambda!154445)))))

(assert (= (and d!1342432 c!753693) b!4427574))

(assert (= (and d!1342432 (not c!753693)) b!4427575))

(assert (= (and b!4427575 res!1830809) b!4427573))

(assert (= (or b!4427574 b!4427575) bm!308079))

(assert (= (or b!4427574 b!4427575) bm!308078))

(assert (= (or b!4427574 b!4427575) bm!308080))

(assert (= (and d!1342432 res!1830808) b!4427577))

(assert (= (and b!4427577 res!1830810) b!4427576))

(assert (=> bm!308079 m!5108583))

(declare-fun m!5109879 () Bool)

(assert (=> bm!308079 m!5109879))

(declare-fun m!5109881 () Bool)

(assert (=> bm!308080 m!5109881))

(declare-fun m!5109883 () Bool)

(assert (=> bm!308078 m!5109883))

(declare-fun m!5109885 () Bool)

(assert (=> b!4427577 m!5109885))

(declare-fun m!5109887 () Bool)

(assert (=> b!4427573 m!5109887))

(declare-fun m!5109889 () Bool)

(assert (=> d!1342432 m!5109889))

(assert (=> d!1342432 m!5108299))

(declare-fun m!5109891 () Bool)

(assert (=> b!4427576 m!5109891))

(declare-fun m!5109893 () Bool)

(assert (=> b!4427575 m!5109893))

(declare-fun m!5109895 () Bool)

(assert (=> b!4427575 m!5109895))

(assert (=> b!4427575 m!5109893))

(declare-fun m!5109897 () Bool)

(assert (=> b!4427575 m!5109897))

(assert (=> b!4427575 m!5109887))

(declare-fun m!5109899 () Bool)

(assert (=> b!4427575 m!5109899))

(declare-fun m!5109901 () Bool)

(assert (=> b!4427575 m!5109901))

(assert (=> b!4427575 m!5108583))

(declare-fun m!5109903 () Bool)

(assert (=> b!4427575 m!5109903))

(assert (=> b!4427575 m!5109899))

(declare-fun m!5109905 () Bool)

(assert (=> b!4427575 m!5109905))

(declare-fun m!5109907 () Bool)

(assert (=> b!4427575 m!5109907))

(declare-fun m!5109909 () Bool)

(assert (=> b!4427575 m!5109909))

(assert (=> b!4427575 m!5108583))

(assert (=> b!4427575 m!5109905))

(assert (=> b!4426880 d!1342432))

(declare-fun bs!758490 () Bool)

(declare-fun d!1342444 () Bool)

(assert (= bs!758490 (and d!1342444 d!1342044)))

(declare-fun lambda!154451 () Int)

(assert (=> bs!758490 (= lambda!154451 lambda!154344)))

(declare-fun bs!758492 () Bool)

(assert (= bs!758492 (and d!1342444 d!1342058)))

(assert (=> bs!758492 (= lambda!154451 lambda!154348)))

(declare-fun bs!758494 () Bool)

(assert (= bs!758494 (and d!1342444 d!1342022)))

(assert (=> bs!758494 (= lambda!154451 lambda!154343)))

(declare-fun bs!758495 () Bool)

(assert (= bs!758495 (and d!1342444 start!431936)))

(assert (=> bs!758495 (= lambda!154451 lambda!154244)))

(declare-fun bs!758497 () Bool)

(assert (= bs!758497 (and d!1342444 d!1342144)))

(assert (=> bs!758497 (= lambda!154451 lambda!154364)))

(declare-fun bs!758499 () Bool)

(assert (= bs!758499 (and d!1342444 d!1342062)))

(assert (=> bs!758499 (= lambda!154451 lambda!154349)))

(declare-fun bs!758500 () Bool)

(assert (= bs!758500 (and d!1342444 d!1342126)))

(assert (=> bs!758500 (= lambda!154451 lambda!154363)))

(declare-fun bs!758502 () Bool)

(assert (= bs!758502 (and d!1342444 d!1342088)))

(assert (=> bs!758502 (= lambda!154451 lambda!154358)))

(declare-fun bs!758503 () Bool)

(assert (= bs!758503 (and d!1342444 d!1342052)))

(assert (=> bs!758503 (= lambda!154451 lambda!154345)))

(declare-fun bs!758504 () Bool)

(assert (= bs!758504 (and d!1342444 d!1342076)))

(assert (=> bs!758504 (not (= lambda!154451 lambda!154352))))

(declare-fun bs!758505 () Bool)

(assert (= bs!758505 (and d!1342444 d!1342266)))

(assert (=> bs!758505 (= lambda!154451 lambda!154405)))

(declare-fun bs!758506 () Bool)

(assert (= bs!758506 (and d!1342444 d!1342084)))

(assert (=> bs!758506 (= lambda!154451 lambda!154355)))

(declare-fun lt!1626828 () ListMap!2749)

(assert (=> d!1342444 (invariantList!809 (toList!3506 lt!1626828))))

(declare-fun e!2756861 () ListMap!2749)

(assert (=> d!1342444 (= lt!1626828 e!2756861)))

(declare-fun c!753701 () Bool)

(assert (=> d!1342444 (= c!753701 ((_ is Cons!49606) (t!356668 (toList!3505 lm!1616))))))

(assert (=> d!1342444 (forall!9576 (t!356668 (toList!3505 lm!1616)) lambda!154451)))

(assert (=> d!1342444 (= (extractMap!820 (t!356668 (toList!3505 lm!1616))) lt!1626828)))

(declare-fun b!4427599 () Bool)

(assert (=> b!4427599 (= e!2756861 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (t!356668 (toList!3505 lm!1616)))) (extractMap!820 (t!356668 (t!356668 (toList!3505 lm!1616))))))))

(declare-fun b!4427600 () Bool)

(assert (=> b!4427600 (= e!2756861 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342444 c!753701) b!4427599))

(assert (= (and d!1342444 (not c!753701)) b!4427600))

(declare-fun m!5109911 () Bool)

(assert (=> d!1342444 m!5109911))

(declare-fun m!5109913 () Bool)

(assert (=> d!1342444 m!5109913))

(declare-fun m!5109915 () Bool)

(assert (=> b!4427599 m!5109915))

(assert (=> b!4427599 m!5109915))

(declare-fun m!5109917 () Bool)

(assert (=> b!4427599 m!5109917))

(assert (=> b!4426880 d!1342444))

(declare-fun d!1342446 () Bool)

(declare-fun lt!1626829 () Bool)

(assert (=> d!1342446 (= lt!1626829 (select (content!7962 (toList!3506 lt!1626024)) lt!1625974))))

(declare-fun e!2756863 () Bool)

(assert (=> d!1342446 (= lt!1626829 e!2756863)))

(declare-fun res!1830819 () Bool)

(assert (=> d!1342446 (=> (not res!1830819) (not e!2756863))))

(assert (=> d!1342446 (= res!1830819 ((_ is Cons!49605) (toList!3506 lt!1626024)))))

(assert (=> d!1342446 (= (contains!12118 (toList!3506 lt!1626024) lt!1625974) lt!1626829)))

(declare-fun b!4427601 () Bool)

(declare-fun e!2756862 () Bool)

(assert (=> b!4427601 (= e!2756863 e!2756862)))

(declare-fun res!1830818 () Bool)

(assert (=> b!4427601 (=> res!1830818 e!2756862)))

(assert (=> b!4427601 (= res!1830818 (= (h!55294 (toList!3506 lt!1626024)) lt!1625974))))

(declare-fun b!4427602 () Bool)

(assert (=> b!4427602 (= e!2756862 (contains!12118 (t!356667 (toList!3506 lt!1626024)) lt!1625974))))

(assert (= (and d!1342446 res!1830819) b!4427601))

(assert (= (and b!4427601 (not res!1830818)) b!4427602))

(declare-fun m!5109919 () Bool)

(assert (=> d!1342446 m!5109919))

(declare-fun m!5109921 () Bool)

(assert (=> d!1342446 m!5109921))

(declare-fun m!5109923 () Bool)

(assert (=> b!4427602 m!5109923))

(assert (=> b!4426700 d!1342446))

(declare-fun bs!758507 () Bool)

(declare-fun b!4427604 () Bool)

(assert (= bs!758507 (and b!4427604 d!1342400)))

(declare-fun lambda!154452 () Int)

(assert (=> bs!758507 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626750) (= lambda!154452 lambda!154442))))

(declare-fun bs!758508 () Bool)

(assert (= bs!758508 (and b!4427604 b!4426790)))

(assert (=> bs!758508 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626212) (= lambda!154452 lambda!154320))))

(declare-fun bs!758509 () Bool)

(assert (= bs!758509 (and b!4427604 b!4427522)))

(assert (=> bs!758509 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154452 lambda!154439))))

(declare-fun bs!758510 () Bool)

(assert (= bs!758510 (and b!4427604 b!4427575)))

(assert (=> bs!758510 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154452 lambda!154444))))

(declare-fun bs!758511 () Bool)

(assert (= bs!758511 (and b!4427604 b!4426997)))

(assert (=> bs!758511 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154452 lambda!154359))))

(declare-fun bs!758512 () Bool)

(assert (= bs!758512 (and b!4427604 b!4426752)))

(assert (=> bs!758512 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626164) (= lambda!154452 lambda!154313))))

(declare-fun bs!758513 () Bool)

(assert (= bs!758513 (and b!4427604 b!4427397)))

(assert (=> bs!758513 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626645) (= lambda!154452 lambda!154421))))

(assert (=> bs!758510 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626785) (= lambda!154452 lambda!154445))))

(declare-fun bs!758514 () Bool)

(assert (= bs!758514 (and b!4427604 d!1342124)))

(assert (=> bs!758514 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626371) (= lambda!154452 lambda!154362))))

(declare-fun bs!758515 () Bool)

(assert (= bs!758515 (and b!4427604 b!4426998)))

(assert (=> bs!758515 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154452 lambda!154360))))

(declare-fun bs!758516 () Bool)

(assert (= bs!758516 (and b!4427604 d!1342374)))

(assert (=> bs!758516 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625979) (= lambda!154452 lambda!154430))))

(declare-fun bs!758517 () Bool)

(assert (= bs!758517 (and b!4427604 b!4426751)))

(assert (=> bs!758517 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625979) (= lambda!154452 lambda!154311))))

(declare-fun bs!758519 () Bool)

(assert (= bs!758519 (and b!4427604 d!1342318)))

(assert (=> bs!758519 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626646) (= lambda!154452 lambda!154422))))

(declare-fun bs!758521 () Bool)

(assert (= bs!758521 (and b!4427604 d!1342432)))

(assert (=> bs!758521 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626786) (= lambda!154452 lambda!154448))))

(assert (=> bs!758515 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626370) (= lambda!154452 lambda!154361))))

(declare-fun bs!758523 () Bool)

(assert (= bs!758523 (and b!4427604 d!1341994)))

(assert (=> bs!758523 (not (= lambda!154452 lambda!154317))))

(declare-fun bs!758525 () Bool)

(assert (= bs!758525 (and b!4427604 b!4427523)))

(assert (=> bs!758525 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626749) (= lambda!154452 lambda!154441))))

(declare-fun bs!758527 () Bool)

(assert (= bs!758527 (and b!4427604 b!4427396)))

(assert (=> bs!758527 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154452 lambda!154418))))

(declare-fun bs!758529 () Bool)

(assert (= bs!758529 (and b!4427604 d!1341960)))

(assert (=> bs!758529 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626165) (= lambda!154452 lambda!154314))))

(declare-fun bs!758531 () Bool)

(assert (= bs!758531 (and b!4427604 b!4427309)))

(assert (=> bs!758531 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626533) (= lambda!154452 lambda!154402))))

(assert (=> bs!758513 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154452 lambda!154420))))

(declare-fun bs!758534 () Bool)

(assert (= bs!758534 (and b!4427604 d!1341998)))

(assert (=> bs!758534 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626213) (= lambda!154452 lambda!154321))))

(declare-fun bs!758536 () Bool)

(assert (= bs!758536 (and b!4427604 d!1342304)))

(assert (=> bs!758536 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626212) (= lambda!154452 lambda!154416))))

(assert (=> bs!758508 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625969) (= lambda!154452 lambda!154319))))

(declare-fun bs!758538 () Bool)

(assert (= bs!758538 (and b!4427604 b!4427574)))

(assert (=> bs!758538 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154452 lambda!154443))))

(declare-fun bs!758539 () Bool)

(assert (= bs!758539 (and b!4427604 b!4426789)))

(assert (=> bs!758539 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625969) (= lambda!154452 lambda!154318))))

(declare-fun bs!758540 () Bool)

(assert (= bs!758540 (and b!4427604 b!4427308)))

(assert (=> bs!758540 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154452 lambda!154397))))

(assert (=> bs!758531 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154452 lambda!154400))))

(assert (=> bs!758525 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154452 lambda!154440))))

(assert (=> bs!758512 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625979) (= lambda!154452 lambda!154312))))

(declare-fun bs!758541 () Bool)

(assert (= bs!758541 (and b!4427604 d!1342254)))

(assert (=> bs!758541 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626534) (= lambda!154452 lambda!154403))))

(assert (=> b!4427604 true))

(declare-fun bs!758542 () Bool)

(declare-fun b!4427605 () Bool)

(assert (= bs!758542 (and b!4427605 d!1342400)))

(declare-fun lambda!154454 () Int)

(assert (=> bs!758542 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626750) (= lambda!154454 lambda!154442))))

(declare-fun bs!758543 () Bool)

(assert (= bs!758543 (and b!4427605 b!4426790)))

(assert (=> bs!758543 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626212) (= lambda!154454 lambda!154320))))

(declare-fun bs!758544 () Bool)

(assert (= bs!758544 (and b!4427605 b!4427522)))

(assert (=> bs!758544 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154454 lambda!154439))))

(declare-fun bs!758545 () Bool)

(assert (= bs!758545 (and b!4427605 b!4427575)))

(assert (=> bs!758545 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154454 lambda!154444))))

(declare-fun bs!758546 () Bool)

(assert (= bs!758546 (and b!4427605 b!4426997)))

(assert (=> bs!758546 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154454 lambda!154359))))

(declare-fun bs!758547 () Bool)

(assert (= bs!758547 (and b!4427605 b!4426752)))

(assert (=> bs!758547 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626164) (= lambda!154454 lambda!154313))))

(declare-fun bs!758548 () Bool)

(assert (= bs!758548 (and b!4427605 b!4427397)))

(assert (=> bs!758548 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626645) (= lambda!154454 lambda!154421))))

(declare-fun bs!758549 () Bool)

(assert (= bs!758549 (and b!4427605 b!4427604)))

(assert (=> bs!758549 (= lambda!154454 lambda!154452)))

(assert (=> bs!758545 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626785) (= lambda!154454 lambda!154445))))

(declare-fun bs!758550 () Bool)

(assert (= bs!758550 (and b!4427605 d!1342124)))

(assert (=> bs!758550 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626371) (= lambda!154454 lambda!154362))))

(declare-fun bs!758551 () Bool)

(assert (= bs!758551 (and b!4427605 b!4426998)))

(assert (=> bs!758551 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154454 lambda!154360))))

(declare-fun bs!758552 () Bool)

(assert (= bs!758552 (and b!4427605 d!1342374)))

(assert (=> bs!758552 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625979) (= lambda!154454 lambda!154430))))

(declare-fun bs!758553 () Bool)

(assert (= bs!758553 (and b!4427605 b!4426751)))

(assert (=> bs!758553 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625979) (= lambda!154454 lambda!154311))))

(declare-fun bs!758554 () Bool)

(assert (= bs!758554 (and b!4427605 d!1342318)))

(assert (=> bs!758554 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626646) (= lambda!154454 lambda!154422))))

(declare-fun bs!758555 () Bool)

(assert (= bs!758555 (and b!4427605 d!1342432)))

(assert (=> bs!758555 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626786) (= lambda!154454 lambda!154448))))

(assert (=> bs!758551 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626370) (= lambda!154454 lambda!154361))))

(declare-fun bs!758556 () Bool)

(assert (= bs!758556 (and b!4427605 d!1341994)))

(assert (=> bs!758556 (not (= lambda!154454 lambda!154317))))

(declare-fun bs!758557 () Bool)

(assert (= bs!758557 (and b!4427605 b!4427523)))

(assert (=> bs!758557 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626749) (= lambda!154454 lambda!154441))))

(declare-fun bs!758558 () Bool)

(assert (= bs!758558 (and b!4427605 b!4427396)))

(assert (=> bs!758558 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154454 lambda!154418))))

(declare-fun bs!758559 () Bool)

(assert (= bs!758559 (and b!4427605 d!1341960)))

(assert (=> bs!758559 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626165) (= lambda!154454 lambda!154314))))

(declare-fun bs!758560 () Bool)

(assert (= bs!758560 (and b!4427605 b!4427309)))

(assert (=> bs!758560 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626533) (= lambda!154454 lambda!154402))))

(assert (=> bs!758548 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154454 lambda!154420))))

(declare-fun bs!758561 () Bool)

(assert (= bs!758561 (and b!4427605 d!1341998)))

(assert (=> bs!758561 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626213) (= lambda!154454 lambda!154321))))

(declare-fun bs!758562 () Bool)

(assert (= bs!758562 (and b!4427605 d!1342304)))

(assert (=> bs!758562 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626212) (= lambda!154454 lambda!154416))))

(assert (=> bs!758543 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625969) (= lambda!154454 lambda!154319))))

(declare-fun bs!758563 () Bool)

(assert (= bs!758563 (and b!4427605 b!4427574)))

(assert (=> bs!758563 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154454 lambda!154443))))

(declare-fun bs!758564 () Bool)

(assert (= bs!758564 (and b!4427605 b!4426789)))

(assert (=> bs!758564 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625969) (= lambda!154454 lambda!154318))))

(declare-fun bs!758565 () Bool)

(assert (= bs!758565 (and b!4427605 b!4427308)))

(assert (=> bs!758565 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154454 lambda!154397))))

(assert (=> bs!758560 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154454 lambda!154400))))

(assert (=> bs!758557 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154454 lambda!154440))))

(assert (=> bs!758547 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1625979) (= lambda!154454 lambda!154312))))

(declare-fun bs!758566 () Bool)

(assert (= bs!758566 (and b!4427605 d!1342254)))

(assert (=> bs!758566 (= (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626534) (= lambda!154454 lambda!154403))))

(assert (=> b!4427605 true))

(declare-fun lt!1626830 () ListMap!2749)

(declare-fun lambda!154455 () Int)

(assert (=> bs!758542 (= (= lt!1626830 lt!1626750) (= lambda!154455 lambda!154442))))

(assert (=> bs!758543 (= (= lt!1626830 lt!1626212) (= lambda!154455 lambda!154320))))

(assert (=> bs!758544 (= (= lt!1626830 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154455 lambda!154439))))

(assert (=> bs!758545 (= (= lt!1626830 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154455 lambda!154444))))

(assert (=> bs!758546 (= (= lt!1626830 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154455 lambda!154359))))

(assert (=> bs!758547 (= (= lt!1626830 lt!1626164) (= lambda!154455 lambda!154313))))

(assert (=> bs!758548 (= (= lt!1626830 lt!1626645) (= lambda!154455 lambda!154421))))

(assert (=> bs!758549 (= (= lt!1626830 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154455 lambda!154452))))

(assert (=> bs!758545 (= (= lt!1626830 lt!1626785) (= lambda!154455 lambda!154445))))

(assert (=> bs!758550 (= (= lt!1626830 lt!1626371) (= lambda!154455 lambda!154362))))

(assert (=> bs!758551 (= (= lt!1626830 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154455 lambda!154360))))

(assert (=> bs!758552 (= (= lt!1626830 lt!1625979) (= lambda!154455 lambda!154430))))

(assert (=> bs!758553 (= (= lt!1626830 lt!1625979) (= lambda!154455 lambda!154311))))

(assert (=> bs!758554 (= (= lt!1626830 lt!1626646) (= lambda!154455 lambda!154422))))

(assert (=> bs!758555 (= (= lt!1626830 lt!1626786) (= lambda!154455 lambda!154448))))

(assert (=> bs!758551 (= (= lt!1626830 lt!1626370) (= lambda!154455 lambda!154361))))

(assert (=> bs!758556 (not (= lambda!154455 lambda!154317))))

(assert (=> bs!758557 (= (= lt!1626830 lt!1626749) (= lambda!154455 lambda!154441))))

(assert (=> bs!758558 (= (= lt!1626830 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154455 lambda!154418))))

(assert (=> bs!758559 (= (= lt!1626830 lt!1626165) (= lambda!154455 lambda!154314))))

(assert (=> bs!758560 (= (= lt!1626830 lt!1626533) (= lambda!154455 lambda!154402))))

(assert (=> bs!758548 (= (= lt!1626830 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154455 lambda!154420))))

(assert (=> bs!758561 (= (= lt!1626830 lt!1626213) (= lambda!154455 lambda!154321))))

(assert (=> bs!758562 (= (= lt!1626830 lt!1626212) (= lambda!154455 lambda!154416))))

(assert (=> bs!758543 (= (= lt!1626830 lt!1625969) (= lambda!154455 lambda!154319))))

(assert (=> b!4427605 (= (= lt!1626830 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154455 lambda!154454))))

(assert (=> bs!758563 (= (= lt!1626830 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154455 lambda!154443))))

(assert (=> bs!758564 (= (= lt!1626830 lt!1625969) (= lambda!154455 lambda!154318))))

(assert (=> bs!758565 (= (= lt!1626830 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154455 lambda!154397))))

(assert (=> bs!758560 (= (= lt!1626830 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154455 lambda!154400))))

(assert (=> bs!758557 (= (= lt!1626830 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154455 lambda!154440))))

(assert (=> bs!758547 (= (= lt!1626830 lt!1625979) (= lambda!154455 lambda!154312))))

(assert (=> bs!758566 (= (= lt!1626830 lt!1626534) (= lambda!154455 lambda!154403))))

(assert (=> b!4427605 true))

(declare-fun bs!758569 () Bool)

(declare-fun d!1342448 () Bool)

(assert (= bs!758569 (and d!1342448 d!1342400)))

(declare-fun lambda!154456 () Int)

(declare-fun lt!1626831 () ListMap!2749)

(assert (=> bs!758569 (= (= lt!1626831 lt!1626750) (= lambda!154456 lambda!154442))))

(declare-fun bs!758570 () Bool)

(assert (= bs!758570 (and d!1342448 b!4426790)))

(assert (=> bs!758570 (= (= lt!1626831 lt!1626212) (= lambda!154456 lambda!154320))))

(declare-fun bs!758571 () Bool)

(assert (= bs!758571 (and d!1342448 b!4427522)))

(assert (=> bs!758571 (= (= lt!1626831 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154456 lambda!154439))))

(declare-fun bs!758572 () Bool)

(assert (= bs!758572 (and d!1342448 b!4427575)))

(assert (=> bs!758572 (= (= lt!1626831 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154456 lambda!154444))))

(declare-fun bs!758573 () Bool)

(assert (= bs!758573 (and d!1342448 b!4426752)))

(assert (=> bs!758573 (= (= lt!1626831 lt!1626164) (= lambda!154456 lambda!154313))))

(declare-fun bs!758574 () Bool)

(assert (= bs!758574 (and d!1342448 b!4427397)))

(assert (=> bs!758574 (= (= lt!1626831 lt!1626645) (= lambda!154456 lambda!154421))))

(declare-fun bs!758575 () Bool)

(assert (= bs!758575 (and d!1342448 b!4427604)))

(assert (=> bs!758575 (= (= lt!1626831 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154456 lambda!154452))))

(assert (=> bs!758572 (= (= lt!1626831 lt!1626785) (= lambda!154456 lambda!154445))))

(declare-fun bs!758576 () Bool)

(assert (= bs!758576 (and d!1342448 d!1342124)))

(assert (=> bs!758576 (= (= lt!1626831 lt!1626371) (= lambda!154456 lambda!154362))))

(declare-fun bs!758577 () Bool)

(assert (= bs!758577 (and d!1342448 b!4426998)))

(assert (=> bs!758577 (= (= lt!1626831 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154456 lambda!154360))))

(declare-fun bs!758578 () Bool)

(assert (= bs!758578 (and d!1342448 d!1342374)))

(assert (=> bs!758578 (= (= lt!1626831 lt!1625979) (= lambda!154456 lambda!154430))))

(declare-fun bs!758579 () Bool)

(assert (= bs!758579 (and d!1342448 b!4426751)))

(assert (=> bs!758579 (= (= lt!1626831 lt!1625979) (= lambda!154456 lambda!154311))))

(declare-fun bs!758580 () Bool)

(assert (= bs!758580 (and d!1342448 d!1342318)))

(assert (=> bs!758580 (= (= lt!1626831 lt!1626646) (= lambda!154456 lambda!154422))))

(declare-fun bs!758581 () Bool)

(assert (= bs!758581 (and d!1342448 d!1342432)))

(assert (=> bs!758581 (= (= lt!1626831 lt!1626786) (= lambda!154456 lambda!154448))))

(assert (=> bs!758577 (= (= lt!1626831 lt!1626370) (= lambda!154456 lambda!154361))))

(declare-fun bs!758582 () Bool)

(assert (= bs!758582 (and d!1342448 d!1341994)))

(assert (=> bs!758582 (not (= lambda!154456 lambda!154317))))

(declare-fun bs!758583 () Bool)

(assert (= bs!758583 (and d!1342448 b!4427523)))

(assert (=> bs!758583 (= (= lt!1626831 lt!1626749) (= lambda!154456 lambda!154441))))

(declare-fun bs!758584 () Bool)

(assert (= bs!758584 (and d!1342448 b!4427396)))

(assert (=> bs!758584 (= (= lt!1626831 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154456 lambda!154418))))

(declare-fun bs!758585 () Bool)

(assert (= bs!758585 (and d!1342448 d!1341960)))

(assert (=> bs!758585 (= (= lt!1626831 lt!1626165) (= lambda!154456 lambda!154314))))

(declare-fun bs!758586 () Bool)

(assert (= bs!758586 (and d!1342448 b!4427309)))

(assert (=> bs!758586 (= (= lt!1626831 lt!1626533) (= lambda!154456 lambda!154402))))

(assert (=> bs!758574 (= (= lt!1626831 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154456 lambda!154420))))

(declare-fun bs!758587 () Bool)

(assert (= bs!758587 (and d!1342448 d!1341998)))

(assert (=> bs!758587 (= (= lt!1626831 lt!1626213) (= lambda!154456 lambda!154321))))

(declare-fun bs!758588 () Bool)

(assert (= bs!758588 (and d!1342448 d!1342304)))

(assert (=> bs!758588 (= (= lt!1626831 lt!1626212) (= lambda!154456 lambda!154416))))

(declare-fun bs!758589 () Bool)

(assert (= bs!758589 (and d!1342448 b!4426997)))

(assert (=> bs!758589 (= (= lt!1626831 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154456 lambda!154359))))

(declare-fun bs!758590 () Bool)

(assert (= bs!758590 (and d!1342448 b!4427605)))

(assert (=> bs!758590 (= (= lt!1626831 lt!1626830) (= lambda!154456 lambda!154455))))

(assert (=> bs!758570 (= (= lt!1626831 lt!1625969) (= lambda!154456 lambda!154319))))

(assert (=> bs!758590 (= (= lt!1626831 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154456 lambda!154454))))

(declare-fun bs!758591 () Bool)

(assert (= bs!758591 (and d!1342448 b!4427574)))

(assert (=> bs!758591 (= (= lt!1626831 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154456 lambda!154443))))

(declare-fun bs!758592 () Bool)

(assert (= bs!758592 (and d!1342448 b!4426789)))

(assert (=> bs!758592 (= (= lt!1626831 lt!1625969) (= lambda!154456 lambda!154318))))

(declare-fun bs!758593 () Bool)

(assert (= bs!758593 (and d!1342448 b!4427308)))

(assert (=> bs!758593 (= (= lt!1626831 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154456 lambda!154397))))

(assert (=> bs!758586 (= (= lt!1626831 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154456 lambda!154400))))

(assert (=> bs!758583 (= (= lt!1626831 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154456 lambda!154440))))

(assert (=> bs!758573 (= (= lt!1626831 lt!1625979) (= lambda!154456 lambda!154312))))

(declare-fun bs!758594 () Bool)

(assert (= bs!758594 (and d!1342448 d!1342254)))

(assert (=> bs!758594 (= (= lt!1626831 lt!1626534) (= lambda!154456 lambda!154403))))

(assert (=> d!1342448 true))

(declare-fun e!2756865 () Bool)

(assert (=> d!1342448 e!2756865))

(declare-fun res!1830820 () Bool)

(assert (=> d!1342448 (=> (not res!1830820) (not e!2756865))))

(assert (=> d!1342448 (= res!1830820 (forall!9578 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lambda!154456))))

(declare-fun e!2756864 () ListMap!2749)

(assert (=> d!1342448 (= lt!1626831 e!2756864)))

(declare-fun c!753702 () Bool)

(assert (=> d!1342448 (= c!753702 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978))))))))

(assert (=> d!1342448 (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))

(assert (=> d!1342448 (= (addToMapMapFromBucket!396 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) lt!1626831)))

(declare-fun b!4427603 () Bool)

(declare-fun e!2756866 () Bool)

(assert (=> b!4427603 (= e!2756866 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) lambda!154455))))

(assert (=> b!4427604 (= e!2756864 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))

(declare-fun lt!1626844 () Unit!82123)

(declare-fun call!308092 () Unit!82123)

(assert (=> b!4427604 (= lt!1626844 call!308092)))

(declare-fun call!308094 () Bool)

(assert (=> b!4427604 call!308094))

(declare-fun lt!1626837 () Unit!82123)

(assert (=> b!4427604 (= lt!1626837 lt!1626844)))

(declare-fun call!308093 () Bool)

(assert (=> b!4427604 call!308093))

(declare-fun lt!1626843 () Unit!82123)

(declare-fun Unit!82314 () Unit!82123)

(assert (=> b!4427604 (= lt!1626843 Unit!82314)))

(declare-fun bm!308087 () Bool)

(assert (=> bm!308087 (= call!308094 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (ite c!753702 lambda!154452 lambda!154454)))))

(declare-fun bm!308088 () Bool)

(assert (=> bm!308088 (= call!308092 (lemmaContainsAllItsOwnKeys!177 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))))))

(assert (=> b!4427605 (= e!2756864 lt!1626830)))

(declare-fun lt!1626850 () ListMap!2749)

(assert (=> b!4427605 (= lt!1626850 (+!1103 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (h!55294 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))))

(assert (=> b!4427605 (= lt!1626830 (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (+!1103 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (h!55294 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978))))))))))

(declare-fun lt!1626846 () Unit!82123)

(assert (=> b!4427605 (= lt!1626846 call!308092)))

(assert (=> b!4427605 call!308094))

(declare-fun lt!1626848 () Unit!82123)

(assert (=> b!4427605 (= lt!1626848 lt!1626846)))

(assert (=> b!4427605 (forall!9578 (toList!3506 lt!1626850) lambda!154455)))

(declare-fun lt!1626835 () Unit!82123)

(declare-fun Unit!82315 () Unit!82123)

(assert (=> b!4427605 (= lt!1626835 Unit!82315)))

(assert (=> b!4427605 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) lambda!154455)))

(declare-fun lt!1626834 () Unit!82123)

(declare-fun Unit!82316 () Unit!82123)

(assert (=> b!4427605 (= lt!1626834 Unit!82316)))

(declare-fun lt!1626842 () Unit!82123)

(declare-fun Unit!82317 () Unit!82123)

(assert (=> b!4427605 (= lt!1626842 Unit!82317)))

(declare-fun lt!1626847 () Unit!82123)

(assert (=> b!4427605 (= lt!1626847 (forallContained!2097 (toList!3506 lt!1626850) lambda!154455 (h!55294 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))))

(assert (=> b!4427605 (contains!12114 lt!1626850 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))))

(declare-fun lt!1626836 () Unit!82123)

(declare-fun Unit!82318 () Unit!82123)

(assert (=> b!4427605 (= lt!1626836 Unit!82318)))

(assert (=> b!4427605 (contains!12114 lt!1626830 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))))

(declare-fun lt!1626840 () Unit!82123)

(declare-fun Unit!82319 () Unit!82123)

(assert (=> b!4427605 (= lt!1626840 Unit!82319)))

(assert (=> b!4427605 (forall!9578 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lambda!154455)))

(declare-fun lt!1626838 () Unit!82123)

(declare-fun Unit!82320 () Unit!82123)

(assert (=> b!4427605 (= lt!1626838 Unit!82320)))

(assert (=> b!4427605 (forall!9578 (toList!3506 lt!1626850) lambda!154455)))

(declare-fun lt!1626841 () Unit!82123)

(declare-fun Unit!82321 () Unit!82123)

(assert (=> b!4427605 (= lt!1626841 Unit!82321)))

(declare-fun lt!1626839 () Unit!82123)

(declare-fun Unit!82322 () Unit!82123)

(assert (=> b!4427605 (= lt!1626839 Unit!82322)))

(declare-fun lt!1626849 () Unit!82123)

(assert (=> b!4427605 (= lt!1626849 (addForallContainsKeyThenBeforeAdding!177 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626830 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978))))))))))

(assert (=> b!4427605 call!308093))

(declare-fun lt!1626832 () Unit!82123)

(assert (=> b!4427605 (= lt!1626832 lt!1626849)))

(assert (=> b!4427605 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) lambda!154455)))

(declare-fun lt!1626833 () Unit!82123)

(declare-fun Unit!82323 () Unit!82123)

(assert (=> b!4427605 (= lt!1626833 Unit!82323)))

(declare-fun res!1830821 () Bool)

(assert (=> b!4427605 (= res!1830821 (forall!9578 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lambda!154455))))

(assert (=> b!4427605 (=> (not res!1830821) (not e!2756866))))

(assert (=> b!4427605 e!2756866))

(declare-fun lt!1626845 () Unit!82123)

(declare-fun Unit!82324 () Unit!82123)

(assert (=> b!4427605 (= lt!1626845 Unit!82324)))

(declare-fun b!4427606 () Bool)

(assert (=> b!4427606 (= e!2756865 (invariantList!809 (toList!3506 lt!1626831)))))

(declare-fun b!4427607 () Bool)

(declare-fun res!1830822 () Bool)

(assert (=> b!4427607 (=> (not res!1830822) (not e!2756865))))

(assert (=> b!4427607 (= res!1830822 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) lambda!154456))))

(declare-fun bm!308089 () Bool)

(assert (=> bm!308089 (= call!308093 (forall!9578 (toList!3506 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (ite c!753702 lambda!154452 lambda!154455)))))

(assert (= (and d!1342448 c!753702) b!4427604))

(assert (= (and d!1342448 (not c!753702)) b!4427605))

(assert (= (and b!4427605 res!1830821) b!4427603))

(assert (= (or b!4427604 b!4427605) bm!308088))

(assert (= (or b!4427604 b!4427605) bm!308087))

(assert (= (or b!4427604 b!4427605) bm!308089))

(assert (= (and d!1342448 res!1830820) b!4427607))

(assert (= (and b!4427607 res!1830822) b!4427606))

(assert (=> bm!308088 m!5108603))

(declare-fun m!5110029 () Bool)

(assert (=> bm!308088 m!5110029))

(declare-fun m!5110035 () Bool)

(assert (=> bm!308089 m!5110035))

(declare-fun m!5110037 () Bool)

(assert (=> bm!308087 m!5110037))

(declare-fun m!5110039 () Bool)

(assert (=> b!4427607 m!5110039))

(declare-fun m!5110041 () Bool)

(assert (=> b!4427603 m!5110041))

(declare-fun m!5110043 () Bool)

(assert (=> d!1342448 m!5110043))

(declare-fun m!5110045 () Bool)

(assert (=> d!1342448 m!5110045))

(declare-fun m!5110047 () Bool)

(assert (=> b!4427606 m!5110047))

(declare-fun m!5110049 () Bool)

(assert (=> b!4427605 m!5110049))

(declare-fun m!5110051 () Bool)

(assert (=> b!4427605 m!5110051))

(assert (=> b!4427605 m!5110049))

(declare-fun m!5110053 () Bool)

(assert (=> b!4427605 m!5110053))

(assert (=> b!4427605 m!5110041))

(declare-fun m!5110055 () Bool)

(assert (=> b!4427605 m!5110055))

(declare-fun m!5110057 () Bool)

(assert (=> b!4427605 m!5110057))

(assert (=> b!4427605 m!5108603))

(declare-fun m!5110059 () Bool)

(assert (=> b!4427605 m!5110059))

(assert (=> b!4427605 m!5110055))

(declare-fun m!5110061 () Bool)

(assert (=> b!4427605 m!5110061))

(declare-fun m!5110063 () Bool)

(assert (=> b!4427605 m!5110063))

(declare-fun m!5110065 () Bool)

(assert (=> b!4427605 m!5110065))

(assert (=> b!4427605 m!5108603))

(assert (=> b!4427605 m!5110061))

(assert (=> b!4426894 d!1342448))

(declare-fun bs!758596 () Bool)

(declare-fun d!1342484 () Bool)

(assert (= bs!758596 (and d!1342484 d!1342044)))

(declare-fun lambda!154457 () Int)

(assert (=> bs!758596 (= lambda!154457 lambda!154344)))

(declare-fun bs!758597 () Bool)

(assert (= bs!758597 (and d!1342484 d!1342058)))

(assert (=> bs!758597 (= lambda!154457 lambda!154348)))

(declare-fun bs!758598 () Bool)

(assert (= bs!758598 (and d!1342484 d!1342022)))

(assert (=> bs!758598 (= lambda!154457 lambda!154343)))

(declare-fun bs!758599 () Bool)

(assert (= bs!758599 (and d!1342484 d!1342444)))

(assert (=> bs!758599 (= lambda!154457 lambda!154451)))

(declare-fun bs!758600 () Bool)

(assert (= bs!758600 (and d!1342484 start!431936)))

(assert (=> bs!758600 (= lambda!154457 lambda!154244)))

(declare-fun bs!758601 () Bool)

(assert (= bs!758601 (and d!1342484 d!1342144)))

(assert (=> bs!758601 (= lambda!154457 lambda!154364)))

(declare-fun bs!758602 () Bool)

(assert (= bs!758602 (and d!1342484 d!1342062)))

(assert (=> bs!758602 (= lambda!154457 lambda!154349)))

(declare-fun bs!758603 () Bool)

(assert (= bs!758603 (and d!1342484 d!1342126)))

(assert (=> bs!758603 (= lambda!154457 lambda!154363)))

(declare-fun bs!758604 () Bool)

(assert (= bs!758604 (and d!1342484 d!1342088)))

(assert (=> bs!758604 (= lambda!154457 lambda!154358)))

(declare-fun bs!758605 () Bool)

(assert (= bs!758605 (and d!1342484 d!1342052)))

(assert (=> bs!758605 (= lambda!154457 lambda!154345)))

(declare-fun bs!758606 () Bool)

(assert (= bs!758606 (and d!1342484 d!1342076)))

(assert (=> bs!758606 (not (= lambda!154457 lambda!154352))))

(declare-fun bs!758607 () Bool)

(assert (= bs!758607 (and d!1342484 d!1342266)))

(assert (=> bs!758607 (= lambda!154457 lambda!154405)))

(declare-fun bs!758608 () Bool)

(assert (= bs!758608 (and d!1342484 d!1342084)))

(assert (=> bs!758608 (= lambda!154457 lambda!154355)))

(declare-fun lt!1626864 () ListMap!2749)

(assert (=> d!1342484 (invariantList!809 (toList!3506 lt!1626864))))

(declare-fun e!2756893 () ListMap!2749)

(assert (=> d!1342484 (= lt!1626864 e!2756893)))

(declare-fun c!753710 () Bool)

(assert (=> d!1342484 (= c!753710 ((_ is Cons!49606) (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))

(assert (=> d!1342484 (forall!9576 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))) lambda!154457)))

(assert (=> d!1342484 (= (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) lt!1626864)))

(declare-fun b!4427643 () Bool)

(assert (=> b!4427643 (= e!2756893 (addToMapMapFromBucket!396 (_2!28002 (h!55295 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (extractMap!820 (t!356668 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))))

(declare-fun b!4427644 () Bool)

(assert (=> b!4427644 (= e!2756893 (ListMap!2750 Nil!49605))))

(assert (= (and d!1342484 c!753710) b!4427643))

(assert (= (and d!1342484 (not c!753710)) b!4427644))

(declare-fun m!5110067 () Bool)

(assert (=> d!1342484 m!5110067))

(declare-fun m!5110069 () Bool)

(assert (=> d!1342484 m!5110069))

(declare-fun m!5110071 () Bool)

(assert (=> b!4427643 m!5110071))

(assert (=> b!4427643 m!5110071))

(declare-fun m!5110073 () Bool)

(assert (=> b!4427643 m!5110073))

(assert (=> b!4426894 d!1342484))

(assert (=> b!4426904 d!1342422))

(assert (=> b!4426904 d!1342424))

(declare-fun bs!758609 () Bool)

(declare-fun b!4427653 () Bool)

(assert (= bs!758609 (and b!4427653 b!4427041)))

(declare-fun lambda!154458 () Int)

(assert (=> bs!758609 (= (= (t!356667 (toList!3506 lt!1625981)) (toList!3506 lt!1625981)) (= lambda!154458 lambda!154371))))

(declare-fun bs!758610 () Bool)

(assert (= bs!758610 (and b!4427653 b!4427081)))

(assert (=> bs!758610 (= (= (t!356667 (toList!3506 lt!1625981)) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154458 lambda!154386))))

(declare-fun bs!758611 () Bool)

(assert (= bs!758611 (and b!4427653 b!4427032)))

(assert (=> bs!758611 (= (= (t!356667 (toList!3506 lt!1625981)) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154458 lambda!154369))))

(declare-fun bs!758612 () Bool)

(assert (= bs!758612 (and b!4427653 b!4427085)))

(assert (=> bs!758612 (= (= (t!356667 (toList!3506 lt!1625981)) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (= lambda!154458 lambda!154383))))

(declare-fun bs!758613 () Bool)

(assert (= bs!758613 (and b!4427653 b!4427079)))

(assert (=> bs!758613 (= (= (t!356667 (toList!3506 lt!1625981)) (Cons!49605 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))) (= lambda!154458 lambda!154384))))

(assert (=> b!4427653 true))

(declare-fun bs!758614 () Bool)

(declare-fun b!4427647 () Bool)

(assert (= bs!758614 (and b!4427647 b!4427041)))

(declare-fun lambda!154459 () Int)

(assert (=> bs!758614 (= (= (Cons!49605 (h!55294 (toList!3506 lt!1625981)) (t!356667 (toList!3506 lt!1625981))) (toList!3506 lt!1625981)) (= lambda!154459 lambda!154371))))

(declare-fun bs!758615 () Bool)

(assert (= bs!758615 (and b!4427647 b!4427081)))

(assert (=> bs!758615 (= (= (Cons!49605 (h!55294 (toList!3506 lt!1625981)) (t!356667 (toList!3506 lt!1625981))) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154459 lambda!154386))))

(declare-fun bs!758616 () Bool)

(assert (= bs!758616 (and b!4427647 b!4427032)))

(assert (=> bs!758616 (= (= (Cons!49605 (h!55294 (toList!3506 lt!1625981)) (t!356667 (toList!3506 lt!1625981))) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154459 lambda!154369))))

(declare-fun bs!758617 () Bool)

(assert (= bs!758617 (and b!4427647 b!4427653)))

(assert (=> bs!758617 (= (= (Cons!49605 (h!55294 (toList!3506 lt!1625981)) (t!356667 (toList!3506 lt!1625981))) (t!356667 (toList!3506 lt!1625981))) (= lambda!154459 lambda!154458))))

(declare-fun bs!758618 () Bool)

(assert (= bs!758618 (and b!4427647 b!4427085)))

(assert (=> bs!758618 (= (= (Cons!49605 (h!55294 (toList!3506 lt!1625981)) (t!356667 (toList!3506 lt!1625981))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (= lambda!154459 lambda!154383))))

(declare-fun bs!758619 () Bool)

(assert (= bs!758619 (and b!4427647 b!4427079)))

(assert (=> bs!758619 (= (= (Cons!49605 (h!55294 (toList!3506 lt!1625981)) (t!356667 (toList!3506 lt!1625981))) (Cons!49605 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))) (= lambda!154459 lambda!154384))))

(assert (=> b!4427647 true))

(declare-fun bs!758620 () Bool)

(declare-fun b!4427649 () Bool)

(assert (= bs!758620 (and b!4427649 b!4427041)))

(declare-fun lambda!154460 () Int)

(assert (=> bs!758620 (= lambda!154460 lambda!154371)))

(declare-fun bs!758621 () Bool)

(assert (= bs!758621 (and b!4427649 b!4427647)))

(assert (=> bs!758621 (= (= (toList!3506 lt!1625981) (Cons!49605 (h!55294 (toList!3506 lt!1625981)) (t!356667 (toList!3506 lt!1625981)))) (= lambda!154460 lambda!154459))))

(declare-fun bs!758622 () Bool)

(assert (= bs!758622 (and b!4427649 b!4427081)))

(assert (=> bs!758622 (= (= (toList!3506 lt!1625981) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154460 lambda!154386))))

(declare-fun bs!758623 () Bool)

(assert (= bs!758623 (and b!4427649 b!4427032)))

(assert (=> bs!758623 (= (= (toList!3506 lt!1625981) (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154460 lambda!154369))))

(declare-fun bs!758624 () Bool)

(assert (= bs!758624 (and b!4427649 b!4427653)))

(assert (=> bs!758624 (= (= (toList!3506 lt!1625981) (t!356667 (toList!3506 lt!1625981))) (= lambda!154460 lambda!154458))))

(declare-fun bs!758625 () Bool)

(assert (= bs!758625 (and b!4427649 b!4427085)))

(assert (=> bs!758625 (= (= (toList!3506 lt!1625981) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616)))))) (= lambda!154460 lambda!154383))))

(declare-fun bs!758626 () Bool)

(assert (= bs!758626 (and b!4427649 b!4427079)))

(assert (=> bs!758626 (= (= (toList!3506 lt!1625981) (Cons!49605 (h!55294 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))) (t!356667 (toList!3506 (extractMap!820 (tail!7291 (toList!3505 lm!1616))))))) (= lambda!154460 lambda!154384))))

(assert (=> b!4427649 true))

(declare-fun bs!758627 () Bool)

(declare-fun b!4427651 () Bool)

(assert (= bs!758627 (and b!4427651 b!4427033)))

(declare-fun lambda!154461 () Int)

(assert (=> bs!758627 (= lambda!154461 lambda!154370)))

(declare-fun bs!758628 () Bool)

(assert (= bs!758628 (and b!4427651 b!4427042)))

(assert (=> bs!758628 (= lambda!154461 lambda!154372)))

(declare-fun bs!758629 () Bool)

(assert (= bs!758629 (and b!4427651 b!4427083)))

(assert (=> bs!758629 (= lambda!154461 lambda!154387)))

(declare-fun b!4427645 () Bool)

(declare-fun e!2756896 () Unit!82123)

(declare-fun Unit!82327 () Unit!82123)

(assert (=> b!4427645 (= e!2756896 Unit!82327)))

(declare-fun b!4427646 () Bool)

(declare-fun e!2756897 () List!49732)

(assert (=> b!4427646 (= e!2756897 Nil!49608)))

(assert (=> b!4427647 (= e!2756897 (Cons!49608 (_1!28001 (h!55294 (toList!3506 lt!1625981))) (getKeysList!256 (t!356667 (toList!3506 lt!1625981)))))))

(declare-fun c!753713 () Bool)

(assert (=> b!4427647 (= c!753713 (containsKey!1133 (t!356667 (toList!3506 lt!1625981)) (_1!28001 (h!55294 (toList!3506 lt!1625981)))))))

(declare-fun lt!1626868 () Unit!82123)

(assert (=> b!4427647 (= lt!1626868 e!2756896)))

(declare-fun c!753711 () Bool)

(assert (=> b!4427647 (= c!753711 (contains!12121 (getKeysList!256 (t!356667 (toList!3506 lt!1625981))) (_1!28001 (h!55294 (toList!3506 lt!1625981)))))))

(declare-fun lt!1626869 () Unit!82123)

(declare-fun e!2756895 () Unit!82123)

(assert (=> b!4427647 (= lt!1626869 e!2756895)))

(declare-fun lt!1626867 () List!49732)

(assert (=> b!4427647 (= lt!1626867 (getKeysList!256 (t!356667 (toList!3506 lt!1625981))))))

(declare-fun lt!1626865 () Unit!82123)

(assert (=> b!4427647 (= lt!1626865 (lemmaForallContainsAddHeadPreserves!81 (t!356667 (toList!3506 lt!1625981)) lt!1626867 (h!55294 (toList!3506 lt!1625981))))))

(assert (=> b!4427647 (forall!9579 lt!1626867 lambda!154459)))

(declare-fun lt!1626870 () Unit!82123)

(assert (=> b!4427647 (= lt!1626870 lt!1626865)))

(declare-fun res!1830844 () Bool)

(declare-fun e!2756894 () Bool)

(assert (=> b!4427649 (=> (not res!1830844) (not e!2756894))))

(declare-fun lt!1626866 () List!49732)

(assert (=> b!4427649 (= res!1830844 (forall!9579 lt!1626866 lambda!154460))))

(declare-fun b!4427650 () Bool)

(declare-fun res!1830845 () Bool)

(assert (=> b!4427650 (=> (not res!1830845) (not e!2756894))))

(assert (=> b!4427650 (= res!1830845 (= (length!174 lt!1626866) (length!175 (toList!3506 lt!1625981))))))

(assert (=> b!4427651 (= e!2756894 (= (content!7963 lt!1626866) (content!7963 (map!10836 (toList!3506 lt!1625981) lambda!154461))))))

(declare-fun d!1342486 () Bool)

(assert (=> d!1342486 e!2756894))

(declare-fun res!1830846 () Bool)

(assert (=> d!1342486 (=> (not res!1830846) (not e!2756894))))

(assert (=> d!1342486 (= res!1830846 (noDuplicate!659 lt!1626866))))

(assert (=> d!1342486 (= lt!1626866 e!2756897)))

(declare-fun c!753712 () Bool)

(assert (=> d!1342486 (= c!753712 ((_ is Cons!49605) (toList!3506 lt!1625981)))))

(assert (=> d!1342486 (invariantList!809 (toList!3506 lt!1625981))))

(assert (=> d!1342486 (= (getKeysList!256 (toList!3506 lt!1625981)) lt!1626866)))

(declare-fun b!4427648 () Bool)

(assert (=> b!4427648 false))

(declare-fun Unit!82330 () Unit!82123)

(assert (=> b!4427648 (= e!2756896 Unit!82330)))

(declare-fun b!4427652 () Bool)

(declare-fun Unit!82331 () Unit!82123)

(assert (=> b!4427652 (= e!2756895 Unit!82331)))

(assert (=> b!4427653 false))

(declare-fun lt!1626871 () Unit!82123)

(assert (=> b!4427653 (= lt!1626871 (forallContained!2098 (getKeysList!256 (t!356667 (toList!3506 lt!1625981))) lambda!154458 (_1!28001 (h!55294 (toList!3506 lt!1625981)))))))

(declare-fun Unit!82332 () Unit!82123)

(assert (=> b!4427653 (= e!2756895 Unit!82332)))

(assert (= (and d!1342486 c!753712) b!4427647))

(assert (= (and d!1342486 (not c!753712)) b!4427646))

(assert (= (and b!4427647 c!753713) b!4427648))

(assert (= (and b!4427647 (not c!753713)) b!4427645))

(assert (= (and b!4427647 c!753711) b!4427653))

(assert (= (and b!4427647 (not c!753711)) b!4427652))

(assert (= (and d!1342486 res!1830846) b!4427650))

(assert (= (and b!4427650 res!1830845) b!4427649))

(assert (= (and b!4427649 res!1830844) b!4427651))

(declare-fun m!5110075 () Bool)

(assert (=> b!4427650 m!5110075))

(assert (=> b!4427650 m!5108897))

(declare-fun m!5110077 () Bool)

(assert (=> d!1342486 m!5110077))

(assert (=> d!1342486 m!5108815))

(declare-fun m!5110079 () Bool)

(assert (=> b!4427647 m!5110079))

(assert (=> b!4427647 m!5109013))

(declare-fun m!5110081 () Bool)

(assert (=> b!4427647 m!5110081))

(assert (=> b!4427647 m!5110081))

(declare-fun m!5110083 () Bool)

(assert (=> b!4427647 m!5110083))

(declare-fun m!5110085 () Bool)

(assert (=> b!4427647 m!5110085))

(declare-fun m!5110087 () Bool)

(assert (=> b!4427649 m!5110087))

(assert (=> b!4427653 m!5110081))

(assert (=> b!4427653 m!5110081))

(declare-fun m!5110089 () Bool)

(assert (=> b!4427653 m!5110089))

(declare-fun m!5110091 () Bool)

(assert (=> b!4427651 m!5110091))

(declare-fun m!5110093 () Bool)

(assert (=> b!4427651 m!5110093))

(assert (=> b!4427651 m!5110093))

(declare-fun m!5110095 () Bool)

(assert (=> b!4427651 m!5110095))

(assert (=> b!4426849 d!1342486))

(declare-fun d!1342488 () Bool)

(declare-fun c!753714 () Bool)

(assert (=> d!1342488 (= c!753714 ((_ is Nil!49605) (toList!3506 lt!1625977)))))

(declare-fun e!2756898 () (InoxSet tuple2!49414))

(assert (=> d!1342488 (= (content!7962 (toList!3506 lt!1625977)) e!2756898)))

(declare-fun b!4427654 () Bool)

(assert (=> b!4427654 (= e!2756898 ((as const (Array tuple2!49414 Bool)) false))))

(declare-fun b!4427655 () Bool)

(assert (=> b!4427655 (= e!2756898 ((_ map or) (store ((as const (Array tuple2!49414 Bool)) false) (h!55294 (toList!3506 lt!1625977)) true) (content!7962 (t!356667 (toList!3506 lt!1625977)))))))

(assert (= (and d!1342488 c!753714) b!4427654))

(assert (= (and d!1342488 (not c!753714)) b!4427655))

(declare-fun m!5110097 () Bool)

(assert (=> b!4427655 m!5110097))

(declare-fun m!5110099 () Bool)

(assert (=> b!4427655 m!5110099))

(assert (=> d!1342056 d!1342488))

(declare-fun d!1342490 () Bool)

(declare-fun c!753715 () Bool)

(assert (=> d!1342490 (= c!753715 ((_ is Nil!49605) (toList!3506 lt!1625979)))))

(declare-fun e!2756899 () (InoxSet tuple2!49414))

(assert (=> d!1342490 (= (content!7962 (toList!3506 lt!1625979)) e!2756899)))

(declare-fun b!4427656 () Bool)

(assert (=> b!4427656 (= e!2756899 ((as const (Array tuple2!49414 Bool)) false))))

(declare-fun b!4427657 () Bool)

(assert (=> b!4427657 (= e!2756899 ((_ map or) (store ((as const (Array tuple2!49414 Bool)) false) (h!55294 (toList!3506 lt!1625979)) true) (content!7962 (t!356667 (toList!3506 lt!1625979)))))))

(assert (= (and d!1342490 c!753715) b!4427656))

(assert (= (and d!1342490 (not c!753715)) b!4427657))

(declare-fun m!5110101 () Bool)

(assert (=> b!4427657 m!5110101))

(declare-fun m!5110103 () Bool)

(assert (=> b!4427657 m!5110103))

(assert (=> d!1342056 d!1342490))

(declare-fun d!1342492 () Bool)

(assert (=> d!1342492 (= (invariantList!809 (toList!3506 lt!1626325)) (noDuplicatedKeys!175 (toList!3506 lt!1626325)))))

(declare-fun bs!758630 () Bool)

(assert (= bs!758630 d!1342492))

(declare-fun m!5110105 () Bool)

(assert (=> bs!758630 m!5110105))

(assert (=> d!1342052 d!1342492))

(declare-fun d!1342494 () Bool)

(declare-fun res!1830847 () Bool)

(declare-fun e!2756900 () Bool)

(assert (=> d!1342494 (=> res!1830847 e!2756900)))

(assert (=> d!1342494 (= res!1830847 ((_ is Nil!49606) (toList!3505 (+!1102 lt!1625987 lt!1625978))))))

(assert (=> d!1342494 (= (forall!9576 (toList!3505 (+!1102 lt!1625987 lt!1625978)) lambda!154345) e!2756900)))

(declare-fun b!4427658 () Bool)

(declare-fun e!2756901 () Bool)

(assert (=> b!4427658 (= e!2756900 e!2756901)))

(declare-fun res!1830848 () Bool)

(assert (=> b!4427658 (=> (not res!1830848) (not e!2756901))))

(assert (=> b!4427658 (= res!1830848 (dynLambda!20850 lambda!154345 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))))))

(declare-fun b!4427659 () Bool)

(assert (=> b!4427659 (= e!2756901 (forall!9576 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))) lambda!154345))))

(assert (= (and d!1342494 (not res!1830847)) b!4427658))

(assert (= (and b!4427658 res!1830848) b!4427659))

(declare-fun b_lambda!143299 () Bool)

(assert (=> (not b_lambda!143299) (not b!4427658)))

(declare-fun m!5110107 () Bool)

(assert (=> b!4427658 m!5110107))

(declare-fun m!5110109 () Bool)

(assert (=> b!4427659 m!5110109))

(assert (=> d!1342052 d!1342494))

(declare-fun d!1342496 () Bool)

(declare-fun res!1830849 () Bool)

(declare-fun e!2756902 () Bool)

(assert (=> d!1342496 (=> res!1830849 e!2756902)))

(assert (=> d!1342496 (= res!1830849 (not ((_ is Cons!49605) (_2!28002 (h!55295 (toList!3505 lt!1625976))))))))

(assert (=> d!1342496 (= (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lt!1625976)))) e!2756902)))

(declare-fun b!4427660 () Bool)

(declare-fun e!2756903 () Bool)

(assert (=> b!4427660 (= e!2756902 e!2756903)))

(declare-fun res!1830850 () Bool)

(assert (=> b!4427660 (=> (not res!1830850) (not e!2756903))))

(assert (=> b!4427660 (= res!1830850 (not (containsKey!1130 (t!356667 (_2!28002 (h!55295 (toList!3505 lt!1625976)))) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lt!1625976))))))))))

(declare-fun b!4427661 () Bool)

(assert (=> b!4427661 (= e!2756903 (noDuplicateKeys!759 (t!356667 (_2!28002 (h!55295 (toList!3505 lt!1625976))))))))

(assert (= (and d!1342496 (not res!1830849)) b!4427660))

(assert (= (and b!4427660 res!1830850) b!4427661))

(declare-fun m!5110111 () Bool)

(assert (=> b!4427660 m!5110111))

(declare-fun m!5110113 () Bool)

(assert (=> b!4427661 m!5110113))

(assert (=> bs!757981 d!1342496))

(declare-fun d!1342498 () Bool)

(assert (=> d!1342498 (isDefined!8026 (getValueByKey!720 (toList!3505 lm!1616) hash!366))))

(declare-fun lt!1626895 () Unit!82123)

(declare-fun choose!27992 (List!49730 (_ BitVec 64)) Unit!82123)

(assert (=> d!1342498 (= lt!1626895 (choose!27992 (toList!3505 lm!1616) hash!366))))

(declare-fun e!2756909 () Bool)

(assert (=> d!1342498 e!2756909))

(declare-fun res!1830856 () Bool)

(assert (=> d!1342498 (=> (not res!1830856) (not e!2756909))))

(assert (=> d!1342498 (= res!1830856 (isStrictlySorted!236 (toList!3505 lm!1616)))))

(assert (=> d!1342498 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!629 (toList!3505 lm!1616) hash!366) lt!1626895)))

(declare-fun b!4427669 () Bool)

(assert (=> b!4427669 (= e!2756909 (containsKey!1134 (toList!3505 lm!1616) hash!366))))

(assert (= (and d!1342498 res!1830856) b!4427669))

(assert (=> d!1342498 m!5108701))

(assert (=> d!1342498 m!5108701))

(assert (=> d!1342498 m!5108703))

(declare-fun m!5110115 () Bool)

(assert (=> d!1342498 m!5110115))

(assert (=> d!1342498 m!5108681))

(assert (=> b!4427669 m!5108697))

(assert (=> b!4426929 d!1342498))

(assert (=> b!4426929 d!1342430))

(assert (=> b!4426929 d!1342368))

(declare-fun d!1342502 () Bool)

(declare-fun c!753717 () Bool)

(assert (=> d!1342502 (= c!753717 (and ((_ is Cons!49606) (toList!3505 lt!1626247)) (= (_1!28002 (h!55295 (toList!3505 lt!1626247))) (_1!28002 lt!1625978))))))

(declare-fun e!2756910 () Option!10734)

(assert (=> d!1342502 (= (getValueByKey!720 (toList!3505 lt!1626247) (_1!28002 lt!1625978)) e!2756910)))

(declare-fun b!4427672 () Bool)

(declare-fun e!2756911 () Option!10734)

(assert (=> b!4427672 (= e!2756911 (getValueByKey!720 (t!356668 (toList!3505 lt!1626247)) (_1!28002 lt!1625978)))))

(declare-fun b!4427670 () Bool)

(assert (=> b!4427670 (= e!2756910 (Some!10733 (_2!28002 (h!55295 (toList!3505 lt!1626247)))))))

(declare-fun b!4427673 () Bool)

(assert (=> b!4427673 (= e!2756911 None!10733)))

(declare-fun b!4427671 () Bool)

(assert (=> b!4427671 (= e!2756910 e!2756911)))

(declare-fun c!753718 () Bool)

(assert (=> b!4427671 (= c!753718 (and ((_ is Cons!49606) (toList!3505 lt!1626247)) (not (= (_1!28002 (h!55295 (toList!3505 lt!1626247))) (_1!28002 lt!1625978)))))))

(assert (= (and d!1342502 c!753717) b!4427670))

(assert (= (and d!1342502 (not c!753717)) b!4427671))

(assert (= (and b!4427671 c!753718) b!4427672))

(assert (= (and b!4427671 (not c!753718)) b!4427673))

(declare-fun m!5110117 () Bool)

(assert (=> b!4427672 m!5110117))

(assert (=> b!4426815 d!1342502))

(declare-fun d!1342504 () Bool)

(declare-fun res!1830857 () Bool)

(declare-fun e!2756912 () Bool)

(assert (=> d!1342504 (=> res!1830857 e!2756912)))

(assert (=> d!1342504 (= res!1830857 ((_ is Nil!49606) (t!356668 (toList!3505 lt!1625976))))))

(assert (=> d!1342504 (= (forall!9576 (t!356668 (toList!3505 lt!1625976)) lambda!154244) e!2756912)))

(declare-fun b!4427674 () Bool)

(declare-fun e!2756913 () Bool)

(assert (=> b!4427674 (= e!2756912 e!2756913)))

(declare-fun res!1830858 () Bool)

(assert (=> b!4427674 (=> (not res!1830858) (not e!2756913))))

(assert (=> b!4427674 (= res!1830858 (dynLambda!20850 lambda!154244 (h!55295 (t!356668 (toList!3505 lt!1625976)))))))

(declare-fun b!4427675 () Bool)

(assert (=> b!4427675 (= e!2756913 (forall!9576 (t!356668 (t!356668 (toList!3505 lt!1625976))) lambda!154244))))

(assert (= (and d!1342504 (not res!1830857)) b!4427674))

(assert (= (and b!4427674 res!1830858) b!4427675))

(declare-fun b_lambda!143301 () Bool)

(assert (=> (not b_lambda!143301) (not b!4427674)))

(declare-fun m!5110119 () Bool)

(assert (=> b!4427674 m!5110119))

(declare-fun m!5110121 () Bool)

(assert (=> b!4427675 m!5110121))

(assert (=> b!4426810 d!1342504))

(declare-fun d!1342506 () Bool)

(declare-fun res!1830859 () Bool)

(declare-fun e!2756914 () Bool)

(assert (=> d!1342506 (=> res!1830859 e!2756914)))

(assert (=> d!1342506 (= res!1830859 ((_ is Nil!49605) (toList!3506 lt!1625969)))))

(assert (=> d!1342506 (= (forall!9578 (toList!3506 lt!1625969) (ite c!753512 lambda!154318 lambda!154320)) e!2756914)))

(declare-fun b!4427676 () Bool)

(declare-fun e!2756915 () Bool)

(assert (=> b!4427676 (= e!2756914 e!2756915)))

(declare-fun res!1830860 () Bool)

(assert (=> b!4427676 (=> (not res!1830860) (not e!2756915))))

(assert (=> b!4427676 (= res!1830860 (dynLambda!20851 (ite c!753512 lambda!154318 lambda!154320) (h!55294 (toList!3506 lt!1625969))))))

(declare-fun b!4427677 () Bool)

(assert (=> b!4427677 (= e!2756915 (forall!9578 (t!356667 (toList!3506 lt!1625969)) (ite c!753512 lambda!154318 lambda!154320)))))

(assert (= (and d!1342506 (not res!1830859)) b!4427676))

(assert (= (and b!4427676 res!1830860) b!4427677))

(declare-fun b_lambda!143303 () Bool)

(assert (=> (not b_lambda!143303) (not b!4427676)))

(declare-fun m!5110123 () Bool)

(assert (=> b!4427676 m!5110123))

(declare-fun m!5110125 () Bool)

(assert (=> b!4427677 m!5110125))

(assert (=> bm!308013 d!1342506))

(declare-fun d!1342508 () Bool)

(assert (=> d!1342508 (= (invariantList!809 (toList!3506 lt!1626213)) (noDuplicatedKeys!175 (toList!3506 lt!1626213)))))

(declare-fun bs!758670 () Bool)

(assert (= bs!758670 d!1342508))

(declare-fun m!5110127 () Bool)

(assert (=> bs!758670 m!5110127))

(assert (=> b!4426791 d!1342508))

(declare-fun d!1342510 () Bool)

(declare-fun e!2756917 () Bool)

(assert (=> d!1342510 e!2756917))

(declare-fun res!1830861 () Bool)

(assert (=> d!1342510 (=> res!1830861 e!2756917)))

(declare-fun lt!1626899 () Bool)

(assert (=> d!1342510 (= res!1830861 (not lt!1626899))))

(declare-fun lt!1626898 () Bool)

(assert (=> d!1342510 (= lt!1626899 lt!1626898)))

(declare-fun lt!1626896 () Unit!82123)

(declare-fun e!2756916 () Unit!82123)

(assert (=> d!1342510 (= lt!1626896 e!2756916)))

(declare-fun c!753719 () Bool)

(assert (=> d!1342510 (= c!753719 lt!1626898)))

(assert (=> d!1342510 (= lt!1626898 (containsKey!1134 (toList!3505 lt!1626247) (_1!28002 lt!1625978)))))

(assert (=> d!1342510 (= (contains!12115 lt!1626247 (_1!28002 lt!1625978)) lt!1626899)))

(declare-fun b!4427678 () Bool)

(declare-fun lt!1626897 () Unit!82123)

(assert (=> b!4427678 (= e!2756916 lt!1626897)))

(assert (=> b!4427678 (= lt!1626897 (lemmaContainsKeyImpliesGetValueByKeyDefined!629 (toList!3505 lt!1626247) (_1!28002 lt!1625978)))))

(assert (=> b!4427678 (isDefined!8026 (getValueByKey!720 (toList!3505 lt!1626247) (_1!28002 lt!1625978)))))

(declare-fun b!4427679 () Bool)

(declare-fun Unit!82335 () Unit!82123)

(assert (=> b!4427679 (= e!2756916 Unit!82335)))

(declare-fun b!4427680 () Bool)

(assert (=> b!4427680 (= e!2756917 (isDefined!8026 (getValueByKey!720 (toList!3505 lt!1626247) (_1!28002 lt!1625978))))))

(assert (= (and d!1342510 c!753719) b!4427678))

(assert (= (and d!1342510 (not c!753719)) b!4427679))

(assert (= (and d!1342510 (not res!1830861)) b!4427680))

(declare-fun m!5110129 () Bool)

(assert (=> d!1342510 m!5110129))

(declare-fun m!5110131 () Bool)

(assert (=> b!4427678 m!5110131))

(assert (=> b!4427678 m!5108413))

(assert (=> b!4427678 m!5108413))

(declare-fun m!5110133 () Bool)

(assert (=> b!4427678 m!5110133))

(assert (=> b!4427680 m!5108413))

(assert (=> b!4427680 m!5108413))

(assert (=> b!4427680 m!5110133))

(assert (=> d!1342006 d!1342510))

(declare-fun d!1342512 () Bool)

(declare-fun c!753720 () Bool)

(assert (=> d!1342512 (= c!753720 (and ((_ is Cons!49606) lt!1626246) (= (_1!28002 (h!55295 lt!1626246)) (_1!28002 lt!1625978))))))

(declare-fun e!2756918 () Option!10734)

(assert (=> d!1342512 (= (getValueByKey!720 lt!1626246 (_1!28002 lt!1625978)) e!2756918)))

(declare-fun b!4427683 () Bool)

(declare-fun e!2756919 () Option!10734)

(assert (=> b!4427683 (= e!2756919 (getValueByKey!720 (t!356668 lt!1626246) (_1!28002 lt!1625978)))))

(declare-fun b!4427681 () Bool)

(assert (=> b!4427681 (= e!2756918 (Some!10733 (_2!28002 (h!55295 lt!1626246))))))

(declare-fun b!4427684 () Bool)

(assert (=> b!4427684 (= e!2756919 None!10733)))

(declare-fun b!4427682 () Bool)

(assert (=> b!4427682 (= e!2756918 e!2756919)))

(declare-fun c!753721 () Bool)

(assert (=> b!4427682 (= c!753721 (and ((_ is Cons!49606) lt!1626246) (not (= (_1!28002 (h!55295 lt!1626246)) (_1!28002 lt!1625978)))))))

(assert (= (and d!1342512 c!753720) b!4427681))

(assert (= (and d!1342512 (not c!753720)) b!4427682))

(assert (= (and b!4427682 c!753721) b!4427683))

(assert (= (and b!4427682 (not c!753721)) b!4427684))

(declare-fun m!5110135 () Bool)

(assert (=> b!4427683 m!5110135))

(assert (=> d!1342006 d!1342512))

(declare-fun d!1342514 () Bool)

(assert (=> d!1342514 (= (getValueByKey!720 lt!1626246 (_1!28002 lt!1625978)) (Some!10733 (_2!28002 lt!1625978)))))

(declare-fun lt!1626900 () Unit!82123)

(assert (=> d!1342514 (= lt!1626900 (choose!27984 lt!1626246 (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(declare-fun e!2756920 () Bool)

(assert (=> d!1342514 e!2756920))

(declare-fun res!1830862 () Bool)

(assert (=> d!1342514 (=> (not res!1830862) (not e!2756920))))

(assert (=> d!1342514 (= res!1830862 (isStrictlySorted!236 lt!1626246))))

(assert (=> d!1342514 (= (lemmaContainsTupThenGetReturnValue!455 lt!1626246 (_1!28002 lt!1625978) (_2!28002 lt!1625978)) lt!1626900)))

(declare-fun b!4427685 () Bool)

(declare-fun res!1830863 () Bool)

(assert (=> b!4427685 (=> (not res!1830863) (not e!2756920))))

(assert (=> b!4427685 (= res!1830863 (containsKey!1134 lt!1626246 (_1!28002 lt!1625978)))))

(declare-fun b!4427686 () Bool)

(assert (=> b!4427686 (= e!2756920 (contains!12120 lt!1626246 (tuple2!49417 (_1!28002 lt!1625978) (_2!28002 lt!1625978))))))

(assert (= (and d!1342514 res!1830862) b!4427685))

(assert (= (and b!4427685 res!1830863) b!4427686))

(assert (=> d!1342514 m!5108407))

(declare-fun m!5110137 () Bool)

(assert (=> d!1342514 m!5110137))

(declare-fun m!5110139 () Bool)

(assert (=> d!1342514 m!5110139))

(declare-fun m!5110141 () Bool)

(assert (=> b!4427685 m!5110141))

(declare-fun m!5110143 () Bool)

(assert (=> b!4427686 m!5110143))

(assert (=> d!1342006 d!1342514))

(declare-fun bm!308093 () Bool)

(declare-fun e!2756922 () List!49730)

(declare-fun c!753725 () Bool)

(declare-fun call!308100 () List!49730)

(assert (=> bm!308093 (= call!308100 ($colon$colon!787 e!2756922 (ite c!753725 (h!55295 (toList!3505 lm!1616)) (tuple2!49417 (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))))

(declare-fun c!753723 () Bool)

(assert (=> bm!308093 (= c!753723 c!753725)))

(declare-fun b!4427687 () Bool)

(declare-fun c!753722 () Bool)

(assert (=> b!4427687 (= c!753722 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (bvsgt (_1!28002 (h!55295 (toList!3505 lm!1616))) (_1!28002 lt!1625978))))))

(declare-fun e!2756921 () List!49730)

(declare-fun e!2756923 () List!49730)

(assert (=> b!4427687 (= e!2756921 e!2756923)))

(declare-fun bm!308094 () Bool)

(declare-fun call!308099 () List!49730)

(declare-fun call!308098 () List!49730)

(assert (=> bm!308094 (= call!308099 call!308098)))

(declare-fun b!4427688 () Bool)

(declare-fun e!2756924 () Bool)

(declare-fun lt!1626901 () List!49730)

(assert (=> b!4427688 (= e!2756924 (contains!12120 lt!1626901 (tuple2!49417 (_1!28002 lt!1625978) (_2!28002 lt!1625978))))))

(declare-fun b!4427689 () Bool)

(declare-fun e!2756925 () List!49730)

(assert (=> b!4427689 (= e!2756925 e!2756921)))

(declare-fun c!753724 () Bool)

(assert (=> b!4427689 (= c!753724 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (= (_1!28002 (h!55295 (toList!3505 lm!1616))) (_1!28002 lt!1625978))))))

(declare-fun b!4427690 () Bool)

(assert (=> b!4427690 (= e!2756921 call!308098)))

(declare-fun b!4427691 () Bool)

(declare-fun res!1830865 () Bool)

(assert (=> b!4427691 (=> (not res!1830865) (not e!2756924))))

(assert (=> b!4427691 (= res!1830865 (containsKey!1134 lt!1626901 (_1!28002 lt!1625978)))))

(declare-fun d!1342516 () Bool)

(assert (=> d!1342516 e!2756924))

(declare-fun res!1830864 () Bool)

(assert (=> d!1342516 (=> (not res!1830864) (not e!2756924))))

(assert (=> d!1342516 (= res!1830864 (isStrictlySorted!236 lt!1626901))))

(assert (=> d!1342516 (= lt!1626901 e!2756925)))

(assert (=> d!1342516 (= c!753725 (and ((_ is Cons!49606) (toList!3505 lm!1616)) (bvslt (_1!28002 (h!55295 (toList!3505 lm!1616))) (_1!28002 lt!1625978))))))

(assert (=> d!1342516 (isStrictlySorted!236 (toList!3505 lm!1616))))

(assert (=> d!1342516 (= (insertStrictlySorted!264 (toList!3505 lm!1616) (_1!28002 lt!1625978) (_2!28002 lt!1625978)) lt!1626901)))

(declare-fun b!4427692 () Bool)

(assert (=> b!4427692 (= e!2756922 (insertStrictlySorted!264 (t!356668 (toList!3505 lm!1616)) (_1!28002 lt!1625978) (_2!28002 lt!1625978)))))

(declare-fun b!4427693 () Bool)

(assert (=> b!4427693 (= e!2756923 call!308099)))

(declare-fun b!4427694 () Bool)

(assert (=> b!4427694 (= e!2756925 call!308100)))

(declare-fun b!4427695 () Bool)

(assert (=> b!4427695 (= e!2756922 (ite c!753724 (t!356668 (toList!3505 lm!1616)) (ite c!753722 (Cons!49606 (h!55295 (toList!3505 lm!1616)) (t!356668 (toList!3505 lm!1616))) Nil!49606)))))

(declare-fun bm!308095 () Bool)

(assert (=> bm!308095 (= call!308098 call!308100)))

(declare-fun b!4427696 () Bool)

(assert (=> b!4427696 (= e!2756923 call!308099)))

(assert (= (and d!1342516 c!753725) b!4427694))

(assert (= (and d!1342516 (not c!753725)) b!4427689))

(assert (= (and b!4427689 c!753724) b!4427690))

(assert (= (and b!4427689 (not c!753724)) b!4427687))

(assert (= (and b!4427687 c!753722) b!4427696))

(assert (= (and b!4427687 (not c!753722)) b!4427693))

(assert (= (or b!4427696 b!4427693) bm!308094))

(assert (= (or b!4427690 bm!308094) bm!308095))

(assert (= (or b!4427694 bm!308095) bm!308093))

(assert (= (and bm!308093 c!753723) b!4427692))

(assert (= (and bm!308093 (not c!753723)) b!4427695))

(assert (= (and d!1342516 res!1830864) b!4427691))

(assert (= (and b!4427691 res!1830865) b!4427688))

(declare-fun m!5110145 () Bool)

(assert (=> d!1342516 m!5110145))

(assert (=> d!1342516 m!5108681))

(declare-fun m!5110147 () Bool)

(assert (=> b!4427692 m!5110147))

(declare-fun m!5110149 () Bool)

(assert (=> b!4427688 m!5110149))

(declare-fun m!5110151 () Bool)

(assert (=> bm!308093 m!5110151))

(declare-fun m!5110153 () Bool)

(assert (=> b!4427691 m!5110153))

(assert (=> d!1342006 d!1342516))

(declare-fun d!1342518 () Bool)

(assert (=> d!1342518 (= (invariantList!809 (toList!3506 lt!1626323)) (noDuplicatedKeys!175 (toList!3506 lt!1626323)))))

(declare-fun bs!758672 () Bool)

(assert (= bs!758672 d!1342518))

(declare-fun m!5110155 () Bool)

(assert (=> bs!758672 m!5110155))

(assert (=> d!1342022 d!1342518))

(declare-fun d!1342520 () Bool)

(declare-fun res!1830866 () Bool)

(declare-fun e!2756926 () Bool)

(assert (=> d!1342520 (=> res!1830866 e!2756926)))

(assert (=> d!1342520 (= res!1830866 ((_ is Nil!49606) (toList!3505 lm!1616)))))

(assert (=> d!1342520 (= (forall!9576 (toList!3505 lm!1616) lambda!154343) e!2756926)))

(declare-fun b!4427697 () Bool)

(declare-fun e!2756927 () Bool)

(assert (=> b!4427697 (= e!2756926 e!2756927)))

(declare-fun res!1830867 () Bool)

(assert (=> b!4427697 (=> (not res!1830867) (not e!2756927))))

(assert (=> b!4427697 (= res!1830867 (dynLambda!20850 lambda!154343 (h!55295 (toList!3505 lm!1616))))))

(declare-fun b!4427698 () Bool)

(assert (=> b!4427698 (= e!2756927 (forall!9576 (t!356668 (toList!3505 lm!1616)) lambda!154343))))

(assert (= (and d!1342520 (not res!1830866)) b!4427697))

(assert (= (and b!4427697 res!1830867) b!4427698))

(declare-fun b_lambda!143305 () Bool)

(assert (=> (not b_lambda!143305) (not b!4427697)))

(declare-fun m!5110157 () Bool)

(assert (=> b!4427697 m!5110157))

(declare-fun m!5110159 () Bool)

(assert (=> b!4427698 m!5110159))

(assert (=> d!1342022 d!1342520))

(assert (=> d!1342084 d!1342080))

(assert (=> d!1342084 d!1342082))

(declare-fun d!1342522 () Bool)

(assert (=> d!1342522 (not (containsKey!1130 (apply!11611 lm!1616 (_1!28002 (h!55295 (toList!3505 lm!1616)))) key!3717))))

(assert (=> d!1342522 true))

(declare-fun _$39!361 () Unit!82123)

(assert (=> d!1342522 (= (choose!27972 lm!1616 key!3717 (_1!28002 (h!55295 (toList!3505 lm!1616))) hashF!1220) _$39!361)))

(declare-fun bs!758687 () Bool)

(assert (= bs!758687 d!1342522))

(assert (=> bs!758687 m!5108099))

(assert (=> bs!758687 m!5108099))

(assert (=> bs!758687 m!5108101))

(assert (=> d!1342084 d!1342522))

(declare-fun d!1342524 () Bool)

(declare-fun res!1830868 () Bool)

(declare-fun e!2756928 () Bool)

(assert (=> d!1342524 (=> res!1830868 e!2756928)))

(assert (=> d!1342524 (= res!1830868 ((_ is Nil!49606) (toList!3505 lm!1616)))))

(assert (=> d!1342524 (= (forall!9576 (toList!3505 lm!1616) lambda!154355) e!2756928)))

(declare-fun b!4427699 () Bool)

(declare-fun e!2756929 () Bool)

(assert (=> b!4427699 (= e!2756928 e!2756929)))

(declare-fun res!1830869 () Bool)

(assert (=> b!4427699 (=> (not res!1830869) (not e!2756929))))

(assert (=> b!4427699 (= res!1830869 (dynLambda!20850 lambda!154355 (h!55295 (toList!3505 lm!1616))))))

(declare-fun b!4427700 () Bool)

(assert (=> b!4427700 (= e!2756929 (forall!9576 (t!356668 (toList!3505 lm!1616)) lambda!154355))))

(assert (= (and d!1342524 (not res!1830868)) b!4427699))

(assert (= (and b!4427699 res!1830869) b!4427700))

(declare-fun b_lambda!143307 () Bool)

(assert (=> (not b_lambda!143307) (not b!4427699)))

(declare-fun m!5110161 () Bool)

(assert (=> b!4427699 m!5110161))

(declare-fun m!5110163 () Bool)

(assert (=> b!4427700 m!5110163))

(assert (=> d!1342084 d!1342524))

(declare-fun d!1342526 () Bool)

(declare-fun res!1830870 () Bool)

(declare-fun e!2756930 () Bool)

(assert (=> d!1342526 (=> res!1830870 e!2756930)))

(assert (=> d!1342526 (= res!1830870 ((_ is Nil!49605) (toList!3506 lt!1625979)))))

(assert (=> d!1342526 (= (forall!9578 (toList!3506 lt!1625979) lambda!154314) e!2756930)))

(declare-fun b!4427701 () Bool)

(declare-fun e!2756931 () Bool)

(assert (=> b!4427701 (= e!2756930 e!2756931)))

(declare-fun res!1830871 () Bool)

(assert (=> b!4427701 (=> (not res!1830871) (not e!2756931))))

(assert (=> b!4427701 (= res!1830871 (dynLambda!20851 lambda!154314 (h!55294 (toList!3506 lt!1625979))))))

(declare-fun b!4427702 () Bool)

(assert (=> b!4427702 (= e!2756931 (forall!9578 (t!356667 (toList!3506 lt!1625979)) lambda!154314))))

(assert (= (and d!1342526 (not res!1830870)) b!4427701))

(assert (= (and b!4427701 res!1830871) b!4427702))

(declare-fun b_lambda!143309 () Bool)

(assert (=> (not b_lambda!143309) (not b!4427701)))

(declare-fun m!5110165 () Bool)

(assert (=> b!4427701 m!5110165))

(declare-fun m!5110167 () Bool)

(assert (=> b!4427702 m!5110167))

(assert (=> b!4426754 d!1342526))

(assert (=> b!4426854 d!1342172))

(declare-fun d!1342528 () Bool)

(assert (=> d!1342528 (containsKey!1133 (toList!3506 lt!1625981) key!3717)))

(declare-fun lt!1626902 () Unit!82123)

(assert (=> d!1342528 (= lt!1626902 (choose!27974 (toList!3506 lt!1625981) key!3717))))

(assert (=> d!1342528 (invariantList!809 (toList!3506 lt!1625981))))

(assert (=> d!1342528 (= (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1625981) key!3717) lt!1626902)))

(declare-fun bs!758695 () Bool)

(assert (= bs!758695 d!1342528))

(assert (=> bs!758695 m!5108493))

(declare-fun m!5110169 () Bool)

(assert (=> bs!758695 m!5110169))

(assert (=> bs!758695 m!5108815))

(assert (=> b!4426854 d!1342528))

(assert (=> bs!757983 d!1342214))

(declare-fun d!1342530 () Bool)

(declare-fun res!1830872 () Bool)

(declare-fun e!2756932 () Bool)

(assert (=> d!1342530 (=> res!1830872 e!2756932)))

(assert (=> d!1342530 (= res!1830872 ((_ is Nil!49605) (toList!3506 lt!1625979)))))

(assert (=> d!1342530 (= (forall!9578 (toList!3506 lt!1625979) (ite c!753502 lambda!154311 lambda!154312)) e!2756932)))

(declare-fun b!4427703 () Bool)

(declare-fun e!2756933 () Bool)

(assert (=> b!4427703 (= e!2756932 e!2756933)))

(declare-fun res!1830873 () Bool)

(assert (=> b!4427703 (=> (not res!1830873) (not e!2756933))))

(assert (=> b!4427703 (= res!1830873 (dynLambda!20851 (ite c!753502 lambda!154311 lambda!154312) (h!55294 (toList!3506 lt!1625979))))))

(declare-fun b!4427704 () Bool)

(assert (=> b!4427704 (= e!2756933 (forall!9578 (t!356667 (toList!3506 lt!1625979)) (ite c!753502 lambda!154311 lambda!154312)))))

(assert (= (and d!1342530 (not res!1830872)) b!4427703))

(assert (= (and b!4427703 res!1830873) b!4427704))

(declare-fun b_lambda!143311 () Bool)

(assert (=> (not b_lambda!143311) (not b!4427703)))

(declare-fun m!5110171 () Bool)

(assert (=> b!4427703 m!5110171))

(declare-fun m!5110173 () Bool)

(assert (=> b!4427704 m!5110173))

(assert (=> bm!308005 d!1342530))

(declare-fun b!4427705 () Bool)

(declare-fun e!2756936 () Unit!82123)

(declare-fun e!2756934 () Unit!82123)

(assert (=> b!4427705 (= e!2756936 e!2756934)))

(declare-fun c!753728 () Bool)

(declare-fun call!308101 () Bool)

(assert (=> b!4427705 (= c!753728 call!308101)))

(declare-fun b!4427706 () Bool)

(declare-fun e!2756938 () List!49732)

(assert (=> b!4427706 (= e!2756938 (keys!16942 lt!1626024))))

(declare-fun b!4427707 () Bool)

(declare-fun e!2756935 () Bool)

(assert (=> b!4427707 (= e!2756935 (contains!12121 (keys!16942 lt!1626024) (_1!28001 lt!1625974)))))

(declare-fun d!1342532 () Bool)

(declare-fun e!2756939 () Bool)

(assert (=> d!1342532 e!2756939))

(declare-fun res!1830874 () Bool)

(assert (=> d!1342532 (=> res!1830874 e!2756939)))

(declare-fun e!2756937 () Bool)

(assert (=> d!1342532 (= res!1830874 e!2756937)))

(declare-fun res!1830876 () Bool)

(assert (=> d!1342532 (=> (not res!1830876) (not e!2756937))))

(declare-fun lt!1626904 () Bool)

(assert (=> d!1342532 (= res!1830876 (not lt!1626904))))

(declare-fun lt!1626907 () Bool)

(assert (=> d!1342532 (= lt!1626904 lt!1626907)))

(declare-fun lt!1626909 () Unit!82123)

(assert (=> d!1342532 (= lt!1626909 e!2756936)))

(declare-fun c!753726 () Bool)

(assert (=> d!1342532 (= c!753726 lt!1626907)))

(assert (=> d!1342532 (= lt!1626907 (containsKey!1133 (toList!3506 lt!1626024) (_1!28001 lt!1625974)))))

(assert (=> d!1342532 (= (contains!12114 lt!1626024 (_1!28001 lt!1625974)) lt!1626904)))

(declare-fun b!4427708 () Bool)

(assert (=> b!4427708 (= e!2756938 (getKeysList!256 (toList!3506 lt!1626024)))))

(declare-fun b!4427709 () Bool)

(assert (=> b!4427709 (= e!2756939 e!2756935)))

(declare-fun res!1830875 () Bool)

(assert (=> b!4427709 (=> (not res!1830875) (not e!2756935))))

(assert (=> b!4427709 (= res!1830875 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626024) (_1!28001 lt!1625974))))))

(declare-fun b!4427710 () Bool)

(declare-fun Unit!82340 () Unit!82123)

(assert (=> b!4427710 (= e!2756934 Unit!82340)))

(declare-fun b!4427711 () Bool)

(declare-fun lt!1626903 () Unit!82123)

(assert (=> b!4427711 (= e!2756936 lt!1626903)))

(declare-fun lt!1626910 () Unit!82123)

(assert (=> b!4427711 (= lt!1626910 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1626024) (_1!28001 lt!1625974)))))

(assert (=> b!4427711 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626024) (_1!28001 lt!1625974)))))

(declare-fun lt!1626905 () Unit!82123)

(assert (=> b!4427711 (= lt!1626905 lt!1626910)))

(assert (=> b!4427711 (= lt!1626903 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1626024) (_1!28001 lt!1625974)))))

(assert (=> b!4427711 call!308101))

(declare-fun b!4427712 () Bool)

(assert (=> b!4427712 (= e!2756937 (not (contains!12121 (keys!16942 lt!1626024) (_1!28001 lt!1625974))))))

(declare-fun bm!308096 () Bool)

(assert (=> bm!308096 (= call!308101 (contains!12121 e!2756938 (_1!28001 lt!1625974)))))

(declare-fun c!753727 () Bool)

(assert (=> bm!308096 (= c!753727 c!753726)))

(declare-fun b!4427713 () Bool)

(assert (=> b!4427713 false))

(declare-fun lt!1626906 () Unit!82123)

(declare-fun lt!1626908 () Unit!82123)

(assert (=> b!4427713 (= lt!1626906 lt!1626908)))

(assert (=> b!4427713 (containsKey!1133 (toList!3506 lt!1626024) (_1!28001 lt!1625974))))

(assert (=> b!4427713 (= lt!1626908 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1626024) (_1!28001 lt!1625974)))))

(declare-fun Unit!82341 () Unit!82123)

(assert (=> b!4427713 (= e!2756934 Unit!82341)))

(assert (= (and d!1342532 c!753726) b!4427711))

(assert (= (and d!1342532 (not c!753726)) b!4427705))

(assert (= (and b!4427705 c!753728) b!4427713))

(assert (= (and b!4427705 (not c!753728)) b!4427710))

(assert (= (or b!4427711 b!4427705) bm!308096))

(assert (= (and bm!308096 c!753727) b!4427708))

(assert (= (and bm!308096 (not c!753727)) b!4427706))

(assert (= (and d!1342532 res!1830876) b!4427712))

(assert (= (and d!1342532 (not res!1830874)) b!4427709))

(assert (= (and b!4427709 res!1830875) b!4427707))

(declare-fun m!5110209 () Bool)

(assert (=> b!4427713 m!5110209))

(declare-fun m!5110211 () Bool)

(assert (=> b!4427713 m!5110211))

(declare-fun m!5110213 () Bool)

(assert (=> b!4427707 m!5110213))

(assert (=> b!4427707 m!5110213))

(declare-fun m!5110215 () Bool)

(assert (=> b!4427707 m!5110215))

(assert (=> b!4427712 m!5110213))

(assert (=> b!4427712 m!5110213))

(assert (=> b!4427712 m!5110215))

(declare-fun m!5110217 () Bool)

(assert (=> b!4427708 m!5110217))

(assert (=> b!4427709 m!5108157))

(assert (=> b!4427709 m!5108157))

(declare-fun m!5110219 () Bool)

(assert (=> b!4427709 m!5110219))

(assert (=> d!1342532 m!5110209))

(declare-fun m!5110221 () Bool)

(assert (=> bm!308096 m!5110221))

(assert (=> b!4427706 m!5110213))

(declare-fun m!5110223 () Bool)

(assert (=> b!4427711 m!5110223))

(assert (=> b!4427711 m!5108157))

(assert (=> b!4427711 m!5108157))

(assert (=> b!4427711 m!5110219))

(declare-fun m!5110225 () Bool)

(assert (=> b!4427711 m!5110225))

(assert (=> d!1341938 d!1342532))

(declare-fun b!4427725 () Bool)

(declare-fun e!2756947 () Option!10733)

(assert (=> b!4427725 (= e!2756947 (getValueByKey!719 (t!356667 lt!1626026) (_1!28001 lt!1625974)))))

(declare-fun b!4427724 () Bool)

(declare-fun e!2756946 () Option!10733)

(assert (=> b!4427724 (= e!2756946 e!2756947)))

(declare-fun c!753733 () Bool)

(assert (=> b!4427724 (= c!753733 (and ((_ is Cons!49605) lt!1626026) (not (= (_1!28001 (h!55294 lt!1626026)) (_1!28001 lt!1625974)))))))

(declare-fun d!1342536 () Bool)

(declare-fun c!753732 () Bool)

(assert (=> d!1342536 (= c!753732 (and ((_ is Cons!49605) lt!1626026) (= (_1!28001 (h!55294 lt!1626026)) (_1!28001 lt!1625974))))))

(assert (=> d!1342536 (= (getValueByKey!719 lt!1626026 (_1!28001 lt!1625974)) e!2756946)))

(declare-fun b!4427723 () Bool)

(assert (=> b!4427723 (= e!2756946 (Some!10732 (_2!28001 (h!55294 lt!1626026))))))

(declare-fun b!4427726 () Bool)

(assert (=> b!4427726 (= e!2756947 None!10732)))

(assert (= (and d!1342536 c!753732) b!4427723))

(assert (= (and d!1342536 (not c!753732)) b!4427724))

(assert (= (and b!4427724 c!753733) b!4427725))

(assert (= (and b!4427724 (not c!753733)) b!4427726))

(declare-fun m!5110227 () Bool)

(assert (=> b!4427725 m!5110227))

(assert (=> d!1341938 d!1342536))

(declare-fun d!1342538 () Bool)

(assert (=> d!1342538 (= (getValueByKey!719 lt!1626026 (_1!28001 lt!1625974)) (Some!10732 (_2!28001 lt!1625974)))))

(declare-fun lt!1626919 () Unit!82123)

(assert (=> d!1342538 (= lt!1626919 (choose!27982 lt!1626026 (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun e!2756948 () Bool)

(assert (=> d!1342538 e!2756948))

(declare-fun res!1830880 () Bool)

(assert (=> d!1342538 (=> (not res!1830880) (not e!2756948))))

(assert (=> d!1342538 (= res!1830880 (invariantList!809 lt!1626026))))

(assert (=> d!1342538 (= (lemmaContainsTupThenGetReturnValue!454 lt!1626026 (_1!28001 lt!1625974) (_2!28001 lt!1625974)) lt!1626919)))

(declare-fun b!4427727 () Bool)

(declare-fun res!1830881 () Bool)

(assert (=> b!4427727 (=> (not res!1830881) (not e!2756948))))

(assert (=> b!4427727 (= res!1830881 (containsKey!1133 lt!1626026 (_1!28001 lt!1625974)))))

(declare-fun b!4427728 () Bool)

(assert (=> b!4427728 (= e!2756948 (contains!12118 lt!1626026 (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))

(assert (= (and d!1342538 res!1830880) b!4427727))

(assert (= (and b!4427727 res!1830881) b!4427728))

(assert (=> d!1342538 m!5108151))

(declare-fun m!5110237 () Bool)

(assert (=> d!1342538 m!5110237))

(declare-fun m!5110241 () Bool)

(assert (=> d!1342538 m!5110241))

(declare-fun m!5110243 () Bool)

(assert (=> b!4427727 m!5110243))

(declare-fun m!5110245 () Bool)

(assert (=> b!4427728 m!5110245))

(assert (=> d!1341938 d!1342538))

(declare-fun b!4427729 () Bool)

(declare-fun e!2756949 () List!49729)

(assert (=> b!4427729 (= e!2756949 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625985)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun c!753738 () Bool)

(declare-fun c!753737 () Bool)

(declare-fun call!308103 () List!49729)

(declare-fun c!753734 () Bool)

(declare-fun bm!308098 () Bool)

(assert (=> bm!308098 (= call!308103 ($colon$colon!786 (ite c!753737 (t!356667 (toList!3506 lt!1625985)) (ite c!753738 (toList!3506 lt!1625985) e!2756949)) (ite (or c!753737 c!753738) (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974)) (ite c!753734 (h!55294 (toList!3506 lt!1625985)) (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))))

(declare-fun b!4427730 () Bool)

(declare-fun e!2756950 () List!49729)

(declare-fun call!308104 () List!49729)

(assert (=> b!4427730 (= e!2756950 call!308104)))

(declare-fun bm!308099 () Bool)

(declare-fun call!308105 () List!49729)

(assert (=> bm!308099 (= call!308104 call!308105)))

(declare-fun c!753735 () Bool)

(assert (=> bm!308099 (= c!753735 c!753734)))

(declare-fun b!4427732 () Bool)

(declare-fun e!2756955 () List!49729)

(assert (=> b!4427732 (= e!2756955 call!308103)))

(declare-fun lt!1626927 () List!49732)

(declare-fun call!308106 () List!49732)

(assert (=> b!4427732 (= lt!1626927 call!308106)))

(declare-fun lt!1626928 () Unit!82123)

(assert (=> b!4427732 (= lt!1626928 (lemmaSubseqRefl!100 lt!1626927))))

(assert (=> b!4427732 (subseq!616 lt!1626927 lt!1626927)))

(declare-fun lt!1626930 () Unit!82123)

(assert (=> b!4427732 (= lt!1626930 lt!1626928)))

(declare-fun bm!308100 () Bool)

(assert (=> bm!308100 (= call!308105 call!308103)))

(declare-fun b!4427733 () Bool)

(declare-fun e!2756952 () Unit!82123)

(declare-fun Unit!82342 () Unit!82123)

(assert (=> b!4427733 (= e!2756952 Unit!82342)))

(declare-fun b!4427734 () Bool)

(declare-fun e!2756953 () List!49729)

(assert (=> b!4427734 (= e!2756955 e!2756953)))

(declare-fun res!1830884 () Bool)

(assert (=> b!4427734 (= res!1830884 ((_ is Cons!49605) (toList!3506 lt!1625985)))))

(declare-fun e!2756951 () Bool)

(assert (=> b!4427734 (=> (not res!1830884) (not e!2756951))))

(assert (=> b!4427734 (= c!753738 e!2756951)))

(declare-fun b!4427735 () Bool)

(assert (=> b!4427735 (= e!2756953 call!308105)))

(declare-fun b!4427736 () Bool)

(declare-fun res!1830883 () Bool)

(declare-fun e!2756954 () Bool)

(assert (=> b!4427736 (=> (not res!1830883) (not e!2756954))))

(declare-fun lt!1626926 () List!49729)

(assert (=> b!4427736 (= res!1830883 (containsKey!1133 lt!1626926 (_1!28001 lt!1625974)))))

(declare-fun b!4427731 () Bool)

(assert (=> b!4427731 (= e!2756951 (not (containsKey!1133 (toList!3506 lt!1625985) (_1!28001 lt!1625974))))))

(declare-fun d!1342540 () Bool)

(assert (=> d!1342540 e!2756954))

(declare-fun res!1830885 () Bool)

(assert (=> d!1342540 (=> (not res!1830885) (not e!2756954))))

(assert (=> d!1342540 (= res!1830885 (invariantList!809 lt!1626926))))

(assert (=> d!1342540 (= lt!1626926 e!2756955)))

(assert (=> d!1342540 (= c!753737 (and ((_ is Cons!49605) (toList!3506 lt!1625985)) (= (_1!28001 (h!55294 (toList!3506 lt!1625985))) (_1!28001 lt!1625974))))))

(assert (=> d!1342540 (invariantList!809 (toList!3506 lt!1625985))))

(assert (=> d!1342540 (= (insertNoDuplicatedKeys!199 (toList!3506 lt!1625985) (_1!28001 lt!1625974) (_2!28001 lt!1625974)) lt!1626926)))

(declare-fun b!4427737 () Bool)

(assert (=> b!4427737 (= e!2756949 Nil!49605)))

(declare-fun b!4427738 () Bool)

(declare-fun lt!1626922 () List!49729)

(assert (=> b!4427738 (= e!2756950 lt!1626922)))

(assert (=> b!4427738 (= lt!1626922 call!308104)))

(declare-fun c!753736 () Bool)

(assert (=> b!4427738 (= c!753736 (containsKey!1133 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625985)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)) (_1!28001 (h!55294 (toList!3506 lt!1625985)))))))

(declare-fun lt!1626929 () Unit!82123)

(assert (=> b!4427738 (= lt!1626929 e!2756952)))

(declare-fun bm!308101 () Bool)

(declare-fun lt!1626925 () List!49729)

(assert (=> bm!308101 (= call!308106 (getKeysList!256 (ite c!753737 (toList!3506 lt!1625985) lt!1626925)))))

(declare-fun b!4427739 () Bool)

(assert (=> b!4427739 false))

(declare-fun lt!1626921 () Unit!82123)

(declare-fun lt!1626924 () Unit!82123)

(assert (=> b!4427739 (= lt!1626921 lt!1626924)))

(assert (=> b!4427739 (containsKey!1133 (t!356667 (toList!3506 lt!1625985)) (_1!28001 (h!55294 (toList!3506 lt!1625985))))))

(assert (=> b!4427739 (= lt!1626924 (lemmaInGetKeysListThenContainsKey!254 (t!356667 (toList!3506 lt!1625985)) (_1!28001 (h!55294 (toList!3506 lt!1625985)))))))

(declare-fun lt!1626920 () Unit!82123)

(declare-fun lt!1626923 () Unit!82123)

(assert (=> b!4427739 (= lt!1626920 lt!1626923)))

(assert (=> b!4427739 (contains!12121 call!308106 (_1!28001 (h!55294 (toList!3506 lt!1625985))))))

(assert (=> b!4427739 (= lt!1626923 (lemmaInListThenGetKeysListContains!253 lt!1626925 (_1!28001 (h!55294 (toList!3506 lt!1625985)))))))

(assert (=> b!4427739 (= lt!1626925 (insertNoDuplicatedKeys!199 (t!356667 (toList!3506 lt!1625985)) (_1!28001 lt!1625974) (_2!28001 lt!1625974)))))

(declare-fun Unit!82343 () Unit!82123)

(assert (=> b!4427739 (= e!2756952 Unit!82343)))

(declare-fun b!4427740 () Bool)

(declare-fun res!1830882 () Bool)

(assert (=> b!4427740 (=> (not res!1830882) (not e!2756954))))

(assert (=> b!4427740 (= res!1830882 (contains!12118 lt!1626926 (tuple2!49415 (_1!28001 lt!1625974) (_2!28001 lt!1625974))))))

(declare-fun b!4427741 () Bool)

(assert (=> b!4427741 (= e!2756954 (= (content!7963 (getKeysList!256 lt!1626926)) ((_ map or) (content!7963 (getKeysList!256 (toList!3506 lt!1625985))) (store ((as const (Array K!10970 Bool)) false) (_1!28001 lt!1625974) true))))))

(declare-fun b!4427742 () Bool)

(assert (=> b!4427742 (= c!753734 ((_ is Cons!49605) (toList!3506 lt!1625985)))))

(assert (=> b!4427742 (= e!2756953 e!2756950)))

(assert (= (and d!1342540 c!753737) b!4427732))

(assert (= (and d!1342540 (not c!753737)) b!4427734))

(assert (= (and b!4427734 res!1830884) b!4427731))

(assert (= (and b!4427734 c!753738) b!4427735))

(assert (= (and b!4427734 (not c!753738)) b!4427742))

(assert (= (and b!4427742 c!753734) b!4427738))

(assert (= (and b!4427742 (not c!753734)) b!4427730))

(assert (= (and b!4427738 c!753736) b!4427739))

(assert (= (and b!4427738 (not c!753736)) b!4427733))

(assert (= (or b!4427738 b!4427730) bm!308099))

(assert (= (and bm!308099 c!753735) b!4427729))

(assert (= (and bm!308099 (not c!753735)) b!4427737))

(assert (= (or b!4427735 bm!308099) bm!308100))

(assert (= (or b!4427732 b!4427739) bm!308101))

(assert (= (or b!4427732 bm!308100) bm!308098))

(assert (= (and d!1342540 res!1830885) b!4427736))

(assert (= (and b!4427736 res!1830883) b!4427740))

(assert (= (and b!4427740 res!1830882) b!4427741))

(declare-fun m!5110257 () Bool)

(assert (=> b!4427739 m!5110257))

(declare-fun m!5110259 () Bool)

(assert (=> b!4427739 m!5110259))

(declare-fun m!5110261 () Bool)

(assert (=> b!4427739 m!5110261))

(declare-fun m!5110263 () Bool)

(assert (=> b!4427739 m!5110263))

(declare-fun m!5110265 () Bool)

(assert (=> b!4427739 m!5110265))

(declare-fun m!5110267 () Bool)

(assert (=> b!4427740 m!5110267))

(declare-fun m!5110269 () Bool)

(assert (=> b!4427731 m!5110269))

(declare-fun m!5110271 () Bool)

(assert (=> d!1342540 m!5110271))

(declare-fun m!5110273 () Bool)

(assert (=> d!1342540 m!5110273))

(declare-fun m!5110275 () Bool)

(assert (=> bm!308101 m!5110275))

(declare-fun m!5110277 () Bool)

(assert (=> b!4427741 m!5110277))

(declare-fun m!5110279 () Bool)

(assert (=> b!4427741 m!5110279))

(assert (=> b!4427741 m!5109029))

(assert (=> b!4427741 m!5110277))

(declare-fun m!5110281 () Bool)

(assert (=> b!4427741 m!5110281))

(declare-fun m!5110283 () Bool)

(assert (=> b!4427741 m!5110283))

(assert (=> b!4427741 m!5110281))

(declare-fun m!5110285 () Bool)

(assert (=> b!4427732 m!5110285))

(declare-fun m!5110287 () Bool)

(assert (=> b!4427732 m!5110287))

(declare-fun m!5110289 () Bool)

(assert (=> b!4427736 m!5110289))

(assert (=> b!4427738 m!5110261))

(assert (=> b!4427738 m!5110261))

(declare-fun m!5110291 () Bool)

(assert (=> b!4427738 m!5110291))

(declare-fun m!5110293 () Bool)

(assert (=> bm!308098 m!5110293))

(assert (=> b!4427729 m!5110261))

(assert (=> d!1341938 d!1342540))

(declare-fun bs!758696 () Bool)

(declare-fun b!4427744 () Bool)

(assert (= bs!758696 (and b!4427744 d!1342400)))

(declare-fun lambda!154466 () Int)

(assert (=> bs!758696 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626750) (= lambda!154466 lambda!154442))))

(declare-fun bs!758697 () Bool)

(assert (= bs!758697 (and b!4427744 b!4426790)))

(assert (=> bs!758697 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154466 lambda!154320))))

(declare-fun bs!758698 () Bool)

(assert (= bs!758698 (and b!4427744 b!4427522)))

(assert (=> bs!758698 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154466 lambda!154439))))

(declare-fun bs!758699 () Bool)

(assert (= bs!758699 (and b!4427744 b!4427575)))

(assert (=> bs!758699 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154466 lambda!154444))))

(declare-fun bs!758700 () Bool)

(assert (= bs!758700 (and b!4427744 b!4426752)))

(assert (=> bs!758700 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626164) (= lambda!154466 lambda!154313))))

(declare-fun bs!758701 () Bool)

(assert (= bs!758701 (and b!4427744 b!4427397)))

(assert (=> bs!758701 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626645) (= lambda!154466 lambda!154421))))

(declare-fun bs!758702 () Bool)

(assert (= bs!758702 (and b!4427744 b!4427604)))

(assert (=> bs!758702 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154466 lambda!154452))))

(assert (=> bs!758699 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626785) (= lambda!154466 lambda!154445))))

(declare-fun bs!758703 () Bool)

(assert (= bs!758703 (and b!4427744 d!1342124)))

(assert (=> bs!758703 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626371) (= lambda!154466 lambda!154362))))

(declare-fun bs!758704 () Bool)

(assert (= bs!758704 (and b!4427744 b!4426998)))

(assert (=> bs!758704 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154466 lambda!154360))))

(declare-fun bs!758705 () Bool)

(assert (= bs!758705 (and b!4427744 d!1342374)))

(assert (=> bs!758705 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154466 lambda!154430))))

(declare-fun bs!758706 () Bool)

(assert (= bs!758706 (and b!4427744 b!4426751)))

(assert (=> bs!758706 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154466 lambda!154311))))

(declare-fun bs!758707 () Bool)

(assert (= bs!758707 (and b!4427744 d!1342318)))

(assert (=> bs!758707 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626646) (= lambda!154466 lambda!154422))))

(declare-fun bs!758708 () Bool)

(assert (= bs!758708 (and b!4427744 d!1342432)))

(assert (=> bs!758708 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626786) (= lambda!154466 lambda!154448))))

(assert (=> bs!758704 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626370) (= lambda!154466 lambda!154361))))

(declare-fun bs!758709 () Bool)

(assert (= bs!758709 (and b!4427744 d!1341994)))

(assert (=> bs!758709 (not (= lambda!154466 lambda!154317))))

(declare-fun bs!758710 () Bool)

(assert (= bs!758710 (and b!4427744 b!4427523)))

(assert (=> bs!758710 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626749) (= lambda!154466 lambda!154441))))

(declare-fun bs!758711 () Bool)

(assert (= bs!758711 (and b!4427744 b!4427396)))

(assert (=> bs!758711 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154466 lambda!154418))))

(declare-fun bs!758712 () Bool)

(assert (= bs!758712 (and b!4427744 d!1341960)))

(assert (=> bs!758712 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626165) (= lambda!154466 lambda!154314))))

(declare-fun bs!758713 () Bool)

(assert (= bs!758713 (and b!4427744 b!4427309)))

(assert (=> bs!758713 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626533) (= lambda!154466 lambda!154402))))

(assert (=> bs!758701 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154466 lambda!154420))))

(declare-fun bs!758714 () Bool)

(assert (= bs!758714 (and b!4427744 d!1341998)))

(assert (=> bs!758714 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626213) (= lambda!154466 lambda!154321))))

(declare-fun bs!758715 () Bool)

(assert (= bs!758715 (and b!4427744 d!1342304)))

(assert (=> bs!758715 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154466 lambda!154416))))

(declare-fun bs!758716 () Bool)

(assert (= bs!758716 (and b!4427744 b!4426997)))

(assert (=> bs!758716 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154466 lambda!154359))))

(declare-fun bs!758717 () Bool)

(assert (= bs!758717 (and b!4427744 b!4427605)))

(assert (=> bs!758717 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626830) (= lambda!154466 lambda!154455))))

(assert (=> bs!758697 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154466 lambda!154319))))

(declare-fun bs!758718 () Bool)

(assert (= bs!758718 (and b!4427744 d!1342448)))

(assert (=> bs!758718 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626831) (= lambda!154466 lambda!154456))))

(assert (=> bs!758717 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154466 lambda!154454))))

(declare-fun bs!758719 () Bool)

(assert (= bs!758719 (and b!4427744 b!4427574)))

(assert (=> bs!758719 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154466 lambda!154443))))

(declare-fun bs!758720 () Bool)

(assert (= bs!758720 (and b!4427744 b!4426789)))

(assert (=> bs!758720 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154466 lambda!154318))))

(declare-fun bs!758721 () Bool)

(assert (= bs!758721 (and b!4427744 b!4427308)))

(assert (=> bs!758721 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154466 lambda!154397))))

(assert (=> bs!758713 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154466 lambda!154400))))

(assert (=> bs!758710 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154466 lambda!154440))))

(assert (=> bs!758700 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154466 lambda!154312))))

(declare-fun bs!758722 () Bool)

(assert (= bs!758722 (and b!4427744 d!1342254)))

(assert (=> bs!758722 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626534) (= lambda!154466 lambda!154403))))

(assert (=> b!4427744 true))

(declare-fun bs!758723 () Bool)

(declare-fun b!4427745 () Bool)

(assert (= bs!758723 (and b!4427745 d!1342400)))

(declare-fun lambda!154467 () Int)

(assert (=> bs!758723 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626750) (= lambda!154467 lambda!154442))))

(declare-fun bs!758724 () Bool)

(assert (= bs!758724 (and b!4427745 b!4426790)))

(assert (=> bs!758724 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154467 lambda!154320))))

(declare-fun bs!758725 () Bool)

(assert (= bs!758725 (and b!4427745 b!4427744)))

(assert (=> bs!758725 (= lambda!154467 lambda!154466)))

(declare-fun bs!758726 () Bool)

(assert (= bs!758726 (and b!4427745 b!4427522)))

(assert (=> bs!758726 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154467 lambda!154439))))

(declare-fun bs!758727 () Bool)

(assert (= bs!758727 (and b!4427745 b!4427575)))

(assert (=> bs!758727 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154467 lambda!154444))))

(declare-fun bs!758728 () Bool)

(assert (= bs!758728 (and b!4427745 b!4426752)))

(assert (=> bs!758728 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626164) (= lambda!154467 lambda!154313))))

(declare-fun bs!758729 () Bool)

(assert (= bs!758729 (and b!4427745 b!4427397)))

(assert (=> bs!758729 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626645) (= lambda!154467 lambda!154421))))

(declare-fun bs!758730 () Bool)

(assert (= bs!758730 (and b!4427745 b!4427604)))

(assert (=> bs!758730 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154467 lambda!154452))))

(assert (=> bs!758727 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626785) (= lambda!154467 lambda!154445))))

(declare-fun bs!758731 () Bool)

(assert (= bs!758731 (and b!4427745 d!1342124)))

(assert (=> bs!758731 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626371) (= lambda!154467 lambda!154362))))

(declare-fun bs!758732 () Bool)

(assert (= bs!758732 (and b!4427745 b!4426998)))

(assert (=> bs!758732 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154467 lambda!154360))))

(declare-fun bs!758733 () Bool)

(assert (= bs!758733 (and b!4427745 d!1342374)))

(assert (=> bs!758733 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154467 lambda!154430))))

(declare-fun bs!758734 () Bool)

(assert (= bs!758734 (and b!4427745 b!4426751)))

(assert (=> bs!758734 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154467 lambda!154311))))

(declare-fun bs!758735 () Bool)

(assert (= bs!758735 (and b!4427745 d!1342318)))

(assert (=> bs!758735 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626646) (= lambda!154467 lambda!154422))))

(declare-fun bs!758736 () Bool)

(assert (= bs!758736 (and b!4427745 d!1342432)))

(assert (=> bs!758736 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626786) (= lambda!154467 lambda!154448))))

(assert (=> bs!758732 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626370) (= lambda!154467 lambda!154361))))

(declare-fun bs!758737 () Bool)

(assert (= bs!758737 (and b!4427745 d!1341994)))

(assert (=> bs!758737 (not (= lambda!154467 lambda!154317))))

(declare-fun bs!758738 () Bool)

(assert (= bs!758738 (and b!4427745 b!4427523)))

(assert (=> bs!758738 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626749) (= lambda!154467 lambda!154441))))

(declare-fun bs!758739 () Bool)

(assert (= bs!758739 (and b!4427745 b!4427396)))

(assert (=> bs!758739 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154467 lambda!154418))))

(declare-fun bs!758740 () Bool)

(assert (= bs!758740 (and b!4427745 d!1341960)))

(assert (=> bs!758740 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626165) (= lambda!154467 lambda!154314))))

(declare-fun bs!758741 () Bool)

(assert (= bs!758741 (and b!4427745 b!4427309)))

(assert (=> bs!758741 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626533) (= lambda!154467 lambda!154402))))

(assert (=> bs!758729 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154467 lambda!154420))))

(declare-fun bs!758742 () Bool)

(assert (= bs!758742 (and b!4427745 d!1341998)))

(assert (=> bs!758742 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626213) (= lambda!154467 lambda!154321))))

(declare-fun bs!758743 () Bool)

(assert (= bs!758743 (and b!4427745 d!1342304)))

(assert (=> bs!758743 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626212) (= lambda!154467 lambda!154416))))

(declare-fun bs!758744 () Bool)

(assert (= bs!758744 (and b!4427745 b!4426997)))

(assert (=> bs!758744 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154467 lambda!154359))))

(declare-fun bs!758745 () Bool)

(assert (= bs!758745 (and b!4427745 b!4427605)))

(assert (=> bs!758745 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626830) (= lambda!154467 lambda!154455))))

(assert (=> bs!758724 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154467 lambda!154319))))

(declare-fun bs!758746 () Bool)

(assert (= bs!758746 (and b!4427745 d!1342448)))

(assert (=> bs!758746 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626831) (= lambda!154467 lambda!154456))))

(assert (=> bs!758745 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154467 lambda!154454))))

(declare-fun bs!758747 () Bool)

(assert (= bs!758747 (and b!4427745 b!4427574)))

(assert (=> bs!758747 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154467 lambda!154443))))

(declare-fun bs!758748 () Bool)

(assert (= bs!758748 (and b!4427745 b!4426789)))

(assert (=> bs!758748 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625969) (= lambda!154467 lambda!154318))))

(declare-fun bs!758749 () Bool)

(assert (= bs!758749 (and b!4427745 b!4427308)))

(assert (=> bs!758749 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154467 lambda!154397))))

(assert (=> bs!758741 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154467 lambda!154400))))

(assert (=> bs!758738 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154467 lambda!154440))))

(assert (=> bs!758728 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1625979) (= lambda!154467 lambda!154312))))

(declare-fun bs!758751 () Bool)

(assert (= bs!758751 (and b!4427745 d!1342254)))

(assert (=> bs!758751 (= (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626534) (= lambda!154467 lambda!154403))))

(assert (=> b!4427745 true))

(declare-fun lt!1626931 () ListMap!2749)

(declare-fun lambda!154468 () Int)

(assert (=> bs!758723 (= (= lt!1626931 lt!1626750) (= lambda!154468 lambda!154442))))

(assert (=> bs!758724 (= (= lt!1626931 lt!1626212) (= lambda!154468 lambda!154320))))

(assert (=> bs!758725 (= (= lt!1626931 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154468 lambda!154466))))

(assert (=> bs!758726 (= (= lt!1626931 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154468 lambda!154439))))

(assert (=> bs!758727 (= (= lt!1626931 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154468 lambda!154444))))

(assert (=> bs!758728 (= (= lt!1626931 lt!1626164) (= lambda!154468 lambda!154313))))

(assert (=> bs!758729 (= (= lt!1626931 lt!1626645) (= lambda!154468 lambda!154421))))

(assert (=> b!4427745 (= (= lt!1626931 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154468 lambda!154467))))

(assert (=> bs!758730 (= (= lt!1626931 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154468 lambda!154452))))

(assert (=> bs!758727 (= (= lt!1626931 lt!1626785) (= lambda!154468 lambda!154445))))

(assert (=> bs!758731 (= (= lt!1626931 lt!1626371) (= lambda!154468 lambda!154362))))

(assert (=> bs!758732 (= (= lt!1626931 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154468 lambda!154360))))

(assert (=> bs!758733 (= (= lt!1626931 lt!1625979) (= lambda!154468 lambda!154430))))

(assert (=> bs!758734 (= (= lt!1626931 lt!1625979) (= lambda!154468 lambda!154311))))

(assert (=> bs!758735 (= (= lt!1626931 lt!1626646) (= lambda!154468 lambda!154422))))

(assert (=> bs!758736 (= (= lt!1626931 lt!1626786) (= lambda!154468 lambda!154448))))

(assert (=> bs!758732 (= (= lt!1626931 lt!1626370) (= lambda!154468 lambda!154361))))

(assert (=> bs!758737 (not (= lambda!154468 lambda!154317))))

(assert (=> bs!758738 (= (= lt!1626931 lt!1626749) (= lambda!154468 lambda!154441))))

(assert (=> bs!758739 (= (= lt!1626931 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154468 lambda!154418))))

(assert (=> bs!758740 (= (= lt!1626931 lt!1626165) (= lambda!154468 lambda!154314))))

(assert (=> bs!758741 (= (= lt!1626931 lt!1626533) (= lambda!154468 lambda!154402))))

(assert (=> bs!758729 (= (= lt!1626931 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154468 lambda!154420))))

(assert (=> bs!758742 (= (= lt!1626931 lt!1626213) (= lambda!154468 lambda!154321))))

(assert (=> bs!758743 (= (= lt!1626931 lt!1626212) (= lambda!154468 lambda!154416))))

(assert (=> bs!758744 (= (= lt!1626931 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154468 lambda!154359))))

(assert (=> bs!758745 (= (= lt!1626931 lt!1626830) (= lambda!154468 lambda!154455))))

(assert (=> bs!758724 (= (= lt!1626931 lt!1625969) (= lambda!154468 lambda!154319))))

(assert (=> bs!758746 (= (= lt!1626931 lt!1626831) (= lambda!154468 lambda!154456))))

(assert (=> bs!758745 (= (= lt!1626931 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154468 lambda!154454))))

(assert (=> bs!758747 (= (= lt!1626931 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154468 lambda!154443))))

(assert (=> bs!758748 (= (= lt!1626931 lt!1625969) (= lambda!154468 lambda!154318))))

(assert (=> bs!758749 (= (= lt!1626931 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154468 lambda!154397))))

(assert (=> bs!758741 (= (= lt!1626931 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154468 lambda!154400))))

(assert (=> bs!758738 (= (= lt!1626931 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154468 lambda!154440))))

(assert (=> bs!758728 (= (= lt!1626931 lt!1625979) (= lambda!154468 lambda!154312))))

(assert (=> bs!758751 (= (= lt!1626931 lt!1626534) (= lambda!154468 lambda!154403))))

(assert (=> b!4427745 true))

(declare-fun bs!758754 () Bool)

(declare-fun d!1342544 () Bool)

(assert (= bs!758754 (and d!1342544 d!1342400)))

(declare-fun lt!1626932 () ListMap!2749)

(declare-fun lambda!154469 () Int)

(assert (=> bs!758754 (= (= lt!1626932 lt!1626750) (= lambda!154469 lambda!154442))))

(declare-fun bs!758755 () Bool)

(assert (= bs!758755 (and d!1342544 b!4426790)))

(assert (=> bs!758755 (= (= lt!1626932 lt!1626212) (= lambda!154469 lambda!154320))))

(declare-fun bs!758756 () Bool)

(assert (= bs!758756 (and d!1342544 b!4427744)))

(assert (=> bs!758756 (= (= lt!1626932 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154469 lambda!154466))))

(declare-fun bs!758757 () Bool)

(assert (= bs!758757 (and d!1342544 b!4427522)))

(assert (=> bs!758757 (= (= lt!1626932 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154469 lambda!154439))))

(declare-fun bs!758759 () Bool)

(assert (= bs!758759 (and d!1342544 b!4427575)))

(assert (=> bs!758759 (= (= lt!1626932 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154469 lambda!154444))))

(declare-fun bs!758760 () Bool)

(assert (= bs!758760 (and d!1342544 b!4426752)))

(assert (=> bs!758760 (= (= lt!1626932 lt!1626164) (= lambda!154469 lambda!154313))))

(declare-fun bs!758761 () Bool)

(assert (= bs!758761 (and d!1342544 b!4427397)))

(assert (=> bs!758761 (= (= lt!1626932 lt!1626645) (= lambda!154469 lambda!154421))))

(declare-fun bs!758762 () Bool)

(assert (= bs!758762 (and d!1342544 b!4427745)))

(assert (=> bs!758762 (= (= lt!1626932 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154469 lambda!154467))))

(declare-fun bs!758763 () Bool)

(assert (= bs!758763 (and d!1342544 b!4427604)))

(assert (=> bs!758763 (= (= lt!1626932 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154469 lambda!154452))))

(assert (=> bs!758759 (= (= lt!1626932 lt!1626785) (= lambda!154469 lambda!154445))))

(declare-fun bs!758764 () Bool)

(assert (= bs!758764 (and d!1342544 d!1342124)))

(assert (=> bs!758764 (= (= lt!1626932 lt!1626371) (= lambda!154469 lambda!154362))))

(declare-fun bs!758765 () Bool)

(assert (= bs!758765 (and d!1342544 b!4426998)))

(assert (=> bs!758765 (= (= lt!1626932 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154469 lambda!154360))))

(declare-fun bs!758766 () Bool)

(assert (= bs!758766 (and d!1342544 d!1342374)))

(assert (=> bs!758766 (= (= lt!1626932 lt!1625979) (= lambda!154469 lambda!154430))))

(declare-fun bs!758767 () Bool)

(assert (= bs!758767 (and d!1342544 b!4426751)))

(assert (=> bs!758767 (= (= lt!1626932 lt!1625979) (= lambda!154469 lambda!154311))))

(declare-fun bs!758768 () Bool)

(assert (= bs!758768 (and d!1342544 d!1342318)))

(assert (=> bs!758768 (= (= lt!1626932 lt!1626646) (= lambda!154469 lambda!154422))))

(assert (=> bs!758762 (= (= lt!1626932 lt!1626931) (= lambda!154469 lambda!154468))))

(declare-fun bs!758769 () Bool)

(assert (= bs!758769 (and d!1342544 d!1342432)))

(assert (=> bs!758769 (= (= lt!1626932 lt!1626786) (= lambda!154469 lambda!154448))))

(assert (=> bs!758765 (= (= lt!1626932 lt!1626370) (= lambda!154469 lambda!154361))))

(declare-fun bs!758770 () Bool)

(assert (= bs!758770 (and d!1342544 d!1341994)))

(assert (=> bs!758770 (not (= lambda!154469 lambda!154317))))

(declare-fun bs!758771 () Bool)

(assert (= bs!758771 (and d!1342544 b!4427523)))

(assert (=> bs!758771 (= (= lt!1626932 lt!1626749) (= lambda!154469 lambda!154441))))

(declare-fun bs!758772 () Bool)

(assert (= bs!758772 (and d!1342544 b!4427396)))

(assert (=> bs!758772 (= (= lt!1626932 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154469 lambda!154418))))

(declare-fun bs!758773 () Bool)

(assert (= bs!758773 (and d!1342544 d!1341960)))

(assert (=> bs!758773 (= (= lt!1626932 lt!1626165) (= lambda!154469 lambda!154314))))

(declare-fun bs!758774 () Bool)

(assert (= bs!758774 (and d!1342544 b!4427309)))

(assert (=> bs!758774 (= (= lt!1626932 lt!1626533) (= lambda!154469 lambda!154402))))

(assert (=> bs!758761 (= (= lt!1626932 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154469 lambda!154420))))

(declare-fun bs!758775 () Bool)

(assert (= bs!758775 (and d!1342544 d!1341998)))

(assert (=> bs!758775 (= (= lt!1626932 lt!1626213) (= lambda!154469 lambda!154321))))

(declare-fun bs!758776 () Bool)

(assert (= bs!758776 (and d!1342544 d!1342304)))

(assert (=> bs!758776 (= (= lt!1626932 lt!1626212) (= lambda!154469 lambda!154416))))

(declare-fun bs!758777 () Bool)

(assert (= bs!758777 (and d!1342544 b!4426997)))

(assert (=> bs!758777 (= (= lt!1626932 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154469 lambda!154359))))

(declare-fun bs!758778 () Bool)

(assert (= bs!758778 (and d!1342544 b!4427605)))

(assert (=> bs!758778 (= (= lt!1626932 lt!1626830) (= lambda!154469 lambda!154455))))

(assert (=> bs!758755 (= (= lt!1626932 lt!1625969) (= lambda!154469 lambda!154319))))

(declare-fun bs!758779 () Bool)

(assert (= bs!758779 (and d!1342544 d!1342448)))

(assert (=> bs!758779 (= (= lt!1626932 lt!1626831) (= lambda!154469 lambda!154456))))

(assert (=> bs!758778 (= (= lt!1626932 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154469 lambda!154454))))

(declare-fun bs!758780 () Bool)

(assert (= bs!758780 (and d!1342544 b!4427574)))

(assert (=> bs!758780 (= (= lt!1626932 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154469 lambda!154443))))

(declare-fun bs!758781 () Bool)

(assert (= bs!758781 (and d!1342544 b!4426789)))

(assert (=> bs!758781 (= (= lt!1626932 lt!1625969) (= lambda!154469 lambda!154318))))

(declare-fun bs!758782 () Bool)

(assert (= bs!758782 (and d!1342544 b!4427308)))

(assert (=> bs!758782 (= (= lt!1626932 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154469 lambda!154397))))

(assert (=> bs!758774 (= (= lt!1626932 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154469 lambda!154400))))

(assert (=> bs!758771 (= (= lt!1626932 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154469 lambda!154440))))

(assert (=> bs!758760 (= (= lt!1626932 lt!1625979) (= lambda!154469 lambda!154312))))

(declare-fun bs!758783 () Bool)

(assert (= bs!758783 (and d!1342544 d!1342254)))

(assert (=> bs!758783 (= (= lt!1626932 lt!1626534) (= lambda!154469 lambda!154403))))

(assert (=> d!1342544 true))

(declare-fun e!2756957 () Bool)

(assert (=> d!1342544 e!2756957))

(declare-fun res!1830886 () Bool)

(assert (=> d!1342544 (=> (not res!1830886) (not e!2756957))))

(assert (=> d!1342544 (= res!1830886 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154469))))

(declare-fun e!2756956 () ListMap!2749)

(assert (=> d!1342544 (= lt!1626932 e!2756956)))

(declare-fun c!753739 () Bool)

(assert (=> d!1342544 (= c!753739 ((_ is Nil!49605) (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> d!1342544 (noDuplicateKeys!759 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342544 (= (addToMapMapFromBucket!396 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626932)))

(declare-fun b!4427743 () Bool)

(declare-fun e!2756958 () Bool)

(assert (=> b!4427743 (= e!2756958 (forall!9578 (toList!3506 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lambda!154468))))

(assert (=> b!4427744 (= e!2756956 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun lt!1626945 () Unit!82123)

(declare-fun call!308107 () Unit!82123)

(assert (=> b!4427744 (= lt!1626945 call!308107)))

(declare-fun call!308109 () Bool)

(assert (=> b!4427744 call!308109))

(declare-fun lt!1626938 () Unit!82123)

(assert (=> b!4427744 (= lt!1626938 lt!1626945)))

(declare-fun call!308108 () Bool)

(assert (=> b!4427744 call!308108))

(declare-fun lt!1626944 () Unit!82123)

(declare-fun Unit!82355 () Unit!82123)

(assert (=> b!4427744 (= lt!1626944 Unit!82355)))

(declare-fun bm!308102 () Bool)

(assert (=> bm!308102 (= call!308109 (forall!9578 (toList!3506 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (ite c!753739 lambda!154466 lambda!154467)))))

(declare-fun bm!308103 () Bool)

(assert (=> bm!308103 (= call!308107 (lemmaContainsAllItsOwnKeys!177 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427745 (= e!2756956 lt!1626931)))

(declare-fun lt!1626951 () ListMap!2749)

(assert (=> b!4427745 (= lt!1626951 (+!1103 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427745 (= lt!1626931 (addToMapMapFromBucket!396 (t!356667 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (+!1103 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun lt!1626947 () Unit!82123)

(assert (=> b!4427745 (= lt!1626947 call!308107)))

(assert (=> b!4427745 call!308109))

(declare-fun lt!1626949 () Unit!82123)

(assert (=> b!4427745 (= lt!1626949 lt!1626947)))

(assert (=> b!4427745 (forall!9578 (toList!3506 lt!1626951) lambda!154468)))

(declare-fun lt!1626936 () Unit!82123)

(declare-fun Unit!82356 () Unit!82123)

(assert (=> b!4427745 (= lt!1626936 Unit!82356)))

(assert (=> b!4427745 (forall!9578 (t!356667 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lambda!154468)))

(declare-fun lt!1626935 () Unit!82123)

(declare-fun Unit!82357 () Unit!82123)

(assert (=> b!4427745 (= lt!1626935 Unit!82357)))

(declare-fun lt!1626943 () Unit!82123)

(declare-fun Unit!82358 () Unit!82123)

(assert (=> b!4427745 (= lt!1626943 Unit!82358)))

(declare-fun lt!1626948 () Unit!82123)

(assert (=> b!4427745 (= lt!1626948 (forallContained!2097 (toList!3506 lt!1626951) lambda!154468 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427745 (contains!12114 lt!1626951 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626937 () Unit!82123)

(declare-fun Unit!82359 () Unit!82123)

(assert (=> b!4427745 (= lt!1626937 Unit!82359)))

(assert (=> b!4427745 (contains!12114 lt!1626931 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626941 () Unit!82123)

(declare-fun Unit!82360 () Unit!82123)

(assert (=> b!4427745 (= lt!1626941 Unit!82360)))

(assert (=> b!4427745 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154468)))

(declare-fun lt!1626939 () Unit!82123)

(declare-fun Unit!82361 () Unit!82123)

(assert (=> b!4427745 (= lt!1626939 Unit!82361)))

(assert (=> b!4427745 (forall!9578 (toList!3506 lt!1626951) lambda!154468)))

(declare-fun lt!1626942 () Unit!82123)

(declare-fun Unit!82362 () Unit!82123)

(assert (=> b!4427745 (= lt!1626942 Unit!82362)))

(declare-fun lt!1626940 () Unit!82123)

(declare-fun Unit!82363 () Unit!82123)

(assert (=> b!4427745 (= lt!1626940 Unit!82363)))

(declare-fun lt!1626950 () Unit!82123)

(assert (=> b!4427745 (= lt!1626950 (addForallContainsKeyThenBeforeAdding!177 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626931 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (_2!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(assert (=> b!4427745 call!308108))

(declare-fun lt!1626933 () Unit!82123)

(assert (=> b!4427745 (= lt!1626933 lt!1626950)))

(assert (=> b!4427745 (forall!9578 (toList!3506 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lambda!154468)))

(declare-fun lt!1626934 () Unit!82123)

(declare-fun Unit!82364 () Unit!82123)

(assert (=> b!4427745 (= lt!1626934 Unit!82364)))

(declare-fun res!1830887 () Bool)

(assert (=> b!4427745 (= res!1830887 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154468))))

(assert (=> b!4427745 (=> (not res!1830887) (not e!2756958))))

(assert (=> b!4427745 e!2756958))

(declare-fun lt!1626946 () Unit!82123)

(declare-fun Unit!82365 () Unit!82123)

(assert (=> b!4427745 (= lt!1626946 Unit!82365)))

(declare-fun b!4427746 () Bool)

(assert (=> b!4427746 (= e!2756957 (invariantList!809 (toList!3506 lt!1626932)))))

(declare-fun b!4427747 () Bool)

(declare-fun res!1830888 () Bool)

(assert (=> b!4427747 (=> (not res!1830888) (not e!2756957))))

(assert (=> b!4427747 (= res!1830888 (forall!9578 (toList!3506 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lambda!154469))))

(declare-fun bm!308104 () Bool)

(assert (=> bm!308104 (= call!308108 (forall!9578 (toList!3506 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (ite c!753739 lambda!154466 lambda!154468)))))

(assert (= (and d!1342544 c!753739) b!4427744))

(assert (= (and d!1342544 (not c!753739)) b!4427745))

(assert (= (and b!4427745 res!1830887) b!4427743))

(assert (= (or b!4427744 b!4427745) bm!308103))

(assert (= (or b!4427744 b!4427745) bm!308102))

(assert (= (or b!4427744 b!4427745) bm!308104))

(assert (= (and d!1342544 res!1830886) b!4427747))

(assert (= (and b!4427747 res!1830888) b!4427746))

(assert (=> bm!308103 m!5108315))

(declare-fun m!5110349 () Bool)

(assert (=> bm!308103 m!5110349))

(declare-fun m!5110353 () Bool)

(assert (=> bm!308104 m!5110353))

(declare-fun m!5110359 () Bool)

(assert (=> bm!308102 m!5110359))

(declare-fun m!5110365 () Bool)

(assert (=> b!4427747 m!5110365))

(declare-fun m!5110367 () Bool)

(assert (=> b!4427743 m!5110367))

(declare-fun m!5110369 () Bool)

(assert (=> d!1342544 m!5110369))

(assert (=> d!1342544 m!5109063))

(declare-fun m!5110373 () Bool)

(assert (=> b!4427746 m!5110373))

(declare-fun m!5110375 () Bool)

(assert (=> b!4427745 m!5110375))

(declare-fun m!5110381 () Bool)

(assert (=> b!4427745 m!5110381))

(assert (=> b!4427745 m!5110375))

(declare-fun m!5110385 () Bool)

(assert (=> b!4427745 m!5110385))

(assert (=> b!4427745 m!5110367))

(declare-fun m!5110387 () Bool)

(assert (=> b!4427745 m!5110387))

(declare-fun m!5110389 () Bool)

(assert (=> b!4427745 m!5110389))

(assert (=> b!4427745 m!5108315))

(declare-fun m!5110391 () Bool)

(assert (=> b!4427745 m!5110391))

(assert (=> b!4427745 m!5110387))

(declare-fun m!5110393 () Bool)

(assert (=> b!4427745 m!5110393))

(declare-fun m!5110395 () Bool)

(assert (=> b!4427745 m!5110395))

(declare-fun m!5110397 () Bool)

(assert (=> b!4427745 m!5110397))

(assert (=> b!4427745 m!5108315))

(assert (=> b!4427745 m!5110393))

(assert (=> b!4426752 d!1342544))

(declare-fun b!4427791 () Bool)

(declare-fun e!2756995 () Unit!82123)

(declare-fun e!2756993 () Unit!82123)

(assert (=> b!4427791 (= e!2756995 e!2756993)))

(declare-fun c!753751 () Bool)

(declare-fun call!308111 () Bool)

(assert (=> b!4427791 (= c!753751 call!308111)))

(declare-fun b!4427792 () Bool)

(declare-fun e!2756997 () List!49732)

(assert (=> b!4427792 (= e!2756997 (keys!16942 lt!1626184))))

(declare-fun b!4427793 () Bool)

(declare-fun e!2756994 () Bool)

(assert (=> b!4427793 (= e!2756994 (contains!12121 (keys!16942 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun d!1342584 () Bool)

(declare-fun e!2756998 () Bool)

(assert (=> d!1342584 e!2756998))

(declare-fun res!1830914 () Bool)

(assert (=> d!1342584 (=> res!1830914 e!2756998)))

(declare-fun e!2756996 () Bool)

(assert (=> d!1342584 (= res!1830914 e!2756996)))

(declare-fun res!1830916 () Bool)

(assert (=> d!1342584 (=> (not res!1830916) (not e!2756996))))

(declare-fun lt!1626963 () Bool)

(assert (=> d!1342584 (= res!1830916 (not lt!1626963))))

(declare-fun lt!1626966 () Bool)

(assert (=> d!1342584 (= lt!1626963 lt!1626966)))

(declare-fun lt!1626968 () Unit!82123)

(assert (=> d!1342584 (= lt!1626968 e!2756995)))

(declare-fun c!753749 () Bool)

(assert (=> d!1342584 (= c!753749 lt!1626966)))

(assert (=> d!1342584 (= lt!1626966 (containsKey!1133 (toList!3506 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342584 (= (contains!12114 lt!1626184 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626963)))

(declare-fun b!4427794 () Bool)

(assert (=> b!4427794 (= e!2756997 (getKeysList!256 (toList!3506 lt!1626184)))))

(declare-fun b!4427795 () Bool)

(assert (=> b!4427795 (= e!2756998 e!2756994)))

(declare-fun res!1830915 () Bool)

(assert (=> b!4427795 (=> (not res!1830915) (not e!2756994))))

(assert (=> b!4427795 (= res!1830915 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun b!4427796 () Bool)

(declare-fun Unit!82368 () Unit!82123)

(assert (=> b!4427796 (= e!2756993 Unit!82368)))

(declare-fun b!4427797 () Bool)

(declare-fun lt!1626962 () Unit!82123)

(assert (=> b!4427797 (= e!2756995 lt!1626962)))

(declare-fun lt!1626969 () Unit!82123)

(assert (=> b!4427797 (= lt!1626969 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427797 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626964 () Unit!82123)

(assert (=> b!4427797 (= lt!1626964 lt!1626969)))

(assert (=> b!4427797 (= lt!1626962 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427797 call!308111))

(declare-fun b!4427798 () Bool)

(assert (=> b!4427798 (= e!2756996 (not (contains!12121 (keys!16942 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun bm!308106 () Bool)

(assert (=> bm!308106 (= call!308111 (contains!12121 e!2756997 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun c!753750 () Bool)

(assert (=> bm!308106 (= c!753750 c!753749)))

(declare-fun b!4427799 () Bool)

(assert (=> b!4427799 false))

(declare-fun lt!1626965 () Unit!82123)

(declare-fun lt!1626967 () Unit!82123)

(assert (=> b!4427799 (= lt!1626965 lt!1626967)))

(assert (=> b!4427799 (containsKey!1133 (toList!3506 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427799 (= lt!1626967 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1626184) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun Unit!82369 () Unit!82123)

(assert (=> b!4427799 (= e!2756993 Unit!82369)))

(assert (= (and d!1342584 c!753749) b!4427797))

(assert (= (and d!1342584 (not c!753749)) b!4427791))

(assert (= (and b!4427791 c!753751) b!4427799))

(assert (= (and b!4427791 (not c!753751)) b!4427796))

(assert (= (or b!4427797 b!4427791) bm!308106))

(assert (= (and bm!308106 c!753750) b!4427794))

(assert (= (and bm!308106 (not c!753750)) b!4427792))

(assert (= (and d!1342584 res!1830916) b!4427798))

(assert (= (and d!1342584 (not res!1830914)) b!4427795))

(assert (= (and b!4427795 res!1830915) b!4427793))

(declare-fun m!5110401 () Bool)

(assert (=> b!4427799 m!5110401))

(declare-fun m!5110403 () Bool)

(assert (=> b!4427799 m!5110403))

(declare-fun m!5110405 () Bool)

(assert (=> b!4427793 m!5110405))

(assert (=> b!4427793 m!5110405))

(declare-fun m!5110407 () Bool)

(assert (=> b!4427793 m!5110407))

(assert (=> b!4427798 m!5110405))

(assert (=> b!4427798 m!5110405))

(assert (=> b!4427798 m!5110407))

(declare-fun m!5110409 () Bool)

(assert (=> b!4427794 m!5110409))

(declare-fun m!5110411 () Bool)

(assert (=> b!4427795 m!5110411))

(assert (=> b!4427795 m!5110411))

(declare-fun m!5110413 () Bool)

(assert (=> b!4427795 m!5110413))

(assert (=> d!1342584 m!5110401))

(declare-fun m!5110415 () Bool)

(assert (=> bm!308106 m!5110415))

(assert (=> b!4427792 m!5110405))

(declare-fun m!5110417 () Bool)

(assert (=> b!4427797 m!5110417))

(assert (=> b!4427797 m!5110411))

(assert (=> b!4427797 m!5110411))

(assert (=> b!4427797 m!5110413))

(declare-fun m!5110419 () Bool)

(assert (=> b!4427797 m!5110419))

(assert (=> b!4426752 d!1342584))

(assert (=> b!4426752 d!1342380))

(declare-fun d!1342586 () Bool)

(declare-fun res!1830917 () Bool)

(declare-fun e!2756999 () Bool)

(assert (=> d!1342586 (=> res!1830917 e!2756999)))

(assert (=> d!1342586 (= res!1830917 ((_ is Nil!49605) (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> d!1342586 (= (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154313) e!2756999)))

(declare-fun b!4427800 () Bool)

(declare-fun e!2757000 () Bool)

(assert (=> b!4427800 (= e!2756999 e!2757000)))

(declare-fun res!1830918 () Bool)

(assert (=> b!4427800 (=> (not res!1830918) (not e!2757000))))

(assert (=> b!4427800 (= res!1830918 (dynLambda!20851 lambda!154313 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun b!4427801 () Bool)

(assert (=> b!4427801 (= e!2757000 (forall!9578 (t!356667 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lambda!154313))))

(assert (= (and d!1342586 (not res!1830917)) b!4427800))

(assert (= (and b!4427800 res!1830918) b!4427801))

(declare-fun b_lambda!143329 () Bool)

(assert (=> (not b_lambda!143329) (not b!4427800)))

(declare-fun m!5110421 () Bool)

(assert (=> b!4427800 m!5110421))

(declare-fun m!5110423 () Bool)

(assert (=> b!4427801 m!5110423))

(assert (=> b!4426752 d!1342586))

(declare-fun d!1342588 () Bool)

(declare-fun e!2757001 () Bool)

(assert (=> d!1342588 e!2757001))

(declare-fun res!1830919 () Bool)

(assert (=> d!1342588 (=> (not res!1830919) (not e!2757001))))

(declare-fun lt!1626971 () ListMap!2749)

(assert (=> d!1342588 (= res!1830919 (contains!12114 lt!1626971 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626973 () List!49729)

(assert (=> d!1342588 (= lt!1626971 (ListMap!2750 lt!1626973))))

(declare-fun lt!1626972 () Unit!82123)

(declare-fun lt!1626970 () Unit!82123)

(assert (=> d!1342588 (= lt!1626972 lt!1626970)))

(assert (=> d!1342588 (= (getValueByKey!719 lt!1626973 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (Some!10732 (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342588 (= lt!1626970 (lemmaContainsTupThenGetReturnValue!454 lt!1626973 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342588 (= lt!1626973 (insertNoDuplicatedKeys!199 (toList!3506 lt!1625979) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342588 (= (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626971)))

(declare-fun b!4427802 () Bool)

(declare-fun res!1830920 () Bool)

(assert (=> b!4427802 (=> (not res!1830920) (not e!2757001))))

(assert (=> b!4427802 (= res!1830920 (= (getValueByKey!719 (toList!3506 lt!1626971) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (Some!10732 (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun b!4427803 () Bool)

(assert (=> b!4427803 (= e!2757001 (contains!12118 (toList!3506 lt!1626971) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (= (and d!1342588 res!1830919) b!4427802))

(assert (= (and b!4427802 res!1830920) b!4427803))

(declare-fun m!5110425 () Bool)

(assert (=> d!1342588 m!5110425))

(declare-fun m!5110427 () Bool)

(assert (=> d!1342588 m!5110427))

(declare-fun m!5110429 () Bool)

(assert (=> d!1342588 m!5110429))

(declare-fun m!5110431 () Bool)

(assert (=> d!1342588 m!5110431))

(declare-fun m!5110433 () Bool)

(assert (=> b!4427802 m!5110433))

(declare-fun m!5110435 () Bool)

(assert (=> b!4427803 m!5110435))

(assert (=> b!4426752 d!1342588))

(declare-fun b!4427808 () Bool)

(declare-fun e!2757006 () Unit!82123)

(declare-fun e!2757004 () Unit!82123)

(assert (=> b!4427808 (= e!2757006 e!2757004)))

(declare-fun c!753754 () Bool)

(declare-fun call!308112 () Bool)

(assert (=> b!4427808 (= c!753754 call!308112)))

(declare-fun b!4427809 () Bool)

(declare-fun e!2757008 () List!49732)

(assert (=> b!4427809 (= e!2757008 (keys!16942 lt!1626164))))

(declare-fun b!4427810 () Bool)

(declare-fun e!2757005 () Bool)

(assert (=> b!4427810 (= e!2757005 (contains!12121 (keys!16942 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun d!1342590 () Bool)

(declare-fun e!2757009 () Bool)

(assert (=> d!1342590 e!2757009))

(declare-fun res!1830925 () Bool)

(assert (=> d!1342590 (=> res!1830925 e!2757009)))

(declare-fun e!2757007 () Bool)

(assert (=> d!1342590 (= res!1830925 e!2757007)))

(declare-fun res!1830927 () Bool)

(assert (=> d!1342590 (=> (not res!1830927) (not e!2757007))))

(declare-fun lt!1626977 () Bool)

(assert (=> d!1342590 (= res!1830927 (not lt!1626977))))

(declare-fun lt!1626980 () Bool)

(assert (=> d!1342590 (= lt!1626977 lt!1626980)))

(declare-fun lt!1626982 () Unit!82123)

(assert (=> d!1342590 (= lt!1626982 e!2757006)))

(declare-fun c!753752 () Bool)

(assert (=> d!1342590 (= c!753752 lt!1626980)))

(assert (=> d!1342590 (= lt!1626980 (containsKey!1133 (toList!3506 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342590 (= (contains!12114 lt!1626164 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626977)))

(declare-fun b!4427811 () Bool)

(assert (=> b!4427811 (= e!2757008 (getKeysList!256 (toList!3506 lt!1626164)))))

(declare-fun b!4427812 () Bool)

(assert (=> b!4427812 (= e!2757009 e!2757005)))

(declare-fun res!1830926 () Bool)

(assert (=> b!4427812 (=> (not res!1830926) (not e!2757005))))

(assert (=> b!4427812 (= res!1830926 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun b!4427813 () Bool)

(declare-fun Unit!82372 () Unit!82123)

(assert (=> b!4427813 (= e!2757004 Unit!82372)))

(declare-fun b!4427814 () Bool)

(declare-fun lt!1626976 () Unit!82123)

(assert (=> b!4427814 (= e!2757006 lt!1626976)))

(declare-fun lt!1626983 () Unit!82123)

(assert (=> b!4427814 (= lt!1626983 (lemmaContainsKeyImpliesGetValueByKeyDefined!628 (toList!3506 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427814 (isDefined!8025 (getValueByKey!719 (toList!3506 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun lt!1626978 () Unit!82123)

(assert (=> b!4427814 (= lt!1626978 lt!1626983)))

(assert (=> b!4427814 (= lt!1626976 (lemmaInListThenGetKeysListContains!253 (toList!3506 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> b!4427814 call!308112))

(declare-fun b!4427815 () Bool)

(assert (=> b!4427815 (= e!2757007 (not (contains!12121 (keys!16942 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun bm!308107 () Bool)

(assert (=> bm!308107 (= call!308112 (contains!12121 e!2757008 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun c!753753 () Bool)

(assert (=> bm!308107 (= c!753753 c!753752)))

(declare-fun b!4427816 () Bool)

(assert (=> b!4427816 false))

(declare-fun lt!1626979 () Unit!82123)

(declare-fun lt!1626981 () Unit!82123)

(assert (=> b!4427816 (= lt!1626979 lt!1626981)))

(assert (=> b!4427816 (containsKey!1133 (toList!3506 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (=> b!4427816 (= lt!1626981 (lemmaInGetKeysListThenContainsKey!254 (toList!3506 lt!1626164) (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun Unit!82373 () Unit!82123)

(assert (=> b!4427816 (= e!2757004 Unit!82373)))

(assert (= (and d!1342590 c!753752) b!4427814))

(assert (= (and d!1342590 (not c!753752)) b!4427808))

(assert (= (and b!4427808 c!753754) b!4427816))

(assert (= (and b!4427808 (not c!753754)) b!4427813))

(assert (= (or b!4427814 b!4427808) bm!308107))

(assert (= (and bm!308107 c!753753) b!4427811))

(assert (= (and bm!308107 (not c!753753)) b!4427809))

(assert (= (and d!1342590 res!1830927) b!4427815))

(assert (= (and d!1342590 (not res!1830925)) b!4427812))

(assert (= (and b!4427812 res!1830926) b!4427810))

(declare-fun m!5110437 () Bool)

(assert (=> b!4427816 m!5110437))

(declare-fun m!5110439 () Bool)

(assert (=> b!4427816 m!5110439))

(declare-fun m!5110441 () Bool)

(assert (=> b!4427810 m!5110441))

(assert (=> b!4427810 m!5110441))

(declare-fun m!5110443 () Bool)

(assert (=> b!4427810 m!5110443))

(assert (=> b!4427815 m!5110441))

(assert (=> b!4427815 m!5110441))

(assert (=> b!4427815 m!5110443))

(declare-fun m!5110445 () Bool)

(assert (=> b!4427811 m!5110445))

(declare-fun m!5110447 () Bool)

(assert (=> b!4427812 m!5110447))

(assert (=> b!4427812 m!5110447))

(declare-fun m!5110449 () Bool)

(assert (=> b!4427812 m!5110449))

(assert (=> d!1342590 m!5110437))

(declare-fun m!5110451 () Bool)

(assert (=> bm!308107 m!5110451))

(assert (=> b!4427809 m!5110441))

(declare-fun m!5110453 () Bool)

(assert (=> b!4427814 m!5110453))

(assert (=> b!4427814 m!5110447))

(assert (=> b!4427814 m!5110447))

(assert (=> b!4427814 m!5110449))

(declare-fun m!5110457 () Bool)

(assert (=> b!4427814 m!5110457))

(assert (=> b!4426752 d!1342590))

(declare-fun d!1342592 () Bool)

(assert (=> d!1342592 (dynLambda!20851 lambda!154313 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(declare-fun lt!1626985 () Unit!82123)

(assert (=> d!1342592 (= lt!1626985 (choose!27987 (toList!3506 lt!1626184) lambda!154313 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun e!2757011 () Bool)

(assert (=> d!1342592 e!2757011))

(declare-fun res!1830930 () Bool)

(assert (=> d!1342592 (=> (not res!1830930) (not e!2757011))))

(assert (=> d!1342592 (= res!1830930 (forall!9578 (toList!3506 lt!1626184) lambda!154313))))

(assert (=> d!1342592 (= (forallContained!2097 (toList!3506 lt!1626184) lambda!154313 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) lt!1626985)))

(declare-fun b!4427819 () Bool)

(assert (=> b!4427819 (= e!2757011 (contains!12118 (toList!3506 lt!1626184) (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(assert (= (and d!1342592 res!1830930) b!4427819))

(declare-fun b_lambda!143331 () Bool)

(assert (=> (not b_lambda!143331) (not d!1342592)))

(declare-fun m!5110465 () Bool)

(assert (=> d!1342592 m!5110465))

(declare-fun m!5110467 () Bool)

(assert (=> d!1342592 m!5110467))

(assert (=> d!1342592 m!5108309))

(declare-fun m!5110469 () Bool)

(assert (=> b!4427819 m!5110469))

(assert (=> b!4426752 d!1342592))

(declare-fun d!1342596 () Bool)

(declare-fun res!1830931 () Bool)

(declare-fun e!2757012 () Bool)

(assert (=> d!1342596 (=> res!1830931 e!2757012)))

(assert (=> d!1342596 (= res!1830931 ((_ is Nil!49605) (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> d!1342596 (= (forall!9578 (_2!28002 (h!55295 (toList!3505 lm!1616))) lambda!154313) e!2757012)))

(declare-fun b!4427820 () Bool)

(declare-fun e!2757013 () Bool)

(assert (=> b!4427820 (= e!2757012 e!2757013)))

(declare-fun res!1830932 () Bool)

(assert (=> b!4427820 (=> (not res!1830932) (not e!2757013))))

(assert (=> b!4427820 (= res!1830932 (dynLambda!20851 lambda!154313 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))

(declare-fun b!4427821 () Bool)

(assert (=> b!4427821 (= e!2757013 (forall!9578 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))) lambda!154313))))

(assert (= (and d!1342596 (not res!1830931)) b!4427820))

(assert (= (and b!4427820 res!1830932) b!4427821))

(declare-fun b_lambda!143333 () Bool)

(assert (=> (not b_lambda!143333) (not b!4427820)))

(assert (=> b!4427820 m!5110465))

(assert (=> b!4427821 m!5108319))

(assert (=> b!4426752 d!1342596))

(declare-fun bs!758784 () Bool)

(declare-fun d!1342598 () Bool)

(assert (= bs!758784 (and d!1342598 d!1342400)))

(declare-fun lambda!154470 () Int)

(assert (=> bs!758784 (= (= lt!1626164 lt!1626750) (= lambda!154470 lambda!154442))))

(declare-fun bs!758785 () Bool)

(assert (= bs!758785 (and d!1342598 b!4426790)))

(assert (=> bs!758785 (= (= lt!1626164 lt!1626212) (= lambda!154470 lambda!154320))))

(declare-fun bs!758786 () Bool)

(assert (= bs!758786 (and d!1342598 b!4427744)))

(assert (=> bs!758786 (= (= lt!1626164 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154470 lambda!154466))))

(declare-fun bs!758787 () Bool)

(assert (= bs!758787 (and d!1342598 b!4427522)))

(assert (=> bs!758787 (= (= lt!1626164 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154470 lambda!154439))))

(declare-fun bs!758788 () Bool)

(assert (= bs!758788 (and d!1342598 b!4427575)))

(assert (=> bs!758788 (= (= lt!1626164 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154470 lambda!154444))))

(declare-fun bs!758789 () Bool)

(assert (= bs!758789 (and d!1342598 b!4426752)))

(assert (=> bs!758789 (= lambda!154470 lambda!154313)))

(declare-fun bs!758790 () Bool)

(assert (= bs!758790 (and d!1342598 b!4427397)))

(assert (=> bs!758790 (= (= lt!1626164 lt!1626645) (= lambda!154470 lambda!154421))))

(declare-fun bs!758791 () Bool)

(assert (= bs!758791 (and d!1342598 b!4427745)))

(assert (=> bs!758791 (= (= lt!1626164 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154470 lambda!154467))))

(declare-fun bs!758792 () Bool)

(assert (= bs!758792 (and d!1342598 b!4427604)))

(assert (=> bs!758792 (= (= lt!1626164 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154470 lambda!154452))))

(assert (=> bs!758788 (= (= lt!1626164 lt!1626785) (= lambda!154470 lambda!154445))))

(declare-fun bs!758793 () Bool)

(assert (= bs!758793 (and d!1342598 d!1342124)))

(assert (=> bs!758793 (= (= lt!1626164 lt!1626371) (= lambda!154470 lambda!154362))))

(declare-fun bs!758794 () Bool)

(assert (= bs!758794 (and d!1342598 b!4426998)))

(assert (=> bs!758794 (= (= lt!1626164 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154470 lambda!154360))))

(declare-fun bs!758795 () Bool)

(assert (= bs!758795 (and d!1342598 d!1342374)))

(assert (=> bs!758795 (= (= lt!1626164 lt!1625979) (= lambda!154470 lambda!154430))))

(declare-fun bs!758796 () Bool)

(assert (= bs!758796 (and d!1342598 b!4426751)))

(assert (=> bs!758796 (= (= lt!1626164 lt!1625979) (= lambda!154470 lambda!154311))))

(declare-fun bs!758797 () Bool)

(assert (= bs!758797 (and d!1342598 d!1342318)))

(assert (=> bs!758797 (= (= lt!1626164 lt!1626646) (= lambda!154470 lambda!154422))))

(declare-fun bs!758798 () Bool)

(assert (= bs!758798 (and d!1342598 d!1342544)))

(assert (=> bs!758798 (= (= lt!1626164 lt!1626932) (= lambda!154470 lambda!154469))))

(assert (=> bs!758791 (= (= lt!1626164 lt!1626931) (= lambda!154470 lambda!154468))))

(declare-fun bs!758799 () Bool)

(assert (= bs!758799 (and d!1342598 d!1342432)))

(assert (=> bs!758799 (= (= lt!1626164 lt!1626786) (= lambda!154470 lambda!154448))))

(assert (=> bs!758794 (= (= lt!1626164 lt!1626370) (= lambda!154470 lambda!154361))))

(declare-fun bs!758800 () Bool)

(assert (= bs!758800 (and d!1342598 d!1341994)))

(assert (=> bs!758800 (not (= lambda!154470 lambda!154317))))

(declare-fun bs!758801 () Bool)

(assert (= bs!758801 (and d!1342598 b!4427523)))

(assert (=> bs!758801 (= (= lt!1626164 lt!1626749) (= lambda!154470 lambda!154441))))

(declare-fun bs!758802 () Bool)

(assert (= bs!758802 (and d!1342598 b!4427396)))

(assert (=> bs!758802 (= (= lt!1626164 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154470 lambda!154418))))

(declare-fun bs!758803 () Bool)

(assert (= bs!758803 (and d!1342598 d!1341960)))

(assert (=> bs!758803 (= (= lt!1626164 lt!1626165) (= lambda!154470 lambda!154314))))

(declare-fun bs!758804 () Bool)

(assert (= bs!758804 (and d!1342598 b!4427309)))

(assert (=> bs!758804 (= (= lt!1626164 lt!1626533) (= lambda!154470 lambda!154402))))

(assert (=> bs!758790 (= (= lt!1626164 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154470 lambda!154420))))

(declare-fun bs!758805 () Bool)

(assert (= bs!758805 (and d!1342598 d!1341998)))

(assert (=> bs!758805 (= (= lt!1626164 lt!1626213) (= lambda!154470 lambda!154321))))

(declare-fun bs!758806 () Bool)

(assert (= bs!758806 (and d!1342598 d!1342304)))

(assert (=> bs!758806 (= (= lt!1626164 lt!1626212) (= lambda!154470 lambda!154416))))

(declare-fun bs!758807 () Bool)

(assert (= bs!758807 (and d!1342598 b!4426997)))

(assert (=> bs!758807 (= (= lt!1626164 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154470 lambda!154359))))

(declare-fun bs!758808 () Bool)

(assert (= bs!758808 (and d!1342598 b!4427605)))

(assert (=> bs!758808 (= (= lt!1626164 lt!1626830) (= lambda!154470 lambda!154455))))

(assert (=> bs!758785 (= (= lt!1626164 lt!1625969) (= lambda!154470 lambda!154319))))

(declare-fun bs!758809 () Bool)

(assert (= bs!758809 (and d!1342598 d!1342448)))

(assert (=> bs!758809 (= (= lt!1626164 lt!1626831) (= lambda!154470 lambda!154456))))

(assert (=> bs!758808 (= (= lt!1626164 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154470 lambda!154454))))

(declare-fun bs!758810 () Bool)

(assert (= bs!758810 (and d!1342598 b!4427574)))

(assert (=> bs!758810 (= (= lt!1626164 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154470 lambda!154443))))

(declare-fun bs!758811 () Bool)

(assert (= bs!758811 (and d!1342598 b!4426789)))

(assert (=> bs!758811 (= (= lt!1626164 lt!1625969) (= lambda!154470 lambda!154318))))

(declare-fun bs!758812 () Bool)

(assert (= bs!758812 (and d!1342598 b!4427308)))

(assert (=> bs!758812 (= (= lt!1626164 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154470 lambda!154397))))

(assert (=> bs!758804 (= (= lt!1626164 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154470 lambda!154400))))

(assert (=> bs!758801 (= (= lt!1626164 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154470 lambda!154440))))

(assert (=> bs!758789 (= (= lt!1626164 lt!1625979) (= lambda!154470 lambda!154312))))

(declare-fun bs!758813 () Bool)

(assert (= bs!758813 (and d!1342598 d!1342254)))

(assert (=> bs!758813 (= (= lt!1626164 lt!1626534) (= lambda!154470 lambda!154403))))

(assert (=> d!1342598 true))

(assert (=> d!1342598 (forall!9578 (toList!3506 lt!1625979) lambda!154470)))

(declare-fun lt!1626986 () Unit!82123)

(assert (=> d!1342598 (= lt!1626986 (choose!27986 lt!1625979 lt!1626164 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> d!1342598 (forall!9578 (toList!3506 (+!1103 lt!1625979 (tuple2!49415 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))) lambda!154470)))

(assert (=> d!1342598 (= (addForallContainsKeyThenBeforeAdding!177 lt!1625979 lt!1626164 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (_2!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) lt!1626986)))

(declare-fun bs!758814 () Bool)

(assert (= bs!758814 d!1342598))

(declare-fun m!5110471 () Bool)

(assert (=> bs!758814 m!5110471))

(declare-fun m!5110473 () Bool)

(assert (=> bs!758814 m!5110473))

(declare-fun m!5110475 () Bool)

(assert (=> bs!758814 m!5110475))

(declare-fun m!5110477 () Bool)

(assert (=> bs!758814 m!5110477))

(assert (=> b!4426752 d!1342598))

(declare-fun d!1342600 () Bool)

(declare-fun res!1830933 () Bool)

(declare-fun e!2757014 () Bool)

(assert (=> d!1342600 (=> res!1830933 e!2757014)))

(assert (=> d!1342600 (= res!1830933 ((_ is Nil!49605) (toList!3506 lt!1626184)))))

(assert (=> d!1342600 (= (forall!9578 (toList!3506 lt!1626184) lambda!154313) e!2757014)))

(declare-fun b!4427822 () Bool)

(declare-fun e!2757015 () Bool)

(assert (=> b!4427822 (= e!2757014 e!2757015)))

(declare-fun res!1830934 () Bool)

(assert (=> b!4427822 (=> (not res!1830934) (not e!2757015))))

(assert (=> b!4427822 (= res!1830934 (dynLambda!20851 lambda!154313 (h!55294 (toList!3506 lt!1626184))))))

(declare-fun b!4427823 () Bool)

(assert (=> b!4427823 (= e!2757015 (forall!9578 (t!356667 (toList!3506 lt!1626184)) lambda!154313))))

(assert (= (and d!1342600 (not res!1830933)) b!4427822))

(assert (= (and b!4427822 res!1830934) b!4427823))

(declare-fun b_lambda!143335 () Bool)

(assert (=> (not b_lambda!143335) (not b!4427822)))

(declare-fun m!5110479 () Bool)

(assert (=> b!4427822 m!5110479))

(declare-fun m!5110481 () Bool)

(assert (=> b!4427823 m!5110481))

(assert (=> b!4426752 d!1342600))

(declare-fun bs!758815 () Bool)

(declare-fun d!1342602 () Bool)

(assert (= bs!758815 (and d!1342602 d!1342400)))

(declare-fun lambda!154471 () Int)

(assert (=> bs!758815 (= (= lt!1625969 lt!1626750) (= lambda!154471 lambda!154442))))

(declare-fun bs!758816 () Bool)

(assert (= bs!758816 (and d!1342602 b!4426790)))

(assert (=> bs!758816 (= (= lt!1625969 lt!1626212) (= lambda!154471 lambda!154320))))

(declare-fun bs!758817 () Bool)

(assert (= bs!758817 (and d!1342602 b!4427744)))

(assert (=> bs!758817 (= (= lt!1625969 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154471 lambda!154466))))

(declare-fun bs!758818 () Bool)

(assert (= bs!758818 (and d!1342602 b!4427522)))

(assert (=> bs!758818 (= (= lt!1625969 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154471 lambda!154439))))

(declare-fun bs!758819 () Bool)

(assert (= bs!758819 (and d!1342602 b!4427575)))

(assert (=> bs!758819 (= (= lt!1625969 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154471 lambda!154444))))

(declare-fun bs!758820 () Bool)

(assert (= bs!758820 (and d!1342602 b!4426752)))

(assert (=> bs!758820 (= (= lt!1625969 lt!1626164) (= lambda!154471 lambda!154313))))

(declare-fun bs!758821 () Bool)

(assert (= bs!758821 (and d!1342602 b!4427397)))

(assert (=> bs!758821 (= (= lt!1625969 lt!1626645) (= lambda!154471 lambda!154421))))

(declare-fun bs!758822 () Bool)

(assert (= bs!758822 (and d!1342602 b!4427745)))

(assert (=> bs!758822 (= (= lt!1625969 (+!1103 lt!1625979 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154471 lambda!154467))))

(declare-fun bs!758823 () Bool)

(assert (= bs!758823 (and d!1342602 b!4427604)))

(assert (=> bs!758823 (= (= lt!1625969 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154471 lambda!154452))))

(assert (=> bs!758819 (= (= lt!1625969 lt!1626785) (= lambda!154471 lambda!154445))))

(declare-fun bs!758824 () Bool)

(assert (= bs!758824 (and d!1342602 d!1342124)))

(assert (=> bs!758824 (= (= lt!1625969 lt!1626371) (= lambda!154471 lambda!154362))))

(declare-fun bs!758825 () Bool)

(assert (= bs!758825 (and d!1342602 b!4426998)))

(assert (=> bs!758825 (= (= lt!1625969 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154471 lambda!154360))))

(declare-fun bs!758826 () Bool)

(assert (= bs!758826 (and d!1342602 d!1342374)))

(assert (=> bs!758826 (= (= lt!1625969 lt!1625979) (= lambda!154471 lambda!154430))))

(declare-fun bs!758827 () Bool)

(assert (= bs!758827 (and d!1342602 b!4426751)))

(assert (=> bs!758827 (= (= lt!1625969 lt!1625979) (= lambda!154471 lambda!154311))))

(declare-fun bs!758828 () Bool)

(assert (= bs!758828 (and d!1342602 d!1342318)))

(assert (=> bs!758828 (= (= lt!1625969 lt!1626646) (= lambda!154471 lambda!154422))))

(declare-fun bs!758829 () Bool)

(assert (= bs!758829 (and d!1342602 d!1342544)))

(assert (=> bs!758829 (= (= lt!1625969 lt!1626932) (= lambda!154471 lambda!154469))))

(assert (=> bs!758822 (= (= lt!1625969 lt!1626931) (= lambda!154471 lambda!154468))))

(declare-fun bs!758830 () Bool)

(assert (= bs!758830 (and d!1342602 d!1342432)))

(assert (=> bs!758830 (= (= lt!1625969 lt!1626786) (= lambda!154471 lambda!154448))))

(assert (=> bs!758825 (= (= lt!1625969 lt!1626370) (= lambda!154471 lambda!154361))))

(declare-fun bs!758831 () Bool)

(assert (= bs!758831 (and d!1342602 d!1341994)))

(assert (=> bs!758831 (not (= lambda!154471 lambda!154317))))

(declare-fun bs!758832 () Bool)

(assert (= bs!758832 (and d!1342602 b!4427523)))

(assert (=> bs!758832 (= (= lt!1625969 lt!1626749) (= lambda!154471 lambda!154441))))

(declare-fun bs!758833 () Bool)

(assert (= bs!758833 (and d!1342602 b!4427396)))

(assert (=> bs!758833 (= (= lt!1625969 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154471 lambda!154418))))

(declare-fun bs!758834 () Bool)

(assert (= bs!758834 (and d!1342602 d!1341960)))

(assert (=> bs!758834 (= (= lt!1625969 lt!1626165) (= lambda!154471 lambda!154314))))

(declare-fun bs!758835 () Bool)

(assert (= bs!758835 (and d!1342602 b!4427309)))

(assert (=> bs!758835 (= (= lt!1625969 lt!1626533) (= lambda!154471 lambda!154402))))

(assert (=> bs!758821 (= (= lt!1625969 (+!1103 lt!1625969 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (= lambda!154471 lambda!154420))))

(declare-fun bs!758836 () Bool)

(assert (= bs!758836 (and d!1342602 d!1341998)))

(assert (=> bs!758836 (= (= lt!1625969 lt!1626213) (= lambda!154471 lambda!154321))))

(declare-fun bs!758837 () Bool)

(assert (= bs!758837 (and d!1342602 d!1342304)))

(assert (=> bs!758837 (= (= lt!1625969 lt!1626212) (= lambda!154471 lambda!154416))))

(declare-fun bs!758838 () Bool)

(assert (= bs!758838 (and d!1342602 b!4426997)))

(assert (=> bs!758838 (= (= lt!1625969 (extractMap!820 (t!356668 (toList!3505 lt!1625987)))) (= lambda!154471 lambda!154359))))

(declare-fun bs!758839 () Bool)

(assert (= bs!758839 (and d!1342602 d!1342598)))

(assert (=> bs!758839 (= (= lt!1625969 lt!1626164) (= lambda!154471 lambda!154470))))

(declare-fun bs!758840 () Bool)

(assert (= bs!758840 (and d!1342602 b!4427605)))

(assert (=> bs!758840 (= (= lt!1625969 lt!1626830) (= lambda!154471 lambda!154455))))

(assert (=> bs!758816 (= lambda!154471 lambda!154319)))

(declare-fun bs!758841 () Bool)

(assert (= bs!758841 (and d!1342602 d!1342448)))

(assert (=> bs!758841 (= (= lt!1625969 lt!1626831) (= lambda!154471 lambda!154456))))

(assert (=> bs!758840 (= (= lt!1625969 (extractMap!820 (t!356668 (toList!3505 (+!1102 lt!1625987 lt!1625978))))) (= lambda!154471 lambda!154454))))

(declare-fun bs!758842 () Bool)

(assert (= bs!758842 (and d!1342602 b!4427574)))

(assert (=> bs!758842 (= (= lt!1625969 (extractMap!820 (t!356668 (toList!3505 lm!1616)))) (= lambda!154471 lambda!154443))))

(declare-fun bs!758843 () Bool)

(assert (= bs!758843 (and d!1342602 b!4426789)))

(assert (=> bs!758843 (= lambda!154471 lambda!154318)))

(declare-fun bs!758844 () Bool)

(assert (= bs!758844 (and d!1342602 b!4427308)))

(assert (=> bs!758844 (= (= lt!1625969 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154471 lambda!154397))))

(assert (=> bs!758835 (= (= lt!1625969 (extractMap!820 (t!356668 (tail!7291 (toList!3505 lm!1616))))) (= lambda!154471 lambda!154400))))

(assert (=> bs!758832 (= (= lt!1625969 (+!1103 lt!1625969 (tuple2!49415 key!3717 newValue!93))) (= lambda!154471 lambda!154440))))

(assert (=> bs!758820 (= (= lt!1625969 lt!1625979) (= lambda!154471 lambda!154312))))

(declare-fun bs!758845 () Bool)

(assert (= bs!758845 (and d!1342602 d!1342254)))

(assert (=> bs!758845 (= (= lt!1625969 lt!1626534) (= lambda!154471 lambda!154403))))

(assert (=> d!1342602 true))

(assert (=> d!1342602 (forall!9578 (toList!3506 lt!1625969) lambda!154471)))

(declare-fun lt!1626987 () Unit!82123)

(assert (=> d!1342602 (= lt!1626987 (choose!27989 lt!1625969))))

(assert (=> d!1342602 (= (lemmaContainsAllItsOwnKeys!177 lt!1625969) lt!1626987)))

(declare-fun bs!758846 () Bool)

(assert (= bs!758846 d!1342602))

(declare-fun m!5110483 () Bool)

(assert (=> bs!758846 m!5110483))

(declare-fun m!5110485 () Bool)

(assert (=> bs!758846 m!5110485))

(assert (=> bm!308012 d!1342602))

(declare-fun d!1342604 () Bool)

(declare-fun c!753755 () Bool)

(assert (=> d!1342604 (= c!753755 ((_ is Nil!49605) (toList!3506 lt!1625981)))))

(declare-fun e!2757016 () (InoxSet tuple2!49414))

(assert (=> d!1342604 (= (content!7962 (toList!3506 lt!1625981)) e!2757016)))

(declare-fun b!4427824 () Bool)

(assert (=> b!4427824 (= e!2757016 ((as const (Array tuple2!49414 Bool)) false))))

(declare-fun b!4427825 () Bool)

(assert (=> b!4427825 (= e!2757016 ((_ map or) (store ((as const (Array tuple2!49414 Bool)) false) (h!55294 (toList!3506 lt!1625981)) true) (content!7962 (t!356667 (toList!3506 lt!1625981)))))))

(assert (= (and d!1342604 c!753755) b!4427824))

(assert (= (and d!1342604 (not c!753755)) b!4427825))

(declare-fun m!5110487 () Bool)

(assert (=> b!4427825 m!5110487))

(declare-fun m!5110489 () Bool)

(assert (=> b!4427825 m!5110489))

(assert (=> d!1341996 d!1342604))

(declare-fun d!1342606 () Bool)

(declare-fun c!753756 () Bool)

(assert (=> d!1342606 (= c!753756 ((_ is Nil!49605) (toList!3506 lt!1625985)))))

(declare-fun e!2757017 () (InoxSet tuple2!49414))

(assert (=> d!1342606 (= (content!7962 (toList!3506 lt!1625985)) e!2757017)))

(declare-fun b!4427826 () Bool)

(assert (=> b!4427826 (= e!2757017 ((as const (Array tuple2!49414 Bool)) false))))

(declare-fun b!4427827 () Bool)

(assert (=> b!4427827 (= e!2757017 ((_ map or) (store ((as const (Array tuple2!49414 Bool)) false) (h!55294 (toList!3506 lt!1625985)) true) (content!7962 (t!356667 (toList!3506 lt!1625985)))))))

(assert (= (and d!1342606 c!753756) b!4427826))

(assert (= (and d!1342606 (not c!753756)) b!4427827))

(declare-fun m!5110491 () Bool)

(assert (=> b!4427827 m!5110491))

(declare-fun m!5110493 () Bool)

(assert (=> b!4427827 m!5110493))

(assert (=> d!1341996 d!1342606))

(declare-fun tp!1333309 () Bool)

(declare-fun b!4427828 () Bool)

(declare-fun e!2757018 () Bool)

(assert (=> b!4427828 (= e!2757018 (and tp_is_empty!26283 tp_is_empty!26281 tp!1333309))))

(assert (=> b!4426942 (= tp!1333302 e!2757018)))

(assert (= (and b!4426942 ((_ is Cons!49605) (t!356667 (t!356667 newBucket!194)))) b!4427828))

(declare-fun e!2757019 () Bool)

(declare-fun b!4427829 () Bool)

(declare-fun tp!1333310 () Bool)

(assert (=> b!4427829 (= e!2757019 (and tp_is_empty!26283 tp_is_empty!26281 tp!1333310))))

(assert (=> b!4426947 (= tp!1333307 e!2757019)))

(assert (= (and b!4426947 ((_ is Cons!49605) (_2!28002 (h!55295 (toList!3505 lm!1616))))) b!4427829))

(declare-fun b!4427830 () Bool)

(declare-fun e!2757020 () Bool)

(declare-fun tp!1333311 () Bool)

(declare-fun tp!1333312 () Bool)

(assert (=> b!4427830 (= e!2757020 (and tp!1333311 tp!1333312))))

(assert (=> b!4426947 (= tp!1333308 e!2757020)))

(assert (= (and b!4426947 ((_ is Cons!49606) (t!356668 (toList!3505 lm!1616)))) b!4427830))

(declare-fun b_lambda!143337 () Bool)

(assert (= b_lambda!143331 (or b!4426752 b_lambda!143337)))

(declare-fun bs!758847 () Bool)

(declare-fun d!1342608 () Bool)

(assert (= bs!758847 (and d!1342608 b!4426752)))

(assert (=> bs!758847 (= (dynLambda!20851 lambda!154313 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (contains!12114 lt!1626164 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> bs!758847 m!5108307))

(assert (=> d!1342592 d!1342608))

(declare-fun b_lambda!143339 () Bool)

(assert (= b_lambda!143301 (or start!431936 b_lambda!143339)))

(declare-fun bs!758848 () Bool)

(declare-fun d!1342610 () Bool)

(assert (= bs!758848 (and d!1342610 start!431936)))

(assert (=> bs!758848 (= (dynLambda!20850 lambda!154244 (h!55295 (t!356668 (toList!3505 lt!1625976)))) (noDuplicateKeys!759 (_2!28002 (h!55295 (t!356668 (toList!3505 lt!1625976))))))))

(declare-fun m!5110495 () Bool)

(assert (=> bs!758848 m!5110495))

(assert (=> b!4427674 d!1342610))

(declare-fun b_lambda!143341 () Bool)

(assert (= b_lambda!143277 (or b!4426790 b_lambda!143341)))

(declare-fun bs!758849 () Bool)

(declare-fun d!1342612 () Bool)

(assert (= bs!758849 (and d!1342612 b!4426790)))

(assert (=> bs!758849 (= (dynLambda!20851 lambda!154320 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (contains!12114 lt!1626212 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(assert (=> bs!758849 m!5108375))

(assert (=> b!4427418 d!1342612))

(declare-fun b_lambda!143343 () Bool)

(assert (= b_lambda!143291 (or b!4426752 b_lambda!143343)))

(declare-fun bs!758850 () Bool)

(declare-fun d!1342614 () Bool)

(assert (= bs!758850 (and d!1342614 b!4426752)))

(assert (=> bs!758850 (= (dynLambda!20851 lambda!154313 (h!55294 (toList!3506 lt!1625979))) (contains!12114 lt!1626164 (_1!28001 (h!55294 (toList!3506 lt!1625979)))))))

(declare-fun m!5110497 () Bool)

(assert (=> bs!758850 m!5110497))

(assert (=> b!4427494 d!1342614))

(declare-fun b_lambda!143345 () Bool)

(assert (= b_lambda!143247 (or d!1341994 b_lambda!143345)))

(declare-fun bs!758851 () Bool)

(declare-fun d!1342616 () Bool)

(assert (= bs!758851 (and d!1342616 d!1341994)))

(assert (=> bs!758851 (= (dynLambda!20851 lambda!154317 (h!55294 newBucket!194)) (= (hash!2144 hashF!1220 (_1!28001 (h!55294 newBucket!194))) hash!366))))

(declare-fun m!5110499 () Bool)

(assert (=> bs!758851 m!5110499))

(assert (=> b!4427197 d!1342616))

(declare-fun b_lambda!143347 () Bool)

(assert (= b_lambda!143251 (or d!1342076 b_lambda!143347)))

(declare-fun bs!758852 () Bool)

(declare-fun d!1342618 () Bool)

(assert (= bs!758852 (and d!1342618 d!1342076)))

(assert (=> bs!758852 (= (dynLambda!20850 lambda!154352 (h!55295 (toList!3505 lm!1616))) (allKeysSameHash!719 (_2!28002 (h!55295 (toList!3505 lm!1616))) (_1!28002 (h!55295 (toList!3505 lm!1616))) hashF!1220))))

(declare-fun m!5110501 () Bool)

(assert (=> bs!758852 m!5110501))

(assert (=> b!4427205 d!1342618))

(declare-fun b_lambda!143349 () Bool)

(assert (= b_lambda!143333 (or b!4426752 b_lambda!143349)))

(assert (=> b!4427820 d!1342608))

(declare-fun b_lambda!143351 () Bool)

(assert (= b_lambda!143249 (or d!1341960 b_lambda!143351)))

(declare-fun bs!758853 () Bool)

(declare-fun d!1342620 () Bool)

(assert (= bs!758853 (and d!1342620 d!1341960)))

(assert (=> bs!758853 (= (dynLambda!20851 lambda!154314 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (contains!12114 lt!1626165 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun m!5110503 () Bool)

(assert (=> bs!758853 m!5110503))

(assert (=> b!4427201 d!1342620))

(declare-fun b_lambda!143353 () Bool)

(assert (= b_lambda!143241 (or d!1342044 b_lambda!143353)))

(declare-fun bs!758854 () Bool)

(declare-fun d!1342622 () Bool)

(assert (= bs!758854 (and d!1342622 d!1342044)))

(assert (=> bs!758854 (= (dynLambda!20850 lambda!154344 (h!55295 (toList!3505 lt!1625987))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lt!1625987)))))))

(assert (=> bs!758854 m!5108771))

(assert (=> b!4427036 d!1342622))

(declare-fun b_lambda!143355 () Bool)

(assert (= b_lambda!143273 (or b!4426790 b_lambda!143355)))

(declare-fun bs!758855 () Bool)

(declare-fun d!1342624 () Bool)

(assert (= bs!758855 (and d!1342624 b!4426790)))

(assert (=> bs!758855 (= (dynLambda!20851 lambda!154320 (h!55294 (toList!3506 lt!1626232))) (contains!12114 lt!1626212 (_1!28001 (h!55294 (toList!3506 lt!1626232)))))))

(declare-fun m!5110505 () Bool)

(assert (=> bs!758855 m!5110505))

(assert (=> b!4427393 d!1342624))

(declare-fun b_lambda!143357 () Bool)

(assert (= b_lambda!143287 (or d!1341998 b_lambda!143357)))

(declare-fun bs!758856 () Bool)

(declare-fun d!1342626 () Bool)

(assert (= bs!758856 (and d!1342626 d!1341998)))

(assert (=> bs!758856 (= (dynLambda!20851 lambda!154321 (h!55294 (toList!3506 lt!1625969))) (contains!12114 lt!1626213 (_1!28001 (h!55294 (toList!3506 lt!1625969)))))))

(declare-fun m!5110507 () Bool)

(assert (=> bs!758856 m!5110507))

(assert (=> b!4427470 d!1342626))

(declare-fun b_lambda!143359 () Bool)

(assert (= b_lambda!143239 (or d!1342058 b_lambda!143359)))

(declare-fun bs!758857 () Bool)

(declare-fun d!1342628 () Bool)

(assert (= bs!758857 (and d!1342628 d!1342058)))

(assert (=> bs!758857 (= (dynLambda!20850 lambda!154348 (h!55295 (toList!3505 lt!1625987))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lt!1625987)))))))

(assert (=> bs!758857 m!5108771))

(assert (=> b!4427015 d!1342628))

(declare-fun b_lambda!143361 () Bool)

(assert (= b_lambda!143307 (or d!1342084 b_lambda!143361)))

(declare-fun bs!758858 () Bool)

(declare-fun d!1342630 () Bool)

(assert (= bs!758858 (and d!1342630 d!1342084)))

(assert (=> bs!758858 (= (dynLambda!20850 lambda!154355 (h!55295 (toList!3505 lm!1616))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> bs!758858 m!5108299))

(assert (=> b!4427699 d!1342630))

(declare-fun b_lambda!143363 () Bool)

(assert (= b_lambda!143279 (or b!4426790 b_lambda!143363)))

(assert (=> d!1342340 d!1342612))

(declare-fun b_lambda!143365 () Bool)

(assert (= b_lambda!143283 (or d!1342088 b_lambda!143365)))

(declare-fun bs!758859 () Bool)

(declare-fun d!1342632 () Bool)

(assert (= bs!758859 (and d!1342632 d!1342088)))

(assert (=> bs!758859 (= (dynLambda!20850 lambda!154358 (h!55295 (toList!3505 lm!1616))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> bs!758859 m!5108299))

(assert (=> b!4427456 d!1342632))

(declare-fun b_lambda!143367 () Bool)

(assert (= b_lambda!143265 (or d!1342062 b_lambda!143367)))

(declare-fun bs!758860 () Bool)

(declare-fun d!1342634 () Bool)

(assert (= bs!758860 (and d!1342634 d!1342062)))

(assert (=> bs!758860 (= (dynLambda!20850 lambda!154349 (h!55295 (tail!7291 (toList!3505 lm!1616)))) (noDuplicateKeys!759 (_2!28002 (h!55295 (tail!7291 (toList!3505 lm!1616))))))))

(assert (=> bs!758860 m!5109279))

(assert (=> b!4427360 d!1342634))

(declare-fun b_lambda!143369 () Bool)

(assert (= b_lambda!143335 (or b!4426752 b_lambda!143369)))

(declare-fun bs!758861 () Bool)

(declare-fun d!1342636 () Bool)

(assert (= bs!758861 (and d!1342636 b!4426752)))

(assert (=> bs!758861 (= (dynLambda!20851 lambda!154313 (h!55294 (toList!3506 lt!1626184))) (contains!12114 lt!1626164 (_1!28001 (h!55294 (toList!3506 lt!1626184)))))))

(declare-fun m!5110509 () Bool)

(assert (=> bs!758861 m!5110509))

(assert (=> b!4427822 d!1342636))

(declare-fun b_lambda!143371 () Bool)

(assert (= b_lambda!143253 (or d!1341998 b_lambda!143371)))

(declare-fun bs!758862 () Bool)

(declare-fun d!1342638 () Bool)

(assert (= bs!758862 (and d!1342638 d!1341998)))

(assert (=> bs!758862 (= (dynLambda!20851 lambda!154321 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616))))) (contains!12114 lt!1626213 (_1!28001 (h!55294 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))))

(declare-fun m!5110511 () Bool)

(assert (=> bs!758862 m!5110511))

(assert (=> b!4427238 d!1342638))

(declare-fun b_lambda!143373 () Bool)

(assert (= b_lambda!143299 (or d!1342052 b_lambda!143373)))

(declare-fun bs!758863 () Bool)

(declare-fun d!1342640 () Bool)

(assert (= bs!758863 (and d!1342640 d!1342052)))

(assert (=> bs!758863 (= (dynLambda!20850 lambda!154345 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978)))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 (+!1102 lt!1625987 lt!1625978))))))))

(assert (=> bs!758863 m!5110045))

(assert (=> b!4427658 d!1342640))

(declare-fun b_lambda!143375 () Bool)

(assert (= b_lambda!143235 (or b!4426790 b_lambda!143375)))

(declare-fun bs!758864 () Bool)

(declare-fun d!1342642 () Bool)

(assert (= bs!758864 (and d!1342642 b!4426790)))

(assert (=> bs!758864 (= (dynLambda!20851 lambda!154320 (h!55294 (toList!3506 lt!1625969))) (contains!12114 lt!1626212 (_1!28001 (h!55294 (toList!3506 lt!1625969)))))))

(declare-fun m!5110513 () Bool)

(assert (=> bs!758864 m!5110513))

(assert (=> b!4426972 d!1342642))

(declare-fun b_lambda!143377 () Bool)

(assert (= b_lambda!143329 (or b!4426752 b_lambda!143377)))

(declare-fun bs!758865 () Bool)

(declare-fun d!1342644 () Bool)

(assert (= bs!758865 (and d!1342644 b!4426752)))

(assert (=> bs!758865 (= (dynLambda!20851 lambda!154313 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (contains!12114 lt!1626164 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun m!5110515 () Bool)

(assert (=> bs!758865 m!5110515))

(assert (=> b!4427800 d!1342644))

(declare-fun b_lambda!143379 () Bool)

(assert (= b_lambda!143237 (or start!431936 b_lambda!143379)))

(declare-fun bs!758866 () Bool)

(declare-fun d!1342646 () Bool)

(assert (= bs!758866 (and d!1342646 start!431936)))

(assert (=> bs!758866 (= (dynLambda!20850 lambda!154244 (h!55295 (t!356668 (toList!3505 lm!1616)))) (noDuplicateKeys!759 (_2!28002 (h!55295 (t!356668 (toList!3505 lm!1616))))))))

(declare-fun m!5110517 () Bool)

(assert (=> bs!758866 m!5110517))

(assert (=> b!4426988 d!1342646))

(declare-fun b_lambda!143381 () Bool)

(assert (= b_lambda!143305 (or d!1342022 b_lambda!143381)))

(declare-fun bs!758867 () Bool)

(declare-fun d!1342648 () Bool)

(assert (= bs!758867 (and d!1342648 d!1342022)))

(assert (=> bs!758867 (= (dynLambda!20850 lambda!154343 (h!55295 (toList!3505 lm!1616))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 lm!1616)))))))

(assert (=> bs!758867 m!5108299))

(assert (=> b!4427697 d!1342648))

(declare-fun b_lambda!143383 () Bool)

(assert (= b_lambda!143281 (or b!4426790 b_lambda!143383)))

(declare-fun bs!758868 () Bool)

(declare-fun d!1342650 () Bool)

(assert (= bs!758868 (and d!1342650 b!4426790)))

(assert (=> bs!758868 (= (dynLambda!20851 lambda!154320 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616)))))) (contains!12114 lt!1626212 (_1!28001 (h!55294 (t!356667 (_2!28002 (h!55295 (toList!3505 lm!1616))))))))))

(declare-fun m!5110519 () Bool)

(assert (=> bs!758868 m!5110519))

(assert (=> b!4427432 d!1342650))

(declare-fun b_lambda!143385 () Bool)

(assert (= b_lambda!143257 (or start!431936 b_lambda!143385)))

(declare-fun bs!758869 () Bool)

(declare-fun d!1342652 () Bool)

(assert (= bs!758869 (and d!1342652 start!431936)))

(assert (=> bs!758869 (= (dynLambda!20850 lambda!154244 (h!55295 (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194))))) (noDuplicateKeys!759 (_2!28002 (h!55295 (toList!3505 (+!1102 lm!1616 (tuple2!49417 hash!366 newBucket!194)))))))))

(declare-fun m!5110521 () Bool)

(assert (=> bs!758869 m!5110521))

(assert (=> b!4427341 d!1342652))

(declare-fun b_lambda!143387 () Bool)

(assert (= b_lambda!143309 (or d!1341960 b_lambda!143387)))

(declare-fun bs!758870 () Bool)

(declare-fun d!1342654 () Bool)

(assert (= bs!758870 (and d!1342654 d!1341960)))

(assert (=> bs!758870 (= (dynLambda!20851 lambda!154314 (h!55294 (toList!3506 lt!1625979))) (contains!12114 lt!1626165 (_1!28001 (h!55294 (toList!3506 lt!1625979)))))))

(declare-fun m!5110523 () Bool)

(assert (=> bs!758870 m!5110523))

(assert (=> b!4427701 d!1342654))

(check-sat (not b!4427700) (not b!4427210) (not b!4427575) (not d!1342232) (not b!4427811) (not bm!308039) (not d!1342584) (not b!4427398) (not b!4427650) (not b!4427706) (not bs!758847) (not b!4427675) (not bm!308034) (not b!4427815) (not b_lambda!143355) (not b!4427021) (not b!4427231) (not b!4427573) (not b_lambda!143345) (not b!4427725) (not b!4427297) (not b!4427215) (not b_lambda!143377) (not bm!308101) (not b!4427743) (not b!4426995) (not b_lambda!143351) (not b!4427577) (not b!4427555) (not d!1342518) (not b!4427517) (not bs!758866) (not d!1342588) (not b!4427040) (not b_lambda!143363) (not b!4427380) (not bm!308069) (not b!4427440) (not d!1342508) (not bs!758854) (not bs!758870) (not b!4427089) (not b_lambda!143367) (not b!4427491) (not bs!758858) (not b!4427240) (not bs!758852) (not b!4427053) (not bs!758862) (not d!1342302) (not d!1342226) (not b!4427688) (not d!1342142) (not b!4427343) (not b!4427445) (not d!1342138) (not b!4427802) (not b!4427816) (not d!1342124) (not b!4426987) (not b!4427373) (not d!1342538) (not b!4427416) (not bm!308023) (not b!4427082) (not bs!758855) (not b_lambda!143233) (not b!4427515) (not b!4427429) (not d!1342484) (not bm!308102) (not bm!308022) (not b!4427606) (not bm!308024) (not b!4427435) (not b_lambda!143361) (not bm!308037) (not bs!758851) (not b_lambda!143337) (not bm!308078) tp_is_empty!26281 (not b_lambda!143289) (not b!4427603) (not b!4427819) (not b_lambda!143369) (not b_lambda!143387) (not b!4427186) (not b!4427698) (not bm!308079) (not d!1342432) (not b!4427225) (not b!4427019) (not b!4427683) (not b_lambda!143365) (not d!1342318) (not d!1342590) (not d!1342348) (not bs!758861) (not bm!308065) (not b!4427359) (not b_lambda!143231) (not b_lambda!143375) (not b!4427729) (not b!4427444) (not d!1342422) (not d!1342540) (not bs!758869) (not d!1342498) (not bm!308096) (not b!4427661) (not b!4427000) (not b!4427202) (not b!4427214) (not b!4427204) (not bs!758868) (not b!4427713) (not d!1342350) (not b!4427463) (not b!4427258) (not b_lambda!143347) (not bm!308064) (not b!4427057) (not bs!758856) (not d!1342236) (not b!4427342) (not b!4427397) (not d!1342146) (not b!4427686) (not b_lambda!143311) (not d!1342144) (not b!4427213) (not d!1342210) (not d!1342128) (not b!4427032) (not b!4427310) (not b!4427301) (not d!1342420) (not b!4427447) (not b!4427436) (not b!4427468) (not bm!308049) (not b!4427525) (not b!4427101) (not b!4427495) (not b!4427524) (not b!4427083) (not b!4427691) (not b!4427794) (not d!1342388) (not b!4427008) (not b!4427653) (not d!1342448) (not bs!758853) (not b!4427079) (not b!4427209) (not b!4427187) (not b!4427678) (not b!4427222) (not bm!308070) (not d!1342286) (not b!4427242) (not bs!758867) (not b!4427659) (not b!4427245) (not b!4427425) (not b!4427471) (not b!4426984) (not b!4427120) (not b!4427189) (not b!4427224) (not bm!308054) (not b_lambda!143285) (not b!4427031) (not b!4427685) (not d!1342178) (not b_lambda!143359) (not d!1342602) (not bm!308104) (not b!4427395) (not b!4427741) (not b_lambda!143383) (not b!4427379) (not d!1342598) (not d!1342156) (not b!4427707) (not b!4427033) (not d!1342186) (not b_lambda!143353) (not b!4427355) (not b!4427501) (not d!1342396) (not b_lambda!143381) (not b!4427311) (not b!4427451) (not b_lambda!143349) (not d!1342270) (not b!4427821) (not b!4427427) (not b!4427257) (not bm!308068) (not b!4427081) (not b!4427417) (not b!4427516) (not d!1342444) (not b_lambda!143303) (not b!4427795) (not d!1342360) (not bm!308098) (not d!1342342) (not b!4427424) (not bs!758857) (not b!4427602) (not bm!308042) (not b!4427442) (not b!4427177) (not b!4427001) (not b!4427237) (not d!1342336) (not b!4427374) (not bm!308053) (not b!4427307) (not b_lambda!143373) (not b!4427680) (not d!1342130) (not b!4427022) (not b!4427229) (not b!4427599) (not b!4427739) (not d!1342346) (not d!1342266) (not b!4427669) (not b!4427431) (not b_lambda!143343) (not b!4427736) (not d!1342104) (not b!4426981) (not b!4427499) (not b!4427797) (not b!4427233) (not b_lambda!143385) (not b!4427651) (not b!4427672) (not b!4427437) (not d!1342238) (not d!1342522) (not b!4427221) (not b!4426961) (not b!4427441) (not b!4427809) (not d!1342544) (not b!4427041) (not b!4427810) (not b!4427823) (not b!4427607) (not b!4427037) (not b!4427232) (not b!4427339) (not d!1342386) (not b!4427801) (not b!4427198) (not b_lambda!143371) (not d!1342510) (not d!1342110) (not b!4427422) (not d!1342592) (not b!4427677) (not bm!308093) (not b_lambda!143229) (not b!4426989) (not b!4427180) (not b!4427711) (not b!4427433) (not d!1342374) (not b!4427738) (not b!4427793) (not b!4427430) (not d!1342492) (not b!4427017) (not b!4427812) (not b!4427708) (not bs!758848) (not d!1342158) (not d!1342132) (not b!4427239) (not d!1342486) (not bm!308087) (not b!4427446) (not b!4426999) (not b!4426967) (not b!4427220) (not b!4426979) (not d!1342290) (not b!4427493) (not b!4426958) (not b!4427747) (not bm!308088) (not bm!308103) (not bs!758864) (not b!4427098) (not b!4427465) (not d!1342134) (not d!1342430) (not b!4427745) (not b!4427018) (not b!4427094) (not b!4427042) (not b!4427746) (not b!4427559) (not b!4427605) (not b!4427344) (not d!1342400) (not bm!308107) (not b!4426960) (not b!4427309) (not b!4427655) (not b!4427643) (not b!4427518) (not bs!758859) (not b!4426986) (not bs!758863) (not d!1342152) (not b!4427119) (not b!4427096) (not d!1342532) (not b!4427731) (not b_lambda!143341) (not b!4427184) (not b!4427567) (not b!4427208) (not b!4427798) (not b!4427521) (not b!4427702) (not b!4427097) (not d!1342148) (not b!4427039) (not b!4427438) (not b!4427188) (not bm!308052) (not b_lambda!143379) (not bm!308066) (not bs!758849) (not b!4426973) (not bm!308071) (not bm!308106) (not b!4427709) (not b!4427827) (not b_lambda!143339) (not b!4427394) (not b!4427828) (not b!4427740) (not d!1342292) (not d!1342304) (not bs!758860) (not d!1342446) (not d!1342114) (not b!4427300) (not b!4427419) (not d!1342254) (not b!4427014) (not b!4427523) (not b!4427799) (not b!4427211) (not d!1342224) (not b!4427814) (not b!4427016) (not b!4427426) (not b!4427657) (not d!1342182) (not d!1342528) (not b!4427457) (not b!4427732) (not d!1342384) (not b!4427712) (not b!4427660) (not bs!758865) (not b!4427206) (not b!4427361) (not d!1342340) (not bm!308025) (not bm!308038) (not bm!308063) (not d!1342272) (not b!4427092) (not bs!758850) (not d!1342176) (not d!1342166) (not b!4427825) (not b!4427218) (not b!4427093) (not b!4427234) tp_is_empty!26283 (not b!4427200) (not b!4427450) (not b!4427085) (not b!4427647) (not b!4427649) (not b!4427792) (not b!4427091) (not b!4427704) (not b_lambda!143357) (not b!4427829) (not d!1342516) (not b!4427203) (not b!4427727) (not d!1342426) (not bm!308089) (not b!4427830) (not b!4427803) (not b!4427692) (not d!1342300) (not b!4426998) (not d!1342514) (not d!1342126) (not b!4427449) (not b!4427497) (not d!1342140) (not bm!308080) (not b!4427399) (not b!4427179) (not b!4427576) (not d!1342220) (not d!1342394) (not bm!308067) (not b!4427728) (not b!4426996) (not d!1342150) (not b!4427024) (not d!1342414))
(check-sat)
