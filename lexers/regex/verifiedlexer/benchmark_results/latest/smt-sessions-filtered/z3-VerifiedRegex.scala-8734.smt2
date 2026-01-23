; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466228 () Bool)

(assert start!466228)

(declare-fun b!4638261 () Bool)

(declare-fun e!2893409 () Bool)

(declare-fun e!2893416 () Bool)

(assert (=> b!4638261 (= e!2893409 e!2893416)))

(declare-fun res!1947410 () Bool)

(assert (=> b!4638261 (=> res!1947410 e!2893416)))

(declare-datatypes ((K!13075 0))(
  ( (K!13076 (val!18731 Int)) )
))
(declare-datatypes ((V!13321 0))(
  ( (V!13322 (val!18732 Int)) )
))
(declare-datatypes ((tuple2!52726 0))(
  ( (tuple2!52727 (_1!29657 K!13075) (_2!29657 V!13321)) )
))
(declare-datatypes ((List!51834 0))(
  ( (Nil!51710) (Cons!51710 (h!57808 tuple2!52726) (t!358912 List!51834)) )
))
(declare-datatypes ((ListMap!4409 0))(
  ( (ListMap!4410 (toList!5086 List!51834)) )
))
(declare-fun lt!1800975 () ListMap!4409)

(declare-fun newBucket!224 () List!51834)

(declare-fun addToMapMapFromBucket!1029 (List!51834 ListMap!4409) ListMap!4409)

(assert (=> b!4638261 (= res!1947410 (not (= lt!1800975 (addToMapMapFromBucket!1029 newBucket!224 (ListMap!4410 Nil!51710)))))))

(declare-fun lt!1800970 () List!51834)

(assert (=> b!4638261 (= lt!1800975 (addToMapMapFromBucket!1029 lt!1800970 (ListMap!4410 Nil!51710)))))

(declare-fun b!4638262 () Bool)

(declare-fun e!2893413 () Bool)

(declare-fun e!2893414 () Bool)

(assert (=> b!4638262 (= e!2893413 e!2893414)))

(declare-fun res!1947414 () Bool)

(assert (=> b!4638262 (=> (not res!1947414) (not e!2893414))))

(declare-fun lt!1800973 () ListMap!4409)

(declare-fun key!4968 () K!13075)

(declare-fun contains!14825 (ListMap!4409 K!13075) Bool)

(assert (=> b!4638262 (= res!1947414 (contains!14825 lt!1800973 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51834)

(declare-datatypes ((tuple2!52728 0))(
  ( (tuple2!52729 (_1!29658 (_ BitVec 64)) (_2!29658 List!51834)) )
))
(declare-datatypes ((List!51835 0))(
  ( (Nil!51711) (Cons!51711 (h!57809 tuple2!52728) (t!358913 List!51835)) )
))
(declare-fun extractMap!1626 (List!51835) ListMap!4409)

(assert (=> b!4638262 (= lt!1800973 (extractMap!1626 (Cons!51711 (tuple2!52729 hash!414 oldBucket!40) Nil!51711)))))

(declare-fun b!4638263 () Bool)

(declare-fun e!2893415 () Bool)

(assert (=> b!4638263 (= e!2893416 e!2893415)))

(declare-fun res!1947409 () Bool)

(assert (=> b!4638263 (=> res!1947409 e!2893415)))

(declare-fun eq!871 (ListMap!4409 ListMap!4409) Bool)

(declare-fun +!1924 (ListMap!4409 tuple2!52726) ListMap!4409)

(assert (=> b!4638263 (= res!1947409 (not (eq!871 (+!1924 lt!1800975 (h!57808 oldBucket!40)) (addToMapMapFromBucket!1029 oldBucket!40 (ListMap!4410 Nil!51710)))))))

(declare-fun lt!1800971 () tuple2!52726)

(assert (=> b!4638263 (eq!871 (addToMapMapFromBucket!1029 (Cons!51710 lt!1800971 lt!1800970) (ListMap!4410 Nil!51710)) (+!1924 lt!1800975 lt!1800971))))

(declare-datatypes ((Unit!114889 0))(
  ( (Unit!114890) )
))
(declare-fun lt!1800969 () Unit!114889)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!122 (tuple2!52726 List!51834 ListMap!4409) Unit!114889)

(assert (=> b!4638263 (= lt!1800969 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!122 lt!1800971 lt!1800970 (ListMap!4410 Nil!51710)))))

(declare-fun head!9690 (List!51834) tuple2!52726)

(assert (=> b!4638263 (= lt!1800971 (head!9690 oldBucket!40))))

(declare-fun b!4638264 () Bool)

(declare-fun e!2893417 () Bool)

(declare-fun lt!1800974 () ListMap!4409)

(assert (=> b!4638264 (= e!2893417 (= lt!1800974 (ListMap!4410 Nil!51710)))))

(declare-fun b!4638265 () Bool)

(declare-fun res!1947401 () Bool)

(assert (=> b!4638265 (=> (not res!1947401) (not e!2893414))))

(declare-datatypes ((Hashable!5967 0))(
  ( (HashableExt!5966 (__x!31670 Int)) )
))
(declare-fun hashF!1389 () Hashable!5967)

(declare-fun hash!3652 (Hashable!5967 K!13075) (_ BitVec 64))

(assert (=> b!4638265 (= res!1947401 (= (hash!3652 hashF!1389 key!4968) hash!414))))

(declare-fun b!4638266 () Bool)

(declare-fun e!2893410 () Bool)

(assert (=> b!4638266 (= e!2893414 (not e!2893410))))

(declare-fun res!1947402 () Bool)

(assert (=> b!4638266 (=> res!1947402 e!2893410)))

(get-info :version)

(assert (=> b!4638266 (= res!1947402 (or (not ((_ is Cons!51710) oldBucket!40)) (not (= (_1!29657 (h!57808 oldBucket!40)) key!4968))))))

(assert (=> b!4638266 e!2893417))

(declare-fun res!1947405 () Bool)

(assert (=> b!4638266 (=> (not res!1947405) (not e!2893417))))

(assert (=> b!4638266 (= res!1947405 (= lt!1800973 (addToMapMapFromBucket!1029 oldBucket!40 lt!1800974)))))

(assert (=> b!4638266 (= lt!1800974 (extractMap!1626 Nil!51711))))

(assert (=> b!4638266 true))

(declare-fun tp!1342682 () Bool)

(declare-fun b!4638267 () Bool)

(declare-fun tp_is_empty!29575 () Bool)

(declare-fun e!2893412 () Bool)

(declare-fun tp_is_empty!29573 () Bool)

(assert (=> b!4638267 (= e!2893412 (and tp_is_empty!29573 tp_is_empty!29575 tp!1342682))))

(declare-fun b!4638268 () Bool)

(declare-fun e!2893418 () Bool)

(assert (=> b!4638268 (= e!2893410 e!2893418)))

(declare-fun res!1947403 () Bool)

(assert (=> b!4638268 (=> res!1947403 e!2893418)))

(assert (=> b!4638268 (= res!1947403 (not (= lt!1800970 newBucket!224)))))

(declare-fun tail!8197 (List!51834) List!51834)

(assert (=> b!4638268 (= lt!1800970 (tail!8197 oldBucket!40))))

(declare-fun b!4638270 () Bool)

(assert (=> b!4638270 (= e!2893418 e!2893409)))

(declare-fun res!1947408 () Bool)

(assert (=> b!4638270 (=> res!1947408 e!2893409)))

(declare-fun lt!1800972 () ListMap!4409)

(assert (=> b!4638270 (= res!1947408 (not (= lt!1800972 (extractMap!1626 (Cons!51711 (tuple2!52729 hash!414 newBucket!224) Nil!51711)))))))

(assert (=> b!4638270 (= lt!1800972 (extractMap!1626 (Cons!51711 (tuple2!52729 hash!414 lt!1800970) Nil!51711)))))

(declare-fun b!4638271 () Bool)

(declare-fun res!1947411 () Bool)

(assert (=> b!4638271 (=> (not res!1947411) (not e!2893414))))

(declare-fun allKeysSameHash!1424 (List!51834 (_ BitVec 64) Hashable!5967) Bool)

(assert (=> b!4638271 (= res!1947411 (allKeysSameHash!1424 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4638272 () Bool)

(declare-fun res!1947406 () Bool)

(assert (=> b!4638272 (=> res!1947406 e!2893415)))

(declare-fun containsKey!2588 (List!51834 K!13075) Bool)

(assert (=> b!4638272 (= res!1947406 (containsKey!2588 lt!1800970 key!4968))))

(declare-fun b!4638273 () Bool)

(assert (=> b!4638273 (= e!2893415 (= lt!1800975 lt!1800972))))

(declare-fun b!4638274 () Bool)

(declare-fun res!1947404 () Bool)

(assert (=> b!4638274 (=> (not res!1947404) (not e!2893413))))

(declare-fun noDuplicateKeys!1570 (List!51834) Bool)

(assert (=> b!4638274 (= res!1947404 (noDuplicateKeys!1570 newBucket!224))))

(declare-fun b!4638275 () Bool)

(declare-fun res!1947413 () Bool)

(assert (=> b!4638275 (=> (not res!1947413) (not e!2893413))))

(declare-fun removePairForKey!1193 (List!51834 K!13075) List!51834)

(assert (=> b!4638275 (= res!1947413 (= (removePairForKey!1193 oldBucket!40 key!4968) newBucket!224))))

(declare-fun e!2893411 () Bool)

(declare-fun tp!1342683 () Bool)

(declare-fun b!4638276 () Bool)

(assert (=> b!4638276 (= e!2893411 (and tp_is_empty!29573 tp_is_empty!29575 tp!1342683))))

(declare-fun b!4638269 () Bool)

(declare-fun res!1947412 () Bool)

(assert (=> b!4638269 (=> (not res!1947412) (not e!2893413))))

(assert (=> b!4638269 (= res!1947412 (allKeysSameHash!1424 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1947407 () Bool)

(assert (=> start!466228 (=> (not res!1947407) (not e!2893413))))

(assert (=> start!466228 (= res!1947407 (noDuplicateKeys!1570 oldBucket!40))))

(assert (=> start!466228 e!2893413))

(assert (=> start!466228 true))

(assert (=> start!466228 e!2893411))

(assert (=> start!466228 tp_is_empty!29573))

(assert (=> start!466228 e!2893412))

(assert (= (and start!466228 res!1947407) b!4638274))

(assert (= (and b!4638274 res!1947404) b!4638275))

(assert (= (and b!4638275 res!1947413) b!4638269))

(assert (= (and b!4638269 res!1947412) b!4638262))

(assert (= (and b!4638262 res!1947414) b!4638265))

(assert (= (and b!4638265 res!1947401) b!4638271))

(assert (= (and b!4638271 res!1947411) b!4638266))

(assert (= (and b!4638266 res!1947405) b!4638264))

(assert (= (and b!4638266 (not res!1947402)) b!4638268))

(assert (= (and b!4638268 (not res!1947403)) b!4638270))

(assert (= (and b!4638270 (not res!1947408)) b!4638261))

(assert (= (and b!4638261 (not res!1947410)) b!4638263))

(assert (= (and b!4638263 (not res!1947409)) b!4638272))

(assert (= (and b!4638272 (not res!1947406)) b!4638273))

(assert (= (and start!466228 ((_ is Cons!51710) oldBucket!40)) b!4638276))

(assert (= (and start!466228 ((_ is Cons!51710) newBucket!224)) b!4638267))

(declare-fun m!5496783 () Bool)

(assert (=> b!4638263 m!5496783))

(declare-fun m!5496785 () Bool)

(assert (=> b!4638263 m!5496785))

(declare-fun m!5496787 () Bool)

(assert (=> b!4638263 m!5496787))

(declare-fun m!5496789 () Bool)

(assert (=> b!4638263 m!5496789))

(declare-fun m!5496791 () Bool)

(assert (=> b!4638263 m!5496791))

(declare-fun m!5496793 () Bool)

(assert (=> b!4638263 m!5496793))

(assert (=> b!4638263 m!5496791))

(declare-fun m!5496795 () Bool)

(assert (=> b!4638263 m!5496795))

(assert (=> b!4638263 m!5496785))

(declare-fun m!5496797 () Bool)

(assert (=> b!4638263 m!5496797))

(assert (=> b!4638263 m!5496783))

(assert (=> b!4638263 m!5496789))

(declare-fun m!5496799 () Bool)

(assert (=> b!4638270 m!5496799))

(declare-fun m!5496801 () Bool)

(assert (=> b!4638270 m!5496801))

(declare-fun m!5496803 () Bool)

(assert (=> b!4638261 m!5496803))

(declare-fun m!5496805 () Bool)

(assert (=> b!4638261 m!5496805))

(declare-fun m!5496807 () Bool)

(assert (=> start!466228 m!5496807))

(declare-fun m!5496809 () Bool)

(assert (=> b!4638268 m!5496809))

(declare-fun m!5496811 () Bool)

(assert (=> b!4638271 m!5496811))

(declare-fun m!5496813 () Bool)

(assert (=> b!4638269 m!5496813))

(declare-fun m!5496815 () Bool)

(assert (=> b!4638265 m!5496815))

(declare-fun m!5496817 () Bool)

(assert (=> b!4638262 m!5496817))

(declare-fun m!5496819 () Bool)

(assert (=> b!4638262 m!5496819))

(declare-fun m!5496821 () Bool)

(assert (=> b!4638274 m!5496821))

(declare-fun m!5496823 () Bool)

(assert (=> b!4638275 m!5496823))

(declare-fun m!5496825 () Bool)

(assert (=> b!4638266 m!5496825))

(declare-fun m!5496827 () Bool)

(assert (=> b!4638266 m!5496827))

(declare-fun m!5496829 () Bool)

(assert (=> b!4638272 m!5496829))

(check-sat (not b!4638274) (not b!4638265) (not b!4638266) (not b!4638271) (not b!4638268) (not b!4638269) tp_is_empty!29573 (not b!4638276) (not b!4638275) (not start!466228) (not b!4638270) (not b!4638261) tp_is_empty!29575 (not b!4638272) (not b!4638263) (not b!4638267) (not b!4638262))
(check-sat)
(get-model)

(declare-fun d!1462501 () Bool)

(declare-fun res!1947425 () Bool)

(declare-fun e!2893429 () Bool)

(assert (=> d!1462501 (=> res!1947425 e!2893429)))

(assert (=> d!1462501 (= res!1947425 (and ((_ is Cons!51710) lt!1800970) (= (_1!29657 (h!57808 lt!1800970)) key!4968)))))

(assert (=> d!1462501 (= (containsKey!2588 lt!1800970 key!4968) e!2893429)))

(declare-fun b!4638287 () Bool)

(declare-fun e!2893430 () Bool)

(assert (=> b!4638287 (= e!2893429 e!2893430)))

(declare-fun res!1947426 () Bool)

(assert (=> b!4638287 (=> (not res!1947426) (not e!2893430))))

(assert (=> b!4638287 (= res!1947426 ((_ is Cons!51710) lt!1800970))))

(declare-fun b!4638288 () Bool)

(assert (=> b!4638288 (= e!2893430 (containsKey!2588 (t!358912 lt!1800970) key!4968))))

(assert (= (and d!1462501 (not res!1947425)) b!4638287))

(assert (= (and b!4638287 res!1947426) b!4638288))

(declare-fun m!5496837 () Bool)

(assert (=> b!4638288 m!5496837))

(assert (=> b!4638272 d!1462501))

(declare-fun b!4638365 () Bool)

(assert (=> b!4638365 true))

(declare-fun bs!1032514 () Bool)

(declare-fun b!4638364 () Bool)

(assert (= bs!1032514 (and b!4638364 b!4638365)))

(declare-fun lambda!195655 () Int)

(declare-fun lambda!195653 () Int)

(assert (=> bs!1032514 (= lambda!195655 lambda!195653)))

(assert (=> b!4638364 true))

(declare-fun lt!1801194 () ListMap!4409)

(declare-fun lambda!195656 () Int)

(assert (=> bs!1032514 (= (= lt!1801194 (ListMap!4410 Nil!51710)) (= lambda!195656 lambda!195653))))

(assert (=> b!4638364 (= (= lt!1801194 (ListMap!4410 Nil!51710)) (= lambda!195656 lambda!195655))))

(assert (=> b!4638364 true))

(declare-fun bs!1032526 () Bool)

(declare-fun d!1462503 () Bool)

(assert (= bs!1032526 (and d!1462503 b!4638365)))

(declare-fun lt!1801188 () ListMap!4409)

(declare-fun lambda!195658 () Int)

(assert (=> bs!1032526 (= (= lt!1801188 (ListMap!4410 Nil!51710)) (= lambda!195658 lambda!195653))))

(declare-fun bs!1032527 () Bool)

(assert (= bs!1032527 (and d!1462503 b!4638364)))

(assert (=> bs!1032527 (= (= lt!1801188 (ListMap!4410 Nil!51710)) (= lambda!195658 lambda!195655))))

(assert (=> bs!1032527 (= (= lt!1801188 lt!1801194) (= lambda!195658 lambda!195656))))

(assert (=> d!1462503 true))

(declare-fun e!2893476 () ListMap!4409)

(assert (=> b!4638364 (= e!2893476 lt!1801194)))

(declare-fun lt!1801201 () ListMap!4409)

(assert (=> b!4638364 (= lt!1801201 (+!1924 (ListMap!4410 Nil!51710) (h!57808 newBucket!224)))))

(assert (=> b!4638364 (= lt!1801194 (addToMapMapFromBucket!1029 (t!358912 newBucket!224) (+!1924 (ListMap!4410 Nil!51710) (h!57808 newBucket!224))))))

(declare-fun lt!1801193 () Unit!114889)

(declare-fun call!323800 () Unit!114889)

(assert (=> b!4638364 (= lt!1801193 call!323800)))

(declare-fun forall!10923 (List!51834 Int) Bool)

(assert (=> b!4638364 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195655)))

(declare-fun lt!1801204 () Unit!114889)

(assert (=> b!4638364 (= lt!1801204 lt!1801193)))

(assert (=> b!4638364 (forall!10923 (toList!5086 lt!1801201) lambda!195656)))

(declare-fun lt!1801202 () Unit!114889)

(declare-fun Unit!114911 () Unit!114889)

(assert (=> b!4638364 (= lt!1801202 Unit!114911)))

(assert (=> b!4638364 (forall!10923 (t!358912 newBucket!224) lambda!195656)))

(declare-fun lt!1801198 () Unit!114889)

(declare-fun Unit!114912 () Unit!114889)

(assert (=> b!4638364 (= lt!1801198 Unit!114912)))

(declare-fun lt!1801190 () Unit!114889)

(declare-fun Unit!114914 () Unit!114889)

(assert (=> b!4638364 (= lt!1801190 Unit!114914)))

(declare-fun lt!1801203 () Unit!114889)

(declare-fun forallContained!3144 (List!51834 Int tuple2!52726) Unit!114889)

(assert (=> b!4638364 (= lt!1801203 (forallContained!3144 (toList!5086 lt!1801201) lambda!195656 (h!57808 newBucket!224)))))

(assert (=> b!4638364 (contains!14825 lt!1801201 (_1!29657 (h!57808 newBucket!224)))))

(declare-fun lt!1801196 () Unit!114889)

(declare-fun Unit!114915 () Unit!114889)

(assert (=> b!4638364 (= lt!1801196 Unit!114915)))

(assert (=> b!4638364 (contains!14825 lt!1801194 (_1!29657 (h!57808 newBucket!224)))))

(declare-fun lt!1801195 () Unit!114889)

(declare-fun Unit!114916 () Unit!114889)

(assert (=> b!4638364 (= lt!1801195 Unit!114916)))

(declare-fun call!323799 () Bool)

(assert (=> b!4638364 call!323799))

(declare-fun lt!1801207 () Unit!114889)

(declare-fun Unit!114917 () Unit!114889)

(assert (=> b!4638364 (= lt!1801207 Unit!114917)))

(assert (=> b!4638364 (forall!10923 (toList!5086 lt!1801201) lambda!195656)))

(declare-fun lt!1801189 () Unit!114889)

(declare-fun Unit!114918 () Unit!114889)

(assert (=> b!4638364 (= lt!1801189 Unit!114918)))

(declare-fun lt!1801200 () Unit!114889)

(declare-fun Unit!114919 () Unit!114889)

(assert (=> b!4638364 (= lt!1801200 Unit!114919)))

(declare-fun lt!1801205 () Unit!114889)

(declare-fun addForallContainsKeyThenBeforeAdding!553 (ListMap!4409 ListMap!4409 K!13075 V!13321) Unit!114889)

(assert (=> b!4638364 (= lt!1801205 (addForallContainsKeyThenBeforeAdding!553 (ListMap!4410 Nil!51710) lt!1801194 (_1!29657 (h!57808 newBucket!224)) (_2!29657 (h!57808 newBucket!224))))))

(assert (=> b!4638364 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195656)))

(declare-fun lt!1801199 () Unit!114889)

(assert (=> b!4638364 (= lt!1801199 lt!1801205)))

(declare-fun call!323801 () Bool)

(assert (=> b!4638364 call!323801))

(declare-fun lt!1801191 () Unit!114889)

(declare-fun Unit!114921 () Unit!114889)

(assert (=> b!4638364 (= lt!1801191 Unit!114921)))

(declare-fun res!1947470 () Bool)

(assert (=> b!4638364 (= res!1947470 (forall!10923 newBucket!224 lambda!195656))))

(declare-fun e!2893475 () Bool)

(assert (=> b!4638364 (=> (not res!1947470) (not e!2893475))))

(assert (=> b!4638364 e!2893475))

(declare-fun lt!1801192 () Unit!114889)

(declare-fun Unit!114922 () Unit!114889)

(assert (=> b!4638364 (= lt!1801192 Unit!114922)))

(declare-fun bm!323794 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!554 (ListMap!4409) Unit!114889)

(assert (=> bm!323794 (= call!323800 (lemmaContainsAllItsOwnKeys!554 (ListMap!4410 Nil!51710)))))

(declare-fun b!4638366 () Bool)

(assert (=> b!4638366 (= e!2893475 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195656))))

(declare-fun b!4638367 () Bool)

(declare-fun e!2893474 () Bool)

(declare-fun invariantList!1252 (List!51834) Bool)

(assert (=> b!4638367 (= e!2893474 (invariantList!1252 (toList!5086 lt!1801188)))))

(declare-fun bm!323795 () Bool)

(declare-fun c!793804 () Bool)

(assert (=> bm!323795 (= call!323801 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) (ite c!793804 lambda!195653 lambda!195656)))))

(declare-fun b!4638368 () Bool)

(declare-fun res!1947472 () Bool)

(assert (=> b!4638368 (=> (not res!1947472) (not e!2893474))))

(assert (=> b!4638368 (= res!1947472 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195658))))

(declare-fun bm!323796 () Bool)

(assert (=> bm!323796 (= call!323799 (forall!10923 (ite c!793804 (toList!5086 (ListMap!4410 Nil!51710)) newBucket!224) (ite c!793804 lambda!195653 lambda!195656)))))

(assert (=> d!1462503 e!2893474))

(declare-fun res!1947471 () Bool)

(assert (=> d!1462503 (=> (not res!1947471) (not e!2893474))))

(assert (=> d!1462503 (= res!1947471 (forall!10923 newBucket!224 lambda!195658))))

(assert (=> d!1462503 (= lt!1801188 e!2893476)))

(assert (=> d!1462503 (= c!793804 ((_ is Nil!51710) newBucket!224))))

(assert (=> d!1462503 (noDuplicateKeys!1570 newBucket!224)))

(assert (=> d!1462503 (= (addToMapMapFromBucket!1029 newBucket!224 (ListMap!4410 Nil!51710)) lt!1801188)))

(assert (=> b!4638365 (= e!2893476 (ListMap!4410 Nil!51710))))

(declare-fun lt!1801197 () Unit!114889)

(assert (=> b!4638365 (= lt!1801197 call!323800)))

(assert (=> b!4638365 call!323799))

(declare-fun lt!1801206 () Unit!114889)

(assert (=> b!4638365 (= lt!1801206 lt!1801197)))

(assert (=> b!4638365 call!323801))

(declare-fun lt!1801208 () Unit!114889)

(declare-fun Unit!114923 () Unit!114889)

(assert (=> b!4638365 (= lt!1801208 Unit!114923)))

(assert (= (and d!1462503 c!793804) b!4638365))

(assert (= (and d!1462503 (not c!793804)) b!4638364))

(assert (= (and b!4638364 res!1947470) b!4638366))

(assert (= (or b!4638365 b!4638364) bm!323794))

(assert (= (or b!4638365 b!4638364) bm!323796))

(assert (= (or b!4638365 b!4638364) bm!323795))

(assert (= (and d!1462503 res!1947471) b!4638368))

(assert (= (and b!4638368 res!1947472) b!4638367))

(declare-fun m!5497027 () Bool)

(assert (=> b!4638366 m!5497027))

(declare-fun m!5497029 () Bool)

(assert (=> bm!323794 m!5497029))

(declare-fun m!5497031 () Bool)

(assert (=> b!4638364 m!5497031))

(declare-fun m!5497033 () Bool)

(assert (=> b!4638364 m!5497033))

(declare-fun m!5497035 () Bool)

(assert (=> b!4638364 m!5497035))

(declare-fun m!5497037 () Bool)

(assert (=> b!4638364 m!5497037))

(assert (=> b!4638364 m!5497033))

(assert (=> b!4638364 m!5497035))

(declare-fun m!5497039 () Bool)

(assert (=> b!4638364 m!5497039))

(assert (=> b!4638364 m!5497027))

(declare-fun m!5497041 () Bool)

(assert (=> b!4638364 m!5497041))

(declare-fun m!5497043 () Bool)

(assert (=> b!4638364 m!5497043))

(declare-fun m!5497045 () Bool)

(assert (=> b!4638364 m!5497045))

(declare-fun m!5497047 () Bool)

(assert (=> b!4638364 m!5497047))

(declare-fun m!5497049 () Bool)

(assert (=> b!4638364 m!5497049))

(declare-fun m!5497051 () Bool)

(assert (=> b!4638368 m!5497051))

(declare-fun m!5497053 () Bool)

(assert (=> bm!323795 m!5497053))

(declare-fun m!5497055 () Bool)

(assert (=> b!4638367 m!5497055))

(declare-fun m!5497057 () Bool)

(assert (=> d!1462503 m!5497057))

(assert (=> d!1462503 m!5496821))

(declare-fun m!5497059 () Bool)

(assert (=> bm!323796 m!5497059))

(assert (=> b!4638261 d!1462503))

(declare-fun bs!1032543 () Bool)

(declare-fun b!4638372 () Bool)

(assert (= bs!1032543 (and b!4638372 b!4638365)))

(declare-fun lambda!195660 () Int)

(assert (=> bs!1032543 (= lambda!195660 lambda!195653)))

(declare-fun bs!1032544 () Bool)

(assert (= bs!1032544 (and b!4638372 b!4638364)))

(assert (=> bs!1032544 (= lambda!195660 lambda!195655)))

(assert (=> bs!1032544 (= (= (ListMap!4410 Nil!51710) lt!1801194) (= lambda!195660 lambda!195656))))

(declare-fun bs!1032545 () Bool)

(assert (= bs!1032545 (and b!4638372 d!1462503)))

(assert (=> bs!1032545 (= (= (ListMap!4410 Nil!51710) lt!1801188) (= lambda!195660 lambda!195658))))

(assert (=> b!4638372 true))

(declare-fun bs!1032546 () Bool)

(declare-fun b!4638371 () Bool)

(assert (= bs!1032546 (and b!4638371 b!4638372)))

(declare-fun lambda!195661 () Int)

(assert (=> bs!1032546 (= lambda!195661 lambda!195660)))

(declare-fun bs!1032547 () Bool)

(assert (= bs!1032547 (and b!4638371 b!4638365)))

(assert (=> bs!1032547 (= lambda!195661 lambda!195653)))

(declare-fun bs!1032548 () Bool)

(assert (= bs!1032548 (and b!4638371 b!4638364)))

(assert (=> bs!1032548 (= (= (ListMap!4410 Nil!51710) lt!1801194) (= lambda!195661 lambda!195656))))

(assert (=> bs!1032548 (= lambda!195661 lambda!195655)))

(declare-fun bs!1032549 () Bool)

(assert (= bs!1032549 (and b!4638371 d!1462503)))

(assert (=> bs!1032549 (= (= (ListMap!4410 Nil!51710) lt!1801188) (= lambda!195661 lambda!195658))))

(assert (=> b!4638371 true))

(declare-fun lt!1801215 () ListMap!4409)

(declare-fun lambda!195662 () Int)

(assert (=> bs!1032546 (= (= lt!1801215 (ListMap!4410 Nil!51710)) (= lambda!195662 lambda!195660))))

(assert (=> bs!1032547 (= (= lt!1801215 (ListMap!4410 Nil!51710)) (= lambda!195662 lambda!195653))))

(assert (=> bs!1032548 (= (= lt!1801215 lt!1801194) (= lambda!195662 lambda!195656))))

(assert (=> bs!1032548 (= (= lt!1801215 (ListMap!4410 Nil!51710)) (= lambda!195662 lambda!195655))))

(assert (=> bs!1032549 (= (= lt!1801215 lt!1801188) (= lambda!195662 lambda!195658))))

(assert (=> b!4638371 (= (= lt!1801215 (ListMap!4410 Nil!51710)) (= lambda!195662 lambda!195661))))

(assert (=> b!4638371 true))

(declare-fun bs!1032552 () Bool)

(declare-fun d!1462537 () Bool)

(assert (= bs!1032552 (and d!1462537 b!4638372)))

(declare-fun lt!1801209 () ListMap!4409)

(declare-fun lambda!195664 () Int)

(assert (=> bs!1032552 (= (= lt!1801209 (ListMap!4410 Nil!51710)) (= lambda!195664 lambda!195660))))

(declare-fun bs!1032553 () Bool)

(assert (= bs!1032553 (and d!1462537 b!4638365)))

(assert (=> bs!1032553 (= (= lt!1801209 (ListMap!4410 Nil!51710)) (= lambda!195664 lambda!195653))))

(declare-fun bs!1032554 () Bool)

(assert (= bs!1032554 (and d!1462537 b!4638364)))

(assert (=> bs!1032554 (= (= lt!1801209 lt!1801194) (= lambda!195664 lambda!195656))))

(declare-fun bs!1032555 () Bool)

(assert (= bs!1032555 (and d!1462537 d!1462503)))

(assert (=> bs!1032555 (= (= lt!1801209 lt!1801188) (= lambda!195664 lambda!195658))))

(declare-fun bs!1032556 () Bool)

(assert (= bs!1032556 (and d!1462537 b!4638371)))

(assert (=> bs!1032556 (= (= lt!1801209 (ListMap!4410 Nil!51710)) (= lambda!195664 lambda!195661))))

(assert (=> bs!1032554 (= (= lt!1801209 (ListMap!4410 Nil!51710)) (= lambda!195664 lambda!195655))))

(assert (=> bs!1032556 (= (= lt!1801209 lt!1801215) (= lambda!195664 lambda!195662))))

(assert (=> d!1462537 true))

(declare-fun e!2893479 () ListMap!4409)

(assert (=> b!4638371 (= e!2893479 lt!1801215)))

(declare-fun lt!1801222 () ListMap!4409)

(assert (=> b!4638371 (= lt!1801222 (+!1924 (ListMap!4410 Nil!51710) (h!57808 lt!1800970)))))

(assert (=> b!4638371 (= lt!1801215 (addToMapMapFromBucket!1029 (t!358912 lt!1800970) (+!1924 (ListMap!4410 Nil!51710) (h!57808 lt!1800970))))))

(declare-fun lt!1801214 () Unit!114889)

(declare-fun call!323803 () Unit!114889)

(assert (=> b!4638371 (= lt!1801214 call!323803)))

(assert (=> b!4638371 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195661)))

