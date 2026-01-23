; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484916 () Bool)

(assert start!484916)

(declare-fun res!2012443 () Bool)

(declare-fun e!2961301 () Bool)

(assert (=> start!484916 (=> (not res!2012443) (not e!2961301))))

(declare-datatypes ((K!14380 0))(
  ( (K!14381 (val!19775 Int)) )
))
(declare-datatypes ((V!14626 0))(
  ( (V!14627 (val!19776 Int)) )
))
(declare-datatypes ((tuple2!54744 0))(
  ( (tuple2!54745 (_1!30666 K!14380) (_2!30666 V!14626)) )
))
(declare-datatypes ((List!53150 0))(
  ( (Nil!53026) (Cons!53026 (h!59423 tuple2!54744) (t!360458 List!53150)) )
))
(declare-fun l!14304 () List!53150)

(declare-fun noDuplicateKeys!2092 (List!53150) Bool)

(assert (=> start!484916 (= res!2012443 (noDuplicateKeys!2092 l!14304))))

(assert (=> start!484916 e!2961301))

(declare-fun e!2961302 () Bool)

(assert (=> start!484916 e!2961302))

(declare-fun tp_is_empty!31661 () Bool)

(declare-fun tp_is_empty!31663 () Bool)

(assert (=> start!484916 (and tp_is_empty!31661 tp_is_empty!31663)))

(declare-datatypes ((ListMap!5433 0))(
  ( (ListMap!5434 (toList!6062 List!53150)) )
))
(declare-fun acc!1214 () ListMap!5433)

(declare-fun e!2961300 () Bool)

(declare-fun inv!68252 (ListMap!5433) Bool)

(assert (=> start!484916 (and (inv!68252 acc!1214) e!2961300)))

(declare-fun b!4747537 () Bool)

(declare-fun res!2012445 () Bool)

(assert (=> b!4747537 (=> (not res!2012445) (not e!2961301))))

(get-info :version)

(assert (=> b!4747537 (= res!2012445 (not ((_ is Nil!53026) l!14304)))))

(declare-fun b!4747538 () Bool)

(declare-fun tp!1349713 () Bool)

(assert (=> b!4747538 (= e!2961302 (and tp_is_empty!31661 tp_is_empty!31663 tp!1349713))))

(declare-fun b!4747539 () Bool)

(declare-fun tp!1349712 () Bool)

(assert (=> b!4747539 (= e!2961300 tp!1349712)))

(declare-fun b!4747540 () Bool)

(declare-fun res!2012444 () Bool)

(assert (=> b!4747540 (=> (not res!2012444) (not e!2961301))))

(declare-fun t!14174 () tuple2!54744)

(assert (=> b!4747540 (= res!2012444 (noDuplicateKeys!2092 (Cons!53026 t!14174 l!14304)))))

(declare-fun b!4747541 () Bool)

(assert (=> b!4747541 (= e!2961301 (not (noDuplicateKeys!2092 (t!360458 l!14304))))))

(declare-fun lt!1909464 () ListMap!5433)

(declare-fun lt!1909465 () ListMap!5433)

(declare-fun eq!1169 (ListMap!5433 ListMap!5433) Bool)

(declare-fun addToMapMapFromBucket!1518 (List!53150 ListMap!5433) ListMap!5433)

(declare-fun +!2328 (ListMap!5433 tuple2!54744) ListMap!5433)

(assert (=> b!4747541 (eq!1169 (addToMapMapFromBucket!1518 (Cons!53026 t!14174 (t!360458 l!14304)) lt!1909465) (+!2328 lt!1909464 t!14174))))

(declare-datatypes ((Unit!134451 0))(
  ( (Unit!134452) )
))
(declare-fun lt!1909463 () Unit!134451)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!416 (tuple2!54744 List!53150 ListMap!5433) Unit!134451)

(assert (=> b!4747541 (= lt!1909463 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!416 t!14174 (t!360458 l!14304) lt!1909465))))

(assert (=> b!4747541 (= lt!1909464 (addToMapMapFromBucket!1518 (t!360458 l!14304) lt!1909465))))

(assert (=> b!4747541 (= lt!1909465 (+!2328 acc!1214 (h!59423 l!14304)))))

(assert (= (and start!484916 res!2012443) b!4747540))

(assert (= (and b!4747540 res!2012444) b!4747537))

(assert (= (and b!4747537 res!2012445) b!4747541))

(assert (= (and start!484916 ((_ is Cons!53026) l!14304)) b!4747538))

(assert (= start!484916 b!4747539))

(declare-fun m!5704775 () Bool)

(assert (=> start!484916 m!5704775))

(declare-fun m!5704777 () Bool)

(assert (=> start!484916 m!5704777))

(declare-fun m!5704779 () Bool)

(assert (=> b!4747540 m!5704779))

(declare-fun m!5704781 () Bool)

(assert (=> b!4747541 m!5704781))

(declare-fun m!5704783 () Bool)

(assert (=> b!4747541 m!5704783))

(declare-fun m!5704785 () Bool)

(assert (=> b!4747541 m!5704785))

(declare-fun m!5704787 () Bool)

(assert (=> b!4747541 m!5704787))

(declare-fun m!5704789 () Bool)

(assert (=> b!4747541 m!5704789))

(assert (=> b!4747541 m!5704787))

(assert (=> b!4747541 m!5704785))

(declare-fun m!5704791 () Bool)

(assert (=> b!4747541 m!5704791))

(declare-fun m!5704793 () Bool)

(assert (=> b!4747541 m!5704793))

(check-sat tp_is_empty!31663 (not b!4747539) (not b!4747540) (not start!484916) (not b!4747538) (not b!4747541) tp_is_empty!31661)
(check-sat)
(get-model)

(declare-fun d!1517254 () Bool)

(declare-fun res!2012450 () Bool)

(declare-fun e!2961307 () Bool)

(assert (=> d!1517254 (=> res!2012450 e!2961307)))

