; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2148 () Bool)

(assert start!2148)

(declare-fun b!14467 () Bool)

(assert (=> b!14467 true))

(declare-fun b!14466 () Bool)

(declare-fun e!8664 () Bool)

(declare-fun e!8666 () Bool)

(assert (=> b!14466 (= e!8664 e!8666)))

(declare-fun res!11175 () Bool)

(declare-fun call!422 () Bool)

(assert (=> b!14466 (= res!11175 (not call!422))))

(assert (=> b!14466 (=> (not res!11175) (not e!8666))))

(declare-fun res!11179 () Bool)

(declare-fun e!8667 () Bool)

(assert (=> b!14467 (=> res!11179 e!8667)))

(declare-datatypes ((B!550 0))(
  ( (B!551 (val!373 Int)) )
))
(declare-datatypes ((tuple2!528 0))(
  ( (tuple2!529 (_1!264 (_ BitVec 64)) (_2!264 B!550)) )
))
(declare-datatypes ((List!423 0))(
  ( (Nil!420) (Cons!419 (h!985 tuple2!528) (t!2822 List!423)) )
))
(declare-fun lt!3612 () List!423)

(declare-fun lambda!158 () Int)

(declare-fun forall!96 (List!423 Int) Bool)

(assert (=> b!14467 (= res!11179 (not (forall!96 lt!3612 lambda!158)))))

(declare-fun b!14468 () Bool)

(assert (=> b!14468 (= e!8664 (not call!422))))

(declare-fun res!11176 () Bool)

(declare-fun e!8665 () Bool)

(assert (=> start!2148 (=> (not res!11176) (not e!8665))))

(declare-fun l!522 () List!423)

(declare-fun isStrictlySorted!114 (List!423) Bool)

(assert (=> start!2148 (= res!11176 (isStrictlySorted!114 l!522))))

(assert (=> start!2148 e!8665))

(declare-fun e!8668 () Bool)

(assert (=> start!2148 e!8668))

(declare-fun tp_is_empty!729 () Bool)

(assert (=> start!2148 tp_is_empty!729))

(declare-fun b!14469 () Bool)

(assert (=> b!14469 (= e!8665 e!8667)))

(declare-fun res!11178 () Bool)

(assert (=> b!14469 (=> res!11178 e!8667)))

(assert (=> b!14469 (= res!11178 (not (isStrictlySorted!114 lt!3612)))))

(declare-fun value!159 () B!550)

(declare-fun filterByValue!17 (List!423 B!550) List!423)

(assert (=> b!14469 (= lt!3612 (filterByValue!17 (t!2822 l!522) value!159))))

(declare-fun bm!419 () Bool)

(declare-fun isEmpty!103 (List!423) Bool)

(assert (=> bm!419 (= call!422 (isEmpty!103 lt!3612))))

(declare-fun b!14470 () Bool)

(declare-fun head!792 (List!423) tuple2!528)

(assert (=> b!14470 (= e!8666 (bvslt (_1!264 (head!792 lt!3612)) (_1!264 (head!792 l!522))))))

(declare-fun b!14471 () Bool)

(assert (=> b!14471 (= e!8667 e!8664)))

(declare-fun c!1352 () Bool)

(assert (=> b!14471 (= c!1352 (isEmpty!103 l!522))))

(declare-fun b!14472 () Bool)

(declare-fun tp!2345 () Bool)

(assert (=> b!14472 (= e!8668 (and tp_is_empty!729 tp!2345))))

(declare-fun b!14473 () Bool)

(declare-fun res!11177 () Bool)

(assert (=> b!14473 (=> (not res!11177) (not e!8665))))

(get-info :version)

(assert (=> b!14473 (= res!11177 (and (not (= (_2!264 (h!985 l!522)) value!159)) ((_ is Cons!419) l!522)))))

(assert (= (and start!2148 res!11176) b!14473))

(assert (= (and b!14473 res!11177) b!14469))

