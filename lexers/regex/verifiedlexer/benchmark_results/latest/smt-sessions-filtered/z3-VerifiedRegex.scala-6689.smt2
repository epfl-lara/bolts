; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350886 () Bool)

(assert start!350886)

(declare-fun b!3728504 () Bool)

(declare-fun res!1514104 () Bool)

(declare-fun e!2307134 () Bool)

(assert (=> b!3728504 (=> (not res!1514104) (not e!2307134))))

(declare-datatypes ((C!22020 0))(
  ( (C!22021 (val!13058 Int)) )
))
(declare-datatypes ((Regex!10917 0))(
  ( (ElementMatch!10917 (c!645303 C!22020)) (Concat!17188 (regOne!22346 Regex!10917) (regTwo!22346 Regex!10917)) (EmptyExpr!10917) (Star!10917 (reg!11246 Regex!10917)) (EmptyLang!10917) (Union!10917 (regOne!22347 Regex!10917) (regTwo!22347 Regex!10917)) )
))
(declare-fun r!26968 () Regex!10917)

(declare-fun cNot!42 () C!22020)

(declare-datatypes ((List!39798 0))(
  ( (Nil!39674) (Cons!39674 (h!45094 C!22020) (t!302481 List!39798)) )
))
(declare-fun contains!8010 (List!39798 C!22020) Bool)

(declare-fun usedCharacters!1180 (Regex!10917) List!39798)

(assert (=> b!3728504 (= res!1514104 (not (contains!8010 (usedCharacters!1180 r!26968) cNot!42)))))

(declare-fun b!3728505 () Bool)

(declare-fun e!2307133 () Bool)

(declare-fun tp!1134480 () Bool)

(declare-fun tp!1134483 () Bool)

(assert (=> b!3728505 (= e!2307133 (and tp!1134480 tp!1134483))))

(declare-fun b!3728506 () Bool)

(declare-fun tp_is_empty!18849 () Bool)

(assert (=> b!3728506 (= e!2307133 tp_is_empty!18849)))

(declare-fun res!1514102 () Bool)

(assert (=> start!350886 (=> (not res!1514102) (not e!2307134))))

(declare-fun validRegex!5024 (Regex!10917) Bool)

(assert (=> start!350886 (= res!1514102 (validRegex!5024 r!26968))))

(assert (=> start!350886 e!2307134))

(assert (=> start!350886 e!2307133))

(assert (=> start!350886 tp_is_empty!18849))

(declare-fun b!3728507 () Bool)

(declare-fun tp!1134481 () Bool)

(declare-fun tp!1134484 () Bool)

(assert (=> b!3728507 (= e!2307133 (and tp!1134481 tp!1134484))))

(declare-fun b!3728508 () Bool)

(declare-fun res!1514103 () Bool)

(assert (=> b!3728508 (=> (not res!1514103) (not e!2307134))))

(get-info :version)

(assert (=> b!3728508 (= res!1514103 (and (not ((_ is EmptyExpr!10917) r!26968)) (not ((_ is EmptyLang!10917) r!26968)) (not ((_ is ElementMatch!10917) r!26968)) (not ((_ is Union!10917) r!26968)) ((_ is Star!10917) r!26968)))))

(declare-fun b!3728509 () Bool)

(declare-fun tp!1134482 () Bool)

(assert (=> b!3728509 (= e!2307133 tp!1134482)))

(declare-fun b!3728510 () Bool)

(assert (=> b!3728510 (= e!2307134 (not (validRegex!5024 (reg!11246 r!26968))))))

(assert (= (and start!350886 res!1514102) b!3728504))

(assert (= (and b!3728504 res!1514104) b!3728508))

(assert (= (and b!3728508 res!1514103) b!3728510))

(assert (= (and start!350886 ((_ is ElementMatch!10917) r!26968)) b!3728506))

(assert (= (and start!350886 ((_ is Concat!17188) r!26968)) b!3728507))

