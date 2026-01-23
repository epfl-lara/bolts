; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485908 () Bool)

(assert start!485908)

(declare-datatypes ((K!14610 0))(
  ( (K!14611 (val!19959 Int)) )
))
(declare-datatypes ((V!14856 0))(
  ( (V!14857 (val!19960 Int)) )
))
(declare-datatypes ((tuple2!54928 0))(
  ( (tuple2!54929 (_1!30758 K!14610) (_2!30758 V!14856)) )
))
(declare-datatypes ((List!53248 0))(
  ( (Nil!53124) (Cons!53124 (h!59521 tuple2!54928) (t!360592 List!53248)) )
))
(declare-datatypes ((ListMap!5613 0))(
  ( (ListMap!5614 (toList!6152 List!53248)) )
))
(declare-fun lt!1920253 () ListMap!5613)

(declare-fun l!13029 () List!53248)

(declare-fun b!4754257 () Bool)

(declare-fun e!2965837 () Bool)

(declare-fun lt!1920257 () ListMap!5613)

(declare-fun addToMapMapFromBucket!1598 (List!53248 ListMap!5613) ListMap!5613)

(assert (=> b!4754257 (= e!2965837 (not (= (addToMapMapFromBucket!1598 l!13029 lt!1920253) (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920257))))))

(declare-fun lt!1920255 () ListMap!5613)

(declare-fun lt!1920256 () ListMap!5613)

(declare-fun lt!1920252 () tuple2!54928)

(declare-fun eq!1249 (ListMap!5613 ListMap!5613) Bool)

(declare-fun +!2418 (ListMap!5613 tuple2!54928) ListMap!5613)

(assert (=> b!4754257 (eq!1249 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920256) (+!2418 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920255) lt!1920252))))

(declare-fun value!2966 () V!14856)

(declare-fun key!4572 () K!14610)

(declare-datatypes ((Unit!137048 0))(
  ( (Unit!137049) )
))
(declare-fun lt!1920251 () Unit!137048)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!260 (ListMap!5613 K!14610 V!14856 List!53248) Unit!137048)

(assert (=> b!4754257 (= lt!1920251 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!260 lt!1920255 key!4572 value!2966 (t!360592 l!13029)))))

(assert (=> b!4754257 (eq!1249 lt!1920256 lt!1920257)))

(assert (=> b!4754257 (= lt!1920257 (+!2418 lt!1920253 (h!59521 l!13029)))))

(declare-fun lhm!63 () ListMap!5613)

(assert (=> b!4754257 (= lt!1920253 (+!2418 lhm!63 lt!1920252))))

(assert (=> b!4754257 (= lt!1920256 (+!2418 lt!1920255 lt!1920252))))

(assert (=> b!4754257 (= lt!1920252 (tuple2!54929 key!4572 value!2966))))

(declare-fun lt!1920254 () Unit!137048)

(declare-fun addCommutativeForDiffKeys!50 (ListMap!5613 K!14610 V!14856 K!14610 V!14856) Unit!137048)

(assert (=> b!4754257 (= lt!1920254 (addCommutativeForDiffKeys!50 lhm!63 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029)) key!4572 value!2966))))

(assert (=> b!4754257 (= lt!1920255 (+!2418 lhm!63 (h!59521 l!13029)))))

(declare-fun b!4754258 () Bool)

(declare-fun tp_is_empty!32029 () Bool)

(declare-fun tp!1350485 () Bool)

(declare-fun tp_is_empty!32031 () Bool)

(declare-fun e!2965838 () Bool)

(assert (=> b!4754258 (= e!2965838 (and tp_is_empty!32029 tp_is_empty!32031 tp!1350485))))

(declare-fun b!4754260 () Bool)

(declare-fun res!2016657 () Bool)

(assert (=> b!4754260 (=> (not res!2016657) (not e!2965837))))

(declare-fun noDuplicateKeys!2184 (List!53248) Bool)

(assert (=> b!4754260 (= res!2016657 (noDuplicateKeys!2184 l!13029))))

(declare-fun b!4754261 () Bool)

(declare-fun res!2016658 () Bool)

(assert (=> b!4754261 (=> (not res!2016658) (not e!2965837))))

(get-info :version)

(assert (=> b!4754261 (= res!2016658 ((_ is Cons!53124) l!13029))))

(declare-fun res!2016659 () Bool)

(assert (=> start!485908 (=> (not res!2016659) (not e!2965837))))

(declare-fun containsKey!3590 (List!53248 K!14610) Bool)

(assert (=> start!485908 (= res!2016659 (not (containsKey!3590 l!13029 key!4572)))))

(assert (=> start!485908 e!2965837))

(assert (=> start!485908 e!2965838))

(assert (=> start!485908 tp_is_empty!32029))

(assert (=> start!485908 tp_is_empty!32031))

(declare-fun e!2965836 () Bool)

(declare-fun inv!68480 (ListMap!5613) Bool)

(assert (=> start!485908 (and (inv!68480 lhm!63) e!2965836)))

(declare-fun b!4754259 () Bool)

(declare-fun tp!1350484 () Bool)

(assert (=> b!4754259 (= e!2965836 tp!1350484)))

(assert (= (and start!485908 res!2016659) b!4754260))

(assert (= (and b!4754260 res!2016657) b!4754261))

(assert (= (and b!4754261 res!2016658) b!4754257))

(assert (= (and start!485908 ((_ is Cons!53124) l!13029)) b!4754258))

(assert (= start!485908 b!4754259))

(declare-fun m!5722339 () Bool)

(assert (=> b!4754257 m!5722339))

(declare-fun m!5722341 () Bool)

(assert (=> b!4754257 m!5722341))

(declare-fun m!5722343 () Bool)

(assert (=> b!4754257 m!5722343))

(declare-fun m!5722345 () Bool)

(assert (=> b!4754257 m!5722345))

(declare-fun m!5722347 () Bool)

(assert (=> b!4754257 m!5722347))

(declare-fun m!5722349 () Bool)

(assert (=> b!4754257 m!5722349))

(declare-fun m!5722351 () Bool)

(assert (=> b!4754257 m!5722351))

(declare-fun m!5722353 () Bool)

(assert (=> b!4754257 m!5722353))

(declare-fun m!5722355 () Bool)

(assert (=> b!4754257 m!5722355))

(assert (=> b!4754257 m!5722351))

(declare-fun m!5722357 () Bool)

(assert (=> b!4754257 m!5722357))

(declare-fun m!5722359 () Bool)

(assert (=> b!4754257 m!5722359))

(declare-fun m!5722361 () Bool)

(assert (=> b!4754257 m!5722361))

(assert (=> b!4754257 m!5722339))

(assert (=> b!4754257 m!5722357))

(declare-fun m!5722363 () Bool)

(assert (=> b!4754257 m!5722363))

(declare-fun m!5722365 () Bool)

(assert (=> b!4754260 m!5722365))

(declare-fun m!5722367 () Bool)

(assert (=> start!485908 m!5722367))

(declare-fun m!5722369 () Bool)

(assert (=> start!485908 m!5722369))

(check-sat (not b!4754258) tp_is_empty!32029 tp_is_empty!32031 (not b!4754259) (not b!4754257) (not start!485908) (not b!4754260))
(check-sat)
(get-model)

(declare-fun d!1520220 () Bool)

(declare-fun res!2016670 () Bool)

(declare-fun e!2965846 () Bool)

(assert (=> d!1520220 (=> res!2016670 e!2965846)))

(assert (=> d!1520220 (= res!2016670 (and ((_ is Cons!53124) l!13029) (= (_1!30758 (h!59521 l!13029)) key!4572)))))

(assert (=> d!1520220 (= (containsKey!3590 l!13029 key!4572) e!2965846)))

(declare-fun b!4754272 () Bool)

(declare-fun e!2965847 () Bool)

(assert (=> b!4754272 (= e!2965846 e!2965847)))

(declare-fun res!2016671 () Bool)

(assert (=> b!4754272 (=> (not res!2016671) (not e!2965847))))

(assert (=> b!4754272 (= res!2016671 ((_ is Cons!53124) l!13029))))

(declare-fun b!4754273 () Bool)

(assert (=> b!4754273 (= e!2965847 (containsKey!3590 (t!360592 l!13029) key!4572))))

(assert (= (and d!1520220 (not res!2016670)) b!4754272))

(assert (= (and b!4754272 res!2016671) b!4754273))

(declare-fun m!5722383 () Bool)

(assert (=> b!4754273 m!5722383))

(assert (=> start!485908 d!1520220))

(declare-fun d!1520224 () Bool)

(declare-fun invariantList!1614 (List!53248) Bool)

(assert (=> d!1520224 (= (inv!68480 lhm!63) (invariantList!1614 (toList!6152 lhm!63)))))

(declare-fun bs!1145920 () Bool)

(assert (= bs!1145920 d!1520224))

(declare-fun m!5722385 () Bool)

(assert (=> bs!1145920 m!5722385))

(assert (=> start!485908 d!1520224))

(declare-fun b!4754320 () Bool)

(assert (=> b!4754320 true))

(declare-fun bs!1145988 () Bool)

(declare-fun b!4754323 () Bool)

(assert (= bs!1145988 (and b!4754323 b!4754320)))

(declare-fun lambda!222874 () Int)

(declare-fun lambda!222873 () Int)

(assert (=> bs!1145988 (= lambda!222874 lambda!222873)))

(assert (=> b!4754323 true))

(declare-fun lt!1920448 () ListMap!5613)

(declare-fun lambda!222875 () Int)

(assert (=> bs!1145988 (= (= lt!1920448 lt!1920253) (= lambda!222875 lambda!222873))))

(assert (=> b!4754323 (= (= lt!1920448 lt!1920253) (= lambda!222875 lambda!222874))))

(assert (=> b!4754323 true))

(declare-fun bs!1145990 () Bool)

(declare-fun d!1520226 () Bool)

(assert (= bs!1145990 (and d!1520226 b!4754320)))

(declare-fun lambda!222876 () Int)

(declare-fun lt!1920465 () ListMap!5613)

(assert (=> bs!1145990 (= (= lt!1920465 lt!1920253) (= lambda!222876 lambda!222873))))

(declare-fun bs!1145991 () Bool)

(assert (= bs!1145991 (and d!1520226 b!4754323)))

(assert (=> bs!1145991 (= (= lt!1920465 lt!1920253) (= lambda!222876 lambda!222874))))

(assert (=> bs!1145991 (= (= lt!1920465 lt!1920448) (= lambda!222876 lambda!222875))))

(assert (=> d!1520226 true))

(declare-fun e!2965875 () ListMap!5613)

(assert (=> b!4754320 (= e!2965875 lt!1920253)))

(declare-fun lt!1920463 () Unit!137048)

(declare-fun call!333316 () Unit!137048)

(assert (=> b!4754320 (= lt!1920463 call!333316)))

(declare-fun call!333318 () Bool)

(assert (=> b!4754320 call!333318))

(declare-fun lt!1920454 () Unit!137048)

(assert (=> b!4754320 (= lt!1920454 lt!1920463)))

(declare-fun call!333317 () Bool)

(assert (=> b!4754320 call!333317))

(declare-fun lt!1920459 () Unit!137048)

(declare-fun Unit!137070 () Unit!137048)

(assert (=> b!4754320 (= lt!1920459 Unit!137070)))

(declare-fun bm!333311 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!891 (ListMap!5613) Unit!137048)

(assert (=> bm!333311 (= call!333316 (lemmaContainsAllItsOwnKeys!891 lt!1920253))))

(declare-fun b!4754321 () Bool)

(declare-fun e!2965874 () Bool)

(assert (=> b!4754321 (= e!2965874 (invariantList!1614 (toList!6152 lt!1920465)))))

