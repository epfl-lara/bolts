; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756876 () Bool)

(assert start!756876)

(declare-fun b!8038513 () Bool)

(declare-fun e!4734771 () Bool)

(declare-datatypes ((C!43844 0))(
  ( (C!43845 (val!32698 Int)) )
))
(declare-datatypes ((Regex!21753 0))(
  ( (ElementMatch!21753 (c!1474714 C!43844)) (Concat!30756 (regOne!44018 Regex!21753) (regTwo!44018 Regex!21753)) (EmptyExpr!21753) (Star!21753 (reg!22082 Regex!21753)) (EmptyLang!21753) (Union!21753 (regOne!44019 Regex!21753) (regTwo!44019 Regex!21753)) )
))
(declare-fun r!13107 () Regex!21753)

(declare-fun a!2390 () C!43844)

(declare-fun validRegex!12049 (Regex!21753) Bool)

(declare-fun derivativeStep!6670 (Regex!21753 C!43844) Regex!21753)

(assert (=> b!8038513 (= e!4734771 (not (validRegex!12049 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))

(declare-fun b!8038514 () Bool)

(declare-fun res!3177582 () Bool)

(assert (=> b!8038514 (=> (not res!3177582) (not e!4734771))))

(declare-fun nullable!9778 (Regex!21753) Bool)

(assert (=> b!8038514 (= res!3177582 (not (nullable!9778 (regOne!44018 r!13107))))))

(declare-fun b!8038515 () Bool)

(declare-fun res!3177581 () Bool)

(assert (=> b!8038515 (=> (not res!3177581) (not e!4734771))))

(get-info :version)

(assert (=> b!8038515 (= res!3177581 (and (not ((_ is EmptyExpr!21753) r!13107)) (not ((_ is EmptyLang!21753) r!13107)) (not ((_ is ElementMatch!21753) r!13107)) (not ((_ is Union!21753) r!13107)) (not ((_ is Star!21753) r!13107))))))

(declare-fun b!8038516 () Bool)

(declare-fun e!4734770 () Bool)

(declare-fun tp!2407492 () Bool)

(assert (=> b!8038516 (= e!4734770 tp!2407492)))

(declare-fun b!8038517 () Bool)

(declare-fun tp!2407491 () Bool)

(declare-fun tp!2407490 () Bool)

(assert (=> b!8038517 (= e!4734770 (and tp!2407491 tp!2407490))))

(declare-fun res!3177583 () Bool)

(assert (=> start!756876 (=> (not res!3177583) (not e!4734771))))

(assert (=> start!756876 (= res!3177583 (validRegex!12049 r!13107))))

(assert (=> start!756876 e!4734771))

(assert (=> start!756876 e!4734770))

(declare-fun tp_is_empty!54501 () Bool)

(assert (=> start!756876 tp_is_empty!54501))

(declare-fun b!8038518 () Bool)

(declare-fun tp!2407493 () Bool)

(declare-fun tp!2407489 () Bool)

(assert (=> b!8038518 (= e!4734770 (and tp!2407493 tp!2407489))))

(declare-fun b!8038519 () Bool)

(assert (=> b!8038519 (= e!4734770 tp_is_empty!54501)))

(assert (= (and start!756876 res!3177583) b!8038515))

(assert (= (and b!8038515 res!3177581) b!8038514))

(assert (= (and b!8038514 res!3177582) b!8038513))

(assert (= (and start!756876 ((_ is ElementMatch!21753) r!13107)) b!8038519))

(assert (= (and start!756876 ((_ is Concat!30756) r!13107)) b!8038517))

(assert (= (and start!756876 ((_ is Star!21753) r!13107)) b!8038516))

(assert (= (and start!756876 ((_ is Union!21753) r!13107)) b!8038518))

(declare-fun m!8394018 () Bool)

(assert (=> b!8038513 m!8394018))

(declare-fun m!8394020 () Bool)

(assert (=> b!8038513 m!8394020))

(declare-fun m!8394022 () Bool)

(assert (=> b!8038514 m!8394022))

(declare-fun m!8394024 () Bool)

(assert (=> start!756876 m!8394024))

(check-sat (not b!8038514) (not b!8038516) (not b!8038517) tp_is_empty!54501 (not start!756876) (not b!8038513) (not b!8038518))
(check-sat)
(get-model)

(declare-fun d!2395263 () Bool)

(declare-fun nullableFct!3871 (Regex!21753) Bool)

(assert (=> d!2395263 (= (nullable!9778 (regOne!44018 r!13107)) (nullableFct!3871 (regOne!44018 r!13107)))))

(declare-fun bs!1971537 () Bool)

(assert (= bs!1971537 d!2395263))

(declare-fun m!8394026 () Bool)

(assert (=> bs!1971537 m!8394026))

(assert (=> b!8038514 d!2395263))

(declare-fun bm!746193 () Bool)

(declare-fun call!746200 () Bool)

(declare-fun c!1474726 () Bool)

(declare-fun c!1474725 () Bool)

(assert (=> bm!746193 (= call!746200 (validRegex!12049 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))))))

(declare-fun b!8038565 () Bool)

(declare-fun res!3177613 () Bool)

(declare-fun e!4734807 () Bool)

(assert (=> b!8038565 (=> res!3177613 e!4734807)))

(assert (=> b!8038565 (= res!3177613 (not ((_ is Concat!30756) r!13107)))))

(declare-fun e!4734809 () Bool)

(assert (=> b!8038565 (= e!4734809 e!4734807)))

(declare-fun b!8038566 () Bool)

(declare-fun e!4734811 () Bool)

(assert (=> b!8038566 (= e!4734811 call!746200)))

(declare-fun b!8038567 () Bool)

(declare-fun e!4734813 () Bool)

(assert (=> b!8038567 (= e!4734813 e!4734811)))

(declare-fun res!3177611 () Bool)

(assert (=> b!8038567 (= res!3177611 (not (nullable!9778 (reg!22082 r!13107))))))

(assert (=> b!8038567 (=> (not res!3177611) (not e!4734811))))

(declare-fun b!8038568 () Bool)

(declare-fun e!4734810 () Bool)

(declare-fun call!746198 () Bool)

(assert (=> b!8038568 (= e!4734810 call!746198)))

(declare-fun b!8038569 () Bool)

(assert (=> b!8038569 (= e!4734813 e!4734809)))

(assert (=> b!8038569 (= c!1474726 ((_ is Union!21753) r!13107))))

(declare-fun b!8038570 () Bool)

(declare-fun res!3177610 () Bool)

(declare-fun e!4734812 () Bool)

(assert (=> b!8038570 (=> (not res!3177610) (not e!4734812))))

(declare-fun call!746199 () Bool)

(assert (=> b!8038570 (= res!3177610 call!746199)))

(assert (=> b!8038570 (= e!4734809 e!4734812)))

(declare-fun b!8038571 () Bool)

(assert (=> b!8038571 (= e!4734812 call!746198)))

(declare-fun bm!746194 () Bool)

(assert (=> bm!746194 (= call!746199 (validRegex!12049 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))))))

(declare-fun b!8038572 () Bool)

(assert (=> b!8038572 (= e!4734807 e!4734810)))

(declare-fun res!3177612 () Bool)

(assert (=> b!8038572 (=> (not res!3177612) (not e!4734810))))

(assert (=> b!8038572 (= res!3177612 call!746199)))

(declare-fun bm!746195 () Bool)

(assert (=> bm!746195 (= call!746198 call!746200)))

(declare-fun d!2395265 () Bool)

(declare-fun res!3177609 () Bool)

(declare-fun e!4734808 () Bool)

(assert (=> d!2395265 (=> res!3177609 e!4734808)))

(assert (=> d!2395265 (= res!3177609 ((_ is ElementMatch!21753) r!13107))))

(assert (=> d!2395265 (= (validRegex!12049 r!13107) e!4734808)))

(declare-fun b!8038573 () Bool)

(assert (=> b!8038573 (= e!4734808 e!4734813)))

(assert (=> b!8038573 (= c!1474725 ((_ is Star!21753) r!13107))))

(assert (= (and d!2395265 (not res!3177609)) b!8038573))

(assert (= (and b!8038573 c!1474725) b!8038567))

(assert (= (and b!8038573 (not c!1474725)) b!8038569))

(assert (= (and b!8038567 res!3177611) b!8038566))

(assert (= (and b!8038569 c!1474726) b!8038570))

(assert (= (and b!8038569 (not c!1474726)) b!8038565))

(assert (= (and b!8038570 res!3177610) b!8038571))

(assert (= (and b!8038565 (not res!3177613)) b!8038572))

(assert (= (and b!8038572 res!3177612) b!8038568))

(assert (= (or b!8038571 b!8038568) bm!746195))

(assert (= (or b!8038570 b!8038572) bm!746194))

(assert (= (or b!8038566 bm!746195) bm!746193))

(declare-fun m!8394034 () Bool)

(assert (=> bm!746193 m!8394034))

(declare-fun m!8394036 () Bool)

(assert (=> b!8038567 m!8394036))

(declare-fun m!8394038 () Bool)

(assert (=> bm!746194 m!8394038))

(assert (=> start!756876 d!2395265))

(declare-fun bm!746196 () Bool)

(declare-fun c!1474727 () Bool)

(declare-fun call!746203 () Bool)

(declare-fun c!1474728 () Bool)

