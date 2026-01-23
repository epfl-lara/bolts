; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550410 () Bool)

(assert start!550410)

(declare-fun b!5203096 () Bool)

(assert (=> b!5203096 true))

(assert (=> b!5203096 true))

(declare-fun lambda!260738 () Int)

(declare-fun lambda!260737 () Int)

(assert (=> b!5203096 (not (= lambda!260738 lambda!260737))))

(assert (=> b!5203096 true))

(assert (=> b!5203096 true))

(declare-fun b!5203084 () Bool)

(assert (=> b!5203084 true))

(declare-fun b!5203082 () Bool)

(declare-fun res!2210437 () Bool)

(declare-fun e!3239786 () Bool)

(assert (=> b!5203082 (=> res!2210437 e!3239786)))

(declare-datatypes ((C!29844 0))(
  ( (C!29845 (val!24624 Int)) )
))
(declare-datatypes ((Regex!14787 0))(
  ( (ElementMatch!14787 (c!896830 C!29844)) (Concat!23632 (regOne!30086 Regex!14787) (regTwo!30086 Regex!14787)) (EmptyExpr!14787) (Star!14787 (reg!15116 Regex!14787)) (EmptyLang!14787) (Union!14787 (regOne!30087 Regex!14787) (regTwo!30087 Regex!14787)) )
))
(declare-datatypes ((List!60660 0))(
  ( (Nil!60536) (Cons!60536 (h!66984 Regex!14787) (t!373815 List!60660)) )
))
(declare-datatypes ((Context!8342 0))(
  ( (Context!8343 (exprs!4671 List!60660)) )
))
(declare-datatypes ((List!60661 0))(
  ( (Nil!60537) (Cons!60537 (h!66985 Context!8342) (t!373816 List!60661)) )
))
(declare-fun zl!343 () List!60661)

(declare-fun isEmpty!32445 (List!60660) Bool)

(assert (=> b!5203082 (= res!2210437 (isEmpty!32445 (t!373815 (exprs!4671 (h!66985 zl!343)))))))

(declare-fun b!5203083 () Bool)

(declare-fun res!2210444 () Bool)

(declare-fun e!3239781 () Bool)

(assert (=> b!5203083 (=> res!2210444 e!3239781)))

(declare-fun r!7292 () Regex!14787)

(get-info :version)

(assert (=> b!5203083 (= res!2210444 (or ((_ is EmptyExpr!14787) r!7292) ((_ is EmptyLang!14787) r!7292) ((_ is ElementMatch!14787) r!7292) ((_ is Union!14787) r!7292) (not ((_ is Concat!23632) r!7292))))))

(declare-fun e!3239775 () Bool)

(assert (=> b!5203084 (= e!3239786 e!3239775)))

(declare-fun res!2210440 () Bool)

(assert (=> b!5203084 (=> res!2210440 e!3239775)))

(declare-datatypes ((List!60662 0))(
  ( (Nil!60538) (Cons!60538 (h!66986 C!29844) (t!373817 List!60662)) )
))
(declare-fun s!2326 () List!60662)

(assert (=> b!5203084 (= res!2210440 (or (not ((_ is ElementMatch!14787) (regOne!30086 r!7292))) (not (= (c!896830 (regOne!30086 r!7292)) (h!66986 s!2326)))))))

(declare-datatypes ((Unit!152414 0))(
  ( (Unit!152415) )
))
(declare-fun lt!2141172 () Unit!152414)

(declare-fun e!3239776 () Unit!152414)

(assert (=> b!5203084 (= lt!2141172 e!3239776)))

(declare-fun c!896829 () Bool)

(declare-fun nullable!4956 (Regex!14787) Bool)

(assert (=> b!5203084 (= c!896829 (nullable!4956 (h!66984 (exprs!4671 (h!66985 zl!343)))))))

(declare-fun lambda!260739 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8342))

(declare-fun flatMap!514 ((InoxSet Context!8342) Int) (InoxSet Context!8342))