(assert (= (and b!14469 (not res!11178)) b!14467))

(assert (= (and b!14467 (not res!11179)) b!14471))

(assert (= (and b!14471 c!1352) b!14468))

(assert (= (and b!14471 (not c!1352)) b!14466))

(assert (= (and b!14466 res!11175) b!14470))

(assert (= (or b!14468 b!14466) bm!419))

(assert (= (and start!2148 ((_ is Cons!419) l!522)) b!14472))

(declare-fun m!9647 () Bool)

(assert (=> b!14469 m!9647))

(declare-fun m!9649 () Bool)

(assert (=> b!14469 m!9649))

(declare-fun m!9651 () Bool)

(assert (=> b!14471 m!9651))

(declare-fun m!9653 () Bool)

(assert (=> b!14470 m!9653))

(declare-fun m!9655 () Bool)

(assert (=> b!14470 m!9655))

(declare-fun m!9657 () Bool)

(assert (=> bm!419 m!9657))

(declare-fun m!9659 () Bool)

(assert (=> b!14467 m!9659))

(declare-fun m!9661 () Bool)

(assert (=> start!2148 m!9661))

(check-sat tp_is_empty!729 (not start!2148) (not bm!419) (not b!14471) (not b!14467) (not b!14469) (not b!14470) (not b!14472))
(check-sat)
(get-model)

(declare-fun d!2257 () Bool)

(declare-fun res!11201 () Bool)

(declare-fun e!8690 () Bool)

(assert (=> d!2257 (=> res!11201 e!8690)))

(assert (=> d!2257 (= res!11201 (or ((_ is Nil!420) l!522) ((_ is Nil!420) (t!2822 l!522))))))

(assert (=> d!2257 (= (isStrictlySorted!114 l!522) e!8690)))

(declare-fun b!14508 () Bool)

(declare-fun e!8692 () Bool)

(assert (=> b!14508 (= e!8690 e!8692)))

(declare-fun res!11202 () Bool)

(assert (=> b!14508 (=> (not res!11202) (not e!8692))))

(assert (=> b!14508 (= res!11202 (bvslt (_1!264 (h!985 l!522)) (_1!264 (h!985 (t!2822 l!522)))))))

(declare-fun b!14509 () Bool)

(assert (=> b!14509 (= e!8692 (isStrictlySorted!114 (t!2822 l!522)))))

(assert (= (and d!2257 (not res!11201)) b!14508))

(assert (= (and b!14508 res!11202) b!14509))

(declare-fun m!9679 () Bool)

(assert (=> b!14509 m!9679))

(assert (=> start!2148 d!2257))

(declare-fun d!2261 () Bool)

(assert (=> d!2261 (= (isEmpty!103 l!522) ((_ is Nil!420) l!522))))

(assert (=> b!14471 d!2261))

(declare-fun d!2263 () Bool)

(declare-fun res!11215 () Bool)

(declare-fun e!8704 () Bool)

(assert (=> d!2263 (=> res!11215 e!8704)))

(assert (=> d!2263 (= res!11215 ((_ is Nil!420) lt!3612))))

(assert (=> d!2263 (= (forall!96 lt!3612 lambda!158) e!8704)))

(declare-fun b!14522 () Bool)

(declare-fun e!8705 () Bool)

(assert (=> b!14522 (= e!8704 e!8705)))

(declare-fun res!11216 () Bool)

(assert (=> b!14522 (=> (not res!11216) (not e!8705))))

(declare-fun dynLambda!92 (Int tuple2!528) Bool)

(assert (=> b!14522 (= res!11216 (dynLambda!92 lambda!158 (h!985 lt!3612)))))

(declare-fun b!14523 () Bool)

(assert (=> b!14523 (= e!8705 (forall!96 (t!2822 lt!3612) lambda!158))))

(assert (= (and d!2263 (not res!11215)) b!14522))

