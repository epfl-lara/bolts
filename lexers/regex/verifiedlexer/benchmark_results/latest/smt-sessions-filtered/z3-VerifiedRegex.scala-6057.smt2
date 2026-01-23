; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295916 () Bool)

(assert start!295916)

(declare-fun b!3140067 () Bool)

(declare-fun e!1958773 () Bool)

(declare-datatypes ((C!19516 0))(
  ( (C!19517 (val!11794 Int)) )
))
(declare-datatypes ((Regex!9665 0))(
  ( (ElementMatch!9665 (c!527715 C!19516)) (Concat!14986 (regOne!19842 Regex!9665) (regTwo!19842 Regex!9665)) (EmptyExpr!9665) (Star!9665 (reg!9994 Regex!9665)) (EmptyLang!9665) (Union!9665 (regOne!19843 Regex!9665) (regTwo!19843 Regex!9665)) )
))
(declare-fun r!17345 () Regex!9665)

(declare-fun nullable!3299 (Regex!9665) Bool)

(assert (=> b!3140067 (= e!1958773 (not (= true (nullable!3299 r!17345))))))

(declare-fun b!3140069 () Bool)

(declare-fun e!1958771 () Bool)

(assert (=> b!3140069 (= e!1958771 e!1958773)))

(declare-fun res!1282728 () Bool)

(assert (=> b!3140069 (=> res!1282728 e!1958773)))

(assert (=> b!3140069 (= res!1282728 false)))

(declare-fun b!3140070 () Bool)

(declare-fun res!1282730 () Bool)

(declare-fun e!1958769 () Bool)

(assert (=> b!3140070 (=> (not res!1282730) (not e!1958769))))

(get-info :version)

(assert (=> b!3140070 (= res!1282730 (and (not ((_ is EmptyLang!9665) r!17345)) (not ((_ is ElementMatch!9665) r!17345)) (not ((_ is EmptyExpr!9665) r!17345)) ((_ is Star!9665) r!17345)))))

(declare-fun b!3140071 () Bool)

(declare-fun e!1958770 () Bool)

(declare-fun tp!983423 () Bool)

(assert (=> b!3140071 (= e!1958770 tp!983423)))

(declare-fun b!3140072 () Bool)

(declare-fun tp!983424 () Bool)

(declare-fun tp!983425 () Bool)

(assert (=> b!3140072 (= e!1958770 (and tp!983424 tp!983425))))

(declare-fun b!3140068 () Bool)

(declare-fun tp_is_empty!16893 () Bool)

(assert (=> b!3140068 (= e!1958770 tp_is_empty!16893)))

(declare-fun res!1282726 () Bool)

(assert (=> start!295916 (=> (not res!1282726) (not e!1958769))))

(declare-fun validRegex!4398 (Regex!9665) Bool)

(assert (=> start!295916 (= res!1282726 (validRegex!4398 r!17345))))

(assert (=> start!295916 e!1958769))

(assert (=> start!295916 e!1958770))

(declare-fun b!3140073 () Bool)

(declare-fun e!1958772 () Bool)

(declare-fun lt!1061102 () Regex!9665)

(declare-fun isEmptyExpr!696 (Regex!9665) Bool)

(assert (=> b!3140073 (= e!1958772 (isEmptyExpr!696 lt!1061102))))

(declare-fun b!3140074 () Bool)

(assert (=> b!3140074 (= e!1958769 e!1958771)))

(declare-fun res!1282727 () Bool)

(assert (=> b!3140074 (=> (not res!1282727) (not e!1958771))))

(assert (=> b!3140074 (= res!1282727 e!1958772)))

(declare-fun res!1282729 () Bool)

(assert (=> b!3140074 (=> res!1282729 e!1958772)))

(declare-fun isEmptyLang!702 (Regex!9665) Bool)

(assert (=> b!3140074 (= res!1282729 (isEmptyLang!702 lt!1061102))))

(declare-fun simplify!606 (Regex!9665) Regex!9665)

(assert (=> b!3140074 (= lt!1061102 (simplify!606 (reg!9994 r!17345)))))

(declare-fun b!3140075 () Bool)

(declare-fun tp!983422 () Bool)

(declare-fun tp!983421 () Bool)

(assert (=> b!3140075 (= e!1958770 (and tp!983422 tp!983421))))

(assert (= (and start!295916 res!1282726) b!3140070))

(assert (= (and b!3140070 res!1282730) b!3140074))

(assert (= (and b!3140074 (not res!1282729)) b!3140073))

(assert (= (and b!3140074 res!1282727) b!3140069))

(assert (= (and b!3140069 (not res!1282728)) b!3140067))

(assert (= (and start!295916 ((_ is ElementMatch!9665) r!17345)) b!3140068))

(assert (= (and start!295916 ((_ is Concat!14986) r!17345)) b!3140075))

(assert (= (and start!295916 ((_ is Star!9665) r!17345)) b!3140071))

(assert (= (and start!295916 ((_ is Union!9665) r!17345)) b!3140072))

(declare-fun m!3417679 () Bool)

(assert (=> b!3140067 m!3417679))

(declare-fun m!3417681 () Bool)

(assert (=> start!295916 m!3417681))

(declare-fun m!3417683 () Bool)

(assert (=> b!3140073 m!3417683))

(declare-fun m!3417685 () Bool)

(assert (=> b!3140074 m!3417685))

(declare-fun m!3417687 () Bool)

(assert (=> b!3140074 m!3417687))

(check-sat (not b!3140074) (not b!3140072) (not b!3140075) (not b!3140073) tp_is_empty!16893 (not b!3140067) (not start!295916) (not b!3140071))
(check-sat)
(get-model)

(declare-fun d!865626 () Bool)

(declare-fun nullableFct!924 (Regex!9665) Bool)

(assert (=> d!865626 (= (nullable!3299 r!17345) (nullableFct!924 r!17345))))

(declare-fun bs!539046 () Bool)

(assert (= bs!539046 d!865626))

(declare-fun m!3417689 () Bool)

(assert (=> bs!539046 m!3417689))

(assert (=> b!3140067 d!865626))

(declare-fun d!865628 () Bool)

(assert (=> d!865628 (= (isEmptyExpr!696 lt!1061102) ((_ is EmptyExpr!9665) lt!1061102))))

(assert (=> b!3140073 d!865628))

(declare-fun b!3140122 () Bool)

(declare-fun e!1958812 () Bool)

(declare-fun e!1958810 () Bool)

(assert (=> b!3140122 (= e!1958812 e!1958810)))

(declare-fun res!1282756 () Bool)

(assert (=> b!3140122 (=> (not res!1282756) (not e!1958810))))

(declare-fun call!225403 () Bool)

(assert (=> b!3140122 (= res!1282756 call!225403)))

(declare-fun c!527726 () Bool)

(declare-fun bm!225397 () Bool)

(declare-fun c!527727 () Bool)

(declare-fun call!225404 () Bool)

(assert (=> bm!225397 (= call!225404 (validRegex!4398 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))))))

(declare-fun b!3140123 () Bool)

(declare-fun e!1958813 () Bool)

(declare-fun e!1958814 () Bool)

(assert (=> b!3140123 (= e!1958813 e!1958814)))

(assert (=> b!3140123 (= c!527726 ((_ is Star!9665) r!17345))))

(declare-fun bm!225398 () Bool)

(assert (=> bm!225398 (= call!225403 (validRegex!4398 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))))))

(declare-fun b!3140124 () Bool)

(declare-fun res!1282760 () Bool)

(declare-fun e!1958815 () Bool)

(assert (=> b!3140124 (=> (not res!1282760) (not e!1958815))))

(declare-fun call!225402 () Bool)

(assert (=> b!3140124 (= res!1282760 call!225402)))

(declare-fun e!1958811 () Bool)

(assert (=> b!3140124 (= e!1958811 e!1958815)))

(declare-fun b!3140125 () Bool)

(assert (=> b!3140125 (= e!1958814 e!1958811)))

(assert (=> b!3140125 (= c!527727 ((_ is Union!9665) r!17345))))

(declare-fun b!3140126 () Bool)

(assert (=> b!3140126 (= e!1958815 call!225403)))

(declare-fun b!3140121 () Bool)

(declare-fun res!1282757 () Bool)

(assert (=> b!3140121 (=> res!1282757 e!1958812)))

(assert (=> b!3140121 (= res!1282757 (not ((_ is Concat!14986) r!17345)))))

(assert (=> b!3140121 (= e!1958811 e!1958812)))

(declare-fun d!865630 () Bool)

(declare-fun res!1282758 () Bool)

(assert (=> d!865630 (=> res!1282758 e!1958813)))

(assert (=> d!865630 (= res!1282758 ((_ is ElementMatch!9665) r!17345))))

(assert (=> d!865630 (= (validRegex!4398 r!17345) e!1958813)))

(declare-fun b!3140127 () Bool)

(assert (=> b!3140127 (= e!1958810 call!225402)))

(declare-fun b!3140128 () Bool)

(declare-fun e!1958809 () Bool)

(assert (=> b!3140128 (= e!1958814 e!1958809)))

(declare-fun res!1282759 () Bool)

(assert (=> b!3140128 (= res!1282759 (not (nullable!3299 (reg!9994 r!17345))))))

(assert (=> b!3140128 (=> (not res!1282759) (not e!1958809))))

(declare-fun bm!225399 () Bool)

(assert (=> bm!225399 (= call!225402 call!225404)))

(declare-fun b!3140129 () Bool)

(assert (=> b!3140129 (= e!1958809 call!225404)))

(assert (= (and d!865630 (not res!1282758)) b!3140123))

(assert (= (and b!3140123 c!527726) b!3140128))

(assert (= (and b!3140123 (not c!527726)) b!3140125))

(assert (= (and b!3140128 res!1282759) b!3140129))

(assert (= (and b!3140125 c!527727) b!3140124))

(assert (= (and b!3140125 (not c!527727)) b!3140121))

(assert (= (and b!3140124 res!1282760) b!3140126))

(assert (= (and b!3140121 (not res!1282757)) b!3140122))

(assert (= (and b!3140122 res!1282756) b!3140127))

(assert (= (or b!3140126 b!3140122) bm!225398))

(assert (= (or b!3140124 b!3140127) bm!225399))

(assert (= (or b!3140129 bm!225399) bm!225397))

(declare-fun m!3417697 () Bool)

(assert (=> bm!225397 m!3417697))

(declare-fun m!3417699 () Bool)

(assert (=> bm!225398 m!3417699))

(declare-fun m!3417701 () Bool)

(assert (=> b!3140128 m!3417701))

(assert (=> start!295916 d!865630))

(declare-fun d!865636 () Bool)

(assert (=> d!865636 (= (isEmptyLang!702 lt!1061102) ((_ is EmptyLang!9665) lt!1061102))))

(assert (=> b!3140074 d!865636))

(declare-fun b!3140255 () Bool)

(declare-fun c!527783 () Bool)

(declare-fun call!225446 () Bool)

(assert (=> b!3140255 (= c!527783 call!225446)))

(declare-fun e!1958897 () Regex!9665)

(declare-fun e!1958895 () Regex!9665)

(assert (=> b!3140255 (= e!1958897 e!1958895)))

(declare-fun b!3140256 () Bool)

(declare-fun e!1958899 () Regex!9665)

(assert (=> b!3140256 (= e!1958899 e!1958897)))

(declare-fun lt!1061136 () Regex!9665)

(declare-fun call!225443 () Regex!9665)

(assert (=> b!3140256 (= lt!1061136 call!225443)))

(declare-fun lt!1061135 () Regex!9665)

(declare-fun call!225444 () Regex!9665)

(assert (=> b!3140256 (= lt!1061135 call!225444)))

(declare-fun res!1282778 () Bool)

(declare-fun call!225441 () Bool)

(assert (=> b!3140256 (= res!1282778 call!225441)))

(declare-fun e!1958894 () Bool)

(assert (=> b!3140256 (=> res!1282778 e!1958894)))

(declare-fun c!527791 () Bool)

(assert (=> b!3140256 (= c!527791 e!1958894)))

(declare-fun b!3140257 () Bool)

(declare-fun e!1958886 () Regex!9665)

(declare-fun e!1958889 () Regex!9665)

(assert (=> b!3140257 (= e!1958886 e!1958889)))

(declare-fun c!527787 () Bool)

(assert (=> b!3140257 (= c!527787 ((_ is ElementMatch!9665) (reg!9994 r!17345)))))

(declare-fun b!3140258 () Bool)

(declare-fun e!1958898 () Regex!9665)

(assert (=> b!3140258 (= e!1958898 (Concat!14986 lt!1061136 lt!1061135))))

(declare-fun b!3140259 () Bool)

(assert (=> b!3140259 (= e!1958898 lt!1061136)))

(declare-fun lt!1061137 () Regex!9665)

(declare-fun c!527785 () Bool)

(declare-fun bm!225435 () Bool)

(assert (=> bm!225435 (= call!225446 (isEmptyExpr!696 (ite c!527785 lt!1061137 lt!1061136)))))

(declare-fun call!225445 () Bool)

(declare-fun lt!1061134 () Regex!9665)

(declare-fun c!527793 () Bool)

(declare-fun bm!225436 () Bool)

(assert (=> bm!225436 (= call!225445 (isEmptyLang!702 (ite c!527785 lt!1061137 (ite c!527793 lt!1061134 lt!1061135))))))

(declare-fun lt!1061133 () Regex!9665)

(declare-fun bm!225437 () Bool)

(assert (=> bm!225437 (= call!225441 (isEmptyLang!702 (ite c!527793 lt!1061133 lt!1061136)))))

(declare-fun b!3140260 () Bool)

(declare-fun e!1958896 () Regex!9665)

(assert (=> b!3140260 (= e!1958896 EmptyExpr!9665)))

(declare-fun b!3140261 () Bool)

(assert (=> b!3140261 (= e!1958897 EmptyLang!9665)))

(declare-fun b!3140262 () Bool)

(declare-fun e!1958892 () Regex!9665)

(assert (=> b!3140262 (= e!1958892 EmptyExpr!9665)))