(declare-fun lt!1801225 () Unit!114889)

(assert (=> b!4638371 (= lt!1801225 lt!1801214)))

(assert (=> b!4638371 (forall!10923 (toList!5086 lt!1801222) lambda!195662)))

(declare-fun lt!1801223 () Unit!114889)

(declare-fun Unit!114924 () Unit!114889)

(assert (=> b!4638371 (= lt!1801223 Unit!114924)))

(assert (=> b!4638371 (forall!10923 (t!358912 lt!1800970) lambda!195662)))

(declare-fun lt!1801219 () Unit!114889)

(declare-fun Unit!114925 () Unit!114889)

(assert (=> b!4638371 (= lt!1801219 Unit!114925)))

(declare-fun lt!1801211 () Unit!114889)

(declare-fun Unit!114926 () Unit!114889)

(assert (=> b!4638371 (= lt!1801211 Unit!114926)))

(declare-fun lt!1801224 () Unit!114889)

(assert (=> b!4638371 (= lt!1801224 (forallContained!3144 (toList!5086 lt!1801222) lambda!195662 (h!57808 lt!1800970)))))

(assert (=> b!4638371 (contains!14825 lt!1801222 (_1!29657 (h!57808 lt!1800970)))))

(declare-fun lt!1801217 () Unit!114889)

(declare-fun Unit!114927 () Unit!114889)

(assert (=> b!4638371 (= lt!1801217 Unit!114927)))

(assert (=> b!4638371 (contains!14825 lt!1801215 (_1!29657 (h!57808 lt!1800970)))))

(declare-fun lt!1801216 () Unit!114889)

(declare-fun Unit!114928 () Unit!114889)

(assert (=> b!4638371 (= lt!1801216 Unit!114928)))

(declare-fun call!323802 () Bool)

(assert (=> b!4638371 call!323802))

(declare-fun lt!1801228 () Unit!114889)

(declare-fun Unit!114929 () Unit!114889)

(assert (=> b!4638371 (= lt!1801228 Unit!114929)))

(assert (=> b!4638371 (forall!10923 (toList!5086 lt!1801222) lambda!195662)))

(declare-fun lt!1801210 () Unit!114889)

(declare-fun Unit!114930 () Unit!114889)

(assert (=> b!4638371 (= lt!1801210 Unit!114930)))

(declare-fun lt!1801221 () Unit!114889)

(declare-fun Unit!114931 () Unit!114889)

(assert (=> b!4638371 (= lt!1801221 Unit!114931)))

(declare-fun lt!1801226 () Unit!114889)