(assert (= (and start!350886 ((_ is Star!10917) r!26968)) b!3728509))

(assert (= (and start!350886 ((_ is Union!10917) r!26968)) b!3728505))

(declare-fun m!4229133 () Bool)

(assert (=> b!3728504 m!4229133))

(assert (=> b!3728504 m!4229133))

(declare-fun m!4229135 () Bool)

(assert (=> b!3728504 m!4229135))

(declare-fun m!4229137 () Bool)

(assert (=> start!350886 m!4229137))

(declare-fun m!4229139 () Bool)

(assert (=> b!3728510 m!4229139))

(check-sat (not b!3728507) (not start!350886) tp_is_empty!18849 (not b!3728509) (not b!3728510) (not b!3728505) (not b!3728504))
(check-sat)
(get-model)

(declare-fun c!645317 () Bool)

(declare-fun bm!271978 () Bool)

(declare-fun c!645316 () Bool)

(declare-fun call!271983 () Bool)

(assert (=> bm!271978 (= call!271983 (validRegex!5024 (ite c!645316 (reg!11246 r!26968) (ite c!645317 (regOne!22347 r!26968) (regOne!22346 r!26968)))))))

(declare-fun b!3728551 () Bool)

(declare-fun e!2307168 () Bool)

(declare-fun e!2307166 () Bool)

(assert (=> b!3728551 (= e!2307168 e!2307166)))

(declare-fun res!1514125 () Bool)

(assert (=> b!3728551 (=> (not res!1514125) (not e!2307166))))

(declare-fun call!271984 () Bool)

(assert (=> b!3728551 (= res!1514125 call!271984)))

(declare-fun b!3728552 () Bool)

(declare-fun e!2307163 () Bool)

(declare-fun e!2307167 () Bool)

(assert (=> b!3728552 (= e!2307163 e!2307167)))

(assert (=> b!3728552 (= c!645317 ((_ is Union!10917) r!26968))))

(declare-fun b!3728553 () Bool)

(declare-fun e!2307169 () Bool)

(declare-fun call!271985 () Bool)

(assert (=> b!3728553 (= e!2307169 call!271985)))

(declare-fun bm!271979 () Bool)

(assert (=> bm!271979 (= call!271984 call!271983)))

(declare-fun b!3728555 () Bool)

(assert (=> b!3728555 (= e!2307166 call!271985)))

(declare-fun b!3728556 () Bool)

(declare-fun e!2307165 () Bool)

(assert (=> b!3728556 (= e!2307165 call!271983)))

(declare-fun d!1090290 () Bool)

(declare-fun res!1514124 () Bool)

(declare-fun e!2307164 () Bool)

(assert (=> d!1090290 (=> res!1514124 e!2307164)))

(assert (=> d!1090290 (= res!1514124 ((_ is ElementMatch!10917) r!26968))))

(assert (=> d!1090290 (= (validRegex!5024 r!26968) e!2307164)))

(declare-fun b!3728554 () Bool)

(declare-fun res!1514122 () Bool)

(assert (=> b!3728554 (=> (not res!1514122) (not e!2307169))))

(assert (=> b!3728554 (= res!1514122 call!271984)))

(assert (=> b!3728554 (= e!2307167 e!2307169)))

(declare-fun b!3728557 () Bool)

(assert (=> b!3728557 (= e!2307164 e!2307163)))

(assert (=> b!3728557 (= c!645316 ((_ is Star!10917) r!26968))))

(declare-fun b!3728558 () Bool)

(assert (=> b!3728558 (= e!2307163 e!2307165)))

(declare-fun res!1514123 () Bool)

(declare-fun nullable!3824 (Regex!10917) Bool)

(assert (=> b!3728558 (= res!1514123 (not (nullable!3824 (reg!11246 r!26968))))))

(assert (=> b!3728558 (=> (not res!1514123) (not e!2307165))))

(declare-fun b!3728559 () Bool)

(declare-fun res!1514121 () Bool)

(assert (=> b!3728559 (=> res!1514121 e!2307168)))