(declare-fun c!811596 () Bool)

(declare-fun bm!333312 () Bool)

(declare-fun forall!11776 (List!53248 Int) Bool)

(assert (=> bm!333312 (= call!333317 (forall!11776 (toList!6152 lt!1920253) (ite c!811596 lambda!222873 lambda!222875)))))

(declare-fun bm!333313 () Bool)

(assert (=> bm!333313 (= call!333318 (forall!11776 (ite c!811596 (toList!6152 lt!1920253) l!13029) (ite c!811596 lambda!222873 lambda!222875)))))

(assert (=> b!4754323 (= e!2965875 lt!1920448)))

(declare-fun lt!1920461 () ListMap!5613)

(assert (=> b!4754323 (= lt!1920461 (+!2418 lt!1920253 (h!59521 l!13029)))))

(assert (=> b!4754323 (= lt!1920448 (addToMapMapFromBucket!1598 (t!360592 l!13029) (+!2418 lt!1920253 (h!59521 l!13029))))))

(declare-fun lt!1920449 () Unit!137048)

(assert (=> b!4754323 (= lt!1920449 call!333316)))

(assert (=> b!4754323 (forall!11776 (toList!6152 lt!1920253) lambda!222874)))

(declare-fun lt!1920458 () Unit!137048)

(assert (=> b!4754323 (= lt!1920458 lt!1920449)))

(assert (=> b!4754323 (forall!11776 (toList!6152 lt!1920461) lambda!222875)))

(declare-fun lt!1920451 () Unit!137048)

(declare-fun Unit!137073 () Unit!137048)

(assert (=> b!4754323 (= lt!1920451 Unit!137073)))

(assert (=> b!4754323 (forall!11776 (t!360592 l!13029) lambda!222875)))

(declare-fun lt!1920455 () Unit!137048)

(declare-fun Unit!137074 () Unit!137048)

(assert (=> b!4754323 (= lt!1920455 Unit!137074)))

(declare-fun lt!1920466 () Unit!137048)

(declare-fun Unit!137075 () Unit!137048)

(assert (=> b!4754323 (= lt!1920466 Unit!137075)))

(declare-fun lt!1920446 () Unit!137048)

(declare-fun forallContained!3802 (List!53248 Int tuple2!54928) Unit!137048)

(assert (=> b!4754323 (= lt!1920446 (forallContained!3802 (toList!6152 lt!1920461) lambda!222875 (h!59521 l!13029)))))

(declare-fun contains!16552 (ListMap!5613 K!14610) Bool)

(assert (=> b!4754323 (contains!16552 lt!1920461 (_1!30758 (h!59521 l!13029)))))

(declare-fun lt!1920460 () Unit!137048)

(declare-fun Unit!137076 () Unit!137048)

(assert (=> b!4754323 (= lt!1920460 Unit!137076)))

(assert (=> b!4754323 (contains!16552 lt!1920448 (_1!30758 (h!59521 l!13029)))))

(declare-fun lt!1920452 () Unit!137048)

(declare-fun Unit!137077 () Unit!137048)

(assert (=> b!4754323 (= lt!1920452 Unit!137077)))

(assert (=> b!4754323 call!333318))

(declare-fun lt!1920464 () Unit!137048)

(declare-fun Unit!137078 () Unit!137048)

(assert (=> b!4754323 (= lt!1920464 Unit!137078)))

(assert (=> b!4754323 (forall!11776 (toList!6152 lt!1920461) lambda!222875)))

(declare-fun lt!1920456 () Unit!137048)

(declare-fun Unit!137079 () Unit!137048)

(assert (=> b!4754323 (= lt!1920456 Unit!137079)))

(declare-fun lt!1920450 () Unit!137048)

(declare-fun Unit!137080 () Unit!137048)

(assert (=> b!4754323 (= lt!1920450 Unit!137080)))

(declare-fun lt!1920453 () Unit!137048)

(declare-fun addForallContainsKeyThenBeforeAdding!890 (ListMap!5613 ListMap!5613 K!14610 V!14856) Unit!137048)

(assert (=> b!4754323 (= lt!1920453 (addForallContainsKeyThenBeforeAdding!890 lt!1920253 lt!1920448 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029))))))

(assert (=> b!4754323 call!333317))

(declare-fun lt!1920457 () Unit!137048)

(assert (=> b!4754323 (= lt!1920457 lt!1920453)))

(assert (=> b!4754323 (forall!11776 (toList!6152 lt!1920253) lambda!222875)))

(declare-fun lt!1920447 () Unit!137048)

(declare-fun Unit!137081 () Unit!137048)

(assert (=> b!4754323 (= lt!1920447 Unit!137081)))

(declare-fun res!2016702 () Bool)

(assert (=> b!4754323 (= res!2016702 (forall!11776 l!13029 lambda!222875))))

(declare-fun e!2965876 () Bool)

(assert (=> b!4754323 (=> (not res!2016702) (not e!2965876))))

(assert (=> b!4754323 e!2965876))

(declare-fun lt!1920462 () Unit!137048)

(declare-fun Unit!137082 () Unit!137048)

(assert (=> b!4754323 (= lt!1920462 Unit!137082)))

(declare-fun b!4754324 () Bool)

(assert (=> b!4754324 (= e!2965876 (forall!11776 (toList!6152 lt!1920253) lambda!222875))))

(declare-fun b!4754322 () Bool)

(declare-fun res!2016700 () Bool)

(assert (=> b!4754322 (=> (not res!2016700) (not e!2965874))))

(assert (=> b!4754322 (= res!2016700 (forall!11776 (toList!6152 lt!1920253) lambda!222876))))

(assert (=> d!1520226 e!2965874))

(declare-fun res!2016701 () Bool)

(assert (=> d!1520226 (=> (not res!2016701) (not e!2965874))))

(assert (=> d!1520226 (= res!2016701 (forall!11776 l!13029 lambda!222876))))

(assert (=> d!1520226 (= lt!1920465 e!2965875)))

(assert (=> d!1520226 (= c!811596 ((_ is Nil!53124) l!13029))))

(assert (=> d!1520226 (noDuplicateKeys!2184 l!13029)))

(assert (=> d!1520226 (= (addToMapMapFromBucket!1598 l!13029 lt!1920253) lt!1920465)))

(assert (= (and d!1520226 c!811596) b!4754320))

(assert (= (and d!1520226 (not c!811596)) b!4754323))

(assert (= (and b!4754323 res!2016702) b!4754324))

(assert (= (or b!4754320 b!4754323) bm!333312))

(assert (= (or b!4754320 b!4754323) bm!333313))

(assert (= (or b!4754320 b!4754323) bm!333311))

(assert (= (and d!1520226 res!2016701) b!4754322))

(assert (= (and b!4754322 res!2016700) b!4754321))

(declare-fun m!5722567 () Bool)

(assert (=> b!4754323 m!5722567))

(assert (=> b!4754323 m!5722363))

(declare-fun m!5722569 () Bool)

(assert (=> b!4754323 m!5722569))

(declare-fun m!5722571 () Bool)

(assert (=> b!4754323 m!5722571))

(declare-fun m!5722573 () Bool)

(assert (=> b!4754323 m!5722573))

(declare-fun m!5722575 () Bool)

(assert (=> b!4754323 m!5722575))

(declare-fun m!5722577 () Bool)

(assert (=> b!4754323 m!5722577))

(declare-fun m!5722579 () Bool)

(assert (=> b!4754323 m!5722579))

(assert (=> b!4754323 m!5722567))

(declare-fun m!5722581 () Bool)

(assert (=> b!4754323 m!5722581))

(declare-fun m!5722583 () Bool)

(assert (=> b!4754323 m!5722583))

(assert (=> b!4754323 m!5722363))

(declare-fun m!5722585 () Bool)

(assert (=> b!4754323 m!5722585))

(declare-fun m!5722587 () Bool)

(assert (=> bm!333311 m!5722587))

(assert (=> b!4754324 m!5722583))

(declare-fun m!5722589 () Bool)

(assert (=> bm!333312 m!5722589))

(declare-fun m!5722591 () Bool)

(assert (=> b!4754321 m!5722591))

(declare-fun m!5722593 () Bool)

(assert (=> bm!333313 m!5722593))

(declare-fun m!5722595 () Bool)

(assert (=> b!4754322 m!5722595))

(declare-fun m!5722597 () Bool)

(assert (=> d!1520226 m!5722597))

(assert (=> d!1520226 m!5722365))

(assert (=> b!4754257 d!1520226))

(declare-fun bs!1145992 () Bool)

(declare-fun b!4754329 () Bool)

(assert (= bs!1145992 (and b!4754329 b!4754320)))

(declare-fun lambda!222877 () Int)

(assert (=> bs!1145992 (= (= lt!1920256 lt!1920253) (= lambda!222877 lambda!222873))))

(declare-fun bs!1145993 () Bool)

(assert (= bs!1145993 (and b!4754329 b!4754323)))

(assert (=> bs!1145993 (= (= lt!1920256 lt!1920253) (= lambda!222877 lambda!222874))))

(assert (=> bs!1145993 (= (= lt!1920256 lt!1920448) (= lambda!222877 lambda!222875))))

(declare-fun bs!1145994 () Bool)

(assert (= bs!1145994 (and b!4754329 d!1520226)))

(assert (=> bs!1145994 (= (= lt!1920256 lt!1920465) (= lambda!222877 lambda!222876))))

(assert (=> b!4754329 true))

(declare-fun bs!1145995 () Bool)

(declare-fun b!4754332 () Bool)

(assert (= bs!1145995 (and b!4754332 b!4754329)))

(declare-fun lambda!222878 () Int)

(assert (=> bs!1145995 (= lambda!222878 lambda!222877)))

(declare-fun bs!1145996 () Bool)

(assert (= bs!1145996 (and b!4754332 d!1520226)))

(assert (=> bs!1145996 (= (= lt!1920256 lt!1920465) (= lambda!222878 lambda!222876))))

(declare-fun bs!1145997 () Bool)

(assert (= bs!1145997 (and b!4754332 b!4754323)))

(assert (=> bs!1145997 (= (= lt!1920256 lt!1920253) (= lambda!222878 lambda!222874))))

(declare-fun bs!1145998 () Bool)

(assert (= bs!1145998 (and b!4754332 b!4754320)))

(assert (=> bs!1145998 (= (= lt!1920256 lt!1920253) (= lambda!222878 lambda!222873))))

(assert (=> bs!1145997 (= (= lt!1920256 lt!1920448) (= lambda!222878 lambda!222875))))

(assert (=> b!4754332 true))

(declare-fun lt!1920476 () ListMap!5613)

(declare-fun lambda!222879 () Int)

(assert (=> b!4754332 (= (= lt!1920476 lt!1920256) (= lambda!222879 lambda!222878))))

(assert (=> bs!1145995 (= (= lt!1920476 lt!1920256) (= lambda!222879 lambda!222877))))

(assert (=> bs!1145996 (= (= lt!1920476 lt!1920465) (= lambda!222879 lambda!222876))))

(assert (=> bs!1145997 (= (= lt!1920476 lt!1920253) (= lambda!222879 lambda!222874))))

(assert (=> bs!1145998 (= (= lt!1920476 lt!1920253) (= lambda!222879 lambda!222873))))

(assert (=> bs!1145997 (= (= lt!1920476 lt!1920448) (= lambda!222879 lambda!222875))))

(assert (=> b!4754332 true))

(declare-fun bs!1145999 () Bool)

(declare-fun d!1520246 () Bool)

(assert (= bs!1145999 (and d!1520246 b!4754332)))

(declare-fun lt!1920493 () ListMap!5613)

(declare-fun lambda!222880 () Int)