(assert (=> b!4638371 (= lt!1801226 (addForallContainsKeyThenBeforeAdding!553 (ListMap!4410 Nil!51710) lt!1801215 (_1!29657 (h!57808 lt!1800970)) (_2!29657 (h!57808 lt!1800970))))))

(assert (=> b!4638371 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195662)))

(declare-fun lt!1801220 () Unit!114889)

(assert (=> b!4638371 (= lt!1801220 lt!1801226)))

(declare-fun call!323804 () Bool)

(assert (=> b!4638371 call!323804))

(declare-fun lt!1801212 () Unit!114889)

(declare-fun Unit!114934 () Unit!114889)

(assert (=> b!4638371 (= lt!1801212 Unit!114934)))

(declare-fun res!1947473 () Bool)

(assert (=> b!4638371 (= res!1947473 (forall!10923 lt!1800970 lambda!195662))))

(declare-fun e!2893478 () Bool)

(assert (=> b!4638371 (=> (not res!1947473) (not e!2893478))))

(assert (=> b!4638371 e!2893478))

(declare-fun lt!1801213 () Unit!114889)

(declare-fun Unit!114936 () Unit!114889)

(assert (=> b!4638371 (= lt!1801213 Unit!114936)))

(declare-fun bm!323797 () Bool)

(assert (=> bm!323797 (= call!323803 (lemmaContainsAllItsOwnKeys!554 (ListMap!4410 Nil!51710)))))

(declare-fun b!4638373 () Bool)

(assert (=> b!4638373 (= e!2893478 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195662))))

(declare-fun b!4638374 () Bool)

(declare-fun e!2893477 () Bool)

(assert (=> b!4638374 (= e!2893477 (invariantList!1252 (toList!5086 lt!1801209)))))

(declare-fun bm!323798 () Bool)

(declare-fun c!793805 () Bool)

(assert (=> bm!323798 (= call!323804 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) (ite c!793805 lambda!195660 lambda!195662)))))

(declare-fun b!4638375 () Bool)

(declare-fun res!1947475 () Bool)

(assert (=> b!4638375 (=> (not res!1947475) (not e!2893477))))

(assert (=> b!4638375 (= res!1947475 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195664))))

(declare-fun bm!323799 () Bool)

(assert (=> bm!323799 (= call!323802 (forall!10923 (ite c!793805 (toList!5086 (ListMap!4410 Nil!51710)) lt!1800970) (ite c!793805 lambda!195660 lambda!195662)))))

(assert (=> d!1462537 e!2893477))

(declare-fun res!1947474 () Bool)

(assert (=> d!1462537 (=> (not res!1947474) (not e!2893477))))

(assert (=> d!1462537 (= res!1947474 (forall!10923 lt!1800970 lambda!195664))))

(assert (=> d!1462537 (= lt!1801209 e!2893479)))

(assert (=> d!1462537 (= c!793805 ((_ is Nil!51710) lt!1800970))))

(assert (=> d!1462537 (noDuplicateKeys!1570 lt!1800970)))

(assert (=> d!1462537 (= (addToMapMapFromBucket!1029 lt!1800970 (ListMap!4410 Nil!51710)) lt!1801209)))

(assert (=> b!4638372 (= e!2893479 (ListMap!4410 Nil!51710))))

(declare-fun lt!1801218 () Unit!114889)

(assert (=> b!4638372 (= lt!1801218 call!323803)))

(assert (=> b!4638372 call!323802))

(declare-fun lt!1801227 () Unit!114889)

(assert (=> b!4638372 (= lt!1801227 lt!1801218)))

(assert (=> b!4638372 call!323804))

(declare-fun lt!1801229 () Unit!114889)

(declare-fun Unit!114943 () Unit!114889)

(assert (=> b!4638372 (= lt!1801229 Unit!114943)))

(assert (= (and d!1462537 c!793805) b!4638372))

(assert (= (and d!1462537 (not c!793805)) b!4638371))

(assert (= (and b!4638371 res!1947473) b!4638373))

(assert (= (or b!4638372 b!4638371) bm!323797))

(assert (= (or b!4638372 b!4638371) bm!323799))

(assert (= (or b!4638372 b!4638371) bm!323798))

(assert (= (and d!1462537 res!1947474) b!4638375))

(assert (= (and b!4638375 res!1947475) b!4638374))

(declare-fun m!5497101 () Bool)

(assert (=> b!4638373 m!5497101))

(assert (=> bm!323797 m!5497029))

(declare-fun m!5497103 () Bool)

(assert (=> b!4638371 m!5497103))

(declare-fun m!5497105 () Bool)

(assert (=> b!4638371 m!5497105))

(declare-fun m!5497107 () Bool)

(assert (=> b!4638371 m!5497107))

(declare-fun m!5497109 () Bool)

(assert (=> b!4638371 m!5497109))

(assert (=> b!4638371 m!5497105))

(assert (=> b!4638371 m!5497107))

(declare-fun m!5497111 () Bool)

(assert (=> b!4638371 m!5497111))

(assert (=> b!4638371 m!5497101))

(declare-fun m!5497113 () Bool)

(assert (=> b!4638371 m!5497113))

(declare-fun m!5497115 () Bool)

(assert (=> b!4638371 m!5497115))

(declare-fun m!5497117 () Bool)

(assert (=> b!4638371 m!5497117))

(declare-fun m!5497119 () Bool)

(assert (=> b!4638371 m!5497119))

(declare-fun m!5497121 () Bool)

(assert (=> b!4638371 m!5497121))

(declare-fun m!5497123 () Bool)

(assert (=> b!4638375 m!5497123))

(declare-fun m!5497125 () Bool)

(assert (=> bm!323798 m!5497125))

(declare-fun m!5497127 () Bool)

(assert (=> b!4638374 m!5497127))

(declare-fun m!5497129 () Bool)

(assert (=> d!1462537 m!5497129))

(declare-fun m!5497131 () Bool)

(assert (=> d!1462537 m!5497131))

(declare-fun m!5497133 () Bool)

(assert (=> bm!323799 m!5497133))

(assert (=> b!4638261 d!1462537))

(declare-fun d!1462543 () Bool)

(declare-fun e!2893512 () Bool)

(assert (=> d!1462543 e!2893512))

(declare-fun res!1947492 () Bool)

(assert (=> d!1462543 (=> res!1947492 e!2893512)))

(declare-fun e!2893514 () Bool)

(assert (=> d!1462543 (= res!1947492 e!2893514)))

(declare-fun res!1947491 () Bool)

(assert (=> d!1462543 (=> (not res!1947491) (not e!2893514))))

(declare-fun lt!1801274 () Bool)

(assert (=> d!1462543 (= res!1947491 (not lt!1801274))))

(declare-fun lt!1801276 () Bool)

(assert (=> d!1462543 (= lt!1801274 lt!1801276)))

(declare-fun lt!1801278 () Unit!114889)

(declare-fun e!2893516 () Unit!114889)

(assert (=> d!1462543 (= lt!1801278 e!2893516)))

(declare-fun c!793823 () Bool)

(assert (=> d!1462543 (= c!793823 lt!1801276)))

(declare-fun containsKey!2589 (List!51834 K!13075) Bool)

(assert (=> d!1462543 (= lt!1801276 (containsKey!2589 (toList!5086 lt!1800973) key!4968))))

(assert (=> d!1462543 (= (contains!14825 lt!1800973 key!4968) lt!1801274)))

(declare-fun b!4638425 () Bool)

(declare-fun e!2893513 () Unit!114889)

(declare-fun Unit!114946 () Unit!114889)

(assert (=> b!4638425 (= e!2893513 Unit!114946)))

(declare-fun b!4638426 () Bool)

(declare-fun e!2893515 () Bool)

(declare-datatypes ((List!51836 0))(
  ( (Nil!51712) (Cons!51712 (h!57812 K!13075) (t!358916 List!51836)) )
))
(declare-fun contains!14827 (List!51836 K!13075) Bool)

(declare-fun keys!18265 (ListMap!4409) List!51836)

(assert (=> b!4638426 (= e!2893515 (contains!14827 (keys!18265 lt!1800973) key!4968))))

(declare-fun b!4638427 () Bool)

(declare-fun e!2893517 () List!51836)

(assert (=> b!4638427 (= e!2893517 (keys!18265 lt!1800973))))

(declare-fun b!4638428 () Bool)

(assert (=> b!4638428 (= e!2893512 e!2893515)))

(declare-fun res!1947493 () Bool)

(assert (=> b!4638428 (=> (not res!1947493) (not e!2893515))))

(declare-datatypes ((Option!11724 0))(
  ( (None!11723) (Some!11723 (v!45933 V!13321)) )
))
(declare-fun isDefined!8988 (Option!11724) Bool)

(declare-fun getValueByKey!1540 (List!51834 K!13075) Option!11724)

(assert (=> b!4638428 (= res!1947493 (isDefined!8988 (getValueByKey!1540 (toList!5086 lt!1800973) key!4968)))))

(declare-fun b!4638429 () Bool)

(declare-fun lt!1801277 () Unit!114889)

(assert (=> b!4638429 (= e!2893516 lt!1801277)))

(declare-fun lt!1801279 () Unit!114889)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1441 (List!51834 K!13075) Unit!114889)

(assert (=> b!4638429 (= lt!1801279 (lemmaContainsKeyImpliesGetValueByKeyDefined!1441 (toList!5086 lt!1800973) key!4968))))

(assert (=> b!4638429 (isDefined!8988 (getValueByKey!1540 (toList!5086 lt!1800973) key!4968))))

(declare-fun lt!1801272 () Unit!114889)

(assert (=> b!4638429 (= lt!1801272 lt!1801279)))

(declare-fun lemmaInListThenGetKeysListContains!697 (List!51834 K!13075) Unit!114889)

(assert (=> b!4638429 (= lt!1801277 (lemmaInListThenGetKeysListContains!697 (toList!5086 lt!1800973) key!4968))))

(declare-fun call!323810 () Bool)

(assert (=> b!4638429 call!323810))

(declare-fun b!4638430 () Bool)

(declare-fun getKeysList!702 (List!51834) List!51836)

(assert (=> b!4638430 (= e!2893517 (getKeysList!702 (toList!5086 lt!1800973)))))

(declare-fun b!4638431 () Bool)

(assert (=> b!4638431 false))

(declare-fun lt!1801273 () Unit!114889)

(declare-fun lt!1801275 () Unit!114889)

(assert (=> b!4638431 (= lt!1801273 lt!1801275)))