(declare-fun b!3140263 () Bool)

(declare-fun e!1958891 () Regex!9665)

(assert (=> b!3140263 (= e!1958891 (Union!9665 lt!1061134 lt!1061133))))

(declare-fun bm!225438 () Bool)

(declare-fun call!225442 () Regex!9665)

(assert (=> bm!225438 (= call!225444 call!225442)))

(declare-fun b!3140264 () Bool)

(declare-fun call!225440 () Bool)

(assert (=> b!3140264 (= e!1958894 call!225440)))

(declare-fun b!3140265 () Bool)

(assert (=> b!3140265 (= c!527793 ((_ is Union!9665) (reg!9994 r!17345)))))

(declare-fun e!1958893 () Regex!9665)

(assert (=> b!3140265 (= e!1958893 e!1958899)))

(declare-fun b!3140266 () Bool)

(assert (=> b!3140266 (= e!1958896 (Star!9665 lt!1061137))))

(declare-fun b!3140267 () Bool)

(assert (=> b!3140267 (= e!1958889 (reg!9994 r!17345))))

(declare-fun b!3140268 () Bool)

(assert (=> b!3140268 (= e!1958892 e!1958893)))

(assert (=> b!3140268 (= c!527785 ((_ is Star!9665) (reg!9994 r!17345)))))

(declare-fun b!3140269 () Bool)

(assert (=> b!3140269 (= e!1958895 e!1958898)))

(declare-fun c!527788 () Bool)

(assert (=> b!3140269 (= c!527788 (isEmptyExpr!696 lt!1061135))))

(declare-fun b!3140270 () Bool)

(declare-fun c!527786 () Bool)

(declare-fun e!1958890 () Bool)

(assert (=> b!3140270 (= c!527786 e!1958890)))

(declare-fun res!1282777 () Bool)

(assert (=> b!3140270 (=> res!1282777 e!1958890)))

(assert (=> b!3140270 (= res!1282777 call!225445)))

(assert (=> b!3140270 (= lt!1061137 call!225442)))

(assert (=> b!3140270 (= e!1958893 e!1958896)))

(declare-fun bm!225439 () Bool)

