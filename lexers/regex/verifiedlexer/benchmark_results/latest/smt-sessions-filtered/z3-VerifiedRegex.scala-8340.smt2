; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434132 () Bool)

(assert start!434132)

(declare-fun b!4438723 () Bool)

(declare-fun res!1837336 () Bool)

(declare-fun e!2763871 () Bool)

(assert (=> b!4438723 (=> (not res!1837336) (not e!2763871))))

(declare-datatypes ((K!11105 0))(
  ( (K!11106 (val!17155 Int)) )
))
(declare-datatypes ((V!11351 0))(
  ( (V!11352 (val!17156 Int)) )
))
(declare-datatypes ((tuple2!49630 0))(
  ( (tuple2!49631 (_1!28109 K!11105) (_2!28109 V!11351)) )
))
(declare-datatypes ((List!49863 0))(
  ( (Nil!49739) (Cons!49739 (h!55454 tuple2!49630) (t!356805 List!49863)) )
))
(declare-fun newBucket!194 () List!49863)

(declare-fun noDuplicateKeys!813 (List!49863) Bool)

(assert (=> b!4438723 (= res!1837336 (noDuplicateKeys!813 newBucket!194))))

(declare-fun b!4438724 () Bool)

(declare-datatypes ((Unit!83751 0))(
  ( (Unit!83752) )
))
(declare-fun e!2763867 () Unit!83751)

(declare-fun Unit!83753 () Unit!83751)

(assert (=> b!4438724 (= e!2763867 Unit!83753)))

(declare-fun b!4438725 () Bool)

(declare-fun e!2763872 () Bool)

(declare-fun e!2763876 () Bool)

(assert (=> b!4438725 (= e!2763872 e!2763876)))

(declare-fun res!1837341 () Bool)

(assert (=> b!4438725 (=> (not res!1837341) (not e!2763876))))

(declare-datatypes ((ListMap!2857 0))(
  ( (ListMap!2858 (toList!3613 List!49863)) )
))
(declare-fun lt!1635286 () ListMap!2857)

(declare-fun key!3717 () K!11105)

(declare-fun contains!12298 (ListMap!2857 K!11105) Bool)

(assert (=> b!4438725 (= res!1837341 (not (contains!12298 lt!1635286 key!3717)))))

(declare-datatypes ((tuple2!49632 0))(
  ( (tuple2!49633 (_1!28110 (_ BitVec 64)) (_2!28110 List!49863)) )
))
(declare-datatypes ((List!49864 0))(
  ( (Nil!49740) (Cons!49740 (h!55455 tuple2!49632) (t!356806 List!49864)) )
))
(declare-datatypes ((ListLongMap!2263 0))(
  ( (ListLongMap!2264 (toList!3614 List!49864)) )
))
(declare-fun lm!1616 () ListLongMap!2263)

(declare-fun extractMap!874 (List!49864) ListMap!2857)

(assert (=> b!4438725 (= lt!1635286 (extractMap!874 (toList!3614 lm!1616)))))

(declare-fun b!4438726 () Bool)

(declare-fun e!2763875 () Bool)

(declare-fun tp!1333931 () Bool)

(assert (=> b!4438726 (= e!2763875 tp!1333931)))

(declare-fun b!4438727 () Bool)

(declare-fun res!1837343 () Bool)

(assert (=> b!4438727 (=> (not res!1837343) (not e!2763872))))

(declare-datatypes ((Hashable!5207 0))(
  ( (HashableExt!5206 (__x!30910 Int)) )
))
(declare-fun hashF!1220 () Hashable!5207)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!773 (List!49863 (_ BitVec 64) Hashable!5207) Bool)

