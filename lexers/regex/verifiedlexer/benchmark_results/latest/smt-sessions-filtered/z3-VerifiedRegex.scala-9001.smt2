; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485060 () Bool)

(assert start!485060)

(declare-datatypes ((K!14410 0))(
  ( (K!14411 (val!19799 Int)) )
))
(declare-datatypes ((V!14656 0))(
  ( (V!14657 (val!19800 Int)) )
))
(declare-datatypes ((tuple2!54768 0))(
  ( (tuple2!54769 (_1!30678 K!14410) (_2!30678 V!14656)) )
))
(declare-datatypes ((List!53162 0))(
  ( (Nil!53038) (Cons!53038 (h!59435 tuple2!54768) (t!360480 List!53162)) )
))
(declare-datatypes ((ListMap!5457 0))(
  ( (ListMap!5458 (toList!6074 List!53162)) )
))
(declare-fun lt!1910858 () ListMap!5457)

(declare-fun b!4748275 () Bool)

(declare-fun t!14174 () tuple2!54768)

(declare-fun l!14304 () List!53162)

(declare-fun e!2961771 () Bool)

(declare-fun lt!1910856 () ListMap!5457)

(declare-fun eq!1181 (ListMap!5457 ListMap!5457) Bool)

(declare-fun addToMapMapFromBucket!1530 (List!53162 ListMap!5457) ListMap!5457)

(declare-fun +!2340 (ListMap!5457 tuple2!54768) ListMap!5457)

(assert (=> b!4748275 (= e!2961771 (eq!1181 lt!1910856 (addToMapMapFromBucket!1530 (t!360480 l!14304) (+!2340 lt!1910858 t!14174))))))

(declare-fun b!4748276 () Bool)

(declare-fun e!2961772 () Bool)

(declare-fun noDuplicateKeys!2104 (List!53162) Bool)

(assert (=> b!4748276 (= e!2961772 (not (noDuplicateKeys!2104 (t!360480 l!14304))))))

(assert (=> b!4748276 e!2961771))

(declare-fun res!2012932 () Bool)

(assert (=> b!4748276 (=> (not res!2012932) (not e!2961771))))

(declare-fun lt!1910857 () ListMap!5457)

(assert (=> b!4748276 (= res!2012932 (eq!1181 lt!1910856 (+!2340 lt!1910857 t!14174)))))

(assert (=> b!4748276 (= lt!1910856 (addToMapMapFromBucket!1530 (Cons!53038 t!14174 (t!360480 l!14304)) lt!1910858))))

(declare-datatypes ((Unit!134793 0))(
  ( (Unit!134794) )
))
(declare-fun lt!1910859 () Unit!134793)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!428 (tuple2!54768 List!53162 ListMap!5457) Unit!134793)

(assert (=> b!4748276 (= lt!1910859 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!428 t!14174 (t!360480 l!14304) lt!1910858))))

(assert (=> b!4748276 (= lt!1910857 (addToMapMapFromBucket!1530 (t!360480 l!14304) lt!1910858))))

(declare-fun acc!1214 () ListMap!5457)

(assert (=> b!4748276 (= lt!1910858 (+!2340 acc!1214 (h!59435 l!14304)))))

(declare-fun b!4748277 () Bool)

(declare-fun res!2012929 () Bool)

(assert (=> b!4748277 (=> (not res!2012929) (not e!2961772))))

(get-info :version)

(assert (=> b!4748277 (= res!2012929 (not ((_ is Nil!53038) l!14304)))))

(declare-fun res!2012930 () Bool)

(assert (=> start!485060 (=> (not res!2012930) (not e!2961772))))

(assert (=> start!485060 (= res!2012930 (noDuplicateKeys!2104 l!14304))))

(assert (=> start!485060 e!2961772))

(declare-fun e!2961774 () Bool)

(assert (=> start!485060 e!2961774))

(declare-fun tp_is_empty!31709 () Bool)

(declare-fun tp_is_empty!31711 () Bool)

(assert (=> start!485060 (and tp_is_empty!31709 tp_is_empty!31711)))

(declare-fun e!2961773 () Bool)

(declare-fun inv!68282 (ListMap!5457) Bool)

(assert (=> start!485060 (and (inv!68282 acc!1214) e!2961773)))

(declare-fun b!4748278 () Bool)

(declare-fun res!2012933 () Bool)

(assert (=> b!4748278 (=> (not res!2012933) (not e!2961771))))

(assert (=> b!4748278 (= res!2012933 (eq!1181 lt!1910857 (addToMapMapFromBucket!1530 l!14304 acc!1214)))))

(declare-fun b!4748279 () Bool)

(declare-fun tp!1349824 () Bool)

(assert (=> b!4748279 (= e!2961773 tp!1349824)))

(declare-fun b!4748280 () Bool)

(declare-fun res!2012931 () Bool)

(assert (=> b!4748280 (=> (not res!2012931) (not e!2961772))))

(assert (=> b!4748280 (= res!2012931 (noDuplicateKeys!2104 (Cons!53038 t!14174 l!14304)))))

(declare-fun tp!1349825 () Bool)

(declare-fun b!4748281 () Bool)

(assert (=> b!4748281 (= e!2961774 (and tp_is_empty!31709 tp_is_empty!31711 tp!1349825))))

(assert (= (and start!485060 res!2012930) b!4748280))

(assert (= (and b!4748280 res!2012931) b!4748277))

(assert (= (and b!4748277 res!2012929) b!4748276))

(assert (= (and b!4748276 res!2012932) b!4748278))

(assert (= (and b!4748278 res!2012933) b!4748275))

(assert (= (and start!485060 ((_ is Cons!53038) l!14304)) b!4748281))

(assert (= start!485060 b!4748279))

(declare-fun m!5706579 () Bool)

(assert (=> b!4748280 m!5706579))

(declare-fun m!5706581 () Bool)

(assert (=> b!4748275 m!5706581))

(assert (=> b!4748275 m!5706581))

(declare-fun m!5706583 () Bool)

(assert (=> b!4748275 m!5706583))

(assert (=> b!4748275 m!5706583))

(declare-fun m!5706585 () Bool)

(assert (=> b!4748275 m!5706585))

(declare-fun m!5706587 () Bool)

(assert (=> b!4748278 m!5706587))

(assert (=> b!4748278 m!5706587))

(declare-fun m!5706589 () Bool)

(assert (=> b!4748278 m!5706589))

(declare-fun m!5706591 () Bool)

(assert (=> b!4748276 m!5706591))

(declare-fun m!5706593 () Bool)

(assert (=> b!4748276 m!5706593))

(declare-fun m!5706595 () Bool)

(assert (=> b!4748276 m!5706595))

(declare-fun m!5706597 () Bool)

(assert (=> b!4748276 m!5706597))

(declare-fun m!5706599 () Bool)

(assert (=> b!4748276 m!5706599))

(declare-fun m!5706601 () Bool)

(assert (=> b!4748276 m!5706601))

(declare-fun m!5706603 () Bool)

(assert (=> b!4748276 m!5706603))

(assert (=> b!4748276 m!5706595))

(declare-fun m!5706605 () Bool)

(assert (=> start!485060 m!5706605))

(declare-fun m!5706607 () Bool)

(assert (=> start!485060 m!5706607))

(check-sat (not b!4748281) (not b!4748275) (not b!4748279) (not b!4748280) (not b!4748278) tp_is_empty!31709 tp_is_empty!31711 (not b!4748276) (not start!485060))
(check-sat)
(get-model)

(declare-fun d!1517510 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9507 (List!53162) (InoxSet tuple2!54768))

(assert (=> d!1517510 (= (eq!1181 lt!1910857 (addToMapMapFromBucket!1530 l!14304 acc!1214)) (= (content!9507 (toList!6074 lt!1910857)) (content!9507 (toList!6074 (addToMapMapFromBucket!1530 l!14304 acc!1214)))))))

(declare-fun bs!1138918 () Bool)

(assert (= bs!1138918 d!1517510))

(declare-fun m!5706613 () Bool)

(assert (=> bs!1138918 m!5706613))

(declare-fun m!5706615 () Bool)

(assert (=> bs!1138918 m!5706615))

(assert (=> b!4748278 d!1517510))

(declare-fun b!4748335 () Bool)

(assert (=> b!4748335 true))

(declare-fun bs!1138958 () Bool)

(declare-fun b!4748338 () Bool)

(assert (= bs!1138958 (and b!4748338 b!4748335)))

(declare-fun lambda!221056 () Int)

(declare-fun lambda!221055 () Int)

(assert (=> bs!1138958 (= lambda!221056 lambda!221055)))

(assert (=> b!4748338 true))

(declare-fun lambda!221057 () Int)

(declare-fun lt!1911040 () ListMap!5457)

(assert (=> bs!1138958 (= (= lt!1911040 acc!1214) (= lambda!221057 lambda!221055))))

(assert (=> b!4748338 (= (= lt!1911040 acc!1214) (= lambda!221057 lambda!221056))))

(assert (=> b!4748338 true))

(declare-fun bs!1138959 () Bool)

(declare-fun d!1517512 () Bool)

(assert (= bs!1138959 (and d!1517512 b!4748335)))

(declare-fun lambda!221058 () Int)

(declare-fun lt!1911039 () ListMap!5457)

(assert (=> bs!1138959 (= (= lt!1911039 acc!1214) (= lambda!221058 lambda!221055))))

(declare-fun bs!1138960 () Bool)

(assert (= bs!1138960 (and d!1517512 b!4748338)))

(assert (=> bs!1138960 (= (= lt!1911039 acc!1214) (= lambda!221058 lambda!221056))))

(assert (=> bs!1138960 (= (= lt!1911039 lt!1911040) (= lambda!221058 lambda!221057))))

(assert (=> d!1517512 true))

(declare-fun e!2961809 () ListMap!5457)

(assert (=> b!4748335 (= e!2961809 acc!1214)))

(declare-fun lt!1911036 () Unit!134793)

(declare-fun call!332376 () Unit!134793)

(assert (=> b!4748335 (= lt!1911036 call!332376)))

(declare-fun call!332377 () Bool)

(assert (=> b!4748335 call!332377))

(declare-fun lt!1911031 () Unit!134793)

(assert (=> b!4748335 (= lt!1911031 lt!1911036)))

(declare-fun call!332375 () Bool)

(assert (=> b!4748335 call!332375))

(declare-fun lt!1911043 () Unit!134793)

(declare-fun Unit!134806 () Unit!134793)

(assert (=> b!4748335 (= lt!1911043 Unit!134806)))

(declare-fun e!2961810 () Bool)

(assert (=> d!1517512 e!2961810))

(declare-fun res!2012971 () Bool)

(assert (=> d!1517512 (=> (not res!2012971) (not e!2961810))))

(declare-fun forall!11741 (List!53162 Int) Bool)

(assert (=> d!1517512 (= res!2012971 (forall!11741 l!14304 lambda!221058))))

(assert (=> d!1517512 (= lt!1911039 e!2961809)))

(declare-fun c!810881 () Bool)

(assert (=> d!1517512 (= c!810881 ((_ is Nil!53038) l!14304))))

(assert (=> d!1517512 (noDuplicateKeys!2104 l!14304)))

(assert (=> d!1517512 (= (addToMapMapFromBucket!1530 l!14304 acc!1214) lt!1911039)))

