; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!584784 () Bool)

(assert start!584784)

(declare-fun b!5655240 () Bool)

(assert (=> b!5655240 true))

(assert (=> b!5655240 true))

(declare-fun lambda!304347 () Int)

(declare-fun lambda!304346 () Int)

(assert (=> b!5655240 (not (= lambda!304347 lambda!304346))))

(assert (=> b!5655240 true))

(assert (=> b!5655240 true))

(declare-fun b!5655233 () Bool)

(assert (=> b!5655233 true))

(declare-fun b!5655230 () Bool)

(declare-fun e!3483180 () Bool)

(declare-datatypes ((C!31566 0))(
  ( (C!31567 (val!25485 Int)) )
))
(declare-datatypes ((Regex!15648 0))(
  ( (ElementMatch!15648 (c!994162 C!31566)) (Concat!24493 (regOne!31808 Regex!15648) (regTwo!31808 Regex!15648)) (EmptyExpr!15648) (Star!15648 (reg!15977 Regex!15648)) (EmptyLang!15648) (Union!15648 (regOne!31809 Regex!15648) (regTwo!31809 Regex!15648)) )
))
(declare-fun r!7292 () Regex!15648)

(declare-fun nullable!5680 (Regex!15648) Bool)

(assert (=> b!5655230 (= e!3483180 (nullable!5680 (regOne!31808 (regOne!31808 r!7292))))))

(declare-fun b!5655231 () Bool)

(declare-datatypes ((Unit!156124 0))(
  ( (Unit!156125) )
))
(declare-fun e!3483178 () Unit!156124)

(declare-fun Unit!156126 () Unit!156124)

(assert (=> b!5655231 (= e!3483178 Unit!156126)))

(declare-fun b!5655232 () Bool)

(declare-fun res!2392261 () Bool)

(declare-fun e!3483179 () Bool)

(assert (=> b!5655232 (=> res!2392261 e!3483179)))

(declare-datatypes ((List!63243 0))(
  ( (Nil!63119) (Cons!63119 (h!69567 C!31566) (t!376545 List!63243)) )
))
(declare-fun s!2326 () List!63243)

(declare-datatypes ((List!63244 0))(
  ( (Nil!63120) (Cons!63120 (h!69568 Regex!15648) (t!376546 List!63244)) )
))
(declare-datatypes ((Context!10064 0))(
  ( (Context!10065 (exprs!5532 List!63244)) )
))
(declare-fun lt!2266564 () (Set Context!10064))

(declare-fun lt!2266573 () Bool)

(declare-fun matchZipper!1786 ((Set Context!10064) List!63243) Bool)

(assert (=> b!5655232 (= res!2392261 (not (= lt!2266573 (matchZipper!1786 lt!2266564 (t!376545 s!2326)))))))

(declare-fun e!3483183 () Bool)

(declare-fun e!3483177 () Bool)

(assert (=> b!5655233 (= e!3483183 e!3483177)))

(declare-fun res!2392250 () Bool)

(assert (=> b!5655233 (=> res!2392250 e!3483177)))

(assert (=> b!5655233 (= res!2392250 (or (and (is-ElementMatch!15648 (regOne!31808 r!7292)) (= (c!994162 (regOne!31808 r!7292)) (h!69567 s!2326))) (is-Union!15648 (regOne!31808 r!7292))))))

(declare-fun lt!2266568 () Unit!156124)

(assert (=> b!5655233 (= lt!2266568 e!3483178)))

(declare-fun c!994161 () Bool)

(declare-datatypes ((List!63245 0))(
  ( (Nil!63121) (Cons!63121 (h!69569 Context!10064) (t!376547 List!63245)) )
))
(declare-fun zl!343 () List!63245)

