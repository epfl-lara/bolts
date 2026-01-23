; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349586 () Bool)

(assert start!349586)

(declare-fun res!1507885 () Bool)

(declare-fun e!2296112 () Bool)

(assert (=> start!349586 (=> (not res!1507885) (not e!2296112))))

(declare-datatypes ((C!21812 0))(
  ( (C!21813 (val!12954 Int)) )
))
(declare-datatypes ((Regex!10813 0))(
  ( (ElementMatch!10813 (c!640143 C!21812)) (Concat!17084 (regOne!22138 Regex!10813) (regTwo!22138 Regex!10813)) (EmptyExpr!10813) (Star!10813 (reg!11142 Regex!10813)) (EmptyLang!10813) (Union!10813 (regOne!22139 Regex!10813) (regTwo!22139 Regex!10813)) )
))
(declare-fun r!25965 () Regex!10813)

(declare-fun validRegex!4920 (Regex!10813) Bool)

(assert (=> start!349586 (= res!1507885 (validRegex!4920 r!25965))))

(assert (=> start!349586 e!2296112))

(declare-fun e!2296113 () Bool)

(assert (=> start!349586 e!2296113))

(declare-fun e!2296114 () Bool)

(assert (=> start!349586 e!2296114))

(declare-fun tp_is_empty!18641 () Bool)

(assert (=> start!349586 tp_is_empty!18641))

(declare-fun b!3706666 () Bool)

(declare-fun res!1507886 () Bool)

(assert (=> b!3706666 (=> (not res!1507886) (not e!2296112))))

(declare-fun c!13398 () C!21812)

(declare-datatypes ((List!39694 0))(
  ( (Nil!39570) (Cons!39570 (h!44990 C!21812) (t!302377 List!39694)) )
))
(declare-fun contains!7906 (List!39694 C!21812) Bool)

(declare-fun usedCharacters!1076 (Regex!10813) List!39694)

(assert (=> b!3706666 (= res!1507886 (not (contains!7906 (usedCharacters!1076 r!25965) c!13398)))))

(declare-fun b!3706667 () Bool)

(declare-fun tp!1127751 () Bool)

(assert (=> b!3706667 (= e!2296113 tp!1127751)))

(declare-fun b!3706668 () Bool)

(declare-fun res!1507884 () Bool)

(assert (=> b!3706668 (=> (not res!1507884) (not e!2296112))))

(declare-fun s!14922 () List!39694)

(get-info :version)

(assert (=> b!3706668 (= res!1507884 (and (or (not ((_ is Cons!39570) s!14922)) (not (= (h!44990 s!14922) c!13398))) ((_ is Cons!39570) s!14922) (not (= (h!44990 s!14922) c!13398))))))

(declare-fun b!3706669 () Bool)

(declare-fun lt!1296475 () Regex!10813)

(assert (=> b!3706669 (= e!2296112 (not (validRegex!4920 lt!1296475)))))

(assert (=> b!3706669 (not (contains!7906 (usedCharacters!1076 lt!1296475) c!13398))))

(declare-fun derivativeStep!3292 (Regex!10813 C!21812) Regex!10813)

(assert (=> b!3706669 (= lt!1296475 (derivativeStep!3292 r!25965 (h!44990 s!14922)))))

(declare-datatypes ((Unit!57456 0))(
  ( (Unit!57457) )
))
(declare-fun lt!1296476 () Unit!57456)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!8 (Regex!10813 C!21812 C!21812) Unit!57456)

(assert (=> b!3706669 (= lt!1296476 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!8 r!25965 (h!44990 s!14922) c!13398))))

(declare-fun b!3706670 () Bool)

(declare-fun tp!1127753 () Bool)

(declare-fun tp!1127754 () Bool)

(assert (=> b!3706670 (= e!2296113 (and tp!1127753 tp!1127754))))

(declare-fun b!3706671 () Bool)

(declare-fun tp!1127756 () Bool)

(declare-fun tp!1127752 () Bool)

(assert (=> b!3706671 (= e!2296113 (and tp!1127756 tp!1127752))))

(declare-fun b!3706672 () Bool)

(declare-fun tp!1127755 () Bool)

(assert (=> b!3706672 (= e!2296114 (and tp_is_empty!18641 tp!1127755))))

(declare-fun b!3706673 () Bool)

(assert (=> b!3706673 (= e!2296113 tp_is_empty!18641)))

(declare-fun b!3706674 () Bool)

(declare-fun res!1507883 () Bool)

(assert (=> b!3706674 (=> (not res!1507883) (not e!2296112))))

(assert (=> b!3706674 (= res!1507883 (contains!7906 s!14922 c!13398))))

(assert (= (and start!349586 res!1507885) b!3706674))

(assert (= (and b!3706674 res!1507883) b!3706666))

(assert (= (and b!3706666 res!1507886) b!3706668))

(assert (= (and b!3706668 res!1507884) b!3706669))

(assert (= (and start!349586 ((_ is ElementMatch!10813) r!25965)) b!3706673))

(assert (= (and start!349586 ((_ is Concat!17084) r!25965)) b!3706671))

(assert (= (and start!349586 ((_ is Star!10813) r!25965)) b!3706667))

(assert (= (and start!349586 ((_ is Union!10813) r!25965)) b!3706670))

(assert (= (and start!349586 ((_ is Cons!39570) s!14922)) b!3706672))

(declare-fun m!4216355 () Bool)

(assert (=> start!349586 m!4216355))

(declare-fun m!4216357 () Bool)