(declare-fun derivationStepZipperUp!159 (Context!8342 C!29844) (InoxSet Context!8342))

(assert (=> b!5203084 (= (flatMap!514 z!1189 lambda!260739) (derivationStepZipperUp!159 (h!66985 zl!343) (h!66986 s!2326)))))

(declare-fun lt!2141179 () Unit!152414)

(declare-fun lemmaFlatMapOnSingletonSet!46 ((InoxSet Context!8342) Context!8342 Int) Unit!152414)

(assert (=> b!5203084 (= lt!2141179 (lemmaFlatMapOnSingletonSet!46 z!1189 (h!66985 zl!343) lambda!260739))))

(declare-fun lt!2141170 () (InoxSet Context!8342))

(declare-fun lt!2141171 () Context!8342)

(assert (=> b!5203084 (= lt!2141170 (derivationStepZipperUp!159 lt!2141171 (h!66986 s!2326)))))

(declare-fun lt!2141167 () (InoxSet Context!8342))

(declare-fun derivationStepZipperDown!235 (Regex!14787 Context!8342 C!29844) (InoxSet Context!8342))

(assert (=> b!5203084 (= lt!2141167 (derivationStepZipperDown!235 (h!66984 (exprs!4671 (h!66985 zl!343))) lt!2141171 (h!66986 s!2326)))))

(assert (=> b!5203084 (= lt!2141171 (Context!8343 (t!373815 (exprs!4671 (h!66985 zl!343)))))))

(declare-fun lt!2141176 () (InoxSet Context!8342))

(assert (=> b!5203084 (= lt!2141176 (derivationStepZipperUp!159 (Context!8343 (Cons!60536 (h!66984 (exprs!4671 (h!66985 zl!343))) (t!373815 (exprs!4671 (h!66985 zl!343))))) (h!66986 s!2326)))))

(declare-fun b!5203085 () Bool)

(declare-fun res!2210445 () Bool)

(assert (=> b!5203085 (=> res!2210445 e!3239781)))

(assert (=> b!5203085 (= res!2210445 (not ((_ is Cons!60536) (exprs!4671 (h!66985 zl!343)))))))

(declare-fun b!5203086 () Bool)

(declare-fun e!3239780 () Bool)

(declare-fun e!3239777 () Bool)

(assert (=> b!5203086 (= e!3239780 e!3239777)))

(declare-fun res!2210452 () Bool)

(assert (=> b!5203086 (=> res!2210452 e!3239777)))

(declare-fun validRegex!6523 (Regex!14787) Bool)

(declare-fun generalisedConcat!456 (List!60660) Regex!14787)

(assert (=> b!5203086 (= res!2210452 (not (validRegex!6523 (generalisedConcat!456 (t!373815 (exprs!4671 (h!66985 zl!343)))))))))

(declare-fun lt!2141173 () List!60661)

(assert (=> b!5203086 (= lt!2141173 (Cons!60537 lt!2141171 Nil!60537))))

(declare-fun b!5203087 () Bool)

(declare-fun e!3239779 () Bool)

(declare-fun tp!1459397 () Bool)

(declare-fun tp!1459395 () Bool)

(assert (=> b!5203087 (= e!3239779 (and tp!1459397 tp!1459395))))

(declare-fun b!5203088 () Bool)

(declare-fun e!3239783 () Bool)

(assert (=> b!5203088 (= e!3239783 (not e!3239781))))

(declare-fun res!2210442 () Bool)

(assert (=> b!5203088 (=> res!2210442 e!3239781)))

(assert (=> b!5203088 (= res!2210442 (not ((_ is Cons!60537) zl!343)))))

(declare-fun lt!2141178 () Bool)

(declare-fun matchRSpec!1890 (Regex!14787 List!60662) Bool)

(assert (=> b!5203088 (= lt!2141178 (matchRSpec!1890 r!7292 s!2326))))

(declare-fun matchR!6972 (Regex!14787 List!60662) Bool)

