; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!469656 () Bool)

(assert start!469656)

(declare-fun tp_is_empty!29925 () Bool)

(declare-fun e!2909007 () Bool)

(declare-fun tp_is_empty!29927 () Bool)

(declare-fun tp!1343498 () Bool)

(declare-fun b!4661850 () Bool)

(assert (=> b!4661850 (= e!2909007 (and tp_is_empty!29925 tp_is_empty!29927 tp!1343498))))

(declare-fun b!4661851 () Bool)

(declare-fun e!2909011 () Bool)

(declare-fun e!2909009 () Bool)

(assert (=> b!4661851 (= e!2909011 e!2909009)))

(declare-fun res!1961144 () Bool)

(assert (=> b!4661851 (=> (not res!1961144) (not e!2909009))))

(declare-datatypes ((K!13295 0))(
  ( (K!13296 (val!18907 Int)) )
))
(declare-datatypes ((V!13541 0))(
  ( (V!13542 (val!18908 Int)) )
))
(declare-datatypes ((tuple2!53078 0))(
  ( (tuple2!53079 (_1!29833 K!13295) (_2!29833 V!13541)) )
))
(declare-datatypes ((List!52070 0))(
  ( (Nil!51946) (Cons!51946 (h!58104 tuple2!53078) (t!359186 List!52070)) )
))
(declare-datatypes ((ListMap!4585 0))(
  ( (ListMap!4586 (toList!5245 List!52070)) )
))
(declare-fun lt!1823285 () ListMap!4585)

(declare-fun key!4968 () K!13295)

(declare-fun contains!15113 (ListMap!4585 K!13295) Bool)

(assert (=> b!4661851 (= res!1961144 (contains!15113 lt!1823285 key!4968))))

(declare-datatypes ((tuple2!53080 0))(
  ( (tuple2!53081 (_1!29834 (_ BitVec 64)) (_2!29834 List!52070)) )
))
(declare-datatypes ((List!52071 0))(
  ( (Nil!51947) (Cons!51947 (h!58105 tuple2!53080) (t!359187 List!52071)) )
))
(declare-fun lt!1823291 () List!52071)

(declare-fun extractMap!1714 (List!52071) ListMap!4585)