(declare-fun b!4748336 () Bool)

(declare-fun e!2961808 () Bool)

(assert (=> b!4748336 (= e!2961808 (forall!11741 (toList!6074 acc!1214) lambda!221057))))

(declare-fun b!4748337 () Bool)

(declare-fun res!2012972 () Bool)

(assert (=> b!4748337 (=> (not res!2012972) (not e!2961810))))

(assert (=> b!4748337 (= res!2012972 (forall!11741 (toList!6074 acc!1214) lambda!221058))))

(declare-fun bm!332370 () Bool)

(assert (=> bm!332370 (= call!332377 (forall!11741 (ite c!810881 (toList!6074 acc!1214) l!14304) (ite c!810881 lambda!221055 lambda!221057)))))

(assert (=> b!4748338 (= e!2961809 lt!1911040)))

(declare-fun lt!1911041 () ListMap!5457)

(assert (=> b!4748338 (= lt!1911041 (+!2340 acc!1214 (h!59435 l!14304)))))

(assert (=> b!4748338 (= lt!1911040 (addToMapMapFromBucket!1530 (t!360480 l!14304) (+!2340 acc!1214 (h!59435 l!14304))))))

(declare-fun lt!1911032 () Unit!134793)

(assert (=> b!4748338 (= lt!1911032 call!332376)))

(assert (=> b!4748338 (forall!11741 (toList!6074 acc!1214) lambda!221056)))

(declare-fun lt!1911028 () Unit!134793)

(assert (=> b!4748338 (= lt!1911028 lt!1911032)))

(assert (=> b!4748338 (forall!11741 (toList!6074 lt!1911041) lambda!221057)))

(declare-fun lt!1911042 () Unit!134793)

(declare-fun Unit!134812 () Unit!134793)

(assert (=> b!4748338 (= lt!1911042 Unit!134812)))

(assert (=> b!4748338 (forall!11741 (t!360480 l!14304) lambda!221057)))

(declare-fun lt!1911025 () Unit!134793)

(declare-fun Unit!134813 () Unit!134793)

(assert (=> b!4748338 (= lt!1911025 Unit!134813)))

(declare-fun lt!1911037 () Unit!134793)

(declare-fun Unit!134815 () Unit!134793)

(assert (=> b!4748338 (= lt!1911037 Unit!134815)))

(declare-fun lt!1911024 () Unit!134793)

(declare-fun forallContained!3767 (List!53162 Int tuple2!54768) Unit!134793)

(assert (=> b!4748338 (= lt!1911024 (forallContained!3767 (toList!6074 lt!1911041) lambda!221057 (h!59435 l!14304)))))

(declare-fun contains!16463 (ListMap!5457 K!14410) Bool)

(assert (=> b!4748338 (contains!16463 lt!1911041 (_1!30678 (h!59435 l!14304)))))

(declare-fun lt!1911030 () Unit!134793)

(declare-fun Unit!134818 () Unit!134793)

(assert (=> b!4748338 (= lt!1911030 Unit!134818)))

(assert (=> b!4748338 (contains!16463 lt!1911040 (_1!30678 (h!59435 l!14304)))))

(declare-fun lt!1911023 () Unit!134793)

(declare-fun Unit!134819 () Unit!134793)

(assert (=> b!4748338 (= lt!1911023 Unit!134819)))

(assert (=> b!4748338 call!332377))

(declare-fun lt!1911029 () Unit!134793)

(declare-fun Unit!134820 () Unit!134793)

(assert (=> b!4748338 (= lt!1911029 Unit!134820)))

(assert (=> b!4748338 call!332375))

(declare-fun lt!1911035 () Unit!134793)

(declare-fun Unit!134822 () Unit!134793)

(assert (=> b!4748338 (= lt!1911035 Unit!134822)))

(declare-fun lt!1911038 () Unit!134793)

(declare-fun Unit!134823 () Unit!134793)

(assert (=> b!4748338 (= lt!1911038 Unit!134823)))

(declare-fun lt!1911033 () Unit!134793)

(declare-fun addForallContainsKeyThenBeforeAdding!855 (ListMap!5457 ListMap!5457 K!14410 V!14656) Unit!134793)

(assert (=> b!4748338 (= lt!1911033 (addForallContainsKeyThenBeforeAdding!855 acc!1214 lt!1911040 (_1!30678 (h!59435 l!14304)) (_2!30678 (h!59435 l!14304))))))

(assert (=> b!4748338 (forall!11741 (toList!6074 acc!1214) lambda!221057)))

(declare-fun lt!1911026 () Unit!134793)

(assert (=> b!4748338 (= lt!1911026 lt!1911033)))

(assert (=> b!4748338 (forall!11741 (toList!6074 acc!1214) lambda!221057)))

(declare-fun lt!1911027 () Unit!134793)

(declare-fun Unit!134825 () Unit!134793)

(assert (=> b!4748338 (= lt!1911027 Unit!134825)))

(declare-fun res!2012973 () Bool)

(assert (=> b!4748338 (= res!2012973 (forall!11741 l!14304 lambda!221057))))

(assert (=> b!4748338 (=> (not res!2012973) (not e!2961808))))

(assert (=> b!4748338 e!2961808))

(declare-fun lt!1911034 () Unit!134793)

(declare-fun Unit!134826 () Unit!134793)

(assert (=> b!4748338 (= lt!1911034 Unit!134826)))

(declare-fun bm!332371 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!856 (ListMap!5457) Unit!134793)

(assert (=> bm!332371 (= call!332376 (lemmaContainsAllItsOwnKeys!856 acc!1214))))

(declare-fun b!4748339 () Bool)

(declare-fun invariantList!1573 (List!53162) Bool)

(assert (=> b!4748339 (= e!2961810 (invariantList!1573 (toList!6074 lt!1911039)))))

(declare-fun bm!332372 () Bool)

(assert (=> bm!332372 (= call!332375 (forall!11741 (ite c!810881 (toList!6074 acc!1214) (toList!6074 lt!1911041)) (ite c!810881 lambda!221055 lambda!221057)))))

(assert (= (and d!1517512 c!810881) b!4748335))

(assert (= (and d!1517512 (not c!810881)) b!4748338))

(assert (= (and b!4748338 res!2012973) b!4748336))

(assert (= (or b!4748335 b!4748338) bm!332371))

(assert (= (or b!4748335 b!4748338) bm!332370))

(assert (= (or b!4748335 b!4748338) bm!332372))

(assert (= (and d!1517512 res!2012971) b!4748337))

(assert (= (and b!4748337 res!2012972) b!4748339))

(declare-fun m!5706755 () Bool)

(assert (=> b!4748339 m!5706755))

(declare-fun m!5706757 () Bool)

(assert (=> d!1517512 m!5706757))

(assert (=> d!1517512 m!5706605))

(declare-fun m!5706759 () Bool)

(assert (=> b!4748338 m!5706759))

(declare-fun m!5706761 () Bool)

(assert (=> b!4748338 m!5706761))

(assert (=> b!4748338 m!5706593))

(declare-fun m!5706763 () Bool)

(assert (=> b!4748338 m!5706763))

(declare-fun m!5706765 () Bool)

(assert (=> b!4748338 m!5706765))

(declare-fun m!5706767 () Bool)

(assert (=> b!4748338 m!5706767))

(declare-fun m!5706769 () Bool)

(assert (=> b!4748338 m!5706769))

(declare-fun m!5706771 () Bool)

(assert (=> b!4748338 m!5706771))

(assert (=> b!4748338 m!5706759))

(declare-fun m!5706773 () Bool)

(assert (=> b!4748338 m!5706773))

(declare-fun m!5706775 () Bool)

(assert (=> b!4748338 m!5706775))

(assert (=> b!4748338 m!5706593))

(declare-fun m!5706777 () Bool)

(assert (=> b!4748338 m!5706777))

(assert (=> b!4748336 m!5706759))

(declare-fun m!5706779 () Bool)

(assert (=> bm!332372 m!5706779))

(declare-fun m!5706781 () Bool)

(assert (=> b!4748337 m!5706781))

(declare-fun m!5706783 () Bool)

(assert (=> bm!332371 m!5706783))

(declare-fun m!5706785 () Bool)

(assert (=> bm!332370 m!5706785))

(assert (=> b!4748278 d!1517512))

(declare-fun d!1517534 () Bool)

(assert (=> d!1517534 (= (eq!1181 lt!1910856 (addToMapMapFromBucket!1530 (t!360480 l!14304) (+!2340 lt!1910858 t!14174))) (= (content!9507 (toList!6074 lt!1910856)) (content!9507 (toList!6074 (addToMapMapFromBucket!1530 (t!360480 l!14304) (+!2340 lt!1910858 t!14174))))))))

(declare-fun bs!1138961 () Bool)

(assert (= bs!1138961 d!1517534))

(declare-fun m!5706787 () Bool)

(assert (=> bs!1138961 m!5706787))

(declare-fun m!5706789 () Bool)

(assert (=> bs!1138961 m!5706789))

(assert (=> b!4748275 d!1517534))

(declare-fun bs!1138962 () Bool)

(declare-fun b!4748342 () Bool)

(assert (= bs!1138962 (and b!4748342 b!4748335)))

(declare-fun lambda!221059 () Int)

(assert (=> bs!1138962 (= (= (+!2340 lt!1910858 t!14174) acc!1214) (= lambda!221059 lambda!221055))))

(declare-fun bs!1138963 () Bool)

(assert (= bs!1138963 (and b!4748342 b!4748338)))

(assert (=> bs!1138963 (= (= (+!2340 lt!1910858 t!14174) acc!1214) (= lambda!221059 lambda!221056))))

(assert (=> bs!1138963 (= (= (+!2340 lt!1910858 t!14174) lt!1911040) (= lambda!221059 lambda!221057))))

(declare-fun bs!1138964 () Bool)

(assert (= bs!1138964 (and b!4748342 d!1517512)))

(assert (=> bs!1138964 (= (= (+!2340 lt!1910858 t!14174) lt!1911039) (= lambda!221059 lambda!221058))))

(assert (=> b!4748342 true))

(declare-fun bs!1138965 () Bool)

(declare-fun b!4748345 () Bool)

(assert (= bs!1138965 (and b!4748345 b!4748335)))

(declare-fun lambda!221060 () Int)

(assert (=> bs!1138965 (= (= (+!2340 lt!1910858 t!14174) acc!1214) (= lambda!221060 lambda!221055))))

(declare-fun bs!1138966 () Bool)

(assert (= bs!1138966 (and b!4748345 b!4748342)))

(assert (=> bs!1138966 (= lambda!221060 lambda!221059)))

(declare-fun bs!1138967 () Bool)

(assert (= bs!1138967 (and b!4748345 b!4748338)))

(assert (=> bs!1138967 (= (= (+!2340 lt!1910858 t!14174) lt!1911040) (= lambda!221060 lambda!221057))))

(declare-fun bs!1138968 () Bool)

(assert (= bs!1138968 (and b!4748345 d!1517512)))

(assert (=> bs!1138968 (= (= (+!2340 lt!1910858 t!14174) lt!1911039) (= lambda!221060 lambda!221058))))

(assert (=> bs!1138967 (= (= (+!2340 lt!1910858 t!14174) acc!1214) (= lambda!221060 lambda!221056))))

(assert (=> b!4748345 true))

