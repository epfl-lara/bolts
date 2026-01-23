; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!651988 () Bool)

(assert start!651988)

(declare-fun b!6723956 () Bool)

(assert (=> b!6723956 true))

(assert (=> b!6723956 true))

(declare-fun lambda!377159 () Int)

(declare-fun lambda!377158 () Int)

(assert (=> b!6723956 (not (= lambda!377159 lambda!377158))))

(assert (=> b!6723956 true))

(assert (=> b!6723956 true))

(declare-fun lambda!377160 () Int)

(assert (=> b!6723956 (not (= lambda!377160 lambda!377158))))

(assert (=> b!6723956 (not (= lambda!377160 lambda!377159))))

(assert (=> b!6723956 true))

(assert (=> b!6723956 true))

(declare-fun b!6723968 () Bool)

(assert (=> b!6723968 true))

(declare-fun b!6723954 () Bool)

(declare-fun e!4062558 () Bool)

(declare-fun tp!1843652 () Bool)

(declare-fun tp!1843653 () Bool)

(assert (=> b!6723954 (= e!4062558 (and tp!1843652 tp!1843653))))

(declare-fun b!6723955 () Bool)

(declare-fun res!2751147 () Bool)

(declare-fun e!4062557 () Bool)

(assert (=> b!6723955 (=> res!2751147 e!4062557)))

(declare-datatypes ((C!33372 0))(
  ( (C!33373 (val!26388 Int)) )
))
(declare-datatypes ((Regex!16551 0))(
  ( (ElementMatch!16551 (c!1246605 C!33372)) (Concat!25396 (regOne!33614 Regex!16551) (regTwo!33614 Regex!16551)) (EmptyExpr!16551) (Star!16551 (reg!16880 Regex!16551)) (EmptyLang!16551) (Union!16551 (regOne!33615 Regex!16551) (regTwo!33615 Regex!16551)) )
))
(declare-fun r!7292 () Regex!16551)

(declare-datatypes ((List!65952 0))(
  ( (Nil!65828) (Cons!65828 (h!72276 Regex!16551) (t!379633 List!65952)) )
))
(declare-datatypes ((Context!11870 0))(
  ( (Context!11871 (exprs!6435 List!65952)) )
))
(declare-datatypes ((List!65953 0))(
  ( (Nil!65829) (Cons!65829 (h!72277 Context!11870) (t!379634 List!65953)) )
))
(declare-fun zl!343 () List!65953)

(declare-fun generalisedConcat!2148 (List!65952) Regex!16551)

(assert (=> b!6723955 (= res!2751147 (not (= r!7292 (generalisedConcat!2148 (exprs!6435 (h!72277 zl!343))))))))

(declare-fun e!4062564 () Bool)

(assert (=> b!6723956 (= e!4062557 e!4062564)))

(declare-fun res!2751155 () Bool)

(assert (=> b!6723956 (=> res!2751155 e!4062564)))

(declare-fun lt!2436981 () Bool)

(declare-fun e!4062562 () Bool)

(assert (=> b!6723956 (= res!2751155 (not (= lt!2436981 e!4062562)))))

(declare-fun res!2751149 () Bool)

(assert (=> b!6723956 (=> res!2751149 e!4062562)))

(declare-datatypes ((List!65954 0))(
  ( (Nil!65830) (Cons!65830 (h!72278 C!33372) (t!379635 List!65954)) )
))
(declare-fun s!2326 () List!65954)

(declare-fun isEmpty!38153 (List!65954) Bool)

(assert (=> b!6723956 (= res!2751149 (isEmpty!38153 s!2326))))

(declare-fun Exists!3619 (Int) Bool)

(assert (=> b!6723956 (= (Exists!3619 lambda!377158) (Exists!3619 lambda!377160))))

(declare-datatypes ((Unit!159793 0))(
  ( (Unit!159794) )
))
(declare-fun lt!2436980 () Unit!159793)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2146 (Regex!16551 Regex!16551 List!65954) Unit!159793)

(assert (=> b!6723956 (= lt!2436980 (lemmaExistCutMatchRandMatchRSpecEquivalent!2146 (reg!16880 r!7292) r!7292 s!2326))))

(assert (=> b!6723956 (= (Exists!3619 lambda!377158) (Exists!3619 lambda!377159))))

(declare-fun lt!2436985 () Unit!159793)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!710 (Regex!16551 List!65954) Unit!159793)

(assert (=> b!6723956 (= lt!2436985 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!710 (reg!16880 r!7292) s!2326))))

(declare-fun lt!2436979 () Bool)

(assert (=> b!6723956 (= lt!2436979 (Exists!3619 lambda!377158))))

(declare-datatypes ((tuple2!67052 0))(
  ( (tuple2!67053 (_1!36829 List!65954) (_2!36829 List!65954)) )
))
(declare-datatypes ((Option!16438 0))(
  ( (None!16437) (Some!16437 (v!52637 tuple2!67052)) )
))
(declare-fun isDefined!13141 (Option!16438) Bool)

(declare-fun findConcatSeparation!2852 (Regex!16551 Regex!16551 List!65954 List!65954 List!65954) Option!16438)

(assert (=> b!6723956 (= lt!2436979 (isDefined!13141 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326)))))

(declare-fun lt!2436982 () Unit!159793)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2616 (Regex!16551 Regex!16551 List!65954) Unit!159793)

(assert (=> b!6723956 (= lt!2436982 (lemmaFindConcatSeparationEquivalentToExists!2616 (reg!16880 r!7292) r!7292 s!2326))))

(declare-fun b!6723957 () Bool)

(declare-fun tp!1843654 () Bool)

(assert (=> b!6723957 (= e!4062558 tp!1843654)))

(declare-fun b!6723958 () Bool)

(declare-fun res!2751151 () Bool)

(assert (=> b!6723958 (=> res!2751151 e!4062557)))

(declare-fun isEmpty!38154 (List!65953) Bool)

(assert (=> b!6723958 (= res!2751151 (not (isEmpty!38154 (t!379634 zl!343))))))

(declare-fun b!6723959 () Bool)

(declare-fun e!4062566 () Bool)

(assert (=> b!6723959 (= e!4062564 e!4062566)))

(declare-fun res!2751159 () Bool)

(assert (=> b!6723959 (=> res!2751159 e!4062566)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2436988 () (InoxSet Context!11870))

(declare-fun lt!2436983 () (InoxSet Context!11870))

(assert (=> b!6723959 (= res!2751159 (not (= lt!2436988 lt!2436983)))))

(declare-fun derivationStepZipperDown!1779 (Regex!16551 Context!11870 C!33372) (InoxSet Context!11870))

(assert (=> b!6723959 (= lt!2436983 (derivationStepZipperDown!1779 r!7292 (Context!11871 Nil!65828) (h!72278 s!2326)))))

(declare-fun derivationStepZipperUp!1705 (Context!11870 C!33372) (InoxSet Context!11870))

(assert (=> b!6723959 (= lt!2436988 (derivationStepZipperUp!1705 (Context!11871 (Cons!65828 r!7292 Nil!65828)) (h!72278 s!2326)))))

(declare-fun b!6723960 () Bool)

(declare-fun e!4062561 () Bool)

(declare-fun tp_is_empty!42355 () Bool)

(declare-fun tp!1843648 () Bool)

(assert (=> b!6723960 (= e!4062561 (and tp_is_empty!42355 tp!1843648))))

(declare-fun b!6723961 () Bool)

(assert (=> b!6723961 (= e!4062562 lt!2436979)))

(declare-fun b!6723962 () Bool)

(declare-fun e!4062556 () Bool)

(declare-fun tp!1843651 () Bool)

(assert (=> b!6723962 (= e!4062556 tp!1843651)))

(declare-fun b!6723963 () Bool)

(declare-fun res!2751158 () Bool)

(assert (=> b!6723963 (=> res!2751158 e!4062557)))

(get-info :version)

(assert (=> b!6723963 (= res!2751158 (or ((_ is EmptyExpr!16551) r!7292) ((_ is EmptyLang!16551) r!7292) ((_ is ElementMatch!16551) r!7292) ((_ is Union!16551) r!7292) ((_ is Concat!25396) r!7292)))))

(declare-fun b!6723964 () Bool)

(declare-fun tp!1843650 () Bool)

(declare-fun e!4062560 () Bool)

(declare-fun inv!84624 (Context!11870) Bool)

(assert (=> b!6723964 (= e!4062560 (and (inv!84624 (h!72277 zl!343)) e!4062556 tp!1843650))))

(declare-fun setIsEmpty!45835 () Bool)

(declare-fun setRes!45835 () Bool)

(assert (=> setIsEmpty!45835 setRes!45835))

(declare-fun b!6723965 () Bool)

(declare-fun e!4062563 () Bool)

(declare-fun lt!2436984 () Context!11870)

(assert (=> b!6723965 (= e!4062563 (inv!84624 lt!2436984))))

(declare-fun lt!2436987 () (InoxSet Context!11870))

(assert (=> b!6723965 (= lt!2436987 (derivationStepZipperUp!1705 lt!2436984 (h!72278 s!2326)))))

(assert (=> b!6723965 (= lt!2436984 (Context!11871 (Cons!65828 (reg!16880 r!7292) (Cons!65828 r!7292 Nil!65828))))))

(declare-fun b!6723966 () Bool)

(declare-fun e!4062565 () Bool)

(assert (=> b!6723966 (= e!4062565 (not e!4062557))))

(declare-fun res!2751156 () Bool)

(assert (=> b!6723966 (=> res!2751156 e!4062557)))

(assert (=> b!6723966 (= res!2751156 (not ((_ is Cons!65829) zl!343)))))

(declare-fun matchRSpec!3652 (Regex!16551 List!65954) Bool)

(assert (=> b!6723966 (= lt!2436981 (matchRSpec!3652 r!7292 s!2326))))

(declare-fun matchR!8734 (Regex!16551 List!65954) Bool)

(assert (=> b!6723966 (= lt!2436981 (matchR!8734 r!7292 s!2326))))

(declare-fun lt!2436978 () Unit!159793)

(declare-fun mainMatchTheorem!3652 (Regex!16551 List!65954) Unit!159793)

(assert (=> b!6723966 (= lt!2436978 (mainMatchTheorem!3652 r!7292 s!2326))))

(declare-fun b!6723967 () Bool)

(declare-fun res!2751152 () Bool)

(assert (=> b!6723967 (=> res!2751152 e!4062564)))

(assert (=> b!6723967 (= res!2751152 ((_ is Nil!65830) s!2326))))

(assert (=> b!6723968 (= e!4062566 e!4062563)))

(declare-fun res!2751157 () Bool)

(assert (=> b!6723968 (=> res!2751157 e!4062563)))

(declare-fun z!1189 () (InoxSet Context!11870))

(declare-fun derivationStepZipper!2495 ((InoxSet Context!11870) C!33372) (InoxSet Context!11870))

(assert (=> b!6723968 (= res!2751157 (not (= (derivationStepZipper!2495 z!1189 (h!72278 s!2326)) lt!2436983)))))

(declare-fun lambda!377161 () Int)

(declare-fun flatMap!2032 ((InoxSet Context!11870) Int) (InoxSet Context!11870))

(assert (=> b!6723968 (= (flatMap!2032 z!1189 lambda!377161) (derivationStepZipperUp!1705 (h!72277 zl!343) (h!72278 s!2326)))))

(declare-fun lt!2436986 () Unit!159793)

(declare-fun lemmaFlatMapOnSingletonSet!1558 ((InoxSet Context!11870) Context!11870 Int) Unit!159793)

(assert (=> b!6723968 (= lt!2436986 (lemmaFlatMapOnSingletonSet!1558 z!1189 (h!72277 zl!343) lambda!377161))))

(declare-fun b!6723969 () Bool)

(declare-fun res!2751154 () Bool)

(assert (=> b!6723969 (=> res!2751154 e!4062557)))

(declare-fun generalisedUnion!2395 (List!65952) Regex!16551)

(declare-fun unfocusZipperList!1972 (List!65953) List!65952)

(assert (=> b!6723969 (= res!2751154 (not (= r!7292 (generalisedUnion!2395 (unfocusZipperList!1972 zl!343)))))))

(declare-fun b!6723970 () Bool)

(declare-fun res!2751150 () Bool)

(assert (=> b!6723970 (=> (not res!2751150) (not e!4062565))))

(declare-fun unfocusZipper!2293 (List!65953) Regex!16551)

(assert (=> b!6723970 (= res!2751150 (= r!7292 (unfocusZipper!2293 zl!343)))))

(declare-fun b!6723971 () Bool)

(declare-fun res!2751153 () Bool)

(assert (=> b!6723971 (=> (not res!2751153) (not e!4062565))))

(declare-fun toList!10335 ((InoxSet Context!11870)) List!65953)

(assert (=> b!6723971 (= res!2751153 (= (toList!10335 z!1189) zl!343))))

(declare-fun b!6723972 () Bool)

(declare-fun res!2751148 () Bool)

(assert (=> b!6723972 (=> res!2751148 e!4062557)))

(assert (=> b!6723972 (= res!2751148 (not ((_ is Cons!65828) (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6723973 () Bool)

(declare-fun tp!1843656 () Bool)

(declare-fun tp!1843657 () Bool)

(assert (=> b!6723973 (= e!4062558 (and tp!1843656 tp!1843657))))

(declare-fun setNonEmpty!45835 () Bool)

(declare-fun setElem!45835 () Context!11870)

(declare-fun e!4062559 () Bool)

(declare-fun tp!1843649 () Bool)

(assert (=> setNonEmpty!45835 (= setRes!45835 (and tp!1843649 (inv!84624 setElem!45835) e!4062559))))

(declare-fun setRest!45835 () (InoxSet Context!11870))

(assert (=> setNonEmpty!45835 (= z!1189 ((_ map or) (store ((as const (Array Context!11870 Bool)) false) setElem!45835 true) setRest!45835))))

(declare-fun res!2751160 () Bool)

(assert (=> start!651988 (=> (not res!2751160) (not e!4062565))))

(declare-fun validRegex!8287 (Regex!16551) Bool)

(assert (=> start!651988 (= res!2751160 (validRegex!8287 r!7292))))

(assert (=> start!651988 e!4062565))

(assert (=> start!651988 e!4062558))

(declare-fun condSetEmpty!45835 () Bool)

(assert (=> start!651988 (= condSetEmpty!45835 (= z!1189 ((as const (Array Context!11870 Bool)) false)))))

(assert (=> start!651988 setRes!45835))

(assert (=> start!651988 e!4062560))

(assert (=> start!651988 e!4062561))

(declare-fun b!6723974 () Bool)

(assert (=> b!6723974 (= e!4062558 tp_is_empty!42355)))

(declare-fun b!6723975 () Bool)

(declare-fun tp!1843655 () Bool)

(assert (=> b!6723975 (= e!4062559 tp!1843655)))

(assert (= (and start!651988 res!2751160) b!6723971))

(assert (= (and b!6723971 res!2751153) b!6723970))

(assert (= (and b!6723970 res!2751150) b!6723966))

(assert (= (and b!6723966 (not res!2751156)) b!6723958))

(assert (= (and b!6723958 (not res!2751151)) b!6723955))

(assert (= (and b!6723955 (not res!2751147)) b!6723972))

(assert (= (and b!6723972 (not res!2751148)) b!6723969))

(assert (= (and b!6723969 (not res!2751154)) b!6723963))

(assert (= (and b!6723963 (not res!2751158)) b!6723956))

(assert (= (and b!6723956 (not res!2751149)) b!6723961))

(assert (= (and b!6723956 (not res!2751155)) b!6723967))

(assert (= (and b!6723967 (not res!2751152)) b!6723959))

(assert (= (and b!6723959 (not res!2751159)) b!6723968))

(assert (= (and b!6723968 (not res!2751157)) b!6723965))

(assert (= (and start!651988 ((_ is ElementMatch!16551) r!7292)) b!6723974))

(assert (= (and start!651988 ((_ is Concat!25396) r!7292)) b!6723973))

(assert (= (and start!651988 ((_ is Star!16551) r!7292)) b!6723957))

(assert (= (and start!651988 ((_ is Union!16551) r!7292)) b!6723954))

(assert (= (and start!651988 condSetEmpty!45835) setIsEmpty!45835))

(assert (= (and start!651988 (not condSetEmpty!45835)) setNonEmpty!45835))

(assert (= setNonEmpty!45835 b!6723975))

(assert (= b!6723964 b!6723962))

(assert (= (and start!651988 ((_ is Cons!65829) zl!343)) b!6723964))

(assert (= (and start!651988 ((_ is Cons!65830) s!2326)) b!6723960))

(declare-fun m!7484550 () Bool)

(assert (=> setNonEmpty!45835 m!7484550))

(declare-fun m!7484552 () Bool)

(assert (=> b!6723970 m!7484552))

(declare-fun m!7484554 () Bool)

(assert (=> b!6723971 m!7484554))

(declare-fun m!7484556 () Bool)

(assert (=> b!6723956 m!7484556))

(assert (=> b!6723956 m!7484556))

(declare-fun m!7484558 () Bool)

(assert (=> b!6723956 m!7484558))

(declare-fun m!7484560 () Bool)

(assert (=> b!6723956 m!7484560))

(declare-fun m!7484562 () Bool)

(assert (=> b!6723956 m!7484562))

(declare-fun m!7484564 () Bool)

(assert (=> b!6723956 m!7484564))

(declare-fun m!7484566 () Bool)

(assert (=> b!6723956 m!7484566))

(declare-fun m!7484568 () Bool)

(assert (=> b!6723956 m!7484568))

(declare-fun m!7484570 () Bool)

(assert (=> b!6723956 m!7484570))

(declare-fun m!7484572 () Bool)

(assert (=> b!6723956 m!7484572))

(assert (=> b!6723956 m!7484568))

(assert (=> b!6723956 m!7484556))

(declare-fun m!7484574 () Bool)

(assert (=> b!6723959 m!7484574))

(declare-fun m!7484576 () Bool)

(assert (=> b!6723959 m!7484576))

(declare-fun m!7484578 () Bool)

(assert (=> b!6723968 m!7484578))

(declare-fun m!7484580 () Bool)

(assert (=> b!6723968 m!7484580))

(declare-fun m!7484582 () Bool)

(assert (=> b!6723968 m!7484582))

(declare-fun m!7484584 () Bool)

(assert (=> b!6723968 m!7484584))

(declare-fun m!7484586 () Bool)

(assert (=> start!651988 m!7484586))

(declare-fun m!7484588 () Bool)

(assert (=> b!6723965 m!7484588))

(declare-fun m!7484590 () Bool)

(assert (=> b!6723965 m!7484590))

(declare-fun m!7484592 () Bool)

(assert (=> b!6723966 m!7484592))

(declare-fun m!7484594 () Bool)

(assert (=> b!6723966 m!7484594))

(declare-fun m!7484596 () Bool)

(assert (=> b!6723966 m!7484596))

(declare-fun m!7484598 () Bool)

(assert (=> b!6723969 m!7484598))

(assert (=> b!6723969 m!7484598))

(declare-fun m!7484600 () Bool)

(assert (=> b!6723969 m!7484600))

(declare-fun m!7484602 () Bool)

(assert (=> b!6723964 m!7484602))

(declare-fun m!7484604 () Bool)

(assert (=> b!6723955 m!7484604))

(declare-fun m!7484606 () Bool)

(assert (=> b!6723958 m!7484606))

(check-sat (not b!6723970) (not b!6723973) (not b!6723958) (not b!6723969) (not b!6723955) (not b!6723966) (not b!6723956) tp_is_empty!42355 (not b!6723975) (not setNonEmpty!45835) (not b!6723960) (not b!6723959) (not b!6723957) (not b!6723954) (not b!6723971) (not b!6723968) (not start!651988) (not b!6723965) (not b!6723964) (not b!6723962))
(check-sat)
(get-model)

(declare-fun d!2112933 () Bool)

(declare-fun lt!2436993 () Regex!16551)

(assert (=> d!2112933 (validRegex!8287 lt!2436993)))

(assert (=> d!2112933 (= lt!2436993 (generalisedUnion!2395 (unfocusZipperList!1972 zl!343)))))

(assert (=> d!2112933 (= (unfocusZipper!2293 zl!343) lt!2436993)))

(declare-fun bs!1788655 () Bool)

(assert (= bs!1788655 d!2112933))

(declare-fun m!7484614 () Bool)

(assert (=> bs!1788655 m!7484614))

(assert (=> bs!1788655 m!7484598))

(assert (=> bs!1788655 m!7484598))

(assert (=> bs!1788655 m!7484600))

(assert (=> b!6723970 d!2112933))

(declare-fun d!2112935 () Bool)

(declare-fun e!4062615 () Bool)

(assert (=> d!2112935 e!4062615))

(declare-fun res!2751206 () Bool)

(assert (=> d!2112935 (=> (not res!2751206) (not e!4062615))))

(declare-fun lt!2436997 () List!65953)

(declare-fun noDuplicate!2344 (List!65953) Bool)

(assert (=> d!2112935 (= res!2751206 (noDuplicate!2344 lt!2436997))))

(declare-fun choose!50099 ((InoxSet Context!11870)) List!65953)

(assert (=> d!2112935 (= lt!2436997 (choose!50099 z!1189))))

(assert (=> d!2112935 (= (toList!10335 z!1189) lt!2436997)))

(declare-fun b!6724069 () Bool)

(declare-fun content!12771 (List!65953) (InoxSet Context!11870))

(assert (=> b!6724069 (= e!4062615 (= (content!12771 lt!2436997) z!1189))))

(assert (= (and d!2112935 res!2751206) b!6724069))

(declare-fun m!7484628 () Bool)

(assert (=> d!2112935 m!7484628))

(declare-fun m!7484630 () Bool)

(assert (=> d!2112935 m!7484630))

(declare-fun m!7484632 () Bool)

(assert (=> b!6724069 m!7484632))

(assert (=> b!6723971 d!2112935))

(declare-fun bm!607041 () Bool)

(declare-fun call!607048 () Bool)

(declare-fun call!607047 () Bool)

(assert (=> bm!607041 (= call!607048 call!607047)))

(declare-fun b!6724124 () Bool)

(declare-fun e!4062657 () Bool)

(declare-fun e!4062662 () Bool)

(assert (=> b!6724124 (= e!4062657 e!4062662)))

(declare-fun res!2751234 () Bool)

(declare-fun nullable!6538 (Regex!16551) Bool)

(assert (=> b!6724124 (= res!2751234 (not (nullable!6538 (reg!16880 r!7292))))))

(assert (=> b!6724124 (=> (not res!2751234) (not e!4062662))))

(declare-fun b!6724125 () Bool)

(declare-fun res!2751233 () Bool)

(declare-fun e!4062656 () Bool)

(assert (=> b!6724125 (=> res!2751233 e!4062656)))

(assert (=> b!6724125 (= res!2751233 (not ((_ is Concat!25396) r!7292)))))

(declare-fun e!4062659 () Bool)

(assert (=> b!6724125 (= e!4062659 e!4062656)))

(declare-fun d!2112939 () Bool)

(declare-fun res!2751237 () Bool)

(declare-fun e!4062661 () Bool)

(assert (=> d!2112939 (=> res!2751237 e!4062661)))

(assert (=> d!2112939 (= res!2751237 ((_ is ElementMatch!16551) r!7292))))

(assert (=> d!2112939 (= (validRegex!8287 r!7292) e!4062661)))

(declare-fun bm!607042 () Bool)

(declare-fun call!607046 () Bool)

(declare-fun c!1246641 () Bool)

(assert (=> bm!607042 (= call!607046 (validRegex!8287 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))))))

(declare-fun b!6724126 () Bool)

(declare-fun e!4062658 () Bool)

(assert (=> b!6724126 (= e!4062658 call!607048)))

(declare-fun b!6724127 () Bool)

(declare-fun res!2751235 () Bool)

(declare-fun e!4062660 () Bool)

(assert (=> b!6724127 (=> (not res!2751235) (not e!4062660))))

(assert (=> b!6724127 (= res!2751235 call!607046)))

(assert (=> b!6724127 (= e!4062659 e!4062660)))

(declare-fun b!6724128 () Bool)

(assert (=> b!6724128 (= e!4062657 e!4062659)))

(assert (=> b!6724128 (= c!1246641 ((_ is Union!16551) r!7292))))

(declare-fun b!6724129 () Bool)

(assert (=> b!6724129 (= e!4062656 e!4062658)))

(declare-fun res!2751236 () Bool)

(assert (=> b!6724129 (=> (not res!2751236) (not e!4062658))))

(assert (=> b!6724129 (= res!2751236 call!607046)))

(declare-fun c!1246642 () Bool)

(declare-fun bm!607043 () Bool)

(assert (=> bm!607043 (= call!607047 (validRegex!8287 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))))))

(declare-fun b!6724130 () Bool)

(assert (=> b!6724130 (= e!4062661 e!4062657)))

(assert (=> b!6724130 (= c!1246642 ((_ is Star!16551) r!7292))))

(declare-fun b!6724131 () Bool)

(assert (=> b!6724131 (= e!4062660 call!607048)))

(declare-fun b!6724132 () Bool)

(assert (=> b!6724132 (= e!4062662 call!607047)))

(assert (= (and d!2112939 (not res!2751237)) b!6724130))

(assert (= (and b!6724130 c!1246642) b!6724124))

(assert (= (and b!6724130 (not c!1246642)) b!6724128))

(assert (= (and b!6724124 res!2751234) b!6724132))

(assert (= (and b!6724128 c!1246641) b!6724127))

(assert (= (and b!6724128 (not c!1246641)) b!6724125))

(assert (= (and b!6724127 res!2751235) b!6724131))

(assert (= (and b!6724125 (not res!2751233)) b!6724129))

(assert (= (and b!6724129 res!2751236) b!6724126))

(assert (= (or b!6724131 b!6724126) bm!607041))

(assert (= (or b!6724127 b!6724129) bm!607042))

(assert (= (or b!6724132 bm!607041) bm!607043))

(declare-fun m!7484656 () Bool)

(assert (=> b!6724124 m!7484656))

(declare-fun m!7484658 () Bool)

(assert (=> bm!607042 m!7484658))

(declare-fun m!7484660 () Bool)

(assert (=> bm!607043 m!7484660))

(assert (=> start!651988 d!2112939))

(declare-fun b!6724231 () Bool)

(declare-fun e!4062721 () Bool)

(declare-fun lt!2437009 () Regex!16551)

(declare-fun isEmptyLang!1925 (Regex!16551) Bool)

(assert (=> b!6724231 (= e!4062721 (isEmptyLang!1925 lt!2437009))))

(declare-fun b!6724232 () Bool)

(declare-fun e!4062725 () Bool)

(assert (=> b!6724232 (= e!4062725 e!4062721)))

(declare-fun c!1246685 () Bool)

(declare-fun isEmpty!38157 (List!65952) Bool)

(assert (=> b!6724232 (= c!1246685 (isEmpty!38157 (unfocusZipperList!1972 zl!343)))))

(declare-fun b!6724233 () Bool)

(declare-fun e!4062723 () Bool)

(assert (=> b!6724233 (= e!4062723 (isEmpty!38157 (t!379633 (unfocusZipperList!1972 zl!343))))))

(declare-fun b!6724234 () Bool)

(declare-fun e!4062724 () Regex!16551)

(assert (=> b!6724234 (= e!4062724 EmptyLang!16551)))

(declare-fun b!6724235 () Bool)

(declare-fun e!4062726 () Bool)

(assert (=> b!6724235 (= e!4062721 e!4062726)))

(declare-fun c!1246683 () Bool)

(declare-fun tail!12614 (List!65952) List!65952)

(assert (=> b!6724235 (= c!1246683 (isEmpty!38157 (tail!12614 (unfocusZipperList!1972 zl!343))))))

(declare-fun b!6724236 () Bool)

(declare-fun isUnion!1355 (Regex!16551) Bool)

(assert (=> b!6724236 (= e!4062726 (isUnion!1355 lt!2437009))))

(declare-fun b!6724237 () Bool)

(declare-fun e!4062722 () Regex!16551)

(assert (=> b!6724237 (= e!4062722 e!4062724)))

(declare-fun c!1246682 () Bool)

(assert (=> b!6724237 (= c!1246682 ((_ is Cons!65828) (unfocusZipperList!1972 zl!343)))))

(declare-fun d!2112953 () Bool)

(assert (=> d!2112953 e!4062725))

(declare-fun res!2751258 () Bool)

(assert (=> d!2112953 (=> (not res!2751258) (not e!4062725))))

(assert (=> d!2112953 (= res!2751258 (validRegex!8287 lt!2437009))))

(assert (=> d!2112953 (= lt!2437009 e!4062722)))

(declare-fun c!1246684 () Bool)

(assert (=> d!2112953 (= c!1246684 e!4062723)))

(declare-fun res!2751257 () Bool)

(assert (=> d!2112953 (=> (not res!2751257) (not e!4062723))))

(assert (=> d!2112953 (= res!2751257 ((_ is Cons!65828) (unfocusZipperList!1972 zl!343)))))

(declare-fun lambda!377176 () Int)

(declare-fun forall!15751 (List!65952 Int) Bool)

(assert (=> d!2112953 (forall!15751 (unfocusZipperList!1972 zl!343) lambda!377176)))

(assert (=> d!2112953 (= (generalisedUnion!2395 (unfocusZipperList!1972 zl!343)) lt!2437009)))

(declare-fun b!6724230 () Bool)

(assert (=> b!6724230 (= e!4062722 (h!72276 (unfocusZipperList!1972 zl!343)))))

(declare-fun b!6724238 () Bool)

(declare-fun head!13529 (List!65952) Regex!16551)

(assert (=> b!6724238 (= e!4062726 (= lt!2437009 (head!13529 (unfocusZipperList!1972 zl!343))))))

(declare-fun b!6724239 () Bool)

(assert (=> b!6724239 (= e!4062724 (Union!16551 (h!72276 (unfocusZipperList!1972 zl!343)) (generalisedUnion!2395 (t!379633 (unfocusZipperList!1972 zl!343)))))))

(assert (= (and d!2112953 res!2751257) b!6724233))

(assert (= (and d!2112953 c!1246684) b!6724230))

(assert (= (and d!2112953 (not c!1246684)) b!6724237))

(assert (= (and b!6724237 c!1246682) b!6724239))

(assert (= (and b!6724237 (not c!1246682)) b!6724234))

(assert (= (and d!2112953 res!2751258) b!6724232))

(assert (= (and b!6724232 c!1246685) b!6724231))

(assert (= (and b!6724232 (not c!1246685)) b!6724235))

(assert (= (and b!6724235 c!1246683) b!6724238))

(assert (= (and b!6724235 (not c!1246683)) b!6724236))

(declare-fun m!7484700 () Bool)

(assert (=> b!6724231 m!7484700))

(assert (=> b!6724232 m!7484598))

(declare-fun m!7484702 () Bool)

(assert (=> b!6724232 m!7484702))

(assert (=> b!6724235 m!7484598))

(declare-fun m!7484704 () Bool)

(assert (=> b!6724235 m!7484704))

(assert (=> b!6724235 m!7484704))

(declare-fun m!7484706 () Bool)

(assert (=> b!6724235 m!7484706))

(declare-fun m!7484708 () Bool)

(assert (=> d!2112953 m!7484708))

(assert (=> d!2112953 m!7484598))

(declare-fun m!7484710 () Bool)

(assert (=> d!2112953 m!7484710))

(assert (=> b!6724238 m!7484598))

(declare-fun m!7484712 () Bool)

(assert (=> b!6724238 m!7484712))

(declare-fun m!7484714 () Bool)

(assert (=> b!6724236 m!7484714))

(declare-fun m!7484716 () Bool)

(assert (=> b!6724239 m!7484716))

(declare-fun m!7484718 () Bool)

(assert (=> b!6724233 m!7484718))

(assert (=> b!6723969 d!2112953))

(declare-fun bs!1788665 () Bool)

(declare-fun d!2112963 () Bool)

(assert (= bs!1788665 (and d!2112963 d!2112953)))

(declare-fun lambda!377182 () Int)

(assert (=> bs!1788665 (= lambda!377182 lambda!377176)))

(declare-fun lt!2437017 () List!65952)

(assert (=> d!2112963 (forall!15751 lt!2437017 lambda!377182)))

(declare-fun e!4062731 () List!65952)

(assert (=> d!2112963 (= lt!2437017 e!4062731)))

(declare-fun c!1246688 () Bool)

(assert (=> d!2112963 (= c!1246688 ((_ is Cons!65829) zl!343))))

(assert (=> d!2112963 (= (unfocusZipperList!1972 zl!343) lt!2437017)))

(declare-fun b!6724248 () Bool)

(assert (=> b!6724248 (= e!4062731 (Cons!65828 (generalisedConcat!2148 (exprs!6435 (h!72277 zl!343))) (unfocusZipperList!1972 (t!379634 zl!343))))))

(declare-fun b!6724249 () Bool)

(assert (=> b!6724249 (= e!4062731 Nil!65828)))

(assert (= (and d!2112963 c!1246688) b!6724248))

(assert (= (and d!2112963 (not c!1246688)) b!6724249))

(declare-fun m!7484726 () Bool)

(assert (=> d!2112963 m!7484726))

(assert (=> b!6724248 m!7484604))

(declare-fun m!7484728 () Bool)

(assert (=> b!6724248 m!7484728))

(assert (=> b!6723969 d!2112963))

(declare-fun b!6724304 () Bool)

(declare-fun e!4062764 () (InoxSet Context!11870))

(declare-fun call!607084 () (InoxSet Context!11870))

(assert (=> b!6724304 (= e!4062764 call!607084)))

(declare-fun bm!607078 () Bool)

(declare-fun call!607088 () (InoxSet Context!11870))

(declare-fun call!607085 () (InoxSet Context!11870))

(assert (=> bm!607078 (= call!607088 call!607085)))

(declare-fun b!6724305 () Bool)

(declare-fun c!1246703 () Bool)

(assert (=> b!6724305 (= c!1246703 ((_ is Star!16551) r!7292))))

(declare-fun e!4062762 () (InoxSet Context!11870))

(assert (=> b!6724305 (= e!4062762 e!4062764)))

(declare-fun b!6724306 () Bool)

(declare-fun e!4062765 () (InoxSet Context!11870))

(declare-fun call!607086 () (InoxSet Context!11870))

(assert (=> b!6724306 (= e!4062765 ((_ map or) call!607085 call!607086))))

(declare-fun bm!607079 () Bool)

(declare-fun c!1246706 () Bool)

(declare-fun c!1246704 () Bool)

(declare-fun call!607087 () List!65952)

(declare-fun c!1246707 () Bool)

(assert (=> bm!607079 (= call!607085 (derivationStepZipperDown!1779 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292)))) (ite (or c!1246707 c!1246706) (Context!11871 Nil!65828) (Context!11871 call!607087)) (h!72278 s!2326)))))

(declare-fun bm!607080 () Bool)

(declare-fun call!607083 () List!65952)

(assert (=> bm!607080 (= call!607086 (derivationStepZipperDown!1779 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292)) (ite c!1246707 (Context!11871 Nil!65828) (Context!11871 call!607083)) (h!72278 s!2326)))))

(declare-fun b!6724307 () Bool)

(declare-fun e!4062760 () (InoxSet Context!11870))

(assert (=> b!6724307 (= e!4062760 e!4062762)))

(assert (=> b!6724307 (= c!1246704 ((_ is Concat!25396) r!7292))))

(declare-fun d!2112971 () Bool)

(declare-fun c!1246705 () Bool)

(assert (=> d!2112971 (= c!1246705 (and ((_ is ElementMatch!16551) r!7292) (= (c!1246605 r!7292) (h!72278 s!2326))))))

(declare-fun e!4062763 () (InoxSet Context!11870))

(assert (=> d!2112971 (= (derivationStepZipperDown!1779 r!7292 (Context!11871 Nil!65828) (h!72278 s!2326)) e!4062763)))

(declare-fun b!6724308 () Bool)

(assert (=> b!6724308 (= e!4062763 (store ((as const (Array Context!11870 Bool)) false) (Context!11871 Nil!65828) true))))

(declare-fun bm!607081 () Bool)

(assert (=> bm!607081 (= call!607087 call!607083)))

(declare-fun b!6724309 () Bool)

(assert (=> b!6724309 (= e!4062762 call!607084)))

(declare-fun b!6724310 () Bool)

(assert (=> b!6724310 (= e!4062763 e!4062765)))

(assert (=> b!6724310 (= c!1246707 ((_ is Union!16551) r!7292))))

(declare-fun b!6724311 () Bool)

(assert (=> b!6724311 (= e!4062760 ((_ map or) call!607086 call!607088))))

(declare-fun b!6724312 () Bool)

(assert (=> b!6724312 (= e!4062764 ((as const (Array Context!11870 Bool)) false))))

(declare-fun b!6724313 () Bool)

(declare-fun e!4062761 () Bool)

(assert (=> b!6724313 (= c!1246706 e!4062761)))

(declare-fun res!2751289 () Bool)

(assert (=> b!6724313 (=> (not res!2751289) (not e!4062761))))

(assert (=> b!6724313 (= res!2751289 ((_ is Concat!25396) r!7292))))

(assert (=> b!6724313 (= e!4062765 e!4062760)))

(declare-fun bm!607082 () Bool)

(declare-fun $colon$colon!2368 (List!65952 Regex!16551) List!65952)

(assert (=> bm!607082 (= call!607083 ($colon$colon!2368 (exprs!6435 (Context!11871 Nil!65828)) (ite (or c!1246706 c!1246704) (regTwo!33614 r!7292) r!7292)))))

(declare-fun b!6724314 () Bool)

(assert (=> b!6724314 (= e!4062761 (nullable!6538 (regOne!33614 r!7292)))))

(declare-fun bm!607083 () Bool)

(assert (=> bm!607083 (= call!607084 call!607088)))

(assert (= (and d!2112971 c!1246705) b!6724308))

(assert (= (and d!2112971 (not c!1246705)) b!6724310))

(assert (= (and b!6724310 c!1246707) b!6724306))

(assert (= (and b!6724310 (not c!1246707)) b!6724313))

(assert (= (and b!6724313 res!2751289) b!6724314))

(assert (= (and b!6724313 c!1246706) b!6724311))

(assert (= (and b!6724313 (not c!1246706)) b!6724307))

(assert (= (and b!6724307 c!1246704) b!6724309))

(assert (= (and b!6724307 (not c!1246704)) b!6724305))

(assert (= (and b!6724305 c!1246703) b!6724304))

(assert (= (and b!6724305 (not c!1246703)) b!6724312))

(assert (= (or b!6724309 b!6724304) bm!607081))

(assert (= (or b!6724309 b!6724304) bm!607083))

(assert (= (or b!6724311 bm!607081) bm!607082))

(assert (= (or b!6724311 bm!607083) bm!607078))

(assert (= (or b!6724306 b!6724311) bm!607080))

(assert (= (or b!6724306 bm!607078) bm!607079))

(declare-fun m!7484748 () Bool)

(assert (=> bm!607079 m!7484748))

(declare-fun m!7484750 () Bool)

(assert (=> b!6724314 m!7484750))

(declare-fun m!7484752 () Bool)

(assert (=> bm!607080 m!7484752))

(declare-fun m!7484754 () Bool)

(assert (=> b!6724308 m!7484754))

(declare-fun m!7484756 () Bool)

(assert (=> bm!607082 m!7484756))

(assert (=> b!6723959 d!2112971))

(declare-fun b!6724338 () Bool)

(declare-fun e!4062781 () (InoxSet Context!11870))

(assert (=> b!6724338 (= e!4062781 ((as const (Array Context!11870 Bool)) false))))

(declare-fun d!2112983 () Bool)

(declare-fun c!1246714 () Bool)

(declare-fun e!4062780 () Bool)

(assert (=> d!2112983 (= c!1246714 e!4062780)))

(declare-fun res!2751301 () Bool)

(assert (=> d!2112983 (=> (not res!2751301) (not e!4062780))))

(assert (=> d!2112983 (= res!2751301 ((_ is Cons!65828) (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))

(declare-fun e!4062779 () (InoxSet Context!11870))

(assert (=> d!2112983 (= (derivationStepZipperUp!1705 (Context!11871 (Cons!65828 r!7292 Nil!65828)) (h!72278 s!2326)) e!4062779)))

(declare-fun b!6724339 () Bool)

(declare-fun call!607091 () (InoxSet Context!11870))

(assert (=> b!6724339 (= e!4062781 call!607091)))

(declare-fun b!6724340 () Bool)

(assert (=> b!6724340 (= e!4062779 e!4062781)))

(declare-fun c!1246715 () Bool)

(assert (=> b!6724340 (= c!1246715 ((_ is Cons!65828) (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))

(declare-fun b!6724341 () Bool)

(assert (=> b!6724341 (= e!4062780 (nullable!6538 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))

(declare-fun bm!607086 () Bool)

(assert (=> bm!607086 (= call!607091 (derivationStepZipperDown!1779 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))) (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (h!72278 s!2326)))))

(declare-fun b!6724342 () Bool)

(assert (=> b!6724342 (= e!4062779 ((_ map or) call!607091 (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (h!72278 s!2326))))))

(assert (= (and d!2112983 res!2751301) b!6724341))

(assert (= (and d!2112983 c!1246714) b!6724342))

(assert (= (and d!2112983 (not c!1246714)) b!6724340))

(assert (= (and b!6724340 c!1246715) b!6724339))

(assert (= (and b!6724340 (not c!1246715)) b!6724338))

(assert (= (or b!6724342 b!6724339) bm!607086))

(declare-fun m!7484782 () Bool)

(assert (=> b!6724341 m!7484782))

(declare-fun m!7484784 () Bool)

(assert (=> bm!607086 m!7484784))

(declare-fun m!7484786 () Bool)

(assert (=> b!6724342 m!7484786))

(assert (=> b!6723959 d!2112983))

(declare-fun d!2112989 () Bool)

(assert (=> d!2112989 (= (isEmpty!38154 (t!379634 zl!343)) ((_ is Nil!65829) (t!379634 zl!343)))))

(assert (=> b!6723958 d!2112989))

(declare-fun bs!1788686 () Bool)

(declare-fun d!2112991 () Bool)

(assert (= bs!1788686 (and d!2112991 b!6723968)))

(declare-fun lambda!377201 () Int)

(assert (=> bs!1788686 (= lambda!377201 lambda!377161)))

(assert (=> d!2112991 true))

(assert (=> d!2112991 (= (derivationStepZipper!2495 z!1189 (h!72278 s!2326)) (flatMap!2032 z!1189 lambda!377201))))

(declare-fun bs!1788687 () Bool)

(assert (= bs!1788687 d!2112991))

(declare-fun m!7484798 () Bool)

(assert (=> bs!1788687 m!7484798))

(assert (=> b!6723968 d!2112991))

(declare-fun d!2112999 () Bool)

(declare-fun choose!50100 ((InoxSet Context!11870) Int) (InoxSet Context!11870))

(assert (=> d!2112999 (= (flatMap!2032 z!1189 lambda!377161) (choose!50100 z!1189 lambda!377161))))

(declare-fun bs!1788690 () Bool)

(assert (= bs!1788690 d!2112999))

(declare-fun m!7484806 () Bool)

(assert (=> bs!1788690 m!7484806))

(assert (=> b!6723968 d!2112999))

(declare-fun b!6724352 () Bool)

(declare-fun e!4062787 () (InoxSet Context!11870))

(assert (=> b!6724352 (= e!4062787 ((as const (Array Context!11870 Bool)) false))))

(declare-fun d!2113003 () Bool)

(declare-fun c!1246722 () Bool)

(declare-fun e!4062786 () Bool)

(assert (=> d!2113003 (= c!1246722 e!4062786)))

(declare-fun res!2751303 () Bool)

(assert (=> d!2113003 (=> (not res!2751303) (not e!4062786))))

(assert (=> d!2113003 (= res!2751303 ((_ is Cons!65828) (exprs!6435 (h!72277 zl!343))))))

(declare-fun e!4062785 () (InoxSet Context!11870))

(assert (=> d!2113003 (= (derivationStepZipperUp!1705 (h!72277 zl!343) (h!72278 s!2326)) e!4062785)))

(declare-fun b!6724353 () Bool)

(declare-fun call!607093 () (InoxSet Context!11870))

(assert (=> b!6724353 (= e!4062787 call!607093)))

(declare-fun b!6724354 () Bool)

(assert (=> b!6724354 (= e!4062785 e!4062787)))

(declare-fun c!1246723 () Bool)

(assert (=> b!6724354 (= c!1246723 ((_ is Cons!65828) (exprs!6435 (h!72277 zl!343))))))

(declare-fun b!6724355 () Bool)

(assert (=> b!6724355 (= e!4062786 (nullable!6538 (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun bm!607088 () Bool)

(assert (=> bm!607088 (= call!607093 (derivationStepZipperDown!1779 (h!72276 (exprs!6435 (h!72277 zl!343))) (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))) (h!72278 s!2326)))))

(declare-fun b!6724356 () Bool)

(assert (=> b!6724356 (= e!4062785 ((_ map or) call!607093 (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))) (h!72278 s!2326))))))

(assert (= (and d!2113003 res!2751303) b!6724355))

(assert (= (and d!2113003 c!1246722) b!6724356))

(assert (= (and d!2113003 (not c!1246722)) b!6724354))

(assert (= (and b!6724354 c!1246723) b!6724353))

(assert (= (and b!6724354 (not c!1246723)) b!6724352))

(assert (= (or b!6724356 b!6724353) bm!607088))

(declare-fun m!7484810 () Bool)

(assert (=> b!6724355 m!7484810))

(declare-fun m!7484812 () Bool)

(assert (=> bm!607088 m!7484812))

(declare-fun m!7484814 () Bool)

(assert (=> b!6724356 m!7484814))

(assert (=> b!6723968 d!2113003))

(declare-fun d!2113007 () Bool)

(declare-fun dynLambda!26252 (Int Context!11870) (InoxSet Context!11870))

(assert (=> d!2113007 (= (flatMap!2032 z!1189 lambda!377161) (dynLambda!26252 lambda!377161 (h!72277 zl!343)))))

(declare-fun lt!2437041 () Unit!159793)

(declare-fun choose!50101 ((InoxSet Context!11870) Context!11870 Int) Unit!159793)

(assert (=> d!2113007 (= lt!2437041 (choose!50101 z!1189 (h!72277 zl!343) lambda!377161))))

(assert (=> d!2113007 (= z!1189 (store ((as const (Array Context!11870 Bool)) false) (h!72277 zl!343) true))))

(assert (=> d!2113007 (= (lemmaFlatMapOnSingletonSet!1558 z!1189 (h!72277 zl!343) lambda!377161) lt!2437041)))

(declare-fun b_lambda!253149 () Bool)

(assert (=> (not b_lambda!253149) (not d!2113007)))

(declare-fun bs!1788694 () Bool)

(assert (= bs!1788694 d!2113007))

(assert (=> bs!1788694 m!7484580))

(declare-fun m!7484816 () Bool)

(assert (=> bs!1788694 m!7484816))

(declare-fun m!7484818 () Bool)

(assert (=> bs!1788694 m!7484818))

(declare-fun m!7484820 () Bool)

(assert (=> bs!1788694 m!7484820))

(assert (=> b!6723968 d!2113007))

(declare-fun bs!1788705 () Bool)

(declare-fun b!6724486 () Bool)

(assert (= bs!1788705 (and b!6724486 b!6723956)))

(declare-fun lambda!377213 () Int)

(assert (=> bs!1788705 (not (= lambda!377213 lambda!377158))))

(assert (=> bs!1788705 (= lambda!377213 lambda!377159)))

(assert (=> bs!1788705 (not (= lambda!377213 lambda!377160))))

(assert (=> b!6724486 true))

(assert (=> b!6724486 true))

(declare-fun bs!1788706 () Bool)

(declare-fun b!6724483 () Bool)

(assert (= bs!1788706 (and b!6724483 b!6723956)))

(declare-fun lambda!377214 () Int)

(assert (=> bs!1788706 (not (= lambda!377214 lambda!377158))))

(assert (=> bs!1788706 (not (= lambda!377214 lambda!377159))))

(assert (=> bs!1788706 (= (and (= (regOne!33614 r!7292) (reg!16880 r!7292)) (= (regTwo!33614 r!7292) r!7292)) (= lambda!377214 lambda!377160))))

(declare-fun bs!1788707 () Bool)

(assert (= bs!1788707 (and b!6724483 b!6724486)))

(assert (=> bs!1788707 (not (= lambda!377214 lambda!377213))))

(assert (=> b!6724483 true))

(assert (=> b!6724483 true))

(declare-fun b!6724479 () Bool)

(declare-fun e!4062851 () Bool)

(assert (=> b!6724479 (= e!4062851 (= s!2326 (Cons!65830 (c!1246605 r!7292) Nil!65830)))))

(declare-fun b!6724480 () Bool)

(declare-fun e!4062856 () Bool)

(declare-fun call!607098 () Bool)

(assert (=> b!6724480 (= e!4062856 call!607098)))

(declare-fun bm!607093 () Bool)

(assert (=> bm!607093 (= call!607098 (isEmpty!38153 s!2326))))

(declare-fun b!6724481 () Bool)

(declare-fun res!2751328 () Bool)

(declare-fun e!4062852 () Bool)

(assert (=> b!6724481 (=> res!2751328 e!4062852)))

(assert (=> b!6724481 (= res!2751328 call!607098)))

(declare-fun e!4062855 () Bool)

(assert (=> b!6724481 (= e!4062855 e!4062852)))

(declare-fun b!6724482 () Bool)

(declare-fun c!1246748 () Bool)

(assert (=> b!6724482 (= c!1246748 ((_ is Union!16551) r!7292))))

(declare-fun e!4062850 () Bool)

(assert (=> b!6724482 (= e!4062851 e!4062850)))

(declare-fun d!2113009 () Bool)

(declare-fun c!1246750 () Bool)

(assert (=> d!2113009 (= c!1246750 ((_ is EmptyExpr!16551) r!7292))))

(assert (=> d!2113009 (= (matchRSpec!3652 r!7292 s!2326) e!4062856)))

(declare-fun call!607099 () Bool)

(assert (=> b!6724483 (= e!4062855 call!607099)))

(declare-fun b!6724484 () Bool)

(declare-fun e!4062854 () Bool)

(assert (=> b!6724484 (= e!4062856 e!4062854)))

(declare-fun res!2751326 () Bool)

(assert (=> b!6724484 (= res!2751326 (not ((_ is EmptyLang!16551) r!7292)))))

(assert (=> b!6724484 (=> (not res!2751326) (not e!4062854))))

(declare-fun bm!607094 () Bool)

(declare-fun c!1246749 () Bool)

(assert (=> bm!607094 (= call!607099 (Exists!3619 (ite c!1246749 lambda!377213 lambda!377214)))))

(declare-fun b!6724485 () Bool)

(assert (=> b!6724485 (= e!4062850 e!4062855)))

(assert (=> b!6724485 (= c!1246749 ((_ is Star!16551) r!7292))))

(assert (=> b!6724486 (= e!4062852 call!607099)))

(declare-fun b!6724487 () Bool)

(declare-fun c!1246747 () Bool)

(assert (=> b!6724487 (= c!1246747 ((_ is ElementMatch!16551) r!7292))))

(assert (=> b!6724487 (= e!4062854 e!4062851)))

(declare-fun b!6724488 () Bool)

(declare-fun e!4062853 () Bool)

(assert (=> b!6724488 (= e!4062850 e!4062853)))

(declare-fun res!2751327 () Bool)

(assert (=> b!6724488 (= res!2751327 (matchRSpec!3652 (regOne!33615 r!7292) s!2326))))

(assert (=> b!6724488 (=> res!2751327 e!4062853)))

(declare-fun b!6724489 () Bool)

(assert (=> b!6724489 (= e!4062853 (matchRSpec!3652 (regTwo!33615 r!7292) s!2326))))

(assert (= (and d!2113009 c!1246750) b!6724480))

(assert (= (and d!2113009 (not c!1246750)) b!6724484))

(assert (= (and b!6724484 res!2751326) b!6724487))

(assert (= (and b!6724487 c!1246747) b!6724479))

(assert (= (and b!6724487 (not c!1246747)) b!6724482))

(assert (= (and b!6724482 c!1246748) b!6724488))

(assert (= (and b!6724482 (not c!1246748)) b!6724485))

(assert (= (and b!6724488 (not res!2751327)) b!6724489))

(assert (= (and b!6724485 c!1246749) b!6724481))

(assert (= (and b!6724485 (not c!1246749)) b!6724483))

(assert (= (and b!6724481 (not res!2751328)) b!6724486))

(assert (= (or b!6724486 b!6724483) bm!607094))

(assert (= (or b!6724480 b!6724481) bm!607093))

(assert (=> bm!607093 m!7484558))

(declare-fun m!7484850 () Bool)

(assert (=> bm!607094 m!7484850))

(declare-fun m!7484852 () Bool)

(assert (=> b!6724488 m!7484852))

(declare-fun m!7484854 () Bool)

(assert (=> b!6724489 m!7484854))

(assert (=> b!6723966 d!2113009))

(declare-fun d!2113015 () Bool)

(declare-fun e!4062875 () Bool)

(assert (=> d!2113015 e!4062875))

(declare-fun c!1246758 () Bool)

(assert (=> d!2113015 (= c!1246758 ((_ is EmptyExpr!16551) r!7292))))

(declare-fun lt!2437048 () Bool)

(declare-fun e!4062873 () Bool)

(assert (=> d!2113015 (= lt!2437048 e!4062873)))

(declare-fun c!1246759 () Bool)

(assert (=> d!2113015 (= c!1246759 (isEmpty!38153 s!2326))))

(assert (=> d!2113015 (validRegex!8287 r!7292)))

(assert (=> d!2113015 (= (matchR!8734 r!7292 s!2326) lt!2437048)))

(declare-fun b!6724518 () Bool)

(declare-fun e!4062871 () Bool)

(declare-fun head!13530 (List!65954) C!33372)

(assert (=> b!6724518 (= e!4062871 (not (= (head!13530 s!2326) (c!1246605 r!7292))))))

(declare-fun bm!607097 () Bool)

(declare-fun call!607102 () Bool)

(assert (=> bm!607097 (= call!607102 (isEmpty!38153 s!2326))))

(declare-fun b!6724519 () Bool)

(declare-fun e!4062874 () Bool)

(assert (=> b!6724519 (= e!4062874 (= (head!13530 s!2326) (c!1246605 r!7292)))))

(declare-fun b!6724520 () Bool)

(assert (=> b!6724520 (= e!4062873 (nullable!6538 r!7292))))

(declare-fun b!6724521 () Bool)

(declare-fun res!2751351 () Bool)

(declare-fun e!4062877 () Bool)

(assert (=> b!6724521 (=> res!2751351 e!4062877)))

(assert (=> b!6724521 (= res!2751351 (not ((_ is ElementMatch!16551) r!7292)))))

(declare-fun e!4062876 () Bool)

(assert (=> b!6724521 (= e!4062876 e!4062877)))

(declare-fun b!6724522 () Bool)

(assert (=> b!6724522 (= e!4062875 e!4062876)))

(declare-fun c!1246757 () Bool)

(assert (=> b!6724522 (= c!1246757 ((_ is EmptyLang!16551) r!7292))))

(declare-fun b!6724523 () Bool)

(declare-fun e!4062872 () Bool)

(assert (=> b!6724523 (= e!4062872 e!4062871)))

(declare-fun res!2751346 () Bool)

(assert (=> b!6724523 (=> res!2751346 e!4062871)))

(assert (=> b!6724523 (= res!2751346 call!607102)))

(declare-fun b!6724524 () Bool)

(declare-fun res!2751345 () Bool)

(assert (=> b!6724524 (=> res!2751345 e!4062871)))

(declare-fun tail!12615 (List!65954) List!65954)

(assert (=> b!6724524 (= res!2751345 (not (isEmpty!38153 (tail!12615 s!2326))))))

(declare-fun b!6724525 () Bool)

(declare-fun res!2751349 () Bool)

(assert (=> b!6724525 (=> (not res!2751349) (not e!4062874))))

(assert (=> b!6724525 (= res!2751349 (isEmpty!38153 (tail!12615 s!2326)))))

(declare-fun b!6724526 () Bool)

(assert (=> b!6724526 (= e!4062876 (not lt!2437048))))

(declare-fun b!6724527 () Bool)

(assert (=> b!6724527 (= e!4062877 e!4062872)))

(declare-fun res!2751347 () Bool)

(assert (=> b!6724527 (=> (not res!2751347) (not e!4062872))))

(assert (=> b!6724527 (= res!2751347 (not lt!2437048))))

(declare-fun b!6724528 () Bool)

(declare-fun res!2751350 () Bool)

(assert (=> b!6724528 (=> res!2751350 e!4062877)))

(assert (=> b!6724528 (= res!2751350 e!4062874)))

(declare-fun res!2751352 () Bool)

(assert (=> b!6724528 (=> (not res!2751352) (not e!4062874))))

(assert (=> b!6724528 (= res!2751352 lt!2437048)))

(declare-fun b!6724529 () Bool)

(declare-fun derivativeStep!5223 (Regex!16551 C!33372) Regex!16551)

(assert (=> b!6724529 (= e!4062873 (matchR!8734 (derivativeStep!5223 r!7292 (head!13530 s!2326)) (tail!12615 s!2326)))))

(declare-fun b!6724530 () Bool)

(declare-fun res!2751348 () Bool)

(assert (=> b!6724530 (=> (not res!2751348) (not e!4062874))))

(assert (=> b!6724530 (= res!2751348 (not call!607102))))

(declare-fun b!6724531 () Bool)

(assert (=> b!6724531 (= e!4062875 (= lt!2437048 call!607102))))

(assert (= (and d!2113015 c!1246759) b!6724520))

(assert (= (and d!2113015 (not c!1246759)) b!6724529))

(assert (= (and d!2113015 c!1246758) b!6724531))

(assert (= (and d!2113015 (not c!1246758)) b!6724522))

(assert (= (and b!6724522 c!1246757) b!6724526))

(assert (= (and b!6724522 (not c!1246757)) b!6724521))

(assert (= (and b!6724521 (not res!2751351)) b!6724528))

(assert (= (and b!6724528 res!2751352) b!6724530))

(assert (= (and b!6724530 res!2751348) b!6724525))

(assert (= (and b!6724525 res!2751349) b!6724519))

(assert (= (and b!6724528 (not res!2751350)) b!6724527))

(assert (= (and b!6724527 res!2751347) b!6724523))

(assert (= (and b!6724523 (not res!2751346)) b!6724524))

(assert (= (and b!6724524 (not res!2751345)) b!6724518))

(assert (= (or b!6724531 b!6724523 b!6724530) bm!607097))

(declare-fun m!7484856 () Bool)

(assert (=> b!6724520 m!7484856))

(declare-fun m!7484858 () Bool)

(assert (=> b!6724519 m!7484858))

(assert (=> d!2113015 m!7484558))

(assert (=> d!2113015 m!7484586))

(assert (=> bm!607097 m!7484558))

(declare-fun m!7484860 () Bool)

(assert (=> b!6724524 m!7484860))

(assert (=> b!6724524 m!7484860))

(declare-fun m!7484862 () Bool)

(assert (=> b!6724524 m!7484862))

(assert (=> b!6724525 m!7484860))

(assert (=> b!6724525 m!7484860))

(assert (=> b!6724525 m!7484862))

(assert (=> b!6724529 m!7484858))

(assert (=> b!6724529 m!7484858))

(declare-fun m!7484864 () Bool)

(assert (=> b!6724529 m!7484864))

(assert (=> b!6724529 m!7484860))

(assert (=> b!6724529 m!7484864))

(assert (=> b!6724529 m!7484860))

(declare-fun m!7484866 () Bool)

(assert (=> b!6724529 m!7484866))

(assert (=> b!6724518 m!7484858))

(assert (=> b!6723966 d!2113015))

(declare-fun d!2113017 () Bool)

(assert (=> d!2113017 (= (matchR!8734 r!7292 s!2326) (matchRSpec!3652 r!7292 s!2326))))

(declare-fun lt!2437051 () Unit!159793)

(declare-fun choose!50102 (Regex!16551 List!65954) Unit!159793)

(assert (=> d!2113017 (= lt!2437051 (choose!50102 r!7292 s!2326))))

(assert (=> d!2113017 (validRegex!8287 r!7292)))

(assert (=> d!2113017 (= (mainMatchTheorem!3652 r!7292 s!2326) lt!2437051)))

(declare-fun bs!1788708 () Bool)

(assert (= bs!1788708 d!2113017))

(assert (=> bs!1788708 m!7484594))

(assert (=> bs!1788708 m!7484592))

(declare-fun m!7484868 () Bool)

(assert (=> bs!1788708 m!7484868))

(assert (=> bs!1788708 m!7484586))

(assert (=> b!6723966 d!2113017))

(declare-fun bs!1788709 () Bool)

(declare-fun d!2113019 () Bool)

(assert (= bs!1788709 (and d!2113019 d!2112953)))

(declare-fun lambda!377217 () Int)

(assert (=> bs!1788709 (= lambda!377217 lambda!377176)))

(declare-fun bs!1788710 () Bool)

(assert (= bs!1788710 (and d!2113019 d!2112963)))

(assert (=> bs!1788710 (= lambda!377217 lambda!377182)))

(assert (=> d!2113019 (= (inv!84624 lt!2436984) (forall!15751 (exprs!6435 lt!2436984) lambda!377217))))

(declare-fun bs!1788711 () Bool)

(assert (= bs!1788711 d!2113019))

(declare-fun m!7484870 () Bool)

(assert (=> bs!1788711 m!7484870))

(assert (=> b!6723965 d!2113019))

(declare-fun b!6724532 () Bool)

(declare-fun e!4062880 () (InoxSet Context!11870))

(assert (=> b!6724532 (= e!4062880 ((as const (Array Context!11870 Bool)) false))))

(declare-fun d!2113021 () Bool)

(declare-fun c!1246760 () Bool)

(declare-fun e!4062879 () Bool)

(assert (=> d!2113021 (= c!1246760 e!4062879)))

(declare-fun res!2751353 () Bool)

(assert (=> d!2113021 (=> (not res!2751353) (not e!4062879))))

(assert (=> d!2113021 (= res!2751353 ((_ is Cons!65828) (exprs!6435 lt!2436984)))))

(declare-fun e!4062878 () (InoxSet Context!11870))

(assert (=> d!2113021 (= (derivationStepZipperUp!1705 lt!2436984 (h!72278 s!2326)) e!4062878)))

(declare-fun b!6724533 () Bool)

(declare-fun call!607103 () (InoxSet Context!11870))

(assert (=> b!6724533 (= e!4062880 call!607103)))

(declare-fun b!6724534 () Bool)

(assert (=> b!6724534 (= e!4062878 e!4062880)))

(declare-fun c!1246761 () Bool)

(assert (=> b!6724534 (= c!1246761 ((_ is Cons!65828) (exprs!6435 lt!2436984)))))

(declare-fun b!6724535 () Bool)

(assert (=> b!6724535 (= e!4062879 (nullable!6538 (h!72276 (exprs!6435 lt!2436984))))))

(declare-fun bm!607098 () Bool)

(assert (=> bm!607098 (= call!607103 (derivationStepZipperDown!1779 (h!72276 (exprs!6435 lt!2436984)) (Context!11871 (t!379633 (exprs!6435 lt!2436984))) (h!72278 s!2326)))))

(declare-fun b!6724536 () Bool)

(assert (=> b!6724536 (= e!4062878 ((_ map or) call!607103 (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 lt!2436984))) (h!72278 s!2326))))))

(assert (= (and d!2113021 res!2751353) b!6724535))

(assert (= (and d!2113021 c!1246760) b!6724536))

(assert (= (and d!2113021 (not c!1246760)) b!6724534))

(assert (= (and b!6724534 c!1246761) b!6724533))

(assert (= (and b!6724534 (not c!1246761)) b!6724532))

(assert (= (or b!6724536 b!6724533) bm!607098))

(declare-fun m!7484872 () Bool)

(assert (=> b!6724535 m!7484872))

(declare-fun m!7484874 () Bool)

(assert (=> bm!607098 m!7484874))

(declare-fun m!7484876 () Bool)

(assert (=> b!6724536 m!7484876))

(assert (=> b!6723965 d!2113021))

(declare-fun bs!1788712 () Bool)

(declare-fun d!2113023 () Bool)

(assert (= bs!1788712 (and d!2113023 d!2112953)))

(declare-fun lambda!377220 () Int)

(assert (=> bs!1788712 (= lambda!377220 lambda!377176)))

(declare-fun bs!1788713 () Bool)

(assert (= bs!1788713 (and d!2113023 d!2112963)))

(assert (=> bs!1788713 (= lambda!377220 lambda!377182)))

(declare-fun bs!1788714 () Bool)

(assert (= bs!1788714 (and d!2113023 d!2113019)))

(assert (=> bs!1788714 (= lambda!377220 lambda!377217)))

(declare-fun e!4062897 () Bool)

(assert (=> d!2113023 e!4062897))

(declare-fun res!2751359 () Bool)

(assert (=> d!2113023 (=> (not res!2751359) (not e!4062897))))

(declare-fun lt!2437054 () Regex!16551)

(assert (=> d!2113023 (= res!2751359 (validRegex!8287 lt!2437054))))

(declare-fun e!4062895 () Regex!16551)

(assert (=> d!2113023 (= lt!2437054 e!4062895)))

(declare-fun c!1246772 () Bool)

(declare-fun e!4062893 () Bool)

(assert (=> d!2113023 (= c!1246772 e!4062893)))

(declare-fun res!2751358 () Bool)

(assert (=> d!2113023 (=> (not res!2751358) (not e!4062893))))

(assert (=> d!2113023 (= res!2751358 ((_ is Cons!65828) (exprs!6435 (h!72277 zl!343))))))

(assert (=> d!2113023 (forall!15751 (exprs!6435 (h!72277 zl!343)) lambda!377220)))

(assert (=> d!2113023 (= (generalisedConcat!2148 (exprs!6435 (h!72277 zl!343))) lt!2437054)))

(declare-fun b!6724557 () Bool)

(assert (=> b!6724557 (= e!4062895 (h!72276 (exprs!6435 (h!72277 zl!343))))))

(declare-fun b!6724558 () Bool)

(declare-fun e!4062896 () Bool)

(declare-fun e!4062898 () Bool)

(assert (=> b!6724558 (= e!4062896 e!4062898)))

(declare-fun c!1246771 () Bool)

(assert (=> b!6724558 (= c!1246771 (isEmpty!38157 (tail!12614 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6724559 () Bool)

(assert (=> b!6724559 (= e!4062898 (= lt!2437054 (head!13529 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6724560 () Bool)

(declare-fun isEmptyExpr!1917 (Regex!16551) Bool)

(assert (=> b!6724560 (= e!4062896 (isEmptyExpr!1917 lt!2437054))))

(declare-fun b!6724561 () Bool)

(assert (=> b!6724561 (= e!4062893 (isEmpty!38157 (t!379633 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6724562 () Bool)

(declare-fun e!4062894 () Regex!16551)

(assert (=> b!6724562 (= e!4062895 e!4062894)))

(declare-fun c!1246770 () Bool)

(assert (=> b!6724562 (= c!1246770 ((_ is Cons!65828) (exprs!6435 (h!72277 zl!343))))))

(declare-fun b!6724563 () Bool)

(declare-fun isConcat!1440 (Regex!16551) Bool)

(assert (=> b!6724563 (= e!4062898 (isConcat!1440 lt!2437054))))

(declare-fun b!6724564 () Bool)

(assert (=> b!6724564 (= e!4062894 EmptyExpr!16551)))

(declare-fun b!6724565 () Bool)

(assert (=> b!6724565 (= e!4062897 e!4062896)))

(declare-fun c!1246773 () Bool)

(assert (=> b!6724565 (= c!1246773 (isEmpty!38157 (exprs!6435 (h!72277 zl!343))))))

(declare-fun b!6724566 () Bool)

(assert (=> b!6724566 (= e!4062894 (Concat!25396 (h!72276 (exprs!6435 (h!72277 zl!343))) (generalisedConcat!2148 (t!379633 (exprs!6435 (h!72277 zl!343))))))))

(assert (= (and d!2113023 res!2751358) b!6724561))

(assert (= (and d!2113023 c!1246772) b!6724557))

(assert (= (and d!2113023 (not c!1246772)) b!6724562))

(assert (= (and b!6724562 c!1246770) b!6724566))

(assert (= (and b!6724562 (not c!1246770)) b!6724564))

(assert (= (and d!2113023 res!2751359) b!6724565))

(assert (= (and b!6724565 c!1246773) b!6724560))

(assert (= (and b!6724565 (not c!1246773)) b!6724558))

(assert (= (and b!6724558 c!1246771) b!6724559))

(assert (= (and b!6724558 (not c!1246771)) b!6724563))

(declare-fun m!7484878 () Bool)

(assert (=> b!6724561 m!7484878))

(declare-fun m!7484880 () Bool)

(assert (=> b!6724559 m!7484880))

(declare-fun m!7484882 () Bool)

(assert (=> b!6724563 m!7484882))

(declare-fun m!7484884 () Bool)

(assert (=> b!6724565 m!7484884))

(declare-fun m!7484886 () Bool)

(assert (=> d!2113023 m!7484886))

(declare-fun m!7484888 () Bool)

(assert (=> d!2113023 m!7484888))

(declare-fun m!7484890 () Bool)

(assert (=> b!6724566 m!7484890))

(declare-fun m!7484892 () Bool)

(assert (=> b!6724560 m!7484892))

(declare-fun m!7484894 () Bool)

(assert (=> b!6724558 m!7484894))

(assert (=> b!6724558 m!7484894))

(declare-fun m!7484896 () Bool)

(assert (=> b!6724558 m!7484896))

(assert (=> b!6723955 d!2113023))

(declare-fun d!2113025 () Bool)

(declare-fun isEmpty!38158 (Option!16438) Bool)

(assert (=> d!2113025 (= (isDefined!13141 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326)) (not (isEmpty!38158 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326))))))

(declare-fun bs!1788715 () Bool)

(assert (= bs!1788715 d!2113025))

(assert (=> bs!1788715 m!7484568))

(declare-fun m!7484898 () Bool)

(assert (=> bs!1788715 m!7484898))

(assert (=> b!6723956 d!2113025))

(declare-fun bs!1788716 () Bool)

(declare-fun d!2113027 () Bool)

(assert (= bs!1788716 (and d!2113027 b!6723956)))

(declare-fun lambda!377225 () Int)

(assert (=> bs!1788716 (not (= lambda!377225 lambda!377159))))

(declare-fun bs!1788717 () Bool)

(assert (= bs!1788717 (and d!2113027 b!6724483)))

(assert (=> bs!1788717 (not (= lambda!377225 lambda!377214))))

(assert (=> bs!1788716 (not (= lambda!377225 lambda!377160))))

(declare-fun bs!1788718 () Bool)

(assert (= bs!1788718 (and d!2113027 b!6724486)))

(assert (=> bs!1788718 (not (= lambda!377225 lambda!377213))))

(assert (=> bs!1788716 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377225 lambda!377158))))

(assert (=> d!2113027 true))

(assert (=> d!2113027 true))

(declare-fun bs!1788719 () Bool)

(assert (= bs!1788719 d!2113027))

(declare-fun lambda!377226 () Int)

(assert (=> bs!1788719 (not (= lambda!377226 lambda!377225))))

(assert (=> bs!1788716 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377226 lambda!377159))))

(assert (=> bs!1788717 (not (= lambda!377226 lambda!377214))))

(assert (=> bs!1788716 (not (= lambda!377226 lambda!377160))))

(assert (=> bs!1788718 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377226 lambda!377213))))

(assert (=> bs!1788716 (not (= lambda!377226 lambda!377158))))

(assert (=> d!2113027 true))

(assert (=> d!2113027 true))

(assert (=> d!2113027 (= (Exists!3619 lambda!377225) (Exists!3619 lambda!377226))))

(declare-fun lt!2437057 () Unit!159793)

(declare-fun choose!50103 (Regex!16551 List!65954) Unit!159793)

(assert (=> d!2113027 (= lt!2437057 (choose!50103 (reg!16880 r!7292) s!2326))))

(assert (=> d!2113027 (validRegex!8287 (reg!16880 r!7292))))

(assert (=> d!2113027 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!710 (reg!16880 r!7292) s!2326) lt!2437057)))

(declare-fun m!7484900 () Bool)

(assert (=> bs!1788719 m!7484900))

(declare-fun m!7484902 () Bool)

(assert (=> bs!1788719 m!7484902))

(declare-fun m!7484904 () Bool)

(assert (=> bs!1788719 m!7484904))

(declare-fun m!7484906 () Bool)

(assert (=> bs!1788719 m!7484906))

(assert (=> b!6723956 d!2113027))

(declare-fun d!2113029 () Bool)

(declare-fun choose!50104 (Int) Bool)

(assert (=> d!2113029 (= (Exists!3619 lambda!377158) (choose!50104 lambda!377158))))

(declare-fun bs!1788720 () Bool)

(assert (= bs!1788720 d!2113029))

(declare-fun m!7484908 () Bool)

(assert (=> bs!1788720 m!7484908))

(assert (=> b!6723956 d!2113029))

(declare-fun d!2113031 () Bool)

(assert (=> d!2113031 (= (Exists!3619 lambda!377160) (choose!50104 lambda!377160))))

(declare-fun bs!1788721 () Bool)

(assert (= bs!1788721 d!2113031))

(declare-fun m!7484910 () Bool)

(assert (=> bs!1788721 m!7484910))

(assert (=> b!6723956 d!2113031))

(declare-fun d!2113033 () Bool)

(assert (=> d!2113033 (= (isEmpty!38153 s!2326) ((_ is Nil!65830) s!2326))))

(assert (=> b!6723956 d!2113033))

(declare-fun bs!1788722 () Bool)

(declare-fun d!2113035 () Bool)

(assert (= bs!1788722 (and d!2113035 d!2113027)))

(declare-fun lambda!377231 () Int)

(assert (=> bs!1788722 (= (= r!7292 (Star!16551 (reg!16880 r!7292))) (= lambda!377231 lambda!377225))))

(declare-fun bs!1788723 () Bool)

(assert (= bs!1788723 (and d!2113035 b!6723956)))

(assert (=> bs!1788723 (not (= lambda!377231 lambda!377159))))

(declare-fun bs!1788724 () Bool)

(assert (= bs!1788724 (and d!2113035 b!6724483)))

(assert (=> bs!1788724 (not (= lambda!377231 lambda!377214))))

(assert (=> bs!1788723 (not (= lambda!377231 lambda!377160))))

(assert (=> bs!1788722 (not (= lambda!377231 lambda!377226))))

(declare-fun bs!1788725 () Bool)

(assert (= bs!1788725 (and d!2113035 b!6724486)))

(assert (=> bs!1788725 (not (= lambda!377231 lambda!377213))))

(assert (=> bs!1788723 (= lambda!377231 lambda!377158)))

(assert (=> d!2113035 true))

(assert (=> d!2113035 true))

(assert (=> d!2113035 true))

(declare-fun lambda!377232 () Int)

(assert (=> bs!1788722 (not (= lambda!377232 lambda!377225))))

(declare-fun bs!1788726 () Bool)

(assert (= bs!1788726 d!2113035))

(assert (=> bs!1788726 (not (= lambda!377232 lambda!377231))))

(assert (=> bs!1788723 (not (= lambda!377232 lambda!377159))))

(assert (=> bs!1788724 (= (and (= (reg!16880 r!7292) (regOne!33614 r!7292)) (= r!7292 (regTwo!33614 r!7292))) (= lambda!377232 lambda!377214))))

(assert (=> bs!1788723 (= lambda!377232 lambda!377160)))

(assert (=> bs!1788722 (not (= lambda!377232 lambda!377226))))

(assert (=> bs!1788725 (not (= lambda!377232 lambda!377213))))

(assert (=> bs!1788723 (not (= lambda!377232 lambda!377158))))

(assert (=> d!2113035 true))

(assert (=> d!2113035 true))

(assert (=> d!2113035 true))

(assert (=> d!2113035 (= (Exists!3619 lambda!377231) (Exists!3619 lambda!377232))))

(declare-fun lt!2437060 () Unit!159793)

(declare-fun choose!50105 (Regex!16551 Regex!16551 List!65954) Unit!159793)

(assert (=> d!2113035 (= lt!2437060 (choose!50105 (reg!16880 r!7292) r!7292 s!2326))))

(assert (=> d!2113035 (validRegex!8287 (reg!16880 r!7292))))

(assert (=> d!2113035 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2146 (reg!16880 r!7292) r!7292 s!2326) lt!2437060)))

(declare-fun m!7484912 () Bool)

(assert (=> bs!1788726 m!7484912))

(declare-fun m!7484914 () Bool)

(assert (=> bs!1788726 m!7484914))

(declare-fun m!7484916 () Bool)

(assert (=> bs!1788726 m!7484916))

(assert (=> bs!1788726 m!7484906))

(assert (=> b!6723956 d!2113035))

(declare-fun d!2113037 () Bool)

(assert (=> d!2113037 (= (Exists!3619 lambda!377159) (choose!50104 lambda!377159))))

(declare-fun bs!1788727 () Bool)

(assert (= bs!1788727 d!2113037))

(declare-fun m!7484918 () Bool)

(assert (=> bs!1788727 m!7484918))

(assert (=> b!6723956 d!2113037))

(declare-fun b!6724603 () Bool)

(declare-fun e!4062919 () Option!16438)

(declare-fun e!4062918 () Option!16438)

(assert (=> b!6724603 (= e!4062919 e!4062918)))

(declare-fun c!1246779 () Bool)

(assert (=> b!6724603 (= c!1246779 ((_ is Nil!65830) s!2326))))

(declare-fun b!6724604 () Bool)

(assert (=> b!6724604 (= e!4062918 None!16437)))

(declare-fun b!6724605 () Bool)

(assert (=> b!6724605 (= e!4062919 (Some!16437 (tuple2!67053 Nil!65830 s!2326)))))

(declare-fun b!6724606 () Bool)

(declare-fun lt!2437069 () Unit!159793)

(declare-fun lt!2437068 () Unit!159793)

(assert (=> b!6724606 (= lt!2437069 lt!2437068)))

(declare-fun ++!14707 (List!65954 List!65954) List!65954)

(assert (=> b!6724606 (= (++!14707 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (t!379635 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2680 (List!65954 C!33372 List!65954 List!65954) Unit!159793)

(assert (=> b!6724606 (= lt!2437068 (lemmaMoveElementToOtherListKeepsConcatEq!2680 Nil!65830 (h!72278 s!2326) (t!379635 s!2326) s!2326))))

(assert (=> b!6724606 (= e!4062918 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (t!379635 s!2326) s!2326))))

(declare-fun b!6724607 () Bool)

(declare-fun e!4062921 () Bool)

(declare-fun lt!2437067 () Option!16438)

(declare-fun get!22898 (Option!16438) tuple2!67052)

(assert (=> b!6724607 (= e!4062921 (= (++!14707 (_1!36829 (get!22898 lt!2437067)) (_2!36829 (get!22898 lt!2437067))) s!2326))))

(declare-fun b!6724608 () Bool)

(declare-fun res!2751389 () Bool)

(assert (=> b!6724608 (=> (not res!2751389) (not e!4062921))))

(assert (=> b!6724608 (= res!2751389 (matchR!8734 r!7292 (_2!36829 (get!22898 lt!2437067))))))

(declare-fun b!6724609 () Bool)

(declare-fun e!4062920 () Bool)

(assert (=> b!6724609 (= e!4062920 (not (isDefined!13141 lt!2437067)))))

(declare-fun b!6724610 () Bool)

(declare-fun res!2751392 () Bool)

(assert (=> b!6724610 (=> (not res!2751392) (not e!4062921))))

(assert (=> b!6724610 (= res!2751392 (matchR!8734 (reg!16880 r!7292) (_1!36829 (get!22898 lt!2437067))))))

(declare-fun d!2113039 () Bool)

(assert (=> d!2113039 e!4062920))

(declare-fun res!2751388 () Bool)

(assert (=> d!2113039 (=> res!2751388 e!4062920)))

(assert (=> d!2113039 (= res!2751388 e!4062921)))

(declare-fun res!2751391 () Bool)

(assert (=> d!2113039 (=> (not res!2751391) (not e!4062921))))

(assert (=> d!2113039 (= res!2751391 (isDefined!13141 lt!2437067))))

(assert (=> d!2113039 (= lt!2437067 e!4062919)))

(declare-fun c!1246778 () Bool)

(declare-fun e!4062917 () Bool)

(assert (=> d!2113039 (= c!1246778 e!4062917)))

(declare-fun res!2751390 () Bool)

(assert (=> d!2113039 (=> (not res!2751390) (not e!4062917))))

(assert (=> d!2113039 (= res!2751390 (matchR!8734 (reg!16880 r!7292) Nil!65830))))

(assert (=> d!2113039 (validRegex!8287 (reg!16880 r!7292))))

(assert (=> d!2113039 (= (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326) lt!2437067)))

(declare-fun b!6724611 () Bool)

(assert (=> b!6724611 (= e!4062917 (matchR!8734 r!7292 s!2326))))

(assert (= (and d!2113039 res!2751390) b!6724611))

(assert (= (and d!2113039 c!1246778) b!6724605))

(assert (= (and d!2113039 (not c!1246778)) b!6724603))

(assert (= (and b!6724603 c!1246779) b!6724604))

(assert (= (and b!6724603 (not c!1246779)) b!6724606))

(assert (= (and d!2113039 res!2751391) b!6724610))

(assert (= (and b!6724610 res!2751392) b!6724608))

(assert (= (and b!6724608 res!2751389) b!6724607))

(assert (= (and d!2113039 (not res!2751388)) b!6724609))

(declare-fun m!7484920 () Bool)

(assert (=> b!6724608 m!7484920))

(declare-fun m!7484922 () Bool)

(assert (=> b!6724608 m!7484922))

(assert (=> b!6724607 m!7484920))

(declare-fun m!7484924 () Bool)

(assert (=> b!6724607 m!7484924))

(assert (=> b!6724611 m!7484594))

(declare-fun m!7484926 () Bool)

(assert (=> d!2113039 m!7484926))

(declare-fun m!7484928 () Bool)

(assert (=> d!2113039 m!7484928))

(assert (=> d!2113039 m!7484906))

(assert (=> b!6724610 m!7484920))

(declare-fun m!7484930 () Bool)

(assert (=> b!6724610 m!7484930))

(assert (=> b!6724609 m!7484926))

(declare-fun m!7484932 () Bool)

(assert (=> b!6724606 m!7484932))

(assert (=> b!6724606 m!7484932))

(declare-fun m!7484934 () Bool)

(assert (=> b!6724606 m!7484934))

(declare-fun m!7484936 () Bool)

(assert (=> b!6724606 m!7484936))

(assert (=> b!6724606 m!7484932))

(declare-fun m!7484938 () Bool)

(assert (=> b!6724606 m!7484938))

(assert (=> b!6723956 d!2113039))

(declare-fun bs!1788728 () Bool)

(declare-fun d!2113041 () Bool)

(assert (= bs!1788728 (and d!2113041 d!2113027)))

(declare-fun lambda!377235 () Int)

(assert (=> bs!1788728 (= (= r!7292 (Star!16551 (reg!16880 r!7292))) (= lambda!377235 lambda!377225))))

(declare-fun bs!1788729 () Bool)

(assert (= bs!1788729 (and d!2113041 b!6723956)))

(assert (=> bs!1788729 (not (= lambda!377235 lambda!377159))))

(declare-fun bs!1788730 () Bool)

(assert (= bs!1788730 (and d!2113041 b!6724483)))

(assert (=> bs!1788730 (not (= lambda!377235 lambda!377214))))

(assert (=> bs!1788729 (not (= lambda!377235 lambda!377160))))

(assert (=> bs!1788728 (not (= lambda!377235 lambda!377226))))

(declare-fun bs!1788731 () Bool)

(assert (= bs!1788731 (and d!2113041 b!6724486)))

(assert (=> bs!1788731 (not (= lambda!377235 lambda!377213))))

(assert (=> bs!1788729 (= lambda!377235 lambda!377158)))

(declare-fun bs!1788732 () Bool)

(assert (= bs!1788732 (and d!2113041 d!2113035)))

(assert (=> bs!1788732 (not (= lambda!377235 lambda!377232))))

(assert (=> bs!1788732 (= lambda!377235 lambda!377231)))

(assert (=> d!2113041 true))

(assert (=> d!2113041 true))

(assert (=> d!2113041 true))

(assert (=> d!2113041 (= (isDefined!13141 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326)) (Exists!3619 lambda!377235))))

(declare-fun lt!2437072 () Unit!159793)

(declare-fun choose!50106 (Regex!16551 Regex!16551 List!65954) Unit!159793)

(assert (=> d!2113041 (= lt!2437072 (choose!50106 (reg!16880 r!7292) r!7292 s!2326))))

(assert (=> d!2113041 (validRegex!8287 (reg!16880 r!7292))))

(assert (=> d!2113041 (= (lemmaFindConcatSeparationEquivalentToExists!2616 (reg!16880 r!7292) r!7292 s!2326) lt!2437072)))

(declare-fun bs!1788733 () Bool)

(assert (= bs!1788733 d!2113041))

(declare-fun m!7484940 () Bool)

(assert (=> bs!1788733 m!7484940))

(assert (=> bs!1788733 m!7484568))

(assert (=> bs!1788733 m!7484570))

(assert (=> bs!1788733 m!7484906))

(assert (=> bs!1788733 m!7484568))

(declare-fun m!7484942 () Bool)

(assert (=> bs!1788733 m!7484942))

(assert (=> b!6723956 d!2113041))

(declare-fun bs!1788734 () Bool)

(declare-fun d!2113043 () Bool)

(assert (= bs!1788734 (and d!2113043 d!2112953)))

(declare-fun lambda!377236 () Int)

(assert (=> bs!1788734 (= lambda!377236 lambda!377176)))

(declare-fun bs!1788735 () Bool)

(assert (= bs!1788735 (and d!2113043 d!2112963)))

(assert (=> bs!1788735 (= lambda!377236 lambda!377182)))

(declare-fun bs!1788736 () Bool)

(assert (= bs!1788736 (and d!2113043 d!2113019)))

(assert (=> bs!1788736 (= lambda!377236 lambda!377217)))

(declare-fun bs!1788737 () Bool)

(assert (= bs!1788737 (and d!2113043 d!2113023)))

(assert (=> bs!1788737 (= lambda!377236 lambda!377220)))

(assert (=> d!2113043 (= (inv!84624 setElem!45835) (forall!15751 (exprs!6435 setElem!45835) lambda!377236))))

(declare-fun bs!1788738 () Bool)

(assert (= bs!1788738 d!2113043))

(declare-fun m!7484944 () Bool)

(assert (=> bs!1788738 m!7484944))

(assert (=> setNonEmpty!45835 d!2113043))

(declare-fun bs!1788739 () Bool)

(declare-fun d!2113045 () Bool)

(assert (= bs!1788739 (and d!2113045 d!2112953)))

(declare-fun lambda!377237 () Int)

(assert (=> bs!1788739 (= lambda!377237 lambda!377176)))

(declare-fun bs!1788740 () Bool)

(assert (= bs!1788740 (and d!2113045 d!2113019)))

(assert (=> bs!1788740 (= lambda!377237 lambda!377217)))

(declare-fun bs!1788741 () Bool)

(assert (= bs!1788741 (and d!2113045 d!2112963)))

(assert (=> bs!1788741 (= lambda!377237 lambda!377182)))

(declare-fun bs!1788742 () Bool)

(assert (= bs!1788742 (and d!2113045 d!2113023)))

(assert (=> bs!1788742 (= lambda!377237 lambda!377220)))

(declare-fun bs!1788743 () Bool)

(assert (= bs!1788743 (and d!2113045 d!2113043)))

(assert (=> bs!1788743 (= lambda!377237 lambda!377236)))

(assert (=> d!2113045 (= (inv!84624 (h!72277 zl!343)) (forall!15751 (exprs!6435 (h!72277 zl!343)) lambda!377237))))

(declare-fun bs!1788744 () Bool)

(assert (= bs!1788744 d!2113045))

(declare-fun m!7484946 () Bool)

(assert (=> bs!1788744 m!7484946))

(assert (=> b!6723964 d!2113045))

(declare-fun b!6724620 () Bool)

(declare-fun e!4062926 () Bool)

(declare-fun tp!1843720 () Bool)

(declare-fun tp!1843721 () Bool)

(assert (=> b!6724620 (= e!4062926 (and tp!1843720 tp!1843721))))

(assert (=> b!6723962 (= tp!1843651 e!4062926)))

(assert (= (and b!6723962 ((_ is Cons!65828) (exprs!6435 (h!72277 zl!343)))) b!6724620))

(declare-fun b!6724634 () Bool)

(declare-fun e!4062929 () Bool)

(declare-fun tp!1843736 () Bool)

(declare-fun tp!1843735 () Bool)

(assert (=> b!6724634 (= e!4062929 (and tp!1843736 tp!1843735))))

(declare-fun b!6724633 () Bool)

(declare-fun tp!1843732 () Bool)

(assert (=> b!6724633 (= e!4062929 tp!1843732)))

(declare-fun b!6724631 () Bool)

(assert (=> b!6724631 (= e!4062929 tp_is_empty!42355)))

(assert (=> b!6723957 (= tp!1843654 e!4062929)))

(declare-fun b!6724632 () Bool)

(declare-fun tp!1843733 () Bool)

(declare-fun tp!1843734 () Bool)

(assert (=> b!6724632 (= e!4062929 (and tp!1843733 tp!1843734))))

(assert (= (and b!6723957 ((_ is ElementMatch!16551) (reg!16880 r!7292))) b!6724631))

(assert (= (and b!6723957 ((_ is Concat!25396) (reg!16880 r!7292))) b!6724632))

(assert (= (and b!6723957 ((_ is Star!16551) (reg!16880 r!7292))) b!6724633))

(assert (= (and b!6723957 ((_ is Union!16551) (reg!16880 r!7292))) b!6724634))

(declare-fun b!6724635 () Bool)

(declare-fun e!4062930 () Bool)

(declare-fun tp!1843737 () Bool)

(declare-fun tp!1843738 () Bool)

(assert (=> b!6724635 (= e!4062930 (and tp!1843737 tp!1843738))))

(assert (=> b!6723975 (= tp!1843655 e!4062930)))

(assert (= (and b!6723975 ((_ is Cons!65828) (exprs!6435 setElem!45835))) b!6724635))

(declare-fun b!6724639 () Bool)

(declare-fun e!4062931 () Bool)

(declare-fun tp!1843743 () Bool)

(declare-fun tp!1843742 () Bool)

(assert (=> b!6724639 (= e!4062931 (and tp!1843743 tp!1843742))))

(declare-fun b!6724638 () Bool)

(declare-fun tp!1843739 () Bool)

(assert (=> b!6724638 (= e!4062931 tp!1843739)))

(declare-fun b!6724636 () Bool)

(assert (=> b!6724636 (= e!4062931 tp_is_empty!42355)))

(assert (=> b!6723954 (= tp!1843652 e!4062931)))

(declare-fun b!6724637 () Bool)

(declare-fun tp!1843740 () Bool)

(declare-fun tp!1843741 () Bool)

(assert (=> b!6724637 (= e!4062931 (and tp!1843740 tp!1843741))))

(assert (= (and b!6723954 ((_ is ElementMatch!16551) (regOne!33615 r!7292))) b!6724636))

(assert (= (and b!6723954 ((_ is Concat!25396) (regOne!33615 r!7292))) b!6724637))

(assert (= (and b!6723954 ((_ is Star!16551) (regOne!33615 r!7292))) b!6724638))

(assert (= (and b!6723954 ((_ is Union!16551) (regOne!33615 r!7292))) b!6724639))

(declare-fun b!6724643 () Bool)

(declare-fun e!4062932 () Bool)

(declare-fun tp!1843748 () Bool)

(declare-fun tp!1843747 () Bool)

(assert (=> b!6724643 (= e!4062932 (and tp!1843748 tp!1843747))))

(declare-fun b!6724642 () Bool)

(declare-fun tp!1843744 () Bool)

(assert (=> b!6724642 (= e!4062932 tp!1843744)))

(declare-fun b!6724640 () Bool)

(assert (=> b!6724640 (= e!4062932 tp_is_empty!42355)))

(assert (=> b!6723954 (= tp!1843653 e!4062932)))

(declare-fun b!6724641 () Bool)

(declare-fun tp!1843745 () Bool)

(declare-fun tp!1843746 () Bool)

(assert (=> b!6724641 (= e!4062932 (and tp!1843745 tp!1843746))))

(assert (= (and b!6723954 ((_ is ElementMatch!16551) (regTwo!33615 r!7292))) b!6724640))

(assert (= (and b!6723954 ((_ is Concat!25396) (regTwo!33615 r!7292))) b!6724641))

(assert (= (and b!6723954 ((_ is Star!16551) (regTwo!33615 r!7292))) b!6724642))

(assert (= (and b!6723954 ((_ is Union!16551) (regTwo!33615 r!7292))) b!6724643))

(declare-fun condSetEmpty!45841 () Bool)

(assert (=> setNonEmpty!45835 (= condSetEmpty!45841 (= setRest!45835 ((as const (Array Context!11870 Bool)) false)))))

(declare-fun setRes!45841 () Bool)

(assert (=> setNonEmpty!45835 (= tp!1843649 setRes!45841)))

(declare-fun setIsEmpty!45841 () Bool)

(assert (=> setIsEmpty!45841 setRes!45841))

(declare-fun e!4062935 () Bool)

(declare-fun tp!1843754 () Bool)

(declare-fun setNonEmpty!45841 () Bool)

(declare-fun setElem!45841 () Context!11870)

(assert (=> setNonEmpty!45841 (= setRes!45841 (and tp!1843754 (inv!84624 setElem!45841) e!4062935))))

(declare-fun setRest!45841 () (InoxSet Context!11870))

(assert (=> setNonEmpty!45841 (= setRest!45835 ((_ map or) (store ((as const (Array Context!11870 Bool)) false) setElem!45841 true) setRest!45841))))

(declare-fun b!6724648 () Bool)

(declare-fun tp!1843753 () Bool)

(assert (=> b!6724648 (= e!4062935 tp!1843753)))

(assert (= (and setNonEmpty!45835 condSetEmpty!45841) setIsEmpty!45841))

(assert (= (and setNonEmpty!45835 (not condSetEmpty!45841)) setNonEmpty!45841))

(assert (= setNonEmpty!45841 b!6724648))

(declare-fun m!7484948 () Bool)

(assert (=> setNonEmpty!45841 m!7484948))

(declare-fun b!6724653 () Bool)

(declare-fun e!4062938 () Bool)

(declare-fun tp!1843757 () Bool)

(assert (=> b!6724653 (= e!4062938 (and tp_is_empty!42355 tp!1843757))))

(assert (=> b!6723960 (= tp!1843648 e!4062938)))

(assert (= (and b!6723960 ((_ is Cons!65830) (t!379635 s!2326))) b!6724653))

(declare-fun b!6724657 () Bool)

(declare-fun e!4062939 () Bool)

(declare-fun tp!1843762 () Bool)

(declare-fun tp!1843761 () Bool)

(assert (=> b!6724657 (= e!4062939 (and tp!1843762 tp!1843761))))

(declare-fun b!6724656 () Bool)

(declare-fun tp!1843758 () Bool)

(assert (=> b!6724656 (= e!4062939 tp!1843758)))

(declare-fun b!6724654 () Bool)

(assert (=> b!6724654 (= e!4062939 tp_is_empty!42355)))

(assert (=> b!6723973 (= tp!1843656 e!4062939)))

(declare-fun b!6724655 () Bool)

(declare-fun tp!1843759 () Bool)

(declare-fun tp!1843760 () Bool)

(assert (=> b!6724655 (= e!4062939 (and tp!1843759 tp!1843760))))

(assert (= (and b!6723973 ((_ is ElementMatch!16551) (regOne!33614 r!7292))) b!6724654))

(assert (= (and b!6723973 ((_ is Concat!25396) (regOne!33614 r!7292))) b!6724655))

(assert (= (and b!6723973 ((_ is Star!16551) (regOne!33614 r!7292))) b!6724656))

(assert (= (and b!6723973 ((_ is Union!16551) (regOne!33614 r!7292))) b!6724657))

(declare-fun b!6724661 () Bool)

(declare-fun e!4062940 () Bool)

(declare-fun tp!1843767 () Bool)

(declare-fun tp!1843766 () Bool)

(assert (=> b!6724661 (= e!4062940 (and tp!1843767 tp!1843766))))

(declare-fun b!6724660 () Bool)

(declare-fun tp!1843763 () Bool)

(assert (=> b!6724660 (= e!4062940 tp!1843763)))

(declare-fun b!6724658 () Bool)

(assert (=> b!6724658 (= e!4062940 tp_is_empty!42355)))

(assert (=> b!6723973 (= tp!1843657 e!4062940)))

(declare-fun b!6724659 () Bool)

(declare-fun tp!1843764 () Bool)

(declare-fun tp!1843765 () Bool)

(assert (=> b!6724659 (= e!4062940 (and tp!1843764 tp!1843765))))

(assert (= (and b!6723973 ((_ is ElementMatch!16551) (regTwo!33614 r!7292))) b!6724658))

(assert (= (and b!6723973 ((_ is Concat!25396) (regTwo!33614 r!7292))) b!6724659))

(assert (= (and b!6723973 ((_ is Star!16551) (regTwo!33614 r!7292))) b!6724660))

(assert (= (and b!6723973 ((_ is Union!16551) (regTwo!33614 r!7292))) b!6724661))

(declare-fun b!6724669 () Bool)

(declare-fun e!4062946 () Bool)

(declare-fun tp!1843772 () Bool)

(assert (=> b!6724669 (= e!4062946 tp!1843772)))

(declare-fun e!4062945 () Bool)

(declare-fun b!6724668 () Bool)

(declare-fun tp!1843773 () Bool)

(assert (=> b!6724668 (= e!4062945 (and (inv!84624 (h!72277 (t!379634 zl!343))) e!4062946 tp!1843773))))

(assert (=> b!6723964 (= tp!1843650 e!4062945)))

(assert (= b!6724668 b!6724669))

(assert (= (and b!6723964 ((_ is Cons!65829) (t!379634 zl!343))) b!6724668))

(declare-fun m!7484950 () Bool)

(assert (=> b!6724668 m!7484950))

(declare-fun b_lambda!253153 () Bool)

(assert (= b_lambda!253149 (or b!6723968 b_lambda!253153)))

(declare-fun bs!1788745 () Bool)

(declare-fun d!2113047 () Bool)

(assert (= bs!1788745 (and d!2113047 b!6723968)))

(assert (=> bs!1788745 (= (dynLambda!26252 lambda!377161 (h!72277 zl!343)) (derivationStepZipperUp!1705 (h!72277 zl!343) (h!72278 s!2326)))))

(assert (=> bs!1788745 m!7484582))

(assert (=> d!2113007 d!2113047))

(check-sat (not b!6724641) (not bm!607086) (not d!2112935) (not d!2112933) (not b!6724660) (not b!6724525) (not b!6724529) (not b!6724607) (not b!6724668) (not b!6724069) (not d!2112953) (not b!6724560) (not bm!607080) (not b!6724314) (not b!6724558) (not b!6724637) (not bm!607097) (not b!6724524) (not d!2113023) (not b!6724238) (not b!6724231) (not b!6724639) (not bm!607043) (not bm!607093) (not b!6724235) (not b!6724643) (not b!6724633) (not bm!607042) (not b!6724653) (not b!6724642) (not b!6724536) (not b!6724124) (not b!6724659) (not b!6724610) (not bm!607082) (not b!6724248) (not bs!1788745) (not b!6724233) (not d!2113035) (not b!6724635) (not bm!607088) (not b!6724566) (not b!6724655) (not d!2113043) (not d!2113017) (not b!6724519) (not d!2113007) (not b!6724656) (not b!6724535) (not d!2112999) (not b!6724606) (not b!6724565) (not b!6724634) (not d!2112991) (not d!2113015) (not b!6724632) (not bm!607094) (not b!6724657) (not d!2112963) (not setNonEmpty!45841) (not d!2113037) (not bm!607098) (not b!6724669) (not b!6724661) (not d!2113041) (not b_lambda!253153) (not b!6724232) (not b!6724342) (not b!6724608) (not b!6724489) (not d!2113029) (not b!6724520) (not b!6724356) (not b!6724609) (not d!2113039) tp_is_empty!42355 (not b!6724341) (not bm!607079) (not b!6724561) (not b!6724611) (not d!2113031) (not d!2113045) (not b!6724648) (not b!6724488) (not b!6724638) (not b!6724563) (not d!2113027) (not d!2113019) (not b!6724518) (not d!2113025) (not b!6724236) (not b!6724620) (not b!6724559) (not b!6724355) (not b!6724239))
(check-sat)
(get-model)

(declare-fun bm!607121 () Bool)

(declare-fun call!607128 () Bool)

(declare-fun call!607127 () Bool)

(assert (=> bm!607121 (= call!607128 call!607127)))

(declare-fun b!6724822 () Bool)

(declare-fun e!4063046 () Bool)

(declare-fun e!4063051 () Bool)

(assert (=> b!6724822 (= e!4063046 e!4063051)))

(declare-fun res!2751487 () Bool)

(assert (=> b!6724822 (= res!2751487 (not (nullable!6538 (reg!16880 lt!2437009))))))

(assert (=> b!6724822 (=> (not res!2751487) (not e!4063051))))

(declare-fun b!6724823 () Bool)

(declare-fun res!2751486 () Bool)

(declare-fun e!4063045 () Bool)

(assert (=> b!6724823 (=> res!2751486 e!4063045)))

(assert (=> b!6724823 (= res!2751486 (not ((_ is Concat!25396) lt!2437009)))))

(declare-fun e!4063048 () Bool)

(assert (=> b!6724823 (= e!4063048 e!4063045)))

(declare-fun d!2113147 () Bool)

(declare-fun res!2751490 () Bool)

(declare-fun e!4063050 () Bool)

(assert (=> d!2113147 (=> res!2751490 e!4063050)))

(assert (=> d!2113147 (= res!2751490 ((_ is ElementMatch!16551) lt!2437009))))

(assert (=> d!2113147 (= (validRegex!8287 lt!2437009) e!4063050)))

(declare-fun bm!607122 () Bool)

(declare-fun call!607126 () Bool)

(declare-fun c!1246814 () Bool)

(assert (=> bm!607122 (= call!607126 (validRegex!8287 (ite c!1246814 (regOne!33615 lt!2437009) (regOne!33614 lt!2437009))))))

(declare-fun b!6724824 () Bool)

(declare-fun e!4063047 () Bool)

(assert (=> b!6724824 (= e!4063047 call!607128)))

(declare-fun b!6724825 () Bool)

(declare-fun res!2751488 () Bool)

(declare-fun e!4063049 () Bool)

(assert (=> b!6724825 (=> (not res!2751488) (not e!4063049))))

(assert (=> b!6724825 (= res!2751488 call!607126)))

(assert (=> b!6724825 (= e!4063048 e!4063049)))

(declare-fun b!6724826 () Bool)

(assert (=> b!6724826 (= e!4063046 e!4063048)))

(assert (=> b!6724826 (= c!1246814 ((_ is Union!16551) lt!2437009))))

(declare-fun b!6724827 () Bool)

(assert (=> b!6724827 (= e!4063045 e!4063047)))

(declare-fun res!2751489 () Bool)

(assert (=> b!6724827 (=> (not res!2751489) (not e!4063047))))

(assert (=> b!6724827 (= res!2751489 call!607126)))

(declare-fun c!1246815 () Bool)

(declare-fun bm!607123 () Bool)

(assert (=> bm!607123 (= call!607127 (validRegex!8287 (ite c!1246815 (reg!16880 lt!2437009) (ite c!1246814 (regTwo!33615 lt!2437009) (regTwo!33614 lt!2437009)))))))

(declare-fun b!6724828 () Bool)

(assert (=> b!6724828 (= e!4063050 e!4063046)))

(assert (=> b!6724828 (= c!1246815 ((_ is Star!16551) lt!2437009))))

(declare-fun b!6724829 () Bool)

(assert (=> b!6724829 (= e!4063049 call!607128)))

(declare-fun b!6724830 () Bool)

(assert (=> b!6724830 (= e!4063051 call!607127)))

(assert (= (and d!2113147 (not res!2751490)) b!6724828))

(assert (= (and b!6724828 c!1246815) b!6724822))

(assert (= (and b!6724828 (not c!1246815)) b!6724826))

(assert (= (and b!6724822 res!2751487) b!6724830))

(assert (= (and b!6724826 c!1246814) b!6724825))

(assert (= (and b!6724826 (not c!1246814)) b!6724823))

(assert (= (and b!6724825 res!2751488) b!6724829))

(assert (= (and b!6724823 (not res!2751486)) b!6724827))

(assert (= (and b!6724827 res!2751489) b!6724824))

(assert (= (or b!6724829 b!6724824) bm!607121))

(assert (= (or b!6724825 b!6724827) bm!607122))

(assert (= (or b!6724830 bm!607121) bm!607123))

(declare-fun m!7485104 () Bool)

(assert (=> b!6724822 m!7485104))

(declare-fun m!7485106 () Bool)

(assert (=> bm!607122 m!7485106))

(declare-fun m!7485108 () Bool)

(assert (=> bm!607123 m!7485108))

(assert (=> d!2112953 d!2113147))

(declare-fun d!2113149 () Bool)

(declare-fun res!2751501 () Bool)

(declare-fun e!4063062 () Bool)

(assert (=> d!2113149 (=> res!2751501 e!4063062)))

(assert (=> d!2113149 (= res!2751501 ((_ is Nil!65828) (unfocusZipperList!1972 zl!343)))))

(assert (=> d!2113149 (= (forall!15751 (unfocusZipperList!1972 zl!343) lambda!377176) e!4063062)))

(declare-fun b!6724847 () Bool)

(declare-fun e!4063063 () Bool)

(assert (=> b!6724847 (= e!4063062 e!4063063)))

(declare-fun res!2751502 () Bool)

(assert (=> b!6724847 (=> (not res!2751502) (not e!4063063))))

(declare-fun dynLambda!26253 (Int Regex!16551) Bool)

(assert (=> b!6724847 (= res!2751502 (dynLambda!26253 lambda!377176 (h!72276 (unfocusZipperList!1972 zl!343))))))

(declare-fun b!6724848 () Bool)

(assert (=> b!6724848 (= e!4063063 (forall!15751 (t!379633 (unfocusZipperList!1972 zl!343)) lambda!377176))))

(assert (= (and d!2113149 (not res!2751501)) b!6724847))

(assert (= (and b!6724847 res!2751502) b!6724848))

(declare-fun b_lambda!253163 () Bool)

(assert (=> (not b_lambda!253163) (not b!6724847)))

(declare-fun m!7485124 () Bool)

(assert (=> b!6724847 m!7485124))

(declare-fun m!7485126 () Bool)

(assert (=> b!6724848 m!7485126))

(assert (=> d!2112953 d!2113149))

(declare-fun d!2113153 () Bool)

(assert (=> d!2113153 (= (head!13529 (exprs!6435 (h!72277 zl!343))) (h!72276 (exprs!6435 (h!72277 zl!343))))))

(assert (=> b!6724559 d!2113153))

(declare-fun d!2113157 () Bool)

(assert (=> d!2113157 (= (isEmpty!38157 (t!379633 (exprs!6435 (h!72277 zl!343)))) ((_ is Nil!65828) (t!379633 (exprs!6435 (h!72277 zl!343)))))))

(assert (=> b!6724561 d!2113157))

(declare-fun b!6724865 () Bool)

(declare-fun e!4063077 () (InoxSet Context!11870))

(declare-fun call!607137 () (InoxSet Context!11870))

(assert (=> b!6724865 (= e!4063077 call!607137)))

(declare-fun bm!607131 () Bool)

(declare-fun call!607141 () (InoxSet Context!11870))

(declare-fun call!607138 () (InoxSet Context!11870))

(assert (=> bm!607131 (= call!607141 call!607138)))

(declare-fun c!1246826 () Bool)

(declare-fun b!6724866 () Bool)

(assert (=> b!6724866 (= c!1246826 ((_ is Star!16551) (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))))))

(declare-fun e!4063075 () (InoxSet Context!11870))

(assert (=> b!6724866 (= e!4063075 e!4063077)))

(declare-fun b!6724867 () Bool)

(declare-fun e!4063078 () (InoxSet Context!11870))

(declare-fun call!607139 () (InoxSet Context!11870))

(assert (=> b!6724867 (= e!4063078 ((_ map or) call!607138 call!607139))))

(declare-fun c!1246830 () Bool)

(declare-fun call!607140 () List!65952)

(declare-fun c!1246829 () Bool)

(declare-fun bm!607132 () Bool)

(declare-fun c!1246827 () Bool)

(assert (=> bm!607132 (= call!607138 (derivationStepZipperDown!1779 (ite c!1246830 (regOne!33615 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))) (ite c!1246829 (regTwo!33614 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))) (ite c!1246827 (regOne!33614 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))) (reg!16880 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292)))))))) (ite (or c!1246830 c!1246829) (ite (or c!1246707 c!1246706) (Context!11871 Nil!65828) (Context!11871 call!607087)) (Context!11871 call!607140)) (h!72278 s!2326)))))

(declare-fun bm!607133 () Bool)

(declare-fun call!607136 () List!65952)

(assert (=> bm!607133 (= call!607139 (derivationStepZipperDown!1779 (ite c!1246830 (regTwo!33615 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))) (regOne!33614 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292)))))) (ite c!1246830 (ite (or c!1246707 c!1246706) (Context!11871 Nil!65828) (Context!11871 call!607087)) (Context!11871 call!607136)) (h!72278 s!2326)))))

(declare-fun b!6724868 () Bool)

(declare-fun e!4063073 () (InoxSet Context!11870))

(assert (=> b!6724868 (= e!4063073 e!4063075)))

(assert (=> b!6724868 (= c!1246827 ((_ is Concat!25396) (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))))))

(declare-fun d!2113161 () Bool)

(declare-fun c!1246828 () Bool)

(assert (=> d!2113161 (= c!1246828 (and ((_ is ElementMatch!16551) (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))) (= (c!1246605 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))) (h!72278 s!2326))))))

(declare-fun e!4063076 () (InoxSet Context!11870))

(assert (=> d!2113161 (= (derivationStepZipperDown!1779 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292)))) (ite (or c!1246707 c!1246706) (Context!11871 Nil!65828) (Context!11871 call!607087)) (h!72278 s!2326)) e!4063076)))

(declare-fun b!6724869 () Bool)

(assert (=> b!6724869 (= e!4063076 (store ((as const (Array Context!11870 Bool)) false) (ite (or c!1246707 c!1246706) (Context!11871 Nil!65828) (Context!11871 call!607087)) true))))

(declare-fun bm!607134 () Bool)

(assert (=> bm!607134 (= call!607140 call!607136)))

(declare-fun b!6724870 () Bool)

(assert (=> b!6724870 (= e!4063075 call!607137)))

(declare-fun b!6724871 () Bool)

(assert (=> b!6724871 (= e!4063076 e!4063078)))

(assert (=> b!6724871 (= c!1246830 ((_ is Union!16551) (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))))))

(declare-fun b!6724872 () Bool)

(assert (=> b!6724872 (= e!4063073 ((_ map or) call!607139 call!607141))))

(declare-fun b!6724873 () Bool)

(assert (=> b!6724873 (= e!4063077 ((as const (Array Context!11870 Bool)) false))))

(declare-fun b!6724874 () Bool)

(declare-fun e!4063074 () Bool)

(assert (=> b!6724874 (= c!1246829 e!4063074)))

(declare-fun res!2751505 () Bool)

(assert (=> b!6724874 (=> (not res!2751505) (not e!4063074))))

(assert (=> b!6724874 (= res!2751505 ((_ is Concat!25396) (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))))))

(assert (=> b!6724874 (= e!4063078 e!4063073)))

(declare-fun bm!607135 () Bool)

(assert (=> bm!607135 (= call!607136 ($colon$colon!2368 (exprs!6435 (ite (or c!1246707 c!1246706) (Context!11871 Nil!65828) (Context!11871 call!607087))) (ite (or c!1246829 c!1246827) (regTwo!33614 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292))))) (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292)))))))))

(declare-fun b!6724875 () Bool)

(assert (=> b!6724875 (= e!4063074 (nullable!6538 (regOne!33614 (ite c!1246707 (regOne!33615 r!7292) (ite c!1246706 (regTwo!33614 r!7292) (ite c!1246704 (regOne!33614 r!7292) (reg!16880 r!7292)))))))))

(declare-fun bm!607136 () Bool)

(assert (=> bm!607136 (= call!607137 call!607141)))

(assert (= (and d!2113161 c!1246828) b!6724869))

(assert (= (and d!2113161 (not c!1246828)) b!6724871))

(assert (= (and b!6724871 c!1246830) b!6724867))

(assert (= (and b!6724871 (not c!1246830)) b!6724874))

(assert (= (and b!6724874 res!2751505) b!6724875))

(assert (= (and b!6724874 c!1246829) b!6724872))

(assert (= (and b!6724874 (not c!1246829)) b!6724868))

(assert (= (and b!6724868 c!1246827) b!6724870))

(assert (= (and b!6724868 (not c!1246827)) b!6724866))

(assert (= (and b!6724866 c!1246826) b!6724865))

(assert (= (and b!6724866 (not c!1246826)) b!6724873))

(assert (= (or b!6724870 b!6724865) bm!607134))

(assert (= (or b!6724870 b!6724865) bm!607136))

(assert (= (or b!6724872 bm!607134) bm!607135))

(assert (= (or b!6724872 bm!607136) bm!607131))

(assert (= (or b!6724867 b!6724872) bm!607133))

(assert (= (or b!6724867 bm!607131) bm!607132))

(declare-fun m!7485144 () Bool)

(assert (=> bm!607132 m!7485144))

(declare-fun m!7485146 () Bool)

(assert (=> b!6724875 m!7485146))

(declare-fun m!7485148 () Bool)

(assert (=> bm!607133 m!7485148))

(declare-fun m!7485150 () Bool)

(assert (=> b!6724869 m!7485150))

(declare-fun m!7485152 () Bool)

(assert (=> bm!607135 m!7485152))

(assert (=> bm!607079 d!2113161))

(declare-fun d!2113167 () Bool)

(assert (=> d!2113167 (= (isEmpty!38157 (tail!12614 (unfocusZipperList!1972 zl!343))) ((_ is Nil!65828) (tail!12614 (unfocusZipperList!1972 zl!343))))))

(assert (=> b!6724235 d!2113167))

(declare-fun d!2113169 () Bool)

(assert (=> d!2113169 (= (tail!12614 (unfocusZipperList!1972 zl!343)) (t!379633 (unfocusZipperList!1972 zl!343)))))

(assert (=> b!6724235 d!2113169))

(declare-fun d!2113171 () Bool)

(assert (=> d!2113171 (= (isEmpty!38157 (t!379633 (unfocusZipperList!1972 zl!343))) ((_ is Nil!65828) (t!379633 (unfocusZipperList!1972 zl!343))))))

(assert (=> b!6724233 d!2113171))

(assert (=> d!2113007 d!2112999))

(declare-fun d!2113173 () Bool)

(assert (=> d!2113173 (= (flatMap!2032 z!1189 lambda!377161) (dynLambda!26252 lambda!377161 (h!72277 zl!343)))))

(assert (=> d!2113173 true))

(declare-fun _$13!4012 () Unit!159793)

(assert (=> d!2113173 (= (choose!50101 z!1189 (h!72277 zl!343) lambda!377161) _$13!4012)))

(declare-fun b_lambda!253165 () Bool)

(assert (=> (not b_lambda!253165) (not d!2113173)))

(declare-fun bs!1788856 () Bool)

(assert (= bs!1788856 d!2113173))

(assert (=> bs!1788856 m!7484580))

(assert (=> bs!1788856 m!7484816))

(assert (=> d!2113007 d!2113173))

(declare-fun d!2113177 () Bool)

(assert (=> d!2113177 (= (isDefined!13141 lt!2437067) (not (isEmpty!38158 lt!2437067)))))

(declare-fun bs!1788857 () Bool)

(assert (= bs!1788857 d!2113177))

(declare-fun m!7485168 () Bool)

(assert (=> bs!1788857 m!7485168))

(assert (=> d!2113039 d!2113177))

(declare-fun d!2113179 () Bool)

(declare-fun e!4063090 () Bool)

(assert (=> d!2113179 e!4063090))

(declare-fun c!1246835 () Bool)

(assert (=> d!2113179 (= c!1246835 ((_ is EmptyExpr!16551) (reg!16880 r!7292)))))

(declare-fun lt!2437081 () Bool)

(declare-fun e!4063088 () Bool)

(assert (=> d!2113179 (= lt!2437081 e!4063088)))

(declare-fun c!1246836 () Bool)

(assert (=> d!2113179 (= c!1246836 (isEmpty!38153 Nil!65830))))

(assert (=> d!2113179 (validRegex!8287 (reg!16880 r!7292))))

(assert (=> d!2113179 (= (matchR!8734 (reg!16880 r!7292) Nil!65830) lt!2437081)))

(declare-fun b!6724890 () Bool)

(declare-fun e!4063086 () Bool)

(assert (=> b!6724890 (= e!4063086 (not (= (head!13530 Nil!65830) (c!1246605 (reg!16880 r!7292)))))))

(declare-fun bm!607138 () Bool)

(declare-fun call!607143 () Bool)

(assert (=> bm!607138 (= call!607143 (isEmpty!38153 Nil!65830))))

(declare-fun b!6724891 () Bool)

(declare-fun e!4063089 () Bool)

(assert (=> b!6724891 (= e!4063089 (= (head!13530 Nil!65830) (c!1246605 (reg!16880 r!7292))))))

(declare-fun b!6724892 () Bool)

(assert (=> b!6724892 (= e!4063088 (nullable!6538 (reg!16880 r!7292)))))

(declare-fun b!6724893 () Bool)

(declare-fun res!2751520 () Bool)

(declare-fun e!4063092 () Bool)

(assert (=> b!6724893 (=> res!2751520 e!4063092)))

(assert (=> b!6724893 (= res!2751520 (not ((_ is ElementMatch!16551) (reg!16880 r!7292))))))

(declare-fun e!4063091 () Bool)

(assert (=> b!6724893 (= e!4063091 e!4063092)))

(declare-fun b!6724894 () Bool)

(assert (=> b!6724894 (= e!4063090 e!4063091)))

(declare-fun c!1246834 () Bool)

(assert (=> b!6724894 (= c!1246834 ((_ is EmptyLang!16551) (reg!16880 r!7292)))))

(declare-fun b!6724895 () Bool)

(declare-fun e!4063087 () Bool)

(assert (=> b!6724895 (= e!4063087 e!4063086)))

(declare-fun res!2751515 () Bool)

(assert (=> b!6724895 (=> res!2751515 e!4063086)))

(assert (=> b!6724895 (= res!2751515 call!607143)))

(declare-fun b!6724896 () Bool)

(declare-fun res!2751514 () Bool)

(assert (=> b!6724896 (=> res!2751514 e!4063086)))

(assert (=> b!6724896 (= res!2751514 (not (isEmpty!38153 (tail!12615 Nil!65830))))))

(declare-fun b!6724897 () Bool)

(declare-fun res!2751518 () Bool)

(assert (=> b!6724897 (=> (not res!2751518) (not e!4063089))))

(assert (=> b!6724897 (= res!2751518 (isEmpty!38153 (tail!12615 Nil!65830)))))

(declare-fun b!6724898 () Bool)

(assert (=> b!6724898 (= e!4063091 (not lt!2437081))))

(declare-fun b!6724899 () Bool)

(assert (=> b!6724899 (= e!4063092 e!4063087)))

(declare-fun res!2751516 () Bool)

(assert (=> b!6724899 (=> (not res!2751516) (not e!4063087))))

(assert (=> b!6724899 (= res!2751516 (not lt!2437081))))

(declare-fun b!6724900 () Bool)

(declare-fun res!2751519 () Bool)

(assert (=> b!6724900 (=> res!2751519 e!4063092)))

(assert (=> b!6724900 (= res!2751519 e!4063089)))

(declare-fun res!2751521 () Bool)

(assert (=> b!6724900 (=> (not res!2751521) (not e!4063089))))

(assert (=> b!6724900 (= res!2751521 lt!2437081)))

(declare-fun b!6724901 () Bool)

(assert (=> b!6724901 (= e!4063088 (matchR!8734 (derivativeStep!5223 (reg!16880 r!7292) (head!13530 Nil!65830)) (tail!12615 Nil!65830)))))

(declare-fun b!6724902 () Bool)

(declare-fun res!2751517 () Bool)

(assert (=> b!6724902 (=> (not res!2751517) (not e!4063089))))

(assert (=> b!6724902 (= res!2751517 (not call!607143))))

(declare-fun b!6724903 () Bool)

(assert (=> b!6724903 (= e!4063090 (= lt!2437081 call!607143))))

(assert (= (and d!2113179 c!1246836) b!6724892))

(assert (= (and d!2113179 (not c!1246836)) b!6724901))

(assert (= (and d!2113179 c!1246835) b!6724903))

(assert (= (and d!2113179 (not c!1246835)) b!6724894))

(assert (= (and b!6724894 c!1246834) b!6724898))

(assert (= (and b!6724894 (not c!1246834)) b!6724893))

(assert (= (and b!6724893 (not res!2751520)) b!6724900))

(assert (= (and b!6724900 res!2751521) b!6724902))

(assert (= (and b!6724902 res!2751517) b!6724897))

(assert (= (and b!6724897 res!2751518) b!6724891))

(assert (= (and b!6724900 (not res!2751519)) b!6724899))

(assert (= (and b!6724899 res!2751516) b!6724895))

(assert (= (and b!6724895 (not res!2751515)) b!6724896))

(assert (= (and b!6724896 (not res!2751514)) b!6724890))

(assert (= (or b!6724903 b!6724895 b!6724902) bm!607138))

(assert (=> b!6724892 m!7484656))

(declare-fun m!7485170 () Bool)

(assert (=> b!6724891 m!7485170))

(declare-fun m!7485172 () Bool)

(assert (=> d!2113179 m!7485172))

(assert (=> d!2113179 m!7484906))

(assert (=> bm!607138 m!7485172))

(declare-fun m!7485174 () Bool)

(assert (=> b!6724896 m!7485174))

(assert (=> b!6724896 m!7485174))

(declare-fun m!7485176 () Bool)

(assert (=> b!6724896 m!7485176))

(assert (=> b!6724897 m!7485174))

(assert (=> b!6724897 m!7485174))

(assert (=> b!6724897 m!7485176))

(assert (=> b!6724901 m!7485170))

(assert (=> b!6724901 m!7485170))

(declare-fun m!7485178 () Bool)

(assert (=> b!6724901 m!7485178))

(assert (=> b!6724901 m!7485174))

(assert (=> b!6724901 m!7485178))

(assert (=> b!6724901 m!7485174))

(declare-fun m!7485180 () Bool)

(assert (=> b!6724901 m!7485180))

(assert (=> b!6724890 m!7485170))

(assert (=> d!2113039 d!2113179))

(declare-fun bm!607139 () Bool)

(declare-fun call!607146 () Bool)

(declare-fun call!607145 () Bool)

(assert (=> bm!607139 (= call!607146 call!607145)))

(declare-fun b!6724904 () Bool)

(declare-fun e!4063094 () Bool)

(declare-fun e!4063099 () Bool)

(assert (=> b!6724904 (= e!4063094 e!4063099)))

(declare-fun res!2751523 () Bool)

(assert (=> b!6724904 (= res!2751523 (not (nullable!6538 (reg!16880 (reg!16880 r!7292)))))))

(assert (=> b!6724904 (=> (not res!2751523) (not e!4063099))))

(declare-fun b!6724905 () Bool)

(declare-fun res!2751522 () Bool)

(declare-fun e!4063093 () Bool)

(assert (=> b!6724905 (=> res!2751522 e!4063093)))

(assert (=> b!6724905 (= res!2751522 (not ((_ is Concat!25396) (reg!16880 r!7292))))))

(declare-fun e!4063096 () Bool)

(assert (=> b!6724905 (= e!4063096 e!4063093)))

(declare-fun d!2113181 () Bool)

(declare-fun res!2751526 () Bool)

(declare-fun e!4063098 () Bool)

(assert (=> d!2113181 (=> res!2751526 e!4063098)))

(assert (=> d!2113181 (= res!2751526 ((_ is ElementMatch!16551) (reg!16880 r!7292)))))

(assert (=> d!2113181 (= (validRegex!8287 (reg!16880 r!7292)) e!4063098)))

(declare-fun bm!607140 () Bool)

(declare-fun call!607144 () Bool)

(declare-fun c!1246837 () Bool)

(assert (=> bm!607140 (= call!607144 (validRegex!8287 (ite c!1246837 (regOne!33615 (reg!16880 r!7292)) (regOne!33614 (reg!16880 r!7292)))))))

(declare-fun b!6724906 () Bool)

(declare-fun e!4063095 () Bool)

(assert (=> b!6724906 (= e!4063095 call!607146)))

(declare-fun b!6724907 () Bool)

(declare-fun res!2751524 () Bool)

(declare-fun e!4063097 () Bool)

(assert (=> b!6724907 (=> (not res!2751524) (not e!4063097))))

(assert (=> b!6724907 (= res!2751524 call!607144)))

(assert (=> b!6724907 (= e!4063096 e!4063097)))

(declare-fun b!6724908 () Bool)

(assert (=> b!6724908 (= e!4063094 e!4063096)))

(assert (=> b!6724908 (= c!1246837 ((_ is Union!16551) (reg!16880 r!7292)))))

(declare-fun b!6724909 () Bool)

(assert (=> b!6724909 (= e!4063093 e!4063095)))

(declare-fun res!2751525 () Bool)

(assert (=> b!6724909 (=> (not res!2751525) (not e!4063095))))

(assert (=> b!6724909 (= res!2751525 call!607144)))

(declare-fun c!1246838 () Bool)

(declare-fun bm!607141 () Bool)

(assert (=> bm!607141 (= call!607145 (validRegex!8287 (ite c!1246838 (reg!16880 (reg!16880 r!7292)) (ite c!1246837 (regTwo!33615 (reg!16880 r!7292)) (regTwo!33614 (reg!16880 r!7292))))))))

(declare-fun b!6724910 () Bool)

(assert (=> b!6724910 (= e!4063098 e!4063094)))

(assert (=> b!6724910 (= c!1246838 ((_ is Star!16551) (reg!16880 r!7292)))))

(declare-fun b!6724911 () Bool)

(assert (=> b!6724911 (= e!4063097 call!607146)))

(declare-fun b!6724912 () Bool)

(assert (=> b!6724912 (= e!4063099 call!607145)))

(assert (= (and d!2113181 (not res!2751526)) b!6724910))

(assert (= (and b!6724910 c!1246838) b!6724904))

(assert (= (and b!6724910 (not c!1246838)) b!6724908))

(assert (= (and b!6724904 res!2751523) b!6724912))

(assert (= (and b!6724908 c!1246837) b!6724907))

(assert (= (and b!6724908 (not c!1246837)) b!6724905))

(assert (= (and b!6724907 res!2751524) b!6724911))

(assert (= (and b!6724905 (not res!2751522)) b!6724909))

(assert (= (and b!6724909 res!2751525) b!6724906))

(assert (= (or b!6724911 b!6724906) bm!607139))

(assert (= (or b!6724907 b!6724909) bm!607140))

(assert (= (or b!6724912 bm!607139) bm!607141))

(declare-fun m!7485182 () Bool)

(assert (=> b!6724904 m!7485182))

(declare-fun m!7485184 () Bool)

(assert (=> bm!607140 m!7485184))

(declare-fun m!7485186 () Bool)

(assert (=> bm!607141 m!7485186))

(assert (=> d!2113039 d!2113181))

(declare-fun d!2113183 () Bool)

(assert (=> d!2113183 (= (Exists!3619 lambda!377235) (choose!50104 lambda!377235))))

(declare-fun bs!1788858 () Bool)

(assert (= bs!1788858 d!2113183))

(declare-fun m!7485188 () Bool)

(assert (=> bs!1788858 m!7485188))

(assert (=> d!2113041 d!2113183))

(assert (=> d!2113041 d!2113025))

(declare-fun bs!1788859 () Bool)

(declare-fun d!2113185 () Bool)

(assert (= bs!1788859 (and d!2113185 d!2113027)))

(declare-fun lambda!377263 () Int)

(assert (=> bs!1788859 (= (= r!7292 (Star!16551 (reg!16880 r!7292))) (= lambda!377263 lambda!377225))))

(declare-fun bs!1788860 () Bool)

(assert (= bs!1788860 (and d!2113185 d!2113041)))

(assert (=> bs!1788860 (= lambda!377263 lambda!377235)))

(declare-fun bs!1788861 () Bool)

(assert (= bs!1788861 (and d!2113185 b!6723956)))

(assert (=> bs!1788861 (not (= lambda!377263 lambda!377159))))

(declare-fun bs!1788862 () Bool)

(assert (= bs!1788862 (and d!2113185 b!6724483)))

(assert (=> bs!1788862 (not (= lambda!377263 lambda!377214))))

(assert (=> bs!1788861 (not (= lambda!377263 lambda!377160))))

(assert (=> bs!1788859 (not (= lambda!377263 lambda!377226))))

(declare-fun bs!1788863 () Bool)

(assert (= bs!1788863 (and d!2113185 b!6724486)))

(assert (=> bs!1788863 (not (= lambda!377263 lambda!377213))))

(assert (=> bs!1788861 (= lambda!377263 lambda!377158)))

(declare-fun bs!1788864 () Bool)

(assert (= bs!1788864 (and d!2113185 d!2113035)))

(assert (=> bs!1788864 (not (= lambda!377263 lambda!377232))))

(assert (=> bs!1788864 (= lambda!377263 lambda!377231)))

(assert (=> d!2113185 true))

(assert (=> d!2113185 true))

(assert (=> d!2113185 true))

(assert (=> d!2113185 (= (isDefined!13141 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326)) (Exists!3619 lambda!377263))))

(assert (=> d!2113185 true))

(declare-fun _$89!2932 () Unit!159793)

(assert (=> d!2113185 (= (choose!50106 (reg!16880 r!7292) r!7292 s!2326) _$89!2932)))

(declare-fun bs!1788865 () Bool)

(assert (= bs!1788865 d!2113185))

(assert (=> bs!1788865 m!7484568))

(assert (=> bs!1788865 m!7484568))

(assert (=> bs!1788865 m!7484570))

(declare-fun m!7485196 () Bool)

(assert (=> bs!1788865 m!7485196))

(assert (=> d!2113041 d!2113185))

(assert (=> d!2113041 d!2113039))

(assert (=> d!2113041 d!2113181))

(declare-fun d!2113195 () Bool)

(assert (=> d!2113195 (= (isEmptyLang!1925 lt!2437009) ((_ is EmptyLang!16551) lt!2437009))))

(assert (=> b!6724231 d!2113195))

(declare-fun d!2113197 () Bool)

(assert (=> d!2113197 true))

(assert (=> d!2113197 true))

(declare-fun res!2751535 () Bool)

(assert (=> d!2113197 (= (choose!50104 lambda!377158) res!2751535)))

(assert (=> d!2113029 d!2113197))

(declare-fun bs!1788877 () Bool)

(declare-fun d!2113201 () Bool)

(assert (= bs!1788877 (and d!2113201 d!2112953)))

(declare-fun lambda!377265 () Int)

(assert (=> bs!1788877 (= lambda!377265 lambda!377176)))

(declare-fun bs!1788878 () Bool)

(assert (= bs!1788878 (and d!2113201 d!2113045)))

(assert (=> bs!1788878 (= lambda!377265 lambda!377237)))

(declare-fun bs!1788879 () Bool)

(assert (= bs!1788879 (and d!2113201 d!2113019)))

(assert (=> bs!1788879 (= lambda!377265 lambda!377217)))

(declare-fun bs!1788880 () Bool)

(assert (= bs!1788880 (and d!2113201 d!2112963)))

(assert (=> bs!1788880 (= lambda!377265 lambda!377182)))

(declare-fun bs!1788881 () Bool)

(assert (= bs!1788881 (and d!2113201 d!2113023)))

(assert (=> bs!1788881 (= lambda!377265 lambda!377220)))

(declare-fun bs!1788882 () Bool)

(assert (= bs!1788882 (and d!2113201 d!2113043)))

(assert (=> bs!1788882 (= lambda!377265 lambda!377236)))

(assert (=> d!2113201 (= (inv!84624 setElem!45841) (forall!15751 (exprs!6435 setElem!45841) lambda!377265))))

(declare-fun bs!1788883 () Bool)

(assert (= bs!1788883 d!2113201))

(declare-fun m!7485218 () Bool)

(assert (=> bs!1788883 m!7485218))

(assert (=> setNonEmpty!45841 d!2113201))

(declare-fun d!2113205 () Bool)

(declare-fun res!2751541 () Bool)

(declare-fun e!4063130 () Bool)

(assert (=> d!2113205 (=> res!2751541 e!4063130)))

(assert (=> d!2113205 (= res!2751541 ((_ is Nil!65828) lt!2437017))))

(assert (=> d!2113205 (= (forall!15751 lt!2437017 lambda!377182) e!4063130)))

(declare-fun b!6724966 () Bool)

(declare-fun e!4063131 () Bool)

(assert (=> b!6724966 (= e!4063130 e!4063131)))

(declare-fun res!2751542 () Bool)

(assert (=> b!6724966 (=> (not res!2751542) (not e!4063131))))

(assert (=> b!6724966 (= res!2751542 (dynLambda!26253 lambda!377182 (h!72276 lt!2437017)))))

(declare-fun b!6724967 () Bool)

(assert (=> b!6724967 (= e!4063131 (forall!15751 (t!379633 lt!2437017) lambda!377182))))

(assert (= (and d!2113205 (not res!2751541)) b!6724966))

(assert (= (and b!6724966 res!2751542) b!6724967))

(declare-fun b_lambda!253167 () Bool)

(assert (=> (not b_lambda!253167) (not b!6724966)))

(declare-fun m!7485226 () Bool)

(assert (=> b!6724966 m!7485226))

(declare-fun m!7485228 () Bool)

(assert (=> b!6724967 m!7485228))

(assert (=> d!2112963 d!2113205))

(declare-fun b!6724973 () Bool)

(declare-fun e!4063139 () (InoxSet Context!11870))

(declare-fun call!607164 () (InoxSet Context!11870))

(assert (=> b!6724973 (= e!4063139 call!607164)))

(declare-fun bm!607158 () Bool)

(declare-fun call!607168 () (InoxSet Context!11870))

(declare-fun call!607165 () (InoxSet Context!11870))

(assert (=> bm!607158 (= call!607168 call!607165)))

(declare-fun b!6724974 () Bool)

(declare-fun c!1246862 () Bool)

(assert (=> b!6724974 (= c!1246862 ((_ is Star!16551) (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))

(declare-fun e!4063137 () (InoxSet Context!11870))

(assert (=> b!6724974 (= e!4063137 e!4063139)))

(declare-fun b!6724975 () Bool)

(declare-fun e!4063140 () (InoxSet Context!11870))

(declare-fun call!607166 () (InoxSet Context!11870))

(assert (=> b!6724975 (= e!4063140 ((_ map or) call!607165 call!607166))))

(declare-fun call!607167 () List!65952)

(declare-fun c!1246865 () Bool)

(declare-fun c!1246863 () Bool)

(declare-fun c!1246866 () Bool)

(declare-fun bm!607159 () Bool)

(assert (=> bm!607159 (= call!607165 (derivationStepZipperDown!1779 (ite c!1246866 (regOne!33615 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (ite c!1246865 (regTwo!33614 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (ite c!1246863 (regOne!33614 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (reg!16880 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))) (ite (or c!1246866 c!1246865) (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (Context!11871 call!607167)) (h!72278 s!2326)))))

(declare-fun bm!607160 () Bool)

(declare-fun call!607163 () List!65952)

(assert (=> bm!607160 (= call!607166 (derivationStepZipperDown!1779 (ite c!1246866 (regTwo!33615 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (regOne!33614 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))) (ite c!1246866 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (Context!11871 call!607163)) (h!72278 s!2326)))))

(declare-fun b!6724976 () Bool)

(declare-fun e!4063135 () (InoxSet Context!11870))

(assert (=> b!6724976 (= e!4063135 e!4063137)))

(assert (=> b!6724976 (= c!1246863 ((_ is Concat!25396) (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))

(declare-fun d!2113209 () Bool)

(declare-fun c!1246864 () Bool)

(assert (=> d!2113209 (= c!1246864 (and ((_ is ElementMatch!16551) (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (= (c!1246605 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (h!72278 s!2326))))))

(declare-fun e!4063138 () (InoxSet Context!11870))

(assert (=> d!2113209 (= (derivationStepZipperDown!1779 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))) (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (h!72278 s!2326)) e!4063138)))

(declare-fun b!6724977 () Bool)

(assert (=> b!6724977 (= e!4063138 (store ((as const (Array Context!11870 Bool)) false) (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) true))))

(declare-fun bm!607161 () Bool)

(assert (=> bm!607161 (= call!607167 call!607163)))

(declare-fun b!6724978 () Bool)

(assert (=> b!6724978 (= e!4063137 call!607164)))

(declare-fun b!6724979 () Bool)

(assert (=> b!6724979 (= e!4063138 e!4063140)))

(assert (=> b!6724979 (= c!1246866 ((_ is Union!16551) (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))

(declare-fun b!6724980 () Bool)

(assert (=> b!6724980 (= e!4063135 ((_ map or) call!607166 call!607168))))

(declare-fun b!6724981 () Bool)

(assert (=> b!6724981 (= e!4063139 ((as const (Array Context!11870 Bool)) false))))

(declare-fun b!6724982 () Bool)

(declare-fun e!4063136 () Bool)

(assert (=> b!6724982 (= c!1246865 e!4063136)))

(declare-fun res!2751544 () Bool)

(assert (=> b!6724982 (=> (not res!2751544) (not e!4063136))))

(assert (=> b!6724982 (= res!2751544 ((_ is Concat!25396) (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))

(assert (=> b!6724982 (= e!4063140 e!4063135)))

(declare-fun bm!607162 () Bool)

(assert (=> bm!607162 (= call!607163 ($colon$colon!2368 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))) (ite (or c!1246865 c!1246863) (regTwo!33614 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))))

(declare-fun b!6724983 () Bool)

(assert (=> b!6724983 (= e!4063136 (nullable!6538 (regOne!33614 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))))

(declare-fun bm!607163 () Bool)

(assert (=> bm!607163 (= call!607164 call!607168)))

(assert (= (and d!2113209 c!1246864) b!6724977))

(assert (= (and d!2113209 (not c!1246864)) b!6724979))

(assert (= (and b!6724979 c!1246866) b!6724975))

(assert (= (and b!6724979 (not c!1246866)) b!6724982))

(assert (= (and b!6724982 res!2751544) b!6724983))

(assert (= (and b!6724982 c!1246865) b!6724980))

(assert (= (and b!6724982 (not c!1246865)) b!6724976))

(assert (= (and b!6724976 c!1246863) b!6724978))

(assert (= (and b!6724976 (not c!1246863)) b!6724974))

(assert (= (and b!6724974 c!1246862) b!6724973))

(assert (= (and b!6724974 (not c!1246862)) b!6724981))

(assert (= (or b!6724978 b!6724973) bm!607161))

(assert (= (or b!6724978 b!6724973) bm!607163))

(assert (= (or b!6724980 bm!607161) bm!607162))

(assert (= (or b!6724980 bm!607163) bm!607158))

(assert (= (or b!6724975 b!6724980) bm!607160))

(assert (= (or b!6724975 bm!607158) bm!607159))

(declare-fun m!7485236 () Bool)

(assert (=> bm!607159 m!7485236))

(declare-fun m!7485238 () Bool)

(assert (=> b!6724983 m!7485238))

(declare-fun m!7485240 () Bool)

(assert (=> bm!607160 m!7485240))

(declare-fun m!7485242 () Bool)

(assert (=> b!6724977 m!7485242))

(declare-fun m!7485250 () Bool)

(assert (=> bm!607162 m!7485250))

(assert (=> bm!607086 d!2113209))

(declare-fun bs!1788884 () Bool)

(declare-fun b!6725002 () Bool)

(assert (= bs!1788884 (and b!6725002 d!2113027)))

(declare-fun lambda!377266 () Int)

(assert (=> bs!1788884 (not (= lambda!377266 lambda!377225))))

(declare-fun bs!1788885 () Bool)

(assert (= bs!1788885 (and b!6725002 d!2113041)))

(assert (=> bs!1788885 (not (= lambda!377266 lambda!377235))))

(declare-fun bs!1788886 () Bool)

(assert (= bs!1788886 (and b!6725002 b!6723956)))

(assert (=> bs!1788886 (= (and (= (reg!16880 (regOne!33615 r!7292)) (reg!16880 r!7292)) (= (regOne!33615 r!7292) r!7292)) (= lambda!377266 lambda!377159))))

(declare-fun bs!1788887 () Bool)

(assert (= bs!1788887 (and b!6725002 b!6724483)))

(assert (=> bs!1788887 (not (= lambda!377266 lambda!377214))))

(assert (=> bs!1788886 (not (= lambda!377266 lambda!377160))))

(assert (=> bs!1788884 (= (and (= (reg!16880 (regOne!33615 r!7292)) (reg!16880 r!7292)) (= (regOne!33615 r!7292) (Star!16551 (reg!16880 r!7292)))) (= lambda!377266 lambda!377226))))

(declare-fun bs!1788888 () Bool)

(assert (= bs!1788888 (and b!6725002 d!2113185)))

(assert (=> bs!1788888 (not (= lambda!377266 lambda!377263))))

(declare-fun bs!1788889 () Bool)

(assert (= bs!1788889 (and b!6725002 b!6724486)))

(assert (=> bs!1788889 (= (and (= (reg!16880 (regOne!33615 r!7292)) (reg!16880 r!7292)) (= (regOne!33615 r!7292) r!7292)) (= lambda!377266 lambda!377213))))

(assert (=> bs!1788886 (not (= lambda!377266 lambda!377158))))

(declare-fun bs!1788890 () Bool)

(assert (= bs!1788890 (and b!6725002 d!2113035)))

(assert (=> bs!1788890 (not (= lambda!377266 lambda!377232))))

(assert (=> bs!1788890 (not (= lambda!377266 lambda!377231))))

(assert (=> b!6725002 true))

(assert (=> b!6725002 true))

(declare-fun bs!1788892 () Bool)

(declare-fun b!6724999 () Bool)

(assert (= bs!1788892 (and b!6724999 d!2113027)))

(declare-fun lambda!377267 () Int)

(assert (=> bs!1788892 (not (= lambda!377267 lambda!377225))))

(declare-fun bs!1788893 () Bool)

(assert (= bs!1788893 (and b!6724999 d!2113041)))

(assert (=> bs!1788893 (not (= lambda!377267 lambda!377235))))

(declare-fun bs!1788894 () Bool)

(assert (= bs!1788894 (and b!6724999 b!6725002)))

(assert (=> bs!1788894 (not (= lambda!377267 lambda!377266))))

(declare-fun bs!1788895 () Bool)

(assert (= bs!1788895 (and b!6724999 b!6723956)))

(assert (=> bs!1788895 (not (= lambda!377267 lambda!377159))))

(declare-fun bs!1788896 () Bool)

(assert (= bs!1788896 (and b!6724999 b!6724483)))

(assert (=> bs!1788896 (= (and (= (regOne!33614 (regOne!33615 r!7292)) (regOne!33614 r!7292)) (= (regTwo!33614 (regOne!33615 r!7292)) (regTwo!33614 r!7292))) (= lambda!377267 lambda!377214))))

(assert (=> bs!1788895 (= (and (= (regOne!33614 (regOne!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33614 (regOne!33615 r!7292)) r!7292)) (= lambda!377267 lambda!377160))))

(assert (=> bs!1788892 (not (= lambda!377267 lambda!377226))))

(declare-fun bs!1788897 () Bool)

(assert (= bs!1788897 (and b!6724999 d!2113185)))

(assert (=> bs!1788897 (not (= lambda!377267 lambda!377263))))

(declare-fun bs!1788898 () Bool)

(assert (= bs!1788898 (and b!6724999 b!6724486)))

(assert (=> bs!1788898 (not (= lambda!377267 lambda!377213))))

(assert (=> bs!1788895 (not (= lambda!377267 lambda!377158))))

(declare-fun bs!1788900 () Bool)

(assert (= bs!1788900 (and b!6724999 d!2113035)))

(assert (=> bs!1788900 (= (and (= (regOne!33614 (regOne!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33614 (regOne!33615 r!7292)) r!7292)) (= lambda!377267 lambda!377232))))

(assert (=> bs!1788900 (not (= lambda!377267 lambda!377231))))

(assert (=> b!6724999 true))

(assert (=> b!6724999 true))

(declare-fun b!6724995 () Bool)

(declare-fun e!4063148 () Bool)

(assert (=> b!6724995 (= e!4063148 (= s!2326 (Cons!65830 (c!1246605 (regOne!33615 r!7292)) Nil!65830)))))

(declare-fun b!6724996 () Bool)

(declare-fun e!4063153 () Bool)

(declare-fun call!607175 () Bool)

(assert (=> b!6724996 (= e!4063153 call!607175)))

(declare-fun bm!607170 () Bool)

(assert (=> bm!607170 (= call!607175 (isEmpty!38153 s!2326))))

(declare-fun b!6724997 () Bool)

(declare-fun res!2751548 () Bool)

(declare-fun e!4063149 () Bool)

(assert (=> b!6724997 (=> res!2751548 e!4063149)))

(assert (=> b!6724997 (= res!2751548 call!607175)))

(declare-fun e!4063152 () Bool)

(assert (=> b!6724997 (= e!4063152 e!4063149)))

(declare-fun b!6724998 () Bool)

(declare-fun c!1246873 () Bool)

(assert (=> b!6724998 (= c!1246873 ((_ is Union!16551) (regOne!33615 r!7292)))))

(declare-fun e!4063147 () Bool)

(assert (=> b!6724998 (= e!4063148 e!4063147)))

(declare-fun d!2113213 () Bool)

(declare-fun c!1246875 () Bool)

(assert (=> d!2113213 (= c!1246875 ((_ is EmptyExpr!16551) (regOne!33615 r!7292)))))

(assert (=> d!2113213 (= (matchRSpec!3652 (regOne!33615 r!7292) s!2326) e!4063153)))

(declare-fun call!607176 () Bool)

(assert (=> b!6724999 (= e!4063152 call!607176)))

(declare-fun b!6725000 () Bool)

(declare-fun e!4063151 () Bool)

(assert (=> b!6725000 (= e!4063153 e!4063151)))

(declare-fun res!2751546 () Bool)

(assert (=> b!6725000 (= res!2751546 (not ((_ is EmptyLang!16551) (regOne!33615 r!7292))))))

(assert (=> b!6725000 (=> (not res!2751546) (not e!4063151))))

(declare-fun bm!607171 () Bool)

(declare-fun c!1246874 () Bool)

(assert (=> bm!607171 (= call!607176 (Exists!3619 (ite c!1246874 lambda!377266 lambda!377267)))))

(declare-fun b!6725001 () Bool)

(assert (=> b!6725001 (= e!4063147 e!4063152)))

(assert (=> b!6725001 (= c!1246874 ((_ is Star!16551) (regOne!33615 r!7292)))))

(assert (=> b!6725002 (= e!4063149 call!607176)))

(declare-fun b!6725003 () Bool)

(declare-fun c!1246872 () Bool)

(assert (=> b!6725003 (= c!1246872 ((_ is ElementMatch!16551) (regOne!33615 r!7292)))))

(assert (=> b!6725003 (= e!4063151 e!4063148)))

(declare-fun b!6725004 () Bool)

(declare-fun e!4063150 () Bool)

(assert (=> b!6725004 (= e!4063147 e!4063150)))

(declare-fun res!2751547 () Bool)

(assert (=> b!6725004 (= res!2751547 (matchRSpec!3652 (regOne!33615 (regOne!33615 r!7292)) s!2326))))

(assert (=> b!6725004 (=> res!2751547 e!4063150)))

(declare-fun b!6725005 () Bool)

(assert (=> b!6725005 (= e!4063150 (matchRSpec!3652 (regTwo!33615 (regOne!33615 r!7292)) s!2326))))

(assert (= (and d!2113213 c!1246875) b!6724996))

(assert (= (and d!2113213 (not c!1246875)) b!6725000))

(assert (= (and b!6725000 res!2751546) b!6725003))

(assert (= (and b!6725003 c!1246872) b!6724995))

(assert (= (and b!6725003 (not c!1246872)) b!6724998))

(assert (= (and b!6724998 c!1246873) b!6725004))

(assert (= (and b!6724998 (not c!1246873)) b!6725001))

(assert (= (and b!6725004 (not res!2751547)) b!6725005))

(assert (= (and b!6725001 c!1246874) b!6724997))

(assert (= (and b!6725001 (not c!1246874)) b!6724999))

(assert (= (and b!6724997 (not res!2751548)) b!6725002))

(assert (= (or b!6725002 b!6724999) bm!607171))

(assert (= (or b!6724996 b!6724997) bm!607170))

(assert (=> bm!607170 m!7484558))

(declare-fun m!7485272 () Bool)

(assert (=> bm!607171 m!7485272))

(declare-fun m!7485274 () Bool)

(assert (=> b!6725004 m!7485274))

(declare-fun m!7485276 () Bool)

(assert (=> b!6725005 m!7485276))

(assert (=> b!6724488 d!2113213))

(declare-fun d!2113229 () Bool)

(declare-fun e!4063167 () Bool)

(assert (=> d!2113229 e!4063167))

(declare-fun c!1246882 () Bool)

(assert (=> d!2113229 (= c!1246882 ((_ is EmptyExpr!16551) r!7292))))

(declare-fun lt!2437086 () Bool)

(declare-fun e!4063165 () Bool)

(assert (=> d!2113229 (= lt!2437086 e!4063165)))

(declare-fun c!1246883 () Bool)

(assert (=> d!2113229 (= c!1246883 (isEmpty!38153 (_2!36829 (get!22898 lt!2437067))))))

(assert (=> d!2113229 (validRegex!8287 r!7292)))

(assert (=> d!2113229 (= (matchR!8734 r!7292 (_2!36829 (get!22898 lt!2437067))) lt!2437086)))

(declare-fun b!6725020 () Bool)

(declare-fun e!4063163 () Bool)

(assert (=> b!6725020 (= e!4063163 (not (= (head!13530 (_2!36829 (get!22898 lt!2437067))) (c!1246605 r!7292))))))

(declare-fun bm!607178 () Bool)

(declare-fun call!607183 () Bool)

(assert (=> bm!607178 (= call!607183 (isEmpty!38153 (_2!36829 (get!22898 lt!2437067))))))

(declare-fun b!6725021 () Bool)

(declare-fun e!4063166 () Bool)

(assert (=> b!6725021 (= e!4063166 (= (head!13530 (_2!36829 (get!22898 lt!2437067))) (c!1246605 r!7292)))))

(declare-fun b!6725022 () Bool)

(assert (=> b!6725022 (= e!4063165 (nullable!6538 r!7292))))

(declare-fun b!6725023 () Bool)

(declare-fun res!2751559 () Bool)

(declare-fun e!4063169 () Bool)

(assert (=> b!6725023 (=> res!2751559 e!4063169)))

(assert (=> b!6725023 (= res!2751559 (not ((_ is ElementMatch!16551) r!7292)))))

(declare-fun e!4063168 () Bool)

(assert (=> b!6725023 (= e!4063168 e!4063169)))

(declare-fun b!6725024 () Bool)

(assert (=> b!6725024 (= e!4063167 e!4063168)))

(declare-fun c!1246881 () Bool)

(assert (=> b!6725024 (= c!1246881 ((_ is EmptyLang!16551) r!7292))))

(declare-fun b!6725025 () Bool)

(declare-fun e!4063164 () Bool)

(assert (=> b!6725025 (= e!4063164 e!4063163)))

(declare-fun res!2751554 () Bool)

(assert (=> b!6725025 (=> res!2751554 e!4063163)))

(assert (=> b!6725025 (= res!2751554 call!607183)))

(declare-fun b!6725026 () Bool)

(declare-fun res!2751553 () Bool)

(assert (=> b!6725026 (=> res!2751553 e!4063163)))

(assert (=> b!6725026 (= res!2751553 (not (isEmpty!38153 (tail!12615 (_2!36829 (get!22898 lt!2437067))))))))

(declare-fun b!6725027 () Bool)

(declare-fun res!2751557 () Bool)

(assert (=> b!6725027 (=> (not res!2751557) (not e!4063166))))

(assert (=> b!6725027 (= res!2751557 (isEmpty!38153 (tail!12615 (_2!36829 (get!22898 lt!2437067)))))))

(declare-fun b!6725028 () Bool)

(assert (=> b!6725028 (= e!4063168 (not lt!2437086))))

(declare-fun b!6725029 () Bool)

(assert (=> b!6725029 (= e!4063169 e!4063164)))

(declare-fun res!2751555 () Bool)

(assert (=> b!6725029 (=> (not res!2751555) (not e!4063164))))

(assert (=> b!6725029 (= res!2751555 (not lt!2437086))))

(declare-fun b!6725030 () Bool)

(declare-fun res!2751558 () Bool)

(assert (=> b!6725030 (=> res!2751558 e!4063169)))

(assert (=> b!6725030 (= res!2751558 e!4063166)))

(declare-fun res!2751560 () Bool)

(assert (=> b!6725030 (=> (not res!2751560) (not e!4063166))))

(assert (=> b!6725030 (= res!2751560 lt!2437086)))

(declare-fun b!6725031 () Bool)

(assert (=> b!6725031 (= e!4063165 (matchR!8734 (derivativeStep!5223 r!7292 (head!13530 (_2!36829 (get!22898 lt!2437067)))) (tail!12615 (_2!36829 (get!22898 lt!2437067)))))))

(declare-fun b!6725032 () Bool)

(declare-fun res!2751556 () Bool)

(assert (=> b!6725032 (=> (not res!2751556) (not e!4063166))))

(assert (=> b!6725032 (= res!2751556 (not call!607183))))

(declare-fun b!6725033 () Bool)

(assert (=> b!6725033 (= e!4063167 (= lt!2437086 call!607183))))

(assert (= (and d!2113229 c!1246883) b!6725022))

(assert (= (and d!2113229 (not c!1246883)) b!6725031))

(assert (= (and d!2113229 c!1246882) b!6725033))

(assert (= (and d!2113229 (not c!1246882)) b!6725024))

(assert (= (and b!6725024 c!1246881) b!6725028))

(assert (= (and b!6725024 (not c!1246881)) b!6725023))

(assert (= (and b!6725023 (not res!2751559)) b!6725030))

(assert (= (and b!6725030 res!2751560) b!6725032))

(assert (= (and b!6725032 res!2751556) b!6725027))

(assert (= (and b!6725027 res!2751557) b!6725021))

(assert (= (and b!6725030 (not res!2751558)) b!6725029))

(assert (= (and b!6725029 res!2751555) b!6725025))

(assert (= (and b!6725025 (not res!2751554)) b!6725026))

(assert (= (and b!6725026 (not res!2751553)) b!6725020))

(assert (= (or b!6725033 b!6725025 b!6725032) bm!607178))

(assert (=> b!6725022 m!7484856))

(declare-fun m!7485282 () Bool)

(assert (=> b!6725021 m!7485282))

(declare-fun m!7485284 () Bool)

(assert (=> d!2113229 m!7485284))

(assert (=> d!2113229 m!7484586))

(assert (=> bm!607178 m!7485284))

(declare-fun m!7485286 () Bool)

(assert (=> b!6725026 m!7485286))

(assert (=> b!6725026 m!7485286))

(declare-fun m!7485288 () Bool)

(assert (=> b!6725026 m!7485288))

(assert (=> b!6725027 m!7485286))

(assert (=> b!6725027 m!7485286))

(assert (=> b!6725027 m!7485288))

(assert (=> b!6725031 m!7485282))

(assert (=> b!6725031 m!7485282))

(declare-fun m!7485290 () Bool)

(assert (=> b!6725031 m!7485290))

(assert (=> b!6725031 m!7485286))

(assert (=> b!6725031 m!7485290))

(assert (=> b!6725031 m!7485286))

(declare-fun m!7485292 () Bool)

(assert (=> b!6725031 m!7485292))

(assert (=> b!6725020 m!7485282))

(assert (=> b!6724608 d!2113229))

(declare-fun d!2113235 () Bool)

(assert (=> d!2113235 (= (get!22898 lt!2437067) (v!52637 lt!2437067))))

(assert (=> b!6724608 d!2113235))

(declare-fun d!2113237 () Bool)

(declare-fun e!4063182 () Bool)

(assert (=> d!2113237 e!4063182))

(declare-fun c!1246890 () Bool)

(assert (=> d!2113237 (= c!1246890 ((_ is EmptyExpr!16551) (derivativeStep!5223 r!7292 (head!13530 s!2326))))))

(declare-fun lt!2437087 () Bool)

(declare-fun e!4063180 () Bool)

(assert (=> d!2113237 (= lt!2437087 e!4063180)))

(declare-fun c!1246891 () Bool)

(assert (=> d!2113237 (= c!1246891 (isEmpty!38153 (tail!12615 s!2326)))))

(assert (=> d!2113237 (validRegex!8287 (derivativeStep!5223 r!7292 (head!13530 s!2326)))))

(assert (=> d!2113237 (= (matchR!8734 (derivativeStep!5223 r!7292 (head!13530 s!2326)) (tail!12615 s!2326)) lt!2437087)))

(declare-fun b!6725047 () Bool)

(declare-fun e!4063178 () Bool)

(assert (=> b!6725047 (= e!4063178 (not (= (head!13530 (tail!12615 s!2326)) (c!1246605 (derivativeStep!5223 r!7292 (head!13530 s!2326))))))))

(declare-fun bm!607185 () Bool)

(declare-fun call!607190 () Bool)

(assert (=> bm!607185 (= call!607190 (isEmpty!38153 (tail!12615 s!2326)))))

(declare-fun b!6725048 () Bool)

(declare-fun e!4063181 () Bool)

(assert (=> b!6725048 (= e!4063181 (= (head!13530 (tail!12615 s!2326)) (c!1246605 (derivativeStep!5223 r!7292 (head!13530 s!2326)))))))

(declare-fun b!6725049 () Bool)

(assert (=> b!6725049 (= e!4063180 (nullable!6538 (derivativeStep!5223 r!7292 (head!13530 s!2326))))))

(declare-fun b!6725050 () Bool)

(declare-fun res!2751570 () Bool)

(declare-fun e!4063184 () Bool)

(assert (=> b!6725050 (=> res!2751570 e!4063184)))

(assert (=> b!6725050 (= res!2751570 (not ((_ is ElementMatch!16551) (derivativeStep!5223 r!7292 (head!13530 s!2326)))))))

(declare-fun e!4063183 () Bool)

(assert (=> b!6725050 (= e!4063183 e!4063184)))

(declare-fun b!6725051 () Bool)

(assert (=> b!6725051 (= e!4063182 e!4063183)))

(declare-fun c!1246889 () Bool)

(assert (=> b!6725051 (= c!1246889 ((_ is EmptyLang!16551) (derivativeStep!5223 r!7292 (head!13530 s!2326))))))

(declare-fun b!6725052 () Bool)

(declare-fun e!4063179 () Bool)

(assert (=> b!6725052 (= e!4063179 e!4063178)))

(declare-fun res!2751565 () Bool)

(assert (=> b!6725052 (=> res!2751565 e!4063178)))

(assert (=> b!6725052 (= res!2751565 call!607190)))

(declare-fun b!6725053 () Bool)

(declare-fun res!2751564 () Bool)

(assert (=> b!6725053 (=> res!2751564 e!4063178)))

(assert (=> b!6725053 (= res!2751564 (not (isEmpty!38153 (tail!12615 (tail!12615 s!2326)))))))

(declare-fun b!6725054 () Bool)

(declare-fun res!2751568 () Bool)

(assert (=> b!6725054 (=> (not res!2751568) (not e!4063181))))

(assert (=> b!6725054 (= res!2751568 (isEmpty!38153 (tail!12615 (tail!12615 s!2326))))))

(declare-fun b!6725055 () Bool)

(assert (=> b!6725055 (= e!4063183 (not lt!2437087))))

(declare-fun b!6725056 () Bool)

(assert (=> b!6725056 (= e!4063184 e!4063179)))

(declare-fun res!2751566 () Bool)

(assert (=> b!6725056 (=> (not res!2751566) (not e!4063179))))

(assert (=> b!6725056 (= res!2751566 (not lt!2437087))))

(declare-fun b!6725057 () Bool)

(declare-fun res!2751569 () Bool)

(assert (=> b!6725057 (=> res!2751569 e!4063184)))

(assert (=> b!6725057 (= res!2751569 e!4063181)))

(declare-fun res!2751571 () Bool)

(assert (=> b!6725057 (=> (not res!2751571) (not e!4063181))))

(assert (=> b!6725057 (= res!2751571 lt!2437087)))

(declare-fun b!6725058 () Bool)

(assert (=> b!6725058 (= e!4063180 (matchR!8734 (derivativeStep!5223 (derivativeStep!5223 r!7292 (head!13530 s!2326)) (head!13530 (tail!12615 s!2326))) (tail!12615 (tail!12615 s!2326))))))

(declare-fun b!6725059 () Bool)

(declare-fun res!2751567 () Bool)

(assert (=> b!6725059 (=> (not res!2751567) (not e!4063181))))

(assert (=> b!6725059 (= res!2751567 (not call!607190))))

(declare-fun b!6725060 () Bool)

(assert (=> b!6725060 (= e!4063182 (= lt!2437087 call!607190))))

(assert (= (and d!2113237 c!1246891) b!6725049))

(assert (= (and d!2113237 (not c!1246891)) b!6725058))

(assert (= (and d!2113237 c!1246890) b!6725060))

(assert (= (and d!2113237 (not c!1246890)) b!6725051))

(assert (= (and b!6725051 c!1246889) b!6725055))

(assert (= (and b!6725051 (not c!1246889)) b!6725050))

(assert (= (and b!6725050 (not res!2751570)) b!6725057))

(assert (= (and b!6725057 res!2751571) b!6725059))

(assert (= (and b!6725059 res!2751567) b!6725054))

(assert (= (and b!6725054 res!2751568) b!6725048))

(assert (= (and b!6725057 (not res!2751569)) b!6725056))

(assert (= (and b!6725056 res!2751566) b!6725052))

(assert (= (and b!6725052 (not res!2751565)) b!6725053))

(assert (= (and b!6725053 (not res!2751564)) b!6725047))

(assert (= (or b!6725060 b!6725052 b!6725059) bm!607185))

(assert (=> b!6725049 m!7484864))

(declare-fun m!7485304 () Bool)

(assert (=> b!6725049 m!7485304))

(assert (=> b!6725048 m!7484860))

(declare-fun m!7485306 () Bool)

(assert (=> b!6725048 m!7485306))

(assert (=> d!2113237 m!7484860))

(assert (=> d!2113237 m!7484862))

(assert (=> d!2113237 m!7484864))

(declare-fun m!7485308 () Bool)

(assert (=> d!2113237 m!7485308))

(assert (=> bm!607185 m!7484860))

(assert (=> bm!607185 m!7484862))

(assert (=> b!6725053 m!7484860))

(declare-fun m!7485310 () Bool)

(assert (=> b!6725053 m!7485310))

(assert (=> b!6725053 m!7485310))

(declare-fun m!7485312 () Bool)

(assert (=> b!6725053 m!7485312))

(assert (=> b!6725054 m!7484860))

(assert (=> b!6725054 m!7485310))

(assert (=> b!6725054 m!7485310))

(assert (=> b!6725054 m!7485312))

(assert (=> b!6725058 m!7484860))

(assert (=> b!6725058 m!7485306))

(assert (=> b!6725058 m!7484864))

(assert (=> b!6725058 m!7485306))

(declare-fun m!7485314 () Bool)

(assert (=> b!6725058 m!7485314))

(assert (=> b!6725058 m!7484860))

(assert (=> b!6725058 m!7485310))

(assert (=> b!6725058 m!7485314))

(assert (=> b!6725058 m!7485310))

(declare-fun m!7485316 () Bool)

(assert (=> b!6725058 m!7485316))

(assert (=> b!6725047 m!7484860))

(assert (=> b!6725047 m!7485306))

(assert (=> b!6724529 d!2113237))

(declare-fun b!6725132 () Bool)

(declare-fun call!607206 () Regex!16551)

(declare-fun call!607209 () Regex!16551)

(declare-fun e!4063230 () Regex!16551)

(assert (=> b!6725132 (= e!4063230 (Union!16551 (Concat!25396 call!607209 (regTwo!33614 r!7292)) call!607206))))

(declare-fun b!6725133 () Bool)

(declare-fun e!4063231 () Regex!16551)

(declare-fun call!607207 () Regex!16551)

(assert (=> b!6725133 (= e!4063231 (Union!16551 call!607207 call!607209))))

(declare-fun c!1246914 () Bool)

(declare-fun bm!607201 () Bool)

(assert (=> bm!607201 (= call!607209 (derivativeStep!5223 (ite c!1246914 (regTwo!33615 r!7292) (regOne!33614 r!7292)) (head!13530 s!2326)))))

(declare-fun bm!607202 () Bool)

(declare-fun call!607208 () Regex!16551)

(assert (=> bm!607202 (= call!607206 call!607208)))

(declare-fun c!1246915 () Bool)

(declare-fun bm!607203 () Bool)

(declare-fun c!1246916 () Bool)

(assert (=> bm!607203 (= call!607207 (derivativeStep!5223 (ite c!1246914 (regOne!33615 r!7292) (ite c!1246916 (reg!16880 r!7292) (ite c!1246915 (regTwo!33614 r!7292) (regOne!33614 r!7292)))) (head!13530 s!2326)))))

(declare-fun b!6725134 () Bool)

(declare-fun e!4063233 () Regex!16551)

(assert (=> b!6725134 (= e!4063233 EmptyLang!16551)))

(declare-fun b!6725135 () Bool)

(declare-fun e!4063229 () Regex!16551)

(assert (=> b!6725135 (= e!4063233 e!4063229)))

(declare-fun c!1246913 () Bool)

(assert (=> b!6725135 (= c!1246913 ((_ is ElementMatch!16551) r!7292))))

(declare-fun b!6725136 () Bool)

(declare-fun e!4063232 () Regex!16551)

(assert (=> b!6725136 (= e!4063231 e!4063232)))

(assert (=> b!6725136 (= c!1246916 ((_ is Star!16551) r!7292))))

(declare-fun b!6725137 () Bool)

(assert (=> b!6725137 (= e!4063232 (Concat!25396 call!607208 r!7292))))

(declare-fun b!6725131 () Bool)

(assert (=> b!6725131 (= e!4063229 (ite (= (head!13530 s!2326) (c!1246605 r!7292)) EmptyExpr!16551 EmptyLang!16551))))

(declare-fun d!2113241 () Bool)

(declare-fun lt!2437095 () Regex!16551)

(assert (=> d!2113241 (validRegex!8287 lt!2437095)))

(assert (=> d!2113241 (= lt!2437095 e!4063233)))

(declare-fun c!1246912 () Bool)

(assert (=> d!2113241 (= c!1246912 (or ((_ is EmptyExpr!16551) r!7292) ((_ is EmptyLang!16551) r!7292)))))

(assert (=> d!2113241 (validRegex!8287 r!7292)))

(assert (=> d!2113241 (= (derivativeStep!5223 r!7292 (head!13530 s!2326)) lt!2437095)))

(declare-fun b!6725138 () Bool)

(assert (=> b!6725138 (= c!1246915 (nullable!6538 (regOne!33614 r!7292)))))

(assert (=> b!6725138 (= e!4063232 e!4063230)))

(declare-fun bm!607204 () Bool)

(assert (=> bm!607204 (= call!607208 call!607207)))

(declare-fun b!6725139 () Bool)

(assert (=> b!6725139 (= e!4063230 (Union!16551 (Concat!25396 call!607206 (regTwo!33614 r!7292)) EmptyLang!16551))))

(declare-fun b!6725140 () Bool)

(assert (=> b!6725140 (= c!1246914 ((_ is Union!16551) r!7292))))

(assert (=> b!6725140 (= e!4063229 e!4063231)))

(assert (= (and d!2113241 c!1246912) b!6725134))

(assert (= (and d!2113241 (not c!1246912)) b!6725135))

(assert (= (and b!6725135 c!1246913) b!6725131))

(assert (= (and b!6725135 (not c!1246913)) b!6725140))

(assert (= (and b!6725140 c!1246914) b!6725133))

(assert (= (and b!6725140 (not c!1246914)) b!6725136))

(assert (= (and b!6725136 c!1246916) b!6725137))

(assert (= (and b!6725136 (not c!1246916)) b!6725138))

(assert (= (and b!6725138 c!1246915) b!6725132))

(assert (= (and b!6725138 (not c!1246915)) b!6725139))

(assert (= (or b!6725132 b!6725139) bm!607202))

(assert (= (or b!6725137 bm!607202) bm!607204))

(assert (= (or b!6725133 b!6725132) bm!607201))

(assert (= (or b!6725133 bm!607204) bm!607203))

(assert (=> bm!607201 m!7484858))

(declare-fun m!7485386 () Bool)

(assert (=> bm!607201 m!7485386))

(assert (=> bm!607203 m!7484858))

(declare-fun m!7485388 () Bool)

(assert (=> bm!607203 m!7485388))

(declare-fun m!7485390 () Bool)

(assert (=> d!2113241 m!7485390))

(assert (=> d!2113241 m!7484586))

(assert (=> b!6725138 m!7484750))

(assert (=> b!6724529 d!2113241))

(declare-fun d!2113259 () Bool)

(assert (=> d!2113259 (= (head!13530 s!2326) (h!72278 s!2326))))

(assert (=> b!6724529 d!2113259))

(declare-fun d!2113261 () Bool)

(assert (=> d!2113261 (= (tail!12615 s!2326) (t!379635 s!2326))))

(assert (=> b!6724529 d!2113261))

(declare-fun d!2113263 () Bool)

(assert (=> d!2113263 (= (Exists!3619 lambda!377231) (choose!50104 lambda!377231))))

(declare-fun bs!1788903 () Bool)

(assert (= bs!1788903 d!2113263))

(declare-fun m!7485392 () Bool)

(assert (=> bs!1788903 m!7485392))

(assert (=> d!2113035 d!2113263))

(declare-fun d!2113265 () Bool)

(assert (=> d!2113265 (= (Exists!3619 lambda!377232) (choose!50104 lambda!377232))))

(declare-fun bs!1788904 () Bool)

(assert (= bs!1788904 d!2113265))

(declare-fun m!7485394 () Bool)

(assert (=> bs!1788904 m!7485394))

(assert (=> d!2113035 d!2113265))

(declare-fun bs!1788906 () Bool)

(declare-fun d!2113267 () Bool)

(assert (= bs!1788906 (and d!2113267 d!2113027)))

(declare-fun lambda!377272 () Int)

(assert (=> bs!1788906 (= (= r!7292 (Star!16551 (reg!16880 r!7292))) (= lambda!377272 lambda!377225))))

(declare-fun bs!1788908 () Bool)

(assert (= bs!1788908 (and d!2113267 d!2113041)))

(assert (=> bs!1788908 (= lambda!377272 lambda!377235)))

(declare-fun bs!1788910 () Bool)

(assert (= bs!1788910 (and d!2113267 b!6725002)))

(assert (=> bs!1788910 (not (= lambda!377272 lambda!377266))))

(declare-fun bs!1788912 () Bool)

(assert (= bs!1788912 (and d!2113267 b!6723956)))

(assert (=> bs!1788912 (not (= lambda!377272 lambda!377159))))

(declare-fun bs!1788915 () Bool)

(assert (= bs!1788915 (and d!2113267 b!6724483)))

(assert (=> bs!1788915 (not (= lambda!377272 lambda!377214))))

(assert (=> bs!1788912 (not (= lambda!377272 lambda!377160))))

(assert (=> bs!1788906 (not (= lambda!377272 lambda!377226))))

(declare-fun bs!1788916 () Bool)

(assert (= bs!1788916 (and d!2113267 b!6724486)))

(assert (=> bs!1788916 (not (= lambda!377272 lambda!377213))))

(assert (=> bs!1788912 (= lambda!377272 lambda!377158)))

(declare-fun bs!1788917 () Bool)

(assert (= bs!1788917 (and d!2113267 d!2113035)))

(assert (=> bs!1788917 (not (= lambda!377272 lambda!377232))))

(assert (=> bs!1788917 (= lambda!377272 lambda!377231)))

(declare-fun bs!1788918 () Bool)

(assert (= bs!1788918 (and d!2113267 d!2113185)))

(assert (=> bs!1788918 (= lambda!377272 lambda!377263)))

(declare-fun bs!1788919 () Bool)

(assert (= bs!1788919 (and d!2113267 b!6724999)))

(assert (=> bs!1788919 (not (= lambda!377272 lambda!377267))))

(assert (=> d!2113267 true))

(assert (=> d!2113267 true))

(assert (=> d!2113267 true))

(declare-fun lambda!377273 () Int)

(assert (=> bs!1788906 (not (= lambda!377273 lambda!377225))))

(assert (=> bs!1788908 (not (= lambda!377273 lambda!377235))))

(assert (=> bs!1788910 (not (= lambda!377273 lambda!377266))))

(declare-fun bs!1788920 () Bool)

(assert (= bs!1788920 d!2113267))

(assert (=> bs!1788920 (not (= lambda!377273 lambda!377272))))

(assert (=> bs!1788912 (not (= lambda!377273 lambda!377159))))

(assert (=> bs!1788915 (= (and (= (reg!16880 r!7292) (regOne!33614 r!7292)) (= r!7292 (regTwo!33614 r!7292))) (= lambda!377273 lambda!377214))))

(assert (=> bs!1788912 (= lambda!377273 lambda!377160)))

(assert (=> bs!1788906 (not (= lambda!377273 lambda!377226))))

(assert (=> bs!1788916 (not (= lambda!377273 lambda!377213))))

(assert (=> bs!1788912 (not (= lambda!377273 lambda!377158))))

(assert (=> bs!1788917 (= lambda!377273 lambda!377232)))

(assert (=> bs!1788917 (not (= lambda!377273 lambda!377231))))

(assert (=> bs!1788918 (not (= lambda!377273 lambda!377263))))

(assert (=> bs!1788919 (= (and (= (reg!16880 r!7292) (regOne!33614 (regOne!33615 r!7292))) (= r!7292 (regTwo!33614 (regOne!33615 r!7292)))) (= lambda!377273 lambda!377267))))

(assert (=> d!2113267 true))

(assert (=> d!2113267 true))

(assert (=> d!2113267 true))

(assert (=> d!2113267 (= (Exists!3619 lambda!377272) (Exists!3619 lambda!377273))))

(assert (=> d!2113267 true))

(declare-fun _$90!2554 () Unit!159793)

(assert (=> d!2113267 (= (choose!50105 (reg!16880 r!7292) r!7292 s!2326) _$90!2554)))

(declare-fun m!7485432 () Bool)

(assert (=> bs!1788920 m!7485432))

(declare-fun m!7485434 () Bool)

(assert (=> bs!1788920 m!7485434))

(assert (=> d!2113035 d!2113267))

(assert (=> d!2113035 d!2113181))

(declare-fun d!2113285 () Bool)

(declare-fun e!4063282 () Bool)

(assert (=> d!2113285 e!4063282))

(declare-fun c!1246920 () Bool)

(assert (=> d!2113285 (= c!1246920 ((_ is EmptyExpr!16551) (reg!16880 r!7292)))))

(declare-fun lt!2437100 () Bool)

(declare-fun e!4063280 () Bool)

(assert (=> d!2113285 (= lt!2437100 e!4063280)))

(declare-fun c!1246921 () Bool)

(assert (=> d!2113285 (= c!1246921 (isEmpty!38153 (_1!36829 (get!22898 lt!2437067))))))

(assert (=> d!2113285 (validRegex!8287 (reg!16880 r!7292))))

(assert (=> d!2113285 (= (matchR!8734 (reg!16880 r!7292) (_1!36829 (get!22898 lt!2437067))) lt!2437100)))

(declare-fun b!6725274 () Bool)

(declare-fun e!4063278 () Bool)

(assert (=> b!6725274 (= e!4063278 (not (= (head!13530 (_1!36829 (get!22898 lt!2437067))) (c!1246605 (reg!16880 r!7292)))))))

(declare-fun bm!607205 () Bool)

(declare-fun call!607210 () Bool)

(assert (=> bm!607205 (= call!607210 (isEmpty!38153 (_1!36829 (get!22898 lt!2437067))))))

(declare-fun b!6725275 () Bool)

(declare-fun e!4063281 () Bool)

(assert (=> b!6725275 (= e!4063281 (= (head!13530 (_1!36829 (get!22898 lt!2437067))) (c!1246605 (reg!16880 r!7292))))))

(declare-fun b!6725276 () Bool)

(assert (=> b!6725276 (= e!4063280 (nullable!6538 (reg!16880 r!7292)))))

(declare-fun b!6725277 () Bool)

(declare-fun res!2751618 () Bool)

(declare-fun e!4063284 () Bool)

(assert (=> b!6725277 (=> res!2751618 e!4063284)))

(assert (=> b!6725277 (= res!2751618 (not ((_ is ElementMatch!16551) (reg!16880 r!7292))))))

(declare-fun e!4063283 () Bool)

(assert (=> b!6725277 (= e!4063283 e!4063284)))

(declare-fun b!6725278 () Bool)

(assert (=> b!6725278 (= e!4063282 e!4063283)))

(declare-fun c!1246919 () Bool)

(assert (=> b!6725278 (= c!1246919 ((_ is EmptyLang!16551) (reg!16880 r!7292)))))

(declare-fun b!6725279 () Bool)

(declare-fun e!4063279 () Bool)

(assert (=> b!6725279 (= e!4063279 e!4063278)))

(declare-fun res!2751613 () Bool)

(assert (=> b!6725279 (=> res!2751613 e!4063278)))

(assert (=> b!6725279 (= res!2751613 call!607210)))

(declare-fun b!6725280 () Bool)

(declare-fun res!2751612 () Bool)

(assert (=> b!6725280 (=> res!2751612 e!4063278)))

(assert (=> b!6725280 (= res!2751612 (not (isEmpty!38153 (tail!12615 (_1!36829 (get!22898 lt!2437067))))))))

(declare-fun b!6725281 () Bool)

(declare-fun res!2751616 () Bool)

(assert (=> b!6725281 (=> (not res!2751616) (not e!4063281))))

(assert (=> b!6725281 (= res!2751616 (isEmpty!38153 (tail!12615 (_1!36829 (get!22898 lt!2437067)))))))

(declare-fun b!6725282 () Bool)

(assert (=> b!6725282 (= e!4063283 (not lt!2437100))))

(declare-fun b!6725283 () Bool)

(assert (=> b!6725283 (= e!4063284 e!4063279)))

(declare-fun res!2751614 () Bool)

(assert (=> b!6725283 (=> (not res!2751614) (not e!4063279))))

(assert (=> b!6725283 (= res!2751614 (not lt!2437100))))

(declare-fun b!6725284 () Bool)

(declare-fun res!2751617 () Bool)

(assert (=> b!6725284 (=> res!2751617 e!4063284)))

(assert (=> b!6725284 (= res!2751617 e!4063281)))

(declare-fun res!2751619 () Bool)

(assert (=> b!6725284 (=> (not res!2751619) (not e!4063281))))

(assert (=> b!6725284 (= res!2751619 lt!2437100)))

(declare-fun b!6725285 () Bool)

(assert (=> b!6725285 (= e!4063280 (matchR!8734 (derivativeStep!5223 (reg!16880 r!7292) (head!13530 (_1!36829 (get!22898 lt!2437067)))) (tail!12615 (_1!36829 (get!22898 lt!2437067)))))))

(declare-fun b!6725286 () Bool)

(declare-fun res!2751615 () Bool)

(assert (=> b!6725286 (=> (not res!2751615) (not e!4063281))))

(assert (=> b!6725286 (= res!2751615 (not call!607210))))

(declare-fun b!6725287 () Bool)

(assert (=> b!6725287 (= e!4063282 (= lt!2437100 call!607210))))

(assert (= (and d!2113285 c!1246921) b!6725276))

(assert (= (and d!2113285 (not c!1246921)) b!6725285))

(assert (= (and d!2113285 c!1246920) b!6725287))

(assert (= (and d!2113285 (not c!1246920)) b!6725278))

(assert (= (and b!6725278 c!1246919) b!6725282))

(assert (= (and b!6725278 (not c!1246919)) b!6725277))

(assert (= (and b!6725277 (not res!2751618)) b!6725284))

(assert (= (and b!6725284 res!2751619) b!6725286))

(assert (= (and b!6725286 res!2751615) b!6725281))

(assert (= (and b!6725281 res!2751616) b!6725275))

(assert (= (and b!6725284 (not res!2751617)) b!6725283))

(assert (= (and b!6725283 res!2751614) b!6725279))

(assert (= (and b!6725279 (not res!2751613)) b!6725280))

(assert (= (and b!6725280 (not res!2751612)) b!6725274))

(assert (= (or b!6725287 b!6725279 b!6725286) bm!607205))

(assert (=> b!6725276 m!7484656))

(declare-fun m!7485436 () Bool)

(assert (=> b!6725275 m!7485436))

(declare-fun m!7485438 () Bool)

(assert (=> d!2113285 m!7485438))

(assert (=> d!2113285 m!7484906))

(assert (=> bm!607205 m!7485438))

(declare-fun m!7485440 () Bool)

(assert (=> b!6725280 m!7485440))

(assert (=> b!6725280 m!7485440))

(declare-fun m!7485442 () Bool)

(assert (=> b!6725280 m!7485442))

(assert (=> b!6725281 m!7485440))

(assert (=> b!6725281 m!7485440))

(assert (=> b!6725281 m!7485442))

(assert (=> b!6725285 m!7485436))

(assert (=> b!6725285 m!7485436))

(declare-fun m!7485444 () Bool)

(assert (=> b!6725285 m!7485444))

(assert (=> b!6725285 m!7485440))

(assert (=> b!6725285 m!7485444))

(assert (=> b!6725285 m!7485440))

(declare-fun m!7485446 () Bool)

(assert (=> b!6725285 m!7485446))

(assert (=> b!6725274 m!7485436))

(assert (=> b!6724610 d!2113285))

(assert (=> b!6724610 d!2113235))

(declare-fun d!2113287 () Bool)

(assert (=> d!2113287 (= (isEmpty!38153 (tail!12615 s!2326)) ((_ is Nil!65830) (tail!12615 s!2326)))))

(assert (=> b!6724525 d!2113287))

(assert (=> b!6724525 d!2113261))

(declare-fun b!6725298 () Bool)

(declare-fun res!2751624 () Bool)

(declare-fun e!4063290 () Bool)

(assert (=> b!6725298 (=> (not res!2751624) (not e!4063290))))

(declare-fun lt!2437103 () List!65954)

(declare-fun size!40601 (List!65954) Int)

(assert (=> b!6725298 (= res!2751624 (= (size!40601 lt!2437103) (+ (size!40601 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830))) (size!40601 (t!379635 s!2326)))))))

(declare-fun d!2113289 () Bool)

(assert (=> d!2113289 e!4063290))

(declare-fun res!2751625 () Bool)

(assert (=> d!2113289 (=> (not res!2751625) (not e!4063290))))

(declare-fun content!12773 (List!65954) (InoxSet C!33372))

(assert (=> d!2113289 (= res!2751625 (= (content!12773 lt!2437103) ((_ map or) (content!12773 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830))) (content!12773 (t!379635 s!2326)))))))

(declare-fun e!4063289 () List!65954)

(assert (=> d!2113289 (= lt!2437103 e!4063289)))

(declare-fun c!1246924 () Bool)

(assert (=> d!2113289 (= c!1246924 ((_ is Nil!65830) (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830))))))

(assert (=> d!2113289 (= (++!14707 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (t!379635 s!2326)) lt!2437103)))

(declare-fun b!6725299 () Bool)

(assert (=> b!6725299 (= e!4063290 (or (not (= (t!379635 s!2326) Nil!65830)) (= lt!2437103 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)))))))

(declare-fun b!6725297 () Bool)

(assert (=> b!6725297 (= e!4063289 (Cons!65830 (h!72278 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830))) (++!14707 (t!379635 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830))) (t!379635 s!2326))))))

(declare-fun b!6725296 () Bool)

(assert (=> b!6725296 (= e!4063289 (t!379635 s!2326))))

(assert (= (and d!2113289 c!1246924) b!6725296))

(assert (= (and d!2113289 (not c!1246924)) b!6725297))

(assert (= (and d!2113289 res!2751625) b!6725298))

(assert (= (and b!6725298 res!2751624) b!6725299))

(declare-fun m!7485448 () Bool)

(assert (=> b!6725298 m!7485448))

(assert (=> b!6725298 m!7484932))

(declare-fun m!7485450 () Bool)

(assert (=> b!6725298 m!7485450))

(declare-fun m!7485452 () Bool)

(assert (=> b!6725298 m!7485452))

(declare-fun m!7485454 () Bool)

(assert (=> d!2113289 m!7485454))

(assert (=> d!2113289 m!7484932))

(declare-fun m!7485456 () Bool)

(assert (=> d!2113289 m!7485456))

(declare-fun m!7485458 () Bool)

(assert (=> d!2113289 m!7485458))

(declare-fun m!7485460 () Bool)

(assert (=> b!6725297 m!7485460))

(assert (=> b!6724606 d!2113289))

(declare-fun b!6725302 () Bool)

(declare-fun res!2751626 () Bool)

(declare-fun e!4063292 () Bool)

(assert (=> b!6725302 (=> (not res!2751626) (not e!4063292))))

(declare-fun lt!2437104 () List!65954)

(assert (=> b!6725302 (= res!2751626 (= (size!40601 lt!2437104) (+ (size!40601 Nil!65830) (size!40601 (Cons!65830 (h!72278 s!2326) Nil!65830)))))))

(declare-fun d!2113291 () Bool)

(assert (=> d!2113291 e!4063292))

(declare-fun res!2751627 () Bool)

(assert (=> d!2113291 (=> (not res!2751627) (not e!4063292))))

(assert (=> d!2113291 (= res!2751627 (= (content!12773 lt!2437104) ((_ map or) (content!12773 Nil!65830) (content!12773 (Cons!65830 (h!72278 s!2326) Nil!65830)))))))

(declare-fun e!4063291 () List!65954)

(assert (=> d!2113291 (= lt!2437104 e!4063291)))

(declare-fun c!1246925 () Bool)

(assert (=> d!2113291 (= c!1246925 ((_ is Nil!65830) Nil!65830))))

(assert (=> d!2113291 (= (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) lt!2437104)))

(declare-fun b!6725303 () Bool)

(assert (=> b!6725303 (= e!4063292 (or (not (= (Cons!65830 (h!72278 s!2326) Nil!65830) Nil!65830)) (= lt!2437104 Nil!65830)))))

(declare-fun b!6725301 () Bool)

(assert (=> b!6725301 (= e!4063291 (Cons!65830 (h!72278 Nil!65830) (++!14707 (t!379635 Nil!65830) (Cons!65830 (h!72278 s!2326) Nil!65830))))))

(declare-fun b!6725300 () Bool)

(assert (=> b!6725300 (= e!4063291 (Cons!65830 (h!72278 s!2326) Nil!65830))))

(assert (= (and d!2113291 c!1246925) b!6725300))

(assert (= (and d!2113291 (not c!1246925)) b!6725301))

(assert (= (and d!2113291 res!2751627) b!6725302))

(assert (= (and b!6725302 res!2751626) b!6725303))

(declare-fun m!7485462 () Bool)

(assert (=> b!6725302 m!7485462))

(declare-fun m!7485464 () Bool)

(assert (=> b!6725302 m!7485464))

(declare-fun m!7485466 () Bool)

(assert (=> b!6725302 m!7485466))

(declare-fun m!7485468 () Bool)

(assert (=> d!2113291 m!7485468))

(declare-fun m!7485470 () Bool)

(assert (=> d!2113291 m!7485470))

(declare-fun m!7485472 () Bool)

(assert (=> d!2113291 m!7485472))

(declare-fun m!7485474 () Bool)

(assert (=> b!6725301 m!7485474))

(assert (=> b!6724606 d!2113291))

(declare-fun d!2113293 () Bool)

(assert (=> d!2113293 (= (++!14707 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (t!379635 s!2326)) s!2326)))

(declare-fun lt!2437107 () Unit!159793)

(declare-fun choose!50107 (List!65954 C!33372 List!65954 List!65954) Unit!159793)

(assert (=> d!2113293 (= lt!2437107 (choose!50107 Nil!65830 (h!72278 s!2326) (t!379635 s!2326) s!2326))))

(assert (=> d!2113293 (= (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) (t!379635 s!2326))) s!2326)))

(assert (=> d!2113293 (= (lemmaMoveElementToOtherListKeepsConcatEq!2680 Nil!65830 (h!72278 s!2326) (t!379635 s!2326) s!2326) lt!2437107)))

(declare-fun bs!1788921 () Bool)

(assert (= bs!1788921 d!2113293))

(assert (=> bs!1788921 m!7484932))

(assert (=> bs!1788921 m!7484932))

(assert (=> bs!1788921 m!7484934))

(declare-fun m!7485476 () Bool)

(assert (=> bs!1788921 m!7485476))

(declare-fun m!7485478 () Bool)

(assert (=> bs!1788921 m!7485478))

(assert (=> b!6724606 d!2113293))

(declare-fun b!6725304 () Bool)

(declare-fun e!4063295 () Option!16438)

(declare-fun e!4063294 () Option!16438)

(assert (=> b!6725304 (= e!4063295 e!4063294)))

(declare-fun c!1246927 () Bool)

(assert (=> b!6725304 (= c!1246927 ((_ is Nil!65830) (t!379635 s!2326)))))

(declare-fun b!6725305 () Bool)

(assert (=> b!6725305 (= e!4063294 None!16437)))

(declare-fun b!6725306 () Bool)

(assert (=> b!6725306 (= e!4063295 (Some!16437 (tuple2!67053 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (t!379635 s!2326))))))

(declare-fun b!6725307 () Bool)

(declare-fun lt!2437110 () Unit!159793)

(declare-fun lt!2437109 () Unit!159793)

(assert (=> b!6725307 (= lt!2437110 lt!2437109)))

(assert (=> b!6725307 (= (++!14707 (++!14707 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (Cons!65830 (h!72278 (t!379635 s!2326)) Nil!65830)) (t!379635 (t!379635 s!2326))) s!2326)))

(assert (=> b!6725307 (= lt!2437109 (lemmaMoveElementToOtherListKeepsConcatEq!2680 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (h!72278 (t!379635 s!2326)) (t!379635 (t!379635 s!2326)) s!2326))))

(assert (=> b!6725307 (= e!4063294 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 (++!14707 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (Cons!65830 (h!72278 (t!379635 s!2326)) Nil!65830)) (t!379635 (t!379635 s!2326)) s!2326))))

(declare-fun b!6725308 () Bool)

(declare-fun e!4063297 () Bool)

(declare-fun lt!2437108 () Option!16438)

(assert (=> b!6725308 (= e!4063297 (= (++!14707 (_1!36829 (get!22898 lt!2437108)) (_2!36829 (get!22898 lt!2437108))) s!2326))))

(declare-fun b!6725309 () Bool)

(declare-fun res!2751629 () Bool)

(assert (=> b!6725309 (=> (not res!2751629) (not e!4063297))))

(assert (=> b!6725309 (= res!2751629 (matchR!8734 r!7292 (_2!36829 (get!22898 lt!2437108))))))

(declare-fun b!6725310 () Bool)

(declare-fun e!4063296 () Bool)

(assert (=> b!6725310 (= e!4063296 (not (isDefined!13141 lt!2437108)))))

(declare-fun b!6725311 () Bool)

(declare-fun res!2751632 () Bool)

(assert (=> b!6725311 (=> (not res!2751632) (not e!4063297))))

(assert (=> b!6725311 (= res!2751632 (matchR!8734 (reg!16880 r!7292) (_1!36829 (get!22898 lt!2437108))))))

(declare-fun d!2113295 () Bool)

(assert (=> d!2113295 e!4063296))

(declare-fun res!2751628 () Bool)

(assert (=> d!2113295 (=> res!2751628 e!4063296)))

(assert (=> d!2113295 (= res!2751628 e!4063297)))

(declare-fun res!2751631 () Bool)

(assert (=> d!2113295 (=> (not res!2751631) (not e!4063297))))

(assert (=> d!2113295 (= res!2751631 (isDefined!13141 lt!2437108))))

(assert (=> d!2113295 (= lt!2437108 e!4063295)))

(declare-fun c!1246926 () Bool)

(declare-fun e!4063293 () Bool)

(assert (=> d!2113295 (= c!1246926 e!4063293)))

(declare-fun res!2751630 () Bool)

(assert (=> d!2113295 (=> (not res!2751630) (not e!4063293))))

(assert (=> d!2113295 (= res!2751630 (matchR!8734 (reg!16880 r!7292) (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830))))))

(assert (=> d!2113295 (validRegex!8287 (reg!16880 r!7292))))

(assert (=> d!2113295 (= (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 (++!14707 Nil!65830 (Cons!65830 (h!72278 s!2326) Nil!65830)) (t!379635 s!2326) s!2326) lt!2437108)))

(declare-fun b!6725312 () Bool)

(assert (=> b!6725312 (= e!4063293 (matchR!8734 r!7292 (t!379635 s!2326)))))

(assert (= (and d!2113295 res!2751630) b!6725312))

(assert (= (and d!2113295 c!1246926) b!6725306))

(assert (= (and d!2113295 (not c!1246926)) b!6725304))

(assert (= (and b!6725304 c!1246927) b!6725305))

(assert (= (and b!6725304 (not c!1246927)) b!6725307))

(assert (= (and d!2113295 res!2751631) b!6725311))

(assert (= (and b!6725311 res!2751632) b!6725309))

(assert (= (and b!6725309 res!2751629) b!6725308))

(assert (= (and d!2113295 (not res!2751628)) b!6725310))

(declare-fun m!7485480 () Bool)

(assert (=> b!6725309 m!7485480))

(declare-fun m!7485482 () Bool)

(assert (=> b!6725309 m!7485482))

(assert (=> b!6725308 m!7485480))

(declare-fun m!7485484 () Bool)

(assert (=> b!6725308 m!7485484))

(declare-fun m!7485486 () Bool)

(assert (=> b!6725312 m!7485486))

(declare-fun m!7485488 () Bool)

(assert (=> d!2113295 m!7485488))

(assert (=> d!2113295 m!7484932))

(declare-fun m!7485490 () Bool)

(assert (=> d!2113295 m!7485490))

(assert (=> d!2113295 m!7484906))

(assert (=> b!6725311 m!7485480))

(declare-fun m!7485492 () Bool)

(assert (=> b!6725311 m!7485492))

(assert (=> b!6725310 m!7485488))

(assert (=> b!6725307 m!7484932))

(declare-fun m!7485494 () Bool)

(assert (=> b!6725307 m!7485494))

(assert (=> b!6725307 m!7485494))

(declare-fun m!7485496 () Bool)

(assert (=> b!6725307 m!7485496))

(assert (=> b!6725307 m!7484932))

(declare-fun m!7485498 () Bool)

(assert (=> b!6725307 m!7485498))

(assert (=> b!6725307 m!7485494))

(declare-fun m!7485500 () Bool)

(assert (=> b!6725307 m!7485500))

(assert (=> b!6724606 d!2113295))

(declare-fun d!2113297 () Bool)

(declare-fun nullableFct!2452 (Regex!16551) Bool)

(assert (=> d!2113297 (= (nullable!6538 (regOne!33614 r!7292)) (nullableFct!2452 (regOne!33614 r!7292)))))

(declare-fun bs!1788922 () Bool)

(assert (= bs!1788922 d!2113297))

(declare-fun m!7485502 () Bool)

(assert (=> bs!1788922 m!7485502))

(assert (=> b!6724314 d!2113297))

(declare-fun bm!607206 () Bool)

(declare-fun call!607213 () Bool)

(declare-fun call!607212 () Bool)

(assert (=> bm!607206 (= call!607213 call!607212)))

(declare-fun b!6725313 () Bool)

(declare-fun e!4063299 () Bool)

(declare-fun e!4063304 () Bool)

(assert (=> b!6725313 (= e!4063299 e!4063304)))

(declare-fun res!2751634 () Bool)

(assert (=> b!6725313 (= res!2751634 (not (nullable!6538 (reg!16880 lt!2436993))))))

(assert (=> b!6725313 (=> (not res!2751634) (not e!4063304))))

(declare-fun b!6725314 () Bool)

(declare-fun res!2751633 () Bool)

(declare-fun e!4063298 () Bool)

(assert (=> b!6725314 (=> res!2751633 e!4063298)))

(assert (=> b!6725314 (= res!2751633 (not ((_ is Concat!25396) lt!2436993)))))

(declare-fun e!4063301 () Bool)

(assert (=> b!6725314 (= e!4063301 e!4063298)))

(declare-fun d!2113299 () Bool)

(declare-fun res!2751637 () Bool)

(declare-fun e!4063303 () Bool)

(assert (=> d!2113299 (=> res!2751637 e!4063303)))

(assert (=> d!2113299 (= res!2751637 ((_ is ElementMatch!16551) lt!2436993))))

(assert (=> d!2113299 (= (validRegex!8287 lt!2436993) e!4063303)))

(declare-fun bm!607207 () Bool)

(declare-fun call!607211 () Bool)

(declare-fun c!1246928 () Bool)

(assert (=> bm!607207 (= call!607211 (validRegex!8287 (ite c!1246928 (regOne!33615 lt!2436993) (regOne!33614 lt!2436993))))))

(declare-fun b!6725315 () Bool)

(declare-fun e!4063300 () Bool)

(assert (=> b!6725315 (= e!4063300 call!607213)))

(declare-fun b!6725316 () Bool)

(declare-fun res!2751635 () Bool)

(declare-fun e!4063302 () Bool)

(assert (=> b!6725316 (=> (not res!2751635) (not e!4063302))))

(assert (=> b!6725316 (= res!2751635 call!607211)))

(assert (=> b!6725316 (= e!4063301 e!4063302)))

(declare-fun b!6725317 () Bool)

(assert (=> b!6725317 (= e!4063299 e!4063301)))

(assert (=> b!6725317 (= c!1246928 ((_ is Union!16551) lt!2436993))))

(declare-fun b!6725318 () Bool)

(assert (=> b!6725318 (= e!4063298 e!4063300)))

(declare-fun res!2751636 () Bool)

(assert (=> b!6725318 (=> (not res!2751636) (not e!4063300))))

(assert (=> b!6725318 (= res!2751636 call!607211)))

(declare-fun bm!607208 () Bool)

(declare-fun c!1246929 () Bool)

(assert (=> bm!607208 (= call!607212 (validRegex!8287 (ite c!1246929 (reg!16880 lt!2436993) (ite c!1246928 (regTwo!33615 lt!2436993) (regTwo!33614 lt!2436993)))))))

(declare-fun b!6725319 () Bool)

(assert (=> b!6725319 (= e!4063303 e!4063299)))

(assert (=> b!6725319 (= c!1246929 ((_ is Star!16551) lt!2436993))))

(declare-fun b!6725320 () Bool)

(assert (=> b!6725320 (= e!4063302 call!607213)))

(declare-fun b!6725321 () Bool)

(assert (=> b!6725321 (= e!4063304 call!607212)))

(assert (= (and d!2113299 (not res!2751637)) b!6725319))

(assert (= (and b!6725319 c!1246929) b!6725313))

(assert (= (and b!6725319 (not c!1246929)) b!6725317))

(assert (= (and b!6725313 res!2751634) b!6725321))

(assert (= (and b!6725317 c!1246928) b!6725316))

(assert (= (and b!6725317 (not c!1246928)) b!6725314))

(assert (= (and b!6725316 res!2751635) b!6725320))

(assert (= (and b!6725314 (not res!2751633)) b!6725318))

(assert (= (and b!6725318 res!2751636) b!6725315))

(assert (= (or b!6725320 b!6725315) bm!607206))

(assert (= (or b!6725316 b!6725318) bm!607207))

(assert (= (or b!6725321 bm!607206) bm!607208))

(declare-fun m!7485504 () Bool)

(assert (=> b!6725313 m!7485504))

(declare-fun m!7485506 () Bool)

(assert (=> bm!607207 m!7485506))

(declare-fun m!7485508 () Bool)

(assert (=> bm!607208 m!7485508))

(assert (=> d!2112933 d!2113299))

(assert (=> d!2112933 d!2112953))

(assert (=> d!2112933 d!2112963))

(declare-fun d!2113301 () Bool)

(declare-fun c!1246932 () Bool)

(assert (=> d!2113301 (= c!1246932 ((_ is Nil!65829) lt!2436997))))

(declare-fun e!4063307 () (InoxSet Context!11870))

(assert (=> d!2113301 (= (content!12771 lt!2436997) e!4063307)))

(declare-fun b!6725326 () Bool)

(assert (=> b!6725326 (= e!4063307 ((as const (Array Context!11870 Bool)) false))))

(declare-fun b!6725327 () Bool)

(assert (=> b!6725327 (= e!4063307 ((_ map or) (store ((as const (Array Context!11870 Bool)) false) (h!72277 lt!2436997) true) (content!12771 (t!379634 lt!2436997))))))

(assert (= (and d!2113301 c!1246932) b!6725326))

(assert (= (and d!2113301 (not c!1246932)) b!6725327))

(declare-fun m!7485510 () Bool)

(assert (=> b!6725327 m!7485510))

(declare-fun m!7485512 () Bool)

(assert (=> b!6725327 m!7485512))

(assert (=> b!6724069 d!2113301))

(declare-fun d!2113303 () Bool)

(assert (=> d!2113303 (= (Exists!3619 (ite c!1246749 lambda!377213 lambda!377214)) (choose!50104 (ite c!1246749 lambda!377213 lambda!377214)))))

(declare-fun bs!1788923 () Bool)

(assert (= bs!1788923 d!2113303))

(declare-fun m!7485514 () Bool)

(assert (=> bs!1788923 m!7485514))

(assert (=> bm!607094 d!2113303))

(assert (=> d!2113015 d!2113033))

(assert (=> d!2113015 d!2112939))

(declare-fun bm!607209 () Bool)

(declare-fun call!607216 () Bool)

(declare-fun call!607215 () Bool)

(assert (=> bm!607209 (= call!607216 call!607215)))

(declare-fun b!6725328 () Bool)

(declare-fun e!4063309 () Bool)

(declare-fun e!4063314 () Bool)

(assert (=> b!6725328 (= e!4063309 e!4063314)))

(declare-fun res!2751639 () Bool)

(assert (=> b!6725328 (= res!2751639 (not (nullable!6538 (reg!16880 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))))))))

(assert (=> b!6725328 (=> (not res!2751639) (not e!4063314))))

(declare-fun b!6725329 () Bool)

(declare-fun res!2751638 () Bool)

(declare-fun e!4063308 () Bool)

(assert (=> b!6725329 (=> res!2751638 e!4063308)))

(assert (=> b!6725329 (= res!2751638 (not ((_ is Concat!25396) (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292)))))))

(declare-fun e!4063311 () Bool)

(assert (=> b!6725329 (= e!4063311 e!4063308)))

(declare-fun d!2113305 () Bool)

(declare-fun res!2751642 () Bool)

(declare-fun e!4063313 () Bool)

(assert (=> d!2113305 (=> res!2751642 e!4063313)))

(assert (=> d!2113305 (= res!2751642 ((_ is ElementMatch!16551) (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))))))

(assert (=> d!2113305 (= (validRegex!8287 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))) e!4063313)))

(declare-fun c!1246933 () Bool)

(declare-fun bm!607210 () Bool)

(declare-fun call!607214 () Bool)

(assert (=> bm!607210 (= call!607214 (validRegex!8287 (ite c!1246933 (regOne!33615 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))) (regOne!33614 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))))))))

(declare-fun b!6725330 () Bool)

(declare-fun e!4063310 () Bool)

(assert (=> b!6725330 (= e!4063310 call!607216)))

(declare-fun b!6725331 () Bool)

(declare-fun res!2751640 () Bool)

(declare-fun e!4063312 () Bool)

(assert (=> b!6725331 (=> (not res!2751640) (not e!4063312))))

(assert (=> b!6725331 (= res!2751640 call!607214)))

(assert (=> b!6725331 (= e!4063311 e!4063312)))

(declare-fun b!6725332 () Bool)

(assert (=> b!6725332 (= e!4063309 e!4063311)))

(assert (=> b!6725332 (= c!1246933 ((_ is Union!16551) (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))))))

(declare-fun b!6725333 () Bool)

(assert (=> b!6725333 (= e!4063308 e!4063310)))

(declare-fun res!2751641 () Bool)

(assert (=> b!6725333 (=> (not res!2751641) (not e!4063310))))

(assert (=> b!6725333 (= res!2751641 call!607214)))

(declare-fun c!1246934 () Bool)

(declare-fun bm!607211 () Bool)

(assert (=> bm!607211 (= call!607215 (validRegex!8287 (ite c!1246934 (reg!16880 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))) (ite c!1246933 (regTwo!33615 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))) (regTwo!33614 (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292)))))))))

(declare-fun b!6725334 () Bool)

(assert (=> b!6725334 (= e!4063313 e!4063309)))

(assert (=> b!6725334 (= c!1246934 ((_ is Star!16551) (ite c!1246641 (regOne!33615 r!7292) (regOne!33614 r!7292))))))

(declare-fun b!6725335 () Bool)

(assert (=> b!6725335 (= e!4063312 call!607216)))

(declare-fun b!6725336 () Bool)

(assert (=> b!6725336 (= e!4063314 call!607215)))

(assert (= (and d!2113305 (not res!2751642)) b!6725334))

(assert (= (and b!6725334 c!1246934) b!6725328))

(assert (= (and b!6725334 (not c!1246934)) b!6725332))

(assert (= (and b!6725328 res!2751639) b!6725336))

(assert (= (and b!6725332 c!1246933) b!6725331))

(assert (= (and b!6725332 (not c!1246933)) b!6725329))

(assert (= (and b!6725331 res!2751640) b!6725335))

(assert (= (and b!6725329 (not res!2751638)) b!6725333))

(assert (= (and b!6725333 res!2751641) b!6725330))

(assert (= (or b!6725335 b!6725330) bm!607209))

(assert (= (or b!6725331 b!6725333) bm!607210))

(assert (= (or b!6725336 bm!607209) bm!607211))

(declare-fun m!7485516 () Bool)

(assert (=> b!6725328 m!7485516))

(declare-fun m!7485518 () Bool)

(assert (=> bm!607210 m!7485518))

(declare-fun m!7485520 () Bool)

(assert (=> bm!607211 m!7485520))

(assert (=> bm!607042 d!2113305))

(assert (=> b!6724519 d!2113259))

(declare-fun d!2113307 () Bool)

(assert (=> d!2113307 true))

(assert (=> d!2113307 true))

(declare-fun res!2751643 () Bool)

(assert (=> d!2113307 (= (choose!50104 lambda!377160) res!2751643)))

(assert (=> d!2113031 d!2113307))

(declare-fun d!2113309 () Bool)

(assert (=> d!2113309 (= (nullable!6538 (reg!16880 r!7292)) (nullableFct!2452 (reg!16880 r!7292)))))

(declare-fun bs!1788924 () Bool)

(assert (= bs!1788924 d!2113309))

(declare-fun m!7485522 () Bool)

(assert (=> bs!1788924 m!7485522))

(assert (=> b!6724124 d!2113309))

(declare-fun bs!1788925 () Bool)

(declare-fun d!2113311 () Bool)

(assert (= bs!1788925 (and d!2113311 d!2112953)))

(declare-fun lambda!377274 () Int)

(assert (=> bs!1788925 (= lambda!377274 lambda!377176)))

(declare-fun bs!1788926 () Bool)

(assert (= bs!1788926 (and d!2113311 d!2113045)))

(assert (=> bs!1788926 (= lambda!377274 lambda!377237)))

(declare-fun bs!1788927 () Bool)

(assert (= bs!1788927 (and d!2113311 d!2113019)))

(assert (=> bs!1788927 (= lambda!377274 lambda!377217)))

(declare-fun bs!1788928 () Bool)

(assert (= bs!1788928 (and d!2113311 d!2112963)))

(assert (=> bs!1788928 (= lambda!377274 lambda!377182)))

(declare-fun bs!1788929 () Bool)

(assert (= bs!1788929 (and d!2113311 d!2113023)))

(assert (=> bs!1788929 (= lambda!377274 lambda!377220)))

(declare-fun bs!1788930 () Bool)

(assert (= bs!1788930 (and d!2113311 d!2113043)))

(assert (=> bs!1788930 (= lambda!377274 lambda!377236)))

(declare-fun bs!1788931 () Bool)

(assert (= bs!1788931 (and d!2113311 d!2113201)))

(assert (=> bs!1788931 (= lambda!377274 lambda!377265)))

(declare-fun e!4063319 () Bool)

(assert (=> d!2113311 e!4063319))

(declare-fun res!2751645 () Bool)

(assert (=> d!2113311 (=> (not res!2751645) (not e!4063319))))

(declare-fun lt!2437111 () Regex!16551)

(assert (=> d!2113311 (= res!2751645 (validRegex!8287 lt!2437111))))

(declare-fun e!4063317 () Regex!16551)

(assert (=> d!2113311 (= lt!2437111 e!4063317)))

(declare-fun c!1246937 () Bool)

(declare-fun e!4063315 () Bool)

(assert (=> d!2113311 (= c!1246937 e!4063315)))

(declare-fun res!2751644 () Bool)

(assert (=> d!2113311 (=> (not res!2751644) (not e!4063315))))

(assert (=> d!2113311 (= res!2751644 ((_ is Cons!65828) (t!379633 (exprs!6435 (h!72277 zl!343)))))))

(assert (=> d!2113311 (forall!15751 (t!379633 (exprs!6435 (h!72277 zl!343))) lambda!377274)))

(assert (=> d!2113311 (= (generalisedConcat!2148 (t!379633 (exprs!6435 (h!72277 zl!343)))) lt!2437111)))

(declare-fun b!6725337 () Bool)

(assert (=> b!6725337 (= e!4063317 (h!72276 (t!379633 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6725338 () Bool)

(declare-fun e!4063318 () Bool)

(declare-fun e!4063320 () Bool)

(assert (=> b!6725338 (= e!4063318 e!4063320)))

(declare-fun c!1246936 () Bool)

(assert (=> b!6725338 (= c!1246936 (isEmpty!38157 (tail!12614 (t!379633 (exprs!6435 (h!72277 zl!343))))))))

(declare-fun b!6725339 () Bool)

(assert (=> b!6725339 (= e!4063320 (= lt!2437111 (head!13529 (t!379633 (exprs!6435 (h!72277 zl!343))))))))

(declare-fun b!6725340 () Bool)

(assert (=> b!6725340 (= e!4063318 (isEmptyExpr!1917 lt!2437111))))

(declare-fun b!6725341 () Bool)

(assert (=> b!6725341 (= e!4063315 (isEmpty!38157 (t!379633 (t!379633 (exprs!6435 (h!72277 zl!343))))))))

(declare-fun b!6725342 () Bool)

(declare-fun e!4063316 () Regex!16551)

(assert (=> b!6725342 (= e!4063317 e!4063316)))

(declare-fun c!1246935 () Bool)

(assert (=> b!6725342 (= c!1246935 ((_ is Cons!65828) (t!379633 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6725343 () Bool)

(assert (=> b!6725343 (= e!4063320 (isConcat!1440 lt!2437111))))

(declare-fun b!6725344 () Bool)

(assert (=> b!6725344 (= e!4063316 EmptyExpr!16551)))

(declare-fun b!6725345 () Bool)

(assert (=> b!6725345 (= e!4063319 e!4063318)))

(declare-fun c!1246938 () Bool)

(assert (=> b!6725345 (= c!1246938 (isEmpty!38157 (t!379633 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6725346 () Bool)

(assert (=> b!6725346 (= e!4063316 (Concat!25396 (h!72276 (t!379633 (exprs!6435 (h!72277 zl!343)))) (generalisedConcat!2148 (t!379633 (t!379633 (exprs!6435 (h!72277 zl!343)))))))))

(assert (= (and d!2113311 res!2751644) b!6725341))

(assert (= (and d!2113311 c!1246937) b!6725337))

(assert (= (and d!2113311 (not c!1246937)) b!6725342))

(assert (= (and b!6725342 c!1246935) b!6725346))

(assert (= (and b!6725342 (not c!1246935)) b!6725344))

(assert (= (and d!2113311 res!2751645) b!6725345))

(assert (= (and b!6725345 c!1246938) b!6725340))

(assert (= (and b!6725345 (not c!1246938)) b!6725338))

(assert (= (and b!6725338 c!1246936) b!6725339))

(assert (= (and b!6725338 (not c!1246936)) b!6725343))

(declare-fun m!7485524 () Bool)

(assert (=> b!6725341 m!7485524))

(declare-fun m!7485526 () Bool)

(assert (=> b!6725339 m!7485526))

(declare-fun m!7485528 () Bool)

(assert (=> b!6725343 m!7485528))

(assert (=> b!6725345 m!7484878))

(declare-fun m!7485530 () Bool)

(assert (=> d!2113311 m!7485530))

(declare-fun m!7485532 () Bool)

(assert (=> d!2113311 m!7485532))

(declare-fun m!7485534 () Bool)

(assert (=> b!6725346 m!7485534))

(declare-fun m!7485536 () Bool)

(assert (=> b!6725340 m!7485536))

(declare-fun m!7485538 () Bool)

(assert (=> b!6725338 m!7485538))

(assert (=> b!6725338 m!7485538))

(declare-fun m!7485540 () Bool)

(assert (=> b!6725338 m!7485540))

(assert (=> b!6724566 d!2113311))

(declare-fun b!6725347 () Bool)

(declare-fun e!4063325 () (InoxSet Context!11870))

(declare-fun call!607218 () (InoxSet Context!11870))

(assert (=> b!6725347 (= e!4063325 call!607218)))

(declare-fun bm!607212 () Bool)

(declare-fun call!607222 () (InoxSet Context!11870))

(declare-fun call!607219 () (InoxSet Context!11870))

(assert (=> bm!607212 (= call!607222 call!607219)))

(declare-fun b!6725348 () Bool)

(declare-fun c!1246939 () Bool)

(assert (=> b!6725348 (= c!1246939 ((_ is Star!16551) (h!72276 (exprs!6435 lt!2436984))))))

(declare-fun e!4063323 () (InoxSet Context!11870))

(assert (=> b!6725348 (= e!4063323 e!4063325)))

(declare-fun b!6725349 () Bool)

(declare-fun e!4063326 () (InoxSet Context!11870))

(declare-fun call!607220 () (InoxSet Context!11870))

(assert (=> b!6725349 (= e!4063326 ((_ map or) call!607219 call!607220))))

(declare-fun bm!607213 () Bool)

(declare-fun call!607221 () List!65952)

(declare-fun c!1246943 () Bool)

(declare-fun c!1246942 () Bool)

(declare-fun c!1246940 () Bool)

(assert (=> bm!607213 (= call!607219 (derivationStepZipperDown!1779 (ite c!1246943 (regOne!33615 (h!72276 (exprs!6435 lt!2436984))) (ite c!1246942 (regTwo!33614 (h!72276 (exprs!6435 lt!2436984))) (ite c!1246940 (regOne!33614 (h!72276 (exprs!6435 lt!2436984))) (reg!16880 (h!72276 (exprs!6435 lt!2436984)))))) (ite (or c!1246943 c!1246942) (Context!11871 (t!379633 (exprs!6435 lt!2436984))) (Context!11871 call!607221)) (h!72278 s!2326)))))

(declare-fun bm!607214 () Bool)

(declare-fun call!607217 () List!65952)

(assert (=> bm!607214 (= call!607220 (derivationStepZipperDown!1779 (ite c!1246943 (regTwo!33615 (h!72276 (exprs!6435 lt!2436984))) (regOne!33614 (h!72276 (exprs!6435 lt!2436984)))) (ite c!1246943 (Context!11871 (t!379633 (exprs!6435 lt!2436984))) (Context!11871 call!607217)) (h!72278 s!2326)))))

(declare-fun b!6725350 () Bool)

(declare-fun e!4063321 () (InoxSet Context!11870))

(assert (=> b!6725350 (= e!4063321 e!4063323)))

(assert (=> b!6725350 (= c!1246940 ((_ is Concat!25396) (h!72276 (exprs!6435 lt!2436984))))))

(declare-fun d!2113313 () Bool)

(declare-fun c!1246941 () Bool)

(assert (=> d!2113313 (= c!1246941 (and ((_ is ElementMatch!16551) (h!72276 (exprs!6435 lt!2436984))) (= (c!1246605 (h!72276 (exprs!6435 lt!2436984))) (h!72278 s!2326))))))

(declare-fun e!4063324 () (InoxSet Context!11870))

(assert (=> d!2113313 (= (derivationStepZipperDown!1779 (h!72276 (exprs!6435 lt!2436984)) (Context!11871 (t!379633 (exprs!6435 lt!2436984))) (h!72278 s!2326)) e!4063324)))

(declare-fun b!6725351 () Bool)

(assert (=> b!6725351 (= e!4063324 (store ((as const (Array Context!11870 Bool)) false) (Context!11871 (t!379633 (exprs!6435 lt!2436984))) true))))

(declare-fun bm!607215 () Bool)

(assert (=> bm!607215 (= call!607221 call!607217)))

(declare-fun b!6725352 () Bool)

(assert (=> b!6725352 (= e!4063323 call!607218)))

(declare-fun b!6725353 () Bool)

(assert (=> b!6725353 (= e!4063324 e!4063326)))

(assert (=> b!6725353 (= c!1246943 ((_ is Union!16551) (h!72276 (exprs!6435 lt!2436984))))))

(declare-fun b!6725354 () Bool)

(assert (=> b!6725354 (= e!4063321 ((_ map or) call!607220 call!607222))))

(declare-fun b!6725355 () Bool)

(assert (=> b!6725355 (= e!4063325 ((as const (Array Context!11870 Bool)) false))))

(declare-fun b!6725356 () Bool)

(declare-fun e!4063322 () Bool)

(assert (=> b!6725356 (= c!1246942 e!4063322)))

(declare-fun res!2751646 () Bool)

(assert (=> b!6725356 (=> (not res!2751646) (not e!4063322))))

(assert (=> b!6725356 (= res!2751646 ((_ is Concat!25396) (h!72276 (exprs!6435 lt!2436984))))))

(assert (=> b!6725356 (= e!4063326 e!4063321)))

(declare-fun bm!607216 () Bool)

(assert (=> bm!607216 (= call!607217 ($colon$colon!2368 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 lt!2436984)))) (ite (or c!1246942 c!1246940) (regTwo!33614 (h!72276 (exprs!6435 lt!2436984))) (h!72276 (exprs!6435 lt!2436984)))))))

(declare-fun b!6725357 () Bool)

(assert (=> b!6725357 (= e!4063322 (nullable!6538 (regOne!33614 (h!72276 (exprs!6435 lt!2436984)))))))

(declare-fun bm!607217 () Bool)

(assert (=> bm!607217 (= call!607218 call!607222)))

(assert (= (and d!2113313 c!1246941) b!6725351))

(assert (= (and d!2113313 (not c!1246941)) b!6725353))

(assert (= (and b!6725353 c!1246943) b!6725349))

(assert (= (and b!6725353 (not c!1246943)) b!6725356))

(assert (= (and b!6725356 res!2751646) b!6725357))

(assert (= (and b!6725356 c!1246942) b!6725354))

(assert (= (and b!6725356 (not c!1246942)) b!6725350))

(assert (= (and b!6725350 c!1246940) b!6725352))

(assert (= (and b!6725350 (not c!1246940)) b!6725348))

(assert (= (and b!6725348 c!1246939) b!6725347))

(assert (= (and b!6725348 (not c!1246939)) b!6725355))

(assert (= (or b!6725352 b!6725347) bm!607215))

(assert (= (or b!6725352 b!6725347) bm!607217))

(assert (= (or b!6725354 bm!607215) bm!607216))

(assert (= (or b!6725354 bm!607217) bm!607212))

(assert (= (or b!6725349 b!6725354) bm!607214))

(assert (= (or b!6725349 bm!607212) bm!607213))

(declare-fun m!7485542 () Bool)

(assert (=> bm!607213 m!7485542))

(declare-fun m!7485544 () Bool)

(assert (=> b!6725357 m!7485544))

(declare-fun m!7485546 () Bool)

(assert (=> bm!607214 m!7485546))

(declare-fun m!7485548 () Bool)

(assert (=> b!6725351 m!7485548))

(declare-fun m!7485550 () Bool)

(assert (=> bm!607216 m!7485550))

(assert (=> bm!607098 d!2113313))

(assert (=> b!6724518 d!2113259))

(assert (=> bs!1788745 d!2113003))

(declare-fun d!2113315 () Bool)

(assert (=> d!2113315 (= (flatMap!2032 z!1189 lambda!377201) (choose!50100 z!1189 lambda!377201))))

(declare-fun bs!1788932 () Bool)

(assert (= bs!1788932 d!2113315))

(declare-fun m!7485552 () Bool)

(assert (=> bs!1788932 m!7485552))

(assert (=> d!2112991 d!2113315))

(declare-fun b!6725358 () Bool)

(declare-fun e!4063331 () (InoxSet Context!11870))

(declare-fun call!607224 () (InoxSet Context!11870))

(assert (=> b!6725358 (= e!4063331 call!607224)))

(declare-fun bm!607218 () Bool)

(declare-fun call!607228 () (InoxSet Context!11870))

(declare-fun call!607225 () (InoxSet Context!11870))

(assert (=> bm!607218 (= call!607228 call!607225)))

(declare-fun b!6725359 () Bool)

(declare-fun c!1246944 () Bool)

(assert (=> b!6725359 (= c!1246944 ((_ is Star!16551) (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun e!4063329 () (InoxSet Context!11870))

(assert (=> b!6725359 (= e!4063329 e!4063331)))

(declare-fun b!6725360 () Bool)

(declare-fun e!4063332 () (InoxSet Context!11870))

(declare-fun call!607226 () (InoxSet Context!11870))

(assert (=> b!6725360 (= e!4063332 ((_ map or) call!607225 call!607226))))

(declare-fun bm!607219 () Bool)

(declare-fun c!1246948 () Bool)

(declare-fun call!607227 () List!65952)

(declare-fun c!1246947 () Bool)

(declare-fun c!1246945 () Bool)

(assert (=> bm!607219 (= call!607225 (derivationStepZipperDown!1779 (ite c!1246948 (regOne!33615 (h!72276 (exprs!6435 (h!72277 zl!343)))) (ite c!1246947 (regTwo!33614 (h!72276 (exprs!6435 (h!72277 zl!343)))) (ite c!1246945 (regOne!33614 (h!72276 (exprs!6435 (h!72277 zl!343)))) (reg!16880 (h!72276 (exprs!6435 (h!72277 zl!343))))))) (ite (or c!1246948 c!1246947) (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))) (Context!11871 call!607227)) (h!72278 s!2326)))))

(declare-fun call!607223 () List!65952)

(declare-fun bm!607220 () Bool)

(assert (=> bm!607220 (= call!607226 (derivationStepZipperDown!1779 (ite c!1246948 (regTwo!33615 (h!72276 (exprs!6435 (h!72277 zl!343)))) (regOne!33614 (h!72276 (exprs!6435 (h!72277 zl!343))))) (ite c!1246948 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))) (Context!11871 call!607223)) (h!72278 s!2326)))))

(declare-fun b!6725361 () Bool)

(declare-fun e!4063327 () (InoxSet Context!11870))

(assert (=> b!6725361 (= e!4063327 e!4063329)))

(assert (=> b!6725361 (= c!1246945 ((_ is Concat!25396) (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun d!2113317 () Bool)

(declare-fun c!1246946 () Bool)

(assert (=> d!2113317 (= c!1246946 (and ((_ is ElementMatch!16551) (h!72276 (exprs!6435 (h!72277 zl!343)))) (= (c!1246605 (h!72276 (exprs!6435 (h!72277 zl!343)))) (h!72278 s!2326))))))

(declare-fun e!4063330 () (InoxSet Context!11870))

(assert (=> d!2113317 (= (derivationStepZipperDown!1779 (h!72276 (exprs!6435 (h!72277 zl!343))) (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))) (h!72278 s!2326)) e!4063330)))

(declare-fun b!6725362 () Bool)

(assert (=> b!6725362 (= e!4063330 (store ((as const (Array Context!11870 Bool)) false) (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))) true))))

(declare-fun bm!607221 () Bool)

(assert (=> bm!607221 (= call!607227 call!607223)))

(declare-fun b!6725363 () Bool)

(assert (=> b!6725363 (= e!4063329 call!607224)))

(declare-fun b!6725364 () Bool)

(assert (=> b!6725364 (= e!4063330 e!4063332)))

(assert (=> b!6725364 (= c!1246948 ((_ is Union!16551) (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6725365 () Bool)

(assert (=> b!6725365 (= e!4063327 ((_ map or) call!607226 call!607228))))

(declare-fun b!6725366 () Bool)

(assert (=> b!6725366 (= e!4063331 ((as const (Array Context!11870 Bool)) false))))

(declare-fun b!6725367 () Bool)

(declare-fun e!4063328 () Bool)

(assert (=> b!6725367 (= c!1246947 e!4063328)))

(declare-fun res!2751647 () Bool)

(assert (=> b!6725367 (=> (not res!2751647) (not e!4063328))))

(assert (=> b!6725367 (= res!2751647 ((_ is Concat!25396) (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(assert (=> b!6725367 (= e!4063332 e!4063327)))

(declare-fun bm!607222 () Bool)

(assert (=> bm!607222 (= call!607223 ($colon$colon!2368 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343))))) (ite (or c!1246947 c!1246945) (regTwo!33614 (h!72276 (exprs!6435 (h!72277 zl!343)))) (h!72276 (exprs!6435 (h!72277 zl!343))))))))

(declare-fun b!6725368 () Bool)

(assert (=> b!6725368 (= e!4063328 (nullable!6538 (regOne!33614 (h!72276 (exprs!6435 (h!72277 zl!343))))))))

(declare-fun bm!607223 () Bool)

(assert (=> bm!607223 (= call!607224 call!607228)))

(assert (= (and d!2113317 c!1246946) b!6725362))

(assert (= (and d!2113317 (not c!1246946)) b!6725364))

(assert (= (and b!6725364 c!1246948) b!6725360))

(assert (= (and b!6725364 (not c!1246948)) b!6725367))

(assert (= (and b!6725367 res!2751647) b!6725368))

(assert (= (and b!6725367 c!1246947) b!6725365))

(assert (= (and b!6725367 (not c!1246947)) b!6725361))

(assert (= (and b!6725361 c!1246945) b!6725363))

(assert (= (and b!6725361 (not c!1246945)) b!6725359))

(assert (= (and b!6725359 c!1246944) b!6725358))

(assert (= (and b!6725359 (not c!1246944)) b!6725366))

(assert (= (or b!6725363 b!6725358) bm!607221))

(assert (= (or b!6725363 b!6725358) bm!607223))

(assert (= (or b!6725365 bm!607221) bm!607222))

(assert (= (or b!6725365 bm!607223) bm!607218))

(assert (= (or b!6725360 b!6725365) bm!607220))

(assert (= (or b!6725360 bm!607218) bm!607219))

(declare-fun m!7485554 () Bool)

(assert (=> bm!607219 m!7485554))

(declare-fun m!7485556 () Bool)

(assert (=> b!6725368 m!7485556))

(declare-fun m!7485558 () Bool)

(assert (=> bm!607220 m!7485558))

(declare-fun m!7485560 () Bool)

(assert (=> b!6725362 m!7485560))

(declare-fun m!7485562 () Bool)

(assert (=> bm!607222 m!7485562))

(assert (=> bm!607088 d!2113317))

(assert (=> b!6724248 d!2113023))

(declare-fun bs!1788933 () Bool)

(declare-fun d!2113319 () Bool)

(assert (= bs!1788933 (and d!2113319 d!2112953)))

(declare-fun lambda!377275 () Int)

(assert (=> bs!1788933 (= lambda!377275 lambda!377176)))

(declare-fun bs!1788934 () Bool)

(assert (= bs!1788934 (and d!2113319 d!2113045)))

(assert (=> bs!1788934 (= lambda!377275 lambda!377237)))

(declare-fun bs!1788935 () Bool)

(assert (= bs!1788935 (and d!2113319 d!2113019)))

(assert (=> bs!1788935 (= lambda!377275 lambda!377217)))

(declare-fun bs!1788936 () Bool)

(assert (= bs!1788936 (and d!2113319 d!2112963)))

(assert (=> bs!1788936 (= lambda!377275 lambda!377182)))

(declare-fun bs!1788937 () Bool)

(assert (= bs!1788937 (and d!2113319 d!2113023)))

(assert (=> bs!1788937 (= lambda!377275 lambda!377220)))

(declare-fun bs!1788938 () Bool)

(assert (= bs!1788938 (and d!2113319 d!2113311)))

(assert (=> bs!1788938 (= lambda!377275 lambda!377274)))

(declare-fun bs!1788939 () Bool)

(assert (= bs!1788939 (and d!2113319 d!2113043)))

(assert (=> bs!1788939 (= lambda!377275 lambda!377236)))

(declare-fun bs!1788940 () Bool)

(assert (= bs!1788940 (and d!2113319 d!2113201)))

(assert (=> bs!1788940 (= lambda!377275 lambda!377265)))

(declare-fun lt!2437112 () List!65952)

(assert (=> d!2113319 (forall!15751 lt!2437112 lambda!377275)))

(declare-fun e!4063333 () List!65952)

(assert (=> d!2113319 (= lt!2437112 e!4063333)))

(declare-fun c!1246949 () Bool)

(assert (=> d!2113319 (= c!1246949 ((_ is Cons!65829) (t!379634 zl!343)))))

(assert (=> d!2113319 (= (unfocusZipperList!1972 (t!379634 zl!343)) lt!2437112)))

(declare-fun b!6725369 () Bool)

(assert (=> b!6725369 (= e!4063333 (Cons!65828 (generalisedConcat!2148 (exprs!6435 (h!72277 (t!379634 zl!343)))) (unfocusZipperList!1972 (t!379634 (t!379634 zl!343)))))))

(declare-fun b!6725370 () Bool)

(assert (=> b!6725370 (= e!4063333 Nil!65828)))

(assert (= (and d!2113319 c!1246949) b!6725369))

(assert (= (and d!2113319 (not c!1246949)) b!6725370))

(declare-fun m!7485564 () Bool)

(assert (=> d!2113319 m!7485564))

(declare-fun m!7485566 () Bool)

(assert (=> b!6725369 m!7485566))

(declare-fun m!7485568 () Bool)

(assert (=> b!6725369 m!7485568))

(assert (=> b!6724248 d!2113319))

(declare-fun d!2113321 () Bool)

(assert (=> d!2113321 (= (head!13529 (unfocusZipperList!1972 zl!343)) (h!72276 (unfocusZipperList!1972 zl!343)))))

(assert (=> b!6724238 d!2113321))

(declare-fun b!6725371 () Bool)

(declare-fun e!4063338 () (InoxSet Context!11870))

(declare-fun call!607230 () (InoxSet Context!11870))

(assert (=> b!6725371 (= e!4063338 call!607230)))

(declare-fun bm!607224 () Bool)

(declare-fun call!607234 () (InoxSet Context!11870))

(declare-fun call!607231 () (InoxSet Context!11870))

(assert (=> bm!607224 (= call!607234 call!607231)))

(declare-fun b!6725372 () Bool)

(declare-fun c!1246950 () Bool)

(assert (=> b!6725372 (= c!1246950 ((_ is Star!16551) (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))))))

(declare-fun e!4063336 () (InoxSet Context!11870))

(assert (=> b!6725372 (= e!4063336 e!4063338)))

(declare-fun b!6725373 () Bool)

(declare-fun e!4063339 () (InoxSet Context!11870))

(declare-fun call!607232 () (InoxSet Context!11870))

(assert (=> b!6725373 (= e!4063339 ((_ map or) call!607231 call!607232))))

(declare-fun c!1246951 () Bool)

(declare-fun bm!607225 () Bool)

(declare-fun call!607233 () List!65952)

(declare-fun c!1246954 () Bool)

(declare-fun c!1246953 () Bool)

(assert (=> bm!607225 (= call!607231 (derivationStepZipperDown!1779 (ite c!1246954 (regOne!33615 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))) (ite c!1246953 (regTwo!33614 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))) (ite c!1246951 (regOne!33614 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))) (reg!16880 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292)))))) (ite (or c!1246954 c!1246953) (ite c!1246707 (Context!11871 Nil!65828) (Context!11871 call!607083)) (Context!11871 call!607233)) (h!72278 s!2326)))))

(declare-fun call!607229 () List!65952)

(declare-fun bm!607226 () Bool)

(assert (=> bm!607226 (= call!607232 (derivationStepZipperDown!1779 (ite c!1246954 (regTwo!33615 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))) (regOne!33614 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292)))) (ite c!1246954 (ite c!1246707 (Context!11871 Nil!65828) (Context!11871 call!607083)) (Context!11871 call!607229)) (h!72278 s!2326)))))

(declare-fun b!6725374 () Bool)

(declare-fun e!4063334 () (InoxSet Context!11870))

(assert (=> b!6725374 (= e!4063334 e!4063336)))

(assert (=> b!6725374 (= c!1246951 ((_ is Concat!25396) (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))))))

(declare-fun c!1246952 () Bool)

(declare-fun d!2113323 () Bool)

(assert (=> d!2113323 (= c!1246952 (and ((_ is ElementMatch!16551) (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))) (= (c!1246605 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))) (h!72278 s!2326))))))

(declare-fun e!4063337 () (InoxSet Context!11870))

(assert (=> d!2113323 (= (derivationStepZipperDown!1779 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292)) (ite c!1246707 (Context!11871 Nil!65828) (Context!11871 call!607083)) (h!72278 s!2326)) e!4063337)))

(declare-fun b!6725375 () Bool)

(assert (=> b!6725375 (= e!4063337 (store ((as const (Array Context!11870 Bool)) false) (ite c!1246707 (Context!11871 Nil!65828) (Context!11871 call!607083)) true))))

(declare-fun bm!607227 () Bool)

(assert (=> bm!607227 (= call!607233 call!607229)))

(declare-fun b!6725376 () Bool)

(assert (=> b!6725376 (= e!4063336 call!607230)))

(declare-fun b!6725377 () Bool)

(assert (=> b!6725377 (= e!4063337 e!4063339)))

(assert (=> b!6725377 (= c!1246954 ((_ is Union!16551) (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))))))

(declare-fun b!6725378 () Bool)

(assert (=> b!6725378 (= e!4063334 ((_ map or) call!607232 call!607234))))

(declare-fun b!6725379 () Bool)

(assert (=> b!6725379 (= e!4063338 ((as const (Array Context!11870 Bool)) false))))

(declare-fun b!6725380 () Bool)

(declare-fun e!4063335 () Bool)

(assert (=> b!6725380 (= c!1246953 e!4063335)))

(declare-fun res!2751648 () Bool)

(assert (=> b!6725380 (=> (not res!2751648) (not e!4063335))))

(assert (=> b!6725380 (= res!2751648 ((_ is Concat!25396) (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))))))

(assert (=> b!6725380 (= e!4063339 e!4063334)))

(declare-fun bm!607228 () Bool)

(assert (=> bm!607228 (= call!607229 ($colon$colon!2368 (exprs!6435 (ite c!1246707 (Context!11871 Nil!65828) (Context!11871 call!607083))) (ite (or c!1246953 c!1246951) (regTwo!33614 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292))) (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292)))))))

(declare-fun b!6725381 () Bool)

(assert (=> b!6725381 (= e!4063335 (nullable!6538 (regOne!33614 (ite c!1246707 (regTwo!33615 r!7292) (regOne!33614 r!7292)))))))

(declare-fun bm!607229 () Bool)

(assert (=> bm!607229 (= call!607230 call!607234)))

(assert (= (and d!2113323 c!1246952) b!6725375))

(assert (= (and d!2113323 (not c!1246952)) b!6725377))

(assert (= (and b!6725377 c!1246954) b!6725373))

(assert (= (and b!6725377 (not c!1246954)) b!6725380))

(assert (= (and b!6725380 res!2751648) b!6725381))

(assert (= (and b!6725380 c!1246953) b!6725378))

(assert (= (and b!6725380 (not c!1246953)) b!6725374))

(assert (= (and b!6725374 c!1246951) b!6725376))

(assert (= (and b!6725374 (not c!1246951)) b!6725372))

(assert (= (and b!6725372 c!1246950) b!6725371))

(assert (= (and b!6725372 (not c!1246950)) b!6725379))

(assert (= (or b!6725376 b!6725371) bm!607227))

(assert (= (or b!6725376 b!6725371) bm!607229))

(assert (= (or b!6725378 bm!607227) bm!607228))

(assert (= (or b!6725378 bm!607229) bm!607224))

(assert (= (or b!6725373 b!6725378) bm!607226))

(assert (= (or b!6725373 bm!607224) bm!607225))

(declare-fun m!7485570 () Bool)

(assert (=> bm!607225 m!7485570))

(declare-fun m!7485572 () Bool)

(assert (=> b!6725381 m!7485572))

(declare-fun m!7485574 () Bool)

(assert (=> bm!607226 m!7485574))

(declare-fun m!7485576 () Bool)

(assert (=> b!6725375 m!7485576))

(declare-fun m!7485578 () Bool)

(assert (=> bm!607228 m!7485578))

(assert (=> bm!607080 d!2113323))

(declare-fun d!2113325 () Bool)

(declare-fun res!2751649 () Bool)

(declare-fun e!4063340 () Bool)

(assert (=> d!2113325 (=> res!2751649 e!4063340)))

(assert (=> d!2113325 (= res!2751649 ((_ is Nil!65828) (exprs!6435 lt!2436984)))))

(assert (=> d!2113325 (= (forall!15751 (exprs!6435 lt!2436984) lambda!377217) e!4063340)))

(declare-fun b!6725382 () Bool)

(declare-fun e!4063341 () Bool)

(assert (=> b!6725382 (= e!4063340 e!4063341)))

(declare-fun res!2751650 () Bool)

(assert (=> b!6725382 (=> (not res!2751650) (not e!4063341))))

(assert (=> b!6725382 (= res!2751650 (dynLambda!26253 lambda!377217 (h!72276 (exprs!6435 lt!2436984))))))

(declare-fun b!6725383 () Bool)

(assert (=> b!6725383 (= e!4063341 (forall!15751 (t!379633 (exprs!6435 lt!2436984)) lambda!377217))))

(assert (= (and d!2113325 (not res!2751649)) b!6725382))

(assert (= (and b!6725382 res!2751650) b!6725383))

(declare-fun b_lambda!253189 () Bool)

(assert (=> (not b_lambda!253189) (not b!6725382)))

(declare-fun m!7485580 () Bool)

(assert (=> b!6725382 m!7485580))

(declare-fun m!7485582 () Bool)

(assert (=> b!6725383 m!7485582))

(assert (=> d!2113019 d!2113325))

(declare-fun d!2113327 () Bool)

(assert (=> d!2113327 (= (isUnion!1355 lt!2437009) ((_ is Union!16551) lt!2437009))))

(assert (=> b!6724236 d!2113327))

(declare-fun d!2113329 () Bool)

(declare-fun res!2751651 () Bool)

(declare-fun e!4063342 () Bool)

(assert (=> d!2113329 (=> res!2751651 e!4063342)))

(assert (=> d!2113329 (= res!2751651 ((_ is Nil!65828) (exprs!6435 (h!72277 zl!343))))))

(assert (=> d!2113329 (= (forall!15751 (exprs!6435 (h!72277 zl!343)) lambda!377237) e!4063342)))

(declare-fun b!6725384 () Bool)

(declare-fun e!4063343 () Bool)

(assert (=> b!6725384 (= e!4063342 e!4063343)))

(declare-fun res!2751652 () Bool)

(assert (=> b!6725384 (=> (not res!2751652) (not e!4063343))))

(assert (=> b!6725384 (= res!2751652 (dynLambda!26253 lambda!377237 (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6725385 () Bool)

(assert (=> b!6725385 (= e!4063343 (forall!15751 (t!379633 (exprs!6435 (h!72277 zl!343))) lambda!377237))))

(assert (= (and d!2113329 (not res!2751651)) b!6725384))

(assert (= (and b!6725384 res!2751652) b!6725385))

(declare-fun b_lambda!253191 () Bool)

(assert (=> (not b_lambda!253191) (not b!6725384)))

(declare-fun m!7485584 () Bool)

(assert (=> b!6725384 m!7485584))

(declare-fun m!7485586 () Bool)

(assert (=> b!6725385 m!7485586))

(assert (=> d!2113045 d!2113329))

(declare-fun d!2113331 () Bool)

(assert (=> d!2113331 (= (isEmptyExpr!1917 lt!2437054) ((_ is EmptyExpr!16551) lt!2437054))))

(assert (=> b!6724560 d!2113331))

(declare-fun d!2113333 () Bool)

(assert (=> d!2113333 (= (isEmpty!38157 (unfocusZipperList!1972 zl!343)) ((_ is Nil!65828) (unfocusZipperList!1972 zl!343)))))

(assert (=> b!6724232 d!2113333))

(declare-fun d!2113335 () Bool)

(assert (=> d!2113335 (= (isEmpty!38157 (tail!12614 (exprs!6435 (h!72277 zl!343)))) ((_ is Nil!65828) (tail!12614 (exprs!6435 (h!72277 zl!343)))))))

(assert (=> b!6724558 d!2113335))

(declare-fun d!2113337 () Bool)

(assert (=> d!2113337 (= (tail!12614 (exprs!6435 (h!72277 zl!343))) (t!379633 (exprs!6435 (h!72277 zl!343))))))

(assert (=> b!6724558 d!2113337))

(declare-fun d!2113339 () Bool)

(assert (=> d!2113339 (= (Exists!3619 lambda!377225) (choose!50104 lambda!377225))))

(declare-fun bs!1788941 () Bool)

(assert (= bs!1788941 d!2113339))

(declare-fun m!7485588 () Bool)

(assert (=> bs!1788941 m!7485588))

(assert (=> d!2113027 d!2113339))

(declare-fun d!2113341 () Bool)

(assert (=> d!2113341 (= (Exists!3619 lambda!377226) (choose!50104 lambda!377226))))

(declare-fun bs!1788942 () Bool)

(assert (= bs!1788942 d!2113341))

(declare-fun m!7485590 () Bool)

(assert (=> bs!1788942 m!7485590))

(assert (=> d!2113027 d!2113341))

(declare-fun bs!1788943 () Bool)

(declare-fun d!2113343 () Bool)

(assert (= bs!1788943 (and d!2113343 d!2113027)))

(declare-fun lambda!377280 () Int)

(assert (=> bs!1788943 (= lambda!377280 lambda!377225)))

(declare-fun bs!1788944 () Bool)

(assert (= bs!1788944 (and d!2113343 d!2113041)))

(assert (=> bs!1788944 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377280 lambda!377235))))

(declare-fun bs!1788945 () Bool)

(assert (= bs!1788945 (and d!2113343 b!6725002)))

(assert (=> bs!1788945 (not (= lambda!377280 lambda!377266))))

(declare-fun bs!1788946 () Bool)

(assert (= bs!1788946 (and d!2113343 d!2113267)))

(assert (=> bs!1788946 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377280 lambda!377272))))

(declare-fun bs!1788947 () Bool)

(assert (= bs!1788947 (and d!2113343 b!6723956)))

(assert (=> bs!1788947 (not (= lambda!377280 lambda!377159))))

(declare-fun bs!1788948 () Bool)

(assert (= bs!1788948 (and d!2113343 b!6724483)))

(assert (=> bs!1788948 (not (= lambda!377280 lambda!377214))))

(assert (=> bs!1788947 (not (= lambda!377280 lambda!377160))))

(assert (=> bs!1788943 (not (= lambda!377280 lambda!377226))))

(assert (=> bs!1788946 (not (= lambda!377280 lambda!377273))))

(declare-fun bs!1788949 () Bool)

(assert (= bs!1788949 (and d!2113343 b!6724486)))

(assert (=> bs!1788949 (not (= lambda!377280 lambda!377213))))

(assert (=> bs!1788947 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377280 lambda!377158))))

(declare-fun bs!1788950 () Bool)

(assert (= bs!1788950 (and d!2113343 d!2113035)))

(assert (=> bs!1788950 (not (= lambda!377280 lambda!377232))))

(assert (=> bs!1788950 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377280 lambda!377231))))

(declare-fun bs!1788951 () Bool)

(assert (= bs!1788951 (and d!2113343 d!2113185)))

(assert (=> bs!1788951 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377280 lambda!377263))))

(declare-fun bs!1788952 () Bool)

(assert (= bs!1788952 (and d!2113343 b!6724999)))

(assert (=> bs!1788952 (not (= lambda!377280 lambda!377267))))

(assert (=> d!2113343 true))

(assert (=> d!2113343 true))

(declare-fun lambda!377281 () Int)

(assert (=> bs!1788943 (not (= lambda!377281 lambda!377225))))

(assert (=> bs!1788944 (not (= lambda!377281 lambda!377235))))

(assert (=> bs!1788945 (= (and (= (reg!16880 r!7292) (reg!16880 (regOne!33615 r!7292))) (= (Star!16551 (reg!16880 r!7292)) (regOne!33615 r!7292))) (= lambda!377281 lambda!377266))))

(assert (=> bs!1788946 (not (= lambda!377281 lambda!377272))))

(assert (=> bs!1788947 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377281 lambda!377159))))

(assert (=> bs!1788948 (not (= lambda!377281 lambda!377214))))

(declare-fun bs!1788953 () Bool)

(assert (= bs!1788953 d!2113343))

(assert (=> bs!1788953 (not (= lambda!377281 lambda!377280))))

(assert (=> bs!1788947 (not (= lambda!377281 lambda!377160))))

(assert (=> bs!1788943 (= lambda!377281 lambda!377226)))

(assert (=> bs!1788946 (not (= lambda!377281 lambda!377273))))

(assert (=> bs!1788949 (= (= (Star!16551 (reg!16880 r!7292)) r!7292) (= lambda!377281 lambda!377213))))

(assert (=> bs!1788947 (not (= lambda!377281 lambda!377158))))

(assert (=> bs!1788950 (not (= lambda!377281 lambda!377232))))

(assert (=> bs!1788950 (not (= lambda!377281 lambda!377231))))

(assert (=> bs!1788951 (not (= lambda!377281 lambda!377263))))

(assert (=> bs!1788952 (not (= lambda!377281 lambda!377267))))

(assert (=> d!2113343 true))

(assert (=> d!2113343 true))

(assert (=> d!2113343 (= (Exists!3619 lambda!377280) (Exists!3619 lambda!377281))))

(assert (=> d!2113343 true))

(declare-fun _$91!674 () Unit!159793)

(assert (=> d!2113343 (= (choose!50103 (reg!16880 r!7292) s!2326) _$91!674)))

(declare-fun m!7485592 () Bool)

(assert (=> bs!1788953 m!7485592))

(declare-fun m!7485594 () Bool)

(assert (=> bs!1788953 m!7485594))

(assert (=> d!2113027 d!2113343))

(assert (=> d!2113027 d!2113181))

(assert (=> b!6724611 d!2113015))

(declare-fun bs!1788954 () Bool)

(declare-fun d!2113345 () Bool)

(assert (= bs!1788954 (and d!2113345 d!2112953)))

(declare-fun lambda!377282 () Int)

(assert (=> bs!1788954 (= lambda!377282 lambda!377176)))

(declare-fun bs!1788955 () Bool)

(assert (= bs!1788955 (and d!2113345 d!2113045)))

(assert (=> bs!1788955 (= lambda!377282 lambda!377237)))

(declare-fun bs!1788956 () Bool)

(assert (= bs!1788956 (and d!2113345 d!2113019)))

(assert (=> bs!1788956 (= lambda!377282 lambda!377217)))

(declare-fun bs!1788957 () Bool)

(assert (= bs!1788957 (and d!2113345 d!2112963)))

(assert (=> bs!1788957 (= lambda!377282 lambda!377182)))

(declare-fun bs!1788958 () Bool)

(assert (= bs!1788958 (and d!2113345 d!2113023)))

(assert (=> bs!1788958 (= lambda!377282 lambda!377220)))

(declare-fun bs!1788959 () Bool)

(assert (= bs!1788959 (and d!2113345 d!2113311)))

(assert (=> bs!1788959 (= lambda!377282 lambda!377274)))

(declare-fun bs!1788960 () Bool)

(assert (= bs!1788960 (and d!2113345 d!2113319)))

(assert (=> bs!1788960 (= lambda!377282 lambda!377275)))

(declare-fun bs!1788961 () Bool)

(assert (= bs!1788961 (and d!2113345 d!2113043)))

(assert (=> bs!1788961 (= lambda!377282 lambda!377236)))

(declare-fun bs!1788962 () Bool)

(assert (= bs!1788962 (and d!2113345 d!2113201)))

(assert (=> bs!1788962 (= lambda!377282 lambda!377265)))

(assert (=> d!2113345 (= (inv!84624 (h!72277 (t!379634 zl!343))) (forall!15751 (exprs!6435 (h!72277 (t!379634 zl!343))) lambda!377282))))

(declare-fun bs!1788963 () Bool)

(assert (= bs!1788963 d!2113345))

(declare-fun m!7485596 () Bool)

(assert (=> bs!1788963 m!7485596))

(assert (=> b!6724668 d!2113345))

(declare-fun b!6725396 () Bool)

(declare-fun e!4063350 () (InoxSet Context!11870))

(assert (=> b!6725396 (= e!4063350 ((as const (Array Context!11870 Bool)) false))))

(declare-fun d!2113347 () Bool)

(declare-fun c!1246955 () Bool)

(declare-fun e!4063349 () Bool)

(assert (=> d!2113347 (= c!1246955 e!4063349)))

(declare-fun res!2751663 () Bool)

(assert (=> d!2113347 (=> (not res!2751663) (not e!4063349))))

(assert (=> d!2113347 (= res!2751663 ((_ is Cons!65828) (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))))

(declare-fun e!4063348 () (InoxSet Context!11870))

(assert (=> d!2113347 (= (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (h!72278 s!2326)) e!4063348)))

(declare-fun b!6725397 () Bool)

(declare-fun call!607235 () (InoxSet Context!11870))

(assert (=> b!6725397 (= e!4063350 call!607235)))

(declare-fun b!6725398 () Bool)

(assert (=> b!6725398 (= e!4063348 e!4063350)))

(declare-fun c!1246956 () Bool)

(assert (=> b!6725398 (= c!1246956 ((_ is Cons!65828) (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))))

(declare-fun b!6725399 () Bool)

(assert (=> b!6725399 (= e!4063349 (nullable!6538 (h!72276 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))))))

(declare-fun bm!607230 () Bool)

(assert (=> bm!607230 (= call!607235 (derivationStepZipperDown!1779 (h!72276 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))) (Context!11871 (t!379633 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))) (h!72278 s!2326)))))

(declare-fun b!6725400 () Bool)

(assert (=> b!6725400 (= e!4063348 ((_ map or) call!607235 (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828)))))))) (h!72278 s!2326))))))

(assert (= (and d!2113347 res!2751663) b!6725399))

(assert (= (and d!2113347 c!1246955) b!6725400))

(assert (= (and d!2113347 (not c!1246955)) b!6725398))

(assert (= (and b!6725398 c!1246956) b!6725397))

(assert (= (and b!6725398 (not c!1246956)) b!6725396))

(assert (= (or b!6725400 b!6725397) bm!607230))

(declare-fun m!7485598 () Bool)

(assert (=> b!6725399 m!7485598))

(declare-fun m!7485600 () Bool)

(assert (=> bm!607230 m!7485600))

(declare-fun m!7485602 () Bool)

(assert (=> b!6725400 m!7485602))

(assert (=> b!6724342 d!2113347))

(assert (=> b!6724609 d!2113177))

(declare-fun d!2113349 () Bool)

(assert (=> d!2113349 true))

(assert (=> d!2113349 true))

(declare-fun res!2751664 () Bool)

(assert (=> d!2113349 (= (choose!50104 lambda!377159) res!2751664)))

(assert (=> d!2113037 d!2113349))

(declare-fun d!2113351 () Bool)

(declare-fun res!2751665 () Bool)

(declare-fun e!4063351 () Bool)

(assert (=> d!2113351 (=> res!2751665 e!4063351)))

(assert (=> d!2113351 (= res!2751665 ((_ is Nil!65828) (exprs!6435 setElem!45835)))))

(assert (=> d!2113351 (= (forall!15751 (exprs!6435 setElem!45835) lambda!377236) e!4063351)))

(declare-fun b!6725401 () Bool)

(declare-fun e!4063352 () Bool)

(assert (=> b!6725401 (= e!4063351 e!4063352)))

(declare-fun res!2751666 () Bool)

(assert (=> b!6725401 (=> (not res!2751666) (not e!4063352))))

(assert (=> b!6725401 (= res!2751666 (dynLambda!26253 lambda!377236 (h!72276 (exprs!6435 setElem!45835))))))

(declare-fun b!6725402 () Bool)

(assert (=> b!6725402 (= e!4063352 (forall!15751 (t!379633 (exprs!6435 setElem!45835)) lambda!377236))))

(assert (= (and d!2113351 (not res!2751665)) b!6725401))

(assert (= (and b!6725401 res!2751666) b!6725402))

(declare-fun b_lambda!253193 () Bool)

(assert (=> (not b_lambda!253193) (not b!6725401)))

(declare-fun m!7485604 () Bool)

(assert (=> b!6725401 m!7485604))

(declare-fun m!7485606 () Bool)

(assert (=> b!6725402 m!7485606))

(assert (=> d!2113043 d!2113351))

(declare-fun bm!607231 () Bool)

(declare-fun call!607238 () Bool)

(declare-fun call!607237 () Bool)

(assert (=> bm!607231 (= call!607238 call!607237)))

(declare-fun b!6725403 () Bool)

(declare-fun e!4063354 () Bool)

(declare-fun e!4063359 () Bool)

(assert (=> b!6725403 (= e!4063354 e!4063359)))

(declare-fun res!2751668 () Bool)

(assert (=> b!6725403 (= res!2751668 (not (nullable!6538 (reg!16880 lt!2437054))))))

(assert (=> b!6725403 (=> (not res!2751668) (not e!4063359))))

(declare-fun b!6725404 () Bool)

(declare-fun res!2751667 () Bool)

(declare-fun e!4063353 () Bool)

(assert (=> b!6725404 (=> res!2751667 e!4063353)))

(assert (=> b!6725404 (= res!2751667 (not ((_ is Concat!25396) lt!2437054)))))

(declare-fun e!4063356 () Bool)

(assert (=> b!6725404 (= e!4063356 e!4063353)))

(declare-fun d!2113353 () Bool)

(declare-fun res!2751671 () Bool)

(declare-fun e!4063358 () Bool)

(assert (=> d!2113353 (=> res!2751671 e!4063358)))

(assert (=> d!2113353 (= res!2751671 ((_ is ElementMatch!16551) lt!2437054))))

(assert (=> d!2113353 (= (validRegex!8287 lt!2437054) e!4063358)))

(declare-fun bm!607232 () Bool)

(declare-fun call!607236 () Bool)

(declare-fun c!1246957 () Bool)

(assert (=> bm!607232 (= call!607236 (validRegex!8287 (ite c!1246957 (regOne!33615 lt!2437054) (regOne!33614 lt!2437054))))))

(declare-fun b!6725405 () Bool)

(declare-fun e!4063355 () Bool)

(assert (=> b!6725405 (= e!4063355 call!607238)))

(declare-fun b!6725406 () Bool)

(declare-fun res!2751669 () Bool)

(declare-fun e!4063357 () Bool)

(assert (=> b!6725406 (=> (not res!2751669) (not e!4063357))))

(assert (=> b!6725406 (= res!2751669 call!607236)))

(assert (=> b!6725406 (= e!4063356 e!4063357)))

(declare-fun b!6725407 () Bool)

(assert (=> b!6725407 (= e!4063354 e!4063356)))

(assert (=> b!6725407 (= c!1246957 ((_ is Union!16551) lt!2437054))))

(declare-fun b!6725408 () Bool)

(assert (=> b!6725408 (= e!4063353 e!4063355)))

(declare-fun res!2751670 () Bool)

(assert (=> b!6725408 (=> (not res!2751670) (not e!4063355))))

(assert (=> b!6725408 (= res!2751670 call!607236)))

(declare-fun c!1246958 () Bool)

(declare-fun bm!607233 () Bool)

(assert (=> bm!607233 (= call!607237 (validRegex!8287 (ite c!1246958 (reg!16880 lt!2437054) (ite c!1246957 (regTwo!33615 lt!2437054) (regTwo!33614 lt!2437054)))))))

(declare-fun b!6725409 () Bool)

(assert (=> b!6725409 (= e!4063358 e!4063354)))

(assert (=> b!6725409 (= c!1246958 ((_ is Star!16551) lt!2437054))))

(declare-fun b!6725410 () Bool)

(assert (=> b!6725410 (= e!4063357 call!607238)))

(declare-fun b!6725411 () Bool)

(assert (=> b!6725411 (= e!4063359 call!607237)))

(assert (= (and d!2113353 (not res!2751671)) b!6725409))

(assert (= (and b!6725409 c!1246958) b!6725403))

(assert (= (and b!6725409 (not c!1246958)) b!6725407))

(assert (= (and b!6725403 res!2751668) b!6725411))

(assert (= (and b!6725407 c!1246957) b!6725406))

(assert (= (and b!6725407 (not c!1246957)) b!6725404))

(assert (= (and b!6725406 res!2751669) b!6725410))

(assert (= (and b!6725404 (not res!2751667)) b!6725408))

(assert (= (and b!6725408 res!2751670) b!6725405))

(assert (= (or b!6725410 b!6725405) bm!607231))

(assert (= (or b!6725406 b!6725408) bm!607232))

(assert (= (or b!6725411 bm!607231) bm!607233))

(declare-fun m!7485608 () Bool)

(assert (=> b!6725403 m!7485608))

(declare-fun m!7485610 () Bool)

(assert (=> bm!607232 m!7485610))

(declare-fun m!7485612 () Bool)

(assert (=> bm!607233 m!7485612))

(assert (=> d!2113023 d!2113353))

(declare-fun d!2113355 () Bool)

(declare-fun res!2751672 () Bool)

(declare-fun e!4063360 () Bool)

(assert (=> d!2113355 (=> res!2751672 e!4063360)))

(assert (=> d!2113355 (= res!2751672 ((_ is Nil!65828) (exprs!6435 (h!72277 zl!343))))))

(assert (=> d!2113355 (= (forall!15751 (exprs!6435 (h!72277 zl!343)) lambda!377220) e!4063360)))

(declare-fun b!6725412 () Bool)

(declare-fun e!4063361 () Bool)

(assert (=> b!6725412 (= e!4063360 e!4063361)))

(declare-fun res!2751673 () Bool)

(assert (=> b!6725412 (=> (not res!2751673) (not e!4063361))))

(assert (=> b!6725412 (= res!2751673 (dynLambda!26253 lambda!377220 (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun b!6725413 () Bool)

(assert (=> b!6725413 (= e!4063361 (forall!15751 (t!379633 (exprs!6435 (h!72277 zl!343))) lambda!377220))))

(assert (= (and d!2113355 (not res!2751672)) b!6725412))

(assert (= (and b!6725412 res!2751673) b!6725413))

(declare-fun b_lambda!253195 () Bool)

(assert (=> (not b_lambda!253195) (not b!6725412)))

(declare-fun m!7485614 () Bool)

(assert (=> b!6725412 m!7485614))

(declare-fun m!7485616 () Bool)

(assert (=> b!6725413 m!7485616))

(assert (=> d!2113023 d!2113355))

(declare-fun d!2113357 () Bool)

(assert (=> d!2113357 (= (nullable!6538 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))) (nullableFct!2452 (h!72276 (exprs!6435 (Context!11871 (Cons!65828 r!7292 Nil!65828))))))))

(declare-fun bs!1788964 () Bool)

(assert (= bs!1788964 d!2113357))

(declare-fun m!7485618 () Bool)

(assert (=> bs!1788964 m!7485618))

(assert (=> b!6724341 d!2113357))

(declare-fun bs!1788965 () Bool)

(declare-fun b!6725421 () Bool)

(assert (= bs!1788965 (and b!6725421 d!2113027)))

(declare-fun lambda!377283 () Int)

(assert (=> bs!1788965 (not (= lambda!377283 lambda!377225))))

(declare-fun bs!1788966 () Bool)

(assert (= bs!1788966 (and b!6725421 d!2113041)))

(assert (=> bs!1788966 (not (= lambda!377283 lambda!377235))))

(declare-fun bs!1788967 () Bool)

(assert (= bs!1788967 (and b!6725421 b!6725002)))

(assert (=> bs!1788967 (= (and (= (reg!16880 (regTwo!33615 r!7292)) (reg!16880 (regOne!33615 r!7292))) (= (regTwo!33615 r!7292) (regOne!33615 r!7292))) (= lambda!377283 lambda!377266))))

(declare-fun bs!1788968 () Bool)

(assert (= bs!1788968 (and b!6725421 d!2113267)))

(assert (=> bs!1788968 (not (= lambda!377283 lambda!377272))))

(declare-fun bs!1788969 () Bool)

(assert (= bs!1788969 (and b!6725421 b!6723956)))

(assert (=> bs!1788969 (= (and (= (reg!16880 (regTwo!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33615 r!7292) r!7292)) (= lambda!377283 lambda!377159))))

(declare-fun bs!1788970 () Bool)

(assert (= bs!1788970 (and b!6725421 b!6724483)))

(assert (=> bs!1788970 (not (= lambda!377283 lambda!377214))))

(declare-fun bs!1788971 () Bool)

(assert (= bs!1788971 (and b!6725421 d!2113343)))

(assert (=> bs!1788971 (not (= lambda!377283 lambda!377280))))

(assert (=> bs!1788971 (= (and (= (reg!16880 (regTwo!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33615 r!7292) (Star!16551 (reg!16880 r!7292)))) (= lambda!377283 lambda!377281))))

(assert (=> bs!1788969 (not (= lambda!377283 lambda!377160))))

(assert (=> bs!1788965 (= (and (= (reg!16880 (regTwo!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33615 r!7292) (Star!16551 (reg!16880 r!7292)))) (= lambda!377283 lambda!377226))))

(assert (=> bs!1788968 (not (= lambda!377283 lambda!377273))))

(declare-fun bs!1788972 () Bool)

(assert (= bs!1788972 (and b!6725421 b!6724486)))

(assert (=> bs!1788972 (= (and (= (reg!16880 (regTwo!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33615 r!7292) r!7292)) (= lambda!377283 lambda!377213))))

(assert (=> bs!1788969 (not (= lambda!377283 lambda!377158))))

(declare-fun bs!1788973 () Bool)

(assert (= bs!1788973 (and b!6725421 d!2113035)))

(assert (=> bs!1788973 (not (= lambda!377283 lambda!377232))))

(assert (=> bs!1788973 (not (= lambda!377283 lambda!377231))))

(declare-fun bs!1788974 () Bool)

(assert (= bs!1788974 (and b!6725421 d!2113185)))

(assert (=> bs!1788974 (not (= lambda!377283 lambda!377263))))

(declare-fun bs!1788975 () Bool)

(assert (= bs!1788975 (and b!6725421 b!6724999)))

(assert (=> bs!1788975 (not (= lambda!377283 lambda!377267))))

(assert (=> b!6725421 true))

(assert (=> b!6725421 true))

(declare-fun bs!1788976 () Bool)

(declare-fun b!6725418 () Bool)

(assert (= bs!1788976 (and b!6725418 d!2113027)))

(declare-fun lambda!377284 () Int)

(assert (=> bs!1788976 (not (= lambda!377284 lambda!377225))))

(declare-fun bs!1788977 () Bool)

(assert (= bs!1788977 (and b!6725418 d!2113041)))

(assert (=> bs!1788977 (not (= lambda!377284 lambda!377235))))

(declare-fun bs!1788978 () Bool)

(assert (= bs!1788978 (and b!6725418 b!6725002)))

(assert (=> bs!1788978 (not (= lambda!377284 lambda!377266))))

(declare-fun bs!1788979 () Bool)

(assert (= bs!1788979 (and b!6725418 d!2113267)))

(assert (=> bs!1788979 (not (= lambda!377284 lambda!377272))))

(declare-fun bs!1788980 () Bool)

(assert (= bs!1788980 (and b!6725418 b!6723956)))

(assert (=> bs!1788980 (not (= lambda!377284 lambda!377159))))

(declare-fun bs!1788981 () Bool)

(assert (= bs!1788981 (and b!6725418 b!6724483)))

(assert (=> bs!1788981 (= (and (= (regOne!33614 (regTwo!33615 r!7292)) (regOne!33614 r!7292)) (= (regTwo!33614 (regTwo!33615 r!7292)) (regTwo!33614 r!7292))) (= lambda!377284 lambda!377214))))

(declare-fun bs!1788982 () Bool)

(assert (= bs!1788982 (and b!6725418 b!6725421)))

(assert (=> bs!1788982 (not (= lambda!377284 lambda!377283))))

(declare-fun bs!1788983 () Bool)

(assert (= bs!1788983 (and b!6725418 d!2113343)))

(assert (=> bs!1788983 (not (= lambda!377284 lambda!377280))))

(assert (=> bs!1788983 (not (= lambda!377284 lambda!377281))))

(assert (=> bs!1788980 (= (and (= (regOne!33614 (regTwo!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33614 (regTwo!33615 r!7292)) r!7292)) (= lambda!377284 lambda!377160))))

(assert (=> bs!1788976 (not (= lambda!377284 lambda!377226))))

(assert (=> bs!1788979 (= (and (= (regOne!33614 (regTwo!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33614 (regTwo!33615 r!7292)) r!7292)) (= lambda!377284 lambda!377273))))

(declare-fun bs!1788984 () Bool)

(assert (= bs!1788984 (and b!6725418 b!6724486)))

(assert (=> bs!1788984 (not (= lambda!377284 lambda!377213))))

(assert (=> bs!1788980 (not (= lambda!377284 lambda!377158))))

(declare-fun bs!1788985 () Bool)

(assert (= bs!1788985 (and b!6725418 d!2113035)))

(assert (=> bs!1788985 (= (and (= (regOne!33614 (regTwo!33615 r!7292)) (reg!16880 r!7292)) (= (regTwo!33614 (regTwo!33615 r!7292)) r!7292)) (= lambda!377284 lambda!377232))))

(assert (=> bs!1788985 (not (= lambda!377284 lambda!377231))))

(declare-fun bs!1788986 () Bool)

(assert (= bs!1788986 (and b!6725418 d!2113185)))

(assert (=> bs!1788986 (not (= lambda!377284 lambda!377263))))

(declare-fun bs!1788987 () Bool)

(assert (= bs!1788987 (and b!6725418 b!6724999)))

(assert (=> bs!1788987 (= (and (= (regOne!33614 (regTwo!33615 r!7292)) (regOne!33614 (regOne!33615 r!7292))) (= (regTwo!33614 (regTwo!33615 r!7292)) (regTwo!33614 (regOne!33615 r!7292)))) (= lambda!377284 lambda!377267))))

(assert (=> b!6725418 true))

(assert (=> b!6725418 true))

(declare-fun b!6725414 () Bool)

(declare-fun e!4063363 () Bool)

(assert (=> b!6725414 (= e!4063363 (= s!2326 (Cons!65830 (c!1246605 (regTwo!33615 r!7292)) Nil!65830)))))

(declare-fun b!6725415 () Bool)

(declare-fun e!4063368 () Bool)

(declare-fun call!607239 () Bool)

(assert (=> b!6725415 (= e!4063368 call!607239)))

(declare-fun bm!607234 () Bool)

(assert (=> bm!607234 (= call!607239 (isEmpty!38153 s!2326))))

(declare-fun b!6725416 () Bool)

(declare-fun res!2751676 () Bool)

(declare-fun e!4063364 () Bool)

(assert (=> b!6725416 (=> res!2751676 e!4063364)))

(assert (=> b!6725416 (= res!2751676 call!607239)))

(declare-fun e!4063367 () Bool)

(assert (=> b!6725416 (= e!4063367 e!4063364)))

(declare-fun b!6725417 () Bool)

(declare-fun c!1246960 () Bool)

(assert (=> b!6725417 (= c!1246960 ((_ is Union!16551) (regTwo!33615 r!7292)))))

(declare-fun e!4063362 () Bool)

(assert (=> b!6725417 (= e!4063363 e!4063362)))

(declare-fun d!2113359 () Bool)

(declare-fun c!1246962 () Bool)

(assert (=> d!2113359 (= c!1246962 ((_ is EmptyExpr!16551) (regTwo!33615 r!7292)))))

(assert (=> d!2113359 (= (matchRSpec!3652 (regTwo!33615 r!7292) s!2326) e!4063368)))

(declare-fun call!607240 () Bool)

(assert (=> b!6725418 (= e!4063367 call!607240)))

(declare-fun b!6725419 () Bool)

(declare-fun e!4063366 () Bool)

(assert (=> b!6725419 (= e!4063368 e!4063366)))

(declare-fun res!2751674 () Bool)

(assert (=> b!6725419 (= res!2751674 (not ((_ is EmptyLang!16551) (regTwo!33615 r!7292))))))

(assert (=> b!6725419 (=> (not res!2751674) (not e!4063366))))

(declare-fun bm!607235 () Bool)

(declare-fun c!1246961 () Bool)

(assert (=> bm!607235 (= call!607240 (Exists!3619 (ite c!1246961 lambda!377283 lambda!377284)))))

(declare-fun b!6725420 () Bool)

(assert (=> b!6725420 (= e!4063362 e!4063367)))

(assert (=> b!6725420 (= c!1246961 ((_ is Star!16551) (regTwo!33615 r!7292)))))

(assert (=> b!6725421 (= e!4063364 call!607240)))

(declare-fun b!6725422 () Bool)

(declare-fun c!1246959 () Bool)

(assert (=> b!6725422 (= c!1246959 ((_ is ElementMatch!16551) (regTwo!33615 r!7292)))))

(assert (=> b!6725422 (= e!4063366 e!4063363)))

(declare-fun b!6725423 () Bool)

(declare-fun e!4063365 () Bool)

(assert (=> b!6725423 (= e!4063362 e!4063365)))

(declare-fun res!2751675 () Bool)

(assert (=> b!6725423 (= res!2751675 (matchRSpec!3652 (regOne!33615 (regTwo!33615 r!7292)) s!2326))))

(assert (=> b!6725423 (=> res!2751675 e!4063365)))

(declare-fun b!6725424 () Bool)

(assert (=> b!6725424 (= e!4063365 (matchRSpec!3652 (regTwo!33615 (regTwo!33615 r!7292)) s!2326))))

(assert (= (and d!2113359 c!1246962) b!6725415))

(assert (= (and d!2113359 (not c!1246962)) b!6725419))

(assert (= (and b!6725419 res!2751674) b!6725422))

(assert (= (and b!6725422 c!1246959) b!6725414))

(assert (= (and b!6725422 (not c!1246959)) b!6725417))

(assert (= (and b!6725417 c!1246960) b!6725423))

(assert (= (and b!6725417 (not c!1246960)) b!6725420))

(assert (= (and b!6725423 (not res!2751675)) b!6725424))

(assert (= (and b!6725420 c!1246961) b!6725416))

(assert (= (and b!6725420 (not c!1246961)) b!6725418))

(assert (= (and b!6725416 (not res!2751676)) b!6725421))

(assert (= (or b!6725421 b!6725418) bm!607235))

(assert (= (or b!6725415 b!6725416) bm!607234))

(assert (=> bm!607234 m!7484558))

(declare-fun m!7485620 () Bool)

(assert (=> bm!607235 m!7485620))

(declare-fun m!7485622 () Bool)

(assert (=> b!6725423 m!7485622))

(declare-fun m!7485624 () Bool)

(assert (=> b!6725424 m!7485624))

(assert (=> b!6724489 d!2113359))

(declare-fun bm!607236 () Bool)

(declare-fun call!607243 () Bool)

(declare-fun call!607242 () Bool)

(assert (=> bm!607236 (= call!607243 call!607242)))

(declare-fun b!6725425 () Bool)

(declare-fun e!4063370 () Bool)

(declare-fun e!4063375 () Bool)

(assert (=> b!6725425 (= e!4063370 e!4063375)))

(declare-fun res!2751678 () Bool)

(assert (=> b!6725425 (= res!2751678 (not (nullable!6538 (reg!16880 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))))))))

(assert (=> b!6725425 (=> (not res!2751678) (not e!4063375))))

(declare-fun b!6725426 () Bool)

(declare-fun res!2751677 () Bool)

(declare-fun e!4063369 () Bool)

(assert (=> b!6725426 (=> res!2751677 e!4063369)))

(assert (=> b!6725426 (= res!2751677 (not ((_ is Concat!25396) (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292))))))))

(declare-fun e!4063372 () Bool)

(assert (=> b!6725426 (= e!4063372 e!4063369)))

(declare-fun d!2113361 () Bool)

(declare-fun res!2751681 () Bool)

(declare-fun e!4063374 () Bool)

(assert (=> d!2113361 (=> res!2751681 e!4063374)))

(assert (=> d!2113361 (= res!2751681 ((_ is ElementMatch!16551) (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))))))

(assert (=> d!2113361 (= (validRegex!8287 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))) e!4063374)))

(declare-fun c!1246963 () Bool)

(declare-fun bm!607237 () Bool)

(declare-fun call!607241 () Bool)

(assert (=> bm!607237 (= call!607241 (validRegex!8287 (ite c!1246963 (regOne!33615 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))) (regOne!33614 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))))))))

(declare-fun b!6725427 () Bool)

(declare-fun e!4063371 () Bool)

(assert (=> b!6725427 (= e!4063371 call!607243)))

(declare-fun b!6725428 () Bool)

(declare-fun res!2751679 () Bool)

(declare-fun e!4063373 () Bool)

(assert (=> b!6725428 (=> (not res!2751679) (not e!4063373))))

(assert (=> b!6725428 (= res!2751679 call!607241)))

(assert (=> b!6725428 (= e!4063372 e!4063373)))

(declare-fun b!6725429 () Bool)

(assert (=> b!6725429 (= e!4063370 e!4063372)))

(assert (=> b!6725429 (= c!1246963 ((_ is Union!16551) (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))))))

(declare-fun b!6725430 () Bool)

(assert (=> b!6725430 (= e!4063369 e!4063371)))

(declare-fun res!2751680 () Bool)

(assert (=> b!6725430 (=> (not res!2751680) (not e!4063371))))

(assert (=> b!6725430 (= res!2751680 call!607241)))

(declare-fun bm!607238 () Bool)

(declare-fun c!1246964 () Bool)

(assert (=> bm!607238 (= call!607242 (validRegex!8287 (ite c!1246964 (reg!16880 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))) (ite c!1246963 (regTwo!33615 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))) (regTwo!33614 (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292))))))))))

(declare-fun b!6725431 () Bool)

(assert (=> b!6725431 (= e!4063374 e!4063370)))

(assert (=> b!6725431 (= c!1246964 ((_ is Star!16551) (ite c!1246642 (reg!16880 r!7292) (ite c!1246641 (regTwo!33615 r!7292) (regTwo!33614 r!7292)))))))

(declare-fun b!6725432 () Bool)

(assert (=> b!6725432 (= e!4063373 call!607243)))

(declare-fun b!6725433 () Bool)

(assert (=> b!6725433 (= e!4063375 call!607242)))

(assert (= (and d!2113361 (not res!2751681)) b!6725431))

(assert (= (and b!6725431 c!1246964) b!6725425))

(assert (= (and b!6725431 (not c!1246964)) b!6725429))

(assert (= (and b!6725425 res!2751678) b!6725433))

(assert (= (and b!6725429 c!1246963) b!6725428))

(assert (= (and b!6725429 (not c!1246963)) b!6725426))

(assert (= (and b!6725428 res!2751679) b!6725432))

(assert (= (and b!6725426 (not res!2751677)) b!6725430))

(assert (= (and b!6725430 res!2751680) b!6725427))

(assert (= (or b!6725432 b!6725427) bm!607236))

(assert (= (or b!6725428 b!6725430) bm!607237))

(assert (= (or b!6725433 bm!607236) bm!607238))

(declare-fun m!7485626 () Bool)

(assert (=> b!6725425 m!7485626))

(declare-fun m!7485628 () Bool)

(assert (=> bm!607237 m!7485628))

(declare-fun m!7485630 () Bool)

(assert (=> bm!607238 m!7485630))

(assert (=> bm!607043 d!2113361))

(assert (=> b!6724524 d!2113287))

(assert (=> b!6724524 d!2113261))

(declare-fun d!2113363 () Bool)

(assert (=> d!2113363 true))

(declare-fun setRes!45848 () Bool)

(assert (=> d!2113363 setRes!45848))

(declare-fun condSetEmpty!45848 () Bool)

(declare-fun res!2751684 () (InoxSet Context!11870))

(assert (=> d!2113363 (= condSetEmpty!45848 (= res!2751684 ((as const (Array Context!11870 Bool)) false)))))

(assert (=> d!2113363 (= (choose!50100 z!1189 lambda!377161) res!2751684)))

(declare-fun setIsEmpty!45848 () Bool)

(assert (=> setIsEmpty!45848 setRes!45848))

(declare-fun tp!1843938 () Bool)

(declare-fun setElem!45848 () Context!11870)

(declare-fun setNonEmpty!45848 () Bool)

(declare-fun e!4063378 () Bool)

(assert (=> setNonEmpty!45848 (= setRes!45848 (and tp!1843938 (inv!84624 setElem!45848) e!4063378))))

(declare-fun setRest!45848 () (InoxSet Context!11870))

(assert (=> setNonEmpty!45848 (= res!2751684 ((_ map or) (store ((as const (Array Context!11870 Bool)) false) setElem!45848 true) setRest!45848))))

(declare-fun b!6725436 () Bool)

(declare-fun tp!1843939 () Bool)

(assert (=> b!6725436 (= e!4063378 tp!1843939)))

(assert (= (and d!2113363 condSetEmpty!45848) setIsEmpty!45848))

(assert (= (and d!2113363 (not condSetEmpty!45848)) setNonEmpty!45848))

(assert (= setNonEmpty!45848 b!6725436))

(declare-fun m!7485632 () Bool)

(assert (=> setNonEmpty!45848 m!7485632))

(assert (=> d!2112999 d!2113363))

(declare-fun b!6725439 () Bool)

(declare-fun res!2751685 () Bool)

(declare-fun e!4063380 () Bool)

(assert (=> b!6725439 (=> (not res!2751685) (not e!4063380))))

(declare-fun lt!2437113 () List!65954)

(assert (=> b!6725439 (= res!2751685 (= (size!40601 lt!2437113) (+ (size!40601 (_1!36829 (get!22898 lt!2437067))) (size!40601 (_2!36829 (get!22898 lt!2437067))))))))

(declare-fun d!2113365 () Bool)

(assert (=> d!2113365 e!4063380))

(declare-fun res!2751686 () Bool)

(assert (=> d!2113365 (=> (not res!2751686) (not e!4063380))))

(assert (=> d!2113365 (= res!2751686 (= (content!12773 lt!2437113) ((_ map or) (content!12773 (_1!36829 (get!22898 lt!2437067))) (content!12773 (_2!36829 (get!22898 lt!2437067))))))))

(declare-fun e!4063379 () List!65954)

(assert (=> d!2113365 (= lt!2437113 e!4063379)))

(declare-fun c!1246965 () Bool)

(assert (=> d!2113365 (= c!1246965 ((_ is Nil!65830) (_1!36829 (get!22898 lt!2437067))))))

(assert (=> d!2113365 (= (++!14707 (_1!36829 (get!22898 lt!2437067)) (_2!36829 (get!22898 lt!2437067))) lt!2437113)))

(declare-fun b!6725440 () Bool)

(assert (=> b!6725440 (= e!4063380 (or (not (= (_2!36829 (get!22898 lt!2437067)) Nil!65830)) (= lt!2437113 (_1!36829 (get!22898 lt!2437067)))))))

(declare-fun b!6725438 () Bool)

(assert (=> b!6725438 (= e!4063379 (Cons!65830 (h!72278 (_1!36829 (get!22898 lt!2437067))) (++!14707 (t!379635 (_1!36829 (get!22898 lt!2437067))) (_2!36829 (get!22898 lt!2437067)))))))

(declare-fun b!6725437 () Bool)

(assert (=> b!6725437 (= e!4063379 (_2!36829 (get!22898 lt!2437067)))))

(assert (= (and d!2113365 c!1246965) b!6725437))

(assert (= (and d!2113365 (not c!1246965)) b!6725438))

(assert (= (and d!2113365 res!2751686) b!6725439))

(assert (= (and b!6725439 res!2751685) b!6725440))

(declare-fun m!7485634 () Bool)

(assert (=> b!6725439 m!7485634))

(declare-fun m!7485636 () Bool)

(assert (=> b!6725439 m!7485636))

(declare-fun m!7485638 () Bool)

(assert (=> b!6725439 m!7485638))

(declare-fun m!7485640 () Bool)

(assert (=> d!2113365 m!7485640))

(declare-fun m!7485642 () Bool)

(assert (=> d!2113365 m!7485642))

(declare-fun m!7485644 () Bool)

(assert (=> d!2113365 m!7485644))

(declare-fun m!7485646 () Bool)

(assert (=> b!6725438 m!7485646))

(assert (=> b!6724607 d!2113365))

(assert (=> b!6724607 d!2113235))

(declare-fun d!2113367 () Bool)

(assert (=> d!2113367 (= (isEmpty!38158 (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326)) (not ((_ is Some!16437) (findConcatSeparation!2852 (reg!16880 r!7292) r!7292 Nil!65830 s!2326 s!2326))))))

(assert (=> d!2113025 d!2113367))

(declare-fun d!2113369 () Bool)

(declare-fun res!2751691 () Bool)

(declare-fun e!4063385 () Bool)

(assert (=> d!2113369 (=> res!2751691 e!4063385)))

(assert (=> d!2113369 (= res!2751691 ((_ is Nil!65829) lt!2436997))))

(assert (=> d!2113369 (= (noDuplicate!2344 lt!2436997) e!4063385)))

(declare-fun b!6725445 () Bool)

(declare-fun e!4063386 () Bool)

(assert (=> b!6725445 (= e!4063385 e!4063386)))

(declare-fun res!2751692 () Bool)

(assert (=> b!6725445 (=> (not res!2751692) (not e!4063386))))

(declare-fun contains!20249 (List!65953 Context!11870) Bool)

(assert (=> b!6725445 (= res!2751692 (not (contains!20249 (t!379634 lt!2436997) (h!72277 lt!2436997))))))

(declare-fun b!6725446 () Bool)

(assert (=> b!6725446 (= e!4063386 (noDuplicate!2344 (t!379634 lt!2436997)))))

(assert (= (and d!2113369 (not res!2751691)) b!6725445))

(assert (= (and b!6725445 res!2751692) b!6725446))

(declare-fun m!7485648 () Bool)

(assert (=> b!6725445 m!7485648))

(declare-fun m!7485650 () Bool)

(assert (=> b!6725446 m!7485650))

(assert (=> d!2112935 d!2113369))

(declare-fun d!2113371 () Bool)

(declare-fun e!4063394 () Bool)

(assert (=> d!2113371 e!4063394))

(declare-fun res!2751698 () Bool)

(assert (=> d!2113371 (=> (not res!2751698) (not e!4063394))))

(declare-fun res!2751697 () List!65953)

(assert (=> d!2113371 (= res!2751698 (noDuplicate!2344 res!2751697))))

(declare-fun e!4063393 () Bool)

(assert (=> d!2113371 e!4063393))

(assert (=> d!2113371 (= (choose!50099 z!1189) res!2751697)))

(declare-fun b!6725454 () Bool)

(declare-fun e!4063395 () Bool)

(declare-fun tp!1843944 () Bool)

(assert (=> b!6725454 (= e!4063395 tp!1843944)))

(declare-fun b!6725453 () Bool)

(declare-fun tp!1843945 () Bool)

(assert (=> b!6725453 (= e!4063393 (and (inv!84624 (h!72277 res!2751697)) e!4063395 tp!1843945))))

(declare-fun b!6725455 () Bool)

(assert (=> b!6725455 (= e!4063394 (= (content!12771 res!2751697) z!1189))))

(assert (= b!6725453 b!6725454))

(assert (= (and d!2113371 ((_ is Cons!65829) res!2751697)) b!6725453))

(assert (= (and d!2113371 res!2751698) b!6725455))

(declare-fun m!7485652 () Bool)

(assert (=> d!2113371 m!7485652))

(declare-fun m!7485654 () Bool)

(assert (=> b!6725453 m!7485654))

(declare-fun m!7485656 () Bool)

(assert (=> b!6725455 m!7485656))

(assert (=> d!2112935 d!2113371))

(declare-fun d!2113373 () Bool)

(assert (=> d!2113373 (= ($colon$colon!2368 (exprs!6435 (Context!11871 Nil!65828)) (ite (or c!1246706 c!1246704) (regTwo!33614 r!7292) r!7292)) (Cons!65828 (ite (or c!1246706 c!1246704) (regTwo!33614 r!7292) r!7292) (exprs!6435 (Context!11871 Nil!65828))))))

(assert (=> bm!607082 d!2113373))

(assert (=> d!2113017 d!2113015))

(assert (=> d!2113017 d!2113009))

(declare-fun d!2113375 () Bool)

(assert (=> d!2113375 (= (matchR!8734 r!7292 s!2326) (matchRSpec!3652 r!7292 s!2326))))

(assert (=> d!2113375 true))

(declare-fun _$88!5456 () Unit!159793)

(assert (=> d!2113375 (= (choose!50102 r!7292 s!2326) _$88!5456)))

(declare-fun bs!1788988 () Bool)

(assert (= bs!1788988 d!2113375))

(assert (=> bs!1788988 m!7484594))

(assert (=> bs!1788988 m!7484592))

(assert (=> d!2113017 d!2113375))

(assert (=> d!2113017 d!2112939))

(declare-fun d!2113377 () Bool)

(assert (=> d!2113377 (= (isEmpty!38157 (exprs!6435 (h!72277 zl!343))) ((_ is Nil!65828) (exprs!6435 (h!72277 zl!343))))))

(assert (=> b!6724565 d!2113377))

(declare-fun b!6725456 () Bool)

(declare-fun e!4063398 () (InoxSet Context!11870))

(assert (=> b!6725456 (= e!4063398 ((as const (Array Context!11870 Bool)) false))))

(declare-fun d!2113379 () Bool)

(declare-fun c!1246966 () Bool)

(declare-fun e!4063397 () Bool)

(assert (=> d!2113379 (= c!1246966 e!4063397)))

(declare-fun res!2751699 () Bool)

(assert (=> d!2113379 (=> (not res!2751699) (not e!4063397))))

(assert (=> d!2113379 (= res!2751699 ((_ is Cons!65828) (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))))))))

(declare-fun e!4063396 () (InoxSet Context!11870))

(assert (=> d!2113379 (= (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))) (h!72278 s!2326)) e!4063396)))

(declare-fun b!6725457 () Bool)

(declare-fun call!607244 () (InoxSet Context!11870))

(assert (=> b!6725457 (= e!4063398 call!607244)))

(declare-fun b!6725458 () Bool)

(assert (=> b!6725458 (= e!4063396 e!4063398)))

(declare-fun c!1246967 () Bool)

(assert (=> b!6725458 (= c!1246967 ((_ is Cons!65828) (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))))))))

(declare-fun b!6725459 () Bool)

(assert (=> b!6725459 (= e!4063397 (nullable!6538 (h!72276 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343))))))))))

(declare-fun bm!607239 () Bool)

(assert (=> bm!607239 (= call!607244 (derivationStepZipperDown!1779 (h!72276 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343)))))) (Context!11871 (t!379633 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343))))))) (h!72278 s!2326)))))

(declare-fun b!6725460 () Bool)

(assert (=> b!6725460 (= e!4063396 ((_ map or) call!607244 (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 (h!72277 zl!343))))))) (h!72278 s!2326))))))

(assert (= (and d!2113379 res!2751699) b!6725459))

(assert (= (and d!2113379 c!1246966) b!6725460))

(assert (= (and d!2113379 (not c!1246966)) b!6725458))

(assert (= (and b!6725458 c!1246967) b!6725457))

(assert (= (and b!6725458 (not c!1246967)) b!6725456))

(assert (= (or b!6725460 b!6725457) bm!607239))

(declare-fun m!7485658 () Bool)

(assert (=> b!6725459 m!7485658))

(declare-fun m!7485660 () Bool)

(assert (=> bm!607239 m!7485660))

(declare-fun m!7485662 () Bool)

(assert (=> b!6725460 m!7485662))

(assert (=> b!6724356 d!2113379))

(declare-fun d!2113381 () Bool)

(assert (=> d!2113381 (= (nullable!6538 (h!72276 (exprs!6435 lt!2436984))) (nullableFct!2452 (h!72276 (exprs!6435 lt!2436984))))))

(declare-fun bs!1788989 () Bool)

(assert (= bs!1788989 d!2113381))

(declare-fun m!7485664 () Bool)

(assert (=> bs!1788989 m!7485664))

(assert (=> b!6724535 d!2113381))

(declare-fun b!6725461 () Bool)

(declare-fun e!4063401 () (InoxSet Context!11870))

(assert (=> b!6725461 (= e!4063401 ((as const (Array Context!11870 Bool)) false))))

(declare-fun d!2113383 () Bool)

(declare-fun c!1246968 () Bool)

(declare-fun e!4063400 () Bool)

(assert (=> d!2113383 (= c!1246968 e!4063400)))

(declare-fun res!2751700 () Bool)

(assert (=> d!2113383 (=> (not res!2751700) (not e!4063400))))

(assert (=> d!2113383 (= res!2751700 ((_ is Cons!65828) (exprs!6435 (Context!11871 (t!379633 (exprs!6435 lt!2436984))))))))

(declare-fun e!4063399 () (InoxSet Context!11870))

(assert (=> d!2113383 (= (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 lt!2436984))) (h!72278 s!2326)) e!4063399)))

(declare-fun b!6725462 () Bool)

(declare-fun call!607245 () (InoxSet Context!11870))

(assert (=> b!6725462 (= e!4063401 call!607245)))

(declare-fun b!6725463 () Bool)

(assert (=> b!6725463 (= e!4063399 e!4063401)))

(declare-fun c!1246969 () Bool)

(assert (=> b!6725463 (= c!1246969 ((_ is Cons!65828) (exprs!6435 (Context!11871 (t!379633 (exprs!6435 lt!2436984))))))))

(declare-fun b!6725464 () Bool)

(assert (=> b!6725464 (= e!4063400 (nullable!6538 (h!72276 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 lt!2436984)))))))))

(declare-fun bm!607240 () Bool)

(assert (=> bm!607240 (= call!607245 (derivationStepZipperDown!1779 (h!72276 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 lt!2436984))))) (Context!11871 (t!379633 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 lt!2436984)))))) (h!72278 s!2326)))))

(declare-fun b!6725465 () Bool)

(assert (=> b!6725465 (= e!4063399 ((_ map or) call!607245 (derivationStepZipperUp!1705 (Context!11871 (t!379633 (exprs!6435 (Context!11871 (t!379633 (exprs!6435 lt!2436984)))))) (h!72278 s!2326))))))

(assert (= (and d!2113383 res!2751700) b!6725464))

(assert (= (and d!2113383 c!1246968) b!6725465))

(assert (= (and d!2113383 (not c!1246968)) b!6725463))

(assert (= (and b!6725463 c!1246969) b!6725462))

(assert (= (and b!6725463 (not c!1246969)) b!6725461))

(assert (= (or b!6725465 b!6725462) bm!607240))

(declare-fun m!7485666 () Bool)

(assert (=> b!6725464 m!7485666))

(declare-fun m!7485668 () Bool)

(assert (=> bm!607240 m!7485668))

(declare-fun m!7485670 () Bool)

(assert (=> b!6725465 m!7485670))

(assert (=> b!6724536 d!2113383))

(declare-fun d!2113385 () Bool)

(assert (=> d!2113385 (= (nullable!6538 r!7292) (nullableFct!2452 r!7292))))

(declare-fun bs!1788990 () Bool)

(assert (= bs!1788990 d!2113385))

(declare-fun m!7485672 () Bool)

(assert (=> bs!1788990 m!7485672))

(assert (=> b!6724520 d!2113385))

(declare-fun bs!1788991 () Bool)

(declare-fun d!2113387 () Bool)

(assert (= bs!1788991 (and d!2113387 d!2112953)))

(declare-fun lambda!377285 () Int)

(assert (=> bs!1788991 (= lambda!377285 lambda!377176)))

(declare-fun bs!1788992 () Bool)

(assert (= bs!1788992 (and d!2113387 d!2113045)))

(assert (=> bs!1788992 (= lambda!377285 lambda!377237)))

(declare-fun bs!1788993 () Bool)

(assert (= bs!1788993 (and d!2113387 d!2113019)))

(assert (=> bs!1788993 (= lambda!377285 lambda!377217)))

(declare-fun bs!1788994 () Bool)

(assert (= bs!1788994 (and d!2113387 d!2112963)))

(assert (=> bs!1788994 (= lambda!377285 lambda!377182)))

(declare-fun bs!1788995 () Bool)

(assert (= bs!1788995 (and d!2113387 d!2113023)))

(assert (=> bs!1788995 (= lambda!377285 lambda!377220)))

(declare-fun bs!1788996 () Bool)

(assert (= bs!1788996 (and d!2113387 d!2113311)))

(assert (=> bs!1788996 (= lambda!377285 lambda!377274)))

(declare-fun bs!1788997 () Bool)

(assert (= bs!1788997 (and d!2113387 d!2113319)))

(assert (=> bs!1788997 (= lambda!377285 lambda!377275)))

(declare-fun bs!1788998 () Bool)

(assert (= bs!1788998 (and d!2113387 d!2113043)))

(assert (=> bs!1788998 (= lambda!377285 lambda!377236)))

(declare-fun bs!1788999 () Bool)

(assert (= bs!1788999 (and d!2113387 d!2113201)))

(assert (=> bs!1788999 (= lambda!377285 lambda!377265)))

(declare-fun bs!1789000 () Bool)

(assert (= bs!1789000 (and d!2113387 d!2113345)))

(assert (=> bs!1789000 (= lambda!377285 lambda!377282)))

(declare-fun b!6725467 () Bool)

(declare-fun e!4063402 () Bool)

(declare-fun lt!2437114 () Regex!16551)

(assert (=> b!6725467 (= e!4063402 (isEmptyLang!1925 lt!2437114))))

(declare-fun b!6725468 () Bool)

(declare-fun e!4063406 () Bool)

(assert (=> b!6725468 (= e!4063406 e!4063402)))

(declare-fun c!1246973 () Bool)

(assert (=> b!6725468 (= c!1246973 (isEmpty!38157 (t!379633 (unfocusZipperList!1972 zl!343))))))

(declare-fun b!6725469 () Bool)

(declare-fun e!4063404 () Bool)

(assert (=> b!6725469 (= e!4063404 (isEmpty!38157 (t!379633 (t!379633 (unfocusZipperList!1972 zl!343)))))))

(declare-fun b!6725470 () Bool)

(declare-fun e!4063405 () Regex!16551)

(assert (=> b!6725470 (= e!4063405 EmptyLang!16551)))

(declare-fun b!6725471 () Bool)

(declare-fun e!4063407 () Bool)

(assert (=> b!6725471 (= e!4063402 e!4063407)))

(declare-fun c!1246971 () Bool)

(assert (=> b!6725471 (= c!1246971 (isEmpty!38157 (tail!12614 (t!379633 (unfocusZipperList!1972 zl!343)))))))

(declare-fun b!6725472 () Bool)

(assert (=> b!6725472 (= e!4063407 (isUnion!1355 lt!2437114))))

(declare-fun b!6725473 () Bool)

(declare-fun e!4063403 () Regex!16551)

(assert (=> b!6725473 (= e!4063403 e!4063405)))

(declare-fun c!1246970 () Bool)

(assert (=> b!6725473 (= c!1246970 ((_ is Cons!65828) (t!379633 (unfocusZipperList!1972 zl!343))))))

(assert (=> d!2113387 e!4063406))

(declare-fun res!2751702 () Bool)

(assert (=> d!2113387 (=> (not res!2751702) (not e!4063406))))

(assert (=> d!2113387 (= res!2751702 (validRegex!8287 lt!2437114))))

(assert (=> d!2113387 (= lt!2437114 e!4063403)))

(declare-fun c!1246972 () Bool)

(assert (=> d!2113387 (= c!1246972 e!4063404)))

(declare-fun res!2751701 () Bool)

(assert (=> d!2113387 (=> (not res!2751701) (not e!4063404))))

(assert (=> d!2113387 (= res!2751701 ((_ is Cons!65828) (t!379633 (unfocusZipperList!1972 zl!343))))))

(assert (=> d!2113387 (forall!15751 (t!379633 (unfocusZipperList!1972 zl!343)) lambda!377285)))

(assert (=> d!2113387 (= (generalisedUnion!2395 (t!379633 (unfocusZipperList!1972 zl!343))) lt!2437114)))

(declare-fun b!6725466 () Bool)

(assert (=> b!6725466 (= e!4063403 (h!72276 (t!379633 (unfocusZipperList!1972 zl!343))))))

(declare-fun b!6725474 () Bool)

(assert (=> b!6725474 (= e!4063407 (= lt!2437114 (head!13529 (t!379633 (unfocusZipperList!1972 zl!343)))))))

(declare-fun b!6725475 () Bool)

(assert (=> b!6725475 (= e!4063405 (Union!16551 (h!72276 (t!379633 (unfocusZipperList!1972 zl!343))) (generalisedUnion!2395 (t!379633 (t!379633 (unfocusZipperList!1972 zl!343))))))))

(assert (= (and d!2113387 res!2751701) b!6725469))

(assert (= (and d!2113387 c!1246972) b!6725466))

(assert (= (and d!2113387 (not c!1246972)) b!6725473))

(assert (= (and b!6725473 c!1246970) b!6725475))

(assert (= (and b!6725473 (not c!1246970)) b!6725470))

(assert (= (and d!2113387 res!2751702) b!6725468))

(assert (= (and b!6725468 c!1246973) b!6725467))

(assert (= (and b!6725468 (not c!1246973)) b!6725471))

(assert (= (and b!6725471 c!1246971) b!6725474))

(assert (= (and b!6725471 (not c!1246971)) b!6725472))

(declare-fun m!7485674 () Bool)

(assert (=> b!6725467 m!7485674))

(assert (=> b!6725468 m!7484718))

(declare-fun m!7485676 () Bool)

(assert (=> b!6725471 m!7485676))

(assert (=> b!6725471 m!7485676))

(declare-fun m!7485678 () Bool)

(assert (=> b!6725471 m!7485678))

(declare-fun m!7485680 () Bool)

(assert (=> d!2113387 m!7485680))

(declare-fun m!7485682 () Bool)

(assert (=> d!2113387 m!7485682))

(declare-fun m!7485684 () Bool)

(assert (=> b!6725474 m!7485684))

(declare-fun m!7485686 () Bool)

(assert (=> b!6725472 m!7485686))

(declare-fun m!7485688 () Bool)

(assert (=> b!6725475 m!7485688))

(declare-fun m!7485690 () Bool)

(assert (=> b!6725469 m!7485690))

(assert (=> b!6724239 d!2113387))

(assert (=> bm!607097 d!2113033))

(assert (=> bm!607093 d!2113033))

(declare-fun d!2113389 () Bool)

(assert (=> d!2113389 (= (isConcat!1440 lt!2437054) ((_ is Concat!25396) lt!2437054))))

(assert (=> b!6724563 d!2113389))

(declare-fun d!2113391 () Bool)

(assert (=> d!2113391 (= (nullable!6538 (h!72276 (exprs!6435 (h!72277 zl!343)))) (nullableFct!2452 (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun bs!1789001 () Bool)

(assert (= bs!1789001 d!2113391))

(declare-fun m!7485692 () Bool)

(assert (=> bs!1789001 m!7485692))

(assert (=> b!6724355 d!2113391))

(declare-fun b!6725479 () Bool)

(declare-fun e!4063408 () Bool)

(declare-fun tp!1843950 () Bool)

(declare-fun tp!1843949 () Bool)

(assert (=> b!6725479 (= e!4063408 (and tp!1843950 tp!1843949))))

(declare-fun b!6725478 () Bool)

(declare-fun tp!1843946 () Bool)

(assert (=> b!6725478 (= e!4063408 tp!1843946)))

(declare-fun b!6725476 () Bool)

(assert (=> b!6725476 (= e!4063408 tp_is_empty!42355)))

(assert (=> b!6724633 (= tp!1843732 e!4063408)))

(declare-fun b!6725477 () Bool)

(declare-fun tp!1843947 () Bool)

(declare-fun tp!1843948 () Bool)

(assert (=> b!6725477 (= e!4063408 (and tp!1843947 tp!1843948))))

(assert (= (and b!6724633 ((_ is ElementMatch!16551) (reg!16880 (reg!16880 r!7292)))) b!6725476))

(assert (= (and b!6724633 ((_ is Concat!25396) (reg!16880 (reg!16880 r!7292)))) b!6725477))

(assert (= (and b!6724633 ((_ is Star!16551) (reg!16880 (reg!16880 r!7292)))) b!6725478))

(assert (= (and b!6724633 ((_ is Union!16551) (reg!16880 (reg!16880 r!7292)))) b!6725479))

(declare-fun b!6725483 () Bool)

(declare-fun e!4063409 () Bool)

(declare-fun tp!1843955 () Bool)

(declare-fun tp!1843954 () Bool)

(assert (=> b!6725483 (= e!4063409 (and tp!1843955 tp!1843954))))

(declare-fun b!6725482 () Bool)

(declare-fun tp!1843951 () Bool)

(assert (=> b!6725482 (= e!4063409 tp!1843951)))

(declare-fun b!6725480 () Bool)

(assert (=> b!6725480 (= e!4063409 tp_is_empty!42355)))

(assert (=> b!6724632 (= tp!1843733 e!4063409)))

(declare-fun b!6725481 () Bool)

(declare-fun tp!1843952 () Bool)

(declare-fun tp!1843953 () Bool)

(assert (=> b!6725481 (= e!4063409 (and tp!1843952 tp!1843953))))

(assert (= (and b!6724632 ((_ is ElementMatch!16551) (regOne!33614 (reg!16880 r!7292)))) b!6725480))

(assert (= (and b!6724632 ((_ is Concat!25396) (regOne!33614 (reg!16880 r!7292)))) b!6725481))

(assert (= (and b!6724632 ((_ is Star!16551) (regOne!33614 (reg!16880 r!7292)))) b!6725482))

(assert (= (and b!6724632 ((_ is Union!16551) (regOne!33614 (reg!16880 r!7292)))) b!6725483))

(declare-fun b!6725487 () Bool)

(declare-fun e!4063410 () Bool)

(declare-fun tp!1843960 () Bool)

(declare-fun tp!1843959 () Bool)

(assert (=> b!6725487 (= e!4063410 (and tp!1843960 tp!1843959))))

(declare-fun b!6725486 () Bool)

(declare-fun tp!1843956 () Bool)

(assert (=> b!6725486 (= e!4063410 tp!1843956)))

(declare-fun b!6725484 () Bool)

(assert (=> b!6725484 (= e!4063410 tp_is_empty!42355)))

(assert (=> b!6724632 (= tp!1843734 e!4063410)))

(declare-fun b!6725485 () Bool)

(declare-fun tp!1843957 () Bool)

(declare-fun tp!1843958 () Bool)

(assert (=> b!6725485 (= e!4063410 (and tp!1843957 tp!1843958))))

(assert (= (and b!6724632 ((_ is ElementMatch!16551) (regTwo!33614 (reg!16880 r!7292)))) b!6725484))

(assert (= (and b!6724632 ((_ is Concat!25396) (regTwo!33614 (reg!16880 r!7292)))) b!6725485))

(assert (= (and b!6724632 ((_ is Star!16551) (regTwo!33614 (reg!16880 r!7292)))) b!6725486))

(assert (= (and b!6724632 ((_ is Union!16551) (regTwo!33614 (reg!16880 r!7292)))) b!6725487))

(declare-fun b!6725491 () Bool)

(declare-fun e!4063411 () Bool)

(declare-fun tp!1843965 () Bool)

(declare-fun tp!1843964 () Bool)

(assert (=> b!6725491 (= e!4063411 (and tp!1843965 tp!1843964))))

(declare-fun b!6725490 () Bool)

(declare-fun tp!1843961 () Bool)

(assert (=> b!6725490 (= e!4063411 tp!1843961)))

(declare-fun b!6725488 () Bool)

(assert (=> b!6725488 (= e!4063411 tp_is_empty!42355)))

(assert (=> b!6724634 (= tp!1843736 e!4063411)))

(declare-fun b!6725489 () Bool)

(declare-fun tp!1843962 () Bool)

(declare-fun tp!1843963 () Bool)

(assert (=> b!6725489 (= e!4063411 (and tp!1843962 tp!1843963))))

(assert (= (and b!6724634 ((_ is ElementMatch!16551) (regOne!33615 (reg!16880 r!7292)))) b!6725488))

(assert (= (and b!6724634 ((_ is Concat!25396) (regOne!33615 (reg!16880 r!7292)))) b!6725489))

(assert (= (and b!6724634 ((_ is Star!16551) (regOne!33615 (reg!16880 r!7292)))) b!6725490))

(assert (= (and b!6724634 ((_ is Union!16551) (regOne!33615 (reg!16880 r!7292)))) b!6725491))

(declare-fun b!6725495 () Bool)

(declare-fun e!4063412 () Bool)

(declare-fun tp!1843970 () Bool)

(declare-fun tp!1843969 () Bool)

(assert (=> b!6725495 (= e!4063412 (and tp!1843970 tp!1843969))))

(declare-fun b!6725494 () Bool)

(declare-fun tp!1843966 () Bool)

(assert (=> b!6725494 (= e!4063412 tp!1843966)))

(declare-fun b!6725492 () Bool)

(assert (=> b!6725492 (= e!4063412 tp_is_empty!42355)))

(assert (=> b!6724634 (= tp!1843735 e!4063412)))

(declare-fun b!6725493 () Bool)

(declare-fun tp!1843967 () Bool)

(declare-fun tp!1843968 () Bool)

(assert (=> b!6725493 (= e!4063412 (and tp!1843967 tp!1843968))))

(assert (= (and b!6724634 ((_ is ElementMatch!16551) (regTwo!33615 (reg!16880 r!7292)))) b!6725492))

(assert (= (and b!6724634 ((_ is Concat!25396) (regTwo!33615 (reg!16880 r!7292)))) b!6725493))

(assert (= (and b!6724634 ((_ is Star!16551) (regTwo!33615 (reg!16880 r!7292)))) b!6725494))

(assert (= (and b!6724634 ((_ is Union!16551) (regTwo!33615 (reg!16880 r!7292)))) b!6725495))

(declare-fun b!6725496 () Bool)

(declare-fun e!4063413 () Bool)

(declare-fun tp!1843971 () Bool)

(declare-fun tp!1843972 () Bool)

(assert (=> b!6725496 (= e!4063413 (and tp!1843971 tp!1843972))))

(assert (=> b!6724648 (= tp!1843753 e!4063413)))

(assert (= (and b!6724648 ((_ is Cons!65828) (exprs!6435 setElem!45841))) b!6725496))

(declare-fun b!6725500 () Bool)

(declare-fun e!4063414 () Bool)

(declare-fun tp!1843977 () Bool)

(declare-fun tp!1843976 () Bool)

(assert (=> b!6725500 (= e!4063414 (and tp!1843977 tp!1843976))))

(declare-fun b!6725499 () Bool)

(declare-fun tp!1843973 () Bool)

(assert (=> b!6725499 (= e!4063414 tp!1843973)))

(declare-fun b!6725497 () Bool)

(assert (=> b!6725497 (= e!4063414 tp_is_empty!42355)))

(assert (=> b!6724639 (= tp!1843743 e!4063414)))

(declare-fun b!6725498 () Bool)

(declare-fun tp!1843974 () Bool)

(declare-fun tp!1843975 () Bool)

(assert (=> b!6725498 (= e!4063414 (and tp!1843974 tp!1843975))))

(assert (= (and b!6724639 ((_ is ElementMatch!16551) (regOne!33615 (regOne!33615 r!7292)))) b!6725497))

(assert (= (and b!6724639 ((_ is Concat!25396) (regOne!33615 (regOne!33615 r!7292)))) b!6725498))

(assert (= (and b!6724639 ((_ is Star!16551) (regOne!33615 (regOne!33615 r!7292)))) b!6725499))

(assert (= (and b!6724639 ((_ is Union!16551) (regOne!33615 (regOne!33615 r!7292)))) b!6725500))

(declare-fun b!6725504 () Bool)

(declare-fun e!4063415 () Bool)

(declare-fun tp!1843982 () Bool)

(declare-fun tp!1843981 () Bool)

(assert (=> b!6725504 (= e!4063415 (and tp!1843982 tp!1843981))))

(declare-fun b!6725503 () Bool)

(declare-fun tp!1843978 () Bool)

(assert (=> b!6725503 (= e!4063415 tp!1843978)))

(declare-fun b!6725501 () Bool)

(assert (=> b!6725501 (= e!4063415 tp_is_empty!42355)))

(assert (=> b!6724639 (= tp!1843742 e!4063415)))

(declare-fun b!6725502 () Bool)

(declare-fun tp!1843979 () Bool)

(declare-fun tp!1843980 () Bool)

(assert (=> b!6725502 (= e!4063415 (and tp!1843979 tp!1843980))))

(assert (= (and b!6724639 ((_ is ElementMatch!16551) (regTwo!33615 (regOne!33615 r!7292)))) b!6725501))

(assert (= (and b!6724639 ((_ is Concat!25396) (regTwo!33615 (regOne!33615 r!7292)))) b!6725502))

(assert (= (and b!6724639 ((_ is Star!16551) (regTwo!33615 (regOne!33615 r!7292)))) b!6725503))

(assert (= (and b!6724639 ((_ is Union!16551) (regTwo!33615 (regOne!33615 r!7292)))) b!6725504))

(declare-fun b!6725505 () Bool)

(declare-fun e!4063416 () Bool)

(declare-fun tp!1843983 () Bool)

(assert (=> b!6725505 (= e!4063416 (and tp_is_empty!42355 tp!1843983))))

(assert (=> b!6724653 (= tp!1843757 e!4063416)))

(assert (= (and b!6724653 ((_ is Cons!65830) (t!379635 (t!379635 s!2326)))) b!6725505))

(declare-fun b!6725507 () Bool)

(declare-fun e!4063418 () Bool)

(declare-fun tp!1843984 () Bool)

(assert (=> b!6725507 (= e!4063418 tp!1843984)))

(declare-fun b!6725506 () Bool)

(declare-fun e!4063417 () Bool)

(declare-fun tp!1843985 () Bool)

(assert (=> b!6725506 (= e!4063417 (and (inv!84624 (h!72277 (t!379634 (t!379634 zl!343)))) e!4063418 tp!1843985))))

(assert (=> b!6724668 (= tp!1843773 e!4063417)))

(assert (= b!6725506 b!6725507))

(assert (= (and b!6724668 ((_ is Cons!65829) (t!379634 (t!379634 zl!343)))) b!6725506))

(declare-fun m!7485694 () Bool)

(assert (=> b!6725506 m!7485694))

(declare-fun condSetEmpty!45849 () Bool)

(assert (=> setNonEmpty!45841 (= condSetEmpty!45849 (= setRest!45841 ((as const (Array Context!11870 Bool)) false)))))

(declare-fun setRes!45849 () Bool)

(assert (=> setNonEmpty!45841 (= tp!1843754 setRes!45849)))

(declare-fun setIsEmpty!45849 () Bool)

(assert (=> setIsEmpty!45849 setRes!45849))

(declare-fun e!4063419 () Bool)

(declare-fun tp!1843987 () Bool)

(declare-fun setNonEmpty!45849 () Bool)

(declare-fun setElem!45849 () Context!11870)

(assert (=> setNonEmpty!45849 (= setRes!45849 (and tp!1843987 (inv!84624 setElem!45849) e!4063419))))

(declare-fun setRest!45849 () (InoxSet Context!11870))

(assert (=> setNonEmpty!45849 (= setRest!45841 ((_ map or) (store ((as const (Array Context!11870 Bool)) false) setElem!45849 true) setRest!45849))))

(declare-fun b!6725508 () Bool)

(declare-fun tp!1843986 () Bool)

(assert (=> b!6725508 (= e!4063419 tp!1843986)))

(assert (= (and setNonEmpty!45841 condSetEmpty!45849) setIsEmpty!45849))

(assert (= (and setNonEmpty!45841 (not condSetEmpty!45849)) setNonEmpty!45849))

(assert (= setNonEmpty!45849 b!6725508))

(declare-fun m!7485696 () Bool)

(assert (=> setNonEmpty!45849 m!7485696))

(declare-fun b!6725509 () Bool)

(declare-fun e!4063420 () Bool)

(declare-fun tp!1843988 () Bool)

(declare-fun tp!1843989 () Bool)

(assert (=> b!6725509 (= e!4063420 (and tp!1843988 tp!1843989))))

(assert (=> b!6724669 (= tp!1843772 e!4063420)))

(assert (= (and b!6724669 ((_ is Cons!65828) (exprs!6435 (h!72277 (t!379634 zl!343))))) b!6725509))

(declare-fun b!6725513 () Bool)

(declare-fun e!4063421 () Bool)

(declare-fun tp!1843994 () Bool)

(declare-fun tp!1843993 () Bool)

(assert (=> b!6725513 (= e!4063421 (and tp!1843994 tp!1843993))))

(declare-fun b!6725512 () Bool)

(declare-fun tp!1843990 () Bool)

(assert (=> b!6725512 (= e!4063421 tp!1843990)))

(declare-fun b!6725510 () Bool)

(assert (=> b!6725510 (= e!4063421 tp_is_empty!42355)))

(assert (=> b!6724637 (= tp!1843740 e!4063421)))

(declare-fun b!6725511 () Bool)

(declare-fun tp!1843991 () Bool)

(declare-fun tp!1843992 () Bool)

(assert (=> b!6725511 (= e!4063421 (and tp!1843991 tp!1843992))))

(assert (= (and b!6724637 ((_ is ElementMatch!16551) (regOne!33614 (regOne!33615 r!7292)))) b!6725510))

(assert (= (and b!6724637 ((_ is Concat!25396) (regOne!33614 (regOne!33615 r!7292)))) b!6725511))

(assert (= (and b!6724637 ((_ is Star!16551) (regOne!33614 (regOne!33615 r!7292)))) b!6725512))

(assert (= (and b!6724637 ((_ is Union!16551) (regOne!33614 (regOne!33615 r!7292)))) b!6725513))

(declare-fun b!6725517 () Bool)

(declare-fun e!4063422 () Bool)

(declare-fun tp!1843999 () Bool)

(declare-fun tp!1843998 () Bool)

(assert (=> b!6725517 (= e!4063422 (and tp!1843999 tp!1843998))))

(declare-fun b!6725516 () Bool)

(declare-fun tp!1843995 () Bool)

(assert (=> b!6725516 (= e!4063422 tp!1843995)))

(declare-fun b!6725514 () Bool)

(assert (=> b!6725514 (= e!4063422 tp_is_empty!42355)))

(assert (=> b!6724637 (= tp!1843741 e!4063422)))

(declare-fun b!6725515 () Bool)

(declare-fun tp!1843996 () Bool)

(declare-fun tp!1843997 () Bool)

(assert (=> b!6725515 (= e!4063422 (and tp!1843996 tp!1843997))))

(assert (= (and b!6724637 ((_ is ElementMatch!16551) (regTwo!33614 (regOne!33615 r!7292)))) b!6725514))

(assert (= (and b!6724637 ((_ is Concat!25396) (regTwo!33614 (regOne!33615 r!7292)))) b!6725515))

(assert (= (and b!6724637 ((_ is Star!16551) (regTwo!33614 (regOne!33615 r!7292)))) b!6725516))

(assert (= (and b!6724637 ((_ is Union!16551) (regTwo!33614 (regOne!33615 r!7292)))) b!6725517))

(declare-fun b!6725521 () Bool)

(declare-fun e!4063423 () Bool)

(declare-fun tp!1844004 () Bool)

(declare-fun tp!1844003 () Bool)

(assert (=> b!6725521 (= e!4063423 (and tp!1844004 tp!1844003))))

(declare-fun b!6725520 () Bool)

(declare-fun tp!1844000 () Bool)

(assert (=> b!6725520 (= e!4063423 tp!1844000)))

(declare-fun b!6725518 () Bool)

(assert (=> b!6725518 (= e!4063423 tp_is_empty!42355)))

(assert (=> b!6724660 (= tp!1843763 e!4063423)))

(declare-fun b!6725519 () Bool)

(declare-fun tp!1844001 () Bool)

(declare-fun tp!1844002 () Bool)

(assert (=> b!6725519 (= e!4063423 (and tp!1844001 tp!1844002))))

(assert (= (and b!6724660 ((_ is ElementMatch!16551) (reg!16880 (regTwo!33614 r!7292)))) b!6725518))

(assert (= (and b!6724660 ((_ is Concat!25396) (reg!16880 (regTwo!33614 r!7292)))) b!6725519))

(assert (= (and b!6724660 ((_ is Star!16551) (reg!16880 (regTwo!33614 r!7292)))) b!6725520))

(assert (= (and b!6724660 ((_ is Union!16551) (reg!16880 (regTwo!33614 r!7292)))) b!6725521))

(declare-fun b!6725525 () Bool)

(declare-fun e!4063424 () Bool)

(declare-fun tp!1844009 () Bool)

(declare-fun tp!1844008 () Bool)

(assert (=> b!6725525 (= e!4063424 (and tp!1844009 tp!1844008))))

(declare-fun b!6725524 () Bool)

(declare-fun tp!1844005 () Bool)

(assert (=> b!6725524 (= e!4063424 tp!1844005)))

(declare-fun b!6725522 () Bool)

(assert (=> b!6725522 (= e!4063424 tp_is_empty!42355)))

(assert (=> b!6724661 (= tp!1843767 e!4063424)))

(declare-fun b!6725523 () Bool)

(declare-fun tp!1844006 () Bool)

(declare-fun tp!1844007 () Bool)

(assert (=> b!6725523 (= e!4063424 (and tp!1844006 tp!1844007))))

(assert (= (and b!6724661 ((_ is ElementMatch!16551) (regOne!33615 (regTwo!33614 r!7292)))) b!6725522))

(assert (= (and b!6724661 ((_ is Concat!25396) (regOne!33615 (regTwo!33614 r!7292)))) b!6725523))

(assert (= (and b!6724661 ((_ is Star!16551) (regOne!33615 (regTwo!33614 r!7292)))) b!6725524))

(assert (= (and b!6724661 ((_ is Union!16551) (regOne!33615 (regTwo!33614 r!7292)))) b!6725525))

(declare-fun b!6725529 () Bool)

(declare-fun e!4063425 () Bool)

(declare-fun tp!1844014 () Bool)

(declare-fun tp!1844013 () Bool)

(assert (=> b!6725529 (= e!4063425 (and tp!1844014 tp!1844013))))

(declare-fun b!6725528 () Bool)

(declare-fun tp!1844010 () Bool)

(assert (=> b!6725528 (= e!4063425 tp!1844010)))

(declare-fun b!6725526 () Bool)

(assert (=> b!6725526 (= e!4063425 tp_is_empty!42355)))

(assert (=> b!6724661 (= tp!1843766 e!4063425)))

(declare-fun b!6725527 () Bool)

(declare-fun tp!1844011 () Bool)

(declare-fun tp!1844012 () Bool)

(assert (=> b!6725527 (= e!4063425 (and tp!1844011 tp!1844012))))

(assert (= (and b!6724661 ((_ is ElementMatch!16551) (regTwo!33615 (regTwo!33614 r!7292)))) b!6725526))

(assert (= (and b!6724661 ((_ is Concat!25396) (regTwo!33615 (regTwo!33614 r!7292)))) b!6725527))

(assert (= (and b!6724661 ((_ is Star!16551) (regTwo!33615 (regTwo!33614 r!7292)))) b!6725528))

(assert (= (and b!6724661 ((_ is Union!16551) (regTwo!33615 (regTwo!33614 r!7292)))) b!6725529))

(declare-fun b!6725533 () Bool)

(declare-fun e!4063426 () Bool)

(declare-fun tp!1844019 () Bool)

(declare-fun tp!1844018 () Bool)

(assert (=> b!6725533 (= e!4063426 (and tp!1844019 tp!1844018))))

(declare-fun b!6725532 () Bool)

(declare-fun tp!1844015 () Bool)

(assert (=> b!6725532 (= e!4063426 tp!1844015)))

(declare-fun b!6725530 () Bool)

(assert (=> b!6725530 (= e!4063426 tp_is_empty!42355)))

(assert (=> b!6724638 (= tp!1843739 e!4063426)))

(declare-fun b!6725531 () Bool)

(declare-fun tp!1844016 () Bool)

(declare-fun tp!1844017 () Bool)

(assert (=> b!6725531 (= e!4063426 (and tp!1844016 tp!1844017))))

(assert (= (and b!6724638 ((_ is ElementMatch!16551) (reg!16880 (regOne!33615 r!7292)))) b!6725530))

(assert (= (and b!6724638 ((_ is Concat!25396) (reg!16880 (regOne!33615 r!7292)))) b!6725531))

(assert (= (and b!6724638 ((_ is Star!16551) (reg!16880 (regOne!33615 r!7292)))) b!6725532))

(assert (= (and b!6724638 ((_ is Union!16551) (reg!16880 (regOne!33615 r!7292)))) b!6725533))

(declare-fun b!6725537 () Bool)

(declare-fun e!4063427 () Bool)

(declare-fun tp!1844024 () Bool)

(declare-fun tp!1844023 () Bool)

(assert (=> b!6725537 (= e!4063427 (and tp!1844024 tp!1844023))))

(declare-fun b!6725536 () Bool)

(declare-fun tp!1844020 () Bool)

(assert (=> b!6725536 (= e!4063427 tp!1844020)))

(declare-fun b!6725534 () Bool)

(assert (=> b!6725534 (= e!4063427 tp_is_empty!42355)))

(assert (=> b!6724659 (= tp!1843764 e!4063427)))

(declare-fun b!6725535 () Bool)

(declare-fun tp!1844021 () Bool)

(declare-fun tp!1844022 () Bool)

(assert (=> b!6725535 (= e!4063427 (and tp!1844021 tp!1844022))))

(assert (= (and b!6724659 ((_ is ElementMatch!16551) (regOne!33614 (regTwo!33614 r!7292)))) b!6725534))

(assert (= (and b!6724659 ((_ is Concat!25396) (regOne!33614 (regTwo!33614 r!7292)))) b!6725535))

(assert (= (and b!6724659 ((_ is Star!16551) (regOne!33614 (regTwo!33614 r!7292)))) b!6725536))

(assert (= (and b!6724659 ((_ is Union!16551) (regOne!33614 (regTwo!33614 r!7292)))) b!6725537))

(declare-fun b!6725541 () Bool)

(declare-fun e!4063428 () Bool)

(declare-fun tp!1844029 () Bool)

(declare-fun tp!1844028 () Bool)

(assert (=> b!6725541 (= e!4063428 (and tp!1844029 tp!1844028))))

(declare-fun b!6725540 () Bool)

(declare-fun tp!1844025 () Bool)

(assert (=> b!6725540 (= e!4063428 tp!1844025)))

(declare-fun b!6725538 () Bool)

(assert (=> b!6725538 (= e!4063428 tp_is_empty!42355)))

(assert (=> b!6724659 (= tp!1843765 e!4063428)))

(declare-fun b!6725539 () Bool)

(declare-fun tp!1844026 () Bool)

(declare-fun tp!1844027 () Bool)

(assert (=> b!6725539 (= e!4063428 (and tp!1844026 tp!1844027))))

(assert (= (and b!6724659 ((_ is ElementMatch!16551) (regTwo!33614 (regTwo!33614 r!7292)))) b!6725538))

(assert (= (and b!6724659 ((_ is Concat!25396) (regTwo!33614 (regTwo!33614 r!7292)))) b!6725539))

(assert (= (and b!6724659 ((_ is Star!16551) (regTwo!33614 (regTwo!33614 r!7292)))) b!6725540))

(assert (= (and b!6724659 ((_ is Union!16551) (regTwo!33614 (regTwo!33614 r!7292)))) b!6725541))

(declare-fun b!6725545 () Bool)

(declare-fun e!4063429 () Bool)

(declare-fun tp!1844034 () Bool)

(declare-fun tp!1844033 () Bool)

(assert (=> b!6725545 (= e!4063429 (and tp!1844034 tp!1844033))))

(declare-fun b!6725544 () Bool)

(declare-fun tp!1844030 () Bool)

(assert (=> b!6725544 (= e!4063429 tp!1844030)))

(declare-fun b!6725542 () Bool)

(assert (=> b!6725542 (= e!4063429 tp_is_empty!42355)))

(assert (=> b!6724620 (= tp!1843720 e!4063429)))

(declare-fun b!6725543 () Bool)

(declare-fun tp!1844031 () Bool)

(declare-fun tp!1844032 () Bool)

(assert (=> b!6725543 (= e!4063429 (and tp!1844031 tp!1844032))))

(assert (= (and b!6724620 ((_ is ElementMatch!16551) (h!72276 (exprs!6435 (h!72277 zl!343))))) b!6725542))

(assert (= (and b!6724620 ((_ is Concat!25396) (h!72276 (exprs!6435 (h!72277 zl!343))))) b!6725543))

(assert (= (and b!6724620 ((_ is Star!16551) (h!72276 (exprs!6435 (h!72277 zl!343))))) b!6725544))

(assert (= (and b!6724620 ((_ is Union!16551) (h!72276 (exprs!6435 (h!72277 zl!343))))) b!6725545))

(declare-fun b!6725546 () Bool)

(declare-fun e!4063430 () Bool)

(declare-fun tp!1844035 () Bool)

(declare-fun tp!1844036 () Bool)

(assert (=> b!6725546 (= e!4063430 (and tp!1844035 tp!1844036))))

(assert (=> b!6724620 (= tp!1843721 e!4063430)))

(assert (= (and b!6724620 ((_ is Cons!65828) (t!379633 (exprs!6435 (h!72277 zl!343))))) b!6725546))

(declare-fun b!6725550 () Bool)

(declare-fun e!4063431 () Bool)

(declare-fun tp!1844041 () Bool)

(declare-fun tp!1844040 () Bool)

(assert (=> b!6725550 (= e!4063431 (and tp!1844041 tp!1844040))))

(declare-fun b!6725549 () Bool)

(declare-fun tp!1844037 () Bool)

(assert (=> b!6725549 (= e!4063431 tp!1844037)))

(declare-fun b!6725547 () Bool)

(assert (=> b!6725547 (= e!4063431 tp_is_empty!42355)))

(assert (=> b!6724635 (= tp!1843737 e!4063431)))

(declare-fun b!6725548 () Bool)

(declare-fun tp!1844038 () Bool)

(declare-fun tp!1844039 () Bool)

(assert (=> b!6725548 (= e!4063431 (and tp!1844038 tp!1844039))))

(assert (= (and b!6724635 ((_ is ElementMatch!16551) (h!72276 (exprs!6435 setElem!45835)))) b!6725547))

(assert (= (and b!6724635 ((_ is Concat!25396) (h!72276 (exprs!6435 setElem!45835)))) b!6725548))

(assert (= (and b!6724635 ((_ is Star!16551) (h!72276 (exprs!6435 setElem!45835)))) b!6725549))

(assert (= (and b!6724635 ((_ is Union!16551) (h!72276 (exprs!6435 setElem!45835)))) b!6725550))

(declare-fun b!6725551 () Bool)

(declare-fun e!4063432 () Bool)

(declare-fun tp!1844042 () Bool)

(declare-fun tp!1844043 () Bool)

(assert (=> b!6725551 (= e!4063432 (and tp!1844042 tp!1844043))))

(assert (=> b!6724635 (= tp!1843738 e!4063432)))

(assert (= (and b!6724635 ((_ is Cons!65828) (t!379633 (exprs!6435 setElem!45835)))) b!6725551))

(declare-fun b!6725555 () Bool)

(declare-fun e!4063433 () Bool)

(declare-fun tp!1844048 () Bool)

(declare-fun tp!1844047 () Bool)

(assert (=> b!6725555 (= e!4063433 (and tp!1844048 tp!1844047))))

(declare-fun b!6725554 () Bool)

(declare-fun tp!1844044 () Bool)

(assert (=> b!6725554 (= e!4063433 tp!1844044)))

(declare-fun b!6725552 () Bool)

(assert (=> b!6725552 (= e!4063433 tp_is_empty!42355)))

(assert (=> b!6724642 (= tp!1843744 e!4063433)))

(declare-fun b!6725553 () Bool)

(declare-fun tp!1844045 () Bool)

(declare-fun tp!1844046 () Bool)

(assert (=> b!6725553 (= e!4063433 (and tp!1844045 tp!1844046))))

(assert (= (and b!6724642 ((_ is ElementMatch!16551) (reg!16880 (regTwo!33615 r!7292)))) b!6725552))

(assert (= (and b!6724642 ((_ is Concat!25396) (reg!16880 (regTwo!33615 r!7292)))) b!6725553))

(assert (= (and b!6724642 ((_ is Star!16551) (reg!16880 (regTwo!33615 r!7292)))) b!6725554))

(assert (= (and b!6724642 ((_ is Union!16551) (reg!16880 (regTwo!33615 r!7292)))) b!6725555))

(declare-fun b!6725559 () Bool)

(declare-fun e!4063434 () Bool)

(declare-fun tp!1844053 () Bool)

(declare-fun tp!1844052 () Bool)

(assert (=> b!6725559 (= e!4063434 (and tp!1844053 tp!1844052))))

(declare-fun b!6725558 () Bool)

(declare-fun tp!1844049 () Bool)

(assert (=> b!6725558 (= e!4063434 tp!1844049)))

(declare-fun b!6725556 () Bool)

(assert (=> b!6725556 (= e!4063434 tp_is_empty!42355)))

(assert (=> b!6724656 (= tp!1843758 e!4063434)))

(declare-fun b!6725557 () Bool)

(declare-fun tp!1844050 () Bool)

(declare-fun tp!1844051 () Bool)

(assert (=> b!6725557 (= e!4063434 (and tp!1844050 tp!1844051))))

(assert (= (and b!6724656 ((_ is ElementMatch!16551) (reg!16880 (regOne!33614 r!7292)))) b!6725556))

(assert (= (and b!6724656 ((_ is Concat!25396) (reg!16880 (regOne!33614 r!7292)))) b!6725557))

(assert (= (and b!6724656 ((_ is Star!16551) (reg!16880 (regOne!33614 r!7292)))) b!6725558))

(assert (= (and b!6724656 ((_ is Union!16551) (reg!16880 (regOne!33614 r!7292)))) b!6725559))

(declare-fun b!6725563 () Bool)

(declare-fun e!4063435 () Bool)

(declare-fun tp!1844058 () Bool)

(declare-fun tp!1844057 () Bool)

(assert (=> b!6725563 (= e!4063435 (and tp!1844058 tp!1844057))))

(declare-fun b!6725562 () Bool)

(declare-fun tp!1844054 () Bool)

(assert (=> b!6725562 (= e!4063435 tp!1844054)))

(declare-fun b!6725560 () Bool)

(assert (=> b!6725560 (= e!4063435 tp_is_empty!42355)))

(assert (=> b!6724641 (= tp!1843745 e!4063435)))

(declare-fun b!6725561 () Bool)

(declare-fun tp!1844055 () Bool)

(declare-fun tp!1844056 () Bool)

(assert (=> b!6725561 (= e!4063435 (and tp!1844055 tp!1844056))))

(assert (= (and b!6724641 ((_ is ElementMatch!16551) (regOne!33614 (regTwo!33615 r!7292)))) b!6725560))

(assert (= (and b!6724641 ((_ is Concat!25396) (regOne!33614 (regTwo!33615 r!7292)))) b!6725561))

(assert (= (and b!6724641 ((_ is Star!16551) (regOne!33614 (regTwo!33615 r!7292)))) b!6725562))

(assert (= (and b!6724641 ((_ is Union!16551) (regOne!33614 (regTwo!33615 r!7292)))) b!6725563))

(declare-fun b!6725567 () Bool)

(declare-fun e!4063436 () Bool)

(declare-fun tp!1844063 () Bool)

(declare-fun tp!1844062 () Bool)

(assert (=> b!6725567 (= e!4063436 (and tp!1844063 tp!1844062))))

(declare-fun b!6725566 () Bool)

(declare-fun tp!1844059 () Bool)

(assert (=> b!6725566 (= e!4063436 tp!1844059)))

(declare-fun b!6725564 () Bool)

(assert (=> b!6725564 (= e!4063436 tp_is_empty!42355)))

(assert (=> b!6724641 (= tp!1843746 e!4063436)))

(declare-fun b!6725565 () Bool)

(declare-fun tp!1844060 () Bool)

(declare-fun tp!1844061 () Bool)

(assert (=> b!6725565 (= e!4063436 (and tp!1844060 tp!1844061))))

(assert (= (and b!6724641 ((_ is ElementMatch!16551) (regTwo!33614 (regTwo!33615 r!7292)))) b!6725564))

(assert (= (and b!6724641 ((_ is Concat!25396) (regTwo!33614 (regTwo!33615 r!7292)))) b!6725565))

(assert (= (and b!6724641 ((_ is Star!16551) (regTwo!33614 (regTwo!33615 r!7292)))) b!6725566))

(assert (= (and b!6724641 ((_ is Union!16551) (regTwo!33614 (regTwo!33615 r!7292)))) b!6725567))

(declare-fun b!6725571 () Bool)

(declare-fun e!4063437 () Bool)

(declare-fun tp!1844068 () Bool)

(declare-fun tp!1844067 () Bool)

(assert (=> b!6725571 (= e!4063437 (and tp!1844068 tp!1844067))))

(declare-fun b!6725570 () Bool)

(declare-fun tp!1844064 () Bool)

(assert (=> b!6725570 (= e!4063437 tp!1844064)))

(declare-fun b!6725568 () Bool)

(assert (=> b!6725568 (= e!4063437 tp_is_empty!42355)))

(assert (=> b!6724655 (= tp!1843759 e!4063437)))

(declare-fun b!6725569 () Bool)

(declare-fun tp!1844065 () Bool)

(declare-fun tp!1844066 () Bool)

(assert (=> b!6725569 (= e!4063437 (and tp!1844065 tp!1844066))))

(assert (= (and b!6724655 ((_ is ElementMatch!16551) (regOne!33614 (regOne!33614 r!7292)))) b!6725568))

(assert (= (and b!6724655 ((_ is Concat!25396) (regOne!33614 (regOne!33614 r!7292)))) b!6725569))

(assert (= (and b!6724655 ((_ is Star!16551) (regOne!33614 (regOne!33614 r!7292)))) b!6725570))

(assert (= (and b!6724655 ((_ is Union!16551) (regOne!33614 (regOne!33614 r!7292)))) b!6725571))

(declare-fun b!6725575 () Bool)

(declare-fun e!4063438 () Bool)

(declare-fun tp!1844073 () Bool)

(declare-fun tp!1844072 () Bool)

(assert (=> b!6725575 (= e!4063438 (and tp!1844073 tp!1844072))))

(declare-fun b!6725574 () Bool)

(declare-fun tp!1844069 () Bool)

(assert (=> b!6725574 (= e!4063438 tp!1844069)))

(declare-fun b!6725572 () Bool)

(assert (=> b!6725572 (= e!4063438 tp_is_empty!42355)))

(assert (=> b!6724655 (= tp!1843760 e!4063438)))

(declare-fun b!6725573 () Bool)

(declare-fun tp!1844070 () Bool)

(declare-fun tp!1844071 () Bool)

(assert (=> b!6725573 (= e!4063438 (and tp!1844070 tp!1844071))))

(assert (= (and b!6724655 ((_ is ElementMatch!16551) (regTwo!33614 (regOne!33614 r!7292)))) b!6725572))

(assert (= (and b!6724655 ((_ is Concat!25396) (regTwo!33614 (regOne!33614 r!7292)))) b!6725573))

(assert (= (and b!6724655 ((_ is Star!16551) (regTwo!33614 (regOne!33614 r!7292)))) b!6725574))

(assert (= (and b!6724655 ((_ is Union!16551) (regTwo!33614 (regOne!33614 r!7292)))) b!6725575))

(declare-fun b!6725579 () Bool)

(declare-fun e!4063439 () Bool)

(declare-fun tp!1844078 () Bool)

(declare-fun tp!1844077 () Bool)

(assert (=> b!6725579 (= e!4063439 (and tp!1844078 tp!1844077))))

(declare-fun b!6725578 () Bool)

(declare-fun tp!1844074 () Bool)

(assert (=> b!6725578 (= e!4063439 tp!1844074)))

(declare-fun b!6725576 () Bool)

(assert (=> b!6725576 (= e!4063439 tp_is_empty!42355)))

(assert (=> b!6724643 (= tp!1843748 e!4063439)))

(declare-fun b!6725577 () Bool)

(declare-fun tp!1844075 () Bool)

(declare-fun tp!1844076 () Bool)

(assert (=> b!6725577 (= e!4063439 (and tp!1844075 tp!1844076))))

(assert (= (and b!6724643 ((_ is ElementMatch!16551) (regOne!33615 (regTwo!33615 r!7292)))) b!6725576))

(assert (= (and b!6724643 ((_ is Concat!25396) (regOne!33615 (regTwo!33615 r!7292)))) b!6725577))

(assert (= (and b!6724643 ((_ is Star!16551) (regOne!33615 (regTwo!33615 r!7292)))) b!6725578))

(assert (= (and b!6724643 ((_ is Union!16551) (regOne!33615 (regTwo!33615 r!7292)))) b!6725579))

(declare-fun b!6725583 () Bool)

(declare-fun e!4063440 () Bool)

(declare-fun tp!1844083 () Bool)

(declare-fun tp!1844082 () Bool)

(assert (=> b!6725583 (= e!4063440 (and tp!1844083 tp!1844082))))

(declare-fun b!6725582 () Bool)

(declare-fun tp!1844079 () Bool)

(assert (=> b!6725582 (= e!4063440 tp!1844079)))

(declare-fun b!6725580 () Bool)

(assert (=> b!6725580 (= e!4063440 tp_is_empty!42355)))

(assert (=> b!6724643 (= tp!1843747 e!4063440)))

(declare-fun b!6725581 () Bool)

(declare-fun tp!1844080 () Bool)

(declare-fun tp!1844081 () Bool)

(assert (=> b!6725581 (= e!4063440 (and tp!1844080 tp!1844081))))

(assert (= (and b!6724643 ((_ is ElementMatch!16551) (regTwo!33615 (regTwo!33615 r!7292)))) b!6725580))

(assert (= (and b!6724643 ((_ is Concat!25396) (regTwo!33615 (regTwo!33615 r!7292)))) b!6725581))

(assert (= (and b!6724643 ((_ is Star!16551) (regTwo!33615 (regTwo!33615 r!7292)))) b!6725582))

(assert (= (and b!6724643 ((_ is Union!16551) (regTwo!33615 (regTwo!33615 r!7292)))) b!6725583))

(declare-fun b!6725587 () Bool)

(declare-fun e!4063441 () Bool)

(declare-fun tp!1844088 () Bool)

(declare-fun tp!1844087 () Bool)

(assert (=> b!6725587 (= e!4063441 (and tp!1844088 tp!1844087))))

(declare-fun b!6725586 () Bool)

(declare-fun tp!1844084 () Bool)

(assert (=> b!6725586 (= e!4063441 tp!1844084)))

(declare-fun b!6725584 () Bool)

(assert (=> b!6725584 (= e!4063441 tp_is_empty!42355)))

(assert (=> b!6724657 (= tp!1843762 e!4063441)))

(declare-fun b!6725585 () Bool)

(declare-fun tp!1844085 () Bool)

(declare-fun tp!1844086 () Bool)

(assert (=> b!6725585 (= e!4063441 (and tp!1844085 tp!1844086))))

(assert (= (and b!6724657 ((_ is ElementMatch!16551) (regOne!33615 (regOne!33614 r!7292)))) b!6725584))

(assert (= (and b!6724657 ((_ is Concat!25396) (regOne!33615 (regOne!33614 r!7292)))) b!6725585))

(assert (= (and b!6724657 ((_ is Star!16551) (regOne!33615 (regOne!33614 r!7292)))) b!6725586))

(assert (= (and b!6724657 ((_ is Union!16551) (regOne!33615 (regOne!33614 r!7292)))) b!6725587))

(declare-fun b!6725591 () Bool)

(declare-fun e!4063442 () Bool)

(declare-fun tp!1844093 () Bool)

(declare-fun tp!1844092 () Bool)

(assert (=> b!6725591 (= e!4063442 (and tp!1844093 tp!1844092))))

(declare-fun b!6725590 () Bool)

(declare-fun tp!1844089 () Bool)

(assert (=> b!6725590 (= e!4063442 tp!1844089)))

(declare-fun b!6725588 () Bool)

(assert (=> b!6725588 (= e!4063442 tp_is_empty!42355)))

(assert (=> b!6724657 (= tp!1843761 e!4063442)))

(declare-fun b!6725589 () Bool)

(declare-fun tp!1844090 () Bool)

(declare-fun tp!1844091 () Bool)

(assert (=> b!6725589 (= e!4063442 (and tp!1844090 tp!1844091))))

(assert (= (and b!6724657 ((_ is ElementMatch!16551) (regTwo!33615 (regOne!33614 r!7292)))) b!6725588))

(assert (= (and b!6724657 ((_ is Concat!25396) (regTwo!33615 (regOne!33614 r!7292)))) b!6725589))

(assert (= (and b!6724657 ((_ is Star!16551) (regTwo!33615 (regOne!33614 r!7292)))) b!6725590))

(assert (= (and b!6724657 ((_ is Union!16551) (regTwo!33615 (regOne!33614 r!7292)))) b!6725591))

(declare-fun b_lambda!253197 () Bool)

(assert (= b_lambda!253191 (or d!2113045 b_lambda!253197)))

(declare-fun bs!1789002 () Bool)

(declare-fun d!2113393 () Bool)

(assert (= bs!1789002 (and d!2113393 d!2113045)))

(assert (=> bs!1789002 (= (dynLambda!26253 lambda!377237 (h!72276 (exprs!6435 (h!72277 zl!343)))) (validRegex!8287 (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(declare-fun m!7485698 () Bool)

(assert (=> bs!1789002 m!7485698))

(assert (=> b!6725384 d!2113393))

(declare-fun b_lambda!253199 () Bool)

(assert (= b_lambda!253193 (or d!2113043 b_lambda!253199)))

(declare-fun bs!1789003 () Bool)

(declare-fun d!2113395 () Bool)

(assert (= bs!1789003 (and d!2113395 d!2113043)))

(assert (=> bs!1789003 (= (dynLambda!26253 lambda!377236 (h!72276 (exprs!6435 setElem!45835))) (validRegex!8287 (h!72276 (exprs!6435 setElem!45835))))))

(declare-fun m!7485700 () Bool)

(assert (=> bs!1789003 m!7485700))

(assert (=> b!6725401 d!2113395))

(declare-fun b_lambda!253201 () Bool)

(assert (= b_lambda!253165 (or b!6723968 b_lambda!253201)))

(assert (=> d!2113173 d!2113047))

(declare-fun b_lambda!253203 () Bool)

(assert (= b_lambda!253163 (or d!2112953 b_lambda!253203)))

(declare-fun bs!1789004 () Bool)

(declare-fun d!2113397 () Bool)

(assert (= bs!1789004 (and d!2113397 d!2112953)))

(assert (=> bs!1789004 (= (dynLambda!26253 lambda!377176 (h!72276 (unfocusZipperList!1972 zl!343))) (validRegex!8287 (h!72276 (unfocusZipperList!1972 zl!343))))))

(declare-fun m!7485702 () Bool)

(assert (=> bs!1789004 m!7485702))

(assert (=> b!6724847 d!2113397))

(declare-fun b_lambda!253205 () Bool)

(assert (= b_lambda!253195 (or d!2113023 b_lambda!253205)))

(declare-fun bs!1789005 () Bool)

(declare-fun d!2113399 () Bool)

(assert (= bs!1789005 (and d!2113399 d!2113023)))

(assert (=> bs!1789005 (= (dynLambda!26253 lambda!377220 (h!72276 (exprs!6435 (h!72277 zl!343)))) (validRegex!8287 (h!72276 (exprs!6435 (h!72277 zl!343)))))))

(assert (=> bs!1789005 m!7485698))

(assert (=> b!6725412 d!2113399))

(declare-fun b_lambda!253207 () Bool)

(assert (= b_lambda!253167 (or d!2112963 b_lambda!253207)))

(declare-fun bs!1789006 () Bool)

(declare-fun d!2113401 () Bool)

(assert (= bs!1789006 (and d!2113401 d!2112963)))

(assert (=> bs!1789006 (= (dynLambda!26253 lambda!377182 (h!72276 lt!2437017)) (validRegex!8287 (h!72276 lt!2437017)))))

(declare-fun m!7485704 () Bool)

(assert (=> bs!1789006 m!7485704))

(assert (=> b!6724966 d!2113401))

(declare-fun b_lambda!253209 () Bool)

(assert (= b_lambda!253189 (or d!2113019 b_lambda!253209)))

(declare-fun bs!1789007 () Bool)

(declare-fun d!2113403 () Bool)

(assert (= bs!1789007 (and d!2113403 d!2113019)))

(assert (=> bs!1789007 (= (dynLambda!26253 lambda!377217 (h!72276 (exprs!6435 lt!2436984))) (validRegex!8287 (h!72276 (exprs!6435 lt!2436984))))))

(declare-fun m!7485706 () Bool)

(assert (=> bs!1789007 m!7485706))

(assert (=> b!6725382 d!2113403))

(check-sat (not b!6724891) (not b!6725506) (not b!6725049) (not b!6725280) (not bm!607159) (not bm!607178) (not b!6725343) (not d!2113183) (not bm!607141) (not b!6725459) (not b!6725533) (not bm!607225) (not b_lambda!253199) (not b!6725027) (not b!6725515) (not bm!607240) (not bm!607160) (not b!6725551) (not d!2113387) (not d!2113291) (not b!6725464) (not bm!607219) (not b!6725554) (not b!6724896) (not bm!607210) (not d!2113229) (not b!6725495) (not bm!607138) (not b!6725048) (not bm!607205) (not b!6725446) (not b!6725575) (not bm!607220) (not d!2113237) (not d!2113311) (not b!6725521) (not bm!607133) (not b!6725020) (not d!2113385) (not b!6725487) (not b!6725302) (not b!6725579) (not b!6725543) (not b!6725573) (not b!6724822) (not b!6725555) (not b!6725507) (not d!2113315) (not b_lambda!253197) (not b!6725513) (not b!6725578) (not b!6725424) (not b!6725345) (not b!6725500) (not b!6725577) (not b!6725413) (not b!6725483) (not b!6725528) (not b!6725469) (not b!6724983) (not d!2113365) (not d!2113185) (not b!6725502) (not b!6725541) (not b!6725525) (not b!6725567) (not b!6725423) (not setNonEmpty!45848) (not b!6725504) (not bm!607235) (not b!6725512) (not b!6725274) (not bm!607132) (not b!6725569) (not b!6725590) (not b!6725275) (not b!6725403) (not b!6725531) (not b!6725297) (not b!6725357) (not b!6725544) (not d!2113293) (not b!6725436) (not bs!1789006) (not b!6725563) (not b!6725026) (not b!6725499) (not b!6725022) (not bm!607135) (not b!6725540) (not b!6725341) (not b!6725340) (not b!6725310) (not b!6724897) (not d!2113173) (not b!6725516) (not b!6725425) (not b!6724890) (not b!6724904) (not b!6725021) (not b!6725307) (not b!6725491) (not b!6725453) (not b!6725369) (not b!6725478) (not b!6725301) (not b!6725520) (not b!6725549) (not b!6725312) (not d!2113345) (not setNonEmpty!45849) (not bs!1789007) (not d!2113295) (not b!6725559) (not b!6725313) (not b!6725586) (not b!6725005) (not b!6725489) (not b_lambda!253205) (not b!6725385) (not b!6725532) (not bm!607203) (not b!6725455) (not b!6725475) (not b!6725571) (not b!6725511) (not d!2113303) (not b!6725460) (not d!2113289) (not b!6725529) (not b!6725031) (not b!6725368) (not b!6725493) (not b!6724848) (not b!6725298) (not d!2113241) (not b!6725539) (not b_lambda!253203) (not d!2113375) (not b!6725339) (not b!6725503) (not d!2113201) (not b!6725508) (not b!6725402) (not b!6725445) (not bm!607185) (not bm!607234) (not b!6725509) (not b!6725481) (not b!6725472) (not d!2113265) (not b!6725468) (not bs!1789003) (not b!6725465) (not b!6725589) (not b!6725494) (not b!6725545) (not b!6725557) (not b!6725438) (not b!6725285) (not b!6725537) (not b!6725486) (not b!6725471) (not b!6725558) (not b!6725482) (not b!6725309) (not bm!607216) (not b!6725587) (not b!6724967) (not b!6725524) (not b!6725338) (not d!2113371) (not b_lambda!253153) (not b!6725047) (not b!6725523) (not b_lambda!253209) (not b!6725566) (not b!6725308) (not bm!607237) (not bm!607230) (not b!6725536) (not d!2113285) (not bm!607123) (not bm!607211) (not b!6724901) (not b!6725561) (not b_lambda!253207) (not b!6725054) (not bm!607171) (not b!6725474) (not d!2113357) (not b!6725477) (not b!6725519) (not b!6725574) (not bm!607239) (not bm!607238) (not d!2113391) (not b!6725439) (not b!6725327) (not bm!607232) (not bs!1789005) (not b!6725138) (not b!6725346) (not d!2113177) (not b!6725281) (not b!6725548) (not b!6725454) tp_is_empty!42355 (not bm!607213) (not b!6725553) (not d!2113319) (not d!2113381) (not b!6725498) (not b!6725582) (not b!6725479) (not b!6725535) (not b!6725550) (not b!6725562) (not b!6725581) (not b!6725400) (not bm!607226) (not b!6725276) (not b!6725505) (not bs!1789002) (not b!6725399) (not d!2113267) (not d!2113343) (not b!6725583) (not b!6724892) (not bm!607222) (not b!6725004) (not d!2113341) (not b!6725485) (not b!6725517) (not bm!607214) (not b!6725381) (not d!2113263) (not bm!607122) (not b!6725527) (not b!6725585) (not b!6725467) (not b!6724875) (not bm!607207) (not bs!1789004) (not b!6725311) (not d!2113339) (not bm!607201) (not bm!607233) (not b!6725053) (not bm!607208) (not bm!607228) (not b!6725496) (not b!6725546) (not b!6725328) (not b_lambda!253201) (not d!2113297) (not d!2113309) (not b!6725565) (not b!6725490) (not b!6725591) (not bm!607170) (not b!6725383) (not bm!607162) (not d!2113179) (not bm!607140) (not b!6725058) (not b!6725570))
(check-sat)
