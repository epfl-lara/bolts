; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!576008 () Bool)

(assert start!576008)

(declare-fun b!5516114 () Bool)

(assert (=> b!5516114 true))

(assert (=> b!5516114 true))

(declare-fun lambda!295661 () Int)

(declare-fun lambda!295660 () Int)

(assert (=> b!5516114 (not (= lambda!295661 lambda!295660))))

(assert (=> b!5516114 true))

(assert (=> b!5516114 true))

(declare-fun b!5516115 () Bool)

(assert (=> b!5516115 true))

(declare-datatypes ((C!31282 0))(
  ( (C!31283 (val!25343 Int)) )
))
(declare-datatypes ((Regex!15506 0))(
  ( (ElementMatch!15506 (c!964265 C!31282)) (Concat!24351 (regOne!31524 Regex!15506) (regTwo!31524 Regex!15506)) (EmptyExpr!15506) (Star!15506 (reg!15835 Regex!15506)) (EmptyLang!15506) (Union!15506 (regOne!31525 Regex!15506) (regTwo!31525 Regex!15506)) )
))
(declare-datatypes ((List!62817 0))(
  ( (Nil!62693) (Cons!62693 (h!69141 Regex!15506) (t!376066 List!62817)) )
))
(declare-datatypes ((Context!9780 0))(
  ( (Context!9781 (exprs!5390 List!62817)) )
))
(declare-fun setElem!36666 () Context!9780)

(declare-fun setNonEmpty!36666 () Bool)

(declare-fun setRes!36666 () Bool)

(declare-fun e!3410967 () Bool)

(declare-fun tp!1517538 () Bool)

(declare-fun inv!82013 (Context!9780) Bool)

(assert (=> setNonEmpty!36666 (= setRes!36666 (and tp!1517538 (inv!82013 setElem!36666) e!3410967))))

(declare-fun z!1189 () (Set Context!9780))

(declare-fun setRest!36666 () (Set Context!9780))

(assert (=> setNonEmpty!36666 (= z!1189 (set.union (set.insert setElem!36666 (as set.empty (Set Context!9780))) setRest!36666))))

(declare-fun b!5516103 () Bool)

(declare-fun res!2350251 () Bool)

(declare-fun e!3410961 () Bool)

(assert (=> b!5516103 (=> res!2350251 e!3410961)))

(declare-fun r!7292 () Regex!15506)

(assert (=> b!5516103 (= res!2350251 (or (is-EmptyExpr!15506 r!7292) (is-EmptyLang!15506 r!7292) (is-ElementMatch!15506 r!7292) (is-Union!15506 r!7292) (not (is-Concat!24351 r!7292))))))

(declare-fun b!5516104 () Bool)

(declare-fun e!3410974 () Bool)

(declare-fun tp!1517534 () Bool)

(declare-fun tp!1517539 () Bool)

(assert (=> b!5516104 (= e!3410974 (and tp!1517534 tp!1517539))))

(declare-fun b!5516105 () Bool)

(declare-fun res!2350250 () Bool)

(assert (=> b!5516105 (=> res!2350250 e!3410961)))

(declare-datatypes ((List!62818 0))(
  ( (Nil!62694) (Cons!62694 (h!69142 Context!9780) (t!376067 List!62818)) )
))
(declare-fun zl!343 () List!62818)

(declare-fun generalisedUnion!1369 (List!62817) Regex!15506)

(declare-fun unfocusZipperList!934 (List!62818) List!62817)

(assert (=> b!5516105 (= res!2350250 (not (= r!7292 (generalisedUnion!1369 (unfocusZipperList!934 zl!343)))))))

(declare-fun setIsEmpty!36666 () Bool)

(assert (=> setIsEmpty!36666 setRes!36666))

(declare-fun b!5516107 () Bool)

(declare-fun res!2350255 () Bool)

(declare-fun e!3410971 () Bool)

(assert (=> b!5516107 (=> (not res!2350255) (not e!3410971))))

(declare-fun unfocusZipper!1248 (List!62818) Regex!15506)

(assert (=> b!5516107 (= res!2350255 (= r!7292 (unfocusZipper!1248 zl!343)))))

(declare-fun b!5516108 () Bool)

(declare-fun tp!1517533 () Bool)

(assert (=> b!5516108 (= e!3410967 tp!1517533)))

(declare-fun b!5516109 () Bool)

(declare-fun res!2350245 () Bool)

(assert (=> b!5516109 (=> res!2350245 e!3410961)))

(assert (=> b!5516109 (= res!2350245 (not (is-Cons!62693 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5516110 () Bool)

(declare-fun res!2350242 () Bool)

(assert (=> b!5516110 (=> (not res!2350242) (not e!3410971))))

(declare-fun toList!9290 ((Set Context!9780)) List!62818)

(assert (=> b!5516110 (= res!2350242 (= (toList!9290 z!1189) zl!343))))

(declare-fun b!5516111 () Bool)

(declare-fun res!2350254 () Bool)

(declare-fun e!3410973 () Bool)

(assert (=> b!5516111 (=> res!2350254 e!3410973)))

(declare-fun lt!2246233 () (Set Context!9780))

(declare-datatypes ((List!62819 0))(
  ( (Nil!62695) (Cons!62695 (h!69143 C!31282) (t!376068 List!62819)) )
))
(declare-fun s!2326 () List!62819)

(declare-fun matchZipper!1664 ((Set Context!9780) List!62819) Bool)

(declare-fun derivationStepZipper!1611 ((Set Context!9780) C!31282) (Set Context!9780))

(assert (=> b!5516111 (= res!2350254 (not (= (matchZipper!1664 lt!2246233 s!2326) (matchZipper!1664 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (t!376068 s!2326)))))))

(declare-fun b!5516112 () Bool)

(declare-fun e!3410969 () Bool)

(declare-fun e!3410968 () Bool)

(assert (=> b!5516112 (= e!3410969 e!3410968)))

(declare-fun res!2350246 () Bool)

(assert (=> b!5516112 (=> res!2350246 e!3410968)))

(declare-fun lt!2246225 () (Set Context!9780))

(declare-fun lt!2246211 () (Set Context!9780))

(assert (=> b!5516112 (= res!2350246 (not (= lt!2246225 lt!2246211)))))

(declare-fun lt!2246224 () Context!9780)

(declare-fun derivationStepZipperDown!848 (Regex!15506 Context!9780 C!31282) (Set Context!9780))

(assert (=> b!5516112 (= lt!2246211 (derivationStepZipperDown!848 r!7292 lt!2246224 (h!69143 s!2326)))))

(assert (=> b!5516112 (= lt!2246224 (Context!9781 Nil!62693))))

(declare-fun derivationStepZipperUp!774 (Context!9780 C!31282) (Set Context!9780))

(assert (=> b!5516112 (= lt!2246225 (derivationStepZipperUp!774 (Context!9781 (Cons!62693 r!7292 Nil!62693)) (h!69143 s!2326)))))

(declare-fun lt!2246220 () (Set Context!9780))

(assert (=> b!5516112 (= lt!2246220 (derivationStepZipper!1611 z!1189 (h!69143 s!2326)))))

(declare-fun b!5516113 () Bool)

(declare-fun e!3410962 () Bool)

(declare-fun e!3410965 () Bool)

(assert (=> b!5516113 (= e!3410962 e!3410965)))

(declare-fun res!2350258 () Bool)

(assert (=> b!5516113 (=> res!2350258 e!3410965)))

(declare-fun nullable!5540 (Regex!15506) Bool)

(assert (=> b!5516113 (= res!2350258 (not (nullable!5540 (regOne!31524 r!7292))))))

(declare-fun lt!2246215 () (Set Context!9780))

(assert (=> b!5516113 (= lt!2246215 (derivationStepZipperDown!848 (regTwo!31524 r!7292) lt!2246224 (h!69143 s!2326)))))

(declare-fun lt!2246232 () Context!9780)

(declare-fun lt!2246230 () (Set Context!9780))

(assert (=> b!5516113 (= lt!2246230 (derivationStepZipperDown!848 (regOne!31524 r!7292) lt!2246232 (h!69143 s!2326)))))

(declare-fun lambda!295662 () Int)

(declare-fun lt!2246229 () (Set Context!9780))

(declare-fun flatMap!1119 ((Set Context!9780) Int) (Set Context!9780))

(assert (=> b!5516113 (= (flatMap!1119 lt!2246229 lambda!295662) (derivationStepZipperUp!774 lt!2246232 (h!69143 s!2326)))))

(declare-datatypes ((Unit!155472 0))(
  ( (Unit!155473) )
))
(declare-fun lt!2246235 () Unit!155472)

(declare-fun lemmaFlatMapOnSingletonSet!651 ((Set Context!9780) Context!9780 Int) Unit!155472)

(assert (=> b!5516113 (= lt!2246235 (lemmaFlatMapOnSingletonSet!651 lt!2246229 lt!2246232 lambda!295662))))

(declare-fun lt!2246210 () Context!9780)

(assert (=> b!5516113 (= (flatMap!1119 lt!2246233 lambda!295662) (derivationStepZipperUp!774 lt!2246210 (h!69143 s!2326)))))

(declare-fun lt!2246214 () Unit!155472)

(assert (=> b!5516113 (= lt!2246214 (lemmaFlatMapOnSingletonSet!651 lt!2246233 lt!2246210 lambda!295662))))

(declare-fun lt!2246223 () (Set Context!9780))

(assert (=> b!5516113 (= lt!2246223 (derivationStepZipperUp!774 lt!2246232 (h!69143 s!2326)))))

(declare-fun lt!2246221 () (Set Context!9780))

(assert (=> b!5516113 (= lt!2246221 (derivationStepZipperUp!774 lt!2246210 (h!69143 s!2326)))))

(assert (=> b!5516113 (= lt!2246229 (set.insert lt!2246232 (as set.empty (Set Context!9780))))))

(declare-fun lt!2246227 () List!62817)

(assert (=> b!5516113 (= lt!2246232 (Context!9781 lt!2246227))))

(assert (=> b!5516113 (= lt!2246233 (set.insert lt!2246210 (as set.empty (Set Context!9780))))))

(assert (=> b!5516113 (= lt!2246210 (Context!9781 (Cons!62693 (regOne!31524 r!7292) lt!2246227)))))

(assert (=> b!5516113 (= lt!2246227 (Cons!62693 (regTwo!31524 r!7292) Nil!62693))))

(assert (=> b!5516114 (= e!3410961 e!3410969)))

(declare-fun res!2350259 () Bool)

(assert (=> b!5516114 (=> res!2350259 e!3410969)))

(declare-fun lt!2246216 () Bool)

(declare-fun lt!2246219 () Bool)

(assert (=> b!5516114 (= res!2350259 (or (not (= lt!2246219 lt!2246216)) (is-Nil!62695 s!2326)))))

(declare-fun Exists!2606 (Int) Bool)

(assert (=> b!5516114 (= (Exists!2606 lambda!295660) (Exists!2606 lambda!295661))))

(declare-fun lt!2246228 () Unit!155472)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1235 (Regex!15506 Regex!15506 List!62819) Unit!155472)

(assert (=> b!5516114 (= lt!2246228 (lemmaExistCutMatchRandMatchRSpecEquivalent!1235 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326))))

(assert (=> b!5516114 (= lt!2246216 (Exists!2606 lambda!295660))))

(declare-datatypes ((tuple2!65206 0))(
  ( (tuple2!65207 (_1!35906 List!62819) (_2!35906 List!62819)) )
))
(declare-datatypes ((Option!15515 0))(
  ( (None!15514) (Some!15514 (v!51549 tuple2!65206)) )
))
(declare-fun isDefined!12218 (Option!15515) Bool)

(declare-fun findConcatSeparation!1929 (Regex!15506 Regex!15506 List!62819 List!62819 List!62819) Option!15515)

(assert (=> b!5516114 (= lt!2246216 (isDefined!12218 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326)))))

(declare-fun lt!2246222 () Unit!155472)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1693 (Regex!15506 Regex!15506 List!62819) Unit!155472)

(assert (=> b!5516114 (= lt!2246222 (lemmaFindConcatSeparationEquivalentToExists!1693 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326))))

(assert (=> b!5516115 (= e!3410968 e!3410962)))

(declare-fun res!2350243 () Bool)

(assert (=> b!5516115 (=> res!2350243 e!3410962)))

(assert (=> b!5516115 (= res!2350243 (not (= lt!2246220 lt!2246211)))))

(assert (=> b!5516115 (= (flatMap!1119 z!1189 lambda!295662) (derivationStepZipperUp!774 (h!69142 zl!343) (h!69143 s!2326)))))

(declare-fun lt!2246234 () Unit!155472)

(assert (=> b!5516115 (= lt!2246234 (lemmaFlatMapOnSingletonSet!651 z!1189 (h!69142 zl!343) lambda!295662))))

(declare-fun b!5516116 () Bool)

(declare-fun res!2350249 () Bool)

(assert (=> b!5516116 (=> res!2350249 e!3410961)))

(declare-fun isEmpty!34475 (List!62818) Bool)

(assert (=> b!5516116 (= res!2350249 (not (isEmpty!34475 (t!376067 zl!343))))))

(declare-fun b!5516106 () Bool)

(declare-fun tp!1517537 () Bool)

(declare-fun tp!1517540 () Bool)

(assert (=> b!5516106 (= e!3410974 (and tp!1517537 tp!1517540))))

(declare-fun res!2350241 () Bool)

(assert (=> start!576008 (=> (not res!2350241) (not e!3410971))))

(declare-fun validRegex!7242 (Regex!15506) Bool)

(assert (=> start!576008 (= res!2350241 (validRegex!7242 r!7292))))

(assert (=> start!576008 e!3410971))

(assert (=> start!576008 e!3410974))

(declare-fun condSetEmpty!36666 () Bool)

(assert (=> start!576008 (= condSetEmpty!36666 (= z!1189 (as set.empty (Set Context!9780))))))

(assert (=> start!576008 setRes!36666))

(declare-fun e!3410972 () Bool)

(assert (=> start!576008 e!3410972))

(declare-fun e!3410963 () Bool)

(assert (=> start!576008 e!3410963))

(declare-fun b!5516117 () Bool)

(declare-fun tp!1517535 () Bool)

(assert (=> b!5516117 (= e!3410974 tp!1517535)))

(declare-fun b!5516118 () Bool)

(declare-fun tp_is_empty!40265 () Bool)

(declare-fun tp!1517541 () Bool)

(assert (=> b!5516118 (= e!3410963 (and tp_is_empty!40265 tp!1517541))))

(declare-fun b!5516119 () Bool)

(declare-fun res!2350256 () Bool)

(assert (=> b!5516119 (=> res!2350256 e!3410961)))

(declare-fun generalisedConcat!1121 (List!62817) Regex!15506)

(assert (=> b!5516119 (= res!2350256 (not (= r!7292 (generalisedConcat!1121 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5516120 () Bool)

(declare-fun res!2350257 () Bool)

(assert (=> b!5516120 (=> res!2350257 e!3410973)))

(declare-fun lt!2246218 () (Set Context!9780))

(assert (=> b!5516120 (= res!2350257 (or (not (= lt!2246221 (set.union lt!2246230 lt!2246223))) (not (= lt!2246221 lt!2246218)) (not (= lt!2246221 lt!2246220))))))

(declare-fun b!5516121 () Bool)

(declare-fun e!3410966 () Bool)

(assert (=> b!5516121 (= e!3410966 (matchZipper!1664 lt!2246215 (t!376068 s!2326)))))

(declare-fun b!5516122 () Bool)

(assert (=> b!5516122 (= e!3410971 (not e!3410961))))

(declare-fun res!2350248 () Bool)

(assert (=> b!5516122 (=> res!2350248 e!3410961)))

(assert (=> b!5516122 (= res!2350248 (not (is-Cons!62694 zl!343)))))

(declare-fun matchRSpec!2609 (Regex!15506 List!62819) Bool)

(assert (=> b!5516122 (= lt!2246219 (matchRSpec!2609 r!7292 s!2326))))

(declare-fun matchR!7691 (Regex!15506 List!62819) Bool)

(assert (=> b!5516122 (= lt!2246219 (matchR!7691 r!7292 s!2326))))

(declare-fun lt!2246212 () Unit!155472)

(declare-fun mainMatchTheorem!2609 (Regex!15506 List!62819) Unit!155472)

(assert (=> b!5516122 (= lt!2246212 (mainMatchTheorem!2609 r!7292 s!2326))))

(declare-fun tp!1517536 () Bool)

(declare-fun e!3410964 () Bool)

(declare-fun b!5516123 () Bool)

(assert (=> b!5516123 (= e!3410972 (and (inv!82013 (h!69142 zl!343)) e!3410964 tp!1517536))))

(declare-fun b!5516124 () Bool)

(declare-fun e!3410970 () Bool)

(assert (=> b!5516124 (= e!3410965 e!3410970)))

(declare-fun res!2350244 () Bool)

(assert (=> b!5516124 (=> res!2350244 e!3410970)))

(assert (=> b!5516124 (= res!2350244 (not (= lt!2246220 lt!2246218)))))

(assert (=> b!5516124 (= lt!2246218 (set.union lt!2246230 lt!2246215))))

(declare-fun b!5516125 () Bool)

(assert (=> b!5516125 (= e!3410973 (= (matchZipper!1664 lt!2246229 s!2326) (matchZipper!1664 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (t!376068 s!2326))))))

(declare-fun b!5516126 () Bool)

(declare-fun res!2350252 () Bool)

(assert (=> b!5516126 (=> res!2350252 e!3410969)))

(declare-fun isEmpty!34476 (List!62817) Bool)

(assert (=> b!5516126 (= res!2350252 (not (isEmpty!34476 (t!376066 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5516127 () Bool)

(declare-fun tp!1517532 () Bool)

(assert (=> b!5516127 (= e!3410964 tp!1517532)))

(declare-fun b!5516128 () Bool)

(assert (=> b!5516128 (= e!3410974 tp_is_empty!40265)))

(declare-fun b!5516129 () Bool)

(assert (=> b!5516129 (= e!3410970 e!3410973)))

(declare-fun res!2350253 () Bool)

(assert (=> b!5516129 (=> res!2350253 e!3410973)))

(declare-fun lt!2246226 () Bool)

(assert (=> b!5516129 (= res!2350253 (not (= lt!2246226 (matchZipper!1664 lt!2246220 (t!376068 s!2326)))))))

(declare-fun lt!2246231 () Bool)

(assert (=> b!5516129 (= lt!2246231 lt!2246226)))

(assert (=> b!5516129 (= lt!2246226 e!3410966)))

(declare-fun res!2350247 () Bool)

(assert (=> b!5516129 (=> res!2350247 e!3410966)))

(declare-fun lt!2246213 () Bool)

(assert (=> b!5516129 (= res!2350247 lt!2246213)))

(assert (=> b!5516129 (= lt!2246231 (matchZipper!1664 lt!2246218 (t!376068 s!2326)))))

(assert (=> b!5516129 (= lt!2246213 (matchZipper!1664 lt!2246230 (t!376068 s!2326)))))

(declare-fun lt!2246217 () Unit!155472)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!553 ((Set Context!9780) (Set Context!9780) List!62819) Unit!155472)

(assert (=> b!5516129 (= lt!2246217 (lemmaZipperConcatMatchesSameAsBothZippers!553 lt!2246230 lt!2246215 (t!376068 s!2326)))))

(assert (= (and start!576008 res!2350241) b!5516110))

(assert (= (and b!5516110 res!2350242) b!5516107))

(assert (= (and b!5516107 res!2350255) b!5516122))

(assert (= (and b!5516122 (not res!2350248)) b!5516116))

(assert (= (and b!5516116 (not res!2350249)) b!5516119))

(assert (= (and b!5516119 (not res!2350256)) b!5516109))

(assert (= (and b!5516109 (not res!2350245)) b!5516105))

(assert (= (and b!5516105 (not res!2350250)) b!5516103))

(assert (= (and b!5516103 (not res!2350251)) b!5516114))

(assert (= (and b!5516114 (not res!2350259)) b!5516126))

(assert (= (and b!5516126 (not res!2350252)) b!5516112))

(assert (= (and b!5516112 (not res!2350246)) b!5516115))

(assert (= (and b!5516115 (not res!2350243)) b!5516113))

(assert (= (and b!5516113 (not res!2350258)) b!5516124))

(assert (= (and b!5516124 (not res!2350244)) b!5516129))

(assert (= (and b!5516129 (not res!2350247)) b!5516121))

(assert (= (and b!5516129 (not res!2350253)) b!5516120))

(assert (= (and b!5516120 (not res!2350257)) b!5516111))

(assert (= (and b!5516111 (not res!2350254)) b!5516125))

(assert (= (and start!576008 (is-ElementMatch!15506 r!7292)) b!5516128))

(assert (= (and start!576008 (is-Concat!24351 r!7292)) b!5516104))

(assert (= (and start!576008 (is-Star!15506 r!7292)) b!5516117))

(assert (= (and start!576008 (is-Union!15506 r!7292)) b!5516106))

(assert (= (and start!576008 condSetEmpty!36666) setIsEmpty!36666))

(assert (= (and start!576008 (not condSetEmpty!36666)) setNonEmpty!36666))

(assert (= setNonEmpty!36666 b!5516108))

(assert (= b!5516123 b!5516127))

(assert (= (and start!576008 (is-Cons!62694 zl!343)) b!5516123))

(assert (= (and start!576008 (is-Cons!62695 s!2326)) b!5516118))

(declare-fun m!6520040 () Bool)

(assert (=> b!5516105 m!6520040))

(assert (=> b!5516105 m!6520040))

(declare-fun m!6520042 () Bool)

(assert (=> b!5516105 m!6520042))

(declare-fun m!6520044 () Bool)

(assert (=> b!5516125 m!6520044))

(declare-fun m!6520046 () Bool)

(assert (=> b!5516125 m!6520046))

(assert (=> b!5516125 m!6520046))

(declare-fun m!6520048 () Bool)

(assert (=> b!5516125 m!6520048))

(declare-fun m!6520050 () Bool)

(assert (=> b!5516116 m!6520050))

(declare-fun m!6520052 () Bool)

(assert (=> b!5516122 m!6520052))

(declare-fun m!6520054 () Bool)

(assert (=> b!5516122 m!6520054))

(declare-fun m!6520056 () Bool)

(assert (=> b!5516122 m!6520056))

(declare-fun m!6520058 () Bool)

(assert (=> b!5516119 m!6520058))

(declare-fun m!6520060 () Bool)

(assert (=> b!5516107 m!6520060))

(declare-fun m!6520062 () Bool)

(assert (=> b!5516115 m!6520062))

(declare-fun m!6520064 () Bool)

(assert (=> b!5516115 m!6520064))

(declare-fun m!6520066 () Bool)

(assert (=> b!5516115 m!6520066))

(declare-fun m!6520068 () Bool)

(assert (=> setNonEmpty!36666 m!6520068))

(declare-fun m!6520070 () Bool)

(assert (=> b!5516123 m!6520070))

(declare-fun m!6520072 () Bool)

(assert (=> b!5516112 m!6520072))

(declare-fun m!6520074 () Bool)

(assert (=> b!5516112 m!6520074))

(declare-fun m!6520076 () Bool)

(assert (=> b!5516112 m!6520076))

(declare-fun m!6520078 () Bool)

(assert (=> b!5516126 m!6520078))

(declare-fun m!6520080 () Bool)

(assert (=> b!5516113 m!6520080))

(declare-fun m!6520082 () Bool)

(assert (=> b!5516113 m!6520082))

(declare-fun m!6520084 () Bool)

(assert (=> b!5516113 m!6520084))

(declare-fun m!6520086 () Bool)

(assert (=> b!5516113 m!6520086))

(declare-fun m!6520088 () Bool)

(assert (=> b!5516113 m!6520088))

(declare-fun m!6520090 () Bool)

(assert (=> b!5516113 m!6520090))

(declare-fun m!6520092 () Bool)

(assert (=> b!5516113 m!6520092))

(declare-fun m!6520094 () Bool)

(assert (=> b!5516113 m!6520094))

(declare-fun m!6520096 () Bool)

(assert (=> b!5516113 m!6520096))

(declare-fun m!6520098 () Bool)

(assert (=> b!5516113 m!6520098))

(declare-fun m!6520100 () Bool)

(assert (=> b!5516113 m!6520100))

(declare-fun m!6520102 () Bool)

(assert (=> start!576008 m!6520102))

(declare-fun m!6520104 () Bool)

(assert (=> b!5516111 m!6520104))

(declare-fun m!6520106 () Bool)

(assert (=> b!5516111 m!6520106))

(assert (=> b!5516111 m!6520106))

(declare-fun m!6520108 () Bool)

(assert (=> b!5516111 m!6520108))

(declare-fun m!6520110 () Bool)

(assert (=> b!5516110 m!6520110))

(declare-fun m!6520112 () Bool)

(assert (=> b!5516114 m!6520112))

(declare-fun m!6520114 () Bool)

(assert (=> b!5516114 m!6520114))

(declare-fun m!6520116 () Bool)

(assert (=> b!5516114 m!6520116))

(declare-fun m!6520118 () Bool)

(assert (=> b!5516114 m!6520118))

(declare-fun m!6520120 () Bool)

(assert (=> b!5516114 m!6520120))

(assert (=> b!5516114 m!6520116))

(assert (=> b!5516114 m!6520112))

(declare-fun m!6520122 () Bool)

(assert (=> b!5516114 m!6520122))

(declare-fun m!6520124 () Bool)

(assert (=> b!5516129 m!6520124))

(declare-fun m!6520126 () Bool)

(assert (=> b!5516129 m!6520126))

(declare-fun m!6520128 () Bool)

(assert (=> b!5516129 m!6520128))

(declare-fun m!6520130 () Bool)

(assert (=> b!5516129 m!6520130))

(declare-fun m!6520132 () Bool)

(assert (=> b!5516121 m!6520132))

(push 1)

(assert (not b!5516115))

(assert (not b!5516114))

(assert (not b!5516112))

(assert (not start!576008))

(assert (not b!5516107))

(assert (not setNonEmpty!36666))

(assert (not b!5516117))

(assert (not b!5516116))

(assert tp_is_empty!40265)

(assert (not b!5516121))

(assert (not b!5516126))

(assert (not b!5516129))

(assert (not b!5516122))

(assert (not b!5516104))

(assert (not b!5516118))

(assert (not b!5516127))

(assert (not b!5516110))

(assert (not b!5516105))

(assert (not b!5516123))

(assert (not b!5516106))

(assert (not b!5516111))

(assert (not b!5516119))

(assert (not b!5516125))

(assert (not b!5516113))

(assert (not b!5516108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!408189 () Bool)

(declare-fun call!408196 () Bool)

(declare-fun call!408195 () Bool)

(assert (=> bm!408189 (= call!408196 call!408195)))

(declare-fun bm!408190 () Bool)

(declare-fun c!964279 () Bool)

(declare-fun c!964278 () Bool)

(assert (=> bm!408190 (= call!408195 (validRegex!7242 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))))))

(declare-fun b!5516253 () Bool)

(declare-fun res!2350339 () Bool)

(declare-fun e!3411041 () Bool)

(assert (=> b!5516253 (=> res!2350339 e!3411041)))

(assert (=> b!5516253 (= res!2350339 (not (is-Concat!24351 r!7292)))))

(declare-fun e!3411037 () Bool)

(assert (=> b!5516253 (= e!3411037 e!3411041)))

(declare-fun b!5516254 () Bool)

(declare-fun e!3411040 () Bool)

(assert (=> b!5516254 (= e!3411041 e!3411040)))

(declare-fun res!2350341 () Bool)

(assert (=> b!5516254 (=> (not res!2350341) (not e!3411040))))

(declare-fun call!408194 () Bool)

(assert (=> b!5516254 (= res!2350341 call!408194)))

(declare-fun b!5516255 () Bool)

(assert (=> b!5516255 (= e!3411040 call!408196)))

(declare-fun b!5516257 () Bool)

(declare-fun e!3411043 () Bool)

(declare-fun e!3411039 () Bool)

(assert (=> b!5516257 (= e!3411043 e!3411039)))

(assert (=> b!5516257 (= c!964279 (is-Star!15506 r!7292))))

(declare-fun b!5516258 () Bool)

(assert (=> b!5516258 (= e!3411039 e!3411037)))

(assert (=> b!5516258 (= c!964278 (is-Union!15506 r!7292))))

(declare-fun b!5516259 () Bool)

(declare-fun e!3411038 () Bool)

(assert (=> b!5516259 (= e!3411038 call!408196)))

(declare-fun b!5516260 () Bool)

(declare-fun e!3411042 () Bool)

(assert (=> b!5516260 (= e!3411042 call!408195)))

(declare-fun bm!408191 () Bool)

(assert (=> bm!408191 (= call!408194 (validRegex!7242 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))))))

(declare-fun b!5516261 () Bool)

(assert (=> b!5516261 (= e!3411039 e!3411042)))

(declare-fun res!2350342 () Bool)

(assert (=> b!5516261 (= res!2350342 (not (nullable!5540 (reg!15835 r!7292))))))

(assert (=> b!5516261 (=> (not res!2350342) (not e!3411042))))

(declare-fun d!1747565 () Bool)

(declare-fun res!2350343 () Bool)

(assert (=> d!1747565 (=> res!2350343 e!3411043)))

(assert (=> d!1747565 (= res!2350343 (is-ElementMatch!15506 r!7292))))

(assert (=> d!1747565 (= (validRegex!7242 r!7292) e!3411043)))

(declare-fun b!5516256 () Bool)

(declare-fun res!2350340 () Bool)

(assert (=> b!5516256 (=> (not res!2350340) (not e!3411038))))

(assert (=> b!5516256 (= res!2350340 call!408194)))

(assert (=> b!5516256 (= e!3411037 e!3411038)))

(assert (= (and d!1747565 (not res!2350343)) b!5516257))

(assert (= (and b!5516257 c!964279) b!5516261))

(assert (= (and b!5516257 (not c!964279)) b!5516258))

(assert (= (and b!5516261 res!2350342) b!5516260))

(assert (= (and b!5516258 c!964278) b!5516256))

(assert (= (and b!5516258 (not c!964278)) b!5516253))

(assert (= (and b!5516256 res!2350340) b!5516259))

(assert (= (and b!5516253 (not res!2350339)) b!5516254))

(assert (= (and b!5516254 res!2350341) b!5516255))

(assert (= (or b!5516259 b!5516255) bm!408189))

(assert (= (or b!5516256 b!5516254) bm!408191))

(assert (= (or b!5516260 bm!408189) bm!408190))

(declare-fun m!6520228 () Bool)

(assert (=> bm!408190 m!6520228))

(declare-fun m!6520230 () Bool)

(assert (=> bm!408191 m!6520230))

(declare-fun m!6520232 () Bool)

(assert (=> b!5516261 m!6520232))

(assert (=> start!576008 d!1747565))

(declare-fun d!1747567 () Bool)

(declare-fun c!964282 () Bool)

(declare-fun isEmpty!34479 (List!62819) Bool)

(assert (=> d!1747567 (= c!964282 (isEmpty!34479 (t!376068 s!2326)))))

(declare-fun e!3411046 () Bool)

(assert (=> d!1747567 (= (matchZipper!1664 lt!2246220 (t!376068 s!2326)) e!3411046)))

(declare-fun b!5516266 () Bool)

(declare-fun nullableZipper!1532 ((Set Context!9780)) Bool)

(assert (=> b!5516266 (= e!3411046 (nullableZipper!1532 lt!2246220))))

(declare-fun b!5516267 () Bool)

(declare-fun head!11815 (List!62819) C!31282)

(declare-fun tail!10910 (List!62819) List!62819)

(assert (=> b!5516267 (= e!3411046 (matchZipper!1664 (derivationStepZipper!1611 lt!2246220 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))))))

(assert (= (and d!1747567 c!964282) b!5516266))

(assert (= (and d!1747567 (not c!964282)) b!5516267))

(declare-fun m!6520234 () Bool)

(assert (=> d!1747567 m!6520234))

(declare-fun m!6520236 () Bool)

(assert (=> b!5516266 m!6520236))

(declare-fun m!6520238 () Bool)

(assert (=> b!5516267 m!6520238))

(assert (=> b!5516267 m!6520238))

(declare-fun m!6520240 () Bool)

(assert (=> b!5516267 m!6520240))

(declare-fun m!6520242 () Bool)

(assert (=> b!5516267 m!6520242))

(assert (=> b!5516267 m!6520240))

(assert (=> b!5516267 m!6520242))

(declare-fun m!6520244 () Bool)

(assert (=> b!5516267 m!6520244))

(assert (=> b!5516129 d!1747567))

(declare-fun d!1747569 () Bool)

(declare-fun c!964283 () Bool)

(assert (=> d!1747569 (= c!964283 (isEmpty!34479 (t!376068 s!2326)))))

(declare-fun e!3411047 () Bool)

(assert (=> d!1747569 (= (matchZipper!1664 lt!2246218 (t!376068 s!2326)) e!3411047)))

(declare-fun b!5516268 () Bool)

(assert (=> b!5516268 (= e!3411047 (nullableZipper!1532 lt!2246218))))

(declare-fun b!5516269 () Bool)

(assert (=> b!5516269 (= e!3411047 (matchZipper!1664 (derivationStepZipper!1611 lt!2246218 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))))))

(assert (= (and d!1747569 c!964283) b!5516268))

(assert (= (and d!1747569 (not c!964283)) b!5516269))

(assert (=> d!1747569 m!6520234))

(declare-fun m!6520246 () Bool)

(assert (=> b!5516268 m!6520246))

(assert (=> b!5516269 m!6520238))

(assert (=> b!5516269 m!6520238))

(declare-fun m!6520248 () Bool)

(assert (=> b!5516269 m!6520248))

(assert (=> b!5516269 m!6520242))

(assert (=> b!5516269 m!6520248))

(assert (=> b!5516269 m!6520242))

(declare-fun m!6520250 () Bool)

(assert (=> b!5516269 m!6520250))

(assert (=> b!5516129 d!1747569))

(declare-fun d!1747571 () Bool)

(declare-fun c!964284 () Bool)

(assert (=> d!1747571 (= c!964284 (isEmpty!34479 (t!376068 s!2326)))))

(declare-fun e!3411048 () Bool)

(assert (=> d!1747571 (= (matchZipper!1664 lt!2246230 (t!376068 s!2326)) e!3411048)))

(declare-fun b!5516270 () Bool)

(assert (=> b!5516270 (= e!3411048 (nullableZipper!1532 lt!2246230))))

(declare-fun b!5516271 () Bool)

(assert (=> b!5516271 (= e!3411048 (matchZipper!1664 (derivationStepZipper!1611 lt!2246230 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))))))

(assert (= (and d!1747571 c!964284) b!5516270))

(assert (= (and d!1747571 (not c!964284)) b!5516271))

(assert (=> d!1747571 m!6520234))

(declare-fun m!6520252 () Bool)

(assert (=> b!5516270 m!6520252))

(assert (=> b!5516271 m!6520238))

(assert (=> b!5516271 m!6520238))

(declare-fun m!6520254 () Bool)

(assert (=> b!5516271 m!6520254))

(assert (=> b!5516271 m!6520242))

(assert (=> b!5516271 m!6520254))

(assert (=> b!5516271 m!6520242))

(declare-fun m!6520256 () Bool)

(assert (=> b!5516271 m!6520256))

(assert (=> b!5516129 d!1747571))

(declare-fun d!1747573 () Bool)

(declare-fun e!3411051 () Bool)

(assert (=> d!1747573 (= (matchZipper!1664 (set.union lt!2246230 lt!2246215) (t!376068 s!2326)) e!3411051)))

(declare-fun res!2350346 () Bool)

(assert (=> d!1747573 (=> res!2350346 e!3411051)))

(assert (=> d!1747573 (= res!2350346 (matchZipper!1664 lt!2246230 (t!376068 s!2326)))))

(declare-fun lt!2246316 () Unit!155472)

(declare-fun choose!41924 ((Set Context!9780) (Set Context!9780) List!62819) Unit!155472)

(assert (=> d!1747573 (= lt!2246316 (choose!41924 lt!2246230 lt!2246215 (t!376068 s!2326)))))

(assert (=> d!1747573 (= (lemmaZipperConcatMatchesSameAsBothZippers!553 lt!2246230 lt!2246215 (t!376068 s!2326)) lt!2246316)))

(declare-fun b!5516274 () Bool)

(assert (=> b!5516274 (= e!3411051 (matchZipper!1664 lt!2246215 (t!376068 s!2326)))))

(assert (= (and d!1747573 (not res!2350346)) b!5516274))

(declare-fun m!6520258 () Bool)

(assert (=> d!1747573 m!6520258))

(assert (=> d!1747573 m!6520128))

(declare-fun m!6520260 () Bool)

(assert (=> d!1747573 m!6520260))

(assert (=> b!5516274 m!6520132))

(assert (=> b!5516129 d!1747573))

(declare-fun b!5516295 () Bool)

(declare-fun e!3411064 () Bool)

(assert (=> b!5516295 (= e!3411064 (isEmpty!34476 (t!376066 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5516296 () Bool)

(declare-fun e!3411068 () Bool)

(declare-fun e!3411067 () Bool)

(assert (=> b!5516296 (= e!3411068 e!3411067)))

(declare-fun c!964295 () Bool)

(declare-fun tail!10911 (List!62817) List!62817)

(assert (=> b!5516296 (= c!964295 (isEmpty!34476 (tail!10911 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5516297 () Bool)

(declare-fun e!3411066 () Regex!15506)

(declare-fun e!3411069 () Regex!15506)

(assert (=> b!5516297 (= e!3411066 e!3411069)))

(declare-fun c!964294 () Bool)

(assert (=> b!5516297 (= c!964294 (is-Cons!62693 (exprs!5390 (h!69142 zl!343))))))

(declare-fun d!1747575 () Bool)

(declare-fun e!3411065 () Bool)

(assert (=> d!1747575 e!3411065))

(declare-fun res!2350351 () Bool)

(assert (=> d!1747575 (=> (not res!2350351) (not e!3411065))))

(declare-fun lt!2246319 () Regex!15506)

(assert (=> d!1747575 (= res!2350351 (validRegex!7242 lt!2246319))))

(assert (=> d!1747575 (= lt!2246319 e!3411066)))

(declare-fun c!964296 () Bool)

(assert (=> d!1747575 (= c!964296 e!3411064)))

(declare-fun res!2350352 () Bool)

(assert (=> d!1747575 (=> (not res!2350352) (not e!3411064))))

(assert (=> d!1747575 (= res!2350352 (is-Cons!62693 (exprs!5390 (h!69142 zl!343))))))

(declare-fun lambda!295680 () Int)

(declare-fun forall!14680 (List!62817 Int) Bool)

(assert (=> d!1747575 (forall!14680 (exprs!5390 (h!69142 zl!343)) lambda!295680)))

(assert (=> d!1747575 (= (generalisedConcat!1121 (exprs!5390 (h!69142 zl!343))) lt!2246319)))

(declare-fun b!5516298 () Bool)

(declare-fun head!11816 (List!62817) Regex!15506)

(assert (=> b!5516298 (= e!3411067 (= lt!2246319 (head!11816 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5516299 () Bool)

(assert (=> b!5516299 (= e!3411066 (h!69141 (exprs!5390 (h!69142 zl!343))))))

(declare-fun b!5516300 () Bool)

(declare-fun isEmptyExpr!1078 (Regex!15506) Bool)

(assert (=> b!5516300 (= e!3411068 (isEmptyExpr!1078 lt!2246319))))

(declare-fun b!5516301 () Bool)

(assert (=> b!5516301 (= e!3411065 e!3411068)))

(declare-fun c!964293 () Bool)

(assert (=> b!5516301 (= c!964293 (isEmpty!34476 (exprs!5390 (h!69142 zl!343))))))

(declare-fun b!5516302 () Bool)

(assert (=> b!5516302 (= e!3411069 (Concat!24351 (h!69141 (exprs!5390 (h!69142 zl!343))) (generalisedConcat!1121 (t!376066 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5516303 () Bool)

(declare-fun isConcat!601 (Regex!15506) Bool)

(assert (=> b!5516303 (= e!3411067 (isConcat!601 lt!2246319))))

(declare-fun b!5516304 () Bool)

(assert (=> b!5516304 (= e!3411069 EmptyExpr!15506)))

(assert (= (and d!1747575 res!2350352) b!5516295))

(assert (= (and d!1747575 c!964296) b!5516299))

(assert (= (and d!1747575 (not c!964296)) b!5516297))

(assert (= (and b!5516297 c!964294) b!5516302))

(assert (= (and b!5516297 (not c!964294)) b!5516304))

(assert (= (and d!1747575 res!2350351) b!5516301))

(assert (= (and b!5516301 c!964293) b!5516300))

(assert (= (and b!5516301 (not c!964293)) b!5516296))

(assert (= (and b!5516296 c!964295) b!5516298))

(assert (= (and b!5516296 (not c!964295)) b!5516303))

(declare-fun m!6520262 () Bool)

(assert (=> b!5516302 m!6520262))

(declare-fun m!6520264 () Bool)

(assert (=> b!5516298 m!6520264))

(declare-fun m!6520266 () Bool)

(assert (=> d!1747575 m!6520266))

(declare-fun m!6520268 () Bool)

(assert (=> d!1747575 m!6520268))

(declare-fun m!6520270 () Bool)

(assert (=> b!5516303 m!6520270))

(declare-fun m!6520272 () Bool)

(assert (=> b!5516301 m!6520272))

(assert (=> b!5516295 m!6520078))

(declare-fun m!6520274 () Bool)

(assert (=> b!5516300 m!6520274))

(declare-fun m!6520276 () Bool)

(assert (=> b!5516296 m!6520276))

(assert (=> b!5516296 m!6520276))

(declare-fun m!6520278 () Bool)

(assert (=> b!5516296 m!6520278))

(assert (=> b!5516119 d!1747575))

(declare-fun d!1747577 () Bool)

(declare-fun lt!2246322 () Regex!15506)

(assert (=> d!1747577 (validRegex!7242 lt!2246322)))

(assert (=> d!1747577 (= lt!2246322 (generalisedUnion!1369 (unfocusZipperList!934 zl!343)))))

(assert (=> d!1747577 (= (unfocusZipper!1248 zl!343) lt!2246322)))

(declare-fun bs!1271307 () Bool)

(assert (= bs!1271307 d!1747577))

(declare-fun m!6520280 () Bool)

(assert (=> bs!1271307 m!6520280))

(assert (=> bs!1271307 m!6520040))

(assert (=> bs!1271307 m!6520040))

(assert (=> bs!1271307 m!6520042))

(assert (=> b!5516107 d!1747577))

(declare-fun d!1747579 () Bool)

(assert (=> d!1747579 (= (isEmpty!34476 (t!376066 (exprs!5390 (h!69142 zl!343)))) (is-Nil!62693 (t!376066 (exprs!5390 (h!69142 zl!343)))))))

(assert (=> b!5516126 d!1747579))

(declare-fun d!1747581 () Bool)

(assert (=> d!1747581 (= (isEmpty!34475 (t!376067 zl!343)) (is-Nil!62694 (t!376067 zl!343)))))

(assert (=> b!5516116 d!1747581))

(declare-fun d!1747583 () Bool)

(declare-fun c!964297 () Bool)

(assert (=> d!1747583 (= c!964297 (isEmpty!34479 s!2326))))

(declare-fun e!3411070 () Bool)

(assert (=> d!1747583 (= (matchZipper!1664 lt!2246229 s!2326) e!3411070)))

(declare-fun b!5516305 () Bool)

(assert (=> b!5516305 (= e!3411070 (nullableZipper!1532 lt!2246229))))

(declare-fun b!5516306 () Bool)

(assert (=> b!5516306 (= e!3411070 (matchZipper!1664 (derivationStepZipper!1611 lt!2246229 (head!11815 s!2326)) (tail!10910 s!2326)))))

(assert (= (and d!1747583 c!964297) b!5516305))

(assert (= (and d!1747583 (not c!964297)) b!5516306))

(declare-fun m!6520282 () Bool)

(assert (=> d!1747583 m!6520282))

(declare-fun m!6520284 () Bool)

(assert (=> b!5516305 m!6520284))

(declare-fun m!6520286 () Bool)

(assert (=> b!5516306 m!6520286))

(assert (=> b!5516306 m!6520286))

(declare-fun m!6520288 () Bool)

(assert (=> b!5516306 m!6520288))

(declare-fun m!6520290 () Bool)

(assert (=> b!5516306 m!6520290))

(assert (=> b!5516306 m!6520288))

(assert (=> b!5516306 m!6520290))

(declare-fun m!6520292 () Bool)

(assert (=> b!5516306 m!6520292))

(assert (=> b!5516125 d!1747583))

(declare-fun d!1747585 () Bool)

(declare-fun c!964298 () Bool)

(assert (=> d!1747585 (= c!964298 (isEmpty!34479 (t!376068 s!2326)))))

(declare-fun e!3411071 () Bool)

(assert (=> d!1747585 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (t!376068 s!2326)) e!3411071)))

(declare-fun b!5516307 () Bool)

(assert (=> b!5516307 (= e!3411071 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326))))))

(declare-fun b!5516308 () Bool)

(assert (=> b!5516308 (= e!3411071 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))))))

(assert (= (and d!1747585 c!964298) b!5516307))

(assert (= (and d!1747585 (not c!964298)) b!5516308))

(assert (=> d!1747585 m!6520234))

(assert (=> b!5516307 m!6520046))

(declare-fun m!6520294 () Bool)

(assert (=> b!5516307 m!6520294))

(assert (=> b!5516308 m!6520238))

(assert (=> b!5516308 m!6520046))

(assert (=> b!5516308 m!6520238))

(declare-fun m!6520296 () Bool)

(assert (=> b!5516308 m!6520296))

(assert (=> b!5516308 m!6520242))

(assert (=> b!5516308 m!6520296))

(assert (=> b!5516308 m!6520242))

(declare-fun m!6520298 () Bool)

(assert (=> b!5516308 m!6520298))

(assert (=> b!5516125 d!1747585))

(declare-fun bs!1271308 () Bool)

(declare-fun d!1747587 () Bool)

(assert (= bs!1271308 (and d!1747587 b!5516115)))

(declare-fun lambda!295683 () Int)

(assert (=> bs!1271308 (= lambda!295683 lambda!295662)))

(assert (=> d!1747587 true))

(assert (=> d!1747587 (= (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (flatMap!1119 lt!2246229 lambda!295683))))

(declare-fun bs!1271309 () Bool)

(assert (= bs!1271309 d!1747587))

(declare-fun m!6520300 () Bool)

(assert (=> bs!1271309 m!6520300))

(assert (=> b!5516125 d!1747587))

(declare-fun b!5516329 () Bool)

(declare-fun e!3411082 () Bool)

(assert (=> b!5516329 (= e!3411082 (matchR!7691 (regTwo!31524 r!7292) s!2326))))

(declare-fun b!5516330 () Bool)

(declare-fun res!2350366 () Bool)

(declare-fun e!3411086 () Bool)

(assert (=> b!5516330 (=> (not res!2350366) (not e!3411086))))

(declare-fun lt!2246329 () Option!15515)

(declare-fun get!21575 (Option!15515) tuple2!65206)

(assert (=> b!5516330 (= res!2350366 (matchR!7691 (regOne!31524 r!7292) (_1!35906 (get!21575 lt!2246329))))))

(declare-fun d!1747589 () Bool)

(declare-fun e!3411083 () Bool)

(assert (=> d!1747589 e!3411083))

(declare-fun res!2350367 () Bool)

(assert (=> d!1747589 (=> res!2350367 e!3411083)))

(assert (=> d!1747589 (= res!2350367 e!3411086)))

(declare-fun res!2350364 () Bool)

(assert (=> d!1747589 (=> (not res!2350364) (not e!3411086))))

(assert (=> d!1747589 (= res!2350364 (isDefined!12218 lt!2246329))))

(declare-fun e!3411085 () Option!15515)

(assert (=> d!1747589 (= lt!2246329 e!3411085)))

(declare-fun c!964306 () Bool)

(assert (=> d!1747589 (= c!964306 e!3411082)))

(declare-fun res!2350363 () Bool)

(assert (=> d!1747589 (=> (not res!2350363) (not e!3411082))))

(assert (=> d!1747589 (= res!2350363 (matchR!7691 (regOne!31524 r!7292) Nil!62695))))

(assert (=> d!1747589 (validRegex!7242 (regOne!31524 r!7292))))

(assert (=> d!1747589 (= (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326) lt!2246329)))

(declare-fun b!5516331 () Bool)

(declare-fun lt!2246331 () Unit!155472)

(declare-fun lt!2246330 () Unit!155472)

(assert (=> b!5516331 (= lt!2246331 lt!2246330)))

(declare-fun ++!13754 (List!62819 List!62819) List!62819)

(assert (=> b!5516331 (= (++!13754 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (t!376068 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1923 (List!62819 C!31282 List!62819 List!62819) Unit!155472)

(assert (=> b!5516331 (= lt!2246330 (lemmaMoveElementToOtherListKeepsConcatEq!1923 Nil!62695 (h!69143 s!2326) (t!376068 s!2326) s!2326))))

(declare-fun e!3411084 () Option!15515)

(assert (=> b!5516331 (= e!3411084 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (t!376068 s!2326) s!2326))))

(declare-fun b!5516332 () Bool)

(assert (=> b!5516332 (= e!3411085 e!3411084)))

(declare-fun c!964305 () Bool)

(assert (=> b!5516332 (= c!964305 (is-Nil!62695 s!2326))))

(declare-fun b!5516333 () Bool)

(assert (=> b!5516333 (= e!3411084 None!15514)))

(declare-fun b!5516334 () Bool)

(assert (=> b!5516334 (= e!3411083 (not (isDefined!12218 lt!2246329)))))

(declare-fun b!5516335 () Bool)

(assert (=> b!5516335 (= e!3411086 (= (++!13754 (_1!35906 (get!21575 lt!2246329)) (_2!35906 (get!21575 lt!2246329))) s!2326))))

(declare-fun b!5516336 () Bool)

(declare-fun res!2350365 () Bool)

(assert (=> b!5516336 (=> (not res!2350365) (not e!3411086))))

(assert (=> b!5516336 (= res!2350365 (matchR!7691 (regTwo!31524 r!7292) (_2!35906 (get!21575 lt!2246329))))))

(declare-fun b!5516337 () Bool)

(assert (=> b!5516337 (= e!3411085 (Some!15514 (tuple2!65207 Nil!62695 s!2326)))))

(assert (= (and d!1747589 res!2350363) b!5516329))

(assert (= (and d!1747589 c!964306) b!5516337))

(assert (= (and d!1747589 (not c!964306)) b!5516332))

(assert (= (and b!5516332 c!964305) b!5516333))

(assert (= (and b!5516332 (not c!964305)) b!5516331))

(assert (= (and d!1747589 res!2350364) b!5516330))

(assert (= (and b!5516330 res!2350366) b!5516336))

(assert (= (and b!5516336 res!2350365) b!5516335))

(assert (= (and d!1747589 (not res!2350367)) b!5516334))

(declare-fun m!6520302 () Bool)

(assert (=> b!5516334 m!6520302))

(assert (=> d!1747589 m!6520302))

(declare-fun m!6520304 () Bool)

(assert (=> d!1747589 m!6520304))

(declare-fun m!6520306 () Bool)

(assert (=> d!1747589 m!6520306))

(declare-fun m!6520308 () Bool)

(assert (=> b!5516331 m!6520308))

(assert (=> b!5516331 m!6520308))

(declare-fun m!6520310 () Bool)

(assert (=> b!5516331 m!6520310))

(declare-fun m!6520312 () Bool)

(assert (=> b!5516331 m!6520312))

(assert (=> b!5516331 m!6520308))

(declare-fun m!6520314 () Bool)

(assert (=> b!5516331 m!6520314))

(declare-fun m!6520316 () Bool)

(assert (=> b!5516329 m!6520316))

(declare-fun m!6520318 () Bool)

(assert (=> b!5516330 m!6520318))

(declare-fun m!6520320 () Bool)

(assert (=> b!5516330 m!6520320))

(assert (=> b!5516336 m!6520318))

(declare-fun m!6520322 () Bool)

(assert (=> b!5516336 m!6520322))

(assert (=> b!5516335 m!6520318))

(declare-fun m!6520324 () Bool)

(assert (=> b!5516335 m!6520324))

(assert (=> b!5516114 d!1747589))

(declare-fun d!1747591 () Bool)

(declare-fun choose!41925 (Int) Bool)

(assert (=> d!1747591 (= (Exists!2606 lambda!295660) (choose!41925 lambda!295660))))

(declare-fun bs!1271310 () Bool)

(assert (= bs!1271310 d!1747591))

(declare-fun m!6520326 () Bool)

(assert (=> bs!1271310 m!6520326))

(assert (=> b!5516114 d!1747591))

(declare-fun bs!1271311 () Bool)

(declare-fun d!1747593 () Bool)

(assert (= bs!1271311 (and d!1747593 b!5516114)))

(declare-fun lambda!295686 () Int)

(assert (=> bs!1271311 (= lambda!295686 lambda!295660)))

(assert (=> bs!1271311 (not (= lambda!295686 lambda!295661))))

(assert (=> d!1747593 true))

(assert (=> d!1747593 true))

(assert (=> d!1747593 true))

(assert (=> d!1747593 (= (isDefined!12218 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326)) (Exists!2606 lambda!295686))))

(declare-fun lt!2246334 () Unit!155472)

(declare-fun choose!41926 (Regex!15506 Regex!15506 List!62819) Unit!155472)

(assert (=> d!1747593 (= lt!2246334 (choose!41926 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326))))

(assert (=> d!1747593 (validRegex!7242 (regOne!31524 r!7292))))

(assert (=> d!1747593 (= (lemmaFindConcatSeparationEquivalentToExists!1693 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326) lt!2246334)))

(declare-fun bs!1271312 () Bool)

(assert (= bs!1271312 d!1747593))

(declare-fun m!6520328 () Bool)

(assert (=> bs!1271312 m!6520328))

(assert (=> bs!1271312 m!6520112))

(declare-fun m!6520330 () Bool)

(assert (=> bs!1271312 m!6520330))

(assert (=> bs!1271312 m!6520112))

(assert (=> bs!1271312 m!6520114))

(assert (=> bs!1271312 m!6520306))

(assert (=> b!5516114 d!1747593))

(declare-fun d!1747595 () Bool)

(assert (=> d!1747595 (= (Exists!2606 lambda!295661) (choose!41925 lambda!295661))))

(declare-fun bs!1271313 () Bool)

(assert (= bs!1271313 d!1747595))

(declare-fun m!6520332 () Bool)

(assert (=> bs!1271313 m!6520332))

(assert (=> b!5516114 d!1747595))

(declare-fun bs!1271314 () Bool)

(declare-fun d!1747597 () Bool)

(assert (= bs!1271314 (and d!1747597 b!5516114)))

(declare-fun lambda!295691 () Int)

(assert (=> bs!1271314 (= lambda!295691 lambda!295660)))

(assert (=> bs!1271314 (not (= lambda!295691 lambda!295661))))

(declare-fun bs!1271315 () Bool)

(assert (= bs!1271315 (and d!1747597 d!1747593)))

(assert (=> bs!1271315 (= lambda!295691 lambda!295686)))

(assert (=> d!1747597 true))

(assert (=> d!1747597 true))

(assert (=> d!1747597 true))

(declare-fun lambda!295692 () Int)

(assert (=> bs!1271314 (not (= lambda!295692 lambda!295660))))

(assert (=> bs!1271314 (= lambda!295692 lambda!295661)))

(assert (=> bs!1271315 (not (= lambda!295692 lambda!295686))))

(declare-fun bs!1271316 () Bool)

(assert (= bs!1271316 d!1747597))

(assert (=> bs!1271316 (not (= lambda!295692 lambda!295691))))

(assert (=> d!1747597 true))

(assert (=> d!1747597 true))

(assert (=> d!1747597 true))

(assert (=> d!1747597 (= (Exists!2606 lambda!295691) (Exists!2606 lambda!295692))))

(declare-fun lt!2246337 () Unit!155472)

(declare-fun choose!41927 (Regex!15506 Regex!15506 List!62819) Unit!155472)

(assert (=> d!1747597 (= lt!2246337 (choose!41927 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326))))

(assert (=> d!1747597 (validRegex!7242 (regOne!31524 r!7292))))

(assert (=> d!1747597 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1235 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326) lt!2246337)))

(declare-fun m!6520334 () Bool)

(assert (=> bs!1271316 m!6520334))

(declare-fun m!6520336 () Bool)

(assert (=> bs!1271316 m!6520336))

(declare-fun m!6520338 () Bool)

(assert (=> bs!1271316 m!6520338))

(assert (=> bs!1271316 m!6520306))

(assert (=> b!5516114 d!1747597))

(declare-fun d!1747599 () Bool)

(declare-fun isEmpty!34480 (Option!15515) Bool)

(assert (=> d!1747599 (= (isDefined!12218 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326)) (not (isEmpty!34480 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326))))))

(declare-fun bs!1271317 () Bool)

(assert (= bs!1271317 d!1747599))

(assert (=> bs!1271317 m!6520112))

(declare-fun m!6520340 () Bool)

(assert (=> bs!1271317 m!6520340))

(assert (=> b!5516114 d!1747599))

(declare-fun d!1747601 () Bool)

(declare-fun choose!41928 ((Set Context!9780) Int) (Set Context!9780))

(assert (=> d!1747601 (= (flatMap!1119 z!1189 lambda!295662) (choose!41928 z!1189 lambda!295662))))

(declare-fun bs!1271318 () Bool)

(assert (= bs!1271318 d!1747601))

(declare-fun m!6520342 () Bool)

(assert (=> bs!1271318 m!6520342))

(assert (=> b!5516115 d!1747601))

(declare-fun b!5516360 () Bool)

(declare-fun e!3411099 () (Set Context!9780))

(declare-fun e!3411101 () (Set Context!9780))

(assert (=> b!5516360 (= e!3411099 e!3411101)))

(declare-fun c!964312 () Bool)

(assert (=> b!5516360 (= c!964312 (is-Cons!62693 (exprs!5390 (h!69142 zl!343))))))

(declare-fun b!5516361 () Bool)

(declare-fun e!3411100 () Bool)

(assert (=> b!5516361 (= e!3411100 (nullable!5540 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5516362 () Bool)

(declare-fun call!408199 () (Set Context!9780))

(assert (=> b!5516362 (= e!3411099 (set.union call!408199 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))) (h!69143 s!2326))))))

(declare-fun b!5516363 () Bool)

(assert (=> b!5516363 (= e!3411101 call!408199)))

(declare-fun d!1747603 () Bool)

(declare-fun c!964311 () Bool)

(assert (=> d!1747603 (= c!964311 e!3411100)))

(declare-fun res!2350382 () Bool)

(assert (=> d!1747603 (=> (not res!2350382) (not e!3411100))))

(assert (=> d!1747603 (= res!2350382 (is-Cons!62693 (exprs!5390 (h!69142 zl!343))))))

(assert (=> d!1747603 (= (derivationStepZipperUp!774 (h!69142 zl!343) (h!69143 s!2326)) e!3411099)))

(declare-fun b!5516364 () Bool)

(assert (=> b!5516364 (= e!3411101 (as set.empty (Set Context!9780)))))

(declare-fun bm!408194 () Bool)

(assert (=> bm!408194 (= call!408199 (derivationStepZipperDown!848 (h!69141 (exprs!5390 (h!69142 zl!343))) (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))) (h!69143 s!2326)))))

(assert (= (and d!1747603 res!2350382) b!5516361))

(assert (= (and d!1747603 c!964311) b!5516362))

(assert (= (and d!1747603 (not c!964311)) b!5516360))

(assert (= (and b!5516360 c!964312) b!5516363))

(assert (= (and b!5516360 (not c!964312)) b!5516364))

(assert (= (or b!5516362 b!5516363) bm!408194))

(declare-fun m!6520344 () Bool)

(assert (=> b!5516361 m!6520344))

(declare-fun m!6520346 () Bool)

(assert (=> b!5516362 m!6520346))

(declare-fun m!6520348 () Bool)

(assert (=> bm!408194 m!6520348))

(assert (=> b!5516115 d!1747603))

(declare-fun d!1747605 () Bool)

(declare-fun dynLambda!24493 (Int Context!9780) (Set Context!9780))

(assert (=> d!1747605 (= (flatMap!1119 z!1189 lambda!295662) (dynLambda!24493 lambda!295662 (h!69142 zl!343)))))

(declare-fun lt!2246340 () Unit!155472)

(declare-fun choose!41929 ((Set Context!9780) Context!9780 Int) Unit!155472)

(assert (=> d!1747605 (= lt!2246340 (choose!41929 z!1189 (h!69142 zl!343) lambda!295662))))

(assert (=> d!1747605 (= z!1189 (set.insert (h!69142 zl!343) (as set.empty (Set Context!9780))))))

(assert (=> d!1747605 (= (lemmaFlatMapOnSingletonSet!651 z!1189 (h!69142 zl!343) lambda!295662) lt!2246340)))

(declare-fun b_lambda!209139 () Bool)

(assert (=> (not b_lambda!209139) (not d!1747605)))

(declare-fun bs!1271319 () Bool)

(assert (= bs!1271319 d!1747605))

(assert (=> bs!1271319 m!6520062))

(declare-fun m!6520350 () Bool)

(assert (=> bs!1271319 m!6520350))

(declare-fun m!6520352 () Bool)

(assert (=> bs!1271319 m!6520352))

(declare-fun m!6520354 () Bool)

(assert (=> bs!1271319 m!6520354))

(assert (=> b!5516115 d!1747605))

(declare-fun bs!1271320 () Bool)

(declare-fun d!1747607 () Bool)

(assert (= bs!1271320 (and d!1747607 d!1747575)))

(declare-fun lambda!295695 () Int)

(assert (=> bs!1271320 (= lambda!295695 lambda!295680)))

(declare-fun b!5516386 () Bool)

(declare-fun e!3411114 () Bool)

(declare-fun lt!2246343 () Regex!15506)

(declare-fun isEmptyLang!1089 (Regex!15506) Bool)

(assert (=> b!5516386 (= e!3411114 (isEmptyLang!1089 lt!2246343))))

(declare-fun b!5516387 () Bool)

(declare-fun e!3411117 () Bool)

(declare-fun isUnion!519 (Regex!15506) Bool)

(assert (=> b!5516387 (= e!3411117 (isUnion!519 lt!2246343))))

(declare-fun b!5516388 () Bool)

(assert (=> b!5516388 (= e!3411117 (= lt!2246343 (head!11816 (unfocusZipperList!934 zl!343))))))

(declare-fun b!5516389 () Bool)

(declare-fun e!3411116 () Bool)

(assert (=> b!5516389 (= e!3411116 e!3411114)))

(declare-fun c!964323 () Bool)

(assert (=> b!5516389 (= c!964323 (isEmpty!34476 (unfocusZipperList!934 zl!343)))))

(declare-fun b!5516390 () Bool)

(declare-fun e!3411118 () Regex!15506)

(assert (=> b!5516390 (= e!3411118 EmptyLang!15506)))

(declare-fun b!5516391 () Bool)

(declare-fun e!3411119 () Regex!15506)

(assert (=> b!5516391 (= e!3411119 (h!69141 (unfocusZipperList!934 zl!343)))))

(declare-fun b!5516392 () Bool)

(assert (=> b!5516392 (= e!3411119 e!3411118)))

(declare-fun c!964322 () Bool)

(assert (=> b!5516392 (= c!964322 (is-Cons!62693 (unfocusZipperList!934 zl!343)))))

(assert (=> d!1747607 e!3411116))

(declare-fun res!2350387 () Bool)

(assert (=> d!1747607 (=> (not res!2350387) (not e!3411116))))

(assert (=> d!1747607 (= res!2350387 (validRegex!7242 lt!2246343))))

(assert (=> d!1747607 (= lt!2246343 e!3411119)))

(declare-fun c!964324 () Bool)

(declare-fun e!3411115 () Bool)

(assert (=> d!1747607 (= c!964324 e!3411115)))

(declare-fun res!2350388 () Bool)

(assert (=> d!1747607 (=> (not res!2350388) (not e!3411115))))

(assert (=> d!1747607 (= res!2350388 (is-Cons!62693 (unfocusZipperList!934 zl!343)))))

(assert (=> d!1747607 (forall!14680 (unfocusZipperList!934 zl!343) lambda!295695)))

(assert (=> d!1747607 (= (generalisedUnion!1369 (unfocusZipperList!934 zl!343)) lt!2246343)))

(declare-fun b!5516385 () Bool)

(assert (=> b!5516385 (= e!3411115 (isEmpty!34476 (t!376066 (unfocusZipperList!934 zl!343))))))

(declare-fun b!5516393 () Bool)

(assert (=> b!5516393 (= e!3411114 e!3411117)))

(declare-fun c!964321 () Bool)

(assert (=> b!5516393 (= c!964321 (isEmpty!34476 (tail!10911 (unfocusZipperList!934 zl!343))))))

(declare-fun b!5516394 () Bool)

(assert (=> b!5516394 (= e!3411118 (Union!15506 (h!69141 (unfocusZipperList!934 zl!343)) (generalisedUnion!1369 (t!376066 (unfocusZipperList!934 zl!343)))))))

(assert (= (and d!1747607 res!2350388) b!5516385))

(assert (= (and d!1747607 c!964324) b!5516391))

(assert (= (and d!1747607 (not c!964324)) b!5516392))

(assert (= (and b!5516392 c!964322) b!5516394))

(assert (= (and b!5516392 (not c!964322)) b!5516390))

(assert (= (and d!1747607 res!2350387) b!5516389))

(assert (= (and b!5516389 c!964323) b!5516386))

(assert (= (and b!5516389 (not c!964323)) b!5516393))

(assert (= (and b!5516393 c!964321) b!5516388))

(assert (= (and b!5516393 (not c!964321)) b!5516387))

(declare-fun m!6520356 () Bool)

(assert (=> b!5516386 m!6520356))

(assert (=> b!5516388 m!6520040))

(declare-fun m!6520358 () Bool)

(assert (=> b!5516388 m!6520358))

(declare-fun m!6520360 () Bool)

(assert (=> b!5516385 m!6520360))

(declare-fun m!6520362 () Bool)

(assert (=> b!5516394 m!6520362))

(declare-fun m!6520364 () Bool)

(assert (=> d!1747607 m!6520364))

(assert (=> d!1747607 m!6520040))

(declare-fun m!6520366 () Bool)

(assert (=> d!1747607 m!6520366))

(assert (=> b!5516389 m!6520040))

(declare-fun m!6520368 () Bool)

(assert (=> b!5516389 m!6520368))

(declare-fun m!6520370 () Bool)

(assert (=> b!5516387 m!6520370))

(assert (=> b!5516393 m!6520040))

(declare-fun m!6520372 () Bool)

(assert (=> b!5516393 m!6520372))

(assert (=> b!5516393 m!6520372))

(declare-fun m!6520374 () Bool)

(assert (=> b!5516393 m!6520374))

(assert (=> b!5516105 d!1747607))

(declare-fun bs!1271321 () Bool)

(declare-fun d!1747609 () Bool)

(assert (= bs!1271321 (and d!1747609 d!1747575)))

(declare-fun lambda!295698 () Int)

(assert (=> bs!1271321 (= lambda!295698 lambda!295680)))

(declare-fun bs!1271322 () Bool)

(assert (= bs!1271322 (and d!1747609 d!1747607)))

(assert (=> bs!1271322 (= lambda!295698 lambda!295695)))

(declare-fun lt!2246346 () List!62817)

(assert (=> d!1747609 (forall!14680 lt!2246346 lambda!295698)))

(declare-fun e!3411122 () List!62817)

(assert (=> d!1747609 (= lt!2246346 e!3411122)))

(declare-fun c!964327 () Bool)

(assert (=> d!1747609 (= c!964327 (is-Cons!62694 zl!343))))

(assert (=> d!1747609 (= (unfocusZipperList!934 zl!343) lt!2246346)))

(declare-fun b!5516399 () Bool)

(assert (=> b!5516399 (= e!3411122 (Cons!62693 (generalisedConcat!1121 (exprs!5390 (h!69142 zl!343))) (unfocusZipperList!934 (t!376067 zl!343))))))

(declare-fun b!5516400 () Bool)

(assert (=> b!5516400 (= e!3411122 Nil!62693)))

(assert (= (and d!1747609 c!964327) b!5516399))

(assert (= (and d!1747609 (not c!964327)) b!5516400))

(declare-fun m!6520376 () Bool)

(assert (=> d!1747609 m!6520376))

(assert (=> b!5516399 m!6520058))

(declare-fun m!6520378 () Bool)

(assert (=> b!5516399 m!6520378))

(assert (=> b!5516105 d!1747609))

(declare-fun b!5516401 () Bool)

(declare-fun e!3411123 () (Set Context!9780))

(declare-fun e!3411125 () (Set Context!9780))

(assert (=> b!5516401 (= e!3411123 e!3411125)))

(declare-fun c!964329 () Bool)

(assert (=> b!5516401 (= c!964329 (is-Cons!62693 (exprs!5390 lt!2246232)))))

(declare-fun b!5516402 () Bool)

(declare-fun e!3411124 () Bool)

(assert (=> b!5516402 (= e!3411124 (nullable!5540 (h!69141 (exprs!5390 lt!2246232))))))

(declare-fun b!5516403 () Bool)

(declare-fun call!408200 () (Set Context!9780))

(assert (=> b!5516403 (= e!3411123 (set.union call!408200 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 lt!2246232))) (h!69143 s!2326))))))

(declare-fun b!5516404 () Bool)

(assert (=> b!5516404 (= e!3411125 call!408200)))

(declare-fun d!1747611 () Bool)

(declare-fun c!964328 () Bool)

(assert (=> d!1747611 (= c!964328 e!3411124)))

(declare-fun res!2350389 () Bool)

(assert (=> d!1747611 (=> (not res!2350389) (not e!3411124))))

(assert (=> d!1747611 (= res!2350389 (is-Cons!62693 (exprs!5390 lt!2246232)))))

(assert (=> d!1747611 (= (derivationStepZipperUp!774 lt!2246232 (h!69143 s!2326)) e!3411123)))

(declare-fun b!5516405 () Bool)

(assert (=> b!5516405 (= e!3411125 (as set.empty (Set Context!9780)))))

(declare-fun bm!408195 () Bool)

(assert (=> bm!408195 (= call!408200 (derivationStepZipperDown!848 (h!69141 (exprs!5390 lt!2246232)) (Context!9781 (t!376066 (exprs!5390 lt!2246232))) (h!69143 s!2326)))))

(assert (= (and d!1747611 res!2350389) b!5516402))

(assert (= (and d!1747611 c!964328) b!5516403))

(assert (= (and d!1747611 (not c!964328)) b!5516401))

(assert (= (and b!5516401 c!964329) b!5516404))

(assert (= (and b!5516401 (not c!964329)) b!5516405))

(assert (= (or b!5516403 b!5516404) bm!408195))

(declare-fun m!6520380 () Bool)

(assert (=> b!5516402 m!6520380))

(declare-fun m!6520382 () Bool)

(assert (=> b!5516403 m!6520382))

(declare-fun m!6520384 () Bool)

(assert (=> bm!408195 m!6520384))

(assert (=> b!5516113 d!1747611))

(declare-fun d!1747613 () Bool)

(declare-fun nullableFct!1664 (Regex!15506) Bool)

(assert (=> d!1747613 (= (nullable!5540 (regOne!31524 r!7292)) (nullableFct!1664 (regOne!31524 r!7292)))))

(declare-fun bs!1271323 () Bool)

(assert (= bs!1271323 d!1747613))

(declare-fun m!6520386 () Bool)

(assert (=> bs!1271323 m!6520386))

(assert (=> b!5516113 d!1747613))

(declare-fun d!1747615 () Bool)

(assert (=> d!1747615 (= (flatMap!1119 lt!2246233 lambda!295662) (choose!41928 lt!2246233 lambda!295662))))

(declare-fun bs!1271324 () Bool)

(assert (= bs!1271324 d!1747615))

(declare-fun m!6520388 () Bool)

(assert (=> bs!1271324 m!6520388))

(assert (=> b!5516113 d!1747615))

(declare-fun b!5516406 () Bool)

(declare-fun e!3411126 () (Set Context!9780))

(declare-fun e!3411128 () (Set Context!9780))

(assert (=> b!5516406 (= e!3411126 e!3411128)))

(declare-fun c!964331 () Bool)

(assert (=> b!5516406 (= c!964331 (is-Cons!62693 (exprs!5390 lt!2246210)))))

(declare-fun b!5516407 () Bool)

(declare-fun e!3411127 () Bool)

(assert (=> b!5516407 (= e!3411127 (nullable!5540 (h!69141 (exprs!5390 lt!2246210))))))

(declare-fun call!408201 () (Set Context!9780))

(declare-fun b!5516408 () Bool)

(assert (=> b!5516408 (= e!3411126 (set.union call!408201 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 lt!2246210))) (h!69143 s!2326))))))

(declare-fun b!5516409 () Bool)

(assert (=> b!5516409 (= e!3411128 call!408201)))

(declare-fun d!1747617 () Bool)

(declare-fun c!964330 () Bool)

(assert (=> d!1747617 (= c!964330 e!3411127)))

(declare-fun res!2350390 () Bool)

(assert (=> d!1747617 (=> (not res!2350390) (not e!3411127))))

(assert (=> d!1747617 (= res!2350390 (is-Cons!62693 (exprs!5390 lt!2246210)))))

(assert (=> d!1747617 (= (derivationStepZipperUp!774 lt!2246210 (h!69143 s!2326)) e!3411126)))

(declare-fun b!5516410 () Bool)

(assert (=> b!5516410 (= e!3411128 (as set.empty (Set Context!9780)))))

(declare-fun bm!408196 () Bool)

(assert (=> bm!408196 (= call!408201 (derivationStepZipperDown!848 (h!69141 (exprs!5390 lt!2246210)) (Context!9781 (t!376066 (exprs!5390 lt!2246210))) (h!69143 s!2326)))))

(assert (= (and d!1747617 res!2350390) b!5516407))

(assert (= (and d!1747617 c!964330) b!5516408))

(assert (= (and d!1747617 (not c!964330)) b!5516406))

(assert (= (and b!5516406 c!964331) b!5516409))

(assert (= (and b!5516406 (not c!964331)) b!5516410))

(assert (= (or b!5516408 b!5516409) bm!408196))

(declare-fun m!6520390 () Bool)

(assert (=> b!5516407 m!6520390))

(declare-fun m!6520392 () Bool)

(assert (=> b!5516408 m!6520392))

(declare-fun m!6520394 () Bool)

(assert (=> bm!408196 m!6520394))

(assert (=> b!5516113 d!1747617))

(declare-fun d!1747619 () Bool)

(assert (=> d!1747619 (= (flatMap!1119 lt!2246229 lambda!295662) (dynLambda!24493 lambda!295662 lt!2246232))))

(declare-fun lt!2246347 () Unit!155472)

(assert (=> d!1747619 (= lt!2246347 (choose!41929 lt!2246229 lt!2246232 lambda!295662))))

(assert (=> d!1747619 (= lt!2246229 (set.insert lt!2246232 (as set.empty (Set Context!9780))))))

(assert (=> d!1747619 (= (lemmaFlatMapOnSingletonSet!651 lt!2246229 lt!2246232 lambda!295662) lt!2246347)))

(declare-fun b_lambda!209141 () Bool)

(assert (=> (not b_lambda!209141) (not d!1747619)))

(declare-fun bs!1271325 () Bool)

(assert (= bs!1271325 d!1747619))

(assert (=> bs!1271325 m!6520086))

(declare-fun m!6520396 () Bool)

(assert (=> bs!1271325 m!6520396))

(declare-fun m!6520398 () Bool)

(assert (=> bs!1271325 m!6520398))

(assert (=> bs!1271325 m!6520098))

(assert (=> b!5516113 d!1747619))

(declare-fun d!1747621 () Bool)

(assert (=> d!1747621 (= (flatMap!1119 lt!2246233 lambda!295662) (dynLambda!24493 lambda!295662 lt!2246210))))

(declare-fun lt!2246348 () Unit!155472)

(assert (=> d!1747621 (= lt!2246348 (choose!41929 lt!2246233 lt!2246210 lambda!295662))))

(assert (=> d!1747621 (= lt!2246233 (set.insert lt!2246210 (as set.empty (Set Context!9780))))))

(assert (=> d!1747621 (= (lemmaFlatMapOnSingletonSet!651 lt!2246233 lt!2246210 lambda!295662) lt!2246348)))

(declare-fun b_lambda!209143 () Bool)

(assert (=> (not b_lambda!209143) (not d!1747621)))

(declare-fun bs!1271326 () Bool)

(assert (= bs!1271326 d!1747621))

(assert (=> bs!1271326 m!6520080))

(declare-fun m!6520400 () Bool)

(assert (=> bs!1271326 m!6520400))

(declare-fun m!6520402 () Bool)

(assert (=> bs!1271326 m!6520402))

(assert (=> bs!1271326 m!6520100))

(assert (=> b!5516113 d!1747621))

(declare-fun bm!408209 () Bool)

(declare-fun call!408217 () List!62817)

(declare-fun call!408214 () List!62817)

(assert (=> bm!408209 (= call!408217 call!408214)))

(declare-fun b!5516433 () Bool)

(declare-fun e!3411141 () (Set Context!9780))

(declare-fun e!3411145 () (Set Context!9780))

(assert (=> b!5516433 (= e!3411141 e!3411145)))

(declare-fun c!964345 () Bool)

(assert (=> b!5516433 (= c!964345 (is-Union!15506 (regTwo!31524 r!7292)))))

(declare-fun b!5516434 () Bool)

(declare-fun e!3411144 () (Set Context!9780))

(declare-fun call!408215 () (Set Context!9780))

(declare-fun call!408216 () (Set Context!9780))

(assert (=> b!5516434 (= e!3411144 (set.union call!408215 call!408216))))

(declare-fun b!5516435 () Bool)

(declare-fun e!3411146 () (Set Context!9780))

(assert (=> b!5516435 (= e!3411146 (as set.empty (Set Context!9780)))))

(declare-fun b!5516436 () Bool)

(declare-fun e!3411143 () (Set Context!9780))

(declare-fun call!408219 () (Set Context!9780))

(assert (=> b!5516436 (= e!3411143 call!408219)))

(declare-fun b!5516437 () Bool)

(declare-fun call!408218 () (Set Context!9780))

(assert (=> b!5516437 (= e!3411145 (set.union call!408218 call!408215))))

(declare-fun b!5516438 () Bool)

(assert (=> b!5516438 (= e!3411144 e!3411143)))

(declare-fun c!964344 () Bool)

(assert (=> b!5516438 (= c!964344 (is-Concat!24351 (regTwo!31524 r!7292)))))

(declare-fun d!1747623 () Bool)

(declare-fun c!964342 () Bool)

(assert (=> d!1747623 (= c!964342 (and (is-ElementMatch!15506 (regTwo!31524 r!7292)) (= (c!964265 (regTwo!31524 r!7292)) (h!69143 s!2326))))))

(assert (=> d!1747623 (= (derivationStepZipperDown!848 (regTwo!31524 r!7292) lt!2246224 (h!69143 s!2326)) e!3411141)))

(declare-fun bm!408210 () Bool)

(assert (=> bm!408210 (= call!408219 call!408216)))

(declare-fun b!5516439 () Bool)

(assert (=> b!5516439 (= e!3411141 (set.insert lt!2246224 (as set.empty (Set Context!9780))))))

(declare-fun c!964343 () Bool)

(declare-fun bm!408211 () Bool)

(declare-fun $colon$colon!1585 (List!62817 Regex!15506) List!62817)

(assert (=> bm!408211 (= call!408214 ($colon$colon!1585 (exprs!5390 lt!2246224) (ite (or c!964343 c!964344) (regTwo!31524 (regTwo!31524 r!7292)) (regTwo!31524 r!7292))))))

(declare-fun b!5516440 () Bool)

(declare-fun c!964346 () Bool)

(assert (=> b!5516440 (= c!964346 (is-Star!15506 (regTwo!31524 r!7292)))))

(assert (=> b!5516440 (= e!3411143 e!3411146)))

(declare-fun bm!408212 () Bool)

(assert (=> bm!408212 (= call!408215 (derivationStepZipperDown!848 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292))) (ite c!964345 lt!2246224 (Context!9781 call!408214)) (h!69143 s!2326)))))

(declare-fun b!5516441 () Bool)

(assert (=> b!5516441 (= e!3411146 call!408219)))

(declare-fun bm!408213 () Bool)

(assert (=> bm!408213 (= call!408216 call!408218)))

(declare-fun b!5516442 () Bool)

(declare-fun e!3411142 () Bool)

(assert (=> b!5516442 (= e!3411142 (nullable!5540 (regOne!31524 (regTwo!31524 r!7292))))))

(declare-fun b!5516443 () Bool)

(assert (=> b!5516443 (= c!964343 e!3411142)))

(declare-fun res!2350393 () Bool)

(assert (=> b!5516443 (=> (not res!2350393) (not e!3411142))))

(assert (=> b!5516443 (= res!2350393 (is-Concat!24351 (regTwo!31524 r!7292)))))

(assert (=> b!5516443 (= e!3411145 e!3411144)))

(declare-fun bm!408214 () Bool)

(assert (=> bm!408214 (= call!408218 (derivationStepZipperDown!848 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292))))) (ite (or c!964345 c!964343) lt!2246224 (Context!9781 call!408217)) (h!69143 s!2326)))))

(assert (= (and d!1747623 c!964342) b!5516439))

(assert (= (and d!1747623 (not c!964342)) b!5516433))

(assert (= (and b!5516433 c!964345) b!5516437))

(assert (= (and b!5516433 (not c!964345)) b!5516443))

(assert (= (and b!5516443 res!2350393) b!5516442))

(assert (= (and b!5516443 c!964343) b!5516434))

(assert (= (and b!5516443 (not c!964343)) b!5516438))

(assert (= (and b!5516438 c!964344) b!5516436))

(assert (= (and b!5516438 (not c!964344)) b!5516440))

(assert (= (and b!5516440 c!964346) b!5516441))

(assert (= (and b!5516440 (not c!964346)) b!5516435))

(assert (= (or b!5516436 b!5516441) bm!408209))

(assert (= (or b!5516436 b!5516441) bm!408210))

(assert (= (or b!5516434 bm!408209) bm!408211))

(assert (= (or b!5516434 bm!408210) bm!408213))

(assert (= (or b!5516437 b!5516434) bm!408212))

(assert (= (or b!5516437 bm!408213) bm!408214))

(declare-fun m!6520404 () Bool)

(assert (=> bm!408212 m!6520404))

(declare-fun m!6520406 () Bool)

(assert (=> b!5516442 m!6520406))

(declare-fun m!6520408 () Bool)

(assert (=> b!5516439 m!6520408))

(declare-fun m!6520410 () Bool)

(assert (=> bm!408211 m!6520410))

(declare-fun m!6520412 () Bool)

(assert (=> bm!408214 m!6520412))

(assert (=> b!5516113 d!1747623))

(declare-fun bm!408215 () Bool)

(declare-fun call!408223 () List!62817)

(declare-fun call!408220 () List!62817)

(assert (=> bm!408215 (= call!408223 call!408220)))

(declare-fun b!5516444 () Bool)

(declare-fun e!3411147 () (Set Context!9780))

(declare-fun e!3411151 () (Set Context!9780))

(assert (=> b!5516444 (= e!3411147 e!3411151)))

(declare-fun c!964350 () Bool)

(assert (=> b!5516444 (= c!964350 (is-Union!15506 (regOne!31524 r!7292)))))

(declare-fun b!5516445 () Bool)

(declare-fun e!3411150 () (Set Context!9780))

(declare-fun call!408221 () (Set Context!9780))

(declare-fun call!408222 () (Set Context!9780))

(assert (=> b!5516445 (= e!3411150 (set.union call!408221 call!408222))))

(declare-fun b!5516446 () Bool)

(declare-fun e!3411152 () (Set Context!9780))

(assert (=> b!5516446 (= e!3411152 (as set.empty (Set Context!9780)))))

(declare-fun b!5516447 () Bool)

(declare-fun e!3411149 () (Set Context!9780))

(declare-fun call!408225 () (Set Context!9780))

(assert (=> b!5516447 (= e!3411149 call!408225)))

(declare-fun b!5516448 () Bool)

(declare-fun call!408224 () (Set Context!9780))

(assert (=> b!5516448 (= e!3411151 (set.union call!408224 call!408221))))

(declare-fun b!5516449 () Bool)

(assert (=> b!5516449 (= e!3411150 e!3411149)))

(declare-fun c!964349 () Bool)

(assert (=> b!5516449 (= c!964349 (is-Concat!24351 (regOne!31524 r!7292)))))

(declare-fun d!1747625 () Bool)

(declare-fun c!964347 () Bool)

(assert (=> d!1747625 (= c!964347 (and (is-ElementMatch!15506 (regOne!31524 r!7292)) (= (c!964265 (regOne!31524 r!7292)) (h!69143 s!2326))))))

(assert (=> d!1747625 (= (derivationStepZipperDown!848 (regOne!31524 r!7292) lt!2246232 (h!69143 s!2326)) e!3411147)))

(declare-fun bm!408216 () Bool)

(assert (=> bm!408216 (= call!408225 call!408222)))

(declare-fun b!5516450 () Bool)

(assert (=> b!5516450 (= e!3411147 (set.insert lt!2246232 (as set.empty (Set Context!9780))))))

(declare-fun c!964348 () Bool)

(declare-fun bm!408217 () Bool)

(assert (=> bm!408217 (= call!408220 ($colon$colon!1585 (exprs!5390 lt!2246232) (ite (or c!964348 c!964349) (regTwo!31524 (regOne!31524 r!7292)) (regOne!31524 r!7292))))))

(declare-fun b!5516451 () Bool)

(declare-fun c!964351 () Bool)

(assert (=> b!5516451 (= c!964351 (is-Star!15506 (regOne!31524 r!7292)))))

(assert (=> b!5516451 (= e!3411149 e!3411152)))

(declare-fun bm!408218 () Bool)

(assert (=> bm!408218 (= call!408221 (derivationStepZipperDown!848 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292))) (ite c!964350 lt!2246232 (Context!9781 call!408220)) (h!69143 s!2326)))))

(declare-fun b!5516452 () Bool)

(assert (=> b!5516452 (= e!3411152 call!408225)))

(declare-fun bm!408219 () Bool)

(assert (=> bm!408219 (= call!408222 call!408224)))

(declare-fun b!5516453 () Bool)

(declare-fun e!3411148 () Bool)

(assert (=> b!5516453 (= e!3411148 (nullable!5540 (regOne!31524 (regOne!31524 r!7292))))))

(declare-fun b!5516454 () Bool)

(assert (=> b!5516454 (= c!964348 e!3411148)))

(declare-fun res!2350394 () Bool)

(assert (=> b!5516454 (=> (not res!2350394) (not e!3411148))))

(assert (=> b!5516454 (= res!2350394 (is-Concat!24351 (regOne!31524 r!7292)))))

(assert (=> b!5516454 (= e!3411151 e!3411150)))

(declare-fun bm!408220 () Bool)

(assert (=> bm!408220 (= call!408224 (derivationStepZipperDown!848 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292))))) (ite (or c!964350 c!964348) lt!2246232 (Context!9781 call!408223)) (h!69143 s!2326)))))

(assert (= (and d!1747625 c!964347) b!5516450))

(assert (= (and d!1747625 (not c!964347)) b!5516444))

(assert (= (and b!5516444 c!964350) b!5516448))

(assert (= (and b!5516444 (not c!964350)) b!5516454))

(assert (= (and b!5516454 res!2350394) b!5516453))

(assert (= (and b!5516454 c!964348) b!5516445))

(assert (= (and b!5516454 (not c!964348)) b!5516449))

(assert (= (and b!5516449 c!964349) b!5516447))

(assert (= (and b!5516449 (not c!964349)) b!5516451))

(assert (= (and b!5516451 c!964351) b!5516452))

(assert (= (and b!5516451 (not c!964351)) b!5516446))

(assert (= (or b!5516447 b!5516452) bm!408215))

(assert (= (or b!5516447 b!5516452) bm!408216))

(assert (= (or b!5516445 bm!408215) bm!408217))

(assert (= (or b!5516445 bm!408216) bm!408219))

(assert (= (or b!5516448 b!5516445) bm!408218))

(assert (= (or b!5516448 bm!408219) bm!408220))

(declare-fun m!6520414 () Bool)

(assert (=> bm!408218 m!6520414))

(declare-fun m!6520416 () Bool)

(assert (=> b!5516453 m!6520416))

(assert (=> b!5516450 m!6520098))

(declare-fun m!6520418 () Bool)

(assert (=> bm!408217 m!6520418))

(declare-fun m!6520420 () Bool)

(assert (=> bm!408220 m!6520420))

(assert (=> b!5516113 d!1747625))

(declare-fun d!1747627 () Bool)

(assert (=> d!1747627 (= (flatMap!1119 lt!2246229 lambda!295662) (choose!41928 lt!2246229 lambda!295662))))

(declare-fun bs!1271327 () Bool)

(assert (= bs!1271327 d!1747627))

(declare-fun m!6520422 () Bool)

(assert (=> bs!1271327 m!6520422))

(assert (=> b!5516113 d!1747627))

(declare-fun bs!1271328 () Bool)

(declare-fun d!1747629 () Bool)

(assert (= bs!1271328 (and d!1747629 d!1747575)))

(declare-fun lambda!295701 () Int)

(assert (=> bs!1271328 (= lambda!295701 lambda!295680)))

(declare-fun bs!1271329 () Bool)

(assert (= bs!1271329 (and d!1747629 d!1747607)))

(assert (=> bs!1271329 (= lambda!295701 lambda!295695)))

(declare-fun bs!1271330 () Bool)

(assert (= bs!1271330 (and d!1747629 d!1747609)))

(assert (=> bs!1271330 (= lambda!295701 lambda!295698)))

(assert (=> d!1747629 (= (inv!82013 setElem!36666) (forall!14680 (exprs!5390 setElem!36666) lambda!295701))))

(declare-fun bs!1271331 () Bool)

(assert (= bs!1271331 d!1747629))

(declare-fun m!6520424 () Bool)

(assert (=> bs!1271331 m!6520424))

(assert (=> setNonEmpty!36666 d!1747629))

(declare-fun bs!1271332 () Bool)

(declare-fun b!5516493 () Bool)

(assert (= bs!1271332 (and b!5516493 b!5516114)))

(declare-fun lambda!295706 () Int)

(assert (=> bs!1271332 (not (= lambda!295706 lambda!295660))))

(declare-fun bs!1271333 () Bool)

(assert (= bs!1271333 (and b!5516493 d!1747593)))

(assert (=> bs!1271333 (not (= lambda!295706 lambda!295686))))

(declare-fun bs!1271334 () Bool)

(assert (= bs!1271334 (and b!5516493 d!1747597)))

(assert (=> bs!1271334 (not (= lambda!295706 lambda!295691))))

(assert (=> bs!1271334 (not (= lambda!295706 lambda!295692))))

(assert (=> bs!1271332 (not (= lambda!295706 lambda!295661))))

(assert (=> b!5516493 true))

(assert (=> b!5516493 true))

(declare-fun bs!1271335 () Bool)

(declare-fun b!5516494 () Bool)

(assert (= bs!1271335 (and b!5516494 b!5516114)))

(declare-fun lambda!295707 () Int)

(assert (=> bs!1271335 (not (= lambda!295707 lambda!295660))))

(declare-fun bs!1271336 () Bool)

(assert (= bs!1271336 (and b!5516494 b!5516493)))

(assert (=> bs!1271336 (not (= lambda!295707 lambda!295706))))

(declare-fun bs!1271337 () Bool)

(assert (= bs!1271337 (and b!5516494 d!1747593)))

(assert (=> bs!1271337 (not (= lambda!295707 lambda!295686))))

(declare-fun bs!1271338 () Bool)

(assert (= bs!1271338 (and b!5516494 d!1747597)))

(assert (=> bs!1271338 (not (= lambda!295707 lambda!295691))))

(assert (=> bs!1271338 (= lambda!295707 lambda!295692)))

(assert (=> bs!1271335 (= lambda!295707 lambda!295661)))

(assert (=> b!5516494 true))

(assert (=> b!5516494 true))

(declare-fun b!5516487 () Bool)

(declare-fun e!3411172 () Bool)

(declare-fun call!408230 () Bool)

(assert (=> b!5516487 (= e!3411172 call!408230)))

(declare-fun b!5516489 () Bool)

(declare-fun e!3411171 () Bool)

(assert (=> b!5516489 (= e!3411172 e!3411171)))

(declare-fun res!2350413 () Bool)

(assert (=> b!5516489 (= res!2350413 (not (is-EmptyLang!15506 r!7292)))))

(assert (=> b!5516489 (=> (not res!2350413) (not e!3411171))))

(declare-fun b!5516490 () Bool)

(declare-fun e!3411174 () Bool)

(declare-fun e!3411173 () Bool)

(assert (=> b!5516490 (= e!3411174 e!3411173)))

(declare-fun c!964360 () Bool)

(assert (=> b!5516490 (= c!964360 (is-Star!15506 r!7292))))

(declare-fun bm!408225 () Bool)

(assert (=> bm!408225 (= call!408230 (isEmpty!34479 s!2326))))

(declare-fun b!5516491 () Bool)

(declare-fun e!3411176 () Bool)

(assert (=> b!5516491 (= e!3411174 e!3411176)))

(declare-fun res!2350411 () Bool)

(assert (=> b!5516491 (= res!2350411 (matchRSpec!2609 (regOne!31525 r!7292) s!2326))))

(assert (=> b!5516491 (=> res!2350411 e!3411176)))

(declare-fun b!5516492 () Bool)

(declare-fun e!3411177 () Bool)

(assert (=> b!5516492 (= e!3411177 (= s!2326 (Cons!62695 (c!964265 r!7292) Nil!62695)))))

(declare-fun call!408231 () Bool)

(declare-fun bm!408226 () Bool)

(assert (=> bm!408226 (= call!408231 (Exists!2606 (ite c!964360 lambda!295706 lambda!295707)))))

(declare-fun e!3411175 () Bool)

(assert (=> b!5516493 (= e!3411175 call!408231)))

(assert (=> b!5516494 (= e!3411173 call!408231)))

(declare-fun b!5516495 () Bool)

(declare-fun c!964363 () Bool)

(assert (=> b!5516495 (= c!964363 (is-ElementMatch!15506 r!7292))))

(assert (=> b!5516495 (= e!3411171 e!3411177)))

(declare-fun d!1747631 () Bool)

(declare-fun c!964361 () Bool)

(assert (=> d!1747631 (= c!964361 (is-EmptyExpr!15506 r!7292))))

(assert (=> d!1747631 (= (matchRSpec!2609 r!7292 s!2326) e!3411172)))

(declare-fun b!5516488 () Bool)

(declare-fun c!964362 () Bool)

(assert (=> b!5516488 (= c!964362 (is-Union!15506 r!7292))))

(assert (=> b!5516488 (= e!3411177 e!3411174)))

(declare-fun b!5516496 () Bool)

(assert (=> b!5516496 (= e!3411176 (matchRSpec!2609 (regTwo!31525 r!7292) s!2326))))

(declare-fun b!5516497 () Bool)

(declare-fun res!2350412 () Bool)

(assert (=> b!5516497 (=> res!2350412 e!3411175)))

(assert (=> b!5516497 (= res!2350412 call!408230)))

(assert (=> b!5516497 (= e!3411173 e!3411175)))

(assert (= (and d!1747631 c!964361) b!5516487))

(assert (= (and d!1747631 (not c!964361)) b!5516489))

(assert (= (and b!5516489 res!2350413) b!5516495))

(assert (= (and b!5516495 c!964363) b!5516492))

(assert (= (and b!5516495 (not c!964363)) b!5516488))

(assert (= (and b!5516488 c!964362) b!5516491))

(assert (= (and b!5516488 (not c!964362)) b!5516490))

(assert (= (and b!5516491 (not res!2350411)) b!5516496))

(assert (= (and b!5516490 c!964360) b!5516497))

(assert (= (and b!5516490 (not c!964360)) b!5516494))

(assert (= (and b!5516497 (not res!2350412)) b!5516493))

(assert (= (or b!5516493 b!5516494) bm!408226))

(assert (= (or b!5516487 b!5516497) bm!408225))

(assert (=> bm!408225 m!6520282))

(declare-fun m!6520426 () Bool)

(assert (=> b!5516491 m!6520426))

(declare-fun m!6520428 () Bool)

(assert (=> bm!408226 m!6520428))

(declare-fun m!6520430 () Bool)

(assert (=> b!5516496 m!6520430))

(assert (=> b!5516122 d!1747631))

(declare-fun b!5516526 () Bool)

(declare-fun e!3411194 () Bool)

(declare-fun lt!2246351 () Bool)

(assert (=> b!5516526 (= e!3411194 (not lt!2246351))))

(declare-fun d!1747633 () Bool)

(declare-fun e!3411196 () Bool)

(assert (=> d!1747633 e!3411196))

(declare-fun c!964371 () Bool)

(assert (=> d!1747633 (= c!964371 (is-EmptyExpr!15506 r!7292))))

(declare-fun e!3411198 () Bool)

(assert (=> d!1747633 (= lt!2246351 e!3411198)))

(declare-fun c!964372 () Bool)

(assert (=> d!1747633 (= c!964372 (isEmpty!34479 s!2326))))

(assert (=> d!1747633 (validRegex!7242 r!7292)))

(assert (=> d!1747633 (= (matchR!7691 r!7292 s!2326) lt!2246351)))

(declare-fun b!5516527 () Bool)

(declare-fun e!3411192 () Bool)

(assert (=> b!5516527 (= e!3411192 (= (head!11815 s!2326) (c!964265 r!7292)))))

(declare-fun b!5516528 () Bool)

(declare-fun e!3411193 () Bool)

(declare-fun e!3411197 () Bool)

(assert (=> b!5516528 (= e!3411193 e!3411197)))

(declare-fun res!2350430 () Bool)

(assert (=> b!5516528 (=> res!2350430 e!3411197)))

(declare-fun call!408234 () Bool)

(assert (=> b!5516528 (= res!2350430 call!408234)))

(declare-fun b!5516529 () Bool)

(declare-fun e!3411195 () Bool)

(assert (=> b!5516529 (= e!3411195 e!3411193)))

(declare-fun res!2350431 () Bool)

(assert (=> b!5516529 (=> (not res!2350431) (not e!3411193))))

(assert (=> b!5516529 (= res!2350431 (not lt!2246351))))

(declare-fun b!5516530 () Bool)

(assert (=> b!5516530 (= e!3411197 (not (= (head!11815 s!2326) (c!964265 r!7292))))))

(declare-fun b!5516531 () Bool)

(assert (=> b!5516531 (= e!3411196 (= lt!2246351 call!408234))))

(declare-fun b!5516532 () Bool)

(declare-fun res!2350436 () Bool)

(assert (=> b!5516532 (=> res!2350436 e!3411197)))

(assert (=> b!5516532 (= res!2350436 (not (isEmpty!34479 (tail!10910 s!2326))))))

(declare-fun b!5516533 () Bool)

(assert (=> b!5516533 (= e!3411196 e!3411194)))

(declare-fun c!964370 () Bool)

(assert (=> b!5516533 (= c!964370 (is-EmptyLang!15506 r!7292))))

(declare-fun b!5516534 () Bool)

(declare-fun res!2350435 () Bool)

(assert (=> b!5516534 (=> res!2350435 e!3411195)))

(assert (=> b!5516534 (= res!2350435 (not (is-ElementMatch!15506 r!7292)))))

(assert (=> b!5516534 (= e!3411194 e!3411195)))

(declare-fun b!5516535 () Bool)

(assert (=> b!5516535 (= e!3411198 (nullable!5540 r!7292))))

(declare-fun b!5516536 () Bool)

(declare-fun res!2350432 () Bool)

(assert (=> b!5516536 (=> (not res!2350432) (not e!3411192))))

(assert (=> b!5516536 (= res!2350432 (isEmpty!34479 (tail!10910 s!2326)))))

(declare-fun bm!408229 () Bool)

(assert (=> bm!408229 (= call!408234 (isEmpty!34479 s!2326))))

(declare-fun b!5516537 () Bool)

(declare-fun res!2350433 () Bool)

(assert (=> b!5516537 (=> res!2350433 e!3411195)))

(assert (=> b!5516537 (= res!2350433 e!3411192)))

(declare-fun res!2350434 () Bool)

(assert (=> b!5516537 (=> (not res!2350434) (not e!3411192))))

(assert (=> b!5516537 (= res!2350434 lt!2246351)))

(declare-fun b!5516538 () Bool)

(declare-fun res!2350437 () Bool)

(assert (=> b!5516538 (=> (not res!2350437) (not e!3411192))))

(assert (=> b!5516538 (= res!2350437 (not call!408234))))

(declare-fun b!5516539 () Bool)

(declare-fun derivativeStep!4371 (Regex!15506 C!31282) Regex!15506)

(assert (=> b!5516539 (= e!3411198 (matchR!7691 (derivativeStep!4371 r!7292 (head!11815 s!2326)) (tail!10910 s!2326)))))

(assert (= (and d!1747633 c!964372) b!5516535))

(assert (= (and d!1747633 (not c!964372)) b!5516539))

(assert (= (and d!1747633 c!964371) b!5516531))

(assert (= (and d!1747633 (not c!964371)) b!5516533))

(assert (= (and b!5516533 c!964370) b!5516526))

(assert (= (and b!5516533 (not c!964370)) b!5516534))

(assert (= (and b!5516534 (not res!2350435)) b!5516537))

(assert (= (and b!5516537 res!2350434) b!5516538))

(assert (= (and b!5516538 res!2350437) b!5516536))

(assert (= (and b!5516536 res!2350432) b!5516527))

(assert (= (and b!5516537 (not res!2350433)) b!5516529))

(assert (= (and b!5516529 res!2350431) b!5516528))

(assert (= (and b!5516528 (not res!2350430)) b!5516532))

(assert (= (and b!5516532 (not res!2350436)) b!5516530))

(assert (= (or b!5516531 b!5516528 b!5516538) bm!408229))

(assert (=> b!5516532 m!6520290))

(assert (=> b!5516532 m!6520290))

(declare-fun m!6520432 () Bool)

(assert (=> b!5516532 m!6520432))

(assert (=> b!5516536 m!6520290))

(assert (=> b!5516536 m!6520290))

(assert (=> b!5516536 m!6520432))

(assert (=> bm!408229 m!6520282))

(assert (=> b!5516539 m!6520286))

(assert (=> b!5516539 m!6520286))

(declare-fun m!6520434 () Bool)

(assert (=> b!5516539 m!6520434))

(assert (=> b!5516539 m!6520290))

(assert (=> b!5516539 m!6520434))

(assert (=> b!5516539 m!6520290))

(declare-fun m!6520436 () Bool)

(assert (=> b!5516539 m!6520436))

(assert (=> b!5516527 m!6520286))

(declare-fun m!6520438 () Bool)

(assert (=> b!5516535 m!6520438))

(assert (=> b!5516530 m!6520286))

(assert (=> d!1747633 m!6520282))

(assert (=> d!1747633 m!6520102))

(assert (=> b!5516122 d!1747633))

(declare-fun d!1747635 () Bool)

(assert (=> d!1747635 (= (matchR!7691 r!7292 s!2326) (matchRSpec!2609 r!7292 s!2326))))

(declare-fun lt!2246354 () Unit!155472)

(declare-fun choose!41930 (Regex!15506 List!62819) Unit!155472)

(assert (=> d!1747635 (= lt!2246354 (choose!41930 r!7292 s!2326))))

(assert (=> d!1747635 (validRegex!7242 r!7292)))

(assert (=> d!1747635 (= (mainMatchTheorem!2609 r!7292 s!2326) lt!2246354)))

(declare-fun bs!1271339 () Bool)

(assert (= bs!1271339 d!1747635))

(assert (=> bs!1271339 m!6520054))

(assert (=> bs!1271339 m!6520052))

(declare-fun m!6520440 () Bool)

(assert (=> bs!1271339 m!6520440))

(assert (=> bs!1271339 m!6520102))

(assert (=> b!5516122 d!1747635))

(declare-fun bs!1271340 () Bool)

(declare-fun d!1747637 () Bool)

(assert (= bs!1271340 (and d!1747637 d!1747575)))

(declare-fun lambda!295708 () Int)

(assert (=> bs!1271340 (= lambda!295708 lambda!295680)))

(declare-fun bs!1271341 () Bool)

(assert (= bs!1271341 (and d!1747637 d!1747607)))

(assert (=> bs!1271341 (= lambda!295708 lambda!295695)))

(declare-fun bs!1271342 () Bool)

(assert (= bs!1271342 (and d!1747637 d!1747609)))

(assert (=> bs!1271342 (= lambda!295708 lambda!295698)))

(declare-fun bs!1271343 () Bool)

(assert (= bs!1271343 (and d!1747637 d!1747629)))

(assert (=> bs!1271343 (= lambda!295708 lambda!295701)))

(assert (=> d!1747637 (= (inv!82013 (h!69142 zl!343)) (forall!14680 (exprs!5390 (h!69142 zl!343)) lambda!295708))))

(declare-fun bs!1271344 () Bool)

(assert (= bs!1271344 d!1747637))

(declare-fun m!6520442 () Bool)

(assert (=> bs!1271344 m!6520442))

(assert (=> b!5516123 d!1747637))

(declare-fun bm!408230 () Bool)

(declare-fun call!408238 () List!62817)

(declare-fun call!408235 () List!62817)

(assert (=> bm!408230 (= call!408238 call!408235)))

(declare-fun b!5516540 () Bool)

(declare-fun e!3411199 () (Set Context!9780))

(declare-fun e!3411203 () (Set Context!9780))

(assert (=> b!5516540 (= e!3411199 e!3411203)))

(declare-fun c!964376 () Bool)

(assert (=> b!5516540 (= c!964376 (is-Union!15506 r!7292))))

(declare-fun b!5516541 () Bool)

(declare-fun e!3411202 () (Set Context!9780))

(declare-fun call!408236 () (Set Context!9780))

(declare-fun call!408237 () (Set Context!9780))

(assert (=> b!5516541 (= e!3411202 (set.union call!408236 call!408237))))

(declare-fun b!5516542 () Bool)

(declare-fun e!3411204 () (Set Context!9780))

(assert (=> b!5516542 (= e!3411204 (as set.empty (Set Context!9780)))))

(declare-fun b!5516543 () Bool)

(declare-fun e!3411201 () (Set Context!9780))

(declare-fun call!408240 () (Set Context!9780))

(assert (=> b!5516543 (= e!3411201 call!408240)))

(declare-fun b!5516544 () Bool)

(declare-fun call!408239 () (Set Context!9780))

(assert (=> b!5516544 (= e!3411203 (set.union call!408239 call!408236))))

(declare-fun b!5516545 () Bool)

(assert (=> b!5516545 (= e!3411202 e!3411201)))

(declare-fun c!964375 () Bool)

(assert (=> b!5516545 (= c!964375 (is-Concat!24351 r!7292))))

(declare-fun d!1747639 () Bool)

(declare-fun c!964373 () Bool)

(assert (=> d!1747639 (= c!964373 (and (is-ElementMatch!15506 r!7292) (= (c!964265 r!7292) (h!69143 s!2326))))))

(assert (=> d!1747639 (= (derivationStepZipperDown!848 r!7292 lt!2246224 (h!69143 s!2326)) e!3411199)))

(declare-fun bm!408231 () Bool)

(assert (=> bm!408231 (= call!408240 call!408237)))

(declare-fun b!5516546 () Bool)

(assert (=> b!5516546 (= e!3411199 (set.insert lt!2246224 (as set.empty (Set Context!9780))))))

(declare-fun c!964374 () Bool)

(declare-fun bm!408232 () Bool)

(assert (=> bm!408232 (= call!408235 ($colon$colon!1585 (exprs!5390 lt!2246224) (ite (or c!964374 c!964375) (regTwo!31524 r!7292) r!7292)))))

(declare-fun b!5516547 () Bool)

(declare-fun c!964377 () Bool)

(assert (=> b!5516547 (= c!964377 (is-Star!15506 r!7292))))

(assert (=> b!5516547 (= e!3411201 e!3411204)))

(declare-fun bm!408233 () Bool)

(assert (=> bm!408233 (= call!408236 (derivationStepZipperDown!848 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292)) (ite c!964376 lt!2246224 (Context!9781 call!408235)) (h!69143 s!2326)))))

(declare-fun b!5516548 () Bool)

(assert (=> b!5516548 (= e!3411204 call!408240)))

(declare-fun bm!408234 () Bool)

(assert (=> bm!408234 (= call!408237 call!408239)))

(declare-fun b!5516549 () Bool)

(declare-fun e!3411200 () Bool)

(assert (=> b!5516549 (= e!3411200 (nullable!5540 (regOne!31524 r!7292)))))

(declare-fun b!5516550 () Bool)

(assert (=> b!5516550 (= c!964374 e!3411200)))

(declare-fun res!2350438 () Bool)

(assert (=> b!5516550 (=> (not res!2350438) (not e!3411200))))

(assert (=> b!5516550 (= res!2350438 (is-Concat!24351 r!7292))))

(assert (=> b!5516550 (= e!3411203 e!3411202)))

(declare-fun bm!408235 () Bool)

(assert (=> bm!408235 (= call!408239 (derivationStepZipperDown!848 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292)))) (ite (or c!964376 c!964374) lt!2246224 (Context!9781 call!408238)) (h!69143 s!2326)))))

(assert (= (and d!1747639 c!964373) b!5516546))

(assert (= (and d!1747639 (not c!964373)) b!5516540))

(assert (= (and b!5516540 c!964376) b!5516544))

(assert (= (and b!5516540 (not c!964376)) b!5516550))

(assert (= (and b!5516550 res!2350438) b!5516549))

(assert (= (and b!5516550 c!964374) b!5516541))

(assert (= (and b!5516550 (not c!964374)) b!5516545))

(assert (= (and b!5516545 c!964375) b!5516543))

(assert (= (and b!5516545 (not c!964375)) b!5516547))

(assert (= (and b!5516547 c!964377) b!5516548))

(assert (= (and b!5516547 (not c!964377)) b!5516542))

(assert (= (or b!5516543 b!5516548) bm!408230))

(assert (= (or b!5516543 b!5516548) bm!408231))

(assert (= (or b!5516541 bm!408230) bm!408232))

(assert (= (or b!5516541 bm!408231) bm!408234))

(assert (= (or b!5516544 b!5516541) bm!408233))

(assert (= (or b!5516544 bm!408234) bm!408235))

(declare-fun m!6520444 () Bool)

(assert (=> bm!408233 m!6520444))

(assert (=> b!5516549 m!6520094))

(assert (=> b!5516546 m!6520408))

(declare-fun m!6520446 () Bool)

(assert (=> bm!408232 m!6520446))

(declare-fun m!6520448 () Bool)

(assert (=> bm!408235 m!6520448))

(assert (=> b!5516112 d!1747639))

(declare-fun b!5516551 () Bool)

(declare-fun e!3411205 () (Set Context!9780))

(declare-fun e!3411207 () (Set Context!9780))

(assert (=> b!5516551 (= e!3411205 e!3411207)))

(declare-fun c!964379 () Bool)

(assert (=> b!5516551 (= c!964379 (is-Cons!62693 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))

(declare-fun b!5516552 () Bool)

(declare-fun e!3411206 () Bool)

(assert (=> b!5516552 (= e!3411206 (nullable!5540 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))

(declare-fun call!408241 () (Set Context!9780))

(declare-fun b!5516553 () Bool)

(assert (=> b!5516553 (= e!3411205 (set.union call!408241 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (h!69143 s!2326))))))

(declare-fun b!5516554 () Bool)

(assert (=> b!5516554 (= e!3411207 call!408241)))

(declare-fun d!1747641 () Bool)

(declare-fun c!964378 () Bool)

(assert (=> d!1747641 (= c!964378 e!3411206)))

(declare-fun res!2350439 () Bool)

(assert (=> d!1747641 (=> (not res!2350439) (not e!3411206))))

(assert (=> d!1747641 (= res!2350439 (is-Cons!62693 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))

(assert (=> d!1747641 (= (derivationStepZipperUp!774 (Context!9781 (Cons!62693 r!7292 Nil!62693)) (h!69143 s!2326)) e!3411205)))

(declare-fun b!5516555 () Bool)

(assert (=> b!5516555 (= e!3411207 (as set.empty (Set Context!9780)))))

(declare-fun bm!408236 () Bool)

(assert (=> bm!408236 (= call!408241 (derivationStepZipperDown!848 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))) (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (h!69143 s!2326)))))

(assert (= (and d!1747641 res!2350439) b!5516552))

(assert (= (and d!1747641 c!964378) b!5516553))

(assert (= (and d!1747641 (not c!964378)) b!5516551))

(assert (= (and b!5516551 c!964379) b!5516554))

(assert (= (and b!5516551 (not c!964379)) b!5516555))

(assert (= (or b!5516553 b!5516554) bm!408236))

(declare-fun m!6520450 () Bool)

(assert (=> b!5516552 m!6520450))

(declare-fun m!6520452 () Bool)

(assert (=> b!5516553 m!6520452))

(declare-fun m!6520454 () Bool)

(assert (=> bm!408236 m!6520454))

(assert (=> b!5516112 d!1747641))

(declare-fun bs!1271345 () Bool)

(declare-fun d!1747643 () Bool)

(assert (= bs!1271345 (and d!1747643 b!5516115)))

(declare-fun lambda!295709 () Int)

(assert (=> bs!1271345 (= lambda!295709 lambda!295662)))

(declare-fun bs!1271346 () Bool)

(assert (= bs!1271346 (and d!1747643 d!1747587)))

(assert (=> bs!1271346 (= lambda!295709 lambda!295683)))

(assert (=> d!1747643 true))

(assert (=> d!1747643 (= (derivationStepZipper!1611 z!1189 (h!69143 s!2326)) (flatMap!1119 z!1189 lambda!295709))))

(declare-fun bs!1271347 () Bool)

(assert (= bs!1271347 d!1747643))

(declare-fun m!6520456 () Bool)

(assert (=> bs!1271347 m!6520456))

(assert (=> b!5516112 d!1747643))

(declare-fun d!1747645 () Bool)

(declare-fun c!964380 () Bool)

(assert (=> d!1747645 (= c!964380 (isEmpty!34479 (t!376068 s!2326)))))

(declare-fun e!3411208 () Bool)

(assert (=> d!1747645 (= (matchZipper!1664 lt!2246215 (t!376068 s!2326)) e!3411208)))

(declare-fun b!5516556 () Bool)

(assert (=> b!5516556 (= e!3411208 (nullableZipper!1532 lt!2246215))))

(declare-fun b!5516557 () Bool)

(assert (=> b!5516557 (= e!3411208 (matchZipper!1664 (derivationStepZipper!1611 lt!2246215 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))))))

(assert (= (and d!1747645 c!964380) b!5516556))

(assert (= (and d!1747645 (not c!964380)) b!5516557))

(assert (=> d!1747645 m!6520234))

(declare-fun m!6520458 () Bool)

(assert (=> b!5516556 m!6520458))

(assert (=> b!5516557 m!6520238))

(assert (=> b!5516557 m!6520238))

(declare-fun m!6520460 () Bool)

(assert (=> b!5516557 m!6520460))

(assert (=> b!5516557 m!6520242))

(assert (=> b!5516557 m!6520460))

(assert (=> b!5516557 m!6520242))

(declare-fun m!6520462 () Bool)

(assert (=> b!5516557 m!6520462))

(assert (=> b!5516121 d!1747645))

(declare-fun d!1747647 () Bool)

(declare-fun e!3411211 () Bool)

(assert (=> d!1747647 e!3411211))

(declare-fun res!2350442 () Bool)

(assert (=> d!1747647 (=> (not res!2350442) (not e!3411211))))

(declare-fun lt!2246357 () List!62818)

(declare-fun noDuplicate!1499 (List!62818) Bool)

(assert (=> d!1747647 (= res!2350442 (noDuplicate!1499 lt!2246357))))

(declare-fun choose!41931 ((Set Context!9780)) List!62818)

(assert (=> d!1747647 (= lt!2246357 (choose!41931 z!1189))))

(assert (=> d!1747647 (= (toList!9290 z!1189) lt!2246357)))

(declare-fun b!5516560 () Bool)

(declare-fun content!11268 (List!62818) (Set Context!9780))

(assert (=> b!5516560 (= e!3411211 (= (content!11268 lt!2246357) z!1189))))

(assert (= (and d!1747647 res!2350442) b!5516560))

(declare-fun m!6520464 () Bool)

(assert (=> d!1747647 m!6520464))

(declare-fun m!6520466 () Bool)

(assert (=> d!1747647 m!6520466))

(declare-fun m!6520468 () Bool)

(assert (=> b!5516560 m!6520468))

(assert (=> b!5516110 d!1747647))

(declare-fun d!1747649 () Bool)

(declare-fun c!964381 () Bool)

(assert (=> d!1747649 (= c!964381 (isEmpty!34479 s!2326))))

(declare-fun e!3411212 () Bool)

(assert (=> d!1747649 (= (matchZipper!1664 lt!2246233 s!2326) e!3411212)))

(declare-fun b!5516561 () Bool)

(assert (=> b!5516561 (= e!3411212 (nullableZipper!1532 lt!2246233))))

(declare-fun b!5516562 () Bool)

(assert (=> b!5516562 (= e!3411212 (matchZipper!1664 (derivationStepZipper!1611 lt!2246233 (head!11815 s!2326)) (tail!10910 s!2326)))))

(assert (= (and d!1747649 c!964381) b!5516561))

(assert (= (and d!1747649 (not c!964381)) b!5516562))

(assert (=> d!1747649 m!6520282))

(declare-fun m!6520470 () Bool)

(assert (=> b!5516561 m!6520470))

(assert (=> b!5516562 m!6520286))

(assert (=> b!5516562 m!6520286))

(declare-fun m!6520472 () Bool)

(assert (=> b!5516562 m!6520472))

(assert (=> b!5516562 m!6520290))

(assert (=> b!5516562 m!6520472))

(assert (=> b!5516562 m!6520290))

(declare-fun m!6520474 () Bool)

(assert (=> b!5516562 m!6520474))

(assert (=> b!5516111 d!1747649))

(declare-fun d!1747651 () Bool)

(declare-fun c!964382 () Bool)

(assert (=> d!1747651 (= c!964382 (isEmpty!34479 (t!376068 s!2326)))))

(declare-fun e!3411213 () Bool)

(assert (=> d!1747651 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (t!376068 s!2326)) e!3411213)))

(declare-fun b!5516563 () Bool)

(assert (=> b!5516563 (= e!3411213 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326))))))

(declare-fun b!5516564 () Bool)

(assert (=> b!5516564 (= e!3411213 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))))))

(assert (= (and d!1747651 c!964382) b!5516563))

(assert (= (and d!1747651 (not c!964382)) b!5516564))

(assert (=> d!1747651 m!6520234))

(assert (=> b!5516563 m!6520106))

(declare-fun m!6520476 () Bool)

(assert (=> b!5516563 m!6520476))

(assert (=> b!5516564 m!6520238))

(assert (=> b!5516564 m!6520106))

(assert (=> b!5516564 m!6520238))

(declare-fun m!6520478 () Bool)

(assert (=> b!5516564 m!6520478))

(assert (=> b!5516564 m!6520242))

(assert (=> b!5516564 m!6520478))

(assert (=> b!5516564 m!6520242))

(declare-fun m!6520480 () Bool)

(assert (=> b!5516564 m!6520480))

(assert (=> b!5516111 d!1747651))

(declare-fun bs!1271348 () Bool)

(declare-fun d!1747653 () Bool)

(assert (= bs!1271348 (and d!1747653 b!5516115)))

(declare-fun lambda!295710 () Int)

(assert (=> bs!1271348 (= lambda!295710 lambda!295662)))

(declare-fun bs!1271349 () Bool)

(assert (= bs!1271349 (and d!1747653 d!1747587)))

(assert (=> bs!1271349 (= lambda!295710 lambda!295683)))

(declare-fun bs!1271350 () Bool)

(assert (= bs!1271350 (and d!1747653 d!1747643)))

(assert (=> bs!1271350 (= lambda!295710 lambda!295709)))

(assert (=> d!1747653 true))

(assert (=> d!1747653 (= (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (flatMap!1119 lt!2246233 lambda!295710))))

(declare-fun bs!1271351 () Bool)

(assert (= bs!1271351 d!1747653))

(declare-fun m!6520482 () Bool)

(assert (=> bs!1271351 m!6520482))

(assert (=> b!5516111 d!1747653))

(declare-fun b!5516569 () Bool)

(declare-fun e!3411216 () Bool)

(declare-fun tp!1517574 () Bool)

(assert (=> b!5516569 (= e!3411216 (and tp_is_empty!40265 tp!1517574))))

(assert (=> b!5516118 (= tp!1517541 e!3411216)))

(assert (= (and b!5516118 (is-Cons!62695 (t!376068 s!2326))) b!5516569))

(declare-fun b!5516583 () Bool)

(declare-fun e!3411219 () Bool)

(declare-fun tp!1517589 () Bool)

(declare-fun tp!1517585 () Bool)

(assert (=> b!5516583 (= e!3411219 (and tp!1517589 tp!1517585))))

(assert (=> b!5516104 (= tp!1517534 e!3411219)))

(declare-fun b!5516581 () Bool)

(declare-fun tp!1517588 () Bool)

(declare-fun tp!1517587 () Bool)

(assert (=> b!5516581 (= e!3411219 (and tp!1517588 tp!1517587))))

(declare-fun b!5516582 () Bool)

(declare-fun tp!1517586 () Bool)

(assert (=> b!5516582 (= e!3411219 tp!1517586)))

(declare-fun b!5516580 () Bool)

(assert (=> b!5516580 (= e!3411219 tp_is_empty!40265)))

(assert (= (and b!5516104 (is-ElementMatch!15506 (regOne!31524 r!7292))) b!5516580))

(assert (= (and b!5516104 (is-Concat!24351 (regOne!31524 r!7292))) b!5516581))

(assert (= (and b!5516104 (is-Star!15506 (regOne!31524 r!7292))) b!5516582))

(assert (= (and b!5516104 (is-Union!15506 (regOne!31524 r!7292))) b!5516583))

(declare-fun b!5516587 () Bool)

(declare-fun e!3411220 () Bool)

(declare-fun tp!1517594 () Bool)

(declare-fun tp!1517590 () Bool)

(assert (=> b!5516587 (= e!3411220 (and tp!1517594 tp!1517590))))

(assert (=> b!5516104 (= tp!1517539 e!3411220)))

(declare-fun b!5516585 () Bool)

(declare-fun tp!1517593 () Bool)

(declare-fun tp!1517592 () Bool)

(assert (=> b!5516585 (= e!3411220 (and tp!1517593 tp!1517592))))

(declare-fun b!5516586 () Bool)

(declare-fun tp!1517591 () Bool)

(assert (=> b!5516586 (= e!3411220 tp!1517591)))

(declare-fun b!5516584 () Bool)

(assert (=> b!5516584 (= e!3411220 tp_is_empty!40265)))

(assert (= (and b!5516104 (is-ElementMatch!15506 (regTwo!31524 r!7292))) b!5516584))

(assert (= (and b!5516104 (is-Concat!24351 (regTwo!31524 r!7292))) b!5516585))

(assert (= (and b!5516104 (is-Star!15506 (regTwo!31524 r!7292))) b!5516586))

(assert (= (and b!5516104 (is-Union!15506 (regTwo!31524 r!7292))) b!5516587))

(declare-fun b!5516592 () Bool)

(declare-fun e!3411223 () Bool)

(declare-fun tp!1517599 () Bool)

(declare-fun tp!1517600 () Bool)

(assert (=> b!5516592 (= e!3411223 (and tp!1517599 tp!1517600))))

(assert (=> b!5516108 (= tp!1517533 e!3411223)))

(assert (= (and b!5516108 (is-Cons!62693 (exprs!5390 setElem!36666))) b!5516592))

(declare-fun b!5516596 () Bool)

(declare-fun e!3411224 () Bool)

(declare-fun tp!1517605 () Bool)

(declare-fun tp!1517601 () Bool)

(assert (=> b!5516596 (= e!3411224 (and tp!1517605 tp!1517601))))

(assert (=> b!5516117 (= tp!1517535 e!3411224)))

(declare-fun b!5516594 () Bool)

(declare-fun tp!1517604 () Bool)

(declare-fun tp!1517603 () Bool)

(assert (=> b!5516594 (= e!3411224 (and tp!1517604 tp!1517603))))

(declare-fun b!5516595 () Bool)

(declare-fun tp!1517602 () Bool)

(assert (=> b!5516595 (= e!3411224 tp!1517602)))

(declare-fun b!5516593 () Bool)

(assert (=> b!5516593 (= e!3411224 tp_is_empty!40265)))

(assert (= (and b!5516117 (is-ElementMatch!15506 (reg!15835 r!7292))) b!5516593))

(assert (= (and b!5516117 (is-Concat!24351 (reg!15835 r!7292))) b!5516594))

(assert (= (and b!5516117 (is-Star!15506 (reg!15835 r!7292))) b!5516595))

(assert (= (and b!5516117 (is-Union!15506 (reg!15835 r!7292))) b!5516596))

(declare-fun condSetEmpty!36672 () Bool)

(assert (=> setNonEmpty!36666 (= condSetEmpty!36672 (= setRest!36666 (as set.empty (Set Context!9780))))))

(declare-fun setRes!36672 () Bool)

(assert (=> setNonEmpty!36666 (= tp!1517538 setRes!36672)))

(declare-fun setIsEmpty!36672 () Bool)

(assert (=> setIsEmpty!36672 setRes!36672))

(declare-fun setElem!36672 () Context!9780)

(declare-fun setNonEmpty!36672 () Bool)

(declare-fun e!3411227 () Bool)

(declare-fun tp!1517610 () Bool)

(assert (=> setNonEmpty!36672 (= setRes!36672 (and tp!1517610 (inv!82013 setElem!36672) e!3411227))))

(declare-fun setRest!36672 () (Set Context!9780))

(assert (=> setNonEmpty!36672 (= setRest!36666 (set.union (set.insert setElem!36672 (as set.empty (Set Context!9780))) setRest!36672))))

(declare-fun b!5516601 () Bool)

(declare-fun tp!1517611 () Bool)

(assert (=> b!5516601 (= e!3411227 tp!1517611)))

(assert (= (and setNonEmpty!36666 condSetEmpty!36672) setIsEmpty!36672))

(assert (= (and setNonEmpty!36666 (not condSetEmpty!36672)) setNonEmpty!36672))

(assert (= setNonEmpty!36672 b!5516601))

(declare-fun m!6520484 () Bool)

(assert (=> setNonEmpty!36672 m!6520484))

(declare-fun b!5516605 () Bool)

(declare-fun e!3411228 () Bool)

(declare-fun tp!1517616 () Bool)

(declare-fun tp!1517612 () Bool)

(assert (=> b!5516605 (= e!3411228 (and tp!1517616 tp!1517612))))

(assert (=> b!5516106 (= tp!1517537 e!3411228)))

(declare-fun b!5516603 () Bool)

(declare-fun tp!1517615 () Bool)

(declare-fun tp!1517614 () Bool)

(assert (=> b!5516603 (= e!3411228 (and tp!1517615 tp!1517614))))

(declare-fun b!5516604 () Bool)

(declare-fun tp!1517613 () Bool)

(assert (=> b!5516604 (= e!3411228 tp!1517613)))

(declare-fun b!5516602 () Bool)

(assert (=> b!5516602 (= e!3411228 tp_is_empty!40265)))

(assert (= (and b!5516106 (is-ElementMatch!15506 (regOne!31525 r!7292))) b!5516602))

(assert (= (and b!5516106 (is-Concat!24351 (regOne!31525 r!7292))) b!5516603))

(assert (= (and b!5516106 (is-Star!15506 (regOne!31525 r!7292))) b!5516604))

(assert (= (and b!5516106 (is-Union!15506 (regOne!31525 r!7292))) b!5516605))

(declare-fun b!5516609 () Bool)

(declare-fun e!3411229 () Bool)

(declare-fun tp!1517621 () Bool)

(declare-fun tp!1517617 () Bool)

(assert (=> b!5516609 (= e!3411229 (and tp!1517621 tp!1517617))))

(assert (=> b!5516106 (= tp!1517540 e!3411229)))

(declare-fun b!5516607 () Bool)

(declare-fun tp!1517620 () Bool)

(declare-fun tp!1517619 () Bool)

(assert (=> b!5516607 (= e!3411229 (and tp!1517620 tp!1517619))))

(declare-fun b!5516608 () Bool)

(declare-fun tp!1517618 () Bool)

(assert (=> b!5516608 (= e!3411229 tp!1517618)))

(declare-fun b!5516606 () Bool)

(assert (=> b!5516606 (= e!3411229 tp_is_empty!40265)))

(assert (= (and b!5516106 (is-ElementMatch!15506 (regTwo!31525 r!7292))) b!5516606))

(assert (= (and b!5516106 (is-Concat!24351 (regTwo!31525 r!7292))) b!5516607))

(assert (= (and b!5516106 (is-Star!15506 (regTwo!31525 r!7292))) b!5516608))

(assert (= (and b!5516106 (is-Union!15506 (regTwo!31525 r!7292))) b!5516609))

(declare-fun b!5516617 () Bool)

(declare-fun e!3411235 () Bool)

(declare-fun tp!1517626 () Bool)

(assert (=> b!5516617 (= e!3411235 tp!1517626)))

(declare-fun tp!1517627 () Bool)

(declare-fun b!5516616 () Bool)

(declare-fun e!3411234 () Bool)

(assert (=> b!5516616 (= e!3411234 (and (inv!82013 (h!69142 (t!376067 zl!343))) e!3411235 tp!1517627))))

(assert (=> b!5516123 (= tp!1517536 e!3411234)))

(assert (= b!5516616 b!5516617))

(assert (= (and b!5516123 (is-Cons!62694 (t!376067 zl!343))) b!5516616))

(declare-fun m!6520486 () Bool)

(assert (=> b!5516616 m!6520486))

(declare-fun b!5516618 () Bool)

(declare-fun e!3411236 () Bool)

(declare-fun tp!1517628 () Bool)

(declare-fun tp!1517629 () Bool)

(assert (=> b!5516618 (= e!3411236 (and tp!1517628 tp!1517629))))

(assert (=> b!5516127 (= tp!1517532 e!3411236)))

(assert (= (and b!5516127 (is-Cons!62693 (exprs!5390 (h!69142 zl!343)))) b!5516618))

(declare-fun b_lambda!209145 () Bool)

(assert (= b_lambda!209139 (or b!5516115 b_lambda!209145)))

(declare-fun bs!1271352 () Bool)

(declare-fun d!1747655 () Bool)

(assert (= bs!1271352 (and d!1747655 b!5516115)))

(assert (=> bs!1271352 (= (dynLambda!24493 lambda!295662 (h!69142 zl!343)) (derivationStepZipperUp!774 (h!69142 zl!343) (h!69143 s!2326)))))

(assert (=> bs!1271352 m!6520064))

(assert (=> d!1747605 d!1747655))

(declare-fun b_lambda!209147 () Bool)

(assert (= b_lambda!209141 (or b!5516115 b_lambda!209147)))

(declare-fun bs!1271353 () Bool)

(declare-fun d!1747657 () Bool)

(assert (= bs!1271353 (and d!1747657 b!5516115)))

(assert (=> bs!1271353 (= (dynLambda!24493 lambda!295662 lt!2246232) (derivationStepZipperUp!774 lt!2246232 (h!69143 s!2326)))))

(assert (=> bs!1271353 m!6520082))

(assert (=> d!1747619 d!1747657))

(declare-fun b_lambda!209149 () Bool)

(assert (= b_lambda!209143 (or b!5516115 b_lambda!209149)))

(declare-fun bs!1271354 () Bool)

(declare-fun d!1747659 () Bool)

(assert (= bs!1271354 (and d!1747659 b!5516115)))

(assert (=> bs!1271354 (= (dynLambda!24493 lambda!295662 lt!2246210) (derivationStepZipperUp!774 lt!2246210 (h!69143 s!2326)))))

(assert (=> bs!1271354 m!6520090))

(assert (=> d!1747621 d!1747659))

(push 1)

(assert (not bm!408220))

(assert (not b!5516603))

(assert (not b!5516562))

(assert (not b!5516595))

(assert (not bm!408217))

(assert (not d!1747601))

(assert (not bm!408236))

(assert (not d!1747591))

(assert (not b!5516399))

(assert (not d!1747595))

(assert (not b!5516305))

(assert (not b!5516605))

(assert (not bm!408218))

(assert (not b!5516306))

(assert (not b!5516301))

(assert (not b!5516388))

(assert (not d!1747573))

(assert (not bm!408229))

(assert (not d!1747575))

(assert (not d!1747649))

(assert (not b!5516329))

(assert (not d!1747627))

(assert (not bs!1271354))

(assert (not b!5516268))

(assert (not d!1747613))

(assert (not b!5516261))

(assert (not b!5516267))

(assert (not b!5516334))

(assert (not d!1747589))

(assert (not b!5516307))

(assert (not d!1747651))

(assert (not d!1747653))

(assert (not b!5516557))

(assert (not b!5516403))

(assert (not bm!408191))

(assert (not b!5516609))

(assert (not d!1747587))

(assert (not b!5516274))

(assert (not bm!408196))

(assert (not b!5516530))

(assert (not b!5516296))

(assert (not b!5516532))

(assert (not b!5516408))

(assert (not b!5516298))

(assert (not b!5516586))

(assert (not b!5516389))

(assert (not d!1747607))

(assert (not b_lambda!209147))

(assert (not b!5516266))

(assert (not d!1747569))

(assert (not bs!1271352))

(assert (not d!1747567))

(assert (not bm!408190))

(assert (not b!5516270))

(assert (not b!5516553))

(assert (not b!5516592))

(assert (not d!1747643))

(assert (not b!5516295))

(assert (not d!1747577))

(assert (not b!5516601))

(assert (not b!5516585))

(assert (not b!5516556))

(assert (not b!5516393))

(assert (not b!5516618))

(assert (not bs!1271353))

(assert (not d!1747629))

(assert (not bm!408233))

(assert (not b!5516491))

(assert (not b!5516361))

(assert (not b!5516552))

(assert (not b!5516271))

(assert (not b!5516539))

(assert (not b!5516387))

(assert (not bm!408226))

(assert (not b!5516402))

(assert (not b!5516564))

(assert (not b!5516549))

(assert (not d!1747583))

(assert (not b!5516581))

(assert (not b!5516335))

(assert (not d!1747645))

(assert (not b!5516561))

(assert (not b!5516527))

(assert (not b!5516607))

(assert (not b!5516308))

(assert (not b!5516442))

(assert (not b!5516300))

(assert (not b!5516596))

(assert (not bm!408232))

(assert (not b!5516616))

(assert (not b!5516302))

(assert (not b!5516587))

(assert (not d!1747609))

(assert (not d!1747615))

(assert (not d!1747593))

(assert (not b!5516582))

(assert (not b!5516331))

(assert (not d!1747647))

(assert (not d!1747633))

(assert (not bm!408211))

(assert (not b!5516496))

(assert (not d!1747599))

(assert (not b!5516604))

(assert (not b!5516394))

(assert tp_is_empty!40265)

(assert (not d!1747619))

(assert (not b!5516407))

(assert (not bm!408195))

(assert (not b!5516583))

(assert (not b_lambda!209145))

(assert (not d!1747635))

(assert (not b!5516385))

(assert (not b_lambda!209149))

(assert (not b!5516560))

(assert (not bm!408194))

(assert (not b!5516303))

(assert (not d!1747621))

(assert (not b!5516362))

(assert (not b!5516608))

(assert (not b!5516617))

(assert (not b!5516336))

(assert (not bm!408214))

(assert (not b!5516569))

(assert (not bm!408212))

(assert (not b!5516536))

(assert (not bm!408235))

(assert (not d!1747571))

(assert (not b!5516330))

(assert (not d!1747605))

(assert (not b!5516563))

(assert (not b!5516594))

(assert (not b!5516535))

(assert (not bm!408225))

(assert (not d!1747597))

(assert (not d!1747637))

(assert (not b!5516453))

(assert (not b!5516386))

(assert (not b!5516269))

(assert (not setNonEmpty!36672))

(assert (not d!1747585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1747757 () Bool)

(declare-fun c!964492 () Bool)

(assert (=> d!1747757 (= c!964492 (isEmpty!34479 (tail!10910 (t!376068 s!2326))))))

(declare-fun e!3411451 () Bool)

(assert (=> d!1747757 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246230 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))) e!3411451)))

(declare-fun b!5517003 () Bool)

(assert (=> b!5517003 (= e!3411451 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246230 (head!11815 (t!376068 s!2326)))))))

(declare-fun b!5517004 () Bool)

(assert (=> b!5517004 (= e!3411451 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246230 (head!11815 (t!376068 s!2326))) (head!11815 (tail!10910 (t!376068 s!2326)))) (tail!10910 (tail!10910 (t!376068 s!2326)))))))

(assert (= (and d!1747757 c!964492) b!5517003))

(assert (= (and d!1747757 (not c!964492)) b!5517004))

(assert (=> d!1747757 m!6520242))

(declare-fun m!6520748 () Bool)

(assert (=> d!1747757 m!6520748))

(assert (=> b!5517003 m!6520254))

(declare-fun m!6520750 () Bool)

(assert (=> b!5517003 m!6520750))

(assert (=> b!5517004 m!6520242))

(declare-fun m!6520752 () Bool)

(assert (=> b!5517004 m!6520752))

(assert (=> b!5517004 m!6520254))

(assert (=> b!5517004 m!6520752))

(declare-fun m!6520754 () Bool)

(assert (=> b!5517004 m!6520754))

(assert (=> b!5517004 m!6520242))

(declare-fun m!6520756 () Bool)

(assert (=> b!5517004 m!6520756))

(assert (=> b!5517004 m!6520754))

(assert (=> b!5517004 m!6520756))

(declare-fun m!6520758 () Bool)

(assert (=> b!5517004 m!6520758))

(assert (=> b!5516271 d!1747757))

(declare-fun bs!1271403 () Bool)

(declare-fun d!1747759 () Bool)

(assert (= bs!1271403 (and d!1747759 b!5516115)))

(declare-fun lambda!295744 () Int)

(assert (=> bs!1271403 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295744 lambda!295662))))

(declare-fun bs!1271404 () Bool)

(assert (= bs!1271404 (and d!1747759 d!1747587)))

(assert (=> bs!1271404 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295744 lambda!295683))))

(declare-fun bs!1271405 () Bool)

(assert (= bs!1271405 (and d!1747759 d!1747643)))

(assert (=> bs!1271405 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295744 lambda!295709))))

(declare-fun bs!1271406 () Bool)

(assert (= bs!1271406 (and d!1747759 d!1747653)))

(assert (=> bs!1271406 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295744 lambda!295710))))

(assert (=> d!1747759 true))

(assert (=> d!1747759 (= (derivationStepZipper!1611 lt!2246230 (head!11815 (t!376068 s!2326))) (flatMap!1119 lt!2246230 lambda!295744))))

(declare-fun bs!1271407 () Bool)

(assert (= bs!1271407 d!1747759))

(declare-fun m!6520760 () Bool)

(assert (=> bs!1271407 m!6520760))

(assert (=> b!5516271 d!1747759))

(declare-fun d!1747761 () Bool)

(assert (=> d!1747761 (= (head!11815 (t!376068 s!2326)) (h!69143 (t!376068 s!2326)))))

(assert (=> b!5516271 d!1747761))

(declare-fun d!1747763 () Bool)

(assert (=> d!1747763 (= (tail!10910 (t!376068 s!2326)) (t!376068 (t!376068 s!2326)))))

(assert (=> b!5516271 d!1747763))

(declare-fun d!1747765 () Bool)

(assert (=> d!1747765 (= (head!11815 s!2326) (h!69143 s!2326))))

(assert (=> b!5516530 d!1747765))

(declare-fun d!1747767 () Bool)

(assert (=> d!1747767 (= (head!11816 (exprs!5390 (h!69142 zl!343))) (h!69141 (exprs!5390 (h!69142 zl!343))))))

(assert (=> b!5516298 d!1747767))

(declare-fun d!1747769 () Bool)

(assert (=> d!1747769 (= (isEmpty!34479 (t!376068 s!2326)) (is-Nil!62695 (t!376068 s!2326)))))

(assert (=> d!1747567 d!1747769))

(declare-fun d!1747771 () Bool)

(declare-fun res!2350561 () Bool)

(declare-fun e!3411456 () Bool)

(assert (=> d!1747771 (=> res!2350561 e!3411456)))

(assert (=> d!1747771 (= res!2350561 (is-Nil!62694 lt!2246357))))

(assert (=> d!1747771 (= (noDuplicate!1499 lt!2246357) e!3411456)))

(declare-fun b!5517009 () Bool)

(declare-fun e!3411457 () Bool)

(assert (=> b!5517009 (= e!3411456 e!3411457)))

(declare-fun res!2350562 () Bool)

(assert (=> b!5517009 (=> (not res!2350562) (not e!3411457))))

(declare-fun contains!19783 (List!62818 Context!9780) Bool)

(assert (=> b!5517009 (= res!2350562 (not (contains!19783 (t!376067 lt!2246357) (h!69142 lt!2246357))))))

(declare-fun b!5517010 () Bool)

(assert (=> b!5517010 (= e!3411457 (noDuplicate!1499 (t!376067 lt!2246357)))))

(assert (= (and d!1747771 (not res!2350561)) b!5517009))

(assert (= (and b!5517009 res!2350562) b!5517010))

(declare-fun m!6520762 () Bool)

(assert (=> b!5517009 m!6520762))

(declare-fun m!6520764 () Bool)

(assert (=> b!5517010 m!6520764))

(assert (=> d!1747647 d!1747771))

(declare-fun d!1747773 () Bool)

(declare-fun e!3411464 () Bool)

(assert (=> d!1747773 e!3411464))

(declare-fun res!2350568 () Bool)

(assert (=> d!1747773 (=> (not res!2350568) (not e!3411464))))

(declare-fun res!2350567 () List!62818)

(assert (=> d!1747773 (= res!2350568 (noDuplicate!1499 res!2350567))))

(declare-fun e!3411465 () Bool)

(assert (=> d!1747773 e!3411465))

(assert (=> d!1747773 (= (choose!41931 z!1189) res!2350567)))

(declare-fun b!5517018 () Bool)

(declare-fun e!3411466 () Bool)

(declare-fun tp!1517693 () Bool)

(assert (=> b!5517018 (= e!3411466 tp!1517693)))

(declare-fun tp!1517692 () Bool)

(declare-fun b!5517017 () Bool)

(assert (=> b!5517017 (= e!3411465 (and (inv!82013 (h!69142 res!2350567)) e!3411466 tp!1517692))))

(declare-fun b!5517019 () Bool)

(assert (=> b!5517019 (= e!3411464 (= (content!11268 res!2350567) z!1189))))

(assert (= b!5517017 b!5517018))

(assert (= (and d!1747773 (is-Cons!62694 res!2350567)) b!5517017))

(assert (= (and d!1747773 res!2350568) b!5517019))

(declare-fun m!6520766 () Bool)

(assert (=> d!1747773 m!6520766))

(declare-fun m!6520768 () Bool)

(assert (=> b!5517017 m!6520768))

(declare-fun m!6520770 () Bool)

(assert (=> b!5517019 m!6520770))

(assert (=> d!1747647 d!1747773))

(declare-fun d!1747775 () Bool)

(assert (=> d!1747775 (= (isEmpty!34480 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326)) (not (is-Some!15514 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326))))))

(assert (=> d!1747599 d!1747775))

(assert (=> d!1747571 d!1747769))

(assert (=> bs!1271353 d!1747611))

(declare-fun d!1747777 () Bool)

(assert (=> d!1747777 true))

(declare-fun setRes!36678 () Bool)

(assert (=> d!1747777 setRes!36678))

(declare-fun condSetEmpty!36678 () Bool)

(declare-fun res!2350571 () (Set Context!9780))

(assert (=> d!1747777 (= condSetEmpty!36678 (= res!2350571 (as set.empty (Set Context!9780))))))

(assert (=> d!1747777 (= (choose!41928 z!1189 lambda!295662) res!2350571)))

(declare-fun setIsEmpty!36678 () Bool)

(assert (=> setIsEmpty!36678 setRes!36678))

(declare-fun tp!1517699 () Bool)

(declare-fun e!3411469 () Bool)

(declare-fun setNonEmpty!36678 () Bool)

(declare-fun setElem!36678 () Context!9780)

(assert (=> setNonEmpty!36678 (= setRes!36678 (and tp!1517699 (inv!82013 setElem!36678) e!3411469))))

(declare-fun setRest!36678 () (Set Context!9780))

(assert (=> setNonEmpty!36678 (= res!2350571 (set.union (set.insert setElem!36678 (as set.empty (Set Context!9780))) setRest!36678))))

(declare-fun b!5517022 () Bool)

(declare-fun tp!1517698 () Bool)

(assert (=> b!5517022 (= e!3411469 tp!1517698)))

(assert (= (and d!1747777 condSetEmpty!36678) setIsEmpty!36678))

(assert (= (and d!1747777 (not condSetEmpty!36678)) setNonEmpty!36678))

(assert (= setNonEmpty!36678 b!5517022))

(declare-fun m!6520772 () Bool)

(assert (=> setNonEmpty!36678 m!6520772))

(assert (=> d!1747601 d!1747777))

(assert (=> b!5516274 d!1747645))

(declare-fun b!5517023 () Bool)

(declare-fun e!3411472 () Bool)

(declare-fun lt!2246402 () Bool)

(assert (=> b!5517023 (= e!3411472 (not lt!2246402))))

(declare-fun d!1747779 () Bool)

(declare-fun e!3411474 () Bool)

(assert (=> d!1747779 e!3411474))

(declare-fun c!964494 () Bool)

(assert (=> d!1747779 (= c!964494 (is-EmptyExpr!15506 (regOne!31524 r!7292)))))

(declare-fun e!3411476 () Bool)

(assert (=> d!1747779 (= lt!2246402 e!3411476)))

(declare-fun c!964495 () Bool)

(assert (=> d!1747779 (= c!964495 (isEmpty!34479 (_1!35906 (get!21575 lt!2246329))))))

(assert (=> d!1747779 (validRegex!7242 (regOne!31524 r!7292))))

(assert (=> d!1747779 (= (matchR!7691 (regOne!31524 r!7292) (_1!35906 (get!21575 lt!2246329))) lt!2246402)))

(declare-fun b!5517024 () Bool)

(declare-fun e!3411470 () Bool)

(assert (=> b!5517024 (= e!3411470 (= (head!11815 (_1!35906 (get!21575 lt!2246329))) (c!964265 (regOne!31524 r!7292))))))

(declare-fun b!5517025 () Bool)

(declare-fun e!3411471 () Bool)

(declare-fun e!3411475 () Bool)

(assert (=> b!5517025 (= e!3411471 e!3411475)))

(declare-fun res!2350572 () Bool)

(assert (=> b!5517025 (=> res!2350572 e!3411475)))

(declare-fun call!408296 () Bool)

(assert (=> b!5517025 (= res!2350572 call!408296)))

(declare-fun b!5517026 () Bool)

(declare-fun e!3411473 () Bool)

(assert (=> b!5517026 (= e!3411473 e!3411471)))

(declare-fun res!2350573 () Bool)

(assert (=> b!5517026 (=> (not res!2350573) (not e!3411471))))

(assert (=> b!5517026 (= res!2350573 (not lt!2246402))))

(declare-fun b!5517027 () Bool)

(assert (=> b!5517027 (= e!3411475 (not (= (head!11815 (_1!35906 (get!21575 lt!2246329))) (c!964265 (regOne!31524 r!7292)))))))

(declare-fun b!5517028 () Bool)

(assert (=> b!5517028 (= e!3411474 (= lt!2246402 call!408296))))

(declare-fun b!5517029 () Bool)

(declare-fun res!2350578 () Bool)

(assert (=> b!5517029 (=> res!2350578 e!3411475)))

(assert (=> b!5517029 (= res!2350578 (not (isEmpty!34479 (tail!10910 (_1!35906 (get!21575 lt!2246329))))))))

(declare-fun b!5517030 () Bool)

(assert (=> b!5517030 (= e!3411474 e!3411472)))

(declare-fun c!964493 () Bool)

(assert (=> b!5517030 (= c!964493 (is-EmptyLang!15506 (regOne!31524 r!7292)))))

(declare-fun b!5517031 () Bool)

(declare-fun res!2350577 () Bool)

(assert (=> b!5517031 (=> res!2350577 e!3411473)))

(assert (=> b!5517031 (= res!2350577 (not (is-ElementMatch!15506 (regOne!31524 r!7292))))))

(assert (=> b!5517031 (= e!3411472 e!3411473)))

(declare-fun b!5517032 () Bool)

(assert (=> b!5517032 (= e!3411476 (nullable!5540 (regOne!31524 r!7292)))))

(declare-fun b!5517033 () Bool)

(declare-fun res!2350574 () Bool)

(assert (=> b!5517033 (=> (not res!2350574) (not e!3411470))))

(assert (=> b!5517033 (= res!2350574 (isEmpty!34479 (tail!10910 (_1!35906 (get!21575 lt!2246329)))))))

(declare-fun bm!408291 () Bool)

(assert (=> bm!408291 (= call!408296 (isEmpty!34479 (_1!35906 (get!21575 lt!2246329))))))

(declare-fun b!5517034 () Bool)

(declare-fun res!2350575 () Bool)

(assert (=> b!5517034 (=> res!2350575 e!3411473)))

(assert (=> b!5517034 (= res!2350575 e!3411470)))

(declare-fun res!2350576 () Bool)

(assert (=> b!5517034 (=> (not res!2350576) (not e!3411470))))

(assert (=> b!5517034 (= res!2350576 lt!2246402)))

(declare-fun b!5517035 () Bool)

(declare-fun res!2350579 () Bool)

(assert (=> b!5517035 (=> (not res!2350579) (not e!3411470))))

(assert (=> b!5517035 (= res!2350579 (not call!408296))))

(declare-fun b!5517036 () Bool)

(assert (=> b!5517036 (= e!3411476 (matchR!7691 (derivativeStep!4371 (regOne!31524 r!7292) (head!11815 (_1!35906 (get!21575 lt!2246329)))) (tail!10910 (_1!35906 (get!21575 lt!2246329)))))))

(assert (= (and d!1747779 c!964495) b!5517032))

(assert (= (and d!1747779 (not c!964495)) b!5517036))

(assert (= (and d!1747779 c!964494) b!5517028))

(assert (= (and d!1747779 (not c!964494)) b!5517030))

(assert (= (and b!5517030 c!964493) b!5517023))

(assert (= (and b!5517030 (not c!964493)) b!5517031))

(assert (= (and b!5517031 (not res!2350577)) b!5517034))

(assert (= (and b!5517034 res!2350576) b!5517035))

(assert (= (and b!5517035 res!2350579) b!5517033))

(assert (= (and b!5517033 res!2350574) b!5517024))

(assert (= (and b!5517034 (not res!2350575)) b!5517026))

(assert (= (and b!5517026 res!2350573) b!5517025))

(assert (= (and b!5517025 (not res!2350572)) b!5517029))

(assert (= (and b!5517029 (not res!2350578)) b!5517027))

(assert (= (or b!5517028 b!5517025 b!5517035) bm!408291))

(declare-fun m!6520774 () Bool)

(assert (=> b!5517029 m!6520774))

(assert (=> b!5517029 m!6520774))

(declare-fun m!6520776 () Bool)

(assert (=> b!5517029 m!6520776))

(assert (=> b!5517033 m!6520774))

(assert (=> b!5517033 m!6520774))

(assert (=> b!5517033 m!6520776))

(declare-fun m!6520778 () Bool)

(assert (=> bm!408291 m!6520778))

(declare-fun m!6520780 () Bool)

(assert (=> b!5517036 m!6520780))

(assert (=> b!5517036 m!6520780))

(declare-fun m!6520782 () Bool)

(assert (=> b!5517036 m!6520782))

(assert (=> b!5517036 m!6520774))

(assert (=> b!5517036 m!6520782))

(assert (=> b!5517036 m!6520774))

(declare-fun m!6520784 () Bool)

(assert (=> b!5517036 m!6520784))

(assert (=> b!5517024 m!6520780))

(assert (=> b!5517032 m!6520094))

(assert (=> b!5517027 m!6520780))

(assert (=> d!1747779 m!6520778))

(assert (=> d!1747779 m!6520306))

(assert (=> b!5516330 d!1747779))

(declare-fun d!1747781 () Bool)

(assert (=> d!1747781 (= (get!21575 lt!2246329) (v!51549 lt!2246329))))

(assert (=> b!5516330 d!1747781))

(declare-fun bs!1271408 () Bool)

(declare-fun d!1747783 () Bool)

(assert (= bs!1271408 (and d!1747783 d!1747629)))

(declare-fun lambda!295745 () Int)

(assert (=> bs!1271408 (= lambda!295745 lambda!295701)))

(declare-fun bs!1271409 () Bool)

(assert (= bs!1271409 (and d!1747783 d!1747607)))

(assert (=> bs!1271409 (= lambda!295745 lambda!295695)))

(declare-fun bs!1271410 () Bool)

(assert (= bs!1271410 (and d!1747783 d!1747575)))

(assert (=> bs!1271410 (= lambda!295745 lambda!295680)))

(declare-fun bs!1271411 () Bool)

(assert (= bs!1271411 (and d!1747783 d!1747609)))

(assert (=> bs!1271411 (= lambda!295745 lambda!295698)))

(declare-fun bs!1271412 () Bool)

(assert (= bs!1271412 (and d!1747783 d!1747637)))

(assert (=> bs!1271412 (= lambda!295745 lambda!295708)))

(declare-fun b!5517037 () Bool)

(declare-fun e!3411477 () Bool)

(assert (=> b!5517037 (= e!3411477 (isEmpty!34476 (t!376066 (t!376066 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5517038 () Bool)

(declare-fun e!3411481 () Bool)

(declare-fun e!3411480 () Bool)

(assert (=> b!5517038 (= e!3411481 e!3411480)))

(declare-fun c!964498 () Bool)

(assert (=> b!5517038 (= c!964498 (isEmpty!34476 (tail!10911 (t!376066 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5517039 () Bool)

(declare-fun e!3411479 () Regex!15506)

(declare-fun e!3411482 () Regex!15506)

(assert (=> b!5517039 (= e!3411479 e!3411482)))

(declare-fun c!964497 () Bool)

(assert (=> b!5517039 (= c!964497 (is-Cons!62693 (t!376066 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun e!3411478 () Bool)

(assert (=> d!1747783 e!3411478))

(declare-fun res!2350580 () Bool)

(assert (=> d!1747783 (=> (not res!2350580) (not e!3411478))))

(declare-fun lt!2246403 () Regex!15506)

(assert (=> d!1747783 (= res!2350580 (validRegex!7242 lt!2246403))))

(assert (=> d!1747783 (= lt!2246403 e!3411479)))

(declare-fun c!964499 () Bool)

(assert (=> d!1747783 (= c!964499 e!3411477)))

(declare-fun res!2350581 () Bool)

(assert (=> d!1747783 (=> (not res!2350581) (not e!3411477))))

(assert (=> d!1747783 (= res!2350581 (is-Cons!62693 (t!376066 (exprs!5390 (h!69142 zl!343)))))))

(assert (=> d!1747783 (forall!14680 (t!376066 (exprs!5390 (h!69142 zl!343))) lambda!295745)))

(assert (=> d!1747783 (= (generalisedConcat!1121 (t!376066 (exprs!5390 (h!69142 zl!343)))) lt!2246403)))

(declare-fun b!5517040 () Bool)

(assert (=> b!5517040 (= e!3411480 (= lt!2246403 (head!11816 (t!376066 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5517041 () Bool)

(assert (=> b!5517041 (= e!3411479 (h!69141 (t!376066 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5517042 () Bool)

(assert (=> b!5517042 (= e!3411481 (isEmptyExpr!1078 lt!2246403))))

(declare-fun b!5517043 () Bool)

(assert (=> b!5517043 (= e!3411478 e!3411481)))

(declare-fun c!964496 () Bool)

(assert (=> b!5517043 (= c!964496 (isEmpty!34476 (t!376066 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5517044 () Bool)

(assert (=> b!5517044 (= e!3411482 (Concat!24351 (h!69141 (t!376066 (exprs!5390 (h!69142 zl!343)))) (generalisedConcat!1121 (t!376066 (t!376066 (exprs!5390 (h!69142 zl!343)))))))))

(declare-fun b!5517045 () Bool)

(assert (=> b!5517045 (= e!3411480 (isConcat!601 lt!2246403))))

(declare-fun b!5517046 () Bool)

(assert (=> b!5517046 (= e!3411482 EmptyExpr!15506)))

(assert (= (and d!1747783 res!2350581) b!5517037))

(assert (= (and d!1747783 c!964499) b!5517041))

(assert (= (and d!1747783 (not c!964499)) b!5517039))

(assert (= (and b!5517039 c!964497) b!5517044))

(assert (= (and b!5517039 (not c!964497)) b!5517046))

(assert (= (and d!1747783 res!2350580) b!5517043))

(assert (= (and b!5517043 c!964496) b!5517042))

(assert (= (and b!5517043 (not c!964496)) b!5517038))

(assert (= (and b!5517038 c!964498) b!5517040))

(assert (= (and b!5517038 (not c!964498)) b!5517045))

(declare-fun m!6520786 () Bool)

(assert (=> b!5517044 m!6520786))

(declare-fun m!6520788 () Bool)

(assert (=> b!5517040 m!6520788))

(declare-fun m!6520790 () Bool)

(assert (=> d!1747783 m!6520790))

(declare-fun m!6520792 () Bool)

(assert (=> d!1747783 m!6520792))

(declare-fun m!6520794 () Bool)

(assert (=> b!5517045 m!6520794))

(assert (=> b!5517043 m!6520078))

(declare-fun m!6520796 () Bool)

(assert (=> b!5517037 m!6520796))

(declare-fun m!6520798 () Bool)

(assert (=> b!5517042 m!6520798))

(declare-fun m!6520800 () Bool)

(assert (=> b!5517038 m!6520800))

(assert (=> b!5517038 m!6520800))

(declare-fun m!6520802 () Bool)

(assert (=> b!5517038 m!6520802))

(assert (=> b!5516302 d!1747783))

(declare-fun d!1747785 () Bool)

(assert (=> d!1747785 (= (isEmptyLang!1089 lt!2246343) (is-EmptyLang!15506 lt!2246343))))

(assert (=> b!5516386 d!1747785))

(declare-fun bm!408296 () Bool)

(declare-fun call!408302 () Bool)

(declare-fun c!964502 () Bool)

(assert (=> bm!408296 (= call!408302 (nullable!5540 (ite c!964502 (regOne!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))))))

(declare-fun b!5517061 () Bool)

(declare-fun e!3411498 () Bool)

(declare-fun e!3411497 () Bool)

(assert (=> b!5517061 (= e!3411498 e!3411497)))

(declare-fun res!2350594 () Bool)

(assert (=> b!5517061 (=> res!2350594 e!3411497)))

(assert (=> b!5517061 (= res!2350594 (is-Star!15506 (regOne!31524 r!7292)))))

(declare-fun bm!408297 () Bool)

(declare-fun call!408301 () Bool)

(assert (=> bm!408297 (= call!408301 (nullable!5540 (ite c!964502 (regTwo!31525 (regOne!31524 r!7292)) (regTwo!31524 (regOne!31524 r!7292)))))))

(declare-fun b!5517062 () Bool)

(declare-fun e!3411495 () Bool)

(assert (=> b!5517062 (= e!3411495 call!408301)))

(declare-fun d!1747787 () Bool)

(declare-fun res!2350596 () Bool)

(declare-fun e!3411496 () Bool)

(assert (=> d!1747787 (=> res!2350596 e!3411496)))

(assert (=> d!1747787 (= res!2350596 (is-EmptyExpr!15506 (regOne!31524 r!7292)))))

(assert (=> d!1747787 (= (nullableFct!1664 (regOne!31524 r!7292)) e!3411496)))

(declare-fun b!5517063 () Bool)

(declare-fun e!3411499 () Bool)

(declare-fun e!3411500 () Bool)

(assert (=> b!5517063 (= e!3411499 e!3411500)))

(declare-fun res!2350595 () Bool)

(assert (=> b!5517063 (= res!2350595 call!408302)))

(assert (=> b!5517063 (=> (not res!2350595) (not e!3411500))))

(declare-fun b!5517064 () Bool)

(assert (=> b!5517064 (= e!3411496 e!3411498)))

(declare-fun res!2350592 () Bool)

(assert (=> b!5517064 (=> (not res!2350592) (not e!3411498))))

(assert (=> b!5517064 (= res!2350592 (and (not (is-EmptyLang!15506 (regOne!31524 r!7292))) (not (is-ElementMatch!15506 (regOne!31524 r!7292)))))))

(declare-fun b!5517065 () Bool)

(assert (=> b!5517065 (= e!3411500 call!408301)))

(declare-fun b!5517066 () Bool)

(assert (=> b!5517066 (= e!3411499 e!3411495)))

(declare-fun res!2350593 () Bool)

(assert (=> b!5517066 (= res!2350593 call!408302)))

(assert (=> b!5517066 (=> res!2350593 e!3411495)))

(declare-fun b!5517067 () Bool)

(assert (=> b!5517067 (= e!3411497 e!3411499)))

(assert (=> b!5517067 (= c!964502 (is-Union!15506 (regOne!31524 r!7292)))))

(assert (= (and d!1747787 (not res!2350596)) b!5517064))

(assert (= (and b!5517064 res!2350592) b!5517061))

(assert (= (and b!5517061 (not res!2350594)) b!5517067))

(assert (= (and b!5517067 c!964502) b!5517066))

(assert (= (and b!5517067 (not c!964502)) b!5517063))

(assert (= (and b!5517066 (not res!2350593)) b!5517062))

(assert (= (and b!5517063 res!2350595) b!5517065))

(assert (= (or b!5517062 b!5517065) bm!408297))

(assert (= (or b!5517066 b!5517063) bm!408296))

(declare-fun m!6520804 () Bool)

(assert (=> bm!408296 m!6520804))

(declare-fun m!6520806 () Bool)

(assert (=> bm!408297 m!6520806))

(assert (=> d!1747613 d!1747787))

(assert (=> b!5516549 d!1747613))

(declare-fun bs!1271413 () Bool)

(declare-fun d!1747789 () Bool)

(assert (= bs!1271413 (and d!1747789 d!1747629)))

(declare-fun lambda!295746 () Int)

(assert (=> bs!1271413 (= lambda!295746 lambda!295701)))

(declare-fun bs!1271414 () Bool)

(assert (= bs!1271414 (and d!1747789 d!1747783)))

(assert (=> bs!1271414 (= lambda!295746 lambda!295745)))

(declare-fun bs!1271415 () Bool)

(assert (= bs!1271415 (and d!1747789 d!1747607)))

(assert (=> bs!1271415 (= lambda!295746 lambda!295695)))

(declare-fun bs!1271416 () Bool)

(assert (= bs!1271416 (and d!1747789 d!1747575)))

(assert (=> bs!1271416 (= lambda!295746 lambda!295680)))

(declare-fun bs!1271417 () Bool)

(assert (= bs!1271417 (and d!1747789 d!1747609)))

(assert (=> bs!1271417 (= lambda!295746 lambda!295698)))

(declare-fun bs!1271418 () Bool)

(assert (= bs!1271418 (and d!1747789 d!1747637)))

(assert (=> bs!1271418 (= lambda!295746 lambda!295708)))

(declare-fun b!5517069 () Bool)

(declare-fun e!3411501 () Bool)

(declare-fun lt!2246404 () Regex!15506)

(assert (=> b!5517069 (= e!3411501 (isEmptyLang!1089 lt!2246404))))

(declare-fun b!5517070 () Bool)

(declare-fun e!3411504 () Bool)

(assert (=> b!5517070 (= e!3411504 (isUnion!519 lt!2246404))))

(declare-fun b!5517071 () Bool)

(assert (=> b!5517071 (= e!3411504 (= lt!2246404 (head!11816 (t!376066 (unfocusZipperList!934 zl!343)))))))

(declare-fun b!5517072 () Bool)

(declare-fun e!3411503 () Bool)

(assert (=> b!5517072 (= e!3411503 e!3411501)))

(declare-fun c!964505 () Bool)

(assert (=> b!5517072 (= c!964505 (isEmpty!34476 (t!376066 (unfocusZipperList!934 zl!343))))))

(declare-fun b!5517073 () Bool)

(declare-fun e!3411505 () Regex!15506)

(assert (=> b!5517073 (= e!3411505 EmptyLang!15506)))

(declare-fun b!5517074 () Bool)

(declare-fun e!3411506 () Regex!15506)

(assert (=> b!5517074 (= e!3411506 (h!69141 (t!376066 (unfocusZipperList!934 zl!343))))))

(declare-fun b!5517075 () Bool)

(assert (=> b!5517075 (= e!3411506 e!3411505)))

(declare-fun c!964504 () Bool)

(assert (=> b!5517075 (= c!964504 (is-Cons!62693 (t!376066 (unfocusZipperList!934 zl!343))))))

(assert (=> d!1747789 e!3411503))

(declare-fun res!2350597 () Bool)

(assert (=> d!1747789 (=> (not res!2350597) (not e!3411503))))

(assert (=> d!1747789 (= res!2350597 (validRegex!7242 lt!2246404))))

(assert (=> d!1747789 (= lt!2246404 e!3411506)))

(declare-fun c!964506 () Bool)

(declare-fun e!3411502 () Bool)

(assert (=> d!1747789 (= c!964506 e!3411502)))

(declare-fun res!2350598 () Bool)

(assert (=> d!1747789 (=> (not res!2350598) (not e!3411502))))

(assert (=> d!1747789 (= res!2350598 (is-Cons!62693 (t!376066 (unfocusZipperList!934 zl!343))))))

(assert (=> d!1747789 (forall!14680 (t!376066 (unfocusZipperList!934 zl!343)) lambda!295746)))

(assert (=> d!1747789 (= (generalisedUnion!1369 (t!376066 (unfocusZipperList!934 zl!343))) lt!2246404)))

(declare-fun b!5517068 () Bool)

(assert (=> b!5517068 (= e!3411502 (isEmpty!34476 (t!376066 (t!376066 (unfocusZipperList!934 zl!343)))))))

(declare-fun b!5517076 () Bool)

(assert (=> b!5517076 (= e!3411501 e!3411504)))

(declare-fun c!964503 () Bool)

(assert (=> b!5517076 (= c!964503 (isEmpty!34476 (tail!10911 (t!376066 (unfocusZipperList!934 zl!343)))))))

(declare-fun b!5517077 () Bool)

(assert (=> b!5517077 (= e!3411505 (Union!15506 (h!69141 (t!376066 (unfocusZipperList!934 zl!343))) (generalisedUnion!1369 (t!376066 (t!376066 (unfocusZipperList!934 zl!343))))))))

(assert (= (and d!1747789 res!2350598) b!5517068))

(assert (= (and d!1747789 c!964506) b!5517074))

(assert (= (and d!1747789 (not c!964506)) b!5517075))

(assert (= (and b!5517075 c!964504) b!5517077))

(assert (= (and b!5517075 (not c!964504)) b!5517073))

(assert (= (and d!1747789 res!2350597) b!5517072))

(assert (= (and b!5517072 c!964505) b!5517069))

(assert (= (and b!5517072 (not c!964505)) b!5517076))

(assert (= (and b!5517076 c!964503) b!5517071))

(assert (= (and b!5517076 (not c!964503)) b!5517070))

(declare-fun m!6520808 () Bool)

(assert (=> b!5517069 m!6520808))

(declare-fun m!6520810 () Bool)

(assert (=> b!5517071 m!6520810))

(declare-fun m!6520812 () Bool)

(assert (=> b!5517068 m!6520812))

(declare-fun m!6520814 () Bool)

(assert (=> b!5517077 m!6520814))

(declare-fun m!6520816 () Bool)

(assert (=> d!1747789 m!6520816))

(declare-fun m!6520818 () Bool)

(assert (=> d!1747789 m!6520818))

(assert (=> b!5517072 m!6520360))

(declare-fun m!6520820 () Bool)

(assert (=> b!5517070 m!6520820))

(declare-fun m!6520822 () Bool)

(assert (=> b!5517076 m!6520822))

(assert (=> b!5517076 m!6520822))

(declare-fun m!6520824 () Bool)

(assert (=> b!5517076 m!6520824))

(assert (=> b!5516394 d!1747789))

(declare-fun bm!408298 () Bool)

(declare-fun call!408305 () Bool)

(declare-fun call!408304 () Bool)

(assert (=> bm!408298 (= call!408305 call!408304)))

(declare-fun bm!408299 () Bool)

(declare-fun c!964507 () Bool)

(declare-fun c!964508 () Bool)

(assert (=> bm!408299 (= call!408304 (validRegex!7242 (ite c!964508 (reg!15835 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))) (ite c!964507 (regTwo!31525 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))) (regTwo!31524 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292)))))))))

(declare-fun b!5517078 () Bool)

(declare-fun res!2350599 () Bool)

(declare-fun e!3411511 () Bool)

(assert (=> b!5517078 (=> res!2350599 e!3411511)))

(assert (=> b!5517078 (= res!2350599 (not (is-Concat!24351 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292)))))))

(declare-fun e!3411507 () Bool)

(assert (=> b!5517078 (= e!3411507 e!3411511)))

(declare-fun b!5517079 () Bool)

(declare-fun e!3411510 () Bool)

(assert (=> b!5517079 (= e!3411511 e!3411510)))

(declare-fun res!2350601 () Bool)

(assert (=> b!5517079 (=> (not res!2350601) (not e!3411510))))

(declare-fun call!408303 () Bool)

(assert (=> b!5517079 (= res!2350601 call!408303)))

(declare-fun b!5517080 () Bool)

(assert (=> b!5517080 (= e!3411510 call!408305)))

(declare-fun b!5517082 () Bool)

(declare-fun e!3411513 () Bool)

(declare-fun e!3411509 () Bool)

(assert (=> b!5517082 (= e!3411513 e!3411509)))

(assert (=> b!5517082 (= c!964508 (is-Star!15506 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))))))

(declare-fun b!5517083 () Bool)

(assert (=> b!5517083 (= e!3411509 e!3411507)))

(assert (=> b!5517083 (= c!964507 (is-Union!15506 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))))))

(declare-fun b!5517084 () Bool)

(declare-fun e!3411508 () Bool)

(assert (=> b!5517084 (= e!3411508 call!408305)))

(declare-fun b!5517085 () Bool)

(declare-fun e!3411512 () Bool)

(assert (=> b!5517085 (= e!3411512 call!408304)))

(declare-fun bm!408300 () Bool)

(assert (=> bm!408300 (= call!408303 (validRegex!7242 (ite c!964507 (regOne!31525 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))) (regOne!31524 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))))))))

(declare-fun b!5517086 () Bool)

(assert (=> b!5517086 (= e!3411509 e!3411512)))

(declare-fun res!2350602 () Bool)

(assert (=> b!5517086 (= res!2350602 (not (nullable!5540 (reg!15835 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))))))))

(assert (=> b!5517086 (=> (not res!2350602) (not e!3411512))))

(declare-fun d!1747791 () Bool)

(declare-fun res!2350603 () Bool)

(assert (=> d!1747791 (=> res!2350603 e!3411513)))

(assert (=> d!1747791 (= res!2350603 (is-ElementMatch!15506 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))))))

(assert (=> d!1747791 (= (validRegex!7242 (ite c!964278 (regOne!31525 r!7292) (regOne!31524 r!7292))) e!3411513)))

(declare-fun b!5517081 () Bool)

(declare-fun res!2350600 () Bool)

(assert (=> b!5517081 (=> (not res!2350600) (not e!3411508))))

(assert (=> b!5517081 (= res!2350600 call!408303)))

(assert (=> b!5517081 (= e!3411507 e!3411508)))

(assert (= (and d!1747791 (not res!2350603)) b!5517082))

(assert (= (and b!5517082 c!964508) b!5517086))

(assert (= (and b!5517082 (not c!964508)) b!5517083))

(assert (= (and b!5517086 res!2350602) b!5517085))

(assert (= (and b!5517083 c!964507) b!5517081))

(assert (= (and b!5517083 (not c!964507)) b!5517078))

(assert (= (and b!5517081 res!2350600) b!5517084))

(assert (= (and b!5517078 (not res!2350599)) b!5517079))

(assert (= (and b!5517079 res!2350601) b!5517080))

(assert (= (or b!5517084 b!5517080) bm!408298))

(assert (= (or b!5517081 b!5517079) bm!408300))

(assert (= (or b!5517085 bm!408298) bm!408299))

(declare-fun m!6520826 () Bool)

(assert (=> bm!408299 m!6520826))

(declare-fun m!6520828 () Bool)

(assert (=> bm!408300 m!6520828))

(declare-fun m!6520830 () Bool)

(assert (=> b!5517086 m!6520830))

(assert (=> bm!408191 d!1747791))

(declare-fun d!1747793 () Bool)

(assert (=> d!1747793 true))

(declare-fun setRes!36679 () Bool)

(assert (=> d!1747793 setRes!36679))

(declare-fun condSetEmpty!36679 () Bool)

(declare-fun res!2350604 () (Set Context!9780))

(assert (=> d!1747793 (= condSetEmpty!36679 (= res!2350604 (as set.empty (Set Context!9780))))))

(assert (=> d!1747793 (= (choose!41928 lt!2246233 lambda!295662) res!2350604)))

(declare-fun setIsEmpty!36679 () Bool)

(assert (=> setIsEmpty!36679 setRes!36679))

(declare-fun tp!1517701 () Bool)

(declare-fun e!3411514 () Bool)

(declare-fun setElem!36679 () Context!9780)

(declare-fun setNonEmpty!36679 () Bool)

(assert (=> setNonEmpty!36679 (= setRes!36679 (and tp!1517701 (inv!82013 setElem!36679) e!3411514))))

(declare-fun setRest!36679 () (Set Context!9780))

(assert (=> setNonEmpty!36679 (= res!2350604 (set.union (set.insert setElem!36679 (as set.empty (Set Context!9780))) setRest!36679))))

(declare-fun b!5517087 () Bool)

(declare-fun tp!1517700 () Bool)

(assert (=> b!5517087 (= e!3411514 tp!1517700)))

(assert (= (and d!1747793 condSetEmpty!36679) setIsEmpty!36679))

(assert (= (and d!1747793 (not condSetEmpty!36679)) setNonEmpty!36679))

(assert (= setNonEmpty!36679 b!5517087))

(declare-fun m!6520832 () Bool)

(assert (=> setNonEmpty!36679 m!6520832))

(assert (=> d!1747615 d!1747793))

(declare-fun d!1747795 () Bool)

(assert (=> d!1747795 (= (isDefined!12218 lt!2246329) (not (isEmpty!34480 lt!2246329)))))

(declare-fun bs!1271419 () Bool)

(assert (= bs!1271419 d!1747795))

(declare-fun m!6520834 () Bool)

(assert (=> bs!1271419 m!6520834))

(assert (=> b!5516334 d!1747795))

(declare-fun d!1747797 () Bool)

(declare-fun lambda!295749 () Int)

(declare-fun exists!2138 ((Set Context!9780) Int) Bool)

(assert (=> d!1747797 (= (nullableZipper!1532 lt!2246218) (exists!2138 lt!2246218 lambda!295749))))

(declare-fun bs!1271420 () Bool)

(assert (= bs!1271420 d!1747797))

(declare-fun m!6520836 () Bool)

(assert (=> bs!1271420 m!6520836))

(assert (=> b!5516268 d!1747797))

(declare-fun d!1747799 () Bool)

(declare-fun c!964511 () Bool)

(assert (=> d!1747799 (= c!964511 (isEmpty!34479 (t!376068 s!2326)))))

(declare-fun e!3411515 () Bool)

(assert (=> d!1747799 (= (matchZipper!1664 (set.union lt!2246230 lt!2246215) (t!376068 s!2326)) e!3411515)))

(declare-fun b!5517088 () Bool)

(assert (=> b!5517088 (= e!3411515 (nullableZipper!1532 (set.union lt!2246230 lt!2246215)))))

(declare-fun b!5517089 () Bool)

(assert (=> b!5517089 (= e!3411515 (matchZipper!1664 (derivationStepZipper!1611 (set.union lt!2246230 lt!2246215) (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))))))

(assert (= (and d!1747799 c!964511) b!5517088))

(assert (= (and d!1747799 (not c!964511)) b!5517089))

(assert (=> d!1747799 m!6520234))

(declare-fun m!6520838 () Bool)

(assert (=> b!5517088 m!6520838))

(assert (=> b!5517089 m!6520238))

(assert (=> b!5517089 m!6520238))

(declare-fun m!6520840 () Bool)

(assert (=> b!5517089 m!6520840))

(assert (=> b!5517089 m!6520242))

(assert (=> b!5517089 m!6520840))

(assert (=> b!5517089 m!6520242))

(declare-fun m!6520842 () Bool)

(assert (=> b!5517089 m!6520842))

(assert (=> d!1747573 d!1747799))

(assert (=> d!1747573 d!1747571))

(declare-fun e!3411518 () Bool)

(declare-fun d!1747801 () Bool)

(assert (=> d!1747801 (= (matchZipper!1664 (set.union lt!2246230 lt!2246215) (t!376068 s!2326)) e!3411518)))

(declare-fun res!2350607 () Bool)

(assert (=> d!1747801 (=> res!2350607 e!3411518)))

(assert (=> d!1747801 (= res!2350607 (matchZipper!1664 lt!2246230 (t!376068 s!2326)))))

(assert (=> d!1747801 true))

(declare-fun _$48!1081 () Unit!155472)

(assert (=> d!1747801 (= (choose!41924 lt!2246230 lt!2246215 (t!376068 s!2326)) _$48!1081)))

(declare-fun b!5517092 () Bool)

(assert (=> b!5517092 (= e!3411518 (matchZipper!1664 lt!2246215 (t!376068 s!2326)))))

(assert (= (and d!1747801 (not res!2350607)) b!5517092))

(assert (=> d!1747801 m!6520258))

(assert (=> d!1747801 m!6520128))

(assert (=> b!5517092 m!6520132))

(assert (=> d!1747573 d!1747801))

(declare-fun bs!1271421 () Bool)

(declare-fun d!1747803 () Bool)

(assert (= bs!1271421 (and d!1747803 d!1747797)))

(declare-fun lambda!295750 () Int)

(assert (=> bs!1271421 (= lambda!295750 lambda!295749)))

(assert (=> d!1747803 (= (nullableZipper!1532 lt!2246215) (exists!2138 lt!2246215 lambda!295750))))

(declare-fun bs!1271422 () Bool)

(assert (= bs!1271422 d!1747803))

(declare-fun m!6520844 () Bool)

(assert (=> bs!1271422 m!6520844))

(assert (=> b!5516556 d!1747803))

(declare-fun d!1747805 () Bool)

(assert (=> d!1747805 (= (Exists!2606 lambda!295691) (choose!41925 lambda!295691))))

(declare-fun bs!1271423 () Bool)

(assert (= bs!1271423 d!1747805))

(declare-fun m!6520846 () Bool)

(assert (=> bs!1271423 m!6520846))

(assert (=> d!1747597 d!1747805))

(declare-fun d!1747807 () Bool)

(assert (=> d!1747807 (= (Exists!2606 lambda!295692) (choose!41925 lambda!295692))))

(declare-fun bs!1271424 () Bool)

(assert (= bs!1271424 d!1747807))

(declare-fun m!6520848 () Bool)

(assert (=> bs!1271424 m!6520848))

(assert (=> d!1747597 d!1747807))

(declare-fun bs!1271425 () Bool)

(declare-fun d!1747809 () Bool)

(assert (= bs!1271425 (and d!1747809 b!5516494)))

(declare-fun lambda!295755 () Int)

(assert (=> bs!1271425 (not (= lambda!295755 lambda!295707))))

(declare-fun bs!1271426 () Bool)

(assert (= bs!1271426 (and d!1747809 b!5516114)))

(assert (=> bs!1271426 (= lambda!295755 lambda!295660)))

(declare-fun bs!1271427 () Bool)

(assert (= bs!1271427 (and d!1747809 b!5516493)))

(assert (=> bs!1271427 (not (= lambda!295755 lambda!295706))))

(declare-fun bs!1271428 () Bool)

(assert (= bs!1271428 (and d!1747809 d!1747593)))

(assert (=> bs!1271428 (= lambda!295755 lambda!295686)))

(declare-fun bs!1271429 () Bool)

(assert (= bs!1271429 (and d!1747809 d!1747597)))

(assert (=> bs!1271429 (= lambda!295755 lambda!295691)))

(assert (=> bs!1271429 (not (= lambda!295755 lambda!295692))))

(assert (=> bs!1271426 (not (= lambda!295755 lambda!295661))))

(assert (=> d!1747809 true))

(assert (=> d!1747809 true))

(assert (=> d!1747809 true))

(declare-fun lambda!295756 () Int)

(assert (=> bs!1271425 (= lambda!295756 lambda!295707)))

(declare-fun bs!1271430 () Bool)

(assert (= bs!1271430 d!1747809))

(assert (=> bs!1271430 (not (= lambda!295756 lambda!295755))))

(assert (=> bs!1271426 (not (= lambda!295756 lambda!295660))))

(assert (=> bs!1271427 (not (= lambda!295756 lambda!295706))))

(assert (=> bs!1271428 (not (= lambda!295756 lambda!295686))))

(assert (=> bs!1271429 (not (= lambda!295756 lambda!295691))))

(assert (=> bs!1271429 (= lambda!295756 lambda!295692)))

(assert (=> bs!1271426 (= lambda!295756 lambda!295661)))

(assert (=> d!1747809 true))

(assert (=> d!1747809 true))

(assert (=> d!1747809 true))

(assert (=> d!1747809 (= (Exists!2606 lambda!295755) (Exists!2606 lambda!295756))))

(assert (=> d!1747809 true))

(declare-fun _$90!1235 () Unit!155472)

(assert (=> d!1747809 (= (choose!41927 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326) _$90!1235)))

(declare-fun m!6520850 () Bool)

(assert (=> bs!1271430 m!6520850))

(declare-fun m!6520852 () Bool)

(assert (=> bs!1271430 m!6520852))

(assert (=> d!1747597 d!1747809))

(declare-fun bm!408301 () Bool)

(declare-fun call!408308 () Bool)

(declare-fun call!408307 () Bool)

(assert (=> bm!408301 (= call!408308 call!408307)))

(declare-fun c!964513 () Bool)

(declare-fun bm!408302 () Bool)

(declare-fun c!964512 () Bool)

(assert (=> bm!408302 (= call!408307 (validRegex!7242 (ite c!964513 (reg!15835 (regOne!31524 r!7292)) (ite c!964512 (regTwo!31525 (regOne!31524 r!7292)) (regTwo!31524 (regOne!31524 r!7292))))))))

(declare-fun b!5517101 () Bool)

(declare-fun res!2350616 () Bool)

(declare-fun e!3411527 () Bool)

(assert (=> b!5517101 (=> res!2350616 e!3411527)))

(assert (=> b!5517101 (= res!2350616 (not (is-Concat!24351 (regOne!31524 r!7292))))))

(declare-fun e!3411523 () Bool)

(assert (=> b!5517101 (= e!3411523 e!3411527)))

(declare-fun b!5517102 () Bool)

(declare-fun e!3411526 () Bool)

(assert (=> b!5517102 (= e!3411527 e!3411526)))

(declare-fun res!2350618 () Bool)

(assert (=> b!5517102 (=> (not res!2350618) (not e!3411526))))

(declare-fun call!408306 () Bool)

(assert (=> b!5517102 (= res!2350618 call!408306)))

(declare-fun b!5517103 () Bool)

(assert (=> b!5517103 (= e!3411526 call!408308)))

(declare-fun b!5517105 () Bool)

(declare-fun e!3411529 () Bool)

(declare-fun e!3411525 () Bool)

(assert (=> b!5517105 (= e!3411529 e!3411525)))

(assert (=> b!5517105 (= c!964513 (is-Star!15506 (regOne!31524 r!7292)))))

(declare-fun b!5517106 () Bool)

(assert (=> b!5517106 (= e!3411525 e!3411523)))

(assert (=> b!5517106 (= c!964512 (is-Union!15506 (regOne!31524 r!7292)))))

(declare-fun b!5517107 () Bool)

(declare-fun e!3411524 () Bool)

(assert (=> b!5517107 (= e!3411524 call!408308)))

(declare-fun b!5517108 () Bool)

(declare-fun e!3411528 () Bool)

(assert (=> b!5517108 (= e!3411528 call!408307)))

(declare-fun bm!408303 () Bool)

(assert (=> bm!408303 (= call!408306 (validRegex!7242 (ite c!964512 (regOne!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))))))

(declare-fun b!5517109 () Bool)

(assert (=> b!5517109 (= e!3411525 e!3411528)))

(declare-fun res!2350619 () Bool)

(assert (=> b!5517109 (= res!2350619 (not (nullable!5540 (reg!15835 (regOne!31524 r!7292)))))))

(assert (=> b!5517109 (=> (not res!2350619) (not e!3411528))))

(declare-fun d!1747811 () Bool)

(declare-fun res!2350620 () Bool)

(assert (=> d!1747811 (=> res!2350620 e!3411529)))

(assert (=> d!1747811 (= res!2350620 (is-ElementMatch!15506 (regOne!31524 r!7292)))))

(assert (=> d!1747811 (= (validRegex!7242 (regOne!31524 r!7292)) e!3411529)))

(declare-fun b!5517104 () Bool)

(declare-fun res!2350617 () Bool)

(assert (=> b!5517104 (=> (not res!2350617) (not e!3411524))))

(assert (=> b!5517104 (= res!2350617 call!408306)))

(assert (=> b!5517104 (= e!3411523 e!3411524)))

(assert (= (and d!1747811 (not res!2350620)) b!5517105))

(assert (= (and b!5517105 c!964513) b!5517109))

(assert (= (and b!5517105 (not c!964513)) b!5517106))

(assert (= (and b!5517109 res!2350619) b!5517108))

(assert (= (and b!5517106 c!964512) b!5517104))

(assert (= (and b!5517106 (not c!964512)) b!5517101))

(assert (= (and b!5517104 res!2350617) b!5517107))

(assert (= (and b!5517101 (not res!2350616)) b!5517102))

(assert (= (and b!5517102 res!2350618) b!5517103))

(assert (= (or b!5517107 b!5517103) bm!408301))

(assert (= (or b!5517104 b!5517102) bm!408303))

(assert (= (or b!5517108 bm!408301) bm!408302))

(declare-fun m!6520854 () Bool)

(assert (=> bm!408302 m!6520854))

(declare-fun m!6520856 () Bool)

(assert (=> bm!408303 m!6520856))

(declare-fun m!6520858 () Bool)

(assert (=> b!5517109 m!6520858))

(assert (=> d!1747597 d!1747811))

(declare-fun d!1747813 () Bool)

(assert (=> d!1747813 true))

(assert (=> d!1747813 true))

(declare-fun res!2350623 () Bool)

(assert (=> d!1747813 (= (choose!41925 lambda!295660) res!2350623)))

(assert (=> d!1747591 d!1747813))

(declare-fun d!1747815 () Bool)

(declare-fun res!2350628 () Bool)

(declare-fun e!3411534 () Bool)

(assert (=> d!1747815 (=> res!2350628 e!3411534)))

(assert (=> d!1747815 (= res!2350628 (is-Nil!62693 (exprs!5390 setElem!36666)))))

(assert (=> d!1747815 (= (forall!14680 (exprs!5390 setElem!36666) lambda!295701) e!3411534)))

(declare-fun b!5517114 () Bool)

(declare-fun e!3411535 () Bool)

(assert (=> b!5517114 (= e!3411534 e!3411535)))

(declare-fun res!2350629 () Bool)

(assert (=> b!5517114 (=> (not res!2350629) (not e!3411535))))

(declare-fun dynLambda!24495 (Int Regex!15506) Bool)

(assert (=> b!5517114 (= res!2350629 (dynLambda!24495 lambda!295701 (h!69141 (exprs!5390 setElem!36666))))))

(declare-fun b!5517115 () Bool)

(assert (=> b!5517115 (= e!3411535 (forall!14680 (t!376066 (exprs!5390 setElem!36666)) lambda!295701))))

(assert (= (and d!1747815 (not res!2350628)) b!5517114))

(assert (= (and b!5517114 res!2350629) b!5517115))

(declare-fun b_lambda!209163 () Bool)

(assert (=> (not b_lambda!209163) (not b!5517114)))

(declare-fun m!6520860 () Bool)

(assert (=> b!5517114 m!6520860))

(declare-fun m!6520862 () Bool)

(assert (=> b!5517115 m!6520862))

(assert (=> d!1747629 d!1747815))

(declare-fun d!1747817 () Bool)

(declare-fun c!964514 () Bool)

(assert (=> d!1747817 (= c!964514 (isEmpty!34479 (tail!10910 (t!376068 s!2326))))))

(declare-fun e!3411536 () Bool)

(assert (=> d!1747817 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246220 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))) e!3411536)))

(declare-fun b!5517116 () Bool)

(assert (=> b!5517116 (= e!3411536 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246220 (head!11815 (t!376068 s!2326)))))))

(declare-fun b!5517117 () Bool)

(assert (=> b!5517117 (= e!3411536 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246220 (head!11815 (t!376068 s!2326))) (head!11815 (tail!10910 (t!376068 s!2326)))) (tail!10910 (tail!10910 (t!376068 s!2326)))))))

(assert (= (and d!1747817 c!964514) b!5517116))

(assert (= (and d!1747817 (not c!964514)) b!5517117))

(assert (=> d!1747817 m!6520242))

(assert (=> d!1747817 m!6520748))

(assert (=> b!5517116 m!6520240))

(declare-fun m!6520864 () Bool)

(assert (=> b!5517116 m!6520864))

(assert (=> b!5517117 m!6520242))

(assert (=> b!5517117 m!6520752))

(assert (=> b!5517117 m!6520240))

(assert (=> b!5517117 m!6520752))

(declare-fun m!6520866 () Bool)

(assert (=> b!5517117 m!6520866))

(assert (=> b!5517117 m!6520242))

(assert (=> b!5517117 m!6520756))

(assert (=> b!5517117 m!6520866))

(assert (=> b!5517117 m!6520756))

(declare-fun m!6520868 () Bool)

(assert (=> b!5517117 m!6520868))

(assert (=> b!5516267 d!1747817))

(declare-fun bs!1271431 () Bool)

(declare-fun d!1747819 () Bool)

(assert (= bs!1271431 (and d!1747819 b!5516115)))

(declare-fun lambda!295757 () Int)

(assert (=> bs!1271431 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295757 lambda!295662))))

(declare-fun bs!1271432 () Bool)

(assert (= bs!1271432 (and d!1747819 d!1747653)))

(assert (=> bs!1271432 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295757 lambda!295710))))

(declare-fun bs!1271433 () Bool)

(assert (= bs!1271433 (and d!1747819 d!1747759)))

(assert (=> bs!1271433 (= lambda!295757 lambda!295744)))

(declare-fun bs!1271434 () Bool)

(assert (= bs!1271434 (and d!1747819 d!1747643)))

(assert (=> bs!1271434 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295757 lambda!295709))))

(declare-fun bs!1271435 () Bool)

(assert (= bs!1271435 (and d!1747819 d!1747587)))

(assert (=> bs!1271435 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295757 lambda!295683))))

(assert (=> d!1747819 true))

(assert (=> d!1747819 (= (derivationStepZipper!1611 lt!2246220 (head!11815 (t!376068 s!2326))) (flatMap!1119 lt!2246220 lambda!295757))))

(declare-fun bs!1271436 () Bool)

(assert (= bs!1271436 d!1747819))

(declare-fun m!6520870 () Bool)

(assert (=> bs!1271436 m!6520870))

(assert (=> b!5516267 d!1747819))

(assert (=> b!5516267 d!1747761))

(assert (=> b!5516267 d!1747763))

(assert (=> d!1747589 d!1747795))

(declare-fun b!5517118 () Bool)

(declare-fun e!3411539 () Bool)

(declare-fun lt!2246405 () Bool)

(assert (=> b!5517118 (= e!3411539 (not lt!2246405))))

(declare-fun d!1747821 () Bool)

(declare-fun e!3411541 () Bool)

(assert (=> d!1747821 e!3411541))

(declare-fun c!964516 () Bool)

(assert (=> d!1747821 (= c!964516 (is-EmptyExpr!15506 (regOne!31524 r!7292)))))

(declare-fun e!3411543 () Bool)

(assert (=> d!1747821 (= lt!2246405 e!3411543)))

(declare-fun c!964517 () Bool)

(assert (=> d!1747821 (= c!964517 (isEmpty!34479 Nil!62695))))

(assert (=> d!1747821 (validRegex!7242 (regOne!31524 r!7292))))

(assert (=> d!1747821 (= (matchR!7691 (regOne!31524 r!7292) Nil!62695) lt!2246405)))

(declare-fun b!5517119 () Bool)

(declare-fun e!3411537 () Bool)

(assert (=> b!5517119 (= e!3411537 (= (head!11815 Nil!62695) (c!964265 (regOne!31524 r!7292))))))

(declare-fun b!5517120 () Bool)

(declare-fun e!3411538 () Bool)

(declare-fun e!3411542 () Bool)

(assert (=> b!5517120 (= e!3411538 e!3411542)))

(declare-fun res!2350630 () Bool)

(assert (=> b!5517120 (=> res!2350630 e!3411542)))

(declare-fun call!408309 () Bool)

(assert (=> b!5517120 (= res!2350630 call!408309)))

(declare-fun b!5517121 () Bool)

(declare-fun e!3411540 () Bool)

(assert (=> b!5517121 (= e!3411540 e!3411538)))

(declare-fun res!2350631 () Bool)

(assert (=> b!5517121 (=> (not res!2350631) (not e!3411538))))

(assert (=> b!5517121 (= res!2350631 (not lt!2246405))))

(declare-fun b!5517122 () Bool)

(assert (=> b!5517122 (= e!3411542 (not (= (head!11815 Nil!62695) (c!964265 (regOne!31524 r!7292)))))))

(declare-fun b!5517123 () Bool)

(assert (=> b!5517123 (= e!3411541 (= lt!2246405 call!408309))))

(declare-fun b!5517124 () Bool)

(declare-fun res!2350636 () Bool)

(assert (=> b!5517124 (=> res!2350636 e!3411542)))

(assert (=> b!5517124 (= res!2350636 (not (isEmpty!34479 (tail!10910 Nil!62695))))))

(declare-fun b!5517125 () Bool)

(assert (=> b!5517125 (= e!3411541 e!3411539)))

(declare-fun c!964515 () Bool)

(assert (=> b!5517125 (= c!964515 (is-EmptyLang!15506 (regOne!31524 r!7292)))))

(declare-fun b!5517126 () Bool)

(declare-fun res!2350635 () Bool)

(assert (=> b!5517126 (=> res!2350635 e!3411540)))

(assert (=> b!5517126 (= res!2350635 (not (is-ElementMatch!15506 (regOne!31524 r!7292))))))

(assert (=> b!5517126 (= e!3411539 e!3411540)))

(declare-fun b!5517127 () Bool)

(assert (=> b!5517127 (= e!3411543 (nullable!5540 (regOne!31524 r!7292)))))

(declare-fun b!5517128 () Bool)

(declare-fun res!2350632 () Bool)

(assert (=> b!5517128 (=> (not res!2350632) (not e!3411537))))

(assert (=> b!5517128 (= res!2350632 (isEmpty!34479 (tail!10910 Nil!62695)))))

(declare-fun bm!408304 () Bool)

(assert (=> bm!408304 (= call!408309 (isEmpty!34479 Nil!62695))))

(declare-fun b!5517129 () Bool)

(declare-fun res!2350633 () Bool)

(assert (=> b!5517129 (=> res!2350633 e!3411540)))

(assert (=> b!5517129 (= res!2350633 e!3411537)))

(declare-fun res!2350634 () Bool)

(assert (=> b!5517129 (=> (not res!2350634) (not e!3411537))))

(assert (=> b!5517129 (= res!2350634 lt!2246405)))

(declare-fun b!5517130 () Bool)

(declare-fun res!2350637 () Bool)

(assert (=> b!5517130 (=> (not res!2350637) (not e!3411537))))

(assert (=> b!5517130 (= res!2350637 (not call!408309))))

(declare-fun b!5517131 () Bool)

(assert (=> b!5517131 (= e!3411543 (matchR!7691 (derivativeStep!4371 (regOne!31524 r!7292) (head!11815 Nil!62695)) (tail!10910 Nil!62695)))))

(assert (= (and d!1747821 c!964517) b!5517127))

(assert (= (and d!1747821 (not c!964517)) b!5517131))

(assert (= (and d!1747821 c!964516) b!5517123))

(assert (= (and d!1747821 (not c!964516)) b!5517125))

(assert (= (and b!5517125 c!964515) b!5517118))

(assert (= (and b!5517125 (not c!964515)) b!5517126))

(assert (= (and b!5517126 (not res!2350635)) b!5517129))

(assert (= (and b!5517129 res!2350634) b!5517130))

(assert (= (and b!5517130 res!2350637) b!5517128))

(assert (= (and b!5517128 res!2350632) b!5517119))

(assert (= (and b!5517129 (not res!2350633)) b!5517121))

(assert (= (and b!5517121 res!2350631) b!5517120))

(assert (= (and b!5517120 (not res!2350630)) b!5517124))

(assert (= (and b!5517124 (not res!2350636)) b!5517122))

(assert (= (or b!5517123 b!5517120 b!5517130) bm!408304))

(declare-fun m!6520872 () Bool)

(assert (=> b!5517124 m!6520872))

(assert (=> b!5517124 m!6520872))

(declare-fun m!6520874 () Bool)

(assert (=> b!5517124 m!6520874))

(assert (=> b!5517128 m!6520872))

(assert (=> b!5517128 m!6520872))

(assert (=> b!5517128 m!6520874))

(declare-fun m!6520876 () Bool)

(assert (=> bm!408304 m!6520876))

(declare-fun m!6520878 () Bool)

(assert (=> b!5517131 m!6520878))

(assert (=> b!5517131 m!6520878))

(declare-fun m!6520880 () Bool)

(assert (=> b!5517131 m!6520880))

(assert (=> b!5517131 m!6520872))

(assert (=> b!5517131 m!6520880))

(assert (=> b!5517131 m!6520872))

(declare-fun m!6520882 () Bool)

(assert (=> b!5517131 m!6520882))

(assert (=> b!5517119 m!6520878))

(assert (=> b!5517127 m!6520094))

(assert (=> b!5517122 m!6520878))

(assert (=> d!1747821 m!6520876))

(assert (=> d!1747821 m!6520306))

(assert (=> d!1747589 d!1747821))

(assert (=> d!1747589 d!1747811))

(declare-fun bm!408305 () Bool)

(declare-fun call!408313 () List!62817)

(declare-fun call!408310 () List!62817)

(assert (=> bm!408305 (= call!408313 call!408310)))

(declare-fun b!5517132 () Bool)

(declare-fun e!3411544 () (Set Context!9780))

(declare-fun e!3411548 () (Set Context!9780))

(assert (=> b!5517132 (= e!3411544 e!3411548)))

(declare-fun c!964521 () Bool)

(assert (=> b!5517132 (= c!964521 (is-Union!15506 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))))))

(declare-fun b!5517133 () Bool)

(declare-fun e!3411547 () (Set Context!9780))

(declare-fun call!408311 () (Set Context!9780))

(declare-fun call!408312 () (Set Context!9780))

(assert (=> b!5517133 (= e!3411547 (set.union call!408311 call!408312))))

(declare-fun b!5517134 () Bool)

(declare-fun e!3411549 () (Set Context!9780))

(assert (=> b!5517134 (= e!3411549 (as set.empty (Set Context!9780)))))

(declare-fun b!5517135 () Bool)

(declare-fun e!3411546 () (Set Context!9780))

(declare-fun call!408315 () (Set Context!9780))

(assert (=> b!5517135 (= e!3411546 call!408315)))

(declare-fun b!5517136 () Bool)

(declare-fun call!408314 () (Set Context!9780))

(assert (=> b!5517136 (= e!3411548 (set.union call!408314 call!408311))))

(declare-fun b!5517137 () Bool)

(assert (=> b!5517137 (= e!3411547 e!3411546)))

(declare-fun c!964520 () Bool)

(assert (=> b!5517137 (= c!964520 (is-Concat!24351 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))))))

(declare-fun c!964518 () Bool)

(declare-fun d!1747823 () Bool)

(assert (=> d!1747823 (= c!964518 (and (is-ElementMatch!15506 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))) (= (c!964265 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))) (h!69143 s!2326))))))

(assert (=> d!1747823 (= (derivationStepZipperDown!848 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292))) (ite c!964345 lt!2246224 (Context!9781 call!408214)) (h!69143 s!2326)) e!3411544)))

(declare-fun bm!408306 () Bool)

(assert (=> bm!408306 (= call!408315 call!408312)))

(declare-fun b!5517138 () Bool)

(assert (=> b!5517138 (= e!3411544 (set.insert (ite c!964345 lt!2246224 (Context!9781 call!408214)) (as set.empty (Set Context!9780))))))

(declare-fun c!964519 () Bool)

(declare-fun bm!408307 () Bool)

(assert (=> bm!408307 (= call!408310 ($colon$colon!1585 (exprs!5390 (ite c!964345 lt!2246224 (Context!9781 call!408214))) (ite (or c!964519 c!964520) (regTwo!31524 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))) (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292))))))))

(declare-fun b!5517139 () Bool)

(declare-fun c!964522 () Bool)

(assert (=> b!5517139 (= c!964522 (is-Star!15506 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))))))

(assert (=> b!5517139 (= e!3411546 e!3411549)))

(declare-fun bm!408308 () Bool)

(assert (=> bm!408308 (= call!408311 (derivationStepZipperDown!848 (ite c!964521 (regTwo!31525 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))) (regOne!31524 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292))))) (ite c!964521 (ite c!964345 lt!2246224 (Context!9781 call!408214)) (Context!9781 call!408310)) (h!69143 s!2326)))))

(declare-fun b!5517140 () Bool)

(assert (=> b!5517140 (= e!3411549 call!408315)))

(declare-fun bm!408309 () Bool)

(assert (=> bm!408309 (= call!408312 call!408314)))

(declare-fun b!5517141 () Bool)

(declare-fun e!3411545 () Bool)

(assert (=> b!5517141 (= e!3411545 (nullable!5540 (regOne!31524 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292))))))))

(declare-fun b!5517142 () Bool)

(assert (=> b!5517142 (= c!964519 e!3411545)))

(declare-fun res!2350638 () Bool)

(assert (=> b!5517142 (=> (not res!2350638) (not e!3411545))))

(assert (=> b!5517142 (= res!2350638 (is-Concat!24351 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))))))

(assert (=> b!5517142 (= e!3411548 e!3411547)))

(declare-fun bm!408310 () Bool)

(assert (=> bm!408310 (= call!408314 (derivationStepZipperDown!848 (ite c!964521 (regOne!31525 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))) (ite c!964519 (regTwo!31524 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))) (ite c!964520 (regOne!31524 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292)))) (reg!15835 (ite c!964345 (regTwo!31525 (regTwo!31524 r!7292)) (regOne!31524 (regTwo!31524 r!7292))))))) (ite (or c!964521 c!964519) (ite c!964345 lt!2246224 (Context!9781 call!408214)) (Context!9781 call!408313)) (h!69143 s!2326)))))

(assert (= (and d!1747823 c!964518) b!5517138))

(assert (= (and d!1747823 (not c!964518)) b!5517132))

(assert (= (and b!5517132 c!964521) b!5517136))

(assert (= (and b!5517132 (not c!964521)) b!5517142))

(assert (= (and b!5517142 res!2350638) b!5517141))

(assert (= (and b!5517142 c!964519) b!5517133))

(assert (= (and b!5517142 (not c!964519)) b!5517137))

(assert (= (and b!5517137 c!964520) b!5517135))

(assert (= (and b!5517137 (not c!964520)) b!5517139))

(assert (= (and b!5517139 c!964522) b!5517140))

(assert (= (and b!5517139 (not c!964522)) b!5517134))

(assert (= (or b!5517135 b!5517140) bm!408305))

(assert (= (or b!5517135 b!5517140) bm!408306))

(assert (= (or b!5517133 bm!408305) bm!408307))

(assert (= (or b!5517133 bm!408306) bm!408309))

(assert (= (or b!5517136 b!5517133) bm!408308))

(assert (= (or b!5517136 bm!408309) bm!408310))

(declare-fun m!6520884 () Bool)

(assert (=> bm!408308 m!6520884))

(declare-fun m!6520886 () Bool)

(assert (=> b!5517141 m!6520886))

(declare-fun m!6520888 () Bool)

(assert (=> b!5517138 m!6520888))

(declare-fun m!6520890 () Bool)

(assert (=> bm!408307 m!6520890))

(declare-fun m!6520892 () Bool)

(assert (=> bm!408310 m!6520892))

(assert (=> bm!408212 d!1747823))

(declare-fun bm!408311 () Bool)

(declare-fun call!408318 () Bool)

(declare-fun call!408317 () Bool)

(assert (=> bm!408311 (= call!408318 call!408317)))

(declare-fun c!964523 () Bool)

(declare-fun bm!408312 () Bool)

(declare-fun c!964524 () Bool)

(assert (=> bm!408312 (= call!408317 (validRegex!7242 (ite c!964524 (reg!15835 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))) (ite c!964523 (regTwo!31525 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))) (regTwo!31524 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292))))))))))

(declare-fun b!5517143 () Bool)

(declare-fun res!2350639 () Bool)

(declare-fun e!3411554 () Bool)

(assert (=> b!5517143 (=> res!2350639 e!3411554)))

(assert (=> b!5517143 (= res!2350639 (not (is-Concat!24351 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292))))))))

(declare-fun e!3411550 () Bool)

(assert (=> b!5517143 (= e!3411550 e!3411554)))

(declare-fun b!5517144 () Bool)

(declare-fun e!3411553 () Bool)

(assert (=> b!5517144 (= e!3411554 e!3411553)))

(declare-fun res!2350641 () Bool)

(assert (=> b!5517144 (=> (not res!2350641) (not e!3411553))))

(declare-fun call!408316 () Bool)

(assert (=> b!5517144 (= res!2350641 call!408316)))

(declare-fun b!5517145 () Bool)

(assert (=> b!5517145 (= e!3411553 call!408318)))

(declare-fun b!5517147 () Bool)

(declare-fun e!3411556 () Bool)

(declare-fun e!3411552 () Bool)

(assert (=> b!5517147 (= e!3411556 e!3411552)))

(assert (=> b!5517147 (= c!964524 (is-Star!15506 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))))))

(declare-fun b!5517148 () Bool)

(assert (=> b!5517148 (= e!3411552 e!3411550)))

(assert (=> b!5517148 (= c!964523 (is-Union!15506 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))))))

(declare-fun b!5517149 () Bool)

(declare-fun e!3411551 () Bool)

(assert (=> b!5517149 (= e!3411551 call!408318)))

(declare-fun b!5517150 () Bool)

(declare-fun e!3411555 () Bool)

(assert (=> b!5517150 (= e!3411555 call!408317)))

(declare-fun bm!408313 () Bool)

(assert (=> bm!408313 (= call!408316 (validRegex!7242 (ite c!964523 (regOne!31525 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))) (regOne!31524 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))))))))

(declare-fun b!5517151 () Bool)

(assert (=> b!5517151 (= e!3411552 e!3411555)))

(declare-fun res!2350642 () Bool)

(assert (=> b!5517151 (= res!2350642 (not (nullable!5540 (reg!15835 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))))))))

(assert (=> b!5517151 (=> (not res!2350642) (not e!3411555))))

(declare-fun d!1747825 () Bool)

(declare-fun res!2350643 () Bool)

(assert (=> d!1747825 (=> res!2350643 e!3411556)))

(assert (=> d!1747825 (= res!2350643 (is-ElementMatch!15506 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))))))

(assert (=> d!1747825 (= (validRegex!7242 (ite c!964279 (reg!15835 r!7292) (ite c!964278 (regTwo!31525 r!7292) (regTwo!31524 r!7292)))) e!3411556)))

(declare-fun b!5517146 () Bool)

(declare-fun res!2350640 () Bool)

(assert (=> b!5517146 (=> (not res!2350640) (not e!3411551))))

(assert (=> b!5517146 (= res!2350640 call!408316)))

(assert (=> b!5517146 (= e!3411550 e!3411551)))

(assert (= (and d!1747825 (not res!2350643)) b!5517147))

(assert (= (and b!5517147 c!964524) b!5517151))

(assert (= (and b!5517147 (not c!964524)) b!5517148))

(assert (= (and b!5517151 res!2350642) b!5517150))

(assert (= (and b!5517148 c!964523) b!5517146))

(assert (= (and b!5517148 (not c!964523)) b!5517143))

(assert (= (and b!5517146 res!2350640) b!5517149))

(assert (= (and b!5517143 (not res!2350639)) b!5517144))

(assert (= (and b!5517144 res!2350641) b!5517145))

(assert (= (or b!5517149 b!5517145) bm!408311))

(assert (= (or b!5517146 b!5517144) bm!408313))

(assert (= (or b!5517150 bm!408311) bm!408312))

(declare-fun m!6520894 () Bool)

(assert (=> bm!408312 m!6520894))

(declare-fun m!6520896 () Bool)

(assert (=> bm!408313 m!6520896))

(declare-fun m!6520898 () Bool)

(assert (=> b!5517151 m!6520898))

(assert (=> bm!408190 d!1747825))

(assert (=> d!1747585 d!1747769))

(declare-fun bs!1271437 () Bool)

(declare-fun d!1747827 () Bool)

(assert (= bs!1271437 (and d!1747827 d!1747797)))

(declare-fun lambda!295758 () Int)

(assert (=> bs!1271437 (= lambda!295758 lambda!295749)))

(declare-fun bs!1271438 () Bool)

(assert (= bs!1271438 (and d!1747827 d!1747803)))

(assert (=> bs!1271438 (= lambda!295758 lambda!295750)))

(assert (=> d!1747827 (= (nullableZipper!1532 lt!2246230) (exists!2138 lt!2246230 lambda!295758))))

(declare-fun bs!1271439 () Bool)

(assert (= bs!1271439 d!1747827))

(declare-fun m!6520900 () Bool)

(assert (=> bs!1271439 m!6520900))

(assert (=> b!5516270 d!1747827))

(declare-fun bm!408314 () Bool)

(declare-fun call!408321 () Bool)

(declare-fun call!408320 () Bool)

(assert (=> bm!408314 (= call!408321 call!408320)))

(declare-fun c!964526 () Bool)

(declare-fun bm!408315 () Bool)

(declare-fun c!964525 () Bool)

(assert (=> bm!408315 (= call!408320 (validRegex!7242 (ite c!964526 (reg!15835 lt!2246343) (ite c!964525 (regTwo!31525 lt!2246343) (regTwo!31524 lt!2246343)))))))

(declare-fun b!5517152 () Bool)

(declare-fun res!2350644 () Bool)

(declare-fun e!3411561 () Bool)

(assert (=> b!5517152 (=> res!2350644 e!3411561)))

(assert (=> b!5517152 (= res!2350644 (not (is-Concat!24351 lt!2246343)))))

(declare-fun e!3411557 () Bool)

(assert (=> b!5517152 (= e!3411557 e!3411561)))

(declare-fun b!5517153 () Bool)

(declare-fun e!3411560 () Bool)

(assert (=> b!5517153 (= e!3411561 e!3411560)))

(declare-fun res!2350646 () Bool)

(assert (=> b!5517153 (=> (not res!2350646) (not e!3411560))))

(declare-fun call!408319 () Bool)

(assert (=> b!5517153 (= res!2350646 call!408319)))

(declare-fun b!5517154 () Bool)

(assert (=> b!5517154 (= e!3411560 call!408321)))

(declare-fun b!5517156 () Bool)

(declare-fun e!3411563 () Bool)

(declare-fun e!3411559 () Bool)

(assert (=> b!5517156 (= e!3411563 e!3411559)))

(assert (=> b!5517156 (= c!964526 (is-Star!15506 lt!2246343))))

(declare-fun b!5517157 () Bool)

(assert (=> b!5517157 (= e!3411559 e!3411557)))

(assert (=> b!5517157 (= c!964525 (is-Union!15506 lt!2246343))))

(declare-fun b!5517158 () Bool)

(declare-fun e!3411558 () Bool)

(assert (=> b!5517158 (= e!3411558 call!408321)))

(declare-fun b!5517159 () Bool)

(declare-fun e!3411562 () Bool)

(assert (=> b!5517159 (= e!3411562 call!408320)))

(declare-fun bm!408316 () Bool)

(assert (=> bm!408316 (= call!408319 (validRegex!7242 (ite c!964525 (regOne!31525 lt!2246343) (regOne!31524 lt!2246343))))))

(declare-fun b!5517160 () Bool)

(assert (=> b!5517160 (= e!3411559 e!3411562)))

(declare-fun res!2350647 () Bool)

(assert (=> b!5517160 (= res!2350647 (not (nullable!5540 (reg!15835 lt!2246343))))))

(assert (=> b!5517160 (=> (not res!2350647) (not e!3411562))))

(declare-fun d!1747829 () Bool)

(declare-fun res!2350648 () Bool)

(assert (=> d!1747829 (=> res!2350648 e!3411563)))

(assert (=> d!1747829 (= res!2350648 (is-ElementMatch!15506 lt!2246343))))

(assert (=> d!1747829 (= (validRegex!7242 lt!2246343) e!3411563)))

(declare-fun b!5517155 () Bool)

(declare-fun res!2350645 () Bool)

(assert (=> b!5517155 (=> (not res!2350645) (not e!3411558))))

(assert (=> b!5517155 (= res!2350645 call!408319)))

(assert (=> b!5517155 (= e!3411557 e!3411558)))

(assert (= (and d!1747829 (not res!2350648)) b!5517156))

(assert (= (and b!5517156 c!964526) b!5517160))

(assert (= (and b!5517156 (not c!964526)) b!5517157))

(assert (= (and b!5517160 res!2350647) b!5517159))

(assert (= (and b!5517157 c!964525) b!5517155))

(assert (= (and b!5517157 (not c!964525)) b!5517152))

(assert (= (and b!5517155 res!2350645) b!5517158))

(assert (= (and b!5517152 (not res!2350644)) b!5517153))

(assert (= (and b!5517153 res!2350646) b!5517154))

(assert (= (or b!5517158 b!5517154) bm!408314))

(assert (= (or b!5517155 b!5517153) bm!408316))

(assert (= (or b!5517159 bm!408314) bm!408315))

(declare-fun m!6520902 () Bool)

(assert (=> bm!408315 m!6520902))

(declare-fun m!6520904 () Bool)

(assert (=> bm!408316 m!6520904))

(declare-fun m!6520906 () Bool)

(assert (=> b!5517160 m!6520906))

(assert (=> d!1747607 d!1747829))

(declare-fun d!1747831 () Bool)

(declare-fun res!2350649 () Bool)

(declare-fun e!3411564 () Bool)

(assert (=> d!1747831 (=> res!2350649 e!3411564)))

(assert (=> d!1747831 (= res!2350649 (is-Nil!62693 (unfocusZipperList!934 zl!343)))))

(assert (=> d!1747831 (= (forall!14680 (unfocusZipperList!934 zl!343) lambda!295695) e!3411564)))

(declare-fun b!5517161 () Bool)

(declare-fun e!3411565 () Bool)

(assert (=> b!5517161 (= e!3411564 e!3411565)))

(declare-fun res!2350650 () Bool)

(assert (=> b!5517161 (=> (not res!2350650) (not e!3411565))))

(assert (=> b!5517161 (= res!2350650 (dynLambda!24495 lambda!295695 (h!69141 (unfocusZipperList!934 zl!343))))))

(declare-fun b!5517162 () Bool)

(assert (=> b!5517162 (= e!3411565 (forall!14680 (t!376066 (unfocusZipperList!934 zl!343)) lambda!295695))))

(assert (= (and d!1747831 (not res!2350649)) b!5517161))

(assert (= (and b!5517161 res!2350650) b!5517162))

(declare-fun b_lambda!209165 () Bool)

(assert (=> (not b_lambda!209165) (not b!5517161)))

(declare-fun m!6520908 () Bool)

(assert (=> b!5517161 m!6520908))

(declare-fun m!6520910 () Bool)

(assert (=> b!5517162 m!6520910))

(assert (=> d!1747607 d!1747831))

(declare-fun d!1747833 () Bool)

(assert (=> d!1747833 (= (nullable!5540 (regOne!31524 (regOne!31524 r!7292))) (nullableFct!1664 (regOne!31524 (regOne!31524 r!7292))))))

(declare-fun bs!1271440 () Bool)

(assert (= bs!1271440 d!1747833))

(declare-fun m!6520912 () Bool)

(assert (=> bs!1271440 m!6520912))

(assert (=> b!5516453 d!1747833))

(assert (=> d!1747635 d!1747633))

(assert (=> d!1747635 d!1747631))

(declare-fun d!1747835 () Bool)

(assert (=> d!1747835 (= (matchR!7691 r!7292 s!2326) (matchRSpec!2609 r!7292 s!2326))))

(assert (=> d!1747835 true))

(declare-fun _$88!3781 () Unit!155472)

(assert (=> d!1747835 (= (choose!41930 r!7292 s!2326) _$88!3781)))

(declare-fun bs!1271441 () Bool)

(assert (= bs!1271441 d!1747835))

(assert (=> bs!1271441 m!6520054))

(assert (=> bs!1271441 m!6520052))

(assert (=> d!1747635 d!1747835))

(assert (=> d!1747635 d!1747565))

(declare-fun d!1747837 () Bool)

(assert (=> d!1747837 (= ($colon$colon!1585 (exprs!5390 lt!2246224) (ite (or c!964374 c!964375) (regTwo!31524 r!7292) r!7292)) (Cons!62693 (ite (or c!964374 c!964375) (regTwo!31524 r!7292) r!7292) (exprs!5390 lt!2246224)))))

(assert (=> bm!408232 d!1747837))

(declare-fun d!1747839 () Bool)

(assert (=> d!1747839 (= (isEmpty!34479 s!2326) (is-Nil!62695 s!2326))))

(assert (=> bm!408229 d!1747839))

(declare-fun d!1747841 () Bool)

(declare-fun c!964527 () Bool)

(assert (=> d!1747841 (= c!964527 (isEmpty!34479 (tail!10910 (t!376068 s!2326))))))

(declare-fun e!3411566 () Bool)

(assert (=> d!1747841 (= (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))) e!3411566)))

(declare-fun b!5517163 () Bool)

(assert (=> b!5517163 (= e!3411566 (nullableZipper!1532 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (head!11815 (t!376068 s!2326)))))))

(declare-fun b!5517164 () Bool)

(assert (=> b!5517164 (= e!3411566 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (head!11815 (tail!10910 (t!376068 s!2326)))) (tail!10910 (tail!10910 (t!376068 s!2326)))))))

(assert (= (and d!1747841 c!964527) b!5517163))

(assert (= (and d!1747841 (not c!964527)) b!5517164))

(assert (=> d!1747841 m!6520242))

(assert (=> d!1747841 m!6520748))

(assert (=> b!5517163 m!6520296))

(declare-fun m!6520914 () Bool)

(assert (=> b!5517163 m!6520914))

(assert (=> b!5517164 m!6520242))

(assert (=> b!5517164 m!6520752))

(assert (=> b!5517164 m!6520296))

(assert (=> b!5517164 m!6520752))

(declare-fun m!6520916 () Bool)

(assert (=> b!5517164 m!6520916))

(assert (=> b!5517164 m!6520242))

(assert (=> b!5517164 m!6520756))

(assert (=> b!5517164 m!6520916))

(assert (=> b!5517164 m!6520756))

(declare-fun m!6520918 () Bool)

(assert (=> b!5517164 m!6520918))

(assert (=> b!5516308 d!1747841))

(declare-fun bs!1271442 () Bool)

(declare-fun d!1747843 () Bool)

(assert (= bs!1271442 (and d!1747843 b!5516115)))

(declare-fun lambda!295759 () Int)

(assert (=> bs!1271442 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295759 lambda!295662))))

(declare-fun bs!1271443 () Bool)

(assert (= bs!1271443 (and d!1747843 d!1747653)))

(assert (=> bs!1271443 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295759 lambda!295710))))

(declare-fun bs!1271444 () Bool)

(assert (= bs!1271444 (and d!1747843 d!1747759)))

(assert (=> bs!1271444 (= lambda!295759 lambda!295744)))

(declare-fun bs!1271445 () Bool)

(assert (= bs!1271445 (and d!1747843 d!1747643)))

(assert (=> bs!1271445 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295759 lambda!295709))))

(declare-fun bs!1271446 () Bool)

(assert (= bs!1271446 (and d!1747843 d!1747819)))

(assert (=> bs!1271446 (= lambda!295759 lambda!295757)))

(declare-fun bs!1271447 () Bool)

(assert (= bs!1271447 (and d!1747843 d!1747587)))

(assert (=> bs!1271447 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295759 lambda!295683))))

(assert (=> d!1747843 true))

(assert (=> d!1747843 (= (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (flatMap!1119 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) lambda!295759))))

(declare-fun bs!1271448 () Bool)

(assert (= bs!1271448 d!1747843))

(assert (=> bs!1271448 m!6520046))

(declare-fun m!6520920 () Bool)

(assert (=> bs!1271448 m!6520920))

(assert (=> b!5516308 d!1747843))

(assert (=> b!5516308 d!1747761))

(assert (=> b!5516308 d!1747763))

(declare-fun d!1747845 () Bool)

(assert (=> d!1747845 (= (isEmpty!34476 (t!376066 (unfocusZipperList!934 zl!343))) (is-Nil!62693 (t!376066 (unfocusZipperList!934 zl!343))))))

(assert (=> b!5516385 d!1747845))

(declare-fun b!5517165 () Bool)

(declare-fun e!3411569 () Bool)

(declare-fun lt!2246406 () Bool)

(assert (=> b!5517165 (= e!3411569 (not lt!2246406))))

(declare-fun d!1747847 () Bool)

(declare-fun e!3411571 () Bool)

(assert (=> d!1747847 e!3411571))

(declare-fun c!964529 () Bool)

(assert (=> d!1747847 (= c!964529 (is-EmptyExpr!15506 (regTwo!31524 r!7292)))))

(declare-fun e!3411573 () Bool)

(assert (=> d!1747847 (= lt!2246406 e!3411573)))

(declare-fun c!964530 () Bool)

(assert (=> d!1747847 (= c!964530 (isEmpty!34479 s!2326))))

(assert (=> d!1747847 (validRegex!7242 (regTwo!31524 r!7292))))

(assert (=> d!1747847 (= (matchR!7691 (regTwo!31524 r!7292) s!2326) lt!2246406)))

(declare-fun b!5517166 () Bool)

(declare-fun e!3411567 () Bool)

(assert (=> b!5517166 (= e!3411567 (= (head!11815 s!2326) (c!964265 (regTwo!31524 r!7292))))))

(declare-fun b!5517167 () Bool)

(declare-fun e!3411568 () Bool)

(declare-fun e!3411572 () Bool)

(assert (=> b!5517167 (= e!3411568 e!3411572)))

(declare-fun res!2350651 () Bool)

(assert (=> b!5517167 (=> res!2350651 e!3411572)))

(declare-fun call!408322 () Bool)

(assert (=> b!5517167 (= res!2350651 call!408322)))

(declare-fun b!5517168 () Bool)

(declare-fun e!3411570 () Bool)

(assert (=> b!5517168 (= e!3411570 e!3411568)))

(declare-fun res!2350652 () Bool)

(assert (=> b!5517168 (=> (not res!2350652) (not e!3411568))))

(assert (=> b!5517168 (= res!2350652 (not lt!2246406))))

(declare-fun b!5517169 () Bool)

(assert (=> b!5517169 (= e!3411572 (not (= (head!11815 s!2326) (c!964265 (regTwo!31524 r!7292)))))))

(declare-fun b!5517170 () Bool)

(assert (=> b!5517170 (= e!3411571 (= lt!2246406 call!408322))))

(declare-fun b!5517171 () Bool)

(declare-fun res!2350657 () Bool)

(assert (=> b!5517171 (=> res!2350657 e!3411572)))

(assert (=> b!5517171 (= res!2350657 (not (isEmpty!34479 (tail!10910 s!2326))))))

(declare-fun b!5517172 () Bool)

(assert (=> b!5517172 (= e!3411571 e!3411569)))

(declare-fun c!964528 () Bool)

(assert (=> b!5517172 (= c!964528 (is-EmptyLang!15506 (regTwo!31524 r!7292)))))

(declare-fun b!5517173 () Bool)

(declare-fun res!2350656 () Bool)

(assert (=> b!5517173 (=> res!2350656 e!3411570)))

(assert (=> b!5517173 (= res!2350656 (not (is-ElementMatch!15506 (regTwo!31524 r!7292))))))

(assert (=> b!5517173 (= e!3411569 e!3411570)))

(declare-fun b!5517174 () Bool)

(assert (=> b!5517174 (= e!3411573 (nullable!5540 (regTwo!31524 r!7292)))))

(declare-fun b!5517175 () Bool)

(declare-fun res!2350653 () Bool)

(assert (=> b!5517175 (=> (not res!2350653) (not e!3411567))))

(assert (=> b!5517175 (= res!2350653 (isEmpty!34479 (tail!10910 s!2326)))))

(declare-fun bm!408317 () Bool)

(assert (=> bm!408317 (= call!408322 (isEmpty!34479 s!2326))))

(declare-fun b!5517176 () Bool)

(declare-fun res!2350654 () Bool)

(assert (=> b!5517176 (=> res!2350654 e!3411570)))

(assert (=> b!5517176 (= res!2350654 e!3411567)))

(declare-fun res!2350655 () Bool)

(assert (=> b!5517176 (=> (not res!2350655) (not e!3411567))))

(assert (=> b!5517176 (= res!2350655 lt!2246406)))

(declare-fun b!5517177 () Bool)

(declare-fun res!2350658 () Bool)

(assert (=> b!5517177 (=> (not res!2350658) (not e!3411567))))

(assert (=> b!5517177 (= res!2350658 (not call!408322))))

(declare-fun b!5517178 () Bool)

(assert (=> b!5517178 (= e!3411573 (matchR!7691 (derivativeStep!4371 (regTwo!31524 r!7292) (head!11815 s!2326)) (tail!10910 s!2326)))))

(assert (= (and d!1747847 c!964530) b!5517174))

(assert (= (and d!1747847 (not c!964530)) b!5517178))

(assert (= (and d!1747847 c!964529) b!5517170))

(assert (= (and d!1747847 (not c!964529)) b!5517172))

(assert (= (and b!5517172 c!964528) b!5517165))

(assert (= (and b!5517172 (not c!964528)) b!5517173))

(assert (= (and b!5517173 (not res!2350656)) b!5517176))

(assert (= (and b!5517176 res!2350655) b!5517177))

(assert (= (and b!5517177 res!2350658) b!5517175))

(assert (= (and b!5517175 res!2350653) b!5517166))

(assert (= (and b!5517176 (not res!2350654)) b!5517168))

(assert (= (and b!5517168 res!2350652) b!5517167))

(assert (= (and b!5517167 (not res!2350651)) b!5517171))

(assert (= (and b!5517171 (not res!2350657)) b!5517169))

(assert (= (or b!5517170 b!5517167 b!5517177) bm!408317))

(assert (=> b!5517171 m!6520290))

(assert (=> b!5517171 m!6520290))

(assert (=> b!5517171 m!6520432))

(assert (=> b!5517175 m!6520290))

(assert (=> b!5517175 m!6520290))

(assert (=> b!5517175 m!6520432))

(assert (=> bm!408317 m!6520282))

(assert (=> b!5517178 m!6520286))

(assert (=> b!5517178 m!6520286))

(declare-fun m!6520922 () Bool)

(assert (=> b!5517178 m!6520922))

(assert (=> b!5517178 m!6520290))

(assert (=> b!5517178 m!6520922))

(assert (=> b!5517178 m!6520290))

(declare-fun m!6520924 () Bool)

(assert (=> b!5517178 m!6520924))

(assert (=> b!5517166 m!6520286))

(declare-fun m!6520926 () Bool)

(assert (=> b!5517174 m!6520926))

(assert (=> b!5517169 m!6520286))

(assert (=> d!1747847 m!6520282))

(declare-fun m!6520928 () Bool)

(assert (=> d!1747847 m!6520928))

(assert (=> b!5516329 d!1747847))

(declare-fun bs!1271449 () Bool)

(declare-fun b!5517185 () Bool)

(assert (= bs!1271449 (and b!5517185 b!5516494)))

(declare-fun lambda!295760 () Int)

(assert (=> bs!1271449 (not (= lambda!295760 lambda!295707))))

(declare-fun bs!1271450 () Bool)

(assert (= bs!1271450 (and b!5517185 d!1747809)))

(assert (=> bs!1271450 (not (= lambda!295760 lambda!295756))))

(assert (=> bs!1271450 (not (= lambda!295760 lambda!295755))))

(declare-fun bs!1271451 () Bool)

(assert (= bs!1271451 (and b!5517185 b!5516114)))

(assert (=> bs!1271451 (not (= lambda!295760 lambda!295660))))

(declare-fun bs!1271452 () Bool)

(assert (= bs!1271452 (and b!5517185 b!5516493)))

(assert (=> bs!1271452 (= (and (= (reg!15835 (regOne!31525 r!7292)) (reg!15835 r!7292)) (= (regOne!31525 r!7292) r!7292)) (= lambda!295760 lambda!295706))))

(declare-fun bs!1271453 () Bool)

(assert (= bs!1271453 (and b!5517185 d!1747593)))

(assert (=> bs!1271453 (not (= lambda!295760 lambda!295686))))

(declare-fun bs!1271454 () Bool)

(assert (= bs!1271454 (and b!5517185 d!1747597)))

(assert (=> bs!1271454 (not (= lambda!295760 lambda!295691))))

(assert (=> bs!1271454 (not (= lambda!295760 lambda!295692))))

(assert (=> bs!1271451 (not (= lambda!295760 lambda!295661))))

(assert (=> b!5517185 true))

(assert (=> b!5517185 true))

(declare-fun bs!1271455 () Bool)

(declare-fun b!5517186 () Bool)

(assert (= bs!1271455 (and b!5517186 b!5516494)))

(declare-fun lambda!295761 () Int)

(assert (=> bs!1271455 (= (and (= (regOne!31524 (regOne!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regOne!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295761 lambda!295707))))

(declare-fun bs!1271456 () Bool)

(assert (= bs!1271456 (and b!5517186 d!1747809)))

(assert (=> bs!1271456 (= (and (= (regOne!31524 (regOne!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regOne!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295761 lambda!295756))))

(assert (=> bs!1271456 (not (= lambda!295761 lambda!295755))))

(declare-fun bs!1271457 () Bool)

(assert (= bs!1271457 (and b!5517186 b!5517185)))

(assert (=> bs!1271457 (not (= lambda!295761 lambda!295760))))

(declare-fun bs!1271458 () Bool)

(assert (= bs!1271458 (and b!5517186 b!5516114)))

(assert (=> bs!1271458 (not (= lambda!295761 lambda!295660))))

(declare-fun bs!1271459 () Bool)

(assert (= bs!1271459 (and b!5517186 b!5516493)))

(assert (=> bs!1271459 (not (= lambda!295761 lambda!295706))))

(declare-fun bs!1271460 () Bool)

(assert (= bs!1271460 (and b!5517186 d!1747593)))

(assert (=> bs!1271460 (not (= lambda!295761 lambda!295686))))

(declare-fun bs!1271461 () Bool)

(assert (= bs!1271461 (and b!5517186 d!1747597)))

(assert (=> bs!1271461 (not (= lambda!295761 lambda!295691))))

(assert (=> bs!1271461 (= (and (= (regOne!31524 (regOne!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regOne!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295761 lambda!295692))))

(assert (=> bs!1271458 (= (and (= (regOne!31524 (regOne!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regOne!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295761 lambda!295661))))

(assert (=> b!5517186 true))

(assert (=> b!5517186 true))

(declare-fun b!5517179 () Bool)

(declare-fun e!3411575 () Bool)

(declare-fun call!408323 () Bool)

(assert (=> b!5517179 (= e!3411575 call!408323)))

(declare-fun b!5517181 () Bool)

(declare-fun e!3411574 () Bool)

(assert (=> b!5517181 (= e!3411575 e!3411574)))

(declare-fun res!2350661 () Bool)

(assert (=> b!5517181 (= res!2350661 (not (is-EmptyLang!15506 (regOne!31525 r!7292))))))

(assert (=> b!5517181 (=> (not res!2350661) (not e!3411574))))

(declare-fun b!5517182 () Bool)

(declare-fun e!3411577 () Bool)

(declare-fun e!3411576 () Bool)

(assert (=> b!5517182 (= e!3411577 e!3411576)))

(declare-fun c!964531 () Bool)

(assert (=> b!5517182 (= c!964531 (is-Star!15506 (regOne!31525 r!7292)))))

(declare-fun bm!408318 () Bool)

(assert (=> bm!408318 (= call!408323 (isEmpty!34479 s!2326))))

(declare-fun b!5517183 () Bool)

(declare-fun e!3411579 () Bool)

(assert (=> b!5517183 (= e!3411577 e!3411579)))

(declare-fun res!2350659 () Bool)

(assert (=> b!5517183 (= res!2350659 (matchRSpec!2609 (regOne!31525 (regOne!31525 r!7292)) s!2326))))

(assert (=> b!5517183 (=> res!2350659 e!3411579)))

(declare-fun b!5517184 () Bool)

(declare-fun e!3411580 () Bool)

(assert (=> b!5517184 (= e!3411580 (= s!2326 (Cons!62695 (c!964265 (regOne!31525 r!7292)) Nil!62695)))))

(declare-fun bm!408319 () Bool)

(declare-fun call!408324 () Bool)

(assert (=> bm!408319 (= call!408324 (Exists!2606 (ite c!964531 lambda!295760 lambda!295761)))))

(declare-fun e!3411578 () Bool)

(assert (=> b!5517185 (= e!3411578 call!408324)))

(assert (=> b!5517186 (= e!3411576 call!408324)))

(declare-fun b!5517187 () Bool)

(declare-fun c!964534 () Bool)

(assert (=> b!5517187 (= c!964534 (is-ElementMatch!15506 (regOne!31525 r!7292)))))

(assert (=> b!5517187 (= e!3411574 e!3411580)))

(declare-fun d!1747849 () Bool)

(declare-fun c!964532 () Bool)

(assert (=> d!1747849 (= c!964532 (is-EmptyExpr!15506 (regOne!31525 r!7292)))))

(assert (=> d!1747849 (= (matchRSpec!2609 (regOne!31525 r!7292) s!2326) e!3411575)))

(declare-fun b!5517180 () Bool)

(declare-fun c!964533 () Bool)

(assert (=> b!5517180 (= c!964533 (is-Union!15506 (regOne!31525 r!7292)))))

(assert (=> b!5517180 (= e!3411580 e!3411577)))

(declare-fun b!5517188 () Bool)

(assert (=> b!5517188 (= e!3411579 (matchRSpec!2609 (regTwo!31525 (regOne!31525 r!7292)) s!2326))))

(declare-fun b!5517189 () Bool)

(declare-fun res!2350660 () Bool)

(assert (=> b!5517189 (=> res!2350660 e!3411578)))

(assert (=> b!5517189 (= res!2350660 call!408323)))

(assert (=> b!5517189 (= e!3411576 e!3411578)))

(assert (= (and d!1747849 c!964532) b!5517179))

(assert (= (and d!1747849 (not c!964532)) b!5517181))

(assert (= (and b!5517181 res!2350661) b!5517187))

(assert (= (and b!5517187 c!964534) b!5517184))

(assert (= (and b!5517187 (not c!964534)) b!5517180))

(assert (= (and b!5517180 c!964533) b!5517183))

(assert (= (and b!5517180 (not c!964533)) b!5517182))

(assert (= (and b!5517183 (not res!2350659)) b!5517188))

(assert (= (and b!5517182 c!964531) b!5517189))

(assert (= (and b!5517182 (not c!964531)) b!5517186))

(assert (= (and b!5517189 (not res!2350660)) b!5517185))

(assert (= (or b!5517185 b!5517186) bm!408319))

(assert (= (or b!5517179 b!5517189) bm!408318))

(assert (=> bm!408318 m!6520282))

(declare-fun m!6520930 () Bool)

(assert (=> b!5517183 m!6520930))

(declare-fun m!6520932 () Bool)

(assert (=> bm!408319 m!6520932))

(declare-fun m!6520934 () Bool)

(assert (=> b!5517188 m!6520934))

(assert (=> b!5516491 d!1747849))

(declare-fun d!1747851 () Bool)

(assert (=> d!1747851 true))

(assert (=> d!1747851 true))

(declare-fun res!2350662 () Bool)

(assert (=> d!1747851 (= (choose!41925 lambda!295661) res!2350662)))

(assert (=> d!1747595 d!1747851))

(declare-fun d!1747853 () Bool)

(assert (=> d!1747853 (= (isEmpty!34476 (exprs!5390 (h!69142 zl!343))) (is-Nil!62693 (exprs!5390 (h!69142 zl!343))))))

(assert (=> b!5516301 d!1747853))

(declare-fun d!1747855 () Bool)

(assert (=> d!1747855 (= (isEmpty!34476 (tail!10911 (unfocusZipperList!934 zl!343))) (is-Nil!62693 (tail!10911 (unfocusZipperList!934 zl!343))))))

(assert (=> b!5516393 d!1747855))

(declare-fun d!1747857 () Bool)

(assert (=> d!1747857 (= (tail!10911 (unfocusZipperList!934 zl!343)) (t!376066 (unfocusZipperList!934 zl!343)))))

(assert (=> b!5516393 d!1747857))

(declare-fun d!1747859 () Bool)

(declare-fun res!2350663 () Bool)

(declare-fun e!3411581 () Bool)

(assert (=> d!1747859 (=> res!2350663 e!3411581)))

(assert (=> d!1747859 (= res!2350663 (is-Nil!62693 (exprs!5390 (h!69142 zl!343))))))

(assert (=> d!1747859 (= (forall!14680 (exprs!5390 (h!69142 zl!343)) lambda!295708) e!3411581)))

(declare-fun b!5517190 () Bool)

(declare-fun e!3411582 () Bool)

(assert (=> b!5517190 (= e!3411581 e!3411582)))

(declare-fun res!2350664 () Bool)

(assert (=> b!5517190 (=> (not res!2350664) (not e!3411582))))

(assert (=> b!5517190 (= res!2350664 (dynLambda!24495 lambda!295708 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5517191 () Bool)

(assert (=> b!5517191 (= e!3411582 (forall!14680 (t!376066 (exprs!5390 (h!69142 zl!343))) lambda!295708))))

(assert (= (and d!1747859 (not res!2350663)) b!5517190))

(assert (= (and b!5517190 res!2350664) b!5517191))

(declare-fun b_lambda!209167 () Bool)

(assert (=> (not b_lambda!209167) (not b!5517190)))

(declare-fun m!6520936 () Bool)

(assert (=> b!5517190 m!6520936))

(declare-fun m!6520938 () Bool)

(assert (=> b!5517191 m!6520938))

(assert (=> d!1747637 d!1747859))

(declare-fun d!1747861 () Bool)

(declare-fun c!964537 () Bool)

(assert (=> d!1747861 (= c!964537 (is-Nil!62694 lt!2246357))))

(declare-fun e!3411585 () (Set Context!9780))

(assert (=> d!1747861 (= (content!11268 lt!2246357) e!3411585)))

(declare-fun b!5517196 () Bool)

(assert (=> b!5517196 (= e!3411585 (as set.empty (Set Context!9780)))))

(declare-fun b!5517197 () Bool)

(assert (=> b!5517197 (= e!3411585 (set.union (set.insert (h!69142 lt!2246357) (as set.empty (Set Context!9780))) (content!11268 (t!376067 lt!2246357))))))

(assert (= (and d!1747861 c!964537) b!5517196))

(assert (= (and d!1747861 (not c!964537)) b!5517197))

(declare-fun m!6520940 () Bool)

(assert (=> b!5517197 m!6520940))

(declare-fun m!6520942 () Bool)

(assert (=> b!5517197 m!6520942))

(assert (=> b!5516560 d!1747861))

(declare-fun d!1747863 () Bool)

(assert (=> d!1747863 true))

(declare-fun setRes!36680 () Bool)

(assert (=> d!1747863 setRes!36680))

(declare-fun condSetEmpty!36680 () Bool)

(declare-fun res!2350665 () (Set Context!9780))

(assert (=> d!1747863 (= condSetEmpty!36680 (= res!2350665 (as set.empty (Set Context!9780))))))

(assert (=> d!1747863 (= (choose!41928 lt!2246229 lambda!295662) res!2350665)))

(declare-fun setIsEmpty!36680 () Bool)

(assert (=> setIsEmpty!36680 setRes!36680))

(declare-fun setNonEmpty!36680 () Bool)

(declare-fun setElem!36680 () Context!9780)

(declare-fun tp!1517703 () Bool)

(declare-fun e!3411586 () Bool)

(assert (=> setNonEmpty!36680 (= setRes!36680 (and tp!1517703 (inv!82013 setElem!36680) e!3411586))))

(declare-fun setRest!36680 () (Set Context!9780))

(assert (=> setNonEmpty!36680 (= res!2350665 (set.union (set.insert setElem!36680 (as set.empty (Set Context!9780))) setRest!36680))))

(declare-fun b!5517198 () Bool)

(declare-fun tp!1517702 () Bool)

(assert (=> b!5517198 (= e!3411586 tp!1517702)))

(assert (= (and d!1747863 condSetEmpty!36680) setIsEmpty!36680))

(assert (= (and d!1747863 (not condSetEmpty!36680)) setNonEmpty!36680))

(assert (= setNonEmpty!36680 b!5517198))

(declare-fun m!6520944 () Bool)

(assert (=> setNonEmpty!36680 m!6520944))

(assert (=> d!1747627 d!1747863))

(assert (=> d!1747593 d!1747589))

(assert (=> d!1747593 d!1747811))

(assert (=> d!1747593 d!1747599))

(declare-fun d!1747865 () Bool)

(assert (=> d!1747865 (= (Exists!2606 lambda!295686) (choose!41925 lambda!295686))))

(declare-fun bs!1271462 () Bool)

(assert (= bs!1271462 d!1747865))

(declare-fun m!6520946 () Bool)

(assert (=> bs!1271462 m!6520946))

(assert (=> d!1747593 d!1747865))

(declare-fun bs!1271463 () Bool)

(declare-fun d!1747867 () Bool)

(assert (= bs!1271463 (and d!1747867 b!5516494)))

(declare-fun lambda!295764 () Int)

(assert (=> bs!1271463 (not (= lambda!295764 lambda!295707))))

(declare-fun bs!1271464 () Bool)

(assert (= bs!1271464 (and d!1747867 d!1747809)))

(assert (=> bs!1271464 (not (= lambda!295764 lambda!295756))))

(assert (=> bs!1271464 (= lambda!295764 lambda!295755)))

(declare-fun bs!1271465 () Bool)

(assert (= bs!1271465 (and d!1747867 b!5517185)))

(assert (=> bs!1271465 (not (= lambda!295764 lambda!295760))))

(declare-fun bs!1271466 () Bool)

(assert (= bs!1271466 (and d!1747867 b!5516114)))

(assert (=> bs!1271466 (= lambda!295764 lambda!295660)))

(declare-fun bs!1271467 () Bool)

(assert (= bs!1271467 (and d!1747867 b!5516493)))

(assert (=> bs!1271467 (not (= lambda!295764 lambda!295706))))

(declare-fun bs!1271468 () Bool)

(assert (= bs!1271468 (and d!1747867 d!1747593)))

(assert (=> bs!1271468 (= lambda!295764 lambda!295686)))

(declare-fun bs!1271469 () Bool)

(assert (= bs!1271469 (and d!1747867 b!5517186)))

(assert (=> bs!1271469 (not (= lambda!295764 lambda!295761))))

(declare-fun bs!1271470 () Bool)

(assert (= bs!1271470 (and d!1747867 d!1747597)))

(assert (=> bs!1271470 (= lambda!295764 lambda!295691)))

(assert (=> bs!1271470 (not (= lambda!295764 lambda!295692))))

(assert (=> bs!1271466 (not (= lambda!295764 lambda!295661))))

(assert (=> d!1747867 true))

(assert (=> d!1747867 true))

(assert (=> d!1747867 true))

(assert (=> d!1747867 (= (isDefined!12218 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) Nil!62695 s!2326 s!2326)) (Exists!2606 lambda!295764))))

(assert (=> d!1747867 true))

(declare-fun _$89!1611 () Unit!155472)

(assert (=> d!1747867 (= (choose!41926 (regOne!31524 r!7292) (regTwo!31524 r!7292) s!2326) _$89!1611)))

(declare-fun bs!1271471 () Bool)

(assert (= bs!1271471 d!1747867))

(assert (=> bs!1271471 m!6520112))

(assert (=> bs!1271471 m!6520112))

(assert (=> bs!1271471 m!6520114))

(declare-fun m!6520948 () Bool)

(assert (=> bs!1271471 m!6520948))

(assert (=> d!1747593 d!1747867))

(declare-fun d!1747869 () Bool)

(assert (=> d!1747869 (= (isEmpty!34476 (unfocusZipperList!934 zl!343)) (is-Nil!62693 (unfocusZipperList!934 zl!343)))))

(assert (=> b!5516389 d!1747869))

(declare-fun b!5517203 () Bool)

(declare-fun e!3411589 () (Set Context!9780))

(declare-fun e!3411591 () (Set Context!9780))

(assert (=> b!5517203 (= e!3411589 e!3411591)))

(declare-fun c!964539 () Bool)

(assert (=> b!5517203 (= c!964539 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))))

(declare-fun b!5517204 () Bool)

(declare-fun e!3411590 () Bool)

(assert (=> b!5517204 (= e!3411590 (nullable!5540 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))))))

(declare-fun b!5517205 () Bool)

(declare-fun call!408325 () (Set Context!9780))

(assert (=> b!5517205 (= e!3411589 (set.union call!408325 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))) (h!69143 s!2326))))))

(declare-fun b!5517206 () Bool)

(assert (=> b!5517206 (= e!3411591 call!408325)))

(declare-fun d!1747871 () Bool)

(declare-fun c!964538 () Bool)

(assert (=> d!1747871 (= c!964538 e!3411590)))

(declare-fun res!2350670 () Bool)

(assert (=> d!1747871 (=> (not res!2350670) (not e!3411590))))

(assert (=> d!1747871 (= res!2350670 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))))

(assert (=> d!1747871 (= (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (h!69143 s!2326)) e!3411589)))

(declare-fun b!5517207 () Bool)

(assert (=> b!5517207 (= e!3411591 (as set.empty (Set Context!9780)))))

(declare-fun bm!408320 () Bool)

(assert (=> bm!408320 (= call!408325 (derivationStepZipperDown!848 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))) (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))) (h!69143 s!2326)))))

(assert (= (and d!1747871 res!2350670) b!5517204))

(assert (= (and d!1747871 c!964538) b!5517205))

(assert (= (and d!1747871 (not c!964538)) b!5517203))

(assert (= (and b!5517203 c!964539) b!5517206))

(assert (= (and b!5517203 (not c!964539)) b!5517207))

(assert (= (or b!5517205 b!5517206) bm!408320))

(declare-fun m!6520950 () Bool)

(assert (=> b!5517204 m!6520950))

(declare-fun m!6520952 () Bool)

(assert (=> b!5517205 m!6520952))

(declare-fun m!6520954 () Bool)

(assert (=> bm!408320 m!6520954))

(assert (=> b!5516553 d!1747871))

(assert (=> bs!1271354 d!1747617))

(declare-fun d!1747873 () Bool)

(assert (=> d!1747873 (= (nullable!5540 (regOne!31524 (regTwo!31524 r!7292))) (nullableFct!1664 (regOne!31524 (regTwo!31524 r!7292))))))

(declare-fun bs!1271472 () Bool)

(assert (= bs!1271472 d!1747873))

(declare-fun m!6520956 () Bool)

(assert (=> bs!1271472 m!6520956))

(assert (=> b!5516442 d!1747873))

(assert (=> b!5516399 d!1747575))

(declare-fun bs!1271473 () Bool)

(declare-fun d!1747875 () Bool)

(assert (= bs!1271473 (and d!1747875 d!1747629)))

(declare-fun lambda!295765 () Int)

(assert (=> bs!1271473 (= lambda!295765 lambda!295701)))

(declare-fun bs!1271474 () Bool)

(assert (= bs!1271474 (and d!1747875 d!1747783)))

(assert (=> bs!1271474 (= lambda!295765 lambda!295745)))

(declare-fun bs!1271475 () Bool)

(assert (= bs!1271475 (and d!1747875 d!1747607)))

(assert (=> bs!1271475 (= lambda!295765 lambda!295695)))

(declare-fun bs!1271476 () Bool)

(assert (= bs!1271476 (and d!1747875 d!1747575)))

(assert (=> bs!1271476 (= lambda!295765 lambda!295680)))

(declare-fun bs!1271477 () Bool)

(assert (= bs!1271477 (and d!1747875 d!1747789)))

(assert (=> bs!1271477 (= lambda!295765 lambda!295746)))

(declare-fun bs!1271478 () Bool)

(assert (= bs!1271478 (and d!1747875 d!1747609)))

(assert (=> bs!1271478 (= lambda!295765 lambda!295698)))

(declare-fun bs!1271479 () Bool)

(assert (= bs!1271479 (and d!1747875 d!1747637)))

(assert (=> bs!1271479 (= lambda!295765 lambda!295708)))

(declare-fun lt!2246407 () List!62817)

(assert (=> d!1747875 (forall!14680 lt!2246407 lambda!295765)))

(declare-fun e!3411592 () List!62817)

(assert (=> d!1747875 (= lt!2246407 e!3411592)))

(declare-fun c!964540 () Bool)

(assert (=> d!1747875 (= c!964540 (is-Cons!62694 (t!376067 zl!343)))))

(assert (=> d!1747875 (= (unfocusZipperList!934 (t!376067 zl!343)) lt!2246407)))

(declare-fun b!5517208 () Bool)

(assert (=> b!5517208 (= e!3411592 (Cons!62693 (generalisedConcat!1121 (exprs!5390 (h!69142 (t!376067 zl!343)))) (unfocusZipperList!934 (t!376067 (t!376067 zl!343)))))))

(declare-fun b!5517209 () Bool)

(assert (=> b!5517209 (= e!3411592 Nil!62693)))

(assert (= (and d!1747875 c!964540) b!5517208))

(assert (= (and d!1747875 (not c!964540)) b!5517209))

(declare-fun m!6520958 () Bool)

(assert (=> d!1747875 m!6520958))

(declare-fun m!6520960 () Bool)

(assert (=> b!5517208 m!6520960))

(declare-fun m!6520962 () Bool)

(assert (=> b!5517208 m!6520962))

(assert (=> b!5516399 d!1747875))

(declare-fun d!1747877 () Bool)

(assert (=> d!1747877 (= ($colon$colon!1585 (exprs!5390 lt!2246232) (ite (or c!964348 c!964349) (regTwo!31524 (regOne!31524 r!7292)) (regOne!31524 r!7292))) (Cons!62693 (ite (or c!964348 c!964349) (regTwo!31524 (regOne!31524 r!7292)) (regOne!31524 r!7292)) (exprs!5390 lt!2246232)))))

(assert (=> bm!408217 d!1747877))

(declare-fun d!1747879 () Bool)

(declare-fun res!2350671 () Bool)

(declare-fun e!3411593 () Bool)

(assert (=> d!1747879 (=> res!2350671 e!3411593)))

(assert (=> d!1747879 (= res!2350671 (is-Nil!62693 lt!2246346))))

(assert (=> d!1747879 (= (forall!14680 lt!2246346 lambda!295698) e!3411593)))

(declare-fun b!5517210 () Bool)

(declare-fun e!3411594 () Bool)

(assert (=> b!5517210 (= e!3411593 e!3411594)))

(declare-fun res!2350672 () Bool)

(assert (=> b!5517210 (=> (not res!2350672) (not e!3411594))))

(assert (=> b!5517210 (= res!2350672 (dynLambda!24495 lambda!295698 (h!69141 lt!2246346)))))

(declare-fun b!5517211 () Bool)

(assert (=> b!5517211 (= e!3411594 (forall!14680 (t!376066 lt!2246346) lambda!295698))))

(assert (= (and d!1747879 (not res!2350671)) b!5517210))

(assert (= (and b!5517210 res!2350672) b!5517211))

(declare-fun b_lambda!209169 () Bool)

(assert (=> (not b_lambda!209169) (not b!5517210)))

(declare-fun m!6520964 () Bool)

(assert (=> b!5517210 m!6520964))

(declare-fun m!6520966 () Bool)

(assert (=> b!5517211 m!6520966))

(assert (=> d!1747609 d!1747879))

(declare-fun bs!1271480 () Bool)

(declare-fun d!1747881 () Bool)

(assert (= bs!1271480 (and d!1747881 d!1747797)))

(declare-fun lambda!295766 () Int)

(assert (=> bs!1271480 (= lambda!295766 lambda!295749)))

(declare-fun bs!1271481 () Bool)

(assert (= bs!1271481 (and d!1747881 d!1747803)))

(assert (=> bs!1271481 (= lambda!295766 lambda!295750)))

(declare-fun bs!1271482 () Bool)

(assert (= bs!1271482 (and d!1747881 d!1747827)))

(assert (=> bs!1271482 (= lambda!295766 lambda!295758)))

(assert (=> d!1747881 (= (nullableZipper!1532 lt!2246220) (exists!2138 lt!2246220 lambda!295766))))

(declare-fun bs!1271483 () Bool)

(assert (= bs!1271483 d!1747881))

(declare-fun m!6520968 () Bool)

(assert (=> bs!1271483 m!6520968))

(assert (=> b!5516266 d!1747881))

(declare-fun b!5517212 () Bool)

(declare-fun e!3411595 () (Set Context!9780))

(declare-fun e!3411597 () (Set Context!9780))

(assert (=> b!5517212 (= e!3411595 e!3411597)))

(declare-fun c!964542 () Bool)

(assert (=> b!5517212 (= c!964542 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))))))))

(declare-fun b!5517213 () Bool)

(declare-fun e!3411596 () Bool)

(assert (=> b!5517213 (= e!3411596 (nullable!5540 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343))))))))))

(declare-fun call!408326 () (Set Context!9780))

(declare-fun b!5517214 () Bool)

(assert (=> b!5517214 (= e!3411595 (set.union call!408326 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343))))))) (h!69143 s!2326))))))

(declare-fun b!5517215 () Bool)

(assert (=> b!5517215 (= e!3411597 call!408326)))

(declare-fun d!1747883 () Bool)

(declare-fun c!964541 () Bool)

(assert (=> d!1747883 (= c!964541 e!3411596)))

(declare-fun res!2350673 () Bool)

(assert (=> d!1747883 (=> (not res!2350673) (not e!3411596))))

(assert (=> d!1747883 (= res!2350673 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))))))))

(assert (=> d!1747883 (= (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))) (h!69143 s!2326)) e!3411595)))

(declare-fun b!5517216 () Bool)

(assert (=> b!5517216 (= e!3411597 (as set.empty (Set Context!9780)))))

(declare-fun bm!408321 () Bool)

(assert (=> bm!408321 (= call!408326 (derivationStepZipperDown!848 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))))) (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343))))))) (h!69143 s!2326)))))

(assert (= (and d!1747883 res!2350673) b!5517213))

(assert (= (and d!1747883 c!964541) b!5517214))

(assert (= (and d!1747883 (not c!964541)) b!5517212))

(assert (= (and b!5517212 c!964542) b!5517215))

(assert (= (and b!5517212 (not c!964542)) b!5517216))

(assert (= (or b!5517214 b!5517215) bm!408321))

(declare-fun m!6520970 () Bool)

(assert (=> b!5517213 m!6520970))

(declare-fun m!6520972 () Bool)

(assert (=> b!5517214 m!6520972))

(declare-fun m!6520974 () Bool)

(assert (=> bm!408321 m!6520974))

(assert (=> b!5516362 d!1747883))

(declare-fun d!1747885 () Bool)

(assert (=> d!1747885 (= (flatMap!1119 lt!2246229 lambda!295683) (choose!41928 lt!2246229 lambda!295683))))

(declare-fun bs!1271484 () Bool)

(assert (= bs!1271484 d!1747885))

(declare-fun m!6520976 () Bool)

(assert (=> bs!1271484 m!6520976))

(assert (=> d!1747587 d!1747885))

(declare-fun d!1747887 () Bool)

(assert (=> d!1747887 (= (isEmptyExpr!1078 lt!2246319) (is-EmptyExpr!15506 lt!2246319))))

(assert (=> b!5516300 d!1747887))

(declare-fun d!1747889 () Bool)

(assert (=> d!1747889 (= (isEmpty!34479 (tail!10910 s!2326)) (is-Nil!62695 (tail!10910 s!2326)))))

(assert (=> b!5516532 d!1747889))

(declare-fun d!1747891 () Bool)

(assert (=> d!1747891 (= (tail!10910 s!2326) (t!376068 s!2326))))

(assert (=> b!5516532 d!1747891))

(assert (=> d!1747649 d!1747839))

(declare-fun d!1747893 () Bool)

(assert (=> d!1747893 (= (isEmpty!34476 (tail!10911 (exprs!5390 (h!69142 zl!343)))) (is-Nil!62693 (tail!10911 (exprs!5390 (h!69142 zl!343)))))))

(assert (=> b!5516296 d!1747893))

(declare-fun d!1747895 () Bool)

(assert (=> d!1747895 (= (tail!10911 (exprs!5390 (h!69142 zl!343))) (t!376066 (exprs!5390 (h!69142 zl!343))))))

(assert (=> b!5516296 d!1747895))

(declare-fun d!1747897 () Bool)

(assert (=> d!1747897 (= (head!11816 (unfocusZipperList!934 zl!343)) (h!69141 (unfocusZipperList!934 zl!343)))))

(assert (=> b!5516388 d!1747897))

(assert (=> b!5516536 d!1747889))

(assert (=> b!5516536 d!1747891))

(assert (=> d!1747633 d!1747839))

(assert (=> d!1747633 d!1747565))

(declare-fun bs!1271485 () Bool)

(declare-fun d!1747899 () Bool)

(assert (= bs!1271485 (and d!1747899 d!1747629)))

(declare-fun lambda!295767 () Int)

(assert (=> bs!1271485 (= lambda!295767 lambda!295701)))

(declare-fun bs!1271486 () Bool)

(assert (= bs!1271486 (and d!1747899 d!1747783)))

(assert (=> bs!1271486 (= lambda!295767 lambda!295745)))

(declare-fun bs!1271487 () Bool)

(assert (= bs!1271487 (and d!1747899 d!1747607)))

(assert (=> bs!1271487 (= lambda!295767 lambda!295695)))

(declare-fun bs!1271488 () Bool)

(assert (= bs!1271488 (and d!1747899 d!1747875)))

(assert (=> bs!1271488 (= lambda!295767 lambda!295765)))

(declare-fun bs!1271489 () Bool)

(assert (= bs!1271489 (and d!1747899 d!1747575)))

(assert (=> bs!1271489 (= lambda!295767 lambda!295680)))

(declare-fun bs!1271490 () Bool)

(assert (= bs!1271490 (and d!1747899 d!1747789)))

(assert (=> bs!1271490 (= lambda!295767 lambda!295746)))

(declare-fun bs!1271491 () Bool)

(assert (= bs!1271491 (and d!1747899 d!1747609)))

(assert (=> bs!1271491 (= lambda!295767 lambda!295698)))

(declare-fun bs!1271492 () Bool)

(assert (= bs!1271492 (and d!1747899 d!1747637)))

(assert (=> bs!1271492 (= lambda!295767 lambda!295708)))

(assert (=> d!1747899 (= (inv!82013 setElem!36672) (forall!14680 (exprs!5390 setElem!36672) lambda!295767))))

(declare-fun bs!1271493 () Bool)

(assert (= bs!1271493 d!1747899))

(declare-fun m!6520978 () Bool)

(assert (=> bs!1271493 m!6520978))

(assert (=> setNonEmpty!36672 d!1747899))

(declare-fun bs!1271494 () Bool)

(declare-fun d!1747901 () Bool)

(assert (= bs!1271494 (and d!1747901 d!1747797)))

(declare-fun lambda!295768 () Int)

(assert (=> bs!1271494 (= lambda!295768 lambda!295749)))

(declare-fun bs!1271495 () Bool)

(assert (= bs!1271495 (and d!1747901 d!1747803)))

(assert (=> bs!1271495 (= lambda!295768 lambda!295750)))

(declare-fun bs!1271496 () Bool)

(assert (= bs!1271496 (and d!1747901 d!1747827)))

(assert (=> bs!1271496 (= lambda!295768 lambda!295758)))

(declare-fun bs!1271497 () Bool)

(assert (= bs!1271497 (and d!1747901 d!1747881)))

(assert (=> bs!1271497 (= lambda!295768 lambda!295766)))

(assert (=> d!1747901 (= (nullableZipper!1532 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326))) (exists!2138 (derivationStepZipper!1611 lt!2246229 (h!69143 s!2326)) lambda!295768))))

(declare-fun bs!1271498 () Bool)

(assert (= bs!1271498 d!1747901))

(assert (=> bs!1271498 m!6520046))

(declare-fun m!6520980 () Bool)

(assert (=> bs!1271498 m!6520980))

(assert (=> b!5516307 d!1747901))

(declare-fun b!5517217 () Bool)

(declare-fun e!3411598 () (Set Context!9780))

(declare-fun e!3411600 () (Set Context!9780))

(assert (=> b!5517217 (= e!3411598 e!3411600)))

(declare-fun c!964544 () Bool)

(assert (=> b!5517217 (= c!964544 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246210))))))))

(declare-fun b!5517218 () Bool)

(declare-fun e!3411599 () Bool)

(assert (=> b!5517218 (= e!3411599 (nullable!5540 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246210)))))))))

(declare-fun call!408327 () (Set Context!9780))

(declare-fun b!5517219 () Bool)

(assert (=> b!5517219 (= e!3411598 (set.union call!408327 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246210)))))) (h!69143 s!2326))))))

(declare-fun b!5517220 () Bool)

(assert (=> b!5517220 (= e!3411600 call!408327)))

(declare-fun d!1747903 () Bool)

(declare-fun c!964543 () Bool)

(assert (=> d!1747903 (= c!964543 e!3411599)))

(declare-fun res!2350674 () Bool)

(assert (=> d!1747903 (=> (not res!2350674) (not e!3411599))))

(assert (=> d!1747903 (= res!2350674 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246210))))))))

(assert (=> d!1747903 (= (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 lt!2246210))) (h!69143 s!2326)) e!3411598)))

(declare-fun b!5517221 () Bool)

(assert (=> b!5517221 (= e!3411600 (as set.empty (Set Context!9780)))))

(declare-fun bm!408322 () Bool)

(assert (=> bm!408322 (= call!408327 (derivationStepZipperDown!848 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246210))))) (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246210)))))) (h!69143 s!2326)))))

(assert (= (and d!1747903 res!2350674) b!5517218))

(assert (= (and d!1747903 c!964543) b!5517219))

(assert (= (and d!1747903 (not c!964543)) b!5517217))

(assert (= (and b!5517217 c!964544) b!5517220))

(assert (= (and b!5517217 (not c!964544)) b!5517221))

(assert (= (or b!5517219 b!5517220) bm!408322))

(declare-fun m!6520982 () Bool)

(assert (=> b!5517218 m!6520982))

(declare-fun m!6520984 () Bool)

(assert (=> b!5517219 m!6520984))

(declare-fun m!6520986 () Bool)

(assert (=> bm!408322 m!6520986))

(assert (=> b!5516408 d!1747903))

(assert (=> d!1747583 d!1747839))

(declare-fun bm!408323 () Bool)

(declare-fun call!408330 () Bool)

(declare-fun call!408329 () Bool)

(assert (=> bm!408323 (= call!408330 call!408329)))

(declare-fun c!964545 () Bool)

(declare-fun bm!408324 () Bool)

(declare-fun c!964546 () Bool)

(assert (=> bm!408324 (= call!408329 (validRegex!7242 (ite c!964546 (reg!15835 lt!2246322) (ite c!964545 (regTwo!31525 lt!2246322) (regTwo!31524 lt!2246322)))))))

(declare-fun b!5517222 () Bool)

(declare-fun res!2350675 () Bool)

(declare-fun e!3411605 () Bool)

(assert (=> b!5517222 (=> res!2350675 e!3411605)))

(assert (=> b!5517222 (= res!2350675 (not (is-Concat!24351 lt!2246322)))))

(declare-fun e!3411601 () Bool)

(assert (=> b!5517222 (= e!3411601 e!3411605)))

(declare-fun b!5517223 () Bool)

(declare-fun e!3411604 () Bool)

(assert (=> b!5517223 (= e!3411605 e!3411604)))

(declare-fun res!2350677 () Bool)

(assert (=> b!5517223 (=> (not res!2350677) (not e!3411604))))

(declare-fun call!408328 () Bool)

(assert (=> b!5517223 (= res!2350677 call!408328)))

(declare-fun b!5517224 () Bool)

(assert (=> b!5517224 (= e!3411604 call!408330)))

(declare-fun b!5517226 () Bool)

(declare-fun e!3411607 () Bool)

(declare-fun e!3411603 () Bool)

(assert (=> b!5517226 (= e!3411607 e!3411603)))

(assert (=> b!5517226 (= c!964546 (is-Star!15506 lt!2246322))))

(declare-fun b!5517227 () Bool)

(assert (=> b!5517227 (= e!3411603 e!3411601)))

(assert (=> b!5517227 (= c!964545 (is-Union!15506 lt!2246322))))

(declare-fun b!5517228 () Bool)

(declare-fun e!3411602 () Bool)

(assert (=> b!5517228 (= e!3411602 call!408330)))

(declare-fun b!5517229 () Bool)

(declare-fun e!3411606 () Bool)

(assert (=> b!5517229 (= e!3411606 call!408329)))

(declare-fun bm!408325 () Bool)

(assert (=> bm!408325 (= call!408328 (validRegex!7242 (ite c!964545 (regOne!31525 lt!2246322) (regOne!31524 lt!2246322))))))

(declare-fun b!5517230 () Bool)

(assert (=> b!5517230 (= e!3411603 e!3411606)))

(declare-fun res!2350678 () Bool)

(assert (=> b!5517230 (= res!2350678 (not (nullable!5540 (reg!15835 lt!2246322))))))

(assert (=> b!5517230 (=> (not res!2350678) (not e!3411606))))

(declare-fun d!1747905 () Bool)

(declare-fun res!2350679 () Bool)

(assert (=> d!1747905 (=> res!2350679 e!3411607)))

(assert (=> d!1747905 (= res!2350679 (is-ElementMatch!15506 lt!2246322))))

(assert (=> d!1747905 (= (validRegex!7242 lt!2246322) e!3411607)))

(declare-fun b!5517225 () Bool)

(declare-fun res!2350676 () Bool)

(assert (=> b!5517225 (=> (not res!2350676) (not e!3411602))))

(assert (=> b!5517225 (= res!2350676 call!408328)))

(assert (=> b!5517225 (= e!3411601 e!3411602)))

(assert (= (and d!1747905 (not res!2350679)) b!5517226))

(assert (= (and b!5517226 c!964546) b!5517230))

(assert (= (and b!5517226 (not c!964546)) b!5517227))

(assert (= (and b!5517230 res!2350678) b!5517229))

(assert (= (and b!5517227 c!964545) b!5517225))

(assert (= (and b!5517227 (not c!964545)) b!5517222))

(assert (= (and b!5517225 res!2350676) b!5517228))

(assert (= (and b!5517222 (not res!2350675)) b!5517223))

(assert (= (and b!5517223 res!2350677) b!5517224))

(assert (= (or b!5517228 b!5517224) bm!408323))

(assert (= (or b!5517225 b!5517223) bm!408325))

(assert (= (or b!5517229 bm!408323) bm!408324))

(declare-fun m!6520988 () Bool)

(assert (=> bm!408324 m!6520988))

(declare-fun m!6520990 () Bool)

(assert (=> bm!408325 m!6520990))

(declare-fun m!6520992 () Bool)

(assert (=> b!5517230 m!6520992))

(assert (=> d!1747577 d!1747905))

(assert (=> d!1747577 d!1747607))

(assert (=> d!1747577 d!1747609))

(assert (=> bm!408225 d!1747839))

(declare-fun d!1747907 () Bool)

(declare-fun c!964547 () Bool)

(assert (=> d!1747907 (= c!964547 (isEmpty!34479 (tail!10910 s!2326)))))

(declare-fun e!3411608 () Bool)

(assert (=> d!1747907 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246233 (head!11815 s!2326)) (tail!10910 s!2326)) e!3411608)))

(declare-fun b!5517231 () Bool)

(assert (=> b!5517231 (= e!3411608 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246233 (head!11815 s!2326))))))

(declare-fun b!5517232 () Bool)

(assert (=> b!5517232 (= e!3411608 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246233 (head!11815 s!2326)) (head!11815 (tail!10910 s!2326))) (tail!10910 (tail!10910 s!2326))))))

(assert (= (and d!1747907 c!964547) b!5517231))

(assert (= (and d!1747907 (not c!964547)) b!5517232))

(assert (=> d!1747907 m!6520290))

(assert (=> d!1747907 m!6520432))

(assert (=> b!5517231 m!6520472))

(declare-fun m!6520994 () Bool)

(assert (=> b!5517231 m!6520994))

(assert (=> b!5517232 m!6520290))

(declare-fun m!6520996 () Bool)

(assert (=> b!5517232 m!6520996))

(assert (=> b!5517232 m!6520472))

(assert (=> b!5517232 m!6520996))

(declare-fun m!6520998 () Bool)

(assert (=> b!5517232 m!6520998))

(assert (=> b!5517232 m!6520290))

(declare-fun m!6521000 () Bool)

(assert (=> b!5517232 m!6521000))

(assert (=> b!5517232 m!6520998))

(assert (=> b!5517232 m!6521000))

(declare-fun m!6521002 () Bool)

(assert (=> b!5517232 m!6521002))

(assert (=> b!5516562 d!1747907))

(declare-fun bs!1271499 () Bool)

(declare-fun d!1747909 () Bool)

(assert (= bs!1271499 (and d!1747909 d!1747843)))

(declare-fun lambda!295769 () Int)

(assert (=> bs!1271499 (= (= (head!11815 s!2326) (head!11815 (t!376068 s!2326))) (= lambda!295769 lambda!295759))))

(declare-fun bs!1271500 () Bool)

(assert (= bs!1271500 (and d!1747909 b!5516115)))

(assert (=> bs!1271500 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295769 lambda!295662))))

(declare-fun bs!1271501 () Bool)

(assert (= bs!1271501 (and d!1747909 d!1747653)))

(assert (=> bs!1271501 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295769 lambda!295710))))

(declare-fun bs!1271502 () Bool)

(assert (= bs!1271502 (and d!1747909 d!1747759)))

(assert (=> bs!1271502 (= (= (head!11815 s!2326) (head!11815 (t!376068 s!2326))) (= lambda!295769 lambda!295744))))

(declare-fun bs!1271503 () Bool)

(assert (= bs!1271503 (and d!1747909 d!1747643)))

(assert (=> bs!1271503 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295769 lambda!295709))))

(declare-fun bs!1271504 () Bool)

(assert (= bs!1271504 (and d!1747909 d!1747819)))

(assert (=> bs!1271504 (= (= (head!11815 s!2326) (head!11815 (t!376068 s!2326))) (= lambda!295769 lambda!295757))))

(declare-fun bs!1271505 () Bool)

(assert (= bs!1271505 (and d!1747909 d!1747587)))

(assert (=> bs!1271505 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295769 lambda!295683))))

(assert (=> d!1747909 true))

(assert (=> d!1747909 (= (derivationStepZipper!1611 lt!2246233 (head!11815 s!2326)) (flatMap!1119 lt!2246233 lambda!295769))))

(declare-fun bs!1271506 () Bool)

(assert (= bs!1271506 d!1747909))

(declare-fun m!6521004 () Bool)

(assert (=> bs!1271506 m!6521004))

(assert (=> b!5516562 d!1747909))

(assert (=> b!5516562 d!1747765))

(assert (=> b!5516562 d!1747891))

(assert (=> d!1747621 d!1747615))

(declare-fun d!1747911 () Bool)

(assert (=> d!1747911 (= (flatMap!1119 lt!2246233 lambda!295662) (dynLambda!24493 lambda!295662 lt!2246210))))

(assert (=> d!1747911 true))

(declare-fun _$13!2057 () Unit!155472)

(assert (=> d!1747911 (= (choose!41929 lt!2246233 lt!2246210 lambda!295662) _$13!2057)))

(declare-fun b_lambda!209171 () Bool)

(assert (=> (not b_lambda!209171) (not d!1747911)))

(declare-fun bs!1271507 () Bool)

(assert (= bs!1271507 d!1747911))

(assert (=> bs!1271507 m!6520080))

(assert (=> bs!1271507 m!6520400))

(assert (=> d!1747621 d!1747911))

(assert (=> d!1747651 d!1747769))

(declare-fun d!1747913 () Bool)

(assert (=> d!1747913 (= (nullable!5540 (h!69141 (exprs!5390 (h!69142 zl!343)))) (nullableFct!1664 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun bs!1271508 () Bool)

(assert (= bs!1271508 d!1747913))

(declare-fun m!6521006 () Bool)

(assert (=> bs!1271508 m!6521006))

(assert (=> b!5516361 d!1747913))

(declare-fun bm!408326 () Bool)

(declare-fun call!408334 () List!62817)

(declare-fun call!408331 () List!62817)

(assert (=> bm!408326 (= call!408334 call!408331)))

(declare-fun b!5517233 () Bool)

(declare-fun e!3411609 () (Set Context!9780))

(declare-fun e!3411613 () (Set Context!9780))

(assert (=> b!5517233 (= e!3411609 e!3411613)))

(declare-fun c!964551 () Bool)

(assert (=> b!5517233 (= c!964551 (is-Union!15506 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))))))

(declare-fun b!5517234 () Bool)

(declare-fun e!3411612 () (Set Context!9780))

(declare-fun call!408332 () (Set Context!9780))

(declare-fun call!408333 () (Set Context!9780))

(assert (=> b!5517234 (= e!3411612 (set.union call!408332 call!408333))))

(declare-fun b!5517235 () Bool)

(declare-fun e!3411614 () (Set Context!9780))

(assert (=> b!5517235 (= e!3411614 (as set.empty (Set Context!9780)))))

(declare-fun b!5517236 () Bool)

(declare-fun e!3411611 () (Set Context!9780))

(declare-fun call!408336 () (Set Context!9780))

(assert (=> b!5517236 (= e!3411611 call!408336)))

(declare-fun b!5517237 () Bool)

(declare-fun call!408335 () (Set Context!9780))

(assert (=> b!5517237 (= e!3411613 (set.union call!408335 call!408332))))

(declare-fun b!5517238 () Bool)

(assert (=> b!5517238 (= e!3411612 e!3411611)))

(declare-fun c!964550 () Bool)

(assert (=> b!5517238 (= c!964550 (is-Concat!24351 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))))))

(declare-fun c!964548 () Bool)

(declare-fun d!1747915 () Bool)

(assert (=> d!1747915 (= c!964548 (and (is-ElementMatch!15506 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))) (= (c!964265 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))) (h!69143 s!2326))))))

(assert (=> d!1747915 (= (derivationStepZipperDown!848 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292)))) (ite (or c!964376 c!964374) lt!2246224 (Context!9781 call!408238)) (h!69143 s!2326)) e!3411609)))

(declare-fun bm!408327 () Bool)

(assert (=> bm!408327 (= call!408336 call!408333)))

(declare-fun b!5517239 () Bool)

(assert (=> b!5517239 (= e!3411609 (set.insert (ite (or c!964376 c!964374) lt!2246224 (Context!9781 call!408238)) (as set.empty (Set Context!9780))))))

(declare-fun bm!408328 () Bool)

(declare-fun c!964549 () Bool)

(assert (=> bm!408328 (= call!408331 ($colon$colon!1585 (exprs!5390 (ite (or c!964376 c!964374) lt!2246224 (Context!9781 call!408238))) (ite (or c!964549 c!964550) (regTwo!31524 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))) (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292)))))))))

(declare-fun b!5517240 () Bool)

(declare-fun c!964552 () Bool)

(assert (=> b!5517240 (= c!964552 (is-Star!15506 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))))))

(assert (=> b!5517240 (= e!3411611 e!3411614)))

(declare-fun bm!408329 () Bool)

(assert (=> bm!408329 (= call!408332 (derivationStepZipperDown!848 (ite c!964551 (regTwo!31525 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))) (regOne!31524 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292)))))) (ite c!964551 (ite (or c!964376 c!964374) lt!2246224 (Context!9781 call!408238)) (Context!9781 call!408331)) (h!69143 s!2326)))))

(declare-fun b!5517241 () Bool)

(assert (=> b!5517241 (= e!3411614 call!408336)))

(declare-fun bm!408330 () Bool)

(assert (=> bm!408330 (= call!408333 call!408335)))

(declare-fun b!5517242 () Bool)

(declare-fun e!3411610 () Bool)

(assert (=> b!5517242 (= e!3411610 (nullable!5540 (regOne!31524 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292)))))))))

(declare-fun b!5517243 () Bool)

(assert (=> b!5517243 (= c!964549 e!3411610)))

(declare-fun res!2350680 () Bool)

(assert (=> b!5517243 (=> (not res!2350680) (not e!3411610))))

(assert (=> b!5517243 (= res!2350680 (is-Concat!24351 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))))))

(assert (=> b!5517243 (= e!3411613 e!3411612)))

(declare-fun bm!408331 () Bool)

(assert (=> bm!408331 (= call!408335 (derivationStepZipperDown!848 (ite c!964551 (regOne!31525 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))) (ite c!964549 (regTwo!31524 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))) (ite c!964550 (regOne!31524 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292))))) (reg!15835 (ite c!964376 (regOne!31525 r!7292) (ite c!964374 (regTwo!31524 r!7292) (ite c!964375 (regOne!31524 r!7292) (reg!15835 r!7292)))))))) (ite (or c!964551 c!964549) (ite (or c!964376 c!964374) lt!2246224 (Context!9781 call!408238)) (Context!9781 call!408334)) (h!69143 s!2326)))))

(assert (= (and d!1747915 c!964548) b!5517239))

(assert (= (and d!1747915 (not c!964548)) b!5517233))

(assert (= (and b!5517233 c!964551) b!5517237))

(assert (= (and b!5517233 (not c!964551)) b!5517243))

(assert (= (and b!5517243 res!2350680) b!5517242))

(assert (= (and b!5517243 c!964549) b!5517234))

(assert (= (and b!5517243 (not c!964549)) b!5517238))

(assert (= (and b!5517238 c!964550) b!5517236))

(assert (= (and b!5517238 (not c!964550)) b!5517240))

(assert (= (and b!5517240 c!964552) b!5517241))

(assert (= (and b!5517240 (not c!964552)) b!5517235))

(assert (= (or b!5517236 b!5517241) bm!408326))

(assert (= (or b!5517236 b!5517241) bm!408327))

(assert (= (or b!5517234 bm!408326) bm!408328))

(assert (= (or b!5517234 bm!408327) bm!408330))

(assert (= (or b!5517237 b!5517234) bm!408329))

(assert (= (or b!5517237 bm!408330) bm!408331))

(declare-fun m!6521008 () Bool)

(assert (=> bm!408329 m!6521008))

(declare-fun m!6521010 () Bool)

(assert (=> b!5517242 m!6521010))

(declare-fun m!6521012 () Bool)

(assert (=> b!5517239 m!6521012))

(declare-fun m!6521014 () Bool)

(assert (=> bm!408328 m!6521014))

(declare-fun m!6521016 () Bool)

(assert (=> bm!408331 m!6521016))

(assert (=> bm!408235 d!1747915))

(declare-fun bm!408332 () Bool)

(declare-fun call!408340 () List!62817)

(declare-fun call!408337 () List!62817)

(assert (=> bm!408332 (= call!408340 call!408337)))

(declare-fun b!5517244 () Bool)

(declare-fun e!3411615 () (Set Context!9780))

(declare-fun e!3411619 () (Set Context!9780))

(assert (=> b!5517244 (= e!3411615 e!3411619)))

(declare-fun c!964556 () Bool)

(assert (=> b!5517244 (= c!964556 (is-Union!15506 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))

(declare-fun b!5517245 () Bool)

(declare-fun e!3411618 () (Set Context!9780))

(declare-fun call!408338 () (Set Context!9780))

(declare-fun call!408339 () (Set Context!9780))

(assert (=> b!5517245 (= e!3411618 (set.union call!408338 call!408339))))

(declare-fun b!5517246 () Bool)

(declare-fun e!3411620 () (Set Context!9780))

(assert (=> b!5517246 (= e!3411620 (as set.empty (Set Context!9780)))))

(declare-fun b!5517247 () Bool)

(declare-fun e!3411617 () (Set Context!9780))

(declare-fun call!408342 () (Set Context!9780))

(assert (=> b!5517247 (= e!3411617 call!408342)))

(declare-fun b!5517248 () Bool)

(declare-fun call!408341 () (Set Context!9780))

(assert (=> b!5517248 (= e!3411619 (set.union call!408341 call!408338))))

(declare-fun b!5517249 () Bool)

(assert (=> b!5517249 (= e!3411618 e!3411617)))

(declare-fun c!964555 () Bool)

(assert (=> b!5517249 (= c!964555 (is-Concat!24351 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))

(declare-fun d!1747917 () Bool)

(declare-fun c!964553 () Bool)

(assert (=> d!1747917 (= c!964553 (and (is-ElementMatch!15506 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (= (c!964265 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (h!69143 s!2326))))))

(assert (=> d!1747917 (= (derivationStepZipperDown!848 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))) (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (h!69143 s!2326)) e!3411615)))

(declare-fun bm!408333 () Bool)

(assert (=> bm!408333 (= call!408342 call!408339)))

(declare-fun b!5517250 () Bool)

(assert (=> b!5517250 (= e!3411615 (set.insert (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (as set.empty (Set Context!9780))))))

(declare-fun bm!408334 () Bool)

(declare-fun c!964554 () Bool)

(assert (=> bm!408334 (= call!408337 ($colon$colon!1585 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))) (ite (or c!964554 c!964555) (regTwo!31524 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))))

(declare-fun b!5517251 () Bool)

(declare-fun c!964557 () Bool)

(assert (=> b!5517251 (= c!964557 (is-Star!15506 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))

(assert (=> b!5517251 (= e!3411617 e!3411620)))

(declare-fun bm!408335 () Bool)

(assert (=> bm!408335 (= call!408338 (derivationStepZipperDown!848 (ite c!964556 (regTwo!31525 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (regOne!31524 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))) (ite c!964556 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (Context!9781 call!408337)) (h!69143 s!2326)))))

(declare-fun b!5517252 () Bool)

(assert (=> b!5517252 (= e!3411620 call!408342)))

(declare-fun bm!408336 () Bool)

(assert (=> bm!408336 (= call!408339 call!408341)))

(declare-fun b!5517253 () Bool)

(declare-fun e!3411616 () Bool)

(assert (=> b!5517253 (= e!3411616 (nullable!5540 (regOne!31524 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))))

(declare-fun b!5517254 () Bool)

(assert (=> b!5517254 (= c!964554 e!3411616)))

(declare-fun res!2350681 () Bool)

(assert (=> b!5517254 (=> (not res!2350681) (not e!3411616))))

(assert (=> b!5517254 (= res!2350681 (is-Concat!24351 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))

(assert (=> b!5517254 (= e!3411619 e!3411618)))

(declare-fun bm!408337 () Bool)

(assert (=> bm!408337 (= call!408341 (derivationStepZipperDown!848 (ite c!964556 (regOne!31525 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (ite c!964554 (regTwo!31524 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (ite c!964555 (regOne!31524 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (reg!15835 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693)))))))) (ite (or c!964556 c!964554) (Context!9781 (t!376066 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (Context!9781 call!408340)) (h!69143 s!2326)))))

(assert (= (and d!1747917 c!964553) b!5517250))

(assert (= (and d!1747917 (not c!964553)) b!5517244))

(assert (= (and b!5517244 c!964556) b!5517248))

(assert (= (and b!5517244 (not c!964556)) b!5517254))

(assert (= (and b!5517254 res!2350681) b!5517253))

(assert (= (and b!5517254 c!964554) b!5517245))

(assert (= (and b!5517254 (not c!964554)) b!5517249))

(assert (= (and b!5517249 c!964555) b!5517247))

(assert (= (and b!5517249 (not c!964555)) b!5517251))

(assert (= (and b!5517251 c!964557) b!5517252))

(assert (= (and b!5517251 (not c!964557)) b!5517246))

(assert (= (or b!5517247 b!5517252) bm!408332))

(assert (= (or b!5517247 b!5517252) bm!408333))

(assert (= (or b!5517245 bm!408332) bm!408334))

(assert (= (or b!5517245 bm!408333) bm!408336))

(assert (= (or b!5517248 b!5517245) bm!408335))

(assert (= (or b!5517248 bm!408336) bm!408337))

(declare-fun m!6521018 () Bool)

(assert (=> bm!408335 m!6521018))

(declare-fun m!6521020 () Bool)

(assert (=> b!5517253 m!6521020))

(declare-fun m!6521022 () Bool)

(assert (=> b!5517250 m!6521022))

(declare-fun m!6521024 () Bool)

(assert (=> bm!408334 m!6521024))

(declare-fun m!6521026 () Bool)

(assert (=> bm!408337 m!6521026))

(assert (=> bm!408236 d!1747917))

(declare-fun bm!408338 () Bool)

(declare-fun call!408345 () Bool)

(declare-fun call!408344 () Bool)

(assert (=> bm!408338 (= call!408345 call!408344)))

(declare-fun bm!408339 () Bool)

(declare-fun c!964559 () Bool)

(declare-fun c!964558 () Bool)

(assert (=> bm!408339 (= call!408344 (validRegex!7242 (ite c!964559 (reg!15835 lt!2246319) (ite c!964558 (regTwo!31525 lt!2246319) (regTwo!31524 lt!2246319)))))))

(declare-fun b!5517255 () Bool)

(declare-fun res!2350682 () Bool)

(declare-fun e!3411625 () Bool)

(assert (=> b!5517255 (=> res!2350682 e!3411625)))

(assert (=> b!5517255 (= res!2350682 (not (is-Concat!24351 lt!2246319)))))

(declare-fun e!3411621 () Bool)

(assert (=> b!5517255 (= e!3411621 e!3411625)))

(declare-fun b!5517256 () Bool)

(declare-fun e!3411624 () Bool)

(assert (=> b!5517256 (= e!3411625 e!3411624)))

(declare-fun res!2350684 () Bool)

(assert (=> b!5517256 (=> (not res!2350684) (not e!3411624))))

(declare-fun call!408343 () Bool)

(assert (=> b!5517256 (= res!2350684 call!408343)))

(declare-fun b!5517257 () Bool)

(assert (=> b!5517257 (= e!3411624 call!408345)))

(declare-fun b!5517259 () Bool)

(declare-fun e!3411627 () Bool)

(declare-fun e!3411623 () Bool)

(assert (=> b!5517259 (= e!3411627 e!3411623)))

(assert (=> b!5517259 (= c!964559 (is-Star!15506 lt!2246319))))

(declare-fun b!5517260 () Bool)

(assert (=> b!5517260 (= e!3411623 e!3411621)))

(assert (=> b!5517260 (= c!964558 (is-Union!15506 lt!2246319))))

(declare-fun b!5517261 () Bool)

(declare-fun e!3411622 () Bool)

(assert (=> b!5517261 (= e!3411622 call!408345)))

(declare-fun b!5517262 () Bool)

(declare-fun e!3411626 () Bool)

(assert (=> b!5517262 (= e!3411626 call!408344)))

(declare-fun bm!408340 () Bool)

(assert (=> bm!408340 (= call!408343 (validRegex!7242 (ite c!964558 (regOne!31525 lt!2246319) (regOne!31524 lt!2246319))))))

(declare-fun b!5517263 () Bool)

(assert (=> b!5517263 (= e!3411623 e!3411626)))

(declare-fun res!2350685 () Bool)

(assert (=> b!5517263 (= res!2350685 (not (nullable!5540 (reg!15835 lt!2246319))))))

(assert (=> b!5517263 (=> (not res!2350685) (not e!3411626))))

(declare-fun d!1747919 () Bool)

(declare-fun res!2350686 () Bool)

(assert (=> d!1747919 (=> res!2350686 e!3411627)))

(assert (=> d!1747919 (= res!2350686 (is-ElementMatch!15506 lt!2246319))))

(assert (=> d!1747919 (= (validRegex!7242 lt!2246319) e!3411627)))

(declare-fun b!5517258 () Bool)

(declare-fun res!2350683 () Bool)

(assert (=> b!5517258 (=> (not res!2350683) (not e!3411622))))

(assert (=> b!5517258 (= res!2350683 call!408343)))

(assert (=> b!5517258 (= e!3411621 e!3411622)))

(assert (= (and d!1747919 (not res!2350686)) b!5517259))

(assert (= (and b!5517259 c!964559) b!5517263))

(assert (= (and b!5517259 (not c!964559)) b!5517260))

(assert (= (and b!5517263 res!2350685) b!5517262))

(assert (= (and b!5517260 c!964558) b!5517258))

(assert (= (and b!5517260 (not c!964558)) b!5517255))

(assert (= (and b!5517258 res!2350683) b!5517261))

(assert (= (and b!5517255 (not res!2350682)) b!5517256))

(assert (= (and b!5517256 res!2350684) b!5517257))

(assert (= (or b!5517261 b!5517257) bm!408338))

(assert (= (or b!5517258 b!5517256) bm!408340))

(assert (= (or b!5517262 bm!408338) bm!408339))

(declare-fun m!6521028 () Bool)

(assert (=> bm!408339 m!6521028))

(declare-fun m!6521030 () Bool)

(assert (=> bm!408340 m!6521030))

(declare-fun m!6521032 () Bool)

(assert (=> b!5517263 m!6521032))

(assert (=> d!1747575 d!1747919))

(declare-fun d!1747921 () Bool)

(declare-fun res!2350687 () Bool)

(declare-fun e!3411628 () Bool)

(assert (=> d!1747921 (=> res!2350687 e!3411628)))

(assert (=> d!1747921 (= res!2350687 (is-Nil!62693 (exprs!5390 (h!69142 zl!343))))))

(assert (=> d!1747921 (= (forall!14680 (exprs!5390 (h!69142 zl!343)) lambda!295680) e!3411628)))

(declare-fun b!5517264 () Bool)

(declare-fun e!3411629 () Bool)

(assert (=> b!5517264 (= e!3411628 e!3411629)))

(declare-fun res!2350688 () Bool)

(assert (=> b!5517264 (=> (not res!2350688) (not e!3411629))))

(assert (=> b!5517264 (= res!2350688 (dynLambda!24495 lambda!295680 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5517265 () Bool)

(assert (=> b!5517265 (= e!3411629 (forall!14680 (t!376066 (exprs!5390 (h!69142 zl!343))) lambda!295680))))

(assert (= (and d!1747921 (not res!2350687)) b!5517264))

(assert (= (and b!5517264 res!2350688) b!5517265))

(declare-fun b_lambda!209173 () Bool)

(assert (=> (not b_lambda!209173) (not b!5517264)))

(declare-fun m!6521034 () Bool)

(assert (=> b!5517264 m!6521034))

(declare-fun m!6521036 () Bool)

(assert (=> b!5517265 m!6521036))

(assert (=> d!1747575 d!1747921))

(declare-fun d!1747923 () Bool)

(assert (=> d!1747923 (= ($colon$colon!1585 (exprs!5390 lt!2246224) (ite (or c!964343 c!964344) (regTwo!31524 (regTwo!31524 r!7292)) (regTwo!31524 r!7292))) (Cons!62693 (ite (or c!964343 c!964344) (regTwo!31524 (regTwo!31524 r!7292)) (regTwo!31524 r!7292)) (exprs!5390 lt!2246224)))))

(assert (=> bm!408211 d!1747923))

(declare-fun b!5517266 () Bool)

(declare-fun e!3411632 () Bool)

(declare-fun lt!2246408 () Bool)

(assert (=> b!5517266 (= e!3411632 (not lt!2246408))))

(declare-fun d!1747925 () Bool)

(declare-fun e!3411634 () Bool)

(assert (=> d!1747925 e!3411634))

(declare-fun c!964561 () Bool)

(assert (=> d!1747925 (= c!964561 (is-EmptyExpr!15506 (regTwo!31524 r!7292)))))

(declare-fun e!3411636 () Bool)

(assert (=> d!1747925 (= lt!2246408 e!3411636)))

(declare-fun c!964562 () Bool)

(assert (=> d!1747925 (= c!964562 (isEmpty!34479 (_2!35906 (get!21575 lt!2246329))))))

(assert (=> d!1747925 (validRegex!7242 (regTwo!31524 r!7292))))

(assert (=> d!1747925 (= (matchR!7691 (regTwo!31524 r!7292) (_2!35906 (get!21575 lt!2246329))) lt!2246408)))

(declare-fun b!5517267 () Bool)

(declare-fun e!3411630 () Bool)

(assert (=> b!5517267 (= e!3411630 (= (head!11815 (_2!35906 (get!21575 lt!2246329))) (c!964265 (regTwo!31524 r!7292))))))

(declare-fun b!5517268 () Bool)

(declare-fun e!3411631 () Bool)

(declare-fun e!3411635 () Bool)

(assert (=> b!5517268 (= e!3411631 e!3411635)))

(declare-fun res!2350689 () Bool)

(assert (=> b!5517268 (=> res!2350689 e!3411635)))

(declare-fun call!408346 () Bool)

(assert (=> b!5517268 (= res!2350689 call!408346)))

(declare-fun b!5517269 () Bool)

(declare-fun e!3411633 () Bool)

(assert (=> b!5517269 (= e!3411633 e!3411631)))

(declare-fun res!2350690 () Bool)

(assert (=> b!5517269 (=> (not res!2350690) (not e!3411631))))

(assert (=> b!5517269 (= res!2350690 (not lt!2246408))))

(declare-fun b!5517270 () Bool)

(assert (=> b!5517270 (= e!3411635 (not (= (head!11815 (_2!35906 (get!21575 lt!2246329))) (c!964265 (regTwo!31524 r!7292)))))))

(declare-fun b!5517271 () Bool)

(assert (=> b!5517271 (= e!3411634 (= lt!2246408 call!408346))))

(declare-fun b!5517272 () Bool)

(declare-fun res!2350695 () Bool)

(assert (=> b!5517272 (=> res!2350695 e!3411635)))

(assert (=> b!5517272 (= res!2350695 (not (isEmpty!34479 (tail!10910 (_2!35906 (get!21575 lt!2246329))))))))

(declare-fun b!5517273 () Bool)

(assert (=> b!5517273 (= e!3411634 e!3411632)))

(declare-fun c!964560 () Bool)

(assert (=> b!5517273 (= c!964560 (is-EmptyLang!15506 (regTwo!31524 r!7292)))))

(declare-fun b!5517274 () Bool)

(declare-fun res!2350694 () Bool)

(assert (=> b!5517274 (=> res!2350694 e!3411633)))

(assert (=> b!5517274 (= res!2350694 (not (is-ElementMatch!15506 (regTwo!31524 r!7292))))))

(assert (=> b!5517274 (= e!3411632 e!3411633)))

(declare-fun b!5517275 () Bool)

(assert (=> b!5517275 (= e!3411636 (nullable!5540 (regTwo!31524 r!7292)))))

(declare-fun b!5517276 () Bool)

(declare-fun res!2350691 () Bool)

(assert (=> b!5517276 (=> (not res!2350691) (not e!3411630))))

(assert (=> b!5517276 (= res!2350691 (isEmpty!34479 (tail!10910 (_2!35906 (get!21575 lt!2246329)))))))

(declare-fun bm!408341 () Bool)

(assert (=> bm!408341 (= call!408346 (isEmpty!34479 (_2!35906 (get!21575 lt!2246329))))))

(declare-fun b!5517277 () Bool)

(declare-fun res!2350692 () Bool)

(assert (=> b!5517277 (=> res!2350692 e!3411633)))

(assert (=> b!5517277 (= res!2350692 e!3411630)))

(declare-fun res!2350693 () Bool)

(assert (=> b!5517277 (=> (not res!2350693) (not e!3411630))))

(assert (=> b!5517277 (= res!2350693 lt!2246408)))

(declare-fun b!5517278 () Bool)

(declare-fun res!2350696 () Bool)

(assert (=> b!5517278 (=> (not res!2350696) (not e!3411630))))

(assert (=> b!5517278 (= res!2350696 (not call!408346))))

(declare-fun b!5517279 () Bool)

(assert (=> b!5517279 (= e!3411636 (matchR!7691 (derivativeStep!4371 (regTwo!31524 r!7292) (head!11815 (_2!35906 (get!21575 lt!2246329)))) (tail!10910 (_2!35906 (get!21575 lt!2246329)))))))

(assert (= (and d!1747925 c!964562) b!5517275))

(assert (= (and d!1747925 (not c!964562)) b!5517279))

(assert (= (and d!1747925 c!964561) b!5517271))

(assert (= (and d!1747925 (not c!964561)) b!5517273))

(assert (= (and b!5517273 c!964560) b!5517266))

(assert (= (and b!5517273 (not c!964560)) b!5517274))

(assert (= (and b!5517274 (not res!2350694)) b!5517277))

(assert (= (and b!5517277 res!2350693) b!5517278))

(assert (= (and b!5517278 res!2350696) b!5517276))

(assert (= (and b!5517276 res!2350691) b!5517267))

(assert (= (and b!5517277 (not res!2350692)) b!5517269))

(assert (= (and b!5517269 res!2350690) b!5517268))

(assert (= (and b!5517268 (not res!2350689)) b!5517272))

(assert (= (and b!5517272 (not res!2350695)) b!5517270))

(assert (= (or b!5517271 b!5517268 b!5517278) bm!408341))

(declare-fun m!6521038 () Bool)

(assert (=> b!5517272 m!6521038))

(assert (=> b!5517272 m!6521038))

(declare-fun m!6521040 () Bool)

(assert (=> b!5517272 m!6521040))

(assert (=> b!5517276 m!6521038))

(assert (=> b!5517276 m!6521038))

(assert (=> b!5517276 m!6521040))

(declare-fun m!6521042 () Bool)

(assert (=> bm!408341 m!6521042))

(declare-fun m!6521044 () Bool)

(assert (=> b!5517279 m!6521044))

(assert (=> b!5517279 m!6521044))

(declare-fun m!6521046 () Bool)

(assert (=> b!5517279 m!6521046))

(assert (=> b!5517279 m!6521038))

(assert (=> b!5517279 m!6521046))

(assert (=> b!5517279 m!6521038))

(declare-fun m!6521048 () Bool)

(assert (=> b!5517279 m!6521048))

(assert (=> b!5517267 m!6521044))

(assert (=> b!5517275 m!6520926))

(assert (=> b!5517270 m!6521044))

(assert (=> d!1747925 m!6521042))

(assert (=> d!1747925 m!6520928))

(assert (=> b!5516336 d!1747925))

(assert (=> b!5516336 d!1747781))

(declare-fun d!1747927 () Bool)

(declare-fun c!964563 () Bool)

(assert (=> d!1747927 (= c!964563 (isEmpty!34479 (tail!10910 s!2326)))))

(declare-fun e!3411637 () Bool)

(assert (=> d!1747927 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246229 (head!11815 s!2326)) (tail!10910 s!2326)) e!3411637)))

(declare-fun b!5517280 () Bool)

(assert (=> b!5517280 (= e!3411637 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246229 (head!11815 s!2326))))))

(declare-fun b!5517281 () Bool)

(assert (=> b!5517281 (= e!3411637 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246229 (head!11815 s!2326)) (head!11815 (tail!10910 s!2326))) (tail!10910 (tail!10910 s!2326))))))

(assert (= (and d!1747927 c!964563) b!5517280))

(assert (= (and d!1747927 (not c!964563)) b!5517281))

(assert (=> d!1747927 m!6520290))

(assert (=> d!1747927 m!6520432))

(assert (=> b!5517280 m!6520288))

(declare-fun m!6521050 () Bool)

(assert (=> b!5517280 m!6521050))

(assert (=> b!5517281 m!6520290))

(assert (=> b!5517281 m!6520996))

(assert (=> b!5517281 m!6520288))

(assert (=> b!5517281 m!6520996))

(declare-fun m!6521052 () Bool)

(assert (=> b!5517281 m!6521052))

(assert (=> b!5517281 m!6520290))

(assert (=> b!5517281 m!6521000))

(assert (=> b!5517281 m!6521052))

(assert (=> b!5517281 m!6521000))

(declare-fun m!6521054 () Bool)

(assert (=> b!5517281 m!6521054))

(assert (=> b!5516306 d!1747927))

(declare-fun bs!1271509 () Bool)

(declare-fun d!1747929 () Bool)

(assert (= bs!1271509 (and d!1747929 d!1747909)))

(declare-fun lambda!295770 () Int)

(assert (=> bs!1271509 (= lambda!295770 lambda!295769)))

(declare-fun bs!1271510 () Bool)

(assert (= bs!1271510 (and d!1747929 d!1747843)))

(assert (=> bs!1271510 (= (= (head!11815 s!2326) (head!11815 (t!376068 s!2326))) (= lambda!295770 lambda!295759))))

(declare-fun bs!1271511 () Bool)

(assert (= bs!1271511 (and d!1747929 b!5516115)))

(assert (=> bs!1271511 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295770 lambda!295662))))

(declare-fun bs!1271512 () Bool)

(assert (= bs!1271512 (and d!1747929 d!1747653)))

(assert (=> bs!1271512 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295770 lambda!295710))))

(declare-fun bs!1271513 () Bool)

(assert (= bs!1271513 (and d!1747929 d!1747759)))

(assert (=> bs!1271513 (= (= (head!11815 s!2326) (head!11815 (t!376068 s!2326))) (= lambda!295770 lambda!295744))))

(declare-fun bs!1271514 () Bool)

(assert (= bs!1271514 (and d!1747929 d!1747643)))

(assert (=> bs!1271514 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295770 lambda!295709))))

(declare-fun bs!1271515 () Bool)

(assert (= bs!1271515 (and d!1747929 d!1747819)))

(assert (=> bs!1271515 (= (= (head!11815 s!2326) (head!11815 (t!376068 s!2326))) (= lambda!295770 lambda!295757))))

(declare-fun bs!1271516 () Bool)

(assert (= bs!1271516 (and d!1747929 d!1747587)))

(assert (=> bs!1271516 (= (= (head!11815 s!2326) (h!69143 s!2326)) (= lambda!295770 lambda!295683))))

(assert (=> d!1747929 true))

(assert (=> d!1747929 (= (derivationStepZipper!1611 lt!2246229 (head!11815 s!2326)) (flatMap!1119 lt!2246229 lambda!295770))))

(declare-fun bs!1271517 () Bool)

(assert (= bs!1271517 d!1747929))

(declare-fun m!6521056 () Bool)

(assert (=> bs!1271517 m!6521056))

(assert (=> b!5516306 d!1747929))

(assert (=> b!5516306 d!1747765))

(assert (=> b!5516306 d!1747891))

(declare-fun bs!1271518 () Bool)

(declare-fun d!1747931 () Bool)

(assert (= bs!1271518 (and d!1747931 d!1747783)))

(declare-fun lambda!295771 () Int)

(assert (=> bs!1271518 (= lambda!295771 lambda!295745)))

(declare-fun bs!1271519 () Bool)

(assert (= bs!1271519 (and d!1747931 d!1747607)))

(assert (=> bs!1271519 (= lambda!295771 lambda!295695)))

(declare-fun bs!1271520 () Bool)

(assert (= bs!1271520 (and d!1747931 d!1747875)))

(assert (=> bs!1271520 (= lambda!295771 lambda!295765)))

(declare-fun bs!1271521 () Bool)

(assert (= bs!1271521 (and d!1747931 d!1747575)))

(assert (=> bs!1271521 (= lambda!295771 lambda!295680)))

(declare-fun bs!1271522 () Bool)

(assert (= bs!1271522 (and d!1747931 d!1747789)))

(assert (=> bs!1271522 (= lambda!295771 lambda!295746)))

(declare-fun bs!1271523 () Bool)

(assert (= bs!1271523 (and d!1747931 d!1747629)))

(assert (=> bs!1271523 (= lambda!295771 lambda!295701)))

(declare-fun bs!1271524 () Bool)

(assert (= bs!1271524 (and d!1747931 d!1747899)))

(assert (=> bs!1271524 (= lambda!295771 lambda!295767)))

(declare-fun bs!1271525 () Bool)

(assert (= bs!1271525 (and d!1747931 d!1747609)))

(assert (=> bs!1271525 (= lambda!295771 lambda!295698)))

(declare-fun bs!1271526 () Bool)

(assert (= bs!1271526 (and d!1747931 d!1747637)))

(assert (=> bs!1271526 (= lambda!295771 lambda!295708)))

(assert (=> d!1747931 (= (inv!82013 (h!69142 (t!376067 zl!343))) (forall!14680 (exprs!5390 (h!69142 (t!376067 zl!343))) lambda!295771))))

(declare-fun bs!1271527 () Bool)

(assert (= bs!1271527 d!1747931))

(declare-fun m!6521058 () Bool)

(assert (=> bs!1271527 m!6521058))

(assert (=> b!5516616 d!1747931))

(declare-fun d!1747933 () Bool)

(assert (=> d!1747933 (= (nullable!5540 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))) (nullableFct!1664 (h!69141 (exprs!5390 (Context!9781 (Cons!62693 r!7292 Nil!62693))))))))

(declare-fun bs!1271528 () Bool)

(assert (= bs!1271528 d!1747933))

(declare-fun m!6521060 () Bool)

(assert (=> bs!1271528 m!6521060))

(assert (=> b!5516552 d!1747933))

(declare-fun b!5517282 () Bool)

(declare-fun e!3411640 () Bool)

(declare-fun lt!2246409 () Bool)

(assert (=> b!5517282 (= e!3411640 (not lt!2246409))))

(declare-fun d!1747935 () Bool)

(declare-fun e!3411642 () Bool)

(assert (=> d!1747935 e!3411642))

(declare-fun c!964565 () Bool)

(assert (=> d!1747935 (= c!964565 (is-EmptyExpr!15506 (derivativeStep!4371 r!7292 (head!11815 s!2326))))))

(declare-fun e!3411644 () Bool)

(assert (=> d!1747935 (= lt!2246409 e!3411644)))

(declare-fun c!964566 () Bool)

(assert (=> d!1747935 (= c!964566 (isEmpty!34479 (tail!10910 s!2326)))))

(assert (=> d!1747935 (validRegex!7242 (derivativeStep!4371 r!7292 (head!11815 s!2326)))))

(assert (=> d!1747935 (= (matchR!7691 (derivativeStep!4371 r!7292 (head!11815 s!2326)) (tail!10910 s!2326)) lt!2246409)))

(declare-fun b!5517283 () Bool)

(declare-fun e!3411638 () Bool)

(assert (=> b!5517283 (= e!3411638 (= (head!11815 (tail!10910 s!2326)) (c!964265 (derivativeStep!4371 r!7292 (head!11815 s!2326)))))))

(declare-fun b!5517284 () Bool)

(declare-fun e!3411639 () Bool)

(declare-fun e!3411643 () Bool)

(assert (=> b!5517284 (= e!3411639 e!3411643)))

(declare-fun res!2350697 () Bool)

(assert (=> b!5517284 (=> res!2350697 e!3411643)))

(declare-fun call!408347 () Bool)

(assert (=> b!5517284 (= res!2350697 call!408347)))

(declare-fun b!5517285 () Bool)

(declare-fun e!3411641 () Bool)

(assert (=> b!5517285 (= e!3411641 e!3411639)))

(declare-fun res!2350698 () Bool)

(assert (=> b!5517285 (=> (not res!2350698) (not e!3411639))))

(assert (=> b!5517285 (= res!2350698 (not lt!2246409))))

(declare-fun b!5517286 () Bool)

(assert (=> b!5517286 (= e!3411643 (not (= (head!11815 (tail!10910 s!2326)) (c!964265 (derivativeStep!4371 r!7292 (head!11815 s!2326))))))))

(declare-fun b!5517287 () Bool)

(assert (=> b!5517287 (= e!3411642 (= lt!2246409 call!408347))))

(declare-fun b!5517288 () Bool)

(declare-fun res!2350703 () Bool)

(assert (=> b!5517288 (=> res!2350703 e!3411643)))

(assert (=> b!5517288 (= res!2350703 (not (isEmpty!34479 (tail!10910 (tail!10910 s!2326)))))))

(declare-fun b!5517289 () Bool)

(assert (=> b!5517289 (= e!3411642 e!3411640)))

(declare-fun c!964564 () Bool)

(assert (=> b!5517289 (= c!964564 (is-EmptyLang!15506 (derivativeStep!4371 r!7292 (head!11815 s!2326))))))

(declare-fun b!5517290 () Bool)

(declare-fun res!2350702 () Bool)

(assert (=> b!5517290 (=> res!2350702 e!3411641)))

(assert (=> b!5517290 (= res!2350702 (not (is-ElementMatch!15506 (derivativeStep!4371 r!7292 (head!11815 s!2326)))))))

(assert (=> b!5517290 (= e!3411640 e!3411641)))

(declare-fun b!5517291 () Bool)

(assert (=> b!5517291 (= e!3411644 (nullable!5540 (derivativeStep!4371 r!7292 (head!11815 s!2326))))))

(declare-fun b!5517292 () Bool)

(declare-fun res!2350699 () Bool)

(assert (=> b!5517292 (=> (not res!2350699) (not e!3411638))))

(assert (=> b!5517292 (= res!2350699 (isEmpty!34479 (tail!10910 (tail!10910 s!2326))))))

(declare-fun bm!408342 () Bool)

(assert (=> bm!408342 (= call!408347 (isEmpty!34479 (tail!10910 s!2326)))))

(declare-fun b!5517293 () Bool)

(declare-fun res!2350700 () Bool)

(assert (=> b!5517293 (=> res!2350700 e!3411641)))

(assert (=> b!5517293 (= res!2350700 e!3411638)))

(declare-fun res!2350701 () Bool)

(assert (=> b!5517293 (=> (not res!2350701) (not e!3411638))))

(assert (=> b!5517293 (= res!2350701 lt!2246409)))

(declare-fun b!5517294 () Bool)

(declare-fun res!2350704 () Bool)

(assert (=> b!5517294 (=> (not res!2350704) (not e!3411638))))

(assert (=> b!5517294 (= res!2350704 (not call!408347))))

(declare-fun b!5517295 () Bool)

(assert (=> b!5517295 (= e!3411644 (matchR!7691 (derivativeStep!4371 (derivativeStep!4371 r!7292 (head!11815 s!2326)) (head!11815 (tail!10910 s!2326))) (tail!10910 (tail!10910 s!2326))))))

(assert (= (and d!1747935 c!964566) b!5517291))

(assert (= (and d!1747935 (not c!964566)) b!5517295))

(assert (= (and d!1747935 c!964565) b!5517287))

(assert (= (and d!1747935 (not c!964565)) b!5517289))

(assert (= (and b!5517289 c!964564) b!5517282))

(assert (= (and b!5517289 (not c!964564)) b!5517290))

(assert (= (and b!5517290 (not res!2350702)) b!5517293))

(assert (= (and b!5517293 res!2350701) b!5517294))

(assert (= (and b!5517294 res!2350704) b!5517292))

(assert (= (and b!5517292 res!2350699) b!5517283))

(assert (= (and b!5517293 (not res!2350700)) b!5517285))

(assert (= (and b!5517285 res!2350698) b!5517284))

(assert (= (and b!5517284 (not res!2350697)) b!5517288))

(assert (= (and b!5517288 (not res!2350703)) b!5517286))

(assert (= (or b!5517287 b!5517284 b!5517294) bm!408342))

(assert (=> b!5517288 m!6520290))

(assert (=> b!5517288 m!6521000))

(assert (=> b!5517288 m!6521000))

(declare-fun m!6521062 () Bool)

(assert (=> b!5517288 m!6521062))

(assert (=> b!5517292 m!6520290))

(assert (=> b!5517292 m!6521000))

(assert (=> b!5517292 m!6521000))

(assert (=> b!5517292 m!6521062))

(assert (=> bm!408342 m!6520290))

(assert (=> bm!408342 m!6520432))

(assert (=> b!5517295 m!6520290))

(assert (=> b!5517295 m!6520996))

(assert (=> b!5517295 m!6520434))

(assert (=> b!5517295 m!6520996))

(declare-fun m!6521064 () Bool)

(assert (=> b!5517295 m!6521064))

(assert (=> b!5517295 m!6520290))

(assert (=> b!5517295 m!6521000))

(assert (=> b!5517295 m!6521064))

(assert (=> b!5517295 m!6521000))

(declare-fun m!6521066 () Bool)

(assert (=> b!5517295 m!6521066))

(assert (=> b!5517283 m!6520290))

(assert (=> b!5517283 m!6520996))

(assert (=> b!5517291 m!6520434))

(declare-fun m!6521068 () Bool)

(assert (=> b!5517291 m!6521068))

(assert (=> b!5517286 m!6520290))

(assert (=> b!5517286 m!6520996))

(assert (=> d!1747935 m!6520290))

(assert (=> d!1747935 m!6520432))

(assert (=> d!1747935 m!6520434))

(declare-fun m!6521070 () Bool)

(assert (=> d!1747935 m!6521070))

(assert (=> b!5516539 d!1747935))

(declare-fun d!1747937 () Bool)

(declare-fun lt!2246412 () Regex!15506)

(assert (=> d!1747937 (validRegex!7242 lt!2246412)))

(declare-fun e!3411659 () Regex!15506)

(assert (=> d!1747937 (= lt!2246412 e!3411659)))

(declare-fun c!964579 () Bool)

(assert (=> d!1747937 (= c!964579 (or (is-EmptyExpr!15506 r!7292) (is-EmptyLang!15506 r!7292)))))

(assert (=> d!1747937 (validRegex!7242 r!7292)))

(assert (=> d!1747937 (= (derivativeStep!4371 r!7292 (head!11815 s!2326)) lt!2246412)))

(declare-fun b!5517316 () Bool)

(declare-fun e!3411656 () Regex!15506)

(declare-fun e!3411655 () Regex!15506)

(assert (=> b!5517316 (= e!3411656 e!3411655)))

(declare-fun c!964578 () Bool)

(assert (=> b!5517316 (= c!964578 (is-Star!15506 r!7292))))

(declare-fun b!5517317 () Bool)

(assert (=> b!5517317 (= e!3411659 EmptyLang!15506)))

(declare-fun c!964577 () Bool)

(declare-fun bm!408351 () Bool)

(declare-fun call!408356 () Regex!15506)

(assert (=> bm!408351 (= call!408356 (derivativeStep!4371 (ite c!964577 (regOne!31525 r!7292) (regOne!31524 r!7292)) (head!11815 s!2326)))))

(declare-fun b!5517318 () Bool)

(declare-fun e!3411658 () Regex!15506)

(assert (=> b!5517318 (= e!3411659 e!3411658)))

(declare-fun c!964580 () Bool)

(assert (=> b!5517318 (= c!964580 (is-ElementMatch!15506 r!7292))))

(declare-fun b!5517319 () Bool)

(assert (=> b!5517319 (= c!964577 (is-Union!15506 r!7292))))

(assert (=> b!5517319 (= e!3411658 e!3411656)))

(declare-fun bm!408352 () Bool)

(declare-fun c!964581 () Bool)

(declare-fun call!408359 () Regex!15506)

(assert (=> bm!408352 (= call!408359 (derivativeStep!4371 (ite c!964577 (regTwo!31525 r!7292) (ite c!964578 (reg!15835 r!7292) (ite c!964581 (regTwo!31524 r!7292) (regOne!31524 r!7292)))) (head!11815 s!2326)))))

(declare-fun b!5517320 () Bool)

(assert (=> b!5517320 (= e!3411658 (ite (= (head!11815 s!2326) (c!964265 r!7292)) EmptyExpr!15506 EmptyLang!15506))))

(declare-fun b!5517321 () Bool)

(assert (=> b!5517321 (= e!3411656 (Union!15506 call!408356 call!408359))))

(declare-fun bm!408353 () Bool)

(declare-fun call!408358 () Regex!15506)

(declare-fun call!408357 () Regex!15506)

(assert (=> bm!408353 (= call!408358 call!408357)))

(declare-fun b!5517322 () Bool)

(assert (=> b!5517322 (= c!964581 (nullable!5540 (regOne!31524 r!7292)))))

(declare-fun e!3411657 () Regex!15506)

(assert (=> b!5517322 (= e!3411655 e!3411657)))

(declare-fun b!5517323 () Bool)

(assert (=> b!5517323 (= e!3411657 (Union!15506 (Concat!24351 call!408358 (regTwo!31524 r!7292)) EmptyLang!15506))))

(declare-fun b!5517324 () Bool)

(assert (=> b!5517324 (= e!3411655 (Concat!24351 call!408357 r!7292))))

(declare-fun b!5517325 () Bool)

(assert (=> b!5517325 (= e!3411657 (Union!15506 (Concat!24351 call!408356 (regTwo!31524 r!7292)) call!408358))))

(declare-fun bm!408354 () Bool)

(assert (=> bm!408354 (= call!408357 call!408359)))

(assert (= (and d!1747937 c!964579) b!5517317))

(assert (= (and d!1747937 (not c!964579)) b!5517318))

(assert (= (and b!5517318 c!964580) b!5517320))

(assert (= (and b!5517318 (not c!964580)) b!5517319))

(assert (= (and b!5517319 c!964577) b!5517321))

(assert (= (and b!5517319 (not c!964577)) b!5517316))

(assert (= (and b!5517316 c!964578) b!5517324))

(assert (= (and b!5517316 (not c!964578)) b!5517322))

(assert (= (and b!5517322 c!964581) b!5517325))

(assert (= (and b!5517322 (not c!964581)) b!5517323))

(assert (= (or b!5517325 b!5517323) bm!408353))

(assert (= (or b!5517324 bm!408353) bm!408354))

(assert (= (or b!5517321 bm!408354) bm!408352))

(assert (= (or b!5517321 b!5517325) bm!408351))

(declare-fun m!6521072 () Bool)

(assert (=> d!1747937 m!6521072))

(assert (=> d!1747937 m!6520102))

(assert (=> bm!408351 m!6520286))

(declare-fun m!6521074 () Bool)

(assert (=> bm!408351 m!6521074))

(assert (=> bm!408352 m!6520286))

(declare-fun m!6521076 () Bool)

(assert (=> bm!408352 m!6521076))

(assert (=> b!5517322 m!6520094))

(assert (=> b!5516539 d!1747937))

(assert (=> b!5516539 d!1747765))

(assert (=> b!5516539 d!1747891))

(assert (=> b!5516527 d!1747765))

(declare-fun bm!408355 () Bool)

(declare-fun call!408363 () List!62817)

(declare-fun call!408360 () List!62817)

(assert (=> bm!408355 (= call!408363 call!408360)))

(declare-fun b!5517326 () Bool)

(declare-fun e!3411660 () (Set Context!9780))

(declare-fun e!3411664 () (Set Context!9780))

(assert (=> b!5517326 (= e!3411660 e!3411664)))

(declare-fun c!964585 () Bool)

(assert (=> b!5517326 (= c!964585 (is-Union!15506 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun b!5517327 () Bool)

(declare-fun e!3411663 () (Set Context!9780))

(declare-fun call!408361 () (Set Context!9780))

(declare-fun call!408362 () (Set Context!9780))

(assert (=> b!5517327 (= e!3411663 (set.union call!408361 call!408362))))

(declare-fun b!5517328 () Bool)

(declare-fun e!3411665 () (Set Context!9780))

(assert (=> b!5517328 (= e!3411665 (as set.empty (Set Context!9780)))))

(declare-fun b!5517329 () Bool)

(declare-fun e!3411662 () (Set Context!9780))

(declare-fun call!408365 () (Set Context!9780))

(assert (=> b!5517329 (= e!3411662 call!408365)))

(declare-fun b!5517330 () Bool)

(declare-fun call!408364 () (Set Context!9780))

(assert (=> b!5517330 (= e!3411664 (set.union call!408364 call!408361))))

(declare-fun b!5517331 () Bool)

(assert (=> b!5517331 (= e!3411663 e!3411662)))

(declare-fun c!964584 () Bool)

(assert (=> b!5517331 (= c!964584 (is-Concat!24351 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun d!1747939 () Bool)

(declare-fun c!964582 () Bool)

(assert (=> d!1747939 (= c!964582 (and (is-ElementMatch!15506 (h!69141 (exprs!5390 (h!69142 zl!343)))) (= (c!964265 (h!69141 (exprs!5390 (h!69142 zl!343)))) (h!69143 s!2326))))))

(assert (=> d!1747939 (= (derivationStepZipperDown!848 (h!69141 (exprs!5390 (h!69142 zl!343))) (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))) (h!69143 s!2326)) e!3411660)))

(declare-fun bm!408356 () Bool)

(assert (=> bm!408356 (= call!408365 call!408362)))

(declare-fun b!5517332 () Bool)

(assert (=> b!5517332 (= e!3411660 (set.insert (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))) (as set.empty (Set Context!9780))))))

(declare-fun c!964583 () Bool)

(declare-fun bm!408357 () Bool)

(assert (=> bm!408357 (= call!408360 ($colon$colon!1585 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343))))) (ite (or c!964583 c!964584) (regTwo!31524 (h!69141 (exprs!5390 (h!69142 zl!343)))) (h!69141 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5517333 () Bool)

(declare-fun c!964586 () Bool)

(assert (=> b!5517333 (= c!964586 (is-Star!15506 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(assert (=> b!5517333 (= e!3411662 e!3411665)))

(declare-fun bm!408358 () Bool)

(assert (=> bm!408358 (= call!408361 (derivationStepZipperDown!848 (ite c!964585 (regTwo!31525 (h!69141 (exprs!5390 (h!69142 zl!343)))) (regOne!31524 (h!69141 (exprs!5390 (h!69142 zl!343))))) (ite c!964585 (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))) (Context!9781 call!408360)) (h!69143 s!2326)))))

(declare-fun b!5517334 () Bool)

(assert (=> b!5517334 (= e!3411665 call!408365)))

(declare-fun bm!408359 () Bool)

(assert (=> bm!408359 (= call!408362 call!408364)))

(declare-fun b!5517335 () Bool)

(declare-fun e!3411661 () Bool)

(assert (=> b!5517335 (= e!3411661 (nullable!5540 (regOne!31524 (h!69141 (exprs!5390 (h!69142 zl!343))))))))

(declare-fun b!5517336 () Bool)

(assert (=> b!5517336 (= c!964583 e!3411661)))

(declare-fun res!2350705 () Bool)

(assert (=> b!5517336 (=> (not res!2350705) (not e!3411661))))

(assert (=> b!5517336 (= res!2350705 (is-Concat!24351 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(assert (=> b!5517336 (= e!3411664 e!3411663)))

(declare-fun bm!408360 () Bool)

(assert (=> bm!408360 (= call!408364 (derivationStepZipperDown!848 (ite c!964585 (regOne!31525 (h!69141 (exprs!5390 (h!69142 zl!343)))) (ite c!964583 (regTwo!31524 (h!69141 (exprs!5390 (h!69142 zl!343)))) (ite c!964584 (regOne!31524 (h!69141 (exprs!5390 (h!69142 zl!343)))) (reg!15835 (h!69141 (exprs!5390 (h!69142 zl!343))))))) (ite (or c!964585 c!964583) (Context!9781 (t!376066 (exprs!5390 (h!69142 zl!343)))) (Context!9781 call!408363)) (h!69143 s!2326)))))

(assert (= (and d!1747939 c!964582) b!5517332))

(assert (= (and d!1747939 (not c!964582)) b!5517326))

(assert (= (and b!5517326 c!964585) b!5517330))

(assert (= (and b!5517326 (not c!964585)) b!5517336))

(assert (= (and b!5517336 res!2350705) b!5517335))

(assert (= (and b!5517336 c!964583) b!5517327))

(assert (= (and b!5517336 (not c!964583)) b!5517331))

(assert (= (and b!5517331 c!964584) b!5517329))

(assert (= (and b!5517331 (not c!964584)) b!5517333))

(assert (= (and b!5517333 c!964586) b!5517334))

(assert (= (and b!5517333 (not c!964586)) b!5517328))

(assert (= (or b!5517329 b!5517334) bm!408355))

(assert (= (or b!5517329 b!5517334) bm!408356))

(assert (= (or b!5517327 bm!408355) bm!408357))

(assert (= (or b!5517327 bm!408356) bm!408359))

(assert (= (or b!5517330 b!5517327) bm!408358))

(assert (= (or b!5517330 bm!408359) bm!408360))

(declare-fun m!6521078 () Bool)

(assert (=> bm!408358 m!6521078))

(declare-fun m!6521080 () Bool)

(assert (=> b!5517335 m!6521080))

(declare-fun m!6521082 () Bool)

(assert (=> b!5517332 m!6521082))

(declare-fun m!6521084 () Bool)

(assert (=> bm!408357 m!6521084))

(declare-fun m!6521086 () Bool)

(assert (=> bm!408360 m!6521086))

(assert (=> bm!408194 d!1747939))

(declare-fun d!1747941 () Bool)

(declare-fun c!964587 () Bool)

(assert (=> d!1747941 (= c!964587 (isEmpty!34479 (tail!10910 (t!376068 s!2326))))))

(declare-fun e!3411666 () Bool)

(assert (=> d!1747941 (= (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))) e!3411666)))

(declare-fun b!5517337 () Bool)

(assert (=> b!5517337 (= e!3411666 (nullableZipper!1532 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (head!11815 (t!376068 s!2326)))))))

(declare-fun b!5517338 () Bool)

(assert (=> b!5517338 (= e!3411666 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (head!11815 (tail!10910 (t!376068 s!2326)))) (tail!10910 (tail!10910 (t!376068 s!2326)))))))

(assert (= (and d!1747941 c!964587) b!5517337))

(assert (= (and d!1747941 (not c!964587)) b!5517338))

(assert (=> d!1747941 m!6520242))

(assert (=> d!1747941 m!6520748))

(assert (=> b!5517337 m!6520478))

(declare-fun m!6521088 () Bool)

(assert (=> b!5517337 m!6521088))

(assert (=> b!5517338 m!6520242))

(assert (=> b!5517338 m!6520752))

(assert (=> b!5517338 m!6520478))

(assert (=> b!5517338 m!6520752))

(declare-fun m!6521090 () Bool)

(assert (=> b!5517338 m!6521090))

(assert (=> b!5517338 m!6520242))

(assert (=> b!5517338 m!6520756))

(assert (=> b!5517338 m!6521090))

(assert (=> b!5517338 m!6520756))

(declare-fun m!6521092 () Bool)

(assert (=> b!5517338 m!6521092))

(assert (=> b!5516564 d!1747941))

(declare-fun bs!1271529 () Bool)

(declare-fun d!1747943 () Bool)

(assert (= bs!1271529 (and d!1747943 d!1747909)))

(declare-fun lambda!295772 () Int)

(assert (=> bs!1271529 (= (= (head!11815 (t!376068 s!2326)) (head!11815 s!2326)) (= lambda!295772 lambda!295769))))

(declare-fun bs!1271530 () Bool)

(assert (= bs!1271530 (and d!1747943 d!1747843)))

(assert (=> bs!1271530 (= lambda!295772 lambda!295759)))

(declare-fun bs!1271531 () Bool)

(assert (= bs!1271531 (and d!1747943 b!5516115)))

(assert (=> bs!1271531 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295772 lambda!295662))))

(declare-fun bs!1271532 () Bool)

(assert (= bs!1271532 (and d!1747943 d!1747653)))

(assert (=> bs!1271532 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295772 lambda!295710))))

(declare-fun bs!1271533 () Bool)

(assert (= bs!1271533 (and d!1747943 d!1747759)))

(assert (=> bs!1271533 (= lambda!295772 lambda!295744)))

(declare-fun bs!1271534 () Bool)

(assert (= bs!1271534 (and d!1747943 d!1747643)))

(assert (=> bs!1271534 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295772 lambda!295709))))

(declare-fun bs!1271535 () Bool)

(assert (= bs!1271535 (and d!1747943 d!1747929)))

(assert (=> bs!1271535 (= (= (head!11815 (t!376068 s!2326)) (head!11815 s!2326)) (= lambda!295772 lambda!295770))))

(declare-fun bs!1271536 () Bool)

(assert (= bs!1271536 (and d!1747943 d!1747819)))

(assert (=> bs!1271536 (= lambda!295772 lambda!295757)))

(declare-fun bs!1271537 () Bool)

(assert (= bs!1271537 (and d!1747943 d!1747587)))

(assert (=> bs!1271537 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295772 lambda!295683))))

(assert (=> d!1747943 true))

(assert (=> d!1747943 (= (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) (head!11815 (t!376068 s!2326))) (flatMap!1119 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) lambda!295772))))

(declare-fun bs!1271538 () Bool)

(assert (= bs!1271538 d!1747943))

(assert (=> bs!1271538 m!6520106))

(declare-fun m!6521094 () Bool)

(assert (=> bs!1271538 m!6521094))

(assert (=> b!5516564 d!1747943))

(assert (=> b!5516564 d!1747761))

(assert (=> b!5516564 d!1747763))

(declare-fun b!5517339 () Bool)

(declare-fun e!3411667 () (Set Context!9780))

(declare-fun e!3411669 () (Set Context!9780))

(assert (=> b!5517339 (= e!3411667 e!3411669)))

(declare-fun c!964589 () Bool)

(assert (=> b!5517339 (= c!964589 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246232))))))))

(declare-fun b!5517340 () Bool)

(declare-fun e!3411668 () Bool)

(assert (=> b!5517340 (= e!3411668 (nullable!5540 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246232)))))))))

(declare-fun call!408366 () (Set Context!9780))

(declare-fun b!5517341 () Bool)

(assert (=> b!5517341 (= e!3411667 (set.union call!408366 (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246232)))))) (h!69143 s!2326))))))

(declare-fun b!5517342 () Bool)

(assert (=> b!5517342 (= e!3411669 call!408366)))

(declare-fun d!1747945 () Bool)

(declare-fun c!964588 () Bool)

(assert (=> d!1747945 (= c!964588 e!3411668)))

(declare-fun res!2350706 () Bool)

(assert (=> d!1747945 (=> (not res!2350706) (not e!3411668))))

(assert (=> d!1747945 (= res!2350706 (is-Cons!62693 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246232))))))))

(assert (=> d!1747945 (= (derivationStepZipperUp!774 (Context!9781 (t!376066 (exprs!5390 lt!2246232))) (h!69143 s!2326)) e!3411667)))

(declare-fun b!5517343 () Bool)

(assert (=> b!5517343 (= e!3411669 (as set.empty (Set Context!9780)))))

(declare-fun bm!408361 () Bool)

(assert (=> bm!408361 (= call!408366 (derivationStepZipperDown!848 (h!69141 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246232))))) (Context!9781 (t!376066 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246232)))))) (h!69143 s!2326)))))

(assert (= (and d!1747945 res!2350706) b!5517340))

(assert (= (and d!1747945 c!964588) b!5517341))

(assert (= (and d!1747945 (not c!964588)) b!5517339))

(assert (= (and b!5517339 c!964589) b!5517342))

(assert (= (and b!5517339 (not c!964589)) b!5517343))

(assert (= (or b!5517341 b!5517342) bm!408361))

(declare-fun m!6521096 () Bool)

(assert (=> b!5517340 m!6521096))

(declare-fun m!6521098 () Bool)

(assert (=> b!5517341 m!6521098))

(declare-fun m!6521100 () Bool)

(assert (=> bm!408361 m!6521100))

(assert (=> b!5516403 d!1747945))

(declare-fun bm!408362 () Bool)

(declare-fun call!408370 () List!62817)

(declare-fun call!408367 () List!62817)

(assert (=> bm!408362 (= call!408370 call!408367)))

(declare-fun b!5517344 () Bool)

(declare-fun e!3411670 () (Set Context!9780))

(declare-fun e!3411674 () (Set Context!9780))

(assert (=> b!5517344 (= e!3411670 e!3411674)))

(declare-fun c!964593 () Bool)

(assert (=> b!5517344 (= c!964593 (is-Union!15506 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))))))

(declare-fun b!5517345 () Bool)

(declare-fun e!3411673 () (Set Context!9780))

(declare-fun call!408368 () (Set Context!9780))

(declare-fun call!408369 () (Set Context!9780))

(assert (=> b!5517345 (= e!3411673 (set.union call!408368 call!408369))))

(declare-fun b!5517346 () Bool)

(declare-fun e!3411675 () (Set Context!9780))

(assert (=> b!5517346 (= e!3411675 (as set.empty (Set Context!9780)))))

(declare-fun b!5517347 () Bool)

(declare-fun e!3411672 () (Set Context!9780))

(declare-fun call!408372 () (Set Context!9780))

(assert (=> b!5517347 (= e!3411672 call!408372)))

(declare-fun b!5517348 () Bool)

(declare-fun call!408371 () (Set Context!9780))

(assert (=> b!5517348 (= e!3411674 (set.union call!408371 call!408368))))

(declare-fun b!5517349 () Bool)

(assert (=> b!5517349 (= e!3411673 e!3411672)))

(declare-fun c!964592 () Bool)

(assert (=> b!5517349 (= c!964592 (is-Concat!24351 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))))))

(declare-fun c!964590 () Bool)

(declare-fun d!1747947 () Bool)

(assert (=> d!1747947 (= c!964590 (and (is-ElementMatch!15506 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))) (= (c!964265 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))) (h!69143 s!2326))))))

(assert (=> d!1747947 (= (derivationStepZipperDown!848 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292))))) (ite (or c!964350 c!964348) lt!2246232 (Context!9781 call!408223)) (h!69143 s!2326)) e!3411670)))

(declare-fun bm!408363 () Bool)

(assert (=> bm!408363 (= call!408372 call!408369)))

(declare-fun b!5517350 () Bool)

(assert (=> b!5517350 (= e!3411670 (set.insert (ite (or c!964350 c!964348) lt!2246232 (Context!9781 call!408223)) (as set.empty (Set Context!9780))))))

(declare-fun c!964591 () Bool)

(declare-fun bm!408364 () Bool)

(assert (=> bm!408364 (= call!408367 ($colon$colon!1585 (exprs!5390 (ite (or c!964350 c!964348) lt!2246232 (Context!9781 call!408223))) (ite (or c!964591 c!964592) (regTwo!31524 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))) (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292))))))))))

(declare-fun c!964594 () Bool)

(declare-fun b!5517351 () Bool)

(assert (=> b!5517351 (= c!964594 (is-Star!15506 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))))))

(assert (=> b!5517351 (= e!3411672 e!3411675)))

(declare-fun bm!408365 () Bool)

(assert (=> bm!408365 (= call!408368 (derivationStepZipperDown!848 (ite c!964593 (regTwo!31525 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))) (regOne!31524 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292))))))) (ite c!964593 (ite (or c!964350 c!964348) lt!2246232 (Context!9781 call!408223)) (Context!9781 call!408367)) (h!69143 s!2326)))))

(declare-fun b!5517352 () Bool)

(assert (=> b!5517352 (= e!3411675 call!408372)))

(declare-fun bm!408366 () Bool)

(assert (=> bm!408366 (= call!408369 call!408371)))

(declare-fun b!5517353 () Bool)

(declare-fun e!3411671 () Bool)

(assert (=> b!5517353 (= e!3411671 (nullable!5540 (regOne!31524 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292))))))))))

(declare-fun b!5517354 () Bool)

(assert (=> b!5517354 (= c!964591 e!3411671)))

(declare-fun res!2350707 () Bool)

(assert (=> b!5517354 (=> (not res!2350707) (not e!3411671))))

(assert (=> b!5517354 (= res!2350707 (is-Concat!24351 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))))))

(assert (=> b!5517354 (= e!3411674 e!3411673)))

(declare-fun bm!408367 () Bool)

(assert (=> bm!408367 (= call!408371 (derivationStepZipperDown!848 (ite c!964593 (regOne!31525 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))) (ite c!964591 (regTwo!31524 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))) (ite c!964592 (regOne!31524 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292)))))) (reg!15835 (ite c!964350 (regOne!31525 (regOne!31524 r!7292)) (ite c!964348 (regTwo!31524 (regOne!31524 r!7292)) (ite c!964349 (regOne!31524 (regOne!31524 r!7292)) (reg!15835 (regOne!31524 r!7292))))))))) (ite (or c!964593 c!964591) (ite (or c!964350 c!964348) lt!2246232 (Context!9781 call!408223)) (Context!9781 call!408370)) (h!69143 s!2326)))))

(assert (= (and d!1747947 c!964590) b!5517350))

(assert (= (and d!1747947 (not c!964590)) b!5517344))

(assert (= (and b!5517344 c!964593) b!5517348))

(assert (= (and b!5517344 (not c!964593)) b!5517354))

(assert (= (and b!5517354 res!2350707) b!5517353))

(assert (= (and b!5517354 c!964591) b!5517345))

(assert (= (and b!5517354 (not c!964591)) b!5517349))

(assert (= (and b!5517349 c!964592) b!5517347))

(assert (= (and b!5517349 (not c!964592)) b!5517351))

(assert (= (and b!5517351 c!964594) b!5517352))

(assert (= (and b!5517351 (not c!964594)) b!5517346))

(assert (= (or b!5517347 b!5517352) bm!408362))

(assert (= (or b!5517347 b!5517352) bm!408363))

(assert (= (or b!5517345 bm!408362) bm!408364))

(assert (= (or b!5517345 bm!408363) bm!408366))

(assert (= (or b!5517348 b!5517345) bm!408365))

(assert (= (or b!5517348 bm!408366) bm!408367))

(declare-fun m!6521102 () Bool)

(assert (=> bm!408365 m!6521102))

(declare-fun m!6521104 () Bool)

(assert (=> b!5517353 m!6521104))

(declare-fun m!6521106 () Bool)

(assert (=> b!5517350 m!6521106))

(declare-fun m!6521108 () Bool)

(assert (=> bm!408364 m!6521108))

(declare-fun m!6521110 () Bool)

(assert (=> bm!408367 m!6521110))

(assert (=> bm!408220 d!1747947))

(declare-fun d!1747949 () Bool)

(assert (=> d!1747949 (= (flatMap!1119 lt!2246233 lambda!295710) (choose!41928 lt!2246233 lambda!295710))))

(declare-fun bs!1271539 () Bool)

(assert (= bs!1271539 d!1747949))

(declare-fun m!6521112 () Bool)

(assert (=> bs!1271539 m!6521112))

(assert (=> d!1747653 d!1747949))

(assert (=> b!5516295 d!1747579))

(declare-fun d!1747951 () Bool)

(assert (=> d!1747951 (= (flatMap!1119 z!1189 lambda!295709) (choose!41928 z!1189 lambda!295709))))

(declare-fun bs!1271540 () Bool)

(assert (= bs!1271540 d!1747951))

(declare-fun m!6521114 () Bool)

(assert (=> bs!1271540 m!6521114))

(assert (=> d!1747643 d!1747951))

(declare-fun b!5517365 () Bool)

(declare-fun res!2350713 () Bool)

(declare-fun e!3411681 () Bool)

(assert (=> b!5517365 (=> (not res!2350713) (not e!3411681))))

(declare-fun lt!2246415 () List!62819)

(declare-fun size!39936 (List!62819) Int)

(assert (=> b!5517365 (= res!2350713 (= (size!39936 lt!2246415) (+ (size!39936 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695))) (size!39936 (t!376068 s!2326)))))))

(declare-fun b!5517366 () Bool)

(assert (=> b!5517366 (= e!3411681 (or (not (= (t!376068 s!2326) Nil!62695)) (= lt!2246415 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)))))))

(declare-fun b!5517364 () Bool)

(declare-fun e!3411680 () List!62819)

(assert (=> b!5517364 (= e!3411680 (Cons!62695 (h!69143 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695))) (++!13754 (t!376068 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695))) (t!376068 s!2326))))))

(declare-fun b!5517363 () Bool)

(assert (=> b!5517363 (= e!3411680 (t!376068 s!2326))))

(declare-fun d!1747953 () Bool)

(assert (=> d!1747953 e!3411681))

(declare-fun res!2350712 () Bool)

(assert (=> d!1747953 (=> (not res!2350712) (not e!3411681))))

(declare-fun content!11270 (List!62819) (Set C!31282))

(assert (=> d!1747953 (= res!2350712 (= (content!11270 lt!2246415) (set.union (content!11270 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695))) (content!11270 (t!376068 s!2326)))))))

(assert (=> d!1747953 (= lt!2246415 e!3411680)))

(declare-fun c!964597 () Bool)

(assert (=> d!1747953 (= c!964597 (is-Nil!62695 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695))))))

(assert (=> d!1747953 (= (++!13754 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (t!376068 s!2326)) lt!2246415)))

(assert (= (and d!1747953 c!964597) b!5517363))

(assert (= (and d!1747953 (not c!964597)) b!5517364))

(assert (= (and d!1747953 res!2350712) b!5517365))

(assert (= (and b!5517365 res!2350713) b!5517366))

(declare-fun m!6521116 () Bool)

(assert (=> b!5517365 m!6521116))

(assert (=> b!5517365 m!6520308))

(declare-fun m!6521118 () Bool)

(assert (=> b!5517365 m!6521118))

(declare-fun m!6521120 () Bool)

(assert (=> b!5517365 m!6521120))

(declare-fun m!6521122 () Bool)

(assert (=> b!5517364 m!6521122))

(declare-fun m!6521124 () Bool)

(assert (=> d!1747953 m!6521124))

(assert (=> d!1747953 m!6520308))

(declare-fun m!6521126 () Bool)

(assert (=> d!1747953 m!6521126))

(declare-fun m!6521128 () Bool)

(assert (=> d!1747953 m!6521128))

(assert (=> b!5516331 d!1747953))

(declare-fun b!5517369 () Bool)

(declare-fun res!2350715 () Bool)

(declare-fun e!3411683 () Bool)

(assert (=> b!5517369 (=> (not res!2350715) (not e!3411683))))

(declare-fun lt!2246416 () List!62819)

(assert (=> b!5517369 (= res!2350715 (= (size!39936 lt!2246416) (+ (size!39936 Nil!62695) (size!39936 (Cons!62695 (h!69143 s!2326) Nil!62695)))))))

(declare-fun b!5517370 () Bool)

(assert (=> b!5517370 (= e!3411683 (or (not (= (Cons!62695 (h!69143 s!2326) Nil!62695) Nil!62695)) (= lt!2246416 Nil!62695)))))

(declare-fun b!5517368 () Bool)

(declare-fun e!3411682 () List!62819)

(assert (=> b!5517368 (= e!3411682 (Cons!62695 (h!69143 Nil!62695) (++!13754 (t!376068 Nil!62695) (Cons!62695 (h!69143 s!2326) Nil!62695))))))

(declare-fun b!5517367 () Bool)

(assert (=> b!5517367 (= e!3411682 (Cons!62695 (h!69143 s!2326) Nil!62695))))

(declare-fun d!1747955 () Bool)

(assert (=> d!1747955 e!3411683))

(declare-fun res!2350714 () Bool)

(assert (=> d!1747955 (=> (not res!2350714) (not e!3411683))))

(assert (=> d!1747955 (= res!2350714 (= (content!11270 lt!2246416) (set.union (content!11270 Nil!62695) (content!11270 (Cons!62695 (h!69143 s!2326) Nil!62695)))))))

(assert (=> d!1747955 (= lt!2246416 e!3411682)))

(declare-fun c!964598 () Bool)

(assert (=> d!1747955 (= c!964598 (is-Nil!62695 Nil!62695))))

(assert (=> d!1747955 (= (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) lt!2246416)))

(assert (= (and d!1747955 c!964598) b!5517367))

(assert (= (and d!1747955 (not c!964598)) b!5517368))

(assert (= (and d!1747955 res!2350714) b!5517369))

(assert (= (and b!5517369 res!2350715) b!5517370))

(declare-fun m!6521130 () Bool)

(assert (=> b!5517369 m!6521130))

(declare-fun m!6521132 () Bool)

(assert (=> b!5517369 m!6521132))

(declare-fun m!6521134 () Bool)

(assert (=> b!5517369 m!6521134))

(declare-fun m!6521136 () Bool)

(assert (=> b!5517368 m!6521136))

(declare-fun m!6521138 () Bool)

(assert (=> d!1747955 m!6521138))

(declare-fun m!6521140 () Bool)

(assert (=> d!1747955 m!6521140))

(declare-fun m!6521142 () Bool)

(assert (=> d!1747955 m!6521142))

(assert (=> b!5516331 d!1747955))

(declare-fun d!1747957 () Bool)

(assert (=> d!1747957 (= (++!13754 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (t!376068 s!2326)) s!2326)))

(declare-fun lt!2246419 () Unit!155472)

(declare-fun choose!41940 (List!62819 C!31282 List!62819 List!62819) Unit!155472)

(assert (=> d!1747957 (= lt!2246419 (choose!41940 Nil!62695 (h!69143 s!2326) (t!376068 s!2326) s!2326))))

(assert (=> d!1747957 (= (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) (t!376068 s!2326))) s!2326)))

(assert (=> d!1747957 (= (lemmaMoveElementToOtherListKeepsConcatEq!1923 Nil!62695 (h!69143 s!2326) (t!376068 s!2326) s!2326) lt!2246419)))

(declare-fun bs!1271541 () Bool)

(assert (= bs!1271541 d!1747957))

(assert (=> bs!1271541 m!6520308))

(assert (=> bs!1271541 m!6520308))

(assert (=> bs!1271541 m!6520310))

(declare-fun m!6521144 () Bool)

(assert (=> bs!1271541 m!6521144))

(declare-fun m!6521146 () Bool)

(assert (=> bs!1271541 m!6521146))

(assert (=> b!5516331 d!1747957))

(declare-fun b!5517371 () Bool)

(declare-fun e!3411684 () Bool)

(assert (=> b!5517371 (= e!3411684 (matchR!7691 (regTwo!31524 r!7292) (t!376068 s!2326)))))

(declare-fun b!5517372 () Bool)

(declare-fun res!2350719 () Bool)

(declare-fun e!3411688 () Bool)

(assert (=> b!5517372 (=> (not res!2350719) (not e!3411688))))

(declare-fun lt!2246420 () Option!15515)

(assert (=> b!5517372 (= res!2350719 (matchR!7691 (regOne!31524 r!7292) (_1!35906 (get!21575 lt!2246420))))))

(declare-fun d!1747959 () Bool)

(declare-fun e!3411685 () Bool)

(assert (=> d!1747959 e!3411685))

(declare-fun res!2350720 () Bool)

(assert (=> d!1747959 (=> res!2350720 e!3411685)))

(assert (=> d!1747959 (= res!2350720 e!3411688)))

(declare-fun res!2350717 () Bool)

(assert (=> d!1747959 (=> (not res!2350717) (not e!3411688))))

(assert (=> d!1747959 (= res!2350717 (isDefined!12218 lt!2246420))))

(declare-fun e!3411687 () Option!15515)

(assert (=> d!1747959 (= lt!2246420 e!3411687)))

(declare-fun c!964600 () Bool)

(assert (=> d!1747959 (= c!964600 e!3411684)))

(declare-fun res!2350716 () Bool)

(assert (=> d!1747959 (=> (not res!2350716) (not e!3411684))))

(assert (=> d!1747959 (= res!2350716 (matchR!7691 (regOne!31524 r!7292) (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695))))))

(assert (=> d!1747959 (validRegex!7242 (regOne!31524 r!7292))))

(assert (=> d!1747959 (= (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (t!376068 s!2326) s!2326) lt!2246420)))

(declare-fun b!5517373 () Bool)

(declare-fun lt!2246422 () Unit!155472)

(declare-fun lt!2246421 () Unit!155472)

(assert (=> b!5517373 (= lt!2246422 lt!2246421)))

(assert (=> b!5517373 (= (++!13754 (++!13754 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (Cons!62695 (h!69143 (t!376068 s!2326)) Nil!62695)) (t!376068 (t!376068 s!2326))) s!2326)))

(assert (=> b!5517373 (= lt!2246421 (lemmaMoveElementToOtherListKeepsConcatEq!1923 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (h!69143 (t!376068 s!2326)) (t!376068 (t!376068 s!2326)) s!2326))))

(declare-fun e!3411686 () Option!15515)

(assert (=> b!5517373 (= e!3411686 (findConcatSeparation!1929 (regOne!31524 r!7292) (regTwo!31524 r!7292) (++!13754 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (Cons!62695 (h!69143 (t!376068 s!2326)) Nil!62695)) (t!376068 (t!376068 s!2326)) s!2326))))

(declare-fun b!5517374 () Bool)

(assert (=> b!5517374 (= e!3411687 e!3411686)))

(declare-fun c!964599 () Bool)

(assert (=> b!5517374 (= c!964599 (is-Nil!62695 (t!376068 s!2326)))))

(declare-fun b!5517375 () Bool)

(assert (=> b!5517375 (= e!3411686 None!15514)))

(declare-fun b!5517376 () Bool)

(assert (=> b!5517376 (= e!3411685 (not (isDefined!12218 lt!2246420)))))

(declare-fun b!5517377 () Bool)

(assert (=> b!5517377 (= e!3411688 (= (++!13754 (_1!35906 (get!21575 lt!2246420)) (_2!35906 (get!21575 lt!2246420))) s!2326))))

(declare-fun b!5517378 () Bool)

(declare-fun res!2350718 () Bool)

(assert (=> b!5517378 (=> (not res!2350718) (not e!3411688))))

(assert (=> b!5517378 (= res!2350718 (matchR!7691 (regTwo!31524 r!7292) (_2!35906 (get!21575 lt!2246420))))))

(declare-fun b!5517379 () Bool)

(assert (=> b!5517379 (= e!3411687 (Some!15514 (tuple2!65207 (++!13754 Nil!62695 (Cons!62695 (h!69143 s!2326) Nil!62695)) (t!376068 s!2326))))))

(assert (= (and d!1747959 res!2350716) b!5517371))

(assert (= (and d!1747959 c!964600) b!5517379))

(assert (= (and d!1747959 (not c!964600)) b!5517374))

(assert (= (and b!5517374 c!964599) b!5517375))

(assert (= (and b!5517374 (not c!964599)) b!5517373))

(assert (= (and d!1747959 res!2350717) b!5517372))

(assert (= (and b!5517372 res!2350719) b!5517378))

(assert (= (and b!5517378 res!2350718) b!5517377))

(assert (= (and d!1747959 (not res!2350720)) b!5517376))

(declare-fun m!6521148 () Bool)

(assert (=> b!5517376 m!6521148))

(assert (=> d!1747959 m!6521148))

(assert (=> d!1747959 m!6520308))

(declare-fun m!6521150 () Bool)

(assert (=> d!1747959 m!6521150))

(assert (=> d!1747959 m!6520306))

(assert (=> b!5517373 m!6520308))

(declare-fun m!6521152 () Bool)

(assert (=> b!5517373 m!6521152))

(assert (=> b!5517373 m!6521152))

(declare-fun m!6521154 () Bool)

(assert (=> b!5517373 m!6521154))

(assert (=> b!5517373 m!6520308))

(declare-fun m!6521156 () Bool)

(assert (=> b!5517373 m!6521156))

(assert (=> b!5517373 m!6521152))

(declare-fun m!6521158 () Bool)

(assert (=> b!5517373 m!6521158))

(declare-fun m!6521160 () Bool)

(assert (=> b!5517371 m!6521160))

(declare-fun m!6521162 () Bool)

(assert (=> b!5517372 m!6521162))

(declare-fun m!6521164 () Bool)

(assert (=> b!5517372 m!6521164))

(assert (=> b!5517378 m!6521162))

(declare-fun m!6521166 () Bool)

(assert (=> b!5517378 m!6521166))

(assert (=> b!5517377 m!6521162))

(declare-fun m!6521168 () Bool)

(assert (=> b!5517377 m!6521168))

(assert (=> b!5516331 d!1747959))

(declare-fun d!1747961 () Bool)

(assert (=> d!1747961 (= (Exists!2606 (ite c!964360 lambda!295706 lambda!295707)) (choose!41925 (ite c!964360 lambda!295706 lambda!295707)))))

(declare-fun bs!1271542 () Bool)

(assert (= bs!1271542 d!1747961))

(declare-fun m!6521170 () Bool)

(assert (=> bs!1271542 m!6521170))

(assert (=> bm!408226 d!1747961))

(assert (=> d!1747569 d!1747769))

(declare-fun d!1747963 () Bool)

(assert (=> d!1747963 (= (isConcat!601 lt!2246319) (is-Concat!24351 lt!2246319))))

(assert (=> b!5516303 d!1747963))

(assert (=> d!1747645 d!1747769))

(declare-fun d!1747965 () Bool)

(assert (=> d!1747965 (= (isUnion!519 lt!2246343) (is-Union!15506 lt!2246343))))

(assert (=> b!5516387 d!1747965))

(declare-fun d!1747967 () Bool)

(assert (=> d!1747967 (= (nullable!5540 (h!69141 (exprs!5390 lt!2246210))) (nullableFct!1664 (h!69141 (exprs!5390 lt!2246210))))))

(declare-fun bs!1271543 () Bool)

(assert (= bs!1271543 d!1747967))

(declare-fun m!6521172 () Bool)

(assert (=> bs!1271543 m!6521172))

(assert (=> b!5516407 d!1747967))

(assert (=> bs!1271352 d!1747603))

(declare-fun bs!1271544 () Bool)

(declare-fun d!1747969 () Bool)

(assert (= bs!1271544 (and d!1747969 d!1747881)))

(declare-fun lambda!295773 () Int)

(assert (=> bs!1271544 (= lambda!295773 lambda!295766)))

(declare-fun bs!1271545 () Bool)

(assert (= bs!1271545 (and d!1747969 d!1747827)))

(assert (=> bs!1271545 (= lambda!295773 lambda!295758)))

(declare-fun bs!1271546 () Bool)

(assert (= bs!1271546 (and d!1747969 d!1747797)))

(assert (=> bs!1271546 (= lambda!295773 lambda!295749)))

(declare-fun bs!1271547 () Bool)

(assert (= bs!1271547 (and d!1747969 d!1747803)))

(assert (=> bs!1271547 (= lambda!295773 lambda!295750)))

(declare-fun bs!1271548 () Bool)

(assert (= bs!1271548 (and d!1747969 d!1747901)))

(assert (=> bs!1271548 (= lambda!295773 lambda!295768)))

(assert (=> d!1747969 (= (nullableZipper!1532 lt!2246233) (exists!2138 lt!2246233 lambda!295773))))

(declare-fun bs!1271549 () Bool)

(assert (= bs!1271549 d!1747969))

(declare-fun m!6521174 () Bool)

(assert (=> bs!1271549 m!6521174))

(assert (=> b!5516561 d!1747969))

(declare-fun d!1747971 () Bool)

(assert (=> d!1747971 (= (nullable!5540 r!7292) (nullableFct!1664 r!7292))))

(declare-fun bs!1271550 () Bool)

(assert (= bs!1271550 d!1747971))

(declare-fun m!6521176 () Bool)

(assert (=> bs!1271550 m!6521176))

(assert (=> b!5516535 d!1747971))

(assert (=> d!1747605 d!1747601))

(declare-fun d!1747973 () Bool)

(assert (=> d!1747973 (= (flatMap!1119 z!1189 lambda!295662) (dynLambda!24493 lambda!295662 (h!69142 zl!343)))))

(assert (=> d!1747973 true))

(declare-fun _$13!2058 () Unit!155472)

(assert (=> d!1747973 (= (choose!41929 z!1189 (h!69142 zl!343) lambda!295662) _$13!2058)))

(declare-fun b_lambda!209175 () Bool)

(assert (=> (not b_lambda!209175) (not d!1747973)))

(declare-fun bs!1271551 () Bool)

(assert (= bs!1271551 d!1747973))

(assert (=> bs!1271551 m!6520062))

(assert (=> bs!1271551 m!6520350))

(assert (=> d!1747605 d!1747973))

(declare-fun d!1747975 () Bool)

(assert (=> d!1747975 (= (nullable!5540 (reg!15835 r!7292)) (nullableFct!1664 (reg!15835 r!7292)))))

(declare-fun bs!1271552 () Bool)

(assert (= bs!1271552 d!1747975))

(declare-fun m!6521178 () Bool)

(assert (=> bs!1271552 m!6521178))

(assert (=> b!5516261 d!1747975))

(declare-fun d!1747977 () Bool)

(declare-fun c!964601 () Bool)

(assert (=> d!1747977 (= c!964601 (isEmpty!34479 (tail!10910 (t!376068 s!2326))))))

(declare-fun e!3411689 () Bool)

(assert (=> d!1747977 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246215 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))) e!3411689)))

(declare-fun b!5517380 () Bool)

(assert (=> b!5517380 (= e!3411689 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246215 (head!11815 (t!376068 s!2326)))))))

(declare-fun b!5517381 () Bool)

(assert (=> b!5517381 (= e!3411689 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246215 (head!11815 (t!376068 s!2326))) (head!11815 (tail!10910 (t!376068 s!2326)))) (tail!10910 (tail!10910 (t!376068 s!2326)))))))

(assert (= (and d!1747977 c!964601) b!5517380))

(assert (= (and d!1747977 (not c!964601)) b!5517381))

(assert (=> d!1747977 m!6520242))

(assert (=> d!1747977 m!6520748))

(assert (=> b!5517380 m!6520460))

(declare-fun m!6521180 () Bool)

(assert (=> b!5517380 m!6521180))

(assert (=> b!5517381 m!6520242))

(assert (=> b!5517381 m!6520752))

(assert (=> b!5517381 m!6520460))

(assert (=> b!5517381 m!6520752))

(declare-fun m!6521182 () Bool)

(assert (=> b!5517381 m!6521182))

(assert (=> b!5517381 m!6520242))

(assert (=> b!5517381 m!6520756))

(assert (=> b!5517381 m!6521182))

(assert (=> b!5517381 m!6520756))

(declare-fun m!6521184 () Bool)

(assert (=> b!5517381 m!6521184))

(assert (=> b!5516557 d!1747977))

(declare-fun bs!1271553 () Bool)

(declare-fun d!1747979 () Bool)

(assert (= bs!1271553 (and d!1747979 d!1747909)))

(declare-fun lambda!295774 () Int)

(assert (=> bs!1271553 (= (= (head!11815 (t!376068 s!2326)) (head!11815 s!2326)) (= lambda!295774 lambda!295769))))

(declare-fun bs!1271554 () Bool)

(assert (= bs!1271554 (and d!1747979 d!1747843)))

(assert (=> bs!1271554 (= lambda!295774 lambda!295759)))

(declare-fun bs!1271555 () Bool)

(assert (= bs!1271555 (and d!1747979 d!1747653)))

(assert (=> bs!1271555 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295774 lambda!295710))))

(declare-fun bs!1271556 () Bool)

(assert (= bs!1271556 (and d!1747979 d!1747759)))

(assert (=> bs!1271556 (= lambda!295774 lambda!295744)))

(declare-fun bs!1271557 () Bool)

(assert (= bs!1271557 (and d!1747979 d!1747643)))

(assert (=> bs!1271557 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295774 lambda!295709))))

(declare-fun bs!1271558 () Bool)

(assert (= bs!1271558 (and d!1747979 d!1747929)))

(assert (=> bs!1271558 (= (= (head!11815 (t!376068 s!2326)) (head!11815 s!2326)) (= lambda!295774 lambda!295770))))

(declare-fun bs!1271559 () Bool)

(assert (= bs!1271559 (and d!1747979 d!1747819)))

(assert (=> bs!1271559 (= lambda!295774 lambda!295757)))

(declare-fun bs!1271560 () Bool)

(assert (= bs!1271560 (and d!1747979 d!1747587)))

(assert (=> bs!1271560 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295774 lambda!295683))))

(declare-fun bs!1271561 () Bool)

(assert (= bs!1271561 (and d!1747979 b!5516115)))

(assert (=> bs!1271561 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295774 lambda!295662))))

(declare-fun bs!1271562 () Bool)

(assert (= bs!1271562 (and d!1747979 d!1747943)))

(assert (=> bs!1271562 (= lambda!295774 lambda!295772)))

(assert (=> d!1747979 true))

(assert (=> d!1747979 (= (derivationStepZipper!1611 lt!2246215 (head!11815 (t!376068 s!2326))) (flatMap!1119 lt!2246215 lambda!295774))))

(declare-fun bs!1271563 () Bool)

(assert (= bs!1271563 d!1747979))

(declare-fun m!6521186 () Bool)

(assert (=> bs!1271563 m!6521186))

(assert (=> b!5516557 d!1747979))

(assert (=> b!5516557 d!1747761))

(assert (=> b!5516557 d!1747763))

(declare-fun d!1747981 () Bool)

(assert (=> d!1747981 (= (nullable!5540 (h!69141 (exprs!5390 lt!2246232))) (nullableFct!1664 (h!69141 (exprs!5390 lt!2246232))))))

(declare-fun bs!1271564 () Bool)

(assert (= bs!1271564 d!1747981))

(declare-fun m!6521188 () Bool)

(assert (=> bs!1271564 m!6521188))

(assert (=> b!5516402 d!1747981))

(declare-fun b!5517384 () Bool)

(declare-fun res!2350722 () Bool)

(declare-fun e!3411691 () Bool)

(assert (=> b!5517384 (=> (not res!2350722) (not e!3411691))))

(declare-fun lt!2246423 () List!62819)

(assert (=> b!5517384 (= res!2350722 (= (size!39936 lt!2246423) (+ (size!39936 (_1!35906 (get!21575 lt!2246329))) (size!39936 (_2!35906 (get!21575 lt!2246329))))))))

(declare-fun b!5517385 () Bool)

(assert (=> b!5517385 (= e!3411691 (or (not (= (_2!35906 (get!21575 lt!2246329)) Nil!62695)) (= lt!2246423 (_1!35906 (get!21575 lt!2246329)))))))

(declare-fun b!5517383 () Bool)

(declare-fun e!3411690 () List!62819)

(assert (=> b!5517383 (= e!3411690 (Cons!62695 (h!69143 (_1!35906 (get!21575 lt!2246329))) (++!13754 (t!376068 (_1!35906 (get!21575 lt!2246329))) (_2!35906 (get!21575 lt!2246329)))))))

(declare-fun b!5517382 () Bool)

(assert (=> b!5517382 (= e!3411690 (_2!35906 (get!21575 lt!2246329)))))

(declare-fun d!1747983 () Bool)

(assert (=> d!1747983 e!3411691))

(declare-fun res!2350721 () Bool)

(assert (=> d!1747983 (=> (not res!2350721) (not e!3411691))))

(assert (=> d!1747983 (= res!2350721 (= (content!11270 lt!2246423) (set.union (content!11270 (_1!35906 (get!21575 lt!2246329))) (content!11270 (_2!35906 (get!21575 lt!2246329))))))))

(assert (=> d!1747983 (= lt!2246423 e!3411690)))

(declare-fun c!964602 () Bool)

(assert (=> d!1747983 (= c!964602 (is-Nil!62695 (_1!35906 (get!21575 lt!2246329))))))

(assert (=> d!1747983 (= (++!13754 (_1!35906 (get!21575 lt!2246329)) (_2!35906 (get!21575 lt!2246329))) lt!2246423)))

(assert (= (and d!1747983 c!964602) b!5517382))

(assert (= (and d!1747983 (not c!964602)) b!5517383))

(assert (= (and d!1747983 res!2350721) b!5517384))

(assert (= (and b!5517384 res!2350722) b!5517385))

(declare-fun m!6521190 () Bool)

(assert (=> b!5517384 m!6521190))

(declare-fun m!6521192 () Bool)

(assert (=> b!5517384 m!6521192))

(declare-fun m!6521194 () Bool)

(assert (=> b!5517384 m!6521194))

(declare-fun m!6521196 () Bool)

(assert (=> b!5517383 m!6521196))

(declare-fun m!6521198 () Bool)

(assert (=> d!1747983 m!6521198))

(declare-fun m!6521200 () Bool)

(assert (=> d!1747983 m!6521200))

(declare-fun m!6521202 () Bool)

(assert (=> d!1747983 m!6521202))

(assert (=> b!5516335 d!1747983))

(assert (=> b!5516335 d!1747781))

(declare-fun bs!1271565 () Bool)

(declare-fun b!5517392 () Bool)

(assert (= bs!1271565 (and b!5517392 b!5516494)))

(declare-fun lambda!295775 () Int)

(assert (=> bs!1271565 (not (= lambda!295775 lambda!295707))))

(declare-fun bs!1271566 () Bool)

(assert (= bs!1271566 (and b!5517392 d!1747809)))

(assert (=> bs!1271566 (not (= lambda!295775 lambda!295756))))

(declare-fun bs!1271567 () Bool)

(assert (= bs!1271567 (and b!5517392 b!5517185)))

(assert (=> bs!1271567 (= (and (= (reg!15835 (regTwo!31525 r!7292)) (reg!15835 (regOne!31525 r!7292))) (= (regTwo!31525 r!7292) (regOne!31525 r!7292))) (= lambda!295775 lambda!295760))))

(declare-fun bs!1271568 () Bool)

(assert (= bs!1271568 (and b!5517392 b!5516114)))

(assert (=> bs!1271568 (not (= lambda!295775 lambda!295660))))

(declare-fun bs!1271569 () Bool)

(assert (= bs!1271569 (and b!5517392 b!5516493)))

(assert (=> bs!1271569 (= (and (= (reg!15835 (regTwo!31525 r!7292)) (reg!15835 r!7292)) (= (regTwo!31525 r!7292) r!7292)) (= lambda!295775 lambda!295706))))

(declare-fun bs!1271570 () Bool)

(assert (= bs!1271570 (and b!5517392 d!1747593)))

(assert (=> bs!1271570 (not (= lambda!295775 lambda!295686))))

(declare-fun bs!1271571 () Bool)

(assert (= bs!1271571 (and b!5517392 b!5517186)))

(assert (=> bs!1271571 (not (= lambda!295775 lambda!295761))))

(declare-fun bs!1271572 () Bool)

(assert (= bs!1271572 (and b!5517392 d!1747597)))

(assert (=> bs!1271572 (not (= lambda!295775 lambda!295691))))

(assert (=> bs!1271566 (not (= lambda!295775 lambda!295755))))

(declare-fun bs!1271573 () Bool)

(assert (= bs!1271573 (and b!5517392 d!1747867)))

(assert (=> bs!1271573 (not (= lambda!295775 lambda!295764))))

(assert (=> bs!1271572 (not (= lambda!295775 lambda!295692))))

(assert (=> bs!1271568 (not (= lambda!295775 lambda!295661))))

(assert (=> b!5517392 true))

(assert (=> b!5517392 true))

(declare-fun bs!1271574 () Bool)

(declare-fun b!5517393 () Bool)

(assert (= bs!1271574 (and b!5517393 d!1747809)))

(declare-fun lambda!295776 () Int)

(assert (=> bs!1271574 (= (and (= (regOne!31524 (regTwo!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regTwo!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295776 lambda!295756))))

(declare-fun bs!1271575 () Bool)

(assert (= bs!1271575 (and b!5517393 b!5517185)))

(assert (=> bs!1271575 (not (= lambda!295776 lambda!295760))))

(declare-fun bs!1271576 () Bool)

(assert (= bs!1271576 (and b!5517393 b!5516114)))

(assert (=> bs!1271576 (not (= lambda!295776 lambda!295660))))

(declare-fun bs!1271577 () Bool)

(assert (= bs!1271577 (and b!5517393 b!5516493)))

(assert (=> bs!1271577 (not (= lambda!295776 lambda!295706))))

(declare-fun bs!1271578 () Bool)

(assert (= bs!1271578 (and b!5517393 d!1747593)))

(assert (=> bs!1271578 (not (= lambda!295776 lambda!295686))))

(declare-fun bs!1271579 () Bool)

(assert (= bs!1271579 (and b!5517393 b!5517186)))

(assert (=> bs!1271579 (= (and (= (regOne!31524 (regTwo!31525 r!7292)) (regOne!31524 (regOne!31525 r!7292))) (= (regTwo!31524 (regTwo!31525 r!7292)) (regTwo!31524 (regOne!31525 r!7292)))) (= lambda!295776 lambda!295761))))

(declare-fun bs!1271580 () Bool)

(assert (= bs!1271580 (and b!5517393 d!1747597)))

(assert (=> bs!1271580 (not (= lambda!295776 lambda!295691))))

(declare-fun bs!1271581 () Bool)

(assert (= bs!1271581 (and b!5517393 b!5516494)))

(assert (=> bs!1271581 (= (and (= (regOne!31524 (regTwo!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regTwo!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295776 lambda!295707))))

(declare-fun bs!1271582 () Bool)

(assert (= bs!1271582 (and b!5517393 b!5517392)))

(assert (=> bs!1271582 (not (= lambda!295776 lambda!295775))))

(assert (=> bs!1271574 (not (= lambda!295776 lambda!295755))))

(declare-fun bs!1271583 () Bool)

(assert (= bs!1271583 (and b!5517393 d!1747867)))

(assert (=> bs!1271583 (not (= lambda!295776 lambda!295764))))

(assert (=> bs!1271580 (= (and (= (regOne!31524 (regTwo!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regTwo!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295776 lambda!295692))))

(assert (=> bs!1271576 (= (and (= (regOne!31524 (regTwo!31525 r!7292)) (regOne!31524 r!7292)) (= (regTwo!31524 (regTwo!31525 r!7292)) (regTwo!31524 r!7292))) (= lambda!295776 lambda!295661))))

(assert (=> b!5517393 true))

(assert (=> b!5517393 true))

(declare-fun b!5517386 () Bool)

(declare-fun e!3411693 () Bool)

(declare-fun call!408373 () Bool)

(assert (=> b!5517386 (= e!3411693 call!408373)))

(declare-fun b!5517388 () Bool)

(declare-fun e!3411692 () Bool)

(assert (=> b!5517388 (= e!3411693 e!3411692)))

(declare-fun res!2350725 () Bool)

(assert (=> b!5517388 (= res!2350725 (not (is-EmptyLang!15506 (regTwo!31525 r!7292))))))

(assert (=> b!5517388 (=> (not res!2350725) (not e!3411692))))

(declare-fun b!5517389 () Bool)

(declare-fun e!3411695 () Bool)

(declare-fun e!3411694 () Bool)

(assert (=> b!5517389 (= e!3411695 e!3411694)))

(declare-fun c!964603 () Bool)

(assert (=> b!5517389 (= c!964603 (is-Star!15506 (regTwo!31525 r!7292)))))

(declare-fun bm!408368 () Bool)

(assert (=> bm!408368 (= call!408373 (isEmpty!34479 s!2326))))

(declare-fun b!5517390 () Bool)

(declare-fun e!3411697 () Bool)

(assert (=> b!5517390 (= e!3411695 e!3411697)))

(declare-fun res!2350723 () Bool)

(assert (=> b!5517390 (= res!2350723 (matchRSpec!2609 (regOne!31525 (regTwo!31525 r!7292)) s!2326))))

(assert (=> b!5517390 (=> res!2350723 e!3411697)))

(declare-fun b!5517391 () Bool)

(declare-fun e!3411698 () Bool)

(assert (=> b!5517391 (= e!3411698 (= s!2326 (Cons!62695 (c!964265 (regTwo!31525 r!7292)) Nil!62695)))))

(declare-fun bm!408369 () Bool)

(declare-fun call!408374 () Bool)

(assert (=> bm!408369 (= call!408374 (Exists!2606 (ite c!964603 lambda!295775 lambda!295776)))))

(declare-fun e!3411696 () Bool)

(assert (=> b!5517392 (= e!3411696 call!408374)))

(assert (=> b!5517393 (= e!3411694 call!408374)))

(declare-fun b!5517394 () Bool)

(declare-fun c!964606 () Bool)

(assert (=> b!5517394 (= c!964606 (is-ElementMatch!15506 (regTwo!31525 r!7292)))))

(assert (=> b!5517394 (= e!3411692 e!3411698)))

(declare-fun d!1747985 () Bool)

(declare-fun c!964604 () Bool)

(assert (=> d!1747985 (= c!964604 (is-EmptyExpr!15506 (regTwo!31525 r!7292)))))

(assert (=> d!1747985 (= (matchRSpec!2609 (regTwo!31525 r!7292) s!2326) e!3411693)))

(declare-fun b!5517387 () Bool)

(declare-fun c!964605 () Bool)

(assert (=> b!5517387 (= c!964605 (is-Union!15506 (regTwo!31525 r!7292)))))

(assert (=> b!5517387 (= e!3411698 e!3411695)))

(declare-fun b!5517395 () Bool)

(assert (=> b!5517395 (= e!3411697 (matchRSpec!2609 (regTwo!31525 (regTwo!31525 r!7292)) s!2326))))

(declare-fun b!5517396 () Bool)

(declare-fun res!2350724 () Bool)

(assert (=> b!5517396 (=> res!2350724 e!3411696)))

(assert (=> b!5517396 (= res!2350724 call!408373)))

(assert (=> b!5517396 (= e!3411694 e!3411696)))

(assert (= (and d!1747985 c!964604) b!5517386))

(assert (= (and d!1747985 (not c!964604)) b!5517388))

(assert (= (and b!5517388 res!2350725) b!5517394))

(assert (= (and b!5517394 c!964606) b!5517391))

(assert (= (and b!5517394 (not c!964606)) b!5517387))

(assert (= (and b!5517387 c!964605) b!5517390))

(assert (= (and b!5517387 (not c!964605)) b!5517389))

(assert (= (and b!5517390 (not res!2350723)) b!5517395))

(assert (= (and b!5517389 c!964603) b!5517396))

(assert (= (and b!5517389 (not c!964603)) b!5517393))

(assert (= (and b!5517396 (not res!2350724)) b!5517392))

(assert (= (or b!5517392 b!5517393) bm!408369))

(assert (= (or b!5517386 b!5517396) bm!408368))

(assert (=> bm!408368 m!6520282))

(declare-fun m!6521204 () Bool)

(assert (=> b!5517390 m!6521204))

(declare-fun m!6521206 () Bool)

(assert (=> bm!408369 m!6521206))

(declare-fun m!6521208 () Bool)

(assert (=> b!5517395 m!6521208))

(assert (=> b!5516496 d!1747985))

(declare-fun d!1747987 () Bool)

(declare-fun c!964607 () Bool)

(assert (=> d!1747987 (= c!964607 (isEmpty!34479 (tail!10910 (t!376068 s!2326))))))

(declare-fun e!3411699 () Bool)

(assert (=> d!1747987 (= (matchZipper!1664 (derivationStepZipper!1611 lt!2246218 (head!11815 (t!376068 s!2326))) (tail!10910 (t!376068 s!2326))) e!3411699)))

(declare-fun b!5517397 () Bool)

(assert (=> b!5517397 (= e!3411699 (nullableZipper!1532 (derivationStepZipper!1611 lt!2246218 (head!11815 (t!376068 s!2326)))))))

(declare-fun b!5517398 () Bool)

(assert (=> b!5517398 (= e!3411699 (matchZipper!1664 (derivationStepZipper!1611 (derivationStepZipper!1611 lt!2246218 (head!11815 (t!376068 s!2326))) (head!11815 (tail!10910 (t!376068 s!2326)))) (tail!10910 (tail!10910 (t!376068 s!2326)))))))

(assert (= (and d!1747987 c!964607) b!5517397))

(assert (= (and d!1747987 (not c!964607)) b!5517398))

(assert (=> d!1747987 m!6520242))

(assert (=> d!1747987 m!6520748))

(assert (=> b!5517397 m!6520248))

(declare-fun m!6521210 () Bool)

(assert (=> b!5517397 m!6521210))

(assert (=> b!5517398 m!6520242))

(assert (=> b!5517398 m!6520752))

(assert (=> b!5517398 m!6520248))

(assert (=> b!5517398 m!6520752))

(declare-fun m!6521212 () Bool)

(assert (=> b!5517398 m!6521212))

(assert (=> b!5517398 m!6520242))

(assert (=> b!5517398 m!6520756))

(assert (=> b!5517398 m!6521212))

(assert (=> b!5517398 m!6520756))

(declare-fun m!6521214 () Bool)

(assert (=> b!5517398 m!6521214))

(assert (=> b!5516269 d!1747987))

(declare-fun bs!1271584 () Bool)

(declare-fun d!1747989 () Bool)

(assert (= bs!1271584 (and d!1747989 d!1747909)))

(declare-fun lambda!295777 () Int)

(assert (=> bs!1271584 (= (= (head!11815 (t!376068 s!2326)) (head!11815 s!2326)) (= lambda!295777 lambda!295769))))

(declare-fun bs!1271585 () Bool)

(assert (= bs!1271585 (and d!1747989 d!1747843)))

(assert (=> bs!1271585 (= lambda!295777 lambda!295759)))

(declare-fun bs!1271586 () Bool)

(assert (= bs!1271586 (and d!1747989 d!1747653)))

(assert (=> bs!1271586 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295777 lambda!295710))))

(declare-fun bs!1271587 () Bool)

(assert (= bs!1271587 (and d!1747989 d!1747759)))

(assert (=> bs!1271587 (= lambda!295777 lambda!295744)))

(declare-fun bs!1271588 () Bool)

(assert (= bs!1271588 (and d!1747989 d!1747979)))

(assert (=> bs!1271588 (= lambda!295777 lambda!295774)))

(declare-fun bs!1271589 () Bool)

(assert (= bs!1271589 (and d!1747989 d!1747643)))

(assert (=> bs!1271589 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295777 lambda!295709))))

(declare-fun bs!1271590 () Bool)

(assert (= bs!1271590 (and d!1747989 d!1747929)))

(assert (=> bs!1271590 (= (= (head!11815 (t!376068 s!2326)) (head!11815 s!2326)) (= lambda!295777 lambda!295770))))

(declare-fun bs!1271591 () Bool)

(assert (= bs!1271591 (and d!1747989 d!1747819)))

(assert (=> bs!1271591 (= lambda!295777 lambda!295757)))

(declare-fun bs!1271592 () Bool)

(assert (= bs!1271592 (and d!1747989 d!1747587)))

(assert (=> bs!1271592 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295777 lambda!295683))))

(declare-fun bs!1271593 () Bool)

(assert (= bs!1271593 (and d!1747989 b!5516115)))

(assert (=> bs!1271593 (= (= (head!11815 (t!376068 s!2326)) (h!69143 s!2326)) (= lambda!295777 lambda!295662))))

(declare-fun bs!1271594 () Bool)

(assert (= bs!1271594 (and d!1747989 d!1747943)))

(assert (=> bs!1271594 (= lambda!295777 lambda!295772)))

(assert (=> d!1747989 true))

(assert (=> d!1747989 (= (derivationStepZipper!1611 lt!2246218 (head!11815 (t!376068 s!2326))) (flatMap!1119 lt!2246218 lambda!295777))))

(declare-fun bs!1271595 () Bool)

(assert (= bs!1271595 d!1747989))

(declare-fun m!6521216 () Bool)

(assert (=> bs!1271595 m!6521216))

(assert (=> b!5516269 d!1747989))

(assert (=> b!5516269 d!1747761))

(assert (=> b!5516269 d!1747763))

(declare-fun bm!408370 () Bool)

(declare-fun call!408378 () List!62817)

(declare-fun call!408375 () List!62817)

(assert (=> bm!408370 (= call!408378 call!408375)))

(declare-fun b!5517399 () Bool)

(declare-fun e!3411700 () (Set Context!9780))

(declare-fun e!3411704 () (Set Context!9780))

(assert (=> b!5517399 (= e!3411700 e!3411704)))

(declare-fun c!964611 () Bool)

(assert (=> b!5517399 (= c!964611 (is-Union!15506 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))))))

(declare-fun b!5517400 () Bool)

(declare-fun e!3411703 () (Set Context!9780))

(declare-fun call!408376 () (Set Context!9780))

(declare-fun call!408377 () (Set Context!9780))

(assert (=> b!5517400 (= e!3411703 (set.union call!408376 call!408377))))

(declare-fun b!5517401 () Bool)

(declare-fun e!3411705 () (Set Context!9780))

(assert (=> b!5517401 (= e!3411705 (as set.empty (Set Context!9780)))))

(declare-fun b!5517402 () Bool)

(declare-fun e!3411702 () (Set Context!9780))

(declare-fun call!408380 () (Set Context!9780))

(assert (=> b!5517402 (= e!3411702 call!408380)))

(declare-fun b!5517403 () Bool)

(declare-fun call!408379 () (Set Context!9780))

(assert (=> b!5517403 (= e!3411704 (set.union call!408379 call!408376))))

(declare-fun b!5517404 () Bool)

(assert (=> b!5517404 (= e!3411703 e!3411702)))

(declare-fun c!964610 () Bool)

(assert (=> b!5517404 (= c!964610 (is-Concat!24351 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))))))

(declare-fun d!1747991 () Bool)

(declare-fun c!964608 () Bool)

(assert (=> d!1747991 (= c!964608 (and (is-ElementMatch!15506 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))) (= (c!964265 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))) (h!69143 s!2326))))))

(assert (=> d!1747991 (= (derivationStepZipperDown!848 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292)) (ite c!964376 lt!2246224 (Context!9781 call!408235)) (h!69143 s!2326)) e!3411700)))

(declare-fun bm!408371 () Bool)

(assert (=> bm!408371 (= call!408380 call!408377)))

(declare-fun b!5517405 () Bool)

(assert (=> b!5517405 (= e!3411700 (set.insert (ite c!964376 lt!2246224 (Context!9781 call!408235)) (as set.empty (Set Context!9780))))))

(declare-fun c!964609 () Bool)

(declare-fun bm!408372 () Bool)

(assert (=> bm!408372 (= call!408375 ($colon$colon!1585 (exprs!5390 (ite c!964376 lt!2246224 (Context!9781 call!408235))) (ite (or c!964609 c!964610) (regTwo!31524 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))) (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292)))))))

(declare-fun b!5517406 () Bool)

(declare-fun c!964612 () Bool)

(assert (=> b!5517406 (= c!964612 (is-Star!15506 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))))))

(assert (=> b!5517406 (= e!3411702 e!3411705)))

(declare-fun bm!408373 () Bool)

(assert (=> bm!408373 (= call!408376 (derivationStepZipperDown!848 (ite c!964611 (regTwo!31525 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))) (regOne!31524 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292)))) (ite c!964611 (ite c!964376 lt!2246224 (Context!9781 call!408235)) (Context!9781 call!408375)) (h!69143 s!2326)))))

(declare-fun b!5517407 () Bool)

(assert (=> b!5517407 (= e!3411705 call!408380)))

(declare-fun bm!408374 () Bool)

(assert (=> bm!408374 (= call!408377 call!408379)))

(declare-fun b!5517408 () Bool)

(declare-fun e!3411701 () Bool)

(assert (=> b!5517408 (= e!3411701 (nullable!5540 (regOne!31524 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292)))))))

(declare-fun b!5517409 () Bool)

(assert (=> b!5517409 (= c!964609 e!3411701)))

(declare-fun res!2350726 () Bool)

(assert (=> b!5517409 (=> (not res!2350726) (not e!3411701))))

(assert (=> b!5517409 (= res!2350726 (is-Concat!24351 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))))))

(assert (=> b!5517409 (= e!3411704 e!3411703)))

(declare-fun bm!408375 () Bool)

(assert (=> bm!408375 (= call!408379 (derivationStepZipperDown!848 (ite c!964611 (regOne!31525 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))) (ite c!964609 (regTwo!31524 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))) (ite c!964610 (regOne!31524 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292))) (reg!15835 (ite c!964376 (regTwo!31525 r!7292) (regOne!31524 r!7292)))))) (ite (or c!964611 c!964609) (ite c!964376 lt!2246224 (Context!9781 call!408235)) (Context!9781 call!408378)) (h!69143 s!2326)))))

(assert (= (and d!1747991 c!964608) b!5517405))

(assert (= (and d!1747991 (not c!964608)) b!5517399))

(assert (= (and b!5517399 c!964611) b!5517403))

(assert (= (and b!5517399 (not c!964611)) b!5517409))

(assert (= (and b!5517409 res!2350726) b!5517408))

(assert (= (and b!5517409 c!964609) b!5517400))

(assert (= (and b!5517409 (not c!964609)) b!5517404))

(assert (= (and b!5517404 c!964610) b!5517402))

(assert (= (and b!5517404 (not c!964610)) b!5517406))

(assert (= (and b!5517406 c!964612) b!5517407))

(assert (= (and b!5517406 (not c!964612)) b!5517401))

(assert (= (or b!5517402 b!5517407) bm!408370))

(assert (= (or b!5517402 b!5517407) bm!408371))

(assert (= (or b!5517400 bm!408370) bm!408372))

(assert (= (or b!5517400 bm!408371) bm!408374))

(assert (= (or b!5517403 b!5517400) bm!408373))

(assert (= (or b!5517403 bm!408374) bm!408375))

(declare-fun m!6521218 () Bool)

(assert (=> bm!408373 m!6521218))

(declare-fun m!6521220 () Bool)

(assert (=> b!5517408 m!6521220))

(declare-fun m!6521222 () Bool)

(assert (=> b!5517405 m!6521222))

(declare-fun m!6521224 () Bool)

(assert (=> bm!408372 m!6521224))

(declare-fun m!6521226 () Bool)

(assert (=> bm!408375 m!6521226))

(assert (=> bm!408233 d!1747991))

(declare-fun bm!408376 () Bool)

(declare-fun call!408384 () List!62817)

(declare-fun call!408381 () List!62817)

(assert (=> bm!408376 (= call!408384 call!408381)))

(declare-fun b!5517410 () Bool)

(declare-fun e!3411706 () (Set Context!9780))

(declare-fun e!3411710 () (Set Context!9780))

(assert (=> b!5517410 (= e!3411706 e!3411710)))

(declare-fun c!964616 () Bool)

(assert (=> b!5517410 (= c!964616 (is-Union!15506 (h!69141 (exprs!5390 lt!2246210))))))

(declare-fun b!5517411 () Bool)

(declare-fun e!3411709 () (Set Context!9780))

(declare-fun call!408382 () (Set Context!9780))

(declare-fun call!408383 () (Set Context!9780))

(assert (=> b!5517411 (= e!3411709 (set.union call!408382 call!408383))))

(declare-fun b!5517412 () Bool)

(declare-fun e!3411711 () (Set Context!9780))

(assert (=> b!5517412 (= e!3411711 (as set.empty (Set Context!9780)))))

(declare-fun b!5517413 () Bool)

(declare-fun e!3411708 () (Set Context!9780))

(declare-fun call!408386 () (Set Context!9780))

(assert (=> b!5517413 (= e!3411708 call!408386)))

(declare-fun b!5517414 () Bool)

(declare-fun call!408385 () (Set Context!9780))

(assert (=> b!5517414 (= e!3411710 (set.union call!408385 call!408382))))

(declare-fun b!5517415 () Bool)

(assert (=> b!5517415 (= e!3411709 e!3411708)))

(declare-fun c!964615 () Bool)

(assert (=> b!5517415 (= c!964615 (is-Concat!24351 (h!69141 (exprs!5390 lt!2246210))))))

(declare-fun d!1747993 () Bool)

(declare-fun c!964613 () Bool)

(assert (=> d!1747993 (= c!964613 (and (is-ElementMatch!15506 (h!69141 (exprs!5390 lt!2246210))) (= (c!964265 (h!69141 (exprs!5390 lt!2246210))) (h!69143 s!2326))))))

(assert (=> d!1747993 (= (derivationStepZipperDown!848 (h!69141 (exprs!5390 lt!2246210)) (Context!9781 (t!376066 (exprs!5390 lt!2246210))) (h!69143 s!2326)) e!3411706)))

(declare-fun bm!408377 () Bool)

(assert (=> bm!408377 (= call!408386 call!408383)))

(declare-fun b!5517416 () Bool)

(assert (=> b!5517416 (= e!3411706 (set.insert (Context!9781 (t!376066 (exprs!5390 lt!2246210))) (as set.empty (Set Context!9780))))))

(declare-fun c!964614 () Bool)

(declare-fun bm!408378 () Bool)

(assert (=> bm!408378 (= call!408381 ($colon$colon!1585 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246210)))) (ite (or c!964614 c!964615) (regTwo!31524 (h!69141 (exprs!5390 lt!2246210))) (h!69141 (exprs!5390 lt!2246210)))))))

(declare-fun b!5517417 () Bool)

(declare-fun c!964617 () Bool)

(assert (=> b!5517417 (= c!964617 (is-Star!15506 (h!69141 (exprs!5390 lt!2246210))))))

(assert (=> b!5517417 (= e!3411708 e!3411711)))

(declare-fun bm!408379 () Bool)

(assert (=> bm!408379 (= call!408382 (derivationStepZipperDown!848 (ite c!964616 (regTwo!31525 (h!69141 (exprs!5390 lt!2246210))) (regOne!31524 (h!69141 (exprs!5390 lt!2246210)))) (ite c!964616 (Context!9781 (t!376066 (exprs!5390 lt!2246210))) (Context!9781 call!408381)) (h!69143 s!2326)))))

(declare-fun b!5517418 () Bool)

(assert (=> b!5517418 (= e!3411711 call!408386)))

(declare-fun bm!408380 () Bool)

(assert (=> bm!408380 (= call!408383 call!408385)))

(declare-fun b!5517419 () Bool)

(declare-fun e!3411707 () Bool)

(assert (=> b!5517419 (= e!3411707 (nullable!5540 (regOne!31524 (h!69141 (exprs!5390 lt!2246210)))))))

(declare-fun b!5517420 () Bool)

(assert (=> b!5517420 (= c!964614 e!3411707)))

(declare-fun res!2350727 () Bool)

(assert (=> b!5517420 (=> (not res!2350727) (not e!3411707))))

(assert (=> b!5517420 (= res!2350727 (is-Concat!24351 (h!69141 (exprs!5390 lt!2246210))))))

(assert (=> b!5517420 (= e!3411710 e!3411709)))

(declare-fun bm!408381 () Bool)

(assert (=> bm!408381 (= call!408385 (derivationStepZipperDown!848 (ite c!964616 (regOne!31525 (h!69141 (exprs!5390 lt!2246210))) (ite c!964614 (regTwo!31524 (h!69141 (exprs!5390 lt!2246210))) (ite c!964615 (regOne!31524 (h!69141 (exprs!5390 lt!2246210))) (reg!15835 (h!69141 (exprs!5390 lt!2246210)))))) (ite (or c!964616 c!964614) (Context!9781 (t!376066 (exprs!5390 lt!2246210))) (Context!9781 call!408384)) (h!69143 s!2326)))))

(assert (= (and d!1747993 c!964613) b!5517416))

(assert (= (and d!1747993 (not c!964613)) b!5517410))

(assert (= (and b!5517410 c!964616) b!5517414))

(assert (= (and b!5517410 (not c!964616)) b!5517420))

(assert (= (and b!5517420 res!2350727) b!5517419))

(assert (= (and b!5517420 c!964614) b!5517411))

(assert (= (and b!5517420 (not c!964614)) b!5517415))

(assert (= (and b!5517415 c!964615) b!5517413))

(assert (= (and b!5517415 (not c!964615)) b!5517417))

(assert (= (and b!5517417 c!964617) b!5517418))

(assert (= (and b!5517417 (not c!964617)) b!5517412))

(assert (= (or b!5517413 b!5517418) bm!408376))

(assert (= (or b!5517413 b!5517418) bm!408377))

(assert (= (or b!5517411 bm!408376) bm!408378))

(assert (= (or b!5517411 bm!408377) bm!408380))

(assert (= (or b!5517414 b!5517411) bm!408379))

(assert (= (or b!5517414 bm!408380) bm!408381))

(declare-fun m!6521228 () Bool)

(assert (=> bm!408379 m!6521228))

(declare-fun m!6521230 () Bool)

(assert (=> b!5517419 m!6521230))

(declare-fun m!6521232 () Bool)

(assert (=> b!5517416 m!6521232))

(declare-fun m!6521234 () Bool)

(assert (=> bm!408378 m!6521234))

(declare-fun m!6521236 () Bool)

(assert (=> bm!408381 m!6521236))

(assert (=> bm!408196 d!1747993))

(declare-fun bs!1271596 () Bool)

(declare-fun d!1747995 () Bool)

(assert (= bs!1271596 (and d!1747995 d!1747969)))

(declare-fun lambda!295778 () Int)

(assert (=> bs!1271596 (= lambda!295778 lambda!295773)))

(declare-fun bs!1271597 () Bool)

(assert (= bs!1271597 (and d!1747995 d!1747881)))

(assert (=> bs!1271597 (= lambda!295778 lambda!295766)))

(declare-fun bs!1271598 () Bool)

(assert (= bs!1271598 (and d!1747995 d!1747827)))

(assert (=> bs!1271598 (= lambda!295778 lambda!295758)))

(declare-fun bs!1271599 () Bool)

(assert (= bs!1271599 (and d!1747995 d!1747797)))

(assert (=> bs!1271599 (= lambda!295778 lambda!295749)))

(declare-fun bs!1271600 () Bool)

(assert (= bs!1271600 (and d!1747995 d!1747803)))

(assert (=> bs!1271600 (= lambda!295778 lambda!295750)))

(declare-fun bs!1271601 () Bool)

(assert (= bs!1271601 (and d!1747995 d!1747901)))

(assert (=> bs!1271601 (= lambda!295778 lambda!295768)))

(assert (=> d!1747995 (= (nullableZipper!1532 lt!2246229) (exists!2138 lt!2246229 lambda!295778))))

(declare-fun bs!1271602 () Bool)

(assert (= bs!1271602 d!1747995))

(declare-fun m!6521238 () Bool)

(assert (=> bs!1271602 m!6521238))

(assert (=> b!5516305 d!1747995))

(declare-fun bm!408382 () Bool)

(declare-fun call!408390 () List!62817)

(declare-fun call!408387 () List!62817)

(assert (=> bm!408382 (= call!408390 call!408387)))

(declare-fun b!5517421 () Bool)

(declare-fun e!3411712 () (Set Context!9780))

(declare-fun e!3411716 () (Set Context!9780))

(assert (=> b!5517421 (= e!3411712 e!3411716)))

(declare-fun c!964621 () Bool)

(assert (=> b!5517421 (= c!964621 (is-Union!15506 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))))))

(declare-fun b!5517422 () Bool)

(declare-fun e!3411715 () (Set Context!9780))

(declare-fun call!408388 () (Set Context!9780))

(declare-fun call!408389 () (Set Context!9780))

(assert (=> b!5517422 (= e!3411715 (set.union call!408388 call!408389))))

(declare-fun b!5517423 () Bool)

(declare-fun e!3411717 () (Set Context!9780))

(assert (=> b!5517423 (= e!3411717 (as set.empty (Set Context!9780)))))

(declare-fun b!5517424 () Bool)

(declare-fun e!3411714 () (Set Context!9780))

(declare-fun call!408392 () (Set Context!9780))

(assert (=> b!5517424 (= e!3411714 call!408392)))

(declare-fun b!5517425 () Bool)

(declare-fun call!408391 () (Set Context!9780))

(assert (=> b!5517425 (= e!3411716 (set.union call!408391 call!408388))))

(declare-fun b!5517426 () Bool)

(assert (=> b!5517426 (= e!3411715 e!3411714)))

(declare-fun c!964620 () Bool)

(assert (=> b!5517426 (= c!964620 (is-Concat!24351 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))))))

(declare-fun d!1747997 () Bool)

(declare-fun c!964618 () Bool)

(assert (=> d!1747997 (= c!964618 (and (is-ElementMatch!15506 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))) (= (c!964265 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))) (h!69143 s!2326))))))

(assert (=> d!1747997 (= (derivationStepZipperDown!848 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292))) (ite c!964350 lt!2246232 (Context!9781 call!408220)) (h!69143 s!2326)) e!3411712)))

(declare-fun bm!408383 () Bool)

(assert (=> bm!408383 (= call!408392 call!408389)))

(declare-fun b!5517427 () Bool)

(assert (=> b!5517427 (= e!3411712 (set.insert (ite c!964350 lt!2246232 (Context!9781 call!408220)) (as set.empty (Set Context!9780))))))

(declare-fun bm!408384 () Bool)

(declare-fun c!964619 () Bool)

(assert (=> bm!408384 (= call!408387 ($colon$colon!1585 (exprs!5390 (ite c!964350 lt!2246232 (Context!9781 call!408220))) (ite (or c!964619 c!964620) (regTwo!31524 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))) (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292))))))))

(declare-fun b!5517428 () Bool)

(declare-fun c!964622 () Bool)

(assert (=> b!5517428 (= c!964622 (is-Star!15506 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))))))

(assert (=> b!5517428 (= e!3411714 e!3411717)))

(declare-fun bm!408385 () Bool)

(assert (=> bm!408385 (= call!408388 (derivationStepZipperDown!848 (ite c!964621 (regTwo!31525 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))) (regOne!31524 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292))))) (ite c!964621 (ite c!964350 lt!2246232 (Context!9781 call!408220)) (Context!9781 call!408387)) (h!69143 s!2326)))))

(declare-fun b!5517429 () Bool)

(assert (=> b!5517429 (= e!3411717 call!408392)))

(declare-fun bm!408386 () Bool)

(assert (=> bm!408386 (= call!408389 call!408391)))

(declare-fun b!5517430 () Bool)

(declare-fun e!3411713 () Bool)

(assert (=> b!5517430 (= e!3411713 (nullable!5540 (regOne!31524 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292))))))))

(declare-fun b!5517431 () Bool)

(assert (=> b!5517431 (= c!964619 e!3411713)))

(declare-fun res!2350728 () Bool)

(assert (=> b!5517431 (=> (not res!2350728) (not e!3411713))))

(assert (=> b!5517431 (= res!2350728 (is-Concat!24351 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))))))

(assert (=> b!5517431 (= e!3411716 e!3411715)))

(declare-fun bm!408387 () Bool)

(assert (=> bm!408387 (= call!408391 (derivationStepZipperDown!848 (ite c!964621 (regOne!31525 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))) (ite c!964619 (regTwo!31524 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))) (ite c!964620 (regOne!31524 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292)))) (reg!15835 (ite c!964350 (regTwo!31525 (regOne!31524 r!7292)) (regOne!31524 (regOne!31524 r!7292))))))) (ite (or c!964621 c!964619) (ite c!964350 lt!2246232 (Context!9781 call!408220)) (Context!9781 call!408390)) (h!69143 s!2326)))))

(assert (= (and d!1747997 c!964618) b!5517427))

(assert (= (and d!1747997 (not c!964618)) b!5517421))

(assert (= (and b!5517421 c!964621) b!5517425))

(assert (= (and b!5517421 (not c!964621)) b!5517431))

(assert (= (and b!5517431 res!2350728) b!5517430))

(assert (= (and b!5517431 c!964619) b!5517422))

(assert (= (and b!5517431 (not c!964619)) b!5517426))

(assert (= (and b!5517426 c!964620) b!5517424))

(assert (= (and b!5517426 (not c!964620)) b!5517428))

(assert (= (and b!5517428 c!964622) b!5517429))

(assert (= (and b!5517428 (not c!964622)) b!5517423))

(assert (= (or b!5517424 b!5517429) bm!408382))

(assert (= (or b!5517424 b!5517429) bm!408383))

(assert (= (or b!5517422 bm!408382) bm!408384))

(assert (= (or b!5517422 bm!408383) bm!408386))

(assert (= (or b!5517425 b!5517422) bm!408385))

(assert (= (or b!5517425 bm!408386) bm!408387))

(declare-fun m!6521240 () Bool)

(assert (=> bm!408385 m!6521240))

(declare-fun m!6521242 () Bool)

(assert (=> b!5517430 m!6521242))

(declare-fun m!6521244 () Bool)

(assert (=> b!5517427 m!6521244))

(declare-fun m!6521246 () Bool)

(assert (=> bm!408384 m!6521246))

(declare-fun m!6521248 () Bool)

(assert (=> bm!408387 m!6521248))

(assert (=> bm!408218 d!1747997))

(declare-fun bm!408388 () Bool)

(declare-fun call!408396 () List!62817)

(declare-fun call!408393 () List!62817)

(assert (=> bm!408388 (= call!408396 call!408393)))

(declare-fun b!5517432 () Bool)

(declare-fun e!3411718 () (Set Context!9780))

(declare-fun e!3411722 () (Set Context!9780))

(assert (=> b!5517432 (= e!3411718 e!3411722)))

(declare-fun c!964626 () Bool)

(assert (=> b!5517432 (= c!964626 (is-Union!15506 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))))))

(declare-fun b!5517433 () Bool)

(declare-fun e!3411721 () (Set Context!9780))

(declare-fun call!408394 () (Set Context!9780))

(declare-fun call!408395 () (Set Context!9780))

(assert (=> b!5517433 (= e!3411721 (set.union call!408394 call!408395))))

(declare-fun b!5517434 () Bool)

(declare-fun e!3411723 () (Set Context!9780))

(assert (=> b!5517434 (= e!3411723 (as set.empty (Set Context!9780)))))

(declare-fun b!5517435 () Bool)

(declare-fun e!3411720 () (Set Context!9780))

(declare-fun call!408398 () (Set Context!9780))

(assert (=> b!5517435 (= e!3411720 call!408398)))

(declare-fun b!5517436 () Bool)

(declare-fun call!408397 () (Set Context!9780))

(assert (=> b!5517436 (= e!3411722 (set.union call!408397 call!408394))))

(declare-fun b!5517437 () Bool)

(assert (=> b!5517437 (= e!3411721 e!3411720)))

(declare-fun c!964625 () Bool)

(assert (=> b!5517437 (= c!964625 (is-Concat!24351 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))))))

(declare-fun d!1747999 () Bool)

(declare-fun c!964623 () Bool)

(assert (=> d!1747999 (= c!964623 (and (is-ElementMatch!15506 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))) (= (c!964265 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))) (h!69143 s!2326))))))

(assert (=> d!1747999 (= (derivationStepZipperDown!848 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292))))) (ite (or c!964345 c!964343) lt!2246224 (Context!9781 call!408217)) (h!69143 s!2326)) e!3411718)))

(declare-fun bm!408389 () Bool)

(assert (=> bm!408389 (= call!408398 call!408395)))

(declare-fun b!5517438 () Bool)

(assert (=> b!5517438 (= e!3411718 (set.insert (ite (or c!964345 c!964343) lt!2246224 (Context!9781 call!408217)) (as set.empty (Set Context!9780))))))

(declare-fun c!964624 () Bool)

(declare-fun bm!408390 () Bool)

(assert (=> bm!408390 (= call!408393 ($colon$colon!1585 (exprs!5390 (ite (or c!964345 c!964343) lt!2246224 (Context!9781 call!408217))) (ite (or c!964624 c!964625) (regTwo!31524 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))) (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292))))))))))

(declare-fun b!5517439 () Bool)

(declare-fun c!964627 () Bool)

(assert (=> b!5517439 (= c!964627 (is-Star!15506 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))))))

(assert (=> b!5517439 (= e!3411720 e!3411723)))

(declare-fun bm!408391 () Bool)

(assert (=> bm!408391 (= call!408394 (derivationStepZipperDown!848 (ite c!964626 (regTwo!31525 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))) (regOne!31524 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292))))))) (ite c!964626 (ite (or c!964345 c!964343) lt!2246224 (Context!9781 call!408217)) (Context!9781 call!408393)) (h!69143 s!2326)))))

(declare-fun b!5517440 () Bool)

(assert (=> b!5517440 (= e!3411723 call!408398)))

(declare-fun bm!408392 () Bool)

(assert (=> bm!408392 (= call!408395 call!408397)))

(declare-fun e!3411719 () Bool)

(declare-fun b!5517441 () Bool)

(assert (=> b!5517441 (= e!3411719 (nullable!5540 (regOne!31524 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292))))))))))

(declare-fun b!5517442 () Bool)

(assert (=> b!5517442 (= c!964624 e!3411719)))

(declare-fun res!2350729 () Bool)

(assert (=> b!5517442 (=> (not res!2350729) (not e!3411719))))

(assert (=> b!5517442 (= res!2350729 (is-Concat!24351 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))))))

(assert (=> b!5517442 (= e!3411722 e!3411721)))

(declare-fun bm!408393 () Bool)

(assert (=> bm!408393 (= call!408397 (derivationStepZipperDown!848 (ite c!964626 (regOne!31525 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))) (ite c!964624 (regTwo!31524 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))) (ite c!964625 (regOne!31524 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292)))))) (reg!15835 (ite c!964345 (regOne!31525 (regTwo!31524 r!7292)) (ite c!964343 (regTwo!31524 (regTwo!31524 r!7292)) (ite c!964344 (regOne!31524 (regTwo!31524 r!7292)) (reg!15835 (regTwo!31524 r!7292))))))))) (ite (or c!964626 c!964624) (ite (or c!964345 c!964343) lt!2246224 (Context!9781 call!408217)) (Context!9781 call!408396)) (h!69143 s!2326)))))

(assert (= (and d!1747999 c!964623) b!5517438))

(assert (= (and d!1747999 (not c!964623)) b!5517432))

(assert (= (and b!5517432 c!964626) b!5517436))

(assert (= (and b!5517432 (not c!964626)) b!5517442))

(assert (= (and b!5517442 res!2350729) b!5517441))

(assert (= (and b!5517442 c!964624) b!5517433))

(assert (= (and b!5517442 (not c!964624)) b!5517437))

(assert (= (and b!5517437 c!964625) b!5517435))

(assert (= (and b!5517437 (not c!964625)) b!5517439))

(assert (= (and b!5517439 c!964627) b!5517440))

(assert (= (and b!5517439 (not c!964627)) b!5517434))

(assert (= (or b!5517435 b!5517440) bm!408388))

(assert (= (or b!5517435 b!5517440) bm!408389))

(assert (= (or b!5517433 bm!408388) bm!408390))

(assert (= (or b!5517433 bm!408389) bm!408392))

(assert (= (or b!5517436 b!5517433) bm!408391))

(assert (= (or b!5517436 bm!408392) bm!408393))

(declare-fun m!6521250 () Bool)

(assert (=> bm!408391 m!6521250))

(declare-fun m!6521252 () Bool)

(assert (=> b!5517441 m!6521252))

(declare-fun m!6521254 () Bool)

(assert (=> b!5517438 m!6521254))

(declare-fun m!6521256 () Bool)

(assert (=> bm!408390 m!6521256))

(declare-fun m!6521258 () Bool)

(assert (=> bm!408393 m!6521258))

(assert (=> bm!408214 d!1747999))

(assert (=> d!1747619 d!1747627))

(declare-fun d!1748001 () Bool)

(assert (=> d!1748001 (= (flatMap!1119 lt!2246229 lambda!295662) (dynLambda!24493 lambda!295662 lt!2246232))))

(assert (=> d!1748001 true))

(declare-fun _$13!2059 () Unit!155472)

(assert (=> d!1748001 (= (choose!41929 lt!2246229 lt!2246232 lambda!295662) _$13!2059)))

(declare-fun b_lambda!209177 () Bool)

(assert (=> (not b_lambda!209177) (not d!1748001)))

(declare-fun bs!1271603 () Bool)

(assert (= bs!1271603 d!1748001))

(assert (=> bs!1271603 m!6520086))

(assert (=> bs!1271603 m!6520396))

(assert (=> d!1747619 d!1748001))

(declare-fun bm!408394 () Bool)

(declare-fun call!408402 () List!62817)

(declare-fun call!408399 () List!62817)

(assert (=> bm!408394 (= call!408402 call!408399)))

(declare-fun b!5517443 () Bool)

(declare-fun e!3411724 () (Set Context!9780))

(declare-fun e!3411728 () (Set Context!9780))

(assert (=> b!5517443 (= e!3411724 e!3411728)))

(declare-fun c!964631 () Bool)

(assert (=> b!5517443 (= c!964631 (is-Union!15506 (h!69141 (exprs!5390 lt!2246232))))))

(declare-fun b!5517444 () Bool)

(declare-fun e!3411727 () (Set Context!9780))

(declare-fun call!408400 () (Set Context!9780))

(declare-fun call!408401 () (Set Context!9780))

(assert (=> b!5517444 (= e!3411727 (set.union call!408400 call!408401))))

(declare-fun b!5517445 () Bool)

(declare-fun e!3411729 () (Set Context!9780))

(assert (=> b!5517445 (= e!3411729 (as set.empty (Set Context!9780)))))

(declare-fun b!5517446 () Bool)

(declare-fun e!3411726 () (Set Context!9780))

(declare-fun call!408404 () (Set Context!9780))

(assert (=> b!5517446 (= e!3411726 call!408404)))

(declare-fun b!5517447 () Bool)

(declare-fun call!408403 () (Set Context!9780))

(assert (=> b!5517447 (= e!3411728 (set.union call!408403 call!408400))))

(declare-fun b!5517448 () Bool)

(assert (=> b!5517448 (= e!3411727 e!3411726)))

(declare-fun c!964630 () Bool)

(assert (=> b!5517448 (= c!964630 (is-Concat!24351 (h!69141 (exprs!5390 lt!2246232))))))

(declare-fun d!1748003 () Bool)

(declare-fun c!964628 () Bool)

(assert (=> d!1748003 (= c!964628 (and (is-ElementMatch!15506 (h!69141 (exprs!5390 lt!2246232))) (= (c!964265 (h!69141 (exprs!5390 lt!2246232))) (h!69143 s!2326))))))

(assert (=> d!1748003 (= (derivationStepZipperDown!848 (h!69141 (exprs!5390 lt!2246232)) (Context!9781 (t!376066 (exprs!5390 lt!2246232))) (h!69143 s!2326)) e!3411724)))

(declare-fun bm!408395 () Bool)

(assert (=> bm!408395 (= call!408404 call!408401)))

(declare-fun b!5517449 () Bool)

(assert (=> b!5517449 (= e!3411724 (set.insert (Context!9781 (t!376066 (exprs!5390 lt!2246232))) (as set.empty (Set Context!9780))))))

(declare-fun bm!408396 () Bool)

(declare-fun c!964629 () Bool)

(assert (=> bm!408396 (= call!408399 ($colon$colon!1585 (exprs!5390 (Context!9781 (t!376066 (exprs!5390 lt!2246232)))) (ite (or c!964629 c!964630) (regTwo!31524 (h!69141 (exprs!5390 lt!2246232))) (h!69141 (exprs!5390 lt!2246232)))))))

(declare-fun b!5517450 () Bool)

(declare-fun c!964632 () Bool)

(assert (=> b!5517450 (= c!964632 (is-Star!15506 (h!69141 (exprs!5390 lt!2246232))))))

(assert (=> b!5517450 (= e!3411726 e!3411729)))

(declare-fun bm!408397 () Bool)

(assert (=> bm!408397 (= call!408400 (derivationStepZipperDown!848 (ite c!964631 (regTwo!31525 (h!69141 (exprs!5390 lt!2246232))) (regOne!31524 (h!69141 (exprs!5390 lt!2246232)))) (ite c!964631 (Context!9781 (t!376066 (exprs!5390 lt!2246232))) (Context!9781 call!408399)) (h!69143 s!2326)))))

(declare-fun b!5517451 () Bool)

(assert (=> b!5517451 (= e!3411729 call!408404)))

(declare-fun bm!408398 () Bool)

(assert (=> bm!408398 (= call!408401 call!408403)))

(declare-fun b!5517452 () Bool)

(declare-fun e!3411725 () Bool)

(assert (=> b!5517452 (= e!3411725 (nullable!5540 (regOne!31524 (h!69141 (exprs!5390 lt!2246232)))))))

(declare-fun b!5517453 () Bool)

(assert (=> b!5517453 (= c!964629 e!3411725)))

(declare-fun res!2350730 () Bool)

(assert (=> b!5517453 (=> (not res!2350730) (not e!3411725))))

(assert (=> b!5517453 (= res!2350730 (is-Concat!24351 (h!69141 (exprs!5390 lt!2246232))))))

(assert (=> b!5517453 (= e!3411728 e!3411727)))

(declare-fun bm!408399 () Bool)

(assert (=> bm!408399 (= call!408403 (derivationStepZipperDown!848 (ite c!964631 (regOne!31525 (h!69141 (exprs!5390 lt!2246232))) (ite c!964629 (regTwo!31524 (h!69141 (exprs!5390 lt!2246232))) (ite c!964630 (regOne!31524 (h!69141 (exprs!5390 lt!2246232))) (reg!15835 (h!69141 (exprs!5390 lt!2246232)))))) (ite (or c!964631 c!964629) (Context!9781 (t!376066 (exprs!5390 lt!2246232))) (Context!9781 call!408402)) (h!69143 s!2326)))))

(assert (= (and d!1748003 c!964628) b!5517449))

(assert (= (and d!1748003 (not c!964628)) b!5517443))

(assert (= (and b!5517443 c!964631) b!5517447))

(assert (= (and b!5517443 (not c!964631)) b!5517453))

(assert (= (and b!5517453 res!2350730) b!5517452))

(assert (= (and b!5517453 c!964629) b!5517444))

(assert (= (and b!5517453 (not c!964629)) b!5517448))

(assert (= (and b!5517448 c!964630) b!5517446))

(assert (= (and b!5517448 (not c!964630)) b!5517450))

(assert (= (and b!5517450 c!964632) b!5517451))

(assert (= (and b!5517450 (not c!964632)) b!5517445))

(assert (= (or b!5517446 b!5517451) bm!408394))

(assert (= (or b!5517446 b!5517451) bm!408395))

(assert (= (or b!5517444 bm!408394) bm!408396))

(assert (= (or b!5517444 bm!408395) bm!408398))

(assert (= (or b!5517447 b!5517444) bm!408397))

(assert (= (or b!5517447 bm!408398) bm!408399))

(declare-fun m!6521260 () Bool)

(assert (=> bm!408397 m!6521260))

(declare-fun m!6521262 () Bool)

(assert (=> b!5517452 m!6521262))

(declare-fun m!6521264 () Bool)

(assert (=> b!5517449 m!6521264))

(declare-fun m!6521266 () Bool)

(assert (=> bm!408396 m!6521266))

(declare-fun m!6521268 () Bool)

(assert (=> bm!408399 m!6521268))

(assert (=> bm!408195 d!1748003))

(declare-fun bs!1271604 () Bool)

(declare-fun d!1748005 () Bool)

(assert (= bs!1271604 (and d!1748005 d!1747969)))

(declare-fun lambda!295779 () Int)

(assert (=> bs!1271604 (= lambda!295779 lambda!295773)))

(declare-fun bs!1271605 () Bool)

(assert (= bs!1271605 (and d!1748005 d!1747881)))

(assert (=> bs!1271605 (= lambda!295779 lambda!295766)))

(declare-fun bs!1271606 () Bool)

(assert (= bs!1271606 (and d!1748005 d!1747995)))

(assert (=> bs!1271606 (= lambda!295779 lambda!295778)))

(declare-fun bs!1271607 () Bool)

(assert (= bs!1271607 (and d!1748005 d!1747827)))

(assert (=> bs!1271607 (= lambda!295779 lambda!295758)))

(declare-fun bs!1271608 () Bool)

(assert (= bs!1271608 (and d!1748005 d!1747797)))

(assert (=> bs!1271608 (= lambda!295779 lambda!295749)))

(declare-fun bs!1271609 () Bool)

(assert (= bs!1271609 (and d!1748005 d!1747803)))

(assert (=> bs!1271609 (= lambda!295779 lambda!295750)))

(declare-fun bs!1271610 () Bool)

(assert (= bs!1271610 (and d!1748005 d!1747901)))

(assert (=> bs!1271610 (= lambda!295779 lambda!295768)))

(assert (=> d!1748005 (= (nullableZipper!1532 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326))) (exists!2138 (derivationStepZipper!1611 lt!2246233 (h!69143 s!2326)) lambda!295779))))

(declare-fun bs!1271611 () Bool)

(assert (= bs!1271611 d!1748005))

(assert (=> bs!1271611 m!6520106))

(declare-fun m!6521270 () Bool)

(assert (=> bs!1271611 m!6521270))

(assert (=> b!5516563 d!1748005))

(declare-fun b!5517457 () Bool)

(declare-fun e!3411730 () Bool)

(declare-fun tp!1517708 () Bool)

(declare-fun tp!1517704 () Bool)

(assert (=> b!5517457 (= e!3411730 (and tp!1517708 tp!1517704))))

(assert (=> b!5516587 (= tp!1517594 e!3411730)))

(declare-fun b!5517455 () Bool)

(declare-fun tp!1517707 () Bool)

(declare-fun tp!1517706 () Bool)

(assert (=> b!5517455 (= e!3411730 (and tp!1517707 tp!1517706))))

(declare-fun b!5517456 () Bool)

(declare-fun tp!1517705 () Bool)

(assert (=> b!5517456 (= e!3411730 tp!1517705)))

(declare-fun b!5517454 () Bool)

(assert (=> b!5517454 (= e!3411730 tp_is_empty!40265)))

(assert (= (and b!5516587 (is-ElementMatch!15506 (regOne!31525 (regTwo!31524 r!7292)))) b!5517454))

(assert (= (and b!5516587 (is-Concat!24351 (regOne!31525 (regTwo!31524 r!7292)))) b!5517455))

(assert (= (and b!5516587 (is-Star!15506 (regOne!31525 (regTwo!31524 r!7292)))) b!5517456))

(assert (= (and b!5516587 (is-Union!15506 (regOne!31525 (regTwo!31524 r!7292)))) b!5517457))

(declare-fun b!5517461 () Bool)

(declare-fun e!3411731 () Bool)

(declare-fun tp!1517713 () Bool)

(declare-fun tp!1517709 () Bool)

(assert (=> b!5517461 (= e!3411731 (and tp!1517713 tp!1517709))))

(assert (=> b!5516587 (= tp!1517590 e!3411731)))

(declare-fun b!5517459 () Bool)

(declare-fun tp!1517712 () Bool)

(declare-fun tp!1517711 () Bool)

(assert (=> b!5517459 (= e!3411731 (and tp!1517712 tp!1517711))))

(declare-fun b!5517460 () Bool)

(declare-fun tp!1517710 () Bool)

(assert (=> b!5517460 (= e!3411731 tp!1517710)))

(declare-fun b!5517458 () Bool)

(assert (=> b!5517458 (= e!3411731 tp_is_empty!40265)))

(assert (= (and b!5516587 (is-ElementMatch!15506 (regTwo!31525 (regTwo!31524 r!7292)))) b!5517458))

(assert (= (and b!5516587 (is-Concat!24351 (regTwo!31525 (regTwo!31524 r!7292)))) b!5517459))

(assert (= (and b!5516587 (is-Star!15506 (regTwo!31525 (regTwo!31524 r!7292)))) b!5517460))

(assert (= (and b!5516587 (is-Union!15506 (regTwo!31525 (regTwo!31524 r!7292)))) b!5517461))

(declare-fun b!5517462 () Bool)

(declare-fun e!3411732 () Bool)

(declare-fun tp!1517714 () Bool)

(declare-fun tp!1517715 () Bool)

(assert (=> b!5517462 (= e!3411732 (and tp!1517714 tp!1517715))))

(assert (=> b!5516601 (= tp!1517611 e!3411732)))

(assert (= (and b!5516601 (is-Cons!62693 (exprs!5390 setElem!36672))) b!5517462))

(declare-fun b!5517466 () Bool)

(declare-fun e!3411733 () Bool)

(declare-fun tp!1517720 () Bool)

(declare-fun tp!1517716 () Bool)

(assert (=> b!5517466 (= e!3411733 (and tp!1517720 tp!1517716))))

(assert (=> b!5516608 (= tp!1517618 e!3411733)))

(declare-fun b!5517464 () Bool)

(declare-fun tp!1517719 () Bool)

(declare-fun tp!1517718 () Bool)

(assert (=> b!5517464 (= e!3411733 (and tp!1517719 tp!1517718))))

(declare-fun b!5517465 () Bool)

(declare-fun tp!1517717 () Bool)

(assert (=> b!5517465 (= e!3411733 tp!1517717)))

(declare-fun b!5517463 () Bool)

(assert (=> b!5517463 (= e!3411733 tp_is_empty!40265)))

(assert (= (and b!5516608 (is-ElementMatch!15506 (reg!15835 (regTwo!31525 r!7292)))) b!5517463))

(assert (= (and b!5516608 (is-Concat!24351 (reg!15835 (regTwo!31525 r!7292)))) b!5517464))

(assert (= (and b!5516608 (is-Star!15506 (reg!15835 (regTwo!31525 r!7292)))) b!5517465))

(assert (= (and b!5516608 (is-Union!15506 (reg!15835 (regTwo!31525 r!7292)))) b!5517466))

(declare-fun b!5517470 () Bool)

(declare-fun e!3411734 () Bool)

(declare-fun tp!1517725 () Bool)

(declare-fun tp!1517721 () Bool)

(assert (=> b!5517470 (= e!3411734 (and tp!1517725 tp!1517721))))

(assert (=> b!5516586 (= tp!1517591 e!3411734)))

(declare-fun b!5517468 () Bool)

(declare-fun tp!1517724 () Bool)

(declare-fun tp!1517723 () Bool)

(assert (=> b!5517468 (= e!3411734 (and tp!1517724 tp!1517723))))

(declare-fun b!5517469 () Bool)

(declare-fun tp!1517722 () Bool)

(assert (=> b!5517469 (= e!3411734 tp!1517722)))

(declare-fun b!5517467 () Bool)

(assert (=> b!5517467 (= e!3411734 tp_is_empty!40265)))

(assert (= (and b!5516586 (is-ElementMatch!15506 (reg!15835 (regTwo!31524 r!7292)))) b!5517467))

(assert (= (and b!5516586 (is-Concat!24351 (reg!15835 (regTwo!31524 r!7292)))) b!5517468))

(assert (= (and b!5516586 (is-Star!15506 (reg!15835 (regTwo!31524 r!7292)))) b!5517469))

(assert (= (and b!5516586 (is-Union!15506 (reg!15835 (regTwo!31524 r!7292)))) b!5517470))

(declare-fun condSetEmpty!36681 () Bool)

(assert (=> setNonEmpty!36672 (= condSetEmpty!36681 (= setRest!36672 (as set.empty (Set Context!9780))))))

(declare-fun setRes!36681 () Bool)

(assert (=> setNonEmpty!36672 (= tp!1517610 setRes!36681)))

(declare-fun setIsEmpty!36681 () Bool)

(assert (=> setIsEmpty!36681 setRes!36681))

(declare-fun setElem!36681 () Context!9780)

(declare-fun setNonEmpty!36681 () Bool)

(declare-fun tp!1517726 () Bool)

(declare-fun e!3411735 () Bool)

(assert (=> setNonEmpty!36681 (= setRes!36681 (and tp!1517726 (inv!82013 setElem!36681) e!3411735))))

(declare-fun setRest!36681 () (Set Context!9780))

(assert (=> setNonEmpty!36681 (= setRest!36672 (set.union (set.insert setElem!36681 (as set.empty (Set Context!9780))) setRest!36681))))

(declare-fun b!5517471 () Bool)

(declare-fun tp!1517727 () Bool)

(assert (=> b!5517471 (= e!3411735 tp!1517727)))

(assert (= (and setNonEmpty!36672 condSetEmpty!36681) setIsEmpty!36681))

(assert (= (and setNonEmpty!36672 (not condSetEmpty!36681)) setNonEmpty!36681))

(assert (= setNonEmpty!36681 b!5517471))

(declare-fun m!6521272 () Bool)

(assert (=> setNonEmpty!36681 m!6521272))

(declare-fun b!5517475 () Bool)

(declare-fun e!3411736 () Bool)

(declare-fun tp!1517732 () Bool)

(declare-fun tp!1517728 () Bool)

(assert (=> b!5517475 (= e!3411736 (and tp!1517732 tp!1517728))))

(assert (=> b!5516609 (= tp!1517621 e!3411736)))

(declare-fun b!5517473 () Bool)

(declare-fun tp!1517731 () Bool)

(declare-fun tp!1517730 () Bool)

(assert (=> b!5517473 (= e!3411736 (and tp!1517731 tp!1517730))))

(declare-fun b!5517474 () Bool)

(declare-fun tp!1517729 () Bool)

(assert (=> b!5517474 (= e!3411736 tp!1517729)))

(declare-fun b!5517472 () Bool)

(assert (=> b!5517472 (= e!3411736 tp_is_empty!40265)))

(assert (= (and b!5516609 (is-ElementMatch!15506 (regOne!31525 (regTwo!31525 r!7292)))) b!5517472))

(assert (= (and b!5516609 (is-Concat!24351 (regOne!31525 (regTwo!31525 r!7292)))) b!5517473))

(assert (= (and b!5516609 (is-Star!15506 (regOne!31525 (regTwo!31525 r!7292)))) b!5517474))

(assert (= (and b!5516609 (is-Union!15506 (regOne!31525 (regTwo!31525 r!7292)))) b!5517475))

(declare-fun b!5517479 () Bool)

(declare-fun e!3411737 () Bool)

(declare-fun tp!1517737 () Bool)

(declare-fun tp!1517733 () Bool)

(assert (=> b!5517479 (= e!3411737 (and tp!1517737 tp!1517733))))

(assert (=> b!5516609 (= tp!1517617 e!3411737)))

(declare-fun b!5517477 () Bool)

(declare-fun tp!1517736 () Bool)

(declare-fun tp!1517735 () Bool)

(assert (=> b!5517477 (= e!3411737 (and tp!1517736 tp!1517735))))

(declare-fun b!5517478 () Bool)

(declare-fun tp!1517734 () Bool)

(assert (=> b!5517478 (= e!3411737 tp!1517734)))

(declare-fun b!5517476 () Bool)

(assert (=> b!5517476 (= e!3411737 tp_is_empty!40265)))

(assert (= (and b!5516609 (is-ElementMatch!15506 (regTwo!31525 (regTwo!31525 r!7292)))) b!5517476))

(assert (= (and b!5516609 (is-Concat!24351 (regTwo!31525 (regTwo!31525 r!7292)))) b!5517477))

(assert (= (and b!5516609 (is-Star!15506 (regTwo!31525 (regTwo!31525 r!7292)))) b!5517478))

(assert (= (and b!5516609 (is-Union!15506 (regTwo!31525 (regTwo!31525 r!7292)))) b!5517479))

(declare-fun b!5517483 () Bool)

(declare-fun e!3411738 () Bool)

(declare-fun tp!1517742 () Bool)

(declare-fun tp!1517738 () Bool)

(assert (=> b!5517483 (= e!3411738 (and tp!1517742 tp!1517738))))

(assert (=> b!5516592 (= tp!1517599 e!3411738)))

(declare-fun b!5517481 () Bool)

(declare-fun tp!1517741 () Bool)

(declare-fun tp!1517740 () Bool)

(assert (=> b!5517481 (= e!3411738 (and tp!1517741 tp!1517740))))

(declare-fun b!5517482 () Bool)

(declare-fun tp!1517739 () Bool)

(assert (=> b!5517482 (= e!3411738 tp!1517739)))

(declare-fun b!5517480 () Bool)

(assert (=> b!5517480 (= e!3411738 tp_is_empty!40265)))

(assert (= (and b!5516592 (is-ElementMatch!15506 (h!69141 (exprs!5390 setElem!36666)))) b!5517480))

(assert (= (and b!5516592 (is-Concat!24351 (h!69141 (exprs!5390 setElem!36666)))) b!5517481))

(assert (= (and b!5516592 (is-Star!15506 (h!69141 (exprs!5390 setElem!36666)))) b!5517482))

(assert (= (and b!5516592 (is-Union!15506 (h!69141 (exprs!5390 setElem!36666)))) b!5517483))

(declare-fun b!5517484 () Bool)

(declare-fun e!3411739 () Bool)

(declare-fun tp!1517743 () Bool)

(declare-fun tp!1517744 () Bool)

(assert (=> b!5517484 (= e!3411739 (and tp!1517743 tp!1517744))))

(assert (=> b!5516592 (= tp!1517600 e!3411739)))

(assert (= (and b!5516592 (is-Cons!62693 (t!376066 (exprs!5390 setElem!36666)))) b!5517484))

(declare-fun b!5517485 () Bool)

(declare-fun e!3411740 () Bool)

(declare-fun tp!1517745 () Bool)

(assert (=> b!5517485 (= e!3411740 (and tp_is_empty!40265 tp!1517745))))

(assert (=> b!5516569 (= tp!1517574 e!3411740)))

(assert (= (and b!5516569 (is-Cons!62695 (t!376068 (t!376068 s!2326)))) b!5517485))

(declare-fun b!5517489 () Bool)

(declare-fun e!3411741 () Bool)

(declare-fun tp!1517750 () Bool)

(declare-fun tp!1517746 () Bool)

(assert (=> b!5517489 (= e!3411741 (and tp!1517750 tp!1517746))))

(assert (=> b!5516607 (= tp!1517620 e!3411741)))

(declare-fun b!5517487 () Bool)

(declare-fun tp!1517749 () Bool)

(declare-fun tp!1517748 () Bool)

(assert (=> b!5517487 (= e!3411741 (and tp!1517749 tp!1517748))))

(declare-fun b!5517488 () Bool)

(declare-fun tp!1517747 () Bool)

(assert (=> b!5517488 (= e!3411741 tp!1517747)))

(declare-fun b!5517486 () Bool)

(assert (=> b!5517486 (= e!3411741 tp_is_empty!40265)))

(assert (= (and b!5516607 (is-ElementMatch!15506 (regOne!31524 (regTwo!31525 r!7292)))) b!5517486))

(assert (= (and b!5516607 (is-Concat!24351 (regOne!31524 (regTwo!31525 r!7292)))) b!5517487))

(assert (= (and b!5516607 (is-Star!15506 (regOne!31524 (regTwo!31525 r!7292)))) b!5517488))

(assert (= (and b!5516607 (is-Union!15506 (regOne!31524 (regTwo!31525 r!7292)))) b!5517489))

(declare-fun b!5517493 () Bool)

(declare-fun e!3411742 () Bool)

(declare-fun tp!1517755 () Bool)

(declare-fun tp!1517751 () Bool)

(assert (=> b!5517493 (= e!3411742 (and tp!1517755 tp!1517751))))

(assert (=> b!5516607 (= tp!1517619 e!3411742)))

(declare-fun b!5517491 () Bool)

(declare-fun tp!1517754 () Bool)

(declare-fun tp!1517753 () Bool)

(assert (=> b!5517491 (= e!3411742 (and tp!1517754 tp!1517753))))

(declare-fun b!5517492 () Bool)

(declare-fun tp!1517752 () Bool)

(assert (=> b!5517492 (= e!3411742 tp!1517752)))

(declare-fun b!5517490 () Bool)

(assert (=> b!5517490 (= e!3411742 tp_is_empty!40265)))

(assert (= (and b!5516607 (is-ElementMatch!15506 (regTwo!31524 (regTwo!31525 r!7292)))) b!5517490))

(assert (= (and b!5516607 (is-Concat!24351 (regTwo!31524 (regTwo!31525 r!7292)))) b!5517491))

(assert (= (and b!5516607 (is-Star!15506 (regTwo!31524 (regTwo!31525 r!7292)))) b!5517492))

(assert (= (and b!5516607 (is-Union!15506 (regTwo!31524 (regTwo!31525 r!7292)))) b!5517493))

(declare-fun b!5517497 () Bool)

(declare-fun e!3411743 () Bool)

(declare-fun tp!1517760 () Bool)

(declare-fun tp!1517756 () Bool)

(assert (=> b!5517497 (= e!3411743 (and tp!1517760 tp!1517756))))

(assert (=> b!5516585 (= tp!1517593 e!3411743)))

(declare-fun b!5517495 () Bool)

(declare-fun tp!1517759 () Bool)

(declare-fun tp!1517758 () Bool)

(assert (=> b!5517495 (= e!3411743 (and tp!1517759 tp!1517758))))

(declare-fun b!5517496 () Bool)

(declare-fun tp!1517757 () Bool)

(assert (=> b!5517496 (= e!3411743 tp!1517757)))

(declare-fun b!5517494 () Bool)

(assert (=> b!5517494 (= e!3411743 tp_is_empty!40265)))

(assert (= (and b!5516585 (is-ElementMatch!15506 (regOne!31524 (regTwo!31524 r!7292)))) b!5517494))

(assert (= (and b!5516585 (is-Concat!24351 (regOne!31524 (regTwo!31524 r!7292)))) b!5517495))

(assert (= (and b!5516585 (is-Star!15506 (regOne!31524 (regTwo!31524 r!7292)))) b!5517496))

(assert (= (and b!5516585 (is-Union!15506 (regOne!31524 (regTwo!31524 r!7292)))) b!5517497))

(declare-fun b!5517501 () Bool)

(declare-fun e!3411744 () Bool)

(declare-fun tp!1517765 () Bool)

(declare-fun tp!1517761 () Bool)

(assert (=> b!5517501 (= e!3411744 (and tp!1517765 tp!1517761))))

(assert (=> b!5516585 (= tp!1517592 e!3411744)))

(declare-fun b!5517499 () Bool)

(declare-fun tp!1517764 () Bool)

(declare-fun tp!1517763 () Bool)

(assert (=> b!5517499 (= e!3411744 (and tp!1517764 tp!1517763))))

(declare-fun b!5517500 () Bool)

(declare-fun tp!1517762 () Bool)

(assert (=> b!5517500 (= e!3411744 tp!1517762)))

(declare-fun b!5517498 () Bool)

(assert (=> b!5517498 (= e!3411744 tp_is_empty!40265)))

(assert (= (and b!5516585 (is-ElementMatch!15506 (regTwo!31524 (regTwo!31524 r!7292)))) b!5517498))

(assert (= (and b!5516585 (is-Concat!24351 (regTwo!31524 (regTwo!31524 r!7292)))) b!5517499))

(assert (= (and b!5516585 (is-Star!15506 (regTwo!31524 (regTwo!31524 r!7292)))) b!5517500))

(assert (= (and b!5516585 (is-Union!15506 (regTwo!31524 (regTwo!31524 r!7292)))) b!5517501))

(declare-fun b!5517505 () Bool)

(declare-fun e!3411745 () Bool)

(declare-fun tp!1517770 () Bool)

(declare-fun tp!1517766 () Bool)

(assert (=> b!5517505 (= e!3411745 (and tp!1517770 tp!1517766))))

(assert (=> b!5516594 (= tp!1517604 e!3411745)))

(declare-fun b!5517503 () Bool)

(declare-fun tp!1517769 () Bool)

(declare-fun tp!1517768 () Bool)

(assert (=> b!5517503 (= e!3411745 (and tp!1517769 tp!1517768))))

(declare-fun b!5517504 () Bool)

(declare-fun tp!1517767 () Bool)

(assert (=> b!5517504 (= e!3411745 tp!1517767)))

(declare-fun b!5517502 () Bool)

(assert (=> b!5517502 (= e!3411745 tp_is_empty!40265)))

(assert (= (and b!5516594 (is-ElementMatch!15506 (regOne!31524 (reg!15835 r!7292)))) b!5517502))

(assert (= (and b!5516594 (is-Concat!24351 (regOne!31524 (reg!15835 r!7292)))) b!5517503))

(assert (= (and b!5516594 (is-Star!15506 (regOne!31524 (reg!15835 r!7292)))) b!5517504))

(assert (= (and b!5516594 (is-Union!15506 (regOne!31524 (reg!15835 r!7292)))) b!5517505))

(declare-fun b!5517509 () Bool)

(declare-fun e!3411746 () Bool)

(declare-fun tp!1517775 () Bool)

(declare-fun tp!1517771 () Bool)

(assert (=> b!5517509 (= e!3411746 (and tp!1517775 tp!1517771))))

(assert (=> b!5516594 (= tp!1517603 e!3411746)))

(declare-fun b!5517507 () Bool)

(declare-fun tp!1517774 () Bool)

(declare-fun tp!1517773 () Bool)

(assert (=> b!5517507 (= e!3411746 (and tp!1517774 tp!1517773))))

(declare-fun b!5517508 () Bool)

(declare-fun tp!1517772 () Bool)

(assert (=> b!5517508 (= e!3411746 tp!1517772)))

(declare-fun b!5517506 () Bool)

(assert (=> b!5517506 (= e!3411746 tp_is_empty!40265)))

(assert (= (and b!5516594 (is-ElementMatch!15506 (regTwo!31524 (reg!15835 r!7292)))) b!5517506))

(assert (= (and b!5516594 (is-Concat!24351 (regTwo!31524 (reg!15835 r!7292)))) b!5517507))

(assert (= (and b!5516594 (is-Star!15506 (regTwo!31524 (reg!15835 r!7292)))) b!5517508))

(assert (= (and b!5516594 (is-Union!15506 (regTwo!31524 (reg!15835 r!7292)))) b!5517509))

(declare-fun b!5517513 () Bool)

(declare-fun e!3411747 () Bool)

(declare-fun tp!1517780 () Bool)

(declare-fun tp!1517776 () Bool)

(assert (=> b!5517513 (= e!3411747 (and tp!1517780 tp!1517776))))

(assert (=> b!5516596 (= tp!1517605 e!3411747)))

(declare-fun b!5517511 () Bool)

(declare-fun tp!1517779 () Bool)

(declare-fun tp!1517778 () Bool)

(assert (=> b!5517511 (= e!3411747 (and tp!1517779 tp!1517778))))

(declare-fun b!5517512 () Bool)

(declare-fun tp!1517777 () Bool)

(assert (=> b!5517512 (= e!3411747 tp!1517777)))

(declare-fun b!5517510 () Bool)

(assert (=> b!5517510 (= e!3411747 tp_is_empty!40265)))

(assert (= (and b!5516596 (is-ElementMatch!15506 (regOne!31525 (reg!15835 r!7292)))) b!5517510))

(assert (= (and b!5516596 (is-Concat!24351 (regOne!31525 (reg!15835 r!7292)))) b!5517511))

(assert (= (and b!5516596 (is-Star!15506 (regOne!31525 (reg!15835 r!7292)))) b!5517512))

(assert (= (and b!5516596 (is-Union!15506 (regOne!31525 (reg!15835 r!7292)))) b!5517513))

(declare-fun b!5517517 () Bool)

(declare-fun e!3411748 () Bool)

(declare-fun tp!1517785 () Bool)

(declare-fun tp!1517781 () Bool)

(assert (=> b!5517517 (= e!3411748 (and tp!1517785 tp!1517781))))

(assert (=> b!5516596 (= tp!1517601 e!3411748)))

(declare-fun b!5517515 () Bool)

(declare-fun tp!1517784 () Bool)

(declare-fun tp!1517783 () Bool)

(assert (=> b!5517515 (= e!3411748 (and tp!1517784 tp!1517783))))

(declare-fun b!5517516 () Bool)

(declare-fun tp!1517782 () Bool)

(assert (=> b!5517516 (= e!3411748 tp!1517782)))

(declare-fun b!5517514 () Bool)

(assert (=> b!5517514 (= e!3411748 tp_is_empty!40265)))

(assert (= (and b!5516596 (is-ElementMatch!15506 (regTwo!31525 (reg!15835 r!7292)))) b!5517514))

(assert (= (and b!5516596 (is-Concat!24351 (regTwo!31525 (reg!15835 r!7292)))) b!5517515))

(assert (= (and b!5516596 (is-Star!15506 (regTwo!31525 (reg!15835 r!7292)))) b!5517516))

(assert (= (and b!5516596 (is-Union!15506 (regTwo!31525 (reg!15835 r!7292)))) b!5517517))

(declare-fun b!5517521 () Bool)

(declare-fun e!3411749 () Bool)

(declare-fun tp!1517790 () Bool)

(declare-fun tp!1517786 () Bool)

(assert (=> b!5517521 (= e!3411749 (and tp!1517790 tp!1517786))))

(assert (=> b!5516595 (= tp!1517602 e!3411749)))

(declare-fun b!5517519 () Bool)

(declare-fun tp!1517789 () Bool)

(declare-fun tp!1517788 () Bool)

(assert (=> b!5517519 (= e!3411749 (and tp!1517789 tp!1517788))))

(declare-fun b!5517520 () Bool)

(declare-fun tp!1517787 () Bool)

(assert (=> b!5517520 (= e!3411749 tp!1517787)))

(declare-fun b!5517518 () Bool)

(assert (=> b!5517518 (= e!3411749 tp_is_empty!40265)))

(assert (= (and b!5516595 (is-ElementMatch!15506 (reg!15835 (reg!15835 r!7292)))) b!5517518))

(assert (= (and b!5516595 (is-Concat!24351 (reg!15835 (reg!15835 r!7292)))) b!5517519))

(assert (= (and b!5516595 (is-Star!15506 (reg!15835 (reg!15835 r!7292)))) b!5517520))

(assert (= (and b!5516595 (is-Union!15506 (reg!15835 (reg!15835 r!7292)))) b!5517521))

(declare-fun b!5517523 () Bool)

(declare-fun e!3411751 () Bool)

(declare-fun tp!1517791 () Bool)

(assert (=> b!5517523 (= e!3411751 tp!1517791)))

(declare-fun tp!1517792 () Bool)

(declare-fun b!5517522 () Bool)

(declare-fun e!3411750 () Bool)

(assert (=> b!5517522 (= e!3411750 (and (inv!82013 (h!69142 (t!376067 (t!376067 zl!343)))) e!3411751 tp!1517792))))

(assert (=> b!5516616 (= tp!1517627 e!3411750)))

(assert (= b!5517522 b!5517523))

(assert (= (and b!5516616 (is-Cons!62694 (t!376067 (t!376067 zl!343)))) b!5517522))

(declare-fun m!6521274 () Bool)

(assert (=> b!5517522 m!6521274))

(declare-fun b!5517524 () Bool)

(declare-fun e!3411752 () Bool)

(declare-fun tp!1517793 () Bool)

(declare-fun tp!1517794 () Bool)

(assert (=> b!5517524 (= e!3411752 (and tp!1517793 tp!1517794))))

(assert (=> b!5516617 (= tp!1517626 e!3411752)))

(assert (= (and b!5516617 (is-Cons!62693 (exprs!5390 (h!69142 (t!376067 zl!343))))) b!5517524))

(declare-fun b!5517528 () Bool)

(declare-fun e!3411753 () Bool)

(declare-fun tp!1517799 () Bool)

(declare-fun tp!1517795 () Bool)

(assert (=> b!5517528 (= e!3411753 (and tp!1517799 tp!1517795))))

(assert (=> b!5516582 (= tp!1517586 e!3411753)))

(declare-fun b!5517526 () Bool)

(declare-fun tp!1517798 () Bool)

(declare-fun tp!1517797 () Bool)

(assert (=> b!5517526 (= e!3411753 (and tp!1517798 tp!1517797))))

(declare-fun b!5517527 () Bool)

(declare-fun tp!1517796 () Bool)

(assert (=> b!5517527 (= e!3411753 tp!1517796)))

(declare-fun b!5517525 () Bool)

(assert (=> b!5517525 (= e!3411753 tp_is_empty!40265)))

(assert (= (and b!5516582 (is-ElementMatch!15506 (reg!15835 (regOne!31524 r!7292)))) b!5517525))

(assert (= (and b!5516582 (is-Concat!24351 (reg!15835 (regOne!31524 r!7292)))) b!5517526))

(assert (= (and b!5516582 (is-Star!15506 (reg!15835 (regOne!31524 r!7292)))) b!5517527))

(assert (= (and b!5516582 (is-Union!15506 (reg!15835 (regOne!31524 r!7292)))) b!5517528))

(declare-fun b!5517532 () Bool)

(declare-fun e!3411754 () Bool)

(declare-fun tp!1517804 () Bool)

(declare-fun tp!1517800 () Bool)

(assert (=> b!5517532 (= e!3411754 (and tp!1517804 tp!1517800))))

(assert (=> b!5516603 (= tp!1517615 e!3411754)))

(declare-fun b!5517530 () Bool)

(declare-fun tp!1517803 () Bool)

(declare-fun tp!1517802 () Bool)

(assert (=> b!5517530 (= e!3411754 (and tp!1517803 tp!1517802))))

(declare-fun b!5517531 () Bool)

(declare-fun tp!1517801 () Bool)

(assert (=> b!5517531 (= e!3411754 tp!1517801)))

(declare-fun b!5517529 () Bool)

(assert (=> b!5517529 (= e!3411754 tp_is_empty!40265)))

(assert (= (and b!5516603 (is-ElementMatch!15506 (regOne!31524 (regOne!31525 r!7292)))) b!5517529))

(assert (= (and b!5516603 (is-Concat!24351 (regOne!31524 (regOne!31525 r!7292)))) b!5517530))

(assert (= (and b!5516603 (is-Star!15506 (regOne!31524 (regOne!31525 r!7292)))) b!5517531))

(assert (= (and b!5516603 (is-Union!15506 (regOne!31524 (regOne!31525 r!7292)))) b!5517532))

(declare-fun b!5517536 () Bool)

(declare-fun e!3411755 () Bool)

(declare-fun tp!1517809 () Bool)

(declare-fun tp!1517805 () Bool)

(assert (=> b!5517536 (= e!3411755 (and tp!1517809 tp!1517805))))

(assert (=> b!5516603 (= tp!1517614 e!3411755)))

(declare-fun b!5517534 () Bool)

(declare-fun tp!1517808 () Bool)

(declare-fun tp!1517807 () Bool)

(assert (=> b!5517534 (= e!3411755 (and tp!1517808 tp!1517807))))

(declare-fun b!5517535 () Bool)

(declare-fun tp!1517806 () Bool)

(assert (=> b!5517535 (= e!3411755 tp!1517806)))

(declare-fun b!5517533 () Bool)

(assert (=> b!5517533 (= e!3411755 tp_is_empty!40265)))

(assert (= (and b!5516603 (is-ElementMatch!15506 (regTwo!31524 (regOne!31525 r!7292)))) b!5517533))

(assert (= (and b!5516603 (is-Concat!24351 (regTwo!31524 (regOne!31525 r!7292)))) b!5517534))

(assert (= (and b!5516603 (is-Star!15506 (regTwo!31524 (regOne!31525 r!7292)))) b!5517535))

(assert (= (and b!5516603 (is-Union!15506 (regTwo!31524 (regOne!31525 r!7292)))) b!5517536))

(declare-fun b!5517540 () Bool)

(declare-fun e!3411756 () Bool)

(declare-fun tp!1517814 () Bool)

(declare-fun tp!1517810 () Bool)

(assert (=> b!5517540 (= e!3411756 (and tp!1517814 tp!1517810))))

(assert (=> b!5516605 (= tp!1517616 e!3411756)))

(declare-fun b!5517538 () Bool)

(declare-fun tp!1517813 () Bool)

(declare-fun tp!1517812 () Bool)

(assert (=> b!5517538 (= e!3411756 (and tp!1517813 tp!1517812))))

(declare-fun b!5517539 () Bool)

(declare-fun tp!1517811 () Bool)

(assert (=> b!5517539 (= e!3411756 tp!1517811)))

(declare-fun b!5517537 () Bool)

(assert (=> b!5517537 (= e!3411756 tp_is_empty!40265)))

(assert (= (and b!5516605 (is-ElementMatch!15506 (regOne!31525 (regOne!31525 r!7292)))) b!5517537))

(assert (= (and b!5516605 (is-Concat!24351 (regOne!31525 (regOne!31525 r!7292)))) b!5517538))

(assert (= (and b!5516605 (is-Star!15506 (regOne!31525 (regOne!31525 r!7292)))) b!5517539))

(assert (= (and b!5516605 (is-Union!15506 (regOne!31525 (regOne!31525 r!7292)))) b!5517540))

(declare-fun b!5517544 () Bool)

(declare-fun e!3411757 () Bool)

(declare-fun tp!1517819 () Bool)

(declare-fun tp!1517815 () Bool)

(assert (=> b!5517544 (= e!3411757 (and tp!1517819 tp!1517815))))

(assert (=> b!5516605 (= tp!1517612 e!3411757)))

(declare-fun b!5517542 () Bool)

(declare-fun tp!1517818 () Bool)

(declare-fun tp!1517817 () Bool)

(assert (=> b!5517542 (= e!3411757 (and tp!1517818 tp!1517817))))

(declare-fun b!5517543 () Bool)

(declare-fun tp!1517816 () Bool)

(assert (=> b!5517543 (= e!3411757 tp!1517816)))

(declare-fun b!5517541 () Bool)

(assert (=> b!5517541 (= e!3411757 tp_is_empty!40265)))

(assert (= (and b!5516605 (is-ElementMatch!15506 (regTwo!31525 (regOne!31525 r!7292)))) b!5517541))

(assert (= (and b!5516605 (is-Concat!24351 (regTwo!31525 (regOne!31525 r!7292)))) b!5517542))

(assert (= (and b!5516605 (is-Star!15506 (regTwo!31525 (regOne!31525 r!7292)))) b!5517543))

(assert (= (and b!5516605 (is-Union!15506 (regTwo!31525 (regOne!31525 r!7292)))) b!5517544))

(declare-fun b!5517548 () Bool)

(declare-fun e!3411758 () Bool)

(declare-fun tp!1517824 () Bool)

(declare-fun tp!1517820 () Bool)

(assert (=> b!5517548 (= e!3411758 (and tp!1517824 tp!1517820))))

(assert (=> b!5516583 (= tp!1517589 e!3411758)))

(declare-fun b!5517546 () Bool)

(declare-fun tp!1517823 () Bool)

(declare-fun tp!1517822 () Bool)

(assert (=> b!5517546 (= e!3411758 (and tp!1517823 tp!1517822))))

(declare-fun b!5517547 () Bool)

(declare-fun tp!1517821 () Bool)

(assert (=> b!5517547 (= e!3411758 tp!1517821)))

(declare-fun b!5517545 () Bool)

(assert (=> b!5517545 (= e!3411758 tp_is_empty!40265)))

(assert (= (and b!5516583 (is-ElementMatch!15506 (regOne!31525 (regOne!31524 r!7292)))) b!5517545))

(assert (= (and b!5516583 (is-Concat!24351 (regOne!31525 (regOne!31524 r!7292)))) b!5517546))

(assert (= (and b!5516583 (is-Star!15506 (regOne!31525 (regOne!31524 r!7292)))) b!5517547))

(assert (= (and b!5516583 (is-Union!15506 (regOne!31525 (regOne!31524 r!7292)))) b!5517548))

(declare-fun b!5517552 () Bool)

(declare-fun e!3411759 () Bool)

(declare-fun tp!1517829 () Bool)

(declare-fun tp!1517825 () Bool)

(assert (=> b!5517552 (= e!3411759 (and tp!1517829 tp!1517825))))

(assert (=> b!5516583 (= tp!1517585 e!3411759)))

(declare-fun b!5517550 () Bool)

(declare-fun tp!1517828 () Bool)

(declare-fun tp!1517827 () Bool)

(assert (=> b!5517550 (= e!3411759 (and tp!1517828 tp!1517827))))

(declare-fun b!5517551 () Bool)

(declare-fun tp!1517826 () Bool)

(assert (=> b!5517551 (= e!3411759 tp!1517826)))

(declare-fun b!5517549 () Bool)

(assert (=> b!5517549 (= e!3411759 tp_is_empty!40265)))

(assert (= (and b!5516583 (is-ElementMatch!15506 (regTwo!31525 (regOne!31524 r!7292)))) b!5517549))

(assert (= (and b!5516583 (is-Concat!24351 (regTwo!31525 (regOne!31524 r!7292)))) b!5517550))

(assert (= (and b!5516583 (is-Star!15506 (regTwo!31525 (regOne!31524 r!7292)))) b!5517551))

(assert (= (and b!5516583 (is-Union!15506 (regTwo!31525 (regOne!31524 r!7292)))) b!5517552))

(declare-fun b!5517556 () Bool)

(declare-fun e!3411760 () Bool)

(declare-fun tp!1517834 () Bool)

(declare-fun tp!1517830 () Bool)

(assert (=> b!5517556 (= e!3411760 (and tp!1517834 tp!1517830))))

(assert (=> b!5516604 (= tp!1517613 e!3411760)))

(declare-fun b!5517554 () Bool)

(declare-fun tp!1517833 () Bool)

(declare-fun tp!1517832 () Bool)

(assert (=> b!5517554 (= e!3411760 (and tp!1517833 tp!1517832))))

(declare-fun b!5517555 () Bool)

(declare-fun tp!1517831 () Bool)

(assert (=> b!5517555 (= e!3411760 tp!1517831)))

(declare-fun b!5517553 () Bool)

(assert (=> b!5517553 (= e!3411760 tp_is_empty!40265)))

(assert (= (and b!5516604 (is-ElementMatch!15506 (reg!15835 (regOne!31525 r!7292)))) b!5517553))

(assert (= (and b!5516604 (is-Concat!24351 (reg!15835 (regOne!31525 r!7292)))) b!5517554))

(assert (= (and b!5516604 (is-Star!15506 (reg!15835 (regOne!31525 r!7292)))) b!5517555))

(assert (= (and b!5516604 (is-Union!15506 (reg!15835 (regOne!31525 r!7292)))) b!5517556))

(declare-fun b!5517560 () Bool)

(declare-fun e!3411761 () Bool)

(declare-fun tp!1517839 () Bool)

(declare-fun tp!1517835 () Bool)

(assert (=> b!5517560 (= e!3411761 (and tp!1517839 tp!1517835))))

(assert (=> b!5516618 (= tp!1517628 e!3411761)))

(declare-fun b!5517558 () Bool)

(declare-fun tp!1517838 () Bool)

(declare-fun tp!1517837 () Bool)

(assert (=> b!5517558 (= e!3411761 (and tp!1517838 tp!1517837))))

(declare-fun b!5517559 () Bool)

(declare-fun tp!1517836 () Bool)

(assert (=> b!5517559 (= e!3411761 tp!1517836)))

(declare-fun b!5517557 () Bool)

(assert (=> b!5517557 (= e!3411761 tp_is_empty!40265)))

(assert (= (and b!5516618 (is-ElementMatch!15506 (h!69141 (exprs!5390 (h!69142 zl!343))))) b!5517557))

(assert (= (and b!5516618 (is-Concat!24351 (h!69141 (exprs!5390 (h!69142 zl!343))))) b!5517558))

(assert (= (and b!5516618 (is-Star!15506 (h!69141 (exprs!5390 (h!69142 zl!343))))) b!5517559))

(assert (= (and b!5516618 (is-Union!15506 (h!69141 (exprs!5390 (h!69142 zl!343))))) b!5517560))

(declare-fun b!5517561 () Bool)

(declare-fun e!3411762 () Bool)

(declare-fun tp!1517840 () Bool)

(declare-fun tp!1517841 () Bool)

(assert (=> b!5517561 (= e!3411762 (and tp!1517840 tp!1517841))))

(assert (=> b!5516618 (= tp!1517629 e!3411762)))

(assert (= (and b!5516618 (is-Cons!62693 (t!376066 (exprs!5390 (h!69142 zl!343))))) b!5517561))

(declare-fun b!5517565 () Bool)

(declare-fun e!3411763 () Bool)

(declare-fun tp!1517846 () Bool)

(declare-fun tp!1517842 () Bool)

(assert (=> b!5517565 (= e!3411763 (and tp!1517846 tp!1517842))))

(assert (=> b!5516581 (= tp!1517588 e!3411763)))

(declare-fun b!5517563 () Bool)

(declare-fun tp!1517845 () Bool)

(declare-fun tp!1517844 () Bool)

(assert (=> b!5517563 (= e!3411763 (and tp!1517845 tp!1517844))))

(declare-fun b!5517564 () Bool)

(declare-fun tp!1517843 () Bool)

(assert (=> b!5517564 (= e!3411763 tp!1517843)))

(declare-fun b!5517562 () Bool)

(assert (=> b!5517562 (= e!3411763 tp_is_empty!40265)))

(assert (= (and b!5516581 (is-ElementMatch!15506 (regOne!31524 (regOne!31524 r!7292)))) b!5517562))

(assert (= (and b!5516581 (is-Concat!24351 (regOne!31524 (regOne!31524 r!7292)))) b!5517563))

(assert (= (and b!5516581 (is-Star!15506 (regOne!31524 (regOne!31524 r!7292)))) b!5517564))

(assert (= (and b!5516581 (is-Union!15506 (regOne!31524 (regOne!31524 r!7292)))) b!5517565))

(declare-fun b!5517569 () Bool)

(declare-fun e!3411764 () Bool)

(declare-fun tp!1517851 () Bool)

(declare-fun tp!1517847 () Bool)

(assert (=> b!5517569 (= e!3411764 (and tp!1517851 tp!1517847))))

(assert (=> b!5516581 (= tp!1517587 e!3411764)))

(declare-fun b!5517567 () Bool)

(declare-fun tp!1517850 () Bool)

(declare-fun tp!1517849 () Bool)

(assert (=> b!5517567 (= e!3411764 (and tp!1517850 tp!1517849))))

(declare-fun b!5517568 () Bool)

(declare-fun tp!1517848 () Bool)

(assert (=> b!5517568 (= e!3411764 tp!1517848)))

(declare-fun b!5517566 () Bool)

(assert (=> b!5517566 (= e!3411764 tp_is_empty!40265)))

(assert (= (and b!5516581 (is-ElementMatch!15506 (regTwo!31524 (regOne!31524 r!7292)))) b!5517566))

(assert (= (and b!5516581 (is-Concat!24351 (regTwo!31524 (regOne!31524 r!7292)))) b!5517567))

(assert (= (and b!5516581 (is-Star!15506 (regTwo!31524 (regOne!31524 r!7292)))) b!5517568))

(assert (= (and b!5516581 (is-Union!15506 (regTwo!31524 (regOne!31524 r!7292)))) b!5517569))

(declare-fun b_lambda!209179 () Bool)

(assert (= b_lambda!209169 (or d!1747609 b_lambda!209179)))

(declare-fun bs!1271612 () Bool)

(declare-fun d!1748007 () Bool)

(assert (= bs!1271612 (and d!1748007 d!1747609)))

(assert (=> bs!1271612 (= (dynLambda!24495 lambda!295698 (h!69141 lt!2246346)) (validRegex!7242 (h!69141 lt!2246346)))))

(declare-fun m!6521276 () Bool)

(assert (=> bs!1271612 m!6521276))

(assert (=> b!5517210 d!1748007))

(declare-fun b_lambda!209181 () Bool)

(assert (= b_lambda!209175 (or b!5516115 b_lambda!209181)))

(assert (=> d!1747973 d!1747655))

(declare-fun b_lambda!209183 () Bool)

(assert (= b_lambda!209163 (or d!1747629 b_lambda!209183)))

(declare-fun bs!1271613 () Bool)

(declare-fun d!1748009 () Bool)

(assert (= bs!1271613 (and d!1748009 d!1747629)))

(assert (=> bs!1271613 (= (dynLambda!24495 lambda!295701 (h!69141 (exprs!5390 setElem!36666))) (validRegex!7242 (h!69141 (exprs!5390 setElem!36666))))))

(declare-fun m!6521278 () Bool)

(assert (=> bs!1271613 m!6521278))

(assert (=> b!5517114 d!1748009))

(declare-fun b_lambda!209185 () Bool)

(assert (= b_lambda!209165 (or d!1747607 b_lambda!209185)))

(declare-fun bs!1271614 () Bool)

(declare-fun d!1748011 () Bool)

(assert (= bs!1271614 (and d!1748011 d!1747607)))

(assert (=> bs!1271614 (= (dynLambda!24495 lambda!295695 (h!69141 (unfocusZipperList!934 zl!343))) (validRegex!7242 (h!69141 (unfocusZipperList!934 zl!343))))))

(declare-fun m!6521280 () Bool)

(assert (=> bs!1271614 m!6521280))

(assert (=> b!5517161 d!1748011))

(declare-fun b_lambda!209187 () Bool)

(assert (= b_lambda!209171 (or b!5516115 b_lambda!209187)))

(assert (=> d!1747911 d!1747659))

(declare-fun b_lambda!209189 () Bool)

(assert (= b_lambda!209167 (or d!1747637 b_lambda!209189)))

(declare-fun bs!1271615 () Bool)

(declare-fun d!1748013 () Bool)

(assert (= bs!1271615 (and d!1748013 d!1747637)))

(assert (=> bs!1271615 (= (dynLambda!24495 lambda!295708 (h!69141 (exprs!5390 (h!69142 zl!343)))) (validRegex!7242 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(declare-fun m!6521282 () Bool)

(assert (=> bs!1271615 m!6521282))

(assert (=> b!5517190 d!1748013))

(declare-fun b_lambda!209191 () Bool)

(assert (= b_lambda!209177 (or b!5516115 b_lambda!209191)))

(assert (=> d!1748001 d!1747657))

(declare-fun b_lambda!209193 () Bool)

(assert (= b_lambda!209173 (or d!1747575 b_lambda!209193)))

(declare-fun bs!1271616 () Bool)

(declare-fun d!1748015 () Bool)

(assert (= bs!1271616 (and d!1748015 d!1747575)))

(assert (=> bs!1271616 (= (dynLambda!24495 lambda!295680 (h!69141 (exprs!5390 (h!69142 zl!343)))) (validRegex!7242 (h!69141 (exprs!5390 (h!69142 zl!343)))))))

(assert (=> bs!1271616 m!6521282))

(assert (=> b!5517264 d!1748015))

(push 1)

(assert (not b!5517183))

(assert (not b!5517380))

(assert (not b!5517511))

(assert (not b!5517341))

(assert (not b!5517032))

(assert (not bm!408384))

(assert (not b!5517029))

(assert (not b!5517456))

(assert (not bs!1271614))

(assert (not b!5517503))

(assert (not bm!408341))

(assert (not b!5517534))

(assert (not b!5517560))

(assert (not b!5517395))

(assert (not d!1747925))

(assert (not b!5517122))

(assert (not b!5517128))

(assert (not b!5517489))

(assert (not d!1747827))

(assert (not b!5517068))

(assert (not bm!408375))

(assert (not b!5517295))

(assert (not b!5517497))

(assert (not d!1747797))

(assert (not b!5517505))

(assert (not b!5517376))

(assert (not b!5517171))

(assert (not b!5517169))

(assert (not bm!408299))

(assert (not b!5517353))

(assert (not bs!1271615))

(assert (not b!5517162))

(assert (not d!1748001))

(assert (not b!5517040))

(assert (not bm!408378))

(assert (not b!5517077))

(assert (not b!5517364))

(assert (not d!1747975))

(assert (not b!5517521))

(assert (not d!1747989))

(assert (not b!5517036))

(assert (not d!1747885))

(assert (not b!5517377))

(assert (not d!1747779))

(assert (not b!5517564))

(assert (not b!5517540))

(assert (not b!5517280))

(assert (not b!5517230))

(assert (not d!1747951))

(assert (not b!5517267))

(assert (not b!5517022))

(assert (not b!5517479))

(assert (not b!5517322))

(assert (not bm!408304))

(assert (not b!5517484))

(assert (not b!5517160))

(assert (not bm!408387))

(assert (not b!5517397))

(assert (not d!1747913))

(assert (not b!5517547))

(assert (not bm!408324))

(assert (not b!5517469))

(assert (not b!5517009))

(assert (not b!5517457))

(assert (not d!1747933))

(assert (not b!5517512))

(assert (not d!1747795))

(assert (not b!5517037))

(assert (not b!5517119))

(assert (not d!1747943))

(assert (not d!1747953))

(assert (not d!1747909))

(assert (not b!5517191))

(assert (not bm!408357))

(assert (not d!1747783))

(assert (not bs!1271613))

(assert (not d!1747875))

(assert (not b!5517092))

(assert (not b!5517551))

(assert (not b!5517558))

(assert (not b!5517495))

(assert (not b!5517188))

(assert (not b!5517470))

(assert (not d!1747873))

(assert (not b!5517292))

(assert (not b!5517043))

(assert (not b!5517464))

(assert (not bm!408373))

(assert (not d!1747901))

(assert (not b!5517539))

(assert (not b!5517550))

(assert (not b!5517069))

(assert (not b!5517460))

(assert (not b!5517291))

(assert (not bs!1271612))

(assert (not b_lambda!209179))

(assert (not b_lambda!209191))

(assert (not bm!408381))

(assert (not bm!408321))

(assert (not b!5517556))

(assert (not b!5517141))

(assert (not b!5517474))

(assert (not bm!408316))

(assert (not bm!408390))

(assert (not b!5517276))

(assert (not b!5517175))

(assert (not b!5517087))

(assert (not b!5517466))

(assert (not b!5517390))

(assert (not b!5517117))

(assert (not b!5517483))

(assert (not b!5517488))

(assert (not b!5517033))

(assert (not b!5517115))

(assert (not d!1747841))

(assert (not b_lambda!209147))

(assert (not b!5517508))

(assert (not d!1747935))

(assert (not b!5517554))

(assert (not d!1747911))

(assert (not d!1747937))

(assert (not b!5517286))

(assert (not b!5517214))

(assert (not d!1747931))

(assert (not b_lambda!209181))

(assert (not b!5517174))

(assert (not b!5517542))

(assert (not b_lambda!209189))

(assert (not d!1747969))

(assert (not b!5517127))

(assert (not b!5517452))

(assert (not b!5517526))

(assert (not b!5517208))

(assert (not b!5517559))

(assert (not b!5517211))

(assert (not b!5517070))

(assert (not b!5517536))

(assert (not b!5517371))

(assert (not d!1747819))

(assert (not b_lambda!209185))

(assert (not b!5517477))

(assert (not d!1747927))

(assert (not d!1747821))

(assert (not d!1747995))

(assert (not d!1747817))

(assert (not b_lambda!209183))

(assert (not b!5517552))

(assert (not d!1748005))

(assert (not b!5517509))

(assert (not b!5517523))

(assert (not b!5517501))

(assert (not d!1747955))

(assert (not b!5517471))

(assert (not b!5517337))

(assert (not d!1747833))

(assert (not b!5517567))

(assert (not d!1747973))

(assert (not d!1747957))

(assert (not d!1747807))

(assert (not d!1747907))

(assert (not b!5517565))

(assert (not b!5517151))

(assert (not b!5517218))

(assert (not d!1747977))

(assert (not bm!408391))

(assert (not bm!408308))

(assert (not b!5517197))

(assert (not bm!408303))

(assert (not b!5517499))

(assert (not b!5517381))

(assert (not b!5517383))

(assert (not b!5517569))

(assert (not b!5517116))

(assert (not b!5517213))

(assert (not b!5517335))

(assert (not b!5517205))

(assert (not d!1747803))

(assert (not bm!408385))

(assert (not bm!408328))

(assert (not b!5517288))

(assert (not b!5517491))

(assert (not bs!1271616))

(assert (not d!1747759))

(assert (not bm!408342))

(assert (not bm!408310))

(assert (not b!5517017))

(assert (not bm!408351))

(assert (not b!5517398))

(assert (not b!5517543))

(assert (not b!5517042))

(assert (not bm!408361))

(assert (not b!5517513))

(assert (not b!5517522))

(assert (not bm!408296))

(assert (not bm!408313))

(assert (not b!5517461))

(assert (not b!5517038))

(assert (not bm!408365))

(assert (not b!5517561))

(assert (not d!1747967))

(assert (not b!5517430))

(assert (not b!5517481))

(assert (not bm!408369))

(assert (not b!5517500))

(assert (not d!1747961))

(assert (not d!1747867))

(assert (not b!5517384))

(assert (not b!5517515))

(assert (not bm!408329))

(assert (not b!5517419))

(assert (not d!1747979))

(assert (not b!5517088))

(assert (not b!5517272))

(assert (not b!5517166))

(assert (not b!5517441))

(assert (not b!5517076))

(assert (not b_lambda!209187))

(assert (not b!5517131))

(assert (not b!5517003))

(assert (not b!5517496))

(assert (not b!5517373))

(assert (not d!1747941))

(assert (not bm!408360))

(assert (not b!5517517))

(assert (not d!1747843))

(assert (not b!5517555))

(assert (not b!5517071))

(assert (not b!5517465))

(assert (not b_lambda!209193))

(assert (not b!5517163))

(assert (not b!5517045))

(assert (not b!5517538))

(assert (not bm!408325))

(assert (not b!5517462))

(assert (not d!1747959))

(assert (not bm!408334))

(assert (not b!5517520))

(assert (not b!5517532))

(assert (not setNonEmpty!36679))

(assert (not b!5517544))

(assert (not b!5517535))

(assert (not d!1747801))

(assert (not b!5517516))

(assert (not b!5517408))

(assert (not setNonEmpty!36680))

(assert (not b!5517482))

(assert (not b!5517086))

(assert (not b!5517528))

(assert (not b!5517164))

(assert (not d!1747809))

(assert (not bm!408322))

(assert (not b!5517455))

(assert (not b!5517024))

(assert (not b!5517487))

(assert (not bm!408396))

(assert (not d!1747805))

(assert (not bm!408335))

(assert (not b!5517369))

(assert (not b!5517265))

(assert (not b!5517281))

(assert (not b!5517493))

(assert (not b!5517124))

(assert (not b!5517283))

(assert (not b!5517018))

(assert (not b!5517504))

(assert (not b!5517270))

(assert (not b!5517178))

(assert (not bm!408302))

(assert (not b!5517368))

(assert (not bm!408312))

(assert (not b!5517473))

(assert tp_is_empty!40265)

(assert (not bm!408393))

(assert (not bm!408320))

(assert (not b!5517478))

(assert (not b!5517531))

(assert (not d!1747983))

(assert (not b!5517524))

(assert (not d!1747971))

(assert (not b!5517372))

(assert (not b!5517198))

(assert (not bm!408372))

(assert (not d!1747949))

(assert (not b!5517242))

(assert (not d!1747773))

(assert (not b!5517004))

(assert (not d!1747929))

(assert (not b_lambda!209145))

(assert (not bm!408300))

(assert (not d!1747981))

(assert (not b!5517010))

(assert (not bm!408317))

(assert (not bm!408399))

(assert (not b!5517492))

(assert (not b!5517019))

(assert (not b_lambda!209149))

(assert (not b!5517263))

(assert (not d!1747835))

(assert (not bm!408379))

(assert (not b!5517231))

(assert (not b!5517204))

(assert (not d!1747847))

(assert (not b!5517527))

(assert (not bm!408368))

(assert (not d!1747799))

(assert (not b!5517485))

(assert (not b!5517044))

(assert (not b!5517365))

(assert (not bm!408358))

(assert (not bm!408291))

(assert (not b!5517378))

(assert (not bm!408315))

(assert (not bm!408339))

(assert (not b!5517548))

(assert (not bm!408307))

(assert (not bm!408340))

(assert (not b!5517109))

(assert (not bm!408319))

(assert (not b!5517546))

(assert (not b!5517475))

(assert (not b!5517089))

(assert (not b!5517338))

(assert (not b!5517459))

(assert (not d!1747757))

(assert (not d!1747789))

(assert (not bm!408364))

(assert (not bm!408352))

(assert (not bm!408297))

(assert (not b!5517530))

(assert (not b!5517232))

(assert (not bm!408397))

(assert (not bm!408318))

(assert (not b!5517563))

(assert (not bm!408337))

(assert (not b!5517468))

(assert (not b!5517275))

(assert (not bm!408367))

(assert (not b!5517519))

(assert (not d!1747987))

(assert (not b!5517219))

(assert (not b!5517072))

(assert (not b!5517279))

(assert (not d!1747865))

(assert (not b!5517340))

(assert (not b!5517507))

(assert (not d!1747899))

(assert (not b!5517253))

(assert (not bm!408331))

(assert (not d!1747881))

(assert (not setNonEmpty!36681))

(assert (not b!5517568))

(assert (not b!5517027))

(assert (not setNonEmpty!36678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

