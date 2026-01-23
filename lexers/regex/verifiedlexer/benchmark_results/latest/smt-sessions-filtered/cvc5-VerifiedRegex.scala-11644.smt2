; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!651122 () Bool)

(assert start!651122)

(declare-fun b!6713606 () Bool)

(assert (=> b!6713606 true))

(assert (=> b!6713606 true))

(declare-fun lambda!376353 () Int)

(declare-fun lambda!376352 () Int)

(assert (=> b!6713606 (not (= lambda!376353 lambda!376352))))

(assert (=> b!6713606 true))

(assert (=> b!6713606 true))

(declare-fun b!6713596 () Bool)

(declare-fun res!2747310 () Bool)

(declare-fun e!4057269 () Bool)

(assert (=> b!6713596 (=> res!2747310 e!4057269)))

(declare-datatypes ((C!33338 0))(
  ( (C!33339 (val!26371 Int)) )
))
(declare-datatypes ((Regex!16534 0))(
  ( (ElementMatch!16534 (c!1244840 C!33338)) (Concat!25379 (regOne!33580 Regex!16534) (regTwo!33580 Regex!16534)) (EmptyExpr!16534) (Star!16534 (reg!16863 Regex!16534)) (EmptyLang!16534) (Union!16534 (regOne!33581 Regex!16534) (regTwo!33581 Regex!16534)) )
))
(declare-fun r!7292 () Regex!16534)

(declare-datatypes ((List!65901 0))(
  ( (Nil!65777) (Cons!65777 (h!72225 Regex!16534) (t!379578 List!65901)) )
))
(declare-datatypes ((Context!11836 0))(
  ( (Context!11837 (exprs!6418 List!65901)) )
))
(declare-datatypes ((List!65902 0))(
  ( (Nil!65778) (Cons!65778 (h!72226 Context!11836) (t!379579 List!65902)) )
))
(declare-fun zl!343 () List!65902)

(declare-fun generalisedUnion!2378 (List!65901) Regex!16534)

(declare-fun unfocusZipperList!1955 (List!65902) List!65901)

(assert (=> b!6713596 (= res!2747310 (not (= r!7292 (generalisedUnion!2378 (unfocusZipperList!1955 zl!343)))))))

(declare-fun b!6713597 () Bool)

(declare-fun res!2747314 () Bool)

(assert (=> b!6713597 (=> res!2747314 e!4057269)))

(assert (=> b!6713597 (= res!2747314 (or (is-EmptyExpr!16534 r!7292) (is-EmptyLang!16534 r!7292) (is-ElementMatch!16534 r!7292) (is-Union!16534 r!7292) (is-Concat!25379 r!7292)))))

(declare-fun b!6713598 () Bool)

(declare-fun res!2747317 () Bool)

(declare-fun e!4057268 () Bool)

(assert (=> b!6713598 (=> (not res!2747317) (not e!4057268))))

(declare-fun z!1189 () (Set Context!11836))

(declare-fun toList!10318 ((Set Context!11836)) List!65902)

(assert (=> b!6713598 (= res!2747317 (= (toList!10318 z!1189) zl!343))))

(declare-fun b!6713599 () Bool)

(declare-fun e!4057271 () Bool)

(declare-fun tp_is_empty!42321 () Bool)

(declare-fun tp!1839885 () Bool)

(assert (=> b!6713599 (= e!4057271 (and tp_is_empty!42321 tp!1839885))))

(declare-fun tp!1839886 () Bool)

(declare-fun e!4057265 () Bool)

(declare-fun e!4057272 () Bool)

(declare-fun b!6713601 () Bool)

(declare-fun inv!84583 (Context!11836) Bool)

(assert (=> b!6713601 (= e!4057272 (and (inv!84583 (h!72226 zl!343)) e!4057265 tp!1839886))))

(declare-fun b!6713602 () Bool)

(declare-fun res!2747309 () Bool)

(assert (=> b!6713602 (=> res!2747309 e!4057269)))

(assert (=> b!6713602 (= res!2747309 (not (is-Cons!65777 (exprs!6418 (h!72226 zl!343)))))))

(declare-fun b!6713603 () Bool)

(declare-fun e!4057267 () Bool)

(declare-fun tp!1839887 () Bool)

(declare-fun tp!1839888 () Bool)

(assert (=> b!6713603 (= e!4057267 (and tp!1839887 tp!1839888))))

(declare-fun b!6713604 () Bool)

(declare-fun e!4057270 () Bool)

(declare-fun validRegex!8270 (Regex!16534) Bool)

(assert (=> b!6713604 (= e!4057270 (validRegex!8270 r!7292))))

(declare-fun b!6713605 () Bool)

(declare-fun res!2747318 () Bool)

(assert (=> b!6713605 (=> res!2747318 e!4057269)))

(declare-fun isEmpty!38101 (List!65902) Bool)

(assert (=> b!6713605 (= res!2747318 (not (isEmpty!38101 (t!379579 zl!343))))))