(assert (=> b!5655233 (= c!994161 (nullable!5680 (h!69568 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun z!1189 () (Set Context!10064))

(declare-fun lambda!304348 () Int)

(declare-fun flatMap!1261 ((Set Context!10064) Int) (Set Context!10064))

(declare-fun derivationStepZipperUp!916 (Context!10064 C!31566) (Set Context!10064))

(assert (=> b!5655233 (= (flatMap!1261 z!1189 lambda!304348) (derivationStepZipperUp!916 (h!69569 zl!343) (h!69567 s!2326)))))

(declare-fun lt!2266566 () Unit!156124)

(declare-fun lemmaFlatMapOnSingletonSet!793 ((Set Context!10064) Context!10064 Int) Unit!156124)

(assert (=> b!5655233 (= lt!2266566 (lemmaFlatMapOnSingletonSet!793 z!1189 (h!69569 zl!343) lambda!304348))))

(declare-fun lt!2266567 () (Set Context!10064))

(declare-fun lt!2266570 () Context!10064)

(assert (=> b!5655233 (= lt!2266567 (derivationStepZipperUp!916 lt!2266570 (h!69567 s!2326)))))

(declare-fun lt!2266557 () (Set Context!10064))

(declare-fun derivationStepZipperDown!990 (Regex!15648 Context!10064 C!31566) (Set Context!10064))

(assert (=> b!5655233 (= lt!2266557 (derivationStepZipperDown!990 (h!69568 (exprs!5532 (h!69569 zl!343))) lt!2266570 (h!69567 s!2326)))))

(assert (=> b!5655233 (= lt!2266570 (Context!10065 (t!376546 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun lt!2266565 () (Set Context!10064))

(assert (=> b!5655233 (= lt!2266565 (derivationStepZipperUp!916 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343))))) (h!69567 s!2326)))))

(declare-fun b!5655234 () Bool)

(declare-fun e!3483181 () Bool)

(declare-fun tp!1566662 () Bool)

(declare-fun tp!1566670 () Bool)

(assert (=> b!5655234 (= e!3483181 (and tp!1566662 tp!1566670))))

(declare-fun b!5655235 () Bool)

(declare-fun tp!1566669 () Bool)

(declare-fun tp!1566663 () Bool)

(assert (=> b!5655235 (= e!3483181 (and tp!1566669 tp!1566663))))

(declare-fun b!5655236 () Bool)

(declare-fun res!2392255 () Bool)

(declare-fun e!3483187 () Bool)

(assert (=> b!5655236 (=> res!2392255 e!3483187)))

(assert (=> b!5655236 (= res!2392255 (not (is-Cons!63120 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655237 () Bool)

(declare-fun res!2392245 () Bool)

(assert (=> b!5655237 (=> res!2392245 e!3483177)))

(assert (=> b!5655237 (= res!2392245 (not (is-Concat!24493 (regOne!31808 r!7292))))))

(declare-fun e!3483191 () Bool)

(declare-fun e!3483185 () Bool)

(declare-fun tp!1566666 () Bool)

(declare-fun b!5655238 () Bool)

(declare-fun inv!82368 (Context!10064) Bool)

(assert (=> b!5655238 (= e!3483185 (and (inv!82368 (h!69569 zl!343)) e!3483191 tp!1566666))))

(declare-fun b!5655239 () Bool)

(assert (=> b!5655239 (= e!3483179 (= (exprs!5532 (h!69569 zl!343)) (Cons!63120 (Concat!24493 (regOne!31808 (regOne!31808 r!7292)) (regTwo!31808 (regOne!31808 r!7292))) (t!376546 (exprs!5532 (h!69569 zl!343))))))))

(assert (=> b!5655240 (= e!3483187 e!3483183)))

(declare-fun res!2392252 () Bool)

(assert (=> b!5655240 (=> res!2392252 e!3483183)))

(declare-fun lt!2266562 () Bool)

(declare-fun lt!2266575 () Bool)

(assert (=> b!5655240 (= res!2392252 (or (not (= lt!2266562 lt!2266575)) (is-Nil!63119 s!2326)))))

(declare-fun Exists!2748 (Int) Bool)

(assert (=> b!5655240 (= (Exists!2748 lambda!304346) (Exists!2748 lambda!304347))))

(declare-fun lt!2266561 () Unit!156124)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1377 (Regex!15648 Regex!15648 List!63243) Unit!156124)

(assert (=> b!5655240 (= lt!2266561 (lemmaExistCutMatchRandMatchRSpecEquivalent!1377 (regOne!31808 r!7292) (regTwo!31808 r!7292) s!2326))))

(assert (=> b!5655240 (= lt!2266575 (Exists!2748 lambda!304346))))

(declare-datatypes ((tuple2!65490 0))(
  ( (tuple2!65491 (_1!36048 List!63243) (_2!36048 List!63243)) )
))
(declare-datatypes ((Option!15657 0))(
  ( (None!15656) (Some!15656 (v!51703 tuple2!65490)) )
))
(declare-fun isDefined!12360 (Option!15657) Bool)

(declare-fun findConcatSeparation!2071 (Regex!15648 Regex!15648 List!63243 List!63243 List!63243) Option!15657)

(assert (=> b!5655240 (= lt!2266575 (isDefined!12360 (findConcatSeparation!2071 (regOne!31808 r!7292) (regTwo!31808 r!7292) Nil!63119 s!2326 s!2326)))))

(declare-fun lt!2266558 () Unit!156124)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1835 (Regex!15648 Regex!15648 List!63243) Unit!156124)

(assert (=> b!5655240 (= lt!2266558 (lemmaFindConcatSeparationEquivalentToExists!1835 (regOne!31808 r!7292) (regTwo!31808 r!7292) s!2326))))

(declare-fun b!5655241 () Bool)

(declare-fun res!2392247 () Bool)

(declare-fun e!3483189 () Bool)

(assert (=> b!5655241 (=> (not res!2392247) (not e!3483189))))

(declare-fun toList!9432 ((Set Context!10064)) List!63245)

(assert (=> b!5655241 (= res!2392247 (= (toList!9432 z!1189) zl!343))))

(declare-fun res!2392257 () Bool)

(assert (=> start!584784 (=> (not res!2392257) (not e!3483189))))

(declare-fun validRegex!7384 (Regex!15648) Bool)

(assert (=> start!584784 (= res!2392257 (validRegex!7384 r!7292))))

(assert (=> start!584784 e!3483189))

(assert (=> start!584784 e!3483181))

(declare-fun condSetEmpty!37807 () Bool)

(assert (=> start!584784 (= condSetEmpty!37807 (= z!1189 (as set.empty (Set Context!10064))))))

(declare-fun setRes!37807 () Bool)

(assert (=> start!584784 setRes!37807))

(assert (=> start!584784 e!3483185))

(declare-fun e!3483182 () Bool)

(assert (=> start!584784 e!3483182))

(declare-fun b!5655242 () Bool)

(declare-fun e!3483186 () Bool)

(assert (=> b!5655242 (= e!3483177 e!3483186)))

(declare-fun res!2392263 () Bool)

(assert (=> b!5655242 (=> res!2392263 e!3483186)))

(declare-fun lt!2266559 () (Set Context!10064))

(assert (=> b!5655242 (= res!2392263 (not (= lt!2266557 lt!2266559)))))

(declare-fun lt!2266576 () List!63244)

(assert (=> b!5655242 (= lt!2266559 (derivationStepZipperDown!990 (regOne!31808 (regOne!31808 r!7292)) (Context!10065 lt!2266576) (h!69567 s!2326)))))

(assert (=> b!5655242 (= lt!2266576 (Cons!63120 (regTwo!31808 (regOne!31808 r!7292)) (t!376546 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655243 () Bool)

(declare-fun tp_is_empty!40549 () Bool)

(declare-fun tp!1566671 () Bool)

(assert (=> b!5655243 (= e!3483182 (and tp_is_empty!40549 tp!1566671))))

(declare-fun b!5655244 () Bool)

(declare-fun tp!1566664 () Bool)

(assert (=> b!5655244 (= e!3483191 tp!1566664)))

(declare-fun b!5655245 () Bool)

(declare-fun res!2392249 () Bool)

(assert (=> b!5655245 (=> res!2392249 e!3483187)))

(assert (=> b!5655245 (= res!2392249 (or (is-EmptyExpr!15648 r!7292) (is-EmptyLang!15648 r!7292) (is-ElementMatch!15648 r!7292) (is-Union!15648 r!7292) (not (is-Concat!24493 r!7292))))))

(declare-fun b!5655246 () Bool)

(declare-fun res!2392253 () Bool)

(assert (=> b!5655246 (=> res!2392253 e!3483187)))

(declare-fun isEmpty!34963 (List!63245) Bool)

(assert (=> b!5655246 (= res!2392253 (not (isEmpty!34963 (t!376547 zl!343))))))

(declare-fun b!5655247 () Bool)

(declare-fun e!3483190 () Bool)

(assert (=> b!5655247 (= e!3483190 (matchZipper!1786 lt!2266567 (t!376545 s!2326)))))

(declare-fun b!5655248 () Bool)

(declare-fun e!3483184 () Bool)

(declare-fun tp!1566668 () Bool)

(assert (=> b!5655248 (= e!3483184 tp!1566668)))

(declare-fun b!5655249 () Bool)

(declare-fun res!2392264 () Bool)

(assert (=> b!5655249 (=> (not res!2392264) (not e!3483189))))

(declare-fun unfocusZipper!1390 (List!63245) Regex!15648)

(assert (=> b!5655249 (= res!2392264 (= r!7292 (unfocusZipper!1390 zl!343)))))

(declare-fun setIsEmpty!37807 () Bool)

(assert (=> setIsEmpty!37807 setRes!37807))

(declare-fun b!5655250 () Bool)

(declare-fun tp!1566667 () Bool)

(assert (=> b!5655250 (= e!3483181 tp!1566667)))

(declare-fun b!5655251 () Bool)

(declare-fun res!2392254 () Bool)

(assert (=> b!5655251 (=> res!2392254 e!3483183)))

(declare-fun isEmpty!34964 (List!63244) Bool)

(assert (=> b!5655251 (= res!2392254 (isEmpty!34964 (t!376546 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655252 () Bool)

(declare-fun e!3483188 () Bool)

(assert (=> b!5655252 (= e!3483186 e!3483188)))

(declare-fun res!2392251 () Bool)

(assert (=> b!5655252 (=> res!2392251 e!3483188)))

(assert (=> b!5655252 (= res!2392251 (not (= lt!2266573 (matchZipper!1786 lt!2266559 (t!376545 s!2326)))))))

(assert (=> b!5655252 (= lt!2266573 (matchZipper!1786 lt!2266557 (t!376545 s!2326)))))

(declare-fun b!5655253 () Bool)

(assert (=> b!5655253 (= e!3483188 e!3483179)))

(declare-fun res!2392258 () Bool)

(assert (=> b!5655253 (=> res!2392258 e!3483179)))

(assert (=> b!5655253 (= res!2392258 (not (= lt!2266564 lt!2266559)))))

(declare-fun lt!2266572 () Context!10064)

(declare-fun lt!2266574 () (Set Context!10064))

(assert (=> b!5655253 (= (flatMap!1261 lt!2266574 lambda!304348) (derivationStepZipperUp!916 lt!2266572 (h!69567 s!2326)))))

(declare-fun lt!2266563 () Unit!156124)

(assert (=> b!5655253 (= lt!2266563 (lemmaFlatMapOnSingletonSet!793 lt!2266574 lt!2266572 lambda!304348))))

(declare-fun lt!2266571 () (Set Context!10064))

(assert (=> b!5655253 (= lt!2266571 (derivationStepZipperUp!916 lt!2266572 (h!69567 s!2326)))))

(declare-fun derivationStepZipper!1733 ((Set Context!10064) C!31566) (Set Context!10064))

(assert (=> b!5655253 (= lt!2266564 (derivationStepZipper!1733 lt!2266574 (h!69567 s!2326)))))

(assert (=> b!5655253 (= lt!2266574 (set.insert lt!2266572 (as set.empty (Set Context!10064))))))

(assert (=> b!5655253 (= lt!2266572 (Context!10065 (Cons!63120 (regOne!31808 (regOne!31808 r!7292)) lt!2266576)))))

(declare-fun b!5655254 () Bool)

(assert (=> b!5655254 (= e!3483181 tp_is_empty!40549)))

(declare-fun b!5655255 () Bool)

(declare-fun res!2392246 () Bool)

(assert (=> b!5655255 (=> res!2392246 e!3483187)))

(declare-fun generalisedConcat!1263 (List!63244) Regex!15648)

(assert (=> b!5655255 (= res!2392246 (not (= r!7292 (generalisedConcat!1263 (exprs!5532 (h!69569 zl!343))))))))

(declare-fun setNonEmpty!37807 () Bool)

(declare-fun tp!1566665 () Bool)

(declare-fun setElem!37807 () Context!10064)

(assert (=> setNonEmpty!37807 (= setRes!37807 (and tp!1566665 (inv!82368 setElem!37807) e!3483184))))

(declare-fun setRest!37807 () (Set Context!10064))

(assert (=> setNonEmpty!37807 (= z!1189 (set.union (set.insert setElem!37807 (as set.empty (Set Context!10064))) setRest!37807))))

(declare-fun b!5655256 () Bool)

(declare-fun res!2392248 () Bool)

(assert (=> b!5655256 (=> res!2392248 e!3483177)))

(assert (=> b!5655256 (= res!2392248 e!3483180)))

(declare-fun res!2392259 () Bool)

(assert (=> b!5655256 (=> (not res!2392259) (not e!3483180))))

(assert (=> b!5655256 (= res!2392259 (is-Concat!24493 (regOne!31808 r!7292)))))

(declare-fun b!5655257 () Bool)

(assert (=> b!5655257 (= e!3483189 (not e!3483187))))

(declare-fun res!2392256 () Bool)

(assert (=> b!5655257 (=> res!2392256 e!3483187)))

(assert (=> b!5655257 (= res!2392256 (not (is-Cons!63121 zl!343)))))

(declare-fun matchRSpec!2751 (Regex!15648 List!63243) Bool)

(assert (=> b!5655257 (= lt!2266562 (matchRSpec!2751 r!7292 s!2326))))

(declare-fun matchR!7833 (Regex!15648 List!63243) Bool)

(assert (=> b!5655257 (= lt!2266562 (matchR!7833 r!7292 s!2326))))

(declare-fun lt!2266569 () Unit!156124)

(declare-fun mainMatchTheorem!2751 (Regex!15648 List!63243) Unit!156124)

(assert (=> b!5655257 (= lt!2266569 (mainMatchTheorem!2751 r!7292 s!2326))))

(declare-fun b!5655258 () Bool)

(declare-fun res!2392262 () Bool)

(assert (=> b!5655258 (=> res!2392262 e!3483187)))

(declare-fun generalisedUnion!1511 (List!63244) Regex!15648)

(declare-fun unfocusZipperList!1076 (List!63245) List!63244)

(assert (=> b!5655258 (= res!2392262 (not (= r!7292 (generalisedUnion!1511 (unfocusZipperList!1076 zl!343)))))))

(declare-fun b!5655259 () Bool)

(declare-fun Unit!156127 () Unit!156124)

(assert (=> b!5655259 (= e!3483178 Unit!156127)))

(declare-fun lt!2266560 () Unit!156124)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!673 ((Set Context!10064) (Set Context!10064) List!63243) Unit!156124)

(assert (=> b!5655259 (= lt!2266560 (lemmaZipperConcatMatchesSameAsBothZippers!673 lt!2266557 lt!2266567 (t!376545 s!2326)))))

(declare-fun res!2392260 () Bool)

(assert (=> b!5655259 (= res!2392260 (matchZipper!1786 lt!2266557 (t!376545 s!2326)))))

(assert (=> b!5655259 (=> res!2392260 e!3483190)))

(assert (=> b!5655259 (= (matchZipper!1786 (set.union lt!2266557 lt!2266567) (t!376545 s!2326)) e!3483190)))

(assert (= (and start!584784 res!2392257) b!5655241))

(assert (= (and b!5655241 res!2392247) b!5655249))

(assert (= (and b!5655249 res!2392264) b!5655257))

(assert (= (and b!5655257 (not res!2392256)) b!5655246))

(assert (= (and b!5655246 (not res!2392253)) b!5655255))

(assert (= (and b!5655255 (not res!2392246)) b!5655236))

(assert (= (and b!5655236 (not res!2392255)) b!5655258))

(assert (= (and b!5655258 (not res!2392262)) b!5655245))

(assert (= (and b!5655245 (not res!2392249)) b!5655240))

(assert (= (and b!5655240 (not res!2392252)) b!5655251))

(assert (= (and b!5655251 (not res!2392254)) b!5655233))

(assert (= (and b!5655233 c!994161) b!5655259))

(assert (= (and b!5655233 (not c!994161)) b!5655231))

(assert (= (and b!5655259 (not res!2392260)) b!5655247))

(assert (= (and b!5655233 (not res!2392250)) b!5655256))

(assert (= (and b!5655256 res!2392259) b!5655230))

(assert (= (and b!5655256 (not res!2392248)) b!5655237))

(assert (= (and b!5655237 (not res!2392245)) b!5655242))

(assert (= (and b!5655242 (not res!2392263)) b!5655252))

(assert (= (and b!5655252 (not res!2392251)) b!5655253))

(assert (= (and b!5655253 (not res!2392258)) b!5655232))

(assert (= (and b!5655232 (not res!2392261)) b!5655239))

(assert (= (and start!584784 (is-ElementMatch!15648 r!7292)) b!5655254))

(assert (= (and start!584784 (is-Concat!24493 r!7292)) b!5655234))

(assert (= (and start!584784 (is-Star!15648 r!7292)) b!5655250))

(assert (= (and start!584784 (is-Union!15648 r!7292)) b!5655235))

(assert (= (and start!584784 condSetEmpty!37807) setIsEmpty!37807))

(assert (= (and start!584784 (not condSetEmpty!37807)) setNonEmpty!37807))

(assert (= setNonEmpty!37807 b!5655248))

(assert (= b!5655238 b!5655244))

(assert (= (and start!584784 (is-Cons!63121 zl!343)) b!5655238))

(assert (= (and start!584784 (is-Cons!63119 s!2326)) b!5655243))

(declare-fun m!6621540 () Bool)

(assert (=> b!5655230 m!6621540))

(declare-fun m!6621542 () Bool)

(assert (=> b!5655238 m!6621542))

(declare-fun m!6621544 () Bool)

(assert (=> b!5655252 m!6621544))

(declare-fun m!6621546 () Bool)

(assert (=> b!5655252 m!6621546))

(declare-fun m!6621548 () Bool)

(assert (=> b!5655242 m!6621548))

(declare-fun m!6621550 () Bool)

(assert (=> b!5655233 m!6621550))

(declare-fun m!6621552 () Bool)

(assert (=> b!5655233 m!6621552))

(declare-fun m!6621554 () Bool)

(assert (=> b!5655233 m!6621554))

(declare-fun m!6621556 () Bool)

(assert (=> b!5655233 m!6621556))

(declare-fun m!6621558 () Bool)

(assert (=> b!5655233 m!6621558))

(declare-fun m!6621560 () Bool)

(assert (=> b!5655233 m!6621560))

(declare-fun m!6621562 () Bool)

(assert (=> b!5655233 m!6621562))

(declare-fun m!6621564 () Bool)

(assert (=> b!5655240 m!6621564))

(declare-fun m!6621566 () Bool)

(assert (=> b!5655240 m!6621566))

(declare-fun m!6621568 () Bool)

(assert (=> b!5655240 m!6621568))

(assert (=> b!5655240 m!6621564))

(declare-fun m!6621570 () Bool)

(assert (=> b!5655240 m!6621570))

(declare-fun m!6621572 () Bool)

(assert (=> b!5655240 m!6621572))

(assert (=> b!5655240 m!6621566))

(declare-fun m!6621574 () Bool)

(assert (=> b!5655240 m!6621574))

(declare-fun m!6621576 () Bool)

(assert (=> b!5655259 m!6621576))

(assert (=> b!5655259 m!6621546))

(declare-fun m!6621578 () Bool)

(assert (=> b!5655259 m!6621578))

(declare-fun m!6621580 () Bool)

(assert (=> b!5655241 m!6621580))

(declare-fun m!6621582 () Bool)

(assert (=> b!5655253 m!6621582))

(declare-fun m!6621584 () Bool)

(assert (=> b!5655253 m!6621584))

(declare-fun m!6621586 () Bool)

(assert (=> b!5655253 m!6621586))

(declare-fun m!6621588 () Bool)

(assert (=> b!5655253 m!6621588))

(declare-fun m!6621590 () Bool)

(assert (=> b!5655253 m!6621590))

(declare-fun m!6621592 () Bool)

(assert (=> b!5655247 m!6621592))

(declare-fun m!6621594 () Bool)

(assert (=> setNonEmpty!37807 m!6621594))

(declare-fun m!6621596 () Bool)

(assert (=> b!5655257 m!6621596))

(declare-fun m!6621598 () Bool)

(assert (=> b!5655257 m!6621598))

(declare-fun m!6621600 () Bool)

(assert (=> b!5655257 m!6621600))

(declare-fun m!6621602 () Bool)

(assert (=> b!5655255 m!6621602))

(declare-fun m!6621604 () Bool)

(assert (=> b!5655249 m!6621604))

(declare-fun m!6621606 () Bool)

(assert (=> b!5655246 m!6621606))

(declare-fun m!6621608 () Bool)

(assert (=> start!584784 m!6621608))

(declare-fun m!6621610 () Bool)

(assert (=> b!5655232 m!6621610))

(declare-fun m!6621612 () Bool)

(assert (=> b!5655258 m!6621612))

(assert (=> b!5655258 m!6621612))

(declare-fun m!6621614 () Bool)

(assert (=> b!5655258 m!6621614))

(declare-fun m!6621616 () Bool)

(assert (=> b!5655251 m!6621616))

(push 1)

(assert (not b!5655242))

(assert (not b!5655257))

(assert (not b!5655249))

(assert (not b!5655259))

(assert (not b!5655251))

(assert (not b!5655253))

(assert (not b!5655244))

(assert (not setNonEmpty!37807))

(assert (not b!5655232))

(assert tp_is_empty!40549)

(assert (not b!5655230))

(assert (not b!5655233))

(assert (not b!5655247))

(assert (not b!5655240))

(assert (not start!584784))

(assert (not b!5655248))

(assert (not b!5655241))

(assert (not b!5655238))

(assert (not b!5655246))

(assert (not b!5655243))

(assert (not b!5655250))

(assert (not b!5655255))

(assert (not b!5655258))

(assert (not b!5655252))

(assert (not b!5655234))

(assert (not b!5655235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5655394 () Bool)

(declare-fun e!3483255 () Bool)

(declare-fun e!3483256 () Bool)

(assert (=> b!5655394 (= e!3483255 e!3483256)))

(declare-fun c!994180 () Bool)

(assert (=> b!5655394 (= c!994180 (isEmpty!34964 (unfocusZipperList!1076 zl!343)))))

(declare-fun b!5655395 () Bool)

(declare-fun e!3483260 () Bool)

(assert (=> b!5655395 (= e!3483260 (isEmpty!34964 (t!376546 (unfocusZipperList!1076 zl!343))))))

(declare-fun b!5655396 () Bool)

(declare-fun e!3483259 () Regex!15648)

(declare-fun e!3483258 () Regex!15648)

(assert (=> b!5655396 (= e!3483259 e!3483258)))

(declare-fun c!994181 () Bool)

(assert (=> b!5655396 (= c!994181 (is-Cons!63120 (unfocusZipperList!1076 zl!343)))))

(declare-fun b!5655397 () Bool)

(declare-fun e!3483257 () Bool)

(declare-fun lt!2266639 () Regex!15648)

(declare-fun isUnion!619 (Regex!15648) Bool)

(assert (=> b!5655397 (= e!3483257 (isUnion!619 lt!2266639))))

(declare-fun b!5655398 () Bool)

(assert (=> b!5655398 (= e!3483256 e!3483257)))

(declare-fun c!994182 () Bool)

(declare-fun tail!11115 (List!63244) List!63244)

(assert (=> b!5655398 (= c!994182 (isEmpty!34964 (tail!11115 (unfocusZipperList!1076 zl!343))))))

(declare-fun b!5655399 () Bool)

(declare-fun head!12020 (List!63244) Regex!15648)

(assert (=> b!5655399 (= e!3483257 (= lt!2266639 (head!12020 (unfocusZipperList!1076 zl!343))))))

(declare-fun d!1785902 () Bool)

(assert (=> d!1785902 e!3483255))

(declare-fun res!2392341 () Bool)

(assert (=> d!1785902 (=> (not res!2392341) (not e!3483255))))

(assert (=> d!1785902 (= res!2392341 (validRegex!7384 lt!2266639))))

(assert (=> d!1785902 (= lt!2266639 e!3483259)))

(declare-fun c!994183 () Bool)

(assert (=> d!1785902 (= c!994183 e!3483260)))

(declare-fun res!2392342 () Bool)

(assert (=> d!1785902 (=> (not res!2392342) (not e!3483260))))

(assert (=> d!1785902 (= res!2392342 (is-Cons!63120 (unfocusZipperList!1076 zl!343)))))

(declare-fun lambda!304364 () Int)

(declare-fun forall!14797 (List!63244 Int) Bool)

(assert (=> d!1785902 (forall!14797 (unfocusZipperList!1076 zl!343) lambda!304364)))

(assert (=> d!1785902 (= (generalisedUnion!1511 (unfocusZipperList!1076 zl!343)) lt!2266639)))

(declare-fun b!5655400 () Bool)

(declare-fun isEmptyLang!1189 (Regex!15648) Bool)

(assert (=> b!5655400 (= e!3483256 (isEmptyLang!1189 lt!2266639))))

(declare-fun b!5655401 () Bool)

(assert (=> b!5655401 (= e!3483258 (Union!15648 (h!69568 (unfocusZipperList!1076 zl!343)) (generalisedUnion!1511 (t!376546 (unfocusZipperList!1076 zl!343)))))))

(declare-fun b!5655402 () Bool)

(assert (=> b!5655402 (= e!3483259 (h!69568 (unfocusZipperList!1076 zl!343)))))

(declare-fun b!5655403 () Bool)

(assert (=> b!5655403 (= e!3483258 EmptyLang!15648)))

(assert (= (and d!1785902 res!2392342) b!5655395))

(assert (= (and d!1785902 c!994183) b!5655402))

(assert (= (and d!1785902 (not c!994183)) b!5655396))

(assert (= (and b!5655396 c!994181) b!5655401))

(assert (= (and b!5655396 (not c!994181)) b!5655403))

(assert (= (and d!1785902 res!2392341) b!5655394))

(assert (= (and b!5655394 c!994180) b!5655400))

(assert (= (and b!5655394 (not c!994180)) b!5655398))

(assert (= (and b!5655398 c!994182) b!5655399))

(assert (= (and b!5655398 (not c!994182)) b!5655397))

(declare-fun m!6621696 () Bool)

(assert (=> b!5655400 m!6621696))

(declare-fun m!6621698 () Bool)

(assert (=> b!5655395 m!6621698))

(declare-fun m!6621700 () Bool)

(assert (=> b!5655397 m!6621700))

(assert (=> b!5655394 m!6621612))

(declare-fun m!6621702 () Bool)

(assert (=> b!5655394 m!6621702))

(assert (=> b!5655398 m!6621612))

(declare-fun m!6621704 () Bool)

(assert (=> b!5655398 m!6621704))

(assert (=> b!5655398 m!6621704))

(declare-fun m!6621706 () Bool)

(assert (=> b!5655398 m!6621706))

(assert (=> b!5655399 m!6621612))

(declare-fun m!6621708 () Bool)

(assert (=> b!5655399 m!6621708))

(declare-fun m!6621710 () Bool)

(assert (=> d!1785902 m!6621710))

(assert (=> d!1785902 m!6621612))

(declare-fun m!6621712 () Bool)

(assert (=> d!1785902 m!6621712))

(declare-fun m!6621714 () Bool)

(assert (=> b!5655401 m!6621714))

(assert (=> b!5655258 d!1785902))

(declare-fun bs!1315144 () Bool)

(declare-fun d!1785904 () Bool)

(assert (= bs!1315144 (and d!1785904 d!1785902)))

(declare-fun lambda!304367 () Int)

(assert (=> bs!1315144 (= lambda!304367 lambda!304364)))

(declare-fun lt!2266642 () List!63244)

(assert (=> d!1785904 (forall!14797 lt!2266642 lambda!304367)))

(declare-fun e!3483263 () List!63244)

(assert (=> d!1785904 (= lt!2266642 e!3483263)))

(declare-fun c!994186 () Bool)

(assert (=> d!1785904 (= c!994186 (is-Cons!63121 zl!343))))

(assert (=> d!1785904 (= (unfocusZipperList!1076 zl!343) lt!2266642)))

(declare-fun b!5655408 () Bool)

(assert (=> b!5655408 (= e!3483263 (Cons!63120 (generalisedConcat!1263 (exprs!5532 (h!69569 zl!343))) (unfocusZipperList!1076 (t!376547 zl!343))))))

(declare-fun b!5655409 () Bool)

(assert (=> b!5655409 (= e!3483263 Nil!63120)))

(assert (= (and d!1785904 c!994186) b!5655408))

(assert (= (and d!1785904 (not c!994186)) b!5655409))

(declare-fun m!6621716 () Bool)

(assert (=> d!1785904 m!6621716))

(assert (=> b!5655408 m!6621602))

(declare-fun m!6621718 () Bool)

(assert (=> b!5655408 m!6621718))

(assert (=> b!5655258 d!1785904))

(declare-fun bs!1315145 () Bool)

(declare-fun d!1785906 () Bool)

(assert (= bs!1315145 (and d!1785906 d!1785902)))

(declare-fun lambda!304370 () Int)

(assert (=> bs!1315145 (= lambda!304370 lambda!304364)))

(declare-fun bs!1315146 () Bool)

(assert (= bs!1315146 (and d!1785906 d!1785904)))

(assert (=> bs!1315146 (= lambda!304370 lambda!304367)))

(assert (=> d!1785906 (= (inv!82368 (h!69569 zl!343)) (forall!14797 (exprs!5532 (h!69569 zl!343)) lambda!304370))))

(declare-fun bs!1315147 () Bool)

(assert (= bs!1315147 d!1785906))

(declare-fun m!6621720 () Bool)

(assert (=> bs!1315147 m!6621720))

(assert (=> b!5655238 d!1785906))

(declare-fun d!1785908 () Bool)

(declare-fun lt!2266645 () Regex!15648)

(assert (=> d!1785908 (validRegex!7384 lt!2266645)))

(assert (=> d!1785908 (= lt!2266645 (generalisedUnion!1511 (unfocusZipperList!1076 zl!343)))))

(assert (=> d!1785908 (= (unfocusZipper!1390 zl!343) lt!2266645)))

(declare-fun bs!1315148 () Bool)

(assert (= bs!1315148 d!1785908))

(declare-fun m!6621722 () Bool)

(assert (=> bs!1315148 m!6621722))

(assert (=> bs!1315148 m!6621612))

(assert (=> bs!1315148 m!6621612))

(assert (=> bs!1315148 m!6621614))

(assert (=> b!5655249 d!1785908))

(declare-fun b!5655428 () Bool)

(declare-fun e!3483276 () Bool)

(declare-fun lt!2266653 () Option!15657)

(assert (=> b!5655428 (= e!3483276 (not (isDefined!12360 lt!2266653)))))

(declare-fun b!5655429 () Bool)

(declare-fun e!3483274 () Option!15657)

(assert (=> b!5655429 (= e!3483274 None!15656)))

(declare-fun d!1785910 () Bool)

(assert (=> d!1785910 e!3483276))

(declare-fun res!2392353 () Bool)

(assert (=> d!1785910 (=> res!2392353 e!3483276)))

(declare-fun e!3483278 () Bool)

(assert (=> d!1785910 (= res!2392353 e!3483278)))

(declare-fun res!2392356 () Bool)

(assert (=> d!1785910 (=> (not res!2392356) (not e!3483278))))

(assert (=> d!1785910 (= res!2392356 (isDefined!12360 lt!2266653))))

(declare-fun e!3483275 () Option!15657)

(assert (=> d!1785910 (= lt!2266653 e!3483275)))

(declare-fun c!994192 () Bool)

(declare-fun e!3483277 () Bool)

(assert (=> d!1785910 (= c!994192 e!3483277)))

(declare-fun res!2392357 () Bool)

(assert (=> d!1785910 (=> (not res!2392357) (not e!3483277))))

(assert (=> d!1785910 (= res!2392357 (matchR!7833 (regOne!31808 r!7292) Nil!63119))))

(assert (=> d!1785910 (validRegex!7384 (regOne!31808 r!7292))))

(assert (=> d!1785910 (= (findConcatSeparation!2071 (regOne!31808 r!7292) (regTwo!31808 r!7292) Nil!63119 s!2326 s!2326) lt!2266653)))

(declare-fun b!5655430 () Bool)

(assert (=> b!5655430 (= e!3483275 (Some!15656 (tuple2!65491 Nil!63119 s!2326)))))

(declare-fun b!5655431 () Bool)

(declare-fun res!2392355 () Bool)

(assert (=> b!5655431 (=> (not res!2392355) (not e!3483278))))

(declare-fun get!21746 (Option!15657) tuple2!65490)

(assert (=> b!5655431 (= res!2392355 (matchR!7833 (regOne!31808 r!7292) (_1!36048 (get!21746 lt!2266653))))))

(declare-fun b!5655432 () Bool)

(assert (=> b!5655432 (= e!3483277 (matchR!7833 (regTwo!31808 r!7292) s!2326))))

(declare-fun b!5655433 () Bool)

(declare-fun res!2392354 () Bool)

(assert (=> b!5655433 (=> (not res!2392354) (not e!3483278))))

(assert (=> b!5655433 (= res!2392354 (matchR!7833 (regTwo!31808 r!7292) (_2!36048 (get!21746 lt!2266653))))))

(declare-fun b!5655434 () Bool)

(declare-fun lt!2266654 () Unit!156124)

(declare-fun lt!2266652 () Unit!156124)

(assert (=> b!5655434 (= lt!2266654 lt!2266652)))

(declare-fun ++!13854 (List!63243 List!63243) List!63243)

(assert (=> b!5655434 (= (++!13854 (++!13854 Nil!63119 (Cons!63119 (h!69567 s!2326) Nil!63119)) (t!376545 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2023 (List!63243 C!31566 List!63243 List!63243) Unit!156124)

(assert (=> b!5655434 (= lt!2266652 (lemmaMoveElementToOtherListKeepsConcatEq!2023 Nil!63119 (h!69567 s!2326) (t!376545 s!2326) s!2326))))

(assert (=> b!5655434 (= e!3483274 (findConcatSeparation!2071 (regOne!31808 r!7292) (regTwo!31808 r!7292) (++!13854 Nil!63119 (Cons!63119 (h!69567 s!2326) Nil!63119)) (t!376545 s!2326) s!2326))))

(declare-fun b!5655435 () Bool)

(assert (=> b!5655435 (= e!3483278 (= (++!13854 (_1!36048 (get!21746 lt!2266653)) (_2!36048 (get!21746 lt!2266653))) s!2326))))

(declare-fun b!5655436 () Bool)

(assert (=> b!5655436 (= e!3483275 e!3483274)))

(declare-fun c!994191 () Bool)

(assert (=> b!5655436 (= c!994191 (is-Nil!63119 s!2326))))

(assert (= (and d!1785910 res!2392357) b!5655432))

(assert (= (and d!1785910 c!994192) b!5655430))

(assert (= (and d!1785910 (not c!994192)) b!5655436))

(assert (= (and b!5655436 c!994191) b!5655429))

(assert (= (and b!5655436 (not c!994191)) b!5655434))

(assert (= (and d!1785910 res!2392356) b!5655431))

(assert (= (and b!5655431 res!2392355) b!5655433))

(assert (= (and b!5655433 res!2392354) b!5655435))

(assert (= (and d!1785910 (not res!2392353)) b!5655428))

(declare-fun m!6621724 () Bool)

(assert (=> b!5655428 m!6621724))

(declare-fun m!6621726 () Bool)

(assert (=> b!5655435 m!6621726))

(declare-fun m!6621728 () Bool)

(assert (=> b!5655435 m!6621728))

(assert (=> b!5655433 m!6621726))

(declare-fun m!6621730 () Bool)

(assert (=> b!5655433 m!6621730))

(assert (=> b!5655431 m!6621726))

(declare-fun m!6621732 () Bool)

(assert (=> b!5655431 m!6621732))

(declare-fun m!6621734 () Bool)

(assert (=> b!5655434 m!6621734))

(assert (=> b!5655434 m!6621734))

(declare-fun m!6621736 () Bool)

(assert (=> b!5655434 m!6621736))

(declare-fun m!6621738 () Bool)

(assert (=> b!5655434 m!6621738))

(assert (=> b!5655434 m!6621734))

(declare-fun m!6621740 () Bool)

(assert (=> b!5655434 m!6621740))

(declare-fun m!6621742 () Bool)

(assert (=> b!5655432 m!6621742))

(assert (=> d!1785910 m!6621724))

(declare-fun m!6621744 () Bool)

(assert (=> d!1785910 m!6621744))

(declare-fun m!6621746 () Bool)

(assert (=> d!1785910 m!6621746))

(assert (=> b!5655240 d!1785910))

(declare-fun d!1785912 () Bool)

(declare-fun choose!42820 (Int) Bool)

(assert (=> d!1785912 (= (Exists!2748 lambda!304346) (choose!42820 lambda!304346))))

(declare-fun bs!1315149 () Bool)

(assert (= bs!1315149 d!1785912))

(declare-fun m!6621748 () Bool)

(assert (=> bs!1315149 m!6621748))

(assert (=> b!5655240 d!1785912))

(declare-fun d!1785914 () Bool)

(assert (=> d!1785914 (= (Exists!2748 lambda!304347) (choose!42820 lambda!304347))))

(declare-fun bs!1315150 () Bool)

(assert (= bs!1315150 d!1785914))

(declare-fun m!6621750 () Bool)

(assert (=> bs!1315150 m!6621750))

(assert (=> b!5655240 d!1785914))

(declare-fun bs!1315151 () Bool)

(declare-fun d!1785916 () Bool)

(assert (= bs!1315151 (and d!1785916 b!5655240)))

(declare-fun lambda!304373 () Int)

(assert (=> bs!1315151 (= lambda!304373 lambda!304346)))

(assert (=> bs!1315151 (not (= lambda!304373 lambda!304347))))

(assert (=> d!1785916 true))

(assert (=> d!1785916 true))

(assert (=> d!1785916 true))

(assert (=> d!1785916 (= (isDefined!12360 (findConcatSeparation!2071 (regOne!31808 r!7292) (regTwo!31808 r!7292) Nil!63119 s!2326 s!2326)) (Exists!2748 lambda!304373))))

(declare-fun lt!2266657 () Unit!156124)

(declare-fun choose!42821 (Regex!15648 Regex!15648 List!63243) Unit!156124)

(assert (=> d!1785916 (= lt!2266657 (choose!42821 (regOne!31808 r!7292) (regTwo!31808 r!7292) s!2326))))

(assert (=> d!1785916 (validRegex!7384 (regOne!31808 r!7292))))

(assert (=> d!1785916 (= (lemmaFindConcatSeparationEquivalentToExists!1835 (regOne!31808 r!7292) (regTwo!31808 r!7292) s!2326) lt!2266657)))

(declare-fun bs!1315152 () Bool)

(assert (= bs!1315152 d!1785916))

(declare-fun m!6621752 () Bool)

(assert (=> bs!1315152 m!6621752))

(assert (=> bs!1315152 m!6621566))

(declare-fun m!6621754 () Bool)

(assert (=> bs!1315152 m!6621754))

(assert (=> bs!1315152 m!6621746))

(assert (=> bs!1315152 m!6621566))

(assert (=> bs!1315152 m!6621568))

(assert (=> b!5655240 d!1785916))

(declare-fun bs!1315153 () Bool)

(declare-fun d!1785918 () Bool)

(assert (= bs!1315153 (and d!1785918 b!5655240)))

(declare-fun lambda!304378 () Int)

(assert (=> bs!1315153 (= lambda!304378 lambda!304346)))

(assert (=> bs!1315153 (not (= lambda!304378 lambda!304347))))

(declare-fun bs!1315154 () Bool)

(assert (= bs!1315154 (and d!1785918 d!1785916)))

(assert (=> bs!1315154 (= lambda!304378 lambda!304373)))

(assert (=> d!1785918 true))

(assert (=> d!1785918 true))

(assert (=> d!1785918 true))

(declare-fun lambda!304379 () Int)

(assert (=> bs!1315153 (not (= lambda!304379 lambda!304346))))

(assert (=> bs!1315153 (= lambda!304379 lambda!304347)))

(assert (=> bs!1315154 (not (= lambda!304379 lambda!304373))))

(declare-fun bs!1315155 () Bool)

(assert (= bs!1315155 d!1785918))

(assert (=> bs!1315155 (not (= lambda!304379 lambda!304378))))

(assert (=> d!1785918 true))

(assert (=> d!1785918 true))

(assert (=> d!1785918 true))

(assert (=> d!1785918 (= (Exists!2748 lambda!304378) (Exists!2748 lambda!304379))))

(declare-fun lt!2266660 () Unit!156124)

(declare-fun choose!42822 (Regex!15648 Regex!15648 List!63243) Unit!156124)

(assert (=> d!1785918 (= lt!2266660 (choose!42822 (regOne!31808 r!7292) (regTwo!31808 r!7292) s!2326))))

(assert (=> d!1785918 (validRegex!7384 (regOne!31808 r!7292))))

(assert (=> d!1785918 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1377 (regOne!31808 r!7292) (regTwo!31808 r!7292) s!2326) lt!2266660)))

(declare-fun m!6621756 () Bool)

(assert (=> bs!1315155 m!6621756))

(declare-fun m!6621758 () Bool)

(assert (=> bs!1315155 m!6621758))

(declare-fun m!6621760 () Bool)

(assert (=> bs!1315155 m!6621760))

(assert (=> bs!1315155 m!6621746))

(assert (=> b!5655240 d!1785918))

(declare-fun d!1785920 () Bool)

(declare-fun isEmpty!34967 (Option!15657) Bool)

(assert (=> d!1785920 (= (isDefined!12360 (findConcatSeparation!2071 (regOne!31808 r!7292) (regTwo!31808 r!7292) Nil!63119 s!2326 s!2326)) (not (isEmpty!34967 (findConcatSeparation!2071 (regOne!31808 r!7292) (regTwo!31808 r!7292) Nil!63119 s!2326 s!2326))))))

(declare-fun bs!1315156 () Bool)

(assert (= bs!1315156 d!1785920))

(assert (=> bs!1315156 m!6621566))

(declare-fun m!6621762 () Bool)

(assert (=> bs!1315156 m!6621762))

(assert (=> b!5655240 d!1785920))

(declare-fun d!1785922 () Bool)

(declare-fun e!3483287 () Bool)

(assert (=> d!1785922 (= (matchZipper!1786 (set.union lt!2266557 lt!2266567) (t!376545 s!2326)) e!3483287)))

(declare-fun res!2392372 () Bool)

(assert (=> d!1785922 (=> res!2392372 e!3483287)))

(assert (=> d!1785922 (= res!2392372 (matchZipper!1786 lt!2266557 (t!376545 s!2326)))))

(declare-fun lt!2266663 () Unit!156124)

(declare-fun choose!42823 ((Set Context!10064) (Set Context!10064) List!63243) Unit!156124)

(assert (=> d!1785922 (= lt!2266663 (choose!42823 lt!2266557 lt!2266567 (t!376545 s!2326)))))

(assert (=> d!1785922 (= (lemmaZipperConcatMatchesSameAsBothZippers!673 lt!2266557 lt!2266567 (t!376545 s!2326)) lt!2266663)))

(declare-fun b!5655451 () Bool)

(assert (=> b!5655451 (= e!3483287 (matchZipper!1786 lt!2266567 (t!376545 s!2326)))))

(assert (= (and d!1785922 (not res!2392372)) b!5655451))

(assert (=> d!1785922 m!6621578))

(assert (=> d!1785922 m!6621546))

(declare-fun m!6621764 () Bool)

(assert (=> d!1785922 m!6621764))

(assert (=> b!5655451 m!6621592))

(assert (=> b!5655259 d!1785922))

(declare-fun d!1785924 () Bool)

(declare-fun c!994195 () Bool)

(declare-fun isEmpty!34968 (List!63243) Bool)

(assert (=> d!1785924 (= c!994195 (isEmpty!34968 (t!376545 s!2326)))))

(declare-fun e!3483290 () Bool)

(assert (=> d!1785924 (= (matchZipper!1786 lt!2266557 (t!376545 s!2326)) e!3483290)))

(declare-fun b!5655456 () Bool)

(declare-fun nullableZipper!1620 ((Set Context!10064)) Bool)

(assert (=> b!5655456 (= e!3483290 (nullableZipper!1620 lt!2266557))))

(declare-fun b!5655457 () Bool)

(declare-fun head!12021 (List!63243) C!31566)

(declare-fun tail!11116 (List!63243) List!63243)

(assert (=> b!5655457 (= e!3483290 (matchZipper!1786 (derivationStepZipper!1733 lt!2266557 (head!12021 (t!376545 s!2326))) (tail!11116 (t!376545 s!2326))))))

(assert (= (and d!1785924 c!994195) b!5655456))

(assert (= (and d!1785924 (not c!994195)) b!5655457))

(declare-fun m!6621766 () Bool)

(assert (=> d!1785924 m!6621766))

(declare-fun m!6621768 () Bool)

(assert (=> b!5655456 m!6621768))

(declare-fun m!6621770 () Bool)

(assert (=> b!5655457 m!6621770))

(assert (=> b!5655457 m!6621770))

(declare-fun m!6621772 () Bool)

(assert (=> b!5655457 m!6621772))

(declare-fun m!6621774 () Bool)

(assert (=> b!5655457 m!6621774))

(assert (=> b!5655457 m!6621772))

(assert (=> b!5655457 m!6621774))

(declare-fun m!6621776 () Bool)

(assert (=> b!5655457 m!6621776))

(assert (=> b!5655259 d!1785924))

(declare-fun d!1785926 () Bool)

(declare-fun c!994196 () Bool)

(assert (=> d!1785926 (= c!994196 (isEmpty!34968 (t!376545 s!2326)))))

(declare-fun e!3483291 () Bool)

(assert (=> d!1785926 (= (matchZipper!1786 (set.union lt!2266557 lt!2266567) (t!376545 s!2326)) e!3483291)))

(declare-fun b!5655458 () Bool)

(assert (=> b!5655458 (= e!3483291 (nullableZipper!1620 (set.union lt!2266557 lt!2266567)))))

(declare-fun b!5655459 () Bool)

(assert (=> b!5655459 (= e!3483291 (matchZipper!1786 (derivationStepZipper!1733 (set.union lt!2266557 lt!2266567) (head!12021 (t!376545 s!2326))) (tail!11116 (t!376545 s!2326))))))

(assert (= (and d!1785926 c!994196) b!5655458))

(assert (= (and d!1785926 (not c!994196)) b!5655459))

(assert (=> d!1785926 m!6621766))

(declare-fun m!6621778 () Bool)

(assert (=> b!5655458 m!6621778))

(assert (=> b!5655459 m!6621770))

(assert (=> b!5655459 m!6621770))

(declare-fun m!6621780 () Bool)

(assert (=> b!5655459 m!6621780))

(assert (=> b!5655459 m!6621774))

(assert (=> b!5655459 m!6621780))

(assert (=> b!5655459 m!6621774))

(declare-fun m!6621782 () Bool)

(assert (=> b!5655459 m!6621782))

(assert (=> b!5655259 d!1785926))

(declare-fun d!1785928 () Bool)

(declare-fun c!994197 () Bool)

(assert (=> d!1785928 (= c!994197 (isEmpty!34968 (t!376545 s!2326)))))

(declare-fun e!3483292 () Bool)

(assert (=> d!1785928 (= (matchZipper!1786 lt!2266567 (t!376545 s!2326)) e!3483292)))

(declare-fun b!5655460 () Bool)

(assert (=> b!5655460 (= e!3483292 (nullableZipper!1620 lt!2266567))))

(declare-fun b!5655461 () Bool)

(assert (=> b!5655461 (= e!3483292 (matchZipper!1786 (derivationStepZipper!1733 lt!2266567 (head!12021 (t!376545 s!2326))) (tail!11116 (t!376545 s!2326))))))

(assert (= (and d!1785928 c!994197) b!5655460))

(assert (= (and d!1785928 (not c!994197)) b!5655461))

(assert (=> d!1785928 m!6621766))

(declare-fun m!6621784 () Bool)

(assert (=> b!5655460 m!6621784))

(assert (=> b!5655461 m!6621770))

(assert (=> b!5655461 m!6621770))

(declare-fun m!6621786 () Bool)

(assert (=> b!5655461 m!6621786))

(assert (=> b!5655461 m!6621774))

(assert (=> b!5655461 m!6621786))

(assert (=> b!5655461 m!6621774))

(declare-fun m!6621788 () Bool)

(assert (=> b!5655461 m!6621788))

(assert (=> b!5655247 d!1785928))

(declare-fun d!1785930 () Bool)

(assert (=> d!1785930 (= (isEmpty!34963 (t!376547 zl!343)) (is-Nil!63121 (t!376547 zl!343)))))

(assert (=> b!5655246 d!1785930))

(declare-fun bs!1315157 () Bool)

(declare-fun d!1785932 () Bool)

(assert (= bs!1315157 (and d!1785932 d!1785902)))

(declare-fun lambda!304380 () Int)

(assert (=> bs!1315157 (= lambda!304380 lambda!304364)))

(declare-fun bs!1315158 () Bool)

(assert (= bs!1315158 (and d!1785932 d!1785904)))

(assert (=> bs!1315158 (= lambda!304380 lambda!304367)))

(declare-fun bs!1315159 () Bool)

(assert (= bs!1315159 (and d!1785932 d!1785906)))

(assert (=> bs!1315159 (= lambda!304380 lambda!304370)))

(assert (=> d!1785932 (= (inv!82368 setElem!37807) (forall!14797 (exprs!5532 setElem!37807) lambda!304380))))

(declare-fun bs!1315160 () Bool)

(assert (= bs!1315160 d!1785932))

(declare-fun m!6621790 () Bool)

(assert (=> bs!1315160 m!6621790))

(assert (=> setNonEmpty!37807 d!1785932))

(declare-fun bs!1315161 () Bool)

(declare-fun b!5655503 () Bool)

(assert (= bs!1315161 (and b!5655503 d!1785918)))

(declare-fun lambda!304385 () Int)

(assert (=> bs!1315161 (not (= lambda!304385 lambda!304379))))

(declare-fun bs!1315162 () Bool)

(assert (= bs!1315162 (and b!5655503 b!5655240)))

(assert (=> bs!1315162 (not (= lambda!304385 lambda!304347))))

(declare-fun bs!1315163 () Bool)

(assert (= bs!1315163 (and b!5655503 d!1785916)))

(assert (=> bs!1315163 (not (= lambda!304385 lambda!304373))))

(assert (=> bs!1315162 (not (= lambda!304385 lambda!304346))))

(assert (=> bs!1315161 (not (= lambda!304385 lambda!304378))))

(assert (=> b!5655503 true))

(assert (=> b!5655503 true))

(declare-fun bs!1315164 () Bool)

(declare-fun b!5655494 () Bool)

(assert (= bs!1315164 (and b!5655494 d!1785918)))

(declare-fun lambda!304386 () Int)

(assert (=> bs!1315164 (= lambda!304386 lambda!304379)))

(declare-fun bs!1315165 () Bool)

(assert (= bs!1315165 (and b!5655494 b!5655503)))

(assert (=> bs!1315165 (not (= lambda!304386 lambda!304385))))

(declare-fun bs!1315166 () Bool)

(assert (= bs!1315166 (and b!5655494 b!5655240)))

(assert (=> bs!1315166 (= lambda!304386 lambda!304347)))

(declare-fun bs!1315167 () Bool)

(assert (= bs!1315167 (and b!5655494 d!1785916)))

(assert (=> bs!1315167 (not (= lambda!304386 lambda!304373))))

(assert (=> bs!1315166 (not (= lambda!304386 lambda!304346))))

(assert (=> bs!1315164 (not (= lambda!304386 lambda!304378))))

(assert (=> b!5655494 true))

(assert (=> b!5655494 true))

(declare-fun e!3483315 () Bool)

(declare-fun call!427894 () Bool)

(assert (=> b!5655494 (= e!3483315 call!427894)))

(declare-fun b!5655495 () Bool)

(declare-fun e!3483312 () Bool)

(assert (=> b!5655495 (= e!3483312 (= s!2326 (Cons!63119 (c!994162 r!7292) Nil!63119)))))

(declare-fun d!1785934 () Bool)

(declare-fun c!994209 () Bool)

(assert (=> d!1785934 (= c!994209 (is-EmptyExpr!15648 r!7292))))

(declare-fun e!3483314 () Bool)

(assert (=> d!1785934 (= (matchRSpec!2751 r!7292 s!2326) e!3483314)))

(declare-fun b!5655496 () Bool)

(declare-fun c!994206 () Bool)

(assert (=> b!5655496 (= c!994206 (is-ElementMatch!15648 r!7292))))

(declare-fun e!3483311 () Bool)

(assert (=> b!5655496 (= e!3483311 e!3483312)))

(declare-fun bm!427889 () Bool)

(declare-fun call!427895 () Bool)

(assert (=> bm!427889 (= call!427895 (isEmpty!34968 s!2326))))

(declare-fun b!5655497 () Bool)

(declare-fun e!3483313 () Bool)

(assert (=> b!5655497 (= e!3483313 e!3483315)))

(declare-fun c!994208 () Bool)

(assert (=> b!5655497 (= c!994208 (is-Star!15648 r!7292))))

(declare-fun b!5655498 () Bool)

(declare-fun c!994207 () Bool)

(assert (=> b!5655498 (= c!994207 (is-Union!15648 r!7292))))

(assert (=> b!5655498 (= e!3483312 e!3483313)))

(declare-fun b!5655499 () Bool)

(declare-fun e!3483316 () Bool)

(assert (=> b!5655499 (= e!3483316 (matchRSpec!2751 (regTwo!31809 r!7292) s!2326))))

(declare-fun b!5655500 () Bool)

(assert (=> b!5655500 (= e!3483313 e!3483316)))

(declare-fun res!2392390 () Bool)

(assert (=> b!5655500 (= res!2392390 (matchRSpec!2751 (regOne!31809 r!7292) s!2326))))

(assert (=> b!5655500 (=> res!2392390 e!3483316)))

(declare-fun b!5655501 () Bool)

(declare-fun res!2392389 () Bool)

(declare-fun e!3483317 () Bool)

(assert (=> b!5655501 (=> res!2392389 e!3483317)))

(assert (=> b!5655501 (= res!2392389 call!427895)))

(assert (=> b!5655501 (= e!3483315 e!3483317)))

(declare-fun b!5655502 () Bool)

(assert (=> b!5655502 (= e!3483314 call!427895)))

(assert (=> b!5655503 (= e!3483317 call!427894)))

(declare-fun b!5655504 () Bool)

(assert (=> b!5655504 (= e!3483314 e!3483311)))

(declare-fun res!2392391 () Bool)

(assert (=> b!5655504 (= res!2392391 (not (is-EmptyLang!15648 r!7292)))))

(assert (=> b!5655504 (=> (not res!2392391) (not e!3483311))))

(declare-fun bm!427890 () Bool)

(assert (=> bm!427890 (= call!427894 (Exists!2748 (ite c!994208 lambda!304385 lambda!304386)))))

(assert (= (and d!1785934 c!994209) b!5655502))

(assert (= (and d!1785934 (not c!994209)) b!5655504))

(assert (= (and b!5655504 res!2392391) b!5655496))

(assert (= (and b!5655496 c!994206) b!5655495))

(assert (= (and b!5655496 (not c!994206)) b!5655498))

(assert (= (and b!5655498 c!994207) b!5655500))

(assert (= (and b!5655498 (not c!994207)) b!5655497))

(assert (= (and b!5655500 (not res!2392390)) b!5655499))

(assert (= (and b!5655497 c!994208) b!5655501))

(assert (= (and b!5655497 (not c!994208)) b!5655494))

(assert (= (and b!5655501 (not res!2392389)) b!5655503))

(assert (= (or b!5655503 b!5655494) bm!427890))

(assert (= (or b!5655502 b!5655501) bm!427889))

(declare-fun m!6621792 () Bool)

(assert (=> bm!427889 m!6621792))

(declare-fun m!6621794 () Bool)

(assert (=> b!5655499 m!6621794))

(declare-fun m!6621796 () Bool)

(assert (=> b!5655500 m!6621796))

(declare-fun m!6621798 () Bool)

(assert (=> bm!427890 m!6621798))

(assert (=> b!5655257 d!1785934))

(declare-fun b!5655543 () Bool)

(declare-fun e!3483338 () Bool)

(declare-fun derivativeStep!4474 (Regex!15648 C!31566) Regex!15648)

(assert (=> b!5655543 (= e!3483338 (matchR!7833 (derivativeStep!4474 r!7292 (head!12021 s!2326)) (tail!11116 s!2326)))))

(declare-fun b!5655544 () Bool)

(declare-fun res!2392416 () Bool)

(declare-fun e!3483339 () Bool)

(assert (=> b!5655544 (=> (not res!2392416) (not e!3483339))))

(assert (=> b!5655544 (= res!2392416 (isEmpty!34968 (tail!11116 s!2326)))))

(declare-fun b!5655545 () Bool)

(assert (=> b!5655545 (= e!3483339 (= (head!12021 s!2326) (c!994162 r!7292)))))

(declare-fun d!1785936 () Bool)

(declare-fun e!3483344 () Bool)

(assert (=> d!1785936 e!3483344))

(declare-fun c!994221 () Bool)

(assert (=> d!1785936 (= c!994221 (is-EmptyExpr!15648 r!7292))))

(declare-fun lt!2266666 () Bool)

(assert (=> d!1785936 (= lt!2266666 e!3483338)))

(declare-fun c!994220 () Bool)

(assert (=> d!1785936 (= c!994220 (isEmpty!34968 s!2326))))

(assert (=> d!1785936 (validRegex!7384 r!7292)))

(assert (=> d!1785936 (= (matchR!7833 r!7292 s!2326) lt!2266666)))

(declare-fun b!5655546 () Bool)

(declare-fun e!3483342 () Bool)

(assert (=> b!5655546 (= e!3483344 e!3483342)))

(declare-fun c!994222 () Bool)

(assert (=> b!5655546 (= c!994222 (is-EmptyLang!15648 r!7292))))

(declare-fun b!5655547 () Bool)

(declare-fun e!3483340 () Bool)

(declare-fun e!3483343 () Bool)

(assert (=> b!5655547 (= e!3483340 e!3483343)))

(declare-fun res!2392410 () Bool)

(assert (=> b!5655547 (=> res!2392410 e!3483343)))

(declare-fun call!427898 () Bool)

(assert (=> b!5655547 (= res!2392410 call!427898)))

(declare-fun b!5655548 () Bool)

(assert (=> b!5655548 (= e!3483344 (= lt!2266666 call!427898))))

(declare-fun b!5655549 () Bool)

(assert (=> b!5655549 (= e!3483342 (not lt!2266666))))

(declare-fun b!5655550 () Bool)

(declare-fun res!2392415 () Bool)

(declare-fun e!3483341 () Bool)

(assert (=> b!5655550 (=> res!2392415 e!3483341)))

(assert (=> b!5655550 (= res!2392415 e!3483339)))

(declare-fun res!2392413 () Bool)

(assert (=> b!5655550 (=> (not res!2392413) (not e!3483339))))

(assert (=> b!5655550 (= res!2392413 lt!2266666)))

(declare-fun b!5655551 () Bool)

(assert (=> b!5655551 (= e!3483338 (nullable!5680 r!7292))))

(declare-fun bm!427893 () Bool)

(assert (=> bm!427893 (= call!427898 (isEmpty!34968 s!2326))))

(declare-fun b!5655552 () Bool)

(declare-fun res!2392411 () Bool)

(assert (=> b!5655552 (=> res!2392411 e!3483343)))

(assert (=> b!5655552 (= res!2392411 (not (isEmpty!34968 (tail!11116 s!2326))))))

(declare-fun b!5655553 () Bool)

(assert (=> b!5655553 (= e!3483341 e!3483340)))

(declare-fun res!2392417 () Bool)

(assert (=> b!5655553 (=> (not res!2392417) (not e!3483340))))

(assert (=> b!5655553 (= res!2392417 (not lt!2266666))))

(declare-fun b!5655554 () Bool)

(declare-fun res!2392412 () Bool)

(assert (=> b!5655554 (=> (not res!2392412) (not e!3483339))))

(assert (=> b!5655554 (= res!2392412 (not call!427898))))

(declare-fun b!5655555 () Bool)

(assert (=> b!5655555 (= e!3483343 (not (= (head!12021 s!2326) (c!994162 r!7292))))))

(declare-fun b!5655556 () Bool)

(declare-fun res!2392414 () Bool)

(assert (=> b!5655556 (=> res!2392414 e!3483341)))

(assert (=> b!5655556 (= res!2392414 (not (is-ElementMatch!15648 r!7292)))))

(assert (=> b!5655556 (= e!3483342 e!3483341)))

(assert (= (and d!1785936 c!994220) b!5655551))

(assert (= (and d!1785936 (not c!994220)) b!5655543))

(assert (= (and d!1785936 c!994221) b!5655548))

(assert (= (and d!1785936 (not c!994221)) b!5655546))

(assert (= (and b!5655546 c!994222) b!5655549))

(assert (= (and b!5655546 (not c!994222)) b!5655556))

(assert (= (and b!5655556 (not res!2392414)) b!5655550))

(assert (= (and b!5655550 res!2392413) b!5655554))

(assert (= (and b!5655554 res!2392412) b!5655544))

(assert (= (and b!5655544 res!2392416) b!5655545))

(assert (= (and b!5655550 (not res!2392415)) b!5655553))

(assert (= (and b!5655553 res!2392417) b!5655547))

(assert (= (and b!5655547 (not res!2392410)) b!5655552))

(assert (= (and b!5655552 (not res!2392411)) b!5655555))

(assert (= (or b!5655548 b!5655547 b!5655554) bm!427893))

(declare-fun m!6621802 () Bool)

(assert (=> b!5655555 m!6621802))

(assert (=> d!1785936 m!6621792))

(assert (=> d!1785936 m!6621608))

(declare-fun m!6621804 () Bool)

(assert (=> b!5655551 m!6621804))

(assert (=> b!5655543 m!6621802))

(assert (=> b!5655543 m!6621802))

(declare-fun m!6621806 () Bool)

(assert (=> b!5655543 m!6621806))

(declare-fun m!6621808 () Bool)

(assert (=> b!5655543 m!6621808))

(assert (=> b!5655543 m!6621806))

(assert (=> b!5655543 m!6621808))

(declare-fun m!6621810 () Bool)

(assert (=> b!5655543 m!6621810))

(assert (=> b!5655544 m!6621808))

(assert (=> b!5655544 m!6621808))

(declare-fun m!6621812 () Bool)

(assert (=> b!5655544 m!6621812))

(assert (=> b!5655552 m!6621808))

(assert (=> b!5655552 m!6621808))

(assert (=> b!5655552 m!6621812))

(assert (=> b!5655545 m!6621802))

(assert (=> bm!427893 m!6621792))

(assert (=> b!5655257 d!1785936))

(declare-fun d!1785942 () Bool)

(assert (=> d!1785942 (= (matchR!7833 r!7292 s!2326) (matchRSpec!2751 r!7292 s!2326))))

(declare-fun lt!2266669 () Unit!156124)

(declare-fun choose!42824 (Regex!15648 List!63243) Unit!156124)

(assert (=> d!1785942 (= lt!2266669 (choose!42824 r!7292 s!2326))))

(assert (=> d!1785942 (validRegex!7384 r!7292)))

(assert (=> d!1785942 (= (mainMatchTheorem!2751 r!7292 s!2326) lt!2266669)))

(declare-fun bs!1315169 () Bool)

(assert (= bs!1315169 d!1785942))

(assert (=> bs!1315169 m!6621598))

(assert (=> bs!1315169 m!6621596))

(declare-fun m!6621814 () Bool)

(assert (=> bs!1315169 m!6621814))

(assert (=> bs!1315169 m!6621608))

(assert (=> b!5655257 d!1785942))

(declare-fun d!1785944 () Bool)

(declare-fun choose!42825 ((Set Context!10064) Int) (Set Context!10064))

(assert (=> d!1785944 (= (flatMap!1261 lt!2266574 lambda!304348) (choose!42825 lt!2266574 lambda!304348))))

(declare-fun bs!1315170 () Bool)

(assert (= bs!1315170 d!1785944))

(declare-fun m!6621816 () Bool)

(assert (=> bs!1315170 m!6621816))

(assert (=> b!5655253 d!1785944))

(declare-fun b!5655572 () Bool)

(declare-fun e!3483356 () Bool)

(assert (=> b!5655572 (= e!3483356 (nullable!5680 (h!69568 (exprs!5532 lt!2266572))))))

(declare-fun bm!427899 () Bool)

(declare-fun call!427904 () (Set Context!10064))

(assert (=> bm!427899 (= call!427904 (derivationStepZipperDown!990 (h!69568 (exprs!5532 lt!2266572)) (Context!10065 (t!376546 (exprs!5532 lt!2266572))) (h!69567 s!2326)))))

(declare-fun d!1785946 () Bool)

(declare-fun c!994230 () Bool)

(assert (=> d!1785946 (= c!994230 e!3483356)))

(declare-fun res!2392421 () Bool)

(assert (=> d!1785946 (=> (not res!2392421) (not e!3483356))))

(assert (=> d!1785946 (= res!2392421 (is-Cons!63120 (exprs!5532 lt!2266572)))))

(declare-fun e!3483355 () (Set Context!10064))

(assert (=> d!1785946 (= (derivationStepZipperUp!916 lt!2266572 (h!69567 s!2326)) e!3483355)))

(declare-fun b!5655573 () Bool)

(declare-fun e!3483354 () (Set Context!10064))

(assert (=> b!5655573 (= e!3483354 call!427904)))

(declare-fun b!5655574 () Bool)

(assert (=> b!5655574 (= e!3483355 (set.union call!427904 (derivationStepZipperUp!916 (Context!10065 (t!376546 (exprs!5532 lt!2266572))) (h!69567 s!2326))))))

(declare-fun b!5655575 () Bool)

(assert (=> b!5655575 (= e!3483354 (as set.empty (Set Context!10064)))))

(declare-fun b!5655576 () Bool)

(assert (=> b!5655576 (= e!3483355 e!3483354)))

(declare-fun c!994229 () Bool)

(assert (=> b!5655576 (= c!994229 (is-Cons!63120 (exprs!5532 lt!2266572)))))

(assert (= (and d!1785946 res!2392421) b!5655572))

(assert (= (and d!1785946 c!994230) b!5655574))

(assert (= (and d!1785946 (not c!994230)) b!5655576))

(assert (= (and b!5655576 c!994229) b!5655573))

(assert (= (and b!5655576 (not c!994229)) b!5655575))

(assert (= (or b!5655574 b!5655573) bm!427899))

(declare-fun m!6621824 () Bool)

(assert (=> b!5655572 m!6621824))

(declare-fun m!6621826 () Bool)

(assert (=> bm!427899 m!6621826))

(declare-fun m!6621828 () Bool)

(assert (=> b!5655574 m!6621828))

(assert (=> b!5655253 d!1785946))

(declare-fun d!1785950 () Bool)

(declare-fun dynLambda!24691 (Int Context!10064) (Set Context!10064))

(assert (=> d!1785950 (= (flatMap!1261 lt!2266574 lambda!304348) (dynLambda!24691 lambda!304348 lt!2266572))))

(declare-fun lt!2266675 () Unit!156124)

(declare-fun choose!42826 ((Set Context!10064) Context!10064 Int) Unit!156124)

(assert (=> d!1785950 (= lt!2266675 (choose!42826 lt!2266574 lt!2266572 lambda!304348))))

(assert (=> d!1785950 (= lt!2266574 (set.insert lt!2266572 (as set.empty (Set Context!10064))))))

(assert (=> d!1785950 (= (lemmaFlatMapOnSingletonSet!793 lt!2266574 lt!2266572 lambda!304348) lt!2266675)))

(declare-fun b_lambda!213869 () Bool)

(assert (=> (not b_lambda!213869) (not d!1785950)))

(declare-fun bs!1315172 () Bool)

(assert (= bs!1315172 d!1785950))

(assert (=> bs!1315172 m!6621586))

(declare-fun m!6621834 () Bool)

(assert (=> bs!1315172 m!6621834))

(declare-fun m!6621836 () Bool)

(assert (=> bs!1315172 m!6621836))

(assert (=> bs!1315172 m!6621590))

(assert (=> b!5655253 d!1785950))

(declare-fun bs!1315173 () Bool)

(declare-fun d!1785954 () Bool)

(assert (= bs!1315173 (and d!1785954 b!5655233)))

(declare-fun lambda!304389 () Int)

(assert (=> bs!1315173 (= lambda!304389 lambda!304348)))

(assert (=> d!1785954 true))

(assert (=> d!1785954 (= (derivationStepZipper!1733 lt!2266574 (h!69567 s!2326)) (flatMap!1261 lt!2266574 lambda!304389))))

(declare-fun bs!1315174 () Bool)

(assert (= bs!1315174 d!1785954))

(declare-fun m!6621838 () Bool)

(assert (=> bs!1315174 m!6621838))

(assert (=> b!5655253 d!1785954))

(declare-fun d!1785956 () Bool)

(assert (=> d!1785956 (= (flatMap!1261 z!1189 lambda!304348) (choose!42825 z!1189 lambda!304348))))

(declare-fun bs!1315175 () Bool)

(assert (= bs!1315175 d!1785956))

(declare-fun m!6621840 () Bool)

(assert (=> bs!1315175 m!6621840))

(assert (=> b!5655233 d!1785956))

(declare-fun d!1785958 () Bool)

(declare-fun nullableFct!1767 (Regex!15648) Bool)

(assert (=> d!1785958 (= (nullable!5680 (h!69568 (exprs!5532 (h!69569 zl!343)))) (nullableFct!1767 (h!69568 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun bs!1315176 () Bool)

(assert (= bs!1315176 d!1785958))

(declare-fun m!6621842 () Bool)

(assert (=> bs!1315176 m!6621842))

(assert (=> b!5655233 d!1785958))

(declare-fun b!5655579 () Bool)

(declare-fun e!3483359 () Bool)

(assert (=> b!5655579 (= e!3483359 (nullable!5680 (h!69568 (exprs!5532 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343)))))))))))

(declare-fun bm!427900 () Bool)

(declare-fun call!427905 () (Set Context!10064))

(assert (=> bm!427900 (= call!427905 (derivationStepZipperDown!990 (h!69568 (exprs!5532 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343))))))) (Context!10065 (t!376546 (exprs!5532 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343)))))))) (h!69567 s!2326)))))

(declare-fun d!1785960 () Bool)

(declare-fun c!994236 () Bool)

(assert (=> d!1785960 (= c!994236 e!3483359)))

(declare-fun res!2392422 () Bool)

(assert (=> d!1785960 (=> (not res!2392422) (not e!3483359))))

(assert (=> d!1785960 (= res!2392422 (is-Cons!63120 (exprs!5532 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343))))))))))