(assert (=> b!4438727 (= res!1837343 (allKeysSameHash!773 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4438728 () Bool)

(declare-fun Unit!83754 () Unit!83751)

(assert (=> b!4438728 (= e!2763867 Unit!83754)))

(declare-fun lt!1635272 () Unit!83751)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!68 (ListLongMap!2263 K!11105 Hashable!5207) Unit!83751)

(assert (=> b!4438728 (= lt!1635272 (lemmaExtractTailMapContainsThenExtractMapDoes!68 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4438728 false))

(declare-fun b!4438729 () Bool)

(declare-fun res!1837342 () Bool)

(declare-fun e!2763870 () Bool)

(assert (=> b!4438729 (=> res!1837342 e!2763870)))

(get-info :version)

(assert (=> b!4438729 (= res!1837342 (or (and ((_ is Cons!49740) (toList!3614 lm!1616)) (= (_1!28110 (h!55455 (toList!3614 lm!1616))) hash!366)) (not ((_ is Cons!49740) (toList!3614 lm!1616))) (= (_1!28110 (h!55455 (toList!3614 lm!1616))) hash!366)))))

(declare-fun newValue!93 () V!11351)

(declare-fun e!2763873 () Bool)

(declare-fun b!4438730 () Bool)

(declare-fun lt!1635284 () Bool)

(assert (=> b!4438730 (= e!2763873 (and (not lt!1635284) (= newBucket!194 (Cons!49739 (tuple2!49631 key!3717 newValue!93) Nil!49739))))))

(declare-fun e!2763868 () Bool)

(declare-fun b!4438731 () Bool)

(declare-fun apply!11665 (ListLongMap!2263 (_ BitVec 64)) List!49863)

(assert (=> b!4438731 (= e!2763868 (= newBucket!194 (Cons!49739 (tuple2!49631 key!3717 newValue!93) (apply!11665 lm!1616 hash!366))))))

(declare-fun res!1837340 () Bool)

(assert (=> start!434132 (=> (not res!1837340) (not e!2763872))))

(declare-fun lambda!156790 () Int)

(declare-fun forall!9672 (List!49864 Int) Bool)

(assert (=> start!434132 (= res!1837340 (forall!9672 (toList!3614 lm!1616) lambda!156790))))

(assert (=> start!434132 e!2763872))

(declare-fun tp_is_empty!26497 () Bool)

(assert (=> start!434132 tp_is_empty!26497))

(declare-fun tp_is_empty!26499 () Bool)

(assert (=> start!434132 tp_is_empty!26499))

(declare-fun e!2763874 () Bool)

(assert (=> start!434132 e!2763874))

(declare-fun inv!65291 (ListLongMap!2263) Bool)

(assert (=> start!434132 (and (inv!65291 lm!1616) e!2763875)))

(assert (=> start!434132 true))

(declare-fun b!4438732 () Bool)

(declare-fun e!2763877 () Bool)

(assert (=> b!4438732 (= e!2763877 true)))

(declare-fun lt!1635282 () tuple2!49630)

(declare-fun lt!1635283 () ListMap!2857)

(declare-fun eq!445 (ListMap!2857 ListMap!2857) Bool)

(declare-fun +!1192 (ListMap!2857 tuple2!49630) ListMap!2857)

(assert (=> b!4438732 (eq!445 (+!1192 lt!1635286 lt!1635282) lt!1635283)))

(declare-fun lt!1635287 () Unit!83751)

(declare-fun lt!1635279 () ListMap!2857)

(declare-fun lemmaAddToEqMapsPreservesEq!42 (ListMap!2857 ListMap!2857 K!11105 V!11351) Unit!83751)

(assert (=> b!4438732 (= lt!1635287 (lemmaAddToEqMapsPreservesEq!42 lt!1635286 lt!1635279 key!3717 newValue!93))))

(declare-fun lt!1635285 () ListMap!2857)

(assert (=> b!4438732 (eq!445 lt!1635285 lt!1635283)))

(assert (=> b!4438732 (= lt!1635283 (+!1192 lt!1635279 lt!1635282))))

(declare-fun lt!1635273 () ListMap!2857)

(declare-fun addToMapMapFromBucket!434 (List!49863 ListMap!2857) ListMap!2857)

(assert (=> b!4438732 (= lt!1635285 (addToMapMapFromBucket!434 (_2!28110 (h!55455 (toList!3614 lm!1616))) lt!1635273))))

(declare-fun lt!1635278 () Unit!83751)

(declare-fun lt!1635288 () ListMap!2857)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!208 (ListMap!2857 K!11105 V!11351 List!49863) Unit!83751)

(assert (=> b!4438732 (= lt!1635278 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!208 lt!1635288 key!3717 newValue!93 (_2!28110 (h!55455 (toList!3614 lm!1616)))))))

(declare-fun b!4438733 () Bool)

(declare-fun e!2763869 () Bool)

(assert (=> b!4438733 (= e!2763869 e!2763877)))

(declare-fun res!1837338 () Bool)

(assert (=> b!4438733 (=> res!1837338 e!2763877)))

(declare-fun containsKey!1214 (List!49863 K!11105) Bool)

(assert (=> b!4438733 (= res!1837338 (containsKey!1214 (_2!28110 (h!55455 (toList!3614 lm!1616))) key!3717))))

(assert (=> b!4438733 (not (containsKey!1214 (apply!11665 lm!1616 (_1!28110 (h!55455 (toList!3614 lm!1616)))) key!3717))))

(declare-fun lt!1635289 () Unit!83751)

(declare-fun lemmaNotSameHashThenCannotContainKey!154 (ListLongMap!2263 K!11105 (_ BitVec 64) Hashable!5207) Unit!83751)

(assert (=> b!4438733 (= lt!1635289 (lemmaNotSameHashThenCannotContainKey!154 lm!1616 key!3717 (_1!28110 (h!55455 (toList!3614 lm!1616))) hashF!1220))))

(declare-fun b!4438734 () Bool)

(declare-fun e!2763878 () Bool)

(assert (=> b!4438734 (= e!2763878 e!2763869)))

(declare-fun res!1837344 () Bool)

(assert (=> b!4438734 (=> res!1837344 e!2763869)))

(assert (=> b!4438734 (= res!1837344 (not (eq!445 lt!1635286 lt!1635279)))))

(assert (=> b!4438734 (= lt!1635279 (addToMapMapFromBucket!434 (_2!28110 (h!55455 (toList!3614 lm!1616))) lt!1635288))))

(declare-fun b!4438735 () Bool)

(assert (=> b!4438735 (= e!2763876 e!2763871)))

(declare-fun res!1837339 () Bool)

(assert (=> b!4438735 (=> (not res!1837339) (not e!2763871))))

(assert (=> b!4438735 (= res!1837339 e!2763873)))

(declare-fun res!1837335 () Bool)

(assert (=> b!4438735 (=> res!1837335 e!2763873)))

(assert (=> b!4438735 (= res!1837335 e!2763868)))

(declare-fun res!1837346 () Bool)

(assert (=> b!4438735 (=> (not res!1837346) (not e!2763868))))

(assert (=> b!4438735 (= res!1837346 lt!1635284)))

(declare-fun contains!12299 (ListLongMap!2263 (_ BitVec 64)) Bool)

(assert (=> b!4438735 (= lt!1635284 (contains!12299 lm!1616 hash!366))))

(declare-fun b!4438736 () Bool)

(assert (=> b!4438736 (= e!2763870 e!2763878)))

(declare-fun res!1837347 () Bool)

(assert (=> b!4438736 (=> res!1837347 e!2763878)))

(declare-fun lt!1635277 () tuple2!49632)

(declare-fun head!9280 (ListLongMap!2263) tuple2!49632)

(assert (=> b!4438736 (= res!1837347 (= (head!9280 lm!1616) lt!1635277))))

(declare-fun lt!1635271 () ListMap!2857)

(assert (=> b!4438736 (eq!445 lt!1635271 lt!1635273)))

(assert (=> b!4438736 (= lt!1635273 (+!1192 lt!1635288 lt!1635282))))

(assert (=> b!4438736 (= lt!1635282 (tuple2!49631 key!3717 newValue!93))))

(declare-fun lt!1635274 () ListLongMap!2263)

(assert (=> b!4438736 (= lt!1635288 (extractMap!874 (toList!3614 lt!1635274)))))

(declare-fun +!1193 (ListLongMap!2263 tuple2!49632) ListLongMap!2263)

(assert (=> b!4438736 (= lt!1635271 (extractMap!874 (toList!3614 (+!1193 lt!1635274 lt!1635277))))))

(declare-fun lt!1635275 () Unit!83751)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!155 (ListLongMap!2263 (_ BitVec 64) List!49863 K!11105 V!11351 Hashable!5207) Unit!83751)

(assert (=> b!4438736 (= lt!1635275 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!155 lt!1635274 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7348 (ListLongMap!2263) ListLongMap!2263)

(assert (=> b!4438736 (= lt!1635274 (tail!7348 lm!1616))))

(declare-fun lt!1635276 () Unit!83751)

(assert (=> b!4438736 (= lt!1635276 e!2763867)))

(declare-fun c!755545 () Bool)

(declare-fun tail!7349 (List!49864) List!49864)

(assert (=> b!4438736 (= c!755545 (contains!12298 (extractMap!874 (tail!7349 (toList!3614 lm!1616))) key!3717))))

(declare-fun b!4438737 () Bool)

(declare-fun res!1837348 () Bool)

(assert (=> b!4438737 (=> (not res!1837348) (not e!2763872))))

(declare-fun hash!2258 (Hashable!5207 K!11105) (_ BitVec 64))

(assert (=> b!4438737 (= res!1837348 (= (hash!2258 hashF!1220 key!3717) hash!366))))

(declare-fun tp!1333932 () Bool)

(declare-fun b!4438738 () Bool)

(assert (=> b!4438738 (= e!2763874 (and tp_is_empty!26499 tp_is_empty!26497 tp!1333932))))

(declare-fun b!4438739 () Bool)

(declare-fun res!1837345 () Bool)

(assert (=> b!4438739 (=> (not res!1837345) (not e!2763872))))

(declare-fun allKeysSameHashInMap!919 (ListLongMap!2263 Hashable!5207) Bool)

(assert (=> b!4438739 (= res!1837345 (allKeysSameHashInMap!919 lm!1616 hashF!1220))))

(declare-fun b!4438740 () Bool)

(declare-fun res!1837349 () Bool)

(assert (=> b!4438740 (=> (not res!1837349) (not e!2763871))))

(assert (=> b!4438740 (= res!1837349 (forall!9672 (toList!3614 lm!1616) lambda!156790))))

(declare-fun b!4438741 () Bool)

(assert (=> b!4438741 (= e!2763871 (not e!2763870))))

(declare-fun res!1837337 () Bool)

(assert (=> b!4438741 (=> res!1837337 e!2763870)))

(declare-fun lt!1635281 () ListLongMap!2263)

(assert (=> b!4438741 (= res!1837337 (not (forall!9672 (toList!3614 lt!1635281) lambda!156790)))))

(assert (=> b!4438741 (forall!9672 (toList!3614 lt!1635281) lambda!156790)))

(assert (=> b!4438741 (= lt!1635281 (+!1193 lm!1616 lt!1635277))))

(assert (=> b!4438741 (= lt!1635277 (tuple2!49633 hash!366 newBucket!194))))

(declare-fun lt!1635280 () Unit!83751)

(declare-fun addValidProp!455 (ListLongMap!2263 Int (_ BitVec 64) List!49863) Unit!83751)

(assert (=> b!4438741 (= lt!1635280 (addValidProp!455 lm!1616 lambda!156790 hash!366 newBucket!194))))

(assert (= (and start!434132 res!1837340) b!4438739))

(assert (= (and b!4438739 res!1837345) b!4438737))

(assert (= (and b!4438737 res!1837348) b!4438727))

(assert (= (and b!4438727 res!1837343) b!4438725))

(assert (= (and b!4438725 res!1837341) b!4438735))

(assert (= (and b!4438735 res!1837346) b!4438731))

(assert (= (and b!4438735 (not res!1837335)) b!4438730))

(assert (= (and b!4438735 res!1837339) b!4438723))

(assert (= (and b!4438723 res!1837336) b!4438740))

(assert (= (and b!4438740 res!1837349) b!4438741))

(assert (= (and b!4438741 (not res!1837337)) b!4438729))

(assert (= (and b!4438729 (not res!1837342)) b!4438736))

(assert (= (and b!4438736 c!755545) b!4438728))

(assert (= (and b!4438736 (not c!755545)) b!4438724))

(assert (= (and b!4438736 (not res!1837347)) b!4438734))

(assert (= (and b!4438734 (not res!1837344)) b!4438733))

(assert (= (and b!4438733 (not res!1837338)) b!4438732))

(assert (= (and start!434132 ((_ is Cons!49739) newBucket!194)) b!4438738))

(assert (= start!434132 b!4438726))

(declare-fun m!5127249 () Bool)

(assert (=> b!4438735 m!5127249))

(declare-fun m!5127251 () Bool)

(assert (=> b!4438740 m!5127251))

(declare-fun m!5127253 () Bool)

(assert (=> b!4438737 m!5127253))

(declare-fun m!5127255 () Bool)

(assert (=> b!4438725 m!5127255))

(declare-fun m!5127257 () Bool)

(assert (=> b!4438725 m!5127257))

(declare-fun m!5127259 () Bool)

(assert (=> b!4438733 m!5127259))

(declare-fun m!5127261 () Bool)

(assert (=> b!4438733 m!5127261))

(assert (=> b!4438733 m!5127261))

(declare-fun m!5127263 () Bool)

(assert (=> b!4438733 m!5127263))

(declare-fun m!5127265 () Bool)

(assert (=> b!4438733 m!5127265))

(declare-fun m!5127267 () Bool)

(assert (=> b!4438723 m!5127267))

(declare-fun m!5127269 () Bool)

(assert (=> b!4438727 m!5127269))

(declare-fun m!5127271 () Bool)

(assert (=> b!4438741 m!5127271))

(assert (=> b!4438741 m!5127271))

(declare-fun m!5127273 () Bool)

(assert (=> b!4438741 m!5127273))

(declare-fun m!5127275 () Bool)

(assert (=> b!4438741 m!5127275))

(declare-fun m!5127277 () Bool)

(assert (=> b!4438731 m!5127277))

(declare-fun m!5127279 () Bool)

(assert (=> b!4438734 m!5127279))

(declare-fun m!5127281 () Bool)

(assert (=> b!4438734 m!5127281))

(declare-fun m!5127283 () Bool)

(assert (=> b!4438736 m!5127283))

(declare-fun m!5127285 () Bool)

(assert (=> b!4438736 m!5127285))

(declare-fun m!5127287 () Bool)

(assert (=> b!4438736 m!5127287))

(declare-fun m!5127289 () Bool)

(assert (=> b!4438736 m!5127289))

(declare-fun m!5127291 () Bool)

(assert (=> b!4438736 m!5127291))

(declare-fun m!5127293 () Bool)

(assert (=> b!4438736 m!5127293))

(declare-fun m!5127295 () Bool)

(assert (=> b!4438736 m!5127295))

(declare-fun m!5127297 () Bool)

(assert (=> b!4438736 m!5127297))

(declare-fun m!5127299 () Bool)

(assert (=> b!4438736 m!5127299))

(declare-fun m!5127301 () Bool)

(assert (=> b!4438736 m!5127301))

(assert (=> b!4438736 m!5127293))

(declare-fun m!5127303 () Bool)

(assert (=> b!4438736 m!5127303))

(assert (=> b!4438736 m!5127301))

(declare-fun m!5127305 () Bool)

(assert (=> b!4438732 m!5127305))

(declare-fun m!5127307 () Bool)

(assert (=> b!4438732 m!5127307))

(declare-fun m!5127309 () Bool)

(assert (=> b!4438732 m!5127309))

(assert (=> b!4438732 m!5127309))

(declare-fun m!5127311 () Bool)

(assert (=> b!4438732 m!5127311))

(declare-fun m!5127313 () Bool)

(assert (=> b!4438732 m!5127313))

(declare-fun m!5127315 () Bool)

(assert (=> b!4438732 m!5127315))

(declare-fun m!5127317 () Bool)

(assert (=> b!4438732 m!5127317))

(assert (=> start!434132 m!5127251))

(declare-fun m!5127319 () Bool)

(assert (=> start!434132 m!5127319))

(declare-fun m!5127321 () Bool)

(assert (=> b!4438728 m!5127321))

(declare-fun m!5127323 () Bool)

(assert (=> b!4438739 m!5127323))

(check-sat (not b!4438728) (not b!4438726) tp_is_empty!26499 (not b!4438739) (not b!4438737) (not b!4438735) (not b!4438736) (not b!4438738) (not b!4438741) (not b!4438740) (not b!4438731) (not b!4438727) (not b!4438734) (not b!4438723) (not start!434132) tp_is_empty!26497 (not b!4438725) (not b!4438733) (not b!4438732))
(check-sat)