(assert (=> b!5203088 (= lt!2141178 (matchR!6972 r!7292 s!2326))))

(declare-fun lt!2141177 () Unit!152414)

(declare-fun mainMatchTheorem!1890 (Regex!14787 List!60662) Unit!152414)

(assert (=> b!5203088 (= lt!2141177 (mainMatchTheorem!1890 r!7292 s!2326))))

(declare-fun b!5203090 () Bool)

(declare-fun Unit!152416 () Unit!152414)

(assert (=> b!5203090 (= e!3239776 Unit!152416)))

(declare-fun lt!2141168 () Unit!152414)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!24 ((InoxSet Context!8342) (InoxSet Context!8342) List!60662) Unit!152414)

(assert (=> b!5203090 (= lt!2141168 (lemmaZipperConcatMatchesSameAsBothZippers!24 lt!2141167 lt!2141170 (t!373817 s!2326)))))

(declare-fun res!2210448 () Bool)

(declare-fun matchZipper!1031 ((InoxSet Context!8342) List!60662) Bool)

(assert (=> b!5203090 (= res!2210448 (matchZipper!1031 lt!2141167 (t!373817 s!2326)))))

(declare-fun e!3239778 () Bool)

(assert (=> b!5203090 (=> res!2210448 e!3239778)))

(assert (=> b!5203090 (= (matchZipper!1031 ((_ map or) lt!2141167 lt!2141170) (t!373817 s!2326)) e!3239778)))

(declare-fun setElem!33012 () Context!8342)

(declare-fun tp!1459401 () Bool)

(declare-fun setNonEmpty!33012 () Bool)

(declare-fun e!3239787 () Bool)

(declare-fun setRes!33012 () Bool)

(declare-fun inv!80214 (Context!8342) Bool)

(assert (=> setNonEmpty!33012 (= setRes!33012 (and tp!1459401 (inv!80214 setElem!33012) e!3239787))))

(declare-fun setRest!33012 () (InoxSet Context!8342))

(assert (=> setNonEmpty!33012 (= z!1189 ((_ map or) (store ((as const (Array Context!8342 Bool)) false) setElem!33012 true) setRest!33012))))

(declare-fun setIsEmpty!33012 () Bool)

(assert (=> setIsEmpty!33012 setRes!33012))

(declare-fun b!5203091 () Bool)

(declare-fun tp_is_empty!38827 () Bool)

(assert (=> b!5203091 (= e!3239779 tp_is_empty!38827)))

(declare-fun b!5203092 () Bool)

(assert (=> b!5203092 (= e!3239778 (matchZipper!1031 lt!2141170 (t!373817 s!2326)))))

(declare-fun b!5203093 () Bool)

(declare-fun res!2210439 () Bool)

(assert (=> b!5203093 (=> res!2210439 e!3239781)))

(declare-fun isEmpty!32446 (List!60661) Bool)

(assert (=> b!5203093 (= res!2210439 (not (isEmpty!32446 (t!373816 zl!343))))))

(declare-fun b!5203094 () Bool)

(declare-fun res!2210449 () Bool)

(assert (=> b!5203094 (=> (not res!2210449) (not e!3239783))))

(declare-fun toList!8571 ((InoxSet Context!8342)) List!60661)

(assert (=> b!5203094 (= res!2210449 (= (toList!8571 z!1189) zl!343))))

(declare-fun b!5203095 () Bool)

(declare-fun tp!1459400 () Bool)

(assert (=> b!5203095 (= e!3239779 tp!1459400)))

(assert (=> b!5203096 (= e!3239781 e!3239786)))

(declare-fun res!2210450 () Bool)

(assert (=> b!5203096 (=> res!2210450 e!3239786)))

(declare-fun lt!2141181 () Bool)

(assert (=> b!5203096 (= res!2210450 (or (not (= lt!2141178 lt!2141181)) ((_ is Nil!60538) s!2326)))))

(declare-fun Exists!1968 (Int) Bool)