(assert (=> bm!225439 (= call!225443 (simplify!606 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))

(declare-fun b!3140271 () Bool)

(declare-fun c!527792 () Bool)

(assert (=> b!3140271 (= c!527792 ((_ is EmptyExpr!9665) (reg!9994 r!17345)))))

(assert (=> b!3140271 (= e!1958889 e!1958892)))

(declare-fun b!3140272 () Bool)

(declare-fun e!1958888 () Regex!9665)

(assert (=> b!3140272 (= e!1958888 lt!1061133)))

(declare-fun b!3140273 () Bool)

(assert (=> b!3140273 (= e!1958890 call!225446)))

(declare-fun bm!225440 () Bool)

(assert (=> bm!225440 (= call!225442 (simplify!606 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))

(declare-fun d!865638 () Bool)

(declare-fun e!1958887 () Bool)

(assert (=> d!865638 e!1958887))

(declare-fun res!1282776 () Bool)

(assert (=> d!865638 (=> (not res!1282776) (not e!1958887))))

(declare-fun lt!1061138 () Regex!9665)

(assert (=> d!865638 (= res!1282776 (validRegex!4398 lt!1061138))))

(assert (=> d!865638 (= lt!1061138 e!1958886)))

(declare-fun c!527790 () Bool)

(assert (=> d!865638 (= c!527790 ((_ is EmptyLang!9665) (reg!9994 r!17345)))))

(assert (=> d!865638 (validRegex!4398 (reg!9994 r!17345))))

(assert (=> d!865638 (= (simplify!606 (reg!9994 r!17345)) lt!1061138)))

(declare-fun bm!225441 () Bool)

(assert (=> bm!225441 (= call!225440 call!225445)))

(declare-fun b!3140274 () Bool)

(assert (=> b!3140274 (= e!1958887 (= (nullable!3299 lt!1061138) (nullable!3299 (reg!9994 r!17345))))))

(declare-fun b!3140275 () Bool)

(declare-fun c!527784 () Bool)

(assert (=> b!3140275 (= c!527784 call!225441)))

(assert (=> b!3140275 (= e!1958888 e!1958891)))

(declare-fun b!3140276 () Bool)

(assert (=> b!3140276 (= e!1958895 lt!1061135)))

(declare-fun b!3140277 () Bool)

(assert (=> b!3140277 (= e!1958899 e!1958888)))

(assert (=> b!3140277 (= lt!1061134 call!225443)))

(assert (=> b!3140277 (= lt!1061133 call!225444)))

(declare-fun c!527789 () Bool)

(assert (=> b!3140277 (= c!527789 call!225440)))

(declare-fun b!3140278 () Bool)

(assert (=> b!3140278 (= e!1958891 lt!1061134)))

(declare-fun b!3140279 () Bool)

(assert (=> b!3140279 (= e!1958886 EmptyLang!9665)))

(assert (= (and d!865638 c!527790) b!3140279))

(assert (= (and d!865638 (not c!527790)) b!3140257))

(assert (= (and b!3140257 c!527787) b!3140267))

(assert (= (and b!3140257 (not c!527787)) b!3140271))

(assert (= (and b!3140271 c!527792) b!3140262))

(assert (= (and b!3140271 (not c!527792)) b!3140268))

(assert (= (and b!3140268 c!527785) b!3140270))

(assert (= (and b!3140268 (not c!527785)) b!3140265))

(assert (= (and b!3140270 (not res!1282777)) b!3140273))

(assert (= (and b!3140270 c!527786) b!3140260))

(assert (= (and b!3140270 (not c!527786)) b!3140266))

(assert (= (and b!3140265 c!527793) b!3140277))

(assert (= (and b!3140265 (not c!527793)) b!3140256))

(assert (= (and b!3140277 c!527789) b!3140272))

(assert (= (and b!3140277 (not c!527789)) b!3140275))

(assert (= (and b!3140275 c!527784) b!3140278))

(assert (= (and b!3140275 (not c!527784)) b!3140263))

(assert (= (and b!3140256 (not res!1282778)) b!3140264))

(assert (= (and b!3140256 c!527791) b!3140261))

(assert (= (and b!3140256 (not c!527791)) b!3140255))

(assert (= (and b!3140255 c!527783) b!3140276))

(assert (= (and b!3140255 (not c!527783)) b!3140269))

(assert (= (and b!3140269 c!527788) b!3140259))

(assert (= (and b!3140269 (not c!527788)) b!3140258))

(assert (= (or b!3140275 b!3140256) bm!225437))

(assert (= (or b!3140277 b!3140264) bm!225441))

(assert (= (or b!3140277 b!3140256) bm!225439))

(assert (= (or b!3140277 b!3140256) bm!225438))

(assert (= (or b!3140273 b!3140255) bm!225435))

(assert (= (or b!3140270 bm!225441) bm!225436))

(assert (= (or b!3140270 bm!225438) bm!225440))

(assert (= (and d!865638 res!1282776) b!3140274))

(declare-fun m!3417723 () Bool)

(assert (=> bm!225435 m!3417723))

(declare-fun m!3417725 () Bool)

(assert (=> b!3140269 m!3417725))

(declare-fun m!3417727 () Bool)

(assert (=> d!865638 m!3417727))

(declare-fun m!3417729 () Bool)

(assert (=> d!865638 m!3417729))

(declare-fun m!3417731 () Bool)

(assert (=> bm!225440 m!3417731))

(declare-fun m!3417733 () Bool)

(assert (=> bm!225437 m!3417733))

(declare-fun m!3417735 () Bool)

(assert (=> bm!225436 m!3417735))

(declare-fun m!3417737 () Bool)

(assert (=> b!3140274 m!3417737))

(assert (=> b!3140274 m!3417701))

(declare-fun m!3417739 () Bool)

(assert (=> bm!225439 m!3417739))

(assert (=> b!3140074 d!865638))

(declare-fun b!3140321 () Bool)

(declare-fun e!1958909 () Bool)

(declare-fun tp!983472 () Bool)

(declare-fun tp!983475 () Bool)

(assert (=> b!3140321 (= e!1958909 (and tp!983472 tp!983475))))

(declare-fun b!3140323 () Bool)

(declare-fun tp!983474 () Bool)

(declare-fun tp!983473 () Bool)

(assert (=> b!3140323 (= e!1958909 (and tp!983474 tp!983473))))

(assert (=> b!3140075 (= tp!983422 e!1958909)))

(declare-fun b!3140320 () Bool)

(assert (=> b!3140320 (= e!1958909 tp_is_empty!16893)))

(declare-fun b!3140322 () Bool)

(declare-fun tp!983471 () Bool)

(assert (=> b!3140322 (= e!1958909 tp!983471)))

(assert (= (and b!3140075 ((_ is ElementMatch!9665) (regOne!19842 r!17345))) b!3140320))

(assert (= (and b!3140075 ((_ is Concat!14986) (regOne!19842 r!17345))) b!3140321))

(assert (= (and b!3140075 ((_ is Star!9665) (regOne!19842 r!17345))) b!3140322))

(assert (= (and b!3140075 ((_ is Union!9665) (regOne!19842 r!17345))) b!3140323))

(declare-fun b!3140325 () Bool)

(declare-fun e!1958910 () Bool)

(declare-fun tp!983477 () Bool)

(declare-fun tp!983480 () Bool)

(assert (=> b!3140325 (= e!1958910 (and tp!983477 tp!983480))))

(declare-fun b!3140327 () Bool)

(declare-fun tp!983479 () Bool)

(declare-fun tp!983478 () Bool)

(assert (=> b!3140327 (= e!1958910 (and tp!983479 tp!983478))))

(assert (=> b!3140075 (= tp!983421 e!1958910)))

(declare-fun b!3140324 () Bool)

(assert (=> b!3140324 (= e!1958910 tp_is_empty!16893)))

(declare-fun b!3140326 () Bool)

(declare-fun tp!983476 () Bool)

(assert (=> b!3140326 (= e!1958910 tp!983476)))

(assert (= (and b!3140075 ((_ is ElementMatch!9665) (regTwo!19842 r!17345))) b!3140324))

(assert (= (and b!3140075 ((_ is Concat!14986) (regTwo!19842 r!17345))) b!3140325))

(assert (= (and b!3140075 ((_ is Star!9665) (regTwo!19842 r!17345))) b!3140326))

(assert (= (and b!3140075 ((_ is Union!9665) (regTwo!19842 r!17345))) b!3140327))

(declare-fun b!3140329 () Bool)

(declare-fun e!1958911 () Bool)

(declare-fun tp!983482 () Bool)

(declare-fun tp!983485 () Bool)

(assert (=> b!3140329 (= e!1958911 (and tp!983482 tp!983485))))

(declare-fun b!3140331 () Bool)

(declare-fun tp!983484 () Bool)

(declare-fun tp!983483 () Bool)

(assert (=> b!3140331 (= e!1958911 (and tp!983484 tp!983483))))

(assert (=> b!3140071 (= tp!983423 e!1958911)))

(declare-fun b!3140328 () Bool)

(assert (=> b!3140328 (= e!1958911 tp_is_empty!16893)))

(declare-fun b!3140330 () Bool)

(declare-fun tp!983481 () Bool)

(assert (=> b!3140330 (= e!1958911 tp!983481)))

(assert (= (and b!3140071 ((_ is ElementMatch!9665) (reg!9994 r!17345))) b!3140328))

(assert (= (and b!3140071 ((_ is Concat!14986) (reg!9994 r!17345))) b!3140329))

(assert (= (and b!3140071 ((_ is Star!9665) (reg!9994 r!17345))) b!3140330))

(assert (= (and b!3140071 ((_ is Union!9665) (reg!9994 r!17345))) b!3140331))

(declare-fun b!3140333 () Bool)

(declare-fun e!1958912 () Bool)

(declare-fun tp!983487 () Bool)

(declare-fun tp!983490 () Bool)

(assert (=> b!3140333 (= e!1958912 (and tp!983487 tp!983490))))

(declare-fun b!3140335 () Bool)

(declare-fun tp!983489 () Bool)

(declare-fun tp!983488 () Bool)

(assert (=> b!3140335 (= e!1958912 (and tp!983489 tp!983488))))

(assert (=> b!3140072 (= tp!983424 e!1958912)))

(declare-fun b!3140332 () Bool)

(assert (=> b!3140332 (= e!1958912 tp_is_empty!16893)))

(declare-fun b!3140334 () Bool)

(declare-fun tp!983486 () Bool)

(assert (=> b!3140334 (= e!1958912 tp!983486)))

(assert (= (and b!3140072 ((_ is ElementMatch!9665) (regOne!19843 r!17345))) b!3140332))

(assert (= (and b!3140072 ((_ is Concat!14986) (regOne!19843 r!17345))) b!3140333))

(assert (= (and b!3140072 ((_ is Star!9665) (regOne!19843 r!17345))) b!3140334))

(assert (= (and b!3140072 ((_ is Union!9665) (regOne!19843 r!17345))) b!3140335))

(declare-fun b!3140337 () Bool)

(declare-fun e!1958913 () Bool)

(declare-fun tp!983492 () Bool)

(declare-fun tp!983495 () Bool)

(assert (=> b!3140337 (= e!1958913 (and tp!983492 tp!983495))))

(declare-fun b!3140339 () Bool)

(declare-fun tp!983494 () Bool)

(declare-fun tp!983493 () Bool)

(assert (=> b!3140339 (= e!1958913 (and tp!983494 tp!983493))))

(assert (=> b!3140072 (= tp!983425 e!1958913)))

(declare-fun b!3140336 () Bool)

(assert (=> b!3140336 (= e!1958913 tp_is_empty!16893)))

(declare-fun b!3140338 () Bool)

(declare-fun tp!983491 () Bool)

(assert (=> b!3140338 (= e!1958913 tp!983491)))

(assert (= (and b!3140072 ((_ is ElementMatch!9665) (regTwo!19843 r!17345))) b!3140336))

(assert (= (and b!3140072 ((_ is Concat!14986) (regTwo!19843 r!17345))) b!3140337))

(assert (= (and b!3140072 ((_ is Star!9665) (regTwo!19843 r!17345))) b!3140338))

(assert (= (and b!3140072 ((_ is Union!9665) (regTwo!19843 r!17345))) b!3140339))

(check-sat (not bm!225398) (not b!3140329) (not b!3140331) (not bm!225435) (not d!865638) (not b!3140323) (not bm!225397) (not b!3140338) (not bm!225439) (not b!3140333) (not b!3140335) tp_is_empty!16893 (not b!3140325) (not bm!225440) (not b!3140269) (not bm!225437) (not b!3140322) (not b!3140326) (not b!3140128) (not b!3140337) (not bm!225436) (not b!3140330) (not b!3140327) (not b!3140321) (not b!3140334) (not b!3140339) (not d!865626) (not b!3140274))
(check-sat)
(get-model)

(declare-fun d!865644 () Bool)

(assert (=> d!865644 (= (nullable!3299 lt!1061138) (nullableFct!924 lt!1061138))))

(declare-fun bs!539048 () Bool)

(assert (= bs!539048 d!865644))

(declare-fun m!3417741 () Bool)

(assert (=> bs!539048 m!3417741))

(assert (=> b!3140274 d!865644))

(declare-fun d!865646 () Bool)

(assert (=> d!865646 (= (nullable!3299 (reg!9994 r!17345)) (nullableFct!924 (reg!9994 r!17345)))))

(declare-fun bs!539049 () Bool)

(assert (= bs!539049 d!865646))

(declare-fun m!3417743 () Bool)

(assert (=> bs!539049 m!3417743))

(assert (=> b!3140274 d!865646))

(declare-fun d!865648 () Bool)

(assert (=> d!865648 (= (isEmptyExpr!696 (ite c!527785 lt!1061137 lt!1061136)) ((_ is EmptyExpr!9665) (ite c!527785 lt!1061137 lt!1061136)))))

(assert (=> bm!225435 d!865648))

(declare-fun d!865650 () Bool)

(assert (=> d!865650 (= (isEmptyLang!702 (ite c!527785 lt!1061137 (ite c!527793 lt!1061134 lt!1061135))) ((_ is EmptyLang!9665) (ite c!527785 lt!1061137 (ite c!527793 lt!1061134 lt!1061135))))))

(assert (=> bm!225436 d!865650))

(declare-fun b!3140354 () Bool)

(declare-fun e!1958929 () Bool)

(declare-fun e!1958930 () Bool)

(assert (=> b!3140354 (= e!1958929 e!1958930)))

(declare-fun res!1282791 () Bool)

(assert (=> b!3140354 (=> res!1282791 e!1958930)))

(assert (=> b!3140354 (= res!1282791 ((_ is Star!9665) r!17345))))

(declare-fun bm!225446 () Bool)

(declare-fun call!225452 () Bool)

(declare-fun c!527796 () Bool)

(assert (=> bm!225446 (= call!225452 (nullable!3299 (ite c!527796 (regOne!19843 r!17345) (regTwo!19842 r!17345))))))

(declare-fun b!3140355 () Bool)

(declare-fun e!1958927 () Bool)

(declare-fun call!225451 () Bool)

(assert (=> b!3140355 (= e!1958927 call!225451)))

(declare-fun b!3140356 () Bool)

(declare-fun e!1958928 () Bool)

(declare-fun e!1958926 () Bool)

(assert (=> b!3140356 (= e!1958928 e!1958926)))

(declare-fun res!1282792 () Bool)

(assert (=> b!3140356 (= res!1282792 call!225451)))

(assert (=> b!3140356 (=> (not res!1282792) (not e!1958926))))

(declare-fun b!3140357 () Bool)

(assert (=> b!3140357 (= e!1958928 e!1958927)))

(declare-fun res!1282789 () Bool)

(assert (=> b!3140357 (= res!1282789 call!225452)))

(assert (=> b!3140357 (=> res!1282789 e!1958927)))

(declare-fun d!865652 () Bool)

(declare-fun res!1282790 () Bool)

(declare-fun e!1958931 () Bool)

(assert (=> d!865652 (=> res!1282790 e!1958931)))

(assert (=> d!865652 (= res!1282790 ((_ is EmptyExpr!9665) r!17345))))

(assert (=> d!865652 (= (nullableFct!924 r!17345) e!1958931)))

(declare-fun b!3140358 () Bool)

(assert (=> b!3140358 (= e!1958926 call!225452)))

(declare-fun b!3140359 () Bool)

(assert (=> b!3140359 (= e!1958931 e!1958929)))

(declare-fun res!1282793 () Bool)

(assert (=> b!3140359 (=> (not res!1282793) (not e!1958929))))

(assert (=> b!3140359 (= res!1282793 (and (not ((_ is EmptyLang!9665) r!17345)) (not ((_ is ElementMatch!9665) r!17345))))))

(declare-fun bm!225447 () Bool)

(assert (=> bm!225447 (= call!225451 (nullable!3299 (ite c!527796 (regTwo!19843 r!17345) (regOne!19842 r!17345))))))

(declare-fun b!3140360 () Bool)

(assert (=> b!3140360 (= e!1958930 e!1958928)))

(assert (=> b!3140360 (= c!527796 ((_ is Union!9665) r!17345))))

(assert (= (and d!865652 (not res!1282790)) b!3140359))

(assert (= (and b!3140359 res!1282793) b!3140354))

(assert (= (and b!3140354 (not res!1282791)) b!3140360))

(assert (= (and b!3140360 c!527796) b!3140357))

(assert (= (and b!3140360 (not c!527796)) b!3140356))

(assert (= (and b!3140357 (not res!1282789)) b!3140355))

(assert (= (and b!3140356 res!1282792) b!3140358))

(assert (= (or b!3140357 b!3140358) bm!225446))

(assert (= (or b!3140355 b!3140356) bm!225447))

(declare-fun m!3417745 () Bool)

(assert (=> bm!225446 m!3417745))

(declare-fun m!3417747 () Bool)

(assert (=> bm!225447 m!3417747))

(assert (=> d!865626 d!865652))

(declare-fun d!865654 () Bool)

(assert (=> d!865654 (= (isEmptyLang!702 (ite c!527793 lt!1061133 lt!1061136)) ((_ is EmptyLang!9665) (ite c!527793 lt!1061133 lt!1061136)))))

(assert (=> bm!225437 d!865654))

(declare-fun d!865656 () Bool)

(assert (=> d!865656 (= (isEmptyExpr!696 lt!1061135) ((_ is EmptyExpr!9665) lt!1061135))))

(assert (=> b!3140269 d!865656))

(assert (=> b!3140128 d!865646))

(declare-fun b!3140361 () Bool)

(declare-fun c!527797 () Bool)

(declare-fun call!225459 () Bool)

(assert (=> b!3140361 (= c!527797 call!225459)))

(declare-fun e!1958943 () Regex!9665)

(declare-fun e!1958941 () Regex!9665)

(assert (=> b!3140361 (= e!1958943 e!1958941)))

(declare-fun b!3140362 () Bool)

(declare-fun e!1958945 () Regex!9665)

(assert (=> b!3140362 (= e!1958945 e!1958943)))

(declare-fun lt!1061142 () Regex!9665)

(declare-fun call!225456 () Regex!9665)

(assert (=> b!3140362 (= lt!1061142 call!225456)))

(declare-fun lt!1061141 () Regex!9665)

(declare-fun call!225457 () Regex!9665)

(assert (=> b!3140362 (= lt!1061141 call!225457)))

(declare-fun res!1282796 () Bool)

(declare-fun call!225454 () Bool)

(assert (=> b!3140362 (= res!1282796 call!225454)))

(declare-fun e!1958940 () Bool)

(assert (=> b!3140362 (=> res!1282796 e!1958940)))

(declare-fun c!527805 () Bool)

(assert (=> b!3140362 (= c!527805 e!1958940)))

(declare-fun b!3140363 () Bool)

(declare-fun e!1958932 () Regex!9665)

(declare-fun e!1958935 () Regex!9665)

(assert (=> b!3140363 (= e!1958932 e!1958935)))

(declare-fun c!527801 () Bool)

(assert (=> b!3140363 (= c!527801 ((_ is ElementMatch!9665) (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))

(declare-fun b!3140364 () Bool)

(declare-fun e!1958944 () Regex!9665)

(assert (=> b!3140364 (= e!1958944 (Concat!14986 lt!1061142 lt!1061141))))

(declare-fun b!3140365 () Bool)

(assert (=> b!3140365 (= e!1958944 lt!1061142)))

(declare-fun lt!1061143 () Regex!9665)

(declare-fun bm!225448 () Bool)

(declare-fun c!527799 () Bool)

(assert (=> bm!225448 (= call!225459 (isEmptyExpr!696 (ite c!527799 lt!1061143 lt!1061142)))))

(declare-fun call!225458 () Bool)

(declare-fun lt!1061140 () Regex!9665)

(declare-fun bm!225449 () Bool)

(declare-fun c!527807 () Bool)

(assert (=> bm!225449 (= call!225458 (isEmptyLang!702 (ite c!527799 lt!1061143 (ite c!527807 lt!1061140 lt!1061141))))))

(declare-fun lt!1061139 () Regex!9665)

(declare-fun bm!225450 () Bool)

(assert (=> bm!225450 (= call!225454 (isEmptyLang!702 (ite c!527807 lt!1061139 lt!1061142)))))

(declare-fun b!3140366 () Bool)

(declare-fun e!1958942 () Regex!9665)

(assert (=> b!3140366 (= e!1958942 EmptyExpr!9665)))

(declare-fun b!3140367 () Bool)

(assert (=> b!3140367 (= e!1958943 EmptyLang!9665)))

(declare-fun b!3140368 () Bool)

(declare-fun e!1958938 () Regex!9665)

(assert (=> b!3140368 (= e!1958938 EmptyExpr!9665)))

(declare-fun b!3140369 () Bool)

(declare-fun e!1958937 () Regex!9665)

(assert (=> b!3140369 (= e!1958937 (Union!9665 lt!1061140 lt!1061139))))

(declare-fun bm!225451 () Bool)

(declare-fun call!225455 () Regex!9665)

(assert (=> bm!225451 (= call!225457 call!225455)))

(declare-fun b!3140370 () Bool)

(declare-fun call!225453 () Bool)

(assert (=> b!3140370 (= e!1958940 call!225453)))

(declare-fun b!3140371 () Bool)

(assert (=> b!3140371 (= c!527807 ((_ is Union!9665) (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))

(declare-fun e!1958939 () Regex!9665)

(assert (=> b!3140371 (= e!1958939 e!1958945)))

(declare-fun b!3140372 () Bool)

(assert (=> b!3140372 (= e!1958942 (Star!9665 lt!1061143))))

(declare-fun b!3140373 () Bool)

(assert (=> b!3140373 (= e!1958935 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345))))))

(declare-fun b!3140374 () Bool)

(assert (=> b!3140374 (= e!1958938 e!1958939)))

(assert (=> b!3140374 (= c!527799 ((_ is Star!9665) (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))

(declare-fun b!3140375 () Bool)

(assert (=> b!3140375 (= e!1958941 e!1958944)))

(declare-fun c!527802 () Bool)

(assert (=> b!3140375 (= c!527802 (isEmptyExpr!696 lt!1061141))))

(declare-fun b!3140376 () Bool)

(declare-fun c!527800 () Bool)

(declare-fun e!1958936 () Bool)

(assert (=> b!3140376 (= c!527800 e!1958936)))

(declare-fun res!1282795 () Bool)

(assert (=> b!3140376 (=> res!1282795 e!1958936)))

(assert (=> b!3140376 (= res!1282795 call!225458)))

(assert (=> b!3140376 (= lt!1061143 call!225455)))

(assert (=> b!3140376 (= e!1958939 e!1958942)))

(declare-fun bm!225452 () Bool)

(assert (=> bm!225452 (= call!225456 (simplify!606 (ite c!527807 (regOne!19843 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))) (regOne!19842 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))))

(declare-fun b!3140377 () Bool)

(declare-fun c!527806 () Bool)

(assert (=> b!3140377 (= c!527806 ((_ is EmptyExpr!9665) (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))

(assert (=> b!3140377 (= e!1958935 e!1958938)))

(declare-fun b!3140378 () Bool)

(declare-fun e!1958934 () Regex!9665)

(assert (=> b!3140378 (= e!1958934 lt!1061139)))

(declare-fun b!3140379 () Bool)

(assert (=> b!3140379 (= e!1958936 call!225459)))

(declare-fun bm!225453 () Bool)

(assert (=> bm!225453 (= call!225455 (simplify!606 (ite c!527799 (reg!9994 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))) (ite c!527807 (regTwo!19843 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))) (regTwo!19842 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345))))))))))

(declare-fun d!865658 () Bool)

(declare-fun e!1958933 () Bool)

(assert (=> d!865658 e!1958933))

(declare-fun res!1282794 () Bool)

(assert (=> d!865658 (=> (not res!1282794) (not e!1958933))))

(declare-fun lt!1061144 () Regex!9665)

(assert (=> d!865658 (= res!1282794 (validRegex!4398 lt!1061144))))

(assert (=> d!865658 (= lt!1061144 e!1958932)))

(declare-fun c!527804 () Bool)

(assert (=> d!865658 (= c!527804 ((_ is EmptyLang!9665) (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))

(assert (=> d!865658 (validRegex!4398 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345))))))

(assert (=> d!865658 (= (simplify!606 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))) lt!1061144)))

(declare-fun bm!225454 () Bool)

(assert (=> bm!225454 (= call!225453 call!225458)))

(declare-fun b!3140380 () Bool)

(assert (=> b!3140380 (= e!1958933 (= (nullable!3299 lt!1061144) (nullable!3299 (ite c!527793 (regOne!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345))))))))

(declare-fun b!3140381 () Bool)

(declare-fun c!527798 () Bool)

(assert (=> b!3140381 (= c!527798 call!225454)))

(assert (=> b!3140381 (= e!1958934 e!1958937)))

(declare-fun b!3140382 () Bool)

(assert (=> b!3140382 (= e!1958941 lt!1061141)))

(declare-fun b!3140383 () Bool)

(assert (=> b!3140383 (= e!1958945 e!1958934)))

(assert (=> b!3140383 (= lt!1061140 call!225456)))

(assert (=> b!3140383 (= lt!1061139 call!225457)))

(declare-fun c!527803 () Bool)

(assert (=> b!3140383 (= c!527803 call!225453)))

(declare-fun b!3140384 () Bool)

(assert (=> b!3140384 (= e!1958937 lt!1061140)))

(declare-fun b!3140385 () Bool)

(assert (=> b!3140385 (= e!1958932 EmptyLang!9665)))

(assert (= (and d!865658 c!527804) b!3140385))

(assert (= (and d!865658 (not c!527804)) b!3140363))

(assert (= (and b!3140363 c!527801) b!3140373))

(assert (= (and b!3140363 (not c!527801)) b!3140377))

(assert (= (and b!3140377 c!527806) b!3140368))

(assert (= (and b!3140377 (not c!527806)) b!3140374))

(assert (= (and b!3140374 c!527799) b!3140376))

(assert (= (and b!3140374 (not c!527799)) b!3140371))

(assert (= (and b!3140376 (not res!1282795)) b!3140379))

(assert (= (and b!3140376 c!527800) b!3140366))

(assert (= (and b!3140376 (not c!527800)) b!3140372))

(assert (= (and b!3140371 c!527807) b!3140383))

(assert (= (and b!3140371 (not c!527807)) b!3140362))

(assert (= (and b!3140383 c!527803) b!3140378))

(assert (= (and b!3140383 (not c!527803)) b!3140381))

(assert (= (and b!3140381 c!527798) b!3140384))

(assert (= (and b!3140381 (not c!527798)) b!3140369))

(assert (= (and b!3140362 (not res!1282796)) b!3140370))

(assert (= (and b!3140362 c!527805) b!3140367))

(assert (= (and b!3140362 (not c!527805)) b!3140361))

(assert (= (and b!3140361 c!527797) b!3140382))

(assert (= (and b!3140361 (not c!527797)) b!3140375))

(assert (= (and b!3140375 c!527802) b!3140365))

(assert (= (and b!3140375 (not c!527802)) b!3140364))

(assert (= (or b!3140381 b!3140362) bm!225450))

(assert (= (or b!3140383 b!3140370) bm!225454))

(assert (= (or b!3140383 b!3140362) bm!225452))

(assert (= (or b!3140383 b!3140362) bm!225451))

(assert (= (or b!3140379 b!3140361) bm!225448))

(assert (= (or b!3140376 bm!225454) bm!225449))

(assert (= (or b!3140376 bm!225451) bm!225453))

(assert (= (and d!865658 res!1282794) b!3140380))

(declare-fun m!3417749 () Bool)

(assert (=> bm!225448 m!3417749))

(declare-fun m!3417751 () Bool)

(assert (=> b!3140375 m!3417751))

(declare-fun m!3417753 () Bool)

(assert (=> d!865658 m!3417753))

(declare-fun m!3417755 () Bool)

(assert (=> d!865658 m!3417755))

(declare-fun m!3417757 () Bool)

(assert (=> bm!225453 m!3417757))

(declare-fun m!3417759 () Bool)

(assert (=> bm!225450 m!3417759))

(declare-fun m!3417761 () Bool)

(assert (=> bm!225449 m!3417761))

(declare-fun m!3417763 () Bool)

(assert (=> b!3140380 m!3417763))

(declare-fun m!3417765 () Bool)

(assert (=> b!3140380 m!3417765))

(declare-fun m!3417767 () Bool)

(assert (=> bm!225452 m!3417767))

(assert (=> bm!225439 d!865658))

(declare-fun b!3140387 () Bool)

(declare-fun e!1958949 () Bool)

(declare-fun e!1958947 () Bool)

(assert (=> b!3140387 (= e!1958949 e!1958947)))

(declare-fun res!1282797 () Bool)

(assert (=> b!3140387 (=> (not res!1282797) (not e!1958947))))

(declare-fun call!225461 () Bool)

(assert (=> b!3140387 (= res!1282797 call!225461)))

(declare-fun c!527808 () Bool)

(declare-fun call!225462 () Bool)

(declare-fun c!527809 () Bool)

(declare-fun bm!225455 () Bool)

(assert (=> bm!225455 (= call!225462 (validRegex!4398 (ite c!527808 (reg!9994 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))) (ite c!527809 (regOne!19843 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))) (regTwo!19842 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345))))))))))

