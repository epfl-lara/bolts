; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293752 () Bool)

(assert start!293752)

(declare-fun b!3089563 () Bool)

(assert (=> b!3089563 true))

(assert (=> b!3089563 true))

(assert (=> b!3089563 true))

(declare-fun lambda!114518 () Int)

(declare-fun lambda!114517 () Int)

(assert (=> b!3089563 (not (= lambda!114518 lambda!114517))))

(assert (=> b!3089563 true))

(assert (=> b!3089563 true))

(assert (=> b!3089563 true))

(declare-fun b!3089560 () Bool)

(declare-fun e!1931780 () Bool)

(declare-fun e!1931785 () Bool)

(assert (=> b!3089560 (= e!1931780 e!1931785)))

(declare-fun res!1266586 () Bool)

(assert (=> b!3089560 (=> res!1266586 e!1931785)))

(declare-datatypes ((C!19280 0))(
  ( (C!19281 (val!11676 Int)) )
))
(declare-datatypes ((Regex!9547 0))(
  ( (ElementMatch!9547 (c!515217 C!19280)) (Concat!14868 (regOne!19606 Regex!9547) (regTwo!19606 Regex!9547)) (EmptyExpr!9547) (Star!9547 (reg!9876 Regex!9547)) (EmptyLang!9547) (Union!9547 (regOne!19607 Regex!9547) (regTwo!19607 Regex!9547)) )
))
(declare-fun lt!1054223 () Regex!9547)

(declare-datatypes ((List!35412 0))(
  ( (Nil!35288) (Cons!35288 (h!40708 C!19280) (t!234477 List!35412)) )
))
(declare-fun s!11993 () List!35412)

(declare-fun matchR!4429 (Regex!9547 List!35412) Bool)

(assert (=> b!3089560 (= res!1266586 (not (matchR!4429 lt!1054223 s!11993)))))

(declare-fun lt!1054224 () Regex!9547)

(declare-fun lt!1054221 () Regex!9547)

(assert (=> b!3089560 (= lt!1054223 (Concat!14868 lt!1054224 lt!1054221))))

(declare-fun b!3089561 () Bool)

(declare-fun e!1931782 () Bool)

(declare-fun tp!972444 () Bool)

(assert (=> b!3089561 (= e!1931782 tp!972444)))

(declare-fun b!3089562 () Bool)

(declare-fun e!1931783 () Bool)

(declare-fun r!17423 () Regex!9547)

(declare-fun validRegex!4280 (Regex!9547) Bool)

(assert (=> b!3089562 (= e!1931783 (validRegex!4280 (regTwo!19606 r!17423)))))

(declare-datatypes ((tuple2!34204 0))(
  ( (tuple2!34205 (_1!20234 List!35412) (_2!20234 List!35412)) )
))
(declare-fun lt!1054217 () tuple2!34204)

(assert (=> b!3089562 (= (matchR!4429 (regOne!19606 r!17423) (_1!20234 lt!1054217)) (matchR!4429 lt!1054224 (_1!20234 lt!1054217)))))

(declare-datatypes ((Unit!49533 0))(
  ( (Unit!49534) )
))
(declare-fun lt!1054219 () Unit!49533)

(declare-fun lemmaSimplifySound!316 (Regex!9547 List!35412) Unit!49533)

(assert (=> b!3089562 (= lt!1054219 (lemmaSimplifySound!316 (regOne!19606 r!17423) (_1!20234 lt!1054217)))))

(declare-datatypes ((Option!6834 0))(
  ( (None!6833) (Some!6833 (v!34967 tuple2!34204)) )
))
(declare-fun lt!1054220 () Option!6834)

(declare-fun get!11073 (Option!6834) tuple2!34204)

(assert (=> b!3089562 (= lt!1054217 (get!11073 lt!1054220))))

(assert (=> b!3089563 (= e!1931785 e!1931783)))

(declare-fun res!1266585 () Bool)

(assert (=> b!3089563 (=> res!1266585 e!1931783)))

(declare-fun lt!1054216 () Bool)

(assert (=> b!3089563 (= res!1266585 (not lt!1054216))))

(declare-fun Exists!1810 (Int) Bool)

(assert (=> b!3089563 (= (Exists!1810 lambda!114517) (Exists!1810 lambda!114518))))

(declare-fun lt!1054222 () Unit!49533)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!564 (Regex!9547 Regex!9547 List!35412) Unit!49533)

(assert (=> b!3089563 (= lt!1054222 (lemmaExistCutMatchRandMatchRSpecEquivalent!564 lt!1054224 lt!1054221 s!11993))))

(assert (=> b!3089563 (= lt!1054216 (Exists!1810 lambda!114517))))

(declare-fun isDefined!5385 (Option!6834) Bool)

(assert (=> b!3089563 (= lt!1054216 (isDefined!5385 lt!1054220))))

(declare-fun findConcatSeparation!1228 (Regex!9547 Regex!9547 List!35412 List!35412 List!35412) Option!6834)

(assert (=> b!3089563 (= lt!1054220 (findConcatSeparation!1228 lt!1054224 lt!1054221 Nil!35288 s!11993 s!11993))))

(declare-fun lt!1054213 () Unit!49533)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!998 (Regex!9547 Regex!9547 List!35412) Unit!49533)

(assert (=> b!3089563 (= lt!1054213 (lemmaFindConcatSeparationEquivalentToExists!998 lt!1054224 lt!1054221 s!11993))))

(declare-fun matchRSpec!1684 (Regex!9547 List!35412) Bool)

(assert (=> b!3089563 (matchRSpec!1684 lt!1054223 s!11993)))

(declare-fun lt!1054218 () Unit!49533)

(declare-fun mainMatchTheorem!1684 (Regex!9547 List!35412) Unit!49533)

(assert (=> b!3089563 (= lt!1054218 (mainMatchTheorem!1684 lt!1054223 s!11993))))

(declare-fun b!3089564 () Bool)

(declare-fun tp!972445 () Bool)

(declare-fun tp!972441 () Bool)

(assert (=> b!3089564 (= e!1931782 (and tp!972445 tp!972441))))

(declare-fun b!3089565 () Bool)

(declare-fun res!1266580 () Bool)

(declare-fun e!1931779 () Bool)

(assert (=> b!3089565 (=> res!1266580 e!1931779)))

(declare-fun isEmpty!19628 (List!35412) Bool)

(assert (=> b!3089565 (= res!1266580 (isEmpty!19628 s!11993))))

(declare-fun res!1266584 () Bool)

(declare-fun e!1931784 () Bool)

(assert (=> start!293752 (=> (not res!1266584) (not e!1931784))))

(assert (=> start!293752 (= res!1266584 (validRegex!4280 r!17423))))

(assert (=> start!293752 e!1931784))

(assert (=> start!293752 e!1931782))

(declare-fun e!1931781 () Bool)

(assert (=> start!293752 e!1931781))

(declare-fun b!3089566 () Bool)

(assert (=> b!3089566 (= e!1931784 (not e!1931779))))

(declare-fun res!1266581 () Bool)

(assert (=> b!3089566 (=> res!1266581 e!1931779)))

(declare-fun lt!1054215 () Bool)

(get-info :version)

(assert (=> b!3089566 (= res!1266581 (or lt!1054215 (not ((_ is Concat!14868) r!17423))))))

(assert (=> b!3089566 (= lt!1054215 (matchRSpec!1684 r!17423 s!11993))))

(assert (=> b!3089566 (= lt!1054215 (matchR!4429 r!17423 s!11993))))

(declare-fun lt!1054214 () Unit!49533)

(assert (=> b!3089566 (= lt!1054214 (mainMatchTheorem!1684 r!17423 s!11993))))

(declare-fun b!3089567 () Bool)

(declare-fun tp_is_empty!16657 () Bool)

(assert (=> b!3089567 (= e!1931782 tp_is_empty!16657)))

(declare-fun b!3089568 () Bool)

(declare-fun tp!972442 () Bool)

(assert (=> b!3089568 (= e!1931781 (and tp_is_empty!16657 tp!972442))))

(declare-fun b!3089569 () Bool)

(assert (=> b!3089569 (= e!1931779 e!1931780)))

(declare-fun res!1266583 () Bool)

(assert (=> b!3089569 (=> res!1266583 e!1931780)))

(declare-fun isEmptyLang!598 (Regex!9547) Bool)

(assert (=> b!3089569 (= res!1266583 (isEmptyLang!598 lt!1054224))))

(declare-fun simplify!502 (Regex!9547) Regex!9547)

(assert (=> b!3089569 (= lt!1054221 (simplify!502 (regTwo!19606 r!17423)))))

(assert (=> b!3089569 (= lt!1054224 (simplify!502 (regOne!19606 r!17423)))))

(declare-fun b!3089570 () Bool)

(declare-fun res!1266582 () Bool)

(assert (=> b!3089570 (=> res!1266582 e!1931780)))

(declare-fun isEmptyExpr!604 (Regex!9547) Bool)

(assert (=> b!3089570 (= res!1266582 (isEmptyExpr!604 lt!1054224))))

(declare-fun b!3089571 () Bool)

(declare-fun res!1266579 () Bool)

(assert (=> b!3089571 (=> res!1266579 e!1931780)))

(assert (=> b!3089571 (= res!1266579 (isEmptyLang!598 lt!1054221))))

(declare-fun b!3089572 () Bool)

(declare-fun res!1266578 () Bool)

(assert (=> b!3089572 (=> res!1266578 e!1931780)))

(assert (=> b!3089572 (= res!1266578 (isEmptyExpr!604 lt!1054221))))

(declare-fun b!3089573 () Bool)

(declare-fun tp!972440 () Bool)

(declare-fun tp!972443 () Bool)

(assert (=> b!3089573 (= e!1931782 (and tp!972440 tp!972443))))

(assert (= (and start!293752 res!1266584) b!3089566))

(assert (= (and b!3089566 (not res!1266581)) b!3089565))

(assert (= (and b!3089565 (not res!1266580)) b!3089569))

(assert (= (and b!3089569 (not res!1266583)) b!3089571))

(assert (= (and b!3089571 (not res!1266579)) b!3089570))

(assert (= (and b!3089570 (not res!1266582)) b!3089572))

(assert (= (and b!3089572 (not res!1266578)) b!3089560))

(assert (= (and b!3089560 (not res!1266586)) b!3089563))

(assert (= (and b!3089563 (not res!1266585)) b!3089562))

(assert (= (and start!293752 ((_ is ElementMatch!9547) r!17423)) b!3089567))

(assert (= (and start!293752 ((_ is Concat!14868) r!17423)) b!3089564))

(assert (= (and start!293752 ((_ is Star!9547) r!17423)) b!3089561))

(assert (= (and start!293752 ((_ is Union!9547) r!17423)) b!3089573))

(assert (= (and start!293752 ((_ is Cons!35288) s!11993)) b!3089568))

(declare-fun m!3394679 () Bool)

(assert (=> b!3089571 m!3394679))

(declare-fun m!3394681 () Bool)

(assert (=> b!3089562 m!3394681))

(declare-fun m!3394683 () Bool)

(assert (=> b!3089562 m!3394683))

(declare-fun m!3394685 () Bool)

(assert (=> b!3089562 m!3394685))

(declare-fun m!3394687 () Bool)

(assert (=> b!3089562 m!3394687))

(declare-fun m!3394689 () Bool)

(assert (=> b!3089562 m!3394689))

(declare-fun m!3394691 () Bool)

(assert (=> b!3089569 m!3394691))

(declare-fun m!3394693 () Bool)

(assert (=> b!3089569 m!3394693))

(declare-fun m!3394695 () Bool)

(assert (=> b!3089569 m!3394695))

(declare-fun m!3394697 () Bool)

(assert (=> b!3089570 m!3394697))

(declare-fun m!3394699 () Bool)

(assert (=> b!3089565 m!3394699))

(declare-fun m!3394701 () Bool)

(assert (=> b!3089572 m!3394701))

(declare-fun m!3394703 () Bool)

(assert (=> b!3089563 m!3394703))

(declare-fun m!3394705 () Bool)

(assert (=> b!3089563 m!3394705))

(declare-fun m!3394707 () Bool)

(assert (=> b!3089563 m!3394707))

(declare-fun m!3394709 () Bool)

(assert (=> b!3089563 m!3394709))

(declare-fun m!3394711 () Bool)

(assert (=> b!3089563 m!3394711))

(assert (=> b!3089563 m!3394705))

(declare-fun m!3394713 () Bool)

(assert (=> b!3089563 m!3394713))

(declare-fun m!3394715 () Bool)

(assert (=> b!3089563 m!3394715))

(declare-fun m!3394717 () Bool)

(assert (=> b!3089563 m!3394717))

(declare-fun m!3394719 () Bool)

(assert (=> b!3089560 m!3394719))

(declare-fun m!3394721 () Bool)

(assert (=> start!293752 m!3394721))

(declare-fun m!3394723 () Bool)

(assert (=> b!3089566 m!3394723))

(declare-fun m!3394725 () Bool)

(assert (=> b!3089566 m!3394725))

(declare-fun m!3394727 () Bool)

(assert (=> b!3089566 m!3394727))

(check-sat (not b!3089560) (not b!3089572) (not b!3089570) (not b!3089571) (not b!3089564) (not b!3089566) (not b!3089561) tp_is_empty!16657 (not b!3089563) (not start!293752) (not b!3089565) (not b!3089562) (not b!3089569) (not b!3089568) (not b!3089573))
(check-sat)
(get-model)

(declare-fun d!859013 () Bool)

(assert (=> d!859013 (= (isEmptyExpr!604 lt!1054224) ((_ is EmptyExpr!9547) lt!1054224))))

(assert (=> b!3089570 d!859013))

(declare-fun b!3089597 () Bool)

(declare-fun res!1266598 () Bool)

(declare-fun e!1931801 () Bool)

(assert (=> b!3089597 (=> (not res!1266598) (not e!1931801))))

(declare-fun call!216454 () Bool)

(assert (=> b!3089597 (= res!1266598 call!216454)))