(declare-fun lambda!221061 () Int)

(declare-fun lt!1911061 () ListMap!5457)

(assert (=> bs!1138965 (= (= lt!1911061 acc!1214) (= lambda!221061 lambda!221055))))

(assert (=> bs!1138966 (= (= lt!1911061 (+!2340 lt!1910858 t!14174)) (= lambda!221061 lambda!221059))))

(assert (=> bs!1138967 (= (= lt!1911061 lt!1911040) (= lambda!221061 lambda!221057))))

(assert (=> bs!1138968 (= (= lt!1911061 lt!1911039) (= lambda!221061 lambda!221058))))

(assert (=> bs!1138967 (= (= lt!1911061 acc!1214) (= lambda!221061 lambda!221056))))

(assert (=> b!4748345 (= (= lt!1911061 (+!2340 lt!1910858 t!14174)) (= lambda!221061 lambda!221060))))

(assert (=> b!4748345 true))

(declare-fun bs!1138969 () Bool)

(declare-fun d!1517536 () Bool)

(assert (= bs!1138969 (and d!1517536 b!4748335)))

(declare-fun lambda!221062 () Int)

(declare-fun lt!1911060 () ListMap!5457)

(assert (=> bs!1138969 (= (= lt!1911060 acc!1214) (= lambda!221062 lambda!221055))))

(declare-fun bs!1138970 () Bool)

(assert (= bs!1138970 (and d!1517536 b!4748342)))

(assert (=> bs!1138970 (= (= lt!1911060 (+!2340 lt!1910858 t!14174)) (= lambda!221062 lambda!221059))))

(declare-fun bs!1138971 () Bool)

(assert (= bs!1138971 (and d!1517536 d!1517512)))

(assert (=> bs!1138971 (= (= lt!1911060 lt!1911039) (= lambda!221062 lambda!221058))))

(declare-fun bs!1138972 () Bool)

(assert (= bs!1138972 (and d!1517536 b!4748338)))

(assert (=> bs!1138972 (= (= lt!1911060 acc!1214) (= lambda!221062 lambda!221056))))

(declare-fun bs!1138973 () Bool)

(assert (= bs!1138973 (and d!1517536 b!4748345)))

(assert (=> bs!1138973 (= (= lt!1911060 (+!2340 lt!1910858 t!14174)) (= lambda!221062 lambda!221060))))

(assert (=> bs!1138972 (= (= lt!1911060 lt!1911040) (= lambda!221062 lambda!221057))))

(assert (=> bs!1138973 (= (= lt!1911060 lt!1911061) (= lambda!221062 lambda!221061))))

(assert (=> d!1517536 true))

(declare-fun e!2961812 () ListMap!5457)

(assert (=> b!4748342 (= e!2961812 (+!2340 lt!1910858 t!14174))))

(declare-fun lt!1911057 () Unit!134793)

(declare-fun call!332379 () Unit!134793)

(assert (=> b!4748342 (= lt!1911057 call!332379)))

(declare-fun call!332380 () Bool)

(assert (=> b!4748342 call!332380))

(declare-fun lt!1911052 () Unit!134793)

(assert (=> b!4748342 (= lt!1911052 lt!1911057)))

(declare-fun call!332378 () Bool)

(assert (=> b!4748342 call!332378))

(declare-fun lt!1911064 () Unit!134793)

(declare-fun Unit!134828 () Unit!134793)

(assert (=> b!4748342 (= lt!1911064 Unit!134828)))

(declare-fun e!2961813 () Bool)

(assert (=> d!1517536 e!2961813))

(declare-fun res!2012974 () Bool)

(assert (=> d!1517536 (=> (not res!2012974) (not e!2961813))))

(assert (=> d!1517536 (= res!2012974 (forall!11741 (t!360480 l!14304) lambda!221062))))

(assert (=> d!1517536 (= lt!1911060 e!2961812)))

(declare-fun c!810882 () Bool)

(assert (=> d!1517536 (= c!810882 ((_ is Nil!53038) (t!360480 l!14304)))))

(assert (=> d!1517536 (noDuplicateKeys!2104 (t!360480 l!14304))))

(assert (=> d!1517536 (= (addToMapMapFromBucket!1530 (t!360480 l!14304) (+!2340 lt!1910858 t!14174)) lt!1911060)))

(declare-fun e!2961811 () Bool)

(declare-fun b!4748343 () Bool)

(assert (=> b!4748343 (= e!2961811 (forall!11741 (toList!6074 (+!2340 lt!1910858 t!14174)) lambda!221061))))

(declare-fun b!4748344 () Bool)

(declare-fun res!2012975 () Bool)

(assert (=> b!4748344 (=> (not res!2012975) (not e!2961813))))

(assert (=> b!4748344 (= res!2012975 (forall!11741 (toList!6074 (+!2340 lt!1910858 t!14174)) lambda!221062))))

(declare-fun bm!332373 () Bool)

(assert (=> bm!332373 (= call!332380 (forall!11741 (ite c!810882 (toList!6074 (+!2340 lt!1910858 t!14174)) (t!360480 l!14304)) (ite c!810882 lambda!221059 lambda!221061)))))

(assert (=> b!4748345 (= e!2961812 lt!1911061)))

(declare-fun lt!1911062 () ListMap!5457)

(assert (=> b!4748345 (= lt!1911062 (+!2340 (+!2340 lt!1910858 t!14174) (h!59435 (t!360480 l!14304))))))

(assert (=> b!4748345 (= lt!1911061 (addToMapMapFromBucket!1530 (t!360480 (t!360480 l!14304)) (+!2340 (+!2340 lt!1910858 t!14174) (h!59435 (t!360480 l!14304)))))))

(declare-fun lt!1911053 () Unit!134793)

(assert (=> b!4748345 (= lt!1911053 call!332379)))

(assert (=> b!4748345 (forall!11741 (toList!6074 (+!2340 lt!1910858 t!14174)) lambda!221060)))

(declare-fun lt!1911049 () Unit!134793)

(assert (=> b!4748345 (= lt!1911049 lt!1911053)))

(assert (=> b!4748345 (forall!11741 (toList!6074 lt!1911062) lambda!221061)))

(declare-fun lt!1911063 () Unit!134793)

(declare-fun Unit!134829 () Unit!134793)

(assert (=> b!4748345 (= lt!1911063 Unit!134829)))

(assert (=> b!4748345 (forall!11741 (t!360480 (t!360480 l!14304)) lambda!221061)))

(declare-fun lt!1911046 () Unit!134793)

(declare-fun Unit!134830 () Unit!134793)

(assert (=> b!4748345 (= lt!1911046 Unit!134830)))

(declare-fun lt!1911058 () Unit!134793)

(declare-fun Unit!134831 () Unit!134793)

(assert (=> b!4748345 (= lt!1911058 Unit!134831)))

(declare-fun lt!1911045 () Unit!134793)

(assert (=> b!4748345 (= lt!1911045 (forallContained!3767 (toList!6074 lt!1911062) lambda!221061 (h!59435 (t!360480 l!14304))))))

(assert (=> b!4748345 (contains!16463 lt!1911062 (_1!30678 (h!59435 (t!360480 l!14304))))))

(declare-fun lt!1911051 () Unit!134793)

(declare-fun Unit!134832 () Unit!134793)

(assert (=> b!4748345 (= lt!1911051 Unit!134832)))

(assert (=> b!4748345 (contains!16463 lt!1911061 (_1!30678 (h!59435 (t!360480 l!14304))))))

(declare-fun lt!1911044 () Unit!134793)

(declare-fun Unit!134833 () Unit!134793)

(assert (=> b!4748345 (= lt!1911044 Unit!134833)))

(assert (=> b!4748345 call!332380))

(declare-fun lt!1911050 () Unit!134793)

(declare-fun Unit!134834 () Unit!134793)

(assert (=> b!4748345 (= lt!1911050 Unit!134834)))

(assert (=> b!4748345 call!332378))

(declare-fun lt!1911056 () Unit!134793)

(declare-fun Unit!134835 () Unit!134793)

(assert (=> b!4748345 (= lt!1911056 Unit!134835)))

(declare-fun lt!1911059 () Unit!134793)

(declare-fun Unit!134836 () Unit!134793)

(assert (=> b!4748345 (= lt!1911059 Unit!134836)))

(declare-fun lt!1911054 () Unit!134793)

(assert (=> b!4748345 (= lt!1911054 (addForallContainsKeyThenBeforeAdding!855 (+!2340 lt!1910858 t!14174) lt!1911061 (_1!30678 (h!59435 (t!360480 l!14304))) (_2!30678 (h!59435 (t!360480 l!14304)))))))

(assert (=> b!4748345 (forall!11741 (toList!6074 (+!2340 lt!1910858 t!14174)) lambda!221061)))

(declare-fun lt!1911047 () Unit!134793)

(assert (=> b!4748345 (= lt!1911047 lt!1911054)))

(assert (=> b!4748345 (forall!11741 (toList!6074 (+!2340 lt!1910858 t!14174)) lambda!221061)))

(declare-fun lt!1911048 () Unit!134793)

(declare-fun Unit!134837 () Unit!134793)

(assert (=> b!4748345 (= lt!1911048 Unit!134837)))

(declare-fun res!2012976 () Bool)

(assert (=> b!4748345 (= res!2012976 (forall!11741 (t!360480 l!14304) lambda!221061))))

(assert (=> b!4748345 (=> (not res!2012976) (not e!2961811))))

(assert (=> b!4748345 e!2961811))

(declare-fun lt!1911055 () Unit!134793)

(declare-fun Unit!134838 () Unit!134793)

(assert (=> b!4748345 (= lt!1911055 Unit!134838)))

(declare-fun bm!332374 () Bool)

(assert (=> bm!332374 (= call!332379 (lemmaContainsAllItsOwnKeys!856 (+!2340 lt!1910858 t!14174)))))

(declare-fun b!4748346 () Bool)

(assert (=> b!4748346 (= e!2961813 (invariantList!1573 (toList!6074 lt!1911060)))))

(declare-fun bm!332375 () Bool)

(assert (=> bm!332375 (= call!332378 (forall!11741 (ite c!810882 (toList!6074 (+!2340 lt!1910858 t!14174)) (toList!6074 lt!1911062)) (ite c!810882 lambda!221059 lambda!221061)))))

(assert (= (and d!1517536 c!810882) b!4748342))

(assert (= (and d!1517536 (not c!810882)) b!4748345))

(assert (= (and b!4748345 res!2012976) b!4748343))

(assert (= (or b!4748342 b!4748345) bm!332374))

(assert (= (or b!4748342 b!4748345) bm!332373))

(assert (= (or b!4748342 b!4748345) bm!332375))

(assert (= (and d!1517536 res!2012974) b!4748344))

(assert (= (and b!4748344 res!2012975) b!4748346))

(declare-fun m!5706809 () Bool)

(assert (=> b!4748346 m!5706809))

(declare-fun m!5706811 () Bool)

(assert (=> d!1517536 m!5706811))

(assert (=> d!1517536 m!5706599))

(declare-fun m!5706813 () Bool)

(assert (=> b!4748345 m!5706813))

(declare-fun m!5706815 () Bool)

(assert (=> b!4748345 m!5706815))

(declare-fun m!5706817 () Bool)

(assert (=> b!4748345 m!5706817))