(assert (=> b!4638431 (containsKey!2589 (toList!5086 lt!1800973) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!701 (List!51834 K!13075) Unit!114889)

(assert (=> b!4638431 (= lt!1801275 (lemmaInGetKeysListThenContainsKey!701 (toList!5086 lt!1800973) key!4968))))

(declare-fun Unit!114947 () Unit!114889)

(assert (=> b!4638431 (= e!2893513 Unit!114947)))

(declare-fun bm!323805 () Bool)

(assert (=> bm!323805 (= call!323810 (contains!14827 e!2893517 key!4968))))

(declare-fun c!793825 () Bool)

(assert (=> bm!323805 (= c!793825 c!793823)))

(declare-fun b!4638432 () Bool)

(assert (=> b!4638432 (= e!2893514 (not (contains!14827 (keys!18265 lt!1800973) key!4968)))))

(declare-fun b!4638433 () Bool)

(assert (=> b!4638433 (= e!2893516 e!2893513)))

(declare-fun c!793824 () Bool)

(assert (=> b!4638433 (= c!793824 call!323810)))

(assert (= (and d!1462543 c!793823) b!4638429))

(assert (= (and d!1462543 (not c!793823)) b!4638433))

(assert (= (and b!4638433 c!793824) b!4638431))

(assert (= (and b!4638433 (not c!793824)) b!4638425))

(assert (= (or b!4638429 b!4638433) bm!323805))

(assert (= (and bm!323805 c!793825) b!4638430))

(assert (= (and bm!323805 (not c!793825)) b!4638427))

(assert (= (and d!1462543 res!1947491) b!4638432))

(assert (= (and d!1462543 (not res!1947492)) b!4638428))

(assert (= (and b!4638428 res!1947493) b!4638426))

(declare-fun m!5497163 () Bool)

(assert (=> b!4638432 m!5497163))

(assert (=> b!4638432 m!5497163))

(declare-fun m!5497165 () Bool)

(assert (=> b!4638432 m!5497165))

(assert (=> b!4638427 m!5497163))

(declare-fun m!5497167 () Bool)

(assert (=> b!4638429 m!5497167))

(declare-fun m!5497169 () Bool)

(assert (=> b!4638429 m!5497169))

(assert (=> b!4638429 m!5497169))

(declare-fun m!5497171 () Bool)

(assert (=> b!4638429 m!5497171))

(declare-fun m!5497173 () Bool)

(assert (=> b!4638429 m!5497173))

(declare-fun m!5497175 () Bool)

(assert (=> d!1462543 m!5497175))

(assert (=> b!4638426 m!5497163))

(assert (=> b!4638426 m!5497163))

(assert (=> b!4638426 m!5497165))

(assert (=> b!4638431 m!5497175))

(declare-fun m!5497179 () Bool)

(assert (=> b!4638431 m!5497179))

(declare-fun m!5497181 () Bool)

(assert (=> bm!323805 m!5497181))

(declare-fun m!5497183 () Bool)

(assert (=> b!4638430 m!5497183))

(assert (=> b!4638428 m!5497169))

(assert (=> b!4638428 m!5497169))

(assert (=> b!4638428 m!5497171))

(assert (=> b!4638262 d!1462543))

(declare-fun d!1462551 () Bool)

(declare-fun lt!1801285 () ListMap!4409)

(assert (=> d!1462551 (invariantList!1252 (toList!5086 lt!1801285))))

(declare-fun e!2893530 () ListMap!4409)

(assert (=> d!1462551 (= lt!1801285 e!2893530)))

(declare-fun c!793834 () Bool)

(assert (=> d!1462551 (= c!793834 ((_ is Cons!51711) (Cons!51711 (tuple2!52729 hash!414 oldBucket!40) Nil!51711)))))

(declare-fun lambda!195669 () Int)

(declare-fun forall!10924 (List!51835 Int) Bool)

(assert (=> d!1462551 (forall!10924 (Cons!51711 (tuple2!52729 hash!414 oldBucket!40) Nil!51711) lambda!195669)))

(assert (=> d!1462551 (= (extractMap!1626 (Cons!51711 (tuple2!52729 hash!414 oldBucket!40) Nil!51711)) lt!1801285)))

(declare-fun b!4638456 () Bool)

(assert (=> b!4638456 (= e!2893530 (addToMapMapFromBucket!1029 (_2!29658 (h!57809 (Cons!51711 (tuple2!52729 hash!414 oldBucket!40) Nil!51711))) (extractMap!1626 (t!358913 (Cons!51711 (tuple2!52729 hash!414 oldBucket!40) Nil!51711)))))))

(declare-fun b!4638457 () Bool)

(assert (=> b!4638457 (= e!2893530 (ListMap!4410 Nil!51710))))

(assert (= (and d!1462551 c!793834) b!4638456))

(assert (= (and d!1462551 (not c!793834)) b!4638457))

(declare-fun m!5497189 () Bool)

(assert (=> d!1462551 m!5497189))

(declare-fun m!5497191 () Bool)

(assert (=> d!1462551 m!5497191))

(declare-fun m!5497193 () Bool)

(assert (=> b!4638456 m!5497193))

(assert (=> b!4638456 m!5497193))

(declare-fun m!5497195 () Bool)

(assert (=> b!4638456 m!5497195))

(assert (=> b!4638262 d!1462551))

(declare-fun d!1462553 () Bool)

(declare-fun res!1947498 () Bool)

(declare-fun e!2893535 () Bool)

(assert (=> d!1462553 (=> res!1947498 e!2893535)))

(assert (=> d!1462553 (= res!1947498 (not ((_ is Cons!51710) newBucket!224)))))

(assert (=> d!1462553 (= (noDuplicateKeys!1570 newBucket!224) e!2893535)))

(declare-fun b!4638462 () Bool)

(declare-fun e!2893536 () Bool)

(assert (=> b!4638462 (= e!2893535 e!2893536)))

(declare-fun res!1947499 () Bool)

(assert (=> b!4638462 (=> (not res!1947499) (not e!2893536))))

(assert (=> b!4638462 (= res!1947499 (not (containsKey!2588 (t!358912 newBucket!224) (_1!29657 (h!57808 newBucket!224)))))))

(declare-fun b!4638463 () Bool)

(assert (=> b!4638463 (= e!2893536 (noDuplicateKeys!1570 (t!358912 newBucket!224)))))

(assert (= (and d!1462553 (not res!1947498)) b!4638462))

(assert (= (and b!4638462 res!1947499) b!4638463))

(declare-fun m!5497197 () Bool)

(assert (=> b!4638462 m!5497197))

(declare-fun m!5497199 () Bool)

(assert (=> b!4638463 m!5497199))

(assert (=> b!4638274 d!1462553))

(declare-fun d!1462555 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8925 (List!51834) (InoxSet tuple2!52726))

(assert (=> d!1462555 (= (eq!871 (+!1924 lt!1800975 (h!57808 oldBucket!40)) (addToMapMapFromBucket!1029 oldBucket!40 (ListMap!4410 Nil!51710))) (= (content!8925 (toList!5086 (+!1924 lt!1800975 (h!57808 oldBucket!40)))) (content!8925 (toList!5086 (addToMapMapFromBucket!1029 oldBucket!40 (ListMap!4410 Nil!51710))))))))

(declare-fun bs!1032577 () Bool)

(assert (= bs!1032577 d!1462555))

(declare-fun m!5497201 () Bool)

(assert (=> bs!1032577 m!5497201))

(declare-fun m!5497203 () Bool)

(assert (=> bs!1032577 m!5497203))

(assert (=> b!4638263 d!1462555))

(declare-fun d!1462557 () Bool)

(declare-fun e!2893539 () Bool)

(assert (=> d!1462557 e!2893539))

(declare-fun res!1947504 () Bool)

(assert (=> d!1462557 (=> (not res!1947504) (not e!2893539))))

(declare-fun lt!1801294 () ListMap!4409)

(assert (=> d!1462557 (= res!1947504 (contains!14825 lt!1801294 (_1!29657 (h!57808 oldBucket!40))))))

(declare-fun lt!1801295 () List!51834)

(assert (=> d!1462557 (= lt!1801294 (ListMap!4410 lt!1801295))))

(declare-fun lt!1801297 () Unit!114889)

(declare-fun lt!1801296 () Unit!114889)

(assert (=> d!1462557 (= lt!1801297 lt!1801296)))

(assert (=> d!1462557 (= (getValueByKey!1540 lt!1801295 (_1!29657 (h!57808 oldBucket!40))) (Some!11723 (_2!29657 (h!57808 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!894 (List!51834 K!13075 V!13321) Unit!114889)

(assert (=> d!1462557 (= lt!1801296 (lemmaContainsTupThenGetReturnValue!894 lt!1801295 (_1!29657 (h!57808 oldBucket!40)) (_2!29657 (h!57808 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!402 (List!51834 K!13075 V!13321) List!51834)

(assert (=> d!1462557 (= lt!1801295 (insertNoDuplicatedKeys!402 (toList!5086 lt!1800975) (_1!29657 (h!57808 oldBucket!40)) (_2!29657 (h!57808 oldBucket!40))))))

(assert (=> d!1462557 (= (+!1924 lt!1800975 (h!57808 oldBucket!40)) lt!1801294)))

(declare-fun b!4638468 () Bool)

(declare-fun res!1947505 () Bool)

(assert (=> b!4638468 (=> (not res!1947505) (not e!2893539))))

(assert (=> b!4638468 (= res!1947505 (= (getValueByKey!1540 (toList!5086 lt!1801294) (_1!29657 (h!57808 oldBucket!40))) (Some!11723 (_2!29657 (h!57808 oldBucket!40)))))))

(declare-fun b!4638469 () Bool)

(declare-fun contains!14828 (List!51834 tuple2!52726) Bool)

(assert (=> b!4638469 (= e!2893539 (contains!14828 (toList!5086 lt!1801294) (h!57808 oldBucket!40)))))

(assert (= (and d!1462557 res!1947504) b!4638468))

(assert (= (and b!4638468 res!1947505) b!4638469))

(declare-fun m!5497205 () Bool)

(assert (=> d!1462557 m!5497205))

(declare-fun m!5497207 () Bool)

(assert (=> d!1462557 m!5497207))

(declare-fun m!5497209 () Bool)

(assert (=> d!1462557 m!5497209))

(declare-fun m!5497211 () Bool)

(assert (=> d!1462557 m!5497211))

(declare-fun m!5497213 () Bool)

(assert (=> b!4638468 m!5497213))

(declare-fun m!5497215 () Bool)

(assert (=> b!4638469 m!5497215))

(assert (=> b!4638263 d!1462557))

(declare-fun d!1462559 () Bool)

(assert (=> d!1462559 (= (head!9690 oldBucket!40) (h!57808 oldBucket!40))))

(assert (=> b!4638263 d!1462559))

(declare-fun bs!1032578 () Bool)

(declare-fun b!4638471 () Bool)

(assert (= bs!1032578 (and b!4638471 b!4638372)))

(declare-fun lambda!195670 () Int)

(assert (=> bs!1032578 (= lambda!195670 lambda!195660)))

(declare-fun bs!1032579 () Bool)

(assert (= bs!1032579 (and b!4638471 b!4638365)))

(assert (=> bs!1032579 (= lambda!195670 lambda!195653)))

(declare-fun bs!1032580 () Bool)

(assert (= bs!1032580 (and b!4638471 b!4638364)))

(assert (=> bs!1032580 (= (= (ListMap!4410 Nil!51710) lt!1801194) (= lambda!195670 lambda!195656))))

(declare-fun bs!1032581 () Bool)

(assert (= bs!1032581 (and b!4638471 d!1462503)))

(assert (=> bs!1032581 (= (= (ListMap!4410 Nil!51710) lt!1801188) (= lambda!195670 lambda!195658))))

(declare-fun bs!1032582 () Bool)

(assert (= bs!1032582 (and b!4638471 b!4638371)))

(assert (=> bs!1032582 (= lambda!195670 lambda!195661)))

(declare-fun bs!1032583 () Bool)

(assert (= bs!1032583 (and b!4638471 d!1462537)))

(assert (=> bs!1032583 (= (= (ListMap!4410 Nil!51710) lt!1801209) (= lambda!195670 lambda!195664))))

(assert (=> bs!1032580 (= lambda!195670 lambda!195655)))

(assert (=> bs!1032582 (= (= (ListMap!4410 Nil!51710) lt!1801215) (= lambda!195670 lambda!195662))))

(assert (=> b!4638471 true))

(declare-fun bs!1032584 () Bool)

(declare-fun b!4638470 () Bool)

(assert (= bs!1032584 (and b!4638470 b!4638372)))

(declare-fun lambda!195671 () Int)

(assert (=> bs!1032584 (= lambda!195671 lambda!195660)))

(declare-fun bs!1032585 () Bool)

(assert (= bs!1032585 (and b!4638470 b!4638471)))

(assert (=> bs!1032585 (= lambda!195671 lambda!195670)))

(declare-fun bs!1032586 () Bool)

(assert (= bs!1032586 (and b!4638470 b!4638365)))

(assert (=> bs!1032586 (= lambda!195671 lambda!195653)))

(declare-fun bs!1032587 () Bool)

(assert (= bs!1032587 (and b!4638470 b!4638364)))

(assert (=> bs!1032587 (= (= (ListMap!4410 Nil!51710) lt!1801194) (= lambda!195671 lambda!195656))))

(declare-fun bs!1032588 () Bool)

(assert (= bs!1032588 (and b!4638470 d!1462503)))

(assert (=> bs!1032588 (= (= (ListMap!4410 Nil!51710) lt!1801188) (= lambda!195671 lambda!195658))))

(declare-fun bs!1032589 () Bool)

(assert (= bs!1032589 (and b!4638470 b!4638371)))

(assert (=> bs!1032589 (= lambda!195671 lambda!195661)))

(declare-fun bs!1032590 () Bool)

(assert (= bs!1032590 (and b!4638470 d!1462537)))

(assert (=> bs!1032590 (= (= (ListMap!4410 Nil!51710) lt!1801209) (= lambda!195671 lambda!195664))))

(assert (=> bs!1032587 (= lambda!195671 lambda!195655)))

(assert (=> bs!1032589 (= (= (ListMap!4410 Nil!51710) lt!1801215) (= lambda!195671 lambda!195662))))

(assert (=> b!4638470 true))

(declare-fun lt!1801304 () ListMap!4409)

(declare-fun lambda!195672 () Int)

(assert (=> bs!1032584 (= (= lt!1801304 (ListMap!4410 Nil!51710)) (= lambda!195672 lambda!195660))))

(assert (=> bs!1032585 (= (= lt!1801304 (ListMap!4410 Nil!51710)) (= lambda!195672 lambda!195670))))

(assert (=> bs!1032586 (= (= lt!1801304 (ListMap!4410 Nil!51710)) (= lambda!195672 lambda!195653))))

(assert (=> bs!1032587 (= (= lt!1801304 lt!1801194) (= lambda!195672 lambda!195656))))

(assert (=> b!4638470 (= (= lt!1801304 (ListMap!4410 Nil!51710)) (= lambda!195672 lambda!195671))))

(assert (=> bs!1032588 (= (= lt!1801304 lt!1801188) (= lambda!195672 lambda!195658))))

(assert (=> bs!1032589 (= (= lt!1801304 (ListMap!4410 Nil!51710)) (= lambda!195672 lambda!195661))))

(assert (=> bs!1032590 (= (= lt!1801304 lt!1801209) (= lambda!195672 lambda!195664))))

(assert (=> bs!1032587 (= (= lt!1801304 (ListMap!4410 Nil!51710)) (= lambda!195672 lambda!195655))))

(assert (=> bs!1032589 (= (= lt!1801304 lt!1801215) (= lambda!195672 lambda!195662))))

(assert (=> b!4638470 true))

(declare-fun bs!1032591 () Bool)

(declare-fun d!1462561 () Bool)

(assert (= bs!1032591 (and d!1462561 b!4638372)))

(declare-fun lt!1801298 () ListMap!4409)

(declare-fun lambda!195673 () Int)

(assert (=> bs!1032591 (= (= lt!1801298 (ListMap!4410 Nil!51710)) (= lambda!195673 lambda!195660))))

(declare-fun bs!1032592 () Bool)

(assert (= bs!1032592 (and d!1462561 b!4638471)))

(assert (=> bs!1032592 (= (= lt!1801298 (ListMap!4410 Nil!51710)) (= lambda!195673 lambda!195670))))

(declare-fun bs!1032593 () Bool)

(assert (= bs!1032593 (and d!1462561 b!4638365)))

(assert (=> bs!1032593 (= (= lt!1801298 (ListMap!4410 Nil!51710)) (= lambda!195673 lambda!195653))))

(declare-fun bs!1032594 () Bool)

(assert (= bs!1032594 (and d!1462561 b!4638364)))

(assert (=> bs!1032594 (= (= lt!1801298 lt!1801194) (= lambda!195673 lambda!195656))))

(declare-fun bs!1032595 () Bool)

(assert (= bs!1032595 (and d!1462561 b!4638470)))

(assert (=> bs!1032595 (= (= lt!1801298 (ListMap!4410 Nil!51710)) (= lambda!195673 lambda!195671))))

(assert (=> bs!1032595 (= (= lt!1801298 lt!1801304) (= lambda!195673 lambda!195672))))

(declare-fun bs!1032596 () Bool)

(assert (= bs!1032596 (and d!1462561 d!1462503)))

(assert (=> bs!1032596 (= (= lt!1801298 lt!1801188) (= lambda!195673 lambda!195658))))

(declare-fun bs!1032597 () Bool)

(assert (= bs!1032597 (and d!1462561 b!4638371)))

(assert (=> bs!1032597 (= (= lt!1801298 (ListMap!4410 Nil!51710)) (= lambda!195673 lambda!195661))))

(declare-fun bs!1032598 () Bool)

(assert (= bs!1032598 (and d!1462561 d!1462537)))

(assert (=> bs!1032598 (= (= lt!1801298 lt!1801209) (= lambda!195673 lambda!195664))))

(assert (=> bs!1032594 (= (= lt!1801298 (ListMap!4410 Nil!51710)) (= lambda!195673 lambda!195655))))

(assert (=> bs!1032597 (= (= lt!1801298 lt!1801215) (= lambda!195673 lambda!195662))))

(assert (=> d!1462561 true))

(declare-fun e!2893542 () ListMap!4409)

(assert (=> b!4638470 (= e!2893542 lt!1801304)))

(declare-fun lt!1801311 () ListMap!4409)

(assert (=> b!4638470 (= lt!1801311 (+!1924 (ListMap!4410 Nil!51710) (h!57808 oldBucket!40)))))

(assert (=> b!4638470 (= lt!1801304 (addToMapMapFromBucket!1029 (t!358912 oldBucket!40) (+!1924 (ListMap!4410 Nil!51710) (h!57808 oldBucket!40))))))

(declare-fun lt!1801303 () Unit!114889)

(declare-fun call!323812 () Unit!114889)

(assert (=> b!4638470 (= lt!1801303 call!323812)))

(assert (=> b!4638470 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195671)))

(declare-fun lt!1801314 () Unit!114889)

(assert (=> b!4638470 (= lt!1801314 lt!1801303)))

(assert (=> b!4638470 (forall!10923 (toList!5086 lt!1801311) lambda!195672)))

(declare-fun lt!1801312 () Unit!114889)

(declare-fun Unit!114959 () Unit!114889)

(assert (=> b!4638470 (= lt!1801312 Unit!114959)))

(assert (=> b!4638470 (forall!10923 (t!358912 oldBucket!40) lambda!195672)))

(declare-fun lt!1801308 () Unit!114889)

(declare-fun Unit!114960 () Unit!114889)

(assert (=> b!4638470 (= lt!1801308 Unit!114960)))

(declare-fun lt!1801300 () Unit!114889)

(declare-fun Unit!114961 () Unit!114889)

(assert (=> b!4638470 (= lt!1801300 Unit!114961)))

(declare-fun lt!1801313 () Unit!114889)

(assert (=> b!4638470 (= lt!1801313 (forallContained!3144 (toList!5086 lt!1801311) lambda!195672 (h!57808 oldBucket!40)))))

(assert (=> b!4638470 (contains!14825 lt!1801311 (_1!29657 (h!57808 oldBucket!40)))))

(declare-fun lt!1801306 () Unit!114889)

(declare-fun Unit!114962 () Unit!114889)

(assert (=> b!4638470 (= lt!1801306 Unit!114962)))

(assert (=> b!4638470 (contains!14825 lt!1801304 (_1!29657 (h!57808 oldBucket!40)))))

(declare-fun lt!1801305 () Unit!114889)

(declare-fun Unit!114963 () Unit!114889)

(assert (=> b!4638470 (= lt!1801305 Unit!114963)))

(declare-fun call!323811 () Bool)

(assert (=> b!4638470 call!323811))

(declare-fun lt!1801317 () Unit!114889)

(declare-fun Unit!114964 () Unit!114889)

(assert (=> b!4638470 (= lt!1801317 Unit!114964)))

(assert (=> b!4638470 (forall!10923 (toList!5086 lt!1801311) lambda!195672)))

(declare-fun lt!1801299 () Unit!114889)

(declare-fun Unit!114965 () Unit!114889)

(assert (=> b!4638470 (= lt!1801299 Unit!114965)))

(declare-fun lt!1801310 () Unit!114889)

(declare-fun Unit!114966 () Unit!114889)

(assert (=> b!4638470 (= lt!1801310 Unit!114966)))

(declare-fun lt!1801315 () Unit!114889)

(assert (=> b!4638470 (= lt!1801315 (addForallContainsKeyThenBeforeAdding!553 (ListMap!4410 Nil!51710) lt!1801304 (_1!29657 (h!57808 oldBucket!40)) (_2!29657 (h!57808 oldBucket!40))))))

(assert (=> b!4638470 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195672)))

(declare-fun lt!1801309 () Unit!114889)

(assert (=> b!4638470 (= lt!1801309 lt!1801315)))

(declare-fun call!323813 () Bool)

(assert (=> b!4638470 call!323813))

(declare-fun lt!1801301 () Unit!114889)

(declare-fun Unit!114967 () Unit!114889)

(assert (=> b!4638470 (= lt!1801301 Unit!114967)))

(declare-fun res!1947506 () Bool)

(assert (=> b!4638470 (= res!1947506 (forall!10923 oldBucket!40 lambda!195672))))

(declare-fun e!2893541 () Bool)

(assert (=> b!4638470 (=> (not res!1947506) (not e!2893541))))

(assert (=> b!4638470 e!2893541))

(declare-fun lt!1801302 () Unit!114889)

(declare-fun Unit!114968 () Unit!114889)

(assert (=> b!4638470 (= lt!1801302 Unit!114968)))

(declare-fun bm!323806 () Bool)

(assert (=> bm!323806 (= call!323812 (lemmaContainsAllItsOwnKeys!554 (ListMap!4410 Nil!51710)))))

(declare-fun b!4638472 () Bool)

(assert (=> b!4638472 (= e!2893541 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195672))))

(declare-fun b!4638473 () Bool)

(declare-fun e!2893540 () Bool)

(assert (=> b!4638473 (= e!2893540 (invariantList!1252 (toList!5086 lt!1801298)))))

(declare-fun bm!323807 () Bool)

(declare-fun c!793835 () Bool)

(assert (=> bm!323807 (= call!323813 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) (ite c!793835 lambda!195670 lambda!195672)))))

(declare-fun b!4638474 () Bool)

(declare-fun res!1947508 () Bool)

(assert (=> b!4638474 (=> (not res!1947508) (not e!2893540))))

(assert (=> b!4638474 (= res!1947508 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195673))))

(declare-fun bm!323808 () Bool)

(assert (=> bm!323808 (= call!323811 (forall!10923 (ite c!793835 (toList!5086 (ListMap!4410 Nil!51710)) oldBucket!40) (ite c!793835 lambda!195670 lambda!195672)))))

(assert (=> d!1462561 e!2893540))

(declare-fun res!1947507 () Bool)

(assert (=> d!1462561 (=> (not res!1947507) (not e!2893540))))

(assert (=> d!1462561 (= res!1947507 (forall!10923 oldBucket!40 lambda!195673))))

(assert (=> d!1462561 (= lt!1801298 e!2893542)))

(assert (=> d!1462561 (= c!793835 ((_ is Nil!51710) oldBucket!40))))

(assert (=> d!1462561 (noDuplicateKeys!1570 oldBucket!40)))

(assert (=> d!1462561 (= (addToMapMapFromBucket!1029 oldBucket!40 (ListMap!4410 Nil!51710)) lt!1801298)))

(assert (=> b!4638471 (= e!2893542 (ListMap!4410 Nil!51710))))

(declare-fun lt!1801307 () Unit!114889)

(assert (=> b!4638471 (= lt!1801307 call!323812)))

(assert (=> b!4638471 call!323811))

(declare-fun lt!1801316 () Unit!114889)

(assert (=> b!4638471 (= lt!1801316 lt!1801307)))

(assert (=> b!4638471 call!323813))

(declare-fun lt!1801318 () Unit!114889)

(declare-fun Unit!114969 () Unit!114889)

(assert (=> b!4638471 (= lt!1801318 Unit!114969)))

(assert (= (and d!1462561 c!793835) b!4638471))

(assert (= (and d!1462561 (not c!793835)) b!4638470))

(assert (= (and b!4638470 res!1947506) b!4638472))

(assert (= (or b!4638471 b!4638470) bm!323806))

(assert (= (or b!4638471 b!4638470) bm!323808))

(assert (= (or b!4638471 b!4638470) bm!323807))

(assert (= (and d!1462561 res!1947507) b!4638474))

(assert (= (and b!4638474 res!1947508) b!4638473))

(declare-fun m!5497217 () Bool)

(assert (=> b!4638472 m!5497217))

(assert (=> bm!323806 m!5497029))

(declare-fun m!5497219 () Bool)

(assert (=> b!4638470 m!5497219))

(declare-fun m!5497221 () Bool)

(assert (=> b!4638470 m!5497221))

(declare-fun m!5497223 () Bool)

(assert (=> b!4638470 m!5497223))

(declare-fun m!5497225 () Bool)

(assert (=> b!4638470 m!5497225))

(assert (=> b!4638470 m!5497221))

(assert (=> b!4638470 m!5497223))

(declare-fun m!5497227 () Bool)

(assert (=> b!4638470 m!5497227))

(assert (=> b!4638470 m!5497217))

(declare-fun m!5497229 () Bool)

(assert (=> b!4638470 m!5497229))

(declare-fun m!5497231 () Bool)

(assert (=> b!4638470 m!5497231))

(declare-fun m!5497233 () Bool)

(assert (=> b!4638470 m!5497233))

(declare-fun m!5497235 () Bool)

(assert (=> b!4638470 m!5497235))

(declare-fun m!5497237 () Bool)

(assert (=> b!4638470 m!5497237))

(declare-fun m!5497239 () Bool)

(assert (=> b!4638474 m!5497239))

(declare-fun m!5497241 () Bool)

(assert (=> bm!323807 m!5497241))

(declare-fun m!5497243 () Bool)

(assert (=> b!4638473 m!5497243))

(declare-fun m!5497245 () Bool)

(assert (=> d!1462561 m!5497245))

(assert (=> d!1462561 m!5496807))

(declare-fun m!5497247 () Bool)

(assert (=> bm!323808 m!5497247))

(assert (=> b!4638263 d!1462561))

(declare-fun d!1462563 () Bool)

(assert (=> d!1462563 (eq!871 (addToMapMapFromBucket!1029 (Cons!51710 lt!1800971 lt!1800970) (ListMap!4410 Nil!51710)) (+!1924 (addToMapMapFromBucket!1029 lt!1800970 (ListMap!4410 Nil!51710)) lt!1800971))))

(declare-fun lt!1801321 () Unit!114889)

(declare-fun choose!31726 (tuple2!52726 List!51834 ListMap!4409) Unit!114889)

(assert (=> d!1462563 (= lt!1801321 (choose!31726 lt!1800971 lt!1800970 (ListMap!4410 Nil!51710)))))

(assert (=> d!1462563 (noDuplicateKeys!1570 lt!1800970)))

(assert (=> d!1462563 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!122 lt!1800971 lt!1800970 (ListMap!4410 Nil!51710)) lt!1801321)))

(declare-fun bs!1032599 () Bool)

(assert (= bs!1032599 d!1462563))

(assert (=> bs!1032599 m!5496783))

(declare-fun m!5497249 () Bool)

(assert (=> bs!1032599 m!5497249))

(assert (=> bs!1032599 m!5497131))

(assert (=> bs!1032599 m!5496805))

(declare-fun m!5497251 () Bool)

(assert (=> bs!1032599 m!5497251))

(assert (=> bs!1032599 m!5496805))

(assert (=> bs!1032599 m!5496783))

(assert (=> bs!1032599 m!5497251))

(declare-fun m!5497253 () Bool)

(assert (=> bs!1032599 m!5497253))

(assert (=> b!4638263 d!1462563))

(declare-fun d!1462565 () Bool)

(declare-fun e!2893543 () Bool)

(assert (=> d!1462565 e!2893543))

(declare-fun res!1947509 () Bool)

(assert (=> d!1462565 (=> (not res!1947509) (not e!2893543))))

(declare-fun lt!1801322 () ListMap!4409)

(assert (=> d!1462565 (= res!1947509 (contains!14825 lt!1801322 (_1!29657 lt!1800971)))))

(declare-fun lt!1801323 () List!51834)

(assert (=> d!1462565 (= lt!1801322 (ListMap!4410 lt!1801323))))

(declare-fun lt!1801325 () Unit!114889)

(declare-fun lt!1801324 () Unit!114889)

(assert (=> d!1462565 (= lt!1801325 lt!1801324)))

(assert (=> d!1462565 (= (getValueByKey!1540 lt!1801323 (_1!29657 lt!1800971)) (Some!11723 (_2!29657 lt!1800971)))))

(assert (=> d!1462565 (= lt!1801324 (lemmaContainsTupThenGetReturnValue!894 lt!1801323 (_1!29657 lt!1800971) (_2!29657 lt!1800971)))))

(assert (=> d!1462565 (= lt!1801323 (insertNoDuplicatedKeys!402 (toList!5086 lt!1800975) (_1!29657 lt!1800971) (_2!29657 lt!1800971)))))

(assert (=> d!1462565 (= (+!1924 lt!1800975 lt!1800971) lt!1801322)))

(declare-fun b!4638475 () Bool)

(declare-fun res!1947510 () Bool)

(assert (=> b!4638475 (=> (not res!1947510) (not e!2893543))))

(assert (=> b!4638475 (= res!1947510 (= (getValueByKey!1540 (toList!5086 lt!1801322) (_1!29657 lt!1800971)) (Some!11723 (_2!29657 lt!1800971))))))

(declare-fun b!4638476 () Bool)

(assert (=> b!4638476 (= e!2893543 (contains!14828 (toList!5086 lt!1801322) lt!1800971))))

(assert (= (and d!1462565 res!1947509) b!4638475))

(assert (= (and b!4638475 res!1947510) b!4638476))

(declare-fun m!5497255 () Bool)

(assert (=> d!1462565 m!5497255))

(declare-fun m!5497257 () Bool)

(assert (=> d!1462565 m!5497257))

(declare-fun m!5497259 () Bool)

(assert (=> d!1462565 m!5497259))

(declare-fun m!5497261 () Bool)

(assert (=> d!1462565 m!5497261))

(declare-fun m!5497263 () Bool)

(assert (=> b!4638475 m!5497263))

(declare-fun m!5497265 () Bool)

(assert (=> b!4638476 m!5497265))

(assert (=> b!4638263 d!1462565))

(declare-fun d!1462567 () Bool)

(assert (=> d!1462567 (= (eq!871 (addToMapMapFromBucket!1029 (Cons!51710 lt!1800971 lt!1800970) (ListMap!4410 Nil!51710)) (+!1924 lt!1800975 lt!1800971)) (= (content!8925 (toList!5086 (addToMapMapFromBucket!1029 (Cons!51710 lt!1800971 lt!1800970) (ListMap!4410 Nil!51710)))) (content!8925 (toList!5086 (+!1924 lt!1800975 lt!1800971)))))))

(declare-fun bs!1032600 () Bool)

(assert (= bs!1032600 d!1462567))

(declare-fun m!5497267 () Bool)

(assert (=> bs!1032600 m!5497267))

(declare-fun m!5497269 () Bool)

(assert (=> bs!1032600 m!5497269))

(assert (=> b!4638263 d!1462567))

(declare-fun bs!1032601 () Bool)

(declare-fun b!4638478 () Bool)

(assert (= bs!1032601 (and b!4638478 b!4638471)))

(declare-fun lambda!195674 () Int)

(assert (=> bs!1032601 (= lambda!195674 lambda!195670)))

(declare-fun bs!1032602 () Bool)

(assert (= bs!1032602 (and b!4638478 b!4638365)))

(assert (=> bs!1032602 (= lambda!195674 lambda!195653)))

(declare-fun bs!1032603 () Bool)

(assert (= bs!1032603 (and b!4638478 b!4638364)))

(assert (=> bs!1032603 (= (= (ListMap!4410 Nil!51710) lt!1801194) (= lambda!195674 lambda!195656))))

(declare-fun bs!1032604 () Bool)

(assert (= bs!1032604 (and b!4638478 b!4638470)))

(assert (=> bs!1032604 (= lambda!195674 lambda!195671)))

(assert (=> bs!1032604 (= (= (ListMap!4410 Nil!51710) lt!1801304) (= lambda!195674 lambda!195672))))

(declare-fun bs!1032605 () Bool)

(assert (= bs!1032605 (and b!4638478 d!1462503)))

(assert (=> bs!1032605 (= (= (ListMap!4410 Nil!51710) lt!1801188) (= lambda!195674 lambda!195658))))

(declare-fun bs!1032606 () Bool)

(assert (= bs!1032606 (and b!4638478 b!4638371)))

(assert (=> bs!1032606 (= lambda!195674 lambda!195661)))

(declare-fun bs!1032607 () Bool)

(assert (= bs!1032607 (and b!4638478 d!1462537)))

(assert (=> bs!1032607 (= (= (ListMap!4410 Nil!51710) lt!1801209) (= lambda!195674 lambda!195664))))

(declare-fun bs!1032608 () Bool)

(assert (= bs!1032608 (and b!4638478 d!1462561)))

(assert (=> bs!1032608 (= (= (ListMap!4410 Nil!51710) lt!1801298) (= lambda!195674 lambda!195673))))

(declare-fun bs!1032609 () Bool)

(assert (= bs!1032609 (and b!4638478 b!4638372)))

(assert (=> bs!1032609 (= lambda!195674 lambda!195660)))

(assert (=> bs!1032603 (= lambda!195674 lambda!195655)))

(assert (=> bs!1032606 (= (= (ListMap!4410 Nil!51710) lt!1801215) (= lambda!195674 lambda!195662))))

(assert (=> b!4638478 true))

(declare-fun bs!1032610 () Bool)

(declare-fun b!4638477 () Bool)

(assert (= bs!1032610 (and b!4638477 b!4638471)))

(declare-fun lambda!195675 () Int)

(assert (=> bs!1032610 (= lambda!195675 lambda!195670)))

(declare-fun bs!1032611 () Bool)

(assert (= bs!1032611 (and b!4638477 b!4638365)))

(assert (=> bs!1032611 (= lambda!195675 lambda!195653)))

(declare-fun bs!1032612 () Bool)

(assert (= bs!1032612 (and b!4638477 b!4638364)))

(assert (=> bs!1032612 (= (= (ListMap!4410 Nil!51710) lt!1801194) (= lambda!195675 lambda!195656))))

(declare-fun bs!1032613 () Bool)

(assert (= bs!1032613 (and b!4638477 b!4638470)))

(assert (=> bs!1032613 (= lambda!195675 lambda!195671)))

(assert (=> bs!1032613 (= (= (ListMap!4410 Nil!51710) lt!1801304) (= lambda!195675 lambda!195672))))

(declare-fun bs!1032614 () Bool)

(assert (= bs!1032614 (and b!4638477 d!1462503)))

(assert (=> bs!1032614 (= (= (ListMap!4410 Nil!51710) lt!1801188) (= lambda!195675 lambda!195658))))

(declare-fun bs!1032615 () Bool)

(assert (= bs!1032615 (and b!4638477 b!4638371)))

(assert (=> bs!1032615 (= lambda!195675 lambda!195661)))

(declare-fun bs!1032616 () Bool)

(assert (= bs!1032616 (and b!4638477 d!1462561)))

(assert (=> bs!1032616 (= (= (ListMap!4410 Nil!51710) lt!1801298) (= lambda!195675 lambda!195673))))

(declare-fun bs!1032617 () Bool)

(assert (= bs!1032617 (and b!4638477 b!4638372)))

(assert (=> bs!1032617 (= lambda!195675 lambda!195660)))

(assert (=> bs!1032612 (= lambda!195675 lambda!195655)))

(assert (=> bs!1032615 (= (= (ListMap!4410 Nil!51710) lt!1801215) (= lambda!195675 lambda!195662))))

(declare-fun bs!1032618 () Bool)

(assert (= bs!1032618 (and b!4638477 d!1462537)))

(assert (=> bs!1032618 (= (= (ListMap!4410 Nil!51710) lt!1801209) (= lambda!195675 lambda!195664))))

(declare-fun bs!1032619 () Bool)

(assert (= bs!1032619 (and b!4638477 b!4638478)))

(assert (=> bs!1032619 (= lambda!195675 lambda!195674)))

(assert (=> b!4638477 true))

(declare-fun lt!1801332 () ListMap!4409)

(declare-fun lambda!195676 () Int)

(assert (=> bs!1032610 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195670))))

(assert (=> bs!1032611 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195653))))

