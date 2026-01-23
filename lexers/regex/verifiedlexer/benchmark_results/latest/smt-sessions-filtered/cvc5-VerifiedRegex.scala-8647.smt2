; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461274 () Bool)

(assert start!461274)

(declare-fun b!4611611 () Bool)

(declare-fun e!2876639 () Bool)

(declare-fun e!2876636 () Bool)

(assert (=> b!4611611 (= e!2876639 (not e!2876636))))

(declare-fun res!1930968 () Bool)

(assert (=> b!4611611 (=> res!1930968 e!2876636)))

(declare-datatypes ((K!12638 0))(
  ( (K!12639 (val!18381 Int)) )
))
(declare-datatypes ((V!12884 0))(
  ( (V!12885 (val!18382 Int)) )
))
(declare-datatypes ((tuple2!52026 0))(
  ( (tuple2!52027 (_1!29307 K!12638) (_2!29307 V!12884)) )
))
(declare-datatypes ((List!51387 0))(
  ( (Nil!51263) (Cons!51263 (h!57263 tuple2!52026) (t!358381 List!51387)) )
))
(declare-fun oldBucket!40 () List!51387)

(declare-fun key!4968 () K!12638)

(assert (=> b!4611611 (= res!1930968 (or (not (is-Cons!51263 oldBucket!40)) (not (= (_1!29307 (h!57263 oldBucket!40)) key!4968))))))

(declare-fun e!2876640 () Bool)

(assert (=> b!4611611 e!2876640))

(declare-fun res!1930969 () Bool)

(assert (=> b!4611611 (=> (not res!1930969) (not e!2876640))))

(declare-datatypes ((ListMap!4059 0))(
  ( (ListMap!4060 (toList!4783 List!51387)) )
))
(declare-fun lt!1767428 () ListMap!4059)

(declare-fun lt!1767429 () ListMap!4059)

(declare-fun addToMapMapFromBucket!856 (List!51387 ListMap!4059) ListMap!4059)

(assert (=> b!4611611 (= res!1930969 (= lt!1767428 (addToMapMapFromBucket!856 oldBucket!40 lt!1767429)))))

(declare-datatypes ((tuple2!52028 0))(
  ( (tuple2!52029 (_1!29308 (_ BitVec 64)) (_2!29308 List!51387)) )
))
(declare-datatypes ((List!51388 0))(
  ( (Nil!51264) (Cons!51264 (h!57264 tuple2!52028) (t!358382 List!51388)) )
))
(declare-fun extractMap!1451 (List!51388) ListMap!4059)

(assert (=> b!4611611 (= lt!1767429 (extractMap!1451 Nil!51264))))

(assert (=> b!4611611 true))

(declare-fun b!4611612 () Bool)

(declare-fun res!1930964 () Bool)

(declare-fun e!2876637 () Bool)

(assert (=> b!4611612 (=> (not res!1930964) (not e!2876637))))

(declare-datatypes ((Hashable!5792 0))(
  ( (HashableExt!5791 (__x!31495 Int)) )
))
(declare-fun hashF!1389 () Hashable!5792)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1249 (List!51387 (_ BitVec 64) Hashable!5792) Bool)