(assert (=> b!3706666 m!4216357))

(assert (=> b!3706666 m!4216357))

(declare-fun m!4216359 () Bool)

(assert (=> b!3706666 m!4216359))

(declare-fun m!4216361 () Bool)

(assert (=> b!3706669 m!4216361))

(declare-fun m!4216363 () Bool)

(assert (=> b!3706669 m!4216363))

(declare-fun m!4216365 () Bool)

(assert (=> b!3706669 m!4216365))

(assert (=> b!3706669 m!4216363))

(declare-fun m!4216367 () Bool)

(assert (=> b!3706669 m!4216367))

(declare-fun m!4216369 () Bool)

(assert (=> b!3706669 m!4216369))

(declare-fun m!4216371 () Bool)

(assert (=> b!3706674 m!4216371))

(check-sat (not b!3706667) (not b!3706671) tp_is_empty!18641 (not b!3706670) (not b!3706674) (not b!3706672) (not start!349586) (not b!3706669) (not b!3706666))
(check-sat)
(get-model)

(declare-fun b!3706711 () Bool)

(declare-fun res!1507908 () Bool)

(declare-fun e!2296146 () Bool)

(assert (=> b!3706711 (=> (not res!1507908) (not e!2296146))))

(declare-fun call!267617 () Bool)

(assert (=> b!3706711 (= res!1507908 call!267617)))

(declare-fun e!2296147 () Bool)

(assert (=> b!3706711 (= e!2296147 e!2296146)))

(declare-fun b!3706712 () Bool)

(declare-fun e!2296152 () Bool)

(declare-fun call!267615 () Bool)

(assert (=> b!3706712 (= e!2296152 call!267615)))

(declare-fun call!267613 () Bool)

(declare-fun c!640152 () Bool)

(declare-fun bm!267608 () Bool)

(declare-fun c!640153 () Bool)

(assert (=> bm!267608 (= call!267613 (validRegex!4920 (ite c!640153 (reg!11142 lt!1296475) (ite c!640152 (regTwo!22139 lt!1296475) (regTwo!22138 lt!1296475)))))))

(declare-fun b!3706713 () Bool)

(assert (=> b!3706713 (= e!2296146 call!267615)))

(declare-fun bm!267609 () Bool)

(assert (=> bm!267609 (= call!267615 call!267613)))

(declare-fun b!3706714 () Bool)

(declare-fun e!2296143 () Bool)

(assert (=> b!3706714 (= e!2296143 e!2296147)))

(assert (=> b!3706714 (= c!640152 ((_ is Union!10813) lt!1296475))))

(declare-fun d!1086496 () Bool)

(declare-fun res!1507907 () Bool)

(declare-fun e!2296144 () Bool)

(assert (=> d!1086496 (=> res!1507907 e!2296144)))

(assert (=> d!1086496 (= res!1507907 ((_ is ElementMatch!10813) lt!1296475))))

(assert (=> d!1086496 (= (validRegex!4920 lt!1296475) e!2296144)))

(declare-fun b!3706715 () Bool)

(assert (=> b!3706715 (= e!2296144 e!2296143)))

(assert (=> b!3706715 (= c!640153 ((_ is Star!10813) lt!1296475))))

(declare-fun b!3706716 () Bool)

(declare-fun e!2296145 () Bool)

(assert (=> b!3706716 (= e!2296145 e!2296152)))

(declare-fun res!1507910 () Bool)

(assert (=> b!3706716 (=> (not res!1507910) (not e!2296152))))

(assert (=> b!3706716 (= res!1507910 call!267617)))

(declare-fun b!3706717 () Bool)

(declare-fun res!1507909 () Bool)

(assert (=> b!3706717 (=> res!1507909 e!2296145)))

(assert (=> b!3706717 (= res!1507909 (not ((_ is Concat!17084) lt!1296475)))))

(assert (=> b!3706717 (= e!2296147 e!2296145)))

(declare-fun b!3706718 () Bool)

(declare-fun e!2296149 () Bool)

(assert (=> b!3706718 (= e!2296143 e!2296149)))

(declare-fun res!1507912 () Bool)

(declare-fun nullable!3748 (Regex!10813) Bool)

(assert (=> b!3706718 (= res!1507912 (not (nullable!3748 (reg!11142 lt!1296475))))))

(assert (=> b!3706718 (=> (not res!1507912) (not e!2296149))))

(declare-fun b!3706719 () Bool)

(assert (=> b!3706719 (= e!2296149 call!267613)))

(declare-fun bm!267611 () Bool)

(assert (=> bm!267611 (= call!267617 (validRegex!4920 (ite c!640152 (regOne!22139 lt!1296475) (regOne!22138 lt!1296475))))))

(assert (= (and d!1086496 (not res!1507907)) b!3706715))

(assert (= (and b!3706715 c!640153) b!3706718))

(assert (= (and b!3706715 (not c!640153)) b!3706714))

(assert (= (and b!3706718 res!1507912) b!3706719))

(assert (= (and b!3706714 c!640152) b!3706711))

(assert (= (and b!3706714 (not c!640152)) b!3706717))

(assert (= (and b!3706711 res!1507908) b!3706713))

(assert (= (and b!3706717 (not res!1507909)) b!3706716))

(assert (= (and b!3706716 res!1507910) b!3706712))

(assert (= (or b!3706711 b!3706716) bm!267611))

(assert (= (or b!3706713 b!3706712) bm!267609))

(assert (= (or b!3706719 bm!267609) bm!267608))