(declare-fun b!3140388 () Bool)

(declare-fun e!1958950 () Bool)

(declare-fun e!1958951 () Bool)

(assert (=> b!3140388 (= e!1958950 e!1958951)))

(assert (=> b!3140388 (= c!527808 ((_ is Star!9665) (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))))))

(declare-fun bm!225456 () Bool)

(assert (=> bm!225456 (= call!225461 (validRegex!4398 (ite c!527809 (regTwo!19843 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))) (regOne!19842 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))))))))

(declare-fun b!3140389 () Bool)

(declare-fun res!1282801 () Bool)

(declare-fun e!1958952 () Bool)

(assert (=> b!3140389 (=> (not res!1282801) (not e!1958952))))

(declare-fun call!225460 () Bool)

(assert (=> b!3140389 (= res!1282801 call!225460)))

(declare-fun e!1958948 () Bool)

(assert (=> b!3140389 (= e!1958948 e!1958952)))

(declare-fun b!3140390 () Bool)

(assert (=> b!3140390 (= e!1958951 e!1958948)))

(assert (=> b!3140390 (= c!527809 ((_ is Union!9665) (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))))))

(declare-fun b!3140391 () Bool)

(assert (=> b!3140391 (= e!1958952 call!225461)))

(declare-fun b!3140386 () Bool)

(declare-fun res!1282798 () Bool)

(assert (=> b!3140386 (=> res!1282798 e!1958949)))

(assert (=> b!3140386 (= res!1282798 (not ((_ is Concat!14986) (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345))))))))

(assert (=> b!3140386 (= e!1958948 e!1958949)))

(declare-fun d!865660 () Bool)

(declare-fun res!1282799 () Bool)

(assert (=> d!865660 (=> res!1282799 e!1958950)))

(assert (=> d!865660 (= res!1282799 ((_ is ElementMatch!9665) (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))))))

(assert (=> d!865660 (= (validRegex!4398 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))) e!1958950)))

(declare-fun b!3140392 () Bool)

(assert (=> b!3140392 (= e!1958947 call!225460)))

(declare-fun b!3140393 () Bool)

(declare-fun e!1958946 () Bool)

(assert (=> b!3140393 (= e!1958951 e!1958946)))

(declare-fun res!1282800 () Bool)

(assert (=> b!3140393 (= res!1282800 (not (nullable!3299 (reg!9994 (ite c!527726 (reg!9994 r!17345) (ite c!527727 (regOne!19843 r!17345) (regTwo!19842 r!17345)))))))))

(assert (=> b!3140393 (=> (not res!1282800) (not e!1958946))))

(declare-fun bm!225457 () Bool)

(assert (=> bm!225457 (= call!225460 call!225462)))

(declare-fun b!3140394 () Bool)

(assert (=> b!3140394 (= e!1958946 call!225462)))

(assert (= (and d!865660 (not res!1282799)) b!3140388))

(assert (= (and b!3140388 c!527808) b!3140393))

(assert (= (and b!3140388 (not c!527808)) b!3140390))

(assert (= (and b!3140393 res!1282800) b!3140394))

(assert (= (and b!3140390 c!527809) b!3140389))

(assert (= (and b!3140390 (not c!527809)) b!3140386))

(assert (= (and b!3140389 res!1282801) b!3140391))

(assert (= (and b!3140386 (not res!1282798)) b!3140387))

(assert (= (and b!3140387 res!1282797) b!3140392))

(assert (= (or b!3140391 b!3140387) bm!225456))

(assert (= (or b!3140389 b!3140392) bm!225457))

(assert (= (or b!3140394 bm!225457) bm!225455))

(declare-fun m!3417769 () Bool)

(assert (=> bm!225455 m!3417769))

(declare-fun m!3417771 () Bool)

(assert (=> bm!225456 m!3417771))

(declare-fun m!3417773 () Bool)

(assert (=> b!3140393 m!3417773))

(assert (=> bm!225397 d!865660))

(declare-fun b!3140396 () Bool)

(declare-fun e!1958956 () Bool)

(declare-fun e!1958954 () Bool)

(assert (=> b!3140396 (= e!1958956 e!1958954)))

(declare-fun res!1282802 () Bool)

(assert (=> b!3140396 (=> (not res!1282802) (not e!1958954))))

(declare-fun call!225464 () Bool)

(assert (=> b!3140396 (= res!1282802 call!225464)))

(declare-fun c!527811 () Bool)

(declare-fun call!225465 () Bool)

(declare-fun bm!225458 () Bool)

(declare-fun c!527810 () Bool)

(assert (=> bm!225458 (= call!225465 (validRegex!4398 (ite c!527810 (reg!9994 lt!1061138) (ite c!527811 (regOne!19843 lt!1061138) (regTwo!19842 lt!1061138)))))))

(declare-fun b!3140397 () Bool)

(declare-fun e!1958957 () Bool)

(declare-fun e!1958958 () Bool)

(assert (=> b!3140397 (= e!1958957 e!1958958)))

(assert (=> b!3140397 (= c!527810 ((_ is Star!9665) lt!1061138))))

(declare-fun bm!225459 () Bool)

(assert (=> bm!225459 (= call!225464 (validRegex!4398 (ite c!527811 (regTwo!19843 lt!1061138) (regOne!19842 lt!1061138))))))

(declare-fun b!3140398 () Bool)

(declare-fun res!1282806 () Bool)

(declare-fun e!1958959 () Bool)

(assert (=> b!3140398 (=> (not res!1282806) (not e!1958959))))

(declare-fun call!225463 () Bool)

(assert (=> b!3140398 (= res!1282806 call!225463)))

(declare-fun e!1958955 () Bool)

(assert (=> b!3140398 (= e!1958955 e!1958959)))

(declare-fun b!3140399 () Bool)

(assert (=> b!3140399 (= e!1958958 e!1958955)))

(assert (=> b!3140399 (= c!527811 ((_ is Union!9665) lt!1061138))))

(declare-fun b!3140400 () Bool)

(assert (=> b!3140400 (= e!1958959 call!225464)))

(declare-fun b!3140395 () Bool)

(declare-fun res!1282803 () Bool)

(assert (=> b!3140395 (=> res!1282803 e!1958956)))

(assert (=> b!3140395 (= res!1282803 (not ((_ is Concat!14986) lt!1061138)))))

(assert (=> b!3140395 (= e!1958955 e!1958956)))

(declare-fun d!865662 () Bool)

(declare-fun res!1282804 () Bool)

(assert (=> d!865662 (=> res!1282804 e!1958957)))

(assert (=> d!865662 (= res!1282804 ((_ is ElementMatch!9665) lt!1061138))))

(assert (=> d!865662 (= (validRegex!4398 lt!1061138) e!1958957)))

(declare-fun b!3140401 () Bool)

(assert (=> b!3140401 (= e!1958954 call!225463)))

(declare-fun b!3140402 () Bool)

(declare-fun e!1958953 () Bool)

(assert (=> b!3140402 (= e!1958958 e!1958953)))

(declare-fun res!1282805 () Bool)

(assert (=> b!3140402 (= res!1282805 (not (nullable!3299 (reg!9994 lt!1061138))))))

(assert (=> b!3140402 (=> (not res!1282805) (not e!1958953))))

(declare-fun bm!225460 () Bool)

(assert (=> bm!225460 (= call!225463 call!225465)))

(declare-fun b!3140403 () Bool)

(assert (=> b!3140403 (= e!1958953 call!225465)))

(assert (= (and d!865662 (not res!1282804)) b!3140397))

(assert (= (and b!3140397 c!527810) b!3140402))

(assert (= (and b!3140397 (not c!527810)) b!3140399))

(assert (= (and b!3140402 res!1282805) b!3140403))

(assert (= (and b!3140399 c!527811) b!3140398))

(assert (= (and b!3140399 (not c!527811)) b!3140395))

(assert (= (and b!3140398 res!1282806) b!3140400))

(assert (= (and b!3140395 (not res!1282803)) b!3140396))

(assert (= (and b!3140396 res!1282802) b!3140401))

(assert (= (or b!3140400 b!3140396) bm!225459))

(assert (= (or b!3140398 b!3140401) bm!225460))

(assert (= (or b!3140403 bm!225460) bm!225458))

(declare-fun m!3417775 () Bool)

(assert (=> bm!225458 m!3417775))

(declare-fun m!3417777 () Bool)

(assert (=> bm!225459 m!3417777))

(declare-fun m!3417779 () Bool)

(assert (=> b!3140402 m!3417779))

(assert (=> d!865638 d!865662))

(declare-fun b!3140405 () Bool)

(declare-fun e!1958963 () Bool)

(declare-fun e!1958961 () Bool)

(assert (=> b!3140405 (= e!1958963 e!1958961)))

(declare-fun res!1282807 () Bool)

(assert (=> b!3140405 (=> (not res!1282807) (not e!1958961))))

(declare-fun call!225467 () Bool)

(assert (=> b!3140405 (= res!1282807 call!225467)))

(declare-fun call!225468 () Bool)

(declare-fun c!527813 () Bool)

(declare-fun bm!225461 () Bool)

(declare-fun c!527812 () Bool)

