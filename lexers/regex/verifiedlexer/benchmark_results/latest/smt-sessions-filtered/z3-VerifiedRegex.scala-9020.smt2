; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485412 () Bool)

(assert start!485412)

(declare-fun b!4750676 () Bool)

(declare-fun res!2014413 () Bool)

(declare-fun e!2963419 () Bool)

(assert (=> b!4750676 (=> (not res!2014413) (not e!2963419))))

(declare-datatypes ((K!14505 0))(
  ( (K!14506 (val!19875 Int)) )
))
(declare-datatypes ((V!14751 0))(
  ( (V!14752 (val!19876 Int)) )
))
(declare-datatypes ((tuple2!54844 0))(
  ( (tuple2!54845 (_1!30716 K!14505) (_2!30716 V!14751)) )
))
(declare-datatypes ((List!53204 0))(
  ( (Nil!53080) (Cons!53080 (h!59477 tuple2!54844) (t!360530 List!53204)) )
))
(declare-fun l!14304 () List!53204)

(get-info :version)

(assert (=> b!4750676 (= res!2014413 (not ((_ is Nil!53080) l!14304)))))

(declare-fun b!4750677 () Bool)

(declare-datatypes ((ListMap!5529 0))(
  ( (ListMap!5530 (toList!6110 List!53204)) )
))
(declare-fun lt!1914254 () ListMap!5529)

(declare-fun e!2963421 () Bool)

(declare-fun acc!1214 () ListMap!5529)

(declare-fun eq!1211 (ListMap!5529 ListMap!5529) Bool)

(declare-fun addToMapMapFromBucket!1566 (List!53204 ListMap!5529) ListMap!5529)

(assert (=> b!4750677 (= e!2963421 (eq!1211 lt!1914254 (addToMapMapFromBucket!1566 l!14304 acc!1214)))))

(declare-fun res!2014412 () Bool)

(assert (=> start!485412 (=> (not res!2014412) (not e!2963419))))

(declare-fun noDuplicateKeys!2142 (List!53204) Bool)

(assert (=> start!485412 (= res!2014412 (noDuplicateKeys!2142 l!14304))))

(assert (=> start!485412 e!2963419))

(declare-fun e!2963422 () Bool)

(assert (=> start!485412 e!2963422))

(declare-fun tp_is_empty!31861 () Bool)

(declare-fun tp_is_empty!31863 () Bool)

(assert (=> start!485412 (and tp_is_empty!31861 tp_is_empty!31863)))

(declare-fun e!2963420 () Bool)

(declare-fun inv!68375 (ListMap!5529) Bool)

(assert (=> start!485412 (and (inv!68375 acc!1214) e!2963420)))

(declare-fun b!4750678 () Bool)

(declare-fun lt!1914256 () ListMap!5529)

(declare-fun t!14174 () tuple2!54844)

(declare-fun lt!1914257 () ListMap!5529)

(declare-fun +!2376 (ListMap!5529 tuple2!54844) ListMap!5529)

(assert (=> b!4750678 (= e!2963419 (not (eq!1211 lt!1914256 (addToMapMapFromBucket!1566 (t!360530 l!14304) (+!2376 lt!1914257 t!14174)))))))

(assert (=> b!4750678 e!2963421))

(declare-fun res!2014410 () Bool)

(assert (=> b!4750678 (=> (not res!2014410) (not e!2963421))))

(assert (=> b!4750678 (= res!2014410 (eq!1211 lt!1914256 (+!2376 lt!1914254 t!14174)))))

(assert (=> b!4750678 (= lt!1914256 (addToMapMapFromBucket!1566 (Cons!53080 t!14174 (t!360530 l!14304)) lt!1914257))))

(declare-datatypes ((Unit!135508 0))(
  ( (Unit!135509) )
))
(declare-fun lt!1914255 () Unit!135508)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!456 (tuple2!54844 List!53204 ListMap!5529) Unit!135508)

(assert (=> b!4750678 (= lt!1914255 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!456 t!14174 (t!360530 l!14304) lt!1914257))))

(assert (=> b!4750678 (= lt!1914254 (addToMapMapFromBucket!1566 (t!360530 l!14304) lt!1914257))))

(assert (=> b!4750678 (= lt!1914257 (+!2376 acc!1214 (h!59477 l!14304)))))

(declare-fun b!4750679 () Bool)

(declare-fun tp!1350125 () Bool)

(assert (=> b!4750679 (= e!2963420 tp!1350125)))

(declare-fun tp!1350124 () Bool)

(declare-fun b!4750680 () Bool)

(assert (=> b!4750680 (= e!2963422 (and tp_is_empty!31861 tp_is_empty!31863 tp!1350124))))

(declare-fun b!4750681 () Bool)

(declare-fun res!2014411 () Bool)

(assert (=> b!4750681 (=> (not res!2014411) (not e!2963419))))

(assert (=> b!4750681 (= res!2014411 (noDuplicateKeys!2142 (Cons!53080 t!14174 l!14304)))))

(assert (= (and start!485412 res!2014412) b!4750681))

(assert (= (and b!4750681 res!2014411) b!4750676))

(assert (= (and b!4750676 res!2014413) b!4750678))

(assert (= (and b!4750678 res!2014410) b!4750677))

(assert (= (and start!485412 ((_ is Cons!53080) l!14304)) b!4750680))

(assert (= start!485412 b!4750679))

(declare-fun m!5711673 () Bool)

(assert (=> b!4750677 m!5711673))

(assert (=> b!4750677 m!5711673))

(declare-fun m!5711675 () Bool)

(assert (=> b!4750677 m!5711675))

(declare-fun m!5711677 () Bool)

(assert (=> start!485412 m!5711677))

(declare-fun m!5711679 () Bool)

(assert (=> start!485412 m!5711679))

(declare-fun m!5711681 () Bool)

(assert (=> b!4750678 m!5711681))

(declare-fun m!5711683 () Bool)

(assert (=> b!4750678 m!5711683))

(declare-fun m!5711685 () Bool)

(assert (=> b!4750678 m!5711685))

(declare-fun m!5711687 () Bool)

(assert (=> b!4750678 m!5711687))

(declare-fun m!5711689 () Bool)

(assert (=> b!4750678 m!5711689))

(assert (=> b!4750678 m!5711683))

(declare-fun m!5711691 () Bool)

(assert (=> b!4750678 m!5711691))

(declare-fun m!5711693 () Bool)

(assert (=> b!4750678 m!5711693))

(assert (=> b!4750678 m!5711691))

(declare-fun m!5711695 () Bool)

(assert (=> b!4750678 m!5711695))

(assert (=> b!4750678 m!5711689))

(declare-fun m!5711697 () Bool)

(assert (=> b!4750678 m!5711697))

(declare-fun m!5711699 () Bool)

(assert (=> b!4750681 m!5711699))

(check-sat (not b!4750678) tp_is_empty!31863 (not b!4750681) (not b!4750677) (not b!4750680) (not b!4750679) (not start!485412) tp_is_empty!31861)
(check-sat)
(get-model)

(declare-fun d!1518335 () Bool)

(declare-fun res!2014418 () Bool)

(declare-fun e!2963427 () Bool)

(assert (=> d!1518335 (=> res!2014418 e!2963427)))

(assert (=> d!1518335 (= res!2014418 (not ((_ is Cons!53080) (Cons!53080 t!14174 l!14304))))))

(assert (=> d!1518335 (= (noDuplicateKeys!2142 (Cons!53080 t!14174 l!14304)) e!2963427)))

(declare-fun b!4750686 () Bool)

(declare-fun e!2963428 () Bool)

(assert (=> b!4750686 (= e!2963427 e!2963428)))

(declare-fun res!2014419 () Bool)

(assert (=> b!4750686 (=> (not res!2014419) (not e!2963428))))

(declare-fun containsKey!3550 (List!53204 K!14505) Bool)

(assert (=> b!4750686 (= res!2014419 (not (containsKey!3550 (t!360530 (Cons!53080 t!14174 l!14304)) (_1!30716 (h!59477 (Cons!53080 t!14174 l!14304))))))))

(declare-fun b!4750687 () Bool)

(assert (=> b!4750687 (= e!2963428 (noDuplicateKeys!2142 (t!360530 (Cons!53080 t!14174 l!14304))))))

(assert (= (and d!1518335 (not res!2014418)) b!4750686))

(assert (= (and b!4750686 res!2014419) b!4750687))

(declare-fun m!5711701 () Bool)

(assert (=> b!4750686 m!5711701))

(declare-fun m!5711703 () Bool)

(assert (=> b!4750687 m!5711703))

(assert (=> b!4750681 d!1518335))

(declare-fun d!1518337 () Bool)

(declare-fun res!2014420 () Bool)

(declare-fun e!2963429 () Bool)

(assert (=> d!1518337 (=> res!2014420 e!2963429)))

(assert (=> d!1518337 (= res!2014420 (not ((_ is Cons!53080) l!14304)))))

(assert (=> d!1518337 (= (noDuplicateKeys!2142 l!14304) e!2963429)))

(declare-fun b!4750688 () Bool)

(declare-fun e!2963430 () Bool)

(assert (=> b!4750688 (= e!2963429 e!2963430)))

(declare-fun res!2014421 () Bool)

(assert (=> b!4750688 (=> (not res!2014421) (not e!2963430))))

(assert (=> b!4750688 (= res!2014421 (not (containsKey!3550 (t!360530 l!14304) (_1!30716 (h!59477 l!14304)))))))

(declare-fun b!4750689 () Bool)

(assert (=> b!4750689 (= e!2963430 (noDuplicateKeys!2142 (t!360530 l!14304)))))

(assert (= (and d!1518337 (not res!2014420)) b!4750688))

(assert (= (and b!4750688 res!2014421) b!4750689))

(declare-fun m!5711705 () Bool)

(assert (=> b!4750688 m!5711705))

(declare-fun m!5711707 () Bool)

(assert (=> b!4750689 m!5711707))

(assert (=> start!485412 d!1518337))

(declare-fun d!1518339 () Bool)

(declare-fun invariantList!1588 (List!53204) Bool)

(assert (=> d!1518339 (= (inv!68375 acc!1214) (invariantList!1588 (toList!6110 acc!1214)))))

(declare-fun bs!1140290 () Bool)

(assert (= bs!1140290 d!1518339))

(declare-fun m!5711709 () Bool)

(assert (=> bs!1140290 m!5711709))

(assert (=> start!485412 d!1518339))

(declare-fun d!1518341 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9523 (List!53204) (InoxSet tuple2!54844))

(assert (=> d!1518341 (= (eq!1211 lt!1914254 (addToMapMapFromBucket!1566 l!14304 acc!1214)) (= (content!9523 (toList!6110 lt!1914254)) (content!9523 (toList!6110 (addToMapMapFromBucket!1566 l!14304 acc!1214)))))))

(declare-fun bs!1140291 () Bool)

(assert (= bs!1140291 d!1518341))

(declare-fun m!5711711 () Bool)

(assert (=> bs!1140291 m!5711711))

(declare-fun m!5711713 () Bool)

(assert (=> bs!1140291 m!5711713))

(assert (=> b!4750677 d!1518341))

