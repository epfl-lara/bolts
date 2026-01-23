; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572278 () Bool)

(assert start!572278)

(declare-fun b!5466965 () Bool)

(assert (=> b!5466965 true))

(assert (=> b!5466965 true))

(declare-fun lambda!290579 () Int)

(declare-fun lambda!290578 () Int)

(assert (=> b!5466965 (not (= lambda!290579 lambda!290578))))

(assert (=> b!5466965 true))

(assert (=> b!5466965 true))

(declare-fun lambda!290580 () Int)

(assert (=> b!5466965 (not (= lambda!290580 lambda!290578))))

(assert (=> b!5466965 (not (= lambda!290580 lambda!290579))))

(assert (=> b!5466965 true))

(assert (=> b!5466965 true))

(declare-fun b!5466986 () Bool)

(assert (=> b!5466986 true))

(declare-fun e!3384634 () Bool)

(declare-fun e!3384635 () Bool)

(assert (=> b!5466965 (= e!3384634 e!3384635)))

(declare-fun res!2329353 () Bool)

(assert (=> b!5466965 (=> res!2329353 e!3384635)))

(declare-fun lt!2233715 () Bool)

(declare-fun e!3384630 () Bool)

(assert (=> b!5466965 (= res!2329353 (not (= lt!2233715 e!3384630)))))

(declare-fun res!2329356 () Bool)

(assert (=> b!5466965 (=> res!2329356 e!3384630)))

(declare-datatypes ((C!30916 0))(
  ( (C!30917 (val!25160 Int)) )
))
(declare-datatypes ((List!62268 0))(
  ( (Nil!62144) (Cons!62144 (h!68592 C!30916) (t!375497 List!62268)) )
))
(declare-fun s!2326 () List!62268)

(declare-fun isEmpty!34106 (List!62268) Bool)

(assert (=> b!5466965 (= res!2329356 (isEmpty!34106 s!2326))))

(declare-fun Exists!2502 (Int) Bool)

(assert (=> b!5466965 (= (Exists!2502 lambda!290578) (Exists!2502 lambda!290580))))

(declare-datatypes ((Unit!155096 0))(
  ( (Unit!155097) )
))
(declare-fun lt!2233712 () Unit!155096)

(declare-datatypes ((Regex!15323 0))(
  ( (ElementMatch!15323 (c!955081 C!30916)) (Concat!24168 (regOne!31158 Regex!15323) (regTwo!31158 Regex!15323)) (EmptyExpr!15323) (Star!15323 (reg!15652 Regex!15323)) (EmptyLang!15323) (Union!15323 (regOne!31159 Regex!15323) (regTwo!31159 Regex!15323)) )
))
(declare-fun r!7292 () Regex!15323)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1152 (Regex!15323 Regex!15323 List!62268) Unit!155096)

(assert (=> b!5466965 (= lt!2233712 (lemmaExistCutMatchRandMatchRSpecEquivalent!1152 (reg!15652 r!7292) r!7292 s!2326))))

(assert (=> b!5466965 (= (Exists!2502 lambda!290578) (Exists!2502 lambda!290579))))

(declare-fun lt!2233713 () Unit!155096)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!476 (Regex!15323 List!62268) Unit!155096)

(assert (=> b!5466965 (= lt!2233713 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!476 (reg!15652 r!7292) s!2326))))

(declare-fun lt!2233721 () Bool)

(assert (=> b!5466965 (= lt!2233721 (Exists!2502 lambda!290578))))

(declare-datatypes ((tuple2!65040 0))(
  ( (tuple2!65041 (_1!35823 List!62268) (_2!35823 List!62268)) )
))
(declare-datatypes ((Option!15432 0))(
  ( (None!15431) (Some!15431 (v!51460 tuple2!65040)) )
))
(declare-fun isDefined!12135 (Option!15432) Bool)

(declare-fun findConcatSeparation!1846 (Regex!15323 Regex!15323 List!62268 List!62268 List!62268) Option!15432)

(assert (=> b!5466965 (= lt!2233721 (isDefined!12135 (findConcatSeparation!1846 (reg!15652 r!7292) r!7292 Nil!62144 s!2326 s!2326)))))

(declare-fun lt!2233719 () Unit!155096)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1610 (Regex!15323 Regex!15323 List!62268) Unit!155096)