(assert (=> b!5203096 (= (Exists!1968 lambda!260737) (Exists!1968 lambda!260738))))

(declare-fun lt!2141169 () Unit!152414)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!622 (Regex!14787 Regex!14787 List!60662) Unit!152414)

(assert (=> b!5203096 (= lt!2141169 (lemmaExistCutMatchRandMatchRSpecEquivalent!622 (regOne!30086 r!7292) (regTwo!30086 r!7292) s!2326))))

(assert (=> b!5203096 (= lt!2141181 (Exists!1968 lambda!260737))))

(declare-datatypes ((tuple2!63972 0))(
  ( (tuple2!63973 (_1!35289 List!60662) (_2!35289 List!60662)) )
))
(declare-datatypes ((Option!14898 0))(
  ( (None!14897) (Some!14897 (v!50926 tuple2!63972)) )
))
(declare-fun isDefined!11601 (Option!14898) Bool)

(declare-fun findConcatSeparation!1312 (Regex!14787 Regex!14787 List!60662 List!60662 List!60662) Option!14898)

(assert (=> b!5203096 (= lt!2141181 (isDefined!11601 (findConcatSeparation!1312 (regOne!30086 r!7292) (regTwo!30086 r!7292) Nil!60538 s!2326 s!2326)))))

(declare-fun lt!2141180 () Unit!152414)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1076 (Regex!14787 Regex!14787 List!60662) Unit!152414)

(assert (=> b!5203096 (= lt!2141180 (lemmaFindConcatSeparationEquivalentToExists!1076 (regOne!30086 r!7292) (regTwo!30086 r!7292) s!2326))))

(declare-fun b!5203097 () Bool)

(assert (=> b!5203097 (= e!3239777 true)))

(declare-fun lt!2141174 () Regex!14787)

(declare-fun unfocusZipper!529 (List!60661) Regex!14787)

(assert (=> b!5203097 (= lt!2141174 (unfocusZipper!529 lt!2141173))))

(declare-fun b!5203098 () Bool)

(declare-fun e!3239784 () Bool)

(declare-fun tp!1459399 () Bool)

(assert (=> b!5203098 (= e!3239784 (and tp_is_empty!38827 tp!1459399))))

(declare-fun tp!1459396 () Bool)

(declare-fun b!5203099 () Bool)

(declare-fun e!3239785 () Bool)

(declare-fun e!3239782 () Bool)

(assert (=> b!5203099 (= e!3239782 (and (inv!80214 (h!66985 zl!343)) e!3239785 tp!1459396))))

(declare-fun b!5203100 () Bool)

(declare-fun res!2210438 () Bool)

(assert (=> b!5203100 (=> res!2210438 e!3239781)))

(assert (=> b!5203100 (= res!2210438 (not (= r!7292 (generalisedConcat!456 (exprs!4671 (h!66985 zl!343))))))))

(declare-fun b!5203101 () Bool)

(declare-fun tp!1459394 () Bool)

(assert (=> b!5203101 (= e!3239785 tp!1459394)))

(declare-fun res!2210446 () Bool)

(assert (=> start!550410 (=> (not res!2210446) (not e!3239783))))

(assert (=> start!550410 (= res!2210446 (validRegex!6523 r!7292))))

(assert (=> start!550410 e!3239783))

(assert (=> start!550410 e!3239779))

(declare-fun condSetEmpty!33012 () Bool)

(assert (=> start!550410 (= condSetEmpty!33012 (= z!1189 ((as const (Array Context!8342 Bool)) false)))))

(assert (=> start!550410 setRes!33012))

(assert (=> start!550410 e!3239782))

(assert (=> start!550410 e!3239784))

(declare-fun b!5203089 () Bool)

(declare-fun res!2210447 () Bool)

(assert (=> b!5203089 (=> (not res!2210447) (not e!3239783))))

(assert (=> b!5203089 (= res!2210447 (= r!7292 (unfocusZipper!529 zl!343)))))

(declare-fun b!5203102 () Bool)