(declare-fun e!1931806 () Bool)

(assert (=> b!3089597 (= e!1931806 e!1931801)))

(declare-fun b!3089598 () Bool)

(declare-fun res!1266601 () Bool)

(declare-fun e!1931803 () Bool)

(assert (=> b!3089598 (=> res!1266601 e!1931803)))

(assert (=> b!3089598 (= res!1266601 (not ((_ is Concat!14868) r!17423)))))

(assert (=> b!3089598 (= e!1931806 e!1931803)))

(declare-fun b!3089599 () Bool)

(declare-fun e!1931800 () Bool)

(declare-fun e!1931804 () Bool)

(assert (=> b!3089599 (= e!1931800 e!1931804)))

(declare-fun res!1266600 () Bool)

(declare-fun nullable!3193 (Regex!9547) Bool)

(assert (=> b!3089599 (= res!1266600 (not (nullable!3193 (reg!9876 r!17423))))))

(assert (=> b!3089599 (=> (not res!1266600) (not e!1931804))))

(declare-fun b!3089600 () Bool)

(declare-fun e!1931802 () Bool)

(assert (=> b!3089600 (= e!1931802 e!1931800)))

(declare-fun c!515223 () Bool)

(assert (=> b!3089600 (= c!515223 ((_ is Star!9547) r!17423))))

(declare-fun b!3089601 () Bool)

(assert (=> b!3089601 (= e!1931800 e!1931806)))

(declare-fun c!515222 () Bool)

(assert (=> b!3089601 (= c!515222 ((_ is Union!9547) r!17423))))

(declare-fun bm!216448 () Bool)

(declare-fun call!216453 () Bool)

(assert (=> bm!216448 (= call!216453 (validRegex!4280 (ite c!515222 (regTwo!19607 r!17423) (regOne!19606 r!17423))))))

(declare-fun bm!216449 () Bool)

(declare-fun call!216455 () Bool)

(assert (=> bm!216449 (= call!216454 call!216455)))

(declare-fun b!3089596 () Bool)

(declare-fun e!1931805 () Bool)

(assert (=> b!3089596 (= e!1931803 e!1931805)))

(declare-fun res!1266599 () Bool)

(assert (=> b!3089596 (=> (not res!1266599) (not e!1931805))))

(assert (=> b!3089596 (= res!1266599 call!216453)))

(declare-fun d!859015 () Bool)

(declare-fun res!1266597 () Bool)

(assert (=> d!859015 (=> res!1266597 e!1931802)))

(assert (=> d!859015 (= res!1266597 ((_ is ElementMatch!9547) r!17423))))

(assert (=> d!859015 (= (validRegex!4280 r!17423) e!1931802)))

(declare-fun b!3089602 () Bool)

(assert (=> b!3089602 (= e!1931804 call!216455)))

(declare-fun b!3089603 () Bool)

(assert (=> b!3089603 (= e!1931805 call!216454)))

(declare-fun b!3089604 () Bool)

(assert (=> b!3089604 (= e!1931801 call!216453)))

(declare-fun bm!216450 () Bool)

(assert (=> bm!216450 (= call!216455 (validRegex!4280 (ite c!515223 (reg!9876 r!17423) (ite c!515222 (regOne!19607 r!17423) (regTwo!19606 r!17423)))))))

(assert (= (and d!859015 (not res!1266597)) b!3089600))

(assert (= (and b!3089600 c!515223) b!3089599))

(assert (= (and b!3089600 (not c!515223)) b!3089601))

(assert (= (and b!3089599 res!1266600) b!3089602))

(assert (= (and b!3089601 c!515222) b!3089597))

(assert (= (and b!3089601 (not c!515222)) b!3089598))

(assert (= (and b!3089597 res!1266598) b!3089604))

(assert (= (and b!3089598 (not res!1266601)) b!3089596))

(assert (= (and b!3089596 res!1266599) b!3089603))

(assert (= (or b!3089597 b!3089603) bm!216449))

(assert (= (or b!3089604 b!3089596) bm!216448))

(assert (= (or b!3089602 bm!216449) bm!216450))

(declare-fun m!3394729 () Bool)

(assert (=> b!3089599 m!3394729))

(declare-fun m!3394731 () Bool)

(assert (=> bm!216448 m!3394731))

(declare-fun m!3394733 () Bool)

(assert (=> bm!216450 m!3394733))

(assert (=> start!293752 d!859015))

(declare-fun d!859019 () Bool)

(assert (=> d!859019 (= (isEmptyLang!598 lt!1054224) ((_ is EmptyLang!9547) lt!1054224))))

(assert (=> b!3089569 d!859019))

(declare-fun b!3089843 () Bool)

(declare-fun e!1931955 () Regex!9547)

(declare-fun lt!1054264 () Regex!9547)

(assert (=> b!3089843 (= e!1931955 lt!1054264)))

(declare-fun b!3089844 () Bool)

(declare-fun e!1931952 () Regex!9547)

(declare-fun lt!1054261 () Regex!9547)

(assert (=> b!3089844 (= e!1931952 lt!1054261)))

(declare-fun b!3089845 () Bool)

(declare-fun e!1931949 () Bool)

(declare-fun lt!1054263 () Regex!9547)

(assert (=> b!3089845 (= e!1931949 (= (nullable!3193 lt!1054263) (nullable!3193 (regTwo!19606 r!17423))))))

(declare-fun b!3089846 () Bool)

(declare-fun e!1931948 () Regex!9547)

(declare-fun lt!1054265 () Regex!9547)

(assert (=> b!3089846 (= e!1931948 (Union!9547 lt!1054265 lt!1054264))))

(declare-fun call!216494 () Regex!9547)

(declare-fun c!515302 () Bool)

(declare-fun bm!216485 () Bool)

(declare-fun c!515303 () Bool)

(assert (=> bm!216485 (= call!216494 (simplify!502 (ite c!515303 (reg!9876 (regTwo!19606 r!17423)) (ite c!515302 (regTwo!19607 (regTwo!19606 r!17423)) (regOne!19606 (regTwo!19606 r!17423))))))))

(declare-fun b!3089847 () Bool)

(declare-fun e!1931946 () Regex!9547)

(assert (=> b!3089847 (= e!1931946 EmptyExpr!9547)))

(declare-fun lt!1054262 () Regex!9547)

(declare-fun call!216495 () Bool)

(declare-fun bm!216486 () Bool)

(assert (=> bm!216486 (= call!216495 (isEmptyExpr!604 (ite c!515303 lt!1054262 lt!1054261)))))

(declare-fun bm!216487 () Bool)

(declare-fun call!216492 () Bool)

(assert (=> bm!216487 (= call!216492 (isEmptyLang!598 (ite c!515303 lt!1054262 (ite c!515302 lt!1054265 lt!1054261))))))

(declare-fun b!3089849 () Bool)

(declare-fun e!1931953 () Regex!9547)

(assert (=> b!3089849 (= e!1931953 EmptyLang!9547)))

(declare-fun b!3089850 () Bool)

(declare-fun e!1931950 () Regex!9547)

(declare-fun e!1931943 () Regex!9547)

(assert (=> b!3089850 (= e!1931950 e!1931943)))

(assert (=> b!3089850 (= c!515303 ((_ is Star!9547) (regTwo!19606 r!17423)))))

(declare-fun b!3089851 () Bool)

(declare-fun c!515305 () Bool)

(declare-fun e!1931942 () Bool)

(assert (=> b!3089851 (= c!515305 e!1931942)))

(declare-fun res!1266686 () Bool)

(assert (=> b!3089851 (=> res!1266686 e!1931942)))

(assert (=> b!3089851 (= res!1266686 call!216492)))

(assert (=> b!3089851 (= lt!1054262 call!216494)))

(assert (=> b!3089851 (= e!1931943 e!1931946)))

(declare-fun b!3089852 () Bool)

(assert (=> b!3089852 (= e!1931942 call!216495)))

(declare-fun b!3089853 () Bool)

(declare-fun e!1931944 () Regex!9547)

(assert (=> b!3089853 (= e!1931944 EmptyLang!9547)))

(declare-fun b!3089854 () Bool)

(declare-fun c!515304 () Bool)

(assert (=> b!3089854 (= c!515304 ((_ is EmptyExpr!9547) (regTwo!19606 r!17423)))))

(declare-fun e!1931947 () Regex!9547)

(assert (=> b!3089854 (= e!1931947 e!1931950)))

(declare-fun b!3089855 () Bool)

(declare-fun e!1931951 () Regex!9547)

(assert (=> b!3089855 (= e!1931951 e!1931955)))

(declare-fun call!216491 () Regex!9547)

(assert (=> b!3089855 (= lt!1054265 call!216491)))

(declare-fun call!216493 () Regex!9547)

(assert (=> b!3089855 (= lt!1054264 call!216493)))

(declare-fun c!515311 () Bool)

(declare-fun call!216496 () Bool)

(assert (=> b!3089855 (= c!515311 call!216496)))

(declare-fun b!3089856 () Bool)

(assert (=> b!3089856 (= e!1931948 lt!1054265)))

(declare-fun bm!216488 () Bool)

(assert (=> bm!216488 (= call!216491 (simplify!502 (ite c!515302 (regOne!19607 (regTwo!19606 r!17423)) (regTwo!19606 (regTwo!19606 r!17423)))))))

(declare-fun b!3089857 () Bool)

(assert (=> b!3089857 (= e!1931950 EmptyExpr!9547)))

(declare-fun b!3089858 () Bool)

(assert (=> b!3089858 (= e!1931946 (Star!9547 lt!1054262))))

(declare-fun lt!1054260 () Regex!9547)

(declare-fun bm!216489 () Bool)

(declare-fun call!216490 () Bool)

(assert (=> bm!216489 (= call!216490 (isEmptyLang!598 (ite c!515302 lt!1054264 lt!1054260)))))

(declare-fun b!3089859 () Bool)

(declare-fun c!515310 () Bool)

(assert (=> b!3089859 (= c!515310 (isEmptyExpr!604 lt!1054260))))

(assert (=> b!3089859 (= e!1931944 e!1931952)))

(declare-fun b!3089860 () Bool)

(assert (=> b!3089860 (= e!1931951 e!1931944)))

(assert (=> b!3089860 (= lt!1054260 call!216493)))

(assert (=> b!3089860 (= lt!1054261 call!216491)))

(declare-fun res!1266687 () Bool)

(assert (=> b!3089860 (= res!1266687 call!216490)))

(declare-fun e!1931954 () Bool)

(assert (=> b!3089860 (=> res!1266687 e!1931954)))

(declare-fun c!515309 () Bool)

(assert (=> b!3089860 (= c!515309 e!1931954)))

(declare-fun b!3089861 () Bool)

(assert (=> b!3089861 (= e!1931954 call!216496)))

(declare-fun b!3089862 () Bool)

(declare-fun e!1931945 () Regex!9547)

(assert (=> b!3089862 (= e!1931945 lt!1054260)))

(declare-fun bm!216490 () Bool)

(assert (=> bm!216490 (= call!216493 call!216494)))

(declare-fun b!3089863 () Bool)

(assert (=> b!3089863 (= e!1931952 e!1931945)))

(declare-fun c!515301 () Bool)

(assert (=> b!3089863 (= c!515301 call!216495)))

(declare-fun bm!216491 () Bool)

(assert (=> bm!216491 (= call!216496 call!216492)))

(declare-fun b!3089864 () Bool)

(declare-fun c!515307 () Bool)

(assert (=> b!3089864 (= c!515307 call!216490)))

(assert (=> b!3089864 (= e!1931955 e!1931948)))

(declare-fun b!3089865 () Bool)

(assert (=> b!3089865 (= c!515302 ((_ is Union!9547) (regTwo!19606 r!17423)))))

(assert (=> b!3089865 (= e!1931943 e!1931951)))

(declare-fun b!3089866 () Bool)

(assert (=> b!3089866 (= e!1931953 e!1931947)))

(declare-fun c!515308 () Bool)

(assert (=> b!3089866 (= c!515308 ((_ is ElementMatch!9547) (regTwo!19606 r!17423)))))

(declare-fun b!3089867 () Bool)

(assert (=> b!3089867 (= e!1931945 (Concat!14868 lt!1054260 lt!1054261))))

(declare-fun b!3089848 () Bool)

(assert (=> b!3089848 (= e!1931947 (regTwo!19606 r!17423))))

(declare-fun d!859021 () Bool)

(assert (=> d!859021 e!1931949))

(declare-fun res!1266688 () Bool)

(assert (=> d!859021 (=> (not res!1266688) (not e!1931949))))

(assert (=> d!859021 (= res!1266688 (validRegex!4280 lt!1054263))))

(assert (=> d!859021 (= lt!1054263 e!1931953)))

(declare-fun c!515306 () Bool)

(assert (=> d!859021 (= c!515306 ((_ is EmptyLang!9547) (regTwo!19606 r!17423)))))

(assert (=> d!859021 (validRegex!4280 (regTwo!19606 r!17423))))

(assert (=> d!859021 (= (simplify!502 (regTwo!19606 r!17423)) lt!1054263)))

(assert (= (and d!859021 c!515306) b!3089849))

(assert (= (and d!859021 (not c!515306)) b!3089866))

(assert (= (and b!3089866 c!515308) b!3089848))

(assert (= (and b!3089866 (not c!515308)) b!3089854))

(assert (= (and b!3089854 c!515304) b!3089857))

(assert (= (and b!3089854 (not c!515304)) b!3089850))

(assert (= (and b!3089850 c!515303) b!3089851))

(assert (= (and b!3089850 (not c!515303)) b!3089865))

(assert (= (and b!3089851 (not res!1266686)) b!3089852))

(assert (= (and b!3089851 c!515305) b!3089847))

(assert (= (and b!3089851 (not c!515305)) b!3089858))

(assert (= (and b!3089865 c!515302) b!3089855))

(assert (= (and b!3089865 (not c!515302)) b!3089860))

(assert (= (and b!3089855 c!515311) b!3089843))