(assert (=> bs!1145999 (= (= lt!1920493 lt!1920256) (= lambda!222880 lambda!222878))))

(declare-fun bs!1146000 () Bool)

(assert (= bs!1146000 (and d!1520246 b!4754329)))

(assert (=> bs!1146000 (= (= lt!1920493 lt!1920256) (= lambda!222880 lambda!222877))))

(assert (=> bs!1145999 (= (= lt!1920493 lt!1920476) (= lambda!222880 lambda!222879))))

(declare-fun bs!1146001 () Bool)

(assert (= bs!1146001 (and d!1520246 d!1520226)))

(assert (=> bs!1146001 (= (= lt!1920493 lt!1920465) (= lambda!222880 lambda!222876))))

(declare-fun bs!1146002 () Bool)

(assert (= bs!1146002 (and d!1520246 b!4754323)))

(assert (=> bs!1146002 (= (= lt!1920493 lt!1920253) (= lambda!222880 lambda!222874))))

(declare-fun bs!1146003 () Bool)

(assert (= bs!1146003 (and d!1520246 b!4754320)))

(assert (=> bs!1146003 (= (= lt!1920493 lt!1920253) (= lambda!222880 lambda!222873))))

(assert (=> bs!1146002 (= (= lt!1920493 lt!1920448) (= lambda!222880 lambda!222875))))

(assert (=> d!1520246 true))

(declare-fun e!2965879 () ListMap!5613)

(assert (=> b!4754329 (= e!2965879 lt!1920256)))

(declare-fun lt!1920491 () Unit!137048)

(declare-fun call!333319 () Unit!137048)

(assert (=> b!4754329 (= lt!1920491 call!333319)))

(declare-fun call!333321 () Bool)

(assert (=> b!4754329 call!333321))

(declare-fun lt!1920482 () Unit!137048)

(assert (=> b!4754329 (= lt!1920482 lt!1920491)))

(declare-fun call!333320 () Bool)

(assert (=> b!4754329 call!333320))

(declare-fun lt!1920487 () Unit!137048)

(declare-fun Unit!137083 () Unit!137048)

(assert (=> b!4754329 (= lt!1920487 Unit!137083)))

(declare-fun bm!333314 () Bool)

(assert (=> bm!333314 (= call!333319 (lemmaContainsAllItsOwnKeys!891 lt!1920256))))

(declare-fun b!4754330 () Bool)

(declare-fun e!2965878 () Bool)

(assert (=> b!4754330 (= e!2965878 (invariantList!1614 (toList!6152 lt!1920493)))))

(declare-fun c!811597 () Bool)

(declare-fun bm!333315 () Bool)

(assert (=> bm!333315 (= call!333320 (forall!11776 (toList!6152 lt!1920256) (ite c!811597 lambda!222877 lambda!222879)))))

(declare-fun bm!333316 () Bool)

(assert (=> bm!333316 (= call!333321 (forall!11776 (ite c!811597 (toList!6152 lt!1920256) (t!360592 l!13029)) (ite c!811597 lambda!222877 lambda!222879)))))

(assert (=> b!4754332 (= e!2965879 lt!1920476)))

(declare-fun lt!1920489 () ListMap!5613)

(assert (=> b!4754332 (= lt!1920489 (+!2418 lt!1920256 (h!59521 (t!360592 l!13029))))))

(assert (=> b!4754332 (= lt!1920476 (addToMapMapFromBucket!1598 (t!360592 (t!360592 l!13029)) (+!2418 lt!1920256 (h!59521 (t!360592 l!13029)))))))

(declare-fun lt!1920477 () Unit!137048)

(assert (=> b!4754332 (= lt!1920477 call!333319)))

(assert (=> b!4754332 (forall!11776 (toList!6152 lt!1920256) lambda!222878)))

(declare-fun lt!1920486 () Unit!137048)

(assert (=> b!4754332 (= lt!1920486 lt!1920477)))

(assert (=> b!4754332 (forall!11776 (toList!6152 lt!1920489) lambda!222879)))

(declare-fun lt!1920479 () Unit!137048)

(declare-fun Unit!137085 () Unit!137048)

(assert (=> b!4754332 (= lt!1920479 Unit!137085)))

(assert (=> b!4754332 (forall!11776 (t!360592 (t!360592 l!13029)) lambda!222879)))

(declare-fun lt!1920483 () Unit!137048)

(declare-fun Unit!137086 () Unit!137048)

(assert (=> b!4754332 (= lt!1920483 Unit!137086)))

(declare-fun lt!1920494 () Unit!137048)

(declare-fun Unit!137087 () Unit!137048)

(assert (=> b!4754332 (= lt!1920494 Unit!137087)))

(declare-fun lt!1920474 () Unit!137048)

(assert (=> b!4754332 (= lt!1920474 (forallContained!3802 (toList!6152 lt!1920489) lambda!222879 (h!59521 (t!360592 l!13029))))))

(assert (=> b!4754332 (contains!16552 lt!1920489 (_1!30758 (h!59521 (t!360592 l!13029))))))

(declare-fun lt!1920488 () Unit!137048)

(declare-fun Unit!137088 () Unit!137048)

(assert (=> b!4754332 (= lt!1920488 Unit!137088)))

(assert (=> b!4754332 (contains!16552 lt!1920476 (_1!30758 (h!59521 (t!360592 l!13029))))))

(declare-fun lt!1920480 () Unit!137048)

(declare-fun Unit!137089 () Unit!137048)

(assert (=> b!4754332 (= lt!1920480 Unit!137089)))

(assert (=> b!4754332 call!333321))

(declare-fun lt!1920492 () Unit!137048)

(declare-fun Unit!137090 () Unit!137048)

(assert (=> b!4754332 (= lt!1920492 Unit!137090)))

(assert (=> b!4754332 (forall!11776 (toList!6152 lt!1920489) lambda!222879)))

(declare-fun lt!1920484 () Unit!137048)

(declare-fun Unit!137091 () Unit!137048)

(assert (=> b!4754332 (= lt!1920484 Unit!137091)))

(declare-fun lt!1920478 () Unit!137048)

(declare-fun Unit!137092 () Unit!137048)

(assert (=> b!4754332 (= lt!1920478 Unit!137092)))

(declare-fun lt!1920481 () Unit!137048)

(assert (=> b!4754332 (= lt!1920481 (addForallContainsKeyThenBeforeAdding!890 lt!1920256 lt!1920476 (_1!30758 (h!59521 (t!360592 l!13029))) (_2!30758 (h!59521 (t!360592 l!13029)))))))

(assert (=> b!4754332 call!333320))

(declare-fun lt!1920485 () Unit!137048)

(assert (=> b!4754332 (= lt!1920485 lt!1920481)))

(assert (=> b!4754332 (forall!11776 (toList!6152 lt!1920256) lambda!222879)))

(declare-fun lt!1920475 () Unit!137048)

(declare-fun Unit!137096 () Unit!137048)

(assert (=> b!4754332 (= lt!1920475 Unit!137096)))

(declare-fun res!2016707 () Bool)

(assert (=> b!4754332 (= res!2016707 (forall!11776 (t!360592 l!13029) lambda!222879))))

(declare-fun e!2965880 () Bool)

(assert (=> b!4754332 (=> (not res!2016707) (not e!2965880))))

(assert (=> b!4754332 e!2965880))

(declare-fun lt!1920490 () Unit!137048)

(declare-fun Unit!137098 () Unit!137048)

(assert (=> b!4754332 (= lt!1920490 Unit!137098)))

(declare-fun b!4754333 () Bool)

(assert (=> b!4754333 (= e!2965880 (forall!11776 (toList!6152 lt!1920256) lambda!222879))))

(declare-fun b!4754331 () Bool)

(declare-fun res!2016705 () Bool)

(assert (=> b!4754331 (=> (not res!2016705) (not e!2965878))))

(assert (=> b!4754331 (= res!2016705 (forall!11776 (toList!6152 lt!1920256) lambda!222880))))

(assert (=> d!1520246 e!2965878))

(declare-fun res!2016706 () Bool)

(assert (=> d!1520246 (=> (not res!2016706) (not e!2965878))))

(assert (=> d!1520246 (= res!2016706 (forall!11776 (t!360592 l!13029) lambda!222880))))

(assert (=> d!1520246 (= lt!1920493 e!2965879)))

(assert (=> d!1520246 (= c!811597 ((_ is Nil!53124) (t!360592 l!13029)))))

(assert (=> d!1520246 (noDuplicateKeys!2184 (t!360592 l!13029))))

(assert (=> d!1520246 (= (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920256) lt!1920493)))

(assert (= (and d!1520246 c!811597) b!4754329))

(assert (= (and d!1520246 (not c!811597)) b!4754332))

(assert (= (and b!4754332 res!2016707) b!4754333))

(assert (= (or b!4754329 b!4754332) bm!333315))

(assert (= (or b!4754329 b!4754332) bm!333316))

(assert (= (or b!4754329 b!4754332) bm!333314))

(assert (= (and d!1520246 res!2016706) b!4754331))

(assert (= (and b!4754331 res!2016705) b!4754330))

(declare-fun m!5722599 () Bool)

(assert (=> b!4754332 m!5722599))

(declare-fun m!5722601 () Bool)

(assert (=> b!4754332 m!5722601))

(declare-fun m!5722603 () Bool)

(assert (=> b!4754332 m!5722603))

(declare-fun m!5722605 () Bool)

(assert (=> b!4754332 m!5722605))

(declare-fun m!5722607 () Bool)

(assert (=> b!4754332 m!5722607))

(declare-fun m!5722609 () Bool)

(assert (=> b!4754332 m!5722609))

(declare-fun m!5722611 () Bool)

(assert (=> b!4754332 m!5722611))

(declare-fun m!5722613 () Bool)

(assert (=> b!4754332 m!5722613))

(assert (=> b!4754332 m!5722599))

(declare-fun m!5722615 () Bool)

(assert (=> b!4754332 m!5722615))

(declare-fun m!5722617 () Bool)

(assert (=> b!4754332 m!5722617))

(assert (=> b!4754332 m!5722601))

(declare-fun m!5722619 () Bool)

(assert (=> b!4754332 m!5722619))

(declare-fun m!5722621 () Bool)

(assert (=> bm!333314 m!5722621))

(assert (=> b!4754333 m!5722617))

(declare-fun m!5722623 () Bool)

(assert (=> bm!333315 m!5722623))

(declare-fun m!5722625 () Bool)

(assert (=> b!4754330 m!5722625))

(declare-fun m!5722627 () Bool)

(assert (=> bm!333316 m!5722627))

(declare-fun m!5722629 () Bool)

(assert (=> b!4754331 m!5722629))

(declare-fun m!5722631 () Bool)

(assert (=> d!1520246 m!5722631))

(declare-fun m!5722633 () Bool)

(assert (=> d!1520246 m!5722633))

(assert (=> b!4754257 d!1520246))

(declare-fun d!1520248 () Bool)

(declare-fun e!2965900 () Bool)

(assert (=> d!1520248 e!2965900))

(declare-fun res!2016727 () Bool)

(assert (=> d!1520248 (=> (not res!2016727) (not e!2965900))))

(declare-fun lt!1920510 () ListMap!5613)

(assert (=> d!1520248 (= res!2016727 (contains!16552 lt!1920510 (_1!30758 lt!1920252)))))

(declare-fun lt!1920512 () List!53248)

(assert (=> d!1520248 (= lt!1920510 (ListMap!5614 lt!1920512))))

(declare-fun lt!1920511 () Unit!137048)

(declare-fun lt!1920513 () Unit!137048)

(assert (=> d!1520248 (= lt!1920511 lt!1920513)))