(declare-fun b!4750754 () Bool)

(assert (=> b!4750754 true))

(declare-fun bs!1140363 () Bool)

(declare-fun b!4750752 () Bool)

(assert (= bs!1140363 (and b!4750752 b!4750754)))

(declare-fun lambda!221766 () Int)

(declare-fun lambda!221765 () Int)

(assert (=> bs!1140363 (= lambda!221766 lambda!221765)))

(assert (=> b!4750752 true))

(declare-fun lambda!221767 () Int)

(declare-fun lt!1914461 () ListMap!5529)

(assert (=> bs!1140363 (= (= lt!1914461 acc!1214) (= lambda!221767 lambda!221765))))

(assert (=> b!4750752 (= (= lt!1914461 acc!1214) (= lambda!221767 lambda!221766))))

(assert (=> b!4750752 true))

(declare-fun bs!1140364 () Bool)

(declare-fun d!1518343 () Bool)

(assert (= bs!1140364 (and d!1518343 b!4750754)))

(declare-fun lt!1914449 () ListMap!5529)

(declare-fun lambda!221768 () Int)

(assert (=> bs!1140364 (= (= lt!1914449 acc!1214) (= lambda!221768 lambda!221765))))

(declare-fun bs!1140365 () Bool)

(assert (= bs!1140365 (and d!1518343 b!4750752)))

(assert (=> bs!1140365 (= (= lt!1914449 acc!1214) (= lambda!221768 lambda!221766))))

(assert (=> bs!1140365 (= (= lt!1914449 lt!1914461) (= lambda!221768 lambda!221767))))

(assert (=> d!1518343 true))

(declare-fun b!4750750 () Bool)

(declare-fun res!2014466 () Bool)

(declare-fun e!2963468 () Bool)

(assert (=> b!4750750 (=> (not res!2014466) (not e!2963468))))

(declare-fun forall!11756 (List!53204 Int) Bool)

(assert (=> b!4750750 (= res!2014466 (forall!11756 (toList!6110 acc!1214) lambda!221768))))

(declare-fun b!4750751 () Bool)

(declare-fun e!2963470 () Bool)

(assert (=> b!4750751 (= e!2963470 (forall!11756 (toList!6110 acc!1214) lambda!221767))))

(assert (=> d!1518343 e!2963468))

(declare-fun res!2014464 () Bool)

(assert (=> d!1518343 (=> (not res!2014464) (not e!2963468))))

(assert (=> d!1518343 (= res!2014464 (forall!11756 l!14304 lambda!221768))))

(declare-fun e!2963469 () ListMap!5529)

(assert (=> d!1518343 (= lt!1914449 e!2963469)))

(declare-fun c!811156 () Bool)

(assert (=> d!1518343 (= c!811156 ((_ is Nil!53080) l!14304))))

(assert (=> d!1518343 (noDuplicateKeys!2142 l!14304)))

(assert (=> d!1518343 (= (addToMapMapFromBucket!1566 l!14304 acc!1214) lt!1914449)))

(assert (=> b!4750752 (= e!2963469 lt!1914461)))

(declare-fun lt!1914453 () ListMap!5529)

(assert (=> b!4750752 (= lt!1914453 (+!2376 acc!1214 (h!59477 l!14304)))))

(assert (=> b!4750752 (= lt!1914461 (addToMapMapFromBucket!1566 (t!360530 l!14304) (+!2376 acc!1214 (h!59477 l!14304))))))

(declare-fun lt!1914465 () Unit!135508)

(declare-fun call!332715 () Unit!135508)

(assert (=> b!4750752 (= lt!1914465 call!332715)))

(assert (=> b!4750752 (forall!11756 (toList!6110 acc!1214) lambda!221766)))

(declare-fun lt!1914450 () Unit!135508)

(assert (=> b!4750752 (= lt!1914450 lt!1914465)))

(assert (=> b!4750752 (forall!11756 (toList!6110 lt!1914453) lambda!221767)))

(declare-fun lt!1914455 () Unit!135508)

(declare-fun Unit!135532 () Unit!135508)

(assert (=> b!4750752 (= lt!1914455 Unit!135532)))

(assert (=> b!4750752 (forall!11756 (t!360530 l!14304) lambda!221767)))

(declare-fun lt!1914462 () Unit!135508)

(declare-fun Unit!135533 () Unit!135508)

(assert (=> b!4750752 (= lt!1914462 Unit!135533)))

(declare-fun lt!1914464 () Unit!135508)

(declare-fun Unit!135534 () Unit!135508)

(assert (=> b!4750752 (= lt!1914464 Unit!135534)))

(declare-fun lt!1914452 () Unit!135508)

(declare-fun forallContained!3782 (List!53204 Int tuple2!54844) Unit!135508)

(assert (=> b!4750752 (= lt!1914452 (forallContained!3782 (toList!6110 lt!1914453) lambda!221767 (h!59477 l!14304)))))

(declare-fun contains!16498 (ListMap!5529 K!14505) Bool)

(assert (=> b!4750752 (contains!16498 lt!1914453 (_1!30716 (h!59477 l!14304)))))

(declare-fun lt!1914467 () Unit!135508)

(declare-fun Unit!135535 () Unit!135508)

(assert (=> b!4750752 (= lt!1914467 Unit!135535)))

(assert (=> b!4750752 (contains!16498 lt!1914461 (_1!30716 (h!59477 l!14304)))))

(declare-fun lt!1914466 () Unit!135508)

(declare-fun Unit!135536 () Unit!135508)

(assert (=> b!4750752 (= lt!1914466 Unit!135536)))

(assert (=> b!4750752 (forall!11756 l!14304 lambda!221767)))

(declare-fun lt!1914468 () Unit!135508)

(declare-fun Unit!135537 () Unit!135508)

(assert (=> b!4750752 (= lt!1914468 Unit!135537)))

(declare-fun call!332716 () Bool)

(assert (=> b!4750752 call!332716))

(declare-fun lt!1914469 () Unit!135508)

(declare-fun Unit!135538 () Unit!135508)

(assert (=> b!4750752 (= lt!1914469 Unit!135538)))

(declare-fun lt!1914458 () Unit!135508)

(declare-fun Unit!135539 () Unit!135508)

(assert (=> b!4750752 (= lt!1914458 Unit!135539)))

(declare-fun lt!1914454 () Unit!135508)

(declare-fun addForallContainsKeyThenBeforeAdding!870 (ListMap!5529 ListMap!5529 K!14505 V!14751) Unit!135508)

(assert (=> b!4750752 (= lt!1914454 (addForallContainsKeyThenBeforeAdding!870 acc!1214 lt!1914461 (_1!30716 (h!59477 l!14304)) (_2!30716 (h!59477 l!14304))))))

(assert (=> b!4750752 (forall!11756 (toList!6110 acc!1214) lambda!221767)))

(declare-fun lt!1914456 () Unit!135508)

(assert (=> b!4750752 (= lt!1914456 lt!1914454)))

(assert (=> b!4750752 (forall!11756 (toList!6110 acc!1214) lambda!221767)))

(declare-fun lt!1914459 () Unit!135508)

(declare-fun Unit!135540 () Unit!135508)

(assert (=> b!4750752 (= lt!1914459 Unit!135540)))

(declare-fun res!2014465 () Bool)

(declare-fun call!332714 () Bool)

(assert (=> b!4750752 (= res!2014465 call!332714)))

(assert (=> b!4750752 (=> (not res!2014465) (not e!2963470))))

(assert (=> b!4750752 e!2963470))

(declare-fun lt!1914460 () Unit!135508)

(declare-fun Unit!135541 () Unit!135508)

(assert (=> b!4750752 (= lt!1914460 Unit!135541)))

(declare-fun bm!332709 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!871 (ListMap!5529) Unit!135508)

(assert (=> bm!332709 (= call!332715 (lemmaContainsAllItsOwnKeys!871 acc!1214))))

(declare-fun b!4750753 () Bool)

(assert (=> b!4750753 (= e!2963468 (invariantList!1588 (toList!6110 lt!1914449)))))

(declare-fun bm!332710 () Bool)

(assert (=> bm!332710 (= call!332714 (forall!11756 (ite c!811156 (toList!6110 acc!1214) l!14304) (ite c!811156 lambda!221765 lambda!221767)))))

(declare-fun bm!332711 () Bool)

(assert (=> bm!332711 (= call!332716 (forall!11756 (ite c!811156 (toList!6110 acc!1214) (toList!6110 lt!1914453)) (ite c!811156 lambda!221765 lambda!221767)))))

(assert (=> b!4750754 (= e!2963469 acc!1214)))

(declare-fun lt!1914457 () Unit!135508)

(assert (=> b!4750754 (= lt!1914457 call!332715)))

(assert (=> b!4750754 call!332716))

(declare-fun lt!1914463 () Unit!135508)

(assert (=> b!4750754 (= lt!1914463 lt!1914457)))

(assert (=> b!4750754 call!332714))

(declare-fun lt!1914451 () Unit!135508)

(declare-fun Unit!135542 () Unit!135508)

(assert (=> b!4750754 (= lt!1914451 Unit!135542)))

(assert (= (and d!1518343 c!811156) b!4750754))

(assert (= (and d!1518343 (not c!811156)) b!4750752))

(assert (= (and b!4750752 res!2014465) b!4750751))

(assert (= (or b!4750754 b!4750752) bm!332709))

(assert (= (or b!4750754 b!4750752) bm!332710))

(assert (= (or b!4750754 b!4750752) bm!332711))

(assert (= (and d!1518343 res!2014464) b!4750750))

(assert (= (and b!4750750 res!2014466) b!4750753))

(declare-fun m!5711903 () Bool)

(assert (=> b!4750750 m!5711903))

(declare-fun m!5711905 () Bool)

(assert (=> bm!332710 m!5711905))

(declare-fun m!5711907 () Bool)

(assert (=> d!1518343 m!5711907))

(assert (=> d!1518343 m!5711677))

(declare-fun m!5711909 () Bool)

(assert (=> bm!332709 m!5711909))

(declare-fun m!5711911 () Bool)

(assert (=> b!4750753 m!5711911))

(declare-fun m!5711913 () Bool)

(assert (=> b!4750751 m!5711913))

(declare-fun m!5711915 () Bool)

(assert (=> b!4750752 m!5711915))

(declare-fun m!5711917 () Bool)

(assert (=> b!4750752 m!5711917))

(declare-fun m!5711919 () Bool)

(assert (=> b!4750752 m!5711919))

(declare-fun m!5711921 () Bool)

(assert (=> b!4750752 m!5711921))

(assert (=> b!4750752 m!5711681))

(declare-fun m!5711923 () Bool)

(assert (=> b!4750752 m!5711923))

(assert (=> b!4750752 m!5711913))

(declare-fun m!5711925 () Bool)

(assert (=> b!4750752 m!5711925))

(assert (=> b!4750752 m!5711681))

(assert (=> b!4750752 m!5711913))

(declare-fun m!5711927 () Bool)

(assert (=> b!4750752 m!5711927))

(declare-fun m!5711929 () Bool)

(assert (=> b!4750752 m!5711929))

(declare-fun m!5711931 () Bool)