(assert (= (and b!14522 res!11216) b!14523))

(declare-fun b_lambda!925 () Bool)

(assert (=> (not b_lambda!925) (not b!14522)))

(declare-fun m!9685 () Bool)

(assert (=> b!14522 m!9685))

(declare-fun m!9687 () Bool)

(assert (=> b!14523 m!9687))

(assert (=> b!14467 d!2263))

(declare-fun d!2275 () Bool)

(assert (=> d!2275 (= (head!792 lt!3612) (h!985 lt!3612))))

(assert (=> b!14470 d!2275))

(declare-fun d!2281 () Bool)

(assert (=> d!2281 (= (head!792 l!522) (h!985 l!522))))

(assert (=> b!14470 d!2281))

(declare-fun d!2283 () Bool)

(declare-fun res!11221 () Bool)

(declare-fun e!8710 () Bool)

(assert (=> d!2283 (=> res!11221 e!8710)))

(assert (=> d!2283 (= res!11221 (or ((_ is Nil!420) lt!3612) ((_ is Nil!420) (t!2822 lt!3612))))))

(assert (=> d!2283 (= (isStrictlySorted!114 lt!3612) e!8710)))

(declare-fun b!14528 () Bool)

(declare-fun e!8711 () Bool)

(assert (=> b!14528 (= e!8710 e!8711)))

(declare-fun res!11222 () Bool)

(assert (=> b!14528 (=> (not res!11222) (not e!8711))))

(assert (=> b!14528 (= res!11222 (bvslt (_1!264 (h!985 lt!3612)) (_1!264 (h!985 (t!2822 lt!3612)))))))

(declare-fun b!14529 () Bool)

(assert (=> b!14529 (= e!8711 (isStrictlySorted!114 (t!2822 lt!3612)))))

(assert (= (and d!2283 (not res!11221)) b!14528))

(assert (= (and b!14528 res!11222) b!14529))

(declare-fun m!9693 () Bool)

(assert (=> b!14529 m!9693))

(assert (=> b!14469 d!2283))

(declare-fun bs!579 () Bool)

(declare-fun b!14603 () Bool)

(assert (= bs!579 (and b!14603 b!14467)))

(declare-fun lambda!169 () Int)

(assert (=> bs!579 (= lambda!169 lambda!158)))

(assert (=> b!14603 true))

(declare-fun b!14601 () Bool)

(declare-fun e!8759 () List!423)

(declare-fun call!440 () List!423)

(assert (=> b!14601 (= e!8759 call!440)))

(declare-fun b!14602 () Bool)

(declare-fun e!8757 () List!423)

(assert (=> b!14602 (= e!8757 e!8759)))

(declare-fun c!1379 () Bool)

(assert (=> b!14602 (= c!1379 (and ((_ is Cons!419) (t!2822 l!522)) (not (= (_2!264 (h!985 (t!2822 l!522))) value!159))))))

(declare-fun res!11254 () Bool)

(declare-fun e!8756 () Bool)

(assert (=> b!14603 (=> (not res!11254) (not e!8756))))

(declare-fun lt!3623 () List!423)

(assert (=> b!14603 (= res!11254 (forall!96 lt!3623 lambda!169))))

(declare-fun b!14604 () Bool)

(declare-fun e!8758 () Bool)

(assert (=> b!14604 (= e!8758 (bvsge (_1!264 (head!792 lt!3623)) (_1!264 (head!792 (t!2822 l!522)))))))

(declare-fun d!2285 () Bool)

(assert (=> d!2285 e!8756))

(declare-fun res!11252 () Bool)

(assert (=> d!2285 (=> (not res!11252) (not e!8756))))

(assert (=> d!2285 (= res!11252 (isStrictlySorted!114 lt!3623))))

(assert (=> d!2285 (= lt!3623 e!8757)))

(declare-fun c!1378 () Bool)