(assert (=> b!4611612 (= res!1930964 (allKeysSameHash!1249 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4611614 () Bool)

(declare-fun res!1930961 () Bool)

(assert (=> b!4611614 (=> (not res!1930961) (not e!2876637))))

(declare-fun newBucket!224 () List!51387)

(declare-fun removePairForKey!1018 (List!51387 K!12638) List!51387)

(assert (=> b!4611614 (= res!1930961 (= (removePairForKey!1018 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4611615 () Bool)

(declare-fun res!1930966 () Bool)

(assert (=> b!4611615 (=> (not res!1930966) (not e!2876637))))

(declare-fun noDuplicateKeys!1395 (List!51387) Bool)

(assert (=> b!4611615 (= res!1930966 (noDuplicateKeys!1395 newBucket!224))))

(declare-fun b!4611616 () Bool)

(declare-fun tp!1341241 () Bool)

(declare-fun tp_is_empty!28873 () Bool)

(declare-fun tp_is_empty!28875 () Bool)

(declare-fun e!2876638 () Bool)

(assert (=> b!4611616 (= e!2876638 (and tp_is_empty!28873 tp_is_empty!28875 tp!1341241))))

(declare-fun b!4611617 () Bool)

(assert (=> b!4611617 (= e!2876640 (= lt!1767429 (ListMap!4060 Nil!51263)))))

(declare-fun b!4611618 () Bool)

(declare-fun res!1930970 () Bool)

(assert (=> b!4611618 (=> res!1930970 e!2876636)))

(declare-fun tail!8042 (List!51387) List!51387)

(assert (=> b!4611618 (= res!1930970 (not (= (tail!8042 oldBucket!40) newBucket!224)))))

(declare-fun b!4611619 () Bool)

(assert (=> b!4611619 (= e!2876637 e!2876639)))

(declare-fun res!1930967 () Bool)

(assert (=> b!4611619 (=> (not res!1930967) (not e!2876639))))

(declare-fun contains!14259 (ListMap!4059 K!12638) Bool)

(assert (=> b!4611619 (= res!1930967 (contains!14259 lt!1767428 key!4968))))

(assert (=> b!4611619 (= lt!1767428 (extractMap!1451 (Cons!51264 (tuple2!52029 hash!414 oldBucket!40) Nil!51264)))))

(declare-fun b!4611620 () Bool)

(declare-fun res!1930962 () Bool)

(assert (=> b!4611620 (=> (not res!1930962) (not e!2876639))))

(assert (=> b!4611620 (= res!1930962 (allKeysSameHash!1249 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4611621 () Bool)

(declare-fun res!1930963 () Bool)

(assert (=> b!4611621 (=> (not res!1930963) (not e!2876639))))

(declare-fun hash!3337 (Hashable!5792 K!12638) (_ BitVec 64))

(assert (=> b!4611621 (= res!1930963 (= (hash!3337 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611622 () Bool)

(declare-fun e!2876635 () Bool)

(declare-fun tp!1341240 () Bool)

(assert (=> b!4611622 (= e!2876635 (and tp_is_empty!28873 tp_is_empty!28875 tp!1341240))))

(declare-fun res!1930965 () Bool)

(assert (=> start!461274 (=> (not res!1930965) (not e!2876637))))

(assert (=> start!461274 (= res!1930965 (noDuplicateKeys!1395 oldBucket!40))))

(assert (=> start!461274 e!2876637))

(assert (=> start!461274 true))

(assert (=> start!461274 e!2876635))

(assert (=> start!461274 tp_is_empty!28873))

(assert (=> start!461274 e!2876638))

(declare-fun b!4611613 () Bool)

(declare-fun lambda!188593 () Int)

(declare-fun forall!10711 (List!51388 Int) Bool)

(assert (=> b!4611613 (= e!2876636 (forall!10711 (Cons!51264 (tuple2!52029 hash!414 newBucket!224) Nil!51264) lambda!188593))))

(assert (= (and start!461274 res!1930965) b!4611615))

(assert (= (and b!4611615 res!1930966) b!4611614))

(assert (= (and b!4611614 res!1930961) b!4611612))

(assert (= (and b!4611612 res!1930964) b!4611619))

(assert (= (and b!4611619 res!1930967) b!4611621))

(assert (= (and b!4611621 res!1930963) b!4611620))

(assert (= (and b!4611620 res!1930962) b!4611611))

(assert (= (and b!4611611 res!1930969) b!4611617))

(assert (= (and b!4611611 (not res!1930968)) b!4611618))

(assert (= (and b!4611618 (not res!1930970)) b!4611613))

(assert (= (and start!461274 (is-Cons!51263 oldBucket!40)) b!4611622))

(assert (= (and start!461274 (is-Cons!51263 newBucket!224)) b!4611616))

(declare-fun m!5443031 () Bool)

(assert (=> b!4611619 m!5443031))

(declare-fun m!5443033 () Bool)

(assert (=> b!4611619 m!5443033))

(declare-fun m!5443035 () Bool)

(assert (=> b!4611618 m!5443035))

(declare-fun m!5443037 () Bool)

(assert (=> b!4611621 m!5443037))

(declare-fun m!5443039 () Bool)

(assert (=> b!4611615 m!5443039))

(declare-fun m!5443041 () Bool)

(assert (=> b!4611614 m!5443041))

(declare-fun m!5443043 () Bool)

(assert (=> b!4611612 m!5443043))

(declare-fun m!5443045 () Bool)

(assert (=> start!461274 m!5443045))

(declare-fun m!5443047 () Bool)

(assert (=> b!4611611 m!5443047))

(declare-fun m!5443049 () Bool)

(assert (=> b!4611611 m!5443049))

(declare-fun m!5443051 () Bool)

(assert (=> b!4611620 m!5443051))

(declare-fun m!5443053 () Bool)

(assert (=> b!4611613 m!5443053))

(push 1)

(assert (not start!461274))

(assert tp_is_empty!28875)

(assert (not b!4611620))

(assert (not b!4611619))

(assert tp_is_empty!28873)

(assert (not b!4611611))

(assert (not b!4611621))

(assert (not b!4611614))

(assert (not b!4611618))

(assert (not b!4611612))

(assert (not b!4611615))

(assert (not b!4611613))

(assert (not b!4611622))

(assert (not b!4611616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1453108 () Bool)

(declare-fun lt!1767438 () List!51387)

(declare-fun containsKey!2281 (List!51387 K!12638) Bool)

(assert (=> d!1453108 (not (containsKey!2281 lt!1767438 key!4968))))

(declare-fun e!2876663 () List!51387)

(assert (=> d!1453108 (= lt!1767438 e!2876663)))

(declare-fun c!789840 () Bool)

(assert (=> d!1453108 (= c!789840 (and (is-Cons!51263 oldBucket!40) (= (_1!29307 (h!57263 oldBucket!40)) key!4968)))))

(assert (=> d!1453108 (noDuplicateKeys!1395 oldBucket!40)))

(assert (=> d!1453108 (= (removePairForKey!1018 oldBucket!40 key!4968) lt!1767438)))

(declare-fun b!4611668 () Bool)

(declare-fun e!2876664 () List!51387)

(assert (=> b!4611668 (= e!2876663 e!2876664)))

(declare-fun c!789839 () Bool)

(assert (=> b!4611668 (= c!789839 (is-Cons!51263 oldBucket!40))))

(declare-fun b!4611669 () Bool)

(assert (=> b!4611669 (= e!2876664 (Cons!51263 (h!57263 oldBucket!40) (removePairForKey!1018 (t!358381 oldBucket!40) key!4968)))))

(declare-fun b!4611667 () Bool)

(assert (=> b!4611667 (= e!2876663 (t!358381 oldBucket!40))))

(declare-fun b!4611670 () Bool)

(assert (=> b!4611670 (= e!2876664 Nil!51263)))

(assert (= (and d!1453108 c!789840) b!4611667))

(assert (= (and d!1453108 (not c!789840)) b!4611668))

(assert (= (and b!4611668 c!789839) b!4611669))

(assert (= (and b!4611668 (not c!789839)) b!4611670))

(declare-fun m!5443079 () Bool)

(assert (=> d!1453108 m!5443079))

(assert (=> d!1453108 m!5443045))

(declare-fun m!5443081 () Bool)

(assert (=> b!4611669 m!5443081))

(assert (=> b!4611614 d!1453108))

(declare-fun d!1453112 () Bool)

(declare-fun res!1931009 () Bool)

(declare-fun e!2876673 () Bool)

(assert (=> d!1453112 (=> res!1931009 e!2876673)))

(assert (=> d!1453112 (= res!1931009 (not (is-Cons!51263 oldBucket!40)))))

(assert (=> d!1453112 (= (noDuplicateKeys!1395 oldBucket!40) e!2876673)))

(declare-fun b!4611679 () Bool)

(declare-fun e!2876674 () Bool)

(assert (=> b!4611679 (= e!2876673 e!2876674)))

(declare-fun res!1931010 () Bool)

(assert (=> b!4611679 (=> (not res!1931010) (not e!2876674))))

(assert (=> b!4611679 (= res!1931010 (not (containsKey!2281 (t!358381 oldBucket!40) (_1!29307 (h!57263 oldBucket!40)))))))

(declare-fun b!4611680 () Bool)

(assert (=> b!4611680 (= e!2876674 (noDuplicateKeys!1395 (t!358381 oldBucket!40)))))

(assert (= (and d!1453112 (not res!1931009)) b!4611679))

(assert (= (and b!4611679 res!1931010) b!4611680))

(declare-fun m!5443083 () Bool)

(assert (=> b!4611679 m!5443083))

(declare-fun m!5443085 () Bool)

(assert (=> b!4611680 m!5443085))

(assert (=> start!461274 d!1453112))

(declare-fun d!1453114 () Bool)

(assert (=> d!1453114 true))

(assert (=> d!1453114 true))

(declare-fun lambda!188599 () Int)

(declare-fun forall!10713 (List!51387 Int) Bool)

(assert (=> d!1453114 (= (allKeysSameHash!1249 newBucket!224 hash!414 hashF!1389) (forall!10713 newBucket!224 lambda!188599))))

(declare-fun bs!1016200 () Bool)

(assert (= bs!1016200 d!1453114))

(declare-fun m!5443091 () Bool)

(assert (=> bs!1016200 m!5443091))

(assert (=> b!4611620 d!1453114))

(declare-fun d!1453116 () Bool)

(declare-fun res!1931013 () Bool)

(declare-fun e!2876677 () Bool)

(assert (=> d!1453116 (=> res!1931013 e!2876677)))

(assert (=> d!1453116 (= res!1931013 (not (is-Cons!51263 newBucket!224)))))

(assert (=> d!1453116 (= (noDuplicateKeys!1395 newBucket!224) e!2876677)))

(declare-fun b!4611687 () Bool)

(declare-fun e!2876678 () Bool)

(assert (=> b!4611687 (= e!2876677 e!2876678)))

(declare-fun res!1931014 () Bool)

(assert (=> b!4611687 (=> (not res!1931014) (not e!2876678))))

(assert (=> b!4611687 (= res!1931014 (not (containsKey!2281 (t!358381 newBucket!224) (_1!29307 (h!57263 newBucket!224)))))))

(declare-fun b!4611688 () Bool)

(assert (=> b!4611688 (= e!2876678 (noDuplicateKeys!1395 (t!358381 newBucket!224)))))

(assert (= (and d!1453116 (not res!1931013)) b!4611687))

(assert (= (and b!4611687 res!1931014) b!4611688))

(declare-fun m!5443093 () Bool)

(assert (=> b!4611687 m!5443093))

(declare-fun m!5443095 () Bool)

(assert (=> b!4611688 m!5443095))

(assert (=> b!4611615 d!1453116))

(declare-fun d!1453120 () Bool)

(declare-fun hash!3339 (Hashable!5792 K!12638) (_ BitVec 64))

(assert (=> d!1453120 (= (hash!3337 hashF!1389 key!4968) (hash!3339 hashF!1389 key!4968))))

(declare-fun bs!1016201 () Bool)

(assert (= bs!1016201 d!1453120))

(declare-fun m!5443097 () Bool)

(assert (=> bs!1016201 m!5443097))

(assert (=> b!4611621 d!1453120))

(declare-fun bs!1016204 () Bool)

(declare-fun b!4611742 () Bool)

(assert (= bs!1016204 (and b!4611742 d!1453114)))

(declare-fun lambda!188634 () Int)

(assert (=> bs!1016204 (not (= lambda!188634 lambda!188599))))

(assert (=> b!4611742 true))

(declare-fun bs!1016205 () Bool)

(declare-fun b!4611745 () Bool)

(assert (= bs!1016205 (and b!4611745 d!1453114)))

(declare-fun lambda!188635 () Int)

(assert (=> bs!1016205 (not (= lambda!188635 lambda!188599))))

(declare-fun bs!1016206 () Bool)

(assert (= bs!1016206 (and b!4611745 b!4611742)))

(assert (=> bs!1016206 (= lambda!188635 lambda!188634)))

(assert (=> b!4611745 true))

(declare-fun lambda!188636 () Int)

(assert (=> bs!1016205 (not (= lambda!188636 lambda!188599))))

(declare-fun lt!1767521 () ListMap!4059)

(assert (=> bs!1016206 (= (= lt!1767521 lt!1767429) (= lambda!188636 lambda!188634))))

(assert (=> b!4611745 (= (= lt!1767521 lt!1767429) (= lambda!188636 lambda!188635))))

(assert (=> b!4611745 true))

(declare-fun bs!1016207 () Bool)

(declare-fun d!1453122 () Bool)

(assert (= bs!1016207 (and d!1453122 d!1453114)))

(declare-fun lambda!188637 () Int)

(assert (=> bs!1016207 (not (= lambda!188637 lambda!188599))))

(declare-fun bs!1016208 () Bool)

(assert (= bs!1016208 (and d!1453122 b!4611742)))

(declare-fun lt!1767516 () ListMap!4059)

(assert (=> bs!1016208 (= (= lt!1767516 lt!1767429) (= lambda!188637 lambda!188634))))

(declare-fun bs!1016209 () Bool)

(assert (= bs!1016209 (and d!1453122 b!4611745)))

(assert (=> bs!1016209 (= (= lt!1767516 lt!1767429) (= lambda!188637 lambda!188635))))

(assert (=> bs!1016209 (= (= lt!1767516 lt!1767521) (= lambda!188637 lambda!188636))))

(assert (=> d!1453122 true))

(declare-fun c!789855 () Bool)

(declare-fun call!321513 () Bool)

(declare-fun bm!321508 () Bool)

(assert (=> bm!321508 (= call!321513 (forall!10713 (toList!4783 lt!1767429) (ite c!789855 lambda!188634 lambda!188635)))))

(declare-fun e!2876713 () ListMap!4059)

(assert (=> b!4611742 (= e!2876713 lt!1767429)))

(declare-datatypes ((Unit!109450 0))(
  ( (Unit!109451) )
))
(declare-fun lt!1767510 () Unit!109450)

(declare-fun call!321515 () Unit!109450)

(assert (=> b!4611742 (= lt!1767510 call!321515)))

(declare-fun call!321514 () Bool)

(assert (=> b!4611742 call!321514))

(declare-fun lt!1767513 () Unit!109450)

(assert (=> b!4611742 (= lt!1767513 lt!1767510)))

(assert (=> b!4611742 call!321513))

(declare-fun lt!1767524 () Unit!109450)

(declare-fun Unit!109452 () Unit!109450)

(assert (=> b!4611742 (= lt!1767524 Unit!109452)))

(declare-fun b!4611743 () Bool)

(declare-fun res!1931036 () Bool)

(declare-fun e!2876712 () Bool)

(assert (=> b!4611743 (=> (not res!1931036) (not e!2876712))))

(assert (=> b!4611743 (= res!1931036 (forall!10713 (toList!4783 lt!1767429) lambda!188637))))

(declare-fun b!4611744 () Bool)

(declare-fun e!2876714 () Bool)

(assert (=> b!4611744 (= e!2876714 (forall!10713 (toList!4783 lt!1767429) lambda!188636))))

(assert (=> b!4611745 (= e!2876713 lt!1767521)))

(declare-fun lt!1767527 () ListMap!4059)

(declare-fun +!1790 (ListMap!4059 tuple2!52026) ListMap!4059)

(assert (=> b!4611745 (= lt!1767527 (+!1790 lt!1767429 (h!57263 oldBucket!40)))))

(assert (=> b!4611745 (= lt!1767521 (addToMapMapFromBucket!856 (t!358381 oldBucket!40) (+!1790 lt!1767429 (h!57263 oldBucket!40))))))

(declare-fun lt!1767526 () Unit!109450)

(assert (=> b!4611745 (= lt!1767526 call!321515)))

(assert (=> b!4611745 call!321513))

(declare-fun lt!1767511 () Unit!109450)

(assert (=> b!4611745 (= lt!1767511 lt!1767526)))

(assert (=> b!4611745 (forall!10713 (toList!4783 lt!1767527) lambda!188636)))

(declare-fun lt!1767512 () Unit!109450)

(declare-fun Unit!109453 () Unit!109450)

(assert (=> b!4611745 (= lt!1767512 Unit!109453)))

(assert (=> b!4611745 (forall!10713 (t!358381 oldBucket!40) lambda!188636)))

(declare-fun lt!1767509 () Unit!109450)

(declare-fun Unit!109454 () Unit!109450)

(assert (=> b!4611745 (= lt!1767509 Unit!109454)))

(declare-fun lt!1767528 () Unit!109450)

(declare-fun Unit!109455 () Unit!109450)

(assert (=> b!4611745 (= lt!1767528 Unit!109455)))

(declare-fun lt!1767519 () Unit!109450)

(declare-fun forallContained!2949 (List!51387 Int tuple2!52026) Unit!109450)

(assert (=> b!4611745 (= lt!1767519 (forallContained!2949 (toList!4783 lt!1767527) lambda!188636 (h!57263 oldBucket!40)))))

(assert (=> b!4611745 (contains!14259 lt!1767527 (_1!29307 (h!57263 oldBucket!40)))))

(declare-fun lt!1767517 () Unit!109450)

(declare-fun Unit!109456 () Unit!109450)

(assert (=> b!4611745 (= lt!1767517 Unit!109456)))

(assert (=> b!4611745 (contains!14259 lt!1767521 (_1!29307 (h!57263 oldBucket!40)))))

(declare-fun lt!1767522 () Unit!109450)

(declare-fun Unit!109457 () Unit!109450)

(assert (=> b!4611745 (= lt!1767522 Unit!109457)))

(assert (=> b!4611745 (forall!10713 oldBucket!40 lambda!188636)))

(declare-fun lt!1767525 () Unit!109450)

(declare-fun Unit!109458 () Unit!109450)

(assert (=> b!4611745 (= lt!1767525 Unit!109458)))

(assert (=> b!4611745 call!321514))

(declare-fun lt!1767514 () Unit!109450)

(declare-fun Unit!109459 () Unit!109450)

(assert (=> b!4611745 (= lt!1767514 Unit!109459)))

(declare-fun lt!1767520 () Unit!109450)

(declare-fun Unit!109460 () Unit!109450)

(assert (=> b!4611745 (= lt!1767520 Unit!109460)))

(declare-fun lt!1767523 () Unit!109450)

(declare-fun addForallContainsKeyThenBeforeAdding!456 (ListMap!4059 ListMap!4059 K!12638 V!12884) Unit!109450)

(assert (=> b!4611745 (= lt!1767523 (addForallContainsKeyThenBeforeAdding!456 lt!1767429 lt!1767521 (_1!29307 (h!57263 oldBucket!40)) (_2!29307 (h!57263 oldBucket!40))))))

(assert (=> b!4611745 (forall!10713 (toList!4783 lt!1767429) lambda!188636)))

(declare-fun lt!1767518 () Unit!109450)

(assert (=> b!4611745 (= lt!1767518 lt!1767523)))

(assert (=> b!4611745 (forall!10713 (toList!4783 lt!1767429) lambda!188636)))

(declare-fun lt!1767508 () Unit!109450)

(declare-fun Unit!109461 () Unit!109450)

(assert (=> b!4611745 (= lt!1767508 Unit!109461)))

(declare-fun res!1931037 () Bool)

(assert (=> b!4611745 (= res!1931037 (forall!10713 oldBucket!40 lambda!188636))))

(assert (=> b!4611745 (=> (not res!1931037) (not e!2876714))))

(assert (=> b!4611745 e!2876714))

(declare-fun lt!1767515 () Unit!109450)

(declare-fun Unit!109462 () Unit!109450)

(assert (=> b!4611745 (= lt!1767515 Unit!109462)))

(declare-fun bm!321509 () Bool)

(assert (=> bm!321509 (= call!321514 (forall!10713 (ite c!789855 (toList!4783 lt!1767429) (toList!4783 lt!1767527)) (ite c!789855 lambda!188634 lambda!188636)))))

(assert (=> d!1453122 e!2876712))

(declare-fun res!1931038 () Bool)

(assert (=> d!1453122 (=> (not res!1931038) (not e!2876712))))

(assert (=> d!1453122 (= res!1931038 (forall!10713 oldBucket!40 lambda!188637))))

(assert (=> d!1453122 (= lt!1767516 e!2876713)))

(assert (=> d!1453122 (= c!789855 (is-Nil!51263 oldBucket!40))))

(assert (=> d!1453122 (noDuplicateKeys!1395 oldBucket!40)))

(assert (=> d!1453122 (= (addToMapMapFromBucket!856 oldBucket!40 lt!1767429) lt!1767516)))

(declare-fun b!4611746 () Bool)

(declare-fun invariantList!1154 (List!51387) Bool)

(assert (=> b!4611746 (= e!2876712 (invariantList!1154 (toList!4783 lt!1767516)))))

(declare-fun bm!321510 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!456 (ListMap!4059) Unit!109450)

(assert (=> bm!321510 (= call!321515 (lemmaContainsAllItsOwnKeys!456 lt!1767429))))

(assert (= (and d!1453122 c!789855) b!4611742))

(assert (= (and d!1453122 (not c!789855)) b!4611745))

(assert (= (and b!4611745 res!1931037) b!4611744))

(assert (= (or b!4611742 b!4611745) bm!321510))

(assert (= (or b!4611742 b!4611745) bm!321508))

(assert (= (or b!4611742 b!4611745) bm!321509))

(assert (= (and d!1453122 res!1931038) b!4611743))

(assert (= (and b!4611743 res!1931036) b!4611746))

(declare-fun m!5443133 () Bool)

(assert (=> b!4611744 m!5443133))

(declare-fun m!5443135 () Bool)

(assert (=> bm!321509 m!5443135))

(assert (=> b!4611745 m!5443133))

(declare-fun m!5443137 () Bool)

(assert (=> b!4611745 m!5443137))

(declare-fun m!5443139 () Bool)

(assert (=> b!4611745 m!5443139))

(declare-fun m!5443141 () Bool)

(assert (=> b!4611745 m!5443141))

(assert (=> b!4611745 m!5443139))

(declare-fun m!5443143 () Bool)

(assert (=> b!4611745 m!5443143))

(declare-fun m!5443145 () Bool)

(assert (=> b!4611745 m!5443145))

(declare-fun m!5443147 () Bool)

(assert (=> b!4611745 m!5443147))

(assert (=> b!4611745 m!5443133))

(declare-fun m!5443149 () Bool)

(assert (=> b!4611745 m!5443149))

(declare-fun m!5443151 () Bool)

(assert (=> b!4611745 m!5443151))

(declare-fun m!5443153 () Bool)

(assert (=> b!4611745 m!5443153))

(assert (=> b!4611745 m!5443141))

(declare-fun m!5443155 () Bool)

(assert (=> bm!321510 m!5443155))

(declare-fun m!5443157 () Bool)

(assert (=> b!4611743 m!5443157))

(declare-fun m!5443159 () Bool)

(assert (=> d!1453122 m!5443159))

(assert (=> d!1453122 m!5443045))

(declare-fun m!5443161 () Bool)

(assert (=> bm!321508 m!5443161))

(declare-fun m!5443163 () Bool)

(assert (=> b!4611746 m!5443163))

(assert (=> b!4611611 d!1453122))

(declare-fun bs!1016210 () Bool)

(declare-fun d!1453134 () Bool)

(assert (= bs!1016210 (and d!1453134 b!4611613)))

(declare-fun lambda!188640 () Int)

(assert (=> bs!1016210 (= lambda!188640 lambda!188593)))

(declare-fun lt!1767531 () ListMap!4059)

(assert (=> d!1453134 (invariantList!1154 (toList!4783 lt!1767531))))

(declare-fun e!2876717 () ListMap!4059)

(assert (=> d!1453134 (= lt!1767531 e!2876717)))

(declare-fun c!789858 () Bool)

(assert (=> d!1453134 (= c!789858 (is-Cons!51264 Nil!51264))))

(assert (=> d!1453134 (forall!10711 Nil!51264 lambda!188640)))

(assert (=> d!1453134 (= (extractMap!1451 Nil!51264) lt!1767531)))

(declare-fun b!4611753 () Bool)

(assert (=> b!4611753 (= e!2876717 (addToMapMapFromBucket!856 (_2!29308 (h!57264 Nil!51264)) (extractMap!1451 (t!358382 Nil!51264))))))

(declare-fun b!4611754 () Bool)

(assert (=> b!4611754 (= e!2876717 (ListMap!4060 Nil!51263))))

(assert (= (and d!1453134 c!789858) b!4611753))

(assert (= (and d!1453134 (not c!789858)) b!4611754))

(declare-fun m!5443165 () Bool)

(assert (=> d!1453134 m!5443165))

(declare-fun m!5443167 () Bool)

(assert (=> d!1453134 m!5443167))

(declare-fun m!5443169 () Bool)

(assert (=> b!4611753 m!5443169))

(assert (=> b!4611753 m!5443169))

(declare-fun m!5443171 () Bool)

(assert (=> b!4611753 m!5443171))

(assert (=> b!4611611 d!1453134))

(declare-fun bs!1016211 () Bool)

(declare-fun d!1453136 () Bool)

(assert (= bs!1016211 (and d!1453136 b!4611745)))

(declare-fun lambda!188641 () Int)

(assert (=> bs!1016211 (not (= lambda!188641 lambda!188635))))

(declare-fun bs!1016212 () Bool)

(assert (= bs!1016212 (and d!1453136 b!4611742)))

(assert (=> bs!1016212 (not (= lambda!188641 lambda!188634))))

(declare-fun bs!1016213 () Bool)

(assert (= bs!1016213 (and d!1453136 d!1453122)))

(assert (=> bs!1016213 (not (= lambda!188641 lambda!188637))))

(declare-fun bs!1016214 () Bool)

(assert (= bs!1016214 (and d!1453136 d!1453114)))

(assert (=> bs!1016214 (= lambda!188641 lambda!188599)))

(assert (=> bs!1016211 (not (= lambda!188641 lambda!188636))))

(assert (=> d!1453136 true))

(assert (=> d!1453136 true))

(assert (=> d!1453136 (= (allKeysSameHash!1249 oldBucket!40 hash!414 hashF!1389) (forall!10713 oldBucket!40 lambda!188641))))

(declare-fun bs!1016215 () Bool)

(assert (= bs!1016215 d!1453136))

(declare-fun m!5443173 () Bool)

(assert (=> bs!1016215 m!5443173))

(assert (=> b!4611612 d!1453136))

(declare-fun d!1453138 () Bool)

(assert (=> d!1453138 (= (tail!8042 oldBucket!40) (t!358381 oldBucket!40))))

(assert (=> b!4611618 d!1453138))

(declare-fun d!1453140 () Bool)

(declare-fun res!1931043 () Bool)

(declare-fun e!2876722 () Bool)

(assert (=> d!1453140 (=> res!1931043 e!2876722)))

(assert (=> d!1453140 (= res!1931043 (is-Nil!51264 (Cons!51264 (tuple2!52029 hash!414 newBucket!224) Nil!51264)))))

(assert (=> d!1453140 (= (forall!10711 (Cons!51264 (tuple2!52029 hash!414 newBucket!224) Nil!51264) lambda!188593) e!2876722)))

(declare-fun b!4611759 () Bool)

(declare-fun e!2876723 () Bool)

(assert (=> b!4611759 (= e!2876722 e!2876723)))

(declare-fun res!1931044 () Bool)

(assert (=> b!4611759 (=> (not res!1931044) (not e!2876723))))

(declare-fun dynLambda!21448 (Int tuple2!52028) Bool)

(assert (=> b!4611759 (= res!1931044 (dynLambda!21448 lambda!188593 (h!57264 (Cons!51264 (tuple2!52029 hash!414 newBucket!224) Nil!51264))))))

(declare-fun b!4611760 () Bool)

(assert (=> b!4611760 (= e!2876723 (forall!10711 (t!358382 (Cons!51264 (tuple2!52029 hash!414 newBucket!224) Nil!51264)) lambda!188593))))

(assert (= (and d!1453140 (not res!1931043)) b!4611759))

(assert (= (and b!4611759 res!1931044) b!4611760))

(declare-fun b_lambda!170479 () Bool)

(assert (=> (not b_lambda!170479) (not b!4611759)))

(declare-fun m!5443175 () Bool)

(assert (=> b!4611759 m!5443175))

(declare-fun m!5443177 () Bool)

(assert (=> b!4611760 m!5443177))

(assert (=> b!4611613 d!1453140))

(declare-fun b!4611780 () Bool)

(declare-fun e!2876738 () Unit!109450)

(declare-fun e!2876739 () Unit!109450)

(assert (=> b!4611780 (= e!2876738 e!2876739)))

(declare-fun c!789865 () Bool)

(declare-fun call!321518 () Bool)

(assert (=> b!4611780 (= c!789865 call!321518)))

(declare-fun b!4611781 () Bool)

(declare-datatypes ((List!51391 0))(
  ( (Nil!51267) (Cons!51267 (h!57269 K!12638) (t!358385 List!51391)) )
))
(declare-fun e!2876737 () List!51391)

(declare-fun keys!17994 (ListMap!4059) List!51391)

(assert (=> b!4611781 (= e!2876737 (keys!17994 lt!1767428))))

(declare-fun b!4611782 () Bool)

(declare-fun e!2876736 () Bool)

(declare-fun contains!14261 (List!51391 K!12638) Bool)

(assert (=> b!4611782 (= e!2876736 (contains!14261 (keys!17994 lt!1767428) key!4968))))

(declare-fun bm!321513 () Bool)

(assert (=> bm!321513 (= call!321518 (contains!14261 e!2876737 key!4968))))

(declare-fun c!789866 () Bool)

(declare-fun c!789867 () Bool)

(assert (=> bm!321513 (= c!789866 c!789867)))

(declare-fun b!4611783 () Bool)

(declare-fun getKeysList!605 (List!51387) List!51391)

(assert (=> b!4611783 (= e!2876737 (getKeysList!605 (toList!4783 lt!1767428)))))

(declare-fun b!4611784 () Bool)

(declare-fun Unit!109463 () Unit!109450)

(assert (=> b!4611784 (= e!2876739 Unit!109463)))

(declare-fun b!4611785 () Bool)

(declare-fun lt!1767552 () Unit!109450)

(assert (=> b!4611785 (= e!2876738 lt!1767552)))

(declare-fun lt!1767550 () Unit!109450)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1273 (List!51387 K!12638) Unit!109450)

(assert (=> b!4611785 (= lt!1767550 (lemmaContainsKeyImpliesGetValueByKeyDefined!1273 (toList!4783 lt!1767428) key!4968))))

(declare-datatypes ((Option!11457 0))(
  ( (None!11456) (Some!11456 (v!45522 V!12884)) )
))
(declare-fun isDefined!8722 (Option!11457) Bool)

(declare-fun getValueByKey!1371 (List!51387 K!12638) Option!11457)

(assert (=> b!4611785 (isDefined!8722 (getValueByKey!1371 (toList!4783 lt!1767428) key!4968))))

(declare-fun lt!1767555 () Unit!109450)

(assert (=> b!4611785 (= lt!1767555 lt!1767550)))

(declare-fun lemmaInListThenGetKeysListContains!600 (List!51387 K!12638) Unit!109450)

(assert (=> b!4611785 (= lt!1767552 (lemmaInListThenGetKeysListContains!600 (toList!4783 lt!1767428) key!4968))))

(assert (=> b!4611785 call!321518))

(declare-fun b!4611779 () Bool)

(declare-fun e!2876741 () Bool)

(assert (=> b!4611779 (= e!2876741 e!2876736)))

(declare-fun res!1931051 () Bool)

(assert (=> b!4611779 (=> (not res!1931051) (not e!2876736))))

(assert (=> b!4611779 (= res!1931051 (isDefined!8722 (getValueByKey!1371 (toList!4783 lt!1767428) key!4968)))))

(declare-fun d!1453142 () Bool)

(assert (=> d!1453142 e!2876741))

(declare-fun res!1931052 () Bool)

(assert (=> d!1453142 (=> res!1931052 e!2876741)))

(declare-fun e!2876740 () Bool)

(assert (=> d!1453142 (= res!1931052 e!2876740)))

(declare-fun res!1931053 () Bool)

(assert (=> d!1453142 (=> (not res!1931053) (not e!2876740))))

(declare-fun lt!1767553 () Bool)

(assert (=> d!1453142 (= res!1931053 (not lt!1767553))))

(declare-fun lt!1767551 () Bool)

(assert (=> d!1453142 (= lt!1767553 lt!1767551)))

(declare-fun lt!1767549 () Unit!109450)

(assert (=> d!1453142 (= lt!1767549 e!2876738)))

(assert (=> d!1453142 (= c!789867 lt!1767551)))

(declare-fun containsKey!2282 (List!51387 K!12638) Bool)

(assert (=> d!1453142 (= lt!1767551 (containsKey!2282 (toList!4783 lt!1767428) key!4968))))

(assert (=> d!1453142 (= (contains!14259 lt!1767428 key!4968) lt!1767553)))

(declare-fun b!4611786 () Bool)

(assert (=> b!4611786 (= e!2876740 (not (contains!14261 (keys!17994 lt!1767428) key!4968)))))

(declare-fun b!4611787 () Bool)

(assert (=> b!4611787 false))

(declare-fun lt!1767548 () Unit!109450)

(declare-fun lt!1767554 () Unit!109450)

(assert (=> b!4611787 (= lt!1767548 lt!1767554)))

(assert (=> b!4611787 (containsKey!2282 (toList!4783 lt!1767428) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!604 (List!51387 K!12638) Unit!109450)

(assert (=> b!4611787 (= lt!1767554 (lemmaInGetKeysListThenContainsKey!604 (toList!4783 lt!1767428) key!4968))))

(declare-fun Unit!109464 () Unit!109450)

(assert (=> b!4611787 (= e!2876739 Unit!109464)))

(assert (= (and d!1453142 c!789867) b!4611785))

(assert (= (and d!1453142 (not c!789867)) b!4611780))

(assert (= (and b!4611780 c!789865) b!4611787))

(assert (= (and b!4611780 (not c!789865)) b!4611784))

(assert (= (or b!4611785 b!4611780) bm!321513))

(assert (= (and bm!321513 c!789866) b!4611783))

(assert (= (and bm!321513 (not c!789866)) b!4611781))

(assert (= (and d!1453142 res!1931053) b!4611786))

(assert (= (and d!1453142 (not res!1931052)) b!4611779))

(assert (= (and b!4611779 res!1931051) b!4611782))

(declare-fun m!5443179 () Bool)

(assert (=> b!4611783 m!5443179))

(declare-fun m!5443181 () Bool)

(assert (=> b!4611787 m!5443181))

(declare-fun m!5443183 () Bool)

(assert (=> b!4611787 m!5443183))

(declare-fun m!5443185 () Bool)

(assert (=> bm!321513 m!5443185))

(declare-fun m!5443187 () Bool)

(assert (=> b!4611785 m!5443187))

(declare-fun m!5443189 () Bool)

(assert (=> b!4611785 m!5443189))

(assert (=> b!4611785 m!5443189))

(declare-fun m!5443191 () Bool)

(assert (=> b!4611785 m!5443191))

(declare-fun m!5443193 () Bool)

(assert (=> b!4611785 m!5443193))

(assert (=> b!4611779 m!5443189))

(assert (=> b!4611779 m!5443189))

(assert (=> b!4611779 m!5443191))

(declare-fun m!5443195 () Bool)

(assert (=> b!4611782 m!5443195))

(assert (=> b!4611782 m!5443195))

(declare-fun m!5443197 () Bool)

(assert (=> b!4611782 m!5443197))

(assert (=> d!1453142 m!5443181))

(assert (=> b!4611781 m!5443195))

(assert (=> b!4611786 m!5443195))

(assert (=> b!4611786 m!5443195))

(assert (=> b!4611786 m!5443197))

(assert (=> b!4611619 d!1453142))

(declare-fun bs!1016216 () Bool)

(declare-fun d!1453144 () Bool)

(assert (= bs!1016216 (and d!1453144 b!4611613)))

(declare-fun lambda!188642 () Int)

(assert (=> bs!1016216 (= lambda!188642 lambda!188593)))

(declare-fun bs!1016217 () Bool)

(assert (= bs!1016217 (and d!1453144 d!1453134)))

(assert (=> bs!1016217 (= lambda!188642 lambda!188640)))

(declare-fun lt!1767556 () ListMap!4059)

(assert (=> d!1453144 (invariantList!1154 (toList!4783 lt!1767556))))

(declare-fun e!2876742 () ListMap!4059)

(assert (=> d!1453144 (= lt!1767556 e!2876742)))

(declare-fun c!789868 () Bool)

(assert (=> d!1453144 (= c!789868 (is-Cons!51264 (Cons!51264 (tuple2!52029 hash!414 oldBucket!40) Nil!51264)))))

(assert (=> d!1453144 (forall!10711 (Cons!51264 (tuple2!52029 hash!414 oldBucket!40) Nil!51264) lambda!188642)))

(assert (=> d!1453144 (= (extractMap!1451 (Cons!51264 (tuple2!52029 hash!414 oldBucket!40) Nil!51264)) lt!1767556)))

(declare-fun b!4611788 () Bool)

(assert (=> b!4611788 (= e!2876742 (addToMapMapFromBucket!856 (_2!29308 (h!57264 (Cons!51264 (tuple2!52029 hash!414 oldBucket!40) Nil!51264))) (extractMap!1451 (t!358382 (Cons!51264 (tuple2!52029 hash!414 oldBucket!40) Nil!51264)))))))

(declare-fun b!4611789 () Bool)

(assert (=> b!4611789 (= e!2876742 (ListMap!4060 Nil!51263))))

(assert (= (and d!1453144 c!789868) b!4611788))

(assert (= (and d!1453144 (not c!789868)) b!4611789))

(declare-fun m!5443199 () Bool)

(assert (=> d!1453144 m!5443199))

(declare-fun m!5443201 () Bool)

(assert (=> d!1453144 m!5443201))

(declare-fun m!5443203 () Bool)

(assert (=> b!4611788 m!5443203))

(assert (=> b!4611788 m!5443203))

(declare-fun m!5443205 () Bool)

(assert (=> b!4611788 m!5443205))

(assert (=> b!4611619 d!1453144))

(declare-fun e!2876745 () Bool)

(declare-fun tp!1341250 () Bool)

(declare-fun b!4611794 () Bool)

(assert (=> b!4611794 (= e!2876745 (and tp_is_empty!28873 tp_is_empty!28875 tp!1341250))))

(assert (=> b!4611616 (= tp!1341241 e!2876745)))

(assert (= (and b!4611616 (is-Cons!51263 (t!358381 newBucket!224))) b!4611794))

(declare-fun e!2876746 () Bool)

(declare-fun tp!1341251 () Bool)

(declare-fun b!4611795 () Bool)

(assert (=> b!4611795 (= e!2876746 (and tp_is_empty!28873 tp_is_empty!28875 tp!1341251))))

(assert (=> b!4611622 (= tp!1341240 e!2876746)))

(assert (= (and b!4611622 (is-Cons!51263 (t!358381 oldBucket!40))) b!4611795))

(declare-fun b_lambda!170481 () Bool)

(assert (= b_lambda!170479 (or b!4611613 b_lambda!170481)))

(declare-fun bs!1016218 () Bool)

(declare-fun d!1453146 () Bool)

(assert (= bs!1016218 (and d!1453146 b!4611613)))

(assert (=> bs!1016218 (= (dynLambda!21448 lambda!188593 (h!57264 (Cons!51264 (tuple2!52029 hash!414 newBucket!224) Nil!51264))) (noDuplicateKeys!1395 (_2!29308 (h!57264 (Cons!51264 (tuple2!52029 hash!414 newBucket!224) Nil!51264)))))))

(declare-fun m!5443207 () Bool)

(assert (=> bs!1016218 m!5443207))

(assert (=> b!4611759 d!1453146))

(push 1)

(assert (not b!4611795))

(assert (not b!4611680))

(assert (not d!1453120))

(assert (not b!4611787))

(assert (not bm!321513))

(assert (not d!1453144))

(assert (not b!4611744))

(assert (not bm!321509))

(assert (not b!4611746))

(assert (not b!4611743))

(assert (not d!1453142))

(assert (not b!4611783))

(assert (not bm!321510))

(assert (not b!4611745))

(assert (not bs!1016218))

(assert (not b!4611779))

(assert (not b!4611688))

(assert (not b!4611687))

(assert (not b_lambda!170481))

(assert (not b!4611786))

(assert (not b!4611669))

(assert tp_is_empty!28875)

(assert (not b!4611785))

(assert (not b!4611782))

(assert (not d!1453108))

(assert (not b!4611679))

(assert tp_is_empty!28873)

(assert (not b!4611753))

(assert (not b!4611794))

(assert (not b!4611781))

(assert (not b!4611760))

(assert (not d!1453122))

(assert (not d!1453136))

(assert (not bm!321508))

(assert (not d!1453114))

(assert (not d!1453134))

(assert (not b!4611788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