(assert (=> b!4750752 m!5711931))

(declare-fun m!5711933 () Bool)

(assert (=> bm!332711 m!5711933))

(assert (=> b!4750677 d!1518343))

(declare-fun d!1518371 () Bool)

(assert (=> d!1518371 (= (eq!1211 lt!1914256 (addToMapMapFromBucket!1566 (t!360530 l!14304) (+!2376 lt!1914257 t!14174))) (= (content!9523 (toList!6110 lt!1914256)) (content!9523 (toList!6110 (addToMapMapFromBucket!1566 (t!360530 l!14304) (+!2376 lt!1914257 t!14174))))))))

(declare-fun bs!1140366 () Bool)

(assert (= bs!1140366 d!1518371))

(declare-fun m!5711935 () Bool)

(assert (=> bs!1140366 m!5711935))

(declare-fun m!5711937 () Bool)

(assert (=> bs!1140366 m!5711937))

(assert (=> b!4750678 d!1518371))

(declare-fun d!1518373 () Bool)

(assert (=> d!1518373 (eq!1211 (addToMapMapFromBucket!1566 (Cons!53080 t!14174 (t!360530 l!14304)) lt!1914257) (+!2376 (addToMapMapFromBucket!1566 (t!360530 l!14304) lt!1914257) t!14174))))

(declare-fun lt!1914472 () Unit!135508)

(declare-fun choose!33816 (tuple2!54844 List!53204 ListMap!5529) Unit!135508)

(assert (=> d!1518373 (= lt!1914472 (choose!33816 t!14174 (t!360530 l!14304) lt!1914257))))

(assert (=> d!1518373 (noDuplicateKeys!2142 (t!360530 l!14304))))

(assert (=> d!1518373 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!456 t!14174 (t!360530 l!14304) lt!1914257) lt!1914472)))

(declare-fun bs!1140367 () Bool)

(assert (= bs!1140367 d!1518373))

(assert (=> bs!1140367 m!5711693))

(assert (=> bs!1140367 m!5711693))

(declare-fun m!5711939 () Bool)

(assert (=> bs!1140367 m!5711939))

(assert (=> bs!1140367 m!5711707))

(declare-fun m!5711941 () Bool)

(assert (=> bs!1140367 m!5711941))

(assert (=> bs!1140367 m!5711697))

(assert (=> bs!1140367 m!5711697))

(assert (=> bs!1140367 m!5711939))

(declare-fun m!5711943 () Bool)

(assert (=> bs!1140367 m!5711943))

(assert (=> b!4750678 d!1518373))

(declare-fun bs!1140368 () Bool)

(declare-fun b!4750767 () Bool)

(assert (= bs!1140368 (and b!4750767 b!4750754)))

(declare-fun lambda!221769 () Int)

(assert (=> bs!1140368 (= (= lt!1914257 acc!1214) (= lambda!221769 lambda!221765))))

(declare-fun bs!1140369 () Bool)

(assert (= bs!1140369 (and b!4750767 b!4750752)))

(assert (=> bs!1140369 (= (= lt!1914257 acc!1214) (= lambda!221769 lambda!221766))))

(assert (=> bs!1140369 (= (= lt!1914257 lt!1914461) (= lambda!221769 lambda!221767))))

(declare-fun bs!1140370 () Bool)

(assert (= bs!1140370 (and b!4750767 d!1518343)))

(assert (=> bs!1140370 (= (= lt!1914257 lt!1914449) (= lambda!221769 lambda!221768))))

(assert (=> b!4750767 true))

(declare-fun bs!1140371 () Bool)

(declare-fun b!4750765 () Bool)

(assert (= bs!1140371 (and b!4750765 b!4750752)))

(declare-fun lambda!221770 () Int)

(assert (=> bs!1140371 (= (= lt!1914257 acc!1214) (= lambda!221770 lambda!221766))))

(declare-fun bs!1140372 () Bool)

(assert (= bs!1140372 (and b!4750765 b!4750754)))

(assert (=> bs!1140372 (= (= lt!1914257 acc!1214) (= lambda!221770 lambda!221765))))

(declare-fun bs!1140373 () Bool)

(assert (= bs!1140373 (and b!4750765 d!1518343)))

(assert (=> bs!1140373 (= (= lt!1914257 lt!1914449) (= lambda!221770 lambda!221768))))

(assert (=> bs!1140371 (= (= lt!1914257 lt!1914461) (= lambda!221770 lambda!221767))))

(declare-fun bs!1140374 () Bool)

(assert (= bs!1140374 (and b!4750765 b!4750767)))

(assert (=> bs!1140374 (= lambda!221770 lambda!221769)))

(assert (=> b!4750765 true))

(declare-fun lt!1914485 () ListMap!5529)

(declare-fun lambda!221771 () Int)

(assert (=> bs!1140372 (= (= lt!1914485 acc!1214) (= lambda!221771 lambda!221765))))

(assert (=> bs!1140373 (= (= lt!1914485 lt!1914449) (= lambda!221771 lambda!221768))))

(assert (=> bs!1140371 (= (= lt!1914485 lt!1914461) (= lambda!221771 lambda!221767))))

(assert (=> bs!1140374 (= (= lt!1914485 lt!1914257) (= lambda!221771 lambda!221769))))

(assert (=> b!4750765 (= (= lt!1914485 lt!1914257) (= lambda!221771 lambda!221770))))

(assert (=> bs!1140371 (= (= lt!1914485 acc!1214) (= lambda!221771 lambda!221766))))

(assert (=> b!4750765 true))

(declare-fun bs!1140375 () Bool)

(declare-fun d!1518375 () Bool)

(assert (= bs!1140375 (and d!1518375 b!4750765)))

(declare-fun lambda!221772 () Int)

(declare-fun lt!1914473 () ListMap!5529)

(assert (=> bs!1140375 (= (= lt!1914473 lt!1914485) (= lambda!221772 lambda!221771))))

(declare-fun bs!1140376 () Bool)

(assert (= bs!1140376 (and d!1518375 b!4750754)))

(assert (=> bs!1140376 (= (= lt!1914473 acc!1214) (= lambda!221772 lambda!221765))))

(declare-fun bs!1140377 () Bool)

(assert (= bs!1140377 (and d!1518375 d!1518343)))

(assert (=> bs!1140377 (= (= lt!1914473 lt!1914449) (= lambda!221772 lambda!221768))))

(declare-fun bs!1140378 () Bool)

(assert (= bs!1140378 (and d!1518375 b!4750752)))

(assert (=> bs!1140378 (= (= lt!1914473 lt!1914461) (= lambda!221772 lambda!221767))))

(declare-fun bs!1140379 () Bool)

(assert (= bs!1140379 (and d!1518375 b!4750767)))

(assert (=> bs!1140379 (= (= lt!1914473 lt!1914257) (= lambda!221772 lambda!221769))))

(assert (=> bs!1140375 (= (= lt!1914473 lt!1914257) (= lambda!221772 lambda!221770))))

(assert (=> bs!1140378 (= (= lt!1914473 acc!1214) (= lambda!221772 lambda!221766))))

(assert (=> d!1518375 true))

(declare-fun b!4750763 () Bool)

(declare-fun res!2014469 () Bool)

(declare-fun e!2963475 () Bool)

(assert (=> b!4750763 (=> (not res!2014469) (not e!2963475))))

(assert (=> b!4750763 (= res!2014469 (forall!11756 (toList!6110 lt!1914257) lambda!221772))))

(declare-fun b!4750764 () Bool)

(declare-fun e!2963477 () Bool)

(assert (=> b!4750764 (= e!2963477 (forall!11756 (toList!6110 lt!1914257) lambda!221771))))

(assert (=> d!1518375 e!2963475))

(declare-fun res!2014467 () Bool)

(assert (=> d!1518375 (=> (not res!2014467) (not e!2963475))))

(assert (=> d!1518375 (= res!2014467 (forall!11756 (Cons!53080 t!14174 (t!360530 l!14304)) lambda!221772))))

(declare-fun e!2963476 () ListMap!5529)

(assert (=> d!1518375 (= lt!1914473 e!2963476)))

(declare-fun c!811157 () Bool)

(assert (=> d!1518375 (= c!811157 ((_ is Nil!53080) (Cons!53080 t!14174 (t!360530 l!14304))))))

(assert (=> d!1518375 (noDuplicateKeys!2142 (Cons!53080 t!14174 (t!360530 l!14304)))))

(assert (=> d!1518375 (= (addToMapMapFromBucket!1566 (Cons!53080 t!14174 (t!360530 l!14304)) lt!1914257) lt!1914473)))

(assert (=> b!4750765 (= e!2963476 lt!1914485)))

(declare-fun lt!1914477 () ListMap!5529)

(assert (=> b!4750765 (= lt!1914477 (+!2376 lt!1914257 (h!59477 (Cons!53080 t!14174 (t!360530 l!14304)))))))

(assert (=> b!4750765 (= lt!1914485 (addToMapMapFromBucket!1566 (t!360530 (Cons!53080 t!14174 (t!360530 l!14304))) (+!2376 lt!1914257 (h!59477 (Cons!53080 t!14174 (t!360530 l!14304))))))))

(declare-fun lt!1914489 () Unit!135508)

(declare-fun call!332718 () Unit!135508)

(assert (=> b!4750765 (= lt!1914489 call!332718)))

(assert (=> b!4750765 (forall!11756 (toList!6110 lt!1914257) lambda!221770)))

(declare-fun lt!1914474 () Unit!135508)

(assert (=> b!4750765 (= lt!1914474 lt!1914489)))

(assert (=> b!4750765 (forall!11756 (toList!6110 lt!1914477) lambda!221771)))

(declare-fun lt!1914479 () Unit!135508)

(declare-fun Unit!135543 () Unit!135508)

(assert (=> b!4750765 (= lt!1914479 Unit!135543)))

(assert (=> b!4750765 (forall!11756 (t!360530 (Cons!53080 t!14174 (t!360530 l!14304))) lambda!221771)))

(declare-fun lt!1914486 () Unit!135508)

(declare-fun Unit!135544 () Unit!135508)

(assert (=> b!4750765 (= lt!1914486 Unit!135544)))

(declare-fun lt!1914488 () Unit!135508)

(declare-fun Unit!135545 () Unit!135508)

(assert (=> b!4750765 (= lt!1914488 Unit!135545)))

(declare-fun lt!1914476 () Unit!135508)

(assert (=> b!4750765 (= lt!1914476 (forallContained!3782 (toList!6110 lt!1914477) lambda!221771 (h!59477 (Cons!53080 t!14174 (t!360530 l!14304)))))))

(assert (=> b!4750765 (contains!16498 lt!1914477 (_1!30716 (h!59477 (Cons!53080 t!14174 (t!360530 l!14304)))))))

(declare-fun lt!1914491 () Unit!135508)

(declare-fun Unit!135547 () Unit!135508)

(assert (=> b!4750765 (= lt!1914491 Unit!135547)))

(assert (=> b!4750765 (contains!16498 lt!1914485 (_1!30716 (h!59477 (Cons!53080 t!14174 (t!360530 l!14304)))))))

(declare-fun lt!1914490 () Unit!135508)

