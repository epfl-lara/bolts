; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!443976 () Bool)

(assert start!443976)

(declare-fun b!4498315 () Bool)

(declare-fun e!2802017 () Bool)

(declare-fun e!2802012 () Bool)

(assert (=> b!4498315 (= e!2802017 e!2802012)))

(declare-fun res!1869925 () Bool)

(assert (=> b!4498315 (=> res!1869925 e!2802012)))

(declare-datatypes ((K!11950 0))(
  ( (K!11951 (val!17831 Int)) )
))
(declare-datatypes ((V!12196 0))(
  ( (V!12197 (val!17832 Int)) )
))
(declare-datatypes ((tuple2!50930 0))(
  ( (tuple2!50931 (_1!28759 K!11950) (_2!28759 V!12196)) )
))
(declare-datatypes ((List!50664 0))(
  ( (Nil!50540) (Cons!50540 (h!56359 tuple2!50930) (t!357622 List!50664)) )
))
(declare-datatypes ((tuple2!50932 0))(
  ( (tuple2!50933 (_1!28760 (_ BitVec 64)) (_2!28760 List!50664)) )
))
(declare-datatypes ((List!50665 0))(
  ( (Nil!50541) (Cons!50541 (h!56360 tuple2!50932) (t!357623 List!50665)) )
))
(declare-datatypes ((ListLongMap!2887 0))(
  ( (ListLongMap!2888 (toList!4255 List!50665)) )
))
(declare-fun lt!1679939 () ListLongMap!2887)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13209 (ListLongMap!2887 (_ BitVec 64)) Bool)

(assert (=> b!4498315 (= res!1869925 (not (contains!13209 lt!1679939 hash!344)))))

(declare-fun lm!1477 () ListLongMap!2887)

(declare-fun tail!7664 (ListLongMap!2887) ListLongMap!2887)

(assert (=> b!4498315 (= lt!1679939 (tail!7664 lm!1477))))

(declare-fun b!4498316 () Bool)

(declare-fun res!1869920 () Bool)

(declare-fun e!2802007 () Bool)

(assert (=> b!4498316 (=> (not res!1869920) (not e!2802007))))

(declare-datatypes ((Hashable!5519 0))(
  ( (HashableExt!5518 (__x!31222 Int)) )
))
(declare-fun hashF!1107 () Hashable!5519)

(declare-fun allKeysSameHashInMap!1231 (ListLongMap!2887 Hashable!5519) Bool)

(assert (=> b!4498316 (= res!1869920 (allKeysSameHashInMap!1231 lm!1477 hashF!1107))))

(declare-fun b!4498317 () Bool)

(declare-datatypes ((Unit!91740 0))(
  ( (Unit!91741) )
))
(declare-fun e!2802018 () Unit!91740)

(declare-fun Unit!91742 () Unit!91740)

(assert (=> b!4498317 (= e!2802018 Unit!91742)))

(declare-fun b!4498318 () Bool)

(declare-fun res!1869923 () Bool)

(assert (=> b!4498318 (=> res!1869923 e!2802012)))

(declare-fun lt!1679933 () List!50664)

(declare-fun apply!11861 (ListLongMap!2887 (_ BitVec 64)) List!50664)

(assert (=> b!4498318 (= res!1869923 (not (= (apply!11861 lt!1679939 hash!344) lt!1679933)))))

(declare-fun res!1869915 () Bool)

(assert (=> start!443976 (=> (not res!1869915) (not e!2802007))))

(declare-fun lambda!168485 () Int)

(declare-fun forall!10173 (List!50665 Int) Bool)

(assert (=> start!443976 (= res!1869915 (forall!10173 (toList!4255 lm!1477) lambda!168485))))

(assert (=> start!443976 e!2802007))

(assert (=> start!443976 true))

(declare-fun e!2802015 () Bool)

(declare-fun inv!66134 (ListLongMap!2887) Bool)

(assert (=> start!443976 (and (inv!66134 lm!1477) e!2802015)))

(declare-fun tp_is_empty!27773 () Bool)

(assert (=> start!443976 tp_is_empty!27773))

(declare-fun e!2802009 () Bool)

(assert (=> start!443976 e!2802009))

(declare-fun b!4498319 () Bool)

(declare-fun e!2802019 () Bool)

(assert (=> b!4498319 (= e!2802012 e!2802019)))

(declare-fun res!1869931 () Bool)

(assert (=> b!4498319 (=> res!1869931 e!2802019)))

(declare-fun lt!1679923 () Bool)

(assert (=> b!4498319 (= res!1869931 lt!1679923)))

(declare-fun lt!1679937 () Unit!91740)

(assert (=> b!4498319 (= lt!1679937 e!2802018)))

(declare-fun c!766637 () Bool)

(assert (=> b!4498319 (= c!766637 lt!1679923)))

(declare-fun key!3287 () K!11950)

(declare-fun containsKey!1676 (List!50664 K!11950) Bool)

(assert (=> b!4498319 (= lt!1679923 (not (containsKey!1676 lt!1679933 key!3287)))))

(declare-fun b!4498320 () Bool)

(declare-fun Unit!91743 () Unit!91740)

(assert (=> b!4498320 (= e!2802018 Unit!91743)))

(declare-fun lt!1679936 () Unit!91740)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!112 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> b!4498320 (= lt!1679936 (lemmaNotInItsHashBucketThenNotInMap!112 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4498320 false))

(declare-fun b!4498321 () Bool)

(declare-fun res!1869924 () Bool)

(assert (=> b!4498321 (=> res!1869924 e!2802017)))

(declare-fun newBucket!178 () List!50664)

(declare-fun noDuplicateKeys!1124 (List!50664) Bool)

(assert (=> b!4498321 (= res!1869924 (not (noDuplicateKeys!1124 newBucket!178)))))

(declare-fun b!4498322 () Bool)

(declare-fun e!2802016 () Bool)

(assert (=> b!4498322 (= e!2802019 e!2802016)))

(declare-fun res!1869917 () Bool)

(assert (=> b!4498322 (=> res!1869917 e!2802016)))

(declare-fun containsKeyBiggerList!104 (List!50665 K!11950) Bool)

(assert (=> b!4498322 (= res!1869917 (not (containsKeyBiggerList!104 (t!357623 (toList!4255 lm!1477)) key!3287)))))

(assert (=> b!4498322 (containsKeyBiggerList!104 (toList!4255 lt!1679939) key!3287)))

(declare-fun lt!1679934 () Unit!91740)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!40 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> b!4498322 (= lt!1679934 (lemmaInLongMapThenContainsKeyBiggerList!40 lt!1679939 key!3287 hashF!1107))))

(declare-fun b!4498323 () Bool)

(declare-fun e!2802011 () Bool)

(assert (=> b!4498323 (= e!2802016 e!2802011)))

(declare-fun res!1869919 () Bool)

(assert (=> b!4498323 (=> res!1869919 e!2802011)))

(declare-datatypes ((ListMap!3517 0))(
  ( (ListMap!3518 (toList!4256 List!50664)) )
))
(declare-fun contains!13210 (ListMap!3517 K!11950) Bool)

(declare-fun extractMap!1180 (List!50665) ListMap!3517)

(assert (=> b!4498323 (= res!1869919 (not (contains!13210 (extractMap!1180 (t!357623 (toList!4255 lm!1477))) key!3287)))))

(declare-fun lt!1679928 () ListMap!3517)

(assert (=> b!4498323 (contains!13210 lt!1679928 key!3287)))

(assert (=> b!4498323 (= lt!1679928 (extractMap!1180 (toList!4255 lt!1679939)))))

(declare-fun lt!1679925 () Unit!91740)

(declare-fun lemmaListContainsThenExtractedMapContains!94 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> b!4498323 (= lt!1679925 (lemmaListContainsThenExtractedMapContains!94 lt!1679939 key!3287 hashF!1107))))

(declare-fun b!4498324 () Bool)

(declare-fun e!2802010 () Bool)

(declare-fun e!2802008 () Bool)

(assert (=> b!4498324 (= e!2802010 e!2802008)))

(declare-fun res!1869932 () Bool)

(assert (=> b!4498324 (=> (not res!1869932) (not e!2802008))))

(declare-fun lt!1679927 () (_ BitVec 64))

(assert (=> b!4498324 (= res!1869932 (= lt!1679927 hash!344))))

(declare-fun hash!2683 (Hashable!5519 K!11950) (_ BitVec 64))

(assert (=> b!4498324 (= lt!1679927 (hash!2683 hashF!1107 key!3287))))

(declare-fun b!4498325 () Bool)

(declare-fun e!2802013 () Bool)

(assert (=> b!4498325 (= e!2802011 e!2802013)))

(declare-fun res!1869918 () Bool)

(assert (=> b!4498325 (=> res!1869918 e!2802013)))

(declare-fun lt!1679929 () ListMap!3517)

(declare-fun lt!1679938 () ListMap!3517)

(declare-fun eq!581 (ListMap!3517 ListMap!3517) Bool)

(assert (=> b!4498325 (= res!1869918 (not (eq!581 lt!1679929 lt!1679938)))))

(declare-fun lt!1679932 () tuple2!50932)

(declare-fun +!1470 (ListLongMap!2887 tuple2!50932) ListLongMap!2887)

(assert (=> b!4498325 (= lt!1679929 (extractMap!1180 (toList!4255 (+!1470 lt!1679939 lt!1679932))))))

(declare-fun head!9342 (ListLongMap!2887) tuple2!50932)

(assert (=> b!4498325 (= lt!1679932 (head!9342 lm!1477))))

(declare-fun lt!1679935 () ListLongMap!2887)

(declare-fun -!350 (ListMap!3517 K!11950) ListMap!3517)

(assert (=> b!4498325 (eq!581 (extractMap!1180 (toList!4255 lt!1679935)) (-!350 lt!1679928 key!3287))))

(declare-fun lt!1679924 () tuple2!50932)

(assert (=> b!4498325 (= lt!1679935 (+!1470 lt!1679939 lt!1679924))))

(assert (=> b!4498325 (= lt!1679924 (tuple2!50933 hash!344 newBucket!178))))

(declare-fun lt!1679926 () Unit!91740)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!109 (ListLongMap!2887 (_ BitVec 64) List!50664 K!11950 Hashable!5519) Unit!91740)

(assert (=> b!4498325 (= lt!1679926 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!109 lt!1679939 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4498326 () Bool)

(declare-fun res!1869930 () Bool)

(assert (=> b!4498326 (=> res!1869930 e!2802012)))

(declare-fun lt!1679930 () tuple2!50932)

(declare-fun contains!13211 (List!50665 tuple2!50932) Bool)

(assert (=> b!4498326 (= res!1869930 (not (contains!13211 (t!357623 (toList!4255 lm!1477)) lt!1679930)))))

(declare-fun b!4498327 () Bool)

(declare-fun e!2802014 () Bool)

(declare-fun lt!1679940 () ListLongMap!2887)

(declare-fun isEmpty!28595 (ListLongMap!2887) Bool)

(assert (=> b!4498327 (= e!2802014 (not (isEmpty!28595 lt!1679940)))))

(declare-fun b!4498328 () Bool)

(declare-fun res!1869927 () Bool)

(assert (=> b!4498328 (=> res!1869927 e!2802013)))

(assert (=> b!4498328 (= res!1869927 (not (eq!581 lt!1679938 lt!1679929)))))

(declare-fun b!4498329 () Bool)

(declare-fun res!1869916 () Bool)

(assert (=> b!4498329 (=> res!1869916 e!2802017)))

(get-info :version)

(assert (=> b!4498329 (= res!1869916 (or ((_ is Nil!50541) (toList!4255 lm!1477)) (= (_1!28760 (h!56360 (toList!4255 lm!1477))) hash!344)))))

(declare-fun b!4498330 () Bool)

(assert (=> b!4498330 (= e!2802008 (not e!2802017))))

(declare-fun res!1869926 () Bool)

(assert (=> b!4498330 (=> res!1869926 e!2802017)))

(declare-fun removePairForKey!751 (List!50664 K!11950) List!50664)

(assert (=> b!4498330 (= res!1869926 (not (= newBucket!178 (removePairForKey!751 lt!1679933 key!3287))))))

(declare-fun lt!1679942 () Unit!91740)

(declare-fun forallContained!2427 (List!50665 Int tuple2!50932) Unit!91740)

(assert (=> b!4498330 (= lt!1679942 (forallContained!2427 (toList!4255 lm!1477) lambda!168485 lt!1679930))))

(assert (=> b!4498330 (contains!13211 (toList!4255 lm!1477) lt!1679930)))

(assert (=> b!4498330 (= lt!1679930 (tuple2!50933 hash!344 lt!1679933))))

(declare-fun lt!1679941 () Unit!91740)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!636 (List!50665 (_ BitVec 64) List!50664) Unit!91740)

(assert (=> b!4498330 (= lt!1679941 (lemmaGetValueByKeyImpliesContainsTuple!636 (toList!4255 lm!1477) hash!344 lt!1679933))))

(assert (=> b!4498330 (= lt!1679933 (apply!11861 lm!1477 hash!344))))

(assert (=> b!4498330 (contains!13209 lm!1477 lt!1679927)))

(declare-fun lt!1679931 () Unit!91740)

(declare-fun lemmaInGenMapThenLongMapContainsHash!198 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> b!4498330 (= lt!1679931 (lemmaInGenMapThenLongMapContainsHash!198 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4498331 () Bool)

(assert (=> b!4498331 (= e!2802007 e!2802010)))

(declare-fun res!1869928 () Bool)

(assert (=> b!4498331 (=> (not res!1869928) (not e!2802010))))

(assert (=> b!4498331 (= res!1869928 (contains!13210 lt!1679938 key!3287))))

(assert (=> b!4498331 (= lt!1679938 (extractMap!1180 (toList!4255 lm!1477)))))

(declare-fun b!4498332 () Bool)

(declare-fun res!1869921 () Bool)

(assert (=> b!4498332 (=> (not res!1869921) (not e!2802008))))

(declare-fun allKeysSameHash!978 (List!50664 (_ BitVec 64) Hashable!5519) Bool)

(assert (=> b!4498332 (= res!1869921 (allKeysSameHash!978 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4498333 () Bool)

(assert (=> b!4498333 (= e!2802013 e!2802014)))

(declare-fun res!1869929 () Bool)

(assert (=> b!4498333 (=> res!1869929 e!2802014)))

(assert (=> b!4498333 (= res!1869929 (not (= lt!1679940 (+!1470 lm!1477 lt!1679924))))))

(assert (=> b!4498333 (= lt!1679940 (+!1470 lt!1679935 lt!1679932))))

(declare-fun b!4498334 () Bool)

(declare-fun tp_is_empty!27775 () Bool)

(declare-fun tp!1337469 () Bool)

(assert (=> b!4498334 (= e!2802009 (and tp_is_empty!27773 tp_is_empty!27775 tp!1337469))))

(declare-fun b!4498335 () Bool)

(declare-fun tp!1337468 () Bool)

(assert (=> b!4498335 (= e!2802015 tp!1337468)))

(declare-fun b!4498336 () Bool)

(declare-fun res!1869922 () Bool)

(assert (=> b!4498336 (=> res!1869922 e!2802013)))

(assert (=> b!4498336 (= res!1869922 (bvsge (_1!28760 lt!1679932) hash!344))))

(assert (= (and start!443976 res!1869915) b!4498316))

(assert (= (and b!4498316 res!1869920) b!4498331))

(assert (= (and b!4498331 res!1869928) b!4498324))

(assert (= (and b!4498324 res!1869932) b!4498332))

(assert (= (and b!4498332 res!1869921) b!4498330))

(assert (= (and b!4498330 (not res!1869926)) b!4498321))

(assert (= (and b!4498321 (not res!1869924)) b!4498329))

(assert (= (and b!4498329 (not res!1869916)) b!4498315))

(assert (= (and b!4498315 (not res!1869925)) b!4498318))

(assert (= (and b!4498318 (not res!1869923)) b!4498326))

(assert (= (and b!4498326 (not res!1869930)) b!4498319))

(assert (= (and b!4498319 c!766637) b!4498320))

(assert (= (and b!4498319 (not c!766637)) b!4498317))

(assert (= (and b!4498319 (not res!1869931)) b!4498322))

(assert (= (and b!4498322 (not res!1869917)) b!4498323))

(assert (= (and b!4498323 (not res!1869919)) b!4498325))

(assert (= (and b!4498325 (not res!1869918)) b!4498328))

(assert (= (and b!4498328 (not res!1869927)) b!4498336))

(assert (= (and b!4498336 (not res!1869922)) b!4498333))

(assert (= (and b!4498333 (not res!1869929)) b!4498327))

(assert (= start!443976 b!4498335))

(assert (= (and start!443976 ((_ is Cons!50540) newBucket!178)) b!4498334))

(declare-fun m!5227541 () Bool)

(assert (=> b!4498319 m!5227541))

(declare-fun m!5227543 () Bool)

(assert (=> b!4498323 m!5227543))

(declare-fun m!5227545 () Bool)

(assert (=> b!4498323 m!5227545))

(declare-fun m!5227547 () Bool)

(assert (=> b!4498323 m!5227547))

(declare-fun m!5227549 () Bool)

(assert (=> b!4498323 m!5227549))

(assert (=> b!4498323 m!5227545))

(declare-fun m!5227551 () Bool)

(assert (=> b!4498323 m!5227551))

(declare-fun m!5227553 () Bool)

(assert (=> b!4498318 m!5227553))

(declare-fun m!5227555 () Bool)

(assert (=> b!4498325 m!5227555))

(declare-fun m!5227557 () Bool)

(assert (=> b!4498325 m!5227557))

(declare-fun m!5227559 () Bool)

(assert (=> b!4498325 m!5227559))

(declare-fun m!5227561 () Bool)

(assert (=> b!4498325 m!5227561))

(assert (=> b!4498325 m!5227559))

(declare-fun m!5227563 () Bool)

(assert (=> b!4498325 m!5227563))

(assert (=> b!4498325 m!5227557))

(declare-fun m!5227565 () Bool)

(assert (=> b!4498325 m!5227565))

(declare-fun m!5227567 () Bool)

(assert (=> b!4498325 m!5227567))

(declare-fun m!5227569 () Bool)

(assert (=> b!4498325 m!5227569))

(declare-fun m!5227571 () Bool)

(assert (=> b!4498325 m!5227571))

(declare-fun m!5227573 () Bool)

(assert (=> b!4498331 m!5227573))

(declare-fun m!5227575 () Bool)

(assert (=> b!4498331 m!5227575))

(declare-fun m!5227577 () Bool)

(assert (=> start!443976 m!5227577))

(declare-fun m!5227579 () Bool)

(assert (=> start!443976 m!5227579))

(declare-fun m!5227581 () Bool)

(assert (=> b!4498322 m!5227581))

(declare-fun m!5227583 () Bool)

(assert (=> b!4498322 m!5227583))

(declare-fun m!5227585 () Bool)

(assert (=> b!4498322 m!5227585))

(declare-fun m!5227587 () Bool)

(assert (=> b!4498315 m!5227587))

(declare-fun m!5227589 () Bool)

(assert (=> b!4498315 m!5227589))

(declare-fun m!5227591 () Bool)

(assert (=> b!4498320 m!5227591))

(declare-fun m!5227593 () Bool)

(assert (=> b!4498328 m!5227593))

(declare-fun m!5227595 () Bool)

(assert (=> b!4498316 m!5227595))

(declare-fun m!5227597 () Bool)

(assert (=> b!4498321 m!5227597))

(declare-fun m!5227599 () Bool)

(assert (=> b!4498324 m!5227599))

(declare-fun m!5227601 () Bool)

(assert (=> b!4498333 m!5227601))

(declare-fun m!5227603 () Bool)

(assert (=> b!4498333 m!5227603))

(declare-fun m!5227605 () Bool)

(assert (=> b!4498326 m!5227605))

(declare-fun m!5227607 () Bool)

(assert (=> b!4498327 m!5227607))

(declare-fun m!5227609 () Bool)

(assert (=> b!4498332 m!5227609))

(declare-fun m!5227611 () Bool)

(assert (=> b!4498330 m!5227611))

(declare-fun m!5227613 () Bool)

(assert (=> b!4498330 m!5227613))

(declare-fun m!5227615 () Bool)

(assert (=> b!4498330 m!5227615))

(declare-fun m!5227617 () Bool)

(assert (=> b!4498330 m!5227617))

(declare-fun m!5227619 () Bool)

(assert (=> b!4498330 m!5227619))

(declare-fun m!5227621 () Bool)

(assert (=> b!4498330 m!5227621))

(declare-fun m!5227623 () Bool)

(assert (=> b!4498330 m!5227623))

(check-sat (not b!4498328) (not b!4498330) tp_is_empty!27773 (not b!4498332) (not b!4498331) (not b!4498319) (not b!4498318) (not b!4498320) (not b!4498325) (not b!4498323) (not b!4498315) (not b!4498326) (not b!4498335) (not b!4498324) (not b!4498334) (not b!4498321) (not b!4498316) tp_is_empty!27775 (not b!4498333) (not start!443976) (not b!4498322) (not b!4498327))
(check-sat)
(get-model)

(declare-fun d!1380046 () Bool)

(declare-fun res!1869937 () Bool)

(declare-fun e!2802024 () Bool)

(assert (=> d!1380046 (=> res!1869937 e!2802024)))

(assert (=> d!1380046 (= res!1869937 (not ((_ is Cons!50540) newBucket!178)))))

(assert (=> d!1380046 (= (noDuplicateKeys!1124 newBucket!178) e!2802024)))

(declare-fun b!4498341 () Bool)

(declare-fun e!2802025 () Bool)

(assert (=> b!4498341 (= e!2802024 e!2802025)))

(declare-fun res!1869938 () Bool)

(assert (=> b!4498341 (=> (not res!1869938) (not e!2802025))))

(assert (=> b!4498341 (= res!1869938 (not (containsKey!1676 (t!357622 newBucket!178) (_1!28759 (h!56359 newBucket!178)))))))

(declare-fun b!4498342 () Bool)

(assert (=> b!4498342 (= e!2802025 (noDuplicateKeys!1124 (t!357622 newBucket!178)))))

(assert (= (and d!1380046 (not res!1869937)) b!4498341))

(assert (= (and b!4498341 res!1869938) b!4498342))

(declare-fun m!5227625 () Bool)

(assert (=> b!4498341 m!5227625))

(declare-fun m!5227627 () Bool)

(assert (=> b!4498342 m!5227627))

(assert (=> b!4498321 d!1380046))

(declare-fun d!1380048 () Bool)

(assert (=> d!1380048 true))

(assert (=> d!1380048 true))

(declare-fun lambda!168488 () Int)

(declare-fun forall!10174 (List!50664 Int) Bool)

(assert (=> d!1380048 (= (allKeysSameHash!978 newBucket!178 hash!344 hashF!1107) (forall!10174 newBucket!178 lambda!168488))))

(declare-fun bs!834971 () Bool)

(assert (= bs!834971 d!1380048))

(declare-fun m!5227629 () Bool)

(assert (=> bs!834971 m!5227629))

(assert (=> b!4498332 d!1380048))

(declare-fun bs!834972 () Bool)

(declare-fun d!1380050 () Bool)

(assert (= bs!834972 (and d!1380050 start!443976)))

(declare-fun lambda!168491 () Int)

(assert (=> bs!834972 (= lambda!168491 lambda!168485)))

(assert (=> d!1380050 (contains!13209 lm!1477 (hash!2683 hashF!1107 key!3287))))

(declare-fun lt!1679945 () Unit!91740)

(declare-fun choose!29098 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> d!1380050 (= lt!1679945 (choose!29098 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1380050 (forall!10173 (toList!4255 lm!1477) lambda!168491)))

(assert (=> d!1380050 (= (lemmaInGenMapThenLongMapContainsHash!198 lm!1477 key!3287 hashF!1107) lt!1679945)))

(declare-fun bs!834973 () Bool)

(assert (= bs!834973 d!1380050))

(assert (=> bs!834973 m!5227599))

(assert (=> bs!834973 m!5227599))

(declare-fun m!5227631 () Bool)

(assert (=> bs!834973 m!5227631))

(declare-fun m!5227633 () Bool)

(assert (=> bs!834973 m!5227633))

(declare-fun m!5227635 () Bool)

(assert (=> bs!834973 m!5227635))

(assert (=> b!4498330 d!1380050))

(declare-fun d!1380052 () Bool)

(assert (=> d!1380052 (contains!13211 (toList!4255 lm!1477) (tuple2!50933 hash!344 lt!1679933))))

(declare-fun lt!1679948 () Unit!91740)

(declare-fun choose!29099 (List!50665 (_ BitVec 64) List!50664) Unit!91740)

(assert (=> d!1380052 (= lt!1679948 (choose!29099 (toList!4255 lm!1477) hash!344 lt!1679933))))

(declare-fun e!2802028 () Bool)

(assert (=> d!1380052 e!2802028))

(declare-fun res!1869941 () Bool)

(assert (=> d!1380052 (=> (not res!1869941) (not e!2802028))))

(declare-fun isStrictlySorted!397 (List!50665) Bool)

(assert (=> d!1380052 (= res!1869941 (isStrictlySorted!397 (toList!4255 lm!1477)))))

(assert (=> d!1380052 (= (lemmaGetValueByKeyImpliesContainsTuple!636 (toList!4255 lm!1477) hash!344 lt!1679933) lt!1679948)))

(declare-fun b!4498349 () Bool)

(declare-datatypes ((Option!11044 0))(
  ( (None!11043) (Some!11043 (v!44533 List!50664)) )
))
(declare-fun getValueByKey!1024 (List!50665 (_ BitVec 64)) Option!11044)

(assert (=> b!4498349 (= e!2802028 (= (getValueByKey!1024 (toList!4255 lm!1477) hash!344) (Some!11043 lt!1679933)))))

(assert (= (and d!1380052 res!1869941) b!4498349))

(declare-fun m!5227637 () Bool)

(assert (=> d!1380052 m!5227637))

(declare-fun m!5227639 () Bool)

(assert (=> d!1380052 m!5227639))

(declare-fun m!5227641 () Bool)

(assert (=> d!1380052 m!5227641))

(declare-fun m!5227643 () Bool)

(assert (=> b!4498349 m!5227643))

(assert (=> b!4498330 d!1380052))

(declare-fun d!1380056 () Bool)

(declare-fun get!16516 (Option!11044) List!50664)

(assert (=> d!1380056 (= (apply!11861 lm!1477 hash!344) (get!16516 (getValueByKey!1024 (toList!4255 lm!1477) hash!344)))))

(declare-fun bs!834974 () Bool)

(assert (= bs!834974 d!1380056))

(assert (=> bs!834974 m!5227643))

(assert (=> bs!834974 m!5227643))

(declare-fun m!5227645 () Bool)

(assert (=> bs!834974 m!5227645))

(assert (=> b!4498330 d!1380056))

(declare-fun d!1380058 () Bool)

(declare-fun dynLambda!21105 (Int tuple2!50932) Bool)

(assert (=> d!1380058 (dynLambda!21105 lambda!168485 lt!1679930)))

(declare-fun lt!1679969 () Unit!91740)

(declare-fun choose!29100 (List!50665 Int tuple2!50932) Unit!91740)

(assert (=> d!1380058 (= lt!1679969 (choose!29100 (toList!4255 lm!1477) lambda!168485 lt!1679930))))

(declare-fun e!2802035 () Bool)

(assert (=> d!1380058 e!2802035))

(declare-fun res!1869952 () Bool)

(assert (=> d!1380058 (=> (not res!1869952) (not e!2802035))))

(assert (=> d!1380058 (= res!1869952 (forall!10173 (toList!4255 lm!1477) lambda!168485))))

(assert (=> d!1380058 (= (forallContained!2427 (toList!4255 lm!1477) lambda!168485 lt!1679930) lt!1679969)))

(declare-fun b!4498360 () Bool)

(assert (=> b!4498360 (= e!2802035 (contains!13211 (toList!4255 lm!1477) lt!1679930))))

(assert (= (and d!1380058 res!1869952) b!4498360))

(declare-fun b_lambda!152177 () Bool)

(assert (=> (not b_lambda!152177) (not d!1380058)))

(declare-fun m!5227677 () Bool)

(assert (=> d!1380058 m!5227677))

(declare-fun m!5227679 () Bool)

(assert (=> d!1380058 m!5227679))

(assert (=> d!1380058 m!5227577))

(assert (=> b!4498360 m!5227613))

(assert (=> b!4498330 d!1380058))

(declare-fun d!1380066 () Bool)

(declare-fun e!2802057 () Bool)

(assert (=> d!1380066 e!2802057))

(declare-fun res!1869967 () Bool)

(assert (=> d!1380066 (=> res!1869967 e!2802057)))

(declare-fun lt!1679990 () Bool)

(assert (=> d!1380066 (= res!1869967 (not lt!1679990))))

(declare-fun lt!1679991 () Bool)

(assert (=> d!1380066 (= lt!1679990 lt!1679991)))

(declare-fun lt!1679993 () Unit!91740)

(declare-fun e!2802056 () Unit!91740)

(assert (=> d!1380066 (= lt!1679993 e!2802056)))

(declare-fun c!766644 () Bool)

(assert (=> d!1380066 (= c!766644 lt!1679991)))

(declare-fun containsKey!1679 (List!50665 (_ BitVec 64)) Bool)

(assert (=> d!1380066 (= lt!1679991 (containsKey!1679 (toList!4255 lm!1477) lt!1679927))))

(assert (=> d!1380066 (= (contains!13209 lm!1477 lt!1679927) lt!1679990)))

(declare-fun b!4498387 () Bool)

(declare-fun lt!1679992 () Unit!91740)

(assert (=> b!4498387 (= e!2802056 lt!1679992)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!928 (List!50665 (_ BitVec 64)) Unit!91740)

(assert (=> b!4498387 (= lt!1679992 (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lm!1477) lt!1679927))))

(declare-fun isDefined!8331 (Option!11044) Bool)

(assert (=> b!4498387 (isDefined!8331 (getValueByKey!1024 (toList!4255 lm!1477) lt!1679927))))

(declare-fun b!4498391 () Bool)

(declare-fun Unit!91748 () Unit!91740)

(assert (=> b!4498391 (= e!2802056 Unit!91748)))

(declare-fun b!4498393 () Bool)

(assert (=> b!4498393 (= e!2802057 (isDefined!8331 (getValueByKey!1024 (toList!4255 lm!1477) lt!1679927)))))

(assert (= (and d!1380066 c!766644) b!4498387))

(assert (= (and d!1380066 (not c!766644)) b!4498391))

(assert (= (and d!1380066 (not res!1869967)) b!4498393))

(declare-fun m!5227705 () Bool)

(assert (=> d!1380066 m!5227705))

(declare-fun m!5227707 () Bool)

(assert (=> b!4498387 m!5227707))

(declare-fun m!5227709 () Bool)

(assert (=> b!4498387 m!5227709))

(assert (=> b!4498387 m!5227709))

(declare-fun m!5227711 () Bool)

(assert (=> b!4498387 m!5227711))

(assert (=> b!4498393 m!5227709))

(assert (=> b!4498393 m!5227709))

(assert (=> b!4498393 m!5227711))

(assert (=> b!4498330 d!1380066))

(declare-fun b!4498423 () Bool)

(declare-fun e!2802078 () List!50664)

(assert (=> b!4498423 (= e!2802078 Nil!50540)))

(declare-fun b!4498422 () Bool)

(assert (=> b!4498422 (= e!2802078 (Cons!50540 (h!56359 lt!1679933) (removePairForKey!751 (t!357622 lt!1679933) key!3287)))))

(declare-fun b!4498420 () Bool)

(declare-fun e!2802079 () List!50664)

(assert (=> b!4498420 (= e!2802079 (t!357622 lt!1679933))))

(declare-fun b!4498421 () Bool)

(assert (=> b!4498421 (= e!2802079 e!2802078)))

(declare-fun c!766656 () Bool)

(assert (=> b!4498421 (= c!766656 ((_ is Cons!50540) lt!1679933))))

(declare-fun d!1380078 () Bool)

(declare-fun lt!1680013 () List!50664)

(assert (=> d!1380078 (not (containsKey!1676 lt!1680013 key!3287))))

(assert (=> d!1380078 (= lt!1680013 e!2802079)))

(declare-fun c!766655 () Bool)

(assert (=> d!1380078 (= c!766655 (and ((_ is Cons!50540) lt!1679933) (= (_1!28759 (h!56359 lt!1679933)) key!3287)))))

(assert (=> d!1380078 (noDuplicateKeys!1124 lt!1679933)))

(assert (=> d!1380078 (= (removePairForKey!751 lt!1679933 key!3287) lt!1680013)))

(assert (= (and d!1380078 c!766655) b!4498420))

(assert (= (and d!1380078 (not c!766655)) b!4498421))

(assert (= (and b!4498421 c!766656) b!4498422))

(assert (= (and b!4498421 (not c!766656)) b!4498423))

(declare-fun m!5227737 () Bool)

(assert (=> b!4498422 m!5227737))

(declare-fun m!5227739 () Bool)

(assert (=> d!1380078 m!5227739))

(declare-fun m!5227741 () Bool)

(assert (=> d!1380078 m!5227741))

(assert (=> b!4498330 d!1380078))

(declare-fun d!1380090 () Bool)

(declare-fun lt!1680016 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8254 (List!50665) (InoxSet tuple2!50932))

(assert (=> d!1380090 (= lt!1680016 (select (content!8254 (toList!4255 lm!1477)) lt!1679930))))

(declare-fun e!2802085 () Bool)

(assert (=> d!1380090 (= lt!1680016 e!2802085)))

(declare-fun res!1869983 () Bool)

(assert (=> d!1380090 (=> (not res!1869983) (not e!2802085))))

(assert (=> d!1380090 (= res!1869983 ((_ is Cons!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380090 (= (contains!13211 (toList!4255 lm!1477) lt!1679930) lt!1680016)))

(declare-fun b!4498428 () Bool)

(declare-fun e!2802084 () Bool)

(assert (=> b!4498428 (= e!2802085 e!2802084)))

(declare-fun res!1869982 () Bool)

(assert (=> b!4498428 (=> res!1869982 e!2802084)))

(assert (=> b!4498428 (= res!1869982 (= (h!56360 (toList!4255 lm!1477)) lt!1679930))))

(declare-fun b!4498429 () Bool)

(assert (=> b!4498429 (= e!2802084 (contains!13211 (t!357623 (toList!4255 lm!1477)) lt!1679930))))

(assert (= (and d!1380090 res!1869983) b!4498428))

(assert (= (and b!4498428 (not res!1869982)) b!4498429))

(declare-fun m!5227749 () Bool)

(assert (=> d!1380090 m!5227749))

(declare-fun m!5227751 () Bool)

(assert (=> d!1380090 m!5227751))

(assert (=> b!4498429 m!5227605))

(assert (=> b!4498330 d!1380090))

(declare-fun bs!834982 () Bool)

(declare-fun d!1380096 () Bool)

(assert (= bs!834982 (and d!1380096 start!443976)))

(declare-fun lambda!168499 () Int)

(assert (=> bs!834982 (= lambda!168499 lambda!168485)))

(declare-fun bs!834983 () Bool)

(assert (= bs!834983 (and d!1380096 d!1380050)))

(assert (=> bs!834983 (= lambda!168499 lambda!168491)))

(assert (=> d!1380096 (not (contains!13210 (extractMap!1180 (toList!4255 lm!1477)) key!3287))))

(declare-fun lt!1680045 () Unit!91740)

(declare-fun choose!29102 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> d!1380096 (= lt!1680045 (choose!29102 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1380096 (forall!10173 (toList!4255 lm!1477) lambda!168499)))

(assert (=> d!1380096 (= (lemmaNotInItsHashBucketThenNotInMap!112 lm!1477 key!3287 hashF!1107) lt!1680045)))

(declare-fun bs!834984 () Bool)

(assert (= bs!834984 d!1380096))

(assert (=> bs!834984 m!5227575))

(assert (=> bs!834984 m!5227575))

(declare-fun m!5227773 () Bool)

(assert (=> bs!834984 m!5227773))

(declare-fun m!5227775 () Bool)

(assert (=> bs!834984 m!5227775))

(declare-fun m!5227777 () Bool)

(assert (=> bs!834984 m!5227777))

(assert (=> b!4498320 d!1380096))

(declare-fun b!4498515 () Bool)

(declare-fun e!2802142 () Unit!91740)

(declare-fun lt!1680089 () Unit!91740)

(assert (=> b!4498515 (= e!2802142 lt!1680089)))

(declare-fun lt!1680090 () Unit!91740)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!929 (List!50664 K!11950) Unit!91740)

(assert (=> b!4498515 (= lt!1680090 (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 lt!1679938) key!3287))))

(declare-datatypes ((Option!11045 0))(
  ( (None!11044) (Some!11044 (v!44534 V!12196)) )
))
(declare-fun isDefined!8332 (Option!11045) Bool)

(declare-fun getValueByKey!1025 (List!50664 K!11950) Option!11045)

(assert (=> b!4498515 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679938) key!3287))))

(declare-fun lt!1680084 () Unit!91740)

(assert (=> b!4498515 (= lt!1680084 lt!1680090)))

(declare-fun lemmaInListThenGetKeysListContains!427 (List!50664 K!11950) Unit!91740)

(assert (=> b!4498515 (= lt!1680089 (lemmaInListThenGetKeysListContains!427 (toList!4256 lt!1679938) key!3287))))

(declare-fun call!313083 () Bool)

(assert (=> b!4498515 call!313083))

(declare-fun b!4498516 () Bool)

(declare-fun e!2802143 () Bool)

(declare-datatypes ((List!50667 0))(
  ( (Nil!50543) (Cons!50543 (h!56364 K!11950) (t!357625 List!50667)) )
))
(declare-fun contains!13213 (List!50667 K!11950) Bool)

(declare-fun keys!17522 (ListMap!3517) List!50667)

(assert (=> b!4498516 (= e!2802143 (contains!13213 (keys!17522 lt!1679938) key!3287))))

(declare-fun b!4498517 () Bool)

(declare-fun e!2802139 () Unit!91740)

(assert (=> b!4498517 (= e!2802142 e!2802139)))

(declare-fun c!766683 () Bool)

(assert (=> b!4498517 (= c!766683 call!313083)))

(declare-fun b!4498518 () Bool)

(declare-fun e!2802141 () List!50667)

(assert (=> b!4498518 (= e!2802141 (keys!17522 lt!1679938))))

(declare-fun b!4498519 () Bool)

(declare-fun Unit!91750 () Unit!91740)

(assert (=> b!4498519 (= e!2802139 Unit!91750)))

(declare-fun d!1380100 () Bool)

(declare-fun e!2802144 () Bool)

(assert (=> d!1380100 e!2802144))

(declare-fun res!1870011 () Bool)

(assert (=> d!1380100 (=> res!1870011 e!2802144)))

(declare-fun e!2802140 () Bool)

(assert (=> d!1380100 (= res!1870011 e!2802140)))

(declare-fun res!1870013 () Bool)

(assert (=> d!1380100 (=> (not res!1870013) (not e!2802140))))

(declare-fun lt!1680087 () Bool)

(assert (=> d!1380100 (= res!1870013 (not lt!1680087))))

(declare-fun lt!1680088 () Bool)

(assert (=> d!1380100 (= lt!1680087 lt!1680088)))

(declare-fun lt!1680085 () Unit!91740)

(assert (=> d!1380100 (= lt!1680085 e!2802142)))

(declare-fun c!766684 () Bool)

(assert (=> d!1380100 (= c!766684 lt!1680088)))

(declare-fun containsKey!1680 (List!50664 K!11950) Bool)

(assert (=> d!1380100 (= lt!1680088 (containsKey!1680 (toList!4256 lt!1679938) key!3287))))

(assert (=> d!1380100 (= (contains!13210 lt!1679938 key!3287) lt!1680087)))

(declare-fun b!4498520 () Bool)

(assert (=> b!4498520 false))

(declare-fun lt!1680091 () Unit!91740)

(declare-fun lt!1680086 () Unit!91740)

(assert (=> b!4498520 (= lt!1680091 lt!1680086)))

(assert (=> b!4498520 (containsKey!1680 (toList!4256 lt!1679938) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!430 (List!50664 K!11950) Unit!91740)

(assert (=> b!4498520 (= lt!1680086 (lemmaInGetKeysListThenContainsKey!430 (toList!4256 lt!1679938) key!3287))))

(declare-fun Unit!91752 () Unit!91740)

(assert (=> b!4498520 (= e!2802139 Unit!91752)))

(declare-fun b!4498521 () Bool)

(assert (=> b!4498521 (= e!2802144 e!2802143)))

(declare-fun res!1870012 () Bool)

(assert (=> b!4498521 (=> (not res!1870012) (not e!2802143))))

(assert (=> b!4498521 (= res!1870012 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679938) key!3287)))))

(declare-fun b!4498522 () Bool)

(declare-fun getKeysList!431 (List!50664) List!50667)

(assert (=> b!4498522 (= e!2802141 (getKeysList!431 (toList!4256 lt!1679938)))))

(declare-fun bm!313078 () Bool)

(assert (=> bm!313078 (= call!313083 (contains!13213 e!2802141 key!3287))))

(declare-fun c!766685 () Bool)

(assert (=> bm!313078 (= c!766685 c!766684)))

(declare-fun b!4498523 () Bool)

(assert (=> b!4498523 (= e!2802140 (not (contains!13213 (keys!17522 lt!1679938) key!3287)))))

(assert (= (and d!1380100 c!766684) b!4498515))

(assert (= (and d!1380100 (not c!766684)) b!4498517))

(assert (= (and b!4498517 c!766683) b!4498520))

(assert (= (and b!4498517 (not c!766683)) b!4498519))

(assert (= (or b!4498515 b!4498517) bm!313078))

(assert (= (and bm!313078 c!766685) b!4498522))

(assert (= (and bm!313078 (not c!766685)) b!4498518))

(assert (= (and d!1380100 res!1870013) b!4498523))

(assert (= (and d!1380100 (not res!1870011)) b!4498521))

(assert (= (and b!4498521 res!1870012) b!4498516))

(declare-fun m!5227857 () Bool)

(assert (=> bm!313078 m!5227857))

(declare-fun m!5227859 () Bool)

(assert (=> b!4498516 m!5227859))

(assert (=> b!4498516 m!5227859))

(declare-fun m!5227861 () Bool)

(assert (=> b!4498516 m!5227861))

(declare-fun m!5227863 () Bool)

(assert (=> d!1380100 m!5227863))

(assert (=> b!4498523 m!5227859))

(assert (=> b!4498523 m!5227859))

(assert (=> b!4498523 m!5227861))

(assert (=> b!4498520 m!5227863))

(declare-fun m!5227865 () Bool)

(assert (=> b!4498520 m!5227865))

(declare-fun m!5227867 () Bool)

(assert (=> b!4498515 m!5227867))

(declare-fun m!5227869 () Bool)

(assert (=> b!4498515 m!5227869))

(assert (=> b!4498515 m!5227869))

(declare-fun m!5227871 () Bool)

(assert (=> b!4498515 m!5227871))

(declare-fun m!5227873 () Bool)

(assert (=> b!4498515 m!5227873))

(assert (=> b!4498518 m!5227859))

(assert (=> b!4498521 m!5227869))

(assert (=> b!4498521 m!5227869))

(assert (=> b!4498521 m!5227871))

(declare-fun m!5227875 () Bool)

(assert (=> b!4498522 m!5227875))

(assert (=> b!4498331 d!1380100))

(declare-fun bs!835036 () Bool)

(declare-fun d!1380124 () Bool)

(assert (= bs!835036 (and d!1380124 start!443976)))

(declare-fun lambda!168519 () Int)

(assert (=> bs!835036 (= lambda!168519 lambda!168485)))

(declare-fun bs!835037 () Bool)

(assert (= bs!835037 (and d!1380124 d!1380050)))

(assert (=> bs!835037 (= lambda!168519 lambda!168491)))

(declare-fun bs!835038 () Bool)

(assert (= bs!835038 (and d!1380124 d!1380096)))

(assert (=> bs!835038 (= lambda!168519 lambda!168499)))

(declare-fun lt!1680106 () ListMap!3517)

(declare-fun invariantList!983 (List!50664) Bool)

(assert (=> d!1380124 (invariantList!983 (toList!4256 lt!1680106))))

(declare-fun e!2802165 () ListMap!3517)

(assert (=> d!1380124 (= lt!1680106 e!2802165)))

(declare-fun c!766690 () Bool)

(assert (=> d!1380124 (= c!766690 ((_ is Cons!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380124 (forall!10173 (toList!4255 lm!1477) lambda!168519)))

(assert (=> d!1380124 (= (extractMap!1180 (toList!4255 lm!1477)) lt!1680106)))

(declare-fun b!4498549 () Bool)

(declare-fun addToMapMapFromBucket!651 (List!50664 ListMap!3517) ListMap!3517)

(assert (=> b!4498549 (= e!2802165 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))

(declare-fun b!4498550 () Bool)

(assert (=> b!4498550 (= e!2802165 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380124 c!766690) b!4498549))

(assert (= (and d!1380124 (not c!766690)) b!4498550))

(declare-fun m!5227931 () Bool)

(assert (=> d!1380124 m!5227931))

(declare-fun m!5227933 () Bool)

(assert (=> d!1380124 m!5227933))

(assert (=> b!4498549 m!5227545))

(assert (=> b!4498549 m!5227545))

(declare-fun m!5227935 () Bool)

(assert (=> b!4498549 m!5227935))

(assert (=> b!4498331 d!1380124))

(declare-fun d!1380142 () Bool)

(assert (=> d!1380142 (= (apply!11861 lt!1679939 hash!344) (get!16516 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344)))))

(declare-fun bs!835039 () Bool)

(assert (= bs!835039 d!1380142))

(declare-fun m!5227937 () Bool)

(assert (=> bs!835039 m!5227937))

(assert (=> bs!835039 m!5227937))

(declare-fun m!5227939 () Bool)

(assert (=> bs!835039 m!5227939))

(assert (=> b!4498318 d!1380142))

(declare-fun d!1380144 () Bool)

(declare-fun res!1870035 () Bool)

(declare-fun e!2802170 () Bool)

(assert (=> d!1380144 (=> res!1870035 e!2802170)))

(assert (=> d!1380144 (= res!1870035 (and ((_ is Cons!50540) lt!1679933) (= (_1!28759 (h!56359 lt!1679933)) key!3287)))))

(assert (=> d!1380144 (= (containsKey!1676 lt!1679933 key!3287) e!2802170)))

(declare-fun b!4498555 () Bool)

(declare-fun e!2802171 () Bool)

(assert (=> b!4498555 (= e!2802170 e!2802171)))

(declare-fun res!1870036 () Bool)

(assert (=> b!4498555 (=> (not res!1870036) (not e!2802171))))

(assert (=> b!4498555 (= res!1870036 ((_ is Cons!50540) lt!1679933))))

(declare-fun b!4498556 () Bool)

(assert (=> b!4498556 (= e!2802171 (containsKey!1676 (t!357622 lt!1679933) key!3287))))

(assert (= (and d!1380144 (not res!1870035)) b!4498555))

(assert (= (and b!4498555 res!1870036) b!4498556))

(declare-fun m!5227941 () Bool)

(assert (=> b!4498556 m!5227941))

(assert (=> b!4498319 d!1380144))

(declare-fun d!1380146 () Bool)

(declare-fun content!8255 (List!50664) (InoxSet tuple2!50930))

(assert (=> d!1380146 (= (eq!581 lt!1679938 lt!1679929) (= (content!8255 (toList!4256 lt!1679938)) (content!8255 (toList!4256 lt!1679929))))))

(declare-fun bs!835040 () Bool)

(assert (= bs!835040 d!1380146))

(declare-fun m!5227943 () Bool)

(assert (=> bs!835040 m!5227943))

(declare-fun m!5227945 () Bool)

(assert (=> bs!835040 m!5227945))

(assert (=> b!4498328 d!1380146))

(declare-fun d!1380148 () Bool)

(declare-fun lt!1680107 () Bool)

(assert (=> d!1380148 (= lt!1680107 (select (content!8254 (t!357623 (toList!4255 lm!1477))) lt!1679930))))

(declare-fun e!2802173 () Bool)

(assert (=> d!1380148 (= lt!1680107 e!2802173)))

(declare-fun res!1870038 () Bool)

(assert (=> d!1380148 (=> (not res!1870038) (not e!2802173))))

(assert (=> d!1380148 (= res!1870038 ((_ is Cons!50541) (t!357623 (toList!4255 lm!1477))))))

(assert (=> d!1380148 (= (contains!13211 (t!357623 (toList!4255 lm!1477)) lt!1679930) lt!1680107)))

(declare-fun b!4498557 () Bool)

(declare-fun e!2802172 () Bool)

(assert (=> b!4498557 (= e!2802173 e!2802172)))

(declare-fun res!1870037 () Bool)

(assert (=> b!4498557 (=> res!1870037 e!2802172)))

(assert (=> b!4498557 (= res!1870037 (= (h!56360 (t!357623 (toList!4255 lm!1477))) lt!1679930))))

(declare-fun b!4498558 () Bool)

(assert (=> b!4498558 (= e!2802172 (contains!13211 (t!357623 (t!357623 (toList!4255 lm!1477))) lt!1679930))))

(assert (= (and d!1380148 res!1870038) b!4498557))

(assert (= (and b!4498557 (not res!1870037)) b!4498558))

(declare-fun m!5227947 () Bool)

(assert (=> d!1380148 m!5227947))

(declare-fun m!5227949 () Bool)

(assert (=> d!1380148 m!5227949))

(declare-fun m!5227951 () Bool)

(assert (=> b!4498558 m!5227951))

(assert (=> b!4498326 d!1380148))

(declare-fun bs!835041 () Bool)

(declare-fun d!1380150 () Bool)

(assert (= bs!835041 (and d!1380150 start!443976)))

(declare-fun lambda!168524 () Int)

(assert (=> bs!835041 (not (= lambda!168524 lambda!168485))))

(declare-fun bs!835042 () Bool)

(assert (= bs!835042 (and d!1380150 d!1380050)))

(assert (=> bs!835042 (not (= lambda!168524 lambda!168491))))

(declare-fun bs!835043 () Bool)

(assert (= bs!835043 (and d!1380150 d!1380096)))

(assert (=> bs!835043 (not (= lambda!168524 lambda!168499))))

(declare-fun bs!835044 () Bool)

(assert (= bs!835044 (and d!1380150 d!1380124)))

(assert (=> bs!835044 (not (= lambda!168524 lambda!168519))))

(assert (=> d!1380150 true))

(assert (=> d!1380150 (= (allKeysSameHashInMap!1231 lm!1477 hashF!1107) (forall!10173 (toList!4255 lm!1477) lambda!168524))))

(declare-fun bs!835045 () Bool)

(assert (= bs!835045 d!1380150))

(declare-fun m!5227953 () Bool)

(assert (=> bs!835045 m!5227953))

(assert (=> b!4498316 d!1380150))

(declare-fun d!1380152 () Bool)

(declare-fun res!1870043 () Bool)

(declare-fun e!2802178 () Bool)

(assert (=> d!1380152 (=> res!1870043 e!2802178)))

(assert (=> d!1380152 (= res!1870043 ((_ is Nil!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380152 (= (forall!10173 (toList!4255 lm!1477) lambda!168485) e!2802178)))

(declare-fun b!4498565 () Bool)

(declare-fun e!2802179 () Bool)

(assert (=> b!4498565 (= e!2802178 e!2802179)))

(declare-fun res!1870044 () Bool)

(assert (=> b!4498565 (=> (not res!1870044) (not e!2802179))))

(assert (=> b!4498565 (= res!1870044 (dynLambda!21105 lambda!168485 (h!56360 (toList!4255 lm!1477))))))

(declare-fun b!4498566 () Bool)

(assert (=> b!4498566 (= e!2802179 (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168485))))

(assert (= (and d!1380152 (not res!1870043)) b!4498565))

(assert (= (and b!4498565 res!1870044) b!4498566))

(declare-fun b_lambda!152183 () Bool)

(assert (=> (not b_lambda!152183) (not b!4498565)))

(declare-fun m!5227967 () Bool)

(assert (=> b!4498565 m!5227967))

(declare-fun m!5227969 () Bool)

(assert (=> b!4498566 m!5227969))

(assert (=> start!443976 d!1380152))

(declare-fun d!1380156 () Bool)

(assert (=> d!1380156 (= (inv!66134 lm!1477) (isStrictlySorted!397 (toList!4255 lm!1477)))))

(declare-fun bs!835057 () Bool)

(assert (= bs!835057 d!1380156))

(assert (=> bs!835057 m!5227641))

(assert (=> start!443976 d!1380156))

(declare-fun d!1380158 () Bool)

(declare-fun isEmpty!28597 (List!50665) Bool)

(assert (=> d!1380158 (= (isEmpty!28595 lt!1679940) (isEmpty!28597 (toList!4255 lt!1679940)))))

(declare-fun bs!835060 () Bool)

(assert (= bs!835060 d!1380158))

(declare-fun m!5227987 () Bool)

(assert (=> bs!835060 m!5227987))

(assert (=> b!4498327 d!1380158))

(declare-fun d!1380166 () Bool)

(declare-fun e!2802191 () Bool)

(assert (=> d!1380166 e!2802191))

(declare-fun res!1870057 () Bool)

(assert (=> d!1380166 (=> (not res!1870057) (not e!2802191))))

(declare-fun lt!1680118 () ListMap!3517)

(assert (=> d!1380166 (= res!1870057 (not (contains!13210 lt!1680118 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!106 (List!50664 K!11950) List!50664)

(assert (=> d!1380166 (= lt!1680118 (ListMap!3518 (removePresrvNoDuplicatedKeys!106 (toList!4256 lt!1679928) key!3287)))))

(assert (=> d!1380166 (= (-!350 lt!1679928 key!3287) lt!1680118)))

(declare-fun b!4498579 () Bool)

(declare-fun content!8256 (List!50667) (InoxSet K!11950))

(assert (=> b!4498579 (= e!2802191 (= ((_ map and) (content!8256 (keys!17522 lt!1679928)) ((_ map not) (store ((as const (Array K!11950 Bool)) false) key!3287 true))) (content!8256 (keys!17522 lt!1680118))))))

(assert (= (and d!1380166 res!1870057) b!4498579))

(declare-fun m!5227997 () Bool)

(assert (=> d!1380166 m!5227997))

(declare-fun m!5227999 () Bool)

(assert (=> d!1380166 m!5227999))

(declare-fun m!5228001 () Bool)

(assert (=> b!4498579 m!5228001))

(declare-fun m!5228003 () Bool)

(assert (=> b!4498579 m!5228003))

(declare-fun m!5228005 () Bool)

(assert (=> b!4498579 m!5228005))

(assert (=> b!4498579 m!5228003))

(assert (=> b!4498579 m!5228001))

(declare-fun m!5228007 () Bool)

(assert (=> b!4498579 m!5228007))

(declare-fun m!5228009 () Bool)

(assert (=> b!4498579 m!5228009))

(assert (=> b!4498325 d!1380166))

(declare-fun d!1380172 () Bool)

(declare-fun e!2802194 () Bool)

(assert (=> d!1380172 e!2802194))

(declare-fun res!1870063 () Bool)

(assert (=> d!1380172 (=> (not res!1870063) (not e!2802194))))

(declare-fun lt!1680133 () ListLongMap!2887)

(assert (=> d!1380172 (= res!1870063 (contains!13209 lt!1680133 (_1!28760 lt!1679932)))))

(declare-fun lt!1680131 () List!50665)

(assert (=> d!1380172 (= lt!1680133 (ListLongMap!2888 lt!1680131))))

(declare-fun lt!1680132 () Unit!91740)

(declare-fun lt!1680130 () Unit!91740)

(assert (=> d!1380172 (= lt!1680132 lt!1680130)))

(assert (=> d!1380172 (= (getValueByKey!1024 lt!1680131 (_1!28760 lt!1679932)) (Some!11043 (_2!28760 lt!1679932)))))

(declare-fun lemmaContainsTupThenGetReturnValue!632 (List!50665 (_ BitVec 64) List!50664) Unit!91740)

(assert (=> d!1380172 (= lt!1680130 (lemmaContainsTupThenGetReturnValue!632 lt!1680131 (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(declare-fun insertStrictlySorted!374 (List!50665 (_ BitVec 64) List!50664) List!50665)

(assert (=> d!1380172 (= lt!1680131 (insertStrictlySorted!374 (toList!4255 lt!1679939) (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(assert (=> d!1380172 (= (+!1470 lt!1679939 lt!1679932) lt!1680133)))

(declare-fun b!4498584 () Bool)

(declare-fun res!1870062 () Bool)

(assert (=> b!4498584 (=> (not res!1870062) (not e!2802194))))

(assert (=> b!4498584 (= res!1870062 (= (getValueByKey!1024 (toList!4255 lt!1680133) (_1!28760 lt!1679932)) (Some!11043 (_2!28760 lt!1679932))))))

(declare-fun b!4498585 () Bool)

(assert (=> b!4498585 (= e!2802194 (contains!13211 (toList!4255 lt!1680133) lt!1679932))))

(assert (= (and d!1380172 res!1870063) b!4498584))

(assert (= (and b!4498584 res!1870062) b!4498585))

(declare-fun m!5228011 () Bool)

(assert (=> d!1380172 m!5228011))

(declare-fun m!5228013 () Bool)

(assert (=> d!1380172 m!5228013))

(declare-fun m!5228015 () Bool)

(assert (=> d!1380172 m!5228015))

(declare-fun m!5228017 () Bool)

(assert (=> d!1380172 m!5228017))

(declare-fun m!5228019 () Bool)

(assert (=> b!4498584 m!5228019))

(declare-fun m!5228021 () Bool)

(assert (=> b!4498585 m!5228021))

(assert (=> b!4498325 d!1380172))

(declare-fun bs!835075 () Bool)

(declare-fun d!1380174 () Bool)

(assert (= bs!835075 (and d!1380174 d!1380050)))

(declare-fun lambda!168531 () Int)

(assert (=> bs!835075 (= lambda!168531 lambda!168491)))

(declare-fun bs!835076 () Bool)

(assert (= bs!835076 (and d!1380174 start!443976)))

(assert (=> bs!835076 (= lambda!168531 lambda!168485)))

(declare-fun bs!835077 () Bool)

(assert (= bs!835077 (and d!1380174 d!1380150)))

(assert (=> bs!835077 (not (= lambda!168531 lambda!168524))))

(declare-fun bs!835078 () Bool)

(assert (= bs!835078 (and d!1380174 d!1380096)))

(assert (=> bs!835078 (= lambda!168531 lambda!168499)))

(declare-fun bs!835079 () Bool)

(assert (= bs!835079 (and d!1380174 d!1380124)))

(assert (=> bs!835079 (= lambda!168531 lambda!168519)))

(assert (=> d!1380174 (eq!581 (extractMap!1180 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)))) (-!350 (extractMap!1180 (toList!4255 lt!1679939)) key!3287))))

(declare-fun lt!1680136 () Unit!91740)

(declare-fun choose!29103 (ListLongMap!2887 (_ BitVec 64) List!50664 K!11950 Hashable!5519) Unit!91740)

(assert (=> d!1380174 (= lt!1680136 (choose!29103 lt!1679939 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1380174 (forall!10173 (toList!4255 lt!1679939) lambda!168531)))

(assert (=> d!1380174 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!109 lt!1679939 hash!344 newBucket!178 key!3287 hashF!1107) lt!1680136)))

(declare-fun bs!835080 () Bool)

(assert (= bs!835080 d!1380174))

(declare-fun m!5228033 () Bool)

(assert (=> bs!835080 m!5228033))

(declare-fun m!5228035 () Bool)

(assert (=> bs!835080 m!5228035))

(declare-fun m!5228037 () Bool)

(assert (=> bs!835080 m!5228037))

(declare-fun m!5228039 () Bool)

(assert (=> bs!835080 m!5228039))

(assert (=> bs!835080 m!5228035))

(assert (=> bs!835080 m!5227543))

(assert (=> bs!835080 m!5227543))

(assert (=> bs!835080 m!5228037))

(declare-fun m!5228041 () Bool)

(assert (=> bs!835080 m!5228041))

(declare-fun m!5228043 () Bool)

(assert (=> bs!835080 m!5228043))

(assert (=> b!4498325 d!1380174))

(declare-fun bs!835081 () Bool)

(declare-fun d!1380180 () Bool)

(assert (= bs!835081 (and d!1380180 d!1380050)))

(declare-fun lambda!168532 () Int)

(assert (=> bs!835081 (= lambda!168532 lambda!168491)))

(declare-fun bs!835082 () Bool)

(assert (= bs!835082 (and d!1380180 start!443976)))

(assert (=> bs!835082 (= lambda!168532 lambda!168485)))

(declare-fun bs!835083 () Bool)

(assert (= bs!835083 (and d!1380180 d!1380174)))

(assert (=> bs!835083 (= lambda!168532 lambda!168531)))

(declare-fun bs!835084 () Bool)

(assert (= bs!835084 (and d!1380180 d!1380150)))

(assert (=> bs!835084 (not (= lambda!168532 lambda!168524))))

(declare-fun bs!835085 () Bool)

(assert (= bs!835085 (and d!1380180 d!1380096)))

(assert (=> bs!835085 (= lambda!168532 lambda!168499)))

(declare-fun bs!835086 () Bool)

(assert (= bs!835086 (and d!1380180 d!1380124)))

(assert (=> bs!835086 (= lambda!168532 lambda!168519)))

(declare-fun lt!1680137 () ListMap!3517)

(assert (=> d!1380180 (invariantList!983 (toList!4256 lt!1680137))))

(declare-fun e!2802201 () ListMap!3517)

(assert (=> d!1380180 (= lt!1680137 e!2802201)))

(declare-fun c!766691 () Bool)

(assert (=> d!1380180 (= c!766691 ((_ is Cons!50541) (toList!4255 (+!1470 lt!1679939 lt!1679932))))))

(assert (=> d!1380180 (forall!10173 (toList!4255 (+!1470 lt!1679939 lt!1679932)) lambda!168532)))

(assert (=> d!1380180 (= (extractMap!1180 (toList!4255 (+!1470 lt!1679939 lt!1679932))) lt!1680137)))

(declare-fun b!4498596 () Bool)

(assert (=> b!4498596 (= e!2802201 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))))))

(declare-fun b!4498597 () Bool)

(assert (=> b!4498597 (= e!2802201 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380180 c!766691) b!4498596))

(assert (= (and d!1380180 (not c!766691)) b!4498597))

(declare-fun m!5228045 () Bool)

(assert (=> d!1380180 m!5228045))

(declare-fun m!5228047 () Bool)

(assert (=> d!1380180 m!5228047))

(declare-fun m!5228049 () Bool)

(assert (=> b!4498596 m!5228049))

(assert (=> b!4498596 m!5228049))

(declare-fun m!5228051 () Bool)

(assert (=> b!4498596 m!5228051))

(assert (=> b!4498325 d!1380180))

(declare-fun d!1380182 () Bool)

(declare-fun e!2802202 () Bool)

(assert (=> d!1380182 e!2802202))

(declare-fun res!1870065 () Bool)

(assert (=> d!1380182 (=> (not res!1870065) (not e!2802202))))

(declare-fun lt!1680141 () ListLongMap!2887)

(assert (=> d!1380182 (= res!1870065 (contains!13209 lt!1680141 (_1!28760 lt!1679924)))))

(declare-fun lt!1680139 () List!50665)

(assert (=> d!1380182 (= lt!1680141 (ListLongMap!2888 lt!1680139))))

(declare-fun lt!1680140 () Unit!91740)

(declare-fun lt!1680138 () Unit!91740)

(assert (=> d!1380182 (= lt!1680140 lt!1680138)))

(assert (=> d!1380182 (= (getValueByKey!1024 lt!1680139 (_1!28760 lt!1679924)) (Some!11043 (_2!28760 lt!1679924)))))

(assert (=> d!1380182 (= lt!1680138 (lemmaContainsTupThenGetReturnValue!632 lt!1680139 (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(assert (=> d!1380182 (= lt!1680139 (insertStrictlySorted!374 (toList!4255 lt!1679939) (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(assert (=> d!1380182 (= (+!1470 lt!1679939 lt!1679924) lt!1680141)))

(declare-fun b!4498598 () Bool)

(declare-fun res!1870064 () Bool)

(assert (=> b!4498598 (=> (not res!1870064) (not e!2802202))))

(assert (=> b!4498598 (= res!1870064 (= (getValueByKey!1024 (toList!4255 lt!1680141) (_1!28760 lt!1679924)) (Some!11043 (_2!28760 lt!1679924))))))

(declare-fun b!4498599 () Bool)

(assert (=> b!4498599 (= e!2802202 (contains!13211 (toList!4255 lt!1680141) lt!1679924))))

(assert (= (and d!1380182 res!1870065) b!4498598))

(assert (= (and b!4498598 res!1870064) b!4498599))

(declare-fun m!5228053 () Bool)

(assert (=> d!1380182 m!5228053))

(declare-fun m!5228055 () Bool)

(assert (=> d!1380182 m!5228055))

(declare-fun m!5228057 () Bool)

(assert (=> d!1380182 m!5228057))

(declare-fun m!5228059 () Bool)

(assert (=> d!1380182 m!5228059))

(declare-fun m!5228061 () Bool)

(assert (=> b!4498598 m!5228061))

(declare-fun m!5228063 () Bool)

(assert (=> b!4498599 m!5228063))

(assert (=> b!4498325 d!1380182))

(declare-fun bs!835087 () Bool)

(declare-fun d!1380184 () Bool)

(assert (= bs!835087 (and d!1380184 d!1380180)))

(declare-fun lambda!168533 () Int)

(assert (=> bs!835087 (= lambda!168533 lambda!168532)))

(declare-fun bs!835088 () Bool)

(assert (= bs!835088 (and d!1380184 d!1380050)))

(assert (=> bs!835088 (= lambda!168533 lambda!168491)))

(declare-fun bs!835089 () Bool)

(assert (= bs!835089 (and d!1380184 start!443976)))

(assert (=> bs!835089 (= lambda!168533 lambda!168485)))

(declare-fun bs!835090 () Bool)

(assert (= bs!835090 (and d!1380184 d!1380174)))

(assert (=> bs!835090 (= lambda!168533 lambda!168531)))

(declare-fun bs!835091 () Bool)

(assert (= bs!835091 (and d!1380184 d!1380150)))

(assert (=> bs!835091 (not (= lambda!168533 lambda!168524))))

(declare-fun bs!835092 () Bool)

(assert (= bs!835092 (and d!1380184 d!1380096)))

(assert (=> bs!835092 (= lambda!168533 lambda!168499)))

(declare-fun bs!835093 () Bool)

(assert (= bs!835093 (and d!1380184 d!1380124)))

(assert (=> bs!835093 (= lambda!168533 lambda!168519)))

(declare-fun lt!1680142 () ListMap!3517)

(assert (=> d!1380184 (invariantList!983 (toList!4256 lt!1680142))))

(declare-fun e!2802203 () ListMap!3517)

(assert (=> d!1380184 (= lt!1680142 e!2802203)))

(declare-fun c!766692 () Bool)

(assert (=> d!1380184 (= c!766692 ((_ is Cons!50541) (toList!4255 lt!1679935)))))

(assert (=> d!1380184 (forall!10173 (toList!4255 lt!1679935) lambda!168533)))

(assert (=> d!1380184 (= (extractMap!1180 (toList!4255 lt!1679935)) lt!1680142)))

(declare-fun b!4498600 () Bool)

(assert (=> b!4498600 (= e!2802203 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 lt!1679935))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))))))

(declare-fun b!4498601 () Bool)

(assert (=> b!4498601 (= e!2802203 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380184 c!766692) b!4498600))

(assert (= (and d!1380184 (not c!766692)) b!4498601))

(declare-fun m!5228065 () Bool)

(assert (=> d!1380184 m!5228065))

(declare-fun m!5228067 () Bool)

(assert (=> d!1380184 m!5228067))

(declare-fun m!5228069 () Bool)

(assert (=> b!4498600 m!5228069))

(assert (=> b!4498600 m!5228069))

(declare-fun m!5228071 () Bool)

(assert (=> b!4498600 m!5228071))

(assert (=> b!4498325 d!1380184))

(declare-fun d!1380186 () Bool)

(declare-fun head!9343 (List!50665) tuple2!50932)

(assert (=> d!1380186 (= (head!9342 lm!1477) (head!9343 (toList!4255 lm!1477)))))

(declare-fun bs!835094 () Bool)

(assert (= bs!835094 d!1380186))

(declare-fun m!5228073 () Bool)

(assert (=> bs!835094 m!5228073))

(assert (=> b!4498325 d!1380186))

(declare-fun d!1380188 () Bool)

(assert (=> d!1380188 (= (eq!581 (extractMap!1180 (toList!4255 lt!1679935)) (-!350 lt!1679928 key!3287)) (= (content!8255 (toList!4256 (extractMap!1180 (toList!4255 lt!1679935)))) (content!8255 (toList!4256 (-!350 lt!1679928 key!3287)))))))

(declare-fun bs!835095 () Bool)

(assert (= bs!835095 d!1380188))

(declare-fun m!5228075 () Bool)

(assert (=> bs!835095 m!5228075))

(declare-fun m!5228077 () Bool)

(assert (=> bs!835095 m!5228077))

(assert (=> b!4498325 d!1380188))

(declare-fun d!1380190 () Bool)

(assert (=> d!1380190 (= (eq!581 lt!1679929 lt!1679938) (= (content!8255 (toList!4256 lt!1679929)) (content!8255 (toList!4256 lt!1679938))))))

(declare-fun bs!835096 () Bool)

(assert (= bs!835096 d!1380190))

(assert (=> bs!835096 m!5227945))

(assert (=> bs!835096 m!5227943))

(assert (=> b!4498325 d!1380190))

(declare-fun d!1380192 () Bool)

(declare-fun e!2802205 () Bool)

(assert (=> d!1380192 e!2802205))

(declare-fun res!1870066 () Bool)

(assert (=> d!1380192 (=> res!1870066 e!2802205)))

(declare-fun lt!1680143 () Bool)

(assert (=> d!1380192 (= res!1870066 (not lt!1680143))))

(declare-fun lt!1680144 () Bool)

(assert (=> d!1380192 (= lt!1680143 lt!1680144)))

(declare-fun lt!1680146 () Unit!91740)

(declare-fun e!2802204 () Unit!91740)

(assert (=> d!1380192 (= lt!1680146 e!2802204)))

(declare-fun c!766693 () Bool)

(assert (=> d!1380192 (= c!766693 lt!1680144)))

(assert (=> d!1380192 (= lt!1680144 (containsKey!1679 (toList!4255 lt!1679939) hash!344))))

(assert (=> d!1380192 (= (contains!13209 lt!1679939 hash!344) lt!1680143)))

(declare-fun b!4498602 () Bool)

(declare-fun lt!1680145 () Unit!91740)

(assert (=> b!4498602 (= e!2802204 lt!1680145)))

(assert (=> b!4498602 (= lt!1680145 (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lt!1679939) hash!344))))

(assert (=> b!4498602 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344))))

(declare-fun b!4498603 () Bool)

(declare-fun Unit!91755 () Unit!91740)

(assert (=> b!4498603 (= e!2802204 Unit!91755)))

(declare-fun b!4498604 () Bool)

(assert (=> b!4498604 (= e!2802205 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344)))))

(assert (= (and d!1380192 c!766693) b!4498602))

(assert (= (and d!1380192 (not c!766693)) b!4498603))

(assert (= (and d!1380192 (not res!1870066)) b!4498604))

(declare-fun m!5228079 () Bool)

(assert (=> d!1380192 m!5228079))

(declare-fun m!5228081 () Bool)

(assert (=> b!4498602 m!5228081))

(assert (=> b!4498602 m!5227937))

(assert (=> b!4498602 m!5227937))

(declare-fun m!5228083 () Bool)

(assert (=> b!4498602 m!5228083))

(assert (=> b!4498604 m!5227937))

(assert (=> b!4498604 m!5227937))

(assert (=> b!4498604 m!5228083))

(assert (=> b!4498315 d!1380192))

(declare-fun d!1380194 () Bool)

(declare-fun tail!7666 (List!50665) List!50665)

(assert (=> d!1380194 (= (tail!7664 lm!1477) (ListLongMap!2888 (tail!7666 (toList!4255 lm!1477))))))

(declare-fun bs!835097 () Bool)

(assert (= bs!835097 d!1380194))

(declare-fun m!5228085 () Bool)

(assert (=> bs!835097 m!5228085))

(assert (=> b!4498315 d!1380194))

(declare-fun d!1380196 () Bool)

(declare-fun hash!2687 (Hashable!5519 K!11950) (_ BitVec 64))

(assert (=> d!1380196 (= (hash!2683 hashF!1107 key!3287) (hash!2687 hashF!1107 key!3287))))

(declare-fun bs!835098 () Bool)

(assert (= bs!835098 d!1380196))

(declare-fun m!5228087 () Bool)

(assert (=> bs!835098 m!5228087))

(assert (=> b!4498324 d!1380196))

(declare-fun d!1380198 () Bool)

(declare-fun res!1870073 () Bool)

(declare-fun e!2802213 () Bool)

(assert (=> d!1380198 (=> res!1870073 e!2802213)))

(declare-fun e!2802212 () Bool)

(assert (=> d!1380198 (= res!1870073 e!2802212)))

(declare-fun res!1870074 () Bool)

(assert (=> d!1380198 (=> (not res!1870074) (not e!2802212))))

(assert (=> d!1380198 (= res!1870074 ((_ is Cons!50541) (t!357623 (toList!4255 lm!1477))))))

(assert (=> d!1380198 (= (containsKeyBiggerList!104 (t!357623 (toList!4255 lm!1477)) key!3287) e!2802213)))

(declare-fun b!4498611 () Bool)

(assert (=> b!4498611 (= e!2802212 (containsKey!1676 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(declare-fun b!4498612 () Bool)

(declare-fun e!2802214 () Bool)

(assert (=> b!4498612 (= e!2802213 e!2802214)))

(declare-fun res!1870075 () Bool)

(assert (=> b!4498612 (=> (not res!1870075) (not e!2802214))))

(assert (=> b!4498612 (= res!1870075 ((_ is Cons!50541) (t!357623 (toList!4255 lm!1477))))))

(declare-fun b!4498613 () Bool)

(assert (=> b!4498613 (= e!2802214 (containsKeyBiggerList!104 (t!357623 (t!357623 (toList!4255 lm!1477))) key!3287))))

(assert (= (and d!1380198 res!1870074) b!4498611))

(assert (= (and d!1380198 (not res!1870073)) b!4498612))

(assert (= (and b!4498612 res!1870075) b!4498613))

(declare-fun m!5228089 () Bool)

(assert (=> b!4498611 m!5228089))

(declare-fun m!5228091 () Bool)

(assert (=> b!4498613 m!5228091))

(assert (=> b!4498322 d!1380198))

(declare-fun d!1380200 () Bool)

(declare-fun res!1870076 () Bool)

(declare-fun e!2802216 () Bool)

(assert (=> d!1380200 (=> res!1870076 e!2802216)))

(declare-fun e!2802215 () Bool)

(assert (=> d!1380200 (= res!1870076 e!2802215)))

(declare-fun res!1870077 () Bool)

(assert (=> d!1380200 (=> (not res!1870077) (not e!2802215))))

(assert (=> d!1380200 (= res!1870077 ((_ is Cons!50541) (toList!4255 lt!1679939)))))

(assert (=> d!1380200 (= (containsKeyBiggerList!104 (toList!4255 lt!1679939) key!3287) e!2802216)))

(declare-fun b!4498614 () Bool)

(assert (=> b!4498614 (= e!2802215 (containsKey!1676 (_2!28760 (h!56360 (toList!4255 lt!1679939))) key!3287))))

(declare-fun b!4498615 () Bool)

(declare-fun e!2802217 () Bool)

(assert (=> b!4498615 (= e!2802216 e!2802217)))

(declare-fun res!1870078 () Bool)

(assert (=> b!4498615 (=> (not res!1870078) (not e!2802217))))

(assert (=> b!4498615 (= res!1870078 ((_ is Cons!50541) (toList!4255 lt!1679939)))))

(declare-fun b!4498616 () Bool)

(assert (=> b!4498616 (= e!2802217 (containsKeyBiggerList!104 (t!357623 (toList!4255 lt!1679939)) key!3287))))

(assert (= (and d!1380200 res!1870077) b!4498614))

(assert (= (and d!1380200 (not res!1870076)) b!4498615))

(assert (= (and b!4498615 res!1870078) b!4498616))

(declare-fun m!5228093 () Bool)

(assert (=> b!4498614 m!5228093))

(declare-fun m!5228095 () Bool)

(assert (=> b!4498616 m!5228095))

(assert (=> b!4498322 d!1380200))

(declare-fun bs!835099 () Bool)

(declare-fun d!1380202 () Bool)

(assert (= bs!835099 (and d!1380202 d!1380184)))

(declare-fun lambda!168536 () Int)

(assert (=> bs!835099 (= lambda!168536 lambda!168533)))

(declare-fun bs!835100 () Bool)

(assert (= bs!835100 (and d!1380202 d!1380180)))

(assert (=> bs!835100 (= lambda!168536 lambda!168532)))

(declare-fun bs!835101 () Bool)

(assert (= bs!835101 (and d!1380202 d!1380050)))

(assert (=> bs!835101 (= lambda!168536 lambda!168491)))

(declare-fun bs!835102 () Bool)

(assert (= bs!835102 (and d!1380202 start!443976)))

(assert (=> bs!835102 (= lambda!168536 lambda!168485)))

(declare-fun bs!835103 () Bool)

(assert (= bs!835103 (and d!1380202 d!1380174)))

(assert (=> bs!835103 (= lambda!168536 lambda!168531)))

(declare-fun bs!835104 () Bool)

(assert (= bs!835104 (and d!1380202 d!1380150)))

(assert (=> bs!835104 (not (= lambda!168536 lambda!168524))))

(declare-fun bs!835105 () Bool)

(assert (= bs!835105 (and d!1380202 d!1380096)))

(assert (=> bs!835105 (= lambda!168536 lambda!168499)))

(declare-fun bs!835106 () Bool)

(assert (= bs!835106 (and d!1380202 d!1380124)))

(assert (=> bs!835106 (= lambda!168536 lambda!168519)))

(assert (=> d!1380202 (containsKeyBiggerList!104 (toList!4255 lt!1679939) key!3287)))

(declare-fun lt!1680149 () Unit!91740)

(declare-fun choose!29106 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> d!1380202 (= lt!1680149 (choose!29106 lt!1679939 key!3287 hashF!1107))))

(assert (=> d!1380202 (forall!10173 (toList!4255 lt!1679939) lambda!168536)))

(assert (=> d!1380202 (= (lemmaInLongMapThenContainsKeyBiggerList!40 lt!1679939 key!3287 hashF!1107) lt!1680149)))

(declare-fun bs!835107 () Bool)

(assert (= bs!835107 d!1380202))

(assert (=> bs!835107 m!5227583))

(declare-fun m!5228097 () Bool)

(assert (=> bs!835107 m!5228097))

(declare-fun m!5228099 () Bool)

(assert (=> bs!835107 m!5228099))

(assert (=> b!4498322 d!1380202))

(declare-fun d!1380204 () Bool)

(declare-fun e!2802218 () Bool)

(assert (=> d!1380204 e!2802218))

(declare-fun res!1870080 () Bool)

(assert (=> d!1380204 (=> (not res!1870080) (not e!2802218))))

(declare-fun lt!1680153 () ListLongMap!2887)

(assert (=> d!1380204 (= res!1870080 (contains!13209 lt!1680153 (_1!28760 lt!1679924)))))

(declare-fun lt!1680151 () List!50665)

(assert (=> d!1380204 (= lt!1680153 (ListLongMap!2888 lt!1680151))))

(declare-fun lt!1680152 () Unit!91740)

(declare-fun lt!1680150 () Unit!91740)

(assert (=> d!1380204 (= lt!1680152 lt!1680150)))

(assert (=> d!1380204 (= (getValueByKey!1024 lt!1680151 (_1!28760 lt!1679924)) (Some!11043 (_2!28760 lt!1679924)))))

(assert (=> d!1380204 (= lt!1680150 (lemmaContainsTupThenGetReturnValue!632 lt!1680151 (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(assert (=> d!1380204 (= lt!1680151 (insertStrictlySorted!374 (toList!4255 lm!1477) (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(assert (=> d!1380204 (= (+!1470 lm!1477 lt!1679924) lt!1680153)))

(declare-fun b!4498617 () Bool)

(declare-fun res!1870079 () Bool)

(assert (=> b!4498617 (=> (not res!1870079) (not e!2802218))))

(assert (=> b!4498617 (= res!1870079 (= (getValueByKey!1024 (toList!4255 lt!1680153) (_1!28760 lt!1679924)) (Some!11043 (_2!28760 lt!1679924))))))

(declare-fun b!4498618 () Bool)

(assert (=> b!4498618 (= e!2802218 (contains!13211 (toList!4255 lt!1680153) lt!1679924))))

(assert (= (and d!1380204 res!1870080) b!4498617))

(assert (= (and b!4498617 res!1870079) b!4498618))

(declare-fun m!5228101 () Bool)

(assert (=> d!1380204 m!5228101))

(declare-fun m!5228103 () Bool)

(assert (=> d!1380204 m!5228103))

(declare-fun m!5228105 () Bool)

(assert (=> d!1380204 m!5228105))

(declare-fun m!5228107 () Bool)

(assert (=> d!1380204 m!5228107))

(declare-fun m!5228109 () Bool)

(assert (=> b!4498617 m!5228109))

(declare-fun m!5228111 () Bool)

(assert (=> b!4498618 m!5228111))

(assert (=> b!4498333 d!1380204))

(declare-fun d!1380206 () Bool)

(declare-fun e!2802219 () Bool)

(assert (=> d!1380206 e!2802219))

(declare-fun res!1870082 () Bool)

(assert (=> d!1380206 (=> (not res!1870082) (not e!2802219))))

(declare-fun lt!1680157 () ListLongMap!2887)

(assert (=> d!1380206 (= res!1870082 (contains!13209 lt!1680157 (_1!28760 lt!1679932)))))

(declare-fun lt!1680155 () List!50665)

(assert (=> d!1380206 (= lt!1680157 (ListLongMap!2888 lt!1680155))))

(declare-fun lt!1680156 () Unit!91740)

(declare-fun lt!1680154 () Unit!91740)

(assert (=> d!1380206 (= lt!1680156 lt!1680154)))

(assert (=> d!1380206 (= (getValueByKey!1024 lt!1680155 (_1!28760 lt!1679932)) (Some!11043 (_2!28760 lt!1679932)))))

(assert (=> d!1380206 (= lt!1680154 (lemmaContainsTupThenGetReturnValue!632 lt!1680155 (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(assert (=> d!1380206 (= lt!1680155 (insertStrictlySorted!374 (toList!4255 lt!1679935) (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(assert (=> d!1380206 (= (+!1470 lt!1679935 lt!1679932) lt!1680157)))

(declare-fun b!4498619 () Bool)

(declare-fun res!1870081 () Bool)

(assert (=> b!4498619 (=> (not res!1870081) (not e!2802219))))

(assert (=> b!4498619 (= res!1870081 (= (getValueByKey!1024 (toList!4255 lt!1680157) (_1!28760 lt!1679932)) (Some!11043 (_2!28760 lt!1679932))))))

(declare-fun b!4498620 () Bool)

(assert (=> b!4498620 (= e!2802219 (contains!13211 (toList!4255 lt!1680157) lt!1679932))))

(assert (= (and d!1380206 res!1870082) b!4498619))

(assert (= (and b!4498619 res!1870081) b!4498620))

(declare-fun m!5228113 () Bool)

(assert (=> d!1380206 m!5228113))

(declare-fun m!5228115 () Bool)

(assert (=> d!1380206 m!5228115))

(declare-fun m!5228117 () Bool)

(assert (=> d!1380206 m!5228117))

(declare-fun m!5228119 () Bool)

(assert (=> d!1380206 m!5228119))

(declare-fun m!5228121 () Bool)

(assert (=> b!4498619 m!5228121))

(declare-fun m!5228123 () Bool)

(assert (=> b!4498620 m!5228123))

(assert (=> b!4498333 d!1380206))

(declare-fun b!4498621 () Bool)

(declare-fun e!2802223 () Unit!91740)

(declare-fun lt!1680163 () Unit!91740)

(assert (=> b!4498621 (= e!2802223 lt!1680163)))

(declare-fun lt!1680164 () Unit!91740)

(assert (=> b!4498621 (= lt!1680164 (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 lt!1679928) key!3287))))

(assert (=> b!4498621 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287))))

(declare-fun lt!1680158 () Unit!91740)

(assert (=> b!4498621 (= lt!1680158 lt!1680164)))

(assert (=> b!4498621 (= lt!1680163 (lemmaInListThenGetKeysListContains!427 (toList!4256 lt!1679928) key!3287))))

(declare-fun call!313084 () Bool)

(assert (=> b!4498621 call!313084))

(declare-fun b!4498622 () Bool)

(declare-fun e!2802224 () Bool)

(assert (=> b!4498622 (= e!2802224 (contains!13213 (keys!17522 lt!1679928) key!3287))))

(declare-fun b!4498623 () Bool)

(declare-fun e!2802220 () Unit!91740)

(assert (=> b!4498623 (= e!2802223 e!2802220)))

(declare-fun c!766694 () Bool)

(assert (=> b!4498623 (= c!766694 call!313084)))

(declare-fun b!4498624 () Bool)

(declare-fun e!2802222 () List!50667)

(assert (=> b!4498624 (= e!2802222 (keys!17522 lt!1679928))))

(declare-fun b!4498625 () Bool)

(declare-fun Unit!91756 () Unit!91740)

(assert (=> b!4498625 (= e!2802220 Unit!91756)))

(declare-fun d!1380208 () Bool)

(declare-fun e!2802225 () Bool)

(assert (=> d!1380208 e!2802225))

(declare-fun res!1870083 () Bool)

(assert (=> d!1380208 (=> res!1870083 e!2802225)))

(declare-fun e!2802221 () Bool)

(assert (=> d!1380208 (= res!1870083 e!2802221)))

(declare-fun res!1870085 () Bool)

(assert (=> d!1380208 (=> (not res!1870085) (not e!2802221))))

(declare-fun lt!1680161 () Bool)

(assert (=> d!1380208 (= res!1870085 (not lt!1680161))))

(declare-fun lt!1680162 () Bool)

(assert (=> d!1380208 (= lt!1680161 lt!1680162)))

(declare-fun lt!1680159 () Unit!91740)

(assert (=> d!1380208 (= lt!1680159 e!2802223)))

(declare-fun c!766695 () Bool)

(assert (=> d!1380208 (= c!766695 lt!1680162)))

(assert (=> d!1380208 (= lt!1680162 (containsKey!1680 (toList!4256 lt!1679928) key!3287))))

(assert (=> d!1380208 (= (contains!13210 lt!1679928 key!3287) lt!1680161)))

(declare-fun b!4498626 () Bool)

(assert (=> b!4498626 false))

(declare-fun lt!1680165 () Unit!91740)

(declare-fun lt!1680160 () Unit!91740)

(assert (=> b!4498626 (= lt!1680165 lt!1680160)))

(assert (=> b!4498626 (containsKey!1680 (toList!4256 lt!1679928) key!3287)))

(assert (=> b!4498626 (= lt!1680160 (lemmaInGetKeysListThenContainsKey!430 (toList!4256 lt!1679928) key!3287))))

(declare-fun Unit!91757 () Unit!91740)

(assert (=> b!4498626 (= e!2802220 Unit!91757)))

(declare-fun b!4498627 () Bool)

(assert (=> b!4498627 (= e!2802225 e!2802224)))

(declare-fun res!1870084 () Bool)

(assert (=> b!4498627 (=> (not res!1870084) (not e!2802224))))

(assert (=> b!4498627 (= res!1870084 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287)))))

(declare-fun b!4498628 () Bool)

(assert (=> b!4498628 (= e!2802222 (getKeysList!431 (toList!4256 lt!1679928)))))

(declare-fun bm!313079 () Bool)

(assert (=> bm!313079 (= call!313084 (contains!13213 e!2802222 key!3287))))

(declare-fun c!766696 () Bool)

(assert (=> bm!313079 (= c!766696 c!766695)))

(declare-fun b!4498629 () Bool)

(assert (=> b!4498629 (= e!2802221 (not (contains!13213 (keys!17522 lt!1679928) key!3287)))))

(assert (= (and d!1380208 c!766695) b!4498621))

(assert (= (and d!1380208 (not c!766695)) b!4498623))

(assert (= (and b!4498623 c!766694) b!4498626))

(assert (= (and b!4498623 (not c!766694)) b!4498625))

(assert (= (or b!4498621 b!4498623) bm!313079))

(assert (= (and bm!313079 c!766696) b!4498628))

(assert (= (and bm!313079 (not c!766696)) b!4498624))

(assert (= (and d!1380208 res!1870085) b!4498629))

(assert (= (and d!1380208 (not res!1870083)) b!4498627))

(assert (= (and b!4498627 res!1870084) b!4498622))

(declare-fun m!5228125 () Bool)

(assert (=> bm!313079 m!5228125))

(assert (=> b!4498622 m!5228001))

(assert (=> b!4498622 m!5228001))

(declare-fun m!5228127 () Bool)

(assert (=> b!4498622 m!5228127))

(declare-fun m!5228129 () Bool)

(assert (=> d!1380208 m!5228129))

(assert (=> b!4498629 m!5228001))

(assert (=> b!4498629 m!5228001))

(assert (=> b!4498629 m!5228127))

(assert (=> b!4498626 m!5228129))

(declare-fun m!5228131 () Bool)

(assert (=> b!4498626 m!5228131))

(declare-fun m!5228133 () Bool)

(assert (=> b!4498621 m!5228133))

(declare-fun m!5228135 () Bool)

(assert (=> b!4498621 m!5228135))

(assert (=> b!4498621 m!5228135))

(declare-fun m!5228137 () Bool)

(assert (=> b!4498621 m!5228137))

(declare-fun m!5228139 () Bool)

(assert (=> b!4498621 m!5228139))

(assert (=> b!4498624 m!5228001))

(assert (=> b!4498627 m!5228135))

(assert (=> b!4498627 m!5228135))

(assert (=> b!4498627 m!5228137))

(declare-fun m!5228141 () Bool)

(assert (=> b!4498628 m!5228141))

(assert (=> b!4498323 d!1380208))

(declare-fun b!4498630 () Bool)

(declare-fun e!2802229 () Unit!91740)

(declare-fun lt!1680171 () Unit!91740)

(assert (=> b!4498630 (= e!2802229 lt!1680171)))

(declare-fun lt!1680172 () Unit!91740)

(assert (=> b!4498630 (= lt!1680172 (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(assert (=> b!4498630 (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(declare-fun lt!1680166 () Unit!91740)

(assert (=> b!4498630 (= lt!1680166 lt!1680172)))

(assert (=> b!4498630 (= lt!1680171 (lemmaInListThenGetKeysListContains!427 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(declare-fun call!313085 () Bool)

(assert (=> b!4498630 call!313085))

(declare-fun b!4498631 () Bool)

(declare-fun e!2802230 () Bool)

(assert (=> b!4498631 (= e!2802230 (contains!13213 (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(declare-fun b!4498632 () Bool)

(declare-fun e!2802226 () Unit!91740)

(assert (=> b!4498632 (= e!2802229 e!2802226)))

(declare-fun c!766697 () Bool)

(assert (=> b!4498632 (= c!766697 call!313085)))

(declare-fun b!4498633 () Bool)

(declare-fun e!2802228 () List!50667)

(assert (=> b!4498633 (= e!2802228 (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))

(declare-fun b!4498634 () Bool)

(declare-fun Unit!91758 () Unit!91740)

(assert (=> b!4498634 (= e!2802226 Unit!91758)))

(declare-fun d!1380210 () Bool)

(declare-fun e!2802231 () Bool)

(assert (=> d!1380210 e!2802231))

(declare-fun res!1870086 () Bool)

(assert (=> d!1380210 (=> res!1870086 e!2802231)))

(declare-fun e!2802227 () Bool)

(assert (=> d!1380210 (= res!1870086 e!2802227)))

(declare-fun res!1870088 () Bool)

(assert (=> d!1380210 (=> (not res!1870088) (not e!2802227))))

(declare-fun lt!1680169 () Bool)

(assert (=> d!1380210 (= res!1870088 (not lt!1680169))))

(declare-fun lt!1680170 () Bool)

(assert (=> d!1380210 (= lt!1680169 lt!1680170)))

(declare-fun lt!1680167 () Unit!91740)

(assert (=> d!1380210 (= lt!1680167 e!2802229)))

(declare-fun c!766698 () Bool)

(assert (=> d!1380210 (= c!766698 lt!1680170)))

(assert (=> d!1380210 (= lt!1680170 (containsKey!1680 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(assert (=> d!1380210 (= (contains!13210 (extractMap!1180 (t!357623 (toList!4255 lm!1477))) key!3287) lt!1680169)))

(declare-fun b!4498635 () Bool)

(assert (=> b!4498635 false))

(declare-fun lt!1680173 () Unit!91740)

(declare-fun lt!1680168 () Unit!91740)

(assert (=> b!4498635 (= lt!1680173 lt!1680168)))

(assert (=> b!4498635 (containsKey!1680 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287)))

(assert (=> b!4498635 (= lt!1680168 (lemmaInGetKeysListThenContainsKey!430 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(declare-fun Unit!91759 () Unit!91740)

(assert (=> b!4498635 (= e!2802226 Unit!91759)))

(declare-fun b!4498636 () Bool)

(assert (=> b!4498636 (= e!2802231 e!2802230)))

(declare-fun res!1870087 () Bool)

(assert (=> b!4498636 (=> (not res!1870087) (not e!2802230))))

(assert (=> b!4498636 (= res!1870087 (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287)))))

(declare-fun b!4498637 () Bool)

(assert (=> b!4498637 (= e!2802228 (getKeysList!431 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))

(declare-fun bm!313080 () Bool)

(assert (=> bm!313080 (= call!313085 (contains!13213 e!2802228 key!3287))))

(declare-fun c!766699 () Bool)

(assert (=> bm!313080 (= c!766699 c!766698)))

(declare-fun b!4498638 () Bool)

(assert (=> b!4498638 (= e!2802227 (not (contains!13213 (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287)))))

(assert (= (and d!1380210 c!766698) b!4498630))

(assert (= (and d!1380210 (not c!766698)) b!4498632))

(assert (= (and b!4498632 c!766697) b!4498635))

(assert (= (and b!4498632 (not c!766697)) b!4498634))

(assert (= (or b!4498630 b!4498632) bm!313080))

(assert (= (and bm!313080 c!766699) b!4498637))

(assert (= (and bm!313080 (not c!766699)) b!4498633))

(assert (= (and d!1380210 res!1870088) b!4498638))

(assert (= (and d!1380210 (not res!1870086)) b!4498636))

(assert (= (and b!4498636 res!1870087) b!4498631))

(declare-fun m!5228143 () Bool)

(assert (=> bm!313080 m!5228143))

(assert (=> b!4498631 m!5227545))

(declare-fun m!5228145 () Bool)

(assert (=> b!4498631 m!5228145))

(assert (=> b!4498631 m!5228145))

(declare-fun m!5228147 () Bool)

(assert (=> b!4498631 m!5228147))

(declare-fun m!5228149 () Bool)

(assert (=> d!1380210 m!5228149))

(assert (=> b!4498638 m!5227545))

(assert (=> b!4498638 m!5228145))

(assert (=> b!4498638 m!5228145))

(assert (=> b!4498638 m!5228147))

(assert (=> b!4498635 m!5228149))

(declare-fun m!5228151 () Bool)

(assert (=> b!4498635 m!5228151))

(declare-fun m!5228153 () Bool)

(assert (=> b!4498630 m!5228153))

(declare-fun m!5228155 () Bool)

(assert (=> b!4498630 m!5228155))

(assert (=> b!4498630 m!5228155))

(declare-fun m!5228157 () Bool)

(assert (=> b!4498630 m!5228157))

(declare-fun m!5228159 () Bool)

(assert (=> b!4498630 m!5228159))

(assert (=> b!4498633 m!5227545))

(assert (=> b!4498633 m!5228145))

(assert (=> b!4498636 m!5228155))

(assert (=> b!4498636 m!5228155))

(assert (=> b!4498636 m!5228157))

(declare-fun m!5228161 () Bool)

(assert (=> b!4498637 m!5228161))

(assert (=> b!4498323 d!1380210))

(declare-fun bs!835108 () Bool)

(declare-fun d!1380212 () Bool)

(assert (= bs!835108 (and d!1380212 d!1380202)))

(declare-fun lambda!168537 () Int)

(assert (=> bs!835108 (= lambda!168537 lambda!168536)))

(declare-fun bs!835109 () Bool)

(assert (= bs!835109 (and d!1380212 d!1380184)))

(assert (=> bs!835109 (= lambda!168537 lambda!168533)))

(declare-fun bs!835110 () Bool)

(assert (= bs!835110 (and d!1380212 d!1380180)))

(assert (=> bs!835110 (= lambda!168537 lambda!168532)))

(declare-fun bs!835111 () Bool)

(assert (= bs!835111 (and d!1380212 d!1380050)))

(assert (=> bs!835111 (= lambda!168537 lambda!168491)))

(declare-fun bs!835112 () Bool)

(assert (= bs!835112 (and d!1380212 start!443976)))

(assert (=> bs!835112 (= lambda!168537 lambda!168485)))

(declare-fun bs!835113 () Bool)

(assert (= bs!835113 (and d!1380212 d!1380174)))

(assert (=> bs!835113 (= lambda!168537 lambda!168531)))

(declare-fun bs!835114 () Bool)

(assert (= bs!835114 (and d!1380212 d!1380150)))

(assert (=> bs!835114 (not (= lambda!168537 lambda!168524))))

(declare-fun bs!835115 () Bool)

(assert (= bs!835115 (and d!1380212 d!1380096)))

(assert (=> bs!835115 (= lambda!168537 lambda!168499)))

(declare-fun bs!835116 () Bool)

(assert (= bs!835116 (and d!1380212 d!1380124)))

(assert (=> bs!835116 (= lambda!168537 lambda!168519)))

(declare-fun lt!1680174 () ListMap!3517)

(assert (=> d!1380212 (invariantList!983 (toList!4256 lt!1680174))))

(declare-fun e!2802232 () ListMap!3517)

(assert (=> d!1380212 (= lt!1680174 e!2802232)))

(declare-fun c!766700 () Bool)

(assert (=> d!1380212 (= c!766700 ((_ is Cons!50541) (t!357623 (toList!4255 lm!1477))))))

(assert (=> d!1380212 (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168537)))

(assert (=> d!1380212 (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680174)))

(declare-fun b!4498639 () Bool)

(assert (=> b!4498639 (= e!2802232 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))))))

(declare-fun b!4498640 () Bool)

(assert (=> b!4498640 (= e!2802232 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380212 c!766700) b!4498639))

(assert (= (and d!1380212 (not c!766700)) b!4498640))

(declare-fun m!5228163 () Bool)

(assert (=> d!1380212 m!5228163))

(declare-fun m!5228165 () Bool)

(assert (=> d!1380212 m!5228165))

(declare-fun m!5228167 () Bool)

(assert (=> b!4498639 m!5228167))

(assert (=> b!4498639 m!5228167))

(declare-fun m!5228169 () Bool)

(assert (=> b!4498639 m!5228169))

(assert (=> b!4498323 d!1380212))

(declare-fun bs!835117 () Bool)

(declare-fun d!1380214 () Bool)

(assert (= bs!835117 (and d!1380214 d!1380202)))

(declare-fun lambda!168540 () Int)

(assert (=> bs!835117 (= lambda!168540 lambda!168536)))

(declare-fun bs!835118 () Bool)

(assert (= bs!835118 (and d!1380214 d!1380184)))

(assert (=> bs!835118 (= lambda!168540 lambda!168533)))

(declare-fun bs!835119 () Bool)

(assert (= bs!835119 (and d!1380214 d!1380180)))

(assert (=> bs!835119 (= lambda!168540 lambda!168532)))

(declare-fun bs!835120 () Bool)

(assert (= bs!835120 (and d!1380214 d!1380050)))

(assert (=> bs!835120 (= lambda!168540 lambda!168491)))

(declare-fun bs!835121 () Bool)

(assert (= bs!835121 (and d!1380214 start!443976)))

(assert (=> bs!835121 (= lambda!168540 lambda!168485)))

(declare-fun bs!835122 () Bool)

(assert (= bs!835122 (and d!1380214 d!1380174)))

(assert (=> bs!835122 (= lambda!168540 lambda!168531)))

(declare-fun bs!835123 () Bool)

(assert (= bs!835123 (and d!1380214 d!1380150)))

(assert (=> bs!835123 (not (= lambda!168540 lambda!168524))))

(declare-fun bs!835124 () Bool)

(assert (= bs!835124 (and d!1380214 d!1380212)))

(assert (=> bs!835124 (= lambda!168540 lambda!168537)))

(declare-fun bs!835125 () Bool)

(assert (= bs!835125 (and d!1380214 d!1380096)))

(assert (=> bs!835125 (= lambda!168540 lambda!168499)))

(declare-fun bs!835126 () Bool)

(assert (= bs!835126 (and d!1380214 d!1380124)))

(assert (=> bs!835126 (= lambda!168540 lambda!168519)))

(assert (=> d!1380214 (contains!13210 (extractMap!1180 (toList!4255 lt!1679939)) key!3287)))

(declare-fun lt!1680177 () Unit!91740)

(declare-fun choose!29108 (ListLongMap!2887 K!11950 Hashable!5519) Unit!91740)

(assert (=> d!1380214 (= lt!1680177 (choose!29108 lt!1679939 key!3287 hashF!1107))))

(assert (=> d!1380214 (forall!10173 (toList!4255 lt!1679939) lambda!168540)))

(assert (=> d!1380214 (= (lemmaListContainsThenExtractedMapContains!94 lt!1679939 key!3287 hashF!1107) lt!1680177)))

(declare-fun bs!835127 () Bool)

(assert (= bs!835127 d!1380214))

(assert (=> bs!835127 m!5227543))

(assert (=> bs!835127 m!5227543))

(declare-fun m!5228171 () Bool)

(assert (=> bs!835127 m!5228171))

(declare-fun m!5228173 () Bool)

(assert (=> bs!835127 m!5228173))

(declare-fun m!5228175 () Bool)

(assert (=> bs!835127 m!5228175))

(assert (=> b!4498323 d!1380214))

(declare-fun bs!835128 () Bool)

(declare-fun d!1380216 () Bool)

(assert (= bs!835128 (and d!1380216 d!1380202)))

(declare-fun lambda!168541 () Int)

(assert (=> bs!835128 (= lambda!168541 lambda!168536)))

(declare-fun bs!835129 () Bool)

(assert (= bs!835129 (and d!1380216 d!1380184)))

(assert (=> bs!835129 (= lambda!168541 lambda!168533)))

(declare-fun bs!835130 () Bool)

(assert (= bs!835130 (and d!1380216 d!1380180)))

(assert (=> bs!835130 (= lambda!168541 lambda!168532)))

(declare-fun bs!835131 () Bool)

(assert (= bs!835131 (and d!1380216 d!1380050)))

(assert (=> bs!835131 (= lambda!168541 lambda!168491)))

(declare-fun bs!835132 () Bool)

(assert (= bs!835132 (and d!1380216 start!443976)))

(assert (=> bs!835132 (= lambda!168541 lambda!168485)))

(declare-fun bs!835133 () Bool)

(assert (= bs!835133 (and d!1380216 d!1380174)))

(assert (=> bs!835133 (= lambda!168541 lambda!168531)))

(declare-fun bs!835134 () Bool)

(assert (= bs!835134 (and d!1380216 d!1380150)))

(assert (=> bs!835134 (not (= lambda!168541 lambda!168524))))

(declare-fun bs!835135 () Bool)

(assert (= bs!835135 (and d!1380216 d!1380212)))

(assert (=> bs!835135 (= lambda!168541 lambda!168537)))

(declare-fun bs!835136 () Bool)

(assert (= bs!835136 (and d!1380216 d!1380096)))

(assert (=> bs!835136 (= lambda!168541 lambda!168499)))

(declare-fun bs!835137 () Bool)

(assert (= bs!835137 (and d!1380216 d!1380214)))

(assert (=> bs!835137 (= lambda!168541 lambda!168540)))

(declare-fun bs!835138 () Bool)

(assert (= bs!835138 (and d!1380216 d!1380124)))

(assert (=> bs!835138 (= lambda!168541 lambda!168519)))

(declare-fun lt!1680178 () ListMap!3517)

(assert (=> d!1380216 (invariantList!983 (toList!4256 lt!1680178))))

(declare-fun e!2802233 () ListMap!3517)

(assert (=> d!1380216 (= lt!1680178 e!2802233)))

(declare-fun c!766701 () Bool)

(assert (=> d!1380216 (= c!766701 ((_ is Cons!50541) (toList!4255 lt!1679939)))))

(assert (=> d!1380216 (forall!10173 (toList!4255 lt!1679939) lambda!168541)))

(assert (=> d!1380216 (= (extractMap!1180 (toList!4255 lt!1679939)) lt!1680178)))

(declare-fun b!4498641 () Bool)

(assert (=> b!4498641 (= e!2802233 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 lt!1679939))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))))))

(declare-fun b!4498642 () Bool)

(assert (=> b!4498642 (= e!2802233 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380216 c!766701) b!4498641))

(assert (= (and d!1380216 (not c!766701)) b!4498642))

(declare-fun m!5228177 () Bool)

(assert (=> d!1380216 m!5228177))

(declare-fun m!5228179 () Bool)

(assert (=> d!1380216 m!5228179))

(declare-fun m!5228181 () Bool)

(assert (=> b!4498641 m!5228181))

(assert (=> b!4498641 m!5228181))

(declare-fun m!5228183 () Bool)

(assert (=> b!4498641 m!5228183))

(assert (=> b!4498323 d!1380216))

(declare-fun e!2802236 () Bool)

(declare-fun b!4498647 () Bool)

(declare-fun tp!1337481 () Bool)

(assert (=> b!4498647 (= e!2802236 (and tp_is_empty!27773 tp_is_empty!27775 tp!1337481))))

(assert (=> b!4498334 (= tp!1337469 e!2802236)))

(assert (= (and b!4498334 ((_ is Cons!50540) (t!357622 newBucket!178))) b!4498647))

(declare-fun b!4498652 () Bool)

(declare-fun e!2802239 () Bool)

(declare-fun tp!1337486 () Bool)

(declare-fun tp!1337487 () Bool)

(assert (=> b!4498652 (= e!2802239 (and tp!1337486 tp!1337487))))

(assert (=> b!4498335 (= tp!1337468 e!2802239)))

(assert (= (and b!4498335 ((_ is Cons!50541) (toList!4255 lm!1477))) b!4498652))

(declare-fun b_lambda!152189 () Bool)

(assert (= b_lambda!152183 (or start!443976 b_lambda!152189)))

(declare-fun bs!835139 () Bool)

(declare-fun d!1380218 () Bool)

(assert (= bs!835139 (and d!1380218 start!443976)))

(assert (=> bs!835139 (= (dynLambda!21105 lambda!168485 (h!56360 (toList!4255 lm!1477))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))

(declare-fun m!5228185 () Bool)

(assert (=> bs!835139 m!5228185))

(assert (=> b!4498565 d!1380218))

(declare-fun b_lambda!152191 () Bool)

(assert (= b_lambda!152177 (or start!443976 b_lambda!152191)))

(declare-fun bs!835140 () Bool)

(declare-fun d!1380220 () Bool)

(assert (= bs!835140 (and d!1380220 start!443976)))

(assert (=> bs!835140 (= (dynLambda!21105 lambda!168485 lt!1679930) (noDuplicateKeys!1124 (_2!28760 lt!1679930)))))

(declare-fun m!5228187 () Bool)

(assert (=> bs!835140 m!5228187))

(assert (=> d!1380058 d!1380220))

(check-sat (not d!1380078) tp_is_empty!27775 (not b!4498521) (not d!1380206) (not d!1380196) (not b!4498566) (not b!4498522) (not b!4498549) (not b!4498617) (not b!4498652) (not b!4498393) (not b!4498638) (not d!1380202) (not d!1380186) (not d!1380052) (not b!4498628) (not d!1380156) (not d!1380188) (not b!4498342) (not b!4498598) (not d!1380180) (not bs!835139) (not d!1380066) (not b!4498611) (not b!4498636) (not b_lambda!152189) (not b!4498614) (not d!1380214) (not b!4498360) (not b!4498635) (not d!1380210) (not b!4498633) tp_is_empty!27773 (not d!1380166) (not d!1380150) (not b!4498647) (not b_lambda!152191) (not d!1380216) (not d!1380192) (not bm!313080) (not d!1380050) (not b!4498422) (not b!4498387) (not bs!835140) (not b!4498631) (not d!1380172) (not d!1380158) (not b!4498341) (not d!1380124) (not b!4498630) (not d!1380190) (not d!1380096) (not d!1380148) (not b!4498641) (not b!4498596) (not b!4498600) (not d!1380174) (not b!4498349) (not d!1380184) (not b!4498626) (not bm!313079) (not b!4498558) (not b!4498621) (not b!4498518) (not d!1380146) (not d!1380058) (not d!1380056) (not b!4498619) (not b!4498629) (not b!4498604) (not b!4498627) (not d!1380204) (not b!4498515) (not b!4498616) (not b!4498602) (not d!1380142) (not d!1380090) (not d!1380194) (not d!1380100) (not b!4498622) (not b!4498579) (not bm!313078) (not b!4498585) (not d!1380208) (not b!4498620) (not b!4498520) (not b!4498599) (not b!4498618) (not d!1380182) (not b!4498584) (not b!4498613) (not b!4498556) (not b!4498523) (not d!1380212) (not d!1380048) (not b!4498624) (not b!4498516) (not b!4498639) (not b!4498637) (not b!4498429))
(check-sat)
(get-model)

(declare-fun b!4498660 () Bool)

(assert (=> b!4498660 true))

(declare-fun d!1380222 () Bool)

(declare-fun e!2802242 () Bool)

(assert (=> d!1380222 e!2802242))

(declare-fun res!1870095 () Bool)

(assert (=> d!1380222 (=> (not res!1870095) (not e!2802242))))

(declare-fun lt!1680181 () List!50667)

(declare-fun noDuplicate!727 (List!50667) Bool)

(assert (=> d!1380222 (= res!1870095 (noDuplicate!727 lt!1680181))))

(assert (=> d!1380222 (= lt!1680181 (getKeysList!431 (toList!4256 lt!1679928)))))

(assert (=> d!1380222 (= (keys!17522 lt!1679928) lt!1680181)))

(declare-fun b!4498659 () Bool)

(declare-fun res!1870097 () Bool)

(assert (=> b!4498659 (=> (not res!1870097) (not e!2802242))))

(declare-fun length!310 (List!50667) Int)

(declare-fun length!311 (List!50664) Int)

(assert (=> b!4498659 (= res!1870097 (= (length!310 lt!1680181) (length!311 (toList!4256 lt!1679928))))))

(declare-fun res!1870096 () Bool)

(assert (=> b!4498660 (=> (not res!1870096) (not e!2802242))))

(declare-fun lambda!168546 () Int)

(declare-fun forall!10176 (List!50667 Int) Bool)

(assert (=> b!4498660 (= res!1870096 (forall!10176 lt!1680181 lambda!168546))))

(declare-fun b!4498661 () Bool)

(declare-fun lambda!168547 () Int)

(declare-fun map!11100 (List!50664 Int) List!50667)

(assert (=> b!4498661 (= e!2802242 (= (content!8256 lt!1680181) (content!8256 (map!11100 (toList!4256 lt!1679928) lambda!168547))))))

(assert (= (and d!1380222 res!1870095) b!4498659))

(assert (= (and b!4498659 res!1870097) b!4498660))

(assert (= (and b!4498660 res!1870096) b!4498661))

(declare-fun m!5228189 () Bool)

(assert (=> d!1380222 m!5228189))

(assert (=> d!1380222 m!5228141))

(declare-fun m!5228191 () Bool)

(assert (=> b!4498659 m!5228191))

(declare-fun m!5228193 () Bool)

(assert (=> b!4498659 m!5228193))

(declare-fun m!5228195 () Bool)

(assert (=> b!4498660 m!5228195))

(declare-fun m!5228197 () Bool)

(assert (=> b!4498661 m!5228197))

(declare-fun m!5228199 () Bool)

(assert (=> b!4498661 m!5228199))

(assert (=> b!4498661 m!5228199))

(declare-fun m!5228201 () Bool)

(assert (=> b!4498661 m!5228201))

(assert (=> b!4498624 d!1380222))

(declare-fun d!1380224 () Bool)

(declare-fun c!766704 () Bool)

(assert (=> d!1380224 (= c!766704 ((_ is Nil!50540) (toList!4256 lt!1679929)))))

(declare-fun e!2802245 () (InoxSet tuple2!50930))

(assert (=> d!1380224 (= (content!8255 (toList!4256 lt!1679929)) e!2802245)))

(declare-fun b!4498668 () Bool)

(assert (=> b!4498668 (= e!2802245 ((as const (Array tuple2!50930 Bool)) false))))

(declare-fun b!4498669 () Bool)

(assert (=> b!4498669 (= e!2802245 ((_ map or) (store ((as const (Array tuple2!50930 Bool)) false) (h!56359 (toList!4256 lt!1679929)) true) (content!8255 (t!357622 (toList!4256 lt!1679929)))))))

(assert (= (and d!1380224 c!766704) b!4498668))

(assert (= (and d!1380224 (not c!766704)) b!4498669))

(declare-fun m!5228203 () Bool)

(assert (=> b!4498669 m!5228203))

(declare-fun m!5228205 () Bool)

(assert (=> b!4498669 m!5228205))

(assert (=> d!1380190 d!1380224))

(declare-fun d!1380226 () Bool)

(declare-fun c!766705 () Bool)

(assert (=> d!1380226 (= c!766705 ((_ is Nil!50540) (toList!4256 lt!1679938)))))

(declare-fun e!2802246 () (InoxSet tuple2!50930))

(assert (=> d!1380226 (= (content!8255 (toList!4256 lt!1679938)) e!2802246)))

(declare-fun b!4498670 () Bool)

(assert (=> b!4498670 (= e!2802246 ((as const (Array tuple2!50930 Bool)) false))))

(declare-fun b!4498671 () Bool)

(assert (=> b!4498671 (= e!2802246 ((_ map or) (store ((as const (Array tuple2!50930 Bool)) false) (h!56359 (toList!4256 lt!1679938)) true) (content!8255 (t!357622 (toList!4256 lt!1679938)))))))

(assert (= (and d!1380226 c!766705) b!4498670))

(assert (= (and d!1380226 (not c!766705)) b!4498671))

(declare-fun m!5228207 () Bool)

(assert (=> b!4498671 m!5228207))

(declare-fun m!5228209 () Bool)

(assert (=> b!4498671 m!5228209))

(assert (=> d!1380190 d!1380226))

(declare-fun d!1380228 () Bool)

(declare-fun res!1870102 () Bool)

(declare-fun e!2802251 () Bool)

(assert (=> d!1380228 (=> res!1870102 e!2802251)))

(assert (=> d!1380228 (= res!1870102 ((_ is Nil!50540) newBucket!178))))

(assert (=> d!1380228 (= (forall!10174 newBucket!178 lambda!168488) e!2802251)))

(declare-fun b!4498676 () Bool)

(declare-fun e!2802252 () Bool)

(assert (=> b!4498676 (= e!2802251 e!2802252)))

(declare-fun res!1870103 () Bool)

(assert (=> b!4498676 (=> (not res!1870103) (not e!2802252))))

(declare-fun dynLambda!21106 (Int tuple2!50930) Bool)

(assert (=> b!4498676 (= res!1870103 (dynLambda!21106 lambda!168488 (h!56359 newBucket!178)))))

(declare-fun b!4498677 () Bool)

(assert (=> b!4498677 (= e!2802252 (forall!10174 (t!357622 newBucket!178) lambda!168488))))

(assert (= (and d!1380228 (not res!1870102)) b!4498676))

(assert (= (and b!4498676 res!1870103) b!4498677))

(declare-fun b_lambda!152193 () Bool)

(assert (=> (not b_lambda!152193) (not b!4498676)))

(declare-fun m!5228211 () Bool)

(assert (=> b!4498676 m!5228211))

(declare-fun m!5228213 () Bool)

(assert (=> b!4498677 m!5228213))

(assert (=> d!1380048 d!1380228))

(declare-fun d!1380230 () Bool)

(declare-fun c!766710 () Bool)

(assert (=> d!1380230 (= c!766710 (and ((_ is Cons!50541) (toList!4255 lt!1680153)) (= (_1!28760 (h!56360 (toList!4255 lt!1680153))) (_1!28760 lt!1679924))))))

(declare-fun e!2802257 () Option!11044)

(assert (=> d!1380230 (= (getValueByKey!1024 (toList!4255 lt!1680153) (_1!28760 lt!1679924)) e!2802257)))

(declare-fun b!4498689 () Bool)

(declare-fun e!2802258 () Option!11044)

(assert (=> b!4498689 (= e!2802258 None!11043)))

(declare-fun b!4498687 () Bool)

(assert (=> b!4498687 (= e!2802257 e!2802258)))

(declare-fun c!766711 () Bool)

(assert (=> b!4498687 (= c!766711 (and ((_ is Cons!50541) (toList!4255 lt!1680153)) (not (= (_1!28760 (h!56360 (toList!4255 lt!1680153))) (_1!28760 lt!1679924)))))))

(declare-fun b!4498688 () Bool)

(assert (=> b!4498688 (= e!2802258 (getValueByKey!1024 (t!357623 (toList!4255 lt!1680153)) (_1!28760 lt!1679924)))))

(declare-fun b!4498686 () Bool)

(assert (=> b!4498686 (= e!2802257 (Some!11043 (_2!28760 (h!56360 (toList!4255 lt!1680153)))))))

(assert (= (and d!1380230 c!766710) b!4498686))

(assert (= (and d!1380230 (not c!766710)) b!4498687))

(assert (= (and b!4498687 c!766711) b!4498688))

(assert (= (and b!4498687 (not c!766711)) b!4498689))

(declare-fun m!5228215 () Bool)

(assert (=> b!4498688 m!5228215))

(assert (=> b!4498617 d!1380230))

(declare-fun d!1380232 () Bool)

(declare-fun res!1870104 () Bool)

(declare-fun e!2802259 () Bool)

(assert (=> d!1380232 (=> res!1870104 e!2802259)))

(assert (=> d!1380232 (= res!1870104 (not ((_ is Cons!50540) (_2!28760 lt!1679930))))))

(assert (=> d!1380232 (= (noDuplicateKeys!1124 (_2!28760 lt!1679930)) e!2802259)))

(declare-fun b!4498690 () Bool)

(declare-fun e!2802260 () Bool)

(assert (=> b!4498690 (= e!2802259 e!2802260)))

(declare-fun res!1870105 () Bool)

(assert (=> b!4498690 (=> (not res!1870105) (not e!2802260))))

(assert (=> b!4498690 (= res!1870105 (not (containsKey!1676 (t!357622 (_2!28760 lt!1679930)) (_1!28759 (h!56359 (_2!28760 lt!1679930))))))))

(declare-fun b!4498691 () Bool)

(assert (=> b!4498691 (= e!2802260 (noDuplicateKeys!1124 (t!357622 (_2!28760 lt!1679930))))))

(assert (= (and d!1380232 (not res!1870104)) b!4498690))

(assert (= (and b!4498690 res!1870105) b!4498691))

(declare-fun m!5228217 () Bool)

(assert (=> b!4498690 m!5228217))

(declare-fun m!5228219 () Bool)

(assert (=> b!4498691 m!5228219))

(assert (=> bs!835140 d!1380232))

(declare-fun d!1380234 () Bool)

(declare-fun noDuplicatedKeys!242 (List!50664) Bool)

(assert (=> d!1380234 (= (invariantList!983 (toList!4256 lt!1680106)) (noDuplicatedKeys!242 (toList!4256 lt!1680106)))))

(declare-fun bs!835141 () Bool)

(assert (= bs!835141 d!1380234))

(declare-fun m!5228221 () Bool)

(assert (=> bs!835141 m!5228221))

(assert (=> d!1380124 d!1380234))

(declare-fun d!1380236 () Bool)

(declare-fun res!1870106 () Bool)

(declare-fun e!2802261 () Bool)

(assert (=> d!1380236 (=> res!1870106 e!2802261)))

(assert (=> d!1380236 (= res!1870106 ((_ is Nil!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380236 (= (forall!10173 (toList!4255 lm!1477) lambda!168519) e!2802261)))

(declare-fun b!4498692 () Bool)

(declare-fun e!2802262 () Bool)

(assert (=> b!4498692 (= e!2802261 e!2802262)))

(declare-fun res!1870107 () Bool)

(assert (=> b!4498692 (=> (not res!1870107) (not e!2802262))))

(assert (=> b!4498692 (= res!1870107 (dynLambda!21105 lambda!168519 (h!56360 (toList!4255 lm!1477))))))

(declare-fun b!4498693 () Bool)

(assert (=> b!4498693 (= e!2802262 (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168519))))

(assert (= (and d!1380236 (not res!1870106)) b!4498692))

(assert (= (and b!4498692 res!1870107) b!4498693))

(declare-fun b_lambda!152195 () Bool)

(assert (=> (not b_lambda!152195) (not b!4498692)))

(declare-fun m!5228223 () Bool)

(assert (=> b!4498692 m!5228223))

(declare-fun m!5228225 () Bool)

(assert (=> b!4498693 m!5228225))

(assert (=> d!1380124 d!1380236))

(declare-fun d!1380238 () Bool)

(declare-fun res!1870112 () Bool)

(declare-fun e!2802267 () Bool)

(assert (=> d!1380238 (=> res!1870112 e!2802267)))

(assert (=> d!1380238 (= res!1870112 (and ((_ is Cons!50540) (toList!4256 lt!1679928)) (= (_1!28759 (h!56359 (toList!4256 lt!1679928))) key!3287)))))

(assert (=> d!1380238 (= (containsKey!1680 (toList!4256 lt!1679928) key!3287) e!2802267)))

(declare-fun b!4498698 () Bool)

(declare-fun e!2802268 () Bool)

(assert (=> b!4498698 (= e!2802267 e!2802268)))

(declare-fun res!1870113 () Bool)

(assert (=> b!4498698 (=> (not res!1870113) (not e!2802268))))

(assert (=> b!4498698 (= res!1870113 ((_ is Cons!50540) (toList!4256 lt!1679928)))))

(declare-fun b!4498699 () Bool)

(assert (=> b!4498699 (= e!2802268 (containsKey!1680 (t!357622 (toList!4256 lt!1679928)) key!3287))))

(assert (= (and d!1380238 (not res!1870112)) b!4498698))

(assert (= (and b!4498698 res!1870113) b!4498699))

(declare-fun m!5228227 () Bool)

(assert (=> b!4498699 m!5228227))

(assert (=> d!1380208 d!1380238))

(declare-fun d!1380240 () Bool)

(declare-fun c!766714 () Bool)

(assert (=> d!1380240 (= c!766714 ((_ is Nil!50541) (toList!4255 lm!1477)))))

(declare-fun e!2802271 () (InoxSet tuple2!50932))

(assert (=> d!1380240 (= (content!8254 (toList!4255 lm!1477)) e!2802271)))

(declare-fun b!4498704 () Bool)

(assert (=> b!4498704 (= e!2802271 ((as const (Array tuple2!50932 Bool)) false))))

(declare-fun b!4498705 () Bool)

(assert (=> b!4498705 (= e!2802271 ((_ map or) (store ((as const (Array tuple2!50932 Bool)) false) (h!56360 (toList!4255 lm!1477)) true) (content!8254 (t!357623 (toList!4255 lm!1477)))))))

(assert (= (and d!1380240 c!766714) b!4498704))

(assert (= (and d!1380240 (not c!766714)) b!4498705))

(declare-fun m!5228229 () Bool)

(assert (=> b!4498705 m!5228229))

(assert (=> b!4498705 m!5227947))

(assert (=> d!1380090 d!1380240))

(assert (=> d!1380146 d!1380226))

(assert (=> d!1380146 d!1380224))

(declare-fun d!1380242 () Bool)

(assert (=> d!1380242 (= (invariantList!983 (toList!4256 lt!1680137)) (noDuplicatedKeys!242 (toList!4256 lt!1680137)))))

(declare-fun bs!835142 () Bool)

(assert (= bs!835142 d!1380242))

(declare-fun m!5228231 () Bool)

(assert (=> bs!835142 m!5228231))

(assert (=> d!1380180 d!1380242))

(declare-fun d!1380244 () Bool)

(declare-fun res!1870114 () Bool)

(declare-fun e!2802272 () Bool)

(assert (=> d!1380244 (=> res!1870114 e!2802272)))

(assert (=> d!1380244 (= res!1870114 ((_ is Nil!50541) (toList!4255 (+!1470 lt!1679939 lt!1679932))))))

(assert (=> d!1380244 (= (forall!10173 (toList!4255 (+!1470 lt!1679939 lt!1679932)) lambda!168532) e!2802272)))

(declare-fun b!4498706 () Bool)

(declare-fun e!2802273 () Bool)

(assert (=> b!4498706 (= e!2802272 e!2802273)))

(declare-fun res!1870115 () Bool)

(assert (=> b!4498706 (=> (not res!1870115) (not e!2802273))))

(assert (=> b!4498706 (= res!1870115 (dynLambda!21105 lambda!168532 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))

(declare-fun b!4498707 () Bool)

(assert (=> b!4498707 (= e!2802273 (forall!10173 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))) lambda!168532))))

(assert (= (and d!1380244 (not res!1870114)) b!4498706))

(assert (= (and b!4498706 res!1870115) b!4498707))

(declare-fun b_lambda!152197 () Bool)

(assert (=> (not b_lambda!152197) (not b!4498706)))

(declare-fun m!5228233 () Bool)

(assert (=> b!4498706 m!5228233))

(declare-fun m!5228235 () Bool)

(assert (=> b!4498707 m!5228235))

(assert (=> d!1380180 d!1380244))

(declare-fun bs!835143 () Bool)

(declare-fun b!4498735 () Bool)

(assert (= bs!835143 (and b!4498735 d!1380048)))

(declare-fun lambda!168576 () Int)

(assert (=> bs!835143 (not (= lambda!168576 lambda!168488))))

(assert (=> b!4498735 true))

(declare-fun bs!835144 () Bool)

(declare-fun b!4498734 () Bool)

(assert (= bs!835144 (and b!4498734 d!1380048)))

(declare-fun lambda!168577 () Int)

(assert (=> bs!835144 (not (= lambda!168577 lambda!168488))))

(declare-fun bs!835145 () Bool)

(assert (= bs!835145 (and b!4498734 b!4498735)))

(assert (=> bs!835145 (= lambda!168577 lambda!168576)))

(assert (=> b!4498734 true))

(declare-fun lambda!168578 () Int)

(assert (=> bs!835144 (not (= lambda!168578 lambda!168488))))

(declare-fun lt!1680240 () ListMap!3517)

(assert (=> bs!835145 (= (= lt!1680240 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168578 lambda!168576))))

(assert (=> b!4498734 (= (= lt!1680240 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168578 lambda!168577))))

(assert (=> b!4498734 true))

(declare-fun bs!835146 () Bool)

(declare-fun d!1380246 () Bool)

(assert (= bs!835146 (and d!1380246 d!1380048)))

(declare-fun lambda!168579 () Int)

(assert (=> bs!835146 (not (= lambda!168579 lambda!168488))))

(declare-fun bs!835147 () Bool)

(assert (= bs!835147 (and d!1380246 b!4498735)))

(declare-fun lt!1680234 () ListMap!3517)

(assert (=> bs!835147 (= (= lt!1680234 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168579 lambda!168576))))

(declare-fun bs!835148 () Bool)

(assert (= bs!835148 (and d!1380246 b!4498734)))

(assert (=> bs!835148 (= (= lt!1680234 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168579 lambda!168577))))

(assert (=> bs!835148 (= (= lt!1680234 lt!1680240) (= lambda!168579 lambda!168578))))

(assert (=> d!1380246 true))

(declare-fun bm!313087 () Bool)

(declare-fun call!313093 () Bool)

(declare-fun c!766720 () Bool)

(assert (=> bm!313087 (= call!313093 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (ite c!766720 lambda!168576 lambda!168577)))))

(declare-fun e!2802295 () Bool)

(assert (=> d!1380246 e!2802295))

(declare-fun res!1870132 () Bool)

(assert (=> d!1380246 (=> (not res!1870132) (not e!2802295))))

(assert (=> d!1380246 (= res!1870132 (forall!10174 (_2!28760 (h!56360 (toList!4255 lt!1679939))) lambda!168579))))

(declare-fun e!2802294 () ListMap!3517)

(assert (=> d!1380246 (= lt!1680234 e!2802294)))

(assert (=> d!1380246 (= c!766720 ((_ is Nil!50540) (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))

(assert (=> d!1380246 (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lt!1679939))))))

(assert (=> d!1380246 (= (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 lt!1679939))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) lt!1680234)))

(assert (=> b!4498734 (= e!2802294 lt!1680240)))

(declare-fun lt!1680224 () ListMap!3517)

(declare-fun +!1471 (ListMap!3517 tuple2!50930) ListMap!3517)

(assert (=> b!4498734 (= lt!1680224 (+!1471 (extractMap!1180 (t!357623 (toList!4255 lt!1679939))) (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939))))))))

(assert (=> b!4498734 (= lt!1680240 (addToMapMapFromBucket!651 (t!357622 (_2!28760 (h!56360 (toList!4255 lt!1679939)))) (+!1471 (extractMap!1180 (t!357623 (toList!4255 lt!1679939))) (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))))

(declare-fun lt!1680244 () Unit!91740)

(declare-fun call!313092 () Unit!91740)

(assert (=> b!4498734 (= lt!1680244 call!313092)))

(assert (=> b!4498734 call!313093))

(declare-fun lt!1680236 () Unit!91740)

(assert (=> b!4498734 (= lt!1680236 lt!1680244)))

(assert (=> b!4498734 (forall!10174 (toList!4256 lt!1680224) lambda!168578)))

(declare-fun lt!1680232 () Unit!91740)

(declare-fun Unit!91760 () Unit!91740)

(assert (=> b!4498734 (= lt!1680232 Unit!91760)))

(assert (=> b!4498734 (forall!10174 (t!357622 (_2!28760 (h!56360 (toList!4255 lt!1679939)))) lambda!168578)))

(declare-fun lt!1680226 () Unit!91740)

(declare-fun Unit!91761 () Unit!91740)

(assert (=> b!4498734 (= lt!1680226 Unit!91761)))

(declare-fun lt!1680233 () Unit!91740)

(declare-fun Unit!91762 () Unit!91740)

(assert (=> b!4498734 (= lt!1680233 Unit!91762)))

(declare-fun lt!1680229 () Unit!91740)

(declare-fun forallContained!2428 (List!50664 Int tuple2!50930) Unit!91740)

(assert (=> b!4498734 (= lt!1680229 (forallContained!2428 (toList!4256 lt!1680224) lambda!168578 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939))))))))

(assert (=> b!4498734 (contains!13210 lt!1680224 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939))))))))

(declare-fun lt!1680237 () Unit!91740)

(declare-fun Unit!91763 () Unit!91740)

(assert (=> b!4498734 (= lt!1680237 Unit!91763)))

(assert (=> b!4498734 (contains!13210 lt!1680240 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939))))))))

(declare-fun lt!1680228 () Unit!91740)

(declare-fun Unit!91764 () Unit!91740)

(assert (=> b!4498734 (= lt!1680228 Unit!91764)))

(declare-fun call!313094 () Bool)

(assert (=> b!4498734 call!313094))

(declare-fun lt!1680225 () Unit!91740)

(declare-fun Unit!91765 () Unit!91740)

(assert (=> b!4498734 (= lt!1680225 Unit!91765)))

(assert (=> b!4498734 (forall!10174 (toList!4256 lt!1680224) lambda!168578)))

(declare-fun lt!1680243 () Unit!91740)

(declare-fun Unit!91766 () Unit!91740)

(assert (=> b!4498734 (= lt!1680243 Unit!91766)))

(declare-fun lt!1680238 () Unit!91740)

(declare-fun Unit!91767 () Unit!91740)

(assert (=> b!4498734 (= lt!1680238 Unit!91767)))

(declare-fun lt!1680241 () Unit!91740)

(declare-fun addForallContainsKeyThenBeforeAdding!305 (ListMap!3517 ListMap!3517 K!11950 V!12196) Unit!91740)

(assert (=> b!4498734 (= lt!1680241 (addForallContainsKeyThenBeforeAdding!305 (extractMap!1180 (t!357623 (toList!4255 lt!1679939))) lt!1680240 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939))))) (_2!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))))

(assert (=> b!4498734 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) lambda!168578)))

(declare-fun lt!1680227 () Unit!91740)

(assert (=> b!4498734 (= lt!1680227 lt!1680241)))

(assert (=> b!4498734 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) lambda!168578)))

(declare-fun lt!1680242 () Unit!91740)

(declare-fun Unit!91768 () Unit!91740)

(assert (=> b!4498734 (= lt!1680242 Unit!91768)))

(declare-fun res!1870133 () Bool)

(assert (=> b!4498734 (= res!1870133 (forall!10174 (_2!28760 (h!56360 (toList!4255 lt!1679939))) lambda!168578))))

(declare-fun e!2802293 () Bool)

(assert (=> b!4498734 (=> (not res!1870133) (not e!2802293))))

(assert (=> b!4498734 e!2802293))

(declare-fun lt!1680239 () Unit!91740)

(declare-fun Unit!91769 () Unit!91740)

(assert (=> b!4498734 (= lt!1680239 Unit!91769)))

(assert (=> b!4498735 (= e!2802294 (extractMap!1180 (t!357623 (toList!4255 lt!1679939))))))

(declare-fun lt!1680231 () Unit!91740)

(assert (=> b!4498735 (= lt!1680231 call!313092)))

(assert (=> b!4498735 call!313093))

(declare-fun lt!1680235 () Unit!91740)

(assert (=> b!4498735 (= lt!1680235 lt!1680231)))

(assert (=> b!4498735 call!313094))

(declare-fun lt!1680230 () Unit!91740)

(declare-fun Unit!91770 () Unit!91740)

(assert (=> b!4498735 (= lt!1680230 Unit!91770)))

(declare-fun b!4498736 () Bool)

(declare-fun res!1870134 () Bool)

(assert (=> b!4498736 (=> (not res!1870134) (not e!2802295))))

(assert (=> b!4498736 (= res!1870134 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) lambda!168579))))

(declare-fun b!4498737 () Bool)

(assert (=> b!4498737 (= e!2802293 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) lambda!168578))))

(declare-fun bm!313088 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!305 (ListMap!3517) Unit!91740)

(assert (=> bm!313088 (= call!313092 (lemmaContainsAllItsOwnKeys!305 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))))))

(declare-fun bm!313089 () Bool)

(assert (=> bm!313089 (= call!313094 (forall!10174 (ite c!766720 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (_2!28760 (h!56360 (toList!4255 lt!1679939)))) (ite c!766720 lambda!168576 lambda!168578)))))

(declare-fun b!4498738 () Bool)

(assert (=> b!4498738 (= e!2802295 (invariantList!983 (toList!4256 lt!1680234)))))

(assert (= (and d!1380246 c!766720) b!4498735))

(assert (= (and d!1380246 (not c!766720)) b!4498734))

(assert (= (and b!4498734 res!1870133) b!4498737))

(assert (= (or b!4498735 b!4498734) bm!313089))

(assert (= (or b!4498735 b!4498734) bm!313087))

(assert (= (or b!4498735 b!4498734) bm!313088))

(assert (= (and d!1380246 res!1870132) b!4498736))

(assert (= (and b!4498736 res!1870134) b!4498738))

(assert (=> b!4498734 m!5228181))

(declare-fun m!5228247 () Bool)

(assert (=> b!4498734 m!5228247))

(assert (=> b!4498734 m!5228181))

(declare-fun m!5228249 () Bool)

(assert (=> b!4498734 m!5228249))

(declare-fun m!5228251 () Bool)

(assert (=> b!4498734 m!5228251))

(declare-fun m!5228253 () Bool)

(assert (=> b!4498734 m!5228253))

(declare-fun m!5228255 () Bool)

(assert (=> b!4498734 m!5228255))

(declare-fun m!5228257 () Bool)

(assert (=> b!4498734 m!5228257))

(declare-fun m!5228259 () Bool)

(assert (=> b!4498734 m!5228259))

(declare-fun m!5228261 () Bool)

(assert (=> b!4498734 m!5228261))

(assert (=> b!4498734 m!5228255))

(declare-fun m!5228263 () Bool)

(assert (=> b!4498734 m!5228263))

(assert (=> b!4498734 m!5228257))

(assert (=> b!4498734 m!5228249))

(declare-fun m!5228265 () Bool)

(assert (=> b!4498734 m!5228265))

(declare-fun m!5228267 () Bool)

(assert (=> bm!313087 m!5228267))

(assert (=> b!4498737 m!5228255))

(assert (=> bm!313088 m!5228181))

(declare-fun m!5228269 () Bool)

(assert (=> bm!313088 m!5228269))

(declare-fun m!5228271 () Bool)

(assert (=> bm!313089 m!5228271))

(declare-fun m!5228273 () Bool)

(assert (=> d!1380246 m!5228273))

(declare-fun m!5228275 () Bool)

(assert (=> d!1380246 m!5228275))

(declare-fun m!5228277 () Bool)

(assert (=> b!4498738 m!5228277))

(declare-fun m!5228279 () Bool)

(assert (=> b!4498736 m!5228279))

(assert (=> b!4498641 d!1380246))

(declare-fun bs!835149 () Bool)

(declare-fun d!1380258 () Bool)

(assert (= bs!835149 (and d!1380258 d!1380202)))

(declare-fun lambda!168580 () Int)

(assert (=> bs!835149 (= lambda!168580 lambda!168536)))

(declare-fun bs!835150 () Bool)

(assert (= bs!835150 (and d!1380258 d!1380184)))

(assert (=> bs!835150 (= lambda!168580 lambda!168533)))

(declare-fun bs!835151 () Bool)

(assert (= bs!835151 (and d!1380258 d!1380180)))

(assert (=> bs!835151 (= lambda!168580 lambda!168532)))

(declare-fun bs!835152 () Bool)

(assert (= bs!835152 (and d!1380258 start!443976)))

(assert (=> bs!835152 (= lambda!168580 lambda!168485)))

(declare-fun bs!835153 () Bool)

(assert (= bs!835153 (and d!1380258 d!1380174)))

(assert (=> bs!835153 (= lambda!168580 lambda!168531)))

(declare-fun bs!835154 () Bool)

(assert (= bs!835154 (and d!1380258 d!1380150)))

(assert (=> bs!835154 (not (= lambda!168580 lambda!168524))))

(declare-fun bs!835155 () Bool)

(assert (= bs!835155 (and d!1380258 d!1380212)))

(assert (=> bs!835155 (= lambda!168580 lambda!168537)))

(declare-fun bs!835156 () Bool)

(assert (= bs!835156 (and d!1380258 d!1380096)))

(assert (=> bs!835156 (= lambda!168580 lambda!168499)))

(declare-fun bs!835157 () Bool)

(assert (= bs!835157 (and d!1380258 d!1380214)))

(assert (=> bs!835157 (= lambda!168580 lambda!168540)))

(declare-fun bs!835158 () Bool)

(assert (= bs!835158 (and d!1380258 d!1380124)))

(assert (=> bs!835158 (= lambda!168580 lambda!168519)))

(declare-fun bs!835159 () Bool)

(assert (= bs!835159 (and d!1380258 d!1380050)))

(assert (=> bs!835159 (= lambda!168580 lambda!168491)))

(declare-fun bs!835160 () Bool)

(assert (= bs!835160 (and d!1380258 d!1380216)))

(assert (=> bs!835160 (= lambda!168580 lambda!168541)))

(declare-fun lt!1680245 () ListMap!3517)

(assert (=> d!1380258 (invariantList!983 (toList!4256 lt!1680245))))

(declare-fun e!2802296 () ListMap!3517)

(assert (=> d!1380258 (= lt!1680245 e!2802296)))

(declare-fun c!766721 () Bool)

(assert (=> d!1380258 (= c!766721 ((_ is Cons!50541) (t!357623 (toList!4255 lt!1679939))))))

(assert (=> d!1380258 (forall!10173 (t!357623 (toList!4255 lt!1679939)) lambda!168580)))

(assert (=> d!1380258 (= (extractMap!1180 (t!357623 (toList!4255 lt!1679939))) lt!1680245)))

(declare-fun b!4498741 () Bool)

(assert (=> b!4498741 (= e!2802296 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (t!357623 (toList!4255 lt!1679939)))) (extractMap!1180 (t!357623 (t!357623 (toList!4255 lt!1679939))))))))

(declare-fun b!4498742 () Bool)

(assert (=> b!4498742 (= e!2802296 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380258 c!766721) b!4498741))

(assert (= (and d!1380258 (not c!766721)) b!4498742))

(declare-fun m!5228281 () Bool)

(assert (=> d!1380258 m!5228281))

(declare-fun m!5228283 () Bool)

(assert (=> d!1380258 m!5228283))

(declare-fun m!5228285 () Bool)

(assert (=> b!4498741 m!5228285))

(assert (=> b!4498741 m!5228285))

(declare-fun m!5228287 () Bool)

(assert (=> b!4498741 m!5228287))

(assert (=> b!4498641 d!1380258))

(declare-fun d!1380260 () Bool)

(declare-fun lt!1680248 () Bool)

(assert (=> d!1380260 (= lt!1680248 (select (content!8256 (keys!17522 lt!1679928)) key!3287))))

(declare-fun e!2802301 () Bool)

(assert (=> d!1380260 (= lt!1680248 e!2802301)))

(declare-fun res!1870140 () Bool)

(assert (=> d!1380260 (=> (not res!1870140) (not e!2802301))))

(assert (=> d!1380260 (= res!1870140 ((_ is Cons!50543) (keys!17522 lt!1679928)))))

(assert (=> d!1380260 (= (contains!13213 (keys!17522 lt!1679928) key!3287) lt!1680248)))

(declare-fun b!4498747 () Bool)

(declare-fun e!2802302 () Bool)

(assert (=> b!4498747 (= e!2802301 e!2802302)))

(declare-fun res!1870139 () Bool)

(assert (=> b!4498747 (=> res!1870139 e!2802302)))

(assert (=> b!4498747 (= res!1870139 (= (h!56364 (keys!17522 lt!1679928)) key!3287))))

(declare-fun b!4498748 () Bool)

(assert (=> b!4498748 (= e!2802302 (contains!13213 (t!357625 (keys!17522 lt!1679928)) key!3287))))

(assert (= (and d!1380260 res!1870140) b!4498747))

(assert (= (and b!4498747 (not res!1870139)) b!4498748))

(assert (=> d!1380260 m!5228001))

(assert (=> d!1380260 m!5228007))

(declare-fun m!5228289 () Bool)

(assert (=> d!1380260 m!5228289))

(declare-fun m!5228291 () Bool)

(assert (=> b!4498748 m!5228291))

(assert (=> b!4498622 d!1380260))

(assert (=> b!4498622 d!1380222))

(declare-fun d!1380262 () Bool)

(assert (=> d!1380262 (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(declare-fun lt!1680253 () Unit!91740)

(declare-fun choose!29109 (List!50664 K!11950) Unit!91740)

(assert (=> d!1380262 (= lt!1680253 (choose!29109 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(assert (=> d!1380262 (invariantList!983 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380262 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287) lt!1680253)))

(declare-fun bs!835161 () Bool)

(assert (= bs!835161 d!1380262))

(assert (=> bs!835161 m!5228155))

(assert (=> bs!835161 m!5228155))

(assert (=> bs!835161 m!5228157))

(declare-fun m!5228293 () Bool)

(assert (=> bs!835161 m!5228293))

(declare-fun m!5228295 () Bool)

(assert (=> bs!835161 m!5228295))

(assert (=> b!4498630 d!1380262))

(declare-fun d!1380264 () Bool)

(declare-fun isEmpty!28598 (Option!11045) Bool)

(assert (=> d!1380264 (= (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287)) (not (isEmpty!28598 (getValueByKey!1025 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))))

(declare-fun bs!835162 () Bool)

(assert (= bs!835162 d!1380264))

(assert (=> bs!835162 m!5228155))

(declare-fun m!5228297 () Bool)

(assert (=> bs!835162 m!5228297))

(assert (=> b!4498630 d!1380264))

(declare-fun b!4498763 () Bool)

(declare-fun e!2802310 () Option!11045)

(assert (=> b!4498763 (= e!2802310 (getValueByKey!1025 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) key!3287))))

(declare-fun b!4498761 () Bool)

(declare-fun e!2802309 () Option!11045)

(assert (=> b!4498761 (= e!2802309 (Some!11044 (_2!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))))

(declare-fun b!4498762 () Bool)

(assert (=> b!4498762 (= e!2802309 e!2802310)))

(declare-fun c!766729 () Bool)

(assert (=> b!4498762 (= c!766729 (and ((_ is Cons!50540) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (not (= (_1!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) key!3287))))))

(declare-fun d!1380266 () Bool)

(declare-fun c!766728 () Bool)

(assert (=> d!1380266 (= c!766728 (and ((_ is Cons!50540) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= (_1!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) key!3287)))))

(assert (=> d!1380266 (= (getValueByKey!1025 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287) e!2802309)))

(declare-fun b!4498764 () Bool)

(assert (=> b!4498764 (= e!2802310 None!11044)))

(assert (= (and d!1380266 c!766728) b!4498761))

(assert (= (and d!1380266 (not c!766728)) b!4498762))

(assert (= (and b!4498762 c!766729) b!4498763))

(assert (= (and b!4498762 (not c!766729)) b!4498764))

(declare-fun m!5228299 () Bool)

(assert (=> b!4498763 m!5228299))

(assert (=> b!4498630 d!1380266))

(declare-fun d!1380268 () Bool)

(assert (=> d!1380268 (contains!13213 (getKeysList!431 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) key!3287)))

(declare-fun lt!1680284 () Unit!91740)

(declare-fun choose!29110 (List!50664 K!11950) Unit!91740)

(assert (=> d!1380268 (= lt!1680284 (choose!29110 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(assert (=> d!1380268 (invariantList!983 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380268 (= (lemmaInListThenGetKeysListContains!427 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287) lt!1680284)))

(declare-fun bs!835163 () Bool)

(assert (= bs!835163 d!1380268))

(assert (=> bs!835163 m!5228161))

(assert (=> bs!835163 m!5228161))

(declare-fun m!5228301 () Bool)

(assert (=> bs!835163 m!5228301))

(declare-fun m!5228303 () Bool)

(assert (=> bs!835163 m!5228303))

(assert (=> bs!835163 m!5228295))

(assert (=> b!4498630 d!1380268))

(declare-fun bs!835164 () Bool)

(declare-fun b!4498766 () Bool)

(assert (= bs!835164 (and b!4498766 d!1380048)))

(declare-fun lambda!168597 () Int)

(assert (=> bs!835164 (not (= lambda!168597 lambda!168488))))

(declare-fun bs!835165 () Bool)

(assert (= bs!835165 (and b!4498766 b!4498734)))

(assert (=> bs!835165 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168597 lambda!168577))))

(assert (=> bs!835165 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) lt!1680240) (= lambda!168597 lambda!168578))))

(declare-fun bs!835166 () Bool)

(assert (= bs!835166 (and b!4498766 d!1380246)))

(assert (=> bs!835166 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) lt!1680234) (= lambda!168597 lambda!168579))))

(declare-fun bs!835167 () Bool)

(assert (= bs!835167 (and b!4498766 b!4498735)))

(assert (=> bs!835167 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168597 lambda!168576))))

(assert (=> b!4498766 true))

(declare-fun bs!835168 () Bool)

(declare-fun b!4498765 () Bool)

(assert (= bs!835168 (and b!4498765 d!1380048)))

(declare-fun lambda!168599 () Int)

(assert (=> bs!835168 (not (= lambda!168599 lambda!168488))))

(declare-fun bs!835169 () Bool)

(assert (= bs!835169 (and b!4498765 b!4498734)))

(assert (=> bs!835169 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168599 lambda!168577))))

(declare-fun bs!835170 () Bool)

(assert (= bs!835170 (and b!4498765 b!4498766)))

(assert (=> bs!835170 (= lambda!168599 lambda!168597)))

(assert (=> bs!835169 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) lt!1680240) (= lambda!168599 lambda!168578))))

(declare-fun bs!835171 () Bool)

(assert (= bs!835171 (and b!4498765 d!1380246)))

(assert (=> bs!835171 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) lt!1680234) (= lambda!168599 lambda!168579))))

(declare-fun bs!835172 () Bool)

(assert (= bs!835172 (and b!4498765 b!4498735)))

(assert (=> bs!835172 (= (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168599 lambda!168576))))

(assert (=> b!4498765 true))

(declare-fun lt!1680303 () ListMap!3517)

(declare-fun lambda!168601 () Int)

(assert (=> b!4498765 (= (= lt!1680303 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168601 lambda!168599))))

(assert (=> bs!835168 (not (= lambda!168601 lambda!168488))))

(assert (=> bs!835169 (= (= lt!1680303 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168601 lambda!168577))))

(assert (=> bs!835170 (= (= lt!1680303 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168601 lambda!168597))))

(assert (=> bs!835169 (= (= lt!1680303 lt!1680240) (= lambda!168601 lambda!168578))))

(assert (=> bs!835171 (= (= lt!1680303 lt!1680234) (= lambda!168601 lambda!168579))))

(assert (=> bs!835172 (= (= lt!1680303 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168601 lambda!168576))))

(assert (=> b!4498765 true))

(declare-fun bs!835173 () Bool)

(declare-fun d!1380270 () Bool)

(assert (= bs!835173 (and d!1380270 b!4498765)))

(declare-fun lt!1680297 () ListMap!3517)

(declare-fun lambda!168606 () Int)

(assert (=> bs!835173 (= (= lt!1680297 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168606 lambda!168599))))

(declare-fun bs!835174 () Bool)

(assert (= bs!835174 (and d!1380270 d!1380048)))

(assert (=> bs!835174 (not (= lambda!168606 lambda!168488))))

(assert (=> bs!835173 (= (= lt!1680297 lt!1680303) (= lambda!168606 lambda!168601))))

(declare-fun bs!835175 () Bool)

(assert (= bs!835175 (and d!1380270 b!4498734)))

(assert (=> bs!835175 (= (= lt!1680297 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168606 lambda!168577))))

(declare-fun bs!835176 () Bool)

(assert (= bs!835176 (and d!1380270 b!4498766)))

(assert (=> bs!835176 (= (= lt!1680297 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168606 lambda!168597))))

(assert (=> bs!835175 (= (= lt!1680297 lt!1680240) (= lambda!168606 lambda!168578))))

(declare-fun bs!835177 () Bool)

(assert (= bs!835177 (and d!1380270 d!1380246)))

(assert (=> bs!835177 (= (= lt!1680297 lt!1680234) (= lambda!168606 lambda!168579))))

(declare-fun bs!835178 () Bool)

(assert (= bs!835178 (and d!1380270 b!4498735)))

(assert (=> bs!835178 (= (= lt!1680297 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168606 lambda!168576))))

(assert (=> d!1380270 true))

(declare-fun bm!313090 () Bool)

(declare-fun c!766730 () Bool)

(declare-fun call!313096 () Bool)

(assert (=> bm!313090 (= call!313096 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (ite c!766730 lambda!168597 lambda!168599)))))

(declare-fun e!2802313 () Bool)

(assert (=> d!1380270 e!2802313))

(declare-fun res!1870141 () Bool)

(assert (=> d!1380270 (=> (not res!1870141) (not e!2802313))))

(assert (=> d!1380270 (= res!1870141 (forall!10174 (_2!28760 (h!56360 (toList!4255 lt!1679935))) lambda!168606))))

(declare-fun e!2802312 () ListMap!3517)

(assert (=> d!1380270 (= lt!1680297 e!2802312)))

(assert (=> d!1380270 (= c!766730 ((_ is Nil!50540) (_2!28760 (h!56360 (toList!4255 lt!1679935)))))))

(assert (=> d!1380270 (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lt!1679935))))))

(assert (=> d!1380270 (= (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 lt!1679935))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) lt!1680297)))

(assert (=> b!4498765 (= e!2802312 lt!1680303)))

(declare-fun lt!1680287 () ListMap!3517)

(assert (=> b!4498765 (= lt!1680287 (+!1471 (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679935))))))))

(assert (=> b!4498765 (= lt!1680303 (addToMapMapFromBucket!651 (t!357622 (_2!28760 (h!56360 (toList!4255 lt!1679935)))) (+!1471 (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679935)))))))))

(declare-fun lt!1680307 () Unit!91740)

(declare-fun call!313095 () Unit!91740)

(assert (=> b!4498765 (= lt!1680307 call!313095)))

(assert (=> b!4498765 call!313096))

(declare-fun lt!1680299 () Unit!91740)

(assert (=> b!4498765 (= lt!1680299 lt!1680307)))

(assert (=> b!4498765 (forall!10174 (toList!4256 lt!1680287) lambda!168601)))

(declare-fun lt!1680295 () Unit!91740)

(declare-fun Unit!91783 () Unit!91740)

(assert (=> b!4498765 (= lt!1680295 Unit!91783)))

(assert (=> b!4498765 (forall!10174 (t!357622 (_2!28760 (h!56360 (toList!4255 lt!1679935)))) lambda!168601)))

(declare-fun lt!1680289 () Unit!91740)

(declare-fun Unit!91784 () Unit!91740)

(assert (=> b!4498765 (= lt!1680289 Unit!91784)))

(declare-fun lt!1680296 () Unit!91740)

(declare-fun Unit!91785 () Unit!91740)

(assert (=> b!4498765 (= lt!1680296 Unit!91785)))

(declare-fun lt!1680292 () Unit!91740)

(assert (=> b!4498765 (= lt!1680292 (forallContained!2428 (toList!4256 lt!1680287) lambda!168601 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679935))))))))

(assert (=> b!4498765 (contains!13210 lt!1680287 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679935))))))))

(declare-fun lt!1680300 () Unit!91740)

(declare-fun Unit!91786 () Unit!91740)

(assert (=> b!4498765 (= lt!1680300 Unit!91786)))

(assert (=> b!4498765 (contains!13210 lt!1680303 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679935))))))))

(declare-fun lt!1680291 () Unit!91740)

(declare-fun Unit!91787 () Unit!91740)

(assert (=> b!4498765 (= lt!1680291 Unit!91787)))

(declare-fun call!313097 () Bool)

(assert (=> b!4498765 call!313097))

(declare-fun lt!1680288 () Unit!91740)

(declare-fun Unit!91788 () Unit!91740)

(assert (=> b!4498765 (= lt!1680288 Unit!91788)))

(assert (=> b!4498765 (forall!10174 (toList!4256 lt!1680287) lambda!168601)))

(declare-fun lt!1680306 () Unit!91740)

(declare-fun Unit!91789 () Unit!91740)

(assert (=> b!4498765 (= lt!1680306 Unit!91789)))

(declare-fun lt!1680301 () Unit!91740)

(declare-fun Unit!91790 () Unit!91740)

(assert (=> b!4498765 (= lt!1680301 Unit!91790)))

(declare-fun lt!1680304 () Unit!91740)

(assert (=> b!4498765 (= lt!1680304 (addForallContainsKeyThenBeforeAdding!305 (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) lt!1680303 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679935))))) (_2!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679935)))))))))

(assert (=> b!4498765 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) lambda!168601)))

(declare-fun lt!1680290 () Unit!91740)

(assert (=> b!4498765 (= lt!1680290 lt!1680304)))

(assert (=> b!4498765 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) lambda!168601)))

(declare-fun lt!1680305 () Unit!91740)

(declare-fun Unit!91791 () Unit!91740)

(assert (=> b!4498765 (= lt!1680305 Unit!91791)))

(declare-fun res!1870142 () Bool)

(assert (=> b!4498765 (= res!1870142 (forall!10174 (_2!28760 (h!56360 (toList!4255 lt!1679935))) lambda!168601))))

(declare-fun e!2802311 () Bool)

(assert (=> b!4498765 (=> (not res!1870142) (not e!2802311))))

(assert (=> b!4498765 e!2802311))

(declare-fun lt!1680302 () Unit!91740)

(declare-fun Unit!91792 () Unit!91740)

(assert (=> b!4498765 (= lt!1680302 Unit!91792)))

(assert (=> b!4498766 (= e!2802312 (extractMap!1180 (t!357623 (toList!4255 lt!1679935))))))

(declare-fun lt!1680294 () Unit!91740)

(assert (=> b!4498766 (= lt!1680294 call!313095)))

(assert (=> b!4498766 call!313096))

(declare-fun lt!1680298 () Unit!91740)

(assert (=> b!4498766 (= lt!1680298 lt!1680294)))

(assert (=> b!4498766 call!313097))

(declare-fun lt!1680293 () Unit!91740)

(declare-fun Unit!91793 () Unit!91740)

(assert (=> b!4498766 (= lt!1680293 Unit!91793)))

(declare-fun b!4498767 () Bool)

(declare-fun res!1870143 () Bool)

(assert (=> b!4498767 (=> (not res!1870143) (not e!2802313))))

(assert (=> b!4498767 (= res!1870143 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) lambda!168606))))

(declare-fun b!4498768 () Bool)

(assert (=> b!4498768 (= e!2802311 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) lambda!168601))))

(declare-fun bm!313091 () Bool)

(assert (=> bm!313091 (= call!313095 (lemmaContainsAllItsOwnKeys!305 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))))))

(declare-fun bm!313092 () Bool)

(assert (=> bm!313092 (= call!313097 (forall!10174 (ite c!766730 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (_2!28760 (h!56360 (toList!4255 lt!1679935)))) (ite c!766730 lambda!168597 lambda!168601)))))

(declare-fun b!4498769 () Bool)

(assert (=> b!4498769 (= e!2802313 (invariantList!983 (toList!4256 lt!1680297)))))

(assert (= (and d!1380270 c!766730) b!4498766))

(assert (= (and d!1380270 (not c!766730)) b!4498765))

(assert (= (and b!4498765 res!1870142) b!4498768))

(assert (= (or b!4498766 b!4498765) bm!313092))

(assert (= (or b!4498766 b!4498765) bm!313090))

(assert (= (or b!4498766 b!4498765) bm!313091))

(assert (= (and d!1380270 res!1870141) b!4498767))

(assert (= (and b!4498767 res!1870143) b!4498769))

(assert (=> b!4498765 m!5228069))

(declare-fun m!5228305 () Bool)

(assert (=> b!4498765 m!5228305))

(assert (=> b!4498765 m!5228069))

(declare-fun m!5228307 () Bool)

(assert (=> b!4498765 m!5228307))

(declare-fun m!5228309 () Bool)

(assert (=> b!4498765 m!5228309))

(declare-fun m!5228311 () Bool)

(assert (=> b!4498765 m!5228311))

(declare-fun m!5228313 () Bool)

(assert (=> b!4498765 m!5228313))

(declare-fun m!5228315 () Bool)

(assert (=> b!4498765 m!5228315))

(declare-fun m!5228317 () Bool)

(assert (=> b!4498765 m!5228317))

(declare-fun m!5228319 () Bool)

(assert (=> b!4498765 m!5228319))

(assert (=> b!4498765 m!5228313))

(declare-fun m!5228321 () Bool)

(assert (=> b!4498765 m!5228321))

(assert (=> b!4498765 m!5228315))

(assert (=> b!4498765 m!5228307))

(declare-fun m!5228323 () Bool)

(assert (=> b!4498765 m!5228323))

(declare-fun m!5228325 () Bool)

(assert (=> bm!313090 m!5228325))

(assert (=> b!4498768 m!5228313))

(assert (=> bm!313091 m!5228069))

(declare-fun m!5228327 () Bool)

(assert (=> bm!313091 m!5228327))

(declare-fun m!5228329 () Bool)

(assert (=> bm!313092 m!5228329))

(declare-fun m!5228331 () Bool)

(assert (=> d!1380270 m!5228331))

(declare-fun m!5228333 () Bool)

(assert (=> d!1380270 m!5228333))

(declare-fun m!5228335 () Bool)

(assert (=> b!4498769 m!5228335))

(declare-fun m!5228337 () Bool)

(assert (=> b!4498767 m!5228337))

(assert (=> b!4498600 d!1380270))

(declare-fun bs!835179 () Bool)

(declare-fun d!1380272 () Bool)

(assert (= bs!835179 (and d!1380272 d!1380202)))

(declare-fun lambda!168611 () Int)

(assert (=> bs!835179 (= lambda!168611 lambda!168536)))

(declare-fun bs!835180 () Bool)

(assert (= bs!835180 (and d!1380272 d!1380184)))

(assert (=> bs!835180 (= lambda!168611 lambda!168533)))

(declare-fun bs!835181 () Bool)

(assert (= bs!835181 (and d!1380272 d!1380180)))

(assert (=> bs!835181 (= lambda!168611 lambda!168532)))

(declare-fun bs!835182 () Bool)

(assert (= bs!835182 (and d!1380272 start!443976)))

(assert (=> bs!835182 (= lambda!168611 lambda!168485)))

(declare-fun bs!835183 () Bool)

(assert (= bs!835183 (and d!1380272 d!1380174)))

(assert (=> bs!835183 (= lambda!168611 lambda!168531)))

(declare-fun bs!835184 () Bool)

(assert (= bs!835184 (and d!1380272 d!1380212)))

(assert (=> bs!835184 (= lambda!168611 lambda!168537)))

(declare-fun bs!835185 () Bool)

(assert (= bs!835185 (and d!1380272 d!1380096)))

(assert (=> bs!835185 (= lambda!168611 lambda!168499)))

(declare-fun bs!835186 () Bool)

(assert (= bs!835186 (and d!1380272 d!1380214)))

(assert (=> bs!835186 (= lambda!168611 lambda!168540)))

(declare-fun bs!835187 () Bool)

(assert (= bs!835187 (and d!1380272 d!1380124)))

(assert (=> bs!835187 (= lambda!168611 lambda!168519)))

(declare-fun bs!835188 () Bool)

(assert (= bs!835188 (and d!1380272 d!1380050)))

(assert (=> bs!835188 (= lambda!168611 lambda!168491)))

(declare-fun bs!835189 () Bool)

(assert (= bs!835189 (and d!1380272 d!1380216)))

(assert (=> bs!835189 (= lambda!168611 lambda!168541)))

(declare-fun bs!835190 () Bool)

(assert (= bs!835190 (and d!1380272 d!1380150)))

(assert (=> bs!835190 (not (= lambda!168611 lambda!168524))))

(declare-fun bs!835191 () Bool)

(assert (= bs!835191 (and d!1380272 d!1380258)))

(assert (=> bs!835191 (= lambda!168611 lambda!168580)))

(declare-fun lt!1680318 () ListMap!3517)

(assert (=> d!1380272 (invariantList!983 (toList!4256 lt!1680318))))

(declare-fun e!2802318 () ListMap!3517)

(assert (=> d!1380272 (= lt!1680318 e!2802318)))

(declare-fun c!766731 () Bool)

(assert (=> d!1380272 (= c!766731 ((_ is Cons!50541) (t!357623 (toList!4255 lt!1679935))))))

(assert (=> d!1380272 (forall!10173 (t!357623 (toList!4255 lt!1679935)) lambda!168611)))

(assert (=> d!1380272 (= (extractMap!1180 (t!357623 (toList!4255 lt!1679935))) lt!1680318)))

(declare-fun b!4498772 () Bool)

(assert (=> b!4498772 (= e!2802318 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (t!357623 (toList!4255 lt!1679935)))) (extractMap!1180 (t!357623 (t!357623 (toList!4255 lt!1679935))))))))

(declare-fun b!4498773 () Bool)

(assert (=> b!4498773 (= e!2802318 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380272 c!766731) b!4498772))

(assert (= (and d!1380272 (not c!766731)) b!4498773))

(declare-fun m!5228339 () Bool)

(assert (=> d!1380272 m!5228339))

(declare-fun m!5228341 () Bool)

(assert (=> d!1380272 m!5228341))

(declare-fun m!5228343 () Bool)

(assert (=> b!4498772 m!5228343))

(assert (=> b!4498772 m!5228343))

(declare-fun m!5228345 () Bool)

(assert (=> b!4498772 m!5228345))

(assert (=> b!4498600 d!1380272))

(assert (=> b!4498629 d!1380260))

(assert (=> b!4498629 d!1380222))

(declare-fun bs!835192 () Bool)

(declare-fun b!4498779 () Bool)

(assert (= bs!835192 (and b!4498779 b!4498765)))

(declare-fun lambda!168614 () Int)

(assert (=> bs!835192 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168614 lambda!168599))))

(declare-fun bs!835193 () Bool)

(assert (= bs!835193 (and b!4498779 d!1380270)))

(assert (=> bs!835193 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680297) (= lambda!168614 lambda!168606))))

(declare-fun bs!835194 () Bool)

(assert (= bs!835194 (and b!4498779 d!1380048)))

(assert (=> bs!835194 (not (= lambda!168614 lambda!168488))))

(assert (=> bs!835192 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680303) (= lambda!168614 lambda!168601))))

(declare-fun bs!835195 () Bool)

(assert (= bs!835195 (and b!4498779 b!4498734)))

(assert (=> bs!835195 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168614 lambda!168577))))

(declare-fun bs!835196 () Bool)

(assert (= bs!835196 (and b!4498779 b!4498766)))

(assert (=> bs!835196 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168614 lambda!168597))))

(assert (=> bs!835195 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680240) (= lambda!168614 lambda!168578))))

(declare-fun bs!835197 () Bool)

(assert (= bs!835197 (and b!4498779 d!1380246)))

(assert (=> bs!835197 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680234) (= lambda!168614 lambda!168579))))

(declare-fun bs!835198 () Bool)

(assert (= bs!835198 (and b!4498779 b!4498735)))

(assert (=> bs!835198 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168614 lambda!168576))))

(assert (=> b!4498779 true))

(declare-fun bs!835199 () Bool)

(declare-fun b!4498778 () Bool)

(assert (= bs!835199 (and b!4498778 b!4498765)))

(declare-fun lambda!168615 () Int)

(assert (=> bs!835199 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168615 lambda!168599))))

(declare-fun bs!835200 () Bool)

(assert (= bs!835200 (and b!4498778 d!1380270)))

(assert (=> bs!835200 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680297) (= lambda!168615 lambda!168606))))

(declare-fun bs!835201 () Bool)

(assert (= bs!835201 (and b!4498778 b!4498779)))

(assert (=> bs!835201 (= lambda!168615 lambda!168614)))

(declare-fun bs!835202 () Bool)

(assert (= bs!835202 (and b!4498778 d!1380048)))

(assert (=> bs!835202 (not (= lambda!168615 lambda!168488))))

(assert (=> bs!835199 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680303) (= lambda!168615 lambda!168601))))

(declare-fun bs!835203 () Bool)

(assert (= bs!835203 (and b!4498778 b!4498734)))

(assert (=> bs!835203 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168615 lambda!168577))))

(declare-fun bs!835204 () Bool)

(assert (= bs!835204 (and b!4498778 b!4498766)))

(assert (=> bs!835204 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168615 lambda!168597))))

(assert (=> bs!835203 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680240) (= lambda!168615 lambda!168578))))

(declare-fun bs!835205 () Bool)

(assert (= bs!835205 (and b!4498778 d!1380246)))

(assert (=> bs!835205 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680234) (= lambda!168615 lambda!168579))))

(declare-fun bs!835206 () Bool)

(assert (= bs!835206 (and b!4498778 b!4498735)))

(assert (=> bs!835206 (= (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168615 lambda!168576))))

(assert (=> b!4498778 true))

(declare-fun lambda!168616 () Int)

(declare-fun lt!1680335 () ListMap!3517)

(assert (=> b!4498778 (= (= lt!1680335 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168616 lambda!168615))))

(assert (=> bs!835199 (= (= lt!1680335 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168616 lambda!168599))))

(assert (=> bs!835200 (= (= lt!1680335 lt!1680297) (= lambda!168616 lambda!168606))))

(assert (=> bs!835201 (= (= lt!1680335 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168616 lambda!168614))))

(assert (=> bs!835202 (not (= lambda!168616 lambda!168488))))

(assert (=> bs!835199 (= (= lt!1680335 lt!1680303) (= lambda!168616 lambda!168601))))

(assert (=> bs!835203 (= (= lt!1680335 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168616 lambda!168577))))

(assert (=> bs!835204 (= (= lt!1680335 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168616 lambda!168597))))

(assert (=> bs!835203 (= (= lt!1680335 lt!1680240) (= lambda!168616 lambda!168578))))

(assert (=> bs!835205 (= (= lt!1680335 lt!1680234) (= lambda!168616 lambda!168579))))

(assert (=> bs!835206 (= (= lt!1680335 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168616 lambda!168576))))

(assert (=> b!4498778 true))

(declare-fun bs!835207 () Bool)

(declare-fun d!1380274 () Bool)

(assert (= bs!835207 (and d!1380274 b!4498778)))

(declare-fun lt!1680329 () ListMap!3517)

(declare-fun lambda!168617 () Int)

(assert (=> bs!835207 (= (= lt!1680329 lt!1680335) (= lambda!168617 lambda!168616))))

(assert (=> bs!835207 (= (= lt!1680329 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168617 lambda!168615))))

(declare-fun bs!835208 () Bool)

(assert (= bs!835208 (and d!1380274 b!4498765)))

(assert (=> bs!835208 (= (= lt!1680329 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168617 lambda!168599))))

(declare-fun bs!835209 () Bool)

(assert (= bs!835209 (and d!1380274 d!1380270)))

(assert (=> bs!835209 (= (= lt!1680329 lt!1680297) (= lambda!168617 lambda!168606))))

(declare-fun bs!835210 () Bool)

(assert (= bs!835210 (and d!1380274 b!4498779)))

(assert (=> bs!835210 (= (= lt!1680329 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168617 lambda!168614))))

(declare-fun bs!835211 () Bool)

(assert (= bs!835211 (and d!1380274 d!1380048)))

(assert (=> bs!835211 (not (= lambda!168617 lambda!168488))))

(assert (=> bs!835208 (= (= lt!1680329 lt!1680303) (= lambda!168617 lambda!168601))))

(declare-fun bs!835212 () Bool)

(assert (= bs!835212 (and d!1380274 b!4498734)))

(assert (=> bs!835212 (= (= lt!1680329 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168617 lambda!168577))))

(declare-fun bs!835213 () Bool)

(assert (= bs!835213 (and d!1380274 b!4498766)))

(assert (=> bs!835213 (= (= lt!1680329 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168617 lambda!168597))))

(assert (=> bs!835212 (= (= lt!1680329 lt!1680240) (= lambda!168617 lambda!168578))))

(declare-fun bs!835214 () Bool)

(assert (= bs!835214 (and d!1380274 d!1380246)))

(assert (=> bs!835214 (= (= lt!1680329 lt!1680234) (= lambda!168617 lambda!168579))))

(declare-fun bs!835215 () Bool)

(assert (= bs!835215 (and d!1380274 b!4498735)))

(assert (=> bs!835215 (= (= lt!1680329 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168617 lambda!168576))))

(assert (=> d!1380274 true))

(declare-fun bm!313099 () Bool)

(declare-fun call!313105 () Bool)

(declare-fun c!766732 () Bool)

(assert (=> bm!313099 (= call!313105 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (ite c!766732 lambda!168614 lambda!168615)))))

(declare-fun e!2802321 () Bool)

(assert (=> d!1380274 e!2802321))

(declare-fun res!1870150 () Bool)

(assert (=> d!1380274 (=> (not res!1870150) (not e!2802321))))

(assert (=> d!1380274 (= res!1870150 (forall!10174 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lambda!168617))))

(declare-fun e!2802320 () ListMap!3517)

(assert (=> d!1380274 (= lt!1680329 e!2802320)))

(assert (=> d!1380274 (= c!766732 ((_ is Nil!50540) (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932))))))))

(assert (=> d!1380274 (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))

(assert (=> d!1380274 (= (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) lt!1680329)))

(assert (=> b!4498778 (= e!2802320 lt!1680335)))

(declare-fun lt!1680319 () ListMap!3517)

(assert (=> b!4498778 (= lt!1680319 (+!1471 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (h!56359 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))))

(assert (=> b!4498778 (= lt!1680335 (addToMapMapFromBucket!651 (t!357622 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (+!1471 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (h!56359 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932))))))))))

(declare-fun lt!1680339 () Unit!91740)

(declare-fun call!313104 () Unit!91740)

(assert (=> b!4498778 (= lt!1680339 call!313104)))

(assert (=> b!4498778 call!313105))

(declare-fun lt!1680331 () Unit!91740)

(assert (=> b!4498778 (= lt!1680331 lt!1680339)))

(assert (=> b!4498778 (forall!10174 (toList!4256 lt!1680319) lambda!168616)))

(declare-fun lt!1680327 () Unit!91740)

(declare-fun Unit!91795 () Unit!91740)

(assert (=> b!4498778 (= lt!1680327 Unit!91795)))

(assert (=> b!4498778 (forall!10174 (t!357622 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) lambda!168616)))

(declare-fun lt!1680321 () Unit!91740)

(declare-fun Unit!91796 () Unit!91740)

(assert (=> b!4498778 (= lt!1680321 Unit!91796)))

(declare-fun lt!1680328 () Unit!91740)

(declare-fun Unit!91797 () Unit!91740)

(assert (=> b!4498778 (= lt!1680328 Unit!91797)))

(declare-fun lt!1680324 () Unit!91740)

(assert (=> b!4498778 (= lt!1680324 (forallContained!2428 (toList!4256 lt!1680319) lambda!168616 (h!56359 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))))

(assert (=> b!4498778 (contains!13210 lt!1680319 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))))

(declare-fun lt!1680332 () Unit!91740)

(declare-fun Unit!91798 () Unit!91740)

(assert (=> b!4498778 (= lt!1680332 Unit!91798)))

(assert (=> b!4498778 (contains!13210 lt!1680335 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))))

(declare-fun lt!1680323 () Unit!91740)

(declare-fun Unit!91799 () Unit!91740)

(assert (=> b!4498778 (= lt!1680323 Unit!91799)))

(declare-fun call!313106 () Bool)

(assert (=> b!4498778 call!313106))

(declare-fun lt!1680320 () Unit!91740)

(declare-fun Unit!91800 () Unit!91740)

(assert (=> b!4498778 (= lt!1680320 Unit!91800)))

(assert (=> b!4498778 (forall!10174 (toList!4256 lt!1680319) lambda!168616)))

(declare-fun lt!1680338 () Unit!91740)

(declare-fun Unit!91801 () Unit!91740)

(assert (=> b!4498778 (= lt!1680338 Unit!91801)))

(declare-fun lt!1680333 () Unit!91740)

(declare-fun Unit!91802 () Unit!91740)

(assert (=> b!4498778 (= lt!1680333 Unit!91802)))

(declare-fun lt!1680336 () Unit!91740)

(assert (=> b!4498778 (= lt!1680336 (addForallContainsKeyThenBeforeAdding!305 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680335 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))) (_2!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932))))))))))

(assert (=> b!4498778 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) lambda!168616)))

(declare-fun lt!1680322 () Unit!91740)

(assert (=> b!4498778 (= lt!1680322 lt!1680336)))

(assert (=> b!4498778 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) lambda!168616)))

(declare-fun lt!1680337 () Unit!91740)

(declare-fun Unit!91803 () Unit!91740)

(assert (=> b!4498778 (= lt!1680337 Unit!91803)))

(declare-fun res!1870151 () Bool)

(assert (=> b!4498778 (= res!1870151 (forall!10174 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lambda!168616))))

(declare-fun e!2802319 () Bool)

(assert (=> b!4498778 (=> (not res!1870151) (not e!2802319))))

(assert (=> b!4498778 e!2802319))

(declare-fun lt!1680334 () Unit!91740)

(declare-fun Unit!91804 () Unit!91740)

(assert (=> b!4498778 (= lt!1680334 Unit!91804)))

(assert (=> b!4498779 (= e!2802320 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))

(declare-fun lt!1680326 () Unit!91740)

(assert (=> b!4498779 (= lt!1680326 call!313104)))

(assert (=> b!4498779 call!313105))

(declare-fun lt!1680330 () Unit!91740)

(assert (=> b!4498779 (= lt!1680330 lt!1680326)))

(assert (=> b!4498779 call!313106))

(declare-fun lt!1680325 () Unit!91740)

(declare-fun Unit!91805 () Unit!91740)

(assert (=> b!4498779 (= lt!1680325 Unit!91805)))

(declare-fun b!4498780 () Bool)

(declare-fun res!1870152 () Bool)

(assert (=> b!4498780 (=> (not res!1870152) (not e!2802321))))

(assert (=> b!4498780 (= res!1870152 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) lambda!168617))))

(declare-fun b!4498781 () Bool)

(assert (=> b!4498781 (= e!2802319 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) lambda!168616))))

(declare-fun bm!313100 () Bool)

(assert (=> bm!313100 (= call!313104 (lemmaContainsAllItsOwnKeys!305 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))))))

(declare-fun bm!313101 () Bool)

(assert (=> bm!313101 (= call!313106 (forall!10174 (ite c!766732 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (ite c!766732 lambda!168614 lambda!168616)))))

(declare-fun b!4498782 () Bool)

(assert (=> b!4498782 (= e!2802321 (invariantList!983 (toList!4256 lt!1680329)))))

(assert (= (and d!1380274 c!766732) b!4498779))

(assert (= (and d!1380274 (not c!766732)) b!4498778))

(assert (= (and b!4498778 res!1870151) b!4498781))

(assert (= (or b!4498779 b!4498778) bm!313101))

(assert (= (or b!4498779 b!4498778) bm!313099))

(assert (= (or b!4498779 b!4498778) bm!313100))

(assert (= (and d!1380274 res!1870150) b!4498780))

(assert (= (and b!4498780 res!1870152) b!4498782))

(assert (=> b!4498778 m!5228049))

(declare-fun m!5228347 () Bool)

(assert (=> b!4498778 m!5228347))

(assert (=> b!4498778 m!5228049))

(declare-fun m!5228349 () Bool)

(assert (=> b!4498778 m!5228349))

(declare-fun m!5228351 () Bool)

(assert (=> b!4498778 m!5228351))

(declare-fun m!5228353 () Bool)

(assert (=> b!4498778 m!5228353))

(declare-fun m!5228355 () Bool)

(assert (=> b!4498778 m!5228355))

(declare-fun m!5228357 () Bool)

(assert (=> b!4498778 m!5228357))

(declare-fun m!5228359 () Bool)

(assert (=> b!4498778 m!5228359))

(declare-fun m!5228361 () Bool)

(assert (=> b!4498778 m!5228361))

(assert (=> b!4498778 m!5228355))

(declare-fun m!5228363 () Bool)

(assert (=> b!4498778 m!5228363))

(assert (=> b!4498778 m!5228357))

(assert (=> b!4498778 m!5228349))

(declare-fun m!5228365 () Bool)

(assert (=> b!4498778 m!5228365))

(declare-fun m!5228367 () Bool)

(assert (=> bm!313099 m!5228367))

(assert (=> b!4498781 m!5228355))

(assert (=> bm!313100 m!5228049))

(declare-fun m!5228369 () Bool)

(assert (=> bm!313100 m!5228369))

(declare-fun m!5228371 () Bool)

(assert (=> bm!313101 m!5228371))

(declare-fun m!5228373 () Bool)

(assert (=> d!1380274 m!5228373))

(declare-fun m!5228375 () Bool)

(assert (=> d!1380274 m!5228375))

(declare-fun m!5228377 () Bool)

(assert (=> b!4498782 m!5228377))

(declare-fun m!5228379 () Bool)

(assert (=> b!4498780 m!5228379))

(assert (=> b!4498596 d!1380274))

(declare-fun bs!835221 () Bool)

(declare-fun d!1380276 () Bool)

(assert (= bs!835221 (and d!1380276 d!1380272)))

(declare-fun lambda!168622 () Int)

(assert (=> bs!835221 (= lambda!168622 lambda!168611)))

(declare-fun bs!835223 () Bool)

(assert (= bs!835223 (and d!1380276 d!1380202)))

(assert (=> bs!835223 (= lambda!168622 lambda!168536)))

(declare-fun bs!835224 () Bool)

(assert (= bs!835224 (and d!1380276 d!1380184)))

(assert (=> bs!835224 (= lambda!168622 lambda!168533)))

(declare-fun bs!835225 () Bool)

(assert (= bs!835225 (and d!1380276 d!1380180)))

(assert (=> bs!835225 (= lambda!168622 lambda!168532)))

(declare-fun bs!835226 () Bool)

(assert (= bs!835226 (and d!1380276 start!443976)))

(assert (=> bs!835226 (= lambda!168622 lambda!168485)))

(declare-fun bs!835227 () Bool)

(assert (= bs!835227 (and d!1380276 d!1380174)))

(assert (=> bs!835227 (= lambda!168622 lambda!168531)))

(declare-fun bs!835228 () Bool)

(assert (= bs!835228 (and d!1380276 d!1380212)))

(assert (=> bs!835228 (= lambda!168622 lambda!168537)))

(declare-fun bs!835229 () Bool)

(assert (= bs!835229 (and d!1380276 d!1380096)))

(assert (=> bs!835229 (= lambda!168622 lambda!168499)))

(declare-fun bs!835230 () Bool)

(assert (= bs!835230 (and d!1380276 d!1380214)))

(assert (=> bs!835230 (= lambda!168622 lambda!168540)))

(declare-fun bs!835231 () Bool)

(assert (= bs!835231 (and d!1380276 d!1380124)))

(assert (=> bs!835231 (= lambda!168622 lambda!168519)))

(declare-fun bs!835232 () Bool)

(assert (= bs!835232 (and d!1380276 d!1380050)))

(assert (=> bs!835232 (= lambda!168622 lambda!168491)))

(declare-fun bs!835233 () Bool)

(assert (= bs!835233 (and d!1380276 d!1380216)))

(assert (=> bs!835233 (= lambda!168622 lambda!168541)))

(declare-fun bs!835234 () Bool)

(assert (= bs!835234 (and d!1380276 d!1380150)))

(assert (=> bs!835234 (not (= lambda!168622 lambda!168524))))

(declare-fun bs!835235 () Bool)

(assert (= bs!835235 (and d!1380276 d!1380258)))

(assert (=> bs!835235 (= lambda!168622 lambda!168580)))

(declare-fun lt!1680361 () ListMap!3517)

(assert (=> d!1380276 (invariantList!983 (toList!4256 lt!1680361))))

(declare-fun e!2802325 () ListMap!3517)

(assert (=> d!1380276 (= lt!1680361 e!2802325)))

(declare-fun c!766734 () Bool)

(assert (=> d!1380276 (= c!766734 ((_ is Cons!50541) (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))

(assert (=> d!1380276 (forall!10173 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))) lambda!168622)))

(assert (=> d!1380276 (= (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) lt!1680361)))

(declare-fun b!4498790 () Bool)

(assert (=> b!4498790 (= e!2802325 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (extractMap!1180 (t!357623 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932)))))))))

(declare-fun b!4498791 () Bool)

(assert (=> b!4498791 (= e!2802325 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380276 c!766734) b!4498790))

(assert (= (and d!1380276 (not c!766734)) b!4498791))

(declare-fun m!5228381 () Bool)

(assert (=> d!1380276 m!5228381))

(declare-fun m!5228383 () Bool)

(assert (=> d!1380276 m!5228383))

(declare-fun m!5228385 () Bool)

(assert (=> b!4498790 m!5228385))

(assert (=> b!4498790 m!5228385))

(declare-fun m!5228389 () Bool)

(assert (=> b!4498790 m!5228389))

(assert (=> b!4498596 d!1380276))

(declare-fun d!1380278 () Bool)

(declare-fun c!766735 () Bool)

(assert (=> d!1380278 (= c!766735 (and ((_ is Cons!50541) (toList!4255 lt!1680157)) (= (_1!28760 (h!56360 (toList!4255 lt!1680157))) (_1!28760 lt!1679932))))))

(declare-fun e!2802326 () Option!11044)

(assert (=> d!1380278 (= (getValueByKey!1024 (toList!4255 lt!1680157) (_1!28760 lt!1679932)) e!2802326)))

(declare-fun b!4498795 () Bool)

(declare-fun e!2802327 () Option!11044)

(assert (=> b!4498795 (= e!2802327 None!11043)))

(declare-fun b!4498793 () Bool)

(assert (=> b!4498793 (= e!2802326 e!2802327)))

(declare-fun c!766736 () Bool)

(assert (=> b!4498793 (= c!766736 (and ((_ is Cons!50541) (toList!4255 lt!1680157)) (not (= (_1!28760 (h!56360 (toList!4255 lt!1680157))) (_1!28760 lt!1679932)))))))

(declare-fun b!4498794 () Bool)

(assert (=> b!4498794 (= e!2802327 (getValueByKey!1024 (t!357623 (toList!4255 lt!1680157)) (_1!28760 lt!1679932)))))

(declare-fun b!4498792 () Bool)

(assert (=> b!4498792 (= e!2802326 (Some!11043 (_2!28760 (h!56360 (toList!4255 lt!1680157)))))))

(assert (= (and d!1380278 c!766735) b!4498792))

(assert (= (and d!1380278 (not c!766735)) b!4498793))

(assert (= (and b!4498793 c!766736) b!4498794))

(assert (= (and b!4498793 (not c!766736)) b!4498795))

(declare-fun m!5228407 () Bool)

(assert (=> b!4498794 m!5228407))

(assert (=> b!4498619 d!1380278))

(declare-fun d!1380280 () Bool)

(assert (=> d!1380280 (= (invariantList!983 (toList!4256 lt!1680142)) (noDuplicatedKeys!242 (toList!4256 lt!1680142)))))

(declare-fun bs!835236 () Bool)

(assert (= bs!835236 d!1380280))

(declare-fun m!5228413 () Bool)

(assert (=> bs!835236 m!5228413))

(assert (=> d!1380184 d!1380280))

(declare-fun d!1380282 () Bool)

(declare-fun res!1870156 () Bool)

(declare-fun e!2802328 () Bool)

(assert (=> d!1380282 (=> res!1870156 e!2802328)))

(assert (=> d!1380282 (= res!1870156 ((_ is Nil!50541) (toList!4255 lt!1679935)))))

(assert (=> d!1380282 (= (forall!10173 (toList!4255 lt!1679935) lambda!168533) e!2802328)))

(declare-fun b!4498796 () Bool)

(declare-fun e!2802329 () Bool)

(assert (=> b!4498796 (= e!2802328 e!2802329)))

(declare-fun res!1870157 () Bool)

(assert (=> b!4498796 (=> (not res!1870157) (not e!2802329))))

(assert (=> b!4498796 (= res!1870157 (dynLambda!21105 lambda!168533 (h!56360 (toList!4255 lt!1679935))))))

(declare-fun b!4498797 () Bool)

(assert (=> b!4498797 (= e!2802329 (forall!10173 (t!357623 (toList!4255 lt!1679935)) lambda!168533))))

(assert (= (and d!1380282 (not res!1870156)) b!4498796))

(assert (= (and b!4498796 res!1870157) b!4498797))

(declare-fun b_lambda!152201 () Bool)

(assert (=> (not b_lambda!152201) (not b!4498796)))

(declare-fun m!5228425 () Bool)

(assert (=> b!4498796 m!5228425))

(declare-fun m!5228427 () Bool)

(assert (=> b!4498797 m!5228427))

(assert (=> d!1380184 d!1380282))

(assert (=> b!4498626 d!1380238))

(declare-fun d!1380286 () Bool)

(assert (=> d!1380286 (containsKey!1680 (toList!4256 lt!1679928) key!3287)))

(declare-fun lt!1680368 () Unit!91740)

(declare-fun choose!29112 (List!50664 K!11950) Unit!91740)

(assert (=> d!1380286 (= lt!1680368 (choose!29112 (toList!4256 lt!1679928) key!3287))))

(assert (=> d!1380286 (invariantList!983 (toList!4256 lt!1679928))))

(assert (=> d!1380286 (= (lemmaInGetKeysListThenContainsKey!430 (toList!4256 lt!1679928) key!3287) lt!1680368)))

(declare-fun bs!835237 () Bool)

(assert (= bs!835237 d!1380286))

(assert (=> bs!835237 m!5228129))

(declare-fun m!5228435 () Bool)

(assert (=> bs!835237 m!5228435))

(declare-fun m!5228437 () Bool)

(assert (=> bs!835237 m!5228437))

(assert (=> b!4498626 d!1380286))

(declare-fun d!1380290 () Bool)

(declare-fun res!1870163 () Bool)

(declare-fun e!2802342 () Bool)

(assert (=> d!1380290 (=> res!1870163 e!2802342)))

(assert (=> d!1380290 (= res!1870163 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (= (_1!28760 (h!56360 (toList!4255 lm!1477))) lt!1679927)))))

(assert (=> d!1380290 (= (containsKey!1679 (toList!4255 lm!1477) lt!1679927) e!2802342)))

(declare-fun b!4498817 () Bool)

(declare-fun e!2802343 () Bool)

(assert (=> b!4498817 (= e!2802342 e!2802343)))

(declare-fun res!1870164 () Bool)

(assert (=> b!4498817 (=> (not res!1870164) (not e!2802343))))

(assert (=> b!4498817 (= res!1870164 (and (or (not ((_ is Cons!50541) (toList!4255 lm!1477))) (bvsle (_1!28760 (h!56360 (toList!4255 lm!1477))) lt!1679927)) ((_ is Cons!50541) (toList!4255 lm!1477)) (bvslt (_1!28760 (h!56360 (toList!4255 lm!1477))) lt!1679927)))))

(declare-fun b!4498818 () Bool)

(assert (=> b!4498818 (= e!2802343 (containsKey!1679 (t!357623 (toList!4255 lm!1477)) lt!1679927))))

(assert (= (and d!1380290 (not res!1870163)) b!4498817))

(assert (= (and b!4498817 res!1870164) b!4498818))

(declare-fun m!5228441 () Bool)

(assert (=> b!4498818 m!5228441))

(assert (=> d!1380066 d!1380290))

(declare-fun bs!835239 () Bool)

(declare-fun b!4498893 () Bool)

(assert (= bs!835239 (and b!4498893 b!4498660)))

(declare-fun lambda!168631 () Int)

(assert (=> bs!835239 (= (= (t!357622 (toList!4256 lt!1679928)) (toList!4256 lt!1679928)) (= lambda!168631 lambda!168546))))

(assert (=> b!4498893 true))

(declare-fun bs!835240 () Bool)

(declare-fun b!4498898 () Bool)

(assert (= bs!835240 (and b!4498898 b!4498660)))

(declare-fun lambda!168632 () Int)

(assert (=> bs!835240 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928))) (toList!4256 lt!1679928)) (= lambda!168632 lambda!168546))))

(declare-fun bs!835241 () Bool)

(assert (= bs!835241 (and b!4498898 b!4498893)))

(assert (=> bs!835241 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928))) (t!357622 (toList!4256 lt!1679928))) (= lambda!168632 lambda!168631))))

(assert (=> b!4498898 true))

(declare-fun bs!835242 () Bool)

(declare-fun b!4498894 () Bool)

(assert (= bs!835242 (and b!4498894 b!4498660)))

(declare-fun lambda!168633 () Int)

(assert (=> bs!835242 (= lambda!168633 lambda!168546)))

(declare-fun bs!835243 () Bool)

(assert (= bs!835243 (and b!4498894 b!4498893)))

(assert (=> bs!835243 (= (= (toList!4256 lt!1679928) (t!357622 (toList!4256 lt!1679928))) (= lambda!168633 lambda!168631))))

(declare-fun bs!835244 () Bool)

(assert (= bs!835244 (and b!4498894 b!4498898)))

(assert (=> bs!835244 (= (= (toList!4256 lt!1679928) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168633 lambda!168632))))

(assert (=> b!4498894 true))

(declare-fun bs!835246 () Bool)

(declare-fun b!4498890 () Bool)

(assert (= bs!835246 (and b!4498890 b!4498661)))

(declare-fun lambda!168634 () Int)

(assert (=> bs!835246 (= lambda!168634 lambda!168547)))

(declare-fun e!2802384 () Bool)

(declare-fun lt!1680395 () List!50667)

(assert (=> b!4498890 (= e!2802384 (= (content!8256 lt!1680395) (content!8256 (map!11100 (toList!4256 lt!1679928) lambda!168634))))))

(declare-fun b!4498891 () Bool)

(declare-fun e!2802383 () List!50667)

(assert (=> b!4498891 (= e!2802383 Nil!50543)))

(declare-fun d!1380294 () Bool)

(assert (=> d!1380294 e!2802384))

(declare-fun res!1870198 () Bool)

(assert (=> d!1380294 (=> (not res!1870198) (not e!2802384))))

(assert (=> d!1380294 (= res!1870198 (noDuplicate!727 lt!1680395))))

(assert (=> d!1380294 (= lt!1680395 e!2802383)))

(declare-fun c!766768 () Bool)

(assert (=> d!1380294 (= c!766768 ((_ is Cons!50540) (toList!4256 lt!1679928)))))

(assert (=> d!1380294 (invariantList!983 (toList!4256 lt!1679928))))

(assert (=> d!1380294 (= (getKeysList!431 (toList!4256 lt!1679928)) lt!1680395)))

(declare-fun b!4498892 () Bool)

(declare-fun e!2802388 () Unit!91740)

(declare-fun Unit!91807 () Unit!91740)

(assert (=> b!4498892 (= e!2802388 Unit!91807)))

(assert (=> b!4498893 false))

(declare-fun lt!1680396 () Unit!91740)

(declare-fun forallContained!2430 (List!50667 Int K!11950) Unit!91740)

(assert (=> b!4498893 (= lt!1680396 (forallContained!2430 (getKeysList!431 (t!357622 (toList!4256 lt!1679928))) lambda!168631 (_1!28759 (h!56359 (toList!4256 lt!1679928)))))))

(declare-fun Unit!91808 () Unit!91740)

(assert (=> b!4498893 (= e!2802388 Unit!91808)))

(declare-fun res!1870197 () Bool)

(assert (=> b!4498894 (=> (not res!1870197) (not e!2802384))))

(assert (=> b!4498894 (= res!1870197 (forall!10176 lt!1680395 lambda!168633))))

(declare-fun b!4498895 () Bool)

(declare-fun e!2802390 () Unit!91740)

(declare-fun Unit!91809 () Unit!91740)

(assert (=> b!4498895 (= e!2802390 Unit!91809)))

(declare-fun b!4498896 () Bool)

(assert (=> b!4498896 false))

(declare-fun Unit!91810 () Unit!91740)

(assert (=> b!4498896 (= e!2802390 Unit!91810)))

(assert (=> b!4498898 (= e!2802383 (Cons!50543 (_1!28759 (h!56359 (toList!4256 lt!1679928))) (getKeysList!431 (t!357622 (toList!4256 lt!1679928)))))))

(declare-fun c!766770 () Bool)

(assert (=> b!4498898 (= c!766770 (containsKey!1680 (t!357622 (toList!4256 lt!1679928)) (_1!28759 (h!56359 (toList!4256 lt!1679928)))))))

(declare-fun lt!1680400 () Unit!91740)

(assert (=> b!4498898 (= lt!1680400 e!2802390)))

(declare-fun c!766765 () Bool)

(assert (=> b!4498898 (= c!766765 (contains!13213 (getKeysList!431 (t!357622 (toList!4256 lt!1679928))) (_1!28759 (h!56359 (toList!4256 lt!1679928)))))))

(declare-fun lt!1680401 () Unit!91740)

(assert (=> b!4498898 (= lt!1680401 e!2802388)))

(declare-fun lt!1680399 () List!50667)

(assert (=> b!4498898 (= lt!1680399 (getKeysList!431 (t!357622 (toList!4256 lt!1679928))))))

(declare-fun lt!1680398 () Unit!91740)

(declare-fun lemmaForallContainsAddHeadPreserves!148 (List!50664 List!50667 tuple2!50930) Unit!91740)

(assert (=> b!4498898 (= lt!1680398 (lemmaForallContainsAddHeadPreserves!148 (t!357622 (toList!4256 lt!1679928)) lt!1680399 (h!56359 (toList!4256 lt!1679928))))))

(assert (=> b!4498898 (forall!10176 lt!1680399 lambda!168632)))

(declare-fun lt!1680397 () Unit!91740)

(assert (=> b!4498898 (= lt!1680397 lt!1680398)))

(declare-fun b!4498899 () Bool)

(declare-fun res!1870196 () Bool)

(assert (=> b!4498899 (=> (not res!1870196) (not e!2802384))))

(assert (=> b!4498899 (= res!1870196 (= (length!310 lt!1680395) (length!311 (toList!4256 lt!1679928))))))

(assert (= (and d!1380294 c!766768) b!4498898))

(assert (= (and d!1380294 (not c!766768)) b!4498891))

(assert (= (and b!4498898 c!766770) b!4498896))

(assert (= (and b!4498898 (not c!766770)) b!4498895))

(assert (= (and b!4498898 c!766765) b!4498893))

(assert (= (and b!4498898 (not c!766765)) b!4498892))

(assert (= (and d!1380294 res!1870198) b!4498899))

(assert (= (and b!4498899 res!1870196) b!4498894))

(assert (= (and b!4498894 res!1870197) b!4498890))

(declare-fun m!5228507 () Bool)

(assert (=> b!4498890 m!5228507))

(declare-fun m!5228511 () Bool)

(assert (=> b!4498890 m!5228511))

(assert (=> b!4498890 m!5228511))

(declare-fun m!5228515 () Bool)

(assert (=> b!4498890 m!5228515))

(declare-fun m!5228517 () Bool)

(assert (=> b!4498898 m!5228517))

(declare-fun m!5228519 () Bool)

(assert (=> b!4498898 m!5228519))

(assert (=> b!4498898 m!5228517))

(declare-fun m!5228521 () Bool)

(assert (=> b!4498898 m!5228521))

(declare-fun m!5228523 () Bool)

(assert (=> b!4498898 m!5228523))

(declare-fun m!5228525 () Bool)

(assert (=> b!4498898 m!5228525))

(assert (=> b!4498893 m!5228517))

(assert (=> b!4498893 m!5228517))

(declare-fun m!5228527 () Bool)

(assert (=> b!4498893 m!5228527))

(declare-fun m!5228529 () Bool)

(assert (=> d!1380294 m!5228529))

(assert (=> d!1380294 m!5228437))

(declare-fun m!5228531 () Bool)

(assert (=> b!4498894 m!5228531))

(declare-fun m!5228533 () Bool)

(assert (=> b!4498899 m!5228533))

(assert (=> b!4498899 m!5228193))

(assert (=> b!4498628 d!1380294))

(declare-fun d!1380320 () Bool)

(declare-fun e!2802397 () Bool)

(assert (=> d!1380320 e!2802397))

(declare-fun res!1870202 () Bool)

(assert (=> d!1380320 (=> res!1870202 e!2802397)))

(declare-fun lt!1680407 () Bool)

(assert (=> d!1380320 (= res!1870202 (not lt!1680407))))

(declare-fun lt!1680408 () Bool)

(assert (=> d!1380320 (= lt!1680407 lt!1680408)))

(declare-fun lt!1680410 () Unit!91740)

(declare-fun e!2802396 () Unit!91740)

(assert (=> d!1380320 (= lt!1680410 e!2802396)))

(declare-fun c!766773 () Bool)

(assert (=> d!1380320 (= c!766773 lt!1680408)))

(assert (=> d!1380320 (= lt!1680408 (containsKey!1679 (toList!4255 lt!1680133) (_1!28760 lt!1679932)))))

(assert (=> d!1380320 (= (contains!13209 lt!1680133 (_1!28760 lt!1679932)) lt!1680407)))

(declare-fun b!4498916 () Bool)

(declare-fun lt!1680409 () Unit!91740)

(assert (=> b!4498916 (= e!2802396 lt!1680409)))

(assert (=> b!4498916 (= lt!1680409 (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lt!1680133) (_1!28760 lt!1679932)))))

(assert (=> b!4498916 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680133) (_1!28760 lt!1679932)))))

(declare-fun b!4498917 () Bool)

(declare-fun Unit!91811 () Unit!91740)

(assert (=> b!4498917 (= e!2802396 Unit!91811)))

(declare-fun b!4498918 () Bool)

(assert (=> b!4498918 (= e!2802397 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680133) (_1!28760 lt!1679932))))))

(assert (= (and d!1380320 c!766773) b!4498916))

(assert (= (and d!1380320 (not c!766773)) b!4498917))

(assert (= (and d!1380320 (not res!1870202)) b!4498918))

(declare-fun m!5228535 () Bool)

(assert (=> d!1380320 m!5228535))

(declare-fun m!5228537 () Bool)

(assert (=> b!4498916 m!5228537))

(assert (=> b!4498916 m!5228019))

(assert (=> b!4498916 m!5228019))

(declare-fun m!5228539 () Bool)

(assert (=> b!4498916 m!5228539))

(assert (=> b!4498918 m!5228019))

(assert (=> b!4498918 m!5228019))

(assert (=> b!4498918 m!5228539))

(assert (=> d!1380172 d!1380320))

(declare-fun d!1380322 () Bool)

(declare-fun c!766774 () Bool)

(assert (=> d!1380322 (= c!766774 (and ((_ is Cons!50541) lt!1680131) (= (_1!28760 (h!56360 lt!1680131)) (_1!28760 lt!1679932))))))

(declare-fun e!2802398 () Option!11044)

(assert (=> d!1380322 (= (getValueByKey!1024 lt!1680131 (_1!28760 lt!1679932)) e!2802398)))

(declare-fun b!4498922 () Bool)

(declare-fun e!2802399 () Option!11044)

(assert (=> b!4498922 (= e!2802399 None!11043)))

(declare-fun b!4498920 () Bool)

(assert (=> b!4498920 (= e!2802398 e!2802399)))

(declare-fun c!766775 () Bool)

(assert (=> b!4498920 (= c!766775 (and ((_ is Cons!50541) lt!1680131) (not (= (_1!28760 (h!56360 lt!1680131)) (_1!28760 lt!1679932)))))))

(declare-fun b!4498921 () Bool)

(assert (=> b!4498921 (= e!2802399 (getValueByKey!1024 (t!357623 lt!1680131) (_1!28760 lt!1679932)))))

(declare-fun b!4498919 () Bool)

(assert (=> b!4498919 (= e!2802398 (Some!11043 (_2!28760 (h!56360 lt!1680131))))))

(assert (= (and d!1380322 c!766774) b!4498919))

(assert (= (and d!1380322 (not c!766774)) b!4498920))

(assert (= (and b!4498920 c!766775) b!4498921))

(assert (= (and b!4498920 (not c!766775)) b!4498922))

(declare-fun m!5228541 () Bool)

(assert (=> b!4498921 m!5228541))

(assert (=> d!1380172 d!1380322))

(declare-fun d!1380324 () Bool)

(assert (=> d!1380324 (= (getValueByKey!1024 lt!1680131 (_1!28760 lt!1679932)) (Some!11043 (_2!28760 lt!1679932)))))

(declare-fun lt!1680416 () Unit!91740)

(declare-fun choose!29116 (List!50665 (_ BitVec 64) List!50664) Unit!91740)

(assert (=> d!1380324 (= lt!1680416 (choose!29116 lt!1680131 (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(declare-fun e!2802410 () Bool)

(assert (=> d!1380324 e!2802410))

(declare-fun res!1870213 () Bool)

(assert (=> d!1380324 (=> (not res!1870213) (not e!2802410))))

(assert (=> d!1380324 (= res!1870213 (isStrictlySorted!397 lt!1680131))))

(assert (=> d!1380324 (= (lemmaContainsTupThenGetReturnValue!632 lt!1680131 (_1!28760 lt!1679932) (_2!28760 lt!1679932)) lt!1680416)))

(declare-fun b!4498937 () Bool)

(declare-fun res!1870214 () Bool)

(assert (=> b!4498937 (=> (not res!1870214) (not e!2802410))))

(assert (=> b!4498937 (= res!1870214 (containsKey!1679 lt!1680131 (_1!28760 lt!1679932)))))

(declare-fun b!4498938 () Bool)

(assert (=> b!4498938 (= e!2802410 (contains!13211 lt!1680131 (tuple2!50933 (_1!28760 lt!1679932) (_2!28760 lt!1679932))))))

(assert (= (and d!1380324 res!1870213) b!4498937))

(assert (= (and b!4498937 res!1870214) b!4498938))

(assert (=> d!1380324 m!5228013))

(declare-fun m!5228555 () Bool)

(assert (=> d!1380324 m!5228555))

(declare-fun m!5228557 () Bool)

(assert (=> d!1380324 m!5228557))

(declare-fun m!5228559 () Bool)

(assert (=> b!4498937 m!5228559))

(declare-fun m!5228561 () Bool)

(assert (=> b!4498938 m!5228561))

(assert (=> d!1380172 d!1380324))

(declare-fun b!4498988 () Bool)

(declare-fun res!1870220 () Bool)

(declare-fun e!2802440 () Bool)

(assert (=> b!4498988 (=> (not res!1870220) (not e!2802440))))

(declare-fun lt!1680423 () List!50665)

(assert (=> b!4498988 (= res!1870220 (containsKey!1679 lt!1680423 (_1!28760 lt!1679932)))))

(declare-fun bm!313123 () Bool)

(declare-fun call!313130 () List!50665)

(declare-fun call!313129 () List!50665)

(assert (=> bm!313123 (= call!313130 call!313129)))

(declare-fun bm!313124 () Bool)

(declare-fun e!2802439 () List!50665)

(declare-fun c!766803 () Bool)

(declare-fun call!313128 () List!50665)

(declare-fun $colon$colon!894 (List!50665 tuple2!50932) List!50665)

(assert (=> bm!313124 (= call!313128 ($colon$colon!894 e!2802439 (ite c!766803 (h!56360 (toList!4255 lt!1679939)) (tuple2!50933 (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))))

(declare-fun c!766802 () Bool)

(assert (=> bm!313124 (= c!766802 c!766803)))

(declare-fun d!1380336 () Bool)

(assert (=> d!1380336 e!2802440))

(declare-fun res!1870221 () Bool)

(assert (=> d!1380336 (=> (not res!1870221) (not e!2802440))))

(assert (=> d!1380336 (= res!1870221 (isStrictlySorted!397 lt!1680423))))

(declare-fun e!2802438 () List!50665)

(assert (=> d!1380336 (= lt!1680423 e!2802438)))

(assert (=> d!1380336 (= c!766803 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (bvslt (_1!28760 (h!56360 (toList!4255 lt!1679939))) (_1!28760 lt!1679932))))))

(assert (=> d!1380336 (isStrictlySorted!397 (toList!4255 lt!1679939))))

(assert (=> d!1380336 (= (insertStrictlySorted!374 (toList!4255 lt!1679939) (_1!28760 lt!1679932) (_2!28760 lt!1679932)) lt!1680423)))

(declare-fun b!4498989 () Bool)

(assert (=> b!4498989 (= e!2802439 (insertStrictlySorted!374 (t!357623 (toList!4255 lt!1679939)) (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(declare-fun b!4498990 () Bool)

(declare-fun e!2802436 () List!50665)

(assert (=> b!4498990 (= e!2802438 e!2802436)))

(declare-fun c!766801 () Bool)

(assert (=> b!4498990 (= c!766801 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (= (_1!28760 (h!56360 (toList!4255 lt!1679939))) (_1!28760 lt!1679932))))))

(declare-fun b!4498991 () Bool)

(assert (=> b!4498991 (= e!2802438 call!313128)))

(declare-fun b!4498992 () Bool)

(declare-fun e!2802437 () List!50665)

(assert (=> b!4498992 (= e!2802437 call!313130)))

(declare-fun b!4498993 () Bool)

(assert (=> b!4498993 (= e!2802437 call!313130)))

(declare-fun c!766800 () Bool)

(declare-fun b!4498994 () Bool)

(assert (=> b!4498994 (= e!2802439 (ite c!766801 (t!357623 (toList!4255 lt!1679939)) (ite c!766800 (Cons!50541 (h!56360 (toList!4255 lt!1679939)) (t!357623 (toList!4255 lt!1679939))) Nil!50541)))))

(declare-fun b!4498995 () Bool)

(assert (=> b!4498995 (= e!2802440 (contains!13211 lt!1680423 (tuple2!50933 (_1!28760 lt!1679932) (_2!28760 lt!1679932))))))

(declare-fun bm!313125 () Bool)

(assert (=> bm!313125 (= call!313129 call!313128)))

(declare-fun b!4498996 () Bool)

(assert (=> b!4498996 (= c!766800 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (bvsgt (_1!28760 (h!56360 (toList!4255 lt!1679939))) (_1!28760 lt!1679932))))))

(assert (=> b!4498996 (= e!2802436 e!2802437)))

(declare-fun b!4498997 () Bool)

(assert (=> b!4498997 (= e!2802436 call!313129)))

(assert (= (and d!1380336 c!766803) b!4498991))

(assert (= (and d!1380336 (not c!766803)) b!4498990))

(assert (= (and b!4498990 c!766801) b!4498997))

(assert (= (and b!4498990 (not c!766801)) b!4498996))

(assert (= (and b!4498996 c!766800) b!4498992))

(assert (= (and b!4498996 (not c!766800)) b!4498993))

(assert (= (or b!4498992 b!4498993) bm!313123))

(assert (= (or b!4498997 bm!313123) bm!313125))

(assert (= (or b!4498991 bm!313125) bm!313124))

(assert (= (and bm!313124 c!766802) b!4498989))

(assert (= (and bm!313124 (not c!766802)) b!4498994))

(assert (= (and d!1380336 res!1870221) b!4498988))

(assert (= (and b!4498988 res!1870220) b!4498995))

(declare-fun m!5228587 () Bool)

(assert (=> b!4498988 m!5228587))

(declare-fun m!5228589 () Bool)

(assert (=> b!4498989 m!5228589))

(declare-fun m!5228591 () Bool)

(assert (=> d!1380336 m!5228591))

(declare-fun m!5228593 () Bool)

(assert (=> d!1380336 m!5228593))

(declare-fun m!5228595 () Bool)

(assert (=> bm!313124 m!5228595))

(declare-fun m!5228597 () Bool)

(assert (=> b!4498995 m!5228597))

(assert (=> d!1380172 d!1380336))

(declare-fun bs!835251 () Bool)

(declare-fun b!4498999 () Bool)

(assert (= bs!835251 (and b!4498999 b!4498660)))

(declare-fun lambda!168635 () Int)

(assert (=> bs!835251 (= (= (toList!4256 lt!1679938) (toList!4256 lt!1679928)) (= lambda!168635 lambda!168546))))

(declare-fun bs!835252 () Bool)

(assert (= bs!835252 (and b!4498999 b!4498893)))

(assert (=> bs!835252 (= (= (toList!4256 lt!1679938) (t!357622 (toList!4256 lt!1679928))) (= lambda!168635 lambda!168631))))

(declare-fun bs!835253 () Bool)

(assert (= bs!835253 (and b!4498999 b!4498898)))

(assert (=> bs!835253 (= (= (toList!4256 lt!1679938) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168635 lambda!168632))))

(declare-fun bs!835254 () Bool)

(assert (= bs!835254 (and b!4498999 b!4498894)))

(assert (=> bs!835254 (= (= (toList!4256 lt!1679938) (toList!4256 lt!1679928)) (= lambda!168635 lambda!168633))))

(assert (=> b!4498999 true))

(declare-fun bs!835256 () Bool)

(declare-fun b!4499000 () Bool)

(assert (= bs!835256 (and b!4499000 b!4498661)))

(declare-fun lambda!168636 () Int)

(assert (=> bs!835256 (= lambda!168636 lambda!168547)))

(declare-fun bs!835257 () Bool)

(assert (= bs!835257 (and b!4499000 b!4498890)))

(assert (=> bs!835257 (= lambda!168636 lambda!168634)))

(declare-fun d!1380358 () Bool)

(declare-fun e!2802441 () Bool)

(assert (=> d!1380358 e!2802441))

(declare-fun res!1870222 () Bool)

(assert (=> d!1380358 (=> (not res!1870222) (not e!2802441))))

(declare-fun lt!1680426 () List!50667)

(assert (=> d!1380358 (= res!1870222 (noDuplicate!727 lt!1680426))))

(assert (=> d!1380358 (= lt!1680426 (getKeysList!431 (toList!4256 lt!1679938)))))

(assert (=> d!1380358 (= (keys!17522 lt!1679938) lt!1680426)))

(declare-fun b!4498998 () Bool)

(declare-fun res!1870224 () Bool)

(assert (=> b!4498998 (=> (not res!1870224) (not e!2802441))))

(assert (=> b!4498998 (= res!1870224 (= (length!310 lt!1680426) (length!311 (toList!4256 lt!1679938))))))

(declare-fun res!1870223 () Bool)

(assert (=> b!4498999 (=> (not res!1870223) (not e!2802441))))

(assert (=> b!4498999 (= res!1870223 (forall!10176 lt!1680426 lambda!168635))))

(assert (=> b!4499000 (= e!2802441 (= (content!8256 lt!1680426) (content!8256 (map!11100 (toList!4256 lt!1679938) lambda!168636))))))

(assert (= (and d!1380358 res!1870222) b!4498998))

(assert (= (and b!4498998 res!1870224) b!4498999))

(assert (= (and b!4498999 res!1870223) b!4499000))

(declare-fun m!5228603 () Bool)

(assert (=> d!1380358 m!5228603))

(assert (=> d!1380358 m!5227875))

(declare-fun m!5228605 () Bool)

(assert (=> b!4498998 m!5228605))

(declare-fun m!5228607 () Bool)

(assert (=> b!4498998 m!5228607))

(declare-fun m!5228609 () Bool)

(assert (=> b!4498999 m!5228609))

(declare-fun m!5228611 () Bool)

(assert (=> b!4499000 m!5228611))

(declare-fun m!5228613 () Bool)

(assert (=> b!4499000 m!5228613))

(assert (=> b!4499000 m!5228613))

(declare-fun m!5228615 () Bool)

(assert (=> b!4499000 m!5228615))

(assert (=> b!4498518 d!1380358))

(declare-fun d!1380362 () Bool)

(declare-fun res!1870228 () Bool)

(declare-fun e!2802445 () Bool)

(assert (=> d!1380362 (=> res!1870228 e!2802445)))

(assert (=> d!1380362 (= res!1870228 (and ((_ is Cons!50540) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= (_1!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) key!3287)))))

(assert (=> d!1380362 (= (containsKey!1680 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287) e!2802445)))

(declare-fun b!4499006 () Bool)

(declare-fun e!2802446 () Bool)

(assert (=> b!4499006 (= e!2802445 e!2802446)))

(declare-fun res!1870229 () Bool)

(assert (=> b!4499006 (=> (not res!1870229) (not e!2802446))))

(assert (=> b!4499006 (= res!1870229 ((_ is Cons!50540) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))

(declare-fun b!4499007 () Bool)

(assert (=> b!4499007 (= e!2802446 (containsKey!1680 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) key!3287))))

(assert (= (and d!1380362 (not res!1870228)) b!4499006))

(assert (= (and b!4499006 res!1870229) b!4499007))

(declare-fun m!5228617 () Bool)

(assert (=> b!4499007 m!5228617))

(assert (=> b!4498635 d!1380362))

(declare-fun d!1380364 () Bool)

(assert (=> d!1380364 (containsKey!1680 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287)))

(declare-fun lt!1680449 () Unit!91740)

(assert (=> d!1380364 (= lt!1680449 (choose!29112 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(assert (=> d!1380364 (invariantList!983 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380364 (= (lemmaInGetKeysListThenContainsKey!430 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287) lt!1680449)))

(declare-fun bs!835262 () Bool)

(assert (= bs!835262 d!1380364))

(assert (=> bs!835262 m!5228149))

(declare-fun m!5228619 () Bool)

(assert (=> bs!835262 m!5228619))

(assert (=> bs!835262 m!5228295))

(assert (=> b!4498635 d!1380364))

(declare-fun d!1380366 () Bool)

(declare-fun res!1870230 () Bool)

(declare-fun e!2802447 () Bool)

(assert (=> d!1380366 (=> res!1870230 e!2802447)))

(assert (=> d!1380366 (= res!1870230 (and ((_ is Cons!50540) (toList!4256 lt!1679938)) (= (_1!28759 (h!56359 (toList!4256 lt!1679938))) key!3287)))))

(assert (=> d!1380366 (= (containsKey!1680 (toList!4256 lt!1679938) key!3287) e!2802447)))

(declare-fun b!4499008 () Bool)

(declare-fun e!2802448 () Bool)

(assert (=> b!4499008 (= e!2802447 e!2802448)))

(declare-fun res!1870231 () Bool)

(assert (=> b!4499008 (=> (not res!1870231) (not e!2802448))))

(assert (=> b!4499008 (= res!1870231 ((_ is Cons!50540) (toList!4256 lt!1679938)))))

(declare-fun b!4499009 () Bool)

(assert (=> b!4499009 (= e!2802448 (containsKey!1680 (t!357622 (toList!4256 lt!1679938)) key!3287))))

(assert (= (and d!1380366 (not res!1870230)) b!4499008))

(assert (= (and b!4499008 res!1870231) b!4499009))

(declare-fun m!5228621 () Bool)

(assert (=> b!4499009 m!5228621))

(assert (=> d!1380100 d!1380366))

(declare-fun d!1380368 () Bool)

(declare-fun lt!1680450 () Bool)

(assert (=> d!1380368 (= lt!1680450 (select (content!8254 (toList!4255 lt!1680133)) lt!1679932))))

(declare-fun e!2802450 () Bool)

(assert (=> d!1380368 (= lt!1680450 e!2802450)))

(declare-fun res!1870233 () Bool)

(assert (=> d!1380368 (=> (not res!1870233) (not e!2802450))))

(assert (=> d!1380368 (= res!1870233 ((_ is Cons!50541) (toList!4255 lt!1680133)))))

(assert (=> d!1380368 (= (contains!13211 (toList!4255 lt!1680133) lt!1679932) lt!1680450)))

(declare-fun b!4499010 () Bool)

(declare-fun e!2802449 () Bool)

(assert (=> b!4499010 (= e!2802450 e!2802449)))

(declare-fun res!1870232 () Bool)

(assert (=> b!4499010 (=> res!1870232 e!2802449)))

(assert (=> b!4499010 (= res!1870232 (= (h!56360 (toList!4255 lt!1680133)) lt!1679932))))

(declare-fun b!4499011 () Bool)

(assert (=> b!4499011 (= e!2802449 (contains!13211 (t!357623 (toList!4255 lt!1680133)) lt!1679932))))

(assert (= (and d!1380368 res!1870233) b!4499010))

(assert (= (and b!4499010 (not res!1870232)) b!4499011))

(declare-fun m!5228623 () Bool)

(assert (=> d!1380368 m!5228623))

(declare-fun m!5228625 () Bool)

(assert (=> d!1380368 m!5228625))

(declare-fun m!5228627 () Bool)

(assert (=> b!4499011 m!5228627))

(assert (=> b!4498585 d!1380368))

(declare-fun d!1380370 () Bool)

(declare-fun c!766805 () Bool)

(assert (=> d!1380370 (= c!766805 ((_ is Nil!50541) (t!357623 (toList!4255 lm!1477))))))

(declare-fun e!2802451 () (InoxSet tuple2!50932))

(assert (=> d!1380370 (= (content!8254 (t!357623 (toList!4255 lm!1477))) e!2802451)))

(declare-fun b!4499012 () Bool)

(assert (=> b!4499012 (= e!2802451 ((as const (Array tuple2!50932 Bool)) false))))

(declare-fun b!4499013 () Bool)

(assert (=> b!4499013 (= e!2802451 ((_ map or) (store ((as const (Array tuple2!50932 Bool)) false) (h!56360 (t!357623 (toList!4255 lm!1477))) true) (content!8254 (t!357623 (t!357623 (toList!4255 lm!1477))))))))

(assert (= (and d!1380370 c!766805) b!4499012))

(assert (= (and d!1380370 (not c!766805)) b!4499013))

(declare-fun m!5228629 () Bool)

(assert (=> b!4499013 m!5228629))

(declare-fun m!5228631 () Bool)

(assert (=> b!4499013 m!5228631))

(assert (=> d!1380148 d!1380370))

(declare-fun d!1380372 () Bool)

(declare-fun choose!29117 (Hashable!5519 K!11950) (_ BitVec 64))

(assert (=> d!1380372 (= (hash!2687 hashF!1107 key!3287) (choose!29117 hashF!1107 key!3287))))

(declare-fun bs!835268 () Bool)

(assert (= bs!835268 d!1380372))

(declare-fun m!5228633 () Bool)

(assert (=> bs!835268 m!5228633))

(assert (=> d!1380196 d!1380372))

(declare-fun d!1380374 () Bool)

(declare-fun res!1870234 () Bool)

(declare-fun e!2802453 () Bool)

(assert (=> d!1380374 (=> res!1870234 e!2802453)))

(declare-fun e!2802452 () Bool)

(assert (=> d!1380374 (= res!1870234 e!2802452)))

(declare-fun res!1870235 () Bool)

(assert (=> d!1380374 (=> (not res!1870235) (not e!2802452))))

(assert (=> d!1380374 (= res!1870235 ((_ is Cons!50541) (t!357623 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380374 (= (containsKeyBiggerList!104 (t!357623 (t!357623 (toList!4255 lm!1477))) key!3287) e!2802453)))

(declare-fun b!4499014 () Bool)

(assert (=> b!4499014 (= e!2802452 (containsKey!1676 (_2!28760 (h!56360 (t!357623 (t!357623 (toList!4255 lm!1477))))) key!3287))))

(declare-fun b!4499015 () Bool)

(declare-fun e!2802454 () Bool)

(assert (=> b!4499015 (= e!2802453 e!2802454)))

(declare-fun res!1870236 () Bool)

(assert (=> b!4499015 (=> (not res!1870236) (not e!2802454))))

(assert (=> b!4499015 (= res!1870236 ((_ is Cons!50541) (t!357623 (t!357623 (toList!4255 lm!1477)))))))

(declare-fun b!4499016 () Bool)

(assert (=> b!4499016 (= e!2802454 (containsKeyBiggerList!104 (t!357623 (t!357623 (t!357623 (toList!4255 lm!1477)))) key!3287))))

(assert (= (and d!1380374 res!1870235) b!4499014))

(assert (= (and d!1380374 (not res!1870234)) b!4499015))

(assert (= (and b!4499015 res!1870236) b!4499016))

(declare-fun m!5228635 () Bool)

(assert (=> b!4499014 m!5228635))

(declare-fun m!5228637 () Bool)

(assert (=> b!4499016 m!5228637))

(assert (=> b!4498613 d!1380374))

(declare-fun d!1380376 () Bool)

(declare-fun c!766806 () Bool)

(assert (=> d!1380376 (= c!766806 (and ((_ is Cons!50541) (toList!4255 lt!1680141)) (= (_1!28760 (h!56360 (toList!4255 lt!1680141))) (_1!28760 lt!1679924))))))

(declare-fun e!2802455 () Option!11044)

(assert (=> d!1380376 (= (getValueByKey!1024 (toList!4255 lt!1680141) (_1!28760 lt!1679924)) e!2802455)))

(declare-fun b!4499020 () Bool)

(declare-fun e!2802456 () Option!11044)

(assert (=> b!4499020 (= e!2802456 None!11043)))

(declare-fun b!4499018 () Bool)

(assert (=> b!4499018 (= e!2802455 e!2802456)))

(declare-fun c!766807 () Bool)

(assert (=> b!4499018 (= c!766807 (and ((_ is Cons!50541) (toList!4255 lt!1680141)) (not (= (_1!28760 (h!56360 (toList!4255 lt!1680141))) (_1!28760 lt!1679924)))))))

(declare-fun b!4499019 () Bool)

(assert (=> b!4499019 (= e!2802456 (getValueByKey!1024 (t!357623 (toList!4255 lt!1680141)) (_1!28760 lt!1679924)))))

(declare-fun b!4499017 () Bool)

(assert (=> b!4499017 (= e!2802455 (Some!11043 (_2!28760 (h!56360 (toList!4255 lt!1680141)))))))

(assert (= (and d!1380376 c!766806) b!4499017))

(assert (= (and d!1380376 (not c!766806)) b!4499018))

(assert (= (and b!4499018 c!766807) b!4499019))

(assert (= (and b!4499018 (not c!766807)) b!4499020))

(declare-fun m!5228639 () Bool)

(assert (=> b!4499019 m!5228639))

(assert (=> b!4498598 d!1380376))

(declare-fun d!1380378 () Bool)

(assert (=> d!1380378 (eq!581 (extractMap!1180 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)))) (-!350 (extractMap!1180 (toList!4255 lt!1679939)) key!3287))))

(assert (=> d!1380378 true))

(declare-fun _$8!593 () Unit!91740)

(assert (=> d!1380378 (= (choose!29103 lt!1679939 hash!344 newBucket!178 key!3287 hashF!1107) _$8!593)))

(declare-fun bs!835287 () Bool)

(assert (= bs!835287 d!1380378))

(assert (=> bs!835287 m!5228035))

(assert (=> bs!835287 m!5228037))

(assert (=> bs!835287 m!5228039))

(assert (=> bs!835287 m!5227543))

(assert (=> bs!835287 m!5228037))

(assert (=> bs!835287 m!5227543))

(assert (=> bs!835287 m!5228035))

(assert (=> bs!835287 m!5228041))

(assert (=> d!1380174 d!1380378))

(declare-fun d!1380386 () Bool)

(declare-fun e!2802466 () Bool)

(assert (=> d!1380386 e!2802466))

(declare-fun res!1870250 () Bool)

(assert (=> d!1380386 (=> (not res!1870250) (not e!2802466))))

(declare-fun lt!1680460 () ListLongMap!2887)

(assert (=> d!1380386 (= res!1870250 (contains!13209 lt!1680460 (_1!28760 (tuple2!50933 hash!344 newBucket!178))))))

(declare-fun lt!1680458 () List!50665)

(assert (=> d!1380386 (= lt!1680460 (ListLongMap!2888 lt!1680458))))

(declare-fun lt!1680459 () Unit!91740)

(declare-fun lt!1680457 () Unit!91740)

(assert (=> d!1380386 (= lt!1680459 lt!1680457)))

(assert (=> d!1380386 (= (getValueByKey!1024 lt!1680458 (_1!28760 (tuple2!50933 hash!344 newBucket!178))) (Some!11043 (_2!28760 (tuple2!50933 hash!344 newBucket!178))))))

(assert (=> d!1380386 (= lt!1680457 (lemmaContainsTupThenGetReturnValue!632 lt!1680458 (_1!28760 (tuple2!50933 hash!344 newBucket!178)) (_2!28760 (tuple2!50933 hash!344 newBucket!178))))))

(assert (=> d!1380386 (= lt!1680458 (insertStrictlySorted!374 (toList!4255 lt!1679939) (_1!28760 (tuple2!50933 hash!344 newBucket!178)) (_2!28760 (tuple2!50933 hash!344 newBucket!178))))))

(assert (=> d!1380386 (= (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)) lt!1680460)))

(declare-fun b!4499035 () Bool)

(declare-fun res!1870249 () Bool)

(assert (=> b!4499035 (=> (not res!1870249) (not e!2802466))))

(assert (=> b!4499035 (= res!1870249 (= (getValueByKey!1024 (toList!4255 lt!1680460) (_1!28760 (tuple2!50933 hash!344 newBucket!178))) (Some!11043 (_2!28760 (tuple2!50933 hash!344 newBucket!178)))))))

(declare-fun b!4499036 () Bool)

(assert (=> b!4499036 (= e!2802466 (contains!13211 (toList!4255 lt!1680460) (tuple2!50933 hash!344 newBucket!178)))))

(assert (= (and d!1380386 res!1870250) b!4499035))

(assert (= (and b!4499035 res!1870249) b!4499036))

(declare-fun m!5228689 () Bool)

(assert (=> d!1380386 m!5228689))

(declare-fun m!5228691 () Bool)

(assert (=> d!1380386 m!5228691))

(declare-fun m!5228693 () Bool)

(assert (=> d!1380386 m!5228693))

(declare-fun m!5228695 () Bool)

(assert (=> d!1380386 m!5228695))

(declare-fun m!5228697 () Bool)

(assert (=> b!4499035 m!5228697))

(declare-fun m!5228699 () Bool)

(assert (=> b!4499036 m!5228699))

(assert (=> d!1380174 d!1380386))

(assert (=> d!1380174 d!1380216))

(declare-fun d!1380388 () Bool)

(declare-fun e!2802467 () Bool)

(assert (=> d!1380388 e!2802467))

(declare-fun res!1870251 () Bool)

(assert (=> d!1380388 (=> (not res!1870251) (not e!2802467))))

(declare-fun lt!1680461 () ListMap!3517)

(assert (=> d!1380388 (= res!1870251 (not (contains!13210 lt!1680461 key!3287)))))

(assert (=> d!1380388 (= lt!1680461 (ListMap!3518 (removePresrvNoDuplicatedKeys!106 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287)))))

(assert (=> d!1380388 (= (-!350 (extractMap!1180 (toList!4255 lt!1679939)) key!3287) lt!1680461)))

(declare-fun b!4499037 () Bool)

(assert (=> b!4499037 (= e!2802467 (= ((_ map and) (content!8256 (keys!17522 (extractMap!1180 (toList!4255 lt!1679939)))) ((_ map not) (store ((as const (Array K!11950 Bool)) false) key!3287 true))) (content!8256 (keys!17522 lt!1680461))))))

(assert (= (and d!1380388 res!1870251) b!4499037))

(declare-fun m!5228701 () Bool)

(assert (=> d!1380388 m!5228701))

(declare-fun m!5228703 () Bool)

(assert (=> d!1380388 m!5228703))

(assert (=> b!4499037 m!5227543))

(declare-fun m!5228705 () Bool)

(assert (=> b!4499037 m!5228705))

(declare-fun m!5228707 () Bool)

(assert (=> b!4499037 m!5228707))

(declare-fun m!5228709 () Bool)

(assert (=> b!4499037 m!5228709))

(assert (=> b!4499037 m!5228707))

(assert (=> b!4499037 m!5228705))

(declare-fun m!5228711 () Bool)

(assert (=> b!4499037 m!5228711))

(assert (=> b!4499037 m!5228009))

(assert (=> d!1380174 d!1380388))

(declare-fun bs!835288 () Bool)

(declare-fun d!1380390 () Bool)

(assert (= bs!835288 (and d!1380390 d!1380272)))

(declare-fun lambda!168648 () Int)

(assert (=> bs!835288 (= lambda!168648 lambda!168611)))

(declare-fun bs!835289 () Bool)

(assert (= bs!835289 (and d!1380390 d!1380202)))

(assert (=> bs!835289 (= lambda!168648 lambda!168536)))

(declare-fun bs!835290 () Bool)

(assert (= bs!835290 (and d!1380390 d!1380184)))

(assert (=> bs!835290 (= lambda!168648 lambda!168533)))

(declare-fun bs!835291 () Bool)

(assert (= bs!835291 (and d!1380390 d!1380180)))

(assert (=> bs!835291 (= lambda!168648 lambda!168532)))

(declare-fun bs!835292 () Bool)

(assert (= bs!835292 (and d!1380390 start!443976)))

(assert (=> bs!835292 (= lambda!168648 lambda!168485)))

(declare-fun bs!835293 () Bool)

(assert (= bs!835293 (and d!1380390 d!1380174)))

(assert (=> bs!835293 (= lambda!168648 lambda!168531)))

(declare-fun bs!835295 () Bool)

(assert (= bs!835295 (and d!1380390 d!1380096)))

(assert (=> bs!835295 (= lambda!168648 lambda!168499)))

(declare-fun bs!835296 () Bool)

(assert (= bs!835296 (and d!1380390 d!1380214)))

(assert (=> bs!835296 (= lambda!168648 lambda!168540)))

(declare-fun bs!835297 () Bool)

(assert (= bs!835297 (and d!1380390 d!1380124)))

(assert (=> bs!835297 (= lambda!168648 lambda!168519)))

(declare-fun bs!835298 () Bool)

(assert (= bs!835298 (and d!1380390 d!1380050)))

(assert (=> bs!835298 (= lambda!168648 lambda!168491)))

(declare-fun bs!835299 () Bool)

(assert (= bs!835299 (and d!1380390 d!1380216)))

(assert (=> bs!835299 (= lambda!168648 lambda!168541)))

(declare-fun bs!835300 () Bool)

(assert (= bs!835300 (and d!1380390 d!1380150)))

(assert (=> bs!835300 (not (= lambda!168648 lambda!168524))))

(declare-fun bs!835301 () Bool)

(assert (= bs!835301 (and d!1380390 d!1380258)))

(assert (=> bs!835301 (= lambda!168648 lambda!168580)))

(declare-fun bs!835302 () Bool)

(assert (= bs!835302 (and d!1380390 d!1380276)))

(assert (=> bs!835302 (= lambda!168648 lambda!168622)))

(declare-fun bs!835303 () Bool)

(assert (= bs!835303 (and d!1380390 d!1380212)))

(assert (=> bs!835303 (= lambda!168648 lambda!168537)))

(declare-fun lt!1680463 () ListMap!3517)

(assert (=> d!1380390 (invariantList!983 (toList!4256 lt!1680463))))

(declare-fun e!2802469 () ListMap!3517)

(assert (=> d!1380390 (= lt!1680463 e!2802469)))

(declare-fun c!766809 () Bool)

(assert (=> d!1380390 (= c!766809 ((_ is Cons!50541) (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)))))))

(assert (=> d!1380390 (forall!10173 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178))) lambda!168648)))

(assert (=> d!1380390 (= (extractMap!1180 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)))) lt!1680463)))

(declare-fun b!4499043 () Bool)

(assert (=> b!4499043 (= e!2802469 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178))))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)))))))))

(declare-fun b!4499044 () Bool)

(assert (=> b!4499044 (= e!2802469 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380390 c!766809) b!4499043))

(assert (= (and d!1380390 (not c!766809)) b!4499044))

(declare-fun m!5228735 () Bool)

(assert (=> d!1380390 m!5228735))

(declare-fun m!5228737 () Bool)

(assert (=> d!1380390 m!5228737))

(declare-fun m!5228741 () Bool)

(assert (=> b!4499043 m!5228741))

(assert (=> b!4499043 m!5228741))

(declare-fun m!5228743 () Bool)

(assert (=> b!4499043 m!5228743))

(assert (=> d!1380174 d!1380390))

(declare-fun d!1380402 () Bool)

(assert (=> d!1380402 (= (eq!581 (extractMap!1180 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)))) (-!350 (extractMap!1180 (toList!4255 lt!1679939)) key!3287)) (= (content!8255 (toList!4256 (extractMap!1180 (toList!4255 (+!1470 lt!1679939 (tuple2!50933 hash!344 newBucket!178)))))) (content!8255 (toList!4256 (-!350 (extractMap!1180 (toList!4255 lt!1679939)) key!3287)))))))

(declare-fun bs!835305 () Bool)

(assert (= bs!835305 d!1380402))

(declare-fun m!5228747 () Bool)

(assert (=> bs!835305 m!5228747))

(declare-fun m!5228751 () Bool)

(assert (=> bs!835305 m!5228751))

(assert (=> d!1380174 d!1380402))

(declare-fun d!1380406 () Bool)

(declare-fun res!1870261 () Bool)

(declare-fun e!2802478 () Bool)

(assert (=> d!1380406 (=> res!1870261 e!2802478)))

(assert (=> d!1380406 (= res!1870261 ((_ is Nil!50541) (toList!4255 lt!1679939)))))

(assert (=> d!1380406 (= (forall!10173 (toList!4255 lt!1679939) lambda!168531) e!2802478)))

(declare-fun b!4499055 () Bool)

(declare-fun e!2802479 () Bool)

(assert (=> b!4499055 (= e!2802478 e!2802479)))

(declare-fun res!1870262 () Bool)

(assert (=> b!4499055 (=> (not res!1870262) (not e!2802479))))

(assert (=> b!4499055 (= res!1870262 (dynLambda!21105 lambda!168531 (h!56360 (toList!4255 lt!1679939))))))

(declare-fun b!4499056 () Bool)

(assert (=> b!4499056 (= e!2802479 (forall!10173 (t!357623 (toList!4255 lt!1679939)) lambda!168531))))

(assert (= (and d!1380406 (not res!1870261)) b!4499055))

(assert (= (and b!4499055 res!1870262) b!4499056))

(declare-fun b_lambda!152211 () Bool)

(assert (=> (not b_lambda!152211) (not b!4499055)))

(declare-fun m!5228759 () Bool)

(assert (=> b!4499055 m!5228759))

(declare-fun m!5228761 () Bool)

(assert (=> b!4499056 m!5228761))

(assert (=> d!1380174 d!1380406))

(declare-fun d!1380410 () Bool)

(declare-fun c!766814 () Bool)

(assert (=> d!1380410 (= c!766814 ((_ is Nil!50543) (keys!17522 lt!1679928)))))

(declare-fun e!2802488 () (InoxSet K!11950))

(assert (=> d!1380410 (= (content!8256 (keys!17522 lt!1679928)) e!2802488)))

(declare-fun b!4499067 () Bool)

(assert (=> b!4499067 (= e!2802488 ((as const (Array K!11950 Bool)) false))))

(declare-fun b!4499068 () Bool)

(assert (=> b!4499068 (= e!2802488 ((_ map or) (store ((as const (Array K!11950 Bool)) false) (h!56364 (keys!17522 lt!1679928)) true) (content!8256 (t!357625 (keys!17522 lt!1679928)))))))

(assert (= (and d!1380410 c!766814) b!4499067))

(assert (= (and d!1380410 (not c!766814)) b!4499068))

(declare-fun m!5228769 () Bool)

(assert (=> b!4499068 m!5228769))

(declare-fun m!5228771 () Bool)

(assert (=> b!4499068 m!5228771))

(assert (=> b!4498579 d!1380410))

(assert (=> b!4498579 d!1380222))

(declare-fun d!1380414 () Bool)

(declare-fun c!766815 () Bool)

(assert (=> d!1380414 (= c!766815 ((_ is Nil!50543) (keys!17522 lt!1680118)))))

(declare-fun e!2802489 () (InoxSet K!11950))

(assert (=> d!1380414 (= (content!8256 (keys!17522 lt!1680118)) e!2802489)))

(declare-fun b!4499069 () Bool)

(assert (=> b!4499069 (= e!2802489 ((as const (Array K!11950 Bool)) false))))

(declare-fun b!4499070 () Bool)

(assert (=> b!4499070 (= e!2802489 ((_ map or) (store ((as const (Array K!11950 Bool)) false) (h!56364 (keys!17522 lt!1680118)) true) (content!8256 (t!357625 (keys!17522 lt!1680118)))))))

(assert (= (and d!1380414 c!766815) b!4499069))

(assert (= (and d!1380414 (not c!766815)) b!4499070))

(declare-fun m!5228773 () Bool)

(assert (=> b!4499070 m!5228773))

(declare-fun m!5228775 () Bool)

(assert (=> b!4499070 m!5228775))

(assert (=> b!4498579 d!1380414))

(declare-fun bs!835306 () Bool)

(declare-fun b!4499074 () Bool)

(assert (= bs!835306 (and b!4499074 b!4498894)))

(declare-fun lambda!168649 () Int)

(assert (=> bs!835306 (= (= (toList!4256 lt!1680118) (toList!4256 lt!1679928)) (= lambda!168649 lambda!168633))))

(declare-fun bs!835307 () Bool)

(assert (= bs!835307 (and b!4499074 b!4498999)))

(assert (=> bs!835307 (= (= (toList!4256 lt!1680118) (toList!4256 lt!1679938)) (= lambda!168649 lambda!168635))))

(declare-fun bs!835308 () Bool)

(assert (= bs!835308 (and b!4499074 b!4498893)))

(assert (=> bs!835308 (= (= (toList!4256 lt!1680118) (t!357622 (toList!4256 lt!1679928))) (= lambda!168649 lambda!168631))))

(declare-fun bs!835309 () Bool)

(assert (= bs!835309 (and b!4499074 b!4498660)))

(assert (=> bs!835309 (= (= (toList!4256 lt!1680118) (toList!4256 lt!1679928)) (= lambda!168649 lambda!168546))))

(declare-fun bs!835310 () Bool)

(assert (= bs!835310 (and b!4499074 b!4498898)))

(assert (=> bs!835310 (= (= (toList!4256 lt!1680118) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168649 lambda!168632))))

(assert (=> b!4499074 true))

(declare-fun bs!835311 () Bool)

(declare-fun b!4499075 () Bool)

(assert (= bs!835311 (and b!4499075 b!4498661)))

(declare-fun lambda!168650 () Int)

(assert (=> bs!835311 (= lambda!168650 lambda!168547)))

(declare-fun bs!835312 () Bool)

(assert (= bs!835312 (and b!4499075 b!4498890)))

(assert (=> bs!835312 (= lambda!168650 lambda!168634)))

(declare-fun bs!835313 () Bool)

(assert (= bs!835313 (and b!4499075 b!4499000)))

(assert (=> bs!835313 (= lambda!168650 lambda!168636)))

(declare-fun d!1380416 () Bool)

(declare-fun e!2802492 () Bool)

(assert (=> d!1380416 e!2802492))

(declare-fun res!1870271 () Bool)

(assert (=> d!1380416 (=> (not res!1870271) (not e!2802492))))

(declare-fun lt!1680466 () List!50667)

(assert (=> d!1380416 (= res!1870271 (noDuplicate!727 lt!1680466))))

(assert (=> d!1380416 (= lt!1680466 (getKeysList!431 (toList!4256 lt!1680118)))))

(assert (=> d!1380416 (= (keys!17522 lt!1680118) lt!1680466)))

(declare-fun b!4499073 () Bool)

(declare-fun res!1870273 () Bool)

(assert (=> b!4499073 (=> (not res!1870273) (not e!2802492))))

(assert (=> b!4499073 (= res!1870273 (= (length!310 lt!1680466) (length!311 (toList!4256 lt!1680118))))))

(declare-fun res!1870272 () Bool)

(assert (=> b!4499074 (=> (not res!1870272) (not e!2802492))))

(assert (=> b!4499074 (= res!1870272 (forall!10176 lt!1680466 lambda!168649))))

(assert (=> b!4499075 (= e!2802492 (= (content!8256 lt!1680466) (content!8256 (map!11100 (toList!4256 lt!1680118) lambda!168650))))))

(assert (= (and d!1380416 res!1870271) b!4499073))

(assert (= (and b!4499073 res!1870273) b!4499074))

(assert (= (and b!4499074 res!1870272) b!4499075))

(declare-fun m!5228779 () Bool)

(assert (=> d!1380416 m!5228779))

(declare-fun m!5228781 () Bool)

(assert (=> d!1380416 m!5228781))

(declare-fun m!5228783 () Bool)

(assert (=> b!4499073 m!5228783))

(declare-fun m!5228785 () Bool)

(assert (=> b!4499073 m!5228785))

(declare-fun m!5228787 () Bool)

(assert (=> b!4499074 m!5228787))

(declare-fun m!5228789 () Bool)

(assert (=> b!4499075 m!5228789))

(declare-fun m!5228791 () Bool)

(assert (=> b!4499075 m!5228791))

(assert (=> b!4499075 m!5228791))

(declare-fun m!5228793 () Bool)

(assert (=> b!4499075 m!5228793))

(assert (=> b!4498579 d!1380416))

(declare-fun d!1380420 () Bool)

(declare-fun lt!1680469 () Bool)

(assert (=> d!1380420 (= lt!1680469 (select (content!8256 (keys!17522 lt!1679938)) key!3287))))

(declare-fun e!2802493 () Bool)

(assert (=> d!1380420 (= lt!1680469 e!2802493)))

(declare-fun res!1870275 () Bool)

(assert (=> d!1380420 (=> (not res!1870275) (not e!2802493))))

(assert (=> d!1380420 (= res!1870275 ((_ is Cons!50543) (keys!17522 lt!1679938)))))

(assert (=> d!1380420 (= (contains!13213 (keys!17522 lt!1679938) key!3287) lt!1680469)))

(declare-fun b!4499076 () Bool)

(declare-fun e!2802494 () Bool)

(assert (=> b!4499076 (= e!2802493 e!2802494)))

(declare-fun res!1870274 () Bool)

(assert (=> b!4499076 (=> res!1870274 e!2802494)))

(assert (=> b!4499076 (= res!1870274 (= (h!56364 (keys!17522 lt!1679938)) key!3287))))

(declare-fun b!4499077 () Bool)

(assert (=> b!4499077 (= e!2802494 (contains!13213 (t!357625 (keys!17522 lt!1679938)) key!3287))))

(assert (= (and d!1380420 res!1870275) b!4499076))

(assert (= (and b!4499076 (not res!1870274)) b!4499077))

(assert (=> d!1380420 m!5227859))

(declare-fun m!5228799 () Bool)

(assert (=> d!1380420 m!5228799))

(declare-fun m!5228801 () Bool)

(assert (=> d!1380420 m!5228801))

(declare-fun m!5228803 () Bool)

(assert (=> b!4499077 m!5228803))

(assert (=> b!4498516 d!1380420))

(assert (=> b!4498516 d!1380358))

(declare-fun bs!835316 () Bool)

(declare-fun b!4499079 () Bool)

(assert (= bs!835316 (and b!4499079 b!4498894)))

(declare-fun lambda!168651 () Int)

(assert (=> bs!835316 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1679928)) (= lambda!168651 lambda!168633))))

(declare-fun bs!835317 () Bool)

(assert (= bs!835317 (and b!4499079 b!4498893)))

(assert (=> bs!835317 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (t!357622 (toList!4256 lt!1679928))) (= lambda!168651 lambda!168631))))

(declare-fun bs!835318 () Bool)

(assert (= bs!835318 (and b!4499079 b!4498660)))

(assert (=> bs!835318 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1679928)) (= lambda!168651 lambda!168546))))

(declare-fun bs!835319 () Bool)

(assert (= bs!835319 (and b!4499079 b!4498898)))

(assert (=> bs!835319 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168651 lambda!168632))))

(declare-fun bs!835320 () Bool)

(assert (= bs!835320 (and b!4499079 b!4499074)))

(assert (=> bs!835320 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1680118)) (= lambda!168651 lambda!168649))))

(declare-fun bs!835321 () Bool)

(assert (= bs!835321 (and b!4499079 b!4498999)))

(assert (=> bs!835321 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1679938)) (= lambda!168651 lambda!168635))))

(assert (=> b!4499079 true))

(declare-fun bs!835322 () Bool)

(declare-fun b!4499080 () Bool)

(assert (= bs!835322 (and b!4499080 b!4498661)))

(declare-fun lambda!168652 () Int)

(assert (=> bs!835322 (= lambda!168652 lambda!168547)))

(declare-fun bs!835323 () Bool)

(assert (= bs!835323 (and b!4499080 b!4498890)))

(assert (=> bs!835323 (= lambda!168652 lambda!168634)))

(declare-fun bs!835324 () Bool)

(assert (= bs!835324 (and b!4499080 b!4499000)))

(assert (=> bs!835324 (= lambda!168652 lambda!168636)))

(declare-fun bs!835325 () Bool)

(assert (= bs!835325 (and b!4499080 b!4499075)))

(assert (=> bs!835325 (= lambda!168652 lambda!168650)))

(declare-fun d!1380424 () Bool)

(declare-fun e!2802495 () Bool)

(assert (=> d!1380424 e!2802495))

(declare-fun res!1870276 () Bool)

(assert (=> d!1380424 (=> (not res!1870276) (not e!2802495))))

(declare-fun lt!1680471 () List!50667)

(assert (=> d!1380424 (= res!1870276 (noDuplicate!727 lt!1680471))))

(assert (=> d!1380424 (= lt!1680471 (getKeysList!431 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))

(assert (=> d!1380424 (= (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lt!1680471)))

(declare-fun b!4499078 () Bool)

(declare-fun res!1870278 () Bool)

(assert (=> b!4499078 (=> (not res!1870278) (not e!2802495))))

(assert (=> b!4499078 (= res!1870278 (= (length!310 lt!1680471) (length!311 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))))

(declare-fun res!1870277 () Bool)

(assert (=> b!4499079 (=> (not res!1870277) (not e!2802495))))

(assert (=> b!4499079 (= res!1870277 (forall!10176 lt!1680471 lambda!168651))))

(assert (=> b!4499080 (= e!2802495 (= (content!8256 lt!1680471) (content!8256 (map!11100 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lambda!168652))))))

(assert (= (and d!1380424 res!1870276) b!4499078))

(assert (= (and b!4499078 res!1870278) b!4499079))

(assert (= (and b!4499079 res!1870277) b!4499080))

(declare-fun m!5228817 () Bool)

(assert (=> d!1380424 m!5228817))

(assert (=> d!1380424 m!5228161))

(declare-fun m!5228819 () Bool)

(assert (=> b!4499078 m!5228819))

(declare-fun m!5228821 () Bool)

(assert (=> b!4499078 m!5228821))

(declare-fun m!5228823 () Bool)

(assert (=> b!4499079 m!5228823))

(declare-fun m!5228825 () Bool)

(assert (=> b!4499080 m!5228825))

(declare-fun m!5228827 () Bool)

(assert (=> b!4499080 m!5228827))

(assert (=> b!4499080 m!5228827))

(declare-fun m!5228829 () Bool)

(assert (=> b!4499080 m!5228829))

(assert (=> b!4498633 d!1380424))

(declare-fun d!1380432 () Bool)

(assert (=> d!1380432 (isDefined!8331 (getValueByKey!1024 (toList!4255 lm!1477) lt!1679927))))

(declare-fun lt!1680477 () Unit!91740)

(declare-fun choose!29119 (List!50665 (_ BitVec 64)) Unit!91740)

(assert (=> d!1380432 (= lt!1680477 (choose!29119 (toList!4255 lm!1477) lt!1679927))))

(declare-fun e!2802507 () Bool)

(assert (=> d!1380432 e!2802507))

(declare-fun res!1870291 () Bool)

(assert (=> d!1380432 (=> (not res!1870291) (not e!2802507))))

(assert (=> d!1380432 (= res!1870291 (isStrictlySorted!397 (toList!4255 lm!1477)))))

(assert (=> d!1380432 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lm!1477) lt!1679927) lt!1680477)))

(declare-fun b!4499099 () Bool)

(assert (=> b!4499099 (= e!2802507 (containsKey!1679 (toList!4255 lm!1477) lt!1679927))))

(assert (= (and d!1380432 res!1870291) b!4499099))

(assert (=> d!1380432 m!5227709))

(assert (=> d!1380432 m!5227709))

(assert (=> d!1380432 m!5227711))

(declare-fun m!5228851 () Bool)

(assert (=> d!1380432 m!5228851))

(assert (=> d!1380432 m!5227641))

(assert (=> b!4499099 m!5227705))

(assert (=> b!4498387 d!1380432))

(declare-fun d!1380438 () Bool)

(declare-fun isEmpty!28601 (Option!11044) Bool)

(assert (=> d!1380438 (= (isDefined!8331 (getValueByKey!1024 (toList!4255 lm!1477) lt!1679927)) (not (isEmpty!28601 (getValueByKey!1024 (toList!4255 lm!1477) lt!1679927))))))

(declare-fun bs!835332 () Bool)

(assert (= bs!835332 d!1380438))

(assert (=> bs!835332 m!5227709))

(declare-fun m!5228869 () Bool)

(assert (=> bs!835332 m!5228869))

(assert (=> b!4498387 d!1380438))

(declare-fun d!1380444 () Bool)

(declare-fun c!766820 () Bool)

(assert (=> d!1380444 (= c!766820 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (= (_1!28760 (h!56360 (toList!4255 lm!1477))) lt!1679927)))))

(declare-fun e!2802510 () Option!11044)

(assert (=> d!1380444 (= (getValueByKey!1024 (toList!4255 lm!1477) lt!1679927) e!2802510)))

(declare-fun b!4499108 () Bool)

(declare-fun e!2802511 () Option!11044)

(assert (=> b!4499108 (= e!2802511 None!11043)))

(declare-fun b!4499106 () Bool)

(assert (=> b!4499106 (= e!2802510 e!2802511)))

(declare-fun c!766821 () Bool)

(assert (=> b!4499106 (= c!766821 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (not (= (_1!28760 (h!56360 (toList!4255 lm!1477))) lt!1679927))))))

(declare-fun b!4499107 () Bool)

(assert (=> b!4499107 (= e!2802511 (getValueByKey!1024 (t!357623 (toList!4255 lm!1477)) lt!1679927))))

(declare-fun b!4499105 () Bool)

(assert (=> b!4499105 (= e!2802510 (Some!11043 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))

(assert (= (and d!1380444 c!766820) b!4499105))

(assert (= (and d!1380444 (not c!766820)) b!4499106))

(assert (= (and b!4499106 c!766821) b!4499107))

(assert (= (and b!4499106 (not c!766821)) b!4499108))

(declare-fun m!5228871 () Bool)

(assert (=> b!4499107 m!5228871))

(assert (=> b!4498387 d!1380444))

(declare-fun d!1380446 () Bool)

(declare-fun e!2802513 () Bool)

(assert (=> d!1380446 e!2802513))

(declare-fun res!1870295 () Bool)

(assert (=> d!1380446 (=> res!1870295 e!2802513)))

(declare-fun lt!1680479 () Bool)

(assert (=> d!1380446 (= res!1870295 (not lt!1680479))))

(declare-fun lt!1680480 () Bool)

(assert (=> d!1380446 (= lt!1680479 lt!1680480)))

(declare-fun lt!1680482 () Unit!91740)

(declare-fun e!2802512 () Unit!91740)

(assert (=> d!1380446 (= lt!1680482 e!2802512)))

(declare-fun c!766822 () Bool)

(assert (=> d!1380446 (= c!766822 lt!1680480)))

(assert (=> d!1380446 (= lt!1680480 (containsKey!1679 (toList!4255 lt!1680157) (_1!28760 lt!1679932)))))

(assert (=> d!1380446 (= (contains!13209 lt!1680157 (_1!28760 lt!1679932)) lt!1680479)))

(declare-fun b!4499109 () Bool)

(declare-fun lt!1680481 () Unit!91740)

(assert (=> b!4499109 (= e!2802512 lt!1680481)))

(assert (=> b!4499109 (= lt!1680481 (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lt!1680157) (_1!28760 lt!1679932)))))

(assert (=> b!4499109 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680157) (_1!28760 lt!1679932)))))

(declare-fun b!4499110 () Bool)

(declare-fun Unit!91823 () Unit!91740)

(assert (=> b!4499110 (= e!2802512 Unit!91823)))

(declare-fun b!4499111 () Bool)

(assert (=> b!4499111 (= e!2802513 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680157) (_1!28760 lt!1679932))))))

(assert (= (and d!1380446 c!766822) b!4499109))

(assert (= (and d!1380446 (not c!766822)) b!4499110))

(assert (= (and d!1380446 (not res!1870295)) b!4499111))

(declare-fun m!5228875 () Bool)

(assert (=> d!1380446 m!5228875))

(declare-fun m!5228881 () Bool)

(assert (=> b!4499109 m!5228881))

(assert (=> b!4499109 m!5228121))

(assert (=> b!4499109 m!5228121))

(declare-fun m!5228891 () Bool)

(assert (=> b!4499109 m!5228891))

(assert (=> b!4499111 m!5228121))

(assert (=> b!4499111 m!5228121))

(assert (=> b!4499111 m!5228891))

(assert (=> d!1380206 d!1380446))

(declare-fun d!1380450 () Bool)

(declare-fun c!766823 () Bool)

(assert (=> d!1380450 (= c!766823 (and ((_ is Cons!50541) lt!1680155) (= (_1!28760 (h!56360 lt!1680155)) (_1!28760 lt!1679932))))))

(declare-fun e!2802514 () Option!11044)

(assert (=> d!1380450 (= (getValueByKey!1024 lt!1680155 (_1!28760 lt!1679932)) e!2802514)))

(declare-fun b!4499115 () Bool)

(declare-fun e!2802515 () Option!11044)

(assert (=> b!4499115 (= e!2802515 None!11043)))

(declare-fun b!4499113 () Bool)

(assert (=> b!4499113 (= e!2802514 e!2802515)))

(declare-fun c!766824 () Bool)

(assert (=> b!4499113 (= c!766824 (and ((_ is Cons!50541) lt!1680155) (not (= (_1!28760 (h!56360 lt!1680155)) (_1!28760 lt!1679932)))))))

(declare-fun b!4499114 () Bool)

(assert (=> b!4499114 (= e!2802515 (getValueByKey!1024 (t!357623 lt!1680155) (_1!28760 lt!1679932)))))

(declare-fun b!4499112 () Bool)

(assert (=> b!4499112 (= e!2802514 (Some!11043 (_2!28760 (h!56360 lt!1680155))))))

(assert (= (and d!1380450 c!766823) b!4499112))

(assert (= (and d!1380450 (not c!766823)) b!4499113))

(assert (= (and b!4499113 c!766824) b!4499114))

(assert (= (and b!4499113 (not c!766824)) b!4499115))

(declare-fun m!5228895 () Bool)

(assert (=> b!4499114 m!5228895))

(assert (=> d!1380206 d!1380450))

(declare-fun d!1380452 () Bool)

(assert (=> d!1380452 (= (getValueByKey!1024 lt!1680155 (_1!28760 lt!1679932)) (Some!11043 (_2!28760 lt!1679932)))))

(declare-fun lt!1680483 () Unit!91740)

(assert (=> d!1380452 (= lt!1680483 (choose!29116 lt!1680155 (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(declare-fun e!2802516 () Bool)

(assert (=> d!1380452 e!2802516))

(declare-fun res!1870296 () Bool)

(assert (=> d!1380452 (=> (not res!1870296) (not e!2802516))))

(assert (=> d!1380452 (= res!1870296 (isStrictlySorted!397 lt!1680155))))

(assert (=> d!1380452 (= (lemmaContainsTupThenGetReturnValue!632 lt!1680155 (_1!28760 lt!1679932) (_2!28760 lt!1679932)) lt!1680483)))

(declare-fun b!4499116 () Bool)

(declare-fun res!1870297 () Bool)

(assert (=> b!4499116 (=> (not res!1870297) (not e!2802516))))

(assert (=> b!4499116 (= res!1870297 (containsKey!1679 lt!1680155 (_1!28760 lt!1679932)))))

(declare-fun b!4499117 () Bool)

(assert (=> b!4499117 (= e!2802516 (contains!13211 lt!1680155 (tuple2!50933 (_1!28760 lt!1679932) (_2!28760 lt!1679932))))))

(assert (= (and d!1380452 res!1870296) b!4499116))

(assert (= (and b!4499116 res!1870297) b!4499117))

(assert (=> d!1380452 m!5228115))

(declare-fun m!5228897 () Bool)

(assert (=> d!1380452 m!5228897))

(declare-fun m!5228899 () Bool)

(assert (=> d!1380452 m!5228899))

(declare-fun m!5228901 () Bool)

(assert (=> b!4499116 m!5228901))

(declare-fun m!5228903 () Bool)

(assert (=> b!4499117 m!5228903))

(assert (=> d!1380206 d!1380452))

(declare-fun b!4499118 () Bool)

(declare-fun res!1870298 () Bool)

(declare-fun e!2802521 () Bool)

(assert (=> b!4499118 (=> (not res!1870298) (not e!2802521))))

(declare-fun lt!1680484 () List!50665)

(assert (=> b!4499118 (= res!1870298 (containsKey!1679 lt!1680484 (_1!28760 lt!1679932)))))

(declare-fun bm!313129 () Bool)

(declare-fun call!313136 () List!50665)

(declare-fun call!313135 () List!50665)

(assert (=> bm!313129 (= call!313136 call!313135)))

(declare-fun call!313134 () List!50665)

(declare-fun e!2802520 () List!50665)

(declare-fun bm!313130 () Bool)

(declare-fun c!766828 () Bool)

(assert (=> bm!313130 (= call!313134 ($colon$colon!894 e!2802520 (ite c!766828 (h!56360 (toList!4255 lt!1679935)) (tuple2!50933 (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))))

(declare-fun c!766827 () Bool)

(assert (=> bm!313130 (= c!766827 c!766828)))

(declare-fun d!1380454 () Bool)

(assert (=> d!1380454 e!2802521))

(declare-fun res!1870299 () Bool)

(assert (=> d!1380454 (=> (not res!1870299) (not e!2802521))))

(assert (=> d!1380454 (= res!1870299 (isStrictlySorted!397 lt!1680484))))

(declare-fun e!2802519 () List!50665)

(assert (=> d!1380454 (= lt!1680484 e!2802519)))

(assert (=> d!1380454 (= c!766828 (and ((_ is Cons!50541) (toList!4255 lt!1679935)) (bvslt (_1!28760 (h!56360 (toList!4255 lt!1679935))) (_1!28760 lt!1679932))))))

(assert (=> d!1380454 (isStrictlySorted!397 (toList!4255 lt!1679935))))

(assert (=> d!1380454 (= (insertStrictlySorted!374 (toList!4255 lt!1679935) (_1!28760 lt!1679932) (_2!28760 lt!1679932)) lt!1680484)))

(declare-fun b!4499119 () Bool)

(assert (=> b!4499119 (= e!2802520 (insertStrictlySorted!374 (t!357623 (toList!4255 lt!1679935)) (_1!28760 lt!1679932) (_2!28760 lt!1679932)))))

(declare-fun b!4499120 () Bool)

(declare-fun e!2802517 () List!50665)

(assert (=> b!4499120 (= e!2802519 e!2802517)))

(declare-fun c!766826 () Bool)

(assert (=> b!4499120 (= c!766826 (and ((_ is Cons!50541) (toList!4255 lt!1679935)) (= (_1!28760 (h!56360 (toList!4255 lt!1679935))) (_1!28760 lt!1679932))))))

(declare-fun b!4499121 () Bool)

(assert (=> b!4499121 (= e!2802519 call!313134)))

(declare-fun b!4499122 () Bool)

(declare-fun e!2802518 () List!50665)

(assert (=> b!4499122 (= e!2802518 call!313136)))

(declare-fun b!4499123 () Bool)

(assert (=> b!4499123 (= e!2802518 call!313136)))

(declare-fun c!766825 () Bool)

(declare-fun b!4499124 () Bool)

(assert (=> b!4499124 (= e!2802520 (ite c!766826 (t!357623 (toList!4255 lt!1679935)) (ite c!766825 (Cons!50541 (h!56360 (toList!4255 lt!1679935)) (t!357623 (toList!4255 lt!1679935))) Nil!50541)))))

(declare-fun b!4499125 () Bool)

(assert (=> b!4499125 (= e!2802521 (contains!13211 lt!1680484 (tuple2!50933 (_1!28760 lt!1679932) (_2!28760 lt!1679932))))))

(declare-fun bm!313131 () Bool)

(assert (=> bm!313131 (= call!313135 call!313134)))

(declare-fun b!4499126 () Bool)

(assert (=> b!4499126 (= c!766825 (and ((_ is Cons!50541) (toList!4255 lt!1679935)) (bvsgt (_1!28760 (h!56360 (toList!4255 lt!1679935))) (_1!28760 lt!1679932))))))

(assert (=> b!4499126 (= e!2802517 e!2802518)))

(declare-fun b!4499127 () Bool)

(assert (=> b!4499127 (= e!2802517 call!313135)))

(assert (= (and d!1380454 c!766828) b!4499121))

(assert (= (and d!1380454 (not c!766828)) b!4499120))

(assert (= (and b!4499120 c!766826) b!4499127))

(assert (= (and b!4499120 (not c!766826)) b!4499126))

(assert (= (and b!4499126 c!766825) b!4499122))

(assert (= (and b!4499126 (not c!766825)) b!4499123))

(assert (= (or b!4499122 b!4499123) bm!313129))

(assert (= (or b!4499127 bm!313129) bm!313131))

(assert (= (or b!4499121 bm!313131) bm!313130))

(assert (= (and bm!313130 c!766827) b!4499119))

(assert (= (and bm!313130 (not c!766827)) b!4499124))

(assert (= (and d!1380454 res!1870299) b!4499118))

(assert (= (and b!4499118 res!1870298) b!4499125))

(declare-fun m!5228905 () Bool)

(assert (=> b!4499118 m!5228905))

(declare-fun m!5228907 () Bool)

(assert (=> b!4499119 m!5228907))

(declare-fun m!5228909 () Bool)

(assert (=> d!1380454 m!5228909))

(declare-fun m!5228911 () Bool)

(assert (=> d!1380454 m!5228911))

(declare-fun m!5228913 () Bool)

(assert (=> bm!313130 m!5228913))

(declare-fun m!5228915 () Bool)

(assert (=> b!4499125 m!5228915))

(assert (=> d!1380206 d!1380454))

(declare-fun d!1380456 () Bool)

(assert (=> d!1380456 (= (invariantList!983 (toList!4256 lt!1680178)) (noDuplicatedKeys!242 (toList!4256 lt!1680178)))))

(declare-fun bs!835339 () Bool)

(assert (= bs!835339 d!1380456))

(declare-fun m!5228917 () Bool)

(assert (=> bs!835339 m!5228917))

(assert (=> d!1380216 d!1380456))

(declare-fun d!1380458 () Bool)

(declare-fun res!1870300 () Bool)

(declare-fun e!2802522 () Bool)

(assert (=> d!1380458 (=> res!1870300 e!2802522)))

(assert (=> d!1380458 (= res!1870300 ((_ is Nil!50541) (toList!4255 lt!1679939)))))

(assert (=> d!1380458 (= (forall!10173 (toList!4255 lt!1679939) lambda!168541) e!2802522)))

(declare-fun b!4499128 () Bool)

(declare-fun e!2802523 () Bool)

(assert (=> b!4499128 (= e!2802522 e!2802523)))

(declare-fun res!1870301 () Bool)

(assert (=> b!4499128 (=> (not res!1870301) (not e!2802523))))

(assert (=> b!4499128 (= res!1870301 (dynLambda!21105 lambda!168541 (h!56360 (toList!4255 lt!1679939))))))

(declare-fun b!4499129 () Bool)

(assert (=> b!4499129 (= e!2802523 (forall!10173 (t!357623 (toList!4255 lt!1679939)) lambda!168541))))

(assert (= (and d!1380458 (not res!1870300)) b!4499128))

(assert (= (and b!4499128 res!1870301) b!4499129))

(declare-fun b_lambda!152215 () Bool)

(assert (=> (not b_lambda!152215) (not b!4499128)))

(declare-fun m!5228919 () Bool)

(assert (=> b!4499128 m!5228919))

(declare-fun m!5228921 () Bool)

(assert (=> b!4499129 m!5228921))

(assert (=> d!1380216 d!1380458))

(assert (=> b!4498523 d!1380420))

(assert (=> b!4498523 d!1380358))

(declare-fun d!1380460 () Bool)

(assert (=> d!1380460 (dynLambda!21105 lambda!168485 lt!1679930)))

(assert (=> d!1380460 true))

(declare-fun _$7!1774 () Unit!91740)

(assert (=> d!1380460 (= (choose!29100 (toList!4255 lm!1477) lambda!168485 lt!1679930) _$7!1774)))

(declare-fun b_lambda!152217 () Bool)

(assert (=> (not b_lambda!152217) (not d!1380460)))

(declare-fun bs!835340 () Bool)

(assert (= bs!835340 d!1380460))

(assert (=> bs!835340 m!5227677))

(assert (=> d!1380058 d!1380460))

(assert (=> d!1380058 d!1380152))

(declare-fun d!1380462 () Bool)

(declare-fun res!1870302 () Bool)

(declare-fun e!2802524 () Bool)

(assert (=> d!1380462 (=> res!1870302 e!2802524)))

(assert (=> d!1380462 (= res!1870302 (not ((_ is Cons!50540) (t!357622 newBucket!178))))))

(assert (=> d!1380462 (= (noDuplicateKeys!1124 (t!357622 newBucket!178)) e!2802524)))

(declare-fun b!4499130 () Bool)

(declare-fun e!2802525 () Bool)

(assert (=> b!4499130 (= e!2802524 e!2802525)))

(declare-fun res!1870303 () Bool)

(assert (=> b!4499130 (=> (not res!1870303) (not e!2802525))))

(assert (=> b!4499130 (= res!1870303 (not (containsKey!1676 (t!357622 (t!357622 newBucket!178)) (_1!28759 (h!56359 (t!357622 newBucket!178))))))))

(declare-fun b!4499131 () Bool)

(assert (=> b!4499131 (= e!2802525 (noDuplicateKeys!1124 (t!357622 (t!357622 newBucket!178))))))

(assert (= (and d!1380462 (not res!1870302)) b!4499130))

(assert (= (and b!4499130 res!1870303) b!4499131))

(declare-fun m!5228923 () Bool)

(assert (=> b!4499130 m!5228923))

(declare-fun m!5228925 () Bool)

(assert (=> b!4499131 m!5228925))

(assert (=> b!4498342 d!1380462))

(assert (=> b!4498520 d!1380366))

(declare-fun d!1380464 () Bool)

(assert (=> d!1380464 (containsKey!1680 (toList!4256 lt!1679938) key!3287)))

(declare-fun lt!1680485 () Unit!91740)

(assert (=> d!1380464 (= lt!1680485 (choose!29112 (toList!4256 lt!1679938) key!3287))))

(assert (=> d!1380464 (invariantList!983 (toList!4256 lt!1679938))))

(assert (=> d!1380464 (= (lemmaInGetKeysListThenContainsKey!430 (toList!4256 lt!1679938) key!3287) lt!1680485)))

(declare-fun bs!835341 () Bool)

(assert (= bs!835341 d!1380464))

(assert (=> bs!835341 m!5227863))

(declare-fun m!5228927 () Bool)

(assert (=> bs!835341 m!5228927))

(declare-fun m!5228929 () Bool)

(assert (=> bs!835341 m!5228929))

(assert (=> b!4498520 d!1380464))

(declare-fun bs!835342 () Bool)

(declare-fun b!4499135 () Bool)

(assert (= bs!835342 (and b!4499135 b!4498894)))

(declare-fun lambda!168659 () Int)

(assert (=> bs!835342 (= (= (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (toList!4256 lt!1679928)) (= lambda!168659 lambda!168633))))

(declare-fun bs!835343 () Bool)

(assert (= bs!835343 (and b!4499135 b!4498893)))

(assert (=> bs!835343 (= (= (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 lt!1679928))) (= lambda!168659 lambda!168631))))

(declare-fun bs!835344 () Bool)

(assert (= bs!835344 (and b!4499135 b!4498898)))

(assert (=> bs!835344 (= (= (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168659 lambda!168632))))

(declare-fun bs!835345 () Bool)

(assert (= bs!835345 (and b!4499135 b!4499074)))

(assert (=> bs!835345 (= (= (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (toList!4256 lt!1680118)) (= lambda!168659 lambda!168649))))

(declare-fun bs!835346 () Bool)

(assert (= bs!835346 (and b!4499135 b!4498999)))

(assert (=> bs!835346 (= (= (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (toList!4256 lt!1679938)) (= lambda!168659 lambda!168635))))

(declare-fun bs!835347 () Bool)

(assert (= bs!835347 (and b!4499135 b!4498660)))

(assert (=> bs!835347 (= (= (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (toList!4256 lt!1679928)) (= lambda!168659 lambda!168546))))

(declare-fun bs!835348 () Bool)

(assert (= bs!835348 (and b!4499135 b!4499079)))

(assert (=> bs!835348 (= (= (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168659 lambda!168651))))

(assert (=> b!4499135 true))

(declare-fun bs!835349 () Bool)

(declare-fun b!4499139 () Bool)

(assert (= bs!835349 (and b!4499139 b!4498894)))

(declare-fun lambda!168660 () Int)

(assert (=> bs!835349 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (toList!4256 lt!1679928)) (= lambda!168660 lambda!168633))))

(declare-fun bs!835350 () Bool)

(assert (= bs!835350 (and b!4499139 b!4498893)))

(assert (=> bs!835350 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (t!357622 (toList!4256 lt!1679928))) (= lambda!168660 lambda!168631))))

(declare-fun bs!835351 () Bool)

(assert (= bs!835351 (and b!4499139 b!4498898)))

(assert (=> bs!835351 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168660 lambda!168632))))

(declare-fun bs!835352 () Bool)

(assert (= bs!835352 (and b!4499139 b!4499135)))

(assert (=> bs!835352 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (= lambda!168660 lambda!168659))))

(declare-fun bs!835353 () Bool)

(assert (= bs!835353 (and b!4499139 b!4499074)))

(assert (=> bs!835353 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (toList!4256 lt!1680118)) (= lambda!168660 lambda!168649))))

(declare-fun bs!835354 () Bool)

(assert (= bs!835354 (and b!4499139 b!4498999)))

(assert (=> bs!835354 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (toList!4256 lt!1679938)) (= lambda!168660 lambda!168635))))

(declare-fun bs!835355 () Bool)

(assert (= bs!835355 (and b!4499139 b!4498660)))

(assert (=> bs!835355 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (toList!4256 lt!1679928)) (= lambda!168660 lambda!168546))))

(declare-fun bs!835356 () Bool)

(assert (= bs!835356 (and b!4499139 b!4499079)))

(assert (=> bs!835356 (= (= (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168660 lambda!168651))))

(assert (=> b!4499139 true))

(declare-fun bs!835357 () Bool)

(declare-fun b!4499136 () Bool)

(assert (= bs!835357 (and b!4499136 b!4498894)))

(declare-fun lambda!168661 () Int)

(assert (=> bs!835357 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1679928)) (= lambda!168661 lambda!168633))))

(declare-fun bs!835358 () Bool)

(assert (= bs!835358 (and b!4499136 b!4498893)))

(assert (=> bs!835358 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (t!357622 (toList!4256 lt!1679928))) (= lambda!168661 lambda!168631))))

(declare-fun bs!835359 () Bool)

(assert (= bs!835359 (and b!4499136 b!4498898)))

(assert (=> bs!835359 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168661 lambda!168632))))

(declare-fun bs!835360 () Bool)

(assert (= bs!835360 (and b!4499136 b!4499139)))

(assert (=> bs!835360 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))) (= lambda!168661 lambda!168660))))

(declare-fun bs!835361 () Bool)

(assert (= bs!835361 (and b!4499136 b!4499135)))

(assert (=> bs!835361 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (= lambda!168661 lambda!168659))))

(declare-fun bs!835362 () Bool)

(assert (= bs!835362 (and b!4499136 b!4499074)))

(assert (=> bs!835362 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1680118)) (= lambda!168661 lambda!168649))))

(declare-fun bs!835363 () Bool)

(assert (= bs!835363 (and b!4499136 b!4498999)))

(assert (=> bs!835363 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1679938)) (= lambda!168661 lambda!168635))))

(declare-fun bs!835364 () Bool)

(assert (= bs!835364 (and b!4499136 b!4498660)))

(assert (=> bs!835364 (= (= (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (toList!4256 lt!1679928)) (= lambda!168661 lambda!168546))))

(declare-fun bs!835365 () Bool)

(assert (= bs!835365 (and b!4499136 b!4499079)))

(assert (=> bs!835365 (= lambda!168661 lambda!168651)))

(assert (=> b!4499136 true))

(declare-fun bs!835366 () Bool)

(declare-fun b!4499132 () Bool)

(assert (= bs!835366 (and b!4499132 b!4498890)))

(declare-fun lambda!168662 () Int)

(assert (=> bs!835366 (= lambda!168662 lambda!168634)))

(declare-fun bs!835367 () Bool)

(assert (= bs!835367 (and b!4499132 b!4499075)))

(assert (=> bs!835367 (= lambda!168662 lambda!168650)))

(declare-fun bs!835368 () Bool)

(assert (= bs!835368 (and b!4499132 b!4498661)))

(assert (=> bs!835368 (= lambda!168662 lambda!168547)))

(declare-fun bs!835369 () Bool)

(assert (= bs!835369 (and b!4499132 b!4499000)))

(assert (=> bs!835369 (= lambda!168662 lambda!168636)))

(declare-fun bs!835370 () Bool)

(assert (= bs!835370 (and b!4499132 b!4499080)))

(assert (=> bs!835370 (= lambda!168662 lambda!168652)))

(declare-fun e!2802527 () Bool)

(declare-fun lt!1680486 () List!50667)

(assert (=> b!4499132 (= e!2802527 (= (content!8256 lt!1680486) (content!8256 (map!11100 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lambda!168662))))))

(declare-fun b!4499133 () Bool)

(declare-fun e!2802526 () List!50667)

(assert (=> b!4499133 (= e!2802526 Nil!50543)))

(declare-fun d!1380466 () Bool)

(assert (=> d!1380466 e!2802527))

(declare-fun res!1870306 () Bool)

(assert (=> d!1380466 (=> (not res!1870306) (not e!2802527))))

(assert (=> d!1380466 (= res!1870306 (noDuplicate!727 lt!1680486))))

(assert (=> d!1380466 (= lt!1680486 e!2802526)))

(declare-fun c!766830 () Bool)

(assert (=> d!1380466 (= c!766830 ((_ is Cons!50540) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))

(assert (=> d!1380466 (invariantList!983 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380466 (= (getKeysList!431 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) lt!1680486)))

(declare-fun b!4499134 () Bool)

(declare-fun e!2802528 () Unit!91740)

(declare-fun Unit!91828 () Unit!91740)

(assert (=> b!4499134 (= e!2802528 Unit!91828)))

(assert (=> b!4499135 false))

(declare-fun lt!1680487 () Unit!91740)

(assert (=> b!4499135 (= lt!1680487 (forallContained!2430 (getKeysList!431 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) lambda!168659 (_1!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))))

(declare-fun Unit!91829 () Unit!91740)

(assert (=> b!4499135 (= e!2802528 Unit!91829)))

(declare-fun res!1870305 () Bool)

(assert (=> b!4499136 (=> (not res!1870305) (not e!2802527))))

(assert (=> b!4499136 (= res!1870305 (forall!10176 lt!1680486 lambda!168661))))

(declare-fun b!4499137 () Bool)

(declare-fun e!2802529 () Unit!91740)

(declare-fun Unit!91830 () Unit!91740)

(assert (=> b!4499137 (= e!2802529 Unit!91830)))

(declare-fun b!4499138 () Bool)

(assert (=> b!4499138 false))

(declare-fun Unit!91831 () Unit!91740)

(assert (=> b!4499138 (= e!2802529 Unit!91831)))

(assert (=> b!4499139 (= e!2802526 (Cons!50543 (_1!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (getKeysList!431 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))))

(declare-fun c!766831 () Bool)

(assert (=> b!4499139 (= c!766831 (containsKey!1680 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (_1!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))))

(declare-fun lt!1680491 () Unit!91740)

(assert (=> b!4499139 (= lt!1680491 e!2802529)))

(declare-fun c!766829 () Bool)

(assert (=> b!4499139 (= c!766829 (contains!13213 (getKeysList!431 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (_1!28759 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))))

(declare-fun lt!1680492 () Unit!91740)

(assert (=> b!4499139 (= lt!1680492 e!2802528)))

(declare-fun lt!1680490 () List!50667)

(assert (=> b!4499139 (= lt!1680490 (getKeysList!431 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))))

(declare-fun lt!1680489 () Unit!91740)

(assert (=> b!4499139 (= lt!1680489 (lemmaForallContainsAddHeadPreserves!148 (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) lt!1680490 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))))

(assert (=> b!4499139 (forall!10176 lt!1680490 lambda!168660)))

(declare-fun lt!1680488 () Unit!91740)

(assert (=> b!4499139 (= lt!1680488 lt!1680489)))

(declare-fun b!4499140 () Bool)

(declare-fun res!1870304 () Bool)

(assert (=> b!4499140 (=> (not res!1870304) (not e!2802527))))

(assert (=> b!4499140 (= res!1870304 (= (length!310 lt!1680486) (length!311 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))))

(assert (= (and d!1380466 c!766830) b!4499139))

(assert (= (and d!1380466 (not c!766830)) b!4499133))

(assert (= (and b!4499139 c!766831) b!4499138))

(assert (= (and b!4499139 (not c!766831)) b!4499137))

(assert (= (and b!4499139 c!766829) b!4499135))

(assert (= (and b!4499139 (not c!766829)) b!4499134))

(assert (= (and d!1380466 res!1870306) b!4499140))

(assert (= (and b!4499140 res!1870304) b!4499136))

(assert (= (and b!4499136 res!1870305) b!4499132))

(declare-fun m!5228931 () Bool)

(assert (=> b!4499132 m!5228931))

(declare-fun m!5228933 () Bool)

(assert (=> b!4499132 m!5228933))

(assert (=> b!4499132 m!5228933))

(declare-fun m!5228935 () Bool)

(assert (=> b!4499132 m!5228935))

(declare-fun m!5228937 () Bool)

(assert (=> b!4499139 m!5228937))

(declare-fun m!5228939 () Bool)

(assert (=> b!4499139 m!5228939))

(assert (=> b!4499139 m!5228937))

(declare-fun m!5228941 () Bool)

(assert (=> b!4499139 m!5228941))

(declare-fun m!5228943 () Bool)

(assert (=> b!4499139 m!5228943))

(declare-fun m!5228945 () Bool)

(assert (=> b!4499139 m!5228945))

(assert (=> b!4499135 m!5228937))

(assert (=> b!4499135 m!5228937))

(declare-fun m!5228947 () Bool)

(assert (=> b!4499135 m!5228947))

(declare-fun m!5228949 () Bool)

(assert (=> d!1380466 m!5228949))

(assert (=> d!1380466 m!5228295))

(declare-fun m!5228951 () Bool)

(assert (=> b!4499136 m!5228951))

(declare-fun m!5228953 () Bool)

(assert (=> b!4499140 m!5228953))

(assert (=> b!4499140 m!5228821))

(assert (=> b!4498637 d!1380466))

(declare-fun d!1380468 () Bool)

(declare-fun res!1870307 () Bool)

(declare-fun e!2802530 () Bool)

(assert (=> d!1380468 (=> res!1870307 e!2802530)))

(assert (=> d!1380468 (= res!1870307 ((_ is Nil!50541) (t!357623 (toList!4255 lm!1477))))))

(assert (=> d!1380468 (= (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168485) e!2802530)))

(declare-fun b!4499141 () Bool)

(declare-fun e!2802531 () Bool)

(assert (=> b!4499141 (= e!2802530 e!2802531)))

(declare-fun res!1870308 () Bool)

(assert (=> b!4499141 (=> (not res!1870308) (not e!2802531))))

(assert (=> b!4499141 (= res!1870308 (dynLambda!21105 lambda!168485 (h!56360 (t!357623 (toList!4255 lm!1477)))))))

(declare-fun b!4499142 () Bool)

(assert (=> b!4499142 (= e!2802531 (forall!10173 (t!357623 (t!357623 (toList!4255 lm!1477))) lambda!168485))))

(assert (= (and d!1380468 (not res!1870307)) b!4499141))

(assert (= (and b!4499141 res!1870308) b!4499142))

(declare-fun b_lambda!152219 () Bool)

(assert (=> (not b_lambda!152219) (not b!4499141)))

(declare-fun m!5228955 () Bool)

(assert (=> b!4499141 m!5228955))

(declare-fun m!5228957 () Bool)

(assert (=> b!4499142 m!5228957))

(assert (=> b!4498566 d!1380468))

(declare-fun bs!835371 () Bool)

(declare-fun b!4499146 () Bool)

(assert (= bs!835371 (and b!4499146 b!4498894)))

(declare-fun lambda!168663 () Int)

(assert (=> bs!835371 (= (= (t!357622 (toList!4256 lt!1679938)) (toList!4256 lt!1679928)) (= lambda!168663 lambda!168633))))

(declare-fun bs!835372 () Bool)

(assert (= bs!835372 (and b!4499146 b!4498893)))

(assert (=> bs!835372 (= (= (t!357622 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679928))) (= lambda!168663 lambda!168631))))

(declare-fun bs!835373 () Bool)

(assert (= bs!835373 (and b!4499146 b!4498898)))

(assert (=> bs!835373 (= (= (t!357622 (toList!4256 lt!1679938)) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168663 lambda!168632))))

(declare-fun bs!835374 () Bool)

(assert (= bs!835374 (and b!4499146 b!4499139)))

(assert (=> bs!835374 (= (= (t!357622 (toList!4256 lt!1679938)) (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))) (= lambda!168663 lambda!168660))))

(declare-fun bs!835375 () Bool)

(assert (= bs!835375 (and b!4499146 b!4499136)))

(assert (=> bs!835375 (= (= (t!357622 (toList!4256 lt!1679938)) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168663 lambda!168661))))

(declare-fun bs!835376 () Bool)

(assert (= bs!835376 (and b!4499146 b!4499135)))

(assert (=> bs!835376 (= (= (t!357622 (toList!4256 lt!1679938)) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (= lambda!168663 lambda!168659))))

(declare-fun bs!835377 () Bool)

(assert (= bs!835377 (and b!4499146 b!4499074)))

(assert (=> bs!835377 (= (= (t!357622 (toList!4256 lt!1679938)) (toList!4256 lt!1680118)) (= lambda!168663 lambda!168649))))

(declare-fun bs!835378 () Bool)

(assert (= bs!835378 (and b!4499146 b!4498999)))

(assert (=> bs!835378 (= (= (t!357622 (toList!4256 lt!1679938)) (toList!4256 lt!1679938)) (= lambda!168663 lambda!168635))))

(declare-fun bs!835379 () Bool)

(assert (= bs!835379 (and b!4499146 b!4498660)))

(assert (=> bs!835379 (= (= (t!357622 (toList!4256 lt!1679938)) (toList!4256 lt!1679928)) (= lambda!168663 lambda!168546))))

(declare-fun bs!835380 () Bool)

(assert (= bs!835380 (and b!4499146 b!4499079)))

(assert (=> bs!835380 (= (= (t!357622 (toList!4256 lt!1679938)) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168663 lambda!168651))))

(assert (=> b!4499146 true))

(declare-fun bs!835381 () Bool)

(declare-fun b!4499150 () Bool)

(assert (= bs!835381 (and b!4499150 b!4498894)))

(declare-fun lambda!168664 () Int)

(assert (=> bs!835381 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (toList!4256 lt!1679928)) (= lambda!168664 lambda!168633))))

(declare-fun bs!835382 () Bool)

(assert (= bs!835382 (and b!4499150 b!4498893)))

(assert (=> bs!835382 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (t!357622 (toList!4256 lt!1679928))) (= lambda!168664 lambda!168631))))

(declare-fun bs!835383 () Bool)

(assert (= bs!835383 (and b!4499150 b!4498898)))

(assert (=> bs!835383 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168664 lambda!168632))))

(declare-fun bs!835384 () Bool)

(assert (= bs!835384 (and b!4499150 b!4499139)))

(assert (=> bs!835384 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))) (= lambda!168664 lambda!168660))))

(declare-fun bs!835385 () Bool)

(assert (= bs!835385 (and b!4499150 b!4499136)))

(assert (=> bs!835385 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168664 lambda!168661))))

(declare-fun bs!835386 () Bool)

(assert (= bs!835386 (and b!4499150 b!4499146)))

(assert (=> bs!835386 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (t!357622 (toList!4256 lt!1679938))) (= lambda!168664 lambda!168663))))

(declare-fun bs!835387 () Bool)

(assert (= bs!835387 (and b!4499150 b!4499135)))

(assert (=> bs!835387 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (= lambda!168664 lambda!168659))))

(declare-fun bs!835388 () Bool)

(assert (= bs!835388 (and b!4499150 b!4499074)))

(assert (=> bs!835388 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (toList!4256 lt!1680118)) (= lambda!168664 lambda!168649))))

(declare-fun bs!835389 () Bool)

(assert (= bs!835389 (and b!4499150 b!4498999)))

(assert (=> bs!835389 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (toList!4256 lt!1679938)) (= lambda!168664 lambda!168635))))

(declare-fun bs!835390 () Bool)

(assert (= bs!835390 (and b!4499150 b!4498660)))

(assert (=> bs!835390 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (toList!4256 lt!1679928)) (= lambda!168664 lambda!168546))))

(declare-fun bs!835391 () Bool)

(assert (= bs!835391 (and b!4499150 b!4499079)))

(assert (=> bs!835391 (= (= (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938))) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168664 lambda!168651))))

(assert (=> b!4499150 true))

(declare-fun bs!835392 () Bool)

(declare-fun b!4499147 () Bool)

(assert (= bs!835392 (and b!4499147 b!4498894)))

(declare-fun lambda!168665 () Int)

(assert (=> bs!835392 (= (= (toList!4256 lt!1679938) (toList!4256 lt!1679928)) (= lambda!168665 lambda!168633))))

(declare-fun bs!835393 () Bool)

(assert (= bs!835393 (and b!4499147 b!4498893)))

(assert (=> bs!835393 (= (= (toList!4256 lt!1679938) (t!357622 (toList!4256 lt!1679928))) (= lambda!168665 lambda!168631))))

(declare-fun bs!835394 () Bool)

(assert (= bs!835394 (and b!4499147 b!4498898)))

(assert (=> bs!835394 (= (= (toList!4256 lt!1679938) (Cons!50540 (h!56359 (toList!4256 lt!1679928)) (t!357622 (toList!4256 lt!1679928)))) (= lambda!168665 lambda!168632))))

(declare-fun bs!835395 () Bool)

(assert (= bs!835395 (and b!4499147 b!4499139)))

(assert (=> bs!835395 (= (= (toList!4256 lt!1679938) (Cons!50540 (h!56359 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))) (= lambda!168665 lambda!168660))))

(declare-fun bs!835396 () Bool)

(assert (= bs!835396 (and b!4499147 b!4499136)))

(assert (=> bs!835396 (= (= (toList!4256 lt!1679938) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168665 lambda!168661))))

(declare-fun bs!835397 () Bool)

(assert (= bs!835397 (and b!4499147 b!4499150)))

(assert (=> bs!835397 (= (= (toList!4256 lt!1679938) (Cons!50540 (h!56359 (toList!4256 lt!1679938)) (t!357622 (toList!4256 lt!1679938)))) (= lambda!168665 lambda!168664))))

(declare-fun bs!835398 () Bool)

(assert (= bs!835398 (and b!4499147 b!4499146)))

(assert (=> bs!835398 (= (= (toList!4256 lt!1679938) (t!357622 (toList!4256 lt!1679938))) (= lambda!168665 lambda!168663))))

(declare-fun bs!835399 () Bool)

(assert (= bs!835399 (and b!4499147 b!4499135)))

(assert (=> bs!835399 (= (= (toList!4256 lt!1679938) (t!357622 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))) (= lambda!168665 lambda!168659))))

(declare-fun bs!835400 () Bool)

(assert (= bs!835400 (and b!4499147 b!4499074)))

(assert (=> bs!835400 (= (= (toList!4256 lt!1679938) (toList!4256 lt!1680118)) (= lambda!168665 lambda!168649))))

(declare-fun bs!835401 () Bool)

(assert (= bs!835401 (and b!4499147 b!4498999)))

(assert (=> bs!835401 (= lambda!168665 lambda!168635)))

(declare-fun bs!835402 () Bool)

(assert (= bs!835402 (and b!4499147 b!4498660)))

(assert (=> bs!835402 (= (= (toList!4256 lt!1679938) (toList!4256 lt!1679928)) (= lambda!168665 lambda!168546))))

(declare-fun bs!835403 () Bool)

(assert (= bs!835403 (and b!4499147 b!4499079)))

(assert (=> bs!835403 (= (= (toList!4256 lt!1679938) (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) (= lambda!168665 lambda!168651))))

(assert (=> b!4499147 true))

(declare-fun bs!835404 () Bool)

(declare-fun b!4499143 () Bool)

(assert (= bs!835404 (and b!4499143 b!4498890)))

(declare-fun lambda!168666 () Int)

(assert (=> bs!835404 (= lambda!168666 lambda!168634)))

(declare-fun bs!835405 () Bool)

(assert (= bs!835405 (and b!4499143 b!4499075)))

(assert (=> bs!835405 (= lambda!168666 lambda!168650)))

(declare-fun bs!835406 () Bool)

(assert (= bs!835406 (and b!4499143 b!4498661)))

(assert (=> bs!835406 (= lambda!168666 lambda!168547)))

(declare-fun bs!835407 () Bool)

(assert (= bs!835407 (and b!4499143 b!4499000)))

(assert (=> bs!835407 (= lambda!168666 lambda!168636)))

(declare-fun bs!835408 () Bool)

(assert (= bs!835408 (and b!4499143 b!4499080)))

(assert (=> bs!835408 (= lambda!168666 lambda!168652)))

(declare-fun bs!835409 () Bool)

(assert (= bs!835409 (and b!4499143 b!4499132)))

(assert (=> bs!835409 (= lambda!168666 lambda!168662)))

(declare-fun lt!1680493 () List!50667)

(declare-fun e!2802533 () Bool)

(assert (=> b!4499143 (= e!2802533 (= (content!8256 lt!1680493) (content!8256 (map!11100 (toList!4256 lt!1679938) lambda!168666))))))

(declare-fun b!4499144 () Bool)

(declare-fun e!2802532 () List!50667)

(assert (=> b!4499144 (= e!2802532 Nil!50543)))

(declare-fun d!1380470 () Bool)

(assert (=> d!1380470 e!2802533))

(declare-fun res!1870311 () Bool)

(assert (=> d!1380470 (=> (not res!1870311) (not e!2802533))))

(assert (=> d!1380470 (= res!1870311 (noDuplicate!727 lt!1680493))))

(assert (=> d!1380470 (= lt!1680493 e!2802532)))

(declare-fun c!766833 () Bool)

(assert (=> d!1380470 (= c!766833 ((_ is Cons!50540) (toList!4256 lt!1679938)))))

(assert (=> d!1380470 (invariantList!983 (toList!4256 lt!1679938))))

(assert (=> d!1380470 (= (getKeysList!431 (toList!4256 lt!1679938)) lt!1680493)))

(declare-fun b!4499145 () Bool)

(declare-fun e!2802534 () Unit!91740)

(declare-fun Unit!91832 () Unit!91740)

(assert (=> b!4499145 (= e!2802534 Unit!91832)))

(assert (=> b!4499146 false))

(declare-fun lt!1680494 () Unit!91740)

(assert (=> b!4499146 (= lt!1680494 (forallContained!2430 (getKeysList!431 (t!357622 (toList!4256 lt!1679938))) lambda!168663 (_1!28759 (h!56359 (toList!4256 lt!1679938)))))))

(declare-fun Unit!91833 () Unit!91740)

(assert (=> b!4499146 (= e!2802534 Unit!91833)))

(declare-fun res!1870310 () Bool)

(assert (=> b!4499147 (=> (not res!1870310) (not e!2802533))))

(assert (=> b!4499147 (= res!1870310 (forall!10176 lt!1680493 lambda!168665))))

(declare-fun b!4499148 () Bool)

(declare-fun e!2802535 () Unit!91740)

(declare-fun Unit!91834 () Unit!91740)

(assert (=> b!4499148 (= e!2802535 Unit!91834)))

(declare-fun b!4499149 () Bool)

(assert (=> b!4499149 false))

(declare-fun Unit!91835 () Unit!91740)

(assert (=> b!4499149 (= e!2802535 Unit!91835)))

(assert (=> b!4499150 (= e!2802532 (Cons!50543 (_1!28759 (h!56359 (toList!4256 lt!1679938))) (getKeysList!431 (t!357622 (toList!4256 lt!1679938)))))))

(declare-fun c!766834 () Bool)

(assert (=> b!4499150 (= c!766834 (containsKey!1680 (t!357622 (toList!4256 lt!1679938)) (_1!28759 (h!56359 (toList!4256 lt!1679938)))))))

(declare-fun lt!1680498 () Unit!91740)

(assert (=> b!4499150 (= lt!1680498 e!2802535)))

(declare-fun c!766832 () Bool)

(assert (=> b!4499150 (= c!766832 (contains!13213 (getKeysList!431 (t!357622 (toList!4256 lt!1679938))) (_1!28759 (h!56359 (toList!4256 lt!1679938)))))))

(declare-fun lt!1680499 () Unit!91740)

(assert (=> b!4499150 (= lt!1680499 e!2802534)))

(declare-fun lt!1680497 () List!50667)

(assert (=> b!4499150 (= lt!1680497 (getKeysList!431 (t!357622 (toList!4256 lt!1679938))))))

(declare-fun lt!1680496 () Unit!91740)

(assert (=> b!4499150 (= lt!1680496 (lemmaForallContainsAddHeadPreserves!148 (t!357622 (toList!4256 lt!1679938)) lt!1680497 (h!56359 (toList!4256 lt!1679938))))))

(assert (=> b!4499150 (forall!10176 lt!1680497 lambda!168664)))

(declare-fun lt!1680495 () Unit!91740)

(assert (=> b!4499150 (= lt!1680495 lt!1680496)))

(declare-fun b!4499151 () Bool)

(declare-fun res!1870309 () Bool)

(assert (=> b!4499151 (=> (not res!1870309) (not e!2802533))))

(assert (=> b!4499151 (= res!1870309 (= (length!310 lt!1680493) (length!311 (toList!4256 lt!1679938))))))

(assert (= (and d!1380470 c!766833) b!4499150))

(assert (= (and d!1380470 (not c!766833)) b!4499144))

(assert (= (and b!4499150 c!766834) b!4499149))

(assert (= (and b!4499150 (not c!766834)) b!4499148))

(assert (= (and b!4499150 c!766832) b!4499146))

(assert (= (and b!4499150 (not c!766832)) b!4499145))

(assert (= (and d!1380470 res!1870311) b!4499151))

(assert (= (and b!4499151 res!1870309) b!4499147))

(assert (= (and b!4499147 res!1870310) b!4499143))

(declare-fun m!5228959 () Bool)

(assert (=> b!4499143 m!5228959))

(declare-fun m!5228961 () Bool)

(assert (=> b!4499143 m!5228961))

(assert (=> b!4499143 m!5228961))

(declare-fun m!5228963 () Bool)

(assert (=> b!4499143 m!5228963))

(declare-fun m!5228965 () Bool)

(assert (=> b!4499150 m!5228965))

(declare-fun m!5228967 () Bool)

(assert (=> b!4499150 m!5228967))

(assert (=> b!4499150 m!5228965))

(declare-fun m!5228969 () Bool)

(assert (=> b!4499150 m!5228969))

(declare-fun m!5228971 () Bool)

(assert (=> b!4499150 m!5228971))

(declare-fun m!5228973 () Bool)

(assert (=> b!4499150 m!5228973))

(assert (=> b!4499146 m!5228965))

(assert (=> b!4499146 m!5228965))

(declare-fun m!5228975 () Bool)

(assert (=> b!4499146 m!5228975))

(declare-fun m!5228977 () Bool)

(assert (=> d!1380470 m!5228977))

(assert (=> d!1380470 m!5228929))

(declare-fun m!5228979 () Bool)

(assert (=> b!4499147 m!5228979))

(declare-fun m!5228981 () Bool)

(assert (=> b!4499151 m!5228981))

(assert (=> b!4499151 m!5228607))

(assert (=> b!4498522 d!1380470))

(declare-fun d!1380472 () Bool)

(declare-fun e!2802543 () Bool)

(assert (=> d!1380472 e!2802543))

(declare-fun res!1870312 () Bool)

(assert (=> d!1380472 (=> res!1870312 e!2802543)))

(declare-fun lt!1680508 () Bool)

(assert (=> d!1380472 (= res!1870312 (not lt!1680508))))

(declare-fun lt!1680509 () Bool)

(assert (=> d!1380472 (= lt!1680508 lt!1680509)))

(declare-fun lt!1680511 () Unit!91740)

(declare-fun e!2802542 () Unit!91740)

(assert (=> d!1380472 (= lt!1680511 e!2802542)))

(declare-fun c!766841 () Bool)

(assert (=> d!1380472 (= c!766841 lt!1680509)))

(assert (=> d!1380472 (= lt!1680509 (containsKey!1679 (toList!4255 lt!1680153) (_1!28760 lt!1679924)))))

(assert (=> d!1380472 (= (contains!13209 lt!1680153 (_1!28760 lt!1679924)) lt!1680508)))

(declare-fun b!4499164 () Bool)

(declare-fun lt!1680510 () Unit!91740)

(assert (=> b!4499164 (= e!2802542 lt!1680510)))

(assert (=> b!4499164 (= lt!1680510 (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lt!1680153) (_1!28760 lt!1679924)))))

(assert (=> b!4499164 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680153) (_1!28760 lt!1679924)))))

(declare-fun b!4499165 () Bool)

(declare-fun Unit!91836 () Unit!91740)

(assert (=> b!4499165 (= e!2802542 Unit!91836)))

(declare-fun b!4499166 () Bool)

(assert (=> b!4499166 (= e!2802543 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680153) (_1!28760 lt!1679924))))))

(assert (= (and d!1380472 c!766841) b!4499164))

(assert (= (and d!1380472 (not c!766841)) b!4499165))

(assert (= (and d!1380472 (not res!1870312)) b!4499166))

(declare-fun m!5228983 () Bool)

(assert (=> d!1380472 m!5228983))

(declare-fun m!5228985 () Bool)

(assert (=> b!4499164 m!5228985))

(assert (=> b!4499164 m!5228109))

(assert (=> b!4499164 m!5228109))

(declare-fun m!5228987 () Bool)

(assert (=> b!4499164 m!5228987))

(assert (=> b!4499166 m!5228109))

(assert (=> b!4499166 m!5228109))

(assert (=> b!4499166 m!5228987))

(assert (=> d!1380204 d!1380472))

(declare-fun d!1380474 () Bool)

(declare-fun c!766842 () Bool)

(assert (=> d!1380474 (= c!766842 (and ((_ is Cons!50541) lt!1680151) (= (_1!28760 (h!56360 lt!1680151)) (_1!28760 lt!1679924))))))

(declare-fun e!2802544 () Option!11044)

(assert (=> d!1380474 (= (getValueByKey!1024 lt!1680151 (_1!28760 lt!1679924)) e!2802544)))

(declare-fun b!4499170 () Bool)

(declare-fun e!2802545 () Option!11044)

(assert (=> b!4499170 (= e!2802545 None!11043)))

(declare-fun b!4499168 () Bool)

(assert (=> b!4499168 (= e!2802544 e!2802545)))

(declare-fun c!766843 () Bool)

(assert (=> b!4499168 (= c!766843 (and ((_ is Cons!50541) lt!1680151) (not (= (_1!28760 (h!56360 lt!1680151)) (_1!28760 lt!1679924)))))))

(declare-fun b!4499169 () Bool)

(assert (=> b!4499169 (= e!2802545 (getValueByKey!1024 (t!357623 lt!1680151) (_1!28760 lt!1679924)))))

(declare-fun b!4499167 () Bool)

(assert (=> b!4499167 (= e!2802544 (Some!11043 (_2!28760 (h!56360 lt!1680151))))))

(assert (= (and d!1380474 c!766842) b!4499167))

(assert (= (and d!1380474 (not c!766842)) b!4499168))

(assert (= (and b!4499168 c!766843) b!4499169))

(assert (= (and b!4499168 (not c!766843)) b!4499170))

(declare-fun m!5228989 () Bool)

(assert (=> b!4499169 m!5228989))

(assert (=> d!1380204 d!1380474))

(declare-fun d!1380476 () Bool)

(assert (=> d!1380476 (= (getValueByKey!1024 lt!1680151 (_1!28760 lt!1679924)) (Some!11043 (_2!28760 lt!1679924)))))

(declare-fun lt!1680518 () Unit!91740)

(assert (=> d!1380476 (= lt!1680518 (choose!29116 lt!1680151 (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(declare-fun e!2802546 () Bool)

(assert (=> d!1380476 e!2802546))

(declare-fun res!1870313 () Bool)

(assert (=> d!1380476 (=> (not res!1870313) (not e!2802546))))

(assert (=> d!1380476 (= res!1870313 (isStrictlySorted!397 lt!1680151))))

(assert (=> d!1380476 (= (lemmaContainsTupThenGetReturnValue!632 lt!1680151 (_1!28760 lt!1679924) (_2!28760 lt!1679924)) lt!1680518)))

(declare-fun b!4499171 () Bool)

(declare-fun res!1870314 () Bool)

(assert (=> b!4499171 (=> (not res!1870314) (not e!2802546))))

(assert (=> b!4499171 (= res!1870314 (containsKey!1679 lt!1680151 (_1!28760 lt!1679924)))))

(declare-fun b!4499172 () Bool)

(assert (=> b!4499172 (= e!2802546 (contains!13211 lt!1680151 (tuple2!50933 (_1!28760 lt!1679924) (_2!28760 lt!1679924))))))

(assert (= (and d!1380476 res!1870313) b!4499171))

(assert (= (and b!4499171 res!1870314) b!4499172))

(assert (=> d!1380476 m!5228103))

(declare-fun m!5228991 () Bool)

(assert (=> d!1380476 m!5228991))

(declare-fun m!5228993 () Bool)

(assert (=> d!1380476 m!5228993))

(declare-fun m!5228995 () Bool)

(assert (=> b!4499171 m!5228995))

(declare-fun m!5228997 () Bool)

(assert (=> b!4499172 m!5228997))

(assert (=> d!1380204 d!1380476))

(declare-fun b!4499173 () Bool)

(declare-fun res!1870315 () Bool)

(declare-fun e!2802551 () Bool)

(assert (=> b!4499173 (=> (not res!1870315) (not e!2802551))))

(declare-fun lt!1680519 () List!50665)

(assert (=> b!4499173 (= res!1870315 (containsKey!1679 lt!1680519 (_1!28760 lt!1679924)))))

(declare-fun bm!313132 () Bool)

(declare-fun call!313139 () List!50665)

(declare-fun call!313138 () List!50665)

(assert (=> bm!313132 (= call!313139 call!313138)))

(declare-fun c!766847 () Bool)

(declare-fun bm!313133 () Bool)

(declare-fun e!2802550 () List!50665)

(declare-fun call!313137 () List!50665)

(assert (=> bm!313133 (= call!313137 ($colon$colon!894 e!2802550 (ite c!766847 (h!56360 (toList!4255 lm!1477)) (tuple2!50933 (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))))

(declare-fun c!766846 () Bool)

(assert (=> bm!313133 (= c!766846 c!766847)))

(declare-fun d!1380478 () Bool)

(assert (=> d!1380478 e!2802551))

(declare-fun res!1870316 () Bool)

(assert (=> d!1380478 (=> (not res!1870316) (not e!2802551))))

(assert (=> d!1380478 (= res!1870316 (isStrictlySorted!397 lt!1680519))))

(declare-fun e!2802549 () List!50665)

(assert (=> d!1380478 (= lt!1680519 e!2802549)))

(assert (=> d!1380478 (= c!766847 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (bvslt (_1!28760 (h!56360 (toList!4255 lm!1477))) (_1!28760 lt!1679924))))))

(assert (=> d!1380478 (isStrictlySorted!397 (toList!4255 lm!1477))))

(assert (=> d!1380478 (= (insertStrictlySorted!374 (toList!4255 lm!1477) (_1!28760 lt!1679924) (_2!28760 lt!1679924)) lt!1680519)))

(declare-fun b!4499174 () Bool)

(assert (=> b!4499174 (= e!2802550 (insertStrictlySorted!374 (t!357623 (toList!4255 lm!1477)) (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(declare-fun b!4499175 () Bool)

(declare-fun e!2802547 () List!50665)

(assert (=> b!4499175 (= e!2802549 e!2802547)))

(declare-fun c!766845 () Bool)

(assert (=> b!4499175 (= c!766845 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (= (_1!28760 (h!56360 (toList!4255 lm!1477))) (_1!28760 lt!1679924))))))

(declare-fun b!4499176 () Bool)

(assert (=> b!4499176 (= e!2802549 call!313137)))

(declare-fun b!4499177 () Bool)

(declare-fun e!2802548 () List!50665)

(assert (=> b!4499177 (= e!2802548 call!313139)))

(declare-fun b!4499178 () Bool)

(assert (=> b!4499178 (= e!2802548 call!313139)))

(declare-fun b!4499179 () Bool)

(declare-fun c!766844 () Bool)

(assert (=> b!4499179 (= e!2802550 (ite c!766845 (t!357623 (toList!4255 lm!1477)) (ite c!766844 (Cons!50541 (h!56360 (toList!4255 lm!1477)) (t!357623 (toList!4255 lm!1477))) Nil!50541)))))

(declare-fun b!4499180 () Bool)

(assert (=> b!4499180 (= e!2802551 (contains!13211 lt!1680519 (tuple2!50933 (_1!28760 lt!1679924) (_2!28760 lt!1679924))))))

(declare-fun bm!313134 () Bool)

(assert (=> bm!313134 (= call!313138 call!313137)))

(declare-fun b!4499181 () Bool)

(assert (=> b!4499181 (= c!766844 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (bvsgt (_1!28760 (h!56360 (toList!4255 lm!1477))) (_1!28760 lt!1679924))))))

(assert (=> b!4499181 (= e!2802547 e!2802548)))

(declare-fun b!4499182 () Bool)

(assert (=> b!4499182 (= e!2802547 call!313138)))

(assert (= (and d!1380478 c!766847) b!4499176))

(assert (= (and d!1380478 (not c!766847)) b!4499175))

(assert (= (and b!4499175 c!766845) b!4499182))

(assert (= (and b!4499175 (not c!766845)) b!4499181))

(assert (= (and b!4499181 c!766844) b!4499177))

(assert (= (and b!4499181 (not c!766844)) b!4499178))

(assert (= (or b!4499177 b!4499178) bm!313132))

(assert (= (or b!4499182 bm!313132) bm!313134))

(assert (= (or b!4499176 bm!313134) bm!313133))

(assert (= (and bm!313133 c!766846) b!4499174))

(assert (= (and bm!313133 (not c!766846)) b!4499179))

(assert (= (and d!1380478 res!1870316) b!4499173))

(assert (= (and b!4499173 res!1870315) b!4499180))

(declare-fun m!5228999 () Bool)

(assert (=> b!4499173 m!5228999))

(declare-fun m!5229001 () Bool)

(assert (=> b!4499174 m!5229001))

(declare-fun m!5229003 () Bool)

(assert (=> d!1380478 m!5229003))

(assert (=> d!1380478 m!5227641))

(declare-fun m!5229005 () Bool)

(assert (=> bm!313133 m!5229005))

(declare-fun m!5229007 () Bool)

(assert (=> b!4499180 m!5229007))

(assert (=> d!1380204 d!1380478))

(declare-fun d!1380480 () Bool)

(declare-fun lt!1680520 () Bool)

(assert (=> d!1380480 (= lt!1680520 (select (content!8256 (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) key!3287))))

(declare-fun e!2802554 () Bool)

(assert (=> d!1380480 (= lt!1680520 e!2802554)))

(declare-fun res!1870324 () Bool)

(assert (=> d!1380480 (=> (not res!1870324) (not e!2802554))))

(assert (=> d!1380480 (= res!1870324 ((_ is Cons!50543) (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))))

(assert (=> d!1380480 (= (contains!13213 (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) key!3287) lt!1680520)))

(declare-fun b!4499189 () Bool)

(declare-fun e!2802555 () Bool)

(assert (=> b!4499189 (= e!2802554 e!2802555)))

(declare-fun res!1870323 () Bool)

(assert (=> b!4499189 (=> res!1870323 e!2802555)))

(assert (=> b!4499189 (= res!1870323 (= (h!56364 (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) key!3287))))

(declare-fun b!4499190 () Bool)

(assert (=> b!4499190 (= e!2802555 (contains!13213 (t!357625 (keys!17522 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))) key!3287))))

(assert (= (and d!1380480 res!1870324) b!4499189))

(assert (= (and b!4499189 (not res!1870323)) b!4499190))

(assert (=> d!1380480 m!5228145))

(declare-fun m!5229009 () Bool)

(assert (=> d!1380480 m!5229009))

(declare-fun m!5229011 () Bool)

(assert (=> d!1380480 m!5229011))

(declare-fun m!5229013 () Bool)

(assert (=> b!4499190 m!5229013))

(assert (=> b!4498638 d!1380480))

(assert (=> b!4498638 d!1380424))

(assert (=> b!4498393 d!1380438))

(assert (=> b!4498393 d!1380444))

(declare-fun bs!835410 () Bool)

(declare-fun b!4499192 () Bool)

(assert (= bs!835410 (and b!4499192 b!4498778)))

(declare-fun lambda!168675 () Int)

(assert (=> bs!835410 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680335) (= lambda!168675 lambda!168616))))

(assert (=> bs!835410 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168675 lambda!168615))))

(declare-fun bs!835411 () Bool)

(assert (= bs!835411 (and b!4499192 b!4498765)))

(assert (=> bs!835411 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168675 lambda!168599))))

(declare-fun bs!835412 () Bool)

(assert (= bs!835412 (and b!4499192 d!1380270)))

(assert (=> bs!835412 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680297) (= lambda!168675 lambda!168606))))

(declare-fun bs!835413 () Bool)

(assert (= bs!835413 (and b!4499192 b!4498779)))

(assert (=> bs!835413 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168675 lambda!168614))))

(declare-fun bs!835414 () Bool)

(assert (= bs!835414 (and b!4499192 d!1380048)))

(assert (=> bs!835414 (not (= lambda!168675 lambda!168488))))

(assert (=> bs!835411 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680303) (= lambda!168675 lambda!168601))))

(declare-fun bs!835415 () Bool)

(assert (= bs!835415 (and b!4499192 b!4498734)))

(assert (=> bs!835415 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168675 lambda!168577))))

(declare-fun bs!835416 () Bool)

(assert (= bs!835416 (and b!4499192 b!4498766)))

(assert (=> bs!835416 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168675 lambda!168597))))

(declare-fun bs!835417 () Bool)

(assert (= bs!835417 (and b!4499192 d!1380246)))

(assert (=> bs!835417 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680234) (= lambda!168675 lambda!168579))))

(declare-fun bs!835418 () Bool)

(assert (= bs!835418 (and b!4499192 b!4498735)))

(assert (=> bs!835418 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168675 lambda!168576))))

(declare-fun bs!835419 () Bool)

(assert (= bs!835419 (and b!4499192 d!1380274)))

(assert (=> bs!835419 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680329) (= lambda!168675 lambda!168617))))

(assert (=> bs!835415 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680240) (= lambda!168675 lambda!168578))))

(assert (=> b!4499192 true))

(declare-fun bs!835420 () Bool)

(declare-fun b!4499191 () Bool)

(assert (= bs!835420 (and b!4499191 b!4498778)))

(declare-fun lambda!168676 () Int)

(assert (=> bs!835420 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680335) (= lambda!168676 lambda!168616))))

(assert (=> bs!835420 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168676 lambda!168615))))

(declare-fun bs!835421 () Bool)

(assert (= bs!835421 (and b!4499191 b!4498765)))

(assert (=> bs!835421 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168676 lambda!168599))))

(declare-fun bs!835422 () Bool)

(assert (= bs!835422 (and b!4499191 d!1380270)))

(assert (=> bs!835422 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680297) (= lambda!168676 lambda!168606))))

(declare-fun bs!835423 () Bool)

(assert (= bs!835423 (and b!4499191 d!1380048)))

(assert (=> bs!835423 (not (= lambda!168676 lambda!168488))))

(assert (=> bs!835421 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680303) (= lambda!168676 lambda!168601))))

(declare-fun bs!835424 () Bool)

(assert (= bs!835424 (and b!4499191 b!4498734)))

(assert (=> bs!835424 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168676 lambda!168577))))

(declare-fun bs!835425 () Bool)

(assert (= bs!835425 (and b!4499191 b!4498766)))

(assert (=> bs!835425 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168676 lambda!168597))))

(declare-fun bs!835426 () Bool)

(assert (= bs!835426 (and b!4499191 d!1380246)))

(assert (=> bs!835426 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680234) (= lambda!168676 lambda!168579))))

(declare-fun bs!835427 () Bool)

(assert (= bs!835427 (and b!4499191 b!4498735)))

(assert (=> bs!835427 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168676 lambda!168576))))

(declare-fun bs!835428 () Bool)

(assert (= bs!835428 (and b!4499191 b!4499192)))

(assert (=> bs!835428 (= lambda!168676 lambda!168675)))

(declare-fun bs!835429 () Bool)

(assert (= bs!835429 (and b!4499191 b!4498779)))

(assert (=> bs!835429 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168676 lambda!168614))))

(declare-fun bs!835430 () Bool)

(assert (= bs!835430 (and b!4499191 d!1380274)))

(assert (=> bs!835430 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680329) (= lambda!168676 lambda!168617))))

(assert (=> bs!835424 (= (= (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680240) (= lambda!168676 lambda!168578))))

(assert (=> b!4499191 true))

(declare-fun lambda!168677 () Int)

(declare-fun lt!1680537 () ListMap!3517)

(assert (=> bs!835420 (= (= lt!1680537 lt!1680335) (= lambda!168677 lambda!168616))))

(assert (=> bs!835420 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168677 lambda!168615))))

(assert (=> bs!835421 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168677 lambda!168599))))

(assert (=> b!4499191 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168677 lambda!168676))))

(assert (=> bs!835422 (= (= lt!1680537 lt!1680297) (= lambda!168677 lambda!168606))))

(assert (=> bs!835423 (not (= lambda!168677 lambda!168488))))

(assert (=> bs!835421 (= (= lt!1680537 lt!1680303) (= lambda!168677 lambda!168601))))

(assert (=> bs!835424 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168677 lambda!168577))))

(assert (=> bs!835425 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168677 lambda!168597))))

(assert (=> bs!835426 (= (= lt!1680537 lt!1680234) (= lambda!168677 lambda!168579))))

(assert (=> bs!835427 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168677 lambda!168576))))

(assert (=> bs!835428 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168677 lambda!168675))))

(assert (=> bs!835429 (= (= lt!1680537 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168677 lambda!168614))))

(assert (=> bs!835430 (= (= lt!1680537 lt!1680329) (= lambda!168677 lambda!168617))))

(assert (=> bs!835424 (= (= lt!1680537 lt!1680240) (= lambda!168677 lambda!168578))))

(assert (=> b!4499191 true))

(declare-fun bs!835443 () Bool)

(declare-fun d!1380482 () Bool)

(assert (= bs!835443 (and d!1380482 b!4498778)))

(declare-fun lt!1680531 () ListMap!3517)

(declare-fun lambda!168681 () Int)

(assert (=> bs!835443 (= (= lt!1680531 lt!1680335) (= lambda!168681 lambda!168616))))

(assert (=> bs!835443 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168681 lambda!168615))))

(declare-fun bs!835446 () Bool)

(assert (= bs!835446 (and d!1380482 b!4498765)))

(assert (=> bs!835446 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168681 lambda!168599))))

(declare-fun bs!835448 () Bool)

(assert (= bs!835448 (and d!1380482 b!4499191)))

(assert (=> bs!835448 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168681 lambda!168676))))

(declare-fun bs!835449 () Bool)

(assert (= bs!835449 (and d!1380482 d!1380270)))

(assert (=> bs!835449 (= (= lt!1680531 lt!1680297) (= lambda!168681 lambda!168606))))

(declare-fun bs!835450 () Bool)

(assert (= bs!835450 (and d!1380482 d!1380048)))

(assert (=> bs!835450 (not (= lambda!168681 lambda!168488))))

(assert (=> bs!835446 (= (= lt!1680531 lt!1680303) (= lambda!168681 lambda!168601))))

(assert (=> bs!835448 (= (= lt!1680531 lt!1680537) (= lambda!168681 lambda!168677))))

(declare-fun bs!835454 () Bool)

(assert (= bs!835454 (and d!1380482 b!4498734)))

(assert (=> bs!835454 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168681 lambda!168577))))

(declare-fun bs!835456 () Bool)

(assert (= bs!835456 (and d!1380482 b!4498766)))

(assert (=> bs!835456 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168681 lambda!168597))))

(declare-fun bs!835457 () Bool)

(assert (= bs!835457 (and d!1380482 d!1380246)))

(assert (=> bs!835457 (= (= lt!1680531 lt!1680234) (= lambda!168681 lambda!168579))))

(declare-fun bs!835458 () Bool)

(assert (= bs!835458 (and d!1380482 b!4498735)))

(assert (=> bs!835458 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168681 lambda!168576))))

(declare-fun bs!835459 () Bool)

(assert (= bs!835459 (and d!1380482 b!4499192)))

(assert (=> bs!835459 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168681 lambda!168675))))

(declare-fun bs!835460 () Bool)

(assert (= bs!835460 (and d!1380482 b!4498779)))

(assert (=> bs!835460 (= (= lt!1680531 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168681 lambda!168614))))

(declare-fun bs!835461 () Bool)

(assert (= bs!835461 (and d!1380482 d!1380274)))

(assert (=> bs!835461 (= (= lt!1680531 lt!1680329) (= lambda!168681 lambda!168617))))

(assert (=> bs!835454 (= (= lt!1680531 lt!1680240) (= lambda!168681 lambda!168578))))

(assert (=> d!1380482 true))

(declare-fun call!313141 () Bool)

(declare-fun c!766848 () Bool)

(declare-fun bm!313135 () Bool)

(assert (=> bm!313135 (= call!313141 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (ite c!766848 lambda!168675 lambda!168676)))))

(declare-fun e!2802558 () Bool)

(assert (=> d!1380482 e!2802558))

(declare-fun res!1870325 () Bool)

(assert (=> d!1380482 (=> (not res!1870325) (not e!2802558))))

(assert (=> d!1380482 (= res!1870325 (forall!10174 (_2!28760 (h!56360 (toList!4255 lm!1477))) lambda!168681))))

(declare-fun e!2802557 () ListMap!3517)

(assert (=> d!1380482 (= lt!1680531 e!2802557)))

(assert (=> d!1380482 (= c!766848 ((_ is Nil!50540) (_2!28760 (h!56360 (toList!4255 lm!1477)))))))

(assert (=> d!1380482 (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lm!1477))))))

(assert (=> d!1380482 (= (addToMapMapFromBucket!651 (_2!28760 (h!56360 (toList!4255 lm!1477))) (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lt!1680531)))

(assert (=> b!4499191 (= e!2802557 lt!1680537)))

(declare-fun lt!1680521 () ListMap!3517)

(assert (=> b!4499191 (= lt!1680521 (+!1471 (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477))))))))

(assert (=> b!4499191 (= lt!1680537 (addToMapMapFromBucket!651 (t!357622 (_2!28760 (h!56360 (toList!4255 lm!1477)))) (+!1471 (extractMap!1180 (t!357623 (toList!4255 lm!1477))) (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))))

(declare-fun lt!1680541 () Unit!91740)

(declare-fun call!313140 () Unit!91740)

(assert (=> b!4499191 (= lt!1680541 call!313140)))

(assert (=> b!4499191 call!313141))

(declare-fun lt!1680533 () Unit!91740)

(assert (=> b!4499191 (= lt!1680533 lt!1680541)))

(assert (=> b!4499191 (forall!10174 (toList!4256 lt!1680521) lambda!168677)))

(declare-fun lt!1680529 () Unit!91740)

(declare-fun Unit!91848 () Unit!91740)

(assert (=> b!4499191 (= lt!1680529 Unit!91848)))

(assert (=> b!4499191 (forall!10174 (t!357622 (_2!28760 (h!56360 (toList!4255 lm!1477)))) lambda!168677)))

(declare-fun lt!1680523 () Unit!91740)

(declare-fun Unit!91849 () Unit!91740)

(assert (=> b!4499191 (= lt!1680523 Unit!91849)))

(declare-fun lt!1680530 () Unit!91740)

(declare-fun Unit!91850 () Unit!91740)

(assert (=> b!4499191 (= lt!1680530 Unit!91850)))

(declare-fun lt!1680526 () Unit!91740)

(assert (=> b!4499191 (= lt!1680526 (forallContained!2428 (toList!4256 lt!1680521) lambda!168677 (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477))))))))

(assert (=> b!4499191 (contains!13210 lt!1680521 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477))))))))

(declare-fun lt!1680534 () Unit!91740)

(declare-fun Unit!91851 () Unit!91740)

(assert (=> b!4499191 (= lt!1680534 Unit!91851)))

(assert (=> b!4499191 (contains!13210 lt!1680537 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477))))))))

(declare-fun lt!1680525 () Unit!91740)

(declare-fun Unit!91852 () Unit!91740)

(assert (=> b!4499191 (= lt!1680525 Unit!91852)))

(declare-fun call!313142 () Bool)

(assert (=> b!4499191 call!313142))

(declare-fun lt!1680522 () Unit!91740)

(declare-fun Unit!91853 () Unit!91740)

(assert (=> b!4499191 (= lt!1680522 Unit!91853)))

(assert (=> b!4499191 (forall!10174 (toList!4256 lt!1680521) lambda!168677)))

(declare-fun lt!1680540 () Unit!91740)

(declare-fun Unit!91854 () Unit!91740)

(assert (=> b!4499191 (= lt!1680540 Unit!91854)))

(declare-fun lt!1680535 () Unit!91740)

(declare-fun Unit!91855 () Unit!91740)

(assert (=> b!4499191 (= lt!1680535 Unit!91855)))

(declare-fun lt!1680538 () Unit!91740)

(assert (=> b!4499191 (= lt!1680538 (addForallContainsKeyThenBeforeAdding!305 (extractMap!1180 (t!357623 (toList!4255 lm!1477))) lt!1680537 (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477))))) (_2!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))))

(assert (=> b!4499191 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lambda!168677)))

(declare-fun lt!1680524 () Unit!91740)

(assert (=> b!4499191 (= lt!1680524 lt!1680538)))

(assert (=> b!4499191 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lambda!168677)))

(declare-fun lt!1680539 () Unit!91740)

(declare-fun Unit!91856 () Unit!91740)

(assert (=> b!4499191 (= lt!1680539 Unit!91856)))

(declare-fun res!1870326 () Bool)

(assert (=> b!4499191 (= res!1870326 (forall!10174 (_2!28760 (h!56360 (toList!4255 lm!1477))) lambda!168677))))

(declare-fun e!2802556 () Bool)

(assert (=> b!4499191 (=> (not res!1870326) (not e!2802556))))

(assert (=> b!4499191 e!2802556))

(declare-fun lt!1680536 () Unit!91740)

(declare-fun Unit!91857 () Unit!91740)

(assert (=> b!4499191 (= lt!1680536 Unit!91857)))

(assert (=> b!4499192 (= e!2802557 (extractMap!1180 (t!357623 (toList!4255 lm!1477))))))

(declare-fun lt!1680528 () Unit!91740)

(assert (=> b!4499192 (= lt!1680528 call!313140)))

(assert (=> b!4499192 call!313141))

(declare-fun lt!1680532 () Unit!91740)

(assert (=> b!4499192 (= lt!1680532 lt!1680528)))

(assert (=> b!4499192 call!313142))

(declare-fun lt!1680527 () Unit!91740)

(declare-fun Unit!91858 () Unit!91740)

(assert (=> b!4499192 (= lt!1680527 Unit!91858)))

(declare-fun b!4499193 () Bool)

(declare-fun res!1870327 () Bool)

(assert (=> b!4499193 (=> (not res!1870327) (not e!2802558))))

(assert (=> b!4499193 (= res!1870327 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lambda!168681))))

(declare-fun b!4499194 () Bool)

(assert (=> b!4499194 (= e!2802556 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) lambda!168677))))

(declare-fun bm!313136 () Bool)

(assert (=> bm!313136 (= call!313140 (lemmaContainsAllItsOwnKeys!305 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))))))

(declare-fun bm!313137 () Bool)

(assert (=> bm!313137 (= call!313142 (forall!10174 (ite c!766848 (toList!4256 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (_2!28760 (h!56360 (toList!4255 lm!1477)))) (ite c!766848 lambda!168675 lambda!168677)))))

(declare-fun b!4499195 () Bool)

(assert (=> b!4499195 (= e!2802558 (invariantList!983 (toList!4256 lt!1680531)))))

(assert (= (and d!1380482 c!766848) b!4499192))

(assert (= (and d!1380482 (not c!766848)) b!4499191))

(assert (= (and b!4499191 res!1870326) b!4499194))

(assert (= (or b!4499192 b!4499191) bm!313137))

(assert (= (or b!4499192 b!4499191) bm!313135))

(assert (= (or b!4499192 b!4499191) bm!313136))

(assert (= (and d!1380482 res!1870325) b!4499193))

(assert (= (and b!4499193 res!1870327) b!4499195))

(assert (=> b!4499191 m!5227545))

(declare-fun m!5229039 () Bool)

(assert (=> b!4499191 m!5229039))

(assert (=> b!4499191 m!5227545))

(declare-fun m!5229041 () Bool)

(assert (=> b!4499191 m!5229041))

(declare-fun m!5229043 () Bool)

(assert (=> b!4499191 m!5229043))

(declare-fun m!5229045 () Bool)

(assert (=> b!4499191 m!5229045))

(declare-fun m!5229047 () Bool)

(assert (=> b!4499191 m!5229047))

(declare-fun m!5229049 () Bool)

(assert (=> b!4499191 m!5229049))

(declare-fun m!5229051 () Bool)

(assert (=> b!4499191 m!5229051))

(declare-fun m!5229053 () Bool)

(assert (=> b!4499191 m!5229053))

(assert (=> b!4499191 m!5229047))

(declare-fun m!5229055 () Bool)

(assert (=> b!4499191 m!5229055))

(assert (=> b!4499191 m!5229049))

(assert (=> b!4499191 m!5229041))

(declare-fun m!5229057 () Bool)

(assert (=> b!4499191 m!5229057))

(declare-fun m!5229059 () Bool)

(assert (=> bm!313135 m!5229059))

(assert (=> b!4499194 m!5229047))

(assert (=> bm!313136 m!5227545))

(declare-fun m!5229065 () Bool)

(assert (=> bm!313136 m!5229065))

(declare-fun m!5229067 () Bool)

(assert (=> bm!313137 m!5229067))

(declare-fun m!5229069 () Bool)

(assert (=> d!1380482 m!5229069))

(assert (=> d!1380482 m!5228185))

(declare-fun m!5229071 () Bool)

(assert (=> b!4499195 m!5229071))

(declare-fun m!5229073 () Bool)

(assert (=> b!4499193 m!5229073))

(assert (=> b!4498549 d!1380482))

(assert (=> b!4498549 d!1380212))

(declare-fun d!1380490 () Bool)

(declare-fun res!1870333 () Bool)

(declare-fun e!2802566 () Bool)

(assert (=> d!1380490 (=> res!1870333 e!2802566)))

(assert (=> d!1380490 (= res!1870333 (and ((_ is Cons!50540) (t!357622 lt!1679933)) (= (_1!28759 (h!56359 (t!357622 lt!1679933))) key!3287)))))

(assert (=> d!1380490 (= (containsKey!1676 (t!357622 lt!1679933) key!3287) e!2802566)))

(declare-fun b!4499211 () Bool)

(declare-fun e!2802567 () Bool)

(assert (=> b!4499211 (= e!2802566 e!2802567)))

(declare-fun res!1870334 () Bool)

(assert (=> b!4499211 (=> (not res!1870334) (not e!2802567))))

(assert (=> b!4499211 (= res!1870334 ((_ is Cons!50540) (t!357622 lt!1679933)))))

(declare-fun b!4499212 () Bool)

(assert (=> b!4499212 (= e!2802567 (containsKey!1676 (t!357622 (t!357622 lt!1679933)) key!3287))))

(assert (= (and d!1380490 (not res!1870333)) b!4499211))

(assert (= (and b!4499211 res!1870334) b!4499212))

(declare-fun m!5229077 () Bool)

(assert (=> b!4499212 m!5229077))

(assert (=> b!4498556 d!1380490))

(declare-fun d!1380494 () Bool)

(assert (=> d!1380494 (= (tail!7666 (toList!4255 lm!1477)) (t!357623 (toList!4255 lm!1477)))))

(assert (=> d!1380194 d!1380494))

(declare-fun b!4499217 () Bool)

(declare-fun e!2802575 () Unit!91740)

(declare-fun lt!1680554 () Unit!91740)

(assert (=> b!4499217 (= e!2802575 lt!1680554)))

(declare-fun lt!1680555 () Unit!91740)

(assert (=> b!4499217 (= lt!1680555 (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287))))

(assert (=> b!4499217 (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287))))

(declare-fun lt!1680549 () Unit!91740)

(assert (=> b!4499217 (= lt!1680549 lt!1680555)))

(assert (=> b!4499217 (= lt!1680554 (lemmaInListThenGetKeysListContains!427 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287))))

(declare-fun call!313143 () Bool)

(assert (=> b!4499217 call!313143))

(declare-fun b!4499218 () Bool)

(declare-fun e!2802576 () Bool)

(assert (=> b!4499218 (= e!2802576 (contains!13213 (keys!17522 (extractMap!1180 (toList!4255 lt!1679939))) key!3287))))

(declare-fun b!4499219 () Bool)

(declare-fun e!2802572 () Unit!91740)

(assert (=> b!4499219 (= e!2802575 e!2802572)))

(declare-fun c!766853 () Bool)

(assert (=> b!4499219 (= c!766853 call!313143)))

(declare-fun b!4499220 () Bool)

(declare-fun e!2802574 () List!50667)

(assert (=> b!4499220 (= e!2802574 (keys!17522 (extractMap!1180 (toList!4255 lt!1679939))))))

(declare-fun b!4499221 () Bool)

(declare-fun Unit!91870 () Unit!91740)

(assert (=> b!4499221 (= e!2802572 Unit!91870)))

(declare-fun d!1380500 () Bool)

(declare-fun e!2802577 () Bool)

(assert (=> d!1380500 e!2802577))

(declare-fun res!1870339 () Bool)

(assert (=> d!1380500 (=> res!1870339 e!2802577)))

(declare-fun e!2802573 () Bool)

(assert (=> d!1380500 (= res!1870339 e!2802573)))

(declare-fun res!1870341 () Bool)

(assert (=> d!1380500 (=> (not res!1870341) (not e!2802573))))

(declare-fun lt!1680552 () Bool)

(assert (=> d!1380500 (= res!1870341 (not lt!1680552))))

(declare-fun lt!1680553 () Bool)

(assert (=> d!1380500 (= lt!1680552 lt!1680553)))

(declare-fun lt!1680550 () Unit!91740)

(assert (=> d!1380500 (= lt!1680550 e!2802575)))

(declare-fun c!766854 () Bool)

(assert (=> d!1380500 (= c!766854 lt!1680553)))

(assert (=> d!1380500 (= lt!1680553 (containsKey!1680 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287))))

(assert (=> d!1380500 (= (contains!13210 (extractMap!1180 (toList!4255 lt!1679939)) key!3287) lt!1680552)))

(declare-fun b!4499222 () Bool)

(assert (=> b!4499222 false))

(declare-fun lt!1680556 () Unit!91740)

(declare-fun lt!1680551 () Unit!91740)

(assert (=> b!4499222 (= lt!1680556 lt!1680551)))

(assert (=> b!4499222 (containsKey!1680 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287)))

(assert (=> b!4499222 (= lt!1680551 (lemmaInGetKeysListThenContainsKey!430 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287))))

(declare-fun Unit!91871 () Unit!91740)

(assert (=> b!4499222 (= e!2802572 Unit!91871)))

(declare-fun b!4499223 () Bool)

(assert (=> b!4499223 (= e!2802577 e!2802576)))

(declare-fun res!1870340 () Bool)

(assert (=> b!4499223 (=> (not res!1870340) (not e!2802576))))

(assert (=> b!4499223 (= res!1870340 (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939))) key!3287)))))

(declare-fun b!4499224 () Bool)

(assert (=> b!4499224 (= e!2802574 (getKeysList!431 (toList!4256 (extractMap!1180 (toList!4255 lt!1679939)))))))

(declare-fun bm!313138 () Bool)

(assert (=> bm!313138 (= call!313143 (contains!13213 e!2802574 key!3287))))

(declare-fun c!766855 () Bool)

(assert (=> bm!313138 (= c!766855 c!766854)))

(declare-fun b!4499225 () Bool)

(assert (=> b!4499225 (= e!2802573 (not (contains!13213 (keys!17522 (extractMap!1180 (toList!4255 lt!1679939))) key!3287)))))

(assert (= (and d!1380500 c!766854) b!4499217))

(assert (= (and d!1380500 (not c!766854)) b!4499219))

(assert (= (and b!4499219 c!766853) b!4499222))

(assert (= (and b!4499219 (not c!766853)) b!4499221))

(assert (= (or b!4499217 b!4499219) bm!313138))

(assert (= (and bm!313138 c!766855) b!4499224))

(assert (= (and bm!313138 (not c!766855)) b!4499220))

(assert (= (and d!1380500 res!1870341) b!4499225))

(assert (= (and d!1380500 (not res!1870339)) b!4499223))

(assert (= (and b!4499223 res!1870340) b!4499218))

(declare-fun m!5229091 () Bool)

(assert (=> bm!313138 m!5229091))

(assert (=> b!4499218 m!5227543))

(assert (=> b!4499218 m!5228705))

(assert (=> b!4499218 m!5228705))

(declare-fun m!5229093 () Bool)

(assert (=> b!4499218 m!5229093))

(declare-fun m!5229095 () Bool)

(assert (=> d!1380500 m!5229095))

(assert (=> b!4499225 m!5227543))

(assert (=> b!4499225 m!5228705))

(assert (=> b!4499225 m!5228705))

(assert (=> b!4499225 m!5229093))

(assert (=> b!4499222 m!5229095))

(declare-fun m!5229101 () Bool)

(assert (=> b!4499222 m!5229101))

(declare-fun m!5229103 () Bool)

(assert (=> b!4499217 m!5229103))

(declare-fun m!5229105 () Bool)

(assert (=> b!4499217 m!5229105))

(assert (=> b!4499217 m!5229105))

(declare-fun m!5229107 () Bool)

(assert (=> b!4499217 m!5229107))

(declare-fun m!5229109 () Bool)

(assert (=> b!4499217 m!5229109))

(assert (=> b!4499220 m!5227543))

(assert (=> b!4499220 m!5228705))

(assert (=> b!4499223 m!5229105))

(assert (=> b!4499223 m!5229105))

(assert (=> b!4499223 m!5229107))

(declare-fun m!5229111 () Bool)

(assert (=> b!4499224 m!5229111))

(assert (=> d!1380214 d!1380500))

(assert (=> d!1380214 d!1380216))

(declare-fun d!1380510 () Bool)

(assert (=> d!1380510 (contains!13210 (extractMap!1180 (toList!4255 lt!1679939)) key!3287)))

(assert (=> d!1380510 true))

(declare-fun _$34!619 () Unit!91740)

(assert (=> d!1380510 (= (choose!29108 lt!1679939 key!3287 hashF!1107) _$34!619)))

(declare-fun bs!835492 () Bool)

(assert (= bs!835492 d!1380510))

(assert (=> bs!835492 m!5227543))

(assert (=> bs!835492 m!5227543))

(assert (=> bs!835492 m!5228171))

(assert (=> d!1380214 d!1380510))

(declare-fun d!1380528 () Bool)

(declare-fun res!1870353 () Bool)

(declare-fun e!2802593 () Bool)

(assert (=> d!1380528 (=> res!1870353 e!2802593)))

(assert (=> d!1380528 (= res!1870353 ((_ is Nil!50541) (toList!4255 lt!1679939)))))

(assert (=> d!1380528 (= (forall!10173 (toList!4255 lt!1679939) lambda!168540) e!2802593)))

(declare-fun b!4499247 () Bool)

(declare-fun e!2802594 () Bool)

(assert (=> b!4499247 (= e!2802593 e!2802594)))

(declare-fun res!1870354 () Bool)

(assert (=> b!4499247 (=> (not res!1870354) (not e!2802594))))

(assert (=> b!4499247 (= res!1870354 (dynLambda!21105 lambda!168540 (h!56360 (toList!4255 lt!1679939))))))

(declare-fun b!4499248 () Bool)

(assert (=> b!4499248 (= e!2802594 (forall!10173 (t!357623 (toList!4255 lt!1679939)) lambda!168540))))

(assert (= (and d!1380528 (not res!1870353)) b!4499247))

(assert (= (and b!4499247 res!1870354) b!4499248))

(declare-fun b_lambda!152225 () Bool)

(assert (=> (not b_lambda!152225) (not b!4499247)))

(declare-fun m!5229137 () Bool)

(assert (=> b!4499247 m!5229137))

(declare-fun m!5229139 () Bool)

(assert (=> b!4499248 m!5229139))

(assert (=> d!1380214 d!1380528))

(declare-fun d!1380530 () Bool)

(declare-fun e!2802596 () Bool)

(assert (=> d!1380530 e!2802596))

(declare-fun res!1870355 () Bool)

(assert (=> d!1380530 (=> res!1870355 e!2802596)))

(declare-fun lt!1680582 () Bool)

(assert (=> d!1380530 (= res!1870355 (not lt!1680582))))

(declare-fun lt!1680583 () Bool)

(assert (=> d!1380530 (= lt!1680582 lt!1680583)))

(declare-fun lt!1680585 () Unit!91740)

(declare-fun e!2802595 () Unit!91740)

(assert (=> d!1380530 (= lt!1680585 e!2802595)))

(declare-fun c!766861 () Bool)

(assert (=> d!1380530 (= c!766861 lt!1680583)))

(assert (=> d!1380530 (= lt!1680583 (containsKey!1679 (toList!4255 lt!1680141) (_1!28760 lt!1679924)))))

(assert (=> d!1380530 (= (contains!13209 lt!1680141 (_1!28760 lt!1679924)) lt!1680582)))

(declare-fun b!4499249 () Bool)

(declare-fun lt!1680584 () Unit!91740)

(assert (=> b!4499249 (= e!2802595 lt!1680584)))

(assert (=> b!4499249 (= lt!1680584 (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lt!1680141) (_1!28760 lt!1679924)))))

(assert (=> b!4499249 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680141) (_1!28760 lt!1679924)))))

(declare-fun b!4499250 () Bool)

(declare-fun Unit!91872 () Unit!91740)

(assert (=> b!4499250 (= e!2802595 Unit!91872)))

(declare-fun b!4499251 () Bool)

(assert (=> b!4499251 (= e!2802596 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1680141) (_1!28760 lt!1679924))))))

(assert (= (and d!1380530 c!766861) b!4499249))

(assert (= (and d!1380530 (not c!766861)) b!4499250))

(assert (= (and d!1380530 (not res!1870355)) b!4499251))

(declare-fun m!5229149 () Bool)

(assert (=> d!1380530 m!5229149))

(declare-fun m!5229153 () Bool)

(assert (=> b!4499249 m!5229153))

(assert (=> b!4499249 m!5228061))

(assert (=> b!4499249 m!5228061))

(declare-fun m!5229157 () Bool)

(assert (=> b!4499249 m!5229157))

(assert (=> b!4499251 m!5228061))

(assert (=> b!4499251 m!5228061))

(assert (=> b!4499251 m!5229157))

(assert (=> d!1380182 d!1380530))

(declare-fun d!1380532 () Bool)

(declare-fun c!766862 () Bool)

(assert (=> d!1380532 (= c!766862 (and ((_ is Cons!50541) lt!1680139) (= (_1!28760 (h!56360 lt!1680139)) (_1!28760 lt!1679924))))))

(declare-fun e!2802597 () Option!11044)

(assert (=> d!1380532 (= (getValueByKey!1024 lt!1680139 (_1!28760 lt!1679924)) e!2802597)))

(declare-fun b!4499255 () Bool)

(declare-fun e!2802598 () Option!11044)

(assert (=> b!4499255 (= e!2802598 None!11043)))

(declare-fun b!4499253 () Bool)

(assert (=> b!4499253 (= e!2802597 e!2802598)))

(declare-fun c!766863 () Bool)

(assert (=> b!4499253 (= c!766863 (and ((_ is Cons!50541) lt!1680139) (not (= (_1!28760 (h!56360 lt!1680139)) (_1!28760 lt!1679924)))))))

(declare-fun b!4499254 () Bool)

(assert (=> b!4499254 (= e!2802598 (getValueByKey!1024 (t!357623 lt!1680139) (_1!28760 lt!1679924)))))

(declare-fun b!4499252 () Bool)

(assert (=> b!4499252 (= e!2802597 (Some!11043 (_2!28760 (h!56360 lt!1680139))))))

(assert (= (and d!1380532 c!766862) b!4499252))

(assert (= (and d!1380532 (not c!766862)) b!4499253))

(assert (= (and b!4499253 c!766863) b!4499254))

(assert (= (and b!4499253 (not c!766863)) b!4499255))

(declare-fun m!5229179 () Bool)

(assert (=> b!4499254 m!5229179))

(assert (=> d!1380182 d!1380532))

(declare-fun d!1380534 () Bool)

(assert (=> d!1380534 (= (getValueByKey!1024 lt!1680139 (_1!28760 lt!1679924)) (Some!11043 (_2!28760 lt!1679924)))))

(declare-fun lt!1680586 () Unit!91740)

(assert (=> d!1380534 (= lt!1680586 (choose!29116 lt!1680139 (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(declare-fun e!2802599 () Bool)

(assert (=> d!1380534 e!2802599))

(declare-fun res!1870356 () Bool)

(assert (=> d!1380534 (=> (not res!1870356) (not e!2802599))))

(assert (=> d!1380534 (= res!1870356 (isStrictlySorted!397 lt!1680139))))

(assert (=> d!1380534 (= (lemmaContainsTupThenGetReturnValue!632 lt!1680139 (_1!28760 lt!1679924) (_2!28760 lt!1679924)) lt!1680586)))

(declare-fun b!4499256 () Bool)

(declare-fun res!1870357 () Bool)

(assert (=> b!4499256 (=> (not res!1870357) (not e!2802599))))

(assert (=> b!4499256 (= res!1870357 (containsKey!1679 lt!1680139 (_1!28760 lt!1679924)))))

(declare-fun b!4499257 () Bool)

(assert (=> b!4499257 (= e!2802599 (contains!13211 lt!1680139 (tuple2!50933 (_1!28760 lt!1679924) (_2!28760 lt!1679924))))))

(assert (= (and d!1380534 res!1870356) b!4499256))

(assert (= (and b!4499256 res!1870357) b!4499257))

(assert (=> d!1380534 m!5228055))

(declare-fun m!5229183 () Bool)

(assert (=> d!1380534 m!5229183))

(declare-fun m!5229185 () Bool)

(assert (=> d!1380534 m!5229185))

(declare-fun m!5229187 () Bool)

(assert (=> b!4499256 m!5229187))

(declare-fun m!5229189 () Bool)

(assert (=> b!4499257 m!5229189))

(assert (=> d!1380182 d!1380534))

(declare-fun b!4499260 () Bool)

(declare-fun res!1870358 () Bool)

(declare-fun e!2802605 () Bool)

(assert (=> b!4499260 (=> (not res!1870358) (not e!2802605))))

(declare-fun lt!1680588 () List!50665)

(assert (=> b!4499260 (= res!1870358 (containsKey!1679 lt!1680588 (_1!28760 lt!1679924)))))

(declare-fun bm!313142 () Bool)

(declare-fun call!313149 () List!50665)

(declare-fun call!313148 () List!50665)

(assert (=> bm!313142 (= call!313149 call!313148)))

(declare-fun bm!313143 () Bool)

(declare-fun call!313147 () List!50665)

(declare-fun c!766868 () Bool)

(declare-fun e!2802604 () List!50665)

(assert (=> bm!313143 (= call!313147 ($colon$colon!894 e!2802604 (ite c!766868 (h!56360 (toList!4255 lt!1679939)) (tuple2!50933 (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))))

(declare-fun c!766867 () Bool)

(assert (=> bm!313143 (= c!766867 c!766868)))

(declare-fun d!1380538 () Bool)

(assert (=> d!1380538 e!2802605))

(declare-fun res!1870359 () Bool)

(assert (=> d!1380538 (=> (not res!1870359) (not e!2802605))))

(assert (=> d!1380538 (= res!1870359 (isStrictlySorted!397 lt!1680588))))

(declare-fun e!2802603 () List!50665)

(assert (=> d!1380538 (= lt!1680588 e!2802603)))

(assert (=> d!1380538 (= c!766868 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (bvslt (_1!28760 (h!56360 (toList!4255 lt!1679939))) (_1!28760 lt!1679924))))))

(assert (=> d!1380538 (isStrictlySorted!397 (toList!4255 lt!1679939))))

(assert (=> d!1380538 (= (insertStrictlySorted!374 (toList!4255 lt!1679939) (_1!28760 lt!1679924) (_2!28760 lt!1679924)) lt!1680588)))

(declare-fun b!4499261 () Bool)

(assert (=> b!4499261 (= e!2802604 (insertStrictlySorted!374 (t!357623 (toList!4255 lt!1679939)) (_1!28760 lt!1679924) (_2!28760 lt!1679924)))))

(declare-fun b!4499262 () Bool)

(declare-fun e!2802601 () List!50665)

(assert (=> b!4499262 (= e!2802603 e!2802601)))

(declare-fun c!766866 () Bool)

(assert (=> b!4499262 (= c!766866 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (= (_1!28760 (h!56360 (toList!4255 lt!1679939))) (_1!28760 lt!1679924))))))

(declare-fun b!4499263 () Bool)

(assert (=> b!4499263 (= e!2802603 call!313147)))

(declare-fun b!4499264 () Bool)

(declare-fun e!2802602 () List!50665)

(assert (=> b!4499264 (= e!2802602 call!313149)))

(declare-fun b!4499265 () Bool)

(assert (=> b!4499265 (= e!2802602 call!313149)))

(declare-fun b!4499266 () Bool)

(declare-fun c!766865 () Bool)

(assert (=> b!4499266 (= e!2802604 (ite c!766866 (t!357623 (toList!4255 lt!1679939)) (ite c!766865 (Cons!50541 (h!56360 (toList!4255 lt!1679939)) (t!357623 (toList!4255 lt!1679939))) Nil!50541)))))

(declare-fun b!4499267 () Bool)

(assert (=> b!4499267 (= e!2802605 (contains!13211 lt!1680588 (tuple2!50933 (_1!28760 lt!1679924) (_2!28760 lt!1679924))))))

(declare-fun bm!313144 () Bool)

(assert (=> bm!313144 (= call!313148 call!313147)))

(declare-fun b!4499268 () Bool)

(assert (=> b!4499268 (= c!766865 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (bvsgt (_1!28760 (h!56360 (toList!4255 lt!1679939))) (_1!28760 lt!1679924))))))

(assert (=> b!4499268 (= e!2802601 e!2802602)))

(declare-fun b!4499269 () Bool)

(assert (=> b!4499269 (= e!2802601 call!313148)))

(assert (= (and d!1380538 c!766868) b!4499263))

(assert (= (and d!1380538 (not c!766868)) b!4499262))

(assert (= (and b!4499262 c!766866) b!4499269))

(assert (= (and b!4499262 (not c!766866)) b!4499268))

(assert (= (and b!4499268 c!766865) b!4499264))

(assert (= (and b!4499268 (not c!766865)) b!4499265))

(assert (= (or b!4499264 b!4499265) bm!313142))

(assert (= (or b!4499269 bm!313142) bm!313144))

(assert (= (or b!4499263 bm!313144) bm!313143))

(assert (= (and bm!313143 c!766867) b!4499261))

(assert (= (and bm!313143 (not c!766867)) b!4499266))

(assert (= (and d!1380538 res!1870359) b!4499260))

(assert (= (and b!4499260 res!1870358) b!4499267))

(declare-fun m!5229191 () Bool)

(assert (=> b!4499260 m!5229191))

(declare-fun m!5229193 () Bool)

(assert (=> b!4499261 m!5229193))

(declare-fun m!5229195 () Bool)

(assert (=> d!1380538 m!5229195))

(assert (=> d!1380538 m!5228593))

(declare-fun m!5229197 () Bool)

(assert (=> bm!313143 m!5229197))

(declare-fun m!5229199 () Bool)

(assert (=> b!4499267 m!5229199))

(assert (=> d!1380182 d!1380538))

(declare-fun d!1380540 () Bool)

(declare-fun res!1870360 () Bool)

(declare-fun e!2802606 () Bool)

(assert (=> d!1380540 (=> res!1870360 e!2802606)))

(assert (=> d!1380540 (= res!1870360 ((_ is Nil!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380540 (= (forall!10173 (toList!4255 lm!1477) lambda!168524) e!2802606)))

(declare-fun b!4499270 () Bool)

(declare-fun e!2802607 () Bool)

(assert (=> b!4499270 (= e!2802606 e!2802607)))

(declare-fun res!1870361 () Bool)

(assert (=> b!4499270 (=> (not res!1870361) (not e!2802607))))

(assert (=> b!4499270 (= res!1870361 (dynLambda!21105 lambda!168524 (h!56360 (toList!4255 lm!1477))))))

(declare-fun b!4499271 () Bool)

(assert (=> b!4499271 (= e!2802607 (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168524))))

(assert (= (and d!1380540 (not res!1870360)) b!4499270))

(assert (= (and b!4499270 res!1870361) b!4499271))

(declare-fun b_lambda!152227 () Bool)

(assert (=> (not b_lambda!152227) (not b!4499270)))

(declare-fun m!5229209 () Bool)

(assert (=> b!4499270 m!5229209))

(declare-fun m!5229211 () Bool)

(assert (=> b!4499271 m!5229211))

(assert (=> d!1380150 d!1380540))

(declare-fun d!1380544 () Bool)

(declare-fun res!1870365 () Bool)

(declare-fun e!2802612 () Bool)

(assert (=> d!1380544 (=> res!1870365 e!2802612)))

(declare-fun e!2802611 () Bool)

(assert (=> d!1380544 (= res!1870365 e!2802611)))

(declare-fun res!1870366 () Bool)

(assert (=> d!1380544 (=> (not res!1870366) (not e!2802611))))

(assert (=> d!1380544 (= res!1870366 ((_ is Cons!50541) (t!357623 (toList!4255 lt!1679939))))))

(assert (=> d!1380544 (= (containsKeyBiggerList!104 (t!357623 (toList!4255 lt!1679939)) key!3287) e!2802612)))

(declare-fun b!4499277 () Bool)

(assert (=> b!4499277 (= e!2802611 (containsKey!1676 (_2!28760 (h!56360 (t!357623 (toList!4255 lt!1679939)))) key!3287))))

(declare-fun b!4499278 () Bool)

(declare-fun e!2802613 () Bool)

(assert (=> b!4499278 (= e!2802612 e!2802613)))

(declare-fun res!1870367 () Bool)

(assert (=> b!4499278 (=> (not res!1870367) (not e!2802613))))

(assert (=> b!4499278 (= res!1870367 ((_ is Cons!50541) (t!357623 (toList!4255 lt!1679939))))))

(declare-fun b!4499279 () Bool)

(assert (=> b!4499279 (= e!2802613 (containsKeyBiggerList!104 (t!357623 (t!357623 (toList!4255 lt!1679939))) key!3287))))

(assert (= (and d!1380544 res!1870366) b!4499277))

(assert (= (and d!1380544 (not res!1870365)) b!4499278))

(assert (= (and b!4499278 res!1870367) b!4499279))

(declare-fun m!5229213 () Bool)

(assert (=> b!4499277 m!5229213))

(declare-fun m!5229215 () Bool)

(assert (=> b!4499279 m!5229215))

(assert (=> b!4498616 d!1380544))

(declare-fun d!1380546 () Bool)

(assert (=> d!1380546 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287))))

(declare-fun lt!1680610 () Unit!91740)

(assert (=> d!1380546 (= lt!1680610 (choose!29109 (toList!4256 lt!1679928) key!3287))))

(assert (=> d!1380546 (invariantList!983 (toList!4256 lt!1679928))))

(assert (=> d!1380546 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 lt!1679928) key!3287) lt!1680610)))

(declare-fun bs!835508 () Bool)

(assert (= bs!835508 d!1380546))

(assert (=> bs!835508 m!5228135))

(assert (=> bs!835508 m!5228135))

(assert (=> bs!835508 m!5228137))

(declare-fun m!5229217 () Bool)

(assert (=> bs!835508 m!5229217))

(assert (=> bs!835508 m!5228437))

(assert (=> b!4498621 d!1380546))

(declare-fun d!1380548 () Bool)

(assert (=> d!1380548 (= (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287)) (not (isEmpty!28598 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287))))))

(declare-fun bs!835512 () Bool)

(assert (= bs!835512 d!1380548))

(assert (=> bs!835512 m!5228135))

(declare-fun m!5229219 () Bool)

(assert (=> bs!835512 m!5229219))

(assert (=> b!4498621 d!1380548))

(declare-fun b!4499282 () Bool)

(declare-fun e!2802615 () Option!11045)

(assert (=> b!4499282 (= e!2802615 (getValueByKey!1025 (t!357622 (toList!4256 lt!1679928)) key!3287))))

(declare-fun b!4499280 () Bool)

(declare-fun e!2802614 () Option!11045)

(assert (=> b!4499280 (= e!2802614 (Some!11044 (_2!28759 (h!56359 (toList!4256 lt!1679928)))))))

(declare-fun b!4499281 () Bool)

(assert (=> b!4499281 (= e!2802614 e!2802615)))

(declare-fun c!766871 () Bool)

(assert (=> b!4499281 (= c!766871 (and ((_ is Cons!50540) (toList!4256 lt!1679928)) (not (= (_1!28759 (h!56359 (toList!4256 lt!1679928))) key!3287))))))

(declare-fun d!1380550 () Bool)

(declare-fun c!766870 () Bool)

(assert (=> d!1380550 (= c!766870 (and ((_ is Cons!50540) (toList!4256 lt!1679928)) (= (_1!28759 (h!56359 (toList!4256 lt!1679928))) key!3287)))))

(assert (=> d!1380550 (= (getValueByKey!1025 (toList!4256 lt!1679928) key!3287) e!2802614)))

(declare-fun b!4499283 () Bool)

(assert (=> b!4499283 (= e!2802615 None!11044)))

(assert (= (and d!1380550 c!766870) b!4499280))

(assert (= (and d!1380550 (not c!766870)) b!4499281))

(assert (= (and b!4499281 c!766871) b!4499282))

(assert (= (and b!4499281 (not c!766871)) b!4499283))

(declare-fun m!5229221 () Bool)

(assert (=> b!4499282 m!5229221))

(assert (=> b!4498621 d!1380550))

(declare-fun d!1380552 () Bool)

(assert (=> d!1380552 (contains!13213 (getKeysList!431 (toList!4256 lt!1679928)) key!3287)))

(declare-fun lt!1680611 () Unit!91740)

(assert (=> d!1380552 (= lt!1680611 (choose!29110 (toList!4256 lt!1679928) key!3287))))

(assert (=> d!1380552 (invariantList!983 (toList!4256 lt!1679928))))

(assert (=> d!1380552 (= (lemmaInListThenGetKeysListContains!427 (toList!4256 lt!1679928) key!3287) lt!1680611)))

(declare-fun bs!835517 () Bool)

(assert (= bs!835517 d!1380552))

(assert (=> bs!835517 m!5228141))

(assert (=> bs!835517 m!5228141))

(declare-fun m!5229223 () Bool)

(assert (=> bs!835517 m!5229223))

(declare-fun m!5229225 () Bool)

(assert (=> bs!835517 m!5229225))

(assert (=> bs!835517 m!5228437))

(assert (=> b!4498621 d!1380552))

(declare-fun d!1380554 () Bool)

(declare-fun c!766872 () Bool)

(assert (=> d!1380554 (= c!766872 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (= (_1!28760 (h!56360 (toList!4255 lm!1477))) hash!344)))))

(declare-fun e!2802616 () Option!11044)

(assert (=> d!1380554 (= (getValueByKey!1024 (toList!4255 lm!1477) hash!344) e!2802616)))

(declare-fun b!4499287 () Bool)

(declare-fun e!2802617 () Option!11044)

(assert (=> b!4499287 (= e!2802617 None!11043)))

(declare-fun b!4499285 () Bool)

(assert (=> b!4499285 (= e!2802616 e!2802617)))

(declare-fun c!766873 () Bool)

(assert (=> b!4499285 (= c!766873 (and ((_ is Cons!50541) (toList!4255 lm!1477)) (not (= (_1!28760 (h!56360 (toList!4255 lm!1477))) hash!344))))))

(declare-fun b!4499286 () Bool)

(assert (=> b!4499286 (= e!2802617 (getValueByKey!1024 (t!357623 (toList!4255 lm!1477)) hash!344))))

(declare-fun b!4499284 () Bool)

(assert (=> b!4499284 (= e!2802616 (Some!11043 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))

(assert (= (and d!1380554 c!766872) b!4499284))

(assert (= (and d!1380554 (not c!766872)) b!4499285))

(assert (= (and b!4499285 c!766873) b!4499286))

(assert (= (and b!4499285 (not c!766873)) b!4499287))

(declare-fun m!5229227 () Bool)

(assert (=> b!4499286 m!5229227))

(assert (=> b!4498349 d!1380554))

(declare-fun b!4499288 () Bool)

(declare-fun e!2802621 () Unit!91740)

(declare-fun lt!1680617 () Unit!91740)

(assert (=> b!4499288 (= e!2802621 lt!1680617)))

(declare-fun lt!1680618 () Unit!91740)

(assert (=> b!4499288 (= lt!1680618 (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 (extractMap!1180 (toList!4255 lm!1477))) key!3287))))

(assert (=> b!4499288 (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (toList!4255 lm!1477))) key!3287))))

(declare-fun lt!1680612 () Unit!91740)

(assert (=> b!4499288 (= lt!1680612 lt!1680618)))

(assert (=> b!4499288 (= lt!1680617 (lemmaInListThenGetKeysListContains!427 (toList!4256 (extractMap!1180 (toList!4255 lm!1477))) key!3287))))

(declare-fun call!313153 () Bool)

(assert (=> b!4499288 call!313153))

(declare-fun b!4499289 () Bool)

(declare-fun e!2802622 () Bool)

(assert (=> b!4499289 (= e!2802622 (contains!13213 (keys!17522 (extractMap!1180 (toList!4255 lm!1477))) key!3287))))

(declare-fun b!4499290 () Bool)

(declare-fun e!2802618 () Unit!91740)

(assert (=> b!4499290 (= e!2802621 e!2802618)))

(declare-fun c!766874 () Bool)

(assert (=> b!4499290 (= c!766874 call!313153)))

(declare-fun b!4499291 () Bool)

(declare-fun e!2802620 () List!50667)

(assert (=> b!4499291 (= e!2802620 (keys!17522 (extractMap!1180 (toList!4255 lm!1477))))))

(declare-fun b!4499292 () Bool)

(declare-fun Unit!91878 () Unit!91740)

(assert (=> b!4499292 (= e!2802618 Unit!91878)))

(declare-fun d!1380556 () Bool)

(declare-fun e!2802623 () Bool)

(assert (=> d!1380556 e!2802623))

(declare-fun res!1870368 () Bool)

(assert (=> d!1380556 (=> res!1870368 e!2802623)))

(declare-fun e!2802619 () Bool)

(assert (=> d!1380556 (= res!1870368 e!2802619)))

(declare-fun res!1870370 () Bool)

(assert (=> d!1380556 (=> (not res!1870370) (not e!2802619))))

(declare-fun lt!1680615 () Bool)

(assert (=> d!1380556 (= res!1870370 (not lt!1680615))))

(declare-fun lt!1680616 () Bool)

(assert (=> d!1380556 (= lt!1680615 lt!1680616)))

(declare-fun lt!1680613 () Unit!91740)

(assert (=> d!1380556 (= lt!1680613 e!2802621)))

(declare-fun c!766875 () Bool)

(assert (=> d!1380556 (= c!766875 lt!1680616)))

(assert (=> d!1380556 (= lt!1680616 (containsKey!1680 (toList!4256 (extractMap!1180 (toList!4255 lm!1477))) key!3287))))

(assert (=> d!1380556 (= (contains!13210 (extractMap!1180 (toList!4255 lm!1477)) key!3287) lt!1680615)))

(declare-fun b!4499293 () Bool)

(assert (=> b!4499293 false))

(declare-fun lt!1680619 () Unit!91740)

(declare-fun lt!1680614 () Unit!91740)

(assert (=> b!4499293 (= lt!1680619 lt!1680614)))

(assert (=> b!4499293 (containsKey!1680 (toList!4256 (extractMap!1180 (toList!4255 lm!1477))) key!3287)))

(assert (=> b!4499293 (= lt!1680614 (lemmaInGetKeysListThenContainsKey!430 (toList!4256 (extractMap!1180 (toList!4255 lm!1477))) key!3287))))

(declare-fun Unit!91879 () Unit!91740)

(assert (=> b!4499293 (= e!2802618 Unit!91879)))

(declare-fun b!4499294 () Bool)

(assert (=> b!4499294 (= e!2802623 e!2802622)))

(declare-fun res!1870369 () Bool)

(assert (=> b!4499294 (=> (not res!1870369) (not e!2802622))))

(assert (=> b!4499294 (= res!1870369 (isDefined!8332 (getValueByKey!1025 (toList!4256 (extractMap!1180 (toList!4255 lm!1477))) key!3287)))))

(declare-fun b!4499295 () Bool)

(assert (=> b!4499295 (= e!2802620 (getKeysList!431 (toList!4256 (extractMap!1180 (toList!4255 lm!1477)))))))

(declare-fun bm!313148 () Bool)

(assert (=> bm!313148 (= call!313153 (contains!13213 e!2802620 key!3287))))

(declare-fun c!766876 () Bool)

(assert (=> bm!313148 (= c!766876 c!766875)))

(declare-fun b!4499296 () Bool)

(assert (=> b!4499296 (= e!2802619 (not (contains!13213 (keys!17522 (extractMap!1180 (toList!4255 lm!1477))) key!3287)))))

(assert (= (and d!1380556 c!766875) b!4499288))

(assert (= (and d!1380556 (not c!766875)) b!4499290))

(assert (= (and b!4499290 c!766874) b!4499293))

(assert (= (and b!4499290 (not c!766874)) b!4499292))

(assert (= (or b!4499288 b!4499290) bm!313148))

(assert (= (and bm!313148 c!766876) b!4499295))

(assert (= (and bm!313148 (not c!766876)) b!4499291))

(assert (= (and d!1380556 res!1870370) b!4499296))

(assert (= (and d!1380556 (not res!1870368)) b!4499294))

(assert (= (and b!4499294 res!1870369) b!4499289))

(declare-fun m!5229229 () Bool)

(assert (=> bm!313148 m!5229229))

(assert (=> b!4499289 m!5227575))

(declare-fun m!5229231 () Bool)

(assert (=> b!4499289 m!5229231))

(assert (=> b!4499289 m!5229231))

(declare-fun m!5229233 () Bool)

(assert (=> b!4499289 m!5229233))

(declare-fun m!5229235 () Bool)

(assert (=> d!1380556 m!5229235))

(assert (=> b!4499296 m!5227575))

(assert (=> b!4499296 m!5229231))

(assert (=> b!4499296 m!5229231))

(assert (=> b!4499296 m!5229233))

(assert (=> b!4499293 m!5229235))

(declare-fun m!5229237 () Bool)

(assert (=> b!4499293 m!5229237))

(declare-fun m!5229239 () Bool)

(assert (=> b!4499288 m!5229239))

(declare-fun m!5229241 () Bool)

(assert (=> b!4499288 m!5229241))

(assert (=> b!4499288 m!5229241))

(declare-fun m!5229243 () Bool)

(assert (=> b!4499288 m!5229243))

(declare-fun m!5229245 () Bool)

(assert (=> b!4499288 m!5229245))

(assert (=> b!4499291 m!5227575))

(assert (=> b!4499291 m!5229231))

(assert (=> b!4499294 m!5229241))

(assert (=> b!4499294 m!5229241))

(assert (=> b!4499294 m!5229243))

(declare-fun m!5229247 () Bool)

(assert (=> b!4499295 m!5229247))

(assert (=> d!1380096 d!1380556))

(assert (=> d!1380096 d!1380124))

(declare-fun d!1380558 () Bool)

(assert (=> d!1380558 (not (contains!13210 (extractMap!1180 (toList!4255 lm!1477)) key!3287))))

(assert (=> d!1380558 true))

(declare-fun _$26!314 () Unit!91740)

(assert (=> d!1380558 (= (choose!29102 lm!1477 key!3287 hashF!1107) _$26!314)))

(declare-fun bs!835568 () Bool)

(assert (= bs!835568 d!1380558))

(assert (=> bs!835568 m!5227575))

(assert (=> bs!835568 m!5227575))

(assert (=> bs!835568 m!5227773))

(assert (=> d!1380096 d!1380558))

(declare-fun d!1380564 () Bool)

(declare-fun res!1870374 () Bool)

(declare-fun e!2802629 () Bool)

(assert (=> d!1380564 (=> res!1870374 e!2802629)))

(assert (=> d!1380564 (= res!1870374 ((_ is Nil!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380564 (= (forall!10173 (toList!4255 lm!1477) lambda!168499) e!2802629)))

(declare-fun b!4499308 () Bool)

(declare-fun e!2802630 () Bool)

(assert (=> b!4499308 (= e!2802629 e!2802630)))

(declare-fun res!1870375 () Bool)

(assert (=> b!4499308 (=> (not res!1870375) (not e!2802630))))

(assert (=> b!4499308 (= res!1870375 (dynLambda!21105 lambda!168499 (h!56360 (toList!4255 lm!1477))))))

(declare-fun b!4499309 () Bool)

(assert (=> b!4499309 (= e!2802630 (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168499))))

(assert (= (and d!1380564 (not res!1870374)) b!4499308))

(assert (= (and b!4499308 res!1870375) b!4499309))

(declare-fun b_lambda!152229 () Bool)

(assert (=> (not b_lambda!152229) (not b!4499308)))

(declare-fun m!5229291 () Bool)

(assert (=> b!4499308 m!5229291))

(declare-fun m!5229293 () Bool)

(assert (=> b!4499309 m!5229293))

(assert (=> d!1380096 d!1380564))

(declare-fun d!1380566 () Bool)

(declare-fun res!1870376 () Bool)

(declare-fun e!2802631 () Bool)

(assert (=> d!1380566 (=> res!1870376 e!2802631)))

(assert (=> d!1380566 (= res!1870376 (and ((_ is Cons!50540) (_2!28760 (h!56360 (toList!4255 lt!1679939)))) (= (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lt!1679939))))) key!3287)))))

(assert (=> d!1380566 (= (containsKey!1676 (_2!28760 (h!56360 (toList!4255 lt!1679939))) key!3287) e!2802631)))

(declare-fun b!4499310 () Bool)

(declare-fun e!2802632 () Bool)

(assert (=> b!4499310 (= e!2802631 e!2802632)))

(declare-fun res!1870377 () Bool)

(assert (=> b!4499310 (=> (not res!1870377) (not e!2802632))))

(assert (=> b!4499310 (= res!1870377 ((_ is Cons!50540) (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))

(declare-fun b!4499311 () Bool)

(assert (=> b!4499311 (= e!2802632 (containsKey!1676 (t!357622 (_2!28760 (h!56360 (toList!4255 lt!1679939)))) key!3287))))

(assert (= (and d!1380566 (not res!1870376)) b!4499310))

(assert (= (and b!4499310 res!1870377) b!4499311))

(declare-fun m!5229295 () Bool)

(assert (=> b!4499311 m!5229295))

(assert (=> b!4498614 d!1380566))

(declare-fun bs!835586 () Bool)

(declare-fun b!4499313 () Bool)

(assert (= bs!835586 (and b!4499313 b!4498778)))

(declare-fun lambda!168697 () Int)

(assert (=> bs!835586 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680335) (= lambda!168697 lambda!168616))))

(assert (=> bs!835586 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168697 lambda!168615))))

(declare-fun bs!835587 () Bool)

(assert (= bs!835587 (and b!4499313 b!4498765)))

(assert (=> bs!835587 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168697 lambda!168599))))

(declare-fun bs!835588 () Bool)

(assert (= bs!835588 (and b!4499313 b!4499191)))

(assert (=> bs!835588 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168697 lambda!168676))))

(declare-fun bs!835589 () Bool)

(assert (= bs!835589 (and b!4499313 d!1380270)))

(assert (=> bs!835589 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680297) (= lambda!168697 lambda!168606))))

(declare-fun bs!835590 () Bool)

(assert (= bs!835590 (and b!4499313 d!1380048)))

(assert (=> bs!835590 (not (= lambda!168697 lambda!168488))))

(assert (=> bs!835587 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680303) (= lambda!168697 lambda!168601))))

(assert (=> bs!835588 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680537) (= lambda!168697 lambda!168677))))

(declare-fun bs!835591 () Bool)

(assert (= bs!835591 (and b!4499313 b!4498734)))

(assert (=> bs!835591 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168697 lambda!168577))))

(declare-fun bs!835592 () Bool)

(assert (= bs!835592 (and b!4499313 b!4498766)))

(assert (=> bs!835592 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168697 lambda!168597))))

(declare-fun bs!835593 () Bool)

(assert (= bs!835593 (and b!4499313 d!1380482)))

(assert (=> bs!835593 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680531) (= lambda!168697 lambda!168681))))

(declare-fun bs!835594 () Bool)

(assert (= bs!835594 (and b!4499313 d!1380246)))

(assert (=> bs!835594 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680234) (= lambda!168697 lambda!168579))))

(declare-fun bs!835595 () Bool)

(assert (= bs!835595 (and b!4499313 b!4498735)))

(assert (=> bs!835595 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168697 lambda!168576))))

(declare-fun bs!835596 () Bool)

(assert (= bs!835596 (and b!4499313 b!4499192)))

(assert (=> bs!835596 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168697 lambda!168675))))

(declare-fun bs!835597 () Bool)

(assert (= bs!835597 (and b!4499313 b!4498779)))

(assert (=> bs!835597 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168697 lambda!168614))))

(declare-fun bs!835598 () Bool)

(assert (= bs!835598 (and b!4499313 d!1380274)))

(assert (=> bs!835598 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680329) (= lambda!168697 lambda!168617))))

(assert (=> bs!835591 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680240) (= lambda!168697 lambda!168578))))

(assert (=> b!4499313 true))

(declare-fun bs!835599 () Bool)

(declare-fun b!4499312 () Bool)

(assert (= bs!835599 (and b!4499312 b!4498778)))

(declare-fun lambda!168698 () Int)

(assert (=> bs!835599 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680335) (= lambda!168698 lambda!168616))))

(assert (=> bs!835599 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168698 lambda!168615))))

(declare-fun bs!835600 () Bool)

(assert (= bs!835600 (and b!4499312 b!4498765)))

(assert (=> bs!835600 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168698 lambda!168599))))

(declare-fun bs!835601 () Bool)

(assert (= bs!835601 (and b!4499312 b!4499191)))

(assert (=> bs!835601 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168698 lambda!168676))))

(declare-fun bs!835602 () Bool)

(assert (= bs!835602 (and b!4499312 d!1380270)))

(assert (=> bs!835602 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680297) (= lambda!168698 lambda!168606))))

(declare-fun bs!835603 () Bool)

(assert (= bs!835603 (and b!4499312 d!1380048)))

(assert (=> bs!835603 (not (= lambda!168698 lambda!168488))))

(assert (=> bs!835600 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680303) (= lambda!168698 lambda!168601))))

(assert (=> bs!835601 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680537) (= lambda!168698 lambda!168677))))

(declare-fun bs!835604 () Bool)

(assert (= bs!835604 (and b!4499312 b!4498734)))

(assert (=> bs!835604 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168698 lambda!168577))))

(declare-fun bs!835605 () Bool)

(assert (= bs!835605 (and b!4499312 b!4498766)))

(assert (=> bs!835605 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168698 lambda!168597))))

(declare-fun bs!835606 () Bool)

(assert (= bs!835606 (and b!4499312 d!1380246)))

(assert (=> bs!835606 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680234) (= lambda!168698 lambda!168579))))

(declare-fun bs!835607 () Bool)

(assert (= bs!835607 (and b!4499312 b!4498735)))

(assert (=> bs!835607 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168698 lambda!168576))))

(declare-fun bs!835608 () Bool)

(assert (= bs!835608 (and b!4499312 b!4499192)))

(assert (=> bs!835608 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168698 lambda!168675))))

(declare-fun bs!835609 () Bool)

(assert (= bs!835609 (and b!4499312 b!4498779)))

(assert (=> bs!835609 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168698 lambda!168614))))

(declare-fun bs!835610 () Bool)

(assert (= bs!835610 (and b!4499312 d!1380482)))

(assert (=> bs!835610 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680531) (= lambda!168698 lambda!168681))))

(declare-fun bs!835611 () Bool)

(assert (= bs!835611 (and b!4499312 b!4499313)))

(assert (=> bs!835611 (= lambda!168698 lambda!168697)))

(declare-fun bs!835612 () Bool)

(assert (= bs!835612 (and b!4499312 d!1380274)))

(assert (=> bs!835612 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680329) (= lambda!168698 lambda!168617))))

(assert (=> bs!835604 (= (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680240) (= lambda!168698 lambda!168578))))

(assert (=> b!4499312 true))

(declare-fun lt!1680644 () ListMap!3517)

(declare-fun lambda!168699 () Int)

(assert (=> bs!835599 (= (= lt!1680644 lt!1680335) (= lambda!168699 lambda!168616))))

(assert (=> bs!835599 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168699 lambda!168615))))

(assert (=> bs!835600 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168699 lambda!168599))))

(assert (=> bs!835601 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168699 lambda!168676))))

(assert (=> bs!835602 (= (= lt!1680644 lt!1680297) (= lambda!168699 lambda!168606))))

(assert (=> bs!835603 (not (= lambda!168699 lambda!168488))))

(assert (=> bs!835600 (= (= lt!1680644 lt!1680303) (= lambda!168699 lambda!168601))))

(assert (=> bs!835601 (= (= lt!1680644 lt!1680537) (= lambda!168699 lambda!168677))))

(assert (=> bs!835604 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168699 lambda!168577))))

(assert (=> bs!835605 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168699 lambda!168597))))

(assert (=> b!4499312 (= (= lt!1680644 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) (= lambda!168699 lambda!168698))))

(assert (=> bs!835606 (= (= lt!1680644 lt!1680234) (= lambda!168699 lambda!168579))))

(assert (=> bs!835607 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168699 lambda!168576))))

(assert (=> bs!835608 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168699 lambda!168675))))

(assert (=> bs!835609 (= (= lt!1680644 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168699 lambda!168614))))

(assert (=> bs!835610 (= (= lt!1680644 lt!1680531) (= lambda!168699 lambda!168681))))

(assert (=> bs!835611 (= (= lt!1680644 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) (= lambda!168699 lambda!168697))))

(assert (=> bs!835612 (= (= lt!1680644 lt!1680329) (= lambda!168699 lambda!168617))))

(assert (=> bs!835604 (= (= lt!1680644 lt!1680240) (= lambda!168699 lambda!168578))))

(assert (=> b!4499312 true))

(declare-fun bs!835613 () Bool)

(declare-fun d!1380568 () Bool)

(assert (= bs!835613 (and d!1380568 b!4498778)))

(declare-fun lambda!168700 () Int)

(declare-fun lt!1680638 () ListMap!3517)

(assert (=> bs!835613 (= (= lt!1680638 lt!1680335) (= lambda!168700 lambda!168616))))

(assert (=> bs!835613 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168700 lambda!168615))))

(declare-fun bs!835614 () Bool)

(assert (= bs!835614 (and d!1380568 b!4498765)))

(assert (=> bs!835614 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168700 lambda!168599))))

(declare-fun bs!835615 () Bool)

(assert (= bs!835615 (and d!1380568 b!4499191)))

(assert (=> bs!835615 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168700 lambda!168676))))

(declare-fun bs!835616 () Bool)

(assert (= bs!835616 (and d!1380568 d!1380270)))

(assert (=> bs!835616 (= (= lt!1680638 lt!1680297) (= lambda!168700 lambda!168606))))

(declare-fun bs!835617 () Bool)

(assert (= bs!835617 (and d!1380568 d!1380048)))

(assert (=> bs!835617 (not (= lambda!168700 lambda!168488))))

(assert (=> bs!835614 (= (= lt!1680638 lt!1680303) (= lambda!168700 lambda!168601))))

(declare-fun bs!835618 () Bool)

(assert (= bs!835618 (and d!1380568 b!4498734)))

(assert (=> bs!835618 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168700 lambda!168577))))

(declare-fun bs!835619 () Bool)

(assert (= bs!835619 (and d!1380568 b!4498766)))

(assert (=> bs!835619 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 lt!1679935)))) (= lambda!168700 lambda!168597))))

(declare-fun bs!835620 () Bool)

(assert (= bs!835620 (and d!1380568 b!4499312)))

(assert (=> bs!835620 (= (= lt!1680638 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) (= lambda!168700 lambda!168698))))

(declare-fun bs!835621 () Bool)

(assert (= bs!835621 (and d!1380568 d!1380246)))

(assert (=> bs!835621 (= (= lt!1680638 lt!1680234) (= lambda!168700 lambda!168579))))

(declare-fun bs!835622 () Bool)

(assert (= bs!835622 (and d!1380568 b!4498735)))

(assert (=> bs!835622 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 lt!1679939)))) (= lambda!168700 lambda!168576))))

(declare-fun bs!835623 () Bool)

(assert (= bs!835623 (and d!1380568 b!4499192)))

(assert (=> bs!835623 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 lm!1477)))) (= lambda!168700 lambda!168675))))

(declare-fun bs!835624 () Bool)

(assert (= bs!835624 (and d!1380568 b!4498779)))

(assert (=> bs!835624 (= (= lt!1680638 (extractMap!1180 (t!357623 (toList!4255 (+!1470 lt!1679939 lt!1679932))))) (= lambda!168700 lambda!168614))))

(assert (=> bs!835615 (= (= lt!1680638 lt!1680537) (= lambda!168700 lambda!168677))))

(assert (=> bs!835620 (= (= lt!1680638 lt!1680644) (= lambda!168700 lambda!168699))))

(declare-fun bs!835625 () Bool)

(assert (= bs!835625 (and d!1380568 d!1380482)))

(assert (=> bs!835625 (= (= lt!1680638 lt!1680531) (= lambda!168700 lambda!168681))))

(declare-fun bs!835626 () Bool)

(assert (= bs!835626 (and d!1380568 b!4499313)))

(assert (=> bs!835626 (= (= lt!1680638 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) (= lambda!168700 lambda!168697))))

(declare-fun bs!835627 () Bool)

(assert (= bs!835627 (and d!1380568 d!1380274)))

(assert (=> bs!835627 (= (= lt!1680638 lt!1680329) (= lambda!168700 lambda!168617))))

(assert (=> bs!835618 (= (= lt!1680638 lt!1680240) (= lambda!168700 lambda!168578))))

(assert (=> d!1380568 true))

(declare-fun call!313155 () Bool)

(declare-fun bm!313149 () Bool)

(declare-fun c!766881 () Bool)

(assert (=> bm!313149 (= call!313155 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) (ite c!766881 lambda!168697 lambda!168698)))))

(declare-fun e!2802635 () Bool)

(assert (=> d!1380568 e!2802635))

(declare-fun res!1870378 () Bool)

(assert (=> d!1380568 (=> (not res!1870378) (not e!2802635))))

(assert (=> d!1380568 (= res!1870378 (forall!10174 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))) lambda!168700))))

(declare-fun e!2802634 () ListMap!3517)

(assert (=> d!1380568 (= lt!1680638 e!2802634)))

(assert (=> d!1380568 (= c!766881 ((_ is Nil!50540) (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))))))

(assert (=> d!1380568 (noDuplicateKeys!1124 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380568 (= (addToMapMapFromBucket!651 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))) (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) lt!1680638)))

(assert (=> b!4499312 (= e!2802634 lt!1680644)))

(declare-fun lt!1680628 () ListMap!3517)

(assert (=> b!4499312 (= lt!1680628 (+!1471 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))))))))

(assert (=> b!4499312 (= lt!1680644 (addToMapMapFromBucket!651 (t!357622 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))) (+!1471 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))))))))

(declare-fun lt!1680648 () Unit!91740)

(declare-fun call!313154 () Unit!91740)

(assert (=> b!4499312 (= lt!1680648 call!313154)))

(assert (=> b!4499312 call!313155))

(declare-fun lt!1680640 () Unit!91740)

(assert (=> b!4499312 (= lt!1680640 lt!1680648)))

(assert (=> b!4499312 (forall!10174 (toList!4256 lt!1680628) lambda!168699)))

(declare-fun lt!1680636 () Unit!91740)

(declare-fun Unit!91880 () Unit!91740)

(assert (=> b!4499312 (= lt!1680636 Unit!91880)))

(assert (=> b!4499312 (forall!10174 (t!357622 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))) lambda!168699)))

(declare-fun lt!1680630 () Unit!91740)

(declare-fun Unit!91881 () Unit!91740)

(assert (=> b!4499312 (= lt!1680630 Unit!91881)))

(declare-fun lt!1680637 () Unit!91740)

(declare-fun Unit!91882 () Unit!91740)

(assert (=> b!4499312 (= lt!1680637 Unit!91882)))

(declare-fun lt!1680633 () Unit!91740)

(assert (=> b!4499312 (= lt!1680633 (forallContained!2428 (toList!4256 lt!1680628) lambda!168699 (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))))))))

(assert (=> b!4499312 (contains!13210 lt!1680628 (_1!28759 (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))))))))

(declare-fun lt!1680641 () Unit!91740)

(declare-fun Unit!91883 () Unit!91740)

(assert (=> b!4499312 (= lt!1680641 Unit!91883)))

(assert (=> b!4499312 (contains!13210 lt!1680644 (_1!28759 (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))))))))

(declare-fun lt!1680632 () Unit!91740)

(declare-fun Unit!91884 () Unit!91740)

(assert (=> b!4499312 (= lt!1680632 Unit!91884)))

(declare-fun call!313156 () Bool)

(assert (=> b!4499312 call!313156))

(declare-fun lt!1680629 () Unit!91740)

(declare-fun Unit!91885 () Unit!91740)

(assert (=> b!4499312 (= lt!1680629 Unit!91885)))

(assert (=> b!4499312 (forall!10174 (toList!4256 lt!1680628) lambda!168699)))

(declare-fun lt!1680647 () Unit!91740)

(declare-fun Unit!91886 () Unit!91740)

(assert (=> b!4499312 (= lt!1680647 Unit!91886)))

(declare-fun lt!1680642 () Unit!91740)

(declare-fun Unit!91887 () Unit!91740)

(assert (=> b!4499312 (= lt!1680642 Unit!91887)))

(declare-fun lt!1680645 () Unit!91740)

(assert (=> b!4499312 (= lt!1680645 (addForallContainsKeyThenBeforeAdding!305 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680644 (_1!28759 (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))))) (_2!28759 (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))))))))

(assert (=> b!4499312 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) lambda!168699)))

(declare-fun lt!1680631 () Unit!91740)

(assert (=> b!4499312 (= lt!1680631 lt!1680645)))

(assert (=> b!4499312 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) lambda!168699)))

(declare-fun lt!1680646 () Unit!91740)

(declare-fun Unit!91888 () Unit!91740)

(assert (=> b!4499312 (= lt!1680646 Unit!91888)))

(declare-fun res!1870379 () Bool)

(assert (=> b!4499312 (= res!1870379 (forall!10174 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))) lambda!168699))))

(declare-fun e!2802633 () Bool)

(assert (=> b!4499312 (=> (not res!1870379) (not e!2802633))))

(assert (=> b!4499312 e!2802633))

(declare-fun lt!1680643 () Unit!91740)

(declare-fun Unit!91889 () Unit!91740)

(assert (=> b!4499312 (= lt!1680643 Unit!91889)))

(assert (=> b!4499313 (= e!2802634 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))))))

(declare-fun lt!1680635 () Unit!91740)

(assert (=> b!4499313 (= lt!1680635 call!313154)))

(assert (=> b!4499313 call!313155))

(declare-fun lt!1680639 () Unit!91740)

(assert (=> b!4499313 (= lt!1680639 lt!1680635)))

(assert (=> b!4499313 call!313156))

(declare-fun lt!1680634 () Unit!91740)

(declare-fun Unit!91890 () Unit!91740)

(assert (=> b!4499313 (= lt!1680634 Unit!91890)))

(declare-fun b!4499314 () Bool)

(declare-fun res!1870380 () Bool)

(assert (=> b!4499314 (=> (not res!1870380) (not e!2802635))))

(assert (=> b!4499314 (= res!1870380 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) lambda!168700))))

(declare-fun b!4499315 () Bool)

(assert (=> b!4499315 (= e!2802633 (forall!10174 (toList!4256 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) lambda!168699))))

(declare-fun bm!313150 () Bool)

(assert (=> bm!313150 (= call!313154 (lemmaContainsAllItsOwnKeys!305 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))))))

(declare-fun bm!313151 () Bool)

(assert (=> bm!313151 (= call!313156 (forall!10174 (ite c!766881 (toList!4256 (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477))))) (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))) (ite c!766881 lambda!168697 lambda!168699)))))

(declare-fun b!4499316 () Bool)

(assert (=> b!4499316 (= e!2802635 (invariantList!983 (toList!4256 lt!1680638)))))

(assert (= (and d!1380568 c!766881) b!4499313))

(assert (= (and d!1380568 (not c!766881)) b!4499312))

(assert (= (and b!4499312 res!1870379) b!4499315))

(assert (= (or b!4499313 b!4499312) bm!313151))

(assert (= (or b!4499313 b!4499312) bm!313149))

(assert (= (or b!4499313 b!4499312) bm!313150))

(assert (= (and d!1380568 res!1870378) b!4499314))

(assert (= (and b!4499314 res!1870380) b!4499316))

(assert (=> b!4499312 m!5228167))

(declare-fun m!5229385 () Bool)

(assert (=> b!4499312 m!5229385))

(assert (=> b!4499312 m!5228167))

(declare-fun m!5229387 () Bool)

(assert (=> b!4499312 m!5229387))

(declare-fun m!5229389 () Bool)

(assert (=> b!4499312 m!5229389))

(declare-fun m!5229391 () Bool)

(assert (=> b!4499312 m!5229391))

(declare-fun m!5229393 () Bool)

(assert (=> b!4499312 m!5229393))

(declare-fun m!5229395 () Bool)

(assert (=> b!4499312 m!5229395))

(declare-fun m!5229397 () Bool)

(assert (=> b!4499312 m!5229397))

(declare-fun m!5229399 () Bool)

(assert (=> b!4499312 m!5229399))

(assert (=> b!4499312 m!5229393))

(declare-fun m!5229401 () Bool)

(assert (=> b!4499312 m!5229401))

(assert (=> b!4499312 m!5229395))

(assert (=> b!4499312 m!5229387))

(declare-fun m!5229403 () Bool)

(assert (=> b!4499312 m!5229403))

(declare-fun m!5229405 () Bool)

(assert (=> bm!313149 m!5229405))

(assert (=> b!4499315 m!5229393))

(assert (=> bm!313150 m!5228167))

(declare-fun m!5229407 () Bool)

(assert (=> bm!313150 m!5229407))

(declare-fun m!5229409 () Bool)

(assert (=> bm!313151 m!5229409))

(declare-fun m!5229411 () Bool)

(assert (=> d!1380568 m!5229411))

(declare-fun m!5229413 () Bool)

(assert (=> d!1380568 m!5229413))

(declare-fun m!5229415 () Bool)

(assert (=> b!4499316 m!5229415))

(declare-fun m!5229417 () Bool)

(assert (=> b!4499314 m!5229417))

(assert (=> b!4498639 d!1380568))

(declare-fun bs!835628 () Bool)

(declare-fun d!1380594 () Bool)

(assert (= bs!835628 (and d!1380594 d!1380272)))

(declare-fun lambda!168701 () Int)

(assert (=> bs!835628 (= lambda!168701 lambda!168611)))

(declare-fun bs!835629 () Bool)

(assert (= bs!835629 (and d!1380594 d!1380202)))

(assert (=> bs!835629 (= lambda!168701 lambda!168536)))

(declare-fun bs!835630 () Bool)

(assert (= bs!835630 (and d!1380594 d!1380184)))

(assert (=> bs!835630 (= lambda!168701 lambda!168533)))

(declare-fun bs!835631 () Bool)

(assert (= bs!835631 (and d!1380594 d!1380180)))

(assert (=> bs!835631 (= lambda!168701 lambda!168532)))

(declare-fun bs!835632 () Bool)

(assert (= bs!835632 (and d!1380594 start!443976)))

(assert (=> bs!835632 (= lambda!168701 lambda!168485)))

(declare-fun bs!835633 () Bool)

(assert (= bs!835633 (and d!1380594 d!1380174)))

(assert (=> bs!835633 (= lambda!168701 lambda!168531)))

(declare-fun bs!835634 () Bool)

(assert (= bs!835634 (and d!1380594 d!1380096)))

(assert (=> bs!835634 (= lambda!168701 lambda!168499)))

(declare-fun bs!835635 () Bool)

(assert (= bs!835635 (and d!1380594 d!1380214)))

(assert (=> bs!835635 (= lambda!168701 lambda!168540)))

(declare-fun bs!835636 () Bool)

(assert (= bs!835636 (and d!1380594 d!1380390)))

(assert (=> bs!835636 (= lambda!168701 lambda!168648)))

(declare-fun bs!835637 () Bool)

(assert (= bs!835637 (and d!1380594 d!1380124)))

(assert (=> bs!835637 (= lambda!168701 lambda!168519)))

(declare-fun bs!835638 () Bool)

(assert (= bs!835638 (and d!1380594 d!1380050)))

(assert (=> bs!835638 (= lambda!168701 lambda!168491)))

(declare-fun bs!835639 () Bool)

(assert (= bs!835639 (and d!1380594 d!1380216)))

(assert (=> bs!835639 (= lambda!168701 lambda!168541)))

(declare-fun bs!835640 () Bool)

(assert (= bs!835640 (and d!1380594 d!1380150)))

(assert (=> bs!835640 (not (= lambda!168701 lambda!168524))))

(declare-fun bs!835641 () Bool)

(assert (= bs!835641 (and d!1380594 d!1380258)))

(assert (=> bs!835641 (= lambda!168701 lambda!168580)))

(declare-fun bs!835642 () Bool)

(assert (= bs!835642 (and d!1380594 d!1380276)))

(assert (=> bs!835642 (= lambda!168701 lambda!168622)))

(declare-fun bs!835643 () Bool)

(assert (= bs!835643 (and d!1380594 d!1380212)))

(assert (=> bs!835643 (= lambda!168701 lambda!168537)))

(declare-fun lt!1680660 () ListMap!3517)

(assert (=> d!1380594 (invariantList!983 (toList!4256 lt!1680660))))

(declare-fun e!2802655 () ListMap!3517)

(assert (=> d!1380594 (= lt!1680660 e!2802655)))

(declare-fun c!766891 () Bool)

(assert (=> d!1380594 (= c!766891 ((_ is Cons!50541) (t!357623 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380594 (forall!10173 (t!357623 (t!357623 (toList!4255 lm!1477))) lambda!168701)))

(assert (=> d!1380594 (= (extractMap!1180 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1680660)))

(declare-fun b!4499348 () Bool)

(assert (=> b!4499348 (= e!2802655 (addToMapMapFromBucket!651 (_2!28760 (h!56360 (t!357623 (t!357623 (toList!4255 lm!1477))))) (extractMap!1180 (t!357623 (t!357623 (t!357623 (toList!4255 lm!1477)))))))))

(declare-fun b!4499349 () Bool)

(assert (=> b!4499349 (= e!2802655 (ListMap!3518 Nil!50540))))

(assert (= (and d!1380594 c!766891) b!4499348))

(assert (= (and d!1380594 (not c!766891)) b!4499349))

(declare-fun m!5229419 () Bool)

(assert (=> d!1380594 m!5229419))

(declare-fun m!5229421 () Bool)

(assert (=> d!1380594 m!5229421))

(declare-fun m!5229423 () Bool)

(assert (=> b!4499348 m!5229423))

(assert (=> b!4499348 m!5229423))

(declare-fun m!5229425 () Bool)

(assert (=> b!4499348 m!5229425))

(assert (=> b!4498639 d!1380594))

(declare-fun d!1380596 () Bool)

(declare-fun res!1870394 () Bool)

(declare-fun e!2802656 () Bool)

(assert (=> d!1380596 (=> res!1870394 e!2802656)))

(assert (=> d!1380596 (= res!1870394 (and ((_ is Cons!50540) (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))) (= (_1!28759 (h!56359 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))))) key!3287)))))

(assert (=> d!1380596 (= (containsKey!1676 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477)))) key!3287) e!2802656)))

(declare-fun b!4499350 () Bool)

(declare-fun e!2802657 () Bool)

(assert (=> b!4499350 (= e!2802656 e!2802657)))

(declare-fun res!1870395 () Bool)

(assert (=> b!4499350 (=> (not res!1870395) (not e!2802657))))

(assert (=> b!4499350 (= res!1870395 ((_ is Cons!50540) (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))))))

(declare-fun b!4499351 () Bool)

(assert (=> b!4499351 (= e!2802657 (containsKey!1676 (t!357622 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))) key!3287))))

(assert (= (and d!1380596 (not res!1870394)) b!4499350))

(assert (= (and b!4499350 res!1870395) b!4499351))

(declare-fun m!5229427 () Bool)

(assert (=> b!4499351 m!5229427))

(assert (=> b!4498611 d!1380596))

(declare-fun d!1380598 () Bool)

(declare-fun lt!1680661 () Bool)

(assert (=> d!1380598 (= lt!1680661 (select (content!8256 e!2802222) key!3287))))

(declare-fun e!2802658 () Bool)

(assert (=> d!1380598 (= lt!1680661 e!2802658)))

(declare-fun res!1870397 () Bool)

(assert (=> d!1380598 (=> (not res!1870397) (not e!2802658))))

(assert (=> d!1380598 (= res!1870397 ((_ is Cons!50543) e!2802222))))

(assert (=> d!1380598 (= (contains!13213 e!2802222 key!3287) lt!1680661)))

(declare-fun b!4499352 () Bool)

(declare-fun e!2802659 () Bool)

(assert (=> b!4499352 (= e!2802658 e!2802659)))

(declare-fun res!1870396 () Bool)

(assert (=> b!4499352 (=> res!1870396 e!2802659)))

(assert (=> b!4499352 (= res!1870396 (= (h!56364 e!2802222) key!3287))))

(declare-fun b!4499353 () Bool)

(assert (=> b!4499353 (= e!2802659 (contains!13213 (t!357625 e!2802222) key!3287))))

(assert (= (and d!1380598 res!1870397) b!4499352))

(assert (= (and b!4499352 (not res!1870396)) b!4499353))

(declare-fun m!5229429 () Bool)

(assert (=> d!1380598 m!5229429))

(declare-fun m!5229431 () Bool)

(assert (=> d!1380598 m!5229431))

(declare-fun m!5229433 () Bool)

(assert (=> b!4499353 m!5229433))

(assert (=> bm!313079 d!1380598))

(assert (=> b!4498360 d!1380090))

(declare-fun d!1380600 () Bool)

(assert (=> d!1380600 (= (head!9343 (toList!4255 lm!1477)) (h!56360 (toList!4255 lm!1477)))))

(assert (=> d!1380186 d!1380600))

(assert (=> d!1380210 d!1380362))

(declare-fun d!1380602 () Bool)

(assert (=> d!1380602 (= (get!16516 (getValueByKey!1024 (toList!4255 lm!1477) hash!344)) (v!44533 (getValueByKey!1024 (toList!4255 lm!1477) hash!344)))))

(assert (=> d!1380056 d!1380602))

(assert (=> d!1380056 d!1380554))

(declare-fun d!1380604 () Bool)

(assert (=> d!1380604 (= (get!16516 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344)) (v!44533 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344)))))

(assert (=> d!1380142 d!1380604))

(declare-fun d!1380606 () Bool)

(declare-fun c!766892 () Bool)

(assert (=> d!1380606 (= c!766892 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (= (_1!28760 (h!56360 (toList!4255 lt!1679939))) hash!344)))))

(declare-fun e!2802660 () Option!11044)

(assert (=> d!1380606 (= (getValueByKey!1024 (toList!4255 lt!1679939) hash!344) e!2802660)))

(declare-fun b!4499357 () Bool)

(declare-fun e!2802661 () Option!11044)

(assert (=> b!4499357 (= e!2802661 None!11043)))

(declare-fun b!4499355 () Bool)

(assert (=> b!4499355 (= e!2802660 e!2802661)))

(declare-fun c!766893 () Bool)

(assert (=> b!4499355 (= c!766893 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (not (= (_1!28760 (h!56360 (toList!4255 lt!1679939))) hash!344))))))

(declare-fun b!4499356 () Bool)

(assert (=> b!4499356 (= e!2802661 (getValueByKey!1024 (t!357623 (toList!4255 lt!1679939)) hash!344))))

(declare-fun b!4499354 () Bool)

(assert (=> b!4499354 (= e!2802660 (Some!11043 (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))

(assert (= (and d!1380606 c!766892) b!4499354))

(assert (= (and d!1380606 (not c!766892)) b!4499355))

(assert (= (and b!4499355 c!766893) b!4499356))

(assert (= (and b!4499355 (not c!766893)) b!4499357))

(declare-fun m!5229435 () Bool)

(assert (=> b!4499356 m!5229435))

(assert (=> d!1380142 d!1380606))

(assert (=> b!4498631 d!1380480))

(assert (=> b!4498631 d!1380424))

(assert (=> d!1380202 d!1380200))

(declare-fun d!1380608 () Bool)

(assert (=> d!1380608 (containsKeyBiggerList!104 (toList!4255 lt!1679939) key!3287)))

(assert (=> d!1380608 true))

(declare-fun _$33!607 () Unit!91740)

(assert (=> d!1380608 (= (choose!29106 lt!1679939 key!3287 hashF!1107) _$33!607)))

(declare-fun bs!835644 () Bool)

(assert (= bs!835644 d!1380608))

(assert (=> bs!835644 m!5227583))

(assert (=> d!1380202 d!1380608))

(declare-fun d!1380610 () Bool)

(declare-fun res!1870398 () Bool)

(declare-fun e!2802662 () Bool)

(assert (=> d!1380610 (=> res!1870398 e!2802662)))

(assert (=> d!1380610 (= res!1870398 ((_ is Nil!50541) (toList!4255 lt!1679939)))))

(assert (=> d!1380610 (= (forall!10173 (toList!4255 lt!1679939) lambda!168536) e!2802662)))

(declare-fun b!4499358 () Bool)

(declare-fun e!2802663 () Bool)

(assert (=> b!4499358 (= e!2802662 e!2802663)))

(declare-fun res!1870399 () Bool)

(assert (=> b!4499358 (=> (not res!1870399) (not e!2802663))))

(assert (=> b!4499358 (= res!1870399 (dynLambda!21105 lambda!168536 (h!56360 (toList!4255 lt!1679939))))))

(declare-fun b!4499359 () Bool)

(assert (=> b!4499359 (= e!2802663 (forall!10173 (t!357623 (toList!4255 lt!1679939)) lambda!168536))))

(assert (= (and d!1380610 (not res!1870398)) b!4499358))

(assert (= (and b!4499358 res!1870399) b!4499359))

(declare-fun b_lambda!152231 () Bool)

(assert (=> (not b_lambda!152231) (not b!4499358)))

(declare-fun m!5229437 () Bool)

(assert (=> b!4499358 m!5229437))

(declare-fun m!5229439 () Bool)

(assert (=> b!4499359 m!5229439))

(assert (=> d!1380202 d!1380610))

(declare-fun b!4499363 () Bool)

(declare-fun e!2802664 () List!50664)

(assert (=> b!4499363 (= e!2802664 Nil!50540)))

(declare-fun b!4499362 () Bool)

(assert (=> b!4499362 (= e!2802664 (Cons!50540 (h!56359 (t!357622 lt!1679933)) (removePairForKey!751 (t!357622 (t!357622 lt!1679933)) key!3287)))))

(declare-fun b!4499360 () Bool)

(declare-fun e!2802665 () List!50664)

(assert (=> b!4499360 (= e!2802665 (t!357622 (t!357622 lt!1679933)))))

(declare-fun b!4499361 () Bool)

(assert (=> b!4499361 (= e!2802665 e!2802664)))

(declare-fun c!766895 () Bool)

(assert (=> b!4499361 (= c!766895 ((_ is Cons!50540) (t!357622 lt!1679933)))))

(declare-fun d!1380612 () Bool)

(declare-fun lt!1680662 () List!50664)

(assert (=> d!1380612 (not (containsKey!1676 lt!1680662 key!3287))))

(assert (=> d!1380612 (= lt!1680662 e!2802665)))

(declare-fun c!766894 () Bool)

(assert (=> d!1380612 (= c!766894 (and ((_ is Cons!50540) (t!357622 lt!1679933)) (= (_1!28759 (h!56359 (t!357622 lt!1679933))) key!3287)))))

(assert (=> d!1380612 (noDuplicateKeys!1124 (t!357622 lt!1679933))))

(assert (=> d!1380612 (= (removePairForKey!751 (t!357622 lt!1679933) key!3287) lt!1680662)))

(assert (= (and d!1380612 c!766894) b!4499360))

(assert (= (and d!1380612 (not c!766894)) b!4499361))

(assert (= (and b!4499361 c!766895) b!4499362))

(assert (= (and b!4499361 (not c!766895)) b!4499363))

(declare-fun m!5229441 () Bool)

(assert (=> b!4499362 m!5229441))

(declare-fun m!5229443 () Bool)

(assert (=> d!1380612 m!5229443))

(declare-fun m!5229445 () Bool)

(assert (=> d!1380612 m!5229445))

(assert (=> b!4498422 d!1380612))

(declare-fun d!1380614 () Bool)

(declare-fun lt!1680663 () Bool)

(assert (=> d!1380614 (= lt!1680663 (select (content!8254 (toList!4255 lt!1680153)) lt!1679924))))

(declare-fun e!2802667 () Bool)

(assert (=> d!1380614 (= lt!1680663 e!2802667)))

(declare-fun res!1870401 () Bool)

(assert (=> d!1380614 (=> (not res!1870401) (not e!2802667))))

(assert (=> d!1380614 (= res!1870401 ((_ is Cons!50541) (toList!4255 lt!1680153)))))

(assert (=> d!1380614 (= (contains!13211 (toList!4255 lt!1680153) lt!1679924) lt!1680663)))

(declare-fun b!4499364 () Bool)

(declare-fun e!2802666 () Bool)

(assert (=> b!4499364 (= e!2802667 e!2802666)))

(declare-fun res!1870400 () Bool)

(assert (=> b!4499364 (=> res!1870400 e!2802666)))

(assert (=> b!4499364 (= res!1870400 (= (h!56360 (toList!4255 lt!1680153)) lt!1679924))))

(declare-fun b!4499365 () Bool)

(assert (=> b!4499365 (= e!2802666 (contains!13211 (t!357623 (toList!4255 lt!1680153)) lt!1679924))))

(assert (= (and d!1380614 res!1870401) b!4499364))

(assert (= (and b!4499364 (not res!1870400)) b!4499365))

(declare-fun m!5229447 () Bool)

(assert (=> d!1380614 m!5229447))

(declare-fun m!5229449 () Bool)

(assert (=> d!1380614 m!5229449))

(declare-fun m!5229451 () Bool)

(assert (=> b!4499365 m!5229451))

(assert (=> b!4498618 d!1380614))

(declare-fun d!1380616 () Bool)

(declare-fun res!1870402 () Bool)

(declare-fun e!2802668 () Bool)

(assert (=> d!1380616 (=> res!1870402 e!2802668)))

(assert (=> d!1380616 (= res!1870402 (and ((_ is Cons!50541) (toList!4255 lt!1679939)) (= (_1!28760 (h!56360 (toList!4255 lt!1679939))) hash!344)))))

(assert (=> d!1380616 (= (containsKey!1679 (toList!4255 lt!1679939) hash!344) e!2802668)))

(declare-fun b!4499366 () Bool)

(declare-fun e!2802669 () Bool)

(assert (=> b!4499366 (= e!2802668 e!2802669)))

(declare-fun res!1870403 () Bool)

(assert (=> b!4499366 (=> (not res!1870403) (not e!2802669))))

(assert (=> b!4499366 (= res!1870403 (and (or (not ((_ is Cons!50541) (toList!4255 lt!1679939))) (bvsle (_1!28760 (h!56360 (toList!4255 lt!1679939))) hash!344)) ((_ is Cons!50541) (toList!4255 lt!1679939)) (bvslt (_1!28760 (h!56360 (toList!4255 lt!1679939))) hash!344)))))

(declare-fun b!4499367 () Bool)

(assert (=> b!4499367 (= e!2802669 (containsKey!1679 (t!357623 (toList!4255 lt!1679939)) hash!344))))

(assert (= (and d!1380616 (not res!1870402)) b!4499366))

(assert (= (and b!4499366 res!1870403) b!4499367))

(declare-fun m!5229453 () Bool)

(assert (=> b!4499367 m!5229453))

(assert (=> d!1380192 d!1380616))

(declare-fun d!1380618 () Bool)

(declare-fun lt!1680664 () Bool)

(assert (=> d!1380618 (= lt!1680664 (select (content!8254 (toList!4255 lt!1680157)) lt!1679932))))

(declare-fun e!2802671 () Bool)

(assert (=> d!1380618 (= lt!1680664 e!2802671)))

(declare-fun res!1870405 () Bool)

(assert (=> d!1380618 (=> (not res!1870405) (not e!2802671))))

(assert (=> d!1380618 (= res!1870405 ((_ is Cons!50541) (toList!4255 lt!1680157)))))

(assert (=> d!1380618 (= (contains!13211 (toList!4255 lt!1680157) lt!1679932) lt!1680664)))

(declare-fun b!4499368 () Bool)

(declare-fun e!2802670 () Bool)

(assert (=> b!4499368 (= e!2802671 e!2802670)))

(declare-fun res!1870404 () Bool)

(assert (=> b!4499368 (=> res!1870404 e!2802670)))

(assert (=> b!4499368 (= res!1870404 (= (h!56360 (toList!4255 lt!1680157)) lt!1679932))))

(declare-fun b!4499369 () Bool)

(assert (=> b!4499369 (= e!2802670 (contains!13211 (t!357623 (toList!4255 lt!1680157)) lt!1679932))))

(assert (= (and d!1380618 res!1870405) b!4499368))

(assert (= (and b!4499368 (not res!1870404)) b!4499369))

(declare-fun m!5229455 () Bool)

(assert (=> d!1380618 m!5229455))

(declare-fun m!5229457 () Bool)

(assert (=> d!1380618 m!5229457))

(declare-fun m!5229459 () Bool)

(assert (=> b!4499369 m!5229459))

(assert (=> b!4498620 d!1380618))

(declare-fun b!4499370 () Bool)

(declare-fun e!2802675 () Unit!91740)

(declare-fun lt!1680670 () Unit!91740)

(assert (=> b!4499370 (= e!2802675 lt!1680670)))

(declare-fun lt!1680671 () Unit!91740)

(assert (=> b!4499370 (= lt!1680671 (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 lt!1680118) key!3287))))

(assert (=> b!4499370 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1680118) key!3287))))

(declare-fun lt!1680665 () Unit!91740)

(assert (=> b!4499370 (= lt!1680665 lt!1680671)))

(assert (=> b!4499370 (= lt!1680670 (lemmaInListThenGetKeysListContains!427 (toList!4256 lt!1680118) key!3287))))

(declare-fun call!313160 () Bool)

(assert (=> b!4499370 call!313160))

(declare-fun b!4499371 () Bool)

(declare-fun e!2802676 () Bool)

(assert (=> b!4499371 (= e!2802676 (contains!13213 (keys!17522 lt!1680118) key!3287))))

(declare-fun b!4499372 () Bool)

(declare-fun e!2802672 () Unit!91740)

(assert (=> b!4499372 (= e!2802675 e!2802672)))

(declare-fun c!766896 () Bool)

(assert (=> b!4499372 (= c!766896 call!313160)))

(declare-fun b!4499373 () Bool)

(declare-fun e!2802674 () List!50667)

(assert (=> b!4499373 (= e!2802674 (keys!17522 lt!1680118))))

(declare-fun b!4499374 () Bool)

(declare-fun Unit!91891 () Unit!91740)

(assert (=> b!4499374 (= e!2802672 Unit!91891)))

(declare-fun d!1380620 () Bool)

(declare-fun e!2802677 () Bool)

(assert (=> d!1380620 e!2802677))

(declare-fun res!1870406 () Bool)

(assert (=> d!1380620 (=> res!1870406 e!2802677)))

(declare-fun e!2802673 () Bool)

(assert (=> d!1380620 (= res!1870406 e!2802673)))

(declare-fun res!1870408 () Bool)

(assert (=> d!1380620 (=> (not res!1870408) (not e!2802673))))

(declare-fun lt!1680668 () Bool)

(assert (=> d!1380620 (= res!1870408 (not lt!1680668))))

(declare-fun lt!1680669 () Bool)

(assert (=> d!1380620 (= lt!1680668 lt!1680669)))

(declare-fun lt!1680666 () Unit!91740)

(assert (=> d!1380620 (= lt!1680666 e!2802675)))

(declare-fun c!766897 () Bool)

(assert (=> d!1380620 (= c!766897 lt!1680669)))

(assert (=> d!1380620 (= lt!1680669 (containsKey!1680 (toList!4256 lt!1680118) key!3287))))

(assert (=> d!1380620 (= (contains!13210 lt!1680118 key!3287) lt!1680668)))

(declare-fun b!4499375 () Bool)

(assert (=> b!4499375 false))

(declare-fun lt!1680672 () Unit!91740)

(declare-fun lt!1680667 () Unit!91740)

(assert (=> b!4499375 (= lt!1680672 lt!1680667)))

(assert (=> b!4499375 (containsKey!1680 (toList!4256 lt!1680118) key!3287)))

(assert (=> b!4499375 (= lt!1680667 (lemmaInGetKeysListThenContainsKey!430 (toList!4256 lt!1680118) key!3287))))

(declare-fun Unit!91892 () Unit!91740)

(assert (=> b!4499375 (= e!2802672 Unit!91892)))

(declare-fun b!4499376 () Bool)

(assert (=> b!4499376 (= e!2802677 e!2802676)))

(declare-fun res!1870407 () Bool)

(assert (=> b!4499376 (=> (not res!1870407) (not e!2802676))))

(assert (=> b!4499376 (= res!1870407 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1680118) key!3287)))))

(declare-fun b!4499377 () Bool)

(assert (=> b!4499377 (= e!2802674 (getKeysList!431 (toList!4256 lt!1680118)))))

(declare-fun bm!313155 () Bool)

(assert (=> bm!313155 (= call!313160 (contains!13213 e!2802674 key!3287))))

(declare-fun c!766898 () Bool)

(assert (=> bm!313155 (= c!766898 c!766897)))

(declare-fun b!4499378 () Bool)

(assert (=> b!4499378 (= e!2802673 (not (contains!13213 (keys!17522 lt!1680118) key!3287)))))

(assert (= (and d!1380620 c!766897) b!4499370))

(assert (= (and d!1380620 (not c!766897)) b!4499372))

(assert (= (and b!4499372 c!766896) b!4499375))

(assert (= (and b!4499372 (not c!766896)) b!4499374))

(assert (= (or b!4499370 b!4499372) bm!313155))

(assert (= (and bm!313155 c!766898) b!4499377))

(assert (= (and bm!313155 (not c!766898)) b!4499373))

(assert (= (and d!1380620 res!1870408) b!4499378))

(assert (= (and d!1380620 (not res!1870406)) b!4499376))

(assert (= (and b!4499376 res!1870407) b!4499371))

(declare-fun m!5229461 () Bool)

(assert (=> bm!313155 m!5229461))

(assert (=> b!4499371 m!5228003))

(assert (=> b!4499371 m!5228003))

(declare-fun m!5229463 () Bool)

(assert (=> b!4499371 m!5229463))

(declare-fun m!5229465 () Bool)

(assert (=> d!1380620 m!5229465))

(assert (=> b!4499378 m!5228003))

(assert (=> b!4499378 m!5228003))

(assert (=> b!4499378 m!5229463))

(assert (=> b!4499375 m!5229465))

(declare-fun m!5229467 () Bool)

(assert (=> b!4499375 m!5229467))

(declare-fun m!5229469 () Bool)

(assert (=> b!4499370 m!5229469))

(declare-fun m!5229471 () Bool)

(assert (=> b!4499370 m!5229471))

(assert (=> b!4499370 m!5229471))

(declare-fun m!5229473 () Bool)

(assert (=> b!4499370 m!5229473))

(declare-fun m!5229475 () Bool)

(assert (=> b!4499370 m!5229475))

(assert (=> b!4499373 m!5228003))

(assert (=> b!4499376 m!5229471))

(assert (=> b!4499376 m!5229471))

(assert (=> b!4499376 m!5229473))

(assert (=> b!4499377 m!5228781))

(assert (=> d!1380166 d!1380620))

(declare-fun b!4499519 () Bool)

(declare-fun e!2802776 () Unit!91740)

(declare-fun Unit!91893 () Unit!91740)

(assert (=> b!4499519 (= e!2802776 Unit!91893)))

(declare-fun b!4499520 () Bool)

(declare-fun e!2802771 () List!50664)

(assert (=> b!4499520 (= e!2802771 (t!357622 (toList!4256 lt!1679928)))))

(declare-fun b!4499521 () Bool)

(declare-fun e!2802779 () Unit!91740)

(declare-fun Unit!91894 () Unit!91740)

(assert (=> b!4499521 (= e!2802779 Unit!91894)))

(declare-fun lt!1680748 () V!12196)

(declare-fun get!16517 (Option!11045) V!12196)

(assert (=> b!4499521 (= lt!1680748 (get!16517 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287)))))

(declare-fun lt!1680759 () K!11950)

(assert (=> b!4499521 (= lt!1680759 key!3287)))

(declare-fun lt!1680752 () K!11950)

(assert (=> b!4499521 (= lt!1680752 key!3287)))

(declare-fun lt!1680754 () Unit!91740)

(declare-fun lemmaContainsTupleThenContainsKey!42 (List!50664 K!11950 V!12196) Unit!91740)

(assert (=> b!4499521 (= lt!1680754 (lemmaContainsTupleThenContainsKey!42 (t!357622 (toList!4256 lt!1679928)) lt!1680759 (get!16517 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287))))))

(declare-fun call!313183 () Bool)

(assert (=> b!4499521 call!313183))

(declare-fun lt!1680762 () Unit!91740)

(assert (=> b!4499521 (= lt!1680762 lt!1680754)))

(assert (=> b!4499521 false))

(declare-fun bm!313173 () Bool)

(declare-fun call!313178 () (InoxSet tuple2!50930))

(declare-fun lt!1680755 () List!50664)

(assert (=> bm!313173 (= call!313178 (content!8255 lt!1680755))))

(declare-fun b!4499522 () Bool)

(declare-fun e!2802773 () List!50664)

(assert (=> b!4499522 (= e!2802773 (t!357622 (toList!4256 lt!1679928)))))

(declare-fun c!766942 () Bool)

(declare-fun call!313182 () Bool)

(assert (=> b!4499522 (= c!766942 call!313182)))

(declare-fun lt!1680764 () Unit!91740)

(declare-fun e!2802775 () Unit!91740)

(assert (=> b!4499522 (= lt!1680764 e!2802775)))

(declare-fun b!4499524 () Bool)

(assert (=> b!4499524 (= e!2802771 (removePresrvNoDuplicatedKeys!106 (t!357622 (toList!4256 lt!1679928)) key!3287))))

(declare-fun b!4499525 () Bool)

(declare-fun e!2802772 () Unit!91740)

(declare-fun Unit!91896 () Unit!91740)

(assert (=> b!4499525 (= e!2802772 Unit!91896)))

(declare-fun lt!1680758 () List!50664)

(assert (=> b!4499525 (= lt!1680758 (removePresrvNoDuplicatedKeys!106 (t!357622 (toList!4256 lt!1679928)) key!3287))))

(declare-fun lt!1680750 () Unit!91740)

(assert (=> b!4499525 (= lt!1680750 (lemmaInListThenGetKeysListContains!427 lt!1680758 (_1!28759 (h!56359 (toList!4256 lt!1679928)))))))

(assert (=> b!4499525 (contains!13213 (getKeysList!431 lt!1680758) (_1!28759 (h!56359 (toList!4256 lt!1679928))))))

(declare-fun lt!1680757 () Unit!91740)

(assert (=> b!4499525 (= lt!1680757 lt!1680750)))

(assert (=> b!4499525 false))

(declare-fun bm!313174 () Bool)

(declare-fun call!313179 () (InoxSet tuple2!50930))

(assert (=> bm!313174 (= call!313179 (content!8255 (ite c!766942 (t!357622 (toList!4256 lt!1679928)) (toList!4256 lt!1679928))))))

(declare-fun e!2802777 () Bool)

(declare-fun b!4499526 () Bool)

(declare-fun call!313181 () (InoxSet tuple2!50930))

(assert (=> b!4499526 (= e!2802777 (= call!313178 ((_ map and) call!313181 ((_ map not) (store ((as const (Array tuple2!50930 Bool)) false) (tuple2!50931 key!3287 (get!16517 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287))) true)))))))

(assert (=> b!4499526 (containsKey!1680 (toList!4256 lt!1679928) key!3287)))

(declare-fun lt!1680765 () Unit!91740)

(assert (=> b!4499526 (= lt!1680765 (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 lt!1679928) key!3287))))

(assert (=> b!4499526 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287))))

(declare-fun lt!1680760 () Unit!91740)

(assert (=> b!4499526 (= lt!1680760 lt!1680765)))

(declare-fun b!4499527 () Bool)

(declare-fun res!1870467 () Bool)

(declare-fun e!2802778 () Bool)

(assert (=> b!4499527 (=> (not res!1870467) (not e!2802778))))

(assert (=> b!4499527 (= res!1870467 (= (content!8256 (getKeysList!431 lt!1680755)) ((_ map and) (content!8256 (getKeysList!431 (toList!4256 lt!1679928))) ((_ map not) (store ((as const (Array K!11950 Bool)) false) key!3287 true)))))))

(declare-fun b!4499528 () Bool)

(declare-fun res!1870469 () Bool)

(assert (=> b!4499528 (=> (not res!1870469) (not e!2802778))))

(assert (=> b!4499528 (= res!1870469 (not (containsKey!1680 lt!1680755 key!3287)))))

(declare-fun b!4499529 () Bool)

(declare-fun Unit!91897 () Unit!91740)

(assert (=> b!4499529 (= e!2802779 Unit!91897)))

(declare-fun d!1380622 () Bool)

(assert (=> d!1380622 e!2802778))

(declare-fun res!1870468 () Bool)

(assert (=> d!1380622 (=> (not res!1870468) (not e!2802778))))

(assert (=> d!1380622 (= res!1870468 (invariantList!983 lt!1680755))))

(assert (=> d!1380622 (= lt!1680755 e!2802773)))

(declare-fun c!766944 () Bool)

(assert (=> d!1380622 (= c!766944 (and ((_ is Cons!50540) (toList!4256 lt!1679928)) (= (_1!28759 (h!56359 (toList!4256 lt!1679928))) key!3287)))))

(assert (=> d!1380622 (invariantList!983 (toList!4256 lt!1679928))))

(assert (=> d!1380622 (= (removePresrvNoDuplicatedKeys!106 (toList!4256 lt!1679928) key!3287) lt!1680755)))

(declare-fun call!313180 () (InoxSet tuple2!50930))

(declare-fun b!4499523 () Bool)

(assert (=> b!4499523 (= call!313179 ((_ map and) call!313180 ((_ map not) (store ((as const (Array tuple2!50930 Bool)) false) (tuple2!50931 key!3287 (get!16517 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287))) true))))))

(declare-fun lt!1680749 () Unit!91740)

(assert (=> b!4499523 (= lt!1680749 e!2802779)))

(declare-fun c!766946 () Bool)

(declare-fun contains!13214 (List!50664 tuple2!50930) Bool)

(assert (=> b!4499523 (= c!766946 (contains!13214 (t!357622 (toList!4256 lt!1679928)) (tuple2!50931 key!3287 (get!16517 (getValueByKey!1025 (toList!4256 lt!1679928) key!3287)))))))

(declare-fun Unit!91898 () Unit!91740)

(assert (=> b!4499523 (= e!2802775 Unit!91898)))

(declare-fun bm!313175 () Bool)

(assert (=> bm!313175 (= call!313181 (content!8255 (toList!4256 lt!1679928)))))

(declare-fun b!4499530 () Bool)

(assert (=> b!4499530 (= e!2802778 e!2802777)))

(declare-fun c!766941 () Bool)

(assert (=> b!4499530 (= c!766941 (containsKey!1680 (toList!4256 lt!1679928) key!3287))))

(declare-fun b!4499531 () Bool)

(assert (=> b!4499531 (= e!2802777 (= call!313178 call!313181))))

(declare-fun bm!313176 () Bool)

(assert (=> bm!313176 (= call!313182 (containsKey!1680 (ite c!766944 (toList!4256 lt!1679928) (t!357622 (toList!4256 lt!1679928))) (ite c!766944 key!3287 (_1!28759 (h!56359 (toList!4256 lt!1679928))))))))

(declare-fun b!4499532 () Bool)

(declare-fun Unit!91899 () Unit!91740)

(assert (=> b!4499532 (= e!2802772 Unit!91899)))

(declare-fun bm!313177 () Bool)

(assert (=> bm!313177 (= call!313183 (containsKey!1680 e!2802771 (ite c!766944 lt!1680759 (_1!28759 (h!56359 (toList!4256 lt!1679928))))))))

(declare-fun c!766943 () Bool)

(assert (=> bm!313177 (= c!766943 c!766944)))

(declare-fun b!4499533 () Bool)

(assert (=> b!4499533 (= call!313180 call!313179)))

(declare-fun Unit!91900 () Unit!91740)

(assert (=> b!4499533 (= e!2802775 Unit!91900)))

(declare-fun bm!313178 () Bool)

(assert (=> bm!313178 (= call!313180 (content!8255 (ite c!766942 (toList!4256 lt!1679928) (t!357622 (toList!4256 lt!1679928)))))))

(declare-fun b!4499534 () Bool)

(declare-fun lt!1680761 () Unit!91740)

(assert (=> b!4499534 (= lt!1680761 e!2802772)))

(declare-fun c!766945 () Bool)

(assert (=> b!4499534 (= c!766945 call!313183)))

(declare-fun lt!1680756 () Unit!91740)

(assert (=> b!4499534 (= lt!1680756 e!2802776)))

(declare-fun c!766947 () Bool)

(assert (=> b!4499534 (= c!766947 (contains!13213 (getKeysList!431 (t!357622 (toList!4256 lt!1679928))) (_1!28759 (h!56359 (toList!4256 lt!1679928)))))))

(declare-fun lt!1680751 () List!50664)

(declare-fun $colon$colon!895 (List!50664 tuple2!50930) List!50664)

(assert (=> b!4499534 (= lt!1680751 ($colon$colon!895 (removePresrvNoDuplicatedKeys!106 (t!357622 (toList!4256 lt!1679928)) key!3287) (h!56359 (toList!4256 lt!1679928))))))

(declare-fun e!2802774 () List!50664)

(assert (=> b!4499534 (= e!2802774 lt!1680751)))

(declare-fun b!4499535 () Bool)

(assert (=> b!4499535 (= e!2802773 e!2802774)))

(declare-fun c!766940 () Bool)

(assert (=> b!4499535 (= c!766940 (and ((_ is Cons!50540) (toList!4256 lt!1679928)) (not (= (_1!28759 (h!56359 (toList!4256 lt!1679928))) key!3287))))))

(declare-fun b!4499536 () Bool)

(assert (=> b!4499536 (= e!2802774 Nil!50540)))

(declare-fun b!4499537 () Bool)

(declare-fun Unit!91901 () Unit!91740)

(assert (=> b!4499537 (= e!2802776 Unit!91901)))

(declare-fun lt!1680753 () Unit!91740)

(assert (=> b!4499537 (= lt!1680753 (lemmaInGetKeysListThenContainsKey!430 (t!357622 (toList!4256 lt!1679928)) (_1!28759 (h!56359 (toList!4256 lt!1679928)))))))

(assert (=> b!4499537 call!313182))

(declare-fun lt!1680763 () Unit!91740)

(assert (=> b!4499537 (= lt!1680763 lt!1680753)))

(assert (=> b!4499537 false))

(assert (= (and d!1380622 c!766944) b!4499522))

(assert (= (and d!1380622 (not c!766944)) b!4499535))

(assert (= (and b!4499522 c!766942) b!4499523))

(assert (= (and b!4499522 (not c!766942)) b!4499533))

(assert (= (and b!4499523 c!766946) b!4499521))

(assert (= (and b!4499523 (not c!766946)) b!4499529))

(assert (= (or b!4499523 b!4499533) bm!313178))

(assert (= (or b!4499523 b!4499533) bm!313174))

(assert (= (and b!4499535 c!766940) b!4499534))

(assert (= (and b!4499535 (not c!766940)) b!4499536))

(assert (= (and b!4499534 c!766947) b!4499537))

(assert (= (and b!4499534 (not c!766947)) b!4499519))

(assert (= (and b!4499534 c!766945) b!4499525))

(assert (= (and b!4499534 (not c!766945)) b!4499532))

(assert (= (or b!4499522 b!4499537) bm!313176))

(assert (= (or b!4499521 b!4499534) bm!313177))

(assert (= (and bm!313177 c!766943) b!4499520))

(assert (= (and bm!313177 (not c!766943)) b!4499524))

(assert (= (and d!1380622 res!1870468) b!4499528))

(assert (= (and b!4499528 res!1870469) b!4499527))

(assert (= (and b!4499527 res!1870467) b!4499530))

(assert (= (and b!4499530 c!766941) b!4499526))

(assert (= (and b!4499530 (not c!766941)) b!4499531))

(assert (= (or b!4499526 b!4499531) bm!313173))

(assert (= (or b!4499526 b!4499531) bm!313175))

(declare-fun m!5229661 () Bool)

(assert (=> bm!313178 m!5229661))

(assert (=> b!4499527 m!5228141))

(declare-fun m!5229663 () Bool)

(assert (=> b!4499527 m!5229663))

(declare-fun m!5229665 () Bool)

(assert (=> b!4499527 m!5229665))

(declare-fun m!5229667 () Bool)

(assert (=> b!4499527 m!5229667))

(assert (=> b!4499527 m!5228141))

(assert (=> b!4499527 m!5228009))

(assert (=> b!4499527 m!5229665))

(declare-fun m!5229669 () Bool)

(assert (=> bm!313177 m!5229669))

(declare-fun m!5229671 () Bool)

(assert (=> b!4499524 m!5229671))

(declare-fun m!5229673 () Bool)

(assert (=> bm!313173 m!5229673))

(declare-fun m!5229675 () Bool)

(assert (=> d!1380622 m!5229675))

(assert (=> d!1380622 m!5228437))

(declare-fun m!5229677 () Bool)

(assert (=> bm!313174 m!5229677))

(assert (=> b!4499525 m!5229671))

(declare-fun m!5229679 () Bool)

(assert (=> b!4499525 m!5229679))

(declare-fun m!5229681 () Bool)

(assert (=> b!4499525 m!5229681))

(assert (=> b!4499525 m!5229681))

(declare-fun m!5229683 () Bool)

(assert (=> b!4499525 m!5229683))

(declare-fun m!5229685 () Bool)

(assert (=> bm!313175 m!5229685))

(assert (=> b!4499521 m!5228135))

(assert (=> b!4499521 m!5228135))

(declare-fun m!5229687 () Bool)

(assert (=> b!4499521 m!5229687))

(assert (=> b!4499521 m!5229687))

(declare-fun m!5229689 () Bool)

(assert (=> b!4499521 m!5229689))

(assert (=> b!4499526 m!5228135))

(assert (=> b!4499526 m!5229687))

(assert (=> b!4499526 m!5228135))

(assert (=> b!4499526 m!5228137))

(assert (=> b!4499526 m!5228133))

(assert (=> b!4499526 m!5228135))

(declare-fun m!5229691 () Bool)

(assert (=> b!4499526 m!5229691))

(assert (=> b!4499526 m!5228129))

(declare-fun m!5229693 () Bool)

(assert (=> b!4499537 m!5229693))

(assert (=> b!4499523 m!5228135))

(assert (=> b!4499523 m!5228135))

(assert (=> b!4499523 m!5229687))

(assert (=> b!4499523 m!5229691))

(declare-fun m!5229695 () Bool)

(assert (=> b!4499523 m!5229695))

(declare-fun m!5229697 () Bool)

(assert (=> b!4499528 m!5229697))

(assert (=> b!4499534 m!5228517))

(assert (=> b!4499534 m!5228517))

(assert (=> b!4499534 m!5228521))

(assert (=> b!4499534 m!5229671))

(assert (=> b!4499534 m!5229671))

(declare-fun m!5229699 () Bool)

(assert (=> b!4499534 m!5229699))

(assert (=> b!4499530 m!5228129))

(declare-fun m!5229701 () Bool)

(assert (=> bm!313176 m!5229701))

(assert (=> d!1380166 d!1380622))

(assert (=> b!4498627 d!1380548))

(assert (=> b!4498627 d!1380550))

(declare-fun d!1380702 () Bool)

(declare-fun c!766948 () Bool)

(assert (=> d!1380702 (= c!766948 (and ((_ is Cons!50541) (toList!4255 lt!1680133)) (= (_1!28760 (h!56360 (toList!4255 lt!1680133))) (_1!28760 lt!1679932))))))

(declare-fun e!2802780 () Option!11044)

(assert (=> d!1380702 (= (getValueByKey!1024 (toList!4255 lt!1680133) (_1!28760 lt!1679932)) e!2802780)))

(declare-fun b!4499541 () Bool)

(declare-fun e!2802781 () Option!11044)

(assert (=> b!4499541 (= e!2802781 None!11043)))

(declare-fun b!4499539 () Bool)

(assert (=> b!4499539 (= e!2802780 e!2802781)))

(declare-fun c!766949 () Bool)

(assert (=> b!4499539 (= c!766949 (and ((_ is Cons!50541) (toList!4255 lt!1680133)) (not (= (_1!28760 (h!56360 (toList!4255 lt!1680133))) (_1!28760 lt!1679932)))))))

(declare-fun b!4499540 () Bool)

(assert (=> b!4499540 (= e!2802781 (getValueByKey!1024 (t!357623 (toList!4255 lt!1680133)) (_1!28760 lt!1679932)))))

(declare-fun b!4499538 () Bool)

(assert (=> b!4499538 (= e!2802780 (Some!11043 (_2!28760 (h!56360 (toList!4255 lt!1680133)))))))

(assert (= (and d!1380702 c!766948) b!4499538))

(assert (= (and d!1380702 (not c!766948)) b!4499539))

(assert (= (and b!4499539 c!766949) b!4499540))

(assert (= (and b!4499539 (not c!766949)) b!4499541))

(declare-fun m!5229703 () Bool)

(assert (=> b!4499540 m!5229703))

(assert (=> b!4498584 d!1380702))

(declare-fun d!1380704 () Bool)

(assert (=> d!1380704 (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344))))

(declare-fun lt!1680766 () Unit!91740)

(assert (=> d!1380704 (= lt!1680766 (choose!29119 (toList!4255 lt!1679939) hash!344))))

(declare-fun e!2802782 () Bool)

(assert (=> d!1380704 e!2802782))

(declare-fun res!1870470 () Bool)

(assert (=> d!1380704 (=> (not res!1870470) (not e!2802782))))

(assert (=> d!1380704 (= res!1870470 (isStrictlySorted!397 (toList!4255 lt!1679939)))))

(assert (=> d!1380704 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lt!1679939) hash!344) lt!1680766)))

(declare-fun b!4499542 () Bool)

(assert (=> b!4499542 (= e!2802782 (containsKey!1679 (toList!4255 lt!1679939) hash!344))))

(assert (= (and d!1380704 res!1870470) b!4499542))

(assert (=> d!1380704 m!5227937))

(assert (=> d!1380704 m!5227937))

(assert (=> d!1380704 m!5228083))

(declare-fun m!5229705 () Bool)

(assert (=> d!1380704 m!5229705))

(assert (=> d!1380704 m!5228593))

(assert (=> b!4499542 m!5228079))

(assert (=> b!4498602 d!1380704))

(declare-fun d!1380706 () Bool)

(assert (=> d!1380706 (= (isDefined!8331 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344)) (not (isEmpty!28601 (getValueByKey!1024 (toList!4255 lt!1679939) hash!344))))))

(declare-fun bs!835708 () Bool)

(assert (= bs!835708 d!1380706))

(assert (=> bs!835708 m!5227937))

(declare-fun m!5229707 () Bool)

(assert (=> bs!835708 m!5229707))

(assert (=> b!4498602 d!1380706))

(assert (=> b!4498602 d!1380606))

(declare-fun d!1380708 () Bool)

(declare-fun res!1870471 () Bool)

(declare-fun e!2802783 () Bool)

(assert (=> d!1380708 (=> res!1870471 e!2802783)))

(assert (=> d!1380708 (= res!1870471 (and ((_ is Cons!50540) lt!1680013) (= (_1!28759 (h!56359 lt!1680013)) key!3287)))))

(assert (=> d!1380708 (= (containsKey!1676 lt!1680013 key!3287) e!2802783)))

(declare-fun b!4499543 () Bool)

(declare-fun e!2802784 () Bool)

(assert (=> b!4499543 (= e!2802783 e!2802784)))

(declare-fun res!1870472 () Bool)

(assert (=> b!4499543 (=> (not res!1870472) (not e!2802784))))

(assert (=> b!4499543 (= res!1870472 ((_ is Cons!50540) lt!1680013))))

(declare-fun b!4499544 () Bool)

(assert (=> b!4499544 (= e!2802784 (containsKey!1676 (t!357622 lt!1680013) key!3287))))

(assert (= (and d!1380708 (not res!1870471)) b!4499543))

(assert (= (and b!4499543 res!1870472) b!4499544))

(declare-fun m!5229709 () Bool)

(assert (=> b!4499544 m!5229709))

(assert (=> d!1380078 d!1380708))

(declare-fun d!1380710 () Bool)

(declare-fun res!1870473 () Bool)

(declare-fun e!2802785 () Bool)

(assert (=> d!1380710 (=> res!1870473 e!2802785)))

(assert (=> d!1380710 (= res!1870473 (not ((_ is Cons!50540) lt!1679933)))))

(assert (=> d!1380710 (= (noDuplicateKeys!1124 lt!1679933) e!2802785)))

(declare-fun b!4499545 () Bool)

(declare-fun e!2802786 () Bool)

(assert (=> b!4499545 (= e!2802785 e!2802786)))

(declare-fun res!1870474 () Bool)

(assert (=> b!4499545 (=> (not res!1870474) (not e!2802786))))

(assert (=> b!4499545 (= res!1870474 (not (containsKey!1676 (t!357622 lt!1679933) (_1!28759 (h!56359 lt!1679933)))))))

(declare-fun b!4499546 () Bool)

(assert (=> b!4499546 (= e!2802786 (noDuplicateKeys!1124 (t!357622 lt!1679933)))))

(assert (= (and d!1380710 (not res!1870473)) b!4499545))

(assert (= (and b!4499545 res!1870474) b!4499546))

(declare-fun m!5229711 () Bool)

(assert (=> b!4499545 m!5229711))

(assert (=> b!4499546 m!5229445))

(assert (=> d!1380078 d!1380710))

(assert (=> b!4498636 d!1380264))

(assert (=> b!4498636 d!1380266))

(declare-fun d!1380712 () Bool)

(declare-fun lt!1680767 () Bool)

(assert (=> d!1380712 (= lt!1680767 (select (content!8254 (toList!4255 lt!1680141)) lt!1679924))))

(declare-fun e!2802788 () Bool)

(assert (=> d!1380712 (= lt!1680767 e!2802788)))

(declare-fun res!1870476 () Bool)

(assert (=> d!1380712 (=> (not res!1870476) (not e!2802788))))

(assert (=> d!1380712 (= res!1870476 ((_ is Cons!50541) (toList!4255 lt!1680141)))))

(assert (=> d!1380712 (= (contains!13211 (toList!4255 lt!1680141) lt!1679924) lt!1680767)))

(declare-fun b!4499547 () Bool)

(declare-fun e!2802787 () Bool)

(assert (=> b!4499547 (= e!2802788 e!2802787)))

(declare-fun res!1870475 () Bool)

(assert (=> b!4499547 (=> res!1870475 e!2802787)))

(assert (=> b!4499547 (= res!1870475 (= (h!56360 (toList!4255 lt!1680141)) lt!1679924))))

(declare-fun b!4499548 () Bool)

(assert (=> b!4499548 (= e!2802787 (contains!13211 (t!357623 (toList!4255 lt!1680141)) lt!1679924))))

(assert (= (and d!1380712 res!1870476) b!4499547))

(assert (= (and b!4499547 (not res!1870475)) b!4499548))

(declare-fun m!5229713 () Bool)

(assert (=> d!1380712 m!5229713))

(declare-fun m!5229715 () Bool)

(assert (=> d!1380712 m!5229715))

(declare-fun m!5229717 () Bool)

(assert (=> b!4499548 m!5229717))

(assert (=> b!4498599 d!1380712))

(declare-fun d!1380714 () Bool)

(assert (=> d!1380714 (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679938) key!3287))))

(declare-fun lt!1680768 () Unit!91740)

(assert (=> d!1380714 (= lt!1680768 (choose!29109 (toList!4256 lt!1679938) key!3287))))

(assert (=> d!1380714 (invariantList!983 (toList!4256 lt!1679938))))

(assert (=> d!1380714 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!929 (toList!4256 lt!1679938) key!3287) lt!1680768)))

(declare-fun bs!835709 () Bool)

(assert (= bs!835709 d!1380714))

(assert (=> bs!835709 m!5227869))

(assert (=> bs!835709 m!5227869))

(assert (=> bs!835709 m!5227871))

(declare-fun m!5229719 () Bool)

(assert (=> bs!835709 m!5229719))

(assert (=> bs!835709 m!5228929))

(assert (=> b!4498515 d!1380714))

(declare-fun d!1380716 () Bool)

(assert (=> d!1380716 (= (isDefined!8332 (getValueByKey!1025 (toList!4256 lt!1679938) key!3287)) (not (isEmpty!28598 (getValueByKey!1025 (toList!4256 lt!1679938) key!3287))))))

(declare-fun bs!835710 () Bool)

(assert (= bs!835710 d!1380716))

(assert (=> bs!835710 m!5227869))

(declare-fun m!5229721 () Bool)

(assert (=> bs!835710 m!5229721))

(assert (=> b!4498515 d!1380716))

(declare-fun b!4499551 () Bool)

(declare-fun e!2802790 () Option!11045)

(assert (=> b!4499551 (= e!2802790 (getValueByKey!1025 (t!357622 (toList!4256 lt!1679938)) key!3287))))

(declare-fun b!4499549 () Bool)

(declare-fun e!2802789 () Option!11045)

(assert (=> b!4499549 (= e!2802789 (Some!11044 (_2!28759 (h!56359 (toList!4256 lt!1679938)))))))

(declare-fun b!4499550 () Bool)

(assert (=> b!4499550 (= e!2802789 e!2802790)))

(declare-fun c!766951 () Bool)

(assert (=> b!4499550 (= c!766951 (and ((_ is Cons!50540) (toList!4256 lt!1679938)) (not (= (_1!28759 (h!56359 (toList!4256 lt!1679938))) key!3287))))))

(declare-fun d!1380718 () Bool)

(declare-fun c!766950 () Bool)

(assert (=> d!1380718 (= c!766950 (and ((_ is Cons!50540) (toList!4256 lt!1679938)) (= (_1!28759 (h!56359 (toList!4256 lt!1679938))) key!3287)))))

(assert (=> d!1380718 (= (getValueByKey!1025 (toList!4256 lt!1679938) key!3287) e!2802789)))

(declare-fun b!4499552 () Bool)

(assert (=> b!4499552 (= e!2802790 None!11044)))

(assert (= (and d!1380718 c!766950) b!4499549))

(assert (= (and d!1380718 (not c!766950)) b!4499550))

(assert (= (and b!4499550 c!766951) b!4499551))

(assert (= (and b!4499550 (not c!766951)) b!4499552))

(declare-fun m!5229723 () Bool)

(assert (=> b!4499551 m!5229723))

(assert (=> b!4498515 d!1380718))

(declare-fun d!1380720 () Bool)

(assert (=> d!1380720 (contains!13213 (getKeysList!431 (toList!4256 lt!1679938)) key!3287)))

(declare-fun lt!1680769 () Unit!91740)

(assert (=> d!1380720 (= lt!1680769 (choose!29110 (toList!4256 lt!1679938) key!3287))))

(assert (=> d!1380720 (invariantList!983 (toList!4256 lt!1679938))))

(assert (=> d!1380720 (= (lemmaInListThenGetKeysListContains!427 (toList!4256 lt!1679938) key!3287) lt!1680769)))

(declare-fun bs!835711 () Bool)

(assert (= bs!835711 d!1380720))

(assert (=> bs!835711 m!5227875))

(assert (=> bs!835711 m!5227875))

(declare-fun m!5229725 () Bool)

(assert (=> bs!835711 m!5229725))

(declare-fun m!5229727 () Bool)

(assert (=> bs!835711 m!5229727))

(assert (=> bs!835711 m!5228929))

(assert (=> b!4498515 d!1380720))

(declare-fun d!1380722 () Bool)

(assert (=> d!1380722 (= (invariantList!983 (toList!4256 lt!1680174)) (noDuplicatedKeys!242 (toList!4256 lt!1680174)))))

(declare-fun bs!835712 () Bool)

(assert (= bs!835712 d!1380722))

(declare-fun m!5229729 () Bool)

(assert (=> bs!835712 m!5229729))

(assert (=> d!1380212 d!1380722))

(declare-fun d!1380724 () Bool)

(declare-fun res!1870477 () Bool)

(declare-fun e!2802791 () Bool)

(assert (=> d!1380724 (=> res!1870477 e!2802791)))

(assert (=> d!1380724 (= res!1870477 ((_ is Nil!50541) (t!357623 (toList!4255 lm!1477))))))

(assert (=> d!1380724 (= (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168537) e!2802791)))

(declare-fun b!4499553 () Bool)

(declare-fun e!2802792 () Bool)

(assert (=> b!4499553 (= e!2802791 e!2802792)))

(declare-fun res!1870478 () Bool)

(assert (=> b!4499553 (=> (not res!1870478) (not e!2802792))))

(assert (=> b!4499553 (= res!1870478 (dynLambda!21105 lambda!168537 (h!56360 (t!357623 (toList!4255 lm!1477)))))))

(declare-fun b!4499554 () Bool)

(assert (=> b!4499554 (= e!2802792 (forall!10173 (t!357623 (t!357623 (toList!4255 lm!1477))) lambda!168537))))

(assert (= (and d!1380724 (not res!1870477)) b!4499553))

(assert (= (and b!4499553 res!1870478) b!4499554))

(declare-fun b_lambda!152243 () Bool)

(assert (=> (not b_lambda!152243) (not b!4499553)))

(declare-fun m!5229731 () Bool)

(assert (=> b!4499553 m!5229731))

(declare-fun m!5229733 () Bool)

(assert (=> b!4499554 m!5229733))

(assert (=> d!1380212 d!1380724))

(declare-fun d!1380726 () Bool)

(declare-fun lt!1680770 () Bool)

(assert (=> d!1380726 (= lt!1680770 (select (content!8256 e!2802141) key!3287))))

(declare-fun e!2802793 () Bool)

(assert (=> d!1380726 (= lt!1680770 e!2802793)))

(declare-fun res!1870480 () Bool)

(assert (=> d!1380726 (=> (not res!1870480) (not e!2802793))))

(assert (=> d!1380726 (= res!1870480 ((_ is Cons!50543) e!2802141))))

(assert (=> d!1380726 (= (contains!13213 e!2802141 key!3287) lt!1680770)))

(declare-fun b!4499555 () Bool)

(declare-fun e!2802794 () Bool)

(assert (=> b!4499555 (= e!2802793 e!2802794)))

(declare-fun res!1870479 () Bool)

(assert (=> b!4499555 (=> res!1870479 e!2802794)))

(assert (=> b!4499555 (= res!1870479 (= (h!56364 e!2802141) key!3287))))

(declare-fun b!4499556 () Bool)

(assert (=> b!4499556 (= e!2802794 (contains!13213 (t!357625 e!2802141) key!3287))))

(assert (= (and d!1380726 res!1870480) b!4499555))

(assert (= (and b!4499555 (not res!1870479)) b!4499556))

(declare-fun m!5229735 () Bool)

(assert (=> d!1380726 m!5229735))

(declare-fun m!5229737 () Bool)

(assert (=> d!1380726 m!5229737))

(declare-fun m!5229739 () Bool)

(assert (=> b!4499556 m!5229739))

(assert (=> bm!313078 d!1380726))

(declare-fun lt!1680771 () Bool)

(declare-fun d!1380728 () Bool)

(assert (=> d!1380728 (= lt!1680771 (select (content!8254 (toList!4255 lm!1477)) (tuple2!50933 hash!344 lt!1679933)))))

(declare-fun e!2802796 () Bool)

(assert (=> d!1380728 (= lt!1680771 e!2802796)))

(declare-fun res!1870482 () Bool)

(assert (=> d!1380728 (=> (not res!1870482) (not e!2802796))))

(assert (=> d!1380728 (= res!1870482 ((_ is Cons!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380728 (= (contains!13211 (toList!4255 lm!1477) (tuple2!50933 hash!344 lt!1679933)) lt!1680771)))

(declare-fun b!4499557 () Bool)

(declare-fun e!2802795 () Bool)

(assert (=> b!4499557 (= e!2802796 e!2802795)))

(declare-fun res!1870481 () Bool)

(assert (=> b!4499557 (=> res!1870481 e!2802795)))

(assert (=> b!4499557 (= res!1870481 (= (h!56360 (toList!4255 lm!1477)) (tuple2!50933 hash!344 lt!1679933)))))

(declare-fun b!4499558 () Bool)

(assert (=> b!4499558 (= e!2802795 (contains!13211 (t!357623 (toList!4255 lm!1477)) (tuple2!50933 hash!344 lt!1679933)))))

(assert (= (and d!1380728 res!1870482) b!4499557))

(assert (= (and b!4499557 (not res!1870481)) b!4499558))

(assert (=> d!1380728 m!5227749))

(declare-fun m!5229741 () Bool)

(assert (=> d!1380728 m!5229741))

(declare-fun m!5229743 () Bool)

(assert (=> b!4499558 m!5229743))

(assert (=> d!1380052 d!1380728))

(declare-fun d!1380730 () Bool)

(assert (=> d!1380730 (contains!13211 (toList!4255 lm!1477) (tuple2!50933 hash!344 lt!1679933))))

(assert (=> d!1380730 true))

(declare-fun _$14!1094 () Unit!91740)

(assert (=> d!1380730 (= (choose!29099 (toList!4255 lm!1477) hash!344 lt!1679933) _$14!1094)))

(declare-fun bs!835713 () Bool)

(assert (= bs!835713 d!1380730))

(assert (=> bs!835713 m!5227637))

(assert (=> d!1380052 d!1380730))

(declare-fun d!1380732 () Bool)

(declare-fun res!1870487 () Bool)

(declare-fun e!2802801 () Bool)

(assert (=> d!1380732 (=> res!1870487 e!2802801)))

(assert (=> d!1380732 (= res!1870487 (or ((_ is Nil!50541) (toList!4255 lm!1477)) ((_ is Nil!50541) (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380732 (= (isStrictlySorted!397 (toList!4255 lm!1477)) e!2802801)))

(declare-fun b!4499563 () Bool)

(declare-fun e!2802802 () Bool)

(assert (=> b!4499563 (= e!2802801 e!2802802)))

(declare-fun res!1870488 () Bool)

(assert (=> b!4499563 (=> (not res!1870488) (not e!2802802))))

(assert (=> b!4499563 (= res!1870488 (bvslt (_1!28760 (h!56360 (toList!4255 lm!1477))) (_1!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))))))

(declare-fun b!4499564 () Bool)

(assert (=> b!4499564 (= e!2802802 (isStrictlySorted!397 (t!357623 (toList!4255 lm!1477))))))

(assert (= (and d!1380732 (not res!1870487)) b!4499563))

(assert (= (and b!4499563 res!1870488) b!4499564))

(declare-fun m!5229745 () Bool)

(assert (=> b!4499564 m!5229745))

(assert (=> d!1380052 d!1380732))

(declare-fun d!1380734 () Bool)

(declare-fun res!1870489 () Bool)

(declare-fun e!2802804 () Bool)

(assert (=> d!1380734 (=> res!1870489 e!2802804)))

(assert (=> d!1380734 (= res!1870489 (not ((_ is Cons!50540) (_2!28760 (h!56360 (toList!4255 lm!1477))))))))

(assert (=> d!1380734 (= (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lm!1477)))) e!2802804)))

(declare-fun b!4499565 () Bool)

(declare-fun e!2802805 () Bool)

(assert (=> b!4499565 (= e!2802804 e!2802805)))

(declare-fun res!1870490 () Bool)

(assert (=> b!4499565 (=> (not res!1870490) (not e!2802805))))

(assert (=> b!4499565 (= res!1870490 (not (containsKey!1676 (t!357622 (_2!28760 (h!56360 (toList!4255 lm!1477)))) (_1!28759 (h!56359 (_2!28760 (h!56360 (toList!4255 lm!1477))))))))))

(declare-fun b!4499566 () Bool)

(assert (=> b!4499566 (= e!2802805 (noDuplicateKeys!1124 (t!357622 (_2!28760 (h!56360 (toList!4255 lm!1477))))))))

(assert (= (and d!1380734 (not res!1870489)) b!4499565))

(assert (= (and b!4499565 res!1870490) b!4499566))

(declare-fun m!5229747 () Bool)

(assert (=> b!4499565 m!5229747))

(declare-fun m!5229749 () Bool)

(assert (=> b!4499566 m!5229749))

(assert (=> bs!835139 d!1380734))

(assert (=> d!1380156 d!1380732))

(assert (=> b!4498604 d!1380706))

(assert (=> b!4498604 d!1380606))

(assert (=> b!4498521 d!1380716))

(assert (=> b!4498521 d!1380718))

(declare-fun d!1380736 () Bool)

(declare-fun lt!1680772 () Bool)

(assert (=> d!1380736 (= lt!1680772 (select (content!8256 e!2802228) key!3287))))

(declare-fun e!2802807 () Bool)

(assert (=> d!1380736 (= lt!1680772 e!2802807)))

(declare-fun res!1870492 () Bool)

(assert (=> d!1380736 (=> (not res!1870492) (not e!2802807))))

(assert (=> d!1380736 (= res!1870492 ((_ is Cons!50543) e!2802228))))

(assert (=> d!1380736 (= (contains!13213 e!2802228 key!3287) lt!1680772)))

(declare-fun b!4499567 () Bool)

(declare-fun e!2802808 () Bool)

(assert (=> b!4499567 (= e!2802807 e!2802808)))

(declare-fun res!1870491 () Bool)

(assert (=> b!4499567 (=> res!1870491 e!2802808)))

(assert (=> b!4499567 (= res!1870491 (= (h!56364 e!2802228) key!3287))))

(declare-fun b!4499568 () Bool)

(assert (=> b!4499568 (= e!2802808 (contains!13213 (t!357625 e!2802228) key!3287))))

(assert (= (and d!1380736 res!1870492) b!4499567))

(assert (= (and b!4499567 (not res!1870491)) b!4499568))

(declare-fun m!5229751 () Bool)

(assert (=> d!1380736 m!5229751))

(declare-fun m!5229753 () Bool)

(assert (=> d!1380736 m!5229753))

(declare-fun m!5229755 () Bool)

(assert (=> b!4499568 m!5229755))

(assert (=> bm!313080 d!1380736))

(declare-fun d!1380738 () Bool)

(declare-fun c!766952 () Bool)

(assert (=> d!1380738 (= c!766952 ((_ is Nil!50540) (toList!4256 (extractMap!1180 (toList!4255 lt!1679935)))))))

(declare-fun e!2802809 () (InoxSet tuple2!50930))

(assert (=> d!1380738 (= (content!8255 (toList!4256 (extractMap!1180 (toList!4255 lt!1679935)))) e!2802809)))

(declare-fun b!4499569 () Bool)

(assert (=> b!4499569 (= e!2802809 ((as const (Array tuple2!50930 Bool)) false))))

(declare-fun b!4499570 () Bool)

(assert (=> b!4499570 (= e!2802809 ((_ map or) (store ((as const (Array tuple2!50930 Bool)) false) (h!56359 (toList!4256 (extractMap!1180 (toList!4255 lt!1679935)))) true) (content!8255 (t!357622 (toList!4256 (extractMap!1180 (toList!4255 lt!1679935)))))))))

(assert (= (and d!1380738 c!766952) b!4499569))

(assert (= (and d!1380738 (not c!766952)) b!4499570))

(declare-fun m!5229757 () Bool)

(assert (=> b!4499570 m!5229757))

(declare-fun m!5229759 () Bool)

(assert (=> b!4499570 m!5229759))

(assert (=> d!1380188 d!1380738))

(declare-fun d!1380740 () Bool)

(declare-fun c!766953 () Bool)

(assert (=> d!1380740 (= c!766953 ((_ is Nil!50540) (toList!4256 (-!350 lt!1679928 key!3287))))))

(declare-fun e!2802810 () (InoxSet tuple2!50930))

(assert (=> d!1380740 (= (content!8255 (toList!4256 (-!350 lt!1679928 key!3287))) e!2802810)))

(declare-fun b!4499571 () Bool)

(assert (=> b!4499571 (= e!2802810 ((as const (Array tuple2!50930 Bool)) false))))

(declare-fun b!4499572 () Bool)

(assert (=> b!4499572 (= e!2802810 ((_ map or) (store ((as const (Array tuple2!50930 Bool)) false) (h!56359 (toList!4256 (-!350 lt!1679928 key!3287))) true) (content!8255 (t!357622 (toList!4256 (-!350 lt!1679928 key!3287))))))))

(assert (= (and d!1380740 c!766953) b!4499571))

(assert (= (and d!1380740 (not c!766953)) b!4499572))

(declare-fun m!5229761 () Bool)

(assert (=> b!4499572 m!5229761))

(declare-fun m!5229763 () Bool)

(assert (=> b!4499572 m!5229763))

(assert (=> d!1380188 d!1380740))

(declare-fun d!1380742 () Bool)

(declare-fun e!2802812 () Bool)

(assert (=> d!1380742 e!2802812))

(declare-fun res!1870493 () Bool)

(assert (=> d!1380742 (=> res!1870493 e!2802812)))

(declare-fun lt!1680773 () Bool)

(assert (=> d!1380742 (= res!1870493 (not lt!1680773))))

(declare-fun lt!1680774 () Bool)

(assert (=> d!1380742 (= lt!1680773 lt!1680774)))

(declare-fun lt!1680776 () Unit!91740)

(declare-fun e!2802811 () Unit!91740)

(assert (=> d!1380742 (= lt!1680776 e!2802811)))

(declare-fun c!766954 () Bool)

(assert (=> d!1380742 (= c!766954 lt!1680774)))

(assert (=> d!1380742 (= lt!1680774 (containsKey!1679 (toList!4255 lm!1477) (hash!2683 hashF!1107 key!3287)))))

(assert (=> d!1380742 (= (contains!13209 lm!1477 (hash!2683 hashF!1107 key!3287)) lt!1680773)))

(declare-fun b!4499573 () Bool)

(declare-fun lt!1680775 () Unit!91740)

(assert (=> b!4499573 (= e!2802811 lt!1680775)))

(assert (=> b!4499573 (= lt!1680775 (lemmaContainsKeyImpliesGetValueByKeyDefined!928 (toList!4255 lm!1477) (hash!2683 hashF!1107 key!3287)))))

(assert (=> b!4499573 (isDefined!8331 (getValueByKey!1024 (toList!4255 lm!1477) (hash!2683 hashF!1107 key!3287)))))

(declare-fun b!4499574 () Bool)

(declare-fun Unit!91908 () Unit!91740)

(assert (=> b!4499574 (= e!2802811 Unit!91908)))

(declare-fun b!4499575 () Bool)

(assert (=> b!4499575 (= e!2802812 (isDefined!8331 (getValueByKey!1024 (toList!4255 lm!1477) (hash!2683 hashF!1107 key!3287))))))

(assert (= (and d!1380742 c!766954) b!4499573))

(assert (= (and d!1380742 (not c!766954)) b!4499574))

(assert (= (and d!1380742 (not res!1870493)) b!4499575))

(assert (=> d!1380742 m!5227599))

(declare-fun m!5229765 () Bool)

(assert (=> d!1380742 m!5229765))

(assert (=> b!4499573 m!5227599))

(declare-fun m!5229767 () Bool)

(assert (=> b!4499573 m!5229767))

(assert (=> b!4499573 m!5227599))

(declare-fun m!5229769 () Bool)

(assert (=> b!4499573 m!5229769))

(assert (=> b!4499573 m!5229769))

(declare-fun m!5229771 () Bool)

(assert (=> b!4499573 m!5229771))

(assert (=> b!4499575 m!5227599))

(assert (=> b!4499575 m!5229769))

(assert (=> b!4499575 m!5229769))

(assert (=> b!4499575 m!5229771))

(assert (=> d!1380050 d!1380742))

(assert (=> d!1380050 d!1380196))

(declare-fun d!1380744 () Bool)

(assert (=> d!1380744 (contains!13209 lm!1477 (hash!2683 hashF!1107 key!3287))))

(assert (=> d!1380744 true))

(declare-fun _$27!1176 () Unit!91740)

(assert (=> d!1380744 (= (choose!29098 lm!1477 key!3287 hashF!1107) _$27!1176)))

(declare-fun bs!835714 () Bool)

(assert (= bs!835714 d!1380744))

(assert (=> bs!835714 m!5227599))

(assert (=> bs!835714 m!5227599))

(assert (=> bs!835714 m!5227631))

(assert (=> d!1380050 d!1380744))

(declare-fun d!1380746 () Bool)

(declare-fun res!1870494 () Bool)

(declare-fun e!2802813 () Bool)

(assert (=> d!1380746 (=> res!1870494 e!2802813)))

(assert (=> d!1380746 (= res!1870494 ((_ is Nil!50541) (toList!4255 lm!1477)))))

(assert (=> d!1380746 (= (forall!10173 (toList!4255 lm!1477) lambda!168491) e!2802813)))

(declare-fun b!4499576 () Bool)

(declare-fun e!2802814 () Bool)

(assert (=> b!4499576 (= e!2802813 e!2802814)))

(declare-fun res!1870495 () Bool)

(assert (=> b!4499576 (=> (not res!1870495) (not e!2802814))))

(assert (=> b!4499576 (= res!1870495 (dynLambda!21105 lambda!168491 (h!56360 (toList!4255 lm!1477))))))

(declare-fun b!4499577 () Bool)

(assert (=> b!4499577 (= e!2802814 (forall!10173 (t!357623 (toList!4255 lm!1477)) lambda!168491))))

(assert (= (and d!1380746 (not res!1870494)) b!4499576))

(assert (= (and b!4499576 res!1870495) b!4499577))

(declare-fun b_lambda!152245 () Bool)

(assert (=> (not b_lambda!152245) (not b!4499576)))

(declare-fun m!5229773 () Bool)

(assert (=> b!4499576 m!5229773))

(declare-fun m!5229775 () Bool)

(assert (=> b!4499577 m!5229775))

(assert (=> d!1380050 d!1380746))

(declare-fun d!1380748 () Bool)

(assert (=> d!1380748 (= (isEmpty!28597 (toList!4255 lt!1679940)) ((_ is Nil!50541) (toList!4255 lt!1679940)))))

(assert (=> d!1380158 d!1380748))

(declare-fun d!1380750 () Bool)

(declare-fun lt!1680777 () Bool)

(assert (=> d!1380750 (= lt!1680777 (select (content!8254 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1679930))))

(declare-fun e!2802816 () Bool)

(assert (=> d!1380750 (= lt!1680777 e!2802816)))

(declare-fun res!1870497 () Bool)

(assert (=> d!1380750 (=> (not res!1870497) (not e!2802816))))

(assert (=> d!1380750 (= res!1870497 ((_ is Cons!50541) (t!357623 (t!357623 (toList!4255 lm!1477)))))))

(assert (=> d!1380750 (= (contains!13211 (t!357623 (t!357623 (toList!4255 lm!1477))) lt!1679930) lt!1680777)))

(declare-fun b!4499578 () Bool)

(declare-fun e!2802815 () Bool)

(assert (=> b!4499578 (= e!2802816 e!2802815)))

(declare-fun res!1870496 () Bool)

(assert (=> b!4499578 (=> res!1870496 e!2802815)))

(assert (=> b!4499578 (= res!1870496 (= (h!56360 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1679930))))

(declare-fun b!4499579 () Bool)

(assert (=> b!4499579 (= e!2802815 (contains!13211 (t!357623 (t!357623 (t!357623 (toList!4255 lm!1477)))) lt!1679930))))

(assert (= (and d!1380750 res!1870497) b!4499578))

(assert (= (and b!4499578 (not res!1870496)) b!4499579))

(assert (=> d!1380750 m!5228631))

(declare-fun m!5229777 () Bool)

(assert (=> d!1380750 m!5229777))

(declare-fun m!5229779 () Bool)

(assert (=> b!4499579 m!5229779))

(assert (=> b!4498558 d!1380750))

(assert (=> b!4498429 d!1380148))

(declare-fun d!1380752 () Bool)

(declare-fun res!1870498 () Bool)

(declare-fun e!2802817 () Bool)

(assert (=> d!1380752 (=> res!1870498 e!2802817)))

(assert (=> d!1380752 (= res!1870498 (and ((_ is Cons!50540) (t!357622 newBucket!178)) (= (_1!28759 (h!56359 (t!357622 newBucket!178))) (_1!28759 (h!56359 newBucket!178)))))))

(assert (=> d!1380752 (= (containsKey!1676 (t!357622 newBucket!178) (_1!28759 (h!56359 newBucket!178))) e!2802817)))

(declare-fun b!4499580 () Bool)

(declare-fun e!2802818 () Bool)

(assert (=> b!4499580 (= e!2802817 e!2802818)))

(declare-fun res!1870499 () Bool)

(assert (=> b!4499580 (=> (not res!1870499) (not e!2802818))))

(assert (=> b!4499580 (= res!1870499 ((_ is Cons!50540) (t!357622 newBucket!178)))))

(declare-fun b!4499581 () Bool)

(assert (=> b!4499581 (= e!2802818 (containsKey!1676 (t!357622 (t!357622 newBucket!178)) (_1!28759 (h!56359 newBucket!178))))))

(assert (= (and d!1380752 (not res!1870498)) b!4499580))

(assert (= (and b!4499580 res!1870499) b!4499581))

(declare-fun m!5229781 () Bool)

(assert (=> b!4499581 m!5229781))

(assert (=> b!4498341 d!1380752))

(declare-fun b!4499582 () Bool)

(declare-fun tp!1337488 () Bool)

(declare-fun e!2802819 () Bool)

(assert (=> b!4499582 (= e!2802819 (and tp_is_empty!27773 tp_is_empty!27775 tp!1337488))))

(assert (=> b!4498652 (= tp!1337486 e!2802819)))

(assert (= (and b!4498652 ((_ is Cons!50540) (_2!28760 (h!56360 (toList!4255 lm!1477))))) b!4499582))

(declare-fun b!4499583 () Bool)

(declare-fun e!2802820 () Bool)

(declare-fun tp!1337489 () Bool)

(declare-fun tp!1337490 () Bool)

(assert (=> b!4499583 (= e!2802820 (and tp!1337489 tp!1337490))))

(assert (=> b!4498652 (= tp!1337487 e!2802820)))

(assert (= (and b!4498652 ((_ is Cons!50541) (t!357623 (toList!4255 lm!1477)))) b!4499583))

(declare-fun e!2802821 () Bool)

(declare-fun tp!1337491 () Bool)

(declare-fun b!4499584 () Bool)

(assert (=> b!4499584 (= e!2802821 (and tp_is_empty!27773 tp_is_empty!27775 tp!1337491))))

(assert (=> b!4498647 (= tp!1337481 e!2802821)))

(assert (= (and b!4498647 ((_ is Cons!50540) (t!357622 (t!357622 newBucket!178)))) b!4499584))

(declare-fun b_lambda!152247 () Bool)

(assert (= b_lambda!152201 (or d!1380184 b_lambda!152247)))

(declare-fun bs!835715 () Bool)

(declare-fun d!1380754 () Bool)

(assert (= bs!835715 (and d!1380754 d!1380184)))

(assert (=> bs!835715 (= (dynLambda!21105 lambda!168533 (h!56360 (toList!4255 lt!1679935))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lt!1679935)))))))

(assert (=> bs!835715 m!5228333))

(assert (=> b!4498796 d!1380754))

(declare-fun b_lambda!152249 () Bool)

(assert (= b_lambda!152243 (or d!1380212 b_lambda!152249)))

(declare-fun bs!835716 () Bool)

(declare-fun d!1380756 () Bool)

(assert (= bs!835716 (and d!1380756 d!1380212)))

(assert (=> bs!835716 (= (dynLambda!21105 lambda!168537 (h!56360 (t!357623 (toList!4255 lm!1477)))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))))))

(assert (=> bs!835716 m!5229413))

(assert (=> b!4499553 d!1380756))

(declare-fun b_lambda!152251 () Bool)

(assert (= b_lambda!152211 (or d!1380174 b_lambda!152251)))

(declare-fun bs!835717 () Bool)

(declare-fun d!1380758 () Bool)

(assert (= bs!835717 (and d!1380758 d!1380174)))

(assert (=> bs!835717 (= (dynLambda!21105 lambda!168531 (h!56360 (toList!4255 lt!1679939))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))

(assert (=> bs!835717 m!5228275))

(assert (=> b!4499055 d!1380758))

(declare-fun b_lambda!152253 () Bool)

(assert (= b_lambda!152219 (or start!443976 b_lambda!152253)))

(declare-fun bs!835718 () Bool)

(declare-fun d!1380760 () Bool)

(assert (= bs!835718 (and d!1380760 start!443976)))

(assert (=> bs!835718 (= (dynLambda!21105 lambda!168485 (h!56360 (t!357623 (toList!4255 lm!1477)))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (t!357623 (toList!4255 lm!1477))))))))

(assert (=> bs!835718 m!5229413))

(assert (=> b!4499141 d!1380760))

(declare-fun b_lambda!152255 () Bool)

(assert (= b_lambda!152245 (or d!1380050 b_lambda!152255)))

(declare-fun bs!835719 () Bool)

(declare-fun d!1380762 () Bool)

(assert (= bs!835719 (and d!1380762 d!1380050)))

(assert (=> bs!835719 (= (dynLambda!21105 lambda!168491 (h!56360 (toList!4255 lm!1477))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))

(assert (=> bs!835719 m!5228185))

(assert (=> b!4499576 d!1380762))

(declare-fun b_lambda!152257 () Bool)

(assert (= b_lambda!152225 (or d!1380214 b_lambda!152257)))

(declare-fun bs!835720 () Bool)

(declare-fun d!1380764 () Bool)

(assert (= bs!835720 (and d!1380764 d!1380214)))

(assert (=> bs!835720 (= (dynLambda!21105 lambda!168540 (h!56360 (toList!4255 lt!1679939))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))

(assert (=> bs!835720 m!5228275))

(assert (=> b!4499247 d!1380764))

(declare-fun b_lambda!152259 () Bool)

(assert (= b_lambda!152197 (or d!1380180 b_lambda!152259)))

(declare-fun bs!835721 () Bool)

(declare-fun d!1380766 () Bool)

(assert (= bs!835721 (and d!1380766 d!1380180)))

(assert (=> bs!835721 (= (dynLambda!21105 lambda!168532 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932)))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 (+!1470 lt!1679939 lt!1679932))))))))

(assert (=> bs!835721 m!5228375))

(assert (=> b!4498706 d!1380766))

(declare-fun b_lambda!152261 () Bool)

(assert (= b_lambda!152195 (or d!1380124 b_lambda!152261)))

(declare-fun bs!835722 () Bool)

(declare-fun d!1380768 () Bool)

(assert (= bs!835722 (and d!1380768 d!1380124)))

(assert (=> bs!835722 (= (dynLambda!21105 lambda!168519 (h!56360 (toList!4255 lm!1477))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))

(assert (=> bs!835722 m!5228185))

(assert (=> b!4498692 d!1380768))

(declare-fun b_lambda!152263 () Bool)

(assert (= b_lambda!152227 (or d!1380150 b_lambda!152263)))

(declare-fun bs!835723 () Bool)

(declare-fun d!1380770 () Bool)

(assert (= bs!835723 (and d!1380770 d!1380150)))

(assert (=> bs!835723 (= (dynLambda!21105 lambda!168524 (h!56360 (toList!4255 lm!1477))) (allKeysSameHash!978 (_2!28760 (h!56360 (toList!4255 lm!1477))) (_1!28760 (h!56360 (toList!4255 lm!1477))) hashF!1107))))

(declare-fun m!5229783 () Bool)

(assert (=> bs!835723 m!5229783))

(assert (=> b!4499270 d!1380770))

(declare-fun b_lambda!152265 () Bool)

(assert (= b_lambda!152229 (or d!1380096 b_lambda!152265)))

(declare-fun bs!835724 () Bool)

(declare-fun d!1380772 () Bool)

(assert (= bs!835724 (and d!1380772 d!1380096)))

(assert (=> bs!835724 (= (dynLambda!21105 lambda!168499 (h!56360 (toList!4255 lm!1477))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lm!1477)))))))

(assert (=> bs!835724 m!5228185))

(assert (=> b!4499308 d!1380772))

(declare-fun b_lambda!152267 () Bool)

(assert (= b_lambda!152217 (or start!443976 b_lambda!152267)))

(assert (=> d!1380460 d!1380220))

(declare-fun b_lambda!152269 () Bool)

(assert (= b_lambda!152193 (or d!1380048 b_lambda!152269)))

(declare-fun bs!835725 () Bool)

(declare-fun d!1380774 () Bool)

(assert (= bs!835725 (and d!1380774 d!1380048)))

(assert (=> bs!835725 (= (dynLambda!21106 lambda!168488 (h!56359 newBucket!178)) (= (hash!2683 hashF!1107 (_1!28759 (h!56359 newBucket!178))) hash!344))))

(declare-fun m!5229785 () Bool)

(assert (=> bs!835725 m!5229785))

(assert (=> b!4498676 d!1380774))

(declare-fun b_lambda!152271 () Bool)

(assert (= b_lambda!152215 (or d!1380216 b_lambda!152271)))

(declare-fun bs!835726 () Bool)

(declare-fun d!1380776 () Bool)

(assert (= bs!835726 (and d!1380776 d!1380216)))

(assert (=> bs!835726 (= (dynLambda!21105 lambda!168541 (h!56360 (toList!4255 lt!1679939))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))

(assert (=> bs!835726 m!5228275))

(assert (=> b!4499128 d!1380776))

(declare-fun b_lambda!152273 () Bool)

(assert (= b_lambda!152231 (or d!1380202 b_lambda!152273)))

(declare-fun bs!835727 () Bool)

(declare-fun d!1380778 () Bool)

(assert (= bs!835727 (and d!1380778 d!1380202)))

(assert (=> bs!835727 (= (dynLambda!21105 lambda!168536 (h!56360 (toList!4255 lt!1679939))) (noDuplicateKeys!1124 (_2!28760 (h!56360 (toList!4255 lt!1679939)))))))

(assert (=> bs!835727 m!5228275))

(assert (=> b!4499358 d!1380778))

(check-sat (not bs!835720) (not b!4499212) (not b!4499151) (not d!1380622) (not b!4499573) (not b!4498765) (not d!1380472) (not b!4498763) (not d!1380438) (not bm!313100) (not d!1380608) (not d!1380378) (not d!1380368) (not b!4499277) (not d!1380258) (not b!4499348) (not b!4499146) (not b!4499288) (not bm!313101) (not d!1380538) (not b!4499575) (not b!4499164) (not b!4499293) (not b!4498998) (not b!4498890) (not b!4498782) (not b!4499254) (not b!4499143) (not bm!313150) (not b!4498898) (not bm!313088) (not d!1380274) (not d!1380546) (not b!4499271) (not b!4498893) (not d!1380552) (not b!4499367) (not bm!313149) (not b!4498677) (not b!4499249) (not b!4499375) (not d!1380614) (not bs!835726) (not b_lambda!152255) (not b!4499019) (not b!4498999) (not b!4499570) (not d!1380452) (not bs!835717) (not bm!313177) (not d!1380386) (not b!4499365) (not b!4499043) (not d!1380720) (not b!4499527) (not b!4499582) (not d!1380594) (not b!4499309) (not b!4499526) (not b!4499314) (not bm!313151) (not b_lambda!152189) (not b!4499312) (not b!4498989) (not b!4499378) (not d!1380478) (not b!4499558) (not d!1380270) (not b!4499007) (not d!1380618) (not b!4499523) (not b!4499125) (not b!4498690) (not d!1380480) (not b!4499070) (not b!4498691) (not d!1380286) (not b!4499548) (not d!1380464) (not b!4499289) (not b!4499077) (not b!4498738) (not b!4499073) (not b!4498660) (not d!1380234) (not bm!313136) (not b!4499545) (not d!1380530) (not b!4498780) (not b!4498921) (not bs!835722) tp_is_empty!27773 (not b!4499530) (not b!4499568) (not d!1380470) (not b_lambda!152249) (not bm!313099) (not d!1380260) (not d!1380736) (not b!4499351) (not d!1380336) (not b!4499371) (not bm!313148) (not b!4498707) (not b!4499079) (not b!4499565) (not b!4499016) (not b_lambda!152259) (not d!1380280) (not d!1380612) (not b!4499074) (not b!4499194) (not b!4499525) (not b!4499068) (not d!1380268) (not b!4499142) (not bs!835723) (not b!4499135) (not b!4499286) (not b!4499294) (not b!4499376) (not b!4499107) (not b!4498669) (not d!1380568) (not b!4499109) (not b!4499150) (not d!1380372) (not b!4499180) (not b!4498818) (not b_lambda!152271) (not b_lambda!152273) (not d!1380466) (not bm!313143) (not b!4499172) (not bm!313090) (not d!1380722) (not b!4499311) (not d!1380246) (not b!4498918) (not bm!313176) (not b!4499116) (not bs!835724) (not b_lambda!152191) (not bs!835715) (not b!4499037) (not d!1380272) (not d!1380556) (not d!1380482) (not b!4499013) (not d!1380222) (not b!4499166) (not b!4499220) (not b!4499282) (not d!1380726) (not b!4498661) (not b!4499000) (not b!4498705) (not d!1380476) (not b!4499528) (not b!4499279) (not bm!313087) (not b!4499011) (not b!4498671) (not bs!835716) (not d!1380294) (not b_lambda!152247) (not b!4499581) (not b!4499225) (not b!4499524) (not b_lambda!152251) (not bm!313124) (not d!1380620) (not b!4499129) (not d!1380744) (not b!4499260) (not b!4499132) (not b!4499117) (not b!4498693) (not b!4499369) (not b!4499353) (not b!4499075) (not b!4498916) (not b!4498794) (not b!4499195) (not b!4499356) (not b!4498778) (not b!4499296) (not b!4499114) (not bm!313137) (not b!4499579) (not b!4499256) (not d!1380714) (not b!4499564) (not b!4499566) (not bm!313089) (not b!4499169) (not b!4499370) (not d!1380558) (not d!1380262) (not b!4499551) (not b!4499261) (not bs!835727) (not b!4499035) (not d!1380712) (not b!4499546) (not b!4499173) (not b!4499316) tp_is_empty!27775 (not b!4499540) (not b!4498899) (not b!4499217) (not d!1380358) (not b!4499222) (not d!1380264) (not b_lambda!152253) (not b!4499139) (not d!1380742) (not b_lambda!152267) (not b!4499521) (not d!1380432) (not b!4499009) (not b!4499544) (not b!4499537) (not b!4499119) (not b!4498659) (not b_lambda!152265) (not b!4498988) (not b!4498741) (not b!4498736) (not d!1380548) (not b!4499257) (not d!1380500) (not b!4499111) (not d!1380390) (not b!4499556) (not b!4499118) (not b!4499131) (not b!4499224) (not d!1380402) (not d!1380706) (not b!4499362) (not b!4498737) (not bs!835725) (not b_lambda!152261) (not b!4499542) (not b!4499080) (not b!4498768) (not bm!313133) (not d!1380750) (not b!4498767) (not d!1380320) (not d!1380728) (not d!1380704) (not d!1380416) (not b!4499140) (not d!1380420) (not bm!313091) (not b!4498699) (not bm!313092) (not b_lambda!152257) (not b!4499373) (not d!1380324) (not b!4498790) (not d!1380456) (not b!4499193) (not d!1380454) (not b!4499584) (not b!4498748) (not bm!313138) (not d!1380716) (not b!4499377) (not b!4499577) (not bm!313130) (not b!4499583) (not b!4499223) (not b!4499554) (not b!4499014) (not d!1380388) (not b!4499291) (not b!4498938) (not b_lambda!152269) (not b!4499267) (not b!4499315) (not bm!313155) (not d!1380510) (not b!4499078) (not b!4499130) (not b!4498772) (not b!4498995) (not b!4499099) (not b!4499056) (not b!4499171) (not b!4498937) (not bm!313135) (not b!4499251) (not b!4499359) (not b!4498734) (not bm!313174) (not b!4499036) (not d!1380534) (not b!4499136) (not b!4499248) (not bs!835721) (not d!1380446) (not b!4498894) (not b!4498781) (not b!4499572) (not b!4499190) (not b!4499174) (not b!4499147) (not d!1380730) (not b!4499295) (not bs!835719) (not bs!835718) (not bm!313178) (not d!1380242) (not b!4498688) (not d!1380424) (not b!4498797) (not bm!313173) (not d!1380276) (not b!4499534) (not d!1380364) (not bm!313175) (not b!4499218) (not b_lambda!152263) (not b!4499191) (not d!1380598) (not b!4498769))
(check-sat)