(assert (=> b!3728559 (= res!1514121 (not ((_ is Concat!17188) r!26968)))))

(assert (=> b!3728559 (= e!2307167 e!2307168)))

(declare-fun bm!271980 () Bool)

(assert (=> bm!271980 (= call!271985 (validRegex!5024 (ite c!645317 (regTwo!22347 r!26968) (regTwo!22346 r!26968))))))

(assert (= (and d!1090290 (not res!1514124)) b!3728557))

(assert (= (and b!3728557 c!645316) b!3728558))

(assert (= (and b!3728557 (not c!645316)) b!3728552))

(assert (= (and b!3728558 res!1514123) b!3728556))

(assert (= (and b!3728552 c!645317) b!3728554))

(assert (= (and b!3728552 (not c!645317)) b!3728559))

(assert (= (and b!3728554 res!1514122) b!3728553))

(assert (= (and b!3728559 (not res!1514121)) b!3728551))

(assert (= (and b!3728551 res!1514125) b!3728555))

(assert (= (or b!3728553 b!3728555) bm!271980))

(assert (= (or b!3728554 b!3728551) bm!271979))

(assert (= (or b!3728556 bm!271979) bm!271978))

(declare-fun m!4229147 () Bool)

(assert (=> bm!271978 m!4229147))

(declare-fun m!4229149 () Bool)

(assert (=> b!3728558 m!4229149))

(declare-fun m!4229151 () Bool)

(assert (=> bm!271980 m!4229151))

(assert (=> start!350886 d!1090290))

(declare-fun c!645318 () Bool)

(declare-fun c!645319 () Bool)

(declare-fun call!271986 () Bool)

(declare-fun bm!271981 () Bool)

(assert (=> bm!271981 (= call!271986 (validRegex!5024 (ite c!645318 (reg!11246 (reg!11246 r!26968)) (ite c!645319 (regOne!22347 (reg!11246 r!26968)) (regOne!22346 (reg!11246 r!26968))))))))

(declare-fun b!3728560 () Bool)

(declare-fun e!2307175 () Bool)

(declare-fun e!2307173 () Bool)

(assert (=> b!3728560 (= e!2307175 e!2307173)))

(declare-fun res!1514130 () Bool)

(assert (=> b!3728560 (=> (not res!1514130) (not e!2307173))))

(declare-fun call!271987 () Bool)

(assert (=> b!3728560 (= res!1514130 call!271987)))

(declare-fun b!3728561 () Bool)

(declare-fun e!2307170 () Bool)

(declare-fun e!2307174 () Bool)

(assert (=> b!3728561 (= e!2307170 e!2307174)))

(assert (=> b!3728561 (= c!645319 ((_ is Union!10917) (reg!11246 r!26968)))))

(declare-fun b!3728562 () Bool)

(declare-fun e!2307176 () Bool)

(declare-fun call!271988 () Bool)

(assert (=> b!3728562 (= e!2307176 call!271988)))

(declare-fun bm!271982 () Bool)

(assert (=> bm!271982 (= call!271987 call!271986)))

(declare-fun b!3728564 () Bool)

(assert (=> b!3728564 (= e!2307173 call!271988)))

(declare-fun b!3728565 () Bool)

(declare-fun e!2307172 () Bool)

(assert (=> b!3728565 (= e!2307172 call!271986)))

(declare-fun d!1090294 () Bool)

(declare-fun res!1514129 () Bool)

(declare-fun e!2307171 () Bool)

(assert (=> d!1090294 (=> res!1514129 e!2307171)))

(assert (=> d!1090294 (= res!1514129 ((_ is ElementMatch!10917) (reg!11246 r!26968)))))

(assert (=> d!1090294 (= (validRegex!5024 (reg!11246 r!26968)) e!2307171)))

(declare-fun b!3728563 () Bool)

(declare-fun res!1514127 () Bool)

(assert (=> b!3728563 (=> (not res!1514127) (not e!2307176))))