(assert (=> bm!225461 (= call!225468 (validRegex!4398 (ite c!527812 (reg!9994 (reg!9994 r!17345)) (ite c!527813 (regOne!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))

(declare-fun b!3140406 () Bool)

(declare-fun e!1958964 () Bool)

(declare-fun e!1958965 () Bool)

(assert (=> b!3140406 (= e!1958964 e!1958965)))

(assert (=> b!3140406 (= c!527812 ((_ is Star!9665) (reg!9994 r!17345)))))

(declare-fun bm!225462 () Bool)

(assert (=> bm!225462 (= call!225467 (validRegex!4398 (ite c!527813 (regTwo!19843 (reg!9994 r!17345)) (regOne!19842 (reg!9994 r!17345)))))))

(declare-fun b!3140407 () Bool)

(declare-fun res!1282811 () Bool)

(declare-fun e!1958966 () Bool)

(assert (=> b!3140407 (=> (not res!1282811) (not e!1958966))))

(declare-fun call!225466 () Bool)

(assert (=> b!3140407 (= res!1282811 call!225466)))

(declare-fun e!1958962 () Bool)

(assert (=> b!3140407 (= e!1958962 e!1958966)))

(declare-fun b!3140408 () Bool)

(assert (=> b!3140408 (= e!1958965 e!1958962)))

(assert (=> b!3140408 (= c!527813 ((_ is Union!9665) (reg!9994 r!17345)))))

(declare-fun b!3140409 () Bool)

(assert (=> b!3140409 (= e!1958966 call!225467)))

(declare-fun b!3140404 () Bool)

(declare-fun res!1282808 () Bool)

(assert (=> b!3140404 (=> res!1282808 e!1958963)))

(assert (=> b!3140404 (= res!1282808 (not ((_ is Concat!14986) (reg!9994 r!17345))))))

(assert (=> b!3140404 (= e!1958962 e!1958963)))

(declare-fun d!865664 () Bool)

(declare-fun res!1282809 () Bool)

(assert (=> d!865664 (=> res!1282809 e!1958964)))

(assert (=> d!865664 (= res!1282809 ((_ is ElementMatch!9665) (reg!9994 r!17345)))))

(assert (=> d!865664 (= (validRegex!4398 (reg!9994 r!17345)) e!1958964)))

(declare-fun b!3140410 () Bool)

(assert (=> b!3140410 (= e!1958961 call!225466)))

(declare-fun b!3140411 () Bool)

(declare-fun e!1958960 () Bool)

(assert (=> b!3140411 (= e!1958965 e!1958960)))

(declare-fun res!1282810 () Bool)

(assert (=> b!3140411 (= res!1282810 (not (nullable!3299 (reg!9994 (reg!9994 r!17345)))))))

(assert (=> b!3140411 (=> (not res!1282810) (not e!1958960))))

(declare-fun bm!225463 () Bool)

(assert (=> bm!225463 (= call!225466 call!225468)))

(declare-fun b!3140412 () Bool)

(assert (=> b!3140412 (= e!1958960 call!225468)))

(assert (= (and d!865664 (not res!1282809)) b!3140406))

(assert (= (and b!3140406 c!527812) b!3140411))

(assert (= (and b!3140406 (not c!527812)) b!3140408))

(assert (= (and b!3140411 res!1282810) b!3140412))

(assert (= (and b!3140408 c!527813) b!3140407))

(assert (= (and b!3140408 (not c!527813)) b!3140404))

(assert (= (and b!3140407 res!1282811) b!3140409))

(assert (= (and b!3140404 (not res!1282808)) b!3140405))

(assert (= (and b!3140405 res!1282807) b!3140410))

(assert (= (or b!3140409 b!3140405) bm!225462))

(assert (= (or b!3140407 b!3140410) bm!225463))

(assert (= (or b!3140412 bm!225463) bm!225461))

(declare-fun m!3417781 () Bool)

(assert (=> bm!225461 m!3417781))

(declare-fun m!3417783 () Bool)

(assert (=> bm!225462 m!3417783))

(declare-fun m!3417785 () Bool)

(assert (=> b!3140411 m!3417785))

(assert (=> d!865638 d!865664))

(declare-fun b!3140414 () Bool)

(declare-fun e!1958970 () Bool)

(declare-fun e!1958968 () Bool)

(assert (=> b!3140414 (= e!1958970 e!1958968)))

(declare-fun res!1282812 () Bool)

(assert (=> b!3140414 (=> (not res!1282812) (not e!1958968))))

(declare-fun call!225470 () Bool)

(assert (=> b!3140414 (= res!1282812 call!225470)))

(declare-fun c!527815 () Bool)

(declare-fun c!527814 () Bool)

(declare-fun bm!225464 () Bool)

(declare-fun call!225471 () Bool)

(assert (=> bm!225464 (= call!225471 (validRegex!4398 (ite c!527814 (reg!9994 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))) (ite c!527815 (regOne!19843 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))) (regTwo!19842 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345)))))))))

(declare-fun b!3140415 () Bool)

(declare-fun e!1958971 () Bool)

(declare-fun e!1958972 () Bool)

(assert (=> b!3140415 (= e!1958971 e!1958972)))

(assert (=> b!3140415 (= c!527814 ((_ is Star!9665) (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))))))

(declare-fun bm!225465 () Bool)

(assert (=> bm!225465 (= call!225470 (validRegex!4398 (ite c!527815 (regTwo!19843 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))) (regOne!19842 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))))))))

(declare-fun b!3140416 () Bool)

(declare-fun res!1282816 () Bool)

(declare-fun e!1958973 () Bool)

(assert (=> b!3140416 (=> (not res!1282816) (not e!1958973))))

(declare-fun call!225469 () Bool)

(assert (=> b!3140416 (= res!1282816 call!225469)))

(declare-fun e!1958969 () Bool)

(assert (=> b!3140416 (= e!1958969 e!1958973)))

(declare-fun b!3140417 () Bool)

(assert (=> b!3140417 (= e!1958972 e!1958969)))

(assert (=> b!3140417 (= c!527815 ((_ is Union!9665) (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))))))

(declare-fun b!3140418 () Bool)

(assert (=> b!3140418 (= e!1958973 call!225470)))

(declare-fun b!3140413 () Bool)

(declare-fun res!1282813 () Bool)

(assert (=> b!3140413 (=> res!1282813 e!1958970)))

(assert (=> b!3140413 (= res!1282813 (not ((_ is Concat!14986) (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345)))))))

(assert (=> b!3140413 (= e!1958969 e!1958970)))

(declare-fun d!865666 () Bool)

(declare-fun res!1282814 () Bool)

(assert (=> d!865666 (=> res!1282814 e!1958971)))

(assert (=> d!865666 (= res!1282814 ((_ is ElementMatch!9665) (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))))))

(assert (=> d!865666 (= (validRegex!4398 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))) e!1958971)))

(declare-fun b!3140419 () Bool)

(assert (=> b!3140419 (= e!1958968 call!225469)))

(declare-fun b!3140420 () Bool)

(declare-fun e!1958967 () Bool)

(assert (=> b!3140420 (= e!1958972 e!1958967)))

(declare-fun res!1282815 () Bool)

(assert (=> b!3140420 (= res!1282815 (not (nullable!3299 (reg!9994 (ite c!527727 (regTwo!19843 r!17345) (regOne!19842 r!17345))))))))

(assert (=> b!3140420 (=> (not res!1282815) (not e!1958967))))

(declare-fun bm!225466 () Bool)

(assert (=> bm!225466 (= call!225469 call!225471)))

(declare-fun b!3140421 () Bool)

(assert (=> b!3140421 (= e!1958967 call!225471)))

(assert (= (and d!865666 (not res!1282814)) b!3140415))

(assert (= (and b!3140415 c!527814) b!3140420))

(assert (= (and b!3140415 (not c!527814)) b!3140417))

(assert (= (and b!3140420 res!1282815) b!3140421))

(assert (= (and b!3140417 c!527815) b!3140416))

(assert (= (and b!3140417 (not c!527815)) b!3140413))

(assert (= (and b!3140416 res!1282816) b!3140418))

(assert (= (and b!3140413 (not res!1282813)) b!3140414))

(assert (= (and b!3140414 res!1282812) b!3140419))

(assert (= (or b!3140418 b!3140414) bm!225465))

(assert (= (or b!3140416 b!3140419) bm!225466))

(assert (= (or b!3140421 bm!225466) bm!225464))

(declare-fun m!3417787 () Bool)

(assert (=> bm!225464 m!3417787))

(declare-fun m!3417789 () Bool)

(assert (=> bm!225465 m!3417789))

(declare-fun m!3417791 () Bool)

(assert (=> b!3140420 m!3417791))

(assert (=> bm!225398 d!865666))

(declare-fun b!3140422 () Bool)

(declare-fun c!527816 () Bool)

(declare-fun call!225478 () Bool)

(assert (=> b!3140422 (= c!527816 call!225478)))

(declare-fun e!1958985 () Regex!9665)

(declare-fun e!1958983 () Regex!9665)

(assert (=> b!3140422 (= e!1958985 e!1958983)))

(declare-fun b!3140423 () Bool)

(declare-fun e!1958987 () Regex!9665)

(assert (=> b!3140423 (= e!1958987 e!1958985)))

(declare-fun lt!1061148 () Regex!9665)

(declare-fun call!225475 () Regex!9665)

(assert (=> b!3140423 (= lt!1061148 call!225475)))

(declare-fun lt!1061147 () Regex!9665)

(declare-fun call!225476 () Regex!9665)

(assert (=> b!3140423 (= lt!1061147 call!225476)))

(declare-fun res!1282819 () Bool)

(declare-fun call!225473 () Bool)

(assert (=> b!3140423 (= res!1282819 call!225473)))

(declare-fun e!1958982 () Bool)

(assert (=> b!3140423 (=> res!1282819 e!1958982)))

(declare-fun c!527824 () Bool)

(assert (=> b!3140423 (= c!527824 e!1958982)))

(declare-fun b!3140424 () Bool)

(declare-fun e!1958974 () Regex!9665)

(declare-fun e!1958977 () Regex!9665)

(assert (=> b!3140424 (= e!1958974 e!1958977)))

(declare-fun c!527820 () Bool)

(assert (=> b!3140424 (= c!527820 ((_ is ElementMatch!9665) (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))

(declare-fun b!3140425 () Bool)

(declare-fun e!1958986 () Regex!9665)

(assert (=> b!3140425 (= e!1958986 (Concat!14986 lt!1061148 lt!1061147))))

(declare-fun b!3140426 () Bool)

(assert (=> b!3140426 (= e!1958986 lt!1061148)))

(declare-fun c!527818 () Bool)

(declare-fun lt!1061149 () Regex!9665)

(declare-fun bm!225467 () Bool)

(assert (=> bm!225467 (= call!225478 (isEmptyExpr!696 (ite c!527818 lt!1061149 lt!1061148)))))

(declare-fun lt!1061146 () Regex!9665)

(declare-fun bm!225468 () Bool)

(declare-fun c!527826 () Bool)

(declare-fun call!225477 () Bool)

(assert (=> bm!225468 (= call!225477 (isEmptyLang!702 (ite c!527818 lt!1061149 (ite c!527826 lt!1061146 lt!1061147))))))

(declare-fun lt!1061145 () Regex!9665)

(declare-fun bm!225469 () Bool)

(assert (=> bm!225469 (= call!225473 (isEmptyLang!702 (ite c!527826 lt!1061145 lt!1061148)))))

(declare-fun b!3140427 () Bool)

(declare-fun e!1958984 () Regex!9665)

(assert (=> b!3140427 (= e!1958984 EmptyExpr!9665)))

(declare-fun b!3140428 () Bool)

(assert (=> b!3140428 (= e!1958985 EmptyLang!9665)))

(declare-fun b!3140429 () Bool)

(declare-fun e!1958980 () Regex!9665)

(assert (=> b!3140429 (= e!1958980 EmptyExpr!9665)))

(declare-fun b!3140430 () Bool)

(declare-fun e!1958979 () Regex!9665)

(assert (=> b!3140430 (= e!1958979 (Union!9665 lt!1061146 lt!1061145))))

(declare-fun bm!225470 () Bool)

(declare-fun call!225474 () Regex!9665)

(assert (=> bm!225470 (= call!225476 call!225474)))

(declare-fun b!3140431 () Bool)

(declare-fun call!225472 () Bool)

(assert (=> b!3140431 (= e!1958982 call!225472)))

(declare-fun b!3140432 () Bool)

(assert (=> b!3140432 (= c!527826 ((_ is Union!9665) (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))

(declare-fun e!1958981 () Regex!9665)

(assert (=> b!3140432 (= e!1958981 e!1958987)))

(declare-fun b!3140433 () Bool)

(assert (=> b!3140433 (= e!1958984 (Star!9665 lt!1061149))))

(declare-fun b!3140434 () Bool)

(assert (=> b!3140434 (= e!1958977 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345)))))))

(declare-fun b!3140435 () Bool)

(assert (=> b!3140435 (= e!1958980 e!1958981)))

(assert (=> b!3140435 (= c!527818 ((_ is Star!9665) (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))

(declare-fun b!3140436 () Bool)

(assert (=> b!3140436 (= e!1958983 e!1958986)))

(declare-fun c!527821 () Bool)

(assert (=> b!3140436 (= c!527821 (isEmptyExpr!696 lt!1061147))))

(declare-fun b!3140437 () Bool)

(declare-fun c!527819 () Bool)

(declare-fun e!1958978 () Bool)

(assert (=> b!3140437 (= c!527819 e!1958978)))

(declare-fun res!1282818 () Bool)

(assert (=> b!3140437 (=> res!1282818 e!1958978)))

(assert (=> b!3140437 (= res!1282818 call!225477)))

(assert (=> b!3140437 (= lt!1061149 call!225474)))

(assert (=> b!3140437 (= e!1958981 e!1958984)))

(declare-fun bm!225471 () Bool)

(assert (=> bm!225471 (= call!225475 (simplify!606 (ite c!527826 (regOne!19843 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))) (regOne!19842 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))))

(declare-fun c!527825 () Bool)

(declare-fun b!3140438 () Bool)

(assert (=> b!3140438 (= c!527825 ((_ is EmptyExpr!9665) (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))

(assert (=> b!3140438 (= e!1958977 e!1958980)))

(declare-fun b!3140439 () Bool)

(declare-fun e!1958976 () Regex!9665)

(assert (=> b!3140439 (= e!1958976 lt!1061145)))

(declare-fun b!3140440 () Bool)

(assert (=> b!3140440 (= e!1958978 call!225478)))

(declare-fun bm!225472 () Bool)

(assert (=> bm!225472 (= call!225474 (simplify!606 (ite c!527818 (reg!9994 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))) (ite c!527826 (regTwo!19843 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))) (regTwo!19842 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345)))))))))))