(assert (=> bm!746196 (= call!746203 (validRegex!12049 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))

(declare-fun b!8038574 () Bool)

(declare-fun res!3177618 () Bool)

(declare-fun e!4734814 () Bool)

(assert (=> b!8038574 (=> res!3177618 e!4734814)))

(assert (=> b!8038574 (= res!3177618 (not ((_ is Concat!30756) (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))

(declare-fun e!4734816 () Bool)

(assert (=> b!8038574 (= e!4734816 e!4734814)))

(declare-fun b!8038575 () Bool)

(declare-fun e!4734818 () Bool)

(assert (=> b!8038575 (= e!4734818 call!746203)))

(declare-fun b!8038576 () Bool)

(declare-fun e!4734820 () Bool)

(assert (=> b!8038576 (= e!4734820 e!4734818)))

(declare-fun res!3177616 () Bool)

(assert (=> b!8038576 (= res!3177616 (not (nullable!9778 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))

(assert (=> b!8038576 (=> (not res!3177616) (not e!4734818))))

(declare-fun b!8038577 () Bool)

(declare-fun e!4734817 () Bool)

(declare-fun call!746201 () Bool)

(assert (=> b!8038577 (= e!4734817 call!746201)))

(declare-fun b!8038578 () Bool)

(assert (=> b!8038578 (= e!4734820 e!4734816)))

(assert (=> b!8038578 (= c!1474728 ((_ is Union!21753) (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))

(declare-fun b!8038579 () Bool)

(declare-fun res!3177615 () Bool)

(declare-fun e!4734819 () Bool)

(assert (=> b!8038579 (=> (not res!3177615) (not e!4734819))))

(declare-fun call!746202 () Bool)

(assert (=> b!8038579 (= res!3177615 call!746202)))

(assert (=> b!8038579 (= e!4734816 e!4734819)))

(declare-fun b!8038580 () Bool)

(assert (=> b!8038580 (= e!4734819 call!746201)))

(declare-fun bm!746197 () Bool)

(assert (=> bm!746197 (= call!746202 (validRegex!12049 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))

(declare-fun b!8038581 () Bool)

(assert (=> b!8038581 (= e!4734814 e!4734817)))

(declare-fun res!3177617 () Bool)

(assert (=> b!8038581 (=> (not res!3177617) (not e!4734817))))

(assert (=> b!8038581 (= res!3177617 call!746202)))

(declare-fun bm!746198 () Bool)

(assert (=> bm!746198 (= call!746201 call!746203)))

(declare-fun d!2395269 () Bool)

(declare-fun res!3177614 () Bool)

(declare-fun e!4734815 () Bool)

(assert (=> d!2395269 (=> res!3177614 e!4734815)))

(assert (=> d!2395269 (= res!3177614 ((_ is ElementMatch!21753) (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))

(assert (=> d!2395269 (= (validRegex!12049 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) e!4734815)))

(declare-fun b!8038582 () Bool)

(assert (=> b!8038582 (= e!4734815 e!4734820)))

(assert (=> b!8038582 (= c!1474727 ((_ is Star!21753) (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))

(assert (= (and d!2395269 (not res!3177614)) b!8038582))

(assert (= (and b!8038582 c!1474727) b!8038576))

(assert (= (and b!8038582 (not c!1474727)) b!8038578))

(assert (= (and b!8038576 res!3177616) b!8038575))

(assert (= (and b!8038578 c!1474728) b!8038579))

(assert (= (and b!8038578 (not c!1474728)) b!8038574))

(assert (= (and b!8038579 res!3177615) b!8038580))

(assert (= (and b!8038574 (not res!3177618)) b!8038581))

(assert (= (and b!8038581 res!3177617) b!8038577))

(assert (= (or b!8038580 b!8038577) bm!746198))

(assert (= (or b!8038579 b!8038581) bm!746197))

(assert (= (or b!8038575 bm!746198) bm!746196))

(declare-fun m!8394040 () Bool)

(assert (=> bm!746196 m!8394040))

(declare-fun m!8394042 () Bool)

(assert (=> b!8038576 m!8394042))

(declare-fun m!8394044 () Bool)

(assert (=> bm!746197 m!8394044))

(assert (=> b!8038513 d!2395269))

(declare-fun b!8038642 () Bool)

(declare-fun e!4734857 () Regex!21753)

(declare-fun call!746227 () Regex!21753)

(assert (=> b!8038642 (= e!4734857 (Concat!30756 call!746227 (regOne!44018 r!13107)))))

(declare-fun b!8038643 () Bool)

(declare-fun e!4734856 () Regex!21753)

(declare-fun e!4734853 () Regex!21753)

(assert (=> b!8038643 (= e!4734856 e!4734853)))

(declare-fun c!1474758 () Bool)

(assert (=> b!8038643 (= c!1474758 ((_ is ElementMatch!21753) (regOne!44018 r!13107)))))

(declare-fun bm!746222 () Bool)

(declare-fun call!746230 () Regex!21753)

(declare-fun call!746228 () Regex!21753)

(assert (=> bm!746222 (= call!746230 call!746228)))

(declare-fun b!8038645 () Bool)

(declare-fun e!4734855 () Regex!21753)

(assert (=> b!8038645 (= e!4734855 (Union!21753 (Concat!30756 call!746227 (regTwo!44018 (regOne!44018 r!13107))) call!746230))))

(declare-fun b!8038646 () Bool)

(declare-fun e!4734854 () Regex!21753)

(assert (=> b!8038646 (= e!4734854 e!4734857)))

(declare-fun c!1474759 () Bool)

(assert (=> b!8038646 (= c!1474759 ((_ is Star!21753) (regOne!44018 r!13107)))))

(declare-fun b!8038647 () Bool)

(declare-fun c!1474757 () Bool)

(assert (=> b!8038647 (= c!1474757 (nullable!9778 (regOne!44018 (regOne!44018 r!13107))))))

(assert (=> b!8038647 (= e!4734857 e!4734855)))

(declare-fun bm!746223 () Bool)

(declare-fun call!746229 () Regex!21753)

(assert (=> bm!746223 (= call!746227 call!746229)))

(declare-fun b!8038648 () Bool)

(assert (=> b!8038648 (= e!4734853 (ite (= a!2390 (c!1474714 (regOne!44018 r!13107))) EmptyExpr!21753 EmptyLang!21753))))

(declare-fun b!8038649 () Bool)

(assert (=> b!8038649 (= e!4734855 (Union!21753 (Concat!30756 call!746230 (regTwo!44018 (regOne!44018 r!13107))) EmptyLang!21753))))

(declare-fun c!1474760 () Bool)

(declare-fun bm!746224 () Bool)

(assert (=> bm!746224 (= call!746228 (derivativeStep!6670 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))) a!2390))))

(declare-fun b!8038650 () Bool)

(assert (=> b!8038650 (= c!1474760 ((_ is Union!21753) (regOne!44018 r!13107)))))

(assert (=> b!8038650 (= e!4734853 e!4734854)))

(declare-fun b!8038644 () Bool)

(assert (=> b!8038644 (= e!4734856 EmptyLang!21753)))

(declare-fun d!2395271 () Bool)

(declare-fun lt!2722166 () Regex!21753)

(assert (=> d!2395271 (validRegex!12049 lt!2722166)))

(assert (=> d!2395271 (= lt!2722166 e!4734856)))

(declare-fun c!1474756 () Bool)

(assert (=> d!2395271 (= c!1474756 (or ((_ is EmptyExpr!21753) (regOne!44018 r!13107)) ((_ is EmptyLang!21753) (regOne!44018 r!13107))))))

(assert (=> d!2395271 (validRegex!12049 (regOne!44018 r!13107))))

(assert (=> d!2395271 (= (derivativeStep!6670 (regOne!44018 r!13107) a!2390) lt!2722166)))

(declare-fun bm!746225 () Bool)

(assert (=> bm!746225 (= call!746229 (derivativeStep!6670 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))) a!2390))))

(declare-fun b!8038651 () Bool)

(assert (=> b!8038651 (= e!4734854 (Union!21753 call!746229 call!746228))))

(assert (= (and d!2395271 c!1474756) b!8038644))

(assert (= (and d!2395271 (not c!1474756)) b!8038643))

(assert (= (and b!8038643 c!1474758) b!8038648))

(assert (= (and b!8038643 (not c!1474758)) b!8038650))

(assert (= (and b!8038650 c!1474760) b!8038651))

(assert (= (and b!8038650 (not c!1474760)) b!8038646))

(assert (= (and b!8038646 c!1474759) b!8038642))

(assert (= (and b!8038646 (not c!1474759)) b!8038647))

(assert (= (and b!8038647 c!1474757) b!8038645))

(assert (= (and b!8038647 (not c!1474757)) b!8038649))

(assert (= (or b!8038645 b!8038649) bm!746222))

(assert (= (or b!8038642 b!8038645) bm!746223))

(assert (= (or b!8038651 bm!746222) bm!746224))

(assert (= (or b!8038651 bm!746223) bm!746225))

(declare-fun m!8394064 () Bool)

(assert (=> b!8038647 m!8394064))

(declare-fun m!8394066 () Bool)

(assert (=> bm!746224 m!8394066))

(declare-fun m!8394068 () Bool)

(assert (=> d!2395271 m!8394068))

(declare-fun m!8394070 () Bool)

(assert (=> d!2395271 m!8394070))

(declare-fun m!8394072 () Bool)

(assert (=> bm!746225 m!8394072))

(assert (=> b!8038513 d!2395271))

(declare-fun b!8038694 () Bool)

(declare-fun e!4734867 () Bool)

(declare-fun tp!2407540 () Bool)

(assert (=> b!8038694 (= e!4734867 tp!2407540)))

(declare-fun b!8038695 () Bool)

(declare-fun tp!2407541 () Bool)

(declare-fun tp!2407543 () Bool)

(assert (=> b!8038695 (= e!4734867 (and tp!2407541 tp!2407543))))

(declare-fun b!8038693 () Bool)

(declare-fun tp!2407539 () Bool)

(declare-fun tp!2407542 () Bool)

(assert (=> b!8038693 (= e!4734867 (and tp!2407539 tp!2407542))))

(declare-fun b!8038692 () Bool)

(assert (=> b!8038692 (= e!4734867 tp_is_empty!54501)))

(assert (=> b!8038516 (= tp!2407492 e!4734867)))

(assert (= (and b!8038516 ((_ is ElementMatch!21753) (reg!22082 r!13107))) b!8038692))

(assert (= (and b!8038516 ((_ is Concat!30756) (reg!22082 r!13107))) b!8038693))

(assert (= (and b!8038516 ((_ is Star!21753) (reg!22082 r!13107))) b!8038694))

(assert (= (and b!8038516 ((_ is Union!21753) (reg!22082 r!13107))) b!8038695))

(declare-fun b!8038698 () Bool)

(declare-fun e!4734868 () Bool)

(declare-fun tp!2407545 () Bool)

(assert (=> b!8038698 (= e!4734868 tp!2407545)))

(declare-fun b!8038699 () Bool)

(declare-fun tp!2407546 () Bool)

(declare-fun tp!2407548 () Bool)

(assert (=> b!8038699 (= e!4734868 (and tp!2407546 tp!2407548))))

(declare-fun b!8038697 () Bool)

(declare-fun tp!2407544 () Bool)

(declare-fun tp!2407547 () Bool)

(assert (=> b!8038697 (= e!4734868 (and tp!2407544 tp!2407547))))

(declare-fun b!8038696 () Bool)

(assert (=> b!8038696 (= e!4734868 tp_is_empty!54501)))

(assert (=> b!8038518 (= tp!2407493 e!4734868)))

(assert (= (and b!8038518 ((_ is ElementMatch!21753) (regOne!44019 r!13107))) b!8038696))

(assert (= (and b!8038518 ((_ is Concat!30756) (regOne!44019 r!13107))) b!8038697))

(assert (= (and b!8038518 ((_ is Star!21753) (regOne!44019 r!13107))) b!8038698))

(assert (= (and b!8038518 ((_ is Union!21753) (regOne!44019 r!13107))) b!8038699))

(declare-fun b!8038702 () Bool)

(declare-fun e!4734869 () Bool)

(declare-fun tp!2407550 () Bool)

(assert (=> b!8038702 (= e!4734869 tp!2407550)))

(declare-fun b!8038703 () Bool)

(declare-fun tp!2407551 () Bool)

(declare-fun tp!2407553 () Bool)

(assert (=> b!8038703 (= e!4734869 (and tp!2407551 tp!2407553))))

(declare-fun b!8038701 () Bool)

(declare-fun tp!2407549 () Bool)

(declare-fun tp!2407552 () Bool)

(assert (=> b!8038701 (= e!4734869 (and tp!2407549 tp!2407552))))

(declare-fun b!8038700 () Bool)

(assert (=> b!8038700 (= e!4734869 tp_is_empty!54501)))

(assert (=> b!8038518 (= tp!2407489 e!4734869)))

(assert (= (and b!8038518 ((_ is ElementMatch!21753) (regTwo!44019 r!13107))) b!8038700))

(assert (= (and b!8038518 ((_ is Concat!30756) (regTwo!44019 r!13107))) b!8038701))

(assert (= (and b!8038518 ((_ is Star!21753) (regTwo!44019 r!13107))) b!8038702))

(assert (= (and b!8038518 ((_ is Union!21753) (regTwo!44019 r!13107))) b!8038703))

(declare-fun b!8038706 () Bool)

(declare-fun e!4734870 () Bool)

(declare-fun tp!2407555 () Bool)

(assert (=> b!8038706 (= e!4734870 tp!2407555)))

(declare-fun b!8038707 () Bool)

(declare-fun tp!2407556 () Bool)

(declare-fun tp!2407558 () Bool)

(assert (=> b!8038707 (= e!4734870 (and tp!2407556 tp!2407558))))

(declare-fun b!8038705 () Bool)

(declare-fun tp!2407554 () Bool)

(declare-fun tp!2407557 () Bool)

(assert (=> b!8038705 (= e!4734870 (and tp!2407554 tp!2407557))))

(declare-fun b!8038704 () Bool)

(assert (=> b!8038704 (= e!4734870 tp_is_empty!54501)))

(assert (=> b!8038517 (= tp!2407491 e!4734870)))

(assert (= (and b!8038517 ((_ is ElementMatch!21753) (regOne!44018 r!13107))) b!8038704))

(assert (= (and b!8038517 ((_ is Concat!30756) (regOne!44018 r!13107))) b!8038705))

(assert (= (and b!8038517 ((_ is Star!21753) (regOne!44018 r!13107))) b!8038706))

(assert (= (and b!8038517 ((_ is Union!21753) (regOne!44018 r!13107))) b!8038707))

(declare-fun b!8038710 () Bool)

(declare-fun e!4734871 () Bool)

(declare-fun tp!2407560 () Bool)

(assert (=> b!8038710 (= e!4734871 tp!2407560)))

(declare-fun b!8038711 () Bool)

(declare-fun tp!2407561 () Bool)

(declare-fun tp!2407563 () Bool)

(assert (=> b!8038711 (= e!4734871 (and tp!2407561 tp!2407563))))

(declare-fun b!8038709 () Bool)

(declare-fun tp!2407559 () Bool)

(declare-fun tp!2407562 () Bool)

(assert (=> b!8038709 (= e!4734871 (and tp!2407559 tp!2407562))))

(declare-fun b!8038708 () Bool)

(assert (=> b!8038708 (= e!4734871 tp_is_empty!54501)))

(assert (=> b!8038517 (= tp!2407490 e!4734871)))

(assert (= (and b!8038517 ((_ is ElementMatch!21753) (regTwo!44018 r!13107))) b!8038708))

(assert (= (and b!8038517 ((_ is Concat!30756) (regTwo!44018 r!13107))) b!8038709))

(assert (= (and b!8038517 ((_ is Star!21753) (regTwo!44018 r!13107))) b!8038710))

(assert (= (and b!8038517 ((_ is Union!21753) (regTwo!44018 r!13107))) b!8038711))

(check-sat (not b!8038576) (not d!2395271) (not b!8038702) (not b!8038707) (not b!8038710) (not b!8038706) (not bm!746225) (not d!2395263) (not b!8038703) tp_is_empty!54501 (not b!8038699) (not b!8038694) (not b!8038709) (not b!8038695) (not b!8038711) (not b!8038567) (not b!8038701) (not b!8038705) (not bm!746196) (not bm!746224) (not bm!746197) (not b!8038697) (not bm!746194) (not b!8038693) (not b!8038647) (not bm!746193) (not b!8038698))
(check-sat)
(get-model)

(declare-fun b!8038712 () Bool)

(declare-fun call!746231 () Regex!21753)

(declare-fun e!4734876 () Regex!21753)

(assert (=> b!8038712 (= e!4734876 (Concat!30756 call!746231 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(declare-fun b!8038713 () Bool)

(declare-fun e!4734875 () Regex!21753)

(declare-fun e!4734872 () Regex!21753)

(assert (=> b!8038713 (= e!4734875 e!4734872)))

(declare-fun c!1474763 () Bool)

(assert (=> b!8038713 (= c!1474763 ((_ is ElementMatch!21753) (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(declare-fun bm!746226 () Bool)

(declare-fun call!746234 () Regex!21753)

(declare-fun call!746232 () Regex!21753)

(assert (=> bm!746226 (= call!746234 call!746232)))

(declare-fun e!4734874 () Regex!21753)

(declare-fun b!8038715 () Bool)

(assert (=> b!8038715 (= e!4734874 (Union!21753 (Concat!30756 call!746231 (regTwo!44018 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))) call!746234))))

(declare-fun b!8038716 () Bool)

(declare-fun e!4734873 () Regex!21753)

(assert (=> b!8038716 (= e!4734873 e!4734876)))

(declare-fun c!1474764 () Bool)

(assert (=> b!8038716 (= c!1474764 ((_ is Star!21753) (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(declare-fun c!1474762 () Bool)

(declare-fun b!8038717 () Bool)

(assert (=> b!8038717 (= c!1474762 (nullable!9778 (regOne!44018 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))))

(assert (=> b!8038717 (= e!4734876 e!4734874)))

(declare-fun bm!746227 () Bool)

(declare-fun call!746233 () Regex!21753)

(assert (=> bm!746227 (= call!746231 call!746233)))

(declare-fun b!8038718 () Bool)

(assert (=> b!8038718 (= e!4734872 (ite (= a!2390 (c!1474714 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))) EmptyExpr!21753 EmptyLang!21753))))

(declare-fun b!8038719 () Bool)

(assert (=> b!8038719 (= e!4734874 (Union!21753 (Concat!30756 call!746234 (regTwo!44018 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))) EmptyLang!21753))))

(declare-fun c!1474765 () Bool)

(declare-fun bm!746228 () Bool)

(assert (=> bm!746228 (= call!746232 (derivativeStep!6670 (ite c!1474765 (regTwo!44019 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (ite c!1474762 (regTwo!44018 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (regOne!44018 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))) a!2390))))

(declare-fun b!8038720 () Bool)

(assert (=> b!8038720 (= c!1474765 ((_ is Union!21753) (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(assert (=> b!8038720 (= e!4734872 e!4734873)))

(declare-fun b!8038714 () Bool)

(assert (=> b!8038714 (= e!4734875 EmptyLang!21753)))

(declare-fun d!2395277 () Bool)

(declare-fun lt!2722167 () Regex!21753)

(assert (=> d!2395277 (validRegex!12049 lt!2722167)))

(assert (=> d!2395277 (= lt!2722167 e!4734875)))

(declare-fun c!1474761 () Bool)

(assert (=> d!2395277 (= c!1474761 (or ((_ is EmptyExpr!21753) (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) ((_ is EmptyLang!21753) (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))))

(assert (=> d!2395277 (validRegex!12049 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))

(assert (=> d!2395277 (= (derivativeStep!6670 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))) a!2390) lt!2722167)))

(declare-fun bm!746229 () Bool)

(assert (=> bm!746229 (= call!746233 (derivativeStep!6670 (ite c!1474765 (regOne!44019 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (ite c!1474764 (reg!22082 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (regOne!44018 (ite c!1474760 (regOne!44019 (regOne!44018 r!13107)) (ite c!1474759 (reg!22082 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))) a!2390))))

(declare-fun b!8038721 () Bool)

(assert (=> b!8038721 (= e!4734873 (Union!21753 call!746233 call!746232))))

(assert (= (and d!2395277 c!1474761) b!8038714))

(assert (= (and d!2395277 (not c!1474761)) b!8038713))

(assert (= (and b!8038713 c!1474763) b!8038718))

(assert (= (and b!8038713 (not c!1474763)) b!8038720))

(assert (= (and b!8038720 c!1474765) b!8038721))

(assert (= (and b!8038720 (not c!1474765)) b!8038716))

(assert (= (and b!8038716 c!1474764) b!8038712))

(assert (= (and b!8038716 (not c!1474764)) b!8038717))

(assert (= (and b!8038717 c!1474762) b!8038715))

(assert (= (and b!8038717 (not c!1474762)) b!8038719))

(assert (= (or b!8038715 b!8038719) bm!746226))

(assert (= (or b!8038712 b!8038715) bm!746227))

(assert (= (or b!8038721 bm!746226) bm!746228))

(assert (= (or b!8038721 bm!746227) bm!746229))

(declare-fun m!8394074 () Bool)

(assert (=> b!8038717 m!8394074))

(declare-fun m!8394076 () Bool)

(assert (=> bm!746228 m!8394076))

(declare-fun m!8394078 () Bool)

(assert (=> d!2395277 m!8394078))

(declare-fun m!8394080 () Bool)

(assert (=> d!2395277 m!8394080))

(declare-fun m!8394082 () Bool)

(assert (=> bm!746229 m!8394082))

(assert (=> bm!746225 d!2395277))

(declare-fun c!1474767 () Bool)

(declare-fun call!746237 () Bool)

(declare-fun bm!746230 () Bool)

(declare-fun c!1474766 () Bool)

(assert (=> bm!746230 (= call!746237 (validRegex!12049 (ite c!1474766 (reg!22082 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))) (ite c!1474767 (regTwo!44019 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))) (regTwo!44018 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))))))

(declare-fun b!8038722 () Bool)

(declare-fun res!3177628 () Bool)

(declare-fun e!4734877 () Bool)

(assert (=> b!8038722 (=> res!3177628 e!4734877)))

(assert (=> b!8038722 (= res!3177628 (not ((_ is Concat!30756) (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))))

(declare-fun e!4734879 () Bool)

(assert (=> b!8038722 (= e!4734879 e!4734877)))

(declare-fun b!8038723 () Bool)

(declare-fun e!4734881 () Bool)

(assert (=> b!8038723 (= e!4734881 call!746237)))

(declare-fun b!8038724 () Bool)

(declare-fun e!4734883 () Bool)

(assert (=> b!8038724 (= e!4734883 e!4734881)))

(declare-fun res!3177626 () Bool)

(assert (=> b!8038724 (= res!3177626 (not (nullable!9778 (reg!22082 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))))

(assert (=> b!8038724 (=> (not res!3177626) (not e!4734881))))

(declare-fun b!8038725 () Bool)

(declare-fun e!4734880 () Bool)

(declare-fun call!746235 () Bool)

(assert (=> b!8038725 (= e!4734880 call!746235)))

(declare-fun b!8038726 () Bool)

(assert (=> b!8038726 (= e!4734883 e!4734879)))

(assert (=> b!8038726 (= c!1474767 ((_ is Union!21753) (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))

(declare-fun b!8038727 () Bool)

(declare-fun res!3177625 () Bool)

(declare-fun e!4734882 () Bool)

(assert (=> b!8038727 (=> (not res!3177625) (not e!4734882))))

(declare-fun call!746236 () Bool)

(assert (=> b!8038727 (= res!3177625 call!746236)))

(assert (=> b!8038727 (= e!4734879 e!4734882)))

(declare-fun b!8038728 () Bool)

(assert (=> b!8038728 (= e!4734882 call!746235)))

(declare-fun bm!746231 () Bool)

(assert (=> bm!746231 (= call!746236 (validRegex!12049 (ite c!1474767 (regOne!44019 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))) (regOne!44018 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))))

(declare-fun b!8038729 () Bool)

(assert (=> b!8038729 (= e!4734877 e!4734880)))

(declare-fun res!3177627 () Bool)

(assert (=> b!8038729 (=> (not res!3177627) (not e!4734880))))

(assert (=> b!8038729 (= res!3177627 call!746236)))

(declare-fun bm!746232 () Bool)

(assert (=> bm!746232 (= call!746235 call!746237)))

(declare-fun d!2395279 () Bool)

(declare-fun res!3177624 () Bool)

(declare-fun e!4734878 () Bool)

(assert (=> d!2395279 (=> res!3177624 e!4734878)))

(assert (=> d!2395279 (= res!3177624 ((_ is ElementMatch!21753) (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))

(assert (=> d!2395279 (= (validRegex!12049 (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))) e!4734878)))

(declare-fun b!8038730 () Bool)

(assert (=> b!8038730 (= e!4734878 e!4734883)))

(assert (=> b!8038730 (= c!1474766 ((_ is Star!21753) (ite c!1474727 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (ite c!1474728 (regTwo!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regTwo!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))

(assert (= (and d!2395279 (not res!3177624)) b!8038730))

(assert (= (and b!8038730 c!1474766) b!8038724))

(assert (= (and b!8038730 (not c!1474766)) b!8038726))

(assert (= (and b!8038724 res!3177626) b!8038723))

(assert (= (and b!8038726 c!1474767) b!8038727))

(assert (= (and b!8038726 (not c!1474767)) b!8038722))

(assert (= (and b!8038727 res!3177625) b!8038728))

(assert (= (and b!8038722 (not res!3177628)) b!8038729))

(assert (= (and b!8038729 res!3177627) b!8038725))

(assert (= (or b!8038728 b!8038725) bm!746232))

(assert (= (or b!8038727 b!8038729) bm!746231))

(assert (= (or b!8038723 bm!746232) bm!746230))

(declare-fun m!8394084 () Bool)

(assert (=> bm!746230 m!8394084))

(declare-fun m!8394086 () Bool)

(assert (=> b!8038724 m!8394086))

(declare-fun m!8394088 () Bool)

(assert (=> bm!746231 m!8394088))

(assert (=> bm!746196 d!2395279))

(declare-fun d!2395281 () Bool)

(assert (=> d!2395281 (= (nullable!9778 (reg!22082 r!13107)) (nullableFct!3871 (reg!22082 r!13107)))))

(declare-fun bs!1971539 () Bool)

(assert (= bs!1971539 d!2395281))

(declare-fun m!8394090 () Bool)

(assert (=> bs!1971539 m!8394090))

(assert (=> b!8038567 d!2395281))

(declare-fun c!1474768 () Bool)

(declare-fun c!1474769 () Bool)

(declare-fun bm!746233 () Bool)

(declare-fun call!746240 () Bool)

(assert (=> bm!746233 (= call!746240 (validRegex!12049 (ite c!1474768 (reg!22082 lt!2722166) (ite c!1474769 (regTwo!44019 lt!2722166) (regTwo!44018 lt!2722166)))))))

(declare-fun b!8038731 () Bool)

(declare-fun res!3177633 () Bool)

(declare-fun e!4734884 () Bool)

(assert (=> b!8038731 (=> res!3177633 e!4734884)))

(assert (=> b!8038731 (= res!3177633 (not ((_ is Concat!30756) lt!2722166)))))

(declare-fun e!4734886 () Bool)

(assert (=> b!8038731 (= e!4734886 e!4734884)))

(declare-fun b!8038732 () Bool)

(declare-fun e!4734888 () Bool)

(assert (=> b!8038732 (= e!4734888 call!746240)))

(declare-fun b!8038733 () Bool)

(declare-fun e!4734890 () Bool)

(assert (=> b!8038733 (= e!4734890 e!4734888)))

(declare-fun res!3177631 () Bool)

(assert (=> b!8038733 (= res!3177631 (not (nullable!9778 (reg!22082 lt!2722166))))))

(assert (=> b!8038733 (=> (not res!3177631) (not e!4734888))))

(declare-fun b!8038734 () Bool)

(declare-fun e!4734887 () Bool)

(declare-fun call!746238 () Bool)

(assert (=> b!8038734 (= e!4734887 call!746238)))

(declare-fun b!8038735 () Bool)

(assert (=> b!8038735 (= e!4734890 e!4734886)))

(assert (=> b!8038735 (= c!1474769 ((_ is Union!21753) lt!2722166))))

(declare-fun b!8038736 () Bool)

(declare-fun res!3177630 () Bool)

(declare-fun e!4734889 () Bool)

(assert (=> b!8038736 (=> (not res!3177630) (not e!4734889))))

(declare-fun call!746239 () Bool)

(assert (=> b!8038736 (= res!3177630 call!746239)))

(assert (=> b!8038736 (= e!4734886 e!4734889)))

(declare-fun b!8038737 () Bool)

(assert (=> b!8038737 (= e!4734889 call!746238)))

(declare-fun bm!746234 () Bool)

(assert (=> bm!746234 (= call!746239 (validRegex!12049 (ite c!1474769 (regOne!44019 lt!2722166) (regOne!44018 lt!2722166))))))

(declare-fun b!8038738 () Bool)

(assert (=> b!8038738 (= e!4734884 e!4734887)))

(declare-fun res!3177632 () Bool)

(assert (=> b!8038738 (=> (not res!3177632) (not e!4734887))))

(assert (=> b!8038738 (= res!3177632 call!746239)))

(declare-fun bm!746235 () Bool)

(assert (=> bm!746235 (= call!746238 call!746240)))

(declare-fun d!2395283 () Bool)

(declare-fun res!3177629 () Bool)

(declare-fun e!4734885 () Bool)

(assert (=> d!2395283 (=> res!3177629 e!4734885)))

(assert (=> d!2395283 (= res!3177629 ((_ is ElementMatch!21753) lt!2722166))))

(assert (=> d!2395283 (= (validRegex!12049 lt!2722166) e!4734885)))

(declare-fun b!8038739 () Bool)

(assert (=> b!8038739 (= e!4734885 e!4734890)))

(assert (=> b!8038739 (= c!1474768 ((_ is Star!21753) lt!2722166))))

(assert (= (and d!2395283 (not res!3177629)) b!8038739))

(assert (= (and b!8038739 c!1474768) b!8038733))

(assert (= (and b!8038739 (not c!1474768)) b!8038735))

(assert (= (and b!8038733 res!3177631) b!8038732))

(assert (= (and b!8038735 c!1474769) b!8038736))

(assert (= (and b!8038735 (not c!1474769)) b!8038731))

(assert (= (and b!8038736 res!3177630) b!8038737))

(assert (= (and b!8038731 (not res!3177633)) b!8038738))

(assert (= (and b!8038738 res!3177632) b!8038734))

(assert (= (or b!8038737 b!8038734) bm!746235))

(assert (= (or b!8038736 b!8038738) bm!746234))

(assert (= (or b!8038732 bm!746235) bm!746233))

(declare-fun m!8394092 () Bool)

(assert (=> bm!746233 m!8394092))

(declare-fun m!8394094 () Bool)

(assert (=> b!8038733 m!8394094))

(declare-fun m!8394096 () Bool)

(assert (=> bm!746234 m!8394096))

(assert (=> d!2395271 d!2395283))

(declare-fun call!746243 () Bool)

(declare-fun bm!746236 () Bool)

(declare-fun c!1474771 () Bool)

(declare-fun c!1474770 () Bool)

(assert (=> bm!746236 (= call!746243 (validRegex!12049 (ite c!1474770 (reg!22082 (regOne!44018 r!13107)) (ite c!1474771 (regTwo!44019 (regOne!44018 r!13107)) (regTwo!44018 (regOne!44018 r!13107))))))))

(declare-fun b!8038740 () Bool)

(declare-fun res!3177638 () Bool)

(declare-fun e!4734891 () Bool)

(assert (=> b!8038740 (=> res!3177638 e!4734891)))

(assert (=> b!8038740 (= res!3177638 (not ((_ is Concat!30756) (regOne!44018 r!13107))))))

(declare-fun e!4734893 () Bool)

(assert (=> b!8038740 (= e!4734893 e!4734891)))

(declare-fun b!8038741 () Bool)

(declare-fun e!4734895 () Bool)

(assert (=> b!8038741 (= e!4734895 call!746243)))

(declare-fun b!8038742 () Bool)

(declare-fun e!4734897 () Bool)

(assert (=> b!8038742 (= e!4734897 e!4734895)))

(declare-fun res!3177636 () Bool)

(assert (=> b!8038742 (= res!3177636 (not (nullable!9778 (reg!22082 (regOne!44018 r!13107)))))))

(assert (=> b!8038742 (=> (not res!3177636) (not e!4734895))))

(declare-fun b!8038743 () Bool)

(declare-fun e!4734894 () Bool)

(declare-fun call!746241 () Bool)

(assert (=> b!8038743 (= e!4734894 call!746241)))

(declare-fun b!8038744 () Bool)

(assert (=> b!8038744 (= e!4734897 e!4734893)))

(assert (=> b!8038744 (= c!1474771 ((_ is Union!21753) (regOne!44018 r!13107)))))

(declare-fun b!8038745 () Bool)

(declare-fun res!3177635 () Bool)

(declare-fun e!4734896 () Bool)

(assert (=> b!8038745 (=> (not res!3177635) (not e!4734896))))

(declare-fun call!746242 () Bool)

(assert (=> b!8038745 (= res!3177635 call!746242)))

(assert (=> b!8038745 (= e!4734893 e!4734896)))

(declare-fun b!8038746 () Bool)

(assert (=> b!8038746 (= e!4734896 call!746241)))

(declare-fun bm!746237 () Bool)

(assert (=> bm!746237 (= call!746242 (validRegex!12049 (ite c!1474771 (regOne!44019 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))

(declare-fun b!8038747 () Bool)

(assert (=> b!8038747 (= e!4734891 e!4734894)))

(declare-fun res!3177637 () Bool)

(assert (=> b!8038747 (=> (not res!3177637) (not e!4734894))))

(assert (=> b!8038747 (= res!3177637 call!746242)))

(declare-fun bm!746238 () Bool)

(assert (=> bm!746238 (= call!746241 call!746243)))

(declare-fun d!2395285 () Bool)

(declare-fun res!3177634 () Bool)

(declare-fun e!4734892 () Bool)

(assert (=> d!2395285 (=> res!3177634 e!4734892)))

(assert (=> d!2395285 (= res!3177634 ((_ is ElementMatch!21753) (regOne!44018 r!13107)))))

(assert (=> d!2395285 (= (validRegex!12049 (regOne!44018 r!13107)) e!4734892)))

(declare-fun b!8038748 () Bool)

(assert (=> b!8038748 (= e!4734892 e!4734897)))

(assert (=> b!8038748 (= c!1474770 ((_ is Star!21753) (regOne!44018 r!13107)))))

(assert (= (and d!2395285 (not res!3177634)) b!8038748))

(assert (= (and b!8038748 c!1474770) b!8038742))

(assert (= (and b!8038748 (not c!1474770)) b!8038744))

(assert (= (and b!8038742 res!3177636) b!8038741))

(assert (= (and b!8038744 c!1474771) b!8038745))

(assert (= (and b!8038744 (not c!1474771)) b!8038740))

(assert (= (and b!8038745 res!3177635) b!8038746))

(assert (= (and b!8038740 (not res!3177638)) b!8038747))

(assert (= (and b!8038747 res!3177637) b!8038743))

(assert (= (or b!8038746 b!8038743) bm!746238))

(assert (= (or b!8038745 b!8038747) bm!746237))

(assert (= (or b!8038741 bm!746238) bm!746236))

(declare-fun m!8394098 () Bool)

(assert (=> bm!746236 m!8394098))

(declare-fun m!8394100 () Bool)

(assert (=> b!8038742 m!8394100))

(declare-fun m!8394102 () Bool)

(assert (=> bm!746237 m!8394102))

(assert (=> d!2395271 d!2395285))

(declare-fun d!2395287 () Bool)

(assert (=> d!2395287 (= (nullable!9778 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))) (nullableFct!3871 (reg!22082 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))

(declare-fun bs!1971540 () Bool)

(assert (= bs!1971540 d!2395287))

(declare-fun m!8394104 () Bool)

(assert (=> bs!1971540 m!8394104))

(assert (=> b!8038576 d!2395287))

(declare-fun call!746246 () Bool)

(declare-fun bm!746239 () Bool)

(declare-fun c!1474773 () Bool)

(declare-fun c!1474772 () Bool)

(assert (=> bm!746239 (= call!746246 (validRegex!12049 (ite c!1474772 (reg!22082 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))) (ite c!1474773 (regTwo!44019 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))) (regTwo!44018 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107)))))))))

(declare-fun b!8038749 () Bool)

(declare-fun res!3177643 () Bool)

(declare-fun e!4734898 () Bool)

(assert (=> b!8038749 (=> res!3177643 e!4734898)))

(assert (=> b!8038749 (= res!3177643 (not ((_ is Concat!30756) (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107)))))))

(declare-fun e!4734900 () Bool)

(assert (=> b!8038749 (= e!4734900 e!4734898)))

(declare-fun b!8038750 () Bool)

(declare-fun e!4734902 () Bool)

(assert (=> b!8038750 (= e!4734902 call!746246)))

(declare-fun b!8038751 () Bool)

(declare-fun e!4734904 () Bool)

(assert (=> b!8038751 (= e!4734904 e!4734902)))

(declare-fun res!3177641 () Bool)

(assert (=> b!8038751 (= res!3177641 (not (nullable!9778 (reg!22082 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))))))))

(assert (=> b!8038751 (=> (not res!3177641) (not e!4734902))))

(declare-fun b!8038752 () Bool)

(declare-fun e!4734901 () Bool)

(declare-fun call!746244 () Bool)

(assert (=> b!8038752 (= e!4734901 call!746244)))

(declare-fun b!8038753 () Bool)

(assert (=> b!8038753 (= e!4734904 e!4734900)))

(assert (=> b!8038753 (= c!1474773 ((_ is Union!21753) (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))))))

(declare-fun b!8038754 () Bool)

(declare-fun res!3177640 () Bool)

(declare-fun e!4734903 () Bool)

(assert (=> b!8038754 (=> (not res!3177640) (not e!4734903))))

(declare-fun call!746245 () Bool)

(assert (=> b!8038754 (= res!3177640 call!746245)))

(assert (=> b!8038754 (= e!4734900 e!4734903)))

(declare-fun b!8038755 () Bool)

(assert (=> b!8038755 (= e!4734903 call!746244)))

(declare-fun bm!746240 () Bool)

(assert (=> bm!746240 (= call!746245 (validRegex!12049 (ite c!1474773 (regOne!44019 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))) (regOne!44018 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))))))))

(declare-fun b!8038756 () Bool)

(assert (=> b!8038756 (= e!4734898 e!4734901)))

(declare-fun res!3177642 () Bool)

(assert (=> b!8038756 (=> (not res!3177642) (not e!4734901))))

(assert (=> b!8038756 (= res!3177642 call!746245)))

(declare-fun bm!746241 () Bool)

(assert (=> bm!746241 (= call!746244 call!746246)))

(declare-fun d!2395289 () Bool)

(declare-fun res!3177639 () Bool)

(declare-fun e!4734899 () Bool)

(assert (=> d!2395289 (=> res!3177639 e!4734899)))

(assert (=> d!2395289 (= res!3177639 ((_ is ElementMatch!21753) (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))))))

(assert (=> d!2395289 (= (validRegex!12049 (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))) e!4734899)))

(declare-fun b!8038757 () Bool)

(assert (=> b!8038757 (= e!4734899 e!4734904)))

(assert (=> b!8038757 (= c!1474772 ((_ is Star!21753) (ite c!1474726 (regOne!44019 r!13107) (regOne!44018 r!13107))))))

(assert (= (and d!2395289 (not res!3177639)) b!8038757))

(assert (= (and b!8038757 c!1474772) b!8038751))

(assert (= (and b!8038757 (not c!1474772)) b!8038753))

(assert (= (and b!8038751 res!3177641) b!8038750))

(assert (= (and b!8038753 c!1474773) b!8038754))

(assert (= (and b!8038753 (not c!1474773)) b!8038749))

(assert (= (and b!8038754 res!3177640) b!8038755))

(assert (= (and b!8038749 (not res!3177643)) b!8038756))

(assert (= (and b!8038756 res!3177642) b!8038752))

(assert (= (or b!8038755 b!8038752) bm!746241))

(assert (= (or b!8038754 b!8038756) bm!746240))

(assert (= (or b!8038750 bm!746241) bm!746239))

(declare-fun m!8394106 () Bool)

(assert (=> bm!746239 m!8394106))

(declare-fun m!8394108 () Bool)

(assert (=> b!8038751 m!8394108))

(declare-fun m!8394110 () Bool)

(assert (=> bm!746240 m!8394110))

(assert (=> bm!746194 d!2395289))

(declare-fun d!2395291 () Bool)

(assert (=> d!2395291 (= (nullable!9778 (regOne!44018 (regOne!44018 r!13107))) (nullableFct!3871 (regOne!44018 (regOne!44018 r!13107))))))

(declare-fun bs!1971541 () Bool)

(assert (= bs!1971541 d!2395291))

(declare-fun m!8394112 () Bool)

(assert (=> bs!1971541 m!8394112))

(assert (=> b!8038647 d!2395291))

(declare-fun c!1474774 () Bool)

(declare-fun call!746249 () Bool)

(declare-fun c!1474775 () Bool)

(declare-fun bm!746242 () Bool)

(assert (=> bm!746242 (= call!746249 (validRegex!12049 (ite c!1474774 (reg!22082 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))) (ite c!1474775 (regTwo!44019 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))) (regTwo!44018 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))))

(declare-fun b!8038758 () Bool)

(declare-fun res!3177648 () Bool)

(declare-fun e!4734905 () Bool)

(assert (=> b!8038758 (=> res!3177648 e!4734905)))

(assert (=> b!8038758 (= res!3177648 (not ((_ is Concat!30756) (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753))))))))

(declare-fun e!4734907 () Bool)

(assert (=> b!8038758 (= e!4734907 e!4734905)))

(declare-fun b!8038759 () Bool)

(declare-fun e!4734909 () Bool)

(assert (=> b!8038759 (= e!4734909 call!746249)))

(declare-fun b!8038760 () Bool)

(declare-fun e!4734911 () Bool)

(assert (=> b!8038760 (= e!4734911 e!4734909)))

(declare-fun res!3177646 () Bool)

(assert (=> b!8038760 (= res!3177646 (not (nullable!9778 (reg!22082 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))))

(assert (=> b!8038760 (=> (not res!3177646) (not e!4734909))))

(declare-fun b!8038761 () Bool)

(declare-fun e!4734908 () Bool)

(declare-fun call!746247 () Bool)

(assert (=> b!8038761 (= e!4734908 call!746247)))

(declare-fun b!8038762 () Bool)

(assert (=> b!8038762 (= e!4734911 e!4734907)))

(assert (=> b!8038762 (= c!1474775 ((_ is Union!21753) (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))

(declare-fun b!8038763 () Bool)

(declare-fun res!3177645 () Bool)

(declare-fun e!4734910 () Bool)

(assert (=> b!8038763 (=> (not res!3177645) (not e!4734910))))

(declare-fun call!746248 () Bool)

(assert (=> b!8038763 (= res!3177645 call!746248)))

(assert (=> b!8038763 (= e!4734907 e!4734910)))

(declare-fun b!8038764 () Bool)

(assert (=> b!8038764 (= e!4734910 call!746247)))

(declare-fun bm!746243 () Bool)

(assert (=> bm!746243 (= call!746248 (validRegex!12049 (ite c!1474775 (regOne!44019 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))) (regOne!44018 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))))

(declare-fun b!8038765 () Bool)

(assert (=> b!8038765 (= e!4734905 e!4734908)))

(declare-fun res!3177647 () Bool)

(assert (=> b!8038765 (=> (not res!3177647) (not e!4734908))))

(assert (=> b!8038765 (= res!3177647 call!746248)))

(declare-fun bm!746244 () Bool)

(assert (=> bm!746244 (= call!746247 call!746249)))

(declare-fun d!2395293 () Bool)

(declare-fun res!3177644 () Bool)

(declare-fun e!4734906 () Bool)

(assert (=> d!2395293 (=> res!3177644 e!4734906)))

(assert (=> d!2395293 (= res!3177644 ((_ is ElementMatch!21753) (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))

(assert (=> d!2395293 (= (validRegex!12049 (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))) e!4734906)))

(declare-fun b!8038766 () Bool)

(assert (=> b!8038766 (= e!4734906 e!4734911)))

(assert (=> b!8038766 (= c!1474774 ((_ is Star!21753) (ite c!1474728 (regOne!44019 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)) (regOne!44018 (Union!21753 (Concat!30756 (derivativeStep!6670 (regOne!44018 r!13107) a!2390) (regTwo!44018 r!13107)) EmptyLang!21753)))))))

(assert (= (and d!2395293 (not res!3177644)) b!8038766))

(assert (= (and b!8038766 c!1474774) b!8038760))

(assert (= (and b!8038766 (not c!1474774)) b!8038762))

(assert (= (and b!8038760 res!3177646) b!8038759))

(assert (= (and b!8038762 c!1474775) b!8038763))

(assert (= (and b!8038762 (not c!1474775)) b!8038758))

(assert (= (and b!8038763 res!3177645) b!8038764))

(assert (= (and b!8038758 (not res!3177648)) b!8038765))

(assert (= (and b!8038765 res!3177647) b!8038761))

(assert (= (or b!8038764 b!8038761) bm!746244))

(assert (= (or b!8038763 b!8038765) bm!746243))

(assert (= (or b!8038759 bm!746244) bm!746242))

(declare-fun m!8394114 () Bool)

(assert (=> bm!746242 m!8394114))

(declare-fun m!8394116 () Bool)

(assert (=> b!8038760 m!8394116))

(declare-fun m!8394118 () Bool)

(assert (=> bm!746243 m!8394118))

(assert (=> bm!746197 d!2395293))

(declare-fun bm!746249 () Bool)

(declare-fun call!746254 () Bool)

(declare-fun c!1474778 () Bool)

(assert (=> bm!746249 (= call!746254 (nullable!9778 (ite c!1474778 (regTwo!44019 (regOne!44018 r!13107)) (regTwo!44018 (regOne!44018 r!13107)))))))

(declare-fun b!8038781 () Bool)

(declare-fun e!4734924 () Bool)

(declare-fun e!4734925 () Bool)

(assert (=> b!8038781 (= e!4734924 e!4734925)))

(assert (=> b!8038781 (= c!1474778 ((_ is Union!21753) (regOne!44018 r!13107)))))

(declare-fun b!8038782 () Bool)

(declare-fun e!4734927 () Bool)

(assert (=> b!8038782 (= e!4734927 e!4734924)))

(declare-fun res!3177663 () Bool)

(assert (=> b!8038782 (=> res!3177663 e!4734924)))

(assert (=> b!8038782 (= res!3177663 ((_ is Star!21753) (regOne!44018 r!13107)))))

(declare-fun d!2395295 () Bool)

(declare-fun res!3177659 () Bool)

(declare-fun e!4734928 () Bool)

(assert (=> d!2395295 (=> res!3177659 e!4734928)))

(assert (=> d!2395295 (= res!3177659 ((_ is EmptyExpr!21753) (regOne!44018 r!13107)))))

(assert (=> d!2395295 (= (nullableFct!3871 (regOne!44018 r!13107)) e!4734928)))

(declare-fun b!8038783 () Bool)

(declare-fun e!4734926 () Bool)

(assert (=> b!8038783 (= e!4734925 e!4734926)))

(declare-fun res!3177660 () Bool)

(declare-fun call!746255 () Bool)

(assert (=> b!8038783 (= res!3177660 call!746255)))

(assert (=> b!8038783 (=> (not res!3177660) (not e!4734926))))

(declare-fun bm!746250 () Bool)

(assert (=> bm!746250 (= call!746255 (nullable!9778 (ite c!1474778 (regOne!44019 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))

(declare-fun b!8038784 () Bool)

(declare-fun e!4734929 () Bool)

(assert (=> b!8038784 (= e!4734929 call!746254)))

(declare-fun b!8038785 () Bool)

(assert (=> b!8038785 (= e!4734925 e!4734929)))

(declare-fun res!3177662 () Bool)

(assert (=> b!8038785 (= res!3177662 call!746255)))

(assert (=> b!8038785 (=> res!3177662 e!4734929)))

(declare-fun b!8038786 () Bool)

(assert (=> b!8038786 (= e!4734926 call!746254)))

(declare-fun b!8038787 () Bool)

(assert (=> b!8038787 (= e!4734928 e!4734927)))

(declare-fun res!3177661 () Bool)

(assert (=> b!8038787 (=> (not res!3177661) (not e!4734927))))

(assert (=> b!8038787 (= res!3177661 (and (not ((_ is EmptyLang!21753) (regOne!44018 r!13107))) (not ((_ is ElementMatch!21753) (regOne!44018 r!13107)))))))

(assert (= (and d!2395295 (not res!3177659)) b!8038787))

(assert (= (and b!8038787 res!3177661) b!8038782))

(assert (= (and b!8038782 (not res!3177663)) b!8038781))

(assert (= (and b!8038781 c!1474778) b!8038785))

(assert (= (and b!8038781 (not c!1474778)) b!8038783))

(assert (= (and b!8038785 (not res!3177662)) b!8038784))

(assert (= (and b!8038783 res!3177660) b!8038786))

(assert (= (or b!8038784 b!8038786) bm!746249))

(assert (= (or b!8038785 b!8038783) bm!746250))

(declare-fun m!8394120 () Bool)

(assert (=> bm!746249 m!8394120))

(declare-fun m!8394122 () Bool)

(assert (=> bm!746250 m!8394122))

(assert (=> d!2395263 d!2395295))

(declare-fun call!746256 () Regex!21753)

(declare-fun e!4734934 () Regex!21753)

(declare-fun b!8038788 () Bool)

(assert (=> b!8038788 (= e!4734934 (Concat!30756 call!746256 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(declare-fun b!8038789 () Bool)

(declare-fun e!4734933 () Regex!21753)

(declare-fun e!4734930 () Regex!21753)

(assert (=> b!8038789 (= e!4734933 e!4734930)))

(declare-fun c!1474781 () Bool)

(assert (=> b!8038789 (= c!1474781 ((_ is ElementMatch!21753) (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(declare-fun bm!746251 () Bool)

(declare-fun call!746259 () Regex!21753)

(declare-fun call!746257 () Regex!21753)

(assert (=> bm!746251 (= call!746259 call!746257)))

(declare-fun b!8038791 () Bool)

(declare-fun e!4734932 () Regex!21753)

(assert (=> b!8038791 (= e!4734932 (Union!21753 (Concat!30756 call!746256 (regTwo!44018 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))) call!746259))))

(declare-fun b!8038792 () Bool)

(declare-fun e!4734931 () Regex!21753)

(assert (=> b!8038792 (= e!4734931 e!4734934)))

(declare-fun c!1474782 () Bool)

(assert (=> b!8038792 (= c!1474782 ((_ is Star!21753) (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(declare-fun b!8038793 () Bool)

(declare-fun c!1474780 () Bool)

(assert (=> b!8038793 (= c!1474780 (nullable!9778 (regOne!44018 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))))

(assert (=> b!8038793 (= e!4734934 e!4734932)))

(declare-fun bm!746252 () Bool)

(declare-fun call!746258 () Regex!21753)

(assert (=> bm!746252 (= call!746256 call!746258)))

(declare-fun b!8038794 () Bool)

(assert (=> b!8038794 (= e!4734930 (ite (= a!2390 (c!1474714 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))) EmptyExpr!21753 EmptyLang!21753))))

(declare-fun b!8038795 () Bool)

(assert (=> b!8038795 (= e!4734932 (Union!21753 (Concat!30756 call!746259 (regTwo!44018 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))) EmptyLang!21753))))

(declare-fun bm!746253 () Bool)

(declare-fun c!1474783 () Bool)

(assert (=> bm!746253 (= call!746257 (derivativeStep!6670 (ite c!1474783 (regTwo!44019 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (ite c!1474780 (regTwo!44018 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (regOne!44018 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))) a!2390))))

(declare-fun b!8038796 () Bool)

(assert (=> b!8038796 (= c!1474783 ((_ is Union!21753) (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))))

(assert (=> b!8038796 (= e!4734930 e!4734931)))

(declare-fun b!8038790 () Bool)

(assert (=> b!8038790 (= e!4734933 EmptyLang!21753)))

(declare-fun d!2395297 () Bool)

(declare-fun lt!2722168 () Regex!21753)

(assert (=> d!2395297 (validRegex!12049 lt!2722168)))

(assert (=> d!2395297 (= lt!2722168 e!4734933)))

(declare-fun c!1474779 () Bool)

(assert (=> d!2395297 (= c!1474779 (or ((_ is EmptyExpr!21753) (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) ((_ is EmptyLang!21753) (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))))

(assert (=> d!2395297 (validRegex!12049 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))))))

(assert (=> d!2395297 (= (derivativeStep!6670 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107)))) a!2390) lt!2722168)))

(declare-fun bm!746254 () Bool)

(assert (=> bm!746254 (= call!746258 (derivativeStep!6670 (ite c!1474783 (regOne!44019 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (ite c!1474782 (reg!22082 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))) (regOne!44018 (ite c!1474760 (regTwo!44019 (regOne!44018 r!13107)) (ite c!1474757 (regTwo!44018 (regOne!44018 r!13107)) (regOne!44018 (regOne!44018 r!13107))))))) a!2390))))

(declare-fun b!8038797 () Bool)

(assert (=> b!8038797 (= e!4734931 (Union!21753 call!746258 call!746257))))

(assert (= (and d!2395297 c!1474779) b!8038790))

(assert (= (and d!2395297 (not c!1474779)) b!8038789))

(assert (= (and b!8038789 c!1474781) b!8038794))

(assert (= (and b!8038789 (not c!1474781)) b!8038796))

(assert (= (and b!8038796 c!1474783) b!8038797))

(assert (= (and b!8038796 (not c!1474783)) b!8038792))

(assert (= (and b!8038792 c!1474782) b!8038788))

(assert (= (and b!8038792 (not c!1474782)) b!8038793))

(assert (= (and b!8038793 c!1474780) b!8038791))

(assert (= (and b!8038793 (not c!1474780)) b!8038795))

(assert (= (or b!8038791 b!8038795) bm!746251))

(assert (= (or b!8038788 b!8038791) bm!746252))

(assert (= (or b!8038797 bm!746251) bm!746253))

(assert (= (or b!8038797 bm!746252) bm!746254))

(declare-fun m!8394124 () Bool)

(assert (=> b!8038793 m!8394124))

(declare-fun m!8394126 () Bool)

(assert (=> bm!746253 m!8394126))

(declare-fun m!8394128 () Bool)

(assert (=> d!2395297 m!8394128))

(declare-fun m!8394130 () Bool)

(assert (=> d!2395297 m!8394130))

(declare-fun m!8394132 () Bool)

(assert (=> bm!746254 m!8394132))

(assert (=> bm!746224 d!2395297))

(declare-fun c!1474784 () Bool)

(declare-fun call!746262 () Bool)

(declare-fun c!1474785 () Bool)

(declare-fun bm!746255 () Bool)

(assert (=> bm!746255 (= call!746262 (validRegex!12049 (ite c!1474784 (reg!22082 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))) (ite c!1474785 (regTwo!44019 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))) (regTwo!44018 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107))))))))))

(declare-fun b!8038798 () Bool)

(declare-fun res!3177668 () Bool)

(declare-fun e!4734935 () Bool)

(assert (=> b!8038798 (=> res!3177668 e!4734935)))

(assert (=> b!8038798 (= res!3177668 (not ((_ is Concat!30756) (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107))))))))

(declare-fun e!4734937 () Bool)

(assert (=> b!8038798 (= e!4734937 e!4734935)))

(declare-fun b!8038799 () Bool)

(declare-fun e!4734939 () Bool)

(assert (=> b!8038799 (= e!4734939 call!746262)))

(declare-fun b!8038800 () Bool)

(declare-fun e!4734941 () Bool)

(assert (=> b!8038800 (= e!4734941 e!4734939)))

(declare-fun res!3177666 () Bool)

(assert (=> b!8038800 (= res!3177666 (not (nullable!9778 (reg!22082 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))))))))

(assert (=> b!8038800 (=> (not res!3177666) (not e!4734939))))

(declare-fun b!8038801 () Bool)

(declare-fun e!4734938 () Bool)

(declare-fun call!746260 () Bool)

(assert (=> b!8038801 (= e!4734938 call!746260)))

(declare-fun b!8038802 () Bool)

(assert (=> b!8038802 (= e!4734941 e!4734937)))

(assert (=> b!8038802 (= c!1474785 ((_ is Union!21753) (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))))))

(declare-fun b!8038803 () Bool)

(declare-fun res!3177665 () Bool)

(declare-fun e!4734940 () Bool)

(assert (=> b!8038803 (=> (not res!3177665) (not e!4734940))))

(declare-fun call!746261 () Bool)

(assert (=> b!8038803 (= res!3177665 call!746261)))

(assert (=> b!8038803 (= e!4734937 e!4734940)))

(declare-fun b!8038804 () Bool)

(assert (=> b!8038804 (= e!4734940 call!746260)))

(declare-fun bm!746256 () Bool)

(assert (=> bm!746256 (= call!746261 (validRegex!12049 (ite c!1474785 (regOne!44019 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))) (regOne!44018 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))))))))

(declare-fun b!8038805 () Bool)

(assert (=> b!8038805 (= e!4734935 e!4734938)))

(declare-fun res!3177667 () Bool)

(assert (=> b!8038805 (=> (not res!3177667) (not e!4734938))))

(assert (=> b!8038805 (= res!3177667 call!746261)))

(declare-fun bm!746257 () Bool)

(assert (=> bm!746257 (= call!746260 call!746262)))

(declare-fun d!2395299 () Bool)

(declare-fun res!3177664 () Bool)

(declare-fun e!4734936 () Bool)

(assert (=> d!2395299 (=> res!3177664 e!4734936)))

(assert (=> d!2395299 (= res!3177664 ((_ is ElementMatch!21753) (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))))))

(assert (=> d!2395299 (= (validRegex!12049 (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))) e!4734936)))

(declare-fun b!8038806 () Bool)

(assert (=> b!8038806 (= e!4734936 e!4734941)))

(assert (=> b!8038806 (= c!1474784 ((_ is Star!21753) (ite c!1474725 (reg!22082 r!13107) (ite c!1474726 (regTwo!44019 r!13107) (regTwo!44018 r!13107)))))))

(assert (= (and d!2395299 (not res!3177664)) b!8038806))

(assert (= (and b!8038806 c!1474784) b!8038800))

(assert (= (and b!8038806 (not c!1474784)) b!8038802))

(assert (= (and b!8038800 res!3177666) b!8038799))

(assert (= (and b!8038802 c!1474785) b!8038803))

(assert (= (and b!8038802 (not c!1474785)) b!8038798))

(assert (= (and b!8038803 res!3177665) b!8038804))

(assert (= (and b!8038798 (not res!3177668)) b!8038805))

(assert (= (and b!8038805 res!3177667) b!8038801))

(assert (= (or b!8038804 b!8038801) bm!746257))

(assert (= (or b!8038803 b!8038805) bm!746256))

(assert (= (or b!8038799 bm!746257) bm!746255))

(declare-fun m!8394134 () Bool)

(assert (=> bm!746255 m!8394134))

(declare-fun m!8394136 () Bool)

(assert (=> b!8038800 m!8394136))

(declare-fun m!8394138 () Bool)

(assert (=> bm!746256 m!8394138))

(assert (=> bm!746193 d!2395299))

(declare-fun b!8038809 () Bool)

(declare-fun e!4734942 () Bool)

(declare-fun tp!2407565 () Bool)

(assert (=> b!8038809 (= e!4734942 tp!2407565)))

(declare-fun b!8038810 () Bool)

(declare-fun tp!2407566 () Bool)

(declare-fun tp!2407568 () Bool)

(assert (=> b!8038810 (= e!4734942 (and tp!2407566 tp!2407568))))

(declare-fun b!8038808 () Bool)

(declare-fun tp!2407564 () Bool)

(declare-fun tp!2407567 () Bool)

(assert (=> b!8038808 (= e!4734942 (and tp!2407564 tp!2407567))))

(declare-fun b!8038807 () Bool)

(assert (=> b!8038807 (= e!4734942 tp_is_empty!54501)))

(assert (=> b!8038709 (= tp!2407559 e!4734942)))

(assert (= (and b!8038709 ((_ is ElementMatch!21753) (regOne!44018 (regTwo!44018 r!13107)))) b!8038807))

(assert (= (and b!8038709 ((_ is Concat!30756) (regOne!44018 (regTwo!44018 r!13107)))) b!8038808))

(assert (= (and b!8038709 ((_ is Star!21753) (regOne!44018 (regTwo!44018 r!13107)))) b!8038809))

(assert (= (and b!8038709 ((_ is Union!21753) (regOne!44018 (regTwo!44018 r!13107)))) b!8038810))

(declare-fun b!8038813 () Bool)

(declare-fun e!4734943 () Bool)

(declare-fun tp!2407570 () Bool)

(assert (=> b!8038813 (= e!4734943 tp!2407570)))

(declare-fun b!8038814 () Bool)

(declare-fun tp!2407571 () Bool)

(declare-fun tp!2407573 () Bool)

(assert (=> b!8038814 (= e!4734943 (and tp!2407571 tp!2407573))))

(declare-fun b!8038812 () Bool)

(declare-fun tp!2407569 () Bool)

(declare-fun tp!2407572 () Bool)

(assert (=> b!8038812 (= e!4734943 (and tp!2407569 tp!2407572))))

(declare-fun b!8038811 () Bool)

(assert (=> b!8038811 (= e!4734943 tp_is_empty!54501)))

(assert (=> b!8038709 (= tp!2407562 e!4734943)))

(assert (= (and b!8038709 ((_ is ElementMatch!21753) (regTwo!44018 (regTwo!44018 r!13107)))) b!8038811))

(assert (= (and b!8038709 ((_ is Concat!30756) (regTwo!44018 (regTwo!44018 r!13107)))) b!8038812))

(assert (= (and b!8038709 ((_ is Star!21753) (regTwo!44018 (regTwo!44018 r!13107)))) b!8038813))

(assert (= (and b!8038709 ((_ is Union!21753) (regTwo!44018 (regTwo!44018 r!13107)))) b!8038814))

(declare-fun b!8038817 () Bool)

(declare-fun e!4734944 () Bool)

(declare-fun tp!2407575 () Bool)

(assert (=> b!8038817 (= e!4734944 tp!2407575)))

(declare-fun b!8038818 () Bool)

(declare-fun tp!2407576 () Bool)

(declare-fun tp!2407578 () Bool)

(assert (=> b!8038818 (= e!4734944 (and tp!2407576 tp!2407578))))

(declare-fun b!8038816 () Bool)

(declare-fun tp!2407574 () Bool)

(declare-fun tp!2407577 () Bool)

(assert (=> b!8038816 (= e!4734944 (and tp!2407574 tp!2407577))))

(declare-fun b!8038815 () Bool)

(assert (=> b!8038815 (= e!4734944 tp_is_empty!54501)))

(assert (=> b!8038695 (= tp!2407541 e!4734944)))

(assert (= (and b!8038695 ((_ is ElementMatch!21753) (regOne!44019 (reg!22082 r!13107)))) b!8038815))

(assert (= (and b!8038695 ((_ is Concat!30756) (regOne!44019 (reg!22082 r!13107)))) b!8038816))

(assert (= (and b!8038695 ((_ is Star!21753) (regOne!44019 (reg!22082 r!13107)))) b!8038817))

(assert (= (and b!8038695 ((_ is Union!21753) (regOne!44019 (reg!22082 r!13107)))) b!8038818))

(declare-fun b!8038821 () Bool)

(declare-fun e!4734945 () Bool)

(declare-fun tp!2407580 () Bool)

(assert (=> b!8038821 (= e!4734945 tp!2407580)))

(declare-fun b!8038822 () Bool)

(declare-fun tp!2407581 () Bool)

(declare-fun tp!2407583 () Bool)

(assert (=> b!8038822 (= e!4734945 (and tp!2407581 tp!2407583))))

(declare-fun b!8038820 () Bool)

(declare-fun tp!2407579 () Bool)

(declare-fun tp!2407582 () Bool)

(assert (=> b!8038820 (= e!4734945 (and tp!2407579 tp!2407582))))

(declare-fun b!8038819 () Bool)

(assert (=> b!8038819 (= e!4734945 tp_is_empty!54501)))

(assert (=> b!8038695 (= tp!2407543 e!4734945)))

(assert (= (and b!8038695 ((_ is ElementMatch!21753) (regTwo!44019 (reg!22082 r!13107)))) b!8038819))

(assert (= (and b!8038695 ((_ is Concat!30756) (regTwo!44019 (reg!22082 r!13107)))) b!8038820))

(assert (= (and b!8038695 ((_ is Star!21753) (regTwo!44019 (reg!22082 r!13107)))) b!8038821))

(assert (= (and b!8038695 ((_ is Union!21753) (regTwo!44019 (reg!22082 r!13107)))) b!8038822))

(declare-fun b!8038825 () Bool)

(declare-fun e!4734946 () Bool)

(declare-fun tp!2407585 () Bool)

(assert (=> b!8038825 (= e!4734946 tp!2407585)))

(declare-fun b!8038826 () Bool)

(declare-fun tp!2407586 () Bool)

(declare-fun tp!2407588 () Bool)

(assert (=> b!8038826 (= e!4734946 (and tp!2407586 tp!2407588))))

(declare-fun b!8038824 () Bool)

(declare-fun tp!2407584 () Bool)

(declare-fun tp!2407587 () Bool)

(assert (=> b!8038824 (= e!4734946 (and tp!2407584 tp!2407587))))

(declare-fun b!8038823 () Bool)

(assert (=> b!8038823 (= e!4734946 tp_is_empty!54501)))

(assert (=> b!8038703 (= tp!2407551 e!4734946)))

(assert (= (and b!8038703 ((_ is ElementMatch!21753) (regOne!44019 (regTwo!44019 r!13107)))) b!8038823))

(assert (= (and b!8038703 ((_ is Concat!30756) (regOne!44019 (regTwo!44019 r!13107)))) b!8038824))

(assert (= (and b!8038703 ((_ is Star!21753) (regOne!44019 (regTwo!44019 r!13107)))) b!8038825))

(assert (= (and b!8038703 ((_ is Union!21753) (regOne!44019 (regTwo!44019 r!13107)))) b!8038826))

(declare-fun b!8038829 () Bool)

(declare-fun e!4734947 () Bool)

(declare-fun tp!2407590 () Bool)

(assert (=> b!8038829 (= e!4734947 tp!2407590)))

(declare-fun b!8038830 () Bool)

(declare-fun tp!2407591 () Bool)

(declare-fun tp!2407593 () Bool)

(assert (=> b!8038830 (= e!4734947 (and tp!2407591 tp!2407593))))

(declare-fun b!8038828 () Bool)

(declare-fun tp!2407589 () Bool)

(declare-fun tp!2407592 () Bool)

(assert (=> b!8038828 (= e!4734947 (and tp!2407589 tp!2407592))))

(declare-fun b!8038827 () Bool)

(assert (=> b!8038827 (= e!4734947 tp_is_empty!54501)))

(assert (=> b!8038703 (= tp!2407553 e!4734947)))

(assert (= (and b!8038703 ((_ is ElementMatch!21753) (regTwo!44019 (regTwo!44019 r!13107)))) b!8038827))

(assert (= (and b!8038703 ((_ is Concat!30756) (regTwo!44019 (regTwo!44019 r!13107)))) b!8038828))

(assert (= (and b!8038703 ((_ is Star!21753) (regTwo!44019 (regTwo!44019 r!13107)))) b!8038829))

(assert (= (and b!8038703 ((_ is Union!21753) (regTwo!44019 (regTwo!44019 r!13107)))) b!8038830))

(declare-fun b!8038833 () Bool)

(declare-fun e!4734948 () Bool)

(declare-fun tp!2407595 () Bool)

(assert (=> b!8038833 (= e!4734948 tp!2407595)))

(declare-fun b!8038834 () Bool)

(declare-fun tp!2407596 () Bool)

(declare-fun tp!2407598 () Bool)

(assert (=> b!8038834 (= e!4734948 (and tp!2407596 tp!2407598))))

(declare-fun b!8038832 () Bool)

(declare-fun tp!2407594 () Bool)

(declare-fun tp!2407597 () Bool)

(assert (=> b!8038832 (= e!4734948 (and tp!2407594 tp!2407597))))

(declare-fun b!8038831 () Bool)

(assert (=> b!8038831 (= e!4734948 tp_is_empty!54501)))

(assert (=> b!8038698 (= tp!2407545 e!4734948)))

(assert (= (and b!8038698 ((_ is ElementMatch!21753) (reg!22082 (regOne!44019 r!13107)))) b!8038831))

(assert (= (and b!8038698 ((_ is Concat!30756) (reg!22082 (regOne!44019 r!13107)))) b!8038832))

(assert (= (and b!8038698 ((_ is Star!21753) (reg!22082 (regOne!44019 r!13107)))) b!8038833))

(assert (= (and b!8038698 ((_ is Union!21753) (reg!22082 (regOne!44019 r!13107)))) b!8038834))

(declare-fun b!8038837 () Bool)

(declare-fun e!4734949 () Bool)

(declare-fun tp!2407600 () Bool)

(assert (=> b!8038837 (= e!4734949 tp!2407600)))

(declare-fun b!8038838 () Bool)

(declare-fun tp!2407601 () Bool)

(declare-fun tp!2407603 () Bool)

(assert (=> b!8038838 (= e!4734949 (and tp!2407601 tp!2407603))))

(declare-fun b!8038836 () Bool)

(declare-fun tp!2407599 () Bool)

(declare-fun tp!2407602 () Bool)

(assert (=> b!8038836 (= e!4734949 (and tp!2407599 tp!2407602))))

(declare-fun b!8038835 () Bool)

(assert (=> b!8038835 (= e!4734949 tp_is_empty!54501)))

(assert (=> b!8038699 (= tp!2407546 e!4734949)))

(assert (= (and b!8038699 ((_ is ElementMatch!21753) (regOne!44019 (regOne!44019 r!13107)))) b!8038835))

(assert (= (and b!8038699 ((_ is Concat!30756) (regOne!44019 (regOne!44019 r!13107)))) b!8038836))

(assert (= (and b!8038699 ((_ is Star!21753) (regOne!44019 (regOne!44019 r!13107)))) b!8038837))

(assert (= (and b!8038699 ((_ is Union!21753) (regOne!44019 (regOne!44019 r!13107)))) b!8038838))

(declare-fun b!8038841 () Bool)

(declare-fun e!4734950 () Bool)

(declare-fun tp!2407605 () Bool)

(assert (=> b!8038841 (= e!4734950 tp!2407605)))

(declare-fun b!8038842 () Bool)

(declare-fun tp!2407606 () Bool)

(declare-fun tp!2407608 () Bool)

(assert (=> b!8038842 (= e!4734950 (and tp!2407606 tp!2407608))))

(declare-fun b!8038840 () Bool)

(declare-fun tp!2407604 () Bool)

(declare-fun tp!2407607 () Bool)

(assert (=> b!8038840 (= e!4734950 (and tp!2407604 tp!2407607))))

(declare-fun b!8038839 () Bool)

(assert (=> b!8038839 (= e!4734950 tp_is_empty!54501)))

(assert (=> b!8038699 (= tp!2407548 e!4734950)))

(assert (= (and b!8038699 ((_ is ElementMatch!21753) (regTwo!44019 (regOne!44019 r!13107)))) b!8038839))

(assert (= (and b!8038699 ((_ is Concat!30756) (regTwo!44019 (regOne!44019 r!13107)))) b!8038840))

(assert (= (and b!8038699 ((_ is Star!21753) (regTwo!44019 (regOne!44019 r!13107)))) b!8038841))

(assert (= (and b!8038699 ((_ is Union!21753) (regTwo!44019 (regOne!44019 r!13107)))) b!8038842))

(declare-fun b!8038845 () Bool)

(declare-fun e!4734951 () Bool)

(declare-fun tp!2407610 () Bool)

(assert (=> b!8038845 (= e!4734951 tp!2407610)))

(declare-fun b!8038846 () Bool)

(declare-fun tp!2407611 () Bool)

(declare-fun tp!2407613 () Bool)

(assert (=> b!8038846 (= e!4734951 (and tp!2407611 tp!2407613))))

(declare-fun b!8038844 () Bool)

(declare-fun tp!2407609 () Bool)

(declare-fun tp!2407612 () Bool)

(assert (=> b!8038844 (= e!4734951 (and tp!2407609 tp!2407612))))

(declare-fun b!8038843 () Bool)

(assert (=> b!8038843 (= e!4734951 tp_is_empty!54501)))

(assert (=> b!8038694 (= tp!2407540 e!4734951)))

(assert (= (and b!8038694 ((_ is ElementMatch!21753) (reg!22082 (reg!22082 r!13107)))) b!8038843))

(assert (= (and b!8038694 ((_ is Concat!30756) (reg!22082 (reg!22082 r!13107)))) b!8038844))

(assert (= (and b!8038694 ((_ is Star!21753) (reg!22082 (reg!22082 r!13107)))) b!8038845))

(assert (= (and b!8038694 ((_ is Union!21753) (reg!22082 (reg!22082 r!13107)))) b!8038846))

(declare-fun b!8038849 () Bool)

(declare-fun e!4734952 () Bool)

(declare-fun tp!2407615 () Bool)

(assert (=> b!8038849 (= e!4734952 tp!2407615)))

(declare-fun b!8038850 () Bool)

(declare-fun tp!2407616 () Bool)

(declare-fun tp!2407618 () Bool)

(assert (=> b!8038850 (= e!4734952 (and tp!2407616 tp!2407618))))

(declare-fun b!8038848 () Bool)

(declare-fun tp!2407614 () Bool)

(declare-fun tp!2407617 () Bool)

(assert (=> b!8038848 (= e!4734952 (and tp!2407614 tp!2407617))))

(declare-fun b!8038847 () Bool)

(assert (=> b!8038847 (= e!4734952 tp_is_empty!54501)))

(assert (=> b!8038711 (= tp!2407561 e!4734952)))

(assert (= (and b!8038711 ((_ is ElementMatch!21753) (regOne!44019 (regTwo!44018 r!13107)))) b!8038847))

(assert (= (and b!8038711 ((_ is Concat!30756) (regOne!44019 (regTwo!44018 r!13107)))) b!8038848))

(assert (= (and b!8038711 ((_ is Star!21753) (regOne!44019 (regTwo!44018 r!13107)))) b!8038849))

(assert (= (and b!8038711 ((_ is Union!21753) (regOne!44019 (regTwo!44018 r!13107)))) b!8038850))

(declare-fun b!8038853 () Bool)

(declare-fun e!4734953 () Bool)

(declare-fun tp!2407620 () Bool)

(assert (=> b!8038853 (= e!4734953 tp!2407620)))

(declare-fun b!8038854 () Bool)

(declare-fun tp!2407621 () Bool)

(declare-fun tp!2407623 () Bool)

(assert (=> b!8038854 (= e!4734953 (and tp!2407621 tp!2407623))))

(declare-fun b!8038852 () Bool)

(declare-fun tp!2407619 () Bool)

(declare-fun tp!2407622 () Bool)

(assert (=> b!8038852 (= e!4734953 (and tp!2407619 tp!2407622))))

(declare-fun b!8038851 () Bool)

(assert (=> b!8038851 (= e!4734953 tp_is_empty!54501)))

(assert (=> b!8038711 (= tp!2407563 e!4734953)))

(assert (= (and b!8038711 ((_ is ElementMatch!21753) (regTwo!44019 (regTwo!44018 r!13107)))) b!8038851))

(assert (= (and b!8038711 ((_ is Concat!30756) (regTwo!44019 (regTwo!44018 r!13107)))) b!8038852))

(assert (= (and b!8038711 ((_ is Star!21753) (regTwo!44019 (regTwo!44018 r!13107)))) b!8038853))

(assert (= (and b!8038711 ((_ is Union!21753) (regTwo!44019 (regTwo!44018 r!13107)))) b!8038854))

(declare-fun b!8038857 () Bool)

(declare-fun e!4734954 () Bool)

(declare-fun tp!2407625 () Bool)

(assert (=> b!8038857 (= e!4734954 tp!2407625)))

(declare-fun b!8038858 () Bool)

(declare-fun tp!2407626 () Bool)

(declare-fun tp!2407628 () Bool)

(assert (=> b!8038858 (= e!4734954 (and tp!2407626 tp!2407628))))

(declare-fun b!8038856 () Bool)

(declare-fun tp!2407624 () Bool)

(declare-fun tp!2407627 () Bool)

(assert (=> b!8038856 (= e!4734954 (and tp!2407624 tp!2407627))))

(declare-fun b!8038855 () Bool)

(assert (=> b!8038855 (= e!4734954 tp_is_empty!54501)))

(assert (=> b!8038697 (= tp!2407544 e!4734954)))

(assert (= (and b!8038697 ((_ is ElementMatch!21753) (regOne!44018 (regOne!44019 r!13107)))) b!8038855))

(assert (= (and b!8038697 ((_ is Concat!30756) (regOne!44018 (regOne!44019 r!13107)))) b!8038856))

(assert (= (and b!8038697 ((_ is Star!21753) (regOne!44018 (regOne!44019 r!13107)))) b!8038857))

(assert (= (and b!8038697 ((_ is Union!21753) (regOne!44018 (regOne!44019 r!13107)))) b!8038858))

(declare-fun b!8038861 () Bool)

(declare-fun e!4734955 () Bool)

(declare-fun tp!2407630 () Bool)

(assert (=> b!8038861 (= e!4734955 tp!2407630)))

(declare-fun b!8038862 () Bool)

(declare-fun tp!2407631 () Bool)

(declare-fun tp!2407633 () Bool)

(assert (=> b!8038862 (= e!4734955 (and tp!2407631 tp!2407633))))

(declare-fun b!8038860 () Bool)

(declare-fun tp!2407629 () Bool)

(declare-fun tp!2407632 () Bool)

(assert (=> b!8038860 (= e!4734955 (and tp!2407629 tp!2407632))))

(declare-fun b!8038859 () Bool)

(assert (=> b!8038859 (= e!4734955 tp_is_empty!54501)))

(assert (=> b!8038697 (= tp!2407547 e!4734955)))

(assert (= (and b!8038697 ((_ is ElementMatch!21753) (regTwo!44018 (regOne!44019 r!13107)))) b!8038859))

(assert (= (and b!8038697 ((_ is Concat!30756) (regTwo!44018 (regOne!44019 r!13107)))) b!8038860))

(assert (= (and b!8038697 ((_ is Star!21753) (regTwo!44018 (regOne!44019 r!13107)))) b!8038861))

(assert (= (and b!8038697 ((_ is Union!21753) (regTwo!44018 (regOne!44019 r!13107)))) b!8038862))

(declare-fun b!8038865 () Bool)

(declare-fun e!4734956 () Bool)

(declare-fun tp!2407635 () Bool)

(assert (=> b!8038865 (= e!4734956 tp!2407635)))

(declare-fun b!8038866 () Bool)

(declare-fun tp!2407636 () Bool)

(declare-fun tp!2407638 () Bool)

(assert (=> b!8038866 (= e!4734956 (and tp!2407636 tp!2407638))))

(declare-fun b!8038864 () Bool)

(declare-fun tp!2407634 () Bool)

(declare-fun tp!2407637 () Bool)

(assert (=> b!8038864 (= e!4734956 (and tp!2407634 tp!2407637))))

(declare-fun b!8038863 () Bool)

(assert (=> b!8038863 (= e!4734956 tp_is_empty!54501)))

(assert (=> b!8038706 (= tp!2407555 e!4734956)))

(assert (= (and b!8038706 ((_ is ElementMatch!21753) (reg!22082 (regOne!44018 r!13107)))) b!8038863))

(assert (= (and b!8038706 ((_ is Concat!30756) (reg!22082 (regOne!44018 r!13107)))) b!8038864))

(assert (= (and b!8038706 ((_ is Star!21753) (reg!22082 (regOne!44018 r!13107)))) b!8038865))

(assert (= (and b!8038706 ((_ is Union!21753) (reg!22082 (regOne!44018 r!13107)))) b!8038866))

(declare-fun b!8038869 () Bool)

(declare-fun e!4734957 () Bool)

(declare-fun tp!2407640 () Bool)

(assert (=> b!8038869 (= e!4734957 tp!2407640)))

(declare-fun b!8038870 () Bool)

(declare-fun tp!2407641 () Bool)

(declare-fun tp!2407643 () Bool)

(assert (=> b!8038870 (= e!4734957 (and tp!2407641 tp!2407643))))

(declare-fun b!8038868 () Bool)

(declare-fun tp!2407639 () Bool)

(declare-fun tp!2407642 () Bool)

(assert (=> b!8038868 (= e!4734957 (and tp!2407639 tp!2407642))))

(declare-fun b!8038867 () Bool)

(assert (=> b!8038867 (= e!4734957 tp_is_empty!54501)))

(assert (=> b!8038707 (= tp!2407556 e!4734957)))

(assert (= (and b!8038707 ((_ is ElementMatch!21753) (regOne!44019 (regOne!44018 r!13107)))) b!8038867))

(assert (= (and b!8038707 ((_ is Concat!30756) (regOne!44019 (regOne!44018 r!13107)))) b!8038868))

(assert (= (and b!8038707 ((_ is Star!21753) (regOne!44019 (regOne!44018 r!13107)))) b!8038869))

(assert (= (and b!8038707 ((_ is Union!21753) (regOne!44019 (regOne!44018 r!13107)))) b!8038870))

(declare-fun b!8038873 () Bool)

(declare-fun e!4734958 () Bool)

(declare-fun tp!2407645 () Bool)

(assert (=> b!8038873 (= e!4734958 tp!2407645)))

(declare-fun b!8038874 () Bool)

(declare-fun tp!2407646 () Bool)

(declare-fun tp!2407648 () Bool)

(assert (=> b!8038874 (= e!4734958 (and tp!2407646 tp!2407648))))

(declare-fun b!8038872 () Bool)

(declare-fun tp!2407644 () Bool)

(declare-fun tp!2407647 () Bool)

(assert (=> b!8038872 (= e!4734958 (and tp!2407644 tp!2407647))))

(declare-fun b!8038871 () Bool)

(assert (=> b!8038871 (= e!4734958 tp_is_empty!54501)))

(assert (=> b!8038707 (= tp!2407558 e!4734958)))

(assert (= (and b!8038707 ((_ is ElementMatch!21753) (regTwo!44019 (regOne!44018 r!13107)))) b!8038871))

(assert (= (and b!8038707 ((_ is Concat!30756) (regTwo!44019 (regOne!44018 r!13107)))) b!8038872))

(assert (= (and b!8038707 ((_ is Star!21753) (regTwo!44019 (regOne!44018 r!13107)))) b!8038873))

(assert (= (and b!8038707 ((_ is Union!21753) (regTwo!44019 (regOne!44018 r!13107)))) b!8038874))

(declare-fun b!8038877 () Bool)

(declare-fun e!4734959 () Bool)

(declare-fun tp!2407650 () Bool)

(assert (=> b!8038877 (= e!4734959 tp!2407650)))

(declare-fun b!8038878 () Bool)

(declare-fun tp!2407651 () Bool)

(declare-fun tp!2407653 () Bool)

(assert (=> b!8038878 (= e!4734959 (and tp!2407651 tp!2407653))))

(declare-fun b!8038876 () Bool)

(declare-fun tp!2407649 () Bool)

(declare-fun tp!2407652 () Bool)

(assert (=> b!8038876 (= e!4734959 (and tp!2407649 tp!2407652))))

(declare-fun b!8038875 () Bool)

(assert (=> b!8038875 (= e!4734959 tp_is_empty!54501)))

(assert (=> b!8038693 (= tp!2407539 e!4734959)))

(assert (= (and b!8038693 ((_ is ElementMatch!21753) (regOne!44018 (reg!22082 r!13107)))) b!8038875))

(assert (= (and b!8038693 ((_ is Concat!30756) (regOne!44018 (reg!22082 r!13107)))) b!8038876))

(assert (= (and b!8038693 ((_ is Star!21753) (regOne!44018 (reg!22082 r!13107)))) b!8038877))

(assert (= (and b!8038693 ((_ is Union!21753) (regOne!44018 (reg!22082 r!13107)))) b!8038878))

(declare-fun b!8038881 () Bool)

(declare-fun e!4734960 () Bool)

(declare-fun tp!2407655 () Bool)

(assert (=> b!8038881 (= e!4734960 tp!2407655)))

(declare-fun b!8038882 () Bool)

(declare-fun tp!2407656 () Bool)

(declare-fun tp!2407658 () Bool)

(assert (=> b!8038882 (= e!4734960 (and tp!2407656 tp!2407658))))

(declare-fun b!8038880 () Bool)

(declare-fun tp!2407654 () Bool)

(declare-fun tp!2407657 () Bool)

(assert (=> b!8038880 (= e!4734960 (and tp!2407654 tp!2407657))))

(declare-fun b!8038879 () Bool)

(assert (=> b!8038879 (= e!4734960 tp_is_empty!54501)))

(assert (=> b!8038693 (= tp!2407542 e!4734960)))

(assert (= (and b!8038693 ((_ is ElementMatch!21753) (regTwo!44018 (reg!22082 r!13107)))) b!8038879))

(assert (= (and b!8038693 ((_ is Concat!30756) (regTwo!44018 (reg!22082 r!13107)))) b!8038880))

(assert (= (and b!8038693 ((_ is Star!21753) (regTwo!44018 (reg!22082 r!13107)))) b!8038881))

(assert (= (and b!8038693 ((_ is Union!21753) (regTwo!44018 (reg!22082 r!13107)))) b!8038882))

(declare-fun b!8038885 () Bool)

(declare-fun e!4734961 () Bool)

(declare-fun tp!2407660 () Bool)

(assert (=> b!8038885 (= e!4734961 tp!2407660)))

(declare-fun b!8038886 () Bool)

(declare-fun tp!2407661 () Bool)

(declare-fun tp!2407663 () Bool)

(assert (=> b!8038886 (= e!4734961 (and tp!2407661 tp!2407663))))

(declare-fun b!8038884 () Bool)

(declare-fun tp!2407659 () Bool)

(declare-fun tp!2407662 () Bool)

(assert (=> b!8038884 (= e!4734961 (and tp!2407659 tp!2407662))))

(declare-fun b!8038883 () Bool)

(assert (=> b!8038883 (= e!4734961 tp_is_empty!54501)))

(assert (=> b!8038702 (= tp!2407550 e!4734961)))

(assert (= (and b!8038702 ((_ is ElementMatch!21753) (reg!22082 (regTwo!44019 r!13107)))) b!8038883))

(assert (= (and b!8038702 ((_ is Concat!30756) (reg!22082 (regTwo!44019 r!13107)))) b!8038884))

(assert (= (and b!8038702 ((_ is Star!21753) (reg!22082 (regTwo!44019 r!13107)))) b!8038885))

(assert (= (and b!8038702 ((_ is Union!21753) (reg!22082 (regTwo!44019 r!13107)))) b!8038886))

(declare-fun b!8038889 () Bool)

(declare-fun e!4734962 () Bool)

(declare-fun tp!2407665 () Bool)

(assert (=> b!8038889 (= e!4734962 tp!2407665)))

(declare-fun b!8038890 () Bool)

(declare-fun tp!2407666 () Bool)

(declare-fun tp!2407668 () Bool)

(assert (=> b!8038890 (= e!4734962 (and tp!2407666 tp!2407668))))

(declare-fun b!8038888 () Bool)

(declare-fun tp!2407664 () Bool)

(declare-fun tp!2407667 () Bool)

(assert (=> b!8038888 (= e!4734962 (and tp!2407664 tp!2407667))))

(declare-fun b!8038887 () Bool)

(assert (=> b!8038887 (= e!4734962 tp_is_empty!54501)))

(assert (=> b!8038705 (= tp!2407554 e!4734962)))

(assert (= (and b!8038705 ((_ is ElementMatch!21753) (regOne!44018 (regOne!44018 r!13107)))) b!8038887))

(assert (= (and b!8038705 ((_ is Concat!30756) (regOne!44018 (regOne!44018 r!13107)))) b!8038888))

(assert (= (and b!8038705 ((_ is Star!21753) (regOne!44018 (regOne!44018 r!13107)))) b!8038889))

(assert (= (and b!8038705 ((_ is Union!21753) (regOne!44018 (regOne!44018 r!13107)))) b!8038890))

(declare-fun b!8038893 () Bool)

(declare-fun e!4734963 () Bool)

(declare-fun tp!2407670 () Bool)

(assert (=> b!8038893 (= e!4734963 tp!2407670)))

(declare-fun b!8038894 () Bool)

(declare-fun tp!2407671 () Bool)

(declare-fun tp!2407673 () Bool)

(assert (=> b!8038894 (= e!4734963 (and tp!2407671 tp!2407673))))

(declare-fun b!8038892 () Bool)

(declare-fun tp!2407669 () Bool)

(declare-fun tp!2407672 () Bool)

(assert (=> b!8038892 (= e!4734963 (and tp!2407669 tp!2407672))))

(declare-fun b!8038891 () Bool)

(assert (=> b!8038891 (= e!4734963 tp_is_empty!54501)))

(assert (=> b!8038705 (= tp!2407557 e!4734963)))

(assert (= (and b!8038705 ((_ is ElementMatch!21753) (regTwo!44018 (regOne!44018 r!13107)))) b!8038891))

(assert (= (and b!8038705 ((_ is Concat!30756) (regTwo!44018 (regOne!44018 r!13107)))) b!8038892))

(assert (= (and b!8038705 ((_ is Star!21753) (regTwo!44018 (regOne!44018 r!13107)))) b!8038893))

(assert (= (and b!8038705 ((_ is Union!21753) (regTwo!44018 (regOne!44018 r!13107)))) b!8038894))

(declare-fun b!8038897 () Bool)

(declare-fun e!4734964 () Bool)

(declare-fun tp!2407675 () Bool)

(assert (=> b!8038897 (= e!4734964 tp!2407675)))

(declare-fun b!8038898 () Bool)

(declare-fun tp!2407676 () Bool)

(declare-fun tp!2407678 () Bool)

(assert (=> b!8038898 (= e!4734964 (and tp!2407676 tp!2407678))))

(declare-fun b!8038896 () Bool)

(declare-fun tp!2407674 () Bool)

(declare-fun tp!2407677 () Bool)

(assert (=> b!8038896 (= e!4734964 (and tp!2407674 tp!2407677))))

(declare-fun b!8038895 () Bool)

(assert (=> b!8038895 (= e!4734964 tp_is_empty!54501)))

(assert (=> b!8038701 (= tp!2407549 e!4734964)))

(assert (= (and b!8038701 ((_ is ElementMatch!21753) (regOne!44018 (regTwo!44019 r!13107)))) b!8038895))

(assert (= (and b!8038701 ((_ is Concat!30756) (regOne!44018 (regTwo!44019 r!13107)))) b!8038896))

(assert (= (and b!8038701 ((_ is Star!21753) (regOne!44018 (regTwo!44019 r!13107)))) b!8038897))

(assert (= (and b!8038701 ((_ is Union!21753) (regOne!44018 (regTwo!44019 r!13107)))) b!8038898))

(declare-fun b!8038901 () Bool)

(declare-fun e!4734965 () Bool)

(declare-fun tp!2407680 () Bool)

(assert (=> b!8038901 (= e!4734965 tp!2407680)))

(declare-fun b!8038902 () Bool)

(declare-fun tp!2407681 () Bool)

(declare-fun tp!2407683 () Bool)

(assert (=> b!8038902 (= e!4734965 (and tp!2407681 tp!2407683))))

(declare-fun b!8038900 () Bool)

(declare-fun tp!2407679 () Bool)

(declare-fun tp!2407682 () Bool)

(assert (=> b!8038900 (= e!4734965 (and tp!2407679 tp!2407682))))

(declare-fun b!8038899 () Bool)

(assert (=> b!8038899 (= e!4734965 tp_is_empty!54501)))

(assert (=> b!8038701 (= tp!2407552 e!4734965)))

(assert (= (and b!8038701 ((_ is ElementMatch!21753) (regTwo!44018 (regTwo!44019 r!13107)))) b!8038899))

(assert (= (and b!8038701 ((_ is Concat!30756) (regTwo!44018 (regTwo!44019 r!13107)))) b!8038900))

(assert (= (and b!8038701 ((_ is Star!21753) (regTwo!44018 (regTwo!44019 r!13107)))) b!8038901))

(assert (= (and b!8038701 ((_ is Union!21753) (regTwo!44018 (regTwo!44019 r!13107)))) b!8038902))

(declare-fun b!8038905 () Bool)

(declare-fun e!4734966 () Bool)

(declare-fun tp!2407685 () Bool)

(assert (=> b!8038905 (= e!4734966 tp!2407685)))

(declare-fun b!8038906 () Bool)

(declare-fun tp!2407686 () Bool)

(declare-fun tp!2407688 () Bool)

(assert (=> b!8038906 (= e!4734966 (and tp!2407686 tp!2407688))))

(declare-fun b!8038904 () Bool)

(declare-fun tp!2407684 () Bool)

(declare-fun tp!2407687 () Bool)

(assert (=> b!8038904 (= e!4734966 (and tp!2407684 tp!2407687))))

(declare-fun b!8038903 () Bool)

(assert (=> b!8038903 (= e!4734966 tp_is_empty!54501)))

(assert (=> b!8038710 (= tp!2407560 e!4734966)))

(assert (= (and b!8038710 ((_ is ElementMatch!21753) (reg!22082 (regTwo!44018 r!13107)))) b!8038903))

(assert (= (and b!8038710 ((_ is Concat!30756) (reg!22082 (regTwo!44018 r!13107)))) b!8038904))

(assert (= (and b!8038710 ((_ is Star!21753) (reg!22082 (regTwo!44018 r!13107)))) b!8038905))

(assert (= (and b!8038710 ((_ is Union!21753) (reg!22082 (regTwo!44018 r!13107)))) b!8038906))

(check-sat (not b!8038832) (not b!8038894) (not b!8038849) (not bm!746237) tp_is_empty!54501 (not b!8038906) (not bm!746234) (not b!8038876) (not bm!746249) (not b!8038724) (not b!8038878) (not b!8038854) (not bm!746230) (not b!8038890) (not b!8038838) (not b!8038844) (not b!8038817) (not b!8038820) (not d!2395297) (not b!8038800) (not b!8038742) (not b!8038869) (not bm!746239) (not b!8038880) (not bm!746253) (not b!8038866) (not b!8038902) (not b!8038862) (not b!8038848) (not d!2395291) (not b!8038857) (not b!8038840) (not b!8038885) (not b!8038829) (not b!8038842) (not b!8038826) (not bm!746228) (not b!8038858) (not b!8038833) (not b!8038828) (not b!8038814) (not b!8038896) (not bm!746236) (not b!8038873) (not b!8038813) (not b!8038861) (not b!8038760) (not b!8038852) (not b!8038888) (not d!2395277) (not b!8038901) (not b!8038889) (not b!8038836) (not b!8038717) (not b!8038870) (not b!8038877) (not b!8038892) (not b!8038808) (not bm!746240) (not b!8038872) (not b!8038845) (not bm!746256) (not b!8038865) (not b!8038882) (not b!8038809) (not b!8038793) (not b!8038886) (not bm!746254) (not b!8038898) (not b!8038834) (not d!2395281) (not b!8038884) (not b!8038864) (not b!8038841) (not b!8038810) (not b!8038751) (not b!8038860) (not b!8038853) (not b!8038897) (not b!8038874) (not bm!746231) (not b!8038837) (not b!8038846) (not b!8038850) (not b!8038904) (not b!8038881) (not bm!746233) (not b!8038821) (not b!8038822) (not bm!746243) (not bm!746255) (not bm!746242) (not b!8038824) (not b!8038900) (not b!8038905) (not bm!746229) (not b!8038733) (not b!8038825) (not bm!746250) (not b!8038816) (not b!8038868) (not b!8038856) (not d!2395287) (not b!8038893) (not b!8038830) (not b!8038812) (not b!8038818))
(check-sat)