(declare-datatypes ((Option!12551 0))(
  ( (None!12550) (Some!12550 (v!47251 V!14856)) )
))
(declare-fun getValueByKey!2101 (List!53248 K!14610) Option!12551)

(assert (=> d!1520248 (= (getValueByKey!2101 lt!1920512 (_1!30758 lt!1920252)) (Some!12550 (_2!30758 lt!1920252)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1178 (List!53248 K!14610 V!14856) Unit!137048)

(assert (=> d!1520248 (= lt!1920513 (lemmaContainsTupThenGetReturnValue!1178 lt!1920512 (_1!30758 lt!1920252) (_2!30758 lt!1920252)))))

(declare-fun insertNoDuplicatedKeys!686 (List!53248 K!14610 V!14856) List!53248)

(assert (=> d!1520248 (= lt!1920512 (insertNoDuplicatedKeys!686 (toList!6152 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920255)) (_1!30758 lt!1920252) (_2!30758 lt!1920252)))))

(assert (=> d!1520248 (= (+!2418 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920255) lt!1920252) lt!1920510)))

(declare-fun b!4754358 () Bool)

(declare-fun res!2016726 () Bool)

(assert (=> b!4754358 (=> (not res!2016726) (not e!2965900))))

(assert (=> b!4754358 (= res!2016726 (= (getValueByKey!2101 (toList!6152 lt!1920510) (_1!30758 lt!1920252)) (Some!12550 (_2!30758 lt!1920252))))))

(declare-fun b!4754359 () Bool)

(declare-fun contains!16553 (List!53248 tuple2!54928) Bool)

(assert (=> b!4754359 (= e!2965900 (contains!16553 (toList!6152 lt!1920510) lt!1920252))))

(assert (= (and d!1520248 res!2016727) b!4754358))

(assert (= (and b!4754358 res!2016726) b!4754359))

(declare-fun m!5722667 () Bool)

(assert (=> d!1520248 m!5722667))

(declare-fun m!5722669 () Bool)

(assert (=> d!1520248 m!5722669))

(declare-fun m!5722671 () Bool)

(assert (=> d!1520248 m!5722671))

(declare-fun m!5722673 () Bool)

(assert (=> d!1520248 m!5722673))

(declare-fun m!5722675 () Bool)

(assert (=> b!4754358 m!5722675))

(declare-fun m!5722677 () Bool)

(assert (=> b!4754359 m!5722677))

(assert (=> b!4754257 d!1520248))

(declare-fun d!1520260 () Bool)

(declare-fun e!2965901 () Bool)

(assert (=> d!1520260 e!2965901))

(declare-fun res!2016729 () Bool)

(assert (=> d!1520260 (=> (not res!2016729) (not e!2965901))))

(declare-fun lt!1920514 () ListMap!5613)

(assert (=> d!1520260 (= res!2016729 (contains!16552 lt!1920514 (_1!30758 lt!1920252)))))

(declare-fun lt!1920516 () List!53248)

(assert (=> d!1520260 (= lt!1920514 (ListMap!5614 lt!1920516))))

(declare-fun lt!1920515 () Unit!137048)

(declare-fun lt!1920517 () Unit!137048)

(assert (=> d!1520260 (= lt!1920515 lt!1920517)))

(assert (=> d!1520260 (= (getValueByKey!2101 lt!1920516 (_1!30758 lt!1920252)) (Some!12550 (_2!30758 lt!1920252)))))

(assert (=> d!1520260 (= lt!1920517 (lemmaContainsTupThenGetReturnValue!1178 lt!1920516 (_1!30758 lt!1920252) (_2!30758 lt!1920252)))))

(assert (=> d!1520260 (= lt!1920516 (insertNoDuplicatedKeys!686 (toList!6152 lt!1920255) (_1!30758 lt!1920252) (_2!30758 lt!1920252)))))

(assert (=> d!1520260 (= (+!2418 lt!1920255 lt!1920252) lt!1920514)))

(declare-fun b!4754360 () Bool)

(declare-fun res!2016728 () Bool)

(assert (=> b!4754360 (=> (not res!2016728) (not e!2965901))))

(assert (=> b!4754360 (= res!2016728 (= (getValueByKey!2101 (toList!6152 lt!1920514) (_1!30758 lt!1920252)) (Some!12550 (_2!30758 lt!1920252))))))

(declare-fun b!4754361 () Bool)

(assert (=> b!4754361 (= e!2965901 (contains!16553 (toList!6152 lt!1920514) lt!1920252))))

(assert (= (and d!1520260 res!2016729) b!4754360))

(assert (= (and b!4754360 res!2016728) b!4754361))

(declare-fun m!5722679 () Bool)

(assert (=> d!1520260 m!5722679))

(declare-fun m!5722681 () Bool)

(assert (=> d!1520260 m!5722681))

(declare-fun m!5722683 () Bool)

(assert (=> d!1520260 m!5722683))

(declare-fun m!5722685 () Bool)

(assert (=> d!1520260 m!5722685))

(declare-fun m!5722687 () Bool)

(assert (=> b!4754360 m!5722687))

(declare-fun m!5722689 () Bool)

(assert (=> b!4754361 m!5722689))

(assert (=> b!4754257 d!1520260))

(declare-fun d!1520262 () Bool)

(declare-fun e!2965902 () Bool)

(assert (=> d!1520262 e!2965902))

(declare-fun res!2016731 () Bool)

(assert (=> d!1520262 (=> (not res!2016731) (not e!2965902))))

(declare-fun lt!1920518 () ListMap!5613)

(assert (=> d!1520262 (= res!2016731 (contains!16552 lt!1920518 (_1!30758 lt!1920252)))))

(declare-fun lt!1920520 () List!53248)

(assert (=> d!1520262 (= lt!1920518 (ListMap!5614 lt!1920520))))

(declare-fun lt!1920519 () Unit!137048)

(declare-fun lt!1920521 () Unit!137048)

(assert (=> d!1520262 (= lt!1920519 lt!1920521)))

(assert (=> d!1520262 (= (getValueByKey!2101 lt!1920520 (_1!30758 lt!1920252)) (Some!12550 (_2!30758 lt!1920252)))))

(assert (=> d!1520262 (= lt!1920521 (lemmaContainsTupThenGetReturnValue!1178 lt!1920520 (_1!30758 lt!1920252) (_2!30758 lt!1920252)))))

(assert (=> d!1520262 (= lt!1920520 (insertNoDuplicatedKeys!686 (toList!6152 lhm!63) (_1!30758 lt!1920252) (_2!30758 lt!1920252)))))

(assert (=> d!1520262 (= (+!2418 lhm!63 lt!1920252) lt!1920518)))

(declare-fun b!4754362 () Bool)

(declare-fun res!2016730 () Bool)

(assert (=> b!4754362 (=> (not res!2016730) (not e!2965902))))

(assert (=> b!4754362 (= res!2016730 (= (getValueByKey!2101 (toList!6152 lt!1920518) (_1!30758 lt!1920252)) (Some!12550 (_2!30758 lt!1920252))))))

(declare-fun b!4754363 () Bool)

(assert (=> b!4754363 (= e!2965902 (contains!16553 (toList!6152 lt!1920518) lt!1920252))))

(assert (= (and d!1520262 res!2016731) b!4754362))

(assert (= (and b!4754362 res!2016730) b!4754363))

(declare-fun m!5722691 () Bool)

(assert (=> d!1520262 m!5722691))

(declare-fun m!5722693 () Bool)

(assert (=> d!1520262 m!5722693))

(declare-fun m!5722695 () Bool)

(assert (=> d!1520262 m!5722695))

(declare-fun m!5722697 () Bool)

(assert (=> d!1520262 m!5722697))

(declare-fun m!5722699 () Bool)

(assert (=> b!4754362 m!5722699))

(declare-fun m!5722701 () Bool)

(assert (=> b!4754363 m!5722701))

(assert (=> b!4754257 d!1520262))

(declare-fun bs!1146007 () Bool)

(declare-fun b!4754364 () Bool)

(assert (= bs!1146007 (and b!4754364 d!1520246)))

(declare-fun lambda!222881 () Int)

(assert (=> bs!1146007 (= (= lt!1920255 lt!1920493) (= lambda!222881 lambda!222880))))

(declare-fun bs!1146008 () Bool)

(assert (= bs!1146008 (and b!4754364 b!4754332)))

(assert (=> bs!1146008 (= (= lt!1920255 lt!1920256) (= lambda!222881 lambda!222878))))

(declare-fun bs!1146009 () Bool)

(assert (= bs!1146009 (and b!4754364 b!4754329)))

(assert (=> bs!1146009 (= (= lt!1920255 lt!1920256) (= lambda!222881 lambda!222877))))

(assert (=> bs!1146008 (= (= lt!1920255 lt!1920476) (= lambda!222881 lambda!222879))))

(declare-fun bs!1146010 () Bool)

(assert (= bs!1146010 (and b!4754364 d!1520226)))

(assert (=> bs!1146010 (= (= lt!1920255 lt!1920465) (= lambda!222881 lambda!222876))))

(declare-fun bs!1146011 () Bool)

(assert (= bs!1146011 (and b!4754364 b!4754323)))

(assert (=> bs!1146011 (= (= lt!1920255 lt!1920253) (= lambda!222881 lambda!222874))))

(declare-fun bs!1146012 () Bool)

(assert (= bs!1146012 (and b!4754364 b!4754320)))

(assert (=> bs!1146012 (= (= lt!1920255 lt!1920253) (= lambda!222881 lambda!222873))))

(assert (=> bs!1146011 (= (= lt!1920255 lt!1920448) (= lambda!222881 lambda!222875))))

(assert (=> b!4754364 true))

(declare-fun bs!1146013 () Bool)

(declare-fun b!4754367 () Bool)

(assert (= bs!1146013 (and b!4754367 d!1520246)))

(declare-fun lambda!222882 () Int)

(assert (=> bs!1146013 (= (= lt!1920255 lt!1920493) (= lambda!222882 lambda!222880))))

(declare-fun bs!1146014 () Bool)

(assert (= bs!1146014 (and b!4754367 b!4754332)))

(assert (=> bs!1146014 (= (= lt!1920255 lt!1920256) (= lambda!222882 lambda!222878))))

(declare-fun bs!1146015 () Bool)

(assert (= bs!1146015 (and b!4754367 b!4754329)))

(assert (=> bs!1146015 (= (= lt!1920255 lt!1920256) (= lambda!222882 lambda!222877))))

(assert (=> bs!1146014 (= (= lt!1920255 lt!1920476) (= lambda!222882 lambda!222879))))

(declare-fun bs!1146016 () Bool)

(assert (= bs!1146016 (and b!4754367 d!1520226)))

(assert (=> bs!1146016 (= (= lt!1920255 lt!1920465) (= lambda!222882 lambda!222876))))

(declare-fun bs!1146017 () Bool)

(assert (= bs!1146017 (and b!4754367 b!4754320)))

(assert (=> bs!1146017 (= (= lt!1920255 lt!1920253) (= lambda!222882 lambda!222873))))

(declare-fun bs!1146018 () Bool)

(assert (= bs!1146018 (and b!4754367 b!4754323)))

(assert (=> bs!1146018 (= (= lt!1920255 lt!1920448) (= lambda!222882 lambda!222875))))

(assert (=> bs!1146018 (= (= lt!1920255 lt!1920253) (= lambda!222882 lambda!222874))))

(declare-fun bs!1146019 () Bool)

(assert (= bs!1146019 (and b!4754367 b!4754364)))

(assert (=> bs!1146019 (= lambda!222882 lambda!222881)))

(assert (=> b!4754367 true))

(declare-fun lt!1920524 () ListMap!5613)

(declare-fun lambda!222883 () Int)

(assert (=> bs!1146013 (= (= lt!1920524 lt!1920493) (= lambda!222883 lambda!222880))))

(assert (=> bs!1146014 (= (= lt!1920524 lt!1920256) (= lambda!222883 lambda!222878))))

(assert (=> bs!1146015 (= (= lt!1920524 lt!1920256) (= lambda!222883 lambda!222877))))

(assert (=> bs!1146014 (= (= lt!1920524 lt!1920476) (= lambda!222883 lambda!222879))))

(assert (=> bs!1146016 (= (= lt!1920524 lt!1920465) (= lambda!222883 lambda!222876))))

(assert (=> bs!1146017 (= (= lt!1920524 lt!1920253) (= lambda!222883 lambda!222873))))

(assert (=> b!4754367 (= (= lt!1920524 lt!1920255) (= lambda!222883 lambda!222882))))

(assert (=> bs!1146018 (= (= lt!1920524 lt!1920448) (= lambda!222883 lambda!222875))))

(assert (=> bs!1146018 (= (= lt!1920524 lt!1920253) (= lambda!222883 lambda!222874))))

(assert (=> bs!1146019 (= (= lt!1920524 lt!1920255) (= lambda!222883 lambda!222881))))

(assert (=> b!4754367 true))

(declare-fun bs!1146020 () Bool)

(declare-fun d!1520264 () Bool)

(assert (= bs!1146020 (and d!1520264 d!1520246)))

(declare-fun lt!1920541 () ListMap!5613)

(declare-fun lambda!222884 () Int)

(assert (=> bs!1146020 (= (= lt!1920541 lt!1920493) (= lambda!222884 lambda!222880))))

(declare-fun bs!1146021 () Bool)

(assert (= bs!1146021 (and d!1520264 b!4754329)))

(assert (=> bs!1146021 (= (= lt!1920541 lt!1920256) (= lambda!222884 lambda!222877))))

(declare-fun bs!1146022 () Bool)

(assert (= bs!1146022 (and d!1520264 b!4754332)))

(assert (=> bs!1146022 (= (= lt!1920541 lt!1920476) (= lambda!222884 lambda!222879))))

(declare-fun bs!1146023 () Bool)

(assert (= bs!1146023 (and d!1520264 d!1520226)))

(assert (=> bs!1146023 (= (= lt!1920541 lt!1920465) (= lambda!222884 lambda!222876))))

(declare-fun bs!1146024 () Bool)

(assert (= bs!1146024 (and d!1520264 b!4754320)))

(assert (=> bs!1146024 (= (= lt!1920541 lt!1920253) (= lambda!222884 lambda!222873))))

(declare-fun bs!1146025 () Bool)

(assert (= bs!1146025 (and d!1520264 b!4754367)))

(assert (=> bs!1146025 (= (= lt!1920541 lt!1920255) (= lambda!222884 lambda!222882))))

(declare-fun bs!1146026 () Bool)

(assert (= bs!1146026 (and d!1520264 b!4754323)))

(assert (=> bs!1146026 (= (= lt!1920541 lt!1920448) (= lambda!222884 lambda!222875))))

(assert (=> bs!1146022 (= (= lt!1920541 lt!1920256) (= lambda!222884 lambda!222878))))

(assert (=> bs!1146025 (= (= lt!1920541 lt!1920524) (= lambda!222884 lambda!222883))))

(assert (=> bs!1146026 (= (= lt!1920541 lt!1920253) (= lambda!222884 lambda!222874))))

(declare-fun bs!1146027 () Bool)

(assert (= bs!1146027 (and d!1520264 b!4754364)))

(assert (=> bs!1146027 (= (= lt!1920541 lt!1920255) (= lambda!222884 lambda!222881))))

(assert (=> d!1520264 true))

(declare-fun e!2965904 () ListMap!5613)

(assert (=> b!4754364 (= e!2965904 lt!1920255)))

(declare-fun lt!1920539 () Unit!137048)

(declare-fun call!333322 () Unit!137048)

(assert (=> b!4754364 (= lt!1920539 call!333322)))

(declare-fun call!333324 () Bool)

(assert (=> b!4754364 call!333324))

(declare-fun lt!1920530 () Unit!137048)

(assert (=> b!4754364 (= lt!1920530 lt!1920539)))

(declare-fun call!333323 () Bool)

(assert (=> b!4754364 call!333323))

(declare-fun lt!1920535 () Unit!137048)

(declare-fun Unit!137107 () Unit!137048)

(assert (=> b!4754364 (= lt!1920535 Unit!137107)))

(declare-fun bm!333317 () Bool)

(assert (=> bm!333317 (= call!333322 (lemmaContainsAllItsOwnKeys!891 lt!1920255))))

(declare-fun b!4754365 () Bool)

(declare-fun e!2965903 () Bool)

(assert (=> b!4754365 (= e!2965903 (invariantList!1614 (toList!6152 lt!1920541)))))

(declare-fun bm!333318 () Bool)

(declare-fun c!811598 () Bool)

(assert (=> bm!333318 (= call!333323 (forall!11776 (toList!6152 lt!1920255) (ite c!811598 lambda!222881 lambda!222883)))))

(declare-fun bm!333319 () Bool)

(assert (=> bm!333319 (= call!333324 (forall!11776 (ite c!811598 (toList!6152 lt!1920255) (t!360592 l!13029)) (ite c!811598 lambda!222881 lambda!222883)))))

(assert (=> b!4754367 (= e!2965904 lt!1920524)))

(declare-fun lt!1920537 () ListMap!5613)

(assert (=> b!4754367 (= lt!1920537 (+!2418 lt!1920255 (h!59521 (t!360592 l!13029))))))

(assert (=> b!4754367 (= lt!1920524 (addToMapMapFromBucket!1598 (t!360592 (t!360592 l!13029)) (+!2418 lt!1920255 (h!59521 (t!360592 l!13029)))))))

(declare-fun lt!1920525 () Unit!137048)

(assert (=> b!4754367 (= lt!1920525 call!333322)))

(assert (=> b!4754367 (forall!11776 (toList!6152 lt!1920255) lambda!222882)))

(declare-fun lt!1920534 () Unit!137048)

(assert (=> b!4754367 (= lt!1920534 lt!1920525)))

(assert (=> b!4754367 (forall!11776 (toList!6152 lt!1920537) lambda!222883)))

(declare-fun lt!1920527 () Unit!137048)

(declare-fun Unit!137115 () Unit!137048)

(assert (=> b!4754367 (= lt!1920527 Unit!137115)))

(assert (=> b!4754367 (forall!11776 (t!360592 (t!360592 l!13029)) lambda!222883)))

(declare-fun lt!1920531 () Unit!137048)

(declare-fun Unit!137116 () Unit!137048)

(assert (=> b!4754367 (= lt!1920531 Unit!137116)))

(declare-fun lt!1920542 () Unit!137048)

(declare-fun Unit!137117 () Unit!137048)

(assert (=> b!4754367 (= lt!1920542 Unit!137117)))

(declare-fun lt!1920522 () Unit!137048)

(assert (=> b!4754367 (= lt!1920522 (forallContained!3802 (toList!6152 lt!1920537) lambda!222883 (h!59521 (t!360592 l!13029))))))

(assert (=> b!4754367 (contains!16552 lt!1920537 (_1!30758 (h!59521 (t!360592 l!13029))))))

(declare-fun lt!1920536 () Unit!137048)

(declare-fun Unit!137119 () Unit!137048)

(assert (=> b!4754367 (= lt!1920536 Unit!137119)))

(assert (=> b!4754367 (contains!16552 lt!1920524 (_1!30758 (h!59521 (t!360592 l!13029))))))

(declare-fun lt!1920528 () Unit!137048)

(declare-fun Unit!137121 () Unit!137048)

(assert (=> b!4754367 (= lt!1920528 Unit!137121)))

(assert (=> b!4754367 call!333324))

(declare-fun lt!1920540 () Unit!137048)

(declare-fun Unit!137122 () Unit!137048)

(assert (=> b!4754367 (= lt!1920540 Unit!137122)))

(assert (=> b!4754367 (forall!11776 (toList!6152 lt!1920537) lambda!222883)))

(declare-fun lt!1920532 () Unit!137048)

(declare-fun Unit!137123 () Unit!137048)

(assert (=> b!4754367 (= lt!1920532 Unit!137123)))

(declare-fun lt!1920526 () Unit!137048)

(declare-fun Unit!137124 () Unit!137048)

(assert (=> b!4754367 (= lt!1920526 Unit!137124)))

(declare-fun lt!1920529 () Unit!137048)

(assert (=> b!4754367 (= lt!1920529 (addForallContainsKeyThenBeforeAdding!890 lt!1920255 lt!1920524 (_1!30758 (h!59521 (t!360592 l!13029))) (_2!30758 (h!59521 (t!360592 l!13029)))))))

(assert (=> b!4754367 call!333323))

(declare-fun lt!1920533 () Unit!137048)

(assert (=> b!4754367 (= lt!1920533 lt!1920529)))

(assert (=> b!4754367 (forall!11776 (toList!6152 lt!1920255) lambda!222883)))

(declare-fun lt!1920523 () Unit!137048)

(declare-fun Unit!137125 () Unit!137048)

(assert (=> b!4754367 (= lt!1920523 Unit!137125)))

(declare-fun res!2016734 () Bool)

(assert (=> b!4754367 (= res!2016734 (forall!11776 (t!360592 l!13029) lambda!222883))))

(declare-fun e!2965905 () Bool)

(assert (=> b!4754367 (=> (not res!2016734) (not e!2965905))))

(assert (=> b!4754367 e!2965905))

(declare-fun lt!1920538 () Unit!137048)

(declare-fun Unit!137126 () Unit!137048)

(assert (=> b!4754367 (= lt!1920538 Unit!137126)))

(declare-fun b!4754368 () Bool)

(assert (=> b!4754368 (= e!2965905 (forall!11776 (toList!6152 lt!1920255) lambda!222883))))

(declare-fun b!4754366 () Bool)

(declare-fun res!2016732 () Bool)

(assert (=> b!4754366 (=> (not res!2016732) (not e!2965903))))

(assert (=> b!4754366 (= res!2016732 (forall!11776 (toList!6152 lt!1920255) lambda!222884))))

(assert (=> d!1520264 e!2965903))

(declare-fun res!2016733 () Bool)

(assert (=> d!1520264 (=> (not res!2016733) (not e!2965903))))

(assert (=> d!1520264 (= res!2016733 (forall!11776 (t!360592 l!13029) lambda!222884))))

(assert (=> d!1520264 (= lt!1920541 e!2965904)))

(assert (=> d!1520264 (= c!811598 ((_ is Nil!53124) (t!360592 l!13029)))))

(assert (=> d!1520264 (noDuplicateKeys!2184 (t!360592 l!13029))))

(assert (=> d!1520264 (= (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920255) lt!1920541)))

(assert (= (and d!1520264 c!811598) b!4754364))

(assert (= (and d!1520264 (not c!811598)) b!4754367))

(assert (= (and b!4754367 res!2016734) b!4754368))

(assert (= (or b!4754364 b!4754367) bm!333318))

(assert (= (or b!4754364 b!4754367) bm!333319))

(assert (= (or b!4754364 b!4754367) bm!333317))

(assert (= (and d!1520264 res!2016733) b!4754366))

(assert (= (and b!4754366 res!2016732) b!4754365))

(declare-fun m!5722703 () Bool)

(assert (=> b!4754367 m!5722703))

(declare-fun m!5722705 () Bool)

(assert (=> b!4754367 m!5722705))

(declare-fun m!5722707 () Bool)

(assert (=> b!4754367 m!5722707))

(declare-fun m!5722709 () Bool)

(assert (=> b!4754367 m!5722709))

(declare-fun m!5722711 () Bool)

(assert (=> b!4754367 m!5722711))

(declare-fun m!5722713 () Bool)

(assert (=> b!4754367 m!5722713))

(declare-fun m!5722715 () Bool)

(assert (=> b!4754367 m!5722715))

(declare-fun m!5722717 () Bool)

(assert (=> b!4754367 m!5722717))

(assert (=> b!4754367 m!5722703))

(declare-fun m!5722719 () Bool)

(assert (=> b!4754367 m!5722719))

(declare-fun m!5722721 () Bool)

(assert (=> b!4754367 m!5722721))

(assert (=> b!4754367 m!5722705))

(declare-fun m!5722723 () Bool)

(assert (=> b!4754367 m!5722723))

(declare-fun m!5722725 () Bool)

(assert (=> bm!333317 m!5722725))

(assert (=> b!4754368 m!5722721))

(declare-fun m!5722727 () Bool)

(assert (=> bm!333318 m!5722727))

(declare-fun m!5722729 () Bool)

(assert (=> b!4754365 m!5722729))

(declare-fun m!5722731 () Bool)

(assert (=> bm!333319 m!5722731))

(declare-fun m!5722733 () Bool)

(assert (=> b!4754366 m!5722733))

(declare-fun m!5722735 () Bool)

(assert (=> d!1520264 m!5722735))

(assert (=> d!1520264 m!5722633))

(assert (=> b!4754257 d!1520264))

(declare-fun d!1520266 () Bool)

(assert (=> d!1520266 (eq!1249 (addToMapMapFromBucket!1598 (t!360592 l!13029) (+!2418 lt!1920255 (tuple2!54929 key!4572 value!2966))) (+!2418 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920255) (tuple2!54929 key!4572 value!2966)))))

