; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467420 () Bool)

(assert start!467420)

(declare-fun b!4644702 () Bool)

(declare-fun res!1951362 () Bool)

(declare-fun e!2897478 () Bool)

(assert (=> b!4644702 (=> (not res!1951362) (not e!2897478))))

(declare-datatypes ((Hashable!6009 0))(
  ( (HashableExt!6008 (__x!31712 Int)) )
))
(declare-fun hashF!1389 () Hashable!6009)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13180 0))(
  ( (K!13181 (val!18815 Int)) )
))
(declare-fun key!4968 () K!13180)

(declare-fun hash!3727 (Hashable!6009 K!13180) (_ BitVec 64))

(assert (=> b!4644702 (= res!1951362 (= (hash!3727 hashF!1389 key!4968) hash!414))))

(declare-fun b!4644703 () Bool)

(declare-fun res!1951360 () Bool)

(assert (=> b!4644703 (=> (not res!1951360) (not e!2897478))))

(declare-datatypes ((V!13426 0))(
  ( (V!13427 (val!18816 Int)) )
))
(declare-datatypes ((tuple2!52894 0))(
  ( (tuple2!52895 (_1!29741 K!13180) (_2!29741 V!13426)) )
))
(declare-datatypes ((List!51942 0))(
  ( (Nil!51818) (Cons!51818 (h!57940 tuple2!52894) (t!359038 List!51942)) )
))
(declare-fun newBucket!224 () List!51942)

(declare-fun allKeysSameHash!1466 (List!51942 (_ BitVec 64) Hashable!6009) Bool)