(assert (= (and b!3089855 (not c!515311)) b!3089864))

(assert (= (and b!3089864 c!515307) b!3089856))

(assert (= (and b!3089864 (not c!515307)) b!3089846))

(assert (= (and b!3089860 (not res!1266687)) b!3089861))

(assert (= (and b!3089860 c!515309) b!3089853))

(assert (= (and b!3089860 (not c!515309)) b!3089859))

(assert (= (and b!3089859 c!515310) b!3089844))

(assert (= (and b!3089859 (not c!515310)) b!3089863))

(assert (= (and b!3089863 c!515301) b!3089862))

(assert (= (and b!3089863 (not c!515301)) b!3089867))

(assert (= (or b!3089855 b!3089860) bm!216488))

(assert (= (or b!3089855 b!3089860) bm!216490))

(assert (= (or b!3089855 b!3089861) bm!216491))

(assert (= (or b!3089864 b!3089860) bm!216489))

(assert (= (or b!3089852 b!3089863) bm!216486))

(assert (= (or b!3089851 bm!216490) bm!216485))

(assert (= (or b!3089851 bm!216491) bm!216487))

(assert (= (and d!859021 res!1266688) b!3089845))

(declare-fun m!3394789 () Bool)

(assert (=> bm!216485 m!3394789))

(declare-fun m!3394791 () Bool)

(assert (=> b!3089845 m!3394791))

(declare-fun m!3394793 () Bool)

(assert (=> b!3089845 m!3394793))

(declare-fun m!3394795 () Bool)

(assert (=> b!3089859 m!3394795))

(declare-fun m!3394797 () Bool)

(assert (=> d!859021 m!3394797))

(assert (=> d!859021 m!3394685))

(declare-fun m!3394799 () Bool)

(assert (=> bm!216487 m!3394799))

(declare-fun m!3394801 () Bool)

(assert (=> bm!216488 m!3394801))

(declare-fun m!3394803 () Bool)

(assert (=> bm!216489 m!3394803))

(declare-fun m!3394805 () Bool)

(assert (=> bm!216486 m!3394805))

(assert (=> b!3089569 d!859021))

(declare-fun b!3089868 () Bool)

(declare-fun e!1931969 () Regex!9547)

(declare-fun lt!1054270 () Regex!9547)

(assert (=> b!3089868 (= e!1931969 lt!1054270)))

(declare-fun b!3089869 () Bool)

(declare-fun e!1931966 () Regex!9547)

(declare-fun lt!1054267 () Regex!9547)

(assert (=> b!3089869 (= e!1931966 lt!1054267)))

(declare-fun b!3089870 () Bool)

(declare-fun e!1931963 () Bool)

(declare-fun lt!1054269 () Regex!9547)

(assert (=> b!3089870 (= e!1931963 (= (nullable!3193 lt!1054269) (nullable!3193 (regOne!19606 r!17423))))))

(declare-fun b!3089871 () Bool)

(declare-fun e!1931962 () Regex!9547)

(declare-fun lt!1054271 () Regex!9547)

(assert (=> b!3089871 (= e!1931962 (Union!9547 lt!1054271 lt!1054270))))

(declare-fun bm!216506 () Bool)

(declare-fun call!216515 () Regex!9547)

(declare-fun c!515313 () Bool)

(declare-fun c!515314 () Bool)

(assert (=> bm!216506 (= call!216515 (simplify!502 (ite c!515314 (reg!9876 (regOne!19606 r!17423)) (ite c!515313 (regTwo!19607 (regOne!19606 r!17423)) (regOne!19606 (regOne!19606 r!17423))))))))

(declare-fun b!3089872 () Bool)

(declare-fun e!1931960 () Regex!9547)

(assert (=> b!3089872 (= e!1931960 EmptyExpr!9547)))

(declare-fun bm!216507 () Bool)

(declare-fun call!216516 () Bool)

(declare-fun lt!1054268 () Regex!9547)

(assert (=> bm!216507 (= call!216516 (isEmptyExpr!604 (ite c!515314 lt!1054268 lt!1054267)))))

(declare-fun call!216513 () Bool)

(declare-fun bm!216508 () Bool)

(assert (=> bm!216508 (= call!216513 (isEmptyLang!598 (ite c!515314 lt!1054268 (ite c!515313 lt!1054271 lt!1054267))))))

(declare-fun b!3089874 () Bool)

(declare-fun e!1931967 () Regex!9547)

(assert (=> b!3089874 (= e!1931967 EmptyLang!9547)))

(declare-fun b!3089875 () Bool)

(declare-fun e!1931964 () Regex!9547)

(declare-fun e!1931957 () Regex!9547)

(assert (=> b!3089875 (= e!1931964 e!1931957)))

(assert (=> b!3089875 (= c!515314 ((_ is Star!9547) (regOne!19606 r!17423)))))

(declare-fun b!3089876 () Bool)

(declare-fun c!515316 () Bool)

(declare-fun e!1931956 () Bool)

(assert (=> b!3089876 (= c!515316 e!1931956)))

(declare-fun res!1266689 () Bool)

(assert (=> b!3089876 (=> res!1266689 e!1931956)))

(assert (=> b!3089876 (= res!1266689 call!216513)))

(assert (=> b!3089876 (= lt!1054268 call!216515)))

(assert (=> b!3089876 (= e!1931957 e!1931960)))

(declare-fun b!3089877 () Bool)

(assert (=> b!3089877 (= e!1931956 call!216516)))

(declare-fun b!3089878 () Bool)

(declare-fun e!1931958 () Regex!9547)

(assert (=> b!3089878 (= e!1931958 EmptyLang!9547)))

(declare-fun b!3089879 () Bool)

(declare-fun c!515315 () Bool)

(assert (=> b!3089879 (= c!515315 ((_ is EmptyExpr!9547) (regOne!19606 r!17423)))))

(declare-fun e!1931961 () Regex!9547)

(assert (=> b!3089879 (= e!1931961 e!1931964)))

(declare-fun b!3089880 () Bool)

(declare-fun e!1931965 () Regex!9547)

(assert (=> b!3089880 (= e!1931965 e!1931969)))

(declare-fun call!216512 () Regex!9547)

(assert (=> b!3089880 (= lt!1054271 call!216512)))

(declare-fun call!216514 () Regex!9547)

(assert (=> b!3089880 (= lt!1054270 call!216514)))

(declare-fun c!515322 () Bool)

(declare-fun call!216517 () Bool)

(assert (=> b!3089880 (= c!515322 call!216517)))

(declare-fun b!3089881 () Bool)

(assert (=> b!3089881 (= e!1931962 lt!1054271)))

(declare-fun bm!216509 () Bool)

(assert (=> bm!216509 (= call!216512 (simplify!502 (ite c!515313 (regOne!19607 (regOne!19606 r!17423)) (regTwo!19606 (regOne!19606 r!17423)))))))

(declare-fun b!3089882 () Bool)

(assert (=> b!3089882 (= e!1931964 EmptyExpr!9547)))

(declare-fun b!3089883 () Bool)

(assert (=> b!3089883 (= e!1931960 (Star!9547 lt!1054268))))

(declare-fun lt!1054266 () Regex!9547)

(declare-fun bm!216510 () Bool)

(declare-fun call!216511 () Bool)

(assert (=> bm!216510 (= call!216511 (isEmptyLang!598 (ite c!515313 lt!1054270 lt!1054266)))))

(declare-fun b!3089884 () Bool)

(declare-fun c!515321 () Bool)

(assert (=> b!3089884 (= c!515321 (isEmptyExpr!604 lt!1054266))))

(assert (=> b!3089884 (= e!1931958 e!1931966)))

(declare-fun b!3089885 () Bool)

(assert (=> b!3089885 (= e!1931965 e!1931958)))

(assert (=> b!3089885 (= lt!1054266 call!216514)))

(assert (=> b!3089885 (= lt!1054267 call!216512)))

(declare-fun res!1266690 () Bool)

(assert (=> b!3089885 (= res!1266690 call!216511)))

(declare-fun e!1931968 () Bool)

(assert (=> b!3089885 (=> res!1266690 e!1931968)))

(declare-fun c!515320 () Bool)

(assert (=> b!3089885 (= c!515320 e!1931968)))

(declare-fun b!3089886 () Bool)

(assert (=> b!3089886 (= e!1931968 call!216517)))

(declare-fun b!3089887 () Bool)

(declare-fun e!1931959 () Regex!9547)

(assert (=> b!3089887 (= e!1931959 lt!1054266)))

(declare-fun bm!216511 () Bool)

(assert (=> bm!216511 (= call!216514 call!216515)))

(declare-fun b!3089888 () Bool)

(assert (=> b!3089888 (= e!1931966 e!1931959)))

(declare-fun c!515312 () Bool)

(assert (=> b!3089888 (= c!515312 call!216516)))

(declare-fun bm!216512 () Bool)

(assert (=> bm!216512 (= call!216517 call!216513)))

(declare-fun b!3089889 () Bool)

(declare-fun c!515318 () Bool)

(assert (=> b!3089889 (= c!515318 call!216511)))

(assert (=> b!3089889 (= e!1931969 e!1931962)))

(declare-fun b!3089890 () Bool)

(assert (=> b!3089890 (= c!515313 ((_ is Union!9547) (regOne!19606 r!17423)))))

(assert (=> b!3089890 (= e!1931957 e!1931965)))

(declare-fun b!3089891 () Bool)

(assert (=> b!3089891 (= e!1931967 e!1931961)))

(declare-fun c!515319 () Bool)

(assert (=> b!3089891 (= c!515319 ((_ is ElementMatch!9547) (regOne!19606 r!17423)))))

(declare-fun b!3089892 () Bool)

(assert (=> b!3089892 (= e!1931959 (Concat!14868 lt!1054266 lt!1054267))))

(declare-fun b!3089873 () Bool)

(assert (=> b!3089873 (= e!1931961 (regOne!19606 r!17423))))

(declare-fun d!859041 () Bool)

(assert (=> d!859041 e!1931963))

(declare-fun res!1266691 () Bool)

(assert (=> d!859041 (=> (not res!1266691) (not e!1931963))))

(assert (=> d!859041 (= res!1266691 (validRegex!4280 lt!1054269))))

(assert (=> d!859041 (= lt!1054269 e!1931967)))

(declare-fun c!515317 () Bool)

(assert (=> d!859041 (= c!515317 ((_ is EmptyLang!9547) (regOne!19606 r!17423)))))

(assert (=> d!859041 (validRegex!4280 (regOne!19606 r!17423))))

(assert (=> d!859041 (= (simplify!502 (regOne!19606 r!17423)) lt!1054269)))

(assert (= (and d!859041 c!515317) b!3089874))

(assert (= (and d!859041 (not c!515317)) b!3089891))

(assert (= (and b!3089891 c!515319) b!3089873))

(assert (= (and b!3089891 (not c!515319)) b!3089879))

(assert (= (and b!3089879 c!515315) b!3089882))

(assert (= (and b!3089879 (not c!515315)) b!3089875))

(assert (= (and b!3089875 c!515314) b!3089876))

(assert (= (and b!3089875 (not c!515314)) b!3089890))

(assert (= (and b!3089876 (not res!1266689)) b!3089877))

(assert (= (and b!3089876 c!515316) b!3089872))

(assert (= (and b!3089876 (not c!515316)) b!3089883))

(assert (= (and b!3089890 c!515313) b!3089880))

(assert (= (and b!3089890 (not c!515313)) b!3089885))

(assert (= (and b!3089880 c!515322) b!3089868))

(assert (= (and b!3089880 (not c!515322)) b!3089889))

(assert (= (and b!3089889 c!515318) b!3089881))

(assert (= (and b!3089889 (not c!515318)) b!3089871))

(assert (= (and b!3089885 (not res!1266690)) b!3089886))

(assert (= (and b!3089885 c!515320) b!3089878))

(assert (= (and b!3089885 (not c!515320)) b!3089884))

(assert (= (and b!3089884 c!515321) b!3089869))

(assert (= (and b!3089884 (not c!515321)) b!3089888))

(assert (= (and b!3089888 c!515312) b!3089887))

(assert (= (and b!3089888 (not c!515312)) b!3089892))

(assert (= (or b!3089880 b!3089885) bm!216509))

(assert (= (or b!3089880 b!3089885) bm!216511))

(assert (= (or b!3089880 b!3089886) bm!216512))

(assert (= (or b!3089889 b!3089885) bm!216510))

(assert (= (or b!3089877 b!3089888) bm!216507))

(assert (= (or b!3089876 bm!216511) bm!216506))

(assert (= (or b!3089876 bm!216512) bm!216508))

(assert (= (and d!859041 res!1266691) b!3089870))

(declare-fun m!3394807 () Bool)

(assert (=> bm!216506 m!3394807))

(declare-fun m!3394809 () Bool)

(assert (=> b!3089870 m!3394809))

(declare-fun m!3394811 () Bool)

(assert (=> b!3089870 m!3394811))

(declare-fun m!3394813 () Bool)

(assert (=> b!3089884 m!3394813))

(declare-fun m!3394815 () Bool)

(assert (=> d!859041 m!3394815))

(declare-fun m!3394817 () Bool)

(assert (=> d!859041 m!3394817))

(declare-fun m!3394819 () Bool)

(assert (=> bm!216508 m!3394819))

(declare-fun m!3394821 () Bool)

(assert (=> bm!216509 m!3394821))

(declare-fun m!3394823 () Bool)

(assert (=> bm!216510 m!3394823))

(declare-fun m!3394825 () Bool)

(assert (=> bm!216507 m!3394825))

(assert (=> b!3089569 d!859041))

(declare-fun bs!534195 () Bool)

(declare-fun b!3090037 () Bool)

(assert (= bs!534195 (and b!3090037 b!3089563)))

(declare-fun lambda!114533 () Int)

(assert (=> bs!534195 (not (= lambda!114533 lambda!114517))))

(assert (=> bs!534195 (not (= lambda!114533 lambda!114518))))

(assert (=> b!3090037 true))

(assert (=> b!3090037 true))