(declare-fun m!5706819 () Bool)

(assert (=> b!4748345 m!5706819))

(declare-fun m!5706821 () Bool)

(assert (=> b!4748345 m!5706821))

(assert (=> b!4748345 m!5706581))

(declare-fun m!5706823 () Bool)

(assert (=> b!4748345 m!5706823))

(declare-fun m!5706825 () Bool)

(assert (=> b!4748345 m!5706825))

(declare-fun m!5706827 () Bool)

(assert (=> b!4748345 m!5706827))

(assert (=> b!4748345 m!5706813))

(declare-fun m!5706829 () Bool)

(assert (=> b!4748345 m!5706829))

(declare-fun m!5706831 () Bool)

(assert (=> b!4748345 m!5706831))

(assert (=> b!4748345 m!5706581))

(assert (=> b!4748345 m!5706817))

(declare-fun m!5706833 () Bool)

(assert (=> b!4748345 m!5706833))

(assert (=> b!4748343 m!5706813))

(declare-fun m!5706835 () Bool)

(assert (=> bm!332375 m!5706835))

(declare-fun m!5706837 () Bool)

(assert (=> b!4748344 m!5706837))

(assert (=> bm!332374 m!5706581))

(declare-fun m!5706839 () Bool)

(assert (=> bm!332374 m!5706839))

(declare-fun m!5706841 () Bool)

(assert (=> bm!332373 m!5706841))

(assert (=> b!4748275 d!1517536))

(declare-fun d!1517542 () Bool)

(declare-fun e!2961826 () Bool)

(assert (=> d!1517542 e!2961826))

(declare-fun res!2012989 () Bool)

(assert (=> d!1517542 (=> (not res!2012989) (not e!2961826))))

(declare-fun lt!1911102 () ListMap!5457)

(assert (=> d!1517542 (= res!2012989 (contains!16463 lt!1911102 (_1!30678 t!14174)))))

(declare-fun lt!1911101 () List!53162)

(assert (=> d!1517542 (= lt!1911102 (ListMap!5458 lt!1911101))))

(declare-fun lt!1911104 () Unit!134793)

(declare-fun lt!1911103 () Unit!134793)

(assert (=> d!1517542 (= lt!1911104 lt!1911103)))

(declare-datatypes ((Option!12510 0))(
  ( (None!12509) (Some!12509 (v!47204 V!14656)) )
))
(declare-fun getValueByKey!2060 (List!53162 K!14410) Option!12510)

(assert (=> d!1517542 (= (getValueByKey!2060 lt!1911101 (_1!30678 t!14174)) (Some!12509 (_2!30678 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1137 (List!53162 K!14410 V!14656) Unit!134793)

(assert (=> d!1517542 (= lt!1911103 (lemmaContainsTupThenGetReturnValue!1137 lt!1911101 (_1!30678 t!14174) (_2!30678 t!14174)))))

(declare-fun insertNoDuplicatedKeys!645 (List!53162 K!14410 V!14656) List!53162)

(assert (=> d!1517542 (= lt!1911101 (insertNoDuplicatedKeys!645 (toList!6074 lt!1910858) (_1!30678 t!14174) (_2!30678 t!14174)))))

(assert (=> d!1517542 (= (+!2340 lt!1910858 t!14174) lt!1911102)))

(declare-fun b!4748366 () Bool)

(declare-fun res!2012988 () Bool)

(assert (=> b!4748366 (=> (not res!2012988) (not e!2961826))))

(assert (=> b!4748366 (= res!2012988 (= (getValueByKey!2060 (toList!6074 lt!1911102) (_1!30678 t!14174)) (Some!12509 (_2!30678 t!14174))))))

(declare-fun b!4748367 () Bool)

(declare-fun contains!16465 (List!53162 tuple2!54768) Bool)

(assert (=> b!4748367 (= e!2961826 (contains!16465 (toList!6074 lt!1911102) t!14174))))

(assert (= (and d!1517542 res!2012989) b!4748366))

(assert (= (and b!4748366 res!2012988) b!4748367))

(declare-fun m!5706881 () Bool)

(assert (=> d!1517542 m!5706881))

(declare-fun m!5706883 () Bool)

(assert (=> d!1517542 m!5706883))

(declare-fun m!5706885 () Bool)

(assert (=> d!1517542 m!5706885))

(declare-fun m!5706887 () Bool)

(assert (=> d!1517542 m!5706887))

(declare-fun m!5706889 () Bool)

(assert (=> b!4748366 m!5706889))

(declare-fun m!5706891 () Bool)

(assert (=> b!4748367 m!5706891))

(assert (=> b!4748275 d!1517542))

(declare-fun d!1517546 () Bool)

(declare-fun res!2012994 () Bool)

(declare-fun e!2961831 () Bool)

(assert (=> d!1517546 (=> res!2012994 e!2961831)))

(assert (=> d!1517546 (= res!2012994 (not ((_ is Cons!53038) l!14304)))))

(assert (=> d!1517546 (= (noDuplicateKeys!2104 l!14304) e!2961831)))

(declare-fun b!4748372 () Bool)

(declare-fun e!2961832 () Bool)

(assert (=> b!4748372 (= e!2961831 e!2961832)))

(declare-fun res!2012995 () Bool)

(assert (=> b!4748372 (=> (not res!2012995) (not e!2961832))))

(declare-fun containsKey!3531 (List!53162 K!14410) Bool)

(assert (=> b!4748372 (= res!2012995 (not (containsKey!3531 (t!360480 l!14304) (_1!30678 (h!59435 l!14304)))))))

(declare-fun b!4748373 () Bool)

(assert (=> b!4748373 (= e!2961832 (noDuplicateKeys!2104 (t!360480 l!14304)))))

(assert (= (and d!1517546 (not res!2012994)) b!4748372))

(assert (= (and b!4748372 res!2012995) b!4748373))

(declare-fun m!5706893 () Bool)

(assert (=> b!4748372 m!5706893))

(assert (=> b!4748373 m!5706599))

(assert (=> start!485060 d!1517546))

(declare-fun d!1517548 () Bool)

(assert (=> d!1517548 (= (inv!68282 acc!1214) (invariantList!1573 (toList!6074 acc!1214)))))

(declare-fun bs!1139005 () Bool)

(assert (= bs!1139005 d!1517548))

(declare-fun m!5706895 () Bool)

(assert (=> bs!1139005 m!5706895))

(assert (=> start!485060 d!1517548))

(declare-fun d!1517550 () Bool)

(declare-fun res!2012996 () Bool)

(declare-fun e!2961833 () Bool)

(assert (=> d!1517550 (=> res!2012996 e!2961833)))

(assert (=> d!1517550 (= res!2012996 (not ((_ is Cons!53038) (Cons!53038 t!14174 l!14304))))))

(assert (=> d!1517550 (= (noDuplicateKeys!2104 (Cons!53038 t!14174 l!14304)) e!2961833)))

(declare-fun b!4748374 () Bool)

(declare-fun e!2961834 () Bool)

(assert (=> b!4748374 (= e!2961833 e!2961834)))

(declare-fun res!2012997 () Bool)

(assert (=> b!4748374 (=> (not res!2012997) (not e!2961834))))

(assert (=> b!4748374 (= res!2012997 (not (containsKey!3531 (t!360480 (Cons!53038 t!14174 l!14304)) (_1!30678 (h!59435 (Cons!53038 t!14174 l!14304))))))))

(declare-fun b!4748375 () Bool)

(assert (=> b!4748375 (= e!2961834 (noDuplicateKeys!2104 (t!360480 (Cons!53038 t!14174 l!14304))))))

(assert (= (and d!1517550 (not res!2012996)) b!4748374))

(assert (= (and b!4748374 res!2012997) b!4748375))

(declare-fun m!5706897 () Bool)

(assert (=> b!4748374 m!5706897))

(declare-fun m!5706899 () Bool)

(assert (=> b!4748375 m!5706899))

(assert (=> b!4748280 d!1517550))

(declare-fun bs!1139006 () Bool)

(declare-fun b!4748376 () Bool)

(assert (= bs!1139006 (and b!4748376 b!4748335)))

(declare-fun lambda!221067 () Int)

(assert (=> bs!1139006 (= (= lt!1910858 acc!1214) (= lambda!221067 lambda!221055))))

(declare-fun bs!1139007 () Bool)

(assert (= bs!1139007 (and b!4748376 b!4748342)))

(assert (=> bs!1139007 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221067 lambda!221059))))

(declare-fun bs!1139008 () Bool)

(assert (= bs!1139008 (and b!4748376 d!1517512)))

(assert (=> bs!1139008 (= (= lt!1910858 lt!1911039) (= lambda!221067 lambda!221058))))

(declare-fun bs!1139009 () Bool)

(assert (= bs!1139009 (and b!4748376 b!4748338)))

(assert (=> bs!1139009 (= (= lt!1910858 acc!1214) (= lambda!221067 lambda!221056))))

(declare-fun bs!1139010 () Bool)

(assert (= bs!1139010 (and b!4748376 b!4748345)))

(assert (=> bs!1139010 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221067 lambda!221060))))

(assert (=> bs!1139009 (= (= lt!1910858 lt!1911040) (= lambda!221067 lambda!221057))))

(declare-fun bs!1139011 () Bool)

(assert (= bs!1139011 (and b!4748376 d!1517536)))

(assert (=> bs!1139011 (= (= lt!1910858 lt!1911060) (= lambda!221067 lambda!221062))))

(assert (=> bs!1139010 (= (= lt!1910858 lt!1911061) (= lambda!221067 lambda!221061))))

(assert (=> b!4748376 true))

(declare-fun bs!1139012 () Bool)

(declare-fun b!4748379 () Bool)

(assert (= bs!1139012 (and b!4748379 b!4748335)))

(declare-fun lambda!221068 () Int)

(assert (=> bs!1139012 (= (= lt!1910858 acc!1214) (= lambda!221068 lambda!221055))))

(declare-fun bs!1139013 () Bool)

(assert (= bs!1139013 (and b!4748379 b!4748342)))

(assert (=> bs!1139013 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221068 lambda!221059))))

(declare-fun bs!1139014 () Bool)

(assert (= bs!1139014 (and b!4748379 b!4748376)))

(assert (=> bs!1139014 (= lambda!221068 lambda!221067)))

(declare-fun bs!1139015 () Bool)

(assert (= bs!1139015 (and b!4748379 d!1517512)))

(assert (=> bs!1139015 (= (= lt!1910858 lt!1911039) (= lambda!221068 lambda!221058))))

(declare-fun bs!1139016 () Bool)

(assert (= bs!1139016 (and b!4748379 b!4748338)))

(assert (=> bs!1139016 (= (= lt!1910858 acc!1214) (= lambda!221068 lambda!221056))))

(declare-fun bs!1139017 () Bool)

(assert (= bs!1139017 (and b!4748379 b!4748345)))

(assert (=> bs!1139017 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221068 lambda!221060))))

(assert (=> bs!1139016 (= (= lt!1910858 lt!1911040) (= lambda!221068 lambda!221057))))

(declare-fun bs!1139018 () Bool)

(assert (= bs!1139018 (and b!4748379 d!1517536)))

(assert (=> bs!1139018 (= (= lt!1910858 lt!1911060) (= lambda!221068 lambda!221062))))