(assert (=> d!2285 (= c!1378 (and ((_ is Cons!419) (t!2822 l!522)) (= (_2!264 (h!985 (t!2822 l!522))) value!159)))))

(assert (=> d!2285 (isStrictlySorted!114 (t!2822 l!522))))

(assert (=> d!2285 (= (filterByValue!17 (t!2822 l!522) value!159) lt!3623)))

(declare-fun bm!437 () Bool)

(assert (=> bm!437 (= call!440 (filterByValue!17 (t!2822 (t!2822 l!522)) value!159))))

(declare-fun bm!438 () Bool)

(declare-fun call!441 () Bool)

(assert (=> bm!438 (= call!441 (isEmpty!103 lt!3623))))

(declare-fun b!14605 () Bool)

(declare-fun e!8755 () Bool)

(assert (=> b!14605 (= e!8756 e!8755)))

(declare-fun c!1377 () Bool)

(assert (=> b!14605 (= c!1377 (isEmpty!103 (t!2822 l!522)))))

(declare-fun b!14606 () Bool)

(assert (=> b!14606 (= e!8759 Nil!420)))

(declare-fun b!14607 () Bool)

(assert (=> b!14607 (= e!8755 e!8758)))

(declare-fun res!11253 () Bool)

(assert (=> b!14607 (= res!11253 call!441)))

(assert (=> b!14607 (=> res!11253 e!8758)))

(declare-fun b!14608 () Bool)

(declare-fun $colon$colon!22 (List!423 tuple2!528) List!423)

(assert (=> b!14608 (= e!8757 ($colon$colon!22 call!440 (h!985 (t!2822 l!522))))))

(declare-fun b!14609 () Bool)

(assert (=> b!14609 (= e!8755 call!441)))

(assert (= (and d!2285 c!1378) b!14608))

(assert (= (and d!2285 (not c!1378)) b!14602))

(assert (= (and b!14602 c!1379) b!14601))

(assert (= (and b!14602 (not c!1379)) b!14606))

(assert (= (or b!14608 b!14601) bm!437))

(assert (= (and d!2285 res!11252) b!14603))

(assert (= (and b!14603 res!11254) b!14605))

(assert (= (and b!14605 c!1377) b!14609))

(assert (= (and b!14605 (not c!1377)) b!14607))

(assert (= (and b!14607 (not res!11253)) b!14604))

(assert (= (or b!14609 b!14607) bm!438))

(declare-fun m!9715 () Bool)

(assert (=> b!14605 m!9715))

(declare-fun m!9717 () Bool)

(assert (=> d!2285 m!9717))

(assert (=> d!2285 m!9679))

(declare-fun m!9719 () Bool)

(assert (=> bm!437 m!9719))

(declare-fun m!9721 () Bool)

(assert (=> b!14603 m!9721))

(declare-fun m!9723 () Bool)

(assert (=> bm!438 m!9723))

(declare-fun m!9725 () Bool)

(assert (=> b!14608 m!9725))

(declare-fun m!9727 () Bool)

(assert (=> b!14604 m!9727))

(declare-fun m!9729 () Bool)

(assert (=> b!14604 m!9729))

(assert (=> b!14469 d!2285))

(declare-fun d!2297 () Bool)

(assert (=> d!2297 (= (isEmpty!103 lt!3612) ((_ is Nil!420) lt!3612))))

(assert (=> bm!419 d!2297))

(declare-fun b!14627 () Bool)

(declare-fun e!8769 () Bool)

(declare-fun tp!2353 () Bool)

(assert (=> b!14627 (= e!8769 (and tp_is_empty!729 tp!2353))))

(assert (=> b!14472 (= tp!2345 e!8769)))

(assert (= (and b!14472 ((_ is Cons!419) (t!2822 l!522))) b!14627))

(declare-fun b_lambda!927 () Bool)

(assert (= b_lambda!925 (or b!14467 b_lambda!927)))

(declare-fun bs!581 () Bool)