(declare-fun m!4216373 () Bool)

(assert (=> bm!267608 m!4216373))

(declare-fun m!4216377 () Bool)

(assert (=> b!3706718 m!4216377))

(declare-fun m!4216381 () Bool)

(assert (=> bm!267611 m!4216381))

(assert (=> b!3706669 d!1086496))

(declare-fun d!1086500 () Bool)

(assert (=> d!1086500 (not (contains!7906 (usedCharacters!1076 (derivativeStep!3292 r!25965 (h!44990 s!14922))) c!13398))))

(declare-fun lt!1296481 () Unit!57456)

(declare-fun choose!22159 (Regex!10813 C!21812 C!21812) Unit!57456)

(assert (=> d!1086500 (= lt!1296481 (choose!22159 r!25965 (h!44990 s!14922) c!13398))))

(assert (=> d!1086500 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!8 r!25965 (h!44990 s!14922) c!13398) lt!1296481)))

(declare-fun bs!574670 () Bool)

(assert (= bs!574670 d!1086500))

(assert (=> bs!574670 m!4216361))

(assert (=> bs!574670 m!4216361))

(declare-fun m!4216385 () Bool)

(assert (=> bs!574670 m!4216385))

(assert (=> bs!574670 m!4216385))

(declare-fun m!4216387 () Bool)

(assert (=> bs!574670 m!4216387))

(declare-fun m!4216391 () Bool)

(assert (=> bs!574670 m!4216391))

(assert (=> b!3706669 d!1086500))

(declare-fun b!3706775 () Bool)

(declare-fun e!2296185 () Regex!10813)

(declare-fun call!267636 () Regex!10813)

(assert (=> b!3706775 (= e!2296185 (Union!10813 (Concat!17084 call!267636 (regTwo!22138 r!25965)) EmptyLang!10813))))

(declare-fun b!3706776 () Bool)

(declare-fun e!2296183 () Regex!10813)

(assert (=> b!3706776 (= e!2296183 EmptyLang!10813)))

(declare-fun b!3706777 () Bool)

(declare-fun e!2296184 () Regex!10813)

(assert (=> b!3706777 (= e!2296184 (ite (= (h!44990 s!14922) (c!640143 r!25965)) EmptyExpr!10813 EmptyLang!10813))))

(declare-fun call!267635 () Regex!10813)

(declare-fun b!3706778 () Bool)

(assert (=> b!3706778 (= e!2296185 (Union!10813 (Concat!17084 call!267636 (regTwo!22138 r!25965)) call!267635))))

(declare-fun b!3706779 () Bool)

(declare-fun e!2296187 () Regex!10813)

(declare-fun call!267637 () Regex!10813)

(assert (=> b!3706779 (= e!2296187 (Union!10813 call!267635 call!267637))))

(declare-fun bm!267630 () Bool)

(declare-fun c!640178 () Bool)

(declare-fun c!640182 () Bool)

(assert (=> bm!267630 (= call!267637 (derivativeStep!3292 (ite c!640182 (regTwo!22139 r!25965) (ite c!640178 (reg!11142 r!25965) (regOne!22138 r!25965))) (h!44990 s!14922)))))

(declare-fun d!1086504 () Bool)

(declare-fun lt!1296490 () Regex!10813)

(assert (=> d!1086504 (validRegex!4920 lt!1296490)))

(assert (=> d!1086504 (= lt!1296490 e!2296183)))

(declare-fun c!640181 () Bool)

(assert (=> d!1086504 (= c!640181 (or ((_ is EmptyExpr!10813) r!25965) ((_ is EmptyLang!10813) r!25965)))))

(assert (=> d!1086504 (validRegex!4920 r!25965)))

(assert (=> d!1086504 (= (derivativeStep!3292 r!25965 (h!44990 s!14922)) lt!1296490)))

(declare-fun bm!267631 () Bool)

(declare-fun call!267638 () Regex!10813)

(assert (=> bm!267631 (= call!267638 call!267637)))

(declare-fun bm!267632 () Bool)

(assert (=> bm!267632 (= call!267635 (derivativeStep!3292 (ite c!640182 (regOne!22139 r!25965) (regTwo!22138 r!25965)) (h!44990 s!14922)))))

(declare-fun b!3706780 () Bool)

(declare-fun e!2296186 () Regex!10813)

(assert (=> b!3706780 (= e!2296187 e!2296186)))

(assert (=> b!3706780 (= c!640178 ((_ is Star!10813) r!25965))))

(declare-fun b!3706781 () Bool)

(assert (=> b!3706781 (= e!2296186 (Concat!17084 call!267638 r!25965))))

(declare-fun b!3706782 () Bool)

(assert (=> b!3706782 (= e!2296183 e!2296184)))

(declare-fun c!640180 () Bool)

(assert (=> b!3706782 (= c!640180 ((_ is ElementMatch!10813) r!25965))))

(declare-fun b!3706783 () Bool)

(declare-fun c!640179 () Bool)

(assert (=> b!3706783 (= c!640179 (nullable!3748 (regOne!22138 r!25965)))))

(assert (=> b!3706783 (= e!2296186 e!2296185)))

(declare-fun bm!267633 () Bool)

(assert (=> bm!267633 (= call!267636 call!267638)))

(declare-fun b!3706784 () Bool)

(assert (=> b!3706784 (= c!640182 ((_ is Union!10813) r!25965))))

(assert (=> b!3706784 (= e!2296184 e!2296187)))

(assert (= (and d!1086504 c!640181) b!3706776))