(declare-fun e!3483358 () (Set Context!10064))

(assert (=> d!1785960 (= (derivationStepZipperUp!916 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343))))) (h!69567 s!2326)) e!3483358)))

(declare-fun b!5655580 () Bool)

(declare-fun e!3483357 () (Set Context!10064))

(assert (=> b!5655580 (= e!3483357 call!427905)))

(declare-fun b!5655581 () Bool)

(assert (=> b!5655581 (= e!3483358 (set.union call!427905 (derivationStepZipperUp!916 (Context!10065 (t!376546 (exprs!5532 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343)))))))) (h!69567 s!2326))))))

(declare-fun b!5655582 () Bool)

(assert (=> b!5655582 (= e!3483357 (as set.empty (Set Context!10064)))))

(declare-fun b!5655583 () Bool)

(assert (=> b!5655583 (= e!3483358 e!3483357)))

(declare-fun c!994235 () Bool)

(assert (=> b!5655583 (= c!994235 (is-Cons!63120 (exprs!5532 (Context!10065 (Cons!63120 (h!69568 (exprs!5532 (h!69569 zl!343))) (t!376546 (exprs!5532 (h!69569 zl!343))))))))))

(assert (= (and d!1785960 res!2392422) b!5655579))

(assert (= (and d!1785960 c!994236) b!5655581))