(assert (=> b!4638477 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195675))))

(assert (=> bs!1032612 (= (= lt!1801332 lt!1801194) (= lambda!195676 lambda!195656))))

(assert (=> bs!1032613 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195671))))

(assert (=> bs!1032613 (= (= lt!1801332 lt!1801304) (= lambda!195676 lambda!195672))))

(assert (=> bs!1032614 (= (= lt!1801332 lt!1801188) (= lambda!195676 lambda!195658))))

(assert (=> bs!1032615 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195661))))

(assert (=> bs!1032616 (= (= lt!1801332 lt!1801298) (= lambda!195676 lambda!195673))))

(assert (=> bs!1032617 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195660))))

(assert (=> bs!1032612 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195655))))

(assert (=> bs!1032615 (= (= lt!1801332 lt!1801215) (= lambda!195676 lambda!195662))))

(assert (=> bs!1032618 (= (= lt!1801332 lt!1801209) (= lambda!195676 lambda!195664))))

(assert (=> bs!1032619 (= (= lt!1801332 (ListMap!4410 Nil!51710)) (= lambda!195676 lambda!195674))))

(assert (=> b!4638477 true))

(declare-fun bs!1032620 () Bool)

(declare-fun d!1462569 () Bool)

(assert (= bs!1032620 (and d!1462569 b!4638471)))

(declare-fun lt!1801326 () ListMap!4409)

(declare-fun lambda!195677 () Int)

(assert (=> bs!1032620 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195670))))

(declare-fun bs!1032621 () Bool)

(assert (= bs!1032621 (and d!1462569 b!4638365)))

(assert (=> bs!1032621 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195653))))

(declare-fun bs!1032622 () Bool)

(assert (= bs!1032622 (and d!1462569 b!4638477)))

(assert (=> bs!1032622 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195675))))

(declare-fun bs!1032623 () Bool)

(assert (= bs!1032623 (and d!1462569 b!4638364)))

(assert (=> bs!1032623 (= (= lt!1801326 lt!1801194) (= lambda!195677 lambda!195656))))

(declare-fun bs!1032624 () Bool)

(assert (= bs!1032624 (and d!1462569 b!4638470)))

(assert (=> bs!1032624 (= (= lt!1801326 lt!1801304) (= lambda!195677 lambda!195672))))

(declare-fun bs!1032625 () Bool)

(assert (= bs!1032625 (and d!1462569 d!1462503)))

(assert (=> bs!1032625 (= (= lt!1801326 lt!1801188) (= lambda!195677 lambda!195658))))

(declare-fun bs!1032626 () Bool)

(assert (= bs!1032626 (and d!1462569 b!4638371)))

(assert (=> bs!1032626 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195661))))

(declare-fun bs!1032627 () Bool)

(assert (= bs!1032627 (and d!1462569 d!1462561)))

(assert (=> bs!1032627 (= (= lt!1801326 lt!1801298) (= lambda!195677 lambda!195673))))

(declare-fun bs!1032628 () Bool)

(assert (= bs!1032628 (and d!1462569 b!4638372)))

(assert (=> bs!1032628 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195660))))

(assert (=> bs!1032623 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195655))))

(assert (=> bs!1032626 (= (= lt!1801326 lt!1801215) (= lambda!195677 lambda!195662))))

(assert (=> bs!1032622 (= (= lt!1801326 lt!1801332) (= lambda!195677 lambda!195676))))

(assert (=> bs!1032624 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195671))))

(declare-fun bs!1032629 () Bool)

(assert (= bs!1032629 (and d!1462569 d!1462537)))

(assert (=> bs!1032629 (= (= lt!1801326 lt!1801209) (= lambda!195677 lambda!195664))))

(declare-fun bs!1032630 () Bool)

(assert (= bs!1032630 (and d!1462569 b!4638478)))

(assert (=> bs!1032630 (= (= lt!1801326 (ListMap!4410 Nil!51710)) (= lambda!195677 lambda!195674))))