(assert (= (and d!1086504 (not c!640181)) b!3706782))

(assert (= (and b!3706782 c!640180) b!3706777))

(assert (= (and b!3706782 (not c!640180)) b!3706784))

(assert (= (and b!3706784 c!640182) b!3706779))

(assert (= (and b!3706784 (not c!640182)) b!3706780))

(assert (= (and b!3706780 c!640178) b!3706781))

(assert (= (and b!3706780 (not c!640178)) b!3706783))

(assert (= (and b!3706783 c!640179) b!3706778))

(assert (= (and b!3706783 (not c!640179)) b!3706775))

(assert (= (or b!3706778 b!3706775) bm!267633))

(assert (= (or b!3706781 bm!267633) bm!267631))

(assert (= (or b!3706779 b!3706778) bm!267632))

(assert (= (or b!3706779 bm!267631) bm!267630))

(declare-fun m!4216403 () Bool)

(assert (=> bm!267630 m!4216403))

(declare-fun m!4216405 () Bool)

(assert (=> d!1086504 m!4216405))

(assert (=> d!1086504 m!4216355))

(declare-fun m!4216407 () Bool)

(assert (=> bm!267632 m!4216407))

(declare-fun m!4216409 () Bool)

(assert (=> b!3706783 m!4216409))

(assert (=> b!3706669 d!1086504))

(declare-fun b!3706827 () Bool)

(declare-fun e!2296211 () List!39694)

(assert (=> b!3706827 (= e!2296211 (Cons!39570 (c!640143 lt!1296475) Nil!39570))))

(declare-fun c!640204 () Bool)

(declare-fun c!640207 () Bool)

(declare-fun bm!267654 () Bool)

(declare-fun call!267659 () List!39694)

(assert (=> bm!267654 (= call!267659 (usedCharacters!1076 (ite c!640207 (reg!11142 lt!1296475) (ite c!640204 (regOne!22139 lt!1296475) (regTwo!22138 lt!1296475)))))))

(declare-fun call!267662 () List!39694)

(declare-fun call!267661 () List!39694)

(declare-fun bm!267655 () Bool)

(declare-fun call!267660 () List!39694)

(declare-fun ++!9775 (List!39694 List!39694) List!39694)

(assert (=> bm!267655 (= call!267660 (++!9775 (ite c!640204 call!267661 call!267662) (ite c!640204 call!267662 call!267661)))))

(declare-fun bm!267656 () Bool)

(assert (=> bm!267656 (= call!267662 (usedCharacters!1076 (ite c!640204 (regTwo!22139 lt!1296475) (regOne!22138 lt!1296475))))))

(declare-fun b!3706828 () Bool)

(declare-fun e!2296210 () List!39694)

(assert (=> b!3706828 (= e!2296210 call!267660)))

(declare-fun b!3706829 () Bool)

(assert (=> b!3706829 (= e!2296210 call!267660)))

(declare-fun b!3706830 () Bool)

(declare-fun e!2296212 () List!39694)

(assert (=> b!3706830 (= e!2296212 call!267659)))

(declare-fun b!3706831 () Bool)

(declare-fun e!2296209 () List!39694)

(assert (=> b!3706831 (= e!2296209 Nil!39570)))

(declare-fun b!3706832 () Bool)

(assert (=> b!3706832 (= e!2296209 e!2296211)))

(declare-fun c!640206 () Bool)

(assert (=> b!3706832 (= c!640206 ((_ is ElementMatch!10813) lt!1296475))))

(declare-fun b!3706833 () Bool)

(assert (=> b!3706833 (= c!640207 ((_ is Star!10813) lt!1296475))))

(assert (=> b!3706833 (= e!2296211 e!2296212)))

(declare-fun b!3706834 () Bool)

(assert (=> b!3706834 (= e!2296212 e!2296210)))

(assert (=> b!3706834 (= c!640204 ((_ is Union!10813) lt!1296475))))

(declare-fun bm!267657 () Bool)

(assert (=> bm!267657 (= call!267661 call!267659)))

(declare-fun d!1086510 () Bool)

(declare-fun c!640205 () Bool)

(assert (=> d!1086510 (= c!640205 (or ((_ is EmptyExpr!10813) lt!1296475) ((_ is EmptyLang!10813) lt!1296475)))))

(assert (=> d!1086510 (= (usedCharacters!1076 lt!1296475) e!2296209)))

(assert (= (and d!1086510 c!640205) b!3706831))

(assert (= (and d!1086510 (not c!640205)) b!3706832))

(assert (= (and b!3706832 c!640206) b!3706827))

(assert (= (and b!3706832 (not c!640206)) b!3706833))

(assert (= (and b!3706833 c!640207) b!3706830))

(assert (= (and b!3706833 (not c!640207)) b!3706834))

(assert (= (and b!3706834 c!640204) b!3706829))

(assert (= (and b!3706834 (not c!640204)) b!3706828))

(assert (= (or b!3706829 b!3706828) bm!267657))

(assert (= (or b!3706829 b!3706828) bm!267656))

(assert (= (or b!3706829 b!3706828) bm!267655))

(assert (= (or b!3706830 bm!267657) bm!267654))

(declare-fun m!4216419 () Bool)

(assert (=> bm!267654 m!4216419))

(declare-fun m!4216421 () Bool)

(assert (=> bm!267655 m!4216421))

(declare-fun m!4216423 () Bool)

(assert (=> bm!267656 m!4216423))

(assert (=> b!3706669 d!1086510))

(declare-fun d!1086514 () Bool)