(assert (= (and d!1785960 (not c!994236)) b!5655583))

(assert (= (and b!5655583 c!994235) b!5655580))

(assert (= (and b!5655583 (not c!994235)) b!5655582))

(assert (= (or b!5655581 b!5655580) bm!427900))

(declare-fun m!6621844 () Bool)

(assert (=> b!5655579 m!6621844))

(declare-fun m!6621846 () Bool)

(assert (=> bm!427900 m!6621846))

(declare-fun m!6621848 () Bool)

(assert (=> b!5655581 m!6621848))

(assert (=> b!5655233 d!1785960))

(declare-fun b!5655584 () Bool)

(declare-fun e!3483362 () Bool)

(assert (=> b!5655584 (= e!3483362 (nullable!5680 (h!69568 (exprs!5532 lt!2266570))))))

(declare-fun bm!427901 () Bool)

(declare-fun call!427906 () (Set Context!10064))

(assert (=> bm!427901 (= call!427906 (derivationStepZipperDown!990 (h!69568 (exprs!5532 lt!2266570)) (Context!10065 (t!376546 (exprs!5532 lt!2266570))) (h!69567 s!2326)))))

(declare-fun d!1785962 () Bool)

(declare-fun c!994238 () Bool)

(assert (=> d!1785962 (= c!994238 e!3483362)))

