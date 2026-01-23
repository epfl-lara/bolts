; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!646466 () Bool)

(assert start!646466)

(declare-fun b!6613656 () Bool)

(assert (=> b!6613656 true))

(assert (=> b!6613656 true))

(declare-fun lambda!369414 () Int)

(declare-fun lambda!369413 () Int)

(assert (=> b!6613656 (not (= lambda!369414 lambda!369413))))

(assert (=> b!6613656 true))

(assert (=> b!6613656 true))

(declare-fun b!6613663 () Bool)

(assert (=> b!6613663 true))

(declare-fun b!6613637 () Bool)

(declare-fun res!2712057 () Bool)

(declare-fun e!4001186 () Bool)

(assert (=> b!6613637 (=> (not res!2712057) (not e!4001186))))

(declare-datatypes ((C!33244 0))(
  ( (C!33245 (val!26324 Int)) )
))
(declare-datatypes ((Regex!16487 0))(
  ( (ElementMatch!16487 (c!1218988 C!33244)) (Concat!25332 (regOne!33486 Regex!16487) (regTwo!33486 Regex!16487)) (EmptyExpr!16487) (Star!16487 (reg!16816 Regex!16487)) (EmptyLang!16487) (Union!16487 (regOne!33487 Regex!16487) (regTwo!33487 Regex!16487)) )
))
(declare-fun r!7292 () Regex!16487)

(declare-datatypes ((List!65760 0))(
  ( (Nil!65636) (Cons!65636 (h!72084 Regex!16487) (t!379414 List!65760)) )
))
(declare-datatypes ((Context!11742 0))(
  ( (Context!11743 (exprs!6371 List!65760)) )
))
(declare-datatypes ((List!65761 0))(
  ( (Nil!65637) (Cons!65637 (h!72085 Context!11742) (t!379415 List!65761)) )
))
(declare-fun zl!343 () List!65761)

(declare-fun unfocusZipper!2229 (List!65761) Regex!16487)

(assert (=> b!6613637 (= res!2712057 (= r!7292 (unfocusZipper!2229 zl!343)))))

(declare-fun b!6613638 () Bool)

(declare-fun res!2712053 () Bool)

(declare-fun e!4001192 () Bool)

(assert (=> b!6613638 (=> res!2712053 e!4001192)))

(declare-fun e!4001183 () Bool)

(assert (=> b!6613638 (= res!2712053 e!4001183)))

(declare-fun res!2712054 () Bool)

(assert (=> b!6613638 (=> (not res!2712054) (not e!4001183))))

(get-info :version)

(assert (=> b!6613638 (= res!2712054 ((_ is Concat!25332) (regOne!33486 r!7292)))))

(declare-fun b!6613640 () Bool)

(declare-fun res!2712055 () Bool)

(declare-fun e!4001191 () Bool)

(assert (=> b!6613640 (=> res!2712055 e!4001191)))

(declare-fun isEmpty!37919 (List!65761) Bool)

(assert (=> b!6613640 (= res!2712055 (not (isEmpty!37919 (t!379415 zl!343))))))

(declare-fun b!6613641 () Bool)

(declare-fun e!4001188 () Bool)

(declare-fun e!4001184 () Bool)

(assert (=> b!6613641 (= e!4001188 e!4001184)))

(declare-fun res!2712061 () Bool)

(assert (=> b!6613641 (=> res!2712061 e!4001184)))

(declare-fun lt!2417203 () Bool)

(declare-fun lt!2417193 () Bool)

(assert (=> b!6613641 (= res!2712061 (not (= lt!2417203 lt!2417193)))))

(declare-datatypes ((List!65762 0))(
  ( (Nil!65638) (Cons!65638 (h!72086 C!33244) (t!379416 List!65762)) )
))
(declare-fun s!2326 () List!65762)

(declare-fun matchRSpec!3588 (Regex!16487 List!65762) Bool)

(assert (=> b!6613641 (= lt!2417193 (matchRSpec!3588 (regTwo!33486 r!7292) s!2326))))

(declare-fun matchR!8670 (Regex!16487 List!65762) Bool)

(assert (=> b!6613641 (= lt!2417193 (matchR!8670 (regTwo!33486 r!7292) s!2326))))

(declare-datatypes ((Unit!159303 0))(
  ( (Unit!159304) )
))
(declare-fun lt!2417199 () Unit!159303)

(declare-fun mainMatchTheorem!3588 (Regex!16487 List!65762) Unit!159303)

(assert (=> b!6613641 (= lt!2417199 (mainMatchTheorem!3588 (regTwo!33486 r!7292) s!2326))))

(assert (=> b!6613641 (= (matchR!8670 (regOne!33486 r!7292) s!2326) (matchRSpec!3588 (regOne!33486 r!7292) s!2326))))

(declare-fun lt!2417195 () Unit!159303)

(assert (=> b!6613641 (= lt!2417195 (mainMatchTheorem!3588 (regOne!33486 r!7292) s!2326))))

(declare-fun b!6613642 () Bool)

(declare-fun e!4001187 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2417206 () (InoxSet Context!11742))

(declare-fun matchZipper!2499 ((InoxSet Context!11742) List!65762) Bool)

(assert (=> b!6613642 (= e!4001187 (matchZipper!2499 lt!2417206 (t!379416 s!2326)))))

(declare-fun b!6613643 () Bool)

(declare-fun e!4001181 () Unit!159303)

(declare-fun Unit!159305 () Unit!159303)

(assert (=> b!6613643 (= e!4001181 Unit!159305)))

(declare-fun lt!2417196 () Unit!159303)

(declare-fun lt!2417194 () (InoxSet Context!11742))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1318 ((InoxSet Context!11742) (InoxSet Context!11742) List!65762) Unit!159303)

(assert (=> b!6613643 (= lt!2417196 (lemmaZipperConcatMatchesSameAsBothZippers!1318 lt!2417194 lt!2417206 (t!379416 s!2326)))))

(declare-fun res!2712065 () Bool)

(assert (=> b!6613643 (= res!2712065 (matchZipper!2499 lt!2417194 (t!379416 s!2326)))))

(assert (=> b!6613643 (=> res!2712065 e!4001187)))

(assert (=> b!6613643 (= (matchZipper!2499 ((_ map or) lt!2417194 lt!2417206) (t!379416 s!2326)) e!4001187)))

(declare-fun b!6613644 () Bool)

(declare-fun res!2712058 () Bool)

(assert (=> b!6613644 (=> res!2712058 e!4001192)))

(assert (=> b!6613644 (= res!2712058 (or ((_ is Concat!25332) (regOne!33486 r!7292)) ((_ is Star!16487) (regOne!33486 r!7292)) (not ((_ is EmptyExpr!16487) (regOne!33486 r!7292)))))))

(declare-fun setNonEmpty!45196 () Bool)

(declare-fun tp!1821643 () Bool)

(declare-fun e!4001189 () Bool)

(declare-fun setElem!45196 () Context!11742)

(declare-fun setRes!45196 () Bool)

(declare-fun inv!84464 (Context!11742) Bool)

(assert (=> setNonEmpty!45196 (= setRes!45196 (and tp!1821643 (inv!84464 setElem!45196) e!4001189))))

(declare-fun z!1189 () (InoxSet Context!11742))

(declare-fun setRest!45196 () (InoxSet Context!11742))

(assert (=> setNonEmpty!45196 (= z!1189 ((_ map or) (store ((as const (Array Context!11742 Bool)) false) setElem!45196 true) setRest!45196))))

(declare-fun setIsEmpty!45196 () Bool)

(assert (=> setIsEmpty!45196 setRes!45196))

(declare-fun b!6613645 () Bool)

(declare-fun lt!2417204 () Context!11742)

(assert (=> b!6613645 (= e!4001184 (inv!84464 lt!2417204))))

(declare-fun b!6613646 () Bool)

(assert (=> b!6613646 (= e!4001192 e!4001188)))

(declare-fun res!2712062 () Bool)

(assert (=> b!6613646 (=> res!2712062 e!4001188)))

(assert (=> b!6613646 (= res!2712062 (or (not (= lt!2417194 ((as const (Array Context!11742 Bool)) false))) (not (= r!7292 (Concat!25332 (regOne!33486 r!7292) (regTwo!33486 r!7292)))) (not (= (regOne!33486 r!7292) EmptyExpr!16487))))))

(assert (=> b!6613646 (not (matchZipper!2499 lt!2417194 (t!379416 s!2326)))))

(declare-fun lt!2417200 () Unit!159303)

(declare-fun lemmaEmptyZipperMatchesNothing!82 ((InoxSet Context!11742) List!65762) Unit!159303)

(assert (=> b!6613646 (= lt!2417200 (lemmaEmptyZipperMatchesNothing!82 lt!2417194 (t!379416 s!2326)))))

(declare-fun b!6613647 () Bool)

(declare-fun res!2712052 () Bool)

(assert (=> b!6613647 (=> (not res!2712052) (not e!4001186))))

(declare-fun toList!10271 ((InoxSet Context!11742)) List!65761)

(assert (=> b!6613647 (= res!2712052 (= (toList!10271 z!1189) zl!343))))

(declare-fun e!4001180 () Bool)

(declare-fun e!4001179 () Bool)

(declare-fun tp!1821641 () Bool)

(declare-fun b!6613648 () Bool)

(assert (=> b!6613648 (= e!4001180 (and (inv!84464 (h!72085 zl!343)) e!4001179 tp!1821641))))

(declare-fun b!6613649 () Bool)

(declare-fun Unit!159306 () Unit!159303)

(assert (=> b!6613649 (= e!4001181 Unit!159306)))

(declare-fun b!6613650 () Bool)

(declare-fun tp!1821638 () Bool)

(assert (=> b!6613650 (= e!4001189 tp!1821638)))

(declare-fun b!6613651 () Bool)

(declare-fun res!2712056 () Bool)

(assert (=> b!6613651 (=> res!2712056 e!4001191)))

(declare-fun generalisedConcat!2084 (List!65760) Regex!16487)

(assert (=> b!6613651 (= res!2712056 (not (= r!7292 (generalisedConcat!2084 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun res!2712060 () Bool)

(assert (=> start!646466 (=> (not res!2712060) (not e!4001186))))

(declare-fun validRegex!8223 (Regex!16487) Bool)

(assert (=> start!646466 (= res!2712060 (validRegex!8223 r!7292))))

(assert (=> start!646466 e!4001186))

(declare-fun e!4001185 () Bool)

(assert (=> start!646466 e!4001185))

(declare-fun condSetEmpty!45196 () Bool)

(assert (=> start!646466 (= condSetEmpty!45196 (= z!1189 ((as const (Array Context!11742 Bool)) false)))))

(assert (=> start!646466 setRes!45196))

(assert (=> start!646466 e!4001180))

(declare-fun e!4001190 () Bool)

(assert (=> start!646466 e!4001190))

(declare-fun b!6613639 () Bool)

(declare-fun tp_is_empty!42227 () Bool)

(declare-fun tp!1821639 () Bool)

(assert (=> b!6613639 (= e!4001190 (and tp_is_empty!42227 tp!1821639))))

(declare-fun b!6613652 () Bool)

(declare-fun tp!1821647 () Bool)

(declare-fun tp!1821644 () Bool)

(assert (=> b!6613652 (= e!4001185 (and tp!1821647 tp!1821644))))

(declare-fun b!6613653 () Bool)

(declare-fun res!2712064 () Bool)

(assert (=> b!6613653 (=> res!2712064 e!4001191)))

(assert (=> b!6613653 (= res!2712064 (or ((_ is EmptyExpr!16487) r!7292) ((_ is EmptyLang!16487) r!7292) ((_ is ElementMatch!16487) r!7292) ((_ is Union!16487) r!7292) (not ((_ is Concat!25332) r!7292))))))

(declare-fun b!6613654 () Bool)

(declare-fun tp!1821646 () Bool)

(assert (=> b!6613654 (= e!4001185 tp!1821646)))

(declare-fun b!6613655 () Bool)

(declare-fun res!2712050 () Bool)

(assert (=> b!6613655 (=> res!2712050 e!4001191)))

(assert (=> b!6613655 (= res!2712050 (not ((_ is Cons!65636) (exprs!6371 (h!72085 zl!343)))))))

(declare-fun e!4001182 () Bool)

(assert (=> b!6613656 (= e!4001191 e!4001182)))

(declare-fun res!2712051 () Bool)

(assert (=> b!6613656 (=> res!2712051 e!4001182)))

(declare-fun lt!2417202 () Bool)

(assert (=> b!6613656 (= res!2712051 (or (not (= lt!2417203 lt!2417202)) ((_ is Nil!65638) s!2326)))))

(declare-fun Exists!3557 (Int) Bool)

(assert (=> b!6613656 (= (Exists!3557 lambda!369413) (Exists!3557 lambda!369414))))

(declare-fun lt!2417208 () Unit!159303)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2094 (Regex!16487 Regex!16487 List!65762) Unit!159303)

(assert (=> b!6613656 (= lt!2417208 (lemmaExistCutMatchRandMatchRSpecEquivalent!2094 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326))))

(assert (=> b!6613656 (= lt!2417202 (Exists!3557 lambda!369413))))

(declare-datatypes ((tuple2!66932 0))(
  ( (tuple2!66933 (_1!36769 List!65762) (_2!36769 List!65762)) )
))
(declare-datatypes ((Option!16378 0))(
  ( (None!16377) (Some!16377 (v!52566 tuple2!66932)) )
))
(declare-fun isDefined!13081 (Option!16378) Bool)

(declare-fun findConcatSeparation!2792 (Regex!16487 Regex!16487 List!65762 List!65762 List!65762) Option!16378)

(assert (=> b!6613656 (= lt!2417202 (isDefined!13081 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326)))))

(declare-fun lt!2417198 () Unit!159303)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2556 (Regex!16487 Regex!16487 List!65762) Unit!159303)

(assert (=> b!6613656 (= lt!2417198 (lemmaFindConcatSeparationEquivalentToExists!2556 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326))))

(declare-fun b!6613657 () Bool)

(declare-fun tp!1821642 () Bool)

(assert (=> b!6613657 (= e!4001179 tp!1821642)))

(declare-fun b!6613658 () Bool)

(assert (=> b!6613658 (= e!4001185 tp_is_empty!42227)))

(declare-fun b!6613659 () Bool)

(assert (=> b!6613659 (= e!4001186 (not e!4001191))))

(declare-fun res!2712049 () Bool)

(assert (=> b!6613659 (=> res!2712049 e!4001191)))

(assert (=> b!6613659 (= res!2712049 (not ((_ is Cons!65637) zl!343)))))

(assert (=> b!6613659 (= lt!2417203 (matchRSpec!3588 r!7292 s!2326))))

(assert (=> b!6613659 (= lt!2417203 (matchR!8670 r!7292 s!2326))))

(declare-fun lt!2417205 () Unit!159303)

(assert (=> b!6613659 (= lt!2417205 (mainMatchTheorem!3588 r!7292 s!2326))))

(declare-fun b!6613660 () Bool)

(declare-fun tp!1821640 () Bool)

(declare-fun tp!1821645 () Bool)

(assert (=> b!6613660 (= e!4001185 (and tp!1821640 tp!1821645))))

(declare-fun b!6613661 () Bool)

(declare-fun res!2712063 () Bool)

(assert (=> b!6613661 (=> res!2712063 e!4001182)))

(declare-fun isEmpty!37920 (List!65760) Bool)

(assert (=> b!6613661 (= res!2712063 (isEmpty!37920 (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6613662 () Bool)

(declare-fun res!2712066 () Bool)

(assert (=> b!6613662 (=> res!2712066 e!4001191)))

(declare-fun generalisedUnion!2331 (List!65760) Regex!16487)

(declare-fun unfocusZipperList!1908 (List!65761) List!65760)

(assert (=> b!6613662 (= res!2712066 (not (= r!7292 (generalisedUnion!2331 (unfocusZipperList!1908 zl!343)))))))

(assert (=> b!6613663 (= e!4001182 e!4001192)))

(declare-fun res!2712059 () Bool)

(assert (=> b!6613663 (=> res!2712059 e!4001192)))

(assert (=> b!6613663 (= res!2712059 (or (and ((_ is ElementMatch!16487) (regOne!33486 r!7292)) (= (c!1218988 (regOne!33486 r!7292)) (h!72086 s!2326))) ((_ is Union!16487) (regOne!33486 r!7292))))))

(declare-fun lt!2417201 () Unit!159303)

(assert (=> b!6613663 (= lt!2417201 e!4001181)))

(declare-fun c!1218987 () Bool)

(declare-fun nullable!6480 (Regex!16487) Bool)

(assert (=> b!6613663 (= c!1218987 (nullable!6480 (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun lambda!369415 () Int)

(declare-fun flatMap!1992 ((InoxSet Context!11742) Int) (InoxSet Context!11742))

(declare-fun derivationStepZipperUp!1661 (Context!11742 C!33244) (InoxSet Context!11742))

(assert (=> b!6613663 (= (flatMap!1992 z!1189 lambda!369415) (derivationStepZipperUp!1661 (h!72085 zl!343) (h!72086 s!2326)))))

(declare-fun lt!2417207 () Unit!159303)

(declare-fun lemmaFlatMapOnSingletonSet!1518 ((InoxSet Context!11742) Context!11742 Int) Unit!159303)

(assert (=> b!6613663 (= lt!2417207 (lemmaFlatMapOnSingletonSet!1518 z!1189 (h!72085 zl!343) lambda!369415))))

(assert (=> b!6613663 (= lt!2417206 (derivationStepZipperUp!1661 lt!2417204 (h!72086 s!2326)))))

(declare-fun derivationStepZipperDown!1735 (Regex!16487 Context!11742 C!33244) (InoxSet Context!11742))

(assert (=> b!6613663 (= lt!2417194 (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (h!72085 zl!343))) lt!2417204 (h!72086 s!2326)))))

(assert (=> b!6613663 (= lt!2417204 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun lt!2417197 () (InoxSet Context!11742))

(assert (=> b!6613663 (= lt!2417197 (derivationStepZipperUp!1661 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))) (h!72086 s!2326)))))

(declare-fun b!6613664 () Bool)

(assert (=> b!6613664 (= e!4001183 (nullable!6480 (regOne!33486 (regOne!33486 r!7292))))))

(assert (= (and start!646466 res!2712060) b!6613647))

(assert (= (and b!6613647 res!2712052) b!6613637))

(assert (= (and b!6613637 res!2712057) b!6613659))

(assert (= (and b!6613659 (not res!2712049)) b!6613640))

(assert (= (and b!6613640 (not res!2712055)) b!6613651))

(assert (= (and b!6613651 (not res!2712056)) b!6613655))

(assert (= (and b!6613655 (not res!2712050)) b!6613662))

(assert (= (and b!6613662 (not res!2712066)) b!6613653))

(assert (= (and b!6613653 (not res!2712064)) b!6613656))

(assert (= (and b!6613656 (not res!2712051)) b!6613661))

(assert (= (and b!6613661 (not res!2712063)) b!6613663))

(assert (= (and b!6613663 c!1218987) b!6613643))

(assert (= (and b!6613663 (not c!1218987)) b!6613649))

(assert (= (and b!6613643 (not res!2712065)) b!6613642))

(assert (= (and b!6613663 (not res!2712059)) b!6613638))

(assert (= (and b!6613638 res!2712054) b!6613664))

(assert (= (and b!6613638 (not res!2712053)) b!6613644))

(assert (= (and b!6613644 (not res!2712058)) b!6613646))

(assert (= (and b!6613646 (not res!2712062)) b!6613641))

(assert (= (and b!6613641 (not res!2712061)) b!6613645))

(assert (= (and start!646466 ((_ is ElementMatch!16487) r!7292)) b!6613658))

(assert (= (and start!646466 ((_ is Concat!25332) r!7292)) b!6613660))

(assert (= (and start!646466 ((_ is Star!16487) r!7292)) b!6613654))

(assert (= (and start!646466 ((_ is Union!16487) r!7292)) b!6613652))

(assert (= (and start!646466 condSetEmpty!45196) setIsEmpty!45196))

(assert (= (and start!646466 (not condSetEmpty!45196)) setNonEmpty!45196))

(assert (= setNonEmpty!45196 b!6613650))

(assert (= b!6613648 b!6613657))

(assert (= (and start!646466 ((_ is Cons!65637) zl!343)) b!6613648))

(assert (= (and start!646466 ((_ is Cons!65638) s!2326)) b!6613639))

(declare-fun m!7387186 () Bool)

(assert (=> b!6613662 m!7387186))

(assert (=> b!6613662 m!7387186))

(declare-fun m!7387188 () Bool)

(assert (=> b!6613662 m!7387188))

(declare-fun m!7387190 () Bool)

(assert (=> b!6613663 m!7387190))

(declare-fun m!7387192 () Bool)

(assert (=> b!6613663 m!7387192))

(declare-fun m!7387194 () Bool)

(assert (=> b!6613663 m!7387194))

(declare-fun m!7387196 () Bool)

(assert (=> b!6613663 m!7387196))

(declare-fun m!7387198 () Bool)

(assert (=> b!6613663 m!7387198))

(declare-fun m!7387200 () Bool)

(assert (=> b!6613663 m!7387200))

(declare-fun m!7387202 () Bool)

(assert (=> b!6613663 m!7387202))

(declare-fun m!7387204 () Bool)

(assert (=> b!6613647 m!7387204))

(declare-fun m!7387206 () Bool)

(assert (=> b!6613643 m!7387206))

(declare-fun m!7387208 () Bool)

(assert (=> b!6613643 m!7387208))

(declare-fun m!7387210 () Bool)

(assert (=> b!6613643 m!7387210))

(declare-fun m!7387212 () Bool)

(assert (=> b!6613642 m!7387212))

(declare-fun m!7387214 () Bool)

(assert (=> setNonEmpty!45196 m!7387214))

(declare-fun m!7387216 () Bool)

(assert (=> b!6613648 m!7387216))

(declare-fun m!7387218 () Bool)

(assert (=> b!6613640 m!7387218))

(assert (=> b!6613646 m!7387208))

(declare-fun m!7387220 () Bool)

(assert (=> b!6613646 m!7387220))

(declare-fun m!7387222 () Bool)

(assert (=> b!6613661 m!7387222))

(declare-fun m!7387224 () Bool)

(assert (=> b!6613659 m!7387224))

(declare-fun m!7387226 () Bool)

(assert (=> b!6613659 m!7387226))

(declare-fun m!7387228 () Bool)

(assert (=> b!6613659 m!7387228))

(declare-fun m!7387230 () Bool)

(assert (=> b!6613641 m!7387230))

(declare-fun m!7387232 () Bool)

(assert (=> b!6613641 m!7387232))

(declare-fun m!7387234 () Bool)

(assert (=> b!6613641 m!7387234))

(declare-fun m!7387236 () Bool)

(assert (=> b!6613641 m!7387236))

(declare-fun m!7387238 () Bool)

(assert (=> b!6613641 m!7387238))

(declare-fun m!7387240 () Bool)

(assert (=> b!6613641 m!7387240))

(declare-fun m!7387242 () Bool)

(assert (=> b!6613664 m!7387242))

(declare-fun m!7387244 () Bool)

(assert (=> b!6613637 m!7387244))

(declare-fun m!7387246 () Bool)

(assert (=> b!6613651 m!7387246))

(declare-fun m!7387248 () Bool)

(assert (=> start!646466 m!7387248))

(declare-fun m!7387250 () Bool)

(assert (=> b!6613645 m!7387250))

(declare-fun m!7387252 () Bool)

(assert (=> b!6613656 m!7387252))

(declare-fun m!7387254 () Bool)

(assert (=> b!6613656 m!7387254))

(declare-fun m!7387256 () Bool)

(assert (=> b!6613656 m!7387256))

(declare-fun m!7387258 () Bool)

(assert (=> b!6613656 m!7387258))

(declare-fun m!7387260 () Bool)

(assert (=> b!6613656 m!7387260))

(assert (=> b!6613656 m!7387254))

(assert (=> b!6613656 m!7387258))

(declare-fun m!7387262 () Bool)

(assert (=> b!6613656 m!7387262))

(check-sat (not b!6613662) (not start!646466) (not b!6613640) (not b!6613652) (not b!6613643) (not b!6613657) (not b!6613656) (not b!6613646) (not b!6613663) (not b!6613648) (not b!6613642) (not b!6613651) (not b!6613645) tp_is_empty!42227 (not setNonEmpty!45196) (not b!6613664) (not b!6613660) (not b!6613647) (not b!6613639) (not b!6613637) (not b!6613659) (not b!6613661) (not b!6613654) (not b!6613641) (not b!6613650))
(check-sat)
(get-model)

(declare-fun d!2073263 () Bool)

(declare-fun lambda!369418 () Int)

(declare-fun forall!15682 (List!65760 Int) Bool)

(assert (=> d!2073263 (= (inv!84464 lt!2417204) (forall!15682 (exprs!6371 lt!2417204) lambda!369418))))

(declare-fun bs!1695474 () Bool)

(assert (= bs!1695474 d!2073263))

(declare-fun m!7387264 () Bool)

(assert (=> bs!1695474 m!7387264))

(assert (=> b!6613645 d!2073263))

(declare-fun bs!1695475 () Bool)

(declare-fun d!2073265 () Bool)

(assert (= bs!1695475 (and d!2073265 d!2073263)))

(declare-fun lambda!369419 () Int)

(assert (=> bs!1695475 (= lambda!369419 lambda!369418)))

(assert (=> d!2073265 (= (inv!84464 setElem!45196) (forall!15682 (exprs!6371 setElem!45196) lambda!369419))))

(declare-fun bs!1695476 () Bool)

(assert (= bs!1695476 d!2073265))

(declare-fun m!7387266 () Bool)

(assert (=> bs!1695476 m!7387266))

(assert (=> setNonEmpty!45196 d!2073265))

(declare-fun d!2073267 () Bool)

(declare-fun nullableFct!2401 (Regex!16487) Bool)

(assert (=> d!2073267 (= (nullable!6480 (regOne!33486 (regOne!33486 r!7292))) (nullableFct!2401 (regOne!33486 (regOne!33486 r!7292))))))

(declare-fun bs!1695477 () Bool)

(assert (= bs!1695477 d!2073267))

(declare-fun m!7387268 () Bool)

(assert (=> bs!1695477 m!7387268))

(assert (=> b!6613664 d!2073267))

(declare-fun d!2073269 () Bool)

(declare-fun choose!49415 ((InoxSet Context!11742) Int) (InoxSet Context!11742))

(assert (=> d!2073269 (= (flatMap!1992 z!1189 lambda!369415) (choose!49415 z!1189 lambda!369415))))

(declare-fun bs!1695478 () Bool)

(assert (= bs!1695478 d!2073269))

(declare-fun m!7387270 () Bool)

(assert (=> bs!1695478 m!7387270))

(assert (=> b!6613663 d!2073269))

(declare-fun b!6613693 () Bool)

(declare-fun e!4001207 () (InoxSet Context!11742))

(declare-fun call!579392 () (InoxSet Context!11742))

(declare-fun call!579396 () (InoxSet Context!11742))

(assert (=> b!6613693 (= e!4001207 ((_ map or) call!579392 call!579396))))

(declare-fun b!6613694 () Bool)

(declare-fun e!4001209 () (InoxSet Context!11742))

(declare-fun call!579394 () (InoxSet Context!11742))

(assert (=> b!6613694 (= e!4001209 call!579394)))

(declare-fun d!2073271 () Bool)

(declare-fun c!1219000 () Bool)

(assert (=> d!2073271 (= c!1219000 (and ((_ is ElementMatch!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))) (= (c!1218988 (h!72084 (exprs!6371 (h!72085 zl!343)))) (h!72086 s!2326))))))

(declare-fun e!4001205 () (InoxSet Context!11742))

(assert (=> d!2073271 (= (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (h!72085 zl!343))) lt!2417204 (h!72086 s!2326)) e!4001205)))

(declare-fun b!6613695 () Bool)

(declare-fun c!1219001 () Bool)

(declare-fun e!4001208 () Bool)

(assert (=> b!6613695 (= c!1219001 e!4001208)))

(declare-fun res!2712069 () Bool)

(assert (=> b!6613695 (=> (not res!2712069) (not e!4001208))))

(assert (=> b!6613695 (= res!2712069 ((_ is Concat!25332) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun e!4001210 () (InoxSet Context!11742))

(assert (=> b!6613695 (= e!4001207 e!4001210)))

(declare-fun b!6613696 () Bool)

(declare-fun call!579397 () (InoxSet Context!11742))

(assert (=> b!6613696 (= e!4001210 ((_ map or) call!579396 call!579397))))

(declare-fun bm!579387 () Bool)

(declare-fun call!579393 () List!65760)

(declare-fun c!1219002 () Bool)

(declare-fun $colon$colon!2323 (List!65760 Regex!16487) List!65760)

(assert (=> bm!579387 (= call!579393 ($colon$colon!2323 (exprs!6371 lt!2417204) (ite (or c!1219001 c!1219002) (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (h!72084 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun b!6613697 () Bool)

(declare-fun c!1218999 () Bool)

(assert (=> b!6613697 (= c!1218999 ((_ is Star!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun e!4001206 () (InoxSet Context!11742))

(assert (=> b!6613697 (= e!4001209 e!4001206)))

(declare-fun c!1219003 () Bool)

(declare-fun bm!579388 () Bool)

(assert (=> bm!579388 (= call!579396 (derivationStepZipperDown!1735 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))) (ite c!1219003 lt!2417204 (Context!11743 call!579393)) (h!72086 s!2326)))))

(declare-fun bm!579389 () Bool)

(assert (=> bm!579389 (= call!579397 call!579392)))

(declare-fun bm!579390 () Bool)

(declare-fun call!579395 () List!65760)

(assert (=> bm!579390 (= call!579395 call!579393)))

(declare-fun bm!579391 () Bool)

(assert (=> bm!579391 (= call!579394 call!579397)))

(declare-fun b!6613698 () Bool)

(assert (=> b!6613698 (= e!4001210 e!4001209)))

(assert (=> b!6613698 (= c!1219002 ((_ is Concat!25332) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6613699 () Bool)

(assert (=> b!6613699 (= e!4001205 e!4001207)))

(assert (=> b!6613699 (= c!1219003 ((_ is Union!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6613700 () Bool)

(assert (=> b!6613700 (= e!4001208 (nullable!6480 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun bm!579392 () Bool)

(assert (=> bm!579392 (= call!579392 (derivationStepZipperDown!1735 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343))))))) (ite (or c!1219003 c!1219001) lt!2417204 (Context!11743 call!579395)) (h!72086 s!2326)))))

(declare-fun b!6613701 () Bool)

(assert (=> b!6613701 (= e!4001205 (store ((as const (Array Context!11742 Bool)) false) lt!2417204 true))))

(declare-fun b!6613702 () Bool)

(assert (=> b!6613702 (= e!4001206 call!579394)))

(declare-fun b!6613703 () Bool)

(assert (=> b!6613703 (= e!4001206 ((as const (Array Context!11742 Bool)) false))))

(assert (= (and d!2073271 c!1219000) b!6613701))

(assert (= (and d!2073271 (not c!1219000)) b!6613699))

(assert (= (and b!6613699 c!1219003) b!6613693))

(assert (= (and b!6613699 (not c!1219003)) b!6613695))

(assert (= (and b!6613695 res!2712069) b!6613700))

(assert (= (and b!6613695 c!1219001) b!6613696))

(assert (= (and b!6613695 (not c!1219001)) b!6613698))

(assert (= (and b!6613698 c!1219002) b!6613694))

(assert (= (and b!6613698 (not c!1219002)) b!6613697))

(assert (= (and b!6613697 c!1218999) b!6613702))

(assert (= (and b!6613697 (not c!1218999)) b!6613703))

(assert (= (or b!6613694 b!6613702) bm!579390))

(assert (= (or b!6613694 b!6613702) bm!579391))

(assert (= (or b!6613696 bm!579390) bm!579387))

(assert (= (or b!6613696 bm!579391) bm!579389))

(assert (= (or b!6613693 b!6613696) bm!579388))

(assert (= (or b!6613693 bm!579389) bm!579392))

(declare-fun m!7387272 () Bool)

(assert (=> b!6613701 m!7387272))

(declare-fun m!7387274 () Bool)

(assert (=> bm!579392 m!7387274))

(declare-fun m!7387276 () Bool)

(assert (=> b!6613700 m!7387276))

(declare-fun m!7387278 () Bool)

(assert (=> bm!579388 m!7387278))

(declare-fun m!7387280 () Bool)

(assert (=> bm!579387 m!7387280))

(assert (=> b!6613663 d!2073271))

(declare-fun d!2073273 () Bool)

(assert (=> d!2073273 (= (nullable!6480 (h!72084 (exprs!6371 (h!72085 zl!343)))) (nullableFct!2401 (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun bs!1695479 () Bool)

(assert (= bs!1695479 d!2073273))

(declare-fun m!7387282 () Bool)

(assert (=> bs!1695479 m!7387282))

(assert (=> b!6613663 d!2073273))

(declare-fun b!6613714 () Bool)

(declare-fun e!4001217 () (InoxSet Context!11742))

(assert (=> b!6613714 (= e!4001217 ((as const (Array Context!11742 Bool)) false))))

(declare-fun b!6613715 () Bool)

(declare-fun call!579400 () (InoxSet Context!11742))

(assert (=> b!6613715 (= e!4001217 call!579400)))

(declare-fun b!6613716 () Bool)

(declare-fun e!4001219 () (InoxSet Context!11742))

(assert (=> b!6613716 (= e!4001219 ((_ map or) call!579400 (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (h!72086 s!2326))))))

(declare-fun b!6613717 () Bool)

(declare-fun e!4001218 () Bool)

(assert (=> b!6613717 (= e!4001218 (nullable!6480 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun d!2073275 () Bool)

(declare-fun c!1219009 () Bool)

(assert (=> d!2073275 (= c!1219009 e!4001218)))

(declare-fun res!2712072 () Bool)

(assert (=> d!2073275 (=> (not res!2712072) (not e!4001218))))

(assert (=> d!2073275 (= res!2712072 ((_ is Cons!65636) (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))

(assert (=> d!2073275 (= (derivationStepZipperUp!1661 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))) (h!72086 s!2326)) e!4001219)))

(declare-fun bm!579395 () Bool)

(assert (=> bm!579395 (= call!579400 (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))) (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (h!72086 s!2326)))))

(declare-fun b!6613718 () Bool)

(assert (=> b!6613718 (= e!4001219 e!4001217)))

(declare-fun c!1219008 () Bool)

(assert (=> b!6613718 (= c!1219008 ((_ is Cons!65636) (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))

(assert (= (and d!2073275 res!2712072) b!6613717))

(assert (= (and d!2073275 c!1219009) b!6613716))

(assert (= (and d!2073275 (not c!1219009)) b!6613718))

(assert (= (and b!6613718 c!1219008) b!6613715))

(assert (= (and b!6613718 (not c!1219008)) b!6613714))

(assert (= (or b!6613716 b!6613715) bm!579395))

(declare-fun m!7387284 () Bool)

(assert (=> b!6613716 m!7387284))

(declare-fun m!7387286 () Bool)

(assert (=> b!6613717 m!7387286))

(declare-fun m!7387288 () Bool)

(assert (=> bm!579395 m!7387288))

(assert (=> b!6613663 d!2073275))

(declare-fun b!6613719 () Bool)

(declare-fun e!4001220 () (InoxSet Context!11742))

(assert (=> b!6613719 (= e!4001220 ((as const (Array Context!11742 Bool)) false))))

(declare-fun b!6613720 () Bool)

(declare-fun call!579401 () (InoxSet Context!11742))

(assert (=> b!6613720 (= e!4001220 call!579401)))

(declare-fun e!4001222 () (InoxSet Context!11742))

(declare-fun b!6613721 () Bool)

(assert (=> b!6613721 (= e!4001222 ((_ map or) call!579401 (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))) (h!72086 s!2326))))))

(declare-fun b!6613722 () Bool)

(declare-fun e!4001221 () Bool)

(assert (=> b!6613722 (= e!4001221 (nullable!6480 (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun d!2073277 () Bool)

(declare-fun c!1219011 () Bool)

(assert (=> d!2073277 (= c!1219011 e!4001221)))

(declare-fun res!2712073 () Bool)

(assert (=> d!2073277 (=> (not res!2712073) (not e!4001221))))

(assert (=> d!2073277 (= res!2712073 ((_ is Cons!65636) (exprs!6371 (h!72085 zl!343))))))

(assert (=> d!2073277 (= (derivationStepZipperUp!1661 (h!72085 zl!343) (h!72086 s!2326)) e!4001222)))

(declare-fun bm!579396 () Bool)

(assert (=> bm!579396 (= call!579401 (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (h!72085 zl!343))) (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))) (h!72086 s!2326)))))

(declare-fun b!6613723 () Bool)

(assert (=> b!6613723 (= e!4001222 e!4001220)))

(declare-fun c!1219010 () Bool)

(assert (=> b!6613723 (= c!1219010 ((_ is Cons!65636) (exprs!6371 (h!72085 zl!343))))))

(assert (= (and d!2073277 res!2712073) b!6613722))

(assert (= (and d!2073277 c!1219011) b!6613721))

(assert (= (and d!2073277 (not c!1219011)) b!6613723))

(assert (= (and b!6613723 c!1219010) b!6613720))

(assert (= (and b!6613723 (not c!1219010)) b!6613719))

(assert (= (or b!6613721 b!6613720) bm!579396))

(declare-fun m!7387290 () Bool)

(assert (=> b!6613721 m!7387290))

(assert (=> b!6613722 m!7387198))

(declare-fun m!7387292 () Bool)

(assert (=> bm!579396 m!7387292))

(assert (=> b!6613663 d!2073277))

(declare-fun d!2073279 () Bool)

(declare-fun dynLambda!26137 (Int Context!11742) (InoxSet Context!11742))

(assert (=> d!2073279 (= (flatMap!1992 z!1189 lambda!369415) (dynLambda!26137 lambda!369415 (h!72085 zl!343)))))

(declare-fun lt!2417211 () Unit!159303)

(declare-fun choose!49416 ((InoxSet Context!11742) Context!11742 Int) Unit!159303)

(assert (=> d!2073279 (= lt!2417211 (choose!49416 z!1189 (h!72085 zl!343) lambda!369415))))

(assert (=> d!2073279 (= z!1189 (store ((as const (Array Context!11742 Bool)) false) (h!72085 zl!343) true))))

(assert (=> d!2073279 (= (lemmaFlatMapOnSingletonSet!1518 z!1189 (h!72085 zl!343) lambda!369415) lt!2417211)))

(declare-fun b_lambda!250161 () Bool)

(assert (=> (not b_lambda!250161) (not d!2073279)))

(declare-fun bs!1695480 () Bool)

(assert (= bs!1695480 d!2073279))

(assert (=> bs!1695480 m!7387194))

(declare-fun m!7387294 () Bool)

(assert (=> bs!1695480 m!7387294))

(declare-fun m!7387296 () Bool)

(assert (=> bs!1695480 m!7387296))

(declare-fun m!7387298 () Bool)

(assert (=> bs!1695480 m!7387298))

(assert (=> b!6613663 d!2073279))

(declare-fun b!6613724 () Bool)

(declare-fun e!4001223 () (InoxSet Context!11742))

(assert (=> b!6613724 (= e!4001223 ((as const (Array Context!11742 Bool)) false))))

(declare-fun b!6613725 () Bool)

(declare-fun call!579402 () (InoxSet Context!11742))

(assert (=> b!6613725 (= e!4001223 call!579402)))

(declare-fun e!4001225 () (InoxSet Context!11742))

(declare-fun b!6613726 () Bool)

(assert (=> b!6613726 (= e!4001225 ((_ map or) call!579402 (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 lt!2417204))) (h!72086 s!2326))))))

(declare-fun b!6613727 () Bool)

(declare-fun e!4001224 () Bool)

(assert (=> b!6613727 (= e!4001224 (nullable!6480 (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun d!2073281 () Bool)

(declare-fun c!1219013 () Bool)

(assert (=> d!2073281 (= c!1219013 e!4001224)))

(declare-fun res!2712074 () Bool)

(assert (=> d!2073281 (=> (not res!2712074) (not e!4001224))))

(assert (=> d!2073281 (= res!2712074 ((_ is Cons!65636) (exprs!6371 lt!2417204)))))

(assert (=> d!2073281 (= (derivationStepZipperUp!1661 lt!2417204 (h!72086 s!2326)) e!4001225)))

(declare-fun bm!579397 () Bool)

(assert (=> bm!579397 (= call!579402 (derivationStepZipperDown!1735 (h!72084 (exprs!6371 lt!2417204)) (Context!11743 (t!379414 (exprs!6371 lt!2417204))) (h!72086 s!2326)))))

(declare-fun b!6613728 () Bool)

(assert (=> b!6613728 (= e!4001225 e!4001223)))

(declare-fun c!1219012 () Bool)

(assert (=> b!6613728 (= c!1219012 ((_ is Cons!65636) (exprs!6371 lt!2417204)))))

(assert (= (and d!2073281 res!2712074) b!6613727))

(assert (= (and d!2073281 c!1219013) b!6613726))

(assert (= (and d!2073281 (not c!1219013)) b!6613728))

(assert (= (and b!6613728 c!1219012) b!6613725))

(assert (= (and b!6613728 (not c!1219012)) b!6613724))

(assert (= (or b!6613726 b!6613725) bm!579397))

(declare-fun m!7387300 () Bool)

(assert (=> b!6613726 m!7387300))

(declare-fun m!7387302 () Bool)

(assert (=> b!6613727 m!7387302))

(declare-fun m!7387304 () Bool)

(assert (=> bm!579397 m!7387304))

(assert (=> b!6613663 d!2073281))

(declare-fun e!4001228 () Bool)

(declare-fun d!2073283 () Bool)

(assert (=> d!2073283 (= (matchZipper!2499 ((_ map or) lt!2417194 lt!2417206) (t!379416 s!2326)) e!4001228)))

(declare-fun res!2712077 () Bool)

(assert (=> d!2073283 (=> res!2712077 e!4001228)))

(assert (=> d!2073283 (= res!2712077 (matchZipper!2499 lt!2417194 (t!379416 s!2326)))))

(declare-fun lt!2417214 () Unit!159303)

(declare-fun choose!49417 ((InoxSet Context!11742) (InoxSet Context!11742) List!65762) Unit!159303)

(assert (=> d!2073283 (= lt!2417214 (choose!49417 lt!2417194 lt!2417206 (t!379416 s!2326)))))

(assert (=> d!2073283 (= (lemmaZipperConcatMatchesSameAsBothZippers!1318 lt!2417194 lt!2417206 (t!379416 s!2326)) lt!2417214)))

(declare-fun b!6613731 () Bool)

(assert (=> b!6613731 (= e!4001228 (matchZipper!2499 lt!2417206 (t!379416 s!2326)))))

(assert (= (and d!2073283 (not res!2712077)) b!6613731))

(assert (=> d!2073283 m!7387210))

(assert (=> d!2073283 m!7387208))

(declare-fun m!7387306 () Bool)

(assert (=> d!2073283 m!7387306))

(assert (=> b!6613731 m!7387212))

(assert (=> b!6613643 d!2073283))

(declare-fun d!2073285 () Bool)

(declare-fun c!1219016 () Bool)

(declare-fun isEmpty!37921 (List!65762) Bool)

(assert (=> d!2073285 (= c!1219016 (isEmpty!37921 (t!379416 s!2326)))))

(declare-fun e!4001231 () Bool)

(assert (=> d!2073285 (= (matchZipper!2499 lt!2417194 (t!379416 s!2326)) e!4001231)))

(declare-fun b!6613736 () Bool)

(declare-fun nullableZipper!2227 ((InoxSet Context!11742)) Bool)

(assert (=> b!6613736 (= e!4001231 (nullableZipper!2227 lt!2417194))))

(declare-fun b!6613737 () Bool)

(declare-fun derivationStepZipper!2452 ((InoxSet Context!11742) C!33244) (InoxSet Context!11742))

(declare-fun head!13415 (List!65762) C!33244)

(declare-fun tail!12500 (List!65762) List!65762)

(assert (=> b!6613737 (= e!4001231 (matchZipper!2499 (derivationStepZipper!2452 lt!2417194 (head!13415 (t!379416 s!2326))) (tail!12500 (t!379416 s!2326))))))

(assert (= (and d!2073285 c!1219016) b!6613736))

(assert (= (and d!2073285 (not c!1219016)) b!6613737))

(declare-fun m!7387308 () Bool)

(assert (=> d!2073285 m!7387308))

(declare-fun m!7387310 () Bool)

(assert (=> b!6613736 m!7387310))

(declare-fun m!7387312 () Bool)

(assert (=> b!6613737 m!7387312))

(assert (=> b!6613737 m!7387312))

(declare-fun m!7387314 () Bool)

(assert (=> b!6613737 m!7387314))

(declare-fun m!7387316 () Bool)

(assert (=> b!6613737 m!7387316))

(assert (=> b!6613737 m!7387314))

(assert (=> b!6613737 m!7387316))

(declare-fun m!7387318 () Bool)

(assert (=> b!6613737 m!7387318))

(assert (=> b!6613643 d!2073285))

(declare-fun d!2073287 () Bool)

(declare-fun c!1219017 () Bool)

(assert (=> d!2073287 (= c!1219017 (isEmpty!37921 (t!379416 s!2326)))))

(declare-fun e!4001232 () Bool)

(assert (=> d!2073287 (= (matchZipper!2499 ((_ map or) lt!2417194 lt!2417206) (t!379416 s!2326)) e!4001232)))

(declare-fun b!6613738 () Bool)

(assert (=> b!6613738 (= e!4001232 (nullableZipper!2227 ((_ map or) lt!2417194 lt!2417206)))))

(declare-fun b!6613739 () Bool)

(assert (=> b!6613739 (= e!4001232 (matchZipper!2499 (derivationStepZipper!2452 ((_ map or) lt!2417194 lt!2417206) (head!13415 (t!379416 s!2326))) (tail!12500 (t!379416 s!2326))))))

(assert (= (and d!2073287 c!1219017) b!6613738))

(assert (= (and d!2073287 (not c!1219017)) b!6613739))

(assert (=> d!2073287 m!7387308))

(declare-fun m!7387320 () Bool)

(assert (=> b!6613738 m!7387320))

(assert (=> b!6613739 m!7387312))

(assert (=> b!6613739 m!7387312))

(declare-fun m!7387322 () Bool)

(assert (=> b!6613739 m!7387322))

(assert (=> b!6613739 m!7387316))

(assert (=> b!6613739 m!7387322))

(assert (=> b!6613739 m!7387316))

(declare-fun m!7387324 () Bool)

(assert (=> b!6613739 m!7387324))

(assert (=> b!6613643 d!2073287))

(declare-fun bs!1695481 () Bool)

(declare-fun d!2073289 () Bool)

(assert (= bs!1695481 (and d!2073289 d!2073263)))

(declare-fun lambda!369422 () Int)

(assert (=> bs!1695481 (= lambda!369422 lambda!369418)))

(declare-fun bs!1695482 () Bool)

(assert (= bs!1695482 (and d!2073289 d!2073265)))

(assert (=> bs!1695482 (= lambda!369422 lambda!369419)))

(declare-fun e!4001250 () Bool)

(assert (=> d!2073289 e!4001250))

(declare-fun res!2712082 () Bool)

(assert (=> d!2073289 (=> (not res!2712082) (not e!4001250))))

(declare-fun lt!2417217 () Regex!16487)

(assert (=> d!2073289 (= res!2712082 (validRegex!8223 lt!2417217))))

(declare-fun e!4001246 () Regex!16487)

(assert (=> d!2073289 (= lt!2417217 e!4001246)))

(declare-fun c!1219026 () Bool)

(declare-fun e!4001249 () Bool)

(assert (=> d!2073289 (= c!1219026 e!4001249)))

(declare-fun res!2712083 () Bool)

(assert (=> d!2073289 (=> (not res!2712083) (not e!4001249))))

(assert (=> d!2073289 (= res!2712083 ((_ is Cons!65636) (unfocusZipperList!1908 zl!343)))))

(assert (=> d!2073289 (forall!15682 (unfocusZipperList!1908 zl!343) lambda!369422)))

(assert (=> d!2073289 (= (generalisedUnion!2331 (unfocusZipperList!1908 zl!343)) lt!2417217)))

(declare-fun b!6613760 () Bool)

(declare-fun e!4001245 () Regex!16487)

(assert (=> b!6613760 (= e!4001246 e!4001245)))

(declare-fun c!1219028 () Bool)

(assert (=> b!6613760 (= c!1219028 ((_ is Cons!65636) (unfocusZipperList!1908 zl!343)))))

(declare-fun b!6613761 () Bool)

(declare-fun e!4001247 () Bool)

(assert (=> b!6613761 (= e!4001250 e!4001247)))

(declare-fun c!1219029 () Bool)

(assert (=> b!6613761 (= c!1219029 (isEmpty!37920 (unfocusZipperList!1908 zl!343)))))

(declare-fun b!6613762 () Bool)

(assert (=> b!6613762 (= e!4001245 EmptyLang!16487)))

(declare-fun b!6613763 () Bool)

(declare-fun e!4001248 () Bool)

(assert (=> b!6613763 (= e!4001247 e!4001248)))

(declare-fun c!1219027 () Bool)

(declare-fun tail!12502 (List!65760) List!65760)

(assert (=> b!6613763 (= c!1219027 (isEmpty!37920 (tail!12502 (unfocusZipperList!1908 zl!343))))))

(declare-fun b!6613764 () Bool)

(declare-fun head!13417 (List!65760) Regex!16487)

(assert (=> b!6613764 (= e!4001248 (= lt!2417217 (head!13417 (unfocusZipperList!1908 zl!343))))))

(declare-fun b!6613765 () Bool)

(assert (=> b!6613765 (= e!4001246 (h!72084 (unfocusZipperList!1908 zl!343)))))

(declare-fun b!6613766 () Bool)

(declare-fun isUnion!1299 (Regex!16487) Bool)

(assert (=> b!6613766 (= e!4001248 (isUnion!1299 lt!2417217))))

(declare-fun b!6613767 () Bool)

(assert (=> b!6613767 (= e!4001249 (isEmpty!37920 (t!379414 (unfocusZipperList!1908 zl!343))))))

(declare-fun b!6613768 () Bool)

(declare-fun isEmptyLang!1869 (Regex!16487) Bool)

(assert (=> b!6613768 (= e!4001247 (isEmptyLang!1869 lt!2417217))))

(declare-fun b!6613769 () Bool)

(assert (=> b!6613769 (= e!4001245 (Union!16487 (h!72084 (unfocusZipperList!1908 zl!343)) (generalisedUnion!2331 (t!379414 (unfocusZipperList!1908 zl!343)))))))

(assert (= (and d!2073289 res!2712083) b!6613767))

(assert (= (and d!2073289 c!1219026) b!6613765))

(assert (= (and d!2073289 (not c!1219026)) b!6613760))

(assert (= (and b!6613760 c!1219028) b!6613769))

(assert (= (and b!6613760 (not c!1219028)) b!6613762))

(assert (= (and d!2073289 res!2712082) b!6613761))

(assert (= (and b!6613761 c!1219029) b!6613768))

(assert (= (and b!6613761 (not c!1219029)) b!6613763))

(assert (= (and b!6613763 c!1219027) b!6613764))

(assert (= (and b!6613763 (not c!1219027)) b!6613766))

(declare-fun m!7387326 () Bool)

(assert (=> b!6613767 m!7387326))

(declare-fun m!7387328 () Bool)

(assert (=> b!6613766 m!7387328))

(assert (=> b!6613763 m!7387186))

(declare-fun m!7387330 () Bool)

(assert (=> b!6613763 m!7387330))

(assert (=> b!6613763 m!7387330))

(declare-fun m!7387332 () Bool)

(assert (=> b!6613763 m!7387332))

(assert (=> b!6613761 m!7387186))

(declare-fun m!7387334 () Bool)

(assert (=> b!6613761 m!7387334))

(assert (=> b!6613764 m!7387186))

(declare-fun m!7387338 () Bool)

(assert (=> b!6613764 m!7387338))

(declare-fun m!7387340 () Bool)

(assert (=> b!6613768 m!7387340))

(declare-fun m!7387342 () Bool)

(assert (=> b!6613769 m!7387342))

(declare-fun m!7387344 () Bool)

(assert (=> d!2073289 m!7387344))

(assert (=> d!2073289 m!7387186))

(declare-fun m!7387346 () Bool)

(assert (=> d!2073289 m!7387346))

(assert (=> b!6613662 d!2073289))

(declare-fun bs!1695485 () Bool)

(declare-fun d!2073297 () Bool)

(assert (= bs!1695485 (and d!2073297 d!2073263)))

(declare-fun lambda!369428 () Int)

(assert (=> bs!1695485 (= lambda!369428 lambda!369418)))

(declare-fun bs!1695486 () Bool)

(assert (= bs!1695486 (and d!2073297 d!2073265)))

(assert (=> bs!1695486 (= lambda!369428 lambda!369419)))

(declare-fun bs!1695487 () Bool)

(assert (= bs!1695487 (and d!2073297 d!2073289)))

(assert (=> bs!1695487 (= lambda!369428 lambda!369422)))

(declare-fun lt!2417223 () List!65760)

(assert (=> d!2073297 (forall!15682 lt!2417223 lambda!369428)))

(declare-fun e!4001253 () List!65760)

(assert (=> d!2073297 (= lt!2417223 e!4001253)))

(declare-fun c!1219032 () Bool)

(assert (=> d!2073297 (= c!1219032 ((_ is Cons!65637) zl!343))))

(assert (=> d!2073297 (= (unfocusZipperList!1908 zl!343) lt!2417223)))

(declare-fun b!6613774 () Bool)

(assert (=> b!6613774 (= e!4001253 (Cons!65636 (generalisedConcat!2084 (exprs!6371 (h!72085 zl!343))) (unfocusZipperList!1908 (t!379415 zl!343))))))

(declare-fun b!6613775 () Bool)

(assert (=> b!6613775 (= e!4001253 Nil!65636)))

(assert (= (and d!2073297 c!1219032) b!6613774))

(assert (= (and d!2073297 (not c!1219032)) b!6613775))

(declare-fun m!7387350 () Bool)

(assert (=> d!2073297 m!7387350))

(assert (=> b!6613774 m!7387246))

(declare-fun m!7387352 () Bool)

(assert (=> b!6613774 m!7387352))

(assert (=> b!6613662 d!2073297))

(declare-fun bs!1695489 () Bool)

(declare-fun d!2073301 () Bool)

(assert (= bs!1695489 (and d!2073301 d!2073263)))

(declare-fun lambda!369431 () Int)

(assert (=> bs!1695489 (= lambda!369431 lambda!369418)))

(declare-fun bs!1695490 () Bool)

(assert (= bs!1695490 (and d!2073301 d!2073265)))

(assert (=> bs!1695490 (= lambda!369431 lambda!369419)))

(declare-fun bs!1695491 () Bool)

(assert (= bs!1695491 (and d!2073301 d!2073289)))

(assert (=> bs!1695491 (= lambda!369431 lambda!369422)))

(declare-fun bs!1695492 () Bool)

(assert (= bs!1695492 (and d!2073301 d!2073297)))

(assert (=> bs!1695492 (= lambda!369431 lambda!369428)))

(declare-fun e!4001283 () Bool)

(assert (=> d!2073301 e!4001283))

(declare-fun res!2712094 () Bool)

(assert (=> d!2073301 (=> (not res!2712094) (not e!4001283))))

(declare-fun lt!2417226 () Regex!16487)

(assert (=> d!2073301 (= res!2712094 (validRegex!8223 lt!2417226))))

(declare-fun e!4001285 () Regex!16487)

(assert (=> d!2073301 (= lt!2417226 e!4001285)))

(declare-fun c!1219053 () Bool)

(declare-fun e!4001284 () Bool)

(assert (=> d!2073301 (= c!1219053 e!4001284)))

(declare-fun res!2712095 () Bool)

(assert (=> d!2073301 (=> (not res!2712095) (not e!4001284))))

(assert (=> d!2073301 (= res!2712095 ((_ is Cons!65636) (exprs!6371 (h!72085 zl!343))))))

(assert (=> d!2073301 (forall!15682 (exprs!6371 (h!72085 zl!343)) lambda!369431)))

(assert (=> d!2073301 (= (generalisedConcat!2084 (exprs!6371 (h!72085 zl!343))) lt!2417226)))

(declare-fun b!6613824 () Bool)

(declare-fun e!4001288 () Bool)

(assert (=> b!6613824 (= e!4001288 (= lt!2417226 (head!13417 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6613825 () Bool)

(declare-fun e!4001287 () Regex!16487)

(assert (=> b!6613825 (= e!4001287 EmptyExpr!16487)))

(declare-fun b!6613826 () Bool)

(assert (=> b!6613826 (= e!4001284 (isEmpty!37920 (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6613827 () Bool)

(declare-fun isConcat!1383 (Regex!16487) Bool)

(assert (=> b!6613827 (= e!4001288 (isConcat!1383 lt!2417226))))

(declare-fun b!6613828 () Bool)

(assert (=> b!6613828 (= e!4001285 e!4001287)))

(declare-fun c!1219054 () Bool)

(assert (=> b!6613828 (= c!1219054 ((_ is Cons!65636) (exprs!6371 (h!72085 zl!343))))))

(declare-fun b!6613829 () Bool)

(declare-fun e!4001286 () Bool)

(declare-fun isEmptyExpr!1860 (Regex!16487) Bool)

(assert (=> b!6613829 (= e!4001286 (isEmptyExpr!1860 lt!2417226))))

(declare-fun b!6613830 () Bool)

(assert (=> b!6613830 (= e!4001286 e!4001288)))

(declare-fun c!1219055 () Bool)

(assert (=> b!6613830 (= c!1219055 (isEmpty!37920 (tail!12502 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6613831 () Bool)

(assert (=> b!6613831 (= e!4001287 (Concat!25332 (h!72084 (exprs!6371 (h!72085 zl!343))) (generalisedConcat!2084 (t!379414 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun b!6613832 () Bool)

(assert (=> b!6613832 (= e!4001285 (h!72084 (exprs!6371 (h!72085 zl!343))))))

(declare-fun b!6613833 () Bool)

(assert (=> b!6613833 (= e!4001283 e!4001286)))

(declare-fun c!1219052 () Bool)

(assert (=> b!6613833 (= c!1219052 (isEmpty!37920 (exprs!6371 (h!72085 zl!343))))))

(assert (= (and d!2073301 res!2712095) b!6613826))

(assert (= (and d!2073301 c!1219053) b!6613832))

(assert (= (and d!2073301 (not c!1219053)) b!6613828))

(assert (= (and b!6613828 c!1219054) b!6613831))

(assert (= (and b!6613828 (not c!1219054)) b!6613825))

(assert (= (and d!2073301 res!2712094) b!6613833))

(assert (= (and b!6613833 c!1219052) b!6613829))

(assert (= (and b!6613833 (not c!1219052)) b!6613830))

(assert (= (and b!6613830 c!1219055) b!6613824))

(assert (= (and b!6613830 (not c!1219055)) b!6613827))

(declare-fun m!7387368 () Bool)

(assert (=> d!2073301 m!7387368))

(declare-fun m!7387370 () Bool)

(assert (=> d!2073301 m!7387370))

(declare-fun m!7387372 () Bool)

(assert (=> b!6613831 m!7387372))

(declare-fun m!7387374 () Bool)

(assert (=> b!6613829 m!7387374))

(declare-fun m!7387376 () Bool)

(assert (=> b!6613827 m!7387376))

(declare-fun m!7387378 () Bool)

(assert (=> b!6613824 m!7387378))

(assert (=> b!6613826 m!7387222))

(declare-fun m!7387380 () Bool)

(assert (=> b!6613833 m!7387380))

(declare-fun m!7387382 () Bool)

(assert (=> b!6613830 m!7387382))

(assert (=> b!6613830 m!7387382))

(declare-fun m!7387384 () Bool)

(assert (=> b!6613830 m!7387384))

(assert (=> b!6613651 d!2073301))

(declare-fun d!2073307 () Bool)

(declare-fun c!1219056 () Bool)

(assert (=> d!2073307 (= c!1219056 (isEmpty!37921 (t!379416 s!2326)))))

(declare-fun e!4001291 () Bool)

(assert (=> d!2073307 (= (matchZipper!2499 lt!2417206 (t!379416 s!2326)) e!4001291)))

(declare-fun b!6613840 () Bool)

(assert (=> b!6613840 (= e!4001291 (nullableZipper!2227 lt!2417206))))

(declare-fun b!6613841 () Bool)

(assert (=> b!6613841 (= e!4001291 (matchZipper!2499 (derivationStepZipper!2452 lt!2417206 (head!13415 (t!379416 s!2326))) (tail!12500 (t!379416 s!2326))))))

(assert (= (and d!2073307 c!1219056) b!6613840))

(assert (= (and d!2073307 (not c!1219056)) b!6613841))

(assert (=> d!2073307 m!7387308))

(declare-fun m!7387386 () Bool)

(assert (=> b!6613840 m!7387386))

(assert (=> b!6613841 m!7387312))

(assert (=> b!6613841 m!7387312))

(declare-fun m!7387388 () Bool)

(assert (=> b!6613841 m!7387388))

(assert (=> b!6613841 m!7387316))

(assert (=> b!6613841 m!7387388))

(assert (=> b!6613841 m!7387316))

(declare-fun m!7387390 () Bool)

(assert (=> b!6613841 m!7387390))

(assert (=> b!6613642 d!2073307))

(declare-fun d!2073309 () Bool)

(assert (=> d!2073309 (= (isEmpty!37920 (t!379414 (exprs!6371 (h!72085 zl!343)))) ((_ is Nil!65636) (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(assert (=> b!6613661 d!2073309))

(declare-fun bs!1695497 () Bool)

(declare-fun b!6613892 () Bool)

(assert (= bs!1695497 (and b!6613892 b!6613656)))

(declare-fun lambda!369442 () Int)

(assert (=> bs!1695497 (not (= lambda!369442 lambda!369413))))

(assert (=> bs!1695497 (not (= lambda!369442 lambda!369414))))

(assert (=> b!6613892 true))

(assert (=> b!6613892 true))

(declare-fun bs!1695498 () Bool)

(declare-fun b!6613889 () Bool)

(assert (= bs!1695498 (and b!6613889 b!6613656)))

(declare-fun lambda!369443 () Int)

(assert (=> bs!1695498 (not (= lambda!369443 lambda!369413))))

(assert (=> bs!1695498 (= (and (= (regOne!33486 (regOne!33486 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33486 r!7292)) (regTwo!33486 r!7292))) (= lambda!369443 lambda!369414))))

(declare-fun bs!1695499 () Bool)

(assert (= bs!1695499 (and b!6613889 b!6613892)))

(assert (=> bs!1695499 (not (= lambda!369443 lambda!369442))))

(assert (=> b!6613889 true))

(assert (=> b!6613889 true))

(declare-fun e!4001320 () Bool)

(declare-fun call!579413 () Bool)

(assert (=> b!6613889 (= e!4001320 call!579413)))

(declare-fun b!6613890 () Bool)

(declare-fun e!4001319 () Bool)

(declare-fun e!4001323 () Bool)

(assert (=> b!6613890 (= e!4001319 e!4001323)))

(declare-fun res!2712126 () Bool)

(assert (=> b!6613890 (= res!2712126 (matchRSpec!3588 (regOne!33487 (regOne!33486 r!7292)) s!2326))))

(assert (=> b!6613890 (=> res!2712126 e!4001323)))

(declare-fun b!6613891 () Bool)

(declare-fun e!4001321 () Bool)

(declare-fun e!4001325 () Bool)

(assert (=> b!6613891 (= e!4001321 e!4001325)))

(declare-fun res!2712125 () Bool)

(assert (=> b!6613891 (= res!2712125 (not ((_ is EmptyLang!16487) (regOne!33486 r!7292))))))

(assert (=> b!6613891 (=> (not res!2712125) (not e!4001325))))

(declare-fun bm!579408 () Bool)

(declare-fun call!579414 () Bool)

(assert (=> bm!579408 (= call!579414 (isEmpty!37921 s!2326))))

(declare-fun e!4001324 () Bool)

(assert (=> b!6613892 (= e!4001324 call!579413)))

(declare-fun b!6613893 () Bool)

(assert (=> b!6613893 (= e!4001321 call!579414)))

(declare-fun b!6613894 () Bool)

(declare-fun c!1219072 () Bool)

(assert (=> b!6613894 (= c!1219072 ((_ is ElementMatch!16487) (regOne!33486 r!7292)))))

(declare-fun e!4001322 () Bool)

(assert (=> b!6613894 (= e!4001325 e!4001322)))

(declare-fun d!2073311 () Bool)

(declare-fun c!1219069 () Bool)

(assert (=> d!2073311 (= c!1219069 ((_ is EmptyExpr!16487) (regOne!33486 r!7292)))))

(assert (=> d!2073311 (= (matchRSpec!3588 (regOne!33486 r!7292) s!2326) e!4001321)))

(declare-fun b!6613895 () Bool)

(declare-fun c!1219070 () Bool)

(assert (=> b!6613895 (= c!1219070 ((_ is Union!16487) (regOne!33486 r!7292)))))

(assert (=> b!6613895 (= e!4001322 e!4001319)))

(declare-fun b!6613896 () Bool)

(assert (=> b!6613896 (= e!4001319 e!4001320)))

(declare-fun c!1219071 () Bool)

(assert (=> b!6613896 (= c!1219071 ((_ is Star!16487) (regOne!33486 r!7292)))))

(declare-fun b!6613897 () Bool)

(assert (=> b!6613897 (= e!4001322 (= s!2326 (Cons!65638 (c!1218988 (regOne!33486 r!7292)) Nil!65638)))))

(declare-fun b!6613898 () Bool)

(declare-fun res!2712127 () Bool)

(assert (=> b!6613898 (=> res!2712127 e!4001324)))

(assert (=> b!6613898 (= res!2712127 call!579414)))

(assert (=> b!6613898 (= e!4001320 e!4001324)))

(declare-fun b!6613899 () Bool)

(assert (=> b!6613899 (= e!4001323 (matchRSpec!3588 (regTwo!33487 (regOne!33486 r!7292)) s!2326))))

(declare-fun bm!579409 () Bool)

(assert (=> bm!579409 (= call!579413 (Exists!3557 (ite c!1219071 lambda!369442 lambda!369443)))))

(assert (= (and d!2073311 c!1219069) b!6613893))

(assert (= (and d!2073311 (not c!1219069)) b!6613891))

(assert (= (and b!6613891 res!2712125) b!6613894))

(assert (= (and b!6613894 c!1219072) b!6613897))

(assert (= (and b!6613894 (not c!1219072)) b!6613895))

(assert (= (and b!6613895 c!1219070) b!6613890))

(assert (= (and b!6613895 (not c!1219070)) b!6613896))

(assert (= (and b!6613890 (not res!2712126)) b!6613899))

(assert (= (and b!6613896 c!1219071) b!6613898))

(assert (= (and b!6613896 (not c!1219071)) b!6613889))

(assert (= (and b!6613898 (not res!2712127)) b!6613892))

(assert (= (or b!6613892 b!6613889) bm!579409))

(assert (= (or b!6613893 b!6613898) bm!579408))

(declare-fun m!7387404 () Bool)

(assert (=> b!6613890 m!7387404))

(declare-fun m!7387406 () Bool)

(assert (=> bm!579408 m!7387406))

(declare-fun m!7387408 () Bool)

(assert (=> b!6613899 m!7387408))

(declare-fun m!7387410 () Bool)

(assert (=> bm!579409 m!7387410))

(assert (=> b!6613641 d!2073311))

(declare-fun d!2073317 () Bool)

(assert (=> d!2073317 (= (matchR!8670 (regOne!33486 r!7292) s!2326) (matchRSpec!3588 (regOne!33486 r!7292) s!2326))))

(declare-fun lt!2417234 () Unit!159303)

(declare-fun choose!49419 (Regex!16487 List!65762) Unit!159303)

(assert (=> d!2073317 (= lt!2417234 (choose!49419 (regOne!33486 r!7292) s!2326))))

(assert (=> d!2073317 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073317 (= (mainMatchTheorem!3588 (regOne!33486 r!7292) s!2326) lt!2417234)))

(declare-fun bs!1695500 () Bool)

(assert (= bs!1695500 d!2073317))

(assert (=> bs!1695500 m!7387236))

(assert (=> bs!1695500 m!7387238))

(declare-fun m!7387412 () Bool)

(assert (=> bs!1695500 m!7387412))

(declare-fun m!7387414 () Bool)

(assert (=> bs!1695500 m!7387414))

(assert (=> b!6613641 d!2073317))

(declare-fun b!6613995 () Bool)

(declare-fun res!2712186 () Bool)

(declare-fun e!4001379 () Bool)

(assert (=> b!6613995 (=> (not res!2712186) (not e!4001379))))

(assert (=> b!6613995 (= res!2712186 (isEmpty!37921 (tail!12500 s!2326)))))

(declare-fun b!6613996 () Bool)

(declare-fun res!2712185 () Bool)

(declare-fun e!4001378 () Bool)

(assert (=> b!6613996 (=> res!2712185 e!4001378)))

(assert (=> b!6613996 (= res!2712185 e!4001379)))

(declare-fun res!2712183 () Bool)

(assert (=> b!6613996 (=> (not res!2712183) (not e!4001379))))

(declare-fun lt!2417240 () Bool)

(assert (=> b!6613996 (= res!2712183 lt!2417240)))

(declare-fun b!6613997 () Bool)

(declare-fun res!2712181 () Bool)

(assert (=> b!6613997 (=> (not res!2712181) (not e!4001379))))

(declare-fun call!579423 () Bool)

(assert (=> b!6613997 (= res!2712181 (not call!579423))))

(declare-fun b!6613998 () Bool)

(declare-fun e!4001375 () Bool)

(assert (=> b!6613998 (= e!4001375 (nullable!6480 (regOne!33486 r!7292)))))

(declare-fun b!6613999 () Bool)

(declare-fun e!4001376 () Bool)

(assert (=> b!6613999 (= e!4001376 (not (= (head!13415 s!2326) (c!1218988 (regOne!33486 r!7292)))))))

(declare-fun b!6614000 () Bool)

(declare-fun derivativeStep!5167 (Regex!16487 C!33244) Regex!16487)

(assert (=> b!6614000 (= e!4001375 (matchR!8670 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326)) (tail!12500 s!2326)))))

(declare-fun b!6614001 () Bool)

(declare-fun e!4001380 () Bool)

(assert (=> b!6614001 (= e!4001378 e!4001380)))

(declare-fun res!2712184 () Bool)

(assert (=> b!6614001 (=> (not res!2712184) (not e!4001380))))

(assert (=> b!6614001 (= res!2712184 (not lt!2417240))))

(declare-fun b!6614002 () Bool)

(declare-fun e!4001377 () Bool)

(assert (=> b!6614002 (= e!4001377 (not lt!2417240))))

(declare-fun bm!579418 () Bool)

(assert (=> bm!579418 (= call!579423 (isEmpty!37921 s!2326))))

(declare-fun b!6614003 () Bool)

(declare-fun e!4001381 () Bool)

(assert (=> b!6614003 (= e!4001381 (= lt!2417240 call!579423))))

(declare-fun b!6614004 () Bool)

(declare-fun res!2712180 () Bool)

(assert (=> b!6614004 (=> res!2712180 e!4001378)))

(assert (=> b!6614004 (= res!2712180 (not ((_ is ElementMatch!16487) (regOne!33486 r!7292))))))

(assert (=> b!6614004 (= e!4001377 e!4001378)))

(declare-fun d!2073319 () Bool)

(assert (=> d!2073319 e!4001381))

(declare-fun c!1219095 () Bool)

(assert (=> d!2073319 (= c!1219095 ((_ is EmptyExpr!16487) (regOne!33486 r!7292)))))

(assert (=> d!2073319 (= lt!2417240 e!4001375)))

(declare-fun c!1219096 () Bool)

(assert (=> d!2073319 (= c!1219096 (isEmpty!37921 s!2326))))

(assert (=> d!2073319 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073319 (= (matchR!8670 (regOne!33486 r!7292) s!2326) lt!2417240)))

(declare-fun b!6614005 () Bool)

(assert (=> b!6614005 (= e!4001380 e!4001376)))

(declare-fun res!2712179 () Bool)

(assert (=> b!6614005 (=> res!2712179 e!4001376)))

(assert (=> b!6614005 (= res!2712179 call!579423)))

(declare-fun b!6614006 () Bool)

(assert (=> b!6614006 (= e!4001379 (= (head!13415 s!2326) (c!1218988 (regOne!33486 r!7292))))))

(declare-fun b!6614007 () Bool)

(declare-fun res!2712182 () Bool)

(assert (=> b!6614007 (=> res!2712182 e!4001376)))

(assert (=> b!6614007 (= res!2712182 (not (isEmpty!37921 (tail!12500 s!2326))))))

(declare-fun b!6614008 () Bool)

(assert (=> b!6614008 (= e!4001381 e!4001377)))

(declare-fun c!1219097 () Bool)

(assert (=> b!6614008 (= c!1219097 ((_ is EmptyLang!16487) (regOne!33486 r!7292)))))

(assert (= (and d!2073319 c!1219096) b!6613998))

(assert (= (and d!2073319 (not c!1219096)) b!6614000))

(assert (= (and d!2073319 c!1219095) b!6614003))

(assert (= (and d!2073319 (not c!1219095)) b!6614008))

(assert (= (and b!6614008 c!1219097) b!6614002))

(assert (= (and b!6614008 (not c!1219097)) b!6614004))

(assert (= (and b!6614004 (not res!2712180)) b!6613996))

(assert (= (and b!6613996 res!2712183) b!6613997))

(assert (= (and b!6613997 res!2712181) b!6613995))

(assert (= (and b!6613995 res!2712186) b!6614006))

(assert (= (and b!6613996 (not res!2712185)) b!6614001))

(assert (= (and b!6614001 res!2712184) b!6614005))

(assert (= (and b!6614005 (not res!2712179)) b!6614007))

(assert (= (and b!6614007 (not res!2712182)) b!6613999))

(assert (= (or b!6614003 b!6613997 b!6614005) bm!579418))

(assert (=> bm!579418 m!7387406))

(declare-fun m!7387444 () Bool)

(assert (=> b!6614000 m!7387444))

(assert (=> b!6614000 m!7387444))

(declare-fun m!7387446 () Bool)

(assert (=> b!6614000 m!7387446))

(declare-fun m!7387448 () Bool)

(assert (=> b!6614000 m!7387448))

(assert (=> b!6614000 m!7387446))

(assert (=> b!6614000 m!7387448))

(declare-fun m!7387450 () Bool)

(assert (=> b!6614000 m!7387450))

(assert (=> d!2073319 m!7387406))

(assert (=> d!2073319 m!7387414))

(assert (=> b!6613999 m!7387444))

(declare-fun m!7387452 () Bool)

(assert (=> b!6613998 m!7387452))

(assert (=> b!6613995 m!7387448))

(assert (=> b!6613995 m!7387448))

(declare-fun m!7387454 () Bool)

(assert (=> b!6613995 m!7387454))

(assert (=> b!6614006 m!7387444))

(assert (=> b!6614007 m!7387448))

(assert (=> b!6614007 m!7387448))

(assert (=> b!6614007 m!7387454))

(assert (=> b!6613641 d!2073319))

(declare-fun bs!1695509 () Bool)

(declare-fun b!6614012 () Bool)

(assert (= bs!1695509 (and b!6614012 b!6613656)))

(declare-fun lambda!369446 () Int)

(assert (=> bs!1695509 (not (= lambda!369446 lambda!369413))))

(assert (=> bs!1695509 (not (= lambda!369446 lambda!369414))))

(declare-fun bs!1695510 () Bool)

(assert (= bs!1695510 (and b!6614012 b!6613892)))

(assert (=> bs!1695510 (= (and (= (reg!16816 (regTwo!33486 r!7292)) (reg!16816 (regOne!33486 r!7292))) (= (regTwo!33486 r!7292) (regOne!33486 r!7292))) (= lambda!369446 lambda!369442))))

(declare-fun bs!1695511 () Bool)

(assert (= bs!1695511 (and b!6614012 b!6613889)))

(assert (=> bs!1695511 (not (= lambda!369446 lambda!369443))))

(assert (=> b!6614012 true))

(assert (=> b!6614012 true))

(declare-fun bs!1695512 () Bool)

(declare-fun b!6614009 () Bool)

(assert (= bs!1695512 (and b!6614009 b!6613892)))

(declare-fun lambda!369449 () Int)

(assert (=> bs!1695512 (not (= lambda!369449 lambda!369442))))

(declare-fun bs!1695513 () Bool)

(assert (= bs!1695513 (and b!6614009 b!6613656)))

(assert (=> bs!1695513 (not (= lambda!369449 lambda!369413))))

(assert (=> bs!1695513 (= (and (= (regOne!33486 (regTwo!33486 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33486 r!7292)) (regTwo!33486 r!7292))) (= lambda!369449 lambda!369414))))

(declare-fun bs!1695514 () Bool)

(assert (= bs!1695514 (and b!6614009 b!6613889)))

(assert (=> bs!1695514 (= (and (= (regOne!33486 (regTwo!33486 r!7292)) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 (regTwo!33486 r!7292)) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369449 lambda!369443))))

(declare-fun bs!1695515 () Bool)

(assert (= bs!1695515 (and b!6614009 b!6614012)))

(assert (=> bs!1695515 (not (= lambda!369449 lambda!369446))))

(assert (=> b!6614009 true))

(assert (=> b!6614009 true))

(declare-fun e!4001383 () Bool)

(declare-fun call!579424 () Bool)

(assert (=> b!6614009 (= e!4001383 call!579424)))

(declare-fun b!6614010 () Bool)

(declare-fun e!4001382 () Bool)

(declare-fun e!4001386 () Bool)

(assert (=> b!6614010 (= e!4001382 e!4001386)))

(declare-fun res!2712188 () Bool)

(assert (=> b!6614010 (= res!2712188 (matchRSpec!3588 (regOne!33487 (regTwo!33486 r!7292)) s!2326))))

(assert (=> b!6614010 (=> res!2712188 e!4001386)))

(declare-fun b!6614011 () Bool)

(declare-fun e!4001384 () Bool)

(declare-fun e!4001388 () Bool)

(assert (=> b!6614011 (= e!4001384 e!4001388)))

(declare-fun res!2712187 () Bool)

(assert (=> b!6614011 (= res!2712187 (not ((_ is EmptyLang!16487) (regTwo!33486 r!7292))))))

(assert (=> b!6614011 (=> (not res!2712187) (not e!4001388))))

(declare-fun bm!579419 () Bool)

(declare-fun call!579425 () Bool)

(assert (=> bm!579419 (= call!579425 (isEmpty!37921 s!2326))))

(declare-fun e!4001387 () Bool)

(assert (=> b!6614012 (= e!4001387 call!579424)))

(declare-fun b!6614013 () Bool)

(assert (=> b!6614013 (= e!4001384 call!579425)))

(declare-fun b!6614014 () Bool)

(declare-fun c!1219101 () Bool)

(assert (=> b!6614014 (= c!1219101 ((_ is ElementMatch!16487) (regTwo!33486 r!7292)))))

(declare-fun e!4001385 () Bool)

(assert (=> b!6614014 (= e!4001388 e!4001385)))

(declare-fun d!2073329 () Bool)

(declare-fun c!1219098 () Bool)

(assert (=> d!2073329 (= c!1219098 ((_ is EmptyExpr!16487) (regTwo!33486 r!7292)))))

(assert (=> d!2073329 (= (matchRSpec!3588 (regTwo!33486 r!7292) s!2326) e!4001384)))

(declare-fun b!6614015 () Bool)

(declare-fun c!1219099 () Bool)

(assert (=> b!6614015 (= c!1219099 ((_ is Union!16487) (regTwo!33486 r!7292)))))

(assert (=> b!6614015 (= e!4001385 e!4001382)))

(declare-fun b!6614016 () Bool)

(assert (=> b!6614016 (= e!4001382 e!4001383)))

(declare-fun c!1219100 () Bool)

(assert (=> b!6614016 (= c!1219100 ((_ is Star!16487) (regTwo!33486 r!7292)))))

(declare-fun b!6614017 () Bool)

(assert (=> b!6614017 (= e!4001385 (= s!2326 (Cons!65638 (c!1218988 (regTwo!33486 r!7292)) Nil!65638)))))

(declare-fun b!6614018 () Bool)

(declare-fun res!2712189 () Bool)

(assert (=> b!6614018 (=> res!2712189 e!4001387)))

(assert (=> b!6614018 (= res!2712189 call!579425)))

(assert (=> b!6614018 (= e!4001383 e!4001387)))

(declare-fun b!6614019 () Bool)

(assert (=> b!6614019 (= e!4001386 (matchRSpec!3588 (regTwo!33487 (regTwo!33486 r!7292)) s!2326))))

(declare-fun bm!579420 () Bool)

(assert (=> bm!579420 (= call!579424 (Exists!3557 (ite c!1219100 lambda!369446 lambda!369449)))))

(assert (= (and d!2073329 c!1219098) b!6614013))

(assert (= (and d!2073329 (not c!1219098)) b!6614011))

(assert (= (and b!6614011 res!2712187) b!6614014))

(assert (= (and b!6614014 c!1219101) b!6614017))

(assert (= (and b!6614014 (not c!1219101)) b!6614015))

(assert (= (and b!6614015 c!1219099) b!6614010))

(assert (= (and b!6614015 (not c!1219099)) b!6614016))

(assert (= (and b!6614010 (not res!2712188)) b!6614019))

(assert (= (and b!6614016 c!1219100) b!6614018))

(assert (= (and b!6614016 (not c!1219100)) b!6614009))

(assert (= (and b!6614018 (not res!2712189)) b!6614012))

(assert (= (or b!6614012 b!6614009) bm!579420))

(assert (= (or b!6614013 b!6614018) bm!579419))

(declare-fun m!7387456 () Bool)

(assert (=> b!6614010 m!7387456))

(assert (=> bm!579419 m!7387406))

(declare-fun m!7387458 () Bool)

(assert (=> b!6614019 m!7387458))

(declare-fun m!7387460 () Bool)

(assert (=> bm!579420 m!7387460))

(assert (=> b!6613641 d!2073329))

(declare-fun b!6614040 () Bool)

(declare-fun res!2712201 () Bool)

(declare-fun e!4001405 () Bool)

(assert (=> b!6614040 (=> (not res!2712201) (not e!4001405))))

(assert (=> b!6614040 (= res!2712201 (isEmpty!37921 (tail!12500 s!2326)))))

(declare-fun b!6614041 () Bool)

(declare-fun res!2712200 () Bool)

(declare-fun e!4001404 () Bool)

(assert (=> b!6614041 (=> res!2712200 e!4001404)))

(assert (=> b!6614041 (= res!2712200 e!4001405)))

(declare-fun res!2712198 () Bool)

(assert (=> b!6614041 (=> (not res!2712198) (not e!4001405))))

(declare-fun lt!2417243 () Bool)

(assert (=> b!6614041 (= res!2712198 lt!2417243)))

(declare-fun b!6614042 () Bool)

(declare-fun res!2712196 () Bool)

(assert (=> b!6614042 (=> (not res!2712196) (not e!4001405))))

(declare-fun call!579426 () Bool)

(assert (=> b!6614042 (= res!2712196 (not call!579426))))

(declare-fun b!6614043 () Bool)

(declare-fun e!4001401 () Bool)

(assert (=> b!6614043 (= e!4001401 (nullable!6480 (regTwo!33486 r!7292)))))

(declare-fun b!6614044 () Bool)

(declare-fun e!4001402 () Bool)

(assert (=> b!6614044 (= e!4001402 (not (= (head!13415 s!2326) (c!1218988 (regTwo!33486 r!7292)))))))

(declare-fun b!6614045 () Bool)

(assert (=> b!6614045 (= e!4001401 (matchR!8670 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326)) (tail!12500 s!2326)))))

(declare-fun b!6614046 () Bool)

(declare-fun e!4001406 () Bool)

(assert (=> b!6614046 (= e!4001404 e!4001406)))

(declare-fun res!2712199 () Bool)

(assert (=> b!6614046 (=> (not res!2712199) (not e!4001406))))

(assert (=> b!6614046 (= res!2712199 (not lt!2417243))))

(declare-fun b!6614047 () Bool)

(declare-fun e!4001403 () Bool)

(assert (=> b!6614047 (= e!4001403 (not lt!2417243))))

(declare-fun bm!579421 () Bool)

(assert (=> bm!579421 (= call!579426 (isEmpty!37921 s!2326))))

(declare-fun b!6614048 () Bool)

(declare-fun e!4001407 () Bool)

(assert (=> b!6614048 (= e!4001407 (= lt!2417243 call!579426))))

(declare-fun b!6614049 () Bool)

(declare-fun res!2712195 () Bool)

(assert (=> b!6614049 (=> res!2712195 e!4001404)))

(assert (=> b!6614049 (= res!2712195 (not ((_ is ElementMatch!16487) (regTwo!33486 r!7292))))))

(assert (=> b!6614049 (= e!4001403 e!4001404)))

(declare-fun d!2073331 () Bool)

(assert (=> d!2073331 e!4001407))

(declare-fun c!1219110 () Bool)

(assert (=> d!2073331 (= c!1219110 ((_ is EmptyExpr!16487) (regTwo!33486 r!7292)))))

(assert (=> d!2073331 (= lt!2417243 e!4001401)))

(declare-fun c!1219111 () Bool)

(assert (=> d!2073331 (= c!1219111 (isEmpty!37921 s!2326))))

(assert (=> d!2073331 (validRegex!8223 (regTwo!33486 r!7292))))

(assert (=> d!2073331 (= (matchR!8670 (regTwo!33486 r!7292) s!2326) lt!2417243)))

(declare-fun b!6614050 () Bool)

(assert (=> b!6614050 (= e!4001406 e!4001402)))

(declare-fun res!2712194 () Bool)

(assert (=> b!6614050 (=> res!2712194 e!4001402)))

(assert (=> b!6614050 (= res!2712194 call!579426)))

(declare-fun b!6614051 () Bool)

(assert (=> b!6614051 (= e!4001405 (= (head!13415 s!2326) (c!1218988 (regTwo!33486 r!7292))))))

(declare-fun b!6614052 () Bool)

(declare-fun res!2712197 () Bool)

(assert (=> b!6614052 (=> res!2712197 e!4001402)))

(assert (=> b!6614052 (= res!2712197 (not (isEmpty!37921 (tail!12500 s!2326))))))

(declare-fun b!6614053 () Bool)

(assert (=> b!6614053 (= e!4001407 e!4001403)))

(declare-fun c!1219112 () Bool)

(assert (=> b!6614053 (= c!1219112 ((_ is EmptyLang!16487) (regTwo!33486 r!7292)))))

(assert (= (and d!2073331 c!1219111) b!6614043))

(assert (= (and d!2073331 (not c!1219111)) b!6614045))

(assert (= (and d!2073331 c!1219110) b!6614048))

(assert (= (and d!2073331 (not c!1219110)) b!6614053))

(assert (= (and b!6614053 c!1219112) b!6614047))

(assert (= (and b!6614053 (not c!1219112)) b!6614049))

(assert (= (and b!6614049 (not res!2712195)) b!6614041))

(assert (= (and b!6614041 res!2712198) b!6614042))

(assert (= (and b!6614042 res!2712196) b!6614040))

(assert (= (and b!6614040 res!2712201) b!6614051))

(assert (= (and b!6614041 (not res!2712200)) b!6614046))

(assert (= (and b!6614046 res!2712199) b!6614050))

(assert (= (and b!6614050 (not res!2712194)) b!6614052))

(assert (= (and b!6614052 (not res!2712197)) b!6614044))

(assert (= (or b!6614048 b!6614042 b!6614050) bm!579421))

(assert (=> bm!579421 m!7387406))

(assert (=> b!6614045 m!7387444))

(assert (=> b!6614045 m!7387444))

(declare-fun m!7387462 () Bool)

(assert (=> b!6614045 m!7387462))

(assert (=> b!6614045 m!7387448))

(assert (=> b!6614045 m!7387462))

(assert (=> b!6614045 m!7387448))

(declare-fun m!7387464 () Bool)

(assert (=> b!6614045 m!7387464))

(assert (=> d!2073331 m!7387406))

(declare-fun m!7387466 () Bool)

(assert (=> d!2073331 m!7387466))

(assert (=> b!6614044 m!7387444))

(declare-fun m!7387468 () Bool)

(assert (=> b!6614043 m!7387468))

(assert (=> b!6614040 m!7387448))

(assert (=> b!6614040 m!7387448))

(assert (=> b!6614040 m!7387454))

(assert (=> b!6614051 m!7387444))

(assert (=> b!6614052 m!7387448))

(assert (=> b!6614052 m!7387448))

(assert (=> b!6614052 m!7387454))

(assert (=> b!6613641 d!2073331))

(declare-fun d!2073333 () Bool)

(assert (=> d!2073333 (= (matchR!8670 (regTwo!33486 r!7292) s!2326) (matchRSpec!3588 (regTwo!33486 r!7292) s!2326))))

(declare-fun lt!2417244 () Unit!159303)

(assert (=> d!2073333 (= lt!2417244 (choose!49419 (regTwo!33486 r!7292) s!2326))))

(assert (=> d!2073333 (validRegex!8223 (regTwo!33486 r!7292))))

(assert (=> d!2073333 (= (mainMatchTheorem!3588 (regTwo!33486 r!7292) s!2326) lt!2417244)))

(declare-fun bs!1695516 () Bool)

(assert (= bs!1695516 d!2073333))

(assert (=> bs!1695516 m!7387230))

(assert (=> bs!1695516 m!7387240))

(declare-fun m!7387470 () Bool)

(assert (=> bs!1695516 m!7387470))

(assert (=> bs!1695516 m!7387466))

(assert (=> b!6613641 d!2073333))

(declare-fun b!6614088 () Bool)

(declare-fun e!4001436 () Bool)

(declare-fun e!4001432 () Bool)

(assert (=> b!6614088 (= e!4001436 e!4001432)))

(declare-fun res!2712214 () Bool)

(assert (=> b!6614088 (=> (not res!2712214) (not e!4001432))))

(declare-fun call!579433 () Bool)

(assert (=> b!6614088 (= res!2712214 call!579433)))

(declare-fun b!6614089 () Bool)

(declare-fun e!4001434 () Bool)

(declare-fun e!4001433 () Bool)

(assert (=> b!6614089 (= e!4001434 e!4001433)))

(declare-fun c!1219125 () Bool)

(assert (=> b!6614089 (= c!1219125 ((_ is Union!16487) r!7292))))

(declare-fun bm!579428 () Bool)

(declare-fun call!579434 () Bool)

(declare-fun call!579435 () Bool)

(assert (=> bm!579428 (= call!579434 call!579435)))

(declare-fun b!6614090 () Bool)

(declare-fun e!4001437 () Bool)

(assert (=> b!6614090 (= e!4001434 e!4001437)))

(declare-fun res!2712218 () Bool)

(assert (=> b!6614090 (= res!2712218 (not (nullable!6480 (reg!16816 r!7292))))))

(assert (=> b!6614090 (=> (not res!2712218) (not e!4001437))))

(declare-fun b!6614091 () Bool)

(declare-fun e!4001435 () Bool)

(assert (=> b!6614091 (= e!4001435 e!4001434)))

(declare-fun c!1219124 () Bool)

(assert (=> b!6614091 (= c!1219124 ((_ is Star!16487) r!7292))))

(declare-fun bm!579429 () Bool)

(assert (=> bm!579429 (= call!579435 (validRegex!8223 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))))))

(declare-fun b!6614092 () Bool)

(declare-fun e!4001431 () Bool)

(assert (=> b!6614092 (= e!4001431 call!579434)))

(declare-fun b!6614093 () Bool)

(declare-fun res!2712215 () Bool)

(assert (=> b!6614093 (=> (not res!2712215) (not e!4001431))))

(assert (=> b!6614093 (= res!2712215 call!579433)))

(assert (=> b!6614093 (= e!4001433 e!4001431)))

(declare-fun bm!579430 () Bool)

(assert (=> bm!579430 (= call!579433 (validRegex!8223 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))))))

(declare-fun b!6614095 () Bool)

(declare-fun res!2712217 () Bool)

(assert (=> b!6614095 (=> res!2712217 e!4001436)))

(assert (=> b!6614095 (= res!2712217 (not ((_ is Concat!25332) r!7292)))))

(assert (=> b!6614095 (= e!4001433 e!4001436)))

(declare-fun b!6614096 () Bool)

(assert (=> b!6614096 (= e!4001432 call!579434)))

(declare-fun b!6614094 () Bool)

(assert (=> b!6614094 (= e!4001437 call!579435)))

(declare-fun d!2073335 () Bool)

(declare-fun res!2712216 () Bool)

(assert (=> d!2073335 (=> res!2712216 e!4001435)))

(assert (=> d!2073335 (= res!2712216 ((_ is ElementMatch!16487) r!7292))))

(assert (=> d!2073335 (= (validRegex!8223 r!7292) e!4001435)))

(assert (= (and d!2073335 (not res!2712216)) b!6614091))

(assert (= (and b!6614091 c!1219124) b!6614090))

(assert (= (and b!6614091 (not c!1219124)) b!6614089))

(assert (= (and b!6614090 res!2712218) b!6614094))

(assert (= (and b!6614089 c!1219125) b!6614093))

(assert (= (and b!6614089 (not c!1219125)) b!6614095))

(assert (= (and b!6614093 res!2712215) b!6614092))

(assert (= (and b!6614095 (not res!2712217)) b!6614088))

(assert (= (and b!6614088 res!2712214) b!6614096))

(assert (= (or b!6614092 b!6614096) bm!579428))

(assert (= (or b!6614093 b!6614088) bm!579430))

(assert (= (or b!6614094 bm!579428) bm!579429))

(declare-fun m!7387498 () Bool)

(assert (=> b!6614090 m!7387498))

(declare-fun m!7387500 () Bool)

(assert (=> bm!579429 m!7387500))

(declare-fun m!7387502 () Bool)

(assert (=> bm!579430 m!7387502))

(assert (=> start!646466 d!2073335))

(declare-fun d!2073343 () Bool)

(assert (=> d!2073343 (= (isEmpty!37919 (t!379415 zl!343)) ((_ is Nil!65637) (t!379415 zl!343)))))

(assert (=> b!6613640 d!2073343))

(declare-fun bs!1695524 () Bool)

(declare-fun b!6614100 () Bool)

(assert (= bs!1695524 (and b!6614100 b!6613892)))

(declare-fun lambda!369455 () Int)

(assert (=> bs!1695524 (= (and (= (reg!16816 r!7292) (reg!16816 (regOne!33486 r!7292))) (= r!7292 (regOne!33486 r!7292))) (= lambda!369455 lambda!369442))))

(declare-fun bs!1695525 () Bool)

(assert (= bs!1695525 (and b!6614100 b!6614009)))

(assert (=> bs!1695525 (not (= lambda!369455 lambda!369449))))

(declare-fun bs!1695526 () Bool)

(assert (= bs!1695526 (and b!6614100 b!6613656)))

(assert (=> bs!1695526 (not (= lambda!369455 lambda!369413))))

(assert (=> bs!1695526 (not (= lambda!369455 lambda!369414))))

(declare-fun bs!1695527 () Bool)

(assert (= bs!1695527 (and b!6614100 b!6613889)))

(assert (=> bs!1695527 (not (= lambda!369455 lambda!369443))))

(declare-fun bs!1695528 () Bool)

(assert (= bs!1695528 (and b!6614100 b!6614012)))

(assert (=> bs!1695528 (= (and (= (reg!16816 r!7292) (reg!16816 (regTwo!33486 r!7292))) (= r!7292 (regTwo!33486 r!7292))) (= lambda!369455 lambda!369446))))

(assert (=> b!6614100 true))

(assert (=> b!6614100 true))

(declare-fun bs!1695529 () Bool)

(declare-fun b!6614097 () Bool)

(assert (= bs!1695529 (and b!6614097 b!6613892)))

(declare-fun lambda!369456 () Int)

(assert (=> bs!1695529 (not (= lambda!369456 lambda!369442))))

(declare-fun bs!1695530 () Bool)

(assert (= bs!1695530 (and b!6614097 b!6614009)))

(assert (=> bs!1695530 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 r!7292) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369456 lambda!369449))))

(declare-fun bs!1695531 () Bool)

(assert (= bs!1695531 (and b!6614097 b!6614100)))

(assert (=> bs!1695531 (not (= lambda!369456 lambda!369455))))

(declare-fun bs!1695532 () Bool)

(assert (= bs!1695532 (and b!6614097 b!6613656)))

(assert (=> bs!1695532 (not (= lambda!369456 lambda!369413))))

(assert (=> bs!1695532 (= lambda!369456 lambda!369414)))

(declare-fun bs!1695533 () Bool)

(assert (= bs!1695533 (and b!6614097 b!6613889)))

(assert (=> bs!1695533 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 r!7292) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369456 lambda!369443))))

(declare-fun bs!1695534 () Bool)

(assert (= bs!1695534 (and b!6614097 b!6614012)))

(assert (=> bs!1695534 (not (= lambda!369456 lambda!369446))))

(assert (=> b!6614097 true))

(assert (=> b!6614097 true))

(declare-fun e!4001439 () Bool)

(declare-fun call!579436 () Bool)

(assert (=> b!6614097 (= e!4001439 call!579436)))

(declare-fun b!6614098 () Bool)

(declare-fun e!4001438 () Bool)

(declare-fun e!4001442 () Bool)

(assert (=> b!6614098 (= e!4001438 e!4001442)))

(declare-fun res!2712220 () Bool)

(assert (=> b!6614098 (= res!2712220 (matchRSpec!3588 (regOne!33487 r!7292) s!2326))))

(assert (=> b!6614098 (=> res!2712220 e!4001442)))

(declare-fun b!6614099 () Bool)

(declare-fun e!4001440 () Bool)

(declare-fun e!4001444 () Bool)

(assert (=> b!6614099 (= e!4001440 e!4001444)))

(declare-fun res!2712219 () Bool)

(assert (=> b!6614099 (= res!2712219 (not ((_ is EmptyLang!16487) r!7292)))))

(assert (=> b!6614099 (=> (not res!2712219) (not e!4001444))))

(declare-fun bm!579431 () Bool)

(declare-fun call!579437 () Bool)

(assert (=> bm!579431 (= call!579437 (isEmpty!37921 s!2326))))

(declare-fun e!4001443 () Bool)

(assert (=> b!6614100 (= e!4001443 call!579436)))

(declare-fun b!6614101 () Bool)

(assert (=> b!6614101 (= e!4001440 call!579437)))

(declare-fun b!6614102 () Bool)

(declare-fun c!1219129 () Bool)

(assert (=> b!6614102 (= c!1219129 ((_ is ElementMatch!16487) r!7292))))

(declare-fun e!4001441 () Bool)

(assert (=> b!6614102 (= e!4001444 e!4001441)))

(declare-fun d!2073345 () Bool)

(declare-fun c!1219126 () Bool)

(assert (=> d!2073345 (= c!1219126 ((_ is EmptyExpr!16487) r!7292))))

(assert (=> d!2073345 (= (matchRSpec!3588 r!7292 s!2326) e!4001440)))

(declare-fun b!6614103 () Bool)

(declare-fun c!1219127 () Bool)

(assert (=> b!6614103 (= c!1219127 ((_ is Union!16487) r!7292))))

(assert (=> b!6614103 (= e!4001441 e!4001438)))

(declare-fun b!6614104 () Bool)

(assert (=> b!6614104 (= e!4001438 e!4001439)))

(declare-fun c!1219128 () Bool)

(assert (=> b!6614104 (= c!1219128 ((_ is Star!16487) r!7292))))

(declare-fun b!6614105 () Bool)

(assert (=> b!6614105 (= e!4001441 (= s!2326 (Cons!65638 (c!1218988 r!7292) Nil!65638)))))

(declare-fun b!6614106 () Bool)

(declare-fun res!2712221 () Bool)

(assert (=> b!6614106 (=> res!2712221 e!4001443)))

(assert (=> b!6614106 (= res!2712221 call!579437)))

(assert (=> b!6614106 (= e!4001439 e!4001443)))

(declare-fun b!6614107 () Bool)

(assert (=> b!6614107 (= e!4001442 (matchRSpec!3588 (regTwo!33487 r!7292) s!2326))))

(declare-fun bm!579432 () Bool)

(assert (=> bm!579432 (= call!579436 (Exists!3557 (ite c!1219128 lambda!369455 lambda!369456)))))

(assert (= (and d!2073345 c!1219126) b!6614101))

(assert (= (and d!2073345 (not c!1219126)) b!6614099))

(assert (= (and b!6614099 res!2712219) b!6614102))

(assert (= (and b!6614102 c!1219129) b!6614105))

(assert (= (and b!6614102 (not c!1219129)) b!6614103))

(assert (= (and b!6614103 c!1219127) b!6614098))

(assert (= (and b!6614103 (not c!1219127)) b!6614104))

(assert (= (and b!6614098 (not res!2712220)) b!6614107))

(assert (= (and b!6614104 c!1219128) b!6614106))

(assert (= (and b!6614104 (not c!1219128)) b!6614097))

(assert (= (and b!6614106 (not res!2712221)) b!6614100))

(assert (= (or b!6614100 b!6614097) bm!579432))

(assert (= (or b!6614101 b!6614106) bm!579431))

(declare-fun m!7387512 () Bool)

(assert (=> b!6614098 m!7387512))

(assert (=> bm!579431 m!7387406))

(declare-fun m!7387514 () Bool)

(assert (=> b!6614107 m!7387514))

(declare-fun m!7387516 () Bool)

(assert (=> bm!579432 m!7387516))

(assert (=> b!6613659 d!2073345))

(declare-fun b!6614115 () Bool)

(declare-fun res!2712232 () Bool)

(declare-fun e!4001454 () Bool)

(assert (=> b!6614115 (=> (not res!2712232) (not e!4001454))))

(assert (=> b!6614115 (= res!2712232 (isEmpty!37921 (tail!12500 s!2326)))))

(declare-fun b!6614116 () Bool)

(declare-fun res!2712231 () Bool)

(declare-fun e!4001453 () Bool)

(assert (=> b!6614116 (=> res!2712231 e!4001453)))

(assert (=> b!6614116 (= res!2712231 e!4001454)))

(declare-fun res!2712229 () Bool)

(assert (=> b!6614116 (=> (not res!2712229) (not e!4001454))))

(declare-fun lt!2417252 () Bool)

(assert (=> b!6614116 (= res!2712229 lt!2417252)))

(declare-fun b!6614117 () Bool)

(declare-fun res!2712227 () Bool)

(assert (=> b!6614117 (=> (not res!2712227) (not e!4001454))))

(declare-fun call!579438 () Bool)

(assert (=> b!6614117 (= res!2712227 (not call!579438))))

(declare-fun b!6614118 () Bool)

(declare-fun e!4001450 () Bool)

(assert (=> b!6614118 (= e!4001450 (nullable!6480 r!7292))))

(declare-fun b!6614119 () Bool)

(declare-fun e!4001451 () Bool)

(assert (=> b!6614119 (= e!4001451 (not (= (head!13415 s!2326) (c!1218988 r!7292))))))

(declare-fun b!6614120 () Bool)

(assert (=> b!6614120 (= e!4001450 (matchR!8670 (derivativeStep!5167 r!7292 (head!13415 s!2326)) (tail!12500 s!2326)))))

(declare-fun b!6614121 () Bool)

(declare-fun e!4001455 () Bool)

(assert (=> b!6614121 (= e!4001453 e!4001455)))

(declare-fun res!2712230 () Bool)

(assert (=> b!6614121 (=> (not res!2712230) (not e!4001455))))

(assert (=> b!6614121 (= res!2712230 (not lt!2417252))))

(declare-fun b!6614122 () Bool)

(declare-fun e!4001452 () Bool)

(assert (=> b!6614122 (= e!4001452 (not lt!2417252))))

(declare-fun bm!579433 () Bool)

(assert (=> bm!579433 (= call!579438 (isEmpty!37921 s!2326))))

(declare-fun b!6614123 () Bool)

(declare-fun e!4001456 () Bool)

(assert (=> b!6614123 (= e!4001456 (= lt!2417252 call!579438))))

(declare-fun b!6614124 () Bool)

(declare-fun res!2712226 () Bool)

(assert (=> b!6614124 (=> res!2712226 e!4001453)))

(assert (=> b!6614124 (= res!2712226 (not ((_ is ElementMatch!16487) r!7292)))))

(assert (=> b!6614124 (= e!4001452 e!4001453)))

(declare-fun d!2073351 () Bool)

(assert (=> d!2073351 e!4001456))

(declare-fun c!1219132 () Bool)

(assert (=> d!2073351 (= c!1219132 ((_ is EmptyExpr!16487) r!7292))))

(assert (=> d!2073351 (= lt!2417252 e!4001450)))

(declare-fun c!1219133 () Bool)

(assert (=> d!2073351 (= c!1219133 (isEmpty!37921 s!2326))))

(assert (=> d!2073351 (validRegex!8223 r!7292)))

(assert (=> d!2073351 (= (matchR!8670 r!7292 s!2326) lt!2417252)))

(declare-fun b!6614125 () Bool)

(assert (=> b!6614125 (= e!4001455 e!4001451)))

(declare-fun res!2712225 () Bool)

(assert (=> b!6614125 (=> res!2712225 e!4001451)))

(assert (=> b!6614125 (= res!2712225 call!579438)))

(declare-fun b!6614126 () Bool)

(assert (=> b!6614126 (= e!4001454 (= (head!13415 s!2326) (c!1218988 r!7292)))))

(declare-fun b!6614127 () Bool)

(declare-fun res!2712228 () Bool)

(assert (=> b!6614127 (=> res!2712228 e!4001451)))

(assert (=> b!6614127 (= res!2712228 (not (isEmpty!37921 (tail!12500 s!2326))))))

(declare-fun b!6614128 () Bool)

(assert (=> b!6614128 (= e!4001456 e!4001452)))

(declare-fun c!1219134 () Bool)

(assert (=> b!6614128 (= c!1219134 ((_ is EmptyLang!16487) r!7292))))

(assert (= (and d!2073351 c!1219133) b!6614118))

(assert (= (and d!2073351 (not c!1219133)) b!6614120))

(assert (= (and d!2073351 c!1219132) b!6614123))

(assert (= (and d!2073351 (not c!1219132)) b!6614128))

(assert (= (and b!6614128 c!1219134) b!6614122))

(assert (= (and b!6614128 (not c!1219134)) b!6614124))

(assert (= (and b!6614124 (not res!2712226)) b!6614116))

(assert (= (and b!6614116 res!2712229) b!6614117))

(assert (= (and b!6614117 res!2712227) b!6614115))

(assert (= (and b!6614115 res!2712232) b!6614126))

(assert (= (and b!6614116 (not res!2712231)) b!6614121))

(assert (= (and b!6614121 res!2712230) b!6614125))

(assert (= (and b!6614125 (not res!2712225)) b!6614127))

(assert (= (and b!6614127 (not res!2712228)) b!6614119))

(assert (= (or b!6614123 b!6614117 b!6614125) bm!579433))

(assert (=> bm!579433 m!7387406))

(assert (=> b!6614120 m!7387444))

(assert (=> b!6614120 m!7387444))

(declare-fun m!7387526 () Bool)

(assert (=> b!6614120 m!7387526))

(assert (=> b!6614120 m!7387448))

(assert (=> b!6614120 m!7387526))

(assert (=> b!6614120 m!7387448))

(declare-fun m!7387528 () Bool)

(assert (=> b!6614120 m!7387528))

(assert (=> d!2073351 m!7387406))

(assert (=> d!2073351 m!7387248))

(assert (=> b!6614119 m!7387444))

(declare-fun m!7387530 () Bool)

(assert (=> b!6614118 m!7387530))

(assert (=> b!6614115 m!7387448))

(assert (=> b!6614115 m!7387448))

(assert (=> b!6614115 m!7387454))

(assert (=> b!6614126 m!7387444))

(assert (=> b!6614127 m!7387448))

(assert (=> b!6614127 m!7387448))

(assert (=> b!6614127 m!7387454))

(assert (=> b!6613659 d!2073351))

(declare-fun d!2073357 () Bool)

(assert (=> d!2073357 (= (matchR!8670 r!7292 s!2326) (matchRSpec!3588 r!7292 s!2326))))

(declare-fun lt!2417253 () Unit!159303)

(assert (=> d!2073357 (= lt!2417253 (choose!49419 r!7292 s!2326))))

(assert (=> d!2073357 (validRegex!8223 r!7292)))

(assert (=> d!2073357 (= (mainMatchTheorem!3588 r!7292 s!2326) lt!2417253)))

(declare-fun bs!1695540 () Bool)

(assert (= bs!1695540 d!2073357))

(assert (=> bs!1695540 m!7387226))

(assert (=> bs!1695540 m!7387224))

(declare-fun m!7387532 () Bool)

(assert (=> bs!1695540 m!7387532))

(assert (=> bs!1695540 m!7387248))

(assert (=> b!6613659 d!2073357))

(declare-fun bs!1695541 () Bool)

(declare-fun d!2073359 () Bool)

(assert (= bs!1695541 (and d!2073359 d!2073301)))

(declare-fun lambda!369458 () Int)

(assert (=> bs!1695541 (= lambda!369458 lambda!369431)))

(declare-fun bs!1695542 () Bool)

(assert (= bs!1695542 (and d!2073359 d!2073289)))

(assert (=> bs!1695542 (= lambda!369458 lambda!369422)))

(declare-fun bs!1695543 () Bool)

(assert (= bs!1695543 (and d!2073359 d!2073263)))

(assert (=> bs!1695543 (= lambda!369458 lambda!369418)))

(declare-fun bs!1695544 () Bool)

(assert (= bs!1695544 (and d!2073359 d!2073265)))

(assert (=> bs!1695544 (= lambda!369458 lambda!369419)))

(declare-fun bs!1695545 () Bool)

(assert (= bs!1695545 (and d!2073359 d!2073297)))

(assert (=> bs!1695545 (= lambda!369458 lambda!369428)))

(assert (=> d!2073359 (= (inv!84464 (h!72085 zl!343)) (forall!15682 (exprs!6371 (h!72085 zl!343)) lambda!369458))))

(declare-fun bs!1695546 () Bool)

(assert (= bs!1695546 d!2073359))

(declare-fun m!7387534 () Bool)

(assert (=> bs!1695546 m!7387534))

(assert (=> b!6613648 d!2073359))

(declare-fun d!2073361 () Bool)

(declare-fun e!4001459 () Bool)

(assert (=> d!2073361 e!4001459))

(declare-fun res!2712235 () Bool)

(assert (=> d!2073361 (=> (not res!2712235) (not e!4001459))))

(declare-fun lt!2417258 () List!65761)

(declare-fun noDuplicate!2287 (List!65761) Bool)

(assert (=> d!2073361 (= res!2712235 (noDuplicate!2287 lt!2417258))))

(declare-fun choose!49422 ((InoxSet Context!11742)) List!65761)

(assert (=> d!2073361 (= lt!2417258 (choose!49422 z!1189))))

(assert (=> d!2073361 (= (toList!10271 z!1189) lt!2417258)))

(declare-fun b!6614131 () Bool)

(declare-fun content!12661 (List!65761) (InoxSet Context!11742))

(assert (=> b!6614131 (= e!4001459 (= (content!12661 lt!2417258) z!1189))))

(assert (= (and d!2073361 res!2712235) b!6614131))

(declare-fun m!7387536 () Bool)

(assert (=> d!2073361 m!7387536))

(declare-fun m!7387538 () Bool)

(assert (=> d!2073361 m!7387538))

(declare-fun m!7387542 () Bool)

(assert (=> b!6614131 m!7387542))

(assert (=> b!6613647 d!2073361))

(assert (=> b!6613646 d!2073285))

(declare-fun d!2073365 () Bool)

(assert (=> d!2073365 (not (matchZipper!2499 lt!2417194 (t!379416 s!2326)))))

(declare-fun lt!2417262 () Unit!159303)

(declare-fun choose!49423 ((InoxSet Context!11742) List!65762) Unit!159303)

(assert (=> d!2073365 (= lt!2417262 (choose!49423 lt!2417194 (t!379416 s!2326)))))

(assert (=> d!2073365 (= lt!2417194 ((as const (Array Context!11742 Bool)) false))))

(assert (=> d!2073365 (= (lemmaEmptyZipperMatchesNothing!82 lt!2417194 (t!379416 s!2326)) lt!2417262)))

(declare-fun bs!1695559 () Bool)

(assert (= bs!1695559 d!2073365))

(assert (=> bs!1695559 m!7387208))

(declare-fun m!7387544 () Bool)

(assert (=> bs!1695559 m!7387544))

(assert (=> b!6613646 d!2073365))

(declare-fun d!2073367 () Bool)

(declare-fun lt!2417267 () Regex!16487)

(assert (=> d!2073367 (validRegex!8223 lt!2417267)))

(assert (=> d!2073367 (= lt!2417267 (generalisedUnion!2331 (unfocusZipperList!1908 zl!343)))))

(assert (=> d!2073367 (= (unfocusZipper!2229 zl!343) lt!2417267)))

(declare-fun bs!1695561 () Bool)

(assert (= bs!1695561 d!2073367))

(declare-fun m!7387560 () Bool)

(assert (=> bs!1695561 m!7387560))

(assert (=> bs!1695561 m!7387186))

(assert (=> bs!1695561 m!7387186))

(assert (=> bs!1695561 m!7387188))

(assert (=> b!6613637 d!2073367))

(declare-fun d!2073375 () Bool)

(declare-fun e!4001502 () Bool)

(assert (=> d!2073375 e!4001502))

(declare-fun res!2712270 () Bool)

(assert (=> d!2073375 (=> res!2712270 e!4001502)))

(declare-fun e!4001503 () Bool)

(assert (=> d!2073375 (= res!2712270 e!4001503)))

(declare-fun res!2712276 () Bool)

(assert (=> d!2073375 (=> (not res!2712276) (not e!4001503))))

(declare-fun lt!2417280 () Option!16378)

(assert (=> d!2073375 (= res!2712276 (isDefined!13081 lt!2417280))))

(declare-fun e!4001498 () Option!16378)

(assert (=> d!2073375 (= lt!2417280 e!4001498)))

(declare-fun c!1219153 () Bool)

(declare-fun e!4001501 () Bool)

(assert (=> d!2073375 (= c!1219153 e!4001501)))

(declare-fun res!2712271 () Bool)

(assert (=> d!2073375 (=> (not res!2712271) (not e!4001501))))

(assert (=> d!2073375 (= res!2712271 (matchR!8670 (regOne!33486 r!7292) Nil!65638))))

(assert (=> d!2073375 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073375 (= (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326) lt!2417280)))

(declare-fun b!6614197 () Bool)

(declare-fun res!2712267 () Bool)

(assert (=> b!6614197 (=> (not res!2712267) (not e!4001503))))

(declare-fun get!22812 (Option!16378) tuple2!66932)

(assert (=> b!6614197 (= res!2712267 (matchR!8670 (regTwo!33486 r!7292) (_2!36769 (get!22812 lt!2417280))))))

(declare-fun b!6614199 () Bool)

(declare-fun lt!2417282 () Unit!159303)

(declare-fun lt!2417285 () Unit!159303)

(assert (=> b!6614199 (= lt!2417282 lt!2417285)))

(declare-fun ++!14637 (List!65762 List!65762) List!65762)

(assert (=> b!6614199 (= (++!14637 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (t!379416 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2626 (List!65762 C!33244 List!65762 List!65762) Unit!159303)

(assert (=> b!6614199 (= lt!2417285 (lemmaMoveElementToOtherListKeepsConcatEq!2626 Nil!65638 (h!72086 s!2326) (t!379416 s!2326) s!2326))))

(declare-fun e!4001494 () Option!16378)

(assert (=> b!6614199 (= e!4001494 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (t!379416 s!2326) s!2326))))

(declare-fun b!6614201 () Bool)

(assert (=> b!6614201 (= e!4001501 (matchR!8670 (regTwo!33486 r!7292) s!2326))))

(declare-fun b!6614203 () Bool)

(declare-fun res!2712275 () Bool)

(assert (=> b!6614203 (=> (not res!2712275) (not e!4001503))))

(assert (=> b!6614203 (= res!2712275 (matchR!8670 (regOne!33486 r!7292) (_1!36769 (get!22812 lt!2417280))))))

(declare-fun b!6614204 () Bool)

(assert (=> b!6614204 (= e!4001494 None!16377)))

(declare-fun b!6614206 () Bool)

(assert (=> b!6614206 (= e!4001502 (not (isDefined!13081 lt!2417280)))))

(declare-fun b!6614208 () Bool)

(assert (=> b!6614208 (= e!4001498 (Some!16377 (tuple2!66933 Nil!65638 s!2326)))))

(declare-fun b!6614209 () Bool)

(assert (=> b!6614209 (= e!4001498 e!4001494)))

(declare-fun c!1219150 () Bool)

(assert (=> b!6614209 (= c!1219150 ((_ is Nil!65638) s!2326))))

(declare-fun b!6614210 () Bool)

(assert (=> b!6614210 (= e!4001503 (= (++!14637 (_1!36769 (get!22812 lt!2417280)) (_2!36769 (get!22812 lt!2417280))) s!2326))))

(assert (= (and d!2073375 res!2712271) b!6614201))

(assert (= (and d!2073375 c!1219153) b!6614208))

(assert (= (and d!2073375 (not c!1219153)) b!6614209))

(assert (= (and b!6614209 c!1219150) b!6614204))

(assert (= (and b!6614209 (not c!1219150)) b!6614199))

(assert (= (and d!2073375 res!2712276) b!6614203))

(assert (= (and b!6614203 res!2712275) b!6614197))

(assert (= (and b!6614197 res!2712267) b!6614210))

(assert (= (and d!2073375 (not res!2712270)) b!6614206))

(declare-fun m!7387562 () Bool)

(assert (=> b!6614199 m!7387562))

(assert (=> b!6614199 m!7387562))

(declare-fun m!7387568 () Bool)

(assert (=> b!6614199 m!7387568))

(declare-fun m!7387570 () Bool)

(assert (=> b!6614199 m!7387570))

(assert (=> b!6614199 m!7387562))

(declare-fun m!7387574 () Bool)

(assert (=> b!6614199 m!7387574))

(declare-fun m!7387578 () Bool)

(assert (=> b!6614203 m!7387578))

(declare-fun m!7387582 () Bool)

(assert (=> b!6614203 m!7387582))

(declare-fun m!7387586 () Bool)

(assert (=> b!6614206 m!7387586))

(assert (=> b!6614201 m!7387230))

(assert (=> b!6614210 m!7387578))

(declare-fun m!7387590 () Bool)

(assert (=> b!6614210 m!7387590))

(assert (=> b!6614197 m!7387578))

(declare-fun m!7387596 () Bool)

(assert (=> b!6614197 m!7387596))

(assert (=> d!2073375 m!7387586))

(declare-fun m!7387598 () Bool)

(assert (=> d!2073375 m!7387598))

(assert (=> d!2073375 m!7387414))

(assert (=> b!6613656 d!2073375))

(declare-fun d!2073378 () Bool)

(declare-fun choose!49425 (Int) Bool)

(assert (=> d!2073378 (= (Exists!3557 lambda!369414) (choose!49425 lambda!369414))))

(declare-fun bs!1695563 () Bool)

(assert (= bs!1695563 d!2073378))

(declare-fun m!7387604 () Bool)

(assert (=> bs!1695563 m!7387604))

(assert (=> b!6613656 d!2073378))

(declare-fun d!2073382 () Bool)

(assert (=> d!2073382 (= (Exists!3557 lambda!369413) (choose!49425 lambda!369413))))

(declare-fun bs!1695564 () Bool)

(assert (= bs!1695564 d!2073382))

(declare-fun m!7387606 () Bool)

(assert (=> bs!1695564 m!7387606))

(assert (=> b!6613656 d!2073382))

(declare-fun bs!1695567 () Bool)

(declare-fun d!2073386 () Bool)

(assert (= bs!1695567 (and d!2073386 b!6614097)))

(declare-fun lambda!369466 () Int)

(assert (=> bs!1695567 (not (= lambda!369466 lambda!369456))))

(declare-fun bs!1695568 () Bool)

(assert (= bs!1695568 (and d!2073386 b!6613892)))

(assert (=> bs!1695568 (not (= lambda!369466 lambda!369442))))

(declare-fun bs!1695571 () Bool)

(assert (= bs!1695571 (and d!2073386 b!6614009)))

(assert (=> bs!1695571 (not (= lambda!369466 lambda!369449))))

(declare-fun bs!1695573 () Bool)

(assert (= bs!1695573 (and d!2073386 b!6614100)))

(assert (=> bs!1695573 (not (= lambda!369466 lambda!369455))))

(declare-fun bs!1695574 () Bool)

(assert (= bs!1695574 (and d!2073386 b!6613656)))

(assert (=> bs!1695574 (= lambda!369466 lambda!369413)))

(assert (=> bs!1695574 (not (= lambda!369466 lambda!369414))))

(declare-fun bs!1695576 () Bool)

(assert (= bs!1695576 (and d!2073386 b!6613889)))

(assert (=> bs!1695576 (not (= lambda!369466 lambda!369443))))

(declare-fun bs!1695578 () Bool)

(assert (= bs!1695578 (and d!2073386 b!6614012)))

(assert (=> bs!1695578 (not (= lambda!369466 lambda!369446))))

(assert (=> d!2073386 true))

(assert (=> d!2073386 true))

(assert (=> d!2073386 true))

(assert (=> d!2073386 (= (isDefined!13081 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326)) (Exists!3557 lambda!369466))))

(declare-fun lt!2417291 () Unit!159303)

(declare-fun choose!49427 (Regex!16487 Regex!16487 List!65762) Unit!159303)

(assert (=> d!2073386 (= lt!2417291 (choose!49427 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326))))

(assert (=> d!2073386 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073386 (= (lemmaFindConcatSeparationEquivalentToExists!2556 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326) lt!2417291)))

(declare-fun bs!1695580 () Bool)

(assert (= bs!1695580 d!2073386))

(assert (=> bs!1695580 m!7387258))

(declare-fun m!7387610 () Bool)

(assert (=> bs!1695580 m!7387610))

(assert (=> bs!1695580 m!7387258))

(assert (=> bs!1695580 m!7387260))

(assert (=> bs!1695580 m!7387414))

(declare-fun m!7387616 () Bool)

(assert (=> bs!1695580 m!7387616))

(assert (=> b!6613656 d!2073386))

(declare-fun bs!1695582 () Bool)

(declare-fun d!2073391 () Bool)

(assert (= bs!1695582 (and d!2073391 b!6614097)))

(declare-fun lambda!369471 () Int)

(assert (=> bs!1695582 (not (= lambda!369471 lambda!369456))))

(declare-fun bs!1695583 () Bool)

(assert (= bs!1695583 (and d!2073391 b!6614009)))

(assert (=> bs!1695583 (not (= lambda!369471 lambda!369449))))

(declare-fun bs!1695584 () Bool)

(assert (= bs!1695584 (and d!2073391 b!6614100)))

(assert (=> bs!1695584 (not (= lambda!369471 lambda!369455))))

(declare-fun bs!1695585 () Bool)

(assert (= bs!1695585 (and d!2073391 b!6613656)))

(assert (=> bs!1695585 (= lambda!369471 lambda!369413)))

(assert (=> bs!1695585 (not (= lambda!369471 lambda!369414))))

(declare-fun bs!1695586 () Bool)

(assert (= bs!1695586 (and d!2073391 b!6613889)))

(assert (=> bs!1695586 (not (= lambda!369471 lambda!369443))))

(declare-fun bs!1695587 () Bool)

(assert (= bs!1695587 (and d!2073391 b!6614012)))

(assert (=> bs!1695587 (not (= lambda!369471 lambda!369446))))

(declare-fun bs!1695588 () Bool)

(assert (= bs!1695588 (and d!2073391 b!6613892)))

(assert (=> bs!1695588 (not (= lambda!369471 lambda!369442))))

(declare-fun bs!1695589 () Bool)

(assert (= bs!1695589 (and d!2073391 d!2073386)))

(assert (=> bs!1695589 (= lambda!369471 lambda!369466)))

(assert (=> d!2073391 true))

(assert (=> d!2073391 true))

(assert (=> d!2073391 true))

(declare-fun lambda!369473 () Int)

(assert (=> bs!1695582 (= lambda!369473 lambda!369456)))

(assert (=> bs!1695583 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 r!7292) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369473 lambda!369449))))

(assert (=> bs!1695584 (not (= lambda!369473 lambda!369455))))

(assert (=> bs!1695585 (not (= lambda!369473 lambda!369413))))

(declare-fun bs!1695590 () Bool)

(assert (= bs!1695590 d!2073391))

(assert (=> bs!1695590 (not (= lambda!369473 lambda!369471))))

(assert (=> bs!1695585 (= lambda!369473 lambda!369414)))

(assert (=> bs!1695586 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 r!7292) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369473 lambda!369443))))

(assert (=> bs!1695587 (not (= lambda!369473 lambda!369446))))

(assert (=> bs!1695588 (not (= lambda!369473 lambda!369442))))

(assert (=> bs!1695589 (not (= lambda!369473 lambda!369466))))

(assert (=> d!2073391 true))

(assert (=> d!2073391 true))

(assert (=> d!2073391 true))

(assert (=> d!2073391 (= (Exists!3557 lambda!369471) (Exists!3557 lambda!369473))))

(declare-fun lt!2417294 () Unit!159303)

(declare-fun choose!49429 (Regex!16487 Regex!16487 List!65762) Unit!159303)

(assert (=> d!2073391 (= lt!2417294 (choose!49429 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326))))

(assert (=> d!2073391 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073391 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2094 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326) lt!2417294)))

(declare-fun m!7387618 () Bool)

(assert (=> bs!1695590 m!7387618))

(declare-fun m!7387620 () Bool)

(assert (=> bs!1695590 m!7387620))

(declare-fun m!7387622 () Bool)

(assert (=> bs!1695590 m!7387622))

(assert (=> bs!1695590 m!7387414))

(assert (=> b!6613656 d!2073391))

(declare-fun d!2073393 () Bool)

(declare-fun isEmpty!37924 (Option!16378) Bool)

(assert (=> d!2073393 (= (isDefined!13081 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326)) (not (isEmpty!37924 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326))))))

(declare-fun bs!1695591 () Bool)

(assert (= bs!1695591 d!2073393))

(assert (=> bs!1695591 m!7387258))

(declare-fun m!7387624 () Bool)

(assert (=> bs!1695591 m!7387624))

(assert (=> b!6613656 d!2073393))

(declare-fun b!6614239 () Bool)

(declare-fun e!4001518 () Bool)

(declare-fun tp!1821652 () Bool)

(declare-fun tp!1821653 () Bool)

(assert (=> b!6614239 (= e!4001518 (and tp!1821652 tp!1821653))))

(assert (=> b!6613650 (= tp!1821638 e!4001518)))

(assert (= (and b!6613650 ((_ is Cons!65636) (exprs!6371 setElem!45196))) b!6614239))

(declare-fun b!6614253 () Bool)

(declare-fun e!4001521 () Bool)

(declare-fun tp!1821668 () Bool)

(declare-fun tp!1821664 () Bool)

(assert (=> b!6614253 (= e!4001521 (and tp!1821668 tp!1821664))))

(declare-fun b!6614252 () Bool)

(declare-fun tp!1821665 () Bool)

(assert (=> b!6614252 (= e!4001521 tp!1821665)))

(declare-fun b!6614251 () Bool)

(declare-fun tp!1821666 () Bool)

(declare-fun tp!1821667 () Bool)

(assert (=> b!6614251 (= e!4001521 (and tp!1821666 tp!1821667))))

(assert (=> b!6613660 (= tp!1821640 e!4001521)))

(declare-fun b!6614250 () Bool)

(assert (=> b!6614250 (= e!4001521 tp_is_empty!42227)))

(assert (= (and b!6613660 ((_ is ElementMatch!16487) (regOne!33486 r!7292))) b!6614250))

(assert (= (and b!6613660 ((_ is Concat!25332) (regOne!33486 r!7292))) b!6614251))

(assert (= (and b!6613660 ((_ is Star!16487) (regOne!33486 r!7292))) b!6614252))

(assert (= (and b!6613660 ((_ is Union!16487) (regOne!33486 r!7292))) b!6614253))

(declare-fun b!6614257 () Bool)

(declare-fun e!4001522 () Bool)

(declare-fun tp!1821673 () Bool)

(declare-fun tp!1821669 () Bool)

(assert (=> b!6614257 (= e!4001522 (and tp!1821673 tp!1821669))))

(declare-fun b!6614256 () Bool)

(declare-fun tp!1821670 () Bool)

(assert (=> b!6614256 (= e!4001522 tp!1821670)))

(declare-fun b!6614255 () Bool)

(declare-fun tp!1821671 () Bool)

(declare-fun tp!1821672 () Bool)

(assert (=> b!6614255 (= e!4001522 (and tp!1821671 tp!1821672))))

(assert (=> b!6613660 (= tp!1821645 e!4001522)))

(declare-fun b!6614254 () Bool)

(assert (=> b!6614254 (= e!4001522 tp_is_empty!42227)))

(assert (= (and b!6613660 ((_ is ElementMatch!16487) (regTwo!33486 r!7292))) b!6614254))

(assert (= (and b!6613660 ((_ is Concat!25332) (regTwo!33486 r!7292))) b!6614255))

(assert (= (and b!6613660 ((_ is Star!16487) (regTwo!33486 r!7292))) b!6614256))

(assert (= (and b!6613660 ((_ is Union!16487) (regTwo!33486 r!7292))) b!6614257))

(declare-fun b!6614261 () Bool)

(declare-fun e!4001523 () Bool)

(declare-fun tp!1821678 () Bool)

(declare-fun tp!1821674 () Bool)

(assert (=> b!6614261 (= e!4001523 (and tp!1821678 tp!1821674))))

(declare-fun b!6614260 () Bool)

(declare-fun tp!1821675 () Bool)

(assert (=> b!6614260 (= e!4001523 tp!1821675)))

(declare-fun b!6614259 () Bool)

(declare-fun tp!1821676 () Bool)

(declare-fun tp!1821677 () Bool)

(assert (=> b!6614259 (= e!4001523 (and tp!1821676 tp!1821677))))

(assert (=> b!6613654 (= tp!1821646 e!4001523)))

(declare-fun b!6614258 () Bool)

(assert (=> b!6614258 (= e!4001523 tp_is_empty!42227)))

(assert (= (and b!6613654 ((_ is ElementMatch!16487) (reg!16816 r!7292))) b!6614258))

(assert (= (and b!6613654 ((_ is Concat!25332) (reg!16816 r!7292))) b!6614259))

(assert (= (and b!6613654 ((_ is Star!16487) (reg!16816 r!7292))) b!6614260))

(assert (= (and b!6613654 ((_ is Union!16487) (reg!16816 r!7292))) b!6614261))

(declare-fun condSetEmpty!45199 () Bool)

(assert (=> setNonEmpty!45196 (= condSetEmpty!45199 (= setRest!45196 ((as const (Array Context!11742 Bool)) false)))))

(declare-fun setRes!45199 () Bool)

(assert (=> setNonEmpty!45196 (= tp!1821643 setRes!45199)))

(declare-fun setIsEmpty!45199 () Bool)

(assert (=> setIsEmpty!45199 setRes!45199))

(declare-fun tp!1821684 () Bool)

(declare-fun e!4001526 () Bool)

(declare-fun setNonEmpty!45199 () Bool)

(declare-fun setElem!45199 () Context!11742)

(assert (=> setNonEmpty!45199 (= setRes!45199 (and tp!1821684 (inv!84464 setElem!45199) e!4001526))))

(declare-fun setRest!45199 () (InoxSet Context!11742))

(assert (=> setNonEmpty!45199 (= setRest!45196 ((_ map or) (store ((as const (Array Context!11742 Bool)) false) setElem!45199 true) setRest!45199))))

(declare-fun b!6614266 () Bool)

(declare-fun tp!1821683 () Bool)

(assert (=> b!6614266 (= e!4001526 tp!1821683)))

(assert (= (and setNonEmpty!45196 condSetEmpty!45199) setIsEmpty!45199))

(assert (= (and setNonEmpty!45196 (not condSetEmpty!45199)) setNonEmpty!45199))

(assert (= setNonEmpty!45199 b!6614266))

(declare-fun m!7387626 () Bool)

(assert (=> setNonEmpty!45199 m!7387626))

(declare-fun b!6614274 () Bool)

(declare-fun e!4001532 () Bool)

(declare-fun tp!1821689 () Bool)

(assert (=> b!6614274 (= e!4001532 tp!1821689)))

(declare-fun tp!1821690 () Bool)

(declare-fun b!6614273 () Bool)

(declare-fun e!4001531 () Bool)

(assert (=> b!6614273 (= e!4001531 (and (inv!84464 (h!72085 (t!379415 zl!343))) e!4001532 tp!1821690))))

(assert (=> b!6613648 (= tp!1821641 e!4001531)))

(assert (= b!6614273 b!6614274))

(assert (= (and b!6613648 ((_ is Cons!65637) (t!379415 zl!343))) b!6614273))

(declare-fun m!7387628 () Bool)

(assert (=> b!6614273 m!7387628))

(declare-fun b!6614279 () Bool)

(declare-fun e!4001535 () Bool)

(declare-fun tp!1821693 () Bool)

(assert (=> b!6614279 (= e!4001535 (and tp_is_empty!42227 tp!1821693))))

(assert (=> b!6613639 (= tp!1821639 e!4001535)))

(assert (= (and b!6613639 ((_ is Cons!65638) (t!379416 s!2326))) b!6614279))

(declare-fun b!6614283 () Bool)

(declare-fun e!4001536 () Bool)

(declare-fun tp!1821698 () Bool)

(declare-fun tp!1821694 () Bool)

(assert (=> b!6614283 (= e!4001536 (and tp!1821698 tp!1821694))))

(declare-fun b!6614282 () Bool)

(declare-fun tp!1821695 () Bool)

(assert (=> b!6614282 (= e!4001536 tp!1821695)))

(declare-fun b!6614281 () Bool)

(declare-fun tp!1821696 () Bool)

(declare-fun tp!1821697 () Bool)

(assert (=> b!6614281 (= e!4001536 (and tp!1821696 tp!1821697))))

(assert (=> b!6613652 (= tp!1821647 e!4001536)))

(declare-fun b!6614280 () Bool)

(assert (=> b!6614280 (= e!4001536 tp_is_empty!42227)))

(assert (= (and b!6613652 ((_ is ElementMatch!16487) (regOne!33487 r!7292))) b!6614280))

(assert (= (and b!6613652 ((_ is Concat!25332) (regOne!33487 r!7292))) b!6614281))

(assert (= (and b!6613652 ((_ is Star!16487) (regOne!33487 r!7292))) b!6614282))

(assert (= (and b!6613652 ((_ is Union!16487) (regOne!33487 r!7292))) b!6614283))

(declare-fun b!6614287 () Bool)

(declare-fun e!4001537 () Bool)

(declare-fun tp!1821703 () Bool)

(declare-fun tp!1821699 () Bool)

(assert (=> b!6614287 (= e!4001537 (and tp!1821703 tp!1821699))))

(declare-fun b!6614286 () Bool)

(declare-fun tp!1821700 () Bool)

(assert (=> b!6614286 (= e!4001537 tp!1821700)))

(declare-fun b!6614285 () Bool)

(declare-fun tp!1821701 () Bool)

(declare-fun tp!1821702 () Bool)

(assert (=> b!6614285 (= e!4001537 (and tp!1821701 tp!1821702))))

(assert (=> b!6613652 (= tp!1821644 e!4001537)))

(declare-fun b!6614284 () Bool)

(assert (=> b!6614284 (= e!4001537 tp_is_empty!42227)))

(assert (= (and b!6613652 ((_ is ElementMatch!16487) (regTwo!33487 r!7292))) b!6614284))

(assert (= (and b!6613652 ((_ is Concat!25332) (regTwo!33487 r!7292))) b!6614285))

(assert (= (and b!6613652 ((_ is Star!16487) (regTwo!33487 r!7292))) b!6614286))

(assert (= (and b!6613652 ((_ is Union!16487) (regTwo!33487 r!7292))) b!6614287))

(declare-fun b!6614288 () Bool)

(declare-fun e!4001538 () Bool)

(declare-fun tp!1821704 () Bool)

(declare-fun tp!1821705 () Bool)

(assert (=> b!6614288 (= e!4001538 (and tp!1821704 tp!1821705))))

(assert (=> b!6613657 (= tp!1821642 e!4001538)))

(assert (= (and b!6613657 ((_ is Cons!65636) (exprs!6371 (h!72085 zl!343)))) b!6614288))

(declare-fun b_lambda!250163 () Bool)

(assert (= b_lambda!250161 (or b!6613663 b_lambda!250163)))

(declare-fun bs!1695601 () Bool)

(declare-fun d!2073397 () Bool)

(assert (= bs!1695601 (and d!2073397 b!6613663)))

(assert (=> bs!1695601 (= (dynLambda!26137 lambda!369415 (h!72085 zl!343)) (derivationStepZipperUp!1661 (h!72085 zl!343) (h!72086 s!2326)))))

(assert (=> bs!1695601 m!7387196))

(assert (=> d!2073279 d!2073397))

(check-sat (not b!6614279) (not b!6613737) (not d!2073301) (not b!6613826) (not d!2073386) (not b!6614206) (not b!6613722) (not b!6614010) (not b!6613824) (not b!6614201) (not b!6613726) (not bs!1695601) (not b!6614282) (not bm!579408) (not b!6614126) (not b!6614127) tp_is_empty!42227 (not b!6614256) (not b!6614120) (not b!6614281) (not b!6614052) (not d!2073287) (not d!2073378) (not b!6614000) (not b!6613739) (not b!6614288) (not b!6613736) (not bm!579392) (not b!6614257) (not d!2073357) (not b!6613731) (not b!6614131) (not b!6613766) (not b!6613774) (not b!6614051) (not d!2073382) (not b!6614043) (not d!2073279) (not b!6613716) (not bm!579397) (not d!2073319) (not b!6613829) (not d!2073289) (not bm!579432) (not bm!579430) (not d!2073331) (not b!6613764) (not b!6614040) (not bm!579395) (not d!2073393) (not b!6613999) (not b!6613833) (not b!6614287) (not d!2073269) (not b!6613717) (not b!6614274) (not b!6614090) (not b!6614199) (not b!6613899) (not b!6614259) (not b!6614107) (not b!6614210) (not b!6614098) (not bm!579409) (not d!2073265) (not d!2073391) (not d!2073333) (not b!6613738) (not b!6614255) (not setNonEmpty!45199) (not bm!579421) (not d!2073273) (not b!6614283) (not bm!579420) (not b!6613827) (not b!6614286) (not d!2073285) (not b!6613998) (not b!6614007) (not b!6613841) (not d!2073351) (not b!6613761) (not d!2073375) (not b!6613830) (not b!6614239) (not d!2073361) (not b!6613763) (not bm!579429) (not d!2073267) (not bm!579387) (not b!6613890) (not bm!579396) (not b!6614197) (not bm!579431) (not b!6613769) (not d!2073365) (not b!6613721) (not b!6613831) (not b!6614285) (not b!6614006) (not b!6614266) (not b!6614261) (not d!2073367) (not b!6613727) (not b!6614044) (not d!2073359) (not d!2073263) (not d!2073283) (not b_lambda!250163) (not d!2073297) (not b!6614252) (not d!2073317) (not b!6614115) (not b!6614260) (not b!6614203) (not d!2073307) (not b!6613995) (not b!6613768) (not bm!579433) (not b!6613767) (not b!6614273) (not b!6614253) (not bm!579418) (not b!6614118) (not b!6614251) (not bm!579388) (not b!6614119) (not b!6613840) (not b!6614019) (not bm!579419) (not b!6614045) (not b!6613700))
(check-sat)
(get-model)

(declare-fun d!2073423 () Bool)

(assert (=> d!2073423 (= (Exists!3557 (ite c!1219071 lambda!369442 lambda!369443)) (choose!49425 (ite c!1219071 lambda!369442 lambda!369443)))))

(declare-fun bs!1695612 () Bool)

(assert (= bs!1695612 d!2073423))

(declare-fun m!7387708 () Bool)

(assert (=> bs!1695612 m!7387708))

(assert (=> bm!579409 d!2073423))

(declare-fun d!2073425 () Bool)

(assert (=> d!2073425 (= (isEmptyExpr!1860 lt!2417226) ((_ is EmptyExpr!16487) lt!2417226))))

(assert (=> b!6613829 d!2073425))

(declare-fun d!2073427 () Bool)

(assert (=> d!2073427 (= (head!13417 (unfocusZipperList!1908 zl!343)) (h!72084 (unfocusZipperList!1908 zl!343)))))

(assert (=> b!6613764 d!2073427))

(assert (=> d!2073279 d!2073269))

(declare-fun d!2073429 () Bool)

(assert (=> d!2073429 (= (flatMap!1992 z!1189 lambda!369415) (dynLambda!26137 lambda!369415 (h!72085 zl!343)))))

(assert (=> d!2073429 true))

(declare-fun _$13!3883 () Unit!159303)

(assert (=> d!2073429 (= (choose!49416 z!1189 (h!72085 zl!343) lambda!369415) _$13!3883)))

(declare-fun b_lambda!250169 () Bool)

(assert (=> (not b_lambda!250169) (not d!2073429)))

(declare-fun bs!1695613 () Bool)

(assert (= bs!1695613 d!2073429))

(assert (=> bs!1695613 m!7387194))

(assert (=> bs!1695613 m!7387294))

(assert (=> d!2073279 d!2073429))

(declare-fun bm!579473 () Bool)

(declare-fun call!579478 () Bool)

(declare-fun c!1219199 () Bool)

(assert (=> bm!579473 (= call!579478 (nullable!6480 (ite c!1219199 (regOne!33487 (regOne!33486 (regOne!33486 r!7292))) (regOne!33486 (regOne!33486 (regOne!33486 r!7292))))))))

(declare-fun b!6614475 () Bool)

(declare-fun e!4001649 () Bool)

(declare-fun e!4001650 () Bool)

(assert (=> b!6614475 (= e!4001649 e!4001650)))

(assert (=> b!6614475 (= c!1219199 ((_ is Union!16487) (regOne!33486 (regOne!33486 r!7292))))))

(declare-fun b!6614476 () Bool)

(declare-fun e!4001653 () Bool)

(assert (=> b!6614476 (= e!4001650 e!4001653)))

(declare-fun res!2712347 () Bool)

(assert (=> b!6614476 (= res!2712347 call!579478)))

(assert (=> b!6614476 (=> (not res!2712347) (not e!4001653))))

(declare-fun bm!579474 () Bool)

(declare-fun call!579479 () Bool)

(assert (=> bm!579474 (= call!579479 (nullable!6480 (ite c!1219199 (regTwo!33487 (regOne!33486 (regOne!33486 r!7292))) (regTwo!33486 (regOne!33486 (regOne!33486 r!7292))))))))

(declare-fun b!6614477 () Bool)

(declare-fun e!4001651 () Bool)

(assert (=> b!6614477 (= e!4001650 e!4001651)))

(declare-fun res!2712345 () Bool)

(assert (=> b!6614477 (= res!2712345 call!579478)))

(assert (=> b!6614477 (=> res!2712345 e!4001651)))

(declare-fun b!6614478 () Bool)

(assert (=> b!6614478 (= e!4001651 call!579479)))

(declare-fun d!2073431 () Bool)

(declare-fun res!2712346 () Bool)

(declare-fun e!4001652 () Bool)

(assert (=> d!2073431 (=> res!2712346 e!4001652)))

(assert (=> d!2073431 (= res!2712346 ((_ is EmptyExpr!16487) (regOne!33486 (regOne!33486 r!7292))))))

(assert (=> d!2073431 (= (nullableFct!2401 (regOne!33486 (regOne!33486 r!7292))) e!4001652)))

(declare-fun b!6614479 () Bool)

(declare-fun e!4001654 () Bool)

(assert (=> b!6614479 (= e!4001654 e!4001649)))

(declare-fun res!2712344 () Bool)

(assert (=> b!6614479 (=> res!2712344 e!4001649)))

(assert (=> b!6614479 (= res!2712344 ((_ is Star!16487) (regOne!33486 (regOne!33486 r!7292))))))

(declare-fun b!6614480 () Bool)

(assert (=> b!6614480 (= e!4001653 call!579479)))

(declare-fun b!6614481 () Bool)

(assert (=> b!6614481 (= e!4001652 e!4001654)))

(declare-fun res!2712343 () Bool)

(assert (=> b!6614481 (=> (not res!2712343) (not e!4001654))))

(assert (=> b!6614481 (= res!2712343 (and (not ((_ is EmptyLang!16487) (regOne!33486 (regOne!33486 r!7292)))) (not ((_ is ElementMatch!16487) (regOne!33486 (regOne!33486 r!7292))))))))

(assert (= (and d!2073431 (not res!2712346)) b!6614481))

(assert (= (and b!6614481 res!2712343) b!6614479))

(assert (= (and b!6614479 (not res!2712344)) b!6614475))

(assert (= (and b!6614475 c!1219199) b!6614477))

(assert (= (and b!6614475 (not c!1219199)) b!6614476))

(assert (= (and b!6614477 (not res!2712345)) b!6614478))

(assert (= (and b!6614476 res!2712347) b!6614480))

(assert (= (or b!6614478 b!6614480) bm!579474))

(assert (= (or b!6614477 b!6614476) bm!579473))

(declare-fun m!7387710 () Bool)

(assert (=> bm!579473 m!7387710))

(declare-fun m!7387712 () Bool)

(assert (=> bm!579474 m!7387712))

(assert (=> d!2073267 d!2073431))

(declare-fun b!6614490 () Bool)

(declare-fun e!4001659 () List!65762)

(assert (=> b!6614490 (= e!4001659 (_2!36769 (get!22812 lt!2417280)))))

(declare-fun b!6614493 () Bool)

(declare-fun e!4001660 () Bool)

(declare-fun lt!2417309 () List!65762)

(assert (=> b!6614493 (= e!4001660 (or (not (= (_2!36769 (get!22812 lt!2417280)) Nil!65638)) (= lt!2417309 (_1!36769 (get!22812 lt!2417280)))))))

(declare-fun b!6614491 () Bool)

(assert (=> b!6614491 (= e!4001659 (Cons!65638 (h!72086 (_1!36769 (get!22812 lt!2417280))) (++!14637 (t!379416 (_1!36769 (get!22812 lt!2417280))) (_2!36769 (get!22812 lt!2417280)))))))

(declare-fun b!6614492 () Bool)

(declare-fun res!2712353 () Bool)

(assert (=> b!6614492 (=> (not res!2712353) (not e!4001660))))

(declare-fun size!40547 (List!65762) Int)

(assert (=> b!6614492 (= res!2712353 (= (size!40547 lt!2417309) (+ (size!40547 (_1!36769 (get!22812 lt!2417280))) (size!40547 (_2!36769 (get!22812 lt!2417280))))))))

(declare-fun d!2073433 () Bool)

(assert (=> d!2073433 e!4001660))

(declare-fun res!2712352 () Bool)

(assert (=> d!2073433 (=> (not res!2712352) (not e!4001660))))

(declare-fun content!12663 (List!65762) (InoxSet C!33244))

(assert (=> d!2073433 (= res!2712352 (= (content!12663 lt!2417309) ((_ map or) (content!12663 (_1!36769 (get!22812 lt!2417280))) (content!12663 (_2!36769 (get!22812 lt!2417280))))))))

(assert (=> d!2073433 (= lt!2417309 e!4001659)))

(declare-fun c!1219202 () Bool)

(assert (=> d!2073433 (= c!1219202 ((_ is Nil!65638) (_1!36769 (get!22812 lt!2417280))))))

(assert (=> d!2073433 (= (++!14637 (_1!36769 (get!22812 lt!2417280)) (_2!36769 (get!22812 lt!2417280))) lt!2417309)))

(assert (= (and d!2073433 c!1219202) b!6614490))

(assert (= (and d!2073433 (not c!1219202)) b!6614491))

(assert (= (and d!2073433 res!2712352) b!6614492))

(assert (= (and b!6614492 res!2712353) b!6614493))

(declare-fun m!7387714 () Bool)

(assert (=> b!6614491 m!7387714))

(declare-fun m!7387716 () Bool)

(assert (=> b!6614492 m!7387716))

(declare-fun m!7387718 () Bool)

(assert (=> b!6614492 m!7387718))

(declare-fun m!7387720 () Bool)

(assert (=> b!6614492 m!7387720))

(declare-fun m!7387722 () Bool)

(assert (=> d!2073433 m!7387722))

(declare-fun m!7387724 () Bool)

(assert (=> d!2073433 m!7387724))

(declare-fun m!7387726 () Bool)

(assert (=> d!2073433 m!7387726))

(assert (=> b!6614210 d!2073433))

(declare-fun d!2073435 () Bool)

(assert (=> d!2073435 (= (get!22812 lt!2417280) (v!52566 lt!2417280))))

(assert (=> b!6614210 d!2073435))

(declare-fun b!6614494 () Bool)

(declare-fun res!2712361 () Bool)

(declare-fun e!4001665 () Bool)

(assert (=> b!6614494 (=> (not res!2712361) (not e!4001665))))

(assert (=> b!6614494 (= res!2712361 (isEmpty!37921 (tail!12500 (tail!12500 s!2326))))))

(declare-fun b!6614495 () Bool)

(declare-fun res!2712360 () Bool)

(declare-fun e!4001664 () Bool)

(assert (=> b!6614495 (=> res!2712360 e!4001664)))

(assert (=> b!6614495 (= res!2712360 e!4001665)))

(declare-fun res!2712358 () Bool)

(assert (=> b!6614495 (=> (not res!2712358) (not e!4001665))))

(declare-fun lt!2417310 () Bool)

(assert (=> b!6614495 (= res!2712358 lt!2417310)))

(declare-fun b!6614496 () Bool)

(declare-fun res!2712356 () Bool)

(assert (=> b!6614496 (=> (not res!2712356) (not e!4001665))))

(declare-fun call!579480 () Bool)

(assert (=> b!6614496 (= res!2712356 (not call!579480))))

(declare-fun b!6614497 () Bool)

(declare-fun e!4001661 () Bool)

(assert (=> b!6614497 (= e!4001661 (nullable!6480 (derivativeStep!5167 r!7292 (head!13415 s!2326))))))

(declare-fun b!6614498 () Bool)

(declare-fun e!4001662 () Bool)

(assert (=> b!6614498 (= e!4001662 (not (= (head!13415 (tail!12500 s!2326)) (c!1218988 (derivativeStep!5167 r!7292 (head!13415 s!2326))))))))

(declare-fun b!6614499 () Bool)

(assert (=> b!6614499 (= e!4001661 (matchR!8670 (derivativeStep!5167 (derivativeStep!5167 r!7292 (head!13415 s!2326)) (head!13415 (tail!12500 s!2326))) (tail!12500 (tail!12500 s!2326))))))

(declare-fun b!6614500 () Bool)

(declare-fun e!4001666 () Bool)

(assert (=> b!6614500 (= e!4001664 e!4001666)))

(declare-fun res!2712359 () Bool)

(assert (=> b!6614500 (=> (not res!2712359) (not e!4001666))))

(assert (=> b!6614500 (= res!2712359 (not lt!2417310))))

(declare-fun b!6614501 () Bool)

(declare-fun e!4001663 () Bool)

(assert (=> b!6614501 (= e!4001663 (not lt!2417310))))

(declare-fun bm!579475 () Bool)

(assert (=> bm!579475 (= call!579480 (isEmpty!37921 (tail!12500 s!2326)))))

(declare-fun b!6614502 () Bool)

(declare-fun e!4001667 () Bool)

(assert (=> b!6614502 (= e!4001667 (= lt!2417310 call!579480))))

(declare-fun b!6614503 () Bool)

(declare-fun res!2712355 () Bool)

(assert (=> b!6614503 (=> res!2712355 e!4001664)))

(assert (=> b!6614503 (= res!2712355 (not ((_ is ElementMatch!16487) (derivativeStep!5167 r!7292 (head!13415 s!2326)))))))

(assert (=> b!6614503 (= e!4001663 e!4001664)))

(declare-fun d!2073437 () Bool)

(assert (=> d!2073437 e!4001667))

(declare-fun c!1219203 () Bool)

(assert (=> d!2073437 (= c!1219203 ((_ is EmptyExpr!16487) (derivativeStep!5167 r!7292 (head!13415 s!2326))))))

(assert (=> d!2073437 (= lt!2417310 e!4001661)))

(declare-fun c!1219204 () Bool)

(assert (=> d!2073437 (= c!1219204 (isEmpty!37921 (tail!12500 s!2326)))))

(assert (=> d!2073437 (validRegex!8223 (derivativeStep!5167 r!7292 (head!13415 s!2326)))))

(assert (=> d!2073437 (= (matchR!8670 (derivativeStep!5167 r!7292 (head!13415 s!2326)) (tail!12500 s!2326)) lt!2417310)))

(declare-fun b!6614504 () Bool)

(assert (=> b!6614504 (= e!4001666 e!4001662)))

(declare-fun res!2712354 () Bool)

(assert (=> b!6614504 (=> res!2712354 e!4001662)))

(assert (=> b!6614504 (= res!2712354 call!579480)))

(declare-fun b!6614505 () Bool)

(assert (=> b!6614505 (= e!4001665 (= (head!13415 (tail!12500 s!2326)) (c!1218988 (derivativeStep!5167 r!7292 (head!13415 s!2326)))))))

(declare-fun b!6614506 () Bool)

(declare-fun res!2712357 () Bool)

(assert (=> b!6614506 (=> res!2712357 e!4001662)))

(assert (=> b!6614506 (= res!2712357 (not (isEmpty!37921 (tail!12500 (tail!12500 s!2326)))))))

(declare-fun b!6614507 () Bool)

(assert (=> b!6614507 (= e!4001667 e!4001663)))

(declare-fun c!1219205 () Bool)

(assert (=> b!6614507 (= c!1219205 ((_ is EmptyLang!16487) (derivativeStep!5167 r!7292 (head!13415 s!2326))))))

(assert (= (and d!2073437 c!1219204) b!6614497))

(assert (= (and d!2073437 (not c!1219204)) b!6614499))

(assert (= (and d!2073437 c!1219203) b!6614502))

(assert (= (and d!2073437 (not c!1219203)) b!6614507))

(assert (= (and b!6614507 c!1219205) b!6614501))

(assert (= (and b!6614507 (not c!1219205)) b!6614503))

(assert (= (and b!6614503 (not res!2712355)) b!6614495))

(assert (= (and b!6614495 res!2712358) b!6614496))

(assert (= (and b!6614496 res!2712356) b!6614494))

(assert (= (and b!6614494 res!2712361) b!6614505))

(assert (= (and b!6614495 (not res!2712360)) b!6614500))

(assert (= (and b!6614500 res!2712359) b!6614504))

(assert (= (and b!6614504 (not res!2712354)) b!6614506))

(assert (= (and b!6614506 (not res!2712357)) b!6614498))

(assert (= (or b!6614502 b!6614496 b!6614504) bm!579475))

(assert (=> bm!579475 m!7387448))

(assert (=> bm!579475 m!7387454))

(assert (=> b!6614499 m!7387448))

(declare-fun m!7387728 () Bool)

(assert (=> b!6614499 m!7387728))

(assert (=> b!6614499 m!7387526))

(assert (=> b!6614499 m!7387728))

(declare-fun m!7387730 () Bool)

(assert (=> b!6614499 m!7387730))

(assert (=> b!6614499 m!7387448))

(declare-fun m!7387732 () Bool)

(assert (=> b!6614499 m!7387732))

(assert (=> b!6614499 m!7387730))

(assert (=> b!6614499 m!7387732))

(declare-fun m!7387734 () Bool)

(assert (=> b!6614499 m!7387734))

(assert (=> d!2073437 m!7387448))

(assert (=> d!2073437 m!7387454))

(assert (=> d!2073437 m!7387526))

(declare-fun m!7387736 () Bool)

(assert (=> d!2073437 m!7387736))

(assert (=> b!6614498 m!7387448))

(assert (=> b!6614498 m!7387728))

(assert (=> b!6614497 m!7387526))

(declare-fun m!7387738 () Bool)

(assert (=> b!6614497 m!7387738))

(assert (=> b!6614494 m!7387448))

(assert (=> b!6614494 m!7387732))

(assert (=> b!6614494 m!7387732))

(declare-fun m!7387740 () Bool)

(assert (=> b!6614494 m!7387740))

(assert (=> b!6614505 m!7387448))

(assert (=> b!6614505 m!7387728))

(assert (=> b!6614506 m!7387448))

(assert (=> b!6614506 m!7387732))

(assert (=> b!6614506 m!7387732))

(assert (=> b!6614506 m!7387740))

(assert (=> b!6614120 d!2073437))

(declare-fun b!6614528 () Bool)

(declare-fun e!4001678 () Regex!16487)

(assert (=> b!6614528 (= e!4001678 EmptyLang!16487)))

(declare-fun e!4001679 () Regex!16487)

(declare-fun b!6614529 () Bool)

(declare-fun call!579490 () Regex!16487)

(declare-fun call!579491 () Regex!16487)

(assert (=> b!6614529 (= e!4001679 (Union!16487 (Concat!25332 call!579491 (regTwo!33486 r!7292)) call!579490))))

(declare-fun b!6614530 () Bool)

(declare-fun e!4001680 () Regex!16487)

(declare-fun call!579492 () Regex!16487)

(assert (=> b!6614530 (= e!4001680 (Concat!25332 call!579492 r!7292))))

(declare-fun b!6614531 () Bool)

(declare-fun e!4001681 () Regex!16487)

(declare-fun call!579489 () Regex!16487)

(assert (=> b!6614531 (= e!4001681 (Union!16487 call!579491 call!579489))))

(declare-fun bm!579484 () Bool)

(assert (=> bm!579484 (= call!579492 call!579489)))

(declare-fun b!6614533 () Bool)

(declare-fun e!4001682 () Regex!16487)

(assert (=> b!6614533 (= e!4001682 (ite (= (head!13415 s!2326) (c!1218988 r!7292)) EmptyExpr!16487 EmptyLang!16487))))

(declare-fun b!6614534 () Bool)

(assert (=> b!6614534 (= e!4001678 e!4001682)))

(declare-fun c!1219220 () Bool)

(assert (=> b!6614534 (= c!1219220 ((_ is ElementMatch!16487) r!7292))))

(declare-fun b!6614535 () Bool)

(assert (=> b!6614535 (= e!4001681 e!4001680)))

(declare-fun c!1219218 () Bool)

(assert (=> b!6614535 (= c!1219218 ((_ is Star!16487) r!7292))))

(declare-fun b!6614536 () Bool)

(declare-fun c!1219217 () Bool)

(assert (=> b!6614536 (= c!1219217 (nullable!6480 (regOne!33486 r!7292)))))

(assert (=> b!6614536 (= e!4001680 e!4001679)))

(declare-fun b!6614532 () Bool)

(assert (=> b!6614532 (= e!4001679 (Union!16487 (Concat!25332 call!579490 (regTwo!33486 r!7292)) EmptyLang!16487))))

(declare-fun d!2073439 () Bool)

(declare-fun lt!2417313 () Regex!16487)

(assert (=> d!2073439 (validRegex!8223 lt!2417313)))

(assert (=> d!2073439 (= lt!2417313 e!4001678)))

(declare-fun c!1219216 () Bool)

(assert (=> d!2073439 (= c!1219216 (or ((_ is EmptyExpr!16487) r!7292) ((_ is EmptyLang!16487) r!7292)))))

(assert (=> d!2073439 (validRegex!8223 r!7292)))

(assert (=> d!2073439 (= (derivativeStep!5167 r!7292 (head!13415 s!2326)) lt!2417313)))

(declare-fun bm!579485 () Bool)

(assert (=> bm!579485 (= call!579490 call!579492)))

(declare-fun c!1219219 () Bool)

(declare-fun bm!579486 () Bool)

(assert (=> bm!579486 (= call!579489 (derivativeStep!5167 (ite c!1219219 (regTwo!33487 r!7292) (ite c!1219218 (reg!16816 r!7292) (ite c!1219217 (regTwo!33486 r!7292) (regOne!33486 r!7292)))) (head!13415 s!2326)))))

(declare-fun bm!579487 () Bool)

(assert (=> bm!579487 (= call!579491 (derivativeStep!5167 (ite c!1219219 (regOne!33487 r!7292) (regOne!33486 r!7292)) (head!13415 s!2326)))))

(declare-fun b!6614537 () Bool)

(assert (=> b!6614537 (= c!1219219 ((_ is Union!16487) r!7292))))

(assert (=> b!6614537 (= e!4001682 e!4001681)))

(assert (= (and d!2073439 c!1219216) b!6614528))

(assert (= (and d!2073439 (not c!1219216)) b!6614534))

(assert (= (and b!6614534 c!1219220) b!6614533))

(assert (= (and b!6614534 (not c!1219220)) b!6614537))

(assert (= (and b!6614537 c!1219219) b!6614531))

(assert (= (and b!6614537 (not c!1219219)) b!6614535))

(assert (= (and b!6614535 c!1219218) b!6614530))

(assert (= (and b!6614535 (not c!1219218)) b!6614536))

(assert (= (and b!6614536 c!1219217) b!6614529))

(assert (= (and b!6614536 (not c!1219217)) b!6614532))

(assert (= (or b!6614529 b!6614532) bm!579485))

(assert (= (or b!6614530 bm!579485) bm!579484))

(assert (= (or b!6614531 bm!579484) bm!579486))

(assert (= (or b!6614531 b!6614529) bm!579487))

(assert (=> b!6614536 m!7387452))

(declare-fun m!7387742 () Bool)

(assert (=> d!2073439 m!7387742))

(assert (=> d!2073439 m!7387248))

(assert (=> bm!579486 m!7387444))

(declare-fun m!7387744 () Bool)

(assert (=> bm!579486 m!7387744))

(assert (=> bm!579487 m!7387444))

(declare-fun m!7387746 () Bool)

(assert (=> bm!579487 m!7387746))

(assert (=> b!6614120 d!2073439))

(declare-fun d!2073441 () Bool)

(assert (=> d!2073441 (= (head!13415 s!2326) (h!72086 s!2326))))

(assert (=> b!6614120 d!2073441))

(declare-fun d!2073443 () Bool)

(assert (=> d!2073443 (= (tail!12500 s!2326) (t!379416 s!2326))))

(assert (=> b!6614120 d!2073443))

(declare-fun d!2073445 () Bool)

(assert (=> d!2073445 (= (isDefined!13081 lt!2417280) (not (isEmpty!37924 lt!2417280)))))

(declare-fun bs!1695614 () Bool)

(assert (= bs!1695614 d!2073445))

(declare-fun m!7387748 () Bool)

(assert (=> bs!1695614 m!7387748))

(assert (=> b!6614206 d!2073445))

(declare-fun d!2073447 () Bool)

(assert (=> d!2073447 (= (isEmpty!37921 (tail!12500 s!2326)) ((_ is Nil!65638) (tail!12500 s!2326)))))

(assert (=> b!6614007 d!2073447))

(assert (=> b!6614007 d!2073443))

(assert (=> b!6614051 d!2073441))

(declare-fun d!2073449 () Bool)

(assert (=> d!2073449 true))

(assert (=> d!2073449 true))

(declare-fun res!2712364 () Bool)

(assert (=> d!2073449 (= (choose!49425 lambda!369413) res!2712364)))

(assert (=> d!2073382 d!2073449))

(assert (=> b!6613722 d!2073273))

(declare-fun d!2073451 () Bool)

(assert (=> d!2073451 (= (nullable!6480 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (nullableFct!2401 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun bs!1695615 () Bool)

(assert (= bs!1695615 d!2073451))

(declare-fun m!7387750 () Bool)

(assert (=> bs!1695615 m!7387750))

(assert (=> b!6613717 d!2073451))

(declare-fun d!2073453 () Bool)

(declare-fun lambda!369484 () Int)

(declare-fun exists!2654 ((InoxSet Context!11742) Int) Bool)

(assert (=> d!2073453 (= (nullableZipper!2227 lt!2417194) (exists!2654 lt!2417194 lambda!369484))))

(declare-fun bs!1695616 () Bool)

(assert (= bs!1695616 d!2073453))

(declare-fun m!7387752 () Bool)

(assert (=> bs!1695616 m!7387752))

(assert (=> b!6613736 d!2073453))

(declare-fun d!2073455 () Bool)

(assert (=> d!2073455 (= (isEmpty!37921 s!2326) ((_ is Nil!65638) s!2326))))

(assert (=> bm!579421 d!2073455))

(declare-fun bm!579488 () Bool)

(declare-fun call!579493 () Bool)

(declare-fun c!1219223 () Bool)

(assert (=> bm!579488 (= call!579493 (nullable!6480 (ite c!1219223 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))

(declare-fun b!6614538 () Bool)

(declare-fun e!4001683 () Bool)

(declare-fun e!4001684 () Bool)

(assert (=> b!6614538 (= e!4001683 e!4001684)))

(assert (=> b!6614538 (= c!1219223 ((_ is Union!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614539 () Bool)

(declare-fun e!4001687 () Bool)

(assert (=> b!6614539 (= e!4001684 e!4001687)))

(declare-fun res!2712369 () Bool)

(assert (=> b!6614539 (= res!2712369 call!579493)))

(assert (=> b!6614539 (=> (not res!2712369) (not e!4001687))))

(declare-fun bm!579489 () Bool)

(declare-fun call!579494 () Bool)

(assert (=> bm!579489 (= call!579494 (nullable!6480 (ite c!1219223 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))

(declare-fun b!6614540 () Bool)

(declare-fun e!4001685 () Bool)

(assert (=> b!6614540 (= e!4001684 e!4001685)))

(declare-fun res!2712367 () Bool)

(assert (=> b!6614540 (= res!2712367 call!579493)))

(assert (=> b!6614540 (=> res!2712367 e!4001685)))

(declare-fun b!6614541 () Bool)

(assert (=> b!6614541 (= e!4001685 call!579494)))

(declare-fun d!2073457 () Bool)

(declare-fun res!2712368 () Bool)

(declare-fun e!4001686 () Bool)

(assert (=> d!2073457 (=> res!2712368 e!4001686)))

(assert (=> d!2073457 (= res!2712368 ((_ is EmptyExpr!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(assert (=> d!2073457 (= (nullableFct!2401 (h!72084 (exprs!6371 (h!72085 zl!343)))) e!4001686)))

(declare-fun b!6614542 () Bool)

(declare-fun e!4001688 () Bool)

(assert (=> b!6614542 (= e!4001688 e!4001683)))

(declare-fun res!2712366 () Bool)

(assert (=> b!6614542 (=> res!2712366 e!4001683)))

(assert (=> b!6614542 (= res!2712366 ((_ is Star!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614543 () Bool)

(assert (=> b!6614543 (= e!4001687 call!579494)))

(declare-fun b!6614544 () Bool)

(assert (=> b!6614544 (= e!4001686 e!4001688)))

(declare-fun res!2712365 () Bool)

(assert (=> b!6614544 (=> (not res!2712365) (not e!4001688))))

(assert (=> b!6614544 (= res!2712365 (and (not ((_ is EmptyLang!16487) (h!72084 (exprs!6371 (h!72085 zl!343))))) (not ((_ is ElementMatch!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))))

(assert (= (and d!2073457 (not res!2712368)) b!6614544))

(assert (= (and b!6614544 res!2712365) b!6614542))

(assert (= (and b!6614542 (not res!2712366)) b!6614538))

(assert (= (and b!6614538 c!1219223) b!6614540))

(assert (= (and b!6614538 (not c!1219223)) b!6614539))

(assert (= (and b!6614540 (not res!2712367)) b!6614541))

(assert (= (and b!6614539 res!2712369) b!6614543))

(assert (= (or b!6614541 b!6614543) bm!579489))

(assert (= (or b!6614540 b!6614539) bm!579488))

(declare-fun m!7387754 () Bool)

(assert (=> bm!579488 m!7387754))

(declare-fun m!7387756 () Bool)

(assert (=> bm!579489 m!7387756))

(assert (=> d!2073273 d!2073457))

(declare-fun bs!1695617 () Bool)

(declare-fun d!2073459 () Bool)

(assert (= bs!1695617 (and d!2073459 d!2073453)))

(declare-fun lambda!369485 () Int)

(assert (=> bs!1695617 (= lambda!369485 lambda!369484)))

(assert (=> d!2073459 (= (nullableZipper!2227 lt!2417206) (exists!2654 lt!2417206 lambda!369485))))

(declare-fun bs!1695618 () Bool)

(assert (= bs!1695618 d!2073459))

(declare-fun m!7387758 () Bool)

(assert (=> bs!1695618 m!7387758))

(assert (=> b!6613840 d!2073459))

(declare-fun d!2073461 () Bool)

(assert (=> d!2073461 (= (nullable!6480 (h!72084 (exprs!6371 lt!2417204))) (nullableFct!2401 (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun bs!1695619 () Bool)

(assert (= bs!1695619 d!2073461))

(declare-fun m!7387760 () Bool)

(assert (=> bs!1695619 m!7387760))

(assert (=> b!6613727 d!2073461))

(declare-fun b!6614545 () Bool)

(declare-fun res!2712377 () Bool)

(declare-fun e!4001693 () Bool)

(assert (=> b!6614545 (=> (not res!2712377) (not e!4001693))))

(assert (=> b!6614545 (= res!2712377 (isEmpty!37921 (tail!12500 (tail!12500 s!2326))))))

(declare-fun b!6614546 () Bool)

(declare-fun res!2712376 () Bool)

(declare-fun e!4001692 () Bool)

(assert (=> b!6614546 (=> res!2712376 e!4001692)))

(assert (=> b!6614546 (= res!2712376 e!4001693)))

(declare-fun res!2712374 () Bool)

(assert (=> b!6614546 (=> (not res!2712374) (not e!4001693))))

(declare-fun lt!2417314 () Bool)

(assert (=> b!6614546 (= res!2712374 lt!2417314)))

(declare-fun b!6614547 () Bool)

(declare-fun res!2712372 () Bool)

(assert (=> b!6614547 (=> (not res!2712372) (not e!4001693))))

(declare-fun call!579495 () Bool)

(assert (=> b!6614547 (= res!2712372 (not call!579495))))

(declare-fun b!6614548 () Bool)

(declare-fun e!4001689 () Bool)

(assert (=> b!6614548 (= e!4001689 (nullable!6480 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326))))))

(declare-fun b!6614549 () Bool)

(declare-fun e!4001690 () Bool)

(assert (=> b!6614549 (= e!4001690 (not (= (head!13415 (tail!12500 s!2326)) (c!1218988 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326))))))))

(declare-fun b!6614550 () Bool)

(assert (=> b!6614550 (= e!4001689 (matchR!8670 (derivativeStep!5167 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326)) (head!13415 (tail!12500 s!2326))) (tail!12500 (tail!12500 s!2326))))))

(declare-fun b!6614551 () Bool)

(declare-fun e!4001694 () Bool)

(assert (=> b!6614551 (= e!4001692 e!4001694)))

(declare-fun res!2712375 () Bool)

(assert (=> b!6614551 (=> (not res!2712375) (not e!4001694))))

(assert (=> b!6614551 (= res!2712375 (not lt!2417314))))

(declare-fun b!6614552 () Bool)

(declare-fun e!4001691 () Bool)

(assert (=> b!6614552 (= e!4001691 (not lt!2417314))))

(declare-fun bm!579490 () Bool)

(assert (=> bm!579490 (= call!579495 (isEmpty!37921 (tail!12500 s!2326)))))

(declare-fun b!6614553 () Bool)

(declare-fun e!4001695 () Bool)

(assert (=> b!6614553 (= e!4001695 (= lt!2417314 call!579495))))

(declare-fun b!6614554 () Bool)

(declare-fun res!2712371 () Bool)

(assert (=> b!6614554 (=> res!2712371 e!4001692)))

(assert (=> b!6614554 (= res!2712371 (not ((_ is ElementMatch!16487) (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326)))))))

(assert (=> b!6614554 (= e!4001691 e!4001692)))

(declare-fun d!2073463 () Bool)

(assert (=> d!2073463 e!4001695))

(declare-fun c!1219224 () Bool)

(assert (=> d!2073463 (= c!1219224 ((_ is EmptyExpr!16487) (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326))))))

(assert (=> d!2073463 (= lt!2417314 e!4001689)))

(declare-fun c!1219225 () Bool)

(assert (=> d!2073463 (= c!1219225 (isEmpty!37921 (tail!12500 s!2326)))))

(assert (=> d!2073463 (validRegex!8223 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326)))))

(assert (=> d!2073463 (= (matchR!8670 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326)) (tail!12500 s!2326)) lt!2417314)))

(declare-fun b!6614555 () Bool)

(assert (=> b!6614555 (= e!4001694 e!4001690)))

(declare-fun res!2712370 () Bool)

(assert (=> b!6614555 (=> res!2712370 e!4001690)))

(assert (=> b!6614555 (= res!2712370 call!579495)))

(declare-fun b!6614556 () Bool)

(assert (=> b!6614556 (= e!4001693 (= (head!13415 (tail!12500 s!2326)) (c!1218988 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326)))))))

(declare-fun b!6614557 () Bool)

(declare-fun res!2712373 () Bool)

(assert (=> b!6614557 (=> res!2712373 e!4001690)))

(assert (=> b!6614557 (= res!2712373 (not (isEmpty!37921 (tail!12500 (tail!12500 s!2326)))))))

(declare-fun b!6614558 () Bool)

(assert (=> b!6614558 (= e!4001695 e!4001691)))

(declare-fun c!1219226 () Bool)

(assert (=> b!6614558 (= c!1219226 ((_ is EmptyLang!16487) (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326))))))

(assert (= (and d!2073463 c!1219225) b!6614548))

(assert (= (and d!2073463 (not c!1219225)) b!6614550))

(assert (= (and d!2073463 c!1219224) b!6614553))

(assert (= (and d!2073463 (not c!1219224)) b!6614558))

(assert (= (and b!6614558 c!1219226) b!6614552))

(assert (= (and b!6614558 (not c!1219226)) b!6614554))

(assert (= (and b!6614554 (not res!2712371)) b!6614546))

(assert (= (and b!6614546 res!2712374) b!6614547))

(assert (= (and b!6614547 res!2712372) b!6614545))

(assert (= (and b!6614545 res!2712377) b!6614556))

(assert (= (and b!6614546 (not res!2712376)) b!6614551))

(assert (= (and b!6614551 res!2712375) b!6614555))

(assert (= (and b!6614555 (not res!2712370)) b!6614557))

(assert (= (and b!6614557 (not res!2712373)) b!6614549))

(assert (= (or b!6614553 b!6614547 b!6614555) bm!579490))

(assert (=> bm!579490 m!7387448))

(assert (=> bm!579490 m!7387454))

(assert (=> b!6614550 m!7387448))

(assert (=> b!6614550 m!7387728))

(assert (=> b!6614550 m!7387446))

(assert (=> b!6614550 m!7387728))

(declare-fun m!7387762 () Bool)

(assert (=> b!6614550 m!7387762))

(assert (=> b!6614550 m!7387448))

(assert (=> b!6614550 m!7387732))

(assert (=> b!6614550 m!7387762))

(assert (=> b!6614550 m!7387732))

(declare-fun m!7387764 () Bool)

(assert (=> b!6614550 m!7387764))

(assert (=> d!2073463 m!7387448))

(assert (=> d!2073463 m!7387454))

(assert (=> d!2073463 m!7387446))

(declare-fun m!7387766 () Bool)

(assert (=> d!2073463 m!7387766))

(assert (=> b!6614549 m!7387448))

(assert (=> b!6614549 m!7387728))

(assert (=> b!6614548 m!7387446))

(declare-fun m!7387768 () Bool)

(assert (=> b!6614548 m!7387768))

(assert (=> b!6614545 m!7387448))

(assert (=> b!6614545 m!7387732))

(assert (=> b!6614545 m!7387732))

(assert (=> b!6614545 m!7387740))

(assert (=> b!6614556 m!7387448))

(assert (=> b!6614556 m!7387728))

(assert (=> b!6614557 m!7387448))

(assert (=> b!6614557 m!7387732))

(assert (=> b!6614557 m!7387732))

(assert (=> b!6614557 m!7387740))

(assert (=> b!6614000 d!2073463))

(declare-fun b!6614559 () Bool)

(declare-fun e!4001696 () Regex!16487)

(assert (=> b!6614559 (= e!4001696 EmptyLang!16487)))

(declare-fun b!6614560 () Bool)

(declare-fun e!4001697 () Regex!16487)

(declare-fun call!579497 () Regex!16487)

(declare-fun call!579498 () Regex!16487)

(assert (=> b!6614560 (= e!4001697 (Union!16487 (Concat!25332 call!579498 (regTwo!33486 (regOne!33486 r!7292))) call!579497))))

(declare-fun b!6614561 () Bool)

(declare-fun e!4001698 () Regex!16487)

(declare-fun call!579499 () Regex!16487)

(assert (=> b!6614561 (= e!4001698 (Concat!25332 call!579499 (regOne!33486 r!7292)))))

(declare-fun b!6614562 () Bool)

(declare-fun e!4001699 () Regex!16487)

(declare-fun call!579496 () Regex!16487)

(assert (=> b!6614562 (= e!4001699 (Union!16487 call!579498 call!579496))))

(declare-fun bm!579491 () Bool)

(assert (=> bm!579491 (= call!579499 call!579496)))

(declare-fun b!6614564 () Bool)

(declare-fun e!4001700 () Regex!16487)

(assert (=> b!6614564 (= e!4001700 (ite (= (head!13415 s!2326) (c!1218988 (regOne!33486 r!7292))) EmptyExpr!16487 EmptyLang!16487))))

(declare-fun b!6614565 () Bool)

(assert (=> b!6614565 (= e!4001696 e!4001700)))

(declare-fun c!1219231 () Bool)

(assert (=> b!6614565 (= c!1219231 ((_ is ElementMatch!16487) (regOne!33486 r!7292)))))

(declare-fun b!6614566 () Bool)

(assert (=> b!6614566 (= e!4001699 e!4001698)))

(declare-fun c!1219229 () Bool)

(assert (=> b!6614566 (= c!1219229 ((_ is Star!16487) (regOne!33486 r!7292)))))

(declare-fun b!6614567 () Bool)

(declare-fun c!1219228 () Bool)

(assert (=> b!6614567 (= c!1219228 (nullable!6480 (regOne!33486 (regOne!33486 r!7292))))))

(assert (=> b!6614567 (= e!4001698 e!4001697)))

(declare-fun b!6614563 () Bool)

(assert (=> b!6614563 (= e!4001697 (Union!16487 (Concat!25332 call!579497 (regTwo!33486 (regOne!33486 r!7292))) EmptyLang!16487))))

(declare-fun d!2073465 () Bool)

(declare-fun lt!2417315 () Regex!16487)

(assert (=> d!2073465 (validRegex!8223 lt!2417315)))

(assert (=> d!2073465 (= lt!2417315 e!4001696)))

(declare-fun c!1219227 () Bool)

(assert (=> d!2073465 (= c!1219227 (or ((_ is EmptyExpr!16487) (regOne!33486 r!7292)) ((_ is EmptyLang!16487) (regOne!33486 r!7292))))))

(assert (=> d!2073465 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073465 (= (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 s!2326)) lt!2417315)))

(declare-fun bm!579492 () Bool)

(assert (=> bm!579492 (= call!579497 call!579499)))

(declare-fun c!1219230 () Bool)

(declare-fun bm!579493 () Bool)

(assert (=> bm!579493 (= call!579496 (derivativeStep!5167 (ite c!1219230 (regTwo!33487 (regOne!33486 r!7292)) (ite c!1219229 (reg!16816 (regOne!33486 r!7292)) (ite c!1219228 (regTwo!33486 (regOne!33486 r!7292)) (regOne!33486 (regOne!33486 r!7292))))) (head!13415 s!2326)))))

(declare-fun bm!579494 () Bool)

(assert (=> bm!579494 (= call!579498 (derivativeStep!5167 (ite c!1219230 (regOne!33487 (regOne!33486 r!7292)) (regOne!33486 (regOne!33486 r!7292))) (head!13415 s!2326)))))

(declare-fun b!6614568 () Bool)

(assert (=> b!6614568 (= c!1219230 ((_ is Union!16487) (regOne!33486 r!7292)))))

(assert (=> b!6614568 (= e!4001700 e!4001699)))

(assert (= (and d!2073465 c!1219227) b!6614559))

(assert (= (and d!2073465 (not c!1219227)) b!6614565))

(assert (= (and b!6614565 c!1219231) b!6614564))

(assert (= (and b!6614565 (not c!1219231)) b!6614568))

(assert (= (and b!6614568 c!1219230) b!6614562))

(assert (= (and b!6614568 (not c!1219230)) b!6614566))

(assert (= (and b!6614566 c!1219229) b!6614561))

(assert (= (and b!6614566 (not c!1219229)) b!6614567))

(assert (= (and b!6614567 c!1219228) b!6614560))

(assert (= (and b!6614567 (not c!1219228)) b!6614563))

(assert (= (or b!6614560 b!6614563) bm!579492))

(assert (= (or b!6614561 bm!579492) bm!579491))

(assert (= (or b!6614562 bm!579491) bm!579493))

(assert (= (or b!6614562 b!6614560) bm!579494))

(assert (=> b!6614567 m!7387242))

(declare-fun m!7387770 () Bool)

(assert (=> d!2073465 m!7387770))

(assert (=> d!2073465 m!7387414))

(assert (=> bm!579493 m!7387444))

(declare-fun m!7387772 () Bool)

(assert (=> bm!579493 m!7387772))

(assert (=> bm!579494 m!7387444))

(declare-fun m!7387774 () Bool)

(assert (=> bm!579494 m!7387774))

(assert (=> b!6614000 d!2073465))

(assert (=> b!6614000 d!2073441))

(assert (=> b!6614000 d!2073443))

(assert (=> b!6614044 d!2073441))

(declare-fun bs!1695620 () Bool)

(declare-fun d!2073467 () Bool)

(assert (= bs!1695620 (and d!2073467 d!2073301)))

(declare-fun lambda!369486 () Int)

(assert (=> bs!1695620 (= lambda!369486 lambda!369431)))

(declare-fun bs!1695621 () Bool)

(assert (= bs!1695621 (and d!2073467 d!2073289)))

(assert (=> bs!1695621 (= lambda!369486 lambda!369422)))

(declare-fun bs!1695622 () Bool)

(assert (= bs!1695622 (and d!2073467 d!2073359)))

(assert (=> bs!1695622 (= lambda!369486 lambda!369458)))

(declare-fun bs!1695623 () Bool)

(assert (= bs!1695623 (and d!2073467 d!2073263)))

(assert (=> bs!1695623 (= lambda!369486 lambda!369418)))

(declare-fun bs!1695624 () Bool)

(assert (= bs!1695624 (and d!2073467 d!2073265)))

(assert (=> bs!1695624 (= lambda!369486 lambda!369419)))

(declare-fun bs!1695625 () Bool)

(assert (= bs!1695625 (and d!2073467 d!2073297)))

(assert (=> bs!1695625 (= lambda!369486 lambda!369428)))

(declare-fun e!4001706 () Bool)

(assert (=> d!2073467 e!4001706))

(declare-fun res!2712378 () Bool)

(assert (=> d!2073467 (=> (not res!2712378) (not e!4001706))))

(declare-fun lt!2417316 () Regex!16487)

(assert (=> d!2073467 (= res!2712378 (validRegex!8223 lt!2417316))))

(declare-fun e!4001702 () Regex!16487)

(assert (=> d!2073467 (= lt!2417316 e!4001702)))

(declare-fun c!1219232 () Bool)

(declare-fun e!4001705 () Bool)

(assert (=> d!2073467 (= c!1219232 e!4001705)))

(declare-fun res!2712379 () Bool)

(assert (=> d!2073467 (=> (not res!2712379) (not e!4001705))))

(assert (=> d!2073467 (= res!2712379 ((_ is Cons!65636) (t!379414 (unfocusZipperList!1908 zl!343))))))

(assert (=> d!2073467 (forall!15682 (t!379414 (unfocusZipperList!1908 zl!343)) lambda!369486)))

(assert (=> d!2073467 (= (generalisedUnion!2331 (t!379414 (unfocusZipperList!1908 zl!343))) lt!2417316)))

(declare-fun b!6614569 () Bool)

(declare-fun e!4001701 () Regex!16487)

(assert (=> b!6614569 (= e!4001702 e!4001701)))

(declare-fun c!1219234 () Bool)

(assert (=> b!6614569 (= c!1219234 ((_ is Cons!65636) (t!379414 (unfocusZipperList!1908 zl!343))))))

(declare-fun b!6614570 () Bool)

(declare-fun e!4001703 () Bool)

(assert (=> b!6614570 (= e!4001706 e!4001703)))

(declare-fun c!1219235 () Bool)

(assert (=> b!6614570 (= c!1219235 (isEmpty!37920 (t!379414 (unfocusZipperList!1908 zl!343))))))

(declare-fun b!6614571 () Bool)

(assert (=> b!6614571 (= e!4001701 EmptyLang!16487)))

(declare-fun b!6614572 () Bool)

(declare-fun e!4001704 () Bool)

(assert (=> b!6614572 (= e!4001703 e!4001704)))

(declare-fun c!1219233 () Bool)

(assert (=> b!6614572 (= c!1219233 (isEmpty!37920 (tail!12502 (t!379414 (unfocusZipperList!1908 zl!343)))))))

(declare-fun b!6614573 () Bool)

(assert (=> b!6614573 (= e!4001704 (= lt!2417316 (head!13417 (t!379414 (unfocusZipperList!1908 zl!343)))))))

(declare-fun b!6614574 () Bool)

(assert (=> b!6614574 (= e!4001702 (h!72084 (t!379414 (unfocusZipperList!1908 zl!343))))))

(declare-fun b!6614575 () Bool)

(assert (=> b!6614575 (= e!4001704 (isUnion!1299 lt!2417316))))

(declare-fun b!6614576 () Bool)

(assert (=> b!6614576 (= e!4001705 (isEmpty!37920 (t!379414 (t!379414 (unfocusZipperList!1908 zl!343)))))))

(declare-fun b!6614577 () Bool)

(assert (=> b!6614577 (= e!4001703 (isEmptyLang!1869 lt!2417316))))

(declare-fun b!6614578 () Bool)

(assert (=> b!6614578 (= e!4001701 (Union!16487 (h!72084 (t!379414 (unfocusZipperList!1908 zl!343))) (generalisedUnion!2331 (t!379414 (t!379414 (unfocusZipperList!1908 zl!343))))))))

(assert (= (and d!2073467 res!2712379) b!6614576))

(assert (= (and d!2073467 c!1219232) b!6614574))

(assert (= (and d!2073467 (not c!1219232)) b!6614569))

(assert (= (and b!6614569 c!1219234) b!6614578))

(assert (= (and b!6614569 (not c!1219234)) b!6614571))

(assert (= (and d!2073467 res!2712378) b!6614570))

(assert (= (and b!6614570 c!1219235) b!6614577))

(assert (= (and b!6614570 (not c!1219235)) b!6614572))

(assert (= (and b!6614572 c!1219233) b!6614573))

(assert (= (and b!6614572 (not c!1219233)) b!6614575))

(declare-fun m!7387776 () Bool)

(assert (=> b!6614576 m!7387776))

(declare-fun m!7387778 () Bool)

(assert (=> b!6614575 m!7387778))

(declare-fun m!7387780 () Bool)

(assert (=> b!6614572 m!7387780))

(assert (=> b!6614572 m!7387780))

(declare-fun m!7387782 () Bool)

(assert (=> b!6614572 m!7387782))

(assert (=> b!6614570 m!7387326))

(declare-fun m!7387784 () Bool)

(assert (=> b!6614573 m!7387784))

(declare-fun m!7387786 () Bool)

(assert (=> b!6614577 m!7387786))

(declare-fun m!7387788 () Bool)

(assert (=> b!6614578 m!7387788))

(declare-fun m!7387790 () Bool)

(assert (=> d!2073467 m!7387790))

(declare-fun m!7387792 () Bool)

(assert (=> d!2073467 m!7387792))

(assert (=> b!6613769 d!2073467))

(declare-fun b!6614579 () Bool)

(declare-fun e!4001712 () Bool)

(declare-fun e!4001708 () Bool)

(assert (=> b!6614579 (= e!4001712 e!4001708)))

(declare-fun res!2712380 () Bool)

(assert (=> b!6614579 (=> (not res!2712380) (not e!4001708))))

(declare-fun call!579500 () Bool)

(assert (=> b!6614579 (= res!2712380 call!579500)))

(declare-fun b!6614580 () Bool)

(declare-fun e!4001710 () Bool)

(declare-fun e!4001709 () Bool)

(assert (=> b!6614580 (= e!4001710 e!4001709)))

(declare-fun c!1219237 () Bool)

(assert (=> b!6614580 (= c!1219237 ((_ is Union!16487) lt!2417267))))

(declare-fun bm!579495 () Bool)

(declare-fun call!579501 () Bool)

(declare-fun call!579502 () Bool)

(assert (=> bm!579495 (= call!579501 call!579502)))

(declare-fun b!6614581 () Bool)

(declare-fun e!4001713 () Bool)

(assert (=> b!6614581 (= e!4001710 e!4001713)))

(declare-fun res!2712384 () Bool)

(assert (=> b!6614581 (= res!2712384 (not (nullable!6480 (reg!16816 lt!2417267))))))

(assert (=> b!6614581 (=> (not res!2712384) (not e!4001713))))

(declare-fun b!6614582 () Bool)

(declare-fun e!4001711 () Bool)

(assert (=> b!6614582 (= e!4001711 e!4001710)))

(declare-fun c!1219236 () Bool)

(assert (=> b!6614582 (= c!1219236 ((_ is Star!16487) lt!2417267))))

(declare-fun bm!579496 () Bool)

(assert (=> bm!579496 (= call!579502 (validRegex!8223 (ite c!1219236 (reg!16816 lt!2417267) (ite c!1219237 (regTwo!33487 lt!2417267) (regTwo!33486 lt!2417267)))))))

(declare-fun b!6614583 () Bool)

(declare-fun e!4001707 () Bool)

(assert (=> b!6614583 (= e!4001707 call!579501)))

(declare-fun b!6614584 () Bool)

(declare-fun res!2712381 () Bool)

(assert (=> b!6614584 (=> (not res!2712381) (not e!4001707))))

(assert (=> b!6614584 (= res!2712381 call!579500)))

(assert (=> b!6614584 (= e!4001709 e!4001707)))

(declare-fun bm!579497 () Bool)

(assert (=> bm!579497 (= call!579500 (validRegex!8223 (ite c!1219237 (regOne!33487 lt!2417267) (regOne!33486 lt!2417267))))))

(declare-fun b!6614586 () Bool)

(declare-fun res!2712383 () Bool)

(assert (=> b!6614586 (=> res!2712383 e!4001712)))

(assert (=> b!6614586 (= res!2712383 (not ((_ is Concat!25332) lt!2417267)))))

(assert (=> b!6614586 (= e!4001709 e!4001712)))

(declare-fun b!6614587 () Bool)

(assert (=> b!6614587 (= e!4001708 call!579501)))

(declare-fun b!6614585 () Bool)

(assert (=> b!6614585 (= e!4001713 call!579502)))

(declare-fun d!2073469 () Bool)

(declare-fun res!2712382 () Bool)

(assert (=> d!2073469 (=> res!2712382 e!4001711)))

(assert (=> d!2073469 (= res!2712382 ((_ is ElementMatch!16487) lt!2417267))))

(assert (=> d!2073469 (= (validRegex!8223 lt!2417267) e!4001711)))

(assert (= (and d!2073469 (not res!2712382)) b!6614582))

(assert (= (and b!6614582 c!1219236) b!6614581))

(assert (= (and b!6614582 (not c!1219236)) b!6614580))

(assert (= (and b!6614581 res!2712384) b!6614585))

(assert (= (and b!6614580 c!1219237) b!6614584))

(assert (= (and b!6614580 (not c!1219237)) b!6614586))

(assert (= (and b!6614584 res!2712381) b!6614583))

(assert (= (and b!6614586 (not res!2712383)) b!6614579))

(assert (= (and b!6614579 res!2712380) b!6614587))

(assert (= (or b!6614583 b!6614587) bm!579495))

(assert (= (or b!6614584 b!6614579) bm!579497))

(assert (= (or b!6614585 bm!579495) bm!579496))

(declare-fun m!7387794 () Bool)

(assert (=> b!6614581 m!7387794))

(declare-fun m!7387796 () Bool)

(assert (=> bm!579496 m!7387796))

(declare-fun m!7387798 () Bool)

(assert (=> bm!579497 m!7387798))

(assert (=> d!2073367 d!2073469))

(assert (=> d!2073367 d!2073289))

(assert (=> d!2073367 d!2073297))

(assert (=> d!2073331 d!2073455))

(declare-fun b!6614588 () Bool)

(declare-fun e!4001719 () Bool)

(declare-fun e!4001715 () Bool)

(assert (=> b!6614588 (= e!4001719 e!4001715)))

(declare-fun res!2712385 () Bool)

(assert (=> b!6614588 (=> (not res!2712385) (not e!4001715))))

(declare-fun call!579503 () Bool)

(assert (=> b!6614588 (= res!2712385 call!579503)))

(declare-fun b!6614589 () Bool)

(declare-fun e!4001717 () Bool)

(declare-fun e!4001716 () Bool)

(assert (=> b!6614589 (= e!4001717 e!4001716)))

(declare-fun c!1219239 () Bool)

(assert (=> b!6614589 (= c!1219239 ((_ is Union!16487) (regTwo!33486 r!7292)))))

(declare-fun bm!579498 () Bool)

(declare-fun call!579504 () Bool)

(declare-fun call!579505 () Bool)

(assert (=> bm!579498 (= call!579504 call!579505)))

(declare-fun b!6614590 () Bool)

(declare-fun e!4001720 () Bool)

(assert (=> b!6614590 (= e!4001717 e!4001720)))

(declare-fun res!2712389 () Bool)

(assert (=> b!6614590 (= res!2712389 (not (nullable!6480 (reg!16816 (regTwo!33486 r!7292)))))))

(assert (=> b!6614590 (=> (not res!2712389) (not e!4001720))))

(declare-fun b!6614591 () Bool)

(declare-fun e!4001718 () Bool)

(assert (=> b!6614591 (= e!4001718 e!4001717)))

(declare-fun c!1219238 () Bool)

(assert (=> b!6614591 (= c!1219238 ((_ is Star!16487) (regTwo!33486 r!7292)))))

(declare-fun bm!579499 () Bool)

(assert (=> bm!579499 (= call!579505 (validRegex!8223 (ite c!1219238 (reg!16816 (regTwo!33486 r!7292)) (ite c!1219239 (regTwo!33487 (regTwo!33486 r!7292)) (regTwo!33486 (regTwo!33486 r!7292))))))))

(declare-fun b!6614592 () Bool)

(declare-fun e!4001714 () Bool)

(assert (=> b!6614592 (= e!4001714 call!579504)))

(declare-fun b!6614593 () Bool)

(declare-fun res!2712386 () Bool)

(assert (=> b!6614593 (=> (not res!2712386) (not e!4001714))))

(assert (=> b!6614593 (= res!2712386 call!579503)))

(assert (=> b!6614593 (= e!4001716 e!4001714)))

(declare-fun bm!579500 () Bool)

(assert (=> bm!579500 (= call!579503 (validRegex!8223 (ite c!1219239 (regOne!33487 (regTwo!33486 r!7292)) (regOne!33486 (regTwo!33486 r!7292)))))))

(declare-fun b!6614595 () Bool)

(declare-fun res!2712388 () Bool)

(assert (=> b!6614595 (=> res!2712388 e!4001719)))

(assert (=> b!6614595 (= res!2712388 (not ((_ is Concat!25332) (regTwo!33486 r!7292))))))

(assert (=> b!6614595 (= e!4001716 e!4001719)))

(declare-fun b!6614596 () Bool)

(assert (=> b!6614596 (= e!4001715 call!579504)))

(declare-fun b!6614594 () Bool)

(assert (=> b!6614594 (= e!4001720 call!579505)))

(declare-fun d!2073471 () Bool)

(declare-fun res!2712387 () Bool)

(assert (=> d!2073471 (=> res!2712387 e!4001718)))

(assert (=> d!2073471 (= res!2712387 ((_ is ElementMatch!16487) (regTwo!33486 r!7292)))))

(assert (=> d!2073471 (= (validRegex!8223 (regTwo!33486 r!7292)) e!4001718)))

(assert (= (and d!2073471 (not res!2712387)) b!6614591))

(assert (= (and b!6614591 c!1219238) b!6614590))

(assert (= (and b!6614591 (not c!1219238)) b!6614589))

(assert (= (and b!6614590 res!2712389) b!6614594))

(assert (= (and b!6614589 c!1219239) b!6614593))

(assert (= (and b!6614589 (not c!1219239)) b!6614595))

(assert (= (and b!6614593 res!2712386) b!6614592))

(assert (= (and b!6614595 (not res!2712388)) b!6614588))

(assert (= (and b!6614588 res!2712385) b!6614596))

(assert (= (or b!6614592 b!6614596) bm!579498))

(assert (= (or b!6614593 b!6614588) bm!579500))

(assert (= (or b!6614594 bm!579498) bm!579499))

(declare-fun m!7387800 () Bool)

(assert (=> b!6614590 m!7387800))

(declare-fun m!7387802 () Bool)

(assert (=> bm!579499 m!7387802))

(declare-fun m!7387804 () Bool)

(assert (=> bm!579500 m!7387804))

(assert (=> d!2073331 d!2073471))

(assert (=> b!6614040 d!2073447))

(assert (=> b!6614040 d!2073443))

(declare-fun d!2073473 () Bool)

(assert (=> d!2073473 (= (isEmpty!37920 (tail!12502 (exprs!6371 (h!72085 zl!343)))) ((_ is Nil!65636) (tail!12502 (exprs!6371 (h!72085 zl!343)))))))

(assert (=> b!6613830 d!2073473))

(declare-fun d!2073475 () Bool)

(assert (=> d!2073475 (= (tail!12502 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))

(assert (=> b!6613830 d!2073475))

(declare-fun d!2073477 () Bool)

(assert (=> d!2073477 true))

(assert (=> d!2073477 true))

(declare-fun res!2712390 () Bool)

(assert (=> d!2073477 (= (choose!49425 lambda!369414) res!2712390)))

(assert (=> d!2073378 d!2073477))

(assert (=> b!6613826 d!2073309))

(declare-fun d!2073479 () Bool)

(assert (=> d!2073479 (= (isEmpty!37920 (unfocusZipperList!1908 zl!343)) ((_ is Nil!65636) (unfocusZipperList!1908 zl!343)))))

(assert (=> b!6613761 d!2073479))

(declare-fun d!2073481 () Bool)

(declare-fun res!2712395 () Bool)

(declare-fun e!4001725 () Bool)

(assert (=> d!2073481 (=> res!2712395 e!4001725)))

(assert (=> d!2073481 (= res!2712395 ((_ is Nil!65636) (exprs!6371 lt!2417204)))))

(assert (=> d!2073481 (= (forall!15682 (exprs!6371 lt!2417204) lambda!369418) e!4001725)))

(declare-fun b!6614601 () Bool)

(declare-fun e!4001726 () Bool)

(assert (=> b!6614601 (= e!4001725 e!4001726)))

(declare-fun res!2712396 () Bool)

(assert (=> b!6614601 (=> (not res!2712396) (not e!4001726))))

(declare-fun dynLambda!26139 (Int Regex!16487) Bool)

(assert (=> b!6614601 (= res!2712396 (dynLambda!26139 lambda!369418 (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun b!6614602 () Bool)

(assert (=> b!6614602 (= e!4001726 (forall!15682 (t!379414 (exprs!6371 lt!2417204)) lambda!369418))))

(assert (= (and d!2073481 (not res!2712395)) b!6614601))

(assert (= (and b!6614601 res!2712396) b!6614602))

(declare-fun b_lambda!250171 () Bool)

(assert (=> (not b_lambda!250171) (not b!6614601)))

(declare-fun m!7387806 () Bool)

(assert (=> b!6614601 m!7387806))

(declare-fun m!7387808 () Bool)

(assert (=> b!6614602 m!7387808))

(assert (=> d!2073263 d!2073481))

(assert (=> d!2073365 d!2073285))

(declare-fun d!2073483 () Bool)

(assert (=> d!2073483 (not (matchZipper!2499 lt!2417194 (t!379416 s!2326)))))

(assert (=> d!2073483 true))

(declare-fun _$64!769 () Unit!159303)

(assert (=> d!2073483 (= (choose!49423 lt!2417194 (t!379416 s!2326)) _$64!769)))

(declare-fun bs!1695626 () Bool)

(assert (= bs!1695626 d!2073483))

(assert (=> bs!1695626 m!7387208))

(assert (=> d!2073365 d!2073483))

(declare-fun bs!1695627 () Bool)

(declare-fun b!6614606 () Bool)

(assert (= bs!1695627 (and b!6614606 b!6614097)))

(declare-fun lambda!369487 () Int)

(assert (=> bs!1695627 (not (= lambda!369487 lambda!369456))))

(declare-fun bs!1695628 () Bool)

(assert (= bs!1695628 (and b!6614606 d!2073391)))

(assert (=> bs!1695628 (not (= lambda!369487 lambda!369473))))

(declare-fun bs!1695629 () Bool)

(assert (= bs!1695629 (and b!6614606 b!6614009)))

(assert (=> bs!1695629 (not (= lambda!369487 lambda!369449))))

(declare-fun bs!1695630 () Bool)

(assert (= bs!1695630 (and b!6614606 b!6614100)))

(assert (=> bs!1695630 (= (and (= (reg!16816 (regTwo!33487 (regTwo!33486 r!7292))) (reg!16816 r!7292)) (= (regTwo!33487 (regTwo!33486 r!7292)) r!7292)) (= lambda!369487 lambda!369455))))

(declare-fun bs!1695631 () Bool)

(assert (= bs!1695631 (and b!6614606 b!6613656)))

(assert (=> bs!1695631 (not (= lambda!369487 lambda!369413))))

(assert (=> bs!1695628 (not (= lambda!369487 lambda!369471))))

(assert (=> bs!1695631 (not (= lambda!369487 lambda!369414))))

(declare-fun bs!1695632 () Bool)

(assert (= bs!1695632 (and b!6614606 b!6613889)))

(assert (=> bs!1695632 (not (= lambda!369487 lambda!369443))))

(declare-fun bs!1695633 () Bool)

(assert (= bs!1695633 (and b!6614606 b!6614012)))

(assert (=> bs!1695633 (= (and (= (reg!16816 (regTwo!33487 (regTwo!33486 r!7292))) (reg!16816 (regTwo!33486 r!7292))) (= (regTwo!33487 (regTwo!33486 r!7292)) (regTwo!33486 r!7292))) (= lambda!369487 lambda!369446))))

(declare-fun bs!1695634 () Bool)

(assert (= bs!1695634 (and b!6614606 b!6613892)))

(assert (=> bs!1695634 (= (and (= (reg!16816 (regTwo!33487 (regTwo!33486 r!7292))) (reg!16816 (regOne!33486 r!7292))) (= (regTwo!33487 (regTwo!33486 r!7292)) (regOne!33486 r!7292))) (= lambda!369487 lambda!369442))))

(declare-fun bs!1695635 () Bool)

(assert (= bs!1695635 (and b!6614606 d!2073386)))

(assert (=> bs!1695635 (not (= lambda!369487 lambda!369466))))

(assert (=> b!6614606 true))

(assert (=> b!6614606 true))

(declare-fun bs!1695636 () Bool)

(declare-fun b!6614603 () Bool)

(assert (= bs!1695636 (and b!6614603 b!6614097)))

(declare-fun lambda!369488 () Int)

(assert (=> bs!1695636 (= (and (= (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369488 lambda!369456))))

(declare-fun bs!1695637 () Bool)

(assert (= bs!1695637 (and b!6614603 b!6614606)))

(assert (=> bs!1695637 (not (= lambda!369488 lambda!369487))))

(declare-fun bs!1695638 () Bool)

(assert (= bs!1695638 (and b!6614603 d!2073391)))

(assert (=> bs!1695638 (= (and (= (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369488 lambda!369473))))

(declare-fun bs!1695639 () Bool)

(assert (= bs!1695639 (and b!6614603 b!6614009)))

(assert (=> bs!1695639 (= (and (= (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369488 lambda!369449))))

(declare-fun bs!1695640 () Bool)

(assert (= bs!1695640 (and b!6614603 b!6614100)))

(assert (=> bs!1695640 (not (= lambda!369488 lambda!369455))))

(declare-fun bs!1695641 () Bool)

(assert (= bs!1695641 (and b!6614603 b!6613656)))

(assert (=> bs!1695641 (not (= lambda!369488 lambda!369413))))

(assert (=> bs!1695638 (not (= lambda!369488 lambda!369471))))

(assert (=> bs!1695641 (= (and (= (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369488 lambda!369414))))

(declare-fun bs!1695642 () Bool)

(assert (= bs!1695642 (and b!6614603 b!6613889)))

(assert (=> bs!1695642 (= (and (= (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369488 lambda!369443))))

(declare-fun bs!1695643 () Bool)

(assert (= bs!1695643 (and b!6614603 b!6614012)))

(assert (=> bs!1695643 (not (= lambda!369488 lambda!369446))))

(declare-fun bs!1695644 () Bool)

(assert (= bs!1695644 (and b!6614603 b!6613892)))

(assert (=> bs!1695644 (not (= lambda!369488 lambda!369442))))

(declare-fun bs!1695645 () Bool)

(assert (= bs!1695645 (and b!6614603 d!2073386)))

(assert (=> bs!1695645 (not (= lambda!369488 lambda!369466))))

(assert (=> b!6614603 true))

(assert (=> b!6614603 true))

(declare-fun e!4001728 () Bool)

(declare-fun call!579506 () Bool)

(assert (=> b!6614603 (= e!4001728 call!579506)))

(declare-fun b!6614604 () Bool)

(declare-fun e!4001727 () Bool)

(declare-fun e!4001731 () Bool)

(assert (=> b!6614604 (= e!4001727 e!4001731)))

(declare-fun res!2712398 () Bool)

(assert (=> b!6614604 (= res!2712398 (matchRSpec!3588 (regOne!33487 (regTwo!33487 (regTwo!33486 r!7292))) s!2326))))

(assert (=> b!6614604 (=> res!2712398 e!4001731)))

(declare-fun b!6614605 () Bool)

(declare-fun e!4001729 () Bool)

(declare-fun e!4001733 () Bool)

(assert (=> b!6614605 (= e!4001729 e!4001733)))

(declare-fun res!2712397 () Bool)

(assert (=> b!6614605 (= res!2712397 (not ((_ is EmptyLang!16487) (regTwo!33487 (regTwo!33486 r!7292)))))))

(assert (=> b!6614605 (=> (not res!2712397) (not e!4001733))))

(declare-fun bm!579501 () Bool)

(declare-fun call!579507 () Bool)

(assert (=> bm!579501 (= call!579507 (isEmpty!37921 s!2326))))

(declare-fun e!4001732 () Bool)

(assert (=> b!6614606 (= e!4001732 call!579506)))

(declare-fun b!6614607 () Bool)

(assert (=> b!6614607 (= e!4001729 call!579507)))

(declare-fun b!6614608 () Bool)

(declare-fun c!1219243 () Bool)

(assert (=> b!6614608 (= c!1219243 ((_ is ElementMatch!16487) (regTwo!33487 (regTwo!33486 r!7292))))))

(declare-fun e!4001730 () Bool)

(assert (=> b!6614608 (= e!4001733 e!4001730)))

(declare-fun d!2073485 () Bool)

(declare-fun c!1219240 () Bool)

(assert (=> d!2073485 (= c!1219240 ((_ is EmptyExpr!16487) (regTwo!33487 (regTwo!33486 r!7292))))))

(assert (=> d!2073485 (= (matchRSpec!3588 (regTwo!33487 (regTwo!33486 r!7292)) s!2326) e!4001729)))

(declare-fun b!6614609 () Bool)

(declare-fun c!1219241 () Bool)

(assert (=> b!6614609 (= c!1219241 ((_ is Union!16487) (regTwo!33487 (regTwo!33486 r!7292))))))

(assert (=> b!6614609 (= e!4001730 e!4001727)))

(declare-fun b!6614610 () Bool)

(assert (=> b!6614610 (= e!4001727 e!4001728)))

(declare-fun c!1219242 () Bool)

(assert (=> b!6614610 (= c!1219242 ((_ is Star!16487) (regTwo!33487 (regTwo!33486 r!7292))))))

(declare-fun b!6614611 () Bool)

(assert (=> b!6614611 (= e!4001730 (= s!2326 (Cons!65638 (c!1218988 (regTwo!33487 (regTwo!33486 r!7292))) Nil!65638)))))

(declare-fun b!6614612 () Bool)

(declare-fun res!2712399 () Bool)

(assert (=> b!6614612 (=> res!2712399 e!4001732)))

(assert (=> b!6614612 (= res!2712399 call!579507)))

(assert (=> b!6614612 (= e!4001728 e!4001732)))

(declare-fun b!6614613 () Bool)

(assert (=> b!6614613 (= e!4001731 (matchRSpec!3588 (regTwo!33487 (regTwo!33487 (regTwo!33486 r!7292))) s!2326))))

(declare-fun bm!579502 () Bool)

(assert (=> bm!579502 (= call!579506 (Exists!3557 (ite c!1219242 lambda!369487 lambda!369488)))))

(assert (= (and d!2073485 c!1219240) b!6614607))

(assert (= (and d!2073485 (not c!1219240)) b!6614605))

(assert (= (and b!6614605 res!2712397) b!6614608))

(assert (= (and b!6614608 c!1219243) b!6614611))

(assert (= (and b!6614608 (not c!1219243)) b!6614609))

(assert (= (and b!6614609 c!1219241) b!6614604))

(assert (= (and b!6614609 (not c!1219241)) b!6614610))

(assert (= (and b!6614604 (not res!2712398)) b!6614613))

(assert (= (and b!6614610 c!1219242) b!6614612))

(assert (= (and b!6614610 (not c!1219242)) b!6614603))

(assert (= (and b!6614612 (not res!2712399)) b!6614606))

(assert (= (or b!6614606 b!6614603) bm!579502))

(assert (= (or b!6614607 b!6614612) bm!579501))

(declare-fun m!7387810 () Bool)

(assert (=> b!6614604 m!7387810))

(assert (=> bm!579501 m!7387406))

(declare-fun m!7387812 () Bool)

(assert (=> b!6614613 m!7387812))

(declare-fun m!7387814 () Bool)

(assert (=> bm!579502 m!7387814))

(assert (=> b!6614019 d!2073485))

(declare-fun bs!1695646 () Bool)

(declare-fun b!6614617 () Bool)

(assert (= bs!1695646 (and b!6614617 b!6614603)))

(declare-fun lambda!369489 () Int)

(assert (=> bs!1695646 (not (= lambda!369489 lambda!369488))))

(declare-fun bs!1695647 () Bool)

(assert (= bs!1695647 (and b!6614617 b!6614097)))

(assert (=> bs!1695647 (not (= lambda!369489 lambda!369456))))

(declare-fun bs!1695648 () Bool)

(assert (= bs!1695648 (and b!6614617 b!6614606)))

(assert (=> bs!1695648 (= (and (= (reg!16816 (regTwo!33487 r!7292)) (reg!16816 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33487 r!7292) (regTwo!33487 (regTwo!33486 r!7292)))) (= lambda!369489 lambda!369487))))

(declare-fun bs!1695649 () Bool)

(assert (= bs!1695649 (and b!6614617 d!2073391)))

(assert (=> bs!1695649 (not (= lambda!369489 lambda!369473))))

(declare-fun bs!1695650 () Bool)

(assert (= bs!1695650 (and b!6614617 b!6614009)))

(assert (=> bs!1695650 (not (= lambda!369489 lambda!369449))))

(declare-fun bs!1695651 () Bool)

(assert (= bs!1695651 (and b!6614617 b!6614100)))

(assert (=> bs!1695651 (= (and (= (reg!16816 (regTwo!33487 r!7292)) (reg!16816 r!7292)) (= (regTwo!33487 r!7292) r!7292)) (= lambda!369489 lambda!369455))))

(declare-fun bs!1695652 () Bool)

(assert (= bs!1695652 (and b!6614617 b!6613656)))

(assert (=> bs!1695652 (not (= lambda!369489 lambda!369413))))

(assert (=> bs!1695649 (not (= lambda!369489 lambda!369471))))

(assert (=> bs!1695652 (not (= lambda!369489 lambda!369414))))

(declare-fun bs!1695653 () Bool)

(assert (= bs!1695653 (and b!6614617 b!6613889)))

(assert (=> bs!1695653 (not (= lambda!369489 lambda!369443))))

(declare-fun bs!1695654 () Bool)

(assert (= bs!1695654 (and b!6614617 b!6614012)))

(assert (=> bs!1695654 (= (and (= (reg!16816 (regTwo!33487 r!7292)) (reg!16816 (regTwo!33486 r!7292))) (= (regTwo!33487 r!7292) (regTwo!33486 r!7292))) (= lambda!369489 lambda!369446))))

(declare-fun bs!1695655 () Bool)

(assert (= bs!1695655 (and b!6614617 b!6613892)))

(assert (=> bs!1695655 (= (and (= (reg!16816 (regTwo!33487 r!7292)) (reg!16816 (regOne!33486 r!7292))) (= (regTwo!33487 r!7292) (regOne!33486 r!7292))) (= lambda!369489 lambda!369442))))

(declare-fun bs!1695656 () Bool)

(assert (= bs!1695656 (and b!6614617 d!2073386)))

(assert (=> bs!1695656 (not (= lambda!369489 lambda!369466))))

(assert (=> b!6614617 true))

(assert (=> b!6614617 true))

(declare-fun bs!1695657 () Bool)

(declare-fun b!6614614 () Bool)

(assert (= bs!1695657 (and b!6614614 b!6614603)))

(declare-fun lambda!369490 () Int)

(assert (=> bs!1695657 (= (and (= (regOne!33486 (regTwo!33487 r!7292)) (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33486 (regTwo!33487 r!7292)) (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))))) (= lambda!369490 lambda!369488))))

(declare-fun bs!1695658 () Bool)

(assert (= bs!1695658 (and b!6614614 b!6614097)))

(assert (=> bs!1695658 (= (and (= (regOne!33486 (regTwo!33487 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 r!7292)) (regTwo!33486 r!7292))) (= lambda!369490 lambda!369456))))

(declare-fun bs!1695659 () Bool)

(assert (= bs!1695659 (and b!6614614 b!6614606)))

(assert (=> bs!1695659 (not (= lambda!369490 lambda!369487))))

(declare-fun bs!1695660 () Bool)

(assert (= bs!1695660 (and b!6614614 d!2073391)))

(assert (=> bs!1695660 (= (and (= (regOne!33486 (regTwo!33487 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 r!7292)) (regTwo!33486 r!7292))) (= lambda!369490 lambda!369473))))

(declare-fun bs!1695661 () Bool)

(assert (= bs!1695661 (and b!6614614 b!6614009)))

(assert (=> bs!1695661 (= (and (= (regOne!33486 (regTwo!33487 r!7292)) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 (regTwo!33487 r!7292)) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369490 lambda!369449))))

(declare-fun bs!1695662 () Bool)

(assert (= bs!1695662 (and b!6614614 b!6613656)))

(assert (=> bs!1695662 (not (= lambda!369490 lambda!369413))))

(assert (=> bs!1695660 (not (= lambda!369490 lambda!369471))))

(assert (=> bs!1695662 (= (and (= (regOne!33486 (regTwo!33487 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 r!7292)) (regTwo!33486 r!7292))) (= lambda!369490 lambda!369414))))

(declare-fun bs!1695663 () Bool)

(assert (= bs!1695663 (and b!6614614 b!6613889)))

(assert (=> bs!1695663 (= (and (= (regOne!33486 (regTwo!33487 r!7292)) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 (regTwo!33487 r!7292)) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369490 lambda!369443))))

(declare-fun bs!1695664 () Bool)

(assert (= bs!1695664 (and b!6614614 b!6614012)))

(assert (=> bs!1695664 (not (= lambda!369490 lambda!369446))))

(declare-fun bs!1695665 () Bool)

(assert (= bs!1695665 (and b!6614614 b!6613892)))

(assert (=> bs!1695665 (not (= lambda!369490 lambda!369442))))

(declare-fun bs!1695666 () Bool)

(assert (= bs!1695666 (and b!6614614 d!2073386)))

(assert (=> bs!1695666 (not (= lambda!369490 lambda!369466))))

(declare-fun bs!1695667 () Bool)

(assert (= bs!1695667 (and b!6614614 b!6614617)))

(assert (=> bs!1695667 (not (= lambda!369490 lambda!369489))))

(declare-fun bs!1695668 () Bool)

(assert (= bs!1695668 (and b!6614614 b!6614100)))

(assert (=> bs!1695668 (not (= lambda!369490 lambda!369455))))

(assert (=> b!6614614 true))

(assert (=> b!6614614 true))

(declare-fun e!4001735 () Bool)

(declare-fun call!579508 () Bool)

(assert (=> b!6614614 (= e!4001735 call!579508)))

(declare-fun b!6614615 () Bool)

(declare-fun e!4001734 () Bool)

(declare-fun e!4001738 () Bool)

(assert (=> b!6614615 (= e!4001734 e!4001738)))

(declare-fun res!2712401 () Bool)

(assert (=> b!6614615 (= res!2712401 (matchRSpec!3588 (regOne!33487 (regTwo!33487 r!7292)) s!2326))))

(assert (=> b!6614615 (=> res!2712401 e!4001738)))

(declare-fun b!6614616 () Bool)

(declare-fun e!4001736 () Bool)

(declare-fun e!4001740 () Bool)

(assert (=> b!6614616 (= e!4001736 e!4001740)))

(declare-fun res!2712400 () Bool)

(assert (=> b!6614616 (= res!2712400 (not ((_ is EmptyLang!16487) (regTwo!33487 r!7292))))))

(assert (=> b!6614616 (=> (not res!2712400) (not e!4001740))))

(declare-fun bm!579503 () Bool)

(declare-fun call!579509 () Bool)

(assert (=> bm!579503 (= call!579509 (isEmpty!37921 s!2326))))

(declare-fun e!4001739 () Bool)

(assert (=> b!6614617 (= e!4001739 call!579508)))

(declare-fun b!6614618 () Bool)

(assert (=> b!6614618 (= e!4001736 call!579509)))

(declare-fun b!6614619 () Bool)

(declare-fun c!1219247 () Bool)

(assert (=> b!6614619 (= c!1219247 ((_ is ElementMatch!16487) (regTwo!33487 r!7292)))))

(declare-fun e!4001737 () Bool)

(assert (=> b!6614619 (= e!4001740 e!4001737)))

(declare-fun d!2073487 () Bool)

(declare-fun c!1219244 () Bool)

(assert (=> d!2073487 (= c!1219244 ((_ is EmptyExpr!16487) (regTwo!33487 r!7292)))))

(assert (=> d!2073487 (= (matchRSpec!3588 (regTwo!33487 r!7292) s!2326) e!4001736)))

(declare-fun b!6614620 () Bool)

(declare-fun c!1219245 () Bool)

(assert (=> b!6614620 (= c!1219245 ((_ is Union!16487) (regTwo!33487 r!7292)))))

(assert (=> b!6614620 (= e!4001737 e!4001734)))

(declare-fun b!6614621 () Bool)

(assert (=> b!6614621 (= e!4001734 e!4001735)))

(declare-fun c!1219246 () Bool)

(assert (=> b!6614621 (= c!1219246 ((_ is Star!16487) (regTwo!33487 r!7292)))))

(declare-fun b!6614622 () Bool)

(assert (=> b!6614622 (= e!4001737 (= s!2326 (Cons!65638 (c!1218988 (regTwo!33487 r!7292)) Nil!65638)))))

(declare-fun b!6614623 () Bool)

(declare-fun res!2712402 () Bool)

(assert (=> b!6614623 (=> res!2712402 e!4001739)))

(assert (=> b!6614623 (= res!2712402 call!579509)))

(assert (=> b!6614623 (= e!4001735 e!4001739)))

(declare-fun b!6614624 () Bool)

(assert (=> b!6614624 (= e!4001738 (matchRSpec!3588 (regTwo!33487 (regTwo!33487 r!7292)) s!2326))))

(declare-fun bm!579504 () Bool)

(assert (=> bm!579504 (= call!579508 (Exists!3557 (ite c!1219246 lambda!369489 lambda!369490)))))

(assert (= (and d!2073487 c!1219244) b!6614618))

(assert (= (and d!2073487 (not c!1219244)) b!6614616))

(assert (= (and b!6614616 res!2712400) b!6614619))

(assert (= (and b!6614619 c!1219247) b!6614622))

(assert (= (and b!6614619 (not c!1219247)) b!6614620))

(assert (= (and b!6614620 c!1219245) b!6614615))

(assert (= (and b!6614620 (not c!1219245)) b!6614621))

(assert (= (and b!6614615 (not res!2712401)) b!6614624))

(assert (= (and b!6614621 c!1219246) b!6614623))

(assert (= (and b!6614621 (not c!1219246)) b!6614614))

(assert (= (and b!6614623 (not res!2712402)) b!6614617))

(assert (= (or b!6614617 b!6614614) bm!579504))

(assert (= (or b!6614618 b!6614623) bm!579503))

(declare-fun m!7387816 () Bool)

(assert (=> b!6614615 m!7387816))

(assert (=> bm!579503 m!7387406))

(declare-fun m!7387818 () Bool)

(assert (=> b!6614624 m!7387818))

(declare-fun m!7387820 () Bool)

(assert (=> bm!579504 m!7387820))

(assert (=> b!6614107 d!2073487))

(declare-fun d!2073489 () Bool)

(assert (=> d!2073489 (= (nullable!6480 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))) (nullableFct!2401 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun bs!1695669 () Bool)

(assert (= bs!1695669 d!2073489))

(declare-fun m!7387822 () Bool)

(assert (=> bs!1695669 m!7387822))

(assert (=> b!6613700 d!2073489))

(declare-fun b!6614625 () Bool)

(declare-fun e!4001743 () (InoxSet Context!11742))

(declare-fun call!579510 () (InoxSet Context!11742))

(declare-fun call!579514 () (InoxSet Context!11742))

(assert (=> b!6614625 (= e!4001743 ((_ map or) call!579510 call!579514))))

(declare-fun b!6614626 () Bool)

(declare-fun e!4001745 () (InoxSet Context!11742))

(declare-fun call!579512 () (InoxSet Context!11742))

(assert (=> b!6614626 (= e!4001745 call!579512)))

(declare-fun d!2073491 () Bool)

(declare-fun c!1219249 () Bool)

(assert (=> d!2073491 (= c!1219249 (and ((_ is ElementMatch!16487) (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (= (c!1218988 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (h!72086 s!2326))))))

(declare-fun e!4001741 () (InoxSet Context!11742))

(assert (=> d!2073491 (= (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))) (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (h!72086 s!2326)) e!4001741)))

(declare-fun b!6614627 () Bool)

(declare-fun c!1219250 () Bool)

(declare-fun e!4001744 () Bool)

(assert (=> b!6614627 (= c!1219250 e!4001744)))

(declare-fun res!2712403 () Bool)

(assert (=> b!6614627 (=> (not res!2712403) (not e!4001744))))

(assert (=> b!6614627 (= res!2712403 ((_ is Concat!25332) (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun e!4001746 () (InoxSet Context!11742))

(assert (=> b!6614627 (= e!4001743 e!4001746)))

(declare-fun b!6614628 () Bool)

(declare-fun call!579515 () (InoxSet Context!11742))

(assert (=> b!6614628 (= e!4001746 ((_ map or) call!579514 call!579515))))

(declare-fun c!1219251 () Bool)

(declare-fun bm!579505 () Bool)

(declare-fun call!579511 () List!65760)

(assert (=> bm!579505 (= call!579511 ($colon$colon!2323 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))) (ite (or c!1219250 c!1219251) (regTwo!33486 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))))

(declare-fun b!6614629 () Bool)

(declare-fun c!1219248 () Bool)

(assert (=> b!6614629 (= c!1219248 ((_ is Star!16487) (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun e!4001742 () (InoxSet Context!11742))

(assert (=> b!6614629 (= e!4001745 e!4001742)))

(declare-fun c!1219252 () Bool)

(declare-fun bm!579506 () Bool)

(assert (=> bm!579506 (= call!579514 (derivationStepZipperDown!1735 (ite c!1219252 (regTwo!33487 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (regOne!33486 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))) (ite c!1219252 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (Context!11743 call!579511)) (h!72086 s!2326)))))

(declare-fun bm!579507 () Bool)

(assert (=> bm!579507 (= call!579515 call!579510)))

(declare-fun bm!579508 () Bool)

(declare-fun call!579513 () List!65760)

(assert (=> bm!579508 (= call!579513 call!579511)))

(declare-fun bm!579509 () Bool)

(assert (=> bm!579509 (= call!579512 call!579515)))

(declare-fun b!6614630 () Bool)

(assert (=> b!6614630 (= e!4001746 e!4001745)))

(assert (=> b!6614630 (= c!1219251 ((_ is Concat!25332) (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun b!6614631 () Bool)

(assert (=> b!6614631 (= e!4001741 e!4001743)))

(assert (=> b!6614631 (= c!1219252 ((_ is Union!16487) (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun b!6614632 () Bool)

(assert (=> b!6614632 (= e!4001744 (nullable!6480 (regOne!33486 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))))

(declare-fun bm!579510 () Bool)

(assert (=> bm!579510 (= call!579510 (derivationStepZipperDown!1735 (ite c!1219252 (regOne!33487 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (ite c!1219250 (regTwo!33486 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (ite c!1219251 (regOne!33486 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (reg!16816 (h!72084 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))) (ite (or c!1219252 c!1219250) (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (Context!11743 call!579513)) (h!72086 s!2326)))))

(declare-fun b!6614633 () Bool)

(assert (=> b!6614633 (= e!4001741 (store ((as const (Array Context!11742 Bool)) false) (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) true))))

(declare-fun b!6614634 () Bool)

(assert (=> b!6614634 (= e!4001742 call!579512)))

(declare-fun b!6614635 () Bool)

(assert (=> b!6614635 (= e!4001742 ((as const (Array Context!11742 Bool)) false))))

(assert (= (and d!2073491 c!1219249) b!6614633))

(assert (= (and d!2073491 (not c!1219249)) b!6614631))

(assert (= (and b!6614631 c!1219252) b!6614625))

(assert (= (and b!6614631 (not c!1219252)) b!6614627))

(assert (= (and b!6614627 res!2712403) b!6614632))

(assert (= (and b!6614627 c!1219250) b!6614628))

(assert (= (and b!6614627 (not c!1219250)) b!6614630))

(assert (= (and b!6614630 c!1219251) b!6614626))

(assert (= (and b!6614630 (not c!1219251)) b!6614629))

(assert (= (and b!6614629 c!1219248) b!6614634))

(assert (= (and b!6614629 (not c!1219248)) b!6614635))

(assert (= (or b!6614626 b!6614634) bm!579508))

(assert (= (or b!6614626 b!6614634) bm!579509))

(assert (= (or b!6614628 bm!579508) bm!579505))

(assert (= (or b!6614628 bm!579509) bm!579507))

(assert (= (or b!6614625 b!6614628) bm!579506))

(assert (= (or b!6614625 bm!579507) bm!579510))

(declare-fun m!7387824 () Bool)

(assert (=> b!6614633 m!7387824))

(declare-fun m!7387826 () Bool)

(assert (=> bm!579510 m!7387826))

(declare-fun m!7387828 () Bool)

(assert (=> b!6614632 m!7387828))

(declare-fun m!7387830 () Bool)

(assert (=> bm!579506 m!7387830))

(declare-fun m!7387832 () Bool)

(assert (=> bm!579505 m!7387832))

(assert (=> bm!579395 d!2073491))

(assert (=> b!6614052 d!2073447))

(assert (=> b!6614052 d!2073443))

(declare-fun b!6614636 () Bool)

(declare-fun e!4001749 () (InoxSet Context!11742))

(declare-fun call!579516 () (InoxSet Context!11742))

(declare-fun call!579520 () (InoxSet Context!11742))

(assert (=> b!6614636 (= e!4001749 ((_ map or) call!579516 call!579520))))

(declare-fun b!6614637 () Bool)

(declare-fun e!4001751 () (InoxSet Context!11742))

(declare-fun call!579518 () (InoxSet Context!11742))

(assert (=> b!6614637 (= e!4001751 call!579518)))

(declare-fun d!2073493 () Bool)

(declare-fun c!1219254 () Bool)

(assert (=> d!2073493 (= c!1219254 (and ((_ is ElementMatch!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))) (= (c!1218988 (h!72084 (exprs!6371 (h!72085 zl!343)))) (h!72086 s!2326))))))

(declare-fun e!4001747 () (InoxSet Context!11742))

(assert (=> d!2073493 (= (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (h!72085 zl!343))) (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))) (h!72086 s!2326)) e!4001747)))

(declare-fun b!6614638 () Bool)

(declare-fun c!1219255 () Bool)

(declare-fun e!4001750 () Bool)

(assert (=> b!6614638 (= c!1219255 e!4001750)))

(declare-fun res!2712404 () Bool)

(assert (=> b!6614638 (=> (not res!2712404) (not e!4001750))))

(assert (=> b!6614638 (= res!2712404 ((_ is Concat!25332) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun e!4001752 () (InoxSet Context!11742))

(assert (=> b!6614638 (= e!4001749 e!4001752)))

(declare-fun b!6614639 () Bool)

(declare-fun call!579521 () (InoxSet Context!11742))

(assert (=> b!6614639 (= e!4001752 ((_ map or) call!579520 call!579521))))

(declare-fun c!1219256 () Bool)

(declare-fun call!579517 () List!65760)

(declare-fun bm!579511 () Bool)

(assert (=> bm!579511 (= call!579517 ($colon$colon!2323 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343))))) (ite (or c!1219255 c!1219256) (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (h!72084 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun b!6614640 () Bool)

(declare-fun c!1219253 () Bool)

(assert (=> b!6614640 (= c!1219253 ((_ is Star!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun e!4001748 () (InoxSet Context!11742))

(assert (=> b!6614640 (= e!4001751 e!4001748)))

(declare-fun c!1219257 () Bool)

(declare-fun bm!579512 () Bool)

(assert (=> bm!579512 (= call!579520 (derivationStepZipperDown!1735 (ite c!1219257 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))) (ite c!1219257 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))) (Context!11743 call!579517)) (h!72086 s!2326)))))

(declare-fun bm!579513 () Bool)

(assert (=> bm!579513 (= call!579521 call!579516)))

(declare-fun bm!579514 () Bool)

(declare-fun call!579519 () List!65760)

(assert (=> bm!579514 (= call!579519 call!579517)))

(declare-fun bm!579515 () Bool)

(assert (=> bm!579515 (= call!579518 call!579521)))

(declare-fun b!6614641 () Bool)

(assert (=> b!6614641 (= e!4001752 e!4001751)))

(assert (=> b!6614641 (= c!1219256 ((_ is Concat!25332) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614642 () Bool)

(assert (=> b!6614642 (= e!4001747 e!4001749)))

(assert (=> b!6614642 (= c!1219257 ((_ is Union!16487) (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614643 () Bool)

(assert (=> b!6614643 (= e!4001750 (nullable!6480 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun bm!579516 () Bool)

(assert (=> bm!579516 (= call!579516 (derivationStepZipperDown!1735 (ite c!1219257 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219255 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219256 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343))))))) (ite (or c!1219257 c!1219255) (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))) (Context!11743 call!579519)) (h!72086 s!2326)))))

(declare-fun b!6614644 () Bool)

(assert (=> b!6614644 (= e!4001747 (store ((as const (Array Context!11742 Bool)) false) (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))) true))))

(declare-fun b!6614645 () Bool)

(assert (=> b!6614645 (= e!4001748 call!579518)))

(declare-fun b!6614646 () Bool)

(assert (=> b!6614646 (= e!4001748 ((as const (Array Context!11742 Bool)) false))))

(assert (= (and d!2073493 c!1219254) b!6614644))

(assert (= (and d!2073493 (not c!1219254)) b!6614642))

(assert (= (and b!6614642 c!1219257) b!6614636))

(assert (= (and b!6614642 (not c!1219257)) b!6614638))

(assert (= (and b!6614638 res!2712404) b!6614643))

(assert (= (and b!6614638 c!1219255) b!6614639))

(assert (= (and b!6614638 (not c!1219255)) b!6614641))

(assert (= (and b!6614641 c!1219256) b!6614637))

(assert (= (and b!6614641 (not c!1219256)) b!6614640))

(assert (= (and b!6614640 c!1219253) b!6614645))

(assert (= (and b!6614640 (not c!1219253)) b!6614646))

(assert (= (or b!6614637 b!6614645) bm!579514))

(assert (= (or b!6614637 b!6614645) bm!579515))

(assert (= (or b!6614639 bm!579514) bm!579511))

(assert (= (or b!6614639 bm!579515) bm!579513))

(assert (= (or b!6614636 b!6614639) bm!579512))

(assert (= (or b!6614636 bm!579513) bm!579516))

(declare-fun m!7387834 () Bool)

(assert (=> b!6614644 m!7387834))

(declare-fun m!7387836 () Bool)

(assert (=> bm!579516 m!7387836))

(assert (=> b!6614643 m!7387276))

(declare-fun m!7387838 () Bool)

(assert (=> bm!579512 m!7387838))

(declare-fun m!7387840 () Bool)

(assert (=> bm!579511 m!7387840))

(assert (=> bm!579396 d!2073493))

(declare-fun d!2073495 () Bool)

(declare-fun res!2712405 () Bool)

(declare-fun e!4001753 () Bool)

(assert (=> d!2073495 (=> res!2712405 e!4001753)))

(assert (=> d!2073495 (= res!2712405 ((_ is Nil!65636) (exprs!6371 setElem!45196)))))

(assert (=> d!2073495 (= (forall!15682 (exprs!6371 setElem!45196) lambda!369419) e!4001753)))

(declare-fun b!6614647 () Bool)

(declare-fun e!4001754 () Bool)

(assert (=> b!6614647 (= e!4001753 e!4001754)))

(declare-fun res!2712406 () Bool)

(assert (=> b!6614647 (=> (not res!2712406) (not e!4001754))))

(assert (=> b!6614647 (= res!2712406 (dynLambda!26139 lambda!369419 (h!72084 (exprs!6371 setElem!45196))))))

(declare-fun b!6614648 () Bool)

(assert (=> b!6614648 (= e!4001754 (forall!15682 (t!379414 (exprs!6371 setElem!45196)) lambda!369419))))

(assert (= (and d!2073495 (not res!2712405)) b!6614647))

(assert (= (and b!6614647 res!2712406) b!6614648))

(declare-fun b_lambda!250173 () Bool)

(assert (=> (not b_lambda!250173) (not b!6614647)))

(declare-fun m!7387842 () Bool)

(assert (=> b!6614647 m!7387842))

(declare-fun m!7387844 () Bool)

(assert (=> b!6614648 m!7387844))

(assert (=> d!2073265 d!2073495))

(declare-fun d!2073497 () Bool)

(declare-fun c!1219258 () Bool)

(assert (=> d!2073497 (= c!1219258 (isEmpty!37921 (tail!12500 (t!379416 s!2326))))))

(declare-fun e!4001755 () Bool)

(assert (=> d!2073497 (= (matchZipper!2499 (derivationStepZipper!2452 lt!2417194 (head!13415 (t!379416 s!2326))) (tail!12500 (t!379416 s!2326))) e!4001755)))

(declare-fun b!6614649 () Bool)

(assert (=> b!6614649 (= e!4001755 (nullableZipper!2227 (derivationStepZipper!2452 lt!2417194 (head!13415 (t!379416 s!2326)))))))

(declare-fun b!6614650 () Bool)

(assert (=> b!6614650 (= e!4001755 (matchZipper!2499 (derivationStepZipper!2452 (derivationStepZipper!2452 lt!2417194 (head!13415 (t!379416 s!2326))) (head!13415 (tail!12500 (t!379416 s!2326)))) (tail!12500 (tail!12500 (t!379416 s!2326)))))))

(assert (= (and d!2073497 c!1219258) b!6614649))

(assert (= (and d!2073497 (not c!1219258)) b!6614650))

(assert (=> d!2073497 m!7387316))

(declare-fun m!7387846 () Bool)

(assert (=> d!2073497 m!7387846))

(assert (=> b!6614649 m!7387314))

(declare-fun m!7387848 () Bool)

(assert (=> b!6614649 m!7387848))

(assert (=> b!6614650 m!7387316))

(declare-fun m!7387850 () Bool)

(assert (=> b!6614650 m!7387850))

(assert (=> b!6614650 m!7387314))

(assert (=> b!6614650 m!7387850))

(declare-fun m!7387852 () Bool)

(assert (=> b!6614650 m!7387852))

(assert (=> b!6614650 m!7387316))

(declare-fun m!7387854 () Bool)

(assert (=> b!6614650 m!7387854))

(assert (=> b!6614650 m!7387852))

(assert (=> b!6614650 m!7387854))

(declare-fun m!7387856 () Bool)

(assert (=> b!6614650 m!7387856))

(assert (=> b!6613737 d!2073497))

(declare-fun bs!1695670 () Bool)

(declare-fun d!2073499 () Bool)

(assert (= bs!1695670 (and d!2073499 b!6613663)))

(declare-fun lambda!369493 () Int)

(assert (=> bs!1695670 (= (= (head!13415 (t!379416 s!2326)) (h!72086 s!2326)) (= lambda!369493 lambda!369415))))

(assert (=> d!2073499 true))

(assert (=> d!2073499 (= (derivationStepZipper!2452 lt!2417194 (head!13415 (t!379416 s!2326))) (flatMap!1992 lt!2417194 lambda!369493))))

(declare-fun bs!1695671 () Bool)

(assert (= bs!1695671 d!2073499))

(declare-fun m!7387858 () Bool)

(assert (=> bs!1695671 m!7387858))

(assert (=> b!6613737 d!2073499))

(declare-fun d!2073501 () Bool)

(assert (=> d!2073501 (= (head!13415 (t!379416 s!2326)) (h!72086 (t!379416 s!2326)))))

(assert (=> b!6613737 d!2073501))

(declare-fun d!2073503 () Bool)

(assert (=> d!2073503 (= (tail!12500 (t!379416 s!2326)) (t!379416 (t!379416 s!2326)))))

(assert (=> b!6613737 d!2073503))

(declare-fun d!2073505 () Bool)

(declare-fun res!2712407 () Bool)

(declare-fun e!4001756 () Bool)

(assert (=> d!2073505 (=> res!2712407 e!4001756)))

(assert (=> d!2073505 (= res!2712407 ((_ is Nil!65636) (exprs!6371 (h!72085 zl!343))))))

(assert (=> d!2073505 (= (forall!15682 (exprs!6371 (h!72085 zl!343)) lambda!369458) e!4001756)))

(declare-fun b!6614653 () Bool)

(declare-fun e!4001757 () Bool)

(assert (=> b!6614653 (= e!4001756 e!4001757)))

(declare-fun res!2712408 () Bool)

(assert (=> b!6614653 (=> (not res!2712408) (not e!4001757))))

(assert (=> b!6614653 (= res!2712408 (dynLambda!26139 lambda!369458 (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614654 () Bool)

(assert (=> b!6614654 (= e!4001757 (forall!15682 (t!379414 (exprs!6371 (h!72085 zl!343))) lambda!369458))))

(assert (= (and d!2073505 (not res!2712407)) b!6614653))

(assert (= (and b!6614653 res!2712408) b!6614654))

(declare-fun b_lambda!250175 () Bool)

(assert (=> (not b_lambda!250175) (not b!6614653)))

(declare-fun m!7387860 () Bool)

(assert (=> b!6614653 m!7387860))

(declare-fun m!7387862 () Bool)

(assert (=> b!6614654 m!7387862))

(assert (=> d!2073359 d!2073505))

(declare-fun b!6614655 () Bool)

(declare-fun res!2712416 () Bool)

(declare-fun e!4001762 () Bool)

(assert (=> b!6614655 (=> (not res!2712416) (not e!4001762))))

(assert (=> b!6614655 (= res!2712416 (isEmpty!37921 (tail!12500 (_1!36769 (get!22812 lt!2417280)))))))

(declare-fun b!6614656 () Bool)

(declare-fun res!2712415 () Bool)

(declare-fun e!4001761 () Bool)

(assert (=> b!6614656 (=> res!2712415 e!4001761)))

(assert (=> b!6614656 (= res!2712415 e!4001762)))

(declare-fun res!2712413 () Bool)

(assert (=> b!6614656 (=> (not res!2712413) (not e!4001762))))

(declare-fun lt!2417317 () Bool)

(assert (=> b!6614656 (= res!2712413 lt!2417317)))

(declare-fun b!6614657 () Bool)

(declare-fun res!2712411 () Bool)

(assert (=> b!6614657 (=> (not res!2712411) (not e!4001762))))

(declare-fun call!579522 () Bool)

(assert (=> b!6614657 (= res!2712411 (not call!579522))))

(declare-fun b!6614658 () Bool)

(declare-fun e!4001758 () Bool)

(assert (=> b!6614658 (= e!4001758 (nullable!6480 (regOne!33486 r!7292)))))

(declare-fun b!6614659 () Bool)

(declare-fun e!4001759 () Bool)

(assert (=> b!6614659 (= e!4001759 (not (= (head!13415 (_1!36769 (get!22812 lt!2417280))) (c!1218988 (regOne!33486 r!7292)))))))

(declare-fun b!6614660 () Bool)

(assert (=> b!6614660 (= e!4001758 (matchR!8670 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 (_1!36769 (get!22812 lt!2417280)))) (tail!12500 (_1!36769 (get!22812 lt!2417280)))))))

(declare-fun b!6614661 () Bool)

(declare-fun e!4001763 () Bool)

(assert (=> b!6614661 (= e!4001761 e!4001763)))

(declare-fun res!2712414 () Bool)

(assert (=> b!6614661 (=> (not res!2712414) (not e!4001763))))

(assert (=> b!6614661 (= res!2712414 (not lt!2417317))))

(declare-fun b!6614662 () Bool)

(declare-fun e!4001760 () Bool)

(assert (=> b!6614662 (= e!4001760 (not lt!2417317))))

(declare-fun bm!579517 () Bool)

(assert (=> bm!579517 (= call!579522 (isEmpty!37921 (_1!36769 (get!22812 lt!2417280))))))

(declare-fun b!6614663 () Bool)

(declare-fun e!4001764 () Bool)

(assert (=> b!6614663 (= e!4001764 (= lt!2417317 call!579522))))

(declare-fun b!6614664 () Bool)

(declare-fun res!2712410 () Bool)

(assert (=> b!6614664 (=> res!2712410 e!4001761)))

(assert (=> b!6614664 (= res!2712410 (not ((_ is ElementMatch!16487) (regOne!33486 r!7292))))))

(assert (=> b!6614664 (= e!4001760 e!4001761)))

(declare-fun d!2073507 () Bool)

(assert (=> d!2073507 e!4001764))

(declare-fun c!1219261 () Bool)

(assert (=> d!2073507 (= c!1219261 ((_ is EmptyExpr!16487) (regOne!33486 r!7292)))))

(assert (=> d!2073507 (= lt!2417317 e!4001758)))

(declare-fun c!1219262 () Bool)

(assert (=> d!2073507 (= c!1219262 (isEmpty!37921 (_1!36769 (get!22812 lt!2417280))))))

(assert (=> d!2073507 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073507 (= (matchR!8670 (regOne!33486 r!7292) (_1!36769 (get!22812 lt!2417280))) lt!2417317)))

(declare-fun b!6614665 () Bool)

(assert (=> b!6614665 (= e!4001763 e!4001759)))

(declare-fun res!2712409 () Bool)

(assert (=> b!6614665 (=> res!2712409 e!4001759)))

(assert (=> b!6614665 (= res!2712409 call!579522)))

(declare-fun b!6614666 () Bool)

(assert (=> b!6614666 (= e!4001762 (= (head!13415 (_1!36769 (get!22812 lt!2417280))) (c!1218988 (regOne!33486 r!7292))))))

(declare-fun b!6614667 () Bool)

(declare-fun res!2712412 () Bool)

(assert (=> b!6614667 (=> res!2712412 e!4001759)))

(assert (=> b!6614667 (= res!2712412 (not (isEmpty!37921 (tail!12500 (_1!36769 (get!22812 lt!2417280))))))))

(declare-fun b!6614668 () Bool)

(assert (=> b!6614668 (= e!4001764 e!4001760)))

(declare-fun c!1219263 () Bool)

(assert (=> b!6614668 (= c!1219263 ((_ is EmptyLang!16487) (regOne!33486 r!7292)))))

(assert (= (and d!2073507 c!1219262) b!6614658))

(assert (= (and d!2073507 (not c!1219262)) b!6614660))

(assert (= (and d!2073507 c!1219261) b!6614663))

(assert (= (and d!2073507 (not c!1219261)) b!6614668))

(assert (= (and b!6614668 c!1219263) b!6614662))

(assert (= (and b!6614668 (not c!1219263)) b!6614664))

(assert (= (and b!6614664 (not res!2712410)) b!6614656))

(assert (= (and b!6614656 res!2712413) b!6614657))

(assert (= (and b!6614657 res!2712411) b!6614655))

(assert (= (and b!6614655 res!2712416) b!6614666))

(assert (= (and b!6614656 (not res!2712415)) b!6614661))

(assert (= (and b!6614661 res!2712414) b!6614665))

(assert (= (and b!6614665 (not res!2712409)) b!6614667))

(assert (= (and b!6614667 (not res!2712412)) b!6614659))

(assert (= (or b!6614663 b!6614657 b!6614665) bm!579517))

(declare-fun m!7387864 () Bool)

(assert (=> bm!579517 m!7387864))

(declare-fun m!7387866 () Bool)

(assert (=> b!6614660 m!7387866))

(assert (=> b!6614660 m!7387866))

(declare-fun m!7387868 () Bool)

(assert (=> b!6614660 m!7387868))

(declare-fun m!7387870 () Bool)

(assert (=> b!6614660 m!7387870))

(assert (=> b!6614660 m!7387868))

(assert (=> b!6614660 m!7387870))

(declare-fun m!7387872 () Bool)

(assert (=> b!6614660 m!7387872))

(assert (=> d!2073507 m!7387864))

(assert (=> d!2073507 m!7387414))

(assert (=> b!6614659 m!7387866))

(assert (=> b!6614658 m!7387452))

(assert (=> b!6614655 m!7387870))

(assert (=> b!6614655 m!7387870))

(declare-fun m!7387874 () Bool)

(assert (=> b!6614655 m!7387874))

(assert (=> b!6614666 m!7387866))

(assert (=> b!6614667 m!7387870))

(assert (=> b!6614667 m!7387870))

(assert (=> b!6614667 m!7387874))

(assert (=> b!6614203 d!2073507))

(assert (=> b!6614203 d!2073435))

(assert (=> d!2073351 d!2073455))

(assert (=> d!2073351 d!2073335))

(declare-fun bs!1695672 () Bool)

(declare-fun b!6614672 () Bool)

(assert (= bs!1695672 (and b!6614672 b!6614603)))

(declare-fun lambda!369494 () Int)

(assert (=> bs!1695672 (not (= lambda!369494 lambda!369488))))

(declare-fun bs!1695673 () Bool)

(assert (= bs!1695673 (and b!6614672 b!6614097)))

(assert (=> bs!1695673 (not (= lambda!369494 lambda!369456))))

(declare-fun bs!1695674 () Bool)

(assert (= bs!1695674 (and b!6614672 b!6614614)))

(assert (=> bs!1695674 (not (= lambda!369494 lambda!369490))))

(declare-fun bs!1695675 () Bool)

(assert (= bs!1695675 (and b!6614672 b!6614606)))

(assert (=> bs!1695675 (= (and (= (reg!16816 (regOne!33487 (regOne!33486 r!7292))) (reg!16816 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regOne!33487 (regOne!33486 r!7292)) (regTwo!33487 (regTwo!33486 r!7292)))) (= lambda!369494 lambda!369487))))

(declare-fun bs!1695676 () Bool)

(assert (= bs!1695676 (and b!6614672 d!2073391)))

(assert (=> bs!1695676 (not (= lambda!369494 lambda!369473))))

(declare-fun bs!1695677 () Bool)

(assert (= bs!1695677 (and b!6614672 b!6614009)))

(assert (=> bs!1695677 (not (= lambda!369494 lambda!369449))))

(declare-fun bs!1695678 () Bool)

(assert (= bs!1695678 (and b!6614672 b!6613656)))

(assert (=> bs!1695678 (not (= lambda!369494 lambda!369413))))

(assert (=> bs!1695676 (not (= lambda!369494 lambda!369471))))

(assert (=> bs!1695678 (not (= lambda!369494 lambda!369414))))

(declare-fun bs!1695679 () Bool)

(assert (= bs!1695679 (and b!6614672 b!6613889)))

(assert (=> bs!1695679 (not (= lambda!369494 lambda!369443))))

(declare-fun bs!1695680 () Bool)

(assert (= bs!1695680 (and b!6614672 b!6614012)))

(assert (=> bs!1695680 (= (and (= (reg!16816 (regOne!33487 (regOne!33486 r!7292))) (reg!16816 (regTwo!33486 r!7292))) (= (regOne!33487 (regOne!33486 r!7292)) (regTwo!33486 r!7292))) (= lambda!369494 lambda!369446))))

(declare-fun bs!1695681 () Bool)

(assert (= bs!1695681 (and b!6614672 b!6613892)))

(assert (=> bs!1695681 (= (and (= (reg!16816 (regOne!33487 (regOne!33486 r!7292))) (reg!16816 (regOne!33486 r!7292))) (= (regOne!33487 (regOne!33486 r!7292)) (regOne!33486 r!7292))) (= lambda!369494 lambda!369442))))

(declare-fun bs!1695682 () Bool)

(assert (= bs!1695682 (and b!6614672 d!2073386)))

(assert (=> bs!1695682 (not (= lambda!369494 lambda!369466))))

(declare-fun bs!1695683 () Bool)

(assert (= bs!1695683 (and b!6614672 b!6614617)))

(assert (=> bs!1695683 (= (and (= (reg!16816 (regOne!33487 (regOne!33486 r!7292))) (reg!16816 (regTwo!33487 r!7292))) (= (regOne!33487 (regOne!33486 r!7292)) (regTwo!33487 r!7292))) (= lambda!369494 lambda!369489))))

(declare-fun bs!1695684 () Bool)

(assert (= bs!1695684 (and b!6614672 b!6614100)))

(assert (=> bs!1695684 (= (and (= (reg!16816 (regOne!33487 (regOne!33486 r!7292))) (reg!16816 r!7292)) (= (regOne!33487 (regOne!33486 r!7292)) r!7292)) (= lambda!369494 lambda!369455))))

(assert (=> b!6614672 true))

(assert (=> b!6614672 true))

(declare-fun bs!1695685 () Bool)

(declare-fun b!6614669 () Bool)

(assert (= bs!1695685 (and b!6614669 b!6614603)))

(declare-fun lambda!369495 () Int)

(assert (=> bs!1695685 (= (and (= (regOne!33486 (regOne!33487 (regOne!33486 r!7292))) (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))) (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))))) (= lambda!369495 lambda!369488))))

(declare-fun bs!1695686 () Bool)

(assert (= bs!1695686 (and b!6614669 b!6614097)))

(assert (=> bs!1695686 (= (and (= (regOne!33486 (regOne!33487 (regOne!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369495 lambda!369456))))

(declare-fun bs!1695687 () Bool)

(assert (= bs!1695687 (and b!6614669 b!6614614)))

(assert (=> bs!1695687 (= (and (= (regOne!33486 (regOne!33487 (regOne!33486 r!7292))) (regOne!33486 (regTwo!33487 r!7292))) (= (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))) (regTwo!33486 (regTwo!33487 r!7292)))) (= lambda!369495 lambda!369490))))

(declare-fun bs!1695688 () Bool)

(assert (= bs!1695688 (and b!6614669 b!6614606)))

(assert (=> bs!1695688 (not (= lambda!369495 lambda!369487))))

(declare-fun bs!1695689 () Bool)

(assert (= bs!1695689 (and b!6614669 d!2073391)))

(assert (=> bs!1695689 (= (and (= (regOne!33486 (regOne!33487 (regOne!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369495 lambda!369473))))

(declare-fun bs!1695690 () Bool)

(assert (= bs!1695690 (and b!6614669 b!6614009)))

(assert (=> bs!1695690 (= (and (= (regOne!33486 (regOne!33487 (regOne!33486 r!7292))) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369495 lambda!369449))))

(declare-fun bs!1695691 () Bool)

(assert (= bs!1695691 (and b!6614669 b!6613656)))

(assert (=> bs!1695691 (not (= lambda!369495 lambda!369413))))

(assert (=> bs!1695689 (not (= lambda!369495 lambda!369471))))

(assert (=> bs!1695691 (= (and (= (regOne!33486 (regOne!33487 (regOne!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369495 lambda!369414))))

(declare-fun bs!1695692 () Bool)

(assert (= bs!1695692 (and b!6614669 b!6613889)))

(assert (=> bs!1695692 (= (and (= (regOne!33486 (regOne!33487 (regOne!33486 r!7292))) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369495 lambda!369443))))

(declare-fun bs!1695693 () Bool)

(assert (= bs!1695693 (and b!6614669 b!6614012)))

(assert (=> bs!1695693 (not (= lambda!369495 lambda!369446))))

(declare-fun bs!1695694 () Bool)

(assert (= bs!1695694 (and b!6614669 b!6614672)))

(assert (=> bs!1695694 (not (= lambda!369495 lambda!369494))))

(declare-fun bs!1695695 () Bool)

(assert (= bs!1695695 (and b!6614669 b!6613892)))

(assert (=> bs!1695695 (not (= lambda!369495 lambda!369442))))

(declare-fun bs!1695696 () Bool)

(assert (= bs!1695696 (and b!6614669 d!2073386)))

(assert (=> bs!1695696 (not (= lambda!369495 lambda!369466))))

(declare-fun bs!1695697 () Bool)

(assert (= bs!1695697 (and b!6614669 b!6614617)))

(assert (=> bs!1695697 (not (= lambda!369495 lambda!369489))))

(declare-fun bs!1695698 () Bool)

(assert (= bs!1695698 (and b!6614669 b!6614100)))

(assert (=> bs!1695698 (not (= lambda!369495 lambda!369455))))

(assert (=> b!6614669 true))

(assert (=> b!6614669 true))

(declare-fun e!4001766 () Bool)

(declare-fun call!579523 () Bool)

(assert (=> b!6614669 (= e!4001766 call!579523)))

(declare-fun b!6614670 () Bool)

(declare-fun e!4001765 () Bool)

(declare-fun e!4001769 () Bool)

(assert (=> b!6614670 (= e!4001765 e!4001769)))

(declare-fun res!2712418 () Bool)

(assert (=> b!6614670 (= res!2712418 (matchRSpec!3588 (regOne!33487 (regOne!33487 (regOne!33486 r!7292))) s!2326))))

(assert (=> b!6614670 (=> res!2712418 e!4001769)))

(declare-fun b!6614671 () Bool)

(declare-fun e!4001767 () Bool)

(declare-fun e!4001771 () Bool)

(assert (=> b!6614671 (= e!4001767 e!4001771)))

(declare-fun res!2712417 () Bool)

(assert (=> b!6614671 (= res!2712417 (not ((_ is EmptyLang!16487) (regOne!33487 (regOne!33486 r!7292)))))))

(assert (=> b!6614671 (=> (not res!2712417) (not e!4001771))))

(declare-fun bm!579518 () Bool)

(declare-fun call!579524 () Bool)

(assert (=> bm!579518 (= call!579524 (isEmpty!37921 s!2326))))

(declare-fun e!4001770 () Bool)

(assert (=> b!6614672 (= e!4001770 call!579523)))

(declare-fun b!6614673 () Bool)

(assert (=> b!6614673 (= e!4001767 call!579524)))

(declare-fun b!6614674 () Bool)

(declare-fun c!1219267 () Bool)

(assert (=> b!6614674 (= c!1219267 ((_ is ElementMatch!16487) (regOne!33487 (regOne!33486 r!7292))))))

(declare-fun e!4001768 () Bool)

(assert (=> b!6614674 (= e!4001771 e!4001768)))

(declare-fun d!2073509 () Bool)

(declare-fun c!1219264 () Bool)

(assert (=> d!2073509 (= c!1219264 ((_ is EmptyExpr!16487) (regOne!33487 (regOne!33486 r!7292))))))

(assert (=> d!2073509 (= (matchRSpec!3588 (regOne!33487 (regOne!33486 r!7292)) s!2326) e!4001767)))

(declare-fun b!6614675 () Bool)

(declare-fun c!1219265 () Bool)

(assert (=> b!6614675 (= c!1219265 ((_ is Union!16487) (regOne!33487 (regOne!33486 r!7292))))))

(assert (=> b!6614675 (= e!4001768 e!4001765)))

(declare-fun b!6614676 () Bool)

(assert (=> b!6614676 (= e!4001765 e!4001766)))

(declare-fun c!1219266 () Bool)

(assert (=> b!6614676 (= c!1219266 ((_ is Star!16487) (regOne!33487 (regOne!33486 r!7292))))))

(declare-fun b!6614677 () Bool)

(assert (=> b!6614677 (= e!4001768 (= s!2326 (Cons!65638 (c!1218988 (regOne!33487 (regOne!33486 r!7292))) Nil!65638)))))

(declare-fun b!6614678 () Bool)

(declare-fun res!2712419 () Bool)

(assert (=> b!6614678 (=> res!2712419 e!4001770)))

(assert (=> b!6614678 (= res!2712419 call!579524)))

(assert (=> b!6614678 (= e!4001766 e!4001770)))

(declare-fun b!6614679 () Bool)

(assert (=> b!6614679 (= e!4001769 (matchRSpec!3588 (regTwo!33487 (regOne!33487 (regOne!33486 r!7292))) s!2326))))

(declare-fun bm!579519 () Bool)

(assert (=> bm!579519 (= call!579523 (Exists!3557 (ite c!1219266 lambda!369494 lambda!369495)))))

(assert (= (and d!2073509 c!1219264) b!6614673))

(assert (= (and d!2073509 (not c!1219264)) b!6614671))

(assert (= (and b!6614671 res!2712417) b!6614674))

(assert (= (and b!6614674 c!1219267) b!6614677))

(assert (= (and b!6614674 (not c!1219267)) b!6614675))

(assert (= (and b!6614675 c!1219265) b!6614670))

(assert (= (and b!6614675 (not c!1219265)) b!6614676))

(assert (= (and b!6614670 (not res!2712418)) b!6614679))

(assert (= (and b!6614676 c!1219266) b!6614678))

(assert (= (and b!6614676 (not c!1219266)) b!6614669))

(assert (= (and b!6614678 (not res!2712419)) b!6614672))

(assert (= (or b!6614672 b!6614669) bm!579519))

(assert (= (or b!6614673 b!6614678) bm!579518))

(declare-fun m!7387876 () Bool)

(assert (=> b!6614670 m!7387876))

(assert (=> bm!579518 m!7387406))

(declare-fun m!7387878 () Bool)

(assert (=> b!6614679 m!7387878))

(declare-fun m!7387880 () Bool)

(assert (=> bm!579519 m!7387880))

(assert (=> b!6613890 d!2073509))

(declare-fun d!2073511 () Bool)

(declare-fun c!1219268 () Bool)

(assert (=> d!2073511 (= c!1219268 (isEmpty!37921 (tail!12500 (t!379416 s!2326))))))

(declare-fun e!4001772 () Bool)

(assert (=> d!2073511 (= (matchZipper!2499 (derivationStepZipper!2452 lt!2417206 (head!13415 (t!379416 s!2326))) (tail!12500 (t!379416 s!2326))) e!4001772)))

(declare-fun b!6614680 () Bool)

(assert (=> b!6614680 (= e!4001772 (nullableZipper!2227 (derivationStepZipper!2452 lt!2417206 (head!13415 (t!379416 s!2326)))))))

(declare-fun b!6614681 () Bool)

(assert (=> b!6614681 (= e!4001772 (matchZipper!2499 (derivationStepZipper!2452 (derivationStepZipper!2452 lt!2417206 (head!13415 (t!379416 s!2326))) (head!13415 (tail!12500 (t!379416 s!2326)))) (tail!12500 (tail!12500 (t!379416 s!2326)))))))

(assert (= (and d!2073511 c!1219268) b!6614680))

(assert (= (and d!2073511 (not c!1219268)) b!6614681))

(assert (=> d!2073511 m!7387316))

(assert (=> d!2073511 m!7387846))

(assert (=> b!6614680 m!7387388))

(declare-fun m!7387882 () Bool)

(assert (=> b!6614680 m!7387882))

(assert (=> b!6614681 m!7387316))

(assert (=> b!6614681 m!7387850))

(assert (=> b!6614681 m!7387388))

(assert (=> b!6614681 m!7387850))

(declare-fun m!7387884 () Bool)

(assert (=> b!6614681 m!7387884))

(assert (=> b!6614681 m!7387316))

(assert (=> b!6614681 m!7387854))

(assert (=> b!6614681 m!7387884))

(assert (=> b!6614681 m!7387854))

(declare-fun m!7387886 () Bool)

(assert (=> b!6614681 m!7387886))

(assert (=> b!6613841 d!2073511))

(declare-fun bs!1695699 () Bool)

(declare-fun d!2073513 () Bool)

(assert (= bs!1695699 (and d!2073513 b!6613663)))

(declare-fun lambda!369496 () Int)

(assert (=> bs!1695699 (= (= (head!13415 (t!379416 s!2326)) (h!72086 s!2326)) (= lambda!369496 lambda!369415))))

(declare-fun bs!1695700 () Bool)

(assert (= bs!1695700 (and d!2073513 d!2073499)))

(assert (=> bs!1695700 (= lambda!369496 lambda!369493)))

(assert (=> d!2073513 true))

(assert (=> d!2073513 (= (derivationStepZipper!2452 lt!2417206 (head!13415 (t!379416 s!2326))) (flatMap!1992 lt!2417206 lambda!369496))))

(declare-fun bs!1695701 () Bool)

(assert (= bs!1695701 d!2073513))

(declare-fun m!7387888 () Bool)

(assert (=> bs!1695701 m!7387888))

(assert (=> b!6613841 d!2073513))

(assert (=> b!6613841 d!2073501))

(assert (=> b!6613841 d!2073503))

(assert (=> d!2073375 d!2073445))

(declare-fun b!6614682 () Bool)

(declare-fun res!2712427 () Bool)

(declare-fun e!4001777 () Bool)

(assert (=> b!6614682 (=> (not res!2712427) (not e!4001777))))

(assert (=> b!6614682 (= res!2712427 (isEmpty!37921 (tail!12500 Nil!65638)))))

(declare-fun b!6614683 () Bool)

(declare-fun res!2712426 () Bool)

(declare-fun e!4001776 () Bool)

(assert (=> b!6614683 (=> res!2712426 e!4001776)))

(assert (=> b!6614683 (= res!2712426 e!4001777)))

(declare-fun res!2712424 () Bool)

(assert (=> b!6614683 (=> (not res!2712424) (not e!4001777))))

(declare-fun lt!2417318 () Bool)

(assert (=> b!6614683 (= res!2712424 lt!2417318)))

(declare-fun b!6614684 () Bool)

(declare-fun res!2712422 () Bool)

(assert (=> b!6614684 (=> (not res!2712422) (not e!4001777))))

(declare-fun call!579525 () Bool)

(assert (=> b!6614684 (= res!2712422 (not call!579525))))

(declare-fun b!6614685 () Bool)

(declare-fun e!4001773 () Bool)

(assert (=> b!6614685 (= e!4001773 (nullable!6480 (regOne!33486 r!7292)))))

(declare-fun b!6614686 () Bool)

(declare-fun e!4001774 () Bool)

(assert (=> b!6614686 (= e!4001774 (not (= (head!13415 Nil!65638) (c!1218988 (regOne!33486 r!7292)))))))

(declare-fun b!6614687 () Bool)

(assert (=> b!6614687 (= e!4001773 (matchR!8670 (derivativeStep!5167 (regOne!33486 r!7292) (head!13415 Nil!65638)) (tail!12500 Nil!65638)))))

(declare-fun b!6614688 () Bool)

(declare-fun e!4001778 () Bool)

(assert (=> b!6614688 (= e!4001776 e!4001778)))

(declare-fun res!2712425 () Bool)

(assert (=> b!6614688 (=> (not res!2712425) (not e!4001778))))

(assert (=> b!6614688 (= res!2712425 (not lt!2417318))))

(declare-fun b!6614689 () Bool)

(declare-fun e!4001775 () Bool)

(assert (=> b!6614689 (= e!4001775 (not lt!2417318))))

(declare-fun bm!579520 () Bool)

(assert (=> bm!579520 (= call!579525 (isEmpty!37921 Nil!65638))))

(declare-fun b!6614690 () Bool)

(declare-fun e!4001779 () Bool)

(assert (=> b!6614690 (= e!4001779 (= lt!2417318 call!579525))))

(declare-fun b!6614691 () Bool)

(declare-fun res!2712421 () Bool)

(assert (=> b!6614691 (=> res!2712421 e!4001776)))

(assert (=> b!6614691 (= res!2712421 (not ((_ is ElementMatch!16487) (regOne!33486 r!7292))))))

(assert (=> b!6614691 (= e!4001775 e!4001776)))

(declare-fun d!2073515 () Bool)

(assert (=> d!2073515 e!4001779))

(declare-fun c!1219269 () Bool)

(assert (=> d!2073515 (= c!1219269 ((_ is EmptyExpr!16487) (regOne!33486 r!7292)))))

(assert (=> d!2073515 (= lt!2417318 e!4001773)))

(declare-fun c!1219270 () Bool)

(assert (=> d!2073515 (= c!1219270 (isEmpty!37921 Nil!65638))))

(assert (=> d!2073515 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073515 (= (matchR!8670 (regOne!33486 r!7292) Nil!65638) lt!2417318)))

(declare-fun b!6614692 () Bool)

(assert (=> b!6614692 (= e!4001778 e!4001774)))

(declare-fun res!2712420 () Bool)

(assert (=> b!6614692 (=> res!2712420 e!4001774)))

(assert (=> b!6614692 (= res!2712420 call!579525)))

(declare-fun b!6614693 () Bool)

(assert (=> b!6614693 (= e!4001777 (= (head!13415 Nil!65638) (c!1218988 (regOne!33486 r!7292))))))

(declare-fun b!6614694 () Bool)

(declare-fun res!2712423 () Bool)

(assert (=> b!6614694 (=> res!2712423 e!4001774)))

(assert (=> b!6614694 (= res!2712423 (not (isEmpty!37921 (tail!12500 Nil!65638))))))

(declare-fun b!6614695 () Bool)

(assert (=> b!6614695 (= e!4001779 e!4001775)))

(declare-fun c!1219271 () Bool)

(assert (=> b!6614695 (= c!1219271 ((_ is EmptyLang!16487) (regOne!33486 r!7292)))))

(assert (= (and d!2073515 c!1219270) b!6614685))

(assert (= (and d!2073515 (not c!1219270)) b!6614687))

(assert (= (and d!2073515 c!1219269) b!6614690))

(assert (= (and d!2073515 (not c!1219269)) b!6614695))

(assert (= (and b!6614695 c!1219271) b!6614689))

(assert (= (and b!6614695 (not c!1219271)) b!6614691))

(assert (= (and b!6614691 (not res!2712421)) b!6614683))

(assert (= (and b!6614683 res!2712424) b!6614684))

(assert (= (and b!6614684 res!2712422) b!6614682))

(assert (= (and b!6614682 res!2712427) b!6614693))

(assert (= (and b!6614683 (not res!2712426)) b!6614688))

(assert (= (and b!6614688 res!2712425) b!6614692))

(assert (= (and b!6614692 (not res!2712420)) b!6614694))

(assert (= (and b!6614694 (not res!2712423)) b!6614686))

(assert (= (or b!6614690 b!6614684 b!6614692) bm!579520))

(declare-fun m!7387890 () Bool)

(assert (=> bm!579520 m!7387890))

(declare-fun m!7387892 () Bool)

(assert (=> b!6614687 m!7387892))

(assert (=> b!6614687 m!7387892))

(declare-fun m!7387894 () Bool)

(assert (=> b!6614687 m!7387894))

(declare-fun m!7387896 () Bool)

(assert (=> b!6614687 m!7387896))

(assert (=> b!6614687 m!7387894))

(assert (=> b!6614687 m!7387896))

(declare-fun m!7387898 () Bool)

(assert (=> b!6614687 m!7387898))

(assert (=> d!2073515 m!7387890))

(assert (=> d!2073515 m!7387414))

(assert (=> b!6614686 m!7387892))

(assert (=> b!6614685 m!7387452))

(assert (=> b!6614682 m!7387896))

(assert (=> b!6614682 m!7387896))

(declare-fun m!7387900 () Bool)

(assert (=> b!6614682 m!7387900))

(assert (=> b!6614693 m!7387892))

(assert (=> b!6614694 m!7387896))

(assert (=> b!6614694 m!7387896))

(assert (=> b!6614694 m!7387900))

(assert (=> d!2073375 d!2073515))

(declare-fun b!6614696 () Bool)

(declare-fun e!4001785 () Bool)

(declare-fun e!4001781 () Bool)

(assert (=> b!6614696 (= e!4001785 e!4001781)))

(declare-fun res!2712428 () Bool)

(assert (=> b!6614696 (=> (not res!2712428) (not e!4001781))))

(declare-fun call!579526 () Bool)

(assert (=> b!6614696 (= res!2712428 call!579526)))

(declare-fun b!6614697 () Bool)

(declare-fun e!4001783 () Bool)

(declare-fun e!4001782 () Bool)

(assert (=> b!6614697 (= e!4001783 e!4001782)))

(declare-fun c!1219273 () Bool)

(assert (=> b!6614697 (= c!1219273 ((_ is Union!16487) (regOne!33486 r!7292)))))

(declare-fun bm!579521 () Bool)

(declare-fun call!579527 () Bool)

(declare-fun call!579528 () Bool)

(assert (=> bm!579521 (= call!579527 call!579528)))

(declare-fun b!6614698 () Bool)

(declare-fun e!4001786 () Bool)

(assert (=> b!6614698 (= e!4001783 e!4001786)))

(declare-fun res!2712432 () Bool)

(assert (=> b!6614698 (= res!2712432 (not (nullable!6480 (reg!16816 (regOne!33486 r!7292)))))))

(assert (=> b!6614698 (=> (not res!2712432) (not e!4001786))))

(declare-fun b!6614699 () Bool)

(declare-fun e!4001784 () Bool)

(assert (=> b!6614699 (= e!4001784 e!4001783)))

(declare-fun c!1219272 () Bool)

(assert (=> b!6614699 (= c!1219272 ((_ is Star!16487) (regOne!33486 r!7292)))))

(declare-fun bm!579522 () Bool)

(assert (=> bm!579522 (= call!579528 (validRegex!8223 (ite c!1219272 (reg!16816 (regOne!33486 r!7292)) (ite c!1219273 (regTwo!33487 (regOne!33486 r!7292)) (regTwo!33486 (regOne!33486 r!7292))))))))

(declare-fun b!6614700 () Bool)

(declare-fun e!4001780 () Bool)

(assert (=> b!6614700 (= e!4001780 call!579527)))

(declare-fun b!6614701 () Bool)

(declare-fun res!2712429 () Bool)

(assert (=> b!6614701 (=> (not res!2712429) (not e!4001780))))

(assert (=> b!6614701 (= res!2712429 call!579526)))

(assert (=> b!6614701 (= e!4001782 e!4001780)))

(declare-fun bm!579523 () Bool)

(assert (=> bm!579523 (= call!579526 (validRegex!8223 (ite c!1219273 (regOne!33487 (regOne!33486 r!7292)) (regOne!33486 (regOne!33486 r!7292)))))))

(declare-fun b!6614703 () Bool)

(declare-fun res!2712431 () Bool)

(assert (=> b!6614703 (=> res!2712431 e!4001785)))

(assert (=> b!6614703 (= res!2712431 (not ((_ is Concat!25332) (regOne!33486 r!7292))))))

(assert (=> b!6614703 (= e!4001782 e!4001785)))

(declare-fun b!6614704 () Bool)

(assert (=> b!6614704 (= e!4001781 call!579527)))

(declare-fun b!6614702 () Bool)

(assert (=> b!6614702 (= e!4001786 call!579528)))

(declare-fun d!2073517 () Bool)

(declare-fun res!2712430 () Bool)

(assert (=> d!2073517 (=> res!2712430 e!4001784)))

(assert (=> d!2073517 (= res!2712430 ((_ is ElementMatch!16487) (regOne!33486 r!7292)))))

(assert (=> d!2073517 (= (validRegex!8223 (regOne!33486 r!7292)) e!4001784)))

(assert (= (and d!2073517 (not res!2712430)) b!6614699))

(assert (= (and b!6614699 c!1219272) b!6614698))

(assert (= (and b!6614699 (not c!1219272)) b!6614697))

(assert (= (and b!6614698 res!2712432) b!6614702))

(assert (= (and b!6614697 c!1219273) b!6614701))

(assert (= (and b!6614697 (not c!1219273)) b!6614703))

(assert (= (and b!6614701 res!2712429) b!6614700))

(assert (= (and b!6614703 (not res!2712431)) b!6614696))

(assert (= (and b!6614696 res!2712428) b!6614704))

(assert (= (or b!6614700 b!6614704) bm!579521))

(assert (= (or b!6614701 b!6614696) bm!579523))

(assert (= (or b!6614702 bm!579521) bm!579522))

(declare-fun m!7387902 () Bool)

(assert (=> b!6614698 m!7387902))

(declare-fun m!7387904 () Bool)

(assert (=> bm!579522 m!7387904))

(declare-fun m!7387906 () Bool)

(assert (=> bm!579523 m!7387906))

(assert (=> d!2073375 d!2073517))

(declare-fun b!6614705 () Bool)

(declare-fun e!4001789 () (InoxSet Context!11742))

(declare-fun call!579529 () (InoxSet Context!11742))

(declare-fun call!579533 () (InoxSet Context!11742))

(assert (=> b!6614705 (= e!4001789 ((_ map or) call!579529 call!579533))))

(declare-fun b!6614706 () Bool)

(declare-fun e!4001791 () (InoxSet Context!11742))

(declare-fun call!579531 () (InoxSet Context!11742))

(assert (=> b!6614706 (= e!4001791 call!579531)))

(declare-fun d!2073519 () Bool)

(declare-fun c!1219275 () Bool)

(assert (=> d!2073519 (= c!1219275 (and ((_ is ElementMatch!16487) (h!72084 (exprs!6371 lt!2417204))) (= (c!1218988 (h!72084 (exprs!6371 lt!2417204))) (h!72086 s!2326))))))

(declare-fun e!4001787 () (InoxSet Context!11742))

(assert (=> d!2073519 (= (derivationStepZipperDown!1735 (h!72084 (exprs!6371 lt!2417204)) (Context!11743 (t!379414 (exprs!6371 lt!2417204))) (h!72086 s!2326)) e!4001787)))

(declare-fun b!6614707 () Bool)

(declare-fun c!1219276 () Bool)

(declare-fun e!4001790 () Bool)

(assert (=> b!6614707 (= c!1219276 e!4001790)))

(declare-fun res!2712433 () Bool)

(assert (=> b!6614707 (=> (not res!2712433) (not e!4001790))))

(assert (=> b!6614707 (= res!2712433 ((_ is Concat!25332) (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun e!4001792 () (InoxSet Context!11742))

(assert (=> b!6614707 (= e!4001789 e!4001792)))

(declare-fun b!6614708 () Bool)

(declare-fun call!579534 () (InoxSet Context!11742))

(assert (=> b!6614708 (= e!4001792 ((_ map or) call!579533 call!579534))))

(declare-fun c!1219277 () Bool)

(declare-fun bm!579524 () Bool)

(declare-fun call!579530 () List!65760)

(assert (=> bm!579524 (= call!579530 ($colon$colon!2323 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 lt!2417204)))) (ite (or c!1219276 c!1219277) (regTwo!33486 (h!72084 (exprs!6371 lt!2417204))) (h!72084 (exprs!6371 lt!2417204)))))))

(declare-fun b!6614709 () Bool)

(declare-fun c!1219274 () Bool)

(assert (=> b!6614709 (= c!1219274 ((_ is Star!16487) (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun e!4001788 () (InoxSet Context!11742))

(assert (=> b!6614709 (= e!4001791 e!4001788)))

(declare-fun c!1219278 () Bool)

(declare-fun bm!579525 () Bool)

(assert (=> bm!579525 (= call!579533 (derivationStepZipperDown!1735 (ite c!1219278 (regTwo!33487 (h!72084 (exprs!6371 lt!2417204))) (regOne!33486 (h!72084 (exprs!6371 lt!2417204)))) (ite c!1219278 (Context!11743 (t!379414 (exprs!6371 lt!2417204))) (Context!11743 call!579530)) (h!72086 s!2326)))))

(declare-fun bm!579526 () Bool)

(assert (=> bm!579526 (= call!579534 call!579529)))

(declare-fun bm!579527 () Bool)

(declare-fun call!579532 () List!65760)

(assert (=> bm!579527 (= call!579532 call!579530)))

(declare-fun bm!579528 () Bool)

(assert (=> bm!579528 (= call!579531 call!579534)))

(declare-fun b!6614710 () Bool)

(assert (=> b!6614710 (= e!4001792 e!4001791)))

(assert (=> b!6614710 (= c!1219277 ((_ is Concat!25332) (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun b!6614711 () Bool)

(assert (=> b!6614711 (= e!4001787 e!4001789)))

(assert (=> b!6614711 (= c!1219278 ((_ is Union!16487) (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun b!6614712 () Bool)

(assert (=> b!6614712 (= e!4001790 (nullable!6480 (regOne!33486 (h!72084 (exprs!6371 lt!2417204)))))))

(declare-fun bm!579529 () Bool)

(assert (=> bm!579529 (= call!579529 (derivationStepZipperDown!1735 (ite c!1219278 (regOne!33487 (h!72084 (exprs!6371 lt!2417204))) (ite c!1219276 (regTwo!33486 (h!72084 (exprs!6371 lt!2417204))) (ite c!1219277 (regOne!33486 (h!72084 (exprs!6371 lt!2417204))) (reg!16816 (h!72084 (exprs!6371 lt!2417204)))))) (ite (or c!1219278 c!1219276) (Context!11743 (t!379414 (exprs!6371 lt!2417204))) (Context!11743 call!579532)) (h!72086 s!2326)))))

(declare-fun b!6614713 () Bool)

(assert (=> b!6614713 (= e!4001787 (store ((as const (Array Context!11742 Bool)) false) (Context!11743 (t!379414 (exprs!6371 lt!2417204))) true))))

(declare-fun b!6614714 () Bool)

(assert (=> b!6614714 (= e!4001788 call!579531)))

(declare-fun b!6614715 () Bool)

(assert (=> b!6614715 (= e!4001788 ((as const (Array Context!11742 Bool)) false))))

(assert (= (and d!2073519 c!1219275) b!6614713))

(assert (= (and d!2073519 (not c!1219275)) b!6614711))

(assert (= (and b!6614711 c!1219278) b!6614705))

(assert (= (and b!6614711 (not c!1219278)) b!6614707))

(assert (= (and b!6614707 res!2712433) b!6614712))

(assert (= (and b!6614707 c!1219276) b!6614708))

(assert (= (and b!6614707 (not c!1219276)) b!6614710))

(assert (= (and b!6614710 c!1219277) b!6614706))

(assert (= (and b!6614710 (not c!1219277)) b!6614709))

(assert (= (and b!6614709 c!1219274) b!6614714))

(assert (= (and b!6614709 (not c!1219274)) b!6614715))

(assert (= (or b!6614706 b!6614714) bm!579527))

(assert (= (or b!6614706 b!6614714) bm!579528))

(assert (= (or b!6614708 bm!579527) bm!579524))

(assert (= (or b!6614708 bm!579528) bm!579526))

(assert (= (or b!6614705 b!6614708) bm!579525))

(assert (= (or b!6614705 bm!579526) bm!579529))

(declare-fun m!7387908 () Bool)

(assert (=> b!6614713 m!7387908))

(declare-fun m!7387910 () Bool)

(assert (=> bm!579529 m!7387910))

(declare-fun m!7387912 () Bool)

(assert (=> b!6614712 m!7387912))

(declare-fun m!7387914 () Bool)

(assert (=> bm!579525 m!7387914))

(declare-fun m!7387916 () Bool)

(assert (=> bm!579524 m!7387916))

(assert (=> bm!579397 d!2073519))

(assert (=> bm!579419 d!2073455))

(declare-fun bs!1695702 () Bool)

(declare-fun d!2073521 () Bool)

(assert (= bs!1695702 (and d!2073521 d!2073453)))

(declare-fun lambda!369497 () Int)

(assert (=> bs!1695702 (= lambda!369497 lambda!369484)))

(declare-fun bs!1695703 () Bool)

(assert (= bs!1695703 (and d!2073521 d!2073459)))

(assert (=> bs!1695703 (= lambda!369497 lambda!369485)))

(assert (=> d!2073521 (= (nullableZipper!2227 ((_ map or) lt!2417194 lt!2417206)) (exists!2654 ((_ map or) lt!2417194 lt!2417206) lambda!369497))))

(declare-fun bs!1695704 () Bool)

(assert (= bs!1695704 d!2073521))

(declare-fun m!7387918 () Bool)

(assert (=> bs!1695704 m!7387918))

(assert (=> b!6613738 d!2073521))

(assert (=> bm!579431 d!2073455))

(declare-fun d!2073523 () Bool)

(assert (=> d!2073523 (= ($colon$colon!2323 (exprs!6371 lt!2417204) (ite (or c!1219001 c!1219002) (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (h!72084 (exprs!6371 (h!72085 zl!343))))) (Cons!65636 (ite (or c!1219001 c!1219002) (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (h!72084 (exprs!6371 (h!72085 zl!343)))) (exprs!6371 lt!2417204)))))

(assert (=> bm!579387 d!2073523))

(declare-fun b!6614716 () Bool)

(declare-fun e!4001793 () List!65762)

(assert (=> b!6614716 (= e!4001793 (t!379416 s!2326))))

(declare-fun b!6614719 () Bool)

(declare-fun e!4001794 () Bool)

(declare-fun lt!2417319 () List!65762)

(assert (=> b!6614719 (= e!4001794 (or (not (= (t!379416 s!2326) Nil!65638)) (= lt!2417319 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)))))))

(declare-fun b!6614717 () Bool)

(assert (=> b!6614717 (= e!4001793 (Cons!65638 (h!72086 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638))) (++!14637 (t!379416 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638))) (t!379416 s!2326))))))

(declare-fun b!6614718 () Bool)

(declare-fun res!2712435 () Bool)

(assert (=> b!6614718 (=> (not res!2712435) (not e!4001794))))

(assert (=> b!6614718 (= res!2712435 (= (size!40547 lt!2417319) (+ (size!40547 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638))) (size!40547 (t!379416 s!2326)))))))

(declare-fun d!2073525 () Bool)

(assert (=> d!2073525 e!4001794))

(declare-fun res!2712434 () Bool)

(assert (=> d!2073525 (=> (not res!2712434) (not e!4001794))))

(assert (=> d!2073525 (= res!2712434 (= (content!12663 lt!2417319) ((_ map or) (content!12663 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638))) (content!12663 (t!379416 s!2326)))))))

(assert (=> d!2073525 (= lt!2417319 e!4001793)))

(declare-fun c!1219279 () Bool)

(assert (=> d!2073525 (= c!1219279 ((_ is Nil!65638) (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638))))))

(assert (=> d!2073525 (= (++!14637 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (t!379416 s!2326)) lt!2417319)))

(assert (= (and d!2073525 c!1219279) b!6614716))

(assert (= (and d!2073525 (not c!1219279)) b!6614717))

(assert (= (and d!2073525 res!2712434) b!6614718))

(assert (= (and b!6614718 res!2712435) b!6614719))

(declare-fun m!7387920 () Bool)

(assert (=> b!6614717 m!7387920))

(declare-fun m!7387922 () Bool)

(assert (=> b!6614718 m!7387922))

(assert (=> b!6614718 m!7387562))

(declare-fun m!7387924 () Bool)

(assert (=> b!6614718 m!7387924))

(declare-fun m!7387926 () Bool)

(assert (=> b!6614718 m!7387926))

(declare-fun m!7387928 () Bool)

(assert (=> d!2073525 m!7387928))

(assert (=> d!2073525 m!7387562))

(declare-fun m!7387930 () Bool)

(assert (=> d!2073525 m!7387930))

(declare-fun m!7387932 () Bool)

(assert (=> d!2073525 m!7387932))

(assert (=> b!6614199 d!2073525))

(declare-fun b!6614720 () Bool)

(declare-fun e!4001795 () List!65762)

(assert (=> b!6614720 (= e!4001795 (Cons!65638 (h!72086 s!2326) Nil!65638))))

(declare-fun b!6614723 () Bool)

(declare-fun e!4001796 () Bool)

(declare-fun lt!2417320 () List!65762)

(assert (=> b!6614723 (= e!4001796 (or (not (= (Cons!65638 (h!72086 s!2326) Nil!65638) Nil!65638)) (= lt!2417320 Nil!65638)))))

(declare-fun b!6614721 () Bool)

(assert (=> b!6614721 (= e!4001795 (Cons!65638 (h!72086 Nil!65638) (++!14637 (t!379416 Nil!65638) (Cons!65638 (h!72086 s!2326) Nil!65638))))))

(declare-fun b!6614722 () Bool)

(declare-fun res!2712437 () Bool)

(assert (=> b!6614722 (=> (not res!2712437) (not e!4001796))))

(assert (=> b!6614722 (= res!2712437 (= (size!40547 lt!2417320) (+ (size!40547 Nil!65638) (size!40547 (Cons!65638 (h!72086 s!2326) Nil!65638)))))))

(declare-fun d!2073527 () Bool)

(assert (=> d!2073527 e!4001796))

(declare-fun res!2712436 () Bool)

(assert (=> d!2073527 (=> (not res!2712436) (not e!4001796))))

(assert (=> d!2073527 (= res!2712436 (= (content!12663 lt!2417320) ((_ map or) (content!12663 Nil!65638) (content!12663 (Cons!65638 (h!72086 s!2326) Nil!65638)))))))

(assert (=> d!2073527 (= lt!2417320 e!4001795)))

(declare-fun c!1219280 () Bool)

(assert (=> d!2073527 (= c!1219280 ((_ is Nil!65638) Nil!65638))))

(assert (=> d!2073527 (= (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) lt!2417320)))

(assert (= (and d!2073527 c!1219280) b!6614720))

(assert (= (and d!2073527 (not c!1219280)) b!6614721))

(assert (= (and d!2073527 res!2712436) b!6614722))

(assert (= (and b!6614722 res!2712437) b!6614723))

(declare-fun m!7387934 () Bool)

(assert (=> b!6614721 m!7387934))

(declare-fun m!7387936 () Bool)

(assert (=> b!6614722 m!7387936))

(declare-fun m!7387938 () Bool)

(assert (=> b!6614722 m!7387938))

(declare-fun m!7387940 () Bool)

(assert (=> b!6614722 m!7387940))

(declare-fun m!7387942 () Bool)

(assert (=> d!2073527 m!7387942))

(declare-fun m!7387944 () Bool)

(assert (=> d!2073527 m!7387944))

(declare-fun m!7387946 () Bool)

(assert (=> d!2073527 m!7387946))

(assert (=> b!6614199 d!2073527))

(declare-fun d!2073529 () Bool)

(assert (=> d!2073529 (= (++!14637 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (t!379416 s!2326)) s!2326)))

(declare-fun lt!2417323 () Unit!159303)

(declare-fun choose!49433 (List!65762 C!33244 List!65762 List!65762) Unit!159303)

(assert (=> d!2073529 (= lt!2417323 (choose!49433 Nil!65638 (h!72086 s!2326) (t!379416 s!2326) s!2326))))

(assert (=> d!2073529 (= (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) (t!379416 s!2326))) s!2326)))

(assert (=> d!2073529 (= (lemmaMoveElementToOtherListKeepsConcatEq!2626 Nil!65638 (h!72086 s!2326) (t!379416 s!2326) s!2326) lt!2417323)))

(declare-fun bs!1695705 () Bool)

(assert (= bs!1695705 d!2073529))

(assert (=> bs!1695705 m!7387562))

(assert (=> bs!1695705 m!7387562))

(assert (=> bs!1695705 m!7387568))

(declare-fun m!7387948 () Bool)

(assert (=> bs!1695705 m!7387948))

(declare-fun m!7387950 () Bool)

(assert (=> bs!1695705 m!7387950))

(assert (=> b!6614199 d!2073529))

(declare-fun d!2073531 () Bool)

(declare-fun e!4001800 () Bool)

(assert (=> d!2073531 e!4001800))

(declare-fun res!2712439 () Bool)

(assert (=> d!2073531 (=> res!2712439 e!4001800)))

(declare-fun e!4001801 () Bool)

(assert (=> d!2073531 (= res!2712439 e!4001801)))

(declare-fun res!2712442 () Bool)

(assert (=> d!2073531 (=> (not res!2712442) (not e!4001801))))

(declare-fun lt!2417324 () Option!16378)

(assert (=> d!2073531 (= res!2712442 (isDefined!13081 lt!2417324))))

(declare-fun e!4001798 () Option!16378)

(assert (=> d!2073531 (= lt!2417324 e!4001798)))

(declare-fun c!1219282 () Bool)

(declare-fun e!4001799 () Bool)

(assert (=> d!2073531 (= c!1219282 e!4001799)))

(declare-fun res!2712440 () Bool)

(assert (=> d!2073531 (=> (not res!2712440) (not e!4001799))))

(assert (=> d!2073531 (= res!2712440 (matchR!8670 (regOne!33486 r!7292) (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638))))))

(assert (=> d!2073531 (validRegex!8223 (regOne!33486 r!7292))))

(assert (=> d!2073531 (= (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (t!379416 s!2326) s!2326) lt!2417324)))

(declare-fun b!6614724 () Bool)

(declare-fun res!2712438 () Bool)

(assert (=> b!6614724 (=> (not res!2712438) (not e!4001801))))

(assert (=> b!6614724 (= res!2712438 (matchR!8670 (regTwo!33486 r!7292) (_2!36769 (get!22812 lt!2417324))))))

(declare-fun b!6614725 () Bool)

(declare-fun lt!2417325 () Unit!159303)

(declare-fun lt!2417326 () Unit!159303)

(assert (=> b!6614725 (= lt!2417325 lt!2417326)))

(assert (=> b!6614725 (= (++!14637 (++!14637 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (Cons!65638 (h!72086 (t!379416 s!2326)) Nil!65638)) (t!379416 (t!379416 s!2326))) s!2326)))

(assert (=> b!6614725 (= lt!2417326 (lemmaMoveElementToOtherListKeepsConcatEq!2626 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (h!72086 (t!379416 s!2326)) (t!379416 (t!379416 s!2326)) s!2326))))

(declare-fun e!4001797 () Option!16378)

(assert (=> b!6614725 (= e!4001797 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) (++!14637 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (Cons!65638 (h!72086 (t!379416 s!2326)) Nil!65638)) (t!379416 (t!379416 s!2326)) s!2326))))

(declare-fun b!6614726 () Bool)

(assert (=> b!6614726 (= e!4001799 (matchR!8670 (regTwo!33486 r!7292) (t!379416 s!2326)))))

(declare-fun b!6614727 () Bool)

(declare-fun res!2712441 () Bool)

(assert (=> b!6614727 (=> (not res!2712441) (not e!4001801))))

(assert (=> b!6614727 (= res!2712441 (matchR!8670 (regOne!33486 r!7292) (_1!36769 (get!22812 lt!2417324))))))

(declare-fun b!6614728 () Bool)

(assert (=> b!6614728 (= e!4001797 None!16377)))

(declare-fun b!6614729 () Bool)

(assert (=> b!6614729 (= e!4001800 (not (isDefined!13081 lt!2417324)))))

(declare-fun b!6614730 () Bool)

(assert (=> b!6614730 (= e!4001798 (Some!16377 (tuple2!66933 (++!14637 Nil!65638 (Cons!65638 (h!72086 s!2326) Nil!65638)) (t!379416 s!2326))))))

(declare-fun b!6614731 () Bool)

(assert (=> b!6614731 (= e!4001798 e!4001797)))

(declare-fun c!1219281 () Bool)

(assert (=> b!6614731 (= c!1219281 ((_ is Nil!65638) (t!379416 s!2326)))))

(declare-fun b!6614732 () Bool)

(assert (=> b!6614732 (= e!4001801 (= (++!14637 (_1!36769 (get!22812 lt!2417324)) (_2!36769 (get!22812 lt!2417324))) s!2326))))

(assert (= (and d!2073531 res!2712440) b!6614726))

(assert (= (and d!2073531 c!1219282) b!6614730))

(assert (= (and d!2073531 (not c!1219282)) b!6614731))

(assert (= (and b!6614731 c!1219281) b!6614728))

(assert (= (and b!6614731 (not c!1219281)) b!6614725))

(assert (= (and d!2073531 res!2712442) b!6614727))

(assert (= (and b!6614727 res!2712441) b!6614724))

(assert (= (and b!6614724 res!2712438) b!6614732))

(assert (= (and d!2073531 (not res!2712439)) b!6614729))

(assert (=> b!6614725 m!7387562))

(declare-fun m!7387952 () Bool)

(assert (=> b!6614725 m!7387952))

(assert (=> b!6614725 m!7387952))

(declare-fun m!7387954 () Bool)

(assert (=> b!6614725 m!7387954))

(assert (=> b!6614725 m!7387562))

(declare-fun m!7387956 () Bool)

(assert (=> b!6614725 m!7387956))

(assert (=> b!6614725 m!7387952))

(declare-fun m!7387958 () Bool)

(assert (=> b!6614725 m!7387958))

(declare-fun m!7387960 () Bool)

(assert (=> b!6614727 m!7387960))

(declare-fun m!7387962 () Bool)

(assert (=> b!6614727 m!7387962))

(declare-fun m!7387964 () Bool)

(assert (=> b!6614729 m!7387964))

(declare-fun m!7387966 () Bool)

(assert (=> b!6614726 m!7387966))

(assert (=> b!6614732 m!7387960))

(declare-fun m!7387968 () Bool)

(assert (=> b!6614732 m!7387968))

(assert (=> b!6614724 m!7387960))

(declare-fun m!7387970 () Bool)

(assert (=> b!6614724 m!7387970))

(assert (=> d!2073531 m!7387964))

(assert (=> d!2073531 m!7387562))

(declare-fun m!7387972 () Bool)

(assert (=> d!2073531 m!7387972))

(assert (=> d!2073531 m!7387414))

(assert (=> b!6614199 d!2073531))

(declare-fun b!6614733 () Bool)

(declare-fun res!2712450 () Bool)

(declare-fun e!4001806 () Bool)

(assert (=> b!6614733 (=> (not res!2712450) (not e!4001806))))

(assert (=> b!6614733 (= res!2712450 (isEmpty!37921 (tail!12500 (tail!12500 s!2326))))))

(declare-fun b!6614734 () Bool)

(declare-fun res!2712449 () Bool)

(declare-fun e!4001805 () Bool)

(assert (=> b!6614734 (=> res!2712449 e!4001805)))

(assert (=> b!6614734 (= res!2712449 e!4001806)))

(declare-fun res!2712447 () Bool)

(assert (=> b!6614734 (=> (not res!2712447) (not e!4001806))))

(declare-fun lt!2417327 () Bool)

(assert (=> b!6614734 (= res!2712447 lt!2417327)))

(declare-fun b!6614735 () Bool)

(declare-fun res!2712445 () Bool)

(assert (=> b!6614735 (=> (not res!2712445) (not e!4001806))))

(declare-fun call!579535 () Bool)

(assert (=> b!6614735 (= res!2712445 (not call!579535))))

(declare-fun b!6614736 () Bool)

(declare-fun e!4001802 () Bool)

(assert (=> b!6614736 (= e!4001802 (nullable!6480 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326))))))

(declare-fun b!6614737 () Bool)

(declare-fun e!4001803 () Bool)

(assert (=> b!6614737 (= e!4001803 (not (= (head!13415 (tail!12500 s!2326)) (c!1218988 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326))))))))

(declare-fun b!6614738 () Bool)

(assert (=> b!6614738 (= e!4001802 (matchR!8670 (derivativeStep!5167 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326)) (head!13415 (tail!12500 s!2326))) (tail!12500 (tail!12500 s!2326))))))

(declare-fun b!6614739 () Bool)

(declare-fun e!4001807 () Bool)

(assert (=> b!6614739 (= e!4001805 e!4001807)))

(declare-fun res!2712448 () Bool)

(assert (=> b!6614739 (=> (not res!2712448) (not e!4001807))))

(assert (=> b!6614739 (= res!2712448 (not lt!2417327))))

(declare-fun b!6614740 () Bool)

(declare-fun e!4001804 () Bool)

(assert (=> b!6614740 (= e!4001804 (not lt!2417327))))

(declare-fun bm!579530 () Bool)

(assert (=> bm!579530 (= call!579535 (isEmpty!37921 (tail!12500 s!2326)))))

(declare-fun b!6614741 () Bool)

(declare-fun e!4001808 () Bool)

(assert (=> b!6614741 (= e!4001808 (= lt!2417327 call!579535))))

(declare-fun b!6614742 () Bool)

(declare-fun res!2712444 () Bool)

(assert (=> b!6614742 (=> res!2712444 e!4001805)))

(assert (=> b!6614742 (= res!2712444 (not ((_ is ElementMatch!16487) (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326)))))))

(assert (=> b!6614742 (= e!4001804 e!4001805)))

(declare-fun d!2073533 () Bool)

(assert (=> d!2073533 e!4001808))

(declare-fun c!1219283 () Bool)

(assert (=> d!2073533 (= c!1219283 ((_ is EmptyExpr!16487) (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326))))))

(assert (=> d!2073533 (= lt!2417327 e!4001802)))

(declare-fun c!1219284 () Bool)

(assert (=> d!2073533 (= c!1219284 (isEmpty!37921 (tail!12500 s!2326)))))

(assert (=> d!2073533 (validRegex!8223 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326)))))

(assert (=> d!2073533 (= (matchR!8670 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326)) (tail!12500 s!2326)) lt!2417327)))

(declare-fun b!6614743 () Bool)

(assert (=> b!6614743 (= e!4001807 e!4001803)))

(declare-fun res!2712443 () Bool)

(assert (=> b!6614743 (=> res!2712443 e!4001803)))

(assert (=> b!6614743 (= res!2712443 call!579535)))

(declare-fun b!6614744 () Bool)

(assert (=> b!6614744 (= e!4001806 (= (head!13415 (tail!12500 s!2326)) (c!1218988 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326)))))))

(declare-fun b!6614745 () Bool)

(declare-fun res!2712446 () Bool)

(assert (=> b!6614745 (=> res!2712446 e!4001803)))

(assert (=> b!6614745 (= res!2712446 (not (isEmpty!37921 (tail!12500 (tail!12500 s!2326)))))))

(declare-fun b!6614746 () Bool)

(assert (=> b!6614746 (= e!4001808 e!4001804)))

(declare-fun c!1219285 () Bool)

(assert (=> b!6614746 (= c!1219285 ((_ is EmptyLang!16487) (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326))))))

(assert (= (and d!2073533 c!1219284) b!6614736))

(assert (= (and d!2073533 (not c!1219284)) b!6614738))

(assert (= (and d!2073533 c!1219283) b!6614741))

(assert (= (and d!2073533 (not c!1219283)) b!6614746))

(assert (= (and b!6614746 c!1219285) b!6614740))

(assert (= (and b!6614746 (not c!1219285)) b!6614742))

(assert (= (and b!6614742 (not res!2712444)) b!6614734))

(assert (= (and b!6614734 res!2712447) b!6614735))

(assert (= (and b!6614735 res!2712445) b!6614733))

(assert (= (and b!6614733 res!2712450) b!6614744))

(assert (= (and b!6614734 (not res!2712449)) b!6614739))

(assert (= (and b!6614739 res!2712448) b!6614743))

(assert (= (and b!6614743 (not res!2712443)) b!6614745))

(assert (= (and b!6614745 (not res!2712446)) b!6614737))

(assert (= (or b!6614741 b!6614735 b!6614743) bm!579530))

(assert (=> bm!579530 m!7387448))

(assert (=> bm!579530 m!7387454))

(assert (=> b!6614738 m!7387448))

(assert (=> b!6614738 m!7387728))

(assert (=> b!6614738 m!7387462))

(assert (=> b!6614738 m!7387728))

(declare-fun m!7387974 () Bool)

(assert (=> b!6614738 m!7387974))

(assert (=> b!6614738 m!7387448))

(assert (=> b!6614738 m!7387732))

(assert (=> b!6614738 m!7387974))

(assert (=> b!6614738 m!7387732))

(declare-fun m!7387976 () Bool)

(assert (=> b!6614738 m!7387976))

(assert (=> d!2073533 m!7387448))

(assert (=> d!2073533 m!7387454))

(assert (=> d!2073533 m!7387462))

(declare-fun m!7387978 () Bool)

(assert (=> d!2073533 m!7387978))

(assert (=> b!6614737 m!7387448))

(assert (=> b!6614737 m!7387728))

(assert (=> b!6614736 m!7387462))

(declare-fun m!7387980 () Bool)

(assert (=> b!6614736 m!7387980))

(assert (=> b!6614733 m!7387448))

(assert (=> b!6614733 m!7387732))

(assert (=> b!6614733 m!7387732))

(assert (=> b!6614733 m!7387740))

(assert (=> b!6614744 m!7387448))

(assert (=> b!6614744 m!7387728))

(assert (=> b!6614745 m!7387448))

(assert (=> b!6614745 m!7387732))

(assert (=> b!6614745 m!7387732))

(assert (=> b!6614745 m!7387740))

(assert (=> b!6614045 d!2073533))

(declare-fun b!6614747 () Bool)

(declare-fun e!4001809 () Regex!16487)

(assert (=> b!6614747 (= e!4001809 EmptyLang!16487)))

(declare-fun call!579537 () Regex!16487)

(declare-fun b!6614748 () Bool)

(declare-fun e!4001810 () Regex!16487)

(declare-fun call!579538 () Regex!16487)

(assert (=> b!6614748 (= e!4001810 (Union!16487 (Concat!25332 call!579538 (regTwo!33486 (regTwo!33486 r!7292))) call!579537))))

(declare-fun b!6614749 () Bool)

(declare-fun e!4001811 () Regex!16487)

(declare-fun call!579539 () Regex!16487)

(assert (=> b!6614749 (= e!4001811 (Concat!25332 call!579539 (regTwo!33486 r!7292)))))

(declare-fun b!6614750 () Bool)

(declare-fun e!4001812 () Regex!16487)

(declare-fun call!579536 () Regex!16487)

(assert (=> b!6614750 (= e!4001812 (Union!16487 call!579538 call!579536))))

(declare-fun bm!579531 () Bool)

(assert (=> bm!579531 (= call!579539 call!579536)))

(declare-fun b!6614752 () Bool)

(declare-fun e!4001813 () Regex!16487)

(assert (=> b!6614752 (= e!4001813 (ite (= (head!13415 s!2326) (c!1218988 (regTwo!33486 r!7292))) EmptyExpr!16487 EmptyLang!16487))))

(declare-fun b!6614753 () Bool)

(assert (=> b!6614753 (= e!4001809 e!4001813)))

(declare-fun c!1219290 () Bool)

(assert (=> b!6614753 (= c!1219290 ((_ is ElementMatch!16487) (regTwo!33486 r!7292)))))

(declare-fun b!6614754 () Bool)

(assert (=> b!6614754 (= e!4001812 e!4001811)))

(declare-fun c!1219288 () Bool)

(assert (=> b!6614754 (= c!1219288 ((_ is Star!16487) (regTwo!33486 r!7292)))))

(declare-fun b!6614755 () Bool)

(declare-fun c!1219287 () Bool)

(assert (=> b!6614755 (= c!1219287 (nullable!6480 (regOne!33486 (regTwo!33486 r!7292))))))

(assert (=> b!6614755 (= e!4001811 e!4001810)))

(declare-fun b!6614751 () Bool)

(assert (=> b!6614751 (= e!4001810 (Union!16487 (Concat!25332 call!579537 (regTwo!33486 (regTwo!33486 r!7292))) EmptyLang!16487))))

(declare-fun d!2073535 () Bool)

(declare-fun lt!2417328 () Regex!16487)

(assert (=> d!2073535 (validRegex!8223 lt!2417328)))

(assert (=> d!2073535 (= lt!2417328 e!4001809)))

(declare-fun c!1219286 () Bool)

(assert (=> d!2073535 (= c!1219286 (or ((_ is EmptyExpr!16487) (regTwo!33486 r!7292)) ((_ is EmptyLang!16487) (regTwo!33486 r!7292))))))

(assert (=> d!2073535 (validRegex!8223 (regTwo!33486 r!7292))))

(assert (=> d!2073535 (= (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 s!2326)) lt!2417328)))

(declare-fun bm!579532 () Bool)

(assert (=> bm!579532 (= call!579537 call!579539)))

(declare-fun c!1219289 () Bool)

(declare-fun bm!579533 () Bool)

(assert (=> bm!579533 (= call!579536 (derivativeStep!5167 (ite c!1219289 (regTwo!33487 (regTwo!33486 r!7292)) (ite c!1219288 (reg!16816 (regTwo!33486 r!7292)) (ite c!1219287 (regTwo!33486 (regTwo!33486 r!7292)) (regOne!33486 (regTwo!33486 r!7292))))) (head!13415 s!2326)))))

(declare-fun bm!579534 () Bool)

(assert (=> bm!579534 (= call!579538 (derivativeStep!5167 (ite c!1219289 (regOne!33487 (regTwo!33486 r!7292)) (regOne!33486 (regTwo!33486 r!7292))) (head!13415 s!2326)))))

(declare-fun b!6614756 () Bool)

(assert (=> b!6614756 (= c!1219289 ((_ is Union!16487) (regTwo!33486 r!7292)))))

(assert (=> b!6614756 (= e!4001813 e!4001812)))

(assert (= (and d!2073535 c!1219286) b!6614747))

(assert (= (and d!2073535 (not c!1219286)) b!6614753))

(assert (= (and b!6614753 c!1219290) b!6614752))

(assert (= (and b!6614753 (not c!1219290)) b!6614756))

(assert (= (and b!6614756 c!1219289) b!6614750))

(assert (= (and b!6614756 (not c!1219289)) b!6614754))

(assert (= (and b!6614754 c!1219288) b!6614749))

(assert (= (and b!6614754 (not c!1219288)) b!6614755))

(assert (= (and b!6614755 c!1219287) b!6614748))

(assert (= (and b!6614755 (not c!1219287)) b!6614751))

(assert (= (or b!6614748 b!6614751) bm!579532))

(assert (= (or b!6614749 bm!579532) bm!579531))

(assert (= (or b!6614750 bm!579531) bm!579533))

(assert (= (or b!6614750 b!6614748) bm!579534))

(declare-fun m!7387982 () Bool)

(assert (=> b!6614755 m!7387982))

(declare-fun m!7387984 () Bool)

(assert (=> d!2073535 m!7387984))

(assert (=> d!2073535 m!7387466))

(assert (=> bm!579533 m!7387444))

(declare-fun m!7387986 () Bool)

(assert (=> bm!579533 m!7387986))

(assert (=> bm!579534 m!7387444))

(declare-fun m!7387988 () Bool)

(assert (=> bm!579534 m!7387988))

(assert (=> b!6614045 d!2073535))

(assert (=> b!6614045 d!2073441))

(assert (=> b!6614045 d!2073443))

(declare-fun d!2073537 () Bool)

(assert (=> d!2073537 (= (isEmpty!37921 (t!379416 s!2326)) ((_ is Nil!65638) (t!379416 s!2326)))))

(assert (=> d!2073307 d!2073537))

(declare-fun b!6614757 () Bool)

(declare-fun e!4001819 () Bool)

(declare-fun e!4001815 () Bool)

(assert (=> b!6614757 (= e!4001819 e!4001815)))

(declare-fun res!2712451 () Bool)

(assert (=> b!6614757 (=> (not res!2712451) (not e!4001815))))

(declare-fun call!579540 () Bool)

(assert (=> b!6614757 (= res!2712451 call!579540)))

(declare-fun b!6614758 () Bool)

(declare-fun e!4001817 () Bool)

(declare-fun e!4001816 () Bool)

(assert (=> b!6614758 (= e!4001817 e!4001816)))

(declare-fun c!1219292 () Bool)

(assert (=> b!6614758 (= c!1219292 ((_ is Union!16487) lt!2417226))))

(declare-fun bm!579535 () Bool)

(declare-fun call!579541 () Bool)

(declare-fun call!579542 () Bool)

(assert (=> bm!579535 (= call!579541 call!579542)))

(declare-fun b!6614759 () Bool)

(declare-fun e!4001820 () Bool)

(assert (=> b!6614759 (= e!4001817 e!4001820)))

(declare-fun res!2712455 () Bool)

(assert (=> b!6614759 (= res!2712455 (not (nullable!6480 (reg!16816 lt!2417226))))))

(assert (=> b!6614759 (=> (not res!2712455) (not e!4001820))))

(declare-fun b!6614760 () Bool)

(declare-fun e!4001818 () Bool)

(assert (=> b!6614760 (= e!4001818 e!4001817)))

(declare-fun c!1219291 () Bool)

(assert (=> b!6614760 (= c!1219291 ((_ is Star!16487) lt!2417226))))

(declare-fun bm!579536 () Bool)

(assert (=> bm!579536 (= call!579542 (validRegex!8223 (ite c!1219291 (reg!16816 lt!2417226) (ite c!1219292 (regTwo!33487 lt!2417226) (regTwo!33486 lt!2417226)))))))

(declare-fun b!6614761 () Bool)

(declare-fun e!4001814 () Bool)

(assert (=> b!6614761 (= e!4001814 call!579541)))

(declare-fun b!6614762 () Bool)

(declare-fun res!2712452 () Bool)

(assert (=> b!6614762 (=> (not res!2712452) (not e!4001814))))

(assert (=> b!6614762 (= res!2712452 call!579540)))

(assert (=> b!6614762 (= e!4001816 e!4001814)))

(declare-fun bm!579537 () Bool)

(assert (=> bm!579537 (= call!579540 (validRegex!8223 (ite c!1219292 (regOne!33487 lt!2417226) (regOne!33486 lt!2417226))))))

(declare-fun b!6614764 () Bool)

(declare-fun res!2712454 () Bool)

(assert (=> b!6614764 (=> res!2712454 e!4001819)))

(assert (=> b!6614764 (= res!2712454 (not ((_ is Concat!25332) lt!2417226)))))

(assert (=> b!6614764 (= e!4001816 e!4001819)))

(declare-fun b!6614765 () Bool)

(assert (=> b!6614765 (= e!4001815 call!579541)))

(declare-fun b!6614763 () Bool)

(assert (=> b!6614763 (= e!4001820 call!579542)))

(declare-fun d!2073539 () Bool)

(declare-fun res!2712453 () Bool)

(assert (=> d!2073539 (=> res!2712453 e!4001818)))

(assert (=> d!2073539 (= res!2712453 ((_ is ElementMatch!16487) lt!2417226))))

(assert (=> d!2073539 (= (validRegex!8223 lt!2417226) e!4001818)))

(assert (= (and d!2073539 (not res!2712453)) b!6614760))

(assert (= (and b!6614760 c!1219291) b!6614759))

(assert (= (and b!6614760 (not c!1219291)) b!6614758))

(assert (= (and b!6614759 res!2712455) b!6614763))

(assert (= (and b!6614758 c!1219292) b!6614762))

(assert (= (and b!6614758 (not c!1219292)) b!6614764))

(assert (= (and b!6614762 res!2712452) b!6614761))

(assert (= (and b!6614764 (not res!2712454)) b!6614757))

(assert (= (and b!6614757 res!2712451) b!6614765))

(assert (= (or b!6614761 b!6614765) bm!579535))

(assert (= (or b!6614762 b!6614757) bm!579537))

(assert (= (or b!6614763 bm!579535) bm!579536))

(declare-fun m!7387990 () Bool)

(assert (=> b!6614759 m!7387990))

(declare-fun m!7387992 () Bool)

(assert (=> bm!579536 m!7387992))

(declare-fun m!7387994 () Bool)

(assert (=> bm!579537 m!7387994))

(assert (=> d!2073301 d!2073539))

(declare-fun d!2073541 () Bool)

(declare-fun res!2712456 () Bool)

(declare-fun e!4001821 () Bool)

(assert (=> d!2073541 (=> res!2712456 e!4001821)))

(assert (=> d!2073541 (= res!2712456 ((_ is Nil!65636) (exprs!6371 (h!72085 zl!343))))))

(assert (=> d!2073541 (= (forall!15682 (exprs!6371 (h!72085 zl!343)) lambda!369431) e!4001821)))

(declare-fun b!6614766 () Bool)

(declare-fun e!4001822 () Bool)

(assert (=> b!6614766 (= e!4001821 e!4001822)))

(declare-fun res!2712457 () Bool)

(assert (=> b!6614766 (=> (not res!2712457) (not e!4001822))))

(assert (=> b!6614766 (= res!2712457 (dynLambda!26139 lambda!369431 (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614767 () Bool)

(assert (=> b!6614767 (= e!4001822 (forall!15682 (t!379414 (exprs!6371 (h!72085 zl!343))) lambda!369431))))

(assert (= (and d!2073541 (not res!2712456)) b!6614766))

(assert (= (and b!6614766 res!2712457) b!6614767))

(declare-fun b_lambda!250177 () Bool)

(assert (=> (not b_lambda!250177) (not b!6614766)))

(declare-fun m!7387996 () Bool)

(assert (=> b!6614766 m!7387996))

(declare-fun m!7387998 () Bool)

(assert (=> b!6614767 m!7387998))

(assert (=> d!2073301 d!2073541))

(declare-fun bs!1695706 () Bool)

(declare-fun d!2073543 () Bool)

(assert (= bs!1695706 (and d!2073543 d!2073467)))

(declare-fun lambda!369498 () Int)

(assert (=> bs!1695706 (= lambda!369498 lambda!369486)))

(declare-fun bs!1695707 () Bool)

(assert (= bs!1695707 (and d!2073543 d!2073301)))

(assert (=> bs!1695707 (= lambda!369498 lambda!369431)))

(declare-fun bs!1695708 () Bool)

(assert (= bs!1695708 (and d!2073543 d!2073289)))

(assert (=> bs!1695708 (= lambda!369498 lambda!369422)))

(declare-fun bs!1695709 () Bool)

(assert (= bs!1695709 (and d!2073543 d!2073359)))

(assert (=> bs!1695709 (= lambda!369498 lambda!369458)))

(declare-fun bs!1695710 () Bool)

(assert (= bs!1695710 (and d!2073543 d!2073263)))

(assert (=> bs!1695710 (= lambda!369498 lambda!369418)))

(declare-fun bs!1695711 () Bool)

(assert (= bs!1695711 (and d!2073543 d!2073265)))

(assert (=> bs!1695711 (= lambda!369498 lambda!369419)))

(declare-fun bs!1695712 () Bool)

(assert (= bs!1695712 (and d!2073543 d!2073297)))

(assert (=> bs!1695712 (= lambda!369498 lambda!369428)))

(declare-fun e!4001823 () Bool)

(assert (=> d!2073543 e!4001823))

(declare-fun res!2712458 () Bool)

(assert (=> d!2073543 (=> (not res!2712458) (not e!4001823))))

(declare-fun lt!2417329 () Regex!16487)

(assert (=> d!2073543 (= res!2712458 (validRegex!8223 lt!2417329))))

(declare-fun e!4001825 () Regex!16487)

(assert (=> d!2073543 (= lt!2417329 e!4001825)))

(declare-fun c!1219294 () Bool)

(declare-fun e!4001824 () Bool)

(assert (=> d!2073543 (= c!1219294 e!4001824)))

(declare-fun res!2712459 () Bool)

(assert (=> d!2073543 (=> (not res!2712459) (not e!4001824))))

(assert (=> d!2073543 (= res!2712459 ((_ is Cons!65636) (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(assert (=> d!2073543 (forall!15682 (t!379414 (exprs!6371 (h!72085 zl!343))) lambda!369498)))

(assert (=> d!2073543 (= (generalisedConcat!2084 (t!379414 (exprs!6371 (h!72085 zl!343)))) lt!2417329)))

(declare-fun b!6614768 () Bool)

(declare-fun e!4001828 () Bool)

(assert (=> b!6614768 (= e!4001828 (= lt!2417329 (head!13417 (t!379414 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun b!6614769 () Bool)

(declare-fun e!4001827 () Regex!16487)

(assert (=> b!6614769 (= e!4001827 EmptyExpr!16487)))

(declare-fun b!6614770 () Bool)

(assert (=> b!6614770 (= e!4001824 (isEmpty!37920 (t!379414 (t!379414 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun b!6614771 () Bool)

(assert (=> b!6614771 (= e!4001828 (isConcat!1383 lt!2417329))))

(declare-fun b!6614772 () Bool)

(assert (=> b!6614772 (= e!4001825 e!4001827)))

(declare-fun c!1219295 () Bool)

(assert (=> b!6614772 (= c!1219295 ((_ is Cons!65636) (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614773 () Bool)

(declare-fun e!4001826 () Bool)

(assert (=> b!6614773 (= e!4001826 (isEmptyExpr!1860 lt!2417329))))

(declare-fun b!6614774 () Bool)

(assert (=> b!6614774 (= e!4001826 e!4001828)))

(declare-fun c!1219296 () Bool)

(assert (=> b!6614774 (= c!1219296 (isEmpty!37920 (tail!12502 (t!379414 (exprs!6371 (h!72085 zl!343))))))))

(declare-fun b!6614775 () Bool)

(assert (=> b!6614775 (= e!4001827 (Concat!25332 (h!72084 (t!379414 (exprs!6371 (h!72085 zl!343)))) (generalisedConcat!2084 (t!379414 (t!379414 (exprs!6371 (h!72085 zl!343)))))))))

(declare-fun b!6614776 () Bool)

(assert (=> b!6614776 (= e!4001825 (h!72084 (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun b!6614777 () Bool)

(assert (=> b!6614777 (= e!4001823 e!4001826)))

(declare-fun c!1219293 () Bool)

(assert (=> b!6614777 (= c!1219293 (isEmpty!37920 (t!379414 (exprs!6371 (h!72085 zl!343)))))))

(assert (= (and d!2073543 res!2712459) b!6614770))

(assert (= (and d!2073543 c!1219294) b!6614776))

(assert (= (and d!2073543 (not c!1219294)) b!6614772))

(assert (= (and b!6614772 c!1219295) b!6614775))

(assert (= (and b!6614772 (not c!1219295)) b!6614769))

(assert (= (and d!2073543 res!2712458) b!6614777))

(assert (= (and b!6614777 c!1219293) b!6614773))

(assert (= (and b!6614777 (not c!1219293)) b!6614774))

(assert (= (and b!6614774 c!1219296) b!6614768))

(assert (= (and b!6614774 (not c!1219296)) b!6614771))

(declare-fun m!7388000 () Bool)

(assert (=> d!2073543 m!7388000))

(declare-fun m!7388002 () Bool)

(assert (=> d!2073543 m!7388002))

(declare-fun m!7388004 () Bool)

(assert (=> b!6614775 m!7388004))

(declare-fun m!7388006 () Bool)

(assert (=> b!6614773 m!7388006))

(declare-fun m!7388008 () Bool)

(assert (=> b!6614771 m!7388008))

(declare-fun m!7388010 () Bool)

(assert (=> b!6614768 m!7388010))

(declare-fun m!7388012 () Bool)

(assert (=> b!6614770 m!7388012))

(assert (=> b!6614777 m!7387222))

(declare-fun m!7388014 () Bool)

(assert (=> b!6614774 m!7388014))

(assert (=> b!6614774 m!7388014))

(declare-fun m!7388016 () Bool)

(assert (=> b!6614774 m!7388016))

(assert (=> b!6613831 d!2073543))

(declare-fun d!2073545 () Bool)

(assert (=> d!2073545 (= (isUnion!1299 lt!2417217) ((_ is Union!16487) lt!2417217))))

(assert (=> b!6613766 d!2073545))

(assert (=> d!2073386 d!2073375))

(assert (=> d!2073386 d!2073517))

(assert (=> d!2073386 d!2073393))

(declare-fun d!2073547 () Bool)

(assert (=> d!2073547 (= (Exists!3557 lambda!369466) (choose!49425 lambda!369466))))

(declare-fun bs!1695713 () Bool)

(assert (= bs!1695713 d!2073547))

(declare-fun m!7388018 () Bool)

(assert (=> bs!1695713 m!7388018))

(assert (=> d!2073386 d!2073547))

(declare-fun bs!1695714 () Bool)

(declare-fun d!2073549 () Bool)

(assert (= bs!1695714 (and d!2073549 b!6614603)))

(declare-fun lambda!369501 () Int)

(assert (=> bs!1695714 (not (= lambda!369501 lambda!369488))))

(declare-fun bs!1695715 () Bool)

(assert (= bs!1695715 (and d!2073549 b!6614097)))

(assert (=> bs!1695715 (not (= lambda!369501 lambda!369456))))

(declare-fun bs!1695716 () Bool)

(assert (= bs!1695716 (and d!2073549 b!6614614)))

(assert (=> bs!1695716 (not (= lambda!369501 lambda!369490))))

(declare-fun bs!1695717 () Bool)

(assert (= bs!1695717 (and d!2073549 b!6614606)))

(assert (=> bs!1695717 (not (= lambda!369501 lambda!369487))))

(declare-fun bs!1695718 () Bool)

(assert (= bs!1695718 (and d!2073549 d!2073391)))

(assert (=> bs!1695718 (not (= lambda!369501 lambda!369473))))

(declare-fun bs!1695719 () Bool)

(assert (= bs!1695719 (and d!2073549 b!6614009)))

(assert (=> bs!1695719 (not (= lambda!369501 lambda!369449))))

(declare-fun bs!1695720 () Bool)

(assert (= bs!1695720 (and d!2073549 b!6614669)))

(assert (=> bs!1695720 (not (= lambda!369501 lambda!369495))))

(declare-fun bs!1695721 () Bool)

(assert (= bs!1695721 (and d!2073549 b!6613656)))

(assert (=> bs!1695721 (= lambda!369501 lambda!369413)))

(assert (=> bs!1695718 (= lambda!369501 lambda!369471)))

(assert (=> bs!1695721 (not (= lambda!369501 lambda!369414))))

(declare-fun bs!1695722 () Bool)

(assert (= bs!1695722 (and d!2073549 b!6613889)))

(assert (=> bs!1695722 (not (= lambda!369501 lambda!369443))))

(declare-fun bs!1695723 () Bool)

(assert (= bs!1695723 (and d!2073549 b!6614012)))

(assert (=> bs!1695723 (not (= lambda!369501 lambda!369446))))

(declare-fun bs!1695724 () Bool)

(assert (= bs!1695724 (and d!2073549 b!6614672)))

(assert (=> bs!1695724 (not (= lambda!369501 lambda!369494))))

(declare-fun bs!1695725 () Bool)

(assert (= bs!1695725 (and d!2073549 b!6613892)))

(assert (=> bs!1695725 (not (= lambda!369501 lambda!369442))))

(declare-fun bs!1695726 () Bool)

(assert (= bs!1695726 (and d!2073549 d!2073386)))

(assert (=> bs!1695726 (= lambda!369501 lambda!369466)))

(declare-fun bs!1695727 () Bool)

(assert (= bs!1695727 (and d!2073549 b!6614617)))

(assert (=> bs!1695727 (not (= lambda!369501 lambda!369489))))

(declare-fun bs!1695728 () Bool)

(assert (= bs!1695728 (and d!2073549 b!6614100)))

(assert (=> bs!1695728 (not (= lambda!369501 lambda!369455))))

(assert (=> d!2073549 true))

(assert (=> d!2073549 true))

(assert (=> d!2073549 true))

(assert (=> d!2073549 (= (isDefined!13081 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326)) (Exists!3557 lambda!369501))))

(assert (=> d!2073549 true))

(declare-fun _$89!2818 () Unit!159303)

(assert (=> d!2073549 (= (choose!49427 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326) _$89!2818)))

(declare-fun bs!1695729 () Bool)

(assert (= bs!1695729 d!2073549))

(assert (=> bs!1695729 m!7387258))

(assert (=> bs!1695729 m!7387258))

(assert (=> bs!1695729 m!7387260))

(declare-fun m!7388020 () Bool)

(assert (=> bs!1695729 m!7388020))

(assert (=> d!2073386 d!2073549))

(declare-fun d!2073551 () Bool)

(assert (=> d!2073551 (= (isEmpty!37924 (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326)) (not ((_ is Some!16377) (findConcatSeparation!2792 (regOne!33486 r!7292) (regTwo!33486 r!7292) Nil!65638 s!2326 s!2326))))))

(assert (=> d!2073393 d!2073551))

(declare-fun d!2073553 () Bool)

(assert (=> d!2073553 (= (isConcat!1383 lt!2417226) ((_ is Concat!25332) lt!2417226))))

(assert (=> b!6613827 d!2073553))

(assert (=> d!2073283 d!2073287))

(assert (=> d!2073283 d!2073285))

(declare-fun e!4001833 () Bool)

(declare-fun d!2073555 () Bool)

(assert (=> d!2073555 (= (matchZipper!2499 ((_ map or) lt!2417194 lt!2417206) (t!379416 s!2326)) e!4001833)))

(declare-fun res!2712466 () Bool)

(assert (=> d!2073555 (=> res!2712466 e!4001833)))

(assert (=> d!2073555 (= res!2712466 (matchZipper!2499 lt!2417194 (t!379416 s!2326)))))

(assert (=> d!2073555 true))

(declare-fun _$48!2327 () Unit!159303)

(assert (=> d!2073555 (= (choose!49417 lt!2417194 lt!2417206 (t!379416 s!2326)) _$48!2327)))

(declare-fun b!6614784 () Bool)

(assert (=> b!6614784 (= e!4001833 (matchZipper!2499 lt!2417206 (t!379416 s!2326)))))

(assert (= (and d!2073555 (not res!2712466)) b!6614784))

(assert (=> d!2073555 m!7387210))

(assert (=> d!2073555 m!7387208))

(assert (=> b!6614784 m!7387212))

(assert (=> d!2073283 d!2073555))

(assert (=> d!2073319 d!2073455))

(assert (=> d!2073319 d!2073517))

(assert (=> d!2073285 d!2073537))

(declare-fun bs!1695730 () Bool)

(declare-fun d!2073557 () Bool)

(assert (= bs!1695730 (and d!2073557 d!2073467)))

(declare-fun lambda!369502 () Int)

(assert (=> bs!1695730 (= lambda!369502 lambda!369486)))

(declare-fun bs!1695731 () Bool)

(assert (= bs!1695731 (and d!2073557 d!2073301)))

(assert (=> bs!1695731 (= lambda!369502 lambda!369431)))

(declare-fun bs!1695732 () Bool)

(assert (= bs!1695732 (and d!2073557 d!2073289)))

(assert (=> bs!1695732 (= lambda!369502 lambda!369422)))

(declare-fun bs!1695733 () Bool)

(assert (= bs!1695733 (and d!2073557 d!2073359)))

(assert (=> bs!1695733 (= lambda!369502 lambda!369458)))

(declare-fun bs!1695734 () Bool)

(assert (= bs!1695734 (and d!2073557 d!2073263)))

(assert (=> bs!1695734 (= lambda!369502 lambda!369418)))

(declare-fun bs!1695735 () Bool)

(assert (= bs!1695735 (and d!2073557 d!2073543)))

(assert (=> bs!1695735 (= lambda!369502 lambda!369498)))

(declare-fun bs!1695736 () Bool)

(assert (= bs!1695736 (and d!2073557 d!2073265)))

(assert (=> bs!1695736 (= lambda!369502 lambda!369419)))

(declare-fun bs!1695737 () Bool)

(assert (= bs!1695737 (and d!2073557 d!2073297)))

(assert (=> bs!1695737 (= lambda!369502 lambda!369428)))

(assert (=> d!2073557 (= (inv!84464 (h!72085 (t!379415 zl!343))) (forall!15682 (exprs!6371 (h!72085 (t!379415 zl!343))) lambda!369502))))

(declare-fun bs!1695738 () Bool)

(assert (= bs!1695738 d!2073557))

(declare-fun m!7388022 () Bool)

(assert (=> bs!1695738 m!7388022))

(assert (=> b!6614273 d!2073557))

(declare-fun b!6614785 () Bool)

(declare-fun e!4001839 () Bool)

(declare-fun e!4001835 () Bool)

(assert (=> b!6614785 (= e!4001839 e!4001835)))

(declare-fun res!2712467 () Bool)

(assert (=> b!6614785 (=> (not res!2712467) (not e!4001835))))

(declare-fun call!579543 () Bool)

(assert (=> b!6614785 (= res!2712467 call!579543)))

(declare-fun b!6614786 () Bool)

(declare-fun e!4001837 () Bool)

(declare-fun e!4001836 () Bool)

(assert (=> b!6614786 (= e!4001837 e!4001836)))

(declare-fun c!1219298 () Bool)

(assert (=> b!6614786 (= c!1219298 ((_ is Union!16487) lt!2417217))))

(declare-fun bm!579538 () Bool)

(declare-fun call!579544 () Bool)

(declare-fun call!579545 () Bool)

(assert (=> bm!579538 (= call!579544 call!579545)))

(declare-fun b!6614787 () Bool)

(declare-fun e!4001840 () Bool)

(assert (=> b!6614787 (= e!4001837 e!4001840)))

(declare-fun res!2712471 () Bool)

(assert (=> b!6614787 (= res!2712471 (not (nullable!6480 (reg!16816 lt!2417217))))))

(assert (=> b!6614787 (=> (not res!2712471) (not e!4001840))))

(declare-fun b!6614788 () Bool)

(declare-fun e!4001838 () Bool)

(assert (=> b!6614788 (= e!4001838 e!4001837)))

(declare-fun c!1219297 () Bool)

(assert (=> b!6614788 (= c!1219297 ((_ is Star!16487) lt!2417217))))

(declare-fun bm!579539 () Bool)

(assert (=> bm!579539 (= call!579545 (validRegex!8223 (ite c!1219297 (reg!16816 lt!2417217) (ite c!1219298 (regTwo!33487 lt!2417217) (regTwo!33486 lt!2417217)))))))

(declare-fun b!6614789 () Bool)

(declare-fun e!4001834 () Bool)

(assert (=> b!6614789 (= e!4001834 call!579544)))

(declare-fun b!6614790 () Bool)

(declare-fun res!2712468 () Bool)

(assert (=> b!6614790 (=> (not res!2712468) (not e!4001834))))

(assert (=> b!6614790 (= res!2712468 call!579543)))

(assert (=> b!6614790 (= e!4001836 e!4001834)))

(declare-fun bm!579540 () Bool)

(assert (=> bm!579540 (= call!579543 (validRegex!8223 (ite c!1219298 (regOne!33487 lt!2417217) (regOne!33486 lt!2417217))))))

(declare-fun b!6614792 () Bool)

(declare-fun res!2712470 () Bool)

(assert (=> b!6614792 (=> res!2712470 e!4001839)))

(assert (=> b!6614792 (= res!2712470 (not ((_ is Concat!25332) lt!2417217)))))

(assert (=> b!6614792 (= e!4001836 e!4001839)))

(declare-fun b!6614793 () Bool)

(assert (=> b!6614793 (= e!4001835 call!579544)))

(declare-fun b!6614791 () Bool)

(assert (=> b!6614791 (= e!4001840 call!579545)))

(declare-fun d!2073559 () Bool)

(declare-fun res!2712469 () Bool)

(assert (=> d!2073559 (=> res!2712469 e!4001838)))

(assert (=> d!2073559 (= res!2712469 ((_ is ElementMatch!16487) lt!2417217))))

(assert (=> d!2073559 (= (validRegex!8223 lt!2417217) e!4001838)))

(assert (= (and d!2073559 (not res!2712469)) b!6614788))

(assert (= (and b!6614788 c!1219297) b!6614787))

(assert (= (and b!6614788 (not c!1219297)) b!6614786))

(assert (= (and b!6614787 res!2712471) b!6614791))

(assert (= (and b!6614786 c!1219298) b!6614790))

(assert (= (and b!6614786 (not c!1219298)) b!6614792))

(assert (= (and b!6614790 res!2712468) b!6614789))

(assert (= (and b!6614792 (not res!2712470)) b!6614785))

(assert (= (and b!6614785 res!2712467) b!6614793))

(assert (= (or b!6614789 b!6614793) bm!579538))

(assert (= (or b!6614790 b!6614785) bm!579540))

(assert (= (or b!6614791 bm!579538) bm!579539))

(declare-fun m!7388024 () Bool)

(assert (=> b!6614787 m!7388024))

(declare-fun m!7388026 () Bool)

(assert (=> bm!579539 m!7388026))

(declare-fun m!7388028 () Bool)

(assert (=> bm!579540 m!7388028))

(assert (=> d!2073289 d!2073559))

(declare-fun d!2073561 () Bool)

(declare-fun res!2712472 () Bool)

(declare-fun e!4001841 () Bool)

(assert (=> d!2073561 (=> res!2712472 e!4001841)))

(assert (=> d!2073561 (= res!2712472 ((_ is Nil!65636) (unfocusZipperList!1908 zl!343)))))

(assert (=> d!2073561 (= (forall!15682 (unfocusZipperList!1908 zl!343) lambda!369422) e!4001841)))

(declare-fun b!6614794 () Bool)

(declare-fun e!4001842 () Bool)

(assert (=> b!6614794 (= e!4001841 e!4001842)))

(declare-fun res!2712473 () Bool)

(assert (=> b!6614794 (=> (not res!2712473) (not e!4001842))))

(assert (=> b!6614794 (= res!2712473 (dynLambda!26139 lambda!369422 (h!72084 (unfocusZipperList!1908 zl!343))))))

(declare-fun b!6614795 () Bool)

(assert (=> b!6614795 (= e!4001842 (forall!15682 (t!379414 (unfocusZipperList!1908 zl!343)) lambda!369422))))

(assert (= (and d!2073561 (not res!2712472)) b!6614794))

(assert (= (and b!6614794 res!2712473) b!6614795))

(declare-fun b_lambda!250179 () Bool)

(assert (=> (not b_lambda!250179) (not b!6614794)))

(declare-fun m!7388030 () Bool)

(assert (=> b!6614794 m!7388030))

(declare-fun m!7388032 () Bool)

(assert (=> b!6614795 m!7388032))

(assert (=> d!2073289 d!2073561))

(declare-fun b!6614796 () Bool)

(declare-fun e!4001845 () (InoxSet Context!11742))

(declare-fun call!579546 () (InoxSet Context!11742))

(declare-fun call!579550 () (InoxSet Context!11742))

(assert (=> b!6614796 (= e!4001845 ((_ map or) call!579546 call!579550))))

(declare-fun b!6614797 () Bool)

(declare-fun e!4001847 () (InoxSet Context!11742))

(declare-fun call!579548 () (InoxSet Context!11742))

(assert (=> b!6614797 (= e!4001847 call!579548)))

(declare-fun d!2073563 () Bool)

(declare-fun c!1219300 () Bool)

(assert (=> d!2073563 (= c!1219300 (and ((_ is ElementMatch!16487) (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))) (= (c!1218988 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))) (h!72086 s!2326))))))

(declare-fun e!4001843 () (InoxSet Context!11742))

(assert (=> d!2073563 (= (derivationStepZipperDown!1735 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343))))))) (ite (or c!1219003 c!1219001) lt!2417204 (Context!11743 call!579395)) (h!72086 s!2326)) e!4001843)))

(declare-fun b!6614798 () Bool)

(declare-fun c!1219301 () Bool)

(declare-fun e!4001846 () Bool)

(assert (=> b!6614798 (= c!1219301 e!4001846)))

(declare-fun res!2712474 () Bool)

(assert (=> b!6614798 (=> (not res!2712474) (not e!4001846))))

(assert (=> b!6614798 (= res!2712474 ((_ is Concat!25332) (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun e!4001848 () (InoxSet Context!11742))

(assert (=> b!6614798 (= e!4001845 e!4001848)))

(declare-fun b!6614799 () Bool)

(declare-fun call!579551 () (InoxSet Context!11742))

(assert (=> b!6614799 (= e!4001848 ((_ map or) call!579550 call!579551))))

(declare-fun bm!579541 () Bool)

(declare-fun c!1219302 () Bool)

(declare-fun call!579547 () List!65760)

(assert (=> bm!579541 (= call!579547 ($colon$colon!2323 (exprs!6371 (ite (or c!1219003 c!1219001) lt!2417204 (Context!11743 call!579395))) (ite (or c!1219301 c!1219302) (regTwo!33486 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))) (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343))))))))))))

(declare-fun c!1219299 () Bool)

(declare-fun b!6614800 () Bool)

(assert (=> b!6614800 (= c!1219299 ((_ is Star!16487) (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun e!4001844 () (InoxSet Context!11742))

(assert (=> b!6614800 (= e!4001847 e!4001844)))

(declare-fun bm!579542 () Bool)

(declare-fun c!1219303 () Bool)

(assert (=> bm!579542 (= call!579550 (derivationStepZipperDown!1735 (ite c!1219303 (regTwo!33487 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))) (regOne!33486 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343))))))))) (ite c!1219303 (ite (or c!1219003 c!1219001) lt!2417204 (Context!11743 call!579395)) (Context!11743 call!579547)) (h!72086 s!2326)))))

(declare-fun bm!579543 () Bool)

(assert (=> bm!579543 (= call!579551 call!579546)))

(declare-fun bm!579544 () Bool)

(declare-fun call!579549 () List!65760)

(assert (=> bm!579544 (= call!579549 call!579547)))

(declare-fun bm!579545 () Bool)

(assert (=> bm!579545 (= call!579548 call!579551)))

(declare-fun b!6614801 () Bool)

(assert (=> b!6614801 (= e!4001848 e!4001847)))

(assert (=> b!6614801 (= c!1219302 ((_ is Concat!25332) (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun b!6614802 () Bool)

(assert (=> b!6614802 (= e!4001843 e!4001845)))

(assert (=> b!6614802 (= c!1219303 ((_ is Union!16487) (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))))

(declare-fun b!6614803 () Bool)

(assert (=> b!6614803 (= e!4001846 (nullable!6480 (regOne!33486 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343))))))))))))

(declare-fun bm!579546 () Bool)

(assert (=> bm!579546 (= call!579546 (derivationStepZipperDown!1735 (ite c!1219303 (regOne!33487 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))) (ite c!1219301 (regTwo!33486 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))) (ite c!1219302 (regOne!33486 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343)))))))) (reg!16816 (ite c!1219003 (regOne!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219001 (regTwo!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (ite c!1219002 (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))) (reg!16816 (h!72084 (exprs!6371 (h!72085 zl!343))))))))))) (ite (or c!1219303 c!1219301) (ite (or c!1219003 c!1219001) lt!2417204 (Context!11743 call!579395)) (Context!11743 call!579549)) (h!72086 s!2326)))))

(declare-fun b!6614804 () Bool)

(assert (=> b!6614804 (= e!4001843 (store ((as const (Array Context!11742 Bool)) false) (ite (or c!1219003 c!1219001) lt!2417204 (Context!11743 call!579395)) true))))

(declare-fun b!6614805 () Bool)

(assert (=> b!6614805 (= e!4001844 call!579548)))

(declare-fun b!6614806 () Bool)

(assert (=> b!6614806 (= e!4001844 ((as const (Array Context!11742 Bool)) false))))

(assert (= (and d!2073563 c!1219300) b!6614804))

(assert (= (and d!2073563 (not c!1219300)) b!6614802))

(assert (= (and b!6614802 c!1219303) b!6614796))

(assert (= (and b!6614802 (not c!1219303)) b!6614798))

(assert (= (and b!6614798 res!2712474) b!6614803))

(assert (= (and b!6614798 c!1219301) b!6614799))

(assert (= (and b!6614798 (not c!1219301)) b!6614801))

(assert (= (and b!6614801 c!1219302) b!6614797))

(assert (= (and b!6614801 (not c!1219302)) b!6614800))

(assert (= (and b!6614800 c!1219299) b!6614805))

(assert (= (and b!6614800 (not c!1219299)) b!6614806))

(assert (= (or b!6614797 b!6614805) bm!579544))

(assert (= (or b!6614797 b!6614805) bm!579545))

(assert (= (or b!6614799 bm!579544) bm!579541))

(assert (= (or b!6614799 bm!579545) bm!579543))

(assert (= (or b!6614796 b!6614799) bm!579542))

(assert (= (or b!6614796 bm!579543) bm!579546))

(declare-fun m!7388034 () Bool)

(assert (=> b!6614804 m!7388034))

(declare-fun m!7388036 () Bool)

(assert (=> bm!579546 m!7388036))

(declare-fun m!7388038 () Bool)

(assert (=> b!6614803 m!7388038))

(declare-fun m!7388040 () Bool)

(assert (=> bm!579542 m!7388040))

(declare-fun m!7388042 () Bool)

(assert (=> bm!579541 m!7388042))

(assert (=> bm!579392 d!2073563))

(declare-fun d!2073565 () Bool)

(assert (=> d!2073565 (= (Exists!3557 (ite c!1219100 lambda!369446 lambda!369449)) (choose!49425 (ite c!1219100 lambda!369446 lambda!369449)))))

(declare-fun bs!1695739 () Bool)

(assert (= bs!1695739 d!2073565))

(declare-fun m!7388044 () Bool)

(assert (=> bs!1695739 m!7388044))

(assert (=> bm!579420 d!2073565))

(declare-fun d!2073567 () Bool)

(assert (=> d!2073567 (= (Exists!3557 (ite c!1219128 lambda!369455 lambda!369456)) (choose!49425 (ite c!1219128 lambda!369455 lambda!369456)))))

(declare-fun bs!1695740 () Bool)

(assert (= bs!1695740 d!2073567))

(declare-fun m!7388046 () Bool)

(assert (=> bs!1695740 m!7388046))

(assert (=> bm!579432 d!2073567))

(assert (=> d!2073317 d!2073319))

(assert (=> d!2073317 d!2073311))

(declare-fun d!2073569 () Bool)

(assert (=> d!2073569 (= (matchR!8670 (regOne!33486 r!7292) s!2326) (matchRSpec!3588 (regOne!33486 r!7292) s!2326))))

(assert (=> d!2073569 true))

(declare-fun _$88!5296 () Unit!159303)

(assert (=> d!2073569 (= (choose!49419 (regOne!33486 r!7292) s!2326) _$88!5296)))

(declare-fun bs!1695741 () Bool)

(assert (= bs!1695741 d!2073569))

(assert (=> bs!1695741 m!7387236))

(assert (=> bs!1695741 m!7387238))

(assert (=> d!2073317 d!2073569))

(assert (=> d!2073317 d!2073517))

(declare-fun d!2073571 () Bool)

(assert (=> d!2073571 (= (nullable!6480 r!7292) (nullableFct!2401 r!7292))))

(declare-fun bs!1695742 () Bool)

(assert (= bs!1695742 d!2073571))

(declare-fun m!7388048 () Bool)

(assert (=> bs!1695742 m!7388048))

(assert (=> b!6614118 d!2073571))

(assert (=> b!6613731 d!2073307))

(declare-fun b!6614807 () Bool)

(declare-fun e!4001854 () Bool)

(declare-fun e!4001850 () Bool)

(assert (=> b!6614807 (= e!4001854 e!4001850)))

(declare-fun res!2712475 () Bool)

(assert (=> b!6614807 (=> (not res!2712475) (not e!4001850))))

(declare-fun call!579552 () Bool)

(assert (=> b!6614807 (= res!2712475 call!579552)))

(declare-fun b!6614808 () Bool)

(declare-fun e!4001852 () Bool)

(declare-fun e!4001851 () Bool)

(assert (=> b!6614808 (= e!4001852 e!4001851)))

(declare-fun c!1219305 () Bool)

(assert (=> b!6614808 (= c!1219305 ((_ is Union!16487) (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))))))

(declare-fun bm!579547 () Bool)

(declare-fun call!579553 () Bool)

(declare-fun call!579554 () Bool)

(assert (=> bm!579547 (= call!579553 call!579554)))

(declare-fun b!6614809 () Bool)

(declare-fun e!4001855 () Bool)

(assert (=> b!6614809 (= e!4001852 e!4001855)))

(declare-fun res!2712479 () Bool)

(assert (=> b!6614809 (= res!2712479 (not (nullable!6480 (reg!16816 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))))))))

(assert (=> b!6614809 (=> (not res!2712479) (not e!4001855))))

(declare-fun b!6614810 () Bool)

(declare-fun e!4001853 () Bool)

(assert (=> b!6614810 (= e!4001853 e!4001852)))

(declare-fun c!1219304 () Bool)

(assert (=> b!6614810 (= c!1219304 ((_ is Star!16487) (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))))))

(declare-fun bm!579548 () Bool)

(assert (=> bm!579548 (= call!579554 (validRegex!8223 (ite c!1219304 (reg!16816 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))) (ite c!1219305 (regTwo!33487 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))) (regTwo!33486 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292)))))))))

(declare-fun b!6614811 () Bool)

(declare-fun e!4001849 () Bool)

(assert (=> b!6614811 (= e!4001849 call!579553)))

(declare-fun b!6614812 () Bool)

(declare-fun res!2712476 () Bool)

(assert (=> b!6614812 (=> (not res!2712476) (not e!4001849))))

(assert (=> b!6614812 (= res!2712476 call!579552)))

(assert (=> b!6614812 (= e!4001851 e!4001849)))

(declare-fun bm!579549 () Bool)

(assert (=> bm!579549 (= call!579552 (validRegex!8223 (ite c!1219305 (regOne!33487 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))) (regOne!33486 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))))))))

(declare-fun b!6614814 () Bool)

(declare-fun res!2712478 () Bool)

(assert (=> b!6614814 (=> res!2712478 e!4001854)))

(assert (=> b!6614814 (= res!2712478 (not ((_ is Concat!25332) (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292)))))))

(assert (=> b!6614814 (= e!4001851 e!4001854)))

(declare-fun b!6614815 () Bool)

(assert (=> b!6614815 (= e!4001850 call!579553)))

(declare-fun b!6614813 () Bool)

(assert (=> b!6614813 (= e!4001855 call!579554)))

(declare-fun d!2073573 () Bool)

(declare-fun res!2712477 () Bool)

(assert (=> d!2073573 (=> res!2712477 e!4001853)))

(assert (=> d!2073573 (= res!2712477 ((_ is ElementMatch!16487) (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))))))

(assert (=> d!2073573 (= (validRegex!8223 (ite c!1219125 (regOne!33487 r!7292) (regOne!33486 r!7292))) e!4001853)))

(assert (= (and d!2073573 (not res!2712477)) b!6614810))

(assert (= (and b!6614810 c!1219304) b!6614809))

(assert (= (and b!6614810 (not c!1219304)) b!6614808))

(assert (= (and b!6614809 res!2712479) b!6614813))

(assert (= (and b!6614808 c!1219305) b!6614812))

(assert (= (and b!6614808 (not c!1219305)) b!6614814))

(assert (= (and b!6614812 res!2712476) b!6614811))

(assert (= (and b!6614814 (not res!2712478)) b!6614807))

(assert (= (and b!6614807 res!2712475) b!6614815))

(assert (= (or b!6614811 b!6614815) bm!579547))

(assert (= (or b!6614812 b!6614807) bm!579549))

(assert (= (or b!6614813 bm!579547) bm!579548))

(declare-fun m!7388050 () Bool)

(assert (=> b!6614809 m!7388050))

(declare-fun m!7388052 () Bool)

(assert (=> bm!579548 m!7388052))

(declare-fun m!7388054 () Bool)

(assert (=> bm!579549 m!7388054))

(assert (=> bm!579430 d!2073573))

(assert (=> bs!1695601 d!2073277))

(declare-fun b!6614816 () Bool)

(declare-fun e!4001861 () Bool)

(declare-fun e!4001857 () Bool)

(assert (=> b!6614816 (= e!4001861 e!4001857)))

(declare-fun res!2712480 () Bool)

(assert (=> b!6614816 (=> (not res!2712480) (not e!4001857))))

(declare-fun call!579555 () Bool)

(assert (=> b!6614816 (= res!2712480 call!579555)))

(declare-fun b!6614817 () Bool)

(declare-fun e!4001859 () Bool)

(declare-fun e!4001858 () Bool)

(assert (=> b!6614817 (= e!4001859 e!4001858)))

(declare-fun c!1219307 () Bool)

(assert (=> b!6614817 (= c!1219307 ((_ is Union!16487) (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))))))

(declare-fun bm!579550 () Bool)

(declare-fun call!579556 () Bool)

(declare-fun call!579557 () Bool)

(assert (=> bm!579550 (= call!579556 call!579557)))

(declare-fun b!6614818 () Bool)

(declare-fun e!4001862 () Bool)

(assert (=> b!6614818 (= e!4001859 e!4001862)))

(declare-fun res!2712484 () Bool)

(assert (=> b!6614818 (= res!2712484 (not (nullable!6480 (reg!16816 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))))))))

(assert (=> b!6614818 (=> (not res!2712484) (not e!4001862))))

(declare-fun b!6614819 () Bool)

(declare-fun e!4001860 () Bool)

(assert (=> b!6614819 (= e!4001860 e!4001859)))

(declare-fun c!1219306 () Bool)

(assert (=> b!6614819 (= c!1219306 ((_ is Star!16487) (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))))))

(declare-fun bm!579551 () Bool)

(assert (=> bm!579551 (= call!579557 (validRegex!8223 (ite c!1219306 (reg!16816 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))) (ite c!1219307 (regTwo!33487 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))) (regTwo!33486 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292))))))))))

(declare-fun b!6614820 () Bool)

(declare-fun e!4001856 () Bool)

(assert (=> b!6614820 (= e!4001856 call!579556)))

(declare-fun b!6614821 () Bool)

(declare-fun res!2712481 () Bool)

(assert (=> b!6614821 (=> (not res!2712481) (not e!4001856))))

(assert (=> b!6614821 (= res!2712481 call!579555)))

(assert (=> b!6614821 (= e!4001858 e!4001856)))

(declare-fun bm!579552 () Bool)

(assert (=> bm!579552 (= call!579555 (validRegex!8223 (ite c!1219307 (regOne!33487 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))) (regOne!33486 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))))))))

(declare-fun b!6614823 () Bool)

(declare-fun res!2712483 () Bool)

(assert (=> b!6614823 (=> res!2712483 e!4001861)))

(assert (=> b!6614823 (= res!2712483 (not ((_ is Concat!25332) (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292))))))))

(assert (=> b!6614823 (= e!4001858 e!4001861)))

(declare-fun b!6614824 () Bool)

(assert (=> b!6614824 (= e!4001857 call!579556)))

(declare-fun b!6614822 () Bool)

(assert (=> b!6614822 (= e!4001862 call!579557)))

(declare-fun d!2073575 () Bool)

(declare-fun res!2712482 () Bool)

(assert (=> d!2073575 (=> res!2712482 e!4001860)))

(assert (=> d!2073575 (= res!2712482 ((_ is ElementMatch!16487) (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))))))

(assert (=> d!2073575 (= (validRegex!8223 (ite c!1219124 (reg!16816 r!7292) (ite c!1219125 (regTwo!33487 r!7292) (regTwo!33486 r!7292)))) e!4001860)))

(assert (= (and d!2073575 (not res!2712482)) b!6614819))

(assert (= (and b!6614819 c!1219306) b!6614818))

(assert (= (and b!6614819 (not c!1219306)) b!6614817))

(assert (= (and b!6614818 res!2712484) b!6614822))

(assert (= (and b!6614817 c!1219307) b!6614821))

(assert (= (and b!6614817 (not c!1219307)) b!6614823))

(assert (= (and b!6614821 res!2712481) b!6614820))

(assert (= (and b!6614823 (not res!2712483)) b!6614816))

(assert (= (and b!6614816 res!2712480) b!6614824))

(assert (= (or b!6614820 b!6614824) bm!579550))

(assert (= (or b!6614821 b!6614816) bm!579552))

(assert (= (or b!6614822 bm!579550) bm!579551))

(declare-fun m!7388056 () Bool)

(assert (=> b!6614818 m!7388056))

(declare-fun m!7388058 () Bool)

(assert (=> bm!579551 m!7388058))

(declare-fun m!7388060 () Bool)

(assert (=> bm!579552 m!7388060))

(assert (=> bm!579429 d!2073575))

(declare-fun d!2073577 () Bool)

(declare-fun c!1219308 () Bool)

(assert (=> d!2073577 (= c!1219308 (isEmpty!37921 (tail!12500 (t!379416 s!2326))))))

(declare-fun e!4001863 () Bool)

(assert (=> d!2073577 (= (matchZipper!2499 (derivationStepZipper!2452 ((_ map or) lt!2417194 lt!2417206) (head!13415 (t!379416 s!2326))) (tail!12500 (t!379416 s!2326))) e!4001863)))

(declare-fun b!6614825 () Bool)

(assert (=> b!6614825 (= e!4001863 (nullableZipper!2227 (derivationStepZipper!2452 ((_ map or) lt!2417194 lt!2417206) (head!13415 (t!379416 s!2326)))))))

(declare-fun b!6614826 () Bool)

(assert (=> b!6614826 (= e!4001863 (matchZipper!2499 (derivationStepZipper!2452 (derivationStepZipper!2452 ((_ map or) lt!2417194 lt!2417206) (head!13415 (t!379416 s!2326))) (head!13415 (tail!12500 (t!379416 s!2326)))) (tail!12500 (tail!12500 (t!379416 s!2326)))))))

(assert (= (and d!2073577 c!1219308) b!6614825))

(assert (= (and d!2073577 (not c!1219308)) b!6614826))

(assert (=> d!2073577 m!7387316))

(assert (=> d!2073577 m!7387846))

(assert (=> b!6614825 m!7387322))

(declare-fun m!7388062 () Bool)

(assert (=> b!6614825 m!7388062))

(assert (=> b!6614826 m!7387316))

(assert (=> b!6614826 m!7387850))

(assert (=> b!6614826 m!7387322))

(assert (=> b!6614826 m!7387850))

(declare-fun m!7388064 () Bool)

(assert (=> b!6614826 m!7388064))

(assert (=> b!6614826 m!7387316))

(assert (=> b!6614826 m!7387854))

(assert (=> b!6614826 m!7388064))

(assert (=> b!6614826 m!7387854))

(declare-fun m!7388066 () Bool)

(assert (=> b!6614826 m!7388066))

(assert (=> b!6613739 d!2073577))

(declare-fun bs!1695743 () Bool)

(declare-fun d!2073579 () Bool)

(assert (= bs!1695743 (and d!2073579 b!6613663)))

(declare-fun lambda!369503 () Int)

(assert (=> bs!1695743 (= (= (head!13415 (t!379416 s!2326)) (h!72086 s!2326)) (= lambda!369503 lambda!369415))))

(declare-fun bs!1695744 () Bool)

(assert (= bs!1695744 (and d!2073579 d!2073499)))

(assert (=> bs!1695744 (= lambda!369503 lambda!369493)))

(declare-fun bs!1695745 () Bool)

(assert (= bs!1695745 (and d!2073579 d!2073513)))

(assert (=> bs!1695745 (= lambda!369503 lambda!369496)))

(assert (=> d!2073579 true))

(assert (=> d!2073579 (= (derivationStepZipper!2452 ((_ map or) lt!2417194 lt!2417206) (head!13415 (t!379416 s!2326))) (flatMap!1992 ((_ map or) lt!2417194 lt!2417206) lambda!369503))))

(declare-fun bs!1695746 () Bool)

(assert (= bs!1695746 d!2073579))

(declare-fun m!7388068 () Bool)

(assert (=> bs!1695746 m!7388068))

(assert (=> b!6613739 d!2073579))

(assert (=> b!6613739 d!2073501))

(assert (=> b!6613739 d!2073503))

(declare-fun d!2073581 () Bool)

(assert (=> d!2073581 (= (nullable!6480 (regOne!33486 r!7292)) (nullableFct!2401 (regOne!33486 r!7292)))))

(declare-fun bs!1695747 () Bool)

(assert (= bs!1695747 d!2073581))

(declare-fun m!7388070 () Bool)

(assert (=> bs!1695747 m!7388070))

(assert (=> b!6613998 d!2073581))

(assert (=> d!2073287 d!2073537))

(declare-fun d!2073583 () Bool)

(assert (=> d!2073583 (= (isEmpty!37920 (t!379414 (unfocusZipperList!1908 zl!343))) ((_ is Nil!65636) (t!379414 (unfocusZipperList!1908 zl!343))))))

(assert (=> b!6613767 d!2073583))

(assert (=> b!6614126 d!2073441))

(declare-fun d!2073585 () Bool)

(assert (=> d!2073585 (= (isEmpty!37920 (tail!12502 (unfocusZipperList!1908 zl!343))) ((_ is Nil!65636) (tail!12502 (unfocusZipperList!1908 zl!343))))))

(assert (=> b!6613763 d!2073585))

(declare-fun d!2073587 () Bool)

(assert (=> d!2073587 (= (tail!12502 (unfocusZipperList!1908 zl!343)) (t!379414 (unfocusZipperList!1908 zl!343)))))

(assert (=> b!6613763 d!2073587))

(declare-fun d!2073589 () Bool)

(declare-fun res!2712485 () Bool)

(declare-fun e!4001864 () Bool)

(assert (=> d!2073589 (=> res!2712485 e!4001864)))

(assert (=> d!2073589 (= res!2712485 ((_ is Nil!65636) lt!2417223))))

(assert (=> d!2073589 (= (forall!15682 lt!2417223 lambda!369428) e!4001864)))

(declare-fun b!6614827 () Bool)

(declare-fun e!4001865 () Bool)

(assert (=> b!6614827 (= e!4001864 e!4001865)))

(declare-fun res!2712486 () Bool)

(assert (=> b!6614827 (=> (not res!2712486) (not e!4001865))))

(assert (=> b!6614827 (= res!2712486 (dynLambda!26139 lambda!369428 (h!72084 lt!2417223)))))

(declare-fun b!6614828 () Bool)

(assert (=> b!6614828 (= e!4001865 (forall!15682 (t!379414 lt!2417223) lambda!369428))))

(assert (= (and d!2073589 (not res!2712485)) b!6614827))

(assert (= (and b!6614827 res!2712486) b!6614828))

(declare-fun b_lambda!250181 () Bool)

(assert (=> (not b_lambda!250181) (not b!6614827)))

(declare-fun m!7388072 () Bool)

(assert (=> b!6614827 m!7388072))

(declare-fun m!7388074 () Bool)

(assert (=> b!6614828 m!7388074))

(assert (=> d!2073297 d!2073589))

(declare-fun bs!1695748 () Bool)

(declare-fun b!6614832 () Bool)

(assert (= bs!1695748 (and b!6614832 d!2073549)))

(declare-fun lambda!369504 () Int)

(assert (=> bs!1695748 (not (= lambda!369504 lambda!369501))))

(declare-fun bs!1695749 () Bool)

(assert (= bs!1695749 (and b!6614832 b!6614603)))

(assert (=> bs!1695749 (not (= lambda!369504 lambda!369488))))

(declare-fun bs!1695750 () Bool)

(assert (= bs!1695750 (and b!6614832 b!6614097)))

(assert (=> bs!1695750 (not (= lambda!369504 lambda!369456))))

(declare-fun bs!1695751 () Bool)

(assert (= bs!1695751 (and b!6614832 b!6614614)))

(assert (=> bs!1695751 (not (= lambda!369504 lambda!369490))))

(declare-fun bs!1695752 () Bool)

(assert (= bs!1695752 (and b!6614832 b!6614606)))

(assert (=> bs!1695752 (= (and (= (reg!16816 (regTwo!33487 (regOne!33486 r!7292))) (reg!16816 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33487 (regOne!33486 r!7292)) (regTwo!33487 (regTwo!33486 r!7292)))) (= lambda!369504 lambda!369487))))

(declare-fun bs!1695753 () Bool)

(assert (= bs!1695753 (and b!6614832 d!2073391)))

(assert (=> bs!1695753 (not (= lambda!369504 lambda!369473))))

(declare-fun bs!1695754 () Bool)

(assert (= bs!1695754 (and b!6614832 b!6614009)))

(assert (=> bs!1695754 (not (= lambda!369504 lambda!369449))))

(declare-fun bs!1695755 () Bool)

(assert (= bs!1695755 (and b!6614832 b!6614669)))

(assert (=> bs!1695755 (not (= lambda!369504 lambda!369495))))

(declare-fun bs!1695756 () Bool)

(assert (= bs!1695756 (and b!6614832 b!6613656)))

(assert (=> bs!1695756 (not (= lambda!369504 lambda!369413))))

(assert (=> bs!1695753 (not (= lambda!369504 lambda!369471))))

(assert (=> bs!1695756 (not (= lambda!369504 lambda!369414))))

(declare-fun bs!1695757 () Bool)

(assert (= bs!1695757 (and b!6614832 b!6613889)))

(assert (=> bs!1695757 (not (= lambda!369504 lambda!369443))))

(declare-fun bs!1695758 () Bool)

(assert (= bs!1695758 (and b!6614832 b!6614012)))

(assert (=> bs!1695758 (= (and (= (reg!16816 (regTwo!33487 (regOne!33486 r!7292))) (reg!16816 (regTwo!33486 r!7292))) (= (regTwo!33487 (regOne!33486 r!7292)) (regTwo!33486 r!7292))) (= lambda!369504 lambda!369446))))

(declare-fun bs!1695759 () Bool)

(assert (= bs!1695759 (and b!6614832 b!6614672)))

(assert (=> bs!1695759 (= (and (= (reg!16816 (regTwo!33487 (regOne!33486 r!7292))) (reg!16816 (regOne!33487 (regOne!33486 r!7292)))) (= (regTwo!33487 (regOne!33486 r!7292)) (regOne!33487 (regOne!33486 r!7292)))) (= lambda!369504 lambda!369494))))

(declare-fun bs!1695760 () Bool)

(assert (= bs!1695760 (and b!6614832 b!6613892)))

(assert (=> bs!1695760 (= (and (= (reg!16816 (regTwo!33487 (regOne!33486 r!7292))) (reg!16816 (regOne!33486 r!7292))) (= (regTwo!33487 (regOne!33486 r!7292)) (regOne!33486 r!7292))) (= lambda!369504 lambda!369442))))

(declare-fun bs!1695761 () Bool)

(assert (= bs!1695761 (and b!6614832 d!2073386)))

(assert (=> bs!1695761 (not (= lambda!369504 lambda!369466))))

(declare-fun bs!1695762 () Bool)

(assert (= bs!1695762 (and b!6614832 b!6614617)))

(assert (=> bs!1695762 (= (and (= (reg!16816 (regTwo!33487 (regOne!33486 r!7292))) (reg!16816 (regTwo!33487 r!7292))) (= (regTwo!33487 (regOne!33486 r!7292)) (regTwo!33487 r!7292))) (= lambda!369504 lambda!369489))))

(declare-fun bs!1695763 () Bool)

(assert (= bs!1695763 (and b!6614832 b!6614100)))

(assert (=> bs!1695763 (= (and (= (reg!16816 (regTwo!33487 (regOne!33486 r!7292))) (reg!16816 r!7292)) (= (regTwo!33487 (regOne!33486 r!7292)) r!7292)) (= lambda!369504 lambda!369455))))

(assert (=> b!6614832 true))

(assert (=> b!6614832 true))

(declare-fun bs!1695764 () Bool)

(declare-fun b!6614829 () Bool)

(assert (= bs!1695764 (and b!6614829 d!2073549)))

(declare-fun lambda!369505 () Int)

(assert (=> bs!1695764 (not (= lambda!369505 lambda!369501))))

(declare-fun bs!1695765 () Bool)

(assert (= bs!1695765 (and b!6614829 b!6614603)))

(assert (=> bs!1695765 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))))) (= lambda!369505 lambda!369488))))

(declare-fun bs!1695766 () Bool)

(assert (= bs!1695766 (and b!6614829 b!6614097)))

(assert (=> bs!1695766 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369505 lambda!369456))))

(declare-fun bs!1695767 () Bool)

(assert (= bs!1695767 (and b!6614829 b!6614614)))

(assert (=> bs!1695767 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 (regTwo!33487 r!7292))) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 (regTwo!33487 r!7292)))) (= lambda!369505 lambda!369490))))

(declare-fun bs!1695768 () Bool)

(assert (= bs!1695768 (and b!6614829 b!6614606)))

(assert (=> bs!1695768 (not (= lambda!369505 lambda!369487))))

(declare-fun bs!1695769 () Bool)

(assert (= bs!1695769 (and b!6614829 d!2073391)))

(assert (=> bs!1695769 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369505 lambda!369473))))

(declare-fun bs!1695770 () Bool)

(assert (= bs!1695770 (and b!6614829 b!6614009)))

(assert (=> bs!1695770 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369505 lambda!369449))))

(declare-fun bs!1695771 () Bool)

(assert (= bs!1695771 (and b!6614829 b!6614832)))

(assert (=> bs!1695771 (not (= lambda!369505 lambda!369504))))

(declare-fun bs!1695772 () Bool)

(assert (= bs!1695772 (and b!6614829 b!6614669)))

(assert (=> bs!1695772 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 (regOne!33487 (regOne!33486 r!7292)))) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))))) (= lambda!369505 lambda!369495))))

(declare-fun bs!1695773 () Bool)

(assert (= bs!1695773 (and b!6614829 b!6613656)))

(assert (=> bs!1695773 (not (= lambda!369505 lambda!369413))))

(assert (=> bs!1695769 (not (= lambda!369505 lambda!369471))))

(assert (=> bs!1695773 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369505 lambda!369414))))

(declare-fun bs!1695774 () Bool)

(assert (= bs!1695774 (and b!6614829 b!6613889)))

(assert (=> bs!1695774 (= (and (= (regOne!33486 (regTwo!33487 (regOne!33486 r!7292))) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369505 lambda!369443))))

(declare-fun bs!1695775 () Bool)

(assert (= bs!1695775 (and b!6614829 b!6614012)))

(assert (=> bs!1695775 (not (= lambda!369505 lambda!369446))))

(declare-fun bs!1695776 () Bool)

(assert (= bs!1695776 (and b!6614829 b!6614672)))

(assert (=> bs!1695776 (not (= lambda!369505 lambda!369494))))

(declare-fun bs!1695777 () Bool)

(assert (= bs!1695777 (and b!6614829 b!6613892)))

(assert (=> bs!1695777 (not (= lambda!369505 lambda!369442))))

(declare-fun bs!1695778 () Bool)

(assert (= bs!1695778 (and b!6614829 d!2073386)))

(assert (=> bs!1695778 (not (= lambda!369505 lambda!369466))))

(declare-fun bs!1695779 () Bool)

(assert (= bs!1695779 (and b!6614829 b!6614617)))

(assert (=> bs!1695779 (not (= lambda!369505 lambda!369489))))

(declare-fun bs!1695780 () Bool)

(assert (= bs!1695780 (and b!6614829 b!6614100)))

(assert (=> bs!1695780 (not (= lambda!369505 lambda!369455))))

(assert (=> b!6614829 true))

(assert (=> b!6614829 true))

(declare-fun e!4001867 () Bool)

(declare-fun call!579558 () Bool)

(assert (=> b!6614829 (= e!4001867 call!579558)))

(declare-fun b!6614830 () Bool)

(declare-fun e!4001866 () Bool)

(declare-fun e!4001870 () Bool)

(assert (=> b!6614830 (= e!4001866 e!4001870)))

(declare-fun res!2712488 () Bool)

(assert (=> b!6614830 (= res!2712488 (matchRSpec!3588 (regOne!33487 (regTwo!33487 (regOne!33486 r!7292))) s!2326))))

(assert (=> b!6614830 (=> res!2712488 e!4001870)))

(declare-fun b!6614831 () Bool)

(declare-fun e!4001868 () Bool)

(declare-fun e!4001872 () Bool)

(assert (=> b!6614831 (= e!4001868 e!4001872)))

(declare-fun res!2712487 () Bool)

(assert (=> b!6614831 (= res!2712487 (not ((_ is EmptyLang!16487) (regTwo!33487 (regOne!33486 r!7292)))))))

(assert (=> b!6614831 (=> (not res!2712487) (not e!4001872))))

(declare-fun bm!579553 () Bool)

(declare-fun call!579559 () Bool)

(assert (=> bm!579553 (= call!579559 (isEmpty!37921 s!2326))))

(declare-fun e!4001871 () Bool)

(assert (=> b!6614832 (= e!4001871 call!579558)))

(declare-fun b!6614833 () Bool)

(assert (=> b!6614833 (= e!4001868 call!579559)))

(declare-fun b!6614834 () Bool)

(declare-fun c!1219312 () Bool)

(assert (=> b!6614834 (= c!1219312 ((_ is ElementMatch!16487) (regTwo!33487 (regOne!33486 r!7292))))))

(declare-fun e!4001869 () Bool)

(assert (=> b!6614834 (= e!4001872 e!4001869)))

(declare-fun d!2073591 () Bool)

(declare-fun c!1219309 () Bool)

(assert (=> d!2073591 (= c!1219309 ((_ is EmptyExpr!16487) (regTwo!33487 (regOne!33486 r!7292))))))

(assert (=> d!2073591 (= (matchRSpec!3588 (regTwo!33487 (regOne!33486 r!7292)) s!2326) e!4001868)))

(declare-fun b!6614835 () Bool)

(declare-fun c!1219310 () Bool)

(assert (=> b!6614835 (= c!1219310 ((_ is Union!16487) (regTwo!33487 (regOne!33486 r!7292))))))

(assert (=> b!6614835 (= e!4001869 e!4001866)))

(declare-fun b!6614836 () Bool)

(assert (=> b!6614836 (= e!4001866 e!4001867)))

(declare-fun c!1219311 () Bool)

(assert (=> b!6614836 (= c!1219311 ((_ is Star!16487) (regTwo!33487 (regOne!33486 r!7292))))))

(declare-fun b!6614837 () Bool)

(assert (=> b!6614837 (= e!4001869 (= s!2326 (Cons!65638 (c!1218988 (regTwo!33487 (regOne!33486 r!7292))) Nil!65638)))))

(declare-fun b!6614838 () Bool)

(declare-fun res!2712489 () Bool)

(assert (=> b!6614838 (=> res!2712489 e!4001871)))

(assert (=> b!6614838 (= res!2712489 call!579559)))

(assert (=> b!6614838 (= e!4001867 e!4001871)))

(declare-fun b!6614839 () Bool)

(assert (=> b!6614839 (= e!4001870 (matchRSpec!3588 (regTwo!33487 (regTwo!33487 (regOne!33486 r!7292))) s!2326))))

(declare-fun bm!579554 () Bool)

(assert (=> bm!579554 (= call!579558 (Exists!3557 (ite c!1219311 lambda!369504 lambda!369505)))))

(assert (= (and d!2073591 c!1219309) b!6614833))

(assert (= (and d!2073591 (not c!1219309)) b!6614831))

(assert (= (and b!6614831 res!2712487) b!6614834))

(assert (= (and b!6614834 c!1219312) b!6614837))

(assert (= (and b!6614834 (not c!1219312)) b!6614835))

(assert (= (and b!6614835 c!1219310) b!6614830))

(assert (= (and b!6614835 (not c!1219310)) b!6614836))

(assert (= (and b!6614830 (not res!2712488)) b!6614839))

(assert (= (and b!6614836 c!1219311) b!6614838))

(assert (= (and b!6614836 (not c!1219311)) b!6614829))

(assert (= (and b!6614838 (not res!2712489)) b!6614832))

(assert (= (or b!6614832 b!6614829) bm!579554))

(assert (= (or b!6614833 b!6614838) bm!579553))

(declare-fun m!7388076 () Bool)

(assert (=> b!6614830 m!7388076))

(assert (=> bm!579553 m!7387406))

(declare-fun m!7388078 () Bool)

(assert (=> b!6614839 m!7388078))

(declare-fun m!7388080 () Bool)

(assert (=> bm!579554 m!7388080))

(assert (=> b!6613899 d!2073591))

(declare-fun d!2073593 () Bool)

(assert (=> d!2073593 (= (Exists!3557 lambda!369471) (choose!49425 lambda!369471))))

(declare-fun bs!1695781 () Bool)

(assert (= bs!1695781 d!2073593))

(declare-fun m!7388082 () Bool)

(assert (=> bs!1695781 m!7388082))

(assert (=> d!2073391 d!2073593))

(declare-fun d!2073595 () Bool)

(assert (=> d!2073595 (= (Exists!3557 lambda!369473) (choose!49425 lambda!369473))))

(declare-fun bs!1695782 () Bool)

(assert (= bs!1695782 d!2073595))

(declare-fun m!7388084 () Bool)

(assert (=> bs!1695782 m!7388084))

(assert (=> d!2073391 d!2073595))

(declare-fun bs!1695783 () Bool)

(declare-fun d!2073597 () Bool)

(assert (= bs!1695783 (and d!2073597 d!2073549)))

(declare-fun lambda!369510 () Int)

(assert (=> bs!1695783 (= lambda!369510 lambda!369501)))

(declare-fun bs!1695784 () Bool)

(assert (= bs!1695784 (and d!2073597 b!6614603)))

(assert (=> bs!1695784 (not (= lambda!369510 lambda!369488))))

(declare-fun bs!1695785 () Bool)

(assert (= bs!1695785 (and d!2073597 b!6614097)))

(assert (=> bs!1695785 (not (= lambda!369510 lambda!369456))))

(declare-fun bs!1695786 () Bool)

(assert (= bs!1695786 (and d!2073597 b!6614614)))

(assert (=> bs!1695786 (not (= lambda!369510 lambda!369490))))

(declare-fun bs!1695787 () Bool)

(assert (= bs!1695787 (and d!2073597 b!6614606)))

(assert (=> bs!1695787 (not (= lambda!369510 lambda!369487))))

(declare-fun bs!1695788 () Bool)

(assert (= bs!1695788 (and d!2073597 d!2073391)))

(assert (=> bs!1695788 (not (= lambda!369510 lambda!369473))))

(declare-fun bs!1695789 () Bool)

(assert (= bs!1695789 (and d!2073597 b!6614009)))

(assert (=> bs!1695789 (not (= lambda!369510 lambda!369449))))

(declare-fun bs!1695790 () Bool)

(assert (= bs!1695790 (and d!2073597 b!6614829)))

(assert (=> bs!1695790 (not (= lambda!369510 lambda!369505))))

(declare-fun bs!1695791 () Bool)

(assert (= bs!1695791 (and d!2073597 b!6614832)))

(assert (=> bs!1695791 (not (= lambda!369510 lambda!369504))))

(declare-fun bs!1695792 () Bool)

(assert (= bs!1695792 (and d!2073597 b!6614669)))

(assert (=> bs!1695792 (not (= lambda!369510 lambda!369495))))

(declare-fun bs!1695793 () Bool)

(assert (= bs!1695793 (and d!2073597 b!6613656)))

(assert (=> bs!1695793 (= lambda!369510 lambda!369413)))

(assert (=> bs!1695788 (= lambda!369510 lambda!369471)))

(assert (=> bs!1695793 (not (= lambda!369510 lambda!369414))))

(declare-fun bs!1695794 () Bool)

(assert (= bs!1695794 (and d!2073597 b!6613889)))

(assert (=> bs!1695794 (not (= lambda!369510 lambda!369443))))

(declare-fun bs!1695795 () Bool)

(assert (= bs!1695795 (and d!2073597 b!6614012)))

(assert (=> bs!1695795 (not (= lambda!369510 lambda!369446))))

(declare-fun bs!1695796 () Bool)

(assert (= bs!1695796 (and d!2073597 b!6614672)))

(assert (=> bs!1695796 (not (= lambda!369510 lambda!369494))))

(declare-fun bs!1695797 () Bool)

(assert (= bs!1695797 (and d!2073597 b!6613892)))

(assert (=> bs!1695797 (not (= lambda!369510 lambda!369442))))

(declare-fun bs!1695798 () Bool)

(assert (= bs!1695798 (and d!2073597 d!2073386)))

(assert (=> bs!1695798 (= lambda!369510 lambda!369466)))

(declare-fun bs!1695799 () Bool)

(assert (= bs!1695799 (and d!2073597 b!6614617)))

(assert (=> bs!1695799 (not (= lambda!369510 lambda!369489))))

(declare-fun bs!1695800 () Bool)

(assert (= bs!1695800 (and d!2073597 b!6614100)))

(assert (=> bs!1695800 (not (= lambda!369510 lambda!369455))))

(assert (=> d!2073597 true))

(assert (=> d!2073597 true))

(assert (=> d!2073597 true))

(declare-fun lambda!369511 () Int)

(assert (=> bs!1695783 (not (= lambda!369511 lambda!369501))))

(assert (=> bs!1695784 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33486 r!7292) (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))))) (= lambda!369511 lambda!369488))))

(assert (=> bs!1695785 (= lambda!369511 lambda!369456)))

(assert (=> bs!1695786 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regTwo!33487 r!7292))) (= (regTwo!33486 r!7292) (regTwo!33486 (regTwo!33487 r!7292)))) (= lambda!369511 lambda!369490))))

(assert (=> bs!1695787 (not (= lambda!369511 lambda!369487))))

(assert (=> bs!1695788 (= lambda!369511 lambda!369473)))

(assert (=> bs!1695789 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 r!7292) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369511 lambda!369449))))

(assert (=> bs!1695790 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regTwo!33487 (regOne!33486 r!7292)))) (= (regTwo!33486 r!7292) (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))))) (= lambda!369511 lambda!369505))))

(assert (=> bs!1695791 (not (= lambda!369511 lambda!369504))))

(assert (=> bs!1695792 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regOne!33487 (regOne!33486 r!7292)))) (= (regTwo!33486 r!7292) (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))))) (= lambda!369511 lambda!369495))))

(assert (=> bs!1695793 (not (= lambda!369511 lambda!369413))))

(assert (=> bs!1695788 (not (= lambda!369511 lambda!369471))))

(assert (=> bs!1695793 (= lambda!369511 lambda!369414)))

(assert (=> bs!1695794 (= (and (= (regOne!33486 r!7292) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 r!7292) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369511 lambda!369443))))

(assert (=> bs!1695795 (not (= lambda!369511 lambda!369446))))

(declare-fun bs!1695801 () Bool)

(assert (= bs!1695801 d!2073597))

(assert (=> bs!1695801 (not (= lambda!369511 lambda!369510))))

(assert (=> bs!1695796 (not (= lambda!369511 lambda!369494))))

(assert (=> bs!1695797 (not (= lambda!369511 lambda!369442))))

(assert (=> bs!1695798 (not (= lambda!369511 lambda!369466))))

(assert (=> bs!1695799 (not (= lambda!369511 lambda!369489))))

(assert (=> bs!1695800 (not (= lambda!369511 lambda!369455))))

(assert (=> d!2073597 true))

(assert (=> d!2073597 true))

(assert (=> d!2073597 true))

(assert (=> d!2073597 (= (Exists!3557 lambda!369510) (Exists!3557 lambda!369511))))

(assert (=> d!2073597 true))

(declare-fun _$90!2440 () Unit!159303)

(assert (=> d!2073597 (= (choose!49429 (regOne!33486 r!7292) (regTwo!33486 r!7292) s!2326) _$90!2440)))

(declare-fun m!7388086 () Bool)

(assert (=> bs!1695801 m!7388086))

(declare-fun m!7388088 () Bool)

(assert (=> bs!1695801 m!7388088))

(assert (=> d!2073391 d!2073597))

(assert (=> d!2073391 d!2073517))

(assert (=> bm!579433 d!2073455))

(declare-fun d!2073599 () Bool)

(assert (=> d!2073599 (= (head!13417 (exprs!6371 (h!72085 zl!343))) (h!72084 (exprs!6371 (h!72085 zl!343))))))

(assert (=> b!6613824 d!2073599))

(assert (=> b!6613774 d!2073301))

(declare-fun bs!1695802 () Bool)

(declare-fun d!2073601 () Bool)

(assert (= bs!1695802 (and d!2073601 d!2073467)))

(declare-fun lambda!369512 () Int)

(assert (=> bs!1695802 (= lambda!369512 lambda!369486)))

(declare-fun bs!1695803 () Bool)

(assert (= bs!1695803 (and d!2073601 d!2073557)))

(assert (=> bs!1695803 (= lambda!369512 lambda!369502)))

(declare-fun bs!1695804 () Bool)

(assert (= bs!1695804 (and d!2073601 d!2073301)))

(assert (=> bs!1695804 (= lambda!369512 lambda!369431)))

(declare-fun bs!1695805 () Bool)

(assert (= bs!1695805 (and d!2073601 d!2073289)))

(assert (=> bs!1695805 (= lambda!369512 lambda!369422)))

(declare-fun bs!1695806 () Bool)

(assert (= bs!1695806 (and d!2073601 d!2073359)))

(assert (=> bs!1695806 (= lambda!369512 lambda!369458)))

(declare-fun bs!1695807 () Bool)

(assert (= bs!1695807 (and d!2073601 d!2073263)))

(assert (=> bs!1695807 (= lambda!369512 lambda!369418)))

(declare-fun bs!1695808 () Bool)

(assert (= bs!1695808 (and d!2073601 d!2073543)))

(assert (=> bs!1695808 (= lambda!369512 lambda!369498)))

(declare-fun bs!1695809 () Bool)

(assert (= bs!1695809 (and d!2073601 d!2073265)))

(assert (=> bs!1695809 (= lambda!369512 lambda!369419)))

(declare-fun bs!1695810 () Bool)

(assert (= bs!1695810 (and d!2073601 d!2073297)))

(assert (=> bs!1695810 (= lambda!369512 lambda!369428)))

(declare-fun lt!2417330 () List!65760)

(assert (=> d!2073601 (forall!15682 lt!2417330 lambda!369512)))

(declare-fun e!4001877 () List!65760)

(assert (=> d!2073601 (= lt!2417330 e!4001877)))

(declare-fun c!1219313 () Bool)

(assert (=> d!2073601 (= c!1219313 ((_ is Cons!65637) (t!379415 zl!343)))))

(assert (=> d!2073601 (= (unfocusZipperList!1908 (t!379415 zl!343)) lt!2417330)))

(declare-fun b!6614848 () Bool)

(assert (=> b!6614848 (= e!4001877 (Cons!65636 (generalisedConcat!2084 (exprs!6371 (h!72085 (t!379415 zl!343)))) (unfocusZipperList!1908 (t!379415 (t!379415 zl!343)))))))

(declare-fun b!6614849 () Bool)

(assert (=> b!6614849 (= e!4001877 Nil!65636)))

(assert (= (and d!2073601 c!1219313) b!6614848))

(assert (= (and d!2073601 (not c!1219313)) b!6614849))

(declare-fun m!7388090 () Bool)

(assert (=> d!2073601 m!7388090))

(declare-fun m!7388092 () Bool)

(assert (=> b!6614848 m!7388092))

(declare-fun m!7388094 () Bool)

(assert (=> b!6614848 m!7388094))

(assert (=> b!6613774 d!2073601))

(assert (=> b!6614006 d!2073441))

(assert (=> b!6614119 d!2073441))

(declare-fun b!6614850 () Bool)

(declare-fun e!4001878 () (InoxSet Context!11742))

(assert (=> b!6614850 (= e!4001878 ((as const (Array Context!11742 Bool)) false))))

(declare-fun b!6614851 () Bool)

(declare-fun call!579560 () (InoxSet Context!11742))

(assert (=> b!6614851 (= e!4001878 call!579560)))

(declare-fun b!6614852 () Bool)

(declare-fun e!4001880 () (InoxSet Context!11742))

(assert (=> b!6614852 (= e!4001880 ((_ map or) call!579560 (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))) (h!72086 s!2326))))))

(declare-fun b!6614853 () Bool)

(declare-fun e!4001879 () Bool)

(assert (=> b!6614853 (= e!4001879 (nullable!6480 (h!72084 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))))))

(declare-fun d!2073603 () Bool)

(declare-fun c!1219315 () Bool)

(assert (=> d!2073603 (= c!1219315 e!4001879)))

(declare-fun res!2712498 () Bool)

(assert (=> d!2073603 (=> (not res!2712498) (not e!4001879))))

(assert (=> d!2073603 (= res!2712498 ((_ is Cons!65636) (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))))

(assert (=> d!2073603 (= (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))) (h!72086 s!2326)) e!4001880)))

(declare-fun bm!579555 () Bool)

(assert (=> bm!579555 (= call!579560 (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))) (Context!11743 (t!379414 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343))))))))))) (h!72086 s!2326)))))

(declare-fun b!6614854 () Bool)

(assert (=> b!6614854 (= e!4001880 e!4001878)))

(declare-fun c!1219314 () Bool)

(assert (=> b!6614854 (= c!1219314 ((_ is Cons!65636) (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (Cons!65636 (h!72084 (exprs!6371 (h!72085 zl!343))) (t!379414 (exprs!6371 (h!72085 zl!343)))))))))))))

(assert (= (and d!2073603 res!2712498) b!6614853))

(assert (= (and d!2073603 c!1219315) b!6614852))

(assert (= (and d!2073603 (not c!1219315)) b!6614854))

(assert (= (and b!6614854 c!1219314) b!6614851))

(assert (= (and b!6614854 (not c!1219314)) b!6614850))

(assert (= (or b!6614852 b!6614851) bm!579555))

(declare-fun m!7388096 () Bool)

(assert (=> b!6614852 m!7388096))

(declare-fun m!7388098 () Bool)

(assert (=> b!6614853 m!7388098))

(declare-fun m!7388100 () Bool)

(assert (=> bm!579555 m!7388100))

(assert (=> b!6613716 d!2073603))

(assert (=> bm!579408 d!2073455))

(declare-fun b!6614855 () Bool)

(declare-fun e!4001881 () (InoxSet Context!11742))

(assert (=> b!6614855 (= e!4001881 ((as const (Array Context!11742 Bool)) false))))

(declare-fun b!6614856 () Bool)

(declare-fun call!579561 () (InoxSet Context!11742))

(assert (=> b!6614856 (= e!4001881 call!579561)))

(declare-fun b!6614857 () Bool)

(declare-fun e!4001883 () (InoxSet Context!11742))

(assert (=> b!6614857 (= e!4001883 ((_ map or) call!579561 (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343))))))) (h!72086 s!2326))))))

(declare-fun b!6614858 () Bool)

(declare-fun e!4001882 () Bool)

(assert (=> b!6614858 (= e!4001882 (nullable!6480 (h!72084 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343))))))))))

(declare-fun d!2073605 () Bool)

(declare-fun c!1219317 () Bool)

(assert (=> d!2073605 (= c!1219317 e!4001882)))

(declare-fun res!2712499 () Bool)

(assert (=> d!2073605 (=> (not res!2712499) (not e!4001882))))

(assert (=> d!2073605 (= res!2712499 ((_ is Cons!65636) (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))))))))

(assert (=> d!2073605 (= (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))) (h!72086 s!2326)) e!4001883)))

(declare-fun bm!579556 () Bool)

(assert (=> bm!579556 (= call!579561 (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))))) (Context!11743 (t!379414 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343))))))) (h!72086 s!2326)))))

(declare-fun b!6614859 () Bool)

(assert (=> b!6614859 (= e!4001883 e!4001881)))

(declare-fun c!1219316 () Bool)

(assert (=> b!6614859 (= c!1219316 ((_ is Cons!65636) (exprs!6371 (Context!11743 (t!379414 (exprs!6371 (h!72085 zl!343)))))))))

(assert (= (and d!2073605 res!2712499) b!6614858))

(assert (= (and d!2073605 c!1219317) b!6614857))

(assert (= (and d!2073605 (not c!1219317)) b!6614859))

(assert (= (and b!6614859 c!1219316) b!6614856))

(assert (= (and b!6614859 (not c!1219316)) b!6614855))

(assert (= (or b!6614857 b!6614856) bm!579556))

(declare-fun m!7388102 () Bool)

(assert (=> b!6614857 m!7388102))

(declare-fun m!7388104 () Bool)

(assert (=> b!6614858 m!7388104))

(declare-fun m!7388106 () Bool)

(assert (=> bm!579556 m!7388106))

(assert (=> b!6613721 d!2073605))

(assert (=> bm!579418 d!2073455))

(assert (=> b!6614115 d!2073447))

(assert (=> b!6614115 d!2073443))

(declare-fun bs!1695811 () Bool)

(declare-fun d!2073607 () Bool)

(assert (= bs!1695811 (and d!2073607 d!2073467)))

(declare-fun lambda!369513 () Int)

(assert (=> bs!1695811 (= lambda!369513 lambda!369486)))

(declare-fun bs!1695812 () Bool)

(assert (= bs!1695812 (and d!2073607 d!2073557)))

(assert (=> bs!1695812 (= lambda!369513 lambda!369502)))

(declare-fun bs!1695813 () Bool)

(assert (= bs!1695813 (and d!2073607 d!2073301)))

(assert (=> bs!1695813 (= lambda!369513 lambda!369431)))

(declare-fun bs!1695814 () Bool)

(assert (= bs!1695814 (and d!2073607 d!2073289)))

(assert (=> bs!1695814 (= lambda!369513 lambda!369422)))

(declare-fun bs!1695815 () Bool)

(assert (= bs!1695815 (and d!2073607 d!2073359)))

(assert (=> bs!1695815 (= lambda!369513 lambda!369458)))

(declare-fun bs!1695816 () Bool)

(assert (= bs!1695816 (and d!2073607 d!2073263)))

(assert (=> bs!1695816 (= lambda!369513 lambda!369418)))

(declare-fun bs!1695817 () Bool)

(assert (= bs!1695817 (and d!2073607 d!2073601)))

(assert (=> bs!1695817 (= lambda!369513 lambda!369512)))

(declare-fun bs!1695818 () Bool)

(assert (= bs!1695818 (and d!2073607 d!2073543)))

(assert (=> bs!1695818 (= lambda!369513 lambda!369498)))

(declare-fun bs!1695819 () Bool)

(assert (= bs!1695819 (and d!2073607 d!2073265)))

(assert (=> bs!1695819 (= lambda!369513 lambda!369419)))

(declare-fun bs!1695820 () Bool)

(assert (= bs!1695820 (and d!2073607 d!2073297)))

(assert (=> bs!1695820 (= lambda!369513 lambda!369428)))

(assert (=> d!2073607 (= (inv!84464 setElem!45199) (forall!15682 (exprs!6371 setElem!45199) lambda!369513))))

(declare-fun bs!1695821 () Bool)

(assert (= bs!1695821 d!2073607))

(declare-fun m!7388108 () Bool)

(assert (=> bs!1695821 m!7388108))

(assert (=> setNonEmpty!45199 d!2073607))

(assert (=> b!6614201 d!2073331))

(declare-fun b!6614860 () Bool)

(declare-fun e!4001886 () (InoxSet Context!11742))

(declare-fun call!579562 () (InoxSet Context!11742))

(declare-fun call!579566 () (InoxSet Context!11742))

(assert (=> b!6614860 (= e!4001886 ((_ map or) call!579562 call!579566))))

(declare-fun b!6614861 () Bool)

(declare-fun e!4001888 () (InoxSet Context!11742))

(declare-fun call!579564 () (InoxSet Context!11742))

(assert (=> b!6614861 (= e!4001888 call!579564)))

(declare-fun c!1219319 () Bool)

(declare-fun d!2073609 () Bool)

(assert (=> d!2073609 (= c!1219319 (and ((_ is ElementMatch!16487) (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))) (= (c!1218988 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))) (h!72086 s!2326))))))

(declare-fun e!4001884 () (InoxSet Context!11742))

(assert (=> d!2073609 (= (derivationStepZipperDown!1735 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))) (ite c!1219003 lt!2417204 (Context!11743 call!579393)) (h!72086 s!2326)) e!4001884)))

(declare-fun b!6614862 () Bool)

(declare-fun c!1219320 () Bool)

(declare-fun e!4001887 () Bool)

(assert (=> b!6614862 (= c!1219320 e!4001887)))

(declare-fun res!2712500 () Bool)

(assert (=> b!6614862 (=> (not res!2712500) (not e!4001887))))

(assert (=> b!6614862 (= res!2712500 ((_ is Concat!25332) (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))

(declare-fun e!4001889 () (InoxSet Context!11742))

(assert (=> b!6614862 (= e!4001886 e!4001889)))

(declare-fun b!6614863 () Bool)

(declare-fun call!579567 () (InoxSet Context!11742))

(assert (=> b!6614863 (= e!4001889 ((_ map or) call!579566 call!579567))))

(declare-fun bm!579557 () Bool)

(declare-fun call!579563 () List!65760)

(declare-fun c!1219321 () Bool)

(assert (=> bm!579557 (= call!579563 ($colon$colon!2323 (exprs!6371 (ite c!1219003 lt!2417204 (Context!11743 call!579393))) (ite (or c!1219320 c!1219321) (regTwo!33486 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))) (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))))))))

(declare-fun b!6614864 () Bool)

(declare-fun c!1219318 () Bool)

(assert (=> b!6614864 (= c!1219318 ((_ is Star!16487) (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))

(declare-fun e!4001885 () (InoxSet Context!11742))

(assert (=> b!6614864 (= e!4001888 e!4001885)))

(declare-fun bm!579558 () Bool)

(declare-fun c!1219322 () Bool)

(assert (=> bm!579558 (= call!579566 (derivationStepZipperDown!1735 (ite c!1219322 (regTwo!33487 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))) (regOne!33486 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))))) (ite c!1219322 (ite c!1219003 lt!2417204 (Context!11743 call!579393)) (Context!11743 call!579563)) (h!72086 s!2326)))))

(declare-fun bm!579559 () Bool)

(assert (=> bm!579559 (= call!579567 call!579562)))

(declare-fun bm!579560 () Bool)

(declare-fun call!579565 () List!65760)

(assert (=> bm!579560 (= call!579565 call!579563)))

(declare-fun bm!579561 () Bool)

(assert (=> bm!579561 (= call!579564 call!579567)))

(declare-fun b!6614865 () Bool)

(assert (=> b!6614865 (= e!4001889 e!4001888)))

(assert (=> b!6614865 (= c!1219321 ((_ is Concat!25332) (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))

(declare-fun b!6614866 () Bool)

(assert (=> b!6614866 (= e!4001884 e!4001886)))

(assert (=> b!6614866 (= c!1219322 ((_ is Union!16487) (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))))))

(declare-fun b!6614867 () Bool)

(assert (=> b!6614867 (= e!4001887 (nullable!6480 (regOne!33486 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))))))))

(declare-fun bm!579562 () Bool)

(assert (=> bm!579562 (= call!579562 (derivationStepZipperDown!1735 (ite c!1219322 (regOne!33487 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))) (ite c!1219320 (regTwo!33486 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))) (ite c!1219321 (regOne!33486 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343)))))) (reg!16816 (ite c!1219003 (regTwo!33487 (h!72084 (exprs!6371 (h!72085 zl!343)))) (regOne!33486 (h!72084 (exprs!6371 (h!72085 zl!343))))))))) (ite (or c!1219322 c!1219320) (ite c!1219003 lt!2417204 (Context!11743 call!579393)) (Context!11743 call!579565)) (h!72086 s!2326)))))

(declare-fun b!6614868 () Bool)

(assert (=> b!6614868 (= e!4001884 (store ((as const (Array Context!11742 Bool)) false) (ite c!1219003 lt!2417204 (Context!11743 call!579393)) true))))

(declare-fun b!6614869 () Bool)

(assert (=> b!6614869 (= e!4001885 call!579564)))

(declare-fun b!6614870 () Bool)

(assert (=> b!6614870 (= e!4001885 ((as const (Array Context!11742 Bool)) false))))

(assert (= (and d!2073609 c!1219319) b!6614868))

(assert (= (and d!2073609 (not c!1219319)) b!6614866))

(assert (= (and b!6614866 c!1219322) b!6614860))

(assert (= (and b!6614866 (not c!1219322)) b!6614862))

(assert (= (and b!6614862 res!2712500) b!6614867))

(assert (= (and b!6614862 c!1219320) b!6614863))

(assert (= (and b!6614862 (not c!1219320)) b!6614865))

(assert (= (and b!6614865 c!1219321) b!6614861))

(assert (= (and b!6614865 (not c!1219321)) b!6614864))

(assert (= (and b!6614864 c!1219318) b!6614869))

(assert (= (and b!6614864 (not c!1219318)) b!6614870))

(assert (= (or b!6614861 b!6614869) bm!579560))

(assert (= (or b!6614861 b!6614869) bm!579561))

(assert (= (or b!6614863 bm!579560) bm!579557))

(assert (= (or b!6614863 bm!579561) bm!579559))

(assert (= (or b!6614860 b!6614863) bm!579558))

(assert (= (or b!6614860 bm!579559) bm!579562))

(declare-fun m!7388110 () Bool)

(assert (=> b!6614868 m!7388110))

(declare-fun m!7388112 () Bool)

(assert (=> bm!579562 m!7388112))

(declare-fun m!7388114 () Bool)

(assert (=> b!6614867 m!7388114))

(declare-fun m!7388116 () Bool)

(assert (=> bm!579558 m!7388116))

(declare-fun m!7388118 () Bool)

(assert (=> bm!579557 m!7388118))

(assert (=> bm!579388 d!2073609))

(assert (=> d!2073357 d!2073351))

(assert (=> d!2073357 d!2073345))

(declare-fun d!2073611 () Bool)

(assert (=> d!2073611 (= (matchR!8670 r!7292 s!2326) (matchRSpec!3588 r!7292 s!2326))))

(assert (=> d!2073611 true))

(declare-fun _$88!5297 () Unit!159303)

(assert (=> d!2073611 (= (choose!49419 r!7292 s!2326) _$88!5297)))

(declare-fun bs!1695822 () Bool)

(assert (= bs!1695822 d!2073611))

(assert (=> bs!1695822 m!7387226))

(assert (=> bs!1695822 m!7387224))

(assert (=> d!2073357 d!2073611))

(assert (=> d!2073357 d!2073335))

(assert (=> b!6613999 d!2073441))

(declare-fun d!2073613 () Bool)

(assert (=> d!2073613 true))

(declare-fun setRes!45205 () Bool)

(assert (=> d!2073613 setRes!45205))

(declare-fun condSetEmpty!45205 () Bool)

(declare-fun res!2712503 () (InoxSet Context!11742))

(assert (=> d!2073613 (= condSetEmpty!45205 (= res!2712503 ((as const (Array Context!11742 Bool)) false)))))

(assert (=> d!2073613 (= (choose!49415 z!1189 lambda!369415) res!2712503)))

(declare-fun setIsEmpty!45205 () Bool)

(assert (=> setIsEmpty!45205 setRes!45205))

(declare-fun setElem!45205 () Context!11742)

(declare-fun e!4001892 () Bool)

(declare-fun setNonEmpty!45205 () Bool)

(declare-fun tp!1821768 () Bool)

(assert (=> setNonEmpty!45205 (= setRes!45205 (and tp!1821768 (inv!84464 setElem!45205) e!4001892))))

(declare-fun setRest!45205 () (InoxSet Context!11742))

(assert (=> setNonEmpty!45205 (= res!2712503 ((_ map or) (store ((as const (Array Context!11742 Bool)) false) setElem!45205 true) setRest!45205))))

(declare-fun b!6614873 () Bool)

(declare-fun tp!1821769 () Bool)

(assert (=> b!6614873 (= e!4001892 tp!1821769)))

(assert (= (and d!2073613 condSetEmpty!45205) setIsEmpty!45205))

(assert (= (and d!2073613 (not condSetEmpty!45205)) setNonEmpty!45205))

(assert (= setNonEmpty!45205 b!6614873))

(declare-fun m!7388120 () Bool)

(assert (=> setNonEmpty!45205 m!7388120))

(assert (=> d!2073269 d!2073613))

(declare-fun b!6614874 () Bool)

(declare-fun e!4001893 () (InoxSet Context!11742))

(assert (=> b!6614874 (= e!4001893 ((as const (Array Context!11742 Bool)) false))))

(declare-fun b!6614875 () Bool)

(declare-fun call!579568 () (InoxSet Context!11742))

(assert (=> b!6614875 (= e!4001893 call!579568)))

(declare-fun e!4001895 () (InoxSet Context!11742))

(declare-fun b!6614876 () Bool)

(assert (=> b!6614876 (= e!4001895 ((_ map or) call!579568 (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 lt!2417204)))))) (h!72086 s!2326))))))

(declare-fun b!6614877 () Bool)

(declare-fun e!4001894 () Bool)

(assert (=> b!6614877 (= e!4001894 (nullable!6480 (h!72084 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 lt!2417204)))))))))

(declare-fun d!2073615 () Bool)

(declare-fun c!1219324 () Bool)

(assert (=> d!2073615 (= c!1219324 e!4001894)))

(declare-fun res!2712504 () Bool)

(assert (=> d!2073615 (=> (not res!2712504) (not e!4001894))))

(assert (=> d!2073615 (= res!2712504 ((_ is Cons!65636) (exprs!6371 (Context!11743 (t!379414 (exprs!6371 lt!2417204))))))))

(assert (=> d!2073615 (= (derivationStepZipperUp!1661 (Context!11743 (t!379414 (exprs!6371 lt!2417204))) (h!72086 s!2326)) e!4001895)))

(declare-fun bm!579563 () Bool)

(assert (=> bm!579563 (= call!579568 (derivationStepZipperDown!1735 (h!72084 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 lt!2417204))))) (Context!11743 (t!379414 (exprs!6371 (Context!11743 (t!379414 (exprs!6371 lt!2417204)))))) (h!72086 s!2326)))))

(declare-fun b!6614878 () Bool)

(assert (=> b!6614878 (= e!4001895 e!4001893)))

(declare-fun c!1219323 () Bool)

(assert (=> b!6614878 (= c!1219323 ((_ is Cons!65636) (exprs!6371 (Context!11743 (t!379414 (exprs!6371 lt!2417204))))))))

(assert (= (and d!2073615 res!2712504) b!6614877))

(assert (= (and d!2073615 c!1219324) b!6614876))

(assert (= (and d!2073615 (not c!1219324)) b!6614878))

(assert (= (and b!6614878 c!1219323) b!6614875))

(assert (= (and b!6614878 (not c!1219323)) b!6614874))

(assert (= (or b!6614876 b!6614875) bm!579563))

(declare-fun m!7388122 () Bool)

(assert (=> b!6614876 m!7388122))

(declare-fun m!7388124 () Bool)

(assert (=> b!6614877 m!7388124))

(declare-fun m!7388126 () Bool)

(assert (=> bm!579563 m!7388126))

(assert (=> b!6613726 d!2073615))

(declare-fun d!2073617 () Bool)

(assert (=> d!2073617 (= (nullable!6480 (reg!16816 r!7292)) (nullableFct!2401 (reg!16816 r!7292)))))

(declare-fun bs!1695823 () Bool)

(assert (= bs!1695823 d!2073617))

(declare-fun m!7388128 () Bool)

(assert (=> bs!1695823 m!7388128))

(assert (=> b!6614090 d!2073617))

(declare-fun b!6614879 () Bool)

(declare-fun res!2712512 () Bool)

(declare-fun e!4001900 () Bool)

(assert (=> b!6614879 (=> (not res!2712512) (not e!4001900))))

(assert (=> b!6614879 (= res!2712512 (isEmpty!37921 (tail!12500 (_2!36769 (get!22812 lt!2417280)))))))

(declare-fun b!6614880 () Bool)

(declare-fun res!2712511 () Bool)

(declare-fun e!4001899 () Bool)

(assert (=> b!6614880 (=> res!2712511 e!4001899)))

(assert (=> b!6614880 (= res!2712511 e!4001900)))

(declare-fun res!2712509 () Bool)

(assert (=> b!6614880 (=> (not res!2712509) (not e!4001900))))

(declare-fun lt!2417331 () Bool)

(assert (=> b!6614880 (= res!2712509 lt!2417331)))

(declare-fun b!6614881 () Bool)

(declare-fun res!2712507 () Bool)

(assert (=> b!6614881 (=> (not res!2712507) (not e!4001900))))

(declare-fun call!579569 () Bool)

(assert (=> b!6614881 (= res!2712507 (not call!579569))))

(declare-fun b!6614882 () Bool)

(declare-fun e!4001896 () Bool)

(assert (=> b!6614882 (= e!4001896 (nullable!6480 (regTwo!33486 r!7292)))))

(declare-fun b!6614883 () Bool)

(declare-fun e!4001897 () Bool)

(assert (=> b!6614883 (= e!4001897 (not (= (head!13415 (_2!36769 (get!22812 lt!2417280))) (c!1218988 (regTwo!33486 r!7292)))))))

(declare-fun b!6614884 () Bool)

(assert (=> b!6614884 (= e!4001896 (matchR!8670 (derivativeStep!5167 (regTwo!33486 r!7292) (head!13415 (_2!36769 (get!22812 lt!2417280)))) (tail!12500 (_2!36769 (get!22812 lt!2417280)))))))

(declare-fun b!6614885 () Bool)

(declare-fun e!4001901 () Bool)

(assert (=> b!6614885 (= e!4001899 e!4001901)))

(declare-fun res!2712510 () Bool)

(assert (=> b!6614885 (=> (not res!2712510) (not e!4001901))))

(assert (=> b!6614885 (= res!2712510 (not lt!2417331))))

(declare-fun b!6614886 () Bool)

(declare-fun e!4001898 () Bool)

(assert (=> b!6614886 (= e!4001898 (not lt!2417331))))

(declare-fun bm!579564 () Bool)

(assert (=> bm!579564 (= call!579569 (isEmpty!37921 (_2!36769 (get!22812 lt!2417280))))))

(declare-fun b!6614887 () Bool)

(declare-fun e!4001902 () Bool)

(assert (=> b!6614887 (= e!4001902 (= lt!2417331 call!579569))))

(declare-fun b!6614888 () Bool)

(declare-fun res!2712506 () Bool)

(assert (=> b!6614888 (=> res!2712506 e!4001899)))

(assert (=> b!6614888 (= res!2712506 (not ((_ is ElementMatch!16487) (regTwo!33486 r!7292))))))

(assert (=> b!6614888 (= e!4001898 e!4001899)))

(declare-fun d!2073619 () Bool)

(assert (=> d!2073619 e!4001902))

(declare-fun c!1219325 () Bool)

(assert (=> d!2073619 (= c!1219325 ((_ is EmptyExpr!16487) (regTwo!33486 r!7292)))))

(assert (=> d!2073619 (= lt!2417331 e!4001896)))

(declare-fun c!1219326 () Bool)

(assert (=> d!2073619 (= c!1219326 (isEmpty!37921 (_2!36769 (get!22812 lt!2417280))))))

(assert (=> d!2073619 (validRegex!8223 (regTwo!33486 r!7292))))

(assert (=> d!2073619 (= (matchR!8670 (regTwo!33486 r!7292) (_2!36769 (get!22812 lt!2417280))) lt!2417331)))

(declare-fun b!6614889 () Bool)

(assert (=> b!6614889 (= e!4001901 e!4001897)))

(declare-fun res!2712505 () Bool)

(assert (=> b!6614889 (=> res!2712505 e!4001897)))

(assert (=> b!6614889 (= res!2712505 call!579569)))

(declare-fun b!6614890 () Bool)

(assert (=> b!6614890 (= e!4001900 (= (head!13415 (_2!36769 (get!22812 lt!2417280))) (c!1218988 (regTwo!33486 r!7292))))))

(declare-fun b!6614891 () Bool)

(declare-fun res!2712508 () Bool)

(assert (=> b!6614891 (=> res!2712508 e!4001897)))

(assert (=> b!6614891 (= res!2712508 (not (isEmpty!37921 (tail!12500 (_2!36769 (get!22812 lt!2417280))))))))

(declare-fun b!6614892 () Bool)

(assert (=> b!6614892 (= e!4001902 e!4001898)))

(declare-fun c!1219327 () Bool)

(assert (=> b!6614892 (= c!1219327 ((_ is EmptyLang!16487) (regTwo!33486 r!7292)))))

(assert (= (and d!2073619 c!1219326) b!6614882))

(assert (= (and d!2073619 (not c!1219326)) b!6614884))

(assert (= (and d!2073619 c!1219325) b!6614887))

(assert (= (and d!2073619 (not c!1219325)) b!6614892))

(assert (= (and b!6614892 c!1219327) b!6614886))

(assert (= (and b!6614892 (not c!1219327)) b!6614888))

(assert (= (and b!6614888 (not res!2712506)) b!6614880))

(assert (= (and b!6614880 res!2712509) b!6614881))

(assert (= (and b!6614881 res!2712507) b!6614879))

(assert (= (and b!6614879 res!2712512) b!6614890))

(assert (= (and b!6614880 (not res!2712511)) b!6614885))

(assert (= (and b!6614885 res!2712510) b!6614889))

(assert (= (and b!6614889 (not res!2712505)) b!6614891))

(assert (= (and b!6614891 (not res!2712508)) b!6614883))

(assert (= (or b!6614887 b!6614881 b!6614889) bm!579564))

(declare-fun m!7388130 () Bool)

(assert (=> bm!579564 m!7388130))

(declare-fun m!7388132 () Bool)

(assert (=> b!6614884 m!7388132))

(assert (=> b!6614884 m!7388132))

(declare-fun m!7388134 () Bool)

(assert (=> b!6614884 m!7388134))

(declare-fun m!7388136 () Bool)

(assert (=> b!6614884 m!7388136))

(assert (=> b!6614884 m!7388134))

(assert (=> b!6614884 m!7388136))

(declare-fun m!7388138 () Bool)

(assert (=> b!6614884 m!7388138))

(assert (=> d!2073619 m!7388130))

(assert (=> d!2073619 m!7387466))

(assert (=> b!6614883 m!7388132))

(assert (=> b!6614882 m!7387468))

(assert (=> b!6614879 m!7388136))

(assert (=> b!6614879 m!7388136))

(declare-fun m!7388140 () Bool)

(assert (=> b!6614879 m!7388140))

(assert (=> b!6614890 m!7388132))

(assert (=> b!6614891 m!7388136))

(assert (=> b!6614891 m!7388136))

(assert (=> b!6614891 m!7388140))

(assert (=> b!6614197 d!2073619))

(assert (=> b!6614197 d!2073435))

(declare-fun bs!1695824 () Bool)

(declare-fun b!6614896 () Bool)

(assert (= bs!1695824 (and b!6614896 d!2073549)))

(declare-fun lambda!369514 () Int)

(assert (=> bs!1695824 (not (= lambda!369514 lambda!369501))))

(declare-fun bs!1695825 () Bool)

(assert (= bs!1695825 (and b!6614896 b!6614603)))

(assert (=> bs!1695825 (not (= lambda!369514 lambda!369488))))

(declare-fun bs!1695826 () Bool)

(assert (= bs!1695826 (and b!6614896 b!6614097)))

(assert (=> bs!1695826 (not (= lambda!369514 lambda!369456))))

(declare-fun bs!1695827 () Bool)

(assert (= bs!1695827 (and b!6614896 b!6614614)))

(assert (=> bs!1695827 (not (= lambda!369514 lambda!369490))))

(declare-fun bs!1695828 () Bool)

(assert (= bs!1695828 (and b!6614896 b!6614606)))

(assert (=> bs!1695828 (= (and (= (reg!16816 (regOne!33487 (regTwo!33486 r!7292))) (reg!16816 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regOne!33487 (regTwo!33486 r!7292)) (regTwo!33487 (regTwo!33486 r!7292)))) (= lambda!369514 lambda!369487))))

(declare-fun bs!1695829 () Bool)

(assert (= bs!1695829 (and b!6614896 b!6614009)))

(assert (=> bs!1695829 (not (= lambda!369514 lambda!369449))))

(declare-fun bs!1695830 () Bool)

(assert (= bs!1695830 (and b!6614896 b!6614829)))

(assert (=> bs!1695830 (not (= lambda!369514 lambda!369505))))

(declare-fun bs!1695831 () Bool)

(assert (= bs!1695831 (and b!6614896 b!6614832)))

(assert (=> bs!1695831 (= (and (= (reg!16816 (regOne!33487 (regTwo!33486 r!7292))) (reg!16816 (regTwo!33487 (regOne!33486 r!7292)))) (= (regOne!33487 (regTwo!33486 r!7292)) (regTwo!33487 (regOne!33486 r!7292)))) (= lambda!369514 lambda!369504))))

(declare-fun bs!1695832 () Bool)

(assert (= bs!1695832 (and b!6614896 b!6614669)))

(assert (=> bs!1695832 (not (= lambda!369514 lambda!369495))))

(declare-fun bs!1695833 () Bool)

(assert (= bs!1695833 (and b!6614896 b!6613656)))

(assert (=> bs!1695833 (not (= lambda!369514 lambda!369413))))

(declare-fun bs!1695834 () Bool)

(assert (= bs!1695834 (and b!6614896 d!2073391)))

(assert (=> bs!1695834 (not (= lambda!369514 lambda!369471))))

(assert (=> bs!1695833 (not (= lambda!369514 lambda!369414))))

(declare-fun bs!1695835 () Bool)

(assert (= bs!1695835 (and b!6614896 b!6613889)))

(assert (=> bs!1695835 (not (= lambda!369514 lambda!369443))))

(declare-fun bs!1695836 () Bool)

(assert (= bs!1695836 (and b!6614896 b!6614012)))

(assert (=> bs!1695836 (= (and (= (reg!16816 (regOne!33487 (regTwo!33486 r!7292))) (reg!16816 (regTwo!33486 r!7292))) (= (regOne!33487 (regTwo!33486 r!7292)) (regTwo!33486 r!7292))) (= lambda!369514 lambda!369446))))

(declare-fun bs!1695837 () Bool)

(assert (= bs!1695837 (and b!6614896 d!2073597)))

(assert (=> bs!1695837 (not (= lambda!369514 lambda!369510))))

(declare-fun bs!1695838 () Bool)

(assert (= bs!1695838 (and b!6614896 b!6614672)))

(assert (=> bs!1695838 (= (and (= (reg!16816 (regOne!33487 (regTwo!33486 r!7292))) (reg!16816 (regOne!33487 (regOne!33486 r!7292)))) (= (regOne!33487 (regTwo!33486 r!7292)) (regOne!33487 (regOne!33486 r!7292)))) (= lambda!369514 lambda!369494))))

(declare-fun bs!1695839 () Bool)

(assert (= bs!1695839 (and b!6614896 b!6613892)))

(assert (=> bs!1695839 (= (and (= (reg!16816 (regOne!33487 (regTwo!33486 r!7292))) (reg!16816 (regOne!33486 r!7292))) (= (regOne!33487 (regTwo!33486 r!7292)) (regOne!33486 r!7292))) (= lambda!369514 lambda!369442))))

(declare-fun bs!1695840 () Bool)

(assert (= bs!1695840 (and b!6614896 d!2073386)))

(assert (=> bs!1695840 (not (= lambda!369514 lambda!369466))))

(assert (=> bs!1695837 (not (= lambda!369514 lambda!369511))))

(assert (=> bs!1695834 (not (= lambda!369514 lambda!369473))))

(declare-fun bs!1695841 () Bool)

(assert (= bs!1695841 (and b!6614896 b!6614617)))

(assert (=> bs!1695841 (= (and (= (reg!16816 (regOne!33487 (regTwo!33486 r!7292))) (reg!16816 (regTwo!33487 r!7292))) (= (regOne!33487 (regTwo!33486 r!7292)) (regTwo!33487 r!7292))) (= lambda!369514 lambda!369489))))

(declare-fun bs!1695842 () Bool)

(assert (= bs!1695842 (and b!6614896 b!6614100)))

(assert (=> bs!1695842 (= (and (= (reg!16816 (regOne!33487 (regTwo!33486 r!7292))) (reg!16816 r!7292)) (= (regOne!33487 (regTwo!33486 r!7292)) r!7292)) (= lambda!369514 lambda!369455))))

(assert (=> b!6614896 true))

(assert (=> b!6614896 true))

(declare-fun bs!1695843 () Bool)

(declare-fun b!6614893 () Bool)

(assert (= bs!1695843 (and b!6614893 d!2073549)))

(declare-fun lambda!369515 () Int)

(assert (=> bs!1695843 (not (= lambda!369515 lambda!369501))))

(declare-fun bs!1695844 () Bool)

(assert (= bs!1695844 (and b!6614893 b!6614603)))

(assert (=> bs!1695844 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))))) (= lambda!369515 lambda!369488))))

(declare-fun bs!1695845 () Bool)

(assert (= bs!1695845 (and b!6614893 b!6614097)))

(assert (=> bs!1695845 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369515 lambda!369456))))

(declare-fun bs!1695846 () Bool)

(assert (= bs!1695846 (and b!6614893 b!6614614)))

(assert (=> bs!1695846 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 (regTwo!33487 r!7292))) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regTwo!33487 r!7292)))) (= lambda!369515 lambda!369490))))

(declare-fun bs!1695847 () Bool)

(assert (= bs!1695847 (and b!6614893 b!6614606)))

(assert (=> bs!1695847 (not (= lambda!369515 lambda!369487))))

(declare-fun bs!1695848 () Bool)

(assert (= bs!1695848 (and b!6614893 b!6614896)))

(assert (=> bs!1695848 (not (= lambda!369515 lambda!369514))))

(declare-fun bs!1695849 () Bool)

(assert (= bs!1695849 (and b!6614893 b!6614009)))

(assert (=> bs!1695849 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369515 lambda!369449))))

(declare-fun bs!1695850 () Bool)

(assert (= bs!1695850 (and b!6614893 b!6614829)))

(assert (=> bs!1695850 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 (regTwo!33487 (regOne!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))))) (= lambda!369515 lambda!369505))))

(declare-fun bs!1695851 () Bool)

(assert (= bs!1695851 (and b!6614893 b!6614832)))

(assert (=> bs!1695851 (not (= lambda!369515 lambda!369504))))

(declare-fun bs!1695852 () Bool)

(assert (= bs!1695852 (and b!6614893 b!6614669)))

(assert (=> bs!1695852 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 (regOne!33487 (regOne!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))))) (= lambda!369515 lambda!369495))))

(declare-fun bs!1695853 () Bool)

(assert (= bs!1695853 (and b!6614893 b!6613656)))

(assert (=> bs!1695853 (not (= lambda!369515 lambda!369413))))

(declare-fun bs!1695854 () Bool)

(assert (= bs!1695854 (and b!6614893 d!2073391)))

(assert (=> bs!1695854 (not (= lambda!369515 lambda!369471))))

(assert (=> bs!1695853 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369515 lambda!369414))))

(declare-fun bs!1695855 () Bool)

(assert (= bs!1695855 (and b!6614893 b!6613889)))

(assert (=> bs!1695855 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369515 lambda!369443))))

(declare-fun bs!1695856 () Bool)

(assert (= bs!1695856 (and b!6614893 b!6614012)))

(assert (=> bs!1695856 (not (= lambda!369515 lambda!369446))))

(declare-fun bs!1695857 () Bool)

(assert (= bs!1695857 (and b!6614893 d!2073597)))

(assert (=> bs!1695857 (not (= lambda!369515 lambda!369510))))

(declare-fun bs!1695858 () Bool)

(assert (= bs!1695858 (and b!6614893 b!6614672)))

(assert (=> bs!1695858 (not (= lambda!369515 lambda!369494))))

(declare-fun bs!1695859 () Bool)

(assert (= bs!1695859 (and b!6614893 b!6613892)))

(assert (=> bs!1695859 (not (= lambda!369515 lambda!369442))))

(declare-fun bs!1695860 () Bool)

(assert (= bs!1695860 (and b!6614893 d!2073386)))

(assert (=> bs!1695860 (not (= lambda!369515 lambda!369466))))

(assert (=> bs!1695857 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369515 lambda!369511))))

(assert (=> bs!1695854 (= (and (= (regOne!33486 (regOne!33487 (regTwo!33486 r!7292))) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))) (regTwo!33486 r!7292))) (= lambda!369515 lambda!369473))))

(declare-fun bs!1695861 () Bool)

(assert (= bs!1695861 (and b!6614893 b!6614617)))

(assert (=> bs!1695861 (not (= lambda!369515 lambda!369489))))

(declare-fun bs!1695862 () Bool)

(assert (= bs!1695862 (and b!6614893 b!6614100)))

(assert (=> bs!1695862 (not (= lambda!369515 lambda!369455))))

(assert (=> b!6614893 true))

(assert (=> b!6614893 true))

(declare-fun e!4001904 () Bool)

(declare-fun call!579570 () Bool)

(assert (=> b!6614893 (= e!4001904 call!579570)))

(declare-fun b!6614894 () Bool)

(declare-fun e!4001903 () Bool)

(declare-fun e!4001907 () Bool)

(assert (=> b!6614894 (= e!4001903 e!4001907)))

(declare-fun res!2712514 () Bool)

(assert (=> b!6614894 (= res!2712514 (matchRSpec!3588 (regOne!33487 (regOne!33487 (regTwo!33486 r!7292))) s!2326))))

(assert (=> b!6614894 (=> res!2712514 e!4001907)))

(declare-fun b!6614895 () Bool)

(declare-fun e!4001905 () Bool)

(declare-fun e!4001909 () Bool)

(assert (=> b!6614895 (= e!4001905 e!4001909)))

(declare-fun res!2712513 () Bool)

(assert (=> b!6614895 (= res!2712513 (not ((_ is EmptyLang!16487) (regOne!33487 (regTwo!33486 r!7292)))))))

(assert (=> b!6614895 (=> (not res!2712513) (not e!4001909))))

(declare-fun bm!579565 () Bool)

(declare-fun call!579571 () Bool)

(assert (=> bm!579565 (= call!579571 (isEmpty!37921 s!2326))))

(declare-fun e!4001908 () Bool)

(assert (=> b!6614896 (= e!4001908 call!579570)))

(declare-fun b!6614897 () Bool)

(assert (=> b!6614897 (= e!4001905 call!579571)))

(declare-fun b!6614898 () Bool)

(declare-fun c!1219331 () Bool)

(assert (=> b!6614898 (= c!1219331 ((_ is ElementMatch!16487) (regOne!33487 (regTwo!33486 r!7292))))))

(declare-fun e!4001906 () Bool)

(assert (=> b!6614898 (= e!4001909 e!4001906)))

(declare-fun d!2073621 () Bool)

(declare-fun c!1219328 () Bool)

(assert (=> d!2073621 (= c!1219328 ((_ is EmptyExpr!16487) (regOne!33487 (regTwo!33486 r!7292))))))

(assert (=> d!2073621 (= (matchRSpec!3588 (regOne!33487 (regTwo!33486 r!7292)) s!2326) e!4001905)))

(declare-fun b!6614899 () Bool)

(declare-fun c!1219329 () Bool)

(assert (=> b!6614899 (= c!1219329 ((_ is Union!16487) (regOne!33487 (regTwo!33486 r!7292))))))

(assert (=> b!6614899 (= e!4001906 e!4001903)))

(declare-fun b!6614900 () Bool)

(assert (=> b!6614900 (= e!4001903 e!4001904)))

(declare-fun c!1219330 () Bool)

(assert (=> b!6614900 (= c!1219330 ((_ is Star!16487) (regOne!33487 (regTwo!33486 r!7292))))))

(declare-fun b!6614901 () Bool)

(assert (=> b!6614901 (= e!4001906 (= s!2326 (Cons!65638 (c!1218988 (regOne!33487 (regTwo!33486 r!7292))) Nil!65638)))))

(declare-fun b!6614902 () Bool)

(declare-fun res!2712515 () Bool)

(assert (=> b!6614902 (=> res!2712515 e!4001908)))

(assert (=> b!6614902 (= res!2712515 call!579571)))

(assert (=> b!6614902 (= e!4001904 e!4001908)))

(declare-fun b!6614903 () Bool)

(assert (=> b!6614903 (= e!4001907 (matchRSpec!3588 (regTwo!33487 (regOne!33487 (regTwo!33486 r!7292))) s!2326))))

(declare-fun bm!579566 () Bool)

(assert (=> bm!579566 (= call!579570 (Exists!3557 (ite c!1219330 lambda!369514 lambda!369515)))))

(assert (= (and d!2073621 c!1219328) b!6614897))

(assert (= (and d!2073621 (not c!1219328)) b!6614895))

(assert (= (and b!6614895 res!2712513) b!6614898))

(assert (= (and b!6614898 c!1219331) b!6614901))

(assert (= (and b!6614898 (not c!1219331)) b!6614899))

(assert (= (and b!6614899 c!1219329) b!6614894))

(assert (= (and b!6614899 (not c!1219329)) b!6614900))

(assert (= (and b!6614894 (not res!2712514)) b!6614903))

(assert (= (and b!6614900 c!1219330) b!6614902))

(assert (= (and b!6614900 (not c!1219330)) b!6614893))

(assert (= (and b!6614902 (not res!2712515)) b!6614896))

(assert (= (or b!6614896 b!6614893) bm!579566))

(assert (= (or b!6614897 b!6614902) bm!579565))

(declare-fun m!7388142 () Bool)

(assert (=> b!6614894 m!7388142))

(assert (=> bm!579565 m!7387406))

(declare-fun m!7388144 () Bool)

(assert (=> b!6614903 m!7388144))

(declare-fun m!7388146 () Bool)

(assert (=> bm!579566 m!7388146))

(assert (=> b!6614010 d!2073621))

(declare-fun d!2073623 () Bool)

(assert (=> d!2073623 (= (nullable!6480 (regTwo!33486 r!7292)) (nullableFct!2401 (regTwo!33486 r!7292)))))

(declare-fun bs!1695863 () Bool)

(assert (= bs!1695863 d!2073623))

(declare-fun m!7388148 () Bool)

(assert (=> bs!1695863 m!7388148))

(assert (=> b!6614043 d!2073623))

(assert (=> d!2073333 d!2073331))

(assert (=> d!2073333 d!2073329))

(declare-fun d!2073625 () Bool)

(assert (=> d!2073625 (= (matchR!8670 (regTwo!33486 r!7292) s!2326) (matchRSpec!3588 (regTwo!33486 r!7292) s!2326))))

(assert (=> d!2073625 true))

(declare-fun _$88!5298 () Unit!159303)

(assert (=> d!2073625 (= (choose!49419 (regTwo!33486 r!7292) s!2326) _$88!5298)))

(declare-fun bs!1695864 () Bool)

(assert (= bs!1695864 d!2073625))

(assert (=> bs!1695864 m!7387230))

(assert (=> bs!1695864 m!7387240))

(assert (=> d!2073333 d!2073625))

(assert (=> d!2073333 d!2073471))

(declare-fun d!2073627 () Bool)

(assert (=> d!2073627 (= (isEmpty!37920 (exprs!6371 (h!72085 zl!343))) ((_ is Nil!65636) (exprs!6371 (h!72085 zl!343))))))

(assert (=> b!6613833 d!2073627))

(declare-fun d!2073629 () Bool)

(assert (=> d!2073629 (= (isEmptyLang!1869 lt!2417217) ((_ is EmptyLang!16487) lt!2417217))))

(assert (=> b!6613768 d!2073629))

(declare-fun bs!1695865 () Bool)

(declare-fun b!6614907 () Bool)

(assert (= bs!1695865 (and b!6614907 d!2073549)))

(declare-fun lambda!369516 () Int)

(assert (=> bs!1695865 (not (= lambda!369516 lambda!369501))))

(declare-fun bs!1695866 () Bool)

(assert (= bs!1695866 (and b!6614907 b!6614603)))

(assert (=> bs!1695866 (not (= lambda!369516 lambda!369488))))

(declare-fun bs!1695867 () Bool)

(assert (= bs!1695867 (and b!6614907 b!6614097)))

(assert (=> bs!1695867 (not (= lambda!369516 lambda!369456))))

(declare-fun bs!1695868 () Bool)

(assert (= bs!1695868 (and b!6614907 b!6614614)))

(assert (=> bs!1695868 (not (= lambda!369516 lambda!369490))))

(declare-fun bs!1695869 () Bool)

(assert (= bs!1695869 (and b!6614907 b!6614606)))

(assert (=> bs!1695869 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regOne!33487 r!7292) (regTwo!33487 (regTwo!33486 r!7292)))) (= lambda!369516 lambda!369487))))

(declare-fun bs!1695870 () Bool)

(assert (= bs!1695870 (and b!6614907 b!6614893)))

(assert (=> bs!1695870 (not (= lambda!369516 lambda!369515))))

(declare-fun bs!1695871 () Bool)

(assert (= bs!1695871 (and b!6614907 b!6614896)))

(assert (=> bs!1695871 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 (regOne!33487 (regTwo!33486 r!7292)))) (= (regOne!33487 r!7292) (regOne!33487 (regTwo!33486 r!7292)))) (= lambda!369516 lambda!369514))))

(declare-fun bs!1695872 () Bool)

(assert (= bs!1695872 (and b!6614907 b!6614009)))

(assert (=> bs!1695872 (not (= lambda!369516 lambda!369449))))

(declare-fun bs!1695873 () Bool)

(assert (= bs!1695873 (and b!6614907 b!6614829)))

(assert (=> bs!1695873 (not (= lambda!369516 lambda!369505))))

(declare-fun bs!1695874 () Bool)

(assert (= bs!1695874 (and b!6614907 b!6614832)))

(assert (=> bs!1695874 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 (regTwo!33487 (regOne!33486 r!7292)))) (= (regOne!33487 r!7292) (regTwo!33487 (regOne!33486 r!7292)))) (= lambda!369516 lambda!369504))))

(declare-fun bs!1695875 () Bool)

(assert (= bs!1695875 (and b!6614907 b!6614669)))

(assert (=> bs!1695875 (not (= lambda!369516 lambda!369495))))

(declare-fun bs!1695876 () Bool)

(assert (= bs!1695876 (and b!6614907 b!6613656)))

(assert (=> bs!1695876 (not (= lambda!369516 lambda!369413))))

(declare-fun bs!1695877 () Bool)

(assert (= bs!1695877 (and b!6614907 d!2073391)))

(assert (=> bs!1695877 (not (= lambda!369516 lambda!369471))))

(assert (=> bs!1695876 (not (= lambda!369516 lambda!369414))))

(declare-fun bs!1695878 () Bool)

(assert (= bs!1695878 (and b!6614907 b!6613889)))

(assert (=> bs!1695878 (not (= lambda!369516 lambda!369443))))

(declare-fun bs!1695879 () Bool)

(assert (= bs!1695879 (and b!6614907 b!6614012)))

(assert (=> bs!1695879 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 (regTwo!33486 r!7292))) (= (regOne!33487 r!7292) (regTwo!33486 r!7292))) (= lambda!369516 lambda!369446))))

(declare-fun bs!1695880 () Bool)

(assert (= bs!1695880 (and b!6614907 d!2073597)))

(assert (=> bs!1695880 (not (= lambda!369516 lambda!369510))))

(declare-fun bs!1695881 () Bool)

(assert (= bs!1695881 (and b!6614907 b!6614672)))

(assert (=> bs!1695881 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 (regOne!33487 (regOne!33486 r!7292)))) (= (regOne!33487 r!7292) (regOne!33487 (regOne!33486 r!7292)))) (= lambda!369516 lambda!369494))))

(declare-fun bs!1695882 () Bool)

(assert (= bs!1695882 (and b!6614907 b!6613892)))

(assert (=> bs!1695882 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 (regOne!33486 r!7292))) (= (regOne!33487 r!7292) (regOne!33486 r!7292))) (= lambda!369516 lambda!369442))))

(declare-fun bs!1695883 () Bool)

(assert (= bs!1695883 (and b!6614907 d!2073386)))

(assert (=> bs!1695883 (not (= lambda!369516 lambda!369466))))

(assert (=> bs!1695880 (not (= lambda!369516 lambda!369511))))

(assert (=> bs!1695877 (not (= lambda!369516 lambda!369473))))

(declare-fun bs!1695884 () Bool)

(assert (= bs!1695884 (and b!6614907 b!6614617)))

(assert (=> bs!1695884 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 (regTwo!33487 r!7292))) (= (regOne!33487 r!7292) (regTwo!33487 r!7292))) (= lambda!369516 lambda!369489))))

(declare-fun bs!1695885 () Bool)

(assert (= bs!1695885 (and b!6614907 b!6614100)))

(assert (=> bs!1695885 (= (and (= (reg!16816 (regOne!33487 r!7292)) (reg!16816 r!7292)) (= (regOne!33487 r!7292) r!7292)) (= lambda!369516 lambda!369455))))

(assert (=> b!6614907 true))

(assert (=> b!6614907 true))

(declare-fun bs!1695886 () Bool)

(declare-fun b!6614904 () Bool)

(assert (= bs!1695886 (and b!6614904 d!2073549)))

(declare-fun lambda!369517 () Int)

(assert (=> bs!1695886 (not (= lambda!369517 lambda!369501))))

(declare-fun bs!1695887 () Bool)

(assert (= bs!1695887 (and b!6614904 b!6614603)))

(assert (=> bs!1695887 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 (regTwo!33487 (regTwo!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 (regTwo!33487 (regTwo!33486 r!7292))))) (= lambda!369517 lambda!369488))))

(declare-fun bs!1695888 () Bool)

(assert (= bs!1695888 (and b!6614904 b!6614097)))

(assert (=> bs!1695888 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 r!7292))) (= lambda!369517 lambda!369456))))

(declare-fun bs!1695889 () Bool)

(assert (= bs!1695889 (and b!6614904 b!6614614)))

(assert (=> bs!1695889 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 (regTwo!33487 r!7292))) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 (regTwo!33487 r!7292)))) (= lambda!369517 lambda!369490))))

(declare-fun bs!1695890 () Bool)

(assert (= bs!1695890 (and b!6614904 b!6614606)))

(assert (=> bs!1695890 (not (= lambda!369517 lambda!369487))))

(declare-fun bs!1695891 () Bool)

(assert (= bs!1695891 (and b!6614904 b!6614893)))

(assert (=> bs!1695891 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 (regOne!33487 (regTwo!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 (regOne!33487 (regTwo!33486 r!7292))))) (= lambda!369517 lambda!369515))))

(declare-fun bs!1695892 () Bool)

(assert (= bs!1695892 (and b!6614904 b!6614907)))

(assert (=> bs!1695892 (not (= lambda!369517 lambda!369516))))

(declare-fun bs!1695893 () Bool)

(assert (= bs!1695893 (and b!6614904 b!6614896)))

(assert (=> bs!1695893 (not (= lambda!369517 lambda!369514))))

(declare-fun bs!1695894 () Bool)

(assert (= bs!1695894 (and b!6614904 b!6614009)))

(assert (=> bs!1695894 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 (regTwo!33486 r!7292))) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 (regTwo!33486 r!7292)))) (= lambda!369517 lambda!369449))))

(declare-fun bs!1695895 () Bool)

(assert (= bs!1695895 (and b!6614904 b!6614829)))

(assert (=> bs!1695895 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 (regTwo!33487 (regOne!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 (regTwo!33487 (regOne!33486 r!7292))))) (= lambda!369517 lambda!369505))))

(declare-fun bs!1695896 () Bool)

(assert (= bs!1695896 (and b!6614904 b!6614832)))

(assert (=> bs!1695896 (not (= lambda!369517 lambda!369504))))

(declare-fun bs!1695897 () Bool)

(assert (= bs!1695897 (and b!6614904 b!6614669)))

(assert (=> bs!1695897 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 (regOne!33487 (regOne!33486 r!7292)))) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 (regOne!33487 (regOne!33486 r!7292))))) (= lambda!369517 lambda!369495))))

(declare-fun bs!1695898 () Bool)

(assert (= bs!1695898 (and b!6614904 b!6613656)))

(assert (=> bs!1695898 (not (= lambda!369517 lambda!369413))))

(declare-fun bs!1695899 () Bool)

(assert (= bs!1695899 (and b!6614904 d!2073391)))

(assert (=> bs!1695899 (not (= lambda!369517 lambda!369471))))

(assert (=> bs!1695898 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 r!7292))) (= lambda!369517 lambda!369414))))

(declare-fun bs!1695900 () Bool)

(assert (= bs!1695900 (and b!6614904 b!6613889)))

(assert (=> bs!1695900 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 (regOne!33486 r!7292))) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 (regOne!33486 r!7292)))) (= lambda!369517 lambda!369443))))

(declare-fun bs!1695901 () Bool)

(assert (= bs!1695901 (and b!6614904 b!6614012)))

(assert (=> bs!1695901 (not (= lambda!369517 lambda!369446))))

(declare-fun bs!1695902 () Bool)

(assert (= bs!1695902 (and b!6614904 d!2073597)))

(assert (=> bs!1695902 (not (= lambda!369517 lambda!369510))))

(declare-fun bs!1695903 () Bool)

(assert (= bs!1695903 (and b!6614904 b!6614672)))

(assert (=> bs!1695903 (not (= lambda!369517 lambda!369494))))

(declare-fun bs!1695904 () Bool)

(assert (= bs!1695904 (and b!6614904 b!6613892)))

(assert (=> bs!1695904 (not (= lambda!369517 lambda!369442))))

(declare-fun bs!1695905 () Bool)

(assert (= bs!1695905 (and b!6614904 d!2073386)))

(assert (=> bs!1695905 (not (= lambda!369517 lambda!369466))))

(assert (=> bs!1695902 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 r!7292))) (= lambda!369517 lambda!369511))))

(assert (=> bs!1695899 (= (and (= (regOne!33486 (regOne!33487 r!7292)) (regOne!33486 r!7292)) (= (regTwo!33486 (regOne!33487 r!7292)) (regTwo!33486 r!7292))) (= lambda!369517 lambda!369473))))

(declare-fun bs!1695906 () Bool)

(assert (= bs!1695906 (and b!6614904 b!6614617)))

(assert (=> bs!1695906 (not (= lambda!369517 lambda!369489))))

(declare-fun bs!1695907 () Bool)

(assert (= bs!1695907 (and b!6614904 b!6614100)))

(assert (=> bs!1695907 (not (= lambda!369517 lambda!369455))))

(assert (=> b!6614904 true))

(assert (=> b!6614904 true))

(declare-fun e!4001911 () Bool)

(declare-fun call!579572 () Bool)

(assert (=> b!6614904 (= e!4001911 call!579572)))

(declare-fun b!6614905 () Bool)

(declare-fun e!4001910 () Bool)

(declare-fun e!4001914 () Bool)

(assert (=> b!6614905 (= e!4001910 e!4001914)))

(declare-fun res!2712517 () Bool)

(assert (=> b!6614905 (= res!2712517 (matchRSpec!3588 (regOne!33487 (regOne!33487 r!7292)) s!2326))))

(assert (=> b!6614905 (=> res!2712517 e!4001914)))

(declare-fun b!6614906 () Bool)

(declare-fun e!4001912 () Bool)

(declare-fun e!4001916 () Bool)

(assert (=> b!6614906 (= e!4001912 e!4001916)))

(declare-fun res!2712516 () Bool)

(assert (=> b!6614906 (= res!2712516 (not ((_ is EmptyLang!16487) (regOne!33487 r!7292))))))

(assert (=> b!6614906 (=> (not res!2712516) (not e!4001916))))

(declare-fun bm!579567 () Bool)

(declare-fun call!579573 () Bool)

(assert (=> bm!579567 (= call!579573 (isEmpty!37921 s!2326))))

(declare-fun e!4001915 () Bool)

(assert (=> b!6614907 (= e!4001915 call!579572)))

(declare-fun b!6614908 () Bool)

(assert (=> b!6614908 (= e!4001912 call!579573)))

(declare-fun b!6614909 () Bool)

(declare-fun c!1219335 () Bool)

(assert (=> b!6614909 (= c!1219335 ((_ is ElementMatch!16487) (regOne!33487 r!7292)))))

(declare-fun e!4001913 () Bool)

(assert (=> b!6614909 (= e!4001916 e!4001913)))

(declare-fun d!2073631 () Bool)

(declare-fun c!1219332 () Bool)

(assert (=> d!2073631 (= c!1219332 ((_ is EmptyExpr!16487) (regOne!33487 r!7292)))))

(assert (=> d!2073631 (= (matchRSpec!3588 (regOne!33487 r!7292) s!2326) e!4001912)))

(declare-fun b!6614910 () Bool)

(declare-fun c!1219333 () Bool)

(assert (=> b!6614910 (= c!1219333 ((_ is Union!16487) (regOne!33487 r!7292)))))

(assert (=> b!6614910 (= e!4001913 e!4001910)))

(declare-fun b!6614911 () Bool)

(assert (=> b!6614911 (= e!4001910 e!4001911)))

(declare-fun c!1219334 () Bool)

(assert (=> b!6614911 (= c!1219334 ((_ is Star!16487) (regOne!33487 r!7292)))))

(declare-fun b!6614912 () Bool)

(assert (=> b!6614912 (= e!4001913 (= s!2326 (Cons!65638 (c!1218988 (regOne!33487 r!7292)) Nil!65638)))))

(declare-fun b!6614913 () Bool)

(declare-fun res!2712518 () Bool)

(assert (=> b!6614913 (=> res!2712518 e!4001915)))

(assert (=> b!6614913 (= res!2712518 call!579573)))

(assert (=> b!6614913 (= e!4001911 e!4001915)))

(declare-fun b!6614914 () Bool)

(assert (=> b!6614914 (= e!4001914 (matchRSpec!3588 (regTwo!33487 (regOne!33487 r!7292)) s!2326))))

(declare-fun bm!579568 () Bool)

(assert (=> bm!579568 (= call!579572 (Exists!3557 (ite c!1219334 lambda!369516 lambda!369517)))))

(assert (= (and d!2073631 c!1219332) b!6614908))

(assert (= (and d!2073631 (not c!1219332)) b!6614906))

(assert (= (and b!6614906 res!2712516) b!6614909))

(assert (= (and b!6614909 c!1219335) b!6614912))

(assert (= (and b!6614909 (not c!1219335)) b!6614910))

(assert (= (and b!6614910 c!1219333) b!6614905))

(assert (= (and b!6614910 (not c!1219333)) b!6614911))

(assert (= (and b!6614905 (not res!2712517)) b!6614914))

(assert (= (and b!6614911 c!1219334) b!6614913))

(assert (= (and b!6614911 (not c!1219334)) b!6614904))

(assert (= (and b!6614913 (not res!2712518)) b!6614907))

(assert (= (or b!6614907 b!6614904) bm!579568))

(assert (= (or b!6614908 b!6614913) bm!579567))

(declare-fun m!7388150 () Bool)

(assert (=> b!6614905 m!7388150))

(assert (=> bm!579567 m!7387406))

(declare-fun m!7388152 () Bool)

(assert (=> b!6614914 m!7388152))

(declare-fun m!7388154 () Bool)

(assert (=> bm!579568 m!7388154))

(assert (=> b!6614098 d!2073631))

(assert (=> b!6614127 d!2073447))

(assert (=> b!6614127 d!2073443))

(assert (=> b!6613995 d!2073447))

(assert (=> b!6613995 d!2073443))

(declare-fun d!2073633 () Bool)

(declare-fun res!2712523 () Bool)

(declare-fun e!4001921 () Bool)

(assert (=> d!2073633 (=> res!2712523 e!4001921)))

(assert (=> d!2073633 (= res!2712523 ((_ is Nil!65637) lt!2417258))))

(assert (=> d!2073633 (= (noDuplicate!2287 lt!2417258) e!4001921)))

(declare-fun b!6614919 () Bool)

(declare-fun e!4001922 () Bool)

(assert (=> b!6614919 (= e!4001921 e!4001922)))

(declare-fun res!2712524 () Bool)

(assert (=> b!6614919 (=> (not res!2712524) (not e!4001922))))

(declare-fun contains!20218 (List!65761 Context!11742) Bool)

(assert (=> b!6614919 (= res!2712524 (not (contains!20218 (t!379415 lt!2417258) (h!72085 lt!2417258))))))

(declare-fun b!6614920 () Bool)

(assert (=> b!6614920 (= e!4001922 (noDuplicate!2287 (t!379415 lt!2417258)))))

(assert (= (and d!2073633 (not res!2712523)) b!6614919))

(assert (= (and b!6614919 res!2712524) b!6614920))

(declare-fun m!7388156 () Bool)

(assert (=> b!6614919 m!7388156))

(declare-fun m!7388158 () Bool)

(assert (=> b!6614920 m!7388158))

(assert (=> d!2073361 d!2073633))

(declare-fun d!2073635 () Bool)

(declare-fun e!4001929 () Bool)

(assert (=> d!2073635 e!4001929))

(declare-fun res!2712529 () Bool)

(assert (=> d!2073635 (=> (not res!2712529) (not e!4001929))))

(declare-fun res!2712530 () List!65761)

(assert (=> d!2073635 (= res!2712529 (noDuplicate!2287 res!2712530))))

(declare-fun e!4001931 () Bool)

(assert (=> d!2073635 e!4001931))

(assert (=> d!2073635 (= (choose!49422 z!1189) res!2712530)))

(declare-fun b!6614928 () Bool)

(declare-fun e!4001930 () Bool)

(declare-fun tp!1821775 () Bool)

(assert (=> b!6614928 (= e!4001930 tp!1821775)))

(declare-fun b!6614927 () Bool)

(declare-fun tp!1821774 () Bool)

(assert (=> b!6614927 (= e!4001931 (and (inv!84464 (h!72085 res!2712530)) e!4001930 tp!1821774))))

(declare-fun b!6614929 () Bool)

(assert (=> b!6614929 (= e!4001929 (= (content!12661 res!2712530) z!1189))))

(assert (= b!6614927 b!6614928))

(assert (= (and d!2073635 ((_ is Cons!65637) res!2712530)) b!6614927))

(assert (= (and d!2073635 res!2712529) b!6614929))

(declare-fun m!7388160 () Bool)

(assert (=> d!2073635 m!7388160))

(declare-fun m!7388162 () Bool)

(assert (=> b!6614927 m!7388162))

(declare-fun m!7388164 () Bool)

(assert (=> b!6614929 m!7388164))

(assert (=> d!2073361 d!2073635))

(declare-fun d!2073637 () Bool)

(declare-fun c!1219338 () Bool)

(assert (=> d!2073637 (= c!1219338 ((_ is Nil!65637) lt!2417258))))

(declare-fun e!4001934 () (InoxSet Context!11742))

(assert (=> d!2073637 (= (content!12661 lt!2417258) e!4001934)))

(declare-fun b!6614934 () Bool)

(assert (=> b!6614934 (= e!4001934 ((as const (Array Context!11742 Bool)) false))))

(declare-fun b!6614935 () Bool)

(assert (=> b!6614935 (= e!4001934 ((_ map or) (store ((as const (Array Context!11742 Bool)) false) (h!72085 lt!2417258) true) (content!12661 (t!379415 lt!2417258))))))

(assert (= (and d!2073637 c!1219338) b!6614934))

(assert (= (and d!2073637 (not c!1219338)) b!6614935))

(declare-fun m!7388166 () Bool)

(assert (=> b!6614935 m!7388166))

(declare-fun m!7388168 () Bool)

(assert (=> b!6614935 m!7388168))

(assert (=> b!6614131 d!2073637))

(declare-fun b!6614939 () Bool)

(declare-fun e!4001935 () Bool)

(declare-fun tp!1821780 () Bool)

(declare-fun tp!1821776 () Bool)

(assert (=> b!6614939 (= e!4001935 (and tp!1821780 tp!1821776))))

(declare-fun b!6614938 () Bool)

(declare-fun tp!1821777 () Bool)

(assert (=> b!6614938 (= e!4001935 tp!1821777)))

(declare-fun b!6614937 () Bool)

(declare-fun tp!1821778 () Bool)

(declare-fun tp!1821779 () Bool)

(assert (=> b!6614937 (= e!4001935 (and tp!1821778 tp!1821779))))

(assert (=> b!6614256 (= tp!1821670 e!4001935)))

(declare-fun b!6614936 () Bool)

(assert (=> b!6614936 (= e!4001935 tp_is_empty!42227)))

(assert (= (and b!6614256 ((_ is ElementMatch!16487) (reg!16816 (regTwo!33486 r!7292)))) b!6614936))

(assert (= (and b!6614256 ((_ is Concat!25332) (reg!16816 (regTwo!33486 r!7292)))) b!6614937))

(assert (= (and b!6614256 ((_ is Star!16487) (reg!16816 (regTwo!33486 r!7292)))) b!6614938))

(assert (= (and b!6614256 ((_ is Union!16487) (reg!16816 (regTwo!33486 r!7292)))) b!6614939))

(declare-fun b!6614943 () Bool)

(declare-fun e!4001936 () Bool)

(declare-fun tp!1821785 () Bool)

(declare-fun tp!1821781 () Bool)

(assert (=> b!6614943 (= e!4001936 (and tp!1821785 tp!1821781))))

(declare-fun b!6614942 () Bool)

(declare-fun tp!1821782 () Bool)

(assert (=> b!6614942 (= e!4001936 tp!1821782)))

(declare-fun b!6614941 () Bool)

(declare-fun tp!1821783 () Bool)

(declare-fun tp!1821784 () Bool)

(assert (=> b!6614941 (= e!4001936 (and tp!1821783 tp!1821784))))

(assert (=> b!6614288 (= tp!1821704 e!4001936)))

(declare-fun b!6614940 () Bool)

(assert (=> b!6614940 (= e!4001936 tp_is_empty!42227)))

(assert (= (and b!6614288 ((_ is ElementMatch!16487) (h!72084 (exprs!6371 (h!72085 zl!343))))) b!6614940))

(assert (= (and b!6614288 ((_ is Concat!25332) (h!72084 (exprs!6371 (h!72085 zl!343))))) b!6614941))

(assert (= (and b!6614288 ((_ is Star!16487) (h!72084 (exprs!6371 (h!72085 zl!343))))) b!6614942))

(assert (= (and b!6614288 ((_ is Union!16487) (h!72084 (exprs!6371 (h!72085 zl!343))))) b!6614943))

(declare-fun b!6614944 () Bool)

(declare-fun e!4001937 () Bool)

(declare-fun tp!1821786 () Bool)

(declare-fun tp!1821787 () Bool)

(assert (=> b!6614944 (= e!4001937 (and tp!1821786 tp!1821787))))

(assert (=> b!6614288 (= tp!1821705 e!4001937)))

(assert (= (and b!6614288 ((_ is Cons!65636) (t!379414 (exprs!6371 (h!72085 zl!343))))) b!6614944))

(declare-fun b!6614948 () Bool)

(declare-fun e!4001938 () Bool)

(declare-fun tp!1821792 () Bool)

(declare-fun tp!1821788 () Bool)

(assert (=> b!6614948 (= e!4001938 (and tp!1821792 tp!1821788))))

(declare-fun b!6614947 () Bool)

(declare-fun tp!1821789 () Bool)

(assert (=> b!6614947 (= e!4001938 tp!1821789)))

(declare-fun b!6614946 () Bool)

(declare-fun tp!1821790 () Bool)

(declare-fun tp!1821791 () Bool)

(assert (=> b!6614946 (= e!4001938 (and tp!1821790 tp!1821791))))

(assert (=> b!6614255 (= tp!1821671 e!4001938)))

(declare-fun b!6614945 () Bool)

(assert (=> b!6614945 (= e!4001938 tp_is_empty!42227)))

(assert (= (and b!6614255 ((_ is ElementMatch!16487) (regOne!33486 (regTwo!33486 r!7292)))) b!6614945))

(assert (= (and b!6614255 ((_ is Concat!25332) (regOne!33486 (regTwo!33486 r!7292)))) b!6614946))

(assert (= (and b!6614255 ((_ is Star!16487) (regOne!33486 (regTwo!33486 r!7292)))) b!6614947))

(assert (= (and b!6614255 ((_ is Union!16487) (regOne!33486 (regTwo!33486 r!7292)))) b!6614948))

(declare-fun b!6614952 () Bool)

(declare-fun e!4001939 () Bool)

(declare-fun tp!1821797 () Bool)

(declare-fun tp!1821793 () Bool)

(assert (=> b!6614952 (= e!4001939 (and tp!1821797 tp!1821793))))

(declare-fun b!6614951 () Bool)

(declare-fun tp!1821794 () Bool)

(assert (=> b!6614951 (= e!4001939 tp!1821794)))

(declare-fun b!6614950 () Bool)

(declare-fun tp!1821795 () Bool)

(declare-fun tp!1821796 () Bool)

(assert (=> b!6614950 (= e!4001939 (and tp!1821795 tp!1821796))))

(assert (=> b!6614255 (= tp!1821672 e!4001939)))

(declare-fun b!6614949 () Bool)

(assert (=> b!6614949 (= e!4001939 tp_is_empty!42227)))

(assert (= (and b!6614255 ((_ is ElementMatch!16487) (regTwo!33486 (regTwo!33486 r!7292)))) b!6614949))

(assert (= (and b!6614255 ((_ is Concat!25332) (regTwo!33486 (regTwo!33486 r!7292)))) b!6614950))

(assert (= (and b!6614255 ((_ is Star!16487) (regTwo!33486 (regTwo!33486 r!7292)))) b!6614951))

(assert (= (and b!6614255 ((_ is Union!16487) (regTwo!33486 (regTwo!33486 r!7292)))) b!6614952))

(declare-fun b!6614953 () Bool)

(declare-fun e!4001940 () Bool)

(declare-fun tp!1821798 () Bool)

(declare-fun tp!1821799 () Bool)

(assert (=> b!6614953 (= e!4001940 (and tp!1821798 tp!1821799))))

(assert (=> b!6614274 (= tp!1821689 e!4001940)))

(assert (= (and b!6614274 ((_ is Cons!65636) (exprs!6371 (h!72085 (t!379415 zl!343))))) b!6614953))

(declare-fun b!6614957 () Bool)

(declare-fun e!4001941 () Bool)

(declare-fun tp!1821804 () Bool)

(declare-fun tp!1821800 () Bool)

(assert (=> b!6614957 (= e!4001941 (and tp!1821804 tp!1821800))))

(declare-fun b!6614956 () Bool)

(declare-fun tp!1821801 () Bool)

(assert (=> b!6614956 (= e!4001941 tp!1821801)))

(declare-fun b!6614955 () Bool)

(declare-fun tp!1821802 () Bool)

(declare-fun tp!1821803 () Bool)

(assert (=> b!6614955 (= e!4001941 (and tp!1821802 tp!1821803))))

(assert (=> b!6614239 (= tp!1821652 e!4001941)))

(declare-fun b!6614954 () Bool)

(assert (=> b!6614954 (= e!4001941 tp_is_empty!42227)))

(assert (= (and b!6614239 ((_ is ElementMatch!16487) (h!72084 (exprs!6371 setElem!45196)))) b!6614954))

(assert (= (and b!6614239 ((_ is Concat!25332) (h!72084 (exprs!6371 setElem!45196)))) b!6614955))

(assert (= (and b!6614239 ((_ is Star!16487) (h!72084 (exprs!6371 setElem!45196)))) b!6614956))

(assert (= (and b!6614239 ((_ is Union!16487) (h!72084 (exprs!6371 setElem!45196)))) b!6614957))

(declare-fun b!6614958 () Bool)

(declare-fun e!4001942 () Bool)

(declare-fun tp!1821805 () Bool)

(declare-fun tp!1821806 () Bool)

(assert (=> b!6614958 (= e!4001942 (and tp!1821805 tp!1821806))))

(assert (=> b!6614239 (= tp!1821653 e!4001942)))

(assert (= (and b!6614239 ((_ is Cons!65636) (t!379414 (exprs!6371 setElem!45196)))) b!6614958))

(declare-fun b!6614960 () Bool)

(declare-fun e!4001944 () Bool)

(declare-fun tp!1821807 () Bool)

(assert (=> b!6614960 (= e!4001944 tp!1821807)))

(declare-fun tp!1821808 () Bool)

(declare-fun e!4001943 () Bool)

(declare-fun b!6614959 () Bool)

(assert (=> b!6614959 (= e!4001943 (and (inv!84464 (h!72085 (t!379415 (t!379415 zl!343)))) e!4001944 tp!1821808))))

(assert (=> b!6614273 (= tp!1821690 e!4001943)))

(assert (= b!6614959 b!6614960))

(assert (= (and b!6614273 ((_ is Cons!65637) (t!379415 (t!379415 zl!343)))) b!6614959))

(declare-fun m!7388170 () Bool)

(assert (=> b!6614959 m!7388170))

(declare-fun b!6614961 () Bool)

(declare-fun e!4001945 () Bool)

(declare-fun tp!1821809 () Bool)

(assert (=> b!6614961 (= e!4001945 (and tp_is_empty!42227 tp!1821809))))

(assert (=> b!6614279 (= tp!1821693 e!4001945)))

(assert (= (and b!6614279 ((_ is Cons!65638) (t!379416 (t!379416 s!2326)))) b!6614961))

(declare-fun b!6614965 () Bool)

(declare-fun e!4001946 () Bool)

(declare-fun tp!1821814 () Bool)

(declare-fun tp!1821810 () Bool)

(assert (=> b!6614965 (= e!4001946 (and tp!1821814 tp!1821810))))

(declare-fun b!6614964 () Bool)

(declare-fun tp!1821811 () Bool)

(assert (=> b!6614964 (= e!4001946 tp!1821811)))

(declare-fun b!6614963 () Bool)

(declare-fun tp!1821812 () Bool)

(declare-fun tp!1821813 () Bool)

(assert (=> b!6614963 (= e!4001946 (and tp!1821812 tp!1821813))))

(assert (=> b!6614287 (= tp!1821703 e!4001946)))

(declare-fun b!6614962 () Bool)

(assert (=> b!6614962 (= e!4001946 tp_is_empty!42227)))

(assert (= (and b!6614287 ((_ is ElementMatch!16487) (regOne!33487 (regTwo!33487 r!7292)))) b!6614962))

(assert (= (and b!6614287 ((_ is Concat!25332) (regOne!33487 (regTwo!33487 r!7292)))) b!6614963))

(assert (= (and b!6614287 ((_ is Star!16487) (regOne!33487 (regTwo!33487 r!7292)))) b!6614964))

(assert (= (and b!6614287 ((_ is Union!16487) (regOne!33487 (regTwo!33487 r!7292)))) b!6614965))

(declare-fun b!6614969 () Bool)

(declare-fun e!4001947 () Bool)

(declare-fun tp!1821819 () Bool)

(declare-fun tp!1821815 () Bool)

(assert (=> b!6614969 (= e!4001947 (and tp!1821819 tp!1821815))))

(declare-fun b!6614968 () Bool)

(declare-fun tp!1821816 () Bool)

(assert (=> b!6614968 (= e!4001947 tp!1821816)))

(declare-fun b!6614967 () Bool)

(declare-fun tp!1821817 () Bool)

(declare-fun tp!1821818 () Bool)

(assert (=> b!6614967 (= e!4001947 (and tp!1821817 tp!1821818))))

(assert (=> b!6614287 (= tp!1821699 e!4001947)))

(declare-fun b!6614966 () Bool)

(assert (=> b!6614966 (= e!4001947 tp_is_empty!42227)))

(assert (= (and b!6614287 ((_ is ElementMatch!16487) (regTwo!33487 (regTwo!33487 r!7292)))) b!6614966))

(assert (= (and b!6614287 ((_ is Concat!25332) (regTwo!33487 (regTwo!33487 r!7292)))) b!6614967))

(assert (= (and b!6614287 ((_ is Star!16487) (regTwo!33487 (regTwo!33487 r!7292)))) b!6614968))

(assert (= (and b!6614287 ((_ is Union!16487) (regTwo!33487 (regTwo!33487 r!7292)))) b!6614969))

(declare-fun b!6614973 () Bool)

(declare-fun e!4001948 () Bool)

(declare-fun tp!1821824 () Bool)

(declare-fun tp!1821820 () Bool)

(assert (=> b!6614973 (= e!4001948 (and tp!1821824 tp!1821820))))

(declare-fun b!6614972 () Bool)

(declare-fun tp!1821821 () Bool)

(assert (=> b!6614972 (= e!4001948 tp!1821821)))

(declare-fun b!6614971 () Bool)

(declare-fun tp!1821822 () Bool)

(declare-fun tp!1821823 () Bool)

(assert (=> b!6614971 (= e!4001948 (and tp!1821822 tp!1821823))))

(assert (=> b!6614261 (= tp!1821678 e!4001948)))

(declare-fun b!6614970 () Bool)

(assert (=> b!6614970 (= e!4001948 tp_is_empty!42227)))

(assert (= (and b!6614261 ((_ is ElementMatch!16487) (regOne!33487 (reg!16816 r!7292)))) b!6614970))

(assert (= (and b!6614261 ((_ is Concat!25332) (regOne!33487 (reg!16816 r!7292)))) b!6614971))

(assert (= (and b!6614261 ((_ is Star!16487) (regOne!33487 (reg!16816 r!7292)))) b!6614972))

(assert (= (and b!6614261 ((_ is Union!16487) (regOne!33487 (reg!16816 r!7292)))) b!6614973))

(declare-fun b!6614977 () Bool)

(declare-fun e!4001949 () Bool)

(declare-fun tp!1821829 () Bool)

(declare-fun tp!1821825 () Bool)

(assert (=> b!6614977 (= e!4001949 (and tp!1821829 tp!1821825))))

(declare-fun b!6614976 () Bool)

(declare-fun tp!1821826 () Bool)

(assert (=> b!6614976 (= e!4001949 tp!1821826)))

(declare-fun b!6614975 () Bool)

(declare-fun tp!1821827 () Bool)

(declare-fun tp!1821828 () Bool)

(assert (=> b!6614975 (= e!4001949 (and tp!1821827 tp!1821828))))

(assert (=> b!6614261 (= tp!1821674 e!4001949)))

(declare-fun b!6614974 () Bool)

(assert (=> b!6614974 (= e!4001949 tp_is_empty!42227)))

(assert (= (and b!6614261 ((_ is ElementMatch!16487) (regTwo!33487 (reg!16816 r!7292)))) b!6614974))

(assert (= (and b!6614261 ((_ is Concat!25332) (regTwo!33487 (reg!16816 r!7292)))) b!6614975))

(assert (= (and b!6614261 ((_ is Star!16487) (regTwo!33487 (reg!16816 r!7292)))) b!6614976))

(assert (= (and b!6614261 ((_ is Union!16487) (regTwo!33487 (reg!16816 r!7292)))) b!6614977))

(declare-fun b!6614978 () Bool)

(declare-fun e!4001950 () Bool)

(declare-fun tp!1821830 () Bool)

(declare-fun tp!1821831 () Bool)

(assert (=> b!6614978 (= e!4001950 (and tp!1821830 tp!1821831))))

(assert (=> b!6614266 (= tp!1821683 e!4001950)))

(assert (= (and b!6614266 ((_ is Cons!65636) (exprs!6371 setElem!45199))) b!6614978))

(declare-fun b!6614982 () Bool)

(declare-fun e!4001951 () Bool)

(declare-fun tp!1821836 () Bool)

(declare-fun tp!1821832 () Bool)

(assert (=> b!6614982 (= e!4001951 (and tp!1821836 tp!1821832))))

(declare-fun b!6614981 () Bool)

(declare-fun tp!1821833 () Bool)

(assert (=> b!6614981 (= e!4001951 tp!1821833)))

(declare-fun b!6614980 () Bool)

(declare-fun tp!1821834 () Bool)

(declare-fun tp!1821835 () Bool)

(assert (=> b!6614980 (= e!4001951 (and tp!1821834 tp!1821835))))

(assert (=> b!6614286 (= tp!1821700 e!4001951)))

(declare-fun b!6614979 () Bool)

(assert (=> b!6614979 (= e!4001951 tp_is_empty!42227)))

(assert (= (and b!6614286 ((_ is ElementMatch!16487) (reg!16816 (regTwo!33487 r!7292)))) b!6614979))

(assert (= (and b!6614286 ((_ is Concat!25332) (reg!16816 (regTwo!33487 r!7292)))) b!6614980))

(assert (= (and b!6614286 ((_ is Star!16487) (reg!16816 (regTwo!33487 r!7292)))) b!6614981))

(assert (= (and b!6614286 ((_ is Union!16487) (reg!16816 (regTwo!33487 r!7292)))) b!6614982))

(declare-fun b!6614986 () Bool)

(declare-fun e!4001952 () Bool)

(declare-fun tp!1821841 () Bool)

(declare-fun tp!1821837 () Bool)

(assert (=> b!6614986 (= e!4001952 (and tp!1821841 tp!1821837))))

(declare-fun b!6614985 () Bool)

(declare-fun tp!1821838 () Bool)

(assert (=> b!6614985 (= e!4001952 tp!1821838)))

(declare-fun b!6614984 () Bool)

(declare-fun tp!1821839 () Bool)

(declare-fun tp!1821840 () Bool)

(assert (=> b!6614984 (= e!4001952 (and tp!1821839 tp!1821840))))

(assert (=> b!6614252 (= tp!1821665 e!4001952)))

(declare-fun b!6614983 () Bool)

(assert (=> b!6614983 (= e!4001952 tp_is_empty!42227)))

(assert (= (and b!6614252 ((_ is ElementMatch!16487) (reg!16816 (regOne!33486 r!7292)))) b!6614983))

(assert (= (and b!6614252 ((_ is Concat!25332) (reg!16816 (regOne!33486 r!7292)))) b!6614984))

(assert (= (and b!6614252 ((_ is Star!16487) (reg!16816 (regOne!33486 r!7292)))) b!6614985))

(assert (= (and b!6614252 ((_ is Union!16487) (reg!16816 (regOne!33486 r!7292)))) b!6614986))

(declare-fun b!6614990 () Bool)

(declare-fun e!4001953 () Bool)

(declare-fun tp!1821846 () Bool)

(declare-fun tp!1821842 () Bool)

(assert (=> b!6614990 (= e!4001953 (and tp!1821846 tp!1821842))))

(declare-fun b!6614989 () Bool)

(declare-fun tp!1821843 () Bool)

(assert (=> b!6614989 (= e!4001953 tp!1821843)))

(declare-fun b!6614988 () Bool)

(declare-fun tp!1821844 () Bool)

(declare-fun tp!1821845 () Bool)

(assert (=> b!6614988 (= e!4001953 (and tp!1821844 tp!1821845))))

(assert (=> b!6614260 (= tp!1821675 e!4001953)))

(declare-fun b!6614987 () Bool)

(assert (=> b!6614987 (= e!4001953 tp_is_empty!42227)))

(assert (= (and b!6614260 ((_ is ElementMatch!16487) (reg!16816 (reg!16816 r!7292)))) b!6614987))

(assert (= (and b!6614260 ((_ is Concat!25332) (reg!16816 (reg!16816 r!7292)))) b!6614988))

(assert (= (and b!6614260 ((_ is Star!16487) (reg!16816 (reg!16816 r!7292)))) b!6614989))

(assert (= (and b!6614260 ((_ is Union!16487) (reg!16816 (reg!16816 r!7292)))) b!6614990))

(declare-fun b!6614994 () Bool)

(declare-fun e!4001954 () Bool)

(declare-fun tp!1821851 () Bool)

(declare-fun tp!1821847 () Bool)

(assert (=> b!6614994 (= e!4001954 (and tp!1821851 tp!1821847))))

(declare-fun b!6614993 () Bool)

(declare-fun tp!1821848 () Bool)

(assert (=> b!6614993 (= e!4001954 tp!1821848)))

(declare-fun b!6614992 () Bool)

(declare-fun tp!1821849 () Bool)

(declare-fun tp!1821850 () Bool)

(assert (=> b!6614992 (= e!4001954 (and tp!1821849 tp!1821850))))

(assert (=> b!6614253 (= tp!1821668 e!4001954)))

(declare-fun b!6614991 () Bool)

(assert (=> b!6614991 (= e!4001954 tp_is_empty!42227)))

(assert (= (and b!6614253 ((_ is ElementMatch!16487) (regOne!33487 (regOne!33486 r!7292)))) b!6614991))

(assert (= (and b!6614253 ((_ is Concat!25332) (regOne!33487 (regOne!33486 r!7292)))) b!6614992))

(assert (= (and b!6614253 ((_ is Star!16487) (regOne!33487 (regOne!33486 r!7292)))) b!6614993))

(assert (= (and b!6614253 ((_ is Union!16487) (regOne!33487 (regOne!33486 r!7292)))) b!6614994))

(declare-fun b!6614998 () Bool)

(declare-fun e!4001955 () Bool)

(declare-fun tp!1821856 () Bool)

(declare-fun tp!1821852 () Bool)

(assert (=> b!6614998 (= e!4001955 (and tp!1821856 tp!1821852))))

(declare-fun b!6614997 () Bool)

(declare-fun tp!1821853 () Bool)

(assert (=> b!6614997 (= e!4001955 tp!1821853)))

(declare-fun b!6614996 () Bool)

(declare-fun tp!1821854 () Bool)

(declare-fun tp!1821855 () Bool)

(assert (=> b!6614996 (= e!4001955 (and tp!1821854 tp!1821855))))

(assert (=> b!6614253 (= tp!1821664 e!4001955)))

(declare-fun b!6614995 () Bool)

(assert (=> b!6614995 (= e!4001955 tp_is_empty!42227)))

(assert (= (and b!6614253 ((_ is ElementMatch!16487) (regTwo!33487 (regOne!33486 r!7292)))) b!6614995))

(assert (= (and b!6614253 ((_ is Concat!25332) (regTwo!33487 (regOne!33486 r!7292)))) b!6614996))

(assert (= (and b!6614253 ((_ is Star!16487) (regTwo!33487 (regOne!33486 r!7292)))) b!6614997))

(assert (= (and b!6614253 ((_ is Union!16487) (regTwo!33487 (regOne!33486 r!7292)))) b!6614998))

(declare-fun condSetEmpty!45206 () Bool)

(assert (=> setNonEmpty!45199 (= condSetEmpty!45206 (= setRest!45199 ((as const (Array Context!11742 Bool)) false)))))

(declare-fun setRes!45206 () Bool)

(assert (=> setNonEmpty!45199 (= tp!1821684 setRes!45206)))

(declare-fun setIsEmpty!45206 () Bool)

(assert (=> setIsEmpty!45206 setRes!45206))

(declare-fun e!4001956 () Bool)

(declare-fun tp!1821858 () Bool)

(declare-fun setNonEmpty!45206 () Bool)

(declare-fun setElem!45206 () Context!11742)

(assert (=> setNonEmpty!45206 (= setRes!45206 (and tp!1821858 (inv!84464 setElem!45206) e!4001956))))

(declare-fun setRest!45206 () (InoxSet Context!11742))

(assert (=> setNonEmpty!45206 (= setRest!45199 ((_ map or) (store ((as const (Array Context!11742 Bool)) false) setElem!45206 true) setRest!45206))))

(declare-fun b!6614999 () Bool)

(declare-fun tp!1821857 () Bool)

(assert (=> b!6614999 (= e!4001956 tp!1821857)))

(assert (= (and setNonEmpty!45199 condSetEmpty!45206) setIsEmpty!45206))

(assert (= (and setNonEmpty!45199 (not condSetEmpty!45206)) setNonEmpty!45206))

(assert (= setNonEmpty!45206 b!6614999))

(declare-fun m!7388172 () Bool)

(assert (=> setNonEmpty!45206 m!7388172))

(declare-fun b!6615003 () Bool)

(declare-fun e!4001957 () Bool)

(declare-fun tp!1821863 () Bool)

(declare-fun tp!1821859 () Bool)

(assert (=> b!6615003 (= e!4001957 (and tp!1821863 tp!1821859))))

(declare-fun b!6615002 () Bool)

(declare-fun tp!1821860 () Bool)

(assert (=> b!6615002 (= e!4001957 tp!1821860)))

(declare-fun b!6615001 () Bool)

(declare-fun tp!1821861 () Bool)

(declare-fun tp!1821862 () Bool)

(assert (=> b!6615001 (= e!4001957 (and tp!1821861 tp!1821862))))

(assert (=> b!6614285 (= tp!1821701 e!4001957)))

(declare-fun b!6615000 () Bool)

(assert (=> b!6615000 (= e!4001957 tp_is_empty!42227)))

(assert (= (and b!6614285 ((_ is ElementMatch!16487) (regOne!33486 (regTwo!33487 r!7292)))) b!6615000))

(assert (= (and b!6614285 ((_ is Concat!25332) (regOne!33486 (regTwo!33487 r!7292)))) b!6615001))

(assert (= (and b!6614285 ((_ is Star!16487) (regOne!33486 (regTwo!33487 r!7292)))) b!6615002))

(assert (= (and b!6614285 ((_ is Union!16487) (regOne!33486 (regTwo!33487 r!7292)))) b!6615003))

(declare-fun b!6615007 () Bool)

(declare-fun e!4001958 () Bool)

(declare-fun tp!1821868 () Bool)

(declare-fun tp!1821864 () Bool)

(assert (=> b!6615007 (= e!4001958 (and tp!1821868 tp!1821864))))

(declare-fun b!6615006 () Bool)

(declare-fun tp!1821865 () Bool)

(assert (=> b!6615006 (= e!4001958 tp!1821865)))

(declare-fun b!6615005 () Bool)

(declare-fun tp!1821866 () Bool)

(declare-fun tp!1821867 () Bool)

(assert (=> b!6615005 (= e!4001958 (and tp!1821866 tp!1821867))))

(assert (=> b!6614285 (= tp!1821702 e!4001958)))

(declare-fun b!6615004 () Bool)

(assert (=> b!6615004 (= e!4001958 tp_is_empty!42227)))

(assert (= (and b!6614285 ((_ is ElementMatch!16487) (regTwo!33486 (regTwo!33487 r!7292)))) b!6615004))

(assert (= (and b!6614285 ((_ is Concat!25332) (regTwo!33486 (regTwo!33487 r!7292)))) b!6615005))

(assert (= (and b!6614285 ((_ is Star!16487) (regTwo!33486 (regTwo!33487 r!7292)))) b!6615006))

(assert (= (and b!6614285 ((_ is Union!16487) (regTwo!33486 (regTwo!33487 r!7292)))) b!6615007))

(declare-fun b!6615011 () Bool)

(declare-fun e!4001959 () Bool)

(declare-fun tp!1821873 () Bool)

(declare-fun tp!1821869 () Bool)

(assert (=> b!6615011 (= e!4001959 (and tp!1821873 tp!1821869))))

(declare-fun b!6615010 () Bool)

(declare-fun tp!1821870 () Bool)

(assert (=> b!6615010 (= e!4001959 tp!1821870)))

(declare-fun b!6615009 () Bool)

(declare-fun tp!1821871 () Bool)

(declare-fun tp!1821872 () Bool)

(assert (=> b!6615009 (= e!4001959 (and tp!1821871 tp!1821872))))

(assert (=> b!6614251 (= tp!1821666 e!4001959)))

(declare-fun b!6615008 () Bool)

(assert (=> b!6615008 (= e!4001959 tp_is_empty!42227)))

(assert (= (and b!6614251 ((_ is ElementMatch!16487) (regOne!33486 (regOne!33486 r!7292)))) b!6615008))

(assert (= (and b!6614251 ((_ is Concat!25332) (regOne!33486 (regOne!33486 r!7292)))) b!6615009))

(assert (= (and b!6614251 ((_ is Star!16487) (regOne!33486 (regOne!33486 r!7292)))) b!6615010))

(assert (= (and b!6614251 ((_ is Union!16487) (regOne!33486 (regOne!33486 r!7292)))) b!6615011))

(declare-fun b!6615015 () Bool)

(declare-fun e!4001960 () Bool)

(declare-fun tp!1821878 () Bool)

(declare-fun tp!1821874 () Bool)

(assert (=> b!6615015 (= e!4001960 (and tp!1821878 tp!1821874))))

(declare-fun b!6615014 () Bool)

(declare-fun tp!1821875 () Bool)

(assert (=> b!6615014 (= e!4001960 tp!1821875)))

(declare-fun b!6615013 () Bool)

(declare-fun tp!1821876 () Bool)

(declare-fun tp!1821877 () Bool)

(assert (=> b!6615013 (= e!4001960 (and tp!1821876 tp!1821877))))

(assert (=> b!6614251 (= tp!1821667 e!4001960)))

(declare-fun b!6615012 () Bool)

(assert (=> b!6615012 (= e!4001960 tp_is_empty!42227)))

(assert (= (and b!6614251 ((_ is ElementMatch!16487) (regTwo!33486 (regOne!33486 r!7292)))) b!6615012))

(assert (= (and b!6614251 ((_ is Concat!25332) (regTwo!33486 (regOne!33486 r!7292)))) b!6615013))

(assert (= (and b!6614251 ((_ is Star!16487) (regTwo!33486 (regOne!33486 r!7292)))) b!6615014))

(assert (= (and b!6614251 ((_ is Union!16487) (regTwo!33486 (regOne!33486 r!7292)))) b!6615015))

(declare-fun b!6615019 () Bool)

(declare-fun e!4001961 () Bool)

(declare-fun tp!1821883 () Bool)

(declare-fun tp!1821879 () Bool)

(assert (=> b!6615019 (= e!4001961 (and tp!1821883 tp!1821879))))

(declare-fun b!6615018 () Bool)

(declare-fun tp!1821880 () Bool)

(assert (=> b!6615018 (= e!4001961 tp!1821880)))

(declare-fun b!6615017 () Bool)

(declare-fun tp!1821881 () Bool)

(declare-fun tp!1821882 () Bool)

(assert (=> b!6615017 (= e!4001961 (and tp!1821881 tp!1821882))))

(assert (=> b!6614259 (= tp!1821676 e!4001961)))

(declare-fun b!6615016 () Bool)

(assert (=> b!6615016 (= e!4001961 tp_is_empty!42227)))

(assert (= (and b!6614259 ((_ is ElementMatch!16487) (regOne!33486 (reg!16816 r!7292)))) b!6615016))

(assert (= (and b!6614259 ((_ is Concat!25332) (regOne!33486 (reg!16816 r!7292)))) b!6615017))

(assert (= (and b!6614259 ((_ is Star!16487) (regOne!33486 (reg!16816 r!7292)))) b!6615018))

(assert (= (and b!6614259 ((_ is Union!16487) (regOne!33486 (reg!16816 r!7292)))) b!6615019))

(declare-fun b!6615023 () Bool)

(declare-fun e!4001962 () Bool)

(declare-fun tp!1821888 () Bool)

(declare-fun tp!1821884 () Bool)

(assert (=> b!6615023 (= e!4001962 (and tp!1821888 tp!1821884))))

(declare-fun b!6615022 () Bool)

(declare-fun tp!1821885 () Bool)

(assert (=> b!6615022 (= e!4001962 tp!1821885)))

(declare-fun b!6615021 () Bool)

(declare-fun tp!1821886 () Bool)

(declare-fun tp!1821887 () Bool)

(assert (=> b!6615021 (= e!4001962 (and tp!1821886 tp!1821887))))

(assert (=> b!6614259 (= tp!1821677 e!4001962)))

(declare-fun b!6615020 () Bool)

(assert (=> b!6615020 (= e!4001962 tp_is_empty!42227)))

(assert (= (and b!6614259 ((_ is ElementMatch!16487) (regTwo!33486 (reg!16816 r!7292)))) b!6615020))

(assert (= (and b!6614259 ((_ is Concat!25332) (regTwo!33486 (reg!16816 r!7292)))) b!6615021))

(assert (= (and b!6614259 ((_ is Star!16487) (regTwo!33486 (reg!16816 r!7292)))) b!6615022))

(assert (= (and b!6614259 ((_ is Union!16487) (regTwo!33486 (reg!16816 r!7292)))) b!6615023))

(declare-fun b!6615027 () Bool)

(declare-fun e!4001963 () Bool)

(declare-fun tp!1821893 () Bool)

(declare-fun tp!1821889 () Bool)

(assert (=> b!6615027 (= e!4001963 (and tp!1821893 tp!1821889))))

(declare-fun b!6615026 () Bool)

(declare-fun tp!1821890 () Bool)

(assert (=> b!6615026 (= e!4001963 tp!1821890)))

(declare-fun b!6615025 () Bool)

(declare-fun tp!1821891 () Bool)

(declare-fun tp!1821892 () Bool)

(assert (=> b!6615025 (= e!4001963 (and tp!1821891 tp!1821892))))

(assert (=> b!6614282 (= tp!1821695 e!4001963)))

(declare-fun b!6615024 () Bool)

(assert (=> b!6615024 (= e!4001963 tp_is_empty!42227)))

(assert (= (and b!6614282 ((_ is ElementMatch!16487) (reg!16816 (regOne!33487 r!7292)))) b!6615024))

(assert (= (and b!6614282 ((_ is Concat!25332) (reg!16816 (regOne!33487 r!7292)))) b!6615025))

(assert (= (and b!6614282 ((_ is Star!16487) (reg!16816 (regOne!33487 r!7292)))) b!6615026))

(assert (= (and b!6614282 ((_ is Union!16487) (reg!16816 (regOne!33487 r!7292)))) b!6615027))

(declare-fun b!6615031 () Bool)

(declare-fun e!4001964 () Bool)

(declare-fun tp!1821898 () Bool)

(declare-fun tp!1821894 () Bool)

(assert (=> b!6615031 (= e!4001964 (and tp!1821898 tp!1821894))))

(declare-fun b!6615030 () Bool)

(declare-fun tp!1821895 () Bool)

(assert (=> b!6615030 (= e!4001964 tp!1821895)))

(declare-fun b!6615029 () Bool)

(declare-fun tp!1821896 () Bool)

(declare-fun tp!1821897 () Bool)

(assert (=> b!6615029 (= e!4001964 (and tp!1821896 tp!1821897))))

(assert (=> b!6614283 (= tp!1821698 e!4001964)))

(declare-fun b!6615028 () Bool)

(assert (=> b!6615028 (= e!4001964 tp_is_empty!42227)))

(assert (= (and b!6614283 ((_ is ElementMatch!16487) (regOne!33487 (regOne!33487 r!7292)))) b!6615028))

(assert (= (and b!6614283 ((_ is Concat!25332) (regOne!33487 (regOne!33487 r!7292)))) b!6615029))

(assert (= (and b!6614283 ((_ is Star!16487) (regOne!33487 (regOne!33487 r!7292)))) b!6615030))

(assert (= (and b!6614283 ((_ is Union!16487) (regOne!33487 (regOne!33487 r!7292)))) b!6615031))

(declare-fun b!6615035 () Bool)

(declare-fun e!4001965 () Bool)

(declare-fun tp!1821903 () Bool)

(declare-fun tp!1821899 () Bool)

(assert (=> b!6615035 (= e!4001965 (and tp!1821903 tp!1821899))))

(declare-fun b!6615034 () Bool)

(declare-fun tp!1821900 () Bool)

(assert (=> b!6615034 (= e!4001965 tp!1821900)))

(declare-fun b!6615033 () Bool)

(declare-fun tp!1821901 () Bool)

(declare-fun tp!1821902 () Bool)

(assert (=> b!6615033 (= e!4001965 (and tp!1821901 tp!1821902))))

(assert (=> b!6614283 (= tp!1821694 e!4001965)))

(declare-fun b!6615032 () Bool)

(assert (=> b!6615032 (= e!4001965 tp_is_empty!42227)))

(assert (= (and b!6614283 ((_ is ElementMatch!16487) (regTwo!33487 (regOne!33487 r!7292)))) b!6615032))

(assert (= (and b!6614283 ((_ is Concat!25332) (regTwo!33487 (regOne!33487 r!7292)))) b!6615033))

(assert (= (and b!6614283 ((_ is Star!16487) (regTwo!33487 (regOne!33487 r!7292)))) b!6615034))

(assert (= (and b!6614283 ((_ is Union!16487) (regTwo!33487 (regOne!33487 r!7292)))) b!6615035))

(declare-fun b!6615039 () Bool)

(declare-fun e!4001966 () Bool)

(declare-fun tp!1821908 () Bool)

(declare-fun tp!1821904 () Bool)

(assert (=> b!6615039 (= e!4001966 (and tp!1821908 tp!1821904))))

(declare-fun b!6615038 () Bool)

(declare-fun tp!1821905 () Bool)

(assert (=> b!6615038 (= e!4001966 tp!1821905)))

(declare-fun b!6615037 () Bool)

(declare-fun tp!1821906 () Bool)

(declare-fun tp!1821907 () Bool)

(assert (=> b!6615037 (= e!4001966 (and tp!1821906 tp!1821907))))

(assert (=> b!6614257 (= tp!1821673 e!4001966)))

(declare-fun b!6615036 () Bool)

(assert (=> b!6615036 (= e!4001966 tp_is_empty!42227)))

(assert (= (and b!6614257 ((_ is ElementMatch!16487) (regOne!33487 (regTwo!33486 r!7292)))) b!6615036))

(assert (= (and b!6614257 ((_ is Concat!25332) (regOne!33487 (regTwo!33486 r!7292)))) b!6615037))

(assert (= (and b!6614257 ((_ is Star!16487) (regOne!33487 (regTwo!33486 r!7292)))) b!6615038))

(assert (= (and b!6614257 ((_ is Union!16487) (regOne!33487 (regTwo!33486 r!7292)))) b!6615039))

(declare-fun b!6615043 () Bool)

(declare-fun e!4001967 () Bool)

(declare-fun tp!1821913 () Bool)

(declare-fun tp!1821909 () Bool)

(assert (=> b!6615043 (= e!4001967 (and tp!1821913 tp!1821909))))

(declare-fun b!6615042 () Bool)

(declare-fun tp!1821910 () Bool)

(assert (=> b!6615042 (= e!4001967 tp!1821910)))

(declare-fun b!6615041 () Bool)

(declare-fun tp!1821911 () Bool)

(declare-fun tp!1821912 () Bool)

(assert (=> b!6615041 (= e!4001967 (and tp!1821911 tp!1821912))))

(assert (=> b!6614257 (= tp!1821669 e!4001967)))

(declare-fun b!6615040 () Bool)

(assert (=> b!6615040 (= e!4001967 tp_is_empty!42227)))

(assert (= (and b!6614257 ((_ is ElementMatch!16487) (regTwo!33487 (regTwo!33486 r!7292)))) b!6615040))

(assert (= (and b!6614257 ((_ is Concat!25332) (regTwo!33487 (regTwo!33486 r!7292)))) b!6615041))

(assert (= (and b!6614257 ((_ is Star!16487) (regTwo!33487 (regTwo!33486 r!7292)))) b!6615042))

(assert (= (and b!6614257 ((_ is Union!16487) (regTwo!33487 (regTwo!33486 r!7292)))) b!6615043))

(declare-fun b!6615047 () Bool)

(declare-fun e!4001968 () Bool)

(declare-fun tp!1821918 () Bool)

(declare-fun tp!1821914 () Bool)

(assert (=> b!6615047 (= e!4001968 (and tp!1821918 tp!1821914))))

(declare-fun b!6615046 () Bool)

(declare-fun tp!1821915 () Bool)

(assert (=> b!6615046 (= e!4001968 tp!1821915)))

(declare-fun b!6615045 () Bool)

(declare-fun tp!1821916 () Bool)

(declare-fun tp!1821917 () Bool)

(assert (=> b!6615045 (= e!4001968 (and tp!1821916 tp!1821917))))

(assert (=> b!6614281 (= tp!1821696 e!4001968)))

(declare-fun b!6615044 () Bool)

(assert (=> b!6615044 (= e!4001968 tp_is_empty!42227)))

(assert (= (and b!6614281 ((_ is ElementMatch!16487) (regOne!33486 (regOne!33487 r!7292)))) b!6615044))

(assert (= (and b!6614281 ((_ is Concat!25332) (regOne!33486 (regOne!33487 r!7292)))) b!6615045))

(assert (= (and b!6614281 ((_ is Star!16487) (regOne!33486 (regOne!33487 r!7292)))) b!6615046))

(assert (= (and b!6614281 ((_ is Union!16487) (regOne!33486 (regOne!33487 r!7292)))) b!6615047))

(declare-fun b!6615051 () Bool)

(declare-fun e!4001969 () Bool)

(declare-fun tp!1821923 () Bool)

(declare-fun tp!1821919 () Bool)

(assert (=> b!6615051 (= e!4001969 (and tp!1821923 tp!1821919))))

(declare-fun b!6615050 () Bool)

(declare-fun tp!1821920 () Bool)

(assert (=> b!6615050 (= e!4001969 tp!1821920)))

(declare-fun b!6615049 () Bool)

(declare-fun tp!1821921 () Bool)

(declare-fun tp!1821922 () Bool)

(assert (=> b!6615049 (= e!4001969 (and tp!1821921 tp!1821922))))

(assert (=> b!6614281 (= tp!1821697 e!4001969)))

(declare-fun b!6615048 () Bool)

(assert (=> b!6615048 (= e!4001969 tp_is_empty!42227)))

(assert (= (and b!6614281 ((_ is ElementMatch!16487) (regTwo!33486 (regOne!33487 r!7292)))) b!6615048))

(assert (= (and b!6614281 ((_ is Concat!25332) (regTwo!33486 (regOne!33487 r!7292)))) b!6615049))

(assert (= (and b!6614281 ((_ is Star!16487) (regTwo!33486 (regOne!33487 r!7292)))) b!6615050))

(assert (= (and b!6614281 ((_ is Union!16487) (regTwo!33486 (regOne!33487 r!7292)))) b!6615051))

(declare-fun b_lambda!250183 () Bool)

(assert (= b_lambda!250175 (or d!2073359 b_lambda!250183)))

(declare-fun bs!1695908 () Bool)

(declare-fun d!2073639 () Bool)

(assert (= bs!1695908 (and d!2073639 d!2073359)))

(assert (=> bs!1695908 (= (dynLambda!26139 lambda!369458 (h!72084 (exprs!6371 (h!72085 zl!343)))) (validRegex!8223 (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(declare-fun m!7388174 () Bool)

(assert (=> bs!1695908 m!7388174))

(assert (=> b!6614653 d!2073639))

(declare-fun b_lambda!250185 () Bool)

(assert (= b_lambda!250171 (or d!2073263 b_lambda!250185)))

(declare-fun bs!1695909 () Bool)

(declare-fun d!2073641 () Bool)

(assert (= bs!1695909 (and d!2073641 d!2073263)))

(assert (=> bs!1695909 (= (dynLambda!26139 lambda!369418 (h!72084 (exprs!6371 lt!2417204))) (validRegex!8223 (h!72084 (exprs!6371 lt!2417204))))))

(declare-fun m!7388176 () Bool)

(assert (=> bs!1695909 m!7388176))

(assert (=> b!6614601 d!2073641))

(declare-fun b_lambda!250187 () Bool)

(assert (= b_lambda!250181 (or d!2073297 b_lambda!250187)))

(declare-fun bs!1695910 () Bool)

(declare-fun d!2073643 () Bool)

(assert (= bs!1695910 (and d!2073643 d!2073297)))

(assert (=> bs!1695910 (= (dynLambda!26139 lambda!369428 (h!72084 lt!2417223)) (validRegex!8223 (h!72084 lt!2417223)))))

(declare-fun m!7388178 () Bool)

(assert (=> bs!1695910 m!7388178))

(assert (=> b!6614827 d!2073643))

(declare-fun b_lambda!250189 () Bool)

(assert (= b_lambda!250169 (or b!6613663 b_lambda!250189)))

(assert (=> d!2073429 d!2073397))

(declare-fun b_lambda!250191 () Bool)

(assert (= b_lambda!250173 (or d!2073265 b_lambda!250191)))

(declare-fun bs!1695911 () Bool)

(declare-fun d!2073645 () Bool)

(assert (= bs!1695911 (and d!2073645 d!2073265)))

(assert (=> bs!1695911 (= (dynLambda!26139 lambda!369419 (h!72084 (exprs!6371 setElem!45196))) (validRegex!8223 (h!72084 (exprs!6371 setElem!45196))))))

(declare-fun m!7388180 () Bool)

(assert (=> bs!1695911 m!7388180))

(assert (=> b!6614647 d!2073645))

(declare-fun b_lambda!250193 () Bool)

(assert (= b_lambda!250177 (or d!2073301 b_lambda!250193)))

(declare-fun bs!1695912 () Bool)

(declare-fun d!2073647 () Bool)

(assert (= bs!1695912 (and d!2073647 d!2073301)))

(assert (=> bs!1695912 (= (dynLambda!26139 lambda!369431 (h!72084 (exprs!6371 (h!72085 zl!343)))) (validRegex!8223 (h!72084 (exprs!6371 (h!72085 zl!343)))))))

(assert (=> bs!1695912 m!7388174))

(assert (=> b!6614766 d!2073647))

(declare-fun b_lambda!250195 () Bool)

(assert (= b_lambda!250179 (or d!2073289 b_lambda!250195)))

(declare-fun bs!1695913 () Bool)

(declare-fun d!2073649 () Bool)

(assert (= bs!1695913 (and d!2073649 d!2073289)))

(assert (=> bs!1695913 (= (dynLambda!26139 lambda!369422 (h!72084 (unfocusZipperList!1908 zl!343))) (validRegex!8223 (h!72084 (unfocusZipperList!1908 zl!343))))))

(declare-fun m!7388182 () Bool)

(assert (=> bs!1695913 m!7388182))

(assert (=> b!6614794 d!2073649))

(check-sat (not b!6614773) (not b!6614961) (not b!6615047) (not bm!579503) (not d!2073567) (not b!6614784) (not b!6614729) (not b!6615027) (not d!2073529) (not bm!579524) (not b!6614828) (not b!6615005) (not d!2073515) (not b!6614968) (not b!6615013) (not d!2073533) tp_is_empty!42227 (not b!6614650) (not b!6614867) (not d!2073601) (not b!6614680) (not b!6614725) (not b!6615033) (not bm!579505) (not b!6614602) (not b!6614576) (not b!6614957) (not b!6615038) (not b!6614852) (not b!6614572) (not b!6614992) (not d!2073581) (not b!6614491) (not b!6614624) (not b!6614958) (not b!6615030) (not bm!579537) (not b!6614882) (not d!2073423) (not b!6614492) (not b!6614744) (not b!6614497) (not b!6614755) (not b!6614928) (not bm!579496) (not b!6614717) (not bm!579516) (not b!6614894) (not b!6614939) (not b!6615041) (not d!2073483) (not b!6614937) (not bm!579549) (not d!2073527) (not bm!579506) (not b!6614775) (not b!6614964) (not b!6614681) (not b!6614604) (not b!6614687) (not b!6614920) (not b!6614950) (not d!2073511) (not b!6615021) (not b!6614998) (not b!6614929) (not b!6614903) (not b!6614667) (not b!6614967) (not b!6614919) (not bm!579522) (not b!6614999) (not b!6614946) (not b!6614986) (not bm!579540) (not setNonEmpty!45206) (not b!6614536) (not b!6614712) (not b!6614771) (not b!6615026) (not d!2073555) (not bm!579474) (not b!6614883) (not b_lambda!250187) (not b_lambda!250191) (not b!6614573) (not b!6615017) (not bm!579552) (not d!2073579) (not bm!579499) (not b!6614803) (not b!6614990) (not bs!1695908) (not b!6614826) (not bm!579519) (not b!6614774) (not b!6614693) (not d!2073595) (not b!6615002) (not bm!579529) (not b!6614759) (not d!2073565) (not b!6614732) (not b!6615023) (not b!6614660) (not b!6614944) (not b!6614643) (not b_lambda!250185) (not b!6614727) (not b!6614996) (not b!6615031) (not b!6614648) (not b!6614959) (not bm!579494) (not bm!579497) (not b!6614982) (not b!6614545) (not d!2073507) (not b!6615007) (not bm!579548) (not b!6615006) (not b!6614698) (not b!6615037) (not b!6614942) (not b!6614988) (not b!6614993) (not bm!579489) (not bm!579511) (not b_lambda!250193) (not bm!579504) (not b!6614721) (not d!2073549) (not bm!579566) (not b!6614948) (not bm!579564) (not b!6614891) (not b!6614877) (not bm!579553) (not bm!579555) (not b!6615051) (not b!6615049) (not b!6615034) (not b!6614965) (not b!6614498) (not b!6614977) (not bm!579486) (not b!6614795) (not b!6614581) (not bm!579475) (not d!2073451) (not d!2073461) (not b!6614858) (not b!6614884) (not b!6614670) (not d!2073593) (not b!6614768) (not d!2073445) (not d!2073433) (not b!6614914) (not bm!579500) (not b!6615011) (not b!6615025) (not b!6614685) (not d!2073611) (not bm!579525) (not d!2073547) (not b!6614549) (not bm!579567) (not b!6614980) (not b!6614935) (not bm!579534) (not b!6614952) (not d!2073513) (not b!6614857) (not b!6614976) (not b!6614972) (not d!2073439) (not bm!579568) (not b!6614943) (not b!6614956) (not b!6614679) (not bm!579490) (not d!2073429) (not bm!579530) (not bm!579563) (not bm!579557) (not bm!579501) (not b!6614989) (not b!6614978) (not d!2073619) (not bs!1695910) (not b!6614984) (not b!6614953) (not b!6614853) (not bm!579536) (not b!6615046) (not b!6614718) (not b!6615014) (not d!2073453) (not b!6614767) (not b!6614876) (not d!2073465) (not b!6614839) (not b!6614969) (not b!6614905) (not b!6614556) (not b!6615009) (not b!6615043) (not b!6614738) (not b!6614809) (not b!6615039) (not b!6615050) (not b!6614736) (not b!6614632) (not b!6614724) (not b!6614570) (not bs!1695911) (not d!2073625) (not b!6614973) (not d!2073607) (not d!2073531) (not b!6614955) (not b!6614548) (not d!2073571) (not b!6614682) (not bm!579546) (not b_lambda!250189) (not b!6614963) (not b!6614971) (not b!6614994) (not b!6614997) (not b!6615003) (not b!6614975) (not d!2073499) (not bs!1695913) (not bm!579554) (not d!2073525) (not bm!579542) (not d!2073577) (not b!6615029) (not d!2073623) (not b!6614666) (not bm!579558) (not b!6614658) (not d!2073489) (not b!6614506) (not d!2073535) (not b!6614577) (not bm!579473) (not b!6614590) (not b!6614655) (not bm!579502) (not d!2073617) (not bm!579551) (not b!6614947) (not b!6614879) (not b!6614825) (not bm!579562) (not b!6614981) (not b!6614615) (not d!2073543) (not d!2073467) (not d!2073635) (not b!6615018) (not bm!579517) (not bm!579518) (not d!2073459) (not bm!579556) (not b!6614890) (not b!6614818) (not b!6614649) (not b!6614787) (not d!2073437) (not b!6614941) (not b!6614726) (not b!6614737) (not b!6614575) (not b_lambda!250163) (not bm!579541) (not d!2073463) (not bs!1695909) (not d!2073557) (not b!6615015) (not b!6614848) (not b!6614830) (not b!6614770) (not d!2073569) (not b!6615045) (not d!2073497) (not bs!1695912) (not d!2073521) (not b!6614694) (not bm!579493) (not b!6614659) (not b!6614654) (not b!6614550) (not b!6615010) (not setNonEmpty!45205) (not b!6614722) (not b!6614578) (not b!6614873) (not b!6615001) (not b!6614960) (not b!6614494) (not bm!579512) (not bm!579539) (not b!6614777) (not b!6614613) (not b_lambda!250195) (not b!6614557) (not b_lambda!250183) (not b!6615042) (not bm!579510) (not b!6615022) (not b!6614927) (not b!6614505) (not b!6614499) (not b!6614686) (not bm!579488) (not bm!579533) (not bm!579520) (not b!6615019) (not b!6614567) (not bm!579565) (not b!6614745) (not d!2073597) (not bm!579523) (not b!6614938) (not bm!579487) (not b!6614951) (not b!6614733) (not b!6614985) (not b!6615035))
(check-sat)