(declare-fun lt!1296494 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5713 (List!39694) (InoxSet C!21812))

(assert (=> d!1086514 (= lt!1296494 (select (content!5713 (usedCharacters!1076 lt!1296475)) c!13398))))

(declare-fun e!2296222 () Bool)

(assert (=> d!1086514 (= lt!1296494 e!2296222)))

(declare-fun res!1507928 () Bool)

(assert (=> d!1086514 (=> (not res!1507928) (not e!2296222))))

(assert (=> d!1086514 (= res!1507928 ((_ is Cons!39570) (usedCharacters!1076 lt!1296475)))))

(assert (=> d!1086514 (= (contains!7906 (usedCharacters!1076 lt!1296475) c!13398) lt!1296494)))

(declare-fun b!3706847 () Bool)

(declare-fun e!2296221 () Bool)

(assert (=> b!3706847 (= e!2296222 e!2296221)))

(declare-fun res!1507927 () Bool)

(assert (=> b!3706847 (=> res!1507927 e!2296221)))

(assert (=> b!3706847 (= res!1507927 (= (h!44990 (usedCharacters!1076 lt!1296475)) c!13398))))

(declare-fun b!3706848 () Bool)

(assert (=> b!3706848 (= e!2296221 (contains!7906 (t!302377 (usedCharacters!1076 lt!1296475)) c!13398))))

(assert (= (and d!1086514 res!1507928) b!3706847))

(assert (= (and b!3706847 (not res!1507927)) b!3706848))

(assert (=> d!1086514 m!4216363))

(declare-fun m!4216429 () Bool)

(assert (=> d!1086514 m!4216429))

(declare-fun m!4216431 () Bool)

(assert (=> d!1086514 m!4216431))

(declare-fun m!4216435 () Bool)

(assert (=> b!3706848 m!4216435))

(assert (=> b!3706669 d!1086514))

(declare-fun d!1086518 () Bool)

(declare-fun lt!1296495 () Bool)

(assert (=> d!1086518 (= lt!1296495 (select (content!5713 s!14922) c!13398))))

(declare-fun e!2296224 () Bool)

(assert (=> d!1086518 (= lt!1296495 e!2296224)))

(declare-fun res!1507930 () Bool)

(assert (=> d!1086518 (=> (not res!1507930) (not e!2296224))))

(assert (=> d!1086518 (= res!1507930 ((_ is Cons!39570) s!14922))))

(assert (=> d!1086518 (= (contains!7906 s!14922 c!13398) lt!1296495)))

(declare-fun b!3706849 () Bool)

(declare-fun e!2296223 () Bool)

(assert (=> b!3706849 (= e!2296224 e!2296223)))

(declare-fun res!1507929 () Bool)

(assert (=> b!3706849 (=> res!1507929 e!2296223)))

(assert (=> b!3706849 (= res!1507929 (= (h!44990 s!14922) c!13398))))

(declare-fun b!3706850 () Bool)

(assert (=> b!3706850 (= e!2296223 (contains!7906 (t!302377 s!14922) c!13398))))

(assert (= (and d!1086518 res!1507930) b!3706849))

(assert (= (and b!3706849 (not res!1507929)) b!3706850))

(declare-fun m!4216437 () Bool)

(assert (=> d!1086518 m!4216437))

(declare-fun m!4216439 () Bool)

(assert (=> d!1086518 m!4216439))

(declare-fun m!4216441 () Bool)

(assert (=> b!3706850 m!4216441))

(assert (=> b!3706674 d!1086518))

(declare-fun b!3706853 () Bool)

(declare-fun res!1507934 () Bool)

(declare-fun e!2296230 () Bool)

(assert (=> b!3706853 (=> (not res!1507934) (not e!2296230))))

(declare-fun call!267669 () Bool)

(assert (=> b!3706853 (= res!1507934 call!267669)))

(declare-fun e!2296231 () Bool)

(assert (=> b!3706853 (= e!2296231 e!2296230)))

(declare-fun b!3706854 () Bool)

(declare-fun e!2296233 () Bool)

(declare-fun call!267668 () Bool)

(assert (=> b!3706854 (= e!2296233 call!267668)))

(declare-fun c!640212 () Bool)

(declare-fun bm!267662 () Bool)

(declare-fun call!267667 () Bool)

(declare-fun c!640213 () Bool)

(assert (=> bm!267662 (= call!267667 (validRegex!4920 (ite c!640213 (reg!11142 r!25965) (ite c!640212 (regTwo!22139 r!25965) (regTwo!22138 r!25965)))))))

(declare-fun b!3706855 () Bool)

(assert (=> b!3706855 (= e!2296230 call!267668)))

(declare-fun bm!267663 () Bool)

(assert (=> bm!267663 (= call!267668 call!267667)))

(declare-fun b!3706856 () Bool)

(declare-fun e!2296227 () Bool)

(assert (=> b!3706856 (= e!2296227 e!2296231)))

(assert (=> b!3706856 (= c!640212 ((_ is Union!10813) r!25965))))

(declare-fun d!1086520 () Bool)

(declare-fun res!1507933 () Bool)

(declare-fun e!2296228 () Bool)

(assert (=> d!1086520 (=> res!1507933 e!2296228)))

(assert (=> d!1086520 (= res!1507933 ((_ is ElementMatch!10813) r!25965))))

(assert (=> d!1086520 (= (validRegex!4920 r!25965) e!2296228)))

(declare-fun b!3706857 () Bool)

(assert (=> b!3706857 (= e!2296228 e!2296227)))