(assert (=> b!3728563 (= res!1514127 call!271987)))

(assert (=> b!3728563 (= e!2307174 e!2307176)))

(declare-fun b!3728566 () Bool)

(assert (=> b!3728566 (= e!2307171 e!2307170)))

(assert (=> b!3728566 (= c!645318 ((_ is Star!10917) (reg!11246 r!26968)))))

(declare-fun b!3728567 () Bool)

(assert (=> b!3728567 (= e!2307170 e!2307172)))

(declare-fun res!1514128 () Bool)

(assert (=> b!3728567 (= res!1514128 (not (nullable!3824 (reg!11246 (reg!11246 r!26968)))))))

(assert (=> b!3728567 (=> (not res!1514128) (not e!2307172))))

(declare-fun b!3728568 () Bool)

(declare-fun res!1514126 () Bool)

(assert (=> b!3728568 (=> res!1514126 e!2307175)))

(assert (=> b!3728568 (= res!1514126 (not ((_ is Concat!17188) (reg!11246 r!26968))))))

(assert (=> b!3728568 (= e!2307174 e!2307175)))

(declare-fun bm!271983 () Bool)

(assert (=> bm!271983 (= call!271988 (validRegex!5024 (ite c!645319 (regTwo!22347 (reg!11246 r!26968)) (regTwo!22346 (reg!11246 r!26968)))))))

(assert (= (and d!1090294 (not res!1514129)) b!3728566))

(assert (= (and b!3728566 c!645318) b!3728567))

(assert (= (and b!3728566 (not c!645318)) b!3728561))

(assert (= (and b!3728567 res!1514128) b!3728565))

(assert (= (and b!3728561 c!645319) b!3728563))

(assert (= (and b!3728561 (not c!645319)) b!3728568))

(assert (= (and b!3728563 res!1514127) b!3728562))

(assert (= (and b!3728568 (not res!1514126)) b!3728560))

(assert (= (and b!3728560 res!1514130) b!3728564))

(assert (= (or b!3728562 b!3728564) bm!271983))

(assert (= (or b!3728563 b!3728560) bm!271982))

(assert (= (or b!3728565 bm!271982) bm!271981))

(declare-fun m!4229153 () Bool)

(assert (=> bm!271981 m!4229153))

(declare-fun m!4229155 () Bool)

(assert (=> b!3728567 m!4229155))

(declare-fun m!4229157 () Bool)

(assert (=> bm!271983 m!4229157))

(assert (=> b!3728510 d!1090294))

(declare-fun d!1090296 () Bool)

(declare-fun lt!1298572 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5774 (List!39798) (InoxSet C!22020))

(assert (=> d!1090296 (= lt!1298572 (select (content!5774 (usedCharacters!1180 r!26968)) cNot!42))))

(declare-fun e!2307192 () Bool)

(assert (=> d!1090296 (= lt!1298572 e!2307192)))

(declare-fun res!1514140 () Bool)

(assert (=> d!1090296 (=> (not res!1514140) (not e!2307192))))

(assert (=> d!1090296 (= res!1514140 ((_ is Cons!39674) (usedCharacters!1180 r!26968)))))

(assert (=> d!1090296 (= (contains!8010 (usedCharacters!1180 r!26968) cNot!42) lt!1298572)))

(declare-fun b!3728587 () Bool)

(declare-fun e!2307189 () Bool)

(assert (=> b!3728587 (= e!2307192 e!2307189)))

(declare-fun res!1514137 () Bool)

(assert (=> b!3728587 (=> res!1514137 e!2307189)))

(assert (=> b!3728587 (= res!1514137 (= (h!45094 (usedCharacters!1180 r!26968)) cNot!42))))

(declare-fun b!3728588 () Bool)

(assert (=> b!3728588 (= e!2307189 (contains!8010 (t!302481 (usedCharacters!1180 r!26968)) cNot!42))))

(assert (= (and d!1090296 res!1514140) b!3728587))