(declare-fun d!2301 () Bool)

(assert (= bs!581 (and d!2301 b!14467)))

(assert (=> bs!581 (= (dynLambda!92 lambda!158 (h!985 lt!3612)) (= (_2!264 (h!985 lt!3612)) value!159))))

(assert (=> b!14522 d!2301))

(check-sat (not b!14509) tp_is_empty!729 (not b!14627) (not b!14529) (not b!14608) (not b!14603) (not bm!437) (not b_lambda!927) (not d!2285) (not bm!438) (not b!14604) (not b!14523) (not b!14605))
(check-sat)
(get-model)

(declare-fun d!2311 () Bool)

(declare-fun res!11264 () Bool)

(declare-fun e!8780 () Bool)

(assert (=> d!2311 (=> res!11264 e!8780)))

(assert (=> d!2311 (= res!11264 ((_ is Nil!420) (t!2822 lt!3612)))))

(assert (=> d!2311 (= (forall!96 (t!2822 lt!3612) lambda!158) e!8780)))

(declare-fun b!14640 () Bool)

(declare-fun e!8781 () Bool)

(assert (=> b!14640 (= e!8780 e!8781)))

(declare-fun res!11265 () Bool)

(assert (=> b!14640 (=> (not res!11265) (not e!8781))))

(assert (=> b!14640 (= res!11265 (dynLambda!92 lambda!158 (h!985 (t!2822 lt!3612))))))

(declare-fun b!14641 () Bool)

(assert (=> b!14641 (= e!8781 (forall!96 (t!2822 (t!2822 lt!3612)) lambda!158))))

(assert (= (and d!2311 (not res!11264)) b!14640))

(assert (= (and b!14640 res!11265) b!14641))

(declare-fun b_lambda!935 () Bool)

(assert (=> (not b_lambda!935) (not b!14640)))

(declare-fun m!9751 () Bool)

(assert (=> b!14640 m!9751))

(declare-fun m!9753 () Bool)

(assert (=> b!14641 m!9753))

(assert (=> b!14523 d!2311))

(declare-fun d!2313 () Bool)

(assert (=> d!2313 (= (isEmpty!103 (t!2822 l!522)) ((_ is Nil!420) (t!2822 l!522)))))

(assert (=> b!14605 d!2313))

(declare-fun d!2315 () Bool)

(declare-fun res!11266 () Bool)

(declare-fun e!8782 () Bool)

(assert (=> d!2315 (=> res!11266 e!8782)))

(assert (=> d!2315 (= res!11266 ((_ is Nil!420) lt!3623))))

(assert (=> d!2315 (= (forall!96 lt!3623 lambda!169) e!8782)))

(declare-fun b!14642 () Bool)

(declare-fun e!8783 () Bool)

(assert (=> b!14642 (= e!8782 e!8783)))

(declare-fun res!11267 () Bool)

(assert (=> b!14642 (=> (not res!11267) (not e!8783))))

(assert (=> b!14642 (= res!11267 (dynLambda!92 lambda!169 (h!985 lt!3623)))))

(declare-fun b!14643 () Bool)

(assert (=> b!14643 (= e!8783 (forall!96 (t!2822 lt!3623) lambda!169))))

(assert (= (and d!2315 (not res!11266)) b!14642))

(assert (= (and b!14642 res!11267) b!14643))

(declare-fun b_lambda!937 () Bool)

(assert (=> (not b_lambda!937) (not b!14642)))

(declare-fun m!9755 () Bool)

(assert (=> b!14642 m!9755))

(declare-fun m!9757 () Bool)

(assert (=> b!14643 m!9757))

(assert (=> b!14603 d!2315))

(declare-fun d!2317 () Bool)

(declare-fun res!11268 () Bool)

(declare-fun e!8784 () Bool)

(assert (=> d!2317 (=> res!11268 e!8784)))

(assert (=> d!2317 (= res!11268 (or ((_ is Nil!420) lt!3623) ((_ is Nil!420) (t!2822 lt!3623))))))