(assert (=> b!5466965 (= lt!2233719 (lemmaFindConcatSeparationEquivalentToExists!1610 (reg!15652 r!7292) r!7292 s!2326))))

(declare-fun b!5466966 () Bool)

(declare-fun e!3384636 () Bool)

(declare-fun tp_is_empty!39899 () Bool)

(declare-fun tp!1503652 () Bool)

(assert (=> b!5466966 (= e!3384636 (and tp_is_empty!39899 tp!1503652))))

(declare-fun b!5466967 () Bool)

(assert (=> b!5466967 (= e!3384630 lt!2233721)))

(declare-fun b!5466969 () Bool)

(declare-fun res!2329345 () Bool)

(assert (=> b!5466969 (=> res!2329345 e!3384635)))

(get-info :version)

(assert (=> b!5466969 (= res!2329345 ((_ is Nil!62144) s!2326))))

(declare-fun b!5466970 () Bool)

(declare-fun e!3384633 () Bool)

(declare-fun e!3384641 () Bool)

(assert (=> b!5466970 (= e!3384633 e!3384641)))

(declare-fun res!2329344 () Bool)

(assert (=> b!5466970 (=> (not res!2329344) (not e!3384641))))

(declare-fun lt!2233725 () Regex!15323)

(assert (=> b!5466970 (= res!2329344 (= r!7292 lt!2233725))))

(declare-datatypes ((List!62269 0))(
  ( (Nil!62145) (Cons!62145 (h!68593 Regex!15323) (t!375498 List!62269)) )
))
(declare-datatypes ((Context!9414 0))(
  ( (Context!9415 (exprs!5207 List!62269)) )
))
(declare-datatypes ((List!62270 0))(
  ( (Nil!62146) (Cons!62146 (h!68594 Context!9414) (t!375499 List!62270)) )
))
(declare-fun zl!343 () List!62270)

(declare-fun unfocusZipper!1065 (List!62270) Regex!15323)

(assert (=> b!5466970 (= lt!2233725 (unfocusZipper!1065 zl!343))))

(declare-fun b!5466971 () Bool)

(declare-fun res!2329352 () Bool)

(assert (=> b!5466971 (=> (not res!2329352) (not e!3384633))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9414))

(declare-fun toList!9107 ((InoxSet Context!9414)) List!62270)

(assert (=> b!5466971 (= res!2329352 (= (toList!9107 z!1189) zl!343))))

(declare-fun b!5466972 () Bool)

(declare-fun e!3384637 () Bool)

(declare-fun tp!1503655 () Bool)

(assert (=> b!5466972 (= e!3384637 tp!1503655)))

(declare-fun b!5466973 () Bool)

(declare-fun res!2329359 () Bool)

(assert (=> b!5466973 (=> res!2329359 e!3384634)))

(declare-fun generalisedConcat!992 (List!62269) Regex!15323)

(assert (=> b!5466973 (= res!2329359 (not (= r!7292 (generalisedConcat!992 (exprs!5207 (h!68594 zl!343))))))))

(declare-fun b!5466974 () Bool)

(declare-fun res!2329349 () Bool)

(declare-fun e!3384640 () Bool)

(assert (=> b!5466974 (=> res!2329349 e!3384640)))

(declare-fun lt!2233709 () (InoxSet Context!9414))

(declare-fun matchZipper!1541 ((InoxSet Context!9414) List!62268) Bool)

(declare-fun derivationStepZipper!1518 ((InoxSet Context!9414) C!30916) (InoxSet Context!9414))

(assert (=> b!5466974 (= res!2329349 (not (= (matchZipper!1541 lt!2233709 s!2326) (matchZipper!1541 (derivationStepZipper!1518 lt!2233709 (h!68592 s!2326)) (t!375497 s!2326)))))))

(declare-fun b!5466975 () Bool)

(declare-fun res!2329354 () Bool)

(assert (=> b!5466975 (=> res!2329354 e!3384634)))

(declare-fun isEmpty!34107 (List!62270) Bool)

(assert (=> b!5466975 (= res!2329354 (not (isEmpty!34107 (t!375499 zl!343))))))

(declare-fun b!5466976 () Bool)

(declare-fun res!2329350 () Bool)

(assert (=> b!5466976 (=> res!2329350 e!3384640)))