(declare-fun lt!1920545 () Unit!137048)

(declare-fun choose!33867 (ListMap!5613 K!14610 V!14856 List!53248) Unit!137048)

(assert (=> d!1520266 (= lt!1920545 (choose!33867 lt!1920255 key!4572 value!2966 (t!360592 l!13029)))))

(assert (=> d!1520266 (not (containsKey!3590 (t!360592 l!13029) key!4572))))

(assert (=> d!1520266 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!260 lt!1920255 key!4572 value!2966 (t!360592 l!13029)) lt!1920545)))

(declare-fun bs!1146028 () Bool)

(assert (= bs!1146028 d!1520266))

(declare-fun m!5722737 () Bool)

(assert (=> bs!1146028 m!5722737))

(assert (=> bs!1146028 m!5722339))

(declare-fun m!5722739 () Bool)

(assert (=> bs!1146028 m!5722739))

(declare-fun m!5722741 () Bool)

(assert (=> bs!1146028 m!5722741))

(assert (=> bs!1146028 m!5722339))

(declare-fun m!5722743 () Bool)

(assert (=> bs!1146028 m!5722743))

(assert (=> bs!1146028 m!5722741))

(assert (=> bs!1146028 m!5722743))

(declare-fun m!5722745 () Bool)

(assert (=> bs!1146028 m!5722745))