(assert (=> d!2317 (= (isStrictlySorted!114 lt!3623) e!8784)))

(declare-fun b!14644 () Bool)

(declare-fun e!8785 () Bool)

(assert (=> b!14644 (= e!8784 e!8785)))

(declare-fun res!11269 () Bool)

(assert (=> b!14644 (=> (not res!11269) (not e!8785))))

(assert (=> b!14644 (= res!11269 (bvslt (_1!264 (h!985 lt!3623)) (_1!264 (h!985 (t!2822 lt!3623)))))))

(declare-fun b!14645 () Bool)

(assert (=> b!14645 (= e!8785 (isStrictlySorted!114 (t!2822 lt!3623)))))

(assert (= (and d!2317 (not res!11268)) b!14644))

(assert (= (and b!14644 res!11269) b!14645))

(declare-fun m!9759 () Bool)

(assert (=> b!14645 m!9759))

(assert (=> d!2285 d!2317))

(declare-fun d!2319 () Bool)

(declare-fun res!11270 () Bool)

(declare-fun e!8786 () Bool)

(assert (=> d!2319 (=> res!11270 e!8786)))

(assert (=> d!2319 (= res!11270 (or ((_ is Nil!420) (t!2822 l!522)) ((_ is Nil!420) (t!2822 (t!2822 l!522)))))))

(assert (=> d!2319 (= (isStrictlySorted!114 (t!2822 l!522)) e!8786)))

(declare-fun b!14646 () Bool)

(declare-fun e!8787 () Bool)

(assert (=> b!14646 (= e!8786 e!8787)))

(declare-fun res!11271 () Bool)

(assert (=> b!14646 (=> (not res!11271) (not e!8787))))

(assert (=> b!14646 (= res!11271 (bvslt (_1!264 (h!985 (t!2822 l!522))) (_1!264 (h!985 (t!2822 (t!2822 l!522))))))))

(declare-fun b!14647 () Bool)

(assert (=> b!14647 (= e!8787 (isStrictlySorted!114 (t!2822 (t!2822 l!522))))))

(assert (= (and d!2319 (not res!11270)) b!14646))

(assert (= (and b!14646 res!11271) b!14647))

(declare-fun m!9761 () Bool)

(assert (=> b!14647 m!9761))

(assert (=> d!2285 d!2319))

(declare-fun bs!584 () Bool)

(declare-fun b!14650 () Bool)

(assert (= bs!584 (and b!14650 b!14467)))

(declare-fun lambda!171 () Int)

(assert (=> bs!584 (= lambda!171 lambda!158)))

(declare-fun bs!585 () Bool)

(assert (= bs!585 (and b!14650 b!14603)))

(assert (=> bs!585 (= lambda!171 lambda!169)))

(assert (=> b!14650 true))

(declare-fun b!14648 () Bool)

(declare-fun e!8792 () List!423)

(declare-fun call!444 () List!423)

(assert (=> b!14648 (= e!8792 call!444)))

(declare-fun b!14649 () Bool)

(declare-fun e!8790 () List!423)

(assert (=> b!14649 (= e!8790 e!8792)))

(declare-fun c!1385 () Bool)

(assert (=> b!14649 (= c!1385 (and ((_ is Cons!419) (t!2822 (t!2822 l!522))) (not (= (_2!264 (h!985 (t!2822 (t!2822 l!522)))) value!159))))))

(declare-fun res!11274 () Bool)

(declare-fun e!8789 () Bool)

(assert (=> b!14650 (=> (not res!11274) (not e!8789))))

(declare-fun lt!3625 () List!423)

(assert (=> b!14650 (= res!11274 (forall!96 lt!3625 lambda!171))))

(declare-fun b!14651 () Bool)

(declare-fun e!8791 () Bool)