(assert (=> b!3706857 (= c!640213 ((_ is Star!10813) r!25965))))

(declare-fun b!3706858 () Bool)

(declare-fun e!2296229 () Bool)

(assert (=> b!3706858 (= e!2296229 e!2296233)))

(declare-fun res!1507936 () Bool)

(assert (=> b!3706858 (=> (not res!1507936) (not e!2296233))))

(assert (=> b!3706858 (= res!1507936 call!267669)))

(declare-fun b!3706859 () Bool)

(declare-fun res!1507935 () Bool)

(assert (=> b!3706859 (=> res!1507935 e!2296229)))

(assert (=> b!3706859 (= res!1507935 (not ((_ is Concat!17084) r!25965)))))

(assert (=> b!3706859 (= e!2296231 e!2296229)))

(declare-fun b!3706860 () Bool)

(declare-fun e!2296232 () Bool)

(assert (=> b!3706860 (= e!2296227 e!2296232)))

(declare-fun res!1507937 () Bool)

(assert (=> b!3706860 (= res!1507937 (not (nullable!3748 (reg!11142 r!25965))))))

(assert (=> b!3706860 (=> (not res!1507937) (not e!2296232))))

(declare-fun b!3706861 () Bool)

(assert (=> b!3706861 (= e!2296232 call!267667)))

(declare-fun bm!267664 () Bool)

(assert (=> bm!267664 (= call!267669 (validRegex!4920 (ite c!640212 (regOne!22139 r!25965) (regOne!22138 r!25965))))))

(assert (= (and d!1086520 (not res!1507933)) b!3706857))

(assert (= (and b!3706857 c!640213) b!3706860))

(assert (= (and b!3706857 (not c!640213)) b!3706856))

(assert (= (and b!3706860 res!1507937) b!3706861))

(assert (= (and b!3706856 c!640212) b!3706853))

(assert (= (and b!3706856 (not c!640212)) b!3706859))

(assert (= (and b!3706853 res!1507934) b!3706855))

(assert (= (and b!3706859 (not res!1507935)) b!3706858))

(assert (= (and b!3706858 res!1507936) b!3706854))

(assert (= (or b!3706853 b!3706858) bm!267664))

(assert (= (or b!3706855 b!3706854) bm!267663))

(assert (= (or b!3706861 bm!267663) bm!267662))

(declare-fun m!4216449 () Bool)

(assert (=> bm!267662 m!4216449))

(declare-fun m!4216451 () Bool)

(assert (=> b!3706860 m!4216451))

(declare-fun m!4216453 () Bool)

(assert (=> bm!267664 m!4216453))

(assert (=> start!349586 d!1086520))

(declare-fun d!1086524 () Bool)

(declare-fun lt!1296497 () Bool)

(assert (=> d!1086524 (= lt!1296497 (select (content!5713 (usedCharacters!1076 r!25965)) c!13398))))

(declare-fun e!2296242 () Bool)

(assert (=> d!1086524 (= lt!1296497 e!2296242)))

(declare-fun res!1507944 () Bool)

(assert (=> d!1086524 (=> (not res!1507944) (not e!2296242))))

(assert (=> d!1086524 (= res!1507944 ((_ is Cons!39570) (usedCharacters!1076 r!25965)))))

(assert (=> d!1086524 (= (contains!7906 (usedCharacters!1076 r!25965) c!13398) lt!1296497)))

(declare-fun b!3706871 () Bool)

(declare-fun e!2296241 () Bool)

(assert (=> b!3706871 (= e!2296242 e!2296241)))

(declare-fun res!1507943 () Bool)

(assert (=> b!3706871 (=> res!1507943 e!2296241)))

(assert (=> b!3706871 (= res!1507943 (= (h!44990 (usedCharacters!1076 r!25965)) c!13398))))

(declare-fun b!3706872 () Bool)

(assert (=> b!3706872 (= e!2296241 (contains!7906 (t!302377 (usedCharacters!1076 r!25965)) c!13398))))

(assert (= (and d!1086524 res!1507944) b!3706871))

(assert (= (and b!3706871 (not res!1507943)) b!3706872))

(assert (=> d!1086524 m!4216357))

(declare-fun m!4216461 () Bool)

(assert (=> d!1086524 m!4216461))

(declare-fun m!4216463 () Bool)

(assert (=> d!1086524 m!4216463))

(declare-fun m!4216467 () Bool)

(assert (=> b!3706872 m!4216467))

(assert (=> b!3706666 d!1086524))

(declare-fun b!3706875 () Bool)

(declare-fun e!2296247 () List!39694)

(assert (=> b!3706875 (= e!2296247 (Cons!39570 (c!640143 r!25965) Nil!39570))))

(declare-fun c!640216 () Bool)

(declare-fun call!267673 () List!39694)

(declare-fun bm!267668 () Bool)

(declare-fun c!640219 () Bool)

(assert (=> bm!267668 (= call!267673 (usedCharacters!1076 (ite c!640219 (reg!11142 r!25965) (ite c!640216 (regOne!22139 r!25965) (regTwo!22138 r!25965)))))))

(declare-fun call!267675 () List!39694)

(declare-fun call!267676 () List!39694)

(declare-fun bm!267669 () Bool)

(declare-fun call!267674 () List!39694)

(assert (=> bm!267669 (= call!267674 (++!9775 (ite c!640216 call!267675 call!267676) (ite c!640216 call!267676 call!267675)))))

(declare-fun bm!267670 () Bool)

