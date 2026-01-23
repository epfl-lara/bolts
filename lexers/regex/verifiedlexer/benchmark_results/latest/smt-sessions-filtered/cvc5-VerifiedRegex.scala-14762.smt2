; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759178 () Bool)

(assert start!759178)

(declare-fun b!8057595 () Bool)

(assert (=> b!8057595 true))

(declare-fun bs!1973279 () Bool)

(declare-fun b!8057594 () Bool)

(assert (= bs!1973279 (and b!8057594 b!8057595)))

(declare-datatypes ((V!23195 0))(
  ( (V!23196 (val!33025 Int)) )
))
(declare-datatypes ((K!22941 0))(
  ( (K!22942 (val!33026 Int)) )
))
(declare-datatypes ((tuple2!70990 0))(
  ( (tuple2!70991 (_1!38798 K!22941) (_2!38798 V!23195)) )
))
(declare-datatypes ((List!75743 0))(
  ( (Nil!75617) (Cons!75617 (h!82065 tuple2!70990) (t!391515 List!75743)) )
))
(declare-datatypes ((ListMap!7361 0))(
  ( (ListMap!7362 (toList!11955 List!75743)) )
))
(declare-fun lt!2731197 () ListMap!7361)

(declare-fun lambda!474662 () Int)

(declare-fun lambda!474663 () Int)

(declare-fun acc!836 () ListMap!7361)

(assert (=> bs!1973279 (= (= lt!2731197 acc!836) (= lambda!474663 lambda!474662))))

(assert (=> b!8057594 true))

(declare-fun lambda!474664 () Int)

(assert (=> b!8057595 (= (= lt!2731197 acc!836) (= lambda!474664 lambda!474662))))

(assert (=> bs!1973279 (= lambda!474664 lambda!474663)))

(assert (=> b!8057595 true))

(declare-fun e!4748410 () Bool)

(declare-fun lt!2731198 () ListMap!7361)

(declare-fun forall!18535 (List!75743 Int) Bool)

(assert (=> b!8057594 (= e!4748410 (forall!18535 (toList!11955 lt!2731198) lambda!474663))))

(declare-fun e!4748409 () Bool)

(declare-fun l!10976 () List!75743)

(assert (=> b!8057595 (= e!4748409 (not (forall!18535 (t!391515 l!10976) lambda!474664)))))

(assert (=> b!8057595 e!4748410))

(declare-fun res!3187422 () Bool)

(assert (=> b!8057595 (=> (not res!3187422) (not e!4748410))))

(assert (=> b!8057595 (= res!3187422 (forall!18535 (toList!11955 acc!836) lambda!474662))))

(declare-datatypes ((Unit!172602 0))(
  ( (Unit!172603) )
))
(declare-fun lt!2731199 () Unit!172602)

(declare-fun lemmaContainsAllItsOwnKeys!1116 (ListMap!7361) Unit!172602)

(assert (=> b!8057595 (= lt!2731199 (lemmaContainsAllItsOwnKeys!1116 acc!836))))

(declare-fun addToMapMapFromBucket!2016 (List!75743 ListMap!7361) ListMap!7361)

(assert (=> b!8057595 (= lt!2731197 (addToMapMapFromBucket!2016 (t!391515 l!10976) lt!2731198))))

(declare-fun +!2702 (ListMap!7361 tuple2!70990) ListMap!7361)

(assert (=> b!8057595 (= lt!2731198 (+!2702 acc!836 (h!82065 l!10976)))))

(declare-fun res!3187421 () Bool)

(assert (=> start!759178 (=> (not res!3187421) (not e!4748409))))

(declare-fun noDuplicateKeys!2741 (List!75743) Bool)

(assert (=> start!759178 (= res!3187421 (noDuplicateKeys!2741 l!10976))))

(assert (=> start!759178 e!4748409))

(declare-fun e!4748412 () Bool)

(assert (=> start!759178 e!4748412))

(declare-fun e!4748411 () Bool)

(declare-fun inv!97415 (ListMap!7361) Bool)

(assert (=> start!759178 (and (inv!97415 acc!836) e!4748411)))

(declare-fun b!8057596 () Bool)

(declare-fun tp!2414151 () Bool)

(assert (=> b!8057596 (= e!4748411 tp!2414151)))

(declare-fun b!8057597 () Bool)

(declare-fun res!3187420 () Bool)

(assert (=> b!8057597 (=> (not res!3187420) (not e!4748409))))

(assert (=> b!8057597 (= res!3187420 (not (is-Nil!75617 l!10976)))))