(assert (=> bs!1139017 (= (= lt!1910858 lt!1911061) (= lambda!221068 lambda!221061))))

(assert (=> b!4748379 true))

(declare-fun lambda!221069 () Int)

(declare-fun lt!1911122 () ListMap!5457)

(assert (=> bs!1139012 (= (= lt!1911122 acc!1214) (= lambda!221069 lambda!221055))))

(assert (=> bs!1139013 (= (= lt!1911122 (+!2340 lt!1910858 t!14174)) (= lambda!221069 lambda!221059))))

(assert (=> bs!1139014 (= (= lt!1911122 lt!1910858) (= lambda!221069 lambda!221067))))

(assert (=> bs!1139015 (= (= lt!1911122 lt!1911039) (= lambda!221069 lambda!221058))))

(assert (=> bs!1139016 (= (= lt!1911122 acc!1214) (= lambda!221069 lambda!221056))))

(assert (=> bs!1139017 (= (= lt!1911122 (+!2340 lt!1910858 t!14174)) (= lambda!221069 lambda!221060))))

(assert (=> bs!1139016 (= (= lt!1911122 lt!1911040) (= lambda!221069 lambda!221057))))

(assert (=> b!4748379 (= (= lt!1911122 lt!1910858) (= lambda!221069 lambda!221068))))

(assert (=> bs!1139018 (= (= lt!1911122 lt!1911060) (= lambda!221069 lambda!221062))))

(assert (=> bs!1139017 (= (= lt!1911122 lt!1911061) (= lambda!221069 lambda!221061))))

(assert (=> b!4748379 true))

(declare-fun bs!1139019 () Bool)

(declare-fun d!1517552 () Bool)

(assert (= bs!1139019 (and d!1517552 b!4748335)))

(declare-fun lt!1911121 () ListMap!5457)

(declare-fun lambda!221070 () Int)

(assert (=> bs!1139019 (= (= lt!1911121 acc!1214) (= lambda!221070 lambda!221055))))

(declare-fun bs!1139020 () Bool)

(assert (= bs!1139020 (and d!1517552 b!4748342)))

(assert (=> bs!1139020 (= (= lt!1911121 (+!2340 lt!1910858 t!14174)) (= lambda!221070 lambda!221059))))

(declare-fun bs!1139021 () Bool)

(assert (= bs!1139021 (and d!1517552 b!4748376)))

(assert (=> bs!1139021 (= (= lt!1911121 lt!1910858) (= lambda!221070 lambda!221067))))

(declare-fun bs!1139022 () Bool)

(assert (= bs!1139022 (and d!1517552 d!1517512)))

(assert (=> bs!1139022 (= (= lt!1911121 lt!1911039) (= lambda!221070 lambda!221058))))

(declare-fun bs!1139023 () Bool)

(assert (= bs!1139023 (and d!1517552 b!4748338)))

(assert (=> bs!1139023 (= (= lt!1911121 acc!1214) (= lambda!221070 lambda!221056))))

(declare-fun bs!1139024 () Bool)

(assert (= bs!1139024 (and d!1517552 b!4748345)))

(assert (=> bs!1139024 (= (= lt!1911121 (+!2340 lt!1910858 t!14174)) (= lambda!221070 lambda!221060))))

(declare-fun bs!1139025 () Bool)

(assert (= bs!1139025 (and d!1517552 b!4748379)))

(assert (=> bs!1139025 (= (= lt!1911121 lt!1911122) (= lambda!221070 lambda!221069))))

(assert (=> bs!1139023 (= (= lt!1911121 lt!1911040) (= lambda!221070 lambda!221057))))

(assert (=> bs!1139025 (= (= lt!1911121 lt!1910858) (= lambda!221070 lambda!221068))))

(declare-fun bs!1139026 () Bool)

(assert (= bs!1139026 (and d!1517552 d!1517536)))

(assert (=> bs!1139026 (= (= lt!1911121 lt!1911060) (= lambda!221070 lambda!221062))))

(assert (=> bs!1139024 (= (= lt!1911121 lt!1911061) (= lambda!221070 lambda!221061))))

(assert (=> d!1517552 true))

(declare-fun e!2961836 () ListMap!5457)

(assert (=> b!4748376 (= e!2961836 lt!1910858)))

(declare-fun lt!1911118 () Unit!134793)

(declare-fun call!332385 () Unit!134793)

(assert (=> b!4748376 (= lt!1911118 call!332385)))

(declare-fun call!332386 () Bool)

(assert (=> b!4748376 call!332386))

(declare-fun lt!1911113 () Unit!134793)

(assert (=> b!4748376 (= lt!1911113 lt!1911118)))

(declare-fun call!332384 () Bool)

(assert (=> b!4748376 call!332384))

(declare-fun lt!1911125 () Unit!134793)

(declare-fun Unit!134850 () Unit!134793)

(assert (=> b!4748376 (= lt!1911125 Unit!134850)))

(declare-fun e!2961837 () Bool)

(assert (=> d!1517552 e!2961837))

(declare-fun res!2012998 () Bool)

(assert (=> d!1517552 (=> (not res!2012998) (not e!2961837))))

(assert (=> d!1517552 (= res!2012998 (forall!11741 (Cons!53038 t!14174 (t!360480 l!14304)) lambda!221070))))

(assert (=> d!1517552 (= lt!1911121 e!2961836)))

(declare-fun c!810884 () Bool)

(assert (=> d!1517552 (= c!810884 ((_ is Nil!53038) (Cons!53038 t!14174 (t!360480 l!14304))))))

(assert (=> d!1517552 (noDuplicateKeys!2104 (Cons!53038 t!14174 (t!360480 l!14304)))))

(assert (=> d!1517552 (= (addToMapMapFromBucket!1530 (Cons!53038 t!14174 (t!360480 l!14304)) lt!1910858) lt!1911121)))

(declare-fun b!4748377 () Bool)

(declare-fun e!2961835 () Bool)

(assert (=> b!4748377 (= e!2961835 (forall!11741 (toList!6074 lt!1910858) lambda!221069))))

(declare-fun b!4748378 () Bool)

(declare-fun res!2012999 () Bool)

(assert (=> b!4748378 (=> (not res!2012999) (not e!2961837))))

(assert (=> b!4748378 (= res!2012999 (forall!11741 (toList!6074 lt!1910858) lambda!221070))))

(declare-fun bm!332379 () Bool)

(assert (=> bm!332379 (= call!332386 (forall!11741 (ite c!810884 (toList!6074 lt!1910858) (Cons!53038 t!14174 (t!360480 l!14304))) (ite c!810884 lambda!221067 lambda!221069)))))

(assert (=> b!4748379 (= e!2961836 lt!1911122)))

(declare-fun lt!1911123 () ListMap!5457)

(assert (=> b!4748379 (= lt!1911123 (+!2340 lt!1910858 (h!59435 (Cons!53038 t!14174 (t!360480 l!14304)))))))

(assert (=> b!4748379 (= lt!1911122 (addToMapMapFromBucket!1530 (t!360480 (Cons!53038 t!14174 (t!360480 l!14304))) (+!2340 lt!1910858 (h!59435 (Cons!53038 t!14174 (t!360480 l!14304))))))))

(declare-fun lt!1911114 () Unit!134793)

(assert (=> b!4748379 (= lt!1911114 call!332385)))

(assert (=> b!4748379 (forall!11741 (toList!6074 lt!1910858) lambda!221068)))

(declare-fun lt!1911110 () Unit!134793)

(assert (=> b!4748379 (= lt!1911110 lt!1911114)))

(assert (=> b!4748379 (forall!11741 (toList!6074 lt!1911123) lambda!221069)))

(declare-fun lt!1911124 () Unit!134793)

(declare-fun Unit!134851 () Unit!134793)

(assert (=> b!4748379 (= lt!1911124 Unit!134851)))

(assert (=> b!4748379 (forall!11741 (t!360480 (Cons!53038 t!14174 (t!360480 l!14304))) lambda!221069)))

(declare-fun lt!1911107 () Unit!134793)

(declare-fun Unit!134852 () Unit!134793)

(assert (=> b!4748379 (= lt!1911107 Unit!134852)))

(declare-fun lt!1911119 () Unit!134793)

(declare-fun Unit!134853 () Unit!134793)

(assert (=> b!4748379 (= lt!1911119 Unit!134853)))

(declare-fun lt!1911106 () Unit!134793)

(assert (=> b!4748379 (= lt!1911106 (forallContained!3767 (toList!6074 lt!1911123) lambda!221069 (h!59435 (Cons!53038 t!14174 (t!360480 l!14304)))))))

(assert (=> b!4748379 (contains!16463 lt!1911123 (_1!30678 (h!59435 (Cons!53038 t!14174 (t!360480 l!14304)))))))

(declare-fun lt!1911112 () Unit!134793)

(declare-fun Unit!134854 () Unit!134793)

(assert (=> b!4748379 (= lt!1911112 Unit!134854)))

(assert (=> b!4748379 (contains!16463 lt!1911122 (_1!30678 (h!59435 (Cons!53038 t!14174 (t!360480 l!14304)))))))

(declare-fun lt!1911105 () Unit!134793)

(declare-fun Unit!134855 () Unit!134793)

(assert (=> b!4748379 (= lt!1911105 Unit!134855)))

(assert (=> b!4748379 call!332386))

(declare-fun lt!1911111 () Unit!134793)

(declare-fun Unit!134856 () Unit!134793)

(assert (=> b!4748379 (= lt!1911111 Unit!134856)))

(assert (=> b!4748379 call!332384))

(declare-fun lt!1911117 () Unit!134793)

(declare-fun Unit!134857 () Unit!134793)

(assert (=> b!4748379 (= lt!1911117 Unit!134857)))

(declare-fun lt!1911120 () Unit!134793)

(declare-fun Unit!134858 () Unit!134793)

(assert (=> b!4748379 (= lt!1911120 Unit!134858)))

(declare-fun lt!1911115 () Unit!134793)

(assert (=> b!4748379 (= lt!1911115 (addForallContainsKeyThenBeforeAdding!855 lt!1910858 lt!1911122 (_1!30678 (h!59435 (Cons!53038 t!14174 (t!360480 l!14304)))) (_2!30678 (h!59435 (Cons!53038 t!14174 (t!360480 l!14304))))))))

(assert (=> b!4748379 (forall!11741 (toList!6074 lt!1910858) lambda!221069)))

(declare-fun lt!1911108 () Unit!134793)

(assert (=> b!4748379 (= lt!1911108 lt!1911115)))

(assert (=> b!4748379 (forall!11741 (toList!6074 lt!1910858) lambda!221069)))

(declare-fun lt!1911109 () Unit!134793)

(declare-fun Unit!134859 () Unit!134793)

(assert (=> b!4748379 (= lt!1911109 Unit!134859)))

(declare-fun res!2013000 () Bool)

(assert (=> b!4748379 (= res!2013000 (forall!11741 (Cons!53038 t!14174 (t!360480 l!14304)) lambda!221069))))

(assert (=> b!4748379 (=> (not res!2013000) (not e!2961835))))

(assert (=> b!4748379 e!2961835))

(declare-fun lt!1911116 () Unit!134793)

(declare-fun Unit!134860 () Unit!134793)

(assert (=> b!4748379 (= lt!1911116 Unit!134860)))

(declare-fun bm!332380 () Bool)