(assert (=> bs!1146028 m!5722383))

(assert (=> bs!1146028 m!5722739))

(assert (=> b!4754257 d!1520266))

(declare-fun d!1520268 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9551 (List!53248) (InoxSet tuple2!54928))

(assert (=> d!1520268 (= (eq!1249 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920256) (+!2418 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920255) lt!1920252)) (= (content!9551 (toList!6152 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920256))) (content!9551 (toList!6152 (+!2418 (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920255) lt!1920252)))))))

(declare-fun bs!1146029 () Bool)

(assert (= bs!1146029 d!1520268))

(declare-fun m!5722747 () Bool)

(assert (=> bs!1146029 m!5722747))

(declare-fun m!5722749 () Bool)

(assert (=> bs!1146029 m!5722749))

(assert (=> b!4754257 d!1520268))

(declare-fun bs!1146030 () Bool)

(declare-fun b!4754369 () Bool)

(assert (= bs!1146030 (and b!4754369 d!1520264)))

(declare-fun lambda!222885 () Int)

(assert (=> bs!1146030 (= (= lt!1920257 lt!1920541) (= lambda!222885 lambda!222884))))

(declare-fun bs!1146031 () Bool)

(assert (= bs!1146031 (and b!4754369 d!1520246)))

(assert (=> bs!1146031 (= (= lt!1920257 lt!1920493) (= lambda!222885 lambda!222880))))

(declare-fun bs!1146032 () Bool)

(assert (= bs!1146032 (and b!4754369 b!4754329)))

(assert (=> bs!1146032 (= (= lt!1920257 lt!1920256) (= lambda!222885 lambda!222877))))

(declare-fun bs!1146033 () Bool)

(assert (= bs!1146033 (and b!4754369 b!4754332)))

(assert (=> bs!1146033 (= (= lt!1920257 lt!1920476) (= lambda!222885 lambda!222879))))

(declare-fun bs!1146034 () Bool)

(assert (= bs!1146034 (and b!4754369 d!1520226)))

(assert (=> bs!1146034 (= (= lt!1920257 lt!1920465) (= lambda!222885 lambda!222876))))

(declare-fun bs!1146035 () Bool)

(assert (= bs!1146035 (and b!4754369 b!4754320)))

(assert (=> bs!1146035 (= (= lt!1920257 lt!1920253) (= lambda!222885 lambda!222873))))

(declare-fun bs!1146036 () Bool)

(assert (= bs!1146036 (and b!4754369 b!4754367)))

(assert (=> bs!1146036 (= (= lt!1920257 lt!1920255) (= lambda!222885 lambda!222882))))

(declare-fun bs!1146037 () Bool)

(assert (= bs!1146037 (and b!4754369 b!4754323)))

(assert (=> bs!1146037 (= (= lt!1920257 lt!1920448) (= lambda!222885 lambda!222875))))

(assert (=> bs!1146033 (= (= lt!1920257 lt!1920256) (= lambda!222885 lambda!222878))))

(assert (=> bs!1146036 (= (= lt!1920257 lt!1920524) (= lambda!222885 lambda!222883))))

(assert (=> bs!1146037 (= (= lt!1920257 lt!1920253) (= lambda!222885 lambda!222874))))

(declare-fun bs!1146038 () Bool)

(assert (= bs!1146038 (and b!4754369 b!4754364)))

(assert (=> bs!1146038 (= (= lt!1920257 lt!1920255) (= lambda!222885 lambda!222881))))

(assert (=> b!4754369 true))

(declare-fun bs!1146039 () Bool)

(declare-fun b!4754372 () Bool)

(assert (= bs!1146039 (and b!4754372 d!1520264)))

(declare-fun lambda!222886 () Int)

(assert (=> bs!1146039 (= (= lt!1920257 lt!1920541) (= lambda!222886 lambda!222884))))

(declare-fun bs!1146040 () Bool)

(assert (= bs!1146040 (and b!4754372 d!1520246)))

(assert (=> bs!1146040 (= (= lt!1920257 lt!1920493) (= lambda!222886 lambda!222880))))

(declare-fun bs!1146041 () Bool)

(assert (= bs!1146041 (and b!4754372 b!4754329)))

(assert (=> bs!1146041 (= (= lt!1920257 lt!1920256) (= lambda!222886 lambda!222877))))

(declare-fun bs!1146042 () Bool)

(assert (= bs!1146042 (and b!4754372 b!4754332)))

(assert (=> bs!1146042 (= (= lt!1920257 lt!1920476) (= lambda!222886 lambda!222879))))

(declare-fun bs!1146043 () Bool)

(assert (= bs!1146043 (and b!4754372 d!1520226)))

(assert (=> bs!1146043 (= (= lt!1920257 lt!1920465) (= lambda!222886 lambda!222876))))

(declare-fun bs!1146044 () Bool)

(assert (= bs!1146044 (and b!4754372 b!4754320)))

(assert (=> bs!1146044 (= (= lt!1920257 lt!1920253) (= lambda!222886 lambda!222873))))

(declare-fun bs!1146045 () Bool)

(assert (= bs!1146045 (and b!4754372 b!4754367)))

(assert (=> bs!1146045 (= (= lt!1920257 lt!1920255) (= lambda!222886 lambda!222882))))

(declare-fun bs!1146046 () Bool)

(assert (= bs!1146046 (and b!4754372 b!4754369)))

(assert (=> bs!1146046 (= lambda!222886 lambda!222885)))

(declare-fun bs!1146047 () Bool)

(assert (= bs!1146047 (and b!4754372 b!4754323)))

(assert (=> bs!1146047 (= (= lt!1920257 lt!1920448) (= lambda!222886 lambda!222875))))

(assert (=> bs!1146042 (= (= lt!1920257 lt!1920256) (= lambda!222886 lambda!222878))))

(assert (=> bs!1146045 (= (= lt!1920257 lt!1920524) (= lambda!222886 lambda!222883))))

(assert (=> bs!1146047 (= (= lt!1920257 lt!1920253) (= lambda!222886 lambda!222874))))

(declare-fun bs!1146048 () Bool)

(assert (= bs!1146048 (and b!4754372 b!4754364)))

(assert (=> bs!1146048 (= (= lt!1920257 lt!1920255) (= lambda!222886 lambda!222881))))

(assert (=> b!4754372 true))

(declare-fun lambda!222887 () Int)

(declare-fun lt!1920548 () ListMap!5613)

(assert (=> bs!1146039 (= (= lt!1920548 lt!1920541) (= lambda!222887 lambda!222884))))

(assert (=> bs!1146040 (= (= lt!1920548 lt!1920493) (= lambda!222887 lambda!222880))))

(assert (=> bs!1146042 (= (= lt!1920548 lt!1920476) (= lambda!222887 lambda!222879))))

(assert (=> bs!1146043 (= (= lt!1920548 lt!1920465) (= lambda!222887 lambda!222876))))

(assert (=> bs!1146044 (= (= lt!1920548 lt!1920253) (= lambda!222887 lambda!222873))))

(assert (=> bs!1146045 (= (= lt!1920548 lt!1920255) (= lambda!222887 lambda!222882))))

(assert (=> bs!1146046 (= (= lt!1920548 lt!1920257) (= lambda!222887 lambda!222885))))

(assert (=> bs!1146047 (= (= lt!1920548 lt!1920448) (= lambda!222887 lambda!222875))))

(assert (=> bs!1146042 (= (= lt!1920548 lt!1920256) (= lambda!222887 lambda!222878))))

(assert (=> bs!1146045 (= (= lt!1920548 lt!1920524) (= lambda!222887 lambda!222883))))

(assert (=> b!4754372 (= (= lt!1920548 lt!1920257) (= lambda!222887 lambda!222886))))

(assert (=> bs!1146041 (= (= lt!1920548 lt!1920256) (= lambda!222887 lambda!222877))))

(assert (=> bs!1146047 (= (= lt!1920548 lt!1920253) (= lambda!222887 lambda!222874))))

(assert (=> bs!1146048 (= (= lt!1920548 lt!1920255) (= lambda!222887 lambda!222881))))

(assert (=> b!4754372 true))

(declare-fun bs!1146049 () Bool)

(declare-fun d!1520270 () Bool)

(assert (= bs!1146049 (and d!1520270 d!1520264)))

(declare-fun lambda!222888 () Int)

(declare-fun lt!1920565 () ListMap!5613)

(assert (=> bs!1146049 (= (= lt!1920565 lt!1920541) (= lambda!222888 lambda!222884))))

(declare-fun bs!1146050 () Bool)

(assert (= bs!1146050 (and d!1520270 d!1520246)))

(assert (=> bs!1146050 (= (= lt!1920565 lt!1920493) (= lambda!222888 lambda!222880))))

(declare-fun bs!1146051 () Bool)