(assert (=> d!1517254 (= res!2012450 (not ((_ is Cons!53026) (Cons!53026 t!14174 l!14304))))))

(assert (=> d!1517254 (= (noDuplicateKeys!2092 (Cons!53026 t!14174 l!14304)) e!2961307)))

(declare-fun b!4747546 () Bool)

(declare-fun e!2961308 () Bool)

(assert (=> b!4747546 (= e!2961307 e!2961308)))

(declare-fun res!2012451 () Bool)

(assert (=> b!4747546 (=> (not res!2012451) (not e!2961308))))

(declare-fun containsKey!3521 (List!53150 K!14380) Bool)

(assert (=> b!4747546 (= res!2012451 (not (containsKey!3521 (t!360458 (Cons!53026 t!14174 l!14304)) (_1!30666 (h!59423 (Cons!53026 t!14174 l!14304))))))))

(declare-fun b!4747547 () Bool)

(assert (=> b!4747547 (= e!2961308 (noDuplicateKeys!2092 (t!360458 (Cons!53026 t!14174 l!14304))))))

(assert (= (and d!1517254 (not res!2012450)) b!4747546))

(assert (= (and b!4747546 res!2012451) b!4747547))

(declare-fun m!5704795 () Bool)

(assert (=> b!4747546 m!5704795))

(declare-fun m!5704797 () Bool)

(assert (=> b!4747547 m!5704797))

(assert (=> b!4747540 d!1517254))

(declare-fun d!1517256 () Bool)

(assert (=> d!1517256 (eq!1169 (addToMapMapFromBucket!1518 (Cons!53026 t!14174 (t!360458 l!14304)) lt!1909465) (+!2328 (addToMapMapFromBucket!1518 (t!360458 l!14304) lt!1909465) t!14174))))

(declare-fun lt!1909480 () Unit!134451)

(declare-fun choose!33778 (tuple2!54744 List!53150 ListMap!5433) Unit!134451)

(assert (=> d!1517256 (= lt!1909480 (choose!33778 t!14174 (t!360458 l!14304) lt!1909465))))

(assert (=> d!1517256 (noDuplicateKeys!2092 (t!360458 l!14304))))

(assert (=> d!1517256 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!416 t!14174 (t!360458 l!14304) lt!1909465) lt!1909480)))

(declare-fun bs!1138488 () Bool)

(assert (= bs!1138488 d!1517256))

(assert (=> bs!1138488 m!5704787))

(declare-fun m!5704815 () Bool)

(assert (=> bs!1138488 m!5704815))

(assert (=> bs!1138488 m!5704789))

(assert (=> bs!1138488 m!5704787))

(declare-fun m!5704817 () Bool)

(assert (=> bs!1138488 m!5704817))

(declare-fun m!5704819 () Bool)

(assert (=> bs!1138488 m!5704819))

(assert (=> bs!1138488 m!5704789))

(assert (=> bs!1138488 m!5704817))

(assert (=> bs!1138488 m!5704783))

(assert (=> b!4747541 d!1517256))

(declare-fun d!1517262 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9497 (List!53150) (InoxSet tuple2!54744))

(assert (=> d!1517262 (= (eq!1169 (addToMapMapFromBucket!1518 (Cons!53026 t!14174 (t!360458 l!14304)) lt!1909465) (+!2328 lt!1909464 t!14174)) (= (content!9497 (toList!6062 (addToMapMapFromBucket!1518 (Cons!53026 t!14174 (t!360458 l!14304)) lt!1909465))) (content!9497 (toList!6062 (+!2328 lt!1909464 t!14174)))))))

(declare-fun bs!1138489 () Bool)

(assert (= bs!1138489 d!1517262))

(declare-fun m!5704821 () Bool)

(assert (=> bs!1138489 m!5704821))

(declare-fun m!5704823 () Bool)

(assert (=> bs!1138489 m!5704823))

(assert (=> b!4747541 d!1517262))

(declare-fun b!4747606 () Bool)

(assert (=> b!4747606 true))

(declare-fun bs!1138507 () Bool)

(declare-fun b!4747608 () Bool)

(assert (= bs!1138507 (and b!4747608 b!4747606)))

(declare-fun lambda!220652 () Int)

(declare-fun lambda!220651 () Int)

(assert (=> bs!1138507 (= lambda!220652 lambda!220651)))

(assert (=> b!4747608 true))

(declare-fun lambda!220653 () Int)

(declare-fun lt!1909623 () ListMap!5433)

(assert (=> bs!1138507 (= (= lt!1909623 lt!1909465) (= lambda!220653 lambda!220651))))

(assert (=> b!4747608 (= (= lt!1909623 lt!1909465) (= lambda!220653 lambda!220652))))

(assert (=> b!4747608 true))

(declare-fun bs!1138508 () Bool)

(declare-fun d!1517264 () Bool)

(assert (= bs!1138508 (and d!1517264 b!4747606)))

(declare-fun lt!1909624 () ListMap!5433)

(declare-fun lambda!220654 () Int)

(assert (=> bs!1138508 (= (= lt!1909624 lt!1909465) (= lambda!220654 lambda!220651))))

(declare-fun bs!1138509 () Bool)

(assert (= bs!1138509 (and d!1517264 b!4747608)))

(assert (=> bs!1138509 (= (= lt!1909624 lt!1909465) (= lambda!220654 lambda!220652))))

(assert (=> bs!1138509 (= (= lt!1909624 lt!1909623) (= lambda!220654 lambda!220653))))

(assert (=> d!1517264 true))

(declare-fun e!2961346 () Bool)

(assert (=> d!1517264 e!2961346))

(declare-fun res!2012490 () Bool)

(assert (=> d!1517264 (=> (not res!2012490) (not e!2961346))))

(declare-fun forall!11731 (List!53150 Int) Bool)