(assert (=> bm!332380 (= call!332385 (lemmaContainsAllItsOwnKeys!856 lt!1910858))))

(declare-fun b!4748380 () Bool)

(assert (=> b!4748380 (= e!2961837 (invariantList!1573 (toList!6074 lt!1911121)))))

(declare-fun bm!332381 () Bool)

(assert (=> bm!332381 (= call!332384 (forall!11741 (ite c!810884 (toList!6074 lt!1910858) (toList!6074 lt!1911123)) (ite c!810884 lambda!221067 lambda!221069)))))

(assert (= (and d!1517552 c!810884) b!4748376))

(assert (= (and d!1517552 (not c!810884)) b!4748379))

(assert (= (and b!4748379 res!2013000) b!4748377))

(assert (= (or b!4748376 b!4748379) bm!332380))

(assert (= (or b!4748376 b!4748379) bm!332379))

(assert (= (or b!4748376 b!4748379) bm!332381))

(assert (= (and d!1517552 res!2012998) b!4748378))

(assert (= (and b!4748378 res!2012999) b!4748380))

(declare-fun m!5706901 () Bool)

(assert (=> b!4748380 m!5706901))

(declare-fun m!5706903 () Bool)

(assert (=> d!1517552 m!5706903))

(declare-fun m!5706905 () Bool)

(assert (=> d!1517552 m!5706905))

(declare-fun m!5706907 () Bool)

(assert (=> b!4748379 m!5706907))

(declare-fun m!5706909 () Bool)

(assert (=> b!4748379 m!5706909))

(declare-fun m!5706911 () Bool)

(assert (=> b!4748379 m!5706911))

(declare-fun m!5706913 () Bool)

(assert (=> b!4748379 m!5706913))

(declare-fun m!5706915 () Bool)

(assert (=> b!4748379 m!5706915))

(declare-fun m!5706917 () Bool)

(assert (=> b!4748379 m!5706917))

(declare-fun m!5706919 () Bool)

(assert (=> b!4748379 m!5706919))

(declare-fun m!5706921 () Bool)

(assert (=> b!4748379 m!5706921))

(assert (=> b!4748379 m!5706907))

(declare-fun m!5706923 () Bool)

(assert (=> b!4748379 m!5706923))

(declare-fun m!5706925 () Bool)

(assert (=> b!4748379 m!5706925))

(assert (=> b!4748379 m!5706911))

(declare-fun m!5706927 () Bool)

(assert (=> b!4748379 m!5706927))

(assert (=> b!4748377 m!5706907))

(declare-fun m!5706929 () Bool)

(assert (=> bm!332381 m!5706929))

(declare-fun m!5706931 () Bool)

(assert (=> b!4748378 m!5706931))

(declare-fun m!5706933 () Bool)

(assert (=> bm!332380 m!5706933))

(declare-fun m!5706935 () Bool)

(assert (=> bm!332379 m!5706935))

(assert (=> b!4748276 d!1517552))

(declare-fun d!1517554 () Bool)

(declare-fun e!2961838 () Bool)

(assert (=> d!1517554 e!2961838))

(declare-fun res!2013002 () Bool)

(assert (=> d!1517554 (=> (not res!2013002) (not e!2961838))))

(declare-fun lt!1911127 () ListMap!5457)

(assert (=> d!1517554 (= res!2013002 (contains!16463 lt!1911127 (_1!30678 (h!59435 l!14304))))))

(declare-fun lt!1911126 () List!53162)

(assert (=> d!1517554 (= lt!1911127 (ListMap!5458 lt!1911126))))

(declare-fun lt!1911129 () Unit!134793)

(declare-fun lt!1911128 () Unit!134793)

(assert (=> d!1517554 (= lt!1911129 lt!1911128)))

(assert (=> d!1517554 (= (getValueByKey!2060 lt!1911126 (_1!30678 (h!59435 l!14304))) (Some!12509 (_2!30678 (h!59435 l!14304))))))

(assert (=> d!1517554 (= lt!1911128 (lemmaContainsTupThenGetReturnValue!1137 lt!1911126 (_1!30678 (h!59435 l!14304)) (_2!30678 (h!59435 l!14304))))))

(assert (=> d!1517554 (= lt!1911126 (insertNoDuplicatedKeys!645 (toList!6074 acc!1214) (_1!30678 (h!59435 l!14304)) (_2!30678 (h!59435 l!14304))))))

(assert (=> d!1517554 (= (+!2340 acc!1214 (h!59435 l!14304)) lt!1911127)))

(declare-fun b!4748381 () Bool)

(declare-fun res!2013001 () Bool)

(assert (=> b!4748381 (=> (not res!2013001) (not e!2961838))))

(assert (=> b!4748381 (= res!2013001 (= (getValueByKey!2060 (toList!6074 lt!1911127) (_1!30678 (h!59435 l!14304))) (Some!12509 (_2!30678 (h!59435 l!14304)))))))

(declare-fun b!4748382 () Bool)

(assert (=> b!4748382 (= e!2961838 (contains!16465 (toList!6074 lt!1911127) (h!59435 l!14304)))))

(assert (= (and d!1517554 res!2013002) b!4748381))

(assert (= (and b!4748381 res!2013001) b!4748382))

(declare-fun m!5706937 () Bool)

(assert (=> d!1517554 m!5706937))

(declare-fun m!5706939 () Bool)

(assert (=> d!1517554 m!5706939))

(declare-fun m!5706941 () Bool)

(assert (=> d!1517554 m!5706941))

(declare-fun m!5706943 () Bool)

(assert (=> d!1517554 m!5706943))

(declare-fun m!5706945 () Bool)

(assert (=> b!4748381 m!5706945))

(declare-fun m!5706947 () Bool)

(assert (=> b!4748382 m!5706947))

(assert (=> b!4748276 d!1517554))

(declare-fun bs!1139027 () Bool)

(declare-fun b!4748383 () Bool)

(assert (= bs!1139027 (and b!4748383 b!4748335)))

(declare-fun lambda!221071 () Int)

(assert (=> bs!1139027 (= (= lt!1910858 acc!1214) (= lambda!221071 lambda!221055))))

(declare-fun bs!1139028 () Bool)

(assert (= bs!1139028 (and b!4748383 b!4748342)))

(assert (=> bs!1139028 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221071 lambda!221059))))

(declare-fun bs!1139029 () Bool)

(assert (= bs!1139029 (and b!4748383 d!1517512)))

(assert (=> bs!1139029 (= (= lt!1910858 lt!1911039) (= lambda!221071 lambda!221058))))

(declare-fun bs!1139030 () Bool)

(assert (= bs!1139030 (and b!4748383 b!4748338)))

(assert (=> bs!1139030 (= (= lt!1910858 acc!1214) (= lambda!221071 lambda!221056))))

(declare-fun bs!1139031 () Bool)

(assert (= bs!1139031 (and b!4748383 b!4748345)))

(assert (=> bs!1139031 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221071 lambda!221060))))

(declare-fun bs!1139032 () Bool)

(assert (= bs!1139032 (and b!4748383 b!4748379)))

(assert (=> bs!1139032 (= (= lt!1910858 lt!1911122) (= lambda!221071 lambda!221069))))

(declare-fun bs!1139033 () Bool)

(assert (= bs!1139033 (and b!4748383 b!4748376)))

(assert (=> bs!1139033 (= lambda!221071 lambda!221067)))

(declare-fun bs!1139034 () Bool)

(assert (= bs!1139034 (and b!4748383 d!1517552)))

(assert (=> bs!1139034 (= (= lt!1910858 lt!1911121) (= lambda!221071 lambda!221070))))

(assert (=> bs!1139030 (= (= lt!1910858 lt!1911040) (= lambda!221071 lambda!221057))))

(assert (=> bs!1139032 (= lambda!221071 lambda!221068)))

(declare-fun bs!1139035 () Bool)

(assert (= bs!1139035 (and b!4748383 d!1517536)))

(assert (=> bs!1139035 (= (= lt!1910858 lt!1911060) (= lambda!221071 lambda!221062))))

(assert (=> bs!1139031 (= (= lt!1910858 lt!1911061) (= lambda!221071 lambda!221061))))

(assert (=> b!4748383 true))

(declare-fun bs!1139036 () Bool)

(declare-fun b!4748386 () Bool)

(assert (= bs!1139036 (and b!4748386 b!4748335)))

(declare-fun lambda!221072 () Int)

(assert (=> bs!1139036 (= (= lt!1910858 acc!1214) (= lambda!221072 lambda!221055))))

(declare-fun bs!1139037 () Bool)

(assert (= bs!1139037 (and b!4748386 b!4748342)))

(assert (=> bs!1139037 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221072 lambda!221059))))

(declare-fun bs!1139038 () Bool)

(assert (= bs!1139038 (and b!4748386 d!1517512)))

(assert (=> bs!1139038 (= (= lt!1910858 lt!1911039) (= lambda!221072 lambda!221058))))

(declare-fun bs!1139039 () Bool)

(assert (= bs!1139039 (and b!4748386 b!4748338)))

(assert (=> bs!1139039 (= (= lt!1910858 acc!1214) (= lambda!221072 lambda!221056))))

(declare-fun bs!1139040 () Bool)

(assert (= bs!1139040 (and b!4748386 b!4748345)))

(assert (=> bs!1139040 (= (= lt!1910858 (+!2340 lt!1910858 t!14174)) (= lambda!221072 lambda!221060))))

(declare-fun bs!1139041 () Bool)

(assert (= bs!1139041 (and b!4748386 b!4748383)))

(assert (=> bs!1139041 (= lambda!221072 lambda!221071)))

(declare-fun bs!1139042 () Bool)

(assert (= bs!1139042 (and b!4748386 b!4748379)))

(assert (=> bs!1139042 (= (= lt!1910858 lt!1911122) (= lambda!221072 lambda!221069))))

(declare-fun bs!1139043 () Bool)

(assert (= bs!1139043 (and b!4748386 b!4748376)))

(assert (=> bs!1139043 (= lambda!221072 lambda!221067)))

(declare-fun bs!1139044 () Bool)

(assert (= bs!1139044 (and b!4748386 d!1517552)))

(assert (=> bs!1139044 (= (= lt!1910858 lt!1911121) (= lambda!221072 lambda!221070))))

(assert (=> bs!1139039 (= (= lt!1910858 lt!1911040) (= lambda!221072 lambda!221057))))

(assert (=> bs!1139042 (= lambda!221072 lambda!221068)))

(declare-fun bs!1139045 () Bool)

(assert (= bs!1139045 (and b!4748386 d!1517536)))

(assert (=> bs!1139045 (= (= lt!1910858 lt!1911060) (= lambda!221072 lambda!221062))))

(assert (=> bs!1139040 (= (= lt!1910858 lt!1911061) (= lambda!221072 lambda!221061))))

(assert (=> b!4748386 true))

(declare-fun lambda!221073 () Int)

(declare-fun lt!1911147 () ListMap!5457)

(assert (=> bs!1139036 (= (= lt!1911147 acc!1214) (= lambda!221073 lambda!221055))))

(assert (=> bs!1139037 (= (= lt!1911147 (+!2340 lt!1910858 t!14174)) (= lambda!221073 lambda!221059))))

(assert (=> bs!1139038 (= (= lt!1911147 lt!1911039) (= lambda!221073 lambda!221058))))