(declare-fun Unit!135550 () Unit!135508)

(assert (=> b!4750765 (= lt!1914490 Unit!135550)))

(assert (=> b!4750765 (forall!11756 (Cons!53080 t!14174 (t!360530 l!14304)) lambda!221771)))

(declare-fun lt!1914492 () Unit!135508)

(declare-fun Unit!135551 () Unit!135508)

(assert (=> b!4750765 (= lt!1914492 Unit!135551)))

(declare-fun call!332719 () Bool)

(assert (=> b!4750765 call!332719))

(declare-fun lt!1914493 () Unit!135508)

(declare-fun Unit!135553 () Unit!135508)

(assert (=> b!4750765 (= lt!1914493 Unit!135553)))

(declare-fun lt!1914482 () Unit!135508)

(declare-fun Unit!135554 () Unit!135508)

(assert (=> b!4750765 (= lt!1914482 Unit!135554)))

(declare-fun lt!1914478 () Unit!135508)

(assert (=> b!4750765 (= lt!1914478 (addForallContainsKeyThenBeforeAdding!870 lt!1914257 lt!1914485 (_1!30716 (h!59477 (Cons!53080 t!14174 (t!360530 l!14304)))) (_2!30716 (h!59477 (Cons!53080 t!14174 (t!360530 l!14304))))))))

(assert (=> b!4750765 (forall!11756 (toList!6110 lt!1914257) lambda!221771)))

(declare-fun lt!1914480 () Unit!135508)

(assert (=> b!4750765 (= lt!1914480 lt!1914478)))

(assert (=> b!4750765 (forall!11756 (toList!6110 lt!1914257) lambda!221771)))

(declare-fun lt!1914483 () Unit!135508)

(declare-fun Unit!135558 () Unit!135508)

(assert (=> b!4750765 (= lt!1914483 Unit!135558)))

(declare-fun res!2014468 () Bool)

(declare-fun call!332717 () Bool)

(assert (=> b!4750765 (= res!2014468 call!332717)))

(assert (=> b!4750765 (=> (not res!2014468) (not e!2963477))))

(assert (=> b!4750765 e!2963477))

(declare-fun lt!1914484 () Unit!135508)

(declare-fun Unit!135560 () Unit!135508)

(assert (=> b!4750765 (= lt!1914484 Unit!135560)))

(declare-fun bm!332712 () Bool)

(assert (=> bm!332712 (= call!332718 (lemmaContainsAllItsOwnKeys!871 lt!1914257))))

(declare-fun b!4750766 () Bool)

(assert (=> b!4750766 (= e!2963475 (invariantList!1588 (toList!6110 lt!1914473)))))

(declare-fun bm!332713 () Bool)

(assert (=> bm!332713 (= call!332717 (forall!11756 (ite c!811157 (toList!6110 lt!1914257) (Cons!53080 t!14174 (t!360530 l!14304))) (ite c!811157 lambda!221769 lambda!221771)))))

(declare-fun bm!332714 () Bool)

(assert (=> bm!332714 (= call!332719 (forall!11756 (ite c!811157 (toList!6110 lt!1914257) (toList!6110 lt!1914477)) (ite c!811157 lambda!221769 lambda!221771)))))

(assert (=> b!4750767 (= e!2963476 lt!1914257)))

(declare-fun lt!1914481 () Unit!135508)

(assert (=> b!4750767 (= lt!1914481 call!332718)))

(assert (=> b!4750767 call!332719))

(declare-fun lt!1914487 () Unit!135508)

(assert (=> b!4750767 (= lt!1914487 lt!1914481)))

(assert (=> b!4750767 call!332717))

(declare-fun lt!1914475 () Unit!135508)

(declare-fun Unit!135563 () Unit!135508)

(assert (=> b!4750767 (= lt!1914475 Unit!135563)))

(assert (= (and d!1518375 c!811157) b!4750767))

(assert (= (and d!1518375 (not c!811157)) b!4750765))

(assert (= (and b!4750765 res!2014468) b!4750764))

(assert (= (or b!4750767 b!4750765) bm!332712))

(assert (= (or b!4750767 b!4750765) bm!332713))

(assert (= (or b!4750767 b!4750765) bm!332714))

(assert (= (and d!1518375 res!2014467) b!4750763))

(assert (= (and b!4750763 res!2014469) b!4750766))

(declare-fun m!5711945 () Bool)

(assert (=> b!4750763 m!5711945))

(declare-fun m!5711947 () Bool)

(assert (=> bm!332713 m!5711947))

(declare-fun m!5711949 () Bool)

(assert (=> d!1518375 m!5711949))

(declare-fun m!5711951 () Bool)

(assert (=> d!1518375 m!5711951))

(declare-fun m!5711953 () Bool)

(assert (=> bm!332712 m!5711953))

(declare-fun m!5711955 () Bool)

(assert (=> b!4750766 m!5711955))

(declare-fun m!5711957 () Bool)

(assert (=> b!4750764 m!5711957))

(declare-fun m!5711959 () Bool)

(assert (=> b!4750765 m!5711959))

(declare-fun m!5711961 () Bool)

(assert (=> b!4750765 m!5711961))

(declare-fun m!5711963 () Bool)

(assert (=> b!4750765 m!5711963))

(declare-fun m!5711965 () Bool)

(assert (=> b!4750765 m!5711965))

(declare-fun m!5711967 () Bool)

(assert (=> b!4750765 m!5711967))

(declare-fun m!5711969 () Bool)

(assert (=> b!4750765 m!5711969))

(assert (=> b!4750765 m!5711957))

(declare-fun m!5711971 () Bool)

(assert (=> b!4750765 m!5711971))

(assert (=> b!4750765 m!5711967))

(assert (=> b!4750765 m!5711957))

(declare-fun m!5711973 () Bool)

(assert (=> b!4750765 m!5711973))

(declare-fun m!5711975 () Bool)

(assert (=> b!4750765 m!5711975))

(declare-fun m!5711977 () Bool)

(assert (=> b!4750765 m!5711977))

(declare-fun m!5711979 () Bool)

(assert (=> bm!332714 m!5711979))

(assert (=> b!4750678 d!1518375))

(declare-fun bs!1140380 () Bool)

(declare-fun b!4750772 () Bool)

(assert (= bs!1140380 (and b!4750772 b!4750765)))

(declare-fun lambda!221773 () Int)

(assert (=> bs!1140380 (= (= (+!2376 lt!1914257 t!14174) lt!1914485) (= lambda!221773 lambda!221771))))

(declare-fun bs!1140381 () Bool)

(assert (= bs!1140381 (and b!4750772 b!4750754)))

(assert (=> bs!1140381 (= (= (+!2376 lt!1914257 t!14174) acc!1214) (= lambda!221773 lambda!221765))))

(declare-fun bs!1140382 () Bool)

(assert (= bs!1140382 (and b!4750772 d!1518343)))

(assert (=> bs!1140382 (= (= (+!2376 lt!1914257 t!14174) lt!1914449) (= lambda!221773 lambda!221768))))

(declare-fun bs!1140383 () Bool)

(assert (= bs!1140383 (and b!4750772 b!4750752)))

(assert (=> bs!1140383 (= (= (+!2376 lt!1914257 t!14174) lt!1914461) (= lambda!221773 lambda!221767))))

(declare-fun bs!1140384 () Bool)

(assert (= bs!1140384 (and b!4750772 d!1518375)))

(assert (=> bs!1140384 (= (= (+!2376 lt!1914257 t!14174) lt!1914473) (= lambda!221773 lambda!221772))))

(declare-fun bs!1140385 () Bool)

(assert (= bs!1140385 (and b!4750772 b!4750767)))

(assert (=> bs!1140385 (= (= (+!2376 lt!1914257 t!14174) lt!1914257) (= lambda!221773 lambda!221769))))

(assert (=> bs!1140380 (= (= (+!2376 lt!1914257 t!14174) lt!1914257) (= lambda!221773 lambda!221770))))

(assert (=> bs!1140383 (= (= (+!2376 lt!1914257 t!14174) acc!1214) (= lambda!221773 lambda!221766))))

(assert (=> b!4750772 true))

(declare-fun bs!1140386 () Bool)

(declare-fun b!4750770 () Bool)

(assert (= bs!1140386 (and b!4750770 b!4750765)))

(declare-fun lambda!221774 () Int)

(assert (=> bs!1140386 (= (= (+!2376 lt!1914257 t!14174) lt!1914485) (= lambda!221774 lambda!221771))))

(declare-fun bs!1140387 () Bool)

(assert (= bs!1140387 (and b!4750770 b!4750754)))

(assert (=> bs!1140387 (= (= (+!2376 lt!1914257 t!14174) acc!1214) (= lambda!221774 lambda!221765))))

(declare-fun bs!1140388 () Bool)

(assert (= bs!1140388 (and b!4750770 d!1518343)))

(assert (=> bs!1140388 (= (= (+!2376 lt!1914257 t!14174) lt!1914449) (= lambda!221774 lambda!221768))))

(declare-fun bs!1140389 () Bool)

(assert (= bs!1140389 (and b!4750770 b!4750752)))

(assert (=> bs!1140389 (= (= (+!2376 lt!1914257 t!14174) lt!1914461) (= lambda!221774 lambda!221767))))

(declare-fun bs!1140390 () Bool)

(assert (= bs!1140390 (and b!4750770 b!4750767)))

(assert (=> bs!1140390 (= (= (+!2376 lt!1914257 t!14174) lt!1914257) (= lambda!221774 lambda!221769))))

(assert (=> bs!1140386 (= (= (+!2376 lt!1914257 t!14174) lt!1914257) (= lambda!221774 lambda!221770))))

(assert (=> bs!1140389 (= (= (+!2376 lt!1914257 t!14174) acc!1214) (= lambda!221774 lambda!221766))))

(declare-fun bs!1140391 () Bool)

(assert (= bs!1140391 (and b!4750770 d!1518375)))

(assert (=> bs!1140391 (= (= (+!2376 lt!1914257 t!14174) lt!1914473) (= lambda!221774 lambda!221772))))

(declare-fun bs!1140392 () Bool)

(assert (= bs!1140392 (and b!4750770 b!4750772)))

(assert (=> bs!1140392 (= lambda!221774 lambda!221773)))

(assert (=> b!4750770 true))

(declare-fun lambda!221775 () Int)

(declare-fun lt!1914506 () ListMap!5529)

(assert (=> bs!1140386 (= (= lt!1914506 lt!1914485) (= lambda!221775 lambda!221771))))

(assert (=> bs!1140387 (= (= lt!1914506 acc!1214) (= lambda!221775 lambda!221765))))

(assert (=> bs!1140388 (= (= lt!1914506 lt!1914449) (= lambda!221775 lambda!221768))))

(assert (=> b!4750770 (= (= lt!1914506 (+!2376 lt!1914257 t!14174)) (= lambda!221775 lambda!221774))))

(assert (=> bs!1140389 (= (= lt!1914506 lt!1914461) (= lambda!221775 lambda!221767))))

(assert (=> bs!1140390 (= (= lt!1914506 lt!1914257) (= lambda!221775 lambda!221769))))