(declare-fun setIsEmpty!45738 () Bool)

(declare-fun setRes!45738 () Bool)

(assert (=> setIsEmpty!45738 setRes!45738))

(assert (=> b!6713606 (= e!4057269 e!4057270)))

(declare-fun res!2747315 () Bool)

(assert (=> b!6713606 (=> res!2747315 e!4057270)))

(assert (=> b!6713606 (= res!2747315 (not (validRegex!8270 (reg!16863 r!7292))))))

(declare-fun Exists!3602 (Int) Bool)

(assert (=> b!6713606 (= (Exists!3602 lambda!376352) (Exists!3602 lambda!376353))))

(declare-datatypes ((Unit!159759 0))(
  ( (Unit!159760) )
))
(declare-fun lt!2435937 () Unit!159759)

(declare-datatypes ((List!65903 0))(
  ( (Nil!65779) (Cons!65779 (h!72227 C!33338) (t!379580 List!65903)) )
))
(declare-fun s!2326 () List!65903)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!693 (Regex!16534 List!65903) Unit!159759)

(assert (=> b!6713606 (= lt!2435937 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!693 (reg!16863 r!7292) s!2326))))

(declare-datatypes ((tuple2!67018 0))(
  ( (tuple2!67019 (_1!36812 List!65903) (_2!36812 List!65903)) )
))
(declare-datatypes ((Option!16421 0))(
  ( (None!16420) (Some!16420 (v!52618 tuple2!67018)) )
))
(declare-fun isDefined!13124 (Option!16421) Bool)

(declare-fun findConcatSeparation!2835 (Regex!16534 Regex!16534 List!65903 List!65903 List!65903) Option!16421)

(assert (=> b!6713606 (= (isDefined!13124 (findConcatSeparation!2835 (reg!16863 r!7292) r!7292 Nil!65779 s!2326 s!2326)) (Exists!3602 lambda!376352))))

(declare-fun lt!2435939 () Unit!159759)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2599 (Regex!16534 Regex!16534 List!65903) Unit!159759)

(assert (=> b!6713606 (= lt!2435939 (lemmaFindConcatSeparationEquivalentToExists!2599 (reg!16863 r!7292) r!7292 s!2326))))

(declare-fun b!6713607 () Bool)

(declare-fun tp!1839884 () Bool)

(assert (=> b!6713607 (= e!4057265 tp!1839884)))

(declare-fun b!6713608 () Bool)

(declare-fun e!4057266 () Bool)

(declare-fun tp!1839882 () Bool)

(assert (=> b!6713608 (= e!4057266 tp!1839882)))

(declare-fun b!6713609 () Bool)

(assert (=> b!6713609 (= e!4057267 tp_is_empty!42321)))

(declare-fun res!2747313 () Bool)

(assert (=> start!651122 (=> (not res!2747313) (not e!4057268))))

(assert (=> start!651122 (= res!2747313 (validRegex!8270 r!7292))))

(assert (=> start!651122 e!4057268))

(assert (=> start!651122 e!4057267))

(declare-fun condSetEmpty!45738 () Bool)

(assert (=> start!651122 (= condSetEmpty!45738 (= z!1189 (as set.empty (Set Context!11836))))))

(assert (=> start!651122 setRes!45738))

(assert (=> start!651122 e!4057272))

(assert (=> start!651122 e!4057271))

(declare-fun b!6713600 () Bool)

(assert (=> b!6713600 (= e!4057268 (not e!4057269))))

(declare-fun res!2747312 () Bool)

(assert (=> b!6713600 (=> res!2747312 e!4057269)))

(assert (=> b!6713600 (= res!2747312 (not (is-Cons!65778 zl!343)))))

(declare-fun matchR!8717 (Regex!16534 List!65903) Bool)

(declare-fun matchRSpec!3635 (Regex!16534 List!65903) Bool)

(assert (=> b!6713600 (= (matchR!8717 r!7292 s!2326) (matchRSpec!3635 r!7292 s!2326))))

(declare-fun lt!2435938 () Unit!159759)

(declare-fun mainMatchTheorem!3635 (Regex!16534 List!65903) Unit!159759)

(assert (=> b!6713600 (= lt!2435938 (mainMatchTheorem!3635 r!7292 s!2326))))

(declare-fun b!6713610 () Bool)

(declare-fun res!2747316 () Bool)

(assert (=> b!6713610 (=> res!2747316 e!4057269)))

(declare-fun generalisedConcat!2131 (List!65901) Regex!16534)

(assert (=> b!6713610 (= res!2747316 (not (= r!7292 (generalisedConcat!2131 (exprs!6418 (h!72226 zl!343))))))))

(declare-fun b!6713611 () Bool)

(declare-fun tp!1839891 () Bool)

(assert (=> b!6713611 (= e!4057267 tp!1839891)))

(declare-fun b!6713612 () Bool)

(declare-fun res!2747311 () Bool)

(assert (=> b!6713612 (=> (not res!2747311) (not e!4057268))))