(assert (=> d!1462569 true))

(declare-fun e!2893546 () ListMap!4409)

(assert (=> b!4638477 (= e!2893546 lt!1801332)))

(declare-fun lt!1801339 () ListMap!4409)

(assert (=> b!4638477 (= lt!1801339 (+!1924 (ListMap!4410 Nil!51710) (h!57808 (Cons!51710 lt!1800971 lt!1800970))))))

(assert (=> b!4638477 (= lt!1801332 (addToMapMapFromBucket!1029 (t!358912 (Cons!51710 lt!1800971 lt!1800970)) (+!1924 (ListMap!4410 Nil!51710) (h!57808 (Cons!51710 lt!1800971 lt!1800970)))))))

(declare-fun lt!1801331 () Unit!114889)

(declare-fun call!323815 () Unit!114889)

(assert (=> b!4638477 (= lt!1801331 call!323815)))

(assert (=> b!4638477 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195675)))

(declare-fun lt!1801342 () Unit!114889)

(assert (=> b!4638477 (= lt!1801342 lt!1801331)))

(assert (=> b!4638477 (forall!10923 (toList!5086 lt!1801339) lambda!195676)))

(declare-fun lt!1801340 () Unit!114889)

(declare-fun Unit!114970 () Unit!114889)

(assert (=> b!4638477 (= lt!1801340 Unit!114970)))

(assert (=> b!4638477 (forall!10923 (t!358912 (Cons!51710 lt!1800971 lt!1800970)) lambda!195676)))

(declare-fun lt!1801336 () Unit!114889)

(declare-fun Unit!114971 () Unit!114889)

(assert (=> b!4638477 (= lt!1801336 Unit!114971)))

(declare-fun lt!1801328 () Unit!114889)

(declare-fun Unit!114972 () Unit!114889)

(assert (=> b!4638477 (= lt!1801328 Unit!114972)))

(declare-fun lt!1801341 () Unit!114889)

(assert (=> b!4638477 (= lt!1801341 (forallContained!3144 (toList!5086 lt!1801339) lambda!195676 (h!57808 (Cons!51710 lt!1800971 lt!1800970))))))

(assert (=> b!4638477 (contains!14825 lt!1801339 (_1!29657 (h!57808 (Cons!51710 lt!1800971 lt!1800970))))))

(declare-fun lt!1801334 () Unit!114889)

(declare-fun Unit!114973 () Unit!114889)

(assert (=> b!4638477 (= lt!1801334 Unit!114973)))

(assert (=> b!4638477 (contains!14825 lt!1801332 (_1!29657 (h!57808 (Cons!51710 lt!1800971 lt!1800970))))))

(declare-fun lt!1801333 () Unit!114889)

(declare-fun Unit!114975 () Unit!114889)

(assert (=> b!4638477 (= lt!1801333 Unit!114975)))

(declare-fun call!323814 () Bool)

(assert (=> b!4638477 call!323814))

(declare-fun lt!1801345 () Unit!114889)

(declare-fun Unit!114978 () Unit!114889)

(assert (=> b!4638477 (= lt!1801345 Unit!114978)))

(assert (=> b!4638477 (forall!10923 (toList!5086 lt!1801339) lambda!195676)))

(declare-fun lt!1801327 () Unit!114889)

(declare-fun Unit!114979 () Unit!114889)

(assert (=> b!4638477 (= lt!1801327 Unit!114979)))

(declare-fun lt!1801338 () Unit!114889)

(declare-fun Unit!114980 () Unit!114889)

(assert (=> b!4638477 (= lt!1801338 Unit!114980)))

(declare-fun lt!1801343 () Unit!114889)

(assert (=> b!4638477 (= lt!1801343 (addForallContainsKeyThenBeforeAdding!553 (ListMap!4410 Nil!51710) lt!1801332 (_1!29657 (h!57808 (Cons!51710 lt!1800971 lt!1800970))) (_2!29657 (h!57808 (Cons!51710 lt!1800971 lt!1800970)))))))

(assert (=> b!4638477 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195676)))

(declare-fun lt!1801337 () Unit!114889)

(assert (=> b!4638477 (= lt!1801337 lt!1801343)))

(declare-fun call!323816 () Bool)

(assert (=> b!4638477 call!323816))

(declare-fun lt!1801329 () Unit!114889)

(declare-fun Unit!114984 () Unit!114889)

(assert (=> b!4638477 (= lt!1801329 Unit!114984)))

(declare-fun res!1947511 () Bool)

(assert (=> b!4638477 (= res!1947511 (forall!10923 (Cons!51710 lt!1800971 lt!1800970) lambda!195676))))

(declare-fun e!2893545 () Bool)

(assert (=> b!4638477 (=> (not res!1947511) (not e!2893545))))

(assert (=> b!4638477 e!2893545))

(declare-fun lt!1801330 () Unit!114889)

(declare-fun Unit!114987 () Unit!114889)

(assert (=> b!4638477 (= lt!1801330 Unit!114987)))

(declare-fun bm!323809 () Bool)

(assert (=> bm!323809 (= call!323815 (lemmaContainsAllItsOwnKeys!554 (ListMap!4410 Nil!51710)))))

(declare-fun b!4638479 () Bool)

(assert (=> b!4638479 (= e!2893545 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195676))))

(declare-fun b!4638480 () Bool)

(declare-fun e!2893544 () Bool)

(assert (=> b!4638480 (= e!2893544 (invariantList!1252 (toList!5086 lt!1801326)))))

(declare-fun c!793836 () Bool)

(declare-fun bm!323810 () Bool)

(assert (=> bm!323810 (= call!323816 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) (ite c!793836 lambda!195674 lambda!195676)))))

(declare-fun b!4638481 () Bool)

(declare-fun res!1947513 () Bool)

(assert (=> b!4638481 (=> (not res!1947513) (not e!2893544))))

(assert (=> b!4638481 (= res!1947513 (forall!10923 (toList!5086 (ListMap!4410 Nil!51710)) lambda!195677))))

(declare-fun bm!323811 () Bool)

(assert (=> bm!323811 (= call!323814 (forall!10923 (ite c!793836 (toList!5086 (ListMap!4410 Nil!51710)) (Cons!51710 lt!1800971 lt!1800970)) (ite c!793836 lambda!195674 lambda!195676)))))

(assert (=> d!1462569 e!2893544))

(declare-fun res!1947512 () Bool)

(assert (=> d!1462569 (=> (not res!1947512) (not e!2893544))))

(assert (=> d!1462569 (= res!1947512 (forall!10923 (Cons!51710 lt!1800971 lt!1800970) lambda!195677))))

(assert (=> d!1462569 (= lt!1801326 e!2893546)))

(assert (=> d!1462569 (= c!793836 ((_ is Nil!51710) (Cons!51710 lt!1800971 lt!1800970)))))

(assert (=> d!1462569 (noDuplicateKeys!1570 (Cons!51710 lt!1800971 lt!1800970))))

(assert (=> d!1462569 (= (addToMapMapFromBucket!1029 (Cons!51710 lt!1800971 lt!1800970) (ListMap!4410 Nil!51710)) lt!1801326)))

(assert (=> b!4638478 (= e!2893546 (ListMap!4410 Nil!51710))))

(declare-fun lt!1801335 () Unit!114889)

(assert (=> b!4638478 (= lt!1801335 call!323815)))

(assert (=> b!4638478 call!323814))

(declare-fun lt!1801344 () Unit!114889)

(assert (=> b!4638478 (= lt!1801344 lt!1801335)))

(assert (=> b!4638478 call!323816))

(declare-fun lt!1801346 () Unit!114889)

(declare-fun Unit!114990 () Unit!114889)

(assert (=> b!4638478 (= lt!1801346 Unit!114990)))

(assert (= (and d!1462569 c!793836) b!4638478))

(assert (= (and d!1462569 (not c!793836)) b!4638477))

(assert (= (and b!4638477 res!1947511) b!4638479))

(assert (= (or b!4638478 b!4638477) bm!323809))

(assert (= (or b!4638478 b!4638477) bm!323811))

(assert (= (or b!4638478 b!4638477) bm!323810))

(assert (= (and d!1462569 res!1947512) b!4638481))

(assert (= (and b!4638481 res!1947513) b!4638480))

(declare-fun m!5497271 () Bool)

(assert (=> b!4638479 m!5497271))

(assert (=> bm!323809 m!5497029))

(declare-fun m!5497273 () Bool)

(assert (=> b!4638477 m!5497273))

(declare-fun m!5497275 () Bool)

(assert (=> b!4638477 m!5497275))

(declare-fun m!5497277 () Bool)

(assert (=> b!4638477 m!5497277))

(declare-fun m!5497279 () Bool)

(assert (=> b!4638477 m!5497279))

(assert (=> b!4638477 m!5497275))

(assert (=> b!4638477 m!5497277))

(declare-fun m!5497281 () Bool)

(assert (=> b!4638477 m!5497281))

(assert (=> b!4638477 m!5497271))

(declare-fun m!5497283 () Bool)

(assert (=> b!4638477 m!5497283))

(declare-fun m!5497285 () Bool)

(assert (=> b!4638477 m!5497285))

(declare-fun m!5497287 () Bool)

(assert (=> b!4638477 m!5497287))

(declare-fun m!5497289 () Bool)

(assert (=> b!4638477 m!5497289))

(declare-fun m!5497291 () Bool)

(assert (=> b!4638477 m!5497291))

(declare-fun m!5497293 () Bool)

(assert (=> b!4638481 m!5497293))

(declare-fun m!5497295 () Bool)

(assert (=> bm!323810 m!5497295))

(declare-fun m!5497297 () Bool)

(assert (=> b!4638480 m!5497297))

(declare-fun m!5497299 () Bool)

(assert (=> d!1462569 m!5497299))

(declare-fun m!5497301 () Bool)

(assert (=> d!1462569 m!5497301))

(declare-fun m!5497303 () Bool)

(assert (=> bm!323811 m!5497303))

(assert (=> b!4638263 d!1462569))

(declare-fun bs!1032631 () Bool)

(declare-fun d!1462571 () Bool)

(assert (= bs!1032631 (and d!1462571 b!4638471)))

(declare-fun lambda!195680 () Int)

(assert (=> bs!1032631 (not (= lambda!195680 lambda!195670))))

(declare-fun bs!1032632 () Bool)

(assert (= bs!1032632 (and d!1462571 b!4638365)))

(assert (=> bs!1032632 (not (= lambda!195680 lambda!195653))))

(declare-fun bs!1032633 () Bool)

(assert (= bs!1032633 (and d!1462571 b!4638477)))

(assert (=> bs!1032633 (not (= lambda!195680 lambda!195675))))

(declare-fun bs!1032634 () Bool)

(assert (= bs!1032634 (and d!1462571 b!4638364)))

(assert (=> bs!1032634 (not (= lambda!195680 lambda!195656))))

(declare-fun bs!1032635 () Bool)

(assert (= bs!1032635 (and d!1462571 b!4638470)))

(assert (=> bs!1032635 (not (= lambda!195680 lambda!195672))))

(declare-fun bs!1032636 () Bool)

(assert (= bs!1032636 (and d!1462571 d!1462503)))

(assert (=> bs!1032636 (not (= lambda!195680 lambda!195658))))

(declare-fun bs!1032637 () Bool)

(assert (= bs!1032637 (and d!1462571 b!4638371)))

(assert (=> bs!1032637 (not (= lambda!195680 lambda!195661))))

(declare-fun bs!1032638 () Bool)

(assert (= bs!1032638 (and d!1462571 d!1462569)))

(assert (=> bs!1032638 (not (= lambda!195680 lambda!195677))))

(declare-fun bs!1032639 () Bool)

(assert (= bs!1032639 (and d!1462571 d!1462561)))

(assert (=> bs!1032639 (not (= lambda!195680 lambda!195673))))

(declare-fun bs!1032640 () Bool)

(assert (= bs!1032640 (and d!1462571 b!4638372)))

(assert (=> bs!1032640 (not (= lambda!195680 lambda!195660))))

(assert (=> bs!1032634 (not (= lambda!195680 lambda!195655))))

(assert (=> bs!1032637 (not (= lambda!195680 lambda!195662))))

(assert (=> bs!1032633 (not (= lambda!195680 lambda!195676))))

(assert (=> bs!1032635 (not (= lambda!195680 lambda!195671))))

(declare-fun bs!1032641 () Bool)

(assert (= bs!1032641 (and d!1462571 d!1462537)))

(assert (=> bs!1032641 (not (= lambda!195680 lambda!195664))))

(declare-fun bs!1032642 () Bool)

(assert (= bs!1032642 (and d!1462571 b!4638478)))

(assert (=> bs!1032642 (not (= lambda!195680 lambda!195674))))

(assert (=> d!1462571 true))

(assert (=> d!1462571 true))

(assert (=> d!1462571 (= (allKeysSameHash!1424 oldBucket!40 hash!414 hashF!1389) (forall!10923 oldBucket!40 lambda!195680))))

(declare-fun bs!1032643 () Bool)

(assert (= bs!1032643 d!1462571))

(declare-fun m!5497305 () Bool)

(assert (=> bs!1032643 m!5497305))

(assert (=> b!4638269 d!1462571))

(declare-fun bs!1032644 () Bool)

(declare-fun d!1462573 () Bool)

(assert (= bs!1032644 (and d!1462573 d!1462551)))

(declare-fun lambda!195681 () Int)

(assert (=> bs!1032644 (= lambda!195681 lambda!195669)))

(declare-fun lt!1801347 () ListMap!4409)

(assert (=> d!1462573 (invariantList!1252 (toList!5086 lt!1801347))))

(declare-fun e!2893547 () ListMap!4409)

(assert (=> d!1462573 (= lt!1801347 e!2893547)))

(declare-fun c!793837 () Bool)

(assert (=> d!1462573 (= c!793837 ((_ is Cons!51711) (Cons!51711 (tuple2!52729 hash!414 newBucket!224) Nil!51711)))))

(assert (=> d!1462573 (forall!10924 (Cons!51711 (tuple2!52729 hash!414 newBucket!224) Nil!51711) lambda!195681)))

(assert (=> d!1462573 (= (extractMap!1626 (Cons!51711 (tuple2!52729 hash!414 newBucket!224) Nil!51711)) lt!1801347)))

(declare-fun b!4638486 () Bool)

(assert (=> b!4638486 (= e!2893547 (addToMapMapFromBucket!1029 (_2!29658 (h!57809 (Cons!51711 (tuple2!52729 hash!414 newBucket!224) Nil!51711))) (extractMap!1626 (t!358913 (Cons!51711 (tuple2!52729 hash!414 newBucket!224) Nil!51711)))))))

(declare-fun b!4638487 () Bool)

(assert (=> b!4638487 (= e!2893547 (ListMap!4410 Nil!51710))))

(assert (= (and d!1462573 c!793837) b!4638486))

(assert (= (and d!1462573 (not c!793837)) b!4638487))

(declare-fun m!5497307 () Bool)

(assert (=> d!1462573 m!5497307))

(declare-fun m!5497309 () Bool)

(assert (=> d!1462573 m!5497309))

(declare-fun m!5497311 () Bool)

(assert (=> b!4638486 m!5497311))

(assert (=> b!4638486 m!5497311))

(declare-fun m!5497313 () Bool)

(assert (=> b!4638486 m!5497313))

(assert (=> b!4638270 d!1462573))

(declare-fun bs!1032645 () Bool)

(declare-fun d!1462575 () Bool)

(assert (= bs!1032645 (and d!1462575 d!1462551)))

(declare-fun lambda!195682 () Int)

(assert (=> bs!1032645 (= lambda!195682 lambda!195669)))

(declare-fun bs!1032646 () Bool)

(assert (= bs!1032646 (and d!1462575 d!1462573)))

(assert (=> bs!1032646 (= lambda!195682 lambda!195681)))

(declare-fun lt!1801348 () ListMap!4409)

(assert (=> d!1462575 (invariantList!1252 (toList!5086 lt!1801348))))

(declare-fun e!2893548 () ListMap!4409)

(assert (=> d!1462575 (= lt!1801348 e!2893548)))

(declare-fun c!793838 () Bool)

(assert (=> d!1462575 (= c!793838 ((_ is Cons!51711) (Cons!51711 (tuple2!52729 hash!414 lt!1800970) Nil!51711)))))

(assert (=> d!1462575 (forall!10924 (Cons!51711 (tuple2!52729 hash!414 lt!1800970) Nil!51711) lambda!195682)))

(assert (=> d!1462575 (= (extractMap!1626 (Cons!51711 (tuple2!52729 hash!414 lt!1800970) Nil!51711)) lt!1801348)))

(declare-fun b!4638488 () Bool)

(assert (=> b!4638488 (= e!2893548 (addToMapMapFromBucket!1029 (_2!29658 (h!57809 (Cons!51711 (tuple2!52729 hash!414 lt!1800970) Nil!51711))) (extractMap!1626 (t!358913 (Cons!51711 (tuple2!52729 hash!414 lt!1800970) Nil!51711)))))))

(declare-fun b!4638489 () Bool)

(assert (=> b!4638489 (= e!2893548 (ListMap!4410 Nil!51710))))

(assert (= (and d!1462575 c!793838) b!4638488))

(assert (= (and d!1462575 (not c!793838)) b!4638489))

(declare-fun m!5497315 () Bool)