(assert (=> bs!1139039 (= (= lt!1911147 acc!1214) (= lambda!221073 lambda!221056))))

(assert (=> bs!1139040 (= (= lt!1911147 (+!2340 lt!1910858 t!14174)) (= lambda!221073 lambda!221060))))

(assert (=> bs!1139041 (= (= lt!1911147 lt!1910858) (= lambda!221073 lambda!221071))))

(assert (=> bs!1139042 (= (= lt!1911147 lt!1911122) (= lambda!221073 lambda!221069))))

(assert (=> b!4748386 (= (= lt!1911147 lt!1910858) (= lambda!221073 lambda!221072))))

(assert (=> bs!1139043 (= (= lt!1911147 lt!1910858) (= lambda!221073 lambda!221067))))

(assert (=> bs!1139044 (= (= lt!1911147 lt!1911121) (= lambda!221073 lambda!221070))))

(assert (=> bs!1139039 (= (= lt!1911147 lt!1911040) (= lambda!221073 lambda!221057))))

(assert (=> bs!1139042 (= (= lt!1911147 lt!1910858) (= lambda!221073 lambda!221068))))

(assert (=> bs!1139045 (= (= lt!1911147 lt!1911060) (= lambda!221073 lambda!221062))))

(assert (=> bs!1139040 (= (= lt!1911147 lt!1911061) (= lambda!221073 lambda!221061))))

(assert (=> b!4748386 true))

(declare-fun bs!1139046 () Bool)

(declare-fun d!1517556 () Bool)

(assert (= bs!1139046 (and d!1517556 b!4748335)))

(declare-fun lambda!221074 () Int)

(declare-fun lt!1911146 () ListMap!5457)

(assert (=> bs!1139046 (= (= lt!1911146 acc!1214) (= lambda!221074 lambda!221055))))

(declare-fun bs!1139047 () Bool)

(assert (= bs!1139047 (and d!1517556 b!4748342)))

(assert (=> bs!1139047 (= (= lt!1911146 (+!2340 lt!1910858 t!14174)) (= lambda!221074 lambda!221059))))

(declare-fun bs!1139048 () Bool)

(assert (= bs!1139048 (and d!1517556 d!1517512)))

(assert (=> bs!1139048 (= (= lt!1911146 lt!1911039) (= lambda!221074 lambda!221058))))

(declare-fun bs!1139049 () Bool)

(assert (= bs!1139049 (and d!1517556 b!4748338)))

(assert (=> bs!1139049 (= (= lt!1911146 acc!1214) (= lambda!221074 lambda!221056))))

(declare-fun bs!1139050 () Bool)

(assert (= bs!1139050 (and d!1517556 b!4748345)))

(assert (=> bs!1139050 (= (= lt!1911146 (+!2340 lt!1910858 t!14174)) (= lambda!221074 lambda!221060))))

(declare-fun bs!1139051 () Bool)

(assert (= bs!1139051 (and d!1517556 b!4748383)))

(assert (=> bs!1139051 (= (= lt!1911146 lt!1910858) (= lambda!221074 lambda!221071))))

(declare-fun bs!1139052 () Bool)

(assert (= bs!1139052 (and d!1517556 b!4748379)))

(assert (=> bs!1139052 (= (= lt!1911146 lt!1911122) (= lambda!221074 lambda!221069))))

(declare-fun bs!1139053 () Bool)

(assert (= bs!1139053 (and d!1517556 b!4748386)))

(assert (=> bs!1139053 (= (= lt!1911146 lt!1910858) (= lambda!221074 lambda!221072))))

(assert (=> bs!1139053 (= (= lt!1911146 lt!1911147) (= lambda!221074 lambda!221073))))

(declare-fun bs!1139054 () Bool)

(assert (= bs!1139054 (and d!1517556 b!4748376)))

(assert (=> bs!1139054 (= (= lt!1911146 lt!1910858) (= lambda!221074 lambda!221067))))

(declare-fun bs!1139055 () Bool)

(assert (= bs!1139055 (and d!1517556 d!1517552)))

(assert (=> bs!1139055 (= (= lt!1911146 lt!1911121) (= lambda!221074 lambda!221070))))

(assert (=> bs!1139049 (= (= lt!1911146 lt!1911040) (= lambda!221074 lambda!221057))))

(assert (=> bs!1139052 (= (= lt!1911146 lt!1910858) (= lambda!221074 lambda!221068))))

(declare-fun bs!1139056 () Bool)

(assert (= bs!1139056 (and d!1517556 d!1517536)))

(assert (=> bs!1139056 (= (= lt!1911146 lt!1911060) (= lambda!221074 lambda!221062))))

(assert (=> bs!1139050 (= (= lt!1911146 lt!1911061) (= lambda!221074 lambda!221061))))

(assert (=> d!1517556 true))

(declare-fun e!2961840 () ListMap!5457)

(assert (=> b!4748383 (= e!2961840 lt!1910858)))

(declare-fun lt!1911143 () Unit!134793)

(declare-fun call!332388 () Unit!134793)

(assert (=> b!4748383 (= lt!1911143 call!332388)))

(declare-fun call!332389 () Bool)

(assert (=> b!4748383 call!332389))

(declare-fun lt!1911138 () Unit!134793)

(assert (=> b!4748383 (= lt!1911138 lt!1911143)))

(declare-fun call!332387 () Bool)

(assert (=> b!4748383 call!332387))

(declare-fun lt!1911150 () Unit!134793)

(declare-fun Unit!134867 () Unit!134793)

(assert (=> b!4748383 (= lt!1911150 Unit!134867)))

(declare-fun e!2961841 () Bool)

(assert (=> d!1517556 e!2961841))

(declare-fun res!2013003 () Bool)

(assert (=> d!1517556 (=> (not res!2013003) (not e!2961841))))

(assert (=> d!1517556 (= res!2013003 (forall!11741 (t!360480 l!14304) lambda!221074))))

(assert (=> d!1517556 (= lt!1911146 e!2961840)))

(declare-fun c!810885 () Bool)

(assert (=> d!1517556 (= c!810885 ((_ is Nil!53038) (t!360480 l!14304)))))

(assert (=> d!1517556 (noDuplicateKeys!2104 (t!360480 l!14304))))

(assert (=> d!1517556 (= (addToMapMapFromBucket!1530 (t!360480 l!14304) lt!1910858) lt!1911146)))

(declare-fun b!4748384 () Bool)

(declare-fun e!2961839 () Bool)

(assert (=> b!4748384 (= e!2961839 (forall!11741 (toList!6074 lt!1910858) lambda!221073))))

(declare-fun b!4748385 () Bool)

(declare-fun res!2013004 () Bool)

(assert (=> b!4748385 (=> (not res!2013004) (not e!2961841))))

(assert (=> b!4748385 (= res!2013004 (forall!11741 (toList!6074 lt!1910858) lambda!221074))))

(declare-fun bm!332382 () Bool)

(assert (=> bm!332382 (= call!332389 (forall!11741 (ite c!810885 (toList!6074 lt!1910858) (t!360480 l!14304)) (ite c!810885 lambda!221071 lambda!221073)))))

(assert (=> b!4748386 (= e!2961840 lt!1911147)))

(declare-fun lt!1911148 () ListMap!5457)

(assert (=> b!4748386 (= lt!1911148 (+!2340 lt!1910858 (h!59435 (t!360480 l!14304))))))

(assert (=> b!4748386 (= lt!1911147 (addToMapMapFromBucket!1530 (t!360480 (t!360480 l!14304)) (+!2340 lt!1910858 (h!59435 (t!360480 l!14304)))))))

(declare-fun lt!1911139 () Unit!134793)

(assert (=> b!4748386 (= lt!1911139 call!332388)))

(assert (=> b!4748386 (forall!11741 (toList!6074 lt!1910858) lambda!221072)))

(declare-fun lt!1911135 () Unit!134793)

(assert (=> b!4748386 (= lt!1911135 lt!1911139)))

(assert (=> b!4748386 (forall!11741 (toList!6074 lt!1911148) lambda!221073)))

(declare-fun lt!1911149 () Unit!134793)

(declare-fun Unit!134872 () Unit!134793)

(assert (=> b!4748386 (= lt!1911149 Unit!134872)))

(assert (=> b!4748386 (forall!11741 (t!360480 (t!360480 l!14304)) lambda!221073)))

(declare-fun lt!1911132 () Unit!134793)

(declare-fun Unit!134873 () Unit!134793)

(assert (=> b!4748386 (= lt!1911132 Unit!134873)))

(declare-fun lt!1911144 () Unit!134793)

(declare-fun Unit!134874 () Unit!134793)

(assert (=> b!4748386 (= lt!1911144 Unit!134874)))

(declare-fun lt!1911131 () Unit!134793)

(assert (=> b!4748386 (= lt!1911131 (forallContained!3767 (toList!6074 lt!1911148) lambda!221073 (h!59435 (t!360480 l!14304))))))

(assert (=> b!4748386 (contains!16463 lt!1911148 (_1!30678 (h!59435 (t!360480 l!14304))))))

(declare-fun lt!1911137 () Unit!134793)

(declare-fun Unit!134875 () Unit!134793)

(assert (=> b!4748386 (= lt!1911137 Unit!134875)))

(assert (=> b!4748386 (contains!16463 lt!1911147 (_1!30678 (h!59435 (t!360480 l!14304))))))

(declare-fun lt!1911130 () Unit!134793)

(declare-fun Unit!134876 () Unit!134793)

(assert (=> b!4748386 (= lt!1911130 Unit!134876)))

(assert (=> b!4748386 call!332389))

(declare-fun lt!1911136 () Unit!134793)

(declare-fun Unit!134877 () Unit!134793)

(assert (=> b!4748386 (= lt!1911136 Unit!134877)))

(assert (=> b!4748386 call!332387))

(declare-fun lt!1911142 () Unit!134793)

(declare-fun Unit!134878 () Unit!134793)

(assert (=> b!4748386 (= lt!1911142 Unit!134878)))

(declare-fun lt!1911145 () Unit!134793)

(declare-fun Unit!134879 () Unit!134793)

(assert (=> b!4748386 (= lt!1911145 Unit!134879)))

(declare-fun lt!1911140 () Unit!134793)

(assert (=> b!4748386 (= lt!1911140 (addForallContainsKeyThenBeforeAdding!855 lt!1910858 lt!1911147 (_1!30678 (h!59435 (t!360480 l!14304))) (_2!30678 (h!59435 (t!360480 l!14304)))))))

(assert (=> b!4748386 (forall!11741 (toList!6074 lt!1910858) lambda!221073)))

(declare-fun lt!1911133 () Unit!134793)

(assert (=> b!4748386 (= lt!1911133 lt!1911140)))

(assert (=> b!4748386 (forall!11741 (toList!6074 lt!1910858) lambda!221073)))

(declare-fun lt!1911134 () Unit!134793)

(declare-fun Unit!134880 () Unit!134793)

(assert (=> b!4748386 (= lt!1911134 Unit!134880)))

(declare-fun res!2013005 () Bool)

(assert (=> b!4748386 (= res!2013005 (forall!11741 (t!360480 l!14304) lambda!221073))))

(assert (=> b!4748386 (=> (not res!2013005) (not e!2961839))))

(assert (=> b!4748386 e!2961839))

(declare-fun lt!1911141 () Unit!134793)