(declare-fun bs!534200 () Bool)

(declare-fun b!3090032 () Bool)

(assert (= bs!534200 (and b!3090032 b!3089563)))

(declare-fun lambda!114536 () Int)

(assert (=> bs!534200 (not (= lambda!114536 lambda!114517))))

(assert (=> bs!534200 (= (and (= (regOne!19606 lt!1054223) lt!1054224) (= (regTwo!19606 lt!1054223) lt!1054221)) (= lambda!114536 lambda!114518))))

(declare-fun bs!534201 () Bool)

(assert (= bs!534201 (and b!3090032 b!3090037)))

(assert (=> bs!534201 (not (= lambda!114536 lambda!114533))))

(assert (=> b!3090032 true))

(assert (=> b!3090032 true))

(declare-fun b!3090031 () Bool)

(declare-fun e!1932054 () Bool)

(assert (=> b!3090031 (= e!1932054 (= s!11993 (Cons!35288 (c!515217 lt!1054223) Nil!35288)))))

(declare-fun e!1932052 () Bool)

(declare-fun call!216541 () Bool)

(assert (=> b!3090032 (= e!1932052 call!216541)))

(declare-fun b!3090033 () Bool)

(declare-fun c!515366 () Bool)

(assert (=> b!3090033 (= c!515366 ((_ is ElementMatch!9547) lt!1054223))))

(declare-fun e!1932053 () Bool)

(assert (=> b!3090033 (= e!1932053 e!1932054)))

(declare-fun b!3090034 () Bool)

(declare-fun res!1266750 () Bool)

(declare-fun e!1932051 () Bool)

(assert (=> b!3090034 (=> res!1266750 e!1932051)))

(declare-fun call!216540 () Bool)

(assert (=> b!3090034 (= res!1266750 call!216540)))

(assert (=> b!3090034 (= e!1932052 e!1932051)))

(declare-fun d!859043 () Bool)

(declare-fun c!515365 () Bool)

(assert (=> d!859043 (= c!515365 ((_ is EmptyExpr!9547) lt!1054223))))

(declare-fun e!1932055 () Bool)

(assert (=> d!859043 (= (matchRSpec!1684 lt!1054223 s!11993) e!1932055)))

(declare-fun b!3090035 () Bool)

(assert (=> b!3090035 (= e!1932055 call!216540)))

(declare-fun b!3090036 () Bool)

(declare-fun e!1932049 () Bool)

(assert (=> b!3090036 (= e!1932049 (matchRSpec!1684 (regTwo!19607 lt!1054223) s!11993))))

(assert (=> b!3090037 (= e!1932051 call!216541)))

(declare-fun bm!216535 () Bool)

(assert (=> bm!216535 (= call!216540 (isEmpty!19628 s!11993))))

(declare-fun b!3090038 () Bool)

(assert (=> b!3090038 (= e!1932055 e!1932053)))

(declare-fun res!1266748 () Bool)

(assert (=> b!3090038 (= res!1266748 (not ((_ is EmptyLang!9547) lt!1054223)))))

(assert (=> b!3090038 (=> (not res!1266748) (not e!1932053))))

(declare-fun b!3090039 () Bool)

(declare-fun c!515364 () Bool)

(assert (=> b!3090039 (= c!515364 ((_ is Union!9547) lt!1054223))))

(declare-fun e!1932050 () Bool)

(assert (=> b!3090039 (= e!1932054 e!1932050)))

(declare-fun c!515367 () Bool)

(declare-fun bm!216536 () Bool)

(assert (=> bm!216536 (= call!216541 (Exists!1810 (ite c!515367 lambda!114533 lambda!114536)))))

(declare-fun b!3090040 () Bool)

(assert (=> b!3090040 (= e!1932050 e!1932052)))

(assert (=> b!3090040 (= c!515367 ((_ is Star!9547) lt!1054223))))

(declare-fun b!3090041 () Bool)

(assert (=> b!3090041 (= e!1932050 e!1932049)))

(declare-fun res!1266749 () Bool)

(assert (=> b!3090041 (= res!1266749 (matchRSpec!1684 (regOne!19607 lt!1054223) s!11993))))

(assert (=> b!3090041 (=> res!1266749 e!1932049)))

(assert (= (and d!859043 c!515365) b!3090035))

(assert (= (and d!859043 (not c!515365)) b!3090038))

(assert (= (and b!3090038 res!1266748) b!3090033))

(assert (= (and b!3090033 c!515366) b!3090031))

(assert (= (and b!3090033 (not c!515366)) b!3090039))

(assert (= (and b!3090039 c!515364) b!3090041))

(assert (= (and b!3090039 (not c!515364)) b!3090040))

(assert (= (and b!3090041 (not res!1266749)) b!3090036))

(assert (= (and b!3090040 c!515367) b!3090034))

(assert (= (and b!3090040 (not c!515367)) b!3090032))

(assert (= (and b!3090034 (not res!1266750)) b!3090037))

(assert (= (or b!3090037 b!3090032) bm!216536))

(assert (= (or b!3090035 b!3090034) bm!216535))

(declare-fun m!3394911 () Bool)

(assert (=> b!3090036 m!3394911))

(assert (=> bm!216535 m!3394699))

(declare-fun m!3394913 () Bool)

(assert (=> bm!216536 m!3394913))

(declare-fun m!3394915 () Bool)

(assert (=> b!3090041 m!3394915))

(assert (=> b!3089563 d!859043))

(declare-fun d!859073 () Bool)

(assert (=> d!859073 (= (matchR!4429 lt!1054223 s!11993) (matchRSpec!1684 lt!1054223 s!11993))))

(declare-fun lt!1054302 () Unit!49533)

(declare-fun choose!18288 (Regex!9547 List!35412) Unit!49533)

(assert (=> d!859073 (= lt!1054302 (choose!18288 lt!1054223 s!11993))))

(assert (=> d!859073 (validRegex!4280 lt!1054223)))

(assert (=> d!859073 (= (mainMatchTheorem!1684 lt!1054223 s!11993) lt!1054302)))

(declare-fun bs!534211 () Bool)

(assert (= bs!534211 d!859073))

(assert (=> bs!534211 m!3394719))

(assert (=> bs!534211 m!3394711))

(declare-fun m!3394923 () Bool)

(assert (=> bs!534211 m!3394923))

(declare-fun m!3394925 () Bool)

(assert (=> bs!534211 m!3394925))

(assert (=> b!3089563 d!859073))

(declare-fun d!859077 () Bool)

(declare-fun isEmpty!19629 (Option!6834) Bool)

(assert (=> d!859077 (= (isDefined!5385 lt!1054220) (not (isEmpty!19629 lt!1054220)))))

(declare-fun bs!534213 () Bool)

(assert (= bs!534213 d!859077))

(declare-fun m!3394927 () Bool)

(assert (=> bs!534213 m!3394927))

(assert (=> b!3089563 d!859077))

(declare-fun b!3090114 () Bool)

(declare-fun res!1266775 () Bool)

(declare-fun e!1932088 () Bool)

(assert (=> b!3090114 (=> (not res!1266775) (not e!1932088))))

(declare-fun lt!1054311 () Option!6834)

(assert (=> b!3090114 (= res!1266775 (matchR!4429 lt!1054224 (_1!20234 (get!11073 lt!1054311))))))

(declare-fun b!3090115 () Bool)

(declare-fun e!1932090 () Bool)

(assert (=> b!3090115 (= e!1932090 (matchR!4429 lt!1054221 s!11993))))

(declare-fun b!3090116 () Bool)

(declare-fun e!1932089 () Option!6834)

(assert (=> b!3090116 (= e!1932089 None!6833)))

(declare-fun d!859079 () Bool)

(declare-fun e!1932087 () Bool)

(assert (=> d!859079 e!1932087))

(declare-fun res!1266773 () Bool)

(assert (=> d!859079 (=> res!1266773 e!1932087)))

(assert (=> d!859079 (= res!1266773 e!1932088)))

(declare-fun res!1266774 () Bool)

(assert (=> d!859079 (=> (not res!1266774) (not e!1932088))))

(assert (=> d!859079 (= res!1266774 (isDefined!5385 lt!1054311))))

(declare-fun e!1932091 () Option!6834)

(assert (=> d!859079 (= lt!1054311 e!1932091)))

(declare-fun c!515377 () Bool)

(assert (=> d!859079 (= c!515377 e!1932090)))

(declare-fun res!1266772 () Bool)

(assert (=> d!859079 (=> (not res!1266772) (not e!1932090))))

(assert (=> d!859079 (= res!1266772 (matchR!4429 lt!1054224 Nil!35288))))

(assert (=> d!859079 (validRegex!4280 lt!1054224)))

(assert (=> d!859079 (= (findConcatSeparation!1228 lt!1054224 lt!1054221 Nil!35288 s!11993 s!11993) lt!1054311)))

(declare-fun b!3090117 () Bool)

(declare-fun ++!8489 (List!35412 List!35412) List!35412)

(assert (=> b!3090117 (= e!1932088 (= (++!8489 (_1!20234 (get!11073 lt!1054311)) (_2!20234 (get!11073 lt!1054311))) s!11993))))

(declare-fun b!3090118 () Bool)

(declare-fun lt!1054310 () Unit!49533)

(declare-fun lt!1054312 () Unit!49533)

(assert (=> b!3090118 (= lt!1054310 lt!1054312)))