(assert (=> b!4644703 (= res!1951360 (allKeysSameHash!1466 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1951359 () Bool)

(assert (=> start!467420 (=> (not res!1951359) (not e!2897478))))

(declare-fun oldBucket!40 () List!51942)

(declare-fun noDuplicateKeys!1612 (List!51942) Bool)

(assert (=> start!467420 (= res!1951359 (noDuplicateKeys!1612 oldBucket!40))))

(assert (=> start!467420 e!2897478))

(assert (=> start!467420 true))

(declare-fun e!2897477 () Bool)

(assert (=> start!467420 e!2897477))

(declare-fun tp_is_empty!29741 () Bool)

(assert (=> start!467420 tp_is_empty!29741))

(declare-fun e!2897476 () Bool)

(assert (=> start!467420 e!2897476))

(declare-fun b!4644704 () Bool)

(declare-fun res!1951358 () Bool)

(assert (=> b!4644704 (=> (not res!1951358) (not e!2897478))))

(declare-datatypes ((ListMap!4493 0))(
  ( (ListMap!4494 (toList!5168 List!51942)) )
))
(declare-fun contains!14971 (ListMap!4493 K!13180) Bool)

(declare-datatypes ((tuple2!52896 0))(
  ( (tuple2!52897 (_1!29742 (_ BitVec 64)) (_2!29742 List!51942)) )
))
(declare-datatypes ((List!51943 0))(
  ( (Nil!51819) (Cons!51819 (h!57941 tuple2!52896) (t!359039 List!51943)) )
))
(declare-fun extractMap!1668 (List!51943) ListMap!4493)

(assert (=> b!4644704 (= res!1951358 (contains!14971 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819)) key!4968))))

(declare-fun b!4644705 () Bool)

(declare-fun res!1951363 () Bool)

(assert (=> b!4644705 (=> (not res!1951363) (not e!2897478))))

(assert (=> b!4644705 (= res!1951363 (allKeysSameHash!1466 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4644706 () Bool)

(declare-fun res!1951361 () Bool)

(assert (=> b!4644706 (=> (not res!1951361) (not e!2897478))))

(assert (=> b!4644706 (= res!1951361 (noDuplicateKeys!1612 newBucket!224))))

(declare-fun b!4644707 () Bool)

(declare-fun res!1951364 () Bool)

(assert (=> b!4644707 (=> (not res!1951364) (not e!2897478))))

(declare-fun removePairForKey!1235 (List!51942 K!13180) List!51942)

(assert (=> b!4644707 (= res!1951364 (= (removePairForKey!1235 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4644708 () Bool)

(declare-fun size!35964 (List!51942) Int)

(assert (=> b!4644708 (= e!2897478 (< (size!35964 oldBucket!40) 0))))

(declare-fun tp_is_empty!29743 () Bool)

(declare-fun tp!1343030 () Bool)

(declare-fun b!4644709 () Bool)

(assert (=> b!4644709 (= e!2897477 (and tp_is_empty!29741 tp_is_empty!29743 tp!1343030))))

(declare-fun b!4644710 () Bool)

(declare-fun tp!1343031 () Bool)

(assert (=> b!4644710 (= e!2897476 (and tp_is_empty!29741 tp_is_empty!29743 tp!1343031))))

(assert (= (and start!467420 res!1951359) b!4644706))

(assert (= (and b!4644706 res!1951361) b!4644707))

(assert (= (and b!4644707 res!1951364) b!4644705))

(assert (= (and b!4644705 res!1951363) b!4644704))

(assert (= (and b!4644704 res!1951358) b!4644702))

(assert (= (and b!4644702 res!1951362) b!4644703))

(assert (= (and b!4644703 res!1951360) b!4644708))

(get-info :version)

(assert (= (and start!467420 ((_ is Cons!51818) oldBucket!40)) b!4644709))

(assert (= (and start!467420 ((_ is Cons!51818) newBucket!224)) b!4644710))

(declare-fun m!5509737 () Bool)

(assert (=> b!4644707 m!5509737))

(declare-fun m!5509739 () Bool)

(assert (=> b!4644708 m!5509739))

(declare-fun m!5509741 () Bool)

(assert (=> b!4644706 m!5509741))

(declare-fun m!5509743 () Bool)

(assert (=> b!4644705 m!5509743))

(declare-fun m!5509745 () Bool)

(assert (=> start!467420 m!5509745))

(declare-fun m!5509747 () Bool)

(assert (=> b!4644704 m!5509747))

(assert (=> b!4644704 m!5509747))

(declare-fun m!5509749 () Bool)

(assert (=> b!4644704 m!5509749))

(declare-fun m!5509751 () Bool)

(assert (=> b!4644703 m!5509751))

(declare-fun m!5509753 () Bool)

(assert (=> b!4644702 m!5509753))

(check-sat (not b!4644705) tp_is_empty!29741 tp_is_empty!29743 (not b!4644703) (not start!467420) (not b!4644702) (not b!4644704) (not b!4644710) (not b!4644709) (not b!4644706) (not b!4644707) (not b!4644708))
(check-sat)
(get-model)

(declare-fun d!1464728 () Bool)

(declare-fun res!1951369 () Bool)

(declare-fun e!2897483 () Bool)

(assert (=> d!1464728 (=> res!1951369 e!2897483)))

(assert (=> d!1464728 (= res!1951369 (not ((_ is Cons!51818) newBucket!224)))))

(assert (=> d!1464728 (= (noDuplicateKeys!1612 newBucket!224) e!2897483)))

(declare-fun b!4644715 () Bool)

(declare-fun e!2897484 () Bool)

(assert (=> b!4644715 (= e!2897483 e!2897484)))

(declare-fun res!1951370 () Bool)

(assert (=> b!4644715 (=> (not res!1951370) (not e!2897484))))

(declare-fun containsKey!2675 (List!51942 K!13180) Bool)

(assert (=> b!4644715 (= res!1951370 (not (containsKey!2675 (t!359038 newBucket!224) (_1!29741 (h!57940 newBucket!224)))))))

(declare-fun b!4644716 () Bool)

(assert (=> b!4644716 (= e!2897484 (noDuplicateKeys!1612 (t!359038 newBucket!224)))))

(assert (= (and d!1464728 (not res!1951369)) b!4644715))

(assert (= (and b!4644715 res!1951370) b!4644716))

(declare-fun m!5509755 () Bool)

(assert (=> b!4644715 m!5509755))

(declare-fun m!5509757 () Bool)

(assert (=> b!4644716 m!5509757))

(assert (=> b!4644706 d!1464728))

(declare-fun b!4644747 () Bool)

(assert (=> b!4644747 false))

(declare-datatypes ((Unit!116135 0))(
  ( (Unit!116136) )
))
(declare-fun lt!1809294 () Unit!116135)

(declare-fun lt!1809297 () Unit!116135)

(assert (=> b!4644747 (= lt!1809294 lt!1809297)))

(declare-fun containsKey!2676 (List!51942 K!13180) Bool)

(assert (=> b!4644747 (containsKey!2676 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!726 (List!51942 K!13180) Unit!116135)

(assert (=> b!4644747 (= lt!1809297 (lemmaInGetKeysListThenContainsKey!726 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968))))

(declare-fun e!2897509 () Unit!116135)

(declare-fun Unit!116137 () Unit!116135)

(assert (=> b!4644747 (= e!2897509 Unit!116137)))

(declare-fun b!4644748 () Bool)

(declare-fun e!2897511 () Bool)

(declare-fun e!2897510 () Bool)

(assert (=> b!4644748 (= e!2897511 e!2897510)))

(declare-fun res!1951384 () Bool)

(assert (=> b!4644748 (=> (not res!1951384) (not e!2897510))))

(declare-datatypes ((Option!11796 0))(
  ( (None!11795) (Some!11795 (v!46045 V!13426)) )
))
(declare-fun isDefined!9061 (Option!11796) Bool)

(declare-fun getValueByKey!1584 (List!51942 K!13180) Option!11796)

(assert (=> b!4644748 (= res!1951384 (isDefined!9061 (getValueByKey!1584 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968)))))

(declare-fun b!4644749 () Bool)

(declare-datatypes ((List!51945 0))(
  ( (Nil!51821) (Cons!51821 (h!57945 K!13180) (t!359041 List!51945)) )
))
(declare-fun contains!14973 (List!51945 K!13180) Bool)

(declare-fun keys!18332 (ListMap!4493) List!51945)

(assert (=> b!4644749 (= e!2897510 (contains!14973 (keys!18332 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968))))

(declare-fun d!1464732 () Bool)

(assert (=> d!1464732 e!2897511))

(declare-fun res!1951383 () Bool)

(assert (=> d!1464732 (=> res!1951383 e!2897511)))

(declare-fun e!2897507 () Bool)

(assert (=> d!1464732 (= res!1951383 e!2897507)))

(declare-fun res!1951385 () Bool)

(assert (=> d!1464732 (=> (not res!1951385) (not e!2897507))))

(declare-fun lt!1809291 () Bool)

(assert (=> d!1464732 (= res!1951385 (not lt!1809291))))

(declare-fun lt!1809295 () Bool)

(assert (=> d!1464732 (= lt!1809291 lt!1809295)))

(declare-fun lt!1809298 () Unit!116135)

(declare-fun e!2897508 () Unit!116135)

(assert (=> d!1464732 (= lt!1809298 e!2897508)))

(declare-fun c!794763 () Bool)

(assert (=> d!1464732 (= c!794763 lt!1809295)))

(assert (=> d!1464732 (= lt!1809295 (containsKey!2676 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968))))

(assert (=> d!1464732 (= (contains!14971 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819)) key!4968) lt!1809291)))

(declare-fun b!4644750 () Bool)

(assert (=> b!4644750 (= e!2897508 e!2897509)))

(declare-fun c!794762 () Bool)

(declare-fun call!324296 () Bool)

(assert (=> b!4644750 (= c!794762 call!324296)))

(declare-fun b!4644751 () Bool)

(declare-fun e!2897506 () List!51945)

(assert (=> b!4644751 (= e!2897506 (keys!18332 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))))))

(declare-fun b!4644752 () Bool)

(declare-fun lt!1809296 () Unit!116135)

(assert (=> b!4644752 (= e!2897508 lt!1809296)))

(declare-fun lt!1809292 () Unit!116135)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1486 (List!51942 K!13180) Unit!116135)

(assert (=> b!4644752 (= lt!1809292 (lemmaContainsKeyImpliesGetValueByKeyDefined!1486 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968))))

(assert (=> b!4644752 (isDefined!9061 (getValueByKey!1584 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968))))

(declare-fun lt!1809293 () Unit!116135)

(assert (=> b!4644752 (= lt!1809293 lt!1809292)))

(declare-fun lemmaInListThenGetKeysListContains!722 (List!51942 K!13180) Unit!116135)

(assert (=> b!4644752 (= lt!1809296 (lemmaInListThenGetKeysListContains!722 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968))))

(assert (=> b!4644752 call!324296))

(declare-fun b!4644753 () Bool)

(declare-fun Unit!116138 () Unit!116135)

(assert (=> b!4644753 (= e!2897509 Unit!116138)))

(declare-fun b!4644754 () Bool)

(declare-fun getKeysList!727 (List!51942) List!51945)

(assert (=> b!4644754 (= e!2897506 (getKeysList!727 (toList!5168 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819)))))))

(declare-fun b!4644755 () Bool)

(assert (=> b!4644755 (= e!2897507 (not (contains!14973 (keys!18332 (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) key!4968)))))

(declare-fun bm!324291 () Bool)

(assert (=> bm!324291 (= call!324296 (contains!14973 e!2897506 key!4968))))

(declare-fun c!794764 () Bool)

(assert (=> bm!324291 (= c!794764 c!794763)))

(assert (= (and d!1464732 c!794763) b!4644752))

(assert (= (and d!1464732 (not c!794763)) b!4644750))

(assert (= (and b!4644750 c!794762) b!4644747))

(assert (= (and b!4644750 (not c!794762)) b!4644753))

(assert (= (or b!4644752 b!4644750) bm!324291))

(assert (= (and bm!324291 c!794764) b!4644754))

(assert (= (and bm!324291 (not c!794764)) b!4644751))

(assert (= (and d!1464732 res!1951385) b!4644755))

(assert (= (and d!1464732 (not res!1951383)) b!4644748))

(assert (= (and b!4644748 res!1951384) b!4644749))

(assert (=> b!4644749 m!5509747))

(declare-fun m!5509767 () Bool)

(assert (=> b!4644749 m!5509767))

(assert (=> b!4644749 m!5509767))

(declare-fun m!5509769 () Bool)

(assert (=> b!4644749 m!5509769))

(declare-fun m!5509771 () Bool)

(assert (=> b!4644748 m!5509771))

(assert (=> b!4644748 m!5509771))

(declare-fun m!5509773 () Bool)

(assert (=> b!4644748 m!5509773))

(assert (=> b!4644755 m!5509747))

(assert (=> b!4644755 m!5509767))

(assert (=> b!4644755 m!5509767))

(assert (=> b!4644755 m!5509769))

(declare-fun m!5509775 () Bool)

(assert (=> bm!324291 m!5509775))

(declare-fun m!5509777 () Bool)

(assert (=> b!4644754 m!5509777))

(assert (=> b!4644751 m!5509747))

(assert (=> b!4644751 m!5509767))

(declare-fun m!5509779 () Bool)

(assert (=> b!4644747 m!5509779))

(declare-fun m!5509781 () Bool)

(assert (=> b!4644747 m!5509781))

(assert (=> d!1464732 m!5509779))

(declare-fun m!5509783 () Bool)

(assert (=> b!4644752 m!5509783))

(assert (=> b!4644752 m!5509771))

(assert (=> b!4644752 m!5509771))

(assert (=> b!4644752 m!5509773))

(declare-fun m!5509785 () Bool)

(assert (=> b!4644752 m!5509785))

(assert (=> b!4644704 d!1464732))

(declare-fun d!1464740 () Bool)

(declare-fun lt!1809331 () ListMap!4493)

(declare-fun invariantList!1276 (List!51942) Bool)

(assert (=> d!1464740 (invariantList!1276 (toList!5168 lt!1809331))))

(declare-fun e!2897547 () ListMap!4493)

(assert (=> d!1464740 (= lt!1809331 e!2897547)))

(declare-fun c!794785 () Bool)

(assert (=> d!1464740 (= c!794785 ((_ is Cons!51819) (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819)))))

(declare-fun lambda!197222 () Int)

(declare-fun forall!10971 (List!51943 Int) Bool)

(assert (=> d!1464740 (forall!10971 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819) lambda!197222)))

(assert (=> d!1464740 (= (extractMap!1668 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819)) lt!1809331)))

(declare-fun b!4644817 () Bool)

(declare-fun addToMapMapFromBucket!1071 (List!51942 ListMap!4493) ListMap!4493)

(assert (=> b!4644817 (= e!2897547 (addToMapMapFromBucket!1071 (_2!29742 (h!57941 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819))) (extractMap!1668 (t!359039 (Cons!51819 (tuple2!52897 hash!414 oldBucket!40) Nil!51819)))))))

(declare-fun b!4644818 () Bool)

(assert (=> b!4644818 (= e!2897547 (ListMap!4494 Nil!51818))))

(assert (= (and d!1464740 c!794785) b!4644817))

(assert (= (and d!1464740 (not c!794785)) b!4644818))

(declare-fun m!5509827 () Bool)

(assert (=> d!1464740 m!5509827))

(declare-fun m!5509829 () Bool)

(assert (=> d!1464740 m!5509829))

(declare-fun m!5509831 () Bool)

(assert (=> b!4644817 m!5509831))

(assert (=> b!4644817 m!5509831))

(declare-fun m!5509833 () Bool)

(assert (=> b!4644817 m!5509833))

(assert (=> b!4644704 d!1464740))

(declare-fun d!1464752 () Bool)

(assert (=> d!1464752 true))

(assert (=> d!1464752 true))

(declare-fun lambda!197225 () Int)

(declare-fun forall!10972 (List!51942 Int) Bool)

(assert (=> d!1464752 (= (allKeysSameHash!1466 oldBucket!40 hash!414 hashF!1389) (forall!10972 oldBucket!40 lambda!197225))))

(declare-fun bs!1036058 () Bool)

(assert (= bs!1036058 d!1464752))

(declare-fun m!5509835 () Bool)

(assert (=> bs!1036058 m!5509835))

(assert (=> b!4644705 d!1464752))

(declare-fun d!1464754 () Bool)

(declare-fun lt!1809334 () Int)

(assert (=> d!1464754 (>= lt!1809334 0)))

(declare-fun e!2897550 () Int)

(assert (=> d!1464754 (= lt!1809334 e!2897550)))

(declare-fun c!794788 () Bool)

(assert (=> d!1464754 (= c!794788 ((_ is Nil!51818) oldBucket!40))))

(assert (=> d!1464754 (= (size!35964 oldBucket!40) lt!1809334)))

(declare-fun b!4644827 () Bool)

(assert (=> b!4644827 (= e!2897550 0)))

(declare-fun b!4644828 () Bool)

(assert (=> b!4644828 (= e!2897550 (+ 1 (size!35964 (t!359038 oldBucket!40))))))

(assert (= (and d!1464754 c!794788) b!4644827))

(assert (= (and d!1464754 (not c!794788)) b!4644828))

(declare-fun m!5509837 () Bool)

(assert (=> b!4644828 m!5509837))

(assert (=> b!4644708 d!1464754))

(declare-fun bs!1036059 () Bool)

(declare-fun d!1464756 () Bool)

(assert (= bs!1036059 (and d!1464756 d!1464752)))

(declare-fun lambda!197226 () Int)

(assert (=> bs!1036059 (= lambda!197226 lambda!197225)))

(assert (=> d!1464756 true))

(assert (=> d!1464756 true))

(assert (=> d!1464756 (= (allKeysSameHash!1466 newBucket!224 hash!414 hashF!1389) (forall!10972 newBucket!224 lambda!197226))))

(declare-fun bs!1036060 () Bool)

(assert (= bs!1036060 d!1464756))

(declare-fun m!5509839 () Bool)

(assert (=> bs!1036060 m!5509839))

(assert (=> b!4644703 d!1464756))

(declare-fun d!1464758 () Bool)

(declare-fun res!1951397 () Bool)

(declare-fun e!2897551 () Bool)

(assert (=> d!1464758 (=> res!1951397 e!2897551)))

(assert (=> d!1464758 (= res!1951397 (not ((_ is Cons!51818) oldBucket!40)))))

(assert (=> d!1464758 (= (noDuplicateKeys!1612 oldBucket!40) e!2897551)))

(declare-fun b!4644829 () Bool)

(declare-fun e!2897552 () Bool)

(assert (=> b!4644829 (= e!2897551 e!2897552)))

(declare-fun res!1951398 () Bool)

(assert (=> b!4644829 (=> (not res!1951398) (not e!2897552))))

(assert (=> b!4644829 (= res!1951398 (not (containsKey!2675 (t!359038 oldBucket!40) (_1!29741 (h!57940 oldBucket!40)))))))

(declare-fun b!4644830 () Bool)

(assert (=> b!4644830 (= e!2897552 (noDuplicateKeys!1612 (t!359038 oldBucket!40)))))

(assert (= (and d!1464758 (not res!1951397)) b!4644829))

(assert (= (and b!4644829 res!1951398) b!4644830))

(declare-fun m!5509841 () Bool)

(assert (=> b!4644829 m!5509841))

(declare-fun m!5509843 () Bool)

(assert (=> b!4644830 m!5509843))

(assert (=> start!467420 d!1464758))

(declare-fun d!1464760 () Bool)

(declare-fun lt!1809337 () List!51942)

(assert (=> d!1464760 (not (containsKey!2675 lt!1809337 key!4968))))

(declare-fun e!2897557 () List!51942)

(assert (=> d!1464760 (= lt!1809337 e!2897557)))

(declare-fun c!794793 () Bool)

(assert (=> d!1464760 (= c!794793 (and ((_ is Cons!51818) oldBucket!40) (= (_1!29741 (h!57940 oldBucket!40)) key!4968)))))

(assert (=> d!1464760 (noDuplicateKeys!1612 oldBucket!40)))

(assert (=> d!1464760 (= (removePairForKey!1235 oldBucket!40 key!4968) lt!1809337)))

(declare-fun b!4644839 () Bool)

(assert (=> b!4644839 (= e!2897557 (t!359038 oldBucket!40))))

(declare-fun b!4644841 () Bool)

(declare-fun e!2897558 () List!51942)

(assert (=> b!4644841 (= e!2897558 (Cons!51818 (h!57940 oldBucket!40) (removePairForKey!1235 (t!359038 oldBucket!40) key!4968)))))

(declare-fun b!4644840 () Bool)

(assert (=> b!4644840 (= e!2897557 e!2897558)))

(declare-fun c!794794 () Bool)

(assert (=> b!4644840 (= c!794794 ((_ is Cons!51818) oldBucket!40))))

(declare-fun b!4644842 () Bool)

(assert (=> b!4644842 (= e!2897558 Nil!51818)))

(assert (= (and d!1464760 c!794793) b!4644839))

(assert (= (and d!1464760 (not c!794793)) b!4644840))

(assert (= (and b!4644840 c!794794) b!4644841))

(assert (= (and b!4644840 (not c!794794)) b!4644842))

(declare-fun m!5509845 () Bool)

(assert (=> d!1464760 m!5509845))

(assert (=> d!1464760 m!5509745))

(declare-fun m!5509847 () Bool)

(assert (=> b!4644841 m!5509847))

(assert (=> b!4644707 d!1464760))

(declare-fun d!1464762 () Bool)

(declare-fun hash!3729 (Hashable!6009 K!13180) (_ BitVec 64))

(assert (=> d!1464762 (= (hash!3727 hashF!1389 key!4968) (hash!3729 hashF!1389 key!4968))))

(declare-fun bs!1036061 () Bool)

(assert (= bs!1036061 d!1464762))

(declare-fun m!5509849 () Bool)

(assert (=> bs!1036061 m!5509849))

(assert (=> b!4644702 d!1464762))

(declare-fun tp!1343038 () Bool)

(declare-fun b!4644847 () Bool)

(declare-fun e!2897561 () Bool)

(assert (=> b!4644847 (= e!2897561 (and tp_is_empty!29741 tp_is_empty!29743 tp!1343038))))

(assert (=> b!4644710 (= tp!1343031 e!2897561)))

(assert (= (and b!4644710 ((_ is Cons!51818) (t!359038 newBucket!224))) b!4644847))

(declare-fun e!2897562 () Bool)

(declare-fun b!4644848 () Bool)

(declare-fun tp!1343039 () Bool)

(assert (=> b!4644848 (= e!2897562 (and tp_is_empty!29741 tp_is_empty!29743 tp!1343039))))

(assert (=> b!4644709 (= tp!1343030 e!2897562)))

(assert (= (and b!4644709 ((_ is Cons!51818) (t!359038 oldBucket!40))) b!4644848))

(check-sat (not b!4644841) (not b!4644829) (not b!4644751) (not b!4644747) (not b!4644715) tp_is_empty!29743 (not b!4644817) (not b!4644749) (not b!4644755) (not b!4644830) (not d!1464762) (not d!1464752) (not d!1464740) (not d!1464756) (not b!4644752) (not bm!324291) (not d!1464760) (not d!1464732) tp_is_empty!29741 (not b!4644847) (not b!4644848) (not b!4644748) (not b!4644828) (not b!4644754) (not b!4644716))
(check-sat)