(assert (= (and b!3728587 (not res!1514137)) b!3728588))

(assert (=> d!1090296 m!4229133))

(declare-fun m!4229165 () Bool)

(assert (=> d!1090296 m!4229165))

(declare-fun m!4229167 () Bool)

(assert (=> d!1090296 m!4229167))

(declare-fun m!4229169 () Bool)

(assert (=> b!3728588 m!4229169))

(assert (=> b!3728504 d!1090296))

(declare-fun b!3728653 () Bool)

(declare-fun e!2307230 () List!39798)

(assert (=> b!3728653 (= e!2307230 Nil!39674)))

(declare-fun b!3728654 () Bool)

(declare-fun e!2307229 () List!39798)

(declare-fun call!272014 () List!39798)

(assert (=> b!3728654 (= e!2307229 call!272014)))

(declare-fun b!3728655 () Bool)

(declare-fun e!2307228 () List!39798)

(assert (=> b!3728655 (= e!2307230 e!2307228)))

(declare-fun c!645341 () Bool)

(assert (=> b!3728655 (= c!645341 ((_ is ElementMatch!10917) r!26968))))

(declare-fun call!272016 () List!39798)

(declare-fun call!272015 () List!39798)

(declare-fun bm!272008 () Bool)

(declare-fun c!645340 () Bool)

(declare-fun ++!9841 (List!39798 List!39798) List!39798)

(assert (=> bm!272008 (= call!272014 (++!9841 (ite c!645340 call!272015 call!272016) (ite c!645340 call!272016 call!272015)))))

(declare-fun b!3728656 () Bool)

(declare-fun e!2307227 () List!39798)

(assert (=> b!3728656 (= e!2307227 e!2307229)))

(assert (=> b!3728656 (= c!645340 ((_ is Union!10917) r!26968))))

(declare-fun bm!272009 () Bool)

(declare-fun call!272013 () List!39798)

(assert (=> bm!272009 (= call!272016 call!272013)))

(declare-fun b!3728657 () Bool)

(declare-fun c!645342 () Bool)

(assert (=> b!3728657 (= c!645342 ((_ is Star!10917) r!26968))))

(assert (=> b!3728657 (= e!2307228 e!2307227)))

(declare-fun bm!272010 () Bool)

(assert (=> bm!272010 (= call!272015 (usedCharacters!1180 (ite c!645340 (regOne!22347 r!26968) (regTwo!22346 r!26968))))))

(declare-fun b!3728659 () Bool)

(assert (=> b!3728659 (= e!2307228 (Cons!39674 (c!645303 r!26968) Nil!39674))))

(declare-fun bm!272011 () Bool)

(assert (=> bm!272011 (= call!272013 (usedCharacters!1180 (ite c!645342 (reg!11246 r!26968) (ite c!645340 (regTwo!22347 r!26968) (regOne!22346 r!26968)))))))

(declare-fun b!3728660 () Bool)

(assert (=> b!3728660 (= e!2307229 call!272014)))

(declare-fun d!1090300 () Bool)

(declare-fun c!645343 () Bool)

(assert (=> d!1090300 (= c!645343 (or ((_ is EmptyExpr!10917) r!26968) ((_ is EmptyLang!10917) r!26968)))))

(assert (=> d!1090300 (= (usedCharacters!1180 r!26968) e!2307230)))

(declare-fun b!3728658 () Bool)

(assert (=> b!3728658 (= e!2307227 call!272013)))

(assert (= (and d!1090300 c!645343) b!3728653))

(assert (= (and d!1090300 (not c!645343)) b!3728655))

(assert (= (and b!3728655 c!645341) b!3728659))

(assert (= (and b!3728655 (not c!645341)) b!3728657))

(assert (= (and b!3728657 c!645342) b!3728658))

(assert (= (and b!3728657 (not c!645342)) b!3728656))

(assert (= (and b!3728656 c!645340) b!3728660))

(assert (= (and b!3728656 (not c!645340)) b!3728654))