(assert (=> bs!1140386 (= (= lt!1914506 lt!1914257) (= lambda!221775 lambda!221770))))

(assert (=> bs!1140389 (= (= lt!1914506 acc!1214) (= lambda!221775 lambda!221766))))

(assert (=> bs!1140391 (= (= lt!1914506 lt!1914473) (= lambda!221775 lambda!221772))))

(assert (=> bs!1140392 (= (= lt!1914506 (+!2376 lt!1914257 t!14174)) (= lambda!221775 lambda!221773))))

(assert (=> b!4750770 true))

(declare-fun bs!1140393 () Bool)

(declare-fun d!1518377 () Bool)

(assert (= bs!1140393 (and d!1518377 b!4750765)))

(declare-fun lambda!221776 () Int)

(declare-fun lt!1914494 () ListMap!5529)

(assert (=> bs!1140393 (= (= lt!1914494 lt!1914485) (= lambda!221776 lambda!221771))))

(declare-fun bs!1140394 () Bool)

(assert (= bs!1140394 (and d!1518377 b!4750770)))

(assert (=> bs!1140394 (= (= lt!1914494 lt!1914506) (= lambda!221776 lambda!221775))))

(declare-fun bs!1140395 () Bool)

(assert (= bs!1140395 (and d!1518377 b!4750754)))

(assert (=> bs!1140395 (= (= lt!1914494 acc!1214) (= lambda!221776 lambda!221765))))

(declare-fun bs!1140396 () Bool)

(assert (= bs!1140396 (and d!1518377 d!1518343)))

(assert (=> bs!1140396 (= (= lt!1914494 lt!1914449) (= lambda!221776 lambda!221768))))

(assert (=> bs!1140394 (= (= lt!1914494 (+!2376 lt!1914257 t!14174)) (= lambda!221776 lambda!221774))))

(declare-fun bs!1140397 () Bool)

(assert (= bs!1140397 (and d!1518377 b!4750752)))

(assert (=> bs!1140397 (= (= lt!1914494 lt!1914461) (= lambda!221776 lambda!221767))))

(declare-fun bs!1140398 () Bool)

(assert (= bs!1140398 (and d!1518377 b!4750767)))

(assert (=> bs!1140398 (= (= lt!1914494 lt!1914257) (= lambda!221776 lambda!221769))))

(assert (=> bs!1140393 (= (= lt!1914494 lt!1914257) (= lambda!221776 lambda!221770))))

(assert (=> bs!1140397 (= (= lt!1914494 acc!1214) (= lambda!221776 lambda!221766))))

(declare-fun bs!1140399 () Bool)

(assert (= bs!1140399 (and d!1518377 d!1518375)))

(assert (=> bs!1140399 (= (= lt!1914494 lt!1914473) (= lambda!221776 lambda!221772))))

(declare-fun bs!1140400 () Bool)

(assert (= bs!1140400 (and d!1518377 b!4750772)))

(assert (=> bs!1140400 (= (= lt!1914494 (+!2376 lt!1914257 t!14174)) (= lambda!221776 lambda!221773))))

(assert (=> d!1518377 true))

(declare-fun b!4750768 () Bool)

(declare-fun res!2014472 () Bool)

(declare-fun e!2963478 () Bool)

(assert (=> b!4750768 (=> (not res!2014472) (not e!2963478))))

(assert (=> b!4750768 (= res!2014472 (forall!11756 (toList!6110 (+!2376 lt!1914257 t!14174)) lambda!221776))))

(declare-fun b!4750769 () Bool)

(declare-fun e!2963480 () Bool)

(assert (=> b!4750769 (= e!2963480 (forall!11756 (toList!6110 (+!2376 lt!1914257 t!14174)) lambda!221775))))

(assert (=> d!1518377 e!2963478))

(declare-fun res!2014470 () Bool)

(assert (=> d!1518377 (=> (not res!2014470) (not e!2963478))))

(assert (=> d!1518377 (= res!2014470 (forall!11756 (t!360530 l!14304) lambda!221776))))

(declare-fun e!2963479 () ListMap!5529)

(assert (=> d!1518377 (= lt!1914494 e!2963479)))

(declare-fun c!811158 () Bool)

(assert (=> d!1518377 (= c!811158 ((_ is Nil!53080) (t!360530 l!14304)))))

(assert (=> d!1518377 (noDuplicateKeys!2142 (t!360530 l!14304))))

(assert (=> d!1518377 (= (addToMapMapFromBucket!1566 (t!360530 l!14304) (+!2376 lt!1914257 t!14174)) lt!1914494)))

(assert (=> b!4750770 (= e!2963479 lt!1914506)))

(declare-fun lt!1914498 () ListMap!5529)

(assert (=> b!4750770 (= lt!1914498 (+!2376 (+!2376 lt!1914257 t!14174) (h!59477 (t!360530 l!14304))))))

(assert (=> b!4750770 (= lt!1914506 (addToMapMapFromBucket!1566 (t!360530 (t!360530 l!14304)) (+!2376 (+!2376 lt!1914257 t!14174) (h!59477 (t!360530 l!14304)))))))

(declare-fun lt!1914510 () Unit!135508)

(declare-fun call!332721 () Unit!135508)

(assert (=> b!4750770 (= lt!1914510 call!332721)))

(assert (=> b!4750770 (forall!11756 (toList!6110 (+!2376 lt!1914257 t!14174)) lambda!221774)))

(declare-fun lt!1914495 () Unit!135508)

(assert (=> b!4750770 (= lt!1914495 lt!1914510)))

(assert (=> b!4750770 (forall!11756 (toList!6110 lt!1914498) lambda!221775)))

(declare-fun lt!1914500 () Unit!135508)

(declare-fun Unit!135565 () Unit!135508)

(assert (=> b!4750770 (= lt!1914500 Unit!135565)))

(assert (=> b!4750770 (forall!11756 (t!360530 (t!360530 l!14304)) lambda!221775)))

(declare-fun lt!1914507 () Unit!135508)

(declare-fun Unit!135566 () Unit!135508)

(assert (=> b!4750770 (= lt!1914507 Unit!135566)))

(declare-fun lt!1914509 () Unit!135508)

(declare-fun Unit!135567 () Unit!135508)

(assert (=> b!4750770 (= lt!1914509 Unit!135567)))

(declare-fun lt!1914497 () Unit!135508)

(assert (=> b!4750770 (= lt!1914497 (forallContained!3782 (toList!6110 lt!1914498) lambda!221775 (h!59477 (t!360530 l!14304))))))

(assert (=> b!4750770 (contains!16498 lt!1914498 (_1!30716 (h!59477 (t!360530 l!14304))))))

(declare-fun lt!1914512 () Unit!135508)

(declare-fun Unit!135568 () Unit!135508)

(assert (=> b!4750770 (= lt!1914512 Unit!135568)))

(assert (=> b!4750770 (contains!16498 lt!1914506 (_1!30716 (h!59477 (t!360530 l!14304))))))

(declare-fun lt!1914511 () Unit!135508)

(declare-fun Unit!135569 () Unit!135508)

(assert (=> b!4750770 (= lt!1914511 Unit!135569)))

(assert (=> b!4750770 (forall!11756 (t!360530 l!14304) lambda!221775)))

(declare-fun lt!1914513 () Unit!135508)

(declare-fun Unit!135570 () Unit!135508)

(assert (=> b!4750770 (= lt!1914513 Unit!135570)))

(declare-fun call!332722 () Bool)

(assert (=> b!4750770 call!332722))

(declare-fun lt!1914514 () Unit!135508)

(declare-fun Unit!135571 () Unit!135508)

(assert (=> b!4750770 (= lt!1914514 Unit!135571)))

(declare-fun lt!1914503 () Unit!135508)

(declare-fun Unit!135572 () Unit!135508)

(assert (=> b!4750770 (= lt!1914503 Unit!135572)))

(declare-fun lt!1914499 () Unit!135508)

(assert (=> b!4750770 (= lt!1914499 (addForallContainsKeyThenBeforeAdding!870 (+!2376 lt!1914257 t!14174) lt!1914506 (_1!30716 (h!59477 (t!360530 l!14304))) (_2!30716 (h!59477 (t!360530 l!14304)))))))

(assert (=> b!4750770 (forall!11756 (toList!6110 (+!2376 lt!1914257 t!14174)) lambda!221775)))

(declare-fun lt!1914501 () Unit!135508)

(assert (=> b!4750770 (= lt!1914501 lt!1914499)))

(assert (=> b!4750770 (forall!11756 (toList!6110 (+!2376 lt!1914257 t!14174)) lambda!221775)))

(declare-fun lt!1914504 () Unit!135508)

(declare-fun Unit!135573 () Unit!135508)

(assert (=> b!4750770 (= lt!1914504 Unit!135573)))

(declare-fun res!2014471 () Bool)

(declare-fun call!332720 () Bool)

(assert (=> b!4750770 (= res!2014471 call!332720)))

(assert (=> b!4750770 (=> (not res!2014471) (not e!2963480))))

(assert (=> b!4750770 e!2963480))

(declare-fun lt!1914505 () Unit!135508)

(declare-fun Unit!135574 () Unit!135508)

(assert (=> b!4750770 (= lt!1914505 Unit!135574)))

(declare-fun bm!332715 () Bool)

(assert (=> bm!332715 (= call!332721 (lemmaContainsAllItsOwnKeys!871 (+!2376 lt!1914257 t!14174)))))

(declare-fun b!4750771 () Bool)

(assert (=> b!4750771 (= e!2963478 (invariantList!1588 (toList!6110 lt!1914494)))))

(declare-fun bm!332716 () Bool)

(assert (=> bm!332716 (= call!332720 (forall!11756 (ite c!811158 (toList!6110 (+!2376 lt!1914257 t!14174)) (t!360530 l!14304)) (ite c!811158 lambda!221773 lambda!221775)))))

(declare-fun bm!332717 () Bool)

(assert (=> bm!332717 (= call!332722 (forall!11756 (ite c!811158 (toList!6110 (+!2376 lt!1914257 t!14174)) (toList!6110 lt!1914498)) (ite c!811158 lambda!221773 lambda!221775)))))

(assert (=> b!4750772 (= e!2963479 (+!2376 lt!1914257 t!14174))))

(declare-fun lt!1914502 () Unit!135508)

(assert (=> b!4750772 (= lt!1914502 call!332721)))

(assert (=> b!4750772 call!332722))

(declare-fun lt!1914508 () Unit!135508)

(assert (=> b!4750772 (= lt!1914508 lt!1914502)))

(assert (=> b!4750772 call!332720))

(declare-fun lt!1914496 () Unit!135508)

(declare-fun Unit!135575 () Unit!135508)

(assert (=> b!4750772 (= lt!1914496 Unit!135575)))

(assert (= (and d!1518377 c!811158) b!4750772))

(assert (= (and d!1518377 (not c!811158)) b!4750770))

(assert (= (and b!4750770 res!2014471) b!4750769))

(assert (= (or b!4750772 b!4750770) bm!332715))

(assert (= (or b!4750772 b!4750770) bm!332716))

(assert (= (or b!4750772 b!4750770) bm!332717))