(declare-fun d!865668 () Bool)

(declare-fun e!1958975 () Bool)

(assert (=> d!865668 e!1958975))

(declare-fun res!1282817 () Bool)

(assert (=> d!865668 (=> (not res!1282817) (not e!1958975))))

(declare-fun lt!1061150 () Regex!9665)

(assert (=> d!865668 (= res!1282817 (validRegex!4398 lt!1061150))))

(assert (=> d!865668 (= lt!1061150 e!1958974)))

(declare-fun c!527823 () Bool)

(assert (=> d!865668 (= c!527823 ((_ is EmptyLang!9665) (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))))))

(assert (=> d!865668 (validRegex!4398 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345)))))))

(assert (=> d!865668 (= (simplify!606 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345))))) lt!1061150)))

(declare-fun bm!225473 () Bool)

(assert (=> bm!225473 (= call!225472 call!225477)))

(declare-fun b!3140441 () Bool)

(assert (=> b!3140441 (= e!1958975 (= (nullable!3299 lt!1061150) (nullable!3299 (ite c!527785 (reg!9994 (reg!9994 r!17345)) (ite c!527793 (regTwo!19843 (reg!9994 r!17345)) (regTwo!19842 (reg!9994 r!17345)))))))))

(declare-fun b!3140442 () Bool)

(declare-fun c!527817 () Bool)

(assert (=> b!3140442 (= c!527817 call!225473)))

(assert (=> b!3140442 (= e!1958976 e!1958979)))

(declare-fun b!3140443 () Bool)

(assert (=> b!3140443 (= e!1958983 lt!1061147)))

(declare-fun b!3140444 () Bool)

(assert (=> b!3140444 (= e!1958987 e!1958976)))

(assert (=> b!3140444 (= lt!1061146 call!225475)))

(assert (=> b!3140444 (= lt!1061145 call!225476)))

(declare-fun c!527822 () Bool)

(assert (=> b!3140444 (= c!527822 call!225472)))

(declare-fun b!3140445 () Bool)

(assert (=> b!3140445 (= e!1958979 lt!1061146)))

(declare-fun b!3140446 () Bool)

(assert (=> b!3140446 (= e!1958974 EmptyLang!9665)))

(assert (= (and d!865668 c!527823) b!3140446))

(assert (= (and d!865668 (not c!527823)) b!3140424))

(assert (= (and b!3140424 c!527820) b!3140434))

(assert (= (and b!3140424 (not c!527820)) b!3140438))

(assert (= (and b!3140438 c!527825) b!3140429))

(assert (= (and b!3140438 (not c!527825)) b!3140435))

(assert (= (and b!3140435 c!527818) b!3140437))

(assert (= (and b!3140435 (not c!527818)) b!3140432))

(assert (= (and b!3140437 (not res!1282818)) b!3140440))

(assert (= (and b!3140437 c!527819) b!3140427))

(assert (= (and b!3140437 (not c!527819)) b!3140433))

(assert (= (and b!3140432 c!527826) b!3140444))

(assert (= (and b!3140432 (not c!527826)) b!3140423))

(assert (= (and b!3140444 c!527822) b!3140439))

(assert (= (and b!3140444 (not c!527822)) b!3140442))

(assert (= (and b!3140442 c!527817) b!3140445))

(assert (= (and b!3140442 (not c!527817)) b!3140430))

(assert (= (and b!3140423 (not res!1282819)) b!3140431))

(assert (= (and b!3140423 c!527824) b!3140428))

(assert (= (and b!3140423 (not c!527824)) b!3140422))

(assert (= (and b!3140422 c!527816) b!3140443))

(assert (= (and b!3140422 (not c!527816)) b!3140436))

(assert (= (and b!3140436 c!527821) b!3140426))

(assert (= (and b!3140436 (not c!527821)) b!3140425))

(assert (= (or b!3140442 b!3140423) bm!225469))

(assert (= (or b!3140444 b!3140431) bm!225473))

(assert (= (or b!3140444 b!3140423) bm!225471))

(assert (= (or b!3140444 b!3140423) bm!225470))

(assert (= (or b!3140440 b!3140422) bm!225467))

(assert (= (or b!3140437 bm!225473) bm!225468))

(assert (= (or b!3140437 bm!225470) bm!225472))

(assert (= (and d!865668 res!1282817) b!3140441))

(declare-fun m!3417793 () Bool)

(assert (=> bm!225467 m!3417793))

(declare-fun m!3417795 () Bool)

(assert (=> b!3140436 m!3417795))

(declare-fun m!3417797 () Bool)

(assert (=> d!865668 m!3417797))

(declare-fun m!3417799 () Bool)

(assert (=> d!865668 m!3417799))

(declare-fun m!3417801 () Bool)

(assert (=> bm!225472 m!3417801))

(declare-fun m!3417803 () Bool)

(assert (=> bm!225469 m!3417803))

(declare-fun m!3417805 () Bool)

(assert (=> bm!225468 m!3417805))

(declare-fun m!3417807 () Bool)

(assert (=> b!3140441 m!3417807))

(declare-fun m!3417809 () Bool)

(assert (=> b!3140441 m!3417809))

(declare-fun m!3417811 () Bool)

(assert (=> bm!225471 m!3417811))

(assert (=> bm!225440 d!865668))

(declare-fun b!3140448 () Bool)

(declare-fun e!1958988 () Bool)

(declare-fun tp!983497 () Bool)

(declare-fun tp!983500 () Bool)

(assert (=> b!3140448 (= e!1958988 (and tp!983497 tp!983500))))

(declare-fun b!3140450 () Bool)

(declare-fun tp!983499 () Bool)

(declare-fun tp!983498 () Bool)

(assert (=> b!3140450 (= e!1958988 (and tp!983499 tp!983498))))

(assert (=> b!3140337 (= tp!983492 e!1958988)))

(declare-fun b!3140447 () Bool)

(assert (=> b!3140447 (= e!1958988 tp_is_empty!16893)))

(declare-fun b!3140449 () Bool)

(declare-fun tp!983496 () Bool)

(assert (=> b!3140449 (= e!1958988 tp!983496)))

(assert (= (and b!3140337 ((_ is ElementMatch!9665) (regOne!19842 (regTwo!19843 r!17345)))) b!3140447))

(assert (= (and b!3140337 ((_ is Concat!14986) (regOne!19842 (regTwo!19843 r!17345)))) b!3140448))

(assert (= (and b!3140337 ((_ is Star!9665) (regOne!19842 (regTwo!19843 r!17345)))) b!3140449))

(assert (= (and b!3140337 ((_ is Union!9665) (regOne!19842 (regTwo!19843 r!17345)))) b!3140450))

(declare-fun b!3140452 () Bool)

(declare-fun e!1958989 () Bool)

(declare-fun tp!983502 () Bool)

(declare-fun tp!983505 () Bool)

(assert (=> b!3140452 (= e!1958989 (and tp!983502 tp!983505))))

(declare-fun b!3140454 () Bool)

(declare-fun tp!983504 () Bool)

(declare-fun tp!983503 () Bool)

(assert (=> b!3140454 (= e!1958989 (and tp!983504 tp!983503))))

(assert (=> b!3140337 (= tp!983495 e!1958989)))

(declare-fun b!3140451 () Bool)

(assert (=> b!3140451 (= e!1958989 tp_is_empty!16893)))

(declare-fun b!3140453 () Bool)

(declare-fun tp!983501 () Bool)

(assert (=> b!3140453 (= e!1958989 tp!983501)))

(assert (= (and b!3140337 ((_ is ElementMatch!9665) (regTwo!19842 (regTwo!19843 r!17345)))) b!3140451))

(assert (= (and b!3140337 ((_ is Concat!14986) (regTwo!19842 (regTwo!19843 r!17345)))) b!3140452))

(assert (= (and b!3140337 ((_ is Star!9665) (regTwo!19842 (regTwo!19843 r!17345)))) b!3140453))

(assert (= (and b!3140337 ((_ is Union!9665) (regTwo!19842 (regTwo!19843 r!17345)))) b!3140454))

(declare-fun b!3140456 () Bool)

(declare-fun e!1958990 () Bool)

(declare-fun tp!983507 () Bool)

(declare-fun tp!983510 () Bool)

(assert (=> b!3140456 (= e!1958990 (and tp!983507 tp!983510))))

(declare-fun b!3140458 () Bool)

(declare-fun tp!983509 () Bool)

(declare-fun tp!983508 () Bool)

(assert (=> b!3140458 (= e!1958990 (and tp!983509 tp!983508))))

(assert (=> b!3140333 (= tp!983487 e!1958990)))

(declare-fun b!3140455 () Bool)

(assert (=> b!3140455 (= e!1958990 tp_is_empty!16893)))

(declare-fun b!3140457 () Bool)

(declare-fun tp!983506 () Bool)

(assert (=> b!3140457 (= e!1958990 tp!983506)))

(assert (= (and b!3140333 ((_ is ElementMatch!9665) (regOne!19842 (regOne!19843 r!17345)))) b!3140455))

(assert (= (and b!3140333 ((_ is Concat!14986) (regOne!19842 (regOne!19843 r!17345)))) b!3140456))

(assert (= (and b!3140333 ((_ is Star!9665) (regOne!19842 (regOne!19843 r!17345)))) b!3140457))

(assert (= (and b!3140333 ((_ is Union!9665) (regOne!19842 (regOne!19843 r!17345)))) b!3140458))

(declare-fun b!3140460 () Bool)

(declare-fun e!1958991 () Bool)

(declare-fun tp!983512 () Bool)

(declare-fun tp!983515 () Bool)

(assert (=> b!3140460 (= e!1958991 (and tp!983512 tp!983515))))

(declare-fun b!3140462 () Bool)

(declare-fun tp!983514 () Bool)

(declare-fun tp!983513 () Bool)

(assert (=> b!3140462 (= e!1958991 (and tp!983514 tp!983513))))

(assert (=> b!3140333 (= tp!983490 e!1958991)))

(declare-fun b!3140459 () Bool)

(assert (=> b!3140459 (= e!1958991 tp_is_empty!16893)))

(declare-fun b!3140461 () Bool)

(declare-fun tp!983511 () Bool)

(assert (=> b!3140461 (= e!1958991 tp!983511)))

(assert (= (and b!3140333 ((_ is ElementMatch!9665) (regTwo!19842 (regOne!19843 r!17345)))) b!3140459))

(assert (= (and b!3140333 ((_ is Concat!14986) (regTwo!19842 (regOne!19843 r!17345)))) b!3140460))

(assert (= (and b!3140333 ((_ is Star!9665) (regTwo!19842 (regOne!19843 r!17345)))) b!3140461))

(assert (= (and b!3140333 ((_ is Union!9665) (regTwo!19842 (regOne!19843 r!17345)))) b!3140462))

(declare-fun b!3140464 () Bool)

(declare-fun e!1958992 () Bool)

(declare-fun tp!983517 () Bool)

(declare-fun tp!983520 () Bool)

(assert (=> b!3140464 (= e!1958992 (and tp!983517 tp!983520))))

(declare-fun b!3140466 () Bool)

(declare-fun tp!983519 () Bool)

(declare-fun tp!983518 () Bool)

(assert (=> b!3140466 (= e!1958992 (and tp!983519 tp!983518))))

(assert (=> b!3140338 (= tp!983491 e!1958992)))

(declare-fun b!3140463 () Bool)

(assert (=> b!3140463 (= e!1958992 tp_is_empty!16893)))

(declare-fun b!3140465 () Bool)

(declare-fun tp!983516 () Bool)

(assert (=> b!3140465 (= e!1958992 tp!983516)))

(assert (= (and b!3140338 ((_ is ElementMatch!9665) (reg!9994 (regTwo!19843 r!17345)))) b!3140463))

(assert (= (and b!3140338 ((_ is Concat!14986) (reg!9994 (regTwo!19843 r!17345)))) b!3140464))

(assert (= (and b!3140338 ((_ is Star!9665) (reg!9994 (regTwo!19843 r!17345)))) b!3140465))

(assert (= (and b!3140338 ((_ is Union!9665) (reg!9994 (regTwo!19843 r!17345)))) b!3140466))

(declare-fun b!3140468 () Bool)

(declare-fun e!1958993 () Bool)

(declare-fun tp!983522 () Bool)

(declare-fun tp!983525 () Bool)

(assert (=> b!3140468 (= e!1958993 (and tp!983522 tp!983525))))

(declare-fun b!3140470 () Bool)

(declare-fun tp!983524 () Bool)

(declare-fun tp!983523 () Bool)

(assert (=> b!3140470 (= e!1958993 (and tp!983524 tp!983523))))

(assert (=> b!3140329 (= tp!983482 e!1958993)))

(declare-fun b!3140467 () Bool)

(assert (=> b!3140467 (= e!1958993 tp_is_empty!16893)))

(declare-fun b!3140469 () Bool)

(declare-fun tp!983521 () Bool)

(assert (=> b!3140469 (= e!1958993 tp!983521)))

(assert (= (and b!3140329 ((_ is ElementMatch!9665) (regOne!19842 (reg!9994 r!17345)))) b!3140467))

(assert (= (and b!3140329 ((_ is Concat!14986) (regOne!19842 (reg!9994 r!17345)))) b!3140468))

(assert (= (and b!3140329 ((_ is Star!9665) (regOne!19842 (reg!9994 r!17345)))) b!3140469))

(assert (= (and b!3140329 ((_ is Union!9665) (regOne!19842 (reg!9994 r!17345)))) b!3140470))

(declare-fun b!3140472 () Bool)

(declare-fun e!1958994 () Bool)

(declare-fun tp!983527 () Bool)

(declare-fun tp!983530 () Bool)

(assert (=> b!3140472 (= e!1958994 (and tp!983527 tp!983530))))

(declare-fun b!3140474 () Bool)