(assert (= (or b!3728660 b!3728654) bm!272010))

(assert (= (or b!3728660 b!3728654) bm!272009))

(assert (= (or b!3728660 b!3728654) bm!272008))

(assert (= (or b!3728658 bm!272009) bm!272011))

(declare-fun m!4229183 () Bool)

(assert (=> bm!272008 m!4229183))

(declare-fun m!4229185 () Bool)

(assert (=> bm!272010 m!4229185))

(declare-fun m!4229187 () Bool)

(assert (=> bm!272011 m!4229187))

(assert (=> b!3728504 d!1090300))

(declare-fun b!3728685 () Bool)

(declare-fun e!2307236 () Bool)

(declare-fun tp!1134534 () Bool)

(assert (=> b!3728685 (= e!2307236 tp!1134534)))

(assert (=> b!3728505 (= tp!1134480 e!2307236)))

(declare-fun b!3728683 () Bool)

(assert (=> b!3728683 (= e!2307236 tp_is_empty!18849)))

(declare-fun b!3728686 () Bool)

(declare-fun tp!1134532 () Bool)

(declare-fun tp!1134533 () Bool)

(assert (=> b!3728686 (= e!2307236 (and tp!1134532 tp!1134533))))

(declare-fun b!3728684 () Bool)

(declare-fun tp!1134530 () Bool)

(declare-fun tp!1134531 () Bool)

(assert (=> b!3728684 (= e!2307236 (and tp!1134530 tp!1134531))))

(assert (= (and b!3728505 ((_ is ElementMatch!10917) (regOne!22347 r!26968))) b!3728683))

(assert (= (and b!3728505 ((_ is Concat!17188) (regOne!22347 r!26968))) b!3728684))

(assert (= (and b!3728505 ((_ is Star!10917) (regOne!22347 r!26968))) b!3728685))

(assert (= (and b!3728505 ((_ is Union!10917) (regOne!22347 r!26968))) b!3728686))

(declare-fun b!3728689 () Bool)

(declare-fun e!2307237 () Bool)

(declare-fun tp!1134539 () Bool)

(assert (=> b!3728689 (= e!2307237 tp!1134539)))

(assert (=> b!3728505 (= tp!1134483 e!2307237)))

(declare-fun b!3728687 () Bool)

(assert (=> b!3728687 (= e!2307237 tp_is_empty!18849)))

(declare-fun b!3728690 () Bool)

(declare-fun tp!1134537 () Bool)

(declare-fun tp!1134538 () Bool)

(assert (=> b!3728690 (= e!2307237 (and tp!1134537 tp!1134538))))

(declare-fun b!3728688 () Bool)

(declare-fun tp!1134535 () Bool)

(declare-fun tp!1134536 () Bool)

(assert (=> b!3728688 (= e!2307237 (and tp!1134535 tp!1134536))))

(assert (= (and b!3728505 ((_ is ElementMatch!10917) (regTwo!22347 r!26968))) b!3728687))

(assert (= (and b!3728505 ((_ is Concat!17188) (regTwo!22347 r!26968))) b!3728688))

(assert (= (and b!3728505 ((_ is Star!10917) (regTwo!22347 r!26968))) b!3728689))

(assert (= (and b!3728505 ((_ is Union!10917) (regTwo!22347 r!26968))) b!3728690))

(declare-fun b!3728693 () Bool)

(declare-fun e!2307238 () Bool)

(declare-fun tp!1134544 () Bool)

(assert (=> b!3728693 (= e!2307238 tp!1134544)))

(assert (=> b!3728507 (= tp!1134481 e!2307238)))

(declare-fun b!3728691 () Bool)

(assert (=> b!3728691 (= e!2307238 tp_is_empty!18849)))

(declare-fun b!3728694 () Bool)

(declare-fun tp!1134542 () Bool)

(declare-fun tp!1134543 () Bool)

(assert (=> b!3728694 (= e!2307238 (and tp!1134542 tp!1134543))))

(declare-fun b!3728692 () Bool)