(assert (=> b!3090118 (= (++!8489 (++!8489 Nil!35288 (Cons!35288 (h!40708 s!11993) Nil!35288)) (t!234477 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1084 (List!35412 C!19280 List!35412 List!35412) Unit!49533)

(assert (=> b!3090118 (= lt!1054312 (lemmaMoveElementToOtherListKeepsConcatEq!1084 Nil!35288 (h!40708 s!11993) (t!234477 s!11993) s!11993))))

(assert (=> b!3090118 (= e!1932089 (findConcatSeparation!1228 lt!1054224 lt!1054221 (++!8489 Nil!35288 (Cons!35288 (h!40708 s!11993) Nil!35288)) (t!234477 s!11993) s!11993))))

(declare-fun b!3090119 () Bool)

(assert (=> b!3090119 (= e!1932091 e!1932089)))

(declare-fun c!515376 () Bool)

(assert (=> b!3090119 (= c!515376 ((_ is Nil!35288) s!11993))))

(declare-fun b!3090120 () Bool)

(assert (=> b!3090120 (= e!1932091 (Some!6833 (tuple2!34205 Nil!35288 s!11993)))))

(declare-fun b!3090121 () Bool)

(assert (=> b!3090121 (= e!1932087 (not (isDefined!5385 lt!1054311)))))

(declare-fun b!3090122 () Bool)

(declare-fun res!1266776 () Bool)

(assert (=> b!3090122 (=> (not res!1266776) (not e!1932088))))

(assert (=> b!3090122 (= res!1266776 (matchR!4429 lt!1054221 (_2!20234 (get!11073 lt!1054311))))))

(assert (= (and d!859079 res!1266772) b!3090115))

(assert (= (and d!859079 c!515377) b!3090120))

(assert (= (and d!859079 (not c!515377)) b!3090119))

(assert (= (and b!3090119 c!515376) b!3090116))

(assert (= (and b!3090119 (not c!515376)) b!3090118))

(assert (= (and d!859079 res!1266774) b!3090114))

(assert (= (and b!3090114 res!1266775) b!3090122))

(assert (= (and b!3090122 res!1266776) b!3090117))

(assert (= (and d!859079 (not res!1266773)) b!3090121))

(declare-fun m!3394935 () Bool)

(assert (=> b!3090121 m!3394935))

(assert (=> d!859079 m!3394935))

(declare-fun m!3394937 () Bool)

(assert (=> d!859079 m!3394937))

(declare-fun m!3394939 () Bool)

(assert (=> d!859079 m!3394939))

(declare-fun m!3394941 () Bool)

(assert (=> b!3090114 m!3394941))

(declare-fun m!3394943 () Bool)

(assert (=> b!3090114 m!3394943))

(assert (=> b!3090117 m!3394941))

(declare-fun m!3394945 () Bool)

(assert (=> b!3090117 m!3394945))

(assert (=> b!3090122 m!3394941))

(declare-fun m!3394947 () Bool)

(assert (=> b!3090122 m!3394947))

(declare-fun m!3394949 () Bool)

(assert (=> b!3090118 m!3394949))

(assert (=> b!3090118 m!3394949))

(declare-fun m!3394951 () Bool)

(assert (=> b!3090118 m!3394951))

(declare-fun m!3394953 () Bool)

(assert (=> b!3090118 m!3394953))

(assert (=> b!3090118 m!3394949))

(declare-fun m!3394955 () Bool)

(assert (=> b!3090118 m!3394955))

(declare-fun m!3394957 () Bool)

(assert (=> b!3090115 m!3394957))

(assert (=> b!3089563 d!859079))

(declare-fun d!859081 () Bool)

(declare-fun choose!18290 (Int) Bool)

(assert (=> d!859081 (= (Exists!1810 lambda!114517) (choose!18290 lambda!114517))))

(declare-fun bs!534220 () Bool)

(assert (= bs!534220 d!859081))

(declare-fun m!3394959 () Bool)

(assert (=> bs!534220 m!3394959))

(assert (=> b!3089563 d!859081))

(declare-fun d!859083 () Bool)

(assert (=> d!859083 (= (Exists!1810 lambda!114518) (choose!18290 lambda!114518))))

(declare-fun bs!534221 () Bool)

(assert (= bs!534221 d!859083))

(declare-fun m!3394961 () Bool)

(assert (=> bs!534221 m!3394961))

(assert (=> b!3089563 d!859083))

(declare-fun bs!534222 () Bool)

(declare-fun d!859085 () Bool)

(assert (= bs!534222 (and d!859085 b!3089563)))

(declare-fun lambda!114544 () Int)

(assert (=> bs!534222 (= lambda!114544 lambda!114517)))

(assert (=> bs!534222 (not (= lambda!114544 lambda!114518))))

(declare-fun bs!534223 () Bool)

(assert (= bs!534223 (and d!859085 b!3090037)))

(assert (=> bs!534223 (not (= lambda!114544 lambda!114533))))

(declare-fun bs!534224 () Bool)

(assert (= bs!534224 (and d!859085 b!3090032)))

(assert (=> bs!534224 (not (= lambda!114544 lambda!114536))))

(assert (=> d!859085 true))

(assert (=> d!859085 true))

(assert (=> d!859085 true))

(assert (=> d!859085 (= (isDefined!5385 (findConcatSeparation!1228 lt!1054224 lt!1054221 Nil!35288 s!11993 s!11993)) (Exists!1810 lambda!114544))))

(declare-fun lt!1054315 () Unit!49533)

(declare-fun choose!18291 (Regex!9547 Regex!9547 List!35412) Unit!49533)

(assert (=> d!859085 (= lt!1054315 (choose!18291 lt!1054224 lt!1054221 s!11993))))

(assert (=> d!859085 (validRegex!4280 lt!1054224)))

(assert (=> d!859085 (= (lemmaFindConcatSeparationEquivalentToExists!998 lt!1054224 lt!1054221 s!11993) lt!1054315)))

(declare-fun bs!534225 () Bool)

(assert (= bs!534225 d!859085))

(declare-fun m!3394963 () Bool)

(assert (=> bs!534225 m!3394963))

(declare-fun m!3394965 () Bool)

(assert (=> bs!534225 m!3394965))

(assert (=> bs!534225 m!3394709))

(declare-fun m!3394967 () Bool)

(assert (=> bs!534225 m!3394967))

(assert (=> bs!534225 m!3394939))

(assert (=> bs!534225 m!3394709))

(assert (=> b!3089563 d!859085))

(declare-fun bs!534226 () Bool)

(declare-fun d!859087 () Bool)

(assert (= bs!534226 (and d!859087 b!3090032)))

(declare-fun lambda!114549 () Int)

(assert (=> bs!534226 (not (= lambda!114549 lambda!114536))))

(declare-fun bs!534227 () Bool)

(assert (= bs!534227 (and d!859087 b!3089563)))

(assert (=> bs!534227 (= lambda!114549 lambda!114517)))

(declare-fun bs!534228 () Bool)

(assert (= bs!534228 (and d!859087 d!859085)))

(assert (=> bs!534228 (= lambda!114549 lambda!114544)))

(assert (=> bs!534227 (not (= lambda!114549 lambda!114518))))

(declare-fun bs!534229 () Bool)

(assert (= bs!534229 (and d!859087 b!3090037)))

(assert (=> bs!534229 (not (= lambda!114549 lambda!114533))))

(assert (=> d!859087 true))

(assert (=> d!859087 true))

(assert (=> d!859087 true))

(declare-fun lambda!114550 () Int)

(assert (=> bs!534226 (= (and (= lt!1054224 (regOne!19606 lt!1054223)) (= lt!1054221 (regTwo!19606 lt!1054223))) (= lambda!114550 lambda!114536))))

(declare-fun bs!534230 () Bool)

(assert (= bs!534230 d!859087))

(assert (=> bs!534230 (not (= lambda!114550 lambda!114549))))

(assert (=> bs!534227 (not (= lambda!114550 lambda!114517))))

(assert (=> bs!534228 (not (= lambda!114550 lambda!114544))))

(assert (=> bs!534227 (= lambda!114550 lambda!114518)))

(assert (=> bs!534229 (not (= lambda!114550 lambda!114533))))

(assert (=> d!859087 true))

(assert (=> d!859087 true))

(assert (=> d!859087 true))

(assert (=> d!859087 (= (Exists!1810 lambda!114549) (Exists!1810 lambda!114550))))

(declare-fun lt!1054318 () Unit!49533)

(declare-fun choose!18292 (Regex!9547 Regex!9547 List!35412) Unit!49533)

(assert (=> d!859087 (= lt!1054318 (choose!18292 lt!1054224 lt!1054221 s!11993))))

(assert (=> d!859087 (validRegex!4280 lt!1054224)))

(assert (=> d!859087 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!564 lt!1054224 lt!1054221 s!11993) lt!1054318)))

(declare-fun m!3394969 () Bool)

(assert (=> bs!534230 m!3394969))

(declare-fun m!3394971 () Bool)

(assert (=> bs!534230 m!3394971))

(declare-fun m!3394973 () Bool)

(assert (=> bs!534230 m!3394973))

(assert (=> bs!534230 m!3394939))

(assert (=> b!3089563 d!859087))

(declare-fun b!3090163 () Bool)

(declare-fun res!1266808 () Bool)

(declare-fun e!1932117 () Bool)

(assert (=> b!3090163 (=> res!1266808 e!1932117)))

(assert (=> b!3090163 (= res!1266808 (not ((_ is ElementMatch!9547) (regOne!19606 r!17423))))))

(declare-fun e!1932115 () Bool)

(assert (=> b!3090163 (= e!1932115 e!1932117)))

(declare-fun d!859089 () Bool)

(declare-fun e!1932113 () Bool)

(assert (=> d!859089 e!1932113))

(declare-fun c!515385 () Bool)

(assert (=> d!859089 (= c!515385 ((_ is EmptyExpr!9547) (regOne!19606 r!17423)))))

(declare-fun lt!1054321 () Bool)

(declare-fun e!1932118 () Bool)

(assert (=> d!859089 (= lt!1054321 e!1932118)))

(declare-fun c!515386 () Bool)

(assert (=> d!859089 (= c!515386 (isEmpty!19628 (_1!20234 lt!1054217)))))

(assert (=> d!859089 (validRegex!4280 (regOne!19606 r!17423))))

(assert (=> d!859089 (= (matchR!4429 (regOne!19606 r!17423) (_1!20234 lt!1054217)) lt!1054321)))

(declare-fun b!3090164 () Bool)

(declare-fun call!216546 () Bool)

(assert (=> b!3090164 (= e!1932113 (= lt!1054321 call!216546))))

(declare-fun b!3090165 () Bool)

(assert (=> b!3090165 (= e!1932115 (not lt!1054321))))

(declare-fun b!3090166 () Bool)

(declare-fun res!1266809 () Bool)

(declare-fun e!1932116 () Bool)

(assert (=> b!3090166 (=> (not res!1266809) (not e!1932116))))

(assert (=> b!3090166 (= res!1266809 (not call!216546))))

(declare-fun b!3090167 () Bool)

(declare-fun res!1266807 () Bool)

(declare-fun e!1932112 () Bool)

(assert (=> b!3090167 (=> res!1266807 e!1932112)))

(declare-fun tail!5073 (List!35412) List!35412)

(assert (=> b!3090167 (= res!1266807 (not (isEmpty!19628 (tail!5073 (_1!20234 lt!1054217)))))))

(declare-fun b!3090168 () Bool)

(declare-fun e!1932114 () Bool)

(assert (=> b!3090168 (= e!1932114 e!1932112)))

(declare-fun res!1266806 () Bool)

(assert (=> b!3090168 (=> res!1266806 e!1932112)))

(assert (=> b!3090168 (= res!1266806 call!216546)))

(declare-fun b!3090169 () Bool)

(declare-fun head!6847 (List!35412) C!19280)

(assert (=> b!3090169 (= e!1932112 (not (= (head!6847 (_1!20234 lt!1054217)) (c!515217 (regOne!19606 r!17423)))))))

(declare-fun b!3090170 () Bool)

(declare-fun res!1266812 () Bool)

(assert (=> b!3090170 (=> res!1266812 e!1932117)))

(assert (=> b!3090170 (= res!1266812 e!1932116)))

(declare-fun res!1266810 () Bool)

(assert (=> b!3090170 (=> (not res!1266810) (not e!1932116))))

(assert (=> b!3090170 (= res!1266810 lt!1054321)))

(declare-fun b!3090171 () Bool)

(declare-fun res!1266811 () Bool)

(assert (=> b!3090171 (=> (not res!1266811) (not e!1932116))))

(assert (=> b!3090171 (= res!1266811 (isEmpty!19628 (tail!5073 (_1!20234 lt!1054217))))))

(declare-fun bm!216541 () Bool)

(assert (=> bm!216541 (= call!216546 (isEmpty!19628 (_1!20234 lt!1054217)))))

(declare-fun b!3090172 () Bool)

(declare-fun derivativeStep!2788 (Regex!9547 C!19280) Regex!9547)

(assert (=> b!3090172 (= e!1932118 (matchR!4429 (derivativeStep!2788 (regOne!19606 r!17423) (head!6847 (_1!20234 lt!1054217))) (tail!5073 (_1!20234 lt!1054217))))))

(declare-fun b!3090173 () Bool)

(assert (=> b!3090173 (= e!1932118 (nullable!3193 (regOne!19606 r!17423)))))

(declare-fun b!3090174 () Bool)

(assert (=> b!3090174 (= e!1932113 e!1932115)))

(declare-fun c!515384 () Bool)

(assert (=> b!3090174 (= c!515384 ((_ is EmptyLang!9547) (regOne!19606 r!17423)))))

(declare-fun b!3090175 () Bool)

(assert (=> b!3090175 (= e!1932116 (= (head!6847 (_1!20234 lt!1054217)) (c!515217 (regOne!19606 r!17423))))))

(declare-fun b!3090176 () Bool)

(assert (=> b!3090176 (= e!1932117 e!1932114)))

(declare-fun res!1266805 () Bool)

(assert (=> b!3090176 (=> (not res!1266805) (not e!1932114))))

(assert (=> b!3090176 (= res!1266805 (not lt!1054321))))

(assert (= (and d!859089 c!515386) b!3090173))

(assert (= (and d!859089 (not c!515386)) b!3090172))

(assert (= (and d!859089 c!515385) b!3090164))

(assert (= (and d!859089 (not c!515385)) b!3090174))

(assert (= (and b!3090174 c!515384) b!3090165))

(assert (= (and b!3090174 (not c!515384)) b!3090163))

(assert (= (and b!3090163 (not res!1266808)) b!3090170))

(assert (= (and b!3090170 res!1266810) b!3090166))

(assert (= (and b!3090166 res!1266809) b!3090171))

(assert (= (and b!3090171 res!1266811) b!3090175))

(assert (= (and b!3090170 (not res!1266812)) b!3090176))

(assert (= (and b!3090176 res!1266805) b!3090168))

(assert (= (and b!3090168 (not res!1266806)) b!3090167))

(assert (= (and b!3090167 (not res!1266807)) b!3090169))

(assert (= (or b!3090164 b!3090166 b!3090168) bm!216541))

(declare-fun m!3394975 () Bool)

(assert (=> b!3090167 m!3394975))

(assert (=> b!3090167 m!3394975))

(declare-fun m!3394977 () Bool)

(assert (=> b!3090167 m!3394977))

(declare-fun m!3394979 () Bool)

(assert (=> b!3090175 m!3394979))

(assert (=> b!3090173 m!3394811))

(assert (=> b!3090169 m!3394979))

(declare-fun m!3394981 () Bool)

(assert (=> d!859089 m!3394981))

(assert (=> d!859089 m!3394817))

(assert (=> b!3090171 m!3394975))

(assert (=> b!3090171 m!3394975))

(assert (=> b!3090171 m!3394977))

(assert (=> b!3090172 m!3394979))

(assert (=> b!3090172 m!3394979))

(declare-fun m!3394983 () Bool)

(assert (=> b!3090172 m!3394983))

(assert (=> b!3090172 m!3394975))

(assert (=> b!3090172 m!3394983))

(assert (=> b!3090172 m!3394975))

(declare-fun m!3394985 () Bool)

(assert (=> b!3090172 m!3394985))

(assert (=> bm!216541 m!3394981))

(assert (=> b!3089562 d!859089))

(declare-fun b!3090178 () Bool)

(declare-fun res!1266814 () Bool)

(declare-fun e!1932120 () Bool)

(assert (=> b!3090178 (=> (not res!1266814) (not e!1932120))))

(declare-fun call!216548 () Bool)

(assert (=> b!3090178 (= res!1266814 call!216548)))

(declare-fun e!1932125 () Bool)

(assert (=> b!3090178 (= e!1932125 e!1932120)))

(declare-fun b!3090179 () Bool)

(declare-fun res!1266817 () Bool)

(declare-fun e!1932122 () Bool)

(assert (=> b!3090179 (=> res!1266817 e!1932122)))

(assert (=> b!3090179 (= res!1266817 (not ((_ is Concat!14868) (regTwo!19606 r!17423))))))

(assert (=> b!3090179 (= e!1932125 e!1932122)))

(declare-fun b!3090180 () Bool)

(declare-fun e!1932119 () Bool)

(declare-fun e!1932123 () Bool)

(assert (=> b!3090180 (= e!1932119 e!1932123)))

(declare-fun res!1266816 () Bool)

(assert (=> b!3090180 (= res!1266816 (not (nullable!3193 (reg!9876 (regTwo!19606 r!17423)))))))

(assert (=> b!3090180 (=> (not res!1266816) (not e!1932123))))

(declare-fun b!3090181 () Bool)

(declare-fun e!1932121 () Bool)

(assert (=> b!3090181 (= e!1932121 e!1932119)))

(declare-fun c!515388 () Bool)

(assert (=> b!3090181 (= c!515388 ((_ is Star!9547) (regTwo!19606 r!17423)))))

(declare-fun b!3090182 () Bool)

(assert (=> b!3090182 (= e!1932119 e!1932125)))

(declare-fun c!515387 () Bool)

(assert (=> b!3090182 (= c!515387 ((_ is Union!9547) (regTwo!19606 r!17423)))))

(declare-fun bm!216542 () Bool)

(declare-fun call!216547 () Bool)

(assert (=> bm!216542 (= call!216547 (validRegex!4280 (ite c!515387 (regTwo!19607 (regTwo!19606 r!17423)) (regOne!19606 (regTwo!19606 r!17423)))))))

(declare-fun bm!216543 () Bool)

(declare-fun call!216549 () Bool)

(assert (=> bm!216543 (= call!216548 call!216549)))

(declare-fun b!3090177 () Bool)

(declare-fun e!1932124 () Bool)

(assert (=> b!3090177 (= e!1932122 e!1932124)))

(declare-fun res!1266815 () Bool)

(assert (=> b!3090177 (=> (not res!1266815) (not e!1932124))))

(assert (=> b!3090177 (= res!1266815 call!216547)))

(declare-fun d!859091 () Bool)

(declare-fun res!1266813 () Bool)

(assert (=> d!859091 (=> res!1266813 e!1932121)))

(assert (=> d!859091 (= res!1266813 ((_ is ElementMatch!9547) (regTwo!19606 r!17423)))))

(assert (=> d!859091 (= (validRegex!4280 (regTwo!19606 r!17423)) e!1932121)))

(declare-fun b!3090183 () Bool)

(assert (=> b!3090183 (= e!1932123 call!216549)))

(declare-fun b!3090184 () Bool)

(assert (=> b!3090184 (= e!1932124 call!216548)))

(declare-fun b!3090185 () Bool)

(assert (=> b!3090185 (= e!1932120 call!216547)))

(declare-fun bm!216544 () Bool)

(assert (=> bm!216544 (= call!216549 (validRegex!4280 (ite c!515388 (reg!9876 (regTwo!19606 r!17423)) (ite c!515387 (regOne!19607 (regTwo!19606 r!17423)) (regTwo!19606 (regTwo!19606 r!17423))))))))

(assert (= (and d!859091 (not res!1266813)) b!3090181))

(assert (= (and b!3090181 c!515388) b!3090180))

(assert (= (and b!3090181 (not c!515388)) b!3090182))

(assert (= (and b!3090180 res!1266816) b!3090183))

(assert (= (and b!3090182 c!515387) b!3090178))

(assert (= (and b!3090182 (not c!515387)) b!3090179))

(assert (= (and b!3090178 res!1266814) b!3090185))

(assert (= (and b!3090179 (not res!1266817)) b!3090177))

(assert (= (and b!3090177 res!1266815) b!3090184))

(assert (= (or b!3090178 b!3090184) bm!216543))

(assert (= (or b!3090185 b!3090177) bm!216542))

(assert (= (or b!3090183 bm!216543) bm!216544))

(declare-fun m!3394987 () Bool)

(assert (=> b!3090180 m!3394987))

(declare-fun m!3394989 () Bool)

(assert (=> bm!216542 m!3394989))

(declare-fun m!3394991 () Bool)

(assert (=> bm!216544 m!3394991))

(assert (=> b!3089562 d!859091))

(declare-fun b!3090186 () Bool)

(declare-fun res!1266821 () Bool)

(declare-fun e!1932131 () Bool)

(assert (=> b!3090186 (=> res!1266821 e!1932131)))

(assert (=> b!3090186 (= res!1266821 (not ((_ is ElementMatch!9547) lt!1054224)))))

(declare-fun e!1932129 () Bool)

(assert (=> b!3090186 (= e!1932129 e!1932131)))

(declare-fun d!859093 () Bool)

(declare-fun e!1932127 () Bool)

(assert (=> d!859093 e!1932127))

(declare-fun c!515390 () Bool)

(assert (=> d!859093 (= c!515390 ((_ is EmptyExpr!9547) lt!1054224))))

(declare-fun lt!1054322 () Bool)

(declare-fun e!1932132 () Bool)

(assert (=> d!859093 (= lt!1054322 e!1932132)))

(declare-fun c!515391 () Bool)

(assert (=> d!859093 (= c!515391 (isEmpty!19628 (_1!20234 lt!1054217)))))

(assert (=> d!859093 (validRegex!4280 lt!1054224)))

(assert (=> d!859093 (= (matchR!4429 lt!1054224 (_1!20234 lt!1054217)) lt!1054322)))

(declare-fun b!3090187 () Bool)

(declare-fun call!216550 () Bool)

(assert (=> b!3090187 (= e!1932127 (= lt!1054322 call!216550))))

(declare-fun b!3090188 () Bool)

(assert (=> b!3090188 (= e!1932129 (not lt!1054322))))

(declare-fun b!3090189 () Bool)

(declare-fun res!1266822 () Bool)

(declare-fun e!1932130 () Bool)

(assert (=> b!3090189 (=> (not res!1266822) (not e!1932130))))

(assert (=> b!3090189 (= res!1266822 (not call!216550))))

(declare-fun b!3090190 () Bool)

(declare-fun res!1266820 () Bool)

(declare-fun e!1932126 () Bool)

(assert (=> b!3090190 (=> res!1266820 e!1932126)))

(assert (=> b!3090190 (= res!1266820 (not (isEmpty!19628 (tail!5073 (_1!20234 lt!1054217)))))))

(declare-fun b!3090191 () Bool)

(declare-fun e!1932128 () Bool)

(assert (=> b!3090191 (= e!1932128 e!1932126)))

(declare-fun res!1266819 () Bool)

(assert (=> b!3090191 (=> res!1266819 e!1932126)))

(assert (=> b!3090191 (= res!1266819 call!216550)))

(declare-fun b!3090192 () Bool)

(assert (=> b!3090192 (= e!1932126 (not (= (head!6847 (_1!20234 lt!1054217)) (c!515217 lt!1054224))))))

(declare-fun b!3090193 () Bool)

(declare-fun res!1266825 () Bool)

(assert (=> b!3090193 (=> res!1266825 e!1932131)))

(assert (=> b!3090193 (= res!1266825 e!1932130)))

(declare-fun res!1266823 () Bool)

(assert (=> b!3090193 (=> (not res!1266823) (not e!1932130))))

(assert (=> b!3090193 (= res!1266823 lt!1054322)))

(declare-fun b!3090194 () Bool)

(declare-fun res!1266824 () Bool)

(assert (=> b!3090194 (=> (not res!1266824) (not e!1932130))))

(assert (=> b!3090194 (= res!1266824 (isEmpty!19628 (tail!5073 (_1!20234 lt!1054217))))))

(declare-fun bm!216545 () Bool)

(assert (=> bm!216545 (= call!216550 (isEmpty!19628 (_1!20234 lt!1054217)))))

(declare-fun b!3090195 () Bool)

(assert (=> b!3090195 (= e!1932132 (matchR!4429 (derivativeStep!2788 lt!1054224 (head!6847 (_1!20234 lt!1054217))) (tail!5073 (_1!20234 lt!1054217))))))

(declare-fun b!3090196 () Bool)

(assert (=> b!3090196 (= e!1932132 (nullable!3193 lt!1054224))))

(declare-fun b!3090197 () Bool)

(assert (=> b!3090197 (= e!1932127 e!1932129)))

(declare-fun c!515389 () Bool)

(assert (=> b!3090197 (= c!515389 ((_ is EmptyLang!9547) lt!1054224))))

(declare-fun b!3090198 () Bool)

(assert (=> b!3090198 (= e!1932130 (= (head!6847 (_1!20234 lt!1054217)) (c!515217 lt!1054224)))))

(declare-fun b!3090199 () Bool)

(assert (=> b!3090199 (= e!1932131 e!1932128)))

(declare-fun res!1266818 () Bool)

(assert (=> b!3090199 (=> (not res!1266818) (not e!1932128))))

(assert (=> b!3090199 (= res!1266818 (not lt!1054322))))

(assert (= (and d!859093 c!515391) b!3090196))

(assert (= (and d!859093 (not c!515391)) b!3090195))

(assert (= (and d!859093 c!515390) b!3090187))

(assert (= (and d!859093 (not c!515390)) b!3090197))

(assert (= (and b!3090197 c!515389) b!3090188))

(assert (= (and b!3090197 (not c!515389)) b!3090186))

(assert (= (and b!3090186 (not res!1266821)) b!3090193))

(assert (= (and b!3090193 res!1266823) b!3090189))

(assert (= (and b!3090189 res!1266822) b!3090194))

(assert (= (and b!3090194 res!1266824) b!3090198))

(assert (= (and b!3090193 (not res!1266825)) b!3090199))

(assert (= (and b!3090199 res!1266818) b!3090191))

(assert (= (and b!3090191 (not res!1266819)) b!3090190))

(assert (= (and b!3090190 (not res!1266820)) b!3090192))

(assert (= (or b!3090187 b!3090189 b!3090191) bm!216545))

(assert (=> b!3090190 m!3394975))

(assert (=> b!3090190 m!3394975))

(assert (=> b!3090190 m!3394977))

(assert (=> b!3090198 m!3394979))

(declare-fun m!3394993 () Bool)

(assert (=> b!3090196 m!3394993))

(assert (=> b!3090192 m!3394979))

(assert (=> d!859093 m!3394981))

(assert (=> d!859093 m!3394939))

(assert (=> b!3090194 m!3394975))

(assert (=> b!3090194 m!3394975))

(assert (=> b!3090194 m!3394977))

(assert (=> b!3090195 m!3394979))

(assert (=> b!3090195 m!3394979))

(declare-fun m!3394995 () Bool)

(assert (=> b!3090195 m!3394995))

(assert (=> b!3090195 m!3394975))

(assert (=> b!3090195 m!3394995))

(assert (=> b!3090195 m!3394975))

(declare-fun m!3394997 () Bool)

(assert (=> b!3090195 m!3394997))

(assert (=> bm!216545 m!3394981))

(assert (=> b!3089562 d!859093))

(declare-fun d!859095 () Bool)

(assert (=> d!859095 (= (matchR!4429 (regOne!19606 r!17423) (_1!20234 lt!1054217)) (matchR!4429 (simplify!502 (regOne!19606 r!17423)) (_1!20234 lt!1054217)))))

(declare-fun lt!1054325 () Unit!49533)

(declare-fun choose!18295 (Regex!9547 List!35412) Unit!49533)

(assert (=> d!859095 (= lt!1054325 (choose!18295 (regOne!19606 r!17423) (_1!20234 lt!1054217)))))

(assert (=> d!859095 (validRegex!4280 (regOne!19606 r!17423))))

(assert (=> d!859095 (= (lemmaSimplifySound!316 (regOne!19606 r!17423) (_1!20234 lt!1054217)) lt!1054325)))

(declare-fun bs!534231 () Bool)

(assert (= bs!534231 d!859095))

(assert (=> bs!534231 m!3394683))

(assert (=> bs!534231 m!3394695))

(assert (=> bs!534231 m!3394817))

(assert (=> bs!534231 m!3394695))

(declare-fun m!3394999 () Bool)

(assert (=> bs!534231 m!3394999))

(declare-fun m!3395001 () Bool)

(assert (=> bs!534231 m!3395001))

(assert (=> b!3089562 d!859095))

(declare-fun d!859097 () Bool)

(assert (=> d!859097 (= (get!11073 lt!1054220) (v!34967 lt!1054220))))

(assert (=> b!3089562 d!859097))

(declare-fun d!859099 () Bool)

(assert (=> d!859099 (= (isEmptyExpr!604 lt!1054221) ((_ is EmptyExpr!9547) lt!1054221))))

(assert (=> b!3089572 d!859099))

(declare-fun bs!534232 () Bool)

(declare-fun b!3090206 () Bool)

(assert (= bs!534232 (and b!3090206 d!859087)))

(declare-fun lambda!114551 () Int)

(assert (=> bs!534232 (not (= lambda!114551 lambda!114550))))

(declare-fun bs!534233 () Bool)

(assert (= bs!534233 (and b!3090206 b!3090032)))

(assert (=> bs!534233 (not (= lambda!114551 lambda!114536))))

(assert (=> bs!534232 (not (= lambda!114551 lambda!114549))))

(declare-fun bs!534234 () Bool)

(assert (= bs!534234 (and b!3090206 b!3089563)))

(assert (=> bs!534234 (not (= lambda!114551 lambda!114517))))

(declare-fun bs!534235 () Bool)

(assert (= bs!534235 (and b!3090206 d!859085)))

(assert (=> bs!534235 (not (= lambda!114551 lambda!114544))))

(assert (=> bs!534234 (not (= lambda!114551 lambda!114518))))

(declare-fun bs!534236 () Bool)

(assert (= bs!534236 (and b!3090206 b!3090037)))

(assert (=> bs!534236 (= (and (= (reg!9876 r!17423) (reg!9876 lt!1054223)) (= r!17423 lt!1054223)) (= lambda!114551 lambda!114533))))

(assert (=> b!3090206 true))

(assert (=> b!3090206 true))

(declare-fun bs!534237 () Bool)

(declare-fun b!3090201 () Bool)

(assert (= bs!534237 (and b!3090201 d!859087)))

(declare-fun lambda!114552 () Int)

(assert (=> bs!534237 (= (and (= (regOne!19606 r!17423) lt!1054224) (= (regTwo!19606 r!17423) lt!1054221)) (= lambda!114552 lambda!114550))))

(declare-fun bs!534238 () Bool)

(assert (= bs!534238 (and b!3090201 b!3090032)))

(assert (=> bs!534238 (= (and (= (regOne!19606 r!17423) (regOne!19606 lt!1054223)) (= (regTwo!19606 r!17423) (regTwo!19606 lt!1054223))) (= lambda!114552 lambda!114536))))

(assert (=> bs!534237 (not (= lambda!114552 lambda!114549))))

(declare-fun bs!534239 () Bool)

(assert (= bs!534239 (and b!3090201 b!3089563)))

(assert (=> bs!534239 (not (= lambda!114552 lambda!114517))))

(declare-fun bs!534240 () Bool)

(assert (= bs!534240 (and b!3090201 b!3090206)))

(assert (=> bs!534240 (not (= lambda!114552 lambda!114551))))

(declare-fun bs!534241 () Bool)

(assert (= bs!534241 (and b!3090201 d!859085)))

(assert (=> bs!534241 (not (= lambda!114552 lambda!114544))))

(assert (=> bs!534239 (= (and (= (regOne!19606 r!17423) lt!1054224) (= (regTwo!19606 r!17423) lt!1054221)) (= lambda!114552 lambda!114518))))

(declare-fun bs!534242 () Bool)

(assert (= bs!534242 (and b!3090201 b!3090037)))

(assert (=> bs!534242 (not (= lambda!114552 lambda!114533))))

(assert (=> b!3090201 true))

(assert (=> b!3090201 true))

(declare-fun b!3090200 () Bool)

(declare-fun e!1932138 () Bool)

(assert (=> b!3090200 (= e!1932138 (= s!11993 (Cons!35288 (c!515217 r!17423) Nil!35288)))))

(declare-fun e!1932136 () Bool)

(declare-fun call!216552 () Bool)

(assert (=> b!3090201 (= e!1932136 call!216552)))

(declare-fun b!3090202 () Bool)

(declare-fun c!515394 () Bool)

(assert (=> b!3090202 (= c!515394 ((_ is ElementMatch!9547) r!17423))))

(declare-fun e!1932137 () Bool)

(assert (=> b!3090202 (= e!1932137 e!1932138)))

(declare-fun b!3090203 () Bool)

(declare-fun res!1266828 () Bool)

(declare-fun e!1932135 () Bool)

(assert (=> b!3090203 (=> res!1266828 e!1932135)))

(declare-fun call!216551 () Bool)

(assert (=> b!3090203 (= res!1266828 call!216551)))

(assert (=> b!3090203 (= e!1932136 e!1932135)))

(declare-fun d!859101 () Bool)

(declare-fun c!515393 () Bool)

(assert (=> d!859101 (= c!515393 ((_ is EmptyExpr!9547) r!17423))))

(declare-fun e!1932139 () Bool)

(assert (=> d!859101 (= (matchRSpec!1684 r!17423 s!11993) e!1932139)))

(declare-fun b!3090204 () Bool)

(assert (=> b!3090204 (= e!1932139 call!216551)))

(declare-fun b!3090205 () Bool)

(declare-fun e!1932133 () Bool)

(assert (=> b!3090205 (= e!1932133 (matchRSpec!1684 (regTwo!19607 r!17423) s!11993))))

(assert (=> b!3090206 (= e!1932135 call!216552)))

(declare-fun bm!216546 () Bool)

(assert (=> bm!216546 (= call!216551 (isEmpty!19628 s!11993))))

(declare-fun b!3090207 () Bool)

(assert (=> b!3090207 (= e!1932139 e!1932137)))

(declare-fun res!1266826 () Bool)

(assert (=> b!3090207 (= res!1266826 (not ((_ is EmptyLang!9547) r!17423)))))

(assert (=> b!3090207 (=> (not res!1266826) (not e!1932137))))

(declare-fun b!3090208 () Bool)

(declare-fun c!515392 () Bool)

(assert (=> b!3090208 (= c!515392 ((_ is Union!9547) r!17423))))

(declare-fun e!1932134 () Bool)

(assert (=> b!3090208 (= e!1932138 e!1932134)))

(declare-fun c!515395 () Bool)

(declare-fun bm!216547 () Bool)

(assert (=> bm!216547 (= call!216552 (Exists!1810 (ite c!515395 lambda!114551 lambda!114552)))))

(declare-fun b!3090209 () Bool)

(assert (=> b!3090209 (= e!1932134 e!1932136)))

(assert (=> b!3090209 (= c!515395 ((_ is Star!9547) r!17423))))

(declare-fun b!3090210 () Bool)

(assert (=> b!3090210 (= e!1932134 e!1932133)))

(declare-fun res!1266827 () Bool)

(assert (=> b!3090210 (= res!1266827 (matchRSpec!1684 (regOne!19607 r!17423) s!11993))))

(assert (=> b!3090210 (=> res!1266827 e!1932133)))

(assert (= (and d!859101 c!515393) b!3090204))

(assert (= (and d!859101 (not c!515393)) b!3090207))

(assert (= (and b!3090207 res!1266826) b!3090202))

(assert (= (and b!3090202 c!515394) b!3090200))

(assert (= (and b!3090202 (not c!515394)) b!3090208))

(assert (= (and b!3090208 c!515392) b!3090210))

(assert (= (and b!3090208 (not c!515392)) b!3090209))

(assert (= (and b!3090210 (not res!1266827)) b!3090205))

(assert (= (and b!3090209 c!515395) b!3090203))

(assert (= (and b!3090209 (not c!515395)) b!3090201))

(assert (= (and b!3090203 (not res!1266828)) b!3090206))

(assert (= (or b!3090206 b!3090201) bm!216547))

(assert (= (or b!3090204 b!3090203) bm!216546))

(declare-fun m!3395003 () Bool)

(assert (=> b!3090205 m!3395003))

(assert (=> bm!216546 m!3394699))

(declare-fun m!3395005 () Bool)

(assert (=> bm!216547 m!3395005))

(declare-fun m!3395007 () Bool)

(assert (=> b!3090210 m!3395007))

(assert (=> b!3089566 d!859101))

(declare-fun b!3090211 () Bool)

(declare-fun res!1266832 () Bool)

(declare-fun e!1932145 () Bool)

(assert (=> b!3090211 (=> res!1266832 e!1932145)))

(assert (=> b!3090211 (= res!1266832 (not ((_ is ElementMatch!9547) r!17423)))))

(declare-fun e!1932143 () Bool)

(assert (=> b!3090211 (= e!1932143 e!1932145)))

(declare-fun d!859103 () Bool)

(declare-fun e!1932141 () Bool)

(assert (=> d!859103 e!1932141))

(declare-fun c!515397 () Bool)

(assert (=> d!859103 (= c!515397 ((_ is EmptyExpr!9547) r!17423))))

(declare-fun lt!1054326 () Bool)

(declare-fun e!1932146 () Bool)

(assert (=> d!859103 (= lt!1054326 e!1932146)))

(declare-fun c!515398 () Bool)

(assert (=> d!859103 (= c!515398 (isEmpty!19628 s!11993))))

(assert (=> d!859103 (validRegex!4280 r!17423)))

(assert (=> d!859103 (= (matchR!4429 r!17423 s!11993) lt!1054326)))

(declare-fun b!3090212 () Bool)

(declare-fun call!216553 () Bool)

(assert (=> b!3090212 (= e!1932141 (= lt!1054326 call!216553))))

(declare-fun b!3090213 () Bool)

(assert (=> b!3090213 (= e!1932143 (not lt!1054326))))

(declare-fun b!3090214 () Bool)

(declare-fun res!1266833 () Bool)

(declare-fun e!1932144 () Bool)

(assert (=> b!3090214 (=> (not res!1266833) (not e!1932144))))

(assert (=> b!3090214 (= res!1266833 (not call!216553))))

(declare-fun b!3090215 () Bool)

(declare-fun res!1266831 () Bool)

(declare-fun e!1932140 () Bool)

(assert (=> b!3090215 (=> res!1266831 e!1932140)))

(assert (=> b!3090215 (= res!1266831 (not (isEmpty!19628 (tail!5073 s!11993))))))

(declare-fun b!3090216 () Bool)

(declare-fun e!1932142 () Bool)

(assert (=> b!3090216 (= e!1932142 e!1932140)))

(declare-fun res!1266830 () Bool)

(assert (=> b!3090216 (=> res!1266830 e!1932140)))

(assert (=> b!3090216 (= res!1266830 call!216553)))

(declare-fun b!3090217 () Bool)

(assert (=> b!3090217 (= e!1932140 (not (= (head!6847 s!11993) (c!515217 r!17423))))))

(declare-fun b!3090218 () Bool)

(declare-fun res!1266836 () Bool)

(assert (=> b!3090218 (=> res!1266836 e!1932145)))

(assert (=> b!3090218 (= res!1266836 e!1932144)))

(declare-fun res!1266834 () Bool)

(assert (=> b!3090218 (=> (not res!1266834) (not e!1932144))))

(assert (=> b!3090218 (= res!1266834 lt!1054326)))

(declare-fun b!3090219 () Bool)

(declare-fun res!1266835 () Bool)

(assert (=> b!3090219 (=> (not res!1266835) (not e!1932144))))

(assert (=> b!3090219 (= res!1266835 (isEmpty!19628 (tail!5073 s!11993)))))

(declare-fun bm!216548 () Bool)

(assert (=> bm!216548 (= call!216553 (isEmpty!19628 s!11993))))

(declare-fun b!3090220 () Bool)

(assert (=> b!3090220 (= e!1932146 (matchR!4429 (derivativeStep!2788 r!17423 (head!6847 s!11993)) (tail!5073 s!11993)))))

(declare-fun b!3090221 () Bool)

(assert (=> b!3090221 (= e!1932146 (nullable!3193 r!17423))))

(declare-fun b!3090222 () Bool)

(assert (=> b!3090222 (= e!1932141 e!1932143)))

(declare-fun c!515396 () Bool)

(assert (=> b!3090222 (= c!515396 ((_ is EmptyLang!9547) r!17423))))

(declare-fun b!3090223 () Bool)

(assert (=> b!3090223 (= e!1932144 (= (head!6847 s!11993) (c!515217 r!17423)))))

(declare-fun b!3090224 () Bool)

(assert (=> b!3090224 (= e!1932145 e!1932142)))

(declare-fun res!1266829 () Bool)

(assert (=> b!3090224 (=> (not res!1266829) (not e!1932142))))

(assert (=> b!3090224 (= res!1266829 (not lt!1054326))))

(assert (= (and d!859103 c!515398) b!3090221))

(assert (= (and d!859103 (not c!515398)) b!3090220))

(assert (= (and d!859103 c!515397) b!3090212))

(assert (= (and d!859103 (not c!515397)) b!3090222))

(assert (= (and b!3090222 c!515396) b!3090213))

(assert (= (and b!3090222 (not c!515396)) b!3090211))

(assert (= (and b!3090211 (not res!1266832)) b!3090218))

(assert (= (and b!3090218 res!1266834) b!3090214))

(assert (= (and b!3090214 res!1266833) b!3090219))

(assert (= (and b!3090219 res!1266835) b!3090223))

(assert (= (and b!3090218 (not res!1266836)) b!3090224))

(assert (= (and b!3090224 res!1266829) b!3090216))

(assert (= (and b!3090216 (not res!1266830)) b!3090215))

(assert (= (and b!3090215 (not res!1266831)) b!3090217))

(assert (= (or b!3090212 b!3090214 b!3090216) bm!216548))

(declare-fun m!3395009 () Bool)

(assert (=> b!3090215 m!3395009))

(assert (=> b!3090215 m!3395009))

(declare-fun m!3395011 () Bool)

(assert (=> b!3090215 m!3395011))

(declare-fun m!3395013 () Bool)

(assert (=> b!3090223 m!3395013))

(declare-fun m!3395015 () Bool)

(assert (=> b!3090221 m!3395015))

(assert (=> b!3090217 m!3395013))

(assert (=> d!859103 m!3394699))

(assert (=> d!859103 m!3394721))

(assert (=> b!3090219 m!3395009))

(assert (=> b!3090219 m!3395009))

(assert (=> b!3090219 m!3395011))

(assert (=> b!3090220 m!3395013))

(assert (=> b!3090220 m!3395013))

(declare-fun m!3395017 () Bool)

(assert (=> b!3090220 m!3395017))

(assert (=> b!3090220 m!3395009))

(assert (=> b!3090220 m!3395017))

(assert (=> b!3090220 m!3395009))

(declare-fun m!3395019 () Bool)

(assert (=> b!3090220 m!3395019))

(assert (=> bm!216548 m!3394699))

(assert (=> b!3089566 d!859103))

(declare-fun d!859105 () Bool)

(assert (=> d!859105 (= (matchR!4429 r!17423 s!11993) (matchRSpec!1684 r!17423 s!11993))))

(declare-fun lt!1054327 () Unit!49533)

(assert (=> d!859105 (= lt!1054327 (choose!18288 r!17423 s!11993))))

(assert (=> d!859105 (validRegex!4280 r!17423)))

(assert (=> d!859105 (= (mainMatchTheorem!1684 r!17423 s!11993) lt!1054327)))

(declare-fun bs!534243 () Bool)

(assert (= bs!534243 d!859105))

(assert (=> bs!534243 m!3394725))

(assert (=> bs!534243 m!3394723))

(declare-fun m!3395021 () Bool)

(assert (=> bs!534243 m!3395021))

(assert (=> bs!534243 m!3394721))

(assert (=> b!3089566 d!859105))

(declare-fun d!859107 () Bool)

(assert (=> d!859107 (= (isEmptyLang!598 lt!1054221) ((_ is EmptyLang!9547) lt!1054221))))

(assert (=> b!3089571 d!859107))

(declare-fun b!3090225 () Bool)

(declare-fun res!1266840 () Bool)

(declare-fun e!1932152 () Bool)

(assert (=> b!3090225 (=> res!1266840 e!1932152)))

(assert (=> b!3090225 (= res!1266840 (not ((_ is ElementMatch!9547) lt!1054223)))))

(declare-fun e!1932150 () Bool)

(assert (=> b!3090225 (= e!1932150 e!1932152)))

(declare-fun d!859109 () Bool)

(declare-fun e!1932148 () Bool)

(assert (=> d!859109 e!1932148))

(declare-fun c!515400 () Bool)

(assert (=> d!859109 (= c!515400 ((_ is EmptyExpr!9547) lt!1054223))))

(declare-fun lt!1054328 () Bool)

(declare-fun e!1932153 () Bool)

(assert (=> d!859109 (= lt!1054328 e!1932153)))

(declare-fun c!515401 () Bool)

(assert (=> d!859109 (= c!515401 (isEmpty!19628 s!11993))))

(assert (=> d!859109 (validRegex!4280 lt!1054223)))

(assert (=> d!859109 (= (matchR!4429 lt!1054223 s!11993) lt!1054328)))

(declare-fun b!3090226 () Bool)

(declare-fun call!216554 () Bool)

(assert (=> b!3090226 (= e!1932148 (= lt!1054328 call!216554))))

(declare-fun b!3090227 () Bool)

(assert (=> b!3090227 (= e!1932150 (not lt!1054328))))

(declare-fun b!3090228 () Bool)

(declare-fun res!1266841 () Bool)

(declare-fun e!1932151 () Bool)

(assert (=> b!3090228 (=> (not res!1266841) (not e!1932151))))

(assert (=> b!3090228 (= res!1266841 (not call!216554))))

(declare-fun b!3090229 () Bool)

(declare-fun res!1266839 () Bool)

(declare-fun e!1932147 () Bool)

(assert (=> b!3090229 (=> res!1266839 e!1932147)))

(assert (=> b!3090229 (= res!1266839 (not (isEmpty!19628 (tail!5073 s!11993))))))

(declare-fun b!3090230 () Bool)

(declare-fun e!1932149 () Bool)

(assert (=> b!3090230 (= e!1932149 e!1932147)))

(declare-fun res!1266838 () Bool)

(assert (=> b!3090230 (=> res!1266838 e!1932147)))

(assert (=> b!3090230 (= res!1266838 call!216554)))

(declare-fun b!3090231 () Bool)

(assert (=> b!3090231 (= e!1932147 (not (= (head!6847 s!11993) (c!515217 lt!1054223))))))

(declare-fun b!3090232 () Bool)

(declare-fun res!1266844 () Bool)

(assert (=> b!3090232 (=> res!1266844 e!1932152)))

(assert (=> b!3090232 (= res!1266844 e!1932151)))

(declare-fun res!1266842 () Bool)

(assert (=> b!3090232 (=> (not res!1266842) (not e!1932151))))

(assert (=> b!3090232 (= res!1266842 lt!1054328)))

(declare-fun b!3090233 () Bool)

(declare-fun res!1266843 () Bool)

(assert (=> b!3090233 (=> (not res!1266843) (not e!1932151))))

(assert (=> b!3090233 (= res!1266843 (isEmpty!19628 (tail!5073 s!11993)))))

(declare-fun bm!216549 () Bool)

(assert (=> bm!216549 (= call!216554 (isEmpty!19628 s!11993))))

(declare-fun b!3090234 () Bool)

(assert (=> b!3090234 (= e!1932153 (matchR!4429 (derivativeStep!2788 lt!1054223 (head!6847 s!11993)) (tail!5073 s!11993)))))

(declare-fun b!3090235 () Bool)

(assert (=> b!3090235 (= e!1932153 (nullable!3193 lt!1054223))))

(declare-fun b!3090236 () Bool)

(assert (=> b!3090236 (= e!1932148 e!1932150)))

(declare-fun c!515399 () Bool)

(assert (=> b!3090236 (= c!515399 ((_ is EmptyLang!9547) lt!1054223))))

(declare-fun b!3090237 () Bool)

(assert (=> b!3090237 (= e!1932151 (= (head!6847 s!11993) (c!515217 lt!1054223)))))

(declare-fun b!3090238 () Bool)

(assert (=> b!3090238 (= e!1932152 e!1932149)))

(declare-fun res!1266837 () Bool)

(assert (=> b!3090238 (=> (not res!1266837) (not e!1932149))))

(assert (=> b!3090238 (= res!1266837 (not lt!1054328))))

(assert (= (and d!859109 c!515401) b!3090235))

(assert (= (and d!859109 (not c!515401)) b!3090234))

(assert (= (and d!859109 c!515400) b!3090226))

(assert (= (and d!859109 (not c!515400)) b!3090236))

(assert (= (and b!3090236 c!515399) b!3090227))

(assert (= (and b!3090236 (not c!515399)) b!3090225))

(assert (= (and b!3090225 (not res!1266840)) b!3090232))

(assert (= (and b!3090232 res!1266842) b!3090228))

(assert (= (and b!3090228 res!1266841) b!3090233))

(assert (= (and b!3090233 res!1266843) b!3090237))

(assert (= (and b!3090232 (not res!1266844)) b!3090238))

(assert (= (and b!3090238 res!1266837) b!3090230))

(assert (= (and b!3090230 (not res!1266838)) b!3090229))

(assert (= (and b!3090229 (not res!1266839)) b!3090231))

(assert (= (or b!3090226 b!3090228 b!3090230) bm!216549))

(assert (=> b!3090229 m!3395009))

(assert (=> b!3090229 m!3395009))

(assert (=> b!3090229 m!3395011))

(assert (=> b!3090237 m!3395013))

(declare-fun m!3395023 () Bool)

(assert (=> b!3090235 m!3395023))

(assert (=> b!3090231 m!3395013))

(assert (=> d!859109 m!3394699))

(assert (=> d!859109 m!3394925))

(assert (=> b!3090233 m!3395009))

(assert (=> b!3090233 m!3395009))

(assert (=> b!3090233 m!3395011))

(assert (=> b!3090234 m!3395013))

(assert (=> b!3090234 m!3395013))

(declare-fun m!3395025 () Bool)

(assert (=> b!3090234 m!3395025))

(assert (=> b!3090234 m!3395009))

(assert (=> b!3090234 m!3395025))

(assert (=> b!3090234 m!3395009))

(declare-fun m!3395027 () Bool)

(assert (=> b!3090234 m!3395027))

(assert (=> bm!216549 m!3394699))

(assert (=> b!3089560 d!859109))

(declare-fun d!859111 () Bool)

(assert (=> d!859111 (= (isEmpty!19628 s!11993) ((_ is Nil!35288) s!11993))))

(assert (=> b!3089565 d!859111))

(declare-fun b!3090249 () Bool)

(declare-fun e!1932156 () Bool)

(assert (=> b!3090249 (= e!1932156 tp_is_empty!16657)))

(declare-fun b!3090252 () Bool)

(declare-fun tp!972498 () Bool)

(declare-fun tp!972494 () Bool)

(assert (=> b!3090252 (= e!1932156 (and tp!972498 tp!972494))))

(declare-fun b!3090251 () Bool)

(declare-fun tp!972495 () Bool)

(assert (=> b!3090251 (= e!1932156 tp!972495)))

(assert (=> b!3089564 (= tp!972445 e!1932156)))

(declare-fun b!3090250 () Bool)

(declare-fun tp!972496 () Bool)

(declare-fun tp!972497 () Bool)

(assert (=> b!3090250 (= e!1932156 (and tp!972496 tp!972497))))

(assert (= (and b!3089564 ((_ is ElementMatch!9547) (regOne!19606 r!17423))) b!3090249))

(assert (= (and b!3089564 ((_ is Concat!14868) (regOne!19606 r!17423))) b!3090250))

(assert (= (and b!3089564 ((_ is Star!9547) (regOne!19606 r!17423))) b!3090251))

(assert (= (and b!3089564 ((_ is Union!9547) (regOne!19606 r!17423))) b!3090252))

(declare-fun b!3090253 () Bool)

(declare-fun e!1932157 () Bool)

(assert (=> b!3090253 (= e!1932157 tp_is_empty!16657)))

(declare-fun b!3090256 () Bool)

(declare-fun tp!972503 () Bool)

(declare-fun tp!972499 () Bool)

(assert (=> b!3090256 (= e!1932157 (and tp!972503 tp!972499))))

(declare-fun b!3090255 () Bool)

(declare-fun tp!972500 () Bool)

(assert (=> b!3090255 (= e!1932157 tp!972500)))

(assert (=> b!3089564 (= tp!972441 e!1932157)))

(declare-fun b!3090254 () Bool)

(declare-fun tp!972501 () Bool)

(declare-fun tp!972502 () Bool)

(assert (=> b!3090254 (= e!1932157 (and tp!972501 tp!972502))))

(assert (= (and b!3089564 ((_ is ElementMatch!9547) (regTwo!19606 r!17423))) b!3090253))

(assert (= (and b!3089564 ((_ is Concat!14868) (regTwo!19606 r!17423))) b!3090254))

(assert (= (and b!3089564 ((_ is Star!9547) (regTwo!19606 r!17423))) b!3090255))

(assert (= (and b!3089564 ((_ is Union!9547) (regTwo!19606 r!17423))) b!3090256))

(declare-fun b!3090261 () Bool)

(declare-fun e!1932160 () Bool)

(declare-fun tp!972506 () Bool)

(assert (=> b!3090261 (= e!1932160 (and tp_is_empty!16657 tp!972506))))

(assert (=> b!3089568 (= tp!972442 e!1932160)))

(assert (= (and b!3089568 ((_ is Cons!35288) (t!234477 s!11993))) b!3090261))

(declare-fun b!3090262 () Bool)

(declare-fun e!1932161 () Bool)

(assert (=> b!3090262 (= e!1932161 tp_is_empty!16657)))

(declare-fun b!3090265 () Bool)

(declare-fun tp!972511 () Bool)

(declare-fun tp!972507 () Bool)

(assert (=> b!3090265 (= e!1932161 (and tp!972511 tp!972507))))

(declare-fun b!3090264 () Bool)

(declare-fun tp!972508 () Bool)

(assert (=> b!3090264 (= e!1932161 tp!972508)))

(assert (=> b!3089573 (= tp!972440 e!1932161)))

(declare-fun b!3090263 () Bool)

(declare-fun tp!972509 () Bool)

(declare-fun tp!972510 () Bool)

(assert (=> b!3090263 (= e!1932161 (and tp!972509 tp!972510))))

(assert (= (and b!3089573 ((_ is ElementMatch!9547) (regOne!19607 r!17423))) b!3090262))

(assert (= (and b!3089573 ((_ is Concat!14868) (regOne!19607 r!17423))) b!3090263))

(assert (= (and b!3089573 ((_ is Star!9547) (regOne!19607 r!17423))) b!3090264))

(assert (= (and b!3089573 ((_ is Union!9547) (regOne!19607 r!17423))) b!3090265))

(declare-fun b!3090266 () Bool)

(declare-fun e!1932162 () Bool)

(assert (=> b!3090266 (= e!1932162 tp_is_empty!16657)))

(declare-fun b!3090269 () Bool)

(declare-fun tp!972516 () Bool)

(declare-fun tp!972512 () Bool)

(assert (=> b!3090269 (= e!1932162 (and tp!972516 tp!972512))))

(declare-fun b!3090268 () Bool)

(declare-fun tp!972513 () Bool)

(assert (=> b!3090268 (= e!1932162 tp!972513)))

(assert (=> b!3089573 (= tp!972443 e!1932162)))

(declare-fun b!3090267 () Bool)

(declare-fun tp!972514 () Bool)

(declare-fun tp!972515 () Bool)

(assert (=> b!3090267 (= e!1932162 (and tp!972514 tp!972515))))

(assert (= (and b!3089573 ((_ is ElementMatch!9547) (regTwo!19607 r!17423))) b!3090266))

(assert (= (and b!3089573 ((_ is Concat!14868) (regTwo!19607 r!17423))) b!3090267))

(assert (= (and b!3089573 ((_ is Star!9547) (regTwo!19607 r!17423))) b!3090268))

(assert (= (and b!3089573 ((_ is Union!9547) (regTwo!19607 r!17423))) b!3090269))

(declare-fun b!3090270 () Bool)

(declare-fun e!1932163 () Bool)

(assert (=> b!3090270 (= e!1932163 tp_is_empty!16657)))

(declare-fun b!3090273 () Bool)

(declare-fun tp!972521 () Bool)

(declare-fun tp!972517 () Bool)

(assert (=> b!3090273 (= e!1932163 (and tp!972521 tp!972517))))

(declare-fun b!3090272 () Bool)

(declare-fun tp!972518 () Bool)

(assert (=> b!3090272 (= e!1932163 tp!972518)))

(assert (=> b!3089561 (= tp!972444 e!1932163)))

(declare-fun b!3090271 () Bool)

(declare-fun tp!972519 () Bool)

(declare-fun tp!972520 () Bool)

(assert (=> b!3090271 (= e!1932163 (and tp!972519 tp!972520))))

(assert (= (and b!3089561 ((_ is ElementMatch!9547) (reg!9876 r!17423))) b!3090270))

(assert (= (and b!3089561 ((_ is Concat!14868) (reg!9876 r!17423))) b!3090271))

(assert (= (and b!3089561 ((_ is Star!9547) (reg!9876 r!17423))) b!3090272))

(assert (= (and b!3089561 ((_ is Union!9547) (reg!9876 r!17423))) b!3090273))

(check-sat (not d!859089) (not b!3090229) (not d!859105) (not bm!216544) (not bm!216487) (not b!3090195) (not b!3090231) (not bm!216508) (not b!3090252) (not b!3089884) (not b!3090210) (not b!3090237) (not b!3090272) (not b!3090223) (not b!3090264) (not d!859093) (not b!3090121) (not b!3090273) (not d!859079) (not bm!216485) (not d!859103) (not bm!216547) (not b!3090265) (not b!3090175) (not d!859081) (not bm!216507) (not bm!216549) (not bm!216545) (not b!3089870) (not b!3090250) (not b!3090114) (not bm!216486) (not d!859021) (not b!3090173) (not bm!216548) (not b!3090220) (not b!3090172) (not b!3090196) (not d!859085) (not b!3090254) (not b!3090233) (not bm!216535) (not b!3090180) (not b!3090036) (not d!859041) (not b!3090122) (not b!3090268) (not b!3090190) (not b!3090117) tp_is_empty!16657 (not d!859077) (not b!3090167) (not bm!216450) (not bm!216506) (not b!3090215) (not bm!216489) (not b!3090205) (not d!859095) (not b!3090267) (not b!3090194) (not bm!216541) (not b!3089845) (not b!3090221) (not b!3090192) (not bm!216509) (not d!859073) (not b!3090169) (not b!3090256) (not b!3090118) (not b!3090171) (not bm!216488) (not b!3090261) (not b!3090251) (not d!859087) (not b!3089599) (not b!3090255) (not b!3090041) (not bm!216536) (not b!3090269) (not bm!216510) (not b!3090217) (not b!3090234) (not b!3090198) (not d!859083) (not b!3090271) (not b!3090235) (not d!859109) (not bm!216448) (not bm!216542) (not b!3090115) (not b!3089859) (not bm!216546) (not b!3090263) (not b!3090219))
(check-sat)