(declare-fun res!2392423 () Bool)

(assert (=> d!1785962 (=> (not res!2392423) (not e!3483362))))

(assert (=> d!1785962 (= res!2392423 (is-Cons!63120 (exprs!5532 lt!2266570)))))

(declare-fun e!3483361 () (Set Context!10064))

(assert (=> d!1785962 (= (derivationStepZipperUp!916 lt!2266570 (h!69567 s!2326)) e!3483361)))

(declare-fun b!5655585 () Bool)

(declare-fun e!3483360 () (Set Context!10064))

(assert (=> b!5655585 (= e!3483360 call!427906)))

(declare-fun b!5655586 () Bool)

(assert (=> b!5655586 (= e!3483361 (set.union call!427906 (derivationStepZipperUp!916 (Context!10065 (t!376546 (exprs!5532 lt!2266570))) (h!69567 s!2326))))))

(declare-fun b!5655587 () Bool)

(assert (=> b!5655587 (= e!3483360 (as set.empty (Set Context!10064)))))

(declare-fun b!5655588 () Bool)

(assert (=> b!5655588 (= e!3483361 e!3483360)))

(declare-fun c!994237 () Bool)

(assert (=> b!5655588 (= c!994237 (is-Cons!63120 (exprs!5532 lt!2266570)))))

(assert (= (and d!1785962 res!2392423) b!5655584))

(assert (= (and d!1785962 c!994238) b!5655586))

(assert (= (and d!1785962 (not c!994238)) b!5655588))

(assert (= (and b!5655588 c!994237) b!5655585))

(assert (= (and b!5655588 (not c!994237)) b!5655587))