(assert (=> b!5466976 (= res!2329350 (or (not (= lt!2233725 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5466977 () Bool)

(declare-fun e!3384638 () Bool)

(declare-fun tp!1503658 () Bool)

(declare-fun tp!1503659 () Bool)

(assert (=> b!5466977 (= e!3384638 (and tp!1503658 tp!1503659))))

(declare-fun b!5466978 () Bool)

(declare-fun res!2329346 () Bool)

(assert (=> b!5466978 (=> res!2329346 e!3384634)))

(assert (=> b!5466978 (= res!2329346 (not ((_ is Cons!62145) (exprs!5207 (h!68594 zl!343)))))))

(declare-fun b!5466979 () Bool)

(declare-fun res!2329355 () Bool)

(assert (=> b!5466979 (=> res!2329355 e!3384634)))

(assert (=> b!5466979 (= res!2329355 (or ((_ is EmptyExpr!15323) r!7292) ((_ is EmptyLang!15323) r!7292) ((_ is ElementMatch!15323) r!7292) ((_ is Union!15323) r!7292) ((_ is Concat!24168) r!7292)))))

(declare-fun b!5466980 () Bool)

(assert (=> b!5466980 (= e!3384638 tp_is_empty!39899)))

(declare-fun b!5466981 () Bool)

(declare-fun res!2329348 () Bool)

(assert (=> b!5466981 (=> res!2329348 e!3384640)))

(declare-fun lt!2233717 () Context!9414)

(assert (=> b!5466981 (= res!2329348 (not (= (unfocusZipper!1065 (Cons!62146 lt!2233717 Nil!62146)) (Concat!24168 (reg!15652 r!7292) r!7292))))))

(declare-fun b!5466982 () Bool)

(declare-fun tp!1503654 () Bool)

(assert (=> b!5466982 (= e!3384638 tp!1503654)))

(declare-fun b!5466983 () Bool)

(declare-fun tp!1503660 () Bool)

(declare-fun e!3384631 () Bool)

(declare-fun inv!81554 (Context!9414) Bool)

(assert (=> b!5466983 (= e!3384631 (and (inv!81554 (h!68594 zl!343)) e!3384637 tp!1503660))))

(declare-fun b!5466984 () Bool)

(declare-fun tp!1503656 () Bool)

(declare-fun tp!1503653 () Bool)

(assert (=> b!5466984 (= e!3384638 (and tp!1503656 tp!1503653))))

(declare-fun b!5466985 () Bool)

(declare-fun res!2329360 () Bool)

(assert (=> b!5466985 (=> res!2329360 e!3384634)))

(declare-fun generalisedUnion!1252 (List!62269) Regex!15323)

(declare-fun unfocusZipperList!765 (List!62270) List!62269)

(assert (=> b!5466985 (= res!2329360 (not (= r!7292 (generalisedUnion!1252 (unfocusZipperList!765 zl!343)))))))

(declare-fun e!3384642 () Bool)

(declare-fun e!3384639 () Bool)

(assert (=> b!5466986 (= e!3384642 e!3384639)))

(declare-fun res!2329343 () Bool)

(assert (=> b!5466986 (=> res!2329343 e!3384639)))

(declare-fun lt!2233714 () (InoxSet Context!9414))

(declare-fun lt!2233727 () (InoxSet Context!9414))

(assert (=> b!5466986 (= res!2329343 (not (= lt!2233714 lt!2233727)))))

(declare-fun lambda!290581 () Int)

(declare-fun flatMap!1026 ((InoxSet Context!9414) Int) (InoxSet Context!9414))

(declare-fun derivationStepZipperUp!675 (Context!9414 C!30916) (InoxSet Context!9414))

(assert (=> b!5466986 (= (flatMap!1026 z!1189 lambda!290581) (derivationStepZipperUp!675 (h!68594 zl!343) (h!68592 s!2326)))))

(declare-fun lt!2233720 () Unit!155096)

(declare-fun lemmaFlatMapOnSingletonSet!558 ((InoxSet Context!9414) Context!9414 Int) Unit!155096)

(assert (=> b!5466986 (= lt!2233720 (lemmaFlatMapOnSingletonSet!558 z!1189 (h!68594 zl!343) lambda!290581))))

(declare-fun b!5466987 () Bool)

(assert (=> b!5466987 (= e!3384635 e!3384642)))

(declare-fun res!2329347 () Bool)

(assert (=> b!5466987 (=> res!2329347 e!3384642)))

(declare-fun lt!2233722 () (InoxSet Context!9414))

(assert (=> b!5466987 (= res!2329347 (not (= lt!2233722 lt!2233727)))))

(declare-fun derivationStepZipperDown!749 (Regex!15323 Context!9414 C!30916) (InoxSet Context!9414))

(assert (=> b!5466987 (= lt!2233727 (derivationStepZipperDown!749 r!7292 (Context!9415 Nil!62145) (h!68592 s!2326)))))

(assert (=> b!5466987 (= lt!2233722 (derivationStepZipperUp!675 (Context!9415 (Cons!62145 r!7292 Nil!62145)) (h!68592 s!2326)))))

(assert (=> b!5466987 (= lt!2233714 (derivationStepZipper!1518 z!1189 (h!68592 s!2326)))))

(declare-fun b!5466988 () Bool)

(assert (=> b!5466988 (= e!3384640 true)))

(declare-fun lt!2233728 () (InoxSet Context!9414))

(declare-fun lt!2233711 () Context!9414)

(assert (=> b!5466988 (= (flatMap!1026 lt!2233728 lambda!290581) (derivationStepZipperUp!675 lt!2233711 (h!68592 s!2326)))))

(declare-fun lt!2233710 () Unit!155096)

(assert (=> b!5466988 (= lt!2233710 (lemmaFlatMapOnSingletonSet!558 lt!2233728 lt!2233711 lambda!290581))))

(declare-fun lt!2233729 () (InoxSet Context!9414))

(declare-fun lt!2233724 () Context!9414)

(assert (=> b!5466988 (= lt!2233729 (derivationStepZipperUp!675 lt!2233724 (h!68592 s!2326)))))

(declare-fun lt!2233718 () (InoxSet Context!9414))

(assert (=> b!5466988 (= lt!2233718 (derivationStepZipperUp!675 lt!2233711 (h!68592 s!2326)))))

(assert (=> b!5466988 (= lt!2233728 (store ((as const (Array Context!9414 Bool)) false) lt!2233711 true))))

(assert (=> b!5466988 (= lt!2233711 (Context!9415 (Cons!62145 (reg!15652 r!7292) Nil!62145)))))

(declare-fun b!5466989 () Bool)

(assert (=> b!5466989 (= e!3384641 (not e!3384634))))

(declare-fun res!2329351 () Bool)

(assert (=> b!5466989 (=> res!2329351 e!3384634)))

(assert (=> b!5466989 (= res!2329351 (not ((_ is Cons!62146) zl!343)))))

(declare-fun matchRSpec!2426 (Regex!15323 List!62268) Bool)

(assert (=> b!5466989 (= lt!2233715 (matchRSpec!2426 r!7292 s!2326))))

(declare-fun matchR!7508 (Regex!15323 List!62268) Bool)

(assert (=> b!5466989 (= lt!2233715 (matchR!7508 r!7292 s!2326))))

(declare-fun lt!2233726 () Unit!155096)

(declare-fun mainMatchTheorem!2426 (Regex!15323 List!62268) Unit!155096)

(assert (=> b!5466989 (= lt!2233726 (mainMatchTheorem!2426 r!7292 s!2326))))

(declare-fun b!5466968 () Bool)

(declare-fun e!3384632 () Bool)

(declare-fun tp!1503661 () Bool)

(assert (=> b!5466968 (= e!3384632 tp!1503661)))

(declare-fun res!2329357 () Bool)

(assert (=> start!572278 (=> (not res!2329357) (not e!3384633))))

(declare-fun validRegex!7059 (Regex!15323) Bool)

(assert (=> start!572278 (= res!2329357 (validRegex!7059 r!7292))))

(assert (=> start!572278 e!3384633))

(assert (=> start!572278 e!3384638))

(declare-fun condSetEmpty!35851 () Bool)

(assert (=> start!572278 (= condSetEmpty!35851 (= z!1189 ((as const (Array Context!9414 Bool)) false)))))

(declare-fun setRes!35851 () Bool)

(assert (=> start!572278 setRes!35851))

(assert (=> start!572278 e!3384631))

(assert (=> start!572278 e!3384636))

(declare-fun setIsEmpty!35851 () Bool)

(assert (=> setIsEmpty!35851 setRes!35851))

(declare-fun b!5466990 () Bool)

(assert (=> b!5466990 (= e!3384639 e!3384640)))

(declare-fun res!2329358 () Bool)

(assert (=> b!5466990 (=> res!2329358 e!3384640)))

(assert (=> b!5466990 (= res!2329358 (not (= lt!2233714 (derivationStepZipperDown!749 (reg!15652 r!7292) lt!2233724 (h!68592 s!2326)))))))

(declare-fun lt!2233723 () List!62269)

(assert (=> b!5466990 (= lt!2233724 (Context!9415 lt!2233723))))

(assert (=> b!5466990 (= (flatMap!1026 lt!2233709 lambda!290581) (derivationStepZipperUp!675 lt!2233717 (h!68592 s!2326)))))

(declare-fun lt!2233708 () Unit!155096)

(assert (=> b!5466990 (= lt!2233708 (lemmaFlatMapOnSingletonSet!558 lt!2233709 lt!2233717 lambda!290581))))

(declare-fun lt!2233716 () (InoxSet Context!9414))

(assert (=> b!5466990 (= lt!2233716 (derivationStepZipperUp!675 lt!2233717 (h!68592 s!2326)))))

(assert (=> b!5466990 (= lt!2233709 (store ((as const (Array Context!9414 Bool)) false) lt!2233717 true))))

(assert (=> b!5466990 (= lt!2233717 (Context!9415 (Cons!62145 (reg!15652 r!7292) lt!2233723)))))

(assert (=> b!5466990 (= lt!2233723 (Cons!62145 r!7292 Nil!62145))))

(declare-fun tp!1503657 () Bool)

(declare-fun setElem!35851 () Context!9414)

(declare-fun setNonEmpty!35851 () Bool)

(assert (=> setNonEmpty!35851 (= setRes!35851 (and tp!1503657 (inv!81554 setElem!35851) e!3384632))))

(declare-fun setRest!35851 () (InoxSet Context!9414))

(assert (=> setNonEmpty!35851 (= z!1189 ((_ map or) (store ((as const (Array Context!9414 Bool)) false) setElem!35851 true) setRest!35851))))

(assert (= (and start!572278 res!2329357) b!5466971))

(assert (= (and b!5466971 res!2329352) b!5466970))

(assert (= (and b!5466970 res!2329344) b!5466989))

(assert (= (and b!5466989 (not res!2329351)) b!5466975))

(assert (= (and b!5466975 (not res!2329354)) b!5466973))

(assert (= (and b!5466973 (not res!2329359)) b!5466978))

(assert (= (and b!5466978 (not res!2329346)) b!5466985))

(assert (= (and b!5466985 (not res!2329360)) b!5466979))

(assert (= (and b!5466979 (not res!2329355)) b!5466965))

(assert (= (and b!5466965 (not res!2329356)) b!5466967))

(assert (= (and b!5466965 (not res!2329353)) b!5466969))

(assert (= (and b!5466969 (not res!2329345)) b!5466987))

(assert (= (and b!5466987 (not res!2329347)) b!5466986))

(assert (= (and b!5466986 (not res!2329343)) b!5466990))

(assert (= (and b!5466990 (not res!2329358)) b!5466974))

(assert (= (and b!5466974 (not res!2329349)) b!5466976))

(assert (= (and b!5466976 (not res!2329350)) b!5466981))

(assert (= (and b!5466981 (not res!2329348)) b!5466988))

(assert (= (and start!572278 ((_ is ElementMatch!15323) r!7292)) b!5466980))

(assert (= (and start!572278 ((_ is Concat!24168) r!7292)) b!5466984))

(assert (= (and start!572278 ((_ is Star!15323) r!7292)) b!5466982))

(assert (= (and start!572278 ((_ is Union!15323) r!7292)) b!5466977))

(assert (= (and start!572278 condSetEmpty!35851) setIsEmpty!35851))

(assert (= (and start!572278 (not condSetEmpty!35851)) setNonEmpty!35851))

(assert (= setNonEmpty!35851 b!5466968))

(assert (= b!5466983 b!5466972))

(assert (= (and start!572278 ((_ is Cons!62146) zl!343)) b!5466983))

(assert (= (and start!572278 ((_ is Cons!62144) s!2326)) b!5466966))

(declare-fun m!6486178 () Bool)

(assert (=> b!5466981 m!6486178))

(declare-fun m!6486180 () Bool)

(assert (=> b!5466970 m!6486180))

(declare-fun m!6486182 () Bool)

(assert (=> b!5466975 m!6486182))

(declare-fun m!6486184 () Bool)

(assert (=> b!5466989 m!6486184))

(declare-fun m!6486186 () Bool)

(assert (=> b!5466989 m!6486186))

(declare-fun m!6486188 () Bool)

(assert (=> b!5466989 m!6486188))

(declare-fun m!6486190 () Bool)

(assert (=> b!5466986 m!6486190))

(declare-fun m!6486192 () Bool)

(assert (=> b!5466986 m!6486192))

(declare-fun m!6486194 () Bool)

(assert (=> b!5466986 m!6486194))

(declare-fun m!6486196 () Bool)

(assert (=> b!5466974 m!6486196))

(declare-fun m!6486198 () Bool)

(assert (=> b!5466974 m!6486198))

(assert (=> b!5466974 m!6486198))

(declare-fun m!6486200 () Bool)

(assert (=> b!5466974 m!6486200))

(declare-fun m!6486202 () Bool)

(assert (=> b!5466985 m!6486202))

(assert (=> b!5466985 m!6486202))

(declare-fun m!6486204 () Bool)

(assert (=> b!5466985 m!6486204))

(declare-fun m!6486206 () Bool)

(assert (=> setNonEmpty!35851 m!6486206))

(declare-fun m!6486208 () Bool)

(assert (=> b!5466988 m!6486208))

(declare-fun m!6486210 () Bool)

(assert (=> b!5466988 m!6486210))

(declare-fun m!6486212 () Bool)

(assert (=> b!5466988 m!6486212))

(declare-fun m!6486214 () Bool)

(assert (=> b!5466988 m!6486214))

(declare-fun m!6486216 () Bool)

(assert (=> b!5466988 m!6486216))

(declare-fun m!6486218 () Bool)

(assert (=> b!5466965 m!6486218))

(declare-fun m!6486220 () Bool)

(assert (=> b!5466965 m!6486220))

(declare-fun m!6486222 () Bool)

(assert (=> b!5466965 m!6486222))

(declare-fun m!6486224 () Bool)

(assert (=> b!5466965 m!6486224))

(assert (=> b!5466965 m!6486220))

(declare-fun m!6486226 () Bool)

(assert (=> b!5466965 m!6486226))

(declare-fun m!6486228 () Bool)

(assert (=> b!5466965 m!6486228))

(declare-fun m!6486230 () Bool)

(assert (=> b!5466965 m!6486230))

(assert (=> b!5466965 m!6486220))

(assert (=> b!5466965 m!6486230))

(declare-fun m!6486232 () Bool)

(assert (=> b!5466965 m!6486232))

(declare-fun m!6486234 () Bool)

(assert (=> b!5466965 m!6486234))

(declare-fun m!6486236 () Bool)

(assert (=> b!5466987 m!6486236))

(declare-fun m!6486238 () Bool)

(assert (=> b!5466987 m!6486238))

(declare-fun m!6486240 () Bool)

(assert (=> b!5466987 m!6486240))

(declare-fun m!6486242 () Bool)

(assert (=> b!5466973 m!6486242))

(declare-fun m!6486244 () Bool)

(assert (=> b!5466990 m!6486244))

(declare-fun m!6486246 () Bool)

(assert (=> b!5466990 m!6486246))

(declare-fun m!6486248 () Bool)

(assert (=> b!5466990 m!6486248))

(declare-fun m!6486250 () Bool)

(assert (=> b!5466990 m!6486250))

(declare-fun m!6486252 () Bool)

(assert (=> b!5466990 m!6486252))

(declare-fun m!6486254 () Bool)

(assert (=> start!572278 m!6486254))

(declare-fun m!6486256 () Bool)

(assert (=> b!5466971 m!6486256))

(declare-fun m!6486258 () Bool)

(assert (=> b!5466983 m!6486258))

(check-sat (not b!5466974) (not setNonEmpty!35851) (not b!5466983) (not b!5466977) (not b!5466985) (not b!5466972) (not b!5466984) (not b!5466970) (not b!5466968) tp_is_empty!39899 (not b!5466965) (not b!5466981) (not b!5466973) (not b!5466966) (not b!5466971) (not b!5466990) (not b!5466986) (not b!5466989) (not b!5466988) (not b!5466987) (not start!572278) (not b!5466975) (not b!5466982))
(check-sat)