(declare-fun tp!983529 () Bool)

(declare-fun tp!983528 () Bool)

(assert (=> b!3140474 (= e!1958994 (and tp!983529 tp!983528))))

(assert (=> b!3140329 (= tp!983485 e!1958994)))

(declare-fun b!3140471 () Bool)

(assert (=> b!3140471 (= e!1958994 tp_is_empty!16893)))

(declare-fun b!3140473 () Bool)

(declare-fun tp!983526 () Bool)

(assert (=> b!3140473 (= e!1958994 tp!983526)))

(assert (= (and b!3140329 ((_ is ElementMatch!9665) (regTwo!19842 (reg!9994 r!17345)))) b!3140471))

(assert (= (and b!3140329 ((_ is Concat!14986) (regTwo!19842 (reg!9994 r!17345)))) b!3140472))

(assert (= (and b!3140329 ((_ is Star!9665) (regTwo!19842 (reg!9994 r!17345)))) b!3140473))

(assert (= (and b!3140329 ((_ is Union!9665) (regTwo!19842 (reg!9994 r!17345)))) b!3140474))

(declare-fun b!3140476 () Bool)

(declare-fun e!1958995 () Bool)

(declare-fun tp!983532 () Bool)

(declare-fun tp!983535 () Bool)

(assert (=> b!3140476 (= e!1958995 (and tp!983532 tp!983535))))

(declare-fun b!3140478 () Bool)

(declare-fun tp!983534 () Bool)

(declare-fun tp!983533 () Bool)

(assert (=> b!3140478 (= e!1958995 (and tp!983534 tp!983533))))

(assert (=> b!3140334 (= tp!983486 e!1958995)))

(declare-fun b!3140475 () Bool)

(assert (=> b!3140475 (= e!1958995 tp_is_empty!16893)))

(declare-fun b!3140477 () Bool)

(declare-fun tp!983531 () Bool)

(assert (=> b!3140477 (= e!1958995 tp!983531)))

(assert (= (and b!3140334 ((_ is ElementMatch!9665) (reg!9994 (regOne!19843 r!17345)))) b!3140475))

(assert (= (and b!3140334 ((_ is Concat!14986) (reg!9994 (regOne!19843 r!17345)))) b!3140476))

(assert (= (and b!3140334 ((_ is Star!9665) (reg!9994 (regOne!19843 r!17345)))) b!3140477))

(assert (= (and b!3140334 ((_ is Union!9665) (reg!9994 (regOne!19843 r!17345)))) b!3140478))

(declare-fun b!3140480 () Bool)

(declare-fun e!1958996 () Bool)

(declare-fun tp!983537 () Bool)

(declare-fun tp!983540 () Bool)

(assert (=> b!3140480 (= e!1958996 (and tp!983537 tp!983540))))

(declare-fun b!3140482 () Bool)

(declare-fun tp!983539 () Bool)

(declare-fun tp!983538 () Bool)

(assert (=> b!3140482 (= e!1958996 (and tp!983539 tp!983538))))

(assert (=> b!3140325 (= tp!983477 e!1958996)))

(declare-fun b!3140479 () Bool)

(assert (=> b!3140479 (= e!1958996 tp_is_empty!16893)))

(declare-fun b!3140481 () Bool)

(declare-fun tp!983536 () Bool)

(assert (=> b!3140481 (= e!1958996 tp!983536)))

(assert (= (and b!3140325 ((_ is ElementMatch!9665) (regOne!19842 (regTwo!19842 r!17345)))) b!3140479))

(assert (= (and b!3140325 ((_ is Concat!14986) (regOne!19842 (regTwo!19842 r!17345)))) b!3140480))

(assert (= (and b!3140325 ((_ is Star!9665) (regOne!19842 (regTwo!19842 r!17345)))) b!3140481))

(assert (= (and b!3140325 ((_ is Union!9665) (regOne!19842 (regTwo!19842 r!17345)))) b!3140482))

(declare-fun b!3140484 () Bool)

(declare-fun e!1958997 () Bool)

(declare-fun tp!983542 () Bool)

(declare-fun tp!983545 () Bool)

(assert (=> b!3140484 (= e!1958997 (and tp!983542 tp!983545))))

(declare-fun b!3140486 () Bool)

(declare-fun tp!983544 () Bool)

(declare-fun tp!983543 () Bool)

(assert (=> b!3140486 (= e!1958997 (and tp!983544 tp!983543))))

(assert (=> b!3140325 (= tp!983480 e!1958997)))

(declare-fun b!3140483 () Bool)

(assert (=> b!3140483 (= e!1958997 tp_is_empty!16893)))

(declare-fun b!3140485 () Bool)

(declare-fun tp!983541 () Bool)

(assert (=> b!3140485 (= e!1958997 tp!983541)))

(assert (= (and b!3140325 ((_ is ElementMatch!9665) (regTwo!19842 (regTwo!19842 r!17345)))) b!3140483))

(assert (= (and b!3140325 ((_ is Concat!14986) (regTwo!19842 (regTwo!19842 r!17345)))) b!3140484))

(assert (= (and b!3140325 ((_ is Star!9665) (regTwo!19842 (regTwo!19842 r!17345)))) b!3140485))

(assert (= (and b!3140325 ((_ is Union!9665) (regTwo!19842 (regTwo!19842 r!17345)))) b!3140486))

(declare-fun b!3140488 () Bool)

(declare-fun e!1958998 () Bool)

(declare-fun tp!983547 () Bool)

(declare-fun tp!983550 () Bool)

(assert (=> b!3140488 (= e!1958998 (and tp!983547 tp!983550))))

(declare-fun b!3140490 () Bool)

(declare-fun tp!983549 () Bool)

(declare-fun tp!983548 () Bool)

(assert (=> b!3140490 (= e!1958998 (and tp!983549 tp!983548))))

(assert (=> b!3140339 (= tp!983494 e!1958998)))

(declare-fun b!3140487 () Bool)

(assert (=> b!3140487 (= e!1958998 tp_is_empty!16893)))

(declare-fun b!3140489 () Bool)

(declare-fun tp!983546 () Bool)

(assert (=> b!3140489 (= e!1958998 tp!983546)))

(assert (= (and b!3140339 ((_ is ElementMatch!9665) (regOne!19843 (regTwo!19843 r!17345)))) b!3140487))

(assert (= (and b!3140339 ((_ is Concat!14986) (regOne!19843 (regTwo!19843 r!17345)))) b!3140488))

(assert (= (and b!3140339 ((_ is Star!9665) (regOne!19843 (regTwo!19843 r!17345)))) b!3140489))

(assert (= (and b!3140339 ((_ is Union!9665) (regOne!19843 (regTwo!19843 r!17345)))) b!3140490))

(declare-fun b!3140492 () Bool)

(declare-fun e!1958999 () Bool)

(declare-fun tp!983552 () Bool)

(declare-fun tp!983555 () Bool)

(assert (=> b!3140492 (= e!1958999 (and tp!983552 tp!983555))))

(declare-fun b!3140494 () Bool)

(declare-fun tp!983554 () Bool)

(declare-fun tp!983553 () Bool)

(assert (=> b!3140494 (= e!1958999 (and tp!983554 tp!983553))))

(assert (=> b!3140339 (= tp!983493 e!1958999)))

(declare-fun b!3140491 () Bool)

(assert (=> b!3140491 (= e!1958999 tp_is_empty!16893)))

(declare-fun b!3140493 () Bool)

(declare-fun tp!983551 () Bool)

(assert (=> b!3140493 (= e!1958999 tp!983551)))

(assert (= (and b!3140339 ((_ is ElementMatch!9665) (regTwo!19843 (regTwo!19843 r!17345)))) b!3140491))

(assert (= (and b!3140339 ((_ is Concat!14986) (regTwo!19843 (regTwo!19843 r!17345)))) b!3140492))

(assert (= (and b!3140339 ((_ is Star!9665) (regTwo!19843 (regTwo!19843 r!17345)))) b!3140493))

(assert (= (and b!3140339 ((_ is Union!9665) (regTwo!19843 (regTwo!19843 r!17345)))) b!3140494))

(declare-fun b!3140496 () Bool)

(declare-fun e!1959000 () Bool)

(declare-fun tp!983557 () Bool)

(declare-fun tp!983560 () Bool)

(assert (=> b!3140496 (= e!1959000 (and tp!983557 tp!983560))))

(declare-fun b!3140498 () Bool)

(declare-fun tp!983559 () Bool)

(declare-fun tp!983558 () Bool)

(assert (=> b!3140498 (= e!1959000 (and tp!983559 tp!983558))))

(assert (=> b!3140330 (= tp!983481 e!1959000)))

(declare-fun b!3140495 () Bool)

(assert (=> b!3140495 (= e!1959000 tp_is_empty!16893)))

(declare-fun b!3140497 () Bool)

(declare-fun tp!983556 () Bool)

(assert (=> b!3140497 (= e!1959000 tp!983556)))

(assert (= (and b!3140330 ((_ is ElementMatch!9665) (reg!9994 (reg!9994 r!17345)))) b!3140495))

(assert (= (and b!3140330 ((_ is Concat!14986) (reg!9994 (reg!9994 r!17345)))) b!3140496))

(assert (= (and b!3140330 ((_ is Star!9665) (reg!9994 (reg!9994 r!17345)))) b!3140497))

(assert (= (and b!3140330 ((_ is Union!9665) (reg!9994 (reg!9994 r!17345)))) b!3140498))

(declare-fun b!3140500 () Bool)

(declare-fun e!1959001 () Bool)

(declare-fun tp!983562 () Bool)

(declare-fun tp!983565 () Bool)

(assert (=> b!3140500 (= e!1959001 (and tp!983562 tp!983565))))

(declare-fun b!3140502 () Bool)

(declare-fun tp!983564 () Bool)

(declare-fun tp!983563 () Bool)

(assert (=> b!3140502 (= e!1959001 (and tp!983564 tp!983563))))

(assert (=> b!3140321 (= tp!983472 e!1959001)))

(declare-fun b!3140499 () Bool)

(assert (=> b!3140499 (= e!1959001 tp_is_empty!16893)))

(declare-fun b!3140501 () Bool)

(declare-fun tp!983561 () Bool)

(assert (=> b!3140501 (= e!1959001 tp!983561)))

(assert (= (and b!3140321 ((_ is ElementMatch!9665) (regOne!19842 (regOne!19842 r!17345)))) b!3140499))

(assert (= (and b!3140321 ((_ is Concat!14986) (regOne!19842 (regOne!19842 r!17345)))) b!3140500))

(assert (= (and b!3140321 ((_ is Star!9665) (regOne!19842 (regOne!19842 r!17345)))) b!3140501))

(assert (= (and b!3140321 ((_ is Union!9665) (regOne!19842 (regOne!19842 r!17345)))) b!3140502))

(declare-fun b!3140504 () Bool)

(declare-fun e!1959002 () Bool)

(declare-fun tp!983567 () Bool)

(declare-fun tp!983570 () Bool)

(assert (=> b!3140504 (= e!1959002 (and tp!983567 tp!983570))))

(declare-fun b!3140506 () Bool)

(declare-fun tp!983569 () Bool)

(declare-fun tp!983568 () Bool)

(assert (=> b!3140506 (= e!1959002 (and tp!983569 tp!983568))))

(assert (=> b!3140321 (= tp!983475 e!1959002)))

(declare-fun b!3140503 () Bool)

(assert (=> b!3140503 (= e!1959002 tp_is_empty!16893)))

(declare-fun b!3140505 () Bool)

(declare-fun tp!983566 () Bool)

(assert (=> b!3140505 (= e!1959002 tp!983566)))

(assert (= (and b!3140321 ((_ is ElementMatch!9665) (regTwo!19842 (regOne!19842 r!17345)))) b!3140503))

(assert (= (and b!3140321 ((_ is Concat!14986) (regTwo!19842 (regOne!19842 r!17345)))) b!3140504))

(assert (= (and b!3140321 ((_ is Star!9665) (regTwo!19842 (regOne!19842 r!17345)))) b!3140505))

(assert (= (and b!3140321 ((_ is Union!9665) (regTwo!19842 (regOne!19842 r!17345)))) b!3140506))

(declare-fun b!3140508 () Bool)

(declare-fun e!1959003 () Bool)

(declare-fun tp!983572 () Bool)

(declare-fun tp!983575 () Bool)

(assert (=> b!3140508 (= e!1959003 (and tp!983572 tp!983575))))

(declare-fun b!3140510 () Bool)

(declare-fun tp!983574 () Bool)

(declare-fun tp!983573 () Bool)

(assert (=> b!3140510 (= e!1959003 (and tp!983574 tp!983573))))

(assert (=> b!3140335 (= tp!983489 e!1959003)))

(declare-fun b!3140507 () Bool)

(assert (=> b!3140507 (= e!1959003 tp_is_empty!16893)))

(declare-fun b!3140509 () Bool)

(declare-fun tp!983571 () Bool)

(assert (=> b!3140509 (= e!1959003 tp!983571)))

(assert (= (and b!3140335 ((_ is ElementMatch!9665) (regOne!19843 (regOne!19843 r!17345)))) b!3140507))

(assert (= (and b!3140335 ((_ is Concat!14986) (regOne!19843 (regOne!19843 r!17345)))) b!3140508))

(assert (= (and b!3140335 ((_ is Star!9665) (regOne!19843 (regOne!19843 r!17345)))) b!3140509))

(assert (= (and b!3140335 ((_ is Union!9665) (regOne!19843 (regOne!19843 r!17345)))) b!3140510))

(declare-fun b!3140512 () Bool)

(declare-fun e!1959004 () Bool)

(declare-fun tp!983577 () Bool)

(declare-fun tp!983580 () Bool)

(assert (=> b!3140512 (= e!1959004 (and tp!983577 tp!983580))))

(declare-fun b!3140514 () Bool)

(declare-fun tp!983579 () Bool)

(declare-fun tp!983578 () Bool)

(assert (=> b!3140514 (= e!1959004 (and tp!983579 tp!983578))))

(assert (=> b!3140335 (= tp!983488 e!1959004)))