(assert (=> b!14651 (= e!8791 (bvsge (_1!264 (head!792 lt!3625)) (_1!264 (head!792 (t!2822 (t!2822 l!522))))))))

(declare-fun d!2321 () Bool)

(assert (=> d!2321 e!8789))

(declare-fun res!11272 () Bool)

(assert (=> d!2321 (=> (not res!11272) (not e!8789))))

(assert (=> d!2321 (= res!11272 (isStrictlySorted!114 lt!3625))))

(assert (=> d!2321 (= lt!3625 e!8790)))

(declare-fun c!1384 () Bool)

(assert (=> d!2321 (= c!1384 (and ((_ is Cons!419) (t!2822 (t!2822 l!522))) (= (_2!264 (h!985 (t!2822 (t!2822 l!522)))) value!159)))))

(assert (=> d!2321 (isStrictlySorted!114 (t!2822 (t!2822 l!522)))))

(assert (=> d!2321 (= (filterByValue!17 (t!2822 (t!2822 l!522)) value!159) lt!3625)))

(declare-fun bm!441 () Bool)

(assert (=> bm!441 (= call!444 (filterByValue!17 (t!2822 (t!2822 (t!2822 l!522))) value!159))))

(declare-fun bm!442 () Bool)

(declare-fun call!445 () Bool)

(assert (=> bm!442 (= call!445 (isEmpty!103 lt!3625))))

(declare-fun b!14652 () Bool)

(declare-fun e!8788 () Bool)

(assert (=> b!14652 (= e!8789 e!8788)))

(declare-fun c!1383 () Bool)

(assert (=> b!14652 (= c!1383 (isEmpty!103 (t!2822 (t!2822 l!522))))))

(declare-fun b!14653 () Bool)

(assert (=> b!14653 (= e!8792 Nil!420)))

(declare-fun b!14654 () Bool)

(assert (=> b!14654 (= e!8788 e!8791)))

(declare-fun res!11273 () Bool)

(assert (=> b!14654 (= res!11273 call!445)))

(assert (=> b!14654 (=> res!11273 e!8791)))

(declare-fun b!14655 () Bool)

(assert (=> b!14655 (= e!8790 ($colon$colon!22 call!444 (h!985 (t!2822 (t!2822 l!522)))))))

(declare-fun b!14656 () Bool)

(assert (=> b!14656 (= e!8788 call!445)))

(assert (= (and d!2321 c!1384) b!14655))

(assert (= (and d!2321 (not c!1384)) b!14649))

(assert (= (and b!14649 c!1385) b!14648))

(assert (= (and b!14649 (not c!1385)) b!14653))

(assert (= (or b!14655 b!14648) bm!441))

(assert (= (and d!2321 res!11272) b!14650))

(assert (= (and b!14650 res!11274) b!14652))

(assert (= (and b!14652 c!1383) b!14656))

(assert (= (and b!14652 (not c!1383)) b!14654))

(assert (= (and b!14654 (not res!11273)) b!14651))

(assert (= (or b!14656 b!14654) bm!442))

(declare-fun m!9763 () Bool)

(assert (=> b!14652 m!9763))

(declare-fun m!9765 () Bool)

(assert (=> d!2321 m!9765))

(assert (=> d!2321 m!9761))

(declare-fun m!9767 () Bool)

(assert (=> bm!441 m!9767))

(declare-fun m!9769 () Bool)

(assert (=> b!14650 m!9769))

(declare-fun m!9771 () Bool)

(assert (=> bm!442 m!9771))

(declare-fun m!9773 () Bool)

(assert (=> b!14655 m!9773))

(declare-fun m!9775 () Bool)

(assert (=> b!14651 m!9775))

(declare-fun m!9777 () Bool)

(assert (=> b!14651 m!9777))

(assert (=> bm!437 d!2321))

(declare-fun d!2323 () Bool)

(assert (=> d!2323 (= ($colon$colon!22 call!440 (h!985 (t!2822 l!522))) (Cons!419 (h!985 (t!2822 l!522)) call!440))))