(assert (=> d!1462575 m!5497315))

(declare-fun m!5497317 () Bool)

(assert (=> d!1462575 m!5497317))

(declare-fun m!5497319 () Bool)

(assert (=> b!4638488 m!5497319))

(assert (=> b!4638488 m!5497319))

(declare-fun m!5497321 () Bool)

(assert (=> b!4638488 m!5497321))

(assert (=> b!4638270 d!1462575))

(declare-fun bs!1032647 () Bool)

(declare-fun d!1462577 () Bool)

(assert (= bs!1032647 (and d!1462577 b!4638471)))

(declare-fun lambda!195683 () Int)

(assert (=> bs!1032647 (not (= lambda!195683 lambda!195670))))

(declare-fun bs!1032648 () Bool)

(assert (= bs!1032648 (and d!1462577 b!4638365)))

(assert (=> bs!1032648 (not (= lambda!195683 lambda!195653))))

(declare-fun bs!1032649 () Bool)

(assert (= bs!1032649 (and d!1462577 b!4638477)))

(assert (=> bs!1032649 (not (= lambda!195683 lambda!195675))))

(declare-fun bs!1032650 () Bool)

(assert (= bs!1032650 (and d!1462577 b!4638364)))

(assert (=> bs!1032650 (not (= lambda!195683 lambda!195656))))

(declare-fun bs!1032651 () Bool)

(assert (= bs!1032651 (and d!1462577 b!4638470)))

(assert (=> bs!1032651 (not (= lambda!195683 lambda!195672))))

(declare-fun bs!1032652 () Bool)

(assert (= bs!1032652 (and d!1462577 d!1462503)))

(assert (=> bs!1032652 (not (= lambda!195683 lambda!195658))))

(declare-fun bs!1032653 () Bool)

(assert (= bs!1032653 (and d!1462577 b!4638371)))

(assert (=> bs!1032653 (not (= lambda!195683 lambda!195661))))

(declare-fun bs!1032654 () Bool)

(assert (= bs!1032654 (and d!1462577 d!1462569)))

(assert (=> bs!1032654 (not (= lambda!195683 lambda!195677))))

(declare-fun bs!1032655 () Bool)

(assert (= bs!1032655 (and d!1462577 d!1462571)))

(assert (=> bs!1032655 (= lambda!195683 lambda!195680)))

(declare-fun bs!1032656 () Bool)

(assert (= bs!1032656 (and d!1462577 d!1462561)))

(assert (=> bs!1032656 (not (= lambda!195683 lambda!195673))))

(declare-fun bs!1032657 () Bool)

(assert (= bs!1032657 (and d!1462577 b!4638372)))

(assert (=> bs!1032657 (not (= lambda!195683 lambda!195660))))

(assert (=> bs!1032650 (not (= lambda!195683 lambda!195655))))

(assert (=> bs!1032653 (not (= lambda!195683 lambda!195662))))

(assert (=> bs!1032649 (not (= lambda!195683 lambda!195676))))

(assert (=> bs!1032651 (not (= lambda!195683 lambda!195671))))

(declare-fun bs!1032658 () Bool)

(assert (= bs!1032658 (and d!1462577 d!1462537)))

(assert (=> bs!1032658 (not (= lambda!195683 lambda!195664))))

(declare-fun bs!1032659 () Bool)

(assert (= bs!1032659 (and d!1462577 b!4638478)))

(assert (=> bs!1032659 (not (= lambda!195683 lambda!195674))))

(assert (=> d!1462577 true))

(assert (=> d!1462577 true))

(assert (=> d!1462577 (= (allKeysSameHash!1424 newBucket!224 hash!414 hashF!1389) (forall!10923 newBucket!224 lambda!195683))))

(declare-fun bs!1032660 () Bool)

(assert (= bs!1032660 d!1462577))

(declare-fun m!5497323 () Bool)

(assert (=> bs!1032660 m!5497323))

(assert (=> b!4638271 d!1462577))

(declare-fun d!1462579 () Bool)

(declare-fun res!1947514 () Bool)

(declare-fun e!2893549 () Bool)

(assert (=> d!1462579 (=> res!1947514 e!2893549)))

(assert (=> d!1462579 (= res!1947514 (not ((_ is Cons!51710) oldBucket!40)))))

(assert (=> d!1462579 (= (noDuplicateKeys!1570 oldBucket!40) e!2893549)))

(declare-fun b!4638490 () Bool)

(declare-fun e!2893550 () Bool)

(assert (=> b!4638490 (= e!2893549 e!2893550)))

(declare-fun res!1947515 () Bool)

(assert (=> b!4638490 (=> (not res!1947515) (not e!2893550))))

(assert (=> b!4638490 (= res!1947515 (not (containsKey!2588 (t!358912 oldBucket!40) (_1!29657 (h!57808 oldBucket!40)))))))

(declare-fun b!4638491 () Bool)

(assert (=> b!4638491 (= e!2893550 (noDuplicateKeys!1570 (t!358912 oldBucket!40)))))

(assert (= (and d!1462579 (not res!1947514)) b!4638490))

(assert (= (and b!4638490 res!1947515) b!4638491))

(declare-fun m!5497325 () Bool)

(assert (=> b!4638490 m!5497325))

(declare-fun m!5497327 () Bool)

(assert (=> b!4638491 m!5497327))

(assert (=> start!466228 d!1462579))

(declare-fun d!1462581 () Bool)

(assert (=> d!1462581 (= (tail!8197 oldBucket!40) (t!358912 oldBucket!40))))

(assert (=> b!4638268 d!1462581))

(declare-fun b!4638501 () Bool)

(declare-fun e!2893556 () List!51834)

(declare-fun e!2893555 () List!51834)

(assert (=> b!4638501 (= e!2893556 e!2893555)))

(declare-fun c!793843 () Bool)

(assert (=> b!4638501 (= c!793843 ((_ is Cons!51710) oldBucket!40))))

(declare-fun b!4638500 () Bool)

(assert (=> b!4638500 (= e!2893556 (t!358912 oldBucket!40))))

(declare-fun b!4638503 () Bool)

(assert (=> b!4638503 (= e!2893555 Nil!51710)))

(declare-fun d!1462583 () Bool)

(declare-fun lt!1801351 () List!51834)

(assert (=> d!1462583 (not (containsKey!2588 lt!1801351 key!4968))))

(assert (=> d!1462583 (= lt!1801351 e!2893556)))

(declare-fun c!793844 () Bool)

(assert (=> d!1462583 (= c!793844 (and ((_ is Cons!51710) oldBucket!40) (= (_1!29657 (h!57808 oldBucket!40)) key!4968)))))

(assert (=> d!1462583 (noDuplicateKeys!1570 oldBucket!40)))

(assert (=> d!1462583 (= (removePairForKey!1193 oldBucket!40 key!4968) lt!1801351)))

(declare-fun b!4638502 () Bool)

(assert (=> b!4638502 (= e!2893555 (Cons!51710 (h!57808 oldBucket!40) (removePairForKey!1193 (t!358912 oldBucket!40) key!4968)))))

(assert (= (and d!1462583 c!793844) b!4638500))

(assert (= (and d!1462583 (not c!793844)) b!4638501))

(assert (= (and b!4638501 c!793843) b!4638502))

(assert (= (and b!4638501 (not c!793843)) b!4638503))

(declare-fun m!5497329 () Bool)

(assert (=> d!1462583 m!5497329))

(assert (=> d!1462583 m!5496807))

(declare-fun m!5497331 () Bool)

(assert (=> b!4638502 m!5497331))

(assert (=> b!4638275 d!1462583))

(declare-fun d!1462585 () Bool)

(declare-fun hash!3654 (Hashable!5967 K!13075) (_ BitVec 64))

(assert (=> d!1462585 (= (hash!3652 hashF!1389 key!4968) (hash!3654 hashF!1389 key!4968))))

(declare-fun bs!1032661 () Bool)

(assert (= bs!1032661 d!1462585))

(declare-fun m!5497333 () Bool)

(assert (=> bs!1032661 m!5497333))

(assert (=> b!4638265 d!1462585))

(declare-fun bs!1032662 () Bool)

(declare-fun b!4638505 () Bool)

(assert (= bs!1032662 (and b!4638505 b!4638471)))

(declare-fun lambda!195684 () Int)

(assert (=> bs!1032662 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195670))))

(declare-fun bs!1032663 () Bool)

(assert (= bs!1032663 (and b!4638505 b!4638365)))

(assert (=> bs!1032663 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195653))))

(declare-fun bs!1032664 () Bool)

(assert (= bs!1032664 (and b!4638505 b!4638477)))

(assert (=> bs!1032664 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195675))))

(declare-fun bs!1032665 () Bool)

(assert (= bs!1032665 (and b!4638505 b!4638364)))

(assert (=> bs!1032665 (= (= lt!1800974 lt!1801194) (= lambda!195684 lambda!195656))))

(declare-fun bs!1032666 () Bool)

(assert (= bs!1032666 (and b!4638505 b!4638470)))

(assert (=> bs!1032666 (= (= lt!1800974 lt!1801304) (= lambda!195684 lambda!195672))))

(declare-fun bs!1032667 () Bool)

(assert (= bs!1032667 (and b!4638505 d!1462503)))

(assert (=> bs!1032667 (= (= lt!1800974 lt!1801188) (= lambda!195684 lambda!195658))))

(declare-fun bs!1032668 () Bool)

(assert (= bs!1032668 (and b!4638505 b!4638371)))

(assert (=> bs!1032668 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195661))))

(declare-fun bs!1032669 () Bool)

(assert (= bs!1032669 (and b!4638505 d!1462569)))

(assert (=> bs!1032669 (= (= lt!1800974 lt!1801326) (= lambda!195684 lambda!195677))))

(declare-fun bs!1032670 () Bool)

(assert (= bs!1032670 (and b!4638505 d!1462571)))

(assert (=> bs!1032670 (not (= lambda!195684 lambda!195680))))

(declare-fun bs!1032671 () Bool)

(assert (= bs!1032671 (and b!4638505 d!1462577)))

(assert (=> bs!1032671 (not (= lambda!195684 lambda!195683))))

(declare-fun bs!1032672 () Bool)

(assert (= bs!1032672 (and b!4638505 d!1462561)))

(assert (=> bs!1032672 (= (= lt!1800974 lt!1801298) (= lambda!195684 lambda!195673))))

(declare-fun bs!1032673 () Bool)

(assert (= bs!1032673 (and b!4638505 b!4638372)))

(assert (=> bs!1032673 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195660))))

(assert (=> bs!1032665 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195655))))

(assert (=> bs!1032668 (= (= lt!1800974 lt!1801215) (= lambda!195684 lambda!195662))))

(assert (=> bs!1032664 (= (= lt!1800974 lt!1801332) (= lambda!195684 lambda!195676))))

(assert (=> bs!1032666 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195671))))

(declare-fun bs!1032674 () Bool)

(assert (= bs!1032674 (and b!4638505 d!1462537)))

(assert (=> bs!1032674 (= (= lt!1800974 lt!1801209) (= lambda!195684 lambda!195664))))

(declare-fun bs!1032675 () Bool)

(assert (= bs!1032675 (and b!4638505 b!4638478)))

(assert (=> bs!1032675 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195684 lambda!195674))))

(assert (=> b!4638505 true))

(declare-fun bs!1032676 () Bool)

(declare-fun b!4638504 () Bool)

(assert (= bs!1032676 (and b!4638504 b!4638471)))

(declare-fun lambda!195685 () Int)

(assert (=> bs!1032676 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195670))))

(declare-fun bs!1032677 () Bool)

(assert (= bs!1032677 (and b!4638504 b!4638365)))

(assert (=> bs!1032677 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195653))))

(declare-fun bs!1032678 () Bool)

(assert (= bs!1032678 (and b!4638504 b!4638477)))

(assert (=> bs!1032678 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195675))))

(declare-fun bs!1032679 () Bool)

(assert (= bs!1032679 (and b!4638504 b!4638364)))

(assert (=> bs!1032679 (= (= lt!1800974 lt!1801194) (= lambda!195685 lambda!195656))))

(declare-fun bs!1032680 () Bool)

(assert (= bs!1032680 (and b!4638504 b!4638470)))

(assert (=> bs!1032680 (= (= lt!1800974 lt!1801304) (= lambda!195685 lambda!195672))))

(declare-fun bs!1032681 () Bool)

(assert (= bs!1032681 (and b!4638504 d!1462503)))

(assert (=> bs!1032681 (= (= lt!1800974 lt!1801188) (= lambda!195685 lambda!195658))))

(declare-fun bs!1032682 () Bool)

(assert (= bs!1032682 (and b!4638504 b!4638505)))

(assert (=> bs!1032682 (= lambda!195685 lambda!195684)))

(declare-fun bs!1032683 () Bool)

(assert (= bs!1032683 (and b!4638504 b!4638371)))

(assert (=> bs!1032683 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195661))))

(declare-fun bs!1032684 () Bool)

(assert (= bs!1032684 (and b!4638504 d!1462569)))

(assert (=> bs!1032684 (= (= lt!1800974 lt!1801326) (= lambda!195685 lambda!195677))))

(declare-fun bs!1032685 () Bool)

(assert (= bs!1032685 (and b!4638504 d!1462571)))

(assert (=> bs!1032685 (not (= lambda!195685 lambda!195680))))

(declare-fun bs!1032686 () Bool)

(assert (= bs!1032686 (and b!4638504 d!1462577)))

(assert (=> bs!1032686 (not (= lambda!195685 lambda!195683))))

(declare-fun bs!1032687 () Bool)

(assert (= bs!1032687 (and b!4638504 d!1462561)))

(assert (=> bs!1032687 (= (= lt!1800974 lt!1801298) (= lambda!195685 lambda!195673))))

(declare-fun bs!1032688 () Bool)

(assert (= bs!1032688 (and b!4638504 b!4638372)))

(assert (=> bs!1032688 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195660))))

(assert (=> bs!1032679 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195655))))

(assert (=> bs!1032683 (= (= lt!1800974 lt!1801215) (= lambda!195685 lambda!195662))))

(assert (=> bs!1032678 (= (= lt!1800974 lt!1801332) (= lambda!195685 lambda!195676))))

(assert (=> bs!1032680 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195671))))

(declare-fun bs!1032689 () Bool)

(assert (= bs!1032689 (and b!4638504 d!1462537)))

(assert (=> bs!1032689 (= (= lt!1800974 lt!1801209) (= lambda!195685 lambda!195664))))

(declare-fun bs!1032690 () Bool)

(assert (= bs!1032690 (and b!4638504 b!4638478)))

(assert (=> bs!1032690 (= (= lt!1800974 (ListMap!4410 Nil!51710)) (= lambda!195685 lambda!195674))))

(assert (=> b!4638504 true))

(declare-fun lt!1801358 () ListMap!4409)

(declare-fun lambda!195686 () Int)

(assert (=> bs!1032676 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195670))))

(assert (=> bs!1032677 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195653))))

(assert (=> bs!1032678 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195675))))

(assert (=> bs!1032679 (= (= lt!1801358 lt!1801194) (= lambda!195686 lambda!195656))))

(assert (=> bs!1032680 (= (= lt!1801358 lt!1801304) (= lambda!195686 lambda!195672))))

(assert (=> bs!1032681 (= (= lt!1801358 lt!1801188) (= lambda!195686 lambda!195658))))

(assert (=> bs!1032682 (= (= lt!1801358 lt!1800974) (= lambda!195686 lambda!195684))))

(assert (=> bs!1032683 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195661))))

(assert (=> bs!1032684 (= (= lt!1801358 lt!1801326) (= lambda!195686 lambda!195677))))

(assert (=> b!4638504 (= (= lt!1801358 lt!1800974) (= lambda!195686 lambda!195685))))

(assert (=> bs!1032685 (not (= lambda!195686 lambda!195680))))

(assert (=> bs!1032686 (not (= lambda!195686 lambda!195683))))

(assert (=> bs!1032687 (= (= lt!1801358 lt!1801298) (= lambda!195686 lambda!195673))))

(assert (=> bs!1032688 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195660))))

(assert (=> bs!1032679 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195655))))

(assert (=> bs!1032683 (= (= lt!1801358 lt!1801215) (= lambda!195686 lambda!195662))))

(assert (=> bs!1032678 (= (= lt!1801358 lt!1801332) (= lambda!195686 lambda!195676))))

(assert (=> bs!1032680 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195671))))

(assert (=> bs!1032689 (= (= lt!1801358 lt!1801209) (= lambda!195686 lambda!195664))))

(assert (=> bs!1032690 (= (= lt!1801358 (ListMap!4410 Nil!51710)) (= lambda!195686 lambda!195674))))

(assert (=> b!4638504 true))

(declare-fun bs!1032691 () Bool)

(declare-fun d!1462587 () Bool)

(assert (= bs!1032691 (and d!1462587 b!4638471)))

(declare-fun lt!1801352 () ListMap!4409)

(declare-fun lambda!195687 () Int)

(assert (=> bs!1032691 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195670))))

(declare-fun bs!1032692 () Bool)

(assert (= bs!1032692 (and d!1462587 b!4638365)))

(assert (=> bs!1032692 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195653))))

(declare-fun bs!1032693 () Bool)

(assert (= bs!1032693 (and d!1462587 b!4638364)))

(assert (=> bs!1032693 (= (= lt!1801352 lt!1801194) (= lambda!195687 lambda!195656))))

