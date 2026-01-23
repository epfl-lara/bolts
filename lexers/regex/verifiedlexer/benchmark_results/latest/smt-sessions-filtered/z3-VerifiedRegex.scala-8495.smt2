; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!442044 () Bool)

(assert start!442044)

(declare-fun b!4487024 () Bool)

(declare-fun e!2794642 () Bool)

(declare-fun e!2794640 () Bool)

(assert (=> b!4487024 (= e!2794642 e!2794640)))

(declare-fun res!1864034 () Bool)

(assert (=> b!4487024 (=> (not res!1864034) (not e!2794640))))

(declare-fun lt!1672007 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4487024 (= res!1864034 (= lt!1672007 hash!344))))

(declare-datatypes ((Hashable!5491 0))(
  ( (HashableExt!5490 (__x!31194 Int)) )
))
(declare-fun hashF!1107 () Hashable!5491)

(declare-datatypes ((K!11880 0))(
  ( (K!11881 (val!17775 Int)) )
))
(declare-fun key!3287 () K!11880)

(declare-fun hash!2607 (Hashable!5491 K!11880) (_ BitVec 64))

(assert (=> b!4487024 (= lt!1672007 (hash!2607 hashF!1107 key!3287))))

(declare-fun b!4487025 () Bool)

(declare-fun res!1864031 () Bool)

(declare-fun e!2794644 () Bool)

(assert (=> b!4487025 (=> res!1864031 e!2794644)))

(declare-datatypes ((V!12126 0))(
  ( (V!12127 (val!17776 Int)) )
))
(declare-datatypes ((tuple2!50818 0))(
  ( (tuple2!50819 (_1!28703 K!11880) (_2!28703 V!12126)) )
))
(declare-datatypes ((List!50590 0))(
  ( (Nil!50466) (Cons!50466 (h!56267 tuple2!50818) (t!357544 List!50590)) )
))
(declare-datatypes ((tuple2!50820 0))(
  ( (tuple2!50821 (_1!28704 (_ BitVec 64)) (_2!28704 List!50590)) )
))
(declare-datatypes ((List!50591 0))(
  ( (Nil!50467) (Cons!50467 (h!56268 tuple2!50820) (t!357545 List!50591)) )
))
(declare-datatypes ((ListLongMap!2831 0))(
  ( (ListLongMap!2832 (toList!4199 List!50591)) )
))
(declare-fun lm!1477 () ListLongMap!2831)

(get-info :version)

(assert (=> b!4487025 (= res!1864031 (or ((_ is Nil!50467) (toList!4199 lm!1477)) (= (_1!28704 (h!56268 (toList!4199 lm!1477))) hash!344)))))

(declare-fun b!4487026 () Bool)

(declare-fun tp!1337080 () Bool)

(declare-fun tp_is_empty!27663 () Bool)

(declare-fun tp_is_empty!27661 () Bool)

(declare-fun e!2794650 () Bool)

(assert (=> b!4487026 (= e!2794650 (and tp_is_empty!27661 tp_is_empty!27663 tp!1337080))))

(declare-fun b!4487027 () Bool)

(declare-fun e!2794647 () Bool)

(declare-fun e!2794643 () Bool)

(assert (=> b!4487027 (= e!2794647 e!2794643)))

(declare-fun res!1864036 () Bool)

(assert (=> b!4487027 (=> res!1864036 e!2794643)))

(declare-fun lt!1672017 () List!50590)

(declare-fun newBucket!178 () List!50590)

(declare-fun removePairForKey!723 (List!50590 K!11880) List!50590)

(assert (=> b!4487027 (= res!1864036 (not (= newBucket!178 (removePairForKey!723 lt!1672017 key!3287))))))

(declare-fun lt!1672003 () tuple2!50820)

(declare-datatypes ((Unit!90250 0))(
  ( (Unit!90251) )
))
(declare-fun lt!1672005 () Unit!90250)

(declare-fun lambda!166645 () Int)

(declare-fun lt!1672015 () ListLongMap!2831)

(declare-fun forallContained!2375 (List!50591 Int tuple2!50820) Unit!90250)