(declare-fun b!3140511 () Bool)

(assert (=> b!3140511 (= e!1959004 tp_is_empty!16893)))

(declare-fun b!3140513 () Bool)

(declare-fun tp!983576 () Bool)

(assert (=> b!3140513 (= e!1959004 tp!983576)))

(assert (= (and b!3140335 ((_ is ElementMatch!9665) (regTwo!19843 (regOne!19843 r!17345)))) b!3140511))

(assert (= (and b!3140335 ((_ is Concat!14986) (regTwo!19843 (regOne!19843 r!17345)))) b!3140512))

(assert (= (and b!3140335 ((_ is Star!9665) (regTwo!19843 (regOne!19843 r!17345)))) b!3140513))

(assert (= (and b!3140335 ((_ is Union!9665) (regTwo!19843 (regOne!19843 r!17345)))) b!3140514))

(declare-fun b!3140516 () Bool)

(declare-fun e!1959005 () Bool)

(declare-fun tp!983582 () Bool)

(declare-fun tp!983585 () Bool)

(assert (=> b!3140516 (= e!1959005 (and tp!983582 tp!983585))))

(declare-fun b!3140518 () Bool)

(declare-fun tp!983584 () Bool)

(declare-fun tp!983583 () Bool)

(assert (=> b!3140518 (= e!1959005 (and tp!983584 tp!983583))))

(assert (=> b!3140326 (= tp!983476 e!1959005)))

(declare-fun b!3140515 () Bool)

(assert (=> b!3140515 (= e!1959005 tp_is_empty!16893)))

(declare-fun b!3140517 () Bool)

(declare-fun tp!983581 () Bool)

(assert (=> b!3140517 (= e!1959005 tp!983581)))

(assert (= (and b!3140326 ((_ is ElementMatch!9665) (reg!9994 (regTwo!19842 r!17345)))) b!3140515))

(assert (= (and b!3140326 ((_ is Concat!14986) (reg!9994 (regTwo!19842 r!17345)))) b!3140516))

(assert (= (and b!3140326 ((_ is Star!9665) (reg!9994 (regTwo!19842 r!17345)))) b!3140517))

(assert (= (and b!3140326 ((_ is Union!9665) (reg!9994 (regTwo!19842 r!17345)))) b!3140518))

(declare-fun b!3140520 () Bool)

(declare-fun e!1959006 () Bool)

(declare-fun tp!983587 () Bool)

(declare-fun tp!983590 () Bool)

(assert (=> b!3140520 (= e!1959006 (and tp!983587 tp!983590))))

(declare-fun b!3140522 () Bool)

(declare-fun tp!983589 () Bool)

(declare-fun tp!983588 () Bool)

(assert (=> b!3140522 (= e!1959006 (and tp!983589 tp!983588))))

(assert (=> b!3140331 (= tp!983484 e!1959006)))

(declare-fun b!3140519 () Bool)

(assert (=> b!3140519 (= e!1959006 tp_is_empty!16893)))

(declare-fun b!3140521 () Bool)

(declare-fun tp!983586 () Bool)

(assert (=> b!3140521 (= e!1959006 tp!983586)))

(assert (= (and b!3140331 ((_ is ElementMatch!9665) (regOne!19843 (reg!9994 r!17345)))) b!3140519))

(assert (= (and b!3140331 ((_ is Concat!14986) (regOne!19843 (reg!9994 r!17345)))) b!3140520))

(assert (= (and b!3140331 ((_ is Star!9665) (regOne!19843 (reg!9994 r!17345)))) b!3140521))

(assert (= (and b!3140331 ((_ is Union!9665) (regOne!19843 (reg!9994 r!17345)))) b!3140522))

(declare-fun b!3140524 () Bool)

(declare-fun e!1959007 () Bool)

(declare-fun tp!983592 () Bool)

(declare-fun tp!983595 () Bool)

(assert (=> b!3140524 (= e!1959007 (and tp!983592 tp!983595))))

(declare-fun b!3140526 () Bool)

(declare-fun tp!983594 () Bool)

(declare-fun tp!983593 () Bool)

(assert (=> b!3140526 (= e!1959007 (and tp!983594 tp!983593))))

(assert (=> b!3140331 (= tp!983483 e!1959007)))

(declare-fun b!3140523 () Bool)

(assert (=> b!3140523 (= e!1959007 tp_is_empty!16893)))

(declare-fun b!3140525 () Bool)

(declare-fun tp!983591 () Bool)

(assert (=> b!3140525 (= e!1959007 tp!983591)))

(assert (= (and b!3140331 ((_ is ElementMatch!9665) (regTwo!19843 (reg!9994 r!17345)))) b!3140523))

(assert (= (and b!3140331 ((_ is Concat!14986) (regTwo!19843 (reg!9994 r!17345)))) b!3140524))

(assert (= (and b!3140331 ((_ is Star!9665) (regTwo!19843 (reg!9994 r!17345)))) b!3140525))

(assert (= (and b!3140331 ((_ is Union!9665) (regTwo!19843 (reg!9994 r!17345)))) b!3140526))

(declare-fun b!3140528 () Bool)

(declare-fun e!1959008 () Bool)

(declare-fun tp!983597 () Bool)

(declare-fun tp!983600 () Bool)

(assert (=> b!3140528 (= e!1959008 (and tp!983597 tp!983600))))

(declare-fun b!3140530 () Bool)

(declare-fun tp!983599 () Bool)

(declare-fun tp!983598 () Bool)

(assert (=> b!3140530 (= e!1959008 (and tp!983599 tp!983598))))

(assert (=> b!3140322 (= tp!983471 e!1959008)))

(declare-fun b!3140527 () Bool)

(assert (=> b!3140527 (= e!1959008 tp_is_empty!16893)))

(declare-fun b!3140529 () Bool)

(declare-fun tp!983596 () Bool)

(assert (=> b!3140529 (= e!1959008 tp!983596)))

(assert (= (and b!3140322 ((_ is ElementMatch!9665) (reg!9994 (regOne!19842 r!17345)))) b!3140527))

(assert (= (and b!3140322 ((_ is Concat!14986) (reg!9994 (regOne!19842 r!17345)))) b!3140528))

(assert (= (and b!3140322 ((_ is Star!9665) (reg!9994 (regOne!19842 r!17345)))) b!3140529))

(assert (= (and b!3140322 ((_ is Union!9665) (reg!9994 (regOne!19842 r!17345)))) b!3140530))

(declare-fun b!3140532 () Bool)

(declare-fun e!1959009 () Bool)

(declare-fun tp!983602 () Bool)

(declare-fun tp!983605 () Bool)

(assert (=> b!3140532 (= e!1959009 (and tp!983602 tp!983605))))

(declare-fun b!3140534 () Bool)

(declare-fun tp!983604 () Bool)

(declare-fun tp!983603 () Bool)

(assert (=> b!3140534 (= e!1959009 (and tp!983604 tp!983603))))

(assert (=> b!3140327 (= tp!983479 e!1959009)))

(declare-fun b!3140531 () Bool)

(assert (=> b!3140531 (= e!1959009 tp_is_empty!16893)))

(declare-fun b!3140533 () Bool)

(declare-fun tp!983601 () Bool)

(assert (=> b!3140533 (= e!1959009 tp!983601)))

(assert (= (and b!3140327 ((_ is ElementMatch!9665) (regOne!19843 (regTwo!19842 r!17345)))) b!3140531))

(assert (= (and b!3140327 ((_ is Concat!14986) (regOne!19843 (regTwo!19842 r!17345)))) b!3140532))

(assert (= (and b!3140327 ((_ is Star!9665) (regOne!19843 (regTwo!19842 r!17345)))) b!3140533))

(assert (= (and b!3140327 ((_ is Union!9665) (regOne!19843 (regTwo!19842 r!17345)))) b!3140534))

(declare-fun b!3140536 () Bool)

(declare-fun e!1959010 () Bool)

(declare-fun tp!983607 () Bool)

(declare-fun tp!983610 () Bool)

(assert (=> b!3140536 (= e!1959010 (and tp!983607 tp!983610))))

(declare-fun b!3140538 () Bool)

(declare-fun tp!983609 () Bool)

(declare-fun tp!983608 () Bool)

(assert (=> b!3140538 (= e!1959010 (and tp!983609 tp!983608))))

(assert (=> b!3140327 (= tp!983478 e!1959010)))

(declare-fun b!3140535 () Bool)

(assert (=> b!3140535 (= e!1959010 tp_is_empty!16893)))

(declare-fun b!3140537 () Bool)

(declare-fun tp!983606 () Bool)

(assert (=> b!3140537 (= e!1959010 tp!983606)))

(assert (= (and b!3140327 ((_ is ElementMatch!9665) (regTwo!19843 (regTwo!19842 r!17345)))) b!3140535))

(assert (= (and b!3140327 ((_ is Concat!14986) (regTwo!19843 (regTwo!19842 r!17345)))) b!3140536))

(assert (= (and b!3140327 ((_ is Star!9665) (regTwo!19843 (regTwo!19842 r!17345)))) b!3140537))

(assert (= (and b!3140327 ((_ is Union!9665) (regTwo!19843 (regTwo!19842 r!17345)))) b!3140538))

(declare-fun b!3140540 () Bool)

(declare-fun e!1959011 () Bool)

(declare-fun tp!983612 () Bool)

(declare-fun tp!983615 () Bool)

(assert (=> b!3140540 (= e!1959011 (and tp!983612 tp!983615))))

(declare-fun b!3140542 () Bool)

(declare-fun tp!983614 () Bool)

(declare-fun tp!983613 () Bool)

(assert (=> b!3140542 (= e!1959011 (and tp!983614 tp!983613))))

(assert (=> b!3140323 (= tp!983474 e!1959011)))

(declare-fun b!3140539 () Bool)

(assert (=> b!3140539 (= e!1959011 tp_is_empty!16893)))

(declare-fun b!3140541 () Bool)

(declare-fun tp!983611 () Bool)

(assert (=> b!3140541 (= e!1959011 tp!983611)))

(assert (= (and b!3140323 ((_ is ElementMatch!9665) (regOne!19843 (regOne!19842 r!17345)))) b!3140539))

(assert (= (and b!3140323 ((_ is Concat!14986) (regOne!19843 (regOne!19842 r!17345)))) b!3140540))

(assert (= (and b!3140323 ((_ is Star!9665) (regOne!19843 (regOne!19842 r!17345)))) b!3140541))

(assert (= (and b!3140323 ((_ is Union!9665) (regOne!19843 (regOne!19842 r!17345)))) b!3140542))

(declare-fun b!3140553 () Bool)

(declare-fun e!1959019 () Bool)

(declare-fun tp!983617 () Bool)

(declare-fun tp!983620 () Bool)

(assert (=> b!3140553 (= e!1959019 (and tp!983617 tp!983620))))

(declare-fun b!3140555 () Bool)

(declare-fun tp!983619 () Bool)

(declare-fun tp!983618 () Bool)

(assert (=> b!3140555 (= e!1959019 (and tp!983619 tp!983618))))

(assert (=> b!3140323 (= tp!983473 e!1959019)))

(declare-fun b!3140552 () Bool)

(assert (=> b!3140552 (= e!1959019 tp_is_empty!16893)))

(declare-fun b!3140554 () Bool)

(declare-fun tp!983616 () Bool)

(assert (=> b!3140554 (= e!1959019 tp!983616)))

(assert (= (and b!3140323 ((_ is ElementMatch!9665) (regTwo!19843 (regOne!19842 r!17345)))) b!3140552))

(assert (= (and b!3140323 ((_ is Concat!14986) (regTwo!19843 (regOne!19842 r!17345)))) b!3140553))

(assert (= (and b!3140323 ((_ is Star!9665) (regTwo!19843 (regOne!19842 r!17345)))) b!3140554))

(assert (= (and b!3140323 ((_ is Union!9665) (regTwo!19843 (regOne!19842 r!17345)))) b!3140555))

(check-sat (not b!3140478) (not bm!225448) (not b!3140537) (not bm!225458) (not b!3140486) (not bm!225462) (not b!3140520) (not bm!225467) (not b!3140454) (not b!3140553) (not b!3140480) (not b!3140474) (not b!3140524) (not bm!225450) (not b!3140470) (not b!3140393) (not b!3140500) (not b!3140411) (not b!3140458) (not b!3140494) (not b!3140514) (not bm!225456) (not bm!225461) (not b!3140540) (not bm!225468) (not b!3140456) (not b!3140449) (not b!3140473) (not b!3140508) (not b!3140496) (not b!3140501) (not d!865658) (not b!3140472) (not b!3140526) (not bm!225449) (not bm!225452) (not b!3140489) (not b!3140530) (not b!3140490) (not b!3140516) (not bm!225465) (not b!3140402) (not b!3140452) (not bm!225471) (not b!3140493) (not b!3140450) (not b!3140485) (not b!3140441) (not b!3140464) (not bm!225455) (not b!3140525) (not b!3140460) (not b!3140522) (not b!3140469) (not b!3140375) (not bm!225469) (not b!3140484) (not b!3140457) (not b!3140505) (not b!3140517) (not d!865646) (not b!3140534) (not b!3140380) (not b!3140462) (not bm!225447) (not b!3140461) (not b!3140504) (not b!3140436) (not bm!225472) (not b!3140420) (not b!3140482) (not b!3140509) (not b!3140521) (not b!3140538) (not b!3140512) (not b!3140453) (not b!3140533) (not b!3140477) (not b!3140510) (not bm!225464) (not b!3140532) (not b!3140448) (not b!3140502) (not bm!225446) (not b!3140506) (not d!865668) (not b!3140488) (not b!3140518) (not bm!225459) (not b!3140466) (not b!3140492) (not d!865644) (not b!3140497) (not b!3140555) (not b!3140542) (not b!3140481) (not b!3140513) tp_is_empty!16893 (not bm!225453) (not b!3140465) (not b!3140468) (not b!3140536) (not b!3140554) (not b!3140498) (not b!3140529) (not b!3140476) (not b!3140541) (not b!3140528))
(check-sat)