(assert (= (and d!1518377 res!2014470) b!4750768))

(assert (= (and b!4750768 res!2014472) b!4750771))

(declare-fun m!5711981 () Bool)

(assert (=> b!4750768 m!5711981))

(declare-fun m!5711983 () Bool)

(assert (=> bm!332716 m!5711983))

(declare-fun m!5711985 () Bool)

(assert (=> d!1518377 m!5711985))

(assert (=> d!1518377 m!5711707))

(assert (=> bm!332715 m!5711689))

(declare-fun m!5711987 () Bool)

(assert (=> bm!332715 m!5711987))

(declare-fun m!5711989 () Bool)

(assert (=> b!4750771 m!5711989))

(declare-fun m!5711991 () Bool)

(assert (=> b!4750769 m!5711991))

(declare-fun m!5711993 () Bool)

(assert (=> b!4750770 m!5711993))

(declare-fun m!5711995 () Bool)

(assert (=> b!4750770 m!5711995))

(declare-fun m!5711997 () Bool)

(assert (=> b!4750770 m!5711997))

(declare-fun m!5711999 () Bool)

(assert (=> b!4750770 m!5711999))

(declare-fun m!5712001 () Bool)

(assert (=> b!4750770 m!5712001))

(declare-fun m!5712003 () Bool)

(assert (=> b!4750770 m!5712003))

(assert (=> b!4750770 m!5711991))

(declare-fun m!5712005 () Bool)

(assert (=> b!4750770 m!5712005))

(assert (=> b!4750770 m!5711689))

(assert (=> b!4750770 m!5712001))

(assert (=> b!4750770 m!5711991))

(declare-fun m!5712007 () Bool)

(assert (=> b!4750770 m!5712007))

(assert (=> b!4750770 m!5711689))

(declare-fun m!5712009 () Bool)

(assert (=> b!4750770 m!5712009))

(declare-fun m!5712011 () Bool)

(assert (=> b!4750770 m!5712011))

(declare-fun m!5712013 () Bool)

(assert (=> bm!332717 m!5712013))

(assert (=> b!4750678 d!1518377))

(declare-fun d!1518379 () Bool)

(declare-fun e!2963483 () Bool)

(assert (=> d!1518379 e!2963483))

(declare-fun res!2014478 () Bool)

(assert (=> d!1518379 (=> (not res!2014478) (not e!2963483))))

(declare-fun lt!1914525 () ListMap!5529)

(assert (=> d!1518379 (= res!2014478 (contains!16498 lt!1914525 (_1!30716 t!14174)))))

(declare-fun lt!1914524 () List!53204)

(assert (=> d!1518379 (= lt!1914525 (ListMap!5530 lt!1914524))))

(declare-fun lt!1914523 () Unit!135508)

(declare-fun lt!1914526 () Unit!135508)

(assert (=> d!1518379 (= lt!1914523 lt!1914526)))

(declare-datatypes ((Option!12525 0))(
  ( (None!12524) (Some!12524 (v!47223 V!14751)) )
))
(declare-fun getValueByKey!2075 (List!53204 K!14505) Option!12525)