(assert (=> b!14608 d!2323))

(assert (=> b!14509 d!2319))

(declare-fun d!2325 () Bool)

(declare-fun res!11275 () Bool)

(declare-fun e!8793 () Bool)

(assert (=> d!2325 (=> res!11275 e!8793)))

(assert (=> d!2325 (= res!11275 (or ((_ is Nil!420) (t!2822 lt!3612)) ((_ is Nil!420) (t!2822 (t!2822 lt!3612)))))))

(assert (=> d!2325 (= (isStrictlySorted!114 (t!2822 lt!3612)) e!8793)))

(declare-fun b!14657 () Bool)

(declare-fun e!8794 () Bool)

(assert (=> b!14657 (= e!8793 e!8794)))

(declare-fun res!11276 () Bool)

(assert (=> b!14657 (=> (not res!11276) (not e!8794))))

(assert (=> b!14657 (= res!11276 (bvslt (_1!264 (h!985 (t!2822 lt!3612))) (_1!264 (h!985 (t!2822 (t!2822 lt!3612))))))))

(declare-fun b!14658 () Bool)

(assert (=> b!14658 (= e!8794 (isStrictlySorted!114 (t!2822 (t!2822 lt!3612))))))

(assert (= (and d!2325 (not res!11275)) b!14657))

(assert (= (and b!14657 res!11276) b!14658))

(declare-fun m!9779 () Bool)

(assert (=> b!14658 m!9779))

(assert (=> b!14529 d!2325))

(declare-fun d!2327 () Bool)

(assert (=> d!2327 (= (head!792 lt!3623) (h!985 lt!3623))))

(assert (=> b!14604 d!2327))

(declare-fun d!2329 () Bool)

(assert (=> d!2329 (= (head!792 (t!2822 l!522)) (h!985 (t!2822 l!522)))))

(assert (=> b!14604 d!2329))

(declare-fun d!2331 () Bool)

(assert (=> d!2331 (= (isEmpty!103 lt!3623) ((_ is Nil!420) lt!3623))))

(assert (=> bm!438 d!2331))

(declare-fun b!14659 () Bool)

(declare-fun e!8795 () Bool)

(declare-fun tp!2358 () Bool)

(assert (=> b!14659 (= e!8795 (and tp_is_empty!729 tp!2358))))

(assert (=> b!14627 (= tp!2353 e!8795)))

(assert (= (and b!14627 ((_ is Cons!419) (t!2822 (t!2822 l!522)))) b!14659))

(declare-fun b_lambda!939 () Bool)

(assert (= b_lambda!935 (or b!14467 b_lambda!939)))

(declare-fun bs!586 () Bool)

(declare-fun d!2333 () Bool)

(assert (= bs!586 (and d!2333 b!14467)))

(assert (=> bs!586 (= (dynLambda!92 lambda!158 (h!985 (t!2822 lt!3612))) (= (_2!264 (h!985 (t!2822 lt!3612))) value!159))))

(assert (=> b!14640 d!2333))

(declare-fun b_lambda!941 () Bool)

(assert (= b_lambda!937 (or b!14603 b_lambda!941)))

(declare-fun bs!587 () Bool)

(declare-fun d!2335 () Bool)

(assert (= bs!587 (and d!2335 b!14603)))

(assert (=> bs!587 (= (dynLambda!92 lambda!169 (h!985 lt!3623)) (= (_2!264 (h!985 lt!3623)) value!159))))

(assert (=> b!14642 d!2335))

(check-sat (not b!14650) (not b!14658) (not b!14652) (not b!14655) (not b_lambda!927) (not bm!441) (not b_lambda!939) (not b!14641) tp_is_empty!729 (not b!14659) (not d!2321) (not b!14645) (not bm!442) (not b!14647) (not b_lambda!941) (not b!14651) (not b!14643))
(check-sat)
