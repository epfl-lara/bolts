; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!555400 () Bool)

(assert start!555400)

(declare-fun b!5258586 () Bool)

(assert (=> b!5258586 true))

(assert (=> b!5258586 true))

(declare-fun lambda!265061 () Int)

(declare-fun lambda!265060 () Int)

(assert (=> b!5258586 (not (= lambda!265061 lambda!265060))))

(assert (=> b!5258586 true))

(assert (=> b!5258586 true))

(declare-fun b!5258595 () Bool)

(assert (=> b!5258595 true))

(declare-fun b!5258584 () Bool)

(declare-datatypes ((Unit!153022 0))(
  ( (Unit!153023) )
))
(declare-fun e!3271255 () Unit!153022)

(declare-fun Unit!153024 () Unit!153022)

(assert (=> b!5258584 (= e!3271255 Unit!153024)))

(declare-datatypes ((C!30022 0))(
  ( (C!30023 (val!24713 Int)) )
))
(declare-datatypes ((List!60927 0))(
  ( (Nil!60803) (Cons!60803 (h!67251 C!30022) (t!374110 List!60927)) )
))
(declare-fun s!2326 () List!60927)

(declare-datatypes ((Regex!14876 0))(
  ( (ElementMatch!14876 (c!910130 C!30022)) (Concat!23721 (regOne!30264 Regex!14876) (regTwo!30264 Regex!14876)) (EmptyExpr!14876) (Star!14876 (reg!15205 Regex!14876)) (EmptyLang!14876) (Union!14876 (regOne!30265 Regex!14876) (regTwo!30265 Regex!14876)) )
))
(declare-datatypes ((List!60928 0))(
  ( (Nil!60804) (Cons!60804 (h!67252 Regex!14876) (t!374111 List!60928)) )
))
(declare-datatypes ((Context!8520 0))(
  ( (Context!8521 (exprs!4760 List!60928)) )
))
(declare-fun lt!2155094 () (Set Context!8520))

(declare-fun lt!2155091 () (Set Context!8520))

(declare-fun lt!2155099 () Unit!153022)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!113 ((Set Context!8520) (Set Context!8520) List!60927) Unit!153022)

(assert (=> b!5258584 (= lt!2155099 (lemmaZipperConcatMatchesSameAsBothZippers!113 lt!2155091 lt!2155094 (t!374110 s!2326)))))

(declare-fun res!2231567 () Bool)

(declare-fun matchZipper!1120 ((Set Context!8520) List!60927) Bool)

(assert (=> b!5258584 (= res!2231567 (matchZipper!1120 lt!2155091 (t!374110 s!2326)))))

(declare-fun e!3271251 () Bool)

(assert (=> b!5258584 (=> res!2231567 e!3271251)))

(assert (=> b!5258584 (= (matchZipper!1120 (set.union lt!2155091 lt!2155094) (t!374110 s!2326)) e!3271251)))

(declare-fun b!5258585 () Bool)

(declare-fun Unit!153025 () Unit!153022)

(assert (=> b!5258585 (= e!3271255 Unit!153025)))

(declare-fun e!3271253 () Bool)

(declare-fun e!3271249 () Bool)

(assert (=> b!5258586 (= e!3271253 e!3271249)))

(declare-fun res!2231572 () Bool)

(assert (=> b!5258586 (=> res!2231572 e!3271249)))

(declare-fun lt!2155102 () Bool)

(declare-fun lt!2155100 () Bool)

(assert (=> b!5258586 (= res!2231572 (or (not (= lt!2155100 lt!2155102)) (is-Nil!60803 s!2326)))))

(declare-fun Exists!2057 (Int) Bool)

(assert (=> b!5258586 (= (Exists!2057 lambda!265060) (Exists!2057 lambda!265061))))

(declare-fun lt!2155092 () Unit!153022)

(declare-fun r!7292 () Regex!14876)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!711 (Regex!14876 Regex!14876 List!60927) Unit!153022)

(assert (=> b!5258586 (= lt!2155092 (lemmaExistCutMatchRandMatchRSpecEquivalent!711 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326))))

(assert (=> b!5258586 (= lt!2155102 (Exists!2057 lambda!265060))))

(declare-datatypes ((tuple2!64150 0))(
  ( (tuple2!64151 (_1!35378 List!60927) (_2!35378 List!60927)) )
))
(declare-datatypes ((Option!14987 0))(
  ( (None!14986) (Some!14986 (v!51015 tuple2!64150)) )
))
(declare-fun isDefined!11690 (Option!14987) Bool)

(declare-fun findConcatSeparation!1401 (Regex!14876 Regex!14876 List!60927 List!60927 List!60927) Option!14987)

(assert (=> b!5258586 (= lt!2155102 (isDefined!11690 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326)))))

(declare-fun lt!2155093 () Unit!153022)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1165 (Regex!14876 Regex!14876 List!60927) Unit!153022)

(assert (=> b!5258586 (= lt!2155093 (lemmaFindConcatSeparationEquivalentToExists!1165 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326))))

(declare-fun b!5258587 () Bool)

(declare-fun e!3271254 () Bool)

(assert (=> b!5258587 (= e!3271254 (not e!3271253))))

(declare-fun res!2231576 () Bool)

(assert (=> b!5258587 (=> res!2231576 e!3271253)))

(declare-datatypes ((List!60929 0))(
  ( (Nil!60805) (Cons!60805 (h!67253 Context!8520) (t!374112 List!60929)) )
))
(declare-fun zl!343 () List!60929)

(assert (=> b!5258587 (= res!2231576 (not (is-Cons!60805 zl!343)))))

(declare-fun matchRSpec!1979 (Regex!14876 List!60927) Bool)

(assert (=> b!5258587 (= lt!2155100 (matchRSpec!1979 r!7292 s!2326))))

(declare-fun matchR!7061 (Regex!14876 List!60927) Bool)

(assert (=> b!5258587 (= lt!2155100 (matchR!7061 r!7292 s!2326))))

(declare-fun lt!2155095 () Unit!153022)

(declare-fun mainMatchTheorem!1979 (Regex!14876 List!60927) Unit!153022)

(assert (=> b!5258587 (= lt!2155095 (mainMatchTheorem!1979 r!7292 s!2326))))

(declare-fun b!5258588 () Bool)

(declare-fun res!2231568 () Bool)

(declare-fun e!3271259 () Bool)

(assert (=> b!5258588 (=> res!2231568 e!3271259)))

(declare-fun nullable!5045 (Regex!14876) Bool)

(assert (=> b!5258588 (= res!2231568 (not (nullable!5045 (regOne!30264 (regOne!30264 r!7292)))))))

(declare-fun setIsEmpty!33608 () Bool)

(declare-fun setRes!33608 () Bool)

(assert (=> setIsEmpty!33608 setRes!33608))

(declare-fun b!5258589 () Bool)

(declare-fun e!3271257 () Bool)

(declare-fun tp_is_empty!39005 () Bool)

(assert (=> b!5258589 (= e!3271257 tp_is_empty!39005)))

(declare-fun b!5258590 () Bool)

(declare-fun e!3271256 () Bool)

(declare-fun tp!1470194 () Bool)

(assert (=> b!5258590 (= e!3271256 tp!1470194)))

(declare-fun b!5258591 () Bool)

(assert (=> b!5258591 (= e!3271251 (matchZipper!1120 lt!2155094 (t!374110 s!2326)))))

(declare-fun tp!1470195 () Bool)

(declare-fun b!5258592 () Bool)

(declare-fun e!3271250 () Bool)

(declare-fun inv!80438 (Context!8520) Bool)

(assert (=> b!5258592 (= e!3271250 (and (inv!80438 (h!67253 zl!343)) e!3271256 tp!1470195))))

(declare-fun b!5258593 () Bool)

(declare-fun e!3271258 () Bool)

(declare-fun tp!1470197 () Bool)

(assert (=> b!5258593 (= e!3271258 (and tp_is_empty!39005 tp!1470197))))

(declare-fun b!5258594 () Bool)

(declare-fun res!2231575 () Bool)

(assert (=> b!5258594 (=> res!2231575 e!3271249)))

(declare-fun isEmpty!32745 (List!60928) Bool)

(assert (=> b!5258594 (= res!2231575 (isEmpty!32745 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun setElem!33608 () Context!8520)

(declare-fun tp!1470203 () Bool)

(declare-fun e!3271252 () Bool)

(declare-fun setNonEmpty!33608 () Bool)

(assert (=> setNonEmpty!33608 (= setRes!33608 (and tp!1470203 (inv!80438 setElem!33608) e!3271252))))

(declare-fun z!1189 () (Set Context!8520))

(declare-fun setRest!33608 () (Set Context!8520))

(assert (=> setNonEmpty!33608 (= z!1189 (set.union (set.insert setElem!33608 (as set.empty (Set Context!8520))) setRest!33608))))

(assert (=> b!5258595 (= e!3271249 e!3271259)))

(declare-fun res!2231569 () Bool)

(assert (=> b!5258595 (=> res!2231569 e!3271259)))

(assert (=> b!5258595 (= res!2231569 (or (and (is-ElementMatch!14876 (regOne!30264 r!7292)) (= (c!910130 (regOne!30264 r!7292)) (h!67251 s!2326))) (is-Union!14876 (regOne!30264 r!7292)) (not (is-Concat!23721 (regOne!30264 r!7292)))))))

(declare-fun lt!2155097 () Unit!153022)

(assert (=> b!5258595 (= lt!2155097 e!3271255)))

(declare-fun c!910129 () Bool)

(assert (=> b!5258595 (= c!910129 (nullable!5045 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun lambda!265062 () Int)

(declare-fun flatMap!603 ((Set Context!8520) Int) (Set Context!8520))

(declare-fun derivationStepZipperUp!248 (Context!8520 C!30022) (Set Context!8520))

(assert (=> b!5258595 (= (flatMap!603 z!1189 lambda!265062) (derivationStepZipperUp!248 (h!67253 zl!343) (h!67251 s!2326)))))

(declare-fun lt!2155096 () Unit!153022)

(declare-fun lemmaFlatMapOnSingletonSet!135 ((Set Context!8520) Context!8520 Int) Unit!153022)

(assert (=> b!5258595 (= lt!2155096 (lemmaFlatMapOnSingletonSet!135 z!1189 (h!67253 zl!343) lambda!265062))))

(declare-fun lt!2155101 () Context!8520)

(assert (=> b!5258595 (= lt!2155094 (derivationStepZipperUp!248 lt!2155101 (h!67251 s!2326)))))

(declare-fun derivationStepZipperDown!324 (Regex!14876 Context!8520 C!30022) (Set Context!8520))

(assert (=> b!5258595 (= lt!2155091 (derivationStepZipperDown!324 (h!67252 (exprs!4760 (h!67253 zl!343))) lt!2155101 (h!67251 s!2326)))))

(assert (=> b!5258595 (= lt!2155101 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun lt!2155098 () (Set Context!8520))

(assert (=> b!5258595 (= lt!2155098 (derivationStepZipperUp!248 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))) (h!67251 s!2326)))))

(declare-fun b!5258596 () Bool)

(declare-fun tp!1470199 () Bool)

(assert (=> b!5258596 (= e!3271257 tp!1470199)))

(declare-fun b!5258597 () Bool)

(declare-fun res!2231578 () Bool)

(assert (=> b!5258597 (=> res!2231578 e!3271253)))

(assert (=> b!5258597 (= res!2231578 (not (is-Cons!60804 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5258598 () Bool)

(declare-fun res!2231574 () Bool)

(assert (=> b!5258598 (=> res!2231574 e!3271253)))

(assert (=> b!5258598 (= res!2231574 (or (is-EmptyExpr!14876 r!7292) (is-EmptyLang!14876 r!7292) (is-ElementMatch!14876 r!7292) (is-Union!14876 r!7292) (not (is-Concat!23721 r!7292))))))

(declare-fun b!5258599 () Bool)

(declare-fun tp!1470202 () Bool)

(declare-fun tp!1470196 () Bool)

(assert (=> b!5258599 (= e!3271257 (and tp!1470202 tp!1470196))))

(declare-fun b!5258600 () Bool)

(declare-fun validRegex!6612 (Regex!14876) Bool)

(assert (=> b!5258600 (= e!3271259 (validRegex!6612 (regOne!30264 (regOne!30264 r!7292))))))

(declare-fun b!5258601 () Bool)

(declare-fun res!2231573 () Bool)

(assert (=> b!5258601 (=> (not res!2231573) (not e!3271254))))

(declare-fun unfocusZipper!618 (List!60929) Regex!14876)

(assert (=> b!5258601 (= res!2231573 (= r!7292 (unfocusZipper!618 zl!343)))))

(declare-fun b!5258602 () Bool)

(declare-fun res!2231579 () Bool)

(assert (=> b!5258602 (=> res!2231579 e!3271253)))

(declare-fun generalisedConcat!545 (List!60928) Regex!14876)

(assert (=> b!5258602 (= res!2231579 (not (= r!7292 (generalisedConcat!545 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun b!5258603 () Bool)

(declare-fun res!2231570 () Bool)

(assert (=> b!5258603 (=> res!2231570 e!3271253)))

(declare-fun isEmpty!32746 (List!60929) Bool)

(assert (=> b!5258603 (= res!2231570 (not (isEmpty!32746 (t!374112 zl!343))))))

(declare-fun b!5258604 () Bool)

(declare-fun tp!1470201 () Bool)

(assert (=> b!5258604 (= e!3271252 tp!1470201)))

(declare-fun b!5258605 () Bool)

(declare-fun res!2231571 () Bool)

(assert (=> b!5258605 (=> (not res!2231571) (not e!3271254))))

(declare-fun toList!8660 ((Set Context!8520)) List!60929)

(assert (=> b!5258605 (= res!2231571 (= (toList!8660 z!1189) zl!343))))

(declare-fun res!2231577 () Bool)

(assert (=> start!555400 (=> (not res!2231577) (not e!3271254))))

(assert (=> start!555400 (= res!2231577 (validRegex!6612 r!7292))))

(assert (=> start!555400 e!3271254))

(assert (=> start!555400 e!3271257))

(declare-fun condSetEmpty!33608 () Bool)

(assert (=> start!555400 (= condSetEmpty!33608 (= z!1189 (as set.empty (Set Context!8520))))))

(assert (=> start!555400 setRes!33608))

(assert (=> start!555400 e!3271250))

(assert (=> start!555400 e!3271258))

(declare-fun b!5258606 () Bool)

(declare-fun tp!1470198 () Bool)

(declare-fun tp!1470200 () Bool)

(assert (=> b!5258606 (= e!3271257 (and tp!1470198 tp!1470200))))

(declare-fun b!5258607 () Bool)

(declare-fun res!2231566 () Bool)

(assert (=> b!5258607 (=> res!2231566 e!3271253)))

(declare-fun generalisedUnion!805 (List!60928) Regex!14876)

(declare-fun unfocusZipperList!318 (List!60929) List!60928)

(assert (=> b!5258607 (= res!2231566 (not (= r!7292 (generalisedUnion!805 (unfocusZipperList!318 zl!343)))))))

(assert (= (and start!555400 res!2231577) b!5258605))

(assert (= (and b!5258605 res!2231571) b!5258601))

(assert (= (and b!5258601 res!2231573) b!5258587))

(assert (= (and b!5258587 (not res!2231576)) b!5258603))

(assert (= (and b!5258603 (not res!2231570)) b!5258602))

(assert (= (and b!5258602 (not res!2231579)) b!5258597))

(assert (= (and b!5258597 (not res!2231578)) b!5258607))

(assert (= (and b!5258607 (not res!2231566)) b!5258598))

(assert (= (and b!5258598 (not res!2231574)) b!5258586))

(assert (= (and b!5258586 (not res!2231572)) b!5258594))

(assert (= (and b!5258594 (not res!2231575)) b!5258595))

(assert (= (and b!5258595 c!910129) b!5258584))

(assert (= (and b!5258595 (not c!910129)) b!5258585))

(assert (= (and b!5258584 (not res!2231567)) b!5258591))

(assert (= (and b!5258595 (not res!2231569)) b!5258588))

(assert (= (and b!5258588 (not res!2231568)) b!5258600))

(assert (= (and start!555400 (is-ElementMatch!14876 r!7292)) b!5258589))

(assert (= (and start!555400 (is-Concat!23721 r!7292)) b!5258606))

(assert (= (and start!555400 (is-Star!14876 r!7292)) b!5258596))

(assert (= (and start!555400 (is-Union!14876 r!7292)) b!5258599))

(assert (= (and start!555400 condSetEmpty!33608) setIsEmpty!33608))

(assert (= (and start!555400 (not condSetEmpty!33608)) setNonEmpty!33608))

(assert (= setNonEmpty!33608 b!5258604))

(assert (= b!5258592 b!5258590))

(assert (= (and start!555400 (is-Cons!60805 zl!343)) b!5258592))

(assert (= (and start!555400 (is-Cons!60803 s!2326)) b!5258593))

(declare-fun m!6300856 () Bool)

(assert (=> b!5258600 m!6300856))

(declare-fun m!6300858 () Bool)

(assert (=> b!5258591 m!6300858))

(declare-fun m!6300860 () Bool)

(assert (=> b!5258602 m!6300860))

(declare-fun m!6300862 () Bool)

(assert (=> b!5258605 m!6300862))

(declare-fun m!6300864 () Bool)

(assert (=> b!5258592 m!6300864))

(declare-fun m!6300866 () Bool)

(assert (=> start!555400 m!6300866))

(declare-fun m!6300868 () Bool)

(assert (=> b!5258594 m!6300868))

(declare-fun m!6300870 () Bool)

(assert (=> b!5258587 m!6300870))

(declare-fun m!6300872 () Bool)

(assert (=> b!5258587 m!6300872))

(declare-fun m!6300874 () Bool)

(assert (=> b!5258587 m!6300874))

(declare-fun m!6300876 () Bool)

(assert (=> b!5258584 m!6300876))

(declare-fun m!6300878 () Bool)

(assert (=> b!5258584 m!6300878))

(declare-fun m!6300880 () Bool)

(assert (=> b!5258584 m!6300880))

(declare-fun m!6300882 () Bool)

(assert (=> b!5258595 m!6300882))

(declare-fun m!6300884 () Bool)

(assert (=> b!5258595 m!6300884))

(declare-fun m!6300886 () Bool)

(assert (=> b!5258595 m!6300886))

(declare-fun m!6300888 () Bool)

(assert (=> b!5258595 m!6300888))

(declare-fun m!6300890 () Bool)

(assert (=> b!5258595 m!6300890))

(declare-fun m!6300892 () Bool)

(assert (=> b!5258595 m!6300892))

(declare-fun m!6300894 () Bool)

(assert (=> b!5258595 m!6300894))

(declare-fun m!6300896 () Bool)

(assert (=> b!5258607 m!6300896))

(assert (=> b!5258607 m!6300896))

(declare-fun m!6300898 () Bool)

(assert (=> b!5258607 m!6300898))

(declare-fun m!6300900 () Bool)

(assert (=> b!5258603 m!6300900))

(declare-fun m!6300902 () Bool)

(assert (=> b!5258586 m!6300902))

(declare-fun m!6300904 () Bool)

(assert (=> b!5258586 m!6300904))

(declare-fun m!6300906 () Bool)

(assert (=> b!5258586 m!6300906))

(declare-fun m!6300908 () Bool)

(assert (=> b!5258586 m!6300908))

(assert (=> b!5258586 m!6300908))

(declare-fun m!6300910 () Bool)

(assert (=> b!5258586 m!6300910))

(assert (=> b!5258586 m!6300902))

(declare-fun m!6300912 () Bool)

(assert (=> b!5258586 m!6300912))

(declare-fun m!6300914 () Bool)

(assert (=> setNonEmpty!33608 m!6300914))

(declare-fun m!6300916 () Bool)

(assert (=> b!5258601 m!6300916))

(declare-fun m!6300918 () Bool)

(assert (=> b!5258588 m!6300918))

(push 1)

(assert (not b!5258606))

(assert (not b!5258596))

(assert (not b!5258605))

(assert (not b!5258599))

(assert (not b!5258586))

(assert (not b!5258601))

(assert (not start!555400))

(assert tp_is_empty!39005)

(assert (not b!5258588))

(assert (not b!5258590))

(assert (not b!5258604))

(assert (not b!5258595))

(assert (not b!5258600))

(assert (not b!5258592))

(assert (not b!5258603))

(assert (not b!5258594))

(assert (not b!5258584))

(assert (not b!5258607))

(assert (not b!5258591))

(assert (not b!5258593))

(assert (not b!5258602))

(assert (not b!5258587))

(assert (not setNonEmpty!33608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5258722 () Bool)

(declare-fun e!3271314 () Bool)

(declare-fun e!3271317 () Bool)

(assert (=> b!5258722 (= e!3271314 e!3271317)))

(declare-fun res!2231646 () Bool)

(assert (=> b!5258722 (= res!2231646 (not (nullable!5045 (reg!15205 (regOne!30264 (regOne!30264 r!7292))))))))

(assert (=> b!5258722 (=> (not res!2231646) (not e!3271317))))

(declare-fun bm!372728 () Bool)

(declare-fun call!372734 () Bool)

(declare-fun c!910143 () Bool)

(assert (=> bm!372728 (= call!372734 (validRegex!6612 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))))))

(declare-fun b!5258723 () Bool)

(declare-fun res!2231644 () Bool)

(declare-fun e!3271318 () Bool)

(assert (=> b!5258723 (=> res!2231644 e!3271318)))

(assert (=> b!5258723 (= res!2231644 (not (is-Concat!23721 (regOne!30264 (regOne!30264 r!7292)))))))

(declare-fun e!3271319 () Bool)

(assert (=> b!5258723 (= e!3271319 e!3271318)))

(declare-fun b!5258724 () Bool)

(declare-fun e!3271316 () Bool)

(assert (=> b!5258724 (= e!3271316 e!3271314)))

(declare-fun c!910142 () Bool)

(assert (=> b!5258724 (= c!910142 (is-Star!14876 (regOne!30264 (regOne!30264 r!7292))))))

(declare-fun b!5258725 () Bool)

(declare-fun res!2231645 () Bool)

(declare-fun e!3271315 () Bool)

(assert (=> b!5258725 (=> (not res!2231645) (not e!3271315))))

(assert (=> b!5258725 (= res!2231645 call!372734)))

(assert (=> b!5258725 (= e!3271319 e!3271315)))

(declare-fun b!5258726 () Bool)

(declare-fun call!372735 () Bool)

(assert (=> b!5258726 (= e!3271315 call!372735)))

(declare-fun b!5258727 () Bool)

(assert (=> b!5258727 (= e!3271314 e!3271319)))

(assert (=> b!5258727 (= c!910143 (is-Union!14876 (regOne!30264 (regOne!30264 r!7292))))))

(declare-fun b!5258728 () Bool)

(declare-fun e!3271313 () Bool)

(assert (=> b!5258728 (= e!3271313 call!372735)))

(declare-fun d!1692810 () Bool)

(declare-fun res!2231647 () Bool)

(assert (=> d!1692810 (=> res!2231647 e!3271316)))

(assert (=> d!1692810 (= res!2231647 (is-ElementMatch!14876 (regOne!30264 (regOne!30264 r!7292))))))

(assert (=> d!1692810 (= (validRegex!6612 (regOne!30264 (regOne!30264 r!7292))) e!3271316)))

(declare-fun call!372733 () Bool)

(declare-fun bm!372729 () Bool)

(assert (=> bm!372729 (= call!372733 (validRegex!6612 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))))))

(declare-fun b!5258729 () Bool)

(assert (=> b!5258729 (= e!3271317 call!372733)))

(declare-fun b!5258730 () Bool)

(assert (=> b!5258730 (= e!3271318 e!3271313)))

(declare-fun res!2231648 () Bool)

(assert (=> b!5258730 (=> (not res!2231648) (not e!3271313))))

(assert (=> b!5258730 (= res!2231648 call!372734)))

(declare-fun bm!372730 () Bool)

(assert (=> bm!372730 (= call!372735 call!372733)))

(assert (= (and d!1692810 (not res!2231647)) b!5258724))

(assert (= (and b!5258724 c!910142) b!5258722))

(assert (= (and b!5258724 (not c!910142)) b!5258727))

(assert (= (and b!5258722 res!2231646) b!5258729))

(assert (= (and b!5258727 c!910143) b!5258725))

(assert (= (and b!5258727 (not c!910143)) b!5258723))

(assert (= (and b!5258725 res!2231645) b!5258726))

(assert (= (and b!5258723 (not res!2231644)) b!5258730))

(assert (= (and b!5258730 res!2231648) b!5258728))

(assert (= (or b!5258726 b!5258728) bm!372730))

(assert (= (or b!5258725 b!5258730) bm!372728))

(assert (= (or b!5258729 bm!372730) bm!372729))

(declare-fun m!6300984 () Bool)

(assert (=> b!5258722 m!6300984))

(declare-fun m!6300986 () Bool)

(assert (=> bm!372728 m!6300986))

(declare-fun m!6300988 () Bool)

(assert (=> bm!372729 m!6300988))

(assert (=> b!5258600 d!1692810))

(declare-fun b!5258751 () Bool)

(declare-fun e!3271336 () Regex!14876)

(assert (=> b!5258751 (= e!3271336 (Concat!23721 (h!67252 (exprs!4760 (h!67253 zl!343))) (generalisedConcat!545 (t!374111 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun b!5258752 () Bool)

(declare-fun e!3271332 () Bool)

(declare-fun lt!2155141 () Regex!14876)

(declare-fun head!11276 (List!60928) Regex!14876)

(assert (=> b!5258752 (= e!3271332 (= lt!2155141 (head!11276 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5258753 () Bool)

(declare-fun e!3271337 () Bool)

(declare-fun isEmptyExpr!814 (Regex!14876) Bool)

(assert (=> b!5258753 (= e!3271337 (isEmptyExpr!814 lt!2155141))))

(declare-fun d!1692812 () Bool)

(declare-fun e!3271334 () Bool)

(assert (=> d!1692812 e!3271334))

(declare-fun res!2231654 () Bool)

(assert (=> d!1692812 (=> (not res!2231654) (not e!3271334))))

(assert (=> d!1692812 (= res!2231654 (validRegex!6612 lt!2155141))))

(declare-fun e!3271333 () Regex!14876)

(assert (=> d!1692812 (= lt!2155141 e!3271333)))

(declare-fun c!910152 () Bool)

(declare-fun e!3271335 () Bool)

(assert (=> d!1692812 (= c!910152 e!3271335)))

(declare-fun res!2231653 () Bool)

(assert (=> d!1692812 (=> (not res!2231653) (not e!3271335))))

(assert (=> d!1692812 (= res!2231653 (is-Cons!60804 (exprs!4760 (h!67253 zl!343))))))

(declare-fun lambda!265076 () Int)

(declare-fun forall!14288 (List!60928 Int) Bool)

(assert (=> d!1692812 (forall!14288 (exprs!4760 (h!67253 zl!343)) lambda!265076)))

(assert (=> d!1692812 (= (generalisedConcat!545 (exprs!4760 (h!67253 zl!343))) lt!2155141)))

(declare-fun b!5258754 () Bool)

(assert (=> b!5258754 (= e!3271336 EmptyExpr!14876)))

(declare-fun b!5258755 () Bool)

(assert (=> b!5258755 (= e!3271335 (isEmpty!32745 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5258756 () Bool)

(assert (=> b!5258756 (= e!3271333 e!3271336)))

(declare-fun c!910154 () Bool)

(assert (=> b!5258756 (= c!910154 (is-Cons!60804 (exprs!4760 (h!67253 zl!343))))))

(declare-fun b!5258757 () Bool)

(assert (=> b!5258757 (= e!3271334 e!3271337)))

(declare-fun c!910153 () Bool)

(assert (=> b!5258757 (= c!910153 (isEmpty!32745 (exprs!4760 (h!67253 zl!343))))))

(declare-fun b!5258758 () Bool)

(assert (=> b!5258758 (= e!3271337 e!3271332)))

(declare-fun c!910155 () Bool)

(declare-fun tail!10373 (List!60928) List!60928)

(assert (=> b!5258758 (= c!910155 (isEmpty!32745 (tail!10373 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5258759 () Bool)

(assert (=> b!5258759 (= e!3271333 (h!67252 (exprs!4760 (h!67253 zl!343))))))

(declare-fun b!5258760 () Bool)

(declare-fun isConcat!337 (Regex!14876) Bool)

(assert (=> b!5258760 (= e!3271332 (isConcat!337 lt!2155141))))

(assert (= (and d!1692812 res!2231653) b!5258755))

(assert (= (and d!1692812 c!910152) b!5258759))

(assert (= (and d!1692812 (not c!910152)) b!5258756))

(assert (= (and b!5258756 c!910154) b!5258751))

(assert (= (and b!5258756 (not c!910154)) b!5258754))

(assert (= (and d!1692812 res!2231654) b!5258757))

(assert (= (and b!5258757 c!910153) b!5258753))

(assert (= (and b!5258757 (not c!910153)) b!5258758))

(assert (= (and b!5258758 c!910155) b!5258752))

(assert (= (and b!5258758 (not c!910155)) b!5258760))

(declare-fun m!6300990 () Bool)

(assert (=> b!5258751 m!6300990))

(declare-fun m!6300992 () Bool)

(assert (=> d!1692812 m!6300992))

(declare-fun m!6300994 () Bool)

(assert (=> d!1692812 m!6300994))

(assert (=> b!5258755 m!6300868))

(declare-fun m!6300996 () Bool)

(assert (=> b!5258752 m!6300996))

(declare-fun m!6300998 () Bool)

(assert (=> b!5258753 m!6300998))

(declare-fun m!6301000 () Bool)

(assert (=> b!5258757 m!6301000))

(declare-fun m!6301002 () Bool)

(assert (=> b!5258758 m!6301002))

(assert (=> b!5258758 m!6301002))

(declare-fun m!6301004 () Bool)

(assert (=> b!5258758 m!6301004))

(declare-fun m!6301006 () Bool)

(assert (=> b!5258760 m!6301006))

(assert (=> b!5258602 d!1692812))

(declare-fun d!1692814 () Bool)

(assert (=> d!1692814 (= (isEmpty!32746 (t!374112 zl!343)) (is-Nil!60805 (t!374112 zl!343)))))

(assert (=> b!5258603 d!1692814))

(declare-fun d!1692816 () Bool)

(declare-fun lt!2155144 () Regex!14876)

(assert (=> d!1692816 (validRegex!6612 lt!2155144)))

(assert (=> d!1692816 (= lt!2155144 (generalisedUnion!805 (unfocusZipperList!318 zl!343)))))

(assert (=> d!1692816 (= (unfocusZipper!618 zl!343) lt!2155144)))

(declare-fun bs!1219385 () Bool)

(assert (= bs!1219385 d!1692816))

(declare-fun m!6301008 () Bool)

(assert (=> bs!1219385 m!6301008))

(assert (=> bs!1219385 m!6300896))

(assert (=> bs!1219385 m!6300896))

(assert (=> bs!1219385 m!6300898))

(assert (=> b!5258601 d!1692816))

(declare-fun d!1692818 () Bool)

(declare-fun c!910158 () Bool)

(declare-fun isEmpty!32749 (List!60927) Bool)

(assert (=> d!1692818 (= c!910158 (isEmpty!32749 (t!374110 s!2326)))))

(declare-fun e!3271340 () Bool)

(assert (=> d!1692818 (= (matchZipper!1120 lt!2155094 (t!374110 s!2326)) e!3271340)))

(declare-fun b!5258765 () Bool)

(declare-fun nullableZipper!1279 ((Set Context!8520)) Bool)

(assert (=> b!5258765 (= e!3271340 (nullableZipper!1279 lt!2155094))))

(declare-fun b!5258766 () Bool)

(declare-fun derivationStepZipper!1123 ((Set Context!8520) C!30022) (Set Context!8520))

(declare-fun head!11277 (List!60927) C!30022)

(declare-fun tail!10374 (List!60927) List!60927)

(assert (=> b!5258766 (= e!3271340 (matchZipper!1120 (derivationStepZipper!1123 lt!2155094 (head!11277 (t!374110 s!2326))) (tail!10374 (t!374110 s!2326))))))

(assert (= (and d!1692818 c!910158) b!5258765))

(assert (= (and d!1692818 (not c!910158)) b!5258766))

(declare-fun m!6301010 () Bool)

(assert (=> d!1692818 m!6301010))

(declare-fun m!6301012 () Bool)

(assert (=> b!5258765 m!6301012))

(declare-fun m!6301014 () Bool)

(assert (=> b!5258766 m!6301014))

(assert (=> b!5258766 m!6301014))

(declare-fun m!6301016 () Bool)

(assert (=> b!5258766 m!6301016))

(declare-fun m!6301018 () Bool)

(assert (=> b!5258766 m!6301018))

(assert (=> b!5258766 m!6301016))

(assert (=> b!5258766 m!6301018))

(declare-fun m!6301020 () Bool)

(assert (=> b!5258766 m!6301020))

(assert (=> b!5258591 d!1692818))

(declare-fun bs!1219386 () Bool)

(declare-fun d!1692820 () Bool)

(assert (= bs!1219386 (and d!1692820 d!1692812)))

(declare-fun lambda!265079 () Int)

(assert (=> bs!1219386 (= lambda!265079 lambda!265076)))

(assert (=> d!1692820 (= (inv!80438 (h!67253 zl!343)) (forall!14288 (exprs!4760 (h!67253 zl!343)) lambda!265079))))

(declare-fun bs!1219387 () Bool)

(assert (= bs!1219387 d!1692820))

(declare-fun m!6301022 () Bool)

(assert (=> bs!1219387 m!6301022))

(assert (=> b!5258592 d!1692820))

(declare-fun d!1692822 () Bool)

(declare-fun e!3271343 () Bool)

(assert (=> d!1692822 e!3271343))

(declare-fun res!2231657 () Bool)

(assert (=> d!1692822 (=> (not res!2231657) (not e!3271343))))

(declare-fun lt!2155147 () List!60929)

(declare-fun noDuplicate!1234 (List!60929) Bool)

(assert (=> d!1692822 (= res!2231657 (noDuplicate!1234 lt!2155147))))

(declare-fun choose!39222 ((Set Context!8520)) List!60929)

(assert (=> d!1692822 (= lt!2155147 (choose!39222 z!1189))))

(assert (=> d!1692822 (= (toList!8660 z!1189) lt!2155147)))

(declare-fun b!5258769 () Bool)

(declare-fun content!10801 (List!60929) (Set Context!8520))

(assert (=> b!5258769 (= e!3271343 (= (content!10801 lt!2155147) z!1189))))

(assert (= (and d!1692822 res!2231657) b!5258769))

(declare-fun m!6301024 () Bool)

(assert (=> d!1692822 m!6301024))

(declare-fun m!6301026 () Bool)

(assert (=> d!1692822 m!6301026))

(declare-fun m!6301028 () Bool)

(assert (=> b!5258769 m!6301028))

(assert (=> b!5258605 d!1692822))

(declare-fun bs!1219388 () Bool)

(declare-fun d!1692824 () Bool)

(assert (= bs!1219388 (and d!1692824 d!1692812)))

(declare-fun lambda!265080 () Int)

(assert (=> bs!1219388 (= lambda!265080 lambda!265076)))

(declare-fun bs!1219389 () Bool)

(assert (= bs!1219389 (and d!1692824 d!1692820)))

(assert (=> bs!1219389 (= lambda!265080 lambda!265079)))

(assert (=> d!1692824 (= (inv!80438 setElem!33608) (forall!14288 (exprs!4760 setElem!33608) lambda!265080))))

(declare-fun bs!1219390 () Bool)

(assert (= bs!1219390 d!1692824))

(declare-fun m!6301030 () Bool)

(assert (=> bs!1219390 m!6301030))

(assert (=> setNonEmpty!33608 d!1692824))

(declare-fun b!5258770 () Bool)

(declare-fun e!3271345 () Bool)

(declare-fun e!3271348 () Bool)

(assert (=> b!5258770 (= e!3271345 e!3271348)))

(declare-fun res!2231660 () Bool)

(assert (=> b!5258770 (= res!2231660 (not (nullable!5045 (reg!15205 r!7292))))))

(assert (=> b!5258770 (=> (not res!2231660) (not e!3271348))))

(declare-fun bm!372731 () Bool)

(declare-fun call!372737 () Bool)

(declare-fun c!910160 () Bool)

(assert (=> bm!372731 (= call!372737 (validRegex!6612 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))))))

(declare-fun b!5258771 () Bool)

(declare-fun res!2231658 () Bool)

(declare-fun e!3271349 () Bool)

(assert (=> b!5258771 (=> res!2231658 e!3271349)))

(assert (=> b!5258771 (= res!2231658 (not (is-Concat!23721 r!7292)))))

(declare-fun e!3271350 () Bool)

(assert (=> b!5258771 (= e!3271350 e!3271349)))

(declare-fun b!5258772 () Bool)

(declare-fun e!3271347 () Bool)

(assert (=> b!5258772 (= e!3271347 e!3271345)))

(declare-fun c!910159 () Bool)

(assert (=> b!5258772 (= c!910159 (is-Star!14876 r!7292))))

(declare-fun b!5258773 () Bool)

(declare-fun res!2231659 () Bool)

(declare-fun e!3271346 () Bool)

(assert (=> b!5258773 (=> (not res!2231659) (not e!3271346))))

(assert (=> b!5258773 (= res!2231659 call!372737)))

(assert (=> b!5258773 (= e!3271350 e!3271346)))

(declare-fun b!5258774 () Bool)

(declare-fun call!372738 () Bool)

(assert (=> b!5258774 (= e!3271346 call!372738)))

(declare-fun b!5258775 () Bool)

(assert (=> b!5258775 (= e!3271345 e!3271350)))

(assert (=> b!5258775 (= c!910160 (is-Union!14876 r!7292))))

(declare-fun b!5258776 () Bool)

(declare-fun e!3271344 () Bool)

(assert (=> b!5258776 (= e!3271344 call!372738)))

(declare-fun d!1692826 () Bool)

(declare-fun res!2231661 () Bool)

(assert (=> d!1692826 (=> res!2231661 e!3271347)))

(assert (=> d!1692826 (= res!2231661 (is-ElementMatch!14876 r!7292))))

(assert (=> d!1692826 (= (validRegex!6612 r!7292) e!3271347)))

(declare-fun bm!372732 () Bool)

(declare-fun call!372736 () Bool)

(assert (=> bm!372732 (= call!372736 (validRegex!6612 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))))))

(declare-fun b!5258777 () Bool)

(assert (=> b!5258777 (= e!3271348 call!372736)))

(declare-fun b!5258778 () Bool)

(assert (=> b!5258778 (= e!3271349 e!3271344)))

(declare-fun res!2231662 () Bool)

(assert (=> b!5258778 (=> (not res!2231662) (not e!3271344))))

(assert (=> b!5258778 (= res!2231662 call!372737)))

(declare-fun bm!372733 () Bool)

(assert (=> bm!372733 (= call!372738 call!372736)))

(assert (= (and d!1692826 (not res!2231661)) b!5258772))

(assert (= (and b!5258772 c!910159) b!5258770))

(assert (= (and b!5258772 (not c!910159)) b!5258775))

(assert (= (and b!5258770 res!2231660) b!5258777))

(assert (= (and b!5258775 c!910160) b!5258773))

(assert (= (and b!5258775 (not c!910160)) b!5258771))

(assert (= (and b!5258773 res!2231659) b!5258774))

(assert (= (and b!5258771 (not res!2231658)) b!5258778))

(assert (= (and b!5258778 res!2231662) b!5258776))

(assert (= (or b!5258774 b!5258776) bm!372733))

(assert (= (or b!5258773 b!5258778) bm!372731))

(assert (= (or b!5258777 bm!372733) bm!372732))

(declare-fun m!6301032 () Bool)

(assert (=> b!5258770 m!6301032))

(declare-fun m!6301034 () Bool)

(assert (=> bm!372731 m!6301034))

(declare-fun m!6301036 () Bool)

(assert (=> bm!372732 m!6301036))

(assert (=> start!555400 d!1692826))

(declare-fun d!1692828 () Bool)

(declare-fun nullableFct!1431 (Regex!14876) Bool)

(assert (=> d!1692828 (= (nullable!5045 (h!67252 (exprs!4760 (h!67253 zl!343)))) (nullableFct!1431 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun bs!1219391 () Bool)

(assert (= bs!1219391 d!1692828))

(declare-fun m!6301038 () Bool)

(assert (=> bs!1219391 m!6301038))

(assert (=> b!5258595 d!1692828))

(declare-fun b!5258789 () Bool)

(declare-fun e!3271357 () (Set Context!8520))

(assert (=> b!5258789 (= e!3271357 (as set.empty (Set Context!8520)))))

(declare-fun b!5258790 () Bool)

(declare-fun e!3271359 () (Set Context!8520))

(assert (=> b!5258790 (= e!3271359 e!3271357)))

(declare-fun c!910166 () Bool)

(assert (=> b!5258790 (= c!910166 (is-Cons!60804 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))

(declare-fun b!5258791 () Bool)

(declare-fun call!372741 () (Set Context!8520))

(assert (=> b!5258791 (= e!3271357 call!372741)))

(declare-fun d!1692830 () Bool)

(declare-fun c!910165 () Bool)

(declare-fun e!3271358 () Bool)

(assert (=> d!1692830 (= c!910165 e!3271358)))

(declare-fun res!2231665 () Bool)

(assert (=> d!1692830 (=> (not res!2231665) (not e!3271358))))

(assert (=> d!1692830 (= res!2231665 (is-Cons!60804 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))

(assert (=> d!1692830 (= (derivationStepZipperUp!248 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))) (h!67251 s!2326)) e!3271359)))

(declare-fun bm!372736 () Bool)

(assert (=> bm!372736 (= call!372741 (derivationStepZipperDown!324 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))) (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (h!67251 s!2326)))))

(declare-fun b!5258792 () Bool)

(assert (=> b!5258792 (= e!3271359 (set.union call!372741 (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (h!67251 s!2326))))))

(declare-fun b!5258793 () Bool)

(assert (=> b!5258793 (= e!3271358 (nullable!5045 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))

(assert (= (and d!1692830 res!2231665) b!5258793))

(assert (= (and d!1692830 c!910165) b!5258792))

(assert (= (and d!1692830 (not c!910165)) b!5258790))

(assert (= (and b!5258790 c!910166) b!5258791))

(assert (= (and b!5258790 (not c!910166)) b!5258789))

(assert (= (or b!5258792 b!5258791) bm!372736))

(declare-fun m!6301040 () Bool)

(assert (=> bm!372736 m!6301040))

(declare-fun m!6301042 () Bool)

(assert (=> b!5258792 m!6301042))

(declare-fun m!6301044 () Bool)

(assert (=> b!5258793 m!6301044))

(assert (=> b!5258595 d!1692830))

(declare-fun b!5258794 () Bool)

(declare-fun e!3271360 () (Set Context!8520))

(assert (=> b!5258794 (= e!3271360 (as set.empty (Set Context!8520)))))

(declare-fun b!5258795 () Bool)

(declare-fun e!3271362 () (Set Context!8520))

(assert (=> b!5258795 (= e!3271362 e!3271360)))

(declare-fun c!910168 () Bool)

(assert (=> b!5258795 (= c!910168 (is-Cons!60804 (exprs!4760 lt!2155101)))))

(declare-fun b!5258796 () Bool)

(declare-fun call!372742 () (Set Context!8520))

(assert (=> b!5258796 (= e!3271360 call!372742)))

(declare-fun d!1692832 () Bool)

(declare-fun c!910167 () Bool)

(declare-fun e!3271361 () Bool)

(assert (=> d!1692832 (= c!910167 e!3271361)))

(declare-fun res!2231666 () Bool)

(assert (=> d!1692832 (=> (not res!2231666) (not e!3271361))))

(assert (=> d!1692832 (= res!2231666 (is-Cons!60804 (exprs!4760 lt!2155101)))))

(assert (=> d!1692832 (= (derivationStepZipperUp!248 lt!2155101 (h!67251 s!2326)) e!3271362)))

(declare-fun bm!372737 () Bool)

(assert (=> bm!372737 (= call!372742 (derivationStepZipperDown!324 (h!67252 (exprs!4760 lt!2155101)) (Context!8521 (t!374111 (exprs!4760 lt!2155101))) (h!67251 s!2326)))))

(declare-fun b!5258797 () Bool)

(assert (=> b!5258797 (= e!3271362 (set.union call!372742 (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 lt!2155101))) (h!67251 s!2326))))))

(declare-fun b!5258798 () Bool)

(assert (=> b!5258798 (= e!3271361 (nullable!5045 (h!67252 (exprs!4760 lt!2155101))))))

(assert (= (and d!1692832 res!2231666) b!5258798))

(assert (= (and d!1692832 c!910167) b!5258797))

(assert (= (and d!1692832 (not c!910167)) b!5258795))

(assert (= (and b!5258795 c!910168) b!5258796))

(assert (= (and b!5258795 (not c!910168)) b!5258794))

(assert (= (or b!5258797 b!5258796) bm!372737))

(declare-fun m!6301046 () Bool)

(assert (=> bm!372737 m!6301046))

(declare-fun m!6301048 () Bool)

(assert (=> b!5258797 m!6301048))

(declare-fun m!6301050 () Bool)

(assert (=> b!5258798 m!6301050))

(assert (=> b!5258595 d!1692832))

(declare-fun d!1692834 () Bool)

(declare-fun choose!39223 ((Set Context!8520) Int) (Set Context!8520))

(assert (=> d!1692834 (= (flatMap!603 z!1189 lambda!265062) (choose!39223 z!1189 lambda!265062))))

(declare-fun bs!1219392 () Bool)

(assert (= bs!1219392 d!1692834))

(declare-fun m!6301052 () Bool)

(assert (=> bs!1219392 m!6301052))

(assert (=> b!5258595 d!1692834))

(declare-fun d!1692836 () Bool)

(declare-fun dynLambda!24022 (Int Context!8520) (Set Context!8520))

(assert (=> d!1692836 (= (flatMap!603 z!1189 lambda!265062) (dynLambda!24022 lambda!265062 (h!67253 zl!343)))))

(declare-fun lt!2155150 () Unit!153022)

(declare-fun choose!39224 ((Set Context!8520) Context!8520 Int) Unit!153022)

(assert (=> d!1692836 (= lt!2155150 (choose!39224 z!1189 (h!67253 zl!343) lambda!265062))))

(assert (=> d!1692836 (= z!1189 (set.insert (h!67253 zl!343) (as set.empty (Set Context!8520))))))

(assert (=> d!1692836 (= (lemmaFlatMapOnSingletonSet!135 z!1189 (h!67253 zl!343) lambda!265062) lt!2155150)))

(declare-fun b_lambda!202949 () Bool)

(assert (=> (not b_lambda!202949) (not d!1692836)))

(declare-fun bs!1219393 () Bool)

(assert (= bs!1219393 d!1692836))

(assert (=> bs!1219393 m!6300886))

(declare-fun m!6301054 () Bool)

(assert (=> bs!1219393 m!6301054))

(declare-fun m!6301056 () Bool)

(assert (=> bs!1219393 m!6301056))

(declare-fun m!6301058 () Bool)

(assert (=> bs!1219393 m!6301058))

(assert (=> b!5258595 d!1692836))

(declare-fun b!5258839 () Bool)

(declare-fun e!3271393 () (Set Context!8520))

(declare-fun call!372766 () (Set Context!8520))

(assert (=> b!5258839 (= e!3271393 call!372766)))

(declare-fun c!910186 () Bool)

(declare-fun bm!372756 () Bool)

(declare-fun c!910183 () Bool)

(declare-fun c!910187 () Bool)

(declare-fun call!372765 () List!60928)

(declare-fun call!372763 () (Set Context!8520))

(assert (=> bm!372756 (= call!372763 (derivationStepZipperDown!324 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343))))))) (ite (or c!910183 c!910186) lt!2155101 (Context!8521 call!372765)) (h!67251 s!2326)))))

(declare-fun b!5258840 () Bool)

(declare-fun e!3271390 () Bool)

(assert (=> b!5258840 (= c!910186 e!3271390)))

(declare-fun res!2231679 () Bool)

(assert (=> b!5258840 (=> (not res!2231679) (not e!3271390))))

(assert (=> b!5258840 (= res!2231679 (is-Concat!23721 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun e!3271394 () (Set Context!8520))

(declare-fun e!3271391 () (Set Context!8520))

(assert (=> b!5258840 (= e!3271394 e!3271391)))

(declare-fun d!1692840 () Bool)

(declare-fun c!910184 () Bool)

(assert (=> d!1692840 (= c!910184 (and (is-ElementMatch!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))) (= (c!910130 (h!67252 (exprs!4760 (h!67253 zl!343)))) (h!67251 s!2326))))))

(declare-fun e!3271389 () (Set Context!8520))

(assert (=> d!1692840 (= (derivationStepZipperDown!324 (h!67252 (exprs!4760 (h!67253 zl!343))) lt!2155101 (h!67251 s!2326)) e!3271389)))

(declare-fun bm!372757 () Bool)

(declare-fun call!372762 () (Set Context!8520))

(assert (=> bm!372757 (= call!372762 call!372763)))

(declare-fun b!5258841 () Bool)

(assert (=> b!5258841 (= e!3271389 e!3271394)))

(assert (=> b!5258841 (= c!910183 (is-Union!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5258842 () Bool)

(declare-fun call!372761 () (Set Context!8520))

(assert (=> b!5258842 (= e!3271391 (set.union call!372761 call!372762))))

(declare-fun call!372764 () List!60928)

(declare-fun bm!372758 () Bool)

(declare-fun $colon$colon!1329 (List!60928 Regex!14876) List!60928)

(assert (=> bm!372758 (= call!372764 ($colon$colon!1329 (exprs!4760 lt!2155101) (ite (or c!910186 c!910187) (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (h!67252 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun b!5258843 () Bool)

(declare-fun e!3271392 () (Set Context!8520))

(assert (=> b!5258843 (= e!3271392 (as set.empty (Set Context!8520)))))

(declare-fun b!5258844 () Bool)

(assert (=> b!5258844 (= e!3271389 (set.insert lt!2155101 (as set.empty (Set Context!8520))))))

(declare-fun b!5258845 () Bool)

(declare-fun c!910185 () Bool)

(assert (=> b!5258845 (= c!910185 (is-Star!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(assert (=> b!5258845 (= e!3271393 e!3271392)))

(declare-fun b!5258846 () Bool)

(assert (=> b!5258846 (= e!3271391 e!3271393)))

(assert (=> b!5258846 (= c!910187 (is-Concat!23721 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5258847 () Bool)

(assert (=> b!5258847 (= e!3271390 (nullable!5045 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun bm!372759 () Bool)

(assert (=> bm!372759 (= call!372766 call!372762)))

(declare-fun b!5258848 () Bool)

(assert (=> b!5258848 (= e!3271394 (set.union call!372763 call!372761))))

(declare-fun bm!372760 () Bool)

(assert (=> bm!372760 (= call!372761 (derivationStepZipperDown!324 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))) (ite c!910183 lt!2155101 (Context!8521 call!372764)) (h!67251 s!2326)))))

(declare-fun bm!372761 () Bool)

(assert (=> bm!372761 (= call!372765 call!372764)))

(declare-fun b!5258849 () Bool)

(assert (=> b!5258849 (= e!3271392 call!372766)))

(assert (= (and d!1692840 c!910184) b!5258844))

(assert (= (and d!1692840 (not c!910184)) b!5258841))

(assert (= (and b!5258841 c!910183) b!5258848))

(assert (= (and b!5258841 (not c!910183)) b!5258840))

(assert (= (and b!5258840 res!2231679) b!5258847))

(assert (= (and b!5258840 c!910186) b!5258842))

(assert (= (and b!5258840 (not c!910186)) b!5258846))

(assert (= (and b!5258846 c!910187) b!5258839))

(assert (= (and b!5258846 (not c!910187)) b!5258845))

(assert (= (and b!5258845 c!910185) b!5258849))

(assert (= (and b!5258845 (not c!910185)) b!5258843))

(assert (= (or b!5258839 b!5258849) bm!372761))

(assert (= (or b!5258839 b!5258849) bm!372759))

(assert (= (or b!5258842 bm!372761) bm!372758))

(assert (= (or b!5258842 bm!372759) bm!372757))

(assert (= (or b!5258848 b!5258842) bm!372760))

(assert (= (or b!5258848 bm!372757) bm!372756))

(declare-fun m!6301062 () Bool)

(assert (=> bm!372758 m!6301062))

(declare-fun m!6301064 () Bool)

(assert (=> bm!372756 m!6301064))

(declare-fun m!6301066 () Bool)

(assert (=> b!5258847 m!6301066))

(declare-fun m!6301068 () Bool)

(assert (=> bm!372760 m!6301068))

(declare-fun m!6301070 () Bool)

(assert (=> b!5258844 m!6301070))

(assert (=> b!5258595 d!1692840))

(declare-fun b!5258850 () Bool)

(declare-fun e!3271395 () (Set Context!8520))

(assert (=> b!5258850 (= e!3271395 (as set.empty (Set Context!8520)))))

(declare-fun b!5258851 () Bool)

(declare-fun e!3271397 () (Set Context!8520))

(assert (=> b!5258851 (= e!3271397 e!3271395)))

(declare-fun c!910189 () Bool)

(assert (=> b!5258851 (= c!910189 (is-Cons!60804 (exprs!4760 (h!67253 zl!343))))))

(declare-fun b!5258852 () Bool)

(declare-fun call!372767 () (Set Context!8520))

(assert (=> b!5258852 (= e!3271395 call!372767)))

(declare-fun d!1692844 () Bool)

(declare-fun c!910188 () Bool)

(declare-fun e!3271396 () Bool)

(assert (=> d!1692844 (= c!910188 e!3271396)))

(declare-fun res!2231680 () Bool)

(assert (=> d!1692844 (=> (not res!2231680) (not e!3271396))))

(assert (=> d!1692844 (= res!2231680 (is-Cons!60804 (exprs!4760 (h!67253 zl!343))))))

(assert (=> d!1692844 (= (derivationStepZipperUp!248 (h!67253 zl!343) (h!67251 s!2326)) e!3271397)))

(declare-fun bm!372762 () Bool)

(assert (=> bm!372762 (= call!372767 (derivationStepZipperDown!324 (h!67252 (exprs!4760 (h!67253 zl!343))) (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))) (h!67251 s!2326)))))

(declare-fun b!5258853 () Bool)

(assert (=> b!5258853 (= e!3271397 (set.union call!372767 (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))) (h!67251 s!2326))))))

(declare-fun b!5258854 () Bool)

(assert (=> b!5258854 (= e!3271396 (nullable!5045 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(assert (= (and d!1692844 res!2231680) b!5258854))

(assert (= (and d!1692844 c!910188) b!5258853))

(assert (= (and d!1692844 (not c!910188)) b!5258851))

(assert (= (and b!5258851 c!910189) b!5258852))

(assert (= (and b!5258851 (not c!910189)) b!5258850))

(assert (= (or b!5258853 b!5258852) bm!372762))

(declare-fun m!6301072 () Bool)

(assert (=> bm!372762 m!6301072))

(declare-fun m!6301074 () Bool)

(assert (=> b!5258853 m!6301074))

(assert (=> b!5258854 m!6300888))

(assert (=> b!5258595 d!1692844))

(declare-fun b!5258882 () Bool)

(declare-fun e!3271417 () Bool)

(declare-fun lt!2155159 () Option!14987)

(assert (=> b!5258882 (= e!3271417 (not (isDefined!11690 lt!2155159)))))

(declare-fun b!5258883 () Bool)

(declare-fun res!2231696 () Bool)

(declare-fun e!3271419 () Bool)

(assert (=> b!5258883 (=> (not res!2231696) (not e!3271419))))

(declare-fun get!20903 (Option!14987) tuple2!64150)

(assert (=> b!5258883 (= res!2231696 (matchR!7061 (regOne!30264 r!7292) (_1!35378 (get!20903 lt!2155159))))))

(declare-fun b!5258884 () Bool)

(declare-fun e!3271415 () Bool)

(assert (=> b!5258884 (= e!3271415 (matchR!7061 (regTwo!30264 r!7292) s!2326))))

(declare-fun b!5258885 () Bool)

(declare-fun ++!13259 (List!60927 List!60927) List!60927)

(assert (=> b!5258885 (= e!3271419 (= (++!13259 (_1!35378 (get!20903 lt!2155159)) (_2!35378 (get!20903 lt!2155159))) s!2326))))

(declare-fun b!5258886 () Bool)

(declare-fun lt!2155157 () Unit!153022)

(declare-fun lt!2155158 () Unit!153022)

(assert (=> b!5258886 (= lt!2155157 lt!2155158)))

(assert (=> b!5258886 (= (++!13259 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (t!374110 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1674 (List!60927 C!30022 List!60927 List!60927) Unit!153022)

(assert (=> b!5258886 (= lt!2155158 (lemmaMoveElementToOtherListKeepsConcatEq!1674 Nil!60803 (h!67251 s!2326) (t!374110 s!2326) s!2326))))

(declare-fun e!3271416 () Option!14987)

(assert (=> b!5258886 (= e!3271416 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (t!374110 s!2326) s!2326))))

(declare-fun b!5258887 () Bool)

(declare-fun e!3271418 () Option!14987)

(assert (=> b!5258887 (= e!3271418 e!3271416)))

(declare-fun c!910197 () Bool)

(assert (=> b!5258887 (= c!910197 (is-Nil!60803 s!2326))))

(declare-fun d!1692846 () Bool)

(assert (=> d!1692846 e!3271417))

(declare-fun res!2231697 () Bool)

(assert (=> d!1692846 (=> res!2231697 e!3271417)))

(assert (=> d!1692846 (= res!2231697 e!3271419)))

(declare-fun res!2231699 () Bool)

(assert (=> d!1692846 (=> (not res!2231699) (not e!3271419))))

(assert (=> d!1692846 (= res!2231699 (isDefined!11690 lt!2155159))))

(assert (=> d!1692846 (= lt!2155159 e!3271418)))

(declare-fun c!910196 () Bool)

(assert (=> d!1692846 (= c!910196 e!3271415)))

(declare-fun res!2231698 () Bool)

(assert (=> d!1692846 (=> (not res!2231698) (not e!3271415))))

(assert (=> d!1692846 (= res!2231698 (matchR!7061 (regOne!30264 r!7292) Nil!60803))))

(assert (=> d!1692846 (validRegex!6612 (regOne!30264 r!7292))))

(assert (=> d!1692846 (= (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326) lt!2155159)))

(declare-fun b!5258888 () Bool)

(assert (=> b!5258888 (= e!3271416 None!14986)))

(declare-fun b!5258889 () Bool)

(assert (=> b!5258889 (= e!3271418 (Some!14986 (tuple2!64151 Nil!60803 s!2326)))))

(declare-fun b!5258890 () Bool)

(declare-fun res!2231700 () Bool)

(assert (=> b!5258890 (=> (not res!2231700) (not e!3271419))))

(assert (=> b!5258890 (= res!2231700 (matchR!7061 (regTwo!30264 r!7292) (_2!35378 (get!20903 lt!2155159))))))

(assert (= (and d!1692846 res!2231698) b!5258884))

(assert (= (and d!1692846 c!910196) b!5258889))

(assert (= (and d!1692846 (not c!910196)) b!5258887))

(assert (= (and b!5258887 c!910197) b!5258888))

(assert (= (and b!5258887 (not c!910197)) b!5258886))

(assert (= (and d!1692846 res!2231699) b!5258883))

(assert (= (and b!5258883 res!2231696) b!5258890))

(assert (= (and b!5258890 res!2231700) b!5258885))

(assert (= (and d!1692846 (not res!2231697)) b!5258882))

(declare-fun m!6301082 () Bool)

(assert (=> b!5258890 m!6301082))

(declare-fun m!6301084 () Bool)

(assert (=> b!5258890 m!6301084))

(declare-fun m!6301086 () Bool)

(assert (=> d!1692846 m!6301086))

(declare-fun m!6301088 () Bool)

(assert (=> d!1692846 m!6301088))

(declare-fun m!6301090 () Bool)

(assert (=> d!1692846 m!6301090))

(declare-fun m!6301092 () Bool)

(assert (=> b!5258884 m!6301092))

(assert (=> b!5258882 m!6301086))

(assert (=> b!5258885 m!6301082))

(declare-fun m!6301094 () Bool)

(assert (=> b!5258885 m!6301094))

(assert (=> b!5258883 m!6301082))

(declare-fun m!6301096 () Bool)

(assert (=> b!5258883 m!6301096))

(declare-fun m!6301098 () Bool)

(assert (=> b!5258886 m!6301098))

(assert (=> b!5258886 m!6301098))

(declare-fun m!6301100 () Bool)

(assert (=> b!5258886 m!6301100))

(declare-fun m!6301102 () Bool)

(assert (=> b!5258886 m!6301102))

(assert (=> b!5258886 m!6301098))

(declare-fun m!6301104 () Bool)

(assert (=> b!5258886 m!6301104))

(assert (=> b!5258586 d!1692846))

(declare-fun d!1692852 () Bool)

(declare-fun choose!39225 (Int) Bool)

(assert (=> d!1692852 (= (Exists!2057 lambda!265061) (choose!39225 lambda!265061))))

(declare-fun bs!1219395 () Bool)

(assert (= bs!1219395 d!1692852))

(declare-fun m!6301106 () Bool)

(assert (=> bs!1219395 m!6301106))

(assert (=> b!5258586 d!1692852))

(declare-fun d!1692854 () Bool)

(assert (=> d!1692854 (= (Exists!2057 lambda!265060) (choose!39225 lambda!265060))))

(declare-fun bs!1219396 () Bool)

(assert (= bs!1219396 d!1692854))

(declare-fun m!6301108 () Bool)

(assert (=> bs!1219396 m!6301108))

(assert (=> b!5258586 d!1692854))

(declare-fun bs!1219397 () Bool)

(declare-fun d!1692856 () Bool)

(assert (= bs!1219397 (and d!1692856 b!5258586)))

(declare-fun lambda!265086 () Int)

(assert (=> bs!1219397 (= lambda!265086 lambda!265060)))

(assert (=> bs!1219397 (not (= lambda!265086 lambda!265061))))

(assert (=> d!1692856 true))

(assert (=> d!1692856 true))

(assert (=> d!1692856 true))

(assert (=> d!1692856 (= (isDefined!11690 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326)) (Exists!2057 lambda!265086))))

(declare-fun lt!2155162 () Unit!153022)

(declare-fun choose!39226 (Regex!14876 Regex!14876 List!60927) Unit!153022)

(assert (=> d!1692856 (= lt!2155162 (choose!39226 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326))))

(assert (=> d!1692856 (validRegex!6612 (regOne!30264 r!7292))))

(assert (=> d!1692856 (= (lemmaFindConcatSeparationEquivalentToExists!1165 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326) lt!2155162)))

(declare-fun bs!1219398 () Bool)

(assert (= bs!1219398 d!1692856))

(declare-fun m!6301110 () Bool)

(assert (=> bs!1219398 m!6301110))

(declare-fun m!6301112 () Bool)

(assert (=> bs!1219398 m!6301112))

(assert (=> bs!1219398 m!6300902))

(assert (=> bs!1219398 m!6300902))

(assert (=> bs!1219398 m!6300904))

(assert (=> bs!1219398 m!6301090))

(assert (=> b!5258586 d!1692856))

(declare-fun bs!1219399 () Bool)

(declare-fun d!1692858 () Bool)

(assert (= bs!1219399 (and d!1692858 b!5258586)))

(declare-fun lambda!265091 () Int)

(assert (=> bs!1219399 (= lambda!265091 lambda!265060)))

(assert (=> bs!1219399 (not (= lambda!265091 lambda!265061))))

(declare-fun bs!1219400 () Bool)

(assert (= bs!1219400 (and d!1692858 d!1692856)))

(assert (=> bs!1219400 (= lambda!265091 lambda!265086)))

(assert (=> d!1692858 true))

(assert (=> d!1692858 true))

(assert (=> d!1692858 true))

(declare-fun lambda!265092 () Int)

(assert (=> bs!1219399 (not (= lambda!265092 lambda!265060))))

(assert (=> bs!1219399 (= lambda!265092 lambda!265061)))

(assert (=> bs!1219400 (not (= lambda!265092 lambda!265086))))

(declare-fun bs!1219401 () Bool)

(assert (= bs!1219401 d!1692858))

(assert (=> bs!1219401 (not (= lambda!265092 lambda!265091))))

(assert (=> d!1692858 true))

(assert (=> d!1692858 true))

(assert (=> d!1692858 true))

(assert (=> d!1692858 (= (Exists!2057 lambda!265091) (Exists!2057 lambda!265092))))

(declare-fun lt!2155165 () Unit!153022)

(declare-fun choose!39227 (Regex!14876 Regex!14876 List!60927) Unit!153022)

(assert (=> d!1692858 (= lt!2155165 (choose!39227 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326))))

(assert (=> d!1692858 (validRegex!6612 (regOne!30264 r!7292))))

(assert (=> d!1692858 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!711 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326) lt!2155165)))

(declare-fun m!6301124 () Bool)

(assert (=> bs!1219401 m!6301124))

(declare-fun m!6301126 () Bool)

(assert (=> bs!1219401 m!6301126))

(declare-fun m!6301128 () Bool)

(assert (=> bs!1219401 m!6301128))

(assert (=> bs!1219401 m!6301090))

(assert (=> b!5258586 d!1692858))

(declare-fun d!1692862 () Bool)

(declare-fun isEmpty!32750 (Option!14987) Bool)

(assert (=> d!1692862 (= (isDefined!11690 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326)) (not (isEmpty!32750 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326))))))

(declare-fun bs!1219403 () Bool)

(assert (= bs!1219403 d!1692862))

(assert (=> bs!1219403 m!6300902))

(declare-fun m!6301132 () Bool)

(assert (=> bs!1219403 m!6301132))

(assert (=> b!5258586 d!1692862))

(declare-fun d!1692866 () Bool)

(assert (=> d!1692866 (= (isEmpty!32745 (t!374111 (exprs!4760 (h!67253 zl!343)))) (is-Nil!60804 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(assert (=> b!5258594 d!1692866))

(declare-fun d!1692868 () Bool)

(declare-fun e!3271450 () Bool)

(assert (=> d!1692868 (= (matchZipper!1120 (set.union lt!2155091 lt!2155094) (t!374110 s!2326)) e!3271450)))

(declare-fun res!2231720 () Bool)

(assert (=> d!1692868 (=> res!2231720 e!3271450)))

(assert (=> d!1692868 (= res!2231720 (matchZipper!1120 lt!2155091 (t!374110 s!2326)))))

(declare-fun lt!2155168 () Unit!153022)

(declare-fun choose!39228 ((Set Context!8520) (Set Context!8520) List!60927) Unit!153022)

(assert (=> d!1692868 (= lt!2155168 (choose!39228 lt!2155091 lt!2155094 (t!374110 s!2326)))))

(assert (=> d!1692868 (= (lemmaZipperConcatMatchesSameAsBothZippers!113 lt!2155091 lt!2155094 (t!374110 s!2326)) lt!2155168)))

(declare-fun b!5258946 () Bool)

(assert (=> b!5258946 (= e!3271450 (matchZipper!1120 lt!2155094 (t!374110 s!2326)))))

(assert (= (and d!1692868 (not res!2231720)) b!5258946))

(assert (=> d!1692868 m!6300880))

(assert (=> d!1692868 m!6300878))

(declare-fun m!6301134 () Bool)

(assert (=> d!1692868 m!6301134))

(assert (=> b!5258946 m!6300858))

(assert (=> b!5258584 d!1692868))

(declare-fun d!1692870 () Bool)

(declare-fun c!910217 () Bool)

(assert (=> d!1692870 (= c!910217 (isEmpty!32749 (t!374110 s!2326)))))

(declare-fun e!3271453 () Bool)

(assert (=> d!1692870 (= (matchZipper!1120 lt!2155091 (t!374110 s!2326)) e!3271453)))

(declare-fun b!5258949 () Bool)

(assert (=> b!5258949 (= e!3271453 (nullableZipper!1279 lt!2155091))))

(declare-fun b!5258950 () Bool)

(assert (=> b!5258950 (= e!3271453 (matchZipper!1120 (derivationStepZipper!1123 lt!2155091 (head!11277 (t!374110 s!2326))) (tail!10374 (t!374110 s!2326))))))

(assert (= (and d!1692870 c!910217) b!5258949))

(assert (= (and d!1692870 (not c!910217)) b!5258950))

(assert (=> d!1692870 m!6301010))

(declare-fun m!6301136 () Bool)

(assert (=> b!5258949 m!6301136))

(assert (=> b!5258950 m!6301014))

(assert (=> b!5258950 m!6301014))

(declare-fun m!6301138 () Bool)

(assert (=> b!5258950 m!6301138))

(assert (=> b!5258950 m!6301018))

(assert (=> b!5258950 m!6301138))

(assert (=> b!5258950 m!6301018))

(declare-fun m!6301140 () Bool)

(assert (=> b!5258950 m!6301140))

(assert (=> b!5258584 d!1692870))

(declare-fun d!1692872 () Bool)

(declare-fun c!910218 () Bool)

(assert (=> d!1692872 (= c!910218 (isEmpty!32749 (t!374110 s!2326)))))

(declare-fun e!3271454 () Bool)

(assert (=> d!1692872 (= (matchZipper!1120 (set.union lt!2155091 lt!2155094) (t!374110 s!2326)) e!3271454)))

(declare-fun b!5258951 () Bool)

(assert (=> b!5258951 (= e!3271454 (nullableZipper!1279 (set.union lt!2155091 lt!2155094)))))

(declare-fun b!5258952 () Bool)

(assert (=> b!5258952 (= e!3271454 (matchZipper!1120 (derivationStepZipper!1123 (set.union lt!2155091 lt!2155094) (head!11277 (t!374110 s!2326))) (tail!10374 (t!374110 s!2326))))))

(assert (= (and d!1692872 c!910218) b!5258951))

(assert (= (and d!1692872 (not c!910218)) b!5258952))

(assert (=> d!1692872 m!6301010))

(declare-fun m!6301142 () Bool)

(assert (=> b!5258951 m!6301142))

(assert (=> b!5258952 m!6301014))

(assert (=> b!5258952 m!6301014))

(declare-fun m!6301144 () Bool)

(assert (=> b!5258952 m!6301144))

(assert (=> b!5258952 m!6301018))

(assert (=> b!5258952 m!6301144))

(assert (=> b!5258952 m!6301018))

(declare-fun m!6301146 () Bool)

(assert (=> b!5258952 m!6301146))

(assert (=> b!5258584 d!1692872))

(declare-fun d!1692874 () Bool)

(assert (=> d!1692874 (= (nullable!5045 (regOne!30264 (regOne!30264 r!7292))) (nullableFct!1431 (regOne!30264 (regOne!30264 r!7292))))))

(declare-fun bs!1219404 () Bool)

(assert (= bs!1219404 d!1692874))

(declare-fun m!6301148 () Bool)

(assert (=> bs!1219404 m!6301148))

(assert (=> b!5258588 d!1692874))

(declare-fun bs!1219406 () Bool)

(declare-fun b!5259008 () Bool)

(assert (= bs!1219406 (and b!5259008 d!1692858)))

(declare-fun lambda!265097 () Int)

(assert (=> bs!1219406 (not (= lambda!265097 lambda!265092))))

(assert (=> bs!1219406 (not (= lambda!265097 lambda!265091))))

(declare-fun bs!1219407 () Bool)

(assert (= bs!1219407 (and b!5259008 b!5258586)))

(assert (=> bs!1219407 (not (= lambda!265097 lambda!265060))))

(assert (=> bs!1219407 (not (= lambda!265097 lambda!265061))))

(declare-fun bs!1219409 () Bool)

(assert (= bs!1219409 (and b!5259008 d!1692856)))

(assert (=> bs!1219409 (not (= lambda!265097 lambda!265086))))

(assert (=> b!5259008 true))

(assert (=> b!5259008 true))

(declare-fun bs!1219410 () Bool)

(declare-fun b!5259003 () Bool)

(assert (= bs!1219410 (and b!5259003 d!1692858)))

(declare-fun lambda!265098 () Int)

(assert (=> bs!1219410 (= lambda!265098 lambda!265092)))

(declare-fun bs!1219411 () Bool)

(assert (= bs!1219411 (and b!5259003 b!5259008)))

(assert (=> bs!1219411 (not (= lambda!265098 lambda!265097))))

(assert (=> bs!1219410 (not (= lambda!265098 lambda!265091))))

(declare-fun bs!1219412 () Bool)

(assert (= bs!1219412 (and b!5259003 b!5258586)))

(assert (=> bs!1219412 (not (= lambda!265098 lambda!265060))))

(assert (=> bs!1219412 (= lambda!265098 lambda!265061)))

(declare-fun bs!1219413 () Bool)

(assert (= bs!1219413 (and b!5259003 d!1692856)))

(assert (=> bs!1219413 (not (= lambda!265098 lambda!265086))))

(assert (=> b!5259003 true))

(assert (=> b!5259003 true))

(declare-fun b!5259000 () Bool)

(declare-fun c!910234 () Bool)

(assert (=> b!5259000 (= c!910234 (is-Union!14876 r!7292))))

(declare-fun e!3271486 () Bool)

(declare-fun e!3271488 () Bool)

(assert (=> b!5259000 (= e!3271486 e!3271488)))

(declare-fun bm!372793 () Bool)

(declare-fun call!372799 () Bool)

(assert (=> bm!372793 (= call!372799 (isEmpty!32749 s!2326))))

(declare-fun b!5259001 () Bool)

(declare-fun res!2231742 () Bool)

(declare-fun e!3271482 () Bool)

(assert (=> b!5259001 (=> res!2231742 e!3271482)))

(assert (=> b!5259001 (= res!2231742 call!372799)))

(declare-fun e!3271487 () Bool)

(assert (=> b!5259001 (= e!3271487 e!3271482)))

(declare-fun b!5259002 () Bool)

(declare-fun e!3271484 () Bool)

(assert (=> b!5259002 (= e!3271484 (matchRSpec!1979 (regTwo!30265 r!7292) s!2326))))

(declare-fun call!372798 () Bool)

(assert (=> b!5259003 (= e!3271487 call!372798)))

(declare-fun b!5259004 () Bool)

(assert (=> b!5259004 (= e!3271488 e!3271487)))

(declare-fun c!910235 () Bool)

(assert (=> b!5259004 (= c!910235 (is-Star!14876 r!7292))))

(declare-fun b!5259005 () Bool)

(declare-fun c!910236 () Bool)

(assert (=> b!5259005 (= c!910236 (is-ElementMatch!14876 r!7292))))

(declare-fun e!3271483 () Bool)

(assert (=> b!5259005 (= e!3271483 e!3271486)))

(declare-fun b!5259006 () Bool)

(declare-fun e!3271485 () Bool)

(assert (=> b!5259006 (= e!3271485 e!3271483)))

(declare-fun res!2231740 () Bool)

(assert (=> b!5259006 (= res!2231740 (not (is-EmptyLang!14876 r!7292)))))

(assert (=> b!5259006 (=> (not res!2231740) (not e!3271483))))

(declare-fun d!1692876 () Bool)

(declare-fun c!910233 () Bool)

(assert (=> d!1692876 (= c!910233 (is-EmptyExpr!14876 r!7292))))

(assert (=> d!1692876 (= (matchRSpec!1979 r!7292 s!2326) e!3271485)))

(declare-fun b!5259007 () Bool)

(assert (=> b!5259007 (= e!3271488 e!3271484)))

(declare-fun res!2231741 () Bool)

(assert (=> b!5259007 (= res!2231741 (matchRSpec!1979 (regOne!30265 r!7292) s!2326))))

(assert (=> b!5259007 (=> res!2231741 e!3271484)))

(declare-fun bm!372794 () Bool)

(assert (=> bm!372794 (= call!372798 (Exists!2057 (ite c!910235 lambda!265097 lambda!265098)))))

(assert (=> b!5259008 (= e!3271482 call!372798)))

(declare-fun b!5259009 () Bool)

(assert (=> b!5259009 (= e!3271485 call!372799)))

(declare-fun b!5259010 () Bool)

(assert (=> b!5259010 (= e!3271486 (= s!2326 (Cons!60803 (c!910130 r!7292) Nil!60803)))))

(assert (= (and d!1692876 c!910233) b!5259009))

(assert (= (and d!1692876 (not c!910233)) b!5259006))

(assert (= (and b!5259006 res!2231740) b!5259005))

(assert (= (and b!5259005 c!910236) b!5259010))

(assert (= (and b!5259005 (not c!910236)) b!5259000))

(assert (= (and b!5259000 c!910234) b!5259007))

(assert (= (and b!5259000 (not c!910234)) b!5259004))

(assert (= (and b!5259007 (not res!2231741)) b!5259002))

(assert (= (and b!5259004 c!910235) b!5259001))

(assert (= (and b!5259004 (not c!910235)) b!5259003))

(assert (= (and b!5259001 (not res!2231742)) b!5259008))

(assert (= (or b!5259008 b!5259003) bm!372794))

(assert (= (or b!5259009 b!5259001) bm!372793))

(declare-fun m!6301174 () Bool)

(assert (=> bm!372793 m!6301174))

(declare-fun m!6301176 () Bool)

(assert (=> b!5259002 m!6301176))

(declare-fun m!6301178 () Bool)

(assert (=> b!5259007 m!6301178))

(declare-fun m!6301180 () Bool)

(assert (=> bm!372794 m!6301180))

(assert (=> b!5258587 d!1692876))

(declare-fun b!5259061 () Bool)

(declare-fun e!3271523 () Bool)

(declare-fun e!3271518 () Bool)

(assert (=> b!5259061 (= e!3271523 e!3271518)))

(declare-fun res!2231765 () Bool)

(assert (=> b!5259061 (=> (not res!2231765) (not e!3271518))))

(declare-fun lt!2155174 () Bool)

(assert (=> b!5259061 (= res!2231765 (not lt!2155174))))

(declare-fun b!5259062 () Bool)

(declare-fun res!2231767 () Bool)

(declare-fun e!3271522 () Bool)

(assert (=> b!5259062 (=> (not res!2231767) (not e!3271522))))

(declare-fun call!372802 () Bool)

(assert (=> b!5259062 (= res!2231767 (not call!372802))))

(declare-fun b!5259063 () Bool)

(declare-fun e!3271520 () Bool)

(declare-fun derivativeStep!4100 (Regex!14876 C!30022) Regex!14876)

(assert (=> b!5259063 (= e!3271520 (matchR!7061 (derivativeStep!4100 r!7292 (head!11277 s!2326)) (tail!10374 s!2326)))))

(declare-fun b!5259064 () Bool)

(declare-fun e!3271521 () Bool)

(assert (=> b!5259064 (= e!3271521 (not lt!2155174))))

(declare-fun b!5259065 () Bool)

(declare-fun res!2231766 () Bool)

(assert (=> b!5259065 (=> res!2231766 e!3271523)))

(assert (=> b!5259065 (= res!2231766 e!3271522)))

(declare-fun res!2231772 () Bool)

(assert (=> b!5259065 (=> (not res!2231772) (not e!3271522))))

(assert (=> b!5259065 (= res!2231772 lt!2155174)))

(declare-fun b!5259066 () Bool)

(declare-fun e!3271517 () Bool)

(assert (=> b!5259066 (= e!3271518 e!3271517)))

(declare-fun res!2231771 () Bool)

(assert (=> b!5259066 (=> res!2231771 e!3271517)))

(assert (=> b!5259066 (= res!2231771 call!372802)))

(declare-fun d!1692888 () Bool)

(declare-fun e!3271519 () Bool)

(assert (=> d!1692888 e!3271519))

(declare-fun c!910251 () Bool)

(assert (=> d!1692888 (= c!910251 (is-EmptyExpr!14876 r!7292))))

(assert (=> d!1692888 (= lt!2155174 e!3271520)))

(declare-fun c!910252 () Bool)

(assert (=> d!1692888 (= c!910252 (isEmpty!32749 s!2326))))

(assert (=> d!1692888 (validRegex!6612 r!7292)))

(assert (=> d!1692888 (= (matchR!7061 r!7292 s!2326) lt!2155174)))

(declare-fun b!5259067 () Bool)

(declare-fun res!2231770 () Bool)

(assert (=> b!5259067 (=> res!2231770 e!3271517)))

(assert (=> b!5259067 (= res!2231770 (not (isEmpty!32749 (tail!10374 s!2326))))))

(declare-fun b!5259068 () Bool)

(assert (=> b!5259068 (= e!3271519 (= lt!2155174 call!372802))))

(declare-fun bm!372797 () Bool)

(assert (=> bm!372797 (= call!372802 (isEmpty!32749 s!2326))))

(declare-fun b!5259069 () Bool)

(assert (=> b!5259069 (= e!3271517 (not (= (head!11277 s!2326) (c!910130 r!7292))))))

(declare-fun b!5259070 () Bool)

(declare-fun res!2231768 () Bool)

(assert (=> b!5259070 (=> (not res!2231768) (not e!3271522))))

(assert (=> b!5259070 (= res!2231768 (isEmpty!32749 (tail!10374 s!2326)))))

(declare-fun b!5259071 () Bool)

(assert (=> b!5259071 (= e!3271520 (nullable!5045 r!7292))))

(declare-fun b!5259072 () Bool)

(assert (=> b!5259072 (= e!3271522 (= (head!11277 s!2326) (c!910130 r!7292)))))

(declare-fun b!5259073 () Bool)

(declare-fun res!2231769 () Bool)

(assert (=> b!5259073 (=> res!2231769 e!3271523)))

(assert (=> b!5259073 (= res!2231769 (not (is-ElementMatch!14876 r!7292)))))

(assert (=> b!5259073 (= e!3271521 e!3271523)))

(declare-fun b!5259074 () Bool)

(assert (=> b!5259074 (= e!3271519 e!3271521)))

(declare-fun c!910253 () Bool)

(assert (=> b!5259074 (= c!910253 (is-EmptyLang!14876 r!7292))))

(assert (= (and d!1692888 c!910252) b!5259071))

(assert (= (and d!1692888 (not c!910252)) b!5259063))

(assert (= (and d!1692888 c!910251) b!5259068))

(assert (= (and d!1692888 (not c!910251)) b!5259074))

(assert (= (and b!5259074 c!910253) b!5259064))

(assert (= (and b!5259074 (not c!910253)) b!5259073))

(assert (= (and b!5259073 (not res!2231769)) b!5259065))

(assert (= (and b!5259065 res!2231772) b!5259062))

(assert (= (and b!5259062 res!2231767) b!5259070))

(assert (= (and b!5259070 res!2231768) b!5259072))

(assert (= (and b!5259065 (not res!2231766)) b!5259061))

(assert (= (and b!5259061 res!2231765) b!5259066))

(assert (= (and b!5259066 (not res!2231771)) b!5259067))

(assert (= (and b!5259067 (not res!2231770)) b!5259069))

(assert (= (or b!5259068 b!5259062 b!5259066) bm!372797))

(declare-fun m!6301182 () Bool)

(assert (=> b!5259070 m!6301182))

(assert (=> b!5259070 m!6301182))

(declare-fun m!6301184 () Bool)

(assert (=> b!5259070 m!6301184))

(declare-fun m!6301186 () Bool)

(assert (=> b!5259071 m!6301186))

(assert (=> d!1692888 m!6301174))

(assert (=> d!1692888 m!6300866))

(declare-fun m!6301188 () Bool)

(assert (=> b!5259069 m!6301188))

(assert (=> bm!372797 m!6301174))

(assert (=> b!5259067 m!6301182))

(assert (=> b!5259067 m!6301182))

(assert (=> b!5259067 m!6301184))

(assert (=> b!5259063 m!6301188))

(assert (=> b!5259063 m!6301188))

(declare-fun m!6301190 () Bool)

(assert (=> b!5259063 m!6301190))

(assert (=> b!5259063 m!6301182))

(assert (=> b!5259063 m!6301190))

(assert (=> b!5259063 m!6301182))

(declare-fun m!6301192 () Bool)

(assert (=> b!5259063 m!6301192))

(assert (=> b!5259072 m!6301188))

(assert (=> b!5258587 d!1692888))

(declare-fun d!1692890 () Bool)

(assert (=> d!1692890 (= (matchR!7061 r!7292 s!2326) (matchRSpec!1979 r!7292 s!2326))))

(declare-fun lt!2155177 () Unit!153022)

(declare-fun choose!39229 (Regex!14876 List!60927) Unit!153022)

(assert (=> d!1692890 (= lt!2155177 (choose!39229 r!7292 s!2326))))

(assert (=> d!1692890 (validRegex!6612 r!7292)))

(assert (=> d!1692890 (= (mainMatchTheorem!1979 r!7292 s!2326) lt!2155177)))

(declare-fun bs!1219414 () Bool)

(assert (= bs!1219414 d!1692890))

(assert (=> bs!1219414 m!6300872))

(assert (=> bs!1219414 m!6300870))

(declare-fun m!6301194 () Bool)

(assert (=> bs!1219414 m!6301194))

(assert (=> bs!1219414 m!6300866))

(assert (=> b!5258587 d!1692890))

(declare-fun bs!1219415 () Bool)

(declare-fun d!1692892 () Bool)

(assert (= bs!1219415 (and d!1692892 d!1692812)))

(declare-fun lambda!265105 () Int)

(assert (=> bs!1219415 (= lambda!265105 lambda!265076)))

(declare-fun bs!1219416 () Bool)

(assert (= bs!1219416 (and d!1692892 d!1692820)))

(assert (=> bs!1219416 (= lambda!265105 lambda!265079)))

(declare-fun bs!1219417 () Bool)

(assert (= bs!1219417 (and d!1692892 d!1692824)))

(assert (=> bs!1219417 (= lambda!265105 lambda!265080)))

(declare-fun b!5259105 () Bool)

(declare-fun e!3271542 () Bool)

(assert (=> b!5259105 (= e!3271542 (isEmpty!32745 (t!374111 (unfocusZipperList!318 zl!343))))))

(declare-fun b!5259106 () Bool)

(declare-fun e!3271540 () Bool)

(declare-fun e!3271544 () Bool)

(assert (=> b!5259106 (= e!3271540 e!3271544)))

(declare-fun c!910263 () Bool)

(assert (=> b!5259106 (= c!910263 (isEmpty!32745 (tail!10373 (unfocusZipperList!318 zl!343))))))

(declare-fun b!5259108 () Bool)

(declare-fun e!3271545 () Regex!14876)

(assert (=> b!5259108 (= e!3271545 (h!67252 (unfocusZipperList!318 zl!343)))))

(declare-fun b!5259109 () Bool)

(declare-fun lt!2155180 () Regex!14876)

(declare-fun isEmptyLang!822 (Regex!14876) Bool)

(assert (=> b!5259109 (= e!3271540 (isEmptyLang!822 lt!2155180))))

(declare-fun b!5259110 () Bool)

(assert (=> b!5259110 (= e!3271544 (= lt!2155180 (head!11276 (unfocusZipperList!318 zl!343))))))

(declare-fun b!5259111 () Bool)

(declare-fun e!3271543 () Bool)

(assert (=> b!5259111 (= e!3271543 e!3271540)))

(declare-fun c!910262 () Bool)

(assert (=> b!5259111 (= c!910262 (isEmpty!32745 (unfocusZipperList!318 zl!343)))))

(declare-fun b!5259112 () Bool)

(declare-fun e!3271541 () Regex!14876)

(assert (=> b!5259112 (= e!3271541 (Union!14876 (h!67252 (unfocusZipperList!318 zl!343)) (generalisedUnion!805 (t!374111 (unfocusZipperList!318 zl!343)))))))

(declare-fun b!5259107 () Bool)

(declare-fun isUnion!254 (Regex!14876) Bool)

(assert (=> b!5259107 (= e!3271544 (isUnion!254 lt!2155180))))

(assert (=> d!1692892 e!3271543))

(declare-fun res!2231788 () Bool)

(assert (=> d!1692892 (=> (not res!2231788) (not e!3271543))))

(assert (=> d!1692892 (= res!2231788 (validRegex!6612 lt!2155180))))

(assert (=> d!1692892 (= lt!2155180 e!3271545)))

(declare-fun c!910265 () Bool)

(assert (=> d!1692892 (= c!910265 e!3271542)))

(declare-fun res!2231787 () Bool)

(assert (=> d!1692892 (=> (not res!2231787) (not e!3271542))))

(assert (=> d!1692892 (= res!2231787 (is-Cons!60804 (unfocusZipperList!318 zl!343)))))

(assert (=> d!1692892 (forall!14288 (unfocusZipperList!318 zl!343) lambda!265105)))

(assert (=> d!1692892 (= (generalisedUnion!805 (unfocusZipperList!318 zl!343)) lt!2155180)))

(declare-fun b!5259113 () Bool)

(assert (=> b!5259113 (= e!3271545 e!3271541)))

(declare-fun c!910264 () Bool)

(assert (=> b!5259113 (= c!910264 (is-Cons!60804 (unfocusZipperList!318 zl!343)))))

(declare-fun b!5259114 () Bool)

(assert (=> b!5259114 (= e!3271541 EmptyLang!14876)))

(assert (= (and d!1692892 res!2231787) b!5259105))

(assert (= (and d!1692892 c!910265) b!5259108))

(assert (= (and d!1692892 (not c!910265)) b!5259113))

(assert (= (and b!5259113 c!910264) b!5259112))

(assert (= (and b!5259113 (not c!910264)) b!5259114))

(assert (= (and d!1692892 res!2231788) b!5259111))

(assert (= (and b!5259111 c!910262) b!5259109))

(assert (= (and b!5259111 (not c!910262)) b!5259106))

(assert (= (and b!5259106 c!910263) b!5259110))

(assert (= (and b!5259106 (not c!910263)) b!5259107))

(assert (=> b!5259110 m!6300896))

(declare-fun m!6301196 () Bool)

(assert (=> b!5259110 m!6301196))

(declare-fun m!6301198 () Bool)

(assert (=> b!5259105 m!6301198))

(assert (=> b!5259111 m!6300896))

(declare-fun m!6301200 () Bool)

(assert (=> b!5259111 m!6301200))

(declare-fun m!6301202 () Bool)

(assert (=> d!1692892 m!6301202))

(assert (=> d!1692892 m!6300896))

(declare-fun m!6301204 () Bool)

(assert (=> d!1692892 m!6301204))

(declare-fun m!6301206 () Bool)

(assert (=> b!5259109 m!6301206))

(declare-fun m!6301208 () Bool)

(assert (=> b!5259112 m!6301208))

(assert (=> b!5259106 m!6300896))

(declare-fun m!6301210 () Bool)

(assert (=> b!5259106 m!6301210))

(assert (=> b!5259106 m!6301210))

(declare-fun m!6301212 () Bool)

(assert (=> b!5259106 m!6301212))

(declare-fun m!6301214 () Bool)

(assert (=> b!5259107 m!6301214))

(assert (=> b!5258607 d!1692892))

(declare-fun bs!1219418 () Bool)

(declare-fun d!1692894 () Bool)

(assert (= bs!1219418 (and d!1692894 d!1692812)))

(declare-fun lambda!265108 () Int)

(assert (=> bs!1219418 (= lambda!265108 lambda!265076)))

(declare-fun bs!1219419 () Bool)

(assert (= bs!1219419 (and d!1692894 d!1692820)))

(assert (=> bs!1219419 (= lambda!265108 lambda!265079)))

(declare-fun bs!1219420 () Bool)

(assert (= bs!1219420 (and d!1692894 d!1692824)))

(assert (=> bs!1219420 (= lambda!265108 lambda!265080)))

(declare-fun bs!1219421 () Bool)

(assert (= bs!1219421 (and d!1692894 d!1692892)))

(assert (=> bs!1219421 (= lambda!265108 lambda!265105)))

(declare-fun lt!2155183 () List!60928)

(assert (=> d!1692894 (forall!14288 lt!2155183 lambda!265108)))

(declare-fun e!3271548 () List!60928)

(assert (=> d!1692894 (= lt!2155183 e!3271548)))

(declare-fun c!910268 () Bool)

(assert (=> d!1692894 (= c!910268 (is-Cons!60805 zl!343))))

(assert (=> d!1692894 (= (unfocusZipperList!318 zl!343) lt!2155183)))

(declare-fun b!5259119 () Bool)

(assert (=> b!5259119 (= e!3271548 (Cons!60804 (generalisedConcat!545 (exprs!4760 (h!67253 zl!343))) (unfocusZipperList!318 (t!374112 zl!343))))))

(declare-fun b!5259120 () Bool)

(assert (=> b!5259120 (= e!3271548 Nil!60804)))

(assert (= (and d!1692894 c!910268) b!5259119))

(assert (= (and d!1692894 (not c!910268)) b!5259120))

(declare-fun m!6301216 () Bool)

(assert (=> d!1692894 m!6301216))

(assert (=> b!5259119 m!6300860))

(declare-fun m!6301218 () Bool)

(assert (=> b!5259119 m!6301218))

(assert (=> b!5258607 d!1692894))

(declare-fun b!5259136 () Bool)

(declare-fun e!3271558 () Bool)

(declare-fun tp!1470238 () Bool)

(declare-fun tp!1470239 () Bool)

(assert (=> b!5259136 (= e!3271558 (and tp!1470238 tp!1470239))))

(assert (=> b!5258590 (= tp!1470194 e!3271558)))

(assert (= (and b!5258590 (is-Cons!60804 (exprs!4760 (h!67253 zl!343)))) b!5259136))

(declare-fun condSetEmpty!33614 () Bool)

(assert (=> setNonEmpty!33608 (= condSetEmpty!33614 (= setRest!33608 (as set.empty (Set Context!8520))))))

(declare-fun setRes!33614 () Bool)

(assert (=> setNonEmpty!33608 (= tp!1470203 setRes!33614)))

(declare-fun setIsEmpty!33614 () Bool)

(assert (=> setIsEmpty!33614 setRes!33614))

(declare-fun tp!1470245 () Bool)

(declare-fun setNonEmpty!33614 () Bool)

(declare-fun e!3271561 () Bool)

(declare-fun setElem!33614 () Context!8520)

(assert (=> setNonEmpty!33614 (= setRes!33614 (and tp!1470245 (inv!80438 setElem!33614) e!3271561))))

(declare-fun setRest!33614 () (Set Context!8520))

(assert (=> setNonEmpty!33614 (= setRest!33608 (set.union (set.insert setElem!33614 (as set.empty (Set Context!8520))) setRest!33614))))

(declare-fun b!5259141 () Bool)

(declare-fun tp!1470244 () Bool)

(assert (=> b!5259141 (= e!3271561 tp!1470244)))

(assert (= (and setNonEmpty!33608 condSetEmpty!33614) setIsEmpty!33614))

(assert (= (and setNonEmpty!33608 (not condSetEmpty!33614)) setNonEmpty!33614))

(assert (= setNonEmpty!33614 b!5259141))

(declare-fun m!6301220 () Bool)

(assert (=> setNonEmpty!33614 m!6301220))

(declare-fun b!5259152 () Bool)

(declare-fun e!3271564 () Bool)

(assert (=> b!5259152 (= e!3271564 tp_is_empty!39005)))

(declare-fun b!5259154 () Bool)

(declare-fun tp!1470260 () Bool)

(assert (=> b!5259154 (= e!3271564 tp!1470260)))

(assert (=> b!5258599 (= tp!1470202 e!3271564)))

(declare-fun b!5259153 () Bool)

(declare-fun tp!1470256 () Bool)

(declare-fun tp!1470258 () Bool)

(assert (=> b!5259153 (= e!3271564 (and tp!1470256 tp!1470258))))

(declare-fun b!5259155 () Bool)

(declare-fun tp!1470257 () Bool)

(declare-fun tp!1470259 () Bool)

(assert (=> b!5259155 (= e!3271564 (and tp!1470257 tp!1470259))))

(assert (= (and b!5258599 (is-ElementMatch!14876 (regOne!30265 r!7292))) b!5259152))

(assert (= (and b!5258599 (is-Concat!23721 (regOne!30265 r!7292))) b!5259153))

(assert (= (and b!5258599 (is-Star!14876 (regOne!30265 r!7292))) b!5259154))

(assert (= (and b!5258599 (is-Union!14876 (regOne!30265 r!7292))) b!5259155))

(declare-fun b!5259156 () Bool)

(declare-fun e!3271565 () Bool)

(assert (=> b!5259156 (= e!3271565 tp_is_empty!39005)))

(declare-fun b!5259158 () Bool)

(declare-fun tp!1470265 () Bool)

(assert (=> b!5259158 (= e!3271565 tp!1470265)))

(assert (=> b!5258599 (= tp!1470196 e!3271565)))

(declare-fun b!5259157 () Bool)

(declare-fun tp!1470261 () Bool)

(declare-fun tp!1470263 () Bool)

(assert (=> b!5259157 (= e!3271565 (and tp!1470261 tp!1470263))))

(declare-fun b!5259159 () Bool)

(declare-fun tp!1470262 () Bool)

(declare-fun tp!1470264 () Bool)

(assert (=> b!5259159 (= e!3271565 (and tp!1470262 tp!1470264))))

(assert (= (and b!5258599 (is-ElementMatch!14876 (regTwo!30265 r!7292))) b!5259156))

(assert (= (and b!5258599 (is-Concat!23721 (regTwo!30265 r!7292))) b!5259157))

(assert (= (and b!5258599 (is-Star!14876 (regTwo!30265 r!7292))) b!5259158))

(assert (= (and b!5258599 (is-Union!14876 (regTwo!30265 r!7292))) b!5259159))

(declare-fun b!5259160 () Bool)

(declare-fun e!3271566 () Bool)

(declare-fun tp!1470266 () Bool)

(declare-fun tp!1470267 () Bool)

(assert (=> b!5259160 (= e!3271566 (and tp!1470266 tp!1470267))))

(assert (=> b!5258604 (= tp!1470201 e!3271566)))

(assert (= (and b!5258604 (is-Cons!60804 (exprs!4760 setElem!33608))) b!5259160))

(declare-fun b!5259165 () Bool)

(declare-fun e!3271569 () Bool)

(declare-fun tp!1470270 () Bool)

(assert (=> b!5259165 (= e!3271569 (and tp_is_empty!39005 tp!1470270))))

(assert (=> b!5258593 (= tp!1470197 e!3271569)))

(assert (= (and b!5258593 (is-Cons!60803 (t!374110 s!2326))) b!5259165))

(declare-fun b!5259166 () Bool)

(declare-fun e!3271570 () Bool)

(assert (=> b!5259166 (= e!3271570 tp_is_empty!39005)))

(declare-fun b!5259168 () Bool)

(declare-fun tp!1470275 () Bool)

(assert (=> b!5259168 (= e!3271570 tp!1470275)))

(assert (=> b!5258606 (= tp!1470198 e!3271570)))

(declare-fun b!5259167 () Bool)

(declare-fun tp!1470271 () Bool)

(declare-fun tp!1470273 () Bool)

(assert (=> b!5259167 (= e!3271570 (and tp!1470271 tp!1470273))))

(declare-fun b!5259169 () Bool)

(declare-fun tp!1470272 () Bool)

(declare-fun tp!1470274 () Bool)

(assert (=> b!5259169 (= e!3271570 (and tp!1470272 tp!1470274))))

(assert (= (and b!5258606 (is-ElementMatch!14876 (regOne!30264 r!7292))) b!5259166))

(assert (= (and b!5258606 (is-Concat!23721 (regOne!30264 r!7292))) b!5259167))

(assert (= (and b!5258606 (is-Star!14876 (regOne!30264 r!7292))) b!5259168))

(assert (= (and b!5258606 (is-Union!14876 (regOne!30264 r!7292))) b!5259169))

(declare-fun b!5259170 () Bool)

(declare-fun e!3271571 () Bool)

(assert (=> b!5259170 (= e!3271571 tp_is_empty!39005)))

(declare-fun b!5259172 () Bool)

(declare-fun tp!1470280 () Bool)

(assert (=> b!5259172 (= e!3271571 tp!1470280)))

(assert (=> b!5258606 (= tp!1470200 e!3271571)))

(declare-fun b!5259171 () Bool)

(declare-fun tp!1470276 () Bool)

(declare-fun tp!1470278 () Bool)

(assert (=> b!5259171 (= e!3271571 (and tp!1470276 tp!1470278))))

(declare-fun b!5259173 () Bool)

(declare-fun tp!1470277 () Bool)

(declare-fun tp!1470279 () Bool)

(assert (=> b!5259173 (= e!3271571 (and tp!1470277 tp!1470279))))

(assert (= (and b!5258606 (is-ElementMatch!14876 (regTwo!30264 r!7292))) b!5259170))

(assert (= (and b!5258606 (is-Concat!23721 (regTwo!30264 r!7292))) b!5259171))

(assert (= (and b!5258606 (is-Star!14876 (regTwo!30264 r!7292))) b!5259172))

(assert (= (and b!5258606 (is-Union!14876 (regTwo!30264 r!7292))) b!5259173))

(declare-fun b!5259181 () Bool)

(declare-fun e!3271577 () Bool)

(declare-fun tp!1470285 () Bool)

(assert (=> b!5259181 (= e!3271577 tp!1470285)))

(declare-fun e!3271576 () Bool)

(declare-fun tp!1470286 () Bool)

(declare-fun b!5259180 () Bool)

(assert (=> b!5259180 (= e!3271576 (and (inv!80438 (h!67253 (t!374112 zl!343))) e!3271577 tp!1470286))))

(assert (=> b!5258592 (= tp!1470195 e!3271576)))

(assert (= b!5259180 b!5259181))

(assert (= (and b!5258592 (is-Cons!60805 (t!374112 zl!343))) b!5259180))

(declare-fun m!6301228 () Bool)

(assert (=> b!5259180 m!6301228))

(declare-fun b!5259182 () Bool)

(declare-fun e!3271578 () Bool)

(assert (=> b!5259182 (= e!3271578 tp_is_empty!39005)))

(declare-fun b!5259184 () Bool)

(declare-fun tp!1470291 () Bool)

(assert (=> b!5259184 (= e!3271578 tp!1470291)))

(assert (=> b!5258596 (= tp!1470199 e!3271578)))

(declare-fun b!5259183 () Bool)

(declare-fun tp!1470287 () Bool)

(declare-fun tp!1470289 () Bool)

(assert (=> b!5259183 (= e!3271578 (and tp!1470287 tp!1470289))))

(declare-fun b!5259185 () Bool)

(declare-fun tp!1470288 () Bool)

(declare-fun tp!1470290 () Bool)

(assert (=> b!5259185 (= e!3271578 (and tp!1470288 tp!1470290))))

(assert (= (and b!5258596 (is-ElementMatch!14876 (reg!15205 r!7292))) b!5259182))

(assert (= (and b!5258596 (is-Concat!23721 (reg!15205 r!7292))) b!5259183))

(assert (= (and b!5258596 (is-Star!14876 (reg!15205 r!7292))) b!5259184))

(assert (= (and b!5258596 (is-Union!14876 (reg!15205 r!7292))) b!5259185))

(declare-fun b_lambda!202953 () Bool)

(assert (= b_lambda!202949 (or b!5258595 b_lambda!202953)))

(declare-fun bs!1219425 () Bool)

(declare-fun d!1692898 () Bool)

(assert (= bs!1219425 (and d!1692898 b!5258595)))

(assert (=> bs!1219425 (= (dynLambda!24022 lambda!265062 (h!67253 zl!343)) (derivationStepZipperUp!248 (h!67253 zl!343) (h!67251 s!2326)))))

(assert (=> bs!1219425 m!6300884))

(assert (=> d!1692836 d!1692898))

(push 1)

(assert (not bm!372762))

(assert (not b!5259172))

(assert (not b!5259165))

(assert (not d!1692852))

(assert (not d!1692892))

(assert (not b!5258797))

(assert (not b!5258798))

(assert (not b!5258765))

(assert (not b!5258758))

(assert (not b!5259070))

(assert (not b!5259112))

(assert (not b!5259109))

(assert (not bm!372794))

(assert (not b!5259167))

(assert (not bm!372736))

(assert (not bm!372758))

(assert (not b!5258753))

(assert (not b!5259153))

(assert (not bm!372737))

(assert (not bm!372793))

(assert (not b!5258946))

(assert (not b!5259106))

(assert (not d!1692828))

(assert (not bm!372729))

(assert (not b!5259107))

(assert (not d!1692894))

(assert (not d!1692818))

(assert (not b!5259007))

(assert (not b!5259110))

(assert (not b!5258793))

(assert (not bm!372760))

(assert (not b!5258951))

(assert (not setNonEmpty!33614))

(assert (not b!5259180))

(assert (not b!5259160))

(assert (not b!5259159))

(assert (not d!1692812))

(assert (not b!5259183))

(assert (not b_lambda!202953))

(assert (not b!5258847))

(assert (not b!5258853))

(assert (not b!5258950))

(assert (not d!1692862))

(assert (not d!1692846))

(assert (not b!5259141))

(assert (not b!5258883))

(assert (not b!5259158))

(assert (not b!5258770))

(assert (not b!5259181))

(assert (not b!5258882))

(assert (not b!5258884))

(assert (not b!5258886))

(assert (not b!5258722))

(assert (not b!5259168))

(assert (not b!5259071))

(assert (not b!5258755))

(assert tp_is_empty!39005)

(assert (not bs!1219425))

(assert (not b!5259171))

(assert (not bm!372731))

(assert (not d!1692834))

(assert (not d!1692874))

(assert (not bm!372756))

(assert (not b!5259111))

(assert (not d!1692816))

(assert (not b!5258854))

(assert (not b!5259069))

(assert (not b!5259157))

(assert (not b!5259002))

(assert (not d!1692890))

(assert (not b!5259067))

(assert (not b!5258757))

(assert (not d!1692820))

(assert (not b!5259173))

(assert (not b!5258952))

(assert (not d!1692870))

(assert (not d!1692824))

(assert (not b!5259105))

(assert (not b!5259185))

(assert (not d!1692858))

(assert (not b!5258760))

(assert (not b!5259119))

(assert (not b!5259063))

(assert (not b!5259072))

(assert (not b!5259184))

(assert (not b!5258769))

(assert (not d!1692856))

(assert (not b!5258752))

(assert (not b!5258885))

(assert (not bm!372728))

(assert (not b!5258766))

(assert (not b!5258751))

(assert (not d!1692868))

(assert (not b!5258792))

(assert (not b!5259136))

(assert (not d!1692872))

(assert (not b!5258890))

(assert (not b!5259169))

(assert (not d!1692888))

(assert (not d!1692854))

(assert (not bm!372732))

(assert (not d!1692836))

(assert (not b!5258949))

(assert (not b!5259154))

(assert (not b!5259155))

(assert (not d!1692822))

(assert (not bm!372797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5259421 () Bool)

(declare-fun e!3271706 () List!60927)

(assert (=> b!5259421 (= e!3271706 (Cons!60803 (h!67251 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803))) (++!13259 (t!374110 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803))) (t!374110 s!2326))))))

(declare-fun d!1692942 () Bool)

(declare-fun e!3271705 () Bool)

(assert (=> d!1692942 e!3271705))

(declare-fun res!2231870 () Bool)

(assert (=> d!1692942 (=> (not res!2231870) (not e!3271705))))

(declare-fun lt!2155225 () List!60927)

(declare-fun content!10803 (List!60927) (Set C!30022))

(assert (=> d!1692942 (= res!2231870 (= (content!10803 lt!2155225) (set.union (content!10803 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803))) (content!10803 (t!374110 s!2326)))))))

(assert (=> d!1692942 (= lt!2155225 e!3271706)))

(declare-fun c!910324 () Bool)

(assert (=> d!1692942 (= c!910324 (is-Nil!60803 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803))))))

(assert (=> d!1692942 (= (++!13259 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (t!374110 s!2326)) lt!2155225)))

(declare-fun b!5259423 () Bool)

(assert (=> b!5259423 (= e!3271705 (or (not (= (t!374110 s!2326) Nil!60803)) (= lt!2155225 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)))))))

(declare-fun b!5259422 () Bool)

(declare-fun res!2231871 () Bool)

(assert (=> b!5259422 (=> (not res!2231871) (not e!3271705))))

(declare-fun size!39737 (List!60927) Int)

(assert (=> b!5259422 (= res!2231871 (= (size!39737 lt!2155225) (+ (size!39737 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803))) (size!39737 (t!374110 s!2326)))))))

(declare-fun b!5259420 () Bool)

(assert (=> b!5259420 (= e!3271706 (t!374110 s!2326))))

(assert (= (and d!1692942 c!910324) b!5259420))

(assert (= (and d!1692942 (not c!910324)) b!5259421))

(assert (= (and d!1692942 res!2231870) b!5259422))

(assert (= (and b!5259422 res!2231871) b!5259423))

(declare-fun m!6301376 () Bool)

(assert (=> b!5259421 m!6301376))

(declare-fun m!6301378 () Bool)

(assert (=> d!1692942 m!6301378))

(assert (=> d!1692942 m!6301098))

(declare-fun m!6301380 () Bool)

(assert (=> d!1692942 m!6301380))

(declare-fun m!6301382 () Bool)

(assert (=> d!1692942 m!6301382))

(declare-fun m!6301384 () Bool)

(assert (=> b!5259422 m!6301384))

(assert (=> b!5259422 m!6301098))

(declare-fun m!6301386 () Bool)

(assert (=> b!5259422 m!6301386))

(declare-fun m!6301388 () Bool)

(assert (=> b!5259422 m!6301388))

(assert (=> b!5258886 d!1692942))

(declare-fun b!5259425 () Bool)

(declare-fun e!3271708 () List!60927)

(assert (=> b!5259425 (= e!3271708 (Cons!60803 (h!67251 Nil!60803) (++!13259 (t!374110 Nil!60803) (Cons!60803 (h!67251 s!2326) Nil!60803))))))

(declare-fun d!1692944 () Bool)

(declare-fun e!3271707 () Bool)

(assert (=> d!1692944 e!3271707))

(declare-fun res!2231872 () Bool)

(assert (=> d!1692944 (=> (not res!2231872) (not e!3271707))))

(declare-fun lt!2155226 () List!60927)

(assert (=> d!1692944 (= res!2231872 (= (content!10803 lt!2155226) (set.union (content!10803 Nil!60803) (content!10803 (Cons!60803 (h!67251 s!2326) Nil!60803)))))))

(assert (=> d!1692944 (= lt!2155226 e!3271708)))

(declare-fun c!910325 () Bool)

(assert (=> d!1692944 (= c!910325 (is-Nil!60803 Nil!60803))))

(assert (=> d!1692944 (= (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) lt!2155226)))

(declare-fun b!5259427 () Bool)

(assert (=> b!5259427 (= e!3271707 (or (not (= (Cons!60803 (h!67251 s!2326) Nil!60803) Nil!60803)) (= lt!2155226 Nil!60803)))))

(declare-fun b!5259426 () Bool)

(declare-fun res!2231873 () Bool)

(assert (=> b!5259426 (=> (not res!2231873) (not e!3271707))))

(assert (=> b!5259426 (= res!2231873 (= (size!39737 lt!2155226) (+ (size!39737 Nil!60803) (size!39737 (Cons!60803 (h!67251 s!2326) Nil!60803)))))))

(declare-fun b!5259424 () Bool)

(assert (=> b!5259424 (= e!3271708 (Cons!60803 (h!67251 s!2326) Nil!60803))))

(assert (= (and d!1692944 c!910325) b!5259424))

(assert (= (and d!1692944 (not c!910325)) b!5259425))

(assert (= (and d!1692944 res!2231872) b!5259426))

(assert (= (and b!5259426 res!2231873) b!5259427))

(declare-fun m!6301390 () Bool)

(assert (=> b!5259425 m!6301390))

(declare-fun m!6301392 () Bool)

(assert (=> d!1692944 m!6301392))

(declare-fun m!6301394 () Bool)

(assert (=> d!1692944 m!6301394))

(declare-fun m!6301396 () Bool)

(assert (=> d!1692944 m!6301396))

(declare-fun m!6301398 () Bool)

(assert (=> b!5259426 m!6301398))

(declare-fun m!6301400 () Bool)

(assert (=> b!5259426 m!6301400))

(declare-fun m!6301402 () Bool)

(assert (=> b!5259426 m!6301402))

(assert (=> b!5258886 d!1692944))

(declare-fun d!1692946 () Bool)

(assert (=> d!1692946 (= (++!13259 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (t!374110 s!2326)) s!2326)))

(declare-fun lt!2155229 () Unit!153022)

(declare-fun choose!39238 (List!60927 C!30022 List!60927 List!60927) Unit!153022)

(assert (=> d!1692946 (= lt!2155229 (choose!39238 Nil!60803 (h!67251 s!2326) (t!374110 s!2326) s!2326))))

(assert (=> d!1692946 (= (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) (t!374110 s!2326))) s!2326)))

(assert (=> d!1692946 (= (lemmaMoveElementToOtherListKeepsConcatEq!1674 Nil!60803 (h!67251 s!2326) (t!374110 s!2326) s!2326) lt!2155229)))

(declare-fun bs!1219453 () Bool)

(assert (= bs!1219453 d!1692946))

(assert (=> bs!1219453 m!6301098))

(assert (=> bs!1219453 m!6301098))

(assert (=> bs!1219453 m!6301100))

(declare-fun m!6301404 () Bool)

(assert (=> bs!1219453 m!6301404))

(declare-fun m!6301406 () Bool)

(assert (=> bs!1219453 m!6301406))

(assert (=> b!5258886 d!1692946))

(declare-fun b!5259428 () Bool)

(declare-fun e!3271711 () Bool)

(declare-fun lt!2155232 () Option!14987)

(assert (=> b!5259428 (= e!3271711 (not (isDefined!11690 lt!2155232)))))

(declare-fun b!5259429 () Bool)

(declare-fun res!2231874 () Bool)

(declare-fun e!3271713 () Bool)

(assert (=> b!5259429 (=> (not res!2231874) (not e!3271713))))

(assert (=> b!5259429 (= res!2231874 (matchR!7061 (regOne!30264 r!7292) (_1!35378 (get!20903 lt!2155232))))))

(declare-fun b!5259430 () Bool)

(declare-fun e!3271709 () Bool)

(assert (=> b!5259430 (= e!3271709 (matchR!7061 (regTwo!30264 r!7292) (t!374110 s!2326)))))

(declare-fun b!5259431 () Bool)

(assert (=> b!5259431 (= e!3271713 (= (++!13259 (_1!35378 (get!20903 lt!2155232)) (_2!35378 (get!20903 lt!2155232))) s!2326))))

(declare-fun b!5259432 () Bool)

(declare-fun lt!2155230 () Unit!153022)

(declare-fun lt!2155231 () Unit!153022)

(assert (=> b!5259432 (= lt!2155230 lt!2155231)))

(assert (=> b!5259432 (= (++!13259 (++!13259 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (Cons!60803 (h!67251 (t!374110 s!2326)) Nil!60803)) (t!374110 (t!374110 s!2326))) s!2326)))

(assert (=> b!5259432 (= lt!2155231 (lemmaMoveElementToOtherListKeepsConcatEq!1674 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (h!67251 (t!374110 s!2326)) (t!374110 (t!374110 s!2326)) s!2326))))

(declare-fun e!3271710 () Option!14987)

(assert (=> b!5259432 (= e!3271710 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) (++!13259 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (Cons!60803 (h!67251 (t!374110 s!2326)) Nil!60803)) (t!374110 (t!374110 s!2326)) s!2326))))

(declare-fun b!5259433 () Bool)

(declare-fun e!3271712 () Option!14987)

(assert (=> b!5259433 (= e!3271712 e!3271710)))

(declare-fun c!910327 () Bool)

(assert (=> b!5259433 (= c!910327 (is-Nil!60803 (t!374110 s!2326)))))

(declare-fun d!1692948 () Bool)

(assert (=> d!1692948 e!3271711))

(declare-fun res!2231875 () Bool)

(assert (=> d!1692948 (=> res!2231875 e!3271711)))

(assert (=> d!1692948 (= res!2231875 e!3271713)))

(declare-fun res!2231877 () Bool)

(assert (=> d!1692948 (=> (not res!2231877) (not e!3271713))))

(assert (=> d!1692948 (= res!2231877 (isDefined!11690 lt!2155232))))

(assert (=> d!1692948 (= lt!2155232 e!3271712)))

(declare-fun c!910326 () Bool)

(assert (=> d!1692948 (= c!910326 e!3271709)))

(declare-fun res!2231876 () Bool)

(assert (=> d!1692948 (=> (not res!2231876) (not e!3271709))))

(assert (=> d!1692948 (= res!2231876 (matchR!7061 (regOne!30264 r!7292) (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803))))))

(assert (=> d!1692948 (validRegex!6612 (regOne!30264 r!7292))))

(assert (=> d!1692948 (= (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (t!374110 s!2326) s!2326) lt!2155232)))

(declare-fun b!5259434 () Bool)

(assert (=> b!5259434 (= e!3271710 None!14986)))

(declare-fun b!5259435 () Bool)

(assert (=> b!5259435 (= e!3271712 (Some!14986 (tuple2!64151 (++!13259 Nil!60803 (Cons!60803 (h!67251 s!2326) Nil!60803)) (t!374110 s!2326))))))

(declare-fun b!5259436 () Bool)

(declare-fun res!2231878 () Bool)

(assert (=> b!5259436 (=> (not res!2231878) (not e!3271713))))

(assert (=> b!5259436 (= res!2231878 (matchR!7061 (regTwo!30264 r!7292) (_2!35378 (get!20903 lt!2155232))))))

(assert (= (and d!1692948 res!2231876) b!5259430))

(assert (= (and d!1692948 c!910326) b!5259435))

(assert (= (and d!1692948 (not c!910326)) b!5259433))

(assert (= (and b!5259433 c!910327) b!5259434))

(assert (= (and b!5259433 (not c!910327)) b!5259432))

(assert (= (and d!1692948 res!2231877) b!5259429))

(assert (= (and b!5259429 res!2231874) b!5259436))

(assert (= (and b!5259436 res!2231878) b!5259431))

(assert (= (and d!1692948 (not res!2231875)) b!5259428))

(declare-fun m!6301408 () Bool)

(assert (=> b!5259436 m!6301408))

(declare-fun m!6301410 () Bool)

(assert (=> b!5259436 m!6301410))

(declare-fun m!6301412 () Bool)

(assert (=> d!1692948 m!6301412))

(assert (=> d!1692948 m!6301098))

(declare-fun m!6301414 () Bool)

(assert (=> d!1692948 m!6301414))

(assert (=> d!1692948 m!6301090))

(declare-fun m!6301416 () Bool)

(assert (=> b!5259430 m!6301416))

(assert (=> b!5259428 m!6301412))

(assert (=> b!5259431 m!6301408))

(declare-fun m!6301418 () Bool)

(assert (=> b!5259431 m!6301418))

(assert (=> b!5259429 m!6301408))

(declare-fun m!6301420 () Bool)

(assert (=> b!5259429 m!6301420))

(assert (=> b!5259432 m!6301098))

(declare-fun m!6301422 () Bool)

(assert (=> b!5259432 m!6301422))

(assert (=> b!5259432 m!6301422))

(declare-fun m!6301424 () Bool)

(assert (=> b!5259432 m!6301424))

(assert (=> b!5259432 m!6301098))

(declare-fun m!6301426 () Bool)

(assert (=> b!5259432 m!6301426))

(assert (=> b!5259432 m!6301422))

(declare-fun m!6301428 () Bool)

(assert (=> b!5259432 m!6301428))

(assert (=> b!5258886 d!1692948))

(declare-fun d!1692950 () Bool)

(declare-fun c!910328 () Bool)

(assert (=> d!1692950 (= c!910328 (isEmpty!32749 (tail!10374 (t!374110 s!2326))))))

(declare-fun e!3271714 () Bool)

(assert (=> d!1692950 (= (matchZipper!1120 (derivationStepZipper!1123 lt!2155094 (head!11277 (t!374110 s!2326))) (tail!10374 (t!374110 s!2326))) e!3271714)))

(declare-fun b!5259437 () Bool)

(assert (=> b!5259437 (= e!3271714 (nullableZipper!1279 (derivationStepZipper!1123 lt!2155094 (head!11277 (t!374110 s!2326)))))))

(declare-fun b!5259438 () Bool)

(assert (=> b!5259438 (= e!3271714 (matchZipper!1120 (derivationStepZipper!1123 (derivationStepZipper!1123 lt!2155094 (head!11277 (t!374110 s!2326))) (head!11277 (tail!10374 (t!374110 s!2326)))) (tail!10374 (tail!10374 (t!374110 s!2326)))))))

(assert (= (and d!1692950 c!910328) b!5259437))

(assert (= (and d!1692950 (not c!910328)) b!5259438))

(assert (=> d!1692950 m!6301018))

(declare-fun m!6301430 () Bool)

(assert (=> d!1692950 m!6301430))

(assert (=> b!5259437 m!6301016))

(declare-fun m!6301432 () Bool)

(assert (=> b!5259437 m!6301432))

(assert (=> b!5259438 m!6301018))

(declare-fun m!6301434 () Bool)

(assert (=> b!5259438 m!6301434))

(assert (=> b!5259438 m!6301016))

(assert (=> b!5259438 m!6301434))

(declare-fun m!6301436 () Bool)

(assert (=> b!5259438 m!6301436))

(assert (=> b!5259438 m!6301018))

(declare-fun m!6301438 () Bool)

(assert (=> b!5259438 m!6301438))

(assert (=> b!5259438 m!6301436))

(assert (=> b!5259438 m!6301438))

(declare-fun m!6301440 () Bool)

(assert (=> b!5259438 m!6301440))

(assert (=> b!5258766 d!1692950))

(declare-fun bs!1219454 () Bool)

(declare-fun d!1692952 () Bool)

(assert (= bs!1219454 (and d!1692952 b!5258595)))

(declare-fun lambda!265132 () Int)

(assert (=> bs!1219454 (= (= (head!11277 (t!374110 s!2326)) (h!67251 s!2326)) (= lambda!265132 lambda!265062))))

(assert (=> d!1692952 true))

(assert (=> d!1692952 (= (derivationStepZipper!1123 lt!2155094 (head!11277 (t!374110 s!2326))) (flatMap!603 lt!2155094 lambda!265132))))

(declare-fun bs!1219455 () Bool)

(assert (= bs!1219455 d!1692952))

(declare-fun m!6301442 () Bool)

(assert (=> bs!1219455 m!6301442))

(assert (=> b!5258766 d!1692952))

(declare-fun d!1692954 () Bool)

(assert (=> d!1692954 (= (head!11277 (t!374110 s!2326)) (h!67251 (t!374110 s!2326)))))

(assert (=> b!5258766 d!1692954))

(declare-fun d!1692956 () Bool)

(assert (=> d!1692956 (= (tail!10374 (t!374110 s!2326)) (t!374110 (t!374110 s!2326)))))

(assert (=> b!5258766 d!1692956))

(declare-fun d!1692958 () Bool)

(assert (=> d!1692958 (= (isEmpty!32745 (unfocusZipperList!318 zl!343)) (is-Nil!60804 (unfocusZipperList!318 zl!343)))))

(assert (=> b!5259111 d!1692958))

(declare-fun b!5259441 () Bool)

(declare-fun e!3271716 () Bool)

(declare-fun e!3271719 () Bool)

(assert (=> b!5259441 (= e!3271716 e!3271719)))

(declare-fun res!2231881 () Bool)

(assert (=> b!5259441 (= res!2231881 (not (nullable!5045 (reg!15205 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))))))))

(assert (=> b!5259441 (=> (not res!2231881) (not e!3271719))))

(declare-fun bm!372810 () Bool)

(declare-fun call!372816 () Bool)

(declare-fun c!910332 () Bool)

(assert (=> bm!372810 (= call!372816 (validRegex!6612 (ite c!910332 (regOne!30265 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))) (regOne!30264 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))))))))

(declare-fun b!5259442 () Bool)

(declare-fun res!2231879 () Bool)

(declare-fun e!3271720 () Bool)

(assert (=> b!5259442 (=> res!2231879 e!3271720)))

(assert (=> b!5259442 (= res!2231879 (not (is-Concat!23721 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292))))))))

(declare-fun e!3271721 () Bool)

(assert (=> b!5259442 (= e!3271721 e!3271720)))

(declare-fun b!5259443 () Bool)

(declare-fun e!3271718 () Bool)

(assert (=> b!5259443 (= e!3271718 e!3271716)))

(declare-fun c!910331 () Bool)

(assert (=> b!5259443 (= c!910331 (is-Star!14876 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))))))

(declare-fun b!5259444 () Bool)

(declare-fun res!2231880 () Bool)

(declare-fun e!3271717 () Bool)

(assert (=> b!5259444 (=> (not res!2231880) (not e!3271717))))

(assert (=> b!5259444 (= res!2231880 call!372816)))

(assert (=> b!5259444 (= e!3271721 e!3271717)))

(declare-fun b!5259445 () Bool)

(declare-fun call!372817 () Bool)

(assert (=> b!5259445 (= e!3271717 call!372817)))

(declare-fun b!5259446 () Bool)

(assert (=> b!5259446 (= e!3271716 e!3271721)))

(assert (=> b!5259446 (= c!910332 (is-Union!14876 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))))))

(declare-fun b!5259447 () Bool)

(declare-fun e!3271715 () Bool)

(assert (=> b!5259447 (= e!3271715 call!372817)))

(declare-fun d!1692960 () Bool)

(declare-fun res!2231882 () Bool)

(assert (=> d!1692960 (=> res!2231882 e!3271718)))

(assert (=> d!1692960 (= res!2231882 (is-ElementMatch!14876 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))))))

(assert (=> d!1692960 (= (validRegex!6612 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))) e!3271718)))

(declare-fun bm!372811 () Bool)

(declare-fun call!372815 () Bool)

(assert (=> bm!372811 (= call!372815 (validRegex!6612 (ite c!910331 (reg!15205 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))) (ite c!910332 (regTwo!30265 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292)))) (regTwo!30264 (ite c!910159 (reg!15205 r!7292) (ite c!910160 (regTwo!30265 r!7292) (regTwo!30264 r!7292))))))))))

(declare-fun b!5259448 () Bool)

(assert (=> b!5259448 (= e!3271719 call!372815)))

(declare-fun b!5259449 () Bool)

(assert (=> b!5259449 (= e!3271720 e!3271715)))

(declare-fun res!2231883 () Bool)

(assert (=> b!5259449 (=> (not res!2231883) (not e!3271715))))

(assert (=> b!5259449 (= res!2231883 call!372816)))

(declare-fun bm!372812 () Bool)

(assert (=> bm!372812 (= call!372817 call!372815)))

(assert (= (and d!1692960 (not res!2231882)) b!5259443))

(assert (= (and b!5259443 c!910331) b!5259441))

(assert (= (and b!5259443 (not c!910331)) b!5259446))

(assert (= (and b!5259441 res!2231881) b!5259448))

(assert (= (and b!5259446 c!910332) b!5259444))

(assert (= (and b!5259446 (not c!910332)) b!5259442))

(assert (= (and b!5259444 res!2231880) b!5259445))

(assert (= (and b!5259442 (not res!2231879)) b!5259449))

(assert (= (and b!5259449 res!2231883) b!5259447))

(assert (= (or b!5259445 b!5259447) bm!372812))

(assert (= (or b!5259444 b!5259449) bm!372810))

(assert (= (or b!5259448 bm!372812) bm!372811))

(declare-fun m!6301444 () Bool)

(assert (=> b!5259441 m!6301444))

(declare-fun m!6301446 () Bool)

(assert (=> bm!372810 m!6301446))

(declare-fun m!6301448 () Bool)

(assert (=> bm!372811 m!6301448))

(assert (=> bm!372732 d!1692960))

(declare-fun b!5259450 () Bool)

(declare-fun e!3271723 () Bool)

(declare-fun e!3271726 () Bool)

(assert (=> b!5259450 (= e!3271723 e!3271726)))

(declare-fun res!2231886 () Bool)

(assert (=> b!5259450 (= res!2231886 (not (nullable!5045 (reg!15205 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))))))))

(assert (=> b!5259450 (=> (not res!2231886) (not e!3271726))))

(declare-fun bm!372813 () Bool)

(declare-fun call!372819 () Bool)

(declare-fun c!910334 () Bool)

(assert (=> bm!372813 (= call!372819 (validRegex!6612 (ite c!910334 (regOne!30265 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))) (regOne!30264 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))))))))

(declare-fun b!5259451 () Bool)

(declare-fun res!2231884 () Bool)

(declare-fun e!3271727 () Bool)

(assert (=> b!5259451 (=> res!2231884 e!3271727)))

(assert (=> b!5259451 (= res!2231884 (not (is-Concat!23721 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292)))))))))

(declare-fun e!3271728 () Bool)

(assert (=> b!5259451 (= e!3271728 e!3271727)))

(declare-fun b!5259452 () Bool)

(declare-fun e!3271725 () Bool)

(assert (=> b!5259452 (= e!3271725 e!3271723)))

(declare-fun c!910333 () Bool)

(assert (=> b!5259452 (= c!910333 (is-Star!14876 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))))))

(declare-fun b!5259453 () Bool)

(declare-fun res!2231885 () Bool)

(declare-fun e!3271724 () Bool)

(assert (=> b!5259453 (=> (not res!2231885) (not e!3271724))))

(assert (=> b!5259453 (= res!2231885 call!372819)))

(assert (=> b!5259453 (= e!3271728 e!3271724)))

(declare-fun b!5259454 () Bool)

(declare-fun call!372820 () Bool)

(assert (=> b!5259454 (= e!3271724 call!372820)))

(declare-fun b!5259455 () Bool)

(assert (=> b!5259455 (= e!3271723 e!3271728)))

(assert (=> b!5259455 (= c!910334 (is-Union!14876 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))))))

(declare-fun b!5259456 () Bool)

(declare-fun e!3271722 () Bool)

(assert (=> b!5259456 (= e!3271722 call!372820)))

(declare-fun d!1692962 () Bool)

(declare-fun res!2231887 () Bool)

(assert (=> d!1692962 (=> res!2231887 e!3271725)))

(assert (=> d!1692962 (= res!2231887 (is-ElementMatch!14876 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))))))

(assert (=> d!1692962 (= (validRegex!6612 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))) e!3271725)))

(declare-fun call!372818 () Bool)

(declare-fun bm!372814 () Bool)

(assert (=> bm!372814 (= call!372818 (validRegex!6612 (ite c!910333 (reg!15205 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))) (ite c!910334 (regTwo!30265 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))) (regTwo!30264 (ite c!910143 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292)))))))))))

(declare-fun b!5259457 () Bool)

(assert (=> b!5259457 (= e!3271726 call!372818)))

(declare-fun b!5259458 () Bool)

(assert (=> b!5259458 (= e!3271727 e!3271722)))

(declare-fun res!2231888 () Bool)

(assert (=> b!5259458 (=> (not res!2231888) (not e!3271722))))

(assert (=> b!5259458 (= res!2231888 call!372819)))

(declare-fun bm!372815 () Bool)

(assert (=> bm!372815 (= call!372820 call!372818)))

(assert (= (and d!1692962 (not res!2231887)) b!5259452))

(assert (= (and b!5259452 c!910333) b!5259450))

(assert (= (and b!5259452 (not c!910333)) b!5259455))

(assert (= (and b!5259450 res!2231886) b!5259457))

(assert (= (and b!5259455 c!910334) b!5259453))

(assert (= (and b!5259455 (not c!910334)) b!5259451))

(assert (= (and b!5259453 res!2231885) b!5259454))

(assert (= (and b!5259451 (not res!2231884)) b!5259458))

(assert (= (and b!5259458 res!2231888) b!5259456))

(assert (= (or b!5259454 b!5259456) bm!372815))

(assert (= (or b!5259453 b!5259458) bm!372813))

(assert (= (or b!5259457 bm!372815) bm!372814))

(declare-fun m!6301450 () Bool)

(assert (=> b!5259450 m!6301450))

(declare-fun m!6301452 () Bool)

(assert (=> bm!372813 m!6301452))

(declare-fun m!6301454 () Bool)

(assert (=> bm!372814 m!6301454))

(assert (=> bm!372728 d!1692962))

(declare-fun d!1692964 () Bool)

(assert (=> d!1692964 (= (isEmpty!32749 (tail!10374 s!2326)) (is-Nil!60803 (tail!10374 s!2326)))))

(assert (=> b!5259067 d!1692964))

(declare-fun d!1692966 () Bool)

(assert (=> d!1692966 (= (tail!10374 s!2326) (t!374110 s!2326))))

(assert (=> b!5259067 d!1692966))

(declare-fun d!1692968 () Bool)

(assert (=> d!1692968 (= (head!11276 (exprs!4760 (h!67253 zl!343))) (h!67252 (exprs!4760 (h!67253 zl!343))))))

(assert (=> b!5258752 d!1692968))

(declare-fun d!1692970 () Bool)

(assert (=> d!1692970 (= (isEmpty!32750 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326)) (not (is-Some!14986 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326))))))

(assert (=> d!1692862 d!1692970))

(declare-fun b!5259459 () Bool)

(declare-fun e!3271735 () Bool)

(declare-fun e!3271730 () Bool)

(assert (=> b!5259459 (= e!3271735 e!3271730)))

(declare-fun res!2231889 () Bool)

(assert (=> b!5259459 (=> (not res!2231889) (not e!3271730))))

(declare-fun lt!2155233 () Bool)

(assert (=> b!5259459 (= res!2231889 (not lt!2155233))))

(declare-fun b!5259460 () Bool)

(declare-fun res!2231891 () Bool)

(declare-fun e!3271734 () Bool)

(assert (=> b!5259460 (=> (not res!2231891) (not e!3271734))))

(declare-fun call!372821 () Bool)

(assert (=> b!5259460 (= res!2231891 (not call!372821))))

(declare-fun b!5259461 () Bool)

(declare-fun e!3271732 () Bool)

(assert (=> b!5259461 (= e!3271732 (matchR!7061 (derivativeStep!4100 (regTwo!30264 r!7292) (head!11277 (_2!35378 (get!20903 lt!2155159)))) (tail!10374 (_2!35378 (get!20903 lt!2155159)))))))

(declare-fun b!5259462 () Bool)

(declare-fun e!3271733 () Bool)

(assert (=> b!5259462 (= e!3271733 (not lt!2155233))))

(declare-fun b!5259463 () Bool)

(declare-fun res!2231890 () Bool)

(assert (=> b!5259463 (=> res!2231890 e!3271735)))

(assert (=> b!5259463 (= res!2231890 e!3271734)))

(declare-fun res!2231896 () Bool)

(assert (=> b!5259463 (=> (not res!2231896) (not e!3271734))))

(assert (=> b!5259463 (= res!2231896 lt!2155233)))

(declare-fun b!5259464 () Bool)

(declare-fun e!3271729 () Bool)

(assert (=> b!5259464 (= e!3271730 e!3271729)))

(declare-fun res!2231895 () Bool)

(assert (=> b!5259464 (=> res!2231895 e!3271729)))

(assert (=> b!5259464 (= res!2231895 call!372821)))

(declare-fun d!1692972 () Bool)

(declare-fun e!3271731 () Bool)

(assert (=> d!1692972 e!3271731))

(declare-fun c!910335 () Bool)

(assert (=> d!1692972 (= c!910335 (is-EmptyExpr!14876 (regTwo!30264 r!7292)))))

(assert (=> d!1692972 (= lt!2155233 e!3271732)))

(declare-fun c!910336 () Bool)

(assert (=> d!1692972 (= c!910336 (isEmpty!32749 (_2!35378 (get!20903 lt!2155159))))))

(assert (=> d!1692972 (validRegex!6612 (regTwo!30264 r!7292))))

(assert (=> d!1692972 (= (matchR!7061 (regTwo!30264 r!7292) (_2!35378 (get!20903 lt!2155159))) lt!2155233)))

(declare-fun b!5259465 () Bool)

(declare-fun res!2231894 () Bool)

(assert (=> b!5259465 (=> res!2231894 e!3271729)))

(assert (=> b!5259465 (= res!2231894 (not (isEmpty!32749 (tail!10374 (_2!35378 (get!20903 lt!2155159))))))))

(declare-fun b!5259466 () Bool)

(assert (=> b!5259466 (= e!3271731 (= lt!2155233 call!372821))))

(declare-fun bm!372816 () Bool)

(assert (=> bm!372816 (= call!372821 (isEmpty!32749 (_2!35378 (get!20903 lt!2155159))))))

(declare-fun b!5259467 () Bool)

(assert (=> b!5259467 (= e!3271729 (not (= (head!11277 (_2!35378 (get!20903 lt!2155159))) (c!910130 (regTwo!30264 r!7292)))))))

(declare-fun b!5259468 () Bool)

(declare-fun res!2231892 () Bool)

(assert (=> b!5259468 (=> (not res!2231892) (not e!3271734))))

(assert (=> b!5259468 (= res!2231892 (isEmpty!32749 (tail!10374 (_2!35378 (get!20903 lt!2155159)))))))

(declare-fun b!5259469 () Bool)

(assert (=> b!5259469 (= e!3271732 (nullable!5045 (regTwo!30264 r!7292)))))

(declare-fun b!5259470 () Bool)

(assert (=> b!5259470 (= e!3271734 (= (head!11277 (_2!35378 (get!20903 lt!2155159))) (c!910130 (regTwo!30264 r!7292))))))

(declare-fun b!5259471 () Bool)

(declare-fun res!2231893 () Bool)

(assert (=> b!5259471 (=> res!2231893 e!3271735)))

(assert (=> b!5259471 (= res!2231893 (not (is-ElementMatch!14876 (regTwo!30264 r!7292))))))

(assert (=> b!5259471 (= e!3271733 e!3271735)))

(declare-fun b!5259472 () Bool)

(assert (=> b!5259472 (= e!3271731 e!3271733)))

(declare-fun c!910337 () Bool)

(assert (=> b!5259472 (= c!910337 (is-EmptyLang!14876 (regTwo!30264 r!7292)))))

(assert (= (and d!1692972 c!910336) b!5259469))

(assert (= (and d!1692972 (not c!910336)) b!5259461))

(assert (= (and d!1692972 c!910335) b!5259466))

(assert (= (and d!1692972 (not c!910335)) b!5259472))

(assert (= (and b!5259472 c!910337) b!5259462))

(assert (= (and b!5259472 (not c!910337)) b!5259471))

(assert (= (and b!5259471 (not res!2231893)) b!5259463))

(assert (= (and b!5259463 res!2231896) b!5259460))

(assert (= (and b!5259460 res!2231891) b!5259468))

(assert (= (and b!5259468 res!2231892) b!5259470))

(assert (= (and b!5259463 (not res!2231890)) b!5259459))

(assert (= (and b!5259459 res!2231889) b!5259464))

(assert (= (and b!5259464 (not res!2231895)) b!5259465))

(assert (= (and b!5259465 (not res!2231894)) b!5259467))

(assert (= (or b!5259466 b!5259460 b!5259464) bm!372816))

(declare-fun m!6301456 () Bool)

(assert (=> b!5259468 m!6301456))

(assert (=> b!5259468 m!6301456))

(declare-fun m!6301458 () Bool)

(assert (=> b!5259468 m!6301458))

(declare-fun m!6301460 () Bool)

(assert (=> b!5259469 m!6301460))

(declare-fun m!6301462 () Bool)

(assert (=> d!1692972 m!6301462))

(declare-fun m!6301464 () Bool)

(assert (=> d!1692972 m!6301464))

(declare-fun m!6301466 () Bool)

(assert (=> b!5259467 m!6301466))

(assert (=> bm!372816 m!6301462))

(assert (=> b!5259465 m!6301456))

(assert (=> b!5259465 m!6301456))

(assert (=> b!5259465 m!6301458))

(assert (=> b!5259461 m!6301466))

(assert (=> b!5259461 m!6301466))

(declare-fun m!6301468 () Bool)

(assert (=> b!5259461 m!6301468))

(assert (=> b!5259461 m!6301456))

(assert (=> b!5259461 m!6301468))

(assert (=> b!5259461 m!6301456))

(declare-fun m!6301470 () Bool)

(assert (=> b!5259461 m!6301470))

(assert (=> b!5259470 m!6301466))

(assert (=> b!5258890 d!1692972))

(declare-fun d!1692974 () Bool)

(assert (=> d!1692974 (= (get!20903 lt!2155159) (v!51015 lt!2155159))))

(assert (=> b!5258890 d!1692974))

(declare-fun b!5259473 () Bool)

(declare-fun e!3271736 () (Set Context!8520))

(assert (=> b!5259473 (= e!3271736 (as set.empty (Set Context!8520)))))

(declare-fun b!5259474 () Bool)

(declare-fun e!3271738 () (Set Context!8520))

(assert (=> b!5259474 (= e!3271738 e!3271736)))

(declare-fun c!910339 () Bool)

(assert (=> b!5259474 (= c!910339 (is-Cons!60804 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun b!5259475 () Bool)

(declare-fun call!372822 () (Set Context!8520))

(assert (=> b!5259475 (= e!3271736 call!372822)))

(declare-fun d!1692976 () Bool)

(declare-fun c!910338 () Bool)

(declare-fun e!3271737 () Bool)

(assert (=> d!1692976 (= c!910338 e!3271737)))

(declare-fun res!2231897 () Bool)

(assert (=> d!1692976 (=> (not res!2231897) (not e!3271737))))

(assert (=> d!1692976 (= res!2231897 (is-Cons!60804 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))))))))

(assert (=> d!1692976 (= (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))) (h!67251 s!2326)) e!3271738)))

(declare-fun bm!372817 () Bool)

(assert (=> bm!372817 (= call!372822 (derivationStepZipperDown!324 (h!67252 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))))) (Context!8521 (t!374111 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343))))))) (h!67251 s!2326)))))

(declare-fun b!5259476 () Bool)

(assert (=> b!5259476 (= e!3271738 (set.union call!372822 (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343))))))) (h!67251 s!2326))))))

(declare-fun b!5259477 () Bool)

(assert (=> b!5259477 (= e!3271737 (nullable!5045 (h!67252 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343))))))))))

(assert (= (and d!1692976 res!2231897) b!5259477))

(assert (= (and d!1692976 c!910338) b!5259476))

(assert (= (and d!1692976 (not c!910338)) b!5259474))

(assert (= (and b!5259474 c!910339) b!5259475))

(assert (= (and b!5259474 (not c!910339)) b!5259473))

(assert (= (or b!5259476 b!5259475) bm!372817))

(declare-fun m!6301472 () Bool)

(assert (=> bm!372817 m!6301472))

(declare-fun m!6301474 () Bool)

(assert (=> b!5259476 m!6301474))

(declare-fun m!6301476 () Bool)

(assert (=> b!5259477 m!6301476))

(assert (=> b!5258853 d!1692976))

(assert (=> d!1692836 d!1692834))

(declare-fun d!1692978 () Bool)

(assert (=> d!1692978 (= (flatMap!603 z!1189 lambda!265062) (dynLambda!24022 lambda!265062 (h!67253 zl!343)))))

(assert (=> d!1692978 true))

(declare-fun _$13!1781 () Unit!153022)

(assert (=> d!1692978 (= (choose!39224 z!1189 (h!67253 zl!343) lambda!265062) _$13!1781)))

(declare-fun b_lambda!202957 () Bool)

(assert (=> (not b_lambda!202957) (not d!1692978)))

(declare-fun bs!1219456 () Bool)

(assert (= bs!1219456 d!1692978))

(assert (=> bs!1219456 m!6300886))

(assert (=> bs!1219456 m!6301054))

(assert (=> d!1692836 d!1692978))

(declare-fun bs!1219457 () Bool)

(declare-fun b!5259486 () Bool)

(assert (= bs!1219457 (and b!5259486 d!1692858)))

(declare-fun lambda!265133 () Int)

(assert (=> bs!1219457 (not (= lambda!265133 lambda!265092))))

(declare-fun bs!1219458 () Bool)

(assert (= bs!1219458 (and b!5259486 b!5259008)))

(assert (=> bs!1219458 (= (and (= (reg!15205 (regOne!30265 r!7292)) (reg!15205 r!7292)) (= (regOne!30265 r!7292) r!7292)) (= lambda!265133 lambda!265097))))

(assert (=> bs!1219457 (not (= lambda!265133 lambda!265091))))

(declare-fun bs!1219459 () Bool)

(assert (= bs!1219459 (and b!5259486 b!5259003)))

(assert (=> bs!1219459 (not (= lambda!265133 lambda!265098))))

(declare-fun bs!1219460 () Bool)

(assert (= bs!1219460 (and b!5259486 b!5258586)))

(assert (=> bs!1219460 (not (= lambda!265133 lambda!265060))))

(assert (=> bs!1219460 (not (= lambda!265133 lambda!265061))))

(declare-fun bs!1219461 () Bool)

(assert (= bs!1219461 (and b!5259486 d!1692856)))

(assert (=> bs!1219461 (not (= lambda!265133 lambda!265086))))

(assert (=> b!5259486 true))

(assert (=> b!5259486 true))

(declare-fun bs!1219462 () Bool)

(declare-fun b!5259481 () Bool)

(assert (= bs!1219462 (and b!5259481 d!1692858)))

(declare-fun lambda!265134 () Int)

(assert (=> bs!1219462 (= (and (= (regOne!30264 (regOne!30265 r!7292)) (regOne!30264 r!7292)) (= (regTwo!30264 (regOne!30265 r!7292)) (regTwo!30264 r!7292))) (= lambda!265134 lambda!265092))))

(declare-fun bs!1219463 () Bool)

(assert (= bs!1219463 (and b!5259481 b!5259008)))

(assert (=> bs!1219463 (not (= lambda!265134 lambda!265097))))

(declare-fun bs!1219464 () Bool)

(assert (= bs!1219464 (and b!5259481 b!5259486)))

(assert (=> bs!1219464 (not (= lambda!265134 lambda!265133))))

(assert (=> bs!1219462 (not (= lambda!265134 lambda!265091))))

(declare-fun bs!1219465 () Bool)

(assert (= bs!1219465 (and b!5259481 b!5259003)))

(assert (=> bs!1219465 (= (and (= (regOne!30264 (regOne!30265 r!7292)) (regOne!30264 r!7292)) (= (regTwo!30264 (regOne!30265 r!7292)) (regTwo!30264 r!7292))) (= lambda!265134 lambda!265098))))

(declare-fun bs!1219466 () Bool)

(assert (= bs!1219466 (and b!5259481 b!5258586)))

(assert (=> bs!1219466 (not (= lambda!265134 lambda!265060))))

(assert (=> bs!1219466 (= (and (= (regOne!30264 (regOne!30265 r!7292)) (regOne!30264 r!7292)) (= (regTwo!30264 (regOne!30265 r!7292)) (regTwo!30264 r!7292))) (= lambda!265134 lambda!265061))))

(declare-fun bs!1219467 () Bool)

(assert (= bs!1219467 (and b!5259481 d!1692856)))

(assert (=> bs!1219467 (not (= lambda!265134 lambda!265086))))

(assert (=> b!5259481 true))

(assert (=> b!5259481 true))

(declare-fun b!5259478 () Bool)

(declare-fun c!910341 () Bool)

(assert (=> b!5259478 (= c!910341 (is-Union!14876 (regOne!30265 r!7292)))))

(declare-fun e!3271743 () Bool)

(declare-fun e!3271745 () Bool)

(assert (=> b!5259478 (= e!3271743 e!3271745)))

(declare-fun bm!372818 () Bool)

(declare-fun call!372824 () Bool)

(assert (=> bm!372818 (= call!372824 (isEmpty!32749 s!2326))))

(declare-fun b!5259479 () Bool)

(declare-fun res!2231900 () Bool)

(declare-fun e!3271739 () Bool)

(assert (=> b!5259479 (=> res!2231900 e!3271739)))

(assert (=> b!5259479 (= res!2231900 call!372824)))

(declare-fun e!3271744 () Bool)

(assert (=> b!5259479 (= e!3271744 e!3271739)))

(declare-fun b!5259480 () Bool)

(declare-fun e!3271741 () Bool)

(assert (=> b!5259480 (= e!3271741 (matchRSpec!1979 (regTwo!30265 (regOne!30265 r!7292)) s!2326))))

(declare-fun call!372823 () Bool)

(assert (=> b!5259481 (= e!3271744 call!372823)))

(declare-fun b!5259482 () Bool)

(assert (=> b!5259482 (= e!3271745 e!3271744)))

(declare-fun c!910342 () Bool)

(assert (=> b!5259482 (= c!910342 (is-Star!14876 (regOne!30265 r!7292)))))

(declare-fun b!5259483 () Bool)

(declare-fun c!910343 () Bool)

(assert (=> b!5259483 (= c!910343 (is-ElementMatch!14876 (regOne!30265 r!7292)))))

(declare-fun e!3271740 () Bool)

(assert (=> b!5259483 (= e!3271740 e!3271743)))

(declare-fun b!5259484 () Bool)

(declare-fun e!3271742 () Bool)

(assert (=> b!5259484 (= e!3271742 e!3271740)))

(declare-fun res!2231898 () Bool)

(assert (=> b!5259484 (= res!2231898 (not (is-EmptyLang!14876 (regOne!30265 r!7292))))))

(assert (=> b!5259484 (=> (not res!2231898) (not e!3271740))))

(declare-fun d!1692980 () Bool)

(declare-fun c!910340 () Bool)

(assert (=> d!1692980 (= c!910340 (is-EmptyExpr!14876 (regOne!30265 r!7292)))))

(assert (=> d!1692980 (= (matchRSpec!1979 (regOne!30265 r!7292) s!2326) e!3271742)))

(declare-fun b!5259485 () Bool)

(assert (=> b!5259485 (= e!3271745 e!3271741)))

(declare-fun res!2231899 () Bool)

(assert (=> b!5259485 (= res!2231899 (matchRSpec!1979 (regOne!30265 (regOne!30265 r!7292)) s!2326))))

(assert (=> b!5259485 (=> res!2231899 e!3271741)))

(declare-fun bm!372819 () Bool)

(assert (=> bm!372819 (= call!372823 (Exists!2057 (ite c!910342 lambda!265133 lambda!265134)))))

(assert (=> b!5259486 (= e!3271739 call!372823)))

(declare-fun b!5259487 () Bool)

(assert (=> b!5259487 (= e!3271742 call!372824)))

(declare-fun b!5259488 () Bool)

(assert (=> b!5259488 (= e!3271743 (= s!2326 (Cons!60803 (c!910130 (regOne!30265 r!7292)) Nil!60803)))))

(assert (= (and d!1692980 c!910340) b!5259487))

(assert (= (and d!1692980 (not c!910340)) b!5259484))

(assert (= (and b!5259484 res!2231898) b!5259483))

(assert (= (and b!5259483 c!910343) b!5259488))

(assert (= (and b!5259483 (not c!910343)) b!5259478))

(assert (= (and b!5259478 c!910341) b!5259485))

(assert (= (and b!5259478 (not c!910341)) b!5259482))

(assert (= (and b!5259485 (not res!2231899)) b!5259480))

(assert (= (and b!5259482 c!910342) b!5259479))

(assert (= (and b!5259482 (not c!910342)) b!5259481))

(assert (= (and b!5259479 (not res!2231900)) b!5259486))

(assert (= (or b!5259486 b!5259481) bm!372819))

(assert (= (or b!5259487 b!5259479) bm!372818))

(assert (=> bm!372818 m!6301174))

(declare-fun m!6301478 () Bool)

(assert (=> b!5259480 m!6301478))

(declare-fun m!6301480 () Bool)

(assert (=> b!5259485 m!6301480))

(declare-fun m!6301482 () Bool)

(assert (=> bm!372819 m!6301482))

(assert (=> b!5259007 d!1692980))

(declare-fun d!1692982 () Bool)

(declare-fun lambda!265137 () Int)

(declare-fun exists!1982 ((Set Context!8520) Int) Bool)

(assert (=> d!1692982 (= (nullableZipper!1279 lt!2155091) (exists!1982 lt!2155091 lambda!265137))))

(declare-fun bs!1219468 () Bool)

(assert (= bs!1219468 d!1692982))

(declare-fun m!6301484 () Bool)

(assert (=> bs!1219468 m!6301484))

(assert (=> b!5258949 d!1692982))

(declare-fun b!5259489 () Bool)

(declare-fun e!3271750 () (Set Context!8520))

(declare-fun call!372830 () (Set Context!8520))

(assert (=> b!5259489 (= e!3271750 call!372830)))

(declare-fun c!910350 () Bool)

(declare-fun c!910349 () Bool)

(declare-fun bm!372820 () Bool)

(declare-fun call!372827 () (Set Context!8520))

(declare-fun call!372829 () List!60928)

(declare-fun c!910346 () Bool)

(assert (=> bm!372820 (= call!372827 (derivationStepZipperDown!324 (ite c!910346 (regOne!30265 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (ite c!910349 (regTwo!30264 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (ite c!910350 (regOne!30264 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (reg!15205 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))) (ite (or c!910346 c!910349) (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (Context!8521 call!372829)) (h!67251 s!2326)))))

(declare-fun b!5259490 () Bool)

(declare-fun e!3271747 () Bool)

(assert (=> b!5259490 (= c!910349 e!3271747)))

(declare-fun res!2231901 () Bool)

(assert (=> b!5259490 (=> (not res!2231901) (not e!3271747))))

(assert (=> b!5259490 (= res!2231901 (is-Concat!23721 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))

(declare-fun e!3271751 () (Set Context!8520))

(declare-fun e!3271748 () (Set Context!8520))

(assert (=> b!5259490 (= e!3271751 e!3271748)))

(declare-fun d!1692984 () Bool)

(declare-fun c!910347 () Bool)

(assert (=> d!1692984 (= c!910347 (and (is-ElementMatch!14876 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (= (c!910130 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (h!67251 s!2326))))))

(declare-fun e!3271746 () (Set Context!8520))

(assert (=> d!1692984 (= (derivationStepZipperDown!324 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))) (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (h!67251 s!2326)) e!3271746)))

(declare-fun bm!372821 () Bool)

(declare-fun call!372826 () (Set Context!8520))

(assert (=> bm!372821 (= call!372826 call!372827)))

(declare-fun b!5259491 () Bool)

(assert (=> b!5259491 (= e!3271746 e!3271751)))

(assert (=> b!5259491 (= c!910346 (is-Union!14876 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))

(declare-fun b!5259492 () Bool)

(declare-fun call!372825 () (Set Context!8520))

(assert (=> b!5259492 (= e!3271748 (set.union call!372825 call!372826))))

(declare-fun bm!372822 () Bool)

(declare-fun call!372828 () List!60928)

(assert (=> bm!372822 (= call!372828 ($colon$colon!1329 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))) (ite (or c!910349 c!910350) (regTwo!30264 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))))

(declare-fun b!5259493 () Bool)

(declare-fun e!3271749 () (Set Context!8520))

(assert (=> b!5259493 (= e!3271749 (as set.empty (Set Context!8520)))))

(declare-fun b!5259494 () Bool)

(assert (=> b!5259494 (= e!3271746 (set.insert (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (as set.empty (Set Context!8520))))))

(declare-fun b!5259495 () Bool)

(declare-fun c!910348 () Bool)

(assert (=> b!5259495 (= c!910348 (is-Star!14876 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))

(assert (=> b!5259495 (= e!3271750 e!3271749)))

(declare-fun b!5259496 () Bool)

(assert (=> b!5259496 (= e!3271748 e!3271750)))

(assert (=> b!5259496 (= c!910350 (is-Concat!23721 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))

(declare-fun b!5259497 () Bool)

(assert (=> b!5259497 (= e!3271747 (nullable!5045 (regOne!30264 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))))

(declare-fun bm!372823 () Bool)

(assert (=> bm!372823 (= call!372830 call!372826)))

(declare-fun b!5259498 () Bool)

(assert (=> b!5259498 (= e!3271751 (set.union call!372827 call!372825))))

(declare-fun bm!372824 () Bool)

(assert (=> bm!372824 (= call!372825 (derivationStepZipperDown!324 (ite c!910346 (regTwo!30265 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (regOne!30264 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))) (ite c!910346 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (Context!8521 call!372828)) (h!67251 s!2326)))))

(declare-fun bm!372825 () Bool)

(assert (=> bm!372825 (= call!372829 call!372828)))

(declare-fun b!5259499 () Bool)

(assert (=> b!5259499 (= e!3271749 call!372830)))

(assert (= (and d!1692984 c!910347) b!5259494))

(assert (= (and d!1692984 (not c!910347)) b!5259491))

(assert (= (and b!5259491 c!910346) b!5259498))

(assert (= (and b!5259491 (not c!910346)) b!5259490))

(assert (= (and b!5259490 res!2231901) b!5259497))

(assert (= (and b!5259490 c!910349) b!5259492))

(assert (= (and b!5259490 (not c!910349)) b!5259496))

(assert (= (and b!5259496 c!910350) b!5259489))

(assert (= (and b!5259496 (not c!910350)) b!5259495))

(assert (= (and b!5259495 c!910348) b!5259499))

(assert (= (and b!5259495 (not c!910348)) b!5259493))

(assert (= (or b!5259489 b!5259499) bm!372825))

(assert (= (or b!5259489 b!5259499) bm!372823))

(assert (= (or b!5259492 bm!372825) bm!372822))

(assert (= (or b!5259492 bm!372823) bm!372821))

(assert (= (or b!5259498 b!5259492) bm!372824))

(assert (= (or b!5259498 bm!372821) bm!372820))

(declare-fun m!6301486 () Bool)

(assert (=> bm!372822 m!6301486))

(declare-fun m!6301488 () Bool)

(assert (=> bm!372820 m!6301488))

(declare-fun m!6301490 () Bool)

(assert (=> b!5259497 m!6301490))

(declare-fun m!6301492 () Bool)

(assert (=> bm!372824 m!6301492))

(declare-fun m!6301494 () Bool)

(assert (=> b!5259494 m!6301494))

(assert (=> bm!372736 d!1692984))

(declare-fun d!1692986 () Bool)

(assert (=> d!1692986 (= (isEmpty!32749 s!2326) (is-Nil!60803 s!2326))))

(assert (=> bm!372797 d!1692986))

(assert (=> b!5259070 d!1692964))

(assert (=> b!5259070 d!1692966))

(declare-fun bs!1219469 () Bool)

(declare-fun d!1692988 () Bool)

(assert (= bs!1219469 (and d!1692988 d!1692812)))

(declare-fun lambda!265138 () Int)

(assert (=> bs!1219469 (= lambda!265138 lambda!265076)))

(declare-fun bs!1219470 () Bool)

(assert (= bs!1219470 (and d!1692988 d!1692824)))

(assert (=> bs!1219470 (= lambda!265138 lambda!265080)))

(declare-fun bs!1219471 () Bool)

(assert (= bs!1219471 (and d!1692988 d!1692892)))

(assert (=> bs!1219471 (= lambda!265138 lambda!265105)))

(declare-fun bs!1219472 () Bool)

(assert (= bs!1219472 (and d!1692988 d!1692894)))

(assert (=> bs!1219472 (= lambda!265138 lambda!265108)))

(declare-fun bs!1219473 () Bool)

(assert (= bs!1219473 (and d!1692988 d!1692820)))

(assert (=> bs!1219473 (= lambda!265138 lambda!265079)))

(assert (=> d!1692988 (= (inv!80438 (h!67253 (t!374112 zl!343))) (forall!14288 (exprs!4760 (h!67253 (t!374112 zl!343))) lambda!265138))))

(declare-fun bs!1219474 () Bool)

(assert (= bs!1219474 d!1692988))

(declare-fun m!6301496 () Bool)

(assert (=> bs!1219474 m!6301496))

(assert (=> b!5259180 d!1692988))

(declare-fun d!1692990 () Bool)

(assert (=> d!1692990 (= (nullable!5045 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (nullableFct!1431 (h!67252 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))

(declare-fun bs!1219475 () Bool)

(assert (= bs!1219475 d!1692990))

(declare-fun m!6301498 () Bool)

(assert (=> bs!1219475 m!6301498))

(assert (=> b!5258793 d!1692990))

(assert (=> d!1692856 d!1692846))

(declare-fun b!5259500 () Bool)

(declare-fun e!3271753 () Bool)

(declare-fun e!3271756 () Bool)

(assert (=> b!5259500 (= e!3271753 e!3271756)))

(declare-fun res!2231904 () Bool)

(assert (=> b!5259500 (= res!2231904 (not (nullable!5045 (reg!15205 (regOne!30264 r!7292)))))))

(assert (=> b!5259500 (=> (not res!2231904) (not e!3271756))))

(declare-fun bm!372826 () Bool)

(declare-fun call!372832 () Bool)

(declare-fun c!910352 () Bool)

(assert (=> bm!372826 (= call!372832 (validRegex!6612 (ite c!910352 (regOne!30265 (regOne!30264 r!7292)) (regOne!30264 (regOne!30264 r!7292)))))))

(declare-fun b!5259501 () Bool)

(declare-fun res!2231902 () Bool)

(declare-fun e!3271757 () Bool)

(assert (=> b!5259501 (=> res!2231902 e!3271757)))

(assert (=> b!5259501 (= res!2231902 (not (is-Concat!23721 (regOne!30264 r!7292))))))

(declare-fun e!3271758 () Bool)

(assert (=> b!5259501 (= e!3271758 e!3271757)))

(declare-fun b!5259502 () Bool)

(declare-fun e!3271755 () Bool)

(assert (=> b!5259502 (= e!3271755 e!3271753)))

(declare-fun c!910351 () Bool)

(assert (=> b!5259502 (= c!910351 (is-Star!14876 (regOne!30264 r!7292)))))

(declare-fun b!5259503 () Bool)

(declare-fun res!2231903 () Bool)

(declare-fun e!3271754 () Bool)

(assert (=> b!5259503 (=> (not res!2231903) (not e!3271754))))

(assert (=> b!5259503 (= res!2231903 call!372832)))

(assert (=> b!5259503 (= e!3271758 e!3271754)))

(declare-fun b!5259504 () Bool)

(declare-fun call!372833 () Bool)

(assert (=> b!5259504 (= e!3271754 call!372833)))

(declare-fun b!5259505 () Bool)

(assert (=> b!5259505 (= e!3271753 e!3271758)))

(assert (=> b!5259505 (= c!910352 (is-Union!14876 (regOne!30264 r!7292)))))

(declare-fun b!5259506 () Bool)

(declare-fun e!3271752 () Bool)

(assert (=> b!5259506 (= e!3271752 call!372833)))

(declare-fun d!1692992 () Bool)

(declare-fun res!2231905 () Bool)

(assert (=> d!1692992 (=> res!2231905 e!3271755)))

(assert (=> d!1692992 (= res!2231905 (is-ElementMatch!14876 (regOne!30264 r!7292)))))

(assert (=> d!1692992 (= (validRegex!6612 (regOne!30264 r!7292)) e!3271755)))

(declare-fun bm!372827 () Bool)

(declare-fun call!372831 () Bool)

(assert (=> bm!372827 (= call!372831 (validRegex!6612 (ite c!910351 (reg!15205 (regOne!30264 r!7292)) (ite c!910352 (regTwo!30265 (regOne!30264 r!7292)) (regTwo!30264 (regOne!30264 r!7292))))))))

(declare-fun b!5259507 () Bool)

(assert (=> b!5259507 (= e!3271756 call!372831)))

(declare-fun b!5259508 () Bool)

(assert (=> b!5259508 (= e!3271757 e!3271752)))

(declare-fun res!2231906 () Bool)

(assert (=> b!5259508 (=> (not res!2231906) (not e!3271752))))

(assert (=> b!5259508 (= res!2231906 call!372832)))

(declare-fun bm!372828 () Bool)

(assert (=> bm!372828 (= call!372833 call!372831)))

(assert (= (and d!1692992 (not res!2231905)) b!5259502))

(assert (= (and b!5259502 c!910351) b!5259500))

(assert (= (and b!5259502 (not c!910351)) b!5259505))

(assert (= (and b!5259500 res!2231904) b!5259507))

(assert (= (and b!5259505 c!910352) b!5259503))

(assert (= (and b!5259505 (not c!910352)) b!5259501))

(assert (= (and b!5259503 res!2231903) b!5259504))

(assert (= (and b!5259501 (not res!2231902)) b!5259508))

(assert (= (and b!5259508 res!2231906) b!5259506))

(assert (= (or b!5259504 b!5259506) bm!372828))

(assert (= (or b!5259503 b!5259508) bm!372826))

(assert (= (or b!5259507 bm!372828) bm!372827))

(declare-fun m!6301500 () Bool)

(assert (=> b!5259500 m!6301500))

(declare-fun m!6301502 () Bool)

(assert (=> bm!372826 m!6301502))

(declare-fun m!6301504 () Bool)

(assert (=> bm!372827 m!6301504))

(assert (=> d!1692856 d!1692992))

(assert (=> d!1692856 d!1692862))

(declare-fun d!1692994 () Bool)

(assert (=> d!1692994 (= (Exists!2057 lambda!265086) (choose!39225 lambda!265086))))

(declare-fun bs!1219476 () Bool)

(assert (= bs!1219476 d!1692994))

(declare-fun m!6301506 () Bool)

(assert (=> bs!1219476 m!6301506))

(assert (=> d!1692856 d!1692994))

(declare-fun bs!1219477 () Bool)

(declare-fun d!1692996 () Bool)

(assert (= bs!1219477 (and d!1692996 d!1692858)))

(declare-fun lambda!265141 () Int)

(assert (=> bs!1219477 (not (= lambda!265141 lambda!265092))))

(declare-fun bs!1219478 () Bool)

(assert (= bs!1219478 (and d!1692996 b!5259008)))

(assert (=> bs!1219478 (not (= lambda!265141 lambda!265097))))

(declare-fun bs!1219479 () Bool)

(assert (= bs!1219479 (and d!1692996 b!5259486)))

(assert (=> bs!1219479 (not (= lambda!265141 lambda!265133))))

(assert (=> bs!1219477 (= lambda!265141 lambda!265091)))

(declare-fun bs!1219480 () Bool)

(assert (= bs!1219480 (and d!1692996 b!5259481)))

(assert (=> bs!1219480 (not (= lambda!265141 lambda!265134))))

(declare-fun bs!1219481 () Bool)

(assert (= bs!1219481 (and d!1692996 b!5259003)))

(assert (=> bs!1219481 (not (= lambda!265141 lambda!265098))))

(declare-fun bs!1219482 () Bool)

(assert (= bs!1219482 (and d!1692996 b!5258586)))

(assert (=> bs!1219482 (= lambda!265141 lambda!265060)))

(assert (=> bs!1219482 (not (= lambda!265141 lambda!265061))))

(declare-fun bs!1219483 () Bool)

(assert (= bs!1219483 (and d!1692996 d!1692856)))

(assert (=> bs!1219483 (= lambda!265141 lambda!265086)))

(assert (=> d!1692996 true))

(assert (=> d!1692996 true))

(assert (=> d!1692996 true))

(assert (=> d!1692996 (= (isDefined!11690 (findConcatSeparation!1401 (regOne!30264 r!7292) (regTwo!30264 r!7292) Nil!60803 s!2326 s!2326)) (Exists!2057 lambda!265141))))

(assert (=> d!1692996 true))

(declare-fun _$89!1433 () Unit!153022)

(assert (=> d!1692996 (= (choose!39226 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326) _$89!1433)))

(declare-fun bs!1219484 () Bool)

(assert (= bs!1219484 d!1692996))

(assert (=> bs!1219484 m!6300902))

(assert (=> bs!1219484 m!6300902))

(assert (=> bs!1219484 m!6300904))

(declare-fun m!6301508 () Bool)

(assert (=> bs!1219484 m!6301508))

(assert (=> d!1692856 d!1692996))

(declare-fun b!5259527 () Bool)

(declare-fun e!3271773 () Bool)

(declare-fun e!3271778 () Bool)

(assert (=> b!5259527 (= e!3271773 e!3271778)))

(declare-fun c!910355 () Bool)

(assert (=> b!5259527 (= c!910355 (is-Union!14876 (regOne!30264 (regOne!30264 r!7292))))))

(declare-fun d!1692998 () Bool)

(declare-fun res!2231923 () Bool)

(declare-fun e!3271774 () Bool)

(assert (=> d!1692998 (=> res!2231923 e!3271774)))

(assert (=> d!1692998 (= res!2231923 (is-EmptyExpr!14876 (regOne!30264 (regOne!30264 r!7292))))))

(assert (=> d!1692998 (= (nullableFct!1431 (regOne!30264 (regOne!30264 r!7292))) e!3271774)))

(declare-fun b!5259528 () Bool)

(declare-fun e!3271776 () Bool)

(assert (=> b!5259528 (= e!3271778 e!3271776)))

(declare-fun res!2231922 () Bool)

(declare-fun call!372838 () Bool)

(assert (=> b!5259528 (= res!2231922 call!372838)))

(assert (=> b!5259528 (=> res!2231922 e!3271776)))

(declare-fun b!5259529 () Bool)

(declare-fun e!3271775 () Bool)

(assert (=> b!5259529 (= e!3271774 e!3271775)))

(declare-fun res!2231924 () Bool)

(assert (=> b!5259529 (=> (not res!2231924) (not e!3271775))))

(assert (=> b!5259529 (= res!2231924 (and (not (is-EmptyLang!14876 (regOne!30264 (regOne!30264 r!7292)))) (not (is-ElementMatch!14876 (regOne!30264 (regOne!30264 r!7292))))))))

(declare-fun b!5259530 () Bool)

(declare-fun e!3271777 () Bool)

(assert (=> b!5259530 (= e!3271778 e!3271777)))

(declare-fun res!2231925 () Bool)

(assert (=> b!5259530 (= res!2231925 call!372838)))

(assert (=> b!5259530 (=> (not res!2231925) (not e!3271777))))

(declare-fun bm!372833 () Bool)

(declare-fun call!372839 () Bool)

(assert (=> bm!372833 (= call!372839 (nullable!5045 (ite c!910355 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292))))))))

(declare-fun b!5259531 () Bool)

(assert (=> b!5259531 (= e!3271775 e!3271773)))

(declare-fun res!2231921 () Bool)

(assert (=> b!5259531 (=> res!2231921 e!3271773)))

(assert (=> b!5259531 (= res!2231921 (is-Star!14876 (regOne!30264 (regOne!30264 r!7292))))))

(declare-fun bm!372834 () Bool)

(assert (=> bm!372834 (= call!372838 (nullable!5045 (ite c!910355 (regOne!30265 (regOne!30264 (regOne!30264 r!7292))) (regOne!30264 (regOne!30264 (regOne!30264 r!7292))))))))

(declare-fun b!5259532 () Bool)

(assert (=> b!5259532 (= e!3271776 call!372839)))

(declare-fun b!5259533 () Bool)

(assert (=> b!5259533 (= e!3271777 call!372839)))

(assert (= (and d!1692998 (not res!2231923)) b!5259529))

(assert (= (and b!5259529 res!2231924) b!5259531))

(assert (= (and b!5259531 (not res!2231921)) b!5259527))

(assert (= (and b!5259527 c!910355) b!5259528))

(assert (= (and b!5259527 (not c!910355)) b!5259530))

(assert (= (and b!5259528 (not res!2231922)) b!5259532))

(assert (= (and b!5259530 res!2231925) b!5259533))

(assert (= (or b!5259532 b!5259533) bm!372833))

(assert (= (or b!5259528 b!5259530) bm!372834))

(declare-fun m!6301510 () Bool)

(assert (=> bm!372833 m!6301510))

(declare-fun m!6301512 () Bool)

(assert (=> bm!372834 m!6301512))

(assert (=> d!1692874 d!1692998))

(declare-fun b!5259534 () Bool)

(declare-fun e!3271783 () (Set Context!8520))

(declare-fun call!372845 () (Set Context!8520))

(assert (=> b!5259534 (= e!3271783 call!372845)))

(declare-fun c!910360 () Bool)

(declare-fun c!910359 () Bool)

(declare-fun c!910356 () Bool)

(declare-fun call!372844 () List!60928)

(declare-fun bm!372835 () Bool)

(declare-fun call!372842 () (Set Context!8520))

(assert (=> bm!372835 (= call!372842 (derivationStepZipperDown!324 (ite c!910356 (regOne!30265 (h!67252 (exprs!4760 lt!2155101))) (ite c!910359 (regTwo!30264 (h!67252 (exprs!4760 lt!2155101))) (ite c!910360 (regOne!30264 (h!67252 (exprs!4760 lt!2155101))) (reg!15205 (h!67252 (exprs!4760 lt!2155101)))))) (ite (or c!910356 c!910359) (Context!8521 (t!374111 (exprs!4760 lt!2155101))) (Context!8521 call!372844)) (h!67251 s!2326)))))

(declare-fun b!5259535 () Bool)

(declare-fun e!3271780 () Bool)

(assert (=> b!5259535 (= c!910359 e!3271780)))

(declare-fun res!2231926 () Bool)

(assert (=> b!5259535 (=> (not res!2231926) (not e!3271780))))

(assert (=> b!5259535 (= res!2231926 (is-Concat!23721 (h!67252 (exprs!4760 lt!2155101))))))

(declare-fun e!3271784 () (Set Context!8520))

(declare-fun e!3271781 () (Set Context!8520))

(assert (=> b!5259535 (= e!3271784 e!3271781)))

(declare-fun d!1693000 () Bool)

(declare-fun c!910357 () Bool)

(assert (=> d!1693000 (= c!910357 (and (is-ElementMatch!14876 (h!67252 (exprs!4760 lt!2155101))) (= (c!910130 (h!67252 (exprs!4760 lt!2155101))) (h!67251 s!2326))))))

(declare-fun e!3271779 () (Set Context!8520))

(assert (=> d!1693000 (= (derivationStepZipperDown!324 (h!67252 (exprs!4760 lt!2155101)) (Context!8521 (t!374111 (exprs!4760 lt!2155101))) (h!67251 s!2326)) e!3271779)))

(declare-fun bm!372836 () Bool)

(declare-fun call!372841 () (Set Context!8520))

(assert (=> bm!372836 (= call!372841 call!372842)))

(declare-fun b!5259536 () Bool)

(assert (=> b!5259536 (= e!3271779 e!3271784)))

(assert (=> b!5259536 (= c!910356 (is-Union!14876 (h!67252 (exprs!4760 lt!2155101))))))

(declare-fun b!5259537 () Bool)

(declare-fun call!372840 () (Set Context!8520))

(assert (=> b!5259537 (= e!3271781 (set.union call!372840 call!372841))))

(declare-fun bm!372837 () Bool)

(declare-fun call!372843 () List!60928)

(assert (=> bm!372837 (= call!372843 ($colon$colon!1329 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 lt!2155101)))) (ite (or c!910359 c!910360) (regTwo!30264 (h!67252 (exprs!4760 lt!2155101))) (h!67252 (exprs!4760 lt!2155101)))))))

(declare-fun b!5259538 () Bool)

(declare-fun e!3271782 () (Set Context!8520))

(assert (=> b!5259538 (= e!3271782 (as set.empty (Set Context!8520)))))

(declare-fun b!5259539 () Bool)

(assert (=> b!5259539 (= e!3271779 (set.insert (Context!8521 (t!374111 (exprs!4760 lt!2155101))) (as set.empty (Set Context!8520))))))

(declare-fun b!5259540 () Bool)

(declare-fun c!910358 () Bool)

(assert (=> b!5259540 (= c!910358 (is-Star!14876 (h!67252 (exprs!4760 lt!2155101))))))

(assert (=> b!5259540 (= e!3271783 e!3271782)))

(declare-fun b!5259541 () Bool)

(assert (=> b!5259541 (= e!3271781 e!3271783)))

(assert (=> b!5259541 (= c!910360 (is-Concat!23721 (h!67252 (exprs!4760 lt!2155101))))))

(declare-fun b!5259542 () Bool)

(assert (=> b!5259542 (= e!3271780 (nullable!5045 (regOne!30264 (h!67252 (exprs!4760 lt!2155101)))))))

(declare-fun bm!372838 () Bool)

(assert (=> bm!372838 (= call!372845 call!372841)))

(declare-fun b!5259543 () Bool)

(assert (=> b!5259543 (= e!3271784 (set.union call!372842 call!372840))))

(declare-fun bm!372839 () Bool)

(assert (=> bm!372839 (= call!372840 (derivationStepZipperDown!324 (ite c!910356 (regTwo!30265 (h!67252 (exprs!4760 lt!2155101))) (regOne!30264 (h!67252 (exprs!4760 lt!2155101)))) (ite c!910356 (Context!8521 (t!374111 (exprs!4760 lt!2155101))) (Context!8521 call!372843)) (h!67251 s!2326)))))

(declare-fun bm!372840 () Bool)

(assert (=> bm!372840 (= call!372844 call!372843)))

(declare-fun b!5259544 () Bool)

(assert (=> b!5259544 (= e!3271782 call!372845)))

(assert (= (and d!1693000 c!910357) b!5259539))

(assert (= (and d!1693000 (not c!910357)) b!5259536))

(assert (= (and b!5259536 c!910356) b!5259543))

(assert (= (and b!5259536 (not c!910356)) b!5259535))

(assert (= (and b!5259535 res!2231926) b!5259542))

(assert (= (and b!5259535 c!910359) b!5259537))

(assert (= (and b!5259535 (not c!910359)) b!5259541))

(assert (= (and b!5259541 c!910360) b!5259534))

(assert (= (and b!5259541 (not c!910360)) b!5259540))

(assert (= (and b!5259540 c!910358) b!5259544))

(assert (= (and b!5259540 (not c!910358)) b!5259538))

(assert (= (or b!5259534 b!5259544) bm!372840))

(assert (= (or b!5259534 b!5259544) bm!372838))

(assert (= (or b!5259537 bm!372840) bm!372837))

(assert (= (or b!5259537 bm!372838) bm!372836))

(assert (= (or b!5259543 b!5259537) bm!372839))

(assert (= (or b!5259543 bm!372836) bm!372835))

(declare-fun m!6301514 () Bool)

(assert (=> bm!372837 m!6301514))

(declare-fun m!6301516 () Bool)

(assert (=> bm!372835 m!6301516))

(declare-fun m!6301518 () Bool)

(assert (=> b!5259542 m!6301518))

(declare-fun m!6301520 () Bool)

(assert (=> bm!372839 m!6301520))

(declare-fun m!6301522 () Bool)

(assert (=> b!5259539 m!6301522))

(assert (=> bm!372737 d!1693000))

(declare-fun d!1693002 () Bool)

(assert (=> d!1693002 (= (head!11277 s!2326) (h!67251 s!2326))))

(assert (=> b!5259072 d!1693002))

(declare-fun d!1693004 () Bool)

(assert (=> d!1693004 (= (isConcat!337 lt!2155141) (is-Concat!23721 lt!2155141))))

(assert (=> b!5258760 d!1693004))

(declare-fun d!1693006 () Bool)

(assert (=> d!1693006 (= (isEmpty!32745 (tail!10373 (exprs!4760 (h!67253 zl!343)))) (is-Nil!60804 (tail!10373 (exprs!4760 (h!67253 zl!343)))))))

(assert (=> b!5258758 d!1693006))

(declare-fun d!1693008 () Bool)

(assert (=> d!1693008 (= (tail!10373 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))

(assert (=> b!5258758 d!1693008))

(declare-fun d!1693010 () Bool)

(declare-fun res!2231931 () Bool)

(declare-fun e!3271789 () Bool)

(assert (=> d!1693010 (=> res!2231931 e!3271789)))

(assert (=> d!1693010 (= res!2231931 (is-Nil!60804 lt!2155183))))

(assert (=> d!1693010 (= (forall!14288 lt!2155183 lambda!265108) e!3271789)))

(declare-fun b!5259549 () Bool)

(declare-fun e!3271790 () Bool)

(assert (=> b!5259549 (= e!3271789 e!3271790)))

(declare-fun res!2231932 () Bool)

(assert (=> b!5259549 (=> (not res!2231932) (not e!3271790))))

(declare-fun dynLambda!24024 (Int Regex!14876) Bool)

(assert (=> b!5259549 (= res!2231932 (dynLambda!24024 lambda!265108 (h!67252 lt!2155183)))))

(declare-fun b!5259550 () Bool)

(assert (=> b!5259550 (= e!3271790 (forall!14288 (t!374111 lt!2155183) lambda!265108))))

(assert (= (and d!1693010 (not res!2231931)) b!5259549))

(assert (= (and b!5259549 res!2231932) b!5259550))

(declare-fun b_lambda!202959 () Bool)

(assert (=> (not b_lambda!202959) (not b!5259549)))

(declare-fun m!6301524 () Bool)

(assert (=> b!5259549 m!6301524))

(declare-fun m!6301526 () Bool)

(assert (=> b!5259550 m!6301526))

(assert (=> d!1692894 d!1693010))

(declare-fun d!1693012 () Bool)

(assert (=> d!1693012 (= (nullable!5045 (h!67252 (exprs!4760 lt!2155101))) (nullableFct!1431 (h!67252 (exprs!4760 lt!2155101))))))

(declare-fun bs!1219485 () Bool)

(assert (= bs!1219485 d!1693012))

(declare-fun m!6301528 () Bool)

(assert (=> bs!1219485 m!6301528))

(assert (=> b!5258798 d!1693012))

(assert (=> b!5259119 d!1692812))

(declare-fun bs!1219486 () Bool)

(declare-fun d!1693014 () Bool)

(assert (= bs!1219486 (and d!1693014 d!1692812)))

(declare-fun lambda!265142 () Int)

(assert (=> bs!1219486 (= lambda!265142 lambda!265076)))

(declare-fun bs!1219487 () Bool)

(assert (= bs!1219487 (and d!1693014 d!1692988)))

(assert (=> bs!1219487 (= lambda!265142 lambda!265138)))

(declare-fun bs!1219488 () Bool)

(assert (= bs!1219488 (and d!1693014 d!1692824)))

(assert (=> bs!1219488 (= lambda!265142 lambda!265080)))

(declare-fun bs!1219489 () Bool)

(assert (= bs!1219489 (and d!1693014 d!1692892)))

(assert (=> bs!1219489 (= lambda!265142 lambda!265105)))

(declare-fun bs!1219490 () Bool)

(assert (= bs!1219490 (and d!1693014 d!1692894)))

(assert (=> bs!1219490 (= lambda!265142 lambda!265108)))

(declare-fun bs!1219491 () Bool)

(assert (= bs!1219491 (and d!1693014 d!1692820)))

(assert (=> bs!1219491 (= lambda!265142 lambda!265079)))

(declare-fun lt!2155234 () List!60928)

(assert (=> d!1693014 (forall!14288 lt!2155234 lambda!265142)))

(declare-fun e!3271791 () List!60928)

(assert (=> d!1693014 (= lt!2155234 e!3271791)))

(declare-fun c!910361 () Bool)

(assert (=> d!1693014 (= c!910361 (is-Cons!60805 (t!374112 zl!343)))))

(assert (=> d!1693014 (= (unfocusZipperList!318 (t!374112 zl!343)) lt!2155234)))

(declare-fun b!5259551 () Bool)

(assert (=> b!5259551 (= e!3271791 (Cons!60804 (generalisedConcat!545 (exprs!4760 (h!67253 (t!374112 zl!343)))) (unfocusZipperList!318 (t!374112 (t!374112 zl!343)))))))

(declare-fun b!5259552 () Bool)

(assert (=> b!5259552 (= e!3271791 Nil!60804)))

(assert (= (and d!1693014 c!910361) b!5259551))

(assert (= (and d!1693014 (not c!910361)) b!5259552))

(declare-fun m!6301530 () Bool)

(assert (=> d!1693014 m!6301530))

(declare-fun m!6301532 () Bool)

(assert (=> b!5259551 m!6301532))

(declare-fun m!6301534 () Bool)

(assert (=> b!5259551 m!6301534))

(assert (=> b!5259119 d!1693014))

(assert (=> b!5258946 d!1692818))

(declare-fun d!1693016 () Bool)

(assert (=> d!1693016 (= ($colon$colon!1329 (exprs!4760 lt!2155101) (ite (or c!910186 c!910187) (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (h!67252 (exprs!4760 (h!67253 zl!343))))) (Cons!60804 (ite (or c!910186 c!910187) (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (h!67252 (exprs!4760 (h!67253 zl!343)))) (exprs!4760 lt!2155101)))))

(assert (=> bm!372758 d!1693016))

(declare-fun d!1693018 () Bool)

(declare-fun res!2231933 () Bool)

(declare-fun e!3271792 () Bool)

(assert (=> d!1693018 (=> res!2231933 e!3271792)))

(assert (=> d!1693018 (= res!2231933 (is-Nil!60804 (exprs!4760 (h!67253 zl!343))))))

(assert (=> d!1693018 (= (forall!14288 (exprs!4760 (h!67253 zl!343)) lambda!265079) e!3271792)))

(declare-fun b!5259553 () Bool)

(declare-fun e!3271793 () Bool)

(assert (=> b!5259553 (= e!3271792 e!3271793)))

(declare-fun res!2231934 () Bool)

(assert (=> b!5259553 (=> (not res!2231934) (not e!3271793))))

(assert (=> b!5259553 (= res!2231934 (dynLambda!24024 lambda!265079 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5259554 () Bool)

(assert (=> b!5259554 (= e!3271793 (forall!14288 (t!374111 (exprs!4760 (h!67253 zl!343))) lambda!265079))))

(assert (= (and d!1693018 (not res!2231933)) b!5259553))

(assert (= (and b!5259553 res!2231934) b!5259554))

(declare-fun b_lambda!202961 () Bool)

(assert (=> (not b_lambda!202961) (not b!5259553)))

(declare-fun m!6301536 () Bool)

(assert (=> b!5259553 m!6301536))

(declare-fun m!6301538 () Bool)

(assert (=> b!5259554 m!6301538))

(assert (=> d!1692820 d!1693018))

(declare-fun b!5259555 () Bool)

(declare-fun e!3271794 () Bool)

(declare-fun e!3271799 () Bool)

(assert (=> b!5259555 (= e!3271794 e!3271799)))

(declare-fun c!910362 () Bool)

(assert (=> b!5259555 (= c!910362 (is-Union!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun d!1693020 () Bool)

(declare-fun res!2231937 () Bool)

(declare-fun e!3271795 () Bool)

(assert (=> d!1693020 (=> res!2231937 e!3271795)))

(assert (=> d!1693020 (= res!2231937 (is-EmptyExpr!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(assert (=> d!1693020 (= (nullableFct!1431 (h!67252 (exprs!4760 (h!67253 zl!343)))) e!3271795)))

(declare-fun b!5259556 () Bool)

(declare-fun e!3271797 () Bool)

(assert (=> b!5259556 (= e!3271799 e!3271797)))

(declare-fun res!2231936 () Bool)

(declare-fun call!372846 () Bool)

(assert (=> b!5259556 (= res!2231936 call!372846)))

(assert (=> b!5259556 (=> res!2231936 e!3271797)))

(declare-fun b!5259557 () Bool)

(declare-fun e!3271796 () Bool)

(assert (=> b!5259557 (= e!3271795 e!3271796)))

(declare-fun res!2231938 () Bool)

(assert (=> b!5259557 (=> (not res!2231938) (not e!3271796))))

(assert (=> b!5259557 (= res!2231938 (and (not (is-EmptyLang!14876 (h!67252 (exprs!4760 (h!67253 zl!343))))) (not (is-ElementMatch!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun b!5259558 () Bool)

(declare-fun e!3271798 () Bool)

(assert (=> b!5259558 (= e!3271799 e!3271798)))

(declare-fun res!2231939 () Bool)

(assert (=> b!5259558 (= res!2231939 call!372846)))

(assert (=> b!5259558 (=> (not res!2231939) (not e!3271798))))

(declare-fun bm!372841 () Bool)

(declare-fun call!372847 () Bool)

(assert (=> bm!372841 (= call!372847 (nullable!5045 (ite c!910362 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun b!5259559 () Bool)

(assert (=> b!5259559 (= e!3271796 e!3271794)))

(declare-fun res!2231935 () Bool)

(assert (=> b!5259559 (=> res!2231935 e!3271794)))

(assert (=> b!5259559 (= res!2231935 (is-Star!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun bm!372842 () Bool)

(assert (=> bm!372842 (= call!372846 (nullable!5045 (ite c!910362 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun b!5259560 () Bool)

(assert (=> b!5259560 (= e!3271797 call!372847)))

(declare-fun b!5259561 () Bool)

(assert (=> b!5259561 (= e!3271798 call!372847)))

(assert (= (and d!1693020 (not res!2231937)) b!5259557))

(assert (= (and b!5259557 res!2231938) b!5259559))

(assert (= (and b!5259559 (not res!2231935)) b!5259555))

(assert (= (and b!5259555 c!910362) b!5259556))

(assert (= (and b!5259555 (not c!910362)) b!5259558))

(assert (= (and b!5259556 (not res!2231936)) b!5259560))

(assert (= (and b!5259558 res!2231939) b!5259561))

(assert (= (or b!5259560 b!5259561) bm!372841))

(assert (= (or b!5259556 b!5259558) bm!372842))

(declare-fun m!6301540 () Bool)

(assert (=> bm!372841 m!6301540))

(declare-fun m!6301542 () Bool)

(assert (=> bm!372842 m!6301542))

(assert (=> d!1692828 d!1693020))

(declare-fun b!5259562 () Bool)

(declare-fun e!3271801 () Bool)

(declare-fun e!3271804 () Bool)

(assert (=> b!5259562 (= e!3271801 e!3271804)))

(declare-fun res!2231942 () Bool)

(assert (=> b!5259562 (= res!2231942 (not (nullable!5045 (reg!15205 lt!2155141))))))

(assert (=> b!5259562 (=> (not res!2231942) (not e!3271804))))

(declare-fun bm!372843 () Bool)

(declare-fun call!372849 () Bool)

(declare-fun c!910364 () Bool)

(assert (=> bm!372843 (= call!372849 (validRegex!6612 (ite c!910364 (regOne!30265 lt!2155141) (regOne!30264 lt!2155141))))))

(declare-fun b!5259563 () Bool)

(declare-fun res!2231940 () Bool)

(declare-fun e!3271805 () Bool)

(assert (=> b!5259563 (=> res!2231940 e!3271805)))

(assert (=> b!5259563 (= res!2231940 (not (is-Concat!23721 lt!2155141)))))

(declare-fun e!3271806 () Bool)

(assert (=> b!5259563 (= e!3271806 e!3271805)))

(declare-fun b!5259564 () Bool)

(declare-fun e!3271803 () Bool)

(assert (=> b!5259564 (= e!3271803 e!3271801)))

(declare-fun c!910363 () Bool)

(assert (=> b!5259564 (= c!910363 (is-Star!14876 lt!2155141))))

(declare-fun b!5259565 () Bool)

(declare-fun res!2231941 () Bool)

(declare-fun e!3271802 () Bool)

(assert (=> b!5259565 (=> (not res!2231941) (not e!3271802))))

(assert (=> b!5259565 (= res!2231941 call!372849)))

(assert (=> b!5259565 (= e!3271806 e!3271802)))

(declare-fun b!5259566 () Bool)

(declare-fun call!372850 () Bool)

(assert (=> b!5259566 (= e!3271802 call!372850)))

(declare-fun b!5259567 () Bool)

(assert (=> b!5259567 (= e!3271801 e!3271806)))

(assert (=> b!5259567 (= c!910364 (is-Union!14876 lt!2155141))))

(declare-fun b!5259568 () Bool)

(declare-fun e!3271800 () Bool)

(assert (=> b!5259568 (= e!3271800 call!372850)))

(declare-fun d!1693022 () Bool)

(declare-fun res!2231943 () Bool)

(assert (=> d!1693022 (=> res!2231943 e!3271803)))

(assert (=> d!1693022 (= res!2231943 (is-ElementMatch!14876 lt!2155141))))

(assert (=> d!1693022 (= (validRegex!6612 lt!2155141) e!3271803)))

(declare-fun call!372848 () Bool)

(declare-fun bm!372844 () Bool)

(assert (=> bm!372844 (= call!372848 (validRegex!6612 (ite c!910363 (reg!15205 lt!2155141) (ite c!910364 (regTwo!30265 lt!2155141) (regTwo!30264 lt!2155141)))))))

(declare-fun b!5259569 () Bool)

(assert (=> b!5259569 (= e!3271804 call!372848)))

(declare-fun b!5259570 () Bool)

(assert (=> b!5259570 (= e!3271805 e!3271800)))

(declare-fun res!2231944 () Bool)

(assert (=> b!5259570 (=> (not res!2231944) (not e!3271800))))

(assert (=> b!5259570 (= res!2231944 call!372849)))

(declare-fun bm!372845 () Bool)

(assert (=> bm!372845 (= call!372850 call!372848)))

(assert (= (and d!1693022 (not res!2231943)) b!5259564))

(assert (= (and b!5259564 c!910363) b!5259562))

(assert (= (and b!5259564 (not c!910363)) b!5259567))

(assert (= (and b!5259562 res!2231942) b!5259569))

(assert (= (and b!5259567 c!910364) b!5259565))

(assert (= (and b!5259567 (not c!910364)) b!5259563))

(assert (= (and b!5259565 res!2231941) b!5259566))

(assert (= (and b!5259563 (not res!2231940)) b!5259570))

(assert (= (and b!5259570 res!2231944) b!5259568))

(assert (= (or b!5259566 b!5259568) bm!372845))

(assert (= (or b!5259565 b!5259570) bm!372843))

(assert (= (or b!5259569 bm!372845) bm!372844))

(declare-fun m!6301544 () Bool)

(assert (=> b!5259562 m!6301544))

(declare-fun m!6301546 () Bool)

(assert (=> bm!372843 m!6301546))

(declare-fun m!6301548 () Bool)

(assert (=> bm!372844 m!6301548))

(assert (=> d!1692812 d!1693022))

(declare-fun d!1693024 () Bool)

(declare-fun res!2231945 () Bool)

(declare-fun e!3271807 () Bool)

(assert (=> d!1693024 (=> res!2231945 e!3271807)))

(assert (=> d!1693024 (= res!2231945 (is-Nil!60804 (exprs!4760 (h!67253 zl!343))))))

(assert (=> d!1693024 (= (forall!14288 (exprs!4760 (h!67253 zl!343)) lambda!265076) e!3271807)))

(declare-fun b!5259571 () Bool)

(declare-fun e!3271808 () Bool)

(assert (=> b!5259571 (= e!3271807 e!3271808)))

(declare-fun res!2231946 () Bool)

(assert (=> b!5259571 (=> (not res!2231946) (not e!3271808))))

(assert (=> b!5259571 (= res!2231946 (dynLambda!24024 lambda!265076 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5259572 () Bool)

(assert (=> b!5259572 (= e!3271808 (forall!14288 (t!374111 (exprs!4760 (h!67253 zl!343))) lambda!265076))))

(assert (= (and d!1693024 (not res!2231945)) b!5259571))

(assert (= (and b!5259571 res!2231946) b!5259572))

(declare-fun b_lambda!202963 () Bool)

(assert (=> (not b_lambda!202963) (not b!5259571)))

(declare-fun m!6301550 () Bool)

(assert (=> b!5259571 m!6301550))

(declare-fun m!6301552 () Bool)

(assert (=> b!5259572 m!6301552))

(assert (=> d!1692812 d!1693024))

(declare-fun b!5259573 () Bool)

(declare-fun e!3271810 () Bool)

(declare-fun e!3271813 () Bool)

(assert (=> b!5259573 (= e!3271810 e!3271813)))

(declare-fun res!2231949 () Bool)

(assert (=> b!5259573 (= res!2231949 (not (nullable!5045 (reg!15205 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))))))))

(assert (=> b!5259573 (=> (not res!2231949) (not e!3271813))))

(declare-fun c!910366 () Bool)

(declare-fun bm!372846 () Bool)

(declare-fun call!372852 () Bool)

(assert (=> bm!372846 (= call!372852 (validRegex!6612 (ite c!910366 (regOne!30265 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))) (regOne!30264 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))))))))

(declare-fun b!5259574 () Bool)

(declare-fun res!2231947 () Bool)

(declare-fun e!3271814 () Bool)

(assert (=> b!5259574 (=> res!2231947 e!3271814)))

(assert (=> b!5259574 (= res!2231947 (not (is-Concat!23721 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292)))))))

(declare-fun e!3271815 () Bool)

(assert (=> b!5259574 (= e!3271815 e!3271814)))

(declare-fun b!5259575 () Bool)

(declare-fun e!3271812 () Bool)

(assert (=> b!5259575 (= e!3271812 e!3271810)))

(declare-fun c!910365 () Bool)

(assert (=> b!5259575 (= c!910365 (is-Star!14876 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))))))

(declare-fun b!5259576 () Bool)

(declare-fun res!2231948 () Bool)

(declare-fun e!3271811 () Bool)

(assert (=> b!5259576 (=> (not res!2231948) (not e!3271811))))

(assert (=> b!5259576 (= res!2231948 call!372852)))

(assert (=> b!5259576 (= e!3271815 e!3271811)))

(declare-fun b!5259577 () Bool)

(declare-fun call!372853 () Bool)

(assert (=> b!5259577 (= e!3271811 call!372853)))

(declare-fun b!5259578 () Bool)

(assert (=> b!5259578 (= e!3271810 e!3271815)))

(assert (=> b!5259578 (= c!910366 (is-Union!14876 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))))))

(declare-fun b!5259579 () Bool)

(declare-fun e!3271809 () Bool)

(assert (=> b!5259579 (= e!3271809 call!372853)))

(declare-fun d!1693026 () Bool)

(declare-fun res!2231950 () Bool)

(assert (=> d!1693026 (=> res!2231950 e!3271812)))

(assert (=> d!1693026 (= res!2231950 (is-ElementMatch!14876 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))))))

(assert (=> d!1693026 (= (validRegex!6612 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))) e!3271812)))

(declare-fun bm!372847 () Bool)

(declare-fun call!372851 () Bool)

(assert (=> bm!372847 (= call!372851 (validRegex!6612 (ite c!910365 (reg!15205 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))) (ite c!910366 (regTwo!30265 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292))) (regTwo!30264 (ite c!910160 (regOne!30265 r!7292) (regOne!30264 r!7292)))))))))

(declare-fun b!5259580 () Bool)

(assert (=> b!5259580 (= e!3271813 call!372851)))

(declare-fun b!5259581 () Bool)

(assert (=> b!5259581 (= e!3271814 e!3271809)))

(declare-fun res!2231951 () Bool)

(assert (=> b!5259581 (=> (not res!2231951) (not e!3271809))))

(assert (=> b!5259581 (= res!2231951 call!372852)))

(declare-fun bm!372848 () Bool)

(assert (=> bm!372848 (= call!372853 call!372851)))

(assert (= (and d!1693026 (not res!2231950)) b!5259575))

(assert (= (and b!5259575 c!910365) b!5259573))

(assert (= (and b!5259575 (not c!910365)) b!5259578))

(assert (= (and b!5259573 res!2231949) b!5259580))

(assert (= (and b!5259578 c!910366) b!5259576))

(assert (= (and b!5259578 (not c!910366)) b!5259574))

(assert (= (and b!5259576 res!2231948) b!5259577))

(assert (= (and b!5259574 (not res!2231947)) b!5259581))

(assert (= (and b!5259581 res!2231951) b!5259579))

(assert (= (or b!5259577 b!5259579) bm!372848))

(assert (= (or b!5259576 b!5259581) bm!372846))

(assert (= (or b!5259580 bm!372848) bm!372847))

(declare-fun m!6301554 () Bool)

(assert (=> b!5259573 m!6301554))

(declare-fun m!6301556 () Bool)

(assert (=> bm!372846 m!6301556))

(declare-fun m!6301558 () Bool)

(assert (=> bm!372847 m!6301558))

(assert (=> bm!372731 d!1693026))

(declare-fun d!1693028 () Bool)

(assert (=> d!1693028 (= (isEmpty!32745 (tail!10373 (unfocusZipperList!318 zl!343))) (is-Nil!60804 (tail!10373 (unfocusZipperList!318 zl!343))))))

(assert (=> b!5259106 d!1693028))

(declare-fun d!1693030 () Bool)

(assert (=> d!1693030 (= (tail!10373 (unfocusZipperList!318 zl!343)) (t!374111 (unfocusZipperList!318 zl!343)))))

(assert (=> b!5259106 d!1693030))

(declare-fun d!1693032 () Bool)

(assert (=> d!1693032 (= (nullable!5045 (reg!15205 (regOne!30264 (regOne!30264 r!7292)))) (nullableFct!1431 (reg!15205 (regOne!30264 (regOne!30264 r!7292)))))))

(declare-fun bs!1219492 () Bool)

(assert (= bs!1219492 d!1693032))

(declare-fun m!6301560 () Bool)

(assert (=> bs!1219492 m!6301560))

(assert (=> b!5258722 d!1693032))

(declare-fun b!5259582 () Bool)

(declare-fun e!3271822 () Bool)

(declare-fun e!3271817 () Bool)

(assert (=> b!5259582 (= e!3271822 e!3271817)))

(declare-fun res!2231952 () Bool)

(assert (=> b!5259582 (=> (not res!2231952) (not e!3271817))))

(declare-fun lt!2155235 () Bool)

(assert (=> b!5259582 (= res!2231952 (not lt!2155235))))

(declare-fun b!5259583 () Bool)

(declare-fun res!2231954 () Bool)

(declare-fun e!3271821 () Bool)

(assert (=> b!5259583 (=> (not res!2231954) (not e!3271821))))

(declare-fun call!372854 () Bool)

(assert (=> b!5259583 (= res!2231954 (not call!372854))))

(declare-fun b!5259584 () Bool)

(declare-fun e!3271819 () Bool)

(assert (=> b!5259584 (= e!3271819 (matchR!7061 (derivativeStep!4100 (regOne!30264 r!7292) (head!11277 (_1!35378 (get!20903 lt!2155159)))) (tail!10374 (_1!35378 (get!20903 lt!2155159)))))))

(declare-fun b!5259585 () Bool)

(declare-fun e!3271820 () Bool)

(assert (=> b!5259585 (= e!3271820 (not lt!2155235))))

(declare-fun b!5259586 () Bool)

(declare-fun res!2231953 () Bool)

(assert (=> b!5259586 (=> res!2231953 e!3271822)))

(assert (=> b!5259586 (= res!2231953 e!3271821)))

(declare-fun res!2231959 () Bool)

(assert (=> b!5259586 (=> (not res!2231959) (not e!3271821))))

(assert (=> b!5259586 (= res!2231959 lt!2155235)))

(declare-fun b!5259587 () Bool)

(declare-fun e!3271816 () Bool)

(assert (=> b!5259587 (= e!3271817 e!3271816)))

(declare-fun res!2231958 () Bool)

(assert (=> b!5259587 (=> res!2231958 e!3271816)))

(assert (=> b!5259587 (= res!2231958 call!372854)))

(declare-fun d!1693034 () Bool)

(declare-fun e!3271818 () Bool)

(assert (=> d!1693034 e!3271818))

(declare-fun c!910367 () Bool)

(assert (=> d!1693034 (= c!910367 (is-EmptyExpr!14876 (regOne!30264 r!7292)))))

(assert (=> d!1693034 (= lt!2155235 e!3271819)))

(declare-fun c!910368 () Bool)

(assert (=> d!1693034 (= c!910368 (isEmpty!32749 (_1!35378 (get!20903 lt!2155159))))))

(assert (=> d!1693034 (validRegex!6612 (regOne!30264 r!7292))))

(assert (=> d!1693034 (= (matchR!7061 (regOne!30264 r!7292) (_1!35378 (get!20903 lt!2155159))) lt!2155235)))

(declare-fun b!5259588 () Bool)

(declare-fun res!2231957 () Bool)

(assert (=> b!5259588 (=> res!2231957 e!3271816)))

(assert (=> b!5259588 (= res!2231957 (not (isEmpty!32749 (tail!10374 (_1!35378 (get!20903 lt!2155159))))))))

(declare-fun b!5259589 () Bool)

(assert (=> b!5259589 (= e!3271818 (= lt!2155235 call!372854))))

(declare-fun bm!372849 () Bool)

(assert (=> bm!372849 (= call!372854 (isEmpty!32749 (_1!35378 (get!20903 lt!2155159))))))

(declare-fun b!5259590 () Bool)

(assert (=> b!5259590 (= e!3271816 (not (= (head!11277 (_1!35378 (get!20903 lt!2155159))) (c!910130 (regOne!30264 r!7292)))))))

(declare-fun b!5259591 () Bool)

(declare-fun res!2231955 () Bool)

(assert (=> b!5259591 (=> (not res!2231955) (not e!3271821))))

(assert (=> b!5259591 (= res!2231955 (isEmpty!32749 (tail!10374 (_1!35378 (get!20903 lt!2155159)))))))

(declare-fun b!5259592 () Bool)

(assert (=> b!5259592 (= e!3271819 (nullable!5045 (regOne!30264 r!7292)))))

(declare-fun b!5259593 () Bool)

(assert (=> b!5259593 (= e!3271821 (= (head!11277 (_1!35378 (get!20903 lt!2155159))) (c!910130 (regOne!30264 r!7292))))))

(declare-fun b!5259594 () Bool)

(declare-fun res!2231956 () Bool)

(assert (=> b!5259594 (=> res!2231956 e!3271822)))

(assert (=> b!5259594 (= res!2231956 (not (is-ElementMatch!14876 (regOne!30264 r!7292))))))

(assert (=> b!5259594 (= e!3271820 e!3271822)))

(declare-fun b!5259595 () Bool)

(assert (=> b!5259595 (= e!3271818 e!3271820)))

(declare-fun c!910369 () Bool)

(assert (=> b!5259595 (= c!910369 (is-EmptyLang!14876 (regOne!30264 r!7292)))))

(assert (= (and d!1693034 c!910368) b!5259592))

(assert (= (and d!1693034 (not c!910368)) b!5259584))

(assert (= (and d!1693034 c!910367) b!5259589))

(assert (= (and d!1693034 (not c!910367)) b!5259595))

(assert (= (and b!5259595 c!910369) b!5259585))

(assert (= (and b!5259595 (not c!910369)) b!5259594))

(assert (= (and b!5259594 (not res!2231956)) b!5259586))

(assert (= (and b!5259586 res!2231959) b!5259583))

(assert (= (and b!5259583 res!2231954) b!5259591))

(assert (= (and b!5259591 res!2231955) b!5259593))

(assert (= (and b!5259586 (not res!2231953)) b!5259582))

(assert (= (and b!5259582 res!2231952) b!5259587))

(assert (= (and b!5259587 (not res!2231958)) b!5259588))

(assert (= (and b!5259588 (not res!2231957)) b!5259590))

(assert (= (or b!5259589 b!5259583 b!5259587) bm!372849))

(declare-fun m!6301562 () Bool)

(assert (=> b!5259591 m!6301562))

(assert (=> b!5259591 m!6301562))

(declare-fun m!6301564 () Bool)

(assert (=> b!5259591 m!6301564))

(declare-fun m!6301566 () Bool)

(assert (=> b!5259592 m!6301566))

(declare-fun m!6301568 () Bool)

(assert (=> d!1693034 m!6301568))

(assert (=> d!1693034 m!6301090))

(declare-fun m!6301570 () Bool)

(assert (=> b!5259590 m!6301570))

(assert (=> bm!372849 m!6301568))

(assert (=> b!5259588 m!6301562))

(assert (=> b!5259588 m!6301562))

(assert (=> b!5259588 m!6301564))

(assert (=> b!5259584 m!6301570))

(assert (=> b!5259584 m!6301570))

(declare-fun m!6301572 () Bool)

(assert (=> b!5259584 m!6301572))

(assert (=> b!5259584 m!6301562))

(assert (=> b!5259584 m!6301572))

(assert (=> b!5259584 m!6301562))

(declare-fun m!6301574 () Bool)

(assert (=> b!5259584 m!6301574))

(assert (=> b!5259593 m!6301570))

(assert (=> b!5258883 d!1693034))

(assert (=> b!5258883 d!1692974))

(declare-fun d!1693036 () Bool)

(assert (=> d!1693036 true))

(declare-fun setRes!33620 () Bool)

(assert (=> d!1693036 setRes!33620))

(declare-fun condSetEmpty!33620 () Bool)

(declare-fun res!2231962 () (Set Context!8520))

(assert (=> d!1693036 (= condSetEmpty!33620 (= res!2231962 (as set.empty (Set Context!8520))))))

(assert (=> d!1693036 (= (choose!39223 z!1189 lambda!265062) res!2231962)))

(declare-fun setIsEmpty!33620 () Bool)

(assert (=> setIsEmpty!33620 setRes!33620))

(declare-fun setElem!33620 () Context!8520)

(declare-fun e!3271825 () Bool)

(declare-fun tp!1470355 () Bool)

(declare-fun setNonEmpty!33620 () Bool)

(assert (=> setNonEmpty!33620 (= setRes!33620 (and tp!1470355 (inv!80438 setElem!33620) e!3271825))))

(declare-fun setRest!33620 () (Set Context!8520))

(assert (=> setNonEmpty!33620 (= res!2231962 (set.union (set.insert setElem!33620 (as set.empty (Set Context!8520))) setRest!33620))))

(declare-fun b!5259598 () Bool)

(declare-fun tp!1470354 () Bool)

(assert (=> b!5259598 (= e!3271825 tp!1470354)))

(assert (= (and d!1693036 condSetEmpty!33620) setIsEmpty!33620))

(assert (= (and d!1693036 (not condSetEmpty!33620)) setNonEmpty!33620))

(assert (= setNonEmpty!33620 b!5259598))

(declare-fun m!6301576 () Bool)

(assert (=> setNonEmpty!33620 m!6301576))

(assert (=> d!1692834 d!1693036))

(assert (=> bm!372793 d!1692986))

(declare-fun bs!1219493 () Bool)

(declare-fun d!1693038 () Bool)

(assert (= bs!1219493 (and d!1693038 d!1692812)))

(declare-fun lambda!265143 () Int)

(assert (=> bs!1219493 (= lambda!265143 lambda!265076)))

(declare-fun bs!1219494 () Bool)

(assert (= bs!1219494 (and d!1693038 d!1692988)))

(assert (=> bs!1219494 (= lambda!265143 lambda!265138)))

(declare-fun bs!1219495 () Bool)

(assert (= bs!1219495 (and d!1693038 d!1692824)))

(assert (=> bs!1219495 (= lambda!265143 lambda!265080)))

(declare-fun bs!1219496 () Bool)

(assert (= bs!1219496 (and d!1693038 d!1692892)))

(assert (=> bs!1219496 (= lambda!265143 lambda!265105)))

(declare-fun bs!1219497 () Bool)

(assert (= bs!1219497 (and d!1693038 d!1692894)))

(assert (=> bs!1219497 (= lambda!265143 lambda!265108)))

(declare-fun bs!1219498 () Bool)

(assert (= bs!1219498 (and d!1693038 d!1693014)))

(assert (=> bs!1219498 (= lambda!265143 lambda!265142)))

(declare-fun bs!1219499 () Bool)

(assert (= bs!1219499 (and d!1693038 d!1692820)))

(assert (=> bs!1219499 (= lambda!265143 lambda!265079)))

(assert (=> d!1693038 (= (inv!80438 setElem!33614) (forall!14288 (exprs!4760 setElem!33614) lambda!265143))))

(declare-fun bs!1219500 () Bool)

(assert (= bs!1219500 d!1693038))

(declare-fun m!6301578 () Bool)

(assert (=> bs!1219500 m!6301578))

(assert (=> setNonEmpty!33614 d!1693038))

(declare-fun bs!1219501 () Bool)

(declare-fun d!1693040 () Bool)

(assert (= bs!1219501 (and d!1693040 d!1692982)))

(declare-fun lambda!265144 () Int)

(assert (=> bs!1219501 (= lambda!265144 lambda!265137)))

(assert (=> d!1693040 (= (nullableZipper!1279 (set.union lt!2155091 lt!2155094)) (exists!1982 (set.union lt!2155091 lt!2155094) lambda!265144))))

(declare-fun bs!1219502 () Bool)

(assert (= bs!1219502 d!1693040))

(declare-fun m!6301580 () Bool)

(assert (=> bs!1219502 m!6301580))

(assert (=> b!5258951 d!1693040))

(declare-fun d!1693042 () Bool)

(declare-fun c!910372 () Bool)

(assert (=> d!1693042 (= c!910372 (is-Nil!60805 lt!2155147))))

(declare-fun e!3271828 () (Set Context!8520))

(assert (=> d!1693042 (= (content!10801 lt!2155147) e!3271828)))

(declare-fun b!5259603 () Bool)

(assert (=> b!5259603 (= e!3271828 (as set.empty (Set Context!8520)))))

(declare-fun b!5259604 () Bool)

(assert (=> b!5259604 (= e!3271828 (set.union (set.insert (h!67253 lt!2155147) (as set.empty (Set Context!8520))) (content!10801 (t!374112 lt!2155147))))))

(assert (= (and d!1693042 c!910372) b!5259603))

(assert (= (and d!1693042 (not c!910372)) b!5259604))

(declare-fun m!6301582 () Bool)

(assert (=> b!5259604 m!6301582))

(declare-fun m!6301584 () Bool)

(assert (=> b!5259604 m!6301584))

(assert (=> b!5258769 d!1693042))

(declare-fun b!5259605 () Bool)

(declare-fun e!3271833 () (Set Context!8520))

(declare-fun call!372860 () (Set Context!8520))

(assert (=> b!5259605 (= e!3271833 call!372860)))

(declare-fun bm!372850 () Bool)

(declare-fun c!910373 () Bool)

(declare-fun call!372859 () List!60928)

(declare-fun call!372857 () (Set Context!8520))

(declare-fun c!910377 () Bool)

(declare-fun c!910376 () Bool)

(assert (=> bm!372850 (= call!372857 (derivationStepZipperDown!324 (ite c!910373 (regOne!30265 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))) (ite c!910376 (regTwo!30264 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))) (ite c!910377 (regOne!30264 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))) (reg!15205 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))))))) (ite (or c!910373 c!910376) (ite c!910183 lt!2155101 (Context!8521 call!372764)) (Context!8521 call!372859)) (h!67251 s!2326)))))

(declare-fun b!5259606 () Bool)

(declare-fun e!3271830 () Bool)

(assert (=> b!5259606 (= c!910376 e!3271830)))

(declare-fun res!2231963 () Bool)

(assert (=> b!5259606 (=> (not res!2231963) (not e!3271830))))

(assert (=> b!5259606 (= res!2231963 (is-Concat!23721 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun e!3271834 () (Set Context!8520))

(declare-fun e!3271831 () (Set Context!8520))

(assert (=> b!5259606 (= e!3271834 e!3271831)))

(declare-fun c!910374 () Bool)

(declare-fun d!1693044 () Bool)

(assert (=> d!1693044 (= c!910374 (and (is-ElementMatch!14876 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))) (= (c!910130 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))) (h!67251 s!2326))))))

(declare-fun e!3271829 () (Set Context!8520))

(assert (=> d!1693044 (= (derivationStepZipperDown!324 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))) (ite c!910183 lt!2155101 (Context!8521 call!372764)) (h!67251 s!2326)) e!3271829)))

(declare-fun bm!372851 () Bool)

(declare-fun call!372856 () (Set Context!8520))

(assert (=> bm!372851 (= call!372856 call!372857)))

(declare-fun b!5259607 () Bool)

(assert (=> b!5259607 (= e!3271829 e!3271834)))

(assert (=> b!5259607 (= c!910373 (is-Union!14876 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun b!5259608 () Bool)

(declare-fun call!372855 () (Set Context!8520))

(assert (=> b!5259608 (= e!3271831 (set.union call!372855 call!372856))))

(declare-fun bm!372852 () Bool)

(declare-fun call!372858 () List!60928)

(assert (=> bm!372852 (= call!372858 ($colon$colon!1329 (exprs!4760 (ite c!910183 lt!2155101 (Context!8521 call!372764))) (ite (or c!910376 c!910377) (regTwo!30264 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))) (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))))))))

(declare-fun b!5259609 () Bool)

(declare-fun e!3271832 () (Set Context!8520))

(assert (=> b!5259609 (= e!3271832 (as set.empty (Set Context!8520)))))

(declare-fun b!5259610 () Bool)

(assert (=> b!5259610 (= e!3271829 (set.insert (ite c!910183 lt!2155101 (Context!8521 call!372764)) (as set.empty (Set Context!8520))))))

(declare-fun b!5259611 () Bool)

(declare-fun c!910375 () Bool)

(assert (=> b!5259611 (= c!910375 (is-Star!14876 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))

(assert (=> b!5259611 (= e!3271833 e!3271832)))

(declare-fun b!5259612 () Bool)

(assert (=> b!5259612 (= e!3271831 e!3271833)))

(assert (=> b!5259612 (= c!910377 (is-Concat!23721 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun b!5259613 () Bool)

(assert (=> b!5259613 (= e!3271830 (nullable!5045 (regOne!30264 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))))))))

(declare-fun bm!372853 () Bool)

(assert (=> bm!372853 (= call!372860 call!372856)))

(declare-fun b!5259614 () Bool)

(assert (=> b!5259614 (= e!3271834 (set.union call!372857 call!372855))))

(declare-fun bm!372854 () Bool)

(assert (=> bm!372854 (= call!372855 (derivationStepZipperDown!324 (ite c!910373 (regTwo!30265 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))))) (regOne!30264 (ite c!910183 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))))) (ite c!910373 (ite c!910183 lt!2155101 (Context!8521 call!372764)) (Context!8521 call!372858)) (h!67251 s!2326)))))

(declare-fun bm!372855 () Bool)

(assert (=> bm!372855 (= call!372859 call!372858)))

(declare-fun b!5259615 () Bool)

(assert (=> b!5259615 (= e!3271832 call!372860)))

(assert (= (and d!1693044 c!910374) b!5259610))

(assert (= (and d!1693044 (not c!910374)) b!5259607))

(assert (= (and b!5259607 c!910373) b!5259614))

(assert (= (and b!5259607 (not c!910373)) b!5259606))

(assert (= (and b!5259606 res!2231963) b!5259613))

(assert (= (and b!5259606 c!910376) b!5259608))

(assert (= (and b!5259606 (not c!910376)) b!5259612))

(assert (= (and b!5259612 c!910377) b!5259605))

(assert (= (and b!5259612 (not c!910377)) b!5259611))

(assert (= (and b!5259611 c!910375) b!5259615))

(assert (= (and b!5259611 (not c!910375)) b!5259609))

(assert (= (or b!5259605 b!5259615) bm!372855))

(assert (= (or b!5259605 b!5259615) bm!372853))

(assert (= (or b!5259608 bm!372855) bm!372852))

(assert (= (or b!5259608 bm!372853) bm!372851))

(assert (= (or b!5259614 b!5259608) bm!372854))

(assert (= (or b!5259614 bm!372851) bm!372850))

(declare-fun m!6301586 () Bool)

(assert (=> bm!372852 m!6301586))

(declare-fun m!6301588 () Bool)

(assert (=> bm!372850 m!6301588))

(declare-fun m!6301590 () Bool)

(assert (=> b!5259613 m!6301590))

(declare-fun m!6301592 () Bool)

(assert (=> bm!372854 m!6301592))

(declare-fun m!6301594 () Bool)

(assert (=> b!5259610 m!6301594))

(assert (=> bm!372760 d!1693044))

(declare-fun d!1693046 () Bool)

(assert (=> d!1693046 (= (head!11276 (unfocusZipperList!318 zl!343)) (h!67252 (unfocusZipperList!318 zl!343)))))

(assert (=> b!5259110 d!1693046))

(declare-fun b!5259617 () Bool)

(declare-fun e!3271836 () List!60927)

(assert (=> b!5259617 (= e!3271836 (Cons!60803 (h!67251 (_1!35378 (get!20903 lt!2155159))) (++!13259 (t!374110 (_1!35378 (get!20903 lt!2155159))) (_2!35378 (get!20903 lt!2155159)))))))

(declare-fun d!1693048 () Bool)

(declare-fun e!3271835 () Bool)

(assert (=> d!1693048 e!3271835))

(declare-fun res!2231964 () Bool)

(assert (=> d!1693048 (=> (not res!2231964) (not e!3271835))))

(declare-fun lt!2155236 () List!60927)

(assert (=> d!1693048 (= res!2231964 (= (content!10803 lt!2155236) (set.union (content!10803 (_1!35378 (get!20903 lt!2155159))) (content!10803 (_2!35378 (get!20903 lt!2155159))))))))

(assert (=> d!1693048 (= lt!2155236 e!3271836)))

(declare-fun c!910378 () Bool)

(assert (=> d!1693048 (= c!910378 (is-Nil!60803 (_1!35378 (get!20903 lt!2155159))))))

(assert (=> d!1693048 (= (++!13259 (_1!35378 (get!20903 lt!2155159)) (_2!35378 (get!20903 lt!2155159))) lt!2155236)))

(declare-fun b!5259619 () Bool)

(assert (=> b!5259619 (= e!3271835 (or (not (= (_2!35378 (get!20903 lt!2155159)) Nil!60803)) (= lt!2155236 (_1!35378 (get!20903 lt!2155159)))))))

(declare-fun b!5259618 () Bool)

(declare-fun res!2231965 () Bool)

(assert (=> b!5259618 (=> (not res!2231965) (not e!3271835))))

(assert (=> b!5259618 (= res!2231965 (= (size!39737 lt!2155236) (+ (size!39737 (_1!35378 (get!20903 lt!2155159))) (size!39737 (_2!35378 (get!20903 lt!2155159))))))))

(declare-fun b!5259616 () Bool)

(assert (=> b!5259616 (= e!3271836 (_2!35378 (get!20903 lt!2155159)))))

(assert (= (and d!1693048 c!910378) b!5259616))

(assert (= (and d!1693048 (not c!910378)) b!5259617))

(assert (= (and d!1693048 res!2231964) b!5259618))

(assert (= (and b!5259618 res!2231965) b!5259619))

(declare-fun m!6301596 () Bool)

(assert (=> b!5259617 m!6301596))

(declare-fun m!6301598 () Bool)

(assert (=> d!1693048 m!6301598))

(declare-fun m!6301600 () Bool)

(assert (=> d!1693048 m!6301600))

(declare-fun m!6301602 () Bool)

(assert (=> d!1693048 m!6301602))

(declare-fun m!6301604 () Bool)

(assert (=> b!5259618 m!6301604))

(declare-fun m!6301606 () Bool)

(assert (=> b!5259618 m!6301606))

(declare-fun m!6301608 () Bool)

(assert (=> b!5259618 m!6301608))

(assert (=> b!5258885 d!1693048))

(assert (=> b!5258885 d!1692974))

(declare-fun bs!1219503 () Bool)

(declare-fun d!1693050 () Bool)

(assert (= bs!1219503 (and d!1693050 d!1692812)))

(declare-fun lambda!265145 () Int)

(assert (=> bs!1219503 (= lambda!265145 lambda!265076)))

(declare-fun bs!1219504 () Bool)

(assert (= bs!1219504 (and d!1693050 d!1692988)))

(assert (=> bs!1219504 (= lambda!265145 lambda!265138)))

(declare-fun bs!1219505 () Bool)

(assert (= bs!1219505 (and d!1693050 d!1693038)))

(assert (=> bs!1219505 (= lambda!265145 lambda!265143)))

(declare-fun bs!1219506 () Bool)

(assert (= bs!1219506 (and d!1693050 d!1692824)))

(assert (=> bs!1219506 (= lambda!265145 lambda!265080)))

(declare-fun bs!1219507 () Bool)

(assert (= bs!1219507 (and d!1693050 d!1692892)))

(assert (=> bs!1219507 (= lambda!265145 lambda!265105)))

(declare-fun bs!1219508 () Bool)

(assert (= bs!1219508 (and d!1693050 d!1692894)))

(assert (=> bs!1219508 (= lambda!265145 lambda!265108)))

(declare-fun bs!1219509 () Bool)

(assert (= bs!1219509 (and d!1693050 d!1693014)))

(assert (=> bs!1219509 (= lambda!265145 lambda!265142)))

(declare-fun bs!1219510 () Bool)

(assert (= bs!1219510 (and d!1693050 d!1692820)))

(assert (=> bs!1219510 (= lambda!265145 lambda!265079)))

(declare-fun b!5259620 () Bool)

(declare-fun e!3271839 () Bool)

(assert (=> b!5259620 (= e!3271839 (isEmpty!32745 (t!374111 (t!374111 (unfocusZipperList!318 zl!343)))))))

(declare-fun b!5259621 () Bool)

(declare-fun e!3271837 () Bool)

(declare-fun e!3271841 () Bool)

(assert (=> b!5259621 (= e!3271837 e!3271841)))

(declare-fun c!910380 () Bool)

(assert (=> b!5259621 (= c!910380 (isEmpty!32745 (tail!10373 (t!374111 (unfocusZipperList!318 zl!343)))))))

(declare-fun b!5259623 () Bool)

(declare-fun e!3271842 () Regex!14876)

(assert (=> b!5259623 (= e!3271842 (h!67252 (t!374111 (unfocusZipperList!318 zl!343))))))

(declare-fun b!5259624 () Bool)

(declare-fun lt!2155237 () Regex!14876)

(assert (=> b!5259624 (= e!3271837 (isEmptyLang!822 lt!2155237))))

(declare-fun b!5259625 () Bool)

(assert (=> b!5259625 (= e!3271841 (= lt!2155237 (head!11276 (t!374111 (unfocusZipperList!318 zl!343)))))))

(declare-fun b!5259626 () Bool)

(declare-fun e!3271840 () Bool)

(assert (=> b!5259626 (= e!3271840 e!3271837)))

(declare-fun c!910379 () Bool)

(assert (=> b!5259626 (= c!910379 (isEmpty!32745 (t!374111 (unfocusZipperList!318 zl!343))))))

(declare-fun b!5259627 () Bool)

(declare-fun e!3271838 () Regex!14876)

(assert (=> b!5259627 (= e!3271838 (Union!14876 (h!67252 (t!374111 (unfocusZipperList!318 zl!343))) (generalisedUnion!805 (t!374111 (t!374111 (unfocusZipperList!318 zl!343))))))))

(declare-fun b!5259622 () Bool)

(assert (=> b!5259622 (= e!3271841 (isUnion!254 lt!2155237))))

(assert (=> d!1693050 e!3271840))

(declare-fun res!2231967 () Bool)

(assert (=> d!1693050 (=> (not res!2231967) (not e!3271840))))

(assert (=> d!1693050 (= res!2231967 (validRegex!6612 lt!2155237))))

(assert (=> d!1693050 (= lt!2155237 e!3271842)))

(declare-fun c!910382 () Bool)

(assert (=> d!1693050 (= c!910382 e!3271839)))

(declare-fun res!2231966 () Bool)

(assert (=> d!1693050 (=> (not res!2231966) (not e!3271839))))

(assert (=> d!1693050 (= res!2231966 (is-Cons!60804 (t!374111 (unfocusZipperList!318 zl!343))))))

(assert (=> d!1693050 (forall!14288 (t!374111 (unfocusZipperList!318 zl!343)) lambda!265145)))

(assert (=> d!1693050 (= (generalisedUnion!805 (t!374111 (unfocusZipperList!318 zl!343))) lt!2155237)))

(declare-fun b!5259628 () Bool)

(assert (=> b!5259628 (= e!3271842 e!3271838)))

(declare-fun c!910381 () Bool)

(assert (=> b!5259628 (= c!910381 (is-Cons!60804 (t!374111 (unfocusZipperList!318 zl!343))))))

(declare-fun b!5259629 () Bool)

(assert (=> b!5259629 (= e!3271838 EmptyLang!14876)))

(assert (= (and d!1693050 res!2231966) b!5259620))

(assert (= (and d!1693050 c!910382) b!5259623))

(assert (= (and d!1693050 (not c!910382)) b!5259628))

(assert (= (and b!5259628 c!910381) b!5259627))

(assert (= (and b!5259628 (not c!910381)) b!5259629))

(assert (= (and d!1693050 res!2231967) b!5259626))

(assert (= (and b!5259626 c!910379) b!5259624))

(assert (= (and b!5259626 (not c!910379)) b!5259621))

(assert (= (and b!5259621 c!910380) b!5259625))

(assert (= (and b!5259621 (not c!910380)) b!5259622))

(declare-fun m!6301610 () Bool)

(assert (=> b!5259625 m!6301610))

(declare-fun m!6301612 () Bool)

(assert (=> b!5259620 m!6301612))

(assert (=> b!5259626 m!6301198))

(declare-fun m!6301614 () Bool)

(assert (=> d!1693050 m!6301614))

(declare-fun m!6301616 () Bool)

(assert (=> d!1693050 m!6301616))

(declare-fun m!6301618 () Bool)

(assert (=> b!5259624 m!6301618))

(declare-fun m!6301620 () Bool)

(assert (=> b!5259627 m!6301620))

(declare-fun m!6301622 () Bool)

(assert (=> b!5259621 m!6301622))

(assert (=> b!5259621 m!6301622))

(declare-fun m!6301624 () Bool)

(assert (=> b!5259621 m!6301624))

(declare-fun m!6301626 () Bool)

(assert (=> b!5259622 m!6301626))

(assert (=> b!5259112 d!1693050))

(declare-fun bs!1219511 () Bool)

(declare-fun d!1693052 () Bool)

(assert (= bs!1219511 (and d!1693052 d!1692982)))

(declare-fun lambda!265146 () Int)

(assert (=> bs!1219511 (= lambda!265146 lambda!265137)))

(declare-fun bs!1219512 () Bool)

(assert (= bs!1219512 (and d!1693052 d!1693040)))

(assert (=> bs!1219512 (= lambda!265146 lambda!265144)))

(assert (=> d!1693052 (= (nullableZipper!1279 lt!2155094) (exists!1982 lt!2155094 lambda!265146))))

(declare-fun bs!1219513 () Bool)

(assert (= bs!1219513 d!1693052))

(declare-fun m!6301628 () Bool)

(assert (=> bs!1219513 m!6301628))

(assert (=> b!5258765 d!1693052))

(declare-fun bs!1219514 () Bool)

(declare-fun b!5259638 () Bool)

(assert (= bs!1219514 (and b!5259638 d!1692858)))

(declare-fun lambda!265147 () Int)

(assert (=> bs!1219514 (not (= lambda!265147 lambda!265092))))

(declare-fun bs!1219515 () Bool)

(assert (= bs!1219515 (and b!5259638 b!5259008)))

(assert (=> bs!1219515 (= (and (= (reg!15205 (regTwo!30265 r!7292)) (reg!15205 r!7292)) (= (regTwo!30265 r!7292) r!7292)) (= lambda!265147 lambda!265097))))

(declare-fun bs!1219516 () Bool)

(assert (= bs!1219516 (and b!5259638 b!5259486)))

(assert (=> bs!1219516 (= (and (= (reg!15205 (regTwo!30265 r!7292)) (reg!15205 (regOne!30265 r!7292))) (= (regTwo!30265 r!7292) (regOne!30265 r!7292))) (= lambda!265147 lambda!265133))))

(assert (=> bs!1219514 (not (= lambda!265147 lambda!265091))))

(declare-fun bs!1219517 () Bool)

(assert (= bs!1219517 (and b!5259638 b!5259481)))

(assert (=> bs!1219517 (not (= lambda!265147 lambda!265134))))

(declare-fun bs!1219518 () Bool)

(assert (= bs!1219518 (and b!5259638 d!1692996)))

(assert (=> bs!1219518 (not (= lambda!265147 lambda!265141))))

(declare-fun bs!1219519 () Bool)

(assert (= bs!1219519 (and b!5259638 b!5259003)))

(assert (=> bs!1219519 (not (= lambda!265147 lambda!265098))))

(declare-fun bs!1219520 () Bool)

(assert (= bs!1219520 (and b!5259638 b!5258586)))

(assert (=> bs!1219520 (not (= lambda!265147 lambda!265060))))

(assert (=> bs!1219520 (not (= lambda!265147 lambda!265061))))

(declare-fun bs!1219521 () Bool)

(assert (= bs!1219521 (and b!5259638 d!1692856)))

(assert (=> bs!1219521 (not (= lambda!265147 lambda!265086))))

(assert (=> b!5259638 true))

(assert (=> b!5259638 true))

(declare-fun bs!1219522 () Bool)

(declare-fun b!5259633 () Bool)

(assert (= bs!1219522 (and b!5259633 d!1692858)))

(declare-fun lambda!265148 () Int)

(assert (=> bs!1219522 (= (and (= (regOne!30264 (regTwo!30265 r!7292)) (regOne!30264 r!7292)) (= (regTwo!30264 (regTwo!30265 r!7292)) (regTwo!30264 r!7292))) (= lambda!265148 lambda!265092))))

(declare-fun bs!1219523 () Bool)

(assert (= bs!1219523 (and b!5259633 b!5259008)))

(assert (=> bs!1219523 (not (= lambda!265148 lambda!265097))))

(declare-fun bs!1219524 () Bool)

(assert (= bs!1219524 (and b!5259633 b!5259638)))

(assert (=> bs!1219524 (not (= lambda!265148 lambda!265147))))

(declare-fun bs!1219525 () Bool)

(assert (= bs!1219525 (and b!5259633 b!5259486)))

(assert (=> bs!1219525 (not (= lambda!265148 lambda!265133))))

(assert (=> bs!1219522 (not (= lambda!265148 lambda!265091))))

(declare-fun bs!1219526 () Bool)

(assert (= bs!1219526 (and b!5259633 b!5259481)))

(assert (=> bs!1219526 (= (and (= (regOne!30264 (regTwo!30265 r!7292)) (regOne!30264 (regOne!30265 r!7292))) (= (regTwo!30264 (regTwo!30265 r!7292)) (regTwo!30264 (regOne!30265 r!7292)))) (= lambda!265148 lambda!265134))))

(declare-fun bs!1219527 () Bool)

(assert (= bs!1219527 (and b!5259633 d!1692996)))

(assert (=> bs!1219527 (not (= lambda!265148 lambda!265141))))

(declare-fun bs!1219528 () Bool)

(assert (= bs!1219528 (and b!5259633 b!5259003)))

(assert (=> bs!1219528 (= (and (= (regOne!30264 (regTwo!30265 r!7292)) (regOne!30264 r!7292)) (= (regTwo!30264 (regTwo!30265 r!7292)) (regTwo!30264 r!7292))) (= lambda!265148 lambda!265098))))

(declare-fun bs!1219529 () Bool)

(assert (= bs!1219529 (and b!5259633 b!5258586)))

(assert (=> bs!1219529 (not (= lambda!265148 lambda!265060))))

(assert (=> bs!1219529 (= (and (= (regOne!30264 (regTwo!30265 r!7292)) (regOne!30264 r!7292)) (= (regTwo!30264 (regTwo!30265 r!7292)) (regTwo!30264 r!7292))) (= lambda!265148 lambda!265061))))

(declare-fun bs!1219530 () Bool)

(assert (= bs!1219530 (and b!5259633 d!1692856)))

(assert (=> bs!1219530 (not (= lambda!265148 lambda!265086))))

(assert (=> b!5259633 true))

(assert (=> b!5259633 true))

(declare-fun b!5259630 () Bool)

(declare-fun c!910384 () Bool)

(assert (=> b!5259630 (= c!910384 (is-Union!14876 (regTwo!30265 r!7292)))))

(declare-fun e!3271847 () Bool)

(declare-fun e!3271849 () Bool)

(assert (=> b!5259630 (= e!3271847 e!3271849)))

(declare-fun bm!372856 () Bool)

(declare-fun call!372862 () Bool)

(assert (=> bm!372856 (= call!372862 (isEmpty!32749 s!2326))))

(declare-fun b!5259631 () Bool)

(declare-fun res!2231970 () Bool)

(declare-fun e!3271843 () Bool)

(assert (=> b!5259631 (=> res!2231970 e!3271843)))

(assert (=> b!5259631 (= res!2231970 call!372862)))

(declare-fun e!3271848 () Bool)

(assert (=> b!5259631 (= e!3271848 e!3271843)))

(declare-fun b!5259632 () Bool)

(declare-fun e!3271845 () Bool)

(assert (=> b!5259632 (= e!3271845 (matchRSpec!1979 (regTwo!30265 (regTwo!30265 r!7292)) s!2326))))

(declare-fun call!372861 () Bool)

(assert (=> b!5259633 (= e!3271848 call!372861)))

(declare-fun b!5259634 () Bool)

(assert (=> b!5259634 (= e!3271849 e!3271848)))

(declare-fun c!910385 () Bool)

(assert (=> b!5259634 (= c!910385 (is-Star!14876 (regTwo!30265 r!7292)))))

(declare-fun b!5259635 () Bool)

(declare-fun c!910386 () Bool)

(assert (=> b!5259635 (= c!910386 (is-ElementMatch!14876 (regTwo!30265 r!7292)))))

(declare-fun e!3271844 () Bool)

(assert (=> b!5259635 (= e!3271844 e!3271847)))

(declare-fun b!5259636 () Bool)

(declare-fun e!3271846 () Bool)

(assert (=> b!5259636 (= e!3271846 e!3271844)))

(declare-fun res!2231968 () Bool)

(assert (=> b!5259636 (= res!2231968 (not (is-EmptyLang!14876 (regTwo!30265 r!7292))))))

(assert (=> b!5259636 (=> (not res!2231968) (not e!3271844))))

(declare-fun d!1693054 () Bool)

(declare-fun c!910383 () Bool)

(assert (=> d!1693054 (= c!910383 (is-EmptyExpr!14876 (regTwo!30265 r!7292)))))

(assert (=> d!1693054 (= (matchRSpec!1979 (regTwo!30265 r!7292) s!2326) e!3271846)))

(declare-fun b!5259637 () Bool)

(assert (=> b!5259637 (= e!3271849 e!3271845)))

(declare-fun res!2231969 () Bool)

(assert (=> b!5259637 (= res!2231969 (matchRSpec!1979 (regOne!30265 (regTwo!30265 r!7292)) s!2326))))

(assert (=> b!5259637 (=> res!2231969 e!3271845)))

(declare-fun bm!372857 () Bool)

(assert (=> bm!372857 (= call!372861 (Exists!2057 (ite c!910385 lambda!265147 lambda!265148)))))

(assert (=> b!5259638 (= e!3271843 call!372861)))

(declare-fun b!5259639 () Bool)

(assert (=> b!5259639 (= e!3271846 call!372862)))

(declare-fun b!5259640 () Bool)

(assert (=> b!5259640 (= e!3271847 (= s!2326 (Cons!60803 (c!910130 (regTwo!30265 r!7292)) Nil!60803)))))

(assert (= (and d!1693054 c!910383) b!5259639))

(assert (= (and d!1693054 (not c!910383)) b!5259636))

(assert (= (and b!5259636 res!2231968) b!5259635))

(assert (= (and b!5259635 c!910386) b!5259640))

(assert (= (and b!5259635 (not c!910386)) b!5259630))

(assert (= (and b!5259630 c!910384) b!5259637))

(assert (= (and b!5259630 (not c!910384)) b!5259634))

(assert (= (and b!5259637 (not res!2231969)) b!5259632))

(assert (= (and b!5259634 c!910385) b!5259631))

(assert (= (and b!5259634 (not c!910385)) b!5259633))

(assert (= (and b!5259631 (not res!2231970)) b!5259638))

(assert (= (or b!5259638 b!5259633) bm!372857))

(assert (= (or b!5259639 b!5259631) bm!372856))

(assert (=> bm!372856 m!6301174))

(declare-fun m!6301630 () Bool)

(assert (=> b!5259632 m!6301630))

(declare-fun m!6301632 () Bool)

(assert (=> b!5259637 m!6301632))

(declare-fun m!6301634 () Bool)

(assert (=> bm!372857 m!6301634))

(assert (=> b!5259002 d!1693054))

(declare-fun d!1693056 () Bool)

(assert (=> d!1693056 (= (Exists!2057 lambda!265091) (choose!39225 lambda!265091))))

(declare-fun bs!1219531 () Bool)

(assert (= bs!1219531 d!1693056))

(declare-fun m!6301636 () Bool)

(assert (=> bs!1219531 m!6301636))

(assert (=> d!1692858 d!1693056))

(declare-fun d!1693058 () Bool)

(assert (=> d!1693058 (= (Exists!2057 lambda!265092) (choose!39225 lambda!265092))))

(declare-fun bs!1219532 () Bool)

(assert (= bs!1219532 d!1693058))

(declare-fun m!6301638 () Bool)

(assert (=> bs!1219532 m!6301638))

(assert (=> d!1692858 d!1693058))

(declare-fun bs!1219533 () Bool)

(declare-fun d!1693060 () Bool)

(assert (= bs!1219533 (and d!1693060 d!1692858)))

(declare-fun lambda!265153 () Int)

(assert (=> bs!1219533 (not (= lambda!265153 lambda!265092))))

(declare-fun bs!1219534 () Bool)

(assert (= bs!1219534 (and d!1693060 b!5259008)))

(assert (=> bs!1219534 (not (= lambda!265153 lambda!265097))))

(declare-fun bs!1219535 () Bool)

(assert (= bs!1219535 (and d!1693060 b!5259638)))

(assert (=> bs!1219535 (not (= lambda!265153 lambda!265147))))

(declare-fun bs!1219536 () Bool)

(assert (= bs!1219536 (and d!1693060 b!5259486)))

(assert (=> bs!1219536 (not (= lambda!265153 lambda!265133))))

(assert (=> bs!1219533 (= lambda!265153 lambda!265091)))

(declare-fun bs!1219537 () Bool)

(assert (= bs!1219537 (and d!1693060 b!5259481)))

(assert (=> bs!1219537 (not (= lambda!265153 lambda!265134))))

(declare-fun bs!1219538 () Bool)

(assert (= bs!1219538 (and d!1693060 d!1692996)))

(assert (=> bs!1219538 (= lambda!265153 lambda!265141)))

(declare-fun bs!1219539 () Bool)

(assert (= bs!1219539 (and d!1693060 b!5259003)))

(assert (=> bs!1219539 (not (= lambda!265153 lambda!265098))))

(declare-fun bs!1219540 () Bool)

(assert (= bs!1219540 (and d!1693060 b!5259633)))

(assert (=> bs!1219540 (not (= lambda!265153 lambda!265148))))

(declare-fun bs!1219541 () Bool)

(assert (= bs!1219541 (and d!1693060 b!5258586)))

(assert (=> bs!1219541 (= lambda!265153 lambda!265060)))

(assert (=> bs!1219541 (not (= lambda!265153 lambda!265061))))

(declare-fun bs!1219542 () Bool)

(assert (= bs!1219542 (and d!1693060 d!1692856)))

(assert (=> bs!1219542 (= lambda!265153 lambda!265086)))

(assert (=> d!1693060 true))

(assert (=> d!1693060 true))

(assert (=> d!1693060 true))

(declare-fun lambda!265154 () Int)

(assert (=> bs!1219533 (= lambda!265154 lambda!265092)))

(declare-fun bs!1219543 () Bool)

(assert (= bs!1219543 d!1693060))

(assert (=> bs!1219543 (not (= lambda!265154 lambda!265153))))

(assert (=> bs!1219534 (not (= lambda!265154 lambda!265097))))

(assert (=> bs!1219535 (not (= lambda!265154 lambda!265147))))

(assert (=> bs!1219536 (not (= lambda!265154 lambda!265133))))

(assert (=> bs!1219533 (not (= lambda!265154 lambda!265091))))

(assert (=> bs!1219537 (= (and (= (regOne!30264 r!7292) (regOne!30264 (regOne!30265 r!7292))) (= (regTwo!30264 r!7292) (regTwo!30264 (regOne!30265 r!7292)))) (= lambda!265154 lambda!265134))))

(assert (=> bs!1219538 (not (= lambda!265154 lambda!265141))))

(assert (=> bs!1219539 (= lambda!265154 lambda!265098)))

(assert (=> bs!1219540 (= (and (= (regOne!30264 r!7292) (regOne!30264 (regTwo!30265 r!7292))) (= (regTwo!30264 r!7292) (regTwo!30264 (regTwo!30265 r!7292)))) (= lambda!265154 lambda!265148))))

(assert (=> bs!1219541 (not (= lambda!265154 lambda!265060))))

(assert (=> bs!1219541 (= lambda!265154 lambda!265061)))

(assert (=> bs!1219542 (not (= lambda!265154 lambda!265086))))

(assert (=> d!1693060 true))

(assert (=> d!1693060 true))

(assert (=> d!1693060 true))

(assert (=> d!1693060 (= (Exists!2057 lambda!265153) (Exists!2057 lambda!265154))))

(assert (=> d!1693060 true))

(declare-fun _$90!1057 () Unit!153022)

(assert (=> d!1693060 (= (choose!39227 (regOne!30264 r!7292) (regTwo!30264 r!7292) s!2326) _$90!1057)))

(declare-fun m!6301640 () Bool)

(assert (=> bs!1219543 m!6301640))

(declare-fun m!6301642 () Bool)

(assert (=> bs!1219543 m!6301642))

(assert (=> d!1692858 d!1693060))

(assert (=> d!1692858 d!1692992))

(declare-fun d!1693062 () Bool)

(assert (=> d!1693062 (= (isEmpty!32749 (t!374110 s!2326)) (is-Nil!60803 (t!374110 s!2326)))))

(assert (=> d!1692870 d!1693062))

(declare-fun d!1693064 () Bool)

(assert (=> d!1693064 true))

(assert (=> d!1693064 true))

(declare-fun res!2231981 () Bool)

(assert (=> d!1693064 (= (choose!39225 lambda!265060) res!2231981)))

(assert (=> d!1692854 d!1693064))

(declare-fun bs!1219544 () Bool)

(declare-fun d!1693066 () Bool)

(assert (= bs!1219544 (and d!1693066 d!1692812)))

(declare-fun lambda!265155 () Int)

(assert (=> bs!1219544 (= lambda!265155 lambda!265076)))

(declare-fun bs!1219545 () Bool)

(assert (= bs!1219545 (and d!1693066 d!1692988)))

(assert (=> bs!1219545 (= lambda!265155 lambda!265138)))

(declare-fun bs!1219546 () Bool)

(assert (= bs!1219546 (and d!1693066 d!1693038)))

(assert (=> bs!1219546 (= lambda!265155 lambda!265143)))

(declare-fun bs!1219547 () Bool)

(assert (= bs!1219547 (and d!1693066 d!1692824)))

(assert (=> bs!1219547 (= lambda!265155 lambda!265080)))

(declare-fun bs!1219548 () Bool)

(assert (= bs!1219548 (and d!1693066 d!1692892)))

(assert (=> bs!1219548 (= lambda!265155 lambda!265105)))

(declare-fun bs!1219549 () Bool)

(assert (= bs!1219549 (and d!1693066 d!1692894)))

(assert (=> bs!1219549 (= lambda!265155 lambda!265108)))

(declare-fun bs!1219550 () Bool)

(assert (= bs!1219550 (and d!1693066 d!1693014)))

(assert (=> bs!1219550 (= lambda!265155 lambda!265142)))

(declare-fun bs!1219551 () Bool)

(assert (= bs!1219551 (and d!1693066 d!1692820)))

(assert (=> bs!1219551 (= lambda!265155 lambda!265079)))

(declare-fun bs!1219552 () Bool)

(assert (= bs!1219552 (and d!1693066 d!1693050)))

(assert (=> bs!1219552 (= lambda!265155 lambda!265145)))

(declare-fun b!5259649 () Bool)

(declare-fun e!3271858 () Regex!14876)

(assert (=> b!5259649 (= e!3271858 (Concat!23721 (h!67252 (t!374111 (exprs!4760 (h!67253 zl!343)))) (generalisedConcat!545 (t!374111 (t!374111 (exprs!4760 (h!67253 zl!343)))))))))

(declare-fun b!5259650 () Bool)

(declare-fun e!3271854 () Bool)

(declare-fun lt!2155238 () Regex!14876)

(assert (=> b!5259650 (= e!3271854 (= lt!2155238 (head!11276 (t!374111 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun b!5259651 () Bool)

(declare-fun e!3271859 () Bool)

(assert (=> b!5259651 (= e!3271859 (isEmptyExpr!814 lt!2155238))))

(declare-fun e!3271856 () Bool)

(assert (=> d!1693066 e!3271856))

(declare-fun res!2231983 () Bool)

(assert (=> d!1693066 (=> (not res!2231983) (not e!3271856))))

(assert (=> d!1693066 (= res!2231983 (validRegex!6612 lt!2155238))))

(declare-fun e!3271855 () Regex!14876)

(assert (=> d!1693066 (= lt!2155238 e!3271855)))

(declare-fun c!910387 () Bool)

(declare-fun e!3271857 () Bool)

(assert (=> d!1693066 (= c!910387 e!3271857)))

(declare-fun res!2231982 () Bool)

(assert (=> d!1693066 (=> (not res!2231982) (not e!3271857))))

(assert (=> d!1693066 (= res!2231982 (is-Cons!60804 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(assert (=> d!1693066 (forall!14288 (t!374111 (exprs!4760 (h!67253 zl!343))) lambda!265155)))

(assert (=> d!1693066 (= (generalisedConcat!545 (t!374111 (exprs!4760 (h!67253 zl!343)))) lt!2155238)))

(declare-fun b!5259652 () Bool)

(assert (=> b!5259652 (= e!3271858 EmptyExpr!14876)))

(declare-fun b!5259653 () Bool)

(assert (=> b!5259653 (= e!3271857 (isEmpty!32745 (t!374111 (t!374111 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun b!5259654 () Bool)

(assert (=> b!5259654 (= e!3271855 e!3271858)))

(declare-fun c!910389 () Bool)

(assert (=> b!5259654 (= c!910389 (is-Cons!60804 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5259655 () Bool)

(assert (=> b!5259655 (= e!3271856 e!3271859)))

(declare-fun c!910388 () Bool)

(assert (=> b!5259655 (= c!910388 (isEmpty!32745 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5259656 () Bool)

(assert (=> b!5259656 (= e!3271859 e!3271854)))

(declare-fun c!910390 () Bool)

(assert (=> b!5259656 (= c!910390 (isEmpty!32745 (tail!10373 (t!374111 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun b!5259657 () Bool)

(assert (=> b!5259657 (= e!3271855 (h!67252 (t!374111 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5259658 () Bool)

(assert (=> b!5259658 (= e!3271854 (isConcat!337 lt!2155238))))

(assert (= (and d!1693066 res!2231982) b!5259653))

(assert (= (and d!1693066 c!910387) b!5259657))

(assert (= (and d!1693066 (not c!910387)) b!5259654))

(assert (= (and b!5259654 c!910389) b!5259649))

(assert (= (and b!5259654 (not c!910389)) b!5259652))

(assert (= (and d!1693066 res!2231983) b!5259655))

(assert (= (and b!5259655 c!910388) b!5259651))

(assert (= (and b!5259655 (not c!910388)) b!5259656))

(assert (= (and b!5259656 c!910390) b!5259650))

(assert (= (and b!5259656 (not c!910390)) b!5259658))

(declare-fun m!6301644 () Bool)

(assert (=> b!5259649 m!6301644))

(declare-fun m!6301646 () Bool)

(assert (=> d!1693066 m!6301646))

(declare-fun m!6301648 () Bool)

(assert (=> d!1693066 m!6301648))

(declare-fun m!6301650 () Bool)

(assert (=> b!5259653 m!6301650))

(declare-fun m!6301652 () Bool)

(assert (=> b!5259650 m!6301652))

(declare-fun m!6301654 () Bool)

(assert (=> b!5259651 m!6301654))

(assert (=> b!5259655 m!6300868))

(declare-fun m!6301656 () Bool)

(assert (=> b!5259656 m!6301656))

(assert (=> b!5259656 m!6301656))

(declare-fun m!6301658 () Bool)

(assert (=> b!5259656 m!6301658))

(declare-fun m!6301660 () Bool)

(assert (=> b!5259658 m!6301660))

(assert (=> b!5258751 d!1693066))

(declare-fun b!5259659 () Bool)

(declare-fun e!3271864 () (Set Context!8520))

(declare-fun call!372868 () (Set Context!8520))

(assert (=> b!5259659 (= e!3271864 call!372868)))

(declare-fun bm!372858 () Bool)

(declare-fun call!372867 () List!60928)

(declare-fun call!372865 () (Set Context!8520))

(declare-fun c!910394 () Bool)

(declare-fun c!910395 () Bool)

(declare-fun c!910391 () Bool)

(assert (=> bm!372858 (= call!372865 (derivationStepZipperDown!324 (ite c!910391 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910394 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910395 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343))))))) (ite (or c!910391 c!910394) (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))) (Context!8521 call!372867)) (h!67251 s!2326)))))

(declare-fun b!5259660 () Bool)

(declare-fun e!3271861 () Bool)

(assert (=> b!5259660 (= c!910394 e!3271861)))

(declare-fun res!2231984 () Bool)

(assert (=> b!5259660 (=> (not res!2231984) (not e!3271861))))

(assert (=> b!5259660 (= res!2231984 (is-Concat!23721 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun e!3271865 () (Set Context!8520))

(declare-fun e!3271862 () (Set Context!8520))

(assert (=> b!5259660 (= e!3271865 e!3271862)))

(declare-fun d!1693068 () Bool)

(declare-fun c!910392 () Bool)

(assert (=> d!1693068 (= c!910392 (and (is-ElementMatch!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))) (= (c!910130 (h!67252 (exprs!4760 (h!67253 zl!343)))) (h!67251 s!2326))))))

(declare-fun e!3271860 () (Set Context!8520))

(assert (=> d!1693068 (= (derivationStepZipperDown!324 (h!67252 (exprs!4760 (h!67253 zl!343))) (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))) (h!67251 s!2326)) e!3271860)))

(declare-fun bm!372859 () Bool)

(declare-fun call!372864 () (Set Context!8520))

(assert (=> bm!372859 (= call!372864 call!372865)))

(declare-fun b!5259661 () Bool)

(assert (=> b!5259661 (= e!3271860 e!3271865)))

(assert (=> b!5259661 (= c!910391 (is-Union!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5259662 () Bool)

(declare-fun call!372863 () (Set Context!8520))

(assert (=> b!5259662 (= e!3271862 (set.union call!372863 call!372864))))

(declare-fun bm!372860 () Bool)

(declare-fun call!372866 () List!60928)

(assert (=> bm!372860 (= call!372866 ($colon$colon!1329 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343))))) (ite (or c!910394 c!910395) (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (h!67252 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun b!5259663 () Bool)

(declare-fun e!3271863 () (Set Context!8520))

(assert (=> b!5259663 (= e!3271863 (as set.empty (Set Context!8520)))))

(declare-fun b!5259664 () Bool)

(assert (=> b!5259664 (= e!3271860 (set.insert (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))) (as set.empty (Set Context!8520))))))

(declare-fun b!5259665 () Bool)

(declare-fun c!910393 () Bool)

(assert (=> b!5259665 (= c!910393 (is-Star!14876 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(assert (=> b!5259665 (= e!3271864 e!3271863)))

(declare-fun b!5259666 () Bool)

(assert (=> b!5259666 (= e!3271862 e!3271864)))

(assert (=> b!5259666 (= c!910395 (is-Concat!23721 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun b!5259667 () Bool)

(assert (=> b!5259667 (= e!3271861 (nullable!5045 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun bm!372861 () Bool)

(assert (=> bm!372861 (= call!372868 call!372864)))

(declare-fun b!5259668 () Bool)

(assert (=> b!5259668 (= e!3271865 (set.union call!372865 call!372863))))

(declare-fun bm!372862 () Bool)

(assert (=> bm!372862 (= call!372863 (derivationStepZipperDown!324 (ite c!910391 (regTwo!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))) (ite c!910391 (Context!8521 (t!374111 (exprs!4760 (h!67253 zl!343)))) (Context!8521 call!372866)) (h!67251 s!2326)))))

(declare-fun bm!372863 () Bool)

(assert (=> bm!372863 (= call!372867 call!372866)))

(declare-fun b!5259669 () Bool)

(assert (=> b!5259669 (= e!3271863 call!372868)))

(assert (= (and d!1693068 c!910392) b!5259664))

(assert (= (and d!1693068 (not c!910392)) b!5259661))

(assert (= (and b!5259661 c!910391) b!5259668))

(assert (= (and b!5259661 (not c!910391)) b!5259660))

(assert (= (and b!5259660 res!2231984) b!5259667))

(assert (= (and b!5259660 c!910394) b!5259662))

(assert (= (and b!5259660 (not c!910394)) b!5259666))

(assert (= (and b!5259666 c!910395) b!5259659))

(assert (= (and b!5259666 (not c!910395)) b!5259665))

(assert (= (and b!5259665 c!910393) b!5259669))

(assert (= (and b!5259665 (not c!910393)) b!5259663))

(assert (= (or b!5259659 b!5259669) bm!372863))

(assert (= (or b!5259659 b!5259669) bm!372861))

(assert (= (or b!5259662 bm!372863) bm!372860))

(assert (= (or b!5259662 bm!372861) bm!372859))

(assert (= (or b!5259668 b!5259662) bm!372862))

(assert (= (or b!5259668 bm!372859) bm!372858))

(declare-fun m!6301662 () Bool)

(assert (=> bm!372860 m!6301662))

(declare-fun m!6301664 () Bool)

(assert (=> bm!372858 m!6301664))

(assert (=> b!5259667 m!6301066))

(declare-fun m!6301666 () Bool)

(assert (=> bm!372862 m!6301666))

(declare-fun m!6301668 () Bool)

(assert (=> b!5259664 m!6301668))

(assert (=> bm!372762 d!1693068))

(assert (=> d!1692890 d!1692888))

(assert (=> d!1692890 d!1692876))

(declare-fun d!1693070 () Bool)

(assert (=> d!1693070 (= (matchR!7061 r!7292 s!2326) (matchRSpec!1979 r!7292 s!2326))))

(assert (=> d!1693070 true))

(declare-fun _$88!3529 () Unit!153022)

(assert (=> d!1693070 (= (choose!39229 r!7292 s!2326) _$88!3529)))

(declare-fun bs!1219553 () Bool)

(assert (= bs!1219553 d!1693070))

(assert (=> bs!1219553 m!6300872))

(assert (=> bs!1219553 m!6300870))

(assert (=> d!1692890 d!1693070))

(assert (=> d!1692890 d!1692826))

(assert (=> b!5259069 d!1693002))

(assert (=> d!1692818 d!1693062))

(declare-fun b!5259670 () Bool)

(declare-fun e!3271867 () Bool)

(declare-fun e!3271870 () Bool)

(assert (=> b!5259670 (= e!3271867 e!3271870)))

(declare-fun res!2231987 () Bool)

(assert (=> b!5259670 (= res!2231987 (not (nullable!5045 (reg!15205 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))))))))

(assert (=> b!5259670 (=> (not res!2231987) (not e!3271870))))

(declare-fun call!372870 () Bool)

(declare-fun bm!372864 () Bool)

(declare-fun c!910397 () Bool)

(assert (=> bm!372864 (= call!372870 (validRegex!6612 (ite c!910397 (regOne!30265 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))) (regOne!30264 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))))))))

(declare-fun b!5259671 () Bool)

(declare-fun res!2231985 () Bool)

(declare-fun e!3271871 () Bool)

(assert (=> b!5259671 (=> res!2231985 e!3271871)))

(assert (=> b!5259671 (= res!2231985 (not (is-Concat!23721 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292))))))))))

(declare-fun e!3271872 () Bool)

(assert (=> b!5259671 (= e!3271872 e!3271871)))

(declare-fun b!5259672 () Bool)

(declare-fun e!3271869 () Bool)

(assert (=> b!5259672 (= e!3271869 e!3271867)))

(declare-fun c!910396 () Bool)

(assert (=> b!5259672 (= c!910396 (is-Star!14876 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))))))

(declare-fun b!5259673 () Bool)

(declare-fun res!2231986 () Bool)

(declare-fun e!3271868 () Bool)

(assert (=> b!5259673 (=> (not res!2231986) (not e!3271868))))

(assert (=> b!5259673 (= res!2231986 call!372870)))

(assert (=> b!5259673 (= e!3271872 e!3271868)))

(declare-fun b!5259674 () Bool)

(declare-fun call!372871 () Bool)

(assert (=> b!5259674 (= e!3271868 call!372871)))

(declare-fun b!5259675 () Bool)

(assert (=> b!5259675 (= e!3271867 e!3271872)))

(assert (=> b!5259675 (= c!910397 (is-Union!14876 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))))))

(declare-fun b!5259676 () Bool)

(declare-fun e!3271866 () Bool)

(assert (=> b!5259676 (= e!3271866 call!372871)))

(declare-fun d!1693072 () Bool)

(declare-fun res!2231988 () Bool)

(assert (=> d!1693072 (=> res!2231988 e!3271869)))

(assert (=> d!1693072 (= res!2231988 (is-ElementMatch!14876 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))))))

(assert (=> d!1693072 (= (validRegex!6612 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))) e!3271869)))

(declare-fun call!372869 () Bool)

(declare-fun bm!372865 () Bool)

(assert (=> bm!372865 (= call!372869 (validRegex!6612 (ite c!910396 (reg!15205 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))) (ite c!910397 (regTwo!30265 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292)))))) (regTwo!30264 (ite c!910142 (reg!15205 (regOne!30264 (regOne!30264 r!7292))) (ite c!910143 (regTwo!30265 (regOne!30264 (regOne!30264 r!7292))) (regTwo!30264 (regOne!30264 (regOne!30264 r!7292))))))))))))

(declare-fun b!5259677 () Bool)

(assert (=> b!5259677 (= e!3271870 call!372869)))

(declare-fun b!5259678 () Bool)

(assert (=> b!5259678 (= e!3271871 e!3271866)))

(declare-fun res!2231989 () Bool)

(assert (=> b!5259678 (=> (not res!2231989) (not e!3271866))))

(assert (=> b!5259678 (= res!2231989 call!372870)))

(declare-fun bm!372866 () Bool)

(assert (=> bm!372866 (= call!372871 call!372869)))

(assert (= (and d!1693072 (not res!2231988)) b!5259672))

(assert (= (and b!5259672 c!910396) b!5259670))

(assert (= (and b!5259672 (not c!910396)) b!5259675))

(assert (= (and b!5259670 res!2231987) b!5259677))

(assert (= (and b!5259675 c!910397) b!5259673))

(assert (= (and b!5259675 (not c!910397)) b!5259671))

(assert (= (and b!5259673 res!2231986) b!5259674))

(assert (= (and b!5259671 (not res!2231985)) b!5259678))

(assert (= (and b!5259678 res!2231989) b!5259676))

(assert (= (or b!5259674 b!5259676) bm!372866))

(assert (= (or b!5259673 b!5259678) bm!372864))

(assert (= (or b!5259677 bm!372866) bm!372865))

(declare-fun m!6301670 () Bool)

(assert (=> b!5259670 m!6301670))

(declare-fun m!6301672 () Bool)

(assert (=> bm!372864 m!6301672))

(declare-fun m!6301674 () Bool)

(assert (=> bm!372865 m!6301674))

(assert (=> bm!372729 d!1693072))

(assert (=> b!5258854 d!1692828))

(assert (=> b!5258755 d!1692866))

(declare-fun d!1693074 () Bool)

(assert (=> d!1693074 (= (isEmptyExpr!814 lt!2155141) (is-EmptyExpr!14876 lt!2155141))))

(assert (=> b!5258753 d!1693074))

(declare-fun d!1693076 () Bool)

(assert (=> d!1693076 (= (Exists!2057 (ite c!910235 lambda!265097 lambda!265098)) (choose!39225 (ite c!910235 lambda!265097 lambda!265098)))))

(declare-fun bs!1219554 () Bool)

(assert (= bs!1219554 d!1693076))

(declare-fun m!6301676 () Bool)

(assert (=> bs!1219554 m!6301676))

(assert (=> bm!372794 d!1693076))

(declare-fun d!1693078 () Bool)

(declare-fun c!910398 () Bool)

(assert (=> d!1693078 (= c!910398 (isEmpty!32749 (tail!10374 (t!374110 s!2326))))))

(declare-fun e!3271873 () Bool)

(assert (=> d!1693078 (= (matchZipper!1120 (derivationStepZipper!1123 lt!2155091 (head!11277 (t!374110 s!2326))) (tail!10374 (t!374110 s!2326))) e!3271873)))

(declare-fun b!5259679 () Bool)

(assert (=> b!5259679 (= e!3271873 (nullableZipper!1279 (derivationStepZipper!1123 lt!2155091 (head!11277 (t!374110 s!2326)))))))

(declare-fun b!5259680 () Bool)

(assert (=> b!5259680 (= e!3271873 (matchZipper!1120 (derivationStepZipper!1123 (derivationStepZipper!1123 lt!2155091 (head!11277 (t!374110 s!2326))) (head!11277 (tail!10374 (t!374110 s!2326)))) (tail!10374 (tail!10374 (t!374110 s!2326)))))))

(assert (= (and d!1693078 c!910398) b!5259679))

(assert (= (and d!1693078 (not c!910398)) b!5259680))

(assert (=> d!1693078 m!6301018))

(assert (=> d!1693078 m!6301430))

(assert (=> b!5259679 m!6301138))

(declare-fun m!6301678 () Bool)

(assert (=> b!5259679 m!6301678))

(assert (=> b!5259680 m!6301018))

(assert (=> b!5259680 m!6301434))

(assert (=> b!5259680 m!6301138))

(assert (=> b!5259680 m!6301434))

(declare-fun m!6301680 () Bool)

(assert (=> b!5259680 m!6301680))

(assert (=> b!5259680 m!6301018))

(assert (=> b!5259680 m!6301438))

(assert (=> b!5259680 m!6301680))

(assert (=> b!5259680 m!6301438))

(declare-fun m!6301682 () Bool)

(assert (=> b!5259680 m!6301682))

(assert (=> b!5258950 d!1693078))

(declare-fun bs!1219555 () Bool)

(declare-fun d!1693080 () Bool)

(assert (= bs!1219555 (and d!1693080 b!5258595)))

(declare-fun lambda!265156 () Int)

(assert (=> bs!1219555 (= (= (head!11277 (t!374110 s!2326)) (h!67251 s!2326)) (= lambda!265156 lambda!265062))))

(declare-fun bs!1219556 () Bool)

(assert (= bs!1219556 (and d!1693080 d!1692952)))

(assert (=> bs!1219556 (= lambda!265156 lambda!265132)))

(assert (=> d!1693080 true))

(assert (=> d!1693080 (= (derivationStepZipper!1123 lt!2155091 (head!11277 (t!374110 s!2326))) (flatMap!603 lt!2155091 lambda!265156))))

(declare-fun bs!1219557 () Bool)

(assert (= bs!1219557 d!1693080))

(declare-fun m!6301684 () Bool)

(assert (=> bs!1219557 m!6301684))

(assert (=> b!5258950 d!1693080))

(assert (=> b!5258950 d!1692954))

(assert (=> b!5258950 d!1692956))

(declare-fun d!1693082 () Bool)

(assert (=> d!1693082 (= (isEmpty!32745 (exprs!4760 (h!67253 zl!343))) (is-Nil!60804 (exprs!4760 (h!67253 zl!343))))))

(assert (=> b!5258757 d!1693082))

(declare-fun b!5259681 () Bool)

(declare-fun e!3271878 () (Set Context!8520))

(declare-fun call!372877 () (Set Context!8520))

(assert (=> b!5259681 (= e!3271878 call!372877)))

(declare-fun call!372874 () (Set Context!8520))

(declare-fun call!372876 () List!60928)

(declare-fun bm!372867 () Bool)

(declare-fun c!910399 () Bool)

(declare-fun c!910402 () Bool)

(declare-fun c!910403 () Bool)

(assert (=> bm!372867 (= call!372874 (derivationStepZipperDown!324 (ite c!910399 (regOne!30265 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))) (ite c!910402 (regTwo!30264 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))) (ite c!910403 (regOne!30264 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))) (reg!15205 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343))))))))))) (ite (or c!910399 c!910402) (ite (or c!910183 c!910186) lt!2155101 (Context!8521 call!372765)) (Context!8521 call!372876)) (h!67251 s!2326)))))

(declare-fun b!5259682 () Bool)

(declare-fun e!3271875 () Bool)

(assert (=> b!5259682 (= c!910402 e!3271875)))

(declare-fun res!2231990 () Bool)

(assert (=> b!5259682 (=> (not res!2231990) (not e!3271875))))

(assert (=> b!5259682 (= res!2231990 (is-Concat!23721 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))))

(declare-fun e!3271879 () (Set Context!8520))

(declare-fun e!3271876 () (Set Context!8520))

(assert (=> b!5259682 (= e!3271879 e!3271876)))

(declare-fun c!910400 () Bool)

(declare-fun d!1693084 () Bool)

(assert (=> d!1693084 (= c!910400 (and (is-ElementMatch!14876 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))) (= (c!910130 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))) (h!67251 s!2326))))))

(declare-fun e!3271874 () (Set Context!8520))

(assert (=> d!1693084 (= (derivationStepZipperDown!324 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343))))))) (ite (or c!910183 c!910186) lt!2155101 (Context!8521 call!372765)) (h!67251 s!2326)) e!3271874)))

(declare-fun bm!372868 () Bool)

(declare-fun call!372873 () (Set Context!8520))

(assert (=> bm!372868 (= call!372873 call!372874)))

(declare-fun b!5259683 () Bool)

(assert (=> b!5259683 (= e!3271874 e!3271879)))

(assert (=> b!5259683 (= c!910399 (is-Union!14876 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))))

(declare-fun b!5259684 () Bool)

(declare-fun call!372872 () (Set Context!8520))

(assert (=> b!5259684 (= e!3271876 (set.union call!372872 call!372873))))

(declare-fun bm!372869 () Bool)

(declare-fun call!372875 () List!60928)

(assert (=> bm!372869 (= call!372875 ($colon$colon!1329 (exprs!4760 (ite (or c!910183 c!910186) lt!2155101 (Context!8521 call!372765))) (ite (or c!910402 c!910403) (regTwo!30264 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))) (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343))))))))))))

(declare-fun b!5259685 () Bool)

(declare-fun e!3271877 () (Set Context!8520))

(assert (=> b!5259685 (= e!3271877 (as set.empty (Set Context!8520)))))

(declare-fun b!5259686 () Bool)

(assert (=> b!5259686 (= e!3271874 (set.insert (ite (or c!910183 c!910186) lt!2155101 (Context!8521 call!372765)) (as set.empty (Set Context!8520))))))

(declare-fun b!5259687 () Bool)

(declare-fun c!910401 () Bool)

(assert (=> b!5259687 (= c!910401 (is-Star!14876 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))))

(assert (=> b!5259687 (= e!3271878 e!3271877)))

(declare-fun b!5259688 () Bool)

(assert (=> b!5259688 (= e!3271876 e!3271878)))

(assert (=> b!5259688 (= c!910403 (is-Concat!23721 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))))))

(declare-fun b!5259689 () Bool)

(assert (=> b!5259689 (= e!3271875 (nullable!5045 (regOne!30264 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343))))))))))))

(declare-fun bm!372870 () Bool)

(assert (=> bm!372870 (= call!372877 call!372873)))

(declare-fun b!5259690 () Bool)

(assert (=> b!5259690 (= e!3271879 (set.union call!372874 call!372872))))

(declare-fun bm!372871 () Bool)

(assert (=> bm!372871 (= call!372872 (derivationStepZipperDown!324 (ite c!910399 (regTwo!30265 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343)))))))) (regOne!30264 (ite c!910183 (regOne!30265 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910186 (regTwo!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (ite c!910187 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343)))) (reg!15205 (h!67252 (exprs!4760 (h!67253 zl!343))))))))) (ite c!910399 (ite (or c!910183 c!910186) lt!2155101 (Context!8521 call!372765)) (Context!8521 call!372875)) (h!67251 s!2326)))))

(declare-fun bm!372872 () Bool)

(assert (=> bm!372872 (= call!372876 call!372875)))

(declare-fun b!5259691 () Bool)

(assert (=> b!5259691 (= e!3271877 call!372877)))

(assert (= (and d!1693084 c!910400) b!5259686))

(assert (= (and d!1693084 (not c!910400)) b!5259683))

(assert (= (and b!5259683 c!910399) b!5259690))

(assert (= (and b!5259683 (not c!910399)) b!5259682))

(assert (= (and b!5259682 res!2231990) b!5259689))

(assert (= (and b!5259682 c!910402) b!5259684))

(assert (= (and b!5259682 (not c!910402)) b!5259688))

(assert (= (and b!5259688 c!910403) b!5259681))

(assert (= (and b!5259688 (not c!910403)) b!5259687))

(assert (= (and b!5259687 c!910401) b!5259691))

(assert (= (and b!5259687 (not c!910401)) b!5259685))

(assert (= (or b!5259681 b!5259691) bm!372872))

(assert (= (or b!5259681 b!5259691) bm!372870))

(assert (= (or b!5259684 bm!372872) bm!372869))

(assert (= (or b!5259684 bm!372870) bm!372868))

(assert (= (or b!5259690 b!5259684) bm!372871))

(assert (= (or b!5259690 bm!372868) bm!372867))

(declare-fun m!6301686 () Bool)

(assert (=> bm!372869 m!6301686))

(declare-fun m!6301688 () Bool)

(assert (=> bm!372867 m!6301688))

(declare-fun m!6301690 () Bool)

(assert (=> b!5259689 m!6301690))

(declare-fun m!6301692 () Bool)

(assert (=> bm!372871 m!6301692))

(declare-fun m!6301694 () Bool)

(assert (=> b!5259686 m!6301694))

(assert (=> bm!372756 d!1693084))

(declare-fun b!5259692 () Bool)

(declare-fun e!3271880 () (Set Context!8520))

(assert (=> b!5259692 (= e!3271880 (as set.empty (Set Context!8520)))))

(declare-fun b!5259693 () Bool)

(declare-fun e!3271882 () (Set Context!8520))

(assert (=> b!5259693 (= e!3271882 e!3271880)))

(declare-fun c!910405 () Bool)

(assert (=> b!5259693 (= c!910405 (is-Cons!60804 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 lt!2155101))))))))

(declare-fun b!5259694 () Bool)

(declare-fun call!372878 () (Set Context!8520))

(assert (=> b!5259694 (= e!3271880 call!372878)))

(declare-fun d!1693086 () Bool)

(declare-fun c!910404 () Bool)

(declare-fun e!3271881 () Bool)

(assert (=> d!1693086 (= c!910404 e!3271881)))

(declare-fun res!2231991 () Bool)

(assert (=> d!1693086 (=> (not res!2231991) (not e!3271881))))

(assert (=> d!1693086 (= res!2231991 (is-Cons!60804 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 lt!2155101))))))))

(assert (=> d!1693086 (= (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 lt!2155101))) (h!67251 s!2326)) e!3271882)))

(declare-fun bm!372873 () Bool)

(assert (=> bm!372873 (= call!372878 (derivationStepZipperDown!324 (h!67252 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 lt!2155101))))) (Context!8521 (t!374111 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 lt!2155101)))))) (h!67251 s!2326)))))

(declare-fun b!5259695 () Bool)

(assert (=> b!5259695 (= e!3271882 (set.union call!372878 (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 lt!2155101)))))) (h!67251 s!2326))))))

(declare-fun b!5259696 () Bool)

(assert (=> b!5259696 (= e!3271881 (nullable!5045 (h!67252 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 lt!2155101)))))))))

(assert (= (and d!1693086 res!2231991) b!5259696))

(assert (= (and d!1693086 c!910404) b!5259695))

(assert (= (and d!1693086 (not c!910404)) b!5259693))

(assert (= (and b!5259693 c!910405) b!5259694))

(assert (= (and b!5259693 (not c!910405)) b!5259692))

(assert (= (or b!5259695 b!5259694) bm!372873))

(declare-fun m!6301696 () Bool)

(assert (=> bm!372873 m!6301696))

(declare-fun m!6301698 () Bool)

(assert (=> b!5259695 m!6301698))

(declare-fun m!6301700 () Bool)

(assert (=> b!5259696 m!6301700))

(assert (=> b!5258797 d!1693086))

(declare-fun d!1693088 () Bool)

(declare-fun res!2231992 () Bool)

(declare-fun e!3271883 () Bool)

(assert (=> d!1693088 (=> res!2231992 e!3271883)))

(assert (=> d!1693088 (= res!2231992 (is-Nil!60804 (exprs!4760 setElem!33608)))))

(assert (=> d!1693088 (= (forall!14288 (exprs!4760 setElem!33608) lambda!265080) e!3271883)))

(declare-fun b!5259697 () Bool)

(declare-fun e!3271884 () Bool)

(assert (=> b!5259697 (= e!3271883 e!3271884)))

(declare-fun res!2231993 () Bool)

(assert (=> b!5259697 (=> (not res!2231993) (not e!3271884))))

(assert (=> b!5259697 (= res!2231993 (dynLambda!24024 lambda!265080 (h!67252 (exprs!4760 setElem!33608))))))

(declare-fun b!5259698 () Bool)

(assert (=> b!5259698 (= e!3271884 (forall!14288 (t!374111 (exprs!4760 setElem!33608)) lambda!265080))))

(assert (= (and d!1693088 (not res!2231992)) b!5259697))

(assert (= (and b!5259697 res!2231993) b!5259698))

(declare-fun b_lambda!202965 () Bool)

(assert (=> (not b_lambda!202965) (not b!5259697)))

(declare-fun m!6301702 () Bool)

(assert (=> b!5259697 m!6301702))

(declare-fun m!6301704 () Bool)

(assert (=> b!5259698 m!6301704))

(assert (=> d!1692824 d!1693088))

(declare-fun d!1693090 () Bool)

(assert (=> d!1693090 (= (nullable!5045 r!7292) (nullableFct!1431 r!7292))))

(declare-fun bs!1219558 () Bool)

(assert (= bs!1219558 d!1693090))

(declare-fun m!6301706 () Bool)

(assert (=> bs!1219558 m!6301706))

(assert (=> b!5259071 d!1693090))

(declare-fun b!5259699 () Bool)

(declare-fun e!3271885 () (Set Context!8520))

(assert (=> b!5259699 (= e!3271885 (as set.empty (Set Context!8520)))))

(declare-fun b!5259700 () Bool)

(declare-fun e!3271887 () (Set Context!8520))

(assert (=> b!5259700 (= e!3271887 e!3271885)))

(declare-fun c!910407 () Bool)

(assert (=> b!5259700 (= c!910407 (is-Cons!60804 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))))

(declare-fun b!5259701 () Bool)

(declare-fun call!372879 () (Set Context!8520))

(assert (=> b!5259701 (= e!3271885 call!372879)))

(declare-fun d!1693092 () Bool)

(declare-fun c!910406 () Bool)

(declare-fun e!3271886 () Bool)

(assert (=> d!1693092 (= c!910406 e!3271886)))

(declare-fun res!2231994 () Bool)

(assert (=> d!1693092 (=> (not res!2231994) (not e!3271886))))

(assert (=> d!1693092 (= res!2231994 (is-Cons!60804 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))))))

(assert (=> d!1693092 (= (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))) (h!67251 s!2326)) e!3271887)))

(declare-fun bm!372874 () Bool)

(assert (=> bm!372874 (= call!372879 (derivationStepZipperDown!324 (h!67252 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343)))))))))) (Context!8521 (t!374111 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))) (h!67251 s!2326)))))

(declare-fun b!5259702 () Bool)

(assert (=> b!5259702 (= e!3271887 (set.union call!372879 (derivationStepZipperUp!248 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))) (h!67251 s!2326))))))

(declare-fun b!5259703 () Bool)

(assert (=> b!5259703 (= e!3271886 (nullable!5045 (h!67252 (exprs!4760 (Context!8521 (t!374111 (exprs!4760 (Context!8521 (Cons!60804 (h!67252 (exprs!4760 (h!67253 zl!343))) (t!374111 (exprs!4760 (h!67253 zl!343))))))))))))))

(assert (= (and d!1693092 res!2231994) b!5259703))

(assert (= (and d!1693092 c!910406) b!5259702))

(assert (= (and d!1693092 (not c!910406)) b!5259700))

(assert (= (and b!5259700 c!910407) b!5259701))

(assert (= (and b!5259700 (not c!910407)) b!5259699))

(assert (= (or b!5259702 b!5259701) bm!372874))

(declare-fun m!6301708 () Bool)

(assert (=> bm!372874 m!6301708))

(declare-fun m!6301710 () Bool)

(assert (=> b!5259702 m!6301710))

(declare-fun m!6301712 () Bool)

(assert (=> b!5259703 m!6301712))

(assert (=> b!5258792 d!1693092))

(declare-fun d!1693094 () Bool)

(declare-fun res!2231999 () Bool)

(declare-fun e!3271892 () Bool)

(assert (=> d!1693094 (=> res!2231999 e!3271892)))

(assert (=> d!1693094 (= res!2231999 (is-Nil!60805 lt!2155147))))

(assert (=> d!1693094 (= (noDuplicate!1234 lt!2155147) e!3271892)))

(declare-fun b!5259708 () Bool)

(declare-fun e!3271893 () Bool)

(assert (=> b!5259708 (= e!3271892 e!3271893)))

(declare-fun res!2232000 () Bool)

(assert (=> b!5259708 (=> (not res!2232000) (not e!3271893))))

(declare-fun contains!19684 (List!60929 Context!8520) Bool)

(assert (=> b!5259708 (= res!2232000 (not (contains!19684 (t!374112 lt!2155147) (h!67253 lt!2155147))))))

(declare-fun b!5259709 () Bool)

(assert (=> b!5259709 (= e!3271893 (noDuplicate!1234 (t!374112 lt!2155147)))))

(assert (= (and d!1693094 (not res!2231999)) b!5259708))

(assert (= (and b!5259708 res!2232000) b!5259709))

(declare-fun m!6301714 () Bool)

(assert (=> b!5259708 m!6301714))

(declare-fun m!6301716 () Bool)

(assert (=> b!5259709 m!6301716))

(assert (=> d!1692822 d!1693094))

(declare-fun d!1693096 () Bool)

(declare-fun e!3271901 () Bool)

(assert (=> d!1693096 e!3271901))

(declare-fun res!2232006 () Bool)

(assert (=> d!1693096 (=> (not res!2232006) (not e!3271901))))

(declare-fun res!2232005 () List!60929)

(assert (=> d!1693096 (= res!2232006 (noDuplicate!1234 res!2232005))))

(declare-fun e!3271900 () Bool)

(assert (=> d!1693096 e!3271900))

(assert (=> d!1693096 (= (choose!39222 z!1189) res!2232005)))

(declare-fun b!5259717 () Bool)

(declare-fun e!3271902 () Bool)

(declare-fun tp!1470360 () Bool)

(assert (=> b!5259717 (= e!3271902 tp!1470360)))

(declare-fun tp!1470361 () Bool)

(declare-fun b!5259716 () Bool)

(assert (=> b!5259716 (= e!3271900 (and (inv!80438 (h!67253 res!2232005)) e!3271902 tp!1470361))))

(declare-fun b!5259718 () Bool)

(assert (=> b!5259718 (= e!3271901 (= (content!10801 res!2232005) z!1189))))

(assert (= b!5259716 b!5259717))

(assert (= (and d!1693096 (is-Cons!60805 res!2232005)) b!5259716))

(assert (= (and d!1693096 res!2232006) b!5259718))

(declare-fun m!6301718 () Bool)

(assert (=> d!1693096 m!6301718))

(declare-fun m!6301720 () Bool)

(assert (=> b!5259716 m!6301720))

(declare-fun m!6301722 () Bool)

(assert (=> b!5259718 m!6301722))

(assert (=> d!1692822 d!1693096))

(declare-fun d!1693098 () Bool)

(assert (=> d!1693098 true))

(assert (=> d!1693098 true))

(declare-fun res!2232007 () Bool)

(assert (=> d!1693098 (= (choose!39225 lambda!265061) res!2232007)))

(assert (=> d!1692852 d!1693098))

(declare-fun d!1693100 () Bool)

(assert (=> d!1693100 (= (isDefined!11690 lt!2155159) (not (isEmpty!32750 lt!2155159)))))

(declare-fun bs!1219559 () Bool)

(assert (= bs!1219559 d!1693100))

(declare-fun m!6301724 () Bool)

(assert (=> bs!1219559 m!6301724))

(assert (=> d!1692846 d!1693100))

(declare-fun b!5259719 () Bool)

(declare-fun e!3271909 () Bool)

(declare-fun e!3271904 () Bool)

(assert (=> b!5259719 (= e!3271909 e!3271904)))

(declare-fun res!2232008 () Bool)

(assert (=> b!5259719 (=> (not res!2232008) (not e!3271904))))

(declare-fun lt!2155239 () Bool)

(assert (=> b!5259719 (= res!2232008 (not lt!2155239))))

(declare-fun b!5259720 () Bool)

(declare-fun res!2232010 () Bool)

(declare-fun e!3271908 () Bool)

(assert (=> b!5259720 (=> (not res!2232010) (not e!3271908))))

(declare-fun call!372880 () Bool)

(assert (=> b!5259720 (= res!2232010 (not call!372880))))

(declare-fun b!5259721 () Bool)

(declare-fun e!3271906 () Bool)

(assert (=> b!5259721 (= e!3271906 (matchR!7061 (derivativeStep!4100 (regOne!30264 r!7292) (head!11277 Nil!60803)) (tail!10374 Nil!60803)))))

(declare-fun b!5259722 () Bool)

(declare-fun e!3271907 () Bool)

(assert (=> b!5259722 (= e!3271907 (not lt!2155239))))

(declare-fun b!5259723 () Bool)

(declare-fun res!2232009 () Bool)

(assert (=> b!5259723 (=> res!2232009 e!3271909)))

(assert (=> b!5259723 (= res!2232009 e!3271908)))

(declare-fun res!2232015 () Bool)

(assert (=> b!5259723 (=> (not res!2232015) (not e!3271908))))

(assert (=> b!5259723 (= res!2232015 lt!2155239)))

(declare-fun b!5259724 () Bool)

(declare-fun e!3271903 () Bool)

(assert (=> b!5259724 (= e!3271904 e!3271903)))

(declare-fun res!2232014 () Bool)

(assert (=> b!5259724 (=> res!2232014 e!3271903)))

(assert (=> b!5259724 (= res!2232014 call!372880)))

(declare-fun d!1693102 () Bool)

(declare-fun e!3271905 () Bool)

(assert (=> d!1693102 e!3271905))

(declare-fun c!910408 () Bool)

(assert (=> d!1693102 (= c!910408 (is-EmptyExpr!14876 (regOne!30264 r!7292)))))

(assert (=> d!1693102 (= lt!2155239 e!3271906)))

(declare-fun c!910409 () Bool)

(assert (=> d!1693102 (= c!910409 (isEmpty!32749 Nil!60803))))

(assert (=> d!1693102 (validRegex!6612 (regOne!30264 r!7292))))

(assert (=> d!1693102 (= (matchR!7061 (regOne!30264 r!7292) Nil!60803) lt!2155239)))

(declare-fun b!5259725 () Bool)

(declare-fun res!2232013 () Bool)

(assert (=> b!5259725 (=> res!2232013 e!3271903)))

(assert (=> b!5259725 (= res!2232013 (not (isEmpty!32749 (tail!10374 Nil!60803))))))

(declare-fun b!5259726 () Bool)

(assert (=> b!5259726 (= e!3271905 (= lt!2155239 call!372880))))

(declare-fun bm!372875 () Bool)

(assert (=> bm!372875 (= call!372880 (isEmpty!32749 Nil!60803))))

(declare-fun b!5259727 () Bool)

(assert (=> b!5259727 (= e!3271903 (not (= (head!11277 Nil!60803) (c!910130 (regOne!30264 r!7292)))))))

(declare-fun b!5259728 () Bool)

(declare-fun res!2232011 () Bool)

(assert (=> b!5259728 (=> (not res!2232011) (not e!3271908))))

(assert (=> b!5259728 (= res!2232011 (isEmpty!32749 (tail!10374 Nil!60803)))))

(declare-fun b!5259729 () Bool)

(assert (=> b!5259729 (= e!3271906 (nullable!5045 (regOne!30264 r!7292)))))

(declare-fun b!5259730 () Bool)

(assert (=> b!5259730 (= e!3271908 (= (head!11277 Nil!60803) (c!910130 (regOne!30264 r!7292))))))

(declare-fun b!5259731 () Bool)

(declare-fun res!2232012 () Bool)

(assert (=> b!5259731 (=> res!2232012 e!3271909)))

(assert (=> b!5259731 (= res!2232012 (not (is-ElementMatch!14876 (regOne!30264 r!7292))))))

(assert (=> b!5259731 (= e!3271907 e!3271909)))

(declare-fun b!5259732 () Bool)

(assert (=> b!5259732 (= e!3271905 e!3271907)))

(declare-fun c!910410 () Bool)

(assert (=> b!5259732 (= c!910410 (is-EmptyLang!14876 (regOne!30264 r!7292)))))

(assert (= (and d!1693102 c!910409) b!5259729))

(assert (= (and d!1693102 (not c!910409)) b!5259721))

(assert (= (and d!1693102 c!910408) b!5259726))

(assert (= (and d!1693102 (not c!910408)) b!5259732))

(assert (= (and b!5259732 c!910410) b!5259722))

(assert (= (and b!5259732 (not c!910410)) b!5259731))

(assert (= (and b!5259731 (not res!2232012)) b!5259723))

(assert (= (and b!5259723 res!2232015) b!5259720))

(assert (= (and b!5259720 res!2232010) b!5259728))

(assert (= (and b!5259728 res!2232011) b!5259730))

(assert (= (and b!5259723 (not res!2232009)) b!5259719))

(assert (= (and b!5259719 res!2232008) b!5259724))

(assert (= (and b!5259724 (not res!2232014)) b!5259725))

(assert (= (and b!5259725 (not res!2232013)) b!5259727))

(assert (= (or b!5259726 b!5259720 b!5259724) bm!372875))

(declare-fun m!6301726 () Bool)

(assert (=> b!5259728 m!6301726))

(assert (=> b!5259728 m!6301726))

(declare-fun m!6301728 () Bool)

(assert (=> b!5259728 m!6301728))

(assert (=> b!5259729 m!6301566))

(declare-fun m!6301730 () Bool)

(assert (=> d!1693102 m!6301730))

(assert (=> d!1693102 m!6301090))

(declare-fun m!6301732 () Bool)

(assert (=> b!5259727 m!6301732))

(assert (=> bm!372875 m!6301730))

(assert (=> b!5259725 m!6301726))

(assert (=> b!5259725 m!6301726))

(assert (=> b!5259725 m!6301728))

(assert (=> b!5259721 m!6301732))

(assert (=> b!5259721 m!6301732))

(declare-fun m!6301734 () Bool)

(assert (=> b!5259721 m!6301734))

(assert (=> b!5259721 m!6301726))

(assert (=> b!5259721 m!6301734))

(assert (=> b!5259721 m!6301726))

(declare-fun m!6301736 () Bool)

(assert (=> b!5259721 m!6301736))

(assert (=> b!5259730 m!6301732))

(assert (=> d!1692846 d!1693102))

(assert (=> d!1692846 d!1692992))

(declare-fun b!5259733 () Bool)

(declare-fun e!3271911 () Bool)

(declare-fun e!3271914 () Bool)

(assert (=> b!5259733 (= e!3271911 e!3271914)))

(declare-fun res!2232018 () Bool)

(assert (=> b!5259733 (= res!2232018 (not (nullable!5045 (reg!15205 lt!2155180))))))

(assert (=> b!5259733 (=> (not res!2232018) (not e!3271914))))

(declare-fun bm!372876 () Bool)

(declare-fun call!372882 () Bool)

(declare-fun c!910412 () Bool)

(assert (=> bm!372876 (= call!372882 (validRegex!6612 (ite c!910412 (regOne!30265 lt!2155180) (regOne!30264 lt!2155180))))))

(declare-fun b!5259734 () Bool)

(declare-fun res!2232016 () Bool)

(declare-fun e!3271915 () Bool)

(assert (=> b!5259734 (=> res!2232016 e!3271915)))

(assert (=> b!5259734 (= res!2232016 (not (is-Concat!23721 lt!2155180)))))

(declare-fun e!3271916 () Bool)

(assert (=> b!5259734 (= e!3271916 e!3271915)))

(declare-fun b!5259735 () Bool)

(declare-fun e!3271913 () Bool)

(assert (=> b!5259735 (= e!3271913 e!3271911)))

(declare-fun c!910411 () Bool)

(assert (=> b!5259735 (= c!910411 (is-Star!14876 lt!2155180))))

(declare-fun b!5259736 () Bool)

(declare-fun res!2232017 () Bool)

(declare-fun e!3271912 () Bool)

(assert (=> b!5259736 (=> (not res!2232017) (not e!3271912))))

(assert (=> b!5259736 (= res!2232017 call!372882)))

(assert (=> b!5259736 (= e!3271916 e!3271912)))

(declare-fun b!5259737 () Bool)

(declare-fun call!372883 () Bool)

(assert (=> b!5259737 (= e!3271912 call!372883)))

(declare-fun b!5259738 () Bool)

(assert (=> b!5259738 (= e!3271911 e!3271916)))

(assert (=> b!5259738 (= c!910412 (is-Union!14876 lt!2155180))))

(declare-fun b!5259739 () Bool)

(declare-fun e!3271910 () Bool)

(assert (=> b!5259739 (= e!3271910 call!372883)))

(declare-fun d!1693104 () Bool)

(declare-fun res!2232019 () Bool)

(assert (=> d!1693104 (=> res!2232019 e!3271913)))

(assert (=> d!1693104 (= res!2232019 (is-ElementMatch!14876 lt!2155180))))

(assert (=> d!1693104 (= (validRegex!6612 lt!2155180) e!3271913)))

(declare-fun bm!372877 () Bool)

(declare-fun call!372881 () Bool)

(assert (=> bm!372877 (= call!372881 (validRegex!6612 (ite c!910411 (reg!15205 lt!2155180) (ite c!910412 (regTwo!30265 lt!2155180) (regTwo!30264 lt!2155180)))))))

(declare-fun b!5259740 () Bool)

(assert (=> b!5259740 (= e!3271914 call!372881)))

(declare-fun b!5259741 () Bool)

(assert (=> b!5259741 (= e!3271915 e!3271910)))

(declare-fun res!2232020 () Bool)

(assert (=> b!5259741 (=> (not res!2232020) (not e!3271910))))

(assert (=> b!5259741 (= res!2232020 call!372882)))

(declare-fun bm!372878 () Bool)

(assert (=> bm!372878 (= call!372883 call!372881)))

(assert (= (and d!1693104 (not res!2232019)) b!5259735))

(assert (= (and b!5259735 c!910411) b!5259733))

(assert (= (and b!5259735 (not c!910411)) b!5259738))

(assert (= (and b!5259733 res!2232018) b!5259740))

(assert (= (and b!5259738 c!910412) b!5259736))

(assert (= (and b!5259738 (not c!910412)) b!5259734))

(assert (= (and b!5259736 res!2232017) b!5259737))

(assert (= (and b!5259734 (not res!2232016)) b!5259741))

(assert (= (and b!5259741 res!2232020) b!5259739))

(assert (= (or b!5259737 b!5259739) bm!372878))

(assert (= (or b!5259736 b!5259741) bm!372876))

(assert (= (or b!5259740 bm!372878) bm!372877))

(declare-fun m!6301738 () Bool)

(assert (=> b!5259733 m!6301738))

(declare-fun m!6301740 () Bool)

(assert (=> bm!372876 m!6301740))

(declare-fun m!6301742 () Bool)

(assert (=> bm!372877 m!6301742))

(assert (=> d!1692892 d!1693104))

(declare-fun d!1693106 () Bool)

(declare-fun res!2232021 () Bool)

(declare-fun e!3271917 () Bool)

(assert (=> d!1693106 (=> res!2232021 e!3271917)))

(assert (=> d!1693106 (= res!2232021 (is-Nil!60804 (unfocusZipperList!318 zl!343)))))

(assert (=> d!1693106 (= (forall!14288 (unfocusZipperList!318 zl!343) lambda!265105) e!3271917)))

(declare-fun b!5259742 () Bool)

(declare-fun e!3271918 () Bool)

(assert (=> b!5259742 (= e!3271917 e!3271918)))

(declare-fun res!2232022 () Bool)

(assert (=> b!5259742 (=> (not res!2232022) (not e!3271918))))

(assert (=> b!5259742 (= res!2232022 (dynLambda!24024 lambda!265105 (h!67252 (unfocusZipperList!318 zl!343))))))

(declare-fun b!5259743 () Bool)

(assert (=> b!5259743 (= e!3271918 (forall!14288 (t!374111 (unfocusZipperList!318 zl!343)) lambda!265105))))

(assert (= (and d!1693106 (not res!2232021)) b!5259742))

(assert (= (and b!5259742 res!2232022) b!5259743))

(declare-fun b_lambda!202967 () Bool)

(assert (=> (not b_lambda!202967) (not b!5259742)))

(declare-fun m!6301744 () Bool)

(assert (=> b!5259742 m!6301744))

(declare-fun m!6301746 () Bool)

(assert (=> b!5259743 m!6301746))

(assert (=> d!1692892 d!1693106))

(declare-fun d!1693108 () Bool)

(assert (=> d!1693108 (= (nullable!5045 (reg!15205 r!7292)) (nullableFct!1431 (reg!15205 r!7292)))))

(declare-fun bs!1219560 () Bool)

(assert (= bs!1219560 d!1693108))

(declare-fun m!6301748 () Bool)

(assert (=> bs!1219560 m!6301748))

(assert (=> b!5258770 d!1693108))

(assert (=> bs!1219425 d!1692844))

(assert (=> d!1692872 d!1693062))

(declare-fun b!5259744 () Bool)

(declare-fun e!3271920 () Bool)

(declare-fun e!3271923 () Bool)

(assert (=> b!5259744 (= e!3271920 e!3271923)))

(declare-fun res!2232025 () Bool)

(assert (=> b!5259744 (= res!2232025 (not (nullable!5045 (reg!15205 lt!2155144))))))

(assert (=> b!5259744 (=> (not res!2232025) (not e!3271923))))

(declare-fun bm!372879 () Bool)

(declare-fun call!372885 () Bool)

(declare-fun c!910414 () Bool)

(assert (=> bm!372879 (= call!372885 (validRegex!6612 (ite c!910414 (regOne!30265 lt!2155144) (regOne!30264 lt!2155144))))))

(declare-fun b!5259745 () Bool)

(declare-fun res!2232023 () Bool)

(declare-fun e!3271924 () Bool)

(assert (=> b!5259745 (=> res!2232023 e!3271924)))

(assert (=> b!5259745 (= res!2232023 (not (is-Concat!23721 lt!2155144)))))

(declare-fun e!3271925 () Bool)

(assert (=> b!5259745 (= e!3271925 e!3271924)))

(declare-fun b!5259746 () Bool)

(declare-fun e!3271922 () Bool)

(assert (=> b!5259746 (= e!3271922 e!3271920)))

(declare-fun c!910413 () Bool)

(assert (=> b!5259746 (= c!910413 (is-Star!14876 lt!2155144))))

(declare-fun b!5259747 () Bool)

(declare-fun res!2232024 () Bool)

(declare-fun e!3271921 () Bool)

(assert (=> b!5259747 (=> (not res!2232024) (not e!3271921))))

(assert (=> b!5259747 (= res!2232024 call!372885)))

(assert (=> b!5259747 (= e!3271925 e!3271921)))

(declare-fun b!5259748 () Bool)

(declare-fun call!372886 () Bool)

(assert (=> b!5259748 (= e!3271921 call!372886)))

(declare-fun b!5259749 () Bool)

(assert (=> b!5259749 (= e!3271920 e!3271925)))

(assert (=> b!5259749 (= c!910414 (is-Union!14876 lt!2155144))))

(declare-fun b!5259750 () Bool)

(declare-fun e!3271919 () Bool)

(assert (=> b!5259750 (= e!3271919 call!372886)))

(declare-fun d!1693110 () Bool)

(declare-fun res!2232026 () Bool)

(assert (=> d!1693110 (=> res!2232026 e!3271922)))

(assert (=> d!1693110 (= res!2232026 (is-ElementMatch!14876 lt!2155144))))

(assert (=> d!1693110 (= (validRegex!6612 lt!2155144) e!3271922)))

(declare-fun bm!372880 () Bool)

(declare-fun call!372884 () Bool)

(assert (=> bm!372880 (= call!372884 (validRegex!6612 (ite c!910413 (reg!15205 lt!2155144) (ite c!910414 (regTwo!30265 lt!2155144) (regTwo!30264 lt!2155144)))))))

(declare-fun b!5259751 () Bool)

(assert (=> b!5259751 (= e!3271923 call!372884)))

(declare-fun b!5259752 () Bool)

(assert (=> b!5259752 (= e!3271924 e!3271919)))

(declare-fun res!2232027 () Bool)

(assert (=> b!5259752 (=> (not res!2232027) (not e!3271919))))

(assert (=> b!5259752 (= res!2232027 call!372885)))

(declare-fun bm!372881 () Bool)

(assert (=> bm!372881 (= call!372886 call!372884)))

(assert (= (and d!1693110 (not res!2232026)) b!5259746))

(assert (= (and b!5259746 c!910413) b!5259744))

(assert (= (and b!5259746 (not c!910413)) b!5259749))

(assert (= (and b!5259744 res!2232025) b!5259751))

(assert (= (and b!5259749 c!910414) b!5259747))

(assert (= (and b!5259749 (not c!910414)) b!5259745))

(assert (= (and b!5259747 res!2232024) b!5259748))

(assert (= (and b!5259745 (not res!2232023)) b!5259752))

(assert (= (and b!5259752 res!2232027) b!5259750))

(assert (= (or b!5259748 b!5259750) bm!372881))

(assert (= (or b!5259747 b!5259752) bm!372879))

(assert (= (or b!5259751 bm!372881) bm!372880))

(declare-fun m!6301750 () Bool)

(assert (=> b!5259744 m!6301750))

(declare-fun m!6301752 () Bool)

(assert (=> bm!372879 m!6301752))

(declare-fun m!6301754 () Bool)

(assert (=> bm!372880 m!6301754))

(assert (=> d!1692816 d!1693110))

(assert (=> d!1692816 d!1692892))

(assert (=> d!1692816 d!1692894))

(assert (=> d!1692888 d!1692986))

(assert (=> d!1692888 d!1692826))

(declare-fun d!1693112 () Bool)

(assert (=> d!1693112 (= (isEmpty!32745 (t!374111 (unfocusZipperList!318 zl!343))) (is-Nil!60804 (t!374111 (unfocusZipperList!318 zl!343))))))

(assert (=> b!5259105 d!1693112))

(assert (=> b!5258882 d!1693100))

(declare-fun d!1693114 () Bool)

(assert (=> d!1693114 (= (isUnion!254 lt!2155180) (is-Union!14876 lt!2155180))))

(assert (=> b!5259107 d!1693114))

(declare-fun d!1693116 () Bool)

(assert (=> d!1693116 (= (nullable!5045 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))) (nullableFct!1431 (regOne!30264 (h!67252 (exprs!4760 (h!67253 zl!343))))))))

(declare-fun bs!1219561 () Bool)

(assert (= bs!1219561 d!1693116))

(declare-fun m!6301756 () Bool)

(assert (=> bs!1219561 m!6301756))

(assert (=> b!5258847 d!1693116))

(declare-fun d!1693118 () Bool)

(declare-fun c!910415 () Bool)

(assert (=> d!1693118 (= c!910415 (isEmpty!32749 (tail!10374 (t!374110 s!2326))))))

(declare-fun e!3271926 () Bool)

(assert (=> d!1693118 (= (matchZipper!1120 (derivationStepZipper!1123 (set.union lt!2155091 lt!2155094) (head!11277 (t!374110 s!2326))) (tail!10374 (t!374110 s!2326))) e!3271926)))

(declare-fun b!5259753 () Bool)

(assert (=> b!5259753 (= e!3271926 (nullableZipper!1279 (derivationStepZipper!1123 (set.union lt!2155091 lt!2155094) (head!11277 (t!374110 s!2326)))))))

(declare-fun b!5259754 () Bool)

(assert (=> b!5259754 (= e!3271926 (matchZipper!1120 (derivationStepZipper!1123 (derivationStepZipper!1123 (set.union lt!2155091 lt!2155094) (head!11277 (t!374110 s!2326))) (head!11277 (tail!10374 (t!374110 s!2326)))) (tail!10374 (tail!10374 (t!374110 s!2326)))))))

(assert (= (and d!1693118 c!910415) b!5259753))

(assert (= (and d!1693118 (not c!910415)) b!5259754))

(assert (=> d!1693118 m!6301018))

(assert (=> d!1693118 m!6301430))

(assert (=> b!5259753 m!6301144))

(declare-fun m!6301758 () Bool)

(assert (=> b!5259753 m!6301758))

(assert (=> b!5259754 m!6301018))

(assert (=> b!5259754 m!6301434))

(assert (=> b!5259754 m!6301144))

(assert (=> b!5259754 m!6301434))

(declare-fun m!6301760 () Bool)

(assert (=> b!5259754 m!6301760))

(assert (=> b!5259754 m!6301018))

(assert (=> b!5259754 m!6301438))

(assert (=> b!5259754 m!6301760))

(assert (=> b!5259754 m!6301438))

(declare-fun m!6301762 () Bool)

(assert (=> b!5259754 m!6301762))

(assert (=> b!5258952 d!1693118))

(declare-fun bs!1219562 () Bool)

(declare-fun d!1693120 () Bool)

(assert (= bs!1219562 (and d!1693120 b!5258595)))

(declare-fun lambda!265157 () Int)

(assert (=> bs!1219562 (= (= (head!11277 (t!374110 s!2326)) (h!67251 s!2326)) (= lambda!265157 lambda!265062))))

(declare-fun bs!1219563 () Bool)

(assert (= bs!1219563 (and d!1693120 d!1692952)))

(assert (=> bs!1219563 (= lambda!265157 lambda!265132)))

(declare-fun bs!1219564 () Bool)

(assert (= bs!1219564 (and d!1693120 d!1693080)))

(assert (=> bs!1219564 (= lambda!265157 lambda!265156)))

(assert (=> d!1693120 true))

(assert (=> d!1693120 (= (derivationStepZipper!1123 (set.union lt!2155091 lt!2155094) (head!11277 (t!374110 s!2326))) (flatMap!603 (set.union lt!2155091 lt!2155094) lambda!265157))))

(declare-fun bs!1219565 () Bool)

(assert (= bs!1219565 d!1693120))

(declare-fun m!6301764 () Bool)

(assert (=> bs!1219565 m!6301764))

(assert (=> b!5258952 d!1693120))

(assert (=> b!5258952 d!1692954))

(assert (=> b!5258952 d!1692956))

(declare-fun b!5259755 () Bool)

(declare-fun e!3271933 () Bool)

(declare-fun e!3271928 () Bool)

(assert (=> b!5259755 (= e!3271933 e!3271928)))

(declare-fun res!2232028 () Bool)

(assert (=> b!5259755 (=> (not res!2232028) (not e!3271928))))

(declare-fun lt!2155240 () Bool)

(assert (=> b!5259755 (= res!2232028 (not lt!2155240))))

(declare-fun b!5259756 () Bool)

(declare-fun res!2232030 () Bool)

(declare-fun e!3271932 () Bool)

(assert (=> b!5259756 (=> (not res!2232030) (not e!3271932))))

(declare-fun call!372887 () Bool)

(assert (=> b!5259756 (= res!2232030 (not call!372887))))

(declare-fun b!5259757 () Bool)

(declare-fun e!3271930 () Bool)

(assert (=> b!5259757 (= e!3271930 (matchR!7061 (derivativeStep!4100 (derivativeStep!4100 r!7292 (head!11277 s!2326)) (head!11277 (tail!10374 s!2326))) (tail!10374 (tail!10374 s!2326))))))

(declare-fun b!5259758 () Bool)

(declare-fun e!3271931 () Bool)

(assert (=> b!5259758 (= e!3271931 (not lt!2155240))))

(declare-fun b!5259759 () Bool)

(declare-fun res!2232029 () Bool)

(assert (=> b!5259759 (=> res!2232029 e!3271933)))

(assert (=> b!5259759 (= res!2232029 e!3271932)))

(declare-fun res!2232035 () Bool)

(assert (=> b!5259759 (=> (not res!2232035) (not e!3271932))))

(assert (=> b!5259759 (= res!2232035 lt!2155240)))

(declare-fun b!5259760 () Bool)

(declare-fun e!3271927 () Bool)

(assert (=> b!5259760 (= e!3271928 e!3271927)))

(declare-fun res!2232034 () Bool)

(assert (=> b!5259760 (=> res!2232034 e!3271927)))

(assert (=> b!5259760 (= res!2232034 call!372887)))

(declare-fun d!1693122 () Bool)

(declare-fun e!3271929 () Bool)

(assert (=> d!1693122 e!3271929))

(declare-fun c!910416 () Bool)

(assert (=> d!1693122 (= c!910416 (is-EmptyExpr!14876 (derivativeStep!4100 r!7292 (head!11277 s!2326))))))

(assert (=> d!1693122 (= lt!2155240 e!3271930)))

(declare-fun c!910417 () Bool)

(assert (=> d!1693122 (= c!910417 (isEmpty!32749 (tail!10374 s!2326)))))

(assert (=> d!1693122 (validRegex!6612 (derivativeStep!4100 r!7292 (head!11277 s!2326)))))

(assert (=> d!1693122 (= (matchR!7061 (derivativeStep!4100 r!7292 (head!11277 s!2326)) (tail!10374 s!2326)) lt!2155240)))

(declare-fun b!5259761 () Bool)

(declare-fun res!2232033 () Bool)

(assert (=> b!5259761 (=> res!2232033 e!3271927)))

(assert (=> b!5259761 (= res!2232033 (not (isEmpty!32749 (tail!10374 (tail!10374 s!2326)))))))

(declare-fun b!5259762 () Bool)

(assert (=> b!5259762 (= e!3271929 (= lt!2155240 call!372887))))

(declare-fun bm!372882 () Bool)

(assert (=> bm!372882 (= call!372887 (isEmpty!32749 (tail!10374 s!2326)))))

(declare-fun b!5259763 () Bool)

(assert (=> b!5259763 (= e!3271927 (not (= (head!11277 (tail!10374 s!2326)) (c!910130 (derivativeStep!4100 r!7292 (head!11277 s!2326))))))))

(declare-fun b!5259764 () Bool)

(declare-fun res!2232031 () Bool)

(assert (=> b!5259764 (=> (not res!2232031) (not e!3271932))))

(assert (=> b!5259764 (= res!2232031 (isEmpty!32749 (tail!10374 (tail!10374 s!2326))))))

(declare-fun b!5259765 () Bool)

(assert (=> b!5259765 (= e!3271930 (nullable!5045 (derivativeStep!4100 r!7292 (head!11277 s!2326))))))

(declare-fun b!5259766 () Bool)

(assert (=> b!5259766 (= e!3271932 (= (head!11277 (tail!10374 s!2326)) (c!910130 (derivativeStep!4100 r!7292 (head!11277 s!2326)))))))

(declare-fun b!5259767 () Bool)

(declare-fun res!2232032 () Bool)

(assert (=> b!5259767 (=> res!2232032 e!3271933)))

(assert (=> b!5259767 (= res!2232032 (not (is-ElementMatch!14876 (derivativeStep!4100 r!7292 (head!11277 s!2326)))))))

(assert (=> b!5259767 (= e!3271931 e!3271933)))

(declare-fun b!5259768 () Bool)

(assert (=> b!5259768 (= e!3271929 e!3271931)))

(declare-fun c!910418 () Bool)

(assert (=> b!5259768 (= c!910418 (is-EmptyLang!14876 (derivativeStep!4100 r!7292 (head!11277 s!2326))))))

(assert (= (and d!1693122 c!910417) b!5259765))

(assert (= (and d!1693122 (not c!910417)) b!5259757))

(assert (= (and d!1693122 c!910416) b!5259762))

(assert (= (and d!1693122 (not c!910416)) b!5259768))

(assert (= (and b!5259768 c!910418) b!5259758))

(assert (= (and b!5259768 (not c!910418)) b!5259767))

(assert (= (and b!5259767 (not res!2232032)) b!5259759))

(assert (= (and b!5259759 res!2232035) b!5259756))

(assert (= (and b!5259756 res!2232030) b!5259764))

(assert (= (and b!5259764 res!2232031) b!5259766))

(assert (= (and b!5259759 (not res!2232029)) b!5259755))

(assert (= (and b!5259755 res!2232028) b!5259760))

(assert (= (and b!5259760 (not res!2232034)) b!5259761))

(assert (= (and b!5259761 (not res!2232033)) b!5259763))

(assert (= (or b!5259762 b!5259756 b!5259760) bm!372882))

(assert (=> b!5259764 m!6301182))

(declare-fun m!6301766 () Bool)

(assert (=> b!5259764 m!6301766))

(assert (=> b!5259764 m!6301766))

(declare-fun m!6301768 () Bool)

(assert (=> b!5259764 m!6301768))

(assert (=> b!5259765 m!6301190))

(declare-fun m!6301770 () Bool)

(assert (=> b!5259765 m!6301770))

(assert (=> d!1693122 m!6301182))

(assert (=> d!1693122 m!6301184))

(assert (=> d!1693122 m!6301190))

(declare-fun m!6301772 () Bool)

(assert (=> d!1693122 m!6301772))

(assert (=> b!5259763 m!6301182))

(declare-fun m!6301774 () Bool)

(assert (=> b!5259763 m!6301774))

(assert (=> bm!372882 m!6301182))

(assert (=> bm!372882 m!6301184))

(assert (=> b!5259761 m!6301182))

(assert (=> b!5259761 m!6301766))

(assert (=> b!5259761 m!6301766))

(assert (=> b!5259761 m!6301768))

(assert (=> b!5259757 m!6301182))

(assert (=> b!5259757 m!6301774))

(assert (=> b!5259757 m!6301190))

(assert (=> b!5259757 m!6301774))

(declare-fun m!6301776 () Bool)

(assert (=> b!5259757 m!6301776))

(assert (=> b!5259757 m!6301182))

(assert (=> b!5259757 m!6301766))

(assert (=> b!5259757 m!6301776))

(assert (=> b!5259757 m!6301766))

(declare-fun m!6301778 () Bool)

(assert (=> b!5259757 m!6301778))

(assert (=> b!5259766 m!6301182))

(assert (=> b!5259766 m!6301774))

(assert (=> b!5259063 d!1693122))

(declare-fun b!5259789 () Bool)

(declare-fun e!3271948 () Regex!14876)

(assert (=> b!5259789 (= e!3271948 EmptyLang!14876)))

(declare-fun b!5259790 () Bool)

(declare-fun e!3271947 () Regex!14876)

(declare-fun call!372898 () Regex!14876)

(declare-fun call!372896 () Regex!14876)

(assert (=> b!5259790 (= e!3271947 (Union!14876 call!372898 call!372896))))

(declare-fun c!910433 () Bool)

(declare-fun bm!372891 () Bool)

(declare-fun c!910432 () Bool)

(declare-fun c!910429 () Bool)

(assert (=> bm!372891 (= call!372898 (derivativeStep!4100 (ite c!910433 (regOne!30265 r!7292) (ite c!910432 (reg!15205 r!7292) (ite c!910429 (regTwo!30264 r!7292) (regOne!30264 r!7292)))) (head!11277 s!2326)))))

(declare-fun call!372899 () Regex!14876)

(declare-fun b!5259791 () Bool)

(declare-fun e!3271945 () Regex!14876)

(assert (=> b!5259791 (= e!3271945 (Union!14876 (Concat!23721 call!372896 (regTwo!30264 r!7292)) call!372899))))

(declare-fun bm!372892 () Bool)

(declare-fun call!372897 () Regex!14876)

(assert (=> bm!372892 (= call!372897 call!372898)))

(declare-fun b!5259792 () Bool)

(declare-fun e!3271944 () Regex!14876)

(assert (=> b!5259792 (= e!3271944 (Concat!23721 call!372897 r!7292))))

(declare-fun b!5259794 () Bool)

(declare-fun e!3271946 () Regex!14876)

(assert (=> b!5259794 (= e!3271946 (ite (= (head!11277 s!2326) (c!910130 r!7292)) EmptyExpr!14876 EmptyLang!14876))))

(declare-fun bm!372893 () Bool)

(assert (=> bm!372893 (= call!372899 call!372897)))

(declare-fun b!5259795 () Bool)

(assert (=> b!5259795 (= c!910433 (is-Union!14876 r!7292))))

(assert (=> b!5259795 (= e!3271946 e!3271947)))

(declare-fun b!5259796 () Bool)

(assert (=> b!5259796 (= e!3271945 (Union!14876 (Concat!23721 call!372899 (regTwo!30264 r!7292)) EmptyLang!14876))))

(declare-fun b!5259797 () Bool)

(assert (=> b!5259797 (= e!3271948 e!3271946)))

(declare-fun c!910431 () Bool)

(assert (=> b!5259797 (= c!910431 (is-ElementMatch!14876 r!7292))))

(declare-fun d!1693124 () Bool)

(declare-fun lt!2155243 () Regex!14876)

(assert (=> d!1693124 (validRegex!6612 lt!2155243)))

(assert (=> d!1693124 (= lt!2155243 e!3271948)))

(declare-fun c!910430 () Bool)

(assert (=> d!1693124 (= c!910430 (or (is-EmptyExpr!14876 r!7292) (is-EmptyLang!14876 r!7292)))))

(assert (=> d!1693124 (validRegex!6612 r!7292)))

(assert (=> d!1693124 (= (derivativeStep!4100 r!7292 (head!11277 s!2326)) lt!2155243)))

(declare-fun b!5259793 () Bool)

(assert (=> b!5259793 (= c!910429 (nullable!5045 (regOne!30264 r!7292)))))

(assert (=> b!5259793 (= e!3271944 e!3271945)))

(declare-fun bm!372894 () Bool)

(assert (=> bm!372894 (= call!372896 (derivativeStep!4100 (ite c!910433 (regTwo!30265 r!7292) (regOne!30264 r!7292)) (head!11277 s!2326)))))

(declare-fun b!5259798 () Bool)

(assert (=> b!5259798 (= e!3271947 e!3271944)))

(assert (=> b!5259798 (= c!910432 (is-Star!14876 r!7292))))

(assert (= (and d!1693124 c!910430) b!5259789))

(assert (= (and d!1693124 (not c!910430)) b!5259797))

(assert (= (and b!5259797 c!910431) b!5259794))

(assert (= (and b!5259797 (not c!910431)) b!5259795))

(assert (= (and b!5259795 c!910433) b!5259790))

(assert (= (and b!5259795 (not c!910433)) b!5259798))

(assert (= (and b!5259798 c!910432) b!5259792))

(assert (= (and b!5259798 (not c!910432)) b!5259793))

(assert (= (and b!5259793 c!910429) b!5259791))

(assert (= (and b!5259793 (not c!910429)) b!5259796))

(assert (= (or b!5259791 b!5259796) bm!372893))

(assert (= (or b!5259792 bm!372893) bm!372892))

(assert (= (or b!5259790 b!5259791) bm!372894))

(assert (= (or b!5259790 bm!372892) bm!372891))

(assert (=> bm!372891 m!6301188))

(declare-fun m!6301780 () Bool)

(assert (=> bm!372891 m!6301780))

(declare-fun m!6301782 () Bool)

(assert (=> d!1693124 m!6301782))

(assert (=> d!1693124 m!6300866))

(assert (=> b!5259793 m!6301566))

(assert (=> bm!372894 m!6301188))

(declare-fun m!6301784 () Bool)

(assert (=> bm!372894 m!6301784))

(assert (=> b!5259063 d!1693124))

(assert (=> b!5259063 d!1693002))

(assert (=> b!5259063 d!1692966))

(declare-fun b!5259799 () Bool)

(declare-fun e!3271955 () Bool)

(declare-fun e!3271950 () Bool)

(assert (=> b!5259799 (= e!3271955 e!3271950)))

(declare-fun res!2232036 () Bool)

(assert (=> b!5259799 (=> (not res!2232036) (not e!3271950))))

(declare-fun lt!2155244 () Bool)

(assert (=> b!5259799 (= res!2232036 (not lt!2155244))))

(declare-fun b!5259800 () Bool)

(declare-fun res!2232038 () Bool)

(declare-fun e!3271954 () Bool)

(assert (=> b!5259800 (=> (not res!2232038) (not e!3271954))))

(declare-fun call!372900 () Bool)

(assert (=> b!5259800 (= res!2232038 (not call!372900))))

(declare-fun b!5259801 () Bool)

(declare-fun e!3271952 () Bool)

(assert (=> b!5259801 (= e!3271952 (matchR!7061 (derivativeStep!4100 (regTwo!30264 r!7292) (head!11277 s!2326)) (tail!10374 s!2326)))))

(declare-fun b!5259802 () Bool)

(declare-fun e!3271953 () Bool)

(assert (=> b!5259802 (= e!3271953 (not lt!2155244))))

(declare-fun b!5259803 () Bool)

(declare-fun res!2232037 () Bool)

(assert (=> b!5259803 (=> res!2232037 e!3271955)))

(assert (=> b!5259803 (= res!2232037 e!3271954)))

(declare-fun res!2232043 () Bool)

(assert (=> b!5259803 (=> (not res!2232043) (not e!3271954))))

(assert (=> b!5259803 (= res!2232043 lt!2155244)))

(declare-fun b!5259804 () Bool)

(declare-fun e!3271949 () Bool)

(assert (=> b!5259804 (= e!3271950 e!3271949)))

(declare-fun res!2232042 () Bool)

(assert (=> b!5259804 (=> res!2232042 e!3271949)))

(assert (=> b!5259804 (= res!2232042 call!372900)))

(declare-fun d!1693126 () Bool)

(declare-fun e!3271951 () Bool)

(assert (=> d!1693126 e!3271951))

(declare-fun c!910434 () Bool)

(assert (=> d!1693126 (= c!910434 (is-EmptyExpr!14876 (regTwo!30264 r!7292)))))

(assert (=> d!1693126 (= lt!2155244 e!3271952)))

(declare-fun c!910435 () Bool)

(assert (=> d!1693126 (= c!910435 (isEmpty!32749 s!2326))))

(assert (=> d!1693126 (validRegex!6612 (regTwo!30264 r!7292))))

(assert (=> d!1693126 (= (matchR!7061 (regTwo!30264 r!7292) s!2326) lt!2155244)))

(declare-fun b!5259805 () Bool)

(declare-fun res!2232041 () Bool)

(assert (=> b!5259805 (=> res!2232041 e!3271949)))

(assert (=> b!5259805 (= res!2232041 (not (isEmpty!32749 (tail!10374 s!2326))))))

(declare-fun b!5259806 () Bool)

(assert (=> b!5259806 (= e!3271951 (= lt!2155244 call!372900))))

(declare-fun bm!372895 () Bool)

(assert (=> bm!372895 (= call!372900 (isEmpty!32749 s!2326))))

(declare-fun b!5259807 () Bool)

(assert (=> b!5259807 (= e!3271949 (not (= (head!11277 s!2326) (c!910130 (regTwo!30264 r!7292)))))))

(declare-fun b!5259808 () Bool)

(declare-fun res!2232039 () Bool)

(assert (=> b!5259808 (=> (not res!2232039) (not e!3271954))))

(assert (=> b!5259808 (= res!2232039 (isEmpty!32749 (tail!10374 s!2326)))))

(declare-fun b!5259809 () Bool)

(assert (=> b!5259809 (= e!3271952 (nullable!5045 (regTwo!30264 r!7292)))))

(declare-fun b!5259810 () Bool)

(assert (=> b!5259810 (= e!3271954 (= (head!11277 s!2326) (c!910130 (regTwo!30264 r!7292))))))

(declare-fun b!5259811 () Bool)

(declare-fun res!2232040 () Bool)

(assert (=> b!5259811 (=> res!2232040 e!3271955)))

(assert (=> b!5259811 (= res!2232040 (not (is-ElementMatch!14876 (regTwo!30264 r!7292))))))

(assert (=> b!5259811 (= e!3271953 e!3271955)))

(declare-fun b!5259812 () Bool)

(assert (=> b!5259812 (= e!3271951 e!3271953)))

(declare-fun c!910436 () Bool)

(assert (=> b!5259812 (= c!910436 (is-EmptyLang!14876 (regTwo!30264 r!7292)))))

(assert (= (and d!1693126 c!910435) b!5259809))

(assert (= (and d!1693126 (not c!910435)) b!5259801))

(assert (= (and d!1693126 c!910434) b!5259806))

(assert (= (and d!1693126 (not c!910434)) b!5259812))

(assert (= (and b!5259812 c!910436) b!5259802))

(assert (= (and b!5259812 (not c!910436)) b!5259811))

(assert (= (and b!5259811 (not res!2232040)) b!5259803))

(assert (= (and b!5259803 res!2232043) b!5259800))

(assert (= (and b!5259800 res!2232038) b!5259808))

(assert (= (and b!5259808 res!2232039) b!5259810))

(assert (= (and b!5259803 (not res!2232037)) b!5259799))

(assert (= (and b!5259799 res!2232036) b!5259804))

(assert (= (and b!5259804 (not res!2232042)) b!5259805))

(assert (= (and b!5259805 (not res!2232041)) b!5259807))

(assert (= (or b!5259806 b!5259800 b!5259804) bm!372895))

(assert (=> b!5259808 m!6301182))

(assert (=> b!5259808 m!6301182))

(assert (=> b!5259808 m!6301184))

(assert (=> b!5259809 m!6301460))

(assert (=> d!1693126 m!6301174))

(assert (=> d!1693126 m!6301464))

(assert (=> b!5259807 m!6301188))

(assert (=> bm!372895 m!6301174))

(assert (=> b!5259805 m!6301182))

(assert (=> b!5259805 m!6301182))

(assert (=> b!5259805 m!6301184))

(assert (=> b!5259801 m!6301188))

(assert (=> b!5259801 m!6301188))

(declare-fun m!6301786 () Bool)

(assert (=> b!5259801 m!6301786))

(assert (=> b!5259801 m!6301182))

(assert (=> b!5259801 m!6301786))

(assert (=> b!5259801 m!6301182))

(declare-fun m!6301788 () Bool)

(assert (=> b!5259801 m!6301788))

(assert (=> b!5259810 m!6301188))

(assert (=> b!5258884 d!1693126))

(assert (=> d!1692868 d!1692872))

(assert (=> d!1692868 d!1692870))

(declare-fun d!1693128 () Bool)

(declare-fun e!3271958 () Bool)

(assert (=> d!1693128 (= (matchZipper!1120 (set.union lt!2155091 lt!2155094) (t!374110 s!2326)) e!3271958)))

(declare-fun res!2232046 () Bool)

(assert (=> d!1693128 (=> res!2232046 e!3271958)))

(assert (=> d!1693128 (= res!2232046 (matchZipper!1120 lt!2155091 (t!374110 s!2326)))))

(assert (=> d!1693128 true))

(declare-fun _$48!893 () Unit!153022)

(assert (=> d!1693128 (= (choose!39228 lt!2155091 lt!2155094 (t!374110 s!2326)) _$48!893)))

(declare-fun b!5259815 () Bool)

(assert (=> b!5259815 (= e!3271958 (matchZipper!1120 lt!2155094 (t!374110 s!2326)))))

(assert (= (and d!1693128 (not res!2232046)) b!5259815))

(assert (=> d!1693128 m!6300880))

(assert (=> d!1693128 m!6300878))

(assert (=> b!5259815 m!6300858))

(assert (=> d!1692868 d!1693128))

(declare-fun d!1693130 () Bool)

(assert (=> d!1693130 (= (isEmptyLang!822 lt!2155180) (is-EmptyLang!14876 lt!2155180))))

(assert (=> b!5259109 d!1693130))

(declare-fun b!5259816 () Bool)

(declare-fun e!3271959 () Bool)

(declare-fun tp!1470362 () Bool)

(declare-fun tp!1470363 () Bool)

(assert (=> b!5259816 (= e!3271959 (and tp!1470362 tp!1470363))))

(assert (=> b!5259141 (= tp!1470244 e!3271959)))

(assert (= (and b!5259141 (is-Cons!60804 (exprs!4760 setElem!33614))) b!5259816))

(declare-fun b!5259817 () Bool)

(declare-fun e!3271960 () Bool)

(assert (=> b!5259817 (= e!3271960 tp_is_empty!39005)))

(declare-fun b!5259819 () Bool)

(declare-fun tp!1470368 () Bool)

(assert (=> b!5259819 (= e!3271960 tp!1470368)))

(assert (=> b!5259171 (= tp!1470276 e!3271960)))

(declare-fun b!5259818 () Bool)

(declare-fun tp!1470364 () Bool)

(declare-fun tp!1470366 () Bool)

(assert (=> b!5259818 (= e!3271960 (and tp!1470364 tp!1470366))))

(declare-fun b!5259820 () Bool)

(declare-fun tp!1470365 () Bool)

(declare-fun tp!1470367 () Bool)

(assert (=> b!5259820 (= e!3271960 (and tp!1470365 tp!1470367))))

(assert (= (and b!5259171 (is-ElementMatch!14876 (regOne!30264 (regTwo!30264 r!7292)))) b!5259817))

(assert (= (and b!5259171 (is-Concat!23721 (regOne!30264 (regTwo!30264 r!7292)))) b!5259818))

(assert (= (and b!5259171 (is-Star!14876 (regOne!30264 (regTwo!30264 r!7292)))) b!5259819))

(assert (= (and b!5259171 (is-Union!14876 (regOne!30264 (regTwo!30264 r!7292)))) b!5259820))

(declare-fun b!5259821 () Bool)

(declare-fun e!3271961 () Bool)

(assert (=> b!5259821 (= e!3271961 tp_is_empty!39005)))

(declare-fun b!5259823 () Bool)

(declare-fun tp!1470373 () Bool)

(assert (=> b!5259823 (= e!3271961 tp!1470373)))

(assert (=> b!5259171 (= tp!1470278 e!3271961)))

(declare-fun b!5259822 () Bool)

(declare-fun tp!1470369 () Bool)

(declare-fun tp!1470371 () Bool)

(assert (=> b!5259822 (= e!3271961 (and tp!1470369 tp!1470371))))

(declare-fun b!5259824 () Bool)

(declare-fun tp!1470370 () Bool)

(declare-fun tp!1470372 () Bool)

(assert (=> b!5259824 (= e!3271961 (and tp!1470370 tp!1470372))))

(assert (= (and b!5259171 (is-ElementMatch!14876 (regTwo!30264 (regTwo!30264 r!7292)))) b!5259821))

(assert (= (and b!5259171 (is-Concat!23721 (regTwo!30264 (regTwo!30264 r!7292)))) b!5259822))

(assert (= (and b!5259171 (is-Star!14876 (regTwo!30264 (regTwo!30264 r!7292)))) b!5259823))

(assert (= (and b!5259171 (is-Union!14876 (regTwo!30264 (regTwo!30264 r!7292)))) b!5259824))

(declare-fun b!5259825 () Bool)

(declare-fun e!3271962 () Bool)

(assert (=> b!5259825 (= e!3271962 tp_is_empty!39005)))

(declare-fun b!5259827 () Bool)

(declare-fun tp!1470378 () Bool)

(assert (=> b!5259827 (= e!3271962 tp!1470378)))

(assert (=> b!5259183 (= tp!1470287 e!3271962)))

(declare-fun b!5259826 () Bool)

(declare-fun tp!1470374 () Bool)

(declare-fun tp!1470376 () Bool)

(assert (=> b!5259826 (= e!3271962 (and tp!1470374 tp!1470376))))

(declare-fun b!5259828 () Bool)

(declare-fun tp!1470375 () Bool)

(declare-fun tp!1470377 () Bool)

(assert (=> b!5259828 (= e!3271962 (and tp!1470375 tp!1470377))))

(assert (= (and b!5259183 (is-ElementMatch!14876 (regOne!30264 (reg!15205 r!7292)))) b!5259825))

(assert (= (and b!5259183 (is-Concat!23721 (regOne!30264 (reg!15205 r!7292)))) b!5259826))

(assert (= (and b!5259183 (is-Star!14876 (regOne!30264 (reg!15205 r!7292)))) b!5259827))

(assert (= (and b!5259183 (is-Union!14876 (regOne!30264 (reg!15205 r!7292)))) b!5259828))

(declare-fun b!5259829 () Bool)

(declare-fun e!3271963 () Bool)

(assert (=> b!5259829 (= e!3271963 tp_is_empty!39005)))

(declare-fun b!5259831 () Bool)

(declare-fun tp!1470383 () Bool)

(assert (=> b!5259831 (= e!3271963 tp!1470383)))

(assert (=> b!5259183 (= tp!1470289 e!3271963)))

(declare-fun b!5259830 () Bool)

(declare-fun tp!1470379 () Bool)

(declare-fun tp!1470381 () Bool)

(assert (=> b!5259830 (= e!3271963 (and tp!1470379 tp!1470381))))

(declare-fun b!5259832 () Bool)

(declare-fun tp!1470380 () Bool)

(declare-fun tp!1470382 () Bool)

(assert (=> b!5259832 (= e!3271963 (and tp!1470380 tp!1470382))))

(assert (= (and b!5259183 (is-ElementMatch!14876 (regTwo!30264 (reg!15205 r!7292)))) b!5259829))

(assert (= (and b!5259183 (is-Concat!23721 (regTwo!30264 (reg!15205 r!7292)))) b!5259830))

(assert (= (and b!5259183 (is-Star!14876 (regTwo!30264 (reg!15205 r!7292)))) b!5259831))

(assert (= (and b!5259183 (is-Union!14876 (regTwo!30264 (reg!15205 r!7292)))) b!5259832))

(declare-fun b!5259833 () Bool)

(declare-fun e!3271964 () Bool)

(assert (=> b!5259833 (= e!3271964 tp_is_empty!39005)))

(declare-fun b!5259835 () Bool)

(declare-fun tp!1470388 () Bool)

(assert (=> b!5259835 (= e!3271964 tp!1470388)))

(assert (=> b!5259157 (= tp!1470261 e!3271964)))

(declare-fun b!5259834 () Bool)

(declare-fun tp!1470384 () Bool)

(declare-fun tp!1470386 () Bool)

(assert (=> b!5259834 (= e!3271964 (and tp!1470384 tp!1470386))))

(declare-fun b!5259836 () Bool)

(declare-fun tp!1470385 () Bool)

(declare-fun tp!1470387 () Bool)

(assert (=> b!5259836 (= e!3271964 (and tp!1470385 tp!1470387))))

(assert (= (and b!5259157 (is-ElementMatch!14876 (regOne!30264 (regTwo!30265 r!7292)))) b!5259833))

(assert (= (and b!5259157 (is-Concat!23721 (regOne!30264 (regTwo!30265 r!7292)))) b!5259834))

(assert (= (and b!5259157 (is-Star!14876 (regOne!30264 (regTwo!30265 r!7292)))) b!5259835))

(assert (= (and b!5259157 (is-Union!14876 (regOne!30264 (regTwo!30265 r!7292)))) b!5259836))

(declare-fun b!5259837 () Bool)

(declare-fun e!3271965 () Bool)

(assert (=> b!5259837 (= e!3271965 tp_is_empty!39005)))

(declare-fun b!5259839 () Bool)

(declare-fun tp!1470393 () Bool)

(assert (=> b!5259839 (= e!3271965 tp!1470393)))

(assert (=> b!5259157 (= tp!1470263 e!3271965)))

(declare-fun b!5259838 () Bool)

(declare-fun tp!1470389 () Bool)

(declare-fun tp!1470391 () Bool)

(assert (=> b!5259838 (= e!3271965 (and tp!1470389 tp!1470391))))

(declare-fun b!5259840 () Bool)

(declare-fun tp!1470390 () Bool)

(declare-fun tp!1470392 () Bool)

(assert (=> b!5259840 (= e!3271965 (and tp!1470390 tp!1470392))))

(assert (= (and b!5259157 (is-ElementMatch!14876 (regTwo!30264 (regTwo!30265 r!7292)))) b!5259837))

(assert (= (and b!5259157 (is-Concat!23721 (regTwo!30264 (regTwo!30265 r!7292)))) b!5259838))

(assert (= (and b!5259157 (is-Star!14876 (regTwo!30264 (regTwo!30265 r!7292)))) b!5259839))

(assert (= (and b!5259157 (is-Union!14876 (regTwo!30264 (regTwo!30265 r!7292)))) b!5259840))

(declare-fun b!5259841 () Bool)

(declare-fun e!3271966 () Bool)

(assert (=> b!5259841 (= e!3271966 tp_is_empty!39005)))

(declare-fun b!5259843 () Bool)

(declare-fun tp!1470398 () Bool)

(assert (=> b!5259843 (= e!3271966 tp!1470398)))

(assert (=> b!5259172 (= tp!1470280 e!3271966)))

(declare-fun b!5259842 () Bool)

(declare-fun tp!1470394 () Bool)

(declare-fun tp!1470396 () Bool)

(assert (=> b!5259842 (= e!3271966 (and tp!1470394 tp!1470396))))

(declare-fun b!5259844 () Bool)

(declare-fun tp!1470395 () Bool)

(declare-fun tp!1470397 () Bool)

(assert (=> b!5259844 (= e!3271966 (and tp!1470395 tp!1470397))))

(assert (= (and b!5259172 (is-ElementMatch!14876 (reg!15205 (regTwo!30264 r!7292)))) b!5259841))

(assert (= (and b!5259172 (is-Concat!23721 (reg!15205 (regTwo!30264 r!7292)))) b!5259842))

(assert (= (and b!5259172 (is-Star!14876 (reg!15205 (regTwo!30264 r!7292)))) b!5259843))

(assert (= (and b!5259172 (is-Union!14876 (reg!15205 (regTwo!30264 r!7292)))) b!5259844))

(declare-fun b!5259845 () Bool)

(declare-fun e!3271967 () Bool)

(assert (=> b!5259845 (= e!3271967 tp_is_empty!39005)))

(declare-fun b!5259847 () Bool)

(declare-fun tp!1470403 () Bool)

(assert (=> b!5259847 (= e!3271967 tp!1470403)))

(assert (=> b!5259158 (= tp!1470265 e!3271967)))

(declare-fun b!5259846 () Bool)

(declare-fun tp!1470399 () Bool)

(declare-fun tp!1470401 () Bool)

(assert (=> b!5259846 (= e!3271967 (and tp!1470399 tp!1470401))))

(declare-fun b!5259848 () Bool)

(declare-fun tp!1470400 () Bool)

(declare-fun tp!1470402 () Bool)

(assert (=> b!5259848 (= e!3271967 (and tp!1470400 tp!1470402))))

(assert (= (and b!5259158 (is-ElementMatch!14876 (reg!15205 (regTwo!30265 r!7292)))) b!5259845))

(assert (= (and b!5259158 (is-Concat!23721 (reg!15205 (regTwo!30265 r!7292)))) b!5259846))

(assert (= (and b!5259158 (is-Star!14876 (reg!15205 (regTwo!30265 r!7292)))) b!5259847))

(assert (= (and b!5259158 (is-Union!14876 (reg!15205 (regTwo!30265 r!7292)))) b!5259848))

(declare-fun b!5259849 () Bool)

(declare-fun e!3271968 () Bool)

(assert (=> b!5259849 (= e!3271968 tp_is_empty!39005)))

(declare-fun b!5259851 () Bool)

(declare-fun tp!1470408 () Bool)

(assert (=> b!5259851 (= e!3271968 tp!1470408)))

(assert (=> b!5259173 (= tp!1470277 e!3271968)))

(declare-fun b!5259850 () Bool)

(declare-fun tp!1470404 () Bool)

(declare-fun tp!1470406 () Bool)

(assert (=> b!5259850 (= e!3271968 (and tp!1470404 tp!1470406))))

(declare-fun b!5259852 () Bool)

(declare-fun tp!1470405 () Bool)

(declare-fun tp!1470407 () Bool)

(assert (=> b!5259852 (= e!3271968 (and tp!1470405 tp!1470407))))

(assert (= (and b!5259173 (is-ElementMatch!14876 (regOne!30265 (regTwo!30264 r!7292)))) b!5259849))

(assert (= (and b!5259173 (is-Concat!23721 (regOne!30265 (regTwo!30264 r!7292)))) b!5259850))

(assert (= (and b!5259173 (is-Star!14876 (regOne!30265 (regTwo!30264 r!7292)))) b!5259851))

(assert (= (and b!5259173 (is-Union!14876 (regOne!30265 (regTwo!30264 r!7292)))) b!5259852))

(declare-fun b!5259853 () Bool)

(declare-fun e!3271969 () Bool)

(assert (=> b!5259853 (= e!3271969 tp_is_empty!39005)))

(declare-fun b!5259855 () Bool)

(declare-fun tp!1470413 () Bool)

(assert (=> b!5259855 (= e!3271969 tp!1470413)))

(assert (=> b!5259173 (= tp!1470279 e!3271969)))

(declare-fun b!5259854 () Bool)

(declare-fun tp!1470409 () Bool)

(declare-fun tp!1470411 () Bool)

(assert (=> b!5259854 (= e!3271969 (and tp!1470409 tp!1470411))))

(declare-fun b!5259856 () Bool)

(declare-fun tp!1470410 () Bool)

(declare-fun tp!1470412 () Bool)

(assert (=> b!5259856 (= e!3271969 (and tp!1470410 tp!1470412))))

(assert (= (and b!5259173 (is-ElementMatch!14876 (regTwo!30265 (regTwo!30264 r!7292)))) b!5259853))

(assert (= (and b!5259173 (is-Concat!23721 (regTwo!30265 (regTwo!30264 r!7292)))) b!5259854))

(assert (= (and b!5259173 (is-Star!14876 (regTwo!30265 (regTwo!30264 r!7292)))) b!5259855))

(assert (= (and b!5259173 (is-Union!14876 (regTwo!30265 (regTwo!30264 r!7292)))) b!5259856))

(declare-fun b!5259857 () Bool)

(declare-fun e!3271970 () Bool)

(assert (=> b!5259857 (= e!3271970 tp_is_empty!39005)))

(declare-fun b!5259859 () Bool)

(declare-fun tp!1470418 () Bool)

(assert (=> b!5259859 (= e!3271970 tp!1470418)))

(assert (=> b!5259136 (= tp!1470238 e!3271970)))

(declare-fun b!5259858 () Bool)

(declare-fun tp!1470414 () Bool)

(declare-fun tp!1470416 () Bool)

(assert (=> b!5259858 (= e!3271970 (and tp!1470414 tp!1470416))))

(declare-fun b!5259860 () Bool)

(declare-fun tp!1470415 () Bool)

(declare-fun tp!1470417 () Bool)

(assert (=> b!5259860 (= e!3271970 (and tp!1470415 tp!1470417))))

(assert (= (and b!5259136 (is-ElementMatch!14876 (h!67252 (exprs!4760 (h!67253 zl!343))))) b!5259857))

(assert (= (and b!5259136 (is-Concat!23721 (h!67252 (exprs!4760 (h!67253 zl!343))))) b!5259858))

(assert (= (and b!5259136 (is-Star!14876 (h!67252 (exprs!4760 (h!67253 zl!343))))) b!5259859))

(assert (= (and b!5259136 (is-Union!14876 (h!67252 (exprs!4760 (h!67253 zl!343))))) b!5259860))

(declare-fun b!5259861 () Bool)

(declare-fun e!3271971 () Bool)

(declare-fun tp!1470419 () Bool)

(declare-fun tp!1470420 () Bool)

(assert (=> b!5259861 (= e!3271971 (and tp!1470419 tp!1470420))))

(assert (=> b!5259136 (= tp!1470239 e!3271971)))

(assert (= (and b!5259136 (is-Cons!60804 (t!374111 (exprs!4760 (h!67253 zl!343))))) b!5259861))

(declare-fun b!5259862 () Bool)

(declare-fun e!3271972 () Bool)

(assert (=> b!5259862 (= e!3271972 tp_is_empty!39005)))

(declare-fun b!5259864 () Bool)

(declare-fun tp!1470425 () Bool)

(assert (=> b!5259864 (= e!3271972 tp!1470425)))

(assert (=> b!5259184 (= tp!1470291 e!3271972)))

(declare-fun b!5259863 () Bool)

(declare-fun tp!1470421 () Bool)

(declare-fun tp!1470423 () Bool)

(assert (=> b!5259863 (= e!3271972 (and tp!1470421 tp!1470423))))

(declare-fun b!5259865 () Bool)

(declare-fun tp!1470422 () Bool)

(declare-fun tp!1470424 () Bool)

(assert (=> b!5259865 (= e!3271972 (and tp!1470422 tp!1470424))))

(assert (= (and b!5259184 (is-ElementMatch!14876 (reg!15205 (reg!15205 r!7292)))) b!5259862))

(assert (= (and b!5259184 (is-Concat!23721 (reg!15205 (reg!15205 r!7292)))) b!5259863))

(assert (= (and b!5259184 (is-Star!14876 (reg!15205 (reg!15205 r!7292)))) b!5259864))

(assert (= (and b!5259184 (is-Union!14876 (reg!15205 (reg!15205 r!7292)))) b!5259865))

(declare-fun b!5259866 () Bool)

(declare-fun e!3271973 () Bool)

(assert (=> b!5259866 (= e!3271973 tp_is_empty!39005)))

(declare-fun b!5259868 () Bool)

(declare-fun tp!1470430 () Bool)

(assert (=> b!5259868 (= e!3271973 tp!1470430)))

(assert (=> b!5259185 (= tp!1470288 e!3271973)))

(declare-fun b!5259867 () Bool)

(declare-fun tp!1470426 () Bool)

(declare-fun tp!1470428 () Bool)

(assert (=> b!5259867 (= e!3271973 (and tp!1470426 tp!1470428))))

(declare-fun b!5259869 () Bool)

(declare-fun tp!1470427 () Bool)

(declare-fun tp!1470429 () Bool)

(assert (=> b!5259869 (= e!3271973 (and tp!1470427 tp!1470429))))

(assert (= (and b!5259185 (is-ElementMatch!14876 (regOne!30265 (reg!15205 r!7292)))) b!5259866))

(assert (= (and b!5259185 (is-Concat!23721 (regOne!30265 (reg!15205 r!7292)))) b!5259867))

(assert (= (and b!5259185 (is-Star!14876 (regOne!30265 (reg!15205 r!7292)))) b!5259868))

(assert (= (and b!5259185 (is-Union!14876 (regOne!30265 (reg!15205 r!7292)))) b!5259869))

(declare-fun b!5259870 () Bool)

(declare-fun e!3271974 () Bool)

(assert (=> b!5259870 (= e!3271974 tp_is_empty!39005)))

(declare-fun b!5259872 () Bool)

(declare-fun tp!1470435 () Bool)

(assert (=> b!5259872 (= e!3271974 tp!1470435)))

(assert (=> b!5259185 (= tp!1470290 e!3271974)))

(declare-fun b!5259871 () Bool)

(declare-fun tp!1470431 () Bool)

(declare-fun tp!1470433 () Bool)

(assert (=> b!5259871 (= e!3271974 (and tp!1470431 tp!1470433))))

(declare-fun b!5259873 () Bool)

(declare-fun tp!1470432 () Bool)

(declare-fun tp!1470434 () Bool)

(assert (=> b!5259873 (= e!3271974 (and tp!1470432 tp!1470434))))

(assert (= (and b!5259185 (is-ElementMatch!14876 (regTwo!30265 (reg!15205 r!7292)))) b!5259870))

(assert (= (and b!5259185 (is-Concat!23721 (regTwo!30265 (reg!15205 r!7292)))) b!5259871))

(assert (= (and b!5259185 (is-Star!14876 (regTwo!30265 (reg!15205 r!7292)))) b!5259872))

(assert (= (and b!5259185 (is-Union!14876 (regTwo!30265 (reg!15205 r!7292)))) b!5259873))

(declare-fun b!5259874 () Bool)

(declare-fun e!3271975 () Bool)

(declare-fun tp!1470436 () Bool)

(assert (=> b!5259874 (= e!3271975 (and tp_is_empty!39005 tp!1470436))))

(assert (=> b!5259165 (= tp!1470270 e!3271975)))

(assert (= (and b!5259165 (is-Cons!60803 (t!374110 (t!374110 s!2326)))) b!5259874))

(declare-fun b!5259876 () Bool)

(declare-fun e!3271977 () Bool)

(declare-fun tp!1470437 () Bool)

(assert (=> b!5259876 (= e!3271977 tp!1470437)))

(declare-fun b!5259875 () Bool)

(declare-fun e!3271976 () Bool)

(declare-fun tp!1470438 () Bool)

(assert (=> b!5259875 (= e!3271976 (and (inv!80438 (h!67253 (t!374112 (t!374112 zl!343)))) e!3271977 tp!1470438))))

(assert (=> b!5259180 (= tp!1470286 e!3271976)))

(assert (= b!5259875 b!5259876))

(assert (= (and b!5259180 (is-Cons!60805 (t!374112 (t!374112 zl!343)))) b!5259875))

(declare-fun m!6301790 () Bool)

(assert (=> b!5259875 m!6301790))

(declare-fun b!5259877 () Bool)

(declare-fun e!3271978 () Bool)

(assert (=> b!5259877 (= e!3271978 tp_is_empty!39005)))

(declare-fun b!5259879 () Bool)

(declare-fun tp!1470443 () Bool)

(assert (=> b!5259879 (= e!3271978 tp!1470443)))

(assert (=> b!5259159 (= tp!1470262 e!3271978)))

(declare-fun b!5259878 () Bool)

(declare-fun tp!1470439 () Bool)

(declare-fun tp!1470441 () Bool)

(assert (=> b!5259878 (= e!3271978 (and tp!1470439 tp!1470441))))

(declare-fun b!5259880 () Bool)

(declare-fun tp!1470440 () Bool)

(declare-fun tp!1470442 () Bool)

(assert (=> b!5259880 (= e!3271978 (and tp!1470440 tp!1470442))))

(assert (= (and b!5259159 (is-ElementMatch!14876 (regOne!30265 (regTwo!30265 r!7292)))) b!5259877))

(assert (= (and b!5259159 (is-Concat!23721 (regOne!30265 (regTwo!30265 r!7292)))) b!5259878))

(assert (= (and b!5259159 (is-Star!14876 (regOne!30265 (regTwo!30265 r!7292)))) b!5259879))

(assert (= (and b!5259159 (is-Union!14876 (regOne!30265 (regTwo!30265 r!7292)))) b!5259880))

(declare-fun b!5259881 () Bool)

(declare-fun e!3271979 () Bool)

(assert (=> b!5259881 (= e!3271979 tp_is_empty!39005)))

(declare-fun b!5259883 () Bool)

(declare-fun tp!1470448 () Bool)

(assert (=> b!5259883 (= e!3271979 tp!1470448)))

(assert (=> b!5259159 (= tp!1470264 e!3271979)))

(declare-fun b!5259882 () Bool)

(declare-fun tp!1470444 () Bool)

(declare-fun tp!1470446 () Bool)

(assert (=> b!5259882 (= e!3271979 (and tp!1470444 tp!1470446))))

(declare-fun b!5259884 () Bool)

(declare-fun tp!1470445 () Bool)

(declare-fun tp!1470447 () Bool)

(assert (=> b!5259884 (= e!3271979 (and tp!1470445 tp!1470447))))

(assert (= (and b!5259159 (is-ElementMatch!14876 (regTwo!30265 (regTwo!30265 r!7292)))) b!5259881))

(assert (= (and b!5259159 (is-Concat!23721 (regTwo!30265 (regTwo!30265 r!7292)))) b!5259882))

(assert (= (and b!5259159 (is-Star!14876 (regTwo!30265 (regTwo!30265 r!7292)))) b!5259883))

(assert (= (and b!5259159 (is-Union!14876 (regTwo!30265 (regTwo!30265 r!7292)))) b!5259884))

(declare-fun b!5259885 () Bool)

(declare-fun e!3271980 () Bool)

(declare-fun tp!1470449 () Bool)

(declare-fun tp!1470450 () Bool)

(assert (=> b!5259885 (= e!3271980 (and tp!1470449 tp!1470450))))

(assert (=> b!5259181 (= tp!1470285 e!3271980)))

(assert (= (and b!5259181 (is-Cons!60804 (exprs!4760 (h!67253 (t!374112 zl!343))))) b!5259885))

(declare-fun b!5259886 () Bool)

(declare-fun e!3271981 () Bool)

(assert (=> b!5259886 (= e!3271981 tp_is_empty!39005)))

(declare-fun b!5259888 () Bool)

(declare-fun tp!1470455 () Bool)

(assert (=> b!5259888 (= e!3271981 tp!1470455)))

(assert (=> b!5259160 (= tp!1470266 e!3271981)))

(declare-fun b!5259887 () Bool)

(declare-fun tp!1470451 () Bool)

(declare-fun tp!1470453 () Bool)

(assert (=> b!5259887 (= e!3271981 (and tp!1470451 tp!1470453))))

(declare-fun b!5259889 () Bool)

(declare-fun tp!1470452 () Bool)

(declare-fun tp!1470454 () Bool)

(assert (=> b!5259889 (= e!3271981 (and tp!1470452 tp!1470454))))

(assert (= (and b!5259160 (is-ElementMatch!14876 (h!67252 (exprs!4760 setElem!33608)))) b!5259886))

(assert (= (and b!5259160 (is-Concat!23721 (h!67252 (exprs!4760 setElem!33608)))) b!5259887))

(assert (= (and b!5259160 (is-Star!14876 (h!67252 (exprs!4760 setElem!33608)))) b!5259888))

(assert (= (and b!5259160 (is-Union!14876 (h!67252 (exprs!4760 setElem!33608)))) b!5259889))

(declare-fun b!5259890 () Bool)

(declare-fun e!3271982 () Bool)

(declare-fun tp!1470456 () Bool)

(declare-fun tp!1470457 () Bool)

(assert (=> b!5259890 (= e!3271982 (and tp!1470456 tp!1470457))))

(assert (=> b!5259160 (= tp!1470267 e!3271982)))

(assert (= (and b!5259160 (is-Cons!60804 (t!374111 (exprs!4760 setElem!33608)))) b!5259890))

(declare-fun b!5259891 () Bool)

(declare-fun e!3271983 () Bool)

(assert (=> b!5259891 (= e!3271983 tp_is_empty!39005)))

(declare-fun b!5259893 () Bool)

(declare-fun tp!1470462 () Bool)

(assert (=> b!5259893 (= e!3271983 tp!1470462)))

(assert (=> b!5259168 (= tp!1470275 e!3271983)))

(declare-fun b!5259892 () Bool)

(declare-fun tp!1470458 () Bool)

(declare-fun tp!1470460 () Bool)

(assert (=> b!5259892 (= e!3271983 (and tp!1470458 tp!1470460))))

(declare-fun b!5259894 () Bool)

(declare-fun tp!1470459 () Bool)

(declare-fun tp!1470461 () Bool)

(assert (=> b!5259894 (= e!3271983 (and tp!1470459 tp!1470461))))

(assert (= (and b!5259168 (is-ElementMatch!14876 (reg!15205 (regOne!30264 r!7292)))) b!5259891))

(assert (= (and b!5259168 (is-Concat!23721 (reg!15205 (regOne!30264 r!7292)))) b!5259892))

(assert (= (and b!5259168 (is-Star!14876 (reg!15205 (regOne!30264 r!7292)))) b!5259893))

(assert (= (and b!5259168 (is-Union!14876 (reg!15205 (regOne!30264 r!7292)))) b!5259894))

(declare-fun b!5259895 () Bool)

(declare-fun e!3271984 () Bool)

(assert (=> b!5259895 (= e!3271984 tp_is_empty!39005)))

(declare-fun b!5259897 () Bool)

(declare-fun tp!1470467 () Bool)

(assert (=> b!5259897 (= e!3271984 tp!1470467)))

(assert (=> b!5259167 (= tp!1470271 e!3271984)))

(declare-fun b!5259896 () Bool)

(declare-fun tp!1470463 () Bool)

(declare-fun tp!1470465 () Bool)

(assert (=> b!5259896 (= e!3271984 (and tp!1470463 tp!1470465))))

(declare-fun b!5259898 () Bool)

(declare-fun tp!1470464 () Bool)

(declare-fun tp!1470466 () Bool)

(assert (=> b!5259898 (= e!3271984 (and tp!1470464 tp!1470466))))

(assert (= (and b!5259167 (is-ElementMatch!14876 (regOne!30264 (regOne!30264 r!7292)))) b!5259895))

(assert (= (and b!5259167 (is-Concat!23721 (regOne!30264 (regOne!30264 r!7292)))) b!5259896))

(assert (= (and b!5259167 (is-Star!14876 (regOne!30264 (regOne!30264 r!7292)))) b!5259897))

(assert (= (and b!5259167 (is-Union!14876 (regOne!30264 (regOne!30264 r!7292)))) b!5259898))

(declare-fun b!5259899 () Bool)

(declare-fun e!3271985 () Bool)

(assert (=> b!5259899 (= e!3271985 tp_is_empty!39005)))

(declare-fun b!5259901 () Bool)

(declare-fun tp!1470472 () Bool)

(assert (=> b!5259901 (= e!3271985 tp!1470472)))

(assert (=> b!5259167 (= tp!1470273 e!3271985)))

(declare-fun b!5259900 () Bool)

(declare-fun tp!1470468 () Bool)

(declare-fun tp!1470470 () Bool)

(assert (=> b!5259900 (= e!3271985 (and tp!1470468 tp!1470470))))

(declare-fun b!5259902 () Bool)

(declare-fun tp!1470469 () Bool)

(declare-fun tp!1470471 () Bool)

(assert (=> b!5259902 (= e!3271985 (and tp!1470469 tp!1470471))))

(assert (= (and b!5259167 (is-ElementMatch!14876 (regTwo!30264 (regOne!30264 r!7292)))) b!5259899))

(assert (= (and b!5259167 (is-Concat!23721 (regTwo!30264 (regOne!30264 r!7292)))) b!5259900))

(assert (= (and b!5259167 (is-Star!14876 (regTwo!30264 (regOne!30264 r!7292)))) b!5259901))

(assert (= (and b!5259167 (is-Union!14876 (regTwo!30264 (regOne!30264 r!7292)))) b!5259902))

(declare-fun b!5259903 () Bool)

(declare-fun e!3271986 () Bool)

(assert (=> b!5259903 (= e!3271986 tp_is_empty!39005)))

(declare-fun b!5259905 () Bool)

(declare-fun tp!1470477 () Bool)

(assert (=> b!5259905 (= e!3271986 tp!1470477)))

(assert (=> b!5259169 (= tp!1470272 e!3271986)))

(declare-fun b!5259904 () Bool)

(declare-fun tp!1470473 () Bool)

(declare-fun tp!1470475 () Bool)

(assert (=> b!5259904 (= e!3271986 (and tp!1470473 tp!1470475))))

(declare-fun b!5259906 () Bool)

(declare-fun tp!1470474 () Bool)

(declare-fun tp!1470476 () Bool)

(assert (=> b!5259906 (= e!3271986 (and tp!1470474 tp!1470476))))

(assert (= (and b!5259169 (is-ElementMatch!14876 (regOne!30265 (regOne!30264 r!7292)))) b!5259903))

(assert (= (and b!5259169 (is-Concat!23721 (regOne!30265 (regOne!30264 r!7292)))) b!5259904))

(assert (= (and b!5259169 (is-Star!14876 (regOne!30265 (regOne!30264 r!7292)))) b!5259905))

(assert (= (and b!5259169 (is-Union!14876 (regOne!30265 (regOne!30264 r!7292)))) b!5259906))

(declare-fun b!5259907 () Bool)

(declare-fun e!3271987 () Bool)

(assert (=> b!5259907 (= e!3271987 tp_is_empty!39005)))

(declare-fun b!5259909 () Bool)

(declare-fun tp!1470482 () Bool)

(assert (=> b!5259909 (= e!3271987 tp!1470482)))

(assert (=> b!5259169 (= tp!1470274 e!3271987)))

(declare-fun b!5259908 () Bool)

(declare-fun tp!1470478 () Bool)

(declare-fun tp!1470480 () Bool)

(assert (=> b!5259908 (= e!3271987 (and tp!1470478 tp!1470480))))

(declare-fun b!5259910 () Bool)

(declare-fun tp!1470479 () Bool)

(declare-fun tp!1470481 () Bool)

(assert (=> b!5259910 (= e!3271987 (and tp!1470479 tp!1470481))))

(assert (= (and b!5259169 (is-ElementMatch!14876 (regTwo!30265 (regOne!30264 r!7292)))) b!5259907))

(assert (= (and b!5259169 (is-Concat!23721 (regTwo!30265 (regOne!30264 r!7292)))) b!5259908))

(assert (= (and b!5259169 (is-Star!14876 (regTwo!30265 (regOne!30264 r!7292)))) b!5259909))

(assert (= (and b!5259169 (is-Union!14876 (regTwo!30265 (regOne!30264 r!7292)))) b!5259910))

(declare-fun b!5259911 () Bool)

(declare-fun e!3271988 () Bool)

(assert (=> b!5259911 (= e!3271988 tp_is_empty!39005)))

(declare-fun b!5259913 () Bool)

(declare-fun tp!1470487 () Bool)

(assert (=> b!5259913 (= e!3271988 tp!1470487)))

(assert (=> b!5259153 (= tp!1470256 e!3271988)))

(declare-fun b!5259912 () Bool)

(declare-fun tp!1470483 () Bool)

(declare-fun tp!1470485 () Bool)

(assert (=> b!5259912 (= e!3271988 (and tp!1470483 tp!1470485))))

(declare-fun b!5259914 () Bool)

(declare-fun tp!1470484 () Bool)

(declare-fun tp!1470486 () Bool)

(assert (=> b!5259914 (= e!3271988 (and tp!1470484 tp!1470486))))

(assert (= (and b!5259153 (is-ElementMatch!14876 (regOne!30264 (regOne!30265 r!7292)))) b!5259911))

(assert (= (and b!5259153 (is-Concat!23721 (regOne!30264 (regOne!30265 r!7292)))) b!5259912))

(assert (= (and b!5259153 (is-Star!14876 (regOne!30264 (regOne!30265 r!7292)))) b!5259913))

(assert (= (and b!5259153 (is-Union!14876 (regOne!30264 (regOne!30265 r!7292)))) b!5259914))

(declare-fun b!5259915 () Bool)

(declare-fun e!3271989 () Bool)

(assert (=> b!5259915 (= e!3271989 tp_is_empty!39005)))

(declare-fun b!5259917 () Bool)

(declare-fun tp!1470492 () Bool)

(assert (=> b!5259917 (= e!3271989 tp!1470492)))

(assert (=> b!5259153 (= tp!1470258 e!3271989)))

(declare-fun b!5259916 () Bool)

(declare-fun tp!1470488 () Bool)

(declare-fun tp!1470490 () Bool)

(assert (=> b!5259916 (= e!3271989 (and tp!1470488 tp!1470490))))

(declare-fun b!5259918 () Bool)

(declare-fun tp!1470489 () Bool)

(declare-fun tp!1470491 () Bool)

(assert (=> b!5259918 (= e!3271989 (and tp!1470489 tp!1470491))))

(assert (= (and b!5259153 (is-ElementMatch!14876 (regTwo!30264 (regOne!30265 r!7292)))) b!5259915))

(assert (= (and b!5259153 (is-Concat!23721 (regTwo!30264 (regOne!30265 r!7292)))) b!5259916))

(assert (= (and b!5259153 (is-Star!14876 (regTwo!30264 (regOne!30265 r!7292)))) b!5259917))

(assert (= (and b!5259153 (is-Union!14876 (regTwo!30264 (regOne!30265 r!7292)))) b!5259918))

(declare-fun b!5259919 () Bool)

(declare-fun e!3271990 () Bool)

(assert (=> b!5259919 (= e!3271990 tp_is_empty!39005)))

(declare-fun b!5259921 () Bool)

(declare-fun tp!1470497 () Bool)

(assert (=> b!5259921 (= e!3271990 tp!1470497)))

(assert (=> b!5259155 (= tp!1470257 e!3271990)))

(declare-fun b!5259920 () Bool)

(declare-fun tp!1470493 () Bool)

(declare-fun tp!1470495 () Bool)

(assert (=> b!5259920 (= e!3271990 (and tp!1470493 tp!1470495))))

(declare-fun b!5259922 () Bool)

(declare-fun tp!1470494 () Bool)

(declare-fun tp!1470496 () Bool)

(assert (=> b!5259922 (= e!3271990 (and tp!1470494 tp!1470496))))

(assert (= (and b!5259155 (is-ElementMatch!14876 (regOne!30265 (regOne!30265 r!7292)))) b!5259919))

(assert (= (and b!5259155 (is-Concat!23721 (regOne!30265 (regOne!30265 r!7292)))) b!5259920))

(assert (= (and b!5259155 (is-Star!14876 (regOne!30265 (regOne!30265 r!7292)))) b!5259921))

(assert (= (and b!5259155 (is-Union!14876 (regOne!30265 (regOne!30265 r!7292)))) b!5259922))

(declare-fun b!5259923 () Bool)

(declare-fun e!3271991 () Bool)

(assert (=> b!5259923 (= e!3271991 tp_is_empty!39005)))

(declare-fun b!5259925 () Bool)

(declare-fun tp!1470502 () Bool)

(assert (=> b!5259925 (= e!3271991 tp!1470502)))

(assert (=> b!5259155 (= tp!1470259 e!3271991)))

(declare-fun b!5259924 () Bool)

(declare-fun tp!1470498 () Bool)

(declare-fun tp!1470500 () Bool)

(assert (=> b!5259924 (= e!3271991 (and tp!1470498 tp!1470500))))

(declare-fun b!5259926 () Bool)

(declare-fun tp!1470499 () Bool)

(declare-fun tp!1470501 () Bool)

(assert (=> b!5259926 (= e!3271991 (and tp!1470499 tp!1470501))))

(assert (= (and b!5259155 (is-ElementMatch!14876 (regTwo!30265 (regOne!30265 r!7292)))) b!5259923))

(assert (= (and b!5259155 (is-Concat!23721 (regTwo!30265 (regOne!30265 r!7292)))) b!5259924))

(assert (= (and b!5259155 (is-Star!14876 (regTwo!30265 (regOne!30265 r!7292)))) b!5259925))

(assert (= (and b!5259155 (is-Union!14876 (regTwo!30265 (regOne!30265 r!7292)))) b!5259926))

(declare-fun b!5259927 () Bool)

(declare-fun e!3271992 () Bool)

(assert (=> b!5259927 (= e!3271992 tp_is_empty!39005)))

(declare-fun b!5259929 () Bool)

(declare-fun tp!1470507 () Bool)

(assert (=> b!5259929 (= e!3271992 tp!1470507)))

(assert (=> b!5259154 (= tp!1470260 e!3271992)))

(declare-fun b!5259928 () Bool)

(declare-fun tp!1470503 () Bool)

(declare-fun tp!1470505 () Bool)

(assert (=> b!5259928 (= e!3271992 (and tp!1470503 tp!1470505))))

(declare-fun b!5259930 () Bool)

(declare-fun tp!1470504 () Bool)

(declare-fun tp!1470506 () Bool)

(assert (=> b!5259930 (= e!3271992 (and tp!1470504 tp!1470506))))

(assert (= (and b!5259154 (is-ElementMatch!14876 (reg!15205 (regOne!30265 r!7292)))) b!5259927))

(assert (= (and b!5259154 (is-Concat!23721 (reg!15205 (regOne!30265 r!7292)))) b!5259928))

(assert (= (and b!5259154 (is-Star!14876 (reg!15205 (regOne!30265 r!7292)))) b!5259929))

(assert (= (and b!5259154 (is-Union!14876 (reg!15205 (regOne!30265 r!7292)))) b!5259930))

(declare-fun condSetEmpty!33621 () Bool)

(assert (=> setNonEmpty!33614 (= condSetEmpty!33621 (= setRest!33614 (as set.empty (Set Context!8520))))))

(declare-fun setRes!33621 () Bool)

(assert (=> setNonEmpty!33614 (= tp!1470245 setRes!33621)))

(declare-fun setIsEmpty!33621 () Bool)

(assert (=> setIsEmpty!33621 setRes!33621))

(declare-fun e!3271993 () Bool)

(declare-fun tp!1470509 () Bool)

(declare-fun setNonEmpty!33621 () Bool)

(declare-fun setElem!33621 () Context!8520)

(assert (=> setNonEmpty!33621 (= setRes!33621 (and tp!1470509 (inv!80438 setElem!33621) e!3271993))))

(declare-fun setRest!33621 () (Set Context!8520))

(assert (=> setNonEmpty!33621 (= setRest!33614 (set.union (set.insert setElem!33621 (as set.empty (Set Context!8520))) setRest!33621))))

(declare-fun b!5259931 () Bool)

(declare-fun tp!1470508 () Bool)

(assert (=> b!5259931 (= e!3271993 tp!1470508)))

(assert (= (and setNonEmpty!33614 condSetEmpty!33621) setIsEmpty!33621))

(assert (= (and setNonEmpty!33614 (not condSetEmpty!33621)) setNonEmpty!33621))

(assert (= setNonEmpty!33621 b!5259931))

(declare-fun m!6301792 () Bool)

(assert (=> setNonEmpty!33621 m!6301792))

(declare-fun b_lambda!202969 () Bool)

(assert (= b_lambda!202959 (or d!1692894 b_lambda!202969)))

(declare-fun bs!1219566 () Bool)

(declare-fun d!1693132 () Bool)

(assert (= bs!1219566 (and d!1693132 d!1692894)))

(assert (=> bs!1219566 (= (dynLambda!24024 lambda!265108 (h!67252 lt!2155183)) (validRegex!6612 (h!67252 lt!2155183)))))

(declare-fun m!6301794 () Bool)

(assert (=> bs!1219566 m!6301794))

(assert (=> b!5259549 d!1693132))

(declare-fun b_lambda!202971 () Bool)

(assert (= b_lambda!202957 (or b!5258595 b_lambda!202971)))

(assert (=> d!1692978 d!1692898))

(declare-fun b_lambda!202973 () Bool)

(assert (= b_lambda!202967 (or d!1692892 b_lambda!202973)))

(declare-fun bs!1219567 () Bool)

(declare-fun d!1693134 () Bool)

(assert (= bs!1219567 (and d!1693134 d!1692892)))

(assert (=> bs!1219567 (= (dynLambda!24024 lambda!265105 (h!67252 (unfocusZipperList!318 zl!343))) (validRegex!6612 (h!67252 (unfocusZipperList!318 zl!343))))))

(declare-fun m!6301796 () Bool)

(assert (=> bs!1219567 m!6301796))

(assert (=> b!5259742 d!1693134))

(declare-fun b_lambda!202975 () Bool)

(assert (= b_lambda!202965 (or d!1692824 b_lambda!202975)))

(declare-fun bs!1219568 () Bool)

(declare-fun d!1693136 () Bool)

(assert (= bs!1219568 (and d!1693136 d!1692824)))

(assert (=> bs!1219568 (= (dynLambda!24024 lambda!265080 (h!67252 (exprs!4760 setElem!33608))) (validRegex!6612 (h!67252 (exprs!4760 setElem!33608))))))

(declare-fun m!6301798 () Bool)

(assert (=> bs!1219568 m!6301798))

(assert (=> b!5259697 d!1693136))

(declare-fun b_lambda!202977 () Bool)

(assert (= b_lambda!202961 (or d!1692820 b_lambda!202977)))

(declare-fun bs!1219569 () Bool)

(declare-fun d!1693138 () Bool)

(assert (= bs!1219569 (and d!1693138 d!1692820)))

(assert (=> bs!1219569 (= (dynLambda!24024 lambda!265079 (h!67252 (exprs!4760 (h!67253 zl!343)))) (validRegex!6612 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(declare-fun m!6301800 () Bool)

(assert (=> bs!1219569 m!6301800))

(assert (=> b!5259553 d!1693138))

(declare-fun b_lambda!202979 () Bool)

(assert (= b_lambda!202963 (or d!1692812 b_lambda!202979)))

(declare-fun bs!1219570 () Bool)

(declare-fun d!1693140 () Bool)

(assert (= bs!1219570 (and d!1693140 d!1692812)))

(assert (=> bs!1219570 (= (dynLambda!24024 lambda!265076 (h!67252 (exprs!4760 (h!67253 zl!343)))) (validRegex!6612 (h!67252 (exprs!4760 (h!67253 zl!343)))))))

(assert (=> bs!1219570 m!6301800))

(assert (=> b!5259571 d!1693140))

(push 1)

(assert (not b!5259667))

(assert (not b!5259591))

(assert (not bm!372846))

(assert (not d!1692952))

(assert (not b!5259820))

(assert (not b!5259680))

(assert (not b!5259868))

(assert (not b!5259670))

(assert (not d!1693120))

(assert (not b!5259850))

(assert (not bm!372876))

(assert (not b!5259725))

(assert (not b!5259550))

(assert (not b!5259757))

(assert (not b!5259879))

(assert (not b!5259908))

(assert (not d!1693058))

(assert (not b_lambda!202973))

(assert (not bm!372842))

(assert (not b!5259604))

(assert (not b!5259590))

(assert (not d!1693122))

(assert (not b!5259897))

(assert (not d!1693066))

(assert (not b!5259860))

(assert (not bm!372819))

(assert (not b!5259928))

(assert (not b!5259900))

(assert (not d!1693080))

(assert (not bm!372817))

(assert (not b!5259627))

(assert (not bs!1219567))

(assert (not d!1693048))

(assert (not b!5259823))

(assert (not d!1692944))

(assert (not b!5259651))

(assert (not b!5259861))

(assert (not b!5259753))

(assert (not d!1693056))

(assert (not b!5259888))

(assert (not b!5259883))

(assert (not b!5259926))

(assert (not bm!372811))

(assert (not b!5259721))

(assert (not b!5259497))

(assert (not b!5259887))

(assert (not bs!1219570))

(assert (not b!5259703))

(assert (not b!5259450))

(assert (not bm!372871))

(assert (not d!1692948))

(assert (not b!5259743))

(assert (not bm!372860))

(assert (not d!1693096))

(assert (not b!5259733))

(assert (not d!1693052))

(assert (not bm!372839))

(assert (not b!5259874))

(assert (not b!5259801))

(assert (not b!5259878))

(assert (not bm!372891))

(assert (not b!5259894))

(assert (not b!5259468))

(assert (not b!5259839))

(assert (not b!5259847))

(assert (not d!1693128))

(assert (not b!5259831))

(assert (not b!5259930))

(assert (not bm!372824))

(assert (not b!5259708))

(assert (not d!1693118))

(assert (not b!5259754))

(assert (not d!1692942))

(assert (not b!5259840))

(assert (not bm!372818))

(assert (not d!1693034))

(assert (not d!1693070))

(assert (not d!1692988))

(assert (not d!1693050))

(assert (not b!5259622))

(assert (not b!5259858))

(assert (not b!5259613))

(assert (not b!5259461))

(assert (not b!5259917))

(assert (not bm!372857))

(assert (not bm!372865))

(assert (not bm!372877))

(assert (not b!5259480))

(assert (not d!1692994))

(assert (not b!5259626))

(assert (not b!5259867))

(assert (not b!5259593))

(assert (not b!5259809))

(assert (not b!5259827))

(assert (not b!5259584))

(assert (not b!5259882))

(assert (not b!5259925))

(assert (not b!5259655))

(assert (not b!5259893))

(assert (not b!5259441))

(assert (not b!5259428))

(assert (not b!5259832))

(assert (not bm!372862))

(assert (not b!5259865))

(assert (not b!5259805))

(assert (not b!5259598))

(assert (not b!5259830))

(assert (not d!1693102))

(assert (not d!1692996))

(assert (not b!5259542))

(assert (not b!5259889))

(assert (not b!5259822))

(assert (not b!5259872))

(assert (not bm!372841))

(assert (not d!1693012))

(assert (not b!5259863))

(assert (not bm!372869))

(assert (not b!5259653))

(assert (not b!5259729))

(assert (not setNonEmpty!33621))

(assert (not b!5259871))

(assert (not b!5259880))

(assert (not b!5259884))

(assert (not d!1692990))

(assert (not b!5259902))

(assert (not b!5259807))

(assert (not b!5259912))

(assert (not b!5259477))

(assert (not b!5259904))

(assert (not b_lambda!202953))

(assert (not b!5259826))

(assert (not b_lambda!202979))

(assert (not d!1692982))

(assert (not b!5259808))

(assert (not b!5259716))

(assert (not d!1693060))

(assert (not b!5259422))

(assert (not b!5259844))

(assert (not b!5259931))

(assert (not b!5259929))

(assert (not b!5259421))

(assert (not b_lambda!202969))

(assert (not b!5259702))

(assert (not bs!1219569))

(assert (not bm!372813))

(assert (not b!5259467))

(assert (not b_lambda!202977))

(assert (not b!5259764))

(assert (not bm!372882))

(assert (not b!5259562))

(assert (not b!5259913))

(assert (not b!5259836))

(assert (not b!5259476))

(assert (not bm!372852))

(assert (not b!5259588))

(assert (not bm!372894))

(assert (not b!5259810))

(assert (not b!5259554))

(assert (not b!5259620))

(assert (not bm!372843))

(assert (not b!5259618))

(assert (not d!1692950))

(assert (not b!5259730))

(assert (not b!5259621))

(assert (not b!5259842))

(assert (not b!5259572))

(assert (not b!5259834))

(assert (not b!5259766))

(assert (not d!1692978))

(assert (not d!1693076))

(assert (not bm!372820))

(assert (not b!5259728))

(assert (not b!5259835))

(assert (not bm!372879))

(assert (not d!1693100))

(assert (not bm!372835))

(assert (not b!5259856))

(assert (not b!5259592))

(assert (not b!5259873))

(assert (not b!5259924))

(assert (not b!5259846))

(assert (not b!5259819))

(assert (not b_lambda!202971))

(assert (not b!5259469))

(assert (not b!5259689))

(assert (not b!5259485))

(assert (not b!5259869))

(assert (not b!5259429))

(assert (not b!5259909))

(assert (not bm!372814))

(assert tp_is_empty!39005)

(assert (not b!5259632))

(assert (not bs!1219568))

(assert (not bm!372827))

(assert (not bm!372837))

(assert (not b!5259922))

(assert (not b!5259470))

(assert (not bm!372854))

(assert (not d!1693108))

(assert (not d!1693032))

(assert (not b!5259431))

(assert (not b!5259437))

(assert (not b!5259765))

(assert (not bm!372880))

(assert (not bm!372867))

(assert (not b!5259854))

(assert (not b!5259890))

(assert (not bm!372856))

(assert (not d!1692946))

(assert (not bs!1219566))

(assert (not bm!372847))

(assert (not b!5259649))

(assert (not b!5259838))

(assert (not b!5259430))

(assert (not b!5259727))

(assert (not b!5259905))

(assert (not b!5259426))

(assert (not b!5259709))

(assert (not b!5259851))

(assert (not b!5259816))

(assert (not setNonEmpty!33620))

(assert (not b!5259918))

(assert (not bm!372858))

(assert (not b!5259910))

(assert (not b!5259875))

(assert (not b!5259898))

(assert (not b!5259551))

(assert (not b!5259650))

(assert (not b!5259717))

(assert (not b!5259656))

(assert (not b!5259843))

(assert (not bm!372822))

(assert (not b!5259617))

(assert (not b!5259896))

(assert (not b!5259852))

(assert (not b!5259637))

(assert (not b!5259859))

(assert (not bm!372873))

(assert (not b!5259885))

(assert (not bm!372810))

(assert (not b!5259436))

(assert (not bm!372849))

(assert (not b!5259625))

(assert (not bm!372844))

(assert (not b!5259920))

(assert (not bm!372816))

(assert (not b!5259744))

(assert (not d!1693090))

(assert (not b!5259500))

(assert (not b!5259624))

(assert (not d!1693126))

(assert (not d!1693014))

(assert (not b!5259695))

(assert (not b!5259828))

(assert (not b!5259438))

(assert (not b!5259855))

(assert (not b!5259901))

(assert (not b!5259864))

(assert (not b!5259906))

(assert (not b!5259679))

(assert (not b!5259916))

(assert (not b!5259432))

(assert (not d!1693116))

(assert (not d!1693124))

(assert (not d!1693078))

(assert (not bm!372833))

(assert (not b!5259658))

(assert (not b!5259763))

(assert (not b!5259848))

(assert (not bm!372864))

(assert (not b!5259698))

(assert (not b!5259793))

(assert (not b_lambda!202975))

(assert (not bm!372874))

(assert (not d!1693040))

(assert (not b!5259892))

(assert (not b!5259876))

(assert (not b!5259914))

(assert (not b!5259761))

(assert (not b!5259573))

(assert (not bm!372875))

(assert (not bm!372834))

(assert (not b!5259824))

(assert (not b!5259425))

(assert (not bm!372850))

(assert (not b!5259818))

(assert (not b!5259718))

(assert (not d!1692972))

(assert (not bm!372826))

(assert (not b!5259696))

(assert (not b!5259921))

(assert (not d!1693038))

(assert (not b!5259815))

(assert (not bm!372895))

(assert (not b!5259465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