(assert (=> d!1518379 (= (getValueByKey!2075 lt!1914524 (_1!30716 t!14174)) (Some!12524 (_2!30716 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1152 (List!53204 K!14505 V!14751) Unit!135508)

(assert (=> d!1518379 (= lt!1914526 (lemmaContainsTupThenGetReturnValue!1152 lt!1914524 (_1!30716 t!14174) (_2!30716 t!14174)))))

(declare-fun insertNoDuplicatedKeys!660 (List!53204 K!14505 V!14751) List!53204)

(assert (=> d!1518379 (= lt!1914524 (insertNoDuplicatedKeys!660 (toList!6110 lt!1914257) (_1!30716 t!14174) (_2!30716 t!14174)))))

(assert (=> d!1518379 (= (+!2376 lt!1914257 t!14174) lt!1914525)))

(declare-fun b!4750777 () Bool)

(declare-fun res!2014477 () Bool)

(assert (=> b!4750777 (=> (not res!2014477) (not e!2963483))))

(assert (=> b!4750777 (= res!2014477 (= (getValueByKey!2075 (toList!6110 lt!1914525) (_1!30716 t!14174)) (Some!12524 (_2!30716 t!14174))))))

(declare-fun b!4750778 () Bool)

(declare-fun contains!16499 (List!53204 tuple2!54844) Bool)

(assert (=> b!4750778 (= e!2963483 (contains!16499 (toList!6110 lt!1914525) t!14174))))

(assert (= (and d!1518379 res!2014478) b!4750777))

(assert (= (and b!4750777 res!2014477) b!4750778))

(declare-fun m!5712015 () Bool)

(assert (=> d!1518379 m!5712015))

(declare-fun m!5712017 () Bool)

(assert (=> d!1518379 m!5712017))

(declare-fun m!5712019 () Bool)

(assert (=> d!1518379 m!5712019))

(declare-fun m!5712021 () Bool)

(assert (=> d!1518379 m!5712021))

(declare-fun m!5712023 () Bool)

(assert (=> b!4750777 m!5712023))

(declare-fun m!5712025 () Bool)

(assert (=> b!4750778 m!5712025))

(assert (=> b!4750678 d!1518379))

(declare-fun d!1518381 () Bool)

(declare-fun e!2963484 () Bool)

(assert (=> d!1518381 e!2963484))

(declare-fun res!2014480 () Bool)

(assert (=> d!1518381 (=> (not res!2014480) (not e!2963484))))

(declare-fun lt!1914529 () ListMap!5529)

(assert (=> d!1518381 (= res!2014480 (contains!16498 lt!1914529 (_1!30716 t!14174)))))

(declare-fun lt!1914528 () List!53204)

(assert (=> d!1518381 (= lt!1914529 (ListMap!5530 lt!1914528))))

(declare-fun lt!1914527 () Unit!135508)

(declare-fun lt!1914530 () Unit!135508)

(assert (=> d!1518381 (= lt!1914527 lt!1914530)))

(assert (=> d!1518381 (= (getValueByKey!2075 lt!1914528 (_1!30716 t!14174)) (Some!12524 (_2!30716 t!14174)))))

(assert (=> d!1518381 (= lt!1914530 (lemmaContainsTupThenGetReturnValue!1152 lt!1914528 (_1!30716 t!14174) (_2!30716 t!14174)))))

(assert (=> d!1518381 (= lt!1914528 (insertNoDuplicatedKeys!660 (toList!6110 lt!1914254) (_1!30716 t!14174) (_2!30716 t!14174)))))

(assert (=> d!1518381 (= (+!2376 lt!1914254 t!14174) lt!1914529)))

(declare-fun b!4750779 () Bool)

(declare-fun res!2014479 () Bool)

(assert (=> b!4750779 (=> (not res!2014479) (not e!2963484))))

(assert (=> b!4750779 (= res!2014479 (= (getValueByKey!2075 (toList!6110 lt!1914529) (_1!30716 t!14174)) (Some!12524 (_2!30716 t!14174))))))

(declare-fun b!4750780 () Bool)

(assert (=> b!4750780 (= e!2963484 (contains!16499 (toList!6110 lt!1914529) t!14174))))

(assert (= (and d!1518381 res!2014480) b!4750779))

(assert (= (and b!4750779 res!2014479) b!4750780))

(declare-fun m!5712027 () Bool)

(assert (=> d!1518381 m!5712027))

(declare-fun m!5712029 () Bool)

(assert (=> d!1518381 m!5712029))

(declare-fun m!5712031 () Bool)

(assert (=> d!1518381 m!5712031))

(declare-fun m!5712033 () Bool)

(assert (=> d!1518381 m!5712033))

(declare-fun m!5712035 () Bool)

(assert (=> b!4750779 m!5712035))

(declare-fun m!5712037 () Bool)

(assert (=> b!4750780 m!5712037))

(assert (=> b!4750678 d!1518381))

(declare-fun bs!1140401 () Bool)

(declare-fun b!4750785 () Bool)

(assert (= bs!1140401 (and b!4750785 b!4750765)))

(declare-fun lambda!221777 () Int)

(assert (=> bs!1140401 (= (= lt!1914257 lt!1914485) (= lambda!221777 lambda!221771))))

(declare-fun bs!1140402 () Bool)

(assert (= bs!1140402 (and b!4750785 b!4750770)))

(assert (=> bs!1140402 (= (= lt!1914257 lt!1914506) (= lambda!221777 lambda!221775))))

(declare-fun bs!1140403 () Bool)

(assert (= bs!1140403 (and b!4750785 b!4750754)))

(assert (=> bs!1140403 (= (= lt!1914257 acc!1214) (= lambda!221777 lambda!221765))))

(declare-fun bs!1140404 () Bool)

(assert (= bs!1140404 (and b!4750785 d!1518377)))

(assert (=> bs!1140404 (= (= lt!1914257 lt!1914494) (= lambda!221777 lambda!221776))))

(declare-fun bs!1140405 () Bool)

(assert (= bs!1140405 (and b!4750785 d!1518343)))

(assert (=> bs!1140405 (= (= lt!1914257 lt!1914449) (= lambda!221777 lambda!221768))))

(assert (=> bs!1140402 (= (= lt!1914257 (+!2376 lt!1914257 t!14174)) (= lambda!221777 lambda!221774))))

(declare-fun bs!1140406 () Bool)

(assert (= bs!1140406 (and b!4750785 b!4750752)))

(assert (=> bs!1140406 (= (= lt!1914257 lt!1914461) (= lambda!221777 lambda!221767))))

(declare-fun bs!1140407 () Bool)

(assert (= bs!1140407 (and b!4750785 b!4750767)))

(assert (=> bs!1140407 (= lambda!221777 lambda!221769)))

(assert (=> bs!1140401 (= lambda!221777 lambda!221770)))

(assert (=> bs!1140406 (= (= lt!1914257 acc!1214) (= lambda!221777 lambda!221766))))

(declare-fun bs!1140408 () Bool)

(assert (= bs!1140408 (and b!4750785 d!1518375)))

(assert (=> bs!1140408 (= (= lt!1914257 lt!1914473) (= lambda!221777 lambda!221772))))

(declare-fun bs!1140409 () Bool)

(assert (= bs!1140409 (and b!4750785 b!4750772)))

(assert (=> bs!1140409 (= (= lt!1914257 (+!2376 lt!1914257 t!14174)) (= lambda!221777 lambda!221773))))

(assert (=> b!4750785 true))

(declare-fun bs!1140410 () Bool)

(declare-fun b!4750783 () Bool)

(assert (= bs!1140410 (and b!4750783 b!4750765)))

(declare-fun lambda!221778 () Int)

(assert (=> bs!1140410 (= (= lt!1914257 lt!1914485) (= lambda!221778 lambda!221771))))

(declare-fun bs!1140411 () Bool)

(assert (= bs!1140411 (and b!4750783 b!4750770)))

(assert (=> bs!1140411 (= (= lt!1914257 lt!1914506) (= lambda!221778 lambda!221775))))

(declare-fun bs!1140412 () Bool)

(assert (= bs!1140412 (and b!4750783 b!4750754)))

(assert (=> bs!1140412 (= (= lt!1914257 acc!1214) (= lambda!221778 lambda!221765))))

(declare-fun bs!1140413 () Bool)

(assert (= bs!1140413 (and b!4750783 d!1518377)))

(assert (=> bs!1140413 (= (= lt!1914257 lt!1914494) (= lambda!221778 lambda!221776))))

(declare-fun bs!1140414 () Bool)

(assert (= bs!1140414 (and b!4750783 d!1518343)))

(assert (=> bs!1140414 (= (= lt!1914257 lt!1914449) (= lambda!221778 lambda!221768))))

(assert (=> bs!1140411 (= (= lt!1914257 (+!2376 lt!1914257 t!14174)) (= lambda!221778 lambda!221774))))

(declare-fun bs!1140415 () Bool)

(assert (= bs!1140415 (and b!4750783 b!4750752)))

(assert (=> bs!1140415 (= (= lt!1914257 lt!1914461) (= lambda!221778 lambda!221767))))

(declare-fun bs!1140416 () Bool)

(assert (= bs!1140416 (and b!4750783 b!4750785)))

(assert (=> bs!1140416 (= lambda!221778 lambda!221777)))

(declare-fun bs!1140417 () Bool)

(assert (= bs!1140417 (and b!4750783 b!4750767)))

(assert (=> bs!1140417 (= lambda!221778 lambda!221769)))

(assert (=> bs!1140410 (= lambda!221778 lambda!221770)))

(assert (=> bs!1140415 (= (= lt!1914257 acc!1214) (= lambda!221778 lambda!221766))))

(declare-fun bs!1140418 () Bool)

(assert (= bs!1140418 (and b!4750783 d!1518375)))

(assert (=> bs!1140418 (= (= lt!1914257 lt!1914473) (= lambda!221778 lambda!221772))))

(declare-fun bs!1140419 () Bool)

(assert (= bs!1140419 (and b!4750783 b!4750772)))

(assert (=> bs!1140419 (= (= lt!1914257 (+!2376 lt!1914257 t!14174)) (= lambda!221778 lambda!221773))))

(assert (=> b!4750783 true))

(declare-fun lt!1914543 () ListMap!5529)

(declare-fun lambda!221779 () Int)

(assert (=> bs!1140411 (= (= lt!1914543 lt!1914506) (= lambda!221779 lambda!221775))))

(assert (=> bs!1140412 (= (= lt!1914543 acc!1214) (= lambda!221779 lambda!221765))))

(assert (=> bs!1140413 (= (= lt!1914543 lt!1914494) (= lambda!221779 lambda!221776))))

(assert (=> bs!1140414 (= (= lt!1914543 lt!1914449) (= lambda!221779 lambda!221768))))

(assert (=> bs!1140411 (= (= lt!1914543 (+!2376 lt!1914257 t!14174)) (= lambda!221779 lambda!221774))))

(assert (=> bs!1140415 (= (= lt!1914543 lt!1914461) (= lambda!221779 lambda!221767))))

(assert (=> bs!1140416 (= (= lt!1914543 lt!1914257) (= lambda!221779 lambda!221777))))

(assert (=> bs!1140417 (= (= lt!1914543 lt!1914257) (= lambda!221779 lambda!221769))))

(assert (=> bs!1140410 (= (= lt!1914543 lt!1914485) (= lambda!221779 lambda!221771))))

(assert (=> b!4750783 (= (= lt!1914543 lt!1914257) (= lambda!221779 lambda!221778))))

(assert (=> bs!1140410 (= (= lt!1914543 lt!1914257) (= lambda!221779 lambda!221770))))

(assert (=> bs!1140415 (= (= lt!1914543 acc!1214) (= lambda!221779 lambda!221766))))

(assert (=> bs!1140418 (= (= lt!1914543 lt!1914473) (= lambda!221779 lambda!221772))))

(assert (=> bs!1140419 (= (= lt!1914543 (+!2376 lt!1914257 t!14174)) (= lambda!221779 lambda!221773))))

(assert (=> b!4750783 true))

(declare-fun bs!1140420 () Bool)

(declare-fun d!1518383 () Bool)

(assert (= bs!1140420 (and d!1518383 b!4750754)))

(declare-fun lt!1914531 () ListMap!5529)

(declare-fun lambda!221780 () Int)

(assert (=> bs!1140420 (= (= lt!1914531 acc!1214) (= lambda!221780 lambda!221765))))

(declare-fun bs!1140421 () Bool)

(assert (= bs!1140421 (and d!1518383 d!1518377)))

(assert (=> bs!1140421 (= (= lt!1914531 lt!1914494) (= lambda!221780 lambda!221776))))

(declare-fun bs!1140422 () Bool)

(assert (= bs!1140422 (and d!1518383 d!1518343)))

(assert (=> bs!1140422 (= (= lt!1914531 lt!1914449) (= lambda!221780 lambda!221768))))

(declare-fun bs!1140423 () Bool)

(assert (= bs!1140423 (and d!1518383 b!4750770)))

(assert (=> bs!1140423 (= (= lt!1914531 (+!2376 lt!1914257 t!14174)) (= lambda!221780 lambda!221774))))

(declare-fun bs!1140424 () Bool)

(assert (= bs!1140424 (and d!1518383 b!4750752)))

(assert (=> bs!1140424 (= (= lt!1914531 lt!1914461) (= lambda!221780 lambda!221767))))

(declare-fun bs!1140425 () Bool)

(assert (= bs!1140425 (and d!1518383 b!4750785)))

(assert (=> bs!1140425 (= (= lt!1914531 lt!1914257) (= lambda!221780 lambda!221777))))

(declare-fun bs!1140426 () Bool)

(assert (= bs!1140426 (and d!1518383 b!4750767)))

(assert (=> bs!1140426 (= (= lt!1914531 lt!1914257) (= lambda!221780 lambda!221769))))

(declare-fun bs!1140427 () Bool)

(assert (= bs!1140427 (and d!1518383 b!4750765)))

(assert (=> bs!1140427 (= (= lt!1914531 lt!1914485) (= lambda!221780 lambda!221771))))

(declare-fun bs!1140428 () Bool)

(assert (= bs!1140428 (and d!1518383 b!4750783)))

(assert (=> bs!1140428 (= (= lt!1914531 lt!1914257) (= lambda!221780 lambda!221778))))

(assert (=> bs!1140427 (= (= lt!1914531 lt!1914257) (= lambda!221780 lambda!221770))))

(assert (=> bs!1140424 (= (= lt!1914531 acc!1214) (= lambda!221780 lambda!221766))))

(assert (=> bs!1140428 (= (= lt!1914531 lt!1914543) (= lambda!221780 lambda!221779))))

(assert (=> bs!1140423 (= (= lt!1914531 lt!1914506) (= lambda!221780 lambda!221775))))

(declare-fun bs!1140429 () Bool)

(assert (= bs!1140429 (and d!1518383 d!1518375)))

(assert (=> bs!1140429 (= (= lt!1914531 lt!1914473) (= lambda!221780 lambda!221772))))

(declare-fun bs!1140430 () Bool)

(assert (= bs!1140430 (and d!1518383 b!4750772)))

(assert (=> bs!1140430 (= (= lt!1914531 (+!2376 lt!1914257 t!14174)) (= lambda!221780 lambda!221773))))

(assert (=> d!1518383 true))

(declare-fun b!4750781 () Bool)

(declare-fun res!2014483 () Bool)

(declare-fun e!2963485 () Bool)

(assert (=> b!4750781 (=> (not res!2014483) (not e!2963485))))

(assert (=> b!4750781 (= res!2014483 (forall!11756 (toList!6110 lt!1914257) lambda!221780))))

(declare-fun b!4750782 () Bool)

(declare-fun e!2963487 () Bool)

(assert (=> b!4750782 (= e!2963487 (forall!11756 (toList!6110 lt!1914257) lambda!221779))))

(assert (=> d!1518383 e!2963485))

(declare-fun res!2014481 () Bool)

(assert (=> d!1518383 (=> (not res!2014481) (not e!2963485))))

(assert (=> d!1518383 (= res!2014481 (forall!11756 (t!360530 l!14304) lambda!221780))))

(declare-fun e!2963486 () ListMap!5529)

(assert (=> d!1518383 (= lt!1914531 e!2963486)))

(declare-fun c!811159 () Bool)

(assert (=> d!1518383 (= c!811159 ((_ is Nil!53080) (t!360530 l!14304)))))

(assert (=> d!1518383 (noDuplicateKeys!2142 (t!360530 l!14304))))

(assert (=> d!1518383 (= (addToMapMapFromBucket!1566 (t!360530 l!14304) lt!1914257) lt!1914531)))

(assert (=> b!4750783 (= e!2963486 lt!1914543)))

(declare-fun lt!1914535 () ListMap!5529)

(assert (=> b!4750783 (= lt!1914535 (+!2376 lt!1914257 (h!59477 (t!360530 l!14304))))))

(assert (=> b!4750783 (= lt!1914543 (addToMapMapFromBucket!1566 (t!360530 (t!360530 l!14304)) (+!2376 lt!1914257 (h!59477 (t!360530 l!14304)))))))

(declare-fun lt!1914547 () Unit!135508)

(declare-fun call!332724 () Unit!135508)

(assert (=> b!4750783 (= lt!1914547 call!332724)))

(assert (=> b!4750783 (forall!11756 (toList!6110 lt!1914257) lambda!221778)))

(declare-fun lt!1914532 () Unit!135508)

(assert (=> b!4750783 (= lt!1914532 lt!1914547)))

(assert (=> b!4750783 (forall!11756 (toList!6110 lt!1914535) lambda!221779)))

(declare-fun lt!1914537 () Unit!135508)

(declare-fun Unit!135587 () Unit!135508)

(assert (=> b!4750783 (= lt!1914537 Unit!135587)))

(assert (=> b!4750783 (forall!11756 (t!360530 (t!360530 l!14304)) lambda!221779)))

(declare-fun lt!1914544 () Unit!135508)

(declare-fun Unit!135588 () Unit!135508)

(assert (=> b!4750783 (= lt!1914544 Unit!135588)))

(declare-fun lt!1914546 () Unit!135508)

(declare-fun Unit!135589 () Unit!135508)

(assert (=> b!4750783 (= lt!1914546 Unit!135589)))

(declare-fun lt!1914534 () Unit!135508)

(assert (=> b!4750783 (= lt!1914534 (forallContained!3782 (toList!6110 lt!1914535) lambda!221779 (h!59477 (t!360530 l!14304))))))

(assert (=> b!4750783 (contains!16498 lt!1914535 (_1!30716 (h!59477 (t!360530 l!14304))))))

(declare-fun lt!1914549 () Unit!135508)

(declare-fun Unit!135590 () Unit!135508)

(assert (=> b!4750783 (= lt!1914549 Unit!135590)))

(assert (=> b!4750783 (contains!16498 lt!1914543 (_1!30716 (h!59477 (t!360530 l!14304))))))

(declare-fun lt!1914548 () Unit!135508)

(declare-fun Unit!135591 () Unit!135508)

(assert (=> b!4750783 (= lt!1914548 Unit!135591)))

(assert (=> b!4750783 (forall!11756 (t!360530 l!14304) lambda!221779)))

(declare-fun lt!1914550 () Unit!135508)

(declare-fun Unit!135592 () Unit!135508)

(assert (=> b!4750783 (= lt!1914550 Unit!135592)))

(declare-fun call!332725 () Bool)

(assert (=> b!4750783 call!332725))

(declare-fun lt!1914551 () Unit!135508)

(declare-fun Unit!135593 () Unit!135508)

(assert (=> b!4750783 (= lt!1914551 Unit!135593)))

(declare-fun lt!1914540 () Unit!135508)

(declare-fun Unit!135594 () Unit!135508)

(assert (=> b!4750783 (= lt!1914540 Unit!135594)))

(declare-fun lt!1914536 () Unit!135508)

(assert (=> b!4750783 (= lt!1914536 (addForallContainsKeyThenBeforeAdding!870 lt!1914257 lt!1914543 (_1!30716 (h!59477 (t!360530 l!14304))) (_2!30716 (h!59477 (t!360530 l!14304)))))))

(assert (=> b!4750783 (forall!11756 (toList!6110 lt!1914257) lambda!221779)))

(declare-fun lt!1914538 () Unit!135508)

(assert (=> b!4750783 (= lt!1914538 lt!1914536)))

(assert (=> b!4750783 (forall!11756 (toList!6110 lt!1914257) lambda!221779)))

(declare-fun lt!1914541 () Unit!135508)

(declare-fun Unit!135595 () Unit!135508)

(assert (=> b!4750783 (= lt!1914541 Unit!135595)))

(declare-fun res!2014482 () Bool)

(declare-fun call!332723 () Bool)

(assert (=> b!4750783 (= res!2014482 call!332723)))

(assert (=> b!4750783 (=> (not res!2014482) (not e!2963487))))

(assert (=> b!4750783 e!2963487))

(declare-fun lt!1914542 () Unit!135508)

(declare-fun Unit!135596 () Unit!135508)

(assert (=> b!4750783 (= lt!1914542 Unit!135596)))

(declare-fun bm!332718 () Bool)

(assert (=> bm!332718 (= call!332724 (lemmaContainsAllItsOwnKeys!871 lt!1914257))))

(declare-fun b!4750784 () Bool)

(assert (=> b!4750784 (= e!2963485 (invariantList!1588 (toList!6110 lt!1914531)))))

(declare-fun bm!332719 () Bool)

(assert (=> bm!332719 (= call!332723 (forall!11756 (ite c!811159 (toList!6110 lt!1914257) (t!360530 l!14304)) (ite c!811159 lambda!221777 lambda!221779)))))

(declare-fun bm!332720 () Bool)

(assert (=> bm!332720 (= call!332725 (forall!11756 (ite c!811159 (toList!6110 lt!1914257) (toList!6110 lt!1914535)) (ite c!811159 lambda!221777 lambda!221779)))))

(assert (=> b!4750785 (= e!2963486 lt!1914257)))

(declare-fun lt!1914539 () Unit!135508)

(assert (=> b!4750785 (= lt!1914539 call!332724)))

(assert (=> b!4750785 call!332725))

(declare-fun lt!1914545 () Unit!135508)

(assert (=> b!4750785 (= lt!1914545 lt!1914539)))

(assert (=> b!4750785 call!332723))

(declare-fun lt!1914533 () Unit!135508)

(declare-fun Unit!135597 () Unit!135508)

(assert (=> b!4750785 (= lt!1914533 Unit!135597)))

(assert (= (and d!1518383 c!811159) b!4750785))

(assert (= (and d!1518383 (not c!811159)) b!4750783))

(assert (= (and b!4750783 res!2014482) b!4750782))

(assert (= (or b!4750785 b!4750783) bm!332718))

(assert (= (or b!4750785 b!4750783) bm!332719))

(assert (= (or b!4750785 b!4750783) bm!332720))

(assert (= (and d!1518383 res!2014481) b!4750781))

(assert (= (and b!4750781 res!2014483) b!4750784))

(declare-fun m!5712039 () Bool)

(assert (=> b!4750781 m!5712039))

(declare-fun m!5712041 () Bool)

(assert (=> bm!332719 m!5712041))

(declare-fun m!5712043 () Bool)

(assert (=> d!1518383 m!5712043))

(assert (=> d!1518383 m!5711707))

(assert (=> bm!332718 m!5711953))

(declare-fun m!5712045 () Bool)

(assert (=> b!4750784 m!5712045))

(declare-fun m!5712047 () Bool)

(assert (=> b!4750782 m!5712047))

(declare-fun m!5712049 () Bool)

(assert (=> b!4750783 m!5712049))

(declare-fun m!5712051 () Bool)

(assert (=> b!4750783 m!5712051))

(declare-fun m!5712053 () Bool)

(assert (=> b!4750783 m!5712053))

(declare-fun m!5712055 () Bool)

(assert (=> b!4750783 m!5712055))

(declare-fun m!5712057 () Bool)

(assert (=> b!4750783 m!5712057))

(declare-fun m!5712059 () Bool)

(assert (=> b!4750783 m!5712059))

(assert (=> b!4750783 m!5712047))

(declare-fun m!5712061 () Bool)

(assert (=> b!4750783 m!5712061))

(assert (=> b!4750783 m!5712057))

(assert (=> b!4750783 m!5712047))

(declare-fun m!5712063 () Bool)

(assert (=> b!4750783 m!5712063))

(declare-fun m!5712065 () Bool)

(assert (=> b!4750783 m!5712065))

(declare-fun m!5712067 () Bool)

(assert (=> b!4750783 m!5712067))

(declare-fun m!5712069 () Bool)

(assert (=> bm!332720 m!5712069))

(assert (=> b!4750678 d!1518383))

(declare-fun d!1518385 () Bool)

(declare-fun e!2963488 () Bool)

(assert (=> d!1518385 e!2963488))

(declare-fun res!2014485 () Bool)

(assert (=> d!1518385 (=> (not res!2014485) (not e!2963488))))

(declare-fun lt!1914554 () ListMap!5529)

(assert (=> d!1518385 (= res!2014485 (contains!16498 lt!1914554 (_1!30716 (h!59477 l!14304))))))

(declare-fun lt!1914553 () List!53204)

(assert (=> d!1518385 (= lt!1914554 (ListMap!5530 lt!1914553))))

(declare-fun lt!1914552 () Unit!135508)

(declare-fun lt!1914555 () Unit!135508)

(assert (=> d!1518385 (= lt!1914552 lt!1914555)))

(assert (=> d!1518385 (= (getValueByKey!2075 lt!1914553 (_1!30716 (h!59477 l!14304))) (Some!12524 (_2!30716 (h!59477 l!14304))))))

(assert (=> d!1518385 (= lt!1914555 (lemmaContainsTupThenGetReturnValue!1152 lt!1914553 (_1!30716 (h!59477 l!14304)) (_2!30716 (h!59477 l!14304))))))

(assert (=> d!1518385 (= lt!1914553 (insertNoDuplicatedKeys!660 (toList!6110 acc!1214) (_1!30716 (h!59477 l!14304)) (_2!30716 (h!59477 l!14304))))))

(assert (=> d!1518385 (= (+!2376 acc!1214 (h!59477 l!14304)) lt!1914554)))

(declare-fun b!4750786 () Bool)

(declare-fun res!2014484 () Bool)

(assert (=> b!4750786 (=> (not res!2014484) (not e!2963488))))

(assert (=> b!4750786 (= res!2014484 (= (getValueByKey!2075 (toList!6110 lt!1914554) (_1!30716 (h!59477 l!14304))) (Some!12524 (_2!30716 (h!59477 l!14304)))))))

(declare-fun b!4750787 () Bool)

(assert (=> b!4750787 (= e!2963488 (contains!16499 (toList!6110 lt!1914554) (h!59477 l!14304)))))

(assert (= (and d!1518385 res!2014485) b!4750786))

(assert (= (and b!4750786 res!2014484) b!4750787))

(declare-fun m!5712071 () Bool)

(assert (=> d!1518385 m!5712071))

(declare-fun m!5712073 () Bool)

(assert (=> d!1518385 m!5712073))

(declare-fun m!5712075 () Bool)

(assert (=> d!1518385 m!5712075))

(declare-fun m!5712077 () Bool)

(assert (=> d!1518385 m!5712077))

(declare-fun m!5712079 () Bool)

(assert (=> b!4750786 m!5712079))

(declare-fun m!5712081 () Bool)

(assert (=> b!4750787 m!5712081))

(assert (=> b!4750678 d!1518385))

(declare-fun d!1518387 () Bool)

(assert (=> d!1518387 (= (eq!1211 lt!1914256 (+!2376 lt!1914254 t!14174)) (= (content!9523 (toList!6110 lt!1914256)) (content!9523 (toList!6110 (+!2376 lt!1914254 t!14174)))))))

(declare-fun bs!1140431 () Bool)

(assert (= bs!1140431 d!1518387))

(assert (=> bs!1140431 m!5711935))

(declare-fun m!5712083 () Bool)

(assert (=> bs!1140431 m!5712083))

(assert (=> b!4750678 d!1518387))

(declare-fun e!2963491 () Bool)

(declare-fun tp!1350132 () Bool)

(declare-fun b!4750792 () Bool)

(assert (=> b!4750792 (= e!2963491 (and tp_is_empty!31861 tp_is_empty!31863 tp!1350132))))

(assert (=> b!4750680 (= tp!1350124 e!2963491)))

(assert (= (and b!4750680 ((_ is Cons!53080) (t!360530 l!14304))) b!4750792))

(declare-fun tp!1350133 () Bool)

(declare-fun b!4750793 () Bool)

(declare-fun e!2963492 () Bool)

(assert (=> b!4750793 (= e!2963492 (and tp_is_empty!31861 tp_is_empty!31863 tp!1350133))))

(assert (=> b!4750679 (= tp!1350125 e!2963492)))

(assert (= (and b!4750679 ((_ is Cons!53080) (toList!6110 acc!1214))) b!4750793))

(check-sat (not b!4750777) (not b!4750787) (not d!1518381) (not b!4750778) (not b!4750769) (not bm!332720) (not bm!332709) (not b!4750687) (not d!1518383) (not d!1518385) tp_is_empty!31861 (not b!4750750) (not b!4750751) (not b!4750782) (not b!4750766) (not b!4750770) (not d!1518377) (not b!4750793) (not b!4750768) (not b!4750786) (not d!1518371) (not d!1518339) (not bm!332710) (not bm!332715) tp_is_empty!31863 (not b!4750783) (not d!1518341) (not bm!332712) (not d!1518375) (not bm!332719) (not b!4750689) (not d!1518373) (not d!1518343) (not bm!332718) (not bm!332716) (not b!4750780) (not b!4750764) (not bm!332714) (not b!4750779) (not b!4750686) (not b!4750688) (not b!4750765) (not b!4750784) (not b!4750752) (not bm!332717) (not b!4750781) (not d!1518379) (not d!1518387) (not b!4750792) (not b!4750771) (not bm!332713) (not b!4750753) (not b!4750763) (not bm!332711))
(check-sat)