(assert (=> d!1517264 (= res!2012490 (forall!11731 (Cons!53026 t!14174 (t!360458 l!14304)) lambda!220654))))

(declare-fun e!2961347 () ListMap!5433)

(assert (=> d!1517264 (= lt!1909624 e!2961347)))

(declare-fun c!810830 () Bool)

(assert (=> d!1517264 (= c!810830 ((_ is Nil!53026) (Cons!53026 t!14174 (t!360458 l!14304))))))

(assert (=> d!1517264 (noDuplicateKeys!2092 (Cons!53026 t!14174 (t!360458 l!14304)))))

(assert (=> d!1517264 (= (addToMapMapFromBucket!1518 (Cons!53026 t!14174 (t!360458 l!14304)) lt!1909465) lt!1909624)))

(declare-fun b!4747604 () Bool)

(declare-fun invariantList!1563 (List!53150) Bool)

(assert (=> b!4747604 (= e!2961346 (invariantList!1563 (toList!6062 lt!1909624)))))

(declare-fun call!332224 () Bool)

(declare-fun bm!332217 () Bool)

(assert (=> bm!332217 (= call!332224 (forall!11731 (toList!6062 lt!1909465) (ite c!810830 lambda!220651 lambda!220653)))))

(declare-fun b!4747605 () Bool)

(declare-fun res!2012488 () Bool)

(assert (=> b!4747605 (=> (not res!2012488) (not e!2961346))))

(assert (=> b!4747605 (= res!2012488 (forall!11731 (toList!6062 lt!1909465) lambda!220654))))

(assert (=> b!4747606 (= e!2961347 lt!1909465)))

(declare-fun lt!1909627 () Unit!134451)

(declare-fun call!332222 () Unit!134451)

(assert (=> b!4747606 (= lt!1909627 call!332222)))

(declare-fun call!332223 () Bool)

(assert (=> b!4747606 call!332223))

(declare-fun lt!1909632 () Unit!134451)

(assert (=> b!4747606 (= lt!1909632 lt!1909627)))

(assert (=> b!4747606 call!332224))

(declare-fun lt!1909621 () Unit!134451)

(declare-fun Unit!134464 () Unit!134451)

(assert (=> b!4747606 (= lt!1909621 Unit!134464)))

(declare-fun bm!332218 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!846 (ListMap!5433) Unit!134451)

(assert (=> bm!332218 (= call!332222 (lemmaContainsAllItsOwnKeys!846 lt!1909465))))

(declare-fun b!4747607 () Bool)

(declare-fun e!2961345 () Bool)

(assert (=> b!4747607 (= e!2961345 call!332224)))

(declare-fun bm!332219 () Bool)

(assert (=> bm!332219 (= call!332223 (forall!11731 (ite c!810830 (toList!6062 lt!1909465) (t!360458 (Cons!53026 t!14174 (t!360458 l!14304)))) (ite c!810830 lambda!220651 lambda!220653)))))

(assert (=> b!4747608 (= e!2961347 lt!1909623)))

(declare-fun lt!1909622 () ListMap!5433)

(assert (=> b!4747608 (= lt!1909622 (+!2328 lt!1909465 (h!59423 (Cons!53026 t!14174 (t!360458 l!14304)))))))

(assert (=> b!4747608 (= lt!1909623 (addToMapMapFromBucket!1518 (t!360458 (Cons!53026 t!14174 (t!360458 l!14304))) (+!2328 lt!1909465 (h!59423 (Cons!53026 t!14174 (t!360458 l!14304))))))))

(declare-fun lt!1909617 () Unit!134451)

(assert (=> b!4747608 (= lt!1909617 call!332222)))

(assert (=> b!4747608 (forall!11731 (toList!6062 lt!1909465) lambda!220652)))

(declare-fun lt!1909616 () Unit!134451)

(assert (=> b!4747608 (= lt!1909616 lt!1909617)))

(assert (=> b!4747608 (forall!11731 (toList!6062 lt!1909622) lambda!220653)))

(declare-fun lt!1909631 () Unit!134451)

(declare-fun Unit!134465 () Unit!134451)

(assert (=> b!4747608 (= lt!1909631 Unit!134465)))

(assert (=> b!4747608 call!332223))

(declare-fun lt!1909630 () Unit!134451)

(declare-fun Unit!134466 () Unit!134451)

(assert (=> b!4747608 (= lt!1909630 Unit!134466)))

(declare-fun lt!1909626 () Unit!134451)

(declare-fun Unit!134467 () Unit!134451)

(assert (=> b!4747608 (= lt!1909626 Unit!134467)))

(declare-fun lt!1909628 () Unit!134451)

(declare-fun forallContained!3757 (List!53150 Int tuple2!54744) Unit!134451)

(assert (=> b!4747608 (= lt!1909628 (forallContained!3757 (toList!6062 lt!1909622) lambda!220653 (h!59423 (Cons!53026 t!14174 (t!360458 l!14304)))))))

(declare-fun contains!16445 (ListMap!5433 K!14380) Bool)

(assert (=> b!4747608 (contains!16445 lt!1909622 (_1!30666 (h!59423 (Cons!53026 t!14174 (t!360458 l!14304)))))))

(declare-fun lt!1909625 () Unit!134451)

(declare-fun Unit!134468 () Unit!134451)

(assert (=> b!4747608 (= lt!1909625 Unit!134468)))

(assert (=> b!4747608 (contains!16445 lt!1909623 (_1!30666 (h!59423 (Cons!53026 t!14174 (t!360458 l!14304)))))))

(declare-fun lt!1909619 () Unit!134451)

(declare-fun Unit!134469 () Unit!134451)

(assert (=> b!4747608 (= lt!1909619 Unit!134469)))

(assert (=> b!4747608 (forall!11731 (Cons!53026 t!14174 (t!360458 l!14304)) lambda!220653)))

(declare-fun lt!1909614 () Unit!134451)

(declare-fun Unit!134470 () Unit!134451)