(assert (=> b!4487027 (= lt!1672005 (forallContained!2375 (toList!4199 lt!1672015) lambda!166645 lt!1672003))))

(declare-fun contains!13095 (List!50591 tuple2!50820) Bool)

(assert (=> b!4487027 (contains!13095 (toList!4199 lt!1672015) lt!1672003)))

(assert (=> b!4487027 (= lt!1672003 (tuple2!50821 hash!344 lt!1672017))))

(declare-fun lt!1672014 () Unit!90250)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!608 (List!50591 (_ BitVec 64) List!50590) Unit!90250)

(assert (=> b!4487027 (= lt!1672014 (lemmaGetValueByKeyImpliesContainsTuple!608 (toList!4199 lt!1672015) hash!344 lt!1672017))))

(declare-fun contains!13096 (ListLongMap!2831 (_ BitVec 64)) Bool)

(assert (=> b!4487027 (contains!13096 lt!1672015 lt!1672007)))

(declare-fun lt!1672012 () Unit!90250)

(declare-fun lemmaInGenMapThenLongMapContainsHash!170 (ListLongMap!2831 K!11880 Hashable!5491) Unit!90250)

(assert (=> b!4487027 (= lt!1672012 (lemmaInGenMapThenLongMapContainsHash!170 lt!1672015 key!3287 hashF!1107))))

(declare-fun b!4487028 () Bool)

(declare-fun res!1864042 () Bool)

(assert (=> b!4487028 (=> (not res!1864042) (not e!2794642))))

(declare-datatypes ((ListMap!3461 0))(
  ( (ListMap!3462 (toList!4200 List!50590)) )
))
(declare-fun contains!13097 (ListMap!3461 K!11880) Bool)

(declare-fun extractMap!1152 (List!50591) ListMap!3461)

(assert (=> b!4487028 (= res!1864042 (contains!13097 (extractMap!1152 (toList!4199 lm!1477)) key!3287))))

(declare-fun res!1864032 () Bool)

(assert (=> start!442044 (=> (not res!1864032) (not e!2794642))))

(declare-fun forall!10116 (List!50591 Int) Bool)

(assert (=> start!442044 (= res!1864032 (forall!10116 (toList!4199 lm!1477) lambda!166645))))

(assert (=> start!442044 e!2794642))

(assert (=> start!442044 true))

(declare-fun e!2794646 () Bool)

(declare-fun inv!66064 (ListLongMap!2831) Bool)

(assert (=> start!442044 (and (inv!66064 lm!1477) e!2794646)))

(assert (=> start!442044 tp_is_empty!27661))

(assert (=> start!442044 e!2794650))

(declare-fun b!4487029 () Bool)

(declare-fun e!2794651 () Bool)

(declare-fun e!2794645 () Bool)

(assert (=> b!4487029 (= e!2794651 e!2794645)))

(declare-fun res!1864043 () Bool)

(assert (=> b!4487029 (=> res!1864043 e!2794645)))

(declare-fun containsKeyBiggerList!76 (List!50591 K!11880) Bool)

(assert (=> b!4487029 (= res!1864043 (not (containsKeyBiggerList!76 (t!357545 (toList!4199 lm!1477)) key!3287)))))

(assert (=> b!4487029 (containsKeyBiggerList!76 (toList!4199 lt!1672015) key!3287)))

(declare-fun lt!1672013 () Unit!90250)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!12 (ListLongMap!2831 K!11880 Hashable!5491) Unit!90250)

(assert (=> b!4487029 (= lt!1672013 (lemmaInLongMapThenContainsKeyBiggerList!12 lt!1672015 key!3287 hashF!1107))))

(declare-fun b!4487030 () Bool)

(declare-fun e!2794648 () Bool)

(declare-fun e!2794641 () Bool)

(assert (=> b!4487030 (= e!2794648 e!2794641)))

(declare-fun res!1864030 () Bool)

(assert (=> b!4487030 (=> res!1864030 e!2794641)))

(declare-fun lt!1672008 () List!50590)

(assert (=> b!4487030 (= res!1864030 (not (= lt!1672017 lt!1672008)))))

(declare-fun apply!11833 (ListLongMap!2831 (_ BitVec 64)) List!50590)