(assert (=> b!4661851 (= lt!1823285 (extractMap!1714 lt!1823291))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!52070)

(assert (=> b!4661851 (= lt!1823291 (Cons!51947 (tuple2!53081 hash!414 oldBucket!40) Nil!51947))))

(declare-fun b!4661852 () Bool)

(declare-fun res!1961153 () Bool)

(assert (=> b!4661852 (=> (not res!1961153) (not e!2909011))))

(declare-fun newBucket!224 () List!52070)

(declare-fun removePairForKey!1281 (List!52070 K!13295) List!52070)

(assert (=> b!4661852 (= res!1961153 (= (removePairForKey!1281 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4661853 () Bool)

(declare-fun e!2909014 () Bool)

(declare-fun e!2909012 () Bool)

(assert (=> b!4661853 (= e!2909014 e!2909012)))

(declare-fun res!1961152 () Bool)

(assert (=> b!4661853 (=> res!1961152 e!2909012)))

(declare-fun lt!1823297 () List!52070)

(declare-fun noDuplicateKeys!1658 (List!52070) Bool)

(assert (=> b!4661853 (= res!1961152 (not (noDuplicateKeys!1658 lt!1823297)))))

(declare-fun lt!1823294 () List!52071)

(assert (=> b!4661853 (contains!15113 (extractMap!1714 lt!1823294) key!4968)))

(declare-datatypes ((Hashable!6055 0))(
  ( (HashableExt!6054 (__x!31758 Int)) )
))
(declare-fun hashF!1389 () Hashable!6055)

(declare-datatypes ((Unit!119320 0))(
  ( (Unit!119321) )
))
(declare-fun lt!1823289 () Unit!119320)

(declare-datatypes ((ListLongMap!3799 0))(
  ( (ListLongMap!3800 (toList!5246 List!52071)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!392 (ListLongMap!3799 K!13295 Hashable!6055) Unit!119320)

(assert (=> b!4661853 (= lt!1823289 (lemmaListContainsThenExtractedMapContains!392 (ListLongMap!3800 lt!1823294) key!4968 hashF!1389))))

(assert (=> b!4661853 (= lt!1823294 (Cons!51947 (tuple2!53081 hash!414 (t!359186 oldBucket!40)) Nil!51947))))

(declare-fun b!4661854 () Bool)

(declare-fun res!1961148 () Bool)

(declare-fun e!2909015 () Bool)

(assert (=> b!4661854 (=> (not res!1961148) (not e!2909015))))

(declare-fun allKeysSameHash!1512 (List!52070 (_ BitVec 64) Hashable!6055) Bool)

(assert (=> b!4661854 (= res!1961148 (allKeysSameHash!1512 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4661855 () Bool)

(declare-fun e!2909008 () Bool)

(assert (=> b!4661855 (= e!2909008 e!2909014)))

(declare-fun res!1961150 () Bool)

(assert (=> b!4661855 (=> res!1961150 e!2909014)))

(declare-fun lt!1823292 () List!52070)

(assert (=> b!4661855 (= res!1961150 (not (= (removePairForKey!1281 lt!1823297 key!4968) lt!1823292)))))

(declare-fun tail!8261 (List!52070) List!52070)

(assert (=> b!4661855 (= lt!1823292 (tail!8261 newBucket!224))))

(assert (=> b!4661855 (= lt!1823297 (tail!8261 oldBucket!40))))

(declare-fun b!4661856 () Bool)

(declare-fun res!1961154 () Bool)

(assert (=> b!4661856 (=> res!1961154 e!2909014)))

(assert (=> b!4661856 (= res!1961154 (not (= (removePairForKey!1281 (t!359186 oldBucket!40) key!4968) lt!1823292)))))

(declare-fun b!4661857 () Bool)

(declare-fun e!2909010 () Bool)

(declare-fun lt!1823295 () ListMap!4585)

(assert (=> b!4661857 (= e!2909010 (= lt!1823295 (ListMap!4586 Nil!51946)))))

(declare-fun b!4661858 () Bool)

(declare-fun res!1961147 () Bool)

(assert (=> b!4661858 (=> (not res!1961147) (not e!2909011))))

(assert (=> b!4661858 (= res!1961147 (allKeysSameHash!1512 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4661859 () Bool)

(assert (=> b!4661859 (= e!2909009 e!2909015)))

(declare-fun res!1961145 () Bool)

(assert (=> b!4661859 (=> (not res!1961145) (not e!2909015))))

(declare-fun lt!1823290 () (_ BitVec 64))

(assert (=> b!4661859 (= res!1961145 (= lt!1823290 hash!414))))

(declare-fun hash!3809 (Hashable!6055 K!13295) (_ BitVec 64))

(assert (=> b!4661859 (= lt!1823290 (hash!3809 hashF!1389 key!4968))))

(declare-fun b!4661860 () Bool)

(declare-fun e!2909013 () Bool)

(assert (=> b!4661860 (= e!2909013 e!2909008)))

(declare-fun res!1961143 () Bool)

(assert (=> b!4661860 (=> res!1961143 e!2909008)))

(declare-fun containsKey!2764 (List!52070 K!13295) Bool)

(assert (=> b!4661860 (= res!1961143 (not (containsKey!2764 (t!359186 oldBucket!40) key!4968)))))

(assert (=> b!4661860 (containsKey!2764 oldBucket!40 key!4968)))

(declare-fun lt!1823293 () Unit!119320)

(declare-fun lemmaGetPairDefinedThenContainsKey!136 (List!52070 K!13295 Hashable!6055) Unit!119320)

(assert (=> b!4661860 (= lt!1823293 (lemmaGetPairDefinedThenContainsKey!136 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1823286 () List!52070)

(declare-datatypes ((Option!11862 0))(
  ( (None!11861) (Some!11861 (v!46171 tuple2!53078)) )
))
(declare-fun isDefined!9127 (Option!11862) Bool)

(declare-fun getPair!386 (List!52070 K!13295) Option!11862)

(assert (=> b!4661860 (isDefined!9127 (getPair!386 lt!1823286 key!4968))))

(declare-fun lt!1823284 () tuple2!53080)

(declare-fun lt!1823299 () Unit!119320)

(declare-fun lambda!200510 () Int)

(declare-fun forallContained!3262 (List!52071 Int tuple2!53080) Unit!119320)

(assert (=> b!4661860 (= lt!1823299 (forallContained!3262 lt!1823291 lambda!200510 lt!1823284))))

(declare-fun contains!15114 (List!52071 tuple2!53080) Bool)

(assert (=> b!4661860 (contains!15114 lt!1823291 lt!1823284)))

(assert (=> b!4661860 (= lt!1823284 (tuple2!53081 lt!1823290 lt!1823286))))

(declare-fun lt!1823288 () ListLongMap!3799)

(declare-fun lt!1823287 () Unit!119320)

(declare-fun lemmaGetValueImpliesTupleContained!191 (ListLongMap!3799 (_ BitVec 64) List!52070) Unit!119320)

(assert (=> b!4661860 (= lt!1823287 (lemmaGetValueImpliesTupleContained!191 lt!1823288 lt!1823290 lt!1823286))))

(declare-fun apply!12261 (ListLongMap!3799 (_ BitVec 64)) List!52070)

(assert (=> b!4661860 (= lt!1823286 (apply!12261 lt!1823288 lt!1823290))))

(declare-fun contains!15115 (ListLongMap!3799 (_ BitVec 64)) Bool)

(assert (=> b!4661860 (contains!15115 lt!1823288 lt!1823290)))

(declare-fun lt!1823298 () Unit!119320)

(declare-fun lemmaInGenMapThenLongMapContainsHash!592 (ListLongMap!3799 K!13295 Hashable!6055) Unit!119320)

(assert (=> b!4661860 (= lt!1823298 (lemmaInGenMapThenLongMapContainsHash!592 lt!1823288 key!4968 hashF!1389))))

(declare-fun lt!1823296 () Unit!119320)

(declare-fun lemmaInGenMapThenGetPairDefined!182 (ListLongMap!3799 K!13295 Hashable!6055) Unit!119320)

(assert (=> b!4661860 (= lt!1823296 (lemmaInGenMapThenGetPairDefined!182 lt!1823288 key!4968 hashF!1389))))

(assert (=> b!4661860 (= lt!1823288 (ListLongMap!3800 lt!1823291))))

(declare-fun res!1961151 () Bool)

(assert (=> start!469656 (=> (not res!1961151) (not e!2909011))))

(assert (=> start!469656 (= res!1961151 (noDuplicateKeys!1658 oldBucket!40))))

(assert (=> start!469656 e!2909011))

(assert (=> start!469656 true))

(assert (=> start!469656 e!2909007))

(assert (=> start!469656 tp_is_empty!29925))

(declare-fun e!2909016 () Bool)

(assert (=> start!469656 e!2909016))

(declare-fun b!4661861 () Bool)

(assert (=> b!4661861 (= e!2909015 (not e!2909013))))

(declare-fun res!1961146 () Bool)

(assert (=> b!4661861 (=> res!1961146 e!2909013)))

(get-info :version)

(assert (=> b!4661861 (= res!1961146 (or (and ((_ is Cons!51946) oldBucket!40) (= (_1!29833 (h!58104 oldBucket!40)) key!4968)) (not ((_ is Cons!51946) oldBucket!40)) (= (_1!29833 (h!58104 oldBucket!40)) key!4968)))))

(assert (=> b!4661861 e!2909010))

(declare-fun res!1961149 () Bool)

(assert (=> b!4661861 (=> (not res!1961149) (not e!2909010))))

(declare-fun addToMapMapFromBucket!1115 (List!52070 ListMap!4585) ListMap!4585)

(assert (=> b!4661861 (= res!1961149 (= lt!1823285 (addToMapMapFromBucket!1115 oldBucket!40 lt!1823295)))))

(assert (=> b!4661861 (= lt!1823295 (extractMap!1714 Nil!51947))))

(assert (=> b!4661861 true))

(declare-fun b!4661862 () Bool)

(declare-fun head!9736 (List!52070) tuple2!53078)

(assert (=> b!4661862 (= e!2909012 (noDuplicateKeys!1658 (Cons!51946 (head!9736 oldBucket!40) lt!1823297)))))

(declare-fun b!4661863 () Bool)

(declare-fun res!1961142 () Bool)

(assert (=> b!4661863 (=> (not res!1961142) (not e!2909011))))

(assert (=> b!4661863 (= res!1961142 (noDuplicateKeys!1658 newBucket!224))))

(declare-fun tp!1343499 () Bool)

(declare-fun b!4661864 () Bool)

(assert (=> b!4661864 (= e!2909016 (and tp_is_empty!29925 tp_is_empty!29927 tp!1343499))))

(assert (= (and start!469656 res!1961151) b!4661863))

(assert (= (and b!4661863 res!1961142) b!4661852))

(assert (= (and b!4661852 res!1961153) b!4661858))

(assert (= (and b!4661858 res!1961147) b!4661851))

(assert (= (and b!4661851 res!1961144) b!4661859))

(assert (= (and b!4661859 res!1961145) b!4661854))

(assert (= (and b!4661854 res!1961148) b!4661861))

(assert (= (and b!4661861 res!1961149) b!4661857))

(assert (= (and b!4661861 (not res!1961146)) b!4661860))

(assert (= (and b!4661860 (not res!1961143)) b!4661855))

(assert (= (and b!4661855 (not res!1961150)) b!4661856))

(assert (= (and b!4661856 (not res!1961154)) b!4661853))

(assert (= (and b!4661853 (not res!1961152)) b!4661862))

(assert (= (and start!469656 ((_ is Cons!51946) oldBucket!40)) b!4661850))

(assert (= (and start!469656 ((_ is Cons!51946) newBucket!224)) b!4661864))

(declare-fun m!5545557 () Bool)

(assert (=> b!4661854 m!5545557))

(declare-fun m!5545559 () Bool)

(assert (=> b!4661856 m!5545559))

(declare-fun m!5545561 () Bool)

(assert (=> b!4661851 m!5545561))

(declare-fun m!5545563 () Bool)

(assert (=> b!4661851 m!5545563))

(declare-fun m!5545565 () Bool)

(assert (=> b!4661861 m!5545565))

(declare-fun m!5545567 () Bool)

(assert (=> b!4661861 m!5545567))

(declare-fun m!5545569 () Bool)

(assert (=> b!4661852 m!5545569))

(declare-fun m!5545571 () Bool)

(assert (=> b!4661859 m!5545571))

(declare-fun m!5545573 () Bool)

(assert (=> start!469656 m!5545573))

(declare-fun m!5545575 () Bool)

(assert (=> b!4661863 m!5545575))

(declare-fun m!5545577 () Bool)

(assert (=> b!4661862 m!5545577))

(declare-fun m!5545579 () Bool)

(assert (=> b!4661862 m!5545579))

(declare-fun m!5545581 () Bool)

(assert (=> b!4661858 m!5545581))

(declare-fun m!5545583 () Bool)

(assert (=> b!4661855 m!5545583))

(declare-fun m!5545585 () Bool)

(assert (=> b!4661855 m!5545585))

(declare-fun m!5545587 () Bool)

(assert (=> b!4661855 m!5545587))

(declare-fun m!5545589 () Bool)

(assert (=> b!4661860 m!5545589))

(declare-fun m!5545591 () Bool)

(assert (=> b!4661860 m!5545591))

(declare-fun m!5545593 () Bool)

(assert (=> b!4661860 m!5545593))

(declare-fun m!5545595 () Bool)

(assert (=> b!4661860 m!5545595))

(declare-fun m!5545597 () Bool)

(assert (=> b!4661860 m!5545597))

(declare-fun m!5545599 () Bool)

(assert (=> b!4661860 m!5545599))

(assert (=> b!4661860 m!5545595))

(declare-fun m!5545601 () Bool)

(assert (=> b!4661860 m!5545601))

(declare-fun m!5545603 () Bool)

(assert (=> b!4661860 m!5545603))

(declare-fun m!5545605 () Bool)

(assert (=> b!4661860 m!5545605))

(declare-fun m!5545607 () Bool)

(assert (=> b!4661860 m!5545607))

(declare-fun m!5545609 () Bool)

(assert (=> b!4661860 m!5545609))

(declare-fun m!5545611 () Bool)

(assert (=> b!4661860 m!5545611))

(declare-fun m!5545613 () Bool)

(assert (=> b!4661853 m!5545613))

(declare-fun m!5545615 () Bool)

(assert (=> b!4661853 m!5545615))

(assert (=> b!4661853 m!5545615))

(declare-fun m!5545617 () Bool)

(assert (=> b!4661853 m!5545617))

(declare-fun m!5545619 () Bool)

(assert (=> b!4661853 m!5545619))

(check-sat (not b!4661851) (not b!4661862) (not b!4661864) (not b!4661855) (not b!4661853) (not b!4661854) (not start!469656) (not b!4661860) (not b!4661850) tp_is_empty!29927 (not b!4661852) (not b!4661856) (not b!4661863) (not b!4661858) (not b!4661861) (not b!4661859) tp_is_empty!29925)
(check-sat)
(get-model)

(declare-fun d!1480895 () Bool)

(declare-fun hash!3811 (Hashable!6055 K!13295) (_ BitVec 64))

(assert (=> d!1480895 (= (hash!3809 hashF!1389 key!4968) (hash!3811 hashF!1389 key!4968))))

(declare-fun bs!1068757 () Bool)

(assert (= bs!1068757 d!1480895))

(declare-fun m!5545645 () Bool)

(assert (=> bs!1068757 m!5545645))

(assert (=> b!4661859 d!1480895))

(declare-fun d!1480897 () Bool)

(assert (=> d!1480897 true))

(assert (=> d!1480897 true))

(declare-fun lambda!200516 () Int)

(declare-fun forall!11063 (List!52070 Int) Bool)

(assert (=> d!1480897 (= (allKeysSameHash!1512 oldBucket!40 hash!414 hashF!1389) (forall!11063 oldBucket!40 lambda!200516))))

(declare-fun bs!1068759 () Bool)

(assert (= bs!1068759 d!1480897))

(declare-fun m!5545655 () Bool)

(assert (=> bs!1068759 m!5545655))

(assert (=> b!4661858 d!1480897))

(declare-fun bs!1068781 () Bool)

(declare-fun b!4661978 () Bool)

(assert (= bs!1068781 (and b!4661978 d!1480897)))

(declare-fun lambda!200585 () Int)

(assert (=> bs!1068781 (not (= lambda!200585 lambda!200516))))

(assert (=> b!4661978 true))

(declare-fun bs!1068782 () Bool)

(declare-fun b!4661982 () Bool)

(assert (= bs!1068782 (and b!4661982 d!1480897)))

(declare-fun lambda!200586 () Int)

(assert (=> bs!1068782 (not (= lambda!200586 lambda!200516))))

(declare-fun bs!1068783 () Bool)

(assert (= bs!1068783 (and b!4661982 b!4661978)))

(assert (=> bs!1068783 (= lambda!200586 lambda!200585)))

(assert (=> b!4661982 true))

(declare-fun lambda!200587 () Int)

(assert (=> bs!1068782 (not (= lambda!200587 lambda!200516))))

(declare-fun lt!1823473 () ListMap!4585)

(assert (=> bs!1068783 (= (= lt!1823473 lt!1823295) (= lambda!200587 lambda!200585))))

(assert (=> b!4661982 (= (= lt!1823473 lt!1823295) (= lambda!200587 lambda!200586))))

(assert (=> b!4661982 true))

(declare-fun bs!1068784 () Bool)

(declare-fun d!1480901 () Bool)

(assert (= bs!1068784 (and d!1480901 d!1480897)))

(declare-fun lambda!200588 () Int)

(assert (=> bs!1068784 (not (= lambda!200588 lambda!200516))))

(declare-fun bs!1068785 () Bool)

(assert (= bs!1068785 (and d!1480901 b!4661978)))

(declare-fun lt!1823478 () ListMap!4585)

(assert (=> bs!1068785 (= (= lt!1823478 lt!1823295) (= lambda!200588 lambda!200585))))

(declare-fun bs!1068786 () Bool)

(assert (= bs!1068786 (and d!1480901 b!4661982)))

(assert (=> bs!1068786 (= (= lt!1823478 lt!1823295) (= lambda!200588 lambda!200586))))

(assert (=> bs!1068786 (= (= lt!1823478 lt!1823473) (= lambda!200588 lambda!200587))))

(assert (=> d!1480901 true))

(declare-fun call!325708 () Bool)

(declare-fun c!798020 () Bool)

(declare-fun bm!325701 () Bool)

(assert (=> bm!325701 (= call!325708 (forall!11063 (ite c!798020 (toList!5245 lt!1823295) (t!359186 oldBucket!40)) (ite c!798020 lambda!200585 lambda!200587)))))

(declare-fun e!2909086 () ListMap!4585)

(assert (=> b!4661978 (= e!2909086 lt!1823295)))

(declare-fun lt!1823470 () Unit!119320)

(declare-fun call!325706 () Unit!119320)

(assert (=> b!4661978 (= lt!1823470 call!325706)))

(assert (=> b!4661978 call!325708))

(declare-fun lt!1823476 () Unit!119320)

(assert (=> b!4661978 (= lt!1823476 lt!1823470)))

(declare-fun call!325707 () Bool)

(assert (=> b!4661978 call!325707))

(declare-fun lt!1823479 () Unit!119320)

(declare-fun Unit!119336 () Unit!119320)

(assert (=> b!4661978 (= lt!1823479 Unit!119336)))

(declare-fun b!4661979 () Bool)

(declare-fun e!2909085 () Bool)

(declare-fun invariantList!1312 (List!52070) Bool)

(assert (=> b!4661979 (= e!2909085 (invariantList!1312 (toList!5245 lt!1823478)))))

(assert (=> d!1480901 e!2909085))

(declare-fun res!1961198 () Bool)

(assert (=> d!1480901 (=> (not res!1961198) (not e!2909085))))

(assert (=> d!1480901 (= res!1961198 (forall!11063 oldBucket!40 lambda!200588))))

(assert (=> d!1480901 (= lt!1823478 e!2909086)))

(assert (=> d!1480901 (= c!798020 ((_ is Nil!51946) oldBucket!40))))

(assert (=> d!1480901 (noDuplicateKeys!1658 oldBucket!40)))

(assert (=> d!1480901 (= (addToMapMapFromBucket!1115 oldBucket!40 lt!1823295) lt!1823478)))

(declare-fun bm!325702 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!612 (ListMap!4585) Unit!119320)

(assert (=> bm!325702 (= call!325706 (lemmaContainsAllItsOwnKeys!612 lt!1823295))))

(declare-fun b!4661980 () Bool)

(declare-fun e!2909084 () Bool)

(assert (=> b!4661980 (= e!2909084 (forall!11063 (toList!5245 lt!1823295) lambda!200587))))

(declare-fun lt!1823465 () ListMap!4585)

(declare-fun bm!325703 () Bool)

(assert (=> bm!325703 (= call!325707 (forall!11063 (ite c!798020 (toList!5245 lt!1823295) (toList!5245 lt!1823465)) (ite c!798020 lambda!200585 lambda!200587)))))

(declare-fun b!4661981 () Bool)

(declare-fun res!1961197 () Bool)

(assert (=> b!4661981 (=> (not res!1961197) (not e!2909085))))

(assert (=> b!4661981 (= res!1961197 (forall!11063 (toList!5245 lt!1823295) lambda!200588))))

(assert (=> b!4661982 (= e!2909086 lt!1823473)))

(declare-fun +!1998 (ListMap!4585 tuple2!53078) ListMap!4585)

(assert (=> b!4661982 (= lt!1823465 (+!1998 lt!1823295 (h!58104 oldBucket!40)))))

(assert (=> b!4661982 (= lt!1823473 (addToMapMapFromBucket!1115 (t!359186 oldBucket!40) (+!1998 lt!1823295 (h!58104 oldBucket!40))))))

(declare-fun lt!1823474 () Unit!119320)

(assert (=> b!4661982 (= lt!1823474 call!325706)))

(assert (=> b!4661982 (forall!11063 (toList!5245 lt!1823295) lambda!200586)))

(declare-fun lt!1823466 () Unit!119320)

(assert (=> b!4661982 (= lt!1823466 lt!1823474)))

(assert (=> b!4661982 call!325707))

(declare-fun lt!1823459 () Unit!119320)

(declare-fun Unit!119337 () Unit!119320)

(assert (=> b!4661982 (= lt!1823459 Unit!119337)))

(assert (=> b!4661982 call!325708))

(declare-fun lt!1823472 () Unit!119320)

(declare-fun Unit!119338 () Unit!119320)

(assert (=> b!4661982 (= lt!1823472 Unit!119338)))

(declare-fun lt!1823462 () Unit!119320)

(declare-fun Unit!119339 () Unit!119320)

(assert (=> b!4661982 (= lt!1823462 Unit!119339)))

(declare-fun lt!1823460 () Unit!119320)

(declare-fun forallContained!3264 (List!52070 Int tuple2!53078) Unit!119320)

(assert (=> b!4661982 (= lt!1823460 (forallContained!3264 (toList!5245 lt!1823465) lambda!200587 (h!58104 oldBucket!40)))))

(assert (=> b!4661982 (contains!15113 lt!1823465 (_1!29833 (h!58104 oldBucket!40)))))

(declare-fun lt!1823461 () Unit!119320)

(declare-fun Unit!119340 () Unit!119320)

(assert (=> b!4661982 (= lt!1823461 Unit!119340)))

(assert (=> b!4661982 (contains!15113 lt!1823473 (_1!29833 (h!58104 oldBucket!40)))))

(declare-fun lt!1823464 () Unit!119320)

(declare-fun Unit!119341 () Unit!119320)

(assert (=> b!4661982 (= lt!1823464 Unit!119341)))

(assert (=> b!4661982 (forall!11063 oldBucket!40 lambda!200587)))

(declare-fun lt!1823475 () Unit!119320)

(declare-fun Unit!119342 () Unit!119320)

(assert (=> b!4661982 (= lt!1823475 Unit!119342)))

(assert (=> b!4661982 (forall!11063 (toList!5245 lt!1823465) lambda!200587)))

(declare-fun lt!1823477 () Unit!119320)

(declare-fun Unit!119343 () Unit!119320)

(assert (=> b!4661982 (= lt!1823477 Unit!119343)))

(declare-fun lt!1823471 () Unit!119320)

(declare-fun Unit!119344 () Unit!119320)

(assert (=> b!4661982 (= lt!1823471 Unit!119344)))

(declare-fun lt!1823467 () Unit!119320)

(declare-fun addForallContainsKeyThenBeforeAdding!611 (ListMap!4585 ListMap!4585 K!13295 V!13541) Unit!119320)

(assert (=> b!4661982 (= lt!1823467 (addForallContainsKeyThenBeforeAdding!611 lt!1823295 lt!1823473 (_1!29833 (h!58104 oldBucket!40)) (_2!29833 (h!58104 oldBucket!40))))))

(assert (=> b!4661982 (forall!11063 (toList!5245 lt!1823295) lambda!200587)))

(declare-fun lt!1823469 () Unit!119320)

(assert (=> b!4661982 (= lt!1823469 lt!1823467)))

(assert (=> b!4661982 (forall!11063 (toList!5245 lt!1823295) lambda!200587)))

(declare-fun lt!1823468 () Unit!119320)

(declare-fun Unit!119345 () Unit!119320)

(assert (=> b!4661982 (= lt!1823468 Unit!119345)))

(declare-fun res!1961196 () Bool)

(assert (=> b!4661982 (= res!1961196 (forall!11063 oldBucket!40 lambda!200587))))

(assert (=> b!4661982 (=> (not res!1961196) (not e!2909084))))

(assert (=> b!4661982 e!2909084))

(declare-fun lt!1823463 () Unit!119320)

(declare-fun Unit!119346 () Unit!119320)

(assert (=> b!4661982 (= lt!1823463 Unit!119346)))

(assert (= (and d!1480901 c!798020) b!4661978))

(assert (= (and d!1480901 (not c!798020)) b!4661982))

(assert (= (and b!4661982 res!1961196) b!4661980))

(assert (= (or b!4661978 b!4661982) bm!325702))

(assert (= (or b!4661978 b!4661982) bm!325703))

(assert (= (or b!4661978 b!4661982) bm!325701))

(assert (= (and d!1480901 res!1961198) b!4661981))

(assert (= (and b!4661981 res!1961197) b!4661979))

(declare-fun m!5545745 () Bool)

(assert (=> b!4661982 m!5545745))

(declare-fun m!5545747 () Bool)

(assert (=> b!4661982 m!5545747))

(declare-fun m!5545749 () Bool)

(assert (=> b!4661982 m!5545749))

(declare-fun m!5545751 () Bool)

(assert (=> b!4661982 m!5545751))

(declare-fun m!5545753 () Bool)

(assert (=> b!4661982 m!5545753))

(declare-fun m!5545755 () Bool)

(assert (=> b!4661982 m!5545755))

(assert (=> b!4661982 m!5545755))

(declare-fun m!5545757 () Bool)

(assert (=> b!4661982 m!5545757))

(declare-fun m!5545759 () Bool)

(assert (=> b!4661982 m!5545759))

(declare-fun m!5545761 () Bool)

(assert (=> b!4661982 m!5545761))

(assert (=> b!4661982 m!5545751))

(declare-fun m!5545763 () Bool)

(assert (=> b!4661982 m!5545763))

(assert (=> b!4661982 m!5545759))

(declare-fun m!5545765 () Bool)

(assert (=> b!4661981 m!5545765))

(assert (=> b!4661980 m!5545759))

(declare-fun m!5545767 () Bool)

(assert (=> bm!325702 m!5545767))

(declare-fun m!5545769 () Bool)

(assert (=> bm!325701 m!5545769))

(declare-fun m!5545771 () Bool)

(assert (=> d!1480901 m!5545771))

(assert (=> d!1480901 m!5545573))

(declare-fun m!5545773 () Bool)

(assert (=> b!4661979 m!5545773))

(declare-fun m!5545775 () Bool)

(assert (=> bm!325703 m!5545775))

(assert (=> b!4661861 d!1480901))

(declare-fun bs!1068791 () Bool)

(declare-fun d!1480935 () Bool)

(assert (= bs!1068791 (and d!1480935 b!4661860)))

(declare-fun lambda!200598 () Int)

(assert (=> bs!1068791 (= lambda!200598 lambda!200510)))

(declare-fun lt!1823509 () ListMap!4585)

(assert (=> d!1480935 (invariantList!1312 (toList!5245 lt!1823509))))

(declare-fun e!2909098 () ListMap!4585)

(assert (=> d!1480935 (= lt!1823509 e!2909098)))

(declare-fun c!798023 () Bool)

(assert (=> d!1480935 (= c!798023 ((_ is Cons!51947) Nil!51947))))

(declare-fun forall!11064 (List!52071 Int) Bool)

(assert (=> d!1480935 (forall!11064 Nil!51947 lambda!200598)))

(assert (=> d!1480935 (= (extractMap!1714 Nil!51947) lt!1823509)))

(declare-fun b!4662004 () Bool)

(assert (=> b!4662004 (= e!2909098 (addToMapMapFromBucket!1115 (_2!29834 (h!58105 Nil!51947)) (extractMap!1714 (t!359187 Nil!51947))))))

(declare-fun b!4662005 () Bool)

(assert (=> b!4662005 (= e!2909098 (ListMap!4586 Nil!51946))))

(assert (= (and d!1480935 c!798023) b!4662004))

(assert (= (and d!1480935 (not c!798023)) b!4662005))

(declare-fun m!5545811 () Bool)

(assert (=> d!1480935 m!5545811))

(declare-fun m!5545813 () Bool)

(assert (=> d!1480935 m!5545813))

(declare-fun m!5545815 () Bool)

(assert (=> b!4662004 m!5545815))

(assert (=> b!4662004 m!5545815))

(declare-fun m!5545817 () Bool)

(assert (=> b!4662004 m!5545817))

(assert (=> b!4661861 d!1480935))

(declare-fun d!1480941 () Bool)

(declare-fun res!1961218 () Bool)

(declare-fun e!2909107 () Bool)

(assert (=> d!1480941 (=> res!1961218 e!2909107)))

(assert (=> d!1480941 (= res!1961218 (not ((_ is Cons!51946) (Cons!51946 (head!9736 oldBucket!40) lt!1823297))))))

(assert (=> d!1480941 (= (noDuplicateKeys!1658 (Cons!51946 (head!9736 oldBucket!40) lt!1823297)) e!2909107)))

(declare-fun b!4662018 () Bool)

(declare-fun e!2909108 () Bool)

(assert (=> b!4662018 (= e!2909107 e!2909108)))

(declare-fun res!1961219 () Bool)

(assert (=> b!4662018 (=> (not res!1961219) (not e!2909108))))

(assert (=> b!4662018 (= res!1961219 (not (containsKey!2764 (t!359186 (Cons!51946 (head!9736 oldBucket!40) lt!1823297)) (_1!29833 (h!58104 (Cons!51946 (head!9736 oldBucket!40) lt!1823297))))))))

(declare-fun b!4662019 () Bool)

(assert (=> b!4662019 (= e!2909108 (noDuplicateKeys!1658 (t!359186 (Cons!51946 (head!9736 oldBucket!40) lt!1823297))))))

(assert (= (and d!1480941 (not res!1961218)) b!4662018))

(assert (= (and b!4662018 res!1961219) b!4662019))

(declare-fun m!5545819 () Bool)

(assert (=> b!4662018 m!5545819))

(declare-fun m!5545821 () Bool)

(assert (=> b!4662019 m!5545821))

(assert (=> b!4661862 d!1480941))

(declare-fun d!1480943 () Bool)

(assert (=> d!1480943 (= (head!9736 oldBucket!40) (h!58104 oldBucket!40))))

(assert (=> b!4661862 d!1480943))

(declare-fun b!4662082 () Bool)

(assert (=> b!4662082 false))

(declare-fun lt!1823550 () Unit!119320)

(declare-fun lt!1823548 () Unit!119320)

(assert (=> b!4662082 (= lt!1823550 lt!1823548)))

(declare-fun containsKey!2767 (List!52070 K!13295) Bool)

(assert (=> b!4662082 (containsKey!2767 (toList!5245 lt!1823285) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!762 (List!52070 K!13295) Unit!119320)

(assert (=> b!4662082 (= lt!1823548 (lemmaInGetKeysListThenContainsKey!762 (toList!5245 lt!1823285) key!4968))))

(declare-fun e!2909155 () Unit!119320)

(declare-fun Unit!119347 () Unit!119320)

(assert (=> b!4662082 (= e!2909155 Unit!119347)))

(declare-fun b!4662083 () Bool)

(declare-fun e!2909151 () Bool)

(declare-fun e!2909158 () Bool)

(assert (=> b!4662083 (= e!2909151 e!2909158)))

(declare-fun res!1961254 () Bool)

(assert (=> b!4662083 (=> (not res!1961254) (not e!2909158))))

(declare-datatypes ((Option!11865 0))(
  ( (None!11864) (Some!11864 (v!46178 V!13541)) )
))
(declare-fun isDefined!9130 (Option!11865) Bool)

(declare-fun getValueByKey!1637 (List!52070 K!13295) Option!11865)

(assert (=> b!4662083 (= res!1961254 (isDefined!9130 (getValueByKey!1637 (toList!5245 lt!1823285) key!4968)))))

(declare-fun d!1480945 () Bool)

(assert (=> d!1480945 e!2909151))

(declare-fun res!1961253 () Bool)

(assert (=> d!1480945 (=> res!1961253 e!2909151)))

(declare-fun e!2909152 () Bool)

(assert (=> d!1480945 (= res!1961253 e!2909152)))

(declare-fun res!1961255 () Bool)

(assert (=> d!1480945 (=> (not res!1961255) (not e!2909152))))

(declare-fun lt!1823549 () Bool)

(assert (=> d!1480945 (= res!1961255 (not lt!1823549))))

(declare-fun lt!1823547 () Bool)

(assert (=> d!1480945 (= lt!1823549 lt!1823547)))

(declare-fun lt!1823545 () Unit!119320)

(declare-fun e!2909156 () Unit!119320)

(assert (=> d!1480945 (= lt!1823545 e!2909156)))

(declare-fun c!798040 () Bool)

(assert (=> d!1480945 (= c!798040 lt!1823547)))

(assert (=> d!1480945 (= lt!1823547 (containsKey!2767 (toList!5245 lt!1823285) key!4968))))

(assert (=> d!1480945 (= (contains!15113 lt!1823285 key!4968) lt!1823549)))

(declare-fun b!4662084 () Bool)

(declare-fun Unit!119348 () Unit!119320)

(assert (=> b!4662084 (= e!2909155 Unit!119348)))

(declare-fun b!4662085 () Bool)

(declare-datatypes ((List!52073 0))(
  ( (Nil!51949) (Cons!51949 (h!58109 K!13295) (t!359189 List!52073)) )
))
(declare-fun e!2909157 () List!52073)

(declare-fun getKeysList!763 (List!52070) List!52073)

(assert (=> b!4662085 (= e!2909157 (getKeysList!763 (toList!5245 lt!1823285)))))

(declare-fun bm!325707 () Bool)

(declare-fun call!325712 () Bool)

(declare-fun contains!15118 (List!52073 K!13295) Bool)

(assert (=> bm!325707 (= call!325712 (contains!15118 e!2909157 key!4968))))

(declare-fun c!798042 () Bool)

(assert (=> bm!325707 (= c!798042 c!798040)))

(declare-fun b!4662086 () Bool)

(declare-fun keys!18420 (ListMap!4585) List!52073)

(assert (=> b!4662086 (= e!2909158 (contains!15118 (keys!18420 lt!1823285) key!4968))))

(declare-fun b!4662087 () Bool)

(declare-fun lt!1823544 () Unit!119320)

(assert (=> b!4662087 (= e!2909156 lt!1823544)))

(declare-fun lt!1823551 () Unit!119320)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1539 (List!52070 K!13295) Unit!119320)

(assert (=> b!4662087 (= lt!1823551 (lemmaContainsKeyImpliesGetValueByKeyDefined!1539 (toList!5245 lt!1823285) key!4968))))

(assert (=> b!4662087 (isDefined!9130 (getValueByKey!1637 (toList!5245 lt!1823285) key!4968))))

(declare-fun lt!1823546 () Unit!119320)

(assert (=> b!4662087 (= lt!1823546 lt!1823551)))

(declare-fun lemmaInListThenGetKeysListContains!758 (List!52070 K!13295) Unit!119320)

(assert (=> b!4662087 (= lt!1823544 (lemmaInListThenGetKeysListContains!758 (toList!5245 lt!1823285) key!4968))))

(assert (=> b!4662087 call!325712))

(declare-fun b!4662088 () Bool)

(assert (=> b!4662088 (= e!2909156 e!2909155)))

(declare-fun c!798041 () Bool)

(assert (=> b!4662088 (= c!798041 call!325712)))

(declare-fun b!4662089 () Bool)

(assert (=> b!4662089 (= e!2909157 (keys!18420 lt!1823285))))

(declare-fun b!4662090 () Bool)

(assert (=> b!4662090 (= e!2909152 (not (contains!15118 (keys!18420 lt!1823285) key!4968)))))

(assert (= (and d!1480945 c!798040) b!4662087))

(assert (= (and d!1480945 (not c!798040)) b!4662088))

(assert (= (and b!4662088 c!798041) b!4662082))

(assert (= (and b!4662088 (not c!798041)) b!4662084))

(assert (= (or b!4662087 b!4662088) bm!325707))

(assert (= (and bm!325707 c!798042) b!4662085))

(assert (= (and bm!325707 (not c!798042)) b!4662089))

(assert (= (and d!1480945 res!1961255) b!4662090))

(assert (= (and d!1480945 (not res!1961253)) b!4662083))

(assert (= (and b!4662083 res!1961254) b!4662086))

(declare-fun m!5545885 () Bool)

(assert (=> b!4662087 m!5545885))

(declare-fun m!5545887 () Bool)

(assert (=> b!4662087 m!5545887))

(assert (=> b!4662087 m!5545887))

(declare-fun m!5545889 () Bool)

(assert (=> b!4662087 m!5545889))

(declare-fun m!5545891 () Bool)

(assert (=> b!4662087 m!5545891))

(declare-fun m!5545893 () Bool)

(assert (=> bm!325707 m!5545893))

(declare-fun m!5545895 () Bool)

(assert (=> b!4662085 m!5545895))

(declare-fun m!5545897 () Bool)

(assert (=> b!4662082 m!5545897))

(declare-fun m!5545899 () Bool)

(assert (=> b!4662082 m!5545899))

(declare-fun m!5545901 () Bool)

(assert (=> b!4662090 m!5545901))

(assert (=> b!4662090 m!5545901))

(declare-fun m!5545903 () Bool)

(assert (=> b!4662090 m!5545903))

(assert (=> b!4662089 m!5545901))

(assert (=> b!4662086 m!5545901))

(assert (=> b!4662086 m!5545901))

(assert (=> b!4662086 m!5545903))

(assert (=> d!1480945 m!5545897))

(assert (=> b!4662083 m!5545887))

(assert (=> b!4662083 m!5545887))

(assert (=> b!4662083 m!5545889))

(assert (=> b!4661851 d!1480945))

(declare-fun bs!1068807 () Bool)

(declare-fun d!1480969 () Bool)

(assert (= bs!1068807 (and d!1480969 b!4661860)))

(declare-fun lambda!200603 () Int)

(assert (=> bs!1068807 (= lambda!200603 lambda!200510)))

(declare-fun bs!1068808 () Bool)

(assert (= bs!1068808 (and d!1480969 d!1480935)))

(assert (=> bs!1068808 (= lambda!200603 lambda!200598)))

(declare-fun lt!1823552 () ListMap!4585)

(assert (=> d!1480969 (invariantList!1312 (toList!5245 lt!1823552))))

(declare-fun e!2909161 () ListMap!4585)

(assert (=> d!1480969 (= lt!1823552 e!2909161)))

(declare-fun c!798043 () Bool)

(assert (=> d!1480969 (= c!798043 ((_ is Cons!51947) lt!1823291))))

(assert (=> d!1480969 (forall!11064 lt!1823291 lambda!200603)))

(assert (=> d!1480969 (= (extractMap!1714 lt!1823291) lt!1823552)))

(declare-fun b!4662093 () Bool)

(assert (=> b!4662093 (= e!2909161 (addToMapMapFromBucket!1115 (_2!29834 (h!58105 lt!1823291)) (extractMap!1714 (t!359187 lt!1823291))))))

(declare-fun b!4662094 () Bool)

(assert (=> b!4662094 (= e!2909161 (ListMap!4586 Nil!51946))))

(assert (= (and d!1480969 c!798043) b!4662093))

(assert (= (and d!1480969 (not c!798043)) b!4662094))

(declare-fun m!5545905 () Bool)

(assert (=> d!1480969 m!5545905))

(declare-fun m!5545907 () Bool)

(assert (=> d!1480969 m!5545907))

(declare-fun m!5545909 () Bool)

(assert (=> b!4662093 m!5545909))

(assert (=> b!4662093 m!5545909))

(declare-fun m!5545911 () Bool)

(assert (=> b!4662093 m!5545911))

(assert (=> b!4661851 d!1480969))

(declare-fun bs!1068809 () Bool)

(declare-fun d!1480971 () Bool)

(assert (= bs!1068809 (and d!1480971 b!4661860)))

(declare-fun lambda!200610 () Int)

(assert (=> bs!1068809 (= lambda!200610 lambda!200510)))

(declare-fun bs!1068810 () Bool)

(assert (= bs!1068810 (and d!1480971 d!1480935)))

(assert (=> bs!1068810 (= lambda!200610 lambda!200598)))

(declare-fun bs!1068811 () Bool)

(assert (= bs!1068811 (and d!1480971 d!1480969)))

(assert (=> bs!1068811 (= lambda!200610 lambda!200603)))

(declare-fun e!2909166 () Bool)

(assert (=> d!1480971 e!2909166))

(declare-fun res!1961266 () Bool)

(assert (=> d!1480971 (=> (not res!1961266) (not e!2909166))))

(assert (=> d!1480971 (= res!1961266 (forall!11064 (toList!5246 lt!1823288) lambda!200610))))

(declare-fun lt!1823575 () Unit!119320)

(declare-fun choose!32135 (ListLongMap!3799 K!13295 Hashable!6055) Unit!119320)

(assert (=> d!1480971 (= lt!1823575 (choose!32135 lt!1823288 key!4968 hashF!1389))))

(assert (=> d!1480971 (forall!11064 (toList!5246 lt!1823288) lambda!200610)))

(assert (=> d!1480971 (= (lemmaInGenMapThenGetPairDefined!182 lt!1823288 key!4968 hashF!1389) lt!1823575)))

(declare-fun lt!1823569 () (_ BitVec 64))

(declare-fun b!4662106 () Bool)

(declare-fun e!2909167 () Bool)

(declare-fun lt!1823572 () List!52070)

(declare-datatypes ((Option!11866 0))(
  ( (None!11865) (Some!11865 (v!46179 List!52070)) )
))
(declare-fun getValueByKey!1638 (List!52071 (_ BitVec 64)) Option!11866)

(assert (=> b!4662106 (= e!2909167 (= (getValueByKey!1638 (toList!5246 lt!1823288) lt!1823569) (Some!11865 lt!1823572)))))

(declare-fun b!4662104 () Bool)

(declare-fun res!1961267 () Bool)

(assert (=> b!4662104 (=> (not res!1961267) (not e!2909166))))

(assert (=> b!4662104 (= res!1961267 (contains!15113 (extractMap!1714 (toList!5246 lt!1823288)) key!4968))))

(declare-fun b!4662103 () Bool)

(declare-fun res!1961264 () Bool)

(assert (=> b!4662103 (=> (not res!1961264) (not e!2909166))))

(declare-fun allKeysSameHashInMap!1614 (ListLongMap!3799 Hashable!6055) Bool)

(assert (=> b!4662103 (= res!1961264 (allKeysSameHashInMap!1614 lt!1823288 hashF!1389))))

(declare-fun b!4662105 () Bool)

(assert (=> b!4662105 (= e!2909166 (isDefined!9127 (getPair!386 (apply!12261 lt!1823288 (hash!3809 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1823571 () Unit!119320)

(assert (=> b!4662105 (= lt!1823571 (forallContained!3262 (toList!5246 lt!1823288) lambda!200610 (tuple2!53081 (hash!3809 hashF!1389 key!4968) (apply!12261 lt!1823288 (hash!3809 hashF!1389 key!4968)))))))

(declare-fun lt!1823573 () Unit!119320)

(declare-fun lt!1823574 () Unit!119320)

(assert (=> b!4662105 (= lt!1823573 lt!1823574)))

(assert (=> b!4662105 (contains!15114 (toList!5246 lt!1823288) (tuple2!53081 lt!1823569 lt!1823572))))

(assert (=> b!4662105 (= lt!1823574 (lemmaGetValueImpliesTupleContained!191 lt!1823288 lt!1823569 lt!1823572))))

(assert (=> b!4662105 e!2909167))

(declare-fun res!1961265 () Bool)

(assert (=> b!4662105 (=> (not res!1961265) (not e!2909167))))

(assert (=> b!4662105 (= res!1961265 (contains!15115 lt!1823288 lt!1823569))))

(assert (=> b!4662105 (= lt!1823572 (apply!12261 lt!1823288 (hash!3809 hashF!1389 key!4968)))))

(assert (=> b!4662105 (= lt!1823569 (hash!3809 hashF!1389 key!4968))))

(declare-fun lt!1823570 () Unit!119320)

(declare-fun lt!1823576 () Unit!119320)

(assert (=> b!4662105 (= lt!1823570 lt!1823576)))

(assert (=> b!4662105 (contains!15115 lt!1823288 (hash!3809 hashF!1389 key!4968))))

(assert (=> b!4662105 (= lt!1823576 (lemmaInGenMapThenLongMapContainsHash!592 lt!1823288 key!4968 hashF!1389))))

(assert (= (and d!1480971 res!1961266) b!4662103))

(assert (= (and b!4662103 res!1961264) b!4662104))

(assert (= (and b!4662104 res!1961267) b!4662105))

(assert (= (and b!4662105 res!1961265) b!4662106))

(declare-fun m!5545913 () Bool)

(assert (=> d!1480971 m!5545913))

(declare-fun m!5545915 () Bool)

(assert (=> d!1480971 m!5545915))

(assert (=> d!1480971 m!5545913))

(declare-fun m!5545917 () Bool)

(assert (=> b!4662105 m!5545917))

(assert (=> b!4662105 m!5545571))

(declare-fun m!5545919 () Bool)

(assert (=> b!4662105 m!5545919))

(declare-fun m!5545921 () Bool)

(assert (=> b!4662105 m!5545921))

(declare-fun m!5545923 () Bool)

(assert (=> b!4662105 m!5545923))

(assert (=> b!4662105 m!5545923))

(declare-fun m!5545925 () Bool)

(assert (=> b!4662105 m!5545925))

(assert (=> b!4662105 m!5545597))

(assert (=> b!4662105 m!5545571))

(assert (=> b!4662105 m!5545921))

(declare-fun m!5545927 () Bool)

(assert (=> b!4662105 m!5545927))

(assert (=> b!4662105 m!5545571))

(declare-fun m!5545929 () Bool)

(assert (=> b!4662105 m!5545929))

(declare-fun m!5545931 () Bool)

(assert (=> b!4662105 m!5545931))

(declare-fun m!5545933 () Bool)

(assert (=> b!4662103 m!5545933))

(declare-fun m!5545935 () Bool)

(assert (=> b!4662104 m!5545935))

(assert (=> b!4662104 m!5545935))

(declare-fun m!5545937 () Bool)

(assert (=> b!4662104 m!5545937))

(declare-fun m!5545939 () Bool)

(assert (=> b!4662106 m!5545939))

(assert (=> b!4661860 d!1480971))

(declare-fun d!1480973 () Bool)

(declare-fun get!17303 (Option!11866) List!52070)

(assert (=> d!1480973 (= (apply!12261 lt!1823288 lt!1823290) (get!17303 (getValueByKey!1638 (toList!5246 lt!1823288) lt!1823290)))))

(declare-fun bs!1068812 () Bool)

(assert (= bs!1068812 d!1480973))

(declare-fun m!5545941 () Bool)

(assert (=> bs!1068812 m!5545941))

(assert (=> bs!1068812 m!5545941))

(declare-fun m!5545943 () Bool)

(assert (=> bs!1068812 m!5545943))

(assert (=> b!4661860 d!1480973))

(declare-fun d!1480975 () Bool)

(assert (=> d!1480975 (containsKey!2764 oldBucket!40 key!4968)))

(declare-fun lt!1823579 () Unit!119320)

(declare-fun choose!32136 (List!52070 K!13295 Hashable!6055) Unit!119320)

(assert (=> d!1480975 (= lt!1823579 (choose!32136 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1480975 (noDuplicateKeys!1658 oldBucket!40)))

(assert (=> d!1480975 (= (lemmaGetPairDefinedThenContainsKey!136 oldBucket!40 key!4968 hashF!1389) lt!1823579)))

(declare-fun bs!1068813 () Bool)

(assert (= bs!1068813 d!1480975))

(assert (=> bs!1068813 m!5545609))

(declare-fun m!5545945 () Bool)

(assert (=> bs!1068813 m!5545945))

(assert (=> bs!1068813 m!5545573))

(assert (=> b!4661860 d!1480975))

(declare-fun d!1480977 () Bool)

(declare-fun lt!1823582 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9023 (List!52071) (InoxSet tuple2!53080))

(assert (=> d!1480977 (= lt!1823582 (select (content!9023 lt!1823291) lt!1823284))))

(declare-fun e!2909172 () Bool)

(assert (=> d!1480977 (= lt!1823582 e!2909172)))

(declare-fun res!1961272 () Bool)

(assert (=> d!1480977 (=> (not res!1961272) (not e!2909172))))

(assert (=> d!1480977 (= res!1961272 ((_ is Cons!51947) lt!1823291))))

(assert (=> d!1480977 (= (contains!15114 lt!1823291 lt!1823284) lt!1823582)))

(declare-fun b!4662111 () Bool)

(declare-fun e!2909173 () Bool)

(assert (=> b!4662111 (= e!2909172 e!2909173)))

(declare-fun res!1961273 () Bool)

(assert (=> b!4662111 (=> res!1961273 e!2909173)))

(assert (=> b!4662111 (= res!1961273 (= (h!58105 lt!1823291) lt!1823284))))

(declare-fun b!4662112 () Bool)

(assert (=> b!4662112 (= e!2909173 (contains!15114 (t!359187 lt!1823291) lt!1823284))))

(assert (= (and d!1480977 res!1961272) b!4662111))

(assert (= (and b!4662111 (not res!1961273)) b!4662112))

(declare-fun m!5545947 () Bool)

(assert (=> d!1480977 m!5545947))

(declare-fun m!5545949 () Bool)

(assert (=> d!1480977 m!5545949))

(declare-fun m!5545951 () Bool)

(assert (=> b!4662112 m!5545951))

(assert (=> b!4661860 d!1480977))

(declare-fun d!1480979 () Bool)

(declare-fun res!1961278 () Bool)

(declare-fun e!2909178 () Bool)

(assert (=> d!1480979 (=> res!1961278 e!2909178)))

(assert (=> d!1480979 (= res!1961278 (and ((_ is Cons!51946) (t!359186 oldBucket!40)) (= (_1!29833 (h!58104 (t!359186 oldBucket!40))) key!4968)))))

(assert (=> d!1480979 (= (containsKey!2764 (t!359186 oldBucket!40) key!4968) e!2909178)))

(declare-fun b!4662117 () Bool)

(declare-fun e!2909179 () Bool)

(assert (=> b!4662117 (= e!2909178 e!2909179)))

(declare-fun res!1961279 () Bool)

(assert (=> b!4662117 (=> (not res!1961279) (not e!2909179))))

(assert (=> b!4662117 (= res!1961279 ((_ is Cons!51946) (t!359186 oldBucket!40)))))

(declare-fun b!4662118 () Bool)

(assert (=> b!4662118 (= e!2909179 (containsKey!2764 (t!359186 (t!359186 oldBucket!40)) key!4968))))

(assert (= (and d!1480979 (not res!1961278)) b!4662117))

(assert (= (and b!4662117 res!1961279) b!4662118))

(declare-fun m!5545953 () Bool)

(assert (=> b!4662118 m!5545953))

(assert (=> b!4661860 d!1480979))

(declare-fun bs!1068814 () Bool)

(declare-fun d!1480981 () Bool)

(assert (= bs!1068814 (and d!1480981 b!4661860)))

(declare-fun lambda!200613 () Int)

(assert (=> bs!1068814 (= lambda!200613 lambda!200510)))

(declare-fun bs!1068815 () Bool)

(assert (= bs!1068815 (and d!1480981 d!1480935)))

(assert (=> bs!1068815 (= lambda!200613 lambda!200598)))

(declare-fun bs!1068816 () Bool)

(assert (= bs!1068816 (and d!1480981 d!1480969)))

(assert (=> bs!1068816 (= lambda!200613 lambda!200603)))

(declare-fun bs!1068817 () Bool)

(assert (= bs!1068817 (and d!1480981 d!1480971)))

(assert (=> bs!1068817 (= lambda!200613 lambda!200610)))

(assert (=> d!1480981 (contains!15115 lt!1823288 (hash!3809 hashF!1389 key!4968))))

(declare-fun lt!1823585 () Unit!119320)

(declare-fun choose!32137 (ListLongMap!3799 K!13295 Hashable!6055) Unit!119320)

(assert (=> d!1480981 (= lt!1823585 (choose!32137 lt!1823288 key!4968 hashF!1389))))

(assert (=> d!1480981 (forall!11064 (toList!5246 lt!1823288) lambda!200613)))

(assert (=> d!1480981 (= (lemmaInGenMapThenLongMapContainsHash!592 lt!1823288 key!4968 hashF!1389) lt!1823585)))

(declare-fun bs!1068818 () Bool)

(assert (= bs!1068818 d!1480981))

(assert (=> bs!1068818 m!5545571))

(assert (=> bs!1068818 m!5545571))

(assert (=> bs!1068818 m!5545919))

(declare-fun m!5545955 () Bool)

(assert (=> bs!1068818 m!5545955))

(declare-fun m!5545957 () Bool)

(assert (=> bs!1068818 m!5545957))

(assert (=> b!4661860 d!1480981))

(declare-fun b!4662135 () Bool)

(declare-fun res!1961291 () Bool)

(declare-fun e!2909192 () Bool)

(assert (=> b!4662135 (=> (not res!1961291) (not e!2909192))))

(declare-fun lt!1823588 () Option!11862)

(declare-fun get!17304 (Option!11862) tuple2!53078)

(assert (=> b!4662135 (= res!1961291 (= (_1!29833 (get!17304 lt!1823588)) key!4968))))

(declare-fun b!4662136 () Bool)

(declare-fun e!2909191 () Bool)

(assert (=> b!4662136 (= e!2909191 (not (containsKey!2764 lt!1823286 key!4968)))))

(declare-fun b!4662137 () Bool)

(declare-fun e!2909190 () Bool)

(assert (=> b!4662137 (= e!2909190 e!2909192)))

(declare-fun res!1961288 () Bool)

(assert (=> b!4662137 (=> (not res!1961288) (not e!2909192))))

(assert (=> b!4662137 (= res!1961288 (isDefined!9127 lt!1823588))))

(declare-fun b!4662138 () Bool)

(declare-fun contains!15119 (List!52070 tuple2!53078) Bool)

(assert (=> b!4662138 (= e!2909192 (contains!15119 lt!1823286 (get!17304 lt!1823588)))))

(declare-fun b!4662139 () Bool)

(declare-fun e!2909194 () Option!11862)

(assert (=> b!4662139 (= e!2909194 (getPair!386 (t!359186 lt!1823286) key!4968))))

(declare-fun b!4662140 () Bool)

(declare-fun e!2909193 () Option!11862)

(assert (=> b!4662140 (= e!2909193 e!2909194)))

(declare-fun c!798048 () Bool)

(assert (=> b!4662140 (= c!798048 ((_ is Cons!51946) lt!1823286))))

(declare-fun b!4662141 () Bool)

(assert (=> b!4662141 (= e!2909193 (Some!11861 (h!58104 lt!1823286)))))

(declare-fun b!4662142 () Bool)

(assert (=> b!4662142 (= e!2909194 None!11861)))

(declare-fun d!1480983 () Bool)

(assert (=> d!1480983 e!2909190))

(declare-fun res!1961289 () Bool)

(assert (=> d!1480983 (=> res!1961289 e!2909190)))

(assert (=> d!1480983 (= res!1961289 e!2909191)))

(declare-fun res!1961290 () Bool)

(assert (=> d!1480983 (=> (not res!1961290) (not e!2909191))))

(declare-fun isEmpty!29031 (Option!11862) Bool)

(assert (=> d!1480983 (= res!1961290 (isEmpty!29031 lt!1823588))))

(assert (=> d!1480983 (= lt!1823588 e!2909193)))

(declare-fun c!798049 () Bool)

(assert (=> d!1480983 (= c!798049 (and ((_ is Cons!51946) lt!1823286) (= (_1!29833 (h!58104 lt!1823286)) key!4968)))))

(assert (=> d!1480983 (noDuplicateKeys!1658 lt!1823286)))

(assert (=> d!1480983 (= (getPair!386 lt!1823286 key!4968) lt!1823588)))

(assert (= (and d!1480983 c!798049) b!4662141))

(assert (= (and d!1480983 (not c!798049)) b!4662140))

(assert (= (and b!4662140 c!798048) b!4662139))

(assert (= (and b!4662140 (not c!798048)) b!4662142))

(assert (= (and d!1480983 res!1961290) b!4662136))

(assert (= (and d!1480983 (not res!1961289)) b!4662137))

(assert (= (and b!4662137 res!1961288) b!4662135))

(assert (= (and b!4662135 res!1961291) b!4662138))

(declare-fun m!5545959 () Bool)

(assert (=> b!4662138 m!5545959))

(assert (=> b!4662138 m!5545959))

(declare-fun m!5545961 () Bool)

(assert (=> b!4662138 m!5545961))

(declare-fun m!5545963 () Bool)

(assert (=> b!4662139 m!5545963))

(assert (=> b!4662135 m!5545959))

(declare-fun m!5545965 () Bool)

(assert (=> b!4662136 m!5545965))

(declare-fun m!5545967 () Bool)

(assert (=> b!4662137 m!5545967))

(declare-fun m!5545969 () Bool)

(assert (=> d!1480983 m!5545969))

(declare-fun m!5545971 () Bool)

(assert (=> d!1480983 m!5545971))

(assert (=> b!4661860 d!1480983))

(declare-fun d!1480985 () Bool)

(declare-fun dynLambda!21618 (Int tuple2!53080) Bool)

(assert (=> d!1480985 (dynLambda!21618 lambda!200510 lt!1823284)))

(declare-fun lt!1823591 () Unit!119320)

(declare-fun choose!32138 (List!52071 Int tuple2!53080) Unit!119320)

(assert (=> d!1480985 (= lt!1823591 (choose!32138 lt!1823291 lambda!200510 lt!1823284))))

(declare-fun e!2909197 () Bool)

(assert (=> d!1480985 e!2909197))

(declare-fun res!1961294 () Bool)

(assert (=> d!1480985 (=> (not res!1961294) (not e!2909197))))

(assert (=> d!1480985 (= res!1961294 (forall!11064 lt!1823291 lambda!200510))))

(assert (=> d!1480985 (= (forallContained!3262 lt!1823291 lambda!200510 lt!1823284) lt!1823591)))

(declare-fun b!4662145 () Bool)

(assert (=> b!4662145 (= e!2909197 (contains!15114 lt!1823291 lt!1823284))))

(assert (= (and d!1480985 res!1961294) b!4662145))

(declare-fun b_lambda!175243 () Bool)

(assert (=> (not b_lambda!175243) (not d!1480985)))

(declare-fun m!5545973 () Bool)

(assert (=> d!1480985 m!5545973))

(declare-fun m!5545975 () Bool)

(assert (=> d!1480985 m!5545975))

(declare-fun m!5545977 () Bool)

(assert (=> d!1480985 m!5545977))

(assert (=> b!4662145 m!5545593))

(assert (=> b!4661860 d!1480985))

(declare-fun d!1480987 () Bool)

(assert (=> d!1480987 (= (isDefined!9127 (getPair!386 lt!1823286 key!4968)) (not (isEmpty!29031 (getPair!386 lt!1823286 key!4968))))))

(declare-fun bs!1068819 () Bool)

(assert (= bs!1068819 d!1480987))

(assert (=> bs!1068819 m!5545595))

(declare-fun m!5545979 () Bool)

(assert (=> bs!1068819 m!5545979))

(assert (=> b!4661860 d!1480987))

(declare-fun d!1480989 () Bool)

(assert (=> d!1480989 (contains!15114 (toList!5246 lt!1823288) (tuple2!53081 lt!1823290 lt!1823286))))

(declare-fun lt!1823594 () Unit!119320)

(declare-fun choose!32139 (ListLongMap!3799 (_ BitVec 64) List!52070) Unit!119320)

(assert (=> d!1480989 (= lt!1823594 (choose!32139 lt!1823288 lt!1823290 lt!1823286))))

(assert (=> d!1480989 (contains!15115 lt!1823288 lt!1823290)))

(assert (=> d!1480989 (= (lemmaGetValueImpliesTupleContained!191 lt!1823288 lt!1823290 lt!1823286) lt!1823594)))

(declare-fun bs!1068820 () Bool)

(assert (= bs!1068820 d!1480989))

(declare-fun m!5545981 () Bool)

(assert (=> bs!1068820 m!5545981))

(declare-fun m!5545983 () Bool)

(assert (=> bs!1068820 m!5545983))

(assert (=> bs!1068820 m!5545603))

(assert (=> b!4661860 d!1480989))

(declare-fun d!1480991 () Bool)

(declare-fun res!1961295 () Bool)

(declare-fun e!2909198 () Bool)

(assert (=> d!1480991 (=> res!1961295 e!2909198)))

(assert (=> d!1480991 (= res!1961295 (and ((_ is Cons!51946) oldBucket!40) (= (_1!29833 (h!58104 oldBucket!40)) key!4968)))))

(assert (=> d!1480991 (= (containsKey!2764 oldBucket!40 key!4968) e!2909198)))

(declare-fun b!4662147 () Bool)

(declare-fun e!2909199 () Bool)

(assert (=> b!4662147 (= e!2909198 e!2909199)))

(declare-fun res!1961296 () Bool)

(assert (=> b!4662147 (=> (not res!1961296) (not e!2909199))))

(assert (=> b!4662147 (= res!1961296 ((_ is Cons!51946) oldBucket!40))))

(declare-fun b!4662148 () Bool)

(assert (=> b!4662148 (= e!2909199 (containsKey!2764 (t!359186 oldBucket!40) key!4968))))

(assert (= (and d!1480991 (not res!1961295)) b!4662147))

(assert (= (and b!4662147 res!1961296) b!4662148))

(assert (=> b!4662148 m!5545599))

(assert (=> b!4661860 d!1480991))

(declare-fun d!1480993 () Bool)

(declare-fun e!2909205 () Bool)

(assert (=> d!1480993 e!2909205))

(declare-fun res!1961299 () Bool)

(assert (=> d!1480993 (=> res!1961299 e!2909205)))

(declare-fun lt!1823606 () Bool)

(assert (=> d!1480993 (= res!1961299 (not lt!1823606))))

(declare-fun lt!1823604 () Bool)

(assert (=> d!1480993 (= lt!1823606 lt!1823604)))

(declare-fun lt!1823605 () Unit!119320)

(declare-fun e!2909204 () Unit!119320)

(assert (=> d!1480993 (= lt!1823605 e!2909204)))

(declare-fun c!798052 () Bool)

(assert (=> d!1480993 (= c!798052 lt!1823604)))

(declare-fun containsKey!2768 (List!52071 (_ BitVec 64)) Bool)

(assert (=> d!1480993 (= lt!1823604 (containsKey!2768 (toList!5246 lt!1823288) lt!1823290))))

(assert (=> d!1480993 (= (contains!15115 lt!1823288 lt!1823290) lt!1823606)))

(declare-fun b!4662155 () Bool)

(declare-fun lt!1823603 () Unit!119320)

(assert (=> b!4662155 (= e!2909204 lt!1823603)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1540 (List!52071 (_ BitVec 64)) Unit!119320)

(assert (=> b!4662155 (= lt!1823603 (lemmaContainsKeyImpliesGetValueByKeyDefined!1540 (toList!5246 lt!1823288) lt!1823290))))

(declare-fun isDefined!9131 (Option!11866) Bool)

(assert (=> b!4662155 (isDefined!9131 (getValueByKey!1638 (toList!5246 lt!1823288) lt!1823290))))

(declare-fun b!4662156 () Bool)

(declare-fun Unit!119351 () Unit!119320)

(assert (=> b!4662156 (= e!2909204 Unit!119351)))

(declare-fun b!4662157 () Bool)

(assert (=> b!4662157 (= e!2909205 (isDefined!9131 (getValueByKey!1638 (toList!5246 lt!1823288) lt!1823290)))))

(assert (= (and d!1480993 c!798052) b!4662155))

(assert (= (and d!1480993 (not c!798052)) b!4662156))

(assert (= (and d!1480993 (not res!1961299)) b!4662157))

(declare-fun m!5545985 () Bool)

(assert (=> d!1480993 m!5545985))

(declare-fun m!5545987 () Bool)

(assert (=> b!4662155 m!5545987))

(assert (=> b!4662155 m!5545941))

(assert (=> b!4662155 m!5545941))

(declare-fun m!5545989 () Bool)

(assert (=> b!4662155 m!5545989))

(assert (=> b!4662157 m!5545941))

(assert (=> b!4662157 m!5545941))

(assert (=> b!4662157 m!5545989))

(assert (=> b!4661860 d!1480993))

(declare-fun d!1480995 () Bool)

(declare-fun res!1961300 () Bool)

(declare-fun e!2909206 () Bool)

(assert (=> d!1480995 (=> res!1961300 e!2909206)))

(assert (=> d!1480995 (= res!1961300 (not ((_ is Cons!51946) lt!1823297)))))

(assert (=> d!1480995 (= (noDuplicateKeys!1658 lt!1823297) e!2909206)))

(declare-fun b!4662158 () Bool)

(declare-fun e!2909207 () Bool)

(assert (=> b!4662158 (= e!2909206 e!2909207)))

(declare-fun res!1961301 () Bool)

(assert (=> b!4662158 (=> (not res!1961301) (not e!2909207))))

(assert (=> b!4662158 (= res!1961301 (not (containsKey!2764 (t!359186 lt!1823297) (_1!29833 (h!58104 lt!1823297)))))))

(declare-fun b!4662159 () Bool)

(assert (=> b!4662159 (= e!2909207 (noDuplicateKeys!1658 (t!359186 lt!1823297)))))

(assert (= (and d!1480995 (not res!1961300)) b!4662158))

(assert (= (and b!4662158 res!1961301) b!4662159))

(declare-fun m!5545991 () Bool)

(assert (=> b!4662158 m!5545991))

(declare-fun m!5545993 () Bool)

(assert (=> b!4662159 m!5545993))

(assert (=> b!4661853 d!1480995))

(declare-fun b!4662160 () Bool)

(assert (=> b!4662160 false))

(declare-fun lt!1823613 () Unit!119320)

(declare-fun lt!1823611 () Unit!119320)

(assert (=> b!4662160 (= lt!1823613 lt!1823611)))

(assert (=> b!4662160 (containsKey!2767 (toList!5245 (extractMap!1714 lt!1823294)) key!4968)))

(assert (=> b!4662160 (= lt!1823611 (lemmaInGetKeysListThenContainsKey!762 (toList!5245 (extractMap!1714 lt!1823294)) key!4968))))

(declare-fun e!2909210 () Unit!119320)

(declare-fun Unit!119352 () Unit!119320)

(assert (=> b!4662160 (= e!2909210 Unit!119352)))

(declare-fun b!4662161 () Bool)

(declare-fun e!2909208 () Bool)

(declare-fun e!2909213 () Bool)

(assert (=> b!4662161 (= e!2909208 e!2909213)))

(declare-fun res!1961303 () Bool)

(assert (=> b!4662161 (=> (not res!1961303) (not e!2909213))))

(assert (=> b!4662161 (= res!1961303 (isDefined!9130 (getValueByKey!1637 (toList!5245 (extractMap!1714 lt!1823294)) key!4968)))))

(declare-fun d!1480997 () Bool)

(assert (=> d!1480997 e!2909208))

(declare-fun res!1961302 () Bool)

(assert (=> d!1480997 (=> res!1961302 e!2909208)))

(declare-fun e!2909209 () Bool)

(assert (=> d!1480997 (= res!1961302 e!2909209)))

(declare-fun res!1961304 () Bool)

(assert (=> d!1480997 (=> (not res!1961304) (not e!2909209))))

(declare-fun lt!1823612 () Bool)

(assert (=> d!1480997 (= res!1961304 (not lt!1823612))))

(declare-fun lt!1823610 () Bool)

(assert (=> d!1480997 (= lt!1823612 lt!1823610)))

(declare-fun lt!1823608 () Unit!119320)

(declare-fun e!2909211 () Unit!119320)

(assert (=> d!1480997 (= lt!1823608 e!2909211)))

(declare-fun c!798053 () Bool)

(assert (=> d!1480997 (= c!798053 lt!1823610)))

(assert (=> d!1480997 (= lt!1823610 (containsKey!2767 (toList!5245 (extractMap!1714 lt!1823294)) key!4968))))

(assert (=> d!1480997 (= (contains!15113 (extractMap!1714 lt!1823294) key!4968) lt!1823612)))

(declare-fun b!4662162 () Bool)

(declare-fun Unit!119353 () Unit!119320)

(assert (=> b!4662162 (= e!2909210 Unit!119353)))

(declare-fun b!4662163 () Bool)

(declare-fun e!2909212 () List!52073)

(assert (=> b!4662163 (= e!2909212 (getKeysList!763 (toList!5245 (extractMap!1714 lt!1823294))))))

(declare-fun bm!325708 () Bool)

(declare-fun call!325713 () Bool)

(assert (=> bm!325708 (= call!325713 (contains!15118 e!2909212 key!4968))))

(declare-fun c!798055 () Bool)

(assert (=> bm!325708 (= c!798055 c!798053)))

(declare-fun b!4662164 () Bool)

(assert (=> b!4662164 (= e!2909213 (contains!15118 (keys!18420 (extractMap!1714 lt!1823294)) key!4968))))

(declare-fun b!4662165 () Bool)

(declare-fun lt!1823607 () Unit!119320)

(assert (=> b!4662165 (= e!2909211 lt!1823607)))

(declare-fun lt!1823614 () Unit!119320)

(assert (=> b!4662165 (= lt!1823614 (lemmaContainsKeyImpliesGetValueByKeyDefined!1539 (toList!5245 (extractMap!1714 lt!1823294)) key!4968))))

(assert (=> b!4662165 (isDefined!9130 (getValueByKey!1637 (toList!5245 (extractMap!1714 lt!1823294)) key!4968))))

(declare-fun lt!1823609 () Unit!119320)

(assert (=> b!4662165 (= lt!1823609 lt!1823614)))

(assert (=> b!4662165 (= lt!1823607 (lemmaInListThenGetKeysListContains!758 (toList!5245 (extractMap!1714 lt!1823294)) key!4968))))

(assert (=> b!4662165 call!325713))

(declare-fun b!4662166 () Bool)

(assert (=> b!4662166 (= e!2909211 e!2909210)))

(declare-fun c!798054 () Bool)

(assert (=> b!4662166 (= c!798054 call!325713)))

(declare-fun b!4662167 () Bool)

(assert (=> b!4662167 (= e!2909212 (keys!18420 (extractMap!1714 lt!1823294)))))

(declare-fun b!4662168 () Bool)

(assert (=> b!4662168 (= e!2909209 (not (contains!15118 (keys!18420 (extractMap!1714 lt!1823294)) key!4968)))))

(assert (= (and d!1480997 c!798053) b!4662165))

(assert (= (and d!1480997 (not c!798053)) b!4662166))

(assert (= (and b!4662166 c!798054) b!4662160))

(assert (= (and b!4662166 (not c!798054)) b!4662162))

(assert (= (or b!4662165 b!4662166) bm!325708))

(assert (= (and bm!325708 c!798055) b!4662163))

(assert (= (and bm!325708 (not c!798055)) b!4662167))

(assert (= (and d!1480997 res!1961304) b!4662168))

(assert (= (and d!1480997 (not res!1961302)) b!4662161))

(assert (= (and b!4662161 res!1961303) b!4662164))

(declare-fun m!5545995 () Bool)

(assert (=> b!4662165 m!5545995))

(declare-fun m!5545997 () Bool)

(assert (=> b!4662165 m!5545997))

(assert (=> b!4662165 m!5545997))

(declare-fun m!5545999 () Bool)

(assert (=> b!4662165 m!5545999))

(declare-fun m!5546001 () Bool)

(assert (=> b!4662165 m!5546001))

(declare-fun m!5546003 () Bool)

(assert (=> bm!325708 m!5546003))

(declare-fun m!5546005 () Bool)

(assert (=> b!4662163 m!5546005))

(declare-fun m!5546007 () Bool)

(assert (=> b!4662160 m!5546007))

(declare-fun m!5546009 () Bool)

(assert (=> b!4662160 m!5546009))

(assert (=> b!4662168 m!5545615))

(declare-fun m!5546011 () Bool)

(assert (=> b!4662168 m!5546011))

(assert (=> b!4662168 m!5546011))

(declare-fun m!5546013 () Bool)

(assert (=> b!4662168 m!5546013))

(assert (=> b!4662167 m!5545615))

(assert (=> b!4662167 m!5546011))

(assert (=> b!4662164 m!5545615))

(assert (=> b!4662164 m!5546011))

(assert (=> b!4662164 m!5546011))

(assert (=> b!4662164 m!5546013))

(assert (=> d!1480997 m!5546007))

(assert (=> b!4662161 m!5545997))

(assert (=> b!4662161 m!5545997))

(assert (=> b!4662161 m!5545999))

(assert (=> b!4661853 d!1480997))

(declare-fun bs!1068821 () Bool)

(declare-fun d!1480999 () Bool)

(assert (= bs!1068821 (and d!1480999 b!4661860)))

(declare-fun lambda!200614 () Int)

(assert (=> bs!1068821 (= lambda!200614 lambda!200510)))

(declare-fun bs!1068822 () Bool)

(assert (= bs!1068822 (and d!1480999 d!1480969)))

(assert (=> bs!1068822 (= lambda!200614 lambda!200603)))

(declare-fun bs!1068823 () Bool)

(assert (= bs!1068823 (and d!1480999 d!1480935)))

(assert (=> bs!1068823 (= lambda!200614 lambda!200598)))

(declare-fun bs!1068824 () Bool)

(assert (= bs!1068824 (and d!1480999 d!1480971)))

(assert (=> bs!1068824 (= lambda!200614 lambda!200610)))

(declare-fun bs!1068825 () Bool)

(assert (= bs!1068825 (and d!1480999 d!1480981)))

(assert (=> bs!1068825 (= lambda!200614 lambda!200613)))

(declare-fun lt!1823615 () ListMap!4585)

(assert (=> d!1480999 (invariantList!1312 (toList!5245 lt!1823615))))

(declare-fun e!2909214 () ListMap!4585)

(assert (=> d!1480999 (= lt!1823615 e!2909214)))

(declare-fun c!798056 () Bool)

(assert (=> d!1480999 (= c!798056 ((_ is Cons!51947) lt!1823294))))

(assert (=> d!1480999 (forall!11064 lt!1823294 lambda!200614)))

(assert (=> d!1480999 (= (extractMap!1714 lt!1823294) lt!1823615)))

(declare-fun b!4662169 () Bool)

(assert (=> b!4662169 (= e!2909214 (addToMapMapFromBucket!1115 (_2!29834 (h!58105 lt!1823294)) (extractMap!1714 (t!359187 lt!1823294))))))

(declare-fun b!4662170 () Bool)

(assert (=> b!4662170 (= e!2909214 (ListMap!4586 Nil!51946))))

(assert (= (and d!1480999 c!798056) b!4662169))

(assert (= (and d!1480999 (not c!798056)) b!4662170))

(declare-fun m!5546015 () Bool)

(assert (=> d!1480999 m!5546015))

(declare-fun m!5546017 () Bool)

(assert (=> d!1480999 m!5546017))

(declare-fun m!5546019 () Bool)

(assert (=> b!4662169 m!5546019))

(assert (=> b!4662169 m!5546019))

(declare-fun m!5546021 () Bool)

(assert (=> b!4662169 m!5546021))

(assert (=> b!4661853 d!1480999))

(declare-fun bs!1068826 () Bool)

(declare-fun d!1481001 () Bool)

(assert (= bs!1068826 (and d!1481001 b!4661860)))

(declare-fun lambda!200617 () Int)

(assert (=> bs!1068826 (= lambda!200617 lambda!200510)))

(declare-fun bs!1068827 () Bool)

(assert (= bs!1068827 (and d!1481001 d!1480969)))

(assert (=> bs!1068827 (= lambda!200617 lambda!200603)))

(declare-fun bs!1068828 () Bool)

(assert (= bs!1068828 (and d!1481001 d!1480935)))

(assert (=> bs!1068828 (= lambda!200617 lambda!200598)))

(declare-fun bs!1068829 () Bool)

(assert (= bs!1068829 (and d!1481001 d!1480999)))

(assert (=> bs!1068829 (= lambda!200617 lambda!200614)))

(declare-fun bs!1068830 () Bool)

(assert (= bs!1068830 (and d!1481001 d!1480971)))

(assert (=> bs!1068830 (= lambda!200617 lambda!200610)))

(declare-fun bs!1068831 () Bool)

(assert (= bs!1068831 (and d!1481001 d!1480981)))

(assert (=> bs!1068831 (= lambda!200617 lambda!200613)))

(assert (=> d!1481001 (contains!15113 (extractMap!1714 (toList!5246 (ListLongMap!3800 lt!1823294))) key!4968)))

(declare-fun lt!1823618 () Unit!119320)

(declare-fun choose!32140 (ListLongMap!3799 K!13295 Hashable!6055) Unit!119320)

(assert (=> d!1481001 (= lt!1823618 (choose!32140 (ListLongMap!3800 lt!1823294) key!4968 hashF!1389))))

(assert (=> d!1481001 (forall!11064 (toList!5246 (ListLongMap!3800 lt!1823294)) lambda!200617)))

(assert (=> d!1481001 (= (lemmaListContainsThenExtractedMapContains!392 (ListLongMap!3800 lt!1823294) key!4968 hashF!1389) lt!1823618)))

(declare-fun bs!1068832 () Bool)

(assert (= bs!1068832 d!1481001))

(declare-fun m!5546023 () Bool)

(assert (=> bs!1068832 m!5546023))

(assert (=> bs!1068832 m!5546023))

(declare-fun m!5546025 () Bool)

(assert (=> bs!1068832 m!5546025))

(declare-fun m!5546027 () Bool)

(assert (=> bs!1068832 m!5546027))

(declare-fun m!5546029 () Bool)

(assert (=> bs!1068832 m!5546029))

(assert (=> b!4661853 d!1481001))

(declare-fun bs!1068833 () Bool)

(declare-fun d!1481003 () Bool)

(assert (= bs!1068833 (and d!1481003 b!4661978)))

(declare-fun lambda!200618 () Int)

(assert (=> bs!1068833 (not (= lambda!200618 lambda!200585))))

(declare-fun bs!1068834 () Bool)

(assert (= bs!1068834 (and d!1481003 b!4661982)))

(assert (=> bs!1068834 (not (= lambda!200618 lambda!200586))))

(assert (=> bs!1068834 (not (= lambda!200618 lambda!200587))))

(declare-fun bs!1068835 () Bool)

(assert (= bs!1068835 (and d!1481003 d!1480901)))

(assert (=> bs!1068835 (not (= lambda!200618 lambda!200588))))

(declare-fun bs!1068836 () Bool)

(assert (= bs!1068836 (and d!1481003 d!1480897)))

(assert (=> bs!1068836 (= lambda!200618 lambda!200516)))

(assert (=> d!1481003 true))

(assert (=> d!1481003 true))

(assert (=> d!1481003 (= (allKeysSameHash!1512 newBucket!224 hash!414 hashF!1389) (forall!11063 newBucket!224 lambda!200618))))

(declare-fun bs!1068837 () Bool)

(assert (= bs!1068837 d!1481003))

(declare-fun m!5546031 () Bool)

(assert (=> bs!1068837 m!5546031))

(assert (=> b!4661854 d!1481003))

(declare-fun d!1481005 () Bool)

(declare-fun res!1961305 () Bool)

(declare-fun e!2909215 () Bool)

(assert (=> d!1481005 (=> res!1961305 e!2909215)))

(assert (=> d!1481005 (= res!1961305 (not ((_ is Cons!51946) oldBucket!40)))))

(assert (=> d!1481005 (= (noDuplicateKeys!1658 oldBucket!40) e!2909215)))

(declare-fun b!4662171 () Bool)

(declare-fun e!2909216 () Bool)

(assert (=> b!4662171 (= e!2909215 e!2909216)))

(declare-fun res!1961306 () Bool)

(assert (=> b!4662171 (=> (not res!1961306) (not e!2909216))))

(assert (=> b!4662171 (= res!1961306 (not (containsKey!2764 (t!359186 oldBucket!40) (_1!29833 (h!58104 oldBucket!40)))))))

(declare-fun b!4662172 () Bool)

(assert (=> b!4662172 (= e!2909216 (noDuplicateKeys!1658 (t!359186 oldBucket!40)))))

(assert (= (and d!1481005 (not res!1961305)) b!4662171))

(assert (= (and b!4662171 res!1961306) b!4662172))

(declare-fun m!5546033 () Bool)

(assert (=> b!4662171 m!5546033))

(declare-fun m!5546035 () Bool)

(assert (=> b!4662172 m!5546035))

(assert (=> start!469656 d!1481005))

(declare-fun b!4662184 () Bool)

(declare-fun e!2909222 () List!52070)

(assert (=> b!4662184 (= e!2909222 Nil!51946)))

(declare-fun b!4662181 () Bool)

(declare-fun e!2909221 () List!52070)

(assert (=> b!4662181 (= e!2909221 (t!359186 oldBucket!40))))

(declare-fun b!4662182 () Bool)

(assert (=> b!4662182 (= e!2909221 e!2909222)))

(declare-fun c!798061 () Bool)

(assert (=> b!4662182 (= c!798061 ((_ is Cons!51946) oldBucket!40))))

(declare-fun d!1481007 () Bool)

(declare-fun lt!1823621 () List!52070)

(assert (=> d!1481007 (not (containsKey!2764 lt!1823621 key!4968))))

(assert (=> d!1481007 (= lt!1823621 e!2909221)))

(declare-fun c!798062 () Bool)

(assert (=> d!1481007 (= c!798062 (and ((_ is Cons!51946) oldBucket!40) (= (_1!29833 (h!58104 oldBucket!40)) key!4968)))))

(assert (=> d!1481007 (noDuplicateKeys!1658 oldBucket!40)))

(assert (=> d!1481007 (= (removePairForKey!1281 oldBucket!40 key!4968) lt!1823621)))

(declare-fun b!4662183 () Bool)

(assert (=> b!4662183 (= e!2909222 (Cons!51946 (h!58104 oldBucket!40) (removePairForKey!1281 (t!359186 oldBucket!40) key!4968)))))

(assert (= (and d!1481007 c!798062) b!4662181))

(assert (= (and d!1481007 (not c!798062)) b!4662182))

(assert (= (and b!4662182 c!798061) b!4662183))

(assert (= (and b!4662182 (not c!798061)) b!4662184))

(declare-fun m!5546037 () Bool)

(assert (=> d!1481007 m!5546037))

(assert (=> d!1481007 m!5545573))

(assert (=> b!4662183 m!5545559))

(assert (=> b!4661852 d!1481007))

(declare-fun d!1481009 () Bool)

(declare-fun res!1961307 () Bool)

(declare-fun e!2909223 () Bool)

(assert (=> d!1481009 (=> res!1961307 e!2909223)))

(assert (=> d!1481009 (= res!1961307 (not ((_ is Cons!51946) newBucket!224)))))

(assert (=> d!1481009 (= (noDuplicateKeys!1658 newBucket!224) e!2909223)))

(declare-fun b!4662185 () Bool)

(declare-fun e!2909224 () Bool)

(assert (=> b!4662185 (= e!2909223 e!2909224)))

(declare-fun res!1961308 () Bool)

(assert (=> b!4662185 (=> (not res!1961308) (not e!2909224))))

(assert (=> b!4662185 (= res!1961308 (not (containsKey!2764 (t!359186 newBucket!224) (_1!29833 (h!58104 newBucket!224)))))))

(declare-fun b!4662186 () Bool)

(assert (=> b!4662186 (= e!2909224 (noDuplicateKeys!1658 (t!359186 newBucket!224)))))

(assert (= (and d!1481009 (not res!1961307)) b!4662185))

(assert (= (and b!4662185 res!1961308) b!4662186))

(declare-fun m!5546039 () Bool)

(assert (=> b!4662185 m!5546039))

(declare-fun m!5546041 () Bool)

(assert (=> b!4662186 m!5546041))

(assert (=> b!4661863 d!1481009))

(declare-fun b!4662190 () Bool)

(declare-fun e!2909226 () List!52070)

(assert (=> b!4662190 (= e!2909226 Nil!51946)))

(declare-fun b!4662187 () Bool)

(declare-fun e!2909225 () List!52070)

(assert (=> b!4662187 (= e!2909225 (t!359186 (t!359186 oldBucket!40)))))

(declare-fun b!4662188 () Bool)

(assert (=> b!4662188 (= e!2909225 e!2909226)))

(declare-fun c!798063 () Bool)

(assert (=> b!4662188 (= c!798063 ((_ is Cons!51946) (t!359186 oldBucket!40)))))

(declare-fun d!1481011 () Bool)

(declare-fun lt!1823622 () List!52070)

(assert (=> d!1481011 (not (containsKey!2764 lt!1823622 key!4968))))

(assert (=> d!1481011 (= lt!1823622 e!2909225)))

(declare-fun c!798064 () Bool)

(assert (=> d!1481011 (= c!798064 (and ((_ is Cons!51946) (t!359186 oldBucket!40)) (= (_1!29833 (h!58104 (t!359186 oldBucket!40))) key!4968)))))

(assert (=> d!1481011 (noDuplicateKeys!1658 (t!359186 oldBucket!40))))

(assert (=> d!1481011 (= (removePairForKey!1281 (t!359186 oldBucket!40) key!4968) lt!1823622)))

(declare-fun b!4662189 () Bool)

(assert (=> b!4662189 (= e!2909226 (Cons!51946 (h!58104 (t!359186 oldBucket!40)) (removePairForKey!1281 (t!359186 (t!359186 oldBucket!40)) key!4968)))))

(assert (= (and d!1481011 c!798064) b!4662187))

(assert (= (and d!1481011 (not c!798064)) b!4662188))

(assert (= (and b!4662188 c!798063) b!4662189))

(assert (= (and b!4662188 (not c!798063)) b!4662190))

(declare-fun m!5546043 () Bool)

(assert (=> d!1481011 m!5546043))

(assert (=> d!1481011 m!5546035))

(declare-fun m!5546045 () Bool)

(assert (=> b!4662189 m!5546045))

(assert (=> b!4661856 d!1481011))

(declare-fun b!4662194 () Bool)

(declare-fun e!2909228 () List!52070)

(assert (=> b!4662194 (= e!2909228 Nil!51946)))

(declare-fun b!4662191 () Bool)

(declare-fun e!2909227 () List!52070)

(assert (=> b!4662191 (= e!2909227 (t!359186 lt!1823297))))

(declare-fun b!4662192 () Bool)

(assert (=> b!4662192 (= e!2909227 e!2909228)))

(declare-fun c!798065 () Bool)

(assert (=> b!4662192 (= c!798065 ((_ is Cons!51946) lt!1823297))))

(declare-fun d!1481013 () Bool)

(declare-fun lt!1823623 () List!52070)

(assert (=> d!1481013 (not (containsKey!2764 lt!1823623 key!4968))))

(assert (=> d!1481013 (= lt!1823623 e!2909227)))

(declare-fun c!798066 () Bool)

(assert (=> d!1481013 (= c!798066 (and ((_ is Cons!51946) lt!1823297) (= (_1!29833 (h!58104 lt!1823297)) key!4968)))))

(assert (=> d!1481013 (noDuplicateKeys!1658 lt!1823297)))

(assert (=> d!1481013 (= (removePairForKey!1281 lt!1823297 key!4968) lt!1823623)))

(declare-fun b!4662193 () Bool)

(assert (=> b!4662193 (= e!2909228 (Cons!51946 (h!58104 lt!1823297) (removePairForKey!1281 (t!359186 lt!1823297) key!4968)))))

(assert (= (and d!1481013 c!798066) b!4662191))

(assert (= (and d!1481013 (not c!798066)) b!4662192))

(assert (= (and b!4662192 c!798065) b!4662193))

(assert (= (and b!4662192 (not c!798065)) b!4662194))

(declare-fun m!5546047 () Bool)

(assert (=> d!1481013 m!5546047))

(assert (=> d!1481013 m!5545613))

(declare-fun m!5546049 () Bool)

(assert (=> b!4662193 m!5546049))

(assert (=> b!4661855 d!1481013))

(declare-fun d!1481015 () Bool)

(assert (=> d!1481015 (= (tail!8261 newBucket!224) (t!359186 newBucket!224))))

(assert (=> b!4661855 d!1481015))

(declare-fun d!1481017 () Bool)

(assert (=> d!1481017 (= (tail!8261 oldBucket!40) (t!359186 oldBucket!40))))

(assert (=> b!4661855 d!1481017))

(declare-fun b!4662199 () Bool)

(declare-fun tp!1343506 () Bool)

(declare-fun e!2909231 () Bool)

(assert (=> b!4662199 (= e!2909231 (and tp_is_empty!29925 tp_is_empty!29927 tp!1343506))))

(assert (=> b!4661864 (= tp!1343499 e!2909231)))

(assert (= (and b!4661864 ((_ is Cons!51946) (t!359186 newBucket!224))) b!4662199))

(declare-fun b!4662200 () Bool)

(declare-fun e!2909232 () Bool)

(declare-fun tp!1343507 () Bool)

(assert (=> b!4662200 (= e!2909232 (and tp_is_empty!29925 tp_is_empty!29927 tp!1343507))))

(assert (=> b!4661850 (= tp!1343498 e!2909232)))

(assert (= (and b!4661850 ((_ is Cons!51946) (t!359186 oldBucket!40))) b!4662200))

(declare-fun b_lambda!175245 () Bool)

(assert (= b_lambda!175243 (or b!4661860 b_lambda!175245)))

(declare-fun bs!1068838 () Bool)

(declare-fun d!1481019 () Bool)

(assert (= bs!1068838 (and d!1481019 b!4661860)))

(assert (=> bs!1068838 (= (dynLambda!21618 lambda!200510 lt!1823284) (noDuplicateKeys!1658 (_2!29834 lt!1823284)))))

(declare-fun m!5546051 () Bool)

(assert (=> bs!1068838 m!5546051))

(assert (=> d!1480985 d!1481019))

(check-sat (not b!4662158) (not d!1480999) (not b!4662136) tp_is_empty!29925 (not b!4662183) (not b!4662199) (not b!4662118) (not b!4662159) (not d!1480971) (not b!4662018) (not b!4662090) (not b!4662135) (not b!4662139) (not b!4662093) (not b!4662169) (not d!1480989) (not bm!325701) (not b!4662160) (not b!4662137) (not b!4662189) (not b!4662103) (not d!1480977) (not bm!325703) (not d!1481011) (not b!4662157) (not b!4662148) (not d!1480969) (not d!1481003) (not b!4661982) (not d!1481007) (not b!4662155) (not b!4662168) (not bm!325707) (not b!4662185) (not b!4662145) (not b!4662164) (not b!4662019) (not bm!325708) (not d!1480987) (not b!4662171) (not d!1480981) (not d!1481013) (not b!4661981) (not b!4662161) (not d!1481001) (not b!4662200) (not b!4662112) (not b!4662083) (not d!1480895) (not b!4662086) (not d!1480985) (not b!4662165) (not b!4661980) (not b!4662085) (not b!4662106) (not d!1480935) (not b!4662163) (not b!4662004) (not b!4662089) (not d!1480975) (not bm!325702) (not b!4662105) (not d!1480973) (not b!4661979) (not b!4662087) (not bs!1068838) (not b_lambda!175245) (not d!1480993) (not b!4662172) (not d!1480901) (not d!1480983) (not d!1480897) (not d!1480945) (not b!4662104) (not b!4662082) tp_is_empty!29927 (not b!4662193) (not d!1480997) (not b!4662138) (not b!4662186) (not b!4662167))
(check-sat)