(assert (= (or b!5655586 b!5655585) bm!427901))

(declare-fun m!6621850 () Bool)

(assert (=> b!5655584 m!6621850))

(declare-fun m!6621852 () Bool)

(assert (=> bm!427901 m!6621852))

(declare-fun m!6621854 () Bool)

(assert (=> b!5655586 m!6621854))

(assert (=> b!5655233 d!1785962))

(declare-fun c!994255 () Bool)

(declare-fun call!427923 () List!63244)

(declare-fun bm!427914 () Bool)

(declare-fun c!994252 () Bool)

(declare-fun $colon$colon!1688 (List!63244 Regex!15648) List!63244)

(assert (=> bm!427914 (= call!427923 ($colon$colon!1688 (exprs!5532 lt!2266570) (ite (or c!994255 c!994252) (regTwo!31808 (h!69568 (exprs!5532 (h!69569 zl!343)))) (h!69568 (exprs!5532 (h!69569 zl!343))))))))

(declare-fun d!1785964 () Bool)

(declare-fun c!994254 () Bool)

(assert (=> d!1785964 (= c!994254 (and (is-ElementMatch!15648 (h!69568 (exprs!5532 (h!69569 zl!343)))) (= (c!994162 (h!69568 (exprs!5532 (h!69569 zl!343)))) (h!69567 s!2326))))))

(declare-fun e!3483380 () (Set Context!10064))

(assert (=> d!1785964 (= (derivationStepZipperDown!990 (h!69568 (exprs!5532 (h!69569 zl!343))) lt!2266570 (h!69567 s!2326)) e!3483380)))

(declare-fun b!5655619 () Bool)

(declare-fun e!3483382 () (Set Context!10064))

(declare-fun call!427922 () (Set Context!10064))

(assert (=> b!5655619 (= e!3483382 call!427922)))

(declare-fun b!5655620 () Bool)

(declare-fun c!994256 () Bool)