(declare-fun tp!2414150 () Bool)

(declare-fun tp_is_empty!55103 () Bool)

(declare-fun tp_is_empty!55105 () Bool)

(declare-fun b!8057598 () Bool)

(assert (=> b!8057598 (= e!4748412 (and tp_is_empty!55103 tp_is_empty!55105 tp!2414150))))

(assert (= (and start!759178 res!3187421) b!8057597))

(assert (= (and b!8057597 res!3187420) b!8057595))

(assert (= (and b!8057595 res!3187422) b!8057594))

(assert (= (and start!759178 (is-Cons!75617 l!10976)) b!8057598))

(assert (= start!759178 b!8057596))

(declare-fun m!8410680 () Bool)

(assert (=> b!8057594 m!8410680))

(declare-fun m!8410682 () Bool)

(assert (=> b!8057595 m!8410682))

(declare-fun m!8410684 () Bool)

(assert (=> b!8057595 m!8410684))

(declare-fun m!8410686 () Bool)

(assert (=> b!8057595 m!8410686))

(declare-fun m!8410688 () Bool)

(assert (=> b!8057595 m!8410688))

(declare-fun m!8410690 () Bool)

(assert (=> b!8057595 m!8410690))

(declare-fun m!8410692 () Bool)

(assert (=> start!759178 m!8410692))

(declare-fun m!8410694 () Bool)

(assert (=> start!759178 m!8410694))

(push 1)

(assert (not b!8057596))

(assert (not b!8057595))

(assert (not start!759178))

(assert tp_is_empty!55103)

(assert (not b!8057598))

(assert tp_is_empty!55105)