(declare-fun unfocusZipper!2276 (List!65902) Regex!16534)

(assert (=> b!6713612 (= res!2747311 (= r!7292 (unfocusZipper!2276 zl!343)))))

(declare-fun tp!1839890 () Bool)

(declare-fun setNonEmpty!45738 () Bool)

(declare-fun setElem!45738 () Context!11836)

(assert (=> setNonEmpty!45738 (= setRes!45738 (and tp!1839890 (inv!84583 setElem!45738) e!4057266))))

(declare-fun setRest!45738 () (Set Context!11836))

(assert (=> setNonEmpty!45738 (= z!1189 (set.union (set.insert setElem!45738 (as set.empty (Set Context!11836))) setRest!45738))))

(declare-fun b!6713613 () Bool)

(declare-fun tp!1839883 () Bool)

(declare-fun tp!1839889 () Bool)

(assert (=> b!6713613 (= e!4057267 (and tp!1839883 tp!1839889))))

(assert (= (and start!651122 res!2747313) b!6713598))

(assert (= (and b!6713598 res!2747317) b!6713612))

(assert (= (and b!6713612 res!2747311) b!6713600))

(assert (= (and b!6713600 (not res!2747312)) b!6713605))

(assert (= (and b!6713605 (not res!2747318)) b!6713610))

(assert (= (and b!6713610 (not res!2747316)) b!6713602))

(assert (= (and b!6713602 (not res!2747309)) b!6713596))

(assert (= (and b!6713596 (not res!2747310)) b!6713597))

(assert (= (and b!6713597 (not res!2747314)) b!6713606))

(assert (= (and b!6713606 (not res!2747315)) b!6713604))

(assert (= (and start!651122 (is-ElementMatch!16534 r!7292)) b!6713609))

(assert (= (and start!651122 (is-Concat!25379 r!7292)) b!6713603))

(assert (= (and start!651122 (is-Star!16534 r!7292)) b!6713611))

(assert (= (and start!651122 (is-Union!16534 r!7292)) b!6713613))

(assert (= (and start!651122 condSetEmpty!45738) setIsEmpty!45738))

(assert (= (and start!651122 (not condSetEmpty!45738)) setNonEmpty!45738))

(assert (= setNonEmpty!45738 b!6713608))

(assert (= b!6713601 b!6713607))

(assert (= (and start!651122 (is-Cons!65778 zl!343)) b!6713601))

(assert (= (and start!651122 (is-Cons!65779 s!2326)) b!6713599))

(declare-fun m!7478292 () Bool)

(assert (=> b!6713605 m!7478292))

(declare-fun m!7478294 () Bool)

(assert (=> b!6713596 m!7478294))

(assert (=> b!6713596 m!7478294))

(declare-fun m!7478296 () Bool)

(assert (=> b!6713596 m!7478296))

(declare-fun m!7478298 () Bool)

(assert (=> b!6713606 m!7478298))

(assert (=> b!6713606 m!7478298))

(declare-fun m!7478300 () Bool)

(assert (=> b!6713606 m!7478300))

(declare-fun m!7478302 () Bool)

(assert (=> b!6713606 m!7478302))

(declare-fun m!7478304 () Bool)

(assert (=> b!6713606 m!7478304))

(declare-fun m!7478306 () Bool)

(assert (=> b!6713606 m!7478306))

(assert (=> b!6713606 m!7478306))

(declare-fun m!7478308 () Bool)

(assert (=> b!6713606 m!7478308))

(declare-fun m!7478310 () Bool)

(assert (=> b!6713606 m!7478310))

(declare-fun m!7478312 () Bool)

(assert (=> start!651122 m!7478312))

(declare-fun m!7478314 () Bool)

(assert (=> b!6713600 m!7478314))

(declare-fun m!7478316 () Bool)

(assert (=> b!6713600 m!7478316))

(declare-fun m!7478318 () Bool)

(assert (=> b!6713600 m!7478318))

(declare-fun m!7478320 () Bool)

(assert (=> b!6713598 m!7478320))

(declare-fun m!7478322 () Bool)

(assert (=> setNonEmpty!45738 m!7478322))

(declare-fun m!7478324 () Bool)

(assert (=> b!6713612 m!7478324))

(declare-fun m!7478326 () Bool)

(assert (=> b!6713601 m!7478326))

(assert (=> b!6713604 m!7478312))

(declare-fun m!7478328 () Bool)

(assert (=> b!6713610 m!7478328))

(push 1)

(assert (not b!6713605))

(assert (not b!6713607))

(assert (not start!651122))

(assert (not b!6713608))

(assert (not b!6713613))

(assert (not b!6713599))

(assert (not setNonEmpty!45738))

(assert (not b!6713603))

(assert (not b!6713610))

(assert (not b!6713598))

(assert (not b!6713606))

(assert (not b!6713601))

(assert (not b!6713612))

(assert (not b!6713600))

(assert (not b!6713611))

(assert (not b!6713596))

(assert (not b!6713604))

(assert tp_is_empty!42321)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