(declare-fun tp!1134540 () Bool)

(declare-fun tp!1134541 () Bool)

(assert (=> b!3728692 (= e!2307238 (and tp!1134540 tp!1134541))))

(assert (= (and b!3728507 ((_ is ElementMatch!10917) (regOne!22346 r!26968))) b!3728691))

(assert (= (and b!3728507 ((_ is Concat!17188) (regOne!22346 r!26968))) b!3728692))

(assert (= (and b!3728507 ((_ is Star!10917) (regOne!22346 r!26968))) b!3728693))

(assert (= (and b!3728507 ((_ is Union!10917) (regOne!22346 r!26968))) b!3728694))

(declare-fun b!3728697 () Bool)

(declare-fun e!2307239 () Bool)

(declare-fun tp!1134549 () Bool)

(assert (=> b!3728697 (= e!2307239 tp!1134549)))

(assert (=> b!3728507 (= tp!1134484 e!2307239)))

(declare-fun b!3728695 () Bool)

(assert (=> b!3728695 (= e!2307239 tp_is_empty!18849)))

(declare-fun b!3728698 () Bool)

(declare-fun tp!1134547 () Bool)

(declare-fun tp!1134548 () Bool)

(assert (=> b!3728698 (= e!2307239 (and tp!1134547 tp!1134548))))

(declare-fun b!3728696 () Bool)

(declare-fun tp!1134545 () Bool)

(declare-fun tp!1134546 () Bool)

(assert (=> b!3728696 (= e!2307239 (and tp!1134545 tp!1134546))))

(assert (= (and b!3728507 ((_ is ElementMatch!10917) (regTwo!22346 r!26968))) b!3728695))

(assert (= (and b!3728507 ((_ is Concat!17188) (regTwo!22346 r!26968))) b!3728696))

(assert (= (and b!3728507 ((_ is Star!10917) (regTwo!22346 r!26968))) b!3728697))

(assert (= (and b!3728507 ((_ is Union!10917) (regTwo!22346 r!26968))) b!3728698))

(declare-fun b!3728701 () Bool)

(declare-fun e!2307240 () Bool)

(declare-fun tp!1134554 () Bool)

(assert (=> b!3728701 (= e!2307240 tp!1134554)))

(assert (=> b!3728509 (= tp!1134482 e!2307240)))

(declare-fun b!3728699 () Bool)

(assert (=> b!3728699 (= e!2307240 tp_is_empty!18849)))

(declare-fun b!3728702 () Bool)

(declare-fun tp!1134552 () Bool)

(declare-fun tp!1134553 () Bool)

(assert (=> b!3728702 (= e!2307240 (and tp!1134552 tp!1134553))))

(declare-fun b!3728700 () Bool)

(declare-fun tp!1134550 () Bool)

(declare-fun tp!1134551 () Bool)

(assert (=> b!3728700 (= e!2307240 (and tp!1134550 tp!1134551))))

(assert (= (and b!3728509 ((_ is ElementMatch!10917) (reg!11246 r!26968))) b!3728699))

(assert (= (and b!3728509 ((_ is Concat!17188) (reg!11246 r!26968))) b!3728700))

(assert (= (and b!3728509 ((_ is Star!10917) (reg!11246 r!26968))) b!3728701))

(assert (= (and b!3728509 ((_ is Union!10917) (reg!11246 r!26968))) b!3728702))

(check-sat tp_is_empty!18849 (not b!3728701) (not bm!271978) (not b!3728697) (not b!3728694) (not b!3728698) (not b!3728685) (not d!1090296) (not b!3728688) (not bm!271983) (not b!3728696) (not bm!272011) (not b!3728693) (not bm!271981) (not b!3728689) (not b!3728588) (not b!3728690) (not b!3728558) (not b!3728686) (not bm!272008) (not b!3728684) (not b!3728700) (not b!3728692) (not b!3728702) (not bm!272010) (not b!3728567) (not bm!271980))
(check-sat)