(assert (=> b!5203102 (= e!3239775 e!3239780)))

(declare-fun res!2210451 () Bool)

(assert (=> b!5203102 (=> res!2210451 e!3239780)))

(declare-fun lt!2141175 () (InoxSet Context!8342))

(assert (=> b!5203102 (= res!2210451 (not (= lt!2141167 lt!2141175)))))

(assert (=> b!5203102 (= lt!2141175 (store ((as const (Array Context!8342 Bool)) false) lt!2141171 true))))

(declare-fun b!5203103 () Bool)

(declare-fun tp!1459393 () Bool)

(declare-fun tp!1459398 () Bool)

(assert (=> b!5203103 (= e!3239779 (and tp!1459393 tp!1459398))))

(declare-fun b!5203104 () Bool)

(declare-fun res!2210441 () Bool)

(assert (=> b!5203104 (=> res!2210441 e!3239777)))

(assert (=> b!5203104 (= res!2210441 (not (= (toList!8571 lt!2141175) lt!2141173)))))

(declare-fun b!5203105 () Bool)

(declare-fun res!2210443 () Bool)

(assert (=> b!5203105 (=> res!2210443 e!3239781)))

(declare-fun generalisedUnion!716 (List!60660) Regex!14787)

(declare-fun unfocusZipperList!229 (List!60661) List!60660)

(assert (=> b!5203105 (= res!2210443 (not (= r!7292 (generalisedUnion!716 (unfocusZipperList!229 zl!343)))))))

(declare-fun b!5203106 () Bool)

(declare-fun Unit!152417 () Unit!152414)

(assert (=> b!5203106 (= e!3239776 Unit!152417)))

(declare-fun b!5203107 () Bool)

(declare-fun tp!1459392 () Bool)

(assert (=> b!5203107 (= e!3239787 tp!1459392)))

(assert (= (and start!550410 res!2210446) b!5203094))

(assert (= (and b!5203094 res!2210449) b!5203089))

(assert (= (and b!5203089 res!2210447) b!5203088))

(assert (= (and b!5203088 (not res!2210442)) b!5203093))

(assert (= (and b!5203093 (not res!2210439)) b!5203100))

(assert (= (and b!5203100 (not res!2210438)) b!5203085))

(assert (= (and b!5203085 (not res!2210445)) b!5203105))

(assert (= (and b!5203105 (not res!2210443)) b!5203083))

(assert (= (and b!5203083 (not res!2210444)) b!5203096))

(assert (= (and b!5203096 (not res!2210450)) b!5203082))

(assert (= (and b!5203082 (not res!2210437)) b!5203084))

(assert (= (and b!5203084 c!896829) b!5203090))

(assert (= (and b!5203084 (not c!896829)) b!5203106))

(assert (= (and b!5203090 (not res!2210448)) b!5203092))

(assert (= (and b!5203084 (not res!2210440)) b!5203102))

(assert (= (and b!5203102 (not res!2210451)) b!5203086))

(assert (= (and b!5203086 (not res!2210452)) b!5203104))

(assert (= (and b!5203104 (not res!2210441)) b!5203097))

(assert (= (and start!550410 ((_ is ElementMatch!14787) r!7292)) b!5203091))

(assert (= (and start!550410 ((_ is Concat!23632) r!7292)) b!5203103))

(assert (= (and start!550410 ((_ is Star!14787) r!7292)) b!5203095))

(assert (= (and start!550410 ((_ is Union!14787) r!7292)) b!5203087))

(assert (= (and start!550410 condSetEmpty!33012) setIsEmpty!33012))

(assert (= (and start!550410 (not condSetEmpty!33012)) setNonEmpty!33012))

(assert (= setNonEmpty!33012 b!5203107))

(assert (= b!5203099 b!5203101))

(assert (= (and start!550410 ((_ is Cons!60537) zl!343)) b!5203099))

(assert (= (and start!550410 ((_ is Cons!60538) s!2326)) b!5203098))

(declare-fun m!6254976 () Bool)