(assert (=> b!5655620 (= c!994256 (is-Star!15648 (h!69568 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun e!3483381 () (Set Context!10064))

(assert (=> b!5655620 (= e!3483382 e!3483381)))

(declare-fun b!5655621 () Bool)

(declare-fun e!3483379 () Bool)

(assert (=> b!5655621 (= e!3483379 (nullable!5680 (regOne!31808 (h!69568 (exprs!5532 (h!69569 zl!343))))))))

(declare-fun bm!427915 () Bool)

(declare-fun call!427920 () (Set Context!10064))

(declare-fun c!994253 () Bool)

(assert (=> bm!427915 (= call!427920 (derivationStepZipperDown!990 (ite c!994253 (regOne!31809 (h!69568 (exprs!5532 (h!69569 zl!343)))) (regOne!31808 (h!69568 (exprs!5532 (h!69569 zl!343))))) (ite c!994253 lt!2266570 (Context!10065 call!427923)) (h!69567 s!2326)))))

(declare-fun b!5655622 () Bool)

(declare-fun e!3483378 () (Set Context!10064))

(declare-fun call!427919 () (Set Context!10064))

(assert (=> b!5655622 (= e!3483378 (set.union call!427920 call!427919))))

(declare-fun b!5655623 () Bool)

(declare-fun e!3483383 () (Set Context!10064))

(declare-fun call!427921 () (Set Context!10064))

(assert (=> b!5655623 (= e!3483383 (set.union call!427920 call!427921))))

(declare-fun b!5655624 () Bool)

(assert (=> b!5655624 (= c!994255 e!3483379)))

(declare-fun res!2392426 () Bool)

(assert (=> b!5655624 (=> (not res!2392426) (not e!3483379))))

(assert (=> b!5655624 (= res!2392426 (is-Concat!24493 (h!69568 (exprs!5532 (h!69569 zl!343)))))))

(assert (=> b!5655624 (= e!3483378 e!3483383)))

(declare-fun bm!427916 () Bool)

(assert (=> bm!427916 (= call!427922 call!427921)))

(declare-fun bm!427917 () Bool)

(declare-fun call!427924 () List!63244)

(assert (=> bm!427917 (= call!427924 call!427923)))

(declare-fun b!5655625 () Bool)

(assert (=> b!5655625 (= e!3483381 call!427922)))

(declare-fun bm!427918 () Bool)

(assert (=> bm!427918 (= call!427921 call!427919)))

(declare-fun b!5655626 () Bool)

(assert (=> b!5655626 (= e!3483380 (set.insert lt!2266570 (as set.empty (Set Context!10064))))))

(declare-fun b!5655627 () Bool)

(assert (=> b!5655627 (= e!3483383 e!3483382)))

(assert (=> b!5655627 (= c!994252 (is-Concat!24493 (h!69568 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655628 () Bool)

(assert (=> b!5655628 (= e!3483380 e!3483378)))

(assert (=> b!5655628 (= c!994253 (is-Union!15648 (h!69568 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655629 () Bool)

(assert (=> b!5655629 (= e!3483381 (as set.empty (Set Context!10064)))))

(declare-fun bm!427919 () Bool)

(assert (=> bm!427919 (= call!427919 (derivationStepZipperDown!990 (ite c!994253 (regTwo!31809 (h!69568 (exprs!5532 (h!69569 zl!343)))) (ite c!994255 (regTwo!31808 (h!69568 (exprs!5532 (h!69569 zl!343)))) (ite c!994252 (regOne!31808 (h!69568 (exprs!5532 (h!69569 zl!343)))) (reg!15977 (h!69568 (exprs!5532 (h!69569 zl!343))))))) (ite (or c!994253 c!994255) lt!2266570 (Context!10065 call!427924)) (h!69567 s!2326)))))

(assert (= (and d!1785964 c!994254) b!5655626))

(assert (= (and d!1785964 (not c!994254)) b!5655628))

(assert (= (and b!5655628 c!994253) b!5655622))

(assert (= (and b!5655628 (not c!994253)) b!5655624))

(assert (= (and b!5655624 res!2392426) b!5655621))

(assert (= (and b!5655624 c!994255) b!5655623))

(assert (= (and b!5655624 (not c!994255)) b!5655627))

(assert (= (and b!5655627 c!994252) b!5655619))

(assert (= (and b!5655627 (not c!994252)) b!5655620))

(assert (= (and b!5655620 c!994256) b!5655625))

(assert (= (and b!5655620 (not c!994256)) b!5655629))

(assert (= (or b!5655619 b!5655625) bm!427917))

(assert (= (or b!5655619 b!5655625) bm!427916))

(assert (= (or b!5655623 bm!427917) bm!427914))

(assert (= (or b!5655623 bm!427916) bm!427918))

(assert (= (or b!5655622 bm!427918) bm!427919))

(assert (= (or b!5655622 b!5655623) bm!427915))

(declare-fun m!6621870 () Bool)

(assert (=> bm!427915 m!6621870))

(declare-fun m!6621872 () Bool)

(assert (=> b!5655621 m!6621872))

(declare-fun m!6621874 () Bool)

(assert (=> b!5655626 m!6621874))

(declare-fun m!6621876 () Bool)

(assert (=> bm!427914 m!6621876))

(declare-fun m!6621878 () Bool)

(assert (=> bm!427919 m!6621878))

(assert (=> b!5655233 d!1785964))

(declare-fun b!5655630 () Bool)

(declare-fun e!3483386 () Bool)

(assert (=> b!5655630 (= e!3483386 (nullable!5680 (h!69568 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun bm!427920 () Bool)

(declare-fun call!427925 () (Set Context!10064))

(assert (=> bm!427920 (= call!427925 (derivationStepZipperDown!990 (h!69568 (exprs!5532 (h!69569 zl!343))) (Context!10065 (t!376546 (exprs!5532 (h!69569 zl!343)))) (h!69567 s!2326)))))

(declare-fun d!1785970 () Bool)

(declare-fun c!994258 () Bool)

(assert (=> d!1785970 (= c!994258 e!3483386)))

(declare-fun res!2392427 () Bool)

(assert (=> d!1785970 (=> (not res!2392427) (not e!3483386))))

(assert (=> d!1785970 (= res!2392427 (is-Cons!63120 (exprs!5532 (h!69569 zl!343))))))

(declare-fun e!3483385 () (Set Context!10064))

(assert (=> d!1785970 (= (derivationStepZipperUp!916 (h!69569 zl!343) (h!69567 s!2326)) e!3483385)))

(declare-fun b!5655631 () Bool)

(declare-fun e!3483384 () (Set Context!10064))

(assert (=> b!5655631 (= e!3483384 call!427925)))

(declare-fun b!5655632 () Bool)

(assert (=> b!5655632 (= e!3483385 (set.union call!427925 (derivationStepZipperUp!916 (Context!10065 (t!376546 (exprs!5532 (h!69569 zl!343)))) (h!69567 s!2326))))))

(declare-fun b!5655633 () Bool)

(assert (=> b!5655633 (= e!3483384 (as set.empty (Set Context!10064)))))

(declare-fun b!5655634 () Bool)

(assert (=> b!5655634 (= e!3483385 e!3483384)))

(declare-fun c!994257 () Bool)

(assert (=> b!5655634 (= c!994257 (is-Cons!63120 (exprs!5532 (h!69569 zl!343))))))

(assert (= (and d!1785970 res!2392427) b!5655630))

(assert (= (and d!1785970 c!994258) b!5655632))

(assert (= (and d!1785970 (not c!994258)) b!5655634))

(assert (= (and b!5655634 c!994257) b!5655631))

(assert (= (and b!5655634 (not c!994257)) b!5655633))

(assert (= (or b!5655632 b!5655631) bm!427920))

(assert (=> b!5655630 m!6621560))

(declare-fun m!6621880 () Bool)

(assert (=> bm!427920 m!6621880))

(declare-fun m!6621882 () Bool)

(assert (=> b!5655632 m!6621882))

(assert (=> b!5655233 d!1785970))

(declare-fun d!1785972 () Bool)

(assert (=> d!1785972 (= (flatMap!1261 z!1189 lambda!304348) (dynLambda!24691 lambda!304348 (h!69569 zl!343)))))

(declare-fun lt!2266676 () Unit!156124)

(assert (=> d!1785972 (= lt!2266676 (choose!42826 z!1189 (h!69569 zl!343) lambda!304348))))

(assert (=> d!1785972 (= z!1189 (set.insert (h!69569 zl!343) (as set.empty (Set Context!10064))))))

(assert (=> d!1785972 (= (lemmaFlatMapOnSingletonSet!793 z!1189 (h!69569 zl!343) lambda!304348) lt!2266676)))

(declare-fun b_lambda!213871 () Bool)

(assert (=> (not b_lambda!213871) (not d!1785972)))

(declare-fun bs!1315179 () Bool)

(assert (= bs!1315179 d!1785972))

(assert (=> bs!1315179 m!6621556))

(declare-fun m!6621884 () Bool)

(assert (=> bs!1315179 m!6621884))

(declare-fun m!6621886 () Bool)

(assert (=> bs!1315179 m!6621886))

(declare-fun m!6621888 () Bool)

(assert (=> bs!1315179 m!6621888))

(assert (=> b!5655233 d!1785972))

(declare-fun bs!1315182 () Bool)

(declare-fun d!1785974 () Bool)

(assert (= bs!1315182 (and d!1785974 d!1785902)))

(declare-fun lambda!304398 () Int)

(assert (=> bs!1315182 (= lambda!304398 lambda!304364)))

(declare-fun bs!1315183 () Bool)

(assert (= bs!1315183 (and d!1785974 d!1785904)))

(assert (=> bs!1315183 (= lambda!304398 lambda!304367)))

(declare-fun bs!1315184 () Bool)

(assert (= bs!1315184 (and d!1785974 d!1785906)))

(assert (=> bs!1315184 (= lambda!304398 lambda!304370)))

(declare-fun bs!1315185 () Bool)

(assert (= bs!1315185 (and d!1785974 d!1785932)))

(assert (=> bs!1315185 (= lambda!304398 lambda!304380)))

(declare-fun b!5655655 () Bool)

(declare-fun e!3483399 () Regex!15648)

(assert (=> b!5655655 (= e!3483399 EmptyExpr!15648)))

(declare-fun b!5655656 () Bool)

(declare-fun e!3483400 () Bool)

(declare-fun lt!2266679 () Regex!15648)

(assert (=> b!5655656 (= e!3483400 (= lt!2266679 (head!12020 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655657 () Bool)

(declare-fun e!3483402 () Regex!15648)

(assert (=> b!5655657 (= e!3483402 e!3483399)))

(declare-fun c!994268 () Bool)

(assert (=> b!5655657 (= c!994268 (is-Cons!63120 (exprs!5532 (h!69569 zl!343))))))

(declare-fun e!3483404 () Bool)

(assert (=> d!1785974 e!3483404))

(declare-fun res!2392432 () Bool)

(assert (=> d!1785974 (=> (not res!2392432) (not e!3483404))))

(assert (=> d!1785974 (= res!2392432 (validRegex!7384 lt!2266679))))

(assert (=> d!1785974 (= lt!2266679 e!3483402)))

(declare-fun c!994270 () Bool)

(declare-fun e!3483403 () Bool)

(assert (=> d!1785974 (= c!994270 e!3483403)))

(declare-fun res!2392433 () Bool)

(assert (=> d!1785974 (=> (not res!2392433) (not e!3483403))))

(assert (=> d!1785974 (= res!2392433 (is-Cons!63120 (exprs!5532 (h!69569 zl!343))))))

(assert (=> d!1785974 (forall!14797 (exprs!5532 (h!69569 zl!343)) lambda!304398)))

(assert (=> d!1785974 (= (generalisedConcat!1263 (exprs!5532 (h!69569 zl!343))) lt!2266679)))

(declare-fun b!5655658 () Bool)

(assert (=> b!5655658 (= e!3483402 (h!69568 (exprs!5532 (h!69569 zl!343))))))

(declare-fun b!5655659 () Bool)

(assert (=> b!5655659 (= e!3483403 (isEmpty!34964 (t!376546 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655660 () Bool)

(declare-fun e!3483401 () Bool)

(assert (=> b!5655660 (= e!3483401 e!3483400)))

(declare-fun c!994269 () Bool)

(assert (=> b!5655660 (= c!994269 (isEmpty!34964 (tail!11115 (exprs!5532 (h!69569 zl!343)))))))

(declare-fun b!5655661 () Bool)

(declare-fun isEmptyExpr!1179 (Regex!15648) Bool)

(assert (=> b!5655661 (= e!3483401 (isEmptyExpr!1179 lt!2266679))))

(declare-fun b!5655662 () Bool)

(declare-fun isConcat!702 (Regex!15648) Bool)

(assert (=> b!5655662 (= e!3483400 (isConcat!702 lt!2266679))))

(declare-fun b!5655663 () Bool)

(assert (=> b!5655663 (= e!3483404 e!3483401)))

(declare-fun c!994267 () Bool)

(assert (=> b!5655663 (= c!994267 (isEmpty!34964 (exprs!5532 (h!69569 zl!343))))))

(declare-fun b!5655664 () Bool)

(assert (=> b!5655664 (= e!3483399 (Concat!24493 (h!69568 (exprs!5532 (h!69569 zl!343))) (generalisedConcat!1263 (t!376546 (exprs!5532 (h!69569 zl!343))))))))

(assert (= (and d!1785974 res!2392433) b!5655659))

(assert (= (and d!1785974 c!994270) b!5655658))

(assert (= (and d!1785974 (not c!994270)) b!5655657))

(assert (= (and b!5655657 c!994268) b!5655664))

(assert (= (and b!5655657 (not c!994268)) b!5655655))

(assert (= (and d!1785974 res!2392432) b!5655663))

(assert (= (and b!5655663 c!994267) b!5655661))

(assert (= (and b!5655663 (not c!994267)) b!5655660))

(assert (= (and b!5655660 c!994269) b!5655656))

(assert (= (and b!5655660 (not c!994269)) b!5655662))

(declare-fun m!6621894 () Bool)

(assert (=> b!5655661 m!6621894))

(declare-fun m!6621896 () Bool)

(assert (=> b!5655664 m!6621896))

(declare-fun m!6621898 () Bool)

(assert (=> b!5655662 m!6621898))

(assert (=> b!5655659 m!6621616))

(declare-fun m!6621900 () Bool)

(assert (=> b!5655663 m!6621900))

(declare-fun m!6621902 () Bool)

(assert (=> b!5655656 m!6621902))

(declare-fun m!6621904 () Bool)

(assert (=> b!5655660 m!6621904))

(assert (=> b!5655660 m!6621904))

(declare-fun m!6621906 () Bool)

(assert (=> b!5655660 m!6621906))

(declare-fun m!6621908 () Bool)

(assert (=> d!1785974 m!6621908))

(declare-fun m!6621910 () Bool)

(assert (=> d!1785974 m!6621910))

(assert (=> b!5655255 d!1785974))

(declare-fun b!5655683 () Bool)

(declare-fun res!2392445 () Bool)

(declare-fun e!3483425 () Bool)

(assert (=> b!5655683 (=> res!2392445 e!3483425)))

(assert (=> b!5655683 (= res!2392445 (not (is-Concat!24493 r!7292)))))

(declare-fun e!3483420 () Bool)

(assert (=> b!5655683 (= e!3483420 e!3483425)))

(declare-fun b!5655684 () Bool)

(declare-fun e!3483424 () Bool)

(assert (=> b!5655684 (= e!3483424 e!3483420)))

(declare-fun c!994276 () Bool)

(assert (=> b!5655684 (= c!994276 (is-Union!15648 r!7292))))

(declare-fun b!5655685 () Bool)

(declare-fun res!2392446 () Bool)

(declare-fun e!3483419 () Bool)

(assert (=> b!5655685 (=> (not res!2392446) (not e!3483419))))

(declare-fun call!427932 () Bool)

(assert (=> b!5655685 (= res!2392446 call!427932)))

(assert (=> b!5655685 (= e!3483420 e!3483419)))

(declare-fun d!1785980 () Bool)

(declare-fun res!2392444 () Bool)

(declare-fun e!3483423 () Bool)

(assert (=> d!1785980 (=> res!2392444 e!3483423)))

(assert (=> d!1785980 (= res!2392444 (is-ElementMatch!15648 r!7292))))

(assert (=> d!1785980 (= (validRegex!7384 r!7292) e!3483423)))

(declare-fun b!5655686 () Bool)

(declare-fun e!3483421 () Bool)

(declare-fun call!427933 () Bool)

(assert (=> b!5655686 (= e!3483421 call!427933)))

(declare-fun b!5655687 () Bool)

(declare-fun e!3483422 () Bool)

(declare-fun call!427934 () Bool)

(assert (=> b!5655687 (= e!3483422 call!427934)))

(declare-fun c!994275 () Bool)

(declare-fun bm!427927 () Bool)

(assert (=> bm!427927 (= call!427933 (validRegex!7384 (ite c!994275 (reg!15977 r!7292) (ite c!994276 (regTwo!31809 r!7292) (regTwo!31808 r!7292)))))))

(declare-fun bm!427928 () Bool)

(assert (=> bm!427928 (= call!427934 call!427933)))

(declare-fun b!5655688 () Bool)

(assert (=> b!5655688 (= e!3483423 e!3483424)))

(assert (=> b!5655688 (= c!994275 (is-Star!15648 r!7292))))

(declare-fun bm!427929 () Bool)

(assert (=> bm!427929 (= call!427932 (validRegex!7384 (ite c!994276 (regOne!31809 r!7292) (regOne!31808 r!7292))))))

(declare-fun b!5655689 () Bool)

(assert (=> b!5655689 (= e!3483419 call!427934)))

(declare-fun b!5655690 () Bool)

(assert (=> b!5655690 (= e!3483425 e!3483422)))

(declare-fun res!2392447 () Bool)

(assert (=> b!5655690 (=> (not res!2392447) (not e!3483422))))

(assert (=> b!5655690 (= res!2392447 call!427932)))

(declare-fun b!5655691 () Bool)

(assert (=> b!5655691 (= e!3483424 e!3483421)))

(declare-fun res!2392448 () Bool)

(assert (=> b!5655691 (= res!2392448 (not (nullable!5680 (reg!15977 r!7292))))))

(assert (=> b!5655691 (=> (not res!2392448) (not e!3483421))))

(assert (= (and d!1785980 (not res!2392444)) b!5655688))

(assert (= (and b!5655688 c!994275) b!5655691))

(assert (= (and b!5655688 (not c!994275)) b!5655684))

(assert (= (and b!5655691 res!2392448) b!5655686))

(assert (= (and b!5655684 c!994276) b!5655685))

(assert (= (and b!5655684 (not c!994276)) b!5655683))

(assert (= (and b!5655685 res!2392446) b!5655689))

(assert (= (and b!5655683 (not res!2392445)) b!5655690))

(assert (= (and b!5655690 res!2392447) b!5655687))

(assert (= (or b!5655689 b!5655687) bm!427928))

(assert (= (or b!5655685 b!5655690) bm!427929))

(assert (= (or b!5655686 bm!427928) bm!427927))

(declare-fun m!6621912 () Bool)

(assert (=> bm!427927 m!6621912))

(declare-fun m!6621914 () Bool)

(assert (=> bm!427929 m!6621914))

(declare-fun m!6621916 () Bool)

(assert (=> b!5655691 m!6621916))

(assert (=> start!584784 d!1785980))

(declare-fun d!1785982 () Bool)

(assert (=> d!1785982 (= (isEmpty!34964 (t!376546 (exprs!5532 (h!69569 zl!343)))) (is-Nil!63120 (t!376546 (exprs!5532 (h!69569 zl!343)))))))

(assert (=> b!5655251 d!1785982))

(declare-fun d!1785984 () Bool)

(assert (=> d!1785984 (= (nullable!5680 (regOne!31808 (regOne!31808 r!7292))) (nullableFct!1767 (regOne!31808 (regOne!31808 r!7292))))))

(declare-fun bs!1315186 () Bool)

(assert (= bs!1315186 d!1785984))

(declare-fun m!6621918 () Bool)

(assert (=> bs!1315186 m!6621918))

(assert (=> b!5655230 d!1785984))

(declare-fun d!1785986 () Bool)

(declare-fun e!3483428 () Bool)

(assert (=> d!1785986 e!3483428))

(declare-fun res!2392451 () Bool)

(assert (=> d!1785986 (=> (not res!2392451) (not e!3483428))))

(declare-fun lt!2266682 () List!63245)

(declare-fun noDuplicate!1601 (List!63245) Bool)

(assert (=> d!1785986 (= res!2392451 (noDuplicate!1601 lt!2266682))))

(declare-fun choose!42827 ((Set Context!10064)) List!63245)

(assert (=> d!1785986 (= lt!2266682 (choose!42827 z!1189))))

(assert (=> d!1785986 (= (toList!9432 z!1189) lt!2266682)))

(declare-fun b!5655694 () Bool)

(declare-fun content!11422 (List!63245) (Set Context!10064))

(assert (=> b!5655694 (= e!3483428 (= (content!11422 lt!2266682) z!1189))))

(assert (= (and d!1785986 res!2392451) b!5655694))

(declare-fun m!6621920 () Bool)

(assert (=> d!1785986 m!6621920))

(declare-fun m!6621922 () Bool)

(assert (=> d!1785986 m!6621922))

(declare-fun m!6621924 () Bool)

(assert (=> b!5655694 m!6621924))

(assert (=> b!5655241 d!1785986))

(declare-fun d!1785988 () Bool)

(declare-fun c!994277 () Bool)

(assert (=> d!1785988 (= c!994277 (isEmpty!34968 (t!376545 s!2326)))))

(declare-fun e!3483429 () Bool)

(assert (=> d!1785988 (= (matchZipper!1786 lt!2266564 (t!376545 s!2326)) e!3483429)))

(declare-fun b!5655695 () Bool)

(assert (=> b!5655695 (= e!3483429 (nullableZipper!1620 lt!2266564))))

(declare-fun b!5655696 () Bool)

(assert (=> b!5655696 (= e!3483429 (matchZipper!1786 (derivationStepZipper!1733 lt!2266564 (head!12021 (t!376545 s!2326))) (tail!11116 (t!376545 s!2326))))))

(assert (= (and d!1785988 c!994277) b!5655695))

(assert (= (and d!1785988 (not c!994277)) b!5655696))

(assert (=> d!1785988 m!6621766))

(declare-fun m!6621926 () Bool)

(assert (=> b!5655695 m!6621926))

(assert (=> b!5655696 m!6621770))

(assert (=> b!5655696 m!6621770))

(declare-fun m!6621928 () Bool)

(assert (=> b!5655696 m!6621928))

(assert (=> b!5655696 m!6621774))

(assert (=> b!5655696 m!6621928))

(assert (=> b!5655696 m!6621774))

(declare-fun m!6621930 () Bool)

(assert (=> b!5655696 m!6621930))

(assert (=> b!5655232 d!1785988))

(declare-fun bm!427930 () Bool)

(declare-fun c!994278 () Bool)

(declare-fun call!427939 () List!63244)

(declare-fun c!994281 () Bool)

(assert (=> bm!427930 (= call!427939 ($colon$colon!1688 (exprs!5532 (Context!10065 lt!2266576)) (ite (or c!994281 c!994278) (regTwo!31808 (regOne!31808 (regOne!31808 r!7292))) (regOne!31808 (regOne!31808 r!7292)))))))

(declare-fun d!1785990 () Bool)

(declare-fun c!994280 () Bool)

(assert (=> d!1785990 (= c!994280 (and (is-ElementMatch!15648 (regOne!31808 (regOne!31808 r!7292))) (= (c!994162 (regOne!31808 (regOne!31808 r!7292))) (h!69567 s!2326))))))

(declare-fun e!3483432 () (Set Context!10064))

(assert (=> d!1785990 (= (derivationStepZipperDown!990 (regOne!31808 (regOne!31808 r!7292)) (Context!10065 lt!2266576) (h!69567 s!2326)) e!3483432)))

(declare-fun b!5655697 () Bool)

(declare-fun e!3483434 () (Set Context!10064))

(declare-fun call!427938 () (Set Context!10064))

(assert (=> b!5655697 (= e!3483434 call!427938)))

(declare-fun b!5655698 () Bool)

(declare-fun c!994282 () Bool)

(assert (=> b!5655698 (= c!994282 (is-Star!15648 (regOne!31808 (regOne!31808 r!7292))))))

(declare-fun e!3483433 () (Set Context!10064))

(assert (=> b!5655698 (= e!3483434 e!3483433)))

(declare-fun b!5655699 () Bool)

(declare-fun e!3483431 () Bool)

(assert (=> b!5655699 (= e!3483431 (nullable!5680 (regOne!31808 (regOne!31808 (regOne!31808 r!7292)))))))

(declare-fun c!994279 () Bool)

(declare-fun call!427936 () (Set Context!10064))

(declare-fun bm!427931 () Bool)

(assert (=> bm!427931 (= call!427936 (derivationStepZipperDown!990 (ite c!994279 (regOne!31809 (regOne!31808 (regOne!31808 r!7292))) (regOne!31808 (regOne!31808 (regOne!31808 r!7292)))) (ite c!994279 (Context!10065 lt!2266576) (Context!10065 call!427939)) (h!69567 s!2326)))))

(declare-fun b!5655700 () Bool)

(declare-fun e!3483430 () (Set Context!10064))

(declare-fun call!427935 () (Set Context!10064))

(assert (=> b!5655700 (= e!3483430 (set.union call!427936 call!427935))))

(declare-fun b!5655701 () Bool)

(declare-fun e!3483435 () (Set Context!10064))

(declare-fun call!427937 () (Set Context!10064))

(assert (=> b!5655701 (= e!3483435 (set.union call!427936 call!427937))))

(declare-fun b!5655702 () Bool)

(assert (=> b!5655702 (= c!994281 e!3483431)))

(declare-fun res!2392452 () Bool)

(assert (=> b!5655702 (=> (not res!2392452) (not e!3483431))))

(assert (=> b!5655702 (= res!2392452 (is-Concat!24493 (regOne!31808 (regOne!31808 r!7292))))))

(assert (=> b!5655702 (= e!3483430 e!3483435)))

(declare-fun bm!427932 () Bool)

(assert (=> bm!427932 (= call!427938 call!427937)))

(declare-fun bm!427933 () Bool)

(declare-fun call!427940 () List!63244)

(assert (=> bm!427933 (= call!427940 call!427939)))

(declare-fun b!5655703 () Bool)

(assert (=> b!5655703 (= e!3483433 call!427938)))

(declare-fun bm!427934 () Bool)

(assert (=> bm!427934 (= call!427937 call!427935)))

(declare-fun b!5655704 () Bool)

(assert (=> b!5655704 (= e!3483432 (set.insert (Context!10065 lt!2266576) (as set.empty (Set Context!10064))))))

(declare-fun b!5655705 () Bool)

(assert (=> b!5655705 (= e!3483435 e!3483434)))

(assert (=> b!5655705 (= c!994278 (is-Concat!24493 (regOne!31808 (regOne!31808 r!7292))))))

(declare-fun b!5655706 () Bool)

(assert (=> b!5655706 (= e!3483432 e!3483430)))

(assert (=> b!5655706 (= c!994279 (is-Union!15648 (regOne!31808 (regOne!31808 r!7292))))))

(declare-fun b!5655707 () Bool)

(assert (=> b!5655707 (= e!3483433 (as set.empty (Set Context!10064)))))

(declare-fun bm!427935 () Bool)

(assert (=> bm!427935 (= call!427935 (derivationStepZipperDown!990 (ite c!994279 (regTwo!31809 (regOne!31808 (regOne!31808 r!7292))) (ite c!994281 (regTwo!31808 (regOne!31808 (regOne!31808 r!7292))) (ite c!994278 (regOne!31808 (regOne!31808 (regOne!31808 r!7292))) (reg!15977 (regOne!31808 (regOne!31808 r!7292)))))) (ite (or c!994279 c!994281) (Context!10065 lt!2266576) (Context!10065 call!427940)) (h!69567 s!2326)))))

(assert (= (and d!1785990 c!994280) b!5655704))

(assert (= (and d!1785990 (not c!994280)) b!5655706))

(assert (= (and b!5655706 c!994279) b!5655700))

(assert (= (and b!5655706 (not c!994279)) b!5655702))

(assert (= (and b!5655702 res!2392452) b!5655699))

(assert (= (and b!5655702 c!994281) b!5655701))

(assert (= (and b!5655702 (not c!994281)) b!5655705))

(assert (= (and b!5655705 c!994278) b!5655697))

(assert (= (and b!5655705 (not c!994278)) b!5655698))

(assert (= (and b!5655698 c!994282) b!5655703))

(assert (= (and b!5655698 (not c!994282)) b!5655707))

(assert (= (or b!5655697 b!5655703) bm!427933))

(assert (= (or b!5655697 b!5655703) bm!427932))

(assert (= (or b!5655701 bm!427933) bm!427930))

(assert (= (or b!5655701 bm!427932) bm!427934))

(assert (= (or b!5655700 bm!427934) bm!427935))

(assert (= (or b!5655700 b!5655701) bm!427931))

(declare-fun m!6621932 () Bool)

(assert (=> bm!427931 m!6621932))

(declare-fun m!6621934 () Bool)

(assert (=> b!5655699 m!6621934))

(declare-fun m!6621936 () Bool)

(assert (=> b!5655704 m!6621936))

(declare-fun m!6621938 () Bool)

(assert (=> bm!427930 m!6621938))

(declare-fun m!6621940 () Bool)

(assert (=> bm!427935 m!6621940))

(assert (=> b!5655242 d!1785990))

(declare-fun d!1785992 () Bool)

(declare-fun c!994283 () Bool)

(assert (=> d!1785992 (= c!994283 (isEmpty!34968 (t!376545 s!2326)))))

(declare-fun e!3483436 () Bool)

(assert (=> d!1785992 (= (matchZipper!1786 lt!2266559 (t!376545 s!2326)) e!3483436)))

(declare-fun b!5655708 () Bool)

(assert (=> b!5655708 (= e!3483436 (nullableZipper!1620 lt!2266559))))

(declare-fun b!5655709 () Bool)

(assert (=> b!5655709 (= e!3483436 (matchZipper!1786 (derivationStepZipper!1733 lt!2266559 (head!12021 (t!376545 s!2326))) (tail!11116 (t!376545 s!2326))))))

(assert (= (and d!1785992 c!994283) b!5655708))

(assert (= (and d!1785992 (not c!994283)) b!5655709))

(assert (=> d!1785992 m!6621766))

(declare-fun m!6621942 () Bool)

(assert (=> b!5655708 m!6621942))

(assert (=> b!5655709 m!6621770))

(assert (=> b!5655709 m!6621770))

(declare-fun m!6621944 () Bool)

(assert (=> b!5655709 m!6621944))

(assert (=> b!5655709 m!6621774))

(assert (=> b!5655709 m!6621944))

(assert (=> b!5655709 m!6621774))

(declare-fun m!6621946 () Bool)

(assert (=> b!5655709 m!6621946))

(assert (=> b!5655252 d!1785992))

(assert (=> b!5655252 d!1785924))

(declare-fun b!5655714 () Bool)

(declare-fun e!3483439 () Bool)

(declare-fun tp!1566706 () Bool)

(declare-fun tp!1566707 () Bool)

(assert (=> b!5655714 (= e!3483439 (and tp!1566706 tp!1566707))))

(assert (=> b!5655244 (= tp!1566664 e!3483439)))

(assert (= (and b!5655244 (is-Cons!63120 (exprs!5532 (h!69569 zl!343)))) b!5655714))

(declare-fun b!5655722 () Bool)

(declare-fun e!3483445 () Bool)

(declare-fun tp!1566712 () Bool)

(assert (=> b!5655722 (= e!3483445 tp!1566712)))

(declare-fun tp!1566713 () Bool)

(declare-fun e!3483444 () Bool)

(declare-fun b!5655721 () Bool)

(assert (=> b!5655721 (= e!3483444 (and (inv!82368 (h!69569 (t!376547 zl!343))) e!3483445 tp!1566713))))

(assert (=> b!5655238 (= tp!1566666 e!3483444)))

(assert (= b!5655721 b!5655722))

(assert (= (and b!5655238 (is-Cons!63121 (t!376547 zl!343))) b!5655721))

(declare-fun m!6621948 () Bool)

(assert (=> b!5655721 m!6621948))

(declare-fun b!5655734 () Bool)

(declare-fun e!3483448 () Bool)

(declare-fun tp!1566726 () Bool)

(declare-fun tp!1566725 () Bool)

(assert (=> b!5655734 (= e!3483448 (and tp!1566726 tp!1566725))))

(assert (=> b!5655250 (= tp!1566667 e!3483448)))

(declare-fun b!5655736 () Bool)

(declare-fun tp!1566728 () Bool)

(declare-fun tp!1566727 () Bool)

(assert (=> b!5655736 (= e!3483448 (and tp!1566728 tp!1566727))))

(declare-fun b!5655733 () Bool)

(assert (=> b!5655733 (= e!3483448 tp_is_empty!40549)))

(declare-fun b!5655735 () Bool)

(declare-fun tp!1566724 () Bool)

(assert (=> b!5655735 (= e!3483448 tp!1566724)))

(assert (= (and b!5655250 (is-ElementMatch!15648 (reg!15977 r!7292))) b!5655733))

(assert (= (and b!5655250 (is-Concat!24493 (reg!15977 r!7292))) b!5655734))

(assert (= (and b!5655250 (is-Star!15648 (reg!15977 r!7292))) b!5655735))

(assert (= (and b!5655250 (is-Union!15648 (reg!15977 r!7292))) b!5655736))

(declare-fun b!5655740 () Bool)

(declare-fun e!3483449 () Bool)

(declare-fun tp!1566731 () Bool)

(declare-fun tp!1566730 () Bool)

(assert (=> b!5655740 (= e!3483449 (and tp!1566731 tp!1566730))))

(assert (=> b!5655235 (= tp!1566669 e!3483449)))

(declare-fun b!5655742 () Bool)

(declare-fun tp!1566733 () Bool)

(declare-fun tp!1566732 () Bool)

(assert (=> b!5655742 (= e!3483449 (and tp!1566733 tp!1566732))))

(declare-fun b!5655739 () Bool)

(assert (=> b!5655739 (= e!3483449 tp_is_empty!40549)))

(declare-fun b!5655741 () Bool)

(declare-fun tp!1566729 () Bool)

(assert (=> b!5655741 (= e!3483449 tp!1566729)))

(assert (= (and b!5655235 (is-ElementMatch!15648 (regOne!31809 r!7292))) b!5655739))

(assert (= (and b!5655235 (is-Concat!24493 (regOne!31809 r!7292))) b!5655740))

(assert (= (and b!5655235 (is-Star!15648 (regOne!31809 r!7292))) b!5655741))

(assert (= (and b!5655235 (is-Union!15648 (regOne!31809 r!7292))) b!5655742))

(declare-fun b!5655746 () Bool)

(declare-fun e!3483452 () Bool)

(declare-fun tp!1566736 () Bool)

(declare-fun tp!1566735 () Bool)

(assert (=> b!5655746 (= e!3483452 (and tp!1566736 tp!1566735))))

(assert (=> b!5655235 (= tp!1566663 e!3483452)))

(declare-fun b!5655748 () Bool)

(declare-fun tp!1566738 () Bool)

(declare-fun tp!1566737 () Bool)

(assert (=> b!5655748 (= e!3483452 (and tp!1566738 tp!1566737))))

(declare-fun b!5655745 () Bool)

(assert (=> b!5655745 (= e!3483452 tp_is_empty!40549)))

(declare-fun b!5655747 () Bool)

(declare-fun tp!1566734 () Bool)

(assert (=> b!5655747 (= e!3483452 tp!1566734)))

(assert (= (and b!5655235 (is-ElementMatch!15648 (regTwo!31809 r!7292))) b!5655745))

(assert (= (and b!5655235 (is-Concat!24493 (regTwo!31809 r!7292))) b!5655746))

(assert (= (and b!5655235 (is-Star!15648 (regTwo!31809 r!7292))) b!5655747))

(assert (= (and b!5655235 (is-Union!15648 (regTwo!31809 r!7292))) b!5655748))

(declare-fun b!5655752 () Bool)

(declare-fun e!3483455 () Bool)

(declare-fun tp!1566741 () Bool)

(declare-fun tp!1566740 () Bool)

(assert (=> b!5655752 (= e!3483455 (and tp!1566741 tp!1566740))))

(assert (=> b!5655234 (= tp!1566662 e!3483455)))

(declare-fun b!5655754 () Bool)

(declare-fun tp!1566743 () Bool)

(declare-fun tp!1566742 () Bool)

(assert (=> b!5655754 (= e!3483455 (and tp!1566743 tp!1566742))))

(declare-fun b!5655751 () Bool)

(assert (=> b!5655751 (= e!3483455 tp_is_empty!40549)))

(declare-fun b!5655753 () Bool)

(declare-fun tp!1566739 () Bool)

(assert (=> b!5655753 (= e!3483455 tp!1566739)))

(assert (= (and b!5655234 (is-ElementMatch!15648 (regOne!31808 r!7292))) b!5655751))

(assert (= (and b!5655234 (is-Concat!24493 (regOne!31808 r!7292))) b!5655752))

(assert (= (and b!5655234 (is-Star!15648 (regOne!31808 r!7292))) b!5655753))

(assert (= (and b!5655234 (is-Union!15648 (regOne!31808 r!7292))) b!5655754))

(declare-fun b!5655760 () Bool)

(declare-fun e!3483458 () Bool)

(declare-fun tp!1566746 () Bool)

(declare-fun tp!1566745 () Bool)

(assert (=> b!5655760 (= e!3483458 (and tp!1566746 tp!1566745))))

(assert (=> b!5655234 (= tp!1566670 e!3483458)))

(declare-fun b!5655762 () Bool)

(declare-fun tp!1566748 () Bool)

(declare-fun tp!1566747 () Bool)

(assert (=> b!5655762 (= e!3483458 (and tp!1566748 tp!1566747))))

(declare-fun b!5655759 () Bool)

(assert (=> b!5655759 (= e!3483458 tp_is_empty!40549)))

(declare-fun b!5655761 () Bool)

(declare-fun tp!1566744 () Bool)

(assert (=> b!5655761 (= e!3483458 tp!1566744)))

(assert (= (and b!5655234 (is-ElementMatch!15648 (regTwo!31808 r!7292))) b!5655759))

(assert (= (and b!5655234 (is-Concat!24493 (regTwo!31808 r!7292))) b!5655760))

(assert (= (and b!5655234 (is-Star!15648 (regTwo!31808 r!7292))) b!5655761))

(assert (= (and b!5655234 (is-Union!15648 (regTwo!31808 r!7292))) b!5655762))

(declare-fun condSetEmpty!37813 () Bool)

(assert (=> setNonEmpty!37807 (= condSetEmpty!37813 (= setRest!37807 (as set.empty (Set Context!10064))))))

(declare-fun setRes!37813 () Bool)

(assert (=> setNonEmpty!37807 (= tp!1566665 setRes!37813)))

(declare-fun setIsEmpty!37813 () Bool)

(assert (=> setIsEmpty!37813 setRes!37813))

(declare-fun setNonEmpty!37813 () Bool)

(declare-fun setElem!37813 () Context!10064)

(declare-fun e!3483461 () Bool)

(declare-fun tp!1566753 () Bool)

(assert (=> setNonEmpty!37813 (= setRes!37813 (and tp!1566753 (inv!82368 setElem!37813) e!3483461))))

(declare-fun setRest!37813 () (Set Context!10064))

(assert (=> setNonEmpty!37813 (= setRest!37807 (set.union (set.insert setElem!37813 (as set.empty (Set Context!10064))) setRest!37813))))

(declare-fun b!5655767 () Bool)

(declare-fun tp!1566754 () Bool)

(assert (=> b!5655767 (= e!3483461 tp!1566754)))

(assert (= (and setNonEmpty!37807 condSetEmpty!37813) setIsEmpty!37813))

(assert (= (and setNonEmpty!37807 (not condSetEmpty!37813)) setNonEmpty!37813))

(assert (= setNonEmpty!37813 b!5655767))

(declare-fun m!6621950 () Bool)

(assert (=> setNonEmpty!37813 m!6621950))

(declare-fun b!5655768 () Bool)

(declare-fun e!3483462 () Bool)

(declare-fun tp!1566755 () Bool)

(declare-fun tp!1566756 () Bool)

(assert (=> b!5655768 (= e!3483462 (and tp!1566755 tp!1566756))))

(assert (=> b!5655248 (= tp!1566668 e!3483462)))

(assert (= (and b!5655248 (is-Cons!63120 (exprs!5532 setElem!37807))) b!5655768))

(declare-fun b!5655773 () Bool)

(declare-fun e!3483465 () Bool)

(declare-fun tp!1566759 () Bool)

(assert (=> b!5655773 (= e!3483465 (and tp_is_empty!40549 tp!1566759))))

(assert (=> b!5655243 (= tp!1566671 e!3483465)))

(assert (= (and b!5655243 (is-Cons!63119 (t!376545 s!2326))) b!5655773))

(declare-fun b_lambda!213873 () Bool)

(assert (= b_lambda!213871 (or b!5655233 b_lambda!213873)))

(declare-fun bs!1315187 () Bool)

(declare-fun d!1785994 () Bool)

(assert (= bs!1315187 (and d!1785994 b!5655233)))

(assert (=> bs!1315187 (= (dynLambda!24691 lambda!304348 (h!69569 zl!343)) (derivationStepZipperUp!916 (h!69569 zl!343) (h!69567 s!2326)))))

(assert (=> bs!1315187 m!6621552))

(assert (=> d!1785972 d!1785994))

(declare-fun b_lambda!213875 () Bool)

(assert (= b_lambda!213869 (or b!5655233 b_lambda!213875)))

(declare-fun bs!1315188 () Bool)

(declare-fun d!1785996 () Bool)

(assert (= bs!1315188 (and d!1785996 b!5655233)))

(assert (=> bs!1315188 (= (dynLambda!24691 lambda!304348 lt!2266572) (derivationStepZipperUp!916 lt!2266572 (h!69567 s!2326)))))

(assert (=> bs!1315188 m!6621582))

(assert (=> d!1785950 d!1785996))

(push 1)

(assert (not b!5655555))

(assert (not b!5655695))

(assert (not bm!427900))

(assert (not b!5655664))

(assert (not d!1785988))

(assert (not bm!427919))

(assert (not d!1785974))

(assert (not b!5655742))

(assert (not b!5655762))

(assert (not b!5655663))

(assert (not b!5655773))

(assert (not b!5655457))

(assert (not b!5655395))

(assert (not d!1785984))

(assert (not b!5655399))

(assert (not b!5655721))

(assert (not b!5655735))

(assert (not b!5655458))

(assert (not bm!427893))

(assert (not b!5655621))

(assert (not d!1785918))

(assert (not b!5655584))

(assert (not b!5655460))

(assert (not d!1785986))

(assert (not b!5655767))

(assert (not b!5655740))

(assert (not d!1785958))

(assert (not b!5655574))

(assert (not d!1785906))

(assert (not d!1785956))

(assert (not b!5655579))

(assert (not d!1785924))

(assert (not b!5655714))

(assert (not b!5655500))

(assert (not bs!1315188))

(assert (not b!5655753))

(assert (not d!1785932))

(assert (not b!5655459))

(assert (not b!5655400))

(assert (not b!5655696))

(assert (not b_lambda!213873))

(assert (not b!5655545))

(assert (not b!5655768))

(assert (not bm!427914))

(assert (not b!5655699))

(assert (not b!5655572))

(assert (not b!5655435))

(assert (not b!5655432))

(assert (not b!5655431))

(assert (not d!1785944))

(assert (not setNonEmpty!37813))

(assert (not b!5655543))

(assert (not b!5655461))

(assert (not b_lambda!213875))

(assert (not b!5655709))

(assert (not b!5655722))

(assert (not bs!1315187))

(assert (not b!5655408))

(assert (not b!5655736))

(assert (not b!5655734))

(assert (not b!5655632))

(assert (not d!1785912))

(assert (not b!5655581))

(assert (not d!1785950))

(assert (not b!5655661))

(assert (not bm!427915))

(assert (not b!5655551))

(assert (not b!5655761))

(assert (not bm!427920))

(assert (not b!5655456))

(assert (not b!5655552))

(assert (not b!5655660))

(assert (not b!5655544))

(assert (not d!1785942))

(assert (not b!5655394))

(assert tp_is_empty!40549)

(assert (not b!5655741))

(assert (not b!5655694))

(assert (not b!5655397))

(assert (not d!1785916))

(assert (not b!5655659))

(assert (not bm!427889))

(assert (not d!1785920))

(assert (not b!5655586))

(assert (not bm!427931))

(assert (not d!1785908))

(assert (not b!5655760))

(assert (not d!1785992))

(assert (not b!5655401))

(assert (not d!1785936))

(assert (not b!5655708))

(assert (not d!1785904))

(assert (not d!1785914))

(assert (not b!5655662))

(assert (not b!5655752))

(assert (not b!5655747))

(assert (not d!1785928))

(assert (not bm!427899))

(assert (not d!1785922))

(assert (not d!1785926))

(assert (not b!5655499))

(assert (not b!5655428))

(assert (not bm!427930))

(assert (not bm!427901))

(assert (not bm!427890))

(assert (not b!5655451))

(assert (not b!5655630))

(assert (not d!1785954))

(assert (not b!5655434))

(assert (not b!5655398))

(assert (not b!5655754))

(assert (not b!5655691))

(assert (not b!5655433))

(assert (not b!5655748))

(assert (not bm!427929))

(assert (not bm!427935))

(assert (not b!5655656))

(assert (not d!1785902))

(assert (not bm!427927))

(assert (not d!1785972))

(assert (not b!5655746))

(assert (not d!1785910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

