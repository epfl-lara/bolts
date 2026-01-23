; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485496 () Bool)

(assert start!485496)

(declare-fun e!2963762 () Bool)

(declare-fun tp_is_empty!31887 () Bool)

(declare-fun b!4751204 () Bool)

(declare-fun tp!1350185 () Bool)

(declare-fun tp_is_empty!31885 () Bool)

(assert (=> b!4751204 (= e!2963762 (and tp_is_empty!31885 tp_is_empty!31887 tp!1350185))))

(declare-fun b!4751205 () Bool)

(declare-fun e!2963763 () Bool)

(declare-fun tp!1350184 () Bool)

(assert (=> b!4751205 (= e!2963763 tp!1350184)))

(declare-fun e!2963764 () Bool)

(declare-fun b!4751206 () Bool)

(declare-datatypes ((K!14520 0))(
  ( (K!14521 (val!19887 Int)) )
))
(declare-datatypes ((V!14766 0))(
  ( (V!14767 (val!19888 Int)) )
))
(declare-datatypes ((tuple2!54856 0))(
  ( (tuple2!54857 (_1!30722 K!14520) (_2!30722 V!14766)) )
))
(declare-datatypes ((List!53210 0))(
  ( (Nil!53086) (Cons!53086 (h!59483 tuple2!54856) (t!360542 List!53210)) )
))
(declare-datatypes ((ListMap!5541 0))(
  ( (ListMap!5542 (toList!6116 List!53210)) )
))
(declare-fun lt!1915494 () ListMap!5541)

(declare-fun lt!1915499 () ListMap!5541)

(declare-fun l!14304 () List!53210)

(declare-fun eq!1217 (ListMap!5541 ListMap!5541) Bool)

(declare-fun addToMapMapFromBucket!1572 (List!53210 ListMap!5541) ListMap!5541)

(declare-fun +!2382 (ListMap!5541 tuple2!54856) ListMap!5541)

(assert (=> b!4751206 (= e!2963764 (eq!1217 lt!1915499 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304)))))))

(declare-fun e!2963759 () Bool)

(declare-fun t!14174 () tuple2!54856)

(declare-fun lt!1915496 () ListMap!5541)

(declare-fun lt!1915497 () ListMap!5541)

(declare-fun b!4751207 () Bool)

(assert (=> b!4751207 (= e!2963759 (eq!1217 lt!1915496 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174))))))

(declare-fun b!4751208 () Bool)

(declare-fun e!2963760 () Bool)

(declare-fun e!2963761 () Bool)

(assert (=> b!4751208 (= e!2963760 e!2963761)))

(declare-fun res!2014767 () Bool)

(assert (=> b!4751208 (=> (not res!2014767) (not e!2963761))))

(declare-fun lt!1915493 () List!53210)

(declare-fun noDuplicateKeys!2148 (List!53210) Bool)

(assert (=> b!4751208 (= res!2014767 (noDuplicateKeys!2148 lt!1915493))))

(assert (=> b!4751208 (= lt!1915493 (Cons!53086 t!14174 l!14304))))

(declare-fun b!4751210 () Bool)

(assert (=> b!4751210 (= e!2963761 (not (not (= (_1!30722 (h!59483 l!14304)) (_1!30722 t!14174)))))))

(assert (=> b!4751210 e!2963764))

(declare-fun res!2014762 () Bool)

(assert (=> b!4751210 (=> (not res!2014762) (not e!2963764))))

(assert (=> b!4751210 (= res!2014762 (eq!1217 lt!1915499 (addToMapMapFromBucket!1572 l!14304 lt!1915494)))))

(declare-fun acc!1214 () ListMap!5541)

(assert (=> b!4751210 (= lt!1915494 (+!2382 acc!1214 t!14174))))

(assert (=> b!4751210 (= lt!1915499 (addToMapMapFromBucket!1572 lt!1915493 acc!1214))))

(assert (=> b!4751210 e!2963759))

(declare-fun res!2014763 () Bool)

(assert (=> b!4751210 (=> (not res!2014763) (not e!2963759))))

(declare-fun lt!1915495 () ListMap!5541)

(assert (=> b!4751210 (= res!2014763 (eq!1217 lt!1915496 (+!2382 lt!1915495 t!14174)))))

(assert (=> b!4751210 (= lt!1915496 (addToMapMapFromBucket!1572 (Cons!53086 t!14174 (t!360542 l!14304)) lt!1915497))))

(declare-datatypes ((Unit!135894 0))(
  ( (Unit!135895) )
))
(declare-fun lt!1915498 () Unit!135894)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!462 (tuple2!54856 List!53210 ListMap!5541) Unit!135894)

(assert (=> b!4751210 (= lt!1915498 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!462 t!14174 (t!360542 l!14304) lt!1915497))))

(assert (=> b!4751210 (= lt!1915495 (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497))))

(assert (=> b!4751210 (= lt!1915497 (+!2382 acc!1214 (h!59483 l!14304)))))

(declare-fun b!4751211 () Bool)

(declare-fun res!2014764 () Bool)

(assert (=> b!4751211 (=> (not res!2014764) (not e!2963761))))

(get-info :version)

(assert (=> b!4751211 (= res!2014764 (not ((_ is Nil!53086) l!14304)))))

(declare-fun b!4751209 () Bool)

(declare-fun res!2014766 () Bool)

(assert (=> b!4751209 (=> (not res!2014766) (not e!2963759))))

(assert (=> b!4751209 (= res!2014766 (eq!1217 lt!1915495 (addToMapMapFromBucket!1572 l!14304 acc!1214)))))

(declare-fun res!2014765 () Bool)

(assert (=> start!485496 (=> (not res!2014765) (not e!2963760))))

(assert (=> start!485496 (= res!2014765 (noDuplicateKeys!2148 l!14304))))

(assert (=> start!485496 e!2963760))

(assert (=> start!485496 e!2963762))

(assert (=> start!485496 (and tp_is_empty!31885 tp_is_empty!31887)))

(declare-fun inv!68390 (ListMap!5541) Bool)

(assert (=> start!485496 (and (inv!68390 acc!1214) e!2963763)))

(assert (= (and start!485496 res!2014765) b!4751208))

(assert (= (and b!4751208 res!2014767) b!4751211))

(assert (= (and b!4751211 res!2014764) b!4751210))

(assert (= (and b!4751210 res!2014763) b!4751209))

(assert (= (and b!4751209 res!2014766) b!4751207))

(assert (= (and b!4751210 res!2014762) b!4751206))

(assert (= (and start!485496 ((_ is Cons!53086) l!14304)) b!4751204))

(assert (= start!485496 b!4751205))

(declare-fun m!5713483 () Bool)

(assert (=> start!485496 m!5713483))

(declare-fun m!5713485 () Bool)

(assert (=> start!485496 m!5713485))

(declare-fun m!5713487 () Bool)

(assert (=> b!4751208 m!5713487))

(declare-fun m!5713489 () Bool)

(assert (=> b!4751209 m!5713489))

(assert (=> b!4751209 m!5713489))

(declare-fun m!5713491 () Bool)

(assert (=> b!4751209 m!5713491))

(declare-fun m!5713493 () Bool)

(assert (=> b!4751207 m!5713493))

(assert (=> b!4751207 m!5713493))

(declare-fun m!5713495 () Bool)

(assert (=> b!4751207 m!5713495))

(assert (=> b!4751207 m!5713495))

(declare-fun m!5713497 () Bool)

(assert (=> b!4751207 m!5713497))

(declare-fun m!5713499 () Bool)

(assert (=> b!4751210 m!5713499))

(declare-fun m!5713501 () Bool)

(assert (=> b!4751210 m!5713501))

(declare-fun m!5713503 () Bool)

(assert (=> b!4751210 m!5713503))

(declare-fun m!5713505 () Bool)

(assert (=> b!4751210 m!5713505))

(assert (=> b!4751210 m!5713499))

(declare-fun m!5713507 () Bool)

(assert (=> b!4751210 m!5713507))

(declare-fun m!5713509 () Bool)

(assert (=> b!4751210 m!5713509))

(declare-fun m!5713511 () Bool)

(assert (=> b!4751210 m!5713511))

(declare-fun m!5713513 () Bool)

(assert (=> b!4751210 m!5713513))

(declare-fun m!5713515 () Bool)

(assert (=> b!4751210 m!5713515))

(assert (=> b!4751210 m!5713509))

(declare-fun m!5713517 () Bool)

(assert (=> b!4751210 m!5713517))

(declare-fun m!5713519 () Bool)

(assert (=> b!4751206 m!5713519))

(assert (=> b!4751206 m!5713519))

(declare-fun m!5713521 () Bool)

(assert (=> b!4751206 m!5713521))

(assert (=> b!4751206 m!5713521))

(declare-fun m!5713523 () Bool)

(assert (=> b!4751206 m!5713523))

(check-sat (not b!4751205) (not b!4751208) (not b!4751209) (not b!4751206) (not start!485496) tp_is_empty!31885 (not b!4751204) (not b!4751207) tp_is_empty!31887 (not b!4751210))
(check-sat)
(get-model)

(declare-fun d!1518548 () Bool)

(declare-fun res!2014772 () Bool)

(declare-fun e!2963769 () Bool)

(assert (=> d!1518548 (=> res!2014772 e!2963769)))

(assert (=> d!1518548 (= res!2014772 (not ((_ is Cons!53086) l!14304)))))

(assert (=> d!1518548 (= (noDuplicateKeys!2148 l!14304) e!2963769)))

(declare-fun b!4751216 () Bool)

(declare-fun e!2963770 () Bool)

(assert (=> b!4751216 (= e!2963769 e!2963770)))

(declare-fun res!2014773 () Bool)

(assert (=> b!4751216 (=> (not res!2014773) (not e!2963770))))

(declare-fun containsKey!3557 (List!53210 K!14520) Bool)

(assert (=> b!4751216 (= res!2014773 (not (containsKey!3557 (t!360542 l!14304) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751217 () Bool)

(assert (=> b!4751217 (= e!2963770 (noDuplicateKeys!2148 (t!360542 l!14304)))))

(assert (= (and d!1518548 (not res!2014772)) b!4751216))

(assert (= (and b!4751216 res!2014773) b!4751217))

(declare-fun m!5713529 () Bool)

(assert (=> b!4751216 m!5713529))

(declare-fun m!5713531 () Bool)

(assert (=> b!4751217 m!5713531))

(assert (=> start!485496 d!1518548))

(declare-fun d!1518554 () Bool)

(declare-fun invariantList!1594 (List!53210) Bool)

(assert (=> d!1518554 (= (inv!68390 acc!1214) (invariantList!1594 (toList!6116 acc!1214)))))

(declare-fun bs!1141191 () Bool)

(assert (= bs!1141191 d!1518554))

(declare-fun m!5713533 () Bool)

(assert (=> bs!1141191 m!5713533))

(assert (=> start!485496 d!1518554))

(declare-fun d!1518556 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9529 (List!53210) (InoxSet tuple2!54856))

(assert (=> d!1518556 (= (eq!1217 lt!1915499 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304)))) (= (content!9529 (toList!6116 lt!1915499)) (content!9529 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304)))))))))

(declare-fun bs!1141192 () Bool)

(assert (= bs!1141192 d!1518556))

(declare-fun m!5713535 () Bool)

(assert (=> bs!1141192 m!5713535))

(declare-fun m!5713537 () Bool)

(assert (=> bs!1141192 m!5713537))

(assert (=> b!4751206 d!1518556))

(declare-fun b!4751268 () Bool)

(assert (=> b!4751268 true))

(declare-fun bs!1141233 () Bool)

(declare-fun b!4751267 () Bool)

(assert (= bs!1141233 (and b!4751267 b!4751268)))

(declare-fun lambda!222066 () Int)

(declare-fun lambda!222065 () Int)

(assert (=> bs!1141233 (= lambda!222066 lambda!222065)))

(assert (=> b!4751267 true))

(declare-fun lt!1915671 () ListMap!5541)

(declare-fun lambda!222067 () Int)

(assert (=> bs!1141233 (= (= lt!1915671 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222067 lambda!222065))))

(assert (=> b!4751267 (= (= lt!1915671 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222067 lambda!222066))))

(assert (=> b!4751267 true))

(declare-fun bs!1141241 () Bool)

(declare-fun d!1518558 () Bool)

(assert (= bs!1141241 (and d!1518558 b!4751268)))

(declare-fun lt!1915675 () ListMap!5541)

(declare-fun lambda!222069 () Int)

(assert (=> bs!1141241 (= (= lt!1915675 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222069 lambda!222065))))

(declare-fun bs!1141243 () Bool)

(assert (= bs!1141243 (and d!1518558 b!4751267)))

(assert (=> bs!1141243 (= (= lt!1915675 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222069 lambda!222066))))

(assert (=> bs!1141243 (= (= lt!1915675 lt!1915671) (= lambda!222069 lambda!222067))))

(assert (=> d!1518558 true))

(declare-fun e!2963802 () Bool)

(assert (=> d!1518558 e!2963802))

(declare-fun res!2014807 () Bool)

(assert (=> d!1518558 (=> (not res!2014807) (not e!2963802))))

(declare-fun forall!11762 (List!53210 Int) Bool)

(assert (=> d!1518558 (= res!2014807 (forall!11762 (t!360542 l!14304) lambda!222069))))

(declare-fun e!2963803 () ListMap!5541)

(assert (=> d!1518558 (= lt!1915675 e!2963803)))

(declare-fun c!811201 () Bool)

(assert (=> d!1518558 (= c!811201 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518558 (noDuplicateKeys!2148 (t!360542 l!14304))))

(assert (=> d!1518558 (= (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304))) lt!1915675)))

(assert (=> b!4751267 (= e!2963803 lt!1915671)))

(declare-fun lt!1915672 () ListMap!5541)

(assert (=> b!4751267 (= lt!1915672 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751267 (= lt!1915671 (addToMapMapFromBucket!1572 (t!360542 (t!360542 l!14304)) (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1915678 () Unit!135894)

(declare-fun call!332849 () Unit!135894)

(assert (=> b!4751267 (= lt!1915678 call!332849)))

(assert (=> b!4751267 (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222066)))

(declare-fun lt!1915665 () Unit!135894)

(assert (=> b!4751267 (= lt!1915665 lt!1915678)))

(declare-fun call!332851 () Bool)

(assert (=> b!4751267 call!332851))

(declare-fun lt!1915682 () Unit!135894)

(declare-fun Unit!135910 () Unit!135894)

(assert (=> b!4751267 (= lt!1915682 Unit!135910)))

(assert (=> b!4751267 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222067)))

(declare-fun lt!1915667 () Unit!135894)

(declare-fun Unit!135912 () Unit!135894)

(assert (=> b!4751267 (= lt!1915667 Unit!135912)))

(declare-fun lt!1915676 () Unit!135894)

(declare-fun Unit!135913 () Unit!135894)

(assert (=> b!4751267 (= lt!1915676 Unit!135913)))

(declare-fun lt!1915669 () Unit!135894)

(declare-fun forallContained!3788 (List!53210 Int tuple2!54856) Unit!135894)

(assert (=> b!4751267 (= lt!1915669 (forallContained!3788 (toList!6116 lt!1915672) lambda!222067 (h!59483 (t!360542 l!14304))))))

(declare-fun contains!16509 (ListMap!5541 K!14520) Bool)

(assert (=> b!4751267 (contains!16509 lt!1915672 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1915677 () Unit!135894)

(declare-fun Unit!135915 () Unit!135894)

(assert (=> b!4751267 (= lt!1915677 Unit!135915)))

(assert (=> b!4751267 (contains!16509 lt!1915671 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1915679 () Unit!135894)

(declare-fun Unit!135917 () Unit!135894)

(assert (=> b!4751267 (= lt!1915679 Unit!135917)))

(assert (=> b!4751267 (forall!11762 (t!360542 l!14304) lambda!222067)))

(declare-fun lt!1915662 () Unit!135894)

(declare-fun Unit!135919 () Unit!135894)

(assert (=> b!4751267 (= lt!1915662 Unit!135919)))

(assert (=> b!4751267 (forall!11762 (toList!6116 lt!1915672) lambda!222067)))

(declare-fun lt!1915668 () Unit!135894)

(declare-fun Unit!135921 () Unit!135894)

(assert (=> b!4751267 (= lt!1915668 Unit!135921)))

(declare-fun lt!1915664 () Unit!135894)

(declare-fun Unit!135922 () Unit!135894)

(assert (=> b!4751267 (= lt!1915664 Unit!135922)))

(declare-fun lt!1915666 () Unit!135894)

(declare-fun addForallContainsKeyThenBeforeAdding!876 (ListMap!5541 ListMap!5541 K!14520 V!14766) Unit!135894)

(assert (=> b!4751267 (= lt!1915666 (addForallContainsKeyThenBeforeAdding!876 (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915671 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751267 (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222067)))

(declare-fun lt!1915680 () Unit!135894)

(assert (=> b!4751267 (= lt!1915680 lt!1915666)))

(assert (=> b!4751267 (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222067)))

(declare-fun lt!1915673 () Unit!135894)

(declare-fun Unit!135924 () Unit!135894)

(assert (=> b!4751267 (= lt!1915673 Unit!135924)))

(declare-fun res!2014809 () Bool)

(assert (=> b!4751267 (= res!2014809 (forall!11762 (t!360542 l!14304) lambda!222067))))

(declare-fun e!2963801 () Bool)

(assert (=> b!4751267 (=> (not res!2014809) (not e!2963801))))

(assert (=> b!4751267 e!2963801))

(declare-fun lt!1915674 () Unit!135894)

(declare-fun Unit!135925 () Unit!135894)

(assert (=> b!4751267 (= lt!1915674 Unit!135925)))

(declare-fun bm!332844 () Bool)

(assert (=> bm!332844 (= call!332851 (forall!11762 (ite c!811201 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (toList!6116 lt!1915672)) (ite c!811201 lambda!222065 lambda!222067)))))

(assert (=> b!4751268 (= e!2963803 (+!2382 lt!1915494 (h!59483 l!14304)))))

(declare-fun lt!1915670 () Unit!135894)

(assert (=> b!4751268 (= lt!1915670 call!332849)))

(declare-fun call!332850 () Bool)

(assert (=> b!4751268 call!332850))

(declare-fun lt!1915681 () Unit!135894)

(assert (=> b!4751268 (= lt!1915681 lt!1915670)))

(assert (=> b!4751268 call!332851))

(declare-fun lt!1915663 () Unit!135894)

(declare-fun Unit!135927 () Unit!135894)

(assert (=> b!4751268 (= lt!1915663 Unit!135927)))

(declare-fun b!4751269 () Bool)

(assert (=> b!4751269 (= e!2963802 (invariantList!1594 (toList!6116 lt!1915675)))))

(declare-fun bm!332845 () Bool)

(assert (=> bm!332845 (= call!332850 (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (ite c!811201 lambda!222065 lambda!222067)))))

(declare-fun bm!332846 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!877 (ListMap!5541) Unit!135894)

(assert (=> bm!332846 (= call!332849 (lemmaContainsAllItsOwnKeys!877 (+!2382 lt!1915494 (h!59483 l!14304))))))

(declare-fun b!4751270 () Bool)

(assert (=> b!4751270 (= e!2963801 call!332850)))

(declare-fun b!4751271 () Bool)

(declare-fun res!2014808 () Bool)

(assert (=> b!4751271 (=> (not res!2014808) (not e!2963802))))

(assert (=> b!4751271 (= res!2014808 (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222069))))

(assert (= (and d!1518558 c!811201) b!4751268))

(assert (= (and d!1518558 (not c!811201)) b!4751267))

(assert (= (and b!4751267 res!2014809) b!4751270))

(assert (= (or b!4751268 b!4751267) bm!332846))

(assert (= (or b!4751268 b!4751267) bm!332844))

(assert (= (or b!4751268 b!4751270) bm!332845))

(assert (= (and d!1518558 res!2014807) b!4751271))

(assert (= (and b!4751271 res!2014808) b!4751269))

(declare-fun m!5713687 () Bool)

(assert (=> d!1518558 m!5713687))

(assert (=> d!1518558 m!5713531))

(declare-fun m!5713689 () Bool)

(assert (=> bm!332844 m!5713689))

(assert (=> bm!332846 m!5713519))

(declare-fun m!5713691 () Bool)

(assert (=> bm!332846 m!5713691))

(declare-fun m!5713693 () Bool)

(assert (=> b!4751269 m!5713693))

(declare-fun m!5713695 () Bool)

(assert (=> b!4751267 m!5713695))

(declare-fun m!5713697 () Bool)

(assert (=> b!4751267 m!5713697))

(declare-fun m!5713699 () Bool)

(assert (=> b!4751267 m!5713699))

(declare-fun m!5713701 () Bool)

(assert (=> b!4751267 m!5713701))

(declare-fun m!5713703 () Bool)

(assert (=> b!4751267 m!5713703))

(assert (=> b!4751267 m!5713519))

(assert (=> b!4751267 m!5713697))

(declare-fun m!5713705 () Bool)

(assert (=> b!4751267 m!5713705))

(declare-fun m!5713707 () Bool)

(assert (=> b!4751267 m!5713707))

(assert (=> b!4751267 m!5713701))

(declare-fun m!5713709 () Bool)

(assert (=> b!4751267 m!5713709))

(declare-fun m!5713711 () Bool)

(assert (=> b!4751267 m!5713711))

(assert (=> b!4751267 m!5713519))

(declare-fun m!5713713 () Bool)

(assert (=> b!4751267 m!5713713))

(declare-fun m!5713715 () Bool)

(assert (=> b!4751267 m!5713715))

(assert (=> b!4751267 m!5713711))

(declare-fun m!5713717 () Bool)

(assert (=> bm!332845 m!5713717))

(declare-fun m!5713719 () Bool)

(assert (=> b!4751271 m!5713719))

(assert (=> b!4751206 d!1518558))

(declare-fun d!1518582 () Bool)

(declare-fun e!2963813 () Bool)

(assert (=> d!1518582 e!2963813))

(declare-fun res!2014822 () Bool)

(assert (=> d!1518582 (=> (not res!2014822) (not e!2963813))))

(declare-fun lt!1915738 () ListMap!5541)

(assert (=> d!1518582 (= res!2014822 (contains!16509 lt!1915738 (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1915739 () List!53210)

(assert (=> d!1518582 (= lt!1915738 (ListMap!5542 lt!1915739))))

(declare-fun lt!1915740 () Unit!135894)

(declare-fun lt!1915737 () Unit!135894)

(assert (=> d!1518582 (= lt!1915740 lt!1915737)))

(declare-datatypes ((Option!12530 0))(
  ( (None!12529) (Some!12529 (v!47228 V!14766)) )
))
(declare-fun getValueByKey!2080 (List!53210 K!14520) Option!12530)

(assert (=> d!1518582 (= (getValueByKey!2080 lt!1915739 (_1!30722 (h!59483 l!14304))) (Some!12529 (_2!30722 (h!59483 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1157 (List!53210 K!14520 V!14766) Unit!135894)

(assert (=> d!1518582 (= lt!1915737 (lemmaContainsTupThenGetReturnValue!1157 lt!1915739 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(declare-fun insertNoDuplicatedKeys!665 (List!53210 K!14520 V!14766) List!53210)

(assert (=> d!1518582 (= lt!1915739 (insertNoDuplicatedKeys!665 (toList!6116 lt!1915494) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(assert (=> d!1518582 (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915738)))

(declare-fun b!4751290 () Bool)

(declare-fun res!2014823 () Bool)

(assert (=> b!4751290 (=> (not res!2014823) (not e!2963813))))

(assert (=> b!4751290 (= res!2014823 (= (getValueByKey!2080 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304))) (Some!12529 (_2!30722 (h!59483 l!14304)))))))

(declare-fun b!4751291 () Bool)

(declare-fun contains!16510 (List!53210 tuple2!54856) Bool)

(assert (=> b!4751291 (= e!2963813 (contains!16510 (toList!6116 lt!1915738) (h!59483 l!14304)))))

(assert (= (and d!1518582 res!2014822) b!4751290))

(assert (= (and b!4751290 res!2014823) b!4751291))

(declare-fun m!5713753 () Bool)

(assert (=> d!1518582 m!5713753))

(declare-fun m!5713755 () Bool)

(assert (=> d!1518582 m!5713755))

(declare-fun m!5713757 () Bool)

(assert (=> d!1518582 m!5713757))

(declare-fun m!5713759 () Bool)

(assert (=> d!1518582 m!5713759))

(declare-fun m!5713761 () Bool)

(assert (=> b!4751290 m!5713761))

(declare-fun m!5713763 () Bool)

(assert (=> b!4751291 m!5713763))

(assert (=> b!4751206 d!1518582))

(declare-fun d!1518586 () Bool)

(assert (=> d!1518586 (= (eq!1217 lt!1915496 (+!2382 lt!1915495 t!14174)) (= (content!9529 (toList!6116 lt!1915496)) (content!9529 (toList!6116 (+!2382 lt!1915495 t!14174)))))))

(declare-fun bs!1141302 () Bool)

(assert (= bs!1141302 d!1518586))

(declare-fun m!5713765 () Bool)

(assert (=> bs!1141302 m!5713765))

(declare-fun m!5713767 () Bool)

(assert (=> bs!1141302 m!5713767))

(assert (=> b!4751210 d!1518586))

(declare-fun d!1518588 () Bool)

(declare-fun e!2963814 () Bool)

(assert (=> d!1518588 e!2963814))

(declare-fun res!2014824 () Bool)

(assert (=> d!1518588 (=> (not res!2014824) (not e!2963814))))

(declare-fun lt!1915742 () ListMap!5541)

(assert (=> d!1518588 (= res!2014824 (contains!16509 lt!1915742 (_1!30722 t!14174)))))

(declare-fun lt!1915743 () List!53210)

(assert (=> d!1518588 (= lt!1915742 (ListMap!5542 lt!1915743))))

(declare-fun lt!1915744 () Unit!135894)

(declare-fun lt!1915741 () Unit!135894)

(assert (=> d!1518588 (= lt!1915744 lt!1915741)))

(assert (=> d!1518588 (= (getValueByKey!2080 lt!1915743 (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174)))))

(assert (=> d!1518588 (= lt!1915741 (lemmaContainsTupThenGetReturnValue!1157 lt!1915743 (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1518588 (= lt!1915743 (insertNoDuplicatedKeys!665 (toList!6116 acc!1214) (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1518588 (= (+!2382 acc!1214 t!14174) lt!1915742)))

(declare-fun b!4751292 () Bool)

(declare-fun res!2014825 () Bool)

(assert (=> b!4751292 (=> (not res!2014825) (not e!2963814))))

(assert (=> b!4751292 (= res!2014825 (= (getValueByKey!2080 (toList!6116 lt!1915742) (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174))))))

(declare-fun b!4751293 () Bool)

(assert (=> b!4751293 (= e!2963814 (contains!16510 (toList!6116 lt!1915742) t!14174))))

(assert (= (and d!1518588 res!2014824) b!4751292))

(assert (= (and b!4751292 res!2014825) b!4751293))

(declare-fun m!5713769 () Bool)

(assert (=> d!1518588 m!5713769))

(declare-fun m!5713771 () Bool)

(assert (=> d!1518588 m!5713771))

(declare-fun m!5713773 () Bool)

(assert (=> d!1518588 m!5713773))

(declare-fun m!5713775 () Bool)

(assert (=> d!1518588 m!5713775))

(declare-fun m!5713777 () Bool)

(assert (=> b!4751292 m!5713777))

(declare-fun m!5713779 () Bool)

(assert (=> b!4751293 m!5713779))

(assert (=> b!4751210 d!1518588))

(declare-fun bs!1141307 () Bool)

(declare-fun b!4751295 () Bool)

(assert (= bs!1141307 (and b!4751295 b!4751268)))

(declare-fun lambda!222077 () Int)

(assert (=> bs!1141307 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222077 lambda!222065))))

(declare-fun bs!1141308 () Bool)

(assert (= bs!1141308 (and b!4751295 b!4751267)))

(assert (=> bs!1141308 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222077 lambda!222066))))

(assert (=> bs!1141308 (= (= lt!1915497 lt!1915671) (= lambda!222077 lambda!222067))))

(declare-fun bs!1141309 () Bool)

(assert (= bs!1141309 (and b!4751295 d!1518558)))

(assert (=> bs!1141309 (= (= lt!1915497 lt!1915675) (= lambda!222077 lambda!222069))))

(assert (=> b!4751295 true))

(declare-fun bs!1141310 () Bool)

(declare-fun b!4751294 () Bool)

(assert (= bs!1141310 (and b!4751294 b!4751295)))

(declare-fun lambda!222078 () Int)

(assert (=> bs!1141310 (= lambda!222078 lambda!222077)))

(declare-fun bs!1141311 () Bool)

(assert (= bs!1141311 (and b!4751294 d!1518558)))

(assert (=> bs!1141311 (= (= lt!1915497 lt!1915675) (= lambda!222078 lambda!222069))))

(declare-fun bs!1141312 () Bool)

(assert (= bs!1141312 (and b!4751294 b!4751267)))

(assert (=> bs!1141312 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222078 lambda!222066))))

(assert (=> bs!1141312 (= (= lt!1915497 lt!1915671) (= lambda!222078 lambda!222067))))

(declare-fun bs!1141313 () Bool)

(assert (= bs!1141313 (and b!4751294 b!4751268)))

(assert (=> bs!1141313 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222078 lambda!222065))))

(assert (=> b!4751294 true))

(declare-fun lambda!222079 () Int)

(declare-fun lt!1915754 () ListMap!5541)

(assert (=> bs!1141310 (= (= lt!1915754 lt!1915497) (= lambda!222079 lambda!222077))))

(assert (=> bs!1141311 (= (= lt!1915754 lt!1915675) (= lambda!222079 lambda!222069))))

(assert (=> b!4751294 (= (= lt!1915754 lt!1915497) (= lambda!222079 lambda!222078))))

(assert (=> bs!1141312 (= (= lt!1915754 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222079 lambda!222066))))

(assert (=> bs!1141312 (= (= lt!1915754 lt!1915671) (= lambda!222079 lambda!222067))))

(assert (=> bs!1141313 (= (= lt!1915754 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222079 lambda!222065))))

(assert (=> b!4751294 true))

(declare-fun bs!1141326 () Bool)

(declare-fun d!1518590 () Bool)

(assert (= bs!1141326 (and d!1518590 b!4751295)))

(declare-fun lt!1915758 () ListMap!5541)

(declare-fun lambda!222081 () Int)

(assert (=> bs!1141326 (= (= lt!1915758 lt!1915497) (= lambda!222081 lambda!222077))))

(declare-fun bs!1141328 () Bool)

(assert (= bs!1141328 (and d!1518590 d!1518558)))

(assert (=> bs!1141328 (= (= lt!1915758 lt!1915675) (= lambda!222081 lambda!222069))))

(declare-fun bs!1141330 () Bool)

(assert (= bs!1141330 (and d!1518590 b!4751294)))

(assert (=> bs!1141330 (= (= lt!1915758 lt!1915754) (= lambda!222081 lambda!222079))))

(assert (=> bs!1141330 (= (= lt!1915758 lt!1915497) (= lambda!222081 lambda!222078))))

(declare-fun bs!1141332 () Bool)

(assert (= bs!1141332 (and d!1518590 b!4751267)))

(assert (=> bs!1141332 (= (= lt!1915758 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222081 lambda!222066))))

(assert (=> bs!1141332 (= (= lt!1915758 lt!1915671) (= lambda!222081 lambda!222067))))

(declare-fun bs!1141333 () Bool)

(assert (= bs!1141333 (and d!1518590 b!4751268)))

(assert (=> bs!1141333 (= (= lt!1915758 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222081 lambda!222065))))

(assert (=> d!1518590 true))

(declare-fun e!2963816 () Bool)

(assert (=> d!1518590 e!2963816))

(declare-fun res!2014826 () Bool)

(assert (=> d!1518590 (=> (not res!2014826) (not e!2963816))))

(assert (=> d!1518590 (= res!2014826 (forall!11762 (Cons!53086 t!14174 (t!360542 l!14304)) lambda!222081))))

(declare-fun e!2963817 () ListMap!5541)

(assert (=> d!1518590 (= lt!1915758 e!2963817)))

(declare-fun c!811204 () Bool)

(assert (=> d!1518590 (= c!811204 ((_ is Nil!53086) (Cons!53086 t!14174 (t!360542 l!14304))))))

(assert (=> d!1518590 (noDuplicateKeys!2148 (Cons!53086 t!14174 (t!360542 l!14304)))))

(assert (=> d!1518590 (= (addToMapMapFromBucket!1572 (Cons!53086 t!14174 (t!360542 l!14304)) lt!1915497) lt!1915758)))

(assert (=> b!4751294 (= e!2963817 lt!1915754)))

(declare-fun lt!1915755 () ListMap!5541)

(assert (=> b!4751294 (= lt!1915755 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (=> b!4751294 (= lt!1915754 (addToMapMapFromBucket!1572 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun lt!1915761 () Unit!135894)

(declare-fun call!332858 () Unit!135894)

(assert (=> b!4751294 (= lt!1915761 call!332858)))

(assert (=> b!4751294 (forall!11762 (toList!6116 lt!1915497) lambda!222078)))

(declare-fun lt!1915748 () Unit!135894)

(assert (=> b!4751294 (= lt!1915748 lt!1915761)))

(declare-fun call!332860 () Bool)

(assert (=> b!4751294 call!332860))

(declare-fun lt!1915765 () Unit!135894)

(declare-fun Unit!135929 () Unit!135894)

(assert (=> b!4751294 (= lt!1915765 Unit!135929)))

(assert (=> b!4751294 (forall!11762 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) lambda!222079)))

(declare-fun lt!1915750 () Unit!135894)

(declare-fun Unit!135930 () Unit!135894)

(assert (=> b!4751294 (= lt!1915750 Unit!135930)))

(declare-fun lt!1915759 () Unit!135894)

(declare-fun Unit!135931 () Unit!135894)

(assert (=> b!4751294 (= lt!1915759 Unit!135931)))

(declare-fun lt!1915752 () Unit!135894)

(assert (=> b!4751294 (= lt!1915752 (forallContained!3788 (toList!6116 lt!1915755) lambda!222079 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (=> b!4751294 (contains!16509 lt!1915755 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(declare-fun lt!1915760 () Unit!135894)

(declare-fun Unit!135932 () Unit!135894)

(assert (=> b!4751294 (= lt!1915760 Unit!135932)))

(assert (=> b!4751294 (contains!16509 lt!1915754 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(declare-fun lt!1915762 () Unit!135894)

(declare-fun Unit!135933 () Unit!135894)

(assert (=> b!4751294 (= lt!1915762 Unit!135933)))

(assert (=> b!4751294 (forall!11762 (Cons!53086 t!14174 (t!360542 l!14304)) lambda!222079)))

(declare-fun lt!1915745 () Unit!135894)

(declare-fun Unit!135934 () Unit!135894)

(assert (=> b!4751294 (= lt!1915745 Unit!135934)))

(assert (=> b!4751294 (forall!11762 (toList!6116 lt!1915755) lambda!222079)))

(declare-fun lt!1915751 () Unit!135894)

(declare-fun Unit!135935 () Unit!135894)

(assert (=> b!4751294 (= lt!1915751 Unit!135935)))

(declare-fun lt!1915747 () Unit!135894)

(declare-fun Unit!135936 () Unit!135894)

(assert (=> b!4751294 (= lt!1915747 Unit!135936)))

(declare-fun lt!1915749 () Unit!135894)

(assert (=> b!4751294 (= lt!1915749 (addForallContainsKeyThenBeforeAdding!876 lt!1915497 lt!1915754 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> b!4751294 (forall!11762 (toList!6116 lt!1915497) lambda!222079)))

(declare-fun lt!1915763 () Unit!135894)

(assert (=> b!4751294 (= lt!1915763 lt!1915749)))

(assert (=> b!4751294 (forall!11762 (toList!6116 lt!1915497) lambda!222079)))

(declare-fun lt!1915756 () Unit!135894)

(declare-fun Unit!135937 () Unit!135894)

(assert (=> b!4751294 (= lt!1915756 Unit!135937)))

(declare-fun res!2014828 () Bool)

(assert (=> b!4751294 (= res!2014828 (forall!11762 (Cons!53086 t!14174 (t!360542 l!14304)) lambda!222079))))

(declare-fun e!2963815 () Bool)

(assert (=> b!4751294 (=> (not res!2014828) (not e!2963815))))

(assert (=> b!4751294 e!2963815))

(declare-fun lt!1915757 () Unit!135894)

(declare-fun Unit!135938 () Unit!135894)

(assert (=> b!4751294 (= lt!1915757 Unit!135938)))

(declare-fun bm!332853 () Bool)

(assert (=> bm!332853 (= call!332860 (forall!11762 (ite c!811204 (toList!6116 lt!1915497) (toList!6116 lt!1915755)) (ite c!811204 lambda!222077 lambda!222079)))))

(assert (=> b!4751295 (= e!2963817 lt!1915497)))

(declare-fun lt!1915753 () Unit!135894)

(assert (=> b!4751295 (= lt!1915753 call!332858)))

(declare-fun call!332859 () Bool)

(assert (=> b!4751295 call!332859))

(declare-fun lt!1915764 () Unit!135894)

(assert (=> b!4751295 (= lt!1915764 lt!1915753)))

(assert (=> b!4751295 call!332860))

(declare-fun lt!1915746 () Unit!135894)

(declare-fun Unit!135939 () Unit!135894)

(assert (=> b!4751295 (= lt!1915746 Unit!135939)))

(declare-fun b!4751296 () Bool)

(assert (=> b!4751296 (= e!2963816 (invariantList!1594 (toList!6116 lt!1915758)))))

(declare-fun bm!332854 () Bool)

(assert (=> bm!332854 (= call!332859 (forall!11762 (toList!6116 lt!1915497) (ite c!811204 lambda!222077 lambda!222079)))))

(declare-fun bm!332855 () Bool)

(assert (=> bm!332855 (= call!332858 (lemmaContainsAllItsOwnKeys!877 lt!1915497))))

(declare-fun b!4751297 () Bool)

(assert (=> b!4751297 (= e!2963815 call!332859)))

(declare-fun b!4751298 () Bool)

(declare-fun res!2014827 () Bool)

(assert (=> b!4751298 (=> (not res!2014827) (not e!2963816))))

(assert (=> b!4751298 (= res!2014827 (forall!11762 (toList!6116 lt!1915497) lambda!222081))))

(assert (= (and d!1518590 c!811204) b!4751295))

(assert (= (and d!1518590 (not c!811204)) b!4751294))

(assert (= (and b!4751294 res!2014828) b!4751297))

(assert (= (or b!4751295 b!4751294) bm!332855))

(assert (= (or b!4751295 b!4751294) bm!332853))

(assert (= (or b!4751295 b!4751297) bm!332854))

(assert (= (and d!1518590 res!2014826) b!4751298))

(assert (= (and b!4751298 res!2014827) b!4751296))

(declare-fun m!5713811 () Bool)

(assert (=> d!1518590 m!5713811))

(declare-fun m!5713813 () Bool)

(assert (=> d!1518590 m!5713813))

(declare-fun m!5713815 () Bool)

(assert (=> bm!332853 m!5713815))

(declare-fun m!5713817 () Bool)

(assert (=> bm!332855 m!5713817))

(declare-fun m!5713819 () Bool)

(assert (=> b!4751296 m!5713819))

(declare-fun m!5713821 () Bool)

(assert (=> b!4751294 m!5713821))

(declare-fun m!5713823 () Bool)

(assert (=> b!4751294 m!5713823))

(declare-fun m!5713825 () Bool)

(assert (=> b!4751294 m!5713825))

(declare-fun m!5713827 () Bool)

(assert (=> b!4751294 m!5713827))

(declare-fun m!5713829 () Bool)

(assert (=> b!4751294 m!5713829))

(assert (=> b!4751294 m!5713823))

(declare-fun m!5713831 () Bool)

(assert (=> b!4751294 m!5713831))

(declare-fun m!5713833 () Bool)

(assert (=> b!4751294 m!5713833))

(assert (=> b!4751294 m!5713827))

(declare-fun m!5713835 () Bool)

(assert (=> b!4751294 m!5713835))

(declare-fun m!5713837 () Bool)

(assert (=> b!4751294 m!5713837))

(declare-fun m!5713839 () Bool)

(assert (=> b!4751294 m!5713839))

(declare-fun m!5713841 () Bool)

(assert (=> b!4751294 m!5713841))

(assert (=> b!4751294 m!5713837))

(declare-fun m!5713843 () Bool)

(assert (=> bm!332854 m!5713843))

(declare-fun m!5713845 () Bool)

(assert (=> b!4751298 m!5713845))

(assert (=> b!4751210 d!1518590))

(declare-fun bs!1141350 () Bool)

(declare-fun b!4751305 () Bool)

(assert (= bs!1141350 (and b!4751305 b!4751295)))

(declare-fun lambda!222084 () Int)

(assert (=> bs!1141350 (= (= lt!1915494 lt!1915497) (= lambda!222084 lambda!222077))))

(declare-fun bs!1141351 () Bool)

(assert (= bs!1141351 (and b!4751305 d!1518558)))

(assert (=> bs!1141351 (= (= lt!1915494 lt!1915675) (= lambda!222084 lambda!222069))))

(declare-fun bs!1141352 () Bool)

(assert (= bs!1141352 (and b!4751305 b!4751294)))

(assert (=> bs!1141352 (= (= lt!1915494 lt!1915754) (= lambda!222084 lambda!222079))))

(assert (=> bs!1141352 (= (= lt!1915494 lt!1915497) (= lambda!222084 lambda!222078))))

(declare-fun bs!1141353 () Bool)

(assert (= bs!1141353 (and b!4751305 b!4751267)))

(assert (=> bs!1141353 (= (= lt!1915494 lt!1915671) (= lambda!222084 lambda!222067))))

(declare-fun bs!1141354 () Bool)

(assert (= bs!1141354 (and b!4751305 b!4751268)))

(assert (=> bs!1141354 (= (= lt!1915494 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222084 lambda!222065))))

(declare-fun bs!1141355 () Bool)

(assert (= bs!1141355 (and b!4751305 d!1518590)))

(assert (=> bs!1141355 (= (= lt!1915494 lt!1915758) (= lambda!222084 lambda!222081))))

(assert (=> bs!1141353 (= (= lt!1915494 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222084 lambda!222066))))

(assert (=> b!4751305 true))

(declare-fun bs!1141356 () Bool)

(declare-fun b!4751304 () Bool)

(assert (= bs!1141356 (and b!4751304 b!4751295)))

(declare-fun lambda!222085 () Int)

(assert (=> bs!1141356 (= (= lt!1915494 lt!1915497) (= lambda!222085 lambda!222077))))

(declare-fun bs!1141357 () Bool)

(assert (= bs!1141357 (and b!4751304 d!1518558)))

(assert (=> bs!1141357 (= (= lt!1915494 lt!1915675) (= lambda!222085 lambda!222069))))

(declare-fun bs!1141358 () Bool)

(assert (= bs!1141358 (and b!4751304 b!4751294)))

(assert (=> bs!1141358 (= (= lt!1915494 lt!1915754) (= lambda!222085 lambda!222079))))

(declare-fun bs!1141359 () Bool)

(assert (= bs!1141359 (and b!4751304 b!4751305)))

(assert (=> bs!1141359 (= lambda!222085 lambda!222084)))

(assert (=> bs!1141358 (= (= lt!1915494 lt!1915497) (= lambda!222085 lambda!222078))))

(declare-fun bs!1141360 () Bool)

(assert (= bs!1141360 (and b!4751304 b!4751267)))

(assert (=> bs!1141360 (= (= lt!1915494 lt!1915671) (= lambda!222085 lambda!222067))))

(declare-fun bs!1141361 () Bool)

(assert (= bs!1141361 (and b!4751304 b!4751268)))

(assert (=> bs!1141361 (= (= lt!1915494 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222085 lambda!222065))))

(declare-fun bs!1141362 () Bool)

(assert (= bs!1141362 (and b!4751304 d!1518590)))

(assert (=> bs!1141362 (= (= lt!1915494 lt!1915758) (= lambda!222085 lambda!222081))))

(assert (=> bs!1141360 (= (= lt!1915494 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222085 lambda!222066))))

(assert (=> b!4751304 true))

(declare-fun lambda!222086 () Int)

(declare-fun lt!1915796 () ListMap!5541)

(assert (=> bs!1141356 (= (= lt!1915796 lt!1915497) (= lambda!222086 lambda!222077))))

(assert (=> b!4751304 (= (= lt!1915796 lt!1915494) (= lambda!222086 lambda!222085))))

(assert (=> bs!1141357 (= (= lt!1915796 lt!1915675) (= lambda!222086 lambda!222069))))

(assert (=> bs!1141358 (= (= lt!1915796 lt!1915754) (= lambda!222086 lambda!222079))))

(assert (=> bs!1141359 (= (= lt!1915796 lt!1915494) (= lambda!222086 lambda!222084))))

(assert (=> bs!1141358 (= (= lt!1915796 lt!1915497) (= lambda!222086 lambda!222078))))

(assert (=> bs!1141360 (= (= lt!1915796 lt!1915671) (= lambda!222086 lambda!222067))))

(assert (=> bs!1141361 (= (= lt!1915796 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222086 lambda!222065))))

(assert (=> bs!1141362 (= (= lt!1915796 lt!1915758) (= lambda!222086 lambda!222081))))

(assert (=> bs!1141360 (= (= lt!1915796 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222086 lambda!222066))))

(assert (=> b!4751304 true))

(declare-fun bs!1141377 () Bool)

(declare-fun d!1518594 () Bool)

(assert (= bs!1141377 (and d!1518594 b!4751295)))

(declare-fun lt!1915800 () ListMap!5541)

(declare-fun lambda!222088 () Int)

(assert (=> bs!1141377 (= (= lt!1915800 lt!1915497) (= lambda!222088 lambda!222077))))

(declare-fun bs!1141379 () Bool)

(assert (= bs!1141379 (and d!1518594 b!4751304)))

(assert (=> bs!1141379 (= (= lt!1915800 lt!1915494) (= lambda!222088 lambda!222085))))

(declare-fun bs!1141381 () Bool)

(assert (= bs!1141381 (and d!1518594 d!1518558)))

(assert (=> bs!1141381 (= (= lt!1915800 lt!1915675) (= lambda!222088 lambda!222069))))

(declare-fun bs!1141382 () Bool)

(assert (= bs!1141382 (and d!1518594 b!4751294)))

(assert (=> bs!1141382 (= (= lt!1915800 lt!1915754) (= lambda!222088 lambda!222079))))

(declare-fun bs!1141384 () Bool)

(assert (= bs!1141384 (and d!1518594 b!4751305)))

(assert (=> bs!1141384 (= (= lt!1915800 lt!1915494) (= lambda!222088 lambda!222084))))

(assert (=> bs!1141382 (= (= lt!1915800 lt!1915497) (= lambda!222088 lambda!222078))))

(assert (=> bs!1141379 (= (= lt!1915800 lt!1915796) (= lambda!222088 lambda!222086))))

(declare-fun bs!1141385 () Bool)

(assert (= bs!1141385 (and d!1518594 b!4751267)))

(assert (=> bs!1141385 (= (= lt!1915800 lt!1915671) (= lambda!222088 lambda!222067))))

(declare-fun bs!1141386 () Bool)

(assert (= bs!1141386 (and d!1518594 b!4751268)))

(assert (=> bs!1141386 (= (= lt!1915800 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222088 lambda!222065))))

(declare-fun bs!1141387 () Bool)

(assert (= bs!1141387 (and d!1518594 d!1518590)))

(assert (=> bs!1141387 (= (= lt!1915800 lt!1915758) (= lambda!222088 lambda!222081))))

(assert (=> bs!1141385 (= (= lt!1915800 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222088 lambda!222066))))

(assert (=> d!1518594 true))

(declare-fun e!2963822 () Bool)

(assert (=> d!1518594 e!2963822))

(declare-fun res!2014832 () Bool)

(assert (=> d!1518594 (=> (not res!2014832) (not e!2963822))))

(assert (=> d!1518594 (= res!2014832 (forall!11762 l!14304 lambda!222088))))

(declare-fun e!2963823 () ListMap!5541)

(assert (=> d!1518594 (= lt!1915800 e!2963823)))

(declare-fun c!811206 () Bool)

(assert (=> d!1518594 (= c!811206 ((_ is Nil!53086) l!14304))))

(assert (=> d!1518594 (noDuplicateKeys!2148 l!14304)))

(assert (=> d!1518594 (= (addToMapMapFromBucket!1572 l!14304 lt!1915494) lt!1915800)))

(assert (=> b!4751304 (= e!2963823 lt!1915796)))

(declare-fun lt!1915797 () ListMap!5541)

(assert (=> b!4751304 (= lt!1915797 (+!2382 lt!1915494 (h!59483 l!14304)))))

(assert (=> b!4751304 (= lt!1915796 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304))))))

(declare-fun lt!1915803 () Unit!135894)

(declare-fun call!332864 () Unit!135894)

(assert (=> b!4751304 (= lt!1915803 call!332864)))

(assert (=> b!4751304 (forall!11762 (toList!6116 lt!1915494) lambda!222085)))

(declare-fun lt!1915790 () Unit!135894)

(assert (=> b!4751304 (= lt!1915790 lt!1915803)))

(declare-fun call!332866 () Bool)

(assert (=> b!4751304 call!332866))

(declare-fun lt!1915807 () Unit!135894)

(declare-fun Unit!135950 () Unit!135894)

(assert (=> b!4751304 (= lt!1915807 Unit!135950)))

(assert (=> b!4751304 (forall!11762 (t!360542 l!14304) lambda!222086)))

(declare-fun lt!1915792 () Unit!135894)

(declare-fun Unit!135951 () Unit!135894)

(assert (=> b!4751304 (= lt!1915792 Unit!135951)))

(declare-fun lt!1915801 () Unit!135894)

(declare-fun Unit!135952 () Unit!135894)

(assert (=> b!4751304 (= lt!1915801 Unit!135952)))

(declare-fun lt!1915794 () Unit!135894)

(assert (=> b!4751304 (= lt!1915794 (forallContained!3788 (toList!6116 lt!1915797) lambda!222086 (h!59483 l!14304)))))

(assert (=> b!4751304 (contains!16509 lt!1915797 (_1!30722 (h!59483 l!14304)))))

(declare-fun lt!1915802 () Unit!135894)

(declare-fun Unit!135953 () Unit!135894)

(assert (=> b!4751304 (= lt!1915802 Unit!135953)))

(assert (=> b!4751304 (contains!16509 lt!1915796 (_1!30722 (h!59483 l!14304)))))

(declare-fun lt!1915804 () Unit!135894)

(declare-fun Unit!135954 () Unit!135894)

(assert (=> b!4751304 (= lt!1915804 Unit!135954)))

(assert (=> b!4751304 (forall!11762 l!14304 lambda!222086)))

(declare-fun lt!1915787 () Unit!135894)

(declare-fun Unit!135955 () Unit!135894)

(assert (=> b!4751304 (= lt!1915787 Unit!135955)))

(assert (=> b!4751304 (forall!11762 (toList!6116 lt!1915797) lambda!222086)))

(declare-fun lt!1915793 () Unit!135894)

(declare-fun Unit!135956 () Unit!135894)

(assert (=> b!4751304 (= lt!1915793 Unit!135956)))

(declare-fun lt!1915789 () Unit!135894)

(declare-fun Unit!135957 () Unit!135894)

(assert (=> b!4751304 (= lt!1915789 Unit!135957)))

(declare-fun lt!1915791 () Unit!135894)

(assert (=> b!4751304 (= lt!1915791 (addForallContainsKeyThenBeforeAdding!876 lt!1915494 lt!1915796 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(assert (=> b!4751304 (forall!11762 (toList!6116 lt!1915494) lambda!222086)))

(declare-fun lt!1915805 () Unit!135894)

(assert (=> b!4751304 (= lt!1915805 lt!1915791)))

(assert (=> b!4751304 (forall!11762 (toList!6116 lt!1915494) lambda!222086)))

(declare-fun lt!1915798 () Unit!135894)

(declare-fun Unit!135959 () Unit!135894)

(assert (=> b!4751304 (= lt!1915798 Unit!135959)))

(declare-fun res!2014834 () Bool)

(assert (=> b!4751304 (= res!2014834 (forall!11762 l!14304 lambda!222086))))

(declare-fun e!2963821 () Bool)

(assert (=> b!4751304 (=> (not res!2014834) (not e!2963821))))

(assert (=> b!4751304 e!2963821))

(declare-fun lt!1915799 () Unit!135894)

(declare-fun Unit!135960 () Unit!135894)

(assert (=> b!4751304 (= lt!1915799 Unit!135960)))

(declare-fun bm!332859 () Bool)

(assert (=> bm!332859 (= call!332866 (forall!11762 (ite c!811206 (toList!6116 lt!1915494) (toList!6116 lt!1915797)) (ite c!811206 lambda!222084 lambda!222086)))))

(assert (=> b!4751305 (= e!2963823 lt!1915494)))

(declare-fun lt!1915795 () Unit!135894)

(assert (=> b!4751305 (= lt!1915795 call!332864)))

(declare-fun call!332865 () Bool)

(assert (=> b!4751305 call!332865))

(declare-fun lt!1915806 () Unit!135894)

(assert (=> b!4751305 (= lt!1915806 lt!1915795)))

(assert (=> b!4751305 call!332866))

(declare-fun lt!1915788 () Unit!135894)

(declare-fun Unit!135961 () Unit!135894)

(assert (=> b!4751305 (= lt!1915788 Unit!135961)))

(declare-fun b!4751306 () Bool)

(assert (=> b!4751306 (= e!2963822 (invariantList!1594 (toList!6116 lt!1915800)))))

(declare-fun bm!332860 () Bool)

(assert (=> bm!332860 (= call!332865 (forall!11762 (toList!6116 lt!1915494) (ite c!811206 lambda!222084 lambda!222086)))))

(declare-fun bm!332861 () Bool)

(assert (=> bm!332861 (= call!332864 (lemmaContainsAllItsOwnKeys!877 lt!1915494))))

(declare-fun b!4751307 () Bool)

(assert (=> b!4751307 (= e!2963821 call!332865)))

(declare-fun b!4751308 () Bool)

(declare-fun res!2014833 () Bool)

(assert (=> b!4751308 (=> (not res!2014833) (not e!2963822))))

(assert (=> b!4751308 (= res!2014833 (forall!11762 (toList!6116 lt!1915494) lambda!222088))))

(assert (= (and d!1518594 c!811206) b!4751305))

(assert (= (and d!1518594 (not c!811206)) b!4751304))

(assert (= (and b!4751304 res!2014834) b!4751307))

(assert (= (or b!4751305 b!4751304) bm!332861))

(assert (= (or b!4751305 b!4751304) bm!332859))

(assert (= (or b!4751305 b!4751307) bm!332860))

(assert (= (and d!1518594 res!2014832) b!4751308))

(assert (= (and b!4751308 res!2014833) b!4751306))

(declare-fun m!5713863 () Bool)

(assert (=> d!1518594 m!5713863))

(assert (=> d!1518594 m!5713483))

(declare-fun m!5713869 () Bool)

(assert (=> bm!332859 m!5713869))

(declare-fun m!5713873 () Bool)

(assert (=> bm!332861 m!5713873))

(declare-fun m!5713875 () Bool)

(assert (=> b!4751306 m!5713875))

(declare-fun m!5713879 () Bool)

(assert (=> b!4751304 m!5713879))

(assert (=> b!4751304 m!5713519))

(assert (=> b!4751304 m!5713521))

(declare-fun m!5713885 () Bool)

(assert (=> b!4751304 m!5713885))

(declare-fun m!5713889 () Bool)

(assert (=> b!4751304 m!5713889))

(assert (=> b!4751304 m!5713519))

(declare-fun m!5713893 () Bool)

(assert (=> b!4751304 m!5713893))

(declare-fun m!5713895 () Bool)

(assert (=> b!4751304 m!5713895))

(assert (=> b!4751304 m!5713885))

(declare-fun m!5713897 () Bool)

(assert (=> b!4751304 m!5713897))

(declare-fun m!5713899 () Bool)

(assert (=> b!4751304 m!5713899))

(declare-fun m!5713901 () Bool)

(assert (=> b!4751304 m!5713901))

(declare-fun m!5713903 () Bool)

(assert (=> b!4751304 m!5713903))

(assert (=> b!4751304 m!5713899))

(declare-fun m!5713905 () Bool)

(assert (=> bm!332860 m!5713905))

(declare-fun m!5713907 () Bool)

(assert (=> b!4751308 m!5713907))

(assert (=> b!4751210 d!1518594))

(declare-fun d!1518598 () Bool)

(assert (=> d!1518598 (= (eq!1217 lt!1915499 (addToMapMapFromBucket!1572 l!14304 lt!1915494)) (= (content!9529 (toList!6116 lt!1915499)) (content!9529 (toList!6116 (addToMapMapFromBucket!1572 l!14304 lt!1915494)))))))

(declare-fun bs!1141388 () Bool)

(assert (= bs!1141388 d!1518598))

(assert (=> bs!1141388 m!5713535))

(declare-fun m!5713909 () Bool)

(assert (=> bs!1141388 m!5713909))

(assert (=> b!4751210 d!1518598))

(declare-fun d!1518600 () Bool)

(declare-fun e!2963825 () Bool)

(assert (=> d!1518600 e!2963825))

(declare-fun res!2014837 () Bool)

(assert (=> d!1518600 (=> (not res!2014837) (not e!2963825))))

(declare-fun lt!1915813 () ListMap!5541)

(assert (=> d!1518600 (= res!2014837 (contains!16509 lt!1915813 (_1!30722 t!14174)))))

(declare-fun lt!1915814 () List!53210)

(assert (=> d!1518600 (= lt!1915813 (ListMap!5542 lt!1915814))))

(declare-fun lt!1915815 () Unit!135894)

(declare-fun lt!1915812 () Unit!135894)

(assert (=> d!1518600 (= lt!1915815 lt!1915812)))

(assert (=> d!1518600 (= (getValueByKey!2080 lt!1915814 (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174)))))

(assert (=> d!1518600 (= lt!1915812 (lemmaContainsTupThenGetReturnValue!1157 lt!1915814 (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1518600 (= lt!1915814 (insertNoDuplicatedKeys!665 (toList!6116 lt!1915495) (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1518600 (= (+!2382 lt!1915495 t!14174) lt!1915813)))

(declare-fun b!4751311 () Bool)

(declare-fun res!2014838 () Bool)

(assert (=> b!4751311 (=> (not res!2014838) (not e!2963825))))

(assert (=> b!4751311 (= res!2014838 (= (getValueByKey!2080 (toList!6116 lt!1915813) (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174))))))

(declare-fun b!4751312 () Bool)

(assert (=> b!4751312 (= e!2963825 (contains!16510 (toList!6116 lt!1915813) t!14174))))

(assert (= (and d!1518600 res!2014837) b!4751311))

(assert (= (and b!4751311 res!2014838) b!4751312))

(declare-fun m!5713923 () Bool)

(assert (=> d!1518600 m!5713923))

(declare-fun m!5713925 () Bool)

(assert (=> d!1518600 m!5713925))

(declare-fun m!5713927 () Bool)

(assert (=> d!1518600 m!5713927))

(declare-fun m!5713929 () Bool)

(assert (=> d!1518600 m!5713929))

(declare-fun m!5713931 () Bool)

(assert (=> b!4751311 m!5713931))

(declare-fun m!5713937 () Bool)

(assert (=> b!4751312 m!5713937))

(assert (=> b!4751210 d!1518600))

(declare-fun bs!1141389 () Bool)

(declare-fun b!4751316 () Bool)

(assert (= bs!1141389 (and b!4751316 b!4751295)))

(declare-fun lambda!222089 () Int)

(assert (=> bs!1141389 (= lambda!222089 lambda!222077)))

(declare-fun bs!1141391 () Bool)

(assert (= bs!1141391 (and b!4751316 b!4751304)))

(assert (=> bs!1141391 (= (= lt!1915497 lt!1915494) (= lambda!222089 lambda!222085))))

(declare-fun bs!1141392 () Bool)

(assert (= bs!1141392 (and b!4751316 d!1518558)))

(assert (=> bs!1141392 (= (= lt!1915497 lt!1915675) (= lambda!222089 lambda!222069))))

(declare-fun bs!1141393 () Bool)

(assert (= bs!1141393 (and b!4751316 d!1518594)))

(assert (=> bs!1141393 (= (= lt!1915497 lt!1915800) (= lambda!222089 lambda!222088))))

(declare-fun bs!1141394 () Bool)

(assert (= bs!1141394 (and b!4751316 b!4751294)))

(assert (=> bs!1141394 (= (= lt!1915497 lt!1915754) (= lambda!222089 lambda!222079))))

(declare-fun bs!1141395 () Bool)

(assert (= bs!1141395 (and b!4751316 b!4751305)))

(assert (=> bs!1141395 (= (= lt!1915497 lt!1915494) (= lambda!222089 lambda!222084))))

(assert (=> bs!1141394 (= lambda!222089 lambda!222078)))

(assert (=> bs!1141391 (= (= lt!1915497 lt!1915796) (= lambda!222089 lambda!222086))))

(declare-fun bs!1141397 () Bool)

(assert (= bs!1141397 (and b!4751316 b!4751267)))

(assert (=> bs!1141397 (= (= lt!1915497 lt!1915671) (= lambda!222089 lambda!222067))))

(declare-fun bs!1141399 () Bool)

(assert (= bs!1141399 (and b!4751316 b!4751268)))

(assert (=> bs!1141399 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222089 lambda!222065))))

(declare-fun bs!1141401 () Bool)

(assert (= bs!1141401 (and b!4751316 d!1518590)))

(assert (=> bs!1141401 (= (= lt!1915497 lt!1915758) (= lambda!222089 lambda!222081))))

(assert (=> bs!1141397 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222089 lambda!222066))))

(assert (=> b!4751316 true))

(declare-fun bs!1141407 () Bool)

(declare-fun b!4751315 () Bool)

(assert (= bs!1141407 (and b!4751315 b!4751295)))

(declare-fun lambda!222091 () Int)

(assert (=> bs!1141407 (= lambda!222091 lambda!222077)))

(declare-fun bs!1141409 () Bool)

(assert (= bs!1141409 (and b!4751315 b!4751304)))

(assert (=> bs!1141409 (= (= lt!1915497 lt!1915494) (= lambda!222091 lambda!222085))))

(declare-fun bs!1141411 () Bool)

(assert (= bs!1141411 (and b!4751315 d!1518558)))

(assert (=> bs!1141411 (= (= lt!1915497 lt!1915675) (= lambda!222091 lambda!222069))))

(declare-fun bs!1141412 () Bool)

(assert (= bs!1141412 (and b!4751315 d!1518594)))

(assert (=> bs!1141412 (= (= lt!1915497 lt!1915800) (= lambda!222091 lambda!222088))))

(declare-fun bs!1141413 () Bool)

(assert (= bs!1141413 (and b!4751315 b!4751294)))

(assert (=> bs!1141413 (= (= lt!1915497 lt!1915754) (= lambda!222091 lambda!222079))))

(declare-fun bs!1141415 () Bool)

(assert (= bs!1141415 (and b!4751315 b!4751305)))

(assert (=> bs!1141415 (= (= lt!1915497 lt!1915494) (= lambda!222091 lambda!222084))))

(assert (=> bs!1141413 (= lambda!222091 lambda!222078)))

(assert (=> bs!1141409 (= (= lt!1915497 lt!1915796) (= lambda!222091 lambda!222086))))

(declare-fun bs!1141419 () Bool)

(assert (= bs!1141419 (and b!4751315 b!4751267)))

(assert (=> bs!1141419 (= (= lt!1915497 lt!1915671) (= lambda!222091 lambda!222067))))

(declare-fun bs!1141421 () Bool)

(assert (= bs!1141421 (and b!4751315 b!4751268)))

(assert (=> bs!1141421 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222091 lambda!222065))))

(declare-fun bs!1141422 () Bool)

(assert (= bs!1141422 (and b!4751315 d!1518590)))

(assert (=> bs!1141422 (= (= lt!1915497 lt!1915758) (= lambda!222091 lambda!222081))))

(assert (=> bs!1141419 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222091 lambda!222066))))

(declare-fun bs!1141425 () Bool)

(assert (= bs!1141425 (and b!4751315 b!4751316)))

(assert (=> bs!1141425 (= lambda!222091 lambda!222089)))

(assert (=> b!4751315 true))

(declare-fun lambda!222092 () Int)

(declare-fun lt!1915829 () ListMap!5541)

(assert (=> bs!1141407 (= (= lt!1915829 lt!1915497) (= lambda!222092 lambda!222077))))

(assert (=> bs!1141409 (= (= lt!1915829 lt!1915494) (= lambda!222092 lambda!222085))))

(assert (=> bs!1141411 (= (= lt!1915829 lt!1915675) (= lambda!222092 lambda!222069))))

(assert (=> bs!1141412 (= (= lt!1915829 lt!1915800) (= lambda!222092 lambda!222088))))

(assert (=> b!4751315 (= (= lt!1915829 lt!1915497) (= lambda!222092 lambda!222091))))

(assert (=> bs!1141413 (= (= lt!1915829 lt!1915754) (= lambda!222092 lambda!222079))))

(assert (=> bs!1141415 (= (= lt!1915829 lt!1915494) (= lambda!222092 lambda!222084))))

(assert (=> bs!1141413 (= (= lt!1915829 lt!1915497) (= lambda!222092 lambda!222078))))

(assert (=> bs!1141409 (= (= lt!1915829 lt!1915796) (= lambda!222092 lambda!222086))))

(assert (=> bs!1141419 (= (= lt!1915829 lt!1915671) (= lambda!222092 lambda!222067))))

(assert (=> bs!1141421 (= (= lt!1915829 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222092 lambda!222065))))

(assert (=> bs!1141422 (= (= lt!1915829 lt!1915758) (= lambda!222092 lambda!222081))))

(assert (=> bs!1141419 (= (= lt!1915829 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222092 lambda!222066))))

(assert (=> bs!1141425 (= (= lt!1915829 lt!1915497) (= lambda!222092 lambda!222089))))

(assert (=> b!4751315 true))

(declare-fun bs!1141444 () Bool)

(declare-fun d!1518604 () Bool)

(assert (= bs!1141444 (and d!1518604 b!4751295)))

(declare-fun lambda!222094 () Int)

(declare-fun lt!1915833 () ListMap!5541)

(assert (=> bs!1141444 (= (= lt!1915833 lt!1915497) (= lambda!222094 lambda!222077))))

(declare-fun bs!1141446 () Bool)

(assert (= bs!1141446 (and d!1518604 b!4751304)))

(assert (=> bs!1141446 (= (= lt!1915833 lt!1915494) (= lambda!222094 lambda!222085))))

(declare-fun bs!1141447 () Bool)

(assert (= bs!1141447 (and d!1518604 d!1518558)))

(assert (=> bs!1141447 (= (= lt!1915833 lt!1915675) (= lambda!222094 lambda!222069))))

(declare-fun bs!1141448 () Bool)

(assert (= bs!1141448 (and d!1518604 d!1518594)))

(assert (=> bs!1141448 (= (= lt!1915833 lt!1915800) (= lambda!222094 lambda!222088))))

(declare-fun bs!1141450 () Bool)

(assert (= bs!1141450 (and d!1518604 b!4751315)))

(assert (=> bs!1141450 (= (= lt!1915833 lt!1915497) (= lambda!222094 lambda!222091))))

(declare-fun bs!1141451 () Bool)

(assert (= bs!1141451 (and d!1518604 b!4751294)))

(assert (=> bs!1141451 (= (= lt!1915833 lt!1915754) (= lambda!222094 lambda!222079))))

(declare-fun bs!1141452 () Bool)

(assert (= bs!1141452 (and d!1518604 b!4751305)))

(assert (=> bs!1141452 (= (= lt!1915833 lt!1915494) (= lambda!222094 lambda!222084))))

(assert (=> bs!1141451 (= (= lt!1915833 lt!1915497) (= lambda!222094 lambda!222078))))

(assert (=> bs!1141450 (= (= lt!1915833 lt!1915829) (= lambda!222094 lambda!222092))))

(assert (=> bs!1141446 (= (= lt!1915833 lt!1915796) (= lambda!222094 lambda!222086))))

(declare-fun bs!1141453 () Bool)

(assert (= bs!1141453 (and d!1518604 b!4751267)))

(assert (=> bs!1141453 (= (= lt!1915833 lt!1915671) (= lambda!222094 lambda!222067))))

(declare-fun bs!1141454 () Bool)

(assert (= bs!1141454 (and d!1518604 b!4751268)))

(assert (=> bs!1141454 (= (= lt!1915833 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222094 lambda!222065))))

(declare-fun bs!1141455 () Bool)

(assert (= bs!1141455 (and d!1518604 d!1518590)))

(assert (=> bs!1141455 (= (= lt!1915833 lt!1915758) (= lambda!222094 lambda!222081))))

(assert (=> bs!1141453 (= (= lt!1915833 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222094 lambda!222066))))

(declare-fun bs!1141456 () Bool)

(assert (= bs!1141456 (and d!1518604 b!4751316)))

(assert (=> bs!1141456 (= (= lt!1915833 lt!1915497) (= lambda!222094 lambda!222089))))

(assert (=> d!1518604 true))

(declare-fun e!2963828 () Bool)

(assert (=> d!1518604 e!2963828))

(declare-fun res!2014841 () Bool)

(assert (=> d!1518604 (=> (not res!2014841) (not e!2963828))))

(assert (=> d!1518604 (= res!2014841 (forall!11762 (t!360542 l!14304) lambda!222094))))

(declare-fun e!2963829 () ListMap!5541)

(assert (=> d!1518604 (= lt!1915833 e!2963829)))

(declare-fun c!811207 () Bool)

(assert (=> d!1518604 (= c!811207 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518604 (noDuplicateKeys!2148 (t!360542 l!14304))))

(assert (=> d!1518604 (= (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497) lt!1915833)))

(assert (=> b!4751315 (= e!2963829 lt!1915829)))

(declare-fun lt!1915830 () ListMap!5541)

(assert (=> b!4751315 (= lt!1915830 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751315 (= lt!1915829 (addToMapMapFromBucket!1572 (t!360542 (t!360542 l!14304)) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1915836 () Unit!135894)

(declare-fun call!332867 () Unit!135894)

(assert (=> b!4751315 (= lt!1915836 call!332867)))

(assert (=> b!4751315 (forall!11762 (toList!6116 lt!1915497) lambda!222091)))

(declare-fun lt!1915823 () Unit!135894)

(assert (=> b!4751315 (= lt!1915823 lt!1915836)))

(declare-fun call!332869 () Bool)

(assert (=> b!4751315 call!332869))

(declare-fun lt!1915840 () Unit!135894)

(declare-fun Unit!135962 () Unit!135894)

(assert (=> b!4751315 (= lt!1915840 Unit!135962)))

(assert (=> b!4751315 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222092)))

(declare-fun lt!1915825 () Unit!135894)

(declare-fun Unit!135963 () Unit!135894)

(assert (=> b!4751315 (= lt!1915825 Unit!135963)))

(declare-fun lt!1915834 () Unit!135894)

(declare-fun Unit!135964 () Unit!135894)

(assert (=> b!4751315 (= lt!1915834 Unit!135964)))

(declare-fun lt!1915827 () Unit!135894)

(assert (=> b!4751315 (= lt!1915827 (forallContained!3788 (toList!6116 lt!1915830) lambda!222092 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751315 (contains!16509 lt!1915830 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1915835 () Unit!135894)

(declare-fun Unit!135965 () Unit!135894)

(assert (=> b!4751315 (= lt!1915835 Unit!135965)))

(assert (=> b!4751315 (contains!16509 lt!1915829 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1915837 () Unit!135894)

(declare-fun Unit!135966 () Unit!135894)

(assert (=> b!4751315 (= lt!1915837 Unit!135966)))

(assert (=> b!4751315 (forall!11762 (t!360542 l!14304) lambda!222092)))

(declare-fun lt!1915820 () Unit!135894)

(declare-fun Unit!135967 () Unit!135894)

(assert (=> b!4751315 (= lt!1915820 Unit!135967)))

(assert (=> b!4751315 (forall!11762 (toList!6116 lt!1915830) lambda!222092)))

(declare-fun lt!1915826 () Unit!135894)

(declare-fun Unit!135968 () Unit!135894)

(assert (=> b!4751315 (= lt!1915826 Unit!135968)))

(declare-fun lt!1915822 () Unit!135894)

(declare-fun Unit!135969 () Unit!135894)

(assert (=> b!4751315 (= lt!1915822 Unit!135969)))

(declare-fun lt!1915824 () Unit!135894)

(assert (=> b!4751315 (= lt!1915824 (addForallContainsKeyThenBeforeAdding!876 lt!1915497 lt!1915829 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751315 (forall!11762 (toList!6116 lt!1915497) lambda!222092)))

(declare-fun lt!1915838 () Unit!135894)

(assert (=> b!4751315 (= lt!1915838 lt!1915824)))

(assert (=> b!4751315 (forall!11762 (toList!6116 lt!1915497) lambda!222092)))

(declare-fun lt!1915831 () Unit!135894)

(declare-fun Unit!135970 () Unit!135894)

(assert (=> b!4751315 (= lt!1915831 Unit!135970)))

(declare-fun res!2014843 () Bool)

(assert (=> b!4751315 (= res!2014843 (forall!11762 (t!360542 l!14304) lambda!222092))))

(declare-fun e!2963827 () Bool)

(assert (=> b!4751315 (=> (not res!2014843) (not e!2963827))))

(assert (=> b!4751315 e!2963827))

(declare-fun lt!1915832 () Unit!135894)

(declare-fun Unit!135971 () Unit!135894)

(assert (=> b!4751315 (= lt!1915832 Unit!135971)))

(declare-fun bm!332862 () Bool)

(assert (=> bm!332862 (= call!332869 (forall!11762 (ite c!811207 (toList!6116 lt!1915497) (toList!6116 lt!1915830)) (ite c!811207 lambda!222089 lambda!222092)))))

(assert (=> b!4751316 (= e!2963829 lt!1915497)))

(declare-fun lt!1915828 () Unit!135894)

(assert (=> b!4751316 (= lt!1915828 call!332867)))

(declare-fun call!332868 () Bool)

(assert (=> b!4751316 call!332868))

(declare-fun lt!1915839 () Unit!135894)

(assert (=> b!4751316 (= lt!1915839 lt!1915828)))

(assert (=> b!4751316 call!332869))

(declare-fun lt!1915821 () Unit!135894)

(declare-fun Unit!135972 () Unit!135894)

(assert (=> b!4751316 (= lt!1915821 Unit!135972)))

(declare-fun b!4751317 () Bool)

(assert (=> b!4751317 (= e!2963828 (invariantList!1594 (toList!6116 lt!1915833)))))

(declare-fun bm!332863 () Bool)

(assert (=> bm!332863 (= call!332868 (forall!11762 (toList!6116 lt!1915497) (ite c!811207 lambda!222089 lambda!222092)))))

(declare-fun bm!332864 () Bool)

(assert (=> bm!332864 (= call!332867 (lemmaContainsAllItsOwnKeys!877 lt!1915497))))

(declare-fun b!4751318 () Bool)

(assert (=> b!4751318 (= e!2963827 call!332868)))

(declare-fun b!4751319 () Bool)

(declare-fun res!2014842 () Bool)

(assert (=> b!4751319 (=> (not res!2014842) (not e!2963828))))

(assert (=> b!4751319 (= res!2014842 (forall!11762 (toList!6116 lt!1915497) lambda!222094))))

(assert (= (and d!1518604 c!811207) b!4751316))

(assert (= (and d!1518604 (not c!811207)) b!4751315))

(assert (= (and b!4751315 res!2014843) b!4751318))

(assert (= (or b!4751316 b!4751315) bm!332864))

(assert (= (or b!4751316 b!4751315) bm!332862))

(assert (= (or b!4751316 b!4751318) bm!332863))

(assert (= (and d!1518604 res!2014841) b!4751319))

(assert (= (and b!4751319 res!2014842) b!4751317))

(declare-fun m!5713953 () Bool)

(assert (=> d!1518604 m!5713953))

(assert (=> d!1518604 m!5713531))

(declare-fun m!5713955 () Bool)

(assert (=> bm!332862 m!5713955))

(assert (=> bm!332864 m!5713817))

(declare-fun m!5713957 () Bool)

(assert (=> b!4751317 m!5713957))

(declare-fun m!5713959 () Bool)

(assert (=> b!4751315 m!5713959))

(declare-fun m!5713961 () Bool)

(assert (=> b!4751315 m!5713961))

(declare-fun m!5713963 () Bool)

(assert (=> b!4751315 m!5713963))

(declare-fun m!5713965 () Bool)

(assert (=> b!4751315 m!5713965))

(declare-fun m!5713967 () Bool)

(assert (=> b!4751315 m!5713967))

(assert (=> b!4751315 m!5713961))

(declare-fun m!5713969 () Bool)

(assert (=> b!4751315 m!5713969))

(declare-fun m!5713971 () Bool)

(assert (=> b!4751315 m!5713971))

(assert (=> b!4751315 m!5713965))

(declare-fun m!5713973 () Bool)

(assert (=> b!4751315 m!5713973))

(declare-fun m!5713975 () Bool)

(assert (=> b!4751315 m!5713975))

(declare-fun m!5713977 () Bool)

(assert (=> b!4751315 m!5713977))

(declare-fun m!5713979 () Bool)

(assert (=> b!4751315 m!5713979))

(assert (=> b!4751315 m!5713975))

(declare-fun m!5713981 () Bool)

(assert (=> bm!332863 m!5713981))

(declare-fun m!5713983 () Bool)

(assert (=> b!4751319 m!5713983))

(assert (=> b!4751210 d!1518604))

(declare-fun d!1518612 () Bool)

(declare-fun e!2963835 () Bool)

(assert (=> d!1518612 e!2963835))

(declare-fun res!2014849 () Bool)

(assert (=> d!1518612 (=> (not res!2014849) (not e!2963835))))

(declare-fun lt!1915863 () ListMap!5541)

(assert (=> d!1518612 (= res!2014849 (contains!16509 lt!1915863 (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1915864 () List!53210)

(assert (=> d!1518612 (= lt!1915863 (ListMap!5542 lt!1915864))))

(declare-fun lt!1915865 () Unit!135894)

(declare-fun lt!1915862 () Unit!135894)

(assert (=> d!1518612 (= lt!1915865 lt!1915862)))

(assert (=> d!1518612 (= (getValueByKey!2080 lt!1915864 (_1!30722 (h!59483 l!14304))) (Some!12529 (_2!30722 (h!59483 l!14304))))))

(assert (=> d!1518612 (= lt!1915862 (lemmaContainsTupThenGetReturnValue!1157 lt!1915864 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(assert (=> d!1518612 (= lt!1915864 (insertNoDuplicatedKeys!665 (toList!6116 acc!1214) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(assert (=> d!1518612 (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915863)))

(declare-fun b!4751327 () Bool)

(declare-fun res!2014850 () Bool)

(assert (=> b!4751327 (=> (not res!2014850) (not e!2963835))))

(assert (=> b!4751327 (= res!2014850 (= (getValueByKey!2080 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304))) (Some!12529 (_2!30722 (h!59483 l!14304)))))))

(declare-fun b!4751328 () Bool)

(assert (=> b!4751328 (= e!2963835 (contains!16510 (toList!6116 lt!1915863) (h!59483 l!14304)))))

(assert (= (and d!1518612 res!2014849) b!4751327))

(assert (= (and b!4751327 res!2014850) b!4751328))

(declare-fun m!5713985 () Bool)

(assert (=> d!1518612 m!5713985))

(declare-fun m!5713987 () Bool)

(assert (=> d!1518612 m!5713987))

(declare-fun m!5713989 () Bool)

(assert (=> d!1518612 m!5713989))

(declare-fun m!5713991 () Bool)

(assert (=> d!1518612 m!5713991))

(declare-fun m!5713993 () Bool)

(assert (=> b!4751327 m!5713993))

(declare-fun m!5713995 () Bool)

(assert (=> b!4751328 m!5713995))

(assert (=> b!4751210 d!1518612))

(declare-fun d!1518614 () Bool)

(assert (=> d!1518614 (eq!1217 (addToMapMapFromBucket!1572 (Cons!53086 t!14174 (t!360542 l!14304)) lt!1915497) (+!2382 (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497) t!14174))))

(declare-fun lt!1915872 () Unit!135894)

(declare-fun choose!33822 (tuple2!54856 List!53210 ListMap!5541) Unit!135894)

(assert (=> d!1518614 (= lt!1915872 (choose!33822 t!14174 (t!360542 l!14304) lt!1915497))))

(assert (=> d!1518614 (noDuplicateKeys!2148 (t!360542 l!14304))))

(assert (=> d!1518614 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!462 t!14174 (t!360542 l!14304) lt!1915497) lt!1915872)))

(declare-fun bs!1141477 () Bool)

(assert (= bs!1141477 d!1518614))

(assert (=> bs!1141477 m!5713515))

(declare-fun m!5714043 () Bool)

(assert (=> bs!1141477 m!5714043))

(assert (=> bs!1141477 m!5713531))

(assert (=> bs!1141477 m!5713511))

(assert (=> bs!1141477 m!5714043))

(declare-fun m!5714045 () Bool)

(assert (=> bs!1141477 m!5714045))

(declare-fun m!5714047 () Bool)

(assert (=> bs!1141477 m!5714047))

(assert (=> bs!1141477 m!5713515))

(assert (=> bs!1141477 m!5713511))

(assert (=> b!4751210 d!1518614))

(declare-fun bs!1141478 () Bool)

(declare-fun b!4751338 () Bool)

(assert (= bs!1141478 (and b!4751338 b!4751295)))

(declare-fun lambda!222097 () Int)

(assert (=> bs!1141478 (= (= acc!1214 lt!1915497) (= lambda!222097 lambda!222077))))

(declare-fun bs!1141479 () Bool)

(assert (= bs!1141479 (and b!4751338 b!4751304)))

(assert (=> bs!1141479 (= (= acc!1214 lt!1915494) (= lambda!222097 lambda!222085))))

(declare-fun bs!1141480 () Bool)

(assert (= bs!1141480 (and b!4751338 d!1518558)))

(assert (=> bs!1141480 (= (= acc!1214 lt!1915675) (= lambda!222097 lambda!222069))))

(declare-fun bs!1141481 () Bool)

(assert (= bs!1141481 (and b!4751338 d!1518594)))

(assert (=> bs!1141481 (= (= acc!1214 lt!1915800) (= lambda!222097 lambda!222088))))

(declare-fun bs!1141482 () Bool)

(assert (= bs!1141482 (and b!4751338 b!4751315)))

(assert (=> bs!1141482 (= (= acc!1214 lt!1915497) (= lambda!222097 lambda!222091))))

(declare-fun bs!1141483 () Bool)

(assert (= bs!1141483 (and b!4751338 b!4751294)))

(assert (=> bs!1141483 (= (= acc!1214 lt!1915754) (= lambda!222097 lambda!222079))))

(declare-fun bs!1141484 () Bool)

(assert (= bs!1141484 (and b!4751338 b!4751305)))

(assert (=> bs!1141484 (= (= acc!1214 lt!1915494) (= lambda!222097 lambda!222084))))

(assert (=> bs!1141483 (= (= acc!1214 lt!1915497) (= lambda!222097 lambda!222078))))

(assert (=> bs!1141482 (= (= acc!1214 lt!1915829) (= lambda!222097 lambda!222092))))

(assert (=> bs!1141479 (= (= acc!1214 lt!1915796) (= lambda!222097 lambda!222086))))

(declare-fun bs!1141485 () Bool)

(assert (= bs!1141485 (and b!4751338 d!1518604)))

(assert (=> bs!1141485 (= (= acc!1214 lt!1915833) (= lambda!222097 lambda!222094))))

(declare-fun bs!1141486 () Bool)

(assert (= bs!1141486 (and b!4751338 b!4751267)))

(assert (=> bs!1141486 (= (= acc!1214 lt!1915671) (= lambda!222097 lambda!222067))))

(declare-fun bs!1141487 () Bool)

(assert (= bs!1141487 (and b!4751338 b!4751268)))

(assert (=> bs!1141487 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222097 lambda!222065))))

(declare-fun bs!1141488 () Bool)

(assert (= bs!1141488 (and b!4751338 d!1518590)))

(assert (=> bs!1141488 (= (= acc!1214 lt!1915758) (= lambda!222097 lambda!222081))))

(assert (=> bs!1141486 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222097 lambda!222066))))

(declare-fun bs!1141489 () Bool)

(assert (= bs!1141489 (and b!4751338 b!4751316)))

(assert (=> bs!1141489 (= (= acc!1214 lt!1915497) (= lambda!222097 lambda!222089))))

(assert (=> b!4751338 true))

(declare-fun bs!1141490 () Bool)

(declare-fun b!4751337 () Bool)

(assert (= bs!1141490 (and b!4751337 b!4751295)))

(declare-fun lambda!222098 () Int)

(assert (=> bs!1141490 (= (= acc!1214 lt!1915497) (= lambda!222098 lambda!222077))))

(declare-fun bs!1141491 () Bool)

(assert (= bs!1141491 (and b!4751337 b!4751304)))

(assert (=> bs!1141491 (= (= acc!1214 lt!1915494) (= lambda!222098 lambda!222085))))

(declare-fun bs!1141492 () Bool)

(assert (= bs!1141492 (and b!4751337 d!1518558)))

(assert (=> bs!1141492 (= (= acc!1214 lt!1915675) (= lambda!222098 lambda!222069))))

(declare-fun bs!1141493 () Bool)

(assert (= bs!1141493 (and b!4751337 d!1518594)))

(assert (=> bs!1141493 (= (= acc!1214 lt!1915800) (= lambda!222098 lambda!222088))))

(declare-fun bs!1141494 () Bool)

(assert (= bs!1141494 (and b!4751337 b!4751315)))

(assert (=> bs!1141494 (= (= acc!1214 lt!1915497) (= lambda!222098 lambda!222091))))

(declare-fun bs!1141495 () Bool)

(assert (= bs!1141495 (and b!4751337 b!4751338)))

(assert (=> bs!1141495 (= lambda!222098 lambda!222097)))

(declare-fun bs!1141496 () Bool)

(assert (= bs!1141496 (and b!4751337 b!4751294)))

(assert (=> bs!1141496 (= (= acc!1214 lt!1915754) (= lambda!222098 lambda!222079))))

(declare-fun bs!1141497 () Bool)

(assert (= bs!1141497 (and b!4751337 b!4751305)))

(assert (=> bs!1141497 (= (= acc!1214 lt!1915494) (= lambda!222098 lambda!222084))))

(assert (=> bs!1141496 (= (= acc!1214 lt!1915497) (= lambda!222098 lambda!222078))))

(assert (=> bs!1141494 (= (= acc!1214 lt!1915829) (= lambda!222098 lambda!222092))))

(assert (=> bs!1141491 (= (= acc!1214 lt!1915796) (= lambda!222098 lambda!222086))))

(declare-fun bs!1141498 () Bool)

(assert (= bs!1141498 (and b!4751337 d!1518604)))

(assert (=> bs!1141498 (= (= acc!1214 lt!1915833) (= lambda!222098 lambda!222094))))

(declare-fun bs!1141499 () Bool)

(assert (= bs!1141499 (and b!4751337 b!4751267)))

(assert (=> bs!1141499 (= (= acc!1214 lt!1915671) (= lambda!222098 lambda!222067))))

(declare-fun bs!1141500 () Bool)

(assert (= bs!1141500 (and b!4751337 b!4751268)))

(assert (=> bs!1141500 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222098 lambda!222065))))

(declare-fun bs!1141501 () Bool)

(assert (= bs!1141501 (and b!4751337 d!1518590)))

(assert (=> bs!1141501 (= (= acc!1214 lt!1915758) (= lambda!222098 lambda!222081))))

(assert (=> bs!1141499 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222098 lambda!222066))))

(declare-fun bs!1141502 () Bool)

(assert (= bs!1141502 (and b!4751337 b!4751316)))

(assert (=> bs!1141502 (= (= acc!1214 lt!1915497) (= lambda!222098 lambda!222089))))

(assert (=> b!4751337 true))

(declare-fun lt!1915882 () ListMap!5541)

(declare-fun lambda!222099 () Int)

(assert (=> bs!1141490 (= (= lt!1915882 lt!1915497) (= lambda!222099 lambda!222077))))

(assert (=> bs!1141491 (= (= lt!1915882 lt!1915494) (= lambda!222099 lambda!222085))))

(assert (=> bs!1141492 (= (= lt!1915882 lt!1915675) (= lambda!222099 lambda!222069))))

(assert (=> bs!1141493 (= (= lt!1915882 lt!1915800) (= lambda!222099 lambda!222088))))

(assert (=> bs!1141494 (= (= lt!1915882 lt!1915497) (= lambda!222099 lambda!222091))))

(assert (=> bs!1141495 (= (= lt!1915882 acc!1214) (= lambda!222099 lambda!222097))))

(assert (=> bs!1141496 (= (= lt!1915882 lt!1915754) (= lambda!222099 lambda!222079))))

(assert (=> bs!1141497 (= (= lt!1915882 lt!1915494) (= lambda!222099 lambda!222084))))

(assert (=> bs!1141496 (= (= lt!1915882 lt!1915497) (= lambda!222099 lambda!222078))))

(assert (=> bs!1141494 (= (= lt!1915882 lt!1915829) (= lambda!222099 lambda!222092))))

(assert (=> bs!1141491 (= (= lt!1915882 lt!1915796) (= lambda!222099 lambda!222086))))

(assert (=> bs!1141498 (= (= lt!1915882 lt!1915833) (= lambda!222099 lambda!222094))))

(assert (=> bs!1141499 (= (= lt!1915882 lt!1915671) (= lambda!222099 lambda!222067))))

(assert (=> bs!1141500 (= (= lt!1915882 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222099 lambda!222065))))

(assert (=> bs!1141501 (= (= lt!1915882 lt!1915758) (= lambda!222099 lambda!222081))))

(assert (=> bs!1141502 (= (= lt!1915882 lt!1915497) (= lambda!222099 lambda!222089))))

(assert (=> bs!1141499 (= (= lt!1915882 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222099 lambda!222066))))

(assert (=> b!4751337 (= (= lt!1915882 acc!1214) (= lambda!222099 lambda!222098))))

(assert (=> b!4751337 true))

(declare-fun bs!1141503 () Bool)

(declare-fun d!1518618 () Bool)

(assert (= bs!1141503 (and d!1518618 b!4751295)))

(declare-fun lt!1915886 () ListMap!5541)

(declare-fun lambda!222100 () Int)

(assert (=> bs!1141503 (= (= lt!1915886 lt!1915497) (= lambda!222100 lambda!222077))))

(declare-fun bs!1141504 () Bool)

(assert (= bs!1141504 (and d!1518618 b!4751304)))

(assert (=> bs!1141504 (= (= lt!1915886 lt!1915494) (= lambda!222100 lambda!222085))))

(declare-fun bs!1141505 () Bool)

(assert (= bs!1141505 (and d!1518618 b!4751337)))

(assert (=> bs!1141505 (= (= lt!1915886 lt!1915882) (= lambda!222100 lambda!222099))))

(declare-fun bs!1141506 () Bool)

(assert (= bs!1141506 (and d!1518618 d!1518558)))

(assert (=> bs!1141506 (= (= lt!1915886 lt!1915675) (= lambda!222100 lambda!222069))))

(declare-fun bs!1141507 () Bool)

(assert (= bs!1141507 (and d!1518618 d!1518594)))

(assert (=> bs!1141507 (= (= lt!1915886 lt!1915800) (= lambda!222100 lambda!222088))))

(declare-fun bs!1141508 () Bool)

(assert (= bs!1141508 (and d!1518618 b!4751315)))

(assert (=> bs!1141508 (= (= lt!1915886 lt!1915497) (= lambda!222100 lambda!222091))))

(declare-fun bs!1141509 () Bool)

(assert (= bs!1141509 (and d!1518618 b!4751338)))

(assert (=> bs!1141509 (= (= lt!1915886 acc!1214) (= lambda!222100 lambda!222097))))

(declare-fun bs!1141510 () Bool)

(assert (= bs!1141510 (and d!1518618 b!4751294)))

(assert (=> bs!1141510 (= (= lt!1915886 lt!1915754) (= lambda!222100 lambda!222079))))

(declare-fun bs!1141511 () Bool)

(assert (= bs!1141511 (and d!1518618 b!4751305)))

(assert (=> bs!1141511 (= (= lt!1915886 lt!1915494) (= lambda!222100 lambda!222084))))

(assert (=> bs!1141510 (= (= lt!1915886 lt!1915497) (= lambda!222100 lambda!222078))))

(assert (=> bs!1141508 (= (= lt!1915886 lt!1915829) (= lambda!222100 lambda!222092))))

(assert (=> bs!1141504 (= (= lt!1915886 lt!1915796) (= lambda!222100 lambda!222086))))

(declare-fun bs!1141512 () Bool)

(assert (= bs!1141512 (and d!1518618 d!1518604)))

(assert (=> bs!1141512 (= (= lt!1915886 lt!1915833) (= lambda!222100 lambda!222094))))

(declare-fun bs!1141513 () Bool)

(assert (= bs!1141513 (and d!1518618 b!4751267)))

(assert (=> bs!1141513 (= (= lt!1915886 lt!1915671) (= lambda!222100 lambda!222067))))

(declare-fun bs!1141514 () Bool)

(assert (= bs!1141514 (and d!1518618 b!4751268)))

(assert (=> bs!1141514 (= (= lt!1915886 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222100 lambda!222065))))

(declare-fun bs!1141515 () Bool)

(assert (= bs!1141515 (and d!1518618 d!1518590)))

(assert (=> bs!1141515 (= (= lt!1915886 lt!1915758) (= lambda!222100 lambda!222081))))

(declare-fun bs!1141516 () Bool)

(assert (= bs!1141516 (and d!1518618 b!4751316)))

(assert (=> bs!1141516 (= (= lt!1915886 lt!1915497) (= lambda!222100 lambda!222089))))

(assert (=> bs!1141513 (= (= lt!1915886 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222100 lambda!222066))))

(assert (=> bs!1141505 (= (= lt!1915886 acc!1214) (= lambda!222100 lambda!222098))))

(assert (=> d!1518618 true))

(declare-fun e!2963842 () Bool)

(assert (=> d!1518618 e!2963842))

(declare-fun res!2014853 () Bool)

(assert (=> d!1518618 (=> (not res!2014853) (not e!2963842))))

(assert (=> d!1518618 (= res!2014853 (forall!11762 lt!1915493 lambda!222100))))

(declare-fun e!2963843 () ListMap!5541)

(assert (=> d!1518618 (= lt!1915886 e!2963843)))

(declare-fun c!811209 () Bool)

(assert (=> d!1518618 (= c!811209 ((_ is Nil!53086) lt!1915493))))

(assert (=> d!1518618 (noDuplicateKeys!2148 lt!1915493)))

(assert (=> d!1518618 (= (addToMapMapFromBucket!1572 lt!1915493 acc!1214) lt!1915886)))

(assert (=> b!4751337 (= e!2963843 lt!1915882)))

(declare-fun lt!1915883 () ListMap!5541)

(assert (=> b!4751337 (= lt!1915883 (+!2382 acc!1214 (h!59483 lt!1915493)))))

(assert (=> b!4751337 (= lt!1915882 (addToMapMapFromBucket!1572 (t!360542 lt!1915493) (+!2382 acc!1214 (h!59483 lt!1915493))))))

(declare-fun lt!1915889 () Unit!135894)

(declare-fun call!332873 () Unit!135894)

(assert (=> b!4751337 (= lt!1915889 call!332873)))

(assert (=> b!4751337 (forall!11762 (toList!6116 acc!1214) lambda!222098)))

(declare-fun lt!1915876 () Unit!135894)

(assert (=> b!4751337 (= lt!1915876 lt!1915889)))

(declare-fun call!332875 () Bool)

(assert (=> b!4751337 call!332875))

(declare-fun lt!1915893 () Unit!135894)

(declare-fun Unit!135984 () Unit!135894)

(assert (=> b!4751337 (= lt!1915893 Unit!135984)))

(assert (=> b!4751337 (forall!11762 (t!360542 lt!1915493) lambda!222099)))

(declare-fun lt!1915878 () Unit!135894)

(declare-fun Unit!135985 () Unit!135894)

(assert (=> b!4751337 (= lt!1915878 Unit!135985)))

(declare-fun lt!1915887 () Unit!135894)

(declare-fun Unit!135986 () Unit!135894)

(assert (=> b!4751337 (= lt!1915887 Unit!135986)))

(declare-fun lt!1915880 () Unit!135894)

(assert (=> b!4751337 (= lt!1915880 (forallContained!3788 (toList!6116 lt!1915883) lambda!222099 (h!59483 lt!1915493)))))

(assert (=> b!4751337 (contains!16509 lt!1915883 (_1!30722 (h!59483 lt!1915493)))))

(declare-fun lt!1915888 () Unit!135894)

(declare-fun Unit!135987 () Unit!135894)

(assert (=> b!4751337 (= lt!1915888 Unit!135987)))

(assert (=> b!4751337 (contains!16509 lt!1915882 (_1!30722 (h!59483 lt!1915493)))))

(declare-fun lt!1915890 () Unit!135894)

(declare-fun Unit!135988 () Unit!135894)

(assert (=> b!4751337 (= lt!1915890 Unit!135988)))

(assert (=> b!4751337 (forall!11762 lt!1915493 lambda!222099)))

(declare-fun lt!1915873 () Unit!135894)

(declare-fun Unit!135989 () Unit!135894)

(assert (=> b!4751337 (= lt!1915873 Unit!135989)))

(assert (=> b!4751337 (forall!11762 (toList!6116 lt!1915883) lambda!222099)))

(declare-fun lt!1915879 () Unit!135894)

(declare-fun Unit!135990 () Unit!135894)

(assert (=> b!4751337 (= lt!1915879 Unit!135990)))

(declare-fun lt!1915875 () Unit!135894)

(declare-fun Unit!135991 () Unit!135894)

(assert (=> b!4751337 (= lt!1915875 Unit!135991)))

(declare-fun lt!1915877 () Unit!135894)

(assert (=> b!4751337 (= lt!1915877 (addForallContainsKeyThenBeforeAdding!876 acc!1214 lt!1915882 (_1!30722 (h!59483 lt!1915493)) (_2!30722 (h!59483 lt!1915493))))))

(assert (=> b!4751337 (forall!11762 (toList!6116 acc!1214) lambda!222099)))

(declare-fun lt!1915891 () Unit!135894)

(assert (=> b!4751337 (= lt!1915891 lt!1915877)))

(assert (=> b!4751337 (forall!11762 (toList!6116 acc!1214) lambda!222099)))

(declare-fun lt!1915884 () Unit!135894)

(declare-fun Unit!135992 () Unit!135894)

(assert (=> b!4751337 (= lt!1915884 Unit!135992)))

(declare-fun res!2014855 () Bool)

(assert (=> b!4751337 (= res!2014855 (forall!11762 lt!1915493 lambda!222099))))

(declare-fun e!2963841 () Bool)

(assert (=> b!4751337 (=> (not res!2014855) (not e!2963841))))

(assert (=> b!4751337 e!2963841))

(declare-fun lt!1915885 () Unit!135894)

(declare-fun Unit!135993 () Unit!135894)

(assert (=> b!4751337 (= lt!1915885 Unit!135993)))

(declare-fun bm!332868 () Bool)

(assert (=> bm!332868 (= call!332875 (forall!11762 (ite c!811209 (toList!6116 acc!1214) (toList!6116 lt!1915883)) (ite c!811209 lambda!222097 lambda!222099)))))

(assert (=> b!4751338 (= e!2963843 acc!1214)))

(declare-fun lt!1915881 () Unit!135894)

(assert (=> b!4751338 (= lt!1915881 call!332873)))

(declare-fun call!332874 () Bool)

(assert (=> b!4751338 call!332874))

(declare-fun lt!1915892 () Unit!135894)

(assert (=> b!4751338 (= lt!1915892 lt!1915881)))

(assert (=> b!4751338 call!332875))

(declare-fun lt!1915874 () Unit!135894)

(declare-fun Unit!135994 () Unit!135894)

(assert (=> b!4751338 (= lt!1915874 Unit!135994)))

(declare-fun b!4751339 () Bool)

(assert (=> b!4751339 (= e!2963842 (invariantList!1594 (toList!6116 lt!1915886)))))

(declare-fun bm!332869 () Bool)

(assert (=> bm!332869 (= call!332874 (forall!11762 (toList!6116 acc!1214) (ite c!811209 lambda!222097 lambda!222099)))))

(declare-fun bm!332870 () Bool)

(assert (=> bm!332870 (= call!332873 (lemmaContainsAllItsOwnKeys!877 acc!1214))))

(declare-fun b!4751340 () Bool)

(assert (=> b!4751340 (= e!2963841 call!332874)))

(declare-fun b!4751341 () Bool)

(declare-fun res!2014854 () Bool)

(assert (=> b!4751341 (=> (not res!2014854) (not e!2963842))))

(assert (=> b!4751341 (= res!2014854 (forall!11762 (toList!6116 acc!1214) lambda!222100))))

(assert (= (and d!1518618 c!811209) b!4751338))

(assert (= (and d!1518618 (not c!811209)) b!4751337))

(assert (= (and b!4751337 res!2014855) b!4751340))

(assert (= (or b!4751338 b!4751337) bm!332870))

(assert (= (or b!4751338 b!4751337) bm!332868))

(assert (= (or b!4751338 b!4751340) bm!332869))

(assert (= (and d!1518618 res!2014853) b!4751341))

(assert (= (and b!4751341 res!2014854) b!4751339))

(declare-fun m!5714049 () Bool)

(assert (=> d!1518618 m!5714049))

(assert (=> d!1518618 m!5713487))

(declare-fun m!5714051 () Bool)

(assert (=> bm!332868 m!5714051))

(declare-fun m!5714053 () Bool)

(assert (=> bm!332870 m!5714053))

(declare-fun m!5714055 () Bool)

(assert (=> b!4751339 m!5714055))

(declare-fun m!5714057 () Bool)

(assert (=> b!4751337 m!5714057))

(declare-fun m!5714059 () Bool)

(assert (=> b!4751337 m!5714059))

(declare-fun m!5714061 () Bool)

(assert (=> b!4751337 m!5714061))

(declare-fun m!5714063 () Bool)

(assert (=> b!4751337 m!5714063))

(declare-fun m!5714065 () Bool)

(assert (=> b!4751337 m!5714065))

(assert (=> b!4751337 m!5714059))

(declare-fun m!5714067 () Bool)

(assert (=> b!4751337 m!5714067))

(declare-fun m!5714069 () Bool)

(assert (=> b!4751337 m!5714069))

(assert (=> b!4751337 m!5714063))

(declare-fun m!5714071 () Bool)

(assert (=> b!4751337 m!5714071))

(declare-fun m!5714073 () Bool)

(assert (=> b!4751337 m!5714073))

(declare-fun m!5714075 () Bool)

(assert (=> b!4751337 m!5714075))

(declare-fun m!5714077 () Bool)

(assert (=> b!4751337 m!5714077))

(assert (=> b!4751337 m!5714073))

(declare-fun m!5714079 () Bool)

(assert (=> bm!332869 m!5714079))

(declare-fun m!5714081 () Bool)

(assert (=> b!4751341 m!5714081))

(assert (=> b!4751210 d!1518618))

(declare-fun d!1518620 () Bool)

(declare-fun res!2014856 () Bool)

(declare-fun e!2963844 () Bool)

(assert (=> d!1518620 (=> res!2014856 e!2963844)))

(assert (=> d!1518620 (= res!2014856 (not ((_ is Cons!53086) lt!1915493)))))

(assert (=> d!1518620 (= (noDuplicateKeys!2148 lt!1915493) e!2963844)))

(declare-fun b!4751342 () Bool)

(declare-fun e!2963845 () Bool)

(assert (=> b!4751342 (= e!2963844 e!2963845)))

(declare-fun res!2014857 () Bool)

(assert (=> b!4751342 (=> (not res!2014857) (not e!2963845))))

(assert (=> b!4751342 (= res!2014857 (not (containsKey!3557 (t!360542 lt!1915493) (_1!30722 (h!59483 lt!1915493)))))))

(declare-fun b!4751343 () Bool)

(assert (=> b!4751343 (= e!2963845 (noDuplicateKeys!2148 (t!360542 lt!1915493)))))

(assert (= (and d!1518620 (not res!2014856)) b!4751342))

(assert (= (and b!4751342 res!2014857) b!4751343))

(declare-fun m!5714083 () Bool)

(assert (=> b!4751342 m!5714083))

(declare-fun m!5714085 () Bool)

(assert (=> b!4751343 m!5714085))

(assert (=> b!4751208 d!1518620))

(declare-fun d!1518622 () Bool)

(assert (=> d!1518622 (= (eq!1217 lt!1915495 (addToMapMapFromBucket!1572 l!14304 acc!1214)) (= (content!9529 (toList!6116 lt!1915495)) (content!9529 (toList!6116 (addToMapMapFromBucket!1572 l!14304 acc!1214)))))))

(declare-fun bs!1141517 () Bool)

(assert (= bs!1141517 d!1518622))

(declare-fun m!5714087 () Bool)

(assert (=> bs!1141517 m!5714087))

(declare-fun m!5714089 () Bool)

(assert (=> bs!1141517 m!5714089))

(assert (=> b!4751209 d!1518622))

(declare-fun bs!1141518 () Bool)

(declare-fun b!4751345 () Bool)

(assert (= bs!1141518 (and b!4751345 b!4751295)))

(declare-fun lambda!222101 () Int)

(assert (=> bs!1141518 (= (= acc!1214 lt!1915497) (= lambda!222101 lambda!222077))))

(declare-fun bs!1141519 () Bool)

(assert (= bs!1141519 (and b!4751345 b!4751304)))

(assert (=> bs!1141519 (= (= acc!1214 lt!1915494) (= lambda!222101 lambda!222085))))

(declare-fun bs!1141520 () Bool)

(assert (= bs!1141520 (and b!4751345 b!4751337)))

(assert (=> bs!1141520 (= (= acc!1214 lt!1915882) (= lambda!222101 lambda!222099))))

(declare-fun bs!1141521 () Bool)

(assert (= bs!1141521 (and b!4751345 d!1518558)))

(assert (=> bs!1141521 (= (= acc!1214 lt!1915675) (= lambda!222101 lambda!222069))))

(declare-fun bs!1141522 () Bool)

(assert (= bs!1141522 (and b!4751345 d!1518594)))

(assert (=> bs!1141522 (= (= acc!1214 lt!1915800) (= lambda!222101 lambda!222088))))

(declare-fun bs!1141523 () Bool)

(assert (= bs!1141523 (and b!4751345 b!4751315)))

(assert (=> bs!1141523 (= (= acc!1214 lt!1915497) (= lambda!222101 lambda!222091))))

(declare-fun bs!1141524 () Bool)

(assert (= bs!1141524 (and b!4751345 b!4751338)))

(assert (=> bs!1141524 (= lambda!222101 lambda!222097)))

(declare-fun bs!1141525 () Bool)

(assert (= bs!1141525 (and b!4751345 b!4751294)))

(assert (=> bs!1141525 (= (= acc!1214 lt!1915754) (= lambda!222101 lambda!222079))))

(declare-fun bs!1141526 () Bool)

(assert (= bs!1141526 (and b!4751345 b!4751305)))

(assert (=> bs!1141526 (= (= acc!1214 lt!1915494) (= lambda!222101 lambda!222084))))

(assert (=> bs!1141525 (= (= acc!1214 lt!1915497) (= lambda!222101 lambda!222078))))

(assert (=> bs!1141523 (= (= acc!1214 lt!1915829) (= lambda!222101 lambda!222092))))

(declare-fun bs!1141527 () Bool)

(assert (= bs!1141527 (and b!4751345 d!1518618)))

(assert (=> bs!1141527 (= (= acc!1214 lt!1915886) (= lambda!222101 lambda!222100))))

(assert (=> bs!1141519 (= (= acc!1214 lt!1915796) (= lambda!222101 lambda!222086))))

(declare-fun bs!1141528 () Bool)

(assert (= bs!1141528 (and b!4751345 d!1518604)))

(assert (=> bs!1141528 (= (= acc!1214 lt!1915833) (= lambda!222101 lambda!222094))))

(declare-fun bs!1141529 () Bool)

(assert (= bs!1141529 (and b!4751345 b!4751267)))

(assert (=> bs!1141529 (= (= acc!1214 lt!1915671) (= lambda!222101 lambda!222067))))

(declare-fun bs!1141530 () Bool)

(assert (= bs!1141530 (and b!4751345 b!4751268)))

(assert (=> bs!1141530 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222101 lambda!222065))))

(declare-fun bs!1141531 () Bool)

(assert (= bs!1141531 (and b!4751345 d!1518590)))

(assert (=> bs!1141531 (= (= acc!1214 lt!1915758) (= lambda!222101 lambda!222081))))

(declare-fun bs!1141532 () Bool)

(assert (= bs!1141532 (and b!4751345 b!4751316)))

(assert (=> bs!1141532 (= (= acc!1214 lt!1915497) (= lambda!222101 lambda!222089))))

(assert (=> bs!1141529 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222101 lambda!222066))))

(assert (=> bs!1141520 (= lambda!222101 lambda!222098)))

(assert (=> b!4751345 true))

(declare-fun bs!1141533 () Bool)

(declare-fun b!4751344 () Bool)

(assert (= bs!1141533 (and b!4751344 b!4751295)))

(declare-fun lambda!222102 () Int)

(assert (=> bs!1141533 (= (= acc!1214 lt!1915497) (= lambda!222102 lambda!222077))))

(declare-fun bs!1141534 () Bool)

(assert (= bs!1141534 (and b!4751344 b!4751304)))

(assert (=> bs!1141534 (= (= acc!1214 lt!1915494) (= lambda!222102 lambda!222085))))

(declare-fun bs!1141535 () Bool)

(assert (= bs!1141535 (and b!4751344 b!4751337)))

(assert (=> bs!1141535 (= (= acc!1214 lt!1915882) (= lambda!222102 lambda!222099))))

(declare-fun bs!1141536 () Bool)

(assert (= bs!1141536 (and b!4751344 d!1518558)))

(assert (=> bs!1141536 (= (= acc!1214 lt!1915675) (= lambda!222102 lambda!222069))))

(declare-fun bs!1141537 () Bool)

(assert (= bs!1141537 (and b!4751344 d!1518594)))

(assert (=> bs!1141537 (= (= acc!1214 lt!1915800) (= lambda!222102 lambda!222088))))

(declare-fun bs!1141538 () Bool)

(assert (= bs!1141538 (and b!4751344 b!4751315)))

(assert (=> bs!1141538 (= (= acc!1214 lt!1915497) (= lambda!222102 lambda!222091))))

(declare-fun bs!1141539 () Bool)

(assert (= bs!1141539 (and b!4751344 b!4751338)))

(assert (=> bs!1141539 (= lambda!222102 lambda!222097)))

(declare-fun bs!1141540 () Bool)

(assert (= bs!1141540 (and b!4751344 b!4751294)))

(assert (=> bs!1141540 (= (= acc!1214 lt!1915754) (= lambda!222102 lambda!222079))))

(declare-fun bs!1141541 () Bool)

(assert (= bs!1141541 (and b!4751344 b!4751305)))

(assert (=> bs!1141541 (= (= acc!1214 lt!1915494) (= lambda!222102 lambda!222084))))

(assert (=> bs!1141540 (= (= acc!1214 lt!1915497) (= lambda!222102 lambda!222078))))

(assert (=> bs!1141538 (= (= acc!1214 lt!1915829) (= lambda!222102 lambda!222092))))

(declare-fun bs!1141542 () Bool)

(assert (= bs!1141542 (and b!4751344 b!4751345)))

(assert (=> bs!1141542 (= lambda!222102 lambda!222101)))

(declare-fun bs!1141543 () Bool)

(assert (= bs!1141543 (and b!4751344 d!1518618)))

(assert (=> bs!1141543 (= (= acc!1214 lt!1915886) (= lambda!222102 lambda!222100))))

(assert (=> bs!1141534 (= (= acc!1214 lt!1915796) (= lambda!222102 lambda!222086))))

(declare-fun bs!1141544 () Bool)

(assert (= bs!1141544 (and b!4751344 d!1518604)))

(assert (=> bs!1141544 (= (= acc!1214 lt!1915833) (= lambda!222102 lambda!222094))))

(declare-fun bs!1141545 () Bool)

(assert (= bs!1141545 (and b!4751344 b!4751267)))

(assert (=> bs!1141545 (= (= acc!1214 lt!1915671) (= lambda!222102 lambda!222067))))

(declare-fun bs!1141546 () Bool)

(assert (= bs!1141546 (and b!4751344 b!4751268)))

(assert (=> bs!1141546 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222102 lambda!222065))))

(declare-fun bs!1141547 () Bool)

(assert (= bs!1141547 (and b!4751344 d!1518590)))

(assert (=> bs!1141547 (= (= acc!1214 lt!1915758) (= lambda!222102 lambda!222081))))

(declare-fun bs!1141548 () Bool)

(assert (= bs!1141548 (and b!4751344 b!4751316)))

(assert (=> bs!1141548 (= (= acc!1214 lt!1915497) (= lambda!222102 lambda!222089))))

(assert (=> bs!1141545 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222102 lambda!222066))))

(assert (=> bs!1141535 (= lambda!222102 lambda!222098)))

(assert (=> b!4751344 true))

(declare-fun lt!1915903 () ListMap!5541)

(declare-fun lambda!222103 () Int)

(assert (=> bs!1141533 (= (= lt!1915903 lt!1915497) (= lambda!222103 lambda!222077))))

(assert (=> bs!1141534 (= (= lt!1915903 lt!1915494) (= lambda!222103 lambda!222085))))

(assert (=> bs!1141535 (= (= lt!1915903 lt!1915882) (= lambda!222103 lambda!222099))))

(assert (=> bs!1141536 (= (= lt!1915903 lt!1915675) (= lambda!222103 lambda!222069))))

(assert (=> bs!1141537 (= (= lt!1915903 lt!1915800) (= lambda!222103 lambda!222088))))

(assert (=> bs!1141538 (= (= lt!1915903 lt!1915497) (= lambda!222103 lambda!222091))))

(assert (=> bs!1141539 (= (= lt!1915903 acc!1214) (= lambda!222103 lambda!222097))))

(assert (=> bs!1141540 (= (= lt!1915903 lt!1915754) (= lambda!222103 lambda!222079))))

(assert (=> bs!1141541 (= (= lt!1915903 lt!1915494) (= lambda!222103 lambda!222084))))

(assert (=> bs!1141540 (= (= lt!1915903 lt!1915497) (= lambda!222103 lambda!222078))))

(assert (=> bs!1141538 (= (= lt!1915903 lt!1915829) (= lambda!222103 lambda!222092))))

(assert (=> bs!1141542 (= (= lt!1915903 acc!1214) (= lambda!222103 lambda!222101))))

(assert (=> bs!1141543 (= (= lt!1915903 lt!1915886) (= lambda!222103 lambda!222100))))

(assert (=> bs!1141534 (= (= lt!1915903 lt!1915796) (= lambda!222103 lambda!222086))))

(assert (=> bs!1141545 (= (= lt!1915903 lt!1915671) (= lambda!222103 lambda!222067))))

(assert (=> bs!1141546 (= (= lt!1915903 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222103 lambda!222065))))

(assert (=> bs!1141547 (= (= lt!1915903 lt!1915758) (= lambda!222103 lambda!222081))))

(assert (=> bs!1141548 (= (= lt!1915903 lt!1915497) (= lambda!222103 lambda!222089))))

(assert (=> bs!1141545 (= (= lt!1915903 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222103 lambda!222066))))

(assert (=> bs!1141535 (= (= lt!1915903 acc!1214) (= lambda!222103 lambda!222098))))

(assert (=> bs!1141544 (= (= lt!1915903 lt!1915833) (= lambda!222103 lambda!222094))))

(assert (=> b!4751344 (= (= lt!1915903 acc!1214) (= lambda!222103 lambda!222102))))

(assert (=> b!4751344 true))

(declare-fun bs!1141549 () Bool)

(declare-fun d!1518624 () Bool)

(assert (= bs!1141549 (and d!1518624 b!4751295)))

(declare-fun lambda!222104 () Int)

(declare-fun lt!1915907 () ListMap!5541)

(assert (=> bs!1141549 (= (= lt!1915907 lt!1915497) (= lambda!222104 lambda!222077))))

(declare-fun bs!1141550 () Bool)

(assert (= bs!1141550 (and d!1518624 b!4751304)))

(assert (=> bs!1141550 (= (= lt!1915907 lt!1915494) (= lambda!222104 lambda!222085))))

(declare-fun bs!1141551 () Bool)

(assert (= bs!1141551 (and d!1518624 b!4751337)))

(assert (=> bs!1141551 (= (= lt!1915907 lt!1915882) (= lambda!222104 lambda!222099))))

(declare-fun bs!1141552 () Bool)

(assert (= bs!1141552 (and d!1518624 d!1518558)))

(assert (=> bs!1141552 (= (= lt!1915907 lt!1915675) (= lambda!222104 lambda!222069))))

(declare-fun bs!1141553 () Bool)

(assert (= bs!1141553 (and d!1518624 d!1518594)))

(assert (=> bs!1141553 (= (= lt!1915907 lt!1915800) (= lambda!222104 lambda!222088))))

(declare-fun bs!1141554 () Bool)

(assert (= bs!1141554 (and d!1518624 b!4751315)))

(assert (=> bs!1141554 (= (= lt!1915907 lt!1915497) (= lambda!222104 lambda!222091))))

(declare-fun bs!1141555 () Bool)

(assert (= bs!1141555 (and d!1518624 b!4751338)))

(assert (=> bs!1141555 (= (= lt!1915907 acc!1214) (= lambda!222104 lambda!222097))))

(declare-fun bs!1141556 () Bool)

(assert (= bs!1141556 (and d!1518624 b!4751294)))

(assert (=> bs!1141556 (= (= lt!1915907 lt!1915754) (= lambda!222104 lambda!222079))))

(declare-fun bs!1141557 () Bool)

(assert (= bs!1141557 (and d!1518624 b!4751344)))

(assert (=> bs!1141557 (= (= lt!1915907 lt!1915903) (= lambda!222104 lambda!222103))))

(declare-fun bs!1141558 () Bool)

(assert (= bs!1141558 (and d!1518624 b!4751305)))

(assert (=> bs!1141558 (= (= lt!1915907 lt!1915494) (= lambda!222104 lambda!222084))))

(assert (=> bs!1141556 (= (= lt!1915907 lt!1915497) (= lambda!222104 lambda!222078))))

(assert (=> bs!1141554 (= (= lt!1915907 lt!1915829) (= lambda!222104 lambda!222092))))

(declare-fun bs!1141559 () Bool)

(assert (= bs!1141559 (and d!1518624 b!4751345)))

(assert (=> bs!1141559 (= (= lt!1915907 acc!1214) (= lambda!222104 lambda!222101))))

(declare-fun bs!1141560 () Bool)

(assert (= bs!1141560 (and d!1518624 d!1518618)))

(assert (=> bs!1141560 (= (= lt!1915907 lt!1915886) (= lambda!222104 lambda!222100))))

(assert (=> bs!1141550 (= (= lt!1915907 lt!1915796) (= lambda!222104 lambda!222086))))

(declare-fun bs!1141561 () Bool)

(assert (= bs!1141561 (and d!1518624 b!4751267)))

(assert (=> bs!1141561 (= (= lt!1915907 lt!1915671) (= lambda!222104 lambda!222067))))

(declare-fun bs!1141562 () Bool)

(assert (= bs!1141562 (and d!1518624 b!4751268)))

(assert (=> bs!1141562 (= (= lt!1915907 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222104 lambda!222065))))

(declare-fun bs!1141563 () Bool)

(assert (= bs!1141563 (and d!1518624 d!1518590)))

(assert (=> bs!1141563 (= (= lt!1915907 lt!1915758) (= lambda!222104 lambda!222081))))

(declare-fun bs!1141564 () Bool)

(assert (= bs!1141564 (and d!1518624 b!4751316)))

(assert (=> bs!1141564 (= (= lt!1915907 lt!1915497) (= lambda!222104 lambda!222089))))

(assert (=> bs!1141561 (= (= lt!1915907 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222104 lambda!222066))))

(assert (=> bs!1141551 (= (= lt!1915907 acc!1214) (= lambda!222104 lambda!222098))))

(declare-fun bs!1141565 () Bool)

(assert (= bs!1141565 (and d!1518624 d!1518604)))

(assert (=> bs!1141565 (= (= lt!1915907 lt!1915833) (= lambda!222104 lambda!222094))))

(assert (=> bs!1141557 (= (= lt!1915907 acc!1214) (= lambda!222104 lambda!222102))))

(assert (=> d!1518624 true))

(declare-fun e!2963847 () Bool)

(assert (=> d!1518624 e!2963847))

(declare-fun res!2014858 () Bool)

(assert (=> d!1518624 (=> (not res!2014858) (not e!2963847))))

(assert (=> d!1518624 (= res!2014858 (forall!11762 l!14304 lambda!222104))))

(declare-fun e!2963848 () ListMap!5541)

(assert (=> d!1518624 (= lt!1915907 e!2963848)))

(declare-fun c!811210 () Bool)

(assert (=> d!1518624 (= c!811210 ((_ is Nil!53086) l!14304))))

(assert (=> d!1518624 (noDuplicateKeys!2148 l!14304)))

(assert (=> d!1518624 (= (addToMapMapFromBucket!1572 l!14304 acc!1214) lt!1915907)))

(assert (=> b!4751344 (= e!2963848 lt!1915903)))

(declare-fun lt!1915904 () ListMap!5541)

(assert (=> b!4751344 (= lt!1915904 (+!2382 acc!1214 (h!59483 l!14304)))))

(assert (=> b!4751344 (= lt!1915903 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 acc!1214 (h!59483 l!14304))))))

(declare-fun lt!1915910 () Unit!135894)

(declare-fun call!332876 () Unit!135894)

(assert (=> b!4751344 (= lt!1915910 call!332876)))

(assert (=> b!4751344 (forall!11762 (toList!6116 acc!1214) lambda!222102)))

(declare-fun lt!1915897 () Unit!135894)

(assert (=> b!4751344 (= lt!1915897 lt!1915910)))

(declare-fun call!332878 () Bool)

(assert (=> b!4751344 call!332878))

(declare-fun lt!1915914 () Unit!135894)

(declare-fun Unit!136006 () Unit!135894)

(assert (=> b!4751344 (= lt!1915914 Unit!136006)))

(assert (=> b!4751344 (forall!11762 (t!360542 l!14304) lambda!222103)))

(declare-fun lt!1915899 () Unit!135894)

(declare-fun Unit!136007 () Unit!135894)

(assert (=> b!4751344 (= lt!1915899 Unit!136007)))

(declare-fun lt!1915908 () Unit!135894)

(declare-fun Unit!136008 () Unit!135894)

(assert (=> b!4751344 (= lt!1915908 Unit!136008)))

(declare-fun lt!1915901 () Unit!135894)

(assert (=> b!4751344 (= lt!1915901 (forallContained!3788 (toList!6116 lt!1915904) lambda!222103 (h!59483 l!14304)))))

(assert (=> b!4751344 (contains!16509 lt!1915904 (_1!30722 (h!59483 l!14304)))))

(declare-fun lt!1915909 () Unit!135894)

(declare-fun Unit!136009 () Unit!135894)

(assert (=> b!4751344 (= lt!1915909 Unit!136009)))

(assert (=> b!4751344 (contains!16509 lt!1915903 (_1!30722 (h!59483 l!14304)))))

(declare-fun lt!1915911 () Unit!135894)

(declare-fun Unit!136010 () Unit!135894)

(assert (=> b!4751344 (= lt!1915911 Unit!136010)))

(assert (=> b!4751344 (forall!11762 l!14304 lambda!222103)))

(declare-fun lt!1915894 () Unit!135894)

(declare-fun Unit!136011 () Unit!135894)

(assert (=> b!4751344 (= lt!1915894 Unit!136011)))

(assert (=> b!4751344 (forall!11762 (toList!6116 lt!1915904) lambda!222103)))

(declare-fun lt!1915900 () Unit!135894)

(declare-fun Unit!136012 () Unit!135894)

(assert (=> b!4751344 (= lt!1915900 Unit!136012)))

(declare-fun lt!1915896 () Unit!135894)

(declare-fun Unit!136013 () Unit!135894)

(assert (=> b!4751344 (= lt!1915896 Unit!136013)))

(declare-fun lt!1915898 () Unit!135894)

(assert (=> b!4751344 (= lt!1915898 (addForallContainsKeyThenBeforeAdding!876 acc!1214 lt!1915903 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(assert (=> b!4751344 (forall!11762 (toList!6116 acc!1214) lambda!222103)))

(declare-fun lt!1915912 () Unit!135894)

(assert (=> b!4751344 (= lt!1915912 lt!1915898)))

(assert (=> b!4751344 (forall!11762 (toList!6116 acc!1214) lambda!222103)))

(declare-fun lt!1915905 () Unit!135894)

(declare-fun Unit!136014 () Unit!135894)

(assert (=> b!4751344 (= lt!1915905 Unit!136014)))

(declare-fun res!2014860 () Bool)

(assert (=> b!4751344 (= res!2014860 (forall!11762 l!14304 lambda!222103))))

(declare-fun e!2963846 () Bool)

(assert (=> b!4751344 (=> (not res!2014860) (not e!2963846))))

(assert (=> b!4751344 e!2963846))

(declare-fun lt!1915906 () Unit!135894)

(declare-fun Unit!136015 () Unit!135894)

(assert (=> b!4751344 (= lt!1915906 Unit!136015)))

(declare-fun bm!332871 () Bool)

(assert (=> bm!332871 (= call!332878 (forall!11762 (ite c!811210 (toList!6116 acc!1214) (toList!6116 lt!1915904)) (ite c!811210 lambda!222101 lambda!222103)))))

(assert (=> b!4751345 (= e!2963848 acc!1214)))

(declare-fun lt!1915902 () Unit!135894)

(assert (=> b!4751345 (= lt!1915902 call!332876)))

(declare-fun call!332877 () Bool)

(assert (=> b!4751345 call!332877))

(declare-fun lt!1915913 () Unit!135894)

(assert (=> b!4751345 (= lt!1915913 lt!1915902)))

(assert (=> b!4751345 call!332878))

(declare-fun lt!1915895 () Unit!135894)

(declare-fun Unit!136016 () Unit!135894)

(assert (=> b!4751345 (= lt!1915895 Unit!136016)))

(declare-fun b!4751346 () Bool)

(assert (=> b!4751346 (= e!2963847 (invariantList!1594 (toList!6116 lt!1915907)))))

(declare-fun bm!332872 () Bool)

(assert (=> bm!332872 (= call!332877 (forall!11762 (toList!6116 acc!1214) (ite c!811210 lambda!222101 lambda!222103)))))

(declare-fun bm!332873 () Bool)

(assert (=> bm!332873 (= call!332876 (lemmaContainsAllItsOwnKeys!877 acc!1214))))

(declare-fun b!4751347 () Bool)

(assert (=> b!4751347 (= e!2963846 call!332877)))

(declare-fun b!4751348 () Bool)

(declare-fun res!2014859 () Bool)

(assert (=> b!4751348 (=> (not res!2014859) (not e!2963847))))

(assert (=> b!4751348 (= res!2014859 (forall!11762 (toList!6116 acc!1214) lambda!222104))))

(assert (= (and d!1518624 c!811210) b!4751345))

(assert (= (and d!1518624 (not c!811210)) b!4751344))

(assert (= (and b!4751344 res!2014860) b!4751347))

(assert (= (or b!4751345 b!4751344) bm!332873))

(assert (= (or b!4751345 b!4751344) bm!332871))

(assert (= (or b!4751345 b!4751347) bm!332872))

(assert (= (and d!1518624 res!2014858) b!4751348))

(assert (= (and b!4751348 res!2014859) b!4751346))

(declare-fun m!5714091 () Bool)

(assert (=> d!1518624 m!5714091))

(assert (=> d!1518624 m!5713483))

(declare-fun m!5714093 () Bool)

(assert (=> bm!332871 m!5714093))

(assert (=> bm!332873 m!5714053))

(declare-fun m!5714095 () Bool)

(assert (=> b!4751346 m!5714095))

(declare-fun m!5714097 () Bool)

(assert (=> b!4751344 m!5714097))

(assert (=> b!4751344 m!5713503))

(declare-fun m!5714099 () Bool)

(assert (=> b!4751344 m!5714099))

(declare-fun m!5714101 () Bool)

(assert (=> b!4751344 m!5714101))

(declare-fun m!5714103 () Bool)

(assert (=> b!4751344 m!5714103))

(assert (=> b!4751344 m!5713503))

(declare-fun m!5714105 () Bool)

(assert (=> b!4751344 m!5714105))

(declare-fun m!5714107 () Bool)

(assert (=> b!4751344 m!5714107))

(assert (=> b!4751344 m!5714101))

(declare-fun m!5714109 () Bool)

(assert (=> b!4751344 m!5714109))

(declare-fun m!5714111 () Bool)

(assert (=> b!4751344 m!5714111))

(declare-fun m!5714113 () Bool)

(assert (=> b!4751344 m!5714113))

(declare-fun m!5714115 () Bool)

(assert (=> b!4751344 m!5714115))

(assert (=> b!4751344 m!5714111))

(declare-fun m!5714117 () Bool)

(assert (=> bm!332872 m!5714117))

(declare-fun m!5714119 () Bool)

(assert (=> b!4751348 m!5714119))

(assert (=> b!4751209 d!1518624))

(declare-fun d!1518626 () Bool)

(assert (=> d!1518626 (= (eq!1217 lt!1915496 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174))) (= (content!9529 (toList!6116 lt!1915496)) (content!9529 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174))))))))

(declare-fun bs!1141566 () Bool)

(assert (= bs!1141566 d!1518626))

(assert (=> bs!1141566 m!5713765))

(declare-fun m!5714121 () Bool)

(assert (=> bs!1141566 m!5714121))

(assert (=> b!4751207 d!1518626))

(declare-fun bs!1141567 () Bool)

(declare-fun b!4751350 () Bool)

(assert (= bs!1141567 (and b!4751350 b!4751295)))

(declare-fun lambda!222105 () Int)

(assert (=> bs!1141567 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222105 lambda!222077))))

(declare-fun bs!1141568 () Bool)

(assert (= bs!1141568 (and b!4751350 b!4751304)))

(assert (=> bs!1141568 (= (= (+!2382 lt!1915497 t!14174) lt!1915494) (= lambda!222105 lambda!222085))))

(declare-fun bs!1141569 () Bool)

(assert (= bs!1141569 (and b!4751350 d!1518558)))

(assert (=> bs!1141569 (= (= (+!2382 lt!1915497 t!14174) lt!1915675) (= lambda!222105 lambda!222069))))

(declare-fun bs!1141570 () Bool)

(assert (= bs!1141570 (and b!4751350 d!1518594)))

(assert (=> bs!1141570 (= (= (+!2382 lt!1915497 t!14174) lt!1915800) (= lambda!222105 lambda!222088))))

(declare-fun bs!1141571 () Bool)

(assert (= bs!1141571 (and b!4751350 b!4751315)))

(assert (=> bs!1141571 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222105 lambda!222091))))

(declare-fun bs!1141572 () Bool)

(assert (= bs!1141572 (and b!4751350 b!4751338)))

(assert (=> bs!1141572 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222105 lambda!222097))))

(declare-fun bs!1141573 () Bool)

(assert (= bs!1141573 (and b!4751350 b!4751294)))

(assert (=> bs!1141573 (= (= (+!2382 lt!1915497 t!14174) lt!1915754) (= lambda!222105 lambda!222079))))

(declare-fun bs!1141574 () Bool)

(assert (= bs!1141574 (and b!4751350 b!4751344)))

(assert (=> bs!1141574 (= (= (+!2382 lt!1915497 t!14174) lt!1915903) (= lambda!222105 lambda!222103))))

(declare-fun bs!1141575 () Bool)

(assert (= bs!1141575 (and b!4751350 b!4751305)))

(assert (=> bs!1141575 (= (= (+!2382 lt!1915497 t!14174) lt!1915494) (= lambda!222105 lambda!222084))))

(assert (=> bs!1141573 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222105 lambda!222078))))

(assert (=> bs!1141571 (= (= (+!2382 lt!1915497 t!14174) lt!1915829) (= lambda!222105 lambda!222092))))

(declare-fun bs!1141576 () Bool)

(assert (= bs!1141576 (and b!4751350 b!4751345)))

(assert (=> bs!1141576 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222105 lambda!222101))))

(declare-fun bs!1141577 () Bool)

(assert (= bs!1141577 (and b!4751350 d!1518618)))

(assert (=> bs!1141577 (= (= (+!2382 lt!1915497 t!14174) lt!1915886) (= lambda!222105 lambda!222100))))

(assert (=> bs!1141568 (= (= (+!2382 lt!1915497 t!14174) lt!1915796) (= lambda!222105 lambda!222086))))

(declare-fun bs!1141578 () Bool)

(assert (= bs!1141578 (and b!4751350 b!4751337)))

(assert (=> bs!1141578 (= (= (+!2382 lt!1915497 t!14174) lt!1915882) (= lambda!222105 lambda!222099))))

(declare-fun bs!1141579 () Bool)

(assert (= bs!1141579 (and b!4751350 d!1518624)))

(assert (=> bs!1141579 (= (= (+!2382 lt!1915497 t!14174) lt!1915907) (= lambda!222105 lambda!222104))))

(declare-fun bs!1141580 () Bool)

(assert (= bs!1141580 (and b!4751350 b!4751267)))

(assert (=> bs!1141580 (= (= (+!2382 lt!1915497 t!14174) lt!1915671) (= lambda!222105 lambda!222067))))

(declare-fun bs!1141581 () Bool)

(assert (= bs!1141581 (and b!4751350 b!4751268)))

(assert (=> bs!1141581 (= (= (+!2382 lt!1915497 t!14174) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222105 lambda!222065))))

(declare-fun bs!1141582 () Bool)

(assert (= bs!1141582 (and b!4751350 d!1518590)))

(assert (=> bs!1141582 (= (= (+!2382 lt!1915497 t!14174) lt!1915758) (= lambda!222105 lambda!222081))))

(declare-fun bs!1141583 () Bool)

(assert (= bs!1141583 (and b!4751350 b!4751316)))

(assert (=> bs!1141583 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222105 lambda!222089))))

(assert (=> bs!1141580 (= (= (+!2382 lt!1915497 t!14174) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222105 lambda!222066))))

(assert (=> bs!1141578 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222105 lambda!222098))))

(declare-fun bs!1141584 () Bool)

(assert (= bs!1141584 (and b!4751350 d!1518604)))

(assert (=> bs!1141584 (= (= (+!2382 lt!1915497 t!14174) lt!1915833) (= lambda!222105 lambda!222094))))

(assert (=> bs!1141574 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222105 lambda!222102))))

(assert (=> b!4751350 true))

(declare-fun bs!1141585 () Bool)

(declare-fun b!4751349 () Bool)

(assert (= bs!1141585 (and b!4751349 b!4751295)))

(declare-fun lambda!222106 () Int)

(assert (=> bs!1141585 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222106 lambda!222077))))

(declare-fun bs!1141586 () Bool)

(assert (= bs!1141586 (and b!4751349 b!4751304)))

(assert (=> bs!1141586 (= (= (+!2382 lt!1915497 t!14174) lt!1915494) (= lambda!222106 lambda!222085))))

(declare-fun bs!1141587 () Bool)

(assert (= bs!1141587 (and b!4751349 d!1518558)))

(assert (=> bs!1141587 (= (= (+!2382 lt!1915497 t!14174) lt!1915675) (= lambda!222106 lambda!222069))))

(declare-fun bs!1141588 () Bool)

(assert (= bs!1141588 (and b!4751349 d!1518594)))

(assert (=> bs!1141588 (= (= (+!2382 lt!1915497 t!14174) lt!1915800) (= lambda!222106 lambda!222088))))

(declare-fun bs!1141589 () Bool)

(assert (= bs!1141589 (and b!4751349 b!4751315)))

(assert (=> bs!1141589 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222106 lambda!222091))))

(declare-fun bs!1141590 () Bool)

(assert (= bs!1141590 (and b!4751349 b!4751294)))

(assert (=> bs!1141590 (= (= (+!2382 lt!1915497 t!14174) lt!1915754) (= lambda!222106 lambda!222079))))

(declare-fun bs!1141591 () Bool)

(assert (= bs!1141591 (and b!4751349 b!4751344)))

(assert (=> bs!1141591 (= (= (+!2382 lt!1915497 t!14174) lt!1915903) (= lambda!222106 lambda!222103))))

(declare-fun bs!1141592 () Bool)

(assert (= bs!1141592 (and b!4751349 b!4751305)))

(assert (=> bs!1141592 (= (= (+!2382 lt!1915497 t!14174) lt!1915494) (= lambda!222106 lambda!222084))))

(assert (=> bs!1141590 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222106 lambda!222078))))

(assert (=> bs!1141589 (= (= (+!2382 lt!1915497 t!14174) lt!1915829) (= lambda!222106 lambda!222092))))

(declare-fun bs!1141593 () Bool)

(assert (= bs!1141593 (and b!4751349 b!4751345)))

(assert (=> bs!1141593 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222106 lambda!222101))))

(declare-fun bs!1141594 () Bool)

(assert (= bs!1141594 (and b!4751349 d!1518618)))

(assert (=> bs!1141594 (= (= (+!2382 lt!1915497 t!14174) lt!1915886) (= lambda!222106 lambda!222100))))

(assert (=> bs!1141586 (= (= (+!2382 lt!1915497 t!14174) lt!1915796) (= lambda!222106 lambda!222086))))

(declare-fun bs!1141595 () Bool)

(assert (= bs!1141595 (and b!4751349 b!4751337)))

(assert (=> bs!1141595 (= (= (+!2382 lt!1915497 t!14174) lt!1915882) (= lambda!222106 lambda!222099))))

(declare-fun bs!1141596 () Bool)

(assert (= bs!1141596 (and b!4751349 d!1518624)))

(assert (=> bs!1141596 (= (= (+!2382 lt!1915497 t!14174) lt!1915907) (= lambda!222106 lambda!222104))))

(declare-fun bs!1141597 () Bool)

(assert (= bs!1141597 (and b!4751349 b!4751338)))

(assert (=> bs!1141597 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222106 lambda!222097))))

(declare-fun bs!1141598 () Bool)

(assert (= bs!1141598 (and b!4751349 b!4751350)))

(assert (=> bs!1141598 (= lambda!222106 lambda!222105)))

(declare-fun bs!1141599 () Bool)

(assert (= bs!1141599 (and b!4751349 b!4751267)))

(assert (=> bs!1141599 (= (= (+!2382 lt!1915497 t!14174) lt!1915671) (= lambda!222106 lambda!222067))))

(declare-fun bs!1141600 () Bool)

(assert (= bs!1141600 (and b!4751349 b!4751268)))

(assert (=> bs!1141600 (= (= (+!2382 lt!1915497 t!14174) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222106 lambda!222065))))

(declare-fun bs!1141601 () Bool)

(assert (= bs!1141601 (and b!4751349 d!1518590)))

(assert (=> bs!1141601 (= (= (+!2382 lt!1915497 t!14174) lt!1915758) (= lambda!222106 lambda!222081))))

(declare-fun bs!1141602 () Bool)

(assert (= bs!1141602 (and b!4751349 b!4751316)))

(assert (=> bs!1141602 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222106 lambda!222089))))

(assert (=> bs!1141599 (= (= (+!2382 lt!1915497 t!14174) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222106 lambda!222066))))

(assert (=> bs!1141595 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222106 lambda!222098))))

(declare-fun bs!1141603 () Bool)

(assert (= bs!1141603 (and b!4751349 d!1518604)))

(assert (=> bs!1141603 (= (= (+!2382 lt!1915497 t!14174) lt!1915833) (= lambda!222106 lambda!222094))))

(assert (=> bs!1141591 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222106 lambda!222102))))

(assert (=> b!4751349 true))

(declare-fun lambda!222107 () Int)

(declare-fun lt!1915924 () ListMap!5541)

(assert (=> bs!1141586 (= (= lt!1915924 lt!1915494) (= lambda!222107 lambda!222085))))

(assert (=> bs!1141587 (= (= lt!1915924 lt!1915675) (= lambda!222107 lambda!222069))))

(assert (=> bs!1141588 (= (= lt!1915924 lt!1915800) (= lambda!222107 lambda!222088))))

(assert (=> bs!1141589 (= (= lt!1915924 lt!1915497) (= lambda!222107 lambda!222091))))

(assert (=> bs!1141590 (= (= lt!1915924 lt!1915754) (= lambda!222107 lambda!222079))))

(assert (=> bs!1141591 (= (= lt!1915924 lt!1915903) (= lambda!222107 lambda!222103))))

(assert (=> bs!1141592 (= (= lt!1915924 lt!1915494) (= lambda!222107 lambda!222084))))

(assert (=> bs!1141590 (= (= lt!1915924 lt!1915497) (= lambda!222107 lambda!222078))))

(assert (=> bs!1141589 (= (= lt!1915924 lt!1915829) (= lambda!222107 lambda!222092))))

(assert (=> bs!1141593 (= (= lt!1915924 acc!1214) (= lambda!222107 lambda!222101))))

(assert (=> bs!1141594 (= (= lt!1915924 lt!1915886) (= lambda!222107 lambda!222100))))

(assert (=> bs!1141586 (= (= lt!1915924 lt!1915796) (= lambda!222107 lambda!222086))))

(assert (=> bs!1141585 (= (= lt!1915924 lt!1915497) (= lambda!222107 lambda!222077))))

(assert (=> b!4751349 (= (= lt!1915924 (+!2382 lt!1915497 t!14174)) (= lambda!222107 lambda!222106))))

(assert (=> bs!1141595 (= (= lt!1915924 lt!1915882) (= lambda!222107 lambda!222099))))

(assert (=> bs!1141596 (= (= lt!1915924 lt!1915907) (= lambda!222107 lambda!222104))))

(assert (=> bs!1141597 (= (= lt!1915924 acc!1214) (= lambda!222107 lambda!222097))))

(assert (=> bs!1141598 (= (= lt!1915924 (+!2382 lt!1915497 t!14174)) (= lambda!222107 lambda!222105))))

(assert (=> bs!1141599 (= (= lt!1915924 lt!1915671) (= lambda!222107 lambda!222067))))

(assert (=> bs!1141600 (= (= lt!1915924 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222107 lambda!222065))))

(assert (=> bs!1141601 (= (= lt!1915924 lt!1915758) (= lambda!222107 lambda!222081))))

(assert (=> bs!1141602 (= (= lt!1915924 lt!1915497) (= lambda!222107 lambda!222089))))

(assert (=> bs!1141599 (= (= lt!1915924 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222107 lambda!222066))))

(assert (=> bs!1141595 (= (= lt!1915924 acc!1214) (= lambda!222107 lambda!222098))))

(assert (=> bs!1141603 (= (= lt!1915924 lt!1915833) (= lambda!222107 lambda!222094))))

(assert (=> bs!1141591 (= (= lt!1915924 acc!1214) (= lambda!222107 lambda!222102))))

(assert (=> b!4751349 true))

(declare-fun bs!1141604 () Bool)

(declare-fun d!1518628 () Bool)

(assert (= bs!1141604 (and d!1518628 b!4751304)))

(declare-fun lt!1915928 () ListMap!5541)

(declare-fun lambda!222108 () Int)

(assert (=> bs!1141604 (= (= lt!1915928 lt!1915494) (= lambda!222108 lambda!222085))))

(declare-fun bs!1141605 () Bool)

(assert (= bs!1141605 (and d!1518628 d!1518558)))

(assert (=> bs!1141605 (= (= lt!1915928 lt!1915675) (= lambda!222108 lambda!222069))))

(declare-fun bs!1141606 () Bool)

(assert (= bs!1141606 (and d!1518628 d!1518594)))

(assert (=> bs!1141606 (= (= lt!1915928 lt!1915800) (= lambda!222108 lambda!222088))))

(declare-fun bs!1141607 () Bool)

(assert (= bs!1141607 (and d!1518628 b!4751315)))

(assert (=> bs!1141607 (= (= lt!1915928 lt!1915497) (= lambda!222108 lambda!222091))))

(declare-fun bs!1141608 () Bool)

(assert (= bs!1141608 (and d!1518628 b!4751294)))

(assert (=> bs!1141608 (= (= lt!1915928 lt!1915754) (= lambda!222108 lambda!222079))))

(declare-fun bs!1141609 () Bool)

(assert (= bs!1141609 (and d!1518628 b!4751344)))

(assert (=> bs!1141609 (= (= lt!1915928 lt!1915903) (= lambda!222108 lambda!222103))))

(declare-fun bs!1141610 () Bool)

(assert (= bs!1141610 (and d!1518628 b!4751305)))

(assert (=> bs!1141610 (= (= lt!1915928 lt!1915494) (= lambda!222108 lambda!222084))))

(assert (=> bs!1141608 (= (= lt!1915928 lt!1915497) (= lambda!222108 lambda!222078))))

(declare-fun bs!1141611 () Bool)

(assert (= bs!1141611 (and d!1518628 b!4751345)))

(assert (=> bs!1141611 (= (= lt!1915928 acc!1214) (= lambda!222108 lambda!222101))))

(declare-fun bs!1141612 () Bool)

(assert (= bs!1141612 (and d!1518628 d!1518618)))

(assert (=> bs!1141612 (= (= lt!1915928 lt!1915886) (= lambda!222108 lambda!222100))))

(assert (=> bs!1141604 (= (= lt!1915928 lt!1915796) (= lambda!222108 lambda!222086))))

(declare-fun bs!1141613 () Bool)

(assert (= bs!1141613 (and d!1518628 b!4751295)))

(assert (=> bs!1141613 (= (= lt!1915928 lt!1915497) (= lambda!222108 lambda!222077))))

(declare-fun bs!1141614 () Bool)

(assert (= bs!1141614 (and d!1518628 b!4751349)))

(assert (=> bs!1141614 (= (= lt!1915928 (+!2382 lt!1915497 t!14174)) (= lambda!222108 lambda!222106))))

(declare-fun bs!1141615 () Bool)

(assert (= bs!1141615 (and d!1518628 b!4751337)))

(assert (=> bs!1141615 (= (= lt!1915928 lt!1915882) (= lambda!222108 lambda!222099))))

(declare-fun bs!1141616 () Bool)

(assert (= bs!1141616 (and d!1518628 d!1518624)))

(assert (=> bs!1141616 (= (= lt!1915928 lt!1915907) (= lambda!222108 lambda!222104))))

(declare-fun bs!1141617 () Bool)

(assert (= bs!1141617 (and d!1518628 b!4751338)))

(assert (=> bs!1141617 (= (= lt!1915928 acc!1214) (= lambda!222108 lambda!222097))))

(declare-fun bs!1141618 () Bool)

(assert (= bs!1141618 (and d!1518628 b!4751350)))

(assert (=> bs!1141618 (= (= lt!1915928 (+!2382 lt!1915497 t!14174)) (= lambda!222108 lambda!222105))))

(declare-fun bs!1141619 () Bool)

(assert (= bs!1141619 (and d!1518628 b!4751267)))

(assert (=> bs!1141619 (= (= lt!1915928 lt!1915671) (= lambda!222108 lambda!222067))))

(declare-fun bs!1141620 () Bool)

(assert (= bs!1141620 (and d!1518628 b!4751268)))

(assert (=> bs!1141620 (= (= lt!1915928 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222108 lambda!222065))))

(assert (=> bs!1141614 (= (= lt!1915928 lt!1915924) (= lambda!222108 lambda!222107))))

(assert (=> bs!1141607 (= (= lt!1915928 lt!1915829) (= lambda!222108 lambda!222092))))

(declare-fun bs!1141621 () Bool)

(assert (= bs!1141621 (and d!1518628 d!1518590)))

(assert (=> bs!1141621 (= (= lt!1915928 lt!1915758) (= lambda!222108 lambda!222081))))

(declare-fun bs!1141622 () Bool)

(assert (= bs!1141622 (and d!1518628 b!4751316)))

(assert (=> bs!1141622 (= (= lt!1915928 lt!1915497) (= lambda!222108 lambda!222089))))

(assert (=> bs!1141619 (= (= lt!1915928 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222108 lambda!222066))))

(assert (=> bs!1141615 (= (= lt!1915928 acc!1214) (= lambda!222108 lambda!222098))))

(declare-fun bs!1141623 () Bool)

(assert (= bs!1141623 (and d!1518628 d!1518604)))

(assert (=> bs!1141623 (= (= lt!1915928 lt!1915833) (= lambda!222108 lambda!222094))))

(assert (=> bs!1141609 (= (= lt!1915928 acc!1214) (= lambda!222108 lambda!222102))))

(assert (=> d!1518628 true))

(declare-fun e!2963850 () Bool)

(assert (=> d!1518628 e!2963850))

(declare-fun res!2014861 () Bool)

(assert (=> d!1518628 (=> (not res!2014861) (not e!2963850))))

(assert (=> d!1518628 (= res!2014861 (forall!11762 (t!360542 l!14304) lambda!222108))))

(declare-fun e!2963851 () ListMap!5541)

(assert (=> d!1518628 (= lt!1915928 e!2963851)))

(declare-fun c!811211 () Bool)

(assert (=> d!1518628 (= c!811211 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518628 (noDuplicateKeys!2148 (t!360542 l!14304))))

(assert (=> d!1518628 (= (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174)) lt!1915928)))

(assert (=> b!4751349 (= e!2963851 lt!1915924)))

(declare-fun lt!1915925 () ListMap!5541)

(assert (=> b!4751349 (= lt!1915925 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751349 (= lt!1915924 (addToMapMapFromBucket!1572 (t!360542 (t!360542 l!14304)) (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1915931 () Unit!135894)

(declare-fun call!332879 () Unit!135894)

(assert (=> b!4751349 (= lt!1915931 call!332879)))

(assert (=> b!4751349 (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222106)))

(declare-fun lt!1915918 () Unit!135894)

(assert (=> b!4751349 (= lt!1915918 lt!1915931)))

(declare-fun call!332881 () Bool)

(assert (=> b!4751349 call!332881))

(declare-fun lt!1915935 () Unit!135894)

(declare-fun Unit!136025 () Unit!135894)

(assert (=> b!4751349 (= lt!1915935 Unit!136025)))

(assert (=> b!4751349 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222107)))

(declare-fun lt!1915920 () Unit!135894)

(declare-fun Unit!136026 () Unit!135894)

(assert (=> b!4751349 (= lt!1915920 Unit!136026)))

(declare-fun lt!1915929 () Unit!135894)

(declare-fun Unit!136027 () Unit!135894)

(assert (=> b!4751349 (= lt!1915929 Unit!136027)))

(declare-fun lt!1915922 () Unit!135894)

(assert (=> b!4751349 (= lt!1915922 (forallContained!3788 (toList!6116 lt!1915925) lambda!222107 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751349 (contains!16509 lt!1915925 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1915930 () Unit!135894)

(declare-fun Unit!136029 () Unit!135894)

(assert (=> b!4751349 (= lt!1915930 Unit!136029)))

(assert (=> b!4751349 (contains!16509 lt!1915924 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1915932 () Unit!135894)

(declare-fun Unit!136030 () Unit!135894)

(assert (=> b!4751349 (= lt!1915932 Unit!136030)))

(assert (=> b!4751349 (forall!11762 (t!360542 l!14304) lambda!222107)))

(declare-fun lt!1915915 () Unit!135894)

(declare-fun Unit!136032 () Unit!135894)

(assert (=> b!4751349 (= lt!1915915 Unit!136032)))

(assert (=> b!4751349 (forall!11762 (toList!6116 lt!1915925) lambda!222107)))

(declare-fun lt!1915921 () Unit!135894)

(declare-fun Unit!136033 () Unit!135894)

(assert (=> b!4751349 (= lt!1915921 Unit!136033)))

(declare-fun lt!1915917 () Unit!135894)

(declare-fun Unit!136034 () Unit!135894)

(assert (=> b!4751349 (= lt!1915917 Unit!136034)))

(declare-fun lt!1915919 () Unit!135894)

(assert (=> b!4751349 (= lt!1915919 (addForallContainsKeyThenBeforeAdding!876 (+!2382 lt!1915497 t!14174) lt!1915924 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751349 (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222107)))

(declare-fun lt!1915933 () Unit!135894)

(assert (=> b!4751349 (= lt!1915933 lt!1915919)))

(assert (=> b!4751349 (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222107)))

(declare-fun lt!1915926 () Unit!135894)

(declare-fun Unit!136035 () Unit!135894)

(assert (=> b!4751349 (= lt!1915926 Unit!136035)))

(declare-fun res!2014863 () Bool)

(assert (=> b!4751349 (= res!2014863 (forall!11762 (t!360542 l!14304) lambda!222107))))

(declare-fun e!2963849 () Bool)

(assert (=> b!4751349 (=> (not res!2014863) (not e!2963849))))

(assert (=> b!4751349 e!2963849))

(declare-fun lt!1915927 () Unit!135894)

(declare-fun Unit!136036 () Unit!135894)

(assert (=> b!4751349 (= lt!1915927 Unit!136036)))

(declare-fun bm!332874 () Bool)

(assert (=> bm!332874 (= call!332881 (forall!11762 (ite c!811211 (toList!6116 (+!2382 lt!1915497 t!14174)) (toList!6116 lt!1915925)) (ite c!811211 lambda!222105 lambda!222107)))))

(assert (=> b!4751350 (= e!2963851 (+!2382 lt!1915497 t!14174))))

(declare-fun lt!1915923 () Unit!135894)

(assert (=> b!4751350 (= lt!1915923 call!332879)))

(declare-fun call!332880 () Bool)

(assert (=> b!4751350 call!332880))

(declare-fun lt!1915934 () Unit!135894)

(assert (=> b!4751350 (= lt!1915934 lt!1915923)))

(assert (=> b!4751350 call!332881))

(declare-fun lt!1915916 () Unit!135894)

(declare-fun Unit!136038 () Unit!135894)

(assert (=> b!4751350 (= lt!1915916 Unit!136038)))

(declare-fun b!4751351 () Bool)

(assert (=> b!4751351 (= e!2963850 (invariantList!1594 (toList!6116 lt!1915928)))))

(declare-fun bm!332875 () Bool)

(assert (=> bm!332875 (= call!332880 (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) (ite c!811211 lambda!222105 lambda!222107)))))

(declare-fun bm!332876 () Bool)

(assert (=> bm!332876 (= call!332879 (lemmaContainsAllItsOwnKeys!877 (+!2382 lt!1915497 t!14174)))))

(declare-fun b!4751352 () Bool)

(assert (=> b!4751352 (= e!2963849 call!332880)))

(declare-fun b!4751353 () Bool)

(declare-fun res!2014862 () Bool)

(assert (=> b!4751353 (=> (not res!2014862) (not e!2963850))))

(assert (=> b!4751353 (= res!2014862 (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222108))))

(assert (= (and d!1518628 c!811211) b!4751350))

(assert (= (and d!1518628 (not c!811211)) b!4751349))

(assert (= (and b!4751349 res!2014863) b!4751352))

(assert (= (or b!4751350 b!4751349) bm!332876))

(assert (= (or b!4751350 b!4751349) bm!332874))

(assert (= (or b!4751350 b!4751352) bm!332875))

(assert (= (and d!1518628 res!2014861) b!4751353))

(assert (= (and b!4751353 res!2014862) b!4751351))

(declare-fun m!5714123 () Bool)

(assert (=> d!1518628 m!5714123))

(assert (=> d!1518628 m!5713531))

(declare-fun m!5714125 () Bool)

(assert (=> bm!332874 m!5714125))

(assert (=> bm!332876 m!5713493))

(declare-fun m!5714127 () Bool)

(assert (=> bm!332876 m!5714127))

(declare-fun m!5714129 () Bool)

(assert (=> b!4751351 m!5714129))

(declare-fun m!5714131 () Bool)

(assert (=> b!4751349 m!5714131))

(declare-fun m!5714133 () Bool)

(assert (=> b!4751349 m!5714133))

(declare-fun m!5714135 () Bool)

(assert (=> b!4751349 m!5714135))

(declare-fun m!5714137 () Bool)

(assert (=> b!4751349 m!5714137))

(declare-fun m!5714139 () Bool)

(assert (=> b!4751349 m!5714139))

(assert (=> b!4751349 m!5713493))

(assert (=> b!4751349 m!5714133))

(declare-fun m!5714141 () Bool)

(assert (=> b!4751349 m!5714141))

(declare-fun m!5714143 () Bool)

(assert (=> b!4751349 m!5714143))

(assert (=> b!4751349 m!5714137))

(declare-fun m!5714145 () Bool)

(assert (=> b!4751349 m!5714145))

(declare-fun m!5714147 () Bool)

(assert (=> b!4751349 m!5714147))

(assert (=> b!4751349 m!5713493))

(declare-fun m!5714149 () Bool)

(assert (=> b!4751349 m!5714149))

(declare-fun m!5714151 () Bool)

(assert (=> b!4751349 m!5714151))

(assert (=> b!4751349 m!5714147))

(declare-fun m!5714153 () Bool)

(assert (=> bm!332875 m!5714153))

(declare-fun m!5714155 () Bool)

(assert (=> b!4751353 m!5714155))

(assert (=> b!4751207 d!1518628))

(declare-fun d!1518630 () Bool)

(declare-fun e!2963852 () Bool)

(assert (=> d!1518630 e!2963852))

(declare-fun res!2014864 () Bool)

(assert (=> d!1518630 (=> (not res!2014864) (not e!2963852))))

(declare-fun lt!1915937 () ListMap!5541)

(assert (=> d!1518630 (= res!2014864 (contains!16509 lt!1915937 (_1!30722 t!14174)))))

(declare-fun lt!1915938 () List!53210)

(assert (=> d!1518630 (= lt!1915937 (ListMap!5542 lt!1915938))))

(declare-fun lt!1915939 () Unit!135894)

(declare-fun lt!1915936 () Unit!135894)

(assert (=> d!1518630 (= lt!1915939 lt!1915936)))

(assert (=> d!1518630 (= (getValueByKey!2080 lt!1915938 (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174)))))

(assert (=> d!1518630 (= lt!1915936 (lemmaContainsTupThenGetReturnValue!1157 lt!1915938 (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1518630 (= lt!1915938 (insertNoDuplicatedKeys!665 (toList!6116 lt!1915497) (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1518630 (= (+!2382 lt!1915497 t!14174) lt!1915937)))

(declare-fun b!4751354 () Bool)

(declare-fun res!2014865 () Bool)

(assert (=> b!4751354 (=> (not res!2014865) (not e!2963852))))

(assert (=> b!4751354 (= res!2014865 (= (getValueByKey!2080 (toList!6116 lt!1915937) (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174))))))

(declare-fun b!4751355 () Bool)

(assert (=> b!4751355 (= e!2963852 (contains!16510 (toList!6116 lt!1915937) t!14174))))

(assert (= (and d!1518630 res!2014864) b!4751354))

(assert (= (and b!4751354 res!2014865) b!4751355))

(declare-fun m!5714157 () Bool)

(assert (=> d!1518630 m!5714157))

(declare-fun m!5714159 () Bool)

(assert (=> d!1518630 m!5714159))

(declare-fun m!5714161 () Bool)

(assert (=> d!1518630 m!5714161))

(declare-fun m!5714163 () Bool)

(assert (=> d!1518630 m!5714163))

(declare-fun m!5714165 () Bool)

(assert (=> b!4751354 m!5714165))

(declare-fun m!5714167 () Bool)

(assert (=> b!4751355 m!5714167))

(assert (=> b!4751207 d!1518630))

(declare-fun b!4751360 () Bool)

(declare-fun e!2963855 () Bool)

(declare-fun tp!1350192 () Bool)

(assert (=> b!4751360 (= e!2963855 (and tp_is_empty!31885 tp_is_empty!31887 tp!1350192))))

(assert (=> b!4751204 (= tp!1350185 e!2963855)))

(assert (= (and b!4751204 ((_ is Cons!53086) (t!360542 l!14304))) b!4751360))

(declare-fun tp!1350193 () Bool)

(declare-fun e!2963856 () Bool)

(declare-fun b!4751361 () Bool)

(assert (=> b!4751361 (= e!2963856 (and tp_is_empty!31885 tp_is_empty!31887 tp!1350193))))

(assert (=> b!4751205 (= tp!1350184 e!2963856)))

(assert (= (and b!4751205 ((_ is Cons!53086) (toList!6116 acc!1214))) b!4751361))

(check-sat (not b!4751317) (not bm!332868) (not b!4751296) (not b!4751341) (not d!1518582) (not d!1518554) (not bm!332862) (not b!4751361) (not b!4751308) (not bm!332861) (not bm!332846) (not b!4751353) (not d!1518614) (not b!4751306) (not b!4751360) (not d!1518630) (not b!4751349) (not b!4751342) (not d!1518556) (not b!4751351) (not b!4751271) (not d!1518600) (not b!4751304) (not d!1518622) (not d!1518628) (not b!4751312) (not b!4751267) (not bm!332844) (not b!4751328) (not b!4751315) (not b!4751319) (not d!1518558) (not bm!332859) (not b!4751348) (not b!4751290) (not bm!332863) (not bm!332870) (not b!4751343) (not bm!332860) (not d!1518626) (not b!4751217) (not d!1518618) (not b!4751339) (not bm!332875) (not d!1518604) (not b!4751354) (not d!1518590) (not bm!332873) (not d!1518594) (not b!4751327) (not d!1518598) (not bm!332855) (not bm!332845) (not bm!332869) (not b!4751292) (not d!1518624) (not bm!332872) (not b!4751269) tp_is_empty!31887 (not b!4751311) (not b!4751294) (not b!4751355) (not b!4751344) (not b!4751291) (not d!1518612) (not bm!332871) (not bm!332854) (not b!4751293) (not b!4751337) (not b!4751346) (not bm!332853) (not bm!332874) (not b!4751298) (not bm!332864) (not d!1518588) (not d!1518586) (not b!4751216) (not bm!332876) tp_is_empty!31885)
(check-sat)
(get-model)

(declare-fun d!1518632 () Bool)

(declare-fun res!2014870 () Bool)

(declare-fun e!2963861 () Bool)

(assert (=> d!1518632 (=> res!2014870 e!2963861)))

(assert (=> d!1518632 (= res!2014870 ((_ is Nil!53086) (toList!6116 lt!1915494)))))

(assert (=> d!1518632 (= (forall!11762 (toList!6116 lt!1915494) lambda!222088) e!2963861)))

(declare-fun b!4751366 () Bool)

(declare-fun e!2963862 () Bool)

(assert (=> b!4751366 (= e!2963861 e!2963862)))

(declare-fun res!2014871 () Bool)

(assert (=> b!4751366 (=> (not res!2014871) (not e!2963862))))

(declare-fun dynLambda!21900 (Int tuple2!54856) Bool)

(assert (=> b!4751366 (= res!2014871 (dynLambda!21900 lambda!222088 (h!59483 (toList!6116 lt!1915494))))))

(declare-fun b!4751367 () Bool)

(assert (=> b!4751367 (= e!2963862 (forall!11762 (t!360542 (toList!6116 lt!1915494)) lambda!222088))))

(assert (= (and d!1518632 (not res!2014870)) b!4751366))

(assert (= (and b!4751366 res!2014871) b!4751367))

(declare-fun b_lambda!183181 () Bool)

(assert (=> (not b_lambda!183181) (not b!4751366)))

(declare-fun m!5714169 () Bool)

(assert (=> b!4751366 m!5714169))

(declare-fun m!5714171 () Bool)

(assert (=> b!4751367 m!5714171))

(assert (=> b!4751308 d!1518632))

(declare-fun d!1518634 () Bool)

(declare-fun lt!1915942 () Bool)

(assert (=> d!1518634 (= lt!1915942 (select (content!9529 (toList!6116 lt!1915742)) t!14174))))

(declare-fun e!2963868 () Bool)

(assert (=> d!1518634 (= lt!1915942 e!2963868)))

(declare-fun res!2014877 () Bool)

(assert (=> d!1518634 (=> (not res!2014877) (not e!2963868))))

(assert (=> d!1518634 (= res!2014877 ((_ is Cons!53086) (toList!6116 lt!1915742)))))

(assert (=> d!1518634 (= (contains!16510 (toList!6116 lt!1915742) t!14174) lt!1915942)))

(declare-fun b!4751372 () Bool)

(declare-fun e!2963867 () Bool)

(assert (=> b!4751372 (= e!2963868 e!2963867)))

(declare-fun res!2014876 () Bool)

(assert (=> b!4751372 (=> res!2014876 e!2963867)))

(assert (=> b!4751372 (= res!2014876 (= (h!59483 (toList!6116 lt!1915742)) t!14174))))

(declare-fun b!4751373 () Bool)

(assert (=> b!4751373 (= e!2963867 (contains!16510 (t!360542 (toList!6116 lt!1915742)) t!14174))))

(assert (= (and d!1518634 res!2014877) b!4751372))

(assert (= (and b!4751372 (not res!2014876)) b!4751373))

(declare-fun m!5714173 () Bool)

(assert (=> d!1518634 m!5714173))

(declare-fun m!5714175 () Bool)

(assert (=> d!1518634 m!5714175))

(declare-fun m!5714177 () Bool)

(assert (=> b!4751373 m!5714177))

(assert (=> b!4751293 d!1518634))

(declare-fun b!4751392 () Bool)

(declare-datatypes ((List!53211 0))(
  ( (Nil!53087) (Cons!53087 (h!59484 K!14520) (t!360546 List!53211)) )
))
(declare-fun e!2963885 () List!53211)

(declare-fun getKeysList!1003 (List!53210) List!53211)

(assert (=> b!4751392 (= e!2963885 (getKeysList!1003 (toList!6116 lt!1915863)))))

(declare-fun b!4751393 () Bool)

(declare-fun e!2963883 () Unit!135894)

(declare-fun e!2963886 () Unit!135894)

(assert (=> b!4751393 (= e!2963883 e!2963886)))

(declare-fun c!811219 () Bool)

(declare-fun call!332884 () Bool)

(assert (=> b!4751393 (= c!811219 call!332884)))

(declare-fun b!4751394 () Bool)

(declare-fun e!2963881 () Bool)

(declare-fun contains!16512 (List!53211 K!14520) Bool)

(declare-fun keys!19162 (ListMap!5541) List!53211)

(assert (=> b!4751394 (= e!2963881 (not (contains!16512 (keys!19162 lt!1915863) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751395 () Bool)

(assert (=> b!4751395 (= e!2963885 (keys!19162 lt!1915863))))

(declare-fun b!4751396 () Bool)

(declare-fun Unit!136050 () Unit!135894)

(assert (=> b!4751396 (= e!2963886 Unit!136050)))

(declare-fun b!4751397 () Bool)

(declare-fun e!2963884 () Bool)

(declare-fun e!2963882 () Bool)

(assert (=> b!4751397 (= e!2963884 e!2963882)))

(declare-fun res!2014884 () Bool)

(assert (=> b!4751397 (=> (not res!2014884) (not e!2963882))))

(declare-fun isDefined!9756 (Option!12530) Bool)

(assert (=> b!4751397 (= res!2014884 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751398 () Bool)

(declare-fun lt!1915960 () Unit!135894)

(assert (=> b!4751398 (= e!2963883 lt!1915960)))

(declare-fun lt!1915963 () Unit!135894)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (List!53210 K!14520) Unit!135894)

(assert (=> b!4751398 (= lt!1915963 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751398 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1915962 () Unit!135894)

(assert (=> b!4751398 (= lt!1915962 lt!1915963)))

(declare-fun lemmaInListThenGetKeysListContains!998 (List!53210 K!14520) Unit!135894)

(assert (=> b!4751398 (= lt!1915960 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751398 call!332884))

(declare-fun b!4751399 () Bool)

(assert (=> b!4751399 (= e!2963882 (contains!16512 (keys!19162 lt!1915863) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518636 () Bool)

(assert (=> d!1518636 e!2963884))

(declare-fun res!2014885 () Bool)

(assert (=> d!1518636 (=> res!2014885 e!2963884)))

(assert (=> d!1518636 (= res!2014885 e!2963881)))

(declare-fun res!2014886 () Bool)

(assert (=> d!1518636 (=> (not res!2014886) (not e!2963881))))

(declare-fun lt!1915959 () Bool)

(assert (=> d!1518636 (= res!2014886 (not lt!1915959))))

(declare-fun lt!1915965 () Bool)

(assert (=> d!1518636 (= lt!1915959 lt!1915965)))

(declare-fun lt!1915961 () Unit!135894)

(assert (=> d!1518636 (= lt!1915961 e!2963883)))

(declare-fun c!811218 () Bool)

(assert (=> d!1518636 (= c!811218 lt!1915965)))

(declare-fun containsKey!3558 (List!53210 K!14520) Bool)

(assert (=> d!1518636 (= lt!1915965 (containsKey!3558 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304))))))

(assert (=> d!1518636 (= (contains!16509 lt!1915863 (_1!30722 (h!59483 l!14304))) lt!1915959)))

(declare-fun b!4751400 () Bool)

(assert (=> b!4751400 false))

(declare-fun lt!1915966 () Unit!135894)

(declare-fun lt!1915964 () Unit!135894)

(assert (=> b!4751400 (= lt!1915966 lt!1915964)))

(assert (=> b!4751400 (containsKey!3558 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304)))))

(declare-fun lemmaInGetKeysListThenContainsKey!1002 (List!53210 K!14520) Unit!135894)

(assert (=> b!4751400 (= lt!1915964 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304))))))

(declare-fun Unit!136051 () Unit!135894)

(assert (=> b!4751400 (= e!2963886 Unit!136051)))

(declare-fun bm!332879 () Bool)

(assert (=> bm!332879 (= call!332884 (contains!16512 e!2963885 (_1!30722 (h!59483 l!14304))))))

(declare-fun c!811220 () Bool)

(assert (=> bm!332879 (= c!811220 c!811218)))

(assert (= (and d!1518636 c!811218) b!4751398))

(assert (= (and d!1518636 (not c!811218)) b!4751393))

(assert (= (and b!4751393 c!811219) b!4751400))

(assert (= (and b!4751393 (not c!811219)) b!4751396))

(assert (= (or b!4751398 b!4751393) bm!332879))

(assert (= (and bm!332879 c!811220) b!4751392))

(assert (= (and bm!332879 (not c!811220)) b!4751395))

(assert (= (and d!1518636 res!2014886) b!4751394))

(assert (= (and d!1518636 (not res!2014885)) b!4751397))

(assert (= (and b!4751397 res!2014884) b!4751399))

(declare-fun m!5714179 () Bool)

(assert (=> b!4751392 m!5714179))

(declare-fun m!5714181 () Bool)

(assert (=> b!4751394 m!5714181))

(assert (=> b!4751394 m!5714181))

(declare-fun m!5714183 () Bool)

(assert (=> b!4751394 m!5714183))

(assert (=> b!4751399 m!5714181))

(assert (=> b!4751399 m!5714181))

(assert (=> b!4751399 m!5714183))

(declare-fun m!5714185 () Bool)

(assert (=> bm!332879 m!5714185))

(assert (=> b!4751397 m!5713993))

(assert (=> b!4751397 m!5713993))

(declare-fun m!5714187 () Bool)

(assert (=> b!4751397 m!5714187))

(declare-fun m!5714189 () Bool)

(assert (=> d!1518636 m!5714189))

(assert (=> b!4751400 m!5714189))

(declare-fun m!5714191 () Bool)

(assert (=> b!4751400 m!5714191))

(assert (=> b!4751395 m!5714181))

(declare-fun m!5714193 () Bool)

(assert (=> b!4751398 m!5714193))

(assert (=> b!4751398 m!5713993))

(assert (=> b!4751398 m!5713993))

(assert (=> b!4751398 m!5714187))

(declare-fun m!5714195 () Bool)

(assert (=> b!4751398 m!5714195))

(assert (=> d!1518612 d!1518636))

(declare-fun b!4751411 () Bool)

(declare-fun e!2963892 () Option!12530)

(assert (=> b!4751411 (= e!2963892 (getValueByKey!2080 (t!360542 lt!1915864) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518638 () Bool)

(declare-fun c!811225 () Bool)

(assert (=> d!1518638 (= c!811225 (and ((_ is Cons!53086) lt!1915864) (= (_1!30722 (h!59483 lt!1915864)) (_1!30722 (h!59483 l!14304)))))))

(declare-fun e!2963891 () Option!12530)

(assert (=> d!1518638 (= (getValueByKey!2080 lt!1915864 (_1!30722 (h!59483 l!14304))) e!2963891)))

(declare-fun b!4751410 () Bool)

(assert (=> b!4751410 (= e!2963891 e!2963892)))

(declare-fun c!811226 () Bool)

(assert (=> b!4751410 (= c!811226 (and ((_ is Cons!53086) lt!1915864) (not (= (_1!30722 (h!59483 lt!1915864)) (_1!30722 (h!59483 l!14304))))))))

(declare-fun b!4751409 () Bool)

(assert (=> b!4751409 (= e!2963891 (Some!12529 (_2!30722 (h!59483 lt!1915864))))))

(declare-fun b!4751412 () Bool)

(assert (=> b!4751412 (= e!2963892 None!12529)))

(assert (= (and d!1518638 c!811225) b!4751409))

(assert (= (and d!1518638 (not c!811225)) b!4751410))

(assert (= (and b!4751410 c!811226) b!4751411))

(assert (= (and b!4751410 (not c!811226)) b!4751412))

(declare-fun m!5714197 () Bool)

(assert (=> b!4751411 m!5714197))

(assert (=> d!1518612 d!1518638))

(declare-fun d!1518640 () Bool)

(assert (=> d!1518640 (= (getValueByKey!2080 lt!1915864 (_1!30722 (h!59483 l!14304))) (Some!12529 (_2!30722 (h!59483 l!14304))))))

(declare-fun lt!1915969 () Unit!135894)

(declare-fun choose!33823 (List!53210 K!14520 V!14766) Unit!135894)

(assert (=> d!1518640 (= lt!1915969 (choose!33823 lt!1915864 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(declare-fun e!2963895 () Bool)

(assert (=> d!1518640 e!2963895))

(declare-fun res!2014891 () Bool)

(assert (=> d!1518640 (=> (not res!2014891) (not e!2963895))))

(assert (=> d!1518640 (= res!2014891 (invariantList!1594 lt!1915864))))

(assert (=> d!1518640 (= (lemmaContainsTupThenGetReturnValue!1157 lt!1915864 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) lt!1915969)))

(declare-fun b!4751417 () Bool)

(declare-fun res!2014892 () Bool)

(assert (=> b!4751417 (=> (not res!2014892) (not e!2963895))))

(assert (=> b!4751417 (= res!2014892 (containsKey!3558 lt!1915864 (_1!30722 (h!59483 l!14304))))))

(declare-fun b!4751418 () Bool)

(assert (=> b!4751418 (= e!2963895 (contains!16510 lt!1915864 (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304)))))))

(assert (= (and d!1518640 res!2014891) b!4751417))

(assert (= (and b!4751417 res!2014892) b!4751418))

(assert (=> d!1518640 m!5713987))

(declare-fun m!5714199 () Bool)

(assert (=> d!1518640 m!5714199))

(declare-fun m!5714201 () Bool)

(assert (=> d!1518640 m!5714201))

(declare-fun m!5714203 () Bool)

(assert (=> b!4751417 m!5714203))

(declare-fun m!5714205 () Bool)

(assert (=> b!4751418 m!5714205))

(assert (=> d!1518612 d!1518640))

(declare-fun b!4751447 () Bool)

(declare-fun res!2014904 () Bool)

(declare-fun e!2963914 () Bool)

(assert (=> b!4751447 (=> (not res!2014904) (not e!2963914))))

(declare-fun lt!1915994 () List!53210)

(assert (=> b!4751447 (= res!2014904 (containsKey!3558 lt!1915994 (_1!30722 (h!59483 l!14304))))))

(declare-fun b!4751448 () Bool)

(declare-fun e!2963915 () List!53210)

(assert (=> b!4751448 (= e!2963915 Nil!53086)))

(declare-fun d!1518642 () Bool)

(assert (=> d!1518642 e!2963914))

(declare-fun res!2014903 () Bool)

(assert (=> d!1518642 (=> (not res!2014903) (not e!2963914))))

(assert (=> d!1518642 (= res!2014903 (invariantList!1594 lt!1915994))))

(declare-fun e!2963910 () List!53210)

(assert (=> d!1518642 (= lt!1915994 e!2963910)))

(declare-fun c!811238 () Bool)

(assert (=> d!1518642 (= c!811238 (and ((_ is Cons!53086) (toList!6116 acc!1214)) (= (_1!30722 (h!59483 (toList!6116 acc!1214))) (_1!30722 (h!59483 l!14304)))))))

(assert (=> d!1518642 (invariantList!1594 (toList!6116 acc!1214))))

(assert (=> d!1518642 (= (insertNoDuplicatedKeys!665 (toList!6116 acc!1214) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) lt!1915994)))

(declare-fun b!4751449 () Bool)

(assert (=> b!4751449 false))

(declare-fun lt!1915998 () Unit!135894)

(declare-fun lt!1915993 () Unit!135894)

(assert (=> b!4751449 (= lt!1915998 lt!1915993)))

(assert (=> b!4751449 (containsKey!3558 (t!360542 (toList!6116 acc!1214)) (_1!30722 (h!59483 (toList!6116 acc!1214))))))

(assert (=> b!4751449 (= lt!1915993 (lemmaInGetKeysListThenContainsKey!1002 (t!360542 (toList!6116 acc!1214)) (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun lt!1916000 () Unit!135894)

(declare-fun lt!1915992 () Unit!135894)

(assert (=> b!4751449 (= lt!1916000 lt!1915992)))

(declare-fun call!332893 () List!53211)

(assert (=> b!4751449 (contains!16512 call!332893 (_1!30722 (h!59483 (toList!6116 acc!1214))))))

(declare-fun lt!1915999 () List!53210)

(assert (=> b!4751449 (= lt!1915992 (lemmaInListThenGetKeysListContains!998 lt!1915999 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(assert (=> b!4751449 (= lt!1915999 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 acc!1214)) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(declare-fun e!2963911 () Unit!135894)

(declare-fun Unit!136052 () Unit!135894)

(assert (=> b!4751449 (= e!2963911 Unit!136052)))

(declare-fun b!4751450 () Bool)

(declare-fun e!2963912 () List!53210)

(declare-fun lt!1915997 () List!53210)

(assert (=> b!4751450 (= e!2963912 lt!1915997)))

(declare-fun call!332894 () List!53210)

(assert (=> b!4751450 (= lt!1915997 call!332894)))

(declare-fun c!811237 () Bool)

(assert (=> b!4751450 (= c!811237 (containsKey!3558 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 acc!1214)) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun lt!1916001 () Unit!135894)

(assert (=> b!4751450 (= lt!1916001 e!2963911)))

(declare-fun b!4751451 () Bool)

(declare-fun e!2963913 () List!53210)

(declare-fun call!332895 () List!53210)

(assert (=> b!4751451 (= e!2963913 call!332895)))

(declare-fun b!4751452 () Bool)

(assert (=> b!4751452 (= e!2963912 call!332894)))

(declare-fun b!4751453 () Bool)

(declare-fun c!811240 () Bool)

(assert (=> b!4751453 (= c!811240 ((_ is Cons!53086) (toList!6116 acc!1214)))))

(assert (=> b!4751453 (= e!2963913 e!2963912)))

(declare-fun bm!332888 () Bool)

(assert (=> bm!332888 (= call!332894 call!332895)))

(declare-fun c!811241 () Bool)

(assert (=> bm!332888 (= c!811241 c!811240)))

(declare-fun b!4751454 () Bool)

(declare-fun Unit!136053 () Unit!135894)

(assert (=> b!4751454 (= e!2963911 Unit!136053)))

(declare-fun b!4751455 () Bool)

(declare-fun content!9530 (List!53211) (InoxSet K!14520))

(assert (=> b!4751455 (= e!2963914 (= (content!9530 (getKeysList!1003 lt!1915994)) ((_ map or) (content!9530 (getKeysList!1003 (toList!6116 acc!1214))) (store ((as const (Array K!14520 Bool)) false) (_1!30722 (h!59483 l!14304)) true))))))

(declare-fun bm!332889 () Bool)

(declare-fun call!332896 () List!53210)

(assert (=> bm!332889 (= call!332895 call!332896)))

(declare-fun b!4751456 () Bool)

(declare-fun e!2963916 () Bool)

(assert (=> b!4751456 (= e!2963916 (not (containsKey!3558 (toList!6116 acc!1214) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751457 () Bool)

(assert (=> b!4751457 (= e!2963910 e!2963913)))

(declare-fun res!2014902 () Bool)

(assert (=> b!4751457 (= res!2014902 ((_ is Cons!53086) (toList!6116 acc!1214)))))

(assert (=> b!4751457 (=> (not res!2014902) (not e!2963916))))

(declare-fun c!811239 () Bool)

(assert (=> b!4751457 (= c!811239 e!2963916)))

(declare-fun bm!332890 () Bool)

(assert (=> bm!332890 (= call!332893 (getKeysList!1003 (ite c!811238 (toList!6116 acc!1214) lt!1915999)))))

(declare-fun b!4751458 () Bool)

(declare-fun res!2014901 () Bool)

(assert (=> b!4751458 (=> (not res!2014901) (not e!2963914))))

(assert (=> b!4751458 (= res!2014901 (contains!16510 lt!1915994 (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304)))))))

(declare-fun b!4751459 () Bool)

(assert (=> b!4751459 (= e!2963915 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 acc!1214)) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(declare-fun bm!332891 () Bool)

(declare-fun $colon$colon!1097 (List!53210 tuple2!54856) List!53210)

(assert (=> bm!332891 (= call!332896 ($colon$colon!1097 (ite c!811238 (t!360542 (toList!6116 acc!1214)) (ite c!811239 (toList!6116 acc!1214) e!2963915)) (ite (or c!811238 c!811239) (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) (ite c!811240 (h!59483 (toList!6116 acc!1214)) (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304)))))))))

(declare-fun b!4751460 () Bool)

(assert (=> b!4751460 (= e!2963910 call!332896)))

(declare-fun lt!1915995 () List!53211)

(assert (=> b!4751460 (= lt!1915995 call!332893)))

(declare-fun lt!1915996 () Unit!135894)

(declare-fun lemmaSubseqRefl!160 (List!53211) Unit!135894)

(assert (=> b!4751460 (= lt!1915996 (lemmaSubseqRefl!160 lt!1915995))))

(declare-fun subseq!676 (List!53211 List!53211) Bool)

(assert (=> b!4751460 (subseq!676 lt!1915995 lt!1915995)))

(declare-fun lt!1916002 () Unit!135894)

(assert (=> b!4751460 (= lt!1916002 lt!1915996)))

(assert (= (and d!1518642 c!811238) b!4751460))

(assert (= (and d!1518642 (not c!811238)) b!4751457))

(assert (= (and b!4751457 res!2014902) b!4751456))

(assert (= (and b!4751457 c!811239) b!4751451))

(assert (= (and b!4751457 (not c!811239)) b!4751453))

(assert (= (and b!4751453 c!811240) b!4751450))

(assert (= (and b!4751453 (not c!811240)) b!4751452))

(assert (= (and b!4751450 c!811237) b!4751449))

(assert (= (and b!4751450 (not c!811237)) b!4751454))

(assert (= (or b!4751450 b!4751452) bm!332888))

(assert (= (and bm!332888 c!811241) b!4751459))

(assert (= (and bm!332888 (not c!811241)) b!4751448))

(assert (= (or b!4751451 bm!332888) bm!332889))

(assert (= (or b!4751460 b!4751449) bm!332890))

(assert (= (or b!4751460 bm!332889) bm!332891))

(assert (= (and d!1518642 res!2014903) b!4751447))

(assert (= (and b!4751447 res!2014904) b!4751458))

(assert (= (and b!4751458 res!2014901) b!4751455))

(declare-fun m!5714207 () Bool)

(assert (=> d!1518642 m!5714207))

(assert (=> d!1518642 m!5713533))

(declare-fun m!5714209 () Bool)

(assert (=> b!4751449 m!5714209))

(declare-fun m!5714211 () Bool)

(assert (=> b!4751449 m!5714211))

(declare-fun m!5714213 () Bool)

(assert (=> b!4751449 m!5714213))

(declare-fun m!5714215 () Bool)

(assert (=> b!4751449 m!5714215))

(declare-fun m!5714217 () Bool)

(assert (=> b!4751449 m!5714217))

(declare-fun m!5714219 () Bool)

(assert (=> bm!332891 m!5714219))

(assert (=> b!4751459 m!5714217))

(declare-fun m!5714221 () Bool)

(assert (=> b!4751447 m!5714221))

(declare-fun m!5714223 () Bool)

(assert (=> b!4751460 m!5714223))

(declare-fun m!5714225 () Bool)

(assert (=> b!4751460 m!5714225))

(declare-fun m!5714227 () Bool)

(assert (=> b!4751455 m!5714227))

(declare-fun m!5714229 () Bool)

(assert (=> b!4751455 m!5714229))

(declare-fun m!5714231 () Bool)

(assert (=> b!4751455 m!5714231))

(declare-fun m!5714233 () Bool)

(assert (=> b!4751455 m!5714233))

(assert (=> b!4751455 m!5714229))

(assert (=> b!4751455 m!5714227))

(declare-fun m!5714235 () Bool)

(assert (=> b!4751455 m!5714235))

(declare-fun m!5714237 () Bool)

(assert (=> b!4751456 m!5714237))

(assert (=> b!4751450 m!5714217))

(assert (=> b!4751450 m!5714217))

(declare-fun m!5714239 () Bool)

(assert (=> b!4751450 m!5714239))

(declare-fun m!5714241 () Bool)

(assert (=> b!4751458 m!5714241))

(declare-fun m!5714243 () Bool)

(assert (=> bm!332890 m!5714243))

(assert (=> d!1518612 d!1518642))

(declare-fun d!1518644 () Bool)

(declare-fun res!2014905 () Bool)

(declare-fun e!2963917 () Bool)

(assert (=> d!1518644 (=> res!2014905 e!2963917)))

(assert (=> d!1518644 (= res!2014905 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1518644 (= (forall!11762 (toList!6116 acc!1214) (ite c!811210 lambda!222101 lambda!222103)) e!2963917)))

(declare-fun b!4751461 () Bool)

(declare-fun e!2963918 () Bool)

(assert (=> b!4751461 (= e!2963917 e!2963918)))

(declare-fun res!2014906 () Bool)

(assert (=> b!4751461 (=> (not res!2014906) (not e!2963918))))

(assert (=> b!4751461 (= res!2014906 (dynLambda!21900 (ite c!811210 lambda!222101 lambda!222103) (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4751462 () Bool)

(assert (=> b!4751462 (= e!2963918 (forall!11762 (t!360542 (toList!6116 acc!1214)) (ite c!811210 lambda!222101 lambda!222103)))))

(assert (= (and d!1518644 (not res!2014905)) b!4751461))

(assert (= (and b!4751461 res!2014906) b!4751462))

(declare-fun b_lambda!183183 () Bool)

(assert (=> (not b_lambda!183183) (not b!4751461)))

(declare-fun m!5714245 () Bool)

(assert (=> b!4751461 m!5714245))

(declare-fun m!5714247 () Bool)

(assert (=> b!4751462 m!5714247))

(assert (=> bm!332872 d!1518644))

(declare-fun d!1518646 () Bool)

(declare-fun res!2014907 () Bool)

(declare-fun e!2963919 () Bool)

(assert (=> d!1518646 (=> res!2014907 e!2963919)))

(assert (=> d!1518646 (= res!2014907 ((_ is Nil!53086) (ite c!811209 (toList!6116 acc!1214) (toList!6116 lt!1915883))))))

(assert (=> d!1518646 (= (forall!11762 (ite c!811209 (toList!6116 acc!1214) (toList!6116 lt!1915883)) (ite c!811209 lambda!222097 lambda!222099)) e!2963919)))

(declare-fun b!4751463 () Bool)

(declare-fun e!2963920 () Bool)

(assert (=> b!4751463 (= e!2963919 e!2963920)))

(declare-fun res!2014908 () Bool)

(assert (=> b!4751463 (=> (not res!2014908) (not e!2963920))))

(assert (=> b!4751463 (= res!2014908 (dynLambda!21900 (ite c!811209 lambda!222097 lambda!222099) (h!59483 (ite c!811209 (toList!6116 acc!1214) (toList!6116 lt!1915883)))))))

(declare-fun b!4751464 () Bool)

(assert (=> b!4751464 (= e!2963920 (forall!11762 (t!360542 (ite c!811209 (toList!6116 acc!1214) (toList!6116 lt!1915883))) (ite c!811209 lambda!222097 lambda!222099)))))

(assert (= (and d!1518646 (not res!2014907)) b!4751463))

(assert (= (and b!4751463 res!2014908) b!4751464))

(declare-fun b_lambda!183185 () Bool)

(assert (=> (not b_lambda!183185) (not b!4751463)))

(declare-fun m!5714249 () Bool)

(assert (=> b!4751463 m!5714249))

(declare-fun m!5714251 () Bool)

(assert (=> b!4751464 m!5714251))

(assert (=> bm!332868 d!1518646))

(declare-fun b!4751465 () Bool)

(declare-fun e!2963925 () List!53211)

(assert (=> b!4751465 (= e!2963925 (getKeysList!1003 (toList!6116 lt!1915937)))))

(declare-fun b!4751466 () Bool)

(declare-fun e!2963923 () Unit!135894)

(declare-fun e!2963926 () Unit!135894)

(assert (=> b!4751466 (= e!2963923 e!2963926)))

(declare-fun c!811243 () Bool)

(declare-fun call!332897 () Bool)

(assert (=> b!4751466 (= c!811243 call!332897)))

(declare-fun b!4751467 () Bool)

(declare-fun e!2963921 () Bool)

(assert (=> b!4751467 (= e!2963921 (not (contains!16512 (keys!19162 lt!1915937) (_1!30722 t!14174))))))

(declare-fun b!4751468 () Bool)

(assert (=> b!4751468 (= e!2963925 (keys!19162 lt!1915937))))

(declare-fun b!4751469 () Bool)

(declare-fun Unit!136054 () Unit!135894)

(assert (=> b!4751469 (= e!2963926 Unit!136054)))

(declare-fun b!4751470 () Bool)

(declare-fun e!2963924 () Bool)

(declare-fun e!2963922 () Bool)

(assert (=> b!4751470 (= e!2963924 e!2963922)))

(declare-fun res!2014909 () Bool)

(assert (=> b!4751470 (=> (not res!2014909) (not e!2963922))))

(assert (=> b!4751470 (= res!2014909 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915937) (_1!30722 t!14174))))))

(declare-fun b!4751471 () Bool)

(declare-fun lt!1916004 () Unit!135894)

(assert (=> b!4751471 (= e!2963923 lt!1916004)))

(declare-fun lt!1916007 () Unit!135894)

(assert (=> b!4751471 (= lt!1916007 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915937) (_1!30722 t!14174)))))

(assert (=> b!4751471 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915937) (_1!30722 t!14174)))))

(declare-fun lt!1916006 () Unit!135894)

(assert (=> b!4751471 (= lt!1916006 lt!1916007)))

(assert (=> b!4751471 (= lt!1916004 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915937) (_1!30722 t!14174)))))

(assert (=> b!4751471 call!332897))

(declare-fun b!4751472 () Bool)

(assert (=> b!4751472 (= e!2963922 (contains!16512 (keys!19162 lt!1915937) (_1!30722 t!14174)))))

(declare-fun d!1518648 () Bool)

(assert (=> d!1518648 e!2963924))

(declare-fun res!2014910 () Bool)

(assert (=> d!1518648 (=> res!2014910 e!2963924)))

(assert (=> d!1518648 (= res!2014910 e!2963921)))

(declare-fun res!2014911 () Bool)

(assert (=> d!1518648 (=> (not res!2014911) (not e!2963921))))

(declare-fun lt!1916003 () Bool)

(assert (=> d!1518648 (= res!2014911 (not lt!1916003))))

(declare-fun lt!1916009 () Bool)

(assert (=> d!1518648 (= lt!1916003 lt!1916009)))

(declare-fun lt!1916005 () Unit!135894)

(assert (=> d!1518648 (= lt!1916005 e!2963923)))

(declare-fun c!811242 () Bool)

(assert (=> d!1518648 (= c!811242 lt!1916009)))

(assert (=> d!1518648 (= lt!1916009 (containsKey!3558 (toList!6116 lt!1915937) (_1!30722 t!14174)))))

(assert (=> d!1518648 (= (contains!16509 lt!1915937 (_1!30722 t!14174)) lt!1916003)))

(declare-fun b!4751473 () Bool)

(assert (=> b!4751473 false))

(declare-fun lt!1916010 () Unit!135894)

(declare-fun lt!1916008 () Unit!135894)

(assert (=> b!4751473 (= lt!1916010 lt!1916008)))

(assert (=> b!4751473 (containsKey!3558 (toList!6116 lt!1915937) (_1!30722 t!14174))))

(assert (=> b!4751473 (= lt!1916008 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915937) (_1!30722 t!14174)))))

(declare-fun Unit!136055 () Unit!135894)

(assert (=> b!4751473 (= e!2963926 Unit!136055)))

(declare-fun bm!332892 () Bool)

(assert (=> bm!332892 (= call!332897 (contains!16512 e!2963925 (_1!30722 t!14174)))))

(declare-fun c!811244 () Bool)

(assert (=> bm!332892 (= c!811244 c!811242)))

(assert (= (and d!1518648 c!811242) b!4751471))

(assert (= (and d!1518648 (not c!811242)) b!4751466))

(assert (= (and b!4751466 c!811243) b!4751473))

(assert (= (and b!4751466 (not c!811243)) b!4751469))

(assert (= (or b!4751471 b!4751466) bm!332892))

(assert (= (and bm!332892 c!811244) b!4751465))

(assert (= (and bm!332892 (not c!811244)) b!4751468))

(assert (= (and d!1518648 res!2014911) b!4751467))

(assert (= (and d!1518648 (not res!2014910)) b!4751470))

(assert (= (and b!4751470 res!2014909) b!4751472))

(declare-fun m!5714253 () Bool)

(assert (=> b!4751465 m!5714253))

(declare-fun m!5714255 () Bool)

(assert (=> b!4751467 m!5714255))

(assert (=> b!4751467 m!5714255))

(declare-fun m!5714257 () Bool)

(assert (=> b!4751467 m!5714257))

(assert (=> b!4751472 m!5714255))

(assert (=> b!4751472 m!5714255))

(assert (=> b!4751472 m!5714257))

(declare-fun m!5714259 () Bool)

(assert (=> bm!332892 m!5714259))

(assert (=> b!4751470 m!5714165))

(assert (=> b!4751470 m!5714165))

(declare-fun m!5714261 () Bool)

(assert (=> b!4751470 m!5714261))

(declare-fun m!5714263 () Bool)

(assert (=> d!1518648 m!5714263))

(assert (=> b!4751473 m!5714263))

(declare-fun m!5714265 () Bool)

(assert (=> b!4751473 m!5714265))

(assert (=> b!4751468 m!5714255))

(declare-fun m!5714267 () Bool)

(assert (=> b!4751471 m!5714267))

(assert (=> b!4751471 m!5714165))

(assert (=> b!4751471 m!5714165))

(assert (=> b!4751471 m!5714261))

(declare-fun m!5714269 () Bool)

(assert (=> b!4751471 m!5714269))

(assert (=> d!1518630 d!1518648))

(declare-fun b!4751476 () Bool)

(declare-fun e!2963928 () Option!12530)

(assert (=> b!4751476 (= e!2963928 (getValueByKey!2080 (t!360542 lt!1915938) (_1!30722 t!14174)))))

(declare-fun d!1518650 () Bool)

(declare-fun c!811245 () Bool)

(assert (=> d!1518650 (= c!811245 (and ((_ is Cons!53086) lt!1915938) (= (_1!30722 (h!59483 lt!1915938)) (_1!30722 t!14174))))))

(declare-fun e!2963927 () Option!12530)

(assert (=> d!1518650 (= (getValueByKey!2080 lt!1915938 (_1!30722 t!14174)) e!2963927)))

(declare-fun b!4751475 () Bool)

(assert (=> b!4751475 (= e!2963927 e!2963928)))

(declare-fun c!811246 () Bool)

(assert (=> b!4751475 (= c!811246 (and ((_ is Cons!53086) lt!1915938) (not (= (_1!30722 (h!59483 lt!1915938)) (_1!30722 t!14174)))))))

(declare-fun b!4751474 () Bool)

(assert (=> b!4751474 (= e!2963927 (Some!12529 (_2!30722 (h!59483 lt!1915938))))))

(declare-fun b!4751477 () Bool)

(assert (=> b!4751477 (= e!2963928 None!12529)))

(assert (= (and d!1518650 c!811245) b!4751474))

(assert (= (and d!1518650 (not c!811245)) b!4751475))

(assert (= (and b!4751475 c!811246) b!4751476))

(assert (= (and b!4751475 (not c!811246)) b!4751477))

(declare-fun m!5714271 () Bool)

(assert (=> b!4751476 m!5714271))

(assert (=> d!1518630 d!1518650))

(declare-fun d!1518652 () Bool)

(assert (=> d!1518652 (= (getValueByKey!2080 lt!1915938 (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174)))))

(declare-fun lt!1916011 () Unit!135894)

(assert (=> d!1518652 (= lt!1916011 (choose!33823 lt!1915938 (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun e!2963929 () Bool)

(assert (=> d!1518652 e!2963929))

(declare-fun res!2014912 () Bool)

(assert (=> d!1518652 (=> (not res!2014912) (not e!2963929))))

(assert (=> d!1518652 (= res!2014912 (invariantList!1594 lt!1915938))))

(assert (=> d!1518652 (= (lemmaContainsTupThenGetReturnValue!1157 lt!1915938 (_1!30722 t!14174) (_2!30722 t!14174)) lt!1916011)))

(declare-fun b!4751478 () Bool)

(declare-fun res!2014913 () Bool)

(assert (=> b!4751478 (=> (not res!2014913) (not e!2963929))))

(assert (=> b!4751478 (= res!2014913 (containsKey!3558 lt!1915938 (_1!30722 t!14174)))))

(declare-fun b!4751479 () Bool)

(assert (=> b!4751479 (= e!2963929 (contains!16510 lt!1915938 (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))

(assert (= (and d!1518652 res!2014912) b!4751478))

(assert (= (and b!4751478 res!2014913) b!4751479))

(assert (=> d!1518652 m!5714159))

(declare-fun m!5714273 () Bool)

(assert (=> d!1518652 m!5714273))

(declare-fun m!5714275 () Bool)

(assert (=> d!1518652 m!5714275))

(declare-fun m!5714277 () Bool)

(assert (=> b!4751478 m!5714277))

(declare-fun m!5714279 () Bool)

(assert (=> b!4751479 m!5714279))

(assert (=> d!1518630 d!1518652))

(declare-fun b!4751480 () Bool)

(declare-fun res!2014917 () Bool)

(declare-fun e!2963934 () Bool)

(assert (=> b!4751480 (=> (not res!2014917) (not e!2963934))))

(declare-fun lt!1916014 () List!53210)

(assert (=> b!4751480 (= res!2014917 (containsKey!3558 lt!1916014 (_1!30722 t!14174)))))

(declare-fun b!4751481 () Bool)

(declare-fun e!2963935 () List!53210)

(assert (=> b!4751481 (= e!2963935 Nil!53086)))

(declare-fun d!1518654 () Bool)

(assert (=> d!1518654 e!2963934))

(declare-fun res!2014916 () Bool)

(assert (=> d!1518654 (=> (not res!2014916) (not e!2963934))))

(assert (=> d!1518654 (= res!2014916 (invariantList!1594 lt!1916014))))

(declare-fun e!2963930 () List!53210)

(assert (=> d!1518654 (= lt!1916014 e!2963930)))

(declare-fun c!811248 () Bool)

(assert (=> d!1518654 (= c!811248 (and ((_ is Cons!53086) (toList!6116 lt!1915497)) (= (_1!30722 (h!59483 (toList!6116 lt!1915497))) (_1!30722 t!14174))))))

(assert (=> d!1518654 (invariantList!1594 (toList!6116 lt!1915497))))

(assert (=> d!1518654 (= (insertNoDuplicatedKeys!665 (toList!6116 lt!1915497) (_1!30722 t!14174) (_2!30722 t!14174)) lt!1916014)))

(declare-fun b!4751482 () Bool)

(assert (=> b!4751482 false))

(declare-fun lt!1916018 () Unit!135894)

(declare-fun lt!1916013 () Unit!135894)

(assert (=> b!4751482 (= lt!1916018 lt!1916013)))

(assert (=> b!4751482 (containsKey!3558 (t!360542 (toList!6116 lt!1915497)) (_1!30722 (h!59483 (toList!6116 lt!1915497))))))

(assert (=> b!4751482 (= lt!1916013 (lemmaInGetKeysListThenContainsKey!1002 (t!360542 (toList!6116 lt!1915497)) (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(declare-fun lt!1916020 () Unit!135894)

(declare-fun lt!1916012 () Unit!135894)

(assert (=> b!4751482 (= lt!1916020 lt!1916012)))

(declare-fun call!332898 () List!53211)

(assert (=> b!4751482 (contains!16512 call!332898 (_1!30722 (h!59483 (toList!6116 lt!1915497))))))

(declare-fun lt!1916019 () List!53210)

(assert (=> b!4751482 (= lt!1916012 (lemmaInListThenGetKeysListContains!998 lt!1916019 (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(assert (=> b!4751482 (= lt!1916019 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915497)) (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun e!2963931 () Unit!135894)

(declare-fun Unit!136056 () Unit!135894)

(assert (=> b!4751482 (= e!2963931 Unit!136056)))

(declare-fun b!4751483 () Bool)

(declare-fun e!2963932 () List!53210)

(declare-fun lt!1916017 () List!53210)

(assert (=> b!4751483 (= e!2963932 lt!1916017)))

(declare-fun call!332899 () List!53210)

(assert (=> b!4751483 (= lt!1916017 call!332899)))

(declare-fun c!811247 () Bool)

(assert (=> b!4751483 (= c!811247 (containsKey!3558 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915497)) (_1!30722 t!14174) (_2!30722 t!14174)) (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(declare-fun lt!1916021 () Unit!135894)

(assert (=> b!4751483 (= lt!1916021 e!2963931)))

(declare-fun b!4751484 () Bool)

(declare-fun e!2963933 () List!53210)

(declare-fun call!332900 () List!53210)

(assert (=> b!4751484 (= e!2963933 call!332900)))

(declare-fun b!4751485 () Bool)

(assert (=> b!4751485 (= e!2963932 call!332899)))

(declare-fun b!4751486 () Bool)

(declare-fun c!811250 () Bool)

(assert (=> b!4751486 (= c!811250 ((_ is Cons!53086) (toList!6116 lt!1915497)))))

(assert (=> b!4751486 (= e!2963933 e!2963932)))

(declare-fun bm!332893 () Bool)

(assert (=> bm!332893 (= call!332899 call!332900)))

(declare-fun c!811251 () Bool)

(assert (=> bm!332893 (= c!811251 c!811250)))

(declare-fun b!4751487 () Bool)

(declare-fun Unit!136057 () Unit!135894)

(assert (=> b!4751487 (= e!2963931 Unit!136057)))

(declare-fun b!4751488 () Bool)

(assert (=> b!4751488 (= e!2963934 (= (content!9530 (getKeysList!1003 lt!1916014)) ((_ map or) (content!9530 (getKeysList!1003 (toList!6116 lt!1915497))) (store ((as const (Array K!14520 Bool)) false) (_1!30722 t!14174) true))))))

(declare-fun bm!332894 () Bool)

(declare-fun call!332901 () List!53210)

(assert (=> bm!332894 (= call!332900 call!332901)))

(declare-fun b!4751489 () Bool)

(declare-fun e!2963936 () Bool)

(assert (=> b!4751489 (= e!2963936 (not (containsKey!3558 (toList!6116 lt!1915497) (_1!30722 t!14174))))))

(declare-fun b!4751490 () Bool)

(assert (=> b!4751490 (= e!2963930 e!2963933)))

(declare-fun res!2014915 () Bool)

(assert (=> b!4751490 (= res!2014915 ((_ is Cons!53086) (toList!6116 lt!1915497)))))

(assert (=> b!4751490 (=> (not res!2014915) (not e!2963936))))

(declare-fun c!811249 () Bool)

(assert (=> b!4751490 (= c!811249 e!2963936)))

(declare-fun bm!332895 () Bool)

(assert (=> bm!332895 (= call!332898 (getKeysList!1003 (ite c!811248 (toList!6116 lt!1915497) lt!1916019)))))

(declare-fun b!4751491 () Bool)

(declare-fun res!2014914 () Bool)

(assert (=> b!4751491 (=> (not res!2014914) (not e!2963934))))

(assert (=> b!4751491 (= res!2014914 (contains!16510 lt!1916014 (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))

(declare-fun b!4751492 () Bool)

(assert (=> b!4751492 (= e!2963935 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915497)) (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun bm!332896 () Bool)

(assert (=> bm!332896 (= call!332901 ($colon$colon!1097 (ite c!811248 (t!360542 (toList!6116 lt!1915497)) (ite c!811249 (toList!6116 lt!1915497) e!2963935)) (ite (or c!811248 c!811249) (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174)) (ite c!811250 (h!59483 (toList!6116 lt!1915497)) (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))))

(declare-fun b!4751493 () Bool)

(assert (=> b!4751493 (= e!2963930 call!332901)))

(declare-fun lt!1916015 () List!53211)

(assert (=> b!4751493 (= lt!1916015 call!332898)))

(declare-fun lt!1916016 () Unit!135894)

(assert (=> b!4751493 (= lt!1916016 (lemmaSubseqRefl!160 lt!1916015))))

(assert (=> b!4751493 (subseq!676 lt!1916015 lt!1916015)))

(declare-fun lt!1916022 () Unit!135894)

(assert (=> b!4751493 (= lt!1916022 lt!1916016)))

(assert (= (and d!1518654 c!811248) b!4751493))

(assert (= (and d!1518654 (not c!811248)) b!4751490))

(assert (= (and b!4751490 res!2014915) b!4751489))

(assert (= (and b!4751490 c!811249) b!4751484))

(assert (= (and b!4751490 (not c!811249)) b!4751486))

(assert (= (and b!4751486 c!811250) b!4751483))

(assert (= (and b!4751486 (not c!811250)) b!4751485))

(assert (= (and b!4751483 c!811247) b!4751482))

(assert (= (and b!4751483 (not c!811247)) b!4751487))

(assert (= (or b!4751483 b!4751485) bm!332893))

(assert (= (and bm!332893 c!811251) b!4751492))

(assert (= (and bm!332893 (not c!811251)) b!4751481))

(assert (= (or b!4751484 bm!332893) bm!332894))

(assert (= (or b!4751493 b!4751482) bm!332895))

(assert (= (or b!4751493 bm!332894) bm!332896))

(assert (= (and d!1518654 res!2014916) b!4751480))

(assert (= (and b!4751480 res!2014917) b!4751491))

(assert (= (and b!4751491 res!2014914) b!4751488))

(declare-fun m!5714281 () Bool)

(assert (=> d!1518654 m!5714281))

(declare-fun m!5714283 () Bool)

(assert (=> d!1518654 m!5714283))

(declare-fun m!5714285 () Bool)

(assert (=> b!4751482 m!5714285))

(declare-fun m!5714287 () Bool)

(assert (=> b!4751482 m!5714287))

(declare-fun m!5714289 () Bool)

(assert (=> b!4751482 m!5714289))

(declare-fun m!5714291 () Bool)

(assert (=> b!4751482 m!5714291))

(declare-fun m!5714293 () Bool)

(assert (=> b!4751482 m!5714293))

(declare-fun m!5714295 () Bool)

(assert (=> bm!332896 m!5714295))

(assert (=> b!4751492 m!5714293))

(declare-fun m!5714297 () Bool)

(assert (=> b!4751480 m!5714297))

(declare-fun m!5714299 () Bool)

(assert (=> b!4751493 m!5714299))

(declare-fun m!5714301 () Bool)

(assert (=> b!4751493 m!5714301))

(declare-fun m!5714303 () Bool)

(assert (=> b!4751488 m!5714303))

(declare-fun m!5714305 () Bool)

(assert (=> b!4751488 m!5714305))

(declare-fun m!5714307 () Bool)

(assert (=> b!4751488 m!5714307))

(declare-fun m!5714309 () Bool)

(assert (=> b!4751488 m!5714309))

(assert (=> b!4751488 m!5714305))

(assert (=> b!4751488 m!5714303))

(declare-fun m!5714311 () Bool)

(assert (=> b!4751488 m!5714311))

(declare-fun m!5714313 () Bool)

(assert (=> b!4751489 m!5714313))

(assert (=> b!4751483 m!5714293))

(assert (=> b!4751483 m!5714293))

(declare-fun m!5714315 () Bool)

(assert (=> b!4751483 m!5714315))

(declare-fun m!5714317 () Bool)

(assert (=> b!4751491 m!5714317))

(declare-fun m!5714319 () Bool)

(assert (=> bm!332895 m!5714319))

(assert (=> d!1518630 d!1518654))

(declare-fun d!1518656 () Bool)

(declare-fun noDuplicatedKeys!402 (List!53210) Bool)

(assert (=> d!1518656 (= (invariantList!1594 (toList!6116 lt!1915886)) (noDuplicatedKeys!402 (toList!6116 lt!1915886)))))

(declare-fun bs!1141624 () Bool)

(assert (= bs!1141624 d!1518656))

(declare-fun m!5714321 () Bool)

(assert (=> bs!1141624 m!5714321))

(assert (=> b!4751339 d!1518656))

(declare-fun b!4751496 () Bool)

(declare-fun e!2963938 () Option!12530)

(assert (=> b!4751496 (= e!2963938 (getValueByKey!2080 (t!360542 (toList!6116 lt!1915738)) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518658 () Bool)

(declare-fun c!811252 () Bool)

(assert (=> d!1518658 (= c!811252 (and ((_ is Cons!53086) (toList!6116 lt!1915738)) (= (_1!30722 (h!59483 (toList!6116 lt!1915738))) (_1!30722 (h!59483 l!14304)))))))

(declare-fun e!2963937 () Option!12530)

(assert (=> d!1518658 (= (getValueByKey!2080 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304))) e!2963937)))

(declare-fun b!4751495 () Bool)

(assert (=> b!4751495 (= e!2963937 e!2963938)))

(declare-fun c!811253 () Bool)

(assert (=> b!4751495 (= c!811253 (and ((_ is Cons!53086) (toList!6116 lt!1915738)) (not (= (_1!30722 (h!59483 (toList!6116 lt!1915738))) (_1!30722 (h!59483 l!14304))))))))

(declare-fun b!4751494 () Bool)

(assert (=> b!4751494 (= e!2963937 (Some!12529 (_2!30722 (h!59483 (toList!6116 lt!1915738)))))))

(declare-fun b!4751497 () Bool)

(assert (=> b!4751497 (= e!2963938 None!12529)))

(assert (= (and d!1518658 c!811252) b!4751494))

(assert (= (and d!1518658 (not c!811252)) b!4751495))

(assert (= (and b!4751495 c!811253) b!4751496))

(assert (= (and b!4751495 (not c!811253)) b!4751497))

(declare-fun m!5714323 () Bool)

(assert (=> b!4751496 m!5714323))

(assert (=> b!4751290 d!1518658))

(declare-fun d!1518660 () Bool)

(declare-fun res!2014918 () Bool)

(declare-fun e!2963939 () Bool)

(assert (=> d!1518660 (=> res!2014918 e!2963939)))

(assert (=> d!1518660 (= res!2014918 ((_ is Nil!53086) (ite c!811207 (toList!6116 lt!1915497) (toList!6116 lt!1915830))))))

(assert (=> d!1518660 (= (forall!11762 (ite c!811207 (toList!6116 lt!1915497) (toList!6116 lt!1915830)) (ite c!811207 lambda!222089 lambda!222092)) e!2963939)))

(declare-fun b!4751498 () Bool)

(declare-fun e!2963940 () Bool)

(assert (=> b!4751498 (= e!2963939 e!2963940)))

(declare-fun res!2014919 () Bool)

(assert (=> b!4751498 (=> (not res!2014919) (not e!2963940))))

(assert (=> b!4751498 (= res!2014919 (dynLambda!21900 (ite c!811207 lambda!222089 lambda!222092) (h!59483 (ite c!811207 (toList!6116 lt!1915497) (toList!6116 lt!1915830)))))))

(declare-fun b!4751499 () Bool)

(assert (=> b!4751499 (= e!2963940 (forall!11762 (t!360542 (ite c!811207 (toList!6116 lt!1915497) (toList!6116 lt!1915830))) (ite c!811207 lambda!222089 lambda!222092)))))

(assert (= (and d!1518660 (not res!2014918)) b!4751498))

(assert (= (and b!4751498 res!2014919) b!4751499))

(declare-fun b_lambda!183187 () Bool)

(assert (=> (not b_lambda!183187) (not b!4751498)))

(declare-fun m!5714325 () Bool)

(assert (=> b!4751498 m!5714325))

(declare-fun m!5714327 () Bool)

(assert (=> b!4751499 m!5714327))

(assert (=> bm!332862 d!1518660))

(declare-fun d!1518662 () Bool)

(declare-fun res!2014920 () Bool)

(declare-fun e!2963941 () Bool)

(assert (=> d!1518662 (=> res!2014920 e!2963941)))

(assert (=> d!1518662 (= res!2014920 ((_ is Nil!53086) (ite c!811206 (toList!6116 lt!1915494) (toList!6116 lt!1915797))))))

(assert (=> d!1518662 (= (forall!11762 (ite c!811206 (toList!6116 lt!1915494) (toList!6116 lt!1915797)) (ite c!811206 lambda!222084 lambda!222086)) e!2963941)))

(declare-fun b!4751500 () Bool)

(declare-fun e!2963942 () Bool)

(assert (=> b!4751500 (= e!2963941 e!2963942)))

(declare-fun res!2014921 () Bool)

(assert (=> b!4751500 (=> (not res!2014921) (not e!2963942))))

(assert (=> b!4751500 (= res!2014921 (dynLambda!21900 (ite c!811206 lambda!222084 lambda!222086) (h!59483 (ite c!811206 (toList!6116 lt!1915494) (toList!6116 lt!1915797)))))))

(declare-fun b!4751501 () Bool)

(assert (=> b!4751501 (= e!2963942 (forall!11762 (t!360542 (ite c!811206 (toList!6116 lt!1915494) (toList!6116 lt!1915797))) (ite c!811206 lambda!222084 lambda!222086)))))

(assert (= (and d!1518662 (not res!2014920)) b!4751500))

(assert (= (and b!4751500 res!2014921) b!4751501))

(declare-fun b_lambda!183189 () Bool)

(assert (=> (not b_lambda!183189) (not b!4751500)))

(declare-fun m!5714329 () Bool)

(assert (=> b!4751500 m!5714329))

(declare-fun m!5714331 () Bool)

(assert (=> b!4751501 m!5714331))

(assert (=> bm!332859 d!1518662))

(declare-fun d!1518664 () Bool)

(declare-fun res!2014922 () Bool)

(declare-fun e!2963943 () Bool)

(assert (=> d!1518664 (=> res!2014922 e!2963943)))

(assert (=> d!1518664 (= res!2014922 (not ((_ is Cons!53086) (t!360542 lt!1915493))))))

(assert (=> d!1518664 (= (noDuplicateKeys!2148 (t!360542 lt!1915493)) e!2963943)))

(declare-fun b!4751502 () Bool)

(declare-fun e!2963944 () Bool)

(assert (=> b!4751502 (= e!2963943 e!2963944)))

(declare-fun res!2014923 () Bool)

(assert (=> b!4751502 (=> (not res!2014923) (not e!2963944))))

(assert (=> b!4751502 (= res!2014923 (not (containsKey!3557 (t!360542 (t!360542 lt!1915493)) (_1!30722 (h!59483 (t!360542 lt!1915493))))))))

(declare-fun b!4751503 () Bool)

(assert (=> b!4751503 (= e!2963944 (noDuplicateKeys!2148 (t!360542 (t!360542 lt!1915493))))))

(assert (= (and d!1518664 (not res!2014922)) b!4751502))

(assert (= (and b!4751502 res!2014923) b!4751503))

(declare-fun m!5714333 () Bool)

(assert (=> b!4751502 m!5714333))

(declare-fun m!5714335 () Bool)

(assert (=> b!4751503 m!5714335))

(assert (=> b!4751343 d!1518664))

(declare-fun d!1518666 () Bool)

(assert (=> d!1518666 (= (invariantList!1594 (toList!6116 lt!1915800)) (noDuplicatedKeys!402 (toList!6116 lt!1915800)))))

(declare-fun bs!1141625 () Bool)

(assert (= bs!1141625 d!1518666))

(declare-fun m!5714337 () Bool)

(assert (=> bs!1141625 m!5714337))

(assert (=> b!4751306 d!1518666))

(declare-fun bs!1141626 () Bool)

(declare-fun d!1518668 () Bool)

(assert (= bs!1141626 (and d!1518668 b!4751304)))

(declare-fun lambda!222111 () Int)

(assert (=> bs!1141626 (= lambda!222111 lambda!222085)))

(declare-fun bs!1141627 () Bool)

(assert (= bs!1141627 (and d!1518668 d!1518558)))

(assert (=> bs!1141627 (= (= lt!1915494 lt!1915675) (= lambda!222111 lambda!222069))))

(declare-fun bs!1141628 () Bool)

(assert (= bs!1141628 (and d!1518668 d!1518594)))

(assert (=> bs!1141628 (= (= lt!1915494 lt!1915800) (= lambda!222111 lambda!222088))))

(declare-fun bs!1141629 () Bool)

(assert (= bs!1141629 (and d!1518668 b!4751315)))

(assert (=> bs!1141629 (= (= lt!1915494 lt!1915497) (= lambda!222111 lambda!222091))))

(declare-fun bs!1141630 () Bool)

(assert (= bs!1141630 (and d!1518668 b!4751294)))

(assert (=> bs!1141630 (= (= lt!1915494 lt!1915754) (= lambda!222111 lambda!222079))))

(declare-fun bs!1141631 () Bool)

(assert (= bs!1141631 (and d!1518668 b!4751344)))

(assert (=> bs!1141631 (= (= lt!1915494 lt!1915903) (= lambda!222111 lambda!222103))))

(declare-fun bs!1141632 () Bool)

(assert (= bs!1141632 (and d!1518668 b!4751305)))

(assert (=> bs!1141632 (= lambda!222111 lambda!222084)))

(assert (=> bs!1141630 (= (= lt!1915494 lt!1915497) (= lambda!222111 lambda!222078))))

(declare-fun bs!1141633 () Bool)

(assert (= bs!1141633 (and d!1518668 b!4751345)))

(assert (=> bs!1141633 (= (= lt!1915494 acc!1214) (= lambda!222111 lambda!222101))))

(declare-fun bs!1141634 () Bool)

(assert (= bs!1141634 (and d!1518668 d!1518618)))

(assert (=> bs!1141634 (= (= lt!1915494 lt!1915886) (= lambda!222111 lambda!222100))))

(assert (=> bs!1141626 (= (= lt!1915494 lt!1915796) (= lambda!222111 lambda!222086))))

(declare-fun bs!1141635 () Bool)

(assert (= bs!1141635 (and d!1518668 b!4751295)))

(assert (=> bs!1141635 (= (= lt!1915494 lt!1915497) (= lambda!222111 lambda!222077))))

(declare-fun bs!1141636 () Bool)

(assert (= bs!1141636 (and d!1518668 b!4751349)))

(assert (=> bs!1141636 (= (= lt!1915494 (+!2382 lt!1915497 t!14174)) (= lambda!222111 lambda!222106))))

(declare-fun bs!1141637 () Bool)

(assert (= bs!1141637 (and d!1518668 b!4751337)))

(assert (=> bs!1141637 (= (= lt!1915494 lt!1915882) (= lambda!222111 lambda!222099))))

(declare-fun bs!1141638 () Bool)

(assert (= bs!1141638 (and d!1518668 d!1518624)))

(assert (=> bs!1141638 (= (= lt!1915494 lt!1915907) (= lambda!222111 lambda!222104))))

(declare-fun bs!1141639 () Bool)

(assert (= bs!1141639 (and d!1518668 b!4751338)))

(assert (=> bs!1141639 (= (= lt!1915494 acc!1214) (= lambda!222111 lambda!222097))))

(declare-fun bs!1141640 () Bool)

(assert (= bs!1141640 (and d!1518668 b!4751350)))

(assert (=> bs!1141640 (= (= lt!1915494 (+!2382 lt!1915497 t!14174)) (= lambda!222111 lambda!222105))))

(declare-fun bs!1141641 () Bool)

(assert (= bs!1141641 (and d!1518668 b!4751267)))

(assert (=> bs!1141641 (= (= lt!1915494 lt!1915671) (= lambda!222111 lambda!222067))))

(declare-fun bs!1141642 () Bool)

(assert (= bs!1141642 (and d!1518668 b!4751268)))

(assert (=> bs!1141642 (= (= lt!1915494 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222111 lambda!222065))))

(assert (=> bs!1141636 (= (= lt!1915494 lt!1915924) (= lambda!222111 lambda!222107))))

(assert (=> bs!1141629 (= (= lt!1915494 lt!1915829) (= lambda!222111 lambda!222092))))

(declare-fun bs!1141643 () Bool)

(assert (= bs!1141643 (and d!1518668 d!1518628)))

(assert (=> bs!1141643 (= (= lt!1915494 lt!1915928) (= lambda!222111 lambda!222108))))

(declare-fun bs!1141644 () Bool)

(assert (= bs!1141644 (and d!1518668 d!1518590)))

(assert (=> bs!1141644 (= (= lt!1915494 lt!1915758) (= lambda!222111 lambda!222081))))

(declare-fun bs!1141645 () Bool)

(assert (= bs!1141645 (and d!1518668 b!4751316)))

(assert (=> bs!1141645 (= (= lt!1915494 lt!1915497) (= lambda!222111 lambda!222089))))

(assert (=> bs!1141641 (= (= lt!1915494 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222111 lambda!222066))))

(assert (=> bs!1141637 (= (= lt!1915494 acc!1214) (= lambda!222111 lambda!222098))))

(declare-fun bs!1141646 () Bool)

(assert (= bs!1141646 (and d!1518668 d!1518604)))

(assert (=> bs!1141646 (= (= lt!1915494 lt!1915833) (= lambda!222111 lambda!222094))))

(assert (=> bs!1141631 (= (= lt!1915494 acc!1214) (= lambda!222111 lambda!222102))))

(assert (=> d!1518668 true))

(assert (=> d!1518668 (forall!11762 (toList!6116 lt!1915494) lambda!222111)))

(declare-fun lt!1916025 () Unit!135894)

(declare-fun choose!33824 (ListMap!5541) Unit!135894)

(assert (=> d!1518668 (= lt!1916025 (choose!33824 lt!1915494))))

(assert (=> d!1518668 (= (lemmaContainsAllItsOwnKeys!877 lt!1915494) lt!1916025)))

(declare-fun bs!1141647 () Bool)

(assert (= bs!1141647 d!1518668))

(declare-fun m!5714339 () Bool)

(assert (=> bs!1141647 m!5714339))

(declare-fun m!5714341 () Bool)

(assert (=> bs!1141647 m!5714341))

(assert (=> bm!332861 d!1518668))

(declare-fun d!1518670 () Bool)

(declare-fun res!2014924 () Bool)

(declare-fun e!2963945 () Bool)

(assert (=> d!1518670 (=> res!2014924 e!2963945)))

(assert (=> d!1518670 (= res!2014924 ((_ is Nil!53086) (Cons!53086 t!14174 (t!360542 l!14304))))))

(assert (=> d!1518670 (= (forall!11762 (Cons!53086 t!14174 (t!360542 l!14304)) lambda!222081) e!2963945)))

(declare-fun b!4751504 () Bool)

(declare-fun e!2963946 () Bool)

(assert (=> b!4751504 (= e!2963945 e!2963946)))

(declare-fun res!2014925 () Bool)

(assert (=> b!4751504 (=> (not res!2014925) (not e!2963946))))

(assert (=> b!4751504 (= res!2014925 (dynLambda!21900 lambda!222081 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(declare-fun b!4751505 () Bool)

(assert (=> b!4751505 (= e!2963946 (forall!11762 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) lambda!222081))))

(assert (= (and d!1518670 (not res!2014924)) b!4751504))

(assert (= (and b!4751504 res!2014925) b!4751505))

(declare-fun b_lambda!183191 () Bool)

(assert (=> (not b_lambda!183191) (not b!4751504)))

(declare-fun m!5714343 () Bool)

(assert (=> b!4751504 m!5714343))

(declare-fun m!5714345 () Bool)

(assert (=> b!4751505 m!5714345))

(assert (=> d!1518590 d!1518670))

(declare-fun d!1518672 () Bool)

(declare-fun res!2014926 () Bool)

(declare-fun e!2963947 () Bool)

(assert (=> d!1518672 (=> res!2014926 e!2963947)))

(assert (=> d!1518672 (= res!2014926 (not ((_ is Cons!53086) (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (=> d!1518672 (= (noDuplicateKeys!2148 (Cons!53086 t!14174 (t!360542 l!14304))) e!2963947)))

(declare-fun b!4751506 () Bool)

(declare-fun e!2963948 () Bool)

(assert (=> b!4751506 (= e!2963947 e!2963948)))

(declare-fun res!2014927 () Bool)

(assert (=> b!4751506 (=> (not res!2014927) (not e!2963948))))

(assert (=> b!4751506 (= res!2014927 (not (containsKey!3557 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun b!4751507 () Bool)

(assert (=> b!4751507 (= e!2963948 (noDuplicateKeys!2148 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (= (and d!1518672 (not res!2014926)) b!4751506))

(assert (= (and b!4751506 res!2014927) b!4751507))

(declare-fun m!5714347 () Bool)

(assert (=> b!4751506 m!5714347))

(declare-fun m!5714349 () Bool)

(assert (=> b!4751507 m!5714349))

(assert (=> d!1518590 d!1518672))

(declare-fun d!1518674 () Bool)

(assert (=> d!1518674 (dynLambda!21900 lambda!222103 (h!59483 l!14304))))

(declare-fun lt!1916028 () Unit!135894)

(declare-fun choose!33825 (List!53210 Int tuple2!54856) Unit!135894)

(assert (=> d!1518674 (= lt!1916028 (choose!33825 (toList!6116 lt!1915904) lambda!222103 (h!59483 l!14304)))))

(declare-fun e!2963951 () Bool)

(assert (=> d!1518674 e!2963951))

(declare-fun res!2014930 () Bool)

(assert (=> d!1518674 (=> (not res!2014930) (not e!2963951))))

(assert (=> d!1518674 (= res!2014930 (forall!11762 (toList!6116 lt!1915904) lambda!222103))))

(assert (=> d!1518674 (= (forallContained!3788 (toList!6116 lt!1915904) lambda!222103 (h!59483 l!14304)) lt!1916028)))

(declare-fun b!4751510 () Bool)

(assert (=> b!4751510 (= e!2963951 (contains!16510 (toList!6116 lt!1915904) (h!59483 l!14304)))))

(assert (= (and d!1518674 res!2014930) b!4751510))

(declare-fun b_lambda!183193 () Bool)

(assert (=> (not b_lambda!183193) (not d!1518674)))

(declare-fun m!5714351 () Bool)

(assert (=> d!1518674 m!5714351))

(declare-fun m!5714353 () Bool)

(assert (=> d!1518674 m!5714353))

(assert (=> d!1518674 m!5714109))

(declare-fun m!5714355 () Bool)

(assert (=> b!4751510 m!5714355))

(assert (=> b!4751344 d!1518674))

(declare-fun bs!1141648 () Bool)

(declare-fun d!1518676 () Bool)

(assert (= bs!1141648 (and d!1518676 b!4751304)))

(declare-fun lambda!222116 () Int)

(assert (=> bs!1141648 (= (= lt!1915903 lt!1915494) (= lambda!222116 lambda!222085))))

(declare-fun bs!1141649 () Bool)

(assert (= bs!1141649 (and d!1518676 d!1518558)))

(assert (=> bs!1141649 (= (= lt!1915903 lt!1915675) (= lambda!222116 lambda!222069))))

(declare-fun bs!1141650 () Bool)

(assert (= bs!1141650 (and d!1518676 d!1518594)))

(assert (=> bs!1141650 (= (= lt!1915903 lt!1915800) (= lambda!222116 lambda!222088))))

(declare-fun bs!1141651 () Bool)

(assert (= bs!1141651 (and d!1518676 b!4751315)))

(assert (=> bs!1141651 (= (= lt!1915903 lt!1915497) (= lambda!222116 lambda!222091))))

(declare-fun bs!1141652 () Bool)

(assert (= bs!1141652 (and d!1518676 b!4751294)))

(assert (=> bs!1141652 (= (= lt!1915903 lt!1915754) (= lambda!222116 lambda!222079))))

(declare-fun bs!1141653 () Bool)

(assert (= bs!1141653 (and d!1518676 b!4751344)))

(assert (=> bs!1141653 (= lambda!222116 lambda!222103)))

(declare-fun bs!1141654 () Bool)

(assert (= bs!1141654 (and d!1518676 b!4751305)))

(assert (=> bs!1141654 (= (= lt!1915903 lt!1915494) (= lambda!222116 lambda!222084))))

(assert (=> bs!1141652 (= (= lt!1915903 lt!1915497) (= lambda!222116 lambda!222078))))

(declare-fun bs!1141655 () Bool)

(assert (= bs!1141655 (and d!1518676 b!4751345)))

(assert (=> bs!1141655 (= (= lt!1915903 acc!1214) (= lambda!222116 lambda!222101))))

(assert (=> bs!1141648 (= (= lt!1915903 lt!1915796) (= lambda!222116 lambda!222086))))

(declare-fun bs!1141656 () Bool)

(assert (= bs!1141656 (and d!1518676 b!4751295)))

(assert (=> bs!1141656 (= (= lt!1915903 lt!1915497) (= lambda!222116 lambda!222077))))

(declare-fun bs!1141657 () Bool)

(assert (= bs!1141657 (and d!1518676 b!4751349)))

(assert (=> bs!1141657 (= (= lt!1915903 (+!2382 lt!1915497 t!14174)) (= lambda!222116 lambda!222106))))

(declare-fun bs!1141658 () Bool)

(assert (= bs!1141658 (and d!1518676 b!4751337)))

(assert (=> bs!1141658 (= (= lt!1915903 lt!1915882) (= lambda!222116 lambda!222099))))

(declare-fun bs!1141659 () Bool)

(assert (= bs!1141659 (and d!1518676 d!1518624)))

(assert (=> bs!1141659 (= (= lt!1915903 lt!1915907) (= lambda!222116 lambda!222104))))

(declare-fun bs!1141660 () Bool)

(assert (= bs!1141660 (and d!1518676 b!4751338)))

(assert (=> bs!1141660 (= (= lt!1915903 acc!1214) (= lambda!222116 lambda!222097))))

(declare-fun bs!1141661 () Bool)

(assert (= bs!1141661 (and d!1518676 b!4751350)))

(assert (=> bs!1141661 (= (= lt!1915903 (+!2382 lt!1915497 t!14174)) (= lambda!222116 lambda!222105))))

(declare-fun bs!1141662 () Bool)

(assert (= bs!1141662 (and d!1518676 b!4751267)))

(assert (=> bs!1141662 (= (= lt!1915903 lt!1915671) (= lambda!222116 lambda!222067))))

(declare-fun bs!1141663 () Bool)

(assert (= bs!1141663 (and d!1518676 b!4751268)))

(assert (=> bs!1141663 (= (= lt!1915903 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222116 lambda!222065))))

(assert (=> bs!1141657 (= (= lt!1915903 lt!1915924) (= lambda!222116 lambda!222107))))

(assert (=> bs!1141651 (= (= lt!1915903 lt!1915829) (= lambda!222116 lambda!222092))))

(declare-fun bs!1141664 () Bool)

(assert (= bs!1141664 (and d!1518676 d!1518628)))

(assert (=> bs!1141664 (= (= lt!1915903 lt!1915928) (= lambda!222116 lambda!222108))))

(declare-fun bs!1141665 () Bool)

(assert (= bs!1141665 (and d!1518676 d!1518590)))

(assert (=> bs!1141665 (= (= lt!1915903 lt!1915758) (= lambda!222116 lambda!222081))))

(declare-fun bs!1141666 () Bool)

(assert (= bs!1141666 (and d!1518676 b!4751316)))

(assert (=> bs!1141666 (= (= lt!1915903 lt!1915497) (= lambda!222116 lambda!222089))))

(assert (=> bs!1141662 (= (= lt!1915903 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222116 lambda!222066))))

(assert (=> bs!1141658 (= (= lt!1915903 acc!1214) (= lambda!222116 lambda!222098))))

(declare-fun bs!1141667 () Bool)

(assert (= bs!1141667 (and d!1518676 d!1518668)))

(assert (=> bs!1141667 (= (= lt!1915903 lt!1915494) (= lambda!222116 lambda!222111))))

(declare-fun bs!1141668 () Bool)

(assert (= bs!1141668 (and d!1518676 d!1518618)))

(assert (=> bs!1141668 (= (= lt!1915903 lt!1915886) (= lambda!222116 lambda!222100))))

(declare-fun bs!1141669 () Bool)

(assert (= bs!1141669 (and d!1518676 d!1518604)))

(assert (=> bs!1141669 (= (= lt!1915903 lt!1915833) (= lambda!222116 lambda!222094))))

(assert (=> bs!1141653 (= (= lt!1915903 acc!1214) (= lambda!222116 lambda!222102))))

(assert (=> d!1518676 true))

(assert (=> d!1518676 (forall!11762 (toList!6116 acc!1214) lambda!222116)))

(declare-fun lt!1916031 () Unit!135894)

(declare-fun choose!33826 (ListMap!5541 ListMap!5541 K!14520 V!14766) Unit!135894)

(assert (=> d!1518676 (= lt!1916031 (choose!33826 acc!1214 lt!1915903 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(assert (=> d!1518676 (forall!11762 (toList!6116 (+!2382 acc!1214 (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))) lambda!222116)))

(assert (=> d!1518676 (= (addForallContainsKeyThenBeforeAdding!876 acc!1214 lt!1915903 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) lt!1916031)))

(declare-fun bs!1141670 () Bool)

(assert (= bs!1141670 d!1518676))

(declare-fun m!5714357 () Bool)

(assert (=> bs!1141670 m!5714357))

(declare-fun m!5714359 () Bool)

(assert (=> bs!1141670 m!5714359))

(declare-fun m!5714361 () Bool)

(assert (=> bs!1141670 m!5714361))

(declare-fun m!5714363 () Bool)

(assert (=> bs!1141670 m!5714363))

(assert (=> b!4751344 d!1518676))

(declare-fun d!1518678 () Bool)

(declare-fun res!2014931 () Bool)

(declare-fun e!2963952 () Bool)

(assert (=> d!1518678 (=> res!2014931 e!2963952)))

(assert (=> d!1518678 (= res!2014931 ((_ is Nil!53086) (toList!6116 lt!1915904)))))

(assert (=> d!1518678 (= (forall!11762 (toList!6116 lt!1915904) lambda!222103) e!2963952)))

(declare-fun b!4751512 () Bool)

(declare-fun e!2963953 () Bool)

(assert (=> b!4751512 (= e!2963952 e!2963953)))

(declare-fun res!2014932 () Bool)

(assert (=> b!4751512 (=> (not res!2014932) (not e!2963953))))

(assert (=> b!4751512 (= res!2014932 (dynLambda!21900 lambda!222103 (h!59483 (toList!6116 lt!1915904))))))

(declare-fun b!4751513 () Bool)

(assert (=> b!4751513 (= e!2963953 (forall!11762 (t!360542 (toList!6116 lt!1915904)) lambda!222103))))

(assert (= (and d!1518678 (not res!2014931)) b!4751512))

(assert (= (and b!4751512 res!2014932) b!4751513))

(declare-fun b_lambda!183195 () Bool)

(assert (=> (not b_lambda!183195) (not b!4751512)))

(declare-fun m!5714365 () Bool)

(assert (=> b!4751512 m!5714365))

(declare-fun m!5714367 () Bool)

(assert (=> b!4751513 m!5714367))

(assert (=> b!4751344 d!1518678))

(declare-fun d!1518680 () Bool)

(declare-fun res!2014933 () Bool)

(declare-fun e!2963954 () Bool)

(assert (=> d!1518680 (=> res!2014933 e!2963954)))

(assert (=> d!1518680 (= res!2014933 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1518680 (= (forall!11762 (toList!6116 acc!1214) lambda!222103) e!2963954)))

(declare-fun b!4751514 () Bool)

(declare-fun e!2963955 () Bool)

(assert (=> b!4751514 (= e!2963954 e!2963955)))

(declare-fun res!2014934 () Bool)

(assert (=> b!4751514 (=> (not res!2014934) (not e!2963955))))

(assert (=> b!4751514 (= res!2014934 (dynLambda!21900 lambda!222103 (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4751515 () Bool)

(assert (=> b!4751515 (= e!2963955 (forall!11762 (t!360542 (toList!6116 acc!1214)) lambda!222103))))

(assert (= (and d!1518680 (not res!2014933)) b!4751514))

(assert (= (and b!4751514 res!2014934) b!4751515))

(declare-fun b_lambda!183197 () Bool)

(assert (=> (not b_lambda!183197) (not b!4751514)))

(declare-fun m!5714369 () Bool)

(assert (=> b!4751514 m!5714369))

(declare-fun m!5714371 () Bool)

(assert (=> b!4751515 m!5714371))

(assert (=> b!4751344 d!1518680))

(declare-fun b!4751516 () Bool)

(declare-fun e!2963960 () List!53211)

(assert (=> b!4751516 (= e!2963960 (getKeysList!1003 (toList!6116 lt!1915904)))))

(declare-fun b!4751517 () Bool)

(declare-fun e!2963958 () Unit!135894)

(declare-fun e!2963961 () Unit!135894)

(assert (=> b!4751517 (= e!2963958 e!2963961)))

(declare-fun c!811255 () Bool)

(declare-fun call!332902 () Bool)

(assert (=> b!4751517 (= c!811255 call!332902)))

(declare-fun b!4751518 () Bool)

(declare-fun e!2963956 () Bool)

(assert (=> b!4751518 (= e!2963956 (not (contains!16512 (keys!19162 lt!1915904) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751519 () Bool)

(assert (=> b!4751519 (= e!2963960 (keys!19162 lt!1915904))))

(declare-fun b!4751520 () Bool)

(declare-fun Unit!136058 () Unit!135894)

(assert (=> b!4751520 (= e!2963961 Unit!136058)))

(declare-fun b!4751521 () Bool)

(declare-fun e!2963959 () Bool)

(declare-fun e!2963957 () Bool)

(assert (=> b!4751521 (= e!2963959 e!2963957)))

(declare-fun res!2014935 () Bool)

(assert (=> b!4751521 (=> (not res!2014935) (not e!2963957))))

(assert (=> b!4751521 (= res!2014935 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915904) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751522 () Bool)

(declare-fun lt!1916033 () Unit!135894)

(assert (=> b!4751522 (= e!2963958 lt!1916033)))

(declare-fun lt!1916036 () Unit!135894)

(assert (=> b!4751522 (= lt!1916036 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915904) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751522 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915904) (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1916035 () Unit!135894)

(assert (=> b!4751522 (= lt!1916035 lt!1916036)))

(assert (=> b!4751522 (= lt!1916033 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915904) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751522 call!332902))

(declare-fun b!4751523 () Bool)

(assert (=> b!4751523 (= e!2963957 (contains!16512 (keys!19162 lt!1915904) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518682 () Bool)

(assert (=> d!1518682 e!2963959))

(declare-fun res!2014936 () Bool)

(assert (=> d!1518682 (=> res!2014936 e!2963959)))

(assert (=> d!1518682 (= res!2014936 e!2963956)))

(declare-fun res!2014937 () Bool)

(assert (=> d!1518682 (=> (not res!2014937) (not e!2963956))))

(declare-fun lt!1916032 () Bool)

(assert (=> d!1518682 (= res!2014937 (not lt!1916032))))

(declare-fun lt!1916038 () Bool)

(assert (=> d!1518682 (= lt!1916032 lt!1916038)))

(declare-fun lt!1916034 () Unit!135894)

(assert (=> d!1518682 (= lt!1916034 e!2963958)))

(declare-fun c!811254 () Bool)

(assert (=> d!1518682 (= c!811254 lt!1916038)))

(assert (=> d!1518682 (= lt!1916038 (containsKey!3558 (toList!6116 lt!1915904) (_1!30722 (h!59483 l!14304))))))

(assert (=> d!1518682 (= (contains!16509 lt!1915904 (_1!30722 (h!59483 l!14304))) lt!1916032)))

(declare-fun b!4751524 () Bool)

(assert (=> b!4751524 false))

(declare-fun lt!1916039 () Unit!135894)

(declare-fun lt!1916037 () Unit!135894)

(assert (=> b!4751524 (= lt!1916039 lt!1916037)))

(assert (=> b!4751524 (containsKey!3558 (toList!6116 lt!1915904) (_1!30722 (h!59483 l!14304)))))

(assert (=> b!4751524 (= lt!1916037 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915904) (_1!30722 (h!59483 l!14304))))))

(declare-fun Unit!136059 () Unit!135894)

(assert (=> b!4751524 (= e!2963961 Unit!136059)))

(declare-fun bm!332897 () Bool)

(assert (=> bm!332897 (= call!332902 (contains!16512 e!2963960 (_1!30722 (h!59483 l!14304))))))

(declare-fun c!811256 () Bool)

(assert (=> bm!332897 (= c!811256 c!811254)))

(assert (= (and d!1518682 c!811254) b!4751522))

(assert (= (and d!1518682 (not c!811254)) b!4751517))

(assert (= (and b!4751517 c!811255) b!4751524))

(assert (= (and b!4751517 (not c!811255)) b!4751520))

(assert (= (or b!4751522 b!4751517) bm!332897))

(assert (= (and bm!332897 c!811256) b!4751516))

(assert (= (and bm!332897 (not c!811256)) b!4751519))

(assert (= (and d!1518682 res!2014937) b!4751518))

(assert (= (and d!1518682 (not res!2014936)) b!4751521))

(assert (= (and b!4751521 res!2014935) b!4751523))

(declare-fun m!5714373 () Bool)

(assert (=> b!4751516 m!5714373))

(declare-fun m!5714375 () Bool)

(assert (=> b!4751518 m!5714375))

(assert (=> b!4751518 m!5714375))

(declare-fun m!5714377 () Bool)

(assert (=> b!4751518 m!5714377))

(assert (=> b!4751523 m!5714375))

(assert (=> b!4751523 m!5714375))

(assert (=> b!4751523 m!5714377))

(declare-fun m!5714379 () Bool)

(assert (=> bm!332897 m!5714379))

(declare-fun m!5714381 () Bool)

(assert (=> b!4751521 m!5714381))

(assert (=> b!4751521 m!5714381))

(declare-fun m!5714383 () Bool)

(assert (=> b!4751521 m!5714383))

(declare-fun m!5714385 () Bool)

(assert (=> d!1518682 m!5714385))

(assert (=> b!4751524 m!5714385))

(declare-fun m!5714387 () Bool)

(assert (=> b!4751524 m!5714387))

(assert (=> b!4751519 m!5714375))

(declare-fun m!5714389 () Bool)

(assert (=> b!4751522 m!5714389))

(assert (=> b!4751522 m!5714381))

(assert (=> b!4751522 m!5714381))

(assert (=> b!4751522 m!5714383))

(declare-fun m!5714391 () Bool)

(assert (=> b!4751522 m!5714391))

(assert (=> b!4751344 d!1518682))

(declare-fun b!4751525 () Bool)

(declare-fun e!2963966 () List!53211)

(assert (=> b!4751525 (= e!2963966 (getKeysList!1003 (toList!6116 lt!1915903)))))

(declare-fun b!4751526 () Bool)

(declare-fun e!2963964 () Unit!135894)

(declare-fun e!2963967 () Unit!135894)

(assert (=> b!4751526 (= e!2963964 e!2963967)))

(declare-fun c!811258 () Bool)

(declare-fun call!332903 () Bool)

(assert (=> b!4751526 (= c!811258 call!332903)))

(declare-fun b!4751527 () Bool)

(declare-fun e!2963962 () Bool)

(assert (=> b!4751527 (= e!2963962 (not (contains!16512 (keys!19162 lt!1915903) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751528 () Bool)

(assert (=> b!4751528 (= e!2963966 (keys!19162 lt!1915903))))

(declare-fun b!4751529 () Bool)

(declare-fun Unit!136060 () Unit!135894)

(assert (=> b!4751529 (= e!2963967 Unit!136060)))

(declare-fun b!4751530 () Bool)

(declare-fun e!2963965 () Bool)

(declare-fun e!2963963 () Bool)

(assert (=> b!4751530 (= e!2963965 e!2963963)))

(declare-fun res!2014938 () Bool)

(assert (=> b!4751530 (=> (not res!2014938) (not e!2963963))))

(assert (=> b!4751530 (= res!2014938 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915903) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751531 () Bool)

(declare-fun lt!1916041 () Unit!135894)

(assert (=> b!4751531 (= e!2963964 lt!1916041)))

(declare-fun lt!1916044 () Unit!135894)

(assert (=> b!4751531 (= lt!1916044 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915903) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751531 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915903) (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1916043 () Unit!135894)

(assert (=> b!4751531 (= lt!1916043 lt!1916044)))

(assert (=> b!4751531 (= lt!1916041 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915903) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751531 call!332903))

(declare-fun b!4751532 () Bool)

(assert (=> b!4751532 (= e!2963963 (contains!16512 (keys!19162 lt!1915903) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518684 () Bool)

(assert (=> d!1518684 e!2963965))

(declare-fun res!2014939 () Bool)

(assert (=> d!1518684 (=> res!2014939 e!2963965)))

(assert (=> d!1518684 (= res!2014939 e!2963962)))

(declare-fun res!2014940 () Bool)

(assert (=> d!1518684 (=> (not res!2014940) (not e!2963962))))

(declare-fun lt!1916040 () Bool)

(assert (=> d!1518684 (= res!2014940 (not lt!1916040))))

(declare-fun lt!1916046 () Bool)

(assert (=> d!1518684 (= lt!1916040 lt!1916046)))

(declare-fun lt!1916042 () Unit!135894)

(assert (=> d!1518684 (= lt!1916042 e!2963964)))

(declare-fun c!811257 () Bool)

(assert (=> d!1518684 (= c!811257 lt!1916046)))

(assert (=> d!1518684 (= lt!1916046 (containsKey!3558 (toList!6116 lt!1915903) (_1!30722 (h!59483 l!14304))))))

(assert (=> d!1518684 (= (contains!16509 lt!1915903 (_1!30722 (h!59483 l!14304))) lt!1916040)))

(declare-fun b!4751533 () Bool)

(assert (=> b!4751533 false))

(declare-fun lt!1916047 () Unit!135894)

(declare-fun lt!1916045 () Unit!135894)

(assert (=> b!4751533 (= lt!1916047 lt!1916045)))

(assert (=> b!4751533 (containsKey!3558 (toList!6116 lt!1915903) (_1!30722 (h!59483 l!14304)))))

(assert (=> b!4751533 (= lt!1916045 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915903) (_1!30722 (h!59483 l!14304))))))

(declare-fun Unit!136061 () Unit!135894)

(assert (=> b!4751533 (= e!2963967 Unit!136061)))

(declare-fun bm!332898 () Bool)

(assert (=> bm!332898 (= call!332903 (contains!16512 e!2963966 (_1!30722 (h!59483 l!14304))))))

(declare-fun c!811259 () Bool)

(assert (=> bm!332898 (= c!811259 c!811257)))

(assert (= (and d!1518684 c!811257) b!4751531))

(assert (= (and d!1518684 (not c!811257)) b!4751526))

(assert (= (and b!4751526 c!811258) b!4751533))

(assert (= (and b!4751526 (not c!811258)) b!4751529))

(assert (= (or b!4751531 b!4751526) bm!332898))

(assert (= (and bm!332898 c!811259) b!4751525))

(assert (= (and bm!332898 (not c!811259)) b!4751528))

(assert (= (and d!1518684 res!2014940) b!4751527))

(assert (= (and d!1518684 (not res!2014939)) b!4751530))

(assert (= (and b!4751530 res!2014938) b!4751532))

(declare-fun m!5714393 () Bool)

(assert (=> b!4751525 m!5714393))

(declare-fun m!5714395 () Bool)

(assert (=> b!4751527 m!5714395))

(assert (=> b!4751527 m!5714395))

(declare-fun m!5714397 () Bool)

(assert (=> b!4751527 m!5714397))

(assert (=> b!4751532 m!5714395))

(assert (=> b!4751532 m!5714395))

(assert (=> b!4751532 m!5714397))

(declare-fun m!5714399 () Bool)

(assert (=> bm!332898 m!5714399))

(declare-fun m!5714401 () Bool)

(assert (=> b!4751530 m!5714401))

(assert (=> b!4751530 m!5714401))

(declare-fun m!5714403 () Bool)

(assert (=> b!4751530 m!5714403))

(declare-fun m!5714405 () Bool)

(assert (=> d!1518684 m!5714405))

(assert (=> b!4751533 m!5714405))

(declare-fun m!5714407 () Bool)

(assert (=> b!4751533 m!5714407))

(assert (=> b!4751528 m!5714395))

(declare-fun m!5714409 () Bool)

(assert (=> b!4751531 m!5714409))

(assert (=> b!4751531 m!5714401))

(assert (=> b!4751531 m!5714401))

(assert (=> b!4751531 m!5714403))

(declare-fun m!5714411 () Bool)

(assert (=> b!4751531 m!5714411))

(assert (=> b!4751344 d!1518684))

(declare-fun bs!1141671 () Bool)

(declare-fun b!4751535 () Bool)

(assert (= bs!1141671 (and b!4751535 b!4751304)))

(declare-fun lambda!222117 () Int)

(assert (=> bs!1141671 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915494) (= lambda!222117 lambda!222085))))

(declare-fun bs!1141672 () Bool)

(assert (= bs!1141672 (and b!4751535 d!1518558)))

(assert (=> bs!1141672 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915675) (= lambda!222117 lambda!222069))))

(declare-fun bs!1141673 () Bool)

(assert (= bs!1141673 (and b!4751535 d!1518594)))

(assert (=> bs!1141673 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915800) (= lambda!222117 lambda!222088))))

(declare-fun bs!1141674 () Bool)

(assert (= bs!1141674 (and b!4751535 b!4751315)))

(assert (=> bs!1141674 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222117 lambda!222091))))

(declare-fun bs!1141675 () Bool)

(assert (= bs!1141675 (and b!4751535 b!4751294)))

(assert (=> bs!1141675 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915754) (= lambda!222117 lambda!222079))))

(declare-fun bs!1141676 () Bool)

(assert (= bs!1141676 (and b!4751535 b!4751344)))

(assert (=> bs!1141676 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915903) (= lambda!222117 lambda!222103))))

(declare-fun bs!1141677 () Bool)

(assert (= bs!1141677 (and b!4751535 b!4751305)))

(assert (=> bs!1141677 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915494) (= lambda!222117 lambda!222084))))

(assert (=> bs!1141675 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222117 lambda!222078))))

(declare-fun bs!1141678 () Bool)

(assert (= bs!1141678 (and b!4751535 b!4751345)))

(assert (=> bs!1141678 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222117 lambda!222101))))

(assert (=> bs!1141671 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915796) (= lambda!222117 lambda!222086))))

(declare-fun bs!1141679 () Bool)

(assert (= bs!1141679 (and b!4751535 b!4751295)))

(assert (=> bs!1141679 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222117 lambda!222077))))

(declare-fun bs!1141680 () Bool)

(assert (= bs!1141680 (and b!4751535 b!4751349)))

(assert (=> bs!1141680 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915497 t!14174)) (= lambda!222117 lambda!222106))))

(declare-fun bs!1141681 () Bool)

(assert (= bs!1141681 (and b!4751535 b!4751337)))

(assert (=> bs!1141681 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915882) (= lambda!222117 lambda!222099))))

(declare-fun bs!1141682 () Bool)

(assert (= bs!1141682 (and b!4751535 d!1518624)))

(assert (=> bs!1141682 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915907) (= lambda!222117 lambda!222104))))

(declare-fun bs!1141683 () Bool)

(assert (= bs!1141683 (and b!4751535 d!1518676)))

(assert (=> bs!1141683 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915903) (= lambda!222117 lambda!222116))))

(declare-fun bs!1141684 () Bool)

(assert (= bs!1141684 (and b!4751535 b!4751338)))

(assert (=> bs!1141684 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222117 lambda!222097))))

(declare-fun bs!1141685 () Bool)

(assert (= bs!1141685 (and b!4751535 b!4751350)))

(assert (=> bs!1141685 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915497 t!14174)) (= lambda!222117 lambda!222105))))

(declare-fun bs!1141686 () Bool)

(assert (= bs!1141686 (and b!4751535 b!4751267)))

(assert (=> bs!1141686 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915671) (= lambda!222117 lambda!222067))))

(declare-fun bs!1141687 () Bool)

(assert (= bs!1141687 (and b!4751535 b!4751268)))

(assert (=> bs!1141687 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222117 lambda!222065))))

(assert (=> bs!1141680 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915924) (= lambda!222117 lambda!222107))))

(assert (=> bs!1141674 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915829) (= lambda!222117 lambda!222092))))

(declare-fun bs!1141688 () Bool)

(assert (= bs!1141688 (and b!4751535 d!1518628)))

(assert (=> bs!1141688 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915928) (= lambda!222117 lambda!222108))))

(declare-fun bs!1141689 () Bool)

(assert (= bs!1141689 (and b!4751535 d!1518590)))

(assert (=> bs!1141689 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915758) (= lambda!222117 lambda!222081))))

(declare-fun bs!1141690 () Bool)

(assert (= bs!1141690 (and b!4751535 b!4751316)))

(assert (=> bs!1141690 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222117 lambda!222089))))

(assert (=> bs!1141686 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222117 lambda!222066))))

(assert (=> bs!1141681 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222117 lambda!222098))))

(declare-fun bs!1141691 () Bool)

(assert (= bs!1141691 (and b!4751535 d!1518668)))

(assert (=> bs!1141691 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915494) (= lambda!222117 lambda!222111))))

(declare-fun bs!1141692 () Bool)

(assert (= bs!1141692 (and b!4751535 d!1518618)))

(assert (=> bs!1141692 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915886) (= lambda!222117 lambda!222100))))

(declare-fun bs!1141693 () Bool)

(assert (= bs!1141693 (and b!4751535 d!1518604)))

(assert (=> bs!1141693 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915833) (= lambda!222117 lambda!222094))))

(assert (=> bs!1141676 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222117 lambda!222102))))

(assert (=> b!4751535 true))

(declare-fun bs!1141694 () Bool)

(declare-fun b!4751534 () Bool)

(assert (= bs!1141694 (and b!4751534 b!4751304)))

(declare-fun lambda!222118 () Int)

(assert (=> bs!1141694 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915494) (= lambda!222118 lambda!222085))))

(declare-fun bs!1141695 () Bool)

(assert (= bs!1141695 (and b!4751534 d!1518558)))

(assert (=> bs!1141695 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915675) (= lambda!222118 lambda!222069))))

(declare-fun bs!1141696 () Bool)

(assert (= bs!1141696 (and b!4751534 d!1518594)))

(assert (=> bs!1141696 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915800) (= lambda!222118 lambda!222088))))

(declare-fun bs!1141697 () Bool)

(assert (= bs!1141697 (and b!4751534 b!4751315)))

(assert (=> bs!1141697 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222118 lambda!222091))))

(declare-fun bs!1141698 () Bool)

(assert (= bs!1141698 (and b!4751534 b!4751294)))

(assert (=> bs!1141698 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915754) (= lambda!222118 lambda!222079))))

(declare-fun bs!1141699 () Bool)

(assert (= bs!1141699 (and b!4751534 b!4751344)))

(assert (=> bs!1141699 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915903) (= lambda!222118 lambda!222103))))

(declare-fun bs!1141700 () Bool)

(assert (= bs!1141700 (and b!4751534 b!4751305)))

(assert (=> bs!1141700 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915494) (= lambda!222118 lambda!222084))))

(assert (=> bs!1141698 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222118 lambda!222078))))

(declare-fun bs!1141701 () Bool)

(assert (= bs!1141701 (and b!4751534 b!4751345)))

(assert (=> bs!1141701 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222118 lambda!222101))))

(assert (=> bs!1141694 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915796) (= lambda!222118 lambda!222086))))

(declare-fun bs!1141702 () Bool)

(assert (= bs!1141702 (and b!4751534 b!4751295)))

(assert (=> bs!1141702 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222118 lambda!222077))))

(declare-fun bs!1141703 () Bool)

(assert (= bs!1141703 (and b!4751534 b!4751349)))

(assert (=> bs!1141703 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915497 t!14174)) (= lambda!222118 lambda!222106))))

(declare-fun bs!1141704 () Bool)

(assert (= bs!1141704 (and b!4751534 b!4751337)))

(assert (=> bs!1141704 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915882) (= lambda!222118 lambda!222099))))

(declare-fun bs!1141705 () Bool)

(assert (= bs!1141705 (and b!4751534 d!1518624)))

(assert (=> bs!1141705 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915907) (= lambda!222118 lambda!222104))))

(declare-fun bs!1141706 () Bool)

(assert (= bs!1141706 (and b!4751534 d!1518676)))

(assert (=> bs!1141706 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915903) (= lambda!222118 lambda!222116))))

(declare-fun bs!1141707 () Bool)

(assert (= bs!1141707 (and b!4751534 b!4751338)))

(assert (=> bs!1141707 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222118 lambda!222097))))

(declare-fun bs!1141708 () Bool)

(assert (= bs!1141708 (and b!4751534 b!4751350)))

(assert (=> bs!1141708 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915497 t!14174)) (= lambda!222118 lambda!222105))))

(declare-fun bs!1141709 () Bool)

(assert (= bs!1141709 (and b!4751534 b!4751267)))

(assert (=> bs!1141709 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915671) (= lambda!222118 lambda!222067))))

(declare-fun bs!1141710 () Bool)

(assert (= bs!1141710 (and b!4751534 b!4751268)))

(assert (=> bs!1141710 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222118 lambda!222065))))

(declare-fun bs!1141711 () Bool)

(assert (= bs!1141711 (and b!4751534 b!4751535)))

(assert (=> bs!1141711 (= lambda!222118 lambda!222117)))

(assert (=> bs!1141703 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915924) (= lambda!222118 lambda!222107))))

(assert (=> bs!1141697 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915829) (= lambda!222118 lambda!222092))))

(declare-fun bs!1141712 () Bool)

(assert (= bs!1141712 (and b!4751534 d!1518628)))

(assert (=> bs!1141712 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915928) (= lambda!222118 lambda!222108))))

(declare-fun bs!1141713 () Bool)

(assert (= bs!1141713 (and b!4751534 d!1518590)))

(assert (=> bs!1141713 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915758) (= lambda!222118 lambda!222081))))

(declare-fun bs!1141714 () Bool)

(assert (= bs!1141714 (and b!4751534 b!4751316)))

(assert (=> bs!1141714 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915497) (= lambda!222118 lambda!222089))))

(assert (=> bs!1141709 (= (= (+!2382 acc!1214 (h!59483 l!14304)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222118 lambda!222066))))

(assert (=> bs!1141704 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222118 lambda!222098))))

(declare-fun bs!1141715 () Bool)

(assert (= bs!1141715 (and b!4751534 d!1518668)))

(assert (=> bs!1141715 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915494) (= lambda!222118 lambda!222111))))

(declare-fun bs!1141716 () Bool)

(assert (= bs!1141716 (and b!4751534 d!1518618)))

(assert (=> bs!1141716 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915886) (= lambda!222118 lambda!222100))))

(declare-fun bs!1141717 () Bool)

(assert (= bs!1141717 (and b!4751534 d!1518604)))

(assert (=> bs!1141717 (= (= (+!2382 acc!1214 (h!59483 l!14304)) lt!1915833) (= lambda!222118 lambda!222094))))

(assert (=> bs!1141699 (= (= (+!2382 acc!1214 (h!59483 l!14304)) acc!1214) (= lambda!222118 lambda!222102))))

(assert (=> b!4751534 true))

(declare-fun lambda!222119 () Int)

(declare-fun lt!1916057 () ListMap!5541)

(assert (=> bs!1141694 (= (= lt!1916057 lt!1915494) (= lambda!222119 lambda!222085))))

(assert (=> bs!1141695 (= (= lt!1916057 lt!1915675) (= lambda!222119 lambda!222069))))

(assert (=> bs!1141696 (= (= lt!1916057 lt!1915800) (= lambda!222119 lambda!222088))))

(assert (=> bs!1141697 (= (= lt!1916057 lt!1915497) (= lambda!222119 lambda!222091))))

(assert (=> bs!1141698 (= (= lt!1916057 lt!1915754) (= lambda!222119 lambda!222079))))

(assert (=> bs!1141700 (= (= lt!1916057 lt!1915494) (= lambda!222119 lambda!222084))))

(assert (=> bs!1141698 (= (= lt!1916057 lt!1915497) (= lambda!222119 lambda!222078))))

(assert (=> bs!1141701 (= (= lt!1916057 acc!1214) (= lambda!222119 lambda!222101))))

(assert (=> bs!1141694 (= (= lt!1916057 lt!1915796) (= lambda!222119 lambda!222086))))

(assert (=> bs!1141702 (= (= lt!1916057 lt!1915497) (= lambda!222119 lambda!222077))))

(assert (=> bs!1141703 (= (= lt!1916057 (+!2382 lt!1915497 t!14174)) (= lambda!222119 lambda!222106))))

(assert (=> bs!1141704 (= (= lt!1916057 lt!1915882) (= lambda!222119 lambda!222099))))

(assert (=> bs!1141705 (= (= lt!1916057 lt!1915907) (= lambda!222119 lambda!222104))))

(assert (=> bs!1141706 (= (= lt!1916057 lt!1915903) (= lambda!222119 lambda!222116))))

(assert (=> bs!1141707 (= (= lt!1916057 acc!1214) (= lambda!222119 lambda!222097))))

(assert (=> bs!1141708 (= (= lt!1916057 (+!2382 lt!1915497 t!14174)) (= lambda!222119 lambda!222105))))

(assert (=> bs!1141709 (= (= lt!1916057 lt!1915671) (= lambda!222119 lambda!222067))))

(assert (=> bs!1141710 (= (= lt!1916057 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222119 lambda!222065))))

(assert (=> bs!1141711 (= (= lt!1916057 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222119 lambda!222117))))

(assert (=> bs!1141699 (= (= lt!1916057 lt!1915903) (= lambda!222119 lambda!222103))))

(assert (=> b!4751534 (= (= lt!1916057 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222119 lambda!222118))))

(assert (=> bs!1141703 (= (= lt!1916057 lt!1915924) (= lambda!222119 lambda!222107))))

(assert (=> bs!1141697 (= (= lt!1916057 lt!1915829) (= lambda!222119 lambda!222092))))

(assert (=> bs!1141712 (= (= lt!1916057 lt!1915928) (= lambda!222119 lambda!222108))))

(assert (=> bs!1141713 (= (= lt!1916057 lt!1915758) (= lambda!222119 lambda!222081))))

(assert (=> bs!1141714 (= (= lt!1916057 lt!1915497) (= lambda!222119 lambda!222089))))

(assert (=> bs!1141709 (= (= lt!1916057 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222119 lambda!222066))))

(assert (=> bs!1141704 (= (= lt!1916057 acc!1214) (= lambda!222119 lambda!222098))))

(assert (=> bs!1141715 (= (= lt!1916057 lt!1915494) (= lambda!222119 lambda!222111))))

(assert (=> bs!1141716 (= (= lt!1916057 lt!1915886) (= lambda!222119 lambda!222100))))

(assert (=> bs!1141717 (= (= lt!1916057 lt!1915833) (= lambda!222119 lambda!222094))))

(assert (=> bs!1141699 (= (= lt!1916057 acc!1214) (= lambda!222119 lambda!222102))))

(assert (=> b!4751534 true))

(declare-fun bs!1141718 () Bool)

(declare-fun d!1518686 () Bool)

(assert (= bs!1141718 (and d!1518686 b!4751304)))

(declare-fun lambda!222120 () Int)

(declare-fun lt!1916061 () ListMap!5541)

(assert (=> bs!1141718 (= (= lt!1916061 lt!1915494) (= lambda!222120 lambda!222085))))

(declare-fun bs!1141719 () Bool)

(assert (= bs!1141719 (and d!1518686 d!1518558)))

(assert (=> bs!1141719 (= (= lt!1916061 lt!1915675) (= lambda!222120 lambda!222069))))

(declare-fun bs!1141720 () Bool)

(assert (= bs!1141720 (and d!1518686 b!4751534)))

(assert (=> bs!1141720 (= (= lt!1916061 lt!1916057) (= lambda!222120 lambda!222119))))

(declare-fun bs!1141721 () Bool)

(assert (= bs!1141721 (and d!1518686 d!1518594)))

(assert (=> bs!1141721 (= (= lt!1916061 lt!1915800) (= lambda!222120 lambda!222088))))

(declare-fun bs!1141722 () Bool)

(assert (= bs!1141722 (and d!1518686 b!4751315)))

(assert (=> bs!1141722 (= (= lt!1916061 lt!1915497) (= lambda!222120 lambda!222091))))

(declare-fun bs!1141723 () Bool)

(assert (= bs!1141723 (and d!1518686 b!4751294)))

(assert (=> bs!1141723 (= (= lt!1916061 lt!1915754) (= lambda!222120 lambda!222079))))

(declare-fun bs!1141724 () Bool)

(assert (= bs!1141724 (and d!1518686 b!4751305)))

(assert (=> bs!1141724 (= (= lt!1916061 lt!1915494) (= lambda!222120 lambda!222084))))

(assert (=> bs!1141723 (= (= lt!1916061 lt!1915497) (= lambda!222120 lambda!222078))))

(declare-fun bs!1141725 () Bool)

(assert (= bs!1141725 (and d!1518686 b!4751345)))

(assert (=> bs!1141725 (= (= lt!1916061 acc!1214) (= lambda!222120 lambda!222101))))

(assert (=> bs!1141718 (= (= lt!1916061 lt!1915796) (= lambda!222120 lambda!222086))))

(declare-fun bs!1141726 () Bool)

(assert (= bs!1141726 (and d!1518686 b!4751295)))

(assert (=> bs!1141726 (= (= lt!1916061 lt!1915497) (= lambda!222120 lambda!222077))))

(declare-fun bs!1141727 () Bool)

(assert (= bs!1141727 (and d!1518686 b!4751349)))

(assert (=> bs!1141727 (= (= lt!1916061 (+!2382 lt!1915497 t!14174)) (= lambda!222120 lambda!222106))))

(declare-fun bs!1141728 () Bool)

(assert (= bs!1141728 (and d!1518686 b!4751337)))

(assert (=> bs!1141728 (= (= lt!1916061 lt!1915882) (= lambda!222120 lambda!222099))))

(declare-fun bs!1141729 () Bool)

(assert (= bs!1141729 (and d!1518686 d!1518624)))

(assert (=> bs!1141729 (= (= lt!1916061 lt!1915907) (= lambda!222120 lambda!222104))))

(declare-fun bs!1141730 () Bool)

(assert (= bs!1141730 (and d!1518686 d!1518676)))

(assert (=> bs!1141730 (= (= lt!1916061 lt!1915903) (= lambda!222120 lambda!222116))))

(declare-fun bs!1141731 () Bool)

(assert (= bs!1141731 (and d!1518686 b!4751338)))

(assert (=> bs!1141731 (= (= lt!1916061 acc!1214) (= lambda!222120 lambda!222097))))

(declare-fun bs!1141732 () Bool)

(assert (= bs!1141732 (and d!1518686 b!4751350)))

(assert (=> bs!1141732 (= (= lt!1916061 (+!2382 lt!1915497 t!14174)) (= lambda!222120 lambda!222105))))

(declare-fun bs!1141733 () Bool)

(assert (= bs!1141733 (and d!1518686 b!4751267)))

(assert (=> bs!1141733 (= (= lt!1916061 lt!1915671) (= lambda!222120 lambda!222067))))

(declare-fun bs!1141734 () Bool)

(assert (= bs!1141734 (and d!1518686 b!4751268)))

(assert (=> bs!1141734 (= (= lt!1916061 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222120 lambda!222065))))

(declare-fun bs!1141735 () Bool)

(assert (= bs!1141735 (and d!1518686 b!4751535)))

(assert (=> bs!1141735 (= (= lt!1916061 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222120 lambda!222117))))

(declare-fun bs!1141736 () Bool)

(assert (= bs!1141736 (and d!1518686 b!4751344)))

(assert (=> bs!1141736 (= (= lt!1916061 lt!1915903) (= lambda!222120 lambda!222103))))

(assert (=> bs!1141720 (= (= lt!1916061 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222120 lambda!222118))))

(assert (=> bs!1141727 (= (= lt!1916061 lt!1915924) (= lambda!222120 lambda!222107))))

(assert (=> bs!1141722 (= (= lt!1916061 lt!1915829) (= lambda!222120 lambda!222092))))

(declare-fun bs!1141737 () Bool)

(assert (= bs!1141737 (and d!1518686 d!1518628)))

(assert (=> bs!1141737 (= (= lt!1916061 lt!1915928) (= lambda!222120 lambda!222108))))

(declare-fun bs!1141738 () Bool)

(assert (= bs!1141738 (and d!1518686 d!1518590)))

(assert (=> bs!1141738 (= (= lt!1916061 lt!1915758) (= lambda!222120 lambda!222081))))

(declare-fun bs!1141739 () Bool)

(assert (= bs!1141739 (and d!1518686 b!4751316)))

(assert (=> bs!1141739 (= (= lt!1916061 lt!1915497) (= lambda!222120 lambda!222089))))

(assert (=> bs!1141733 (= (= lt!1916061 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222120 lambda!222066))))

(assert (=> bs!1141728 (= (= lt!1916061 acc!1214) (= lambda!222120 lambda!222098))))

(declare-fun bs!1141740 () Bool)

(assert (= bs!1141740 (and d!1518686 d!1518668)))

(assert (=> bs!1141740 (= (= lt!1916061 lt!1915494) (= lambda!222120 lambda!222111))))

(declare-fun bs!1141741 () Bool)

(assert (= bs!1141741 (and d!1518686 d!1518618)))

(assert (=> bs!1141741 (= (= lt!1916061 lt!1915886) (= lambda!222120 lambda!222100))))

(declare-fun bs!1141742 () Bool)

(assert (= bs!1141742 (and d!1518686 d!1518604)))

(assert (=> bs!1141742 (= (= lt!1916061 lt!1915833) (= lambda!222120 lambda!222094))))

(assert (=> bs!1141736 (= (= lt!1916061 acc!1214) (= lambda!222120 lambda!222102))))

(assert (=> d!1518686 true))

(declare-fun e!2963969 () Bool)

(assert (=> d!1518686 e!2963969))

(declare-fun res!2014941 () Bool)

(assert (=> d!1518686 (=> (not res!2014941) (not e!2963969))))

(assert (=> d!1518686 (= res!2014941 (forall!11762 (t!360542 l!14304) lambda!222120))))

(declare-fun e!2963970 () ListMap!5541)

(assert (=> d!1518686 (= lt!1916061 e!2963970)))

(declare-fun c!811260 () Bool)

(assert (=> d!1518686 (= c!811260 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518686 (noDuplicateKeys!2148 (t!360542 l!14304))))

(assert (=> d!1518686 (= (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 acc!1214 (h!59483 l!14304))) lt!1916061)))

(assert (=> b!4751534 (= e!2963970 lt!1916057)))

(declare-fun lt!1916058 () ListMap!5541)

(assert (=> b!4751534 (= lt!1916058 (+!2382 (+!2382 acc!1214 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751534 (= lt!1916057 (addToMapMapFromBucket!1572 (t!360542 (t!360542 l!14304)) (+!2382 (+!2382 acc!1214 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916064 () Unit!135894)

(declare-fun call!332904 () Unit!135894)

(assert (=> b!4751534 (= lt!1916064 call!332904)))

(assert (=> b!4751534 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 l!14304))) lambda!222118)))

(declare-fun lt!1916051 () Unit!135894)

(assert (=> b!4751534 (= lt!1916051 lt!1916064)))

(declare-fun call!332906 () Bool)

(assert (=> b!4751534 call!332906))

(declare-fun lt!1916068 () Unit!135894)

(declare-fun Unit!136062 () Unit!135894)

(assert (=> b!4751534 (= lt!1916068 Unit!136062)))

(assert (=> b!4751534 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222119)))

(declare-fun lt!1916053 () Unit!135894)

(declare-fun Unit!136063 () Unit!135894)

(assert (=> b!4751534 (= lt!1916053 Unit!136063)))

(declare-fun lt!1916062 () Unit!135894)

(declare-fun Unit!136064 () Unit!135894)

(assert (=> b!4751534 (= lt!1916062 Unit!136064)))

(declare-fun lt!1916055 () Unit!135894)

(assert (=> b!4751534 (= lt!1916055 (forallContained!3788 (toList!6116 lt!1916058) lambda!222119 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751534 (contains!16509 lt!1916058 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1916063 () Unit!135894)

(declare-fun Unit!136065 () Unit!135894)

(assert (=> b!4751534 (= lt!1916063 Unit!136065)))

(assert (=> b!4751534 (contains!16509 lt!1916057 (_1!30722 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1916065 () Unit!135894)

(declare-fun Unit!136066 () Unit!135894)

(assert (=> b!4751534 (= lt!1916065 Unit!136066)))

(assert (=> b!4751534 (forall!11762 (t!360542 l!14304) lambda!222119)))

(declare-fun lt!1916048 () Unit!135894)

(declare-fun Unit!136067 () Unit!135894)

(assert (=> b!4751534 (= lt!1916048 Unit!136067)))

(assert (=> b!4751534 (forall!11762 (toList!6116 lt!1916058) lambda!222119)))

(declare-fun lt!1916054 () Unit!135894)

(declare-fun Unit!136068 () Unit!135894)

(assert (=> b!4751534 (= lt!1916054 Unit!136068)))

(declare-fun lt!1916050 () Unit!135894)

(declare-fun Unit!136069 () Unit!135894)

(assert (=> b!4751534 (= lt!1916050 Unit!136069)))

(declare-fun lt!1916052 () Unit!135894)

(assert (=> b!4751534 (= lt!1916052 (addForallContainsKeyThenBeforeAdding!876 (+!2382 acc!1214 (h!59483 l!14304)) lt!1916057 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751534 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 l!14304))) lambda!222119)))

(declare-fun lt!1916066 () Unit!135894)

(assert (=> b!4751534 (= lt!1916066 lt!1916052)))

(assert (=> b!4751534 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 l!14304))) lambda!222119)))

(declare-fun lt!1916059 () Unit!135894)

(declare-fun Unit!136070 () Unit!135894)

(assert (=> b!4751534 (= lt!1916059 Unit!136070)))

(declare-fun res!2014943 () Bool)

(assert (=> b!4751534 (= res!2014943 (forall!11762 (t!360542 l!14304) lambda!222119))))

(declare-fun e!2963968 () Bool)

(assert (=> b!4751534 (=> (not res!2014943) (not e!2963968))))

(assert (=> b!4751534 e!2963968))

(declare-fun lt!1916060 () Unit!135894)

(declare-fun Unit!136071 () Unit!135894)

(assert (=> b!4751534 (= lt!1916060 Unit!136071)))

(declare-fun bm!332899 () Bool)

(assert (=> bm!332899 (= call!332906 (forall!11762 (ite c!811260 (toList!6116 (+!2382 acc!1214 (h!59483 l!14304))) (toList!6116 lt!1916058)) (ite c!811260 lambda!222117 lambda!222119)))))

(assert (=> b!4751535 (= e!2963970 (+!2382 acc!1214 (h!59483 l!14304)))))

(declare-fun lt!1916056 () Unit!135894)

(assert (=> b!4751535 (= lt!1916056 call!332904)))

(declare-fun call!332905 () Bool)

(assert (=> b!4751535 call!332905))

(declare-fun lt!1916067 () Unit!135894)

(assert (=> b!4751535 (= lt!1916067 lt!1916056)))

(assert (=> b!4751535 call!332906))

(declare-fun lt!1916049 () Unit!135894)

(declare-fun Unit!136072 () Unit!135894)

(assert (=> b!4751535 (= lt!1916049 Unit!136072)))

(declare-fun b!4751536 () Bool)

(assert (=> b!4751536 (= e!2963969 (invariantList!1594 (toList!6116 lt!1916061)))))

(declare-fun bm!332900 () Bool)

(assert (=> bm!332900 (= call!332905 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 l!14304))) (ite c!811260 lambda!222117 lambda!222119)))))

(declare-fun bm!332901 () Bool)

(assert (=> bm!332901 (= call!332904 (lemmaContainsAllItsOwnKeys!877 (+!2382 acc!1214 (h!59483 l!14304))))))

(declare-fun b!4751537 () Bool)

(assert (=> b!4751537 (= e!2963968 call!332905)))

(declare-fun b!4751538 () Bool)

(declare-fun res!2014942 () Bool)

(assert (=> b!4751538 (=> (not res!2014942) (not e!2963969))))

(assert (=> b!4751538 (= res!2014942 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 l!14304))) lambda!222120))))

(assert (= (and d!1518686 c!811260) b!4751535))

(assert (= (and d!1518686 (not c!811260)) b!4751534))

(assert (= (and b!4751534 res!2014943) b!4751537))

(assert (= (or b!4751535 b!4751534) bm!332901))

(assert (= (or b!4751535 b!4751534) bm!332899))

(assert (= (or b!4751535 b!4751537) bm!332900))

(assert (= (and d!1518686 res!2014941) b!4751538))

(assert (= (and b!4751538 res!2014942) b!4751536))

(declare-fun m!5714413 () Bool)

(assert (=> d!1518686 m!5714413))

(assert (=> d!1518686 m!5713531))

(declare-fun m!5714415 () Bool)

(assert (=> bm!332899 m!5714415))

(assert (=> bm!332901 m!5713503))

(declare-fun m!5714417 () Bool)

(assert (=> bm!332901 m!5714417))

(declare-fun m!5714419 () Bool)

(assert (=> b!4751536 m!5714419))

(declare-fun m!5714421 () Bool)

(assert (=> b!4751534 m!5714421))

(declare-fun m!5714423 () Bool)

(assert (=> b!4751534 m!5714423))

(declare-fun m!5714425 () Bool)

(assert (=> b!4751534 m!5714425))

(declare-fun m!5714427 () Bool)

(assert (=> b!4751534 m!5714427))

(declare-fun m!5714429 () Bool)

(assert (=> b!4751534 m!5714429))

(assert (=> b!4751534 m!5713503))

(assert (=> b!4751534 m!5714423))

(declare-fun m!5714431 () Bool)

(assert (=> b!4751534 m!5714431))

(declare-fun m!5714433 () Bool)

(assert (=> b!4751534 m!5714433))

(assert (=> b!4751534 m!5714427))

(declare-fun m!5714435 () Bool)

(assert (=> b!4751534 m!5714435))

(declare-fun m!5714437 () Bool)

(assert (=> b!4751534 m!5714437))

(assert (=> b!4751534 m!5713503))

(declare-fun m!5714439 () Bool)

(assert (=> b!4751534 m!5714439))

(declare-fun m!5714441 () Bool)

(assert (=> b!4751534 m!5714441))

(assert (=> b!4751534 m!5714437))

(declare-fun m!5714443 () Bool)

(assert (=> bm!332900 m!5714443))

(declare-fun m!5714445 () Bool)

(assert (=> b!4751538 m!5714445))

(assert (=> b!4751344 d!1518686))

(assert (=> b!4751344 d!1518612))

(declare-fun d!1518688 () Bool)

(declare-fun res!2014944 () Bool)

(declare-fun e!2963971 () Bool)

(assert (=> d!1518688 (=> res!2014944 e!2963971)))

(assert (=> d!1518688 (= res!2014944 ((_ is Nil!53086) l!14304))))

(assert (=> d!1518688 (= (forall!11762 l!14304 lambda!222103) e!2963971)))

(declare-fun b!4751539 () Bool)

(declare-fun e!2963972 () Bool)

(assert (=> b!4751539 (= e!2963971 e!2963972)))

(declare-fun res!2014945 () Bool)

(assert (=> b!4751539 (=> (not res!2014945) (not e!2963972))))

(assert (=> b!4751539 (= res!2014945 (dynLambda!21900 lambda!222103 (h!59483 l!14304)))))

(declare-fun b!4751540 () Bool)

(assert (=> b!4751540 (= e!2963972 (forall!11762 (t!360542 l!14304) lambda!222103))))

(assert (= (and d!1518688 (not res!2014944)) b!4751539))

(assert (= (and b!4751539 res!2014945) b!4751540))

(declare-fun b_lambda!183199 () Bool)

(assert (=> (not b_lambda!183199) (not b!4751539)))

(assert (=> b!4751539 m!5714351))

(assert (=> b!4751540 m!5714107))

(assert (=> b!4751344 d!1518688))

(declare-fun d!1518690 () Bool)

(declare-fun res!2014946 () Bool)

(declare-fun e!2963973 () Bool)

(assert (=> d!1518690 (=> res!2014946 e!2963973)))

(assert (=> d!1518690 (= res!2014946 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518690 (= (forall!11762 (t!360542 l!14304) lambda!222103) e!2963973)))

(declare-fun b!4751541 () Bool)

(declare-fun e!2963974 () Bool)

(assert (=> b!4751541 (= e!2963973 e!2963974)))

(declare-fun res!2014947 () Bool)

(assert (=> b!4751541 (=> (not res!2014947) (not e!2963974))))

(assert (=> b!4751541 (= res!2014947 (dynLambda!21900 lambda!222103 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751542 () Bool)

(assert (=> b!4751542 (= e!2963974 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222103))))

(assert (= (and d!1518690 (not res!2014946)) b!4751541))

(assert (= (and b!4751541 res!2014947) b!4751542))

(declare-fun b_lambda!183201 () Bool)

(assert (=> (not b_lambda!183201) (not b!4751541)))

(declare-fun m!5714447 () Bool)

(assert (=> b!4751541 m!5714447))

(declare-fun m!5714449 () Bool)

(assert (=> b!4751542 m!5714449))

(assert (=> b!4751344 d!1518690))

(declare-fun d!1518692 () Bool)

(declare-fun res!2014948 () Bool)

(declare-fun e!2963975 () Bool)

(assert (=> d!1518692 (=> res!2014948 e!2963975)))

(assert (=> d!1518692 (= res!2014948 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1518692 (= (forall!11762 (toList!6116 acc!1214) lambda!222102) e!2963975)))

(declare-fun b!4751543 () Bool)

(declare-fun e!2963976 () Bool)

(assert (=> b!4751543 (= e!2963975 e!2963976)))

(declare-fun res!2014949 () Bool)

(assert (=> b!4751543 (=> (not res!2014949) (not e!2963976))))

(assert (=> b!4751543 (= res!2014949 (dynLambda!21900 lambda!222102 (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4751544 () Bool)

(assert (=> b!4751544 (= e!2963976 (forall!11762 (t!360542 (toList!6116 acc!1214)) lambda!222102))))

(assert (= (and d!1518692 (not res!2014948)) b!4751543))

(assert (= (and b!4751543 res!2014949) b!4751544))

(declare-fun b_lambda!183203 () Bool)

(assert (=> (not b_lambda!183203) (not b!4751543)))

(declare-fun m!5714451 () Bool)

(assert (=> b!4751543 m!5714451))

(declare-fun m!5714453 () Bool)

(assert (=> b!4751544 m!5714453))

(assert (=> b!4751344 d!1518692))

(declare-fun bs!1141743 () Bool)

(declare-fun d!1518694 () Bool)

(assert (= bs!1141743 (and d!1518694 b!4751304)))

(declare-fun lambda!222121 () Int)

(assert (=> bs!1141743 (= (= (+!2382 lt!1915497 t!14174) lt!1915494) (= lambda!222121 lambda!222085))))

(declare-fun bs!1141744 () Bool)

(assert (= bs!1141744 (and d!1518694 d!1518558)))

(assert (=> bs!1141744 (= (= (+!2382 lt!1915497 t!14174) lt!1915675) (= lambda!222121 lambda!222069))))

(declare-fun bs!1141745 () Bool)

(assert (= bs!1141745 (and d!1518694 b!4751534)))

(assert (=> bs!1141745 (= (= (+!2382 lt!1915497 t!14174) lt!1916057) (= lambda!222121 lambda!222119))))

(declare-fun bs!1141746 () Bool)

(assert (= bs!1141746 (and d!1518694 d!1518594)))

(assert (=> bs!1141746 (= (= (+!2382 lt!1915497 t!14174) lt!1915800) (= lambda!222121 lambda!222088))))

(declare-fun bs!1141747 () Bool)

(assert (= bs!1141747 (and d!1518694 b!4751294)))

(assert (=> bs!1141747 (= (= (+!2382 lt!1915497 t!14174) lt!1915754) (= lambda!222121 lambda!222079))))

(declare-fun bs!1141748 () Bool)

(assert (= bs!1141748 (and d!1518694 b!4751305)))

(assert (=> bs!1141748 (= (= (+!2382 lt!1915497 t!14174) lt!1915494) (= lambda!222121 lambda!222084))))

(assert (=> bs!1141747 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222121 lambda!222078))))

(declare-fun bs!1141749 () Bool)

(assert (= bs!1141749 (and d!1518694 b!4751345)))

(assert (=> bs!1141749 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222121 lambda!222101))))

(assert (=> bs!1141743 (= (= (+!2382 lt!1915497 t!14174) lt!1915796) (= lambda!222121 lambda!222086))))

(declare-fun bs!1141750 () Bool)

(assert (= bs!1141750 (and d!1518694 b!4751295)))

(assert (=> bs!1141750 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222121 lambda!222077))))

(declare-fun bs!1141751 () Bool)

(assert (= bs!1141751 (and d!1518694 b!4751349)))

(assert (=> bs!1141751 (= lambda!222121 lambda!222106)))

(declare-fun bs!1141752 () Bool)

(assert (= bs!1141752 (and d!1518694 b!4751337)))

(assert (=> bs!1141752 (= (= (+!2382 lt!1915497 t!14174) lt!1915882) (= lambda!222121 lambda!222099))))

(declare-fun bs!1141753 () Bool)

(assert (= bs!1141753 (and d!1518694 d!1518624)))

(assert (=> bs!1141753 (= (= (+!2382 lt!1915497 t!14174) lt!1915907) (= lambda!222121 lambda!222104))))

(declare-fun bs!1141754 () Bool)

(assert (= bs!1141754 (and d!1518694 d!1518676)))

(assert (=> bs!1141754 (= (= (+!2382 lt!1915497 t!14174) lt!1915903) (= lambda!222121 lambda!222116))))

(declare-fun bs!1141755 () Bool)

(assert (= bs!1141755 (and d!1518694 b!4751315)))

(assert (=> bs!1141755 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222121 lambda!222091))))

(declare-fun bs!1141756 () Bool)

(assert (= bs!1141756 (and d!1518694 d!1518686)))

(assert (=> bs!1141756 (= (= (+!2382 lt!1915497 t!14174) lt!1916061) (= lambda!222121 lambda!222120))))

(declare-fun bs!1141757 () Bool)

(assert (= bs!1141757 (and d!1518694 b!4751338)))

(assert (=> bs!1141757 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222121 lambda!222097))))

(declare-fun bs!1141758 () Bool)

(assert (= bs!1141758 (and d!1518694 b!4751350)))

(assert (=> bs!1141758 (= lambda!222121 lambda!222105)))

(declare-fun bs!1141759 () Bool)

(assert (= bs!1141759 (and d!1518694 b!4751267)))

(assert (=> bs!1141759 (= (= (+!2382 lt!1915497 t!14174) lt!1915671) (= lambda!222121 lambda!222067))))

(declare-fun bs!1141760 () Bool)

(assert (= bs!1141760 (and d!1518694 b!4751268)))

(assert (=> bs!1141760 (= (= (+!2382 lt!1915497 t!14174) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222121 lambda!222065))))

(declare-fun bs!1141761 () Bool)

(assert (= bs!1141761 (and d!1518694 b!4751535)))

(assert (=> bs!1141761 (= (= (+!2382 lt!1915497 t!14174) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222121 lambda!222117))))

(declare-fun bs!1141762 () Bool)

(assert (= bs!1141762 (and d!1518694 b!4751344)))

(assert (=> bs!1141762 (= (= (+!2382 lt!1915497 t!14174) lt!1915903) (= lambda!222121 lambda!222103))))

(assert (=> bs!1141745 (= (= (+!2382 lt!1915497 t!14174) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222121 lambda!222118))))

(assert (=> bs!1141751 (= (= (+!2382 lt!1915497 t!14174) lt!1915924) (= lambda!222121 lambda!222107))))

(assert (=> bs!1141755 (= (= (+!2382 lt!1915497 t!14174) lt!1915829) (= lambda!222121 lambda!222092))))

(declare-fun bs!1141763 () Bool)

(assert (= bs!1141763 (and d!1518694 d!1518628)))

(assert (=> bs!1141763 (= (= (+!2382 lt!1915497 t!14174) lt!1915928) (= lambda!222121 lambda!222108))))

(declare-fun bs!1141764 () Bool)

(assert (= bs!1141764 (and d!1518694 d!1518590)))

(assert (=> bs!1141764 (= (= (+!2382 lt!1915497 t!14174) lt!1915758) (= lambda!222121 lambda!222081))))

(declare-fun bs!1141765 () Bool)

(assert (= bs!1141765 (and d!1518694 b!4751316)))

(assert (=> bs!1141765 (= (= (+!2382 lt!1915497 t!14174) lt!1915497) (= lambda!222121 lambda!222089))))

(assert (=> bs!1141759 (= (= (+!2382 lt!1915497 t!14174) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222121 lambda!222066))))

(assert (=> bs!1141752 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222121 lambda!222098))))

(declare-fun bs!1141766 () Bool)

(assert (= bs!1141766 (and d!1518694 d!1518668)))

(assert (=> bs!1141766 (= (= (+!2382 lt!1915497 t!14174) lt!1915494) (= lambda!222121 lambda!222111))))

(declare-fun bs!1141767 () Bool)

(assert (= bs!1141767 (and d!1518694 d!1518618)))

(assert (=> bs!1141767 (= (= (+!2382 lt!1915497 t!14174) lt!1915886) (= lambda!222121 lambda!222100))))

(declare-fun bs!1141768 () Bool)

(assert (= bs!1141768 (and d!1518694 d!1518604)))

(assert (=> bs!1141768 (= (= (+!2382 lt!1915497 t!14174) lt!1915833) (= lambda!222121 lambda!222094))))

(assert (=> bs!1141762 (= (= (+!2382 lt!1915497 t!14174) acc!1214) (= lambda!222121 lambda!222102))))

(assert (=> d!1518694 true))

(assert (=> d!1518694 (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222121)))

(declare-fun lt!1916069 () Unit!135894)

(assert (=> d!1518694 (= lt!1916069 (choose!33824 (+!2382 lt!1915497 t!14174)))))

(assert (=> d!1518694 (= (lemmaContainsAllItsOwnKeys!877 (+!2382 lt!1915497 t!14174)) lt!1916069)))

(declare-fun bs!1141769 () Bool)

(assert (= bs!1141769 d!1518694))

(declare-fun m!5714455 () Bool)

(assert (=> bs!1141769 m!5714455))

(assert (=> bs!1141769 m!5713493))

(declare-fun m!5714457 () Bool)

(assert (=> bs!1141769 m!5714457))

(assert (=> bm!332876 d!1518694))

(declare-fun d!1518696 () Bool)

(assert (=> d!1518696 (= (invariantList!1594 (toList!6116 lt!1915675)) (noDuplicatedKeys!402 (toList!6116 lt!1915675)))))

(declare-fun bs!1141770 () Bool)

(assert (= bs!1141770 d!1518696))

(declare-fun m!5714459 () Bool)

(assert (=> bs!1141770 m!5714459))

(assert (=> b!4751269 d!1518696))

(declare-fun b!4751547 () Bool)

(declare-fun e!2963978 () Option!12530)

(assert (=> b!4751547 (= e!2963978 (getValueByKey!2080 (t!360542 (toList!6116 lt!1915813)) (_1!30722 t!14174)))))

(declare-fun d!1518698 () Bool)

(declare-fun c!811261 () Bool)

(assert (=> d!1518698 (= c!811261 (and ((_ is Cons!53086) (toList!6116 lt!1915813)) (= (_1!30722 (h!59483 (toList!6116 lt!1915813))) (_1!30722 t!14174))))))

(declare-fun e!2963977 () Option!12530)

(assert (=> d!1518698 (= (getValueByKey!2080 (toList!6116 lt!1915813) (_1!30722 t!14174)) e!2963977)))

(declare-fun b!4751546 () Bool)

(assert (=> b!4751546 (= e!2963977 e!2963978)))

(declare-fun c!811262 () Bool)

(assert (=> b!4751546 (= c!811262 (and ((_ is Cons!53086) (toList!6116 lt!1915813)) (not (= (_1!30722 (h!59483 (toList!6116 lt!1915813))) (_1!30722 t!14174)))))))

(declare-fun b!4751545 () Bool)

(assert (=> b!4751545 (= e!2963977 (Some!12529 (_2!30722 (h!59483 (toList!6116 lt!1915813)))))))

(declare-fun b!4751548 () Bool)

(assert (=> b!4751548 (= e!2963978 None!12529)))

(assert (= (and d!1518698 c!811261) b!4751545))

(assert (= (and d!1518698 (not c!811261)) b!4751546))

(assert (= (and b!4751546 c!811262) b!4751547))

(assert (= (and b!4751546 (not c!811262)) b!4751548))

(declare-fun m!5714461 () Bool)

(assert (=> b!4751547 m!5714461))

(assert (=> b!4751311 d!1518698))

(declare-fun d!1518700 () Bool)

(declare-fun c!811265 () Bool)

(assert (=> d!1518700 (= c!811265 ((_ is Nil!53086) (toList!6116 lt!1915499)))))

(declare-fun e!2963981 () (InoxSet tuple2!54856))

(assert (=> d!1518700 (= (content!9529 (toList!6116 lt!1915499)) e!2963981)))

(declare-fun b!4751553 () Bool)

(assert (=> b!4751553 (= e!2963981 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751554 () Bool)

(assert (=> b!4751554 (= e!2963981 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 lt!1915499)) true) (content!9529 (t!360542 (toList!6116 lt!1915499)))))))

(assert (= (and d!1518700 c!811265) b!4751553))

(assert (= (and d!1518700 (not c!811265)) b!4751554))

(declare-fun m!5714463 () Bool)

(assert (=> b!4751554 m!5714463))

(declare-fun m!5714465 () Bool)

(assert (=> b!4751554 m!5714465))

(assert (=> d!1518598 d!1518700))

(declare-fun d!1518702 () Bool)

(declare-fun c!811266 () Bool)

(assert (=> d!1518702 (= c!811266 ((_ is Nil!53086) (toList!6116 (addToMapMapFromBucket!1572 l!14304 lt!1915494))))))

(declare-fun e!2963982 () (InoxSet tuple2!54856))

(assert (=> d!1518702 (= (content!9529 (toList!6116 (addToMapMapFromBucket!1572 l!14304 lt!1915494))) e!2963982)))

(declare-fun b!4751555 () Bool)

(assert (=> b!4751555 (= e!2963982 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751556 () Bool)

(assert (=> b!4751556 (= e!2963982 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 (addToMapMapFromBucket!1572 l!14304 lt!1915494))) true) (content!9529 (t!360542 (toList!6116 (addToMapMapFromBucket!1572 l!14304 lt!1915494))))))))

(assert (= (and d!1518702 c!811266) b!4751555))

(assert (= (and d!1518702 (not c!811266)) b!4751556))

(declare-fun m!5714467 () Bool)

(assert (=> b!4751556 m!5714467))

(declare-fun m!5714469 () Bool)

(assert (=> b!4751556 m!5714469))

(assert (=> d!1518598 d!1518702))

(declare-fun d!1518704 () Bool)

(declare-fun res!2014950 () Bool)

(declare-fun e!2963983 () Bool)

(assert (=> d!1518704 (=> res!2014950 e!2963983)))

(assert (=> d!1518704 (= res!2014950 ((_ is Nil!53086) lt!1915493))))

(assert (=> d!1518704 (= (forall!11762 lt!1915493 lambda!222100) e!2963983)))

(declare-fun b!4751557 () Bool)

(declare-fun e!2963984 () Bool)

(assert (=> b!4751557 (= e!2963983 e!2963984)))

(declare-fun res!2014951 () Bool)

(assert (=> b!4751557 (=> (not res!2014951) (not e!2963984))))

(assert (=> b!4751557 (= res!2014951 (dynLambda!21900 lambda!222100 (h!59483 lt!1915493)))))

(declare-fun b!4751558 () Bool)

(assert (=> b!4751558 (= e!2963984 (forall!11762 (t!360542 lt!1915493) lambda!222100))))

(assert (= (and d!1518704 (not res!2014950)) b!4751557))

(assert (= (and b!4751557 res!2014951) b!4751558))

(declare-fun b_lambda!183205 () Bool)

(assert (=> (not b_lambda!183205) (not b!4751557)))

(declare-fun m!5714471 () Bool)

(assert (=> b!4751557 m!5714471))

(declare-fun m!5714473 () Bool)

(assert (=> b!4751558 m!5714473))

(assert (=> d!1518618 d!1518704))

(assert (=> d!1518618 d!1518620))

(declare-fun bs!1141771 () Bool)

(declare-fun d!1518706 () Bool)

(assert (= bs!1141771 (and d!1518706 b!4751304)))

(declare-fun lambda!222122 () Int)

(assert (=> bs!1141771 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915494) (= lambda!222122 lambda!222085))))

(declare-fun bs!1141772 () Bool)

(assert (= bs!1141772 (and d!1518706 d!1518558)))

(assert (=> bs!1141772 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915675) (= lambda!222122 lambda!222069))))

(declare-fun bs!1141773 () Bool)

(assert (= bs!1141773 (and d!1518706 b!4751534)))

(assert (=> bs!1141773 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1916057) (= lambda!222122 lambda!222119))))

(declare-fun bs!1141774 () Bool)

(assert (= bs!1141774 (and d!1518706 d!1518594)))

(assert (=> bs!1141774 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915800) (= lambda!222122 lambda!222088))))

(declare-fun bs!1141775 () Bool)

(assert (= bs!1141775 (and d!1518706 b!4751294)))

(assert (=> bs!1141775 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915754) (= lambda!222122 lambda!222079))))

(declare-fun bs!1141776 () Bool)

(assert (= bs!1141776 (and d!1518706 b!4751305)))

(assert (=> bs!1141776 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915494) (= lambda!222122 lambda!222084))))

(assert (=> bs!1141775 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915497) (= lambda!222122 lambda!222078))))

(assert (=> bs!1141771 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915796) (= lambda!222122 lambda!222086))))

(declare-fun bs!1141777 () Bool)

(assert (= bs!1141777 (and d!1518706 b!4751295)))

(assert (=> bs!1141777 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915497) (= lambda!222122 lambda!222077))))

(declare-fun bs!1141778 () Bool)

(assert (= bs!1141778 (and d!1518706 b!4751349)))

(assert (=> bs!1141778 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) (+!2382 lt!1915497 t!14174)) (= lambda!222122 lambda!222106))))

(declare-fun bs!1141779 () Bool)

(assert (= bs!1141779 (and d!1518706 b!4751337)))

(assert (=> bs!1141779 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915882) (= lambda!222122 lambda!222099))))

(declare-fun bs!1141780 () Bool)

(assert (= bs!1141780 (and d!1518706 d!1518624)))

(assert (=> bs!1141780 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915907) (= lambda!222122 lambda!222104))))

(declare-fun bs!1141781 () Bool)

(assert (= bs!1141781 (and d!1518706 d!1518676)))

(assert (=> bs!1141781 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915903) (= lambda!222122 lambda!222116))))

(declare-fun bs!1141782 () Bool)

(assert (= bs!1141782 (and d!1518706 b!4751315)))

(assert (=> bs!1141782 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915497) (= lambda!222122 lambda!222091))))

(declare-fun bs!1141783 () Bool)

(assert (= bs!1141783 (and d!1518706 d!1518686)))

(assert (=> bs!1141783 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1916061) (= lambda!222122 lambda!222120))))

(declare-fun bs!1141784 () Bool)

(assert (= bs!1141784 (and d!1518706 b!4751338)))

(assert (=> bs!1141784 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) acc!1214) (= lambda!222122 lambda!222097))))

(declare-fun bs!1141785 () Bool)

(assert (= bs!1141785 (and d!1518706 b!4751350)))

(assert (=> bs!1141785 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) (+!2382 lt!1915497 t!14174)) (= lambda!222122 lambda!222105))))

(declare-fun bs!1141786 () Bool)

(assert (= bs!1141786 (and d!1518706 b!4751267)))

(assert (=> bs!1141786 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915671) (= lambda!222122 lambda!222067))))

(declare-fun bs!1141787 () Bool)

(assert (= bs!1141787 (and d!1518706 b!4751268)))

(assert (=> bs!1141787 (= lambda!222122 lambda!222065)))

(declare-fun bs!1141788 () Bool)

(assert (= bs!1141788 (and d!1518706 b!4751535)))

(assert (=> bs!1141788 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222122 lambda!222117))))

(declare-fun bs!1141789 () Bool)

(assert (= bs!1141789 (and d!1518706 b!4751344)))

(assert (=> bs!1141789 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915903) (= lambda!222122 lambda!222103))))

(assert (=> bs!1141773 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222122 lambda!222118))))

(assert (=> bs!1141778 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915924) (= lambda!222122 lambda!222107))))

(assert (=> bs!1141782 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915829) (= lambda!222122 lambda!222092))))

(declare-fun bs!1141790 () Bool)

(assert (= bs!1141790 (and d!1518706 d!1518694)))

(assert (=> bs!1141790 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) (+!2382 lt!1915497 t!14174)) (= lambda!222122 lambda!222121))))

(declare-fun bs!1141791 () Bool)

(assert (= bs!1141791 (and d!1518706 b!4751345)))

(assert (=> bs!1141791 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) acc!1214) (= lambda!222122 lambda!222101))))

(declare-fun bs!1141792 () Bool)

(assert (= bs!1141792 (and d!1518706 d!1518628)))

(assert (=> bs!1141792 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915928) (= lambda!222122 lambda!222108))))

(declare-fun bs!1141793 () Bool)

(assert (= bs!1141793 (and d!1518706 d!1518590)))

(assert (=> bs!1141793 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915758) (= lambda!222122 lambda!222081))))

(declare-fun bs!1141794 () Bool)

(assert (= bs!1141794 (and d!1518706 b!4751316)))

(assert (=> bs!1141794 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915497) (= lambda!222122 lambda!222089))))

(assert (=> bs!1141786 (= lambda!222122 lambda!222066)))

(assert (=> bs!1141779 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) acc!1214) (= lambda!222122 lambda!222098))))

(declare-fun bs!1141795 () Bool)

(assert (= bs!1141795 (and d!1518706 d!1518668)))

(assert (=> bs!1141795 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915494) (= lambda!222122 lambda!222111))))

(declare-fun bs!1141796 () Bool)

(assert (= bs!1141796 (and d!1518706 d!1518618)))

(assert (=> bs!1141796 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915886) (= lambda!222122 lambda!222100))))

(declare-fun bs!1141797 () Bool)

(assert (= bs!1141797 (and d!1518706 d!1518604)))

(assert (=> bs!1141797 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915833) (= lambda!222122 lambda!222094))))

(assert (=> bs!1141789 (= (= (+!2382 lt!1915494 (h!59483 l!14304)) acc!1214) (= lambda!222122 lambda!222102))))

(assert (=> d!1518706 true))

(assert (=> d!1518706 (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222122)))

(declare-fun lt!1916070 () Unit!135894)

(assert (=> d!1518706 (= lt!1916070 (choose!33824 (+!2382 lt!1915494 (h!59483 l!14304))))))

(assert (=> d!1518706 (= (lemmaContainsAllItsOwnKeys!877 (+!2382 lt!1915494 (h!59483 l!14304))) lt!1916070)))

(declare-fun bs!1141798 () Bool)

(assert (= bs!1141798 d!1518706))

(declare-fun m!5714475 () Bool)

(assert (=> bs!1141798 m!5714475))

(assert (=> bs!1141798 m!5713519))

(declare-fun m!5714477 () Bool)

(assert (=> bs!1141798 m!5714477))

(assert (=> bm!332846 d!1518706))

(declare-fun d!1518708 () Bool)

(declare-fun lt!1916071 () Bool)

(assert (=> d!1518708 (= lt!1916071 (select (content!9529 (toList!6116 lt!1915863)) (h!59483 l!14304)))))

(declare-fun e!2963986 () Bool)

(assert (=> d!1518708 (= lt!1916071 e!2963986)))

(declare-fun res!2014953 () Bool)

(assert (=> d!1518708 (=> (not res!2014953) (not e!2963986))))

(assert (=> d!1518708 (= res!2014953 ((_ is Cons!53086) (toList!6116 lt!1915863)))))

(assert (=> d!1518708 (= (contains!16510 (toList!6116 lt!1915863) (h!59483 l!14304)) lt!1916071)))

(declare-fun b!4751559 () Bool)

(declare-fun e!2963985 () Bool)

(assert (=> b!4751559 (= e!2963986 e!2963985)))

(declare-fun res!2014952 () Bool)

(assert (=> b!4751559 (=> res!2014952 e!2963985)))

(assert (=> b!4751559 (= res!2014952 (= (h!59483 (toList!6116 lt!1915863)) (h!59483 l!14304)))))

(declare-fun b!4751560 () Bool)

(assert (=> b!4751560 (= e!2963985 (contains!16510 (t!360542 (toList!6116 lt!1915863)) (h!59483 l!14304)))))

(assert (= (and d!1518708 res!2014953) b!4751559))

(assert (= (and b!4751559 (not res!2014952)) b!4751560))

(declare-fun m!5714479 () Bool)

(assert (=> d!1518708 m!5714479))

(declare-fun m!5714481 () Bool)

(assert (=> d!1518708 m!5714481))

(declare-fun m!5714483 () Bool)

(assert (=> b!4751560 m!5714483))

(assert (=> b!4751328 d!1518708))

(declare-fun d!1518710 () Bool)

(declare-fun c!811267 () Bool)

(assert (=> d!1518710 (= c!811267 ((_ is Nil!53086) (toList!6116 lt!1915496)))))

(declare-fun e!2963987 () (InoxSet tuple2!54856))

(assert (=> d!1518710 (= (content!9529 (toList!6116 lt!1915496)) e!2963987)))

(declare-fun b!4751561 () Bool)

(assert (=> b!4751561 (= e!2963987 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751562 () Bool)

(assert (=> b!4751562 (= e!2963987 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 lt!1915496)) true) (content!9529 (t!360542 (toList!6116 lt!1915496)))))))

(assert (= (and d!1518710 c!811267) b!4751561))

(assert (= (and d!1518710 (not c!811267)) b!4751562))

(declare-fun m!5714485 () Bool)

(assert (=> b!4751562 m!5714485))

(declare-fun m!5714487 () Bool)

(assert (=> b!4751562 m!5714487))

(assert (=> d!1518626 d!1518710))

(declare-fun c!811268 () Bool)

(declare-fun d!1518712 () Bool)

(assert (=> d!1518712 (= c!811268 ((_ is Nil!53086) (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174)))))))

(declare-fun e!2963988 () (InoxSet tuple2!54856))

(assert (=> d!1518712 (= (content!9529 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174)))) e!2963988)))

(declare-fun b!4751563 () Bool)

(assert (=> b!4751563 (= e!2963988 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751564 () Bool)

(assert (=> b!4751564 (= e!2963988 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174)))) true) (content!9529 (t!360542 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915497 t!14174)))))))))

(assert (= (and d!1518712 c!811268) b!4751563))

(assert (= (and d!1518712 (not c!811268)) b!4751564))

(declare-fun m!5714489 () Bool)

(assert (=> b!4751564 m!5714489))

(declare-fun m!5714491 () Bool)

(assert (=> b!4751564 m!5714491))

(assert (=> d!1518626 d!1518712))

(declare-fun d!1518714 () Bool)

(declare-fun lt!1916072 () Bool)

(assert (=> d!1518714 (= lt!1916072 (select (content!9529 (toList!6116 lt!1915937)) t!14174))))

(declare-fun e!2963990 () Bool)

(assert (=> d!1518714 (= lt!1916072 e!2963990)))

(declare-fun res!2014955 () Bool)

(assert (=> d!1518714 (=> (not res!2014955) (not e!2963990))))

(assert (=> d!1518714 (= res!2014955 ((_ is Cons!53086) (toList!6116 lt!1915937)))))

(assert (=> d!1518714 (= (contains!16510 (toList!6116 lt!1915937) t!14174) lt!1916072)))

(declare-fun b!4751565 () Bool)

(declare-fun e!2963989 () Bool)

(assert (=> b!4751565 (= e!2963990 e!2963989)))

(declare-fun res!2014954 () Bool)

(assert (=> b!4751565 (=> res!2014954 e!2963989)))

(assert (=> b!4751565 (= res!2014954 (= (h!59483 (toList!6116 lt!1915937)) t!14174))))

(declare-fun b!4751566 () Bool)

(assert (=> b!4751566 (= e!2963989 (contains!16510 (t!360542 (toList!6116 lt!1915937)) t!14174))))

(assert (= (and d!1518714 res!2014955) b!4751565))

(assert (= (and b!4751565 (not res!2014954)) b!4751566))

(declare-fun m!5714493 () Bool)

(assert (=> d!1518714 m!5714493))

(declare-fun m!5714495 () Bool)

(assert (=> d!1518714 m!5714495))

(declare-fun m!5714497 () Bool)

(assert (=> b!4751566 m!5714497))

(assert (=> b!4751355 d!1518714))

(declare-fun d!1518716 () Bool)

(declare-fun res!2014956 () Bool)

(declare-fun e!2963991 () Bool)

(assert (=> d!1518716 (=> res!2014956 e!2963991)))

(assert (=> d!1518716 (= res!2014956 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518716 (= (forall!11762 (toList!6116 lt!1915497) (ite c!811204 lambda!222077 lambda!222079)) e!2963991)))

(declare-fun b!4751567 () Bool)

(declare-fun e!2963992 () Bool)

(assert (=> b!4751567 (= e!2963991 e!2963992)))

(declare-fun res!2014957 () Bool)

(assert (=> b!4751567 (=> (not res!2014957) (not e!2963992))))

(assert (=> b!4751567 (= res!2014957 (dynLambda!21900 (ite c!811204 lambda!222077 lambda!222079) (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751568 () Bool)

(assert (=> b!4751568 (= e!2963992 (forall!11762 (t!360542 (toList!6116 lt!1915497)) (ite c!811204 lambda!222077 lambda!222079)))))

(assert (= (and d!1518716 (not res!2014956)) b!4751567))

(assert (= (and b!4751567 res!2014957) b!4751568))

(declare-fun b_lambda!183207 () Bool)

(assert (=> (not b_lambda!183207) (not b!4751567)))

(declare-fun m!5714499 () Bool)

(assert (=> b!4751567 m!5714499))

(declare-fun m!5714501 () Bool)

(assert (=> b!4751568 m!5714501))

(assert (=> bm!332854 d!1518716))

(declare-fun d!1518718 () Bool)

(declare-fun res!2014958 () Bool)

(declare-fun e!2963993 () Bool)

(assert (=> d!1518718 (=> res!2014958 e!2963993)))

(assert (=> d!1518718 (= res!2014958 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915497 t!14174))))))

(assert (=> d!1518718 (= (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222108) e!2963993)))

(declare-fun b!4751569 () Bool)

(declare-fun e!2963994 () Bool)

(assert (=> b!4751569 (= e!2963993 e!2963994)))

(declare-fun res!2014959 () Bool)

(assert (=> b!4751569 (=> (not res!2014959) (not e!2963994))))

(assert (=> b!4751569 (= res!2014959 (dynLambda!21900 lambda!222108 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174)))))))

(declare-fun b!4751570 () Bool)

(assert (=> b!4751570 (= e!2963994 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915497 t!14174))) lambda!222108))))

(assert (= (and d!1518718 (not res!2014958)) b!4751569))

(assert (= (and b!4751569 res!2014959) b!4751570))

(declare-fun b_lambda!183209 () Bool)

(assert (=> (not b_lambda!183209) (not b!4751569)))

(declare-fun m!5714503 () Bool)

(assert (=> b!4751569 m!5714503))

(declare-fun m!5714505 () Bool)

(assert (=> b!4751570 m!5714505))

(assert (=> b!4751353 d!1518718))

(declare-fun d!1518720 () Bool)

(declare-fun res!2014960 () Bool)

(declare-fun e!2963995 () Bool)

(assert (=> d!1518720 (=> res!2014960 e!2963995)))

(assert (=> d!1518720 (= res!2014960 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))))))

(assert (=> d!1518720 (= (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222069) e!2963995)))

(declare-fun b!4751571 () Bool)

(declare-fun e!2963996 () Bool)

(assert (=> b!4751571 (= e!2963995 e!2963996)))

(declare-fun res!2014961 () Bool)

(assert (=> b!4751571 (=> (not res!2014961) (not e!2963996))))

(assert (=> b!4751571 (= res!2014961 (dynLambda!21900 lambda!222069 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))))))))

(declare-fun b!4751572 () Bool)

(assert (=> b!4751572 (= e!2963996 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))) lambda!222069))))

(assert (= (and d!1518720 (not res!2014960)) b!4751571))

(assert (= (and b!4751571 res!2014961) b!4751572))

(declare-fun b_lambda!183211 () Bool)

(assert (=> (not b_lambda!183211) (not b!4751571)))

(declare-fun m!5714507 () Bool)

(assert (=> b!4751571 m!5714507))

(declare-fun m!5714509 () Bool)

(assert (=> b!4751572 m!5714509))

(assert (=> b!4751271 d!1518720))

(declare-fun d!1518722 () Bool)

(declare-fun res!2014962 () Bool)

(declare-fun e!2963997 () Bool)

(assert (=> d!1518722 (=> res!2014962 e!2963997)))

(assert (=> d!1518722 (= res!2014962 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1518722 (= (forall!11762 (toList!6116 acc!1214) (ite c!811209 lambda!222097 lambda!222099)) e!2963997)))

(declare-fun b!4751573 () Bool)

(declare-fun e!2963998 () Bool)

(assert (=> b!4751573 (= e!2963997 e!2963998)))

(declare-fun res!2014963 () Bool)

(assert (=> b!4751573 (=> (not res!2014963) (not e!2963998))))

(assert (=> b!4751573 (= res!2014963 (dynLambda!21900 (ite c!811209 lambda!222097 lambda!222099) (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4751574 () Bool)

(assert (=> b!4751574 (= e!2963998 (forall!11762 (t!360542 (toList!6116 acc!1214)) (ite c!811209 lambda!222097 lambda!222099)))))

(assert (= (and d!1518722 (not res!2014962)) b!4751573))

(assert (= (and b!4751573 res!2014963) b!4751574))

(declare-fun b_lambda!183213 () Bool)

(assert (=> (not b_lambda!183213) (not b!4751573)))

(declare-fun m!5714511 () Bool)

(assert (=> b!4751573 m!5714511))

(declare-fun m!5714513 () Bool)

(assert (=> b!4751574 m!5714513))

(assert (=> bm!332869 d!1518722))

(declare-fun d!1518724 () Bool)

(declare-fun res!2014964 () Bool)

(declare-fun e!2963999 () Bool)

(assert (=> d!1518724 (=> res!2014964 e!2963999)))

(assert (=> d!1518724 (= res!2014964 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518724 (= (forall!11762 (t!360542 l!14304) lambda!222094) e!2963999)))

(declare-fun b!4751575 () Bool)

(declare-fun e!2964000 () Bool)

(assert (=> b!4751575 (= e!2963999 e!2964000)))

(declare-fun res!2014965 () Bool)

(assert (=> b!4751575 (=> (not res!2014965) (not e!2964000))))

(assert (=> b!4751575 (= res!2014965 (dynLambda!21900 lambda!222094 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751576 () Bool)

(assert (=> b!4751576 (= e!2964000 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222094))))

(assert (= (and d!1518724 (not res!2014964)) b!4751575))

(assert (= (and b!4751575 res!2014965) b!4751576))

(declare-fun b_lambda!183215 () Bool)

(assert (=> (not b_lambda!183215) (not b!4751575)))

(declare-fun m!5714515 () Bool)

(assert (=> b!4751575 m!5714515))

(declare-fun m!5714517 () Bool)

(assert (=> b!4751576 m!5714517))

(assert (=> d!1518604 d!1518724))

(declare-fun d!1518726 () Bool)

(declare-fun res!2014966 () Bool)

(declare-fun e!2964001 () Bool)

(assert (=> d!1518726 (=> res!2014966 e!2964001)))

(assert (=> d!1518726 (= res!2014966 (not ((_ is Cons!53086) (t!360542 l!14304))))))

(assert (=> d!1518726 (= (noDuplicateKeys!2148 (t!360542 l!14304)) e!2964001)))

(declare-fun b!4751577 () Bool)

(declare-fun e!2964002 () Bool)

(assert (=> b!4751577 (= e!2964001 e!2964002)))

(declare-fun res!2014967 () Bool)

(assert (=> b!4751577 (=> (not res!2014967) (not e!2964002))))

(assert (=> b!4751577 (= res!2014967 (not (containsKey!3557 (t!360542 (t!360542 l!14304)) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751578 () Bool)

(assert (=> b!4751578 (= e!2964002 (noDuplicateKeys!2148 (t!360542 (t!360542 l!14304))))))

(assert (= (and d!1518726 (not res!2014966)) b!4751577))

(assert (= (and b!4751577 res!2014967) b!4751578))

(declare-fun m!5714519 () Bool)

(assert (=> b!4751577 m!5714519))

(declare-fun m!5714521 () Bool)

(assert (=> b!4751578 m!5714521))

(assert (=> d!1518604 d!1518726))

(assert (=> d!1518556 d!1518700))

(declare-fun d!1518728 () Bool)

(declare-fun c!811269 () Bool)

(assert (=> d!1518728 (= c!811269 ((_ is Nil!53086) (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304))))))))

(declare-fun e!2964003 () (InoxSet tuple2!54856))

(assert (=> d!1518728 (= (content!9529 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304))))) e!2964003)))

(declare-fun b!4751579 () Bool)

(assert (=> b!4751579 (= e!2964003 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751580 () Bool)

(assert (=> b!4751580 (= e!2964003 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304))))) true) (content!9529 (t!360542 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) (+!2382 lt!1915494 (h!59483 l!14304))))))))))

(assert (= (and d!1518728 c!811269) b!4751579))

(assert (= (and d!1518728 (not c!811269)) b!4751580))

(declare-fun m!5714523 () Bool)

(assert (=> b!4751580 m!5714523))

(declare-fun m!5714525 () Bool)

(assert (=> b!4751580 m!5714525))

(assert (=> d!1518556 d!1518728))

(declare-fun d!1518730 () Bool)

(declare-fun lt!1916073 () Bool)

(assert (=> d!1518730 (= lt!1916073 (select (content!9529 (toList!6116 lt!1915738)) (h!59483 l!14304)))))

(declare-fun e!2964005 () Bool)

(assert (=> d!1518730 (= lt!1916073 e!2964005)))

(declare-fun res!2014969 () Bool)

(assert (=> d!1518730 (=> (not res!2014969) (not e!2964005))))

(assert (=> d!1518730 (= res!2014969 ((_ is Cons!53086) (toList!6116 lt!1915738)))))

(assert (=> d!1518730 (= (contains!16510 (toList!6116 lt!1915738) (h!59483 l!14304)) lt!1916073)))

(declare-fun b!4751581 () Bool)

(declare-fun e!2964004 () Bool)

(assert (=> b!4751581 (= e!2964005 e!2964004)))

(declare-fun res!2014968 () Bool)

(assert (=> b!4751581 (=> res!2014968 e!2964004)))

(assert (=> b!4751581 (= res!2014968 (= (h!59483 (toList!6116 lt!1915738)) (h!59483 l!14304)))))

(declare-fun b!4751582 () Bool)

(assert (=> b!4751582 (= e!2964004 (contains!16510 (t!360542 (toList!6116 lt!1915738)) (h!59483 l!14304)))))

(assert (= (and d!1518730 res!2014969) b!4751581))

(assert (= (and b!4751581 (not res!2014968)) b!4751582))

(declare-fun m!5714527 () Bool)

(assert (=> d!1518730 m!5714527))

(declare-fun m!5714529 () Bool)

(assert (=> d!1518730 m!5714529))

(declare-fun m!5714531 () Bool)

(assert (=> b!4751582 m!5714531))

(assert (=> b!4751291 d!1518730))

(declare-fun d!1518732 () Bool)

(declare-fun res!2014970 () Bool)

(declare-fun e!2964006 () Bool)

(assert (=> d!1518732 (=> res!2014970 e!2964006)))

(assert (=> d!1518732 (= res!2014970 ((_ is Nil!53086) l!14304))))

(assert (=> d!1518732 (= (forall!11762 l!14304 lambda!222088) e!2964006)))

(declare-fun b!4751583 () Bool)

(declare-fun e!2964007 () Bool)

(assert (=> b!4751583 (= e!2964006 e!2964007)))

(declare-fun res!2014971 () Bool)

(assert (=> b!4751583 (=> (not res!2014971) (not e!2964007))))

(assert (=> b!4751583 (= res!2014971 (dynLambda!21900 lambda!222088 (h!59483 l!14304)))))

(declare-fun b!4751584 () Bool)

(assert (=> b!4751584 (= e!2964007 (forall!11762 (t!360542 l!14304) lambda!222088))))

(assert (= (and d!1518732 (not res!2014970)) b!4751583))

(assert (= (and b!4751583 res!2014971) b!4751584))

(declare-fun b_lambda!183217 () Bool)

(assert (=> (not b_lambda!183217) (not b!4751583)))

(declare-fun m!5714533 () Bool)

(assert (=> b!4751583 m!5714533))

(declare-fun m!5714535 () Bool)

(assert (=> b!4751584 m!5714535))

(assert (=> d!1518594 d!1518732))

(assert (=> d!1518594 d!1518548))

(declare-fun d!1518734 () Bool)

(declare-fun res!2014972 () Bool)

(declare-fun e!2964008 () Bool)

(assert (=> d!1518734 (=> res!2014972 e!2964008)))

(assert (=> d!1518734 (= res!2014972 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1518734 (= (forall!11762 (toList!6116 acc!1214) lambda!222104) e!2964008)))

(declare-fun b!4751585 () Bool)

(declare-fun e!2964009 () Bool)

(assert (=> b!4751585 (= e!2964008 e!2964009)))

(declare-fun res!2014973 () Bool)

(assert (=> b!4751585 (=> (not res!2014973) (not e!2964009))))

(assert (=> b!4751585 (= res!2014973 (dynLambda!21900 lambda!222104 (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4751586 () Bool)

(assert (=> b!4751586 (= e!2964009 (forall!11762 (t!360542 (toList!6116 acc!1214)) lambda!222104))))

(assert (= (and d!1518734 (not res!2014972)) b!4751585))

(assert (= (and b!4751585 res!2014973) b!4751586))

(declare-fun b_lambda!183219 () Bool)

(assert (=> (not b_lambda!183219) (not b!4751585)))

(declare-fun m!5714537 () Bool)

(assert (=> b!4751585 m!5714537))

(declare-fun m!5714539 () Bool)

(assert (=> b!4751586 m!5714539))

(assert (=> b!4751348 d!1518734))

(declare-fun d!1518736 () Bool)

(declare-fun res!2014974 () Bool)

(declare-fun e!2964010 () Bool)

(assert (=> d!1518736 (=> res!2014974 e!2964010)))

(assert (=> d!1518736 (= res!2014974 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518736 (= (forall!11762 (toList!6116 lt!1915497) (ite c!811207 lambda!222089 lambda!222092)) e!2964010)))

(declare-fun b!4751587 () Bool)

(declare-fun e!2964011 () Bool)

(assert (=> b!4751587 (= e!2964010 e!2964011)))

(declare-fun res!2014975 () Bool)

(assert (=> b!4751587 (=> (not res!2014975) (not e!2964011))))

(assert (=> b!4751587 (= res!2014975 (dynLambda!21900 (ite c!811207 lambda!222089 lambda!222092) (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751588 () Bool)

(assert (=> b!4751588 (= e!2964011 (forall!11762 (t!360542 (toList!6116 lt!1915497)) (ite c!811207 lambda!222089 lambda!222092)))))

(assert (= (and d!1518736 (not res!2014974)) b!4751587))

(assert (= (and b!4751587 res!2014975) b!4751588))

(declare-fun b_lambda!183221 () Bool)

(assert (=> (not b_lambda!183221) (not b!4751587)))

(declare-fun m!5714541 () Bool)

(assert (=> b!4751587 m!5714541))

(declare-fun m!5714543 () Bool)

(assert (=> b!4751588 m!5714543))

(assert (=> bm!332863 d!1518736))

(declare-fun d!1518738 () Bool)

(declare-fun res!2014976 () Bool)

(declare-fun e!2964012 () Bool)

(assert (=> d!1518738 (=> res!2014976 e!2964012)))

(assert (=> d!1518738 (= res!2014976 ((_ is Nil!53086) (ite c!811211 (toList!6116 (+!2382 lt!1915497 t!14174)) (toList!6116 lt!1915925))))))

(assert (=> d!1518738 (= (forall!11762 (ite c!811211 (toList!6116 (+!2382 lt!1915497 t!14174)) (toList!6116 lt!1915925)) (ite c!811211 lambda!222105 lambda!222107)) e!2964012)))

(declare-fun b!4751589 () Bool)

(declare-fun e!2964013 () Bool)

(assert (=> b!4751589 (= e!2964012 e!2964013)))

(declare-fun res!2014977 () Bool)

(assert (=> b!4751589 (=> (not res!2014977) (not e!2964013))))

(assert (=> b!4751589 (= res!2014977 (dynLambda!21900 (ite c!811211 lambda!222105 lambda!222107) (h!59483 (ite c!811211 (toList!6116 (+!2382 lt!1915497 t!14174)) (toList!6116 lt!1915925)))))))

(declare-fun b!4751590 () Bool)

(assert (=> b!4751590 (= e!2964013 (forall!11762 (t!360542 (ite c!811211 (toList!6116 (+!2382 lt!1915497 t!14174)) (toList!6116 lt!1915925))) (ite c!811211 lambda!222105 lambda!222107)))))

(assert (= (and d!1518738 (not res!2014976)) b!4751589))

(assert (= (and b!4751589 res!2014977) b!4751590))

(declare-fun b_lambda!183223 () Bool)

(assert (=> (not b_lambda!183223) (not b!4751589)))

(declare-fun m!5714545 () Bool)

(assert (=> b!4751589 m!5714545))

(declare-fun m!5714547 () Bool)

(assert (=> b!4751590 m!5714547))

(assert (=> bm!332874 d!1518738))

(assert (=> d!1518586 d!1518710))

(declare-fun d!1518740 () Bool)

(declare-fun c!811270 () Bool)

(assert (=> d!1518740 (= c!811270 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915495 t!14174))))))

(declare-fun e!2964014 () (InoxSet tuple2!54856))

(assert (=> d!1518740 (= (content!9529 (toList!6116 (+!2382 lt!1915495 t!14174))) e!2964014)))

(declare-fun b!4751591 () Bool)

(assert (=> b!4751591 (= e!2964014 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751592 () Bool)

(assert (=> b!4751592 (= e!2964014 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 (+!2382 lt!1915495 t!14174))) true) (content!9529 (t!360542 (toList!6116 (+!2382 lt!1915495 t!14174))))))))

(assert (= (and d!1518740 c!811270) b!4751591))

(assert (= (and d!1518740 (not c!811270)) b!4751592))

(declare-fun m!5714549 () Bool)

(assert (=> b!4751592 m!5714549))

(declare-fun m!5714551 () Bool)

(assert (=> b!4751592 m!5714551))

(assert (=> d!1518586 d!1518740))

(declare-fun d!1518742 () Bool)

(declare-fun res!2014978 () Bool)

(declare-fun e!2964015 () Bool)

(assert (=> d!1518742 (=> res!2014978 e!2964015)))

(assert (=> d!1518742 (= res!2014978 ((_ is Nil!53086) (ite c!811201 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (toList!6116 lt!1915672))))))

(assert (=> d!1518742 (= (forall!11762 (ite c!811201 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (toList!6116 lt!1915672)) (ite c!811201 lambda!222065 lambda!222067)) e!2964015)))

(declare-fun b!4751593 () Bool)

(declare-fun e!2964016 () Bool)

(assert (=> b!4751593 (= e!2964015 e!2964016)))

(declare-fun res!2014979 () Bool)

(assert (=> b!4751593 (=> (not res!2014979) (not e!2964016))))

(assert (=> b!4751593 (= res!2014979 (dynLambda!21900 (ite c!811201 lambda!222065 lambda!222067) (h!59483 (ite c!811201 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (toList!6116 lt!1915672)))))))

(declare-fun b!4751594 () Bool)

(assert (=> b!4751594 (= e!2964016 (forall!11762 (t!360542 (ite c!811201 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (toList!6116 lt!1915672))) (ite c!811201 lambda!222065 lambda!222067)))))

(assert (= (and d!1518742 (not res!2014978)) b!4751593))

(assert (= (and b!4751593 res!2014979) b!4751594))

(declare-fun b_lambda!183225 () Bool)

(assert (=> (not b_lambda!183225) (not b!4751593)))

(declare-fun m!5714553 () Bool)

(assert (=> b!4751593 m!5714553))

(declare-fun m!5714555 () Bool)

(assert (=> b!4751594 m!5714555))

(assert (=> bm!332844 d!1518742))

(assert (=> b!4751217 d!1518726))

(declare-fun d!1518744 () Bool)

(declare-fun res!2014980 () Bool)

(declare-fun e!2964017 () Bool)

(assert (=> d!1518744 (=> res!2014980 e!2964017)))

(assert (=> d!1518744 (= res!2014980 ((_ is Nil!53086) (Cons!53086 t!14174 (t!360542 l!14304))))))

(assert (=> d!1518744 (= (forall!11762 (Cons!53086 t!14174 (t!360542 l!14304)) lambda!222079) e!2964017)))

(declare-fun b!4751595 () Bool)

(declare-fun e!2964018 () Bool)

(assert (=> b!4751595 (= e!2964017 e!2964018)))

(declare-fun res!2014981 () Bool)

(assert (=> b!4751595 (=> (not res!2014981) (not e!2964018))))

(assert (=> b!4751595 (= res!2014981 (dynLambda!21900 lambda!222079 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(declare-fun b!4751596 () Bool)

(assert (=> b!4751596 (= e!2964018 (forall!11762 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) lambda!222079))))

(assert (= (and d!1518744 (not res!2014980)) b!4751595))

(assert (= (and b!4751595 res!2014981) b!4751596))

(declare-fun b_lambda!183227 () Bool)

(assert (=> (not b_lambda!183227) (not b!4751595)))

(declare-fun m!5714557 () Bool)

(assert (=> b!4751595 m!5714557))

(assert (=> b!4751596 m!5713833))

(assert (=> b!4751294 d!1518744))

(declare-fun bs!1141799 () Bool)

(declare-fun d!1518746 () Bool)

(assert (= bs!1141799 (and d!1518746 b!4751304)))

(declare-fun lambda!222123 () Int)

(assert (=> bs!1141799 (= (= lt!1915754 lt!1915494) (= lambda!222123 lambda!222085))))

(declare-fun bs!1141800 () Bool)

(assert (= bs!1141800 (and d!1518746 d!1518558)))

(assert (=> bs!1141800 (= (= lt!1915754 lt!1915675) (= lambda!222123 lambda!222069))))

(declare-fun bs!1141801 () Bool)

(assert (= bs!1141801 (and d!1518746 b!4751534)))

(assert (=> bs!1141801 (= (= lt!1915754 lt!1916057) (= lambda!222123 lambda!222119))))

(declare-fun bs!1141802 () Bool)

(assert (= bs!1141802 (and d!1518746 d!1518594)))

(assert (=> bs!1141802 (= (= lt!1915754 lt!1915800) (= lambda!222123 lambda!222088))))

(declare-fun bs!1141803 () Bool)

(assert (= bs!1141803 (and d!1518746 d!1518706)))

(assert (=> bs!1141803 (= (= lt!1915754 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222123 lambda!222122))))

(declare-fun bs!1141804 () Bool)

(assert (= bs!1141804 (and d!1518746 b!4751294)))

(assert (=> bs!1141804 (= lambda!222123 lambda!222079)))

(declare-fun bs!1141805 () Bool)

(assert (= bs!1141805 (and d!1518746 b!4751305)))

(assert (=> bs!1141805 (= (= lt!1915754 lt!1915494) (= lambda!222123 lambda!222084))))

(assert (=> bs!1141804 (= (= lt!1915754 lt!1915497) (= lambda!222123 lambda!222078))))

(assert (=> bs!1141799 (= (= lt!1915754 lt!1915796) (= lambda!222123 lambda!222086))))

(declare-fun bs!1141806 () Bool)

(assert (= bs!1141806 (and d!1518746 b!4751295)))

(assert (=> bs!1141806 (= (= lt!1915754 lt!1915497) (= lambda!222123 lambda!222077))))

(declare-fun bs!1141807 () Bool)

(assert (= bs!1141807 (and d!1518746 b!4751349)))

(assert (=> bs!1141807 (= (= lt!1915754 (+!2382 lt!1915497 t!14174)) (= lambda!222123 lambda!222106))))

(declare-fun bs!1141808 () Bool)

(assert (= bs!1141808 (and d!1518746 b!4751337)))

(assert (=> bs!1141808 (= (= lt!1915754 lt!1915882) (= lambda!222123 lambda!222099))))

(declare-fun bs!1141809 () Bool)

(assert (= bs!1141809 (and d!1518746 d!1518624)))

(assert (=> bs!1141809 (= (= lt!1915754 lt!1915907) (= lambda!222123 lambda!222104))))

(declare-fun bs!1141810 () Bool)

(assert (= bs!1141810 (and d!1518746 d!1518676)))

(assert (=> bs!1141810 (= (= lt!1915754 lt!1915903) (= lambda!222123 lambda!222116))))

(declare-fun bs!1141811 () Bool)

(assert (= bs!1141811 (and d!1518746 b!4751315)))

(assert (=> bs!1141811 (= (= lt!1915754 lt!1915497) (= lambda!222123 lambda!222091))))

(declare-fun bs!1141812 () Bool)

(assert (= bs!1141812 (and d!1518746 d!1518686)))

(assert (=> bs!1141812 (= (= lt!1915754 lt!1916061) (= lambda!222123 lambda!222120))))

(declare-fun bs!1141813 () Bool)

(assert (= bs!1141813 (and d!1518746 b!4751338)))

(assert (=> bs!1141813 (= (= lt!1915754 acc!1214) (= lambda!222123 lambda!222097))))

(declare-fun bs!1141814 () Bool)

(assert (= bs!1141814 (and d!1518746 b!4751350)))

(assert (=> bs!1141814 (= (= lt!1915754 (+!2382 lt!1915497 t!14174)) (= lambda!222123 lambda!222105))))

(declare-fun bs!1141815 () Bool)

(assert (= bs!1141815 (and d!1518746 b!4751267)))

(assert (=> bs!1141815 (= (= lt!1915754 lt!1915671) (= lambda!222123 lambda!222067))))

(declare-fun bs!1141816 () Bool)

(assert (= bs!1141816 (and d!1518746 b!4751268)))

(assert (=> bs!1141816 (= (= lt!1915754 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222123 lambda!222065))))

(declare-fun bs!1141817 () Bool)

(assert (= bs!1141817 (and d!1518746 b!4751535)))

(assert (=> bs!1141817 (= (= lt!1915754 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222123 lambda!222117))))

(declare-fun bs!1141818 () Bool)

(assert (= bs!1141818 (and d!1518746 b!4751344)))

(assert (=> bs!1141818 (= (= lt!1915754 lt!1915903) (= lambda!222123 lambda!222103))))

(assert (=> bs!1141801 (= (= lt!1915754 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222123 lambda!222118))))

(assert (=> bs!1141807 (= (= lt!1915754 lt!1915924) (= lambda!222123 lambda!222107))))

(assert (=> bs!1141811 (= (= lt!1915754 lt!1915829) (= lambda!222123 lambda!222092))))

(declare-fun bs!1141819 () Bool)

(assert (= bs!1141819 (and d!1518746 d!1518694)))

(assert (=> bs!1141819 (= (= lt!1915754 (+!2382 lt!1915497 t!14174)) (= lambda!222123 lambda!222121))))

(declare-fun bs!1141820 () Bool)

(assert (= bs!1141820 (and d!1518746 b!4751345)))

(assert (=> bs!1141820 (= (= lt!1915754 acc!1214) (= lambda!222123 lambda!222101))))

(declare-fun bs!1141821 () Bool)

(assert (= bs!1141821 (and d!1518746 d!1518628)))

(assert (=> bs!1141821 (= (= lt!1915754 lt!1915928) (= lambda!222123 lambda!222108))))

(declare-fun bs!1141822 () Bool)

(assert (= bs!1141822 (and d!1518746 d!1518590)))

(assert (=> bs!1141822 (= (= lt!1915754 lt!1915758) (= lambda!222123 lambda!222081))))

(declare-fun bs!1141823 () Bool)

(assert (= bs!1141823 (and d!1518746 b!4751316)))

(assert (=> bs!1141823 (= (= lt!1915754 lt!1915497) (= lambda!222123 lambda!222089))))

(assert (=> bs!1141815 (= (= lt!1915754 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222123 lambda!222066))))

(assert (=> bs!1141808 (= (= lt!1915754 acc!1214) (= lambda!222123 lambda!222098))))

(declare-fun bs!1141824 () Bool)

(assert (= bs!1141824 (and d!1518746 d!1518668)))

(assert (=> bs!1141824 (= (= lt!1915754 lt!1915494) (= lambda!222123 lambda!222111))))

(declare-fun bs!1141825 () Bool)

(assert (= bs!1141825 (and d!1518746 d!1518618)))

(assert (=> bs!1141825 (= (= lt!1915754 lt!1915886) (= lambda!222123 lambda!222100))))

(declare-fun bs!1141826 () Bool)

(assert (= bs!1141826 (and d!1518746 d!1518604)))

(assert (=> bs!1141826 (= (= lt!1915754 lt!1915833) (= lambda!222123 lambda!222094))))

(assert (=> bs!1141818 (= (= lt!1915754 acc!1214) (= lambda!222123 lambda!222102))))

(assert (=> d!1518746 true))

(assert (=> d!1518746 (forall!11762 (toList!6116 lt!1915497) lambda!222123)))

(declare-fun lt!1916074 () Unit!135894)

(assert (=> d!1518746 (= lt!1916074 (choose!33826 lt!1915497 lt!1915754 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> d!1518746 (forall!11762 (toList!6116 (+!2382 lt!1915497 (tuple2!54857 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))) lambda!222123)))

(assert (=> d!1518746 (= (addForallContainsKeyThenBeforeAdding!876 lt!1915497 lt!1915754 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lt!1916074)))

(declare-fun bs!1141827 () Bool)

(assert (= bs!1141827 d!1518746))

(declare-fun m!5714559 () Bool)

(assert (=> bs!1141827 m!5714559))

(declare-fun m!5714561 () Bool)

(assert (=> bs!1141827 m!5714561))

(declare-fun m!5714563 () Bool)

(assert (=> bs!1141827 m!5714563))

(declare-fun m!5714565 () Bool)

(assert (=> bs!1141827 m!5714565))

(assert (=> b!4751294 d!1518746))

(declare-fun d!1518748 () Bool)

(declare-fun res!2014982 () Bool)

(declare-fun e!2964019 () Bool)

(assert (=> d!1518748 (=> res!2014982 e!2964019)))

(assert (=> d!1518748 (= res!2014982 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518748 (= (forall!11762 (toList!6116 lt!1915497) lambda!222078) e!2964019)))

(declare-fun b!4751597 () Bool)

(declare-fun e!2964020 () Bool)

(assert (=> b!4751597 (= e!2964019 e!2964020)))

(declare-fun res!2014983 () Bool)

(assert (=> b!4751597 (=> (not res!2014983) (not e!2964020))))

(assert (=> b!4751597 (= res!2014983 (dynLambda!21900 lambda!222078 (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751598 () Bool)

(assert (=> b!4751598 (= e!2964020 (forall!11762 (t!360542 (toList!6116 lt!1915497)) lambda!222078))))

(assert (= (and d!1518748 (not res!2014982)) b!4751597))

(assert (= (and b!4751597 res!2014983) b!4751598))

(declare-fun b_lambda!183229 () Bool)

(assert (=> (not b_lambda!183229) (not b!4751597)))

(declare-fun m!5714567 () Bool)

(assert (=> b!4751597 m!5714567))

(declare-fun m!5714569 () Bool)

(assert (=> b!4751598 m!5714569))

(assert (=> b!4751294 d!1518748))

(declare-fun d!1518750 () Bool)

(declare-fun res!2014984 () Bool)

(declare-fun e!2964021 () Bool)

(assert (=> d!1518750 (=> res!2014984 e!2964021)))

(assert (=> d!1518750 (= res!2014984 ((_ is Nil!53086) (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (=> d!1518750 (= (forall!11762 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) lambda!222079) e!2964021)))

(declare-fun b!4751599 () Bool)

(declare-fun e!2964022 () Bool)

(assert (=> b!4751599 (= e!2964021 e!2964022)))

(declare-fun res!2014985 () Bool)

(assert (=> b!4751599 (=> (not res!2014985) (not e!2964022))))

(assert (=> b!4751599 (= res!2014985 (dynLambda!21900 lambda!222079 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun b!4751600 () Bool)

(assert (=> b!4751600 (= e!2964022 (forall!11762 (t!360542 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))) lambda!222079))))

(assert (= (and d!1518750 (not res!2014984)) b!4751599))

(assert (= (and b!4751599 res!2014985) b!4751600))

(declare-fun b_lambda!183231 () Bool)

(assert (=> (not b_lambda!183231) (not b!4751599)))

(declare-fun m!5714571 () Bool)

(assert (=> b!4751599 m!5714571))

(declare-fun m!5714573 () Bool)

(assert (=> b!4751600 m!5714573))

(assert (=> b!4751294 d!1518750))

(declare-fun d!1518752 () Bool)

(declare-fun res!2014986 () Bool)

(declare-fun e!2964023 () Bool)

(assert (=> d!1518752 (=> res!2014986 e!2964023)))

(assert (=> d!1518752 (= res!2014986 ((_ is Nil!53086) (toList!6116 lt!1915755)))))

(assert (=> d!1518752 (= (forall!11762 (toList!6116 lt!1915755) lambda!222079) e!2964023)))

(declare-fun b!4751601 () Bool)

(declare-fun e!2964024 () Bool)

(assert (=> b!4751601 (= e!2964023 e!2964024)))

(declare-fun res!2014987 () Bool)

(assert (=> b!4751601 (=> (not res!2014987) (not e!2964024))))

(assert (=> b!4751601 (= res!2014987 (dynLambda!21900 lambda!222079 (h!59483 (toList!6116 lt!1915755))))))

(declare-fun b!4751602 () Bool)

(assert (=> b!4751602 (= e!2964024 (forall!11762 (t!360542 (toList!6116 lt!1915755)) lambda!222079))))

(assert (= (and d!1518752 (not res!2014986)) b!4751601))

(assert (= (and b!4751601 res!2014987) b!4751602))

(declare-fun b_lambda!183233 () Bool)

(assert (=> (not b_lambda!183233) (not b!4751601)))

(declare-fun m!5714575 () Bool)

(assert (=> b!4751601 m!5714575))

(declare-fun m!5714577 () Bool)

(assert (=> b!4751602 m!5714577))

(assert (=> b!4751294 d!1518752))

(declare-fun b!4751603 () Bool)

(declare-fun e!2964029 () List!53211)

(assert (=> b!4751603 (= e!2964029 (getKeysList!1003 (toList!6116 lt!1915754)))))

(declare-fun b!4751604 () Bool)

(declare-fun e!2964027 () Unit!135894)

(declare-fun e!2964030 () Unit!135894)

(assert (=> b!4751604 (= e!2964027 e!2964030)))

(declare-fun c!811272 () Bool)

(declare-fun call!332907 () Bool)

(assert (=> b!4751604 (= c!811272 call!332907)))

(declare-fun b!4751605 () Bool)

(declare-fun e!2964025 () Bool)

(assert (=> b!4751605 (= e!2964025 (not (contains!16512 (keys!19162 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun b!4751606 () Bool)

(assert (=> b!4751606 (= e!2964029 (keys!19162 lt!1915754))))

(declare-fun b!4751607 () Bool)

(declare-fun Unit!136073 () Unit!135894)

(assert (=> b!4751607 (= e!2964030 Unit!136073)))

(declare-fun b!4751608 () Bool)

(declare-fun e!2964028 () Bool)

(declare-fun e!2964026 () Bool)

(assert (=> b!4751608 (= e!2964028 e!2964026)))

(declare-fun res!2014988 () Bool)

(assert (=> b!4751608 (=> (not res!2014988) (not e!2964026))))

(assert (=> b!4751608 (= res!2014988 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun b!4751609 () Bool)

(declare-fun lt!1916076 () Unit!135894)

(assert (=> b!4751609 (= e!2964027 lt!1916076)))

(declare-fun lt!1916079 () Unit!135894)

(assert (=> b!4751609 (= lt!1916079 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> b!4751609 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun lt!1916078 () Unit!135894)

(assert (=> b!4751609 (= lt!1916078 lt!1916079)))

(assert (=> b!4751609 (= lt!1916076 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> b!4751609 call!332907))

(declare-fun b!4751610 () Bool)

(assert (=> b!4751610 (= e!2964026 (contains!16512 (keys!19162 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun d!1518754 () Bool)

(assert (=> d!1518754 e!2964028))

(declare-fun res!2014989 () Bool)

(assert (=> d!1518754 (=> res!2014989 e!2964028)))

(assert (=> d!1518754 (= res!2014989 e!2964025)))

(declare-fun res!2014990 () Bool)

(assert (=> d!1518754 (=> (not res!2014990) (not e!2964025))))

(declare-fun lt!1916075 () Bool)

(assert (=> d!1518754 (= res!2014990 (not lt!1916075))))

(declare-fun lt!1916081 () Bool)

(assert (=> d!1518754 (= lt!1916075 lt!1916081)))

(declare-fun lt!1916077 () Unit!135894)

(assert (=> d!1518754 (= lt!1916077 e!2964027)))

(declare-fun c!811271 () Bool)

(assert (=> d!1518754 (= c!811271 lt!1916081)))

(assert (=> d!1518754 (= lt!1916081 (containsKey!3558 (toList!6116 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> d!1518754 (= (contains!16509 lt!1915754 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lt!1916075)))

(declare-fun b!4751611 () Bool)

(assert (=> b!4751611 false))

(declare-fun lt!1916082 () Unit!135894)

(declare-fun lt!1916080 () Unit!135894)

(assert (=> b!4751611 (= lt!1916082 lt!1916080)))

(assert (=> b!4751611 (containsKey!3558 (toList!6116 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (=> b!4751611 (= lt!1916080 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915754) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun Unit!136074 () Unit!135894)

(assert (=> b!4751611 (= e!2964030 Unit!136074)))

(declare-fun bm!332902 () Bool)

(assert (=> bm!332902 (= call!332907 (contains!16512 e!2964029 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun c!811273 () Bool)

(assert (=> bm!332902 (= c!811273 c!811271)))

(assert (= (and d!1518754 c!811271) b!4751609))

(assert (= (and d!1518754 (not c!811271)) b!4751604))

(assert (= (and b!4751604 c!811272) b!4751611))

(assert (= (and b!4751604 (not c!811272)) b!4751607))

(assert (= (or b!4751609 b!4751604) bm!332902))

(assert (= (and bm!332902 c!811273) b!4751603))

(assert (= (and bm!332902 (not c!811273)) b!4751606))

(assert (= (and d!1518754 res!2014990) b!4751605))

(assert (= (and d!1518754 (not res!2014989)) b!4751608))

(assert (= (and b!4751608 res!2014988) b!4751610))

(declare-fun m!5714579 () Bool)

(assert (=> b!4751603 m!5714579))

(declare-fun m!5714581 () Bool)

(assert (=> b!4751605 m!5714581))

(assert (=> b!4751605 m!5714581))

(declare-fun m!5714583 () Bool)

(assert (=> b!4751605 m!5714583))

(assert (=> b!4751610 m!5714581))

(assert (=> b!4751610 m!5714581))

(assert (=> b!4751610 m!5714583))

(declare-fun m!5714585 () Bool)

(assert (=> bm!332902 m!5714585))

(declare-fun m!5714587 () Bool)

(assert (=> b!4751608 m!5714587))

(assert (=> b!4751608 m!5714587))

(declare-fun m!5714589 () Bool)

(assert (=> b!4751608 m!5714589))

(declare-fun m!5714591 () Bool)

(assert (=> d!1518754 m!5714591))

(assert (=> b!4751611 m!5714591))

(declare-fun m!5714593 () Bool)

(assert (=> b!4751611 m!5714593))

(assert (=> b!4751606 m!5714581))

(declare-fun m!5714595 () Bool)

(assert (=> b!4751609 m!5714595))

(assert (=> b!4751609 m!5714587))

(assert (=> b!4751609 m!5714587))

(assert (=> b!4751609 m!5714589))

(declare-fun m!5714597 () Bool)

(assert (=> b!4751609 m!5714597))

(assert (=> b!4751294 d!1518754))

(declare-fun b!4751612 () Bool)

(declare-fun e!2964035 () List!53211)

(assert (=> b!4751612 (= e!2964035 (getKeysList!1003 (toList!6116 lt!1915755)))))

(declare-fun b!4751613 () Bool)

(declare-fun e!2964033 () Unit!135894)

(declare-fun e!2964036 () Unit!135894)

(assert (=> b!4751613 (= e!2964033 e!2964036)))

(declare-fun c!811275 () Bool)

(declare-fun call!332908 () Bool)

(assert (=> b!4751613 (= c!811275 call!332908)))

(declare-fun e!2964031 () Bool)

(declare-fun b!4751614 () Bool)

(assert (=> b!4751614 (= e!2964031 (not (contains!16512 (keys!19162 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun b!4751615 () Bool)

(assert (=> b!4751615 (= e!2964035 (keys!19162 lt!1915755))))

(declare-fun b!4751616 () Bool)

(declare-fun Unit!136075 () Unit!135894)

(assert (=> b!4751616 (= e!2964036 Unit!136075)))

(declare-fun b!4751617 () Bool)

(declare-fun e!2964034 () Bool)

(declare-fun e!2964032 () Bool)

(assert (=> b!4751617 (= e!2964034 e!2964032)))

(declare-fun res!2014991 () Bool)

(assert (=> b!4751617 (=> (not res!2014991) (not e!2964032))))

(assert (=> b!4751617 (= res!2014991 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun b!4751618 () Bool)

(declare-fun lt!1916084 () Unit!135894)

(assert (=> b!4751618 (= e!2964033 lt!1916084)))

(declare-fun lt!1916087 () Unit!135894)

(assert (=> b!4751618 (= lt!1916087 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> b!4751618 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun lt!1916086 () Unit!135894)

(assert (=> b!4751618 (= lt!1916086 lt!1916087)))

(assert (=> b!4751618 (= lt!1916084 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> b!4751618 call!332908))

(declare-fun b!4751619 () Bool)

(assert (=> b!4751619 (= e!2964032 (contains!16512 (keys!19162 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun d!1518756 () Bool)

(assert (=> d!1518756 e!2964034))

(declare-fun res!2014992 () Bool)

(assert (=> d!1518756 (=> res!2014992 e!2964034)))

(assert (=> d!1518756 (= res!2014992 e!2964031)))

(declare-fun res!2014993 () Bool)

(assert (=> d!1518756 (=> (not res!2014993) (not e!2964031))))

(declare-fun lt!1916083 () Bool)

(assert (=> d!1518756 (= res!2014993 (not lt!1916083))))

(declare-fun lt!1916089 () Bool)

(assert (=> d!1518756 (= lt!1916083 lt!1916089)))

(declare-fun lt!1916085 () Unit!135894)

(assert (=> d!1518756 (= lt!1916085 e!2964033)))

(declare-fun c!811274 () Bool)

(assert (=> d!1518756 (= c!811274 lt!1916089)))

(assert (=> d!1518756 (= lt!1916089 (containsKey!3558 (toList!6116 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> d!1518756 (= (contains!16509 lt!1915755 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lt!1916083)))

(declare-fun b!4751620 () Bool)

(assert (=> b!4751620 false))

(declare-fun lt!1916090 () Unit!135894)

(declare-fun lt!1916088 () Unit!135894)

(assert (=> b!4751620 (= lt!1916090 lt!1916088)))

(assert (=> b!4751620 (containsKey!3558 (toList!6116 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (=> b!4751620 (= lt!1916088 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915755) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun Unit!136076 () Unit!135894)

(assert (=> b!4751620 (= e!2964036 Unit!136076)))

(declare-fun bm!332903 () Bool)

(assert (=> bm!332903 (= call!332908 (contains!16512 e!2964035 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun c!811276 () Bool)

(assert (=> bm!332903 (= c!811276 c!811274)))

(assert (= (and d!1518756 c!811274) b!4751618))

(assert (= (and d!1518756 (not c!811274)) b!4751613))

(assert (= (and b!4751613 c!811275) b!4751620))

(assert (= (and b!4751613 (not c!811275)) b!4751616))

(assert (= (or b!4751618 b!4751613) bm!332903))

(assert (= (and bm!332903 c!811276) b!4751612))

(assert (= (and bm!332903 (not c!811276)) b!4751615))

(assert (= (and d!1518756 res!2014993) b!4751614))

(assert (= (and d!1518756 (not res!2014992)) b!4751617))

(assert (= (and b!4751617 res!2014991) b!4751619))

(declare-fun m!5714599 () Bool)

(assert (=> b!4751612 m!5714599))

(declare-fun m!5714601 () Bool)

(assert (=> b!4751614 m!5714601))

(assert (=> b!4751614 m!5714601))

(declare-fun m!5714603 () Bool)

(assert (=> b!4751614 m!5714603))

(assert (=> b!4751619 m!5714601))

(assert (=> b!4751619 m!5714601))

(assert (=> b!4751619 m!5714603))

(declare-fun m!5714605 () Bool)

(assert (=> bm!332903 m!5714605))

(declare-fun m!5714607 () Bool)

(assert (=> b!4751617 m!5714607))

(assert (=> b!4751617 m!5714607))

(declare-fun m!5714609 () Bool)

(assert (=> b!4751617 m!5714609))

(declare-fun m!5714611 () Bool)

(assert (=> d!1518756 m!5714611))

(assert (=> b!4751620 m!5714611))

(declare-fun m!5714613 () Bool)

(assert (=> b!4751620 m!5714613))

(assert (=> b!4751615 m!5714601))

(declare-fun m!5714615 () Bool)

(assert (=> b!4751618 m!5714615))

(assert (=> b!4751618 m!5714607))

(assert (=> b!4751618 m!5714607))

(assert (=> b!4751618 m!5714609))

(declare-fun m!5714617 () Bool)

(assert (=> b!4751618 m!5714617))

(assert (=> b!4751294 d!1518756))

(declare-fun d!1518758 () Bool)

(declare-fun e!2964037 () Bool)

(assert (=> d!1518758 e!2964037))

(declare-fun res!2014994 () Bool)

(assert (=> d!1518758 (=> (not res!2014994) (not e!2964037))))

(declare-fun lt!1916092 () ListMap!5541)

(assert (=> d!1518758 (= res!2014994 (contains!16509 lt!1916092 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun lt!1916093 () List!53210)

(assert (=> d!1518758 (= lt!1916092 (ListMap!5542 lt!1916093))))

(declare-fun lt!1916094 () Unit!135894)

(declare-fun lt!1916091 () Unit!135894)

(assert (=> d!1518758 (= lt!1916094 lt!1916091)))

(assert (=> d!1518758 (= (getValueByKey!2080 lt!1916093 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (Some!12529 (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> d!1518758 (= lt!1916091 (lemmaContainsTupThenGetReturnValue!1157 lt!1916093 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> d!1518758 (= lt!1916093 (insertNoDuplicatedKeys!665 (toList!6116 lt!1915497) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> d!1518758 (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1916092)))

(declare-fun b!4751621 () Bool)

(declare-fun res!2014995 () Bool)

(assert (=> b!4751621 (=> (not res!2014995) (not e!2964037))))

(assert (=> b!4751621 (= res!2014995 (= (getValueByKey!2080 (toList!6116 lt!1916092) (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (Some!12529 (_2!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun b!4751622 () Bool)

(assert (=> b!4751622 (= e!2964037 (contains!16510 (toList!6116 lt!1916092) (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (= (and d!1518758 res!2014994) b!4751621))

(assert (= (and b!4751621 res!2014995) b!4751622))

(declare-fun m!5714619 () Bool)

(assert (=> d!1518758 m!5714619))

(declare-fun m!5714621 () Bool)

(assert (=> d!1518758 m!5714621))

(declare-fun m!5714623 () Bool)

(assert (=> d!1518758 m!5714623))

(declare-fun m!5714625 () Bool)

(assert (=> d!1518758 m!5714625))

(declare-fun m!5714627 () Bool)

(assert (=> b!4751621 m!5714627))

(declare-fun m!5714629 () Bool)

(assert (=> b!4751622 m!5714629))

(assert (=> b!4751294 d!1518758))

(declare-fun d!1518760 () Bool)

(declare-fun res!2014996 () Bool)

(declare-fun e!2964038 () Bool)

(assert (=> d!1518760 (=> res!2014996 e!2964038)))

(assert (=> d!1518760 (= res!2014996 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518760 (= (forall!11762 (toList!6116 lt!1915497) lambda!222079) e!2964038)))

(declare-fun b!4751623 () Bool)

(declare-fun e!2964039 () Bool)

(assert (=> b!4751623 (= e!2964038 e!2964039)))

(declare-fun res!2014997 () Bool)

(assert (=> b!4751623 (=> (not res!2014997) (not e!2964039))))

(assert (=> b!4751623 (= res!2014997 (dynLambda!21900 lambda!222079 (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751624 () Bool)

(assert (=> b!4751624 (= e!2964039 (forall!11762 (t!360542 (toList!6116 lt!1915497)) lambda!222079))))

(assert (= (and d!1518760 (not res!2014996)) b!4751623))

(assert (= (and b!4751623 res!2014997) b!4751624))

(declare-fun b_lambda!183235 () Bool)

(assert (=> (not b_lambda!183235) (not b!4751623)))

(declare-fun m!5714631 () Bool)

(assert (=> b!4751623 m!5714631))

(declare-fun m!5714633 () Bool)

(assert (=> b!4751624 m!5714633))

(assert (=> b!4751294 d!1518760))

(declare-fun bs!1141828 () Bool)

(declare-fun b!4751626 () Bool)

(assert (= bs!1141828 (and b!4751626 b!4751304)))

(declare-fun lambda!222124 () Int)

(assert (=> bs!1141828 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915494) (= lambda!222124 lambda!222085))))

(declare-fun bs!1141829 () Bool)

(assert (= bs!1141829 (and b!4751626 d!1518558)))

(assert (=> bs!1141829 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915675) (= lambda!222124 lambda!222069))))

(declare-fun bs!1141830 () Bool)

(assert (= bs!1141830 (and b!4751626 b!4751534)))

(assert (=> bs!1141830 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1916057) (= lambda!222124 lambda!222119))))

(declare-fun bs!1141831 () Bool)

(assert (= bs!1141831 (and b!4751626 d!1518594)))

(assert (=> bs!1141831 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915800) (= lambda!222124 lambda!222088))))

(declare-fun bs!1141832 () Bool)

(assert (= bs!1141832 (and b!4751626 d!1518706)))

(assert (=> bs!1141832 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222124 lambda!222122))))

(declare-fun bs!1141833 () Bool)

(assert (= bs!1141833 (and b!4751626 d!1518746)))

(assert (=> bs!1141833 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915754) (= lambda!222124 lambda!222123))))

(declare-fun bs!1141834 () Bool)

(assert (= bs!1141834 (and b!4751626 b!4751294)))

(assert (=> bs!1141834 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915754) (= lambda!222124 lambda!222079))))

(declare-fun bs!1141835 () Bool)

(assert (= bs!1141835 (and b!4751626 b!4751305)))

(assert (=> bs!1141835 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915494) (= lambda!222124 lambda!222084))))

(assert (=> bs!1141834 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222124 lambda!222078))))

(assert (=> bs!1141828 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915796) (= lambda!222124 lambda!222086))))

(declare-fun bs!1141836 () Bool)

(assert (= bs!1141836 (and b!4751626 b!4751295)))

(assert (=> bs!1141836 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222124 lambda!222077))))

(declare-fun bs!1141837 () Bool)

(assert (= bs!1141837 (and b!4751626 b!4751349)))

(assert (=> bs!1141837 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915497 t!14174)) (= lambda!222124 lambda!222106))))

(declare-fun bs!1141838 () Bool)

(assert (= bs!1141838 (and b!4751626 b!4751337)))

(assert (=> bs!1141838 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915882) (= lambda!222124 lambda!222099))))

(declare-fun bs!1141839 () Bool)

(assert (= bs!1141839 (and b!4751626 d!1518624)))

(assert (=> bs!1141839 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915907) (= lambda!222124 lambda!222104))))

(declare-fun bs!1141840 () Bool)

(assert (= bs!1141840 (and b!4751626 d!1518676)))

(assert (=> bs!1141840 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915903) (= lambda!222124 lambda!222116))))

(declare-fun bs!1141841 () Bool)

(assert (= bs!1141841 (and b!4751626 b!4751315)))

(assert (=> bs!1141841 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222124 lambda!222091))))

(declare-fun bs!1141842 () Bool)

(assert (= bs!1141842 (and b!4751626 d!1518686)))

(assert (=> bs!1141842 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1916061) (= lambda!222124 lambda!222120))))

(declare-fun bs!1141843 () Bool)

(assert (= bs!1141843 (and b!4751626 b!4751338)))

(assert (=> bs!1141843 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222124 lambda!222097))))

(declare-fun bs!1141844 () Bool)

(assert (= bs!1141844 (and b!4751626 b!4751350)))

(assert (=> bs!1141844 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915497 t!14174)) (= lambda!222124 lambda!222105))))

(declare-fun bs!1141845 () Bool)

(assert (= bs!1141845 (and b!4751626 b!4751267)))

(assert (=> bs!1141845 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915671) (= lambda!222124 lambda!222067))))

(declare-fun bs!1141846 () Bool)

(assert (= bs!1141846 (and b!4751626 b!4751268)))

(assert (=> bs!1141846 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222124 lambda!222065))))

(declare-fun bs!1141847 () Bool)

(assert (= bs!1141847 (and b!4751626 b!4751535)))

(assert (=> bs!1141847 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222124 lambda!222117))))

(declare-fun bs!1141848 () Bool)

(assert (= bs!1141848 (and b!4751626 b!4751344)))

(assert (=> bs!1141848 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915903) (= lambda!222124 lambda!222103))))

(assert (=> bs!1141830 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222124 lambda!222118))))

(assert (=> bs!1141837 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915924) (= lambda!222124 lambda!222107))))

(assert (=> bs!1141841 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915829) (= lambda!222124 lambda!222092))))

(declare-fun bs!1141849 () Bool)

(assert (= bs!1141849 (and b!4751626 d!1518694)))

(assert (=> bs!1141849 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915497 t!14174)) (= lambda!222124 lambda!222121))))

(declare-fun bs!1141850 () Bool)

(assert (= bs!1141850 (and b!4751626 b!4751345)))

(assert (=> bs!1141850 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222124 lambda!222101))))

(declare-fun bs!1141851 () Bool)

(assert (= bs!1141851 (and b!4751626 d!1518628)))

(assert (=> bs!1141851 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915928) (= lambda!222124 lambda!222108))))

(declare-fun bs!1141852 () Bool)

(assert (= bs!1141852 (and b!4751626 d!1518590)))

(assert (=> bs!1141852 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915758) (= lambda!222124 lambda!222081))))

(declare-fun bs!1141853 () Bool)

(assert (= bs!1141853 (and b!4751626 b!4751316)))

(assert (=> bs!1141853 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222124 lambda!222089))))

(assert (=> bs!1141845 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222124 lambda!222066))))

(assert (=> bs!1141838 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222124 lambda!222098))))

(declare-fun bs!1141854 () Bool)

(assert (= bs!1141854 (and b!4751626 d!1518668)))

(assert (=> bs!1141854 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915494) (= lambda!222124 lambda!222111))))

(declare-fun bs!1141855 () Bool)

(assert (= bs!1141855 (and b!4751626 d!1518618)))

(assert (=> bs!1141855 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915886) (= lambda!222124 lambda!222100))))

(declare-fun bs!1141856 () Bool)

(assert (= bs!1141856 (and b!4751626 d!1518604)))

(assert (=> bs!1141856 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915833) (= lambda!222124 lambda!222094))))

(assert (=> bs!1141848 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222124 lambda!222102))))

(assert (=> b!4751626 true))

(declare-fun bs!1141857 () Bool)

(declare-fun b!4751625 () Bool)

(assert (= bs!1141857 (and b!4751625 b!4751304)))

(declare-fun lambda!222125 () Int)

(assert (=> bs!1141857 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915494) (= lambda!222125 lambda!222085))))

(declare-fun bs!1141858 () Bool)

(assert (= bs!1141858 (and b!4751625 d!1518558)))

(assert (=> bs!1141858 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915675) (= lambda!222125 lambda!222069))))

(declare-fun bs!1141859 () Bool)

(assert (= bs!1141859 (and b!4751625 b!4751534)))

(assert (=> bs!1141859 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1916057) (= lambda!222125 lambda!222119))))

(declare-fun bs!1141860 () Bool)

(assert (= bs!1141860 (and b!4751625 d!1518594)))

(assert (=> bs!1141860 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915800) (= lambda!222125 lambda!222088))))

(declare-fun bs!1141861 () Bool)

(assert (= bs!1141861 (and b!4751625 d!1518706)))

(assert (=> bs!1141861 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222125 lambda!222122))))

(declare-fun bs!1141862 () Bool)

(assert (= bs!1141862 (and b!4751625 d!1518746)))

(assert (=> bs!1141862 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915754) (= lambda!222125 lambda!222123))))

(declare-fun bs!1141863 () Bool)

(assert (= bs!1141863 (and b!4751625 b!4751294)))

(assert (=> bs!1141863 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915754) (= lambda!222125 lambda!222079))))

(declare-fun bs!1141864 () Bool)

(assert (= bs!1141864 (and b!4751625 b!4751626)))

(assert (=> bs!1141864 (= lambda!222125 lambda!222124)))

(declare-fun bs!1141865 () Bool)

(assert (= bs!1141865 (and b!4751625 b!4751305)))

(assert (=> bs!1141865 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915494) (= lambda!222125 lambda!222084))))

(assert (=> bs!1141863 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222125 lambda!222078))))

(assert (=> bs!1141857 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915796) (= lambda!222125 lambda!222086))))

(declare-fun bs!1141866 () Bool)

(assert (= bs!1141866 (and b!4751625 b!4751295)))

(assert (=> bs!1141866 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222125 lambda!222077))))

(declare-fun bs!1141867 () Bool)

(assert (= bs!1141867 (and b!4751625 b!4751349)))

(assert (=> bs!1141867 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915497 t!14174)) (= lambda!222125 lambda!222106))))

(declare-fun bs!1141868 () Bool)

(assert (= bs!1141868 (and b!4751625 b!4751337)))

(assert (=> bs!1141868 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915882) (= lambda!222125 lambda!222099))))

(declare-fun bs!1141869 () Bool)

(assert (= bs!1141869 (and b!4751625 d!1518624)))

(assert (=> bs!1141869 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915907) (= lambda!222125 lambda!222104))))

(declare-fun bs!1141870 () Bool)

(assert (= bs!1141870 (and b!4751625 d!1518676)))

(assert (=> bs!1141870 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915903) (= lambda!222125 lambda!222116))))

(declare-fun bs!1141871 () Bool)

(assert (= bs!1141871 (and b!4751625 b!4751315)))

(assert (=> bs!1141871 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222125 lambda!222091))))

(declare-fun bs!1141872 () Bool)

(assert (= bs!1141872 (and b!4751625 d!1518686)))

(assert (=> bs!1141872 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1916061) (= lambda!222125 lambda!222120))))

(declare-fun bs!1141873 () Bool)

(assert (= bs!1141873 (and b!4751625 b!4751338)))

(assert (=> bs!1141873 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222125 lambda!222097))))

(declare-fun bs!1141874 () Bool)

(assert (= bs!1141874 (and b!4751625 b!4751350)))

(assert (=> bs!1141874 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915497 t!14174)) (= lambda!222125 lambda!222105))))

(declare-fun bs!1141875 () Bool)

(assert (= bs!1141875 (and b!4751625 b!4751267)))

(assert (=> bs!1141875 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915671) (= lambda!222125 lambda!222067))))

(declare-fun bs!1141876 () Bool)

(assert (= bs!1141876 (and b!4751625 b!4751268)))

(assert (=> bs!1141876 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222125 lambda!222065))))

(declare-fun bs!1141877 () Bool)

(assert (= bs!1141877 (and b!4751625 b!4751535)))

(assert (=> bs!1141877 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222125 lambda!222117))))

(declare-fun bs!1141878 () Bool)

(assert (= bs!1141878 (and b!4751625 b!4751344)))

(assert (=> bs!1141878 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915903) (= lambda!222125 lambda!222103))))

(assert (=> bs!1141859 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222125 lambda!222118))))

(assert (=> bs!1141867 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915924) (= lambda!222125 lambda!222107))))

(assert (=> bs!1141871 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915829) (= lambda!222125 lambda!222092))))

(declare-fun bs!1141879 () Bool)

(assert (= bs!1141879 (and b!4751625 d!1518694)))

(assert (=> bs!1141879 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915497 t!14174)) (= lambda!222125 lambda!222121))))

(declare-fun bs!1141880 () Bool)

(assert (= bs!1141880 (and b!4751625 b!4751345)))

(assert (=> bs!1141880 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222125 lambda!222101))))

(declare-fun bs!1141881 () Bool)

(assert (= bs!1141881 (and b!4751625 d!1518628)))

(assert (=> bs!1141881 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915928) (= lambda!222125 lambda!222108))))

(declare-fun bs!1141882 () Bool)

(assert (= bs!1141882 (and b!4751625 d!1518590)))

(assert (=> bs!1141882 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915758) (= lambda!222125 lambda!222081))))

(declare-fun bs!1141883 () Bool)

(assert (= bs!1141883 (and b!4751625 b!4751316)))

(assert (=> bs!1141883 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915497) (= lambda!222125 lambda!222089))))

(assert (=> bs!1141875 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222125 lambda!222066))))

(assert (=> bs!1141868 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222125 lambda!222098))))

(declare-fun bs!1141884 () Bool)

(assert (= bs!1141884 (and b!4751625 d!1518668)))

(assert (=> bs!1141884 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915494) (= lambda!222125 lambda!222111))))

(declare-fun bs!1141885 () Bool)

(assert (= bs!1141885 (and b!4751625 d!1518618)))

(assert (=> bs!1141885 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915886) (= lambda!222125 lambda!222100))))

(declare-fun bs!1141886 () Bool)

(assert (= bs!1141886 (and b!4751625 d!1518604)))

(assert (=> bs!1141886 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1915833) (= lambda!222125 lambda!222094))))

(assert (=> bs!1141878 (= (= (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) acc!1214) (= lambda!222125 lambda!222102))))

(assert (=> b!4751625 true))

(declare-fun lt!1916104 () ListMap!5541)

(declare-fun lambda!222126 () Int)

(assert (=> bs!1141857 (= (= lt!1916104 lt!1915494) (= lambda!222126 lambda!222085))))

(assert (=> bs!1141858 (= (= lt!1916104 lt!1915675) (= lambda!222126 lambda!222069))))

(assert (=> bs!1141859 (= (= lt!1916104 lt!1916057) (= lambda!222126 lambda!222119))))

(assert (=> bs!1141860 (= (= lt!1916104 lt!1915800) (= lambda!222126 lambda!222088))))

(assert (=> bs!1141861 (= (= lt!1916104 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222126 lambda!222122))))

(assert (=> bs!1141862 (= (= lt!1916104 lt!1915754) (= lambda!222126 lambda!222123))))

(assert (=> bs!1141863 (= (= lt!1916104 lt!1915754) (= lambda!222126 lambda!222079))))

(assert (=> bs!1141864 (= (= lt!1916104 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222126 lambda!222124))))

(assert (=> bs!1141865 (= (= lt!1916104 lt!1915494) (= lambda!222126 lambda!222084))))

(assert (=> bs!1141863 (= (= lt!1916104 lt!1915497) (= lambda!222126 lambda!222078))))

(assert (=> bs!1141857 (= (= lt!1916104 lt!1915796) (= lambda!222126 lambda!222086))))

(assert (=> bs!1141866 (= (= lt!1916104 lt!1915497) (= lambda!222126 lambda!222077))))

(assert (=> bs!1141867 (= (= lt!1916104 (+!2382 lt!1915497 t!14174)) (= lambda!222126 lambda!222106))))

(assert (=> bs!1141868 (= (= lt!1916104 lt!1915882) (= lambda!222126 lambda!222099))))

(assert (=> bs!1141869 (= (= lt!1916104 lt!1915907) (= lambda!222126 lambda!222104))))

(assert (=> bs!1141870 (= (= lt!1916104 lt!1915903) (= lambda!222126 lambda!222116))))

(assert (=> bs!1141871 (= (= lt!1916104 lt!1915497) (= lambda!222126 lambda!222091))))

(assert (=> bs!1141872 (= (= lt!1916104 lt!1916061) (= lambda!222126 lambda!222120))))

(assert (=> bs!1141873 (= (= lt!1916104 acc!1214) (= lambda!222126 lambda!222097))))

(assert (=> bs!1141874 (= (= lt!1916104 (+!2382 lt!1915497 t!14174)) (= lambda!222126 lambda!222105))))

(assert (=> bs!1141875 (= (= lt!1916104 lt!1915671) (= lambda!222126 lambda!222067))))

(assert (=> bs!1141876 (= (= lt!1916104 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222126 lambda!222065))))

(assert (=> bs!1141877 (= (= lt!1916104 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222126 lambda!222117))))

(assert (=> bs!1141878 (= (= lt!1916104 lt!1915903) (= lambda!222126 lambda!222103))))

(assert (=> bs!1141859 (= (= lt!1916104 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222126 lambda!222118))))

(assert (=> bs!1141867 (= (= lt!1916104 lt!1915924) (= lambda!222126 lambda!222107))))

(assert (=> b!4751625 (= (= lt!1916104 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222126 lambda!222125))))

(assert (=> bs!1141871 (= (= lt!1916104 lt!1915829) (= lambda!222126 lambda!222092))))

(assert (=> bs!1141879 (= (= lt!1916104 (+!2382 lt!1915497 t!14174)) (= lambda!222126 lambda!222121))))

(assert (=> bs!1141880 (= (= lt!1916104 acc!1214) (= lambda!222126 lambda!222101))))

(assert (=> bs!1141881 (= (= lt!1916104 lt!1915928) (= lambda!222126 lambda!222108))))

(assert (=> bs!1141882 (= (= lt!1916104 lt!1915758) (= lambda!222126 lambda!222081))))

(assert (=> bs!1141883 (= (= lt!1916104 lt!1915497) (= lambda!222126 lambda!222089))))

(assert (=> bs!1141875 (= (= lt!1916104 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222126 lambda!222066))))

(assert (=> bs!1141868 (= (= lt!1916104 acc!1214) (= lambda!222126 lambda!222098))))

(assert (=> bs!1141884 (= (= lt!1916104 lt!1915494) (= lambda!222126 lambda!222111))))

(assert (=> bs!1141885 (= (= lt!1916104 lt!1915886) (= lambda!222126 lambda!222100))))

(assert (=> bs!1141886 (= (= lt!1916104 lt!1915833) (= lambda!222126 lambda!222094))))

(assert (=> bs!1141878 (= (= lt!1916104 acc!1214) (= lambda!222126 lambda!222102))))

(assert (=> b!4751625 true))

(declare-fun bs!1141887 () Bool)

(declare-fun d!1518762 () Bool)

(assert (= bs!1141887 (and d!1518762 b!4751304)))

(declare-fun lambda!222127 () Int)

(declare-fun lt!1916108 () ListMap!5541)

(assert (=> bs!1141887 (= (= lt!1916108 lt!1915494) (= lambda!222127 lambda!222085))))

(declare-fun bs!1141888 () Bool)

(assert (= bs!1141888 (and d!1518762 d!1518558)))

(assert (=> bs!1141888 (= (= lt!1916108 lt!1915675) (= lambda!222127 lambda!222069))))

(declare-fun bs!1141889 () Bool)

(assert (= bs!1141889 (and d!1518762 b!4751534)))

(assert (=> bs!1141889 (= (= lt!1916108 lt!1916057) (= lambda!222127 lambda!222119))))

(declare-fun bs!1141890 () Bool)

(assert (= bs!1141890 (and d!1518762 d!1518594)))

(assert (=> bs!1141890 (= (= lt!1916108 lt!1915800) (= lambda!222127 lambda!222088))))

(declare-fun bs!1141891 () Bool)

(assert (= bs!1141891 (and d!1518762 d!1518706)))

(assert (=> bs!1141891 (= (= lt!1916108 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222127 lambda!222122))))

(declare-fun bs!1141892 () Bool)

(assert (= bs!1141892 (and d!1518762 d!1518746)))

(assert (=> bs!1141892 (= (= lt!1916108 lt!1915754) (= lambda!222127 lambda!222123))))

(declare-fun bs!1141893 () Bool)

(assert (= bs!1141893 (and d!1518762 b!4751294)))

(assert (=> bs!1141893 (= (= lt!1916108 lt!1915754) (= lambda!222127 lambda!222079))))

(declare-fun bs!1141894 () Bool)

(assert (= bs!1141894 (and d!1518762 b!4751626)))

(assert (=> bs!1141894 (= (= lt!1916108 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222127 lambda!222124))))

(declare-fun bs!1141895 () Bool)

(assert (= bs!1141895 (and d!1518762 b!4751305)))

(assert (=> bs!1141895 (= (= lt!1916108 lt!1915494) (= lambda!222127 lambda!222084))))

(assert (=> bs!1141893 (= (= lt!1916108 lt!1915497) (= lambda!222127 lambda!222078))))

(assert (=> bs!1141887 (= (= lt!1916108 lt!1915796) (= lambda!222127 lambda!222086))))

(declare-fun bs!1141896 () Bool)

(assert (= bs!1141896 (and d!1518762 b!4751295)))

(assert (=> bs!1141896 (= (= lt!1916108 lt!1915497) (= lambda!222127 lambda!222077))))

(declare-fun bs!1141897 () Bool)

(assert (= bs!1141897 (and d!1518762 b!4751349)))

(assert (=> bs!1141897 (= (= lt!1916108 (+!2382 lt!1915497 t!14174)) (= lambda!222127 lambda!222106))))

(declare-fun bs!1141898 () Bool)

(assert (= bs!1141898 (and d!1518762 b!4751625)))

(assert (=> bs!1141898 (= (= lt!1916108 lt!1916104) (= lambda!222127 lambda!222126))))

(declare-fun bs!1141899 () Bool)

(assert (= bs!1141899 (and d!1518762 b!4751337)))

(assert (=> bs!1141899 (= (= lt!1916108 lt!1915882) (= lambda!222127 lambda!222099))))

(declare-fun bs!1141900 () Bool)

(assert (= bs!1141900 (and d!1518762 d!1518624)))

(assert (=> bs!1141900 (= (= lt!1916108 lt!1915907) (= lambda!222127 lambda!222104))))

(declare-fun bs!1141901 () Bool)

(assert (= bs!1141901 (and d!1518762 d!1518676)))

(assert (=> bs!1141901 (= (= lt!1916108 lt!1915903) (= lambda!222127 lambda!222116))))

(declare-fun bs!1141902 () Bool)

(assert (= bs!1141902 (and d!1518762 b!4751315)))

(assert (=> bs!1141902 (= (= lt!1916108 lt!1915497) (= lambda!222127 lambda!222091))))

(declare-fun bs!1141903 () Bool)

(assert (= bs!1141903 (and d!1518762 d!1518686)))

(assert (=> bs!1141903 (= (= lt!1916108 lt!1916061) (= lambda!222127 lambda!222120))))

(declare-fun bs!1141904 () Bool)

(assert (= bs!1141904 (and d!1518762 b!4751338)))

(assert (=> bs!1141904 (= (= lt!1916108 acc!1214) (= lambda!222127 lambda!222097))))

(declare-fun bs!1141905 () Bool)

(assert (= bs!1141905 (and d!1518762 b!4751350)))

(assert (=> bs!1141905 (= (= lt!1916108 (+!2382 lt!1915497 t!14174)) (= lambda!222127 lambda!222105))))

(declare-fun bs!1141906 () Bool)

(assert (= bs!1141906 (and d!1518762 b!4751267)))

(assert (=> bs!1141906 (= (= lt!1916108 lt!1915671) (= lambda!222127 lambda!222067))))

(declare-fun bs!1141907 () Bool)

(assert (= bs!1141907 (and d!1518762 b!4751268)))

(assert (=> bs!1141907 (= (= lt!1916108 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222127 lambda!222065))))

(declare-fun bs!1141908 () Bool)

(assert (= bs!1141908 (and d!1518762 b!4751535)))

(assert (=> bs!1141908 (= (= lt!1916108 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222127 lambda!222117))))

(declare-fun bs!1141909 () Bool)

(assert (= bs!1141909 (and d!1518762 b!4751344)))

(assert (=> bs!1141909 (= (= lt!1916108 lt!1915903) (= lambda!222127 lambda!222103))))

(assert (=> bs!1141889 (= (= lt!1916108 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222127 lambda!222118))))

(assert (=> bs!1141897 (= (= lt!1916108 lt!1915924) (= lambda!222127 lambda!222107))))

(assert (=> bs!1141898 (= (= lt!1916108 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222127 lambda!222125))))

(assert (=> bs!1141902 (= (= lt!1916108 lt!1915829) (= lambda!222127 lambda!222092))))

(declare-fun bs!1141910 () Bool)

(assert (= bs!1141910 (and d!1518762 d!1518694)))

(assert (=> bs!1141910 (= (= lt!1916108 (+!2382 lt!1915497 t!14174)) (= lambda!222127 lambda!222121))))

(declare-fun bs!1141911 () Bool)

(assert (= bs!1141911 (and d!1518762 b!4751345)))

(assert (=> bs!1141911 (= (= lt!1916108 acc!1214) (= lambda!222127 lambda!222101))))

(declare-fun bs!1141912 () Bool)

(assert (= bs!1141912 (and d!1518762 d!1518628)))

(assert (=> bs!1141912 (= (= lt!1916108 lt!1915928) (= lambda!222127 lambda!222108))))

(declare-fun bs!1141913 () Bool)

(assert (= bs!1141913 (and d!1518762 d!1518590)))

(assert (=> bs!1141913 (= (= lt!1916108 lt!1915758) (= lambda!222127 lambda!222081))))

(declare-fun bs!1141914 () Bool)

(assert (= bs!1141914 (and d!1518762 b!4751316)))

(assert (=> bs!1141914 (= (= lt!1916108 lt!1915497) (= lambda!222127 lambda!222089))))

(assert (=> bs!1141906 (= (= lt!1916108 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222127 lambda!222066))))

(assert (=> bs!1141899 (= (= lt!1916108 acc!1214) (= lambda!222127 lambda!222098))))

(declare-fun bs!1141915 () Bool)

(assert (= bs!1141915 (and d!1518762 d!1518668)))

(assert (=> bs!1141915 (= (= lt!1916108 lt!1915494) (= lambda!222127 lambda!222111))))

(declare-fun bs!1141916 () Bool)

(assert (= bs!1141916 (and d!1518762 d!1518618)))

(assert (=> bs!1141916 (= (= lt!1916108 lt!1915886) (= lambda!222127 lambda!222100))))

(declare-fun bs!1141917 () Bool)

(assert (= bs!1141917 (and d!1518762 d!1518604)))

(assert (=> bs!1141917 (= (= lt!1916108 lt!1915833) (= lambda!222127 lambda!222094))))

(assert (=> bs!1141909 (= (= lt!1916108 acc!1214) (= lambda!222127 lambda!222102))))

(assert (=> d!1518762 true))

(declare-fun e!2964041 () Bool)

(assert (=> d!1518762 e!2964041))

(declare-fun res!2014998 () Bool)

(assert (=> d!1518762 (=> (not res!2014998) (not e!2964041))))

(assert (=> d!1518762 (= res!2014998 (forall!11762 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) lambda!222127))))

(declare-fun e!2964042 () ListMap!5541)

(assert (=> d!1518762 (= lt!1916108 e!2964042)))

(declare-fun c!811277 () Bool)

(assert (=> d!1518762 (= c!811277 ((_ is Nil!53086) (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (=> d!1518762 (noDuplicateKeys!2148 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))))

(assert (=> d!1518762 (= (addToMapMapFromBucket!1572 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lt!1916108)))

(assert (=> b!4751625 (= e!2964042 lt!1916104)))

(declare-fun lt!1916105 () ListMap!5541)

(assert (=> b!4751625 (= lt!1916105 (+!2382 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> b!4751625 (= lt!1916104 (addToMapMapFromBucket!1572 (t!360542 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))) (+!2382 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun lt!1916111 () Unit!135894)

(declare-fun call!332909 () Unit!135894)

(assert (=> b!4751625 (= lt!1916111 call!332909)))

(assert (=> b!4751625 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lambda!222125)))

(declare-fun lt!1916098 () Unit!135894)

(assert (=> b!4751625 (= lt!1916098 lt!1916111)))

(declare-fun call!332911 () Bool)

(assert (=> b!4751625 call!332911))

(declare-fun lt!1916115 () Unit!135894)

(declare-fun Unit!136079 () Unit!135894)

(assert (=> b!4751625 (= lt!1916115 Unit!136079)))

(assert (=> b!4751625 (forall!11762 (t!360542 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))) lambda!222126)))

(declare-fun lt!1916100 () Unit!135894)

(declare-fun Unit!136080 () Unit!135894)

(assert (=> b!4751625 (= lt!1916100 Unit!136080)))

(declare-fun lt!1916109 () Unit!135894)

(declare-fun Unit!136081 () Unit!135894)

(assert (=> b!4751625 (= lt!1916109 Unit!136081)))

(declare-fun lt!1916102 () Unit!135894)

(assert (=> b!4751625 (= lt!1916102 (forallContained!3788 (toList!6116 lt!1916105) lambda!222126 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> b!4751625 (contains!16509 lt!1916105 (_1!30722 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun lt!1916110 () Unit!135894)

(declare-fun Unit!136082 () Unit!135894)

(assert (=> b!4751625 (= lt!1916110 Unit!136082)))

(assert (=> b!4751625 (contains!16509 lt!1916104 (_1!30722 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun lt!1916112 () Unit!135894)

(declare-fun Unit!136083 () Unit!135894)

(assert (=> b!4751625 (= lt!1916112 Unit!136083)))

(assert (=> b!4751625 (forall!11762 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) lambda!222126)))

(declare-fun lt!1916095 () Unit!135894)

(declare-fun Unit!136084 () Unit!135894)

(assert (=> b!4751625 (= lt!1916095 Unit!136084)))

(assert (=> b!4751625 (forall!11762 (toList!6116 lt!1916105) lambda!222126)))

(declare-fun lt!1916101 () Unit!135894)

(declare-fun Unit!136085 () Unit!135894)

(assert (=> b!4751625 (= lt!1916101 Unit!136085)))

(declare-fun lt!1916097 () Unit!135894)

(declare-fun Unit!136086 () Unit!135894)

(assert (=> b!4751625 (= lt!1916097 Unit!136086)))

(declare-fun lt!1916099 () Unit!135894)

(assert (=> b!4751625 (= lt!1916099 (addForallContainsKeyThenBeforeAdding!876 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1916104 (_1!30722 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))) (_2!30722 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(assert (=> b!4751625 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lambda!222126)))

(declare-fun lt!1916113 () Unit!135894)

(assert (=> b!4751625 (= lt!1916113 lt!1916099)))

(assert (=> b!4751625 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lambda!222126)))

(declare-fun lt!1916106 () Unit!135894)

(declare-fun Unit!136087 () Unit!135894)

(assert (=> b!4751625 (= lt!1916106 Unit!136087)))

(declare-fun res!2015000 () Bool)

(assert (=> b!4751625 (= res!2015000 (forall!11762 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))) lambda!222126))))

(declare-fun e!2964040 () Bool)

(assert (=> b!4751625 (=> (not res!2015000) (not e!2964040))))

(assert (=> b!4751625 e!2964040))

(declare-fun lt!1916107 () Unit!135894)

(declare-fun Unit!136088 () Unit!135894)

(assert (=> b!4751625 (= lt!1916107 Unit!136088)))

(declare-fun bm!332904 () Bool)

(assert (=> bm!332904 (= call!332911 (forall!11762 (ite c!811277 (toList!6116 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (toList!6116 lt!1916105)) (ite c!811277 lambda!222124 lambda!222126)))))

(assert (=> b!4751626 (= e!2964042 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(declare-fun lt!1916103 () Unit!135894)

(assert (=> b!4751626 (= lt!1916103 call!332909)))

(declare-fun call!332910 () Bool)

(assert (=> b!4751626 call!332910))

(declare-fun lt!1916114 () Unit!135894)

(assert (=> b!4751626 (= lt!1916114 lt!1916103)))

(assert (=> b!4751626 call!332911))

(declare-fun lt!1916096 () Unit!135894)

(declare-fun Unit!136089 () Unit!135894)

(assert (=> b!4751626 (= lt!1916096 Unit!136089)))

(declare-fun b!4751627 () Bool)

(assert (=> b!4751627 (= e!2964041 (invariantList!1594 (toList!6116 lt!1916108)))))

(declare-fun bm!332905 () Bool)

(assert (=> bm!332905 (= call!332910 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (ite c!811277 lambda!222124 lambda!222126)))))

(declare-fun bm!332906 () Bool)

(assert (=> bm!332906 (= call!332909 (lemmaContainsAllItsOwnKeys!877 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun b!4751628 () Bool)

(assert (=> b!4751628 (= e!2964040 call!332910)))

(declare-fun b!4751629 () Bool)

(declare-fun res!2014999 () Bool)

(assert (=> b!4751629 (=> (not res!2014999) (not e!2964041))))

(assert (=> b!4751629 (= res!2014999 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) lambda!222127))))

(assert (= (and d!1518762 c!811277) b!4751626))

(assert (= (and d!1518762 (not c!811277)) b!4751625))

(assert (= (and b!4751625 res!2015000) b!4751628))

(assert (= (or b!4751626 b!4751625) bm!332906))

(assert (= (or b!4751626 b!4751625) bm!332904))

(assert (= (or b!4751626 b!4751628) bm!332905))

(assert (= (and d!1518762 res!2014998) b!4751629))

(assert (= (and b!4751629 res!2014999) b!4751627))

(declare-fun m!5714635 () Bool)

(assert (=> d!1518762 m!5714635))

(assert (=> d!1518762 m!5714349))

(declare-fun m!5714637 () Bool)

(assert (=> bm!332904 m!5714637))

(assert (=> bm!332906 m!5713823))

(declare-fun m!5714639 () Bool)

(assert (=> bm!332906 m!5714639))

(declare-fun m!5714641 () Bool)

(assert (=> b!4751627 m!5714641))

(declare-fun m!5714643 () Bool)

(assert (=> b!4751625 m!5714643))

(declare-fun m!5714645 () Bool)

(assert (=> b!4751625 m!5714645))

(declare-fun m!5714647 () Bool)

(assert (=> b!4751625 m!5714647))

(declare-fun m!5714649 () Bool)

(assert (=> b!4751625 m!5714649))

(declare-fun m!5714651 () Bool)

(assert (=> b!4751625 m!5714651))

(assert (=> b!4751625 m!5713823))

(assert (=> b!4751625 m!5714645))

(declare-fun m!5714653 () Bool)

(assert (=> b!4751625 m!5714653))

(declare-fun m!5714655 () Bool)

(assert (=> b!4751625 m!5714655))

(assert (=> b!4751625 m!5714649))

(declare-fun m!5714657 () Bool)

(assert (=> b!4751625 m!5714657))

(declare-fun m!5714659 () Bool)

(assert (=> b!4751625 m!5714659))

(assert (=> b!4751625 m!5713823))

(declare-fun m!5714661 () Bool)

(assert (=> b!4751625 m!5714661))

(declare-fun m!5714663 () Bool)

(assert (=> b!4751625 m!5714663))

(assert (=> b!4751625 m!5714659))

(declare-fun m!5714665 () Bool)

(assert (=> bm!332905 m!5714665))

(declare-fun m!5714667 () Bool)

(assert (=> b!4751629 m!5714667))

(assert (=> b!4751294 d!1518762))

(declare-fun d!1518764 () Bool)

(assert (=> d!1518764 (dynLambda!21900 lambda!222079 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))

(declare-fun lt!1916116 () Unit!135894)

(assert (=> d!1518764 (= lt!1916116 (choose!33825 (toList!6116 lt!1915755) lambda!222079 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(declare-fun e!2964043 () Bool)

(assert (=> d!1518764 e!2964043))

(declare-fun res!2015001 () Bool)

(assert (=> d!1518764 (=> (not res!2015001) (not e!2964043))))

(assert (=> d!1518764 (= res!2015001 (forall!11762 (toList!6116 lt!1915755) lambda!222079))))

(assert (=> d!1518764 (= (forallContained!3788 (toList!6116 lt!1915755) lambda!222079 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) lt!1916116)))

(declare-fun b!4751630 () Bool)

(assert (=> b!4751630 (= e!2964043 (contains!16510 (toList!6116 lt!1915755) (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))))))

(assert (= (and d!1518764 res!2015001) b!4751630))

(declare-fun b_lambda!183237 () Bool)

(assert (=> (not b_lambda!183237) (not d!1518764)))

(assert (=> d!1518764 m!5714557))

(declare-fun m!5714669 () Bool)

(assert (=> d!1518764 m!5714669))

(assert (=> d!1518764 m!5713835))

(declare-fun m!5714671 () Bool)

(assert (=> b!4751630 m!5714671))

(assert (=> b!4751294 d!1518764))

(declare-fun b!4751631 () Bool)

(declare-fun e!2964048 () List!53211)

(assert (=> b!4751631 (= e!2964048 (getKeysList!1003 (toList!6116 lt!1915738)))))

(declare-fun b!4751632 () Bool)

(declare-fun e!2964046 () Unit!135894)

(declare-fun e!2964049 () Unit!135894)

(assert (=> b!4751632 (= e!2964046 e!2964049)))

(declare-fun c!811279 () Bool)

(declare-fun call!332912 () Bool)

(assert (=> b!4751632 (= c!811279 call!332912)))

(declare-fun b!4751633 () Bool)

(declare-fun e!2964044 () Bool)

(assert (=> b!4751633 (= e!2964044 (not (contains!16512 (keys!19162 lt!1915738) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751634 () Bool)

(assert (=> b!4751634 (= e!2964048 (keys!19162 lt!1915738))))

(declare-fun b!4751635 () Bool)

(declare-fun Unit!136090 () Unit!135894)

(assert (=> b!4751635 (= e!2964049 Unit!136090)))

(declare-fun b!4751636 () Bool)

(declare-fun e!2964047 () Bool)

(declare-fun e!2964045 () Bool)

(assert (=> b!4751636 (= e!2964047 e!2964045)))

(declare-fun res!2015002 () Bool)

(assert (=> b!4751636 (=> (not res!2015002) (not e!2964045))))

(assert (=> b!4751636 (= res!2015002 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751637 () Bool)

(declare-fun lt!1916118 () Unit!135894)

(assert (=> b!4751637 (= e!2964046 lt!1916118)))

(declare-fun lt!1916121 () Unit!135894)

(assert (=> b!4751637 (= lt!1916121 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751637 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1916120 () Unit!135894)

(assert (=> b!4751637 (= lt!1916120 lt!1916121)))

(assert (=> b!4751637 (= lt!1916118 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751637 call!332912))

(declare-fun b!4751638 () Bool)

(assert (=> b!4751638 (= e!2964045 (contains!16512 (keys!19162 lt!1915738) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518766 () Bool)

(assert (=> d!1518766 e!2964047))

(declare-fun res!2015003 () Bool)

(assert (=> d!1518766 (=> res!2015003 e!2964047)))

(assert (=> d!1518766 (= res!2015003 e!2964044)))

(declare-fun res!2015004 () Bool)

(assert (=> d!1518766 (=> (not res!2015004) (not e!2964044))))

(declare-fun lt!1916117 () Bool)

(assert (=> d!1518766 (= res!2015004 (not lt!1916117))))

(declare-fun lt!1916123 () Bool)

(assert (=> d!1518766 (= lt!1916117 lt!1916123)))

(declare-fun lt!1916119 () Unit!135894)

(assert (=> d!1518766 (= lt!1916119 e!2964046)))

(declare-fun c!811278 () Bool)

(assert (=> d!1518766 (= c!811278 lt!1916123)))

(assert (=> d!1518766 (= lt!1916123 (containsKey!3558 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304))))))

(assert (=> d!1518766 (= (contains!16509 lt!1915738 (_1!30722 (h!59483 l!14304))) lt!1916117)))

(declare-fun b!4751639 () Bool)

(assert (=> b!4751639 false))

(declare-fun lt!1916124 () Unit!135894)

(declare-fun lt!1916122 () Unit!135894)

(assert (=> b!4751639 (= lt!1916124 lt!1916122)))

(assert (=> b!4751639 (containsKey!3558 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304)))))

(assert (=> b!4751639 (= lt!1916122 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915738) (_1!30722 (h!59483 l!14304))))))

(declare-fun Unit!136091 () Unit!135894)

(assert (=> b!4751639 (= e!2964049 Unit!136091)))

(declare-fun bm!332907 () Bool)

(assert (=> bm!332907 (= call!332912 (contains!16512 e!2964048 (_1!30722 (h!59483 l!14304))))))

(declare-fun c!811280 () Bool)

(assert (=> bm!332907 (= c!811280 c!811278)))

(assert (= (and d!1518766 c!811278) b!4751637))

(assert (= (and d!1518766 (not c!811278)) b!4751632))

(assert (= (and b!4751632 c!811279) b!4751639))

(assert (= (and b!4751632 (not c!811279)) b!4751635))

(assert (= (or b!4751637 b!4751632) bm!332907))

(assert (= (and bm!332907 c!811280) b!4751631))

(assert (= (and bm!332907 (not c!811280)) b!4751634))

(assert (= (and d!1518766 res!2015004) b!4751633))

(assert (= (and d!1518766 (not res!2015003)) b!4751636))

(assert (= (and b!4751636 res!2015002) b!4751638))

(declare-fun m!5714673 () Bool)

(assert (=> b!4751631 m!5714673))

(declare-fun m!5714675 () Bool)

(assert (=> b!4751633 m!5714675))

(assert (=> b!4751633 m!5714675))

(declare-fun m!5714677 () Bool)

(assert (=> b!4751633 m!5714677))

(assert (=> b!4751638 m!5714675))

(assert (=> b!4751638 m!5714675))

(assert (=> b!4751638 m!5714677))

(declare-fun m!5714679 () Bool)

(assert (=> bm!332907 m!5714679))

(assert (=> b!4751636 m!5713761))

(assert (=> b!4751636 m!5713761))

(declare-fun m!5714681 () Bool)

(assert (=> b!4751636 m!5714681))

(declare-fun m!5714683 () Bool)

(assert (=> d!1518766 m!5714683))

(assert (=> b!4751639 m!5714683))

(declare-fun m!5714685 () Bool)

(assert (=> b!4751639 m!5714685))

(assert (=> b!4751634 m!5714675))

(declare-fun m!5714687 () Bool)

(assert (=> b!4751637 m!5714687))

(assert (=> b!4751637 m!5713761))

(assert (=> b!4751637 m!5713761))

(assert (=> b!4751637 m!5714681))

(declare-fun m!5714689 () Bool)

(assert (=> b!4751637 m!5714689))

(assert (=> d!1518582 d!1518766))

(declare-fun b!4751642 () Bool)

(declare-fun e!2964051 () Option!12530)

(assert (=> b!4751642 (= e!2964051 (getValueByKey!2080 (t!360542 lt!1915739) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518768 () Bool)

(declare-fun c!811281 () Bool)

(assert (=> d!1518768 (= c!811281 (and ((_ is Cons!53086) lt!1915739) (= (_1!30722 (h!59483 lt!1915739)) (_1!30722 (h!59483 l!14304)))))))

(declare-fun e!2964050 () Option!12530)

(assert (=> d!1518768 (= (getValueByKey!2080 lt!1915739 (_1!30722 (h!59483 l!14304))) e!2964050)))

(declare-fun b!4751641 () Bool)

(assert (=> b!4751641 (= e!2964050 e!2964051)))

(declare-fun c!811282 () Bool)

(assert (=> b!4751641 (= c!811282 (and ((_ is Cons!53086) lt!1915739) (not (= (_1!30722 (h!59483 lt!1915739)) (_1!30722 (h!59483 l!14304))))))))

(declare-fun b!4751640 () Bool)

(assert (=> b!4751640 (= e!2964050 (Some!12529 (_2!30722 (h!59483 lt!1915739))))))

(declare-fun b!4751643 () Bool)

(assert (=> b!4751643 (= e!2964051 None!12529)))

(assert (= (and d!1518768 c!811281) b!4751640))

(assert (= (and d!1518768 (not c!811281)) b!4751641))

(assert (= (and b!4751641 c!811282) b!4751642))

(assert (= (and b!4751641 (not c!811282)) b!4751643))

(declare-fun m!5714691 () Bool)

(assert (=> b!4751642 m!5714691))

(assert (=> d!1518582 d!1518768))

(declare-fun d!1518770 () Bool)

(assert (=> d!1518770 (= (getValueByKey!2080 lt!1915739 (_1!30722 (h!59483 l!14304))) (Some!12529 (_2!30722 (h!59483 l!14304))))))

(declare-fun lt!1916125 () Unit!135894)

(assert (=> d!1518770 (= lt!1916125 (choose!33823 lt!1915739 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(declare-fun e!2964052 () Bool)

(assert (=> d!1518770 e!2964052))

(declare-fun res!2015005 () Bool)

(assert (=> d!1518770 (=> (not res!2015005) (not e!2964052))))

(assert (=> d!1518770 (= res!2015005 (invariantList!1594 lt!1915739))))

(assert (=> d!1518770 (= (lemmaContainsTupThenGetReturnValue!1157 lt!1915739 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) lt!1916125)))

(declare-fun b!4751644 () Bool)

(declare-fun res!2015006 () Bool)

(assert (=> b!4751644 (=> (not res!2015006) (not e!2964052))))

(assert (=> b!4751644 (= res!2015006 (containsKey!3558 lt!1915739 (_1!30722 (h!59483 l!14304))))))

(declare-fun b!4751645 () Bool)

(assert (=> b!4751645 (= e!2964052 (contains!16510 lt!1915739 (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304)))))))

(assert (= (and d!1518770 res!2015005) b!4751644))

(assert (= (and b!4751644 res!2015006) b!4751645))

(assert (=> d!1518770 m!5713755))

(declare-fun m!5714693 () Bool)

(assert (=> d!1518770 m!5714693))

(declare-fun m!5714695 () Bool)

(assert (=> d!1518770 m!5714695))

(declare-fun m!5714697 () Bool)

(assert (=> b!4751644 m!5714697))

(declare-fun m!5714699 () Bool)

(assert (=> b!4751645 m!5714699))

(assert (=> d!1518582 d!1518770))

(declare-fun b!4751646 () Bool)

(declare-fun res!2015010 () Bool)

(declare-fun e!2964057 () Bool)

(assert (=> b!4751646 (=> (not res!2015010) (not e!2964057))))

(declare-fun lt!1916128 () List!53210)

(assert (=> b!4751646 (= res!2015010 (containsKey!3558 lt!1916128 (_1!30722 (h!59483 l!14304))))))

(declare-fun b!4751647 () Bool)

(declare-fun e!2964058 () List!53210)

(assert (=> b!4751647 (= e!2964058 Nil!53086)))

(declare-fun d!1518772 () Bool)

(assert (=> d!1518772 e!2964057))

(declare-fun res!2015009 () Bool)

(assert (=> d!1518772 (=> (not res!2015009) (not e!2964057))))

(assert (=> d!1518772 (= res!2015009 (invariantList!1594 lt!1916128))))

(declare-fun e!2964053 () List!53210)

(assert (=> d!1518772 (= lt!1916128 e!2964053)))

(declare-fun c!811284 () Bool)

(assert (=> d!1518772 (= c!811284 (and ((_ is Cons!53086) (toList!6116 lt!1915494)) (= (_1!30722 (h!59483 (toList!6116 lt!1915494))) (_1!30722 (h!59483 l!14304)))))))

(assert (=> d!1518772 (invariantList!1594 (toList!6116 lt!1915494))))

(assert (=> d!1518772 (= (insertNoDuplicatedKeys!665 (toList!6116 lt!1915494) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) lt!1916128)))

(declare-fun b!4751648 () Bool)

(assert (=> b!4751648 false))

(declare-fun lt!1916132 () Unit!135894)

(declare-fun lt!1916127 () Unit!135894)

(assert (=> b!4751648 (= lt!1916132 lt!1916127)))

(assert (=> b!4751648 (containsKey!3558 (t!360542 (toList!6116 lt!1915494)) (_1!30722 (h!59483 (toList!6116 lt!1915494))))))

(assert (=> b!4751648 (= lt!1916127 (lemmaInGetKeysListThenContainsKey!1002 (t!360542 (toList!6116 lt!1915494)) (_1!30722 (h!59483 (toList!6116 lt!1915494)))))))

(declare-fun lt!1916134 () Unit!135894)

(declare-fun lt!1916126 () Unit!135894)

(assert (=> b!4751648 (= lt!1916134 lt!1916126)))

(declare-fun call!332913 () List!53211)

(assert (=> b!4751648 (contains!16512 call!332913 (_1!30722 (h!59483 (toList!6116 lt!1915494))))))

(declare-fun lt!1916133 () List!53210)

(assert (=> b!4751648 (= lt!1916126 (lemmaInListThenGetKeysListContains!998 lt!1916133 (_1!30722 (h!59483 (toList!6116 lt!1915494)))))))

(assert (=> b!4751648 (= lt!1916133 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915494)) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(declare-fun e!2964054 () Unit!135894)

(declare-fun Unit!136092 () Unit!135894)

(assert (=> b!4751648 (= e!2964054 Unit!136092)))

(declare-fun b!4751649 () Bool)

(declare-fun e!2964055 () List!53210)

(declare-fun lt!1916131 () List!53210)

(assert (=> b!4751649 (= e!2964055 lt!1916131)))

(declare-fun call!332914 () List!53210)

(assert (=> b!4751649 (= lt!1916131 call!332914)))

(declare-fun c!811283 () Bool)

(assert (=> b!4751649 (= c!811283 (containsKey!3558 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915494)) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) (_1!30722 (h!59483 (toList!6116 lt!1915494)))))))

(declare-fun lt!1916135 () Unit!135894)

(assert (=> b!4751649 (= lt!1916135 e!2964054)))

(declare-fun b!4751650 () Bool)

(declare-fun e!2964056 () List!53210)

(declare-fun call!332915 () List!53210)

(assert (=> b!4751650 (= e!2964056 call!332915)))

(declare-fun b!4751651 () Bool)

(assert (=> b!4751651 (= e!2964055 call!332914)))

(declare-fun b!4751652 () Bool)

(declare-fun c!811286 () Bool)

(assert (=> b!4751652 (= c!811286 ((_ is Cons!53086) (toList!6116 lt!1915494)))))

(assert (=> b!4751652 (= e!2964056 e!2964055)))

(declare-fun bm!332908 () Bool)

(assert (=> bm!332908 (= call!332914 call!332915)))

(declare-fun c!811287 () Bool)

(assert (=> bm!332908 (= c!811287 c!811286)))

(declare-fun b!4751653 () Bool)

(declare-fun Unit!136093 () Unit!135894)

(assert (=> b!4751653 (= e!2964054 Unit!136093)))

(declare-fun b!4751654 () Bool)

(assert (=> b!4751654 (= e!2964057 (= (content!9530 (getKeysList!1003 lt!1916128)) ((_ map or) (content!9530 (getKeysList!1003 (toList!6116 lt!1915494))) (store ((as const (Array K!14520 Bool)) false) (_1!30722 (h!59483 l!14304)) true))))))

(declare-fun bm!332909 () Bool)

(declare-fun call!332916 () List!53210)

(assert (=> bm!332909 (= call!332915 call!332916)))

(declare-fun b!4751655 () Bool)

(declare-fun e!2964059 () Bool)

(assert (=> b!4751655 (= e!2964059 (not (containsKey!3558 (toList!6116 lt!1915494) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751656 () Bool)

(assert (=> b!4751656 (= e!2964053 e!2964056)))

(declare-fun res!2015008 () Bool)

(assert (=> b!4751656 (= res!2015008 ((_ is Cons!53086) (toList!6116 lt!1915494)))))

(assert (=> b!4751656 (=> (not res!2015008) (not e!2964059))))

(declare-fun c!811285 () Bool)

(assert (=> b!4751656 (= c!811285 e!2964059)))

(declare-fun bm!332910 () Bool)

(assert (=> bm!332910 (= call!332913 (getKeysList!1003 (ite c!811284 (toList!6116 lt!1915494) lt!1916133)))))

(declare-fun b!4751657 () Bool)

(declare-fun res!2015007 () Bool)

(assert (=> b!4751657 (=> (not res!2015007) (not e!2964057))))

(assert (=> b!4751657 (= res!2015007 (contains!16510 lt!1916128 (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304)))))))

(declare-fun b!4751658 () Bool)

(assert (=> b!4751658 (= e!2964058 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915494)) (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(declare-fun bm!332911 () Bool)

(assert (=> bm!332911 (= call!332916 ($colon$colon!1097 (ite c!811284 (t!360542 (toList!6116 lt!1915494)) (ite c!811285 (toList!6116 lt!1915494) e!2964058)) (ite (or c!811284 c!811285) (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) (ite c!811286 (h!59483 (toList!6116 lt!1915494)) (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304)))))))))

(declare-fun b!4751659 () Bool)

(assert (=> b!4751659 (= e!2964053 call!332916)))

(declare-fun lt!1916129 () List!53211)

(assert (=> b!4751659 (= lt!1916129 call!332913)))

(declare-fun lt!1916130 () Unit!135894)

(assert (=> b!4751659 (= lt!1916130 (lemmaSubseqRefl!160 lt!1916129))))

(assert (=> b!4751659 (subseq!676 lt!1916129 lt!1916129)))

(declare-fun lt!1916136 () Unit!135894)

(assert (=> b!4751659 (= lt!1916136 lt!1916130)))

(assert (= (and d!1518772 c!811284) b!4751659))

(assert (= (and d!1518772 (not c!811284)) b!4751656))

(assert (= (and b!4751656 res!2015008) b!4751655))

(assert (= (and b!4751656 c!811285) b!4751650))

(assert (= (and b!4751656 (not c!811285)) b!4751652))

(assert (= (and b!4751652 c!811286) b!4751649))

(assert (= (and b!4751652 (not c!811286)) b!4751651))

(assert (= (and b!4751649 c!811283) b!4751648))

(assert (= (and b!4751649 (not c!811283)) b!4751653))

(assert (= (or b!4751649 b!4751651) bm!332908))

(assert (= (and bm!332908 c!811287) b!4751658))

(assert (= (and bm!332908 (not c!811287)) b!4751647))

(assert (= (or b!4751650 bm!332908) bm!332909))

(assert (= (or b!4751659 b!4751648) bm!332910))

(assert (= (or b!4751659 bm!332909) bm!332911))

(assert (= (and d!1518772 res!2015009) b!4751646))

(assert (= (and b!4751646 res!2015010) b!4751657))

(assert (= (and b!4751657 res!2015007) b!4751654))

(declare-fun m!5714701 () Bool)

(assert (=> d!1518772 m!5714701))

(declare-fun m!5714703 () Bool)

(assert (=> d!1518772 m!5714703))

(declare-fun m!5714705 () Bool)

(assert (=> b!4751648 m!5714705))

(declare-fun m!5714707 () Bool)

(assert (=> b!4751648 m!5714707))

(declare-fun m!5714709 () Bool)

(assert (=> b!4751648 m!5714709))

(declare-fun m!5714711 () Bool)

(assert (=> b!4751648 m!5714711))

(declare-fun m!5714713 () Bool)

(assert (=> b!4751648 m!5714713))

(declare-fun m!5714715 () Bool)

(assert (=> bm!332911 m!5714715))

(assert (=> b!4751658 m!5714713))

(declare-fun m!5714717 () Bool)

(assert (=> b!4751646 m!5714717))

(declare-fun m!5714719 () Bool)

(assert (=> b!4751659 m!5714719))

(declare-fun m!5714721 () Bool)

(assert (=> b!4751659 m!5714721))

(declare-fun m!5714723 () Bool)

(assert (=> b!4751654 m!5714723))

(declare-fun m!5714725 () Bool)

(assert (=> b!4751654 m!5714725))

(declare-fun m!5714727 () Bool)

(assert (=> b!4751654 m!5714727))

(assert (=> b!4751654 m!5714233))

(assert (=> b!4751654 m!5714725))

(assert (=> b!4751654 m!5714723))

(declare-fun m!5714729 () Bool)

(assert (=> b!4751654 m!5714729))

(declare-fun m!5714731 () Bool)

(assert (=> b!4751655 m!5714731))

(assert (=> b!4751649 m!5714713))

(assert (=> b!4751649 m!5714713))

(declare-fun m!5714733 () Bool)

(assert (=> b!4751649 m!5714733))

(declare-fun m!5714735 () Bool)

(assert (=> b!4751657 m!5714735))

(declare-fun m!5714737 () Bool)

(assert (=> bm!332910 m!5714737))

(assert (=> d!1518582 d!1518772))

(declare-fun d!1518774 () Bool)

(assert (=> d!1518774 (= (invariantList!1594 (toList!6116 lt!1915928)) (noDuplicatedKeys!402 (toList!6116 lt!1915928)))))

(declare-fun bs!1141918 () Bool)

(assert (= bs!1141918 d!1518774))

(declare-fun m!5714739 () Bool)

(assert (=> bs!1141918 m!5714739))

(assert (=> b!4751351 d!1518774))

(declare-fun d!1518776 () Bool)

(declare-fun res!2015011 () Bool)

(declare-fun e!2964060 () Bool)

(assert (=> d!1518776 (=> res!2015011 e!2964060)))

(assert (=> d!1518776 (= res!2015011 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1518776 (= (forall!11762 (toList!6116 acc!1214) lambda!222098) e!2964060)))

(declare-fun b!4751660 () Bool)

(declare-fun e!2964061 () Bool)

(assert (=> b!4751660 (= e!2964060 e!2964061)))

(declare-fun res!2015012 () Bool)

(assert (=> b!4751660 (=> (not res!2015012) (not e!2964061))))

(assert (=> b!4751660 (= res!2015012 (dynLambda!21900 lambda!222098 (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4751661 () Bool)

(assert (=> b!4751661 (= e!2964061 (forall!11762 (t!360542 (toList!6116 acc!1214)) lambda!222098))))

(assert (= (and d!1518776 (not res!2015011)) b!4751660))

(assert (= (and b!4751660 res!2015012) b!4751661))

(declare-fun b_lambda!183239 () Bool)

(assert (=> (not b_lambda!183239) (not b!4751660)))

(declare-fun m!5714741 () Bool)

(assert (=> b!4751660 m!5714741))

(declare-fun m!5714743 () Bool)

(assert (=> b!4751661 m!5714743))

(assert (=> b!4751337 d!1518776))

(declare-fun b!4751662 () Bool)

(declare-fun e!2964066 () List!53211)

(assert (=> b!4751662 (= e!2964066 (getKeysList!1003 (toList!6116 lt!1915882)))))

(declare-fun b!4751663 () Bool)

(declare-fun e!2964064 () Unit!135894)

(declare-fun e!2964067 () Unit!135894)

(assert (=> b!4751663 (= e!2964064 e!2964067)))

(declare-fun c!811289 () Bool)

(declare-fun call!332917 () Bool)

(assert (=> b!4751663 (= c!811289 call!332917)))

(declare-fun b!4751664 () Bool)

(declare-fun e!2964062 () Bool)

(assert (=> b!4751664 (= e!2964062 (not (contains!16512 (keys!19162 lt!1915882) (_1!30722 (h!59483 lt!1915493)))))))

(declare-fun b!4751665 () Bool)

(assert (=> b!4751665 (= e!2964066 (keys!19162 lt!1915882))))

(declare-fun b!4751666 () Bool)

(declare-fun Unit!136094 () Unit!135894)

(assert (=> b!4751666 (= e!2964067 Unit!136094)))

(declare-fun b!4751667 () Bool)

(declare-fun e!2964065 () Bool)

(declare-fun e!2964063 () Bool)

(assert (=> b!4751667 (= e!2964065 e!2964063)))

(declare-fun res!2015013 () Bool)

(assert (=> b!4751667 (=> (not res!2015013) (not e!2964063))))

(assert (=> b!4751667 (= res!2015013 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915882) (_1!30722 (h!59483 lt!1915493)))))))

(declare-fun b!4751668 () Bool)

(declare-fun lt!1916138 () Unit!135894)

(assert (=> b!4751668 (= e!2964064 lt!1916138)))

(declare-fun lt!1916141 () Unit!135894)

(assert (=> b!4751668 (= lt!1916141 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915882) (_1!30722 (h!59483 lt!1915493))))))

(assert (=> b!4751668 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915882) (_1!30722 (h!59483 lt!1915493))))))

(declare-fun lt!1916140 () Unit!135894)

(assert (=> b!4751668 (= lt!1916140 lt!1916141)))

(assert (=> b!4751668 (= lt!1916138 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915882) (_1!30722 (h!59483 lt!1915493))))))

(assert (=> b!4751668 call!332917))

(declare-fun b!4751669 () Bool)

(assert (=> b!4751669 (= e!2964063 (contains!16512 (keys!19162 lt!1915882) (_1!30722 (h!59483 lt!1915493))))))

(declare-fun d!1518778 () Bool)

(assert (=> d!1518778 e!2964065))

(declare-fun res!2015014 () Bool)

(assert (=> d!1518778 (=> res!2015014 e!2964065)))

(assert (=> d!1518778 (= res!2015014 e!2964062)))

(declare-fun res!2015015 () Bool)

(assert (=> d!1518778 (=> (not res!2015015) (not e!2964062))))

(declare-fun lt!1916137 () Bool)

(assert (=> d!1518778 (= res!2015015 (not lt!1916137))))

(declare-fun lt!1916143 () Bool)

(assert (=> d!1518778 (= lt!1916137 lt!1916143)))

(declare-fun lt!1916139 () Unit!135894)

(assert (=> d!1518778 (= lt!1916139 e!2964064)))

(declare-fun c!811288 () Bool)

(assert (=> d!1518778 (= c!811288 lt!1916143)))

(assert (=> d!1518778 (= lt!1916143 (containsKey!3558 (toList!6116 lt!1915882) (_1!30722 (h!59483 lt!1915493))))))

(assert (=> d!1518778 (= (contains!16509 lt!1915882 (_1!30722 (h!59483 lt!1915493))) lt!1916137)))

(declare-fun b!4751670 () Bool)

(assert (=> b!4751670 false))

(declare-fun lt!1916144 () Unit!135894)

(declare-fun lt!1916142 () Unit!135894)

(assert (=> b!4751670 (= lt!1916144 lt!1916142)))

(assert (=> b!4751670 (containsKey!3558 (toList!6116 lt!1915882) (_1!30722 (h!59483 lt!1915493)))))

(assert (=> b!4751670 (= lt!1916142 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915882) (_1!30722 (h!59483 lt!1915493))))))

(declare-fun Unit!136096 () Unit!135894)

(assert (=> b!4751670 (= e!2964067 Unit!136096)))

(declare-fun bm!332912 () Bool)

(assert (=> bm!332912 (= call!332917 (contains!16512 e!2964066 (_1!30722 (h!59483 lt!1915493))))))

(declare-fun c!811290 () Bool)

(assert (=> bm!332912 (= c!811290 c!811288)))

(assert (= (and d!1518778 c!811288) b!4751668))

(assert (= (and d!1518778 (not c!811288)) b!4751663))

(assert (= (and b!4751663 c!811289) b!4751670))

(assert (= (and b!4751663 (not c!811289)) b!4751666))

(assert (= (or b!4751668 b!4751663) bm!332912))

(assert (= (and bm!332912 c!811290) b!4751662))

(assert (= (and bm!332912 (not c!811290)) b!4751665))

(assert (= (and d!1518778 res!2015015) b!4751664))

(assert (= (and d!1518778 (not res!2015014)) b!4751667))

(assert (= (and b!4751667 res!2015013) b!4751669))

(declare-fun m!5714745 () Bool)

(assert (=> b!4751662 m!5714745))

(declare-fun m!5714747 () Bool)

(assert (=> b!4751664 m!5714747))

(assert (=> b!4751664 m!5714747))

(declare-fun m!5714749 () Bool)

(assert (=> b!4751664 m!5714749))

(assert (=> b!4751669 m!5714747))

(assert (=> b!4751669 m!5714747))

(assert (=> b!4751669 m!5714749))

(declare-fun m!5714751 () Bool)

(assert (=> bm!332912 m!5714751))

(declare-fun m!5714753 () Bool)

(assert (=> b!4751667 m!5714753))

(assert (=> b!4751667 m!5714753))

(declare-fun m!5714755 () Bool)

(assert (=> b!4751667 m!5714755))

(declare-fun m!5714757 () Bool)

(assert (=> d!1518778 m!5714757))

(assert (=> b!4751670 m!5714757))

(declare-fun m!5714759 () Bool)

(assert (=> b!4751670 m!5714759))

(assert (=> b!4751665 m!5714747))

(declare-fun m!5714761 () Bool)

(assert (=> b!4751668 m!5714761))

(assert (=> b!4751668 m!5714753))

(assert (=> b!4751668 m!5714753))

(assert (=> b!4751668 m!5714755))

(declare-fun m!5714763 () Bool)

(assert (=> b!4751668 m!5714763))

(assert (=> b!4751337 d!1518778))

(declare-fun d!1518780 () Bool)

(declare-fun res!2015016 () Bool)

(declare-fun e!2964068 () Bool)

(assert (=> d!1518780 (=> res!2015016 e!2964068)))

(assert (=> d!1518780 (= res!2015016 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1518780 (= (forall!11762 (toList!6116 acc!1214) lambda!222099) e!2964068)))

(declare-fun b!4751671 () Bool)

(declare-fun e!2964069 () Bool)

(assert (=> b!4751671 (= e!2964068 e!2964069)))

(declare-fun res!2015017 () Bool)

(assert (=> b!4751671 (=> (not res!2015017) (not e!2964069))))

(assert (=> b!4751671 (= res!2015017 (dynLambda!21900 lambda!222099 (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4751672 () Bool)

(assert (=> b!4751672 (= e!2964069 (forall!11762 (t!360542 (toList!6116 acc!1214)) lambda!222099))))

(assert (= (and d!1518780 (not res!2015016)) b!4751671))

(assert (= (and b!4751671 res!2015017) b!4751672))

(declare-fun b_lambda!183241 () Bool)

(assert (=> (not b_lambda!183241) (not b!4751671)))

(declare-fun m!5714765 () Bool)

(assert (=> b!4751671 m!5714765))

(declare-fun m!5714767 () Bool)

(assert (=> b!4751672 m!5714767))

(assert (=> b!4751337 d!1518780))

(declare-fun d!1518782 () Bool)

(declare-fun e!2964070 () Bool)

(assert (=> d!1518782 e!2964070))

(declare-fun res!2015018 () Bool)

(assert (=> d!1518782 (=> (not res!2015018) (not e!2964070))))

(declare-fun lt!1916146 () ListMap!5541)

(assert (=> d!1518782 (= res!2015018 (contains!16509 lt!1916146 (_1!30722 (h!59483 lt!1915493))))))

(declare-fun lt!1916147 () List!53210)

(assert (=> d!1518782 (= lt!1916146 (ListMap!5542 lt!1916147))))

(declare-fun lt!1916148 () Unit!135894)

(declare-fun lt!1916145 () Unit!135894)

(assert (=> d!1518782 (= lt!1916148 lt!1916145)))

(assert (=> d!1518782 (= (getValueByKey!2080 lt!1916147 (_1!30722 (h!59483 lt!1915493))) (Some!12529 (_2!30722 (h!59483 lt!1915493))))))

(assert (=> d!1518782 (= lt!1916145 (lemmaContainsTupThenGetReturnValue!1157 lt!1916147 (_1!30722 (h!59483 lt!1915493)) (_2!30722 (h!59483 lt!1915493))))))

(assert (=> d!1518782 (= lt!1916147 (insertNoDuplicatedKeys!665 (toList!6116 acc!1214) (_1!30722 (h!59483 lt!1915493)) (_2!30722 (h!59483 lt!1915493))))))

(assert (=> d!1518782 (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916146)))

(declare-fun b!4751673 () Bool)

(declare-fun res!2015019 () Bool)

(assert (=> b!4751673 (=> (not res!2015019) (not e!2964070))))

(assert (=> b!4751673 (= res!2015019 (= (getValueByKey!2080 (toList!6116 lt!1916146) (_1!30722 (h!59483 lt!1915493))) (Some!12529 (_2!30722 (h!59483 lt!1915493)))))))

(declare-fun b!4751674 () Bool)

(assert (=> b!4751674 (= e!2964070 (contains!16510 (toList!6116 lt!1916146) (h!59483 lt!1915493)))))

(assert (= (and d!1518782 res!2015018) b!4751673))

(assert (= (and b!4751673 res!2015019) b!4751674))

(declare-fun m!5714769 () Bool)

(assert (=> d!1518782 m!5714769))

(declare-fun m!5714771 () Bool)

(assert (=> d!1518782 m!5714771))

(declare-fun m!5714773 () Bool)

(assert (=> d!1518782 m!5714773))

(declare-fun m!5714775 () Bool)

(assert (=> d!1518782 m!5714775))

(declare-fun m!5714777 () Bool)

(assert (=> b!4751673 m!5714777))

(declare-fun m!5714779 () Bool)

(assert (=> b!4751674 m!5714779))

(assert (=> b!4751337 d!1518782))

(declare-fun d!1518784 () Bool)

(declare-fun res!2015020 () Bool)

(declare-fun e!2964071 () Bool)

(assert (=> d!1518784 (=> res!2015020 e!2964071)))

(assert (=> d!1518784 (= res!2015020 ((_ is Nil!53086) (t!360542 lt!1915493)))))

(assert (=> d!1518784 (= (forall!11762 (t!360542 lt!1915493) lambda!222099) e!2964071)))

(declare-fun b!4751675 () Bool)

(declare-fun e!2964072 () Bool)

(assert (=> b!4751675 (= e!2964071 e!2964072)))

(declare-fun res!2015021 () Bool)

(assert (=> b!4751675 (=> (not res!2015021) (not e!2964072))))

(assert (=> b!4751675 (= res!2015021 (dynLambda!21900 lambda!222099 (h!59483 (t!360542 lt!1915493))))))

(declare-fun b!4751676 () Bool)

(assert (=> b!4751676 (= e!2964072 (forall!11762 (t!360542 (t!360542 lt!1915493)) lambda!222099))))

(assert (= (and d!1518784 (not res!2015020)) b!4751675))

(assert (= (and b!4751675 res!2015021) b!4751676))

(declare-fun b_lambda!183243 () Bool)

(assert (=> (not b_lambda!183243) (not b!4751675)))

(declare-fun m!5714781 () Bool)

(assert (=> b!4751675 m!5714781))

(declare-fun m!5714783 () Bool)

(assert (=> b!4751676 m!5714783))

(assert (=> b!4751337 d!1518784))

(declare-fun d!1518786 () Bool)

(declare-fun res!2015022 () Bool)

(declare-fun e!2964073 () Bool)

(assert (=> d!1518786 (=> res!2015022 e!2964073)))

(assert (=> d!1518786 (= res!2015022 ((_ is Nil!53086) (toList!6116 lt!1915883)))))

(assert (=> d!1518786 (= (forall!11762 (toList!6116 lt!1915883) lambda!222099) e!2964073)))

(declare-fun b!4751677 () Bool)

(declare-fun e!2964074 () Bool)

(assert (=> b!4751677 (= e!2964073 e!2964074)))

(declare-fun res!2015023 () Bool)

(assert (=> b!4751677 (=> (not res!2015023) (not e!2964074))))

(assert (=> b!4751677 (= res!2015023 (dynLambda!21900 lambda!222099 (h!59483 (toList!6116 lt!1915883))))))

(declare-fun b!4751678 () Bool)

(assert (=> b!4751678 (= e!2964074 (forall!11762 (t!360542 (toList!6116 lt!1915883)) lambda!222099))))

(assert (= (and d!1518786 (not res!2015022)) b!4751677))

(assert (= (and b!4751677 res!2015023) b!4751678))

(declare-fun b_lambda!183245 () Bool)

(assert (=> (not b_lambda!183245) (not b!4751677)))

(declare-fun m!5714785 () Bool)

(assert (=> b!4751677 m!5714785))

(declare-fun m!5714787 () Bool)

(assert (=> b!4751678 m!5714787))

(assert (=> b!4751337 d!1518786))

(declare-fun d!1518788 () Bool)

(assert (=> d!1518788 (dynLambda!21900 lambda!222099 (h!59483 lt!1915493))))

(declare-fun lt!1916149 () Unit!135894)

(assert (=> d!1518788 (= lt!1916149 (choose!33825 (toList!6116 lt!1915883) lambda!222099 (h!59483 lt!1915493)))))

(declare-fun e!2964075 () Bool)

(assert (=> d!1518788 e!2964075))

(declare-fun res!2015024 () Bool)

(assert (=> d!1518788 (=> (not res!2015024) (not e!2964075))))

(assert (=> d!1518788 (= res!2015024 (forall!11762 (toList!6116 lt!1915883) lambda!222099))))

(assert (=> d!1518788 (= (forallContained!3788 (toList!6116 lt!1915883) lambda!222099 (h!59483 lt!1915493)) lt!1916149)))

(declare-fun b!4751679 () Bool)

(assert (=> b!4751679 (= e!2964075 (contains!16510 (toList!6116 lt!1915883) (h!59483 lt!1915493)))))

(assert (= (and d!1518788 res!2015024) b!4751679))

(declare-fun b_lambda!183247 () Bool)

(assert (=> (not b_lambda!183247) (not d!1518788)))

(declare-fun m!5714789 () Bool)

(assert (=> d!1518788 m!5714789))

(declare-fun m!5714791 () Bool)

(assert (=> d!1518788 m!5714791))

(assert (=> d!1518788 m!5714071))

(declare-fun m!5714793 () Bool)

(assert (=> b!4751679 m!5714793))

(assert (=> b!4751337 d!1518788))

(declare-fun bs!1141919 () Bool)

(declare-fun b!4751681 () Bool)

(assert (= bs!1141919 (and b!4751681 d!1518558)))

(declare-fun lambda!222128 () Int)

(assert (=> bs!1141919 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915675) (= lambda!222128 lambda!222069))))

(declare-fun bs!1141920 () Bool)

(assert (= bs!1141920 (and b!4751681 b!4751534)))

(assert (=> bs!1141920 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916057) (= lambda!222128 lambda!222119))))

(declare-fun bs!1141921 () Bool)

(assert (= bs!1141921 (and b!4751681 d!1518594)))

(assert (=> bs!1141921 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915800) (= lambda!222128 lambda!222088))))

(declare-fun bs!1141922 () Bool)

(assert (= bs!1141922 (and b!4751681 d!1518706)))

(assert (=> bs!1141922 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222128 lambda!222122))))

(declare-fun bs!1141923 () Bool)

(assert (= bs!1141923 (and b!4751681 d!1518746)))

(assert (=> bs!1141923 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915754) (= lambda!222128 lambda!222123))))

(declare-fun bs!1141924 () Bool)

(assert (= bs!1141924 (and b!4751681 b!4751294)))

(assert (=> bs!1141924 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915754) (= lambda!222128 lambda!222079))))

(declare-fun bs!1141925 () Bool)

(assert (= bs!1141925 (and b!4751681 b!4751626)))

(assert (=> bs!1141925 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222128 lambda!222124))))

(declare-fun bs!1141926 () Bool)

(assert (= bs!1141926 (and b!4751681 b!4751305)))

(assert (=> bs!1141926 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915494) (= lambda!222128 lambda!222084))))

(assert (=> bs!1141924 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222128 lambda!222078))))

(declare-fun bs!1141927 () Bool)

(assert (= bs!1141927 (and b!4751681 b!4751304)))

(assert (=> bs!1141927 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915796) (= lambda!222128 lambda!222086))))

(declare-fun bs!1141928 () Bool)

(assert (= bs!1141928 (and b!4751681 b!4751295)))

(assert (=> bs!1141928 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222128 lambda!222077))))

(declare-fun bs!1141929 () Bool)

(assert (= bs!1141929 (and b!4751681 b!4751349)))

(assert (=> bs!1141929 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 t!14174)) (= lambda!222128 lambda!222106))))

(declare-fun bs!1141930 () Bool)

(assert (= bs!1141930 (and b!4751681 b!4751625)))

(assert (=> bs!1141930 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916104) (= lambda!222128 lambda!222126))))

(declare-fun bs!1141931 () Bool)

(assert (= bs!1141931 (and b!4751681 d!1518762)))

(assert (=> bs!1141931 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916108) (= lambda!222128 lambda!222127))))

(assert (=> bs!1141927 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915494) (= lambda!222128 lambda!222085))))

(declare-fun bs!1141932 () Bool)

(assert (= bs!1141932 (and b!4751681 b!4751337)))

(assert (=> bs!1141932 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915882) (= lambda!222128 lambda!222099))))

(declare-fun bs!1141933 () Bool)

(assert (= bs!1141933 (and b!4751681 d!1518624)))

(assert (=> bs!1141933 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915907) (= lambda!222128 lambda!222104))))

(declare-fun bs!1141934 () Bool)

(assert (= bs!1141934 (and b!4751681 d!1518676)))

(assert (=> bs!1141934 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915903) (= lambda!222128 lambda!222116))))

(declare-fun bs!1141935 () Bool)

(assert (= bs!1141935 (and b!4751681 b!4751315)))

(assert (=> bs!1141935 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222128 lambda!222091))))

(declare-fun bs!1141936 () Bool)

(assert (= bs!1141936 (and b!4751681 d!1518686)))

(assert (=> bs!1141936 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916061) (= lambda!222128 lambda!222120))))

(declare-fun bs!1141937 () Bool)

(assert (= bs!1141937 (and b!4751681 b!4751338)))

(assert (=> bs!1141937 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222128 lambda!222097))))

(declare-fun bs!1141938 () Bool)

(assert (= bs!1141938 (and b!4751681 b!4751350)))

(assert (=> bs!1141938 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 t!14174)) (= lambda!222128 lambda!222105))))

(declare-fun bs!1141939 () Bool)

(assert (= bs!1141939 (and b!4751681 b!4751267)))

(assert (=> bs!1141939 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915671) (= lambda!222128 lambda!222067))))

(declare-fun bs!1141940 () Bool)

(assert (= bs!1141940 (and b!4751681 b!4751268)))

(assert (=> bs!1141940 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222128 lambda!222065))))

(declare-fun bs!1141941 () Bool)

(assert (= bs!1141941 (and b!4751681 b!4751535)))

(assert (=> bs!1141941 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222128 lambda!222117))))

(declare-fun bs!1141942 () Bool)

(assert (= bs!1141942 (and b!4751681 b!4751344)))

(assert (=> bs!1141942 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915903) (= lambda!222128 lambda!222103))))

(assert (=> bs!1141920 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222128 lambda!222118))))

(assert (=> bs!1141929 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915924) (= lambda!222128 lambda!222107))))

(assert (=> bs!1141930 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222128 lambda!222125))))

(assert (=> bs!1141935 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915829) (= lambda!222128 lambda!222092))))

(declare-fun bs!1141943 () Bool)

(assert (= bs!1141943 (and b!4751681 d!1518694)))

(assert (=> bs!1141943 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 t!14174)) (= lambda!222128 lambda!222121))))

(declare-fun bs!1141944 () Bool)

(assert (= bs!1141944 (and b!4751681 b!4751345)))

(assert (=> bs!1141944 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222128 lambda!222101))))

(declare-fun bs!1141945 () Bool)

(assert (= bs!1141945 (and b!4751681 d!1518628)))

(assert (=> bs!1141945 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915928) (= lambda!222128 lambda!222108))))

(declare-fun bs!1141946 () Bool)

(assert (= bs!1141946 (and b!4751681 d!1518590)))

(assert (=> bs!1141946 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915758) (= lambda!222128 lambda!222081))))

(declare-fun bs!1141947 () Bool)

(assert (= bs!1141947 (and b!4751681 b!4751316)))

(assert (=> bs!1141947 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222128 lambda!222089))))

(assert (=> bs!1141939 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222128 lambda!222066))))

(assert (=> bs!1141932 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222128 lambda!222098))))

(declare-fun bs!1141948 () Bool)

(assert (= bs!1141948 (and b!4751681 d!1518668)))

(assert (=> bs!1141948 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915494) (= lambda!222128 lambda!222111))))

(declare-fun bs!1141949 () Bool)

(assert (= bs!1141949 (and b!4751681 d!1518618)))

(assert (=> bs!1141949 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915886) (= lambda!222128 lambda!222100))))

(declare-fun bs!1141950 () Bool)

(assert (= bs!1141950 (and b!4751681 d!1518604)))

(assert (=> bs!1141950 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915833) (= lambda!222128 lambda!222094))))

(assert (=> bs!1141942 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222128 lambda!222102))))

(assert (=> b!4751681 true))

(declare-fun bs!1141951 () Bool)

(declare-fun b!4751680 () Bool)

(assert (= bs!1141951 (and b!4751680 d!1518558)))

(declare-fun lambda!222129 () Int)

(assert (=> bs!1141951 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915675) (= lambda!222129 lambda!222069))))

(declare-fun bs!1141952 () Bool)

(assert (= bs!1141952 (and b!4751680 b!4751534)))

(assert (=> bs!1141952 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916057) (= lambda!222129 lambda!222119))))

(declare-fun bs!1141953 () Bool)

(assert (= bs!1141953 (and b!4751680 d!1518594)))

(assert (=> bs!1141953 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915800) (= lambda!222129 lambda!222088))))

(declare-fun bs!1141954 () Bool)

(assert (= bs!1141954 (and b!4751680 d!1518706)))

(assert (=> bs!1141954 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222129 lambda!222122))))

(declare-fun bs!1141955 () Bool)

(assert (= bs!1141955 (and b!4751680 b!4751681)))

(assert (=> bs!1141955 (= lambda!222129 lambda!222128)))

(declare-fun bs!1141956 () Bool)

(assert (= bs!1141956 (and b!4751680 d!1518746)))

(assert (=> bs!1141956 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915754) (= lambda!222129 lambda!222123))))

(declare-fun bs!1141957 () Bool)

(assert (= bs!1141957 (and b!4751680 b!4751294)))

(assert (=> bs!1141957 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915754) (= lambda!222129 lambda!222079))))

(declare-fun bs!1141958 () Bool)

(assert (= bs!1141958 (and b!4751680 b!4751626)))

(assert (=> bs!1141958 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222129 lambda!222124))))

(declare-fun bs!1141959 () Bool)

(assert (= bs!1141959 (and b!4751680 b!4751305)))

(assert (=> bs!1141959 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915494) (= lambda!222129 lambda!222084))))

(assert (=> bs!1141957 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222129 lambda!222078))))

(declare-fun bs!1141960 () Bool)

(assert (= bs!1141960 (and b!4751680 b!4751304)))

(assert (=> bs!1141960 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915796) (= lambda!222129 lambda!222086))))

(declare-fun bs!1141961 () Bool)

(assert (= bs!1141961 (and b!4751680 b!4751295)))

(assert (=> bs!1141961 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222129 lambda!222077))))

(declare-fun bs!1141962 () Bool)

(assert (= bs!1141962 (and b!4751680 b!4751349)))

(assert (=> bs!1141962 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 t!14174)) (= lambda!222129 lambda!222106))))

(declare-fun bs!1141963 () Bool)

(assert (= bs!1141963 (and b!4751680 b!4751625)))

(assert (=> bs!1141963 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916104) (= lambda!222129 lambda!222126))))

(declare-fun bs!1141964 () Bool)

(assert (= bs!1141964 (and b!4751680 d!1518762)))

(assert (=> bs!1141964 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916108) (= lambda!222129 lambda!222127))))

(assert (=> bs!1141960 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915494) (= lambda!222129 lambda!222085))))

(declare-fun bs!1141965 () Bool)

(assert (= bs!1141965 (and b!4751680 b!4751337)))

(assert (=> bs!1141965 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915882) (= lambda!222129 lambda!222099))))

(declare-fun bs!1141966 () Bool)

(assert (= bs!1141966 (and b!4751680 d!1518624)))

(assert (=> bs!1141966 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915907) (= lambda!222129 lambda!222104))))

(declare-fun bs!1141967 () Bool)

(assert (= bs!1141967 (and b!4751680 d!1518676)))

(assert (=> bs!1141967 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915903) (= lambda!222129 lambda!222116))))

(declare-fun bs!1141968 () Bool)

(assert (= bs!1141968 (and b!4751680 b!4751315)))

(assert (=> bs!1141968 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222129 lambda!222091))))

(declare-fun bs!1141969 () Bool)

(assert (= bs!1141969 (and b!4751680 d!1518686)))

(assert (=> bs!1141969 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916061) (= lambda!222129 lambda!222120))))

(declare-fun bs!1141970 () Bool)

(assert (= bs!1141970 (and b!4751680 b!4751338)))

(assert (=> bs!1141970 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222129 lambda!222097))))

(declare-fun bs!1141971 () Bool)

(assert (= bs!1141971 (and b!4751680 b!4751350)))

(assert (=> bs!1141971 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 t!14174)) (= lambda!222129 lambda!222105))))

(declare-fun bs!1141972 () Bool)

(assert (= bs!1141972 (and b!4751680 b!4751267)))

(assert (=> bs!1141972 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915671) (= lambda!222129 lambda!222067))))

(declare-fun bs!1141973 () Bool)

(assert (= bs!1141973 (and b!4751680 b!4751268)))

(assert (=> bs!1141973 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222129 lambda!222065))))

(declare-fun bs!1141974 () Bool)

(assert (= bs!1141974 (and b!4751680 b!4751535)))

(assert (=> bs!1141974 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222129 lambda!222117))))

(declare-fun bs!1141975 () Bool)

(assert (= bs!1141975 (and b!4751680 b!4751344)))

(assert (=> bs!1141975 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915903) (= lambda!222129 lambda!222103))))

(assert (=> bs!1141952 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222129 lambda!222118))))

(assert (=> bs!1141962 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915924) (= lambda!222129 lambda!222107))))

(assert (=> bs!1141963 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222129 lambda!222125))))

(assert (=> bs!1141968 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915829) (= lambda!222129 lambda!222092))))

(declare-fun bs!1141976 () Bool)

(assert (= bs!1141976 (and b!4751680 d!1518694)))

(assert (=> bs!1141976 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915497 t!14174)) (= lambda!222129 lambda!222121))))

(declare-fun bs!1141977 () Bool)

(assert (= bs!1141977 (and b!4751680 b!4751345)))

(assert (=> bs!1141977 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222129 lambda!222101))))

(declare-fun bs!1141978 () Bool)

(assert (= bs!1141978 (and b!4751680 d!1518628)))

(assert (=> bs!1141978 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915928) (= lambda!222129 lambda!222108))))

(declare-fun bs!1141979 () Bool)

(assert (= bs!1141979 (and b!4751680 d!1518590)))

(assert (=> bs!1141979 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915758) (= lambda!222129 lambda!222081))))

(declare-fun bs!1141980 () Bool)

(assert (= bs!1141980 (and b!4751680 b!4751316)))

(assert (=> bs!1141980 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915497) (= lambda!222129 lambda!222089))))

(assert (=> bs!1141972 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222129 lambda!222066))))

(assert (=> bs!1141965 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222129 lambda!222098))))

(declare-fun bs!1141981 () Bool)

(assert (= bs!1141981 (and b!4751680 d!1518668)))

(assert (=> bs!1141981 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915494) (= lambda!222129 lambda!222111))))

(declare-fun bs!1141982 () Bool)

(assert (= bs!1141982 (and b!4751680 d!1518618)))

(assert (=> bs!1141982 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915886) (= lambda!222129 lambda!222100))))

(declare-fun bs!1141983 () Bool)

(assert (= bs!1141983 (and b!4751680 d!1518604)))

(assert (=> bs!1141983 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1915833) (= lambda!222129 lambda!222094))))

(assert (=> bs!1141975 (= (= (+!2382 acc!1214 (h!59483 lt!1915493)) acc!1214) (= lambda!222129 lambda!222102))))

(assert (=> b!4751680 true))

(declare-fun lt!1916159 () ListMap!5541)

(declare-fun lambda!222130 () Int)

(assert (=> bs!1141951 (= (= lt!1916159 lt!1915675) (= lambda!222130 lambda!222069))))

(assert (=> bs!1141952 (= (= lt!1916159 lt!1916057) (= lambda!222130 lambda!222119))))

(assert (=> bs!1141953 (= (= lt!1916159 lt!1915800) (= lambda!222130 lambda!222088))))

(assert (=> bs!1141954 (= (= lt!1916159 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222130 lambda!222122))))

(assert (=> bs!1141955 (= (= lt!1916159 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222130 lambda!222128))))

(assert (=> bs!1141956 (= (= lt!1916159 lt!1915754) (= lambda!222130 lambda!222123))))

(assert (=> bs!1141957 (= (= lt!1916159 lt!1915754) (= lambda!222130 lambda!222079))))

(assert (=> bs!1141959 (= (= lt!1916159 lt!1915494) (= lambda!222130 lambda!222084))))

(assert (=> bs!1141957 (= (= lt!1916159 lt!1915497) (= lambda!222130 lambda!222078))))

(assert (=> bs!1141960 (= (= lt!1916159 lt!1915796) (= lambda!222130 lambda!222086))))

(assert (=> bs!1141961 (= (= lt!1916159 lt!1915497) (= lambda!222130 lambda!222077))))

(assert (=> bs!1141962 (= (= lt!1916159 (+!2382 lt!1915497 t!14174)) (= lambda!222130 lambda!222106))))

(assert (=> bs!1141963 (= (= lt!1916159 lt!1916104) (= lambda!222130 lambda!222126))))

(assert (=> bs!1141964 (= (= lt!1916159 lt!1916108) (= lambda!222130 lambda!222127))))

(assert (=> bs!1141960 (= (= lt!1916159 lt!1915494) (= lambda!222130 lambda!222085))))

(assert (=> bs!1141965 (= (= lt!1916159 lt!1915882) (= lambda!222130 lambda!222099))))

(assert (=> bs!1141966 (= (= lt!1916159 lt!1915907) (= lambda!222130 lambda!222104))))

(assert (=> bs!1141967 (= (= lt!1916159 lt!1915903) (= lambda!222130 lambda!222116))))

(assert (=> bs!1141968 (= (= lt!1916159 lt!1915497) (= lambda!222130 lambda!222091))))

(assert (=> bs!1141969 (= (= lt!1916159 lt!1916061) (= lambda!222130 lambda!222120))))

(assert (=> bs!1141970 (= (= lt!1916159 acc!1214) (= lambda!222130 lambda!222097))))

(assert (=> bs!1141971 (= (= lt!1916159 (+!2382 lt!1915497 t!14174)) (= lambda!222130 lambda!222105))))

(assert (=> bs!1141972 (= (= lt!1916159 lt!1915671) (= lambda!222130 lambda!222067))))

(assert (=> bs!1141973 (= (= lt!1916159 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222130 lambda!222065))))

(assert (=> bs!1141974 (= (= lt!1916159 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222130 lambda!222117))))

(assert (=> b!4751680 (= (= lt!1916159 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222130 lambda!222129))))

(assert (=> bs!1141958 (= (= lt!1916159 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222130 lambda!222124))))

(assert (=> bs!1141975 (= (= lt!1916159 lt!1915903) (= lambda!222130 lambda!222103))))

(assert (=> bs!1141952 (= (= lt!1916159 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222130 lambda!222118))))

(assert (=> bs!1141962 (= (= lt!1916159 lt!1915924) (= lambda!222130 lambda!222107))))

(assert (=> bs!1141963 (= (= lt!1916159 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222130 lambda!222125))))

(assert (=> bs!1141968 (= (= lt!1916159 lt!1915829) (= lambda!222130 lambda!222092))))

(assert (=> bs!1141976 (= (= lt!1916159 (+!2382 lt!1915497 t!14174)) (= lambda!222130 lambda!222121))))

(assert (=> bs!1141977 (= (= lt!1916159 acc!1214) (= lambda!222130 lambda!222101))))

(assert (=> bs!1141978 (= (= lt!1916159 lt!1915928) (= lambda!222130 lambda!222108))))

(assert (=> bs!1141979 (= (= lt!1916159 lt!1915758) (= lambda!222130 lambda!222081))))

(assert (=> bs!1141980 (= (= lt!1916159 lt!1915497) (= lambda!222130 lambda!222089))))

(assert (=> bs!1141972 (= (= lt!1916159 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222130 lambda!222066))))

(assert (=> bs!1141965 (= (= lt!1916159 acc!1214) (= lambda!222130 lambda!222098))))

(assert (=> bs!1141981 (= (= lt!1916159 lt!1915494) (= lambda!222130 lambda!222111))))

(assert (=> bs!1141982 (= (= lt!1916159 lt!1915886) (= lambda!222130 lambda!222100))))

(assert (=> bs!1141983 (= (= lt!1916159 lt!1915833) (= lambda!222130 lambda!222094))))

(assert (=> bs!1141975 (= (= lt!1916159 acc!1214) (= lambda!222130 lambda!222102))))

(assert (=> b!4751680 true))

(declare-fun bs!1141984 () Bool)

(declare-fun d!1518790 () Bool)

(assert (= bs!1141984 (and d!1518790 d!1518558)))

(declare-fun lt!1916163 () ListMap!5541)

(declare-fun lambda!222131 () Int)

(assert (=> bs!1141984 (= (= lt!1916163 lt!1915675) (= lambda!222131 lambda!222069))))

(declare-fun bs!1141985 () Bool)

(assert (= bs!1141985 (and d!1518790 b!4751534)))

(assert (=> bs!1141985 (= (= lt!1916163 lt!1916057) (= lambda!222131 lambda!222119))))

(declare-fun bs!1141986 () Bool)

(assert (= bs!1141986 (and d!1518790 d!1518594)))

(assert (=> bs!1141986 (= (= lt!1916163 lt!1915800) (= lambda!222131 lambda!222088))))

(declare-fun bs!1141987 () Bool)

(assert (= bs!1141987 (and d!1518790 d!1518706)))

(assert (=> bs!1141987 (= (= lt!1916163 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222131 lambda!222122))))

(declare-fun bs!1141988 () Bool)

(assert (= bs!1141988 (and d!1518790 b!4751681)))

(assert (=> bs!1141988 (= (= lt!1916163 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222131 lambda!222128))))

(declare-fun bs!1141989 () Bool)

(assert (= bs!1141989 (and d!1518790 d!1518746)))

(assert (=> bs!1141989 (= (= lt!1916163 lt!1915754) (= lambda!222131 lambda!222123))))

(declare-fun bs!1141990 () Bool)

(assert (= bs!1141990 (and d!1518790 b!4751294)))

(assert (=> bs!1141990 (= (= lt!1916163 lt!1915754) (= lambda!222131 lambda!222079))))

(declare-fun bs!1141991 () Bool)

(assert (= bs!1141991 (and d!1518790 b!4751305)))

(assert (=> bs!1141991 (= (= lt!1916163 lt!1915494) (= lambda!222131 lambda!222084))))

(assert (=> bs!1141990 (= (= lt!1916163 lt!1915497) (= lambda!222131 lambda!222078))))

(declare-fun bs!1141992 () Bool)

(assert (= bs!1141992 (and d!1518790 b!4751304)))

(assert (=> bs!1141992 (= (= lt!1916163 lt!1915796) (= lambda!222131 lambda!222086))))

(declare-fun bs!1141993 () Bool)

(assert (= bs!1141993 (and d!1518790 b!4751295)))

(assert (=> bs!1141993 (= (= lt!1916163 lt!1915497) (= lambda!222131 lambda!222077))))

(declare-fun bs!1141994 () Bool)

(assert (= bs!1141994 (and d!1518790 b!4751349)))

(assert (=> bs!1141994 (= (= lt!1916163 (+!2382 lt!1915497 t!14174)) (= lambda!222131 lambda!222106))))

(declare-fun bs!1141995 () Bool)

(assert (= bs!1141995 (and d!1518790 b!4751625)))

(assert (=> bs!1141995 (= (= lt!1916163 lt!1916104) (= lambda!222131 lambda!222126))))

(declare-fun bs!1141996 () Bool)

(assert (= bs!1141996 (and d!1518790 d!1518762)))

(assert (=> bs!1141996 (= (= lt!1916163 lt!1916108) (= lambda!222131 lambda!222127))))

(assert (=> bs!1141992 (= (= lt!1916163 lt!1915494) (= lambda!222131 lambda!222085))))

(declare-fun bs!1141997 () Bool)

(assert (= bs!1141997 (and d!1518790 b!4751337)))

(assert (=> bs!1141997 (= (= lt!1916163 lt!1915882) (= lambda!222131 lambda!222099))))

(declare-fun bs!1141998 () Bool)

(assert (= bs!1141998 (and d!1518790 d!1518624)))

(assert (=> bs!1141998 (= (= lt!1916163 lt!1915907) (= lambda!222131 lambda!222104))))

(declare-fun bs!1141999 () Bool)

(assert (= bs!1141999 (and d!1518790 d!1518676)))

(assert (=> bs!1141999 (= (= lt!1916163 lt!1915903) (= lambda!222131 lambda!222116))))

(declare-fun bs!1142000 () Bool)

(assert (= bs!1142000 (and d!1518790 b!4751315)))

(assert (=> bs!1142000 (= (= lt!1916163 lt!1915497) (= lambda!222131 lambda!222091))))

(declare-fun bs!1142001 () Bool)

(assert (= bs!1142001 (and d!1518790 d!1518686)))

(assert (=> bs!1142001 (= (= lt!1916163 lt!1916061) (= lambda!222131 lambda!222120))))

(declare-fun bs!1142002 () Bool)

(assert (= bs!1142002 (and d!1518790 b!4751338)))

(assert (=> bs!1142002 (= (= lt!1916163 acc!1214) (= lambda!222131 lambda!222097))))

(declare-fun bs!1142003 () Bool)

(assert (= bs!1142003 (and d!1518790 b!4751350)))

(assert (=> bs!1142003 (= (= lt!1916163 (+!2382 lt!1915497 t!14174)) (= lambda!222131 lambda!222105))))

(declare-fun bs!1142004 () Bool)

(assert (= bs!1142004 (and d!1518790 b!4751267)))

(assert (=> bs!1142004 (= (= lt!1916163 lt!1915671) (= lambda!222131 lambda!222067))))

(declare-fun bs!1142005 () Bool)

(assert (= bs!1142005 (and d!1518790 b!4751268)))

(assert (=> bs!1142005 (= (= lt!1916163 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222131 lambda!222065))))

(declare-fun bs!1142006 () Bool)

(assert (= bs!1142006 (and d!1518790 b!4751535)))

(assert (=> bs!1142006 (= (= lt!1916163 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222131 lambda!222117))))

(declare-fun bs!1142007 () Bool)

(assert (= bs!1142007 (and d!1518790 b!4751680)))

(assert (=> bs!1142007 (= (= lt!1916163 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222131 lambda!222129))))

(declare-fun bs!1142008 () Bool)

(assert (= bs!1142008 (and d!1518790 b!4751626)))

(assert (=> bs!1142008 (= (= lt!1916163 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222131 lambda!222124))))

(declare-fun bs!1142009 () Bool)

(assert (= bs!1142009 (and d!1518790 b!4751344)))

(assert (=> bs!1142009 (= (= lt!1916163 lt!1915903) (= lambda!222131 lambda!222103))))

(assert (=> bs!1141985 (= (= lt!1916163 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222131 lambda!222118))))

(assert (=> bs!1141994 (= (= lt!1916163 lt!1915924) (= lambda!222131 lambda!222107))))

(assert (=> bs!1141995 (= (= lt!1916163 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222131 lambda!222125))))

(assert (=> bs!1142000 (= (= lt!1916163 lt!1915829) (= lambda!222131 lambda!222092))))

(declare-fun bs!1142010 () Bool)

(assert (= bs!1142010 (and d!1518790 d!1518694)))

(assert (=> bs!1142010 (= (= lt!1916163 (+!2382 lt!1915497 t!14174)) (= lambda!222131 lambda!222121))))

(declare-fun bs!1142011 () Bool)

(assert (= bs!1142011 (and d!1518790 b!4751345)))

(assert (=> bs!1142011 (= (= lt!1916163 acc!1214) (= lambda!222131 lambda!222101))))

(declare-fun bs!1142012 () Bool)

(assert (= bs!1142012 (and d!1518790 d!1518628)))

(assert (=> bs!1142012 (= (= lt!1916163 lt!1915928) (= lambda!222131 lambda!222108))))

(declare-fun bs!1142013 () Bool)

(assert (= bs!1142013 (and d!1518790 d!1518590)))

(assert (=> bs!1142013 (= (= lt!1916163 lt!1915758) (= lambda!222131 lambda!222081))))

(assert (=> bs!1142007 (= (= lt!1916163 lt!1916159) (= lambda!222131 lambda!222130))))

(declare-fun bs!1142014 () Bool)

(assert (= bs!1142014 (and d!1518790 b!4751316)))

(assert (=> bs!1142014 (= (= lt!1916163 lt!1915497) (= lambda!222131 lambda!222089))))

(assert (=> bs!1142004 (= (= lt!1916163 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222131 lambda!222066))))

(assert (=> bs!1141997 (= (= lt!1916163 acc!1214) (= lambda!222131 lambda!222098))))

(declare-fun bs!1142015 () Bool)

(assert (= bs!1142015 (and d!1518790 d!1518668)))

(assert (=> bs!1142015 (= (= lt!1916163 lt!1915494) (= lambda!222131 lambda!222111))))

(declare-fun bs!1142016 () Bool)

(assert (= bs!1142016 (and d!1518790 d!1518618)))

(assert (=> bs!1142016 (= (= lt!1916163 lt!1915886) (= lambda!222131 lambda!222100))))

(declare-fun bs!1142017 () Bool)

(assert (= bs!1142017 (and d!1518790 d!1518604)))

(assert (=> bs!1142017 (= (= lt!1916163 lt!1915833) (= lambda!222131 lambda!222094))))

(assert (=> bs!1142009 (= (= lt!1916163 acc!1214) (= lambda!222131 lambda!222102))))

(assert (=> d!1518790 true))

(declare-fun e!2964077 () Bool)

(assert (=> d!1518790 e!2964077))

(declare-fun res!2015025 () Bool)

(assert (=> d!1518790 (=> (not res!2015025) (not e!2964077))))

(assert (=> d!1518790 (= res!2015025 (forall!11762 (t!360542 lt!1915493) lambda!222131))))

(declare-fun e!2964078 () ListMap!5541)

(assert (=> d!1518790 (= lt!1916163 e!2964078)))

(declare-fun c!811291 () Bool)

(assert (=> d!1518790 (= c!811291 ((_ is Nil!53086) (t!360542 lt!1915493)))))

(assert (=> d!1518790 (noDuplicateKeys!2148 (t!360542 lt!1915493))))

(assert (=> d!1518790 (= (addToMapMapFromBucket!1572 (t!360542 lt!1915493) (+!2382 acc!1214 (h!59483 lt!1915493))) lt!1916163)))

(assert (=> b!4751680 (= e!2964078 lt!1916159)))

(declare-fun lt!1916160 () ListMap!5541)

(assert (=> b!4751680 (= lt!1916160 (+!2382 (+!2382 acc!1214 (h!59483 lt!1915493)) (h!59483 (t!360542 lt!1915493))))))

(assert (=> b!4751680 (= lt!1916159 (addToMapMapFromBucket!1572 (t!360542 (t!360542 lt!1915493)) (+!2382 (+!2382 acc!1214 (h!59483 lt!1915493)) (h!59483 (t!360542 lt!1915493)))))))

(declare-fun lt!1916166 () Unit!135894)

(declare-fun call!332918 () Unit!135894)

(assert (=> b!4751680 (= lt!1916166 call!332918)))

(assert (=> b!4751680 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 lt!1915493))) lambda!222129)))

(declare-fun lt!1916153 () Unit!135894)

(assert (=> b!4751680 (= lt!1916153 lt!1916166)))

(declare-fun call!332920 () Bool)

(assert (=> b!4751680 call!332920))

(declare-fun lt!1916170 () Unit!135894)

(declare-fun Unit!136111 () Unit!135894)

(assert (=> b!4751680 (= lt!1916170 Unit!136111)))

(assert (=> b!4751680 (forall!11762 (t!360542 (t!360542 lt!1915493)) lambda!222130)))

(declare-fun lt!1916155 () Unit!135894)

(declare-fun Unit!136112 () Unit!135894)

(assert (=> b!4751680 (= lt!1916155 Unit!136112)))

(declare-fun lt!1916164 () Unit!135894)

(declare-fun Unit!136113 () Unit!135894)

(assert (=> b!4751680 (= lt!1916164 Unit!136113)))

(declare-fun lt!1916157 () Unit!135894)

(assert (=> b!4751680 (= lt!1916157 (forallContained!3788 (toList!6116 lt!1916160) lambda!222130 (h!59483 (t!360542 lt!1915493))))))

(assert (=> b!4751680 (contains!16509 lt!1916160 (_1!30722 (h!59483 (t!360542 lt!1915493))))))

(declare-fun lt!1916165 () Unit!135894)

(declare-fun Unit!136114 () Unit!135894)

(assert (=> b!4751680 (= lt!1916165 Unit!136114)))

(assert (=> b!4751680 (contains!16509 lt!1916159 (_1!30722 (h!59483 (t!360542 lt!1915493))))))

(declare-fun lt!1916167 () Unit!135894)

(declare-fun Unit!136115 () Unit!135894)

(assert (=> b!4751680 (= lt!1916167 Unit!136115)))

(assert (=> b!4751680 (forall!11762 (t!360542 lt!1915493) lambda!222130)))

(declare-fun lt!1916150 () Unit!135894)

(declare-fun Unit!136116 () Unit!135894)

(assert (=> b!4751680 (= lt!1916150 Unit!136116)))

(assert (=> b!4751680 (forall!11762 (toList!6116 lt!1916160) lambda!222130)))

(declare-fun lt!1916156 () Unit!135894)

(declare-fun Unit!136117 () Unit!135894)

(assert (=> b!4751680 (= lt!1916156 Unit!136117)))

(declare-fun lt!1916152 () Unit!135894)

(declare-fun Unit!136118 () Unit!135894)

(assert (=> b!4751680 (= lt!1916152 Unit!136118)))

(declare-fun lt!1916154 () Unit!135894)

(assert (=> b!4751680 (= lt!1916154 (addForallContainsKeyThenBeforeAdding!876 (+!2382 acc!1214 (h!59483 lt!1915493)) lt!1916159 (_1!30722 (h!59483 (t!360542 lt!1915493))) (_2!30722 (h!59483 (t!360542 lt!1915493)))))))

(assert (=> b!4751680 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 lt!1915493))) lambda!222130)))

(declare-fun lt!1916168 () Unit!135894)

(assert (=> b!4751680 (= lt!1916168 lt!1916154)))

(assert (=> b!4751680 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 lt!1915493))) lambda!222130)))

(declare-fun lt!1916161 () Unit!135894)

(declare-fun Unit!136119 () Unit!135894)

(assert (=> b!4751680 (= lt!1916161 Unit!136119)))

(declare-fun res!2015027 () Bool)

(assert (=> b!4751680 (= res!2015027 (forall!11762 (t!360542 lt!1915493) lambda!222130))))

(declare-fun e!2964076 () Bool)

(assert (=> b!4751680 (=> (not res!2015027) (not e!2964076))))

(assert (=> b!4751680 e!2964076))

(declare-fun lt!1916162 () Unit!135894)

(declare-fun Unit!136120 () Unit!135894)

(assert (=> b!4751680 (= lt!1916162 Unit!136120)))

(declare-fun bm!332913 () Bool)

(assert (=> bm!332913 (= call!332920 (forall!11762 (ite c!811291 (toList!6116 (+!2382 acc!1214 (h!59483 lt!1915493))) (toList!6116 lt!1916160)) (ite c!811291 lambda!222128 lambda!222130)))))

(assert (=> b!4751681 (= e!2964078 (+!2382 acc!1214 (h!59483 lt!1915493)))))

(declare-fun lt!1916158 () Unit!135894)

(assert (=> b!4751681 (= lt!1916158 call!332918)))

(declare-fun call!332919 () Bool)

(assert (=> b!4751681 call!332919))

(declare-fun lt!1916169 () Unit!135894)

(assert (=> b!4751681 (= lt!1916169 lt!1916158)))

(assert (=> b!4751681 call!332920))

(declare-fun lt!1916151 () Unit!135894)

(declare-fun Unit!136121 () Unit!135894)

(assert (=> b!4751681 (= lt!1916151 Unit!136121)))

(declare-fun b!4751682 () Bool)

(assert (=> b!4751682 (= e!2964077 (invariantList!1594 (toList!6116 lt!1916163)))))

(declare-fun bm!332914 () Bool)

(assert (=> bm!332914 (= call!332919 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 lt!1915493))) (ite c!811291 lambda!222128 lambda!222130)))))

(declare-fun bm!332915 () Bool)

(assert (=> bm!332915 (= call!332918 (lemmaContainsAllItsOwnKeys!877 (+!2382 acc!1214 (h!59483 lt!1915493))))))

(declare-fun b!4751683 () Bool)

(assert (=> b!4751683 (= e!2964076 call!332919)))

(declare-fun b!4751684 () Bool)

(declare-fun res!2015026 () Bool)

(assert (=> b!4751684 (=> (not res!2015026) (not e!2964077))))

(assert (=> b!4751684 (= res!2015026 (forall!11762 (toList!6116 (+!2382 acc!1214 (h!59483 lt!1915493))) lambda!222131))))

(assert (= (and d!1518790 c!811291) b!4751681))

(assert (= (and d!1518790 (not c!811291)) b!4751680))

(assert (= (and b!4751680 res!2015027) b!4751683))

(assert (= (or b!4751681 b!4751680) bm!332915))

(assert (= (or b!4751681 b!4751680) bm!332913))

(assert (= (or b!4751681 b!4751683) bm!332914))

(assert (= (and d!1518790 res!2015025) b!4751684))

(assert (= (and b!4751684 res!2015026) b!4751682))

(declare-fun m!5714795 () Bool)

(assert (=> d!1518790 m!5714795))

(assert (=> d!1518790 m!5714085))

(declare-fun m!5714797 () Bool)

(assert (=> bm!332913 m!5714797))

(assert (=> bm!332915 m!5714059))

(declare-fun m!5714799 () Bool)

(assert (=> bm!332915 m!5714799))

(declare-fun m!5714801 () Bool)

(assert (=> b!4751682 m!5714801))

(declare-fun m!5714803 () Bool)

(assert (=> b!4751680 m!5714803))

(declare-fun m!5714805 () Bool)

(assert (=> b!4751680 m!5714805))

(declare-fun m!5714807 () Bool)

(assert (=> b!4751680 m!5714807))

(declare-fun m!5714809 () Bool)

(assert (=> b!4751680 m!5714809))

(declare-fun m!5714811 () Bool)

(assert (=> b!4751680 m!5714811))

(assert (=> b!4751680 m!5714059))

(assert (=> b!4751680 m!5714805))

(declare-fun m!5714813 () Bool)

(assert (=> b!4751680 m!5714813))

(declare-fun m!5714815 () Bool)

(assert (=> b!4751680 m!5714815))

(assert (=> b!4751680 m!5714809))

(declare-fun m!5714817 () Bool)

(assert (=> b!4751680 m!5714817))

(declare-fun m!5714819 () Bool)

(assert (=> b!4751680 m!5714819))

(assert (=> b!4751680 m!5714059))

(declare-fun m!5714821 () Bool)

(assert (=> b!4751680 m!5714821))

(declare-fun m!5714823 () Bool)

(assert (=> b!4751680 m!5714823))

(assert (=> b!4751680 m!5714819))

(declare-fun m!5714825 () Bool)

(assert (=> bm!332914 m!5714825))

(declare-fun m!5714827 () Bool)

(assert (=> b!4751684 m!5714827))

(assert (=> b!4751337 d!1518790))

(declare-fun d!1518792 () Bool)

(declare-fun res!2015028 () Bool)

(declare-fun e!2964079 () Bool)

(assert (=> d!1518792 (=> res!2015028 e!2964079)))

(assert (=> d!1518792 (= res!2015028 ((_ is Nil!53086) lt!1915493))))

(assert (=> d!1518792 (= (forall!11762 lt!1915493 lambda!222099) e!2964079)))

(declare-fun b!4751685 () Bool)

(declare-fun e!2964080 () Bool)

(assert (=> b!4751685 (= e!2964079 e!2964080)))

(declare-fun res!2015029 () Bool)

(assert (=> b!4751685 (=> (not res!2015029) (not e!2964080))))

(assert (=> b!4751685 (= res!2015029 (dynLambda!21900 lambda!222099 (h!59483 lt!1915493)))))

(declare-fun b!4751686 () Bool)

(assert (=> b!4751686 (= e!2964080 (forall!11762 (t!360542 lt!1915493) lambda!222099))))

(assert (= (and d!1518792 (not res!2015028)) b!4751685))

(assert (= (and b!4751685 res!2015029) b!4751686))

(declare-fun b_lambda!183249 () Bool)

(assert (=> (not b_lambda!183249) (not b!4751685)))

(assert (=> b!4751685 m!5714789))

(assert (=> b!4751686 m!5714069))

(assert (=> b!4751337 d!1518792))

(declare-fun b!4751687 () Bool)

(declare-fun e!2964085 () List!53211)

(assert (=> b!4751687 (= e!2964085 (getKeysList!1003 (toList!6116 lt!1915883)))))

(declare-fun b!4751688 () Bool)

(declare-fun e!2964083 () Unit!135894)

(declare-fun e!2964086 () Unit!135894)

(assert (=> b!4751688 (= e!2964083 e!2964086)))

(declare-fun c!811293 () Bool)

(declare-fun call!332921 () Bool)

(assert (=> b!4751688 (= c!811293 call!332921)))

(declare-fun b!4751689 () Bool)

(declare-fun e!2964081 () Bool)

(assert (=> b!4751689 (= e!2964081 (not (contains!16512 (keys!19162 lt!1915883) (_1!30722 (h!59483 lt!1915493)))))))

(declare-fun b!4751690 () Bool)

(assert (=> b!4751690 (= e!2964085 (keys!19162 lt!1915883))))

(declare-fun b!4751691 () Bool)

(declare-fun Unit!136122 () Unit!135894)

(assert (=> b!4751691 (= e!2964086 Unit!136122)))

(declare-fun b!4751692 () Bool)

(declare-fun e!2964084 () Bool)

(declare-fun e!2964082 () Bool)

(assert (=> b!4751692 (= e!2964084 e!2964082)))

(declare-fun res!2015030 () Bool)

(assert (=> b!4751692 (=> (not res!2015030) (not e!2964082))))

(assert (=> b!4751692 (= res!2015030 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915883) (_1!30722 (h!59483 lt!1915493)))))))

(declare-fun b!4751693 () Bool)

(declare-fun lt!1916172 () Unit!135894)

(assert (=> b!4751693 (= e!2964083 lt!1916172)))

(declare-fun lt!1916175 () Unit!135894)

(assert (=> b!4751693 (= lt!1916175 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915883) (_1!30722 (h!59483 lt!1915493))))))

(assert (=> b!4751693 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915883) (_1!30722 (h!59483 lt!1915493))))))

(declare-fun lt!1916174 () Unit!135894)

(assert (=> b!4751693 (= lt!1916174 lt!1916175)))

(assert (=> b!4751693 (= lt!1916172 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915883) (_1!30722 (h!59483 lt!1915493))))))

(assert (=> b!4751693 call!332921))

(declare-fun b!4751694 () Bool)

(assert (=> b!4751694 (= e!2964082 (contains!16512 (keys!19162 lt!1915883) (_1!30722 (h!59483 lt!1915493))))))

(declare-fun d!1518794 () Bool)

(assert (=> d!1518794 e!2964084))

(declare-fun res!2015031 () Bool)

(assert (=> d!1518794 (=> res!2015031 e!2964084)))

(assert (=> d!1518794 (= res!2015031 e!2964081)))

(declare-fun res!2015032 () Bool)

(assert (=> d!1518794 (=> (not res!2015032) (not e!2964081))))

(declare-fun lt!1916171 () Bool)

(assert (=> d!1518794 (= res!2015032 (not lt!1916171))))

(declare-fun lt!1916177 () Bool)

(assert (=> d!1518794 (= lt!1916171 lt!1916177)))

(declare-fun lt!1916173 () Unit!135894)

(assert (=> d!1518794 (= lt!1916173 e!2964083)))

(declare-fun c!811292 () Bool)

(assert (=> d!1518794 (= c!811292 lt!1916177)))

(assert (=> d!1518794 (= lt!1916177 (containsKey!3558 (toList!6116 lt!1915883) (_1!30722 (h!59483 lt!1915493))))))

(assert (=> d!1518794 (= (contains!16509 lt!1915883 (_1!30722 (h!59483 lt!1915493))) lt!1916171)))

(declare-fun b!4751695 () Bool)

(assert (=> b!4751695 false))

(declare-fun lt!1916178 () Unit!135894)

(declare-fun lt!1916176 () Unit!135894)

(assert (=> b!4751695 (= lt!1916178 lt!1916176)))

(assert (=> b!4751695 (containsKey!3558 (toList!6116 lt!1915883) (_1!30722 (h!59483 lt!1915493)))))

(assert (=> b!4751695 (= lt!1916176 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915883) (_1!30722 (h!59483 lt!1915493))))))

(declare-fun Unit!136123 () Unit!135894)

(assert (=> b!4751695 (= e!2964086 Unit!136123)))

(declare-fun bm!332916 () Bool)

(assert (=> bm!332916 (= call!332921 (contains!16512 e!2964085 (_1!30722 (h!59483 lt!1915493))))))

(declare-fun c!811294 () Bool)

(assert (=> bm!332916 (= c!811294 c!811292)))

(assert (= (and d!1518794 c!811292) b!4751693))

(assert (= (and d!1518794 (not c!811292)) b!4751688))

(assert (= (and b!4751688 c!811293) b!4751695))

(assert (= (and b!4751688 (not c!811293)) b!4751691))

(assert (= (or b!4751693 b!4751688) bm!332916))

(assert (= (and bm!332916 c!811294) b!4751687))

(assert (= (and bm!332916 (not c!811294)) b!4751690))

(assert (= (and d!1518794 res!2015032) b!4751689))

(assert (= (and d!1518794 (not res!2015031)) b!4751692))

(assert (= (and b!4751692 res!2015030) b!4751694))

(declare-fun m!5714829 () Bool)

(assert (=> b!4751687 m!5714829))

(declare-fun m!5714831 () Bool)

(assert (=> b!4751689 m!5714831))

(assert (=> b!4751689 m!5714831))

(declare-fun m!5714833 () Bool)

(assert (=> b!4751689 m!5714833))

(assert (=> b!4751694 m!5714831))

(assert (=> b!4751694 m!5714831))

(assert (=> b!4751694 m!5714833))

(declare-fun m!5714835 () Bool)

(assert (=> bm!332916 m!5714835))

(declare-fun m!5714837 () Bool)

(assert (=> b!4751692 m!5714837))

(assert (=> b!4751692 m!5714837))

(declare-fun m!5714839 () Bool)

(assert (=> b!4751692 m!5714839))

(declare-fun m!5714841 () Bool)

(assert (=> d!1518794 m!5714841))

(assert (=> b!4751695 m!5714841))

(declare-fun m!5714843 () Bool)

(assert (=> b!4751695 m!5714843))

(assert (=> b!4751690 m!5714831))

(declare-fun m!5714845 () Bool)

(assert (=> b!4751693 m!5714845))

(assert (=> b!4751693 m!5714837))

(assert (=> b!4751693 m!5714837))

(assert (=> b!4751693 m!5714839))

(declare-fun m!5714847 () Bool)

(assert (=> b!4751693 m!5714847))

(assert (=> b!4751337 d!1518794))

(declare-fun bs!1142018 () Bool)

(declare-fun d!1518796 () Bool)

(assert (= bs!1142018 (and d!1518796 d!1518558)))

(declare-fun lambda!222132 () Int)

(assert (=> bs!1142018 (= (= lt!1915882 lt!1915675) (= lambda!222132 lambda!222069))))

(declare-fun bs!1142019 () Bool)

(assert (= bs!1142019 (and d!1518796 b!4751534)))

(assert (=> bs!1142019 (= (= lt!1915882 lt!1916057) (= lambda!222132 lambda!222119))))

(declare-fun bs!1142020 () Bool)

(assert (= bs!1142020 (and d!1518796 d!1518594)))

(assert (=> bs!1142020 (= (= lt!1915882 lt!1915800) (= lambda!222132 lambda!222088))))

(declare-fun bs!1142021 () Bool)

(assert (= bs!1142021 (and d!1518796 d!1518706)))

(assert (=> bs!1142021 (= (= lt!1915882 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222132 lambda!222122))))

(declare-fun bs!1142022 () Bool)

(assert (= bs!1142022 (and d!1518796 d!1518790)))

(assert (=> bs!1142022 (= (= lt!1915882 lt!1916163) (= lambda!222132 lambda!222131))))

(declare-fun bs!1142023 () Bool)

(assert (= bs!1142023 (and d!1518796 b!4751681)))

(assert (=> bs!1142023 (= (= lt!1915882 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222132 lambda!222128))))

(declare-fun bs!1142024 () Bool)

(assert (= bs!1142024 (and d!1518796 d!1518746)))

(assert (=> bs!1142024 (= (= lt!1915882 lt!1915754) (= lambda!222132 lambda!222123))))

(declare-fun bs!1142025 () Bool)

(assert (= bs!1142025 (and d!1518796 b!4751294)))

(assert (=> bs!1142025 (= (= lt!1915882 lt!1915754) (= lambda!222132 lambda!222079))))

(declare-fun bs!1142026 () Bool)

(assert (= bs!1142026 (and d!1518796 b!4751305)))

(assert (=> bs!1142026 (= (= lt!1915882 lt!1915494) (= lambda!222132 lambda!222084))))

(assert (=> bs!1142025 (= (= lt!1915882 lt!1915497) (= lambda!222132 lambda!222078))))

(declare-fun bs!1142027 () Bool)

(assert (= bs!1142027 (and d!1518796 b!4751304)))

(assert (=> bs!1142027 (= (= lt!1915882 lt!1915796) (= lambda!222132 lambda!222086))))

(declare-fun bs!1142028 () Bool)

(assert (= bs!1142028 (and d!1518796 b!4751295)))

(assert (=> bs!1142028 (= (= lt!1915882 lt!1915497) (= lambda!222132 lambda!222077))))

(declare-fun bs!1142029 () Bool)

(assert (= bs!1142029 (and d!1518796 b!4751349)))

(assert (=> bs!1142029 (= (= lt!1915882 (+!2382 lt!1915497 t!14174)) (= lambda!222132 lambda!222106))))

(declare-fun bs!1142030 () Bool)

(assert (= bs!1142030 (and d!1518796 b!4751625)))

(assert (=> bs!1142030 (= (= lt!1915882 lt!1916104) (= lambda!222132 lambda!222126))))

(declare-fun bs!1142031 () Bool)

(assert (= bs!1142031 (and d!1518796 d!1518762)))

(assert (=> bs!1142031 (= (= lt!1915882 lt!1916108) (= lambda!222132 lambda!222127))))

(assert (=> bs!1142027 (= (= lt!1915882 lt!1915494) (= lambda!222132 lambda!222085))))

(declare-fun bs!1142032 () Bool)

(assert (= bs!1142032 (and d!1518796 b!4751337)))

(assert (=> bs!1142032 (= lambda!222132 lambda!222099)))

(declare-fun bs!1142033 () Bool)

(assert (= bs!1142033 (and d!1518796 d!1518624)))

(assert (=> bs!1142033 (= (= lt!1915882 lt!1915907) (= lambda!222132 lambda!222104))))

(declare-fun bs!1142034 () Bool)

(assert (= bs!1142034 (and d!1518796 d!1518676)))

(assert (=> bs!1142034 (= (= lt!1915882 lt!1915903) (= lambda!222132 lambda!222116))))

(declare-fun bs!1142035 () Bool)

(assert (= bs!1142035 (and d!1518796 b!4751315)))

(assert (=> bs!1142035 (= (= lt!1915882 lt!1915497) (= lambda!222132 lambda!222091))))

(declare-fun bs!1142036 () Bool)

(assert (= bs!1142036 (and d!1518796 d!1518686)))

(assert (=> bs!1142036 (= (= lt!1915882 lt!1916061) (= lambda!222132 lambda!222120))))

(declare-fun bs!1142037 () Bool)

(assert (= bs!1142037 (and d!1518796 b!4751338)))

(assert (=> bs!1142037 (= (= lt!1915882 acc!1214) (= lambda!222132 lambda!222097))))

(declare-fun bs!1142038 () Bool)

(assert (= bs!1142038 (and d!1518796 b!4751350)))

(assert (=> bs!1142038 (= (= lt!1915882 (+!2382 lt!1915497 t!14174)) (= lambda!222132 lambda!222105))))

(declare-fun bs!1142039 () Bool)

(assert (= bs!1142039 (and d!1518796 b!4751267)))

(assert (=> bs!1142039 (= (= lt!1915882 lt!1915671) (= lambda!222132 lambda!222067))))

(declare-fun bs!1142040 () Bool)

(assert (= bs!1142040 (and d!1518796 b!4751268)))

(assert (=> bs!1142040 (= (= lt!1915882 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222132 lambda!222065))))

(declare-fun bs!1142041 () Bool)

(assert (= bs!1142041 (and d!1518796 b!4751535)))

(assert (=> bs!1142041 (= (= lt!1915882 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222132 lambda!222117))))

(declare-fun bs!1142042 () Bool)

(assert (= bs!1142042 (and d!1518796 b!4751680)))

(assert (=> bs!1142042 (= (= lt!1915882 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222132 lambda!222129))))

(declare-fun bs!1142043 () Bool)

(assert (= bs!1142043 (and d!1518796 b!4751626)))

(assert (=> bs!1142043 (= (= lt!1915882 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222132 lambda!222124))))

(declare-fun bs!1142044 () Bool)

(assert (= bs!1142044 (and d!1518796 b!4751344)))

(assert (=> bs!1142044 (= (= lt!1915882 lt!1915903) (= lambda!222132 lambda!222103))))

(assert (=> bs!1142019 (= (= lt!1915882 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222132 lambda!222118))))

(assert (=> bs!1142029 (= (= lt!1915882 lt!1915924) (= lambda!222132 lambda!222107))))

(assert (=> bs!1142030 (= (= lt!1915882 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222132 lambda!222125))))

(assert (=> bs!1142035 (= (= lt!1915882 lt!1915829) (= lambda!222132 lambda!222092))))

(declare-fun bs!1142045 () Bool)

(assert (= bs!1142045 (and d!1518796 d!1518694)))

(assert (=> bs!1142045 (= (= lt!1915882 (+!2382 lt!1915497 t!14174)) (= lambda!222132 lambda!222121))))

(declare-fun bs!1142046 () Bool)

(assert (= bs!1142046 (and d!1518796 b!4751345)))

(assert (=> bs!1142046 (= (= lt!1915882 acc!1214) (= lambda!222132 lambda!222101))))

(declare-fun bs!1142047 () Bool)

(assert (= bs!1142047 (and d!1518796 d!1518628)))

(assert (=> bs!1142047 (= (= lt!1915882 lt!1915928) (= lambda!222132 lambda!222108))))

(declare-fun bs!1142048 () Bool)

(assert (= bs!1142048 (and d!1518796 d!1518590)))

(assert (=> bs!1142048 (= (= lt!1915882 lt!1915758) (= lambda!222132 lambda!222081))))

(assert (=> bs!1142042 (= (= lt!1915882 lt!1916159) (= lambda!222132 lambda!222130))))

(declare-fun bs!1142049 () Bool)

(assert (= bs!1142049 (and d!1518796 b!4751316)))

(assert (=> bs!1142049 (= (= lt!1915882 lt!1915497) (= lambda!222132 lambda!222089))))

(assert (=> bs!1142039 (= (= lt!1915882 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222132 lambda!222066))))

(assert (=> bs!1142032 (= (= lt!1915882 acc!1214) (= lambda!222132 lambda!222098))))

(declare-fun bs!1142050 () Bool)

(assert (= bs!1142050 (and d!1518796 d!1518668)))

(assert (=> bs!1142050 (= (= lt!1915882 lt!1915494) (= lambda!222132 lambda!222111))))

(declare-fun bs!1142051 () Bool)

(assert (= bs!1142051 (and d!1518796 d!1518618)))

(assert (=> bs!1142051 (= (= lt!1915882 lt!1915886) (= lambda!222132 lambda!222100))))

(declare-fun bs!1142052 () Bool)

(assert (= bs!1142052 (and d!1518796 d!1518604)))

(assert (=> bs!1142052 (= (= lt!1915882 lt!1915833) (= lambda!222132 lambda!222094))))

(assert (=> bs!1142044 (= (= lt!1915882 acc!1214) (= lambda!222132 lambda!222102))))

(assert (=> d!1518796 true))

(assert (=> d!1518796 (forall!11762 (toList!6116 acc!1214) lambda!222132)))

(declare-fun lt!1916179 () Unit!135894)

(assert (=> d!1518796 (= lt!1916179 (choose!33826 acc!1214 lt!1915882 (_1!30722 (h!59483 lt!1915493)) (_2!30722 (h!59483 lt!1915493))))))

(assert (=> d!1518796 (forall!11762 (toList!6116 (+!2382 acc!1214 (tuple2!54857 (_1!30722 (h!59483 lt!1915493)) (_2!30722 (h!59483 lt!1915493))))) lambda!222132)))

(assert (=> d!1518796 (= (addForallContainsKeyThenBeforeAdding!876 acc!1214 lt!1915882 (_1!30722 (h!59483 lt!1915493)) (_2!30722 (h!59483 lt!1915493))) lt!1916179)))

(declare-fun bs!1142053 () Bool)

(assert (= bs!1142053 d!1518796))

(declare-fun m!5714849 () Bool)

(assert (=> bs!1142053 m!5714849))

(declare-fun m!5714851 () Bool)

(assert (=> bs!1142053 m!5714851))

(declare-fun m!5714853 () Bool)

(assert (=> bs!1142053 m!5714853))

(declare-fun m!5714855 () Bool)

(assert (=> bs!1142053 m!5714855))

(assert (=> b!4751337 d!1518796))

(declare-fun d!1518798 () Bool)

(declare-fun c!811295 () Bool)

(assert (=> d!1518798 (= c!811295 ((_ is Nil!53086) (toList!6116 lt!1915495)))))

(declare-fun e!2964087 () (InoxSet tuple2!54856))

(assert (=> d!1518798 (= (content!9529 (toList!6116 lt!1915495)) e!2964087)))

(declare-fun b!4751696 () Bool)

(assert (=> b!4751696 (= e!2964087 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751697 () Bool)

(assert (=> b!4751697 (= e!2964087 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 lt!1915495)) true) (content!9529 (t!360542 (toList!6116 lt!1915495)))))))

(assert (= (and d!1518798 c!811295) b!4751696))

(assert (= (and d!1518798 (not c!811295)) b!4751697))

(declare-fun m!5714857 () Bool)

(assert (=> b!4751697 m!5714857))

(declare-fun m!5714859 () Bool)

(assert (=> b!4751697 m!5714859))

(assert (=> d!1518622 d!1518798))

(declare-fun d!1518800 () Bool)

(declare-fun c!811296 () Bool)

(assert (=> d!1518800 (= c!811296 ((_ is Nil!53086) (toList!6116 (addToMapMapFromBucket!1572 l!14304 acc!1214))))))

(declare-fun e!2964088 () (InoxSet tuple2!54856))

(assert (=> d!1518800 (= (content!9529 (toList!6116 (addToMapMapFromBucket!1572 l!14304 acc!1214))) e!2964088)))

(declare-fun b!4751698 () Bool)

(assert (=> b!4751698 (= e!2964088 ((as const (Array tuple2!54856 Bool)) false))))

(declare-fun b!4751699 () Bool)

(assert (=> b!4751699 (= e!2964088 ((_ map or) (store ((as const (Array tuple2!54856 Bool)) false) (h!59483 (toList!6116 (addToMapMapFromBucket!1572 l!14304 acc!1214))) true) (content!9529 (t!360542 (toList!6116 (addToMapMapFromBucket!1572 l!14304 acc!1214))))))))

(assert (= (and d!1518800 c!811296) b!4751698))

(assert (= (and d!1518800 (not c!811296)) b!4751699))

(declare-fun m!5714861 () Bool)

(assert (=> b!4751699 m!5714861))

(declare-fun m!5714863 () Bool)

(assert (=> b!4751699 m!5714863))

(assert (=> d!1518622 d!1518800))

(declare-fun d!1518802 () Bool)

(assert (=> d!1518802 (= (invariantList!1594 (toList!6116 lt!1915907)) (noDuplicatedKeys!402 (toList!6116 lt!1915907)))))

(declare-fun bs!1142054 () Bool)

(assert (= bs!1142054 d!1518802))

(declare-fun m!5714865 () Bool)

(assert (=> bs!1142054 m!5714865))

(assert (=> b!4751346 d!1518802))

(declare-fun d!1518804 () Bool)

(declare-fun res!2015033 () Bool)

(declare-fun e!2964089 () Bool)

(assert (=> d!1518804 (=> res!2015033 e!2964089)))

(assert (=> d!1518804 (= res!2015033 ((_ is Nil!53086) (t!360542 (t!360542 l!14304))))))

(assert (=> d!1518804 (= (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222092) e!2964089)))

(declare-fun b!4751700 () Bool)

(declare-fun e!2964090 () Bool)

(assert (=> b!4751700 (= e!2964089 e!2964090)))

(declare-fun res!2015034 () Bool)

(assert (=> b!4751700 (=> (not res!2015034) (not e!2964090))))

(assert (=> b!4751700 (= res!2015034 (dynLambda!21900 lambda!222092 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun b!4751701 () Bool)

(assert (=> b!4751701 (= e!2964090 (forall!11762 (t!360542 (t!360542 (t!360542 l!14304))) lambda!222092))))

(assert (= (and d!1518804 (not res!2015033)) b!4751700))

(assert (= (and b!4751700 res!2015034) b!4751701))

(declare-fun b_lambda!183251 () Bool)

(assert (=> (not b_lambda!183251) (not b!4751700)))

(declare-fun m!5714867 () Bool)

(assert (=> b!4751700 m!5714867))

(declare-fun m!5714869 () Bool)

(assert (=> b!4751701 m!5714869))

(assert (=> b!4751315 d!1518804))

(declare-fun bs!1142055 () Bool)

(declare-fun d!1518806 () Bool)

(assert (= bs!1142055 (and d!1518806 d!1518558)))

(declare-fun lambda!222133 () Int)

(assert (=> bs!1142055 (= (= lt!1915829 lt!1915675) (= lambda!222133 lambda!222069))))

(declare-fun bs!1142056 () Bool)

(assert (= bs!1142056 (and d!1518806 b!4751534)))

(assert (=> bs!1142056 (= (= lt!1915829 lt!1916057) (= lambda!222133 lambda!222119))))

(declare-fun bs!1142057 () Bool)

(assert (= bs!1142057 (and d!1518806 d!1518594)))

(assert (=> bs!1142057 (= (= lt!1915829 lt!1915800) (= lambda!222133 lambda!222088))))

(declare-fun bs!1142058 () Bool)

(assert (= bs!1142058 (and d!1518806 d!1518706)))

(assert (=> bs!1142058 (= (= lt!1915829 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222133 lambda!222122))))

(declare-fun bs!1142059 () Bool)

(assert (= bs!1142059 (and d!1518806 d!1518790)))

(assert (=> bs!1142059 (= (= lt!1915829 lt!1916163) (= lambda!222133 lambda!222131))))

(declare-fun bs!1142060 () Bool)

(assert (= bs!1142060 (and d!1518806 b!4751681)))

(assert (=> bs!1142060 (= (= lt!1915829 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222133 lambda!222128))))

(declare-fun bs!1142061 () Bool)

(assert (= bs!1142061 (and d!1518806 d!1518746)))

(assert (=> bs!1142061 (= (= lt!1915829 lt!1915754) (= lambda!222133 lambda!222123))))

(declare-fun bs!1142062 () Bool)

(assert (= bs!1142062 (and d!1518806 b!4751294)))

(assert (=> bs!1142062 (= (= lt!1915829 lt!1915754) (= lambda!222133 lambda!222079))))

(declare-fun bs!1142063 () Bool)

(assert (= bs!1142063 (and d!1518806 b!4751305)))

(assert (=> bs!1142063 (= (= lt!1915829 lt!1915494) (= lambda!222133 lambda!222084))))

(assert (=> bs!1142062 (= (= lt!1915829 lt!1915497) (= lambda!222133 lambda!222078))))

(declare-fun bs!1142064 () Bool)

(assert (= bs!1142064 (and d!1518806 b!4751304)))

(assert (=> bs!1142064 (= (= lt!1915829 lt!1915796) (= lambda!222133 lambda!222086))))

(declare-fun bs!1142065 () Bool)

(assert (= bs!1142065 (and d!1518806 d!1518796)))

(assert (=> bs!1142065 (= (= lt!1915829 lt!1915882) (= lambda!222133 lambda!222132))))

(declare-fun bs!1142066 () Bool)

(assert (= bs!1142066 (and d!1518806 b!4751295)))

(assert (=> bs!1142066 (= (= lt!1915829 lt!1915497) (= lambda!222133 lambda!222077))))

(declare-fun bs!1142067 () Bool)

(assert (= bs!1142067 (and d!1518806 b!4751349)))

(assert (=> bs!1142067 (= (= lt!1915829 (+!2382 lt!1915497 t!14174)) (= lambda!222133 lambda!222106))))

(declare-fun bs!1142068 () Bool)

(assert (= bs!1142068 (and d!1518806 b!4751625)))

(assert (=> bs!1142068 (= (= lt!1915829 lt!1916104) (= lambda!222133 lambda!222126))))

(declare-fun bs!1142069 () Bool)

(assert (= bs!1142069 (and d!1518806 d!1518762)))

(assert (=> bs!1142069 (= (= lt!1915829 lt!1916108) (= lambda!222133 lambda!222127))))

(assert (=> bs!1142064 (= (= lt!1915829 lt!1915494) (= lambda!222133 lambda!222085))))

(declare-fun bs!1142070 () Bool)

(assert (= bs!1142070 (and d!1518806 b!4751337)))

(assert (=> bs!1142070 (= (= lt!1915829 lt!1915882) (= lambda!222133 lambda!222099))))

(declare-fun bs!1142071 () Bool)

(assert (= bs!1142071 (and d!1518806 d!1518624)))

(assert (=> bs!1142071 (= (= lt!1915829 lt!1915907) (= lambda!222133 lambda!222104))))

(declare-fun bs!1142072 () Bool)

(assert (= bs!1142072 (and d!1518806 d!1518676)))

(assert (=> bs!1142072 (= (= lt!1915829 lt!1915903) (= lambda!222133 lambda!222116))))

(declare-fun bs!1142073 () Bool)

(assert (= bs!1142073 (and d!1518806 b!4751315)))

(assert (=> bs!1142073 (= (= lt!1915829 lt!1915497) (= lambda!222133 lambda!222091))))

(declare-fun bs!1142074 () Bool)

(assert (= bs!1142074 (and d!1518806 d!1518686)))

(assert (=> bs!1142074 (= (= lt!1915829 lt!1916061) (= lambda!222133 lambda!222120))))

(declare-fun bs!1142075 () Bool)

(assert (= bs!1142075 (and d!1518806 b!4751338)))

(assert (=> bs!1142075 (= (= lt!1915829 acc!1214) (= lambda!222133 lambda!222097))))

(declare-fun bs!1142076 () Bool)

(assert (= bs!1142076 (and d!1518806 b!4751350)))

(assert (=> bs!1142076 (= (= lt!1915829 (+!2382 lt!1915497 t!14174)) (= lambda!222133 lambda!222105))))

(declare-fun bs!1142077 () Bool)

(assert (= bs!1142077 (and d!1518806 b!4751267)))

(assert (=> bs!1142077 (= (= lt!1915829 lt!1915671) (= lambda!222133 lambda!222067))))

(declare-fun bs!1142078 () Bool)

(assert (= bs!1142078 (and d!1518806 b!4751268)))

(assert (=> bs!1142078 (= (= lt!1915829 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222133 lambda!222065))))

(declare-fun bs!1142079 () Bool)

(assert (= bs!1142079 (and d!1518806 b!4751535)))

(assert (=> bs!1142079 (= (= lt!1915829 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222133 lambda!222117))))

(declare-fun bs!1142080 () Bool)

(assert (= bs!1142080 (and d!1518806 b!4751680)))

(assert (=> bs!1142080 (= (= lt!1915829 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222133 lambda!222129))))

(declare-fun bs!1142081 () Bool)

(assert (= bs!1142081 (and d!1518806 b!4751626)))

(assert (=> bs!1142081 (= (= lt!1915829 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222133 lambda!222124))))

(declare-fun bs!1142082 () Bool)

(assert (= bs!1142082 (and d!1518806 b!4751344)))

(assert (=> bs!1142082 (= (= lt!1915829 lt!1915903) (= lambda!222133 lambda!222103))))

(assert (=> bs!1142056 (= (= lt!1915829 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222133 lambda!222118))))

(assert (=> bs!1142067 (= (= lt!1915829 lt!1915924) (= lambda!222133 lambda!222107))))

(assert (=> bs!1142068 (= (= lt!1915829 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222133 lambda!222125))))

(assert (=> bs!1142073 (= lambda!222133 lambda!222092)))

(declare-fun bs!1142083 () Bool)

(assert (= bs!1142083 (and d!1518806 d!1518694)))

(assert (=> bs!1142083 (= (= lt!1915829 (+!2382 lt!1915497 t!14174)) (= lambda!222133 lambda!222121))))

(declare-fun bs!1142084 () Bool)

(assert (= bs!1142084 (and d!1518806 b!4751345)))

(assert (=> bs!1142084 (= (= lt!1915829 acc!1214) (= lambda!222133 lambda!222101))))

(declare-fun bs!1142085 () Bool)

(assert (= bs!1142085 (and d!1518806 d!1518628)))

(assert (=> bs!1142085 (= (= lt!1915829 lt!1915928) (= lambda!222133 lambda!222108))))

(declare-fun bs!1142086 () Bool)

(assert (= bs!1142086 (and d!1518806 d!1518590)))

(assert (=> bs!1142086 (= (= lt!1915829 lt!1915758) (= lambda!222133 lambda!222081))))

(assert (=> bs!1142080 (= (= lt!1915829 lt!1916159) (= lambda!222133 lambda!222130))))

(declare-fun bs!1142087 () Bool)

(assert (= bs!1142087 (and d!1518806 b!4751316)))

(assert (=> bs!1142087 (= (= lt!1915829 lt!1915497) (= lambda!222133 lambda!222089))))

(assert (=> bs!1142077 (= (= lt!1915829 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222133 lambda!222066))))

(assert (=> bs!1142070 (= (= lt!1915829 acc!1214) (= lambda!222133 lambda!222098))))

(declare-fun bs!1142088 () Bool)

(assert (= bs!1142088 (and d!1518806 d!1518668)))

(assert (=> bs!1142088 (= (= lt!1915829 lt!1915494) (= lambda!222133 lambda!222111))))

(declare-fun bs!1142089 () Bool)

(assert (= bs!1142089 (and d!1518806 d!1518618)))

(assert (=> bs!1142089 (= (= lt!1915829 lt!1915886) (= lambda!222133 lambda!222100))))

(declare-fun bs!1142090 () Bool)

(assert (= bs!1142090 (and d!1518806 d!1518604)))

(assert (=> bs!1142090 (= (= lt!1915829 lt!1915833) (= lambda!222133 lambda!222094))))

(assert (=> bs!1142082 (= (= lt!1915829 acc!1214) (= lambda!222133 lambda!222102))))

(assert (=> d!1518806 true))

(assert (=> d!1518806 (forall!11762 (toList!6116 lt!1915497) lambda!222133)))

(declare-fun lt!1916180 () Unit!135894)

(assert (=> d!1518806 (= lt!1916180 (choose!33826 lt!1915497 lt!1915829 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518806 (forall!11762 (toList!6116 (+!2382 lt!1915497 (tuple2!54857 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))) lambda!222133)))

(assert (=> d!1518806 (= (addForallContainsKeyThenBeforeAdding!876 lt!1915497 lt!1915829 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))) lt!1916180)))

(declare-fun bs!1142091 () Bool)

(assert (= bs!1142091 d!1518806))

(declare-fun m!5714871 () Bool)

(assert (=> bs!1142091 m!5714871))

(declare-fun m!5714873 () Bool)

(assert (=> bs!1142091 m!5714873))

(declare-fun m!5714875 () Bool)

(assert (=> bs!1142091 m!5714875))

(declare-fun m!5714877 () Bool)

(assert (=> bs!1142091 m!5714877))

(assert (=> b!4751315 d!1518806))

(declare-fun d!1518808 () Bool)

(assert (=> d!1518808 (dynLambda!21900 lambda!222092 (h!59483 (t!360542 l!14304)))))

(declare-fun lt!1916181 () Unit!135894)

(assert (=> d!1518808 (= lt!1916181 (choose!33825 (toList!6116 lt!1915830) lambda!222092 (h!59483 (t!360542 l!14304))))))

(declare-fun e!2964091 () Bool)

(assert (=> d!1518808 e!2964091))

(declare-fun res!2015035 () Bool)

(assert (=> d!1518808 (=> (not res!2015035) (not e!2964091))))

(assert (=> d!1518808 (= res!2015035 (forall!11762 (toList!6116 lt!1915830) lambda!222092))))

(assert (=> d!1518808 (= (forallContained!3788 (toList!6116 lt!1915830) lambda!222092 (h!59483 (t!360542 l!14304))) lt!1916181)))

(declare-fun b!4751702 () Bool)

(assert (=> b!4751702 (= e!2964091 (contains!16510 (toList!6116 lt!1915830) (h!59483 (t!360542 l!14304))))))

(assert (= (and d!1518808 res!2015035) b!4751702))

(declare-fun b_lambda!183253 () Bool)

(assert (=> (not b_lambda!183253) (not d!1518808)))

(declare-fun m!5714879 () Bool)

(assert (=> d!1518808 m!5714879))

(declare-fun m!5714881 () Bool)

(assert (=> d!1518808 m!5714881))

(assert (=> d!1518808 m!5713973))

(declare-fun m!5714883 () Bool)

(assert (=> b!4751702 m!5714883))

(assert (=> b!4751315 d!1518808))

(declare-fun d!1518810 () Bool)

(declare-fun res!2015036 () Bool)

(declare-fun e!2964092 () Bool)

(assert (=> d!1518810 (=> res!2015036 e!2964092)))

(assert (=> d!1518810 (= res!2015036 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518810 (= (forall!11762 (t!360542 l!14304) lambda!222092) e!2964092)))

(declare-fun b!4751703 () Bool)

(declare-fun e!2964093 () Bool)

(assert (=> b!4751703 (= e!2964092 e!2964093)))

(declare-fun res!2015037 () Bool)

(assert (=> b!4751703 (=> (not res!2015037) (not e!2964093))))

(assert (=> b!4751703 (= res!2015037 (dynLambda!21900 lambda!222092 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751704 () Bool)

(assert (=> b!4751704 (= e!2964093 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222092))))

(assert (= (and d!1518810 (not res!2015036)) b!4751703))

(assert (= (and b!4751703 res!2015037) b!4751704))

(declare-fun b_lambda!183255 () Bool)

(assert (=> (not b_lambda!183255) (not b!4751703)))

(assert (=> b!4751703 m!5714879))

(assert (=> b!4751704 m!5713971))

(assert (=> b!4751315 d!1518810))

(declare-fun d!1518812 () Bool)

(declare-fun e!2964094 () Bool)

(assert (=> d!1518812 e!2964094))

(declare-fun res!2015038 () Bool)

(assert (=> d!1518812 (=> (not res!2015038) (not e!2964094))))

(declare-fun lt!1916183 () ListMap!5541)

(assert (=> d!1518812 (= res!2015038 (contains!16509 lt!1916183 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916184 () List!53210)

(assert (=> d!1518812 (= lt!1916183 (ListMap!5542 lt!1916184))))

(declare-fun lt!1916185 () Unit!135894)

(declare-fun lt!1916182 () Unit!135894)

(assert (=> d!1518812 (= lt!1916185 lt!1916182)))

(assert (=> d!1518812 (= (getValueByKey!2080 lt!1916184 (_1!30722 (h!59483 (t!360542 l!14304)))) (Some!12529 (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518812 (= lt!1916182 (lemmaContainsTupThenGetReturnValue!1157 lt!1916184 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518812 (= lt!1916184 (insertNoDuplicatedKeys!665 (toList!6116 lt!1915497) (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518812 (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916183)))

(declare-fun b!4751705 () Bool)

(declare-fun res!2015039 () Bool)

(assert (=> b!4751705 (=> (not res!2015039) (not e!2964094))))

(assert (=> b!4751705 (= res!2015039 (= (getValueByKey!2080 (toList!6116 lt!1916183) (_1!30722 (h!59483 (t!360542 l!14304)))) (Some!12529 (_2!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751706 () Bool)

(assert (=> b!4751706 (= e!2964094 (contains!16510 (toList!6116 lt!1916183) (h!59483 (t!360542 l!14304))))))

(assert (= (and d!1518812 res!2015038) b!4751705))

(assert (= (and b!4751705 res!2015039) b!4751706))

(declare-fun m!5714885 () Bool)

(assert (=> d!1518812 m!5714885))

(declare-fun m!5714887 () Bool)

(assert (=> d!1518812 m!5714887))

(declare-fun m!5714889 () Bool)

(assert (=> d!1518812 m!5714889))

(declare-fun m!5714891 () Bool)

(assert (=> d!1518812 m!5714891))

(declare-fun m!5714893 () Bool)

(assert (=> b!4751705 m!5714893))

(declare-fun m!5714895 () Bool)

(assert (=> b!4751706 m!5714895))

(assert (=> b!4751315 d!1518812))

(declare-fun d!1518814 () Bool)

(declare-fun res!2015040 () Bool)

(declare-fun e!2964095 () Bool)

(assert (=> d!1518814 (=> res!2015040 e!2964095)))

(assert (=> d!1518814 (= res!2015040 ((_ is Nil!53086) (toList!6116 lt!1915830)))))

(assert (=> d!1518814 (= (forall!11762 (toList!6116 lt!1915830) lambda!222092) e!2964095)))

(declare-fun b!4751707 () Bool)

(declare-fun e!2964096 () Bool)

(assert (=> b!4751707 (= e!2964095 e!2964096)))

(declare-fun res!2015041 () Bool)

(assert (=> b!4751707 (=> (not res!2015041) (not e!2964096))))

(assert (=> b!4751707 (= res!2015041 (dynLambda!21900 lambda!222092 (h!59483 (toList!6116 lt!1915830))))))

(declare-fun b!4751708 () Bool)

(assert (=> b!4751708 (= e!2964096 (forall!11762 (t!360542 (toList!6116 lt!1915830)) lambda!222092))))

(assert (= (and d!1518814 (not res!2015040)) b!4751707))

(assert (= (and b!4751707 res!2015041) b!4751708))

(declare-fun b_lambda!183257 () Bool)

(assert (=> (not b_lambda!183257) (not b!4751707)))

(declare-fun m!5714897 () Bool)

(assert (=> b!4751707 m!5714897))

(declare-fun m!5714899 () Bool)

(assert (=> b!4751708 m!5714899))

(assert (=> b!4751315 d!1518814))

(declare-fun b!4751709 () Bool)

(declare-fun e!2964101 () List!53211)

(assert (=> b!4751709 (= e!2964101 (getKeysList!1003 (toList!6116 lt!1915829)))))

(declare-fun b!4751710 () Bool)

(declare-fun e!2964099 () Unit!135894)

(declare-fun e!2964102 () Unit!135894)

(assert (=> b!4751710 (= e!2964099 e!2964102)))

(declare-fun c!811298 () Bool)

(declare-fun call!332922 () Bool)

(assert (=> b!4751710 (= c!811298 call!332922)))

(declare-fun b!4751711 () Bool)

(declare-fun e!2964097 () Bool)

(assert (=> b!4751711 (= e!2964097 (not (contains!16512 (keys!19162 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751712 () Bool)

(assert (=> b!4751712 (= e!2964101 (keys!19162 lt!1915829))))

(declare-fun b!4751713 () Bool)

(declare-fun Unit!136126 () Unit!135894)

(assert (=> b!4751713 (= e!2964102 Unit!136126)))

(declare-fun b!4751714 () Bool)

(declare-fun e!2964100 () Bool)

(declare-fun e!2964098 () Bool)

(assert (=> b!4751714 (= e!2964100 e!2964098)))

(declare-fun res!2015042 () Bool)

(assert (=> b!4751714 (=> (not res!2015042) (not e!2964098))))

(assert (=> b!4751714 (= res!2015042 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751715 () Bool)

(declare-fun lt!1916187 () Unit!135894)

(assert (=> b!4751715 (= e!2964099 lt!1916187)))

(declare-fun lt!1916190 () Unit!135894)

(assert (=> b!4751715 (= lt!1916190 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751715 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916189 () Unit!135894)

(assert (=> b!4751715 (= lt!1916189 lt!1916190)))

(assert (=> b!4751715 (= lt!1916187 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751715 call!332922))

(declare-fun b!4751716 () Bool)

(assert (=> b!4751716 (= e!2964098 (contains!16512 (keys!19162 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun d!1518816 () Bool)

(assert (=> d!1518816 e!2964100))

(declare-fun res!2015043 () Bool)

(assert (=> d!1518816 (=> res!2015043 e!2964100)))

(assert (=> d!1518816 (= res!2015043 e!2964097)))

(declare-fun res!2015044 () Bool)

(assert (=> d!1518816 (=> (not res!2015044) (not e!2964097))))

(declare-fun lt!1916186 () Bool)

(assert (=> d!1518816 (= res!2015044 (not lt!1916186))))

(declare-fun lt!1916192 () Bool)

(assert (=> d!1518816 (= lt!1916186 lt!1916192)))

(declare-fun lt!1916188 () Unit!135894)

(assert (=> d!1518816 (= lt!1916188 e!2964099)))

(declare-fun c!811297 () Bool)

(assert (=> d!1518816 (= c!811297 lt!1916192)))

(assert (=> d!1518816 (= lt!1916192 (containsKey!3558 (toList!6116 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518816 (= (contains!16509 lt!1915829 (_1!30722 (h!59483 (t!360542 l!14304)))) lt!1916186)))

(declare-fun b!4751717 () Bool)

(assert (=> b!4751717 false))

(declare-fun lt!1916193 () Unit!135894)

(declare-fun lt!1916191 () Unit!135894)

(assert (=> b!4751717 (= lt!1916193 lt!1916191)))

(assert (=> b!4751717 (containsKey!3558 (toList!6116 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751717 (= lt!1916191 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915829) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun Unit!136127 () Unit!135894)

(assert (=> b!4751717 (= e!2964102 Unit!136127)))

(declare-fun bm!332917 () Bool)

(assert (=> bm!332917 (= call!332922 (contains!16512 e!2964101 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun c!811299 () Bool)

(assert (=> bm!332917 (= c!811299 c!811297)))

(assert (= (and d!1518816 c!811297) b!4751715))

(assert (= (and d!1518816 (not c!811297)) b!4751710))

(assert (= (and b!4751710 c!811298) b!4751717))

(assert (= (and b!4751710 (not c!811298)) b!4751713))

(assert (= (or b!4751715 b!4751710) bm!332917))

(assert (= (and bm!332917 c!811299) b!4751709))

(assert (= (and bm!332917 (not c!811299)) b!4751712))

(assert (= (and d!1518816 res!2015044) b!4751711))

(assert (= (and d!1518816 (not res!2015043)) b!4751714))

(assert (= (and b!4751714 res!2015042) b!4751716))

(declare-fun m!5714901 () Bool)

(assert (=> b!4751709 m!5714901))

(declare-fun m!5714903 () Bool)

(assert (=> b!4751711 m!5714903))

(assert (=> b!4751711 m!5714903))

(declare-fun m!5714905 () Bool)

(assert (=> b!4751711 m!5714905))

(assert (=> b!4751716 m!5714903))

(assert (=> b!4751716 m!5714903))

(assert (=> b!4751716 m!5714905))

(declare-fun m!5714907 () Bool)

(assert (=> bm!332917 m!5714907))

(declare-fun m!5714909 () Bool)

(assert (=> b!4751714 m!5714909))

(assert (=> b!4751714 m!5714909))

(declare-fun m!5714911 () Bool)

(assert (=> b!4751714 m!5714911))

(declare-fun m!5714913 () Bool)

(assert (=> d!1518816 m!5714913))

(assert (=> b!4751717 m!5714913))

(declare-fun m!5714915 () Bool)

(assert (=> b!4751717 m!5714915))

(assert (=> b!4751712 m!5714903))

(declare-fun m!5714917 () Bool)

(assert (=> b!4751715 m!5714917))

(assert (=> b!4751715 m!5714909))

(assert (=> b!4751715 m!5714909))

(assert (=> b!4751715 m!5714911))

(declare-fun m!5714919 () Bool)

(assert (=> b!4751715 m!5714919))

(assert (=> b!4751315 d!1518816))

(declare-fun d!1518818 () Bool)

(declare-fun res!2015045 () Bool)

(declare-fun e!2964103 () Bool)

(assert (=> d!1518818 (=> res!2015045 e!2964103)))

(assert (=> d!1518818 (= res!2015045 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518818 (= (forall!11762 (toList!6116 lt!1915497) lambda!222092) e!2964103)))

(declare-fun b!4751718 () Bool)

(declare-fun e!2964104 () Bool)

(assert (=> b!4751718 (= e!2964103 e!2964104)))

(declare-fun res!2015046 () Bool)

(assert (=> b!4751718 (=> (not res!2015046) (not e!2964104))))

(assert (=> b!4751718 (= res!2015046 (dynLambda!21900 lambda!222092 (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751719 () Bool)

(assert (=> b!4751719 (= e!2964104 (forall!11762 (t!360542 (toList!6116 lt!1915497)) lambda!222092))))

(assert (= (and d!1518818 (not res!2015045)) b!4751718))

(assert (= (and b!4751718 res!2015046) b!4751719))

(declare-fun b_lambda!183259 () Bool)

(assert (=> (not b_lambda!183259) (not b!4751718)))

(declare-fun m!5714921 () Bool)

(assert (=> b!4751718 m!5714921))

(declare-fun m!5714923 () Bool)

(assert (=> b!4751719 m!5714923))

(assert (=> b!4751315 d!1518818))

(declare-fun d!1518820 () Bool)

(declare-fun res!2015047 () Bool)

(declare-fun e!2964105 () Bool)

(assert (=> d!1518820 (=> res!2015047 e!2964105)))

(assert (=> d!1518820 (= res!2015047 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518820 (= (forall!11762 (toList!6116 lt!1915497) lambda!222091) e!2964105)))

(declare-fun b!4751720 () Bool)

(declare-fun e!2964106 () Bool)

(assert (=> b!4751720 (= e!2964105 e!2964106)))

(declare-fun res!2015048 () Bool)

(assert (=> b!4751720 (=> (not res!2015048) (not e!2964106))))

(assert (=> b!4751720 (= res!2015048 (dynLambda!21900 lambda!222091 (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751721 () Bool)

(assert (=> b!4751721 (= e!2964106 (forall!11762 (t!360542 (toList!6116 lt!1915497)) lambda!222091))))

(assert (= (and d!1518820 (not res!2015047)) b!4751720))

(assert (= (and b!4751720 res!2015048) b!4751721))

(declare-fun b_lambda!183261 () Bool)

(assert (=> (not b_lambda!183261) (not b!4751720)))

(declare-fun m!5714925 () Bool)

(assert (=> b!4751720 m!5714925))

(declare-fun m!5714927 () Bool)

(assert (=> b!4751721 m!5714927))

(assert (=> b!4751315 d!1518820))

(declare-fun bs!1142092 () Bool)

(declare-fun b!4751723 () Bool)

(assert (= bs!1142092 (and b!4751723 d!1518558)))

(declare-fun lambda!222134 () Int)

(assert (=> bs!1142092 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915675) (= lambda!222134 lambda!222069))))

(declare-fun bs!1142093 () Bool)

(assert (= bs!1142093 (and b!4751723 b!4751534)))

(assert (=> bs!1142093 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916057) (= lambda!222134 lambda!222119))))

(declare-fun bs!1142094 () Bool)

(assert (= bs!1142094 (and b!4751723 d!1518594)))

(assert (=> bs!1142094 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915800) (= lambda!222134 lambda!222088))))

(declare-fun bs!1142095 () Bool)

(assert (= bs!1142095 (and b!4751723 d!1518706)))

(assert (=> bs!1142095 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222134 lambda!222122))))

(declare-fun bs!1142096 () Bool)

(assert (= bs!1142096 (and b!4751723 d!1518790)))

(assert (=> bs!1142096 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916163) (= lambda!222134 lambda!222131))))

(declare-fun bs!1142097 () Bool)

(assert (= bs!1142097 (and b!4751723 b!4751681)))

(assert (=> bs!1142097 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222134 lambda!222128))))

(declare-fun bs!1142098 () Bool)

(assert (= bs!1142098 (and b!4751723 d!1518746)))

(assert (=> bs!1142098 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222134 lambda!222123))))

(declare-fun bs!1142099 () Bool)

(assert (= bs!1142099 (and b!4751723 b!4751294)))

(assert (=> bs!1142099 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222134 lambda!222079))))

(declare-fun bs!1142100 () Bool)

(assert (= bs!1142100 (and b!4751723 b!4751305)))

(assert (=> bs!1142100 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222134 lambda!222084))))

(assert (=> bs!1142099 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222134 lambda!222078))))

(declare-fun bs!1142101 () Bool)

(assert (= bs!1142101 (and b!4751723 b!4751304)))

(assert (=> bs!1142101 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222134 lambda!222086))))

(declare-fun bs!1142102 () Bool)

(assert (= bs!1142102 (and b!4751723 d!1518806)))

(assert (=> bs!1142102 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222134 lambda!222133))))

(declare-fun bs!1142103 () Bool)

(assert (= bs!1142103 (and b!4751723 d!1518796)))

(assert (=> bs!1142103 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222134 lambda!222132))))

(declare-fun bs!1142104 () Bool)

(assert (= bs!1142104 (and b!4751723 b!4751295)))

(assert (=> bs!1142104 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222134 lambda!222077))))

(declare-fun bs!1142105 () Bool)

(assert (= bs!1142105 (and b!4751723 b!4751349)))

(assert (=> bs!1142105 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222134 lambda!222106))))

(declare-fun bs!1142106 () Bool)

(assert (= bs!1142106 (and b!4751723 b!4751625)))

(assert (=> bs!1142106 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916104) (= lambda!222134 lambda!222126))))

(declare-fun bs!1142107 () Bool)

(assert (= bs!1142107 (and b!4751723 d!1518762)))

(assert (=> bs!1142107 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916108) (= lambda!222134 lambda!222127))))

(assert (=> bs!1142101 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222134 lambda!222085))))

(declare-fun bs!1142108 () Bool)

(assert (= bs!1142108 (and b!4751723 b!4751337)))

(assert (=> bs!1142108 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222134 lambda!222099))))

(declare-fun bs!1142109 () Bool)

(assert (= bs!1142109 (and b!4751723 d!1518624)))

(assert (=> bs!1142109 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915907) (= lambda!222134 lambda!222104))))

(declare-fun bs!1142110 () Bool)

(assert (= bs!1142110 (and b!4751723 d!1518676)))

(assert (=> bs!1142110 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222134 lambda!222116))))

(declare-fun bs!1142111 () Bool)

(assert (= bs!1142111 (and b!4751723 b!4751315)))

(assert (=> bs!1142111 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222134 lambda!222091))))

(declare-fun bs!1142112 () Bool)

(assert (= bs!1142112 (and b!4751723 d!1518686)))

(assert (=> bs!1142112 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916061) (= lambda!222134 lambda!222120))))

(declare-fun bs!1142113 () Bool)

(assert (= bs!1142113 (and b!4751723 b!4751338)))

(assert (=> bs!1142113 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222134 lambda!222097))))

(declare-fun bs!1142114 () Bool)

(assert (= bs!1142114 (and b!4751723 b!4751350)))

(assert (=> bs!1142114 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222134 lambda!222105))))

(declare-fun bs!1142115 () Bool)

(assert (= bs!1142115 (and b!4751723 b!4751267)))

(assert (=> bs!1142115 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222134 lambda!222067))))

(declare-fun bs!1142116 () Bool)

(assert (= bs!1142116 (and b!4751723 b!4751268)))

(assert (=> bs!1142116 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222134 lambda!222065))))

(declare-fun bs!1142117 () Bool)

(assert (= bs!1142117 (and b!4751723 b!4751535)))

(assert (=> bs!1142117 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222134 lambda!222117))))

(declare-fun bs!1142118 () Bool)

(assert (= bs!1142118 (and b!4751723 b!4751680)))

(assert (=> bs!1142118 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222134 lambda!222129))))

(declare-fun bs!1142119 () Bool)

(assert (= bs!1142119 (and b!4751723 b!4751626)))

(assert (=> bs!1142119 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222134 lambda!222124))))

(declare-fun bs!1142120 () Bool)

(assert (= bs!1142120 (and b!4751723 b!4751344)))

(assert (=> bs!1142120 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222134 lambda!222103))))

(assert (=> bs!1142093 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222134 lambda!222118))))

(assert (=> bs!1142105 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222134 lambda!222107))))

(assert (=> bs!1142106 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222134 lambda!222125))))

(assert (=> bs!1142111 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222134 lambda!222092))))

(declare-fun bs!1142121 () Bool)

(assert (= bs!1142121 (and b!4751723 d!1518694)))

(assert (=> bs!1142121 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222134 lambda!222121))))

(declare-fun bs!1142122 () Bool)

(assert (= bs!1142122 (and b!4751723 b!4751345)))

(assert (=> bs!1142122 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222134 lambda!222101))))

(declare-fun bs!1142123 () Bool)

(assert (= bs!1142123 (and b!4751723 d!1518628)))

(assert (=> bs!1142123 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915928) (= lambda!222134 lambda!222108))))

(declare-fun bs!1142124 () Bool)

(assert (= bs!1142124 (and b!4751723 d!1518590)))

(assert (=> bs!1142124 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915758) (= lambda!222134 lambda!222081))))

(assert (=> bs!1142118 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916159) (= lambda!222134 lambda!222130))))

(declare-fun bs!1142125 () Bool)

(assert (= bs!1142125 (and b!4751723 b!4751316)))

(assert (=> bs!1142125 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222134 lambda!222089))))

(assert (=> bs!1142115 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222134 lambda!222066))))

(assert (=> bs!1142108 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222134 lambda!222098))))

(declare-fun bs!1142126 () Bool)

(assert (= bs!1142126 (and b!4751723 d!1518668)))

(assert (=> bs!1142126 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222134 lambda!222111))))

(declare-fun bs!1142127 () Bool)

(assert (= bs!1142127 (and b!4751723 d!1518618)))

(assert (=> bs!1142127 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915886) (= lambda!222134 lambda!222100))))

(declare-fun bs!1142128 () Bool)

(assert (= bs!1142128 (and b!4751723 d!1518604)))

(assert (=> bs!1142128 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915833) (= lambda!222134 lambda!222094))))

(assert (=> bs!1142120 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222134 lambda!222102))))

(assert (=> b!4751723 true))

(declare-fun bs!1142129 () Bool)

(declare-fun b!4751722 () Bool)

(assert (= bs!1142129 (and b!4751722 d!1518558)))

(declare-fun lambda!222135 () Int)

(assert (=> bs!1142129 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915675) (= lambda!222135 lambda!222069))))

(declare-fun bs!1142130 () Bool)

(assert (= bs!1142130 (and b!4751722 b!4751534)))

(assert (=> bs!1142130 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916057) (= lambda!222135 lambda!222119))))

(declare-fun bs!1142131 () Bool)

(assert (= bs!1142131 (and b!4751722 d!1518594)))

(assert (=> bs!1142131 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915800) (= lambda!222135 lambda!222088))))

(declare-fun bs!1142132 () Bool)

(assert (= bs!1142132 (and b!4751722 d!1518706)))

(assert (=> bs!1142132 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222135 lambda!222122))))

(declare-fun bs!1142133 () Bool)

(assert (= bs!1142133 (and b!4751722 d!1518790)))

(assert (=> bs!1142133 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916163) (= lambda!222135 lambda!222131))))

(declare-fun bs!1142134 () Bool)

(assert (= bs!1142134 (and b!4751722 b!4751681)))

(assert (=> bs!1142134 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222135 lambda!222128))))

(declare-fun bs!1142135 () Bool)

(assert (= bs!1142135 (and b!4751722 d!1518746)))

(assert (=> bs!1142135 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222135 lambda!222123))))

(declare-fun bs!1142136 () Bool)

(assert (= bs!1142136 (and b!4751722 b!4751294)))

(assert (=> bs!1142136 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222135 lambda!222079))))

(declare-fun bs!1142137 () Bool)

(assert (= bs!1142137 (and b!4751722 b!4751305)))

(assert (=> bs!1142137 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222135 lambda!222084))))

(assert (=> bs!1142136 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222135 lambda!222078))))

(declare-fun bs!1142138 () Bool)

(assert (= bs!1142138 (and b!4751722 b!4751304)))

(assert (=> bs!1142138 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222135 lambda!222086))))

(declare-fun bs!1142139 () Bool)

(assert (= bs!1142139 (and b!4751722 d!1518806)))

(assert (=> bs!1142139 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222135 lambda!222133))))

(declare-fun bs!1142140 () Bool)

(assert (= bs!1142140 (and b!4751722 d!1518796)))

(assert (=> bs!1142140 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222135 lambda!222132))))

(declare-fun bs!1142141 () Bool)

(assert (= bs!1142141 (and b!4751722 b!4751295)))

(assert (=> bs!1142141 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222135 lambda!222077))))

(declare-fun bs!1142142 () Bool)

(assert (= bs!1142142 (and b!4751722 b!4751349)))

(assert (=> bs!1142142 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222135 lambda!222106))))

(declare-fun bs!1142143 () Bool)

(assert (= bs!1142143 (and b!4751722 b!4751625)))

(assert (=> bs!1142143 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916104) (= lambda!222135 lambda!222126))))

(declare-fun bs!1142144 () Bool)

(assert (= bs!1142144 (and b!4751722 d!1518762)))

(assert (=> bs!1142144 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916108) (= lambda!222135 lambda!222127))))

(assert (=> bs!1142138 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222135 lambda!222085))))

(declare-fun bs!1142145 () Bool)

(assert (= bs!1142145 (and b!4751722 b!4751337)))

(assert (=> bs!1142145 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222135 lambda!222099))))

(declare-fun bs!1142146 () Bool)

(assert (= bs!1142146 (and b!4751722 d!1518624)))

(assert (=> bs!1142146 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915907) (= lambda!222135 lambda!222104))))

(declare-fun bs!1142147 () Bool)

(assert (= bs!1142147 (and b!4751722 d!1518676)))

(assert (=> bs!1142147 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222135 lambda!222116))))

(declare-fun bs!1142148 () Bool)

(assert (= bs!1142148 (and b!4751722 b!4751723)))

(assert (=> bs!1142148 (= lambda!222135 lambda!222134)))

(declare-fun bs!1142149 () Bool)

(assert (= bs!1142149 (and b!4751722 b!4751315)))

(assert (=> bs!1142149 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222135 lambda!222091))))

(declare-fun bs!1142150 () Bool)

(assert (= bs!1142150 (and b!4751722 d!1518686)))

(assert (=> bs!1142150 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916061) (= lambda!222135 lambda!222120))))

(declare-fun bs!1142151 () Bool)

(assert (= bs!1142151 (and b!4751722 b!4751338)))

(assert (=> bs!1142151 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222135 lambda!222097))))

(declare-fun bs!1142152 () Bool)

(assert (= bs!1142152 (and b!4751722 b!4751350)))

(assert (=> bs!1142152 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222135 lambda!222105))))

(declare-fun bs!1142153 () Bool)

(assert (= bs!1142153 (and b!4751722 b!4751267)))

(assert (=> bs!1142153 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222135 lambda!222067))))

(declare-fun bs!1142154 () Bool)

(assert (= bs!1142154 (and b!4751722 b!4751268)))

(assert (=> bs!1142154 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222135 lambda!222065))))

(declare-fun bs!1142155 () Bool)

(assert (= bs!1142155 (and b!4751722 b!4751535)))

(assert (=> bs!1142155 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222135 lambda!222117))))

(declare-fun bs!1142156 () Bool)

(assert (= bs!1142156 (and b!4751722 b!4751680)))

(assert (=> bs!1142156 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222135 lambda!222129))))

(declare-fun bs!1142157 () Bool)

(assert (= bs!1142157 (and b!4751722 b!4751626)))

(assert (=> bs!1142157 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222135 lambda!222124))))

(declare-fun bs!1142158 () Bool)

(assert (= bs!1142158 (and b!4751722 b!4751344)))

(assert (=> bs!1142158 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222135 lambda!222103))))

(assert (=> bs!1142130 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222135 lambda!222118))))

(assert (=> bs!1142142 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222135 lambda!222107))))

(assert (=> bs!1142143 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222135 lambda!222125))))

(assert (=> bs!1142149 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222135 lambda!222092))))

(declare-fun bs!1142159 () Bool)

(assert (= bs!1142159 (and b!4751722 d!1518694)))

(assert (=> bs!1142159 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222135 lambda!222121))))

(declare-fun bs!1142160 () Bool)

(assert (= bs!1142160 (and b!4751722 b!4751345)))

(assert (=> bs!1142160 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222135 lambda!222101))))

(declare-fun bs!1142161 () Bool)

(assert (= bs!1142161 (and b!4751722 d!1518628)))

(assert (=> bs!1142161 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915928) (= lambda!222135 lambda!222108))))

(declare-fun bs!1142162 () Bool)

(assert (= bs!1142162 (and b!4751722 d!1518590)))

(assert (=> bs!1142162 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915758) (= lambda!222135 lambda!222081))))

(assert (=> bs!1142156 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916159) (= lambda!222135 lambda!222130))))

(declare-fun bs!1142163 () Bool)

(assert (= bs!1142163 (and b!4751722 b!4751316)))

(assert (=> bs!1142163 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222135 lambda!222089))))

(assert (=> bs!1142153 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222135 lambda!222066))))

(assert (=> bs!1142145 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222135 lambda!222098))))

(declare-fun bs!1142164 () Bool)

(assert (= bs!1142164 (and b!4751722 d!1518668)))

(assert (=> bs!1142164 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222135 lambda!222111))))

(declare-fun bs!1142165 () Bool)

(assert (= bs!1142165 (and b!4751722 d!1518618)))

(assert (=> bs!1142165 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915886) (= lambda!222135 lambda!222100))))

(declare-fun bs!1142166 () Bool)

(assert (= bs!1142166 (and b!4751722 d!1518604)))

(assert (=> bs!1142166 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1915833) (= lambda!222135 lambda!222094))))

(assert (=> bs!1142158 (= (= (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222135 lambda!222102))))

(assert (=> b!4751722 true))

(declare-fun lt!1916203 () ListMap!5541)

(declare-fun lambda!222136 () Int)

(assert (=> bs!1142129 (= (= lt!1916203 lt!1915675) (= lambda!222136 lambda!222069))))

(assert (=> bs!1142130 (= (= lt!1916203 lt!1916057) (= lambda!222136 lambda!222119))))

(assert (=> bs!1142131 (= (= lt!1916203 lt!1915800) (= lambda!222136 lambda!222088))))

(assert (=> bs!1142132 (= (= lt!1916203 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222136 lambda!222122))))

(assert (=> bs!1142133 (= (= lt!1916203 lt!1916163) (= lambda!222136 lambda!222131))))

(assert (=> bs!1142135 (= (= lt!1916203 lt!1915754) (= lambda!222136 lambda!222123))))

(assert (=> bs!1142136 (= (= lt!1916203 lt!1915754) (= lambda!222136 lambda!222079))))

(assert (=> bs!1142137 (= (= lt!1916203 lt!1915494) (= lambda!222136 lambda!222084))))

(assert (=> bs!1142136 (= (= lt!1916203 lt!1915497) (= lambda!222136 lambda!222078))))

(assert (=> bs!1142138 (= (= lt!1916203 lt!1915796) (= lambda!222136 lambda!222086))))

(assert (=> bs!1142139 (= (= lt!1916203 lt!1915829) (= lambda!222136 lambda!222133))))

(assert (=> bs!1142140 (= (= lt!1916203 lt!1915882) (= lambda!222136 lambda!222132))))

(assert (=> bs!1142141 (= (= lt!1916203 lt!1915497) (= lambda!222136 lambda!222077))))

(assert (=> bs!1142142 (= (= lt!1916203 (+!2382 lt!1915497 t!14174)) (= lambda!222136 lambda!222106))))

(assert (=> bs!1142143 (= (= lt!1916203 lt!1916104) (= lambda!222136 lambda!222126))))

(assert (=> bs!1142144 (= (= lt!1916203 lt!1916108) (= lambda!222136 lambda!222127))))

(assert (=> bs!1142138 (= (= lt!1916203 lt!1915494) (= lambda!222136 lambda!222085))))

(assert (=> bs!1142145 (= (= lt!1916203 lt!1915882) (= lambda!222136 lambda!222099))))

(assert (=> bs!1142146 (= (= lt!1916203 lt!1915907) (= lambda!222136 lambda!222104))))

(assert (=> bs!1142147 (= (= lt!1916203 lt!1915903) (= lambda!222136 lambda!222116))))

(assert (=> bs!1142148 (= (= lt!1916203 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222136 lambda!222134))))

(assert (=> bs!1142149 (= (= lt!1916203 lt!1915497) (= lambda!222136 lambda!222091))))

(assert (=> bs!1142150 (= (= lt!1916203 lt!1916061) (= lambda!222136 lambda!222120))))

(assert (=> bs!1142151 (= (= lt!1916203 acc!1214) (= lambda!222136 lambda!222097))))

(assert (=> bs!1142152 (= (= lt!1916203 (+!2382 lt!1915497 t!14174)) (= lambda!222136 lambda!222105))))

(assert (=> bs!1142134 (= (= lt!1916203 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222136 lambda!222128))))

(assert (=> b!4751722 (= (= lt!1916203 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222136 lambda!222135))))

(assert (=> bs!1142153 (= (= lt!1916203 lt!1915671) (= lambda!222136 lambda!222067))))

(assert (=> bs!1142154 (= (= lt!1916203 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222136 lambda!222065))))

(assert (=> bs!1142155 (= (= lt!1916203 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222136 lambda!222117))))

(assert (=> bs!1142156 (= (= lt!1916203 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222136 lambda!222129))))

(assert (=> bs!1142157 (= (= lt!1916203 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222136 lambda!222124))))

(assert (=> bs!1142158 (= (= lt!1916203 lt!1915903) (= lambda!222136 lambda!222103))))

(assert (=> bs!1142130 (= (= lt!1916203 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222136 lambda!222118))))

(assert (=> bs!1142142 (= (= lt!1916203 lt!1915924) (= lambda!222136 lambda!222107))))

(assert (=> bs!1142143 (= (= lt!1916203 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222136 lambda!222125))))

(assert (=> bs!1142149 (= (= lt!1916203 lt!1915829) (= lambda!222136 lambda!222092))))

(assert (=> bs!1142159 (= (= lt!1916203 (+!2382 lt!1915497 t!14174)) (= lambda!222136 lambda!222121))))

(assert (=> bs!1142160 (= (= lt!1916203 acc!1214) (= lambda!222136 lambda!222101))))

(assert (=> bs!1142161 (= (= lt!1916203 lt!1915928) (= lambda!222136 lambda!222108))))

(assert (=> bs!1142162 (= (= lt!1916203 lt!1915758) (= lambda!222136 lambda!222081))))

(assert (=> bs!1142156 (= (= lt!1916203 lt!1916159) (= lambda!222136 lambda!222130))))

(assert (=> bs!1142163 (= (= lt!1916203 lt!1915497) (= lambda!222136 lambda!222089))))

(assert (=> bs!1142153 (= (= lt!1916203 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222136 lambda!222066))))

(assert (=> bs!1142145 (= (= lt!1916203 acc!1214) (= lambda!222136 lambda!222098))))

(assert (=> bs!1142164 (= (= lt!1916203 lt!1915494) (= lambda!222136 lambda!222111))))

(assert (=> bs!1142165 (= (= lt!1916203 lt!1915886) (= lambda!222136 lambda!222100))))

(assert (=> bs!1142166 (= (= lt!1916203 lt!1915833) (= lambda!222136 lambda!222094))))

(assert (=> bs!1142158 (= (= lt!1916203 acc!1214) (= lambda!222136 lambda!222102))))

(assert (=> b!4751722 true))

(declare-fun bs!1142167 () Bool)

(declare-fun d!1518822 () Bool)

(assert (= bs!1142167 (and d!1518822 d!1518558)))

(declare-fun lt!1916207 () ListMap!5541)

(declare-fun lambda!222137 () Int)

(assert (=> bs!1142167 (= (= lt!1916207 lt!1915675) (= lambda!222137 lambda!222069))))

(declare-fun bs!1142168 () Bool)

(assert (= bs!1142168 (and d!1518822 b!4751534)))

(assert (=> bs!1142168 (= (= lt!1916207 lt!1916057) (= lambda!222137 lambda!222119))))

(declare-fun bs!1142169 () Bool)

(assert (= bs!1142169 (and d!1518822 d!1518594)))

(assert (=> bs!1142169 (= (= lt!1916207 lt!1915800) (= lambda!222137 lambda!222088))))

(declare-fun bs!1142170 () Bool)

(assert (= bs!1142170 (and d!1518822 d!1518790)))

(assert (=> bs!1142170 (= (= lt!1916207 lt!1916163) (= lambda!222137 lambda!222131))))

(declare-fun bs!1142171 () Bool)

(assert (= bs!1142171 (and d!1518822 d!1518746)))

(assert (=> bs!1142171 (= (= lt!1916207 lt!1915754) (= lambda!222137 lambda!222123))))

(declare-fun bs!1142172 () Bool)

(assert (= bs!1142172 (and d!1518822 b!4751294)))

(assert (=> bs!1142172 (= (= lt!1916207 lt!1915754) (= lambda!222137 lambda!222079))))

(declare-fun bs!1142173 () Bool)

(assert (= bs!1142173 (and d!1518822 b!4751305)))

(assert (=> bs!1142173 (= (= lt!1916207 lt!1915494) (= lambda!222137 lambda!222084))))

(assert (=> bs!1142172 (= (= lt!1916207 lt!1915497) (= lambda!222137 lambda!222078))))

(declare-fun bs!1142174 () Bool)

(assert (= bs!1142174 (and d!1518822 b!4751304)))

(assert (=> bs!1142174 (= (= lt!1916207 lt!1915796) (= lambda!222137 lambda!222086))))

(declare-fun bs!1142175 () Bool)

(assert (= bs!1142175 (and d!1518822 d!1518806)))

(assert (=> bs!1142175 (= (= lt!1916207 lt!1915829) (= lambda!222137 lambda!222133))))

(declare-fun bs!1142176 () Bool)

(assert (= bs!1142176 (and d!1518822 d!1518796)))

(assert (=> bs!1142176 (= (= lt!1916207 lt!1915882) (= lambda!222137 lambda!222132))))

(declare-fun bs!1142177 () Bool)

(assert (= bs!1142177 (and d!1518822 b!4751295)))

(assert (=> bs!1142177 (= (= lt!1916207 lt!1915497) (= lambda!222137 lambda!222077))))

(declare-fun bs!1142178 () Bool)

(assert (= bs!1142178 (and d!1518822 b!4751349)))

(assert (=> bs!1142178 (= (= lt!1916207 (+!2382 lt!1915497 t!14174)) (= lambda!222137 lambda!222106))))

(declare-fun bs!1142179 () Bool)

(assert (= bs!1142179 (and d!1518822 b!4751625)))

(assert (=> bs!1142179 (= (= lt!1916207 lt!1916104) (= lambda!222137 lambda!222126))))

(declare-fun bs!1142180 () Bool)

(assert (= bs!1142180 (and d!1518822 d!1518762)))

(assert (=> bs!1142180 (= (= lt!1916207 lt!1916108) (= lambda!222137 lambda!222127))))

(assert (=> bs!1142174 (= (= lt!1916207 lt!1915494) (= lambda!222137 lambda!222085))))

(declare-fun bs!1142181 () Bool)

(assert (= bs!1142181 (and d!1518822 b!4751337)))

(assert (=> bs!1142181 (= (= lt!1916207 lt!1915882) (= lambda!222137 lambda!222099))))

(declare-fun bs!1142182 () Bool)

(assert (= bs!1142182 (and d!1518822 d!1518624)))

(assert (=> bs!1142182 (= (= lt!1916207 lt!1915907) (= lambda!222137 lambda!222104))))

(declare-fun bs!1142183 () Bool)

(assert (= bs!1142183 (and d!1518822 d!1518676)))

(assert (=> bs!1142183 (= (= lt!1916207 lt!1915903) (= lambda!222137 lambda!222116))))

(declare-fun bs!1142184 () Bool)

(assert (= bs!1142184 (and d!1518822 b!4751723)))

(assert (=> bs!1142184 (= (= lt!1916207 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222137 lambda!222134))))

(declare-fun bs!1142185 () Bool)

(assert (= bs!1142185 (and d!1518822 b!4751315)))

(assert (=> bs!1142185 (= (= lt!1916207 lt!1915497) (= lambda!222137 lambda!222091))))

(declare-fun bs!1142186 () Bool)

(assert (= bs!1142186 (and d!1518822 d!1518686)))

(assert (=> bs!1142186 (= (= lt!1916207 lt!1916061) (= lambda!222137 lambda!222120))))

(declare-fun bs!1142187 () Bool)

(assert (= bs!1142187 (and d!1518822 b!4751338)))

(assert (=> bs!1142187 (= (= lt!1916207 acc!1214) (= lambda!222137 lambda!222097))))

(declare-fun bs!1142188 () Bool)

(assert (= bs!1142188 (and d!1518822 b!4751350)))

(assert (=> bs!1142188 (= (= lt!1916207 (+!2382 lt!1915497 t!14174)) (= lambda!222137 lambda!222105))))

(declare-fun bs!1142189 () Bool)

(assert (= bs!1142189 (and d!1518822 d!1518706)))

(assert (=> bs!1142189 (= (= lt!1916207 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222137 lambda!222122))))

(declare-fun bs!1142190 () Bool)

(assert (= bs!1142190 (and d!1518822 b!4751722)))

(assert (=> bs!1142190 (= (= lt!1916207 lt!1916203) (= lambda!222137 lambda!222136))))

(declare-fun bs!1142191 () Bool)

(assert (= bs!1142191 (and d!1518822 b!4751681)))

(assert (=> bs!1142191 (= (= lt!1916207 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222137 lambda!222128))))

(assert (=> bs!1142190 (= (= lt!1916207 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222137 lambda!222135))))

(declare-fun bs!1142192 () Bool)

(assert (= bs!1142192 (and d!1518822 b!4751267)))

(assert (=> bs!1142192 (= (= lt!1916207 lt!1915671) (= lambda!222137 lambda!222067))))

(declare-fun bs!1142193 () Bool)

(assert (= bs!1142193 (and d!1518822 b!4751268)))

(assert (=> bs!1142193 (= (= lt!1916207 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222137 lambda!222065))))

(declare-fun bs!1142194 () Bool)

(assert (= bs!1142194 (and d!1518822 b!4751535)))

(assert (=> bs!1142194 (= (= lt!1916207 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222137 lambda!222117))))

(declare-fun bs!1142195 () Bool)

(assert (= bs!1142195 (and d!1518822 b!4751680)))

(assert (=> bs!1142195 (= (= lt!1916207 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222137 lambda!222129))))

(declare-fun bs!1142196 () Bool)

(assert (= bs!1142196 (and d!1518822 b!4751626)))

(assert (=> bs!1142196 (= (= lt!1916207 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222137 lambda!222124))))

(declare-fun bs!1142197 () Bool)

(assert (= bs!1142197 (and d!1518822 b!4751344)))

(assert (=> bs!1142197 (= (= lt!1916207 lt!1915903) (= lambda!222137 lambda!222103))))

(assert (=> bs!1142168 (= (= lt!1916207 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222137 lambda!222118))))

(assert (=> bs!1142178 (= (= lt!1916207 lt!1915924) (= lambda!222137 lambda!222107))))

(assert (=> bs!1142179 (= (= lt!1916207 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222137 lambda!222125))))

(assert (=> bs!1142185 (= (= lt!1916207 lt!1915829) (= lambda!222137 lambda!222092))))

(declare-fun bs!1142198 () Bool)

(assert (= bs!1142198 (and d!1518822 d!1518694)))

(assert (=> bs!1142198 (= (= lt!1916207 (+!2382 lt!1915497 t!14174)) (= lambda!222137 lambda!222121))))

(declare-fun bs!1142199 () Bool)

(assert (= bs!1142199 (and d!1518822 b!4751345)))

(assert (=> bs!1142199 (= (= lt!1916207 acc!1214) (= lambda!222137 lambda!222101))))

(declare-fun bs!1142200 () Bool)

(assert (= bs!1142200 (and d!1518822 d!1518628)))

(assert (=> bs!1142200 (= (= lt!1916207 lt!1915928) (= lambda!222137 lambda!222108))))

(declare-fun bs!1142201 () Bool)

(assert (= bs!1142201 (and d!1518822 d!1518590)))

(assert (=> bs!1142201 (= (= lt!1916207 lt!1915758) (= lambda!222137 lambda!222081))))

(assert (=> bs!1142195 (= (= lt!1916207 lt!1916159) (= lambda!222137 lambda!222130))))

(declare-fun bs!1142202 () Bool)

(assert (= bs!1142202 (and d!1518822 b!4751316)))

(assert (=> bs!1142202 (= (= lt!1916207 lt!1915497) (= lambda!222137 lambda!222089))))

(assert (=> bs!1142192 (= (= lt!1916207 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222137 lambda!222066))))

(assert (=> bs!1142181 (= (= lt!1916207 acc!1214) (= lambda!222137 lambda!222098))))

(declare-fun bs!1142203 () Bool)

(assert (= bs!1142203 (and d!1518822 d!1518668)))

(assert (=> bs!1142203 (= (= lt!1916207 lt!1915494) (= lambda!222137 lambda!222111))))

(declare-fun bs!1142204 () Bool)

(assert (= bs!1142204 (and d!1518822 d!1518618)))

(assert (=> bs!1142204 (= (= lt!1916207 lt!1915886) (= lambda!222137 lambda!222100))))

(declare-fun bs!1142205 () Bool)

(assert (= bs!1142205 (and d!1518822 d!1518604)))

(assert (=> bs!1142205 (= (= lt!1916207 lt!1915833) (= lambda!222137 lambda!222094))))

(assert (=> bs!1142197 (= (= lt!1916207 acc!1214) (= lambda!222137 lambda!222102))))

(assert (=> d!1518822 true))

(declare-fun e!2964108 () Bool)

(assert (=> d!1518822 e!2964108))

(declare-fun res!2015049 () Bool)

(assert (=> d!1518822 (=> (not res!2015049) (not e!2964108))))

(assert (=> d!1518822 (= res!2015049 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222137))))

(declare-fun e!2964109 () ListMap!5541)

(assert (=> d!1518822 (= lt!1916207 e!2964109)))

(declare-fun c!811300 () Bool)

(assert (=> d!1518822 (= c!811300 ((_ is Nil!53086) (t!360542 (t!360542 l!14304))))))

(assert (=> d!1518822 (noDuplicateKeys!2148 (t!360542 (t!360542 l!14304)))))

(assert (=> d!1518822 (= (addToMapMapFromBucket!1572 (t!360542 (t!360542 l!14304)) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) lt!1916207)))

(assert (=> b!4751722 (= e!2964109 lt!1916203)))

(declare-fun lt!1916204 () ListMap!5541)

(assert (=> b!4751722 (= lt!1916204 (+!2382 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (h!59483 (t!360542 (t!360542 l!14304)))))))

(assert (=> b!4751722 (= lt!1916203 (addToMapMapFromBucket!1572 (t!360542 (t!360542 (t!360542 l!14304))) (+!2382 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) (h!59483 (t!360542 (t!360542 l!14304))))))))

(declare-fun lt!1916210 () Unit!135894)

(declare-fun call!332923 () Unit!135894)

(assert (=> b!4751722 (= lt!1916210 call!332923)))

(assert (=> b!4751722 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) lambda!222135)))

(declare-fun lt!1916197 () Unit!135894)

(assert (=> b!4751722 (= lt!1916197 lt!1916210)))

(declare-fun call!332925 () Bool)

(assert (=> b!4751722 call!332925))

(declare-fun lt!1916214 () Unit!135894)

(declare-fun Unit!136139 () Unit!135894)

(assert (=> b!4751722 (= lt!1916214 Unit!136139)))

(assert (=> b!4751722 (forall!11762 (t!360542 (t!360542 (t!360542 l!14304))) lambda!222136)))

(declare-fun lt!1916199 () Unit!135894)

(declare-fun Unit!136140 () Unit!135894)

(assert (=> b!4751722 (= lt!1916199 Unit!136140)))

(declare-fun lt!1916208 () Unit!135894)

(declare-fun Unit!136141 () Unit!135894)

(assert (=> b!4751722 (= lt!1916208 Unit!136141)))

(declare-fun lt!1916201 () Unit!135894)

(assert (=> b!4751722 (= lt!1916201 (forallContained!3788 (toList!6116 lt!1916204) lambda!222136 (h!59483 (t!360542 (t!360542 l!14304)))))))

(assert (=> b!4751722 (contains!16509 lt!1916204 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun lt!1916209 () Unit!135894)

(declare-fun Unit!136142 () Unit!135894)

(assert (=> b!4751722 (= lt!1916209 Unit!136142)))

(assert (=> b!4751722 (contains!16509 lt!1916203 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun lt!1916211 () Unit!135894)

(declare-fun Unit!136143 () Unit!135894)

(assert (=> b!4751722 (= lt!1916211 Unit!136143)))

(assert (=> b!4751722 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222136)))

(declare-fun lt!1916194 () Unit!135894)

(declare-fun Unit!136144 () Unit!135894)

(assert (=> b!4751722 (= lt!1916194 Unit!136144)))

(assert (=> b!4751722 (forall!11762 (toList!6116 lt!1916204) lambda!222136)))

(declare-fun lt!1916200 () Unit!135894)

(declare-fun Unit!136145 () Unit!135894)

(assert (=> b!4751722 (= lt!1916200 Unit!136145)))

(declare-fun lt!1916196 () Unit!135894)

(declare-fun Unit!136146 () Unit!135894)

(assert (=> b!4751722 (= lt!1916196 Unit!136146)))

(declare-fun lt!1916198 () Unit!135894)

(assert (=> b!4751722 (= lt!1916198 (addForallContainsKeyThenBeforeAdding!876 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))) lt!1916203 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))) (_2!30722 (h!59483 (t!360542 (t!360542 l!14304))))))))

(assert (=> b!4751722 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) lambda!222136)))

(declare-fun lt!1916212 () Unit!135894)

(assert (=> b!4751722 (= lt!1916212 lt!1916198)))

(assert (=> b!4751722 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) lambda!222136)))

(declare-fun lt!1916205 () Unit!135894)

(declare-fun Unit!136148 () Unit!135894)

(assert (=> b!4751722 (= lt!1916205 Unit!136148)))

(declare-fun res!2015051 () Bool)

(assert (=> b!4751722 (= res!2015051 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222136))))

(declare-fun e!2964107 () Bool)

(assert (=> b!4751722 (=> (not res!2015051) (not e!2964107))))

(assert (=> b!4751722 e!2964107))

(declare-fun lt!1916206 () Unit!135894)

(declare-fun Unit!136149 () Unit!135894)

(assert (=> b!4751722 (= lt!1916206 Unit!136149)))

(declare-fun bm!332918 () Bool)

(assert (=> bm!332918 (= call!332925 (forall!11762 (ite c!811300 (toList!6116 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (toList!6116 lt!1916204)) (ite c!811300 lambda!222134 lambda!222136)))))

(assert (=> b!4751723 (= e!2964109 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1916202 () Unit!135894)

(assert (=> b!4751723 (= lt!1916202 call!332923)))

(declare-fun call!332924 () Bool)

(assert (=> b!4751723 call!332924))

(declare-fun lt!1916213 () Unit!135894)

(assert (=> b!4751723 (= lt!1916213 lt!1916202)))

(assert (=> b!4751723 call!332925))

(declare-fun lt!1916195 () Unit!135894)

(declare-fun Unit!136150 () Unit!135894)

(assert (=> b!4751723 (= lt!1916195 Unit!136150)))

(declare-fun b!4751724 () Bool)

(assert (=> b!4751724 (= e!2964108 (invariantList!1594 (toList!6116 lt!1916207)))))

(declare-fun bm!332919 () Bool)

(assert (=> bm!332919 (= call!332924 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (ite c!811300 lambda!222134 lambda!222136)))))

(declare-fun bm!332920 () Bool)

(assert (=> bm!332920 (= call!332923 (lemmaContainsAllItsOwnKeys!877 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))))))

(declare-fun b!4751725 () Bool)

(assert (=> b!4751725 (= e!2964107 call!332924)))

(declare-fun b!4751726 () Bool)

(declare-fun res!2015050 () Bool)

(assert (=> b!4751726 (=> (not res!2015050) (not e!2964108))))

(assert (=> b!4751726 (= res!2015050 (forall!11762 (toList!6116 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) lambda!222137))))

(assert (= (and d!1518822 c!811300) b!4751723))

(assert (= (and d!1518822 (not c!811300)) b!4751722))

(assert (= (and b!4751722 res!2015051) b!4751725))

(assert (= (or b!4751723 b!4751722) bm!332920))

(assert (= (or b!4751723 b!4751722) bm!332918))

(assert (= (or b!4751723 b!4751725) bm!332919))

(assert (= (and d!1518822 res!2015049) b!4751726))

(assert (= (and b!4751726 res!2015050) b!4751724))

(declare-fun m!5714937 () Bool)

(assert (=> d!1518822 m!5714937))

(assert (=> d!1518822 m!5714521))

(declare-fun m!5714939 () Bool)

(assert (=> bm!332918 m!5714939))

(assert (=> bm!332920 m!5713961))

(declare-fun m!5714941 () Bool)

(assert (=> bm!332920 m!5714941))

(declare-fun m!5714943 () Bool)

(assert (=> b!4751724 m!5714943))

(declare-fun m!5714945 () Bool)

(assert (=> b!4751722 m!5714945))

(declare-fun m!5714947 () Bool)

(assert (=> b!4751722 m!5714947))

(declare-fun m!5714949 () Bool)

(assert (=> b!4751722 m!5714949))

(declare-fun m!5714951 () Bool)

(assert (=> b!4751722 m!5714951))

(declare-fun m!5714953 () Bool)

(assert (=> b!4751722 m!5714953))

(assert (=> b!4751722 m!5713961))

(assert (=> b!4751722 m!5714947))

(declare-fun m!5714955 () Bool)

(assert (=> b!4751722 m!5714955))

(declare-fun m!5714957 () Bool)

(assert (=> b!4751722 m!5714957))

(assert (=> b!4751722 m!5714951))

(declare-fun m!5714959 () Bool)

(assert (=> b!4751722 m!5714959))

(declare-fun m!5714961 () Bool)

(assert (=> b!4751722 m!5714961))

(assert (=> b!4751722 m!5713961))

(declare-fun m!5714963 () Bool)

(assert (=> b!4751722 m!5714963))

(declare-fun m!5714965 () Bool)

(assert (=> b!4751722 m!5714965))

(assert (=> b!4751722 m!5714961))

(declare-fun m!5714967 () Bool)

(assert (=> bm!332919 m!5714967))

(declare-fun m!5714969 () Bool)

(assert (=> b!4751726 m!5714969))

(assert (=> b!4751315 d!1518822))

(declare-fun b!4751743 () Bool)

(declare-fun e!2964122 () List!53211)

(assert (=> b!4751743 (= e!2964122 (getKeysList!1003 (toList!6116 lt!1915830)))))

(declare-fun b!4751744 () Bool)

(declare-fun e!2964120 () Unit!135894)

(declare-fun e!2964123 () Unit!135894)

(assert (=> b!4751744 (= e!2964120 e!2964123)))

(declare-fun c!811310 () Bool)

(declare-fun call!332926 () Bool)

(assert (=> b!4751744 (= c!811310 call!332926)))

(declare-fun b!4751745 () Bool)

(declare-fun e!2964118 () Bool)

(assert (=> b!4751745 (= e!2964118 (not (contains!16512 (keys!19162 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751746 () Bool)

(assert (=> b!4751746 (= e!2964122 (keys!19162 lt!1915830))))

(declare-fun b!4751747 () Bool)

(declare-fun Unit!136152 () Unit!135894)

(assert (=> b!4751747 (= e!2964123 Unit!136152)))

(declare-fun b!4751748 () Bool)

(declare-fun e!2964121 () Bool)

(declare-fun e!2964119 () Bool)

(assert (=> b!4751748 (= e!2964121 e!2964119)))

(declare-fun res!2015052 () Bool)

(assert (=> b!4751748 (=> (not res!2015052) (not e!2964119))))

(assert (=> b!4751748 (= res!2015052 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751749 () Bool)

(declare-fun lt!1916216 () Unit!135894)

(assert (=> b!4751749 (= e!2964120 lt!1916216)))

(declare-fun lt!1916219 () Unit!135894)

(assert (=> b!4751749 (= lt!1916219 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751749 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916218 () Unit!135894)

(assert (=> b!4751749 (= lt!1916218 lt!1916219)))

(assert (=> b!4751749 (= lt!1916216 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751749 call!332926))

(declare-fun b!4751750 () Bool)

(assert (=> b!4751750 (= e!2964119 (contains!16512 (keys!19162 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun d!1518830 () Bool)

(assert (=> d!1518830 e!2964121))

(declare-fun res!2015053 () Bool)

(assert (=> d!1518830 (=> res!2015053 e!2964121)))

(assert (=> d!1518830 (= res!2015053 e!2964118)))

(declare-fun res!2015054 () Bool)

(assert (=> d!1518830 (=> (not res!2015054) (not e!2964118))))

(declare-fun lt!1916215 () Bool)

(assert (=> d!1518830 (= res!2015054 (not lt!1916215))))

(declare-fun lt!1916221 () Bool)

(assert (=> d!1518830 (= lt!1916215 lt!1916221)))

(declare-fun lt!1916217 () Unit!135894)

(assert (=> d!1518830 (= lt!1916217 e!2964120)))

(declare-fun c!811309 () Bool)

(assert (=> d!1518830 (= c!811309 lt!1916221)))

(assert (=> d!1518830 (= lt!1916221 (containsKey!3558 (toList!6116 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518830 (= (contains!16509 lt!1915830 (_1!30722 (h!59483 (t!360542 l!14304)))) lt!1916215)))

(declare-fun b!4751751 () Bool)

(assert (=> b!4751751 false))

(declare-fun lt!1916222 () Unit!135894)

(declare-fun lt!1916220 () Unit!135894)

(assert (=> b!4751751 (= lt!1916222 lt!1916220)))

(assert (=> b!4751751 (containsKey!3558 (toList!6116 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751751 (= lt!1916220 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915830) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun Unit!136153 () Unit!135894)

(assert (=> b!4751751 (= e!2964123 Unit!136153)))

(declare-fun bm!332921 () Bool)

(assert (=> bm!332921 (= call!332926 (contains!16512 e!2964122 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun c!811311 () Bool)

(assert (=> bm!332921 (= c!811311 c!811309)))

(assert (= (and d!1518830 c!811309) b!4751749))

(assert (= (and d!1518830 (not c!811309)) b!4751744))

(assert (= (and b!4751744 c!811310) b!4751751))

(assert (= (and b!4751744 (not c!811310)) b!4751747))

(assert (= (or b!4751749 b!4751744) bm!332921))

(assert (= (and bm!332921 c!811311) b!4751743))

(assert (= (and bm!332921 (not c!811311)) b!4751746))

(assert (= (and d!1518830 res!2015054) b!4751745))

(assert (= (and d!1518830 (not res!2015053)) b!4751748))

(assert (= (and b!4751748 res!2015052) b!4751750))

(declare-fun m!5714971 () Bool)

(assert (=> b!4751743 m!5714971))

(declare-fun m!5714973 () Bool)

(assert (=> b!4751745 m!5714973))

(assert (=> b!4751745 m!5714973))

(declare-fun m!5714975 () Bool)

(assert (=> b!4751745 m!5714975))

(assert (=> b!4751750 m!5714973))

(assert (=> b!4751750 m!5714973))

(assert (=> b!4751750 m!5714975))

(declare-fun m!5714977 () Bool)

(assert (=> bm!332921 m!5714977))

(declare-fun m!5714979 () Bool)

(assert (=> b!4751748 m!5714979))

(assert (=> b!4751748 m!5714979))

(declare-fun m!5714981 () Bool)

(assert (=> b!4751748 m!5714981))

(declare-fun m!5714983 () Bool)

(assert (=> d!1518830 m!5714983))

(assert (=> b!4751751 m!5714983))

(declare-fun m!5714985 () Bool)

(assert (=> b!4751751 m!5714985))

(assert (=> b!4751746 m!5714973))

(declare-fun m!5714987 () Bool)

(assert (=> b!4751749 m!5714987))

(assert (=> b!4751749 m!5714979))

(assert (=> b!4751749 m!5714979))

(assert (=> b!4751749 m!5714981))

(declare-fun m!5714989 () Bool)

(assert (=> b!4751749 m!5714989))

(assert (=> b!4751315 d!1518830))

(declare-fun bs!1142206 () Bool)

(declare-fun d!1518832 () Bool)

(assert (= bs!1142206 (and d!1518832 d!1518558)))

(declare-fun lambda!222138 () Int)

(assert (=> bs!1142206 (= (= acc!1214 lt!1915675) (= lambda!222138 lambda!222069))))

(declare-fun bs!1142207 () Bool)

(assert (= bs!1142207 (and d!1518832 b!4751534)))

(assert (=> bs!1142207 (= (= acc!1214 lt!1916057) (= lambda!222138 lambda!222119))))

(declare-fun bs!1142208 () Bool)

(assert (= bs!1142208 (and d!1518832 d!1518594)))

(assert (=> bs!1142208 (= (= acc!1214 lt!1915800) (= lambda!222138 lambda!222088))))

(declare-fun bs!1142209 () Bool)

(assert (= bs!1142209 (and d!1518832 d!1518790)))

(assert (=> bs!1142209 (= (= acc!1214 lt!1916163) (= lambda!222138 lambda!222131))))

(declare-fun bs!1142210 () Bool)

(assert (= bs!1142210 (and d!1518832 d!1518746)))

(assert (=> bs!1142210 (= (= acc!1214 lt!1915754) (= lambda!222138 lambda!222123))))

(declare-fun bs!1142211 () Bool)

(assert (= bs!1142211 (and d!1518832 b!4751294)))

(assert (=> bs!1142211 (= (= acc!1214 lt!1915754) (= lambda!222138 lambda!222079))))

(declare-fun bs!1142212 () Bool)

(assert (= bs!1142212 (and d!1518832 b!4751305)))

(assert (=> bs!1142212 (= (= acc!1214 lt!1915494) (= lambda!222138 lambda!222084))))

(assert (=> bs!1142211 (= (= acc!1214 lt!1915497) (= lambda!222138 lambda!222078))))

(declare-fun bs!1142213 () Bool)

(assert (= bs!1142213 (and d!1518832 b!4751304)))

(assert (=> bs!1142213 (= (= acc!1214 lt!1915796) (= lambda!222138 lambda!222086))))

(declare-fun bs!1142214 () Bool)

(assert (= bs!1142214 (and d!1518832 d!1518806)))

(assert (=> bs!1142214 (= (= acc!1214 lt!1915829) (= lambda!222138 lambda!222133))))

(declare-fun bs!1142215 () Bool)

(assert (= bs!1142215 (and d!1518832 d!1518796)))

(assert (=> bs!1142215 (= (= acc!1214 lt!1915882) (= lambda!222138 lambda!222132))))

(declare-fun bs!1142216 () Bool)

(assert (= bs!1142216 (and d!1518832 b!4751295)))

(assert (=> bs!1142216 (= (= acc!1214 lt!1915497) (= lambda!222138 lambda!222077))))

(declare-fun bs!1142217 () Bool)

(assert (= bs!1142217 (and d!1518832 b!4751349)))

(assert (=> bs!1142217 (= (= acc!1214 (+!2382 lt!1915497 t!14174)) (= lambda!222138 lambda!222106))))

(declare-fun bs!1142218 () Bool)

(assert (= bs!1142218 (and d!1518832 b!4751625)))

(assert (=> bs!1142218 (= (= acc!1214 lt!1916104) (= lambda!222138 lambda!222126))))

(declare-fun bs!1142219 () Bool)

(assert (= bs!1142219 (and d!1518832 d!1518762)))

(assert (=> bs!1142219 (= (= acc!1214 lt!1916108) (= lambda!222138 lambda!222127))))

(assert (=> bs!1142213 (= (= acc!1214 lt!1915494) (= lambda!222138 lambda!222085))))

(declare-fun bs!1142220 () Bool)

(assert (= bs!1142220 (and d!1518832 b!4751337)))

(assert (=> bs!1142220 (= (= acc!1214 lt!1915882) (= lambda!222138 lambda!222099))))

(declare-fun bs!1142221 () Bool)

(assert (= bs!1142221 (and d!1518832 d!1518624)))

(assert (=> bs!1142221 (= (= acc!1214 lt!1915907) (= lambda!222138 lambda!222104))))

(declare-fun bs!1142222 () Bool)

(assert (= bs!1142222 (and d!1518832 d!1518676)))

(assert (=> bs!1142222 (= (= acc!1214 lt!1915903) (= lambda!222138 lambda!222116))))

(declare-fun bs!1142223 () Bool)

(assert (= bs!1142223 (and d!1518832 b!4751723)))

(assert (=> bs!1142223 (= (= acc!1214 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222138 lambda!222134))))

(declare-fun bs!1142224 () Bool)

(assert (= bs!1142224 (and d!1518832 b!4751315)))

(assert (=> bs!1142224 (= (= acc!1214 lt!1915497) (= lambda!222138 lambda!222091))))

(declare-fun bs!1142225 () Bool)

(assert (= bs!1142225 (and d!1518832 d!1518686)))

(assert (=> bs!1142225 (= (= acc!1214 lt!1916061) (= lambda!222138 lambda!222120))))

(declare-fun bs!1142226 () Bool)

(assert (= bs!1142226 (and d!1518832 b!4751338)))

(assert (=> bs!1142226 (= lambda!222138 lambda!222097)))

(declare-fun bs!1142227 () Bool)

(assert (= bs!1142227 (and d!1518832 b!4751350)))

(assert (=> bs!1142227 (= (= acc!1214 (+!2382 lt!1915497 t!14174)) (= lambda!222138 lambda!222105))))

(declare-fun bs!1142228 () Bool)

(assert (= bs!1142228 (and d!1518832 d!1518706)))

(assert (=> bs!1142228 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222138 lambda!222122))))

(declare-fun bs!1142229 () Bool)

(assert (= bs!1142229 (and d!1518832 b!4751722)))

(assert (=> bs!1142229 (= (= acc!1214 lt!1916203) (= lambda!222138 lambda!222136))))

(declare-fun bs!1142230 () Bool)

(assert (= bs!1142230 (and d!1518832 b!4751681)))

(assert (=> bs!1142230 (= (= acc!1214 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222138 lambda!222128))))

(assert (=> bs!1142229 (= (= acc!1214 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222138 lambda!222135))))

(declare-fun bs!1142231 () Bool)

(assert (= bs!1142231 (and d!1518832 b!4751267)))

(assert (=> bs!1142231 (= (= acc!1214 lt!1915671) (= lambda!222138 lambda!222067))))

(declare-fun bs!1142232 () Bool)

(assert (= bs!1142232 (and d!1518832 b!4751268)))

(assert (=> bs!1142232 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222138 lambda!222065))))

(declare-fun bs!1142233 () Bool)

(assert (= bs!1142233 (and d!1518832 b!4751535)))

(assert (=> bs!1142233 (= (= acc!1214 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222138 lambda!222117))))

(declare-fun bs!1142234 () Bool)

(assert (= bs!1142234 (and d!1518832 b!4751680)))

(assert (=> bs!1142234 (= (= acc!1214 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222138 lambda!222129))))

(declare-fun bs!1142235 () Bool)

(assert (= bs!1142235 (and d!1518832 b!4751626)))

(assert (=> bs!1142235 (= (= acc!1214 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222138 lambda!222124))))

(declare-fun bs!1142236 () Bool)

(assert (= bs!1142236 (and d!1518832 b!4751344)))

(assert (=> bs!1142236 (= (= acc!1214 lt!1915903) (= lambda!222138 lambda!222103))))

(assert (=> bs!1142207 (= (= acc!1214 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222138 lambda!222118))))

(assert (=> bs!1142217 (= (= acc!1214 lt!1915924) (= lambda!222138 lambda!222107))))

(assert (=> bs!1142218 (= (= acc!1214 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222138 lambda!222125))))

(assert (=> bs!1142224 (= (= acc!1214 lt!1915829) (= lambda!222138 lambda!222092))))

(declare-fun bs!1142237 () Bool)

(assert (= bs!1142237 (and d!1518832 d!1518694)))

(assert (=> bs!1142237 (= (= acc!1214 (+!2382 lt!1915497 t!14174)) (= lambda!222138 lambda!222121))))

(declare-fun bs!1142238 () Bool)

(assert (= bs!1142238 (and d!1518832 b!4751345)))

(assert (=> bs!1142238 (= lambda!222138 lambda!222101)))

(declare-fun bs!1142239 () Bool)

(assert (= bs!1142239 (and d!1518832 d!1518628)))

(assert (=> bs!1142239 (= (= acc!1214 lt!1915928) (= lambda!222138 lambda!222108))))

(declare-fun bs!1142240 () Bool)

(assert (= bs!1142240 (and d!1518832 d!1518590)))

(assert (=> bs!1142240 (= (= acc!1214 lt!1915758) (= lambda!222138 lambda!222081))))

(assert (=> bs!1142234 (= (= acc!1214 lt!1916159) (= lambda!222138 lambda!222130))))

(declare-fun bs!1142241 () Bool)

(assert (= bs!1142241 (and d!1518832 b!4751316)))

(assert (=> bs!1142241 (= (= acc!1214 lt!1915497) (= lambda!222138 lambda!222089))))

(assert (=> bs!1142231 (= (= acc!1214 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222138 lambda!222066))))

(assert (=> bs!1142220 (= lambda!222138 lambda!222098)))

(declare-fun bs!1142242 () Bool)

(assert (= bs!1142242 (and d!1518832 d!1518668)))

(assert (=> bs!1142242 (= (= acc!1214 lt!1915494) (= lambda!222138 lambda!222111))))

(declare-fun bs!1142243 () Bool)

(assert (= bs!1142243 (and d!1518832 d!1518618)))

(assert (=> bs!1142243 (= (= acc!1214 lt!1915886) (= lambda!222138 lambda!222100))))

(declare-fun bs!1142244 () Bool)

(assert (= bs!1142244 (and d!1518832 d!1518604)))

(assert (=> bs!1142244 (= (= acc!1214 lt!1915833) (= lambda!222138 lambda!222094))))

(assert (=> bs!1142236 (= lambda!222138 lambda!222102)))

(declare-fun bs!1142245 () Bool)

(assert (= bs!1142245 (and d!1518832 d!1518822)))

(assert (=> bs!1142245 (= (= acc!1214 lt!1916207) (= lambda!222138 lambda!222137))))

(assert (=> d!1518832 true))

(assert (=> d!1518832 (forall!11762 (toList!6116 acc!1214) lambda!222138)))

(declare-fun lt!1916223 () Unit!135894)

(assert (=> d!1518832 (= lt!1916223 (choose!33824 acc!1214))))

(assert (=> d!1518832 (= (lemmaContainsAllItsOwnKeys!877 acc!1214) lt!1916223)))

(declare-fun bs!1142246 () Bool)

(assert (= bs!1142246 d!1518832))

(declare-fun m!5714993 () Bool)

(assert (=> bs!1142246 m!5714993))

(declare-fun m!5714995 () Bool)

(assert (=> bs!1142246 m!5714995))

(assert (=> bm!332873 d!1518832))

(declare-fun b!4751758 () Bool)

(declare-fun e!2964127 () Option!12530)

(assert (=> b!4751758 (= e!2964127 (getValueByKey!2080 (t!360542 (toList!6116 lt!1915742)) (_1!30722 t!14174)))))

(declare-fun d!1518836 () Bool)

(declare-fun c!811314 () Bool)

(assert (=> d!1518836 (= c!811314 (and ((_ is Cons!53086) (toList!6116 lt!1915742)) (= (_1!30722 (h!59483 (toList!6116 lt!1915742))) (_1!30722 t!14174))))))

(declare-fun e!2964126 () Option!12530)

(assert (=> d!1518836 (= (getValueByKey!2080 (toList!6116 lt!1915742) (_1!30722 t!14174)) e!2964126)))

(declare-fun b!4751757 () Bool)

(assert (=> b!4751757 (= e!2964126 e!2964127)))

(declare-fun c!811315 () Bool)

(assert (=> b!4751757 (= c!811315 (and ((_ is Cons!53086) (toList!6116 lt!1915742)) (not (= (_1!30722 (h!59483 (toList!6116 lt!1915742))) (_1!30722 t!14174)))))))

(declare-fun b!4751756 () Bool)

(assert (=> b!4751756 (= e!2964126 (Some!12529 (_2!30722 (h!59483 (toList!6116 lt!1915742)))))))

(declare-fun b!4751759 () Bool)

(assert (=> b!4751759 (= e!2964127 None!12529)))

(assert (= (and d!1518836 c!811314) b!4751756))

(assert (= (and d!1518836 (not c!811314)) b!4751757))

(assert (= (and b!4751757 c!811315) b!4751758))

(assert (= (and b!4751757 (not c!811315)) b!4751759))

(declare-fun m!5714997 () Bool)

(assert (=> b!4751758 m!5714997))

(assert (=> b!4751292 d!1518836))

(declare-fun d!1518838 () Bool)

(declare-fun res!2015055 () Bool)

(declare-fun e!2964128 () Bool)

(assert (=> d!1518838 (=> res!2015055 e!2964128)))

(assert (=> d!1518838 (= res!2015055 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518838 (= (forall!11762 (toList!6116 lt!1915497) lambda!222081) e!2964128)))

(declare-fun b!4751760 () Bool)

(declare-fun e!2964129 () Bool)

(assert (=> b!4751760 (= e!2964128 e!2964129)))

(declare-fun res!2015056 () Bool)

(assert (=> b!4751760 (=> (not res!2015056) (not e!2964129))))

(assert (=> b!4751760 (= res!2015056 (dynLambda!21900 lambda!222081 (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751761 () Bool)

(assert (=> b!4751761 (= e!2964129 (forall!11762 (t!360542 (toList!6116 lt!1915497)) lambda!222081))))

(assert (= (and d!1518838 (not res!2015055)) b!4751760))

(assert (= (and b!4751760 res!2015056) b!4751761))

(declare-fun b_lambda!183263 () Bool)

(assert (=> (not b_lambda!183263) (not b!4751760)))

(declare-fun m!5714999 () Bool)

(assert (=> b!4751760 m!5714999))

(declare-fun m!5715001 () Bool)

(assert (=> b!4751761 m!5715001))

(assert (=> b!4751298 d!1518838))

(declare-fun b!4751762 () Bool)

(declare-fun e!2964134 () List!53211)

(assert (=> b!4751762 (= e!2964134 (getKeysList!1003 (toList!6116 lt!1915742)))))

(declare-fun b!4751763 () Bool)

(declare-fun e!2964132 () Unit!135894)

(declare-fun e!2964135 () Unit!135894)

(assert (=> b!4751763 (= e!2964132 e!2964135)))

(declare-fun c!811317 () Bool)

(declare-fun call!332927 () Bool)

(assert (=> b!4751763 (= c!811317 call!332927)))

(declare-fun b!4751764 () Bool)

(declare-fun e!2964130 () Bool)

(assert (=> b!4751764 (= e!2964130 (not (contains!16512 (keys!19162 lt!1915742) (_1!30722 t!14174))))))

(declare-fun b!4751765 () Bool)

(assert (=> b!4751765 (= e!2964134 (keys!19162 lt!1915742))))

(declare-fun b!4751766 () Bool)

(declare-fun Unit!136156 () Unit!135894)

(assert (=> b!4751766 (= e!2964135 Unit!136156)))

(declare-fun b!4751767 () Bool)

(declare-fun e!2964133 () Bool)

(declare-fun e!2964131 () Bool)

(assert (=> b!4751767 (= e!2964133 e!2964131)))

(declare-fun res!2015057 () Bool)

(assert (=> b!4751767 (=> (not res!2015057) (not e!2964131))))

(assert (=> b!4751767 (= res!2015057 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915742) (_1!30722 t!14174))))))

(declare-fun b!4751768 () Bool)

(declare-fun lt!1916225 () Unit!135894)

(assert (=> b!4751768 (= e!2964132 lt!1916225)))

(declare-fun lt!1916228 () Unit!135894)

(assert (=> b!4751768 (= lt!1916228 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915742) (_1!30722 t!14174)))))

(assert (=> b!4751768 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915742) (_1!30722 t!14174)))))

(declare-fun lt!1916227 () Unit!135894)

(assert (=> b!4751768 (= lt!1916227 lt!1916228)))

(assert (=> b!4751768 (= lt!1916225 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915742) (_1!30722 t!14174)))))

(assert (=> b!4751768 call!332927))

(declare-fun b!4751769 () Bool)

(assert (=> b!4751769 (= e!2964131 (contains!16512 (keys!19162 lt!1915742) (_1!30722 t!14174)))))

(declare-fun d!1518840 () Bool)

(assert (=> d!1518840 e!2964133))

(declare-fun res!2015058 () Bool)

(assert (=> d!1518840 (=> res!2015058 e!2964133)))

(assert (=> d!1518840 (= res!2015058 e!2964130)))

(declare-fun res!2015059 () Bool)

(assert (=> d!1518840 (=> (not res!2015059) (not e!2964130))))

(declare-fun lt!1916224 () Bool)

(assert (=> d!1518840 (= res!2015059 (not lt!1916224))))

(declare-fun lt!1916230 () Bool)

(assert (=> d!1518840 (= lt!1916224 lt!1916230)))

(declare-fun lt!1916226 () Unit!135894)

(assert (=> d!1518840 (= lt!1916226 e!2964132)))

(declare-fun c!811316 () Bool)

(assert (=> d!1518840 (= c!811316 lt!1916230)))

(assert (=> d!1518840 (= lt!1916230 (containsKey!3558 (toList!6116 lt!1915742) (_1!30722 t!14174)))))

(assert (=> d!1518840 (= (contains!16509 lt!1915742 (_1!30722 t!14174)) lt!1916224)))

(declare-fun b!4751770 () Bool)

(assert (=> b!4751770 false))

(declare-fun lt!1916231 () Unit!135894)

(declare-fun lt!1916229 () Unit!135894)

(assert (=> b!4751770 (= lt!1916231 lt!1916229)))

(assert (=> b!4751770 (containsKey!3558 (toList!6116 lt!1915742) (_1!30722 t!14174))))

(assert (=> b!4751770 (= lt!1916229 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915742) (_1!30722 t!14174)))))

(declare-fun Unit!136157 () Unit!135894)

(assert (=> b!4751770 (= e!2964135 Unit!136157)))

(declare-fun bm!332922 () Bool)

(assert (=> bm!332922 (= call!332927 (contains!16512 e!2964134 (_1!30722 t!14174)))))

(declare-fun c!811318 () Bool)

(assert (=> bm!332922 (= c!811318 c!811316)))

(assert (= (and d!1518840 c!811316) b!4751768))

(assert (= (and d!1518840 (not c!811316)) b!4751763))

(assert (= (and b!4751763 c!811317) b!4751770))

(assert (= (and b!4751763 (not c!811317)) b!4751766))

(assert (= (or b!4751768 b!4751763) bm!332922))

(assert (= (and bm!332922 c!811318) b!4751762))

(assert (= (and bm!332922 (not c!811318)) b!4751765))

(assert (= (and d!1518840 res!2015059) b!4751764))

(assert (= (and d!1518840 (not res!2015058)) b!4751767))

(assert (= (and b!4751767 res!2015057) b!4751769))

(declare-fun m!5715003 () Bool)

(assert (=> b!4751762 m!5715003))

(declare-fun m!5715005 () Bool)

(assert (=> b!4751764 m!5715005))

(assert (=> b!4751764 m!5715005))

(declare-fun m!5715007 () Bool)

(assert (=> b!4751764 m!5715007))

(assert (=> b!4751769 m!5715005))

(assert (=> b!4751769 m!5715005))

(assert (=> b!4751769 m!5715007))

(declare-fun m!5715009 () Bool)

(assert (=> bm!332922 m!5715009))

(assert (=> b!4751767 m!5713777))

(assert (=> b!4751767 m!5713777))

(declare-fun m!5715011 () Bool)

(assert (=> b!4751767 m!5715011))

(declare-fun m!5715013 () Bool)

(assert (=> d!1518840 m!5715013))

(assert (=> b!4751770 m!5715013))

(declare-fun m!5715015 () Bool)

(assert (=> b!4751770 m!5715015))

(assert (=> b!4751765 m!5715005))

(declare-fun m!5715017 () Bool)

(assert (=> b!4751768 m!5715017))

(assert (=> b!4751768 m!5713777))

(assert (=> b!4751768 m!5713777))

(assert (=> b!4751768 m!5715011))

(declare-fun m!5715019 () Bool)

(assert (=> b!4751768 m!5715019))

(assert (=> d!1518588 d!1518840))

(declare-fun b!4751773 () Bool)

(declare-fun e!2964137 () Option!12530)

(assert (=> b!4751773 (= e!2964137 (getValueByKey!2080 (t!360542 lt!1915743) (_1!30722 t!14174)))))

(declare-fun d!1518842 () Bool)

(declare-fun c!811319 () Bool)

(assert (=> d!1518842 (= c!811319 (and ((_ is Cons!53086) lt!1915743) (= (_1!30722 (h!59483 lt!1915743)) (_1!30722 t!14174))))))

(declare-fun e!2964136 () Option!12530)

(assert (=> d!1518842 (= (getValueByKey!2080 lt!1915743 (_1!30722 t!14174)) e!2964136)))

(declare-fun b!4751772 () Bool)

(assert (=> b!4751772 (= e!2964136 e!2964137)))

(declare-fun c!811320 () Bool)

(assert (=> b!4751772 (= c!811320 (and ((_ is Cons!53086) lt!1915743) (not (= (_1!30722 (h!59483 lt!1915743)) (_1!30722 t!14174)))))))

(declare-fun b!4751771 () Bool)

(assert (=> b!4751771 (= e!2964136 (Some!12529 (_2!30722 (h!59483 lt!1915743))))))

(declare-fun b!4751774 () Bool)

(assert (=> b!4751774 (= e!2964137 None!12529)))

(assert (= (and d!1518842 c!811319) b!4751771))

(assert (= (and d!1518842 (not c!811319)) b!4751772))

(assert (= (and b!4751772 c!811320) b!4751773))

(assert (= (and b!4751772 (not c!811320)) b!4751774))

(declare-fun m!5715021 () Bool)

(assert (=> b!4751773 m!5715021))

(assert (=> d!1518588 d!1518842))

(declare-fun d!1518844 () Bool)

(assert (=> d!1518844 (= (getValueByKey!2080 lt!1915743 (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174)))))

(declare-fun lt!1916232 () Unit!135894)

(assert (=> d!1518844 (= lt!1916232 (choose!33823 lt!1915743 (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun e!2964138 () Bool)

(assert (=> d!1518844 e!2964138))

(declare-fun res!2015060 () Bool)

(assert (=> d!1518844 (=> (not res!2015060) (not e!2964138))))

(assert (=> d!1518844 (= res!2015060 (invariantList!1594 lt!1915743))))

(assert (=> d!1518844 (= (lemmaContainsTupThenGetReturnValue!1157 lt!1915743 (_1!30722 t!14174) (_2!30722 t!14174)) lt!1916232)))

(declare-fun b!4751775 () Bool)

(declare-fun res!2015061 () Bool)

(assert (=> b!4751775 (=> (not res!2015061) (not e!2964138))))

(assert (=> b!4751775 (= res!2015061 (containsKey!3558 lt!1915743 (_1!30722 t!14174)))))

(declare-fun b!4751776 () Bool)

(assert (=> b!4751776 (= e!2964138 (contains!16510 lt!1915743 (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))

(assert (= (and d!1518844 res!2015060) b!4751775))

(assert (= (and b!4751775 res!2015061) b!4751776))

(assert (=> d!1518844 m!5713771))

(declare-fun m!5715023 () Bool)

(assert (=> d!1518844 m!5715023))

(declare-fun m!5715025 () Bool)

(assert (=> d!1518844 m!5715025))

(declare-fun m!5715027 () Bool)

(assert (=> b!4751775 m!5715027))

(declare-fun m!5715029 () Bool)

(assert (=> b!4751776 m!5715029))

(assert (=> d!1518588 d!1518844))

(declare-fun b!4751777 () Bool)

(declare-fun res!2015065 () Bool)

(declare-fun e!2964143 () Bool)

(assert (=> b!4751777 (=> (not res!2015065) (not e!2964143))))

(declare-fun lt!1916235 () List!53210)

(assert (=> b!4751777 (= res!2015065 (containsKey!3558 lt!1916235 (_1!30722 t!14174)))))

(declare-fun b!4751778 () Bool)

(declare-fun e!2964144 () List!53210)

(assert (=> b!4751778 (= e!2964144 Nil!53086)))

(declare-fun d!1518846 () Bool)

(assert (=> d!1518846 e!2964143))

(declare-fun res!2015064 () Bool)

(assert (=> d!1518846 (=> (not res!2015064) (not e!2964143))))

(assert (=> d!1518846 (= res!2015064 (invariantList!1594 lt!1916235))))

(declare-fun e!2964139 () List!53210)

(assert (=> d!1518846 (= lt!1916235 e!2964139)))

(declare-fun c!811322 () Bool)

(assert (=> d!1518846 (= c!811322 (and ((_ is Cons!53086) (toList!6116 acc!1214)) (= (_1!30722 (h!59483 (toList!6116 acc!1214))) (_1!30722 t!14174))))))

(assert (=> d!1518846 (invariantList!1594 (toList!6116 acc!1214))))

(assert (=> d!1518846 (= (insertNoDuplicatedKeys!665 (toList!6116 acc!1214) (_1!30722 t!14174) (_2!30722 t!14174)) lt!1916235)))

(declare-fun b!4751779 () Bool)

(assert (=> b!4751779 false))

(declare-fun lt!1916239 () Unit!135894)

(declare-fun lt!1916234 () Unit!135894)

(assert (=> b!4751779 (= lt!1916239 lt!1916234)))

(assert (=> b!4751779 (containsKey!3558 (t!360542 (toList!6116 acc!1214)) (_1!30722 (h!59483 (toList!6116 acc!1214))))))

(assert (=> b!4751779 (= lt!1916234 (lemmaInGetKeysListThenContainsKey!1002 (t!360542 (toList!6116 acc!1214)) (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun lt!1916241 () Unit!135894)

(declare-fun lt!1916233 () Unit!135894)

(assert (=> b!4751779 (= lt!1916241 lt!1916233)))

(declare-fun call!332928 () List!53211)

(assert (=> b!4751779 (contains!16512 call!332928 (_1!30722 (h!59483 (toList!6116 acc!1214))))))

(declare-fun lt!1916240 () List!53210)

(assert (=> b!4751779 (= lt!1916233 (lemmaInListThenGetKeysListContains!998 lt!1916240 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(assert (=> b!4751779 (= lt!1916240 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 acc!1214)) (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun e!2964140 () Unit!135894)

(declare-fun Unit!136158 () Unit!135894)

(assert (=> b!4751779 (= e!2964140 Unit!136158)))

(declare-fun b!4751780 () Bool)

(declare-fun e!2964141 () List!53210)

(declare-fun lt!1916238 () List!53210)

(assert (=> b!4751780 (= e!2964141 lt!1916238)))

(declare-fun call!332929 () List!53210)

(assert (=> b!4751780 (= lt!1916238 call!332929)))

(declare-fun c!811321 () Bool)

(assert (=> b!4751780 (= c!811321 (containsKey!3558 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 acc!1214)) (_1!30722 t!14174) (_2!30722 t!14174)) (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun lt!1916242 () Unit!135894)

(assert (=> b!4751780 (= lt!1916242 e!2964140)))

(declare-fun b!4751781 () Bool)

(declare-fun e!2964142 () List!53210)

(declare-fun call!332930 () List!53210)

(assert (=> b!4751781 (= e!2964142 call!332930)))

(declare-fun b!4751782 () Bool)

(assert (=> b!4751782 (= e!2964141 call!332929)))

(declare-fun b!4751783 () Bool)

(declare-fun c!811324 () Bool)

(assert (=> b!4751783 (= c!811324 ((_ is Cons!53086) (toList!6116 acc!1214)))))

(assert (=> b!4751783 (= e!2964142 e!2964141)))

(declare-fun bm!332923 () Bool)

(assert (=> bm!332923 (= call!332929 call!332930)))

(declare-fun c!811325 () Bool)

(assert (=> bm!332923 (= c!811325 c!811324)))

(declare-fun b!4751784 () Bool)

(declare-fun Unit!136160 () Unit!135894)

(assert (=> b!4751784 (= e!2964140 Unit!136160)))

(declare-fun b!4751785 () Bool)

(assert (=> b!4751785 (= e!2964143 (= (content!9530 (getKeysList!1003 lt!1916235)) ((_ map or) (content!9530 (getKeysList!1003 (toList!6116 acc!1214))) (store ((as const (Array K!14520 Bool)) false) (_1!30722 t!14174) true))))))

(declare-fun bm!332924 () Bool)

(declare-fun call!332931 () List!53210)

(assert (=> bm!332924 (= call!332930 call!332931)))

(declare-fun b!4751786 () Bool)

(declare-fun e!2964145 () Bool)

(assert (=> b!4751786 (= e!2964145 (not (containsKey!3558 (toList!6116 acc!1214) (_1!30722 t!14174))))))

(declare-fun b!4751787 () Bool)

(assert (=> b!4751787 (= e!2964139 e!2964142)))

(declare-fun res!2015063 () Bool)

(assert (=> b!4751787 (= res!2015063 ((_ is Cons!53086) (toList!6116 acc!1214)))))

(assert (=> b!4751787 (=> (not res!2015063) (not e!2964145))))

(declare-fun c!811323 () Bool)

(assert (=> b!4751787 (= c!811323 e!2964145)))

(declare-fun bm!332925 () Bool)

(assert (=> bm!332925 (= call!332928 (getKeysList!1003 (ite c!811322 (toList!6116 acc!1214) lt!1916240)))))

(declare-fun b!4751788 () Bool)

(declare-fun res!2015062 () Bool)

(assert (=> b!4751788 (=> (not res!2015062) (not e!2964143))))

(assert (=> b!4751788 (= res!2015062 (contains!16510 lt!1916235 (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))

(declare-fun b!4751789 () Bool)

(assert (=> b!4751789 (= e!2964144 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 acc!1214)) (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun bm!332926 () Bool)

(assert (=> bm!332926 (= call!332931 ($colon$colon!1097 (ite c!811322 (t!360542 (toList!6116 acc!1214)) (ite c!811323 (toList!6116 acc!1214) e!2964144)) (ite (or c!811322 c!811323) (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174)) (ite c!811324 (h!59483 (toList!6116 acc!1214)) (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))))

(declare-fun b!4751790 () Bool)

(assert (=> b!4751790 (= e!2964139 call!332931)))

(declare-fun lt!1916236 () List!53211)

(assert (=> b!4751790 (= lt!1916236 call!332928)))

(declare-fun lt!1916237 () Unit!135894)

(assert (=> b!4751790 (= lt!1916237 (lemmaSubseqRefl!160 lt!1916236))))

(assert (=> b!4751790 (subseq!676 lt!1916236 lt!1916236)))

(declare-fun lt!1916243 () Unit!135894)

(assert (=> b!4751790 (= lt!1916243 lt!1916237)))

(assert (= (and d!1518846 c!811322) b!4751790))

(assert (= (and d!1518846 (not c!811322)) b!4751787))

(assert (= (and b!4751787 res!2015063) b!4751786))

(assert (= (and b!4751787 c!811323) b!4751781))

(assert (= (and b!4751787 (not c!811323)) b!4751783))

(assert (= (and b!4751783 c!811324) b!4751780))

(assert (= (and b!4751783 (not c!811324)) b!4751782))

(assert (= (and b!4751780 c!811321) b!4751779))

(assert (= (and b!4751780 (not c!811321)) b!4751784))

(assert (= (or b!4751780 b!4751782) bm!332923))

(assert (= (and bm!332923 c!811325) b!4751789))

(assert (= (and bm!332923 (not c!811325)) b!4751778))

(assert (= (or b!4751781 bm!332923) bm!332924))

(assert (= (or b!4751790 b!4751779) bm!332925))

(assert (= (or b!4751790 bm!332924) bm!332926))

(assert (= (and d!1518846 res!2015064) b!4751777))

(assert (= (and b!4751777 res!2015065) b!4751788))

(assert (= (and b!4751788 res!2015062) b!4751785))

(declare-fun m!5715031 () Bool)

(assert (=> d!1518846 m!5715031))

(assert (=> d!1518846 m!5713533))

(assert (=> b!4751779 m!5714209))

(declare-fun m!5715033 () Bool)

(assert (=> b!4751779 m!5715033))

(declare-fun m!5715035 () Bool)

(assert (=> b!4751779 m!5715035))

(assert (=> b!4751779 m!5714215))

(declare-fun m!5715037 () Bool)

(assert (=> b!4751779 m!5715037))

(declare-fun m!5715039 () Bool)

(assert (=> bm!332926 m!5715039))

(assert (=> b!4751789 m!5715037))

(declare-fun m!5715041 () Bool)

(assert (=> b!4751777 m!5715041))

(declare-fun m!5715043 () Bool)

(assert (=> b!4751790 m!5715043))

(declare-fun m!5715045 () Bool)

(assert (=> b!4751790 m!5715045))

(assert (=> b!4751785 m!5714227))

(declare-fun m!5715047 () Bool)

(assert (=> b!4751785 m!5715047))

(declare-fun m!5715049 () Bool)

(assert (=> b!4751785 m!5715049))

(assert (=> b!4751785 m!5714309))

(assert (=> b!4751785 m!5715047))

(assert (=> b!4751785 m!5714227))

(assert (=> b!4751785 m!5714235))

(declare-fun m!5715051 () Bool)

(assert (=> b!4751786 m!5715051))

(assert (=> b!4751780 m!5715037))

(assert (=> b!4751780 m!5715037))

(declare-fun m!5715053 () Bool)

(assert (=> b!4751780 m!5715053))

(declare-fun m!5715055 () Bool)

(assert (=> b!4751788 m!5715055))

(declare-fun m!5715057 () Bool)

(assert (=> bm!332925 m!5715057))

(assert (=> d!1518588 d!1518846))

(declare-fun b!4751791 () Bool)

(declare-fun e!2964150 () List!53211)

(assert (=> b!4751791 (= e!2964150 (getKeysList!1003 (toList!6116 lt!1915797)))))

(declare-fun b!4751792 () Bool)

(declare-fun e!2964148 () Unit!135894)

(declare-fun e!2964151 () Unit!135894)

(assert (=> b!4751792 (= e!2964148 e!2964151)))

(declare-fun c!811327 () Bool)

(declare-fun call!332932 () Bool)

(assert (=> b!4751792 (= c!811327 call!332932)))

(declare-fun b!4751793 () Bool)

(declare-fun e!2964146 () Bool)

(assert (=> b!4751793 (= e!2964146 (not (contains!16512 (keys!19162 lt!1915797) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751794 () Bool)

(assert (=> b!4751794 (= e!2964150 (keys!19162 lt!1915797))))

(declare-fun b!4751795 () Bool)

(declare-fun Unit!136162 () Unit!135894)

(assert (=> b!4751795 (= e!2964151 Unit!136162)))

(declare-fun b!4751796 () Bool)

(declare-fun e!2964149 () Bool)

(declare-fun e!2964147 () Bool)

(assert (=> b!4751796 (= e!2964149 e!2964147)))

(declare-fun res!2015066 () Bool)

(assert (=> b!4751796 (=> (not res!2015066) (not e!2964147))))

(assert (=> b!4751796 (= res!2015066 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915797) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751797 () Bool)

(declare-fun lt!1916247 () Unit!135894)

(assert (=> b!4751797 (= e!2964148 lt!1916247)))

(declare-fun lt!1916250 () Unit!135894)

(assert (=> b!4751797 (= lt!1916250 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915797) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751797 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915797) (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1916249 () Unit!135894)

(assert (=> b!4751797 (= lt!1916249 lt!1916250)))

(assert (=> b!4751797 (= lt!1916247 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915797) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751797 call!332932))

(declare-fun b!4751798 () Bool)

(assert (=> b!4751798 (= e!2964147 (contains!16512 (keys!19162 lt!1915797) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518848 () Bool)

(assert (=> d!1518848 e!2964149))

(declare-fun res!2015067 () Bool)

(assert (=> d!1518848 (=> res!2015067 e!2964149)))

(assert (=> d!1518848 (= res!2015067 e!2964146)))

(declare-fun res!2015068 () Bool)

(assert (=> d!1518848 (=> (not res!2015068) (not e!2964146))))

(declare-fun lt!1916246 () Bool)

(assert (=> d!1518848 (= res!2015068 (not lt!1916246))))

(declare-fun lt!1916252 () Bool)

(assert (=> d!1518848 (= lt!1916246 lt!1916252)))

(declare-fun lt!1916248 () Unit!135894)

(assert (=> d!1518848 (= lt!1916248 e!2964148)))

(declare-fun c!811326 () Bool)

(assert (=> d!1518848 (= c!811326 lt!1916252)))

(assert (=> d!1518848 (= lt!1916252 (containsKey!3558 (toList!6116 lt!1915797) (_1!30722 (h!59483 l!14304))))))

(assert (=> d!1518848 (= (contains!16509 lt!1915797 (_1!30722 (h!59483 l!14304))) lt!1916246)))

(declare-fun b!4751799 () Bool)

(assert (=> b!4751799 false))

(declare-fun lt!1916253 () Unit!135894)

(declare-fun lt!1916251 () Unit!135894)

(assert (=> b!4751799 (= lt!1916253 lt!1916251)))

(assert (=> b!4751799 (containsKey!3558 (toList!6116 lt!1915797) (_1!30722 (h!59483 l!14304)))))

(assert (=> b!4751799 (= lt!1916251 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915797) (_1!30722 (h!59483 l!14304))))))

(declare-fun Unit!136163 () Unit!135894)

(assert (=> b!4751799 (= e!2964151 Unit!136163)))

(declare-fun bm!332927 () Bool)

(assert (=> bm!332927 (= call!332932 (contains!16512 e!2964150 (_1!30722 (h!59483 l!14304))))))

(declare-fun c!811328 () Bool)

(assert (=> bm!332927 (= c!811328 c!811326)))

(assert (= (and d!1518848 c!811326) b!4751797))

(assert (= (and d!1518848 (not c!811326)) b!4751792))

(assert (= (and b!4751792 c!811327) b!4751799))

(assert (= (and b!4751792 (not c!811327)) b!4751795))

(assert (= (or b!4751797 b!4751792) bm!332927))

(assert (= (and bm!332927 c!811328) b!4751791))

(assert (= (and bm!332927 (not c!811328)) b!4751794))

(assert (= (and d!1518848 res!2015068) b!4751793))

(assert (= (and d!1518848 (not res!2015067)) b!4751796))

(assert (= (and b!4751796 res!2015066) b!4751798))

(declare-fun m!5715059 () Bool)

(assert (=> b!4751791 m!5715059))

(declare-fun m!5715061 () Bool)

(assert (=> b!4751793 m!5715061))

(assert (=> b!4751793 m!5715061))

(declare-fun m!5715063 () Bool)

(assert (=> b!4751793 m!5715063))

(assert (=> b!4751798 m!5715061))

(assert (=> b!4751798 m!5715061))

(assert (=> b!4751798 m!5715063))

(declare-fun m!5715065 () Bool)

(assert (=> bm!332927 m!5715065))

(declare-fun m!5715067 () Bool)

(assert (=> b!4751796 m!5715067))

(assert (=> b!4751796 m!5715067))

(declare-fun m!5715069 () Bool)

(assert (=> b!4751796 m!5715069))

(declare-fun m!5715071 () Bool)

(assert (=> d!1518848 m!5715071))

(assert (=> b!4751799 m!5715071))

(declare-fun m!5715073 () Bool)

(assert (=> b!4751799 m!5715073))

(assert (=> b!4751794 m!5715061))

(declare-fun m!5715075 () Bool)

(assert (=> b!4751797 m!5715075))

(assert (=> b!4751797 m!5715067))

(assert (=> b!4751797 m!5715067))

(assert (=> b!4751797 m!5715069))

(declare-fun m!5715077 () Bool)

(assert (=> b!4751797 m!5715077))

(assert (=> b!4751304 d!1518848))

(declare-fun d!1518850 () Bool)

(declare-fun res!2015069 () Bool)

(declare-fun e!2964152 () Bool)

(assert (=> d!1518850 (=> res!2015069 e!2964152)))

(assert (=> d!1518850 (= res!2015069 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518850 (= (forall!11762 (t!360542 l!14304) lambda!222086) e!2964152)))

(declare-fun b!4751800 () Bool)

(declare-fun e!2964153 () Bool)

(assert (=> b!4751800 (= e!2964152 e!2964153)))

(declare-fun res!2015070 () Bool)

(assert (=> b!4751800 (=> (not res!2015070) (not e!2964153))))

(assert (=> b!4751800 (= res!2015070 (dynLambda!21900 lambda!222086 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751801 () Bool)

(assert (=> b!4751801 (= e!2964153 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222086))))

(assert (= (and d!1518850 (not res!2015069)) b!4751800))

(assert (= (and b!4751800 res!2015070) b!4751801))

(declare-fun b_lambda!183265 () Bool)

(assert (=> (not b_lambda!183265) (not b!4751800)))

(declare-fun m!5715079 () Bool)

(assert (=> b!4751800 m!5715079))

(declare-fun m!5715081 () Bool)

(assert (=> b!4751801 m!5715081))

(assert (=> b!4751304 d!1518850))

(declare-fun d!1518852 () Bool)

(declare-fun res!2015071 () Bool)

(declare-fun e!2964154 () Bool)

(assert (=> d!1518852 (=> res!2015071 e!2964154)))

(assert (=> d!1518852 (= res!2015071 ((_ is Nil!53086) (toList!6116 lt!1915494)))))

(assert (=> d!1518852 (= (forall!11762 (toList!6116 lt!1915494) lambda!222085) e!2964154)))

(declare-fun b!4751802 () Bool)

(declare-fun e!2964155 () Bool)

(assert (=> b!4751802 (= e!2964154 e!2964155)))

(declare-fun res!2015072 () Bool)

(assert (=> b!4751802 (=> (not res!2015072) (not e!2964155))))

(assert (=> b!4751802 (= res!2015072 (dynLambda!21900 lambda!222085 (h!59483 (toList!6116 lt!1915494))))))

(declare-fun b!4751803 () Bool)

(assert (=> b!4751803 (= e!2964155 (forall!11762 (t!360542 (toList!6116 lt!1915494)) lambda!222085))))

(assert (= (and d!1518852 (not res!2015071)) b!4751802))

(assert (= (and b!4751802 res!2015072) b!4751803))

(declare-fun b_lambda!183267 () Bool)

(assert (=> (not b_lambda!183267) (not b!4751802)))

(declare-fun m!5715083 () Bool)

(assert (=> b!4751802 m!5715083))

(declare-fun m!5715085 () Bool)

(assert (=> b!4751803 m!5715085))

(assert (=> b!4751304 d!1518852))

(declare-fun d!1518854 () Bool)

(declare-fun res!2015073 () Bool)

(declare-fun e!2964156 () Bool)

(assert (=> d!1518854 (=> res!2015073 e!2964156)))

(assert (=> d!1518854 (= res!2015073 ((_ is Nil!53086) (toList!6116 lt!1915494)))))

(assert (=> d!1518854 (= (forall!11762 (toList!6116 lt!1915494) lambda!222086) e!2964156)))

(declare-fun b!4751804 () Bool)

(declare-fun e!2964157 () Bool)

(assert (=> b!4751804 (= e!2964156 e!2964157)))

(declare-fun res!2015074 () Bool)

(assert (=> b!4751804 (=> (not res!2015074) (not e!2964157))))

(assert (=> b!4751804 (= res!2015074 (dynLambda!21900 lambda!222086 (h!59483 (toList!6116 lt!1915494))))))

(declare-fun b!4751805 () Bool)

(assert (=> b!4751805 (= e!2964157 (forall!11762 (t!360542 (toList!6116 lt!1915494)) lambda!222086))))

(assert (= (and d!1518854 (not res!2015073)) b!4751804))

(assert (= (and b!4751804 res!2015074) b!4751805))

(declare-fun b_lambda!183269 () Bool)

(assert (=> (not b_lambda!183269) (not b!4751804)))

(declare-fun m!5715087 () Bool)

(assert (=> b!4751804 m!5715087))

(declare-fun m!5715089 () Bool)

(assert (=> b!4751805 m!5715089))

(assert (=> b!4751304 d!1518854))

(declare-fun d!1518856 () Bool)

(declare-fun res!2015075 () Bool)

(declare-fun e!2964158 () Bool)

(assert (=> d!1518856 (=> res!2015075 e!2964158)))

(assert (=> d!1518856 (= res!2015075 ((_ is Nil!53086) (toList!6116 lt!1915797)))))

(assert (=> d!1518856 (= (forall!11762 (toList!6116 lt!1915797) lambda!222086) e!2964158)))

(declare-fun b!4751806 () Bool)

(declare-fun e!2964159 () Bool)

(assert (=> b!4751806 (= e!2964158 e!2964159)))

(declare-fun res!2015076 () Bool)

(assert (=> b!4751806 (=> (not res!2015076) (not e!2964159))))

(assert (=> b!4751806 (= res!2015076 (dynLambda!21900 lambda!222086 (h!59483 (toList!6116 lt!1915797))))))

(declare-fun b!4751807 () Bool)

(assert (=> b!4751807 (= e!2964159 (forall!11762 (t!360542 (toList!6116 lt!1915797)) lambda!222086))))

(assert (= (and d!1518856 (not res!2015075)) b!4751806))

(assert (= (and b!4751806 res!2015076) b!4751807))

(declare-fun b_lambda!183271 () Bool)

(assert (=> (not b_lambda!183271) (not b!4751806)))

(declare-fun m!5715091 () Bool)

(assert (=> b!4751806 m!5715091))

(declare-fun m!5715093 () Bool)

(assert (=> b!4751807 m!5715093))

(assert (=> b!4751304 d!1518856))

(assert (=> b!4751304 d!1518582))

(declare-fun d!1518858 () Bool)

(declare-fun res!2015077 () Bool)

(declare-fun e!2964160 () Bool)

(assert (=> d!1518858 (=> res!2015077 e!2964160)))

(assert (=> d!1518858 (= res!2015077 ((_ is Nil!53086) l!14304))))

(assert (=> d!1518858 (= (forall!11762 l!14304 lambda!222086) e!2964160)))

(declare-fun b!4751808 () Bool)

(declare-fun e!2964161 () Bool)

(assert (=> b!4751808 (= e!2964160 e!2964161)))

(declare-fun res!2015078 () Bool)

(assert (=> b!4751808 (=> (not res!2015078) (not e!2964161))))

(assert (=> b!4751808 (= res!2015078 (dynLambda!21900 lambda!222086 (h!59483 l!14304)))))

(declare-fun b!4751809 () Bool)

(assert (=> b!4751809 (= e!2964161 (forall!11762 (t!360542 l!14304) lambda!222086))))

(assert (= (and d!1518858 (not res!2015077)) b!4751808))

(assert (= (and b!4751808 res!2015078) b!4751809))

(declare-fun b_lambda!183273 () Bool)

(assert (=> (not b_lambda!183273) (not b!4751808)))

(declare-fun m!5715095 () Bool)

(assert (=> b!4751808 m!5715095))

(assert (=> b!4751809 m!5713895))

(assert (=> b!4751304 d!1518858))

(declare-fun b!4751810 () Bool)

(declare-fun e!2964166 () List!53211)

(assert (=> b!4751810 (= e!2964166 (getKeysList!1003 (toList!6116 lt!1915796)))))

(declare-fun b!4751811 () Bool)

(declare-fun e!2964164 () Unit!135894)

(declare-fun e!2964167 () Unit!135894)

(assert (=> b!4751811 (= e!2964164 e!2964167)))

(declare-fun c!811330 () Bool)

(declare-fun call!332933 () Bool)

(assert (=> b!4751811 (= c!811330 call!332933)))

(declare-fun b!4751812 () Bool)

(declare-fun e!2964162 () Bool)

(assert (=> b!4751812 (= e!2964162 (not (contains!16512 (keys!19162 lt!1915796) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751813 () Bool)

(assert (=> b!4751813 (= e!2964166 (keys!19162 lt!1915796))))

(declare-fun b!4751814 () Bool)

(declare-fun Unit!136165 () Unit!135894)

(assert (=> b!4751814 (= e!2964167 Unit!136165)))

(declare-fun b!4751815 () Bool)

(declare-fun e!2964165 () Bool)

(declare-fun e!2964163 () Bool)

(assert (=> b!4751815 (= e!2964165 e!2964163)))

(declare-fun res!2015079 () Bool)

(assert (=> b!4751815 (=> (not res!2015079) (not e!2964163))))

(assert (=> b!4751815 (= res!2015079 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915796) (_1!30722 (h!59483 l!14304)))))))

(declare-fun b!4751816 () Bool)

(declare-fun lt!1916256 () Unit!135894)

(assert (=> b!4751816 (= e!2964164 lt!1916256)))

(declare-fun lt!1916259 () Unit!135894)

(assert (=> b!4751816 (= lt!1916259 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915796) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751816 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915796) (_1!30722 (h!59483 l!14304))))))

(declare-fun lt!1916258 () Unit!135894)

(assert (=> b!4751816 (= lt!1916258 lt!1916259)))

(assert (=> b!4751816 (= lt!1916256 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915796) (_1!30722 (h!59483 l!14304))))))

(assert (=> b!4751816 call!332933))

(declare-fun b!4751817 () Bool)

(assert (=> b!4751817 (= e!2964163 (contains!16512 (keys!19162 lt!1915796) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518860 () Bool)

(assert (=> d!1518860 e!2964165))

(declare-fun res!2015080 () Bool)

(assert (=> d!1518860 (=> res!2015080 e!2964165)))

(assert (=> d!1518860 (= res!2015080 e!2964162)))

(declare-fun res!2015081 () Bool)

(assert (=> d!1518860 (=> (not res!2015081) (not e!2964162))))

(declare-fun lt!1916255 () Bool)

(assert (=> d!1518860 (= res!2015081 (not lt!1916255))))

(declare-fun lt!1916261 () Bool)

(assert (=> d!1518860 (= lt!1916255 lt!1916261)))

(declare-fun lt!1916257 () Unit!135894)

(assert (=> d!1518860 (= lt!1916257 e!2964164)))

(declare-fun c!811329 () Bool)

(assert (=> d!1518860 (= c!811329 lt!1916261)))

(assert (=> d!1518860 (= lt!1916261 (containsKey!3558 (toList!6116 lt!1915796) (_1!30722 (h!59483 l!14304))))))

(assert (=> d!1518860 (= (contains!16509 lt!1915796 (_1!30722 (h!59483 l!14304))) lt!1916255)))

(declare-fun b!4751818 () Bool)

(assert (=> b!4751818 false))

(declare-fun lt!1916262 () Unit!135894)

(declare-fun lt!1916260 () Unit!135894)

(assert (=> b!4751818 (= lt!1916262 lt!1916260)))

(assert (=> b!4751818 (containsKey!3558 (toList!6116 lt!1915796) (_1!30722 (h!59483 l!14304)))))

(assert (=> b!4751818 (= lt!1916260 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915796) (_1!30722 (h!59483 l!14304))))))

(declare-fun Unit!136167 () Unit!135894)

(assert (=> b!4751818 (= e!2964167 Unit!136167)))

(declare-fun bm!332928 () Bool)

(assert (=> bm!332928 (= call!332933 (contains!16512 e!2964166 (_1!30722 (h!59483 l!14304))))))

(declare-fun c!811331 () Bool)

(assert (=> bm!332928 (= c!811331 c!811329)))

(assert (= (and d!1518860 c!811329) b!4751816))

(assert (= (and d!1518860 (not c!811329)) b!4751811))

(assert (= (and b!4751811 c!811330) b!4751818))

(assert (= (and b!4751811 (not c!811330)) b!4751814))

(assert (= (or b!4751816 b!4751811) bm!332928))

(assert (= (and bm!332928 c!811331) b!4751810))

(assert (= (and bm!332928 (not c!811331)) b!4751813))

(assert (= (and d!1518860 res!2015081) b!4751812))

(assert (= (and d!1518860 (not res!2015080)) b!4751815))

(assert (= (and b!4751815 res!2015079) b!4751817))

(declare-fun m!5715097 () Bool)

(assert (=> b!4751810 m!5715097))

(declare-fun m!5715099 () Bool)

(assert (=> b!4751812 m!5715099))

(assert (=> b!4751812 m!5715099))

(declare-fun m!5715101 () Bool)

(assert (=> b!4751812 m!5715101))

(assert (=> b!4751817 m!5715099))

(assert (=> b!4751817 m!5715099))

(assert (=> b!4751817 m!5715101))

(declare-fun m!5715103 () Bool)

(assert (=> bm!332928 m!5715103))

(declare-fun m!5715105 () Bool)

(assert (=> b!4751815 m!5715105))

(assert (=> b!4751815 m!5715105))

(declare-fun m!5715107 () Bool)

(assert (=> b!4751815 m!5715107))

(declare-fun m!5715109 () Bool)

(assert (=> d!1518860 m!5715109))

(assert (=> b!4751818 m!5715109))

(declare-fun m!5715111 () Bool)

(assert (=> b!4751818 m!5715111))

(assert (=> b!4751813 m!5715099))

(declare-fun m!5715113 () Bool)

(assert (=> b!4751816 m!5715113))

(assert (=> b!4751816 m!5715105))

(assert (=> b!4751816 m!5715105))

(assert (=> b!4751816 m!5715107))

(declare-fun m!5715115 () Bool)

(assert (=> b!4751816 m!5715115))

(assert (=> b!4751304 d!1518860))

(declare-fun d!1518862 () Bool)

(assert (=> d!1518862 (dynLambda!21900 lambda!222086 (h!59483 l!14304))))

(declare-fun lt!1916263 () Unit!135894)

(assert (=> d!1518862 (= lt!1916263 (choose!33825 (toList!6116 lt!1915797) lambda!222086 (h!59483 l!14304)))))

(declare-fun e!2964168 () Bool)

(assert (=> d!1518862 e!2964168))

(declare-fun res!2015082 () Bool)

(assert (=> d!1518862 (=> (not res!2015082) (not e!2964168))))

(assert (=> d!1518862 (= res!2015082 (forall!11762 (toList!6116 lt!1915797) lambda!222086))))

(assert (=> d!1518862 (= (forallContained!3788 (toList!6116 lt!1915797) lambda!222086 (h!59483 l!14304)) lt!1916263)))

(declare-fun b!4751819 () Bool)

(assert (=> b!4751819 (= e!2964168 (contains!16510 (toList!6116 lt!1915797) (h!59483 l!14304)))))

(assert (= (and d!1518862 res!2015082) b!4751819))

(declare-fun b_lambda!183275 () Bool)

(assert (=> (not b_lambda!183275) (not d!1518862)))

(assert (=> d!1518862 m!5715095))

(declare-fun m!5715117 () Bool)

(assert (=> d!1518862 m!5715117))

(assert (=> d!1518862 m!5713897))

(declare-fun m!5715119 () Bool)

(assert (=> b!4751819 m!5715119))

(assert (=> b!4751304 d!1518862))

(declare-fun bs!1142264 () Bool)

(declare-fun d!1518864 () Bool)

(assert (= bs!1142264 (and d!1518864 d!1518558)))

(declare-fun lambda!222142 () Int)

(assert (=> bs!1142264 (= (= lt!1915796 lt!1915675) (= lambda!222142 lambda!222069))))

(declare-fun bs!1142265 () Bool)

(assert (= bs!1142265 (and d!1518864 b!4751534)))

(assert (=> bs!1142265 (= (= lt!1915796 lt!1916057) (= lambda!222142 lambda!222119))))

(declare-fun bs!1142267 () Bool)

(assert (= bs!1142267 (and d!1518864 d!1518594)))

(assert (=> bs!1142267 (= (= lt!1915796 lt!1915800) (= lambda!222142 lambda!222088))))

(declare-fun bs!1142269 () Bool)

(assert (= bs!1142269 (and d!1518864 d!1518790)))

(assert (=> bs!1142269 (= (= lt!1915796 lt!1916163) (= lambda!222142 lambda!222131))))

(declare-fun bs!1142270 () Bool)

(assert (= bs!1142270 (and d!1518864 d!1518746)))

(assert (=> bs!1142270 (= (= lt!1915796 lt!1915754) (= lambda!222142 lambda!222123))))

(declare-fun bs!1142272 () Bool)

(assert (= bs!1142272 (and d!1518864 b!4751294)))

(assert (=> bs!1142272 (= (= lt!1915796 lt!1915754) (= lambda!222142 lambda!222079))))

(declare-fun bs!1142273 () Bool)

(assert (= bs!1142273 (and d!1518864 b!4751305)))

(assert (=> bs!1142273 (= (= lt!1915796 lt!1915494) (= lambda!222142 lambda!222084))))

(assert (=> bs!1142272 (= (= lt!1915796 lt!1915497) (= lambda!222142 lambda!222078))))

(declare-fun bs!1142274 () Bool)

(assert (= bs!1142274 (and d!1518864 b!4751304)))

(assert (=> bs!1142274 (= lambda!222142 lambda!222086)))

(declare-fun bs!1142275 () Bool)

(assert (= bs!1142275 (and d!1518864 d!1518806)))

(assert (=> bs!1142275 (= (= lt!1915796 lt!1915829) (= lambda!222142 lambda!222133))))

(declare-fun bs!1142277 () Bool)

(assert (= bs!1142277 (and d!1518864 d!1518796)))

(assert (=> bs!1142277 (= (= lt!1915796 lt!1915882) (= lambda!222142 lambda!222132))))

(declare-fun bs!1142278 () Bool)

(assert (= bs!1142278 (and d!1518864 b!4751295)))

(assert (=> bs!1142278 (= (= lt!1915796 lt!1915497) (= lambda!222142 lambda!222077))))

(declare-fun bs!1142279 () Bool)

(assert (= bs!1142279 (and d!1518864 b!4751349)))

(assert (=> bs!1142279 (= (= lt!1915796 (+!2382 lt!1915497 t!14174)) (= lambda!222142 lambda!222106))))

(declare-fun bs!1142280 () Bool)

(assert (= bs!1142280 (and d!1518864 b!4751625)))

(assert (=> bs!1142280 (= (= lt!1915796 lt!1916104) (= lambda!222142 lambda!222126))))

(declare-fun bs!1142281 () Bool)

(assert (= bs!1142281 (and d!1518864 d!1518762)))

(assert (=> bs!1142281 (= (= lt!1915796 lt!1916108) (= lambda!222142 lambda!222127))))

(assert (=> bs!1142274 (= (= lt!1915796 lt!1915494) (= lambda!222142 lambda!222085))))

(declare-fun bs!1142283 () Bool)

(assert (= bs!1142283 (and d!1518864 b!4751337)))

(assert (=> bs!1142283 (= (= lt!1915796 lt!1915882) (= lambda!222142 lambda!222099))))

(declare-fun bs!1142284 () Bool)

(assert (= bs!1142284 (and d!1518864 d!1518624)))

(assert (=> bs!1142284 (= (= lt!1915796 lt!1915907) (= lambda!222142 lambda!222104))))

(declare-fun bs!1142285 () Bool)

(assert (= bs!1142285 (and d!1518864 d!1518676)))

(assert (=> bs!1142285 (= (= lt!1915796 lt!1915903) (= lambda!222142 lambda!222116))))

(declare-fun bs!1142286 () Bool)

(assert (= bs!1142286 (and d!1518864 b!4751723)))

(assert (=> bs!1142286 (= (= lt!1915796 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222142 lambda!222134))))

(declare-fun bs!1142287 () Bool)

(assert (= bs!1142287 (and d!1518864 b!4751315)))

(assert (=> bs!1142287 (= (= lt!1915796 lt!1915497) (= lambda!222142 lambda!222091))))

(declare-fun bs!1142288 () Bool)

(assert (= bs!1142288 (and d!1518864 d!1518686)))

(assert (=> bs!1142288 (= (= lt!1915796 lt!1916061) (= lambda!222142 lambda!222120))))

(declare-fun bs!1142289 () Bool)

(assert (= bs!1142289 (and d!1518864 b!4751338)))

(assert (=> bs!1142289 (= (= lt!1915796 acc!1214) (= lambda!222142 lambda!222097))))

(declare-fun bs!1142290 () Bool)

(assert (= bs!1142290 (and d!1518864 b!4751350)))

(assert (=> bs!1142290 (= (= lt!1915796 (+!2382 lt!1915497 t!14174)) (= lambda!222142 lambda!222105))))

(declare-fun bs!1142291 () Bool)

(assert (= bs!1142291 (and d!1518864 d!1518706)))

(assert (=> bs!1142291 (= (= lt!1915796 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222142 lambda!222122))))

(declare-fun bs!1142292 () Bool)

(assert (= bs!1142292 (and d!1518864 b!4751722)))

(assert (=> bs!1142292 (= (= lt!1915796 lt!1916203) (= lambda!222142 lambda!222136))))

(declare-fun bs!1142293 () Bool)

(assert (= bs!1142293 (and d!1518864 b!4751681)))

(assert (=> bs!1142293 (= (= lt!1915796 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222142 lambda!222128))))

(assert (=> bs!1142292 (= (= lt!1915796 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222142 lambda!222135))))

(declare-fun bs!1142294 () Bool)

(assert (= bs!1142294 (and d!1518864 b!4751267)))

(assert (=> bs!1142294 (= (= lt!1915796 lt!1915671) (= lambda!222142 lambda!222067))))

(declare-fun bs!1142295 () Bool)

(assert (= bs!1142295 (and d!1518864 b!4751268)))

(assert (=> bs!1142295 (= (= lt!1915796 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222142 lambda!222065))))

(declare-fun bs!1142296 () Bool)

(assert (= bs!1142296 (and d!1518864 b!4751535)))

(assert (=> bs!1142296 (= (= lt!1915796 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222142 lambda!222117))))

(declare-fun bs!1142297 () Bool)

(assert (= bs!1142297 (and d!1518864 b!4751680)))

(assert (=> bs!1142297 (= (= lt!1915796 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222142 lambda!222129))))

(declare-fun bs!1142298 () Bool)

(assert (= bs!1142298 (and d!1518864 b!4751626)))

(assert (=> bs!1142298 (= (= lt!1915796 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222142 lambda!222124))))

(declare-fun bs!1142299 () Bool)

(assert (= bs!1142299 (and d!1518864 b!4751344)))

(assert (=> bs!1142299 (= (= lt!1915796 lt!1915903) (= lambda!222142 lambda!222103))))

(assert (=> bs!1142265 (= (= lt!1915796 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222142 lambda!222118))))

(assert (=> bs!1142279 (= (= lt!1915796 lt!1915924) (= lambda!222142 lambda!222107))))

(assert (=> bs!1142280 (= (= lt!1915796 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222142 lambda!222125))))

(assert (=> bs!1142287 (= (= lt!1915796 lt!1915829) (= lambda!222142 lambda!222092))))

(declare-fun bs!1142300 () Bool)

(assert (= bs!1142300 (and d!1518864 d!1518832)))

(assert (=> bs!1142300 (= (= lt!1915796 acc!1214) (= lambda!222142 lambda!222138))))

(declare-fun bs!1142301 () Bool)

(assert (= bs!1142301 (and d!1518864 d!1518694)))

(assert (=> bs!1142301 (= (= lt!1915796 (+!2382 lt!1915497 t!14174)) (= lambda!222142 lambda!222121))))

(declare-fun bs!1142302 () Bool)

(assert (= bs!1142302 (and d!1518864 b!4751345)))

(assert (=> bs!1142302 (= (= lt!1915796 acc!1214) (= lambda!222142 lambda!222101))))

(declare-fun bs!1142303 () Bool)

(assert (= bs!1142303 (and d!1518864 d!1518628)))

(assert (=> bs!1142303 (= (= lt!1915796 lt!1915928) (= lambda!222142 lambda!222108))))

(declare-fun bs!1142304 () Bool)

(assert (= bs!1142304 (and d!1518864 d!1518590)))

(assert (=> bs!1142304 (= (= lt!1915796 lt!1915758) (= lambda!222142 lambda!222081))))

(assert (=> bs!1142297 (= (= lt!1915796 lt!1916159) (= lambda!222142 lambda!222130))))

(declare-fun bs!1142305 () Bool)

(assert (= bs!1142305 (and d!1518864 b!4751316)))

(assert (=> bs!1142305 (= (= lt!1915796 lt!1915497) (= lambda!222142 lambda!222089))))

(assert (=> bs!1142294 (= (= lt!1915796 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222142 lambda!222066))))

(assert (=> bs!1142283 (= (= lt!1915796 acc!1214) (= lambda!222142 lambda!222098))))

(declare-fun bs!1142306 () Bool)

(assert (= bs!1142306 (and d!1518864 d!1518668)))

(assert (=> bs!1142306 (= (= lt!1915796 lt!1915494) (= lambda!222142 lambda!222111))))

(declare-fun bs!1142307 () Bool)

(assert (= bs!1142307 (and d!1518864 d!1518618)))

(assert (=> bs!1142307 (= (= lt!1915796 lt!1915886) (= lambda!222142 lambda!222100))))

(declare-fun bs!1142308 () Bool)

(assert (= bs!1142308 (and d!1518864 d!1518604)))

(assert (=> bs!1142308 (= (= lt!1915796 lt!1915833) (= lambda!222142 lambda!222094))))

(assert (=> bs!1142299 (= (= lt!1915796 acc!1214) (= lambda!222142 lambda!222102))))

(declare-fun bs!1142309 () Bool)

(assert (= bs!1142309 (and d!1518864 d!1518822)))

(assert (=> bs!1142309 (= (= lt!1915796 lt!1916207) (= lambda!222142 lambda!222137))))

(assert (=> d!1518864 true))

(assert (=> d!1518864 (forall!11762 (toList!6116 lt!1915494) lambda!222142)))

(declare-fun lt!1916264 () Unit!135894)

(assert (=> d!1518864 (= lt!1916264 (choose!33826 lt!1915494 lt!1915796 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))))

(assert (=> d!1518864 (forall!11762 (toList!6116 (+!2382 lt!1915494 (tuple2!54857 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))))) lambda!222142)))

(assert (=> d!1518864 (= (addForallContainsKeyThenBeforeAdding!876 lt!1915494 lt!1915796 (_1!30722 (h!59483 l!14304)) (_2!30722 (h!59483 l!14304))) lt!1916264)))

(declare-fun bs!1142310 () Bool)

(assert (= bs!1142310 d!1518864))

(declare-fun m!5715125 () Bool)

(assert (=> bs!1142310 m!5715125))

(declare-fun m!5715127 () Bool)

(assert (=> bs!1142310 m!5715127))

(declare-fun m!5715129 () Bool)

(assert (=> bs!1142310 m!5715129))

(declare-fun m!5715131 () Bool)

(assert (=> bs!1142310 m!5715131))

(assert (=> b!4751304 d!1518864))

(assert (=> b!4751304 d!1518558))

(declare-fun d!1518868 () Bool)

(declare-fun res!2015087 () Bool)

(declare-fun e!2964173 () Bool)

(assert (=> d!1518868 (=> res!2015087 e!2964173)))

(assert (=> d!1518868 (= res!2015087 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518868 (= (forall!11762 (t!360542 l!14304) lambda!222108) e!2964173)))

(declare-fun b!4751824 () Bool)

(declare-fun e!2964174 () Bool)

(assert (=> b!4751824 (= e!2964173 e!2964174)))

(declare-fun res!2015088 () Bool)

(assert (=> b!4751824 (=> (not res!2015088) (not e!2964174))))

(assert (=> b!4751824 (= res!2015088 (dynLambda!21900 lambda!222108 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751825 () Bool)

(assert (=> b!4751825 (= e!2964174 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222108))))

(assert (= (and d!1518868 (not res!2015087)) b!4751824))

(assert (= (and b!4751824 res!2015088) b!4751825))

(declare-fun b_lambda!183277 () Bool)

(assert (=> (not b_lambda!183277) (not b!4751824)))

(declare-fun m!5715133 () Bool)

(assert (=> b!4751824 m!5715133))

(declare-fun m!5715135 () Bool)

(assert (=> b!4751825 m!5715135))

(assert (=> d!1518628 d!1518868))

(assert (=> d!1518628 d!1518726))

(declare-fun d!1518870 () Bool)

(assert (=> d!1518870 (= (invariantList!1594 (toList!6116 acc!1214)) (noDuplicatedKeys!402 (toList!6116 acc!1214)))))

(declare-fun bs!1142311 () Bool)

(assert (= bs!1142311 d!1518870))

(declare-fun m!5715137 () Bool)

(assert (=> bs!1142311 m!5715137))

(assert (=> d!1518554 d!1518870))

(declare-fun d!1518872 () Bool)

(declare-fun res!2015091 () Bool)

(declare-fun e!2964177 () Bool)

(assert (=> d!1518872 (=> res!2015091 e!2964177)))

(assert (=> d!1518872 (= res!2015091 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518872 (= (forall!11762 (t!360542 l!14304) lambda!222069) e!2964177)))

(declare-fun b!4751828 () Bool)

(declare-fun e!2964178 () Bool)

(assert (=> b!4751828 (= e!2964177 e!2964178)))

(declare-fun res!2015092 () Bool)

(assert (=> b!4751828 (=> (not res!2015092) (not e!2964178))))

(assert (=> b!4751828 (= res!2015092 (dynLambda!21900 lambda!222069 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751829 () Bool)

(assert (=> b!4751829 (= e!2964178 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222069))))

(assert (= (and d!1518872 (not res!2015091)) b!4751828))

(assert (= (and b!4751828 res!2015092) b!4751829))

(declare-fun b_lambda!183281 () Bool)

(assert (=> (not b_lambda!183281) (not b!4751828)))

(declare-fun m!5715139 () Bool)

(assert (=> b!4751828 m!5715139))

(declare-fun m!5715141 () Bool)

(assert (=> b!4751829 m!5715141))

(assert (=> d!1518558 d!1518872))

(assert (=> d!1518558 d!1518726))

(declare-fun d!1518874 () Bool)

(declare-fun res!2015093 () Bool)

(declare-fun e!2964179 () Bool)

(assert (=> d!1518874 (=> res!2015093 e!2964179)))

(assert (=> d!1518874 (= res!2015093 ((_ is Nil!53086) (ite c!811210 (toList!6116 acc!1214) (toList!6116 lt!1915904))))))

(assert (=> d!1518874 (= (forall!11762 (ite c!811210 (toList!6116 acc!1214) (toList!6116 lt!1915904)) (ite c!811210 lambda!222101 lambda!222103)) e!2964179)))

(declare-fun b!4751830 () Bool)

(declare-fun e!2964180 () Bool)

(assert (=> b!4751830 (= e!2964179 e!2964180)))

(declare-fun res!2015094 () Bool)

(assert (=> b!4751830 (=> (not res!2015094) (not e!2964180))))

(assert (=> b!4751830 (= res!2015094 (dynLambda!21900 (ite c!811210 lambda!222101 lambda!222103) (h!59483 (ite c!811210 (toList!6116 acc!1214) (toList!6116 lt!1915904)))))))

(declare-fun b!4751831 () Bool)

(assert (=> b!4751831 (= e!2964180 (forall!11762 (t!360542 (ite c!811210 (toList!6116 acc!1214) (toList!6116 lt!1915904))) (ite c!811210 lambda!222101 lambda!222103)))))

(assert (= (and d!1518874 (not res!2015093)) b!4751830))

(assert (= (and b!4751830 res!2015094) b!4751831))

(declare-fun b_lambda!183283 () Bool)

(assert (=> (not b_lambda!183283) (not b!4751830)))

(declare-fun m!5715147 () Bool)

(assert (=> b!4751830 m!5715147))

(declare-fun m!5715149 () Bool)

(assert (=> b!4751831 m!5715149))

(assert (=> bm!332871 d!1518874))

(declare-fun d!1518878 () Bool)

(declare-fun res!2015097 () Bool)

(declare-fun e!2964183 () Bool)

(assert (=> d!1518878 (=> res!2015097 e!2964183)))

(assert (=> d!1518878 (= res!2015097 ((_ is Nil!53086) (toList!6116 lt!1915494)))))

(assert (=> d!1518878 (= (forall!11762 (toList!6116 lt!1915494) (ite c!811206 lambda!222084 lambda!222086)) e!2964183)))

(declare-fun b!4751834 () Bool)

(declare-fun e!2964184 () Bool)

(assert (=> b!4751834 (= e!2964183 e!2964184)))

(declare-fun res!2015098 () Bool)

(assert (=> b!4751834 (=> (not res!2015098) (not e!2964184))))

(assert (=> b!4751834 (= res!2015098 (dynLambda!21900 (ite c!811206 lambda!222084 lambda!222086) (h!59483 (toList!6116 lt!1915494))))))

(declare-fun b!4751835 () Bool)

(assert (=> b!4751835 (= e!2964184 (forall!11762 (t!360542 (toList!6116 lt!1915494)) (ite c!811206 lambda!222084 lambda!222086)))))

(assert (= (and d!1518878 (not res!2015097)) b!4751834))

(assert (= (and b!4751834 res!2015098) b!4751835))

(declare-fun b_lambda!183285 () Bool)

(assert (=> (not b_lambda!183285) (not b!4751834)))

(declare-fun m!5715151 () Bool)

(assert (=> b!4751834 m!5715151))

(declare-fun m!5715153 () Bool)

(assert (=> b!4751835 m!5715153))

(assert (=> bm!332860 d!1518878))

(declare-fun b!4751836 () Bool)

(declare-fun e!2964189 () List!53211)

(assert (=> b!4751836 (= e!2964189 (getKeysList!1003 (toList!6116 lt!1915813)))))

(declare-fun b!4751837 () Bool)

(declare-fun e!2964187 () Unit!135894)

(declare-fun e!2964190 () Unit!135894)

(assert (=> b!4751837 (= e!2964187 e!2964190)))

(declare-fun c!811333 () Bool)

(declare-fun call!332934 () Bool)

(assert (=> b!4751837 (= c!811333 call!332934)))

(declare-fun b!4751838 () Bool)

(declare-fun e!2964185 () Bool)

(assert (=> b!4751838 (= e!2964185 (not (contains!16512 (keys!19162 lt!1915813) (_1!30722 t!14174))))))

(declare-fun b!4751839 () Bool)

(assert (=> b!4751839 (= e!2964189 (keys!19162 lt!1915813))))

(declare-fun b!4751840 () Bool)

(declare-fun Unit!136168 () Unit!135894)

(assert (=> b!4751840 (= e!2964190 Unit!136168)))

(declare-fun b!4751841 () Bool)

(declare-fun e!2964188 () Bool)

(declare-fun e!2964186 () Bool)

(assert (=> b!4751841 (= e!2964188 e!2964186)))

(declare-fun res!2015099 () Bool)

(assert (=> b!4751841 (=> (not res!2015099) (not e!2964186))))

(assert (=> b!4751841 (= res!2015099 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915813) (_1!30722 t!14174))))))

(declare-fun b!4751842 () Bool)

(declare-fun lt!1916266 () Unit!135894)

(assert (=> b!4751842 (= e!2964187 lt!1916266)))

(declare-fun lt!1916269 () Unit!135894)

(assert (=> b!4751842 (= lt!1916269 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915813) (_1!30722 t!14174)))))

(assert (=> b!4751842 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915813) (_1!30722 t!14174)))))

(declare-fun lt!1916268 () Unit!135894)

(assert (=> b!4751842 (= lt!1916268 lt!1916269)))

(assert (=> b!4751842 (= lt!1916266 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915813) (_1!30722 t!14174)))))

(assert (=> b!4751842 call!332934))

(declare-fun b!4751843 () Bool)

(assert (=> b!4751843 (= e!2964186 (contains!16512 (keys!19162 lt!1915813) (_1!30722 t!14174)))))

(declare-fun d!1518880 () Bool)

(assert (=> d!1518880 e!2964188))

(declare-fun res!2015100 () Bool)

(assert (=> d!1518880 (=> res!2015100 e!2964188)))

(assert (=> d!1518880 (= res!2015100 e!2964185)))

(declare-fun res!2015101 () Bool)

(assert (=> d!1518880 (=> (not res!2015101) (not e!2964185))))

(declare-fun lt!1916265 () Bool)

(assert (=> d!1518880 (= res!2015101 (not lt!1916265))))

(declare-fun lt!1916271 () Bool)

(assert (=> d!1518880 (= lt!1916265 lt!1916271)))

(declare-fun lt!1916267 () Unit!135894)

(assert (=> d!1518880 (= lt!1916267 e!2964187)))

(declare-fun c!811332 () Bool)

(assert (=> d!1518880 (= c!811332 lt!1916271)))

(assert (=> d!1518880 (= lt!1916271 (containsKey!3558 (toList!6116 lt!1915813) (_1!30722 t!14174)))))

(assert (=> d!1518880 (= (contains!16509 lt!1915813 (_1!30722 t!14174)) lt!1916265)))

(declare-fun b!4751844 () Bool)

(assert (=> b!4751844 false))

(declare-fun lt!1916272 () Unit!135894)

(declare-fun lt!1916270 () Unit!135894)

(assert (=> b!4751844 (= lt!1916272 lt!1916270)))

(assert (=> b!4751844 (containsKey!3558 (toList!6116 lt!1915813) (_1!30722 t!14174))))

(assert (=> b!4751844 (= lt!1916270 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915813) (_1!30722 t!14174)))))

(declare-fun Unit!136169 () Unit!135894)

(assert (=> b!4751844 (= e!2964190 Unit!136169)))

(declare-fun bm!332929 () Bool)

(assert (=> bm!332929 (= call!332934 (contains!16512 e!2964189 (_1!30722 t!14174)))))

(declare-fun c!811334 () Bool)

(assert (=> bm!332929 (= c!811334 c!811332)))

(assert (= (and d!1518880 c!811332) b!4751842))

(assert (= (and d!1518880 (not c!811332)) b!4751837))

(assert (= (and b!4751837 c!811333) b!4751844))

(assert (= (and b!4751837 (not c!811333)) b!4751840))

(assert (= (or b!4751842 b!4751837) bm!332929))

(assert (= (and bm!332929 c!811334) b!4751836))

(assert (= (and bm!332929 (not c!811334)) b!4751839))

(assert (= (and d!1518880 res!2015101) b!4751838))

(assert (= (and d!1518880 (not res!2015100)) b!4751841))

(assert (= (and b!4751841 res!2015099) b!4751843))

(declare-fun m!5715159 () Bool)

(assert (=> b!4751836 m!5715159))

(declare-fun m!5715161 () Bool)

(assert (=> b!4751838 m!5715161))

(assert (=> b!4751838 m!5715161))

(declare-fun m!5715163 () Bool)

(assert (=> b!4751838 m!5715163))

(assert (=> b!4751843 m!5715161))

(assert (=> b!4751843 m!5715161))

(assert (=> b!4751843 m!5715163))

(declare-fun m!5715165 () Bool)

(assert (=> bm!332929 m!5715165))

(assert (=> b!4751841 m!5713931))

(assert (=> b!4751841 m!5713931))

(declare-fun m!5715167 () Bool)

(assert (=> b!4751841 m!5715167))

(declare-fun m!5715169 () Bool)

(assert (=> d!1518880 m!5715169))

(assert (=> b!4751844 m!5715169))

(declare-fun m!5715171 () Bool)

(assert (=> b!4751844 m!5715171))

(assert (=> b!4751839 m!5715161))

(declare-fun m!5715173 () Bool)

(assert (=> b!4751842 m!5715173))

(assert (=> b!4751842 m!5713931))

(assert (=> b!4751842 m!5713931))

(assert (=> b!4751842 m!5715167))

(declare-fun m!5715175 () Bool)

(assert (=> b!4751842 m!5715175))

(assert (=> d!1518600 d!1518880))

(declare-fun b!4751847 () Bool)

(declare-fun e!2964192 () Option!12530)

(assert (=> b!4751847 (= e!2964192 (getValueByKey!2080 (t!360542 lt!1915814) (_1!30722 t!14174)))))

(declare-fun d!1518884 () Bool)

(declare-fun c!811335 () Bool)

(assert (=> d!1518884 (= c!811335 (and ((_ is Cons!53086) lt!1915814) (= (_1!30722 (h!59483 lt!1915814)) (_1!30722 t!14174))))))

(declare-fun e!2964191 () Option!12530)

(assert (=> d!1518884 (= (getValueByKey!2080 lt!1915814 (_1!30722 t!14174)) e!2964191)))

(declare-fun b!4751846 () Bool)

(assert (=> b!4751846 (= e!2964191 e!2964192)))

(declare-fun c!811336 () Bool)

(assert (=> b!4751846 (= c!811336 (and ((_ is Cons!53086) lt!1915814) (not (= (_1!30722 (h!59483 lt!1915814)) (_1!30722 t!14174)))))))

(declare-fun b!4751845 () Bool)

(assert (=> b!4751845 (= e!2964191 (Some!12529 (_2!30722 (h!59483 lt!1915814))))))

(declare-fun b!4751848 () Bool)

(assert (=> b!4751848 (= e!2964192 None!12529)))

(assert (= (and d!1518884 c!811335) b!4751845))

(assert (= (and d!1518884 (not c!811335)) b!4751846))

(assert (= (and b!4751846 c!811336) b!4751847))

(assert (= (and b!4751846 (not c!811336)) b!4751848))

(declare-fun m!5715177 () Bool)

(assert (=> b!4751847 m!5715177))

(assert (=> d!1518600 d!1518884))

(declare-fun d!1518886 () Bool)

(assert (=> d!1518886 (= (getValueByKey!2080 lt!1915814 (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174)))))

(declare-fun lt!1916273 () Unit!135894)

(assert (=> d!1518886 (= lt!1916273 (choose!33823 lt!1915814 (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun e!2964193 () Bool)

(assert (=> d!1518886 e!2964193))

(declare-fun res!2015102 () Bool)

(assert (=> d!1518886 (=> (not res!2015102) (not e!2964193))))

(assert (=> d!1518886 (= res!2015102 (invariantList!1594 lt!1915814))))

(assert (=> d!1518886 (= (lemmaContainsTupThenGetReturnValue!1157 lt!1915814 (_1!30722 t!14174) (_2!30722 t!14174)) lt!1916273)))

(declare-fun b!4751849 () Bool)

(declare-fun res!2015103 () Bool)

(assert (=> b!4751849 (=> (not res!2015103) (not e!2964193))))

(assert (=> b!4751849 (= res!2015103 (containsKey!3558 lt!1915814 (_1!30722 t!14174)))))

(declare-fun b!4751850 () Bool)

(assert (=> b!4751850 (= e!2964193 (contains!16510 lt!1915814 (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))

(assert (= (and d!1518886 res!2015102) b!4751849))

(assert (= (and b!4751849 res!2015103) b!4751850))

(assert (=> d!1518886 m!5713925))

(declare-fun m!5715181 () Bool)

(assert (=> d!1518886 m!5715181))

(declare-fun m!5715183 () Bool)

(assert (=> d!1518886 m!5715183))

(declare-fun m!5715185 () Bool)

(assert (=> b!4751849 m!5715185))

(declare-fun m!5715187 () Bool)

(assert (=> b!4751850 m!5715187))

(assert (=> d!1518600 d!1518886))

(declare-fun b!4751853 () Bool)

(declare-fun res!2015109 () Bool)

(declare-fun e!2964200 () Bool)

(assert (=> b!4751853 (=> (not res!2015109) (not e!2964200))))

(declare-fun lt!1916276 () List!53210)

(assert (=> b!4751853 (= res!2015109 (containsKey!3558 lt!1916276 (_1!30722 t!14174)))))

(declare-fun b!4751854 () Bool)

(declare-fun e!2964201 () List!53210)

(assert (=> b!4751854 (= e!2964201 Nil!53086)))

(declare-fun d!1518890 () Bool)

(assert (=> d!1518890 e!2964200))

(declare-fun res!2015108 () Bool)

(assert (=> d!1518890 (=> (not res!2015108) (not e!2964200))))

(assert (=> d!1518890 (= res!2015108 (invariantList!1594 lt!1916276))))

(declare-fun e!2964196 () List!53210)

(assert (=> d!1518890 (= lt!1916276 e!2964196)))

(declare-fun c!811338 () Bool)

(assert (=> d!1518890 (= c!811338 (and ((_ is Cons!53086) (toList!6116 lt!1915495)) (= (_1!30722 (h!59483 (toList!6116 lt!1915495))) (_1!30722 t!14174))))))

(assert (=> d!1518890 (invariantList!1594 (toList!6116 lt!1915495))))

(assert (=> d!1518890 (= (insertNoDuplicatedKeys!665 (toList!6116 lt!1915495) (_1!30722 t!14174) (_2!30722 t!14174)) lt!1916276)))

(declare-fun b!4751855 () Bool)

(assert (=> b!4751855 false))

(declare-fun lt!1916280 () Unit!135894)

(declare-fun lt!1916275 () Unit!135894)

(assert (=> b!4751855 (= lt!1916280 lt!1916275)))

(assert (=> b!4751855 (containsKey!3558 (t!360542 (toList!6116 lt!1915495)) (_1!30722 (h!59483 (toList!6116 lt!1915495))))))

(assert (=> b!4751855 (= lt!1916275 (lemmaInGetKeysListThenContainsKey!1002 (t!360542 (toList!6116 lt!1915495)) (_1!30722 (h!59483 (toList!6116 lt!1915495)))))))

(declare-fun lt!1916282 () Unit!135894)

(declare-fun lt!1916274 () Unit!135894)

(assert (=> b!4751855 (= lt!1916282 lt!1916274)))

(declare-fun call!332935 () List!53211)

(assert (=> b!4751855 (contains!16512 call!332935 (_1!30722 (h!59483 (toList!6116 lt!1915495))))))

(declare-fun lt!1916281 () List!53210)

(assert (=> b!4751855 (= lt!1916274 (lemmaInListThenGetKeysListContains!998 lt!1916281 (_1!30722 (h!59483 (toList!6116 lt!1915495)))))))

(assert (=> b!4751855 (= lt!1916281 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915495)) (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun e!2964197 () Unit!135894)

(declare-fun Unit!136170 () Unit!135894)

(assert (=> b!4751855 (= e!2964197 Unit!136170)))

(declare-fun b!4751856 () Bool)

(declare-fun e!2964198 () List!53210)

(declare-fun lt!1916279 () List!53210)

(assert (=> b!4751856 (= e!2964198 lt!1916279)))

(declare-fun call!332936 () List!53210)

(assert (=> b!4751856 (= lt!1916279 call!332936)))

(declare-fun c!811337 () Bool)

(assert (=> b!4751856 (= c!811337 (containsKey!3558 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915495)) (_1!30722 t!14174) (_2!30722 t!14174)) (_1!30722 (h!59483 (toList!6116 lt!1915495)))))))

(declare-fun lt!1916283 () Unit!135894)

(assert (=> b!4751856 (= lt!1916283 e!2964197)))

(declare-fun b!4751857 () Bool)

(declare-fun e!2964199 () List!53210)

(declare-fun call!332937 () List!53210)

(assert (=> b!4751857 (= e!2964199 call!332937)))

(declare-fun b!4751858 () Bool)

(assert (=> b!4751858 (= e!2964198 call!332936)))

(declare-fun b!4751859 () Bool)

(declare-fun c!811340 () Bool)

(assert (=> b!4751859 (= c!811340 ((_ is Cons!53086) (toList!6116 lt!1915495)))))

(assert (=> b!4751859 (= e!2964199 e!2964198)))

(declare-fun bm!332930 () Bool)

(assert (=> bm!332930 (= call!332936 call!332937)))

(declare-fun c!811341 () Bool)

(assert (=> bm!332930 (= c!811341 c!811340)))

(declare-fun b!4751860 () Bool)

(declare-fun Unit!136172 () Unit!135894)

(assert (=> b!4751860 (= e!2964197 Unit!136172)))

(declare-fun b!4751861 () Bool)

(assert (=> b!4751861 (= e!2964200 (= (content!9530 (getKeysList!1003 lt!1916276)) ((_ map or) (content!9530 (getKeysList!1003 (toList!6116 lt!1915495))) (store ((as const (Array K!14520 Bool)) false) (_1!30722 t!14174) true))))))

(declare-fun bm!332931 () Bool)

(declare-fun call!332938 () List!53210)

(assert (=> bm!332931 (= call!332937 call!332938)))

(declare-fun b!4751862 () Bool)

(declare-fun e!2964202 () Bool)

(assert (=> b!4751862 (= e!2964202 (not (containsKey!3558 (toList!6116 lt!1915495) (_1!30722 t!14174))))))

(declare-fun b!4751863 () Bool)

(assert (=> b!4751863 (= e!2964196 e!2964199)))

(declare-fun res!2015107 () Bool)

(assert (=> b!4751863 (= res!2015107 ((_ is Cons!53086) (toList!6116 lt!1915495)))))

(assert (=> b!4751863 (=> (not res!2015107) (not e!2964202))))

(declare-fun c!811339 () Bool)

(assert (=> b!4751863 (= c!811339 e!2964202)))

(declare-fun bm!332932 () Bool)

(assert (=> bm!332932 (= call!332935 (getKeysList!1003 (ite c!811338 (toList!6116 lt!1915495) lt!1916281)))))

(declare-fun b!4751864 () Bool)

(declare-fun res!2015106 () Bool)

(assert (=> b!4751864 (=> (not res!2015106) (not e!2964200))))

(assert (=> b!4751864 (= res!2015106 (contains!16510 lt!1916276 (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))

(declare-fun b!4751865 () Bool)

(assert (=> b!4751865 (= e!2964201 (insertNoDuplicatedKeys!665 (t!360542 (toList!6116 lt!1915495)) (_1!30722 t!14174) (_2!30722 t!14174)))))

(declare-fun bm!332933 () Bool)

(assert (=> bm!332933 (= call!332938 ($colon$colon!1097 (ite c!811338 (t!360542 (toList!6116 lt!1915495)) (ite c!811339 (toList!6116 lt!1915495) e!2964201)) (ite (or c!811338 c!811339) (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174)) (ite c!811340 (h!59483 (toList!6116 lt!1915495)) (tuple2!54857 (_1!30722 t!14174) (_2!30722 t!14174))))))))

(declare-fun b!4751866 () Bool)

(assert (=> b!4751866 (= e!2964196 call!332938)))

(declare-fun lt!1916277 () List!53211)

(assert (=> b!4751866 (= lt!1916277 call!332935)))

(declare-fun lt!1916278 () Unit!135894)

(assert (=> b!4751866 (= lt!1916278 (lemmaSubseqRefl!160 lt!1916277))))

(assert (=> b!4751866 (subseq!676 lt!1916277 lt!1916277)))

(declare-fun lt!1916284 () Unit!135894)

(assert (=> b!4751866 (= lt!1916284 lt!1916278)))

(assert (= (and d!1518890 c!811338) b!4751866))

(assert (= (and d!1518890 (not c!811338)) b!4751863))

(assert (= (and b!4751863 res!2015107) b!4751862))

(assert (= (and b!4751863 c!811339) b!4751857))

(assert (= (and b!4751863 (not c!811339)) b!4751859))

(assert (= (and b!4751859 c!811340) b!4751856))

(assert (= (and b!4751859 (not c!811340)) b!4751858))

(assert (= (and b!4751856 c!811337) b!4751855))

(assert (= (and b!4751856 (not c!811337)) b!4751860))

(assert (= (or b!4751856 b!4751858) bm!332930))

(assert (= (and bm!332930 c!811341) b!4751865))

(assert (= (and bm!332930 (not c!811341)) b!4751854))

(assert (= (or b!4751857 bm!332930) bm!332931))

(assert (= (or b!4751866 b!4751855) bm!332932))

(assert (= (or b!4751866 bm!332931) bm!332933))

(assert (= (and d!1518890 res!2015108) b!4751853))

(assert (= (and b!4751853 res!2015109) b!4751864))

(assert (= (and b!4751864 res!2015106) b!4751861))

(declare-fun m!5715193 () Bool)

(assert (=> d!1518890 m!5715193))

(declare-fun m!5715195 () Bool)

(assert (=> d!1518890 m!5715195))

(declare-fun m!5715197 () Bool)

(assert (=> b!4751855 m!5715197))

(declare-fun m!5715199 () Bool)

(assert (=> b!4751855 m!5715199))

(declare-fun m!5715201 () Bool)

(assert (=> b!4751855 m!5715201))

(declare-fun m!5715203 () Bool)

(assert (=> b!4751855 m!5715203))

(declare-fun m!5715205 () Bool)

(assert (=> b!4751855 m!5715205))

(declare-fun m!5715207 () Bool)

(assert (=> bm!332933 m!5715207))

(assert (=> b!4751865 m!5715205))

(declare-fun m!5715209 () Bool)

(assert (=> b!4751853 m!5715209))

(declare-fun m!5715211 () Bool)

(assert (=> b!4751866 m!5715211))

(declare-fun m!5715213 () Bool)

(assert (=> b!4751866 m!5715213))

(declare-fun m!5715215 () Bool)

(assert (=> b!4751861 m!5715215))

(declare-fun m!5715219 () Bool)

(assert (=> b!4751861 m!5715219))

(declare-fun m!5715221 () Bool)

(assert (=> b!4751861 m!5715221))

(assert (=> b!4751861 m!5714309))

(assert (=> b!4751861 m!5715219))

(assert (=> b!4751861 m!5715215))

(declare-fun m!5715225 () Bool)

(assert (=> b!4751861 m!5715225))

(declare-fun m!5715227 () Bool)

(assert (=> b!4751862 m!5715227))

(assert (=> b!4751856 m!5715205))

(assert (=> b!4751856 m!5715205))

(declare-fun m!5715229 () Bool)

(assert (=> b!4751856 m!5715229))

(declare-fun m!5715231 () Bool)

(assert (=> b!4751864 m!5715231))

(declare-fun m!5715233 () Bool)

(assert (=> bm!332932 m!5715233))

(assert (=> d!1518600 d!1518890))

(declare-fun d!1518896 () Bool)

(declare-fun res!2015112 () Bool)

(declare-fun e!2964205 () Bool)

(assert (=> d!1518896 (=> res!2015112 e!2964205)))

(assert (=> d!1518896 (= res!2015112 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))))))

(assert (=> d!1518896 (= (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (ite c!811201 lambda!222065 lambda!222067)) e!2964205)))

(declare-fun b!4751869 () Bool)

(declare-fun e!2964206 () Bool)

(assert (=> b!4751869 (= e!2964205 e!2964206)))

(declare-fun res!2015113 () Bool)

(assert (=> b!4751869 (=> (not res!2015113) (not e!2964206))))

(assert (=> b!4751869 (= res!2015113 (dynLambda!21900 (ite c!811201 lambda!222065 lambda!222067) (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))))))))

(declare-fun b!4751870 () Bool)

(assert (=> b!4751870 (= e!2964206 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))) (ite c!811201 lambda!222065 lambda!222067)))))

(assert (= (and d!1518896 (not res!2015112)) b!4751869))

(assert (= (and b!4751869 res!2015113) b!4751870))

(declare-fun b_lambda!183293 () Bool)

(assert (=> (not b_lambda!183293) (not b!4751869)))

(declare-fun m!5715235 () Bool)

(assert (=> b!4751869 m!5715235))

(declare-fun m!5715237 () Bool)

(assert (=> b!4751870 m!5715237))

(assert (=> bm!332845 d!1518896))

(declare-fun b!4751873 () Bool)

(declare-fun e!2964208 () Option!12530)

(assert (=> b!4751873 (= e!2964208 (getValueByKey!2080 (t!360542 (toList!6116 lt!1915863)) (_1!30722 (h!59483 l!14304))))))

(declare-fun d!1518898 () Bool)

(declare-fun c!811342 () Bool)

(assert (=> d!1518898 (= c!811342 (and ((_ is Cons!53086) (toList!6116 lt!1915863)) (= (_1!30722 (h!59483 (toList!6116 lt!1915863))) (_1!30722 (h!59483 l!14304)))))))

(declare-fun e!2964207 () Option!12530)

(assert (=> d!1518898 (= (getValueByKey!2080 (toList!6116 lt!1915863) (_1!30722 (h!59483 l!14304))) e!2964207)))

(declare-fun b!4751872 () Bool)

(assert (=> b!4751872 (= e!2964207 e!2964208)))

(declare-fun c!811343 () Bool)

(assert (=> b!4751872 (= c!811343 (and ((_ is Cons!53086) (toList!6116 lt!1915863)) (not (= (_1!30722 (h!59483 (toList!6116 lt!1915863))) (_1!30722 (h!59483 l!14304))))))))

(declare-fun b!4751871 () Bool)

(assert (=> b!4751871 (= e!2964207 (Some!12529 (_2!30722 (h!59483 (toList!6116 lt!1915863)))))))

(declare-fun b!4751874 () Bool)

(assert (=> b!4751874 (= e!2964208 None!12529)))

(assert (= (and d!1518898 c!811342) b!4751871))

(assert (= (and d!1518898 (not c!811342)) b!4751872))

(assert (= (and b!4751872 c!811343) b!4751873))

(assert (= (and b!4751872 (not c!811343)) b!4751874))

(declare-fun m!5715239 () Bool)

(assert (=> b!4751873 m!5715239))

(assert (=> b!4751327 d!1518898))

(declare-fun d!1518900 () Bool)

(declare-fun lt!1916286 () Bool)

(assert (=> d!1518900 (= lt!1916286 (select (content!9529 (toList!6116 lt!1915813)) t!14174))))

(declare-fun e!2964210 () Bool)

(assert (=> d!1518900 (= lt!1916286 e!2964210)))

(declare-fun res!2015115 () Bool)

(assert (=> d!1518900 (=> (not res!2015115) (not e!2964210))))

(assert (=> d!1518900 (= res!2015115 ((_ is Cons!53086) (toList!6116 lt!1915813)))))

(assert (=> d!1518900 (= (contains!16510 (toList!6116 lt!1915813) t!14174) lt!1916286)))

(declare-fun b!4751875 () Bool)

(declare-fun e!2964209 () Bool)

(assert (=> b!4751875 (= e!2964210 e!2964209)))

(declare-fun res!2015114 () Bool)

(assert (=> b!4751875 (=> res!2015114 e!2964209)))

(assert (=> b!4751875 (= res!2015114 (= (h!59483 (toList!6116 lt!1915813)) t!14174))))

(declare-fun b!4751876 () Bool)

(assert (=> b!4751876 (= e!2964209 (contains!16510 (t!360542 (toList!6116 lt!1915813)) t!14174))))

(assert (= (and d!1518900 res!2015115) b!4751875))

(assert (= (and b!4751875 (not res!2015114)) b!4751876))

(declare-fun m!5715241 () Bool)

(assert (=> d!1518900 m!5715241))

(declare-fun m!5715243 () Bool)

(assert (=> d!1518900 m!5715243))

(declare-fun m!5715245 () Bool)

(assert (=> b!4751876 m!5715245))

(assert (=> b!4751312 d!1518900))

(declare-fun d!1518902 () Bool)

(declare-fun res!2015116 () Bool)

(declare-fun e!2964211 () Bool)

(assert (=> d!1518902 (=> res!2015116 e!2964211)))

(assert (=> d!1518902 (= res!2015116 ((_ is Nil!53086) (ite c!811204 (toList!6116 lt!1915497) (toList!6116 lt!1915755))))))

(assert (=> d!1518902 (= (forall!11762 (ite c!811204 (toList!6116 lt!1915497) (toList!6116 lt!1915755)) (ite c!811204 lambda!222077 lambda!222079)) e!2964211)))

(declare-fun b!4751877 () Bool)

(declare-fun e!2964212 () Bool)

(assert (=> b!4751877 (= e!2964211 e!2964212)))

(declare-fun res!2015117 () Bool)

(assert (=> b!4751877 (=> (not res!2015117) (not e!2964212))))

(assert (=> b!4751877 (= res!2015117 (dynLambda!21900 (ite c!811204 lambda!222077 lambda!222079) (h!59483 (ite c!811204 (toList!6116 lt!1915497) (toList!6116 lt!1915755)))))))

(declare-fun b!4751878 () Bool)

(assert (=> b!4751878 (= e!2964212 (forall!11762 (t!360542 (ite c!811204 (toList!6116 lt!1915497) (toList!6116 lt!1915755))) (ite c!811204 lambda!222077 lambda!222079)))))

(assert (= (and d!1518902 (not res!2015116)) b!4751877))

(assert (= (and b!4751877 res!2015117) b!4751878))

(declare-fun b_lambda!183295 () Bool)

(assert (=> (not b_lambda!183295) (not b!4751877)))

(declare-fun m!5715247 () Bool)

(assert (=> b!4751877 m!5715247))

(declare-fun m!5715249 () Bool)

(assert (=> b!4751878 m!5715249))

(assert (=> bm!332853 d!1518902))

(declare-fun d!1518904 () Bool)

(declare-fun res!2015118 () Bool)

(declare-fun e!2964213 () Bool)

(assert (=> d!1518904 (=> res!2015118 e!2964213)))

(assert (=> d!1518904 (= res!2015118 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915497 t!14174))))))

(assert (=> d!1518904 (= (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) (ite c!811211 lambda!222105 lambda!222107)) e!2964213)))

(declare-fun b!4751879 () Bool)

(declare-fun e!2964214 () Bool)

(assert (=> b!4751879 (= e!2964213 e!2964214)))

(declare-fun res!2015119 () Bool)

(assert (=> b!4751879 (=> (not res!2015119) (not e!2964214))))

(assert (=> b!4751879 (= res!2015119 (dynLambda!21900 (ite c!811211 lambda!222105 lambda!222107) (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174)))))))

(declare-fun b!4751880 () Bool)

(assert (=> b!4751880 (= e!2964214 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915497 t!14174))) (ite c!811211 lambda!222105 lambda!222107)))))

(assert (= (and d!1518904 (not res!2015118)) b!4751879))

(assert (= (and b!4751879 res!2015119) b!4751880))

(declare-fun b_lambda!183297 () Bool)

(assert (=> (not b_lambda!183297) (not b!4751879)))

(declare-fun m!5715255 () Bool)

(assert (=> b!4751879 m!5715255))

(declare-fun m!5715257 () Bool)

(assert (=> b!4751880 m!5715257))

(assert (=> bm!332875 d!1518904))

(declare-fun d!1518908 () Bool)

(assert (=> d!1518908 (= (invariantList!1594 (toList!6116 lt!1915758)) (noDuplicatedKeys!402 (toList!6116 lt!1915758)))))

(declare-fun bs!1142336 () Bool)

(assert (= bs!1142336 d!1518908))

(declare-fun m!5715259 () Bool)

(assert (=> bs!1142336 m!5715259))

(assert (=> b!4751296 d!1518908))

(declare-fun b!4751885 () Bool)

(declare-fun e!2964218 () Option!12530)

(assert (=> b!4751885 (= e!2964218 (getValueByKey!2080 (t!360542 (toList!6116 lt!1915937)) (_1!30722 t!14174)))))

(declare-fun d!1518910 () Bool)

(declare-fun c!811344 () Bool)

(assert (=> d!1518910 (= c!811344 (and ((_ is Cons!53086) (toList!6116 lt!1915937)) (= (_1!30722 (h!59483 (toList!6116 lt!1915937))) (_1!30722 t!14174))))))

(declare-fun e!2964217 () Option!12530)

(assert (=> d!1518910 (= (getValueByKey!2080 (toList!6116 lt!1915937) (_1!30722 t!14174)) e!2964217)))

(declare-fun b!4751884 () Bool)

(assert (=> b!4751884 (= e!2964217 e!2964218)))

(declare-fun c!811345 () Bool)

(assert (=> b!4751884 (= c!811345 (and ((_ is Cons!53086) (toList!6116 lt!1915937)) (not (= (_1!30722 (h!59483 (toList!6116 lt!1915937))) (_1!30722 t!14174)))))))

(declare-fun b!4751883 () Bool)

(assert (=> b!4751883 (= e!2964217 (Some!12529 (_2!30722 (h!59483 (toList!6116 lt!1915937)))))))

(declare-fun b!4751886 () Bool)

(assert (=> b!4751886 (= e!2964218 None!12529)))

(assert (= (and d!1518910 c!811344) b!4751883))

(assert (= (and d!1518910 (not c!811344)) b!4751884))

(assert (= (and b!4751884 c!811345) b!4751885))

(assert (= (and b!4751884 (not c!811345)) b!4751886))

(declare-fun m!5715261 () Bool)

(assert (=> b!4751885 m!5715261))

(assert (=> b!4751354 d!1518910))

(declare-fun d!1518912 () Bool)

(declare-fun res!2015122 () Bool)

(declare-fun e!2964219 () Bool)

(assert (=> d!1518912 (=> res!2015122 e!2964219)))

(assert (=> d!1518912 (= res!2015122 ((_ is Nil!53086) (toList!6116 lt!1915497)))))

(assert (=> d!1518912 (= (forall!11762 (toList!6116 lt!1915497) lambda!222094) e!2964219)))

(declare-fun b!4751887 () Bool)

(declare-fun e!2964220 () Bool)

(assert (=> b!4751887 (= e!2964219 e!2964220)))

(declare-fun res!2015123 () Bool)

(assert (=> b!4751887 (=> (not res!2015123) (not e!2964220))))

(assert (=> b!4751887 (= res!2015123 (dynLambda!21900 lambda!222094 (h!59483 (toList!6116 lt!1915497))))))

(declare-fun b!4751888 () Bool)

(assert (=> b!4751888 (= e!2964220 (forall!11762 (t!360542 (toList!6116 lt!1915497)) lambda!222094))))

(assert (= (and d!1518912 (not res!2015122)) b!4751887))

(assert (= (and b!4751887 res!2015123) b!4751888))

(declare-fun b_lambda!183301 () Bool)

(assert (=> (not b_lambda!183301) (not b!4751887)))

(declare-fun m!5715263 () Bool)

(assert (=> b!4751887 m!5715263))

(declare-fun m!5715265 () Bool)

(assert (=> b!4751888 m!5715265))

(assert (=> b!4751319 d!1518912))

(declare-fun d!1518914 () Bool)

(declare-fun res!2015130 () Bool)

(declare-fun e!2964227 () Bool)

(assert (=> d!1518914 (=> res!2015130 e!2964227)))

(assert (=> d!1518914 (= res!2015130 (and ((_ is Cons!53086) (t!360542 lt!1915493)) (= (_1!30722 (h!59483 (t!360542 lt!1915493))) (_1!30722 (h!59483 lt!1915493)))))))

(assert (=> d!1518914 (= (containsKey!3557 (t!360542 lt!1915493) (_1!30722 (h!59483 lt!1915493))) e!2964227)))

(declare-fun b!4751895 () Bool)

(declare-fun e!2964228 () Bool)

(assert (=> b!4751895 (= e!2964227 e!2964228)))

(declare-fun res!2015131 () Bool)

(assert (=> b!4751895 (=> (not res!2015131) (not e!2964228))))

(assert (=> b!4751895 (= res!2015131 ((_ is Cons!53086) (t!360542 lt!1915493)))))

(declare-fun b!4751896 () Bool)

(assert (=> b!4751896 (= e!2964228 (containsKey!3557 (t!360542 (t!360542 lt!1915493)) (_1!30722 (h!59483 lt!1915493))))))

(assert (= (and d!1518914 (not res!2015130)) b!4751895))

(assert (= (and b!4751895 res!2015131) b!4751896))

(declare-fun m!5715275 () Bool)

(assert (=> b!4751896 m!5715275))

(assert (=> b!4751342 d!1518914))

(declare-fun bs!1142337 () Bool)

(declare-fun d!1518920 () Bool)

(assert (= bs!1142337 (and d!1518920 d!1518558)))

(declare-fun lambda!222144 () Int)

(assert (=> bs!1142337 (= (= lt!1915497 lt!1915675) (= lambda!222144 lambda!222069))))

(declare-fun bs!1142338 () Bool)

(assert (= bs!1142338 (and d!1518920 b!4751534)))

(assert (=> bs!1142338 (= (= lt!1915497 lt!1916057) (= lambda!222144 lambda!222119))))

(declare-fun bs!1142339 () Bool)

(assert (= bs!1142339 (and d!1518920 d!1518594)))

(assert (=> bs!1142339 (= (= lt!1915497 lt!1915800) (= lambda!222144 lambda!222088))))

(declare-fun bs!1142340 () Bool)

(assert (= bs!1142340 (and d!1518920 d!1518790)))

(assert (=> bs!1142340 (= (= lt!1915497 lt!1916163) (= lambda!222144 lambda!222131))))

(declare-fun bs!1142341 () Bool)

(assert (= bs!1142341 (and d!1518920 d!1518746)))

(assert (=> bs!1142341 (= (= lt!1915497 lt!1915754) (= lambda!222144 lambda!222123))))

(declare-fun bs!1142342 () Bool)

(assert (= bs!1142342 (and d!1518920 b!4751294)))

(assert (=> bs!1142342 (= (= lt!1915497 lt!1915754) (= lambda!222144 lambda!222079))))

(declare-fun bs!1142343 () Bool)

(assert (= bs!1142343 (and d!1518920 b!4751305)))

(assert (=> bs!1142343 (= (= lt!1915497 lt!1915494) (= lambda!222144 lambda!222084))))

(assert (=> bs!1142342 (= lambda!222144 lambda!222078)))

(declare-fun bs!1142344 () Bool)

(assert (= bs!1142344 (and d!1518920 b!4751304)))

(assert (=> bs!1142344 (= (= lt!1915497 lt!1915796) (= lambda!222144 lambda!222086))))

(declare-fun bs!1142345 () Bool)

(assert (= bs!1142345 (and d!1518920 d!1518806)))

(assert (=> bs!1142345 (= (= lt!1915497 lt!1915829) (= lambda!222144 lambda!222133))))

(declare-fun bs!1142346 () Bool)

(assert (= bs!1142346 (and d!1518920 d!1518796)))

(assert (=> bs!1142346 (= (= lt!1915497 lt!1915882) (= lambda!222144 lambda!222132))))

(declare-fun bs!1142347 () Bool)

(assert (= bs!1142347 (and d!1518920 b!4751295)))

(assert (=> bs!1142347 (= lambda!222144 lambda!222077)))

(declare-fun bs!1142348 () Bool)

(assert (= bs!1142348 (and d!1518920 b!4751349)))

(assert (=> bs!1142348 (= (= lt!1915497 (+!2382 lt!1915497 t!14174)) (= lambda!222144 lambda!222106))))

(declare-fun bs!1142349 () Bool)

(assert (= bs!1142349 (and d!1518920 b!4751625)))

(assert (=> bs!1142349 (= (= lt!1915497 lt!1916104) (= lambda!222144 lambda!222126))))

(declare-fun bs!1142350 () Bool)

(assert (= bs!1142350 (and d!1518920 d!1518762)))

(assert (=> bs!1142350 (= (= lt!1915497 lt!1916108) (= lambda!222144 lambda!222127))))

(assert (=> bs!1142344 (= (= lt!1915497 lt!1915494) (= lambda!222144 lambda!222085))))

(declare-fun bs!1142351 () Bool)

(assert (= bs!1142351 (and d!1518920 d!1518864)))

(assert (=> bs!1142351 (= (= lt!1915497 lt!1915796) (= lambda!222144 lambda!222142))))

(declare-fun bs!1142352 () Bool)

(assert (= bs!1142352 (and d!1518920 b!4751337)))

(assert (=> bs!1142352 (= (= lt!1915497 lt!1915882) (= lambda!222144 lambda!222099))))

(declare-fun bs!1142353 () Bool)

(assert (= bs!1142353 (and d!1518920 d!1518624)))

(assert (=> bs!1142353 (= (= lt!1915497 lt!1915907) (= lambda!222144 lambda!222104))))

(declare-fun bs!1142354 () Bool)

(assert (= bs!1142354 (and d!1518920 d!1518676)))

(assert (=> bs!1142354 (= (= lt!1915497 lt!1915903) (= lambda!222144 lambda!222116))))

(declare-fun bs!1142355 () Bool)

(assert (= bs!1142355 (and d!1518920 b!4751723)))

(assert (=> bs!1142355 (= (= lt!1915497 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222144 lambda!222134))))

(declare-fun bs!1142356 () Bool)

(assert (= bs!1142356 (and d!1518920 b!4751315)))

(assert (=> bs!1142356 (= lambda!222144 lambda!222091)))

(declare-fun bs!1142357 () Bool)

(assert (= bs!1142357 (and d!1518920 d!1518686)))

(assert (=> bs!1142357 (= (= lt!1915497 lt!1916061) (= lambda!222144 lambda!222120))))

(declare-fun bs!1142358 () Bool)

(assert (= bs!1142358 (and d!1518920 b!4751338)))

(assert (=> bs!1142358 (= (= lt!1915497 acc!1214) (= lambda!222144 lambda!222097))))

(declare-fun bs!1142359 () Bool)

(assert (= bs!1142359 (and d!1518920 b!4751350)))

(assert (=> bs!1142359 (= (= lt!1915497 (+!2382 lt!1915497 t!14174)) (= lambda!222144 lambda!222105))))

(declare-fun bs!1142360 () Bool)

(assert (= bs!1142360 (and d!1518920 d!1518706)))

(assert (=> bs!1142360 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222144 lambda!222122))))

(declare-fun bs!1142361 () Bool)

(assert (= bs!1142361 (and d!1518920 b!4751722)))

(assert (=> bs!1142361 (= (= lt!1915497 lt!1916203) (= lambda!222144 lambda!222136))))

(declare-fun bs!1142362 () Bool)

(assert (= bs!1142362 (and d!1518920 b!4751681)))

(assert (=> bs!1142362 (= (= lt!1915497 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222144 lambda!222128))))

(assert (=> bs!1142361 (= (= lt!1915497 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222144 lambda!222135))))

(declare-fun bs!1142363 () Bool)

(assert (= bs!1142363 (and d!1518920 b!4751267)))

(assert (=> bs!1142363 (= (= lt!1915497 lt!1915671) (= lambda!222144 lambda!222067))))

(declare-fun bs!1142364 () Bool)

(assert (= bs!1142364 (and d!1518920 b!4751268)))

(assert (=> bs!1142364 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222144 lambda!222065))))

(declare-fun bs!1142365 () Bool)

(assert (= bs!1142365 (and d!1518920 b!4751535)))

(assert (=> bs!1142365 (= (= lt!1915497 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222144 lambda!222117))))

(declare-fun bs!1142366 () Bool)

(assert (= bs!1142366 (and d!1518920 b!4751680)))

(assert (=> bs!1142366 (= (= lt!1915497 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222144 lambda!222129))))

(declare-fun bs!1142367 () Bool)

(assert (= bs!1142367 (and d!1518920 b!4751626)))

(assert (=> bs!1142367 (= (= lt!1915497 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222144 lambda!222124))))

(declare-fun bs!1142368 () Bool)

(assert (= bs!1142368 (and d!1518920 b!4751344)))

(assert (=> bs!1142368 (= (= lt!1915497 lt!1915903) (= lambda!222144 lambda!222103))))

(assert (=> bs!1142338 (= (= lt!1915497 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222144 lambda!222118))))

(assert (=> bs!1142348 (= (= lt!1915497 lt!1915924) (= lambda!222144 lambda!222107))))

(assert (=> bs!1142349 (= (= lt!1915497 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222144 lambda!222125))))

(assert (=> bs!1142356 (= (= lt!1915497 lt!1915829) (= lambda!222144 lambda!222092))))

(declare-fun bs!1142369 () Bool)

(assert (= bs!1142369 (and d!1518920 d!1518832)))

(assert (=> bs!1142369 (= (= lt!1915497 acc!1214) (= lambda!222144 lambda!222138))))

(declare-fun bs!1142370 () Bool)

(assert (= bs!1142370 (and d!1518920 d!1518694)))

(assert (=> bs!1142370 (= (= lt!1915497 (+!2382 lt!1915497 t!14174)) (= lambda!222144 lambda!222121))))

(declare-fun bs!1142371 () Bool)

(assert (= bs!1142371 (and d!1518920 b!4751345)))

(assert (=> bs!1142371 (= (= lt!1915497 acc!1214) (= lambda!222144 lambda!222101))))

(declare-fun bs!1142372 () Bool)

(assert (= bs!1142372 (and d!1518920 d!1518628)))

(assert (=> bs!1142372 (= (= lt!1915497 lt!1915928) (= lambda!222144 lambda!222108))))

(declare-fun bs!1142373 () Bool)

(assert (= bs!1142373 (and d!1518920 d!1518590)))

(assert (=> bs!1142373 (= (= lt!1915497 lt!1915758) (= lambda!222144 lambda!222081))))

(assert (=> bs!1142366 (= (= lt!1915497 lt!1916159) (= lambda!222144 lambda!222130))))

(declare-fun bs!1142374 () Bool)

(assert (= bs!1142374 (and d!1518920 b!4751316)))

(assert (=> bs!1142374 (= lambda!222144 lambda!222089)))

(assert (=> bs!1142363 (= (= lt!1915497 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222144 lambda!222066))))

(assert (=> bs!1142352 (= (= lt!1915497 acc!1214) (= lambda!222144 lambda!222098))))

(declare-fun bs!1142375 () Bool)

(assert (= bs!1142375 (and d!1518920 d!1518668)))

(assert (=> bs!1142375 (= (= lt!1915497 lt!1915494) (= lambda!222144 lambda!222111))))

(declare-fun bs!1142376 () Bool)

(assert (= bs!1142376 (and d!1518920 d!1518618)))

(assert (=> bs!1142376 (= (= lt!1915497 lt!1915886) (= lambda!222144 lambda!222100))))

(declare-fun bs!1142377 () Bool)

(assert (= bs!1142377 (and d!1518920 d!1518604)))

(assert (=> bs!1142377 (= (= lt!1915497 lt!1915833) (= lambda!222144 lambda!222094))))

(assert (=> bs!1142368 (= (= lt!1915497 acc!1214) (= lambda!222144 lambda!222102))))

(declare-fun bs!1142378 () Bool)

(assert (= bs!1142378 (and d!1518920 d!1518822)))

(assert (=> bs!1142378 (= (= lt!1915497 lt!1916207) (= lambda!222144 lambda!222137))))

(assert (=> d!1518920 true))

(assert (=> d!1518920 (forall!11762 (toList!6116 lt!1915497) lambda!222144)))

(declare-fun lt!1916287 () Unit!135894)

(assert (=> d!1518920 (= lt!1916287 (choose!33824 lt!1915497))))

(assert (=> d!1518920 (= (lemmaContainsAllItsOwnKeys!877 lt!1915497) lt!1916287)))

(declare-fun bs!1142379 () Bool)

(assert (= bs!1142379 d!1518920))

(declare-fun m!5715277 () Bool)

(assert (=> bs!1142379 m!5715277))

(declare-fun m!5715279 () Bool)

(assert (=> bs!1142379 m!5715279))

(assert (=> bm!332855 d!1518920))

(declare-fun d!1518922 () Bool)

(assert (=> d!1518922 (= (invariantList!1594 (toList!6116 lt!1915833)) (noDuplicatedKeys!402 (toList!6116 lt!1915833)))))

(declare-fun bs!1142380 () Bool)

(assert (= bs!1142380 d!1518922))

(declare-fun m!5715281 () Bool)

(assert (=> bs!1142380 m!5715281))

(assert (=> b!4751317 d!1518922))

(declare-fun d!1518924 () Bool)

(declare-fun res!2015132 () Bool)

(declare-fun e!2964229 () Bool)

(assert (=> d!1518924 (=> res!2015132 e!2964229)))

(assert (=> d!1518924 (= res!2015132 (and ((_ is Cons!53086) (t!360542 l!14304)) (= (_1!30722 (h!59483 (t!360542 l!14304))) (_1!30722 (h!59483 l!14304)))))))

(assert (=> d!1518924 (= (containsKey!3557 (t!360542 l!14304) (_1!30722 (h!59483 l!14304))) e!2964229)))

(declare-fun b!4751897 () Bool)

(declare-fun e!2964230 () Bool)

(assert (=> b!4751897 (= e!2964229 e!2964230)))

(declare-fun res!2015133 () Bool)

(assert (=> b!4751897 (=> (not res!2015133) (not e!2964230))))

(assert (=> b!4751897 (= res!2015133 ((_ is Cons!53086) (t!360542 l!14304)))))

(declare-fun b!4751898 () Bool)

(assert (=> b!4751898 (= e!2964230 (containsKey!3557 (t!360542 (t!360542 l!14304)) (_1!30722 (h!59483 l!14304))))))

(assert (= (and d!1518924 (not res!2015132)) b!4751897))

(assert (= (and b!4751897 res!2015133) b!4751898))

(declare-fun m!5715283 () Bool)

(assert (=> b!4751898 m!5715283))

(assert (=> b!4751216 d!1518924))

(declare-fun d!1518926 () Bool)

(declare-fun e!2964231 () Bool)

(assert (=> d!1518926 e!2964231))

(declare-fun res!2015134 () Bool)

(assert (=> d!1518926 (=> (not res!2015134) (not e!2964231))))

(declare-fun lt!1916289 () ListMap!5541)

(assert (=> d!1518926 (= res!2015134 (contains!16509 lt!1916289 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916290 () List!53210)

(assert (=> d!1518926 (= lt!1916289 (ListMap!5542 lt!1916290))))

(declare-fun lt!1916291 () Unit!135894)

(declare-fun lt!1916288 () Unit!135894)

(assert (=> d!1518926 (= lt!1916291 lt!1916288)))

(assert (=> d!1518926 (= (getValueByKey!2080 lt!1916290 (_1!30722 (h!59483 (t!360542 l!14304)))) (Some!12529 (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518926 (= lt!1916288 (lemmaContainsTupThenGetReturnValue!1157 lt!1916290 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518926 (= lt!1916290 (insertNoDuplicatedKeys!665 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518926 (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916289)))

(declare-fun b!4751899 () Bool)

(declare-fun res!2015135 () Bool)

(assert (=> b!4751899 (=> (not res!2015135) (not e!2964231))))

(assert (=> b!4751899 (= res!2015135 (= (getValueByKey!2080 (toList!6116 lt!1916289) (_1!30722 (h!59483 (t!360542 l!14304)))) (Some!12529 (_2!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751900 () Bool)

(assert (=> b!4751900 (= e!2964231 (contains!16510 (toList!6116 lt!1916289) (h!59483 (t!360542 l!14304))))))

(assert (= (and d!1518926 res!2015134) b!4751899))

(assert (= (and b!4751899 res!2015135) b!4751900))

(declare-fun m!5715285 () Bool)

(assert (=> d!1518926 m!5715285))

(declare-fun m!5715287 () Bool)

(assert (=> d!1518926 m!5715287))

(declare-fun m!5715289 () Bool)

(assert (=> d!1518926 m!5715289))

(declare-fun m!5715291 () Bool)

(assert (=> d!1518926 m!5715291))

(declare-fun m!5715293 () Bool)

(assert (=> b!4751899 m!5715293))

(declare-fun m!5715295 () Bool)

(assert (=> b!4751900 m!5715295))

(assert (=> b!4751267 d!1518926))

(declare-fun d!1518928 () Bool)

(assert (=> d!1518928 (dynLambda!21900 lambda!222067 (h!59483 (t!360542 l!14304)))))

(declare-fun lt!1916292 () Unit!135894)

(assert (=> d!1518928 (= lt!1916292 (choose!33825 (toList!6116 lt!1915672) lambda!222067 (h!59483 (t!360542 l!14304))))))

(declare-fun e!2964232 () Bool)

(assert (=> d!1518928 e!2964232))

(declare-fun res!2015136 () Bool)

(assert (=> d!1518928 (=> (not res!2015136) (not e!2964232))))

(assert (=> d!1518928 (= res!2015136 (forall!11762 (toList!6116 lt!1915672) lambda!222067))))

(assert (=> d!1518928 (= (forallContained!3788 (toList!6116 lt!1915672) lambda!222067 (h!59483 (t!360542 l!14304))) lt!1916292)))

(declare-fun b!4751901 () Bool)

(assert (=> b!4751901 (= e!2964232 (contains!16510 (toList!6116 lt!1915672) (h!59483 (t!360542 l!14304))))))

(assert (= (and d!1518928 res!2015136) b!4751901))

(declare-fun b_lambda!183305 () Bool)

(assert (=> (not b_lambda!183305) (not d!1518928)))

(declare-fun m!5715297 () Bool)

(assert (=> d!1518928 m!5715297))

(declare-fun m!5715299 () Bool)

(assert (=> d!1518928 m!5715299))

(assert (=> d!1518928 m!5713709))

(declare-fun m!5715301 () Bool)

(assert (=> b!4751901 m!5715301))

(assert (=> b!4751267 d!1518928))

(declare-fun d!1518930 () Bool)

(declare-fun res!2015137 () Bool)

(declare-fun e!2964233 () Bool)

(assert (=> d!1518930 (=> res!2015137 e!2964233)))

(assert (=> d!1518930 (= res!2015137 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518930 (= (forall!11762 (t!360542 l!14304) lambda!222067) e!2964233)))

(declare-fun b!4751902 () Bool)

(declare-fun e!2964234 () Bool)

(assert (=> b!4751902 (= e!2964233 e!2964234)))

(declare-fun res!2015138 () Bool)

(assert (=> b!4751902 (=> (not res!2015138) (not e!2964234))))

(assert (=> b!4751902 (= res!2015138 (dynLambda!21900 lambda!222067 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751903 () Bool)

(assert (=> b!4751903 (= e!2964234 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222067))))

(assert (= (and d!1518930 (not res!2015137)) b!4751902))

(assert (= (and b!4751902 res!2015138) b!4751903))

(declare-fun b_lambda!183307 () Bool)

(assert (=> (not b_lambda!183307) (not b!4751902)))

(assert (=> b!4751902 m!5715297))

(assert (=> b!4751903 m!5713707))

(assert (=> b!4751267 d!1518930))

(declare-fun d!1518932 () Bool)

(declare-fun res!2015139 () Bool)

(declare-fun e!2964235 () Bool)

(assert (=> d!1518932 (=> res!2015139 e!2964235)))

(assert (=> d!1518932 (= res!2015139 ((_ is Nil!53086) (toList!6116 lt!1915672)))))

(assert (=> d!1518932 (= (forall!11762 (toList!6116 lt!1915672) lambda!222067) e!2964235)))

(declare-fun b!4751904 () Bool)

(declare-fun e!2964236 () Bool)

(assert (=> b!4751904 (= e!2964235 e!2964236)))

(declare-fun res!2015140 () Bool)

(assert (=> b!4751904 (=> (not res!2015140) (not e!2964236))))

(assert (=> b!4751904 (= res!2015140 (dynLambda!21900 lambda!222067 (h!59483 (toList!6116 lt!1915672))))))

(declare-fun b!4751905 () Bool)

(assert (=> b!4751905 (= e!2964236 (forall!11762 (t!360542 (toList!6116 lt!1915672)) lambda!222067))))

(assert (= (and d!1518932 (not res!2015139)) b!4751904))

(assert (= (and b!4751904 res!2015140) b!4751905))

(declare-fun b_lambda!183309 () Bool)

(assert (=> (not b_lambda!183309) (not b!4751904)))

(declare-fun m!5715303 () Bool)

(assert (=> b!4751904 m!5715303))

(declare-fun m!5715305 () Bool)

(assert (=> b!4751905 m!5715305))

(assert (=> b!4751267 d!1518932))

(declare-fun b!4751906 () Bool)

(declare-fun e!2964241 () List!53211)

(assert (=> b!4751906 (= e!2964241 (getKeysList!1003 (toList!6116 lt!1915671)))))

(declare-fun b!4751907 () Bool)

(declare-fun e!2964239 () Unit!135894)

(declare-fun e!2964242 () Unit!135894)

(assert (=> b!4751907 (= e!2964239 e!2964242)))

(declare-fun c!811347 () Bool)

(declare-fun call!332939 () Bool)

(assert (=> b!4751907 (= c!811347 call!332939)))

(declare-fun b!4751908 () Bool)

(declare-fun e!2964237 () Bool)

(assert (=> b!4751908 (= e!2964237 (not (contains!16512 (keys!19162 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751909 () Bool)

(assert (=> b!4751909 (= e!2964241 (keys!19162 lt!1915671))))

(declare-fun b!4751910 () Bool)

(declare-fun Unit!136176 () Unit!135894)

(assert (=> b!4751910 (= e!2964242 Unit!136176)))

(declare-fun b!4751911 () Bool)

(declare-fun e!2964240 () Bool)

(declare-fun e!2964238 () Bool)

(assert (=> b!4751911 (= e!2964240 e!2964238)))

(declare-fun res!2015141 () Bool)

(assert (=> b!4751911 (=> (not res!2015141) (not e!2964238))))

(assert (=> b!4751911 (= res!2015141 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751912 () Bool)

(declare-fun lt!1916294 () Unit!135894)

(assert (=> b!4751912 (= e!2964239 lt!1916294)))

(declare-fun lt!1916297 () Unit!135894)

(assert (=> b!4751912 (= lt!1916297 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751912 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916296 () Unit!135894)

(assert (=> b!4751912 (= lt!1916296 lt!1916297)))

(assert (=> b!4751912 (= lt!1916294 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751912 call!332939))

(declare-fun b!4751913 () Bool)

(assert (=> b!4751913 (= e!2964238 (contains!16512 (keys!19162 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun d!1518934 () Bool)

(assert (=> d!1518934 e!2964240))

(declare-fun res!2015142 () Bool)

(assert (=> d!1518934 (=> res!2015142 e!2964240)))

(assert (=> d!1518934 (= res!2015142 e!2964237)))

(declare-fun res!2015143 () Bool)

(assert (=> d!1518934 (=> (not res!2015143) (not e!2964237))))

(declare-fun lt!1916293 () Bool)

(assert (=> d!1518934 (= res!2015143 (not lt!1916293))))

(declare-fun lt!1916299 () Bool)

(assert (=> d!1518934 (= lt!1916293 lt!1916299)))

(declare-fun lt!1916295 () Unit!135894)

(assert (=> d!1518934 (= lt!1916295 e!2964239)))

(declare-fun c!811346 () Bool)

(assert (=> d!1518934 (= c!811346 lt!1916299)))

(assert (=> d!1518934 (= lt!1916299 (containsKey!3558 (toList!6116 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518934 (= (contains!16509 lt!1915671 (_1!30722 (h!59483 (t!360542 l!14304)))) lt!1916293)))

(declare-fun b!4751914 () Bool)

(assert (=> b!4751914 false))

(declare-fun lt!1916300 () Unit!135894)

(declare-fun lt!1916298 () Unit!135894)

(assert (=> b!4751914 (= lt!1916300 lt!1916298)))

(assert (=> b!4751914 (containsKey!3558 (toList!6116 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751914 (= lt!1916298 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915671) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun Unit!136177 () Unit!135894)

(assert (=> b!4751914 (= e!2964242 Unit!136177)))

(declare-fun bm!332934 () Bool)

(assert (=> bm!332934 (= call!332939 (contains!16512 e!2964241 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun c!811348 () Bool)

(assert (=> bm!332934 (= c!811348 c!811346)))

(assert (= (and d!1518934 c!811346) b!4751912))

(assert (= (and d!1518934 (not c!811346)) b!4751907))

(assert (= (and b!4751907 c!811347) b!4751914))

(assert (= (and b!4751907 (not c!811347)) b!4751910))

(assert (= (or b!4751912 b!4751907) bm!332934))

(assert (= (and bm!332934 c!811348) b!4751906))

(assert (= (and bm!332934 (not c!811348)) b!4751909))

(assert (= (and d!1518934 res!2015143) b!4751908))

(assert (= (and d!1518934 (not res!2015142)) b!4751911))

(assert (= (and b!4751911 res!2015141) b!4751913))

(declare-fun m!5715307 () Bool)

(assert (=> b!4751906 m!5715307))

(declare-fun m!5715309 () Bool)

(assert (=> b!4751908 m!5715309))

(assert (=> b!4751908 m!5715309))

(declare-fun m!5715311 () Bool)

(assert (=> b!4751908 m!5715311))

(assert (=> b!4751913 m!5715309))

(assert (=> b!4751913 m!5715309))

(assert (=> b!4751913 m!5715311))

(declare-fun m!5715313 () Bool)

(assert (=> bm!332934 m!5715313))

(declare-fun m!5715315 () Bool)

(assert (=> b!4751911 m!5715315))

(assert (=> b!4751911 m!5715315))

(declare-fun m!5715317 () Bool)

(assert (=> b!4751911 m!5715317))

(declare-fun m!5715319 () Bool)

(assert (=> d!1518934 m!5715319))

(assert (=> b!4751914 m!5715319))

(declare-fun m!5715321 () Bool)

(assert (=> b!4751914 m!5715321))

(assert (=> b!4751909 m!5715309))

(declare-fun m!5715323 () Bool)

(assert (=> b!4751912 m!5715323))

(assert (=> b!4751912 m!5715315))

(assert (=> b!4751912 m!5715315))

(assert (=> b!4751912 m!5715317))

(declare-fun m!5715325 () Bool)

(assert (=> b!4751912 m!5715325))

(assert (=> b!4751267 d!1518934))

(declare-fun d!1518936 () Bool)

(declare-fun res!2015144 () Bool)

(declare-fun e!2964243 () Bool)

(assert (=> d!1518936 (=> res!2015144 e!2964243)))

(assert (=> d!1518936 (= res!2015144 ((_ is Nil!53086) (t!360542 (t!360542 l!14304))))))

(assert (=> d!1518936 (= (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222067) e!2964243)))

(declare-fun b!4751915 () Bool)

(declare-fun e!2964244 () Bool)

(assert (=> b!4751915 (= e!2964243 e!2964244)))

(declare-fun res!2015145 () Bool)

(assert (=> b!4751915 (=> (not res!2015145) (not e!2964244))))

(assert (=> b!4751915 (= res!2015145 (dynLambda!21900 lambda!222067 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun b!4751916 () Bool)

(assert (=> b!4751916 (= e!2964244 (forall!11762 (t!360542 (t!360542 (t!360542 l!14304))) lambda!222067))))

(assert (= (and d!1518936 (not res!2015144)) b!4751915))

(assert (= (and b!4751915 res!2015145) b!4751916))

(declare-fun b_lambda!183311 () Bool)

(assert (=> (not b_lambda!183311) (not b!4751915)))

(declare-fun m!5715327 () Bool)

(assert (=> b!4751915 m!5715327))

(declare-fun m!5715329 () Bool)

(assert (=> b!4751916 m!5715329))

(assert (=> b!4751267 d!1518936))

(declare-fun d!1518938 () Bool)

(declare-fun res!2015146 () Bool)

(declare-fun e!2964245 () Bool)

(assert (=> d!1518938 (=> res!2015146 e!2964245)))

(assert (=> d!1518938 (= res!2015146 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))))))

(assert (=> d!1518938 (= (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222067) e!2964245)))

(declare-fun b!4751917 () Bool)

(declare-fun e!2964246 () Bool)

(assert (=> b!4751917 (= e!2964245 e!2964246)))

(declare-fun res!2015147 () Bool)

(assert (=> b!4751917 (=> (not res!2015147) (not e!2964246))))

(assert (=> b!4751917 (= res!2015147 (dynLambda!21900 lambda!222067 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))))))))

(declare-fun b!4751918 () Bool)

(assert (=> b!4751918 (= e!2964246 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))) lambda!222067))))

(assert (= (and d!1518938 (not res!2015146)) b!4751917))

(assert (= (and b!4751917 res!2015147) b!4751918))

(declare-fun b_lambda!183313 () Bool)

(assert (=> (not b_lambda!183313) (not b!4751917)))

(declare-fun m!5715331 () Bool)

(assert (=> b!4751917 m!5715331))

(declare-fun m!5715333 () Bool)

(assert (=> b!4751918 m!5715333))

(assert (=> b!4751267 d!1518938))

(declare-fun d!1518940 () Bool)

(declare-fun res!2015148 () Bool)

(declare-fun e!2964247 () Bool)

(assert (=> d!1518940 (=> res!2015148 e!2964247)))

(assert (=> d!1518940 (= res!2015148 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))))))

(assert (=> d!1518940 (= (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222066) e!2964247)))

(declare-fun b!4751919 () Bool)

(declare-fun e!2964248 () Bool)

(assert (=> b!4751919 (= e!2964247 e!2964248)))

(declare-fun res!2015149 () Bool)

(assert (=> b!4751919 (=> (not res!2015149) (not e!2964248))))

(assert (=> b!4751919 (= res!2015149 (dynLambda!21900 lambda!222066 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))))))))

(declare-fun b!4751920 () Bool)

(assert (=> b!4751920 (= e!2964248 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))) lambda!222066))))

(assert (= (and d!1518940 (not res!2015148)) b!4751919))

(assert (= (and b!4751919 res!2015149) b!4751920))

(declare-fun b_lambda!183315 () Bool)

(assert (=> (not b_lambda!183315) (not b!4751919)))

(declare-fun m!5715335 () Bool)

(assert (=> b!4751919 m!5715335))

(declare-fun m!5715337 () Bool)

(assert (=> b!4751920 m!5715337))

(assert (=> b!4751267 d!1518940))

(declare-fun bs!1142381 () Bool)

(declare-fun d!1518942 () Bool)

(assert (= bs!1142381 (and d!1518942 d!1518558)))

(declare-fun lambda!222145 () Int)

(assert (=> bs!1142381 (= (= lt!1915671 lt!1915675) (= lambda!222145 lambda!222069))))

(declare-fun bs!1142382 () Bool)

(assert (= bs!1142382 (and d!1518942 b!4751534)))

(assert (=> bs!1142382 (= (= lt!1915671 lt!1916057) (= lambda!222145 lambda!222119))))

(declare-fun bs!1142383 () Bool)

(assert (= bs!1142383 (and d!1518942 d!1518594)))

(assert (=> bs!1142383 (= (= lt!1915671 lt!1915800) (= lambda!222145 lambda!222088))))

(declare-fun bs!1142384 () Bool)

(assert (= bs!1142384 (and d!1518942 d!1518746)))

(assert (=> bs!1142384 (= (= lt!1915671 lt!1915754) (= lambda!222145 lambda!222123))))

(declare-fun bs!1142385 () Bool)

(assert (= bs!1142385 (and d!1518942 b!4751294)))

(assert (=> bs!1142385 (= (= lt!1915671 lt!1915754) (= lambda!222145 lambda!222079))))

(declare-fun bs!1142386 () Bool)

(assert (= bs!1142386 (and d!1518942 b!4751305)))

(assert (=> bs!1142386 (= (= lt!1915671 lt!1915494) (= lambda!222145 lambda!222084))))

(assert (=> bs!1142385 (= (= lt!1915671 lt!1915497) (= lambda!222145 lambda!222078))))

(declare-fun bs!1142387 () Bool)

(assert (= bs!1142387 (and d!1518942 b!4751304)))

(assert (=> bs!1142387 (= (= lt!1915671 lt!1915796) (= lambda!222145 lambda!222086))))

(declare-fun bs!1142388 () Bool)

(assert (= bs!1142388 (and d!1518942 d!1518806)))

(assert (=> bs!1142388 (= (= lt!1915671 lt!1915829) (= lambda!222145 lambda!222133))))

(declare-fun bs!1142389 () Bool)

(assert (= bs!1142389 (and d!1518942 d!1518796)))

(assert (=> bs!1142389 (= (= lt!1915671 lt!1915882) (= lambda!222145 lambda!222132))))

(declare-fun bs!1142390 () Bool)

(assert (= bs!1142390 (and d!1518942 b!4751295)))

(assert (=> bs!1142390 (= (= lt!1915671 lt!1915497) (= lambda!222145 lambda!222077))))

(declare-fun bs!1142391 () Bool)

(assert (= bs!1142391 (and d!1518942 b!4751349)))

(assert (=> bs!1142391 (= (= lt!1915671 (+!2382 lt!1915497 t!14174)) (= lambda!222145 lambda!222106))))

(declare-fun bs!1142392 () Bool)

(assert (= bs!1142392 (and d!1518942 b!4751625)))

(assert (=> bs!1142392 (= (= lt!1915671 lt!1916104) (= lambda!222145 lambda!222126))))

(declare-fun bs!1142393 () Bool)

(assert (= bs!1142393 (and d!1518942 d!1518762)))

(assert (=> bs!1142393 (= (= lt!1915671 lt!1916108) (= lambda!222145 lambda!222127))))

(assert (=> bs!1142387 (= (= lt!1915671 lt!1915494) (= lambda!222145 lambda!222085))))

(declare-fun bs!1142394 () Bool)

(assert (= bs!1142394 (and d!1518942 d!1518864)))

(assert (=> bs!1142394 (= (= lt!1915671 lt!1915796) (= lambda!222145 lambda!222142))))

(declare-fun bs!1142395 () Bool)

(assert (= bs!1142395 (and d!1518942 b!4751337)))

(assert (=> bs!1142395 (= (= lt!1915671 lt!1915882) (= lambda!222145 lambda!222099))))

(declare-fun bs!1142396 () Bool)

(assert (= bs!1142396 (and d!1518942 d!1518624)))

(assert (=> bs!1142396 (= (= lt!1915671 lt!1915907) (= lambda!222145 lambda!222104))))

(declare-fun bs!1142397 () Bool)

(assert (= bs!1142397 (and d!1518942 d!1518676)))

(assert (=> bs!1142397 (= (= lt!1915671 lt!1915903) (= lambda!222145 lambda!222116))))

(declare-fun bs!1142398 () Bool)

(assert (= bs!1142398 (and d!1518942 b!4751723)))

(assert (=> bs!1142398 (= (= lt!1915671 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222145 lambda!222134))))

(declare-fun bs!1142399 () Bool)

(assert (= bs!1142399 (and d!1518942 b!4751315)))

(assert (=> bs!1142399 (= (= lt!1915671 lt!1915497) (= lambda!222145 lambda!222091))))

(declare-fun bs!1142400 () Bool)

(assert (= bs!1142400 (and d!1518942 d!1518686)))

(assert (=> bs!1142400 (= (= lt!1915671 lt!1916061) (= lambda!222145 lambda!222120))))

(declare-fun bs!1142401 () Bool)

(assert (= bs!1142401 (and d!1518942 b!4751338)))

(assert (=> bs!1142401 (= (= lt!1915671 acc!1214) (= lambda!222145 lambda!222097))))

(declare-fun bs!1142402 () Bool)

(assert (= bs!1142402 (and d!1518942 b!4751350)))

(assert (=> bs!1142402 (= (= lt!1915671 (+!2382 lt!1915497 t!14174)) (= lambda!222145 lambda!222105))))

(declare-fun bs!1142403 () Bool)

(assert (= bs!1142403 (and d!1518942 d!1518706)))

(assert (=> bs!1142403 (= (= lt!1915671 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222145 lambda!222122))))

(declare-fun bs!1142404 () Bool)

(assert (= bs!1142404 (and d!1518942 b!4751722)))

(assert (=> bs!1142404 (= (= lt!1915671 lt!1916203) (= lambda!222145 lambda!222136))))

(declare-fun bs!1142405 () Bool)

(assert (= bs!1142405 (and d!1518942 d!1518920)))

(assert (=> bs!1142405 (= (= lt!1915671 lt!1915497) (= lambda!222145 lambda!222144))))

(declare-fun bs!1142406 () Bool)

(assert (= bs!1142406 (and d!1518942 d!1518790)))

(assert (=> bs!1142406 (= (= lt!1915671 lt!1916163) (= lambda!222145 lambda!222131))))

(declare-fun bs!1142407 () Bool)

(assert (= bs!1142407 (and d!1518942 b!4751681)))

(assert (=> bs!1142407 (= (= lt!1915671 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222145 lambda!222128))))

(assert (=> bs!1142404 (= (= lt!1915671 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222145 lambda!222135))))

(declare-fun bs!1142408 () Bool)

(assert (= bs!1142408 (and d!1518942 b!4751267)))

(assert (=> bs!1142408 (= lambda!222145 lambda!222067)))

(declare-fun bs!1142409 () Bool)

(assert (= bs!1142409 (and d!1518942 b!4751268)))

(assert (=> bs!1142409 (= (= lt!1915671 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222145 lambda!222065))))

(declare-fun bs!1142410 () Bool)

(assert (= bs!1142410 (and d!1518942 b!4751535)))

(assert (=> bs!1142410 (= (= lt!1915671 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222145 lambda!222117))))

(declare-fun bs!1142411 () Bool)

(assert (= bs!1142411 (and d!1518942 b!4751680)))

(assert (=> bs!1142411 (= (= lt!1915671 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222145 lambda!222129))))

(declare-fun bs!1142412 () Bool)

(assert (= bs!1142412 (and d!1518942 b!4751626)))

(assert (=> bs!1142412 (= (= lt!1915671 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222145 lambda!222124))))

(declare-fun bs!1142413 () Bool)

(assert (= bs!1142413 (and d!1518942 b!4751344)))

(assert (=> bs!1142413 (= (= lt!1915671 lt!1915903) (= lambda!222145 lambda!222103))))

(assert (=> bs!1142382 (= (= lt!1915671 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222145 lambda!222118))))

(assert (=> bs!1142391 (= (= lt!1915671 lt!1915924) (= lambda!222145 lambda!222107))))

(assert (=> bs!1142392 (= (= lt!1915671 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222145 lambda!222125))))

(assert (=> bs!1142399 (= (= lt!1915671 lt!1915829) (= lambda!222145 lambda!222092))))

(declare-fun bs!1142414 () Bool)

(assert (= bs!1142414 (and d!1518942 d!1518832)))

(assert (=> bs!1142414 (= (= lt!1915671 acc!1214) (= lambda!222145 lambda!222138))))

(declare-fun bs!1142415 () Bool)

(assert (= bs!1142415 (and d!1518942 d!1518694)))

(assert (=> bs!1142415 (= (= lt!1915671 (+!2382 lt!1915497 t!14174)) (= lambda!222145 lambda!222121))))

(declare-fun bs!1142416 () Bool)

(assert (= bs!1142416 (and d!1518942 b!4751345)))

(assert (=> bs!1142416 (= (= lt!1915671 acc!1214) (= lambda!222145 lambda!222101))))

(declare-fun bs!1142417 () Bool)

(assert (= bs!1142417 (and d!1518942 d!1518628)))

(assert (=> bs!1142417 (= (= lt!1915671 lt!1915928) (= lambda!222145 lambda!222108))))

(declare-fun bs!1142418 () Bool)

(assert (= bs!1142418 (and d!1518942 d!1518590)))

(assert (=> bs!1142418 (= (= lt!1915671 lt!1915758) (= lambda!222145 lambda!222081))))

(assert (=> bs!1142411 (= (= lt!1915671 lt!1916159) (= lambda!222145 lambda!222130))))

(declare-fun bs!1142419 () Bool)

(assert (= bs!1142419 (and d!1518942 b!4751316)))

(assert (=> bs!1142419 (= (= lt!1915671 lt!1915497) (= lambda!222145 lambda!222089))))

(assert (=> bs!1142408 (= (= lt!1915671 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222145 lambda!222066))))

(assert (=> bs!1142395 (= (= lt!1915671 acc!1214) (= lambda!222145 lambda!222098))))

(declare-fun bs!1142420 () Bool)

(assert (= bs!1142420 (and d!1518942 d!1518668)))

(assert (=> bs!1142420 (= (= lt!1915671 lt!1915494) (= lambda!222145 lambda!222111))))

(declare-fun bs!1142421 () Bool)

(assert (= bs!1142421 (and d!1518942 d!1518618)))

(assert (=> bs!1142421 (= (= lt!1915671 lt!1915886) (= lambda!222145 lambda!222100))))

(declare-fun bs!1142422 () Bool)

(assert (= bs!1142422 (and d!1518942 d!1518604)))

(assert (=> bs!1142422 (= (= lt!1915671 lt!1915833) (= lambda!222145 lambda!222094))))

(assert (=> bs!1142413 (= (= lt!1915671 acc!1214) (= lambda!222145 lambda!222102))))

(declare-fun bs!1142423 () Bool)

(assert (= bs!1142423 (and d!1518942 d!1518822)))

(assert (=> bs!1142423 (= (= lt!1915671 lt!1916207) (= lambda!222145 lambda!222137))))

(assert (=> d!1518942 true))

(assert (=> d!1518942 (forall!11762 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))) lambda!222145)))

(declare-fun lt!1916301 () Unit!135894)

(assert (=> d!1518942 (= lt!1916301 (choose!33826 (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915671 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518942 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (tuple2!54857 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))) lambda!222145)))

(assert (=> d!1518942 (= (addForallContainsKeyThenBeforeAdding!876 (+!2382 lt!1915494 (h!59483 l!14304)) lt!1915671 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))) lt!1916301)))

(declare-fun bs!1142424 () Bool)

(assert (= bs!1142424 d!1518942))

(declare-fun m!5715339 () Bool)

(assert (=> bs!1142424 m!5715339))

(assert (=> bs!1142424 m!5713519))

(declare-fun m!5715341 () Bool)

(assert (=> bs!1142424 m!5715341))

(assert (=> bs!1142424 m!5713519))

(declare-fun m!5715343 () Bool)

(assert (=> bs!1142424 m!5715343))

(declare-fun m!5715345 () Bool)

(assert (=> bs!1142424 m!5715345))

(assert (=> b!4751267 d!1518942))

(declare-fun bs!1142425 () Bool)

(declare-fun b!4751922 () Bool)

(assert (= bs!1142425 (and b!4751922 d!1518558)))

(declare-fun lambda!222146 () Int)

(assert (=> bs!1142425 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915675) (= lambda!222146 lambda!222069))))

(declare-fun bs!1142426 () Bool)

(assert (= bs!1142426 (and b!4751922 b!4751534)))

(assert (=> bs!1142426 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916057) (= lambda!222146 lambda!222119))))

(declare-fun bs!1142427 () Bool)

(assert (= bs!1142427 (and b!4751922 d!1518594)))

(assert (=> bs!1142427 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915800) (= lambda!222146 lambda!222088))))

(declare-fun bs!1142428 () Bool)

(assert (= bs!1142428 (and b!4751922 d!1518746)))

(assert (=> bs!1142428 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222146 lambda!222123))))

(declare-fun bs!1142429 () Bool)

(assert (= bs!1142429 (and b!4751922 b!4751294)))

(assert (=> bs!1142429 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222146 lambda!222079))))

(declare-fun bs!1142430 () Bool)

(assert (= bs!1142430 (and b!4751922 b!4751305)))

(assert (=> bs!1142430 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222146 lambda!222084))))

(assert (=> bs!1142429 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222146 lambda!222078))))

(declare-fun bs!1142431 () Bool)

(assert (= bs!1142431 (and b!4751922 b!4751304)))

(assert (=> bs!1142431 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222146 lambda!222086))))

(declare-fun bs!1142432 () Bool)

(assert (= bs!1142432 (and b!4751922 d!1518806)))

(assert (=> bs!1142432 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222146 lambda!222133))))

(declare-fun bs!1142433 () Bool)

(assert (= bs!1142433 (and b!4751922 d!1518796)))

(assert (=> bs!1142433 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222146 lambda!222132))))

(declare-fun bs!1142434 () Bool)

(assert (= bs!1142434 (and b!4751922 b!4751295)))

(assert (=> bs!1142434 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222146 lambda!222077))))

(declare-fun bs!1142435 () Bool)

(assert (= bs!1142435 (and b!4751922 b!4751349)))

(assert (=> bs!1142435 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222146 lambda!222106))))

(declare-fun bs!1142436 () Bool)

(assert (= bs!1142436 (and b!4751922 b!4751625)))

(assert (=> bs!1142436 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916104) (= lambda!222146 lambda!222126))))

(declare-fun bs!1142437 () Bool)

(assert (= bs!1142437 (and b!4751922 d!1518762)))

(assert (=> bs!1142437 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916108) (= lambda!222146 lambda!222127))))

(assert (=> bs!1142431 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222146 lambda!222085))))

(declare-fun bs!1142438 () Bool)

(assert (= bs!1142438 (and b!4751922 d!1518864)))

(assert (=> bs!1142438 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222146 lambda!222142))))

(declare-fun bs!1142439 () Bool)

(assert (= bs!1142439 (and b!4751922 b!4751337)))

(assert (=> bs!1142439 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222146 lambda!222099))))

(declare-fun bs!1142440 () Bool)

(assert (= bs!1142440 (and b!4751922 d!1518624)))

(assert (=> bs!1142440 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915907) (= lambda!222146 lambda!222104))))

(declare-fun bs!1142441 () Bool)

(assert (= bs!1142441 (and b!4751922 d!1518676)))

(assert (=> bs!1142441 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222146 lambda!222116))))

(declare-fun bs!1142442 () Bool)

(assert (= bs!1142442 (and b!4751922 b!4751723)))

(assert (=> bs!1142442 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222146 lambda!222134))))

(declare-fun bs!1142443 () Bool)

(assert (= bs!1142443 (and b!4751922 b!4751315)))

(assert (=> bs!1142443 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222146 lambda!222091))))

(declare-fun bs!1142444 () Bool)

(assert (= bs!1142444 (and b!4751922 d!1518686)))

(assert (=> bs!1142444 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916061) (= lambda!222146 lambda!222120))))

(declare-fun bs!1142445 () Bool)

(assert (= bs!1142445 (and b!4751922 b!4751338)))

(assert (=> bs!1142445 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222146 lambda!222097))))

(declare-fun bs!1142446 () Bool)

(assert (= bs!1142446 (and b!4751922 b!4751350)))

(assert (=> bs!1142446 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222146 lambda!222105))))

(declare-fun bs!1142447 () Bool)

(assert (= bs!1142447 (and b!4751922 d!1518706)))

(assert (=> bs!1142447 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222146 lambda!222122))))

(declare-fun bs!1142448 () Bool)

(assert (= bs!1142448 (and b!4751922 b!4751722)))

(assert (=> bs!1142448 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916203) (= lambda!222146 lambda!222136))))

(declare-fun bs!1142449 () Bool)

(assert (= bs!1142449 (and b!4751922 d!1518920)))

(assert (=> bs!1142449 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222146 lambda!222144))))

(declare-fun bs!1142450 () Bool)

(assert (= bs!1142450 (and b!4751922 d!1518790)))

(assert (=> bs!1142450 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916163) (= lambda!222146 lambda!222131))))

(declare-fun bs!1142451 () Bool)

(assert (= bs!1142451 (and b!4751922 d!1518942)))

(assert (=> bs!1142451 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222146 lambda!222145))))

(declare-fun bs!1142452 () Bool)

(assert (= bs!1142452 (and b!4751922 b!4751681)))

(assert (=> bs!1142452 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222146 lambda!222128))))

(assert (=> bs!1142448 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222146 lambda!222135))))

(declare-fun bs!1142453 () Bool)

(assert (= bs!1142453 (and b!4751922 b!4751267)))

(assert (=> bs!1142453 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222146 lambda!222067))))

(declare-fun bs!1142454 () Bool)

(assert (= bs!1142454 (and b!4751922 b!4751268)))

(assert (=> bs!1142454 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222146 lambda!222065))))

(declare-fun bs!1142455 () Bool)

(assert (= bs!1142455 (and b!4751922 b!4751535)))

(assert (=> bs!1142455 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222146 lambda!222117))))

(declare-fun bs!1142456 () Bool)

(assert (= bs!1142456 (and b!4751922 b!4751680)))

(assert (=> bs!1142456 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222146 lambda!222129))))

(declare-fun bs!1142457 () Bool)

(assert (= bs!1142457 (and b!4751922 b!4751626)))

(assert (=> bs!1142457 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222146 lambda!222124))))

(declare-fun bs!1142458 () Bool)

(assert (= bs!1142458 (and b!4751922 b!4751344)))

(assert (=> bs!1142458 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222146 lambda!222103))))

(assert (=> bs!1142426 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222146 lambda!222118))))

(assert (=> bs!1142435 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222146 lambda!222107))))

(assert (=> bs!1142436 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222146 lambda!222125))))

(assert (=> bs!1142443 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222146 lambda!222092))))

(declare-fun bs!1142459 () Bool)

(assert (= bs!1142459 (and b!4751922 d!1518832)))

(assert (=> bs!1142459 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222146 lambda!222138))))

(declare-fun bs!1142460 () Bool)

(assert (= bs!1142460 (and b!4751922 d!1518694)))

(assert (=> bs!1142460 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222146 lambda!222121))))

(declare-fun bs!1142461 () Bool)

(assert (= bs!1142461 (and b!4751922 b!4751345)))

(assert (=> bs!1142461 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222146 lambda!222101))))

(declare-fun bs!1142462 () Bool)

(assert (= bs!1142462 (and b!4751922 d!1518628)))

(assert (=> bs!1142462 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915928) (= lambda!222146 lambda!222108))))

(declare-fun bs!1142463 () Bool)

(assert (= bs!1142463 (and b!4751922 d!1518590)))

(assert (=> bs!1142463 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915758) (= lambda!222146 lambda!222081))))

(assert (=> bs!1142456 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916159) (= lambda!222146 lambda!222130))))

(declare-fun bs!1142464 () Bool)

(assert (= bs!1142464 (and b!4751922 b!4751316)))

(assert (=> bs!1142464 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222146 lambda!222089))))

(assert (=> bs!1142453 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222146 lambda!222066))))

(assert (=> bs!1142439 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222146 lambda!222098))))

(declare-fun bs!1142465 () Bool)

(assert (= bs!1142465 (and b!4751922 d!1518668)))

(assert (=> bs!1142465 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222146 lambda!222111))))

(declare-fun bs!1142466 () Bool)

(assert (= bs!1142466 (and b!4751922 d!1518618)))

(assert (=> bs!1142466 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915886) (= lambda!222146 lambda!222100))))

(declare-fun bs!1142467 () Bool)

(assert (= bs!1142467 (and b!4751922 d!1518604)))

(assert (=> bs!1142467 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915833) (= lambda!222146 lambda!222094))))

(assert (=> bs!1142458 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222146 lambda!222102))))

(declare-fun bs!1142468 () Bool)

(assert (= bs!1142468 (and b!4751922 d!1518822)))

(assert (=> bs!1142468 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916207) (= lambda!222146 lambda!222137))))

(assert (=> b!4751922 true))

(declare-fun bs!1142469 () Bool)

(declare-fun b!4751921 () Bool)

(assert (= bs!1142469 (and b!4751921 d!1518558)))

(declare-fun lambda!222147 () Int)

(assert (=> bs!1142469 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915675) (= lambda!222147 lambda!222069))))

(declare-fun bs!1142470 () Bool)

(assert (= bs!1142470 (and b!4751921 b!4751534)))

(assert (=> bs!1142470 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916057) (= lambda!222147 lambda!222119))))

(declare-fun bs!1142471 () Bool)

(assert (= bs!1142471 (and b!4751921 d!1518594)))

(assert (=> bs!1142471 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915800) (= lambda!222147 lambda!222088))))

(declare-fun bs!1142472 () Bool)

(assert (= bs!1142472 (and b!4751921 d!1518746)))

(assert (=> bs!1142472 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222147 lambda!222123))))

(declare-fun bs!1142473 () Bool)

(assert (= bs!1142473 (and b!4751921 b!4751294)))

(assert (=> bs!1142473 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222147 lambda!222079))))

(declare-fun bs!1142474 () Bool)

(assert (= bs!1142474 (and b!4751921 b!4751305)))

(assert (=> bs!1142474 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222147 lambda!222084))))

(assert (=> bs!1142473 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222147 lambda!222078))))

(declare-fun bs!1142475 () Bool)

(assert (= bs!1142475 (and b!4751921 b!4751304)))

(assert (=> bs!1142475 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222147 lambda!222086))))

(declare-fun bs!1142476 () Bool)

(assert (= bs!1142476 (and b!4751921 d!1518806)))

(assert (=> bs!1142476 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222147 lambda!222133))))

(declare-fun bs!1142477 () Bool)

(assert (= bs!1142477 (and b!4751921 d!1518796)))

(assert (=> bs!1142477 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222147 lambda!222132))))

(declare-fun bs!1142478 () Bool)

(assert (= bs!1142478 (and b!4751921 b!4751295)))

(assert (=> bs!1142478 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222147 lambda!222077))))

(declare-fun bs!1142479 () Bool)

(assert (= bs!1142479 (and b!4751921 b!4751349)))

(assert (=> bs!1142479 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222147 lambda!222106))))

(declare-fun bs!1142480 () Bool)

(assert (= bs!1142480 (and b!4751921 b!4751625)))

(assert (=> bs!1142480 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916104) (= lambda!222147 lambda!222126))))

(declare-fun bs!1142481 () Bool)

(assert (= bs!1142481 (and b!4751921 d!1518762)))

(assert (=> bs!1142481 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916108) (= lambda!222147 lambda!222127))))

(assert (=> bs!1142475 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222147 lambda!222085))))

(declare-fun bs!1142482 () Bool)

(assert (= bs!1142482 (and b!4751921 d!1518864)))

(assert (=> bs!1142482 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222147 lambda!222142))))

(declare-fun bs!1142483 () Bool)

(assert (= bs!1142483 (and b!4751921 b!4751337)))

(assert (=> bs!1142483 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222147 lambda!222099))))

(declare-fun bs!1142484 () Bool)

(assert (= bs!1142484 (and b!4751921 d!1518624)))

(assert (=> bs!1142484 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915907) (= lambda!222147 lambda!222104))))

(declare-fun bs!1142485 () Bool)

(assert (= bs!1142485 (and b!4751921 d!1518676)))

(assert (=> bs!1142485 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222147 lambda!222116))))

(declare-fun bs!1142486 () Bool)

(assert (= bs!1142486 (and b!4751921 b!4751723)))

(assert (=> bs!1142486 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222147 lambda!222134))))

(declare-fun bs!1142487 () Bool)

(assert (= bs!1142487 (and b!4751921 b!4751315)))

(assert (=> bs!1142487 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222147 lambda!222091))))

(declare-fun bs!1142488 () Bool)

(assert (= bs!1142488 (and b!4751921 d!1518686)))

(assert (=> bs!1142488 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916061) (= lambda!222147 lambda!222120))))

(declare-fun bs!1142489 () Bool)

(assert (= bs!1142489 (and b!4751921 b!4751338)))

(assert (=> bs!1142489 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222147 lambda!222097))))

(declare-fun bs!1142490 () Bool)

(assert (= bs!1142490 (and b!4751921 b!4751350)))

(assert (=> bs!1142490 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222147 lambda!222105))))

(declare-fun bs!1142491 () Bool)

(assert (= bs!1142491 (and b!4751921 d!1518706)))

(assert (=> bs!1142491 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222147 lambda!222122))))

(declare-fun bs!1142492 () Bool)

(assert (= bs!1142492 (and b!4751921 b!4751722)))

(assert (=> bs!1142492 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916203) (= lambda!222147 lambda!222136))))

(declare-fun bs!1142493 () Bool)

(assert (= bs!1142493 (and b!4751921 d!1518920)))

(assert (=> bs!1142493 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222147 lambda!222144))))

(declare-fun bs!1142494 () Bool)

(assert (= bs!1142494 (and b!4751921 d!1518790)))

(assert (=> bs!1142494 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916163) (= lambda!222147 lambda!222131))))

(declare-fun bs!1142495 () Bool)

(assert (= bs!1142495 (and b!4751921 d!1518942)))

(assert (=> bs!1142495 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222147 lambda!222145))))

(declare-fun bs!1142496 () Bool)

(assert (= bs!1142496 (and b!4751921 b!4751681)))

(assert (=> bs!1142496 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222147 lambda!222128))))

(assert (=> bs!1142492 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222147 lambda!222135))))

(declare-fun bs!1142497 () Bool)

(assert (= bs!1142497 (and b!4751921 b!4751267)))

(assert (=> bs!1142497 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222147 lambda!222067))))

(declare-fun bs!1142498 () Bool)

(assert (= bs!1142498 (and b!4751921 b!4751268)))

(assert (=> bs!1142498 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222147 lambda!222065))))

(declare-fun bs!1142499 () Bool)

(assert (= bs!1142499 (and b!4751921 b!4751535)))

(assert (=> bs!1142499 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222147 lambda!222117))))

(declare-fun bs!1142500 () Bool)

(assert (= bs!1142500 (and b!4751921 b!4751680)))

(assert (=> bs!1142500 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222147 lambda!222129))))

(declare-fun bs!1142501 () Bool)

(assert (= bs!1142501 (and b!4751921 b!4751626)))

(assert (=> bs!1142501 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222147 lambda!222124))))

(declare-fun bs!1142502 () Bool)

(assert (= bs!1142502 (and b!4751921 b!4751344)))

(assert (=> bs!1142502 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222147 lambda!222103))))

(assert (=> bs!1142470 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222147 lambda!222118))))

(declare-fun bs!1142503 () Bool)

(assert (= bs!1142503 (and b!4751921 b!4751922)))

(assert (=> bs!1142503 (= lambda!222147 lambda!222146)))

(assert (=> bs!1142479 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222147 lambda!222107))))

(assert (=> bs!1142480 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222147 lambda!222125))))

(assert (=> bs!1142487 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222147 lambda!222092))))

(declare-fun bs!1142504 () Bool)

(assert (= bs!1142504 (and b!4751921 d!1518832)))

(assert (=> bs!1142504 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222147 lambda!222138))))

(declare-fun bs!1142505 () Bool)

(assert (= bs!1142505 (and b!4751921 d!1518694)))

(assert (=> bs!1142505 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222147 lambda!222121))))

(declare-fun bs!1142506 () Bool)

(assert (= bs!1142506 (and b!4751921 b!4751345)))

(assert (=> bs!1142506 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222147 lambda!222101))))

(declare-fun bs!1142507 () Bool)

(assert (= bs!1142507 (and b!4751921 d!1518628)))

(assert (=> bs!1142507 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915928) (= lambda!222147 lambda!222108))))

(declare-fun bs!1142508 () Bool)

(assert (= bs!1142508 (and b!4751921 d!1518590)))

(assert (=> bs!1142508 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915758) (= lambda!222147 lambda!222081))))

(assert (=> bs!1142500 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916159) (= lambda!222147 lambda!222130))))

(declare-fun bs!1142509 () Bool)

(assert (= bs!1142509 (and b!4751921 b!4751316)))

(assert (=> bs!1142509 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222147 lambda!222089))))

(assert (=> bs!1142497 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222147 lambda!222066))))

(assert (=> bs!1142483 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222147 lambda!222098))))

(declare-fun bs!1142510 () Bool)

(assert (= bs!1142510 (and b!4751921 d!1518668)))

(assert (=> bs!1142510 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222147 lambda!222111))))

(declare-fun bs!1142511 () Bool)

(assert (= bs!1142511 (and b!4751921 d!1518618)))

(assert (=> bs!1142511 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915886) (= lambda!222147 lambda!222100))))

(declare-fun bs!1142512 () Bool)

(assert (= bs!1142512 (and b!4751921 d!1518604)))

(assert (=> bs!1142512 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1915833) (= lambda!222147 lambda!222094))))

(assert (=> bs!1142502 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222147 lambda!222102))))

(declare-fun bs!1142513 () Bool)

(assert (= bs!1142513 (and b!4751921 d!1518822)))

(assert (=> bs!1142513 (= (= (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916207) (= lambda!222147 lambda!222137))))

(assert (=> b!4751921 true))

(declare-fun lt!1916311 () ListMap!5541)

(declare-fun lambda!222148 () Int)

(assert (=> bs!1142469 (= (= lt!1916311 lt!1915675) (= lambda!222148 lambda!222069))))

(assert (=> bs!1142470 (= (= lt!1916311 lt!1916057) (= lambda!222148 lambda!222119))))

(assert (=> bs!1142471 (= (= lt!1916311 lt!1915800) (= lambda!222148 lambda!222088))))

(assert (=> bs!1142472 (= (= lt!1916311 lt!1915754) (= lambda!222148 lambda!222123))))

(assert (=> bs!1142473 (= (= lt!1916311 lt!1915754) (= lambda!222148 lambda!222079))))

(assert (=> bs!1142474 (= (= lt!1916311 lt!1915494) (= lambda!222148 lambda!222084))))

(assert (=> bs!1142473 (= (= lt!1916311 lt!1915497) (= lambda!222148 lambda!222078))))

(assert (=> bs!1142475 (= (= lt!1916311 lt!1915796) (= lambda!222148 lambda!222086))))

(assert (=> bs!1142476 (= (= lt!1916311 lt!1915829) (= lambda!222148 lambda!222133))))

(assert (=> bs!1142477 (= (= lt!1916311 lt!1915882) (= lambda!222148 lambda!222132))))

(assert (=> bs!1142478 (= (= lt!1916311 lt!1915497) (= lambda!222148 lambda!222077))))

(assert (=> bs!1142479 (= (= lt!1916311 (+!2382 lt!1915497 t!14174)) (= lambda!222148 lambda!222106))))

(assert (=> bs!1142480 (= (= lt!1916311 lt!1916104) (= lambda!222148 lambda!222126))))

(assert (=> bs!1142481 (= (= lt!1916311 lt!1916108) (= lambda!222148 lambda!222127))))

(assert (=> bs!1142475 (= (= lt!1916311 lt!1915494) (= lambda!222148 lambda!222085))))

(assert (=> bs!1142482 (= (= lt!1916311 lt!1915796) (= lambda!222148 lambda!222142))))

(assert (=> bs!1142483 (= (= lt!1916311 lt!1915882) (= lambda!222148 lambda!222099))))

(assert (=> bs!1142484 (= (= lt!1916311 lt!1915907) (= lambda!222148 lambda!222104))))

(assert (=> b!4751921 (= (= lt!1916311 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222148 lambda!222147))))

(assert (=> bs!1142485 (= (= lt!1916311 lt!1915903) (= lambda!222148 lambda!222116))))

(assert (=> bs!1142486 (= (= lt!1916311 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222148 lambda!222134))))

(assert (=> bs!1142487 (= (= lt!1916311 lt!1915497) (= lambda!222148 lambda!222091))))

(assert (=> bs!1142488 (= (= lt!1916311 lt!1916061) (= lambda!222148 lambda!222120))))

(assert (=> bs!1142489 (= (= lt!1916311 acc!1214) (= lambda!222148 lambda!222097))))

(assert (=> bs!1142490 (= (= lt!1916311 (+!2382 lt!1915497 t!14174)) (= lambda!222148 lambda!222105))))

(assert (=> bs!1142491 (= (= lt!1916311 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222148 lambda!222122))))

(assert (=> bs!1142492 (= (= lt!1916311 lt!1916203) (= lambda!222148 lambda!222136))))

(assert (=> bs!1142493 (= (= lt!1916311 lt!1915497) (= lambda!222148 lambda!222144))))

(assert (=> bs!1142494 (= (= lt!1916311 lt!1916163) (= lambda!222148 lambda!222131))))

(assert (=> bs!1142495 (= (= lt!1916311 lt!1915671) (= lambda!222148 lambda!222145))))

(assert (=> bs!1142496 (= (= lt!1916311 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222148 lambda!222128))))

(assert (=> bs!1142492 (= (= lt!1916311 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222148 lambda!222135))))

(assert (=> bs!1142497 (= (= lt!1916311 lt!1915671) (= lambda!222148 lambda!222067))))

(assert (=> bs!1142498 (= (= lt!1916311 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222148 lambda!222065))))

(assert (=> bs!1142499 (= (= lt!1916311 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222148 lambda!222117))))

(assert (=> bs!1142500 (= (= lt!1916311 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222148 lambda!222129))))

(assert (=> bs!1142501 (= (= lt!1916311 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222148 lambda!222124))))

(assert (=> bs!1142502 (= (= lt!1916311 lt!1915903) (= lambda!222148 lambda!222103))))

(assert (=> bs!1142470 (= (= lt!1916311 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222148 lambda!222118))))

(assert (=> bs!1142503 (= (= lt!1916311 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222148 lambda!222146))))

(assert (=> bs!1142479 (= (= lt!1916311 lt!1915924) (= lambda!222148 lambda!222107))))

(assert (=> bs!1142480 (= (= lt!1916311 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222148 lambda!222125))))

(assert (=> bs!1142487 (= (= lt!1916311 lt!1915829) (= lambda!222148 lambda!222092))))

(assert (=> bs!1142504 (= (= lt!1916311 acc!1214) (= lambda!222148 lambda!222138))))

(assert (=> bs!1142505 (= (= lt!1916311 (+!2382 lt!1915497 t!14174)) (= lambda!222148 lambda!222121))))

(assert (=> bs!1142506 (= (= lt!1916311 acc!1214) (= lambda!222148 lambda!222101))))

(assert (=> bs!1142507 (= (= lt!1916311 lt!1915928) (= lambda!222148 lambda!222108))))

(assert (=> bs!1142508 (= (= lt!1916311 lt!1915758) (= lambda!222148 lambda!222081))))

(assert (=> bs!1142500 (= (= lt!1916311 lt!1916159) (= lambda!222148 lambda!222130))))

(assert (=> bs!1142509 (= (= lt!1916311 lt!1915497) (= lambda!222148 lambda!222089))))

(assert (=> bs!1142497 (= (= lt!1916311 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222148 lambda!222066))))

(assert (=> bs!1142483 (= (= lt!1916311 acc!1214) (= lambda!222148 lambda!222098))))

(assert (=> bs!1142510 (= (= lt!1916311 lt!1915494) (= lambda!222148 lambda!222111))))

(assert (=> bs!1142511 (= (= lt!1916311 lt!1915886) (= lambda!222148 lambda!222100))))

(assert (=> bs!1142512 (= (= lt!1916311 lt!1915833) (= lambda!222148 lambda!222094))))

(assert (=> bs!1142502 (= (= lt!1916311 acc!1214) (= lambda!222148 lambda!222102))))

(assert (=> bs!1142513 (= (= lt!1916311 lt!1916207) (= lambda!222148 lambda!222137))))

(assert (=> b!4751921 true))

(declare-fun bs!1142514 () Bool)

(declare-fun d!1518944 () Bool)

(assert (= bs!1142514 (and d!1518944 d!1518558)))

(declare-fun lt!1916315 () ListMap!5541)

(declare-fun lambda!222149 () Int)

(assert (=> bs!1142514 (= (= lt!1916315 lt!1915675) (= lambda!222149 lambda!222069))))

(declare-fun bs!1142515 () Bool)

(assert (= bs!1142515 (and d!1518944 b!4751534)))

(assert (=> bs!1142515 (= (= lt!1916315 lt!1916057) (= lambda!222149 lambda!222119))))

(declare-fun bs!1142516 () Bool)

(assert (= bs!1142516 (and d!1518944 d!1518594)))

(assert (=> bs!1142516 (= (= lt!1916315 lt!1915800) (= lambda!222149 lambda!222088))))

(declare-fun bs!1142517 () Bool)

(assert (= bs!1142517 (and d!1518944 d!1518746)))

(assert (=> bs!1142517 (= (= lt!1916315 lt!1915754) (= lambda!222149 lambda!222123))))

(declare-fun bs!1142518 () Bool)

(assert (= bs!1142518 (and d!1518944 b!4751294)))

(assert (=> bs!1142518 (= (= lt!1916315 lt!1915754) (= lambda!222149 lambda!222079))))

(declare-fun bs!1142519 () Bool)

(assert (= bs!1142519 (and d!1518944 b!4751305)))

(assert (=> bs!1142519 (= (= lt!1916315 lt!1915494) (= lambda!222149 lambda!222084))))

(assert (=> bs!1142518 (= (= lt!1916315 lt!1915497) (= lambda!222149 lambda!222078))))

(declare-fun bs!1142520 () Bool)

(assert (= bs!1142520 (and d!1518944 b!4751304)))

(assert (=> bs!1142520 (= (= lt!1916315 lt!1915796) (= lambda!222149 lambda!222086))))

(declare-fun bs!1142521 () Bool)

(assert (= bs!1142521 (and d!1518944 d!1518806)))

(assert (=> bs!1142521 (= (= lt!1916315 lt!1915829) (= lambda!222149 lambda!222133))))

(declare-fun bs!1142522 () Bool)

(assert (= bs!1142522 (and d!1518944 d!1518796)))

(assert (=> bs!1142522 (= (= lt!1916315 lt!1915882) (= lambda!222149 lambda!222132))))

(declare-fun bs!1142523 () Bool)

(assert (= bs!1142523 (and d!1518944 b!4751921)))

(assert (=> bs!1142523 (= (= lt!1916315 lt!1916311) (= lambda!222149 lambda!222148))))

(declare-fun bs!1142524 () Bool)

(assert (= bs!1142524 (and d!1518944 b!4751295)))

(assert (=> bs!1142524 (= (= lt!1916315 lt!1915497) (= lambda!222149 lambda!222077))))

(declare-fun bs!1142525 () Bool)

(assert (= bs!1142525 (and d!1518944 b!4751349)))

(assert (=> bs!1142525 (= (= lt!1916315 (+!2382 lt!1915497 t!14174)) (= lambda!222149 lambda!222106))))

(declare-fun bs!1142526 () Bool)

(assert (= bs!1142526 (and d!1518944 b!4751625)))

(assert (=> bs!1142526 (= (= lt!1916315 lt!1916104) (= lambda!222149 lambda!222126))))

(declare-fun bs!1142527 () Bool)

(assert (= bs!1142527 (and d!1518944 d!1518762)))

(assert (=> bs!1142527 (= (= lt!1916315 lt!1916108) (= lambda!222149 lambda!222127))))

(assert (=> bs!1142520 (= (= lt!1916315 lt!1915494) (= lambda!222149 lambda!222085))))

(declare-fun bs!1142528 () Bool)

(assert (= bs!1142528 (and d!1518944 d!1518864)))

(assert (=> bs!1142528 (= (= lt!1916315 lt!1915796) (= lambda!222149 lambda!222142))))

(declare-fun bs!1142529 () Bool)

(assert (= bs!1142529 (and d!1518944 b!4751337)))

(assert (=> bs!1142529 (= (= lt!1916315 lt!1915882) (= lambda!222149 lambda!222099))))

(declare-fun bs!1142530 () Bool)

(assert (= bs!1142530 (and d!1518944 d!1518624)))

(assert (=> bs!1142530 (= (= lt!1916315 lt!1915907) (= lambda!222149 lambda!222104))))

(assert (=> bs!1142523 (= (= lt!1916315 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222149 lambda!222147))))

(declare-fun bs!1142531 () Bool)

(assert (= bs!1142531 (and d!1518944 d!1518676)))

(assert (=> bs!1142531 (= (= lt!1916315 lt!1915903) (= lambda!222149 lambda!222116))))

(declare-fun bs!1142532 () Bool)

(assert (= bs!1142532 (and d!1518944 b!4751723)))

(assert (=> bs!1142532 (= (= lt!1916315 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222149 lambda!222134))))

(declare-fun bs!1142533 () Bool)

(assert (= bs!1142533 (and d!1518944 b!4751315)))

(assert (=> bs!1142533 (= (= lt!1916315 lt!1915497) (= lambda!222149 lambda!222091))))

(declare-fun bs!1142534 () Bool)

(assert (= bs!1142534 (and d!1518944 d!1518686)))

(assert (=> bs!1142534 (= (= lt!1916315 lt!1916061) (= lambda!222149 lambda!222120))))

(declare-fun bs!1142535 () Bool)

(assert (= bs!1142535 (and d!1518944 b!4751338)))

(assert (=> bs!1142535 (= (= lt!1916315 acc!1214) (= lambda!222149 lambda!222097))))

(declare-fun bs!1142536 () Bool)

(assert (= bs!1142536 (and d!1518944 b!4751350)))

(assert (=> bs!1142536 (= (= lt!1916315 (+!2382 lt!1915497 t!14174)) (= lambda!222149 lambda!222105))))

(declare-fun bs!1142537 () Bool)

(assert (= bs!1142537 (and d!1518944 d!1518706)))

(assert (=> bs!1142537 (= (= lt!1916315 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222149 lambda!222122))))

(declare-fun bs!1142538 () Bool)

(assert (= bs!1142538 (and d!1518944 b!4751722)))

(assert (=> bs!1142538 (= (= lt!1916315 lt!1916203) (= lambda!222149 lambda!222136))))

(declare-fun bs!1142539 () Bool)

(assert (= bs!1142539 (and d!1518944 d!1518920)))

(assert (=> bs!1142539 (= (= lt!1916315 lt!1915497) (= lambda!222149 lambda!222144))))

(declare-fun bs!1142540 () Bool)

(assert (= bs!1142540 (and d!1518944 d!1518790)))

(assert (=> bs!1142540 (= (= lt!1916315 lt!1916163) (= lambda!222149 lambda!222131))))

(declare-fun bs!1142541 () Bool)

(assert (= bs!1142541 (and d!1518944 d!1518942)))

(assert (=> bs!1142541 (= (= lt!1916315 lt!1915671) (= lambda!222149 lambda!222145))))

(declare-fun bs!1142542 () Bool)

(assert (= bs!1142542 (and d!1518944 b!4751681)))

(assert (=> bs!1142542 (= (= lt!1916315 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222149 lambda!222128))))

(assert (=> bs!1142538 (= (= lt!1916315 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222149 lambda!222135))))

(declare-fun bs!1142543 () Bool)

(assert (= bs!1142543 (and d!1518944 b!4751267)))

(assert (=> bs!1142543 (= (= lt!1916315 lt!1915671) (= lambda!222149 lambda!222067))))

(declare-fun bs!1142544 () Bool)

(assert (= bs!1142544 (and d!1518944 b!4751268)))

(assert (=> bs!1142544 (= (= lt!1916315 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222149 lambda!222065))))

(declare-fun bs!1142545 () Bool)

(assert (= bs!1142545 (and d!1518944 b!4751535)))

(assert (=> bs!1142545 (= (= lt!1916315 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222149 lambda!222117))))

(declare-fun bs!1142546 () Bool)

(assert (= bs!1142546 (and d!1518944 b!4751680)))

(assert (=> bs!1142546 (= (= lt!1916315 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222149 lambda!222129))))

(declare-fun bs!1142547 () Bool)

(assert (= bs!1142547 (and d!1518944 b!4751626)))

(assert (=> bs!1142547 (= (= lt!1916315 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222149 lambda!222124))))

(declare-fun bs!1142548 () Bool)

(assert (= bs!1142548 (and d!1518944 b!4751344)))

(assert (=> bs!1142548 (= (= lt!1916315 lt!1915903) (= lambda!222149 lambda!222103))))

(assert (=> bs!1142515 (= (= lt!1916315 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222149 lambda!222118))))

(declare-fun bs!1142549 () Bool)

(assert (= bs!1142549 (and d!1518944 b!4751922)))

(assert (=> bs!1142549 (= (= lt!1916315 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222149 lambda!222146))))

(assert (=> bs!1142525 (= (= lt!1916315 lt!1915924) (= lambda!222149 lambda!222107))))

(assert (=> bs!1142526 (= (= lt!1916315 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222149 lambda!222125))))

(assert (=> bs!1142533 (= (= lt!1916315 lt!1915829) (= lambda!222149 lambda!222092))))

(declare-fun bs!1142550 () Bool)

(assert (= bs!1142550 (and d!1518944 d!1518832)))

(assert (=> bs!1142550 (= (= lt!1916315 acc!1214) (= lambda!222149 lambda!222138))))

(declare-fun bs!1142551 () Bool)

(assert (= bs!1142551 (and d!1518944 d!1518694)))

(assert (=> bs!1142551 (= (= lt!1916315 (+!2382 lt!1915497 t!14174)) (= lambda!222149 lambda!222121))))

(declare-fun bs!1142552 () Bool)

(assert (= bs!1142552 (and d!1518944 b!4751345)))

(assert (=> bs!1142552 (= (= lt!1916315 acc!1214) (= lambda!222149 lambda!222101))))

(declare-fun bs!1142553 () Bool)

(assert (= bs!1142553 (and d!1518944 d!1518628)))

(assert (=> bs!1142553 (= (= lt!1916315 lt!1915928) (= lambda!222149 lambda!222108))))

(declare-fun bs!1142554 () Bool)

(assert (= bs!1142554 (and d!1518944 d!1518590)))

(assert (=> bs!1142554 (= (= lt!1916315 lt!1915758) (= lambda!222149 lambda!222081))))

(assert (=> bs!1142546 (= (= lt!1916315 lt!1916159) (= lambda!222149 lambda!222130))))

(declare-fun bs!1142555 () Bool)

(assert (= bs!1142555 (and d!1518944 b!4751316)))

(assert (=> bs!1142555 (= (= lt!1916315 lt!1915497) (= lambda!222149 lambda!222089))))

(assert (=> bs!1142543 (= (= lt!1916315 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222149 lambda!222066))))

(assert (=> bs!1142529 (= (= lt!1916315 acc!1214) (= lambda!222149 lambda!222098))))

(declare-fun bs!1142556 () Bool)

(assert (= bs!1142556 (and d!1518944 d!1518668)))

(assert (=> bs!1142556 (= (= lt!1916315 lt!1915494) (= lambda!222149 lambda!222111))))

(declare-fun bs!1142557 () Bool)

(assert (= bs!1142557 (and d!1518944 d!1518618)))

(assert (=> bs!1142557 (= (= lt!1916315 lt!1915886) (= lambda!222149 lambda!222100))))

(declare-fun bs!1142558 () Bool)

(assert (= bs!1142558 (and d!1518944 d!1518604)))

(assert (=> bs!1142558 (= (= lt!1916315 lt!1915833) (= lambda!222149 lambda!222094))))

(assert (=> bs!1142548 (= (= lt!1916315 acc!1214) (= lambda!222149 lambda!222102))))

(declare-fun bs!1142559 () Bool)

(assert (= bs!1142559 (and d!1518944 d!1518822)))

(assert (=> bs!1142559 (= (= lt!1916315 lt!1916207) (= lambda!222149 lambda!222137))))

(assert (=> d!1518944 true))

(declare-fun e!2964250 () Bool)

(assert (=> d!1518944 e!2964250))

(declare-fun res!2015150 () Bool)

(assert (=> d!1518944 (=> (not res!2015150) (not e!2964250))))

(assert (=> d!1518944 (= res!2015150 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222149))))

(declare-fun e!2964251 () ListMap!5541)

(assert (=> d!1518944 (= lt!1916315 e!2964251)))

(declare-fun c!811349 () Bool)

(assert (=> d!1518944 (= c!811349 ((_ is Nil!53086) (t!360542 (t!360542 l!14304))))))

(assert (=> d!1518944 (noDuplicateKeys!2148 (t!360542 (t!360542 l!14304)))))

(assert (=> d!1518944 (= (addToMapMapFromBucket!1572 (t!360542 (t!360542 l!14304)) (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) lt!1916315)))

(assert (=> b!4751921 (= e!2964251 lt!1916311)))

(declare-fun lt!1916312 () ListMap!5541)

(assert (=> b!4751921 (= lt!1916312 (+!2382 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (h!59483 (t!360542 (t!360542 l!14304)))))))

(assert (=> b!4751921 (= lt!1916311 (addToMapMapFromBucket!1572 (t!360542 (t!360542 (t!360542 l!14304))) (+!2382 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) (h!59483 (t!360542 (t!360542 l!14304))))))))

(declare-fun lt!1916318 () Unit!135894)

(declare-fun call!332940 () Unit!135894)

(assert (=> b!4751921 (= lt!1916318 call!332940)))

(assert (=> b!4751921 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) lambda!222147)))

(declare-fun lt!1916305 () Unit!135894)

(assert (=> b!4751921 (= lt!1916305 lt!1916318)))

(declare-fun call!332942 () Bool)

(assert (=> b!4751921 call!332942))

(declare-fun lt!1916322 () Unit!135894)

(declare-fun Unit!136180 () Unit!135894)

(assert (=> b!4751921 (= lt!1916322 Unit!136180)))

(assert (=> b!4751921 (forall!11762 (t!360542 (t!360542 (t!360542 l!14304))) lambda!222148)))

(declare-fun lt!1916307 () Unit!135894)

(declare-fun Unit!136181 () Unit!135894)

(assert (=> b!4751921 (= lt!1916307 Unit!136181)))

(declare-fun lt!1916316 () Unit!135894)

(declare-fun Unit!136182 () Unit!135894)

(assert (=> b!4751921 (= lt!1916316 Unit!136182)))

(declare-fun lt!1916309 () Unit!135894)

(assert (=> b!4751921 (= lt!1916309 (forallContained!3788 (toList!6116 lt!1916312) lambda!222148 (h!59483 (t!360542 (t!360542 l!14304)))))))

(assert (=> b!4751921 (contains!16509 lt!1916312 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun lt!1916317 () Unit!135894)

(declare-fun Unit!136183 () Unit!135894)

(assert (=> b!4751921 (= lt!1916317 Unit!136183)))

(assert (=> b!4751921 (contains!16509 lt!1916311 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun lt!1916319 () Unit!135894)

(declare-fun Unit!136184 () Unit!135894)

(assert (=> b!4751921 (= lt!1916319 Unit!136184)))

(assert (=> b!4751921 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222148)))

(declare-fun lt!1916302 () Unit!135894)

(declare-fun Unit!136185 () Unit!135894)

(assert (=> b!4751921 (= lt!1916302 Unit!136185)))

(assert (=> b!4751921 (forall!11762 (toList!6116 lt!1916312) lambda!222148)))

(declare-fun lt!1916308 () Unit!135894)

(declare-fun Unit!136186 () Unit!135894)

(assert (=> b!4751921 (= lt!1916308 Unit!136186)))

(declare-fun lt!1916304 () Unit!135894)

(declare-fun Unit!136187 () Unit!135894)

(assert (=> b!4751921 (= lt!1916304 Unit!136187)))

(declare-fun lt!1916306 () Unit!135894)

(assert (=> b!4751921 (= lt!1916306 (addForallContainsKeyThenBeforeAdding!876 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))) lt!1916311 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))) (_2!30722 (h!59483 (t!360542 (t!360542 l!14304))))))))

(assert (=> b!4751921 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) lambda!222148)))

(declare-fun lt!1916320 () Unit!135894)

(assert (=> b!4751921 (= lt!1916320 lt!1916306)))

(assert (=> b!4751921 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) lambda!222148)))

(declare-fun lt!1916313 () Unit!135894)

(declare-fun Unit!136188 () Unit!135894)

(assert (=> b!4751921 (= lt!1916313 Unit!136188)))

(declare-fun res!2015152 () Bool)

(assert (=> b!4751921 (= res!2015152 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222148))))

(declare-fun e!2964249 () Bool)

(assert (=> b!4751921 (=> (not res!2015152) (not e!2964249))))

(assert (=> b!4751921 e!2964249))

(declare-fun lt!1916314 () Unit!135894)

(declare-fun Unit!136189 () Unit!135894)

(assert (=> b!4751921 (= lt!1916314 Unit!136189)))

(declare-fun bm!332935 () Bool)

(assert (=> bm!332935 (= call!332942 (forall!11762 (ite c!811349 (toList!6116 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (toList!6116 lt!1916312)) (ite c!811349 lambda!222146 lambda!222148)))))

(assert (=> b!4751922 (= e!2964251 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1916310 () Unit!135894)

(assert (=> b!4751922 (= lt!1916310 call!332940)))

(declare-fun call!332941 () Bool)

(assert (=> b!4751922 call!332941))

(declare-fun lt!1916321 () Unit!135894)

(assert (=> b!4751922 (= lt!1916321 lt!1916310)))

(assert (=> b!4751922 call!332942))

(declare-fun lt!1916303 () Unit!135894)

(declare-fun Unit!136190 () Unit!135894)

(assert (=> b!4751922 (= lt!1916303 Unit!136190)))

(declare-fun b!4751923 () Bool)

(assert (=> b!4751923 (= e!2964250 (invariantList!1594 (toList!6116 lt!1916315)))))

(declare-fun bm!332936 () Bool)

(assert (=> bm!332936 (= call!332941 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (ite c!811349 lambda!222146 lambda!222148)))))

(declare-fun bm!332937 () Bool)

(assert (=> bm!332937 (= call!332940 (lemmaContainsAllItsOwnKeys!877 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))))))

(declare-fun b!4751924 () Bool)

(assert (=> b!4751924 (= e!2964249 call!332941)))

(declare-fun b!4751925 () Bool)

(declare-fun res!2015151 () Bool)

(assert (=> b!4751925 (=> (not res!2015151) (not e!2964250))))

(assert (=> b!4751925 (= res!2015151 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) lambda!222149))))

(assert (= (and d!1518944 c!811349) b!4751922))

(assert (= (and d!1518944 (not c!811349)) b!4751921))

(assert (= (and b!4751921 res!2015152) b!4751924))

(assert (= (or b!4751922 b!4751921) bm!332937))

(assert (= (or b!4751922 b!4751921) bm!332935))

(assert (= (or b!4751922 b!4751924) bm!332936))

(assert (= (and d!1518944 res!2015150) b!4751925))

(assert (= (and b!4751925 res!2015151) b!4751923))

(declare-fun m!5715375 () Bool)

(assert (=> d!1518944 m!5715375))

(assert (=> d!1518944 m!5714521))

(declare-fun m!5715377 () Bool)

(assert (=> bm!332935 m!5715377))

(assert (=> bm!332937 m!5713697))

(declare-fun m!5715379 () Bool)

(assert (=> bm!332937 m!5715379))

(declare-fun m!5715381 () Bool)

(assert (=> b!4751923 m!5715381))

(declare-fun m!5715383 () Bool)

(assert (=> b!4751921 m!5715383))

(declare-fun m!5715385 () Bool)

(assert (=> b!4751921 m!5715385))

(declare-fun m!5715387 () Bool)

(assert (=> b!4751921 m!5715387))

(declare-fun m!5715389 () Bool)

(assert (=> b!4751921 m!5715389))

(declare-fun m!5715391 () Bool)

(assert (=> b!4751921 m!5715391))

(assert (=> b!4751921 m!5713697))

(assert (=> b!4751921 m!5715385))

(declare-fun m!5715393 () Bool)

(assert (=> b!4751921 m!5715393))

(declare-fun m!5715395 () Bool)

(assert (=> b!4751921 m!5715395))

(assert (=> b!4751921 m!5715389))

(declare-fun m!5715397 () Bool)

(assert (=> b!4751921 m!5715397))

(declare-fun m!5715399 () Bool)

(assert (=> b!4751921 m!5715399))

(assert (=> b!4751921 m!5713697))

(declare-fun m!5715401 () Bool)

(assert (=> b!4751921 m!5715401))

(declare-fun m!5715403 () Bool)

(assert (=> b!4751921 m!5715403))

(assert (=> b!4751921 m!5715399))

(declare-fun m!5715405 () Bool)

(assert (=> bm!332936 m!5715405))

(declare-fun m!5715407 () Bool)

(assert (=> b!4751925 m!5715407))

(assert (=> b!4751267 d!1518944))

(declare-fun b!4751957 () Bool)

(declare-fun e!2964278 () List!53211)

(assert (=> b!4751957 (= e!2964278 (getKeysList!1003 (toList!6116 lt!1915672)))))

(declare-fun b!4751958 () Bool)

(declare-fun e!2964276 () Unit!135894)

(declare-fun e!2964279 () Unit!135894)

(assert (=> b!4751958 (= e!2964276 e!2964279)))

(declare-fun c!811360 () Bool)

(declare-fun call!332946 () Bool)

(assert (=> b!4751958 (= c!811360 call!332946)))

(declare-fun b!4751959 () Bool)

(declare-fun e!2964274 () Bool)

(assert (=> b!4751959 (= e!2964274 (not (contains!16512 (keys!19162 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751960 () Bool)

(assert (=> b!4751960 (= e!2964278 (keys!19162 lt!1915672))))

(declare-fun b!4751961 () Bool)

(declare-fun Unit!136191 () Unit!135894)

(assert (=> b!4751961 (= e!2964279 Unit!136191)))

(declare-fun b!4751962 () Bool)

(declare-fun e!2964277 () Bool)

(declare-fun e!2964275 () Bool)

(assert (=> b!4751962 (= e!2964277 e!2964275)))

(declare-fun res!2015166 () Bool)

(assert (=> b!4751962 (=> (not res!2015166) (not e!2964275))))

(assert (=> b!4751962 (= res!2015166 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751963 () Bool)

(declare-fun lt!1916348 () Unit!135894)

(assert (=> b!4751963 (= e!2964276 lt!1916348)))

(declare-fun lt!1916351 () Unit!135894)

(assert (=> b!4751963 (= lt!1916351 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751963 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916350 () Unit!135894)

(assert (=> b!4751963 (= lt!1916350 lt!1916351)))

(assert (=> b!4751963 (= lt!1916348 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751963 call!332946))

(declare-fun b!4751964 () Bool)

(assert (=> b!4751964 (= e!2964275 (contains!16512 (keys!19162 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun d!1518952 () Bool)

(assert (=> d!1518952 e!2964277))

(declare-fun res!2015167 () Bool)

(assert (=> d!1518952 (=> res!2015167 e!2964277)))

(assert (=> d!1518952 (= res!2015167 e!2964274)))

(declare-fun res!2015168 () Bool)

(assert (=> d!1518952 (=> (not res!2015168) (not e!2964274))))

(declare-fun lt!1916347 () Bool)

(assert (=> d!1518952 (= res!2015168 (not lt!1916347))))

(declare-fun lt!1916353 () Bool)

(assert (=> d!1518952 (= lt!1916347 lt!1916353)))

(declare-fun lt!1916349 () Unit!135894)

(assert (=> d!1518952 (= lt!1916349 e!2964276)))

(declare-fun c!811359 () Bool)

(assert (=> d!1518952 (= c!811359 lt!1916353)))

(assert (=> d!1518952 (= lt!1916353 (containsKey!3558 (toList!6116 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518952 (= (contains!16509 lt!1915672 (_1!30722 (h!59483 (t!360542 l!14304)))) lt!1916347)))

(declare-fun b!4751965 () Bool)

(assert (=> b!4751965 false))

(declare-fun lt!1916354 () Unit!135894)

(declare-fun lt!1916352 () Unit!135894)

(assert (=> b!4751965 (= lt!1916354 lt!1916352)))

(assert (=> b!4751965 (containsKey!3558 (toList!6116 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751965 (= lt!1916352 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915672) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun Unit!136192 () Unit!135894)

(assert (=> b!4751965 (= e!2964279 Unit!136192)))

(declare-fun bm!332941 () Bool)

(assert (=> bm!332941 (= call!332946 (contains!16512 e!2964278 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun c!811361 () Bool)

(assert (=> bm!332941 (= c!811361 c!811359)))

(assert (= (and d!1518952 c!811359) b!4751963))

(assert (= (and d!1518952 (not c!811359)) b!4751958))

(assert (= (and b!4751958 c!811360) b!4751965))

(assert (= (and b!4751958 (not c!811360)) b!4751961))

(assert (= (or b!4751963 b!4751958) bm!332941))

(assert (= (and bm!332941 c!811361) b!4751957))

(assert (= (and bm!332941 (not c!811361)) b!4751960))

(assert (= (and d!1518952 res!2015168) b!4751959))

(assert (= (and d!1518952 (not res!2015167)) b!4751962))

(assert (= (and b!4751962 res!2015166) b!4751964))

(declare-fun m!5715409 () Bool)

(assert (=> b!4751957 m!5715409))

(declare-fun m!5715411 () Bool)

(assert (=> b!4751959 m!5715411))

(assert (=> b!4751959 m!5715411))

(declare-fun m!5715413 () Bool)

(assert (=> b!4751959 m!5715413))

(assert (=> b!4751964 m!5715411))

(assert (=> b!4751964 m!5715411))

(assert (=> b!4751964 m!5715413))

(declare-fun m!5715415 () Bool)

(assert (=> bm!332941 m!5715415))

(declare-fun m!5715417 () Bool)

(assert (=> b!4751962 m!5715417))

(assert (=> b!4751962 m!5715417))

(declare-fun m!5715419 () Bool)

(assert (=> b!4751962 m!5715419))

(declare-fun m!5715421 () Bool)

(assert (=> d!1518952 m!5715421))

(assert (=> b!4751965 m!5715421))

(declare-fun m!5715423 () Bool)

(assert (=> b!4751965 m!5715423))

(assert (=> b!4751960 m!5715411))

(declare-fun m!5715425 () Bool)

(assert (=> b!4751963 m!5715425))

(assert (=> b!4751963 m!5715417))

(assert (=> b!4751963 m!5715417))

(assert (=> b!4751963 m!5715419))

(declare-fun m!5715427 () Bool)

(assert (=> b!4751963 m!5715427))

(assert (=> b!4751267 d!1518952))

(declare-fun d!1518954 () Bool)

(declare-fun res!2015171 () Bool)

(declare-fun e!2964282 () Bool)

(assert (=> d!1518954 (=> res!2015171 e!2964282)))

(assert (=> d!1518954 (= res!2015171 ((_ is Nil!53086) (t!360542 l!14304)))))

(assert (=> d!1518954 (= (forall!11762 (t!360542 l!14304) lambda!222107) e!2964282)))

(declare-fun b!4751968 () Bool)

(declare-fun e!2964283 () Bool)

(assert (=> b!4751968 (= e!2964282 e!2964283)))

(declare-fun res!2015172 () Bool)

(assert (=> b!4751968 (=> (not res!2015172) (not e!2964283))))

(assert (=> b!4751968 (= res!2015172 (dynLambda!21900 lambda!222107 (h!59483 (t!360542 l!14304))))))

(declare-fun b!4751969 () Bool)

(assert (=> b!4751969 (= e!2964283 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222107))))

(assert (= (and d!1518954 (not res!2015171)) b!4751968))

(assert (= (and b!4751968 res!2015172) b!4751969))

(declare-fun b_lambda!183321 () Bool)

(assert (=> (not b_lambda!183321) (not b!4751968)))

(declare-fun m!5715429 () Bool)

(assert (=> b!4751968 m!5715429))

(assert (=> b!4751969 m!5714143))

(assert (=> b!4751349 d!1518954))

(declare-fun d!1518956 () Bool)

(declare-fun res!2015174 () Bool)

(declare-fun e!2964285 () Bool)

(assert (=> d!1518956 (=> res!2015174 e!2964285)))

(assert (=> d!1518956 (= res!2015174 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915497 t!14174))))))

(assert (=> d!1518956 (= (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222107) e!2964285)))

(declare-fun b!4751971 () Bool)

(declare-fun e!2964286 () Bool)

(assert (=> b!4751971 (= e!2964285 e!2964286)))

(declare-fun res!2015175 () Bool)

(assert (=> b!4751971 (=> (not res!2015175) (not e!2964286))))

(assert (=> b!4751971 (= res!2015175 (dynLambda!21900 lambda!222107 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174)))))))

(declare-fun b!4751972 () Bool)

(assert (=> b!4751972 (= e!2964286 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915497 t!14174))) lambda!222107))))

(assert (= (and d!1518956 (not res!2015174)) b!4751971))

(assert (= (and b!4751971 res!2015175) b!4751972))

(declare-fun b_lambda!183325 () Bool)

(assert (=> (not b_lambda!183325) (not b!4751971)))

(declare-fun m!5715437 () Bool)

(assert (=> b!4751971 m!5715437))

(declare-fun m!5715439 () Bool)

(assert (=> b!4751972 m!5715439))

(assert (=> b!4751349 d!1518956))

(declare-fun d!1518960 () Bool)

(declare-fun res!2015176 () Bool)

(declare-fun e!2964287 () Bool)

(assert (=> d!1518960 (=> res!2015176 e!2964287)))

(assert (=> d!1518960 (= res!2015176 ((_ is Nil!53086) (t!360542 (t!360542 l!14304))))))

(assert (=> d!1518960 (= (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222107) e!2964287)))

(declare-fun b!4751973 () Bool)

(declare-fun e!2964288 () Bool)

(assert (=> b!4751973 (= e!2964287 e!2964288)))

(declare-fun res!2015177 () Bool)

(assert (=> b!4751973 (=> (not res!2015177) (not e!2964288))))

(assert (=> b!4751973 (= res!2015177 (dynLambda!21900 lambda!222107 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun b!4751974 () Bool)

(assert (=> b!4751974 (= e!2964288 (forall!11762 (t!360542 (t!360542 (t!360542 l!14304))) lambda!222107))))

(assert (= (and d!1518960 (not res!2015176)) b!4751973))

(assert (= (and b!4751973 res!2015177) b!4751974))

(declare-fun b_lambda!183327 () Bool)

(assert (=> (not b_lambda!183327) (not b!4751973)))

(declare-fun m!5715441 () Bool)

(assert (=> b!4751973 m!5715441))

(declare-fun m!5715443 () Bool)

(assert (=> b!4751974 m!5715443))

(assert (=> b!4751349 d!1518960))

(declare-fun d!1518962 () Bool)

(declare-fun res!2015178 () Bool)

(declare-fun e!2964289 () Bool)

(assert (=> d!1518962 (=> res!2015178 e!2964289)))

(assert (=> d!1518962 (= res!2015178 ((_ is Nil!53086) (toList!6116 lt!1915925)))))

(assert (=> d!1518962 (= (forall!11762 (toList!6116 lt!1915925) lambda!222107) e!2964289)))

(declare-fun b!4751975 () Bool)

(declare-fun e!2964290 () Bool)

(assert (=> b!4751975 (= e!2964289 e!2964290)))

(declare-fun res!2015179 () Bool)

(assert (=> b!4751975 (=> (not res!2015179) (not e!2964290))))

(assert (=> b!4751975 (= res!2015179 (dynLambda!21900 lambda!222107 (h!59483 (toList!6116 lt!1915925))))))

(declare-fun b!4751976 () Bool)

(assert (=> b!4751976 (= e!2964290 (forall!11762 (t!360542 (toList!6116 lt!1915925)) lambda!222107))))

(assert (= (and d!1518962 (not res!2015178)) b!4751975))

(assert (= (and b!4751975 res!2015179) b!4751976))

(declare-fun b_lambda!183329 () Bool)

(assert (=> (not b_lambda!183329) (not b!4751975)))

(declare-fun m!5715445 () Bool)

(assert (=> b!4751975 m!5715445))

(declare-fun m!5715447 () Bool)

(assert (=> b!4751976 m!5715447))

(assert (=> b!4751349 d!1518962))

(declare-fun b!4751977 () Bool)

(declare-fun e!2964295 () List!53211)

(assert (=> b!4751977 (= e!2964295 (getKeysList!1003 (toList!6116 lt!1915925)))))

(declare-fun b!4751978 () Bool)

(declare-fun e!2964293 () Unit!135894)

(declare-fun e!2964296 () Unit!135894)

(assert (=> b!4751978 (= e!2964293 e!2964296)))

(declare-fun c!811363 () Bool)

(declare-fun call!332947 () Bool)

(assert (=> b!4751978 (= c!811363 call!332947)))

(declare-fun b!4751979 () Bool)

(declare-fun e!2964291 () Bool)

(assert (=> b!4751979 (= e!2964291 (not (contains!16512 (keys!19162 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751980 () Bool)

(assert (=> b!4751980 (= e!2964295 (keys!19162 lt!1915925))))

(declare-fun b!4751981 () Bool)

(declare-fun Unit!136193 () Unit!135894)

(assert (=> b!4751981 (= e!2964296 Unit!136193)))

(declare-fun b!4751982 () Bool)

(declare-fun e!2964294 () Bool)

(declare-fun e!2964292 () Bool)

(assert (=> b!4751982 (= e!2964294 e!2964292)))

(declare-fun res!2015180 () Bool)

(assert (=> b!4751982 (=> (not res!2015180) (not e!2964292))))

(assert (=> b!4751982 (= res!2015180 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751983 () Bool)

(declare-fun lt!1916359 () Unit!135894)

(assert (=> b!4751983 (= e!2964293 lt!1916359)))

(declare-fun lt!1916362 () Unit!135894)

(assert (=> b!4751983 (= lt!1916362 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751983 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916361 () Unit!135894)

(assert (=> b!4751983 (= lt!1916361 lt!1916362)))

(assert (=> b!4751983 (= lt!1916359 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751983 call!332947))

(declare-fun b!4751984 () Bool)

(assert (=> b!4751984 (= e!2964292 (contains!16512 (keys!19162 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun d!1518964 () Bool)

(assert (=> d!1518964 e!2964294))

(declare-fun res!2015181 () Bool)

(assert (=> d!1518964 (=> res!2015181 e!2964294)))

(assert (=> d!1518964 (= res!2015181 e!2964291)))

(declare-fun res!2015182 () Bool)

(assert (=> d!1518964 (=> (not res!2015182) (not e!2964291))))

(declare-fun lt!1916358 () Bool)

(assert (=> d!1518964 (= res!2015182 (not lt!1916358))))

(declare-fun lt!1916364 () Bool)

(assert (=> d!1518964 (= lt!1916358 lt!1916364)))

(declare-fun lt!1916360 () Unit!135894)

(assert (=> d!1518964 (= lt!1916360 e!2964293)))

(declare-fun c!811362 () Bool)

(assert (=> d!1518964 (= c!811362 lt!1916364)))

(assert (=> d!1518964 (= lt!1916364 (containsKey!3558 (toList!6116 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518964 (= (contains!16509 lt!1915925 (_1!30722 (h!59483 (t!360542 l!14304)))) lt!1916358)))

(declare-fun b!4751985 () Bool)

(assert (=> b!4751985 false))

(declare-fun lt!1916365 () Unit!135894)

(declare-fun lt!1916363 () Unit!135894)

(assert (=> b!4751985 (= lt!1916365 lt!1916363)))

(assert (=> b!4751985 (containsKey!3558 (toList!6116 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751985 (= lt!1916363 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915925) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun Unit!136194 () Unit!135894)

(assert (=> b!4751985 (= e!2964296 Unit!136194)))

(declare-fun bm!332942 () Bool)

(assert (=> bm!332942 (= call!332947 (contains!16512 e!2964295 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun c!811364 () Bool)

(assert (=> bm!332942 (= c!811364 c!811362)))

(assert (= (and d!1518964 c!811362) b!4751983))

(assert (= (and d!1518964 (not c!811362)) b!4751978))

(assert (= (and b!4751978 c!811363) b!4751985))

(assert (= (and b!4751978 (not c!811363)) b!4751981))

(assert (= (or b!4751983 b!4751978) bm!332942))

(assert (= (and bm!332942 c!811364) b!4751977))

(assert (= (and bm!332942 (not c!811364)) b!4751980))

(assert (= (and d!1518964 res!2015182) b!4751979))

(assert (= (and d!1518964 (not res!2015181)) b!4751982))

(assert (= (and b!4751982 res!2015180) b!4751984))

(declare-fun m!5715449 () Bool)

(assert (=> b!4751977 m!5715449))

(declare-fun m!5715451 () Bool)

(assert (=> b!4751979 m!5715451))

(assert (=> b!4751979 m!5715451))

(declare-fun m!5715453 () Bool)

(assert (=> b!4751979 m!5715453))

(assert (=> b!4751984 m!5715451))

(assert (=> b!4751984 m!5715451))

(assert (=> b!4751984 m!5715453))

(declare-fun m!5715455 () Bool)

(assert (=> bm!332942 m!5715455))

(declare-fun m!5715457 () Bool)

(assert (=> b!4751982 m!5715457))

(assert (=> b!4751982 m!5715457))

(declare-fun m!5715459 () Bool)

(assert (=> b!4751982 m!5715459))

(declare-fun m!5715461 () Bool)

(assert (=> d!1518964 m!5715461))

(assert (=> b!4751985 m!5715461))

(declare-fun m!5715463 () Bool)

(assert (=> b!4751985 m!5715463))

(assert (=> b!4751980 m!5715451))

(declare-fun m!5715465 () Bool)

(assert (=> b!4751983 m!5715465))

(assert (=> b!4751983 m!5715457))

(assert (=> b!4751983 m!5715457))

(assert (=> b!4751983 m!5715459))

(declare-fun m!5715467 () Bool)

(assert (=> b!4751983 m!5715467))

(assert (=> b!4751349 d!1518964))

(declare-fun d!1518966 () Bool)

(declare-fun res!2015183 () Bool)

(declare-fun e!2964297 () Bool)

(assert (=> d!1518966 (=> res!2015183 e!2964297)))

(assert (=> d!1518966 (= res!2015183 ((_ is Nil!53086) (toList!6116 (+!2382 lt!1915497 t!14174))))))

(assert (=> d!1518966 (= (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222106) e!2964297)))

(declare-fun b!4751986 () Bool)

(declare-fun e!2964298 () Bool)

(assert (=> b!4751986 (= e!2964297 e!2964298)))

(declare-fun res!2015184 () Bool)

(assert (=> b!4751986 (=> (not res!2015184) (not e!2964298))))

(assert (=> b!4751986 (= res!2015184 (dynLambda!21900 lambda!222106 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174)))))))

(declare-fun b!4751987 () Bool)

(assert (=> b!4751987 (= e!2964298 (forall!11762 (t!360542 (toList!6116 (+!2382 lt!1915497 t!14174))) lambda!222106))))

(assert (= (and d!1518966 (not res!2015183)) b!4751986))

(assert (= (and b!4751986 res!2015184) b!4751987))

(declare-fun b_lambda!183331 () Bool)

(assert (=> (not b_lambda!183331) (not b!4751986)))

(declare-fun m!5715469 () Bool)

(assert (=> b!4751986 m!5715469))

(declare-fun m!5715471 () Bool)

(assert (=> b!4751987 m!5715471))

(assert (=> b!4751349 d!1518966))

(declare-fun d!1518968 () Bool)

(assert (=> d!1518968 (dynLambda!21900 lambda!222107 (h!59483 (t!360542 l!14304)))))

(declare-fun lt!1916366 () Unit!135894)

(assert (=> d!1518968 (= lt!1916366 (choose!33825 (toList!6116 lt!1915925) lambda!222107 (h!59483 (t!360542 l!14304))))))

(declare-fun e!2964299 () Bool)

(assert (=> d!1518968 e!2964299))

(declare-fun res!2015185 () Bool)

(assert (=> d!1518968 (=> (not res!2015185) (not e!2964299))))

(assert (=> d!1518968 (= res!2015185 (forall!11762 (toList!6116 lt!1915925) lambda!222107))))

(assert (=> d!1518968 (= (forallContained!3788 (toList!6116 lt!1915925) lambda!222107 (h!59483 (t!360542 l!14304))) lt!1916366)))

(declare-fun b!4751988 () Bool)

(assert (=> b!4751988 (= e!2964299 (contains!16510 (toList!6116 lt!1915925) (h!59483 (t!360542 l!14304))))))

(assert (= (and d!1518968 res!2015185) b!4751988))

(declare-fun b_lambda!183333 () Bool)

(assert (=> (not b_lambda!183333) (not d!1518968)))

(assert (=> d!1518968 m!5715429))

(declare-fun m!5715473 () Bool)

(assert (=> d!1518968 m!5715473))

(assert (=> d!1518968 m!5714145))

(declare-fun m!5715475 () Bool)

(assert (=> b!4751988 m!5715475))

(assert (=> b!4751349 d!1518968))

(declare-fun b!4751989 () Bool)

(declare-fun e!2964304 () List!53211)

(assert (=> b!4751989 (= e!2964304 (getKeysList!1003 (toList!6116 lt!1915924)))))

(declare-fun b!4751990 () Bool)

(declare-fun e!2964302 () Unit!135894)

(declare-fun e!2964305 () Unit!135894)

(assert (=> b!4751990 (= e!2964302 e!2964305)))

(declare-fun c!811366 () Bool)

(declare-fun call!332948 () Bool)

(assert (=> b!4751990 (= c!811366 call!332948)))

(declare-fun b!4751991 () Bool)

(declare-fun e!2964300 () Bool)

(assert (=> b!4751991 (= e!2964300 (not (contains!16512 (keys!19162 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751992 () Bool)

(assert (=> b!4751992 (= e!2964304 (keys!19162 lt!1915924))))

(declare-fun b!4751993 () Bool)

(declare-fun Unit!136205 () Unit!135894)

(assert (=> b!4751993 (= e!2964305 Unit!136205)))

(declare-fun b!4751994 () Bool)

(declare-fun e!2964303 () Bool)

(declare-fun e!2964301 () Bool)

(assert (=> b!4751994 (= e!2964303 e!2964301)))

(declare-fun res!2015186 () Bool)

(assert (=> b!4751994 (=> (not res!2015186) (not e!2964301))))

(assert (=> b!4751994 (= res!2015186 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751995 () Bool)

(declare-fun lt!1916368 () Unit!135894)

(assert (=> b!4751995 (= e!2964302 lt!1916368)))

(declare-fun lt!1916371 () Unit!135894)

(assert (=> b!4751995 (= lt!1916371 (lemmaContainsKeyImpliesGetValueByKeyDefined!1943 (toList!6116 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751995 (isDefined!9756 (getValueByKey!2080 (toList!6116 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916370 () Unit!135894)

(assert (=> b!4751995 (= lt!1916370 lt!1916371)))

(assert (=> b!4751995 (= lt!1916368 (lemmaInListThenGetKeysListContains!998 (toList!6116 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> b!4751995 call!332948))

(declare-fun b!4751996 () Bool)

(assert (=> b!4751996 (= e!2964301 (contains!16512 (keys!19162 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun d!1518970 () Bool)

(assert (=> d!1518970 e!2964303))

(declare-fun res!2015187 () Bool)

(assert (=> d!1518970 (=> res!2015187 e!2964303)))

(assert (=> d!1518970 (= res!2015187 e!2964300)))

(declare-fun res!2015188 () Bool)

(assert (=> d!1518970 (=> (not res!2015188) (not e!2964300))))

(declare-fun lt!1916367 () Bool)

(assert (=> d!1518970 (= res!2015188 (not lt!1916367))))

(declare-fun lt!1916373 () Bool)

(assert (=> d!1518970 (= lt!1916367 lt!1916373)))

(declare-fun lt!1916369 () Unit!135894)

(assert (=> d!1518970 (= lt!1916369 e!2964302)))

(declare-fun c!811365 () Bool)

(assert (=> d!1518970 (= c!811365 lt!1916373)))

(assert (=> d!1518970 (= lt!1916373 (containsKey!3558 (toList!6116 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518970 (= (contains!16509 lt!1915924 (_1!30722 (h!59483 (t!360542 l!14304)))) lt!1916367)))

(declare-fun b!4751997 () Bool)

(assert (=> b!4751997 false))

(declare-fun lt!1916374 () Unit!135894)

(declare-fun lt!1916372 () Unit!135894)

(assert (=> b!4751997 (= lt!1916374 lt!1916372)))

(assert (=> b!4751997 (containsKey!3558 (toList!6116 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304))))))

(assert (=> b!4751997 (= lt!1916372 (lemmaInGetKeysListThenContainsKey!1002 (toList!6116 lt!1915924) (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun Unit!136207 () Unit!135894)

(assert (=> b!4751997 (= e!2964305 Unit!136207)))

(declare-fun bm!332943 () Bool)

(assert (=> bm!332943 (= call!332948 (contains!16512 e!2964304 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun c!811367 () Bool)

(assert (=> bm!332943 (= c!811367 c!811365)))

(assert (= (and d!1518970 c!811365) b!4751995))

(assert (= (and d!1518970 (not c!811365)) b!4751990))

(assert (= (and b!4751990 c!811366) b!4751997))

(assert (= (and b!4751990 (not c!811366)) b!4751993))

(assert (= (or b!4751995 b!4751990) bm!332943))

(assert (= (and bm!332943 c!811367) b!4751989))

(assert (= (and bm!332943 (not c!811367)) b!4751992))

(assert (= (and d!1518970 res!2015188) b!4751991))

(assert (= (and d!1518970 (not res!2015187)) b!4751994))

(assert (= (and b!4751994 res!2015186) b!4751996))

(declare-fun m!5715477 () Bool)

(assert (=> b!4751989 m!5715477))

(declare-fun m!5715479 () Bool)

(assert (=> b!4751991 m!5715479))

(assert (=> b!4751991 m!5715479))

(declare-fun m!5715481 () Bool)

(assert (=> b!4751991 m!5715481))

(assert (=> b!4751996 m!5715479))

(assert (=> b!4751996 m!5715479))

(assert (=> b!4751996 m!5715481))

(declare-fun m!5715483 () Bool)

(assert (=> bm!332943 m!5715483))

(declare-fun m!5715485 () Bool)

(assert (=> b!4751994 m!5715485))

(assert (=> b!4751994 m!5715485))

(declare-fun m!5715487 () Bool)

(assert (=> b!4751994 m!5715487))

(declare-fun m!5715489 () Bool)

(assert (=> d!1518970 m!5715489))

(assert (=> b!4751997 m!5715489))

(declare-fun m!5715491 () Bool)

(assert (=> b!4751997 m!5715491))

(assert (=> b!4751992 m!5715479))

(declare-fun m!5715493 () Bool)

(assert (=> b!4751995 m!5715493))

(assert (=> b!4751995 m!5715485))

(assert (=> b!4751995 m!5715485))

(assert (=> b!4751995 m!5715487))

(declare-fun m!5715495 () Bool)

(assert (=> b!4751995 m!5715495))

(assert (=> b!4751349 d!1518970))

(declare-fun d!1518972 () Bool)

(declare-fun e!2964306 () Bool)

(assert (=> d!1518972 e!2964306))

(declare-fun res!2015189 () Bool)

(assert (=> d!1518972 (=> (not res!2015189) (not e!2964306))))

(declare-fun lt!1916376 () ListMap!5541)

(assert (=> d!1518972 (= res!2015189 (contains!16509 lt!1916376 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun lt!1916377 () List!53210)

(assert (=> d!1518972 (= lt!1916376 (ListMap!5542 lt!1916377))))

(declare-fun lt!1916378 () Unit!135894)

(declare-fun lt!1916375 () Unit!135894)

(assert (=> d!1518972 (= lt!1916378 lt!1916375)))

(assert (=> d!1518972 (= (getValueByKey!2080 lt!1916377 (_1!30722 (h!59483 (t!360542 l!14304)))) (Some!12529 (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518972 (= lt!1916375 (lemmaContainsTupThenGetReturnValue!1157 lt!1916377 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518972 (= lt!1916377 (insertNoDuplicatedKeys!665 (toList!6116 (+!2382 lt!1915497 t!14174)) (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518972 (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916376)))

(declare-fun b!4751998 () Bool)

(declare-fun res!2015190 () Bool)

(assert (=> b!4751998 (=> (not res!2015190) (not e!2964306))))

(assert (=> b!4751998 (= res!2015190 (= (getValueByKey!2080 (toList!6116 lt!1916376) (_1!30722 (h!59483 (t!360542 l!14304)))) (Some!12529 (_2!30722 (h!59483 (t!360542 l!14304))))))))

(declare-fun b!4751999 () Bool)

(assert (=> b!4751999 (= e!2964306 (contains!16510 (toList!6116 lt!1916376) (h!59483 (t!360542 l!14304))))))

(assert (= (and d!1518972 res!2015189) b!4751998))

(assert (= (and b!4751998 res!2015190) b!4751999))

(declare-fun m!5715497 () Bool)

(assert (=> d!1518972 m!5715497))

(declare-fun m!5715499 () Bool)

(assert (=> d!1518972 m!5715499))

(declare-fun m!5715501 () Bool)

(assert (=> d!1518972 m!5715501))

(declare-fun m!5715503 () Bool)

(assert (=> d!1518972 m!5715503))

(declare-fun m!5715505 () Bool)

(assert (=> b!4751998 m!5715505))

(declare-fun m!5715507 () Bool)

(assert (=> b!4751999 m!5715507))

(assert (=> b!4751349 d!1518972))

(declare-fun bs!1142560 () Bool)

(declare-fun d!1518974 () Bool)

(assert (= bs!1142560 (and d!1518974 d!1518944)))

(declare-fun lambda!222150 () Int)

(assert (=> bs!1142560 (= (= lt!1915924 lt!1916315) (= lambda!222150 lambda!222149))))

(declare-fun bs!1142561 () Bool)

(assert (= bs!1142561 (and d!1518974 d!1518558)))

(assert (=> bs!1142561 (= (= lt!1915924 lt!1915675) (= lambda!222150 lambda!222069))))

(declare-fun bs!1142562 () Bool)

(assert (= bs!1142562 (and d!1518974 b!4751534)))

(assert (=> bs!1142562 (= (= lt!1915924 lt!1916057) (= lambda!222150 lambda!222119))))

(declare-fun bs!1142563 () Bool)

(assert (= bs!1142563 (and d!1518974 d!1518594)))

(assert (=> bs!1142563 (= (= lt!1915924 lt!1915800) (= lambda!222150 lambda!222088))))

(declare-fun bs!1142564 () Bool)

(assert (= bs!1142564 (and d!1518974 d!1518746)))

(assert (=> bs!1142564 (= (= lt!1915924 lt!1915754) (= lambda!222150 lambda!222123))))

(declare-fun bs!1142565 () Bool)

(assert (= bs!1142565 (and d!1518974 b!4751294)))

(assert (=> bs!1142565 (= (= lt!1915924 lt!1915754) (= lambda!222150 lambda!222079))))

(declare-fun bs!1142566 () Bool)

(assert (= bs!1142566 (and d!1518974 b!4751305)))

(assert (=> bs!1142566 (= (= lt!1915924 lt!1915494) (= lambda!222150 lambda!222084))))

(assert (=> bs!1142565 (= (= lt!1915924 lt!1915497) (= lambda!222150 lambda!222078))))

(declare-fun bs!1142567 () Bool)

(assert (= bs!1142567 (and d!1518974 b!4751304)))

(assert (=> bs!1142567 (= (= lt!1915924 lt!1915796) (= lambda!222150 lambda!222086))))

(declare-fun bs!1142568 () Bool)

(assert (= bs!1142568 (and d!1518974 d!1518806)))

(assert (=> bs!1142568 (= (= lt!1915924 lt!1915829) (= lambda!222150 lambda!222133))))

(declare-fun bs!1142569 () Bool)

(assert (= bs!1142569 (and d!1518974 d!1518796)))

(assert (=> bs!1142569 (= (= lt!1915924 lt!1915882) (= lambda!222150 lambda!222132))))

(declare-fun bs!1142570 () Bool)

(assert (= bs!1142570 (and d!1518974 b!4751921)))

(assert (=> bs!1142570 (= (= lt!1915924 lt!1916311) (= lambda!222150 lambda!222148))))

(declare-fun bs!1142571 () Bool)

(assert (= bs!1142571 (and d!1518974 b!4751295)))

(assert (=> bs!1142571 (= (= lt!1915924 lt!1915497) (= lambda!222150 lambda!222077))))

(declare-fun bs!1142572 () Bool)

(assert (= bs!1142572 (and d!1518974 b!4751349)))

(assert (=> bs!1142572 (= (= lt!1915924 (+!2382 lt!1915497 t!14174)) (= lambda!222150 lambda!222106))))

(declare-fun bs!1142573 () Bool)

(assert (= bs!1142573 (and d!1518974 b!4751625)))

(assert (=> bs!1142573 (= (= lt!1915924 lt!1916104) (= lambda!222150 lambda!222126))))

(declare-fun bs!1142574 () Bool)

(assert (= bs!1142574 (and d!1518974 d!1518762)))

(assert (=> bs!1142574 (= (= lt!1915924 lt!1916108) (= lambda!222150 lambda!222127))))

(assert (=> bs!1142567 (= (= lt!1915924 lt!1915494) (= lambda!222150 lambda!222085))))

(declare-fun bs!1142575 () Bool)

(assert (= bs!1142575 (and d!1518974 d!1518864)))

(assert (=> bs!1142575 (= (= lt!1915924 lt!1915796) (= lambda!222150 lambda!222142))))

(declare-fun bs!1142576 () Bool)

(assert (= bs!1142576 (and d!1518974 b!4751337)))

(assert (=> bs!1142576 (= (= lt!1915924 lt!1915882) (= lambda!222150 lambda!222099))))

(declare-fun bs!1142577 () Bool)

(assert (= bs!1142577 (and d!1518974 d!1518624)))

(assert (=> bs!1142577 (= (= lt!1915924 lt!1915907) (= lambda!222150 lambda!222104))))

(assert (=> bs!1142570 (= (= lt!1915924 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222150 lambda!222147))))

(declare-fun bs!1142578 () Bool)

(assert (= bs!1142578 (and d!1518974 d!1518676)))

(assert (=> bs!1142578 (= (= lt!1915924 lt!1915903) (= lambda!222150 lambda!222116))))

(declare-fun bs!1142579 () Bool)

(assert (= bs!1142579 (and d!1518974 b!4751723)))

(assert (=> bs!1142579 (= (= lt!1915924 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222150 lambda!222134))))

(declare-fun bs!1142580 () Bool)

(assert (= bs!1142580 (and d!1518974 b!4751315)))

(assert (=> bs!1142580 (= (= lt!1915924 lt!1915497) (= lambda!222150 lambda!222091))))

(declare-fun bs!1142581 () Bool)

(assert (= bs!1142581 (and d!1518974 d!1518686)))

(assert (=> bs!1142581 (= (= lt!1915924 lt!1916061) (= lambda!222150 lambda!222120))))

(declare-fun bs!1142582 () Bool)

(assert (= bs!1142582 (and d!1518974 b!4751338)))

(assert (=> bs!1142582 (= (= lt!1915924 acc!1214) (= lambda!222150 lambda!222097))))

(declare-fun bs!1142583 () Bool)

(assert (= bs!1142583 (and d!1518974 b!4751350)))

(assert (=> bs!1142583 (= (= lt!1915924 (+!2382 lt!1915497 t!14174)) (= lambda!222150 lambda!222105))))

(declare-fun bs!1142584 () Bool)

(assert (= bs!1142584 (and d!1518974 d!1518706)))

(assert (=> bs!1142584 (= (= lt!1915924 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222150 lambda!222122))))

(declare-fun bs!1142585 () Bool)

(assert (= bs!1142585 (and d!1518974 b!4751722)))

(assert (=> bs!1142585 (= (= lt!1915924 lt!1916203) (= lambda!222150 lambda!222136))))

(declare-fun bs!1142586 () Bool)

(assert (= bs!1142586 (and d!1518974 d!1518920)))

(assert (=> bs!1142586 (= (= lt!1915924 lt!1915497) (= lambda!222150 lambda!222144))))

(declare-fun bs!1142587 () Bool)

(assert (= bs!1142587 (and d!1518974 d!1518790)))

(assert (=> bs!1142587 (= (= lt!1915924 lt!1916163) (= lambda!222150 lambda!222131))))

(declare-fun bs!1142588 () Bool)

(assert (= bs!1142588 (and d!1518974 d!1518942)))

(assert (=> bs!1142588 (= (= lt!1915924 lt!1915671) (= lambda!222150 lambda!222145))))

(declare-fun bs!1142589 () Bool)

(assert (= bs!1142589 (and d!1518974 b!4751681)))

(assert (=> bs!1142589 (= (= lt!1915924 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222150 lambda!222128))))

(assert (=> bs!1142585 (= (= lt!1915924 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222150 lambda!222135))))

(declare-fun bs!1142590 () Bool)

(assert (= bs!1142590 (and d!1518974 b!4751267)))

(assert (=> bs!1142590 (= (= lt!1915924 lt!1915671) (= lambda!222150 lambda!222067))))

(declare-fun bs!1142591 () Bool)

(assert (= bs!1142591 (and d!1518974 b!4751268)))

(assert (=> bs!1142591 (= (= lt!1915924 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222150 lambda!222065))))

(declare-fun bs!1142592 () Bool)

(assert (= bs!1142592 (and d!1518974 b!4751535)))

(assert (=> bs!1142592 (= (= lt!1915924 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222150 lambda!222117))))

(declare-fun bs!1142593 () Bool)

(assert (= bs!1142593 (and d!1518974 b!4751680)))

(assert (=> bs!1142593 (= (= lt!1915924 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222150 lambda!222129))))

(declare-fun bs!1142594 () Bool)

(assert (= bs!1142594 (and d!1518974 b!4751626)))

(assert (=> bs!1142594 (= (= lt!1915924 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222150 lambda!222124))))

(declare-fun bs!1142595 () Bool)

(assert (= bs!1142595 (and d!1518974 b!4751344)))

(assert (=> bs!1142595 (= (= lt!1915924 lt!1915903) (= lambda!222150 lambda!222103))))

(assert (=> bs!1142562 (= (= lt!1915924 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222150 lambda!222118))))

(declare-fun bs!1142596 () Bool)

(assert (= bs!1142596 (and d!1518974 b!4751922)))

(assert (=> bs!1142596 (= (= lt!1915924 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222150 lambda!222146))))

(assert (=> bs!1142572 (= lambda!222150 lambda!222107)))

(assert (=> bs!1142573 (= (= lt!1915924 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222150 lambda!222125))))

(assert (=> bs!1142580 (= (= lt!1915924 lt!1915829) (= lambda!222150 lambda!222092))))

(declare-fun bs!1142597 () Bool)

(assert (= bs!1142597 (and d!1518974 d!1518832)))

(assert (=> bs!1142597 (= (= lt!1915924 acc!1214) (= lambda!222150 lambda!222138))))

(declare-fun bs!1142598 () Bool)

(assert (= bs!1142598 (and d!1518974 d!1518694)))

(assert (=> bs!1142598 (= (= lt!1915924 (+!2382 lt!1915497 t!14174)) (= lambda!222150 lambda!222121))))

(declare-fun bs!1142599 () Bool)

(assert (= bs!1142599 (and d!1518974 b!4751345)))

(assert (=> bs!1142599 (= (= lt!1915924 acc!1214) (= lambda!222150 lambda!222101))))

(declare-fun bs!1142600 () Bool)

(assert (= bs!1142600 (and d!1518974 d!1518628)))

(assert (=> bs!1142600 (= (= lt!1915924 lt!1915928) (= lambda!222150 lambda!222108))))

(declare-fun bs!1142602 () Bool)

(assert (= bs!1142602 (and d!1518974 d!1518590)))

(assert (=> bs!1142602 (= (= lt!1915924 lt!1915758) (= lambda!222150 lambda!222081))))

(assert (=> bs!1142593 (= (= lt!1915924 lt!1916159) (= lambda!222150 lambda!222130))))

(declare-fun bs!1142604 () Bool)

(assert (= bs!1142604 (and d!1518974 b!4751316)))

(assert (=> bs!1142604 (= (= lt!1915924 lt!1915497) (= lambda!222150 lambda!222089))))

(assert (=> bs!1142590 (= (= lt!1915924 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222150 lambda!222066))))

(assert (=> bs!1142576 (= (= lt!1915924 acc!1214) (= lambda!222150 lambda!222098))))

(declare-fun bs!1142607 () Bool)

(assert (= bs!1142607 (and d!1518974 d!1518668)))

(assert (=> bs!1142607 (= (= lt!1915924 lt!1915494) (= lambda!222150 lambda!222111))))

(declare-fun bs!1142609 () Bool)

(assert (= bs!1142609 (and d!1518974 d!1518618)))

(assert (=> bs!1142609 (= (= lt!1915924 lt!1915886) (= lambda!222150 lambda!222100))))

(declare-fun bs!1142611 () Bool)

(assert (= bs!1142611 (and d!1518974 d!1518604)))

(assert (=> bs!1142611 (= (= lt!1915924 lt!1915833) (= lambda!222150 lambda!222094))))

(assert (=> bs!1142595 (= (= lt!1915924 acc!1214) (= lambda!222150 lambda!222102))))

(declare-fun bs!1142614 () Bool)

(assert (= bs!1142614 (and d!1518974 d!1518822)))

(assert (=> bs!1142614 (= (= lt!1915924 lt!1916207) (= lambda!222150 lambda!222137))))

(assert (=> d!1518974 true))

(assert (=> d!1518974 (forall!11762 (toList!6116 (+!2382 lt!1915497 t!14174)) lambda!222150)))

(declare-fun lt!1916379 () Unit!135894)

(assert (=> d!1518974 (= lt!1916379 (choose!33826 (+!2382 lt!1915497 t!14174) lt!1915924 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> d!1518974 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915497 t!14174) (tuple2!54857 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))))) lambda!222150)))

(assert (=> d!1518974 (= (addForallContainsKeyThenBeforeAdding!876 (+!2382 lt!1915497 t!14174) lt!1915924 (_1!30722 (h!59483 (t!360542 l!14304))) (_2!30722 (h!59483 (t!360542 l!14304)))) lt!1916379)))

(declare-fun bs!1142622 () Bool)

(assert (= bs!1142622 d!1518974))

(declare-fun m!5715509 () Bool)

(assert (=> bs!1142622 m!5715509))

(assert (=> bs!1142622 m!5713493))

(declare-fun m!5715511 () Bool)

(assert (=> bs!1142622 m!5715511))

(assert (=> bs!1142622 m!5713493))

(declare-fun m!5715513 () Bool)

(assert (=> bs!1142622 m!5715513))

(declare-fun m!5715515 () Bool)

(assert (=> bs!1142622 m!5715515))

(assert (=> b!4751349 d!1518974))

(declare-fun bs!1142631 () Bool)

(declare-fun b!4752002 () Bool)

(assert (= bs!1142631 (and b!4752002 d!1518944)))

(declare-fun lambda!222156 () Int)

(assert (=> bs!1142631 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916315) (= lambda!222156 lambda!222149))))

(declare-fun bs!1142632 () Bool)

(assert (= bs!1142632 (and b!4752002 d!1518558)))

(assert (=> bs!1142632 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915675) (= lambda!222156 lambda!222069))))

(declare-fun bs!1142633 () Bool)

(assert (= bs!1142633 (and b!4752002 b!4751534)))

(assert (=> bs!1142633 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916057) (= lambda!222156 lambda!222119))))

(declare-fun bs!1142634 () Bool)

(assert (= bs!1142634 (and b!4752002 d!1518594)))

(assert (=> bs!1142634 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915800) (= lambda!222156 lambda!222088))))

(declare-fun bs!1142635 () Bool)

(assert (= bs!1142635 (and b!4752002 d!1518746)))

(assert (=> bs!1142635 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222156 lambda!222123))))

(declare-fun bs!1142636 () Bool)

(assert (= bs!1142636 (and b!4752002 b!4751294)))

(assert (=> bs!1142636 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222156 lambda!222079))))

(declare-fun bs!1142638 () Bool)

(assert (= bs!1142638 (and b!4752002 b!4751305)))

(assert (=> bs!1142638 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222156 lambda!222084))))

(assert (=> bs!1142636 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222156 lambda!222078))))

(declare-fun bs!1142639 () Bool)

(assert (= bs!1142639 (and b!4752002 b!4751304)))

(assert (=> bs!1142639 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222156 lambda!222086))))

(declare-fun bs!1142640 () Bool)

(assert (= bs!1142640 (and b!4752002 d!1518806)))

(assert (=> bs!1142640 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222156 lambda!222133))))

(declare-fun bs!1142641 () Bool)

(assert (= bs!1142641 (and b!4752002 d!1518796)))

(assert (=> bs!1142641 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222156 lambda!222132))))

(declare-fun bs!1142642 () Bool)

(assert (= bs!1142642 (and b!4752002 b!4751921)))

(assert (=> bs!1142642 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916311) (= lambda!222156 lambda!222148))))

(declare-fun bs!1142643 () Bool)

(assert (= bs!1142643 (and b!4752002 b!4751295)))

(assert (=> bs!1142643 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222156 lambda!222077))))

(declare-fun bs!1142644 () Bool)

(assert (= bs!1142644 (and b!4752002 b!4751349)))

(assert (=> bs!1142644 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222156 lambda!222106))))

(declare-fun bs!1142645 () Bool)

(assert (= bs!1142645 (and b!4752002 b!4751625)))

(assert (=> bs!1142645 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916104) (= lambda!222156 lambda!222126))))

(declare-fun bs!1142647 () Bool)

(assert (= bs!1142647 (and b!4752002 d!1518762)))

(assert (=> bs!1142647 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916108) (= lambda!222156 lambda!222127))))

(assert (=> bs!1142639 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222156 lambda!222085))))

(declare-fun bs!1142649 () Bool)

(assert (= bs!1142649 (and b!4752002 d!1518864)))

(assert (=> bs!1142649 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222156 lambda!222142))))

(declare-fun bs!1142651 () Bool)

(assert (= bs!1142651 (and b!4752002 b!4751337)))

(assert (=> bs!1142651 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222156 lambda!222099))))

(declare-fun bs!1142653 () Bool)

(assert (= bs!1142653 (and b!4752002 d!1518624)))

(assert (=> bs!1142653 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915907) (= lambda!222156 lambda!222104))))

(assert (=> bs!1142642 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222156 lambda!222147))))

(declare-fun bs!1142656 () Bool)

(assert (= bs!1142656 (and b!4752002 d!1518676)))

(assert (=> bs!1142656 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222156 lambda!222116))))

(declare-fun bs!1142658 () Bool)

(assert (= bs!1142658 (and b!4752002 b!4751723)))

(assert (=> bs!1142658 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222156 lambda!222134))))

(declare-fun bs!1142660 () Bool)

(assert (= bs!1142660 (and b!4752002 b!4751315)))

(assert (=> bs!1142660 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222156 lambda!222091))))

(declare-fun bs!1142662 () Bool)

(assert (= bs!1142662 (and b!4752002 d!1518686)))

(assert (=> bs!1142662 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916061) (= lambda!222156 lambda!222120))))

(declare-fun bs!1142664 () Bool)

(assert (= bs!1142664 (and b!4752002 b!4751338)))

(assert (=> bs!1142664 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222156 lambda!222097))))

(declare-fun bs!1142666 () Bool)

(assert (= bs!1142666 (and b!4752002 b!4751350)))

(assert (=> bs!1142666 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222156 lambda!222105))))

(declare-fun bs!1142668 () Bool)

(assert (= bs!1142668 (and b!4752002 d!1518706)))

(assert (=> bs!1142668 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222156 lambda!222122))))

(declare-fun bs!1142670 () Bool)

(assert (= bs!1142670 (and b!4752002 b!4751722)))

(assert (=> bs!1142670 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916203) (= lambda!222156 lambda!222136))))

(declare-fun bs!1142672 () Bool)

(assert (= bs!1142672 (and b!4752002 d!1518920)))

(assert (=> bs!1142672 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222156 lambda!222144))))

(declare-fun bs!1142673 () Bool)

(assert (= bs!1142673 (and b!4752002 d!1518790)))

(assert (=> bs!1142673 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916163) (= lambda!222156 lambda!222131))))

(declare-fun bs!1142674 () Bool)

(assert (= bs!1142674 (and b!4752002 d!1518942)))

(assert (=> bs!1142674 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222156 lambda!222145))))

(declare-fun bs!1142677 () Bool)

(assert (= bs!1142677 (and b!4752002 b!4751681)))

(assert (=> bs!1142677 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222156 lambda!222128))))

(assert (=> bs!1142670 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222156 lambda!222135))))

(declare-fun bs!1142680 () Bool)

(assert (= bs!1142680 (and b!4752002 b!4751267)))

(assert (=> bs!1142680 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222156 lambda!222067))))

(declare-fun bs!1142682 () Bool)

(assert (= bs!1142682 (and b!4752002 b!4751268)))

(assert (=> bs!1142682 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222156 lambda!222065))))

(declare-fun bs!1142683 () Bool)

(assert (= bs!1142683 (and b!4752002 b!4751535)))

(assert (=> bs!1142683 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222156 lambda!222117))))

(declare-fun bs!1142685 () Bool)

(assert (= bs!1142685 (and b!4752002 b!4751680)))

(assert (=> bs!1142685 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222156 lambda!222129))))

(declare-fun bs!1142687 () Bool)

(assert (= bs!1142687 (and b!4752002 b!4751626)))

(assert (=> bs!1142687 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222156 lambda!222124))))

(declare-fun bs!1142689 () Bool)

(assert (= bs!1142689 (and b!4752002 b!4751344)))

(assert (=> bs!1142689 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222156 lambda!222103))))

(assert (=> bs!1142633 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222156 lambda!222118))))

(declare-fun bs!1142691 () Bool)

(assert (= bs!1142691 (and b!4752002 d!1518974)))

(assert (=> bs!1142691 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222156 lambda!222150))))

(declare-fun bs!1142692 () Bool)

(assert (= bs!1142692 (and b!4752002 b!4751922)))

(assert (=> bs!1142692 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222156 lambda!222146))))

(assert (=> bs!1142644 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222156 lambda!222107))))

(assert (=> bs!1142645 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222156 lambda!222125))))

(assert (=> bs!1142660 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222156 lambda!222092))))

(declare-fun bs!1142694 () Bool)

(assert (= bs!1142694 (and b!4752002 d!1518832)))

(assert (=> bs!1142694 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222156 lambda!222138))))

(declare-fun bs!1142695 () Bool)

(assert (= bs!1142695 (and b!4752002 d!1518694)))

(assert (=> bs!1142695 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222156 lambda!222121))))

(declare-fun bs!1142696 () Bool)

(assert (= bs!1142696 (and b!4752002 b!4751345)))

(assert (=> bs!1142696 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222156 lambda!222101))))

(declare-fun bs!1142697 () Bool)

(assert (= bs!1142697 (and b!4752002 d!1518628)))

(assert (=> bs!1142697 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915928) (= lambda!222156 lambda!222108))))

(declare-fun bs!1142698 () Bool)

(assert (= bs!1142698 (and b!4752002 d!1518590)))

(assert (=> bs!1142698 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915758) (= lambda!222156 lambda!222081))))

(assert (=> bs!1142685 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916159) (= lambda!222156 lambda!222130))))

(declare-fun bs!1142701 () Bool)

(assert (= bs!1142701 (and b!4752002 b!4751316)))

(assert (=> bs!1142701 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222156 lambda!222089))))

(assert (=> bs!1142680 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222156 lambda!222066))))

(assert (=> bs!1142651 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222156 lambda!222098))))

(declare-fun bs!1142705 () Bool)

(assert (= bs!1142705 (and b!4752002 d!1518668)))

(assert (=> bs!1142705 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222156 lambda!222111))))

(declare-fun bs!1142707 () Bool)

(assert (= bs!1142707 (and b!4752002 d!1518618)))

(assert (=> bs!1142707 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915886) (= lambda!222156 lambda!222100))))

(declare-fun bs!1142709 () Bool)

(assert (= bs!1142709 (and b!4752002 d!1518604)))

(assert (=> bs!1142709 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915833) (= lambda!222156 lambda!222094))))

(assert (=> bs!1142689 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222156 lambda!222102))))

(declare-fun bs!1142712 () Bool)

(assert (= bs!1142712 (and b!4752002 d!1518822)))

(assert (=> bs!1142712 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916207) (= lambda!222156 lambda!222137))))

(assert (=> b!4752002 true))

(declare-fun bs!1142722 () Bool)

(declare-fun b!4752001 () Bool)

(assert (= bs!1142722 (and b!4752001 d!1518944)))

(declare-fun lambda!222159 () Int)

(assert (=> bs!1142722 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916315) (= lambda!222159 lambda!222149))))

(declare-fun bs!1142724 () Bool)

(assert (= bs!1142724 (and b!4752001 d!1518558)))

(assert (=> bs!1142724 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915675) (= lambda!222159 lambda!222069))))

(declare-fun bs!1142726 () Bool)

(assert (= bs!1142726 (and b!4752001 b!4751534)))

(assert (=> bs!1142726 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916057) (= lambda!222159 lambda!222119))))

(declare-fun bs!1142727 () Bool)

(assert (= bs!1142727 (and b!4752001 d!1518746)))

(assert (=> bs!1142727 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222159 lambda!222123))))

(declare-fun bs!1142729 () Bool)

(assert (= bs!1142729 (and b!4752001 b!4751294)))

(assert (=> bs!1142729 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915754) (= lambda!222159 lambda!222079))))

(declare-fun bs!1142731 () Bool)

(assert (= bs!1142731 (and b!4752001 b!4751305)))

(assert (=> bs!1142731 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222159 lambda!222084))))

(assert (=> bs!1142729 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222159 lambda!222078))))

(declare-fun bs!1142733 () Bool)

(assert (= bs!1142733 (and b!4752001 b!4751304)))

(assert (=> bs!1142733 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222159 lambda!222086))))

(declare-fun bs!1142735 () Bool)

(assert (= bs!1142735 (and b!4752001 d!1518806)))

(assert (=> bs!1142735 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222159 lambda!222133))))

(declare-fun bs!1142737 () Bool)

(assert (= bs!1142737 (and b!4752001 d!1518796)))

(assert (=> bs!1142737 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222159 lambda!222132))))

(declare-fun bs!1142738 () Bool)

(assert (= bs!1142738 (and b!4752001 b!4751921)))

(assert (=> bs!1142738 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916311) (= lambda!222159 lambda!222148))))

(declare-fun bs!1142739 () Bool)

(assert (= bs!1142739 (and b!4752001 b!4751295)))

(assert (=> bs!1142739 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222159 lambda!222077))))

(declare-fun bs!1142740 () Bool)

(assert (= bs!1142740 (and b!4752001 b!4751349)))

(assert (=> bs!1142740 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222159 lambda!222106))))

(declare-fun bs!1142741 () Bool)

(assert (= bs!1142741 (and b!4752001 b!4751625)))

(assert (=> bs!1142741 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916104) (= lambda!222159 lambda!222126))))

(declare-fun bs!1142742 () Bool)

(assert (= bs!1142742 (and b!4752001 d!1518762)))

(assert (=> bs!1142742 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916108) (= lambda!222159 lambda!222127))))

(assert (=> bs!1142733 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222159 lambda!222085))))

(declare-fun bs!1142743 () Bool)

(assert (= bs!1142743 (and b!4752001 d!1518864)))

(assert (=> bs!1142743 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915796) (= lambda!222159 lambda!222142))))

(declare-fun bs!1142744 () Bool)

(assert (= bs!1142744 (and b!4752001 b!4751337)))

(assert (=> bs!1142744 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915882) (= lambda!222159 lambda!222099))))

(declare-fun bs!1142745 () Bool)

(assert (= bs!1142745 (and b!4752001 d!1518624)))

(assert (=> bs!1142745 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915907) (= lambda!222159 lambda!222104))))

(assert (=> bs!1142738 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222159 lambda!222147))))

(declare-fun bs!1142746 () Bool)

(assert (= bs!1142746 (and b!4752001 d!1518676)))

(assert (=> bs!1142746 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222159 lambda!222116))))

(declare-fun bs!1142747 () Bool)

(assert (= bs!1142747 (and b!4752001 b!4752002)))

(assert (=> bs!1142747 (= lambda!222159 lambda!222156)))

(declare-fun bs!1142748 () Bool)

(assert (= bs!1142748 (and b!4752001 d!1518594)))

(assert (=> bs!1142748 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915800) (= lambda!222159 lambda!222088))))

(declare-fun bs!1142749 () Bool)

(assert (= bs!1142749 (and b!4752001 b!4751723)))

(assert (=> bs!1142749 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222159 lambda!222134))))

(declare-fun bs!1142750 () Bool)

(assert (= bs!1142750 (and b!4752001 b!4751315)))

(assert (=> bs!1142750 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222159 lambda!222091))))

(declare-fun bs!1142751 () Bool)

(assert (= bs!1142751 (and b!4752001 d!1518686)))

(assert (=> bs!1142751 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916061) (= lambda!222159 lambda!222120))))

(declare-fun bs!1142752 () Bool)

(assert (= bs!1142752 (and b!4752001 b!4751338)))

(assert (=> bs!1142752 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222159 lambda!222097))))

(declare-fun bs!1142753 () Bool)

(assert (= bs!1142753 (and b!4752001 b!4751350)))

(assert (=> bs!1142753 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222159 lambda!222105))))

(declare-fun bs!1142754 () Bool)

(assert (= bs!1142754 (and b!4752001 d!1518706)))

(assert (=> bs!1142754 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222159 lambda!222122))))

(declare-fun bs!1142755 () Bool)

(assert (= bs!1142755 (and b!4752001 b!4751722)))

(assert (=> bs!1142755 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916203) (= lambda!222159 lambda!222136))))

(declare-fun bs!1142756 () Bool)

(assert (= bs!1142756 (and b!4752001 d!1518920)))

(assert (=> bs!1142756 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222159 lambda!222144))))

(declare-fun bs!1142757 () Bool)

(assert (= bs!1142757 (and b!4752001 d!1518790)))

(assert (=> bs!1142757 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916163) (= lambda!222159 lambda!222131))))

(declare-fun bs!1142758 () Bool)

(assert (= bs!1142758 (and b!4752001 d!1518942)))

(assert (=> bs!1142758 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222159 lambda!222145))))

(declare-fun bs!1142759 () Bool)

(assert (= bs!1142759 (and b!4752001 b!4751681)))

(assert (=> bs!1142759 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222159 lambda!222128))))

(assert (=> bs!1142755 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222159 lambda!222135))))

(declare-fun bs!1142760 () Bool)

(assert (= bs!1142760 (and b!4752001 b!4751267)))

(assert (=> bs!1142760 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915671) (= lambda!222159 lambda!222067))))

(declare-fun bs!1142761 () Bool)

(assert (= bs!1142761 (and b!4752001 b!4751268)))

(assert (=> bs!1142761 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222159 lambda!222065))))

(declare-fun bs!1142762 () Bool)

(assert (= bs!1142762 (and b!4752001 b!4751535)))

(assert (=> bs!1142762 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222159 lambda!222117))))

(declare-fun bs!1142763 () Bool)

(assert (= bs!1142763 (and b!4752001 b!4751680)))

(assert (=> bs!1142763 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222159 lambda!222129))))

(declare-fun bs!1142764 () Bool)

(assert (= bs!1142764 (and b!4752001 b!4751626)))

(assert (=> bs!1142764 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222159 lambda!222124))))

(declare-fun bs!1142765 () Bool)

(assert (= bs!1142765 (and b!4752001 b!4751344)))

(assert (=> bs!1142765 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915903) (= lambda!222159 lambda!222103))))

(assert (=> bs!1142726 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222159 lambda!222118))))

(declare-fun bs!1142766 () Bool)

(assert (= bs!1142766 (and b!4752001 d!1518974)))

(assert (=> bs!1142766 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222159 lambda!222150))))

(declare-fun bs!1142767 () Bool)

(assert (= bs!1142767 (and b!4752001 b!4751922)))

(assert (=> bs!1142767 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222159 lambda!222146))))

(assert (=> bs!1142740 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915924) (= lambda!222159 lambda!222107))))

(assert (=> bs!1142741 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222159 lambda!222125))))

(assert (=> bs!1142750 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915829) (= lambda!222159 lambda!222092))))

(declare-fun bs!1142768 () Bool)

(assert (= bs!1142768 (and b!4752001 d!1518832)))

(assert (=> bs!1142768 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222159 lambda!222138))))

(declare-fun bs!1142769 () Bool)

(assert (= bs!1142769 (and b!4752001 d!1518694)))

(assert (=> bs!1142769 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915497 t!14174)) (= lambda!222159 lambda!222121))))

(declare-fun bs!1142770 () Bool)

(assert (= bs!1142770 (and b!4752001 b!4751345)))

(assert (=> bs!1142770 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222159 lambda!222101))))

(declare-fun bs!1142771 () Bool)

(assert (= bs!1142771 (and b!4752001 d!1518628)))

(assert (=> bs!1142771 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915928) (= lambda!222159 lambda!222108))))

(declare-fun bs!1142772 () Bool)

(assert (= bs!1142772 (and b!4752001 d!1518590)))

(assert (=> bs!1142772 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915758) (= lambda!222159 lambda!222081))))

(assert (=> bs!1142763 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916159) (= lambda!222159 lambda!222130))))

(declare-fun bs!1142773 () Bool)

(assert (= bs!1142773 (and b!4752001 b!4751316)))

(assert (=> bs!1142773 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915497) (= lambda!222159 lambda!222089))))

(assert (=> bs!1142760 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222159 lambda!222066))))

(assert (=> bs!1142744 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222159 lambda!222098))))

(declare-fun bs!1142774 () Bool)

(assert (= bs!1142774 (and b!4752001 d!1518668)))

(assert (=> bs!1142774 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915494) (= lambda!222159 lambda!222111))))

(declare-fun bs!1142775 () Bool)

(assert (= bs!1142775 (and b!4752001 d!1518618)))

(assert (=> bs!1142775 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915886) (= lambda!222159 lambda!222100))))

(declare-fun bs!1142776 () Bool)

(assert (= bs!1142776 (and b!4752001 d!1518604)))

(assert (=> bs!1142776 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1915833) (= lambda!222159 lambda!222094))))

(assert (=> bs!1142765 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) acc!1214) (= lambda!222159 lambda!222102))))

(declare-fun bs!1142777 () Bool)

(assert (= bs!1142777 (and b!4752001 d!1518822)))

(assert (=> bs!1142777 (= (= (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916207) (= lambda!222159 lambda!222137))))

(assert (=> b!4752001 true))

(declare-fun lambda!222162 () Int)

(declare-fun lt!1916392 () ListMap!5541)

(assert (=> bs!1142722 (= (= lt!1916392 lt!1916315) (= lambda!222162 lambda!222149))))

(assert (=> bs!1142724 (= (= lt!1916392 lt!1915675) (= lambda!222162 lambda!222069))))

(assert (=> bs!1142726 (= (= lt!1916392 lt!1916057) (= lambda!222162 lambda!222119))))

(assert (=> bs!1142729 (= (= lt!1916392 lt!1915754) (= lambda!222162 lambda!222079))))

(assert (=> bs!1142731 (= (= lt!1916392 lt!1915494) (= lambda!222162 lambda!222084))))

(assert (=> bs!1142729 (= (= lt!1916392 lt!1915497) (= lambda!222162 lambda!222078))))

(assert (=> bs!1142733 (= (= lt!1916392 lt!1915796) (= lambda!222162 lambda!222086))))

(assert (=> bs!1142735 (= (= lt!1916392 lt!1915829) (= lambda!222162 lambda!222133))))

(assert (=> bs!1142737 (= (= lt!1916392 lt!1915882) (= lambda!222162 lambda!222132))))

(assert (=> bs!1142738 (= (= lt!1916392 lt!1916311) (= lambda!222162 lambda!222148))))

(assert (=> bs!1142739 (= (= lt!1916392 lt!1915497) (= lambda!222162 lambda!222077))))

(assert (=> bs!1142740 (= (= lt!1916392 (+!2382 lt!1915497 t!14174)) (= lambda!222162 lambda!222106))))

(assert (=> bs!1142741 (= (= lt!1916392 lt!1916104) (= lambda!222162 lambda!222126))))

(assert (=> bs!1142742 (= (= lt!1916392 lt!1916108) (= lambda!222162 lambda!222127))))

(assert (=> bs!1142733 (= (= lt!1916392 lt!1915494) (= lambda!222162 lambda!222085))))

(assert (=> bs!1142743 (= (= lt!1916392 lt!1915796) (= lambda!222162 lambda!222142))))

(assert (=> bs!1142744 (= (= lt!1916392 lt!1915882) (= lambda!222162 lambda!222099))))

(assert (=> bs!1142745 (= (= lt!1916392 lt!1915907) (= lambda!222162 lambda!222104))))

(assert (=> bs!1142738 (= (= lt!1916392 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222162 lambda!222147))))

(assert (=> bs!1142746 (= (= lt!1916392 lt!1915903) (= lambda!222162 lambda!222116))))

(assert (=> bs!1142747 (= (= lt!1916392 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) (= lambda!222162 lambda!222156))))

(assert (=> bs!1142748 (= (= lt!1916392 lt!1915800) (= lambda!222162 lambda!222088))))

(assert (=> bs!1142749 (= (= lt!1916392 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222162 lambda!222134))))

(assert (=> bs!1142750 (= (= lt!1916392 lt!1915497) (= lambda!222162 lambda!222091))))

(assert (=> bs!1142751 (= (= lt!1916392 lt!1916061) (= lambda!222162 lambda!222120))))

(assert (=> bs!1142752 (= (= lt!1916392 acc!1214) (= lambda!222162 lambda!222097))))

(assert (=> bs!1142753 (= (= lt!1916392 (+!2382 lt!1915497 t!14174)) (= lambda!222162 lambda!222105))))

(assert (=> bs!1142754 (= (= lt!1916392 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222162 lambda!222122))))

(assert (=> bs!1142755 (= (= lt!1916392 lt!1916203) (= lambda!222162 lambda!222136))))

(assert (=> bs!1142756 (= (= lt!1916392 lt!1915497) (= lambda!222162 lambda!222144))))

(assert (=> bs!1142757 (= (= lt!1916392 lt!1916163) (= lambda!222162 lambda!222131))))

(assert (=> bs!1142758 (= (= lt!1916392 lt!1915671) (= lambda!222162 lambda!222145))))

(assert (=> bs!1142759 (= (= lt!1916392 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222162 lambda!222128))))

(assert (=> bs!1142755 (= (= lt!1916392 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222162 lambda!222135))))

(assert (=> b!4752001 (= (= lt!1916392 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) (= lambda!222162 lambda!222159))))

(assert (=> bs!1142727 (= (= lt!1916392 lt!1915754) (= lambda!222162 lambda!222123))))

(assert (=> bs!1142760 (= (= lt!1916392 lt!1915671) (= lambda!222162 lambda!222067))))

(assert (=> bs!1142761 (= (= lt!1916392 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222162 lambda!222065))))

(assert (=> bs!1142762 (= (= lt!1916392 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222162 lambda!222117))))

(assert (=> bs!1142763 (= (= lt!1916392 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222162 lambda!222129))))

(assert (=> bs!1142764 (= (= lt!1916392 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222162 lambda!222124))))

(assert (=> bs!1142765 (= (= lt!1916392 lt!1915903) (= lambda!222162 lambda!222103))))

(assert (=> bs!1142726 (= (= lt!1916392 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222162 lambda!222118))))

(assert (=> bs!1142766 (= (= lt!1916392 lt!1915924) (= lambda!222162 lambda!222150))))

(assert (=> bs!1142767 (= (= lt!1916392 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222162 lambda!222146))))

(assert (=> bs!1142740 (= (= lt!1916392 lt!1915924) (= lambda!222162 lambda!222107))))

(assert (=> bs!1142741 (= (= lt!1916392 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222162 lambda!222125))))

(assert (=> bs!1142750 (= (= lt!1916392 lt!1915829) (= lambda!222162 lambda!222092))))

(assert (=> bs!1142768 (= (= lt!1916392 acc!1214) (= lambda!222162 lambda!222138))))

(assert (=> bs!1142769 (= (= lt!1916392 (+!2382 lt!1915497 t!14174)) (= lambda!222162 lambda!222121))))

(assert (=> bs!1142770 (= (= lt!1916392 acc!1214) (= lambda!222162 lambda!222101))))

(assert (=> bs!1142771 (= (= lt!1916392 lt!1915928) (= lambda!222162 lambda!222108))))

(assert (=> bs!1142772 (= (= lt!1916392 lt!1915758) (= lambda!222162 lambda!222081))))

(assert (=> bs!1142763 (= (= lt!1916392 lt!1916159) (= lambda!222162 lambda!222130))))

(assert (=> bs!1142773 (= (= lt!1916392 lt!1915497) (= lambda!222162 lambda!222089))))

(assert (=> bs!1142760 (= (= lt!1916392 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222162 lambda!222066))))

(assert (=> bs!1142744 (= (= lt!1916392 acc!1214) (= lambda!222162 lambda!222098))))

(assert (=> bs!1142774 (= (= lt!1916392 lt!1915494) (= lambda!222162 lambda!222111))))

(assert (=> bs!1142775 (= (= lt!1916392 lt!1915886) (= lambda!222162 lambda!222100))))

(assert (=> bs!1142776 (= (= lt!1916392 lt!1915833) (= lambda!222162 lambda!222094))))

(assert (=> bs!1142765 (= (= lt!1916392 acc!1214) (= lambda!222162 lambda!222102))))

(assert (=> bs!1142777 (= (= lt!1916392 lt!1916207) (= lambda!222162 lambda!222137))))

(assert (=> b!4752001 true))

(declare-fun bs!1142804 () Bool)

(declare-fun d!1518976 () Bool)

(assert (= bs!1142804 (and d!1518976 d!1518944)))

(declare-fun lt!1916396 () ListMap!5541)

(declare-fun lambda!222163 () Int)

(assert (=> bs!1142804 (= (= lt!1916396 lt!1916315) (= lambda!222163 lambda!222149))))

(declare-fun bs!1142805 () Bool)

(assert (= bs!1142805 (and d!1518976 d!1518558)))

(assert (=> bs!1142805 (= (= lt!1916396 lt!1915675) (= lambda!222163 lambda!222069))))

(declare-fun bs!1142806 () Bool)

(assert (= bs!1142806 (and d!1518976 b!4751534)))

(assert (=> bs!1142806 (= (= lt!1916396 lt!1916057) (= lambda!222163 lambda!222119))))

(declare-fun bs!1142807 () Bool)

(assert (= bs!1142807 (and d!1518976 b!4751294)))

(assert (=> bs!1142807 (= (= lt!1916396 lt!1915754) (= lambda!222163 lambda!222079))))

(declare-fun bs!1142808 () Bool)

(assert (= bs!1142808 (and d!1518976 b!4751305)))

(assert (=> bs!1142808 (= (= lt!1916396 lt!1915494) (= lambda!222163 lambda!222084))))

(assert (=> bs!1142807 (= (= lt!1916396 lt!1915497) (= lambda!222163 lambda!222078))))

(declare-fun bs!1142809 () Bool)

(assert (= bs!1142809 (and d!1518976 b!4751304)))

(assert (=> bs!1142809 (= (= lt!1916396 lt!1915796) (= lambda!222163 lambda!222086))))

(declare-fun bs!1142810 () Bool)

(assert (= bs!1142810 (and d!1518976 d!1518806)))

(assert (=> bs!1142810 (= (= lt!1916396 lt!1915829) (= lambda!222163 lambda!222133))))

(declare-fun bs!1142811 () Bool)

(assert (= bs!1142811 (and d!1518976 d!1518796)))

(assert (=> bs!1142811 (= (= lt!1916396 lt!1915882) (= lambda!222163 lambda!222132))))

(declare-fun bs!1142812 () Bool)

(assert (= bs!1142812 (and d!1518976 b!4751921)))

(assert (=> bs!1142812 (= (= lt!1916396 lt!1916311) (= lambda!222163 lambda!222148))))

(declare-fun bs!1142813 () Bool)

(assert (= bs!1142813 (and d!1518976 b!4751295)))

(assert (=> bs!1142813 (= (= lt!1916396 lt!1915497) (= lambda!222163 lambda!222077))))

(declare-fun bs!1142814 () Bool)

(assert (= bs!1142814 (and d!1518976 b!4751349)))

(assert (=> bs!1142814 (= (= lt!1916396 (+!2382 lt!1915497 t!14174)) (= lambda!222163 lambda!222106))))

(declare-fun bs!1142815 () Bool)

(assert (= bs!1142815 (and d!1518976 b!4751625)))

(assert (=> bs!1142815 (= (= lt!1916396 lt!1916104) (= lambda!222163 lambda!222126))))

(declare-fun bs!1142816 () Bool)

(assert (= bs!1142816 (and d!1518976 d!1518762)))

(assert (=> bs!1142816 (= (= lt!1916396 lt!1916108) (= lambda!222163 lambda!222127))))

(assert (=> bs!1142809 (= (= lt!1916396 lt!1915494) (= lambda!222163 lambda!222085))))

(declare-fun bs!1142817 () Bool)

(assert (= bs!1142817 (and d!1518976 d!1518864)))

(assert (=> bs!1142817 (= (= lt!1916396 lt!1915796) (= lambda!222163 lambda!222142))))

(declare-fun bs!1142818 () Bool)

(assert (= bs!1142818 (and d!1518976 b!4751337)))

(assert (=> bs!1142818 (= (= lt!1916396 lt!1915882) (= lambda!222163 lambda!222099))))

(declare-fun bs!1142819 () Bool)

(assert (= bs!1142819 (and d!1518976 d!1518624)))

(assert (=> bs!1142819 (= (= lt!1916396 lt!1915907) (= lambda!222163 lambda!222104))))

(assert (=> bs!1142812 (= (= lt!1916396 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222163 lambda!222147))))

(declare-fun bs!1142820 () Bool)

(assert (= bs!1142820 (and d!1518976 d!1518676)))

(assert (=> bs!1142820 (= (= lt!1916396 lt!1915903) (= lambda!222163 lambda!222116))))

(declare-fun bs!1142821 () Bool)

(assert (= bs!1142821 (and d!1518976 b!4752001)))

(assert (=> bs!1142821 (= (= lt!1916396 lt!1916392) (= lambda!222163 lambda!222162))))

(declare-fun bs!1142822 () Bool)

(assert (= bs!1142822 (and d!1518976 b!4752002)))

(assert (=> bs!1142822 (= (= lt!1916396 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) (= lambda!222163 lambda!222156))))

(declare-fun bs!1142823 () Bool)

(assert (= bs!1142823 (and d!1518976 d!1518594)))

(assert (=> bs!1142823 (= (= lt!1916396 lt!1915800) (= lambda!222163 lambda!222088))))

(declare-fun bs!1142824 () Bool)

(assert (= bs!1142824 (and d!1518976 b!4751723)))

(assert (=> bs!1142824 (= (= lt!1916396 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222163 lambda!222134))))

(declare-fun bs!1142825 () Bool)

(assert (= bs!1142825 (and d!1518976 b!4751315)))

(assert (=> bs!1142825 (= (= lt!1916396 lt!1915497) (= lambda!222163 lambda!222091))))

(declare-fun bs!1142826 () Bool)

(assert (= bs!1142826 (and d!1518976 d!1518686)))

(assert (=> bs!1142826 (= (= lt!1916396 lt!1916061) (= lambda!222163 lambda!222120))))

(declare-fun bs!1142827 () Bool)

(assert (= bs!1142827 (and d!1518976 b!4751338)))

(assert (=> bs!1142827 (= (= lt!1916396 acc!1214) (= lambda!222163 lambda!222097))))

(declare-fun bs!1142828 () Bool)

(assert (= bs!1142828 (and d!1518976 b!4751350)))

(assert (=> bs!1142828 (= (= lt!1916396 (+!2382 lt!1915497 t!14174)) (= lambda!222163 lambda!222105))))

(declare-fun bs!1142829 () Bool)

(assert (= bs!1142829 (and d!1518976 d!1518706)))

(assert (=> bs!1142829 (= (= lt!1916396 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222163 lambda!222122))))

(declare-fun bs!1142830 () Bool)

(assert (= bs!1142830 (and d!1518976 b!4751722)))

(assert (=> bs!1142830 (= (= lt!1916396 lt!1916203) (= lambda!222163 lambda!222136))))

(declare-fun bs!1142831 () Bool)

(assert (= bs!1142831 (and d!1518976 d!1518920)))

(assert (=> bs!1142831 (= (= lt!1916396 lt!1915497) (= lambda!222163 lambda!222144))))

(declare-fun bs!1142832 () Bool)

(assert (= bs!1142832 (and d!1518976 d!1518790)))

(assert (=> bs!1142832 (= (= lt!1916396 lt!1916163) (= lambda!222163 lambda!222131))))

(declare-fun bs!1142833 () Bool)

(assert (= bs!1142833 (and d!1518976 d!1518942)))

(assert (=> bs!1142833 (= (= lt!1916396 lt!1915671) (= lambda!222163 lambda!222145))))

(declare-fun bs!1142834 () Bool)

(assert (= bs!1142834 (and d!1518976 b!4751681)))

(assert (=> bs!1142834 (= (= lt!1916396 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222163 lambda!222128))))

(assert (=> bs!1142830 (= (= lt!1916396 (+!2382 lt!1915497 (h!59483 (t!360542 l!14304)))) (= lambda!222163 lambda!222135))))

(assert (=> bs!1142821 (= (= lt!1916396 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) (= lambda!222163 lambda!222159))))

(declare-fun bs!1142835 () Bool)

(assert (= bs!1142835 (and d!1518976 d!1518746)))

(assert (=> bs!1142835 (= (= lt!1916396 lt!1915754) (= lambda!222163 lambda!222123))))

(declare-fun bs!1142836 () Bool)

(assert (= bs!1142836 (and d!1518976 b!4751267)))

(assert (=> bs!1142836 (= (= lt!1916396 lt!1915671) (= lambda!222163 lambda!222067))))

(declare-fun bs!1142837 () Bool)

(assert (= bs!1142837 (and d!1518976 b!4751268)))

(assert (=> bs!1142837 (= (= lt!1916396 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222163 lambda!222065))))

(declare-fun bs!1142838 () Bool)

(assert (= bs!1142838 (and d!1518976 b!4751535)))

(assert (=> bs!1142838 (= (= lt!1916396 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222163 lambda!222117))))

(declare-fun bs!1142839 () Bool)

(assert (= bs!1142839 (and d!1518976 b!4751680)))

(assert (=> bs!1142839 (= (= lt!1916396 (+!2382 acc!1214 (h!59483 lt!1915493))) (= lambda!222163 lambda!222129))))

(declare-fun bs!1142840 () Bool)

(assert (= bs!1142840 (and d!1518976 b!4751626)))

(assert (=> bs!1142840 (= (= lt!1916396 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222163 lambda!222124))))

(declare-fun bs!1142841 () Bool)

(assert (= bs!1142841 (and d!1518976 b!4751344)))

(assert (=> bs!1142841 (= (= lt!1916396 lt!1915903) (= lambda!222163 lambda!222103))))

(assert (=> bs!1142806 (= (= lt!1916396 (+!2382 acc!1214 (h!59483 l!14304))) (= lambda!222163 lambda!222118))))

(declare-fun bs!1142842 () Bool)

(assert (= bs!1142842 (and d!1518976 d!1518974)))

(assert (=> bs!1142842 (= (= lt!1916396 lt!1915924) (= lambda!222163 lambda!222150))))

(declare-fun bs!1142843 () Bool)

(assert (= bs!1142843 (and d!1518976 b!4751922)))

(assert (=> bs!1142843 (= (= lt!1916396 (+!2382 (+!2382 lt!1915494 (h!59483 l!14304)) (h!59483 (t!360542 l!14304)))) (= lambda!222163 lambda!222146))))

(assert (=> bs!1142814 (= (= lt!1916396 lt!1915924) (= lambda!222163 lambda!222107))))

(assert (=> bs!1142815 (= (= lt!1916396 (+!2382 lt!1915497 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))) (= lambda!222163 lambda!222125))))

(assert (=> bs!1142825 (= (= lt!1916396 lt!1915829) (= lambda!222163 lambda!222092))))

(declare-fun bs!1142844 () Bool)

(assert (= bs!1142844 (and d!1518976 d!1518832)))

(assert (=> bs!1142844 (= (= lt!1916396 acc!1214) (= lambda!222163 lambda!222138))))

(declare-fun bs!1142845 () Bool)

(assert (= bs!1142845 (and d!1518976 d!1518694)))

(assert (=> bs!1142845 (= (= lt!1916396 (+!2382 lt!1915497 t!14174)) (= lambda!222163 lambda!222121))))

(declare-fun bs!1142846 () Bool)

(assert (= bs!1142846 (and d!1518976 b!4751345)))

(assert (=> bs!1142846 (= (= lt!1916396 acc!1214) (= lambda!222163 lambda!222101))))

(declare-fun bs!1142847 () Bool)

(assert (= bs!1142847 (and d!1518976 d!1518628)))

(assert (=> bs!1142847 (= (= lt!1916396 lt!1915928) (= lambda!222163 lambda!222108))))

(declare-fun bs!1142848 () Bool)

(assert (= bs!1142848 (and d!1518976 d!1518590)))

(assert (=> bs!1142848 (= (= lt!1916396 lt!1915758) (= lambda!222163 lambda!222081))))

(assert (=> bs!1142839 (= (= lt!1916396 lt!1916159) (= lambda!222163 lambda!222130))))

(declare-fun bs!1142849 () Bool)

(assert (= bs!1142849 (and d!1518976 b!4751316)))

(assert (=> bs!1142849 (= (= lt!1916396 lt!1915497) (= lambda!222163 lambda!222089))))

(assert (=> bs!1142836 (= (= lt!1916396 (+!2382 lt!1915494 (h!59483 l!14304))) (= lambda!222163 lambda!222066))))

(assert (=> bs!1142818 (= (= lt!1916396 acc!1214) (= lambda!222163 lambda!222098))))

(declare-fun bs!1142850 () Bool)

(assert (= bs!1142850 (and d!1518976 d!1518668)))

(assert (=> bs!1142850 (= (= lt!1916396 lt!1915494) (= lambda!222163 lambda!222111))))

(declare-fun bs!1142851 () Bool)

(assert (= bs!1142851 (and d!1518976 d!1518618)))

(assert (=> bs!1142851 (= (= lt!1916396 lt!1915886) (= lambda!222163 lambda!222100))))

(declare-fun bs!1142852 () Bool)

(assert (= bs!1142852 (and d!1518976 d!1518604)))

(assert (=> bs!1142852 (= (= lt!1916396 lt!1915833) (= lambda!222163 lambda!222094))))

(assert (=> bs!1142841 (= (= lt!1916396 acc!1214) (= lambda!222163 lambda!222102))))

(declare-fun bs!1142853 () Bool)

(assert (= bs!1142853 (and d!1518976 d!1518822)))

(assert (=> bs!1142853 (= (= lt!1916396 lt!1916207) (= lambda!222163 lambda!222137))))

(assert (=> d!1518976 true))

(declare-fun e!2964308 () Bool)

(assert (=> d!1518976 e!2964308))

(declare-fun res!2015191 () Bool)

(assert (=> d!1518976 (=> (not res!2015191) (not e!2964308))))

(assert (=> d!1518976 (= res!2015191 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222163))))

(declare-fun e!2964309 () ListMap!5541)

(assert (=> d!1518976 (= lt!1916396 e!2964309)))

(declare-fun c!811368 () Bool)

(assert (=> d!1518976 (= c!811368 ((_ is Nil!53086) (t!360542 (t!360542 l!14304))))))

(assert (=> d!1518976 (noDuplicateKeys!2148 (t!360542 (t!360542 l!14304)))))

(assert (=> d!1518976 (= (addToMapMapFromBucket!1572 (t!360542 (t!360542 l!14304)) (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) lt!1916396)))

(assert (=> b!4752001 (= e!2964309 lt!1916392)))

(declare-fun lt!1916393 () ListMap!5541)

(assert (=> b!4752001 (= lt!1916393 (+!2382 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (h!59483 (t!360542 (t!360542 l!14304)))))))

(assert (=> b!4752001 (= lt!1916392 (addToMapMapFromBucket!1572 (t!360542 (t!360542 (t!360542 l!14304))) (+!2382 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) (h!59483 (t!360542 (t!360542 l!14304))))))))

(declare-fun lt!1916399 () Unit!135894)

(declare-fun call!332949 () Unit!135894)

(assert (=> b!4752001 (= lt!1916399 call!332949)))

(assert (=> b!4752001 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) lambda!222159)))

(declare-fun lt!1916386 () Unit!135894)

(assert (=> b!4752001 (= lt!1916386 lt!1916399)))

(declare-fun call!332951 () Bool)

(assert (=> b!4752001 call!332951))

(declare-fun lt!1916403 () Unit!135894)

(declare-fun Unit!136210 () Unit!135894)

(assert (=> b!4752001 (= lt!1916403 Unit!136210)))

(assert (=> b!4752001 (forall!11762 (t!360542 (t!360542 (t!360542 l!14304))) lambda!222162)))

(declare-fun lt!1916388 () Unit!135894)

(declare-fun Unit!136211 () Unit!135894)

(assert (=> b!4752001 (= lt!1916388 Unit!136211)))

(declare-fun lt!1916397 () Unit!135894)

(declare-fun Unit!136212 () Unit!135894)

(assert (=> b!4752001 (= lt!1916397 Unit!136212)))

(declare-fun lt!1916390 () Unit!135894)

(assert (=> b!4752001 (= lt!1916390 (forallContained!3788 (toList!6116 lt!1916393) lambda!222162 (h!59483 (t!360542 (t!360542 l!14304)))))))

(assert (=> b!4752001 (contains!16509 lt!1916393 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun lt!1916398 () Unit!135894)

(declare-fun Unit!136213 () Unit!135894)

(assert (=> b!4752001 (= lt!1916398 Unit!136213)))

(assert (=> b!4752001 (contains!16509 lt!1916392 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))))))

(declare-fun lt!1916400 () Unit!135894)

(declare-fun Unit!136214 () Unit!135894)

(assert (=> b!4752001 (= lt!1916400 Unit!136214)))

(assert (=> b!4752001 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222162)))

(declare-fun lt!1916383 () Unit!135894)

(declare-fun Unit!136215 () Unit!135894)

(assert (=> b!4752001 (= lt!1916383 Unit!136215)))

(assert (=> b!4752001 (forall!11762 (toList!6116 lt!1916393) lambda!222162)))

(declare-fun lt!1916389 () Unit!135894)

(declare-fun Unit!136216 () Unit!135894)

(assert (=> b!4752001 (= lt!1916389 Unit!136216)))

(declare-fun lt!1916385 () Unit!135894)

(declare-fun Unit!136217 () Unit!135894)

(assert (=> b!4752001 (= lt!1916385 Unit!136217)))

(declare-fun lt!1916387 () Unit!135894)

(assert (=> b!4752001 (= lt!1916387 (addForallContainsKeyThenBeforeAdding!876 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))) lt!1916392 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304)))) (_2!30722 (h!59483 (t!360542 (t!360542 l!14304))))))))

(assert (=> b!4752001 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) lambda!222162)))

(declare-fun lt!1916401 () Unit!135894)

(assert (=> b!4752001 (= lt!1916401 lt!1916387)))

(assert (=> b!4752001 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) lambda!222162)))

(declare-fun lt!1916394 () Unit!135894)

(declare-fun Unit!136218 () Unit!135894)

(assert (=> b!4752001 (= lt!1916394 Unit!136218)))

(declare-fun res!2015193 () Bool)

(assert (=> b!4752001 (= res!2015193 (forall!11762 (t!360542 (t!360542 l!14304)) lambda!222162))))

(declare-fun e!2964307 () Bool)

(assert (=> b!4752001 (=> (not res!2015193) (not e!2964307))))

(assert (=> b!4752001 e!2964307))

(declare-fun lt!1916395 () Unit!135894)

(declare-fun Unit!136219 () Unit!135894)

(assert (=> b!4752001 (= lt!1916395 Unit!136219)))

(declare-fun bm!332944 () Bool)

(assert (=> bm!332944 (= call!332951 (forall!11762 (ite c!811368 (toList!6116 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) (toList!6116 lt!1916393)) (ite c!811368 lambda!222156 lambda!222162)))))

(assert (=> b!4752002 (= e!2964309 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304))))))

(declare-fun lt!1916391 () Unit!135894)

(assert (=> b!4752002 (= lt!1916391 call!332949)))

(declare-fun call!332950 () Bool)

(assert (=> b!4752002 call!332950))

(declare-fun lt!1916402 () Unit!135894)

(assert (=> b!4752002 (= lt!1916402 lt!1916391)))

(assert (=> b!4752002 call!332951))

(declare-fun lt!1916384 () Unit!135894)

(declare-fun Unit!136220 () Unit!135894)

(assert (=> b!4752002 (= lt!1916384 Unit!136220)))

(declare-fun b!4752003 () Bool)

(assert (=> b!4752003 (= e!2964308 (invariantList!1594 (toList!6116 lt!1916396)))))

(declare-fun bm!332945 () Bool)

(assert (=> bm!332945 (= call!332950 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) (ite c!811368 lambda!222156 lambda!222162)))))

(declare-fun bm!332946 () Bool)

(assert (=> bm!332946 (= call!332949 (lemmaContainsAllItsOwnKeys!877 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))))))

(declare-fun b!4752004 () Bool)

(assert (=> b!4752004 (= e!2964307 call!332950)))

(declare-fun b!4752005 () Bool)

(declare-fun res!2015192 () Bool)

(assert (=> b!4752005 (=> (not res!2015192) (not e!2964308))))

(assert (=> b!4752005 (= res!2015192 (forall!11762 (toList!6116 (+!2382 (+!2382 lt!1915497 t!14174) (h!59483 (t!360542 l!14304)))) lambda!222163))))

(assert (= (and d!1518976 c!811368) b!4752002))

(assert (= (and d!1518976 (not c!811368)) b!4752001))

(assert (= (and b!4752001 res!2015193) b!4752004))

(assert (= (or b!4752002 b!4752001) bm!332946))

(assert (= (or b!4752002 b!4752001) bm!332944))

(assert (= (or b!4752002 b!4752004) bm!332945))

(assert (= (and d!1518976 res!2015191) b!4752005))

(assert (= (and b!4752005 res!2015192) b!4752003))

(declare-fun m!5715635 () Bool)

(assert (=> d!1518976 m!5715635))

(assert (=> d!1518976 m!5714521))

(declare-fun m!5715637 () Bool)

(assert (=> bm!332944 m!5715637))

(assert (=> bm!332946 m!5714133))

(declare-fun m!5715639 () Bool)

(assert (=> bm!332946 m!5715639))

(declare-fun m!5715641 () Bool)

(assert (=> b!4752003 m!5715641))

(declare-fun m!5715643 () Bool)

(assert (=> b!4752001 m!5715643))

(declare-fun m!5715649 () Bool)

(assert (=> b!4752001 m!5715649))

(declare-fun m!5715651 () Bool)

(assert (=> b!4752001 m!5715651))

(declare-fun m!5715653 () Bool)

(assert (=> b!4752001 m!5715653))

(declare-fun m!5715655 () Bool)

(assert (=> b!4752001 m!5715655))

(assert (=> b!4752001 m!5714133))

(assert (=> b!4752001 m!5715649))

(declare-fun m!5715657 () Bool)

(assert (=> b!4752001 m!5715657))

(declare-fun m!5715659 () Bool)

(assert (=> b!4752001 m!5715659))

(assert (=> b!4752001 m!5715653))

(declare-fun m!5715661 () Bool)

(assert (=> b!4752001 m!5715661))

(declare-fun m!5715663 () Bool)

(assert (=> b!4752001 m!5715663))

(assert (=> b!4752001 m!5714133))

(declare-fun m!5715665 () Bool)

(assert (=> b!4752001 m!5715665))

(declare-fun m!5715667 () Bool)

(assert (=> b!4752001 m!5715667))

(assert (=> b!4752001 m!5715663))

(declare-fun m!5715669 () Bool)

(assert (=> bm!332945 m!5715669))

(declare-fun m!5715671 () Bool)

(assert (=> b!4752005 m!5715671))

(assert (=> b!4751349 d!1518976))

(assert (=> bm!332870 d!1518832))

(declare-fun d!1519004 () Bool)

(declare-fun res!2015228 () Bool)

(declare-fun e!2964352 () Bool)

(assert (=> d!1519004 (=> res!2015228 e!2964352)))

(assert (=> d!1519004 (= res!2015228 ((_ is Nil!53086) (toList!6116 acc!1214)))))

(assert (=> d!1519004 (= (forall!11762 (toList!6116 acc!1214) lambda!222100) e!2964352)))

(declare-fun b!4752060 () Bool)

(declare-fun e!2964353 () Bool)

(assert (=> b!4752060 (= e!2964352 e!2964353)))

(declare-fun res!2015229 () Bool)

(assert (=> b!4752060 (=> (not res!2015229) (not e!2964353))))

(assert (=> b!4752060 (= res!2015229 (dynLambda!21900 lambda!222100 (h!59483 (toList!6116 acc!1214))))))

(declare-fun b!4752061 () Bool)

(assert (=> b!4752061 (= e!2964353 (forall!11762 (t!360542 (toList!6116 acc!1214)) lambda!222100))))

(assert (= (and d!1519004 (not res!2015228)) b!4752060))

(assert (= (and b!4752060 res!2015229) b!4752061))

(declare-fun b_lambda!183349 () Bool)

(assert (=> (not b_lambda!183349) (not b!4752060)))

(declare-fun m!5715689 () Bool)

(assert (=> b!4752060 m!5715689))

(declare-fun m!5715691 () Bool)

(assert (=> b!4752061 m!5715691))

(assert (=> b!4751341 d!1519004))

(assert (=> bm!332864 d!1518920))

(declare-fun d!1519006 () Bool)

(assert (=> d!1519006 (= (eq!1217 (addToMapMapFromBucket!1572 (Cons!53086 t!14174 (t!360542 l!14304)) lt!1915497) (+!2382 (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497) t!14174)) (= (content!9529 (toList!6116 (addToMapMapFromBucket!1572 (Cons!53086 t!14174 (t!360542 l!14304)) lt!1915497))) (content!9529 (toList!6116 (+!2382 (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497) t!14174)))))))

(declare-fun bs!1142854 () Bool)

(assert (= bs!1142854 d!1519006))

(declare-fun m!5715697 () Bool)

(assert (=> bs!1142854 m!5715697))

(declare-fun m!5715699 () Bool)

(assert (=> bs!1142854 m!5715699))

(assert (=> d!1518614 d!1519006))

(declare-fun d!1519010 () Bool)

(declare-fun e!2964357 () Bool)

(assert (=> d!1519010 e!2964357))

(declare-fun res!2015233 () Bool)

(assert (=> d!1519010 (=> (not res!2015233) (not e!2964357))))

(declare-fun lt!1916478 () ListMap!5541)

(assert (=> d!1519010 (= res!2015233 (contains!16509 lt!1916478 (_1!30722 t!14174)))))

(declare-fun lt!1916479 () List!53210)

(assert (=> d!1519010 (= lt!1916478 (ListMap!5542 lt!1916479))))

(declare-fun lt!1916480 () Unit!135894)

(declare-fun lt!1916477 () Unit!135894)

(assert (=> d!1519010 (= lt!1916480 lt!1916477)))

(assert (=> d!1519010 (= (getValueByKey!2080 lt!1916479 (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174)))))

(assert (=> d!1519010 (= lt!1916477 (lemmaContainsTupThenGetReturnValue!1157 lt!1916479 (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1519010 (= lt!1916479 (insertNoDuplicatedKeys!665 (toList!6116 (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497)) (_1!30722 t!14174) (_2!30722 t!14174)))))

(assert (=> d!1519010 (= (+!2382 (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497) t!14174) lt!1916478)))

(declare-fun b!4752067 () Bool)

(declare-fun res!2015234 () Bool)

(assert (=> b!4752067 (=> (not res!2015234) (not e!2964357))))

(assert (=> b!4752067 (= res!2015234 (= (getValueByKey!2080 (toList!6116 lt!1916478) (_1!30722 t!14174)) (Some!12529 (_2!30722 t!14174))))))

(declare-fun b!4752068 () Bool)

(assert (=> b!4752068 (= e!2964357 (contains!16510 (toList!6116 lt!1916478) t!14174))))

(assert (= (and d!1519010 res!2015233) b!4752067))

(assert (= (and b!4752067 res!2015234) b!4752068))

(declare-fun m!5715701 () Bool)

(assert (=> d!1519010 m!5715701))

(declare-fun m!5715703 () Bool)

(assert (=> d!1519010 m!5715703))

(declare-fun m!5715705 () Bool)

(assert (=> d!1519010 m!5715705))

(declare-fun m!5715707 () Bool)

(assert (=> d!1519010 m!5715707))

(declare-fun m!5715709 () Bool)

(assert (=> b!4752067 m!5715709))

(declare-fun m!5715711 () Bool)

(assert (=> b!4752068 m!5715711))

(assert (=> d!1518614 d!1519010))

(assert (=> d!1518614 d!1518590))

(assert (=> d!1518614 d!1518726))

(assert (=> d!1518614 d!1518604))

(declare-fun d!1519012 () Bool)

(assert (=> d!1519012 (eq!1217 (addToMapMapFromBucket!1572 (Cons!53086 t!14174 (t!360542 l!14304)) lt!1915497) (+!2382 (addToMapMapFromBucket!1572 (t!360542 l!14304) lt!1915497) t!14174))))

(assert (=> d!1519012 true))

(declare-fun _$30!224 () Unit!135894)

(assert (=> d!1519012 (= (choose!33822 t!14174 (t!360542 l!14304) lt!1915497) _$30!224)))

(declare-fun bs!1142910 () Bool)

(assert (= bs!1142910 d!1519012))

(assert (=> bs!1142910 m!5713511))

(assert (=> bs!1142910 m!5713515))

(assert (=> bs!1142910 m!5713515))

(assert (=> bs!1142910 m!5714043))

(assert (=> bs!1142910 m!5713511))

(assert (=> bs!1142910 m!5714043))

(assert (=> bs!1142910 m!5714045))

(assert (=> d!1518614 d!1519012))

(declare-fun d!1519014 () Bool)

(declare-fun res!2015235 () Bool)

(declare-fun e!2964358 () Bool)

(assert (=> d!1519014 (=> res!2015235 e!2964358)))

(assert (=> d!1519014 (= res!2015235 ((_ is Nil!53086) l!14304))))

(assert (=> d!1519014 (= (forall!11762 l!14304 lambda!222104) e!2964358)))

(declare-fun b!4752069 () Bool)

(declare-fun e!2964359 () Bool)

(assert (=> b!4752069 (= e!2964358 e!2964359)))

(declare-fun res!2015236 () Bool)

(assert (=> b!4752069 (=> (not res!2015236) (not e!2964359))))

(assert (=> b!4752069 (= res!2015236 (dynLambda!21900 lambda!222104 (h!59483 l!14304)))))

(declare-fun b!4752070 () Bool)

(assert (=> b!4752070 (= e!2964359 (forall!11762 (t!360542 l!14304) lambda!222104))))

(assert (= (and d!1519014 (not res!2015235)) b!4752069))

(assert (= (and b!4752069 res!2015236) b!4752070))

(declare-fun b_lambda!183351 () Bool)

(assert (=> (not b_lambda!183351) (not b!4752069)))

(declare-fun m!5715713 () Bool)

(assert (=> b!4752069 m!5715713))

(declare-fun m!5715715 () Bool)

(assert (=> b!4752070 m!5715715))

(assert (=> d!1518624 d!1519014))

(assert (=> d!1518624 d!1518548))

(declare-fun e!2964360 () Bool)

(declare-fun tp!1350194 () Bool)

(declare-fun b!4752071 () Bool)

(assert (=> b!4752071 (= e!2964360 (and tp_is_empty!31885 tp_is_empty!31887 tp!1350194))))

(assert (=> b!4751361 (= tp!1350193 e!2964360)))

(assert (= (and b!4751361 ((_ is Cons!53086) (t!360542 (toList!6116 acc!1214)))) b!4752071))

(declare-fun b!4752072 () Bool)

(declare-fun tp!1350195 () Bool)

(declare-fun e!2964361 () Bool)

(assert (=> b!4752072 (= e!2964361 (and tp_is_empty!31885 tp_is_empty!31887 tp!1350195))))

(assert (=> b!4751360 (= tp!1350192 e!2964361)))

(assert (= (and b!4751360 ((_ is Cons!53086) (t!360542 (t!360542 l!14304)))) b!4752072))

(declare-fun b_lambda!183353 () Bool)

(assert (= b_lambda!183181 (or d!1518594 b_lambda!183353)))

(declare-fun bs!1142940 () Bool)

(declare-fun d!1519016 () Bool)

(assert (= bs!1142940 (and d!1519016 d!1518594)))

(assert (=> bs!1142940 (= (dynLambda!21900 lambda!222088 (h!59483 (toList!6116 lt!1915494))) (contains!16509 lt!1915800 (_1!30722 (h!59483 (toList!6116 lt!1915494)))))))

(declare-fun m!5715717 () Bool)

(assert (=> bs!1142940 m!5715717))

(assert (=> b!4751366 d!1519016))

(declare-fun b_lambda!183355 () Bool)

(assert (= b_lambda!183249 (or b!4751337 b_lambda!183355)))

(declare-fun bs!1142941 () Bool)

(declare-fun d!1519018 () Bool)

(assert (= bs!1142941 (and d!1519018 b!4751337)))

(assert (=> bs!1142941 (= (dynLambda!21900 lambda!222099 (h!59483 lt!1915493)) (contains!16509 lt!1915882 (_1!30722 (h!59483 lt!1915493))))))

(assert (=> bs!1142941 m!5714065))

(assert (=> b!4751685 d!1519018))

(declare-fun b_lambda!183357 () Bool)

(assert (= b_lambda!183263 (or d!1518590 b_lambda!183357)))

(declare-fun bs!1142942 () Bool)

(declare-fun d!1519020 () Bool)

(assert (= bs!1142942 (and d!1519020 d!1518590)))

(assert (=> bs!1142942 (= (dynLambda!21900 lambda!222081 (h!59483 (toList!6116 lt!1915497))) (contains!16509 lt!1915758 (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(declare-fun m!5715719 () Bool)

(assert (=> bs!1142942 m!5715719))

(assert (=> b!4751760 d!1519020))

(declare-fun b_lambda!183359 () Bool)

(assert (= b_lambda!183257 (or b!4751315 b_lambda!183359)))

(declare-fun bs!1142943 () Bool)

(declare-fun d!1519022 () Bool)

(assert (= bs!1142943 (and d!1519022 b!4751315)))

(assert (=> bs!1142943 (= (dynLambda!21900 lambda!222092 (h!59483 (toList!6116 lt!1915830))) (contains!16509 lt!1915829 (_1!30722 (h!59483 (toList!6116 lt!1915830)))))))

(declare-fun m!5715721 () Bool)

(assert (=> bs!1142943 m!5715721))

(assert (=> b!4751707 d!1519022))

(declare-fun b_lambda!183361 () Bool)

(assert (= b_lambda!183245 (or b!4751337 b_lambda!183361)))

(declare-fun bs!1142944 () Bool)

(declare-fun d!1519024 () Bool)

(assert (= bs!1142944 (and d!1519024 b!4751337)))

(assert (=> bs!1142944 (= (dynLambda!21900 lambda!222099 (h!59483 (toList!6116 lt!1915883))) (contains!16509 lt!1915882 (_1!30722 (h!59483 (toList!6116 lt!1915883)))))))

(declare-fun m!5715723 () Bool)

(assert (=> bs!1142944 m!5715723))

(assert (=> b!4751677 d!1519024))

(declare-fun b_lambda!183363 () Bool)

(assert (= b_lambda!183229 (or b!4751294 b_lambda!183363)))

(declare-fun bs!1142945 () Bool)

(declare-fun d!1519026 () Bool)

(assert (= bs!1142945 (and d!1519026 b!4751294)))

(assert (=> bs!1142945 (= (dynLambda!21900 lambda!222078 (h!59483 (toList!6116 lt!1915497))) (contains!16509 lt!1915497 (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(declare-fun m!5715725 () Bool)

(assert (=> bs!1142945 m!5715725))

(assert (=> b!4751597 d!1519026))

(declare-fun b_lambda!183365 () Bool)

(assert (= b_lambda!183253 (or b!4751315 b_lambda!183365)))

(declare-fun bs!1142946 () Bool)

(declare-fun d!1519028 () Bool)

(assert (= bs!1142946 (and d!1519028 b!4751315)))

(assert (=> bs!1142946 (= (dynLambda!21900 lambda!222092 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915829 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> bs!1142946 m!5713967))

(assert (=> d!1518808 d!1519028))

(declare-fun b_lambda!183367 () Bool)

(assert (= b_lambda!183211 (or d!1518558 b_lambda!183367)))

(declare-fun bs!1142947 () Bool)

(declare-fun d!1519030 () Bool)

(assert (= bs!1142947 (and d!1519030 d!1518558)))

(assert (=> bs!1142947 (= (dynLambda!21900 lambda!222069 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))))) (contains!16509 lt!1915675 (_1!30722 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))))))))

(declare-fun m!5715727 () Bool)

(assert (=> bs!1142947 m!5715727))

(assert (=> b!4751571 d!1519030))

(declare-fun b_lambda!183369 () Bool)

(assert (= b_lambda!183311 (or b!4751267 b_lambda!183369)))

(declare-fun bs!1142948 () Bool)

(declare-fun d!1519032 () Bool)

(assert (= bs!1142948 (and d!1519032 b!4751267)))

(assert (=> bs!1142948 (= (dynLambda!21900 lambda!222067 (h!59483 (t!360542 (t!360542 l!14304)))) (contains!16509 lt!1915671 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304))))))))

(declare-fun m!5715729 () Bool)

(assert (=> bs!1142948 m!5715729))

(assert (=> b!4751915 d!1519032))

(declare-fun b_lambda!183371 () Bool)

(assert (= b_lambda!183267 (or b!4751304 b_lambda!183371)))

(declare-fun bs!1142949 () Bool)

(declare-fun d!1519034 () Bool)

(assert (= bs!1142949 (and d!1519034 b!4751304)))

(assert (=> bs!1142949 (= (dynLambda!21900 lambda!222085 (h!59483 (toList!6116 lt!1915494))) (contains!16509 lt!1915494 (_1!30722 (h!59483 (toList!6116 lt!1915494)))))))

(declare-fun m!5715731 () Bool)

(assert (=> bs!1142949 m!5715731))

(assert (=> b!4751802 d!1519034))

(declare-fun b_lambda!183373 () Bool)

(assert (= b_lambda!183349 (or d!1518618 b_lambda!183373)))

(declare-fun bs!1142950 () Bool)

(declare-fun d!1519036 () Bool)

(assert (= bs!1142950 (and d!1519036 d!1518618)))

(assert (=> bs!1142950 (= (dynLambda!21900 lambda!222100 (h!59483 (toList!6116 acc!1214))) (contains!16509 lt!1915886 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun m!5715733 () Bool)

(assert (=> bs!1142950 m!5715733))

(assert (=> b!4752060 d!1519036))

(declare-fun b_lambda!183375 () Bool)

(assert (= b_lambda!183273 (or b!4751304 b_lambda!183375)))

(declare-fun bs!1142951 () Bool)

(declare-fun d!1519038 () Bool)

(assert (= bs!1142951 (and d!1519038 b!4751304)))

(assert (=> bs!1142951 (= (dynLambda!21900 lambda!222086 (h!59483 l!14304)) (contains!16509 lt!1915796 (_1!30722 (h!59483 l!14304))))))

(assert (=> bs!1142951 m!5713889))

(assert (=> b!4751808 d!1519038))

(declare-fun b_lambda!183377 () Bool)

(assert (= b_lambda!183327 (or b!4751349 b_lambda!183377)))

(declare-fun bs!1142952 () Bool)

(declare-fun d!1519040 () Bool)

(assert (= bs!1142952 (and d!1519040 b!4751349)))

(assert (=> bs!1142952 (= (dynLambda!21900 lambda!222107 (h!59483 (t!360542 (t!360542 l!14304)))) (contains!16509 lt!1915924 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304))))))))

(declare-fun m!5715735 () Bool)

(assert (=> bs!1142952 m!5715735))

(assert (=> b!4751973 d!1519040))

(declare-fun b_lambda!183379 () Bool)

(assert (= b_lambda!183227 (or b!4751294 b_lambda!183379)))

(declare-fun bs!1142953 () Bool)

(declare-fun d!1519042 () Bool)

(assert (= bs!1142953 (and d!1519042 b!4751294)))

(assert (=> bs!1142953 (= (dynLambda!21900 lambda!222079 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (contains!16509 lt!1915754 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(assert (=> bs!1142953 m!5713829))

(assert (=> b!4751595 d!1519042))

(declare-fun b_lambda!183381 () Bool)

(assert (= b_lambda!183277 (or d!1518628 b_lambda!183381)))

(declare-fun bs!1142954 () Bool)

(declare-fun d!1519044 () Bool)

(assert (= bs!1142954 (and d!1519044 d!1518628)))

(assert (=> bs!1142954 (= (dynLambda!21900 lambda!222108 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915928 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun m!5715737 () Bool)

(assert (=> bs!1142954 m!5715737))

(assert (=> b!4751824 d!1519044))

(declare-fun b_lambda!183383 () Bool)

(assert (= b_lambda!183255 (or b!4751315 b_lambda!183383)))

(assert (=> b!4751703 d!1519028))

(declare-fun b_lambda!183385 () Bool)

(assert (= b_lambda!183271 (or b!4751304 b_lambda!183385)))

(declare-fun bs!1142955 () Bool)

(declare-fun d!1519046 () Bool)

(assert (= bs!1142955 (and d!1519046 b!4751304)))

(assert (=> bs!1142955 (= (dynLambda!21900 lambda!222086 (h!59483 (toList!6116 lt!1915797))) (contains!16509 lt!1915796 (_1!30722 (h!59483 (toList!6116 lt!1915797)))))))

(declare-fun m!5715739 () Bool)

(assert (=> bs!1142955 m!5715739))

(assert (=> b!4751806 d!1519046))

(declare-fun b_lambda!183387 () Bool)

(assert (= b_lambda!183199 (or b!4751344 b_lambda!183387)))

(declare-fun bs!1142956 () Bool)

(declare-fun d!1519048 () Bool)

(assert (= bs!1142956 (and d!1519048 b!4751344)))

(assert (=> bs!1142956 (= (dynLambda!21900 lambda!222103 (h!59483 l!14304)) (contains!16509 lt!1915903 (_1!30722 (h!59483 l!14304))))))

(assert (=> bs!1142956 m!5714103))

(assert (=> b!4751539 d!1519048))

(declare-fun b_lambda!183389 () Bool)

(assert (= b_lambda!183205 (or d!1518618 b_lambda!183389)))

(declare-fun bs!1142957 () Bool)

(declare-fun d!1519050 () Bool)

(assert (= bs!1142957 (and d!1519050 d!1518618)))

(assert (=> bs!1142957 (= (dynLambda!21900 lambda!222100 (h!59483 lt!1915493)) (contains!16509 lt!1915886 (_1!30722 (h!59483 lt!1915493))))))

(declare-fun m!5715743 () Bool)

(assert (=> bs!1142957 m!5715743))

(assert (=> b!4751557 d!1519050))

(declare-fun b_lambda!183391 () Bool)

(assert (= b_lambda!183325 (or b!4751349 b_lambda!183391)))

(declare-fun bs!1142958 () Bool)

(declare-fun d!1519052 () Bool)

(assert (= bs!1142958 (and d!1519052 b!4751349)))

(assert (=> bs!1142958 (= (dynLambda!21900 lambda!222107 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174)))) (contains!16509 lt!1915924 (_1!30722 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174))))))))

(declare-fun m!5715749 () Bool)

(assert (=> bs!1142958 m!5715749))

(assert (=> b!4751971 d!1519052))

(declare-fun b_lambda!183393 () Bool)

(assert (= b_lambda!183313 (or b!4751267 b_lambda!183393)))

(declare-fun bs!1142959 () Bool)

(declare-fun d!1519054 () Bool)

(assert (= bs!1142959 (and d!1519054 b!4751267)))

(assert (=> bs!1142959 (= (dynLambda!21900 lambda!222067 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))))) (contains!16509 lt!1915671 (_1!30722 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))))))))

(declare-fun m!5715755 () Bool)

(assert (=> bs!1142959 m!5715755))

(assert (=> b!4751917 d!1519054))

(declare-fun b_lambda!183395 () Bool)

(assert (= b_lambda!183197 (or b!4751344 b_lambda!183395)))

(declare-fun bs!1142960 () Bool)

(declare-fun d!1519056 () Bool)

(assert (= bs!1142960 (and d!1519056 b!4751344)))

(assert (=> bs!1142960 (= (dynLambda!21900 lambda!222103 (h!59483 (toList!6116 acc!1214))) (contains!16509 lt!1915903 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun m!5715763 () Bool)

(assert (=> bs!1142960 m!5715763))

(assert (=> b!4751514 d!1519056))

(declare-fun b_lambda!183397 () Bool)

(assert (= b_lambda!183331 (or b!4751349 b_lambda!183397)))

(declare-fun bs!1142961 () Bool)

(declare-fun d!1519058 () Bool)

(assert (= bs!1142961 (and d!1519058 b!4751349)))

(assert (=> bs!1142961 (= (dynLambda!21900 lambda!222106 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174)))) (contains!16509 (+!2382 lt!1915497 t!14174) (_1!30722 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174))))))))

(assert (=> bs!1142961 m!5713493))

(declare-fun m!5715771 () Bool)

(assert (=> bs!1142961 m!5715771))

(assert (=> b!4751986 d!1519058))

(declare-fun b_lambda!183399 () Bool)

(assert (= b_lambda!183321 (or b!4751349 b_lambda!183399)))

(declare-fun bs!1142962 () Bool)

(declare-fun d!1519060 () Bool)

(assert (= bs!1142962 (and d!1519060 b!4751349)))

(assert (=> bs!1142962 (= (dynLambda!21900 lambda!222107 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915924 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> bs!1142962 m!5714139))

(assert (=> b!4751968 d!1519060))

(declare-fun b_lambda!183401 () Bool)

(assert (= b_lambda!183217 (or d!1518594 b_lambda!183401)))

(declare-fun bs!1142963 () Bool)

(declare-fun d!1519062 () Bool)

(assert (= bs!1142963 (and d!1519062 d!1518594)))

(assert (=> bs!1142963 (= (dynLambda!21900 lambda!222088 (h!59483 l!14304)) (contains!16509 lt!1915800 (_1!30722 (h!59483 l!14304))))))

(declare-fun m!5715783 () Bool)

(assert (=> bs!1142963 m!5715783))

(assert (=> b!4751583 d!1519062))

(declare-fun b_lambda!183403 () Bool)

(assert (= b_lambda!183315 (or b!4751267 b_lambda!183403)))

(declare-fun bs!1142964 () Bool)

(declare-fun d!1519064 () Bool)

(assert (= bs!1142964 (and d!1519064 b!4751267)))

(assert (=> bs!1142964 (= (dynLambda!21900 lambda!222066 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304))))) (contains!16509 (+!2382 lt!1915494 (h!59483 l!14304)) (_1!30722 (h!59483 (toList!6116 (+!2382 lt!1915494 (h!59483 l!14304)))))))))

(assert (=> bs!1142964 m!5713519))

(declare-fun m!5715787 () Bool)

(assert (=> bs!1142964 m!5715787))

(assert (=> b!4751919 d!1519064))

(declare-fun b_lambda!183405 () Bool)

(assert (= b_lambda!183209 (or d!1518628 b_lambda!183405)))

(declare-fun bs!1142965 () Bool)

(declare-fun d!1519066 () Bool)

(assert (= bs!1142965 (and d!1519066 d!1518628)))

(assert (=> bs!1142965 (= (dynLambda!21900 lambda!222108 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174)))) (contains!16509 lt!1915928 (_1!30722 (h!59483 (toList!6116 (+!2382 lt!1915497 t!14174))))))))

(declare-fun m!5715791 () Bool)

(assert (=> bs!1142965 m!5715791))

(assert (=> b!4751569 d!1519066))

(declare-fun b_lambda!183407 () Bool)

(assert (= b_lambda!183309 (or b!4751267 b_lambda!183407)))

(declare-fun bs!1142966 () Bool)

(declare-fun d!1519070 () Bool)

(assert (= bs!1142966 (and d!1519070 b!4751267)))

(assert (=> bs!1142966 (= (dynLambda!21900 lambda!222067 (h!59483 (toList!6116 lt!1915672))) (contains!16509 lt!1915671 (_1!30722 (h!59483 (toList!6116 lt!1915672)))))))

(declare-fun m!5715793 () Bool)

(assert (=> bs!1142966 m!5715793))

(assert (=> b!4751904 d!1519070))

(declare-fun b_lambda!183409 () Bool)

(assert (= b_lambda!183265 (or b!4751304 b_lambda!183409)))

(declare-fun bs!1142967 () Bool)

(declare-fun d!1519072 () Bool)

(assert (= bs!1142967 (and d!1519072 b!4751304)))

(assert (=> bs!1142967 (= (dynLambda!21900 lambda!222086 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915796 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun m!5715795 () Bool)

(assert (=> bs!1142967 m!5715795))

(assert (=> b!4751800 d!1519072))

(declare-fun b_lambda!183411 () Bool)

(assert (= b_lambda!183215 (or d!1518604 b_lambda!183411)))

(declare-fun bs!1142968 () Bool)

(declare-fun d!1519074 () Bool)

(assert (= bs!1142968 (and d!1519074 d!1518604)))

(assert (=> bs!1142968 (= (dynLambda!21900 lambda!222094 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915833 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun m!5715797 () Bool)

(assert (=> bs!1142968 m!5715797))

(assert (=> b!4751575 d!1519074))

(declare-fun b_lambda!183413 () Bool)

(assert (= b_lambda!183191 (or d!1518590 b_lambda!183413)))

(declare-fun bs!1142969 () Bool)

(declare-fun d!1519076 () Bool)

(assert (= bs!1142969 (and d!1519076 d!1518590)))

(assert (=> bs!1142969 (= (dynLambda!21900 lambda!222081 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304)))) (contains!16509 lt!1915758 (_1!30722 (h!59483 (Cons!53086 t!14174 (t!360542 l!14304))))))))

(declare-fun m!5715799 () Bool)

(assert (=> bs!1142969 m!5715799))

(assert (=> b!4751504 d!1519076))

(declare-fun b_lambda!183415 () Bool)

(assert (= b_lambda!183261 (or b!4751315 b_lambda!183415)))

(declare-fun bs!1142971 () Bool)

(declare-fun d!1519078 () Bool)

(assert (= bs!1142971 (and d!1519078 b!4751315)))

(assert (=> bs!1142971 (= (dynLambda!21900 lambda!222091 (h!59483 (toList!6116 lt!1915497))) (contains!16509 lt!1915497 (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(assert (=> bs!1142971 m!5715725))

(assert (=> b!4751720 d!1519078))

(declare-fun b_lambda!183417 () Bool)

(assert (= b_lambda!183305 (or b!4751267 b_lambda!183417)))

(declare-fun bs!1142973 () Bool)

(declare-fun d!1519080 () Bool)

(assert (= bs!1142973 (and d!1519080 b!4751267)))

(assert (=> bs!1142973 (= (dynLambda!21900 lambda!222067 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915671 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(assert (=> bs!1142973 m!5713703))

(assert (=> d!1518928 d!1519080))

(declare-fun b_lambda!183419 () Bool)

(assert (= b_lambda!183307 (or b!4751267 b_lambda!183419)))

(assert (=> b!4751902 d!1519080))

(declare-fun b_lambda!183421 () Bool)

(assert (= b_lambda!183233 (or b!4751294 b_lambda!183421)))

(declare-fun bs!1142975 () Bool)

(declare-fun d!1519082 () Bool)

(assert (= bs!1142975 (and d!1519082 b!4751294)))

(assert (=> bs!1142975 (= (dynLambda!21900 lambda!222079 (h!59483 (toList!6116 lt!1915755))) (contains!16509 lt!1915754 (_1!30722 (h!59483 (toList!6116 lt!1915755)))))))

(declare-fun m!5715801 () Bool)

(assert (=> bs!1142975 m!5715801))

(assert (=> b!4751601 d!1519082))

(declare-fun b_lambda!183423 () Bool)

(assert (= b_lambda!183195 (or b!4751344 b_lambda!183423)))

(declare-fun bs!1142978 () Bool)

(declare-fun d!1519084 () Bool)

(assert (= bs!1142978 (and d!1519084 b!4751344)))

(assert (=> bs!1142978 (= (dynLambda!21900 lambda!222103 (h!59483 (toList!6116 lt!1915904))) (contains!16509 lt!1915903 (_1!30722 (h!59483 (toList!6116 lt!1915904)))))))

(declare-fun m!5715803 () Bool)

(assert (=> bs!1142978 m!5715803))

(assert (=> b!4751512 d!1519084))

(declare-fun b_lambda!183425 () Bool)

(assert (= b_lambda!183259 (or b!4751315 b_lambda!183425)))

(declare-fun bs!1142980 () Bool)

(declare-fun d!1519086 () Bool)

(assert (= bs!1142980 (and d!1519086 b!4751315)))

(assert (=> bs!1142980 (= (dynLambda!21900 lambda!222092 (h!59483 (toList!6116 lt!1915497))) (contains!16509 lt!1915829 (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(declare-fun m!5715805 () Bool)

(assert (=> bs!1142980 m!5715805))

(assert (=> b!4751718 d!1519086))

(declare-fun b_lambda!183427 () Bool)

(assert (= b_lambda!183203 (or b!4751344 b_lambda!183427)))

(declare-fun bs!1142982 () Bool)

(declare-fun d!1519088 () Bool)

(assert (= bs!1142982 (and d!1519088 b!4751344)))

(assert (=> bs!1142982 (= (dynLambda!21900 lambda!222102 (h!59483 (toList!6116 acc!1214))) (contains!16509 acc!1214 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun m!5715807 () Bool)

(assert (=> bs!1142982 m!5715807))

(assert (=> b!4751543 d!1519088))

(declare-fun b_lambda!183429 () Bool)

(assert (= b_lambda!183281 (or d!1518558 b_lambda!183429)))

(declare-fun bs!1142984 () Bool)

(declare-fun d!1519090 () Bool)

(assert (= bs!1142984 (and d!1519090 d!1518558)))

(assert (=> bs!1142984 (= (dynLambda!21900 lambda!222069 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915675 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun m!5715809 () Bool)

(assert (=> bs!1142984 m!5715809))

(assert (=> b!4751828 d!1519090))

(declare-fun b_lambda!183431 () Bool)

(assert (= b_lambda!183219 (or d!1518624 b_lambda!183431)))

(declare-fun bs!1142987 () Bool)

(declare-fun d!1519092 () Bool)

(assert (= bs!1142987 (and d!1519092 d!1518624)))

(assert (=> bs!1142987 (= (dynLambda!21900 lambda!222104 (h!59483 (toList!6116 acc!1214))) (contains!16509 lt!1915907 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun m!5715811 () Bool)

(assert (=> bs!1142987 m!5715811))

(assert (=> b!4751585 d!1519092))

(declare-fun b_lambda!183433 () Bool)

(assert (= b_lambda!183243 (or b!4751337 b_lambda!183433)))

(declare-fun bs!1142989 () Bool)

(declare-fun d!1519094 () Bool)

(assert (= bs!1142989 (and d!1519094 b!4751337)))

(assert (=> bs!1142989 (= (dynLambda!21900 lambda!222099 (h!59483 (t!360542 lt!1915493))) (contains!16509 lt!1915882 (_1!30722 (h!59483 (t!360542 lt!1915493)))))))

(declare-fun m!5715813 () Bool)

(assert (=> bs!1142989 m!5715813))

(assert (=> b!4751675 d!1519094))

(declare-fun b_lambda!183435 () Bool)

(assert (= b_lambda!183275 (or b!4751304 b_lambda!183435)))

(assert (=> d!1518862 d!1519038))

(declare-fun b_lambda!183437 () Bool)

(assert (= b_lambda!183201 (or b!4751344 b_lambda!183437)))

(declare-fun bs!1142991 () Bool)

(declare-fun d!1519096 () Bool)

(assert (= bs!1142991 (and d!1519096 b!4751344)))

(assert (=> bs!1142991 (= (dynLambda!21900 lambda!222103 (h!59483 (t!360542 l!14304))) (contains!16509 lt!1915903 (_1!30722 (h!59483 (t!360542 l!14304)))))))

(declare-fun m!5715815 () Bool)

(assert (=> bs!1142991 m!5715815))

(assert (=> b!4751541 d!1519096))

(declare-fun b_lambda!183439 () Bool)

(assert (= b_lambda!183351 (or d!1518624 b_lambda!183439)))

(declare-fun bs!1142993 () Bool)

(declare-fun d!1519098 () Bool)

(assert (= bs!1142993 (and d!1519098 d!1518624)))

(assert (=> bs!1142993 (= (dynLambda!21900 lambda!222104 (h!59483 l!14304)) (contains!16509 lt!1915907 (_1!30722 (h!59483 l!14304))))))

(declare-fun m!5715817 () Bool)

(assert (=> bs!1142993 m!5715817))

(assert (=> b!4752069 d!1519098))

(declare-fun b_lambda!183441 () Bool)

(assert (= b_lambda!183231 (or b!4751294 b_lambda!183441)))

(declare-fun bs!1142995 () Bool)

(declare-fun d!1519100 () Bool)

(assert (= bs!1142995 (and d!1519100 b!4751294)))

(assert (=> bs!1142995 (= (dynLambda!21900 lambda!222079 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304))))) (contains!16509 lt!1915754 (_1!30722 (h!59483 (t!360542 (Cons!53086 t!14174 (t!360542 l!14304)))))))))

(declare-fun m!5715819 () Bool)

(assert (=> bs!1142995 m!5715819))

(assert (=> b!4751599 d!1519100))

(declare-fun b_lambda!183443 () Bool)

(assert (= b_lambda!183269 (or b!4751304 b_lambda!183443)))

(declare-fun bs!1142997 () Bool)

(declare-fun d!1519102 () Bool)

(assert (= bs!1142997 (and d!1519102 b!4751304)))

(assert (=> bs!1142997 (= (dynLambda!21900 lambda!222086 (h!59483 (toList!6116 lt!1915494))) (contains!16509 lt!1915796 (_1!30722 (h!59483 (toList!6116 lt!1915494)))))))

(declare-fun m!5715821 () Bool)

(assert (=> bs!1142997 m!5715821))

(assert (=> b!4751804 d!1519102))

(declare-fun b_lambda!183445 () Bool)

(assert (= b_lambda!183329 (or b!4751349 b_lambda!183445)))

(declare-fun bs!1142999 () Bool)

(declare-fun d!1519104 () Bool)

(assert (= bs!1142999 (and d!1519104 b!4751349)))

(assert (=> bs!1142999 (= (dynLambda!21900 lambda!222107 (h!59483 (toList!6116 lt!1915925))) (contains!16509 lt!1915924 (_1!30722 (h!59483 (toList!6116 lt!1915925)))))))

(declare-fun m!5715823 () Bool)

(assert (=> bs!1142999 m!5715823))

(assert (=> b!4751975 d!1519104))

(declare-fun b_lambda!183447 () Bool)

(assert (= b_lambda!183251 (or b!4751315 b_lambda!183447)))

(declare-fun bs!1143001 () Bool)

(declare-fun d!1519106 () Bool)

(assert (= bs!1143001 (and d!1519106 b!4751315)))

(assert (=> bs!1143001 (= (dynLambda!21900 lambda!222092 (h!59483 (t!360542 (t!360542 l!14304)))) (contains!16509 lt!1915829 (_1!30722 (h!59483 (t!360542 (t!360542 l!14304))))))))

(declare-fun m!5715825 () Bool)

(assert (=> bs!1143001 m!5715825))

(assert (=> b!4751700 d!1519106))

(declare-fun b_lambda!183449 () Bool)

(assert (= b_lambda!183301 (or d!1518604 b_lambda!183449)))

(declare-fun bs!1143003 () Bool)

(declare-fun d!1519108 () Bool)

(assert (= bs!1143003 (and d!1519108 d!1518604)))

(assert (=> bs!1143003 (= (dynLambda!21900 lambda!222094 (h!59483 (toList!6116 lt!1915497))) (contains!16509 lt!1915833 (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(declare-fun m!5715827 () Bool)

(assert (=> bs!1143003 m!5715827))

(assert (=> b!4751887 d!1519108))

(declare-fun b_lambda!183451 () Bool)

(assert (= b_lambda!183237 (or b!4751294 b_lambda!183451)))

(assert (=> d!1518764 d!1519042))

(declare-fun b_lambda!183453 () Bool)

(assert (= b_lambda!183241 (or b!4751337 b_lambda!183453)))

(declare-fun bs!1143005 () Bool)

(declare-fun d!1519110 () Bool)

(assert (= bs!1143005 (and d!1519110 b!4751337)))

(assert (=> bs!1143005 (= (dynLambda!21900 lambda!222099 (h!59483 (toList!6116 acc!1214))) (contains!16509 lt!1915882 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(declare-fun m!5715829 () Bool)

(assert (=> bs!1143005 m!5715829))

(assert (=> b!4751671 d!1519110))

(declare-fun b_lambda!183455 () Bool)

(assert (= b_lambda!183235 (or b!4751294 b_lambda!183455)))

(declare-fun bs!1143007 () Bool)

(declare-fun d!1519112 () Bool)

(assert (= bs!1143007 (and d!1519112 b!4751294)))

(assert (=> bs!1143007 (= (dynLambda!21900 lambda!222079 (h!59483 (toList!6116 lt!1915497))) (contains!16509 lt!1915754 (_1!30722 (h!59483 (toList!6116 lt!1915497)))))))

(declare-fun m!5715831 () Bool)

(assert (=> bs!1143007 m!5715831))

(assert (=> b!4751623 d!1519112))

(declare-fun b_lambda!183457 () Bool)

(assert (= b_lambda!183247 (or b!4751337 b_lambda!183457)))

(assert (=> d!1518788 d!1519018))

(declare-fun b_lambda!183459 () Bool)

(assert (= b_lambda!183333 (or b!4751349 b_lambda!183459)))

(assert (=> d!1518968 d!1519060))

(declare-fun b_lambda!183461 () Bool)

(assert (= b_lambda!183239 (or b!4751337 b_lambda!183461)))

(declare-fun bs!1143009 () Bool)

(declare-fun d!1519114 () Bool)

(assert (= bs!1143009 (and d!1519114 b!4751337)))

(assert (=> bs!1143009 (= (dynLambda!21900 lambda!222098 (h!59483 (toList!6116 acc!1214))) (contains!16509 acc!1214 (_1!30722 (h!59483 (toList!6116 acc!1214)))))))

(assert (=> bs!1143009 m!5715807))

(assert (=> b!4751660 d!1519114))

(declare-fun b_lambda!183463 () Bool)

(assert (= b_lambda!183193 (or b!4751344 b_lambda!183463)))

(assert (=> d!1518674 d!1519048))

(check-sat (not b!4751704) (not b!4751866) (not bm!332898) (not b_lambda!183419) (not b!4751695) (not bm!332910) (not bm!332936) (not b!4751447) (not b_lambda!183285) (not d!1518880) (not b!4751464) (not b_lambda!183375) (not b!4751611) (not b!4751373) (not b_lambda!183409) (not bm!332933) (not b!4751864) (not b_lambda!183373) (not b_lambda!183459) (not b!4751534) (not b!4751462) (not b!4751748) (not bm!332929) (not bs!1142993) (not bs!1143009) (not b_lambda!183425) (not bs!1142947) (not d!1518654) (not b!4751678) (not b_lambda!183383) (not b!4751963) (not bs!1142958) (not b!4751865) (not d!1518864) (not b!4751473) (not b_lambda!183443) (not b!4751743) (not b!4751619) (not b!4751566) (not b_lambda!183453) (not d!1518890) (not b!4751618) (not b!4751661) (not bm!332922) (not b!4751600) (not b!4751805) (not b!4751633) (not b_lambda!183399) (not b!4751899) (not b!4751702) (not b!4751705) (not b!4751496) (not b!4751588) (not b!4751639) (not b_lambda!183403) (not b!4751455) (not d!1518812) (not b!4751994) (not b_lambda!183355) (not d!1518928) (not b_lambda!183369) (not b_lambda!183413) (not bs!1142982) (not b!4751701) (not b!4751523) (not bs!1142980) (not b!4751586) (not b!4751530) (not d!1519010) (not b!4751518) (not b!4751711) (not b!4751687) (not b!4751841) (not d!1518900) (not b!4751417) (not b!4751831) (not b!4751790) (not b!4751788) (not b!4751706) (not b!4751507) (not bs!1142991) (not d!1519006) (not b!4751812) (not b!4752070) (not b!4751603) (not d!1518790) (not b!4751499) (not bm!332915) (not bs!1142955) (not b!4751629) (not b!4751817) (not d!1518934) (not bm!332918) (not bm!332926) (not d!1518832) (not b!4751900) (not bm!332890) (not bs!1142943) (not b!4751972) (not d!1518972) (not bs!1142942) (not d!1518970) (not b!4751911) (not b_lambda!183431) (not b!4751813) (not b!4751665) (not b!4752005) (not d!1518846) (not b!4751662) (not b!4751476) (not b!4751536) (not b!4751777) (not b!4751982) (not b!4751491) (not b!4751465) (not d!1518758) (not b!4751925) (not bm!332907) (not d!1518648) (not bs!1142971) (not b!4751645) (not b!4751923) (not bs!1142940) (not b!4751799) (not b!4751758) (not bs!1142960) (not b!4751888) (not b!4751762) (not b!4751853) (not b!4751980) (not bm!332891) (not b!4751746) (not b!4751642) (not b!4751880) (not d!1518636) (not b!4751983) (not b_lambda!183377) (not bs!1142999) (not b!4751501) (not b!4751527) (not d!1518676) (not b!4751819) (not b!4751976) (not b!4751676) (not b!4751590) (not b!4751470) (not b_lambda!183463) (not bs!1142962) (not b!4751773) (not b!4751843) (not b!4752068) (not b_lambda!183389) (not b!4751554) (not b!4751979) (not bm!332932) (not b!4751690) (not d!1518944) (not b!4751471) (not b!4751798) (not b!4751493) (not d!1518682) (not b!4751522) (not b!4751479) (not b!4751847) (not b!4752072) (not b!4751844) (not b!4751896) (not b!4751686) (not d!1518774) (not b!4751672) (not bm!332942) (not b!4751657) (not b!4751646) (not bm!332902) (not d!1518696) (not bm!332935) (not b!4751815) (not b!4751459) (not b!4751596) (not b!4751999) (not d!1518762) (not b!4751614) (not b!4751594) (not b!4751621) (not b!4751957) (not d!1518926) (not bs!1142965) (not b_lambda!183379) (not bm!332934) (not bs!1143005) (not bm!332913) (not b!4751768) (not b!4751560) (not b!4751861) (not bs!1142995) (not b!4751570) (not bs!1142961) (not b!4751547) (not b_lambda!183395) (not b!4751525) (not b!4752071) (not d!1518686) (not b_lambda!183393) (not b_lambda!183363) (not b!4751991) (not d!1518802) (not bs!1142959) (not b!4751810) (not b!4751521) (not b!4751392) (not d!1518794) (not b!4751564) (not b!4751780) (not b!4751659) (not b!4751367) (not b!4751664) (not d!1518756) (not b!4751468) (not bm!332920) (not b_lambda!183213) (not b!4751770) (not b!4751516) (not bs!1142946) (not d!1518708) (not bm!332896) (not bm!332892) (not b!4751668) (not b!4751612) (not d!1518806) (not b!4751906) (not b!4751592) (not d!1518668) (not b!4751411) (not b!4751638) (not b_lambda!183451) (not b_lambda!183187) (not b!4751572) (not d!1518808) (not b!4751838) (not b!4751580) (not bs!1142949) (not b!4751876) (not b!4751615) (not b!4751648) (not bs!1142948) (not bs!1142978) (not b!4751602) (not d!1518920) (not b!4751395) (not bs!1142945) (not d!1518952) (not b!4751715) (not bs!1142956) (not bs!1142963) (not b!4751697) (not b!4751531) (not b!4751669) (not b!4751977) (not b!4751582) (not b!4751913) (not b!4751960) (not b!4751786) (not d!1518642) (not b_lambda!183385) (not b!4751818) (not bs!1143001) (not b!4751505) (not b!4751829) (not d!1518666) (not bm!332897) (not b!4751959) (not b!4751605) (not b!4751835) (not b!4751908) (not b_lambda!183429) (not b!4751969) (not b!4751394) (not bm!332943) (not bs!1142957) (not d!1518656) (not b!4751673) (not b!4751625) (not b!4751791) (not b!4752001) (not bm!332901) (not bm!332925) (not b!4751878) (not b!4751965) (not b!4751749) (not bs!1142973) (not b!4751574) (not b!4751624) (not bm!332900) (not b!4751540) (not d!1518770) (not b!4751699) (not b_lambda!183297) (not d!1518706) (not b!4751905) (not b_lambda!183357) (not b!4751682) (not b!4751803) (not bm!332941) (not bs!1142951) (not b!4751765) (not bs!1142950) (not b!4751654) (not b_lambda!183387) (not b!4751644) (not b_lambda!183407) (not b_lambda!183221) (not b!4751515) (not b!4751450) (not bm!332937) (not b!4751850) (not bm!332921) (not b!4751998) (not b!4751562) (not d!1518886) (not bs!1142952) (not b!4751631) (not d!1518634) (not b!4751400) (not b_lambda!183457) (not b!4751694) (not b!4751995) (not b!4751674) (not b!4751634) tp_is_empty!31887 (not b_lambda!183423) (not b!4751584) (not b_lambda!183439) (not bm!332917) (not d!1518772) (not bs!1142969) (not b!4751692) (not b!4751538) (not b_lambda!183405) (not b!4751503) (not b!4751716) (not b!4751745) (not b!4751870) (not b!4751622) (not b!4751962) (not d!1518694) (not b!4751670) (not b!4751722) (not b!4751898) (not b!4751987) (not b!4751775) (not b!4751992) (not b!4751449) (not b!4751689) (not b_lambda!183223) (not bs!1142967) (not b_lambda!183397) (not b!4751684) (not d!1518908) (not d!1518974) (not d!1518640) (not b_lambda!183455) (not d!1518684) (not bm!332904) (not b_lambda!183461) (not b!4751989) (not b!4751779) (not b!4751576) (not b!4751709) (not b!4751789) (not b!4751528) (not b!4752003) (not b!4751513) (not bs!1142987) (not b!4751985) (not d!1518922) (not b_lambda!183441) (not b!4751776) (not b_lambda!183401) (not bs!1142944) (not bs!1142954) (not bm!332911) (not d!1518964) (not b!4751627) (not d!1518816) (not b!4751608) (not bs!1142997) (not b!4751974) (not b!4751693) (not b!4751532) (not b!4751620) (not d!1518976) (not bm!332919) (not b_lambda!183225) (not b!4751836) (not b!4751456) (not bm!332899) (not b!4751636) (not bm!332914) (not b!4751862) (not b!4751849) (not b!4752067) (not b!4751920) (not d!1518862) (not b!4751764) (not b!4751578) (not b!4751794) (not b!4751533) (not b_lambda!183449) (not d!1518766) (not b!4751577) (not b_lambda!183445) (not b_lambda!183185) (not b!4751809) (not b!4751492) (not b!4751750) (not b!4751510) (not bm!332895) (not b!4751542) (not bs!1142989) (not b!4751482) (not bm!332903) (not b!4751568) (not d!1518844) (not b!4751997) (not b!4751478) (not bm!332946) (not b_lambda!183411) (not b!4751717) (not b!4751399) (not bs!1142953) (not b!4751842) (not d!1518942) (not b!4751467) (not d!1518870) (not b!4751769) (not b_lambda!183283) (not b!4751719) (not b!4751714) (not b!4751903) (not bm!332912) (not b_lambda!183391) (not b_lambda!183427) (not bs!1142941) (not b!4751524) (not b!4751793) (not b!4751712) (not d!1518796) (not d!1518714) (not b!4751856) (not b!4751801) (not b!4751506) (not b!4751807) (not b!4751988) (not b!4751796) (not b!4751912) (not b!4751658) (not b!4751610) (not b!4751398) (not b!4751606) (not b!4751816) (not bm!332928) (not bm!332906) (not b!4751544) (not b!4751797) (not b_lambda!183421) (not d!1518860) (not d!1518848) (not b!4751418) (not d!1518746) (not b!4751558) (not b!4751679) (not b!4751721) (not b!4751825) (not b!4751761) (not b!4751483) (not b!4751680) (not b!4751767) (not b!4751598) (not b!4751855) (not b_lambda!183207) (not bs!1143007) (not b!4751460) (not b_lambda!183361) (not b!4751488) (not d!1518674) (not b_lambda!183183) (not b!4751655) (not b!4751751) (not bs!1142968) (not b_lambda!183367) (not b!4751909) (not b!4751964) (not bs!1142966) (not b!4751921) (not b!4751918) (not b_lambda!183435) (not b_lambda!183189) (not b!4751984) (not b!4751726) (not b!4751489) (not bs!1143003) (not b_lambda!183359) (not b!4751649) (not b!4751397) (not bm!332879) (not d!1518788) (not b!4751458) (not d!1518968) (not b_lambda!183415) (not bs!1142964) (not b!4751785) (not b!4751916) (not bm!332945) (not b!4751519) (not b!4751708) (not d!1518830) (not b!4751839) (not b!4751885) (not b_lambda!183381) (not b!4751472) (not bs!1142975) (not b!4751480) (not b!4751630) (not b_lambda!183293) (not d!1518652) (not b!4751873) (not b_lambda!183417) (not b!4751724) (not b!4751996) (not b!4751901) (not b!4751637) (not b_lambda!183365) (not d!1519012) (not bm!332916) (not b_lambda!183447) tp_is_empty!31885 (not b_lambda!183353) (not bm!332905) (not d!1518730) (not b!4752061) (not b!4751914) (not b_lambda!183371) (not b!4751609) (not d!1518764) (not b!4751617) (not b_lambda!183433) (not b!4751556) (not d!1518822) (not d!1518778) (not bm!332944) (not d!1518782) (not bs!1142984) (not b_lambda!183437) (not d!1518840) (not b_lambda!183295) (not b!4751667) (not b!4751502) (not bm!332927) (not d!1518754))
(check-sat)