(declare-fun bs!1032694 () Bool)

(assert (= bs!1032694 (and d!1462587 b!4638470)))

(assert (=> bs!1032694 (= (= lt!1801352 lt!1801304) (= lambda!195687 lambda!195672))))

(declare-fun bs!1032695 () Bool)

(assert (= bs!1032695 (and d!1462587 d!1462503)))

(assert (=> bs!1032695 (= (= lt!1801352 lt!1801188) (= lambda!195687 lambda!195658))))

(declare-fun bs!1032696 () Bool)

(assert (= bs!1032696 (and d!1462587 b!4638505)))

(assert (=> bs!1032696 (= (= lt!1801352 lt!1800974) (= lambda!195687 lambda!195684))))

(declare-fun bs!1032697 () Bool)

(assert (= bs!1032697 (and d!1462587 b!4638371)))

(assert (=> bs!1032697 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195661))))

(declare-fun bs!1032698 () Bool)

(assert (= bs!1032698 (and d!1462587 d!1462569)))

(assert (=> bs!1032698 (= (= lt!1801352 lt!1801326) (= lambda!195687 lambda!195677))))

(declare-fun bs!1032699 () Bool)

(assert (= bs!1032699 (and d!1462587 b!4638504)))

(assert (=> bs!1032699 (= (= lt!1801352 lt!1800974) (= lambda!195687 lambda!195685))))

(declare-fun bs!1032700 () Bool)

(assert (= bs!1032700 (and d!1462587 d!1462571)))

(assert (=> bs!1032700 (not (= lambda!195687 lambda!195680))))

(declare-fun bs!1032701 () Bool)

(assert (= bs!1032701 (and d!1462587 d!1462577)))

(assert (=> bs!1032701 (not (= lambda!195687 lambda!195683))))

(declare-fun bs!1032702 () Bool)

(assert (= bs!1032702 (and d!1462587 d!1462561)))

(assert (=> bs!1032702 (= (= lt!1801352 lt!1801298) (= lambda!195687 lambda!195673))))

(declare-fun bs!1032703 () Bool)

(assert (= bs!1032703 (and d!1462587 b!4638372)))

(assert (=> bs!1032703 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195660))))

(declare-fun bs!1032704 () Bool)

(assert (= bs!1032704 (and d!1462587 b!4638477)))

(assert (=> bs!1032704 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195675))))

(assert (=> bs!1032699 (= (= lt!1801352 lt!1801358) (= lambda!195687 lambda!195686))))

(assert (=> bs!1032693 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195655))))

(assert (=> bs!1032697 (= (= lt!1801352 lt!1801215) (= lambda!195687 lambda!195662))))

(assert (=> bs!1032704 (= (= lt!1801352 lt!1801332) (= lambda!195687 lambda!195676))))

(assert (=> bs!1032694 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195671))))

(declare-fun bs!1032705 () Bool)

(assert (= bs!1032705 (and d!1462587 d!1462537)))

(assert (=> bs!1032705 (= (= lt!1801352 lt!1801209) (= lambda!195687 lambda!195664))))

(declare-fun bs!1032706 () Bool)

(assert (= bs!1032706 (and d!1462587 b!4638478)))

(assert (=> bs!1032706 (= (= lt!1801352 (ListMap!4410 Nil!51710)) (= lambda!195687 lambda!195674))))

(assert (=> d!1462587 true))

(declare-fun e!2893559 () ListMap!4409)

(assert (=> b!4638504 (= e!2893559 lt!1801358)))

(declare-fun lt!1801365 () ListMap!4409)

(assert (=> b!4638504 (= lt!1801365 (+!1924 lt!1800974 (h!57808 oldBucket!40)))))

(assert (=> b!4638504 (= lt!1801358 (addToMapMapFromBucket!1029 (t!358912 oldBucket!40) (+!1924 lt!1800974 (h!57808 oldBucket!40))))))

(declare-fun lt!1801357 () Unit!114889)

(declare-fun call!323818 () Unit!114889)

(assert (=> b!4638504 (= lt!1801357 call!323818)))

(assert (=> b!4638504 (forall!10923 (toList!5086 lt!1800974) lambda!195685)))

(declare-fun lt!1801368 () Unit!114889)

(assert (=> b!4638504 (= lt!1801368 lt!1801357)))

(assert (=> b!4638504 (forall!10923 (toList!5086 lt!1801365) lambda!195686)))

(declare-fun lt!1801366 () Unit!114889)

(declare-fun Unit!114994 () Unit!114889)

(assert (=> b!4638504 (= lt!1801366 Unit!114994)))

(assert (=> b!4638504 (forall!10923 (t!358912 oldBucket!40) lambda!195686)))

(declare-fun lt!1801362 () Unit!114889)

(declare-fun Unit!114995 () Unit!114889)

(assert (=> b!4638504 (= lt!1801362 Unit!114995)))

(declare-fun lt!1801354 () Unit!114889)

(declare-fun Unit!114996 () Unit!114889)

(assert (=> b!4638504 (= lt!1801354 Unit!114996)))

(declare-fun lt!1801367 () Unit!114889)

(assert (=> b!4638504 (= lt!1801367 (forallContained!3144 (toList!5086 lt!1801365) lambda!195686 (h!57808 oldBucket!40)))))

(assert (=> b!4638504 (contains!14825 lt!1801365 (_1!29657 (h!57808 oldBucket!40)))))

(declare-fun lt!1801360 () Unit!114889)

(declare-fun Unit!114997 () Unit!114889)

(assert (=> b!4638504 (= lt!1801360 Unit!114997)))

(assert (=> b!4638504 (contains!14825 lt!1801358 (_1!29657 (h!57808 oldBucket!40)))))

(declare-fun lt!1801359 () Unit!114889)

(declare-fun Unit!114998 () Unit!114889)

(assert (=> b!4638504 (= lt!1801359 Unit!114998)))

(declare-fun call!323817 () Bool)

(assert (=> b!4638504 call!323817))

(declare-fun lt!1801371 () Unit!114889)

(declare-fun Unit!114999 () Unit!114889)

(assert (=> b!4638504 (= lt!1801371 Unit!114999)))

(assert (=> b!4638504 (forall!10923 (toList!5086 lt!1801365) lambda!195686)))

(declare-fun lt!1801353 () Unit!114889)

(declare-fun Unit!115000 () Unit!114889)

(assert (=> b!4638504 (= lt!1801353 Unit!115000)))

(declare-fun lt!1801364 () Unit!114889)

(declare-fun Unit!115001 () Unit!114889)

(assert (=> b!4638504 (= lt!1801364 Unit!115001)))

(declare-fun lt!1801369 () Unit!114889)

(assert (=> b!4638504 (= lt!1801369 (addForallContainsKeyThenBeforeAdding!553 lt!1800974 lt!1801358 (_1!29657 (h!57808 oldBucket!40)) (_2!29657 (h!57808 oldBucket!40))))))

(assert (=> b!4638504 (forall!10923 (toList!5086 lt!1800974) lambda!195686)))

(declare-fun lt!1801363 () Unit!114889)

(assert (=> b!4638504 (= lt!1801363 lt!1801369)))

(declare-fun call!323819 () Bool)

(assert (=> b!4638504 call!323819))

(declare-fun lt!1801355 () Unit!114889)

(declare-fun Unit!115002 () Unit!114889)

(assert (=> b!4638504 (= lt!1801355 Unit!115002)))

(declare-fun res!1947516 () Bool)

(assert (=> b!4638504 (= res!1947516 (forall!10923 oldBucket!40 lambda!195686))))

(declare-fun e!2893558 () Bool)

(assert (=> b!4638504 (=> (not res!1947516) (not e!2893558))))

(assert (=> b!4638504 e!2893558))

(declare-fun lt!1801356 () Unit!114889)

(declare-fun Unit!115003 () Unit!114889)

(assert (=> b!4638504 (= lt!1801356 Unit!115003)))

(declare-fun bm!323812 () Bool)

(assert (=> bm!323812 (= call!323818 (lemmaContainsAllItsOwnKeys!554 lt!1800974))))

(declare-fun b!4638506 () Bool)

(assert (=> b!4638506 (= e!2893558 (forall!10923 (toList!5086 lt!1800974) lambda!195686))))

(declare-fun b!4638507 () Bool)

(declare-fun e!2893557 () Bool)

(assert (=> b!4638507 (= e!2893557 (invariantList!1252 (toList!5086 lt!1801352)))))

(declare-fun c!793845 () Bool)

(declare-fun bm!323813 () Bool)

(assert (=> bm!323813 (= call!323819 (forall!10923 (toList!5086 lt!1800974) (ite c!793845 lambda!195684 lambda!195686)))))

(declare-fun b!4638508 () Bool)

(declare-fun res!1947518 () Bool)

(assert (=> b!4638508 (=> (not res!1947518) (not e!2893557))))

(assert (=> b!4638508 (= res!1947518 (forall!10923 (toList!5086 lt!1800974) lambda!195687))))

(declare-fun bm!323814 () Bool)

(assert (=> bm!323814 (= call!323817 (forall!10923 (ite c!793845 (toList!5086 lt!1800974) oldBucket!40) (ite c!793845 lambda!195684 lambda!195686)))))

(assert (=> d!1462587 e!2893557))

(declare-fun res!1947517 () Bool)

(assert (=> d!1462587 (=> (not res!1947517) (not e!2893557))))

(assert (=> d!1462587 (= res!1947517 (forall!10923 oldBucket!40 lambda!195687))))

(assert (=> d!1462587 (= lt!1801352 e!2893559)))

(assert (=> d!1462587 (= c!793845 ((_ is Nil!51710) oldBucket!40))))

(assert (=> d!1462587 (noDuplicateKeys!1570 oldBucket!40)))

(assert (=> d!1462587 (= (addToMapMapFromBucket!1029 oldBucket!40 lt!1800974) lt!1801352)))

(assert (=> b!4638505 (= e!2893559 lt!1800974)))

(declare-fun lt!1801361 () Unit!114889)

(assert (=> b!4638505 (= lt!1801361 call!323818)))

(assert (=> b!4638505 call!323817))

(declare-fun lt!1801370 () Unit!114889)

(assert (=> b!4638505 (= lt!1801370 lt!1801361)))

(assert (=> b!4638505 call!323819))

(declare-fun lt!1801372 () Unit!114889)

(declare-fun Unit!115004 () Unit!114889)

(assert (=> b!4638505 (= lt!1801372 Unit!115004)))

(assert (= (and d!1462587 c!793845) b!4638505))

(assert (= (and d!1462587 (not c!793845)) b!4638504))

(assert (= (and b!4638504 res!1947516) b!4638506))

(assert (= (or b!4638505 b!4638504) bm!323812))

(assert (= (or b!4638505 b!4638504) bm!323814))

(assert (= (or b!4638505 b!4638504) bm!323813))

(assert (= (and d!1462587 res!1947517) b!4638508))

(assert (= (and b!4638508 res!1947518) b!4638507))

(declare-fun m!5497335 () Bool)

(assert (=> b!4638506 m!5497335))

(declare-fun m!5497337 () Bool)

(assert (=> bm!323812 m!5497337))

(declare-fun m!5497339 () Bool)

(assert (=> b!4638504 m!5497339))

(declare-fun m!5497341 () Bool)

(assert (=> b!4638504 m!5497341))

(declare-fun m!5497343 () Bool)

(assert (=> b!4638504 m!5497343))

(declare-fun m!5497345 () Bool)

(assert (=> b!4638504 m!5497345))

(assert (=> b!4638504 m!5497341))

(assert (=> b!4638504 m!5497343))

(declare-fun m!5497347 () Bool)

(assert (=> b!4638504 m!5497347))

(assert (=> b!4638504 m!5497335))

(declare-fun m!5497349 () Bool)

(assert (=> b!4638504 m!5497349))

(declare-fun m!5497351 () Bool)

(assert (=> b!4638504 m!5497351))

(declare-fun m!5497353 () Bool)

(assert (=> b!4638504 m!5497353))

(declare-fun m!5497355 () Bool)

(assert (=> b!4638504 m!5497355))

(declare-fun m!5497357 () Bool)

(assert (=> b!4638504 m!5497357))

(declare-fun m!5497359 () Bool)

(assert (=> b!4638508 m!5497359))

(declare-fun m!5497361 () Bool)

(assert (=> bm!323813 m!5497361))

(declare-fun m!5497363 () Bool)

(assert (=> b!4638507 m!5497363))

(declare-fun m!5497365 () Bool)

(assert (=> d!1462587 m!5497365))

(assert (=> d!1462587 m!5496807))

(declare-fun m!5497367 () Bool)

(assert (=> bm!323814 m!5497367))

(assert (=> b!4638266 d!1462587))

(declare-fun bs!1032707 () Bool)

(declare-fun d!1462589 () Bool)

(assert (= bs!1032707 (and d!1462589 d!1462551)))

(declare-fun lambda!195688 () Int)

(assert (=> bs!1032707 (= lambda!195688 lambda!195669)))

(declare-fun bs!1032708 () Bool)

(assert (= bs!1032708 (and d!1462589 d!1462573)))

(assert (=> bs!1032708 (= lambda!195688 lambda!195681)))

(declare-fun bs!1032709 () Bool)

(assert (= bs!1032709 (and d!1462589 d!1462575)))

(assert (=> bs!1032709 (= lambda!195688 lambda!195682)))

(declare-fun lt!1801373 () ListMap!4409)

(assert (=> d!1462589 (invariantList!1252 (toList!5086 lt!1801373))))

(declare-fun e!2893560 () ListMap!4409)

(assert (=> d!1462589 (= lt!1801373 e!2893560)))

(declare-fun c!793846 () Bool)

(assert (=> d!1462589 (= c!793846 ((_ is Cons!51711) Nil!51711))))

(assert (=> d!1462589 (forall!10924 Nil!51711 lambda!195688)))

(assert (=> d!1462589 (= (extractMap!1626 Nil!51711) lt!1801373)))

(declare-fun b!4638509 () Bool)

(assert (=> b!4638509 (= e!2893560 (addToMapMapFromBucket!1029 (_2!29658 (h!57809 Nil!51711)) (extractMap!1626 (t!358913 Nil!51711))))))

(declare-fun b!4638510 () Bool)

(assert (=> b!4638510 (= e!2893560 (ListMap!4410 Nil!51710))))

(assert (= (and d!1462589 c!793846) b!4638509))

(assert (= (and d!1462589 (not c!793846)) b!4638510))

(declare-fun m!5497369 () Bool)

(assert (=> d!1462589 m!5497369))

(declare-fun m!5497371 () Bool)

(assert (=> d!1462589 m!5497371))

(declare-fun m!5497373 () Bool)

(assert (=> b!4638509 m!5497373))

(assert (=> b!4638509 m!5497373))

(declare-fun m!5497375 () Bool)

(assert (=> b!4638509 m!5497375))

(assert (=> b!4638266 d!1462589))

(declare-fun e!2893563 () Bool)

(declare-fun tp!1342690 () Bool)

(declare-fun b!4638515 () Bool)

(assert (=> b!4638515 (= e!2893563 (and tp_is_empty!29573 tp_is_empty!29575 tp!1342690))))

(assert (=> b!4638267 (= tp!1342682 e!2893563)))

(assert (= (and b!4638267 ((_ is Cons!51710) (t!358912 newBucket!224))) b!4638515))

(declare-fun e!2893564 () Bool)

(declare-fun b!4638516 () Bool)

(declare-fun tp!1342691 () Bool)

(assert (=> b!4638516 (= e!2893564 (and tp_is_empty!29573 tp_is_empty!29575 tp!1342691))))

(assert (=> b!4638276 (= tp!1342683 e!2893564)))

(assert (= (and b!4638276 ((_ is Cons!51710) (t!358912 oldBucket!40))) b!4638516))

(check-sat (not b!4638515) (not bm!323805) (not d!1462555) (not b!4638427) (not b!4638507) (not d!1462577) (not b!4638468) (not bm!323795) (not d!1462573) (not b!4638509) (not b!4638430) (not d!1462557) (not b!4638364) (not b!4638366) (not d!1462585) (not d!1462563) (not b!4638480) (not b!4638469) (not b!4638475) (not bm!323806) (not b!4638463) (not bm!323814) (not b!4638371) (not b!4638373) (not b!4638474) (not b!4638488) (not b!4638491) (not bm!323807) (not bm!323809) tp_is_empty!29573 (not b!4638367) (not bm!323813) (not d!1462589) (not d!1462587) (not d!1462551) (not d!1462543) (not b!4638288) (not b!4638516) (not bm!323797) (not bm!323812) (not bm!323808) (not bm!323810) (not bm!323811) (not d!1462565) (not b!4638426) (not bm!323796) (not b!4638375) (not d!1462503) (not d!1462537) (not d!1462561) (not b!4638504) (not b!4638508) (not b!4638479) (not bm!323798) (not bm!323799) (not b!4638431) (not d!1462569) (not d!1462575) (not b!4638490) (not b!4638473) (not b!4638476) (not b!4638368) (not b!4638481) (not b!4638486) (not b!4638472) (not b!4638462) (not d!1462571) (not b!4638477) (not b!4638428) (not b!4638502) (not b!4638470) tp_is_empty!29575 (not b!4638429) (not d!1462567) (not d!1462583) (not b!4638456) (not bm!323794) (not b!4638432) (not b!4638374) (not b!4638506))
(check-sat)