(assert (=> b!4747608 (= lt!1909614 Unit!134470)))

(assert (=> b!4747608 (forall!11731 (toList!6062 lt!1909622) lambda!220653)))

(declare-fun lt!1909629 () Unit!134451)

(declare-fun Unit!134471 () Unit!134451)

(assert (=> b!4747608 (= lt!1909629 Unit!134471)))

(declare-fun lt!1909618 () Unit!134451)

(declare-fun Unit!134472 () Unit!134451)

(assert (=> b!4747608 (= lt!1909618 Unit!134472)))

(declare-fun lt!1909634 () Unit!134451)

(declare-fun addForallContainsKeyThenBeforeAdding!845 (ListMap!5433 ListMap!5433 K!14380 V!14626) Unit!134451)

(assert (=> b!4747608 (= lt!1909634 (addForallContainsKeyThenBeforeAdding!845 lt!1909465 lt!1909623 (_1!30666 (h!59423 (Cons!53026 t!14174 (t!360458 l!14304)))) (_2!30666 (h!59423 (Cons!53026 t!14174 (t!360458 l!14304))))))))

(assert (=> b!4747608 (forall!11731 (toList!6062 lt!1909465) lambda!220653)))

(declare-fun lt!1909633 () Unit!134451)

(assert (=> b!4747608 (= lt!1909633 lt!1909634)))

(assert (=> b!4747608 (forall!11731 (toList!6062 lt!1909465) lambda!220653)))

(declare-fun lt!1909615 () Unit!134451)

(declare-fun Unit!134473 () Unit!134451)

(assert (=> b!4747608 (= lt!1909615 Unit!134473)))

(declare-fun res!2012489 () Bool)

(assert (=> b!4747608 (= res!2012489 (forall!11731 (Cons!53026 t!14174 (t!360458 l!14304)) lambda!220653))))

(assert (=> b!4747608 (=> (not res!2012489) (not e!2961345))))

(assert (=> b!4747608 e!2961345))

(declare-fun lt!1909620 () Unit!134451)

(declare-fun Unit!134474 () Unit!134451)

(assert (=> b!4747608 (= lt!1909620 Unit!134474)))

(assert (= (and d!1517264 c!810830) b!4747606))

(assert (= (and d!1517264 (not c!810830)) b!4747608))

(assert (= (and b!4747608 res!2012489) b!4747607))

(assert (= (or b!4747606 b!4747608) bm!332218))

(assert (= (or b!4747606 b!4747607) bm!332217))

(assert (= (or b!4747606 b!4747608) bm!332219))

(assert (= (and d!1517264 res!2012490) b!4747605))

(assert (= (and b!4747605 res!2012488) b!4747604))

(declare-fun m!5704919 () Bool)

(assert (=> b!4747605 m!5704919))

(declare-fun m!5704921 () Bool)

(assert (=> b!4747604 m!5704921))

(declare-fun m!5704923 () Bool)

(assert (=> bm!332218 m!5704923))

(declare-fun m!5704925 () Bool)

(assert (=> d!1517264 m!5704925))

(declare-fun m!5704927 () Bool)

(assert (=> d!1517264 m!5704927))

(declare-fun m!5704929 () Bool)

(assert (=> b!4747608 m!5704929))

(declare-fun m!5704931 () Bool)

(assert (=> b!4747608 m!5704931))

(declare-fun m!5704933 () Bool)

(assert (=> b!4747608 m!5704933))

(declare-fun m!5704935 () Bool)

(assert (=> b!4747608 m!5704935))

(declare-fun m!5704937 () Bool)

(assert (=> b!4747608 m!5704937))

(assert (=> b!4747608 m!5704929))

(declare-fun m!5704939 () Bool)

(assert (=> b!4747608 m!5704939))

(declare-fun m!5704941 () Bool)

(assert (=> b!4747608 m!5704941))

(declare-fun m!5704943 () Bool)

(assert (=> b!4747608 m!5704943))

(declare-fun m!5704945 () Bool)

(assert (=> b!4747608 m!5704945))

(assert (=> b!4747608 m!5704939))

(assert (=> b!4747608 m!5704933))

(declare-fun m!5704947 () Bool)

(assert (=> b!4747608 m!5704947))

(assert (=> b!4747608 m!5704935))

(declare-fun m!5704949 () Bool)

(assert (=> bm!332219 m!5704949))

(declare-fun m!5704951 () Bool)

(assert (=> bm!332217 m!5704951))

(assert (=> b!4747541 d!1517264))

(declare-fun d!1517280 () Bool)

(declare-fun res!2012491 () Bool)

(declare-fun e!2961348 () Bool)

(assert (=> d!1517280 (=> res!2012491 e!2961348)))

(assert (=> d!1517280 (= res!2012491 (not ((_ is Cons!53026) (t!360458 l!14304))))))

(assert (=> d!1517280 (= (noDuplicateKeys!2092 (t!360458 l!14304)) e!2961348)))

(declare-fun b!4747611 () Bool)

(declare-fun e!2961349 () Bool)

(assert (=> b!4747611 (= e!2961348 e!2961349)))

(declare-fun res!2012492 () Bool)

(assert (=> b!4747611 (=> (not res!2012492) (not e!2961349))))

(assert (=> b!4747611 (= res!2012492 (not (containsKey!3521 (t!360458 (t!360458 l!14304)) (_1!30666 (h!59423 (t!360458 l!14304))))))))

(declare-fun b!4747612 () Bool)

(assert (=> b!4747612 (= e!2961349 (noDuplicateKeys!2092 (t!360458 (t!360458 l!14304))))))

(assert (= (and d!1517280 (not res!2012491)) b!4747611))

(assert (= (and b!4747611 res!2012492) b!4747612))

(declare-fun m!5704953 () Bool)

(assert (=> b!4747611 m!5704953))

(declare-fun m!5704955 () Bool)

(assert (=> b!4747612 m!5704955))