(assert (not b!8057594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398921 () Bool)

(declare-fun res!3187436 () Bool)

(declare-fun e!4748429 () Bool)

(assert (=> d!2398921 (=> res!3187436 e!4748429)))

(assert (=> d!2398921 (= res!3187436 (is-Nil!75617 (toList!11955 lt!2731198)))))

(assert (=> d!2398921 (= (forall!18535 (toList!11955 lt!2731198) lambda!474663) e!4748429)))

(declare-fun b!8057622 () Bool)

(declare-fun e!4748430 () Bool)

(assert (=> b!8057622 (= e!4748429 e!4748430)))

(declare-fun res!3187437 () Bool)

(assert (=> b!8057622 (=> (not res!3187437) (not e!4748430))))

(declare-fun dynLambda!30275 (Int tuple2!70990) Bool)

(assert (=> b!8057622 (= res!3187437 (dynLambda!30275 lambda!474663 (h!82065 (toList!11955 lt!2731198))))))

(declare-fun b!8057623 () Bool)

(assert (=> b!8057623 (= e!4748430 (forall!18535 (t!391515 (toList!11955 lt!2731198)) lambda!474663))))

(assert (= (and d!2398921 (not res!3187436)) b!8057622))

(assert (= (and b!8057622 res!3187437) b!8057623))

(declare-fun b_lambda!290555 () Bool)

(assert (=> (not b_lambda!290555) (not b!8057622)))

(declare-fun m!8410712 () Bool)

(assert (=> b!8057622 m!8410712))

(declare-fun m!8410714 () Bool)

(assert (=> b!8057623 m!8410714))

(assert (=> b!8057594 d!2398921))

(declare-fun d!2398923 () Bool)

(declare-fun res!3187442 () Bool)

(declare-fun e!4748435 () Bool)

(assert (=> d!2398923 (=> res!3187442 e!4748435)))

(assert (=> d!2398923 (= res!3187442 (not (is-Cons!75617 l!10976)))))

(assert (=> d!2398923 (= (noDuplicateKeys!2741 l!10976) e!4748435)))

(declare-fun b!8057628 () Bool)

(declare-fun e!4748436 () Bool)

(assert (=> b!8057628 (= e!4748435 e!4748436)))

(declare-fun res!3187443 () Bool)

(assert (=> b!8057628 (=> (not res!3187443) (not e!4748436))))

(declare-fun containsKey!4917 (List!75743 K!22941) Bool)

(assert (=> b!8057628 (= res!3187443 (not (containsKey!4917 (t!391515 l!10976) (_1!38798 (h!82065 l!10976)))))))

(declare-fun b!8057629 () Bool)

(assert (=> b!8057629 (= e!4748436 (noDuplicateKeys!2741 (t!391515 l!10976)))))

(assert (= (and d!2398923 (not res!3187442)) b!8057628))

(assert (= (and b!8057628 res!3187443) b!8057629))

(declare-fun m!8410716 () Bool)

(assert (=> b!8057628 m!8410716))

(declare-fun m!8410718 () Bool)

(assert (=> b!8057629 m!8410718))

(assert (=> start!759178 d!2398923))

(declare-fun d!2398925 () Bool)

(declare-fun invariantList!1959 (List!75743) Bool)

(assert (=> d!2398925 (= (inv!97415 acc!836) (invariantList!1959 (toList!11955 acc!836)))))

(declare-fun bs!1973281 () Bool)

(assert (= bs!1973281 d!2398925))

(declare-fun m!8410720 () Bool)

(assert (=> bs!1973281 m!8410720))

(assert (=> start!759178 d!2398925))

(declare-fun bs!1973283 () Bool)

(declare-fun b!8057655 () Bool)

(assert (= bs!1973283 (and b!8057655 b!8057595)))

(declare-fun lambda!474702 () Int)

(assert (=> bs!1973283 (= (= lt!2731198 acc!836) (= lambda!474702 lambda!474662))))

(declare-fun bs!1973284 () Bool)

(assert (= bs!1973284 (and b!8057655 b!8057594)))

(assert (=> bs!1973284 (= (= lt!2731198 lt!2731197) (= lambda!474702 lambda!474663))))

(assert (=> bs!1973283 (= (= lt!2731198 lt!2731197) (= lambda!474702 lambda!474664))))

(assert (=> b!8057655 true))

(declare-fun bs!1973285 () Bool)

(declare-fun b!8057654 () Bool)

(assert (= bs!1973285 (and b!8057654 b!8057595)))

(declare-fun lambda!474703 () Int)

(assert (=> bs!1973285 (= (= lt!2731198 acc!836) (= lambda!474703 lambda!474662))))

(declare-fun bs!1973286 () Bool)

(assert (= bs!1973286 (and b!8057654 b!8057594)))

(assert (=> bs!1973286 (= (= lt!2731198 lt!2731197) (= lambda!474703 lambda!474663))))

(assert (=> bs!1973285 (= (= lt!2731198 lt!2731197) (= lambda!474703 lambda!474664))))

(declare-fun bs!1973287 () Bool)

(assert (= bs!1973287 (and b!8057654 b!8057655)))

(assert (=> bs!1973287 (= lambda!474703 lambda!474702)))

(assert (=> b!8057654 true))

(declare-fun lambda!474704 () Int)

(declare-fun lt!2731270 () ListMap!7361)

(assert (=> bs!1973285 (= (= lt!2731270 acc!836) (= lambda!474704 lambda!474662))))

(assert (=> bs!1973285 (= (= lt!2731270 lt!2731197) (= lambda!474704 lambda!474664))))

(assert (=> bs!1973286 (= (= lt!2731270 lt!2731197) (= lambda!474704 lambda!474663))))

(assert (=> b!8057654 (= (= lt!2731270 lt!2731198) (= lambda!474704 lambda!474703))))

(assert (=> bs!1973287 (= (= lt!2731270 lt!2731198) (= lambda!474704 lambda!474702))))

(assert (=> b!8057654 true))

(declare-fun bs!1973288 () Bool)

(declare-fun d!2398927 () Bool)

(assert (= bs!1973288 (and d!2398927 b!8057654)))

(declare-fun lt!2731252 () ListMap!7361)

(declare-fun lambda!474705 () Int)

(assert (=> bs!1973288 (= (= lt!2731252 lt!2731270) (= lambda!474705 lambda!474704))))

(declare-fun bs!1973289 () Bool)

(assert (= bs!1973289 (and d!2398927 b!8057595)))

(assert (=> bs!1973289 (= (= lt!2731252 acc!836) (= lambda!474705 lambda!474662))))

(assert (=> bs!1973289 (= (= lt!2731252 lt!2731197) (= lambda!474705 lambda!474664))))

(declare-fun bs!1973290 () Bool)

(assert (= bs!1973290 (and d!2398927 b!8057594)))

(assert (=> bs!1973290 (= (= lt!2731252 lt!2731197) (= lambda!474705 lambda!474663))))

(assert (=> bs!1973288 (= (= lt!2731252 lt!2731198) (= lambda!474705 lambda!474703))))

(declare-fun bs!1973291 () Bool)

(assert (= bs!1973291 (and d!2398927 b!8057655)))

(assert (=> bs!1973291 (= (= lt!2731252 lt!2731198) (= lambda!474705 lambda!474702))))

(assert (=> d!2398927 true))

(declare-fun b!8057652 () Bool)

(declare-fun res!3187462 () Bool)

(declare-fun e!4748457 () Bool)

(assert (=> b!8057652 (=> (not res!3187462) (not e!4748457))))

(assert (=> b!8057652 (= res!3187462 (forall!18535 (toList!11955 lt!2731198) lambda!474705))))

(declare-fun b!8057653 () Bool)

(assert (=> b!8057653 (= e!4748457 (invariantList!1959 (toList!11955 lt!2731252)))))

(declare-fun bm!747573 () Bool)

(declare-fun call!747578 () Unit!172602)

(assert (=> bm!747573 (= call!747578 (lemmaContainsAllItsOwnKeys!1116 lt!2731198))))

(declare-fun e!4748456 () ListMap!7361)

(assert (=> b!8057654 (= e!4748456 lt!2731270)))

(declare-fun lt!2731265 () ListMap!7361)

(assert (=> b!8057654 (= lt!2731265 (+!2702 lt!2731198 (h!82065 (t!391515 l!10976))))))

(assert (=> b!8057654 (= lt!2731270 (addToMapMapFromBucket!2016 (t!391515 (t!391515 l!10976)) (+!2702 lt!2731198 (h!82065 (t!391515 l!10976)))))))

(declare-fun lt!2731251 () Unit!172602)

(assert (=> b!8057654 (= lt!2731251 call!747578)))

(declare-fun call!747579 () Bool)

(assert (=> b!8057654 call!747579))

(declare-fun lt!2731263 () Unit!172602)

(assert (=> b!8057654 (= lt!2731263 lt!2731251)))

(assert (=> b!8057654 (forall!18535 (toList!11955 lt!2731265) lambda!474704)))

(declare-fun lt!2731264 () Unit!172602)

(declare-fun Unit!172606 () Unit!172602)

(assert (=> b!8057654 (= lt!2731264 Unit!172606)))

(declare-fun call!747580 () Bool)

(assert (=> b!8057654 call!747580))

(declare-fun lt!2731253 () Unit!172602)

(declare-fun Unit!172607 () Unit!172602)

(assert (=> b!8057654 (= lt!2731253 Unit!172607)))

(declare-fun lt!2731256 () Unit!172602)

(declare-fun Unit!172608 () Unit!172602)

(assert (=> b!8057654 (= lt!2731256 Unit!172608)))

(declare-fun lt!2731271 () Unit!172602)

(declare-fun forallContained!4683 (List!75743 Int tuple2!70990) Unit!172602)

(assert (=> b!8057654 (= lt!2731271 (forallContained!4683 (toList!11955 lt!2731265) lambda!474704 (h!82065 (t!391515 l!10976))))))

(declare-fun contains!21289 (ListMap!7361 K!22941) Bool)

(assert (=> b!8057654 (contains!21289 lt!2731265 (_1!38798 (h!82065 (t!391515 l!10976))))))

(declare-fun lt!2731268 () Unit!172602)

(declare-fun Unit!172609 () Unit!172602)

(assert (=> b!8057654 (= lt!2731268 Unit!172609)))

(assert (=> b!8057654 (contains!21289 lt!2731270 (_1!38798 (h!82065 (t!391515 l!10976))))))

(declare-fun lt!2731254 () Unit!172602)

(declare-fun Unit!172610 () Unit!172602)

(assert (=> b!8057654 (= lt!2731254 Unit!172610)))

(assert (=> b!8057654 (forall!18535 (t!391515 l!10976) lambda!474704)))

(declare-fun lt!2731255 () Unit!172602)

(declare-fun Unit!172611 () Unit!172602)

(assert (=> b!8057654 (= lt!2731255 Unit!172611)))

(assert (=> b!8057654 (forall!18535 (toList!11955 lt!2731265) lambda!474704)))

(declare-fun lt!2731257 () Unit!172602)

(declare-fun Unit!172612 () Unit!172602)

(assert (=> b!8057654 (= lt!2731257 Unit!172612)))

(declare-fun lt!2731269 () Unit!172602)

(declare-fun Unit!172613 () Unit!172602)

(assert (=> b!8057654 (= lt!2731269 Unit!172613)))

(declare-fun lt!2731260 () Unit!172602)

(declare-fun addForallContainsKeyThenBeforeAdding!1106 (ListMap!7361 ListMap!7361 K!22941 V!23195) Unit!172602)

(assert (=> b!8057654 (= lt!2731260 (addForallContainsKeyThenBeforeAdding!1106 lt!2731198 lt!2731270 (_1!38798 (h!82065 (t!391515 l!10976))) (_2!38798 (h!82065 (t!391515 l!10976)))))))

(assert (=> b!8057654 (forall!18535 (toList!11955 lt!2731198) lambda!474704)))

(declare-fun lt!2731266 () Unit!172602)

(assert (=> b!8057654 (= lt!2731266 lt!2731260)))

(assert (=> b!8057654 (forall!18535 (toList!11955 lt!2731198) lambda!474704)))

(declare-fun lt!2731267 () Unit!172602)

(declare-fun Unit!172614 () Unit!172602)

(assert (=> b!8057654 (= lt!2731267 Unit!172614)))

(declare-fun res!3187464 () Bool)

(assert (=> b!8057654 (= res!3187464 (forall!18535 (t!391515 l!10976) lambda!474704))))

(declare-fun e!4748455 () Bool)

(assert (=> b!8057654 (=> (not res!3187464) (not e!4748455))))

(assert (=> b!8057654 e!4748455))

(declare-fun lt!2731258 () Unit!172602)

(declare-fun Unit!172615 () Unit!172602)

(assert (=> b!8057654 (= lt!2731258 Unit!172615)))

(declare-fun c!1476692 () Bool)

(declare-fun bm!747574 () Bool)

(assert (=> bm!747574 (= call!747579 (forall!18535 (toList!11955 lt!2731198) (ite c!1476692 lambda!474702 lambda!474703)))))

(assert (=> d!2398927 e!4748457))

(declare-fun res!3187463 () Bool)

(assert (=> d!2398927 (=> (not res!3187463) (not e!4748457))))

(assert (=> d!2398927 (= res!3187463 (forall!18535 (t!391515 l!10976) lambda!474705))))

(assert (=> d!2398927 (= lt!2731252 e!4748456)))

(assert (=> d!2398927 (= c!1476692 (is-Nil!75617 (t!391515 l!10976)))))

(assert (=> d!2398927 (noDuplicateKeys!2741 (t!391515 l!10976))))

(assert (=> d!2398927 (= (addToMapMapFromBucket!2016 (t!391515 l!10976) lt!2731198) lt!2731252)))

(assert (=> b!8057655 (= e!4748456 lt!2731198)))

(declare-fun lt!2731262 () Unit!172602)

(assert (=> b!8057655 (= lt!2731262 call!747578)))

(assert (=> b!8057655 call!747579))

(declare-fun lt!2731261 () Unit!172602)

(assert (=> b!8057655 (= lt!2731261 lt!2731262)))

(assert (=> b!8057655 call!747580))

(declare-fun lt!2731259 () Unit!172602)

(declare-fun Unit!172616 () Unit!172602)

(assert (=> b!8057655 (= lt!2731259 Unit!172616)))

(declare-fun bm!747575 () Bool)

(assert (=> bm!747575 (= call!747580 (forall!18535 (ite c!1476692 (toList!11955 lt!2731198) (t!391515 (t!391515 l!10976))) (ite c!1476692 lambda!474702 lambda!474704)))))

(declare-fun b!8057656 () Bool)

(assert (=> b!8057656 (= e!4748455 (forall!18535 (toList!11955 lt!2731198) lambda!474704))))

(assert (= (and d!2398927 c!1476692) b!8057655))

(assert (= (and d!2398927 (not c!1476692)) b!8057654))

(assert (= (and b!8057654 res!3187464) b!8057656))

(assert (= (or b!8057655 b!8057654) bm!747575))

(assert (= (or b!8057655 b!8057654) bm!747574))

(assert (= (or b!8057655 b!8057654) bm!747573))

(assert (= (and d!2398927 res!3187463) b!8057652))

(assert (= (and b!8057652 res!3187462) b!8057653))

(declare-fun m!8410732 () Bool)

(assert (=> b!8057652 m!8410732))

(declare-fun m!8410734 () Bool)

(assert (=> b!8057653 m!8410734))

(declare-fun m!8410736 () Bool)

(assert (=> b!8057656 m!8410736))

(declare-fun m!8410738 () Bool)

(assert (=> bm!747573 m!8410738))

(declare-fun m!8410740 () Bool)

(assert (=> d!2398927 m!8410740))

(assert (=> d!2398927 m!8410718))

(declare-fun m!8410742 () Bool)

(assert (=> bm!747574 m!8410742))

(declare-fun m!8410744 () Bool)

(assert (=> b!8057654 m!8410744))

(declare-fun m!8410746 () Bool)

(assert (=> b!8057654 m!8410746))

(declare-fun m!8410748 () Bool)

(assert (=> b!8057654 m!8410748))

(declare-fun m!8410750 () Bool)

(assert (=> b!8057654 m!8410750))

(assert (=> b!8057654 m!8410750))

(assert (=> b!8057654 m!8410736))

(declare-fun m!8410752 () Bool)

(assert (=> b!8057654 m!8410752))

(declare-fun m!8410754 () Bool)

(assert (=> b!8057654 m!8410754))

(declare-fun m!8410756 () Bool)

(assert (=> b!8057654 m!8410756))

(assert (=> b!8057654 m!8410746))

(assert (=> b!8057654 m!8410736))

(assert (=> b!8057654 m!8410748))

(declare-fun m!8410758 () Bool)

(assert (=> b!8057654 m!8410758))

(declare-fun m!8410760 () Bool)

(assert (=> bm!747575 m!8410760))

(assert (=> b!8057595 d!2398927))

(declare-fun d!2398937 () Bool)

(declare-fun res!3187465 () Bool)

(declare-fun e!4748458 () Bool)

(assert (=> d!2398937 (=> res!3187465 e!4748458)))

(assert (=> d!2398937 (= res!3187465 (is-Nil!75617 (toList!11955 acc!836)))))

(assert (=> d!2398937 (= (forall!18535 (toList!11955 acc!836) lambda!474662) e!4748458)))

(declare-fun b!8057657 () Bool)

(declare-fun e!4748459 () Bool)

(assert (=> b!8057657 (= e!4748458 e!4748459)))

(declare-fun res!3187466 () Bool)

(assert (=> b!8057657 (=> (not res!3187466) (not e!4748459))))

(assert (=> b!8057657 (= res!3187466 (dynLambda!30275 lambda!474662 (h!82065 (toList!11955 acc!836))))))

(declare-fun b!8057658 () Bool)

(assert (=> b!8057658 (= e!4748459 (forall!18535 (t!391515 (toList!11955 acc!836)) lambda!474662))))

(assert (= (and d!2398937 (not res!3187465)) b!8057657))

(assert (= (and b!8057657 res!3187466) b!8057658))

(declare-fun b_lambda!290559 () Bool)

(assert (=> (not b_lambda!290559) (not b!8057657)))

(declare-fun m!8410762 () Bool)

(assert (=> b!8057657 m!8410762))

(declare-fun m!8410764 () Bool)

(assert (=> b!8057658 m!8410764))

(assert (=> b!8057595 d!2398937))

(declare-fun d!2398939 () Bool)

(declare-fun e!4748462 () Bool)

(assert (=> d!2398939 e!4748462))

(declare-fun res!3187471 () Bool)

(assert (=> d!2398939 (=> (not res!3187471) (not e!4748462))))

(declare-fun lt!2731280 () ListMap!7361)

(assert (=> d!2398939 (= res!3187471 (contains!21289 lt!2731280 (_1!38798 (h!82065 l!10976))))))

(declare-fun lt!2731282 () List!75743)

(assert (=> d!2398939 (= lt!2731280 (ListMap!7362 lt!2731282))))

(declare-fun lt!2731283 () Unit!172602)

(declare-fun lt!2731281 () Unit!172602)

(assert (=> d!2398939 (= lt!2731283 lt!2731281)))

(declare-datatypes ((Option!18022 0))(
  ( (None!18021) (Some!18021 (v!55378 V!23195)) )
))
(declare-fun getValueByKey!2806 (List!75743 K!22941) Option!18022)

(assert (=> d!2398939 (= (getValueByKey!2806 lt!2731282 (_1!38798 (h!82065 l!10976))) (Some!18021 (_2!38798 (h!82065 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1299 (List!75743 K!22941 V!23195) Unit!172602)

(assert (=> d!2398939 (= lt!2731281 (lemmaContainsTupThenGetReturnValue!1299 lt!2731282 (_1!38798 (h!82065 l!10976)) (_2!38798 (h!82065 l!10976))))))

(declare-fun insertNoDuplicatedKeys!807 (List!75743 K!22941 V!23195) List!75743)

(assert (=> d!2398939 (= lt!2731282 (insertNoDuplicatedKeys!807 (toList!11955 acc!836) (_1!38798 (h!82065 l!10976)) (_2!38798 (h!82065 l!10976))))))

(assert (=> d!2398939 (= (+!2702 acc!836 (h!82065 l!10976)) lt!2731280)))

(declare-fun b!8057663 () Bool)

(declare-fun res!3187472 () Bool)

(assert (=> b!8057663 (=> (not res!3187472) (not e!4748462))))

(assert (=> b!8057663 (= res!3187472 (= (getValueByKey!2806 (toList!11955 lt!2731280) (_1!38798 (h!82065 l!10976))) (Some!18021 (_2!38798 (h!82065 l!10976)))))))

(declare-fun b!8057664 () Bool)

(declare-fun contains!21290 (List!75743 tuple2!70990) Bool)

(assert (=> b!8057664 (= e!4748462 (contains!21290 (toList!11955 lt!2731280) (h!82065 l!10976)))))

(assert (= (and d!2398939 res!3187471) b!8057663))

(assert (= (and b!8057663 res!3187472) b!8057664))

(declare-fun m!8410766 () Bool)

(assert (=> d!2398939 m!8410766))

(declare-fun m!8410768 () Bool)

(assert (=> d!2398939 m!8410768))

(declare-fun m!8410770 () Bool)

(assert (=> d!2398939 m!8410770))

(declare-fun m!8410772 () Bool)

(assert (=> d!2398939 m!8410772))

(declare-fun m!8410774 () Bool)

(assert (=> b!8057663 m!8410774))

(declare-fun m!8410776 () Bool)

(assert (=> b!8057664 m!8410776))

(assert (=> b!8057595 d!2398939))

(declare-fun d!2398941 () Bool)

(declare-fun res!3187473 () Bool)

(declare-fun e!4748463 () Bool)

(assert (=> d!2398941 (=> res!3187473 e!4748463)))

(assert (=> d!2398941 (= res!3187473 (is-Nil!75617 (t!391515 l!10976)))))

(assert (=> d!2398941 (= (forall!18535 (t!391515 l!10976) lambda!474664) e!4748463)))

(declare-fun b!8057665 () Bool)

(declare-fun e!4748464 () Bool)

(assert (=> b!8057665 (= e!4748463 e!4748464)))

(declare-fun res!3187474 () Bool)

(assert (=> b!8057665 (=> (not res!3187474) (not e!4748464))))

(assert (=> b!8057665 (= res!3187474 (dynLambda!30275 lambda!474664 (h!82065 (t!391515 l!10976))))))

(declare-fun b!8057666 () Bool)

(assert (=> b!8057666 (= e!4748464 (forall!18535 (t!391515 (t!391515 l!10976)) lambda!474664))))

(assert (= (and d!2398941 (not res!3187473)) b!8057665))

(assert (= (and b!8057665 res!3187474) b!8057666))

(declare-fun b_lambda!290561 () Bool)

(assert (=> (not b_lambda!290561) (not b!8057665)))

(declare-fun m!8410778 () Bool)

(assert (=> b!8057665 m!8410778))

(declare-fun m!8410780 () Bool)

(assert (=> b!8057666 m!8410780))

(assert (=> b!8057595 d!2398941))

(declare-fun bs!1973292 () Bool)

(declare-fun d!2398943 () Bool)

(assert (= bs!1973292 (and d!2398943 d!2398927)))

(declare-fun lambda!474708 () Int)

(assert (=> bs!1973292 (= (= acc!836 lt!2731252) (= lambda!474708 lambda!474705))))

(declare-fun bs!1973293 () Bool)

(assert (= bs!1973293 (and d!2398943 b!8057654)))

(assert (=> bs!1973293 (= (= acc!836 lt!2731270) (= lambda!474708 lambda!474704))))

(declare-fun bs!1973294 () Bool)

(assert (= bs!1973294 (and d!2398943 b!8057595)))

(assert (=> bs!1973294 (= lambda!474708 lambda!474662)))

(assert (=> bs!1973294 (= (= acc!836 lt!2731197) (= lambda!474708 lambda!474664))))

(declare-fun bs!1973295 () Bool)

(assert (= bs!1973295 (and d!2398943 b!8057594)))

(assert (=> bs!1973295 (= (= acc!836 lt!2731197) (= lambda!474708 lambda!474663))))

(assert (=> bs!1973293 (= (= acc!836 lt!2731198) (= lambda!474708 lambda!474703))))

(declare-fun bs!1973296 () Bool)

(assert (= bs!1973296 (and d!2398943 b!8057655)))

(assert (=> bs!1973296 (= (= acc!836 lt!2731198) (= lambda!474708 lambda!474702))))

(assert (=> d!2398943 true))

(assert (=> d!2398943 (forall!18535 (toList!11955 acc!836) lambda!474708)))

(declare-fun lt!2731286 () Unit!172602)

(declare-fun choose!60568 (ListMap!7361) Unit!172602)

(assert (=> d!2398943 (= lt!2731286 (choose!60568 acc!836))))

(assert (=> d!2398943 (= (lemmaContainsAllItsOwnKeys!1116 acc!836) lt!2731286)))

(declare-fun bs!1973297 () Bool)

(assert (= bs!1973297 d!2398943))

(declare-fun m!8410782 () Bool)

(assert (=> bs!1973297 m!8410782))

(declare-fun m!8410784 () Bool)

(assert (=> bs!1973297 m!8410784))

(assert (=> b!8057595 d!2398943))

(declare-fun e!4748467 () Bool)

(declare-fun b!8057671 () Bool)

(declare-fun tp!2414160 () Bool)

(assert (=> b!8057671 (= e!4748467 (and tp_is_empty!55103 tp_is_empty!55105 tp!2414160))))

(assert (=> b!8057598 (= tp!2414150 e!4748467)))

(assert (= (and b!8057598 (is-Cons!75617 (t!391515 l!10976))) b!8057671))

(declare-fun b!8057672 () Bool)

(declare-fun tp!2414161 () Bool)

(declare-fun e!4748468 () Bool)

(assert (=> b!8057672 (= e!4748468 (and tp_is_empty!55103 tp_is_empty!55105 tp!2414161))))

(assert (=> b!8057596 (= tp!2414151 e!4748468)))

(assert (= (and b!8057596 (is-Cons!75617 (toList!11955 acc!836))) b!8057672))

(declare-fun b_lambda!290563 () Bool)

(assert (= b_lambda!290561 (or b!8057595 b_lambda!290563)))

(declare-fun bs!1973298 () Bool)

(declare-fun d!2398945 () Bool)

(assert (= bs!1973298 (and d!2398945 b!8057595)))

(assert (=> bs!1973298 (= (dynLambda!30275 lambda!474664 (h!82065 (t!391515 l!10976))) (contains!21289 lt!2731197 (_1!38798 (h!82065 (t!391515 l!10976)))))))

(declare-fun m!8410786 () Bool)

(assert (=> bs!1973298 m!8410786))

(assert (=> b!8057665 d!2398945))

(declare-fun b_lambda!290565 () Bool)

(assert (= b_lambda!290555 (or b!8057594 b_lambda!290565)))

(declare-fun bs!1973299 () Bool)

(declare-fun d!2398947 () Bool)

(assert (= bs!1973299 (and d!2398947 b!8057594)))

(assert (=> bs!1973299 (= (dynLambda!30275 lambda!474663 (h!82065 (toList!11955 lt!2731198))) (contains!21289 lt!2731197 (_1!38798 (h!82065 (toList!11955 lt!2731198)))))))

(declare-fun m!8410788 () Bool)

(assert (=> bs!1973299 m!8410788))

(assert (=> b!8057622 d!2398947))

(declare-fun b_lambda!290567 () Bool)

(assert (= b_lambda!290559 (or b!8057595 b_lambda!290567)))

(declare-fun bs!1973300 () Bool)

(declare-fun d!2398949 () Bool)

(assert (= bs!1973300 (and d!2398949 b!8057595)))

(assert (=> bs!1973300 (= (dynLambda!30275 lambda!474662 (h!82065 (toList!11955 acc!836))) (contains!21289 acc!836 (_1!38798 (h!82065 (toList!11955 acc!836)))))))

(declare-fun m!8410790 () Bool)

(assert (=> bs!1973300 m!8410790))

(assert (=> b!8057657 d!2398949))

(push 1)

(assert (not b!8057664))

(assert (not b!8057672))

(assert (not bs!1973300))

(assert (not b_lambda!290567))

(assert (not d!2398927))

(assert (not d!2398939))

(assert (not b!8057666))

(assert (not bs!1973298))

(assert (not b!8057653))

(assert (not b!8057629))

(assert (not b!8057671))

(assert (not bm!747575))

(assert (not b!8057628))

(assert (not b!8057623))

(assert (not b!8057654))

(assert (not bm!747573))

(assert (not b_lambda!290565))

(assert (not b!8057658))

(assert (not b!8057663))

(assert (not d!2398925))

(assert (not b!8057652))

(assert (not d!2398943))

(assert tp_is_empty!55103)

(assert (not bm!747574))

(assert (not b!8057656))

(assert tp_is_empty!55105)

(assert (not b_lambda!290563))

(assert (not bs!1973299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