(assert (=> b!4487030 (= lt!1672017 (apply!11833 lt!1672015 hash!344))))

(declare-fun b!4487031 () Bool)

(declare-fun res!1864041 () Bool)

(assert (=> b!4487031 (=> (not res!1864041) (not e!2794640))))

(declare-fun allKeysSameHash!950 (List!50590 (_ BitVec 64) Hashable!5491) Bool)

(assert (=> b!4487031 (= res!1864041 (allKeysSameHash!950 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4487032 () Bool)

(declare-fun tp!1337081 () Bool)

(assert (=> b!4487032 (= e!2794646 tp!1337081)))

(declare-fun b!4487033 () Bool)

(declare-fun res!1864040 () Bool)

(assert (=> b!4487033 (=> res!1864040 e!2794647)))

(assert (=> b!4487033 (= res!1864040 (not (forall!10116 (toList!4199 lt!1672015) lambda!166645)))))

(declare-fun b!4487034 () Bool)

(assert (=> b!4487034 (= e!2794645 e!2794647)))

(declare-fun res!1864038 () Bool)

(assert (=> b!4487034 (=> res!1864038 e!2794647)))

(assert (=> b!4487034 (= res!1864038 (not (contains!13097 (extractMap!1152 (t!357545 (toList!4199 lm!1477))) key!3287)))))

(assert (=> b!4487034 (contains!13097 (extractMap!1152 (toList!4199 lt!1672015)) key!3287)))

(declare-fun lt!1672010 () Unit!90250)

(declare-fun lemmaListContainsThenExtractedMapContains!66 (ListLongMap!2831 K!11880 Hashable!5491) Unit!90250)

(assert (=> b!4487034 (= lt!1672010 (lemmaListContainsThenExtractedMapContains!66 lt!1672015 key!3287 hashF!1107))))

(declare-fun b!4487035 () Bool)

(assert (=> b!4487035 (= e!2794644 e!2794648)))

(declare-fun res!1864028 () Bool)

(assert (=> b!4487035 (=> res!1864028 e!2794648)))

(assert (=> b!4487035 (= res!1864028 (not (contains!13096 lt!1672015 hash!344)))))

(declare-fun tail!7619 (ListLongMap!2831) ListLongMap!2831)

(assert (=> b!4487035 (= lt!1672015 (tail!7619 lm!1477))))

(declare-fun b!4487036 () Bool)

(declare-fun res!1864029 () Bool)

(assert (=> b!4487036 (=> res!1864029 e!2794644)))

(declare-fun noDuplicateKeys!1096 (List!50590) Bool)

(assert (=> b!4487036 (= res!1864029 (not (noDuplicateKeys!1096 newBucket!178)))))

(declare-fun b!4487037 () Bool)

(declare-fun res!1864037 () Bool)

(assert (=> b!4487037 (=> res!1864037 e!2794641)))

(declare-fun lt!1672018 () tuple2!50820)

(assert (=> b!4487037 (= res!1864037 (not (contains!13095 (t!357545 (toList!4199 lm!1477)) lt!1672018)))))

(declare-fun b!4487038 () Bool)

(declare-fun res!1864044 () Bool)

(assert (=> b!4487038 (=> (not res!1864044) (not e!2794642))))

(declare-fun allKeysSameHashInMap!1203 (ListLongMap!2831 Hashable!5491) Bool)

(assert (=> b!4487038 (= res!1864044 (allKeysSameHashInMap!1203 lm!1477 hashF!1107))))

(declare-fun b!4487039 () Bool)

(assert (=> b!4487039 (= e!2794641 e!2794651)))

(declare-fun res!1864035 () Bool)

(assert (=> b!4487039 (=> res!1864035 e!2794651)))

(declare-fun lt!1672002 () Bool)

(assert (=> b!4487039 (= res!1864035 lt!1672002)))

(declare-fun lt!1672011 () Unit!90250)

(declare-fun e!2794649 () Unit!90250)

(assert (=> b!4487039 (= lt!1672011 e!2794649)))

(declare-fun c!764221 () Bool)

(assert (=> b!4487039 (= c!764221 lt!1672002)))

(declare-fun containsKey!1612 (List!50590 K!11880) Bool)

(assert (=> b!4487039 (= lt!1672002 (not (containsKey!1612 lt!1672008 key!3287)))))

(declare-fun b!4487040 () Bool)

(assert (=> b!4487040 (= e!2794643 (forall!10116 (toList!4199 lt!1672015) lambda!166645))))

(declare-fun b!4487041 () Bool)

(declare-fun Unit!90252 () Unit!90250)

(assert (=> b!4487041 (= e!2794649 Unit!90252)))

(declare-fun b!4487042 () Bool)

(declare-fun res!1864033 () Bool)

(assert (=> b!4487042 (=> res!1864033 e!2794647)))

(assert (=> b!4487042 (= res!1864033 (not (allKeysSameHashInMap!1203 lt!1672015 hashF!1107)))))

(declare-fun b!4487043 () Bool)

(declare-fun Unit!90253 () Unit!90250)

(assert (=> b!4487043 (= e!2794649 Unit!90253)))

(declare-fun lt!1672006 () Unit!90250)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!84 (ListLongMap!2831 K!11880 Hashable!5491) Unit!90250)

(assert (=> b!4487043 (= lt!1672006 (lemmaNotInItsHashBucketThenNotInMap!84 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4487043 false))

(declare-fun b!4487044 () Bool)

(assert (=> b!4487044 (= e!2794640 (not e!2794644))))

(declare-fun res!1864039 () Bool)

(assert (=> b!4487044 (=> res!1864039 e!2794644)))

(assert (=> b!4487044 (= res!1864039 (not (= newBucket!178 (removePairForKey!723 lt!1672008 key!3287))))))

(declare-fun lt!1672016 () Unit!90250)

(assert (=> b!4487044 (= lt!1672016 (forallContained!2375 (toList!4199 lm!1477) lambda!166645 lt!1672018))))

(assert (=> b!4487044 (contains!13095 (toList!4199 lm!1477) lt!1672018)))

(assert (=> b!4487044 (= lt!1672018 (tuple2!50821 hash!344 lt!1672008))))

(declare-fun lt!1672004 () Unit!90250)

(assert (=> b!4487044 (= lt!1672004 (lemmaGetValueByKeyImpliesContainsTuple!608 (toList!4199 lm!1477) hash!344 lt!1672008))))

(assert (=> b!4487044 (= lt!1672008 (apply!11833 lm!1477 hash!344))))

(assert (=> b!4487044 (contains!13096 lm!1477 lt!1672007)))

(declare-fun lt!1672009 () Unit!90250)

(assert (=> b!4487044 (= lt!1672009 (lemmaInGenMapThenLongMapContainsHash!170 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!442044 res!1864032) b!4487038))

(assert (= (and b!4487038 res!1864044) b!4487028))

(assert (= (and b!4487028 res!1864042) b!4487024))

(assert (= (and b!4487024 res!1864034) b!4487031))

(assert (= (and b!4487031 res!1864041) b!4487044))

(assert (= (and b!4487044 (not res!1864039)) b!4487036))

(assert (= (and b!4487036 (not res!1864029)) b!4487025))

(assert (= (and b!4487025 (not res!1864031)) b!4487035))

(assert (= (and b!4487035 (not res!1864028)) b!4487030))

(assert (= (and b!4487030 (not res!1864030)) b!4487037))

(assert (= (and b!4487037 (not res!1864037)) b!4487039))

(assert (= (and b!4487039 c!764221) b!4487043))

(assert (= (and b!4487039 (not c!764221)) b!4487041))

(assert (= (and b!4487039 (not res!1864035)) b!4487029))

(assert (= (and b!4487029 (not res!1864043)) b!4487034))

(assert (= (and b!4487034 (not res!1864038)) b!4487033))

(assert (= (and b!4487033 (not res!1864040)) b!4487042))

(assert (= (and b!4487042 (not res!1864033)) b!4487027))

(assert (= (and b!4487027 (not res!1864036)) b!4487040))

(assert (= start!442044 b!4487032))

(assert (= (and start!442044 ((_ is Cons!50466) newBucket!178)) b!4487026))

(declare-fun m!5208253 () Bool)

(assert (=> b!4487029 m!5208253))

(declare-fun m!5208255 () Bool)

(assert (=> b!4487029 m!5208255))

(declare-fun m!5208257 () Bool)

(assert (=> b!4487029 m!5208257))

(declare-fun m!5208259 () Bool)

(assert (=> b!4487031 m!5208259))

(declare-fun m!5208261 () Bool)

(assert (=> b!4487030 m!5208261))

(declare-fun m!5208263 () Bool)

(assert (=> b!4487037 m!5208263))

(declare-fun m!5208265 () Bool)

(assert (=> b!4487036 m!5208265))

(declare-fun m!5208267 () Bool)

(assert (=> b!4487039 m!5208267))

(declare-fun m!5208269 () Bool)

(assert (=> b!4487024 m!5208269))

(declare-fun m!5208271 () Bool)

(assert (=> b!4487034 m!5208271))

(declare-fun m!5208273 () Bool)

(assert (=> b!4487034 m!5208273))

(assert (=> b!4487034 m!5208271))

(declare-fun m!5208275 () Bool)

(assert (=> b!4487034 m!5208275))

(declare-fun m!5208277 () Bool)

(assert (=> b!4487034 m!5208277))

(assert (=> b!4487034 m!5208273))

(declare-fun m!5208279 () Bool)

(assert (=> b!4487034 m!5208279))

(declare-fun m!5208281 () Bool)

(assert (=> b!4487040 m!5208281))

(declare-fun m!5208283 () Bool)

(assert (=> start!442044 m!5208283))

(declare-fun m!5208285 () Bool)

(assert (=> start!442044 m!5208285))

(declare-fun m!5208287 () Bool)

(assert (=> b!4487038 m!5208287))

(declare-fun m!5208289 () Bool)

(assert (=> b!4487027 m!5208289))

(declare-fun m!5208291 () Bool)

(assert (=> b!4487027 m!5208291))

(declare-fun m!5208293 () Bool)

(assert (=> b!4487027 m!5208293))

(declare-fun m!5208295 () Bool)

(assert (=> b!4487027 m!5208295))

(declare-fun m!5208297 () Bool)

(assert (=> b!4487027 m!5208297))

(declare-fun m!5208299 () Bool)

(assert (=> b!4487027 m!5208299))

(declare-fun m!5208301 () Bool)

(assert (=> b!4487035 m!5208301))

(declare-fun m!5208303 () Bool)

(assert (=> b!4487035 m!5208303))

(declare-fun m!5208305 () Bool)

(assert (=> b!4487042 m!5208305))

(declare-fun m!5208307 () Bool)

(assert (=> b!4487043 m!5208307))

(declare-fun m!5208309 () Bool)

(assert (=> b!4487044 m!5208309))

(declare-fun m!5208311 () Bool)

(assert (=> b!4487044 m!5208311))

(declare-fun m!5208313 () Bool)

(assert (=> b!4487044 m!5208313))

(declare-fun m!5208315 () Bool)

(assert (=> b!4487044 m!5208315))

(declare-fun m!5208317 () Bool)

(assert (=> b!4487044 m!5208317))

(declare-fun m!5208319 () Bool)

(assert (=> b!4487044 m!5208319))

(declare-fun m!5208321 () Bool)

(assert (=> b!4487044 m!5208321))

(assert (=> b!4487033 m!5208281))

(declare-fun m!5208323 () Bool)

(assert (=> b!4487028 m!5208323))

(assert (=> b!4487028 m!5208323))

(declare-fun m!5208325 () Bool)

(assert (=> b!4487028 m!5208325))

(check-sat (not b!4487033) (not b!4487036) (not b!4487031) (not b!4487024) (not b!4487030) tp_is_empty!27663 (not start!442044) (not b!4487034) (not b!4487040) (not b!4487037) (not b!4487026) (not b!4487043) (not b!4487039) (not b!4487032) (not b!4487027) (not b!4487028) (not b!4487044) (not b!4487038) (not b!4487035) tp_is_empty!27661 (not b!4487029) (not b!4487042))
(check-sat)