(assert (= bs!1146051 (and d!1520270 b!4754332)))

(assert (=> bs!1146051 (= (= lt!1920565 lt!1920476) (= lambda!222888 lambda!222879))))

(declare-fun bs!1146052 () Bool)

(assert (= bs!1146052 (and d!1520270 d!1520226)))

(assert (=> bs!1146052 (= (= lt!1920565 lt!1920465) (= lambda!222888 lambda!222876))))

(declare-fun bs!1146053 () Bool)

(assert (= bs!1146053 (and d!1520270 b!4754320)))

(assert (=> bs!1146053 (= (= lt!1920565 lt!1920253) (= lambda!222888 lambda!222873))))

(declare-fun bs!1146054 () Bool)

(assert (= bs!1146054 (and d!1520270 b!4754367)))

(assert (=> bs!1146054 (= (= lt!1920565 lt!1920255) (= lambda!222888 lambda!222882))))

(declare-fun bs!1146055 () Bool)

(assert (= bs!1146055 (and d!1520270 b!4754369)))

(assert (=> bs!1146055 (= (= lt!1920565 lt!1920257) (= lambda!222888 lambda!222885))))

(declare-fun bs!1146056 () Bool)

(assert (= bs!1146056 (and d!1520270 b!4754323)))

(assert (=> bs!1146056 (= (= lt!1920565 lt!1920448) (= lambda!222888 lambda!222875))))

(assert (=> bs!1146051 (= (= lt!1920565 lt!1920256) (= lambda!222888 lambda!222878))))

(assert (=> bs!1146054 (= (= lt!1920565 lt!1920524) (= lambda!222888 lambda!222883))))

(declare-fun bs!1146057 () Bool)

(assert (= bs!1146057 (and d!1520270 b!4754372)))

(assert (=> bs!1146057 (= (= lt!1920565 lt!1920548) (= lambda!222888 lambda!222887))))

(assert (=> bs!1146057 (= (= lt!1920565 lt!1920257) (= lambda!222888 lambda!222886))))

(declare-fun bs!1146058 () Bool)

(assert (= bs!1146058 (and d!1520270 b!4754329)))

(assert (=> bs!1146058 (= (= lt!1920565 lt!1920256) (= lambda!222888 lambda!222877))))

(assert (=> bs!1146056 (= (= lt!1920565 lt!1920253) (= lambda!222888 lambda!222874))))

(declare-fun bs!1146059 () Bool)

(assert (= bs!1146059 (and d!1520270 b!4754364)))

(assert (=> bs!1146059 (= (= lt!1920565 lt!1920255) (= lambda!222888 lambda!222881))))

(assert (=> d!1520270 true))

(declare-fun e!2965907 () ListMap!5613)

(assert (=> b!4754369 (= e!2965907 lt!1920257)))

(declare-fun lt!1920563 () Unit!137048)

(declare-fun call!333325 () Unit!137048)

(assert (=> b!4754369 (= lt!1920563 call!333325)))

(declare-fun call!333327 () Bool)

(assert (=> b!4754369 call!333327))

(declare-fun lt!1920554 () Unit!137048)

(assert (=> b!4754369 (= lt!1920554 lt!1920563)))

(declare-fun call!333326 () Bool)

(assert (=> b!4754369 call!333326))

(declare-fun lt!1920559 () Unit!137048)

(declare-fun Unit!137127 () Unit!137048)

(assert (=> b!4754369 (= lt!1920559 Unit!137127)))

(declare-fun bm!333320 () Bool)

(assert (=> bm!333320 (= call!333325 (lemmaContainsAllItsOwnKeys!891 lt!1920257))))

(declare-fun b!4754370 () Bool)

(declare-fun e!2965906 () Bool)

(assert (=> b!4754370 (= e!2965906 (invariantList!1614 (toList!6152 lt!1920565)))))

(declare-fun bm!333321 () Bool)

(declare-fun c!811599 () Bool)

(assert (=> bm!333321 (= call!333326 (forall!11776 (toList!6152 lt!1920257) (ite c!811599 lambda!222885 lambda!222887)))))

(declare-fun bm!333322 () Bool)

(assert (=> bm!333322 (= call!333327 (forall!11776 (ite c!811599 (toList!6152 lt!1920257) (t!360592 l!13029)) (ite c!811599 lambda!222885 lambda!222887)))))

(assert (=> b!4754372 (= e!2965907 lt!1920548)))

(declare-fun lt!1920561 () ListMap!5613)

(assert (=> b!4754372 (= lt!1920561 (+!2418 lt!1920257 (h!59521 (t!360592 l!13029))))))

(assert (=> b!4754372 (= lt!1920548 (addToMapMapFromBucket!1598 (t!360592 (t!360592 l!13029)) (+!2418 lt!1920257 (h!59521 (t!360592 l!13029)))))))

(declare-fun lt!1920549 () Unit!137048)

(assert (=> b!4754372 (= lt!1920549 call!333325)))

(assert (=> b!4754372 (forall!11776 (toList!6152 lt!1920257) lambda!222886)))

(declare-fun lt!1920558 () Unit!137048)

(assert (=> b!4754372 (= lt!1920558 lt!1920549)))

(assert (=> b!4754372 (forall!11776 (toList!6152 lt!1920561) lambda!222887)))

(declare-fun lt!1920551 () Unit!137048)

(declare-fun Unit!137128 () Unit!137048)

(assert (=> b!4754372 (= lt!1920551 Unit!137128)))

(assert (=> b!4754372 (forall!11776 (t!360592 (t!360592 l!13029)) lambda!222887)))

(declare-fun lt!1920555 () Unit!137048)

(declare-fun Unit!137129 () Unit!137048)

(assert (=> b!4754372 (= lt!1920555 Unit!137129)))

(declare-fun lt!1920566 () Unit!137048)

(declare-fun Unit!137130 () Unit!137048)

(assert (=> b!4754372 (= lt!1920566 Unit!137130)))

(declare-fun lt!1920546 () Unit!137048)

(assert (=> b!4754372 (= lt!1920546 (forallContained!3802 (toList!6152 lt!1920561) lambda!222887 (h!59521 (t!360592 l!13029))))))

(assert (=> b!4754372 (contains!16552 lt!1920561 (_1!30758 (h!59521 (t!360592 l!13029))))))

(declare-fun lt!1920560 () Unit!137048)

(declare-fun Unit!137131 () Unit!137048)

(assert (=> b!4754372 (= lt!1920560 Unit!137131)))

(assert (=> b!4754372 (contains!16552 lt!1920548 (_1!30758 (h!59521 (t!360592 l!13029))))))

(declare-fun lt!1920552 () Unit!137048)

(declare-fun Unit!137132 () Unit!137048)

(assert (=> b!4754372 (= lt!1920552 Unit!137132)))

(assert (=> b!4754372 call!333327))

(declare-fun lt!1920564 () Unit!137048)

(declare-fun Unit!137133 () Unit!137048)

(assert (=> b!4754372 (= lt!1920564 Unit!137133)))

(assert (=> b!4754372 (forall!11776 (toList!6152 lt!1920561) lambda!222887)))

(declare-fun lt!1920556 () Unit!137048)

(declare-fun Unit!137134 () Unit!137048)

(assert (=> b!4754372 (= lt!1920556 Unit!137134)))

(declare-fun lt!1920550 () Unit!137048)

(declare-fun Unit!137135 () Unit!137048)

(assert (=> b!4754372 (= lt!1920550 Unit!137135)))

(declare-fun lt!1920553 () Unit!137048)

(assert (=> b!4754372 (= lt!1920553 (addForallContainsKeyThenBeforeAdding!890 lt!1920257 lt!1920548 (_1!30758 (h!59521 (t!360592 l!13029))) (_2!30758 (h!59521 (t!360592 l!13029)))))))

(assert (=> b!4754372 call!333326))

(declare-fun lt!1920557 () Unit!137048)

(assert (=> b!4754372 (= lt!1920557 lt!1920553)))

(assert (=> b!4754372 (forall!11776 (toList!6152 lt!1920257) lambda!222887)))

(declare-fun lt!1920547 () Unit!137048)

(declare-fun Unit!137136 () Unit!137048)

(assert (=> b!4754372 (= lt!1920547 Unit!137136)))

(declare-fun res!2016737 () Bool)

(assert (=> b!4754372 (= res!2016737 (forall!11776 (t!360592 l!13029) lambda!222887))))

(declare-fun e!2965908 () Bool)

(assert (=> b!4754372 (=> (not res!2016737) (not e!2965908))))

(assert (=> b!4754372 e!2965908))

(declare-fun lt!1920562 () Unit!137048)

(declare-fun Unit!137137 () Unit!137048)

(assert (=> b!4754372 (= lt!1920562 Unit!137137)))

(declare-fun b!4754373 () Bool)

(assert (=> b!4754373 (= e!2965908 (forall!11776 (toList!6152 lt!1920257) lambda!222887))))

(declare-fun b!4754371 () Bool)

(declare-fun res!2016735 () Bool)

(assert (=> b!4754371 (=> (not res!2016735) (not e!2965906))))

(assert (=> b!4754371 (= res!2016735 (forall!11776 (toList!6152 lt!1920257) lambda!222888))))

(assert (=> d!1520270 e!2965906))

(declare-fun res!2016736 () Bool)

(assert (=> d!1520270 (=> (not res!2016736) (not e!2965906))))

(assert (=> d!1520270 (= res!2016736 (forall!11776 (t!360592 l!13029) lambda!222888))))

(assert (=> d!1520270 (= lt!1920565 e!2965907)))

(assert (=> d!1520270 (= c!811599 ((_ is Nil!53124) (t!360592 l!13029)))))

(assert (=> d!1520270 (noDuplicateKeys!2184 (t!360592 l!13029))))

(assert (=> d!1520270 (= (addToMapMapFromBucket!1598 (t!360592 l!13029) lt!1920257) lt!1920565)))

(assert (= (and d!1520270 c!811599) b!4754369))

(assert (= (and d!1520270 (not c!811599)) b!4754372))

(assert (= (and b!4754372 res!2016737) b!4754373))

(assert (= (or b!4754369 b!4754372) bm!333321))

(assert (= (or b!4754369 b!4754372) bm!333322))

(assert (= (or b!4754369 b!4754372) bm!333320))

(assert (= (and d!1520270 res!2016736) b!4754371))

(assert (= (and b!4754371 res!2016735) b!4754370))

(declare-fun m!5722751 () Bool)

(assert (=> b!4754372 m!5722751))

(declare-fun m!5722753 () Bool)

(assert (=> b!4754372 m!5722753))

(declare-fun m!5722755 () Bool)

(assert (=> b!4754372 m!5722755))

(declare-fun m!5722757 () Bool)

(assert (=> b!4754372 m!5722757))

(declare-fun m!5722759 () Bool)

(assert (=> b!4754372 m!5722759))

(declare-fun m!5722761 () Bool)

(assert (=> b!4754372 m!5722761))

(declare-fun m!5722763 () Bool)

(assert (=> b!4754372 m!5722763))

(declare-fun m!5722765 () Bool)

(assert (=> b!4754372 m!5722765))

(assert (=> b!4754372 m!5722751))

(declare-fun m!5722767 () Bool)

(assert (=> b!4754372 m!5722767))

(declare-fun m!5722769 () Bool)

(assert (=> b!4754372 m!5722769))

(assert (=> b!4754372 m!5722753))

(declare-fun m!5722771 () Bool)

(assert (=> b!4754372 m!5722771))

(declare-fun m!5722773 () Bool)

(assert (=> bm!333320 m!5722773))

(assert (=> b!4754373 m!5722769))

(declare-fun m!5722775 () Bool)

(assert (=> bm!333321 m!5722775))