(declare-fun Unit!134882 () Unit!134793)

(assert (=> b!4748386 (= lt!1911141 Unit!134882)))

(declare-fun bm!332383 () Bool)

(assert (=> bm!332383 (= call!332388 (lemmaContainsAllItsOwnKeys!856 lt!1910858))))

(declare-fun b!4748387 () Bool)

(assert (=> b!4748387 (= e!2961841 (invariantList!1573 (toList!6074 lt!1911146)))))

(declare-fun bm!332384 () Bool)

(assert (=> bm!332384 (= call!332387 (forall!11741 (ite c!810885 (toList!6074 lt!1910858) (toList!6074 lt!1911148)) (ite c!810885 lambda!221071 lambda!221073)))))

(assert (= (and d!1517556 c!810885) b!4748383))

(assert (= (and d!1517556 (not c!810885)) b!4748386))

(assert (= (and b!4748386 res!2013005) b!4748384))

(assert (= (or b!4748383 b!4748386) bm!332383))

(assert (= (or b!4748383 b!4748386) bm!332382))

(assert (= (or b!4748383 b!4748386) bm!332384))

(assert (= (and d!1517556 res!2013003) b!4748385))

(assert (= (and b!4748385 res!2013004) b!4748387))

(declare-fun m!5706949 () Bool)

(assert (=> b!4748387 m!5706949))

(declare-fun m!5706951 () Bool)

(assert (=> d!1517556 m!5706951))

(assert (=> d!1517556 m!5706599))

(declare-fun m!5706953 () Bool)

(assert (=> b!4748386 m!5706953))

(declare-fun m!5706955 () Bool)

(assert (=> b!4748386 m!5706955))

(declare-fun m!5706957 () Bool)

(assert (=> b!4748386 m!5706957))

(declare-fun m!5706959 () Bool)

(assert (=> b!4748386 m!5706959))

(declare-fun m!5706961 () Bool)

(assert (=> b!4748386 m!5706961))

(declare-fun m!5706963 () Bool)

(assert (=> b!4748386 m!5706963))

(declare-fun m!5706965 () Bool)

(assert (=> b!4748386 m!5706965))

(declare-fun m!5706967 () Bool)

(assert (=> b!4748386 m!5706967))

(assert (=> b!4748386 m!5706953))

(declare-fun m!5706969 () Bool)

(assert (=> b!4748386 m!5706969))

(declare-fun m!5706971 () Bool)

(assert (=> b!4748386 m!5706971))

(assert (=> b!4748386 m!5706957))

(declare-fun m!5706973 () Bool)

(assert (=> b!4748386 m!5706973))

(assert (=> b!4748384 m!5706953))

(declare-fun m!5706975 () Bool)

(assert (=> bm!332384 m!5706975))

(declare-fun m!5706977 () Bool)

(assert (=> b!4748385 m!5706977))

(assert (=> bm!332383 m!5706933))

(declare-fun m!5706979 () Bool)

(assert (=> bm!332382 m!5706979))

(assert (=> b!4748276 d!1517556))

(declare-fun d!1517558 () Bool)

(declare-fun e!2961842 () Bool)

(assert (=> d!1517558 e!2961842))

(declare-fun res!2013007 () Bool)

(assert (=> d!1517558 (=> (not res!2013007) (not e!2961842))))

(declare-fun lt!1911152 () ListMap!5457)

(assert (=> d!1517558 (= res!2013007 (contains!16463 lt!1911152 (_1!30678 t!14174)))))

(declare-fun lt!1911151 () List!53162)

(assert (=> d!1517558 (= lt!1911152 (ListMap!5458 lt!1911151))))

(declare-fun lt!1911154 () Unit!134793)

(declare-fun lt!1911153 () Unit!134793)

(assert (=> d!1517558 (= lt!1911154 lt!1911153)))

(assert (=> d!1517558 (= (getValueByKey!2060 lt!1911151 (_1!30678 t!14174)) (Some!12509 (_2!30678 t!14174)))))

(assert (=> d!1517558 (= lt!1911153 (lemmaContainsTupThenGetReturnValue!1137 lt!1911151 (_1!30678 t!14174) (_2!30678 t!14174)))))

(assert (=> d!1517558 (= lt!1911151 (insertNoDuplicatedKeys!645 (toList!6074 lt!1910857) (_1!30678 t!14174) (_2!30678 t!14174)))))

(assert (=> d!1517558 (= (+!2340 lt!1910857 t!14174) lt!1911152)))

(declare-fun b!4748388 () Bool)

(declare-fun res!2013006 () Bool)

(assert (=> b!4748388 (=> (not res!2013006) (not e!2961842))))

(assert (=> b!4748388 (= res!2013006 (= (getValueByKey!2060 (toList!6074 lt!1911152) (_1!30678 t!14174)) (Some!12509 (_2!30678 t!14174))))))

(declare-fun b!4748389 () Bool)

(assert (=> b!4748389 (= e!2961842 (contains!16465 (toList!6074 lt!1911152) t!14174))))

(assert (= (and d!1517558 res!2013007) b!4748388))

(assert (= (and b!4748388 res!2013006) b!4748389))

(declare-fun m!5706981 () Bool)

(assert (=> d!1517558 m!5706981))

(declare-fun m!5706983 () Bool)

(assert (=> d!1517558 m!5706983))

(declare-fun m!5706985 () Bool)

(assert (=> d!1517558 m!5706985))

(declare-fun m!5706987 () Bool)

(assert (=> d!1517558 m!5706987))

(declare-fun m!5706989 () Bool)

(assert (=> b!4748388 m!5706989))

(declare-fun m!5706991 () Bool)

(assert (=> b!4748389 m!5706991))

(assert (=> b!4748276 d!1517558))

(declare-fun d!1517560 () Bool)

(declare-fun res!2013008 () Bool)

(declare-fun e!2961843 () Bool)

(assert (=> d!1517560 (=> res!2013008 e!2961843)))

(assert (=> d!1517560 (= res!2013008 (not ((_ is Cons!53038) (t!360480 l!14304))))))

(assert (=> d!1517560 (= (noDuplicateKeys!2104 (t!360480 l!14304)) e!2961843)))

(declare-fun b!4748390 () Bool)

(declare-fun e!2961844 () Bool)

(assert (=> b!4748390 (= e!2961843 e!2961844)))

(declare-fun res!2013009 () Bool)

(assert (=> b!4748390 (=> (not res!2013009) (not e!2961844))))

(assert (=> b!4748390 (= res!2013009 (not (containsKey!3531 (t!360480 (t!360480 l!14304)) (_1!30678 (h!59435 (t!360480 l!14304))))))))

(declare-fun b!4748391 () Bool)

(assert (=> b!4748391 (= e!2961844 (noDuplicateKeys!2104 (t!360480 (t!360480 l!14304))))))

(assert (= (and d!1517560 (not res!2013008)) b!4748390))

(assert (= (and b!4748390 res!2013009) b!4748391))

(declare-fun m!5706993 () Bool)

(assert (=> b!4748390 m!5706993))

(declare-fun m!5706995 () Bool)

(assert (=> b!4748391 m!5706995))

(assert (=> b!4748276 d!1517560))

(declare-fun d!1517562 () Bool)

(assert (=> d!1517562 (eq!1181 (addToMapMapFromBucket!1530 (Cons!53038 t!14174 (t!360480 l!14304)) lt!1910858) (+!2340 (addToMapMapFromBucket!1530 (t!360480 l!14304) lt!1910858) t!14174))))

(declare-fun lt!1911157 () Unit!134793)

(declare-fun choose!33788 (tuple2!54768 List!53162 ListMap!5457) Unit!134793)

(assert (=> d!1517562 (= lt!1911157 (choose!33788 t!14174 (t!360480 l!14304) lt!1910858))))

(assert (=> d!1517562 (noDuplicateKeys!2104 (t!360480 l!14304))))

(assert (=> d!1517562 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!428 t!14174 (t!360480 l!14304) lt!1910858) lt!1911157)))

(declare-fun bs!1139057 () Bool)

(assert (= bs!1139057 d!1517562))

(assert (=> bs!1139057 m!5706599))

(declare-fun m!5706997 () Bool)

(assert (=> bs!1139057 m!5706997))

(assert (=> bs!1139057 m!5706601))

(assert (=> bs!1139057 m!5706601))

(declare-fun m!5706999 () Bool)

(assert (=> bs!1139057 m!5706999))

(assert (=> bs!1139057 m!5706591))

(assert (=> bs!1139057 m!5706591))

(assert (=> bs!1139057 m!5706999))

(declare-fun m!5707001 () Bool)

(assert (=> bs!1139057 m!5707001))

(assert (=> b!4748276 d!1517562))

(declare-fun d!1517564 () Bool)

(assert (=> d!1517564 (= (eq!1181 lt!1910856 (+!2340 lt!1910857 t!14174)) (= (content!9507 (toList!6074 lt!1910856)) (content!9507 (toList!6074 (+!2340 lt!1910857 t!14174)))))))

(declare-fun bs!1139058 () Bool)

(assert (= bs!1139058 d!1517564))

(assert (=> bs!1139058 m!5706787))

(declare-fun m!5707003 () Bool)

(assert (=> bs!1139058 m!5707003))

(assert (=> b!4748276 d!1517564))

(declare-fun e!2961847 () Bool)

(declare-fun tp!1349832 () Bool)

(declare-fun b!4748396 () Bool)

(assert (=> b!4748396 (= e!2961847 (and tp_is_empty!31709 tp_is_empty!31711 tp!1349832))))

(assert (=> b!4748279 (= tp!1349824 e!2961847)))

(assert (= (and b!4748279 ((_ is Cons!53038) (toList!6074 acc!1214))) b!4748396))

(declare-fun b!4748397 () Bool)

(declare-fun e!2961848 () Bool)

(declare-fun tp!1349833 () Bool)

(assert (=> b!4748397 (= e!2961848 (and tp_is_empty!31709 tp_is_empty!31711 tp!1349833))))

(assert (=> b!4748281 (= tp!1349825 e!2961848)))

(assert (= (and b!4748281 ((_ is Cons!53038) (t!360480 l!14304))) b!4748397))

(check-sat (not b!4748380) (not bm!332383) (not b!4748337) (not b!4748372) (not bm!332380) (not b!4748345) (not d!1517552) (not bm!332374) (not b!4748375) (not b!4748387) tp_is_empty!31709 (not b!4748381) tp_is_empty!31711 (not b!4748367) (not b!4748346) (not d!1517510) (not bm!332382) (not bm!332375) (not d!1517534) (not b!4748388) (not b!4748397) (not bm!332373) (not b!4748373) (not bm!332371) (not d!1517564) (not b!4748396) (not b!4748382) (not b!4748366) (not b!4748343) (not d!1517536) (not d!1517548) (not bm!332372) (not b!4748378) (not b!4748377) (not b!4748339) (not b!4748338) (not bm!332384) (not bm!332379) (not b!4748391) (not b!4748384) (not bm!332381) (not b!4748390) (not b!4748389) (not b!4748374) (not d!1517558) (not d!1517556) (not b!4748385) (not b!4748379) (not b!4748344) (not b!4748386) (not d!1517542) (not d!1517554) (not d!1517512) (not bm!332370) (not d!1517562) (not b!4748336))
(check-sat)