(assert (=> b!4747541 d!1517280))

(declare-fun d!1517282 () Bool)

(declare-fun e!2961352 () Bool)

(assert (=> d!1517282 e!2961352))

(declare-fun res!2012498 () Bool)

(assert (=> d!1517282 (=> (not res!2012498) (not e!2961352))))

(declare-fun lt!1909644 () ListMap!5433)

(assert (=> d!1517282 (= res!2012498 (contains!16445 lt!1909644 (_1!30666 t!14174)))))

(declare-fun lt!1909646 () List!53150)

(assert (=> d!1517282 (= lt!1909644 (ListMap!5434 lt!1909646))))

(declare-fun lt!1909645 () Unit!134451)

(declare-fun lt!1909643 () Unit!134451)

(assert (=> d!1517282 (= lt!1909645 lt!1909643)))

(declare-datatypes ((Option!12501 0))(
  ( (None!12500) (Some!12500 (v!47195 V!14626)) )
))
(declare-fun getValueByKey!2051 (List!53150 K!14380) Option!12501)

(assert (=> d!1517282 (= (getValueByKey!2051 lt!1909646 (_1!30666 t!14174)) (Some!12500 (_2!30666 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1128 (List!53150 K!14380 V!14626) Unit!134451)

(assert (=> d!1517282 (= lt!1909643 (lemmaContainsTupThenGetReturnValue!1128 lt!1909646 (_1!30666 t!14174) (_2!30666 t!14174)))))

(declare-fun insertNoDuplicatedKeys!636 (List!53150 K!14380 V!14626) List!53150)

(assert (=> d!1517282 (= lt!1909646 (insertNoDuplicatedKeys!636 (toList!6062 lt!1909464) (_1!30666 t!14174) (_2!30666 t!14174)))))

(assert (=> d!1517282 (= (+!2328 lt!1909464 t!14174) lt!1909644)))

(declare-fun b!4747617 () Bool)

(declare-fun res!2012497 () Bool)

(assert (=> b!4747617 (=> (not res!2012497) (not e!2961352))))

(assert (=> b!4747617 (= res!2012497 (= (getValueByKey!2051 (toList!6062 lt!1909644) (_1!30666 t!14174)) (Some!12500 (_2!30666 t!14174))))))

(declare-fun b!4747618 () Bool)

(declare-fun contains!16446 (List!53150 tuple2!54744) Bool)

(assert (=> b!4747618 (= e!2961352 (contains!16446 (toList!6062 lt!1909644) t!14174))))

(assert (= (and d!1517282 res!2012498) b!4747617))

(assert (= (and b!4747617 res!2012497) b!4747618))

(declare-fun m!5704957 () Bool)

(assert (=> d!1517282 m!5704957))

(declare-fun m!5704959 () Bool)

(assert (=> d!1517282 m!5704959))

(declare-fun m!5704961 () Bool)

(assert (=> d!1517282 m!5704961))

(declare-fun m!5704963 () Bool)

(assert (=> d!1517282 m!5704963))

(declare-fun m!5704965 () Bool)

(assert (=> b!4747617 m!5704965))

(declare-fun m!5704967 () Bool)

(assert (=> b!4747618 m!5704967))

(assert (=> b!4747541 d!1517282))

(declare-fun d!1517284 () Bool)

(declare-fun e!2961353 () Bool)

(assert (=> d!1517284 e!2961353))

(declare-fun res!2012500 () Bool)

(assert (=> d!1517284 (=> (not res!2012500) (not e!2961353))))

(declare-fun lt!1909648 () ListMap!5433)

(assert (=> d!1517284 (= res!2012500 (contains!16445 lt!1909648 (_1!30666 (h!59423 l!14304))))))

(declare-fun lt!1909650 () List!53150)

(assert (=> d!1517284 (= lt!1909648 (ListMap!5434 lt!1909650))))

(declare-fun lt!1909649 () Unit!134451)

(declare-fun lt!1909647 () Unit!134451)

(assert (=> d!1517284 (= lt!1909649 lt!1909647)))

(assert (=> d!1517284 (= (getValueByKey!2051 lt!1909650 (_1!30666 (h!59423 l!14304))) (Some!12500 (_2!30666 (h!59423 l!14304))))))

(assert (=> d!1517284 (= lt!1909647 (lemmaContainsTupThenGetReturnValue!1128 lt!1909650 (_1!30666 (h!59423 l!14304)) (_2!30666 (h!59423 l!14304))))))

(assert (=> d!1517284 (= lt!1909650 (insertNoDuplicatedKeys!636 (toList!6062 acc!1214) (_1!30666 (h!59423 l!14304)) (_2!30666 (h!59423 l!14304))))))

(assert (=> d!1517284 (= (+!2328 acc!1214 (h!59423 l!14304)) lt!1909648)))

(declare-fun b!4747619 () Bool)

(declare-fun res!2012499 () Bool)

(assert (=> b!4747619 (=> (not res!2012499) (not e!2961353))))

(assert (=> b!4747619 (= res!2012499 (= (getValueByKey!2051 (toList!6062 lt!1909648) (_1!30666 (h!59423 l!14304))) (Some!12500 (_2!30666 (h!59423 l!14304)))))))

(declare-fun b!4747620 () Bool)

(assert (=> b!4747620 (= e!2961353 (contains!16446 (toList!6062 lt!1909648) (h!59423 l!14304)))))

(assert (= (and d!1517284 res!2012500) b!4747619))

(assert (= (and b!4747619 res!2012499) b!4747620))

(declare-fun m!5704969 () Bool)

(assert (=> d!1517284 m!5704969))

(declare-fun m!5704971 () Bool)

(assert (=> d!1517284 m!5704971))

(declare-fun m!5704973 () Bool)

(assert (=> d!1517284 m!5704973))

(declare-fun m!5704975 () Bool)

(assert (=> d!1517284 m!5704975))

(declare-fun m!5704977 () Bool)

(assert (=> b!4747619 m!5704977))

(declare-fun m!5704979 () Bool)

(assert (=> b!4747620 m!5704979))

(assert (=> b!4747541 d!1517284))

(declare-fun bs!1138510 () Bool)

(declare-fun b!4747623 () Bool)

(assert (= bs!1138510 (and b!4747623 b!4747606)))

(declare-fun lambda!220655 () Int)

(assert (=> bs!1138510 (= lambda!220655 lambda!220651)))

(declare-fun bs!1138511 () Bool)

(assert (= bs!1138511 (and b!4747623 b!4747608)))

(assert (=> bs!1138511 (= lambda!220655 lambda!220652)))

(assert (=> bs!1138511 (= (= lt!1909465 lt!1909623) (= lambda!220655 lambda!220653))))

(declare-fun bs!1138512 () Bool)

(assert (= bs!1138512 (and b!4747623 d!1517264)))

(assert (=> bs!1138512 (= (= lt!1909465 lt!1909624) (= lambda!220655 lambda!220654))))

(assert (=> b!4747623 true))

(declare-fun bs!1138513 () Bool)

(declare-fun b!4747625 () Bool)

(assert (= bs!1138513 (and b!4747625 b!4747608)))

(declare-fun lambda!220656 () Int)

(assert (=> bs!1138513 (= (= lt!1909465 lt!1909623) (= lambda!220656 lambda!220653))))

(declare-fun bs!1138514 () Bool)

(assert (= bs!1138514 (and b!4747625 b!4747606)))

(assert (=> bs!1138514 (= lambda!220656 lambda!220651)))

(assert (=> bs!1138513 (= lambda!220656 lambda!220652)))

(declare-fun bs!1138515 () Bool)

(assert (= bs!1138515 (and b!4747625 d!1517264)))

(assert (=> bs!1138515 (= (= lt!1909465 lt!1909624) (= lambda!220656 lambda!220654))))

(declare-fun bs!1138516 () Bool)

(assert (= bs!1138516 (and b!4747625 b!4747623)))

(assert (=> bs!1138516 (= lambda!220656 lambda!220655)))

(assert (=> b!4747625 true))

(declare-fun lt!1909660 () ListMap!5433)

(declare-fun lambda!220657 () Int)

(assert (=> bs!1138513 (= (= lt!1909660 lt!1909623) (= lambda!220657 lambda!220653))))

(assert (=> b!4747625 (= (= lt!1909660 lt!1909465) (= lambda!220657 lambda!220656))))

(assert (=> bs!1138514 (= (= lt!1909660 lt!1909465) (= lambda!220657 lambda!220651))))

(assert (=> bs!1138513 (= (= lt!1909660 lt!1909465) (= lambda!220657 lambda!220652))))

(assert (=> bs!1138515 (= (= lt!1909660 lt!1909624) (= lambda!220657 lambda!220654))))

(assert (=> bs!1138516 (= (= lt!1909660 lt!1909465) (= lambda!220657 lambda!220655))))

(assert (=> b!4747625 true))

(declare-fun bs!1138517 () Bool)

(declare-fun d!1517286 () Bool)

(assert (= bs!1138517 (and d!1517286 b!4747625)))

(declare-fun lt!1909661 () ListMap!5433)

(declare-fun lambda!220658 () Int)

(assert (=> bs!1138517 (= (= lt!1909661 lt!1909660) (= lambda!220658 lambda!220657))))

(declare-fun bs!1138518 () Bool)

(assert (= bs!1138518 (and d!1517286 b!4747608)))

(assert (=> bs!1138518 (= (= lt!1909661 lt!1909623) (= lambda!220658 lambda!220653))))

(assert (=> bs!1138517 (= (= lt!1909661 lt!1909465) (= lambda!220658 lambda!220656))))

(declare-fun bs!1138519 () Bool)

(assert (= bs!1138519 (and d!1517286 b!4747606)))

(assert (=> bs!1138519 (= (= lt!1909661 lt!1909465) (= lambda!220658 lambda!220651))))

(assert (=> bs!1138518 (= (= lt!1909661 lt!1909465) (= lambda!220658 lambda!220652))))

(declare-fun bs!1138520 () Bool)

(assert (= bs!1138520 (and d!1517286 d!1517264)))

(assert (=> bs!1138520 (= (= lt!1909661 lt!1909624) (= lambda!220658 lambda!220654))))

(declare-fun bs!1138521 () Bool)

(assert (= bs!1138521 (and d!1517286 b!4747623)))

(assert (=> bs!1138521 (= (= lt!1909661 lt!1909465) (= lambda!220658 lambda!220655))))

(assert (=> d!1517286 true))

(declare-fun e!2961355 () Bool)

(assert (=> d!1517286 e!2961355))

(declare-fun res!2012503 () Bool)

(assert (=> d!1517286 (=> (not res!2012503) (not e!2961355))))

(assert (=> d!1517286 (= res!2012503 (forall!11731 (t!360458 l!14304) lambda!220658))))

(declare-fun e!2961356 () ListMap!5433)

(assert (=> d!1517286 (= lt!1909661 e!2961356)))

(declare-fun c!810831 () Bool)

(assert (=> d!1517286 (= c!810831 ((_ is Nil!53026) (t!360458 l!14304)))))

(assert (=> d!1517286 (noDuplicateKeys!2092 (t!360458 l!14304))))

(assert (=> d!1517286 (= (addToMapMapFromBucket!1518 (t!360458 l!14304) lt!1909465) lt!1909661)))

(declare-fun b!4747621 () Bool)

(assert (=> b!4747621 (= e!2961355 (invariantList!1563 (toList!6062 lt!1909661)))))

(declare-fun call!332227 () Bool)

(declare-fun bm!332220 () Bool)

(assert (=> bm!332220 (= call!332227 (forall!11731 (toList!6062 lt!1909465) (ite c!810831 lambda!220655 lambda!220657)))))

(declare-fun b!4747622 () Bool)

(declare-fun res!2012501 () Bool)

(assert (=> b!4747622 (=> (not res!2012501) (not e!2961355))))

(assert (=> b!4747622 (= res!2012501 (forall!11731 (toList!6062 lt!1909465) lambda!220658))))

(assert (=> b!4747623 (= e!2961356 lt!1909465)))

(declare-fun lt!1909664 () Unit!134451)

(declare-fun call!332225 () Unit!134451)

(assert (=> b!4747623 (= lt!1909664 call!332225)))

(declare-fun call!332226 () Bool)

(assert (=> b!4747623 call!332226))

(declare-fun lt!1909669 () Unit!134451)

(assert (=> b!4747623 (= lt!1909669 lt!1909664)))

(assert (=> b!4747623 call!332227))

(declare-fun lt!1909658 () Unit!134451)

(declare-fun Unit!134486 () Unit!134451)

(assert (=> b!4747623 (= lt!1909658 Unit!134486)))

(declare-fun bm!332221 () Bool)

(assert (=> bm!332221 (= call!332225 (lemmaContainsAllItsOwnKeys!846 lt!1909465))))

(declare-fun b!4747624 () Bool)

(declare-fun e!2961354 () Bool)

(assert (=> b!4747624 (= e!2961354 call!332227)))

(declare-fun bm!332222 () Bool)

(assert (=> bm!332222 (= call!332226 (forall!11731 (ite c!810831 (toList!6062 lt!1909465) (t!360458 (t!360458 l!14304))) (ite c!810831 lambda!220655 lambda!220657)))))

(assert (=> b!4747625 (= e!2961356 lt!1909660)))

(declare-fun lt!1909659 () ListMap!5433)

(assert (=> b!4747625 (= lt!1909659 (+!2328 lt!1909465 (h!59423 (t!360458 l!14304))))))

(assert (=> b!4747625 (= lt!1909660 (addToMapMapFromBucket!1518 (t!360458 (t!360458 l!14304)) (+!2328 lt!1909465 (h!59423 (t!360458 l!14304)))))))

(declare-fun lt!1909654 () Unit!134451)

(assert (=> b!4747625 (= lt!1909654 call!332225)))

(assert (=> b!4747625 (forall!11731 (toList!6062 lt!1909465) lambda!220656)))

(declare-fun lt!1909653 () Unit!134451)

(assert (=> b!4747625 (= lt!1909653 lt!1909654)))

(assert (=> b!4747625 (forall!11731 (toList!6062 lt!1909659) lambda!220657)))

(declare-fun lt!1909668 () Unit!134451)

(declare-fun Unit!134487 () Unit!134451)

(assert (=> b!4747625 (= lt!1909668 Unit!134487)))

(assert (=> b!4747625 call!332226))

(declare-fun lt!1909667 () Unit!134451)

(declare-fun Unit!134488 () Unit!134451)

(assert (=> b!4747625 (= lt!1909667 Unit!134488)))

(declare-fun lt!1909663 () Unit!134451)

(declare-fun Unit!134489 () Unit!134451)

(assert (=> b!4747625 (= lt!1909663 Unit!134489)))

(declare-fun lt!1909665 () Unit!134451)

(assert (=> b!4747625 (= lt!1909665 (forallContained!3757 (toList!6062 lt!1909659) lambda!220657 (h!59423 (t!360458 l!14304))))))

(assert (=> b!4747625 (contains!16445 lt!1909659 (_1!30666 (h!59423 (t!360458 l!14304))))))

(declare-fun lt!1909662 () Unit!134451)

(declare-fun Unit!134490 () Unit!134451)

(assert (=> b!4747625 (= lt!1909662 Unit!134490)))

(assert (=> b!4747625 (contains!16445 lt!1909660 (_1!30666 (h!59423 (t!360458 l!14304))))))

(declare-fun lt!1909656 () Unit!134451)

(declare-fun Unit!134491 () Unit!134451)

(assert (=> b!4747625 (= lt!1909656 Unit!134491)))

(assert (=> b!4747625 (forall!11731 (t!360458 l!14304) lambda!220657)))

(declare-fun lt!1909651 () Unit!134451)

(declare-fun Unit!134492 () Unit!134451)

(assert (=> b!4747625 (= lt!1909651 Unit!134492)))

(assert (=> b!4747625 (forall!11731 (toList!6062 lt!1909659) lambda!220657)))

(declare-fun lt!1909666 () Unit!134451)

(declare-fun Unit!134493 () Unit!134451)

(assert (=> b!4747625 (= lt!1909666 Unit!134493)))

(declare-fun lt!1909655 () Unit!134451)

(declare-fun Unit!134494 () Unit!134451)

(assert (=> b!4747625 (= lt!1909655 Unit!134494)))

(declare-fun lt!1909671 () Unit!134451)

(assert (=> b!4747625 (= lt!1909671 (addForallContainsKeyThenBeforeAdding!845 lt!1909465 lt!1909660 (_1!30666 (h!59423 (t!360458 l!14304))) (_2!30666 (h!59423 (t!360458 l!14304)))))))

(assert (=> b!4747625 (forall!11731 (toList!6062 lt!1909465) lambda!220657)))

(declare-fun lt!1909670 () Unit!134451)

(assert (=> b!4747625 (= lt!1909670 lt!1909671)))

(assert (=> b!4747625 (forall!11731 (toList!6062 lt!1909465) lambda!220657)))

(declare-fun lt!1909652 () Unit!134451)

(declare-fun Unit!134495 () Unit!134451)

(assert (=> b!4747625 (= lt!1909652 Unit!134495)))

(declare-fun res!2012502 () Bool)

(assert (=> b!4747625 (= res!2012502 (forall!11731 (t!360458 l!14304) lambda!220657))))

(assert (=> b!4747625 (=> (not res!2012502) (not e!2961354))))

(assert (=> b!4747625 e!2961354))

(declare-fun lt!1909657 () Unit!134451)

(declare-fun Unit!134496 () Unit!134451)

(assert (=> b!4747625 (= lt!1909657 Unit!134496)))

(assert (= (and d!1517286 c!810831) b!4747623))

(assert (= (and d!1517286 (not c!810831)) b!4747625))

(assert (= (and b!4747625 res!2012502) b!4747624))

(assert (= (or b!4747623 b!4747625) bm!332221))

(assert (= (or b!4747623 b!4747624) bm!332220))

(assert (= (or b!4747623 b!4747625) bm!332222))

(assert (= (and d!1517286 res!2012503) b!4747622))

(assert (= (and b!4747622 res!2012501) b!4747621))

(declare-fun m!5704981 () Bool)

(assert (=> b!4747622 m!5704981))

(declare-fun m!5704983 () Bool)

(assert (=> b!4747621 m!5704983))

(assert (=> bm!332221 m!5704923))

(declare-fun m!5704985 () Bool)

(assert (=> d!1517286 m!5704985))

(assert (=> d!1517286 m!5704783))

(declare-fun m!5704987 () Bool)

(assert (=> b!4747625 m!5704987))

(declare-fun m!5704989 () Bool)

(assert (=> b!4747625 m!5704989))

(declare-fun m!5704991 () Bool)

(assert (=> b!4747625 m!5704991))

(declare-fun m!5704993 () Bool)

(assert (=> b!4747625 m!5704993))

(declare-fun m!5704995 () Bool)

(assert (=> b!4747625 m!5704995))

(assert (=> b!4747625 m!5704987))

(declare-fun m!5704997 () Bool)

(assert (=> b!4747625 m!5704997))

(declare-fun m!5704999 () Bool)

(assert (=> b!4747625 m!5704999))

(declare-fun m!5705001 () Bool)

(assert (=> b!4747625 m!5705001))

(declare-fun m!5705003 () Bool)

(assert (=> b!4747625 m!5705003))

(assert (=> b!4747625 m!5704997))

(assert (=> b!4747625 m!5704991))

(declare-fun m!5705005 () Bool)

(assert (=> b!4747625 m!5705005))

(assert (=> b!4747625 m!5704993))

(declare-fun m!5705007 () Bool)

(assert (=> bm!332222 m!5705007))

(declare-fun m!5705009 () Bool)

(assert (=> bm!332220 m!5705009))

(assert (=> b!4747541 d!1517286))

(declare-fun d!1517288 () Bool)

(declare-fun res!2012504 () Bool)

(declare-fun e!2961357 () Bool)

(assert (=> d!1517288 (=> res!2012504 e!2961357)))

(assert (=> d!1517288 (= res!2012504 (not ((_ is Cons!53026) l!14304)))))

(assert (=> d!1517288 (= (noDuplicateKeys!2092 l!14304) e!2961357)))

(declare-fun b!4747626 () Bool)

(declare-fun e!2961358 () Bool)

(assert (=> b!4747626 (= e!2961357 e!2961358)))

(declare-fun res!2012505 () Bool)

(assert (=> b!4747626 (=> (not res!2012505) (not e!2961358))))

(assert (=> b!4747626 (= res!2012505 (not (containsKey!3521 (t!360458 l!14304) (_1!30666 (h!59423 l!14304)))))))

(declare-fun b!4747627 () Bool)

(assert (=> b!4747627 (= e!2961358 (noDuplicateKeys!2092 (t!360458 l!14304)))))

(assert (= (and d!1517288 (not res!2012504)) b!4747626))

(assert (= (and b!4747626 res!2012505) b!4747627))

(declare-fun m!5705011 () Bool)

(assert (=> b!4747626 m!5705011))

(assert (=> b!4747627 m!5704783))

(assert (=> start!484916 d!1517288))

(declare-fun d!1517290 () Bool)

(assert (=> d!1517290 (= (inv!68252 acc!1214) (invariantList!1563 (toList!6062 acc!1214)))))

(declare-fun bs!1138522 () Bool)

(assert (= bs!1138522 d!1517290))

(declare-fun m!5705013 () Bool)

(assert (=> bs!1138522 m!5705013))

(assert (=> start!484916 d!1517290))

(declare-fun b!4747632 () Bool)

(declare-fun tp!1349720 () Bool)

(declare-fun e!2961361 () Bool)

(assert (=> b!4747632 (= e!2961361 (and tp_is_empty!31661 tp_is_empty!31663 tp!1349720))))

(assert (=> b!4747539 (= tp!1349712 e!2961361)))

(assert (= (and b!4747539 ((_ is Cons!53026) (toList!6062 acc!1214))) b!4747632))

(declare-fun b!4747633 () Bool)

(declare-fun tp!1349721 () Bool)

(declare-fun e!2961362 () Bool)

(assert (=> b!4747633 (= e!2961362 (and tp_is_empty!31661 tp_is_empty!31663 tp!1349721))))

(assert (=> b!4747538 (= tp!1349713 e!2961362)))

(assert (= (and b!4747538 ((_ is Cons!53026) (t!360458 l!14304))) b!4747633))

(check-sat (not b!4747546) (not bm!332217) (not bm!332222) tp_is_empty!31663 (not b!4747611) (not b!4747621) (not d!1517256) (not bm!332220) tp_is_empty!31661 (not b!4747627) (not bm!332218) (not d!1517262) (not b!4747608) (not b!4747605) (not b!4747620) (not bm!332219) (not bm!332221) (not b!4747622) (not d!1517286) (not b!4747547) (not d!1517290) (not b!4747619) (not b!4747633) (not d!1517264) (not d!1517282) (not b!4747612) (not b!4747626) (not b!4747625) (not d!1517284) (not b!4747618) (not b!4747604) (not b!4747617) (not b!4747632))
(check-sat)