(declare-fun m!5722777 () Bool)

(assert (=> b!4754370 m!5722777))

(declare-fun m!5722779 () Bool)

(assert (=> bm!333322 m!5722779))

(declare-fun m!5722781 () Bool)

(assert (=> b!4754371 m!5722781))

(declare-fun m!5722783 () Bool)

(assert (=> d!1520270 m!5722783))

(assert (=> d!1520270 m!5722633))

(assert (=> b!4754257 d!1520270))

(declare-fun d!1520272 () Bool)

(declare-fun e!2965909 () Bool)

(assert (=> d!1520272 e!2965909))

(declare-fun res!2016739 () Bool)

(assert (=> d!1520272 (=> (not res!2016739) (not e!2965909))))

(declare-fun lt!1920567 () ListMap!5613)

(assert (=> d!1520272 (= res!2016739 (contains!16552 lt!1920567 (_1!30758 (h!59521 l!13029))))))

(declare-fun lt!1920569 () List!53248)

(assert (=> d!1520272 (= lt!1920567 (ListMap!5614 lt!1920569))))

(declare-fun lt!1920568 () Unit!137048)

(declare-fun lt!1920570 () Unit!137048)

(assert (=> d!1520272 (= lt!1920568 lt!1920570)))

(assert (=> d!1520272 (= (getValueByKey!2101 lt!1920569 (_1!30758 (h!59521 l!13029))) (Some!12550 (_2!30758 (h!59521 l!13029))))))

(assert (=> d!1520272 (= lt!1920570 (lemmaContainsTupThenGetReturnValue!1178 lt!1920569 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029))))))

(assert (=> d!1520272 (= lt!1920569 (insertNoDuplicatedKeys!686 (toList!6152 lhm!63) (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029))))))

(assert (=> d!1520272 (= (+!2418 lhm!63 (h!59521 l!13029)) lt!1920567)))

(declare-fun b!4754374 () Bool)

(declare-fun res!2016738 () Bool)

(assert (=> b!4754374 (=> (not res!2016738) (not e!2965909))))

(assert (=> b!4754374 (= res!2016738 (= (getValueByKey!2101 (toList!6152 lt!1920567) (_1!30758 (h!59521 l!13029))) (Some!12550 (_2!30758 (h!59521 l!13029)))))))

(declare-fun b!4754375 () Bool)

(assert (=> b!4754375 (= e!2965909 (contains!16553 (toList!6152 lt!1920567) (h!59521 l!13029)))))

(assert (= (and d!1520272 res!2016739) b!4754374))

(assert (= (and b!4754374 res!2016738) b!4754375))

(declare-fun m!5722785 () Bool)

(assert (=> d!1520272 m!5722785))

(declare-fun m!5722787 () Bool)

(assert (=> d!1520272 m!5722787))

(declare-fun m!5722789 () Bool)

(assert (=> d!1520272 m!5722789))

(declare-fun m!5722791 () Bool)

(assert (=> d!1520272 m!5722791))

(declare-fun m!5722793 () Bool)

(assert (=> b!4754374 m!5722793))

(declare-fun m!5722795 () Bool)

(assert (=> b!4754375 m!5722795))

(assert (=> b!4754257 d!1520272))

(declare-fun d!1520274 () Bool)

(assert (=> d!1520274 (eq!1249 (+!2418 (+!2418 lhm!63 (tuple2!54929 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029)))) (tuple2!54929 key!4572 value!2966)) (+!2418 (+!2418 lhm!63 (tuple2!54929 key!4572 value!2966)) (tuple2!54929 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029)))))))

(declare-fun lt!1920573 () Unit!137048)

(declare-fun choose!33870 (ListMap!5613 K!14610 V!14856 K!14610 V!14856) Unit!137048)

(assert (=> d!1520274 (= lt!1920573 (choose!33870 lhm!63 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029)) key!4572 value!2966))))

(assert (=> d!1520274 (not (= (_1!30758 (h!59521 l!13029)) key!4572))))

(assert (=> d!1520274 (= (addCommutativeForDiffKeys!50 lhm!63 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029)) key!4572 value!2966) lt!1920573)))

(declare-fun bs!1146060 () Bool)

(assert (= bs!1146060 d!1520274))

(declare-fun m!5722797 () Bool)

(assert (=> bs!1146060 m!5722797))

(declare-fun m!5722799 () Bool)

(assert (=> bs!1146060 m!5722799))

(declare-fun m!5722801 () Bool)

(assert (=> bs!1146060 m!5722801))

(declare-fun m!5722803 () Bool)

(assert (=> bs!1146060 m!5722803))

(assert (=> bs!1146060 m!5722797))

(declare-fun m!5722805 () Bool)

(assert (=> bs!1146060 m!5722805))

(declare-fun m!5722807 () Bool)

(assert (=> bs!1146060 m!5722807))

(assert (=> bs!1146060 m!5722803))

(assert (=> bs!1146060 m!5722807))

(assert (=> bs!1146060 m!5722799))

(assert (=> b!4754257 d!1520274))

(declare-fun d!1520276 () Bool)

(declare-fun e!2965910 () Bool)

(assert (=> d!1520276 e!2965910))

(declare-fun res!2016741 () Bool)

(assert (=> d!1520276 (=> (not res!2016741) (not e!2965910))))

(declare-fun lt!1920574 () ListMap!5613)

(assert (=> d!1520276 (= res!2016741 (contains!16552 lt!1920574 (_1!30758 (h!59521 l!13029))))))

(declare-fun lt!1920576 () List!53248)

(assert (=> d!1520276 (= lt!1920574 (ListMap!5614 lt!1920576))))

(declare-fun lt!1920575 () Unit!137048)

(declare-fun lt!1920577 () Unit!137048)

(assert (=> d!1520276 (= lt!1920575 lt!1920577)))

(assert (=> d!1520276 (= (getValueByKey!2101 lt!1920576 (_1!30758 (h!59521 l!13029))) (Some!12550 (_2!30758 (h!59521 l!13029))))))

(assert (=> d!1520276 (= lt!1920577 (lemmaContainsTupThenGetReturnValue!1178 lt!1920576 (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029))))))

(assert (=> d!1520276 (= lt!1920576 (insertNoDuplicatedKeys!686 (toList!6152 lt!1920253) (_1!30758 (h!59521 l!13029)) (_2!30758 (h!59521 l!13029))))))

(assert (=> d!1520276 (= (+!2418 lt!1920253 (h!59521 l!13029)) lt!1920574)))

(declare-fun b!4754376 () Bool)

(declare-fun res!2016740 () Bool)

(assert (=> b!4754376 (=> (not res!2016740) (not e!2965910))))

(assert (=> b!4754376 (= res!2016740 (= (getValueByKey!2101 (toList!6152 lt!1920574) (_1!30758 (h!59521 l!13029))) (Some!12550 (_2!30758 (h!59521 l!13029)))))))

(declare-fun b!4754377 () Bool)

(assert (=> b!4754377 (= e!2965910 (contains!16553 (toList!6152 lt!1920574) (h!59521 l!13029)))))

(assert (= (and d!1520276 res!2016741) b!4754376))

(assert (= (and b!4754376 res!2016740) b!4754377))

(declare-fun m!5722809 () Bool)

(assert (=> d!1520276 m!5722809))

(declare-fun m!5722811 () Bool)

(assert (=> d!1520276 m!5722811))

(declare-fun m!5722813 () Bool)

(assert (=> d!1520276 m!5722813))

(declare-fun m!5722815 () Bool)

(assert (=> d!1520276 m!5722815))

(declare-fun m!5722817 () Bool)

(assert (=> b!4754376 m!5722817))

(declare-fun m!5722819 () Bool)

(assert (=> b!4754377 m!5722819))

(assert (=> b!4754257 d!1520276))

(declare-fun d!1520278 () Bool)

(assert (=> d!1520278 (= (eq!1249 lt!1920256 lt!1920257) (= (content!9551 (toList!6152 lt!1920256)) (content!9551 (toList!6152 lt!1920257))))))

(declare-fun bs!1146061 () Bool)

(assert (= bs!1146061 d!1520278))

(declare-fun m!5722821 () Bool)

(assert (=> bs!1146061 m!5722821))

(declare-fun m!5722823 () Bool)

(assert (=> bs!1146061 m!5722823))

(assert (=> b!4754257 d!1520278))

(declare-fun d!1520280 () Bool)

(declare-fun res!2016746 () Bool)

(declare-fun e!2965915 () Bool)

(assert (=> d!1520280 (=> res!2016746 e!2965915)))

(assert (=> d!1520280 (= res!2016746 (not ((_ is Cons!53124) l!13029)))))

(assert (=> d!1520280 (= (noDuplicateKeys!2184 l!13029) e!2965915)))

(declare-fun b!4754382 () Bool)

(declare-fun e!2965916 () Bool)

(assert (=> b!4754382 (= e!2965915 e!2965916)))

(declare-fun res!2016747 () Bool)

(assert (=> b!4754382 (=> (not res!2016747) (not e!2965916))))

(assert (=> b!4754382 (= res!2016747 (not (containsKey!3590 (t!360592 l!13029) (_1!30758 (h!59521 l!13029)))))))

(declare-fun b!4754383 () Bool)

(assert (=> b!4754383 (= e!2965916 (noDuplicateKeys!2184 (t!360592 l!13029)))))

(assert (= (and d!1520280 (not res!2016746)) b!4754382))

(assert (= (and b!4754382 res!2016747) b!4754383))

(declare-fun m!5722825 () Bool)

(assert (=> b!4754382 m!5722825))

(assert (=> b!4754383 m!5722633))

(assert (=> b!4754260 d!1520280))

(declare-fun e!2965919 () Bool)

(declare-fun b!4754388 () Bool)

(declare-fun tp!1350492 () Bool)

(assert (=> b!4754388 (= e!2965919 (and tp_is_empty!32029 tp_is_empty!32031 tp!1350492))))

(assert (=> b!4754258 (= tp!1350485 e!2965919)))

(assert (= (and b!4754258 ((_ is Cons!53124) (t!360592 l!13029))) b!4754388))

(declare-fun b!4754389 () Bool)

(declare-fun tp!1350493 () Bool)

(declare-fun e!2965920 () Bool)

(assert (=> b!4754389 (= e!2965920 (and tp_is_empty!32029 tp_is_empty!32031 tp!1350493))))

(assert (=> b!4754259 (= tp!1350484 e!2965920)))

(assert (= (and b!4754259 ((_ is Cons!53124) (toList!6152 lhm!63))) b!4754389))

(check-sat (not b!4754333) tp_is_empty!32029 (not bm!333316) (not bm!333319) (not d!1520246) (not b!4754322) (not d!1520226) (not b!4754361) (not d!1520278) (not bm!333322) (not b!4754368) (not d!1520276) (not d!1520270) (not bm!333311) (not d!1520272) (not b!4754376) (not d!1520268) (not b!4754377) (not b!4754321) (not b!4754363) (not b!4754372) (not d!1520264) (not b!4754370) (not d!1520262) (not b!4754373) (not b!4754366) tp_is_empty!32031 (not b!4754324) (not b!4754375) (not b!4754362) (not b!4754331) (not b!4754358) (not d!1520224) (not d!1520260) (not b!4754323) (not b!4754383) (not bm!333320) (not bm!333321) (not b!4754273) (not bm!333313) (not b!4754360) (not d!1520274) (not b!4754371) (not bm!333318) (not d!1520266) (not bm!333315) (not b!4754359) (not b!4754365) (not bm!333312) (not b!4754367) (not bm!333314) (not bm!333317) (not b!4754382) (not b!4754374) (not b!4754330) (not b!4754389) (not b!4754388) (not b!4754332) (not d!1520248))
(check-sat)