(assert (=> bm!267670 (= call!267676 (usedCharacters!1076 (ite c!640216 (regTwo!22139 r!25965) (regOne!22138 r!25965))))))

(declare-fun b!3706876 () Bool)

(declare-fun e!2296246 () List!39694)

(assert (=> b!3706876 (= e!2296246 call!267674)))

(declare-fun b!3706877 () Bool)

(assert (=> b!3706877 (= e!2296246 call!267674)))

(declare-fun b!3706878 () Bool)

(declare-fun e!2296248 () List!39694)

(assert (=> b!3706878 (= e!2296248 call!267673)))

(declare-fun b!3706879 () Bool)

(declare-fun e!2296245 () List!39694)

(assert (=> b!3706879 (= e!2296245 Nil!39570)))

(declare-fun b!3706880 () Bool)

(assert (=> b!3706880 (= e!2296245 e!2296247)))

(declare-fun c!640218 () Bool)

(assert (=> b!3706880 (= c!640218 ((_ is ElementMatch!10813) r!25965))))

(declare-fun b!3706881 () Bool)

(assert (=> b!3706881 (= c!640219 ((_ is Star!10813) r!25965))))

(assert (=> b!3706881 (= e!2296247 e!2296248)))

(declare-fun b!3706882 () Bool)

(assert (=> b!3706882 (= e!2296248 e!2296246)))

(assert (=> b!3706882 (= c!640216 ((_ is Union!10813) r!25965))))

(declare-fun bm!267671 () Bool)

(assert (=> bm!267671 (= call!267675 call!267673)))

(declare-fun d!1086528 () Bool)

(declare-fun c!640217 () Bool)

(assert (=> d!1086528 (= c!640217 (or ((_ is EmptyExpr!10813) r!25965) ((_ is EmptyLang!10813) r!25965)))))

(assert (=> d!1086528 (= (usedCharacters!1076 r!25965) e!2296245)))

(assert (= (and d!1086528 c!640217) b!3706879))

(assert (= (and d!1086528 (not c!640217)) b!3706880))

(assert (= (and b!3706880 c!640218) b!3706875))

(assert (= (and b!3706880 (not c!640218)) b!3706881))

(assert (= (and b!3706881 c!640219) b!3706878))

(assert (= (and b!3706881 (not c!640219)) b!3706882))

(assert (= (and b!3706882 c!640216) b!3706877))

(assert (= (and b!3706882 (not c!640216)) b!3706876))

(assert (= (or b!3706877 b!3706876) bm!267671))

(assert (= (or b!3706877 b!3706876) bm!267670))

(assert (= (or b!3706877 b!3706876) bm!267669))

(assert (= (or b!3706878 bm!267671) bm!267668))

(declare-fun m!4216473 () Bool)

(assert (=> bm!267668 m!4216473))

(declare-fun m!4216477 () Bool)

(assert (=> bm!267669 m!4216477))

(declare-fun m!4216481 () Bool)

(assert (=> bm!267670 m!4216481))

(assert (=> b!3706666 d!1086528))

(declare-fun b!3706914 () Bool)

(declare-fun e!2296257 () Bool)

(declare-fun tp!1127779 () Bool)

(declare-fun tp!1127777 () Bool)

(assert (=> b!3706914 (= e!2296257 (and tp!1127779 tp!1127777))))

(assert (=> b!3706670 (= tp!1127753 e!2296257)))

(declare-fun b!3706911 () Bool)

(assert (=> b!3706911 (= e!2296257 tp_is_empty!18641)))

(declare-fun b!3706912 () Bool)

(declare-fun tp!1127778 () Bool)

(declare-fun tp!1127780 () Bool)

(assert (=> b!3706912 (= e!2296257 (and tp!1127778 tp!1127780))))

(declare-fun b!3706913 () Bool)

(declare-fun tp!1127781 () Bool)

(assert (=> b!3706913 (= e!2296257 tp!1127781)))

(assert (= (and b!3706670 ((_ is ElementMatch!10813) (regOne!22139 r!25965))) b!3706911))

(assert (= (and b!3706670 ((_ is Concat!17084) (regOne!22139 r!25965))) b!3706912))

(assert (= (and b!3706670 ((_ is Star!10813) (regOne!22139 r!25965))) b!3706913))

(assert (= (and b!3706670 ((_ is Union!10813) (regOne!22139 r!25965))) b!3706914))

(declare-fun b!3706922 () Bool)

(declare-fun e!2296259 () Bool)

(declare-fun tp!1127789 () Bool)

(declare-fun tp!1127787 () Bool)

(assert (=> b!3706922 (= e!2296259 (and tp!1127789 tp!1127787))))

(assert (=> b!3706670 (= tp!1127754 e!2296259)))

(declare-fun b!3706919 () Bool)

(assert (=> b!3706919 (= e!2296259 tp_is_empty!18641)))

(declare-fun b!3706920 () Bool)

(declare-fun tp!1127788 () Bool)

(declare-fun tp!1127790 () Bool)

(assert (=> b!3706920 (= e!2296259 (and tp!1127788 tp!1127790))))

(declare-fun b!3706921 () Bool)

(declare-fun tp!1127791 () Bool)

(assert (=> b!3706921 (= e!2296259 tp!1127791)))

(assert (= (and b!3706670 ((_ is ElementMatch!10813) (regTwo!22139 r!25965))) b!3706919))

(assert (= (and b!3706670 ((_ is Concat!17084) (regTwo!22139 r!25965))) b!3706920))

