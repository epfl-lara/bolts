; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!451856 () Bool)

(assert start!451856)

(declare-fun b!4547341 () Bool)

(declare-fun e!2833914 () Bool)

(declare-fun e!2833921 () Bool)

(assert (=> b!4547341 (= e!2833914 (not e!2833921))))

(declare-fun res!1896142 () Bool)

(assert (=> b!4547341 (=> res!1896142 e!2833921)))

(declare-datatypes ((K!12200 0))(
  ( (K!12201 (val!18031 Int)) )
))
(declare-fun key!3287 () K!12200)

(declare-datatypes ((V!12446 0))(
  ( (V!12447 (val!18032 Int)) )
))
(declare-datatypes ((tuple2!51330 0))(
  ( (tuple2!51331 (_1!28959 K!12200) (_2!28959 V!12446)) )
))
(declare-datatypes ((List!50939 0))(
  ( (Nil!50815) (Cons!50815 (h!56710 tuple2!51330) (t!357905 List!50939)) )
))
(declare-fun lt!1720920 () List!50939)

(declare-fun newBucket!178 () List!50939)

(declare-fun removePairForKey!851 (List!50939 K!12200) List!50939)

(assert (=> b!4547341 (= res!1896142 (not (= newBucket!178 (removePairForKey!851 lt!1720920 key!3287))))))

(declare-fun lambda!177531 () Int)

(declare-datatypes ((tuple2!51332 0))(
  ( (tuple2!51333 (_1!28960 (_ BitVec 64)) (_2!28960 List!50939)) )
))
(declare-fun lt!1720915 () tuple2!51332)

(declare-datatypes ((List!50940 0))(
  ( (Nil!50816) (Cons!50816 (h!56711 tuple2!51332) (t!357906 List!50940)) )
))
(declare-datatypes ((ListLongMap!3087 0))(
  ( (ListLongMap!3088 (toList!4455 List!50940)) )
))
(declare-fun lm!1477 () ListLongMap!3087)

(declare-datatypes ((Unit!99681 0))(
  ( (Unit!99682) )
))
(declare-fun lt!1720921 () Unit!99681)

(declare-fun forallContained!2653 (List!50940 Int tuple2!51332) Unit!99681)

(assert (=> b!4547341 (= lt!1720921 (forallContained!2653 (toList!4455 lm!1477) lambda!177531 lt!1720915))))

(declare-fun contains!13644 (List!50940 tuple2!51332) Bool)

(assert (=> b!4547341 (contains!13644 (toList!4455 lm!1477) lt!1720915)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4547341 (= lt!1720915 (tuple2!51333 hash!344 lt!1720920))))

(declare-fun lt!1720910 () Unit!99681)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!736 (List!50940 (_ BitVec 64) List!50939) Unit!99681)

(assert (=> b!4547341 (= lt!1720910 (lemmaGetValueByKeyImpliesContainsTuple!736 (toList!4455 lm!1477) hash!344 lt!1720920))))

(declare-fun apply!11961 (ListLongMap!3087 (_ BitVec 64)) List!50939)

(assert (=> b!4547341 (= lt!1720920 (apply!11961 lm!1477 hash!344))))

(declare-fun lt!1720923 () (_ BitVec 64))

(declare-fun contains!13645 (ListLongMap!3087 (_ BitVec 64)) Bool)

(assert (=> b!4547341 (contains!13645 lm!1477 lt!1720923)))

(declare-datatypes ((Hashable!5619 0))(
  ( (HashableExt!5618 (__x!31322 Int)) )
))
(declare-fun hashF!1107 () Hashable!5619)

(declare-fun lt!1720922 () Unit!99681)

(declare-fun lemmaInGenMapThenLongMapContainsHash!298 (ListLongMap!3087 K!12200 Hashable!5619) Unit!99681)

(assert (=> b!4547341 (= lt!1720922 (lemmaInGenMapThenLongMapContainsHash!298 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4547342 () Bool)

(declare-fun e!2833913 () Bool)

(declare-fun lt!1720913 () ListLongMap!3087)

(declare-datatypes ((ListMap!3717 0))(
  ( (ListMap!3718 (toList!4456 List!50939)) )
))
(declare-fun extractMap!1280 (List!50940) ListMap!3717)

(assert (=> b!4547342 (= e!2833913 (= (extractMap!1280 (toList!4455 lt!1720913)) (extractMap!1280 (t!357906 (toList!4455 lm!1477)))))))

(declare-fun b!4547343 () Bool)

(declare-fun e!2833920 () Bool)

(assert (=> b!4547343 (= e!2833921 e!2833920)))

(declare-fun res!1896138 () Bool)

(assert (=> b!4547343 (=> res!1896138 e!2833920)))

(declare-fun lt!1720916 () Bool)

(assert (=> b!4547343 (= res!1896138 lt!1720916)))

(declare-fun lt!1720911 () Unit!99681)

(declare-fun e!2833919 () Unit!99681)

(assert (=> b!4547343 (= lt!1720911 e!2833919)))

(declare-fun c!776829 () Bool)

(assert (=> b!4547343 (= c!776829 lt!1720916)))

(declare-fun containsKey!1927 (List!50939 K!12200) Bool)

(assert (=> b!4547343 (= lt!1720916 (not (containsKey!1927 (_2!28960 (h!56711 (toList!4455 lm!1477))) key!3287)))))

(declare-fun b!4547344 () Bool)

(declare-fun Unit!99683 () Unit!99681)

(assert (=> b!4547344 (= e!2833919 Unit!99683)))

(declare-fun b!4547345 () Bool)

(declare-fun e!2833912 () Bool)

(assert (=> b!4547345 (= e!2833920 e!2833912)))

(declare-fun res!1896139 () Bool)

(assert (=> b!4547345 (=> res!1896139 e!2833912)))

(declare-fun lt!1720918 () List!50940)

(declare-fun containsKeyBiggerList!202 (List!50940 K!12200) Bool)

(assert (=> b!4547345 (= res!1896139 (not (containsKeyBiggerList!202 lt!1720918 key!3287)))))

(assert (=> b!4547345 (= lt!1720918 (Cons!50816 (h!56711 (toList!4455 lm!1477)) Nil!50816))))

(declare-fun b!4547346 () Bool)

(declare-fun e!2833916 () Bool)

(assert (=> b!4547346 (= e!2833912 e!2833916)))

(declare-fun res!1896135 () Bool)

(assert (=> b!4547346 (=> res!1896135 e!2833916)))

(declare-fun lt!1720914 () ListLongMap!3087)

(declare-fun tail!7829 (List!50940) List!50940)

(assert (=> b!4547346 (= res!1896135 (not (= (t!357906 (toList!4455 lm!1477)) (tail!7829 (toList!4455 lt!1720914)))))))

(declare-fun lt!1720912 () tuple2!51332)

(declare-fun +!1636 (ListLongMap!3087 tuple2!51332) ListLongMap!3087)

(assert (=> b!4547346 (= lt!1720914 (+!1636 lm!1477 lt!1720912))))

(declare-fun eq!675 (ListMap!3717 ListMap!3717) Bool)

(declare-fun -!444 (ListMap!3717 K!12200) ListMap!3717)

(assert (=> b!4547346 (eq!675 (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)) (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287))))

(assert (=> b!4547346 (= lt!1720912 (tuple2!51333 hash!344 newBucket!178))))

(declare-fun lt!1720924 () Unit!99681)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!64 ((_ BitVec 64) List!50939 List!50939 K!12200 Hashable!5619) Unit!99681)

(assert (=> b!4547346 (= lt!1720924 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!64 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun contains!13646 (ListMap!3717 K!12200) Bool)

(assert (=> b!4547346 (contains!13646 (extractMap!1280 lt!1720918) key!3287)))

(declare-fun lt!1720917 () Unit!99681)

(declare-fun lemmaListContainsThenExtractedMapContains!190 (ListLongMap!3087 K!12200 Hashable!5619) Unit!99681)

(assert (=> b!4547346 (= lt!1720917 (lemmaListContainsThenExtractedMapContains!190 (ListLongMap!3088 lt!1720918) key!3287 hashF!1107))))

(declare-fun res!1896132 () Bool)

(declare-fun e!2833917 () Bool)

(assert (=> start!451856 (=> (not res!1896132) (not e!2833917))))

(declare-fun forall!10389 (List!50940 Int) Bool)

(assert (=> start!451856 (= res!1896132 (forall!10389 (toList!4455 lm!1477) lambda!177531))))

(assert (=> start!451856 e!2833917))

(assert (=> start!451856 true))

(declare-fun e!2833915 () Bool)

(declare-fun inv!66384 (ListLongMap!3087) Bool)

(assert (=> start!451856 (and (inv!66384 lm!1477) e!2833915)))

(declare-fun tp_is_empty!28173 () Bool)

(assert (=> start!451856 tp_is_empty!28173))

(declare-fun e!2833918 () Bool)

(assert (=> start!451856 e!2833918))

(declare-fun tp!1338932 () Bool)

(declare-fun b!4547347 () Bool)

(declare-fun tp_is_empty!28175 () Bool)

(assert (=> b!4547347 (= e!2833918 (and tp_is_empty!28173 tp_is_empty!28175 tp!1338932))))

(declare-fun b!4547348 () Bool)

(declare-fun res!1896134 () Bool)

(assert (=> b!4547348 (=> (not res!1896134) (not e!2833914))))

(declare-fun allKeysSameHash!1078 (List!50939 (_ BitVec 64) Hashable!5619) Bool)

(assert (=> b!4547348 (= res!1896134 (allKeysSameHash!1078 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4547349 () Bool)

(declare-fun tp!1338933 () Bool)

(assert (=> b!4547349 (= e!2833915 tp!1338933)))

(declare-fun b!4547350 () Bool)

(assert (=> b!4547350 (= e!2833916 e!2833913)))

(declare-fun res!1896137 () Bool)

(assert (=> b!4547350 (=> res!1896137 e!2833913)))

(assert (=> b!4547350 (= res!1896137 (not (= lt!1720914 (+!1636 lt!1720913 lt!1720912))))))

(declare-fun tail!7830 (ListLongMap!3087) ListLongMap!3087)

(assert (=> b!4547350 (= lt!1720913 (tail!7830 lm!1477))))

(declare-fun b!4547351 () Bool)

(declare-fun res!1896140 () Bool)

(assert (=> b!4547351 (=> res!1896140 e!2833921)))

(declare-fun noDuplicateKeys!1224 (List!50939) Bool)

(assert (=> b!4547351 (= res!1896140 (not (noDuplicateKeys!1224 newBucket!178)))))

(declare-fun b!4547352 () Bool)

(declare-fun res!1896131 () Bool)

(assert (=> b!4547352 (=> (not res!1896131) (not e!2833917))))

(assert (=> b!4547352 (= res!1896131 (contains!13646 (extractMap!1280 (toList!4455 lm!1477)) key!3287))))

(declare-fun b!4547353 () Bool)

(assert (=> b!4547353 (= e!2833917 e!2833914)))

(declare-fun res!1896136 () Bool)

(assert (=> b!4547353 (=> (not res!1896136) (not e!2833914))))

(assert (=> b!4547353 (= res!1896136 (= lt!1720923 hash!344))))

(declare-fun hash!2972 (Hashable!5619 K!12200) (_ BitVec 64))

(assert (=> b!4547353 (= lt!1720923 (hash!2972 hashF!1107 key!3287))))

(declare-fun b!4547354 () Bool)

(declare-fun res!1896133 () Bool)

(assert (=> b!4547354 (=> (not res!1896133) (not e!2833917))))

(declare-fun allKeysSameHashInMap!1331 (ListLongMap!3087 Hashable!5619) Bool)

(assert (=> b!4547354 (= res!1896133 (allKeysSameHashInMap!1331 lm!1477 hashF!1107))))

(declare-fun b!4547355 () Bool)

(declare-fun Unit!99684 () Unit!99681)

(assert (=> b!4547355 (= e!2833919 Unit!99684)))

(declare-fun lt!1720919 () Unit!99681)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!212 (ListLongMap!3087 K!12200 Hashable!5619) Unit!99681)

(assert (=> b!4547355 (= lt!1720919 (lemmaNotInItsHashBucketThenNotInMap!212 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4547355 false))

(declare-fun b!4547356 () Bool)

(declare-fun res!1896141 () Bool)

(assert (=> b!4547356 (=> res!1896141 e!2833921)))

(get-info :version)

(assert (=> b!4547356 (= res!1896141 (or ((_ is Nil!50816) (toList!4455 lm!1477)) (not (= (_1!28960 (h!56711 (toList!4455 lm!1477))) hash!344))))))

(assert (= (and start!451856 res!1896132) b!4547354))

(assert (= (and b!4547354 res!1896133) b!4547352))

(assert (= (and b!4547352 res!1896131) b!4547353))

(assert (= (and b!4547353 res!1896136) b!4547348))

(assert (= (and b!4547348 res!1896134) b!4547341))

(assert (= (and b!4547341 (not res!1896142)) b!4547351))

(assert (= (and b!4547351 (not res!1896140)) b!4547356))

(assert (= (and b!4547356 (not res!1896141)) b!4547343))

(assert (= (and b!4547343 c!776829) b!4547355))

(assert (= (and b!4547343 (not c!776829)) b!4547344))

(assert (= (and b!4547343 (not res!1896138)) b!4547345))

(assert (= (and b!4547345 (not res!1896139)) b!4547346))

(assert (= (and b!4547346 (not res!1896135)) b!4547350))

(assert (= (and b!4547350 (not res!1896137)) b!4547342))

(assert (= start!451856 b!4547349))

(assert (= (and start!451856 ((_ is Cons!50815) newBucket!178)) b!4547347))

(declare-fun m!5319899 () Bool)

(assert (=> b!4547352 m!5319899))

(assert (=> b!4547352 m!5319899))

(declare-fun m!5319901 () Bool)

(assert (=> b!4547352 m!5319901))

(declare-fun m!5319903 () Bool)

(assert (=> start!451856 m!5319903))

(declare-fun m!5319905 () Bool)

(assert (=> start!451856 m!5319905))

(declare-fun m!5319907 () Bool)

(assert (=> b!4547346 m!5319907))

(declare-fun m!5319909 () Bool)

(assert (=> b!4547346 m!5319909))

(declare-fun m!5319911 () Bool)

(assert (=> b!4547346 m!5319911))

(declare-fun m!5319913 () Bool)

(assert (=> b!4547346 m!5319913))

(declare-fun m!5319915 () Bool)

(assert (=> b!4547346 m!5319915))

(assert (=> b!4547346 m!5319909))

(declare-fun m!5319917 () Bool)

(assert (=> b!4547346 m!5319917))

(declare-fun m!5319919 () Bool)

(assert (=> b!4547346 m!5319919))

(declare-fun m!5319921 () Bool)

(assert (=> b!4547346 m!5319921))

(assert (=> b!4547346 m!5319917))

(declare-fun m!5319923 () Bool)

(assert (=> b!4547346 m!5319923))

(assert (=> b!4547346 m!5319921))

(assert (=> b!4547346 m!5319907))

(declare-fun m!5319925 () Bool)

(assert (=> b!4547346 m!5319925))

(declare-fun m!5319927 () Bool)

(assert (=> b!4547348 m!5319927))

(declare-fun m!5319929 () Bool)

(assert (=> b!4547342 m!5319929))

(declare-fun m!5319931 () Bool)

(assert (=> b!4547342 m!5319931))

(declare-fun m!5319933 () Bool)

(assert (=> b!4547345 m!5319933))

(declare-fun m!5319935 () Bool)

(assert (=> b!4547354 m!5319935))

(declare-fun m!5319937 () Bool)

(assert (=> b!4547341 m!5319937))

(declare-fun m!5319939 () Bool)

(assert (=> b!4547341 m!5319939))

(declare-fun m!5319941 () Bool)

(assert (=> b!4547341 m!5319941))

(declare-fun m!5319943 () Bool)

(assert (=> b!4547341 m!5319943))

(declare-fun m!5319945 () Bool)

(assert (=> b!4547341 m!5319945))

(declare-fun m!5319947 () Bool)

(assert (=> b!4547341 m!5319947))

(declare-fun m!5319949 () Bool)

(assert (=> b!4547341 m!5319949))

(declare-fun m!5319951 () Bool)

(assert (=> b!4547353 m!5319951))

(declare-fun m!5319953 () Bool)

(assert (=> b!4547343 m!5319953))

(declare-fun m!5319955 () Bool)

(assert (=> b!4547350 m!5319955))

(declare-fun m!5319957 () Bool)

(assert (=> b!4547350 m!5319957))

(declare-fun m!5319959 () Bool)

(assert (=> b!4547351 m!5319959))

(declare-fun m!5319961 () Bool)

(assert (=> b!4547355 m!5319961))

(check-sat (not b!4547342) (not b!4547353) (not b!4547354) tp_is_empty!28175 (not b!4547343) (not b!4547345) (not b!4547348) (not b!4547351) (not b!4547341) (not b!4547350) (not b!4547355) (not b!4547349) tp_is_empty!28173 (not b!4547347) (not start!451856) (not b!4547346) (not b!4547352))
(check-sat)
(get-model)

(declare-fun d!1407214 () Bool)

(assert (=> d!1407214 true))

(assert (=> d!1407214 true))

(declare-fun lambda!177534 () Int)

(declare-fun forall!10391 (List!50939 Int) Bool)

(assert (=> d!1407214 (= (allKeysSameHash!1078 newBucket!178 hash!344 hashF!1107) (forall!10391 newBucket!178 lambda!177534))))

(declare-fun bs!885244 () Bool)

(assert (= bs!885244 d!1407214))

(declare-fun m!5319967 () Bool)

(assert (=> bs!885244 m!5319967))

(assert (=> b!4547348 d!1407214))

(declare-fun bs!885252 () Bool)

(declare-fun d!1407216 () Bool)

(assert (= bs!885252 (and d!1407216 start!451856)))

(declare-fun lambda!177544 () Int)

(assert (=> bs!885252 (= lambda!177544 lambda!177531)))

(declare-fun lt!1720945 () ListMap!3717)

(declare-fun invariantList!1058 (List!50939) Bool)

(assert (=> d!1407216 (invariantList!1058 (toList!4456 lt!1720945))))

(declare-fun e!2833942 () ListMap!3717)

(assert (=> d!1407216 (= lt!1720945 e!2833942)))

(declare-fun c!776836 () Bool)

(assert (=> d!1407216 (= c!776836 ((_ is Cons!50816) lt!1720918))))

(assert (=> d!1407216 (forall!10389 lt!1720918 lambda!177544)))

(assert (=> d!1407216 (= (extractMap!1280 lt!1720918) lt!1720945)))

(declare-fun b!4547389 () Bool)

(declare-fun addToMapMapFromBucket!744 (List!50939 ListMap!3717) ListMap!3717)

(assert (=> b!4547389 (= e!2833942 (addToMapMapFromBucket!744 (_2!28960 (h!56711 lt!1720918)) (extractMap!1280 (t!357906 lt!1720918))))))

(declare-fun b!4547390 () Bool)

(assert (=> b!4547390 (= e!2833942 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407216 c!776836) b!4547389))

(assert (= (and d!1407216 (not c!776836)) b!4547390))

(declare-fun m!5320007 () Bool)

(assert (=> d!1407216 m!5320007))

(declare-fun m!5320009 () Bool)

(assert (=> d!1407216 m!5320009))

(declare-fun m!5320011 () Bool)

(assert (=> b!4547389 m!5320011))

(assert (=> b!4547389 m!5320011))

(declare-fun m!5320013 () Bool)

(assert (=> b!4547389 m!5320013))

(assert (=> b!4547346 d!1407216))

(declare-fun bs!885253 () Bool)

(declare-fun d!1407226 () Bool)

(assert (= bs!885253 (and d!1407226 start!451856)))

(declare-fun lambda!177545 () Int)

(assert (=> bs!885253 (= lambda!177545 lambda!177531)))

(declare-fun bs!885254 () Bool)

(assert (= bs!885254 (and d!1407226 d!1407216)))

(assert (=> bs!885254 (= lambda!177545 lambda!177544)))

(declare-fun lt!1720950 () ListMap!3717)

(assert (=> d!1407226 (invariantList!1058 (toList!4456 lt!1720950))))

(declare-fun e!2833944 () ListMap!3717)

(assert (=> d!1407226 (= lt!1720950 e!2833944)))

(declare-fun c!776837 () Bool)

(assert (=> d!1407226 (= c!776837 ((_ is Cons!50816) (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))

(assert (=> d!1407226 (forall!10389 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816) lambda!177545)))

(assert (=> d!1407226 (= (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) lt!1720950)))

(declare-fun b!4547393 () Bool)

(assert (=> b!4547393 (= e!2833944 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(declare-fun b!4547394 () Bool)

(assert (=> b!4547394 (= e!2833944 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407226 c!776837) b!4547393))

(assert (= (and d!1407226 (not c!776837)) b!4547394))

(declare-fun m!5320027 () Bool)

(assert (=> d!1407226 m!5320027))

(declare-fun m!5320029 () Bool)

(assert (=> d!1407226 m!5320029))

(declare-fun m!5320031 () Bool)

(assert (=> b!4547393 m!5320031))

(assert (=> b!4547393 m!5320031))

(declare-fun m!5320033 () Bool)

(assert (=> b!4547393 m!5320033))

(assert (=> b!4547346 d!1407226))

(declare-fun d!1407230 () Bool)

(declare-fun e!2833947 () Bool)

(assert (=> d!1407230 e!2833947))

(declare-fun res!1896163 () Bool)

(assert (=> d!1407230 (=> (not res!1896163) (not e!2833947))))

(declare-fun lt!1720956 () ListMap!3717)

(assert (=> d!1407230 (= res!1896163 (not (contains!13646 lt!1720956 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!181 (List!50939 K!12200) List!50939)

(assert (=> d!1407230 (= lt!1720956 (ListMap!3718 (removePresrvNoDuplicatedKeys!181 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287)))))

(assert (=> d!1407230 (= (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287) lt!1720956)))

(declare-fun b!4547397 () Bool)

(declare-datatypes ((List!50942 0))(
  ( (Nil!50818) (Cons!50818 (h!56715 K!12200) (t!357908 List!50942)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8478 (List!50942) (InoxSet K!12200))

(declare-fun keys!17701 (ListMap!3717) List!50942)

(assert (=> b!4547397 (= e!2833947 (= ((_ map and) (content!8478 (keys!17701 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) ((_ map not) (store ((as const (Array K!12200 Bool)) false) key!3287 true))) (content!8478 (keys!17701 lt!1720956))))))

(assert (= (and d!1407230 res!1896163) b!4547397))

(declare-fun m!5320043 () Bool)

(assert (=> d!1407230 m!5320043))

(declare-fun m!5320045 () Bool)

(assert (=> d!1407230 m!5320045))

(assert (=> b!4547397 m!5319921))

(declare-fun m!5320047 () Bool)

(assert (=> b!4547397 m!5320047))

(assert (=> b!4547397 m!5320047))

(declare-fun m!5320049 () Bool)

(assert (=> b!4547397 m!5320049))

(declare-fun m!5320051 () Bool)

(assert (=> b!4547397 m!5320051))

(declare-fun m!5320053 () Bool)

(assert (=> b!4547397 m!5320053))

(declare-fun m!5320055 () Bool)

(assert (=> b!4547397 m!5320055))

(assert (=> b!4547397 m!5320053))

(assert (=> b!4547346 d!1407230))

(declare-fun b!4547490 () Bool)

(declare-fun e!2834013 () Bool)

(declare-fun contains!13648 (List!50942 K!12200) Bool)

(assert (=> b!4547490 (= e!2834013 (contains!13648 (keys!17701 (extractMap!1280 lt!1720918)) key!3287))))

(declare-fun b!4547491 () Bool)

(declare-fun e!2834014 () List!50942)

(assert (=> b!4547491 (= e!2834014 (keys!17701 (extractMap!1280 lt!1720918)))))

(declare-fun d!1407234 () Bool)

(declare-fun e!2834015 () Bool)

(assert (=> d!1407234 e!2834015))

(declare-fun res!1896201 () Bool)

(assert (=> d!1407234 (=> res!1896201 e!2834015)))

(declare-fun e!2834012 () Bool)

(assert (=> d!1407234 (= res!1896201 e!2834012)))

(declare-fun res!1896200 () Bool)

(assert (=> d!1407234 (=> (not res!1896200) (not e!2834012))))

(declare-fun lt!1721033 () Bool)

(assert (=> d!1407234 (= res!1896200 (not lt!1721033))))

(declare-fun lt!1721028 () Bool)

(assert (=> d!1407234 (= lt!1721033 lt!1721028)))

(declare-fun lt!1721032 () Unit!99681)

(declare-fun e!2834010 () Unit!99681)

(assert (=> d!1407234 (= lt!1721032 e!2834010)))

(declare-fun c!776865 () Bool)

(assert (=> d!1407234 (= c!776865 lt!1721028)))

(declare-fun containsKey!1930 (List!50939 K!12200) Bool)

(assert (=> d!1407234 (= lt!1721028 (containsKey!1930 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(assert (=> d!1407234 (= (contains!13646 (extractMap!1280 lt!1720918) key!3287) lt!1721033)))

(declare-fun b!4547492 () Bool)

(declare-fun lt!1721030 () Unit!99681)

(assert (=> b!4547492 (= e!2834010 lt!1721030)))

(declare-fun lt!1721029 () Unit!99681)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (List!50939 K!12200) Unit!99681)

(assert (=> b!4547492 (= lt!1721029 (lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(declare-datatypes ((Option!11243 0))(
  ( (None!11242) (Some!11242 (v!44982 V!12446)) )
))
(declare-fun isDefined!8515 (Option!11243) Bool)

(declare-fun getValueByKey!1175 (List!50939 K!12200) Option!11243)

(assert (=> b!4547492 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(declare-fun lt!1721031 () Unit!99681)

(assert (=> b!4547492 (= lt!1721031 lt!1721029)))

(declare-fun lemmaInListThenGetKeysListContains!502 (List!50939 K!12200) Unit!99681)

(assert (=> b!4547492 (= lt!1721030 (lemmaInListThenGetKeysListContains!502 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(declare-fun call!317113 () Bool)

(assert (=> b!4547492 call!317113))

(declare-fun b!4547493 () Bool)

(declare-fun e!2834011 () Unit!99681)

(assert (=> b!4547493 (= e!2834010 e!2834011)))

(declare-fun c!776864 () Bool)

(assert (=> b!4547493 (= c!776864 call!317113)))

(declare-fun b!4547494 () Bool)

(declare-fun getKeysList!506 (List!50939) List!50942)

(assert (=> b!4547494 (= e!2834014 (getKeysList!506 (toList!4456 (extractMap!1280 lt!1720918))))))

(declare-fun b!4547495 () Bool)

(assert (=> b!4547495 (= e!2834015 e!2834013)))

(declare-fun res!1896202 () Bool)

(assert (=> b!4547495 (=> (not res!1896202) (not e!2834013))))

(assert (=> b!4547495 (= res!1896202 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 lt!1720918)) key!3287)))))

(declare-fun b!4547496 () Bool)

(declare-fun Unit!99690 () Unit!99681)

(assert (=> b!4547496 (= e!2834011 Unit!99690)))

(declare-fun b!4547497 () Bool)

(assert (=> b!4547497 false))

(declare-fun lt!1721027 () Unit!99681)

(declare-fun lt!1721026 () Unit!99681)

(assert (=> b!4547497 (= lt!1721027 lt!1721026)))

(assert (=> b!4547497 (containsKey!1930 (toList!4456 (extractMap!1280 lt!1720918)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!505 (List!50939 K!12200) Unit!99681)

(assert (=> b!4547497 (= lt!1721026 (lemmaInGetKeysListThenContainsKey!505 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(declare-fun Unit!99691 () Unit!99681)

(assert (=> b!4547497 (= e!2834011 Unit!99691)))

(declare-fun b!4547498 () Bool)

(assert (=> b!4547498 (= e!2834012 (not (contains!13648 (keys!17701 (extractMap!1280 lt!1720918)) key!3287)))))

(declare-fun bm!317108 () Bool)

(assert (=> bm!317108 (= call!317113 (contains!13648 e!2834014 key!3287))))

(declare-fun c!776866 () Bool)

(assert (=> bm!317108 (= c!776866 c!776865)))

(assert (= (and d!1407234 c!776865) b!4547492))

(assert (= (and d!1407234 (not c!776865)) b!4547493))

(assert (= (and b!4547493 c!776864) b!4547497))

(assert (= (and b!4547493 (not c!776864)) b!4547496))

(assert (= (or b!4547492 b!4547493) bm!317108))

(assert (= (and bm!317108 c!776866) b!4547494))

(assert (= (and bm!317108 (not c!776866)) b!4547491))

(assert (= (and d!1407234 res!1896200) b!4547498))

(assert (= (and d!1407234 (not res!1896201)) b!4547495))

(assert (= (and b!4547495 res!1896202) b!4547490))

(declare-fun m!5320149 () Bool)

(assert (=> b!4547492 m!5320149))

(declare-fun m!5320151 () Bool)

(assert (=> b!4547492 m!5320151))

(assert (=> b!4547492 m!5320151))

(declare-fun m!5320153 () Bool)

(assert (=> b!4547492 m!5320153))

(declare-fun m!5320155 () Bool)

(assert (=> b!4547492 m!5320155))

(assert (=> b!4547491 m!5319907))

(declare-fun m!5320157 () Bool)

(assert (=> b!4547491 m!5320157))

(assert (=> b!4547495 m!5320151))

(assert (=> b!4547495 m!5320151))

(assert (=> b!4547495 m!5320153))

(declare-fun m!5320159 () Bool)

(assert (=> b!4547497 m!5320159))

(declare-fun m!5320161 () Bool)

(assert (=> b!4547497 m!5320161))

(assert (=> b!4547498 m!5319907))

(assert (=> b!4547498 m!5320157))

(assert (=> b!4547498 m!5320157))

(declare-fun m!5320171 () Bool)

(assert (=> b!4547498 m!5320171))

(assert (=> b!4547490 m!5319907))

(assert (=> b!4547490 m!5320157))

(assert (=> b!4547490 m!5320157))

(assert (=> b!4547490 m!5320171))

(declare-fun m!5320183 () Bool)

(assert (=> bm!317108 m!5320183))

(assert (=> d!1407234 m!5320159))

(declare-fun m!5320187 () Bool)

(assert (=> b!4547494 m!5320187))

(assert (=> b!4547346 d!1407234))

(declare-fun bs!885290 () Bool)

(declare-fun d!1407268 () Bool)

(assert (= bs!885290 (and d!1407268 start!451856)))

(declare-fun lambda!177556 () Int)

(assert (=> bs!885290 (= lambda!177556 lambda!177531)))

(declare-fun bs!885291 () Bool)

(assert (= bs!885291 (and d!1407268 d!1407216)))

(assert (=> bs!885291 (= lambda!177556 lambda!177544)))

(declare-fun bs!885292 () Bool)

(assert (= bs!885292 (and d!1407268 d!1407226)))

(assert (=> bs!885292 (= lambda!177556 lambda!177545)))

(declare-fun lt!1721044 () ListMap!3717)

(assert (=> d!1407268 (invariantList!1058 (toList!4456 lt!1721044))))

(declare-fun e!2834024 () ListMap!3717)

(assert (=> d!1407268 (= lt!1721044 e!2834024)))

(declare-fun c!776872 () Bool)

(assert (=> d!1407268 (= c!776872 ((_ is Cons!50816) (Cons!50816 lt!1720912 Nil!50816)))))

(assert (=> d!1407268 (forall!10389 (Cons!50816 lt!1720912 Nil!50816) lambda!177556)))

(assert (=> d!1407268 (= (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)) lt!1721044)))

(declare-fun b!4547512 () Bool)

(assert (=> b!4547512 (= e!2834024 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))))))

(declare-fun b!4547513 () Bool)

(assert (=> b!4547513 (= e!2834024 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407268 c!776872) b!4547512))

(assert (= (and d!1407268 (not c!776872)) b!4547513))

(declare-fun m!5320207 () Bool)

(assert (=> d!1407268 m!5320207))

(declare-fun m!5320209 () Bool)

(assert (=> d!1407268 m!5320209))

(declare-fun m!5320211 () Bool)

(assert (=> b!4547512 m!5320211))

(assert (=> b!4547512 m!5320211))

(declare-fun m!5320215 () Bool)

(assert (=> b!4547512 m!5320215))

(assert (=> b!4547346 d!1407268))

(declare-fun d!1407276 () Bool)

(declare-fun content!8479 (List!50939) (InoxSet tuple2!51330))

(assert (=> d!1407276 (= (eq!675 (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)) (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287)) (= (content!8479 (toList!4456 (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)))) (content!8479 (toList!4456 (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287)))))))

(declare-fun bs!885294 () Bool)

(assert (= bs!885294 d!1407276))

(declare-fun m!5320217 () Bool)

(assert (=> bs!885294 m!5320217))

(declare-fun m!5320219 () Bool)

(assert (=> bs!885294 m!5320219))

(assert (=> b!4547346 d!1407276))

(declare-fun bs!885320 () Bool)

(declare-fun d!1407278 () Bool)

(assert (= bs!885320 (and d!1407278 start!451856)))

(declare-fun lambda!177565 () Int)

(assert (=> bs!885320 (= lambda!177565 lambda!177531)))

(declare-fun bs!885321 () Bool)

(assert (= bs!885321 (and d!1407278 d!1407216)))

(assert (=> bs!885321 (= lambda!177565 lambda!177544)))

(declare-fun bs!885322 () Bool)

(assert (= bs!885322 (and d!1407278 d!1407226)))

(assert (=> bs!885322 (= lambda!177565 lambda!177545)))

(declare-fun bs!885323 () Bool)

(assert (= bs!885323 (and d!1407278 d!1407268)))

(assert (=> bs!885323 (= lambda!177565 lambda!177556)))

(assert (=> d!1407278 (contains!13646 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918))) key!3287)))

(declare-fun lt!1721054 () Unit!99681)

(declare-fun choose!30048 (ListLongMap!3087 K!12200 Hashable!5619) Unit!99681)

(assert (=> d!1407278 (= lt!1721054 (choose!30048 (ListLongMap!3088 lt!1720918) key!3287 hashF!1107))))

(assert (=> d!1407278 (forall!10389 (toList!4455 (ListLongMap!3088 lt!1720918)) lambda!177565)))

(assert (=> d!1407278 (= (lemmaListContainsThenExtractedMapContains!190 (ListLongMap!3088 lt!1720918) key!3287 hashF!1107) lt!1721054)))

(declare-fun bs!885324 () Bool)

(assert (= bs!885324 d!1407278))

(declare-fun m!5320239 () Bool)

(assert (=> bs!885324 m!5320239))

(assert (=> bs!885324 m!5320239))

(declare-fun m!5320241 () Bool)

(assert (=> bs!885324 m!5320241))

(declare-fun m!5320243 () Bool)

(assert (=> bs!885324 m!5320243))

(declare-fun m!5320245 () Bool)

(assert (=> bs!885324 m!5320245))

(assert (=> b!4547346 d!1407278))

(declare-fun d!1407294 () Bool)

(assert (=> d!1407294 (= (tail!7829 (toList!4455 lt!1720914)) (t!357906 (toList!4455 lt!1720914)))))

(assert (=> b!4547346 d!1407294))

(declare-fun d!1407296 () Bool)

(declare-fun e!2834046 () Bool)

(assert (=> d!1407296 e!2834046))

(declare-fun res!1896224 () Bool)

(assert (=> d!1407296 (=> (not res!1896224) (not e!2834046))))

(declare-fun lt!1721064 () ListLongMap!3087)

(assert (=> d!1407296 (= res!1896224 (contains!13645 lt!1721064 (_1!28960 lt!1720912)))))

(declare-fun lt!1721065 () List!50940)

(assert (=> d!1407296 (= lt!1721064 (ListLongMap!3088 lt!1721065))))

(declare-fun lt!1721063 () Unit!99681)

(declare-fun lt!1721066 () Unit!99681)

(assert (=> d!1407296 (= lt!1721063 lt!1721066)))

(declare-datatypes ((Option!11244 0))(
  ( (None!11243) (Some!11243 (v!44983 List!50939)) )
))
(declare-fun getValueByKey!1176 (List!50940 (_ BitVec 64)) Option!11244)

(assert (=> d!1407296 (= (getValueByKey!1176 lt!1721065 (_1!28960 lt!1720912)) (Some!11243 (_2!28960 lt!1720912)))))

(declare-fun lemmaContainsTupThenGetReturnValue!736 (List!50940 (_ BitVec 64) List!50939) Unit!99681)

(assert (=> d!1407296 (= lt!1721066 (lemmaContainsTupThenGetReturnValue!736 lt!1721065 (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(declare-fun insertStrictlySorted!448 (List!50940 (_ BitVec 64) List!50939) List!50940)

(assert (=> d!1407296 (= lt!1721065 (insertStrictlySorted!448 (toList!4455 lm!1477) (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(assert (=> d!1407296 (= (+!1636 lm!1477 lt!1720912) lt!1721064)))

(declare-fun b!4547544 () Bool)

(declare-fun res!1896225 () Bool)

(assert (=> b!4547544 (=> (not res!1896225) (not e!2834046))))

(assert (=> b!4547544 (= res!1896225 (= (getValueByKey!1176 (toList!4455 lt!1721064) (_1!28960 lt!1720912)) (Some!11243 (_2!28960 lt!1720912))))))

(declare-fun b!4547545 () Bool)

(assert (=> b!4547545 (= e!2834046 (contains!13644 (toList!4455 lt!1721064) lt!1720912))))

(assert (= (and d!1407296 res!1896224) b!4547544))

(assert (= (and b!4547544 res!1896225) b!4547545))

(declare-fun m!5320247 () Bool)

(assert (=> d!1407296 m!5320247))

(declare-fun m!5320249 () Bool)

(assert (=> d!1407296 m!5320249))

(declare-fun m!5320251 () Bool)

(assert (=> d!1407296 m!5320251))

(declare-fun m!5320253 () Bool)

(assert (=> d!1407296 m!5320253))

(declare-fun m!5320255 () Bool)

(assert (=> b!4547544 m!5320255))

(declare-fun m!5320257 () Bool)

(assert (=> b!4547545 m!5320257))

(assert (=> b!4547346 d!1407296))

(declare-fun d!1407298 () Bool)

(assert (=> d!1407298 (eq!675 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816)) (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287))))

(declare-fun lt!1721069 () Unit!99681)

(declare-fun choose!30049 ((_ BitVec 64) List!50939 List!50939 K!12200 Hashable!5619) Unit!99681)

(assert (=> d!1407298 (= lt!1721069 (choose!30049 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1407298 (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lm!1477))))))

(assert (=> d!1407298 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!64 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1721069)))

(declare-fun bs!885325 () Bool)

(assert (= bs!885325 d!1407298))

(assert (=> bs!885325 m!5319921))

(declare-fun m!5320259 () Bool)

(assert (=> bs!885325 m!5320259))

(assert (=> bs!885325 m!5319917))

(declare-fun m!5320261 () Bool)

(assert (=> bs!885325 m!5320261))

(declare-fun m!5320263 () Bool)

(assert (=> bs!885325 m!5320263))

(assert (=> bs!885325 m!5319921))

(assert (=> bs!885325 m!5319917))

(declare-fun m!5320265 () Bool)

(assert (=> bs!885325 m!5320265))

(assert (=> bs!885325 m!5320259))

(assert (=> b!4547346 d!1407298))

(declare-fun d!1407300 () Bool)

(declare-fun res!1896234 () Bool)

(declare-fun e!2834055 () Bool)

(assert (=> d!1407300 (=> res!1896234 e!2834055)))

(declare-fun e!2834054 () Bool)

(assert (=> d!1407300 (= res!1896234 e!2834054)))

(declare-fun res!1896232 () Bool)

(assert (=> d!1407300 (=> (not res!1896232) (not e!2834054))))

(assert (=> d!1407300 (= res!1896232 ((_ is Cons!50816) lt!1720918))))

(assert (=> d!1407300 (= (containsKeyBiggerList!202 lt!1720918 key!3287) e!2834055)))

(declare-fun b!4547552 () Bool)

(assert (=> b!4547552 (= e!2834054 (containsKey!1927 (_2!28960 (h!56711 lt!1720918)) key!3287))))

(declare-fun b!4547553 () Bool)

(declare-fun e!2834053 () Bool)

(assert (=> b!4547553 (= e!2834055 e!2834053)))

(declare-fun res!1896233 () Bool)

(assert (=> b!4547553 (=> (not res!1896233) (not e!2834053))))

(assert (=> b!4547553 (= res!1896233 ((_ is Cons!50816) lt!1720918))))

(declare-fun b!4547554 () Bool)

(assert (=> b!4547554 (= e!2834053 (containsKeyBiggerList!202 (t!357906 lt!1720918) key!3287))))

(assert (= (and d!1407300 res!1896232) b!4547552))

(assert (= (and d!1407300 (not res!1896234)) b!4547553))

(assert (= (and b!4547553 res!1896233) b!4547554))

(declare-fun m!5320267 () Bool)

(assert (=> b!4547552 m!5320267))

(declare-fun m!5320269 () Bool)

(assert (=> b!4547554 m!5320269))

(assert (=> b!4547345 d!1407300))

(declare-fun bs!885326 () Bool)

(declare-fun d!1407302 () Bool)

(assert (= bs!885326 (and d!1407302 d!1407226)))

(declare-fun lambda!177568 () Int)

(assert (=> bs!885326 (= lambda!177568 lambda!177545)))

(declare-fun bs!885327 () Bool)

(assert (= bs!885327 (and d!1407302 start!451856)))

(assert (=> bs!885327 (= lambda!177568 lambda!177531)))

(declare-fun bs!885328 () Bool)

(assert (= bs!885328 (and d!1407302 d!1407278)))

(assert (=> bs!885328 (= lambda!177568 lambda!177565)))

(declare-fun bs!885329 () Bool)

(assert (= bs!885329 (and d!1407302 d!1407216)))

(assert (=> bs!885329 (= lambda!177568 lambda!177544)))

(declare-fun bs!885330 () Bool)

(assert (= bs!885330 (and d!1407302 d!1407268)))

(assert (=> bs!885330 (= lambda!177568 lambda!177556)))

(assert (=> d!1407302 (not (contains!13646 (extractMap!1280 (toList!4455 lm!1477)) key!3287))))

(declare-fun lt!1721072 () Unit!99681)

(declare-fun choose!30050 (ListLongMap!3087 K!12200 Hashable!5619) Unit!99681)

(assert (=> d!1407302 (= lt!1721072 (choose!30050 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1407302 (forall!10389 (toList!4455 lm!1477) lambda!177568)))

(assert (=> d!1407302 (= (lemmaNotInItsHashBucketThenNotInMap!212 lm!1477 key!3287 hashF!1107) lt!1721072)))

(declare-fun bs!885331 () Bool)

(assert (= bs!885331 d!1407302))

(assert (=> bs!885331 m!5319899))

(assert (=> bs!885331 m!5319899))

(assert (=> bs!885331 m!5319901))

(declare-fun m!5320271 () Bool)

(assert (=> bs!885331 m!5320271))

(declare-fun m!5320273 () Bool)

(assert (=> bs!885331 m!5320273))

(assert (=> b!4547355 d!1407302))

(declare-fun d!1407304 () Bool)

(declare-fun res!1896239 () Bool)

(declare-fun e!2834060 () Bool)

(assert (=> d!1407304 (=> res!1896239 e!2834060)))

(assert (=> d!1407304 (= res!1896239 (and ((_ is Cons!50815) (_2!28960 (h!56711 (toList!4455 lm!1477)))) (= (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477))))) key!3287)))))

(assert (=> d!1407304 (= (containsKey!1927 (_2!28960 (h!56711 (toList!4455 lm!1477))) key!3287) e!2834060)))

(declare-fun b!4547559 () Bool)

(declare-fun e!2834061 () Bool)

(assert (=> b!4547559 (= e!2834060 e!2834061)))

(declare-fun res!1896240 () Bool)

(assert (=> b!4547559 (=> (not res!1896240) (not e!2834061))))

(assert (=> b!4547559 (= res!1896240 ((_ is Cons!50815) (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(declare-fun b!4547560 () Bool)

(assert (=> b!4547560 (= e!2834061 (containsKey!1927 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477)))) key!3287))))

(assert (= (and d!1407304 (not res!1896239)) b!4547559))

(assert (= (and b!4547559 res!1896240) b!4547560))

(declare-fun m!5320275 () Bool)

(assert (=> b!4547560 m!5320275))

(assert (=> b!4547343 d!1407304))

(declare-fun bs!885332 () Bool)

(declare-fun d!1407306 () Bool)

(assert (= bs!885332 (and d!1407306 d!1407226)))

(declare-fun lambda!177571 () Int)

(assert (=> bs!885332 (not (= lambda!177571 lambda!177545))))

(declare-fun bs!885333 () Bool)

(assert (= bs!885333 (and d!1407306 start!451856)))

(assert (=> bs!885333 (not (= lambda!177571 lambda!177531))))

(declare-fun bs!885334 () Bool)

(assert (= bs!885334 (and d!1407306 d!1407278)))

(assert (=> bs!885334 (not (= lambda!177571 lambda!177565))))

(declare-fun bs!885335 () Bool)

(assert (= bs!885335 (and d!1407306 d!1407216)))

(assert (=> bs!885335 (not (= lambda!177571 lambda!177544))))

(declare-fun bs!885336 () Bool)

(assert (= bs!885336 (and d!1407306 d!1407302)))

(assert (=> bs!885336 (not (= lambda!177571 lambda!177568))))

(declare-fun bs!885337 () Bool)

(assert (= bs!885337 (and d!1407306 d!1407268)))

(assert (=> bs!885337 (not (= lambda!177571 lambda!177556))))

(assert (=> d!1407306 true))

(assert (=> d!1407306 (= (allKeysSameHashInMap!1331 lm!1477 hashF!1107) (forall!10389 (toList!4455 lm!1477) lambda!177571))))

(declare-fun bs!885338 () Bool)

(assert (= bs!885338 d!1407306))

(declare-fun m!5320277 () Bool)

(assert (=> bs!885338 m!5320277))

(assert (=> b!4547354 d!1407306))

(declare-fun d!1407308 () Bool)

(declare-fun hash!2976 (Hashable!5619 K!12200) (_ BitVec 64))

(assert (=> d!1407308 (= (hash!2972 hashF!1107 key!3287) (hash!2976 hashF!1107 key!3287))))

(declare-fun bs!885339 () Bool)

(assert (= bs!885339 d!1407308))

(declare-fun m!5320279 () Bool)

(assert (=> bs!885339 m!5320279))

(assert (=> b!4547353 d!1407308))

(declare-fun d!1407310 () Bool)

(declare-fun res!1896245 () Bool)

(declare-fun e!2834066 () Bool)

(assert (=> d!1407310 (=> res!1896245 e!2834066)))

(assert (=> d!1407310 (= res!1896245 ((_ is Nil!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407310 (= (forall!10389 (toList!4455 lm!1477) lambda!177531) e!2834066)))

(declare-fun b!4547567 () Bool)

(declare-fun e!2834067 () Bool)

(assert (=> b!4547567 (= e!2834066 e!2834067)))

(declare-fun res!1896246 () Bool)

(assert (=> b!4547567 (=> (not res!1896246) (not e!2834067))))

(declare-fun dynLambda!21244 (Int tuple2!51332) Bool)

(assert (=> b!4547567 (= res!1896246 (dynLambda!21244 lambda!177531 (h!56711 (toList!4455 lm!1477))))))

(declare-fun b!4547568 () Bool)

(assert (=> b!4547568 (= e!2834067 (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177531))))

(assert (= (and d!1407310 (not res!1896245)) b!4547567))

(assert (= (and b!4547567 res!1896246) b!4547568))

(declare-fun b_lambda!159031 () Bool)

(assert (=> (not b_lambda!159031) (not b!4547567)))

(declare-fun m!5320281 () Bool)

(assert (=> b!4547567 m!5320281))

(declare-fun m!5320283 () Bool)

(assert (=> b!4547568 m!5320283))

(assert (=> start!451856 d!1407310))

(declare-fun d!1407312 () Bool)

(declare-fun isStrictlySorted!472 (List!50940) Bool)

(assert (=> d!1407312 (= (inv!66384 lm!1477) (isStrictlySorted!472 (toList!4455 lm!1477)))))

(declare-fun bs!885340 () Bool)

(assert (= bs!885340 d!1407312))

(declare-fun m!5320285 () Bool)

(assert (=> bs!885340 m!5320285))

(assert (=> start!451856 d!1407312))

(declare-fun bs!885341 () Bool)

(declare-fun d!1407314 () Bool)

(assert (= bs!885341 (and d!1407314 d!1407226)))

(declare-fun lambda!177572 () Int)

(assert (=> bs!885341 (= lambda!177572 lambda!177545)))

(declare-fun bs!885342 () Bool)

(assert (= bs!885342 (and d!1407314 start!451856)))

(assert (=> bs!885342 (= lambda!177572 lambda!177531)))

(declare-fun bs!885343 () Bool)

(assert (= bs!885343 (and d!1407314 d!1407278)))

(assert (=> bs!885343 (= lambda!177572 lambda!177565)))

(declare-fun bs!885344 () Bool)

(assert (= bs!885344 (and d!1407314 d!1407216)))

(assert (=> bs!885344 (= lambda!177572 lambda!177544)))

(declare-fun bs!885345 () Bool)

(assert (= bs!885345 (and d!1407314 d!1407302)))

(assert (=> bs!885345 (= lambda!177572 lambda!177568)))

(declare-fun bs!885346 () Bool)

(assert (= bs!885346 (and d!1407314 d!1407268)))

(assert (=> bs!885346 (= lambda!177572 lambda!177556)))

(declare-fun bs!885347 () Bool)

(assert (= bs!885347 (and d!1407314 d!1407306)))

(assert (=> bs!885347 (not (= lambda!177572 lambda!177571))))

(declare-fun lt!1721073 () ListMap!3717)

(assert (=> d!1407314 (invariantList!1058 (toList!4456 lt!1721073))))

(declare-fun e!2834068 () ListMap!3717)

(assert (=> d!1407314 (= lt!1721073 e!2834068)))

(declare-fun c!776873 () Bool)

(assert (=> d!1407314 (= c!776873 ((_ is Cons!50816) (toList!4455 lt!1720913)))))

(assert (=> d!1407314 (forall!10389 (toList!4455 lt!1720913) lambda!177572)))

(assert (=> d!1407314 (= (extractMap!1280 (toList!4455 lt!1720913)) lt!1721073)))

(declare-fun b!4547569 () Bool)

(assert (=> b!4547569 (= e!2834068 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))))))

(declare-fun b!4547570 () Bool)

(assert (=> b!4547570 (= e!2834068 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407314 c!776873) b!4547569))

(assert (= (and d!1407314 (not c!776873)) b!4547570))

(declare-fun m!5320287 () Bool)

(assert (=> d!1407314 m!5320287))

(declare-fun m!5320289 () Bool)

(assert (=> d!1407314 m!5320289))

(declare-fun m!5320291 () Bool)

(assert (=> b!4547569 m!5320291))

(assert (=> b!4547569 m!5320291))

(declare-fun m!5320293 () Bool)

(assert (=> b!4547569 m!5320293))

(assert (=> b!4547342 d!1407314))

(declare-fun bs!885348 () Bool)

(declare-fun d!1407316 () Bool)

(assert (= bs!885348 (and d!1407316 d!1407226)))

(declare-fun lambda!177573 () Int)

(assert (=> bs!885348 (= lambda!177573 lambda!177545)))

(declare-fun bs!885349 () Bool)

(assert (= bs!885349 (and d!1407316 start!451856)))

(assert (=> bs!885349 (= lambda!177573 lambda!177531)))

(declare-fun bs!885350 () Bool)

(assert (= bs!885350 (and d!1407316 d!1407278)))

(assert (=> bs!885350 (= lambda!177573 lambda!177565)))

(declare-fun bs!885351 () Bool)

(assert (= bs!885351 (and d!1407316 d!1407216)))

(assert (=> bs!885351 (= lambda!177573 lambda!177544)))

(declare-fun bs!885352 () Bool)

(assert (= bs!885352 (and d!1407316 d!1407302)))

(assert (=> bs!885352 (= lambda!177573 lambda!177568)))

(declare-fun bs!885353 () Bool)

(assert (= bs!885353 (and d!1407316 d!1407306)))

(assert (=> bs!885353 (not (= lambda!177573 lambda!177571))))

(declare-fun bs!885354 () Bool)

(assert (= bs!885354 (and d!1407316 d!1407268)))

(assert (=> bs!885354 (= lambda!177573 lambda!177556)))

(declare-fun bs!885355 () Bool)

(assert (= bs!885355 (and d!1407316 d!1407314)))

(assert (=> bs!885355 (= lambda!177573 lambda!177572)))

(declare-fun lt!1721074 () ListMap!3717)

(assert (=> d!1407316 (invariantList!1058 (toList!4456 lt!1721074))))

(declare-fun e!2834069 () ListMap!3717)

(assert (=> d!1407316 (= lt!1721074 e!2834069)))

(declare-fun c!776874 () Bool)

(assert (=> d!1407316 (= c!776874 ((_ is Cons!50816) (t!357906 (toList!4455 lm!1477))))))

(assert (=> d!1407316 (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177573)))

(assert (=> d!1407316 (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721074)))

(declare-fun b!4547571 () Bool)

(assert (=> b!4547571 (= e!2834069 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))))))

(declare-fun b!4547572 () Bool)

(assert (=> b!4547572 (= e!2834069 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407316 c!776874) b!4547571))

(assert (= (and d!1407316 (not c!776874)) b!4547572))

(declare-fun m!5320295 () Bool)

(assert (=> d!1407316 m!5320295))

(declare-fun m!5320297 () Bool)

(assert (=> d!1407316 m!5320297))

(declare-fun m!5320299 () Bool)

(assert (=> b!4547571 m!5320299))

(assert (=> b!4547571 m!5320299))

(declare-fun m!5320301 () Bool)

(assert (=> b!4547571 m!5320301))

(assert (=> b!4547342 d!1407316))

(declare-fun d!1407318 () Bool)

(assert (=> d!1407318 (dynLambda!21244 lambda!177531 lt!1720915)))

(declare-fun lt!1721077 () Unit!99681)

(declare-fun choose!30051 (List!50940 Int tuple2!51332) Unit!99681)

(assert (=> d!1407318 (= lt!1721077 (choose!30051 (toList!4455 lm!1477) lambda!177531 lt!1720915))))

(declare-fun e!2834072 () Bool)

(assert (=> d!1407318 e!2834072))

(declare-fun res!1896249 () Bool)

(assert (=> d!1407318 (=> (not res!1896249) (not e!2834072))))

(assert (=> d!1407318 (= res!1896249 (forall!10389 (toList!4455 lm!1477) lambda!177531))))

(assert (=> d!1407318 (= (forallContained!2653 (toList!4455 lm!1477) lambda!177531 lt!1720915) lt!1721077)))

(declare-fun b!4547575 () Bool)

(assert (=> b!4547575 (= e!2834072 (contains!13644 (toList!4455 lm!1477) lt!1720915))))

(assert (= (and d!1407318 res!1896249) b!4547575))

(declare-fun b_lambda!159033 () Bool)

(assert (=> (not b_lambda!159033) (not d!1407318)))

(declare-fun m!5320303 () Bool)

(assert (=> d!1407318 m!5320303))

(declare-fun m!5320305 () Bool)

(assert (=> d!1407318 m!5320305))

(assert (=> d!1407318 m!5319903))

(assert (=> b!4547575 m!5319937))

(assert (=> b!4547341 d!1407318))

(declare-fun bs!885356 () Bool)

(declare-fun d!1407320 () Bool)

(assert (= bs!885356 (and d!1407320 d!1407226)))

(declare-fun lambda!177576 () Int)

(assert (=> bs!885356 (= lambda!177576 lambda!177545)))

(declare-fun bs!885357 () Bool)

(assert (= bs!885357 (and d!1407320 start!451856)))

(assert (=> bs!885357 (= lambda!177576 lambda!177531)))

(declare-fun bs!885358 () Bool)

(assert (= bs!885358 (and d!1407320 d!1407316)))

(assert (=> bs!885358 (= lambda!177576 lambda!177573)))

(declare-fun bs!885359 () Bool)

(assert (= bs!885359 (and d!1407320 d!1407278)))

(assert (=> bs!885359 (= lambda!177576 lambda!177565)))

(declare-fun bs!885360 () Bool)

(assert (= bs!885360 (and d!1407320 d!1407216)))

(assert (=> bs!885360 (= lambda!177576 lambda!177544)))

(declare-fun bs!885361 () Bool)

(assert (= bs!885361 (and d!1407320 d!1407302)))

(assert (=> bs!885361 (= lambda!177576 lambda!177568)))

(declare-fun bs!885362 () Bool)

(assert (= bs!885362 (and d!1407320 d!1407306)))

(assert (=> bs!885362 (not (= lambda!177576 lambda!177571))))

(declare-fun bs!885363 () Bool)

(assert (= bs!885363 (and d!1407320 d!1407268)))

(assert (=> bs!885363 (= lambda!177576 lambda!177556)))

(declare-fun bs!885364 () Bool)

(assert (= bs!885364 (and d!1407320 d!1407314)))

(assert (=> bs!885364 (= lambda!177576 lambda!177572)))

(assert (=> d!1407320 (contains!13645 lm!1477 (hash!2972 hashF!1107 key!3287))))

(declare-fun lt!1721080 () Unit!99681)

(declare-fun choose!30052 (ListLongMap!3087 K!12200 Hashable!5619) Unit!99681)

(assert (=> d!1407320 (= lt!1721080 (choose!30052 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1407320 (forall!10389 (toList!4455 lm!1477) lambda!177576)))

(assert (=> d!1407320 (= (lemmaInGenMapThenLongMapContainsHash!298 lm!1477 key!3287 hashF!1107) lt!1721080)))

(declare-fun bs!885365 () Bool)

(assert (= bs!885365 d!1407320))

(assert (=> bs!885365 m!5319951))

(assert (=> bs!885365 m!5319951))

(declare-fun m!5320307 () Bool)

(assert (=> bs!885365 m!5320307))

(declare-fun m!5320309 () Bool)

(assert (=> bs!885365 m!5320309))

(declare-fun m!5320311 () Bool)

(assert (=> bs!885365 m!5320311))

(assert (=> b!4547341 d!1407320))

(declare-fun d!1407322 () Bool)

(declare-fun lt!1721083 () List!50939)

(assert (=> d!1407322 (not (containsKey!1927 lt!1721083 key!3287))))

(declare-fun e!2834077 () List!50939)

(assert (=> d!1407322 (= lt!1721083 e!2834077)))

(declare-fun c!776880 () Bool)

(assert (=> d!1407322 (= c!776880 (and ((_ is Cons!50815) lt!1720920) (= (_1!28959 (h!56710 lt!1720920)) key!3287)))))

(assert (=> d!1407322 (noDuplicateKeys!1224 lt!1720920)))

(assert (=> d!1407322 (= (removePairForKey!851 lt!1720920 key!3287) lt!1721083)))

(declare-fun b!4547587 () Bool)

(declare-fun e!2834078 () List!50939)

(assert (=> b!4547587 (= e!2834078 Nil!50815)))

(declare-fun b!4547585 () Bool)

(assert (=> b!4547585 (= e!2834077 e!2834078)))

(declare-fun c!776879 () Bool)

(assert (=> b!4547585 (= c!776879 ((_ is Cons!50815) lt!1720920))))

(declare-fun b!4547584 () Bool)

(assert (=> b!4547584 (= e!2834077 (t!357905 lt!1720920))))

(declare-fun b!4547586 () Bool)

(assert (=> b!4547586 (= e!2834078 (Cons!50815 (h!56710 lt!1720920) (removePairForKey!851 (t!357905 lt!1720920) key!3287)))))

(assert (= (and d!1407322 c!776880) b!4547584))

(assert (= (and d!1407322 (not c!776880)) b!4547585))

(assert (= (and b!4547585 c!776879) b!4547586))

(assert (= (and b!4547585 (not c!776879)) b!4547587))

(declare-fun m!5320313 () Bool)

(assert (=> d!1407322 m!5320313))

(declare-fun m!5320315 () Bool)

(assert (=> d!1407322 m!5320315))

(declare-fun m!5320317 () Bool)

(assert (=> b!4547586 m!5320317))

(assert (=> b!4547341 d!1407322))

(declare-fun d!1407324 () Bool)

(declare-fun lt!1721086 () Bool)

(declare-fun content!8480 (List!50940) (InoxSet tuple2!51332))

(assert (=> d!1407324 (= lt!1721086 (select (content!8480 (toList!4455 lm!1477)) lt!1720915))))

(declare-fun e!2834084 () Bool)

(assert (=> d!1407324 (= lt!1721086 e!2834084)))

(declare-fun res!1896255 () Bool)

(assert (=> d!1407324 (=> (not res!1896255) (not e!2834084))))

(assert (=> d!1407324 (= res!1896255 ((_ is Cons!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407324 (= (contains!13644 (toList!4455 lm!1477) lt!1720915) lt!1721086)))

(declare-fun b!4547592 () Bool)

(declare-fun e!2834083 () Bool)

(assert (=> b!4547592 (= e!2834084 e!2834083)))

(declare-fun res!1896254 () Bool)

(assert (=> b!4547592 (=> res!1896254 e!2834083)))

(assert (=> b!4547592 (= res!1896254 (= (h!56711 (toList!4455 lm!1477)) lt!1720915))))

(declare-fun b!4547593 () Bool)

(assert (=> b!4547593 (= e!2834083 (contains!13644 (t!357906 (toList!4455 lm!1477)) lt!1720915))))

(assert (= (and d!1407324 res!1896255) b!4547592))

(assert (= (and b!4547592 (not res!1896254)) b!4547593))

(declare-fun m!5320319 () Bool)

(assert (=> d!1407324 m!5320319))

(declare-fun m!5320321 () Bool)

(assert (=> d!1407324 m!5320321))

(declare-fun m!5320323 () Bool)

(assert (=> b!4547593 m!5320323))

(assert (=> b!4547341 d!1407324))

(declare-fun d!1407326 () Bool)

(declare-fun e!2834090 () Bool)

(assert (=> d!1407326 e!2834090))

(declare-fun res!1896258 () Bool)

(assert (=> d!1407326 (=> res!1896258 e!2834090)))

(declare-fun lt!1721098 () Bool)

(assert (=> d!1407326 (= res!1896258 (not lt!1721098))))

(declare-fun lt!1721097 () Bool)

(assert (=> d!1407326 (= lt!1721098 lt!1721097)))

(declare-fun lt!1721096 () Unit!99681)

(declare-fun e!2834089 () Unit!99681)

(assert (=> d!1407326 (= lt!1721096 e!2834089)))

(declare-fun c!776883 () Bool)

(assert (=> d!1407326 (= c!776883 lt!1721097)))

(declare-fun containsKey!1931 (List!50940 (_ BitVec 64)) Bool)

(assert (=> d!1407326 (= lt!1721097 (containsKey!1931 (toList!4455 lm!1477) lt!1720923))))

(assert (=> d!1407326 (= (contains!13645 lm!1477 lt!1720923) lt!1721098)))

(declare-fun b!4547600 () Bool)

(declare-fun lt!1721095 () Unit!99681)

(assert (=> b!4547600 (= e!2834089 lt!1721095)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1080 (List!50940 (_ BitVec 64)) Unit!99681)

(assert (=> b!4547600 (= lt!1721095 (lemmaContainsKeyImpliesGetValueByKeyDefined!1080 (toList!4455 lm!1477) lt!1720923))))

(declare-fun isDefined!8516 (Option!11244) Bool)

(assert (=> b!4547600 (isDefined!8516 (getValueByKey!1176 (toList!4455 lm!1477) lt!1720923))))

(declare-fun b!4547601 () Bool)

(declare-fun Unit!99692 () Unit!99681)

(assert (=> b!4547601 (= e!2834089 Unit!99692)))

(declare-fun b!4547602 () Bool)

(assert (=> b!4547602 (= e!2834090 (isDefined!8516 (getValueByKey!1176 (toList!4455 lm!1477) lt!1720923)))))

(assert (= (and d!1407326 c!776883) b!4547600))

(assert (= (and d!1407326 (not c!776883)) b!4547601))

(assert (= (and d!1407326 (not res!1896258)) b!4547602))

(declare-fun m!5320325 () Bool)

(assert (=> d!1407326 m!5320325))

(declare-fun m!5320327 () Bool)

(assert (=> b!4547600 m!5320327))

(declare-fun m!5320329 () Bool)

(assert (=> b!4547600 m!5320329))

(assert (=> b!4547600 m!5320329))

(declare-fun m!5320331 () Bool)

(assert (=> b!4547600 m!5320331))

(assert (=> b!4547602 m!5320329))

(assert (=> b!4547602 m!5320329))

(assert (=> b!4547602 m!5320331))

(assert (=> b!4547341 d!1407326))

(declare-fun d!1407328 () Bool)

(assert (=> d!1407328 (contains!13644 (toList!4455 lm!1477) (tuple2!51333 hash!344 lt!1720920))))

(declare-fun lt!1721101 () Unit!99681)

(declare-fun choose!30053 (List!50940 (_ BitVec 64) List!50939) Unit!99681)

(assert (=> d!1407328 (= lt!1721101 (choose!30053 (toList!4455 lm!1477) hash!344 lt!1720920))))

(declare-fun e!2834093 () Bool)

(assert (=> d!1407328 e!2834093))

(declare-fun res!1896261 () Bool)

(assert (=> d!1407328 (=> (not res!1896261) (not e!2834093))))

(assert (=> d!1407328 (= res!1896261 (isStrictlySorted!472 (toList!4455 lm!1477)))))

(assert (=> d!1407328 (= (lemmaGetValueByKeyImpliesContainsTuple!736 (toList!4455 lm!1477) hash!344 lt!1720920) lt!1721101)))

(declare-fun b!4547605 () Bool)

(assert (=> b!4547605 (= e!2834093 (= (getValueByKey!1176 (toList!4455 lm!1477) hash!344) (Some!11243 lt!1720920)))))

(assert (= (and d!1407328 res!1896261) b!4547605))

(declare-fun m!5320333 () Bool)

(assert (=> d!1407328 m!5320333))

(declare-fun m!5320335 () Bool)

(assert (=> d!1407328 m!5320335))

(assert (=> d!1407328 m!5320285))

(declare-fun m!5320337 () Bool)

(assert (=> b!4547605 m!5320337))

(assert (=> b!4547341 d!1407328))

(declare-fun d!1407330 () Bool)

(declare-fun get!16730 (Option!11244) List!50939)

(assert (=> d!1407330 (= (apply!11961 lm!1477 hash!344) (get!16730 (getValueByKey!1176 (toList!4455 lm!1477) hash!344)))))

(declare-fun bs!885366 () Bool)

(assert (= bs!885366 d!1407330))

(assert (=> bs!885366 m!5320337))

(assert (=> bs!885366 m!5320337))

(declare-fun m!5320339 () Bool)

(assert (=> bs!885366 m!5320339))

(assert (=> b!4547341 d!1407330))

(declare-fun b!4547606 () Bool)

(declare-fun e!2834097 () Bool)

(assert (=> b!4547606 (= e!2834097 (contains!13648 (keys!17701 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(declare-fun b!4547607 () Bool)

(declare-fun e!2834098 () List!50942)

(assert (=> b!4547607 (= e!2834098 (keys!17701 (extractMap!1280 (toList!4455 lm!1477))))))

(declare-fun d!1407332 () Bool)

(declare-fun e!2834099 () Bool)

(assert (=> d!1407332 e!2834099))

(declare-fun res!1896263 () Bool)

(assert (=> d!1407332 (=> res!1896263 e!2834099)))

(declare-fun e!2834096 () Bool)

(assert (=> d!1407332 (= res!1896263 e!2834096)))

(declare-fun res!1896262 () Bool)

(assert (=> d!1407332 (=> (not res!1896262) (not e!2834096))))

(declare-fun lt!1721109 () Bool)

(assert (=> d!1407332 (= res!1896262 (not lt!1721109))))

(declare-fun lt!1721104 () Bool)

(assert (=> d!1407332 (= lt!1721109 lt!1721104)))

(declare-fun lt!1721108 () Unit!99681)

(declare-fun e!2834094 () Unit!99681)

(assert (=> d!1407332 (= lt!1721108 e!2834094)))

(declare-fun c!776885 () Bool)

(assert (=> d!1407332 (= c!776885 lt!1721104)))

(assert (=> d!1407332 (= lt!1721104 (containsKey!1930 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(assert (=> d!1407332 (= (contains!13646 (extractMap!1280 (toList!4455 lm!1477)) key!3287) lt!1721109)))

(declare-fun b!4547608 () Bool)

(declare-fun lt!1721106 () Unit!99681)

(assert (=> b!4547608 (= e!2834094 lt!1721106)))

(declare-fun lt!1721105 () Unit!99681)

(assert (=> b!4547608 (= lt!1721105 (lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(assert (=> b!4547608 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(declare-fun lt!1721107 () Unit!99681)

(assert (=> b!4547608 (= lt!1721107 lt!1721105)))

(assert (=> b!4547608 (= lt!1721106 (lemmaInListThenGetKeysListContains!502 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(declare-fun call!317115 () Bool)

(assert (=> b!4547608 call!317115))

(declare-fun b!4547609 () Bool)

(declare-fun e!2834095 () Unit!99681)

(assert (=> b!4547609 (= e!2834094 e!2834095)))

(declare-fun c!776884 () Bool)

(assert (=> b!4547609 (= c!776884 call!317115)))

(declare-fun b!4547610 () Bool)

(assert (=> b!4547610 (= e!2834098 (getKeysList!506 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))

(declare-fun b!4547611 () Bool)

(assert (=> b!4547611 (= e!2834099 e!2834097)))

(declare-fun res!1896264 () Bool)

(assert (=> b!4547611 (=> (not res!1896264) (not e!2834097))))

(assert (=> b!4547611 (= res!1896264 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287)))))

(declare-fun b!4547612 () Bool)

(declare-fun Unit!99693 () Unit!99681)

(assert (=> b!4547612 (= e!2834095 Unit!99693)))

(declare-fun b!4547613 () Bool)

(assert (=> b!4547613 false))

(declare-fun lt!1721103 () Unit!99681)

(declare-fun lt!1721102 () Unit!99681)

(assert (=> b!4547613 (= lt!1721103 lt!1721102)))

(assert (=> b!4547613 (containsKey!1930 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287)))

(assert (=> b!4547613 (= lt!1721102 (lemmaInGetKeysListThenContainsKey!505 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(declare-fun Unit!99694 () Unit!99681)

(assert (=> b!4547613 (= e!2834095 Unit!99694)))

(declare-fun b!4547614 () Bool)

(assert (=> b!4547614 (= e!2834096 (not (contains!13648 (keys!17701 (extractMap!1280 (toList!4455 lm!1477))) key!3287)))))

(declare-fun bm!317110 () Bool)

(assert (=> bm!317110 (= call!317115 (contains!13648 e!2834098 key!3287))))

(declare-fun c!776886 () Bool)

(assert (=> bm!317110 (= c!776886 c!776885)))

(assert (= (and d!1407332 c!776885) b!4547608))

(assert (= (and d!1407332 (not c!776885)) b!4547609))

(assert (= (and b!4547609 c!776884) b!4547613))

(assert (= (and b!4547609 (not c!776884)) b!4547612))

(assert (= (or b!4547608 b!4547609) bm!317110))

(assert (= (and bm!317110 c!776886) b!4547610))

(assert (= (and bm!317110 (not c!776886)) b!4547607))

(assert (= (and d!1407332 res!1896262) b!4547614))

(assert (= (and d!1407332 (not res!1896263)) b!4547611))

(assert (= (and b!4547611 res!1896264) b!4547606))

(declare-fun m!5320341 () Bool)

(assert (=> b!4547608 m!5320341))

(declare-fun m!5320343 () Bool)

(assert (=> b!4547608 m!5320343))

(assert (=> b!4547608 m!5320343))

(declare-fun m!5320345 () Bool)

(assert (=> b!4547608 m!5320345))

(declare-fun m!5320347 () Bool)

(assert (=> b!4547608 m!5320347))

(assert (=> b!4547607 m!5319899))

(declare-fun m!5320349 () Bool)

(assert (=> b!4547607 m!5320349))

(assert (=> b!4547611 m!5320343))

(assert (=> b!4547611 m!5320343))

(assert (=> b!4547611 m!5320345))

(declare-fun m!5320351 () Bool)

(assert (=> b!4547613 m!5320351))

(declare-fun m!5320353 () Bool)

(assert (=> b!4547613 m!5320353))

(assert (=> b!4547614 m!5319899))

(assert (=> b!4547614 m!5320349))

(assert (=> b!4547614 m!5320349))

(declare-fun m!5320355 () Bool)

(assert (=> b!4547614 m!5320355))

(assert (=> b!4547606 m!5319899))

(assert (=> b!4547606 m!5320349))

(assert (=> b!4547606 m!5320349))

(assert (=> b!4547606 m!5320355))

(declare-fun m!5320357 () Bool)

(assert (=> bm!317110 m!5320357))

(assert (=> d!1407332 m!5320351))

(declare-fun m!5320359 () Bool)

(assert (=> b!4547610 m!5320359))

(assert (=> b!4547352 d!1407332))

(declare-fun bs!885367 () Bool)

(declare-fun d!1407334 () Bool)

(assert (= bs!885367 (and d!1407334 d!1407226)))

(declare-fun lambda!177577 () Int)

(assert (=> bs!885367 (= lambda!177577 lambda!177545)))

(declare-fun bs!885368 () Bool)

(assert (= bs!885368 (and d!1407334 start!451856)))

(assert (=> bs!885368 (= lambda!177577 lambda!177531)))

(declare-fun bs!885369 () Bool)

(assert (= bs!885369 (and d!1407334 d!1407316)))

(assert (=> bs!885369 (= lambda!177577 lambda!177573)))

(declare-fun bs!885370 () Bool)

(assert (= bs!885370 (and d!1407334 d!1407278)))

(assert (=> bs!885370 (= lambda!177577 lambda!177565)))

(declare-fun bs!885371 () Bool)

(assert (= bs!885371 (and d!1407334 d!1407216)))

(assert (=> bs!885371 (= lambda!177577 lambda!177544)))

(declare-fun bs!885372 () Bool)

(assert (= bs!885372 (and d!1407334 d!1407302)))

(assert (=> bs!885372 (= lambda!177577 lambda!177568)))

(declare-fun bs!885373 () Bool)

(assert (= bs!885373 (and d!1407334 d!1407306)))

(assert (=> bs!885373 (not (= lambda!177577 lambda!177571))))

(declare-fun bs!885374 () Bool)

(assert (= bs!885374 (and d!1407334 d!1407320)))

(assert (=> bs!885374 (= lambda!177577 lambda!177576)))

(declare-fun bs!885375 () Bool)

(assert (= bs!885375 (and d!1407334 d!1407268)))

(assert (=> bs!885375 (= lambda!177577 lambda!177556)))

(declare-fun bs!885376 () Bool)

(assert (= bs!885376 (and d!1407334 d!1407314)))

(assert (=> bs!885376 (= lambda!177577 lambda!177572)))

(declare-fun lt!1721110 () ListMap!3717)

(assert (=> d!1407334 (invariantList!1058 (toList!4456 lt!1721110))))

(declare-fun e!2834100 () ListMap!3717)

(assert (=> d!1407334 (= lt!1721110 e!2834100)))

(declare-fun c!776887 () Bool)

(assert (=> d!1407334 (= c!776887 ((_ is Cons!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407334 (forall!10389 (toList!4455 lm!1477) lambda!177577)))

(assert (=> d!1407334 (= (extractMap!1280 (toList!4455 lm!1477)) lt!1721110)))

(declare-fun b!4547615 () Bool)

(assert (=> b!4547615 (= e!2834100 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (toList!4455 lm!1477)))))))

(declare-fun b!4547616 () Bool)

(assert (=> b!4547616 (= e!2834100 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407334 c!776887) b!4547615))

(assert (= (and d!1407334 (not c!776887)) b!4547616))

(declare-fun m!5320361 () Bool)

(assert (=> d!1407334 m!5320361))

(declare-fun m!5320363 () Bool)

(assert (=> d!1407334 m!5320363))

(assert (=> b!4547615 m!5319931))

(assert (=> b!4547615 m!5319931))

(declare-fun m!5320365 () Bool)

(assert (=> b!4547615 m!5320365))

(assert (=> b!4547352 d!1407334))

(declare-fun d!1407336 () Bool)

(declare-fun res!1896269 () Bool)

(declare-fun e!2834105 () Bool)

(assert (=> d!1407336 (=> res!1896269 e!2834105)))

(assert (=> d!1407336 (= res!1896269 (not ((_ is Cons!50815) newBucket!178)))))

(assert (=> d!1407336 (= (noDuplicateKeys!1224 newBucket!178) e!2834105)))

(declare-fun b!4547621 () Bool)

(declare-fun e!2834106 () Bool)

(assert (=> b!4547621 (= e!2834105 e!2834106)))

(declare-fun res!1896270 () Bool)

(assert (=> b!4547621 (=> (not res!1896270) (not e!2834106))))

(assert (=> b!4547621 (= res!1896270 (not (containsKey!1927 (t!357905 newBucket!178) (_1!28959 (h!56710 newBucket!178)))))))

(declare-fun b!4547622 () Bool)

(assert (=> b!4547622 (= e!2834106 (noDuplicateKeys!1224 (t!357905 newBucket!178)))))

(assert (= (and d!1407336 (not res!1896269)) b!4547621))

(assert (= (and b!4547621 res!1896270) b!4547622))

(declare-fun m!5320367 () Bool)

(assert (=> b!4547621 m!5320367))

(declare-fun m!5320369 () Bool)

(assert (=> b!4547622 m!5320369))

(assert (=> b!4547351 d!1407336))

(declare-fun d!1407338 () Bool)

(declare-fun e!2834107 () Bool)

(assert (=> d!1407338 e!2834107))

(declare-fun res!1896271 () Bool)

(assert (=> d!1407338 (=> (not res!1896271) (not e!2834107))))

(declare-fun lt!1721112 () ListLongMap!3087)

(assert (=> d!1407338 (= res!1896271 (contains!13645 lt!1721112 (_1!28960 lt!1720912)))))

(declare-fun lt!1721113 () List!50940)

(assert (=> d!1407338 (= lt!1721112 (ListLongMap!3088 lt!1721113))))

(declare-fun lt!1721111 () Unit!99681)

(declare-fun lt!1721114 () Unit!99681)

(assert (=> d!1407338 (= lt!1721111 lt!1721114)))

(assert (=> d!1407338 (= (getValueByKey!1176 lt!1721113 (_1!28960 lt!1720912)) (Some!11243 (_2!28960 lt!1720912)))))

(assert (=> d!1407338 (= lt!1721114 (lemmaContainsTupThenGetReturnValue!736 lt!1721113 (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(assert (=> d!1407338 (= lt!1721113 (insertStrictlySorted!448 (toList!4455 lt!1720913) (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(assert (=> d!1407338 (= (+!1636 lt!1720913 lt!1720912) lt!1721112)))

(declare-fun b!4547623 () Bool)

(declare-fun res!1896272 () Bool)

(assert (=> b!4547623 (=> (not res!1896272) (not e!2834107))))

(assert (=> b!4547623 (= res!1896272 (= (getValueByKey!1176 (toList!4455 lt!1721112) (_1!28960 lt!1720912)) (Some!11243 (_2!28960 lt!1720912))))))

(declare-fun b!4547624 () Bool)

(assert (=> b!4547624 (= e!2834107 (contains!13644 (toList!4455 lt!1721112) lt!1720912))))

(assert (= (and d!1407338 res!1896271) b!4547623))

(assert (= (and b!4547623 res!1896272) b!4547624))

(declare-fun m!5320371 () Bool)

(assert (=> d!1407338 m!5320371))

(declare-fun m!5320373 () Bool)

(assert (=> d!1407338 m!5320373))

(declare-fun m!5320375 () Bool)

(assert (=> d!1407338 m!5320375))

(declare-fun m!5320377 () Bool)

(assert (=> d!1407338 m!5320377))

(declare-fun m!5320379 () Bool)

(assert (=> b!4547623 m!5320379))

(declare-fun m!5320381 () Bool)

(assert (=> b!4547624 m!5320381))

(assert (=> b!4547350 d!1407338))

(declare-fun d!1407340 () Bool)

(assert (=> d!1407340 (= (tail!7830 lm!1477) (ListLongMap!3088 (tail!7829 (toList!4455 lm!1477))))))

(declare-fun bs!885377 () Bool)

(assert (= bs!885377 d!1407340))

(declare-fun m!5320383 () Bool)

(assert (=> bs!885377 m!5320383))

(assert (=> b!4547350 d!1407340))

(declare-fun b!4547629 () Bool)

(declare-fun e!2834110 () Bool)

(declare-fun tp!1338945 () Bool)

(assert (=> b!4547629 (= e!2834110 (and tp_is_empty!28173 tp_is_empty!28175 tp!1338945))))

(assert (=> b!4547347 (= tp!1338932 e!2834110)))

(assert (= (and b!4547347 ((_ is Cons!50815) (t!357905 newBucket!178))) b!4547629))

(declare-fun b!4547634 () Bool)

(declare-fun e!2834113 () Bool)

(declare-fun tp!1338950 () Bool)

(declare-fun tp!1338951 () Bool)

(assert (=> b!4547634 (= e!2834113 (and tp!1338950 tp!1338951))))

(assert (=> b!4547349 (= tp!1338933 e!2834113)))

(assert (= (and b!4547349 ((_ is Cons!50816) (toList!4455 lm!1477))) b!4547634))

(declare-fun b_lambda!159035 () Bool)

(assert (= b_lambda!159031 (or start!451856 b_lambda!159035)))

(declare-fun bs!885378 () Bool)

(declare-fun d!1407342 () Bool)

(assert (= bs!885378 (and d!1407342 start!451856)))

(assert (=> bs!885378 (= (dynLambda!21244 lambda!177531 (h!56711 (toList!4455 lm!1477))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(assert (=> bs!885378 m!5320263))

(assert (=> b!4547567 d!1407342))

(declare-fun b_lambda!159037 () Bool)

(assert (= b_lambda!159033 (or start!451856 b_lambda!159037)))

(declare-fun bs!885379 () Bool)

(declare-fun d!1407344 () Bool)

(assert (= bs!885379 (and d!1407344 start!451856)))

(assert (=> bs!885379 (= (dynLambda!21244 lambda!177531 lt!1720915) (noDuplicateKeys!1224 (_2!28960 lt!1720915)))))

(declare-fun m!5320385 () Bool)

(assert (=> bs!885379 m!5320385))

(assert (=> d!1407318 d!1407344))

(check-sat (not d!1407234) (not b!4547611) (not d!1407216) (not d!1407312) (not b!4547600) (not d!1407306) (not b!4547498) (not d!1407338) (not b!4547389) (not b!4547545) (not d!1407334) (not b!4547606) (not d!1407214) (not d!1407278) (not d!1407340) (not b!4547512) (not b!4547614) (not b!4547397) (not b!4547615) (not b!4547610) (not bm!317110) tp_is_empty!28175 (not b!4547544) (not b!4547575) (not d!1407326) (not b!4547494) (not d!1407302) (not bs!885378) (not b!4547491) (not b_lambda!159037) (not b!4547586) (not d!1407328) (not b!4547393) (not bs!885379) (not b!4547613) (not b!4547569) (not b!4547624) (not d!1407324) (not b!4547629) (not b!4547568) (not d!1407268) (not d!1407330) (not d!1407320) (not d!1407318) (not b!4547492) (not d!1407226) (not b!4547593) (not d!1407308) (not d!1407332) (not b!4547571) (not b!4547607) (not b!4547490) (not b!4547602) (not b!4547623) (not d!1407230) (not d!1407316) (not d!1407314) (not b!4547621) (not d!1407296) (not b!4547634) (not b!4547495) (not b!4547608) (not b!4547605) (not b!4547552) (not b_lambda!159035) (not b!4547560) (not d!1407276) (not b!4547497) (not b!4547622) (not b!4547554) (not d!1407322) (not bm!317108) tp_is_empty!28173 (not d!1407298))
(check-sat)
(get-model)

(declare-fun d!1407360 () Bool)

(declare-fun lt!1721149 () Bool)

(assert (=> d!1407360 (= lt!1721149 (select (content!8478 (keys!17701 (extractMap!1280 (toList!4455 lm!1477)))) key!3287))))

(declare-fun e!2834144 () Bool)

(assert (=> d!1407360 (= lt!1721149 e!2834144)))

(declare-fun res!1896302 () Bool)

(assert (=> d!1407360 (=> (not res!1896302) (not e!2834144))))

(assert (=> d!1407360 (= res!1896302 ((_ is Cons!50818) (keys!17701 (extractMap!1280 (toList!4455 lm!1477)))))))

(assert (=> d!1407360 (= (contains!13648 (keys!17701 (extractMap!1280 (toList!4455 lm!1477))) key!3287) lt!1721149)))

(declare-fun b!4547692 () Bool)

(declare-fun e!2834143 () Bool)

(assert (=> b!4547692 (= e!2834144 e!2834143)))

(declare-fun res!1896303 () Bool)

(assert (=> b!4547692 (=> res!1896303 e!2834143)))

(assert (=> b!4547692 (= res!1896303 (= (h!56715 (keys!17701 (extractMap!1280 (toList!4455 lm!1477)))) key!3287))))

(declare-fun b!4547693 () Bool)

(assert (=> b!4547693 (= e!2834143 (contains!13648 (t!357908 (keys!17701 (extractMap!1280 (toList!4455 lm!1477)))) key!3287))))

(assert (= (and d!1407360 res!1896302) b!4547692))

(assert (= (and b!4547692 (not res!1896303)) b!4547693))

(assert (=> d!1407360 m!5320349))

(declare-fun m!5320457 () Bool)

(assert (=> d!1407360 m!5320457))

(declare-fun m!5320459 () Bool)

(assert (=> d!1407360 m!5320459))

(declare-fun m!5320461 () Bool)

(assert (=> b!4547693 m!5320461))

(assert (=> b!4547606 d!1407360))

(declare-fun b!4547701 () Bool)

(assert (=> b!4547701 true))

(declare-fun d!1407364 () Bool)

(declare-fun e!2834147 () Bool)

(assert (=> d!1407364 e!2834147))

(declare-fun res!1896311 () Bool)

(assert (=> d!1407364 (=> (not res!1896311) (not e!2834147))))

(declare-fun lt!1721152 () List!50942)

(declare-fun noDuplicate!768 (List!50942) Bool)

(assert (=> d!1407364 (= res!1896311 (noDuplicate!768 lt!1721152))))

(assert (=> d!1407364 (= lt!1721152 (getKeysList!506 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))

(assert (=> d!1407364 (= (keys!17701 (extractMap!1280 (toList!4455 lm!1477))) lt!1721152)))

(declare-fun b!4547700 () Bool)

(declare-fun res!1896312 () Bool)

(assert (=> b!4547700 (=> (not res!1896312) (not e!2834147))))

(declare-fun length!392 (List!50942) Int)

(declare-fun length!393 (List!50939) Int)

(assert (=> b!4547700 (= res!1896312 (= (length!392 lt!1721152) (length!393 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))))

(declare-fun res!1896310 () Bool)

(assert (=> b!4547701 (=> (not res!1896310) (not e!2834147))))

(declare-fun lambda!177600 () Int)

(declare-fun forall!10393 (List!50942 Int) Bool)

(assert (=> b!4547701 (= res!1896310 (forall!10393 lt!1721152 lambda!177600))))

(declare-fun lambda!177601 () Int)

(declare-fun b!4547702 () Bool)

(declare-fun map!11191 (List!50939 Int) List!50942)

(assert (=> b!4547702 (= e!2834147 (= (content!8478 lt!1721152) (content!8478 (map!11191 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) lambda!177601))))))

(assert (= (and d!1407364 res!1896311) b!4547700))

(assert (= (and b!4547700 res!1896312) b!4547701))

(assert (= (and b!4547701 res!1896310) b!4547702))

(declare-fun m!5320463 () Bool)

(assert (=> d!1407364 m!5320463))

(assert (=> d!1407364 m!5320359))

(declare-fun m!5320465 () Bool)

(assert (=> b!4547700 m!5320465))

(declare-fun m!5320467 () Bool)

(assert (=> b!4547700 m!5320467))

(declare-fun m!5320469 () Bool)

(assert (=> b!4547701 m!5320469))

(declare-fun m!5320471 () Bool)

(assert (=> b!4547702 m!5320471))

(declare-fun m!5320473 () Bool)

(assert (=> b!4547702 m!5320473))

(assert (=> b!4547702 m!5320473))

(declare-fun m!5320475 () Bool)

(assert (=> b!4547702 m!5320475))

(assert (=> b!4547606 d!1407364))

(declare-fun d!1407366 () Bool)

(assert (=> d!1407366 (= (tail!7829 (toList!4455 lm!1477)) (t!357906 (toList!4455 lm!1477)))))

(assert (=> d!1407340 d!1407366))

(declare-fun d!1407368 () Bool)

(declare-fun isEmpty!28768 (Option!11243) Bool)

(assert (=> d!1407368 (= (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 lt!1720918)) key!3287)) (not (isEmpty!28768 (getValueByKey!1175 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))))

(declare-fun bs!885388 () Bool)

(assert (= bs!885388 d!1407368))

(assert (=> bs!885388 m!5320151))

(declare-fun m!5320477 () Bool)

(assert (=> bs!885388 m!5320477))

(assert (=> b!4547495 d!1407368))

(declare-fun b!4547716 () Bool)

(declare-fun e!2834153 () Option!11243)

(assert (=> b!4547716 (= e!2834153 None!11242)))

(declare-fun b!4547714 () Bool)

(declare-fun e!2834152 () Option!11243)

(assert (=> b!4547714 (= e!2834152 e!2834153)))

(declare-fun c!776905 () Bool)

(assert (=> b!4547714 (= c!776905 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 lt!1720918))) (not (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918)))) key!3287))))))

(declare-fun b!4547715 () Bool)

(assert (=> b!4547715 (= e!2834153 (getValueByKey!1175 (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) key!3287))))

(declare-fun d!1407370 () Bool)

(declare-fun c!776904 () Bool)

(assert (=> d!1407370 (= c!776904 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 lt!1720918))) (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918)))) key!3287)))))

(assert (=> d!1407370 (= (getValueByKey!1175 (toList!4456 (extractMap!1280 lt!1720918)) key!3287) e!2834152)))

(declare-fun b!4547713 () Bool)

(assert (=> b!4547713 (= e!2834152 (Some!11242 (_2!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))))))))

(assert (= (and d!1407370 c!776904) b!4547713))

(assert (= (and d!1407370 (not c!776904)) b!4547714))

(assert (= (and b!4547714 c!776905) b!4547715))

(assert (= (and b!4547714 (not c!776905)) b!4547716))

(declare-fun m!5320479 () Bool)

(assert (=> b!4547715 m!5320479))

(assert (=> b!4547495 d!1407370))

(declare-fun bs!885397 () Bool)

(declare-fun b!4547867 () Bool)

(assert (= bs!885397 (and b!4547867 d!1407214)))

(declare-fun lambda!177632 () Int)

(assert (=> bs!885397 (not (= lambda!177632 lambda!177534))))

(assert (=> b!4547867 true))

(declare-fun bs!885398 () Bool)

(declare-fun b!4547866 () Bool)

(assert (= bs!885398 (and b!4547866 d!1407214)))

(declare-fun lambda!177633 () Int)

(assert (=> bs!885398 (not (= lambda!177633 lambda!177534))))

(declare-fun bs!885399 () Bool)

(assert (= bs!885399 (and b!4547866 b!4547867)))

(assert (=> bs!885399 (= lambda!177633 lambda!177632)))

(assert (=> b!4547866 true))

(declare-fun lambda!177634 () Int)

(assert (=> bs!885398 (not (= lambda!177634 lambda!177534))))

(declare-fun lt!1721265 () ListMap!3717)

(assert (=> bs!885399 (= (= lt!1721265 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177634 lambda!177632))))

(assert (=> b!4547866 (= (= lt!1721265 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177634 lambda!177633))))

(assert (=> b!4547866 true))

(declare-fun bs!885400 () Bool)

(declare-fun d!1407372 () Bool)

(assert (= bs!885400 (and d!1407372 d!1407214)))

(declare-fun lambda!177635 () Int)

(assert (=> bs!885400 (not (= lambda!177635 lambda!177534))))

(declare-fun bs!885401 () Bool)

(assert (= bs!885401 (and d!1407372 b!4547867)))

(declare-fun lt!1721272 () ListMap!3717)

(assert (=> bs!885401 (= (= lt!1721272 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177635 lambda!177632))))

(declare-fun bs!885402 () Bool)

(assert (= bs!885402 (and d!1407372 b!4547866)))

(assert (=> bs!885402 (= (= lt!1721272 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177635 lambda!177633))))

(assert (=> bs!885402 (= (= lt!1721272 lt!1721265) (= lambda!177635 lambda!177634))))

(assert (=> d!1407372 true))

(declare-fun lt!1721283 () ListMap!3717)

(declare-fun bm!317145 () Bool)

(declare-fun c!776957 () Bool)

(declare-fun call!317152 () Bool)

(assert (=> bm!317145 (= call!317152 (forall!10391 (ite c!776957 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (toList!4456 lt!1721283)) (ite c!776957 lambda!177632 lambda!177634)))))

(declare-fun b!4547864 () Bool)

(declare-fun e!2834237 () Bool)

(assert (=> b!4547864 (= e!2834237 (invariantList!1058 (toList!4456 lt!1721272)))))

(declare-fun b!4547865 () Bool)

(declare-fun e!2834236 () Bool)

(assert (=> b!4547865 (= e!2834236 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) lambda!177634))))

(declare-fun bm!317146 () Bool)

(declare-fun call!317151 () Unit!99681)

(declare-fun lemmaContainsAllItsOwnKeys!377 (ListMap!3717) Unit!99681)

(assert (=> bm!317146 (= call!317151 (lemmaContainsAllItsOwnKeys!377 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))))))

(declare-fun e!2834238 () ListMap!3717)

(assert (=> b!4547866 (= e!2834238 lt!1721265)))

(declare-fun +!1637 (ListMap!3717 tuple2!51330) ListMap!3717)

(assert (=> b!4547866 (= lt!1721283 (+!1637 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816))) (h!56710 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))))))))

(assert (=> b!4547866 (= lt!1721265 (addToMapMapFromBucket!744 (t!357905 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816)))) (+!1637 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816))) (h!56710 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816)))))))))

(declare-fun lt!1721280 () Unit!99681)

(assert (=> b!4547866 (= lt!1721280 call!317151)))

(declare-fun call!317150 () Bool)

(assert (=> b!4547866 call!317150))

(declare-fun lt!1721264 () Unit!99681)

(assert (=> b!4547866 (= lt!1721264 lt!1721280)))

(assert (=> b!4547866 (forall!10391 (toList!4456 lt!1721283) lambda!177634)))

(declare-fun lt!1721277 () Unit!99681)

(declare-fun Unit!99703 () Unit!99681)

(assert (=> b!4547866 (= lt!1721277 Unit!99703)))

(assert (=> b!4547866 (forall!10391 (t!357905 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816)))) lambda!177634)))

(declare-fun lt!1721279 () Unit!99681)

(declare-fun Unit!99704 () Unit!99681)

(assert (=> b!4547866 (= lt!1721279 Unit!99704)))

(declare-fun lt!1721266 () Unit!99681)

(declare-fun Unit!99705 () Unit!99681)

(assert (=> b!4547866 (= lt!1721266 Unit!99705)))

(declare-fun lt!1721275 () Unit!99681)

(declare-fun forallContained!2655 (List!50939 Int tuple2!51330) Unit!99681)

(assert (=> b!4547866 (= lt!1721275 (forallContained!2655 (toList!4456 lt!1721283) lambda!177634 (h!56710 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))))))))

(assert (=> b!4547866 (contains!13646 lt!1721283 (_1!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))))))))

(declare-fun lt!1721267 () Unit!99681)

(declare-fun Unit!99706 () Unit!99681)

(assert (=> b!4547866 (= lt!1721267 Unit!99706)))

(assert (=> b!4547866 (contains!13646 lt!1721265 (_1!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))))))))

(declare-fun lt!1721274 () Unit!99681)

(declare-fun Unit!99707 () Unit!99681)

(assert (=> b!4547866 (= lt!1721274 Unit!99707)))

(assert (=> b!4547866 (forall!10391 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))) lambda!177634)))

(declare-fun lt!1721273 () Unit!99681)

(declare-fun Unit!99708 () Unit!99681)

(assert (=> b!4547866 (= lt!1721273 Unit!99708)))

(assert (=> b!4547866 call!317152))

(declare-fun lt!1721278 () Unit!99681)

(declare-fun Unit!99710 () Unit!99681)

(assert (=> b!4547866 (= lt!1721278 Unit!99710)))

(declare-fun lt!1721263 () Unit!99681)

(declare-fun Unit!99711 () Unit!99681)

(assert (=> b!4547866 (= lt!1721263 Unit!99711)))

(declare-fun lt!1721276 () Unit!99681)

(declare-fun addForallContainsKeyThenBeforeAdding!377 (ListMap!3717 ListMap!3717 K!12200 V!12446) Unit!99681)

(assert (=> b!4547866 (= lt!1721276 (addForallContainsKeyThenBeforeAdding!377 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816))) lt!1721265 (_1!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))))) (_2!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816)))))))))

(assert (=> b!4547866 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) lambda!177634)))

(declare-fun lt!1721268 () Unit!99681)

(assert (=> b!4547866 (= lt!1721268 lt!1721276)))

(assert (=> b!4547866 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) lambda!177634)))

(declare-fun lt!1721271 () Unit!99681)

(declare-fun Unit!99712 () Unit!99681)

(assert (=> b!4547866 (= lt!1721271 Unit!99712)))

(declare-fun res!1896360 () Bool)

(assert (=> b!4547866 (= res!1896360 (forall!10391 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))) lambda!177634))))

(assert (=> b!4547866 (=> (not res!1896360) (not e!2834236))))

(assert (=> b!4547866 e!2834236))

(declare-fun lt!1721282 () Unit!99681)

(declare-fun Unit!99714 () Unit!99681)

(assert (=> b!4547866 (= lt!1721282 Unit!99714)))

(assert (=> b!4547867 (= e!2834238 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816))))))

(declare-fun lt!1721281 () Unit!99681)

(assert (=> b!4547867 (= lt!1721281 call!317151)))

(assert (=> b!4547867 call!317152))

(declare-fun lt!1721270 () Unit!99681)

(assert (=> b!4547867 (= lt!1721270 lt!1721281)))

(assert (=> b!4547867 call!317150))

(declare-fun lt!1721269 () Unit!99681)

(declare-fun Unit!99716 () Unit!99681)

(assert (=> b!4547867 (= lt!1721269 Unit!99716)))

(declare-fun bm!317147 () Bool)

(assert (=> bm!317147 (= call!317150 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (ite c!776957 lambda!177632 lambda!177633)))))

(assert (=> d!1407372 e!2834237))

(declare-fun res!1896358 () Bool)

(assert (=> d!1407372 (=> (not res!1896358) (not e!2834237))))

(assert (=> d!1407372 (= res!1896358 (forall!10391 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))) lambda!177635))))

(assert (=> d!1407372 (= lt!1721272 e!2834238)))

(assert (=> d!1407372 (= c!776957 ((_ is Nil!50815) (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816)))))))

(assert (=> d!1407372 (noDuplicateKeys!1224 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))))))

(assert (=> d!1407372 (= (addToMapMapFromBucket!744 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) lt!1721272)))

(declare-fun b!4547868 () Bool)

(declare-fun res!1896359 () Bool)

(assert (=> b!4547868 (=> (not res!1896359) (not e!2834237))))

(assert (=> b!4547868 (= res!1896359 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) lambda!177635))))

(assert (= (and d!1407372 c!776957) b!4547867))

(assert (= (and d!1407372 (not c!776957)) b!4547866))

(assert (= (and b!4547866 res!1896360) b!4547865))

(assert (= (or b!4547867 b!4547866) bm!317145))

(assert (= (or b!4547867 b!4547866) bm!317147))

(assert (= (or b!4547867 b!4547866) bm!317146))

(assert (= (and d!1407372 res!1896358) b!4547868))

(assert (= (and b!4547868 res!1896359) b!4547864))

(declare-fun m!5320603 () Bool)

(assert (=> b!4547866 m!5320603))

(assert (=> b!4547866 m!5320211))

(declare-fun m!5320605 () Bool)

(assert (=> b!4547866 m!5320605))

(declare-fun m!5320607 () Bool)

(assert (=> b!4547866 m!5320607))

(declare-fun m!5320609 () Bool)

(assert (=> b!4547866 m!5320609))

(declare-fun m!5320611 () Bool)

(assert (=> b!4547866 m!5320611))

(declare-fun m!5320613 () Bool)

(assert (=> b!4547866 m!5320613))

(declare-fun m!5320615 () Bool)

(assert (=> b!4547866 m!5320615))

(declare-fun m!5320617 () Bool)

(assert (=> b!4547866 m!5320617))

(declare-fun m!5320619 () Bool)

(assert (=> b!4547866 m!5320619))

(assert (=> b!4547866 m!5320619))

(assert (=> b!4547866 m!5320603))

(assert (=> b!4547866 m!5320211))

(assert (=> b!4547866 m!5320611))

(declare-fun m!5320621 () Bool)

(assert (=> b!4547866 m!5320621))

(declare-fun m!5320623 () Bool)

(assert (=> b!4547868 m!5320623))

(declare-fun m!5320625 () Bool)

(assert (=> bm!317145 m!5320625))

(declare-fun m!5320627 () Bool)

(assert (=> d!1407372 m!5320627))

(declare-fun m!5320629 () Bool)

(assert (=> d!1407372 m!5320629))

(declare-fun m!5320631 () Bool)

(assert (=> bm!317147 m!5320631))

(assert (=> bm!317146 m!5320211))

(declare-fun m!5320633 () Bool)

(assert (=> bm!317146 m!5320633))

(declare-fun m!5320635 () Bool)

(assert (=> b!4547864 m!5320635))

(assert (=> b!4547865 m!5320619))

(assert (=> b!4547512 d!1407372))

(declare-fun bs!885403 () Bool)

(declare-fun d!1407402 () Bool)

(assert (= bs!885403 (and d!1407402 d!1407226)))

(declare-fun lambda!177636 () Int)

(assert (=> bs!885403 (= lambda!177636 lambda!177545)))

(declare-fun bs!885404 () Bool)

(assert (= bs!885404 (and d!1407402 start!451856)))

(assert (=> bs!885404 (= lambda!177636 lambda!177531)))

(declare-fun bs!885405 () Bool)

(assert (= bs!885405 (and d!1407402 d!1407316)))

(assert (=> bs!885405 (= lambda!177636 lambda!177573)))

(declare-fun bs!885406 () Bool)

(assert (= bs!885406 (and d!1407402 d!1407278)))

(assert (=> bs!885406 (= lambda!177636 lambda!177565)))

(declare-fun bs!885407 () Bool)

(assert (= bs!885407 (and d!1407402 d!1407216)))

(assert (=> bs!885407 (= lambda!177636 lambda!177544)))

(declare-fun bs!885408 () Bool)

(assert (= bs!885408 (and d!1407402 d!1407302)))

(assert (=> bs!885408 (= lambda!177636 lambda!177568)))

(declare-fun bs!885409 () Bool)

(assert (= bs!885409 (and d!1407402 d!1407334)))

(assert (=> bs!885409 (= lambda!177636 lambda!177577)))

(declare-fun bs!885410 () Bool)

(assert (= bs!885410 (and d!1407402 d!1407306)))

(assert (=> bs!885410 (not (= lambda!177636 lambda!177571))))

(declare-fun bs!885411 () Bool)

(assert (= bs!885411 (and d!1407402 d!1407320)))

(assert (=> bs!885411 (= lambda!177636 lambda!177576)))

(declare-fun bs!885412 () Bool)

(assert (= bs!885412 (and d!1407402 d!1407268)))

(assert (=> bs!885412 (= lambda!177636 lambda!177556)))

(declare-fun bs!885413 () Bool)

(assert (= bs!885413 (and d!1407402 d!1407314)))

(assert (=> bs!885413 (= lambda!177636 lambda!177572)))

(declare-fun lt!1721284 () ListMap!3717)

(assert (=> d!1407402 (invariantList!1058 (toList!4456 lt!1721284))))

(declare-fun e!2834239 () ListMap!3717)

(assert (=> d!1407402 (= lt!1721284 e!2834239)))

(declare-fun c!776958 () Bool)

(assert (=> d!1407402 (= c!776958 ((_ is Cons!50816) (t!357906 (Cons!50816 lt!1720912 Nil!50816))))))

(assert (=> d!1407402 (forall!10389 (t!357906 (Cons!50816 lt!1720912 Nil!50816)) lambda!177636)))

(assert (=> d!1407402 (= (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816))) lt!1721284)))

(declare-fun b!4547871 () Bool)

(assert (=> b!4547871 (= e!2834239 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (extractMap!1280 (t!357906 (t!357906 (Cons!50816 lt!1720912 Nil!50816))))))))

(declare-fun b!4547872 () Bool)

(assert (=> b!4547872 (= e!2834239 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407402 c!776958) b!4547871))

(assert (= (and d!1407402 (not c!776958)) b!4547872))

(declare-fun m!5320637 () Bool)

(assert (=> d!1407402 m!5320637))

(declare-fun m!5320639 () Bool)

(assert (=> d!1407402 m!5320639))

(declare-fun m!5320641 () Bool)

(assert (=> b!4547871 m!5320641))

(assert (=> b!4547871 m!5320641))

(declare-fun m!5320643 () Bool)

(assert (=> b!4547871 m!5320643))

(assert (=> b!4547512 d!1407402))

(declare-fun d!1407404 () Bool)

(declare-fun e!2834241 () Bool)

(assert (=> d!1407404 e!2834241))

(declare-fun res!1896361 () Bool)

(assert (=> d!1407404 (=> res!1896361 e!2834241)))

(declare-fun lt!1721288 () Bool)

(assert (=> d!1407404 (= res!1896361 (not lt!1721288))))

(declare-fun lt!1721287 () Bool)

(assert (=> d!1407404 (= lt!1721288 lt!1721287)))

(declare-fun lt!1721286 () Unit!99681)

(declare-fun e!2834240 () Unit!99681)

(assert (=> d!1407404 (= lt!1721286 e!2834240)))

(declare-fun c!776959 () Bool)

(assert (=> d!1407404 (= c!776959 lt!1721287)))

(assert (=> d!1407404 (= lt!1721287 (containsKey!1931 (toList!4455 lt!1721112) (_1!28960 lt!1720912)))))

(assert (=> d!1407404 (= (contains!13645 lt!1721112 (_1!28960 lt!1720912)) lt!1721288)))

(declare-fun b!4547873 () Bool)

(declare-fun lt!1721285 () Unit!99681)

(assert (=> b!4547873 (= e!2834240 lt!1721285)))

(assert (=> b!4547873 (= lt!1721285 (lemmaContainsKeyImpliesGetValueByKeyDefined!1080 (toList!4455 lt!1721112) (_1!28960 lt!1720912)))))

(assert (=> b!4547873 (isDefined!8516 (getValueByKey!1176 (toList!4455 lt!1721112) (_1!28960 lt!1720912)))))

(declare-fun b!4547874 () Bool)

(declare-fun Unit!99720 () Unit!99681)

(assert (=> b!4547874 (= e!2834240 Unit!99720)))

(declare-fun b!4547875 () Bool)

(assert (=> b!4547875 (= e!2834241 (isDefined!8516 (getValueByKey!1176 (toList!4455 lt!1721112) (_1!28960 lt!1720912))))))

(assert (= (and d!1407404 c!776959) b!4547873))

(assert (= (and d!1407404 (not c!776959)) b!4547874))

(assert (= (and d!1407404 (not res!1896361)) b!4547875))

(declare-fun m!5320645 () Bool)

(assert (=> d!1407404 m!5320645))

(declare-fun m!5320647 () Bool)

(assert (=> b!4547873 m!5320647))

(assert (=> b!4547873 m!5320379))

(assert (=> b!4547873 m!5320379))

(declare-fun m!5320649 () Bool)

(assert (=> b!4547873 m!5320649))

(assert (=> b!4547875 m!5320379))

(assert (=> b!4547875 m!5320379))

(assert (=> b!4547875 m!5320649))

(assert (=> d!1407338 d!1407404))

(declare-fun b!4547885 () Bool)

(declare-fun e!2834246 () Option!11244)

(declare-fun e!2834247 () Option!11244)

(assert (=> b!4547885 (= e!2834246 e!2834247)))

(declare-fun c!776965 () Bool)

(assert (=> b!4547885 (= c!776965 (and ((_ is Cons!50816) lt!1721113) (not (= (_1!28960 (h!56711 lt!1721113)) (_1!28960 lt!1720912)))))))

(declare-fun d!1407406 () Bool)

(declare-fun c!776964 () Bool)

(assert (=> d!1407406 (= c!776964 (and ((_ is Cons!50816) lt!1721113) (= (_1!28960 (h!56711 lt!1721113)) (_1!28960 lt!1720912))))))

(assert (=> d!1407406 (= (getValueByKey!1176 lt!1721113 (_1!28960 lt!1720912)) e!2834246)))

(declare-fun b!4547886 () Bool)

(assert (=> b!4547886 (= e!2834247 (getValueByKey!1176 (t!357906 lt!1721113) (_1!28960 lt!1720912)))))

(declare-fun b!4547884 () Bool)

(assert (=> b!4547884 (= e!2834246 (Some!11243 (_2!28960 (h!56711 lt!1721113))))))

(declare-fun b!4547887 () Bool)

(assert (=> b!4547887 (= e!2834247 None!11243)))

(assert (= (and d!1407406 c!776964) b!4547884))

(assert (= (and d!1407406 (not c!776964)) b!4547885))

(assert (= (and b!4547885 c!776965) b!4547886))

(assert (= (and b!4547885 (not c!776965)) b!4547887))

(declare-fun m!5320651 () Bool)

(assert (=> b!4547886 m!5320651))

(assert (=> d!1407338 d!1407406))

(declare-fun d!1407408 () Bool)

(assert (=> d!1407408 (= (getValueByKey!1176 lt!1721113 (_1!28960 lt!1720912)) (Some!11243 (_2!28960 lt!1720912)))))

(declare-fun lt!1721291 () Unit!99681)

(declare-fun choose!30054 (List!50940 (_ BitVec 64) List!50939) Unit!99681)

(assert (=> d!1407408 (= lt!1721291 (choose!30054 lt!1721113 (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(declare-fun e!2834250 () Bool)

(assert (=> d!1407408 e!2834250))

(declare-fun res!1896366 () Bool)

(assert (=> d!1407408 (=> (not res!1896366) (not e!2834250))))

(assert (=> d!1407408 (= res!1896366 (isStrictlySorted!472 lt!1721113))))

(assert (=> d!1407408 (= (lemmaContainsTupThenGetReturnValue!736 lt!1721113 (_1!28960 lt!1720912) (_2!28960 lt!1720912)) lt!1721291)))

(declare-fun b!4547892 () Bool)

(declare-fun res!1896367 () Bool)

(assert (=> b!4547892 (=> (not res!1896367) (not e!2834250))))

(assert (=> b!4547892 (= res!1896367 (containsKey!1931 lt!1721113 (_1!28960 lt!1720912)))))

(declare-fun b!4547893 () Bool)

(assert (=> b!4547893 (= e!2834250 (contains!13644 lt!1721113 (tuple2!51333 (_1!28960 lt!1720912) (_2!28960 lt!1720912))))))

(assert (= (and d!1407408 res!1896366) b!4547892))

(assert (= (and b!4547892 res!1896367) b!4547893))

(assert (=> d!1407408 m!5320373))

(declare-fun m!5320653 () Bool)

(assert (=> d!1407408 m!5320653))

(declare-fun m!5320655 () Bool)

(assert (=> d!1407408 m!5320655))

(declare-fun m!5320657 () Bool)

(assert (=> b!4547892 m!5320657))

(declare-fun m!5320659 () Bool)

(assert (=> b!4547893 m!5320659))

(assert (=> d!1407338 d!1407408))

(declare-fun bm!317154 () Bool)

(declare-fun call!317160 () List!50940)

(declare-fun call!317159 () List!50940)

(assert (=> bm!317154 (= call!317160 call!317159)))

(declare-fun b!4547914 () Bool)

(declare-fun res!1896372 () Bool)

(declare-fun e!2834265 () Bool)

(assert (=> b!4547914 (=> (not res!1896372) (not e!2834265))))

(declare-fun lt!1721294 () List!50940)

(assert (=> b!4547914 (= res!1896372 (containsKey!1931 lt!1721294 (_1!28960 lt!1720912)))))

(declare-fun b!4547915 () Bool)

(assert (=> b!4547915 (= e!2834265 (contains!13644 lt!1721294 (tuple2!51333 (_1!28960 lt!1720912) (_2!28960 lt!1720912))))))

(declare-fun b!4547916 () Bool)

(declare-fun e!2834264 () List!50940)

(assert (=> b!4547916 (= e!2834264 call!317160)))

(declare-fun bm!317155 () Bool)

(declare-fun call!317161 () List!50940)

(assert (=> bm!317155 (= call!317159 call!317161)))

(declare-fun e!2834261 () List!50940)

(declare-fun c!776975 () Bool)

(declare-fun b!4547917 () Bool)

(declare-fun c!776974 () Bool)

(assert (=> b!4547917 (= e!2834261 (ite c!776975 (t!357906 (toList!4455 lt!1720913)) (ite c!776974 (Cons!50816 (h!56711 (toList!4455 lt!1720913)) (t!357906 (toList!4455 lt!1720913))) Nil!50816)))))

(declare-fun b!4547918 () Bool)

(assert (=> b!4547918 (= e!2834261 (insertStrictlySorted!448 (t!357906 (toList!4455 lt!1720913)) (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(declare-fun b!4547919 () Bool)

(assert (=> b!4547919 (= c!776974 (and ((_ is Cons!50816) (toList!4455 lt!1720913)) (bvsgt (_1!28960 (h!56711 (toList!4455 lt!1720913))) (_1!28960 lt!1720912))))))

(declare-fun e!2834262 () List!50940)

(assert (=> b!4547919 (= e!2834262 e!2834264)))

(declare-fun b!4547920 () Bool)

(declare-fun e!2834263 () List!50940)

(assert (=> b!4547920 (= e!2834263 e!2834262)))

(assert (=> b!4547920 (= c!776975 (and ((_ is Cons!50816) (toList!4455 lt!1720913)) (= (_1!28960 (h!56711 (toList!4455 lt!1720913))) (_1!28960 lt!1720912))))))

(declare-fun b!4547921 () Bool)

(assert (=> b!4547921 (= e!2834264 call!317160)))

(declare-fun b!4547922 () Bool)

(assert (=> b!4547922 (= e!2834262 call!317159)))

(declare-fun d!1407410 () Bool)

(assert (=> d!1407410 e!2834265))

(declare-fun res!1896373 () Bool)

(assert (=> d!1407410 (=> (not res!1896373) (not e!2834265))))

(assert (=> d!1407410 (= res!1896373 (isStrictlySorted!472 lt!1721294))))

(assert (=> d!1407410 (= lt!1721294 e!2834263)))

(declare-fun c!776977 () Bool)

(assert (=> d!1407410 (= c!776977 (and ((_ is Cons!50816) (toList!4455 lt!1720913)) (bvslt (_1!28960 (h!56711 (toList!4455 lt!1720913))) (_1!28960 lt!1720912))))))

(assert (=> d!1407410 (isStrictlySorted!472 (toList!4455 lt!1720913))))

(assert (=> d!1407410 (= (insertStrictlySorted!448 (toList!4455 lt!1720913) (_1!28960 lt!1720912) (_2!28960 lt!1720912)) lt!1721294)))

(declare-fun bm!317156 () Bool)

(declare-fun $colon$colon!978 (List!50940 tuple2!51332) List!50940)

(assert (=> bm!317156 (= call!317161 ($colon$colon!978 e!2834261 (ite c!776977 (h!56711 (toList!4455 lt!1720913)) (tuple2!51333 (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))))

(declare-fun c!776976 () Bool)

(assert (=> bm!317156 (= c!776976 c!776977)))

(declare-fun b!4547923 () Bool)

(assert (=> b!4547923 (= e!2834263 call!317161)))

(assert (= (and d!1407410 c!776977) b!4547923))

(assert (= (and d!1407410 (not c!776977)) b!4547920))

(assert (= (and b!4547920 c!776975) b!4547922))

(assert (= (and b!4547920 (not c!776975)) b!4547919))

(assert (= (and b!4547919 c!776974) b!4547916))

(assert (= (and b!4547919 (not c!776974)) b!4547921))

(assert (= (or b!4547916 b!4547921) bm!317154))

(assert (= (or b!4547922 bm!317154) bm!317155))

(assert (= (or b!4547923 bm!317155) bm!317156))

(assert (= (and bm!317156 c!776976) b!4547918))

(assert (= (and bm!317156 (not c!776976)) b!4547917))

(assert (= (and d!1407410 res!1896373) b!4547914))

(assert (= (and b!4547914 res!1896372) b!4547915))

(declare-fun m!5320661 () Bool)

(assert (=> b!4547918 m!5320661))

(declare-fun m!5320663 () Bool)

(assert (=> b!4547915 m!5320663))

(declare-fun m!5320665 () Bool)

(assert (=> bm!317156 m!5320665))

(declare-fun m!5320667 () Bool)

(assert (=> b!4547914 m!5320667))

(declare-fun m!5320669 () Bool)

(assert (=> d!1407410 m!5320669))

(declare-fun m!5320671 () Bool)

(assert (=> d!1407410 m!5320671))

(assert (=> d!1407338 d!1407410))

(declare-fun d!1407412 () Bool)

(declare-fun res!1896374 () Bool)

(declare-fun e!2834266 () Bool)

(assert (=> d!1407412 (=> res!1896374 e!2834266)))

(assert (=> d!1407412 (= res!1896374 ((_ is Nil!50816) (t!357906 (toList!4455 lm!1477))))))

(assert (=> d!1407412 (= (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177531) e!2834266)))

(declare-fun b!4547924 () Bool)

(declare-fun e!2834267 () Bool)

(assert (=> b!4547924 (= e!2834266 e!2834267)))

(declare-fun res!1896375 () Bool)

(assert (=> b!4547924 (=> (not res!1896375) (not e!2834267))))

(assert (=> b!4547924 (= res!1896375 (dynLambda!21244 lambda!177531 (h!56711 (t!357906 (toList!4455 lm!1477)))))))

(declare-fun b!4547925 () Bool)

(assert (=> b!4547925 (= e!2834267 (forall!10389 (t!357906 (t!357906 (toList!4455 lm!1477))) lambda!177531))))

(assert (= (and d!1407412 (not res!1896374)) b!4547924))

(assert (= (and b!4547924 res!1896375) b!4547925))

(declare-fun b_lambda!159045 () Bool)

(assert (=> (not b_lambda!159045) (not b!4547924)))

(declare-fun m!5320673 () Bool)

(assert (=> b!4547924 m!5320673))

(declare-fun m!5320675 () Bool)

(assert (=> b!4547925 m!5320675))

(assert (=> b!4547568 d!1407412))

(declare-fun b!4547926 () Bool)

(declare-fun e!2834271 () Bool)

(assert (=> b!4547926 (= e!2834271 (contains!13648 (keys!17701 lt!1720956) key!3287))))

(declare-fun b!4547927 () Bool)

(declare-fun e!2834272 () List!50942)

(assert (=> b!4547927 (= e!2834272 (keys!17701 lt!1720956))))

(declare-fun d!1407414 () Bool)

(declare-fun e!2834273 () Bool)

(assert (=> d!1407414 e!2834273))

(declare-fun res!1896377 () Bool)

(assert (=> d!1407414 (=> res!1896377 e!2834273)))

(declare-fun e!2834270 () Bool)

(assert (=> d!1407414 (= res!1896377 e!2834270)))

(declare-fun res!1896376 () Bool)

(assert (=> d!1407414 (=> (not res!1896376) (not e!2834270))))

(declare-fun lt!1721302 () Bool)

(assert (=> d!1407414 (= res!1896376 (not lt!1721302))))

(declare-fun lt!1721297 () Bool)

(assert (=> d!1407414 (= lt!1721302 lt!1721297)))

(declare-fun lt!1721301 () Unit!99681)

(declare-fun e!2834268 () Unit!99681)

(assert (=> d!1407414 (= lt!1721301 e!2834268)))

(declare-fun c!776979 () Bool)

(assert (=> d!1407414 (= c!776979 lt!1721297)))

(assert (=> d!1407414 (= lt!1721297 (containsKey!1930 (toList!4456 lt!1720956) key!3287))))

(assert (=> d!1407414 (= (contains!13646 lt!1720956 key!3287) lt!1721302)))

(declare-fun b!4547928 () Bool)

(declare-fun lt!1721299 () Unit!99681)

(assert (=> b!4547928 (= e!2834268 lt!1721299)))

(declare-fun lt!1721298 () Unit!99681)

(assert (=> b!4547928 (= lt!1721298 (lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (toList!4456 lt!1720956) key!3287))))

(assert (=> b!4547928 (isDefined!8515 (getValueByKey!1175 (toList!4456 lt!1720956) key!3287))))

(declare-fun lt!1721300 () Unit!99681)

(assert (=> b!4547928 (= lt!1721300 lt!1721298)))

(assert (=> b!4547928 (= lt!1721299 (lemmaInListThenGetKeysListContains!502 (toList!4456 lt!1720956) key!3287))))

(declare-fun call!317162 () Bool)

(assert (=> b!4547928 call!317162))

(declare-fun b!4547929 () Bool)

(declare-fun e!2834269 () Unit!99681)

(assert (=> b!4547929 (= e!2834268 e!2834269)))

(declare-fun c!776978 () Bool)

(assert (=> b!4547929 (= c!776978 call!317162)))

(declare-fun b!4547930 () Bool)

(assert (=> b!4547930 (= e!2834272 (getKeysList!506 (toList!4456 lt!1720956)))))

(declare-fun b!4547931 () Bool)

(assert (=> b!4547931 (= e!2834273 e!2834271)))

(declare-fun res!1896378 () Bool)

(assert (=> b!4547931 (=> (not res!1896378) (not e!2834271))))

(assert (=> b!4547931 (= res!1896378 (isDefined!8515 (getValueByKey!1175 (toList!4456 lt!1720956) key!3287)))))

(declare-fun b!4547932 () Bool)

(declare-fun Unit!99722 () Unit!99681)

(assert (=> b!4547932 (= e!2834269 Unit!99722)))

(declare-fun b!4547933 () Bool)

(assert (=> b!4547933 false))

(declare-fun lt!1721296 () Unit!99681)

(declare-fun lt!1721295 () Unit!99681)

(assert (=> b!4547933 (= lt!1721296 lt!1721295)))

(assert (=> b!4547933 (containsKey!1930 (toList!4456 lt!1720956) key!3287)))

(assert (=> b!4547933 (= lt!1721295 (lemmaInGetKeysListThenContainsKey!505 (toList!4456 lt!1720956) key!3287))))

(declare-fun Unit!99723 () Unit!99681)

(assert (=> b!4547933 (= e!2834269 Unit!99723)))

(declare-fun b!4547934 () Bool)

(assert (=> b!4547934 (= e!2834270 (not (contains!13648 (keys!17701 lt!1720956) key!3287)))))

(declare-fun bm!317157 () Bool)

(assert (=> bm!317157 (= call!317162 (contains!13648 e!2834272 key!3287))))

(declare-fun c!776980 () Bool)

(assert (=> bm!317157 (= c!776980 c!776979)))

(assert (= (and d!1407414 c!776979) b!4547928))

(assert (= (and d!1407414 (not c!776979)) b!4547929))

(assert (= (and b!4547929 c!776978) b!4547933))

(assert (= (and b!4547929 (not c!776978)) b!4547932))

(assert (= (or b!4547928 b!4547929) bm!317157))

(assert (= (and bm!317157 c!776980) b!4547930))

(assert (= (and bm!317157 (not c!776980)) b!4547927))

(assert (= (and d!1407414 res!1896376) b!4547934))

(assert (= (and d!1407414 (not res!1896377)) b!4547931))

(assert (= (and b!4547931 res!1896378) b!4547926))

(declare-fun m!5320677 () Bool)

(assert (=> b!4547928 m!5320677))

(declare-fun m!5320679 () Bool)

(assert (=> b!4547928 m!5320679))

(assert (=> b!4547928 m!5320679))

(declare-fun m!5320681 () Bool)

(assert (=> b!4547928 m!5320681))

(declare-fun m!5320683 () Bool)

(assert (=> b!4547928 m!5320683))

(assert (=> b!4547927 m!5320053))

(assert (=> b!4547931 m!5320679))

(assert (=> b!4547931 m!5320679))

(assert (=> b!4547931 m!5320681))

(declare-fun m!5320685 () Bool)

(assert (=> b!4547933 m!5320685))

(declare-fun m!5320687 () Bool)

(assert (=> b!4547933 m!5320687))

(assert (=> b!4547934 m!5320053))

(assert (=> b!4547934 m!5320053))

(declare-fun m!5320689 () Bool)

(assert (=> b!4547934 m!5320689))

(assert (=> b!4547926 m!5320053))

(assert (=> b!4547926 m!5320053))

(assert (=> b!4547926 m!5320689))

(declare-fun m!5320691 () Bool)

(assert (=> bm!317157 m!5320691))

(assert (=> d!1407414 m!5320685))

(declare-fun m!5320693 () Bool)

(assert (=> b!4547930 m!5320693))

(assert (=> d!1407230 d!1407414))

(declare-fun e!2834314 () List!50939)

(declare-fun b!4548000 () Bool)

(assert (=> b!4548000 (= e!2834314 (removePresrvNoDuplicatedKeys!181 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) key!3287))))

(declare-fun b!4548001 () Bool)

(declare-fun e!2834312 () List!50939)

(assert (=> b!4548001 (= e!2834312 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(declare-fun c!777007 () Bool)

(declare-fun call!317184 () Bool)

(assert (=> b!4548001 (= c!777007 call!317184)))

(declare-fun lt!1721423 () Unit!99681)

(declare-fun e!2834316 () Unit!99681)

(assert (=> b!4548001 (= lt!1721423 e!2834316)))

(declare-fun b!4548002 () Bool)

(declare-fun e!2834310 () Unit!99681)

(declare-fun Unit!99724 () Unit!99681)

(assert (=> b!4548002 (= e!2834310 Unit!99724)))

(declare-fun call!317188 () (InoxSet tuple2!51330))

(declare-fun call!317187 () (InoxSet tuple2!51330))

(declare-fun b!4548003 () Bool)

(declare-fun get!16732 (Option!11243) V!12446)

(assert (=> b!4548003 (= call!317187 ((_ map and) call!317188 ((_ map not) (store ((as const (Array tuple2!51330 Bool)) false) (tuple2!51331 key!3287 (get!16732 (getValueByKey!1175 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287))) true))))))

(declare-fun lt!1721406 () Unit!99681)

(assert (=> b!4548003 (= lt!1721406 e!2834310)))

(declare-fun c!777005 () Bool)

(declare-fun contains!13650 (List!50939 tuple2!51330) Bool)

(assert (=> b!4548003 (= c!777005 (contains!13650 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (tuple2!51331 key!3287 (get!16732 (getValueByKey!1175 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287)))))))

(declare-fun Unit!99725 () Unit!99681)

(assert (=> b!4548003 (= e!2834316 Unit!99725)))

(declare-fun d!1407416 () Bool)

(declare-fun e!2834311 () Bool)

(assert (=> d!1407416 e!2834311))

(declare-fun res!1896394 () Bool)

(assert (=> d!1407416 (=> (not res!1896394) (not e!2834311))))

(declare-fun lt!1721422 () List!50939)

(assert (=> d!1407416 (= res!1896394 (invariantList!1058 lt!1721422))))

(assert (=> d!1407416 (= lt!1721422 e!2834312)))

(declare-fun c!777008 () Bool)

(assert (=> d!1407416 (= c!777008 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))) key!3287)))))

(assert (=> d!1407416 (invariantList!1058 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))

(assert (=> d!1407416 (= (removePresrvNoDuplicatedKeys!181 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287) lt!1721422)))

(declare-fun b!4548004 () Bool)

(declare-fun e!2834315 () Unit!99681)

(declare-fun Unit!99726 () Unit!99681)

(assert (=> b!4548004 (= e!2834315 Unit!99726)))

(declare-fun lt!1721414 () List!50939)

(assert (=> b!4548004 (= lt!1721414 (removePresrvNoDuplicatedKeys!181 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) key!3287))))

(declare-fun lt!1721412 () Unit!99681)

(assert (=> b!4548004 (= lt!1721412 (lemmaInListThenGetKeysListContains!502 lt!1721414 (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))))

(assert (=> b!4548004 (contains!13648 (getKeysList!506 lt!1721414) (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(declare-fun lt!1721416 () Unit!99681)

(assert (=> b!4548004 (= lt!1721416 lt!1721412)))

(assert (=> b!4548004 false))

(declare-fun b!4548005 () Bool)

(declare-fun e!2834313 () List!50939)

(assert (=> b!4548005 (= e!2834313 Nil!50815)))

(declare-fun b!4548006 () Bool)

(declare-fun e!2834308 () Unit!99681)

(declare-fun Unit!99727 () Unit!99681)

(assert (=> b!4548006 (= e!2834308 Unit!99727)))

(declare-fun lt!1721420 () Unit!99681)

(assert (=> b!4548006 (= lt!1721420 (lemmaInGetKeysListThenContainsKey!505 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))))

(declare-fun call!317189 () Bool)

(assert (=> b!4548006 call!317189))

(declare-fun lt!1721410 () Unit!99681)

(assert (=> b!4548006 (= lt!1721410 lt!1721420)))

(assert (=> b!4548006 false))

(declare-fun bm!317179 () Bool)

(assert (=> bm!317179 (= call!317187 (content!8479 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(declare-fun b!4548007 () Bool)

(declare-fun Unit!99728 () Unit!99681)

(assert (=> b!4548007 (= e!2834315 Unit!99728)))

(declare-fun b!4548008 () Bool)

(declare-fun Unit!99729 () Unit!99681)

(assert (=> b!4548008 (= e!2834310 Unit!99729)))

(declare-fun lt!1721417 () V!12446)

(assert (=> b!4548008 (= lt!1721417 (get!16732 (getValueByKey!1175 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287)))))

(declare-fun lt!1721415 () K!12200)

(assert (=> b!4548008 (= lt!1721415 key!3287)))

(declare-fun lt!1721418 () K!12200)

(assert (=> b!4548008 (= lt!1721418 key!3287)))

(declare-fun lt!1721409 () Unit!99681)

(declare-fun lemmaContainsTupleThenContainsKey!83 (List!50939 K!12200 V!12446) Unit!99681)

(assert (=> b!4548008 (= lt!1721409 (lemmaContainsTupleThenContainsKey!83 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) lt!1721415 (get!16732 (getValueByKey!1175 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287))))))

(assert (=> b!4548008 call!317189))

(declare-fun lt!1721407 () Unit!99681)

(assert (=> b!4548008 (= lt!1721407 lt!1721409)))

(assert (=> b!4548008 false))

(declare-fun b!4548009 () Bool)

(declare-fun Unit!99730 () Unit!99681)

(assert (=> b!4548009 (= e!2834308 Unit!99730)))

(declare-fun b!4548010 () Bool)

(declare-fun res!1896395 () Bool)

(assert (=> b!4548010 (=> (not res!1896395) (not e!2834311))))

(assert (=> b!4548010 (= res!1896395 (not (containsKey!1930 lt!1721422 key!3287)))))

(declare-fun b!4548011 () Bool)

(assert (=> b!4548011 (= e!2834314 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))

(declare-fun b!4548012 () Bool)

(declare-fun e!2834309 () Bool)

(assert (=> b!4548012 (= e!2834311 e!2834309)))

(declare-fun c!777010 () Bool)

(assert (=> b!4548012 (= c!777010 (containsKey!1930 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287))))

(declare-fun b!4548013 () Bool)

(declare-fun call!317185 () (InoxSet tuple2!51330))

(declare-fun call!317186 () (InoxSet tuple2!51330))

(assert (=> b!4548013 (= e!2834309 (= call!317185 call!317186))))

(declare-fun b!4548014 () Bool)

(assert (=> b!4548014 (= e!2834309 (= call!317185 ((_ map and) call!317186 ((_ map not) (store ((as const (Array tuple2!51330 Bool)) false) (tuple2!51331 key!3287 (get!16732 (getValueByKey!1175 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287))) true)))))))

(assert (=> b!4548014 (containsKey!1930 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287)))

(declare-fun lt!1721419 () Unit!99681)

(assert (=> b!4548014 (= lt!1721419 (lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287))))

(assert (=> b!4548014 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) key!3287))))

(declare-fun lt!1721413 () Unit!99681)

(assert (=> b!4548014 (= lt!1721413 lt!1721419)))

(declare-fun b!4548015 () Bool)

(declare-fun res!1896396 () Bool)

(assert (=> b!4548015 (=> (not res!1896396) (not e!2834311))))

(assert (=> b!4548015 (= res!1896396 (= (content!8478 (getKeysList!506 lt!1721422)) ((_ map and) (content!8478 (getKeysList!506 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))) ((_ map not) (store ((as const (Array K!12200 Bool)) false) key!3287 true)))))))

(declare-fun bm!317180 () Bool)

(assert (=> bm!317180 (= call!317185 (content!8479 lt!1721422))))

(declare-fun b!4548016 () Bool)

(assert (=> b!4548016 (= e!2834312 e!2834313)))

(declare-fun c!777006 () Bool)

(assert (=> b!4548016 (= c!777006 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (not (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))) key!3287))))))

(declare-fun bm!317181 () Bool)

(assert (=> bm!317181 (= call!317184 (containsKey!1930 e!2834314 (ite c!777008 key!3287 (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))))

(declare-fun c!777009 () Bool)

(assert (=> bm!317181 (= c!777009 c!777008)))

(declare-fun b!4548017 () Bool)

(assert (=> b!4548017 (= call!317187 call!317188)))

(declare-fun Unit!99731 () Unit!99681)

(assert (=> b!4548017 (= e!2834316 Unit!99731)))

(declare-fun bm!317182 () Bool)

(assert (=> bm!317182 (= call!317186 (content!8479 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(declare-fun bm!317183 () Bool)

(assert (=> bm!317183 (= call!317189 (containsKey!1930 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (ite c!777008 lt!1721415 (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))))

(declare-fun bm!317184 () Bool)

(assert (=> bm!317184 (= call!317188 (content!8479 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(declare-fun b!4548018 () Bool)

(declare-fun lt!1721408 () Unit!99681)

(assert (=> b!4548018 (= lt!1721408 e!2834315)))

(declare-fun c!777012 () Bool)

(assert (=> b!4548018 (= c!777012 call!317184)))

(declare-fun lt!1721421 () Unit!99681)

(assert (=> b!4548018 (= lt!1721421 e!2834308)))

(declare-fun c!777011 () Bool)

(assert (=> b!4548018 (= c!777011 (contains!13648 (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))) (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))))

(declare-fun lt!1721411 () List!50939)

(declare-fun $colon$colon!980 (List!50939 tuple2!51330) List!50939)

(assert (=> b!4548018 (= lt!1721411 ($colon$colon!980 (removePresrvNoDuplicatedKeys!181 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) key!3287) (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(assert (=> b!4548018 (= e!2834313 lt!1721411)))

(assert (= (and d!1407416 c!777008) b!4548001))

(assert (= (and d!1407416 (not c!777008)) b!4548016))

(assert (= (and b!4548001 c!777007) b!4548003))

(assert (= (and b!4548001 (not c!777007)) b!4548017))

(assert (= (and b!4548003 c!777005) b!4548008))

(assert (= (and b!4548003 (not c!777005)) b!4548002))

(assert (= (or b!4548003 b!4548017) bm!317179))

(assert (= (or b!4548003 b!4548017) bm!317184))

(assert (= (and b!4548016 c!777006) b!4548018))

(assert (= (and b!4548016 (not c!777006)) b!4548005))

(assert (= (and b!4548018 c!777011) b!4548006))

(assert (= (and b!4548018 (not c!777011)) b!4548009))

(assert (= (and b!4548018 c!777012) b!4548004))

(assert (= (and b!4548018 (not c!777012)) b!4548007))

(assert (= (or b!4548008 b!4548006) bm!317183))

(assert (= (or b!4548001 b!4548018) bm!317181))

(assert (= (and bm!317181 c!777009) b!4548011))

(assert (= (and bm!317181 (not c!777009)) b!4548000))

(assert (= (and d!1407416 res!1896394) b!4548010))

(assert (= (and b!4548010 res!1896395) b!4548015))

(assert (= (and b!4548015 res!1896396) b!4548012))

(assert (= (and b!4548012 c!777010) b!4548014))

(assert (= (and b!4548012 (not c!777010)) b!4548013))

(assert (= (or b!4548014 b!4548013) bm!317180))

(assert (= (or b!4548014 b!4548013) bm!317182))

(declare-fun m!5320745 () Bool)

(assert (=> bm!317180 m!5320745))

(declare-fun m!5320747 () Bool)

(assert (=> b!4548015 m!5320747))

(declare-fun m!5320749 () Bool)

(assert (=> b!4548015 m!5320749))

(assert (=> b!4548015 m!5320747))

(declare-fun m!5320751 () Bool)

(assert (=> b!4548015 m!5320751))

(declare-fun m!5320753 () Bool)

(assert (=> b!4548015 m!5320753))

(assert (=> b!4548015 m!5320751))

(assert (=> b!4548015 m!5320051))

(declare-fun m!5320755 () Bool)

(assert (=> b!4548000 m!5320755))

(declare-fun m!5320757 () Bool)

(assert (=> bm!317183 m!5320757))

(declare-fun m!5320759 () Bool)

(assert (=> b!4548014 m!5320759))

(declare-fun m!5320761 () Bool)

(assert (=> b!4548014 m!5320761))

(declare-fun m!5320763 () Bool)

(assert (=> b!4548014 m!5320763))

(declare-fun m!5320765 () Bool)

(assert (=> b!4548014 m!5320765))

(declare-fun m!5320767 () Bool)

(assert (=> b!4548014 m!5320767))

(assert (=> b!4548014 m!5320759))

(declare-fun m!5320769 () Bool)

(assert (=> b!4548014 m!5320769))

(assert (=> b!4548014 m!5320759))

(assert (=> b!4548012 m!5320765))

(assert (=> b!4548004 m!5320755))

(declare-fun m!5320771 () Bool)

(assert (=> b!4548004 m!5320771))

(declare-fun m!5320773 () Bool)

(assert (=> b!4548004 m!5320773))

(assert (=> b!4548004 m!5320773))

(declare-fun m!5320775 () Bool)

(assert (=> b!4548004 m!5320775))

(declare-fun m!5320777 () Bool)

(assert (=> bm!317181 m!5320777))

(declare-fun m!5320779 () Bool)

(assert (=> bm!317179 m!5320779))

(declare-fun m!5320781 () Bool)

(assert (=> bm!317184 m!5320781))

(declare-fun m!5320783 () Bool)

(assert (=> d!1407416 m!5320783))

(declare-fun m!5320785 () Bool)

(assert (=> d!1407416 m!5320785))

(assert (=> b!4548003 m!5320759))

(assert (=> b!4548003 m!5320759))

(assert (=> b!4548003 m!5320769))

(assert (=> b!4548003 m!5320763))

(declare-fun m!5320787 () Bool)

(assert (=> b!4548003 m!5320787))

(assert (=> b!4548008 m!5320759))

(assert (=> b!4548008 m!5320759))

(assert (=> b!4548008 m!5320769))

(assert (=> b!4548008 m!5320769))

(declare-fun m!5320793 () Bool)

(assert (=> b!4548008 m!5320793))

(declare-fun m!5320795 () Bool)

(assert (=> b!4548006 m!5320795))

(assert (=> bm!317182 m!5320781))

(declare-fun m!5320797 () Bool)

(assert (=> b!4548010 m!5320797))

(declare-fun m!5320799 () Bool)

(assert (=> b!4548018 m!5320799))

(assert (=> b!4548018 m!5320799))

(declare-fun m!5320801 () Bool)

(assert (=> b!4548018 m!5320801))

(assert (=> b!4548018 m!5320755))

(assert (=> b!4548018 m!5320755))

(declare-fun m!5320803 () Bool)

(assert (=> b!4548018 m!5320803))

(assert (=> d!1407230 d!1407416))

(declare-fun bs!885439 () Bool)

(declare-fun b!4548033 () Bool)

(assert (= bs!885439 (and b!4548033 b!4547701)))

(declare-fun lambda!177671 () Int)

(assert (=> bs!885439 (= (= (toList!4456 (extractMap!1280 lt!1720918)) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177671 lambda!177600))))

(assert (=> b!4548033 true))

(declare-fun bs!885440 () Bool)

(declare-fun b!4548034 () Bool)

(assert (= bs!885440 (and b!4548034 b!4547702)))

(declare-fun lambda!177672 () Int)

(assert (=> bs!885440 (= lambda!177672 lambda!177601)))

(declare-fun d!1407430 () Bool)

(declare-fun e!2834323 () Bool)

(assert (=> d!1407430 e!2834323))

(declare-fun res!1896401 () Bool)

(assert (=> d!1407430 (=> (not res!1896401) (not e!2834323))))

(declare-fun lt!1721434 () List!50942)

(assert (=> d!1407430 (= res!1896401 (noDuplicate!768 lt!1721434))))

(assert (=> d!1407430 (= lt!1721434 (getKeysList!506 (toList!4456 (extractMap!1280 lt!1720918))))))

(assert (=> d!1407430 (= (keys!17701 (extractMap!1280 lt!1720918)) lt!1721434)))

(declare-fun b!4548032 () Bool)

(declare-fun res!1896402 () Bool)

(assert (=> b!4548032 (=> (not res!1896402) (not e!2834323))))

(assert (=> b!4548032 (= res!1896402 (= (length!392 lt!1721434) (length!393 (toList!4456 (extractMap!1280 lt!1720918)))))))

(declare-fun res!1896400 () Bool)

(assert (=> b!4548033 (=> (not res!1896400) (not e!2834323))))

(assert (=> b!4548033 (= res!1896400 (forall!10393 lt!1721434 lambda!177671))))

(assert (=> b!4548034 (= e!2834323 (= (content!8478 lt!1721434) (content!8478 (map!11191 (toList!4456 (extractMap!1280 lt!1720918)) lambda!177672))))))

(assert (= (and d!1407430 res!1896401) b!4548032))

(assert (= (and b!4548032 res!1896402) b!4548033))

(assert (= (and b!4548033 res!1896400) b!4548034))

(declare-fun m!5320805 () Bool)

(assert (=> d!1407430 m!5320805))

(assert (=> d!1407430 m!5320187))

(declare-fun m!5320807 () Bool)

(assert (=> b!4548032 m!5320807))

(declare-fun m!5320809 () Bool)

(assert (=> b!4548032 m!5320809))

(declare-fun m!5320811 () Bool)

(assert (=> b!4548033 m!5320811))

(declare-fun m!5320813 () Bool)

(assert (=> b!4548034 m!5320813))

(declare-fun m!5320815 () Bool)

(assert (=> b!4548034 m!5320815))

(assert (=> b!4548034 m!5320815))

(declare-fun m!5320817 () Bool)

(assert (=> b!4548034 m!5320817))

(assert (=> b!4547491 d!1407430))

(declare-fun bs!885475 () Bool)

(declare-fun b!4548073 () Bool)

(assert (= bs!885475 (and b!4548073 b!4547701)))

(declare-fun lambda!177685 () Int)

(assert (=> bs!885475 (= (= (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177685 lambda!177600))))

(declare-fun bs!885476 () Bool)

(assert (= bs!885476 (and b!4548073 b!4548033)))

(assert (=> bs!885476 (= (= (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177685 lambda!177671))))

(assert (=> b!4548073 true))

(declare-fun bs!885477 () Bool)

(declare-fun b!4548066 () Bool)

(assert (= bs!885477 (and b!4548066 b!4547701)))

(declare-fun lambda!177686 () Int)

(assert (=> bs!885477 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177686 lambda!177600))))

(declare-fun bs!885478 () Bool)

(assert (= bs!885478 (and b!4548066 b!4548033)))

(assert (=> bs!885478 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177686 lambda!177671))))

(declare-fun bs!885479 () Bool)

(assert (= bs!885479 (and b!4548066 b!4548073)))

(assert (=> bs!885479 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (= lambda!177686 lambda!177685))))

(assert (=> b!4548066 true))

(declare-fun bs!885480 () Bool)

(declare-fun b!4548071 () Bool)

(assert (= bs!885480 (and b!4548071 b!4547701)))

(declare-fun lambda!177687 () Int)

(assert (=> bs!885480 (= lambda!177687 lambda!177600)))

(declare-fun bs!885481 () Bool)

(assert (= bs!885481 (and b!4548071 b!4548033)))

(assert (=> bs!885481 (= (= (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177687 lambda!177671))))

(declare-fun bs!885482 () Bool)

(assert (= bs!885482 (and b!4548071 b!4548073)))

(assert (=> bs!885482 (= (= (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (= lambda!177687 lambda!177685))))

(declare-fun bs!885483 () Bool)

(assert (= bs!885483 (and b!4548071 b!4548066)))

(assert (=> bs!885483 (= (= (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))) (= lambda!177687 lambda!177686))))

(assert (=> b!4548071 true))

(declare-fun bs!885484 () Bool)

(declare-fun b!4548068 () Bool)

(assert (= bs!885484 (and b!4548068 b!4547702)))

(declare-fun lambda!177688 () Int)

(assert (=> bs!885484 (= lambda!177688 lambda!177601)))

(declare-fun bs!885485 () Bool)

(assert (= bs!885485 (and b!4548068 b!4548034)))

(assert (=> bs!885485 (= lambda!177688 lambda!177672)))

(declare-fun b!4548065 () Bool)

(declare-fun res!1896421 () Bool)

(declare-fun e!2834343 () Bool)

(assert (=> b!4548065 (=> (not res!1896421) (not e!2834343))))

(declare-fun lt!1721457 () List!50942)

(assert (=> b!4548065 (= res!1896421 (= (length!392 lt!1721457) (length!393 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))))

(declare-fun e!2834345 () List!50942)

(assert (=> b!4548066 (= e!2834345 (Cons!50818 (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))))

(declare-fun c!777026 () Bool)

(assert (=> b!4548066 (= c!777026 (containsKey!1930 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))))

(declare-fun lt!1721455 () Unit!99681)

(declare-fun e!2834344 () Unit!99681)

(assert (=> b!4548066 (= lt!1721455 e!2834344)))

(declare-fun c!777027 () Bool)

(assert (=> b!4548066 (= c!777027 (contains!13648 (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))))

(declare-fun lt!1721456 () Unit!99681)

(declare-fun e!2834346 () Unit!99681)

(assert (=> b!4548066 (= lt!1721456 e!2834346)))

(declare-fun lt!1721454 () List!50942)

(assert (=> b!4548066 (= lt!1721454 (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))))

(declare-fun lt!1721452 () Unit!99681)

(declare-fun lemmaForallContainsAddHeadPreserves!189 (List!50939 List!50942 tuple2!51330) Unit!99681)

(assert (=> b!4548066 (= lt!1721452 (lemmaForallContainsAddHeadPreserves!189 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) lt!1721454 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))))

(assert (=> b!4548066 (forall!10393 lt!1721454 lambda!177686)))

(declare-fun lt!1721453 () Unit!99681)

(assert (=> b!4548066 (= lt!1721453 lt!1721452)))

(declare-fun b!4548067 () Bool)

(declare-fun Unit!99743 () Unit!99681)

(assert (=> b!4548067 (= e!2834346 Unit!99743)))

(declare-fun d!1407432 () Bool)

(assert (=> d!1407432 e!2834343))

(declare-fun res!1896420 () Bool)

(assert (=> d!1407432 (=> (not res!1896420) (not e!2834343))))

(assert (=> d!1407432 (= res!1896420 (noDuplicate!768 lt!1721457))))

(assert (=> d!1407432 (= lt!1721457 e!2834345)))

(declare-fun c!777025 () Bool)

(assert (=> d!1407432 (= c!777025 ((_ is Cons!50815) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))

(assert (=> d!1407432 (invariantList!1058 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))

(assert (=> d!1407432 (= (getKeysList!506 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) lt!1721457)))

(assert (=> b!4548068 (= e!2834343 (= (content!8478 lt!1721457) (content!8478 (map!11191 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) lambda!177688))))))

(declare-fun b!4548069 () Bool)

(declare-fun Unit!99744 () Unit!99681)

(assert (=> b!4548069 (= e!2834344 Unit!99744)))

(declare-fun b!4548070 () Bool)

(assert (=> b!4548070 false))

(declare-fun Unit!99745 () Unit!99681)

(assert (=> b!4548070 (= e!2834344 Unit!99745)))

(declare-fun res!1896419 () Bool)

(assert (=> b!4548071 (=> (not res!1896419) (not e!2834343))))

(assert (=> b!4548071 (= res!1896419 (forall!10393 lt!1721457 lambda!177687))))

(declare-fun b!4548072 () Bool)

(assert (=> b!4548072 (= e!2834345 Nil!50818)))

(assert (=> b!4548073 false))

(declare-fun lt!1721458 () Unit!99681)

(declare-fun forallContained!2657 (List!50942 Int K!12200) Unit!99681)

(assert (=> b!4548073 (= lt!1721458 (forallContained!2657 (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) lambda!177685 (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))))

(declare-fun Unit!99746 () Unit!99681)

(assert (=> b!4548073 (= e!2834346 Unit!99746)))

(assert (= (and d!1407432 c!777025) b!4548066))

(assert (= (and d!1407432 (not c!777025)) b!4548072))

(assert (= (and b!4548066 c!777026) b!4548070))

(assert (= (and b!4548066 (not c!777026)) b!4548069))

(assert (= (and b!4548066 c!777027) b!4548073))

(assert (= (and b!4548066 (not c!777027)) b!4548067))

(assert (= (and d!1407432 res!1896420) b!4548065))

(assert (= (and b!4548065 res!1896421) b!4548071))

(assert (= (and b!4548071 res!1896419) b!4548068))

(declare-fun m!5320881 () Bool)

(assert (=> b!4548071 m!5320881))

(declare-fun m!5320883 () Bool)

(assert (=> b!4548068 m!5320883))

(declare-fun m!5320885 () Bool)

(assert (=> b!4548068 m!5320885))

(assert (=> b!4548068 m!5320885))

(declare-fun m!5320887 () Bool)

(assert (=> b!4548068 m!5320887))

(declare-fun m!5320889 () Bool)

(assert (=> b!4548065 m!5320889))

(assert (=> b!4548065 m!5320467))

(declare-fun m!5320891 () Bool)

(assert (=> b!4548073 m!5320891))

(assert (=> b!4548073 m!5320891))

(declare-fun m!5320893 () Bool)

(assert (=> b!4548073 m!5320893))

(declare-fun m!5320895 () Bool)

(assert (=> d!1407432 m!5320895))

(declare-fun m!5320897 () Bool)

(assert (=> d!1407432 m!5320897))

(assert (=> b!4548066 m!5320891))

(declare-fun m!5320899 () Bool)

(assert (=> b!4548066 m!5320899))

(declare-fun m!5320901 () Bool)

(assert (=> b!4548066 m!5320901))

(assert (=> b!4548066 m!5320891))

(declare-fun m!5320905 () Bool)

(assert (=> b!4548066 m!5320905))

(declare-fun m!5320907 () Bool)

(assert (=> b!4548066 m!5320907))

(assert (=> b!4547610 d!1407432))

(declare-fun d!1407462 () Bool)

(declare-fun lt!1721464 () List!50939)

(assert (=> d!1407462 (not (containsKey!1927 lt!1721464 key!3287))))

(declare-fun e!2834352 () List!50939)

(assert (=> d!1407462 (= lt!1721464 e!2834352)))

(declare-fun c!777029 () Bool)

(assert (=> d!1407462 (= c!777029 (and ((_ is Cons!50815) (t!357905 lt!1720920)) (= (_1!28959 (h!56710 (t!357905 lt!1720920))) key!3287)))))

(assert (=> d!1407462 (noDuplicateKeys!1224 (t!357905 lt!1720920))))

(assert (=> d!1407462 (= (removePairForKey!851 (t!357905 lt!1720920) key!3287) lt!1721464)))

(declare-fun b!4548084 () Bool)

(declare-fun e!2834353 () List!50939)

(assert (=> b!4548084 (= e!2834353 Nil!50815)))

(declare-fun b!4548082 () Bool)

(assert (=> b!4548082 (= e!2834352 e!2834353)))

(declare-fun c!777028 () Bool)

(assert (=> b!4548082 (= c!777028 ((_ is Cons!50815) (t!357905 lt!1720920)))))

(declare-fun b!4548081 () Bool)

(assert (=> b!4548081 (= e!2834352 (t!357905 (t!357905 lt!1720920)))))

(declare-fun b!4548083 () Bool)

(assert (=> b!4548083 (= e!2834353 (Cons!50815 (h!56710 (t!357905 lt!1720920)) (removePairForKey!851 (t!357905 (t!357905 lt!1720920)) key!3287)))))

(assert (= (and d!1407462 c!777029) b!4548081))

(assert (= (and d!1407462 (not c!777029)) b!4548082))

(assert (= (and b!4548082 c!777028) b!4548083))

(assert (= (and b!4548082 (not c!777028)) b!4548084))

(declare-fun m!5320913 () Bool)

(assert (=> d!1407462 m!5320913))

(declare-fun m!5320917 () Bool)

(assert (=> d!1407462 m!5320917))

(declare-fun m!5320919 () Bool)

(assert (=> b!4548083 m!5320919))

(assert (=> b!4547586 d!1407462))

(declare-fun d!1407466 () Bool)

(declare-fun lt!1721466 () Bool)

(assert (=> d!1407466 (= lt!1721466 (select (content!8478 e!2834014) key!3287))))

(declare-fun e!2834355 () Bool)

(assert (=> d!1407466 (= lt!1721466 e!2834355)))

(declare-fun res!1896427 () Bool)

(assert (=> d!1407466 (=> (not res!1896427) (not e!2834355))))

(assert (=> d!1407466 (= res!1896427 ((_ is Cons!50818) e!2834014))))

(assert (=> d!1407466 (= (contains!13648 e!2834014 key!3287) lt!1721466)))

(declare-fun b!4548085 () Bool)

(declare-fun e!2834354 () Bool)

(assert (=> b!4548085 (= e!2834355 e!2834354)))

(declare-fun res!1896428 () Bool)

(assert (=> b!4548085 (=> res!1896428 e!2834354)))

(assert (=> b!4548085 (= res!1896428 (= (h!56715 e!2834014) key!3287))))

(declare-fun b!4548086 () Bool)

(assert (=> b!4548086 (= e!2834354 (contains!13648 (t!357908 e!2834014) key!3287))))

(assert (= (and d!1407466 res!1896427) b!4548085))

(assert (= (and b!4548085 (not res!1896428)) b!4548086))

(declare-fun m!5320921 () Bool)

(assert (=> d!1407466 m!5320921))

(declare-fun m!5320923 () Bool)

(assert (=> d!1407466 m!5320923))

(declare-fun m!5320925 () Bool)

(assert (=> b!4548086 m!5320925))

(assert (=> bm!317108 d!1407466))

(declare-fun d!1407468 () Bool)

(declare-fun res!1896431 () Bool)

(declare-fun e!2834360 () Bool)

(assert (=> d!1407468 (=> res!1896431 e!2834360)))

(declare-fun e!2834359 () Bool)

(assert (=> d!1407468 (= res!1896431 e!2834359)))

(declare-fun res!1896429 () Bool)

(assert (=> d!1407468 (=> (not res!1896429) (not e!2834359))))

(assert (=> d!1407468 (= res!1896429 ((_ is Cons!50816) (t!357906 lt!1720918)))))

(assert (=> d!1407468 (= (containsKeyBiggerList!202 (t!357906 lt!1720918) key!3287) e!2834360)))

(declare-fun b!4548091 () Bool)

(assert (=> b!4548091 (= e!2834359 (containsKey!1927 (_2!28960 (h!56711 (t!357906 lt!1720918))) key!3287))))

(declare-fun b!4548092 () Bool)

(declare-fun e!2834358 () Bool)

(assert (=> b!4548092 (= e!2834360 e!2834358)))

(declare-fun res!1896430 () Bool)

(assert (=> b!4548092 (=> (not res!1896430) (not e!2834358))))

(assert (=> b!4548092 (= res!1896430 ((_ is Cons!50816) (t!357906 lt!1720918)))))

(declare-fun b!4548093 () Bool)

(assert (=> b!4548093 (= e!2834358 (containsKeyBiggerList!202 (t!357906 (t!357906 lt!1720918)) key!3287))))

(assert (= (and d!1407468 res!1896429) b!4548091))

(assert (= (and d!1407468 (not res!1896431)) b!4548092))

(assert (= (and b!4548092 res!1896430) b!4548093))

(declare-fun m!5320933 () Bool)

(assert (=> b!4548091 m!5320933))

(declare-fun m!5320935 () Bool)

(assert (=> b!4548093 m!5320935))

(assert (=> b!4547554 d!1407468))

(declare-fun d!1407472 () Bool)

(declare-fun res!1896441 () Bool)

(declare-fun e!2834370 () Bool)

(assert (=> d!1407472 (=> res!1896441 e!2834370)))

(assert (=> d!1407472 (= res!1896441 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 lt!1720918))) (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918)))) key!3287)))))

(assert (=> d!1407472 (= (containsKey!1930 (toList!4456 (extractMap!1280 lt!1720918)) key!3287) e!2834370)))

(declare-fun b!4548105 () Bool)

(declare-fun e!2834371 () Bool)

(assert (=> b!4548105 (= e!2834370 e!2834371)))

(declare-fun res!1896442 () Bool)

(assert (=> b!4548105 (=> (not res!1896442) (not e!2834371))))

(assert (=> b!4548105 (= res!1896442 ((_ is Cons!50815) (toList!4456 (extractMap!1280 lt!1720918))))))

(declare-fun b!4548106 () Bool)

(assert (=> b!4548106 (= e!2834371 (containsKey!1930 (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) key!3287))))

(assert (= (and d!1407472 (not res!1896441)) b!4548105))

(assert (= (and b!4548105 res!1896442) b!4548106))

(declare-fun m!5320939 () Bool)

(assert (=> b!4548106 m!5320939))

(assert (=> b!4547497 d!1407472))

(declare-fun d!1407476 () Bool)

(assert (=> d!1407476 (containsKey!1930 (toList!4456 (extractMap!1280 lt!1720918)) key!3287)))

(declare-fun lt!1721490 () Unit!99681)

(declare-fun choose!30058 (List!50939 K!12200) Unit!99681)

(assert (=> d!1407476 (= lt!1721490 (choose!30058 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(assert (=> d!1407476 (invariantList!1058 (toList!4456 (extractMap!1280 lt!1720918)))))

(assert (=> d!1407476 (= (lemmaInGetKeysListThenContainsKey!505 (toList!4456 (extractMap!1280 lt!1720918)) key!3287) lt!1721490)))

(declare-fun bs!885498 () Bool)

(assert (= bs!885498 d!1407476))

(assert (=> bs!885498 m!5320159))

(declare-fun m!5320941 () Bool)

(assert (=> bs!885498 m!5320941))

(declare-fun m!5320943 () Bool)

(assert (=> bs!885498 m!5320943))

(assert (=> b!4547497 d!1407476))

(declare-fun d!1407478 () Bool)

(declare-fun res!1896443 () Bool)

(declare-fun e!2834372 () Bool)

(assert (=> d!1407478 (=> res!1896443 e!2834372)))

(assert (=> d!1407478 (= res!1896443 (and ((_ is Cons!50815) (_2!28960 (h!56711 lt!1720918))) (= (_1!28959 (h!56710 (_2!28960 (h!56711 lt!1720918)))) key!3287)))))

(assert (=> d!1407478 (= (containsKey!1927 (_2!28960 (h!56711 lt!1720918)) key!3287) e!2834372)))

(declare-fun b!4548107 () Bool)

(declare-fun e!2834373 () Bool)

(assert (=> b!4548107 (= e!2834372 e!2834373)))

(declare-fun res!1896444 () Bool)

(assert (=> b!4548107 (=> (not res!1896444) (not e!2834373))))

(assert (=> b!4548107 (= res!1896444 ((_ is Cons!50815) (_2!28960 (h!56711 lt!1720918))))))

(declare-fun b!4548108 () Bool)

(assert (=> b!4548108 (= e!2834373 (containsKey!1927 (t!357905 (_2!28960 (h!56711 lt!1720918))) key!3287))))

(assert (= (and d!1407478 (not res!1896443)) b!4548107))

(assert (= (and b!4548107 res!1896444) b!4548108))

(declare-fun m!5320945 () Bool)

(assert (=> b!4548108 m!5320945))

(assert (=> b!4547552 d!1407478))

(declare-fun d!1407480 () Bool)

(declare-fun res!1896452 () Bool)

(declare-fun e!2834381 () Bool)

(assert (=> d!1407480 (=> res!1896452 e!2834381)))

(assert (=> d!1407480 (= res!1896452 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (= (_1!28960 (h!56711 (toList!4455 lm!1477))) lt!1720923)))))

(assert (=> d!1407480 (= (containsKey!1931 (toList!4455 lm!1477) lt!1720923) e!2834381)))

(declare-fun b!4548118 () Bool)

(declare-fun e!2834382 () Bool)

(assert (=> b!4548118 (= e!2834381 e!2834382)))

(declare-fun res!1896453 () Bool)

(assert (=> b!4548118 (=> (not res!1896453) (not e!2834382))))

(assert (=> b!4548118 (= res!1896453 (and (or (not ((_ is Cons!50816) (toList!4455 lm!1477))) (bvsle (_1!28960 (h!56711 (toList!4455 lm!1477))) lt!1720923)) ((_ is Cons!50816) (toList!4455 lm!1477)) (bvslt (_1!28960 (h!56711 (toList!4455 lm!1477))) lt!1720923)))))

(declare-fun b!4548119 () Bool)

(assert (=> b!4548119 (= e!2834382 (containsKey!1931 (t!357906 (toList!4455 lm!1477)) lt!1720923))))

(assert (= (and d!1407480 (not res!1896452)) b!4548118))

(assert (= (and b!4548118 res!1896453) b!4548119))

(declare-fun m!5320981 () Bool)

(assert (=> b!4548119 m!5320981))

(assert (=> d!1407326 d!1407480))

(declare-fun d!1407484 () Bool)

(declare-fun res!1896454 () Bool)

(declare-fun e!2834383 () Bool)

(assert (=> d!1407484 (=> res!1896454 e!2834383)))

(assert (=> d!1407484 (= res!1896454 (not ((_ is Cons!50815) (_2!28960 (h!56711 (toList!4455 lm!1477))))))))

(assert (=> d!1407484 (= (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lm!1477)))) e!2834383)))

(declare-fun b!4548120 () Bool)

(declare-fun e!2834384 () Bool)

(assert (=> b!4548120 (= e!2834383 e!2834384)))

(declare-fun res!1896455 () Bool)

(assert (=> b!4548120 (=> (not res!1896455) (not e!2834384))))

(assert (=> b!4548120 (= res!1896455 (not (containsKey!1927 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477)))) (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477))))))))))

(declare-fun b!4548121 () Bool)

(assert (=> b!4548121 (= e!2834384 (noDuplicateKeys!1224 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477))))))))

(assert (= (and d!1407484 (not res!1896454)) b!4548120))

(assert (= (and b!4548120 res!1896455) b!4548121))

(declare-fun m!5320983 () Bool)

(assert (=> b!4548120 m!5320983))

(declare-fun m!5320985 () Bool)

(assert (=> b!4548121 m!5320985))

(assert (=> bs!885378 d!1407484))

(declare-fun d!1407486 () Bool)

(declare-fun noDuplicatedKeys!283 (List!50939) Bool)

(assert (=> d!1407486 (= (invariantList!1058 (toList!4456 lt!1720945)) (noDuplicatedKeys!283 (toList!4456 lt!1720945)))))

(declare-fun bs!885510 () Bool)

(assert (= bs!885510 d!1407486))

(declare-fun m!5320987 () Bool)

(assert (=> bs!885510 m!5320987))

(assert (=> d!1407216 d!1407486))

(declare-fun d!1407488 () Bool)

(declare-fun res!1896456 () Bool)

(declare-fun e!2834385 () Bool)

(assert (=> d!1407488 (=> res!1896456 e!2834385)))

(assert (=> d!1407488 (= res!1896456 ((_ is Nil!50816) lt!1720918))))

(assert (=> d!1407488 (= (forall!10389 lt!1720918 lambda!177544) e!2834385)))

(declare-fun b!4548122 () Bool)

(declare-fun e!2834386 () Bool)

(assert (=> b!4548122 (= e!2834385 e!2834386)))

(declare-fun res!1896457 () Bool)

(assert (=> b!4548122 (=> (not res!1896457) (not e!2834386))))

(assert (=> b!4548122 (= res!1896457 (dynLambda!21244 lambda!177544 (h!56711 lt!1720918)))))

(declare-fun b!4548123 () Bool)

(assert (=> b!4548123 (= e!2834386 (forall!10389 (t!357906 lt!1720918) lambda!177544))))

(assert (= (and d!1407488 (not res!1896456)) b!4548122))

(assert (= (and b!4548122 res!1896457) b!4548123))

(declare-fun b_lambda!159053 () Bool)

(assert (=> (not b_lambda!159053) (not b!4548122)))

(declare-fun m!5320989 () Bool)

(assert (=> b!4548122 m!5320989))

(declare-fun m!5320991 () Bool)

(assert (=> b!4548123 m!5320991))

(assert (=> d!1407216 d!1407488))

(declare-fun d!1407490 () Bool)

(assert (=> d!1407490 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(declare-fun lt!1721514 () Unit!99681)

(declare-fun choose!30059 (List!50939 K!12200) Unit!99681)

(assert (=> d!1407490 (= lt!1721514 (choose!30059 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(assert (=> d!1407490 (invariantList!1058 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))

(assert (=> d!1407490 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287) lt!1721514)))

(declare-fun bs!885518 () Bool)

(assert (= bs!885518 d!1407490))

(assert (=> bs!885518 m!5320343))

(assert (=> bs!885518 m!5320343))

(assert (=> bs!885518 m!5320345))

(declare-fun m!5320993 () Bool)

(assert (=> bs!885518 m!5320993))

(assert (=> bs!885518 m!5320897))

(assert (=> b!4547608 d!1407490))

(declare-fun d!1407492 () Bool)

(assert (=> d!1407492 (= (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287)) (not (isEmpty!28768 (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))))

(declare-fun bs!885520 () Bool)

(assert (= bs!885520 d!1407492))

(assert (=> bs!885520 m!5320343))

(declare-fun m!5320995 () Bool)

(assert (=> bs!885520 m!5320995))

(assert (=> b!4547608 d!1407492))

(declare-fun b!4548127 () Bool)

(declare-fun e!2834388 () Option!11243)

(assert (=> b!4548127 (= e!2834388 None!11242)))

(declare-fun b!4548125 () Bool)

(declare-fun e!2834387 () Option!11243)

(assert (=> b!4548125 (= e!2834387 e!2834388)))

(declare-fun c!777035 () Bool)

(assert (=> b!4548125 (= c!777035 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (not (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) key!3287))))))

(declare-fun b!4548126 () Bool)

(assert (=> b!4548126 (= e!2834388 (getValueByKey!1175 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) key!3287))))

(declare-fun d!1407494 () Bool)

(declare-fun c!777034 () Bool)

(assert (=> d!1407494 (= c!777034 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) key!3287)))))

(assert (=> d!1407494 (= (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287) e!2834387)))

(declare-fun b!4548124 () Bool)

(assert (=> b!4548124 (= e!2834387 (Some!11242 (_2!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))))

(assert (= (and d!1407494 c!777034) b!4548124))

(assert (= (and d!1407494 (not c!777034)) b!4548125))

(assert (= (and b!4548125 c!777035) b!4548126))

(assert (= (and b!4548125 (not c!777035)) b!4548127))

(declare-fun m!5320997 () Bool)

(assert (=> b!4548126 m!5320997))

(assert (=> b!4547608 d!1407494))

(declare-fun d!1407496 () Bool)

(assert (=> d!1407496 (contains!13648 (getKeysList!506 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) key!3287)))

(declare-fun lt!1721517 () Unit!99681)

(declare-fun choose!30060 (List!50939 K!12200) Unit!99681)

(assert (=> d!1407496 (= lt!1721517 (choose!30060 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(assert (=> d!1407496 (invariantList!1058 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))

(assert (=> d!1407496 (= (lemmaInListThenGetKeysListContains!502 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287) lt!1721517)))

(declare-fun bs!885529 () Bool)

(assert (= bs!885529 d!1407496))

(assert (=> bs!885529 m!5320359))

(assert (=> bs!885529 m!5320359))

(declare-fun m!5321033 () Bool)

(assert (=> bs!885529 m!5321033))

(declare-fun m!5321037 () Bool)

(assert (=> bs!885529 m!5321037))

(assert (=> bs!885529 m!5320897))

(assert (=> b!4547608 d!1407496))

(declare-fun d!1407500 () Bool)

(declare-fun lt!1721518 () Bool)

(assert (=> d!1407500 (= lt!1721518 (select (content!8480 (toList!4455 lt!1721064)) lt!1720912))))

(declare-fun e!2834391 () Bool)

(assert (=> d!1407500 (= lt!1721518 e!2834391)))

(declare-fun res!1896459 () Bool)

(assert (=> d!1407500 (=> (not res!1896459) (not e!2834391))))

(assert (=> d!1407500 (= res!1896459 ((_ is Cons!50816) (toList!4455 lt!1721064)))))

(assert (=> d!1407500 (= (contains!13644 (toList!4455 lt!1721064) lt!1720912) lt!1721518)))

(declare-fun b!4548130 () Bool)

(declare-fun e!2834390 () Bool)

(assert (=> b!4548130 (= e!2834391 e!2834390)))

(declare-fun res!1896458 () Bool)

(assert (=> b!4548130 (=> res!1896458 e!2834390)))

(assert (=> b!4548130 (= res!1896458 (= (h!56711 (toList!4455 lt!1721064)) lt!1720912))))

(declare-fun b!4548131 () Bool)

(assert (=> b!4548131 (= e!2834390 (contains!13644 (t!357906 (toList!4455 lt!1721064)) lt!1720912))))

(assert (= (and d!1407500 res!1896459) b!4548130))

(assert (= (and b!4548130 (not res!1896458)) b!4548131))

(declare-fun m!5321039 () Bool)

(assert (=> d!1407500 m!5321039))

(declare-fun m!5321041 () Bool)

(assert (=> d!1407500 m!5321041))

(declare-fun m!5321043 () Bool)

(assert (=> b!4548131 m!5321043))

(assert (=> b!4547545 d!1407500))

(declare-fun d!1407502 () Bool)

(assert (=> d!1407502 (= (get!16730 (getValueByKey!1176 (toList!4455 lm!1477) hash!344)) (v!44983 (getValueByKey!1176 (toList!4455 lm!1477) hash!344)))))

(assert (=> d!1407330 d!1407502))

(declare-fun b!4548133 () Bool)

(declare-fun e!2834392 () Option!11244)

(declare-fun e!2834393 () Option!11244)

(assert (=> b!4548133 (= e!2834392 e!2834393)))

(declare-fun c!777038 () Bool)

(assert (=> b!4548133 (= c!777038 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (not (= (_1!28960 (h!56711 (toList!4455 lm!1477))) hash!344))))))

(declare-fun d!1407504 () Bool)

(declare-fun c!777037 () Bool)

(assert (=> d!1407504 (= c!777037 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (= (_1!28960 (h!56711 (toList!4455 lm!1477))) hash!344)))))

(assert (=> d!1407504 (= (getValueByKey!1176 (toList!4455 lm!1477) hash!344) e!2834392)))

(declare-fun b!4548134 () Bool)

(assert (=> b!4548134 (= e!2834393 (getValueByKey!1176 (t!357906 (toList!4455 lm!1477)) hash!344))))

(declare-fun b!4548132 () Bool)

(assert (=> b!4548132 (= e!2834392 (Some!11243 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(declare-fun b!4548135 () Bool)

(assert (=> b!4548135 (= e!2834393 None!11243)))

(assert (= (and d!1407504 c!777037) b!4548132))

(assert (= (and d!1407504 (not c!777037)) b!4548133))

(assert (= (and b!4548133 c!777038) b!4548134))

(assert (= (and b!4548133 (not c!777038)) b!4548135))

(declare-fun m!5321045 () Bool)

(assert (=> b!4548134 m!5321045))

(assert (=> d!1407330 d!1407504))

(declare-fun d!1407506 () Bool)

(declare-fun choose!30061 (Hashable!5619 K!12200) (_ BitVec 64))

(assert (=> d!1407506 (= (hash!2976 hashF!1107 key!3287) (choose!30061 hashF!1107 key!3287))))

(declare-fun bs!885543 () Bool)

(assert (= bs!885543 d!1407506))

(declare-fun m!5321055 () Bool)

(assert (=> bs!885543 m!5321055))

(assert (=> d!1407308 d!1407506))

(assert (=> d!1407234 d!1407472))

(declare-fun d!1407510 () Bool)

(declare-fun lt!1721521 () Bool)

(assert (=> d!1407510 (= lt!1721521 (select (content!8480 (toList!4455 lm!1477)) (tuple2!51333 hash!344 lt!1720920)))))

(declare-fun e!2834395 () Bool)

(assert (=> d!1407510 (= lt!1721521 e!2834395)))

(declare-fun res!1896461 () Bool)

(assert (=> d!1407510 (=> (not res!1896461) (not e!2834395))))

(assert (=> d!1407510 (= res!1896461 ((_ is Cons!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407510 (= (contains!13644 (toList!4455 lm!1477) (tuple2!51333 hash!344 lt!1720920)) lt!1721521)))

(declare-fun b!4548136 () Bool)

(declare-fun e!2834394 () Bool)

(assert (=> b!4548136 (= e!2834395 e!2834394)))

(declare-fun res!1896460 () Bool)

(assert (=> b!4548136 (=> res!1896460 e!2834394)))

(assert (=> b!4548136 (= res!1896460 (= (h!56711 (toList!4455 lm!1477)) (tuple2!51333 hash!344 lt!1720920)))))

(declare-fun b!4548137 () Bool)

(assert (=> b!4548137 (= e!2834394 (contains!13644 (t!357906 (toList!4455 lm!1477)) (tuple2!51333 hash!344 lt!1720920)))))

(assert (= (and d!1407510 res!1896461) b!4548136))

(assert (= (and b!4548136 (not res!1896460)) b!4548137))

(assert (=> d!1407510 m!5320319))

(declare-fun m!5321061 () Bool)

(assert (=> d!1407510 m!5321061))

(declare-fun m!5321063 () Bool)

(assert (=> b!4548137 m!5321063))

(assert (=> d!1407328 d!1407510))

(declare-fun d!1407516 () Bool)

(assert (=> d!1407516 (contains!13644 (toList!4455 lm!1477) (tuple2!51333 hash!344 lt!1720920))))

(assert (=> d!1407516 true))

(declare-fun _$14!1253 () Unit!99681)

(assert (=> d!1407516 (= (choose!30053 (toList!4455 lm!1477) hash!344 lt!1720920) _$14!1253)))

(declare-fun bs!885547 () Bool)

(assert (= bs!885547 d!1407516))

(assert (=> bs!885547 m!5320333))

(assert (=> d!1407328 d!1407516))

(declare-fun d!1407522 () Bool)

(declare-fun res!1896469 () Bool)

(declare-fun e!2834407 () Bool)

(assert (=> d!1407522 (=> res!1896469 e!2834407)))

(assert (=> d!1407522 (= res!1896469 (or ((_ is Nil!50816) (toList!4455 lm!1477)) ((_ is Nil!50816) (t!357906 (toList!4455 lm!1477)))))))

(assert (=> d!1407522 (= (isStrictlySorted!472 (toList!4455 lm!1477)) e!2834407)))

(declare-fun b!4548155 () Bool)

(declare-fun e!2834408 () Bool)

(assert (=> b!4548155 (= e!2834407 e!2834408)))

(declare-fun res!1896470 () Bool)

(assert (=> b!4548155 (=> (not res!1896470) (not e!2834408))))

(assert (=> b!4548155 (= res!1896470 (bvslt (_1!28960 (h!56711 (toList!4455 lm!1477))) (_1!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))))))

(declare-fun b!4548156 () Bool)

(assert (=> b!4548156 (= e!2834408 (isStrictlySorted!472 (t!357906 (toList!4455 lm!1477))))))

(assert (= (and d!1407522 (not res!1896469)) b!4548155))

(assert (= (and b!4548155 res!1896470) b!4548156))

(declare-fun m!5321073 () Bool)

(assert (=> b!4548156 m!5321073))

(assert (=> d!1407328 d!1407522))

(declare-fun bs!885567 () Bool)

(declare-fun b!4548160 () Bool)

(assert (= bs!885567 (and b!4548160 b!4547867)))

(declare-fun lambda!177700 () Int)

(assert (=> bs!885567 (= (= (extractMap!1280 (t!357906 lt!1720918)) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177700 lambda!177632))))

(declare-fun bs!885568 () Bool)

(assert (= bs!885568 (and b!4548160 d!1407214)))

(assert (=> bs!885568 (not (= lambda!177700 lambda!177534))))

(declare-fun bs!885570 () Bool)

(assert (= bs!885570 (and b!4548160 b!4547866)))

(assert (=> bs!885570 (= (= (extractMap!1280 (t!357906 lt!1720918)) lt!1721265) (= lambda!177700 lambda!177634))))

(assert (=> bs!885570 (= (= (extractMap!1280 (t!357906 lt!1720918)) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177700 lambda!177633))))

(declare-fun bs!885572 () Bool)

(assert (= bs!885572 (and b!4548160 d!1407372)))

(assert (=> bs!885572 (= (= (extractMap!1280 (t!357906 lt!1720918)) lt!1721272) (= lambda!177700 lambda!177635))))

(assert (=> b!4548160 true))

(declare-fun bs!885573 () Bool)

(declare-fun b!4548159 () Bool)

(assert (= bs!885573 (and b!4548159 b!4547867)))

(declare-fun lambda!177702 () Int)

(assert (=> bs!885573 (= (= (extractMap!1280 (t!357906 lt!1720918)) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177702 lambda!177632))))

(declare-fun bs!885574 () Bool)

(assert (= bs!885574 (and b!4548159 d!1407214)))

(assert (=> bs!885574 (not (= lambda!177702 lambda!177534))))

(declare-fun bs!885575 () Bool)

(assert (= bs!885575 (and b!4548159 b!4547866)))

(assert (=> bs!885575 (= (= (extractMap!1280 (t!357906 lt!1720918)) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177702 lambda!177633))))

(declare-fun bs!885576 () Bool)

(assert (= bs!885576 (and b!4548159 d!1407372)))

(assert (=> bs!885576 (= (= (extractMap!1280 (t!357906 lt!1720918)) lt!1721272) (= lambda!177702 lambda!177635))))

(assert (=> bs!885575 (= (= (extractMap!1280 (t!357906 lt!1720918)) lt!1721265) (= lambda!177702 lambda!177634))))

(declare-fun bs!885577 () Bool)

(assert (= bs!885577 (and b!4548159 b!4548160)))

(assert (=> bs!885577 (= lambda!177702 lambda!177700)))

(assert (=> b!4548159 true))

(declare-fun lambda!177703 () Int)

(declare-fun lt!1721546 () ListMap!3717)

(assert (=> bs!885573 (= (= lt!1721546 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177703 lambda!177632))))

(assert (=> bs!885574 (not (= lambda!177703 lambda!177534))))

(assert (=> b!4548159 (= (= lt!1721546 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177703 lambda!177702))))

(assert (=> bs!885575 (= (= lt!1721546 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177703 lambda!177633))))

(assert (=> bs!885576 (= (= lt!1721546 lt!1721272) (= lambda!177703 lambda!177635))))

(assert (=> bs!885575 (= (= lt!1721546 lt!1721265) (= lambda!177703 lambda!177634))))

(assert (=> bs!885577 (= (= lt!1721546 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177703 lambda!177700))))

(assert (=> b!4548159 true))

(declare-fun bs!885583 () Bool)

(declare-fun d!1407528 () Bool)

(assert (= bs!885583 (and d!1407528 b!4547867)))

(declare-fun lt!1721553 () ListMap!3717)

(declare-fun lambda!177705 () Int)

(assert (=> bs!885583 (= (= lt!1721553 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177705 lambda!177632))))

(declare-fun bs!885584 () Bool)

(assert (= bs!885584 (and d!1407528 d!1407214)))

(assert (=> bs!885584 (not (= lambda!177705 lambda!177534))))

(declare-fun bs!885585 () Bool)

(assert (= bs!885585 (and d!1407528 b!4548159)))

(assert (=> bs!885585 (= (= lt!1721553 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177705 lambda!177702))))

(declare-fun bs!885587 () Bool)

(assert (= bs!885587 (and d!1407528 d!1407372)))

(assert (=> bs!885587 (= (= lt!1721553 lt!1721272) (= lambda!177705 lambda!177635))))

(declare-fun bs!885589 () Bool)

(assert (= bs!885589 (and d!1407528 b!4547866)))

(assert (=> bs!885589 (= (= lt!1721553 lt!1721265) (= lambda!177705 lambda!177634))))

(declare-fun bs!885591 () Bool)

(assert (= bs!885591 (and d!1407528 b!4548160)))

(assert (=> bs!885591 (= (= lt!1721553 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177705 lambda!177700))))

(assert (=> bs!885589 (= (= lt!1721553 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177705 lambda!177633))))

(assert (=> bs!885585 (= (= lt!1721553 lt!1721546) (= lambda!177705 lambda!177703))))

(assert (=> d!1407528 true))

(declare-fun call!317201 () Bool)

(declare-fun c!777044 () Bool)

(declare-fun bm!317194 () Bool)

(declare-fun lt!1721564 () ListMap!3717)

(assert (=> bm!317194 (= call!317201 (forall!10391 (ite c!777044 (toList!4456 (extractMap!1280 (t!357906 lt!1720918))) (toList!4456 lt!1721564)) (ite c!777044 lambda!177700 lambda!177703)))))

(declare-fun b!4548157 () Bool)

(declare-fun e!2834410 () Bool)

(assert (=> b!4548157 (= e!2834410 (invariantList!1058 (toList!4456 lt!1721553)))))

(declare-fun b!4548158 () Bool)

(declare-fun e!2834409 () Bool)

(assert (=> b!4548158 (= e!2834409 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 lt!1720918))) lambda!177703))))

(declare-fun bm!317195 () Bool)

(declare-fun call!317200 () Unit!99681)

(assert (=> bm!317195 (= call!317200 (lemmaContainsAllItsOwnKeys!377 (extractMap!1280 (t!357906 lt!1720918))))))

(declare-fun e!2834411 () ListMap!3717)

(assert (=> b!4548159 (= e!2834411 lt!1721546)))

(assert (=> b!4548159 (= lt!1721564 (+!1637 (extractMap!1280 (t!357906 lt!1720918)) (h!56710 (_2!28960 (h!56711 lt!1720918)))))))

(assert (=> b!4548159 (= lt!1721546 (addToMapMapFromBucket!744 (t!357905 (_2!28960 (h!56711 lt!1720918))) (+!1637 (extractMap!1280 (t!357906 lt!1720918)) (h!56710 (_2!28960 (h!56711 lt!1720918))))))))

(declare-fun lt!1721561 () Unit!99681)

(assert (=> b!4548159 (= lt!1721561 call!317200)))

(declare-fun call!317199 () Bool)

(assert (=> b!4548159 call!317199))

(declare-fun lt!1721545 () Unit!99681)

(assert (=> b!4548159 (= lt!1721545 lt!1721561)))

(assert (=> b!4548159 (forall!10391 (toList!4456 lt!1721564) lambda!177703)))

(declare-fun lt!1721558 () Unit!99681)

(declare-fun Unit!99751 () Unit!99681)

(assert (=> b!4548159 (= lt!1721558 Unit!99751)))

(assert (=> b!4548159 (forall!10391 (t!357905 (_2!28960 (h!56711 lt!1720918))) lambda!177703)))

(declare-fun lt!1721560 () Unit!99681)

(declare-fun Unit!99752 () Unit!99681)

(assert (=> b!4548159 (= lt!1721560 Unit!99752)))

(declare-fun lt!1721547 () Unit!99681)

(declare-fun Unit!99753 () Unit!99681)

(assert (=> b!4548159 (= lt!1721547 Unit!99753)))

(declare-fun lt!1721556 () Unit!99681)

(assert (=> b!4548159 (= lt!1721556 (forallContained!2655 (toList!4456 lt!1721564) lambda!177703 (h!56710 (_2!28960 (h!56711 lt!1720918)))))))

(assert (=> b!4548159 (contains!13646 lt!1721564 (_1!28959 (h!56710 (_2!28960 (h!56711 lt!1720918)))))))

(declare-fun lt!1721548 () Unit!99681)

(declare-fun Unit!99754 () Unit!99681)

(assert (=> b!4548159 (= lt!1721548 Unit!99754)))

(assert (=> b!4548159 (contains!13646 lt!1721546 (_1!28959 (h!56710 (_2!28960 (h!56711 lt!1720918)))))))

(declare-fun lt!1721555 () Unit!99681)

(declare-fun Unit!99755 () Unit!99681)

(assert (=> b!4548159 (= lt!1721555 Unit!99755)))

(assert (=> b!4548159 (forall!10391 (_2!28960 (h!56711 lt!1720918)) lambda!177703)))

(declare-fun lt!1721554 () Unit!99681)

(declare-fun Unit!99756 () Unit!99681)

(assert (=> b!4548159 (= lt!1721554 Unit!99756)))

(assert (=> b!4548159 call!317201))

(declare-fun lt!1721559 () Unit!99681)

(declare-fun Unit!99757 () Unit!99681)

(assert (=> b!4548159 (= lt!1721559 Unit!99757)))

(declare-fun lt!1721544 () Unit!99681)

(declare-fun Unit!99758 () Unit!99681)

(assert (=> b!4548159 (= lt!1721544 Unit!99758)))

(declare-fun lt!1721557 () Unit!99681)

(assert (=> b!4548159 (= lt!1721557 (addForallContainsKeyThenBeforeAdding!377 (extractMap!1280 (t!357906 lt!1720918)) lt!1721546 (_1!28959 (h!56710 (_2!28960 (h!56711 lt!1720918)))) (_2!28959 (h!56710 (_2!28960 (h!56711 lt!1720918))))))))

(assert (=> b!4548159 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 lt!1720918))) lambda!177703)))

(declare-fun lt!1721549 () Unit!99681)

(assert (=> b!4548159 (= lt!1721549 lt!1721557)))

(assert (=> b!4548159 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 lt!1720918))) lambda!177703)))

(declare-fun lt!1721552 () Unit!99681)

(declare-fun Unit!99759 () Unit!99681)

(assert (=> b!4548159 (= lt!1721552 Unit!99759)))

(declare-fun res!1896473 () Bool)

(assert (=> b!4548159 (= res!1896473 (forall!10391 (_2!28960 (h!56711 lt!1720918)) lambda!177703))))

(assert (=> b!4548159 (=> (not res!1896473) (not e!2834409))))

(assert (=> b!4548159 e!2834409))

(declare-fun lt!1721563 () Unit!99681)

(declare-fun Unit!99760 () Unit!99681)

(assert (=> b!4548159 (= lt!1721563 Unit!99760)))

(assert (=> b!4548160 (= e!2834411 (extractMap!1280 (t!357906 lt!1720918)))))

(declare-fun lt!1721562 () Unit!99681)

(assert (=> b!4548160 (= lt!1721562 call!317200)))

(assert (=> b!4548160 call!317201))

(declare-fun lt!1721551 () Unit!99681)

(assert (=> b!4548160 (= lt!1721551 lt!1721562)))

(assert (=> b!4548160 call!317199))

(declare-fun lt!1721550 () Unit!99681)

(declare-fun Unit!99761 () Unit!99681)

(assert (=> b!4548160 (= lt!1721550 Unit!99761)))

(declare-fun bm!317196 () Bool)

(assert (=> bm!317196 (= call!317199 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 lt!1720918))) (ite c!777044 lambda!177700 lambda!177702)))))

(assert (=> d!1407528 e!2834410))

(declare-fun res!1896471 () Bool)

(assert (=> d!1407528 (=> (not res!1896471) (not e!2834410))))

(assert (=> d!1407528 (= res!1896471 (forall!10391 (_2!28960 (h!56711 lt!1720918)) lambda!177705))))

(assert (=> d!1407528 (= lt!1721553 e!2834411)))

(assert (=> d!1407528 (= c!777044 ((_ is Nil!50815) (_2!28960 (h!56711 lt!1720918))))))

(assert (=> d!1407528 (noDuplicateKeys!1224 (_2!28960 (h!56711 lt!1720918)))))

(assert (=> d!1407528 (= (addToMapMapFromBucket!744 (_2!28960 (h!56711 lt!1720918)) (extractMap!1280 (t!357906 lt!1720918))) lt!1721553)))

(declare-fun b!4548161 () Bool)

(declare-fun res!1896472 () Bool)

(assert (=> b!4548161 (=> (not res!1896472) (not e!2834410))))

(assert (=> b!4548161 (= res!1896472 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 lt!1720918))) lambda!177705))))

(assert (= (and d!1407528 c!777044) b!4548160))

(assert (= (and d!1407528 (not c!777044)) b!4548159))

(assert (= (and b!4548159 res!1896473) b!4548158))

(assert (= (or b!4548160 b!4548159) bm!317194))

(assert (= (or b!4548160 b!4548159) bm!317196))

(assert (= (or b!4548160 b!4548159) bm!317195))

(assert (= (and d!1407528 res!1896471) b!4548161))

(assert (= (and b!4548161 res!1896472) b!4548157))

(declare-fun m!5321075 () Bool)

(assert (=> b!4548159 m!5321075))

(assert (=> b!4548159 m!5320011))

(declare-fun m!5321077 () Bool)

(assert (=> b!4548159 m!5321077))

(declare-fun m!5321079 () Bool)

(assert (=> b!4548159 m!5321079))

(declare-fun m!5321083 () Bool)

(assert (=> b!4548159 m!5321083))

(declare-fun m!5321091 () Bool)

(assert (=> b!4548159 m!5321091))

(declare-fun m!5321093 () Bool)

(assert (=> b!4548159 m!5321093))

(declare-fun m!5321097 () Bool)

(assert (=> b!4548159 m!5321097))

(declare-fun m!5321101 () Bool)

(assert (=> b!4548159 m!5321101))

(declare-fun m!5321103 () Bool)

(assert (=> b!4548159 m!5321103))

(assert (=> b!4548159 m!5321103))

(assert (=> b!4548159 m!5321075))

(assert (=> b!4548159 m!5320011))

(assert (=> b!4548159 m!5321091))

(declare-fun m!5321111 () Bool)

(assert (=> b!4548159 m!5321111))

(declare-fun m!5321115 () Bool)

(assert (=> b!4548161 m!5321115))

(declare-fun m!5321119 () Bool)

(assert (=> bm!317194 m!5321119))

(declare-fun m!5321123 () Bool)

(assert (=> d!1407528 m!5321123))

(declare-fun m!5321125 () Bool)

(assert (=> d!1407528 m!5321125))

(declare-fun m!5321129 () Bool)

(assert (=> bm!317196 m!5321129))

(assert (=> bm!317195 m!5320011))

(declare-fun m!5321133 () Bool)

(assert (=> bm!317195 m!5321133))

(declare-fun m!5321135 () Bool)

(assert (=> b!4548157 m!5321135))

(assert (=> b!4548158 m!5321103))

(assert (=> b!4547389 d!1407528))

(declare-fun bs!885596 () Bool)

(declare-fun d!1407530 () Bool)

(assert (= bs!885596 (and d!1407530 d!1407226)))

(declare-fun lambda!177706 () Int)

(assert (=> bs!885596 (= lambda!177706 lambda!177545)))

(declare-fun bs!885598 () Bool)

(assert (= bs!885598 (and d!1407530 start!451856)))

(assert (=> bs!885598 (= lambda!177706 lambda!177531)))

(declare-fun bs!885599 () Bool)

(assert (= bs!885599 (and d!1407530 d!1407316)))

(assert (=> bs!885599 (= lambda!177706 lambda!177573)))

(declare-fun bs!885601 () Bool)

(assert (= bs!885601 (and d!1407530 d!1407278)))

(assert (=> bs!885601 (= lambda!177706 lambda!177565)))

(declare-fun bs!885603 () Bool)

(assert (= bs!885603 (and d!1407530 d!1407216)))

(assert (=> bs!885603 (= lambda!177706 lambda!177544)))

(declare-fun bs!885605 () Bool)

(assert (= bs!885605 (and d!1407530 d!1407302)))

(assert (=> bs!885605 (= lambda!177706 lambda!177568)))

(declare-fun bs!885607 () Bool)

(assert (= bs!885607 (and d!1407530 d!1407334)))

(assert (=> bs!885607 (= lambda!177706 lambda!177577)))

(declare-fun bs!885609 () Bool)

(assert (= bs!885609 (and d!1407530 d!1407320)))

(assert (=> bs!885609 (= lambda!177706 lambda!177576)))

(declare-fun bs!885611 () Bool)

(assert (= bs!885611 (and d!1407530 d!1407268)))

(assert (=> bs!885611 (= lambda!177706 lambda!177556)))

(declare-fun bs!885613 () Bool)

(assert (= bs!885613 (and d!1407530 d!1407314)))

(assert (=> bs!885613 (= lambda!177706 lambda!177572)))

(declare-fun bs!885615 () Bool)

(assert (= bs!885615 (and d!1407530 d!1407306)))

(assert (=> bs!885615 (not (= lambda!177706 lambda!177571))))

(declare-fun bs!885617 () Bool)

(assert (= bs!885617 (and d!1407530 d!1407402)))

(assert (=> bs!885617 (= lambda!177706 lambda!177636)))

(declare-fun lt!1721565 () ListMap!3717)

(assert (=> d!1407530 (invariantList!1058 (toList!4456 lt!1721565))))

(declare-fun e!2834412 () ListMap!3717)

(assert (=> d!1407530 (= lt!1721565 e!2834412)))

(declare-fun c!777045 () Bool)

(assert (=> d!1407530 (= c!777045 ((_ is Cons!50816) (t!357906 lt!1720918)))))

(assert (=> d!1407530 (forall!10389 (t!357906 lt!1720918) lambda!177706)))

(assert (=> d!1407530 (= (extractMap!1280 (t!357906 lt!1720918)) lt!1721565)))

(declare-fun b!4548162 () Bool)

(assert (=> b!4548162 (= e!2834412 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (t!357906 lt!1720918))) (extractMap!1280 (t!357906 (t!357906 lt!1720918)))))))

(declare-fun b!4548163 () Bool)

(assert (=> b!4548163 (= e!2834412 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407530 c!777045) b!4548162))

(assert (= (and d!1407530 (not c!777045)) b!4548163))

(declare-fun m!5321145 () Bool)

(assert (=> d!1407530 m!5321145))

(declare-fun m!5321147 () Bool)

(assert (=> d!1407530 m!5321147))

(declare-fun m!5321149 () Bool)

(assert (=> b!4548162 m!5321149))

(assert (=> b!4548162 m!5321149))

(declare-fun m!5321151 () Bool)

(assert (=> b!4548162 m!5321151))

(assert (=> b!4547389 d!1407530))

(declare-fun d!1407534 () Bool)

(declare-fun lt!1721567 () Bool)

(assert (=> d!1407534 (= lt!1721567 (select (content!8478 e!2834098) key!3287))))

(declare-fun e!2834415 () Bool)

(assert (=> d!1407534 (= lt!1721567 e!2834415)))

(declare-fun res!1896474 () Bool)

(assert (=> d!1407534 (=> (not res!1896474) (not e!2834415))))

(assert (=> d!1407534 (= res!1896474 ((_ is Cons!50818) e!2834098))))

(assert (=> d!1407534 (= (contains!13648 e!2834098 key!3287) lt!1721567)))

(declare-fun b!4548166 () Bool)

(declare-fun e!2834414 () Bool)

(assert (=> b!4548166 (= e!2834415 e!2834414)))

(declare-fun res!1896475 () Bool)

(assert (=> b!4548166 (=> res!1896475 e!2834414)))

(assert (=> b!4548166 (= res!1896475 (= (h!56715 e!2834098) key!3287))))

(declare-fun b!4548167 () Bool)

(assert (=> b!4548167 (= e!2834414 (contains!13648 (t!357908 e!2834098) key!3287))))

(assert (= (and d!1407534 res!1896474) b!4548166))

(assert (= (and b!4548166 (not res!1896475)) b!4548167))

(declare-fun m!5321161 () Bool)

(assert (=> d!1407534 m!5321161))

(declare-fun m!5321163 () Bool)

(assert (=> d!1407534 m!5321163))

(declare-fun m!5321165 () Bool)

(assert (=> b!4548167 m!5321165))

(assert (=> bm!317110 d!1407534))

(declare-fun d!1407538 () Bool)

(declare-fun res!1896476 () Bool)

(declare-fun e!2834416 () Bool)

(assert (=> d!1407538 (=> res!1896476 e!2834416)))

(assert (=> d!1407538 (= res!1896476 (not ((_ is Cons!50815) (_2!28960 lt!1720915))))))

(assert (=> d!1407538 (= (noDuplicateKeys!1224 (_2!28960 lt!1720915)) e!2834416)))

(declare-fun b!4548168 () Bool)

(declare-fun e!2834417 () Bool)

(assert (=> b!4548168 (= e!2834416 e!2834417)))

(declare-fun res!1896477 () Bool)

(assert (=> b!4548168 (=> (not res!1896477) (not e!2834417))))

(assert (=> b!4548168 (= res!1896477 (not (containsKey!1927 (t!357905 (_2!28960 lt!1720915)) (_1!28959 (h!56710 (_2!28960 lt!1720915))))))))

(declare-fun b!4548169 () Bool)

(assert (=> b!4548169 (= e!2834417 (noDuplicateKeys!1224 (t!357905 (_2!28960 lt!1720915))))))

(assert (= (and d!1407538 (not res!1896476)) b!4548168))

(assert (= (and b!4548168 res!1896477) b!4548169))

(declare-fun m!5321167 () Bool)

(assert (=> b!4548168 m!5321167))

(declare-fun m!5321169 () Bool)

(assert (=> b!4548169 m!5321169))

(assert (=> bs!885379 d!1407538))

(declare-fun d!1407540 () Bool)

(declare-fun res!1896478 () Bool)

(declare-fun e!2834418 () Bool)

(assert (=> d!1407540 (=> res!1896478 e!2834418)))

(assert (=> d!1407540 (= res!1896478 (and ((_ is Cons!50815) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= (_1!28959 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) key!3287)))))

(assert (=> d!1407540 (= (containsKey!1930 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287) e!2834418)))

(declare-fun b!4548170 () Bool)

(declare-fun e!2834419 () Bool)

(assert (=> b!4548170 (= e!2834418 e!2834419)))

(declare-fun res!1896479 () Bool)

(assert (=> b!4548170 (=> (not res!1896479) (not e!2834419))))

(assert (=> b!4548170 (= res!1896479 ((_ is Cons!50815) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))))

(declare-fun b!4548171 () Bool)

(assert (=> b!4548171 (= e!2834419 (containsKey!1930 (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) key!3287))))

(assert (= (and d!1407540 (not res!1896478)) b!4548170))

(assert (= (and b!4548170 res!1896479) b!4548171))

(declare-fun m!5321171 () Bool)

(assert (=> b!4548171 m!5321171))

(assert (=> b!4547613 d!1407540))

(declare-fun d!1407542 () Bool)

(assert (=> d!1407542 (containsKey!1930 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287)))

(declare-fun lt!1721568 () Unit!99681)

(assert (=> d!1407542 (= lt!1721568 (choose!30058 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287))))

(assert (=> d!1407542 (invariantList!1058 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))))

(assert (=> d!1407542 (= (lemmaInGetKeysListThenContainsKey!505 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))) key!3287) lt!1721568)))

(declare-fun bs!885622 () Bool)

(assert (= bs!885622 d!1407542))

(assert (=> bs!885622 m!5320351))

(declare-fun m!5321173 () Bool)

(assert (=> bs!885622 m!5321173))

(assert (=> bs!885622 m!5320897))

(assert (=> b!4547613 d!1407542))

(declare-fun d!1407544 () Bool)

(declare-fun res!1896489 () Bool)

(declare-fun e!2834432 () Bool)

(assert (=> d!1407544 (=> res!1896489 e!2834432)))

(assert (=> d!1407544 (= res!1896489 ((_ is Nil!50815) newBucket!178))))

(assert (=> d!1407544 (= (forall!10391 newBucket!178 lambda!177534) e!2834432)))

(declare-fun b!4548187 () Bool)

(declare-fun e!2834433 () Bool)

(assert (=> b!4548187 (= e!2834432 e!2834433)))

(declare-fun res!1896490 () Bool)

(assert (=> b!4548187 (=> (not res!1896490) (not e!2834433))))

(declare-fun dynLambda!21245 (Int tuple2!51330) Bool)

(assert (=> b!4548187 (= res!1896490 (dynLambda!21245 lambda!177534 (h!56710 newBucket!178)))))

(declare-fun b!4548188 () Bool)

(assert (=> b!4548188 (= e!2834433 (forall!10391 (t!357905 newBucket!178) lambda!177534))))

(assert (= (and d!1407544 (not res!1896489)) b!4548187))

(assert (= (and b!4548187 res!1896490) b!4548188))

(declare-fun b_lambda!159055 () Bool)

(assert (=> (not b_lambda!159055) (not b!4548187)))

(declare-fun m!5321189 () Bool)

(assert (=> b!4548187 m!5321189))

(declare-fun m!5321191 () Bool)

(assert (=> b!4548188 m!5321191))

(assert (=> d!1407214 d!1407544))

(declare-fun d!1407552 () Bool)

(declare-fun lt!1721574 () Bool)

(assert (=> d!1407552 (= lt!1721574 (select (content!8480 (toList!4455 lt!1721112)) lt!1720912))))

(declare-fun e!2834437 () Bool)

(assert (=> d!1407552 (= lt!1721574 e!2834437)))

(declare-fun res!1896493 () Bool)

(assert (=> d!1407552 (=> (not res!1896493) (not e!2834437))))

(assert (=> d!1407552 (= res!1896493 ((_ is Cons!50816) (toList!4455 lt!1721112)))))

(assert (=> d!1407552 (= (contains!13644 (toList!4455 lt!1721112) lt!1720912) lt!1721574)))

(declare-fun b!4548192 () Bool)

(declare-fun e!2834436 () Bool)

(assert (=> b!4548192 (= e!2834437 e!2834436)))

(declare-fun res!1896492 () Bool)

(assert (=> b!4548192 (=> res!1896492 e!2834436)))

(assert (=> b!4548192 (= res!1896492 (= (h!56711 (toList!4455 lt!1721112)) lt!1720912))))

(declare-fun b!4548193 () Bool)

(assert (=> b!4548193 (= e!2834436 (contains!13644 (t!357906 (toList!4455 lt!1721112)) lt!1720912))))

(assert (= (and d!1407552 res!1896493) b!4548192))

(assert (= (and b!4548192 (not res!1896492)) b!4548193))

(declare-fun m!5321201 () Bool)

(assert (=> d!1407552 m!5321201))

(declare-fun m!5321203 () Bool)

(assert (=> d!1407552 m!5321203))

(declare-fun m!5321205 () Bool)

(assert (=> b!4548193 m!5321205))

(assert (=> b!4547624 d!1407552))

(assert (=> d!1407312 d!1407522))

(declare-fun d!1407556 () Bool)

(declare-fun lt!1721575 () Bool)

(assert (=> d!1407556 (= lt!1721575 (select (content!8478 (keys!17701 (extractMap!1280 lt!1720918))) key!3287))))

(declare-fun e!2834439 () Bool)

(assert (=> d!1407556 (= lt!1721575 e!2834439)))

(declare-fun res!1896494 () Bool)

(assert (=> d!1407556 (=> (not res!1896494) (not e!2834439))))

(assert (=> d!1407556 (= res!1896494 ((_ is Cons!50818) (keys!17701 (extractMap!1280 lt!1720918))))))

(assert (=> d!1407556 (= (contains!13648 (keys!17701 (extractMap!1280 lt!1720918)) key!3287) lt!1721575)))

(declare-fun b!4548194 () Bool)

(declare-fun e!2834438 () Bool)

(assert (=> b!4548194 (= e!2834439 e!2834438)))

(declare-fun res!1896495 () Bool)

(assert (=> b!4548194 (=> res!1896495 e!2834438)))

(assert (=> b!4548194 (= res!1896495 (= (h!56715 (keys!17701 (extractMap!1280 lt!1720918))) key!3287))))

(declare-fun b!4548195 () Bool)

(assert (=> b!4548195 (= e!2834438 (contains!13648 (t!357908 (keys!17701 (extractMap!1280 lt!1720918))) key!3287))))

(assert (= (and d!1407556 res!1896494) b!4548194))

(assert (= (and b!4548194 (not res!1896495)) b!4548195))

(assert (=> d!1407556 m!5320157))

(declare-fun m!5321207 () Bool)

(assert (=> d!1407556 m!5321207))

(declare-fun m!5321209 () Bool)

(assert (=> d!1407556 m!5321209))

(declare-fun m!5321211 () Bool)

(assert (=> b!4548195 m!5321211))

(assert (=> b!4547490 d!1407556))

(assert (=> b!4547490 d!1407430))

(declare-fun d!1407558 () Bool)

(declare-fun lt!1721576 () Bool)

(assert (=> d!1407558 (= lt!1721576 (select (content!8480 (t!357906 (toList!4455 lm!1477))) lt!1720915))))

(declare-fun e!2834441 () Bool)

(assert (=> d!1407558 (= lt!1721576 e!2834441)))

(declare-fun res!1896497 () Bool)

(assert (=> d!1407558 (=> (not res!1896497) (not e!2834441))))

(assert (=> d!1407558 (= res!1896497 ((_ is Cons!50816) (t!357906 (toList!4455 lm!1477))))))

(assert (=> d!1407558 (= (contains!13644 (t!357906 (toList!4455 lm!1477)) lt!1720915) lt!1721576)))

(declare-fun b!4548196 () Bool)

(declare-fun e!2834440 () Bool)

(assert (=> b!4548196 (= e!2834441 e!2834440)))

(declare-fun res!1896496 () Bool)

(assert (=> b!4548196 (=> res!1896496 e!2834440)))

(assert (=> b!4548196 (= res!1896496 (= (h!56711 (t!357906 (toList!4455 lm!1477))) lt!1720915))))

(declare-fun b!4548197 () Bool)

(assert (=> b!4548197 (= e!2834440 (contains!13644 (t!357906 (t!357906 (toList!4455 lm!1477))) lt!1720915))))

(assert (= (and d!1407558 res!1896497) b!4548196))

(assert (= (and b!4548196 (not res!1896496)) b!4548197))

(declare-fun m!5321213 () Bool)

(assert (=> d!1407558 m!5321213))

(declare-fun m!5321215 () Bool)

(assert (=> d!1407558 m!5321215))

(declare-fun m!5321217 () Bool)

(assert (=> b!4548197 m!5321217))

(assert (=> b!4547593 d!1407558))

(declare-fun d!1407560 () Bool)

(declare-fun c!777053 () Bool)

(assert (=> d!1407560 (= c!777053 ((_ is Nil!50816) (toList!4455 lm!1477)))))

(declare-fun e!2834448 () (InoxSet tuple2!51332))

(assert (=> d!1407560 (= (content!8480 (toList!4455 lm!1477)) e!2834448)))

(declare-fun b!4548206 () Bool)

(assert (=> b!4548206 (= e!2834448 ((as const (Array tuple2!51332 Bool)) false))))

(declare-fun b!4548207 () Bool)

(assert (=> b!4548207 (= e!2834448 ((_ map or) (store ((as const (Array tuple2!51332 Bool)) false) (h!56711 (toList!4455 lm!1477)) true) (content!8480 (t!357906 (toList!4455 lm!1477)))))))

(assert (= (and d!1407560 c!777053) b!4548206))

(assert (= (and d!1407560 (not c!777053)) b!4548207))

(declare-fun m!5321229 () Bool)

(assert (=> b!4548207 m!5321229))

(assert (=> b!4548207 m!5321213))

(assert (=> d!1407324 d!1407560))

(declare-fun d!1407570 () Bool)

(declare-fun res!1896502 () Bool)

(declare-fun e!2834449 () Bool)

(assert (=> d!1407570 (=> res!1896502 e!2834449)))

(assert (=> d!1407570 (= res!1896502 (not ((_ is Cons!50815) (t!357905 newBucket!178))))))

(assert (=> d!1407570 (= (noDuplicateKeys!1224 (t!357905 newBucket!178)) e!2834449)))

(declare-fun b!4548208 () Bool)

(declare-fun e!2834450 () Bool)

(assert (=> b!4548208 (= e!2834449 e!2834450)))

(declare-fun res!1896503 () Bool)

(assert (=> b!4548208 (=> (not res!1896503) (not e!2834450))))

(assert (=> b!4548208 (= res!1896503 (not (containsKey!1927 (t!357905 (t!357905 newBucket!178)) (_1!28959 (h!56710 (t!357905 newBucket!178))))))))

(declare-fun b!4548209 () Bool)

(assert (=> b!4548209 (= e!2834450 (noDuplicateKeys!1224 (t!357905 (t!357905 newBucket!178))))))

(assert (= (and d!1407570 (not res!1896502)) b!4548208))

(assert (= (and b!4548208 res!1896503) b!4548209))

(declare-fun m!5321231 () Bool)

(assert (=> b!4548208 m!5321231))

(declare-fun m!5321233 () Bool)

(assert (=> b!4548209 m!5321233))

(assert (=> b!4547622 d!1407570))

(declare-fun bs!885625 () Bool)

(declare-fun b!4548218 () Bool)

(assert (= bs!885625 (and b!4548218 b!4548071)))

(declare-fun lambda!177708 () Int)

(assert (=> bs!885625 (= (= (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177708 lambda!177687))))

(declare-fun bs!885626 () Bool)

(assert (= bs!885626 (and b!4548218 b!4547701)))

(assert (=> bs!885626 (= (= (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177708 lambda!177600))))

(declare-fun bs!885627 () Bool)

(assert (= bs!885627 (and b!4548218 b!4548033)))

(assert (=> bs!885627 (= (= (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177708 lambda!177671))))

(declare-fun bs!885628 () Bool)

(assert (= bs!885628 (and b!4548218 b!4548073)))

(assert (=> bs!885628 (= (= (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (= lambda!177708 lambda!177685))))

(declare-fun bs!885629 () Bool)

(assert (= bs!885629 (and b!4548218 b!4548066)))

(assert (=> bs!885629 (= (= (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))) (= lambda!177708 lambda!177686))))

(assert (=> b!4548218 true))

(declare-fun bs!885630 () Bool)

(declare-fun b!4548211 () Bool)

(assert (= bs!885630 (and b!4548211 b!4548071)))

(declare-fun lambda!177709 () Int)

(assert (=> bs!885630 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177709 lambda!177687))))

(declare-fun bs!885631 () Bool)

(assert (= bs!885631 (and b!4548211 b!4547701)))

(assert (=> bs!885631 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177709 lambda!177600))))

(declare-fun bs!885632 () Bool)

(assert (= bs!885632 (and b!4548211 b!4548033)))

(assert (=> bs!885632 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177709 lambda!177671))))

(declare-fun bs!885633 () Bool)

(assert (= bs!885633 (and b!4548211 b!4548218)))

(assert (=> bs!885633 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (= lambda!177709 lambda!177708))))

(declare-fun bs!885634 () Bool)

(assert (= bs!885634 (and b!4548211 b!4548073)))

(assert (=> bs!885634 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (= lambda!177709 lambda!177685))))

(declare-fun bs!885635 () Bool)

(assert (= bs!885635 (and b!4548211 b!4548066)))

(assert (=> bs!885635 (= (= (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))) (= lambda!177709 lambda!177686))))

(assert (=> b!4548211 true))

(declare-fun bs!885636 () Bool)

(declare-fun b!4548216 () Bool)

(assert (= bs!885636 (and b!4548216 b!4548071)))

(declare-fun lambda!177710 () Int)

(assert (=> bs!885636 (= (= (toList!4456 (extractMap!1280 lt!1720918)) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177710 lambda!177687))))

(declare-fun bs!885637 () Bool)

(assert (= bs!885637 (and b!4548216 b!4547701)))

(assert (=> bs!885637 (= (= (toList!4456 (extractMap!1280 lt!1720918)) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177710 lambda!177600))))

(declare-fun bs!885638 () Bool)

(assert (= bs!885638 (and b!4548216 b!4548033)))

(assert (=> bs!885638 (= lambda!177710 lambda!177671)))

(declare-fun bs!885639 () Bool)

(assert (= bs!885639 (and b!4548216 b!4548218)))

(assert (=> bs!885639 (= (= (toList!4456 (extractMap!1280 lt!1720918)) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (= lambda!177710 lambda!177708))))

(declare-fun bs!885640 () Bool)

(assert (= bs!885640 (and b!4548216 b!4548073)))

(assert (=> bs!885640 (= (= (toList!4456 (extractMap!1280 lt!1720918)) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (= lambda!177710 lambda!177685))))

(declare-fun bs!885641 () Bool)

(assert (= bs!885641 (and b!4548216 b!4548066)))

(assert (=> bs!885641 (= (= (toList!4456 (extractMap!1280 lt!1720918)) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))) (= lambda!177710 lambda!177686))))

(declare-fun bs!885642 () Bool)

(assert (= bs!885642 (and b!4548216 b!4548211)))

(assert (=> bs!885642 (= (= (toList!4456 (extractMap!1280 lt!1720918)) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918))))) (= lambda!177710 lambda!177709))))

(assert (=> b!4548216 true))

(declare-fun bs!885644 () Bool)

(declare-fun b!4548213 () Bool)

(assert (= bs!885644 (and b!4548213 b!4547702)))

(declare-fun lambda!177711 () Int)

(assert (=> bs!885644 (= lambda!177711 lambda!177601)))

(declare-fun bs!885645 () Bool)

(assert (= bs!885645 (and b!4548213 b!4548034)))

(assert (=> bs!885645 (= lambda!177711 lambda!177672)))

(declare-fun bs!885646 () Bool)

(assert (= bs!885646 (and b!4548213 b!4548068)))

(assert (=> bs!885646 (= lambda!177711 lambda!177688)))

(declare-fun b!4548210 () Bool)

(declare-fun res!1896506 () Bool)

(declare-fun e!2834451 () Bool)

(assert (=> b!4548210 (=> (not res!1896506) (not e!2834451))))

(declare-fun lt!1721582 () List!50942)

(assert (=> b!4548210 (= res!1896506 (= (length!392 lt!1721582) (length!393 (toList!4456 (extractMap!1280 lt!1720918)))))))

(declare-fun e!2834453 () List!50942)

(assert (=> b!4548211 (= e!2834453 (Cons!50818 (_1!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918)))) (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 lt!1720918))))))))

(declare-fun c!777055 () Bool)

(assert (=> b!4548211 (= c!777055 (containsKey!1930 (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) (_1!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))))))))

(declare-fun lt!1721580 () Unit!99681)

(declare-fun e!2834452 () Unit!99681)

(assert (=> b!4548211 (= lt!1721580 e!2834452)))

(declare-fun c!777056 () Bool)

(assert (=> b!4548211 (= c!777056 (contains!13648 (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (_1!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))))))))

(declare-fun lt!1721581 () Unit!99681)

(declare-fun e!2834454 () Unit!99681)

(assert (=> b!4548211 (= lt!1721581 e!2834454)))

(declare-fun lt!1721579 () List!50942)

(assert (=> b!4548211 (= lt!1721579 (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))))))

(declare-fun lt!1721577 () Unit!99681)

(assert (=> b!4548211 (= lt!1721577 (lemmaForallContainsAddHeadPreserves!189 (t!357905 (toList!4456 (extractMap!1280 lt!1720918))) lt!1721579 (h!56710 (toList!4456 (extractMap!1280 lt!1720918)))))))

(assert (=> b!4548211 (forall!10393 lt!1721579 lambda!177709)))

(declare-fun lt!1721578 () Unit!99681)

(assert (=> b!4548211 (= lt!1721578 lt!1721577)))

(declare-fun b!4548212 () Bool)

(declare-fun Unit!99773 () Unit!99681)

(assert (=> b!4548212 (= e!2834454 Unit!99773)))

(declare-fun d!1407572 () Bool)

(assert (=> d!1407572 e!2834451))

(declare-fun res!1896505 () Bool)

(assert (=> d!1407572 (=> (not res!1896505) (not e!2834451))))

(assert (=> d!1407572 (= res!1896505 (noDuplicate!768 lt!1721582))))

(assert (=> d!1407572 (= lt!1721582 e!2834453)))

(declare-fun c!777054 () Bool)

(assert (=> d!1407572 (= c!777054 ((_ is Cons!50815) (toList!4456 (extractMap!1280 lt!1720918))))))

(assert (=> d!1407572 (invariantList!1058 (toList!4456 (extractMap!1280 lt!1720918)))))

(assert (=> d!1407572 (= (getKeysList!506 (toList!4456 (extractMap!1280 lt!1720918))) lt!1721582)))

(assert (=> b!4548213 (= e!2834451 (= (content!8478 lt!1721582) (content!8478 (map!11191 (toList!4456 (extractMap!1280 lt!1720918)) lambda!177711))))))

(declare-fun b!4548214 () Bool)

(declare-fun Unit!99774 () Unit!99681)

(assert (=> b!4548214 (= e!2834452 Unit!99774)))

(declare-fun b!4548215 () Bool)

(assert (=> b!4548215 false))

(declare-fun Unit!99775 () Unit!99681)

(assert (=> b!4548215 (= e!2834452 Unit!99775)))

(declare-fun res!1896504 () Bool)

(assert (=> b!4548216 (=> (not res!1896504) (not e!2834451))))

(assert (=> b!4548216 (= res!1896504 (forall!10393 lt!1721582 lambda!177710))))

(declare-fun b!4548217 () Bool)

(assert (=> b!4548217 (= e!2834453 Nil!50818)))

(assert (=> b!4548218 false))

(declare-fun lt!1721583 () Unit!99681)

(assert (=> b!4548218 (= lt!1721583 (forallContained!2657 (getKeysList!506 (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) lambda!177708 (_1!28959 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))))))))

(declare-fun Unit!99777 () Unit!99681)

(assert (=> b!4548218 (= e!2834454 Unit!99777)))

(assert (= (and d!1407572 c!777054) b!4548211))

(assert (= (and d!1407572 (not c!777054)) b!4548217))

(assert (= (and b!4548211 c!777055) b!4548215))

(assert (= (and b!4548211 (not c!777055)) b!4548214))

(assert (= (and b!4548211 c!777056) b!4548218))

(assert (= (and b!4548211 (not c!777056)) b!4548212))

(assert (= (and d!1407572 res!1896505) b!4548210))

(assert (= (and b!4548210 res!1896506) b!4548216))

(assert (= (and b!4548216 res!1896504) b!4548213))

(declare-fun m!5321245 () Bool)

(assert (=> b!4548216 m!5321245))

(declare-fun m!5321247 () Bool)

(assert (=> b!4548213 m!5321247))

(declare-fun m!5321249 () Bool)

(assert (=> b!4548213 m!5321249))

(assert (=> b!4548213 m!5321249))

(declare-fun m!5321251 () Bool)

(assert (=> b!4548213 m!5321251))

(declare-fun m!5321253 () Bool)

(assert (=> b!4548210 m!5321253))

(assert (=> b!4548210 m!5320809))

(declare-fun m!5321255 () Bool)

(assert (=> b!4548218 m!5321255))

(assert (=> b!4548218 m!5321255))

(declare-fun m!5321257 () Bool)

(assert (=> b!4548218 m!5321257))

(declare-fun m!5321259 () Bool)

(assert (=> d!1407572 m!5321259))

(assert (=> d!1407572 m!5320943))

(assert (=> b!4548211 m!5321255))

(declare-fun m!5321261 () Bool)

(assert (=> b!4548211 m!5321261))

(declare-fun m!5321263 () Bool)

(assert (=> b!4548211 m!5321263))

(assert (=> b!4548211 m!5321255))

(declare-fun m!5321265 () Bool)

(assert (=> b!4548211 m!5321265))

(declare-fun m!5321267 () Bool)

(assert (=> b!4548211 m!5321267))

(assert (=> b!4547494 d!1407572))

(declare-fun b!4548237 () Bool)

(declare-fun e!2834468 () Option!11244)

(declare-fun e!2834469 () Option!11244)

(assert (=> b!4548237 (= e!2834468 e!2834469)))

(declare-fun c!777061 () Bool)

(assert (=> b!4548237 (= c!777061 (and ((_ is Cons!50816) (toList!4455 lt!1721064)) (not (= (_1!28960 (h!56711 (toList!4455 lt!1721064))) (_1!28960 lt!1720912)))))))

(declare-fun d!1407582 () Bool)

(declare-fun c!777060 () Bool)

(assert (=> d!1407582 (= c!777060 (and ((_ is Cons!50816) (toList!4455 lt!1721064)) (= (_1!28960 (h!56711 (toList!4455 lt!1721064))) (_1!28960 lt!1720912))))))

(assert (=> d!1407582 (= (getValueByKey!1176 (toList!4455 lt!1721064) (_1!28960 lt!1720912)) e!2834468)))

(declare-fun b!4548238 () Bool)

(assert (=> b!4548238 (= e!2834469 (getValueByKey!1176 (t!357906 (toList!4455 lt!1721064)) (_1!28960 lt!1720912)))))

(declare-fun b!4548236 () Bool)

(assert (=> b!4548236 (= e!2834468 (Some!11243 (_2!28960 (h!56711 (toList!4455 lt!1721064)))))))

(declare-fun b!4548239 () Bool)

(assert (=> b!4548239 (= e!2834469 None!11243)))

(assert (= (and d!1407582 c!777060) b!4548236))

(assert (= (and d!1407582 (not c!777060)) b!4548237))

(assert (= (and b!4548237 c!777061) b!4548238))

(assert (= (and b!4548237 (not c!777061)) b!4548239))

(declare-fun m!5321269 () Bool)

(assert (=> b!4548238 m!5321269))

(assert (=> b!4547544 d!1407582))

(declare-fun d!1407584 () Bool)

(declare-fun res!1896518 () Bool)

(declare-fun e!2834470 () Bool)

(assert (=> d!1407584 (=> res!1896518 e!2834470)))

(assert (=> d!1407584 (= res!1896518 (and ((_ is Cons!50815) (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477))))) (= (_1!28959 (h!56710 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477)))))) key!3287)))))

(assert (=> d!1407584 (= (containsKey!1927 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477)))) key!3287) e!2834470)))

(declare-fun b!4548240 () Bool)

(declare-fun e!2834471 () Bool)

(assert (=> b!4548240 (= e!2834470 e!2834471)))

(declare-fun res!1896519 () Bool)

(assert (=> b!4548240 (=> (not res!1896519) (not e!2834471))))

(assert (=> b!4548240 (= res!1896519 ((_ is Cons!50815) (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477))))))))

(declare-fun b!4548241 () Bool)

(assert (=> b!4548241 (= e!2834471 (containsKey!1927 (t!357905 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477))))) key!3287))))

(assert (= (and d!1407584 (not res!1896518)) b!4548240))

(assert (= (and b!4548240 res!1896519) b!4548241))

(declare-fun m!5321271 () Bool)

(assert (=> b!4548241 m!5321271))

(assert (=> b!4547560 d!1407584))

(declare-fun d!1407586 () Bool)

(assert (=> d!1407586 (dynLambda!21244 lambda!177531 lt!1720915)))

(assert (=> d!1407586 true))

(declare-fun _$7!1966 () Unit!99681)

(assert (=> d!1407586 (= (choose!30051 (toList!4455 lm!1477) lambda!177531 lt!1720915) _$7!1966)))

(declare-fun b_lambda!159063 () Bool)

(assert (=> (not b_lambda!159063) (not d!1407586)))

(declare-fun bs!885665 () Bool)

(assert (= bs!885665 d!1407586))

(assert (=> bs!885665 m!5320303))

(assert (=> d!1407318 d!1407586))

(assert (=> d!1407318 d!1407310))

(assert (=> b!4547607 d!1407364))

(declare-fun bs!885673 () Bool)

(declare-fun b!4548245 () Bool)

(assert (= bs!885673 (and b!4548245 b!4547867)))

(declare-fun lambda!177714 () Int)

(assert (=> bs!885673 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177714 lambda!177632))))

(declare-fun bs!885676 () Bool)

(assert (= bs!885676 (and b!4548245 d!1407214)))

(assert (=> bs!885676 (not (= lambda!177714 lambda!177534))))

(declare-fun bs!885677 () Bool)

(assert (= bs!885677 (and b!4548245 b!4548159)))

(assert (=> bs!885677 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177714 lambda!177702))))

(declare-fun bs!885678 () Bool)

(assert (= bs!885678 (and b!4548245 d!1407528)))

(assert (=> bs!885678 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721553) (= lambda!177714 lambda!177705))))

(declare-fun bs!885679 () Bool)

(assert (= bs!885679 (and b!4548245 d!1407372)))

(assert (=> bs!885679 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721272) (= lambda!177714 lambda!177635))))

(declare-fun bs!885680 () Bool)

(assert (= bs!885680 (and b!4548245 b!4547866)))

(assert (=> bs!885680 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721265) (= lambda!177714 lambda!177634))))

(declare-fun bs!885681 () Bool)

(assert (= bs!885681 (and b!4548245 b!4548160)))

(assert (=> bs!885681 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177714 lambda!177700))))

(assert (=> bs!885680 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177714 lambda!177633))))

(assert (=> bs!885677 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721546) (= lambda!177714 lambda!177703))))

(assert (=> b!4548245 true))

(declare-fun bs!885682 () Bool)

(declare-fun b!4548244 () Bool)

(assert (= bs!885682 (and b!4548244 b!4547867)))

(declare-fun lambda!177716 () Int)

(assert (=> bs!885682 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177716 lambda!177632))))

(declare-fun bs!885683 () Bool)

(assert (= bs!885683 (and b!4548244 d!1407214)))

(assert (=> bs!885683 (not (= lambda!177716 lambda!177534))))

(declare-fun bs!885684 () Bool)

(assert (= bs!885684 (and b!4548244 b!4548245)))

(assert (=> bs!885684 (= lambda!177716 lambda!177714)))

(declare-fun bs!885685 () Bool)

(assert (= bs!885685 (and b!4548244 b!4548159)))

(assert (=> bs!885685 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177716 lambda!177702))))

(declare-fun bs!885686 () Bool)

(assert (= bs!885686 (and b!4548244 d!1407528)))

(assert (=> bs!885686 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721553) (= lambda!177716 lambda!177705))))

(declare-fun bs!885687 () Bool)

(assert (= bs!885687 (and b!4548244 d!1407372)))

(assert (=> bs!885687 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721272) (= lambda!177716 lambda!177635))))

(declare-fun bs!885688 () Bool)

(assert (= bs!885688 (and b!4548244 b!4547866)))

(assert (=> bs!885688 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721265) (= lambda!177716 lambda!177634))))

(declare-fun bs!885689 () Bool)

(assert (= bs!885689 (and b!4548244 b!4548160)))

(assert (=> bs!885689 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177716 lambda!177700))))

(assert (=> bs!885688 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177716 lambda!177633))))

(assert (=> bs!885685 (= (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721546) (= lambda!177716 lambda!177703))))

(assert (=> b!4548244 true))

(declare-fun lambda!177717 () Int)

(declare-fun lt!1721608 () ListMap!3717)

(assert (=> bs!885682 (= (= lt!1721608 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177717 lambda!177632))))

(assert (=> bs!885683 (not (= lambda!177717 lambda!177534))))

(assert (=> bs!885684 (= (= lt!1721608 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177717 lambda!177714))))

(assert (=> bs!885685 (= (= lt!1721608 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177717 lambda!177702))))

(assert (=> b!4548244 (= (= lt!1721608 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177717 lambda!177716))))

(assert (=> bs!885686 (= (= lt!1721608 lt!1721553) (= lambda!177717 lambda!177705))))

(assert (=> bs!885687 (= (= lt!1721608 lt!1721272) (= lambda!177717 lambda!177635))))

(assert (=> bs!885688 (= (= lt!1721608 lt!1721265) (= lambda!177717 lambda!177634))))

(assert (=> bs!885689 (= (= lt!1721608 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177717 lambda!177700))))

(assert (=> bs!885688 (= (= lt!1721608 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177717 lambda!177633))))

(assert (=> bs!885685 (= (= lt!1721608 lt!1721546) (= lambda!177717 lambda!177703))))

(assert (=> b!4548244 true))

(declare-fun bs!885700 () Bool)

(declare-fun d!1407588 () Bool)

(assert (= bs!885700 (and d!1407588 b!4547867)))

(declare-fun lt!1721615 () ListMap!3717)

(declare-fun lambda!177719 () Int)

(assert (=> bs!885700 (= (= lt!1721615 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177719 lambda!177632))))

(declare-fun bs!885702 () Bool)

(assert (= bs!885702 (and d!1407588 d!1407214)))

(assert (=> bs!885702 (not (= lambda!177719 lambda!177534))))

(declare-fun bs!885704 () Bool)

(assert (= bs!885704 (and d!1407588 b!4548245)))

(assert (=> bs!885704 (= (= lt!1721615 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177719 lambda!177714))))

(declare-fun bs!885706 () Bool)

(assert (= bs!885706 (and d!1407588 b!4548159)))

(assert (=> bs!885706 (= (= lt!1721615 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177719 lambda!177702))))

(declare-fun bs!885708 () Bool)

(assert (= bs!885708 (and d!1407588 b!4548244)))

(assert (=> bs!885708 (= (= lt!1721615 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177719 lambda!177716))))

(declare-fun bs!885710 () Bool)

(assert (= bs!885710 (and d!1407588 d!1407528)))

(assert (=> bs!885710 (= (= lt!1721615 lt!1721553) (= lambda!177719 lambda!177705))))

(declare-fun bs!885711 () Bool)

(assert (= bs!885711 (and d!1407588 d!1407372)))

(assert (=> bs!885711 (= (= lt!1721615 lt!1721272) (= lambda!177719 lambda!177635))))

(declare-fun bs!885712 () Bool)

(assert (= bs!885712 (and d!1407588 b!4547866)))

(assert (=> bs!885712 (= (= lt!1721615 lt!1721265) (= lambda!177719 lambda!177634))))

(declare-fun bs!885713 () Bool)

(assert (= bs!885713 (and d!1407588 b!4548160)))

(assert (=> bs!885713 (= (= lt!1721615 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177719 lambda!177700))))

(assert (=> bs!885708 (= (= lt!1721615 lt!1721608) (= lambda!177719 lambda!177717))))

(assert (=> bs!885712 (= (= lt!1721615 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177719 lambda!177633))))

(assert (=> bs!885706 (= (= lt!1721615 lt!1721546) (= lambda!177719 lambda!177703))))

(assert (=> d!1407588 true))

(declare-fun bm!317200 () Bool)

(declare-fun lt!1721626 () ListMap!3717)

(declare-fun c!777062 () Bool)

(declare-fun call!317207 () Bool)

(assert (=> bm!317200 (= call!317207 (forall!10391 (ite c!777062 (toList!4456 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (toList!4456 lt!1721626)) (ite c!777062 lambda!177714 lambda!177717)))))

(declare-fun b!4548242 () Bool)

(declare-fun e!2834473 () Bool)

(assert (=> b!4548242 (= e!2834473 (invariantList!1058 (toList!4456 lt!1721615)))))

(declare-fun b!4548243 () Bool)

(declare-fun e!2834472 () Bool)

(assert (=> b!4548243 (= e!2834472 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) lambda!177717))))

(declare-fun bm!317201 () Bool)

(declare-fun call!317206 () Unit!99681)

(assert (=> bm!317201 (= call!317206 (lemmaContainsAllItsOwnKeys!377 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))))))

(declare-fun e!2834474 () ListMap!3717)

(assert (=> b!4548244 (= e!2834474 lt!1721608)))

(assert (=> b!4548244 (= lt!1721626 (+!1637 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (h!56710 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))))))))

(assert (=> b!4548244 (= lt!1721608 (addToMapMapFromBucket!744 (t!357905 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))) (+!1637 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) (h!56710 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))))))))

(declare-fun lt!1721623 () Unit!99681)

(assert (=> b!4548244 (= lt!1721623 call!317206)))

(declare-fun call!317205 () Bool)

(assert (=> b!4548244 call!317205))

(declare-fun lt!1721607 () Unit!99681)

(assert (=> b!4548244 (= lt!1721607 lt!1721623)))

(assert (=> b!4548244 (forall!10391 (toList!4456 lt!1721626) lambda!177717)))

(declare-fun lt!1721620 () Unit!99681)

(declare-fun Unit!99788 () Unit!99681)

(assert (=> b!4548244 (= lt!1721620 Unit!99788)))

(assert (=> b!4548244 (forall!10391 (t!357905 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))) lambda!177717)))

(declare-fun lt!1721622 () Unit!99681)

(declare-fun Unit!99789 () Unit!99681)

(assert (=> b!4548244 (= lt!1721622 Unit!99789)))

(declare-fun lt!1721609 () Unit!99681)

(declare-fun Unit!99790 () Unit!99681)

(assert (=> b!4548244 (= lt!1721609 Unit!99790)))

(declare-fun lt!1721618 () Unit!99681)

(assert (=> b!4548244 (= lt!1721618 (forallContained!2655 (toList!4456 lt!1721626) lambda!177717 (h!56710 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))))))))

(assert (=> b!4548244 (contains!13646 lt!1721626 (_1!28959 (h!56710 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))))))))

(declare-fun lt!1721610 () Unit!99681)

(declare-fun Unit!99791 () Unit!99681)

(assert (=> b!4548244 (= lt!1721610 Unit!99791)))

(assert (=> b!4548244 (contains!13646 lt!1721608 (_1!28959 (h!56710 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))))))))

(declare-fun lt!1721617 () Unit!99681)

(declare-fun Unit!99792 () Unit!99681)

(assert (=> b!4548244 (= lt!1721617 Unit!99792)))

(assert (=> b!4548244 (forall!10391 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))) lambda!177717)))

(declare-fun lt!1721616 () Unit!99681)

(declare-fun Unit!99793 () Unit!99681)

(assert (=> b!4548244 (= lt!1721616 Unit!99793)))

(assert (=> b!4548244 call!317207))

(declare-fun lt!1721621 () Unit!99681)

(declare-fun Unit!99794 () Unit!99681)

(assert (=> b!4548244 (= lt!1721621 Unit!99794)))

(declare-fun lt!1721606 () Unit!99681)

(declare-fun Unit!99795 () Unit!99681)

(assert (=> b!4548244 (= lt!1721606 Unit!99795)))

(declare-fun lt!1721619 () Unit!99681)

(assert (=> b!4548244 (= lt!1721619 (addForallContainsKeyThenBeforeAdding!377 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721608 (_1!28959 (h!56710 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))))) (_2!28959 (h!56710 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))))))))

(assert (=> b!4548244 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) lambda!177717)))

(declare-fun lt!1721611 () Unit!99681)

(assert (=> b!4548244 (= lt!1721611 lt!1721619)))

(assert (=> b!4548244 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) lambda!177717)))

(declare-fun lt!1721614 () Unit!99681)

(declare-fun Unit!99796 () Unit!99681)

(assert (=> b!4548244 (= lt!1721614 Unit!99796)))

(declare-fun res!1896522 () Bool)

(assert (=> b!4548244 (= res!1896522 (forall!10391 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))) lambda!177717))))

(assert (=> b!4548244 (=> (not res!1896522) (not e!2834472))))

(assert (=> b!4548244 e!2834472))

(declare-fun lt!1721625 () Unit!99681)

(declare-fun Unit!99797 () Unit!99681)

(assert (=> b!4548244 (= lt!1721625 Unit!99797)))

(assert (=> b!4548245 (= e!2834474 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))))))

(declare-fun lt!1721624 () Unit!99681)

(assert (=> b!4548245 (= lt!1721624 call!317206)))

(assert (=> b!4548245 call!317207))

(declare-fun lt!1721613 () Unit!99681)

(assert (=> b!4548245 (= lt!1721613 lt!1721624)))

(assert (=> b!4548245 call!317205))

(declare-fun lt!1721612 () Unit!99681)

(declare-fun Unit!99798 () Unit!99681)

(assert (=> b!4548245 (= lt!1721612 Unit!99798)))

(declare-fun bm!317202 () Bool)

(assert (=> bm!317202 (= call!317205 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (ite c!777062 lambda!177714 lambda!177716)))))

(assert (=> d!1407588 e!2834473))

(declare-fun res!1896520 () Bool)

(assert (=> d!1407588 (=> (not res!1896520) (not e!2834473))))

(assert (=> d!1407588 (= res!1896520 (forall!10391 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))) lambda!177719))))

(assert (=> d!1407588 (= lt!1721615 e!2834474)))

(assert (=> d!1407588 (= c!777062 ((_ is Nil!50815) (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))))))

(assert (=> d!1407588 (noDuplicateKeys!1224 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))))))

(assert (=> d!1407588 (= (addToMapMapFromBucket!744 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477)))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) lt!1721615)))

(declare-fun b!4548246 () Bool)

(declare-fun res!1896521 () Bool)

(assert (=> b!4548246 (=> (not res!1896521) (not e!2834473))))

(assert (=> b!4548246 (= res!1896521 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) lambda!177719))))

(assert (= (and d!1407588 c!777062) b!4548245))

(assert (= (and d!1407588 (not c!777062)) b!4548244))

(assert (= (and b!4548244 res!1896522) b!4548243))

(assert (= (or b!4548245 b!4548244) bm!317200))

(assert (= (or b!4548245 b!4548244) bm!317202))

(assert (= (or b!4548245 b!4548244) bm!317201))

(assert (= (and d!1407588 res!1896520) b!4548246))

(assert (= (and b!4548246 res!1896521) b!4548242))

(declare-fun m!5321273 () Bool)

(assert (=> b!4548244 m!5321273))

(assert (=> b!4548244 m!5320299))

(declare-fun m!5321277 () Bool)

(assert (=> b!4548244 m!5321277))

(declare-fun m!5321279 () Bool)

(assert (=> b!4548244 m!5321279))

(declare-fun m!5321283 () Bool)

(assert (=> b!4548244 m!5321283))

(declare-fun m!5321289 () Bool)

(assert (=> b!4548244 m!5321289))

(declare-fun m!5321291 () Bool)

(assert (=> b!4548244 m!5321291))

(declare-fun m!5321295 () Bool)

(assert (=> b!4548244 m!5321295))

(declare-fun m!5321297 () Bool)

(assert (=> b!4548244 m!5321297))

(declare-fun m!5321301 () Bool)

(assert (=> b!4548244 m!5321301))

(assert (=> b!4548244 m!5321301))

(assert (=> b!4548244 m!5321273))

(assert (=> b!4548244 m!5320299))

(assert (=> b!4548244 m!5321289))

(declare-fun m!5321305 () Bool)

(assert (=> b!4548244 m!5321305))

(declare-fun m!5321309 () Bool)

(assert (=> b!4548246 m!5321309))

(declare-fun m!5321313 () Bool)

(assert (=> bm!317200 m!5321313))

(declare-fun m!5321315 () Bool)

(assert (=> d!1407588 m!5321315))

(declare-fun m!5321319 () Bool)

(assert (=> d!1407588 m!5321319))

(declare-fun m!5321321 () Bool)

(assert (=> bm!317202 m!5321321))

(assert (=> bm!317201 m!5320299))

(declare-fun m!5321323 () Bool)

(assert (=> bm!317201 m!5321323))

(declare-fun m!5321325 () Bool)

(assert (=> b!4548242 m!5321325))

(assert (=> b!4548243 m!5321301))

(assert (=> b!4547571 d!1407588))

(declare-fun bs!885714 () Bool)

(declare-fun d!1407590 () Bool)

(assert (= bs!885714 (and d!1407590 d!1407226)))

(declare-fun lambda!177720 () Int)

(assert (=> bs!885714 (= lambda!177720 lambda!177545)))

(declare-fun bs!885715 () Bool)

(assert (= bs!885715 (and d!1407590 start!451856)))

(assert (=> bs!885715 (= lambda!177720 lambda!177531)))

(declare-fun bs!885716 () Bool)

(assert (= bs!885716 (and d!1407590 d!1407530)))

(assert (=> bs!885716 (= lambda!177720 lambda!177706)))

(declare-fun bs!885717 () Bool)

(assert (= bs!885717 (and d!1407590 d!1407316)))

(assert (=> bs!885717 (= lambda!177720 lambda!177573)))

(declare-fun bs!885718 () Bool)

(assert (= bs!885718 (and d!1407590 d!1407278)))

(assert (=> bs!885718 (= lambda!177720 lambda!177565)))

(declare-fun bs!885719 () Bool)

(assert (= bs!885719 (and d!1407590 d!1407216)))

(assert (=> bs!885719 (= lambda!177720 lambda!177544)))

(declare-fun bs!885720 () Bool)

(assert (= bs!885720 (and d!1407590 d!1407302)))

(assert (=> bs!885720 (= lambda!177720 lambda!177568)))

(declare-fun bs!885722 () Bool)

(assert (= bs!885722 (and d!1407590 d!1407334)))

(assert (=> bs!885722 (= lambda!177720 lambda!177577)))

(declare-fun bs!885723 () Bool)

(assert (= bs!885723 (and d!1407590 d!1407320)))

(assert (=> bs!885723 (= lambda!177720 lambda!177576)))

(declare-fun bs!885725 () Bool)

(assert (= bs!885725 (and d!1407590 d!1407268)))

(assert (=> bs!885725 (= lambda!177720 lambda!177556)))

(declare-fun bs!885727 () Bool)

(assert (= bs!885727 (and d!1407590 d!1407314)))

(assert (=> bs!885727 (= lambda!177720 lambda!177572)))

(declare-fun bs!885729 () Bool)

(assert (= bs!885729 (and d!1407590 d!1407306)))

(assert (=> bs!885729 (not (= lambda!177720 lambda!177571))))

(declare-fun bs!885732 () Bool)

(assert (= bs!885732 (and d!1407590 d!1407402)))

(assert (=> bs!885732 (= lambda!177720 lambda!177636)))

(declare-fun lt!1721627 () ListMap!3717)

(assert (=> d!1407590 (invariantList!1058 (toList!4456 lt!1721627))))

(declare-fun e!2834475 () ListMap!3717)

(assert (=> d!1407590 (= lt!1721627 e!2834475)))

(declare-fun c!777063 () Bool)

(assert (=> d!1407590 (= c!777063 ((_ is Cons!50816) (t!357906 (t!357906 (toList!4455 lm!1477)))))))

(assert (=> d!1407590 (forall!10389 (t!357906 (t!357906 (toList!4455 lm!1477))) lambda!177720)))

(assert (=> d!1407590 (= (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477)))) lt!1721627)))

(declare-fun b!4548247 () Bool)

(assert (=> b!4548247 (= e!2834475 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (t!357906 (t!357906 (toList!4455 lm!1477))))) (extractMap!1280 (t!357906 (t!357906 (t!357906 (toList!4455 lm!1477)))))))))

(declare-fun b!4548248 () Bool)

(assert (=> b!4548248 (= e!2834475 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407590 c!777063) b!4548247))

(assert (= (and d!1407590 (not c!777063)) b!4548248))

(declare-fun m!5321343 () Bool)

(assert (=> d!1407590 m!5321343))

(declare-fun m!5321345 () Bool)

(assert (=> d!1407590 m!5321345))

(declare-fun m!5321347 () Bool)

(assert (=> b!4548247 m!5321347))

(assert (=> b!4548247 m!5321347))

(declare-fun m!5321349 () Bool)

(assert (=> b!4548247 m!5321349))

(assert (=> b!4547571 d!1407590))

(assert (=> d!1407332 d!1407540))

(declare-fun bs!885742 () Bool)

(declare-fun b!4548254 () Bool)

(assert (= bs!885742 (and b!4548254 b!4547867)))

(declare-fun lambda!177722 () Int)

(assert (=> bs!885742 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177722 lambda!177632))))

(declare-fun bs!885743 () Bool)

(assert (= bs!885743 (and b!4548254 d!1407214)))

(assert (=> bs!885743 (not (= lambda!177722 lambda!177534))))

(declare-fun bs!885744 () Bool)

(assert (= bs!885744 (and b!4548254 b!4548245)))

(assert (=> bs!885744 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177722 lambda!177714))))

(declare-fun bs!885745 () Bool)

(assert (= bs!885745 (and b!4548254 b!4548159)))

(assert (=> bs!885745 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177722 lambda!177702))))

(declare-fun bs!885746 () Bool)

(assert (= bs!885746 (and b!4548254 b!4548244)))

(assert (=> bs!885746 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177722 lambda!177716))))

(declare-fun bs!885747 () Bool)

(assert (= bs!885747 (and b!4548254 d!1407588)))

(assert (=> bs!885747 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721615) (= lambda!177722 lambda!177719))))

(declare-fun bs!885748 () Bool)

(assert (= bs!885748 (and b!4548254 d!1407528)))

(assert (=> bs!885748 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721553) (= lambda!177722 lambda!177705))))

(declare-fun bs!885749 () Bool)

(assert (= bs!885749 (and b!4548254 d!1407372)))

(assert (=> bs!885749 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721272) (= lambda!177722 lambda!177635))))

(declare-fun bs!885750 () Bool)

(assert (= bs!885750 (and b!4548254 b!4547866)))

(assert (=> bs!885750 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721265) (= lambda!177722 lambda!177634))))

(declare-fun bs!885751 () Bool)

(assert (= bs!885751 (and b!4548254 b!4548160)))

(assert (=> bs!885751 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177722 lambda!177700))))

(assert (=> bs!885746 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721608) (= lambda!177722 lambda!177717))))

(assert (=> bs!885750 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177722 lambda!177633))))

(assert (=> bs!885745 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721546) (= lambda!177722 lambda!177703))))

(assert (=> b!4548254 true))

(declare-fun bs!885752 () Bool)

(declare-fun b!4548253 () Bool)

(assert (= bs!885752 (and b!4548253 b!4547867)))

(declare-fun lambda!177723 () Int)

(assert (=> bs!885752 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177723 lambda!177632))))

(declare-fun bs!885753 () Bool)

(assert (= bs!885753 (and b!4548253 d!1407214)))

(assert (=> bs!885753 (not (= lambda!177723 lambda!177534))))

(declare-fun bs!885754 () Bool)

(assert (= bs!885754 (and b!4548253 b!4548245)))

(assert (=> bs!885754 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177723 lambda!177714))))

(declare-fun bs!885755 () Bool)

(assert (= bs!885755 (and b!4548253 b!4548159)))

(assert (=> bs!885755 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177723 lambda!177702))))

(declare-fun bs!885756 () Bool)

(assert (= bs!885756 (and b!4548253 b!4548244)))

(assert (=> bs!885756 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177723 lambda!177716))))

(declare-fun bs!885757 () Bool)

(assert (= bs!885757 (and b!4548253 d!1407588)))

(assert (=> bs!885757 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721615) (= lambda!177723 lambda!177719))))

(declare-fun bs!885758 () Bool)

(assert (= bs!885758 (and b!4548253 d!1407528)))

(assert (=> bs!885758 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721553) (= lambda!177723 lambda!177705))))

(declare-fun bs!885759 () Bool)

(assert (= bs!885759 (and b!4548253 b!4548254)))

(assert (=> bs!885759 (= lambda!177723 lambda!177722)))

(declare-fun bs!885760 () Bool)

(assert (= bs!885760 (and b!4548253 d!1407372)))

(assert (=> bs!885760 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721272) (= lambda!177723 lambda!177635))))

(declare-fun bs!885761 () Bool)

(assert (= bs!885761 (and b!4548253 b!4547866)))

(assert (=> bs!885761 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721265) (= lambda!177723 lambda!177634))))

(declare-fun bs!885762 () Bool)

(assert (= bs!885762 (and b!4548253 b!4548160)))

(assert (=> bs!885762 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177723 lambda!177700))))

(assert (=> bs!885756 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721608) (= lambda!177723 lambda!177717))))

(assert (=> bs!885761 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177723 lambda!177633))))

(assert (=> bs!885755 (= (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721546) (= lambda!177723 lambda!177703))))

(assert (=> b!4548253 true))

(declare-fun lt!1721631 () ListMap!3717)

(declare-fun lambda!177724 () Int)

(assert (=> bs!885752 (= (= lt!1721631 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177724 lambda!177632))))

(assert (=> bs!885753 (not (= lambda!177724 lambda!177534))))

(assert (=> bs!885754 (= (= lt!1721631 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177724 lambda!177714))))

(assert (=> bs!885755 (= (= lt!1721631 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177724 lambda!177702))))

(assert (=> bs!885756 (= (= lt!1721631 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177724 lambda!177716))))

(assert (=> bs!885757 (= (= lt!1721631 lt!1721615) (= lambda!177724 lambda!177719))))

(assert (=> bs!885758 (= (= lt!1721631 lt!1721553) (= lambda!177724 lambda!177705))))

(assert (=> bs!885759 (= (= lt!1721631 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177724 lambda!177722))))

(assert (=> bs!885760 (= (= lt!1721631 lt!1721272) (= lambda!177724 lambda!177635))))

(assert (=> b!4548253 (= (= lt!1721631 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177724 lambda!177723))))

(assert (=> bs!885761 (= (= lt!1721631 lt!1721265) (= lambda!177724 lambda!177634))))

(assert (=> bs!885762 (= (= lt!1721631 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177724 lambda!177700))))

(assert (=> bs!885756 (= (= lt!1721631 lt!1721608) (= lambda!177724 lambda!177717))))

(assert (=> bs!885761 (= (= lt!1721631 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177724 lambda!177633))))

(assert (=> bs!885755 (= (= lt!1721631 lt!1721546) (= lambda!177724 lambda!177703))))

(assert (=> b!4548253 true))

(declare-fun bs!885779 () Bool)

(declare-fun d!1407594 () Bool)

(assert (= bs!885779 (and d!1407594 b!4547867)))

(declare-fun lambda!177726 () Int)

(declare-fun lt!1721638 () ListMap!3717)

(assert (=> bs!885779 (= (= lt!1721638 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177726 lambda!177632))))

(declare-fun bs!885780 () Bool)

(assert (= bs!885780 (and d!1407594 d!1407214)))

(assert (=> bs!885780 (not (= lambda!177726 lambda!177534))))

(declare-fun bs!885781 () Bool)

(assert (= bs!885781 (and d!1407594 b!4548245)))

(assert (=> bs!885781 (= (= lt!1721638 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177726 lambda!177714))))

(declare-fun bs!885782 () Bool)

(assert (= bs!885782 (and d!1407594 b!4548253)))

(assert (=> bs!885782 (= (= lt!1721638 lt!1721631) (= lambda!177726 lambda!177724))))

(declare-fun bs!885783 () Bool)

(assert (= bs!885783 (and d!1407594 b!4548159)))

(assert (=> bs!885783 (= (= lt!1721638 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177726 lambda!177702))))

(declare-fun bs!885784 () Bool)

(assert (= bs!885784 (and d!1407594 b!4548244)))

(assert (=> bs!885784 (= (= lt!1721638 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177726 lambda!177716))))

(declare-fun bs!885785 () Bool)

(assert (= bs!885785 (and d!1407594 d!1407588)))

(assert (=> bs!885785 (= (= lt!1721638 lt!1721615) (= lambda!177726 lambda!177719))))

(declare-fun bs!885786 () Bool)

(assert (= bs!885786 (and d!1407594 d!1407528)))

(assert (=> bs!885786 (= (= lt!1721638 lt!1721553) (= lambda!177726 lambda!177705))))

(declare-fun bs!885787 () Bool)

(assert (= bs!885787 (and d!1407594 b!4548254)))

(assert (=> bs!885787 (= (= lt!1721638 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177726 lambda!177722))))

(declare-fun bs!885788 () Bool)

(assert (= bs!885788 (and d!1407594 d!1407372)))

(assert (=> bs!885788 (= (= lt!1721638 lt!1721272) (= lambda!177726 lambda!177635))))

(assert (=> bs!885782 (= (= lt!1721638 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177726 lambda!177723))))

(declare-fun bs!885789 () Bool)

(assert (= bs!885789 (and d!1407594 b!4547866)))

(assert (=> bs!885789 (= (= lt!1721638 lt!1721265) (= lambda!177726 lambda!177634))))

(declare-fun bs!885790 () Bool)

(assert (= bs!885790 (and d!1407594 b!4548160)))

(assert (=> bs!885790 (= (= lt!1721638 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177726 lambda!177700))))

(assert (=> bs!885784 (= (= lt!1721638 lt!1721608) (= lambda!177726 lambda!177717))))

(assert (=> bs!885789 (= (= lt!1721638 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177726 lambda!177633))))

(assert (=> bs!885783 (= (= lt!1721638 lt!1721546) (= lambda!177726 lambda!177703))))

(assert (=> d!1407594 true))

(declare-fun lt!1721649 () ListMap!3717)

(declare-fun call!317210 () Bool)

(declare-fun bm!317203 () Bool)

(declare-fun c!777065 () Bool)

(assert (=> bm!317203 (= call!317210 (forall!10391 (ite c!777065 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (toList!4456 lt!1721649)) (ite c!777065 lambda!177722 lambda!177724)))))

(declare-fun b!4548251 () Bool)

(declare-fun e!2834478 () Bool)

(assert (=> b!4548251 (= e!2834478 (invariantList!1058 (toList!4456 lt!1721638)))))

(declare-fun b!4548252 () Bool)

(declare-fun e!2834477 () Bool)

(assert (=> b!4548252 (= e!2834477 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) lambda!177724))))

(declare-fun bm!317204 () Bool)

(declare-fun call!317209 () Unit!99681)

(assert (=> bm!317204 (= call!317209 (lemmaContainsAllItsOwnKeys!377 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))))))

(declare-fun e!2834479 () ListMap!3717)

(assert (=> b!4548253 (= e!2834479 lt!1721631)))

(assert (=> b!4548253 (= lt!1721649 (+!1637 (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (h!56710 (_2!28960 (h!56711 (toList!4455 lt!1720913))))))))

(assert (=> b!4548253 (= lt!1721631 (addToMapMapFromBucket!744 (t!357905 (_2!28960 (h!56711 (toList!4455 lt!1720913)))) (+!1637 (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) (h!56710 (_2!28960 (h!56711 (toList!4455 lt!1720913)))))))))

(declare-fun lt!1721646 () Unit!99681)

(assert (=> b!4548253 (= lt!1721646 call!317209)))

(declare-fun call!317208 () Bool)

(assert (=> b!4548253 call!317208))

(declare-fun lt!1721630 () Unit!99681)

(assert (=> b!4548253 (= lt!1721630 lt!1721646)))

(assert (=> b!4548253 (forall!10391 (toList!4456 lt!1721649) lambda!177724)))

(declare-fun lt!1721643 () Unit!99681)

(declare-fun Unit!99810 () Unit!99681)

(assert (=> b!4548253 (= lt!1721643 Unit!99810)))

(assert (=> b!4548253 (forall!10391 (t!357905 (_2!28960 (h!56711 (toList!4455 lt!1720913)))) lambda!177724)))

(declare-fun lt!1721645 () Unit!99681)

(declare-fun Unit!99811 () Unit!99681)

(assert (=> b!4548253 (= lt!1721645 Unit!99811)))

(declare-fun lt!1721632 () Unit!99681)

(declare-fun Unit!99812 () Unit!99681)

(assert (=> b!4548253 (= lt!1721632 Unit!99812)))

(declare-fun lt!1721641 () Unit!99681)

(assert (=> b!4548253 (= lt!1721641 (forallContained!2655 (toList!4456 lt!1721649) lambda!177724 (h!56710 (_2!28960 (h!56711 (toList!4455 lt!1720913))))))))

(assert (=> b!4548253 (contains!13646 lt!1721649 (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lt!1720913))))))))

(declare-fun lt!1721633 () Unit!99681)

(declare-fun Unit!99813 () Unit!99681)

(assert (=> b!4548253 (= lt!1721633 Unit!99813)))

(assert (=> b!4548253 (contains!13646 lt!1721631 (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lt!1720913))))))))

(declare-fun lt!1721640 () Unit!99681)

(declare-fun Unit!99814 () Unit!99681)

(assert (=> b!4548253 (= lt!1721640 Unit!99814)))

(assert (=> b!4548253 (forall!10391 (_2!28960 (h!56711 (toList!4455 lt!1720913))) lambda!177724)))

(declare-fun lt!1721639 () Unit!99681)

(declare-fun Unit!99815 () Unit!99681)

(assert (=> b!4548253 (= lt!1721639 Unit!99815)))

(assert (=> b!4548253 call!317210))

(declare-fun lt!1721644 () Unit!99681)

(declare-fun Unit!99816 () Unit!99681)

(assert (=> b!4548253 (= lt!1721644 Unit!99816)))

(declare-fun lt!1721629 () Unit!99681)

(declare-fun Unit!99817 () Unit!99681)

(assert (=> b!4548253 (= lt!1721629 Unit!99817)))

(declare-fun lt!1721642 () Unit!99681)

(assert (=> b!4548253 (= lt!1721642 (addForallContainsKeyThenBeforeAdding!377 (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721631 (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lt!1720913))))) (_2!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lt!1720913)))))))))

(assert (=> b!4548253 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) lambda!177724)))

(declare-fun lt!1721634 () Unit!99681)

(assert (=> b!4548253 (= lt!1721634 lt!1721642)))

(assert (=> b!4548253 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) lambda!177724)))

(declare-fun lt!1721637 () Unit!99681)

(declare-fun Unit!99818 () Unit!99681)

(assert (=> b!4548253 (= lt!1721637 Unit!99818)))

(declare-fun res!1896525 () Bool)

(assert (=> b!4548253 (= res!1896525 (forall!10391 (_2!28960 (h!56711 (toList!4455 lt!1720913))) lambda!177724))))

(assert (=> b!4548253 (=> (not res!1896525) (not e!2834477))))

(assert (=> b!4548253 e!2834477))

(declare-fun lt!1721648 () Unit!99681)

(declare-fun Unit!99819 () Unit!99681)

(assert (=> b!4548253 (= lt!1721648 Unit!99819)))

(assert (=> b!4548254 (= e!2834479 (extractMap!1280 (t!357906 (toList!4455 lt!1720913))))))

(declare-fun lt!1721647 () Unit!99681)

(assert (=> b!4548254 (= lt!1721647 call!317209)))

(assert (=> b!4548254 call!317210))

(declare-fun lt!1721636 () Unit!99681)

(assert (=> b!4548254 (= lt!1721636 lt!1721647)))

(assert (=> b!4548254 call!317208))

(declare-fun lt!1721635 () Unit!99681)

(declare-fun Unit!99820 () Unit!99681)

(assert (=> b!4548254 (= lt!1721635 Unit!99820)))

(declare-fun bm!317205 () Bool)

(assert (=> bm!317205 (= call!317208 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (ite c!777065 lambda!177722 lambda!177723)))))

(assert (=> d!1407594 e!2834478))

(declare-fun res!1896523 () Bool)

(assert (=> d!1407594 (=> (not res!1896523) (not e!2834478))))

(assert (=> d!1407594 (= res!1896523 (forall!10391 (_2!28960 (h!56711 (toList!4455 lt!1720913))) lambda!177726))))

(assert (=> d!1407594 (= lt!1721638 e!2834479)))

(assert (=> d!1407594 (= c!777065 ((_ is Nil!50815) (_2!28960 (h!56711 (toList!4455 lt!1720913)))))))

(assert (=> d!1407594 (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lt!1720913))))))

(assert (=> d!1407594 (= (addToMapMapFromBucket!744 (_2!28960 (h!56711 (toList!4455 lt!1720913))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) lt!1721638)))

(declare-fun b!4548255 () Bool)

(declare-fun res!1896524 () Bool)

(assert (=> b!4548255 (=> (not res!1896524) (not e!2834478))))

(assert (=> b!4548255 (= res!1896524 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) lambda!177726))))

(assert (= (and d!1407594 c!777065) b!4548254))

(assert (= (and d!1407594 (not c!777065)) b!4548253))

(assert (= (and b!4548253 res!1896525) b!4548252))

(assert (= (or b!4548254 b!4548253) bm!317203))

(assert (= (or b!4548254 b!4548253) bm!317205))

(assert (= (or b!4548254 b!4548253) bm!317204))

(assert (= (and d!1407594 res!1896523) b!4548255))

(assert (= (and b!4548255 res!1896524) b!4548251))

(declare-fun m!5321389 () Bool)

(assert (=> b!4548253 m!5321389))

(assert (=> b!4548253 m!5320291))

(declare-fun m!5321391 () Bool)

(assert (=> b!4548253 m!5321391))

(declare-fun m!5321393 () Bool)

(assert (=> b!4548253 m!5321393))

(declare-fun m!5321395 () Bool)

(assert (=> b!4548253 m!5321395))

(declare-fun m!5321397 () Bool)

(assert (=> b!4548253 m!5321397))

(declare-fun m!5321399 () Bool)

(assert (=> b!4548253 m!5321399))

(declare-fun m!5321401 () Bool)

(assert (=> b!4548253 m!5321401))

(declare-fun m!5321403 () Bool)

(assert (=> b!4548253 m!5321403))

(declare-fun m!5321405 () Bool)

(assert (=> b!4548253 m!5321405))

(assert (=> b!4548253 m!5321405))

(assert (=> b!4548253 m!5321389))

(assert (=> b!4548253 m!5320291))

(assert (=> b!4548253 m!5321397))

(declare-fun m!5321407 () Bool)

(assert (=> b!4548253 m!5321407))

(declare-fun m!5321409 () Bool)

(assert (=> b!4548255 m!5321409))

(declare-fun m!5321411 () Bool)

(assert (=> bm!317203 m!5321411))

(declare-fun m!5321413 () Bool)

(assert (=> d!1407594 m!5321413))

(declare-fun m!5321415 () Bool)

(assert (=> d!1407594 m!5321415))

(declare-fun m!5321417 () Bool)

(assert (=> bm!317205 m!5321417))

(assert (=> bm!317204 m!5320291))

(declare-fun m!5321419 () Bool)

(assert (=> bm!317204 m!5321419))

(declare-fun m!5321421 () Bool)

(assert (=> b!4548251 m!5321421))

(assert (=> b!4548252 m!5321405))

(assert (=> b!4547569 d!1407594))

(declare-fun bs!885791 () Bool)

(declare-fun d!1407604 () Bool)

(assert (= bs!885791 (and d!1407604 d!1407226)))

(declare-fun lambda!177727 () Int)

(assert (=> bs!885791 (= lambda!177727 lambda!177545)))

(declare-fun bs!885792 () Bool)

(assert (= bs!885792 (and d!1407604 start!451856)))

(assert (=> bs!885792 (= lambda!177727 lambda!177531)))

(declare-fun bs!885793 () Bool)

(assert (= bs!885793 (and d!1407604 d!1407530)))

(assert (=> bs!885793 (= lambda!177727 lambda!177706)))

(declare-fun bs!885794 () Bool)

(assert (= bs!885794 (and d!1407604 d!1407316)))

(assert (=> bs!885794 (= lambda!177727 lambda!177573)))

(declare-fun bs!885795 () Bool)

(assert (= bs!885795 (and d!1407604 d!1407278)))

(assert (=> bs!885795 (= lambda!177727 lambda!177565)))

(declare-fun bs!885796 () Bool)

(assert (= bs!885796 (and d!1407604 d!1407590)))

(assert (=> bs!885796 (= lambda!177727 lambda!177720)))

(declare-fun bs!885797 () Bool)

(assert (= bs!885797 (and d!1407604 d!1407216)))

(assert (=> bs!885797 (= lambda!177727 lambda!177544)))

(declare-fun bs!885798 () Bool)

(assert (= bs!885798 (and d!1407604 d!1407302)))

(assert (=> bs!885798 (= lambda!177727 lambda!177568)))

(declare-fun bs!885799 () Bool)

(assert (= bs!885799 (and d!1407604 d!1407334)))

(assert (=> bs!885799 (= lambda!177727 lambda!177577)))

(declare-fun bs!885800 () Bool)

(assert (= bs!885800 (and d!1407604 d!1407320)))

(assert (=> bs!885800 (= lambda!177727 lambda!177576)))

(declare-fun bs!885801 () Bool)

(assert (= bs!885801 (and d!1407604 d!1407268)))

(assert (=> bs!885801 (= lambda!177727 lambda!177556)))

(declare-fun bs!885802 () Bool)

(assert (= bs!885802 (and d!1407604 d!1407314)))

(assert (=> bs!885802 (= lambda!177727 lambda!177572)))

(declare-fun bs!885803 () Bool)

(assert (= bs!885803 (and d!1407604 d!1407306)))

(assert (=> bs!885803 (not (= lambda!177727 lambda!177571))))

(declare-fun bs!885804 () Bool)

(assert (= bs!885804 (and d!1407604 d!1407402)))

(assert (=> bs!885804 (= lambda!177727 lambda!177636)))

(declare-fun lt!1721659 () ListMap!3717)

(assert (=> d!1407604 (invariantList!1058 (toList!4456 lt!1721659))))

(declare-fun e!2834489 () ListMap!3717)

(assert (=> d!1407604 (= lt!1721659 e!2834489)))

(declare-fun c!777072 () Bool)

(assert (=> d!1407604 (= c!777072 ((_ is Cons!50816) (t!357906 (toList!4455 lt!1720913))))))

(assert (=> d!1407604 (forall!10389 (t!357906 (toList!4455 lt!1720913)) lambda!177727)))

(assert (=> d!1407604 (= (extractMap!1280 (t!357906 (toList!4455 lt!1720913))) lt!1721659)))

(declare-fun b!4548271 () Bool)

(assert (=> b!4548271 (= e!2834489 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (t!357906 (toList!4455 lt!1720913)))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lt!1720913))))))))

(declare-fun b!4548272 () Bool)

(assert (=> b!4548272 (= e!2834489 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407604 c!777072) b!4548271))

(assert (= (and d!1407604 (not c!777072)) b!4548272))

(declare-fun m!5321423 () Bool)

(assert (=> d!1407604 m!5321423))

(declare-fun m!5321425 () Bool)

(assert (=> d!1407604 m!5321425))

(declare-fun m!5321427 () Bool)

(assert (=> b!4548271 m!5321427))

(assert (=> b!4548271 m!5321427))

(declare-fun m!5321429 () Bool)

(assert (=> b!4548271 m!5321429))

(assert (=> b!4547569 d!1407604))

(declare-fun d!1407606 () Bool)

(declare-fun isEmpty!28771 (Option!11244) Bool)

(assert (=> d!1407606 (= (isDefined!8516 (getValueByKey!1176 (toList!4455 lm!1477) lt!1720923)) (not (isEmpty!28771 (getValueByKey!1176 (toList!4455 lm!1477) lt!1720923))))))

(declare-fun bs!885805 () Bool)

(assert (= bs!885805 d!1407606))

(assert (=> bs!885805 m!5320329))

(declare-fun m!5321431 () Bool)

(assert (=> bs!885805 m!5321431))

(assert (=> b!4547602 d!1407606))

(declare-fun b!4548274 () Bool)

(declare-fun e!2834490 () Option!11244)

(declare-fun e!2834491 () Option!11244)

(assert (=> b!4548274 (= e!2834490 e!2834491)))

(declare-fun c!777074 () Bool)

(assert (=> b!4548274 (= c!777074 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (not (= (_1!28960 (h!56711 (toList!4455 lm!1477))) lt!1720923))))))

(declare-fun d!1407608 () Bool)

(declare-fun c!777073 () Bool)

(assert (=> d!1407608 (= c!777073 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (= (_1!28960 (h!56711 (toList!4455 lm!1477))) lt!1720923)))))

(assert (=> d!1407608 (= (getValueByKey!1176 (toList!4455 lm!1477) lt!1720923) e!2834490)))

(declare-fun b!4548275 () Bool)

(assert (=> b!4548275 (= e!2834491 (getValueByKey!1176 (t!357906 (toList!4455 lm!1477)) lt!1720923))))

(declare-fun b!4548273 () Bool)

(assert (=> b!4548273 (= e!2834490 (Some!11243 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(declare-fun b!4548276 () Bool)

(assert (=> b!4548276 (= e!2834491 None!11243)))

(assert (= (and d!1407608 c!777073) b!4548273))

(assert (= (and d!1407608 (not c!777073)) b!4548274))

(assert (= (and b!4548274 c!777074) b!4548275))

(assert (= (and b!4548274 (not c!777074)) b!4548276))

(declare-fun m!5321433 () Bool)

(assert (=> b!4548275 m!5321433))

(assert (=> b!4547602 d!1407608))

(declare-fun d!1407610 () Bool)

(assert (=> d!1407610 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(declare-fun lt!1721660 () Unit!99681)

(assert (=> d!1407610 (= lt!1721660 (choose!30059 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(assert (=> d!1407610 (invariantList!1058 (toList!4456 (extractMap!1280 lt!1720918)))))

(assert (=> d!1407610 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (toList!4456 (extractMap!1280 lt!1720918)) key!3287) lt!1721660)))

(declare-fun bs!885806 () Bool)

(assert (= bs!885806 d!1407610))

(assert (=> bs!885806 m!5320151))

(assert (=> bs!885806 m!5320151))

(assert (=> bs!885806 m!5320153))

(declare-fun m!5321435 () Bool)

(assert (=> bs!885806 m!5321435))

(assert (=> bs!885806 m!5320943))

(assert (=> b!4547492 d!1407610))

(assert (=> b!4547492 d!1407368))

(assert (=> b!4547492 d!1407370))

(declare-fun d!1407612 () Bool)

(assert (=> d!1407612 (contains!13648 (getKeysList!506 (toList!4456 (extractMap!1280 lt!1720918))) key!3287)))

(declare-fun lt!1721661 () Unit!99681)

(assert (=> d!1407612 (= lt!1721661 (choose!30060 (toList!4456 (extractMap!1280 lt!1720918)) key!3287))))

(assert (=> d!1407612 (invariantList!1058 (toList!4456 (extractMap!1280 lt!1720918)))))

(assert (=> d!1407612 (= (lemmaInListThenGetKeysListContains!502 (toList!4456 (extractMap!1280 lt!1720918)) key!3287) lt!1721661)))

(declare-fun bs!885807 () Bool)

(assert (= bs!885807 d!1407612))

(assert (=> bs!885807 m!5320187))

(assert (=> bs!885807 m!5320187))

(declare-fun m!5321437 () Bool)

(assert (=> bs!885807 m!5321437))

(declare-fun m!5321439 () Bool)

(assert (=> bs!885807 m!5321439))

(assert (=> bs!885807 m!5320943))

(assert (=> b!4547492 d!1407612))

(declare-fun d!1407614 () Bool)

(assert (=> d!1407614 (isDefined!8516 (getValueByKey!1176 (toList!4455 lm!1477) lt!1720923))))

(declare-fun lt!1721664 () Unit!99681)

(declare-fun choose!30064 (List!50940 (_ BitVec 64)) Unit!99681)

(assert (=> d!1407614 (= lt!1721664 (choose!30064 (toList!4455 lm!1477) lt!1720923))))

(declare-fun e!2834496 () Bool)

(assert (=> d!1407614 e!2834496))

(declare-fun res!1896533 () Bool)

(assert (=> d!1407614 (=> (not res!1896533) (not e!2834496))))

(assert (=> d!1407614 (= res!1896533 (isStrictlySorted!472 (toList!4455 lm!1477)))))

(assert (=> d!1407614 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1080 (toList!4455 lm!1477) lt!1720923) lt!1721664)))

(declare-fun b!4548281 () Bool)

(assert (=> b!4548281 (= e!2834496 (containsKey!1931 (toList!4455 lm!1477) lt!1720923))))

(assert (= (and d!1407614 res!1896533) b!4548281))

(assert (=> d!1407614 m!5320329))

(assert (=> d!1407614 m!5320329))

(assert (=> d!1407614 m!5320331))

(declare-fun m!5321445 () Bool)

(assert (=> d!1407614 m!5321445))

(assert (=> d!1407614 m!5320285))

(assert (=> b!4548281 m!5320325))

(assert (=> b!4547600 d!1407614))

(assert (=> b!4547600 d!1407606))

(assert (=> b!4547600 d!1407608))

(assert (=> b!4547575 d!1407324))

(declare-fun d!1407620 () Bool)

(declare-fun c!777077 () Bool)

(assert (=> d!1407620 (= c!777077 ((_ is Nil!50815) (toList!4456 (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)))))))

(declare-fun e!2834501 () (InoxSet tuple2!51330))

(assert (=> d!1407620 (= (content!8479 (toList!4456 (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)))) e!2834501)))

(declare-fun b!4548288 () Bool)

(assert (=> b!4548288 (= e!2834501 ((as const (Array tuple2!51330 Bool)) false))))

(declare-fun b!4548289 () Bool)

(assert (=> b!4548289 (= e!2834501 ((_ map or) (store ((as const (Array tuple2!51330 Bool)) false) (h!56710 (toList!4456 (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)))) true) (content!8479 (t!357905 (toList!4456 (extractMap!1280 (Cons!50816 lt!1720912 Nil!50816)))))))))

(assert (= (and d!1407620 c!777077) b!4548288))

(assert (= (and d!1407620 (not c!777077)) b!4548289))

(declare-fun m!5321451 () Bool)

(assert (=> b!4548289 m!5321451))

(declare-fun m!5321453 () Bool)

(assert (=> b!4548289 m!5321453))

(assert (=> d!1407276 d!1407620))

(declare-fun c!777078 () Bool)

(declare-fun d!1407626 () Bool)

(assert (=> d!1407626 (= c!777078 ((_ is Nil!50815) (toList!4456 (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287))))))

(declare-fun e!2834502 () (InoxSet tuple2!51330))

(assert (=> d!1407626 (= (content!8479 (toList!4456 (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287))) e!2834502)))

(declare-fun b!4548290 () Bool)

(assert (=> b!4548290 (= e!2834502 ((as const (Array tuple2!51330 Bool)) false))))

(declare-fun b!4548291 () Bool)

(assert (=> b!4548291 (= e!2834502 ((_ map or) (store ((as const (Array tuple2!51330 Bool)) false) (h!56710 (toList!4456 (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287))) true) (content!8479 (t!357905 (toList!4456 (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287))))))))

(assert (= (and d!1407626 c!777078) b!4548290))

(assert (= (and d!1407626 (not c!777078)) b!4548291))

(declare-fun m!5321455 () Bool)

(assert (=> b!4548291 m!5321455))

(declare-fun m!5321457 () Bool)

(assert (=> b!4548291 m!5321457))

(assert (=> d!1407276 d!1407626))

(declare-fun d!1407628 () Bool)

(assert (=> d!1407628 (= (invariantList!1058 (toList!4456 lt!1721074)) (noDuplicatedKeys!283 (toList!4456 lt!1721074)))))

(declare-fun bs!885810 () Bool)

(assert (= bs!885810 d!1407628))

(declare-fun m!5321459 () Bool)

(assert (=> bs!885810 m!5321459))

(assert (=> d!1407316 d!1407628))

(declare-fun d!1407630 () Bool)

(declare-fun res!1896540 () Bool)

(declare-fun e!2834507 () Bool)

(assert (=> d!1407630 (=> res!1896540 e!2834507)))

(assert (=> d!1407630 (= res!1896540 ((_ is Nil!50816) (t!357906 (toList!4455 lm!1477))))))

(assert (=> d!1407630 (= (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177573) e!2834507)))

(declare-fun b!4548294 () Bool)

(declare-fun e!2834508 () Bool)

(assert (=> b!4548294 (= e!2834507 e!2834508)))

(declare-fun res!1896541 () Bool)

(assert (=> b!4548294 (=> (not res!1896541) (not e!2834508))))

(assert (=> b!4548294 (= res!1896541 (dynLambda!21244 lambda!177573 (h!56711 (t!357906 (toList!4455 lm!1477)))))))

(declare-fun b!4548295 () Bool)

(assert (=> b!4548295 (= e!2834508 (forall!10389 (t!357906 (t!357906 (toList!4455 lm!1477))) lambda!177573))))

(assert (= (and d!1407630 (not res!1896540)) b!4548294))

(assert (= (and b!4548294 res!1896541) b!4548295))

(declare-fun b_lambda!159067 () Bool)

(assert (=> (not b_lambda!159067) (not b!4548294)))

(declare-fun m!5321461 () Bool)

(assert (=> b!4548294 m!5321461))

(declare-fun m!5321463 () Bool)

(assert (=> b!4548295 m!5321463))

(assert (=> d!1407316 d!1407630))

(assert (=> b!4547498 d!1407556))

(assert (=> b!4547498 d!1407430))

(declare-fun d!1407632 () Bool)

(declare-fun e!2834510 () Bool)

(assert (=> d!1407632 e!2834510))

(declare-fun res!1896542 () Bool)

(assert (=> d!1407632 (=> res!1896542 e!2834510)))

(declare-fun lt!1721669 () Bool)

(assert (=> d!1407632 (= res!1896542 (not lt!1721669))))

(declare-fun lt!1721668 () Bool)

(assert (=> d!1407632 (= lt!1721669 lt!1721668)))

(declare-fun lt!1721667 () Unit!99681)

(declare-fun e!2834509 () Unit!99681)

(assert (=> d!1407632 (= lt!1721667 e!2834509)))

(declare-fun c!777079 () Bool)

(assert (=> d!1407632 (= c!777079 lt!1721668)))

(assert (=> d!1407632 (= lt!1721668 (containsKey!1931 (toList!4455 lm!1477) (hash!2972 hashF!1107 key!3287)))))

(assert (=> d!1407632 (= (contains!13645 lm!1477 (hash!2972 hashF!1107 key!3287)) lt!1721669)))

(declare-fun b!4548298 () Bool)

(declare-fun lt!1721666 () Unit!99681)

(assert (=> b!4548298 (= e!2834509 lt!1721666)))

(assert (=> b!4548298 (= lt!1721666 (lemmaContainsKeyImpliesGetValueByKeyDefined!1080 (toList!4455 lm!1477) (hash!2972 hashF!1107 key!3287)))))

(assert (=> b!4548298 (isDefined!8516 (getValueByKey!1176 (toList!4455 lm!1477) (hash!2972 hashF!1107 key!3287)))))

(declare-fun b!4548299 () Bool)

(declare-fun Unit!99822 () Unit!99681)

(assert (=> b!4548299 (= e!2834509 Unit!99822)))

(declare-fun b!4548300 () Bool)

(assert (=> b!4548300 (= e!2834510 (isDefined!8516 (getValueByKey!1176 (toList!4455 lm!1477) (hash!2972 hashF!1107 key!3287))))))

(assert (= (and d!1407632 c!777079) b!4548298))

(assert (= (and d!1407632 (not c!777079)) b!4548299))

(assert (= (and d!1407632 (not res!1896542)) b!4548300))

(assert (=> d!1407632 m!5319951))

(declare-fun m!5321465 () Bool)

(assert (=> d!1407632 m!5321465))

(assert (=> b!4548298 m!5319951))

(declare-fun m!5321467 () Bool)

(assert (=> b!4548298 m!5321467))

(assert (=> b!4548298 m!5319951))

(declare-fun m!5321469 () Bool)

(assert (=> b!4548298 m!5321469))

(assert (=> b!4548298 m!5321469))

(declare-fun m!5321471 () Bool)

(assert (=> b!4548298 m!5321471))

(assert (=> b!4548300 m!5319951))

(assert (=> b!4548300 m!5321469))

(assert (=> b!4548300 m!5321469))

(assert (=> b!4548300 m!5321471))

(assert (=> d!1407320 d!1407632))

(assert (=> d!1407320 d!1407308))

(declare-fun d!1407634 () Bool)

(assert (=> d!1407634 (contains!13645 lm!1477 (hash!2972 hashF!1107 key!3287))))

(assert (=> d!1407634 true))

(declare-fun _$27!1296 () Unit!99681)

(assert (=> d!1407634 (= (choose!30052 lm!1477 key!3287 hashF!1107) _$27!1296)))

(declare-fun bs!885812 () Bool)

(assert (= bs!885812 d!1407634))

(assert (=> bs!885812 m!5319951))

(assert (=> bs!885812 m!5319951))

(assert (=> bs!885812 m!5320307))

(assert (=> d!1407320 d!1407634))

(declare-fun d!1407640 () Bool)

(declare-fun res!1896545 () Bool)

(declare-fun e!2834513 () Bool)

(assert (=> d!1407640 (=> res!1896545 e!2834513)))

(assert (=> d!1407640 (= res!1896545 ((_ is Nil!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407640 (= (forall!10389 (toList!4455 lm!1477) lambda!177576) e!2834513)))

(declare-fun b!4548303 () Bool)

(declare-fun e!2834514 () Bool)

(assert (=> b!4548303 (= e!2834513 e!2834514)))

(declare-fun res!1896546 () Bool)

(assert (=> b!4548303 (=> (not res!1896546) (not e!2834514))))

(assert (=> b!4548303 (= res!1896546 (dynLambda!21244 lambda!177576 (h!56711 (toList!4455 lm!1477))))))

(declare-fun b!4548304 () Bool)

(assert (=> b!4548304 (= e!2834514 (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177576))))

(assert (= (and d!1407640 (not res!1896545)) b!4548303))

(assert (= (and b!4548303 res!1896546) b!4548304))

(declare-fun b_lambda!159069 () Bool)

(assert (=> (not b_lambda!159069) (not b!4548303)))

(declare-fun m!5321477 () Bool)

(assert (=> b!4548303 m!5321477))

(declare-fun m!5321479 () Bool)

(assert (=> b!4548304 m!5321479))

(assert (=> d!1407320 d!1407640))

(declare-fun d!1407642 () Bool)

(declare-fun res!1896549 () Bool)

(declare-fun e!2834517 () Bool)

(assert (=> d!1407642 (=> res!1896549 e!2834517)))

(assert (=> d!1407642 (= res!1896549 ((_ is Nil!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407642 (= (forall!10389 (toList!4455 lm!1477) lambda!177571) e!2834517)))

(declare-fun b!4548307 () Bool)

(declare-fun e!2834518 () Bool)

(assert (=> b!4548307 (= e!2834517 e!2834518)))

(declare-fun res!1896550 () Bool)

(assert (=> b!4548307 (=> (not res!1896550) (not e!2834518))))

(assert (=> b!4548307 (= res!1896550 (dynLambda!21244 lambda!177571 (h!56711 (toList!4455 lm!1477))))))

(declare-fun b!4548308 () Bool)

(assert (=> b!4548308 (= e!2834518 (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177571))))

(assert (= (and d!1407642 (not res!1896549)) b!4548307))

(assert (= (and b!4548307 res!1896550) b!4548308))

(declare-fun b_lambda!159071 () Bool)

(assert (=> (not b_lambda!159071) (not b!4548307)))

(declare-fun m!5321481 () Bool)

(assert (=> b!4548307 m!5321481))

(declare-fun m!5321483 () Bool)

(assert (=> b!4548308 m!5321483))

(assert (=> d!1407306 d!1407642))

(assert (=> b!4547611 d!1407492))

(assert (=> b!4547611 d!1407494))

(declare-fun d!1407644 () Bool)

(declare-fun e!2834522 () Bool)

(assert (=> d!1407644 e!2834522))

(declare-fun res!1896553 () Bool)

(assert (=> d!1407644 (=> res!1896553 e!2834522)))

(declare-fun lt!1721673 () Bool)

(assert (=> d!1407644 (= res!1896553 (not lt!1721673))))

(declare-fun lt!1721672 () Bool)

(assert (=> d!1407644 (= lt!1721673 lt!1721672)))

(declare-fun lt!1721671 () Unit!99681)

(declare-fun e!2834521 () Unit!99681)

(assert (=> d!1407644 (= lt!1721671 e!2834521)))

(declare-fun c!777080 () Bool)

(assert (=> d!1407644 (= c!777080 lt!1721672)))

(assert (=> d!1407644 (= lt!1721672 (containsKey!1931 (toList!4455 lt!1721064) (_1!28960 lt!1720912)))))

(assert (=> d!1407644 (= (contains!13645 lt!1721064 (_1!28960 lt!1720912)) lt!1721673)))

(declare-fun b!4548311 () Bool)

(declare-fun lt!1721670 () Unit!99681)

(assert (=> b!4548311 (= e!2834521 lt!1721670)))

(assert (=> b!4548311 (= lt!1721670 (lemmaContainsKeyImpliesGetValueByKeyDefined!1080 (toList!4455 lt!1721064) (_1!28960 lt!1720912)))))

(assert (=> b!4548311 (isDefined!8516 (getValueByKey!1176 (toList!4455 lt!1721064) (_1!28960 lt!1720912)))))

(declare-fun b!4548312 () Bool)

(declare-fun Unit!99823 () Unit!99681)

(assert (=> b!4548312 (= e!2834521 Unit!99823)))

(declare-fun b!4548313 () Bool)

(assert (=> b!4548313 (= e!2834522 (isDefined!8516 (getValueByKey!1176 (toList!4455 lt!1721064) (_1!28960 lt!1720912))))))

(assert (= (and d!1407644 c!777080) b!4548311))

(assert (= (and d!1407644 (not c!777080)) b!4548312))

(assert (= (and d!1407644 (not res!1896553)) b!4548313))

(declare-fun m!5321485 () Bool)

(assert (=> d!1407644 m!5321485))

(declare-fun m!5321487 () Bool)

(assert (=> b!4548311 m!5321487))

(assert (=> b!4548311 m!5320255))

(assert (=> b!4548311 m!5320255))

(declare-fun m!5321489 () Bool)

(assert (=> b!4548311 m!5321489))

(assert (=> b!4548313 m!5320255))

(assert (=> b!4548313 m!5320255))

(assert (=> b!4548313 m!5321489))

(assert (=> d!1407296 d!1407644))

(declare-fun b!4548315 () Bool)

(declare-fun e!2834523 () Option!11244)

(declare-fun e!2834524 () Option!11244)

(assert (=> b!4548315 (= e!2834523 e!2834524)))

(declare-fun c!777082 () Bool)

(assert (=> b!4548315 (= c!777082 (and ((_ is Cons!50816) lt!1721065) (not (= (_1!28960 (h!56711 lt!1721065)) (_1!28960 lt!1720912)))))))

(declare-fun d!1407646 () Bool)

(declare-fun c!777081 () Bool)

(assert (=> d!1407646 (= c!777081 (and ((_ is Cons!50816) lt!1721065) (= (_1!28960 (h!56711 lt!1721065)) (_1!28960 lt!1720912))))))

(assert (=> d!1407646 (= (getValueByKey!1176 lt!1721065 (_1!28960 lt!1720912)) e!2834523)))

(declare-fun b!4548316 () Bool)

(assert (=> b!4548316 (= e!2834524 (getValueByKey!1176 (t!357906 lt!1721065) (_1!28960 lt!1720912)))))

(declare-fun b!4548314 () Bool)

(assert (=> b!4548314 (= e!2834523 (Some!11243 (_2!28960 (h!56711 lt!1721065))))))

(declare-fun b!4548317 () Bool)

(assert (=> b!4548317 (= e!2834524 None!11243)))

(assert (= (and d!1407646 c!777081) b!4548314))

(assert (= (and d!1407646 (not c!777081)) b!4548315))

(assert (= (and b!4548315 c!777082) b!4548316))

(assert (= (and b!4548315 (not c!777082)) b!4548317))

(declare-fun m!5321491 () Bool)

(assert (=> b!4548316 m!5321491))

(assert (=> d!1407296 d!1407646))

(declare-fun d!1407648 () Bool)

(assert (=> d!1407648 (= (getValueByKey!1176 lt!1721065 (_1!28960 lt!1720912)) (Some!11243 (_2!28960 lt!1720912)))))

(declare-fun lt!1721674 () Unit!99681)

(assert (=> d!1407648 (= lt!1721674 (choose!30054 lt!1721065 (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(declare-fun e!2834527 () Bool)

(assert (=> d!1407648 e!2834527))

(declare-fun res!1896556 () Bool)

(assert (=> d!1407648 (=> (not res!1896556) (not e!2834527))))

(assert (=> d!1407648 (= res!1896556 (isStrictlySorted!472 lt!1721065))))

(assert (=> d!1407648 (= (lemmaContainsTupThenGetReturnValue!736 lt!1721065 (_1!28960 lt!1720912) (_2!28960 lt!1720912)) lt!1721674)))

(declare-fun b!4548320 () Bool)

(declare-fun res!1896557 () Bool)

(assert (=> b!4548320 (=> (not res!1896557) (not e!2834527))))

(assert (=> b!4548320 (= res!1896557 (containsKey!1931 lt!1721065 (_1!28960 lt!1720912)))))

(declare-fun b!4548321 () Bool)

(assert (=> b!4548321 (= e!2834527 (contains!13644 lt!1721065 (tuple2!51333 (_1!28960 lt!1720912) (_2!28960 lt!1720912))))))

(assert (= (and d!1407648 res!1896556) b!4548320))

(assert (= (and b!4548320 res!1896557) b!4548321))

(assert (=> d!1407648 m!5320249))

(declare-fun m!5321495 () Bool)

(assert (=> d!1407648 m!5321495))

(declare-fun m!5321497 () Bool)

(assert (=> d!1407648 m!5321497))

(declare-fun m!5321499 () Bool)

(assert (=> b!4548320 m!5321499))

(declare-fun m!5321501 () Bool)

(assert (=> b!4548321 m!5321501))

(assert (=> d!1407296 d!1407648))

(declare-fun bm!317207 () Bool)

(declare-fun call!317213 () List!50940)

(declare-fun call!317212 () List!50940)

(assert (=> bm!317207 (= call!317213 call!317212)))

(declare-fun b!4548322 () Bool)

(declare-fun res!1896558 () Bool)

(declare-fun e!2834532 () Bool)

(assert (=> b!4548322 (=> (not res!1896558) (not e!2834532))))

(declare-fun lt!1721675 () List!50940)

(assert (=> b!4548322 (= res!1896558 (containsKey!1931 lt!1721675 (_1!28960 lt!1720912)))))

(declare-fun b!4548323 () Bool)

(assert (=> b!4548323 (= e!2834532 (contains!13644 lt!1721675 (tuple2!51333 (_1!28960 lt!1720912) (_2!28960 lt!1720912))))))

(declare-fun b!4548324 () Bool)

(declare-fun e!2834531 () List!50940)

(assert (=> b!4548324 (= e!2834531 call!317213)))

(declare-fun bm!317208 () Bool)

(declare-fun call!317214 () List!50940)

(assert (=> bm!317208 (= call!317212 call!317214)))

(declare-fun e!2834528 () List!50940)

(declare-fun b!4548325 () Bool)

(declare-fun c!777083 () Bool)

(declare-fun c!777084 () Bool)

(assert (=> b!4548325 (= e!2834528 (ite c!777084 (t!357906 (toList!4455 lm!1477)) (ite c!777083 (Cons!50816 (h!56711 (toList!4455 lm!1477)) (t!357906 (toList!4455 lm!1477))) Nil!50816)))))

(declare-fun b!4548326 () Bool)

(assert (=> b!4548326 (= e!2834528 (insertStrictlySorted!448 (t!357906 (toList!4455 lm!1477)) (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))

(declare-fun b!4548327 () Bool)

(assert (=> b!4548327 (= c!777083 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (bvsgt (_1!28960 (h!56711 (toList!4455 lm!1477))) (_1!28960 lt!1720912))))))

(declare-fun e!2834529 () List!50940)

(assert (=> b!4548327 (= e!2834529 e!2834531)))

(declare-fun b!4548328 () Bool)

(declare-fun e!2834530 () List!50940)

(assert (=> b!4548328 (= e!2834530 e!2834529)))

(assert (=> b!4548328 (= c!777084 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (= (_1!28960 (h!56711 (toList!4455 lm!1477))) (_1!28960 lt!1720912))))))

(declare-fun b!4548329 () Bool)

(assert (=> b!4548329 (= e!2834531 call!317213)))

(declare-fun b!4548330 () Bool)

(assert (=> b!4548330 (= e!2834529 call!317212)))

(declare-fun d!1407652 () Bool)

(assert (=> d!1407652 e!2834532))

(declare-fun res!1896559 () Bool)

(assert (=> d!1407652 (=> (not res!1896559) (not e!2834532))))

(assert (=> d!1407652 (= res!1896559 (isStrictlySorted!472 lt!1721675))))

(assert (=> d!1407652 (= lt!1721675 e!2834530)))

(declare-fun c!777086 () Bool)

(assert (=> d!1407652 (= c!777086 (and ((_ is Cons!50816) (toList!4455 lm!1477)) (bvslt (_1!28960 (h!56711 (toList!4455 lm!1477))) (_1!28960 lt!1720912))))))

(assert (=> d!1407652 (isStrictlySorted!472 (toList!4455 lm!1477))))

(assert (=> d!1407652 (= (insertStrictlySorted!448 (toList!4455 lm!1477) (_1!28960 lt!1720912) (_2!28960 lt!1720912)) lt!1721675)))

(declare-fun bm!317209 () Bool)

(assert (=> bm!317209 (= call!317214 ($colon$colon!978 e!2834528 (ite c!777086 (h!56711 (toList!4455 lm!1477)) (tuple2!51333 (_1!28960 lt!1720912) (_2!28960 lt!1720912)))))))

(declare-fun c!777085 () Bool)

(assert (=> bm!317209 (= c!777085 c!777086)))

(declare-fun b!4548331 () Bool)

(assert (=> b!4548331 (= e!2834530 call!317214)))

(assert (= (and d!1407652 c!777086) b!4548331))

(assert (= (and d!1407652 (not c!777086)) b!4548328))

(assert (= (and b!4548328 c!777084) b!4548330))

(assert (= (and b!4548328 (not c!777084)) b!4548327))

(assert (= (and b!4548327 c!777083) b!4548324))

(assert (= (and b!4548327 (not c!777083)) b!4548329))

(assert (= (or b!4548324 b!4548329) bm!317207))

(assert (= (or b!4548330 bm!317207) bm!317208))

(assert (= (or b!4548331 bm!317208) bm!317209))

(assert (= (and bm!317209 c!777085) b!4548326))

(assert (= (and bm!317209 (not c!777085)) b!4548325))

(assert (= (and d!1407652 res!1896559) b!4548322))

(assert (= (and b!4548322 res!1896558) b!4548323))

(declare-fun m!5321503 () Bool)

(assert (=> b!4548326 m!5321503))

(declare-fun m!5321505 () Bool)

(assert (=> b!4548323 m!5321505))

(declare-fun m!5321507 () Bool)

(assert (=> bm!317209 m!5321507))

(declare-fun m!5321509 () Bool)

(assert (=> b!4548322 m!5321509))

(declare-fun m!5321511 () Bool)

(assert (=> d!1407652 m!5321511))

(assert (=> d!1407652 m!5320285))

(assert (=> d!1407296 d!1407652))

(assert (=> b!4547605 d!1407504))

(assert (=> d!1407302 d!1407332))

(assert (=> d!1407302 d!1407334))

(declare-fun d!1407656 () Bool)

(assert (=> d!1407656 (not (contains!13646 (extractMap!1280 (toList!4455 lm!1477)) key!3287))))

(assert (=> d!1407656 true))

(declare-fun _$26!434 () Unit!99681)

(assert (=> d!1407656 (= (choose!30050 lm!1477 key!3287 hashF!1107) _$26!434)))

(declare-fun bs!885865 () Bool)

(assert (= bs!885865 d!1407656))

(assert (=> bs!885865 m!5319899))

(assert (=> bs!885865 m!5319899))

(assert (=> bs!885865 m!5319901))

(assert (=> d!1407302 d!1407656))

(declare-fun d!1407658 () Bool)

(declare-fun res!1896563 () Bool)

(declare-fun e!2834536 () Bool)

(assert (=> d!1407658 (=> res!1896563 e!2834536)))

(assert (=> d!1407658 (= res!1896563 ((_ is Nil!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407658 (= (forall!10389 (toList!4455 lm!1477) lambda!177568) e!2834536)))

(declare-fun b!4548337 () Bool)

(declare-fun e!2834537 () Bool)

(assert (=> b!4548337 (= e!2834536 e!2834537)))

(declare-fun res!1896564 () Bool)

(assert (=> b!4548337 (=> (not res!1896564) (not e!2834537))))

(assert (=> b!4548337 (= res!1896564 (dynLambda!21244 lambda!177568 (h!56711 (toList!4455 lm!1477))))))

(declare-fun b!4548338 () Bool)

(assert (=> b!4548338 (= e!2834537 (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177568))))

(assert (= (and d!1407658 (not res!1896563)) b!4548337))

(assert (= (and b!4548337 res!1896564) b!4548338))

(declare-fun b_lambda!159075 () Bool)

(assert (=> (not b_lambda!159075) (not b!4548337)))

(declare-fun m!5321513 () Bool)

(assert (=> b!4548337 m!5321513))

(declare-fun m!5321517 () Bool)

(assert (=> b!4548338 m!5321517))

(assert (=> d!1407302 d!1407658))

(declare-fun d!1407660 () Bool)

(assert (=> d!1407660 (= (invariantList!1058 (toList!4456 lt!1721110)) (noDuplicatedKeys!283 (toList!4456 lt!1721110)))))

(declare-fun bs!885866 () Bool)

(assert (= bs!885866 d!1407660))

(declare-fun m!5321527 () Bool)

(assert (=> bs!885866 m!5321527))

(assert (=> d!1407334 d!1407660))

(declare-fun d!1407662 () Bool)

(declare-fun res!1896565 () Bool)

(declare-fun e!2834538 () Bool)

(assert (=> d!1407662 (=> res!1896565 e!2834538)))

(assert (=> d!1407662 (= res!1896565 ((_ is Nil!50816) (toList!4455 lm!1477)))))

(assert (=> d!1407662 (= (forall!10389 (toList!4455 lm!1477) lambda!177577) e!2834538)))

(declare-fun b!4548339 () Bool)

(declare-fun e!2834539 () Bool)

(assert (=> b!4548339 (= e!2834538 e!2834539)))

(declare-fun res!1896566 () Bool)

(assert (=> b!4548339 (=> (not res!1896566) (not e!2834539))))

(assert (=> b!4548339 (= res!1896566 (dynLambda!21244 lambda!177577 (h!56711 (toList!4455 lm!1477))))))

(declare-fun b!4548340 () Bool)

(assert (=> b!4548340 (= e!2834539 (forall!10389 (t!357906 (toList!4455 lm!1477)) lambda!177577))))

(assert (= (and d!1407662 (not res!1896565)) b!4548339))

(assert (= (and b!4548339 res!1896566) b!4548340))

(declare-fun b_lambda!159077 () Bool)

(assert (=> (not b_lambda!159077) (not b!4548339)))

(declare-fun m!5321545 () Bool)

(assert (=> b!4548339 m!5321545))

(declare-fun m!5321547 () Bool)

(assert (=> b!4548340 m!5321547))

(assert (=> d!1407334 d!1407662))

(declare-fun d!1407664 () Bool)

(assert (=> d!1407664 (= (invariantList!1058 (toList!4456 lt!1720950)) (noDuplicatedKeys!283 (toList!4456 lt!1720950)))))

(declare-fun bs!885867 () Bool)

(assert (= bs!885867 d!1407664))

(declare-fun m!5321553 () Bool)

(assert (=> bs!885867 m!5321553))

(assert (=> d!1407226 d!1407664))

(declare-fun d!1407666 () Bool)

(declare-fun res!1896567 () Bool)

(declare-fun e!2834540 () Bool)

(assert (=> d!1407666 (=> res!1896567 e!2834540)))

(assert (=> d!1407666 (= res!1896567 ((_ is Nil!50816) (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))

(assert (=> d!1407666 (= (forall!10389 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816) lambda!177545) e!2834540)))

(declare-fun b!4548341 () Bool)

(declare-fun e!2834541 () Bool)

(assert (=> b!4548341 (= e!2834540 e!2834541)))

(declare-fun res!1896568 () Bool)

(assert (=> b!4548341 (=> (not res!1896568) (not e!2834541))))

(assert (=> b!4548341 (= res!1896568 (dynLambda!21244 lambda!177545 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))

(declare-fun b!4548342 () Bool)

(assert (=> b!4548342 (= e!2834541 (forall!10389 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) lambda!177545))))

(assert (= (and d!1407666 (not res!1896567)) b!4548341))

(assert (= (and b!4548341 res!1896568) b!4548342))

(declare-fun b_lambda!159079 () Bool)

(assert (=> (not b_lambda!159079) (not b!4548341)))

(declare-fun m!5321561 () Bool)

(assert (=> b!4548341 m!5321561))

(declare-fun m!5321563 () Bool)

(assert (=> b!4548342 m!5321563))

(assert (=> d!1407226 d!1407666))

(assert (=> b!4547614 d!1407360))

(assert (=> b!4547614 d!1407364))

(declare-fun b!4548345 () Bool)

(declare-fun e!2834546 () Bool)

(assert (=> b!4548345 (= e!2834546 (contains!13648 (keys!17701 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287))))

(declare-fun b!4548346 () Bool)

(declare-fun e!2834547 () List!50942)

(assert (=> b!4548346 (= e!2834547 (keys!17701 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))))))

(declare-fun d!1407670 () Bool)

(declare-fun e!2834548 () Bool)

(assert (=> d!1407670 e!2834548))

(declare-fun res!1896570 () Bool)

(assert (=> d!1407670 (=> res!1896570 e!2834548)))

(declare-fun e!2834545 () Bool)

(assert (=> d!1407670 (= res!1896570 e!2834545)))

(declare-fun res!1896569 () Bool)

(assert (=> d!1407670 (=> (not res!1896569) (not e!2834545))))

(declare-fun lt!1721705 () Bool)

(assert (=> d!1407670 (= res!1896569 (not lt!1721705))))

(declare-fun lt!1721700 () Bool)

(assert (=> d!1407670 (= lt!1721705 lt!1721700)))

(declare-fun lt!1721704 () Unit!99681)

(declare-fun e!2834543 () Unit!99681)

(assert (=> d!1407670 (= lt!1721704 e!2834543)))

(declare-fun c!777090 () Bool)

(assert (=> d!1407670 (= c!777090 lt!1721700)))

(assert (=> d!1407670 (= lt!1721700 (containsKey!1930 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287))))

(assert (=> d!1407670 (= (contains!13646 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918))) key!3287) lt!1721705)))

(declare-fun b!4548347 () Bool)

(declare-fun lt!1721702 () Unit!99681)

(assert (=> b!4548347 (= e!2834543 lt!1721702)))

(declare-fun lt!1721701 () Unit!99681)

(assert (=> b!4548347 (= lt!1721701 (lemmaContainsKeyImpliesGetValueByKeyDefined!1079 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287))))

(assert (=> b!4548347 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287))))

(declare-fun lt!1721703 () Unit!99681)

(assert (=> b!4548347 (= lt!1721703 lt!1721701)))

(assert (=> b!4548347 (= lt!1721702 (lemmaInListThenGetKeysListContains!502 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287))))

(declare-fun call!317218 () Bool)

(assert (=> b!4548347 call!317218))

(declare-fun b!4548348 () Bool)

(declare-fun e!2834544 () Unit!99681)

(assert (=> b!4548348 (= e!2834543 e!2834544)))

(declare-fun c!777089 () Bool)

(assert (=> b!4548348 (= c!777089 call!317218)))

(declare-fun b!4548349 () Bool)

(assert (=> b!4548349 (= e!2834547 (getKeysList!506 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918))))))))

(declare-fun b!4548350 () Bool)

(assert (=> b!4548350 (= e!2834548 e!2834546)))

(declare-fun res!1896571 () Bool)

(assert (=> b!4548350 (=> (not res!1896571) (not e!2834546))))

(assert (=> b!4548350 (= res!1896571 (isDefined!8515 (getValueByKey!1175 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287)))))

(declare-fun b!4548351 () Bool)

(declare-fun Unit!99835 () Unit!99681)

(assert (=> b!4548351 (= e!2834544 Unit!99835)))

(declare-fun b!4548352 () Bool)

(assert (=> b!4548352 false))

(declare-fun lt!1721699 () Unit!99681)

(declare-fun lt!1721698 () Unit!99681)

(assert (=> b!4548352 (= lt!1721699 lt!1721698)))

(assert (=> b!4548352 (containsKey!1930 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287)))

(assert (=> b!4548352 (= lt!1721698 (lemmaInGetKeysListThenContainsKey!505 (toList!4456 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287))))

(declare-fun Unit!99836 () Unit!99681)

(assert (=> b!4548352 (= e!2834544 Unit!99836)))

(declare-fun b!4548353 () Bool)

(assert (=> b!4548353 (= e!2834545 (not (contains!13648 (keys!17701 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918)))) key!3287)))))

(declare-fun bm!317213 () Bool)

(assert (=> bm!317213 (= call!317218 (contains!13648 e!2834547 key!3287))))

(declare-fun c!777091 () Bool)

(assert (=> bm!317213 (= c!777091 c!777090)))

(assert (= (and d!1407670 c!777090) b!4548347))

(assert (= (and d!1407670 (not c!777090)) b!4548348))

(assert (= (and b!4548348 c!777089) b!4548352))

(assert (= (and b!4548348 (not c!777089)) b!4548351))

(assert (= (or b!4548347 b!4548348) bm!317213))

(assert (= (and bm!317213 c!777091) b!4548349))

(assert (= (and bm!317213 (not c!777091)) b!4548346))

(assert (= (and d!1407670 res!1896569) b!4548353))

(assert (= (and d!1407670 (not res!1896570)) b!4548350))

(assert (= (and b!4548350 res!1896571) b!4548345))

(declare-fun m!5321565 () Bool)

(assert (=> b!4548347 m!5321565))

(declare-fun m!5321567 () Bool)

(assert (=> b!4548347 m!5321567))

(assert (=> b!4548347 m!5321567))

(declare-fun m!5321569 () Bool)

(assert (=> b!4548347 m!5321569))

(declare-fun m!5321571 () Bool)

(assert (=> b!4548347 m!5321571))

(assert (=> b!4548346 m!5320239))

(declare-fun m!5321573 () Bool)

(assert (=> b!4548346 m!5321573))

(assert (=> b!4548350 m!5321567))

(assert (=> b!4548350 m!5321567))

(assert (=> b!4548350 m!5321569))

(declare-fun m!5321575 () Bool)

(assert (=> b!4548352 m!5321575))

(declare-fun m!5321577 () Bool)

(assert (=> b!4548352 m!5321577))

(assert (=> b!4548353 m!5320239))

(assert (=> b!4548353 m!5321573))

(assert (=> b!4548353 m!5321573))

(declare-fun m!5321579 () Bool)

(assert (=> b!4548353 m!5321579))

(assert (=> b!4548345 m!5320239))

(assert (=> b!4548345 m!5321573))

(assert (=> b!4548345 m!5321573))

(assert (=> b!4548345 m!5321579))

(declare-fun m!5321581 () Bool)

(assert (=> bm!317213 m!5321581))

(assert (=> d!1407670 m!5321575))

(declare-fun m!5321583 () Bool)

(assert (=> b!4548349 m!5321583))

(assert (=> d!1407278 d!1407670))

(declare-fun bs!885885 () Bool)

(declare-fun d!1407672 () Bool)

(assert (= bs!885885 (and d!1407672 d!1407226)))

(declare-fun lambda!177733 () Int)

(assert (=> bs!885885 (= lambda!177733 lambda!177545)))

(declare-fun bs!885886 () Bool)

(assert (= bs!885886 (and d!1407672 start!451856)))

(assert (=> bs!885886 (= lambda!177733 lambda!177531)))

(declare-fun bs!885887 () Bool)

(assert (= bs!885887 (and d!1407672 d!1407316)))

(assert (=> bs!885887 (= lambda!177733 lambda!177573)))

(declare-fun bs!885888 () Bool)

(assert (= bs!885888 (and d!1407672 d!1407278)))

(assert (=> bs!885888 (= lambda!177733 lambda!177565)))

(declare-fun bs!885889 () Bool)

(assert (= bs!885889 (and d!1407672 d!1407590)))

(assert (=> bs!885889 (= lambda!177733 lambda!177720)))

(declare-fun bs!885890 () Bool)

(assert (= bs!885890 (and d!1407672 d!1407216)))

(assert (=> bs!885890 (= lambda!177733 lambda!177544)))

(declare-fun bs!885891 () Bool)

(assert (= bs!885891 (and d!1407672 d!1407302)))

(assert (=> bs!885891 (= lambda!177733 lambda!177568)))

(declare-fun bs!885892 () Bool)

(assert (= bs!885892 (and d!1407672 d!1407334)))

(assert (=> bs!885892 (= lambda!177733 lambda!177577)))

(declare-fun bs!885893 () Bool)

(assert (= bs!885893 (and d!1407672 d!1407320)))

(assert (=> bs!885893 (= lambda!177733 lambda!177576)))

(declare-fun bs!885894 () Bool)

(assert (= bs!885894 (and d!1407672 d!1407604)))

(assert (=> bs!885894 (= lambda!177733 lambda!177727)))

(declare-fun bs!885895 () Bool)

(assert (= bs!885895 (and d!1407672 d!1407530)))

(assert (=> bs!885895 (= lambda!177733 lambda!177706)))

(declare-fun bs!885896 () Bool)

(assert (= bs!885896 (and d!1407672 d!1407268)))

(assert (=> bs!885896 (= lambda!177733 lambda!177556)))

(declare-fun bs!885897 () Bool)

(assert (= bs!885897 (and d!1407672 d!1407314)))

(assert (=> bs!885897 (= lambda!177733 lambda!177572)))

(declare-fun bs!885898 () Bool)

(assert (= bs!885898 (and d!1407672 d!1407306)))

(assert (=> bs!885898 (not (= lambda!177733 lambda!177571))))

(declare-fun bs!885899 () Bool)

(assert (= bs!885899 (and d!1407672 d!1407402)))

(assert (=> bs!885899 (= lambda!177733 lambda!177636)))

(declare-fun lt!1721706 () ListMap!3717)

(assert (=> d!1407672 (invariantList!1058 (toList!4456 lt!1721706))))

(declare-fun e!2834549 () ListMap!3717)

(assert (=> d!1407672 (= lt!1721706 e!2834549)))

(declare-fun c!777092 () Bool)

(assert (=> d!1407672 (= c!777092 ((_ is Cons!50816) (toList!4455 (ListLongMap!3088 lt!1720918))))))

(assert (=> d!1407672 (forall!10389 (toList!4455 (ListLongMap!3088 lt!1720918)) lambda!177733)))

(assert (=> d!1407672 (= (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918))) lt!1721706)))

(declare-fun b!4548354 () Bool)

(assert (=> b!4548354 (= e!2834549 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (toList!4455 (ListLongMap!3088 lt!1720918)))) (extractMap!1280 (t!357906 (toList!4455 (ListLongMap!3088 lt!1720918))))))))

(declare-fun b!4548355 () Bool)

(assert (=> b!4548355 (= e!2834549 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407672 c!777092) b!4548354))

(assert (= (and d!1407672 (not c!777092)) b!4548355))

(declare-fun m!5321603 () Bool)

(assert (=> d!1407672 m!5321603))

(declare-fun m!5321605 () Bool)

(assert (=> d!1407672 m!5321605))

(declare-fun m!5321607 () Bool)

(assert (=> b!4548354 m!5321607))

(assert (=> b!4548354 m!5321607))

(declare-fun m!5321609 () Bool)

(assert (=> b!4548354 m!5321609))

(assert (=> d!1407278 d!1407672))

(declare-fun d!1407682 () Bool)

(assert (=> d!1407682 (contains!13646 (extractMap!1280 (toList!4455 (ListLongMap!3088 lt!1720918))) key!3287)))

(assert (=> d!1407682 true))

(declare-fun _$34!742 () Unit!99681)

(assert (=> d!1407682 (= (choose!30048 (ListLongMap!3088 lt!1720918) key!3287 hashF!1107) _$34!742)))

(declare-fun bs!885912 () Bool)

(assert (= bs!885912 d!1407682))

(assert (=> bs!885912 m!5320239))

(assert (=> bs!885912 m!5320239))

(assert (=> bs!885912 m!5320241))

(assert (=> d!1407278 d!1407682))

(declare-fun d!1407710 () Bool)

(declare-fun res!1896601 () Bool)

(declare-fun e!2834584 () Bool)

(assert (=> d!1407710 (=> res!1896601 e!2834584)))

(assert (=> d!1407710 (= res!1896601 ((_ is Nil!50816) (toList!4455 (ListLongMap!3088 lt!1720918))))))

(assert (=> d!1407710 (= (forall!10389 (toList!4455 (ListLongMap!3088 lt!1720918)) lambda!177565) e!2834584)))

(declare-fun b!4548407 () Bool)

(declare-fun e!2834585 () Bool)

(assert (=> b!4548407 (= e!2834584 e!2834585)))

(declare-fun res!1896602 () Bool)

(assert (=> b!4548407 (=> (not res!1896602) (not e!2834585))))

(assert (=> b!4548407 (= res!1896602 (dynLambda!21244 lambda!177565 (h!56711 (toList!4455 (ListLongMap!3088 lt!1720918)))))))

(declare-fun b!4548408 () Bool)

(assert (=> b!4548408 (= e!2834585 (forall!10389 (t!357906 (toList!4455 (ListLongMap!3088 lt!1720918))) lambda!177565))))

(assert (= (and d!1407710 (not res!1896601)) b!4548407))

(assert (= (and b!4548407 res!1896602) b!4548408))

(declare-fun b_lambda!159083 () Bool)

(assert (=> (not b_lambda!159083) (not b!4548407)))

(declare-fun m!5321683 () Bool)

(assert (=> b!4548407 m!5321683))

(declare-fun m!5321685 () Bool)

(assert (=> b!4548408 m!5321685))

(assert (=> d!1407278 d!1407710))

(declare-fun b!4548410 () Bool)

(declare-fun e!2834586 () Option!11244)

(declare-fun e!2834587 () Option!11244)

(assert (=> b!4548410 (= e!2834586 e!2834587)))

(declare-fun c!777105 () Bool)

(assert (=> b!4548410 (= c!777105 (and ((_ is Cons!50816) (toList!4455 lt!1721112)) (not (= (_1!28960 (h!56711 (toList!4455 lt!1721112))) (_1!28960 lt!1720912)))))))

(declare-fun d!1407712 () Bool)

(declare-fun c!777104 () Bool)

(assert (=> d!1407712 (= c!777104 (and ((_ is Cons!50816) (toList!4455 lt!1721112)) (= (_1!28960 (h!56711 (toList!4455 lt!1721112))) (_1!28960 lt!1720912))))))

(assert (=> d!1407712 (= (getValueByKey!1176 (toList!4455 lt!1721112) (_1!28960 lt!1720912)) e!2834586)))

(declare-fun b!4548411 () Bool)

(assert (=> b!4548411 (= e!2834587 (getValueByKey!1176 (t!357906 (toList!4455 lt!1721112)) (_1!28960 lt!1720912)))))

(declare-fun b!4548409 () Bool)

(assert (=> b!4548409 (= e!2834586 (Some!11243 (_2!28960 (h!56711 (toList!4455 lt!1721112)))))))

(declare-fun b!4548412 () Bool)

(assert (=> b!4548412 (= e!2834587 None!11243)))

(assert (= (and d!1407712 c!777104) b!4548409))

(assert (= (and d!1407712 (not c!777104)) b!4548410))

(assert (= (and b!4548410 c!777105) b!4548411))

(assert (= (and b!4548410 (not c!777105)) b!4548412))

(declare-fun m!5321687 () Bool)

(assert (=> b!4548411 m!5321687))

(assert (=> b!4547623 d!1407712))

(assert (=> d!1407298 d!1407226))

(declare-fun d!1407714 () Bool)

(assert (=> d!1407714 (eq!675 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816)) (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287))))

(assert (=> d!1407714 true))

(declare-fun _$18!240 () Unit!99681)

(assert (=> d!1407714 (= (choose!30049 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!240)))

(declare-fun bs!885928 () Bool)

(assert (= bs!885928 d!1407714))

(assert (=> bs!885928 m!5320259))

(assert (=> bs!885928 m!5319921))

(assert (=> bs!885928 m!5319921))

(assert (=> bs!885928 m!5319917))

(assert (=> bs!885928 m!5320259))

(assert (=> bs!885928 m!5319917))

(assert (=> bs!885928 m!5320261))

(assert (=> d!1407298 d!1407714))

(assert (=> d!1407298 d!1407230))

(assert (=> d!1407298 d!1407484))

(declare-fun bs!885929 () Bool)

(declare-fun d!1407722 () Bool)

(assert (= bs!885929 (and d!1407722 d!1407226)))

(declare-fun lambda!177738 () Int)

(assert (=> bs!885929 (= lambda!177738 lambda!177545)))

(declare-fun bs!885930 () Bool)

(assert (= bs!885930 (and d!1407722 start!451856)))

(assert (=> bs!885930 (= lambda!177738 lambda!177531)))

(declare-fun bs!885931 () Bool)

(assert (= bs!885931 (and d!1407722 d!1407316)))

(assert (=> bs!885931 (= lambda!177738 lambda!177573)))

(declare-fun bs!885932 () Bool)

(assert (= bs!885932 (and d!1407722 d!1407278)))

(assert (=> bs!885932 (= lambda!177738 lambda!177565)))

(declare-fun bs!885934 () Bool)

(assert (= bs!885934 (and d!1407722 d!1407590)))

(assert (=> bs!885934 (= lambda!177738 lambda!177720)))

(declare-fun bs!885936 () Bool)

(assert (= bs!885936 (and d!1407722 d!1407216)))

(assert (=> bs!885936 (= lambda!177738 lambda!177544)))

(declare-fun bs!885937 () Bool)

(assert (= bs!885937 (and d!1407722 d!1407302)))

(assert (=> bs!885937 (= lambda!177738 lambda!177568)))

(declare-fun bs!885939 () Bool)

(assert (= bs!885939 (and d!1407722 d!1407334)))

(assert (=> bs!885939 (= lambda!177738 lambda!177577)))

(declare-fun bs!885941 () Bool)

(assert (= bs!885941 (and d!1407722 d!1407604)))

(assert (=> bs!885941 (= lambda!177738 lambda!177727)))

(declare-fun bs!885943 () Bool)

(assert (= bs!885943 (and d!1407722 d!1407530)))

(assert (=> bs!885943 (= lambda!177738 lambda!177706)))

(declare-fun bs!885944 () Bool)

(assert (= bs!885944 (and d!1407722 d!1407268)))

(assert (=> bs!885944 (= lambda!177738 lambda!177556)))

(declare-fun bs!885946 () Bool)

(assert (= bs!885946 (and d!1407722 d!1407314)))

(assert (=> bs!885946 (= lambda!177738 lambda!177572)))

(declare-fun bs!885948 () Bool)

(assert (= bs!885948 (and d!1407722 d!1407306)))

(assert (=> bs!885948 (not (= lambda!177738 lambda!177571))))

(declare-fun bs!885950 () Bool)

(assert (= bs!885950 (and d!1407722 d!1407402)))

(assert (=> bs!885950 (= lambda!177738 lambda!177636)))

(declare-fun bs!885951 () Bool)

(assert (= bs!885951 (and d!1407722 d!1407672)))

(assert (=> bs!885951 (= lambda!177738 lambda!177733)))

(declare-fun bs!885953 () Bool)

(assert (= bs!885953 (and d!1407722 d!1407320)))

(assert (=> bs!885953 (= lambda!177738 lambda!177576)))

(declare-fun lt!1721719 () ListMap!3717)

(assert (=> d!1407722 (invariantList!1058 (toList!4456 lt!1721719))))

(declare-fun e!2834595 () ListMap!3717)

(assert (=> d!1407722 (= lt!1721719 e!2834595)))

(declare-fun c!777106 () Bool)

(assert (=> d!1407722 (= c!777106 ((_ is Cons!50816) (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816)))))

(assert (=> d!1407722 (forall!10389 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816) lambda!177738)))

(assert (=> d!1407722 (= (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816)) lt!1721719)))

(declare-fun b!4548420 () Bool)

(assert (=> b!4548420 (= e!2834595 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816)))))))

(declare-fun b!4548421 () Bool)

(assert (=> b!4548421 (= e!2834595 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407722 c!777106) b!4548420))

(assert (= (and d!1407722 (not c!777106)) b!4548421))

(declare-fun m!5321719 () Bool)

(assert (=> d!1407722 m!5321719))

(declare-fun m!5321721 () Bool)

(assert (=> d!1407722 m!5321721))

(declare-fun m!5321723 () Bool)

(assert (=> b!4548420 m!5321723))

(assert (=> b!4548420 m!5321723))

(declare-fun m!5321725 () Bool)

(assert (=> b!4548420 m!5321725))

(assert (=> d!1407298 d!1407722))

(declare-fun d!1407748 () Bool)

(assert (=> d!1407748 (= (eq!675 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816)) (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287)) (= (content!8479 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 newBucket!178) Nil!50816)))) (content!8479 (toList!4456 (-!444 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) key!3287)))))))

(declare-fun bs!885957 () Bool)

(assert (= bs!885957 d!1407748))

(declare-fun m!5321727 () Bool)

(assert (=> bs!885957 m!5321727))

(assert (=> bs!885957 m!5320219))

(assert (=> d!1407298 d!1407748))

(declare-fun d!1407750 () Bool)

(assert (=> d!1407750 (= (invariantList!1058 (toList!4456 lt!1721073)) (noDuplicatedKeys!283 (toList!4456 lt!1721073)))))

(declare-fun bs!885958 () Bool)

(assert (= bs!885958 d!1407750))

(declare-fun m!5321729 () Bool)

(assert (=> bs!885958 m!5321729))

(assert (=> d!1407314 d!1407750))

(declare-fun d!1407752 () Bool)

(declare-fun res!1896607 () Bool)

(declare-fun e!2834596 () Bool)

(assert (=> d!1407752 (=> res!1896607 e!2834596)))

(assert (=> d!1407752 (= res!1896607 ((_ is Nil!50816) (toList!4455 lt!1720913)))))

(assert (=> d!1407752 (= (forall!10389 (toList!4455 lt!1720913) lambda!177572) e!2834596)))

(declare-fun b!4548422 () Bool)

(declare-fun e!2834597 () Bool)

(assert (=> b!4548422 (= e!2834596 e!2834597)))

(declare-fun res!1896608 () Bool)

(assert (=> b!4548422 (=> (not res!1896608) (not e!2834597))))

(assert (=> b!4548422 (= res!1896608 (dynLambda!21244 lambda!177572 (h!56711 (toList!4455 lt!1720913))))))

(declare-fun b!4548423 () Bool)

(assert (=> b!4548423 (= e!2834597 (forall!10389 (t!357906 (toList!4455 lt!1720913)) lambda!177572))))

(assert (= (and d!1407752 (not res!1896607)) b!4548422))

(assert (= (and b!4548422 res!1896608) b!4548423))

(declare-fun b_lambda!159113 () Bool)

(assert (=> (not b_lambda!159113) (not b!4548422)))

(declare-fun m!5321731 () Bool)

(assert (=> b!4548422 m!5321731))

(declare-fun m!5321733 () Bool)

(assert (=> b!4548423 m!5321733))

(assert (=> d!1407314 d!1407752))

(declare-fun d!1407754 () Bool)

(declare-fun res!1896609 () Bool)

(declare-fun e!2834598 () Bool)

(assert (=> d!1407754 (=> res!1896609 e!2834598)))

(assert (=> d!1407754 (= res!1896609 (and ((_ is Cons!50815) lt!1721083) (= (_1!28959 (h!56710 lt!1721083)) key!3287)))))

(assert (=> d!1407754 (= (containsKey!1927 lt!1721083 key!3287) e!2834598)))

(declare-fun b!4548424 () Bool)

(declare-fun e!2834599 () Bool)

(assert (=> b!4548424 (= e!2834598 e!2834599)))

(declare-fun res!1896610 () Bool)

(assert (=> b!4548424 (=> (not res!1896610) (not e!2834599))))

(assert (=> b!4548424 (= res!1896610 ((_ is Cons!50815) lt!1721083))))

(declare-fun b!4548425 () Bool)

(assert (=> b!4548425 (= e!2834599 (containsKey!1927 (t!357905 lt!1721083) key!3287))))

(assert (= (and d!1407754 (not res!1896609)) b!4548424))

(assert (= (and b!4548424 res!1896610) b!4548425))

(declare-fun m!5321735 () Bool)

(assert (=> b!4548425 m!5321735))

(assert (=> d!1407322 d!1407754))

(declare-fun d!1407756 () Bool)

(declare-fun res!1896611 () Bool)

(declare-fun e!2834600 () Bool)

(assert (=> d!1407756 (=> res!1896611 e!2834600)))

(assert (=> d!1407756 (= res!1896611 (not ((_ is Cons!50815) lt!1720920)))))

(assert (=> d!1407756 (= (noDuplicateKeys!1224 lt!1720920) e!2834600)))

(declare-fun b!4548426 () Bool)

(declare-fun e!2834601 () Bool)

(assert (=> b!4548426 (= e!2834600 e!2834601)))

(declare-fun res!1896612 () Bool)

(assert (=> b!4548426 (=> (not res!1896612) (not e!2834601))))

(assert (=> b!4548426 (= res!1896612 (not (containsKey!1927 (t!357905 lt!1720920) (_1!28959 (h!56710 lt!1720920)))))))

(declare-fun b!4548427 () Bool)

(assert (=> b!4548427 (= e!2834601 (noDuplicateKeys!1224 (t!357905 lt!1720920)))))

(assert (= (and d!1407756 (not res!1896611)) b!4548426))

(assert (= (and b!4548426 res!1896612) b!4548427))

(declare-fun m!5321737 () Bool)

(assert (=> b!4548426 m!5321737))

(assert (=> b!4548427 m!5320917))

(assert (=> d!1407322 d!1407756))

(declare-fun d!1407758 () Bool)

(assert (=> d!1407758 (= (invariantList!1058 (toList!4456 lt!1721044)) (noDuplicatedKeys!283 (toList!4456 lt!1721044)))))

(declare-fun bs!885959 () Bool)

(assert (= bs!885959 d!1407758))

(declare-fun m!5321739 () Bool)

(assert (=> bs!885959 m!5321739))

(assert (=> d!1407268 d!1407758))

(declare-fun d!1407760 () Bool)

(declare-fun res!1896613 () Bool)

(declare-fun e!2834602 () Bool)

(assert (=> d!1407760 (=> res!1896613 e!2834602)))

(assert (=> d!1407760 (= res!1896613 ((_ is Nil!50816) (Cons!50816 lt!1720912 Nil!50816)))))

(assert (=> d!1407760 (= (forall!10389 (Cons!50816 lt!1720912 Nil!50816) lambda!177556) e!2834602)))

(declare-fun b!4548428 () Bool)

(declare-fun e!2834603 () Bool)

(assert (=> b!4548428 (= e!2834602 e!2834603)))

(declare-fun res!1896614 () Bool)

(assert (=> b!4548428 (=> (not res!1896614) (not e!2834603))))

(assert (=> b!4548428 (= res!1896614 (dynLambda!21244 lambda!177556 (h!56711 (Cons!50816 lt!1720912 Nil!50816))))))

(declare-fun b!4548429 () Bool)

(assert (=> b!4548429 (= e!2834603 (forall!10389 (t!357906 (Cons!50816 lt!1720912 Nil!50816)) lambda!177556))))

(assert (= (and d!1407760 (not res!1896613)) b!4548428))

(assert (= (and b!4548428 res!1896614) b!4548429))

(declare-fun b_lambda!159115 () Bool)

(assert (=> (not b_lambda!159115) (not b!4548428)))

(declare-fun m!5321741 () Bool)

(assert (=> b!4548428 m!5321741))

(declare-fun m!5321743 () Bool)

(assert (=> b!4548429 m!5321743))

(assert (=> d!1407268 d!1407760))

(declare-fun bs!885960 () Bool)

(declare-fun b!4548433 () Bool)

(assert (= bs!885960 (and b!4548433 b!4547867)))

(declare-fun lambda!177739 () Int)

(assert (=> bs!885960 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177739 lambda!177632))))

(declare-fun bs!885961 () Bool)

(assert (= bs!885961 (and b!4548433 d!1407214)))

(assert (=> bs!885961 (not (= lambda!177739 lambda!177534))))

(declare-fun bs!885962 () Bool)

(assert (= bs!885962 (and b!4548433 b!4548245)))

(assert (=> bs!885962 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177739 lambda!177714))))

(declare-fun bs!885963 () Bool)

(assert (= bs!885963 (and b!4548433 b!4548253)))

(assert (=> bs!885963 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721631) (= lambda!177739 lambda!177724))))

(declare-fun bs!885964 () Bool)

(assert (= bs!885964 (and b!4548433 b!4548159)))

(assert (=> bs!885964 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177739 lambda!177702))))

(declare-fun bs!885965 () Bool)

(assert (= bs!885965 (and b!4548433 b!4548244)))

(assert (=> bs!885965 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177739 lambda!177716))))

(declare-fun bs!885966 () Bool)

(assert (= bs!885966 (and b!4548433 d!1407528)))

(assert (=> bs!885966 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721553) (= lambda!177739 lambda!177705))))

(declare-fun bs!885967 () Bool)

(assert (= bs!885967 (and b!4548433 b!4548254)))

(assert (=> bs!885967 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177739 lambda!177722))))

(declare-fun bs!885968 () Bool)

(assert (= bs!885968 (and b!4548433 d!1407372)))

(assert (=> bs!885968 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721272) (= lambda!177739 lambda!177635))))

(assert (=> bs!885963 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177739 lambda!177723))))

(declare-fun bs!885969 () Bool)

(assert (= bs!885969 (and b!4548433 b!4547866)))

(assert (=> bs!885969 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721265) (= lambda!177739 lambda!177634))))

(declare-fun bs!885970 () Bool)

(assert (= bs!885970 (and b!4548433 b!4548160)))

(assert (=> bs!885970 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177739 lambda!177700))))

(declare-fun bs!885971 () Bool)

(assert (= bs!885971 (and b!4548433 d!1407594)))

(assert (=> bs!885971 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721638) (= lambda!177739 lambda!177726))))

(declare-fun bs!885972 () Bool)

(assert (= bs!885972 (and b!4548433 d!1407588)))

(assert (=> bs!885972 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721615) (= lambda!177739 lambda!177719))))

(assert (=> bs!885965 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721608) (= lambda!177739 lambda!177717))))

(assert (=> bs!885969 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177739 lambda!177633))))

(assert (=> bs!885964 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721546) (= lambda!177739 lambda!177703))))

(assert (=> b!4548433 true))

(declare-fun bs!885973 () Bool)

(declare-fun b!4548432 () Bool)

(assert (= bs!885973 (and b!4548432 b!4547867)))

(declare-fun lambda!177740 () Int)

(assert (=> bs!885973 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177740 lambda!177632))))

(declare-fun bs!885974 () Bool)

(assert (= bs!885974 (and b!4548432 d!1407214)))

(assert (=> bs!885974 (not (= lambda!177740 lambda!177534))))

(declare-fun bs!885975 () Bool)

(assert (= bs!885975 (and b!4548432 b!4548245)))

(assert (=> bs!885975 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177740 lambda!177714))))

(declare-fun bs!885976 () Bool)

(assert (= bs!885976 (and b!4548432 b!4548253)))

(assert (=> bs!885976 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721631) (= lambda!177740 lambda!177724))))

(declare-fun bs!885977 () Bool)

(assert (= bs!885977 (and b!4548432 b!4548159)))

(assert (=> bs!885977 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177740 lambda!177702))))

(declare-fun bs!885978 () Bool)

(assert (= bs!885978 (and b!4548432 b!4548244)))

(assert (=> bs!885978 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177740 lambda!177716))))

(declare-fun bs!885979 () Bool)

(assert (= bs!885979 (and b!4548432 d!1407528)))

(assert (=> bs!885979 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721553) (= lambda!177740 lambda!177705))))

(declare-fun bs!885980 () Bool)

(assert (= bs!885980 (and b!4548432 b!4548433)))

(assert (=> bs!885980 (= lambda!177740 lambda!177739)))

(declare-fun bs!885981 () Bool)

(assert (= bs!885981 (and b!4548432 b!4548254)))

(assert (=> bs!885981 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177740 lambda!177722))))

(declare-fun bs!885982 () Bool)

(assert (= bs!885982 (and b!4548432 d!1407372)))

(assert (=> bs!885982 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721272) (= lambda!177740 lambda!177635))))

(assert (=> bs!885976 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177740 lambda!177723))))

(declare-fun bs!885983 () Bool)

(assert (= bs!885983 (and b!4548432 b!4547866)))

(assert (=> bs!885983 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721265) (= lambda!177740 lambda!177634))))

(declare-fun bs!885984 () Bool)

(assert (= bs!885984 (and b!4548432 b!4548160)))

(assert (=> bs!885984 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177740 lambda!177700))))

(declare-fun bs!885985 () Bool)

(assert (= bs!885985 (and b!4548432 d!1407594)))

(assert (=> bs!885985 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721638) (= lambda!177740 lambda!177726))))

(declare-fun bs!885986 () Bool)

(assert (= bs!885986 (and b!4548432 d!1407588)))

(assert (=> bs!885986 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721615) (= lambda!177740 lambda!177719))))

(assert (=> bs!885978 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721608) (= lambda!177740 lambda!177717))))

(assert (=> bs!885983 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177740 lambda!177633))))

(assert (=> bs!885977 (= (= (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721546) (= lambda!177740 lambda!177703))))

(assert (=> b!4548432 true))

(declare-fun lt!1721722 () ListMap!3717)

(declare-fun lambda!177741 () Int)

(assert (=> bs!885973 (= (= lt!1721722 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177741 lambda!177632))))

(assert (=> bs!885974 (not (= lambda!177741 lambda!177534))))

(assert (=> bs!885975 (= (= lt!1721722 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177741 lambda!177714))))

(assert (=> bs!885976 (= (= lt!1721722 lt!1721631) (= lambda!177741 lambda!177724))))

(assert (=> bs!885977 (= (= lt!1721722 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177741 lambda!177702))))

(assert (=> bs!885978 (= (= lt!1721722 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177741 lambda!177716))))

(assert (=> bs!885979 (= (= lt!1721722 lt!1721553) (= lambda!177741 lambda!177705))))

(assert (=> bs!885980 (= (= lt!1721722 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177741 lambda!177739))))

(assert (=> bs!885981 (= (= lt!1721722 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177741 lambda!177722))))

(assert (=> bs!885982 (= (= lt!1721722 lt!1721272) (= lambda!177741 lambda!177635))))

(assert (=> b!4548432 (= (= lt!1721722 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177741 lambda!177740))))

(assert (=> bs!885976 (= (= lt!1721722 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177741 lambda!177723))))

(assert (=> bs!885983 (= (= lt!1721722 lt!1721265) (= lambda!177741 lambda!177634))))

(assert (=> bs!885984 (= (= lt!1721722 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177741 lambda!177700))))

(assert (=> bs!885985 (= (= lt!1721722 lt!1721638) (= lambda!177741 lambda!177726))))

(assert (=> bs!885986 (= (= lt!1721722 lt!1721615) (= lambda!177741 lambda!177719))))

(assert (=> bs!885978 (= (= lt!1721722 lt!1721608) (= lambda!177741 lambda!177717))))

(assert (=> bs!885983 (= (= lt!1721722 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177741 lambda!177633))))

(assert (=> bs!885977 (= (= lt!1721722 lt!1721546) (= lambda!177741 lambda!177703))))

(assert (=> b!4548432 true))

(declare-fun bs!885987 () Bool)

(declare-fun d!1407762 () Bool)

(assert (= bs!885987 (and d!1407762 b!4547867)))

(declare-fun lambda!177742 () Int)

(declare-fun lt!1721729 () ListMap!3717)

(assert (=> bs!885987 (= (= lt!1721729 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177742 lambda!177632))))

(declare-fun bs!885988 () Bool)

(assert (= bs!885988 (and d!1407762 d!1407214)))

(assert (=> bs!885988 (not (= lambda!177742 lambda!177534))))

(declare-fun bs!885989 () Bool)

(assert (= bs!885989 (and d!1407762 b!4548245)))

(assert (=> bs!885989 (= (= lt!1721729 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177742 lambda!177714))))

(declare-fun bs!885990 () Bool)

(assert (= bs!885990 (and d!1407762 b!4548253)))

(assert (=> bs!885990 (= (= lt!1721729 lt!1721631) (= lambda!177742 lambda!177724))))

(declare-fun bs!885991 () Bool)

(assert (= bs!885991 (and d!1407762 b!4548159)))

(assert (=> bs!885991 (= (= lt!1721729 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177742 lambda!177702))))

(declare-fun bs!885992 () Bool)

(assert (= bs!885992 (and d!1407762 d!1407528)))

(assert (=> bs!885992 (= (= lt!1721729 lt!1721553) (= lambda!177742 lambda!177705))))

(declare-fun bs!885993 () Bool)

(assert (= bs!885993 (and d!1407762 b!4548433)))

(assert (=> bs!885993 (= (= lt!1721729 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177742 lambda!177739))))

(declare-fun bs!885994 () Bool)

(assert (= bs!885994 (and d!1407762 b!4548254)))

(assert (=> bs!885994 (= (= lt!1721729 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177742 lambda!177722))))

(declare-fun bs!885995 () Bool)

(assert (= bs!885995 (and d!1407762 d!1407372)))

(assert (=> bs!885995 (= (= lt!1721729 lt!1721272) (= lambda!177742 lambda!177635))))

(declare-fun bs!885996 () Bool)

(assert (= bs!885996 (and d!1407762 b!4548432)))

(assert (=> bs!885996 (= (= lt!1721729 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177742 lambda!177740))))

(assert (=> bs!885990 (= (= lt!1721729 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177742 lambda!177723))))

(declare-fun bs!885997 () Bool)

(assert (= bs!885997 (and d!1407762 b!4547866)))

(assert (=> bs!885997 (= (= lt!1721729 lt!1721265) (= lambda!177742 lambda!177634))))

(declare-fun bs!885998 () Bool)

(assert (= bs!885998 (and d!1407762 b!4548160)))

(assert (=> bs!885998 (= (= lt!1721729 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177742 lambda!177700))))

(declare-fun bs!885999 () Bool)

(assert (= bs!885999 (and d!1407762 b!4548244)))

(assert (=> bs!885999 (= (= lt!1721729 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177742 lambda!177716))))

(assert (=> bs!885996 (= (= lt!1721729 lt!1721722) (= lambda!177742 lambda!177741))))

(declare-fun bs!886000 () Bool)

(assert (= bs!886000 (and d!1407762 d!1407594)))

(assert (=> bs!886000 (= (= lt!1721729 lt!1721638) (= lambda!177742 lambda!177726))))

(declare-fun bs!886001 () Bool)

(assert (= bs!886001 (and d!1407762 d!1407588)))

(assert (=> bs!886001 (= (= lt!1721729 lt!1721615) (= lambda!177742 lambda!177719))))

(assert (=> bs!885999 (= (= lt!1721729 lt!1721608) (= lambda!177742 lambda!177717))))

(assert (=> bs!885997 (= (= lt!1721729 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177742 lambda!177633))))

(assert (=> bs!885991 (= (= lt!1721729 lt!1721546) (= lambda!177742 lambda!177703))))

(assert (=> d!1407762 true))

(declare-fun call!317224 () Bool)

(declare-fun bm!317217 () Bool)

(declare-fun c!777107 () Bool)

(declare-fun lt!1721740 () ListMap!3717)

(assert (=> bm!317217 (= call!317224 (forall!10391 (ite c!777107 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (toList!4456 lt!1721740)) (ite c!777107 lambda!177739 lambda!177741)))))

(declare-fun b!4548430 () Bool)

(declare-fun e!2834605 () Bool)

(assert (=> b!4548430 (= e!2834605 (invariantList!1058 (toList!4456 lt!1721729)))))

(declare-fun b!4548431 () Bool)

(declare-fun e!2834604 () Bool)

(assert (=> b!4548431 (= e!2834604 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) lambda!177741))))

(declare-fun bm!317218 () Bool)

(declare-fun call!317223 () Unit!99681)

(assert (=> bm!317218 (= call!317223 (lemmaContainsAllItsOwnKeys!377 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))))))

(declare-fun e!2834606 () ListMap!3717)

(assert (=> b!4548432 (= e!2834606 lt!1721722)))

(assert (=> b!4548432 (= lt!1721740 (+!1637 (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477))))))))

(assert (=> b!4548432 (= lt!1721722 (addToMapMapFromBucket!744 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477)))) (+!1637 (extractMap!1280 (t!357906 (toList!4455 lm!1477))) (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))))

(declare-fun lt!1721737 () Unit!99681)

(assert (=> b!4548432 (= lt!1721737 call!317223)))

(declare-fun call!317222 () Bool)

(assert (=> b!4548432 call!317222))

(declare-fun lt!1721721 () Unit!99681)

(assert (=> b!4548432 (= lt!1721721 lt!1721737)))

(assert (=> b!4548432 (forall!10391 (toList!4456 lt!1721740) lambda!177741)))

(declare-fun lt!1721734 () Unit!99681)

(declare-fun Unit!99839 () Unit!99681)

(assert (=> b!4548432 (= lt!1721734 Unit!99839)))

(assert (=> b!4548432 (forall!10391 (t!357905 (_2!28960 (h!56711 (toList!4455 lm!1477)))) lambda!177741)))

(declare-fun lt!1721736 () Unit!99681)

(declare-fun Unit!99840 () Unit!99681)

(assert (=> b!4548432 (= lt!1721736 Unit!99840)))

(declare-fun lt!1721723 () Unit!99681)

(declare-fun Unit!99841 () Unit!99681)

(assert (=> b!4548432 (= lt!1721723 Unit!99841)))

(declare-fun lt!1721732 () Unit!99681)

(assert (=> b!4548432 (= lt!1721732 (forallContained!2655 (toList!4456 lt!1721740) lambda!177741 (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477))))))))

(assert (=> b!4548432 (contains!13646 lt!1721740 (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477))))))))

(declare-fun lt!1721724 () Unit!99681)

(declare-fun Unit!99842 () Unit!99681)

(assert (=> b!4548432 (= lt!1721724 Unit!99842)))

(assert (=> b!4548432 (contains!13646 lt!1721722 (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477))))))))

(declare-fun lt!1721731 () Unit!99681)

(declare-fun Unit!99843 () Unit!99681)

(assert (=> b!4548432 (= lt!1721731 Unit!99843)))

(assert (=> b!4548432 (forall!10391 (_2!28960 (h!56711 (toList!4455 lm!1477))) lambda!177741)))

(declare-fun lt!1721730 () Unit!99681)

(declare-fun Unit!99844 () Unit!99681)

(assert (=> b!4548432 (= lt!1721730 Unit!99844)))

(assert (=> b!4548432 call!317224))

(declare-fun lt!1721735 () Unit!99681)

(declare-fun Unit!99845 () Unit!99681)

(assert (=> b!4548432 (= lt!1721735 Unit!99845)))

(declare-fun lt!1721720 () Unit!99681)

(declare-fun Unit!99846 () Unit!99681)

(assert (=> b!4548432 (= lt!1721720 Unit!99846)))

(declare-fun lt!1721733 () Unit!99681)

(assert (=> b!4548432 (= lt!1721733 (addForallContainsKeyThenBeforeAdding!377 (extractMap!1280 (t!357906 (toList!4455 lm!1477))) lt!1721722 (_1!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477))))) (_2!28959 (h!56710 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))))

(assert (=> b!4548432 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) lambda!177741)))

(declare-fun lt!1721725 () Unit!99681)

(assert (=> b!4548432 (= lt!1721725 lt!1721733)))

(assert (=> b!4548432 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) lambda!177741)))

(declare-fun lt!1721728 () Unit!99681)

(declare-fun Unit!99847 () Unit!99681)

(assert (=> b!4548432 (= lt!1721728 Unit!99847)))

(declare-fun res!1896617 () Bool)

(assert (=> b!4548432 (= res!1896617 (forall!10391 (_2!28960 (h!56711 (toList!4455 lm!1477))) lambda!177741))))

(assert (=> b!4548432 (=> (not res!1896617) (not e!2834604))))

(assert (=> b!4548432 e!2834604))

(declare-fun lt!1721739 () Unit!99681)

(declare-fun Unit!99848 () Unit!99681)

(assert (=> b!4548432 (= lt!1721739 Unit!99848)))

(assert (=> b!4548433 (= e!2834606 (extractMap!1280 (t!357906 (toList!4455 lm!1477))))))

(declare-fun lt!1721738 () Unit!99681)

(assert (=> b!4548433 (= lt!1721738 call!317223)))

(assert (=> b!4548433 call!317224))

(declare-fun lt!1721727 () Unit!99681)

(assert (=> b!4548433 (= lt!1721727 lt!1721738)))

(assert (=> b!4548433 call!317222))

(declare-fun lt!1721726 () Unit!99681)

(declare-fun Unit!99849 () Unit!99681)

(assert (=> b!4548433 (= lt!1721726 Unit!99849)))

(declare-fun bm!317219 () Bool)

(assert (=> bm!317219 (= call!317222 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (ite c!777107 lambda!177739 lambda!177740)))))

(assert (=> d!1407762 e!2834605))

(declare-fun res!1896615 () Bool)

(assert (=> d!1407762 (=> (not res!1896615) (not e!2834605))))

(assert (=> d!1407762 (= res!1896615 (forall!10391 (_2!28960 (h!56711 (toList!4455 lm!1477))) lambda!177742))))

(assert (=> d!1407762 (= lt!1721729 e!2834606)))

(assert (=> d!1407762 (= c!777107 ((_ is Nil!50815) (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(assert (=> d!1407762 (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lm!1477))))))

(assert (=> d!1407762 (= (addToMapMapFromBucket!744 (_2!28960 (h!56711 (toList!4455 lm!1477))) (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) lt!1721729)))

(declare-fun b!4548434 () Bool)

(declare-fun res!1896616 () Bool)

(assert (=> b!4548434 (=> (not res!1896616) (not e!2834605))))

(assert (=> b!4548434 (= res!1896616 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) lambda!177742))))

(assert (= (and d!1407762 c!777107) b!4548433))

(assert (= (and d!1407762 (not c!777107)) b!4548432))

(assert (= (and b!4548432 res!1896617) b!4548431))

(assert (= (or b!4548433 b!4548432) bm!317217))

(assert (= (or b!4548433 b!4548432) bm!317219))

(assert (= (or b!4548433 b!4548432) bm!317218))

(assert (= (and d!1407762 res!1896615) b!4548434))

(assert (= (and b!4548434 res!1896616) b!4548430))

(declare-fun m!5321745 () Bool)

(assert (=> b!4548432 m!5321745))

(assert (=> b!4548432 m!5319931))

(declare-fun m!5321747 () Bool)

(assert (=> b!4548432 m!5321747))

(declare-fun m!5321749 () Bool)

(assert (=> b!4548432 m!5321749))

(declare-fun m!5321751 () Bool)

(assert (=> b!4548432 m!5321751))

(declare-fun m!5321753 () Bool)

(assert (=> b!4548432 m!5321753))

(declare-fun m!5321755 () Bool)

(assert (=> b!4548432 m!5321755))

(declare-fun m!5321757 () Bool)

(assert (=> b!4548432 m!5321757))

(declare-fun m!5321759 () Bool)

(assert (=> b!4548432 m!5321759))

(declare-fun m!5321761 () Bool)

(assert (=> b!4548432 m!5321761))

(assert (=> b!4548432 m!5321761))

(assert (=> b!4548432 m!5321745))

(assert (=> b!4548432 m!5319931))

(assert (=> b!4548432 m!5321753))

(declare-fun m!5321763 () Bool)

(assert (=> b!4548432 m!5321763))

(declare-fun m!5321765 () Bool)

(assert (=> b!4548434 m!5321765))

(declare-fun m!5321767 () Bool)

(assert (=> bm!317217 m!5321767))

(declare-fun m!5321769 () Bool)

(assert (=> d!1407762 m!5321769))

(assert (=> d!1407762 m!5320263))

(declare-fun m!5321771 () Bool)

(assert (=> bm!317219 m!5321771))

(assert (=> bm!317218 m!5319931))

(declare-fun m!5321773 () Bool)

(assert (=> bm!317218 m!5321773))

(declare-fun m!5321775 () Bool)

(assert (=> b!4548430 m!5321775))

(assert (=> b!4548431 m!5321761))

(assert (=> b!4547615 d!1407762))

(assert (=> b!4547615 d!1407316))

(declare-fun d!1407764 () Bool)

(declare-fun c!777110 () Bool)

(assert (=> d!1407764 (= c!777110 ((_ is Nil!50818) (keys!17701 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(declare-fun e!2834609 () (InoxSet K!12200))

(assert (=> d!1407764 (= (content!8478 (keys!17701 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) e!2834609)))

(declare-fun b!4548439 () Bool)

(assert (=> b!4548439 (= e!2834609 ((as const (Array K!12200 Bool)) false))))

(declare-fun b!4548440 () Bool)

(assert (=> b!4548440 (= e!2834609 ((_ map or) (store ((as const (Array K!12200 Bool)) false) (h!56715 (keys!17701 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) true) (content!8478 (t!357908 (keys!17701 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))))

(assert (= (and d!1407764 c!777110) b!4548439))

(assert (= (and d!1407764 (not c!777110)) b!4548440))

(declare-fun m!5321777 () Bool)

(assert (=> b!4548440 m!5321777))

(declare-fun m!5321779 () Bool)

(assert (=> b!4548440 m!5321779))

(assert (=> b!4547397 d!1407764))

(declare-fun bs!886002 () Bool)

(declare-fun b!4548442 () Bool)

(assert (= bs!886002 (and b!4548442 b!4548071)))

(declare-fun lambda!177743 () Int)

(assert (=> bs!886002 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177743 lambda!177687))))

(declare-fun bs!886003 () Bool)

(assert (= bs!886003 (and b!4548442 b!4548033)))

(assert (=> bs!886003 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177743 lambda!177671))))

(declare-fun bs!886004 () Bool)

(assert (= bs!886004 (and b!4548442 b!4548218)))

(assert (=> bs!886004 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (= lambda!177743 lambda!177708))))

(declare-fun bs!886005 () Bool)

(assert (= bs!886005 (and b!4548442 b!4548073)))

(assert (=> bs!886005 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (= lambda!177743 lambda!177685))))

(declare-fun bs!886006 () Bool)

(assert (= bs!886006 (and b!4548442 b!4548066)))

(assert (=> bs!886006 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))) (= lambda!177743 lambda!177686))))

(declare-fun bs!886007 () Bool)

(assert (= bs!886007 (and b!4548442 b!4548211)))

(assert (=> bs!886007 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918))))) (= lambda!177743 lambda!177709))))

(declare-fun bs!886008 () Bool)

(assert (= bs!886008 (and b!4548442 b!4547701)))

(assert (=> bs!886008 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177743 lambda!177600))))

(declare-fun bs!886009 () Bool)

(assert (= bs!886009 (and b!4548442 b!4548216)))

(assert (=> bs!886009 (= (= (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177743 lambda!177710))))

(assert (=> b!4548442 true))

(declare-fun bs!886010 () Bool)

(declare-fun b!4548443 () Bool)

(assert (= bs!886010 (and b!4548443 b!4547702)))

(declare-fun lambda!177744 () Int)

(assert (=> bs!886010 (= lambda!177744 lambda!177601)))

(declare-fun bs!886011 () Bool)

(assert (= bs!886011 (and b!4548443 b!4548034)))

(assert (=> bs!886011 (= lambda!177744 lambda!177672)))

(declare-fun bs!886012 () Bool)

(assert (= bs!886012 (and b!4548443 b!4548068)))

(assert (=> bs!886012 (= lambda!177744 lambda!177688)))

(declare-fun bs!886013 () Bool)

(assert (= bs!886013 (and b!4548443 b!4548213)))

(assert (=> bs!886013 (= lambda!177744 lambda!177711)))

(declare-fun d!1407766 () Bool)

(declare-fun e!2834610 () Bool)

(assert (=> d!1407766 e!2834610))

(declare-fun res!1896619 () Bool)

(assert (=> d!1407766 (=> (not res!1896619) (not e!2834610))))

(declare-fun lt!1721741 () List!50942)

(assert (=> d!1407766 (= res!1896619 (noDuplicate!768 lt!1721741))))

(assert (=> d!1407766 (= lt!1721741 (getKeysList!506 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(assert (=> d!1407766 (= (keys!17701 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721741)))

(declare-fun b!4548441 () Bool)

(declare-fun res!1896620 () Bool)

(assert (=> b!4548441 (=> (not res!1896620) (not e!2834610))))

(assert (=> b!4548441 (= res!1896620 (= (length!392 lt!1721741) (length!393 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(declare-fun res!1896618 () Bool)

(assert (=> b!4548442 (=> (not res!1896618) (not e!2834610))))

(assert (=> b!4548442 (= res!1896618 (forall!10393 lt!1721741 lambda!177743))))

(assert (=> b!4548443 (= e!2834610 (= (content!8478 lt!1721741) (content!8478 (map!11191 (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lambda!177744))))))

(assert (= (and d!1407766 res!1896619) b!4548441))

(assert (= (and b!4548441 res!1896620) b!4548442))

(assert (= (and b!4548442 res!1896618) b!4548443))

(declare-fun m!5321781 () Bool)

(assert (=> d!1407766 m!5321781))

(assert (=> d!1407766 m!5320751))

(declare-fun m!5321783 () Bool)

(assert (=> b!4548441 m!5321783))

(declare-fun m!5321785 () Bool)

(assert (=> b!4548441 m!5321785))

(declare-fun m!5321787 () Bool)

(assert (=> b!4548442 m!5321787))

(declare-fun m!5321789 () Bool)

(assert (=> b!4548443 m!5321789))

(declare-fun m!5321791 () Bool)

(assert (=> b!4548443 m!5321791))

(assert (=> b!4548443 m!5321791))

(declare-fun m!5321793 () Bool)

(assert (=> b!4548443 m!5321793))

(assert (=> b!4547397 d!1407766))

(declare-fun d!1407768 () Bool)

(declare-fun c!777111 () Bool)

(assert (=> d!1407768 (= c!777111 ((_ is Nil!50818) (keys!17701 lt!1720956)))))

(declare-fun e!2834611 () (InoxSet K!12200))

(assert (=> d!1407768 (= (content!8478 (keys!17701 lt!1720956)) e!2834611)))

(declare-fun b!4548444 () Bool)

(assert (=> b!4548444 (= e!2834611 ((as const (Array K!12200 Bool)) false))))

(declare-fun b!4548445 () Bool)

(assert (=> b!4548445 (= e!2834611 ((_ map or) (store ((as const (Array K!12200 Bool)) false) (h!56715 (keys!17701 lt!1720956)) true) (content!8478 (t!357908 (keys!17701 lt!1720956)))))))

(assert (= (and d!1407768 c!777111) b!4548444))

(assert (= (and d!1407768 (not c!777111)) b!4548445))

(declare-fun m!5321795 () Bool)

(assert (=> b!4548445 m!5321795))

(declare-fun m!5321797 () Bool)

(assert (=> b!4548445 m!5321797))

(assert (=> b!4547397 d!1407768))

(declare-fun bs!886014 () Bool)

(declare-fun b!4548447 () Bool)

(assert (= bs!886014 (and b!4548447 b!4548071)))

(declare-fun lambda!177745 () Int)

(assert (=> bs!886014 (= (= (toList!4456 lt!1720956) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177745 lambda!177687))))

(declare-fun bs!886015 () Bool)

(assert (= bs!886015 (and b!4548447 b!4548033)))

(assert (=> bs!886015 (= (= (toList!4456 lt!1720956) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177745 lambda!177671))))

(declare-fun bs!886016 () Bool)

(assert (= bs!886016 (and b!4548447 b!4548218)))

(assert (=> bs!886016 (= (= (toList!4456 lt!1720956) (t!357905 (toList!4456 (extractMap!1280 lt!1720918)))) (= lambda!177745 lambda!177708))))

(declare-fun bs!886017 () Bool)

(assert (= bs!886017 (and b!4548447 b!4548442)))

(assert (=> bs!886017 (= (= (toList!4456 lt!1720956) (toList!4456 (extractMap!1280 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (= lambda!177745 lambda!177743))))

(declare-fun bs!886018 () Bool)

(assert (= bs!886018 (and b!4548447 b!4548073)))

(assert (=> bs!886018 (= (= (toList!4456 lt!1720956) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477))))) (= lambda!177745 lambda!177685))))

(declare-fun bs!886019 () Bool)

(assert (= bs!886019 (and b!4548447 b!4548066)))

(assert (=> bs!886019 (= (= (toList!4456 lt!1720956) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (t!357905 (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))))) (= lambda!177745 lambda!177686))))

(declare-fun bs!886020 () Bool)

(assert (= bs!886020 (and b!4548447 b!4548211)))

(assert (=> bs!886020 (= (= (toList!4456 lt!1720956) (Cons!50815 (h!56710 (toList!4456 (extractMap!1280 lt!1720918))) (t!357905 (toList!4456 (extractMap!1280 lt!1720918))))) (= lambda!177745 lambda!177709))))

(declare-fun bs!886021 () Bool)

(assert (= bs!886021 (and b!4548447 b!4547701)))

(assert (=> bs!886021 (= (= (toList!4456 lt!1720956) (toList!4456 (extractMap!1280 (toList!4455 lm!1477)))) (= lambda!177745 lambda!177600))))

(declare-fun bs!886022 () Bool)

(assert (= bs!886022 (and b!4548447 b!4548216)))

(assert (=> bs!886022 (= (= (toList!4456 lt!1720956) (toList!4456 (extractMap!1280 lt!1720918))) (= lambda!177745 lambda!177710))))

(assert (=> b!4548447 true))

(declare-fun bs!886023 () Bool)

(declare-fun b!4548448 () Bool)

(assert (= bs!886023 (and b!4548448 b!4547702)))

(declare-fun lambda!177746 () Int)

(assert (=> bs!886023 (= lambda!177746 lambda!177601)))

(declare-fun bs!886024 () Bool)

(assert (= bs!886024 (and b!4548448 b!4548443)))

(assert (=> bs!886024 (= lambda!177746 lambda!177744)))

(declare-fun bs!886025 () Bool)

(assert (= bs!886025 (and b!4548448 b!4548068)))

(assert (=> bs!886025 (= lambda!177746 lambda!177688)))

(declare-fun bs!886026 () Bool)

(assert (= bs!886026 (and b!4548448 b!4548034)))

(assert (=> bs!886026 (= lambda!177746 lambda!177672)))

(declare-fun bs!886027 () Bool)

(assert (= bs!886027 (and b!4548448 b!4548213)))

(assert (=> bs!886027 (= lambda!177746 lambda!177711)))

(declare-fun d!1407770 () Bool)

(declare-fun e!2834612 () Bool)

(assert (=> d!1407770 e!2834612))

(declare-fun res!1896622 () Bool)

(assert (=> d!1407770 (=> (not res!1896622) (not e!2834612))))

(declare-fun lt!1721742 () List!50942)

(assert (=> d!1407770 (= res!1896622 (noDuplicate!768 lt!1721742))))

(assert (=> d!1407770 (= lt!1721742 (getKeysList!506 (toList!4456 lt!1720956)))))

(assert (=> d!1407770 (= (keys!17701 lt!1720956) lt!1721742)))

(declare-fun b!4548446 () Bool)

(declare-fun res!1896623 () Bool)

(assert (=> b!4548446 (=> (not res!1896623) (not e!2834612))))

(assert (=> b!4548446 (= res!1896623 (= (length!392 lt!1721742) (length!393 (toList!4456 lt!1720956))))))

(declare-fun res!1896621 () Bool)

(assert (=> b!4548447 (=> (not res!1896621) (not e!2834612))))

(assert (=> b!4548447 (= res!1896621 (forall!10393 lt!1721742 lambda!177745))))

(assert (=> b!4548448 (= e!2834612 (= (content!8478 lt!1721742) (content!8478 (map!11191 (toList!4456 lt!1720956) lambda!177746))))))

(assert (= (and d!1407770 res!1896622) b!4548446))

(assert (= (and b!4548446 res!1896623) b!4548447))

(assert (= (and b!4548447 res!1896621) b!4548448))

(declare-fun m!5321799 () Bool)

(assert (=> d!1407770 m!5321799))

(assert (=> d!1407770 m!5320693))

(declare-fun m!5321801 () Bool)

(assert (=> b!4548446 m!5321801))

(declare-fun m!5321803 () Bool)

(assert (=> b!4548446 m!5321803))

(declare-fun m!5321805 () Bool)

(assert (=> b!4548447 m!5321805))

(declare-fun m!5321807 () Bool)

(assert (=> b!4548448 m!5321807))

(declare-fun m!5321809 () Bool)

(assert (=> b!4548448 m!5321809))

(assert (=> b!4548448 m!5321809))

(declare-fun m!5321811 () Bool)

(assert (=> b!4548448 m!5321811))

(assert (=> b!4547397 d!1407770))

(declare-fun bs!886028 () Bool)

(declare-fun b!4548452 () Bool)

(assert (= bs!886028 (and b!4548452 b!4547867)))

(declare-fun lambda!177747 () Int)

(assert (=> bs!886028 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177747 lambda!177632))))

(declare-fun bs!886029 () Bool)

(assert (= bs!886029 (and b!4548452 d!1407214)))

(assert (=> bs!886029 (not (= lambda!177747 lambda!177534))))

(declare-fun bs!886030 () Bool)

(assert (= bs!886030 (and b!4548452 b!4548245)))

(assert (=> bs!886030 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177747 lambda!177714))))

(declare-fun bs!886031 () Bool)

(assert (= bs!886031 (and b!4548452 b!4548253)))

(assert (=> bs!886031 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721631) (= lambda!177747 lambda!177724))))

(declare-fun bs!886032 () Bool)

(assert (= bs!886032 (and b!4548452 b!4548159)))

(assert (=> bs!886032 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177747 lambda!177702))))

(declare-fun bs!886033 () Bool)

(assert (= bs!886033 (and b!4548452 d!1407528)))

(assert (=> bs!886033 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721553) (= lambda!177747 lambda!177705))))

(declare-fun bs!886034 () Bool)

(assert (= bs!886034 (and b!4548452 b!4548433)))

(assert (=> bs!886034 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177747 lambda!177739))))

(declare-fun bs!886035 () Bool)

(assert (= bs!886035 (and b!4548452 b!4548254)))

(assert (=> bs!886035 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177747 lambda!177722))))

(declare-fun bs!886036 () Bool)

(assert (= bs!886036 (and b!4548452 d!1407372)))

(assert (=> bs!886036 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721272) (= lambda!177747 lambda!177635))))

(declare-fun bs!886037 () Bool)

(assert (= bs!886037 (and b!4548452 b!4548432)))

(assert (=> bs!886037 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177747 lambda!177740))))

(assert (=> bs!886031 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177747 lambda!177723))))

(declare-fun bs!886038 () Bool)

(assert (= bs!886038 (and b!4548452 b!4547866)))

(assert (=> bs!886038 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721265) (= lambda!177747 lambda!177634))))

(declare-fun bs!886039 () Bool)

(assert (= bs!886039 (and b!4548452 b!4548160)))

(assert (=> bs!886039 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177747 lambda!177700))))

(declare-fun bs!886040 () Bool)

(assert (= bs!886040 (and b!4548452 b!4548244)))

(assert (=> bs!886040 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177747 lambda!177716))))

(assert (=> bs!886037 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721722) (= lambda!177747 lambda!177741))))

(declare-fun bs!886041 () Bool)

(assert (= bs!886041 (and b!4548452 d!1407594)))

(assert (=> bs!886041 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721638) (= lambda!177747 lambda!177726))))

(declare-fun bs!886042 () Bool)

(assert (= bs!886042 (and b!4548452 d!1407588)))

(assert (=> bs!886042 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721615) (= lambda!177747 lambda!177719))))

(declare-fun bs!886043 () Bool)

(assert (= bs!886043 (and b!4548452 d!1407762)))

(assert (=> bs!886043 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721729) (= lambda!177747 lambda!177742))))

(assert (=> bs!886040 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721608) (= lambda!177747 lambda!177717))))

(assert (=> bs!886038 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177747 lambda!177633))))

(assert (=> bs!886032 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721546) (= lambda!177747 lambda!177703))))

(assert (=> b!4548452 true))

(declare-fun bs!886044 () Bool)

(declare-fun b!4548451 () Bool)

(assert (= bs!886044 (and b!4548451 b!4547867)))

(declare-fun lambda!177748 () Int)

(assert (=> bs!886044 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177748 lambda!177632))))

(declare-fun bs!886045 () Bool)

(assert (= bs!886045 (and b!4548451 d!1407214)))

(assert (=> bs!886045 (not (= lambda!177748 lambda!177534))))

(declare-fun bs!886046 () Bool)

(assert (= bs!886046 (and b!4548451 b!4548245)))

(assert (=> bs!886046 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177748 lambda!177714))))

(declare-fun bs!886047 () Bool)

(assert (= bs!886047 (and b!4548451 b!4548253)))

(assert (=> bs!886047 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721631) (= lambda!177748 lambda!177724))))

(declare-fun bs!886048 () Bool)

(assert (= bs!886048 (and b!4548451 b!4548159)))

(assert (=> bs!886048 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177748 lambda!177702))))

(declare-fun bs!886049 () Bool)

(assert (= bs!886049 (and b!4548451 d!1407528)))

(assert (=> bs!886049 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721553) (= lambda!177748 lambda!177705))))

(declare-fun bs!886050 () Bool)

(assert (= bs!886050 (and b!4548451 b!4548452)))

(assert (=> bs!886050 (= lambda!177748 lambda!177747)))

(declare-fun bs!886051 () Bool)

(assert (= bs!886051 (and b!4548451 b!4548433)))

(assert (=> bs!886051 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177748 lambda!177739))))

(declare-fun bs!886052 () Bool)

(assert (= bs!886052 (and b!4548451 b!4548254)))

(assert (=> bs!886052 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177748 lambda!177722))))

(declare-fun bs!886053 () Bool)

(assert (= bs!886053 (and b!4548451 d!1407372)))

(assert (=> bs!886053 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721272) (= lambda!177748 lambda!177635))))

(declare-fun bs!886054 () Bool)

(assert (= bs!886054 (and b!4548451 b!4548432)))

(assert (=> bs!886054 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177748 lambda!177740))))

(assert (=> bs!886047 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177748 lambda!177723))))

(declare-fun bs!886055 () Bool)

(assert (= bs!886055 (and b!4548451 b!4547866)))

(assert (=> bs!886055 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721265) (= lambda!177748 lambda!177634))))

(declare-fun bs!886056 () Bool)

(assert (= bs!886056 (and b!4548451 b!4548160)))

(assert (=> bs!886056 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177748 lambda!177700))))

(declare-fun bs!886057 () Bool)

(assert (= bs!886057 (and b!4548451 b!4548244)))

(assert (=> bs!886057 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177748 lambda!177716))))

(assert (=> bs!886054 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721722) (= lambda!177748 lambda!177741))))

(declare-fun bs!886058 () Bool)

(assert (= bs!886058 (and b!4548451 d!1407594)))

(assert (=> bs!886058 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721638) (= lambda!177748 lambda!177726))))

(declare-fun bs!886059 () Bool)

(assert (= bs!886059 (and b!4548451 d!1407588)))

(assert (=> bs!886059 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721615) (= lambda!177748 lambda!177719))))

(declare-fun bs!886060 () Bool)

(assert (= bs!886060 (and b!4548451 d!1407762)))

(assert (=> bs!886060 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721729) (= lambda!177748 lambda!177742))))

(assert (=> bs!886057 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721608) (= lambda!177748 lambda!177717))))

(assert (=> bs!886055 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177748 lambda!177633))))

(assert (=> bs!886048 (= (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721546) (= lambda!177748 lambda!177703))))

(assert (=> b!4548451 true))

(declare-fun lambda!177749 () Int)

(assert (=> bs!886045 (not (= lambda!177749 lambda!177534))))

(declare-fun lt!1721745 () ListMap!3717)

(assert (=> bs!886046 (= (= lt!1721745 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177749 lambda!177714))))

(assert (=> bs!886047 (= (= lt!1721745 lt!1721631) (= lambda!177749 lambda!177724))))

(assert (=> bs!886048 (= (= lt!1721745 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177749 lambda!177702))))

(assert (=> bs!886049 (= (= lt!1721745 lt!1721553) (= lambda!177749 lambda!177705))))

(assert (=> bs!886050 (= (= lt!1721745 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (= lambda!177749 lambda!177747))))

(assert (=> bs!886051 (= (= lt!1721745 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177749 lambda!177739))))

(assert (=> bs!886052 (= (= lt!1721745 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177749 lambda!177722))))

(assert (=> bs!886053 (= (= lt!1721745 lt!1721272) (= lambda!177749 lambda!177635))))

(assert (=> bs!886054 (= (= lt!1721745 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177749 lambda!177740))))

(assert (=> bs!886047 (= (= lt!1721745 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177749 lambda!177723))))

(assert (=> bs!886044 (= (= lt!1721745 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177749 lambda!177632))))

(assert (=> b!4548451 (= (= lt!1721745 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (= lambda!177749 lambda!177748))))

(assert (=> bs!886055 (= (= lt!1721745 lt!1721265) (= lambda!177749 lambda!177634))))

(assert (=> bs!886056 (= (= lt!1721745 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177749 lambda!177700))))

(assert (=> bs!886057 (= (= lt!1721745 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177749 lambda!177716))))

(assert (=> bs!886054 (= (= lt!1721745 lt!1721722) (= lambda!177749 lambda!177741))))

(assert (=> bs!886058 (= (= lt!1721745 lt!1721638) (= lambda!177749 lambda!177726))))

(assert (=> bs!886059 (= (= lt!1721745 lt!1721615) (= lambda!177749 lambda!177719))))

(assert (=> bs!886060 (= (= lt!1721745 lt!1721729) (= lambda!177749 lambda!177742))))

(assert (=> bs!886057 (= (= lt!1721745 lt!1721608) (= lambda!177749 lambda!177717))))

(assert (=> bs!886055 (= (= lt!1721745 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177749 lambda!177633))))

(assert (=> bs!886048 (= (= lt!1721745 lt!1721546) (= lambda!177749 lambda!177703))))

(assert (=> b!4548451 true))

(declare-fun bs!886061 () Bool)

(declare-fun d!1407772 () Bool)

(assert (= bs!886061 (and d!1407772 d!1407214)))

(declare-fun lambda!177750 () Int)

(assert (=> bs!886061 (not (= lambda!177750 lambda!177534))))

(declare-fun bs!886062 () Bool)

(assert (= bs!886062 (and d!1407772 b!4548245)))

(declare-fun lt!1721752 () ListMap!3717)

(assert (=> bs!886062 (= (= lt!1721752 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177750 lambda!177714))))

(declare-fun bs!886063 () Bool)

(assert (= bs!886063 (and d!1407772 b!4548253)))

(assert (=> bs!886063 (= (= lt!1721752 lt!1721631) (= lambda!177750 lambda!177724))))

(declare-fun bs!886064 () Bool)

(assert (= bs!886064 (and d!1407772 b!4548159)))

(assert (=> bs!886064 (= (= lt!1721752 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177750 lambda!177702))))

(declare-fun bs!886065 () Bool)

(assert (= bs!886065 (and d!1407772 d!1407528)))

(assert (=> bs!886065 (= (= lt!1721752 lt!1721553) (= lambda!177750 lambda!177705))))

(declare-fun bs!886066 () Bool)

(assert (= bs!886066 (and d!1407772 b!4548452)))

(assert (=> bs!886066 (= (= lt!1721752 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (= lambda!177750 lambda!177747))))

(declare-fun bs!886067 () Bool)

(assert (= bs!886067 (and d!1407772 b!4548254)))

(assert (=> bs!886067 (= (= lt!1721752 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177750 lambda!177722))))

(declare-fun bs!886068 () Bool)

(assert (= bs!886068 (and d!1407772 d!1407372)))

(assert (=> bs!886068 (= (= lt!1721752 lt!1721272) (= lambda!177750 lambda!177635))))

(declare-fun bs!886069 () Bool)

(assert (= bs!886069 (and d!1407772 b!4548432)))

(assert (=> bs!886069 (= (= lt!1721752 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177750 lambda!177740))))

(assert (=> bs!886063 (= (= lt!1721752 (extractMap!1280 (t!357906 (toList!4455 lt!1720913)))) (= lambda!177750 lambda!177723))))

(declare-fun bs!886070 () Bool)

(assert (= bs!886070 (and d!1407772 b!4547867)))

(assert (=> bs!886070 (= (= lt!1721752 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177750 lambda!177632))))

(declare-fun bs!886071 () Bool)

(assert (= bs!886071 (and d!1407772 b!4548451)))

(assert (=> bs!886071 (= (= lt!1721752 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (= lambda!177750 lambda!177748))))

(declare-fun bs!886072 () Bool)

(assert (= bs!886072 (and d!1407772 b!4547866)))

(assert (=> bs!886072 (= (= lt!1721752 lt!1721265) (= lambda!177750 lambda!177634))))

(declare-fun bs!886073 () Bool)

(assert (= bs!886073 (and d!1407772 b!4548160)))

(assert (=> bs!886073 (= (= lt!1721752 (extractMap!1280 (t!357906 lt!1720918))) (= lambda!177750 lambda!177700))))

(declare-fun bs!886074 () Bool)

(assert (= bs!886074 (and d!1407772 b!4548244)))

(assert (=> bs!886074 (= (= lt!1721752 (extractMap!1280 (t!357906 (t!357906 (toList!4455 lm!1477))))) (= lambda!177750 lambda!177716))))

(assert (=> bs!886069 (= (= lt!1721752 lt!1721722) (= lambda!177750 lambda!177741))))

(declare-fun bs!886075 () Bool)

(assert (= bs!886075 (and d!1407772 d!1407594)))

(assert (=> bs!886075 (= (= lt!1721752 lt!1721638) (= lambda!177750 lambda!177726))))

(declare-fun bs!886076 () Bool)

(assert (= bs!886076 (and d!1407772 d!1407588)))

(assert (=> bs!886076 (= (= lt!1721752 lt!1721615) (= lambda!177750 lambda!177719))))

(declare-fun bs!886077 () Bool)

(assert (= bs!886077 (and d!1407772 d!1407762)))

(assert (=> bs!886077 (= (= lt!1721752 lt!1721729) (= lambda!177750 lambda!177742))))

(assert (=> bs!886071 (= (= lt!1721752 lt!1721745) (= lambda!177750 lambda!177749))))

(declare-fun bs!886078 () Bool)

(assert (= bs!886078 (and d!1407772 b!4548433)))

(assert (=> bs!886078 (= (= lt!1721752 (extractMap!1280 (t!357906 (toList!4455 lm!1477)))) (= lambda!177750 lambda!177739))))

(assert (=> bs!886074 (= (= lt!1721752 lt!1721608) (= lambda!177750 lambda!177717))))

(assert (=> bs!886072 (= (= lt!1721752 (extractMap!1280 (t!357906 (Cons!50816 lt!1720912 Nil!50816)))) (= lambda!177750 lambda!177633))))

(assert (=> bs!886064 (= (= lt!1721752 lt!1721546) (= lambda!177750 lambda!177703))))

(assert (=> d!1407772 true))

(declare-fun c!777112 () Bool)

(declare-fun bm!317220 () Bool)

(declare-fun call!317227 () Bool)

(declare-fun lt!1721763 () ListMap!3717)

(assert (=> bm!317220 (= call!317227 (forall!10391 (ite c!777112 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (toList!4456 lt!1721763)) (ite c!777112 lambda!177747 lambda!177749)))))

(declare-fun b!4548449 () Bool)

(declare-fun e!2834614 () Bool)

(assert (=> b!4548449 (= e!2834614 (invariantList!1058 (toList!4456 lt!1721752)))))

(declare-fun b!4548450 () Bool)

(declare-fun e!2834613 () Bool)

(assert (=> b!4548450 (= e!2834613 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) lambda!177749))))

(declare-fun bm!317221 () Bool)

(declare-fun call!317226 () Unit!99681)

(assert (=> bm!317221 (= call!317226 (lemmaContainsAllItsOwnKeys!377 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(declare-fun e!2834615 () ListMap!3717)

(assert (=> b!4548451 (= e!2834615 lt!1721745)))

(assert (=> b!4548451 (= lt!1721763 (+!1637 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (h!56710 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(assert (=> b!4548451 (= lt!1721745 (addToMapMapFromBucket!744 (t!357905 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (+!1637 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (h!56710 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))))

(declare-fun lt!1721760 () Unit!99681)

(assert (=> b!4548451 (= lt!1721760 call!317226)))

(declare-fun call!317225 () Bool)

(assert (=> b!4548451 call!317225))

(declare-fun lt!1721744 () Unit!99681)

(assert (=> b!4548451 (= lt!1721744 lt!1721760)))

(assert (=> b!4548451 (forall!10391 (toList!4456 lt!1721763) lambda!177749)))

(declare-fun lt!1721757 () Unit!99681)

(declare-fun Unit!99862 () Unit!99681)

(assert (=> b!4548451 (= lt!1721757 Unit!99862)))

(assert (=> b!4548451 (forall!10391 (t!357905 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) lambda!177749)))

(declare-fun lt!1721759 () Unit!99681)

(declare-fun Unit!99863 () Unit!99681)

(assert (=> b!4548451 (= lt!1721759 Unit!99863)))

(declare-fun lt!1721746 () Unit!99681)

(declare-fun Unit!99864 () Unit!99681)

(assert (=> b!4548451 (= lt!1721746 Unit!99864)))

(declare-fun lt!1721755 () Unit!99681)

(assert (=> b!4548451 (= lt!1721755 (forallContained!2655 (toList!4456 lt!1721763) lambda!177749 (h!56710 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(assert (=> b!4548451 (contains!13646 lt!1721763 (_1!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(declare-fun lt!1721747 () Unit!99681)

(declare-fun Unit!99865 () Unit!99681)

(assert (=> b!4548451 (= lt!1721747 Unit!99865)))

(assert (=> b!4548451 (contains!13646 lt!1721745 (_1!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(declare-fun lt!1721754 () Unit!99681)

(declare-fun Unit!99866 () Unit!99681)

(assert (=> b!4548451 (= lt!1721754 Unit!99866)))

(assert (=> b!4548451 (forall!10391 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lambda!177749)))

(declare-fun lt!1721753 () Unit!99681)

(declare-fun Unit!99867 () Unit!99681)

(assert (=> b!4548451 (= lt!1721753 Unit!99867)))

(assert (=> b!4548451 call!317227))

(declare-fun lt!1721758 () Unit!99681)

(declare-fun Unit!99868 () Unit!99681)

(assert (=> b!4548451 (= lt!1721758 Unit!99868)))

(declare-fun lt!1721743 () Unit!99681)

(declare-fun Unit!99869 () Unit!99681)

(assert (=> b!4548451 (= lt!1721743 Unit!99869)))

(declare-fun lt!1721756 () Unit!99681)

(assert (=> b!4548451 (= lt!1721756 (addForallContainsKeyThenBeforeAdding!377 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721745 (_1!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))) (_2!28959 (h!56710 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))))

(assert (=> b!4548451 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) lambda!177749)))

(declare-fun lt!1721748 () Unit!99681)

(assert (=> b!4548451 (= lt!1721748 lt!1721756)))

(assert (=> b!4548451 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) lambda!177749)))

(declare-fun lt!1721751 () Unit!99681)

(declare-fun Unit!99870 () Unit!99681)

(assert (=> b!4548451 (= lt!1721751 Unit!99870)))

(declare-fun res!1896626 () Bool)

(assert (=> b!4548451 (= res!1896626 (forall!10391 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lambda!177749))))

(assert (=> b!4548451 (=> (not res!1896626) (not e!2834613))))

(assert (=> b!4548451 e!2834613))

(declare-fun lt!1721762 () Unit!99681)

(declare-fun Unit!99871 () Unit!99681)

(assert (=> b!4548451 (= lt!1721762 Unit!99871)))

(assert (=> b!4548452 (= e!2834615 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))

(declare-fun lt!1721761 () Unit!99681)

(assert (=> b!4548452 (= lt!1721761 call!317226)))

(assert (=> b!4548452 call!317227))

(declare-fun lt!1721750 () Unit!99681)

(assert (=> b!4548452 (= lt!1721750 lt!1721761)))

(assert (=> b!4548452 call!317225))

(declare-fun lt!1721749 () Unit!99681)

(declare-fun Unit!99872 () Unit!99681)

(assert (=> b!4548452 (= lt!1721749 Unit!99872)))

(declare-fun bm!317222 () Bool)

(assert (=> bm!317222 (= call!317225 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (ite c!777112 lambda!177747 lambda!177748)))))

(assert (=> d!1407772 e!2834614))

(declare-fun res!1896624 () Bool)

(assert (=> d!1407772 (=> (not res!1896624) (not e!2834614))))

(assert (=> d!1407772 (= res!1896624 (forall!10391 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lambda!177750))))

(assert (=> d!1407772 (= lt!1721752 e!2834615)))

(assert (=> d!1407772 (= c!777112 ((_ is Nil!50815) (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(assert (=> d!1407772 (noDuplicateKeys!1224 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))

(assert (=> d!1407772 (= (addToMapMapFromBucket!744 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) lt!1721752)))

(declare-fun b!4548453 () Bool)

(declare-fun res!1896625 () Bool)

(assert (=> b!4548453 (=> (not res!1896625) (not e!2834614))))

(assert (=> b!4548453 (= res!1896625 (forall!10391 (toList!4456 (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) lambda!177750))))

(assert (= (and d!1407772 c!777112) b!4548452))

(assert (= (and d!1407772 (not c!777112)) b!4548451))

(assert (= (and b!4548451 res!1896626) b!4548450))

(assert (= (or b!4548452 b!4548451) bm!317220))

(assert (= (or b!4548452 b!4548451) bm!317222))

(assert (= (or b!4548452 b!4548451) bm!317221))

(assert (= (and d!1407772 res!1896624) b!4548453))

(assert (= (and b!4548453 res!1896625) b!4548449))

(declare-fun m!5321813 () Bool)

(assert (=> b!4548451 m!5321813))

(assert (=> b!4548451 m!5320031))

(declare-fun m!5321815 () Bool)

(assert (=> b!4548451 m!5321815))

(declare-fun m!5321817 () Bool)

(assert (=> b!4548451 m!5321817))

(declare-fun m!5321819 () Bool)

(assert (=> b!4548451 m!5321819))

(declare-fun m!5321821 () Bool)

(assert (=> b!4548451 m!5321821))

(declare-fun m!5321823 () Bool)

(assert (=> b!4548451 m!5321823))

(declare-fun m!5321825 () Bool)

(assert (=> b!4548451 m!5321825))

(declare-fun m!5321827 () Bool)

(assert (=> b!4548451 m!5321827))

(declare-fun m!5321829 () Bool)

(assert (=> b!4548451 m!5321829))

(assert (=> b!4548451 m!5321829))

(assert (=> b!4548451 m!5321813))

(assert (=> b!4548451 m!5320031))

(assert (=> b!4548451 m!5321821))

(declare-fun m!5321831 () Bool)

(assert (=> b!4548451 m!5321831))

(declare-fun m!5321833 () Bool)

(assert (=> b!4548453 m!5321833))

(declare-fun m!5321835 () Bool)

(assert (=> bm!317220 m!5321835))

(declare-fun m!5321837 () Bool)

(assert (=> d!1407772 m!5321837))

(declare-fun m!5321839 () Bool)

(assert (=> d!1407772 m!5321839))

(declare-fun m!5321841 () Bool)

(assert (=> bm!317222 m!5321841))

(assert (=> bm!317221 m!5320031))

(declare-fun m!5321843 () Bool)

(assert (=> bm!317221 m!5321843))

(declare-fun m!5321845 () Bool)

(assert (=> b!4548449 m!5321845))

(assert (=> b!4548450 m!5321829))

(assert (=> b!4547393 d!1407772))

(declare-fun bs!886079 () Bool)

(declare-fun d!1407774 () Bool)

(assert (= bs!886079 (and d!1407774 d!1407226)))

(declare-fun lambda!177751 () Int)

(assert (=> bs!886079 (= lambda!177751 lambda!177545)))

(declare-fun bs!886080 () Bool)

(assert (= bs!886080 (and d!1407774 start!451856)))

(assert (=> bs!886080 (= lambda!177751 lambda!177531)))

(declare-fun bs!886081 () Bool)

(assert (= bs!886081 (and d!1407774 d!1407278)))

(assert (=> bs!886081 (= lambda!177751 lambda!177565)))

(declare-fun bs!886082 () Bool)

(assert (= bs!886082 (and d!1407774 d!1407590)))

(assert (=> bs!886082 (= lambda!177751 lambda!177720)))

(declare-fun bs!886083 () Bool)

(assert (= bs!886083 (and d!1407774 d!1407216)))

(assert (=> bs!886083 (= lambda!177751 lambda!177544)))

(declare-fun bs!886084 () Bool)

(assert (= bs!886084 (and d!1407774 d!1407302)))

(assert (=> bs!886084 (= lambda!177751 lambda!177568)))

(declare-fun bs!886085 () Bool)

(assert (= bs!886085 (and d!1407774 d!1407334)))

(assert (=> bs!886085 (= lambda!177751 lambda!177577)))

(declare-fun bs!886086 () Bool)

(assert (= bs!886086 (and d!1407774 d!1407604)))

(assert (=> bs!886086 (= lambda!177751 lambda!177727)))

(declare-fun bs!886087 () Bool)

(assert (= bs!886087 (and d!1407774 d!1407530)))

(assert (=> bs!886087 (= lambda!177751 lambda!177706)))

(declare-fun bs!886088 () Bool)

(assert (= bs!886088 (and d!1407774 d!1407316)))

(assert (=> bs!886088 (= lambda!177751 lambda!177573)))

(declare-fun bs!886089 () Bool)

(assert (= bs!886089 (and d!1407774 d!1407722)))

(assert (=> bs!886089 (= lambda!177751 lambda!177738)))

(declare-fun bs!886090 () Bool)

(assert (= bs!886090 (and d!1407774 d!1407268)))

(assert (=> bs!886090 (= lambda!177751 lambda!177556)))

(declare-fun bs!886091 () Bool)

(assert (= bs!886091 (and d!1407774 d!1407314)))

(assert (=> bs!886091 (= lambda!177751 lambda!177572)))

(declare-fun bs!886092 () Bool)

(assert (= bs!886092 (and d!1407774 d!1407306)))

(assert (=> bs!886092 (not (= lambda!177751 lambda!177571))))

(declare-fun bs!886093 () Bool)

(assert (= bs!886093 (and d!1407774 d!1407402)))

(assert (=> bs!886093 (= lambda!177751 lambda!177636)))

(declare-fun bs!886094 () Bool)

(assert (= bs!886094 (and d!1407774 d!1407672)))

(assert (=> bs!886094 (= lambda!177751 lambda!177733)))

(declare-fun bs!886095 () Bool)

(assert (= bs!886095 (and d!1407774 d!1407320)))

(assert (=> bs!886095 (= lambda!177751 lambda!177576)))

(declare-fun lt!1721764 () ListMap!3717)

(assert (=> d!1407774 (invariantList!1058 (toList!4456 lt!1721764))))

(declare-fun e!2834616 () ListMap!3717)

(assert (=> d!1407774 (= lt!1721764 e!2834616)))

(declare-fun c!777113 () Bool)

(assert (=> d!1407774 (= c!777113 ((_ is Cons!50816) (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))

(assert (=> d!1407774 (forall!10389 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)) lambda!177751)))

(assert (=> d!1407774 (= (extractMap!1280 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) lt!1721764)))

(declare-fun b!4548454 () Bool)

(assert (=> b!4548454 (= e!2834616 (addToMapMapFromBucket!744 (_2!28960 (h!56711 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))) (extractMap!1280 (t!357906 (t!357906 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))))))))

(declare-fun b!4548455 () Bool)

(assert (=> b!4548455 (= e!2834616 (ListMap!3718 Nil!50815))))

(assert (= (and d!1407774 c!777113) b!4548454))

(assert (= (and d!1407774 (not c!777113)) b!4548455))

(declare-fun m!5321847 () Bool)

(assert (=> d!1407774 m!5321847))

(declare-fun m!5321849 () Bool)

(assert (=> d!1407774 m!5321849))

(declare-fun m!5321851 () Bool)

(assert (=> b!4548454 m!5321851))

(assert (=> b!4548454 m!5321851))

(declare-fun m!5321853 () Bool)

(assert (=> b!4548454 m!5321853))

(assert (=> b!4547393 d!1407774))

(declare-fun d!1407776 () Bool)

(declare-fun res!1896627 () Bool)

(declare-fun e!2834617 () Bool)

(assert (=> d!1407776 (=> res!1896627 e!2834617)))

(assert (=> d!1407776 (= res!1896627 (and ((_ is Cons!50815) (t!357905 newBucket!178)) (= (_1!28959 (h!56710 (t!357905 newBucket!178))) (_1!28959 (h!56710 newBucket!178)))))))

(assert (=> d!1407776 (= (containsKey!1927 (t!357905 newBucket!178) (_1!28959 (h!56710 newBucket!178))) e!2834617)))

(declare-fun b!4548456 () Bool)

(declare-fun e!2834618 () Bool)

(assert (=> b!4548456 (= e!2834617 e!2834618)))

(declare-fun res!1896628 () Bool)

(assert (=> b!4548456 (=> (not res!1896628) (not e!2834618))))

(assert (=> b!4548456 (= res!1896628 ((_ is Cons!50815) (t!357905 newBucket!178)))))

(declare-fun b!4548457 () Bool)

(assert (=> b!4548457 (= e!2834618 (containsKey!1927 (t!357905 (t!357905 newBucket!178)) (_1!28959 (h!56710 newBucket!178))))))

(assert (= (and d!1407776 (not res!1896627)) b!4548456))

(assert (= (and b!4548456 res!1896628) b!4548457))

(declare-fun m!5321855 () Bool)

(assert (=> b!4548457 m!5321855))

(assert (=> b!4547621 d!1407776))

(declare-fun e!2834619 () Bool)

(declare-fun tp!1338956 () Bool)

(declare-fun b!4548458 () Bool)

(assert (=> b!4548458 (= e!2834619 (and tp_is_empty!28173 tp_is_empty!28175 tp!1338956))))

(assert (=> b!4547629 (= tp!1338945 e!2834619)))

(assert (= (and b!4547629 ((_ is Cons!50815) (t!357905 (t!357905 newBucket!178)))) b!4548458))

(declare-fun tp!1338957 () Bool)

(declare-fun e!2834620 () Bool)

(declare-fun b!4548459 () Bool)

(assert (=> b!4548459 (= e!2834620 (and tp_is_empty!28173 tp_is_empty!28175 tp!1338957))))

(assert (=> b!4547634 (= tp!1338950 e!2834620)))

(assert (= (and b!4547634 ((_ is Cons!50815) (_2!28960 (h!56711 (toList!4455 lm!1477))))) b!4548459))

(declare-fun b!4548460 () Bool)

(declare-fun e!2834621 () Bool)

(declare-fun tp!1338958 () Bool)

(declare-fun tp!1338959 () Bool)

(assert (=> b!4548460 (= e!2834621 (and tp!1338958 tp!1338959))))

(assert (=> b!4547634 (= tp!1338951 e!2834621)))

(assert (= (and b!4547634 ((_ is Cons!50816) (t!357906 (toList!4455 lm!1477)))) b!4548460))

(declare-fun b_lambda!159117 () Bool)

(assert (= b_lambda!159077 (or d!1407334 b_lambda!159117)))

(declare-fun bs!886096 () Bool)

(declare-fun d!1407778 () Bool)

(assert (= bs!886096 (and d!1407778 d!1407334)))

(assert (=> bs!886096 (= (dynLambda!21244 lambda!177577 (h!56711 (toList!4455 lm!1477))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(assert (=> bs!886096 m!5320263))

(assert (=> b!4548339 d!1407778))

(declare-fun b_lambda!159119 () Bool)

(assert (= b_lambda!159067 (or d!1407316 b_lambda!159119)))

(declare-fun bs!886097 () Bool)

(declare-fun d!1407780 () Bool)

(assert (= bs!886097 (and d!1407780 d!1407316)))

(assert (=> bs!886097 (= (dynLambda!21244 lambda!177573 (h!56711 (t!357906 (toList!4455 lm!1477)))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))))))

(assert (=> bs!886097 m!5321319))

(assert (=> b!4548294 d!1407780))

(declare-fun b_lambda!159121 () Bool)

(assert (= b_lambda!159113 (or d!1407314 b_lambda!159121)))

(declare-fun bs!886098 () Bool)

(declare-fun d!1407782 () Bool)

(assert (= bs!886098 (and d!1407782 d!1407314)))

(assert (=> bs!886098 (= (dynLambda!21244 lambda!177572 (h!56711 (toList!4455 lt!1720913))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lt!1720913)))))))

(assert (=> bs!886098 m!5321415))

(assert (=> b!4548422 d!1407782))

(declare-fun b_lambda!159123 () Bool)

(assert (= b_lambda!159071 (or d!1407306 b_lambda!159123)))

(declare-fun bs!886099 () Bool)

(declare-fun d!1407784 () Bool)

(assert (= bs!886099 (and d!1407784 d!1407306)))

(assert (=> bs!886099 (= (dynLambda!21244 lambda!177571 (h!56711 (toList!4455 lm!1477))) (allKeysSameHash!1078 (_2!28960 (h!56711 (toList!4455 lm!1477))) (_1!28960 (h!56711 (toList!4455 lm!1477))) hashF!1107))))

(declare-fun m!5321857 () Bool)

(assert (=> bs!886099 m!5321857))

(assert (=> b!4548307 d!1407784))

(declare-fun b_lambda!159125 () Bool)

(assert (= b_lambda!159075 (or d!1407302 b_lambda!159125)))

(declare-fun bs!886100 () Bool)

(declare-fun d!1407786 () Bool)

(assert (= bs!886100 (and d!1407786 d!1407302)))

(assert (=> bs!886100 (= (dynLambda!21244 lambda!177568 (h!56711 (toList!4455 lm!1477))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(assert (=> bs!886100 m!5320263))

(assert (=> b!4548337 d!1407786))

(declare-fun b_lambda!159127 () Bool)

(assert (= b_lambda!159055 (or d!1407214 b_lambda!159127)))

(declare-fun bs!886101 () Bool)

(declare-fun d!1407788 () Bool)

(assert (= bs!886101 (and d!1407788 d!1407214)))

(assert (=> bs!886101 (= (dynLambda!21245 lambda!177534 (h!56710 newBucket!178)) (= (hash!2972 hashF!1107 (_1!28959 (h!56710 newBucket!178))) hash!344))))

(declare-fun m!5321859 () Bool)

(assert (=> bs!886101 m!5321859))

(assert (=> b!4548187 d!1407788))

(declare-fun b_lambda!159129 () Bool)

(assert (= b_lambda!159045 (or start!451856 b_lambda!159129)))

(declare-fun bs!886102 () Bool)

(declare-fun d!1407790 () Bool)

(assert (= bs!886102 (and d!1407790 start!451856)))

(assert (=> bs!886102 (= (dynLambda!21244 lambda!177531 (h!56711 (t!357906 (toList!4455 lm!1477)))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (t!357906 (toList!4455 lm!1477))))))))

(assert (=> bs!886102 m!5321319))

(assert (=> b!4547924 d!1407790))

(declare-fun b_lambda!159131 () Bool)

(assert (= b_lambda!159115 (or d!1407268 b_lambda!159131)))

(declare-fun bs!886103 () Bool)

(declare-fun d!1407792 () Bool)

(assert (= bs!886103 (and d!1407792 d!1407268)))

(assert (=> bs!886103 (= (dynLambda!21244 lambda!177556 (h!56711 (Cons!50816 lt!1720912 Nil!50816))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (Cons!50816 lt!1720912 Nil!50816)))))))

(assert (=> bs!886103 m!5320629))

(assert (=> b!4548428 d!1407792))

(declare-fun b_lambda!159133 () Bool)

(assert (= b_lambda!159063 (or start!451856 b_lambda!159133)))

(assert (=> d!1407586 d!1407344))

(declare-fun b_lambda!159135 () Bool)

(assert (= b_lambda!159053 (or d!1407216 b_lambda!159135)))

(declare-fun bs!886104 () Bool)

(declare-fun d!1407794 () Bool)

(assert (= bs!886104 (and d!1407794 d!1407216)))

(assert (=> bs!886104 (= (dynLambda!21244 lambda!177544 (h!56711 lt!1720918)) (noDuplicateKeys!1224 (_2!28960 (h!56711 lt!1720918))))))

(assert (=> bs!886104 m!5321125))

(assert (=> b!4548122 d!1407794))

(declare-fun b_lambda!159137 () Bool)

(assert (= b_lambda!159083 (or d!1407278 b_lambda!159137)))

(declare-fun bs!886105 () Bool)

(declare-fun d!1407796 () Bool)

(assert (= bs!886105 (and d!1407796 d!1407278)))

(assert (=> bs!886105 (= (dynLambda!21244 lambda!177565 (h!56711 (toList!4455 (ListLongMap!3088 lt!1720918)))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 (ListLongMap!3088 lt!1720918))))))))

(declare-fun m!5321861 () Bool)

(assert (=> bs!886105 m!5321861))

(assert (=> b!4548407 d!1407796))

(declare-fun b_lambda!159139 () Bool)

(assert (= b_lambda!159069 (or d!1407320 b_lambda!159139)))

(declare-fun bs!886106 () Bool)

(declare-fun d!1407798 () Bool)

(assert (= bs!886106 (and d!1407798 d!1407320)))

(assert (=> bs!886106 (= (dynLambda!21244 lambda!177576 (h!56711 (toList!4455 lm!1477))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (toList!4455 lm!1477)))))))

(assert (=> bs!886106 m!5320263))

(assert (=> b!4548303 d!1407798))

(declare-fun b_lambda!159141 () Bool)

(assert (= b_lambda!159079 (or d!1407226 b_lambda!159141)))

(declare-fun bs!886107 () Bool)

(declare-fun d!1407800 () Bool)

(assert (= bs!886107 (and d!1407800 d!1407226)))

(assert (=> bs!886107 (= (dynLambda!21244 lambda!177545 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816))) (noDuplicateKeys!1224 (_2!28960 (h!56711 (Cons!50816 (tuple2!51333 hash!344 (_2!28960 (h!56711 (toList!4455 lm!1477)))) Nil!50816)))))))

(assert (=> bs!886107 m!5321839))

(assert (=> b!4548341 d!1407800))

(check-sat (not bm!317203) (not b!4548430) (not b!4548119) (not bm!317221) (not d!1407672) (not b!4548131) (not d!1407432) (not b!4548352) (not b!4548340) (not d!1407552) (not d!1407604) (not b!4548159) (not d!1407368) (not b!4548281) (not b!4548446) (not b!4548326) (not b!4548308) (not b!4548347) (not b!4548216) (not b!4548442) (not b!4548300) (not d!1407430) (not d!1407644) (not b!4548353) (not d!1407530) (not d!1407682) (not d!1407542) (not b_lambda!159127) (not b!4547873) (not b!4548252) (not b_lambda!159125) (not b!4547865) (not b!4547700) (not b!4548320) (not b!4548242) (not b!4548168) (not d!1407660) (not b!4548207) (not d!1407372) (not b!4547715) (not b!4547931) (not bm!317180) (not b!4548432) (not b!4548253) (not bm!317157) (not d!1407766) (not b!4547871) (not b!4547934) (not b!4547702) (not b!4548441) (not b!4548295) (not b!4548108) (not b!4548161) (not bm!317222) (not d!1407506) (not d!1407416) (not d!1407534) (not d!1407656) (not b!4548322) (not b!4548086) (not b!4548010) (not b!4547864) (not b!4548316) (not bs!886103) tp_is_empty!28175 (not b!4548313) (not bm!317217) (not bs!886097) (not b!4547693) (not bm!317205) (not b!4548425) (not b!4548246) (not b!4547914) (not b!4548241) (not d!1407748) (not b!4548449) (not d!1407762) (not bs!886098) (not d!1407774) (not d!1407628) (not b!4548004) (not bm!317156) (not bs!886096) (not b!4548251) (not b!4548350) (not b!4548014) (not bm!317204) (not d!1407408) (not b!4547933) (not d!1407634) (not b!4548033) (not d!1407364) (not d!1407612) (not b!4547875) (not b!4548091) (not b!4548008) (not d!1407466) (not d!1407758) (not b_lambda!159139) (not d!1407664) (not b!4548034) (not bm!317181) (not b!4547701) (not b!4547868) (not b!4548158) (not b_lambda!159123) (not b!4548012) (not b!4548426) (not bm!317196) (not bm!317220) (not bm!317202) (not d!1407714) (not b!4548454) (not bm!317200) (not b_lambda!159037) (not bs!886107) (not b!4548271) (not d!1407770) (not b!4548209) (not b!4548018) (not b!4548156) (not bs!886101) (not b!4548459) (not b!4548197) (not d!1407528) (not b!4548291) (not b!4548210) (not b!4548458) (not b!4548065) (not b!4548321) (not b!4548338) (not b_lambda!159131) (not b!4547926) (not d!1407496) (not d!1407588) (not b!4548120) (not b!4548443) (not b!4548000) (not d!1407510) (not b!4548123) (not b!4548134) (not b!4548431) (not bs!886102) (not d!1407410) (not b_lambda!159137) (not d!1407610) (not b!4548238) (not b!4547925) (not d!1407492) (not b!4548304) (not bm!317195) (not b_lambda!159135) (not b!4547930) (not b!4547928) (not b!4548193) (not b_lambda!159119) (not b!4548213) (not b!4548244) (not d!1407722) (not b!4548073) (not b!4548457) (not d!1407476) (not b!4548208) (not b!4548298) (not bs!886099) (not d!1407594) (not bm!317183) (not d!1407490) (not b!4548289) (not bm!317182) (not d!1407750) (not b!4548420) (not d!1407556) (not b!4548188) (not b!4548323) (not d!1407652) (not bs!886100) (not d!1407572) (not d!1407462) (not b!4548126) (not d!1407558) (not b!4548243) (not b!4548169) (not b!4548083) (not b!4548451) (not b!4548427) (not b!4547866) (not b!4548349) (not b!4548003) (not bm!317184) (not b!4548311) (not bm!317219) (not b!4548121) (not b!4548171) (not b!4548066) (not bm!317201) (not b!4548006) (not b_lambda!159129) (not b!4548453) (not b!4548015) (not b!4547927) (not b!4548408) (not d!1407486) (not b!4548195) (not d!1407402) (not b!4548423) (not d!1407670) (not d!1407404) (not b!4548211) (not b!4547893) (not b!4548167) (not bs!886106) (not bm!317218) (not b!4548032) (not b!4547892) (not b!4548255) (not bm!317213) (not d!1407606) (not b!4548411) (not d!1407632) (not b!4547915) (not bs!886104) (not b!4548275) (not d!1407648) (not b_lambda!159133) (not d!1407772) (not b!4548440) (not d!1407360) (not bm!317147) (not b!4548354) (not bm!317194) (not b!4548346) (not b!4548093) (not b_lambda!159121) (not b!4548106) (not b_lambda!159035) (not b!4547886) (not b!4548247) (not d!1407516) (not bm!317209) (not b!4548448) (not b!4548342) (not b!4548071) (not d!1407500) (not d!1407590) (not b!4548162) (not bm!317179) (not b!4548445) (not b!4548137) (not bm!317145) (not b!4548068) (not b!4548345) (not b!4548429) (not d!1407414) (not bm!317146) (not b!4548450) (not b!4548434) (not b!4547918) (not b_lambda!159141) (not bs!886105) (not b!4548157) (not b!4548218) tp_is_empty!28173 (not b!4548447) (not b!4548460) (not d!1407614) (not b_lambda!159117))
(check-sat)