(assert (=> b!5203093 m!6254976))

(declare-fun m!6254978 () Bool)

(assert (=> b!5203097 m!6254978))

(declare-fun m!6254980 () Bool)

(assert (=> b!5203094 m!6254980))

(declare-fun m!6254982 () Bool)

(assert (=> start!550410 m!6254982))

(declare-fun m!6254984 () Bool)

(assert (=> b!5203105 m!6254984))

(assert (=> b!5203105 m!6254984))

(declare-fun m!6254986 () Bool)

(assert (=> b!5203105 m!6254986))

(declare-fun m!6254988 () Bool)

(assert (=> b!5203104 m!6254988))

(declare-fun m!6254990 () Bool)

(assert (=> b!5203088 m!6254990))

(declare-fun m!6254992 () Bool)

(assert (=> b!5203088 m!6254992))

(declare-fun m!6254994 () Bool)

(assert (=> b!5203088 m!6254994))

(declare-fun m!6254996 () Bool)

(assert (=> b!5203084 m!6254996))

(declare-fun m!6254998 () Bool)

(assert (=> b!5203084 m!6254998))

(declare-fun m!6255000 () Bool)

(assert (=> b!5203084 m!6255000))

(declare-fun m!6255002 () Bool)

(assert (=> b!5203084 m!6255002))

(declare-fun m!6255004 () Bool)

(assert (=> b!5203084 m!6255004))

(declare-fun m!6255006 () Bool)

(assert (=> b!5203084 m!6255006))

(declare-fun m!6255008 () Bool)

(assert (=> b!5203084 m!6255008))

(declare-fun m!6255010 () Bool)

(assert (=> setNonEmpty!33012 m!6255010))

(declare-fun m!6255012 () Bool)

(assert (=> b!5203086 m!6255012))

(assert (=> b!5203086 m!6255012))

(declare-fun m!6255014 () Bool)

(assert (=> b!5203086 m!6255014))

(declare-fun m!6255016 () Bool)

(assert (=> b!5203100 m!6255016))

(declare-fun m!6255018 () Bool)

(assert (=> b!5203102 m!6255018))

(declare-fun m!6255020 () Bool)

(assert (=> b!5203092 m!6255020))

(declare-fun m!6255022 () Bool)

(assert (=> b!5203082 m!6255022))

(declare-fun m!6255024 () Bool)

(assert (=> b!5203090 m!6255024))

(declare-fun m!6255026 () Bool)

(assert (=> b!5203090 m!6255026))

(declare-fun m!6255028 () Bool)

(assert (=> b!5203090 m!6255028))

(declare-fun m!6255030 () Bool)

(assert (=> b!5203089 m!6255030))

(declare-fun m!6255032 () Bool)

(assert (=> b!5203096 m!6255032))

(declare-fun m!6255034 () Bool)

(assert (=> b!5203096 m!6255034))

(declare-fun m!6255036 () Bool)

(assert (=> b!5203096 m!6255036))

(declare-fun m!6255038 () Bool)

(assert (=> b!5203096 m!6255038))

(declare-fun m!6255040 () Bool)

(assert (=> b!5203096 m!6255040))

(assert (=> b!5203096 m!6255032))

(assert (=> b!5203096 m!6255034))

(declare-fun m!6255042 () Bool)

(assert (=> b!5203096 m!6255042))

(declare-fun m!6255044 () Bool)

(assert (=> b!5203099 m!6255044))

(check-sat (not b!5203087) (not b!5203097) (not b!5203096) (not b!5203105) (not b!5203088) (not b!5203092) (not b!5203095) (not b!5203090) (not start!550410) (not b!5203100) (not b!5203099) (not b!5203086) (not b!5203089) tp_is_empty!38827 (not b!5203104) (not b!5203098) (not b!5203101) (not b!5203094) (not b!5203107) (not setNonEmpty!33012) (not b!5203084) (not b!5203093) (not b!5203103) (not b!5203082))
(check-sat)