(assert (= (and b!3706670 ((_ is Star!10813) (regTwo!22139 r!25965))) b!3706921))

(assert (= (and b!3706670 ((_ is Union!10813) (regTwo!22139 r!25965))) b!3706922))

(declare-fun b!3706930 () Bool)

(declare-fun e!2296261 () Bool)

(declare-fun tp!1127799 () Bool)

(declare-fun tp!1127797 () Bool)

(assert (=> b!3706930 (= e!2296261 (and tp!1127799 tp!1127797))))

(assert (=> b!3706671 (= tp!1127756 e!2296261)))

(declare-fun b!3706927 () Bool)

(assert (=> b!3706927 (= e!2296261 tp_is_empty!18641)))

(declare-fun b!3706928 () Bool)

(declare-fun tp!1127798 () Bool)

(declare-fun tp!1127800 () Bool)

(assert (=> b!3706928 (= e!2296261 (and tp!1127798 tp!1127800))))

(declare-fun b!3706929 () Bool)

(declare-fun tp!1127801 () Bool)

(assert (=> b!3706929 (= e!2296261 tp!1127801)))

(assert (= (and b!3706671 ((_ is ElementMatch!10813) (regOne!22138 r!25965))) b!3706927))

(assert (= (and b!3706671 ((_ is Concat!17084) (regOne!22138 r!25965))) b!3706928))

(assert (= (and b!3706671 ((_ is Star!10813) (regOne!22138 r!25965))) b!3706929))

(assert (= (and b!3706671 ((_ is Union!10813) (regOne!22138 r!25965))) b!3706930))

(declare-fun b!3706938 () Bool)

(declare-fun e!2296264 () Bool)

(declare-fun tp!1127806 () Bool)

(declare-fun tp!1127804 () Bool)

(assert (=> b!3706938 (= e!2296264 (and tp!1127806 tp!1127804))))

(assert (=> b!3706671 (= tp!1127752 e!2296264)))

(declare-fun b!3706935 () Bool)

(assert (=> b!3706935 (= e!2296264 tp_is_empty!18641)))

(declare-fun b!3706936 () Bool)

(declare-fun tp!1127805 () Bool)

(declare-fun tp!1127807 () Bool)

(assert (=> b!3706936 (= e!2296264 (and tp!1127805 tp!1127807))))

(declare-fun b!3706937 () Bool)

(declare-fun tp!1127808 () Bool)

(assert (=> b!3706937 (= e!2296264 tp!1127808)))

(assert (= (and b!3706671 ((_ is ElementMatch!10813) (regTwo!22138 r!25965))) b!3706935))

(assert (= (and b!3706671 ((_ is Concat!17084) (regTwo!22138 r!25965))) b!3706936))

(assert (= (and b!3706671 ((_ is Star!10813) (regTwo!22138 r!25965))) b!3706937))

(assert (= (and b!3706671 ((_ is Union!10813) (regTwo!22138 r!25965))) b!3706938))

(declare-fun b!3706943 () Bool)

(declare-fun e!2296266 () Bool)

(declare-fun tp!1127812 () Bool)

(declare-fun tp!1127810 () Bool)

(assert (=> b!3706943 (= e!2296266 (and tp!1127812 tp!1127810))))

(assert (=> b!3706667 (= tp!1127751 e!2296266)))

(declare-fun b!3706940 () Bool)

(assert (=> b!3706940 (= e!2296266 tp_is_empty!18641)))

(declare-fun b!3706941 () Bool)

(declare-fun tp!1127811 () Bool)

(declare-fun tp!1127813 () Bool)

(assert (=> b!3706941 (= e!2296266 (and tp!1127811 tp!1127813))))

(declare-fun b!3706942 () Bool)

(declare-fun tp!1127814 () Bool)

(assert (=> b!3706942 (= e!2296266 tp!1127814)))

(assert (= (and b!3706667 ((_ is ElementMatch!10813) (reg!11142 r!25965))) b!3706940))

(assert (= (and b!3706667 ((_ is Concat!17084) (reg!11142 r!25965))) b!3706941))

(assert (= (and b!3706667 ((_ is Star!10813) (reg!11142 r!25965))) b!3706942))

(assert (= (and b!3706667 ((_ is Union!10813) (reg!11142 r!25965))) b!3706943))

(declare-fun b!3706960 () Bool)

(declare-fun e!2296272 () Bool)

(declare-fun tp!1127832 () Bool)

(assert (=> b!3706960 (= e!2296272 (and tp_is_empty!18641 tp!1127832))))

(assert (=> b!3706672 (= tp!1127755 e!2296272)))

(assert (= (and b!3706672 ((_ is Cons!39570) (t!302377 s!14922))) b!3706960))

(check-sat (not b!3706936) (not b!3706850) (not bm!267662) (not bm!267630) (not bm!267608) (not b!3706718) (not bm!267669) (not bm!267656) (not d!1086524) (not d!1086500) tp_is_empty!18641 (not b!3706860) (not b!3706914) (not d!1086514) (not b!3706920) (not bm!267611) (not b!3706942) (not bm!267632) (not bm!267655) (not bm!267670) (not b!3706922) (not b!3706913) (not d!1086518) (not b!3706912) (not b!3706930) (not b!3706928) (not b!3706937) (not bm!267654) (not b!3706921) (not bm!267668) (not b!3706848) (not b!3706872) (not b!3706941) (not b!3706929) (not b!3706783) (not b!3706938) (not b!3706960) (not bm!267664) (not b!3706943) (not d!1086504))
(check-sat)
