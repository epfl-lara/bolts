; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563362 () Bool)

(assert start!563362)

(declare-fun b!5349581 () Bool)

(assert (=> b!5349581 true))

(assert (=> b!5349581 true))

(declare-fun lambda!274912 () Int)

(declare-fun lambda!274911 () Int)

(assert (=> b!5349581 (not (= lambda!274912 lambda!274911))))

(assert (=> b!5349581 true))

(assert (=> b!5349581 true))

(declare-fun b!5349597 () Bool)

(assert (=> b!5349597 true))

(declare-fun bs!1240230 () Bool)

(declare-fun b!5349584 () Bool)

(assert (= bs!1240230 (and b!5349584 b!5349581)))

(declare-datatypes ((C!30344 0))(
  ( (C!30345 (val!24874 Int)) )
))
(declare-datatypes ((Regex!15037 0))(
  ( (ElementMatch!15037 (c!931215 C!30344)) (Concat!23882 (regOne!30586 Regex!15037) (regTwo!30586 Regex!15037)) (EmptyExpr!15037) (Star!15037 (reg!15366 Regex!15037)) (EmptyLang!15037) (Union!15037 (regOne!30587 Regex!15037) (regTwo!30587 Regex!15037)) )
))
(declare-fun lt!2180826 () Regex!15037)

(declare-fun r!7292 () Regex!15037)

(declare-fun lambda!274914 () Int)

(assert (=> bs!1240230 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!274914 lambda!274911))))

(assert (=> bs!1240230 (not (= lambda!274914 lambda!274912))))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(declare-fun lambda!274915 () Int)

(assert (=> bs!1240230 (not (= lambda!274915 lambda!274911))))

(assert (=> bs!1240230 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!274915 lambda!274912))))

(assert (=> b!5349584 (not (= lambda!274915 lambda!274914))))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(declare-fun lt!2180800 () Regex!15037)

(declare-fun lambda!274916 () Int)

(assert (=> bs!1240230 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!274916 lambda!274911))))

(assert (=> bs!1240230 (not (= lambda!274916 lambda!274912))))

(assert (=> b!5349584 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 (regOne!30586 r!7292))) (= lt!2180800 lt!2180826)) (= lambda!274916 lambda!274914))))

(assert (=> b!5349584 (not (= lambda!274916 lambda!274915))))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(declare-fun lambda!274917 () Int)

(assert (=> bs!1240230 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!274917 lambda!274912))))

(assert (=> b!5349584 (not (= lambda!274917 lambda!274914))))

(assert (=> b!5349584 (not (= lambda!274917 lambda!274916))))

(assert (=> bs!1240230 (not (= lambda!274917 lambda!274911))))

(assert (=> b!5349584 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 (regOne!30586 r!7292))) (= lt!2180800 lt!2180826)) (= lambda!274917 lambda!274915))))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(assert (=> b!5349584 true))

(declare-fun b!5349562 () Bool)

(declare-fun e!3321009 () Bool)

(declare-fun e!3321007 () Bool)

(assert (=> b!5349562 (= e!3321009 e!3321007)))

(declare-fun res!2269785 () Bool)

(assert (=> b!5349562 (=> res!2269785 e!3321007)))

(declare-datatypes ((List!61410 0))(
  ( (Nil!61286) (Cons!61286 (h!67734 C!30344) (t!374627 List!61410)) )
))
(declare-fun s!2326 () List!61410)

(declare-fun lt!2180796 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61411 0))(
  ( (Nil!61287) (Cons!61287 (h!67735 Regex!15037) (t!374628 List!61411)) )
))
(declare-datatypes ((Context!8842 0))(
  ( (Context!8843 (exprs!4921 List!61411)) )
))
(declare-fun lt!2180811 () (InoxSet Context!8842))

(declare-fun matchZipper!1281 ((InoxSet Context!8842) List!61410) Bool)

(assert (=> b!5349562 (= res!2269785 (not (= lt!2180796 (matchZipper!1281 lt!2180811 (t!374627 s!2326)))))))

(declare-fun lt!2180824 () (InoxSet Context!8842))

(assert (=> b!5349562 (= lt!2180796 (matchZipper!1281 lt!2180824 (t!374627 s!2326)))))

(declare-fun b!5349563 () Bool)

(declare-fun e!3321006 () Bool)

(declare-fun tp!1486219 () Bool)

(declare-fun tp!1486223 () Bool)

(assert (=> b!5349563 (= e!3321006 (and tp!1486219 tp!1486223))))

(declare-fun b!5349564 () Bool)

(declare-fun res!2269802 () Bool)

(declare-fun e!3321011 () Bool)

(assert (=> b!5349564 (=> res!2269802 e!3321011)))

(declare-datatypes ((List!61412 0))(
  ( (Nil!61288) (Cons!61288 (h!67736 Context!8842) (t!374629 List!61412)) )
))
(declare-fun zl!343 () List!61412)

(declare-fun isEmpty!33263 (List!61412) Bool)

(assert (=> b!5349564 (= res!2269802 (not (isEmpty!33263 (t!374629 zl!343))))))

(declare-fun b!5349565 () Bool)

(declare-fun res!2269804 () Bool)

(declare-fun e!3321000 () Bool)

(assert (=> b!5349565 (=> res!2269804 e!3321000)))

(declare-fun lt!2180798 () (InoxSet Context!8842))

(assert (=> b!5349565 (= res!2269804 (not (= lt!2180796 (matchZipper!1281 lt!2180798 (t!374627 s!2326)))))))

(declare-fun b!5349566 () Bool)

(declare-fun res!2269800 () Bool)

(declare-fun e!3321015 () Bool)

(assert (=> b!5349566 (=> res!2269800 e!3321015)))

(get-info :version)

(assert (=> b!5349566 (= res!2269800 (not ((_ is Concat!23882) (regOne!30586 r!7292))))))

(declare-fun b!5349567 () Bool)

(declare-fun res!2269780 () Bool)

(declare-fun e!3321005 () Bool)

(assert (=> b!5349567 (=> res!2269780 e!3321005)))

(declare-fun isEmpty!33264 (List!61411) Bool)

(assert (=> b!5349567 (= res!2269780 (isEmpty!33264 (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5349569 () Bool)

(declare-fun tp!1486222 () Bool)

(declare-fun tp!1486220 () Bool)

(assert (=> b!5349569 (= e!3321006 (and tp!1486222 tp!1486220))))

(declare-fun b!5349570 () Bool)

(declare-datatypes ((Unit!153666 0))(
  ( (Unit!153667) )
))
(declare-fun e!3321003 () Unit!153666)

(declare-fun Unit!153668 () Unit!153666)

(assert (=> b!5349570 (= e!3321003 Unit!153668)))

(declare-fun lt!2180807 () Unit!153666)

(declare-fun lt!2180827 () (InoxSet Context!8842))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!274 ((InoxSet Context!8842) (InoxSet Context!8842) List!61410) Unit!153666)

(assert (=> b!5349570 (= lt!2180807 (lemmaZipperConcatMatchesSameAsBothZippers!274 lt!2180824 lt!2180827 (t!374627 s!2326)))))

(declare-fun res!2269787 () Bool)

(assert (=> b!5349570 (= res!2269787 (matchZipper!1281 lt!2180824 (t!374627 s!2326)))))

(declare-fun e!3321001 () Bool)

(assert (=> b!5349570 (=> res!2269787 e!3321001)))

(assert (=> b!5349570 (= (matchZipper!1281 ((_ map or) lt!2180824 lt!2180827) (t!374627 s!2326)) e!3321001)))

(declare-fun b!5349571 () Bool)

(declare-fun res!2269794 () Bool)

(declare-fun e!3321013 () Bool)

(assert (=> b!5349571 (=> res!2269794 e!3321013)))

(declare-fun lt!2180803 () Context!8842)

(declare-fun contextDepthTotal!170 (Context!8842) Int)

(assert (=> b!5349571 (= res!2269794 (>= (contextDepthTotal!170 lt!2180803) (contextDepthTotal!170 (h!67736 zl!343))))))

(declare-fun b!5349572 () Bool)

(declare-fun res!2269798 () Bool)

(declare-fun e!3321004 () Bool)

(assert (=> b!5349572 (=> (not res!2269798) (not e!3321004))))

(declare-fun z!1189 () (InoxSet Context!8842))

(declare-fun toList!8821 ((InoxSet Context!8842)) List!61412)

(assert (=> b!5349572 (= res!2269798 (= (toList!8821 z!1189) zl!343))))

(declare-fun b!5349573 () Bool)

(declare-fun e!3321018 () Bool)

(assert (=> b!5349573 (= e!3321013 e!3321018)))

(declare-fun res!2269783 () Bool)

(assert (=> b!5349573 (=> res!2269783 e!3321018)))

(declare-fun lt!2180801 () List!61412)

(declare-fun zipperDepthTotal!190 (List!61412) Int)

(assert (=> b!5349573 (= res!2269783 (>= (zipperDepthTotal!190 lt!2180801) (zipperDepthTotal!190 zl!343)))))

(assert (=> b!5349573 (= lt!2180801 (Cons!61288 lt!2180803 Nil!61288))))

(declare-fun b!5349574 () Bool)

(declare-fun res!2269797 () Bool)

(assert (=> b!5349574 (=> res!2269797 e!3321018)))

(declare-fun zipperDepth!146 (List!61412) Int)

(assert (=> b!5349574 (= res!2269797 (> (zipperDepth!146 lt!2180801) (zipperDepth!146 zl!343)))))

(declare-fun b!5349575 () Bool)

(declare-fun res!2269803 () Bool)

(assert (=> b!5349575 (=> res!2269803 e!3321011)))

(declare-fun generalisedUnion!966 (List!61411) Regex!15037)

(declare-fun unfocusZipperList!479 (List!61412) List!61411)

(assert (=> b!5349575 (= res!2269803 (not (= r!7292 (generalisedUnion!966 (unfocusZipperList!479 zl!343)))))))

(declare-fun setIsEmpty!34555 () Bool)

(declare-fun setRes!34555 () Bool)

(assert (=> setIsEmpty!34555 setRes!34555))

(declare-fun tp!1486218 () Bool)

(declare-fun setNonEmpty!34555 () Bool)

(declare-fun e!3321014 () Bool)

(declare-fun setElem!34555 () Context!8842)

(declare-fun inv!80839 (Context!8842) Bool)

(assert (=> setNonEmpty!34555 (= setRes!34555 (and tp!1486218 (inv!80839 setElem!34555) e!3321014))))

(declare-fun setRest!34555 () (InoxSet Context!8842))

(assert (=> setNonEmpty!34555 (= z!1189 ((_ map or) (store ((as const (Array Context!8842 Bool)) false) setElem!34555 true) setRest!34555))))

(declare-fun b!5349576 () Bool)

(declare-fun e!3321010 () Bool)

(declare-fun lt!2180830 () Regex!15037)

(declare-fun validRegex!6773 (Regex!15037) Bool)

(assert (=> b!5349576 (= e!3321010 (validRegex!6773 lt!2180830))))

(declare-fun lt!2180828 () Bool)

(declare-fun matchR!7222 (Regex!15037 List!61410) Bool)

(assert (=> b!5349576 (= lt!2180828 (matchR!7222 lt!2180830 s!2326))))

(assert (=> b!5349576 (= lt!2180830 (Concat!23882 (regOne!30586 (regOne!30586 r!7292)) (Concat!23882 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800)))))

(declare-fun lt!2180816 () Unit!153666)

(declare-fun lemmaConcatAssociative!14 (Regex!15037 Regex!15037 Regex!15037 List!61410) Unit!153666)

(assert (=> b!5349576 (= lt!2180816 (lemmaConcatAssociative!14 (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326))))

(declare-fun b!5349577 () Bool)

(assert (=> b!5349577 (= e!3321015 e!3321009)))

(declare-fun res!2269799 () Bool)

(assert (=> b!5349577 (=> res!2269799 e!3321009)))

(assert (=> b!5349577 (= res!2269799 (not (= lt!2180824 lt!2180811)))))

(declare-fun lt!2180797 () List!61411)

(declare-fun derivationStepZipperDown!485 (Regex!15037 Context!8842 C!30344) (InoxSet Context!8842))

(assert (=> b!5349577 (= lt!2180811 (derivationStepZipperDown!485 (regOne!30586 (regOne!30586 r!7292)) (Context!8843 lt!2180797) (h!67734 s!2326)))))

(assert (=> b!5349577 (= lt!2180797 (Cons!61287 (regTwo!30586 (regOne!30586 r!7292)) (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5349578 () Bool)

(declare-fun res!2269782 () Bool)

(declare-fun e!3321017 () Bool)

(assert (=> b!5349578 (=> res!2269782 e!3321017)))

(declare-fun lt!2180795 () Bool)

(declare-fun lt!2180794 () Regex!15037)

(assert (=> b!5349578 (= res!2269782 (not (= lt!2180795 (matchR!7222 (Concat!23882 lt!2180794 (regTwo!30586 r!7292)) s!2326))))))

(declare-fun b!5349579 () Bool)

(declare-fun res!2269792 () Bool)

(assert (=> b!5349579 (=> res!2269792 e!3321011)))

(assert (=> b!5349579 (= res!2269792 (or ((_ is EmptyExpr!15037) r!7292) ((_ is EmptyLang!15037) r!7292) ((_ is ElementMatch!15037) r!7292) ((_ is Union!15037) r!7292) (not ((_ is Concat!23882) r!7292))))))

(declare-fun b!5349580 () Bool)

(declare-fun tp!1486221 () Bool)

(assert (=> b!5349580 (= e!3321014 tp!1486221)))

(assert (=> b!5349581 (= e!3321011 e!3321005)))

(declare-fun res!2269791 () Bool)

(assert (=> b!5349581 (=> res!2269791 e!3321005)))

(declare-fun lt!2180823 () Bool)

(assert (=> b!5349581 (= res!2269791 (or (not (= lt!2180795 lt!2180823)) ((_ is Nil!61286) s!2326)))))

(declare-fun Exists!2218 (Int) Bool)

(assert (=> b!5349581 (= (Exists!2218 lambda!274911) (Exists!2218 lambda!274912))))

(declare-fun lt!2180806 () Unit!153666)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!872 (Regex!15037 Regex!15037 List!61410) Unit!153666)

(assert (=> b!5349581 (= lt!2180806 (lemmaExistCutMatchRandMatchRSpecEquivalent!872 (regOne!30586 r!7292) (regTwo!30586 r!7292) s!2326))))

(assert (=> b!5349581 (= lt!2180823 (Exists!2218 lambda!274911))))

(declare-datatypes ((tuple2!64472 0))(
  ( (tuple2!64473 (_1!35539 List!61410) (_2!35539 List!61410)) )
))
(declare-datatypes ((Option!15148 0))(
  ( (None!15147) (Some!15147 (v!51176 tuple2!64472)) )
))
(declare-fun isDefined!11851 (Option!15148) Bool)

(declare-fun findConcatSeparation!1562 (Regex!15037 Regex!15037 List!61410 List!61410 List!61410) Option!15148)

(assert (=> b!5349581 (= lt!2180823 (isDefined!11851 (findConcatSeparation!1562 (regOne!30586 r!7292) (regTwo!30586 r!7292) Nil!61286 s!2326 s!2326)))))

(declare-fun lt!2180821 () Unit!153666)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1326 (Regex!15037 Regex!15037 List!61410) Unit!153666)

(assert (=> b!5349581 (= lt!2180821 (lemmaFindConcatSeparationEquivalentToExists!1326 (regOne!30586 r!7292) (regTwo!30586 r!7292) s!2326))))

(declare-fun res!2269784 () Bool)

(assert (=> start!563362 (=> (not res!2269784) (not e!3321004))))

(assert (=> start!563362 (= res!2269784 (validRegex!6773 r!7292))))

(assert (=> start!563362 e!3321004))

(assert (=> start!563362 e!3321006))

(declare-fun condSetEmpty!34555 () Bool)

(assert (=> start!563362 (= condSetEmpty!34555 (= z!1189 ((as const (Array Context!8842 Bool)) false)))))

(assert (=> start!563362 setRes!34555))

(declare-fun e!3321016 () Bool)

(assert (=> start!563362 e!3321016))

(declare-fun e!3321002 () Bool)

(assert (=> start!563362 e!3321002))

(declare-fun b!5349568 () Bool)

(declare-fun res!2269796 () Bool)

(assert (=> b!5349568 (=> res!2269796 e!3321017)))

(assert (=> b!5349568 (= res!2269796 (not (= lt!2180795 (matchR!7222 (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292)) s!2326))))))

(declare-fun b!5349582 () Bool)

(assert (=> b!5349582 (= e!3321007 e!3321000)))

(declare-fun res!2269779 () Bool)

(assert (=> b!5349582 (=> res!2269779 e!3321000)))

(assert (=> b!5349582 (= res!2269779 (not (= lt!2180798 lt!2180811)))))

(declare-fun lambda!274913 () Int)

(declare-fun lt!2180808 () (InoxSet Context!8842))

(declare-fun flatMap!764 ((InoxSet Context!8842) Int) (InoxSet Context!8842))

(declare-fun derivationStepZipperUp!409 (Context!8842 C!30344) (InoxSet Context!8842))

(assert (=> b!5349582 (= (flatMap!764 lt!2180808 lambda!274913) (derivationStepZipperUp!409 lt!2180803 (h!67734 s!2326)))))

(declare-fun lt!2180809 () Unit!153666)

(declare-fun lemmaFlatMapOnSingletonSet!296 ((InoxSet Context!8842) Context!8842 Int) Unit!153666)

(assert (=> b!5349582 (= lt!2180809 (lemmaFlatMapOnSingletonSet!296 lt!2180808 lt!2180803 lambda!274913))))

(declare-fun lt!2180817 () (InoxSet Context!8842))

(assert (=> b!5349582 (= lt!2180817 (derivationStepZipperUp!409 lt!2180803 (h!67734 s!2326)))))

(declare-fun derivationStepZipper!1278 ((InoxSet Context!8842) C!30344) (InoxSet Context!8842))

(assert (=> b!5349582 (= lt!2180798 (derivationStepZipper!1278 lt!2180808 (h!67734 s!2326)))))

(assert (=> b!5349582 (= lt!2180808 (store ((as const (Array Context!8842 Bool)) false) lt!2180803 true))))

(declare-fun lt!2180814 () List!61411)

(assert (=> b!5349582 (= lt!2180803 (Context!8843 lt!2180814))))

(assert (=> b!5349582 (= lt!2180814 (Cons!61287 (regOne!30586 (regOne!30586 r!7292)) lt!2180797))))

(declare-fun b!5349583 () Bool)

(declare-fun res!2269793 () Bool)

(assert (=> b!5349583 (=> res!2269793 e!3321015)))

(declare-fun e!3321012 () Bool)

(assert (=> b!5349583 (= res!2269793 e!3321012)))

(declare-fun res!2269805 () Bool)

(assert (=> b!5349583 (=> (not res!2269805) (not e!3321012))))

(assert (=> b!5349583 (= res!2269805 ((_ is Concat!23882) (regOne!30586 r!7292)))))

(assert (=> b!5349584 (= e!3321018 e!3321017)))

(declare-fun res!2269788 () Bool)

(assert (=> b!5349584 (=> res!2269788 e!3321017)))

(declare-fun lt!2180818 () Bool)

(declare-fun lt!2180815 () Bool)

(declare-fun lt!2180810 () Bool)

(assert (=> b!5349584 (= res!2269788 (or (not (= lt!2180810 lt!2180815)) (not (= lt!2180810 lt!2180818))))))

(assert (=> b!5349584 (= lt!2180810 (matchZipper!1281 z!1189 s!2326))))

(assert (=> b!5349584 (= (Exists!2218 lambda!274916) (Exists!2218 lambda!274917))))

(declare-fun lt!2180822 () Unit!153666)

(assert (=> b!5349584 (= lt!2180822 (lemmaExistCutMatchRandMatchRSpecEquivalent!872 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326))))

(assert (=> b!5349584 (= (isDefined!11851 (findConcatSeparation!1562 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 Nil!61286 s!2326 s!2326)) (Exists!2218 lambda!274916))))

(declare-fun lt!2180804 () Unit!153666)

(assert (=> b!5349584 (= lt!2180804 (lemmaFindConcatSeparationEquivalentToExists!1326 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326))))

(declare-fun generalisedConcat!706 (List!61411) Regex!15037)

(assert (=> b!5349584 (= lt!2180800 (generalisedConcat!706 (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun matchRSpec!2140 (Regex!15037 List!61410) Bool)

(assert (=> b!5349584 (= (matchR!7222 lt!2180826 s!2326) (matchRSpec!2140 lt!2180826 s!2326))))

(declare-fun lt!2180819 () Unit!153666)

(declare-fun mainMatchTheorem!2140 (Regex!15037 List!61410) Unit!153666)

(assert (=> b!5349584 (= lt!2180819 (mainMatchTheorem!2140 lt!2180826 s!2326))))

(assert (=> b!5349584 (= (Exists!2218 lambda!274914) (Exists!2218 lambda!274915))))

(declare-fun lt!2180832 () Unit!153666)

(assert (=> b!5349584 (= lt!2180832 (lemmaExistCutMatchRandMatchRSpecEquivalent!872 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 s!2326))))

(assert (=> b!5349584 (= (isDefined!11851 (findConcatSeparation!1562 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 Nil!61286 s!2326 s!2326)) (Exists!2218 lambda!274914))))

(declare-fun lt!2180820 () Unit!153666)

(assert (=> b!5349584 (= lt!2180820 (lemmaFindConcatSeparationEquivalentToExists!1326 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 s!2326))))

(assert (=> b!5349584 (= lt!2180826 (generalisedConcat!706 lt!2180797))))

(declare-fun lt!2180802 () Regex!15037)

(assert (=> b!5349584 (= lt!2180818 (matchRSpec!2140 lt!2180802 s!2326))))

(declare-fun lt!2180805 () Unit!153666)

(assert (=> b!5349584 (= lt!2180805 (mainMatchTheorem!2140 lt!2180802 s!2326))))

(assert (=> b!5349584 (= lt!2180818 lt!2180815)))

(assert (=> b!5349584 (= lt!2180815 (matchZipper!1281 lt!2180808 s!2326))))

(assert (=> b!5349584 (= lt!2180818 (matchR!7222 lt!2180802 s!2326))))

(declare-fun lt!2180831 () Unit!153666)

(declare-fun theoremZipperRegexEquiv!435 ((InoxSet Context!8842) List!61412 Regex!15037 List!61410) Unit!153666)

(assert (=> b!5349584 (= lt!2180831 (theoremZipperRegexEquiv!435 lt!2180808 lt!2180801 lt!2180802 s!2326))))

(assert (=> b!5349584 (= lt!2180802 (generalisedConcat!706 lt!2180814))))

(declare-fun b!5349585 () Bool)

(declare-fun tp_is_empty!39327 () Bool)

(assert (=> b!5349585 (= e!3321006 tp_is_empty!39327)))

(declare-fun b!5349586 () Bool)

(declare-fun nullable!5206 (Regex!15037) Bool)

(assert (=> b!5349586 (= e!3321012 (nullable!5206 (regOne!30586 (regOne!30586 r!7292))))))

(declare-fun tp!1486217 () Bool)

(declare-fun e!3321008 () Bool)

(declare-fun b!5349587 () Bool)

(assert (=> b!5349587 (= e!3321016 (and (inv!80839 (h!67736 zl!343)) e!3321008 tp!1486217))))

(declare-fun b!5349588 () Bool)

(declare-fun tp!1486224 () Bool)

(assert (=> b!5349588 (= e!3321008 tp!1486224)))

(declare-fun b!5349589 () Bool)

(declare-fun res!2269778 () Bool)

(assert (=> b!5349589 (=> res!2269778 e!3321011)))

(assert (=> b!5349589 (= res!2269778 (not (= r!7292 (generalisedConcat!706 (exprs!4921 (h!67736 zl!343))))))))

(declare-fun b!5349590 () Bool)

(assert (=> b!5349590 (= e!3321001 (matchZipper!1281 lt!2180827 (t!374627 s!2326)))))

(declare-fun b!5349591 () Bool)

(assert (=> b!5349591 (= e!3321004 (not e!3321011))))

(declare-fun res!2269801 () Bool)

(assert (=> b!5349591 (=> res!2269801 e!3321011)))

(assert (=> b!5349591 (= res!2269801 (not ((_ is Cons!61288) zl!343)))))

(assert (=> b!5349591 (= lt!2180795 (matchRSpec!2140 r!7292 s!2326))))

(assert (=> b!5349591 (= lt!2180795 (matchR!7222 r!7292 s!2326))))

(declare-fun lt!2180799 () Unit!153666)

(assert (=> b!5349591 (= lt!2180799 (mainMatchTheorem!2140 r!7292 s!2326))))

(declare-fun b!5349592 () Bool)

(assert (=> b!5349592 (= e!3321017 e!3321010)))

(declare-fun res!2269786 () Bool)

(assert (=> b!5349592 (=> res!2269786 e!3321010)))

(assert (=> b!5349592 (= res!2269786 (not (= lt!2180795 lt!2180828)))))

(assert (=> b!5349592 (= lt!2180828 (matchR!7222 (Concat!23882 lt!2180794 lt!2180800) s!2326))))

(declare-fun b!5349593 () Bool)

(declare-fun tp!1486225 () Bool)

(assert (=> b!5349593 (= e!3321002 (and tp_is_empty!39327 tp!1486225))))

(declare-fun b!5349594 () Bool)

(declare-fun tp!1486216 () Bool)

(assert (=> b!5349594 (= e!3321006 tp!1486216)))

(declare-fun b!5349595 () Bool)

(declare-fun Unit!153669 () Unit!153666)

(assert (=> b!5349595 (= e!3321003 Unit!153669)))

(declare-fun b!5349596 () Bool)

(declare-fun res!2269789 () Bool)

(assert (=> b!5349596 (=> res!2269789 e!3321011)))

(assert (=> b!5349596 (= res!2269789 (not ((_ is Cons!61287) (exprs!4921 (h!67736 zl!343)))))))

(assert (=> b!5349597 (= e!3321005 e!3321015)))

(declare-fun res!2269795 () Bool)

(assert (=> b!5349597 (=> res!2269795 e!3321015)))

(assert (=> b!5349597 (= res!2269795 (or (and ((_ is ElementMatch!15037) (regOne!30586 r!7292)) (= (c!931215 (regOne!30586 r!7292)) (h!67734 s!2326))) ((_ is Union!15037) (regOne!30586 r!7292))))))

(declare-fun lt!2180829 () Unit!153666)

(assert (=> b!5349597 (= lt!2180829 e!3321003)))

(declare-fun c!931214 () Bool)

(assert (=> b!5349597 (= c!931214 (nullable!5206 (h!67735 (exprs!4921 (h!67736 zl!343)))))))

(assert (=> b!5349597 (= (flatMap!764 z!1189 lambda!274913) (derivationStepZipperUp!409 (h!67736 zl!343) (h!67734 s!2326)))))

(declare-fun lt!2180813 () Unit!153666)

(assert (=> b!5349597 (= lt!2180813 (lemmaFlatMapOnSingletonSet!296 z!1189 (h!67736 zl!343) lambda!274913))))

(declare-fun lt!2180825 () Context!8842)

(assert (=> b!5349597 (= lt!2180827 (derivationStepZipperUp!409 lt!2180825 (h!67734 s!2326)))))

(assert (=> b!5349597 (= lt!2180824 (derivationStepZipperDown!485 (h!67735 (exprs!4921 (h!67736 zl!343))) lt!2180825 (h!67734 s!2326)))))

(assert (=> b!5349597 (= lt!2180825 (Context!8843 (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun lt!2180812 () (InoxSet Context!8842))

(assert (=> b!5349597 (= lt!2180812 (derivationStepZipperUp!409 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343))))) (h!67734 s!2326)))))

(declare-fun b!5349598 () Bool)

(assert (=> b!5349598 (= e!3321000 e!3321013)))

(declare-fun res!2269790 () Bool)

(assert (=> b!5349598 (=> res!2269790 e!3321013)))

(assert (=> b!5349598 (= res!2269790 (not (= (exprs!4921 (h!67736 zl!343)) (Cons!61287 lt!2180794 (t!374628 (exprs!4921 (h!67736 zl!343)))))))))

(assert (=> b!5349598 (= lt!2180794 (Concat!23882 (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))))))

(declare-fun b!5349599 () Bool)

(declare-fun res!2269781 () Bool)

(assert (=> b!5349599 (=> (not res!2269781) (not e!3321004))))

(declare-fun unfocusZipper!779 (List!61412) Regex!15037)

(assert (=> b!5349599 (= res!2269781 (= r!7292 (unfocusZipper!779 zl!343)))))

(assert (= (and start!563362 res!2269784) b!5349572))

(assert (= (and b!5349572 res!2269798) b!5349599))

(assert (= (and b!5349599 res!2269781) b!5349591))

(assert (= (and b!5349591 (not res!2269801)) b!5349564))

(assert (= (and b!5349564 (not res!2269802)) b!5349589))

(assert (= (and b!5349589 (not res!2269778)) b!5349596))

(assert (= (and b!5349596 (not res!2269789)) b!5349575))

(assert (= (and b!5349575 (not res!2269803)) b!5349579))

(assert (= (and b!5349579 (not res!2269792)) b!5349581))

(assert (= (and b!5349581 (not res!2269791)) b!5349567))

(assert (= (and b!5349567 (not res!2269780)) b!5349597))

(assert (= (and b!5349597 c!931214) b!5349570))

(assert (= (and b!5349597 (not c!931214)) b!5349595))

(assert (= (and b!5349570 (not res!2269787)) b!5349590))

(assert (= (and b!5349597 (not res!2269795)) b!5349583))

(assert (= (and b!5349583 res!2269805) b!5349586))

(assert (= (and b!5349583 (not res!2269793)) b!5349566))

(assert (= (and b!5349566 (not res!2269800)) b!5349577))

(assert (= (and b!5349577 (not res!2269799)) b!5349562))

(assert (= (and b!5349562 (not res!2269785)) b!5349582))

(assert (= (and b!5349582 (not res!2269779)) b!5349565))

(assert (= (and b!5349565 (not res!2269804)) b!5349598))

(assert (= (and b!5349598 (not res!2269790)) b!5349571))

(assert (= (and b!5349571 (not res!2269794)) b!5349573))

(assert (= (and b!5349573 (not res!2269783)) b!5349574))

(assert (= (and b!5349574 (not res!2269797)) b!5349584))

(assert (= (and b!5349584 (not res!2269788)) b!5349568))

(assert (= (and b!5349568 (not res!2269796)) b!5349578))

(assert (= (and b!5349578 (not res!2269782)) b!5349592))

(assert (= (and b!5349592 (not res!2269786)) b!5349576))

(assert (= (and start!563362 ((_ is ElementMatch!15037) r!7292)) b!5349585))

(assert (= (and start!563362 ((_ is Concat!23882) r!7292)) b!5349563))

(assert (= (and start!563362 ((_ is Star!15037) r!7292)) b!5349594))

(assert (= (and start!563362 ((_ is Union!15037) r!7292)) b!5349569))

(assert (= (and start!563362 condSetEmpty!34555) setIsEmpty!34555))

(assert (= (and start!563362 (not condSetEmpty!34555)) setNonEmpty!34555))

(assert (= setNonEmpty!34555 b!5349580))

(assert (= b!5349587 b!5349588))

(assert (= (and start!563362 ((_ is Cons!61288) zl!343)) b!5349587))

(assert (= (and start!563362 ((_ is Cons!61286) s!2326)) b!5349593))

(declare-fun m!6380794 () Bool)

(assert (=> b!5349570 m!6380794))

(declare-fun m!6380796 () Bool)

(assert (=> b!5349570 m!6380796))

(declare-fun m!6380798 () Bool)

(assert (=> b!5349570 m!6380798))

(declare-fun m!6380800 () Bool)

(assert (=> b!5349578 m!6380800))

(declare-fun m!6380802 () Bool)

(assert (=> b!5349597 m!6380802))

(declare-fun m!6380804 () Bool)

(assert (=> b!5349597 m!6380804))

(declare-fun m!6380806 () Bool)

(assert (=> b!5349597 m!6380806))

(declare-fun m!6380808 () Bool)

(assert (=> b!5349597 m!6380808))

(declare-fun m!6380810 () Bool)

(assert (=> b!5349597 m!6380810))

(declare-fun m!6380812 () Bool)

(assert (=> b!5349597 m!6380812))

(declare-fun m!6380814 () Bool)

(assert (=> b!5349597 m!6380814))

(declare-fun m!6380816 () Bool)

(assert (=> b!5349567 m!6380816))

(declare-fun m!6380818 () Bool)

(assert (=> b!5349577 m!6380818))

(declare-fun m!6380820 () Bool)

(assert (=> b!5349592 m!6380820))

(declare-fun m!6380822 () Bool)

(assert (=> b!5349590 m!6380822))

(declare-fun m!6380824 () Bool)

(assert (=> b!5349575 m!6380824))

(assert (=> b!5349575 m!6380824))

(declare-fun m!6380826 () Bool)

(assert (=> b!5349575 m!6380826))

(declare-fun m!6380828 () Bool)

(assert (=> b!5349599 m!6380828))

(declare-fun m!6380830 () Bool)

(assert (=> b!5349591 m!6380830))

(declare-fun m!6380832 () Bool)

(assert (=> b!5349591 m!6380832))

(declare-fun m!6380834 () Bool)

(assert (=> b!5349591 m!6380834))

(declare-fun m!6380836 () Bool)

(assert (=> b!5349568 m!6380836))

(declare-fun m!6380838 () Bool)

(assert (=> b!5349573 m!6380838))

(declare-fun m!6380840 () Bool)

(assert (=> b!5349573 m!6380840))

(declare-fun m!6380842 () Bool)

(assert (=> b!5349584 m!6380842))

(declare-fun m!6380844 () Bool)

(assert (=> b!5349584 m!6380844))

(declare-fun m!6380846 () Bool)

(assert (=> b!5349584 m!6380846))

(declare-fun m!6380848 () Bool)

(assert (=> b!5349584 m!6380848))

(declare-fun m!6380850 () Bool)

(assert (=> b!5349584 m!6380850))

(declare-fun m!6380852 () Bool)

(assert (=> b!5349584 m!6380852))

(declare-fun m!6380854 () Bool)

(assert (=> b!5349584 m!6380854))

(declare-fun m!6380856 () Bool)

(assert (=> b!5349584 m!6380856))

(declare-fun m!6380858 () Bool)

(assert (=> b!5349584 m!6380858))

(declare-fun m!6380860 () Bool)

(assert (=> b!5349584 m!6380860))

(declare-fun m!6380862 () Bool)

(assert (=> b!5349584 m!6380862))

(declare-fun m!6380864 () Bool)

(assert (=> b!5349584 m!6380864))

(assert (=> b!5349584 m!6380852))

(declare-fun m!6380866 () Bool)

(assert (=> b!5349584 m!6380866))

(declare-fun m!6380868 () Bool)

(assert (=> b!5349584 m!6380868))

(declare-fun m!6380870 () Bool)

(assert (=> b!5349584 m!6380870))

(declare-fun m!6380872 () Bool)

(assert (=> b!5349584 m!6380872))

(declare-fun m!6380874 () Bool)

(assert (=> b!5349584 m!6380874))

(declare-fun m!6380876 () Bool)

(assert (=> b!5349584 m!6380876))

(assert (=> b!5349584 m!6380866))

(assert (=> b!5349584 m!6380856))

(declare-fun m!6380878 () Bool)

(assert (=> b!5349584 m!6380878))

(declare-fun m!6380880 () Bool)

(assert (=> b!5349584 m!6380880))

(declare-fun m!6380882 () Bool)

(assert (=> b!5349584 m!6380882))

(declare-fun m!6380884 () Bool)

(assert (=> b!5349584 m!6380884))

(declare-fun m!6380886 () Bool)

(assert (=> b!5349584 m!6380886))

(declare-fun m!6380888 () Bool)

(assert (=> b!5349584 m!6380888))

(assert (=> b!5349584 m!6380868))

(declare-fun m!6380890 () Bool)

(assert (=> b!5349576 m!6380890))

(declare-fun m!6380892 () Bool)

(assert (=> b!5349576 m!6380892))

(declare-fun m!6380894 () Bool)

(assert (=> b!5349576 m!6380894))

(declare-fun m!6380896 () Bool)

(assert (=> b!5349571 m!6380896))

(declare-fun m!6380898 () Bool)

(assert (=> b!5349571 m!6380898))

(declare-fun m!6380900 () Bool)

(assert (=> b!5349586 m!6380900))

(declare-fun m!6380902 () Bool)

(assert (=> b!5349582 m!6380902))

(declare-fun m!6380904 () Bool)

(assert (=> b!5349582 m!6380904))

(declare-fun m!6380906 () Bool)

(assert (=> b!5349582 m!6380906))

(declare-fun m!6380908 () Bool)

(assert (=> b!5349582 m!6380908))

(declare-fun m!6380910 () Bool)

(assert (=> b!5349582 m!6380910))

(declare-fun m!6380912 () Bool)

(assert (=> b!5349574 m!6380912))

(declare-fun m!6380914 () Bool)

(assert (=> b!5349574 m!6380914))

(declare-fun m!6380916 () Bool)

(assert (=> b!5349562 m!6380916))

(assert (=> b!5349562 m!6380796))

(declare-fun m!6380918 () Bool)

(assert (=> b!5349589 m!6380918))

(declare-fun m!6380920 () Bool)

(assert (=> b!5349581 m!6380920))

(declare-fun m!6380922 () Bool)

(assert (=> b!5349581 m!6380922))

(declare-fun m!6380924 () Bool)

(assert (=> b!5349581 m!6380924))

(declare-fun m!6380926 () Bool)

(assert (=> b!5349581 m!6380926))

(declare-fun m!6380928 () Bool)

(assert (=> b!5349581 m!6380928))

(assert (=> b!5349581 m!6380928))

(assert (=> b!5349581 m!6380924))

(declare-fun m!6380930 () Bool)

(assert (=> b!5349581 m!6380930))

(declare-fun m!6380932 () Bool)

(assert (=> b!5349564 m!6380932))

(declare-fun m!6380934 () Bool)

(assert (=> start!563362 m!6380934))

(declare-fun m!6380936 () Bool)

(assert (=> setNonEmpty!34555 m!6380936))

(declare-fun m!6380938 () Bool)

(assert (=> b!5349572 m!6380938))

(declare-fun m!6380940 () Bool)

(assert (=> b!5349565 m!6380940))

(declare-fun m!6380942 () Bool)

(assert (=> b!5349587 m!6380942))

(check-sat (not b!5349590) (not b!5349597) (not b!5349580) (not b!5349575) (not b!5349591) (not b!5349576) (not b!5349570) (not b!5349584) (not b!5349572) (not start!563362) (not b!5349568) (not b!5349565) (not b!5349593) (not b!5349588) (not b!5349587) (not b!5349573) (not b!5349577) (not b!5349569) (not b!5349582) (not b!5349599) (not b!5349594) (not b!5349586) (not setNonEmpty!34555) (not b!5349567) tp_is_empty!39327 (not b!5349571) (not b!5349563) (not b!5349562) (not b!5349578) (not b!5349574) (not b!5349592) (not b!5349589) (not b!5349564) (not b!5349581))
(check-sat)
(get-model)

(declare-fun bm!382449 () Bool)

(declare-fun call!382454 () (InoxSet Context!8842))

(assert (=> bm!382449 (= call!382454 (derivationStepZipperDown!485 (h!67735 (exprs!4921 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343))))))) (Context!8843 (t!374628 (exprs!4921 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343)))))))) (h!67734 s!2326)))))

(declare-fun b!5349968 () Bool)

(declare-fun e!3321229 () Bool)

(assert (=> b!5349968 (= e!3321229 (nullable!5206 (h!67735 (exprs!4921 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343)))))))))))

(declare-fun b!5349969 () Bool)

(declare-fun e!3321227 () (InoxSet Context!8842))

(declare-fun e!3321228 () (InoxSet Context!8842))

(assert (=> b!5349969 (= e!3321227 e!3321228)))

(declare-fun c!931337 () Bool)

(assert (=> b!5349969 (= c!931337 ((_ is Cons!61287) (exprs!4921 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343))))))))))

(declare-fun d!1715484 () Bool)

(declare-fun c!931338 () Bool)

(assert (=> d!1715484 (= c!931338 e!3321229)))

(declare-fun res!2269938 () Bool)

(assert (=> d!1715484 (=> (not res!2269938) (not e!3321229))))

(assert (=> d!1715484 (= res!2269938 ((_ is Cons!61287) (exprs!4921 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343))))))))))

(assert (=> d!1715484 (= (derivationStepZipperUp!409 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343))))) (h!67734 s!2326)) e!3321227)))

(declare-fun b!5349970 () Bool)

(assert (=> b!5349970 (= e!3321227 ((_ map or) call!382454 (derivationStepZipperUp!409 (Context!8843 (t!374628 (exprs!4921 (Context!8843 (Cons!61287 (h!67735 (exprs!4921 (h!67736 zl!343))) (t!374628 (exprs!4921 (h!67736 zl!343)))))))) (h!67734 s!2326))))))

(declare-fun b!5349971 () Bool)

(assert (=> b!5349971 (= e!3321228 call!382454)))

(declare-fun b!5349972 () Bool)

(assert (=> b!5349972 (= e!3321228 ((as const (Array Context!8842 Bool)) false))))

(assert (= (and d!1715484 res!2269938) b!5349968))

(assert (= (and d!1715484 c!931338) b!5349970))

(assert (= (and d!1715484 (not c!931338)) b!5349969))

(assert (= (and b!5349969 c!931337) b!5349971))

(assert (= (and b!5349969 (not c!931337)) b!5349972))

(assert (= (or b!5349970 b!5349971) bm!382449))

(declare-fun m!6381174 () Bool)

(assert (=> bm!382449 m!6381174))

(declare-fun m!6381176 () Bool)

(assert (=> b!5349968 m!6381176))

(declare-fun m!6381178 () Bool)

(assert (=> b!5349970 m!6381178))

(assert (=> b!5349597 d!1715484))

(declare-fun d!1715490 () Bool)

(declare-fun dynLambda!24227 (Int Context!8842) (InoxSet Context!8842))

(assert (=> d!1715490 (= (flatMap!764 z!1189 lambda!274913) (dynLambda!24227 lambda!274913 (h!67736 zl!343)))))

(declare-fun lt!2180886 () Unit!153666)

(declare-fun choose!40135 ((InoxSet Context!8842) Context!8842 Int) Unit!153666)

(assert (=> d!1715490 (= lt!2180886 (choose!40135 z!1189 (h!67736 zl!343) lambda!274913))))

(assert (=> d!1715490 (= z!1189 (store ((as const (Array Context!8842 Bool)) false) (h!67736 zl!343) true))))

(assert (=> d!1715490 (= (lemmaFlatMapOnSingletonSet!296 z!1189 (h!67736 zl!343) lambda!274913) lt!2180886)))

(declare-fun b_lambda!205313 () Bool)

(assert (=> (not b_lambda!205313) (not d!1715490)))

(declare-fun bs!1240258 () Bool)

(assert (= bs!1240258 d!1715490))

(assert (=> bs!1240258 m!6380806))

(declare-fun m!6381180 () Bool)

(assert (=> bs!1240258 m!6381180))

(declare-fun m!6381182 () Bool)

(assert (=> bs!1240258 m!6381182))

(declare-fun m!6381184 () Bool)

(assert (=> bs!1240258 m!6381184))

(assert (=> b!5349597 d!1715490))

(declare-fun bm!382450 () Bool)

(declare-fun call!382455 () (InoxSet Context!8842))

(assert (=> bm!382450 (= call!382455 (derivationStepZipperDown!485 (h!67735 (exprs!4921 (h!67736 zl!343))) (Context!8843 (t!374628 (exprs!4921 (h!67736 zl!343)))) (h!67734 s!2326)))))

(declare-fun b!5350000 () Bool)

(declare-fun e!3321247 () Bool)

(assert (=> b!5350000 (= e!3321247 (nullable!5206 (h!67735 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350001 () Bool)

(declare-fun e!3321245 () (InoxSet Context!8842))

(declare-fun e!3321246 () (InoxSet Context!8842))

(assert (=> b!5350001 (= e!3321245 e!3321246)))

(declare-fun c!931345 () Bool)

(assert (=> b!5350001 (= c!931345 ((_ is Cons!61287) (exprs!4921 (h!67736 zl!343))))))

(declare-fun d!1715492 () Bool)

(declare-fun c!931346 () Bool)

(assert (=> d!1715492 (= c!931346 e!3321247)))

(declare-fun res!2269954 () Bool)

(assert (=> d!1715492 (=> (not res!2269954) (not e!3321247))))

(assert (=> d!1715492 (= res!2269954 ((_ is Cons!61287) (exprs!4921 (h!67736 zl!343))))))

(assert (=> d!1715492 (= (derivationStepZipperUp!409 (h!67736 zl!343) (h!67734 s!2326)) e!3321245)))

(declare-fun b!5350002 () Bool)

(assert (=> b!5350002 (= e!3321245 ((_ map or) call!382455 (derivationStepZipperUp!409 (Context!8843 (t!374628 (exprs!4921 (h!67736 zl!343)))) (h!67734 s!2326))))))

(declare-fun b!5350003 () Bool)

(assert (=> b!5350003 (= e!3321246 call!382455)))

(declare-fun b!5350004 () Bool)

(assert (=> b!5350004 (= e!3321246 ((as const (Array Context!8842 Bool)) false))))

(assert (= (and d!1715492 res!2269954) b!5350000))

(assert (= (and d!1715492 c!931346) b!5350002))

(assert (= (and d!1715492 (not c!931346)) b!5350001))

(assert (= (and b!5350001 c!931345) b!5350003))

(assert (= (and b!5350001 (not c!931345)) b!5350004))

(assert (= (or b!5350002 b!5350003) bm!382450))

(declare-fun m!6381186 () Bool)

(assert (=> bm!382450 m!6381186))

(assert (=> b!5350000 m!6380808))

(declare-fun m!6381192 () Bool)

(assert (=> b!5350002 m!6381192))

(assert (=> b!5349597 d!1715492))

(declare-fun b!5350039 () Bool)

(declare-fun e!3321267 () (InoxSet Context!8842))

(declare-fun call!382472 () (InoxSet Context!8842))

(assert (=> b!5350039 (= e!3321267 call!382472)))

(declare-fun b!5350040 () Bool)

(declare-fun e!3321266 () (InoxSet Context!8842))

(assert (=> b!5350040 (= e!3321266 (store ((as const (Array Context!8842 Bool)) false) lt!2180825 true))))

(declare-fun b!5350041 () Bool)

(declare-fun e!3321271 () (InoxSet Context!8842))

(assert (=> b!5350041 (= e!3321266 e!3321271)))

(declare-fun c!931358 () Bool)

(assert (=> b!5350041 (= c!931358 ((_ is Union!15037) (h!67735 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350042 () Bool)

(declare-fun e!3321270 () (InoxSet Context!8842))

(declare-fun call!382470 () (InoxSet Context!8842))

(declare-fun call!382473 () (InoxSet Context!8842))

(assert (=> b!5350042 (= e!3321270 ((_ map or) call!382470 call!382473))))

(declare-fun b!5350043 () Bool)

(declare-fun e!3321269 () (InoxSet Context!8842))

(assert (=> b!5350043 (= e!3321269 call!382472)))

(declare-fun bm!382463 () Bool)

(assert (=> bm!382463 (= call!382472 call!382473)))

(declare-fun bm!382464 () Bool)

(declare-fun call!382468 () (InoxSet Context!8842))

(assert (=> bm!382464 (= call!382473 call!382468)))

(declare-fun bm!382465 () Bool)

(declare-fun call!382471 () List!61411)

(assert (=> bm!382465 (= call!382470 (derivationStepZipperDown!485 (ite c!931358 (regOne!30587 (h!67735 (exprs!4921 (h!67736 zl!343)))) (regOne!30586 (h!67735 (exprs!4921 (h!67736 zl!343))))) (ite c!931358 lt!2180825 (Context!8843 call!382471)) (h!67734 s!2326)))))

(declare-fun bm!382466 () Bool)

(declare-fun call!382469 () List!61411)

(assert (=> bm!382466 (= call!382469 call!382471)))

(declare-fun bm!382467 () Bool)

(declare-fun c!931361 () Bool)

(declare-fun c!931357 () Bool)

(declare-fun $colon$colon!1428 (List!61411 Regex!15037) List!61411)

(assert (=> bm!382467 (= call!382471 ($colon$colon!1428 (exprs!4921 lt!2180825) (ite (or c!931357 c!931361) (regTwo!30586 (h!67735 (exprs!4921 (h!67736 zl!343)))) (h!67735 (exprs!4921 (h!67736 zl!343))))))))

(declare-fun b!5350044 () Bool)

(declare-fun c!931360 () Bool)

(assert (=> b!5350044 (= c!931360 ((_ is Star!15037) (h!67735 (exprs!4921 (h!67736 zl!343)))))))

(assert (=> b!5350044 (= e!3321267 e!3321269)))

(declare-fun b!5350045 () Bool)

(assert (=> b!5350045 (= e!3321271 ((_ map or) call!382470 call!382468))))

(declare-fun d!1715494 () Bool)

(declare-fun c!931359 () Bool)

(assert (=> d!1715494 (= c!931359 (and ((_ is ElementMatch!15037) (h!67735 (exprs!4921 (h!67736 zl!343)))) (= (c!931215 (h!67735 (exprs!4921 (h!67736 zl!343)))) (h!67734 s!2326))))))

(assert (=> d!1715494 (= (derivationStepZipperDown!485 (h!67735 (exprs!4921 (h!67736 zl!343))) lt!2180825 (h!67734 s!2326)) e!3321266)))

(declare-fun b!5350046 () Bool)

(assert (=> b!5350046 (= e!3321270 e!3321267)))

(assert (=> b!5350046 (= c!931361 ((_ is Concat!23882) (h!67735 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350047 () Bool)

(declare-fun e!3321268 () Bool)

(assert (=> b!5350047 (= e!3321268 (nullable!5206 (regOne!30586 (h!67735 (exprs!4921 (h!67736 zl!343))))))))

(declare-fun bm!382468 () Bool)

(assert (=> bm!382468 (= call!382468 (derivationStepZipperDown!485 (ite c!931358 (regTwo!30587 (h!67735 (exprs!4921 (h!67736 zl!343)))) (ite c!931357 (regTwo!30586 (h!67735 (exprs!4921 (h!67736 zl!343)))) (ite c!931361 (regOne!30586 (h!67735 (exprs!4921 (h!67736 zl!343)))) (reg!15366 (h!67735 (exprs!4921 (h!67736 zl!343))))))) (ite (or c!931358 c!931357) lt!2180825 (Context!8843 call!382469)) (h!67734 s!2326)))))

(declare-fun b!5350048 () Bool)

(assert (=> b!5350048 (= c!931357 e!3321268)))

(declare-fun res!2269969 () Bool)

(assert (=> b!5350048 (=> (not res!2269969) (not e!3321268))))

(assert (=> b!5350048 (= res!2269969 ((_ is Concat!23882) (h!67735 (exprs!4921 (h!67736 zl!343)))))))

(assert (=> b!5350048 (= e!3321271 e!3321270)))

(declare-fun b!5350049 () Bool)

(assert (=> b!5350049 (= e!3321269 ((as const (Array Context!8842 Bool)) false))))

(assert (= (and d!1715494 c!931359) b!5350040))

(assert (= (and d!1715494 (not c!931359)) b!5350041))

(assert (= (and b!5350041 c!931358) b!5350045))

(assert (= (and b!5350041 (not c!931358)) b!5350048))

(assert (= (and b!5350048 res!2269969) b!5350047))

(assert (= (and b!5350048 c!931357) b!5350042))

(assert (= (and b!5350048 (not c!931357)) b!5350046))

(assert (= (and b!5350046 c!931361) b!5350039))

(assert (= (and b!5350046 (not c!931361)) b!5350044))

(assert (= (and b!5350044 c!931360) b!5350043))

(assert (= (and b!5350044 (not c!931360)) b!5350049))

(assert (= (or b!5350039 b!5350043) bm!382466))

(assert (= (or b!5350039 b!5350043) bm!382463))

(assert (= (or b!5350042 bm!382466) bm!382467))

(assert (= (or b!5350042 bm!382463) bm!382464))

(assert (= (or b!5350045 bm!382464) bm!382468))

(assert (= (or b!5350045 b!5350042) bm!382465))

(declare-fun m!6381230 () Bool)

(assert (=> bm!382465 m!6381230))

(declare-fun m!6381232 () Bool)

(assert (=> bm!382468 m!6381232))

(declare-fun m!6381236 () Bool)

(assert (=> b!5350040 m!6381236))

(declare-fun m!6381238 () Bool)

(assert (=> b!5350047 m!6381238))

(declare-fun m!6381240 () Bool)

(assert (=> bm!382467 m!6381240))

(assert (=> b!5349597 d!1715494))

(declare-fun d!1715510 () Bool)

(declare-fun choose!40136 ((InoxSet Context!8842) Int) (InoxSet Context!8842))

(assert (=> d!1715510 (= (flatMap!764 z!1189 lambda!274913) (choose!40136 z!1189 lambda!274913))))

(declare-fun bs!1240274 () Bool)

(assert (= bs!1240274 d!1715510))

(declare-fun m!6381242 () Bool)

(assert (=> bs!1240274 m!6381242))

(assert (=> b!5349597 d!1715510))

(declare-fun d!1715512 () Bool)

(declare-fun nullableFct!1530 (Regex!15037) Bool)

(assert (=> d!1715512 (= (nullable!5206 (h!67735 (exprs!4921 (h!67736 zl!343)))) (nullableFct!1530 (h!67735 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun bs!1240275 () Bool)

(assert (= bs!1240275 d!1715512))

(declare-fun m!6381248 () Bool)

(assert (=> bs!1240275 m!6381248))

(assert (=> b!5349597 d!1715512))

(declare-fun bm!382469 () Bool)

(declare-fun call!382474 () (InoxSet Context!8842))

(assert (=> bm!382469 (= call!382474 (derivationStepZipperDown!485 (h!67735 (exprs!4921 lt!2180825)) (Context!8843 (t!374628 (exprs!4921 lt!2180825))) (h!67734 s!2326)))))

(declare-fun b!5350058 () Bool)

(declare-fun e!3321278 () Bool)

(assert (=> b!5350058 (= e!3321278 (nullable!5206 (h!67735 (exprs!4921 lt!2180825))))))

(declare-fun b!5350059 () Bool)

(declare-fun e!3321276 () (InoxSet Context!8842))

(declare-fun e!3321277 () (InoxSet Context!8842))

(assert (=> b!5350059 (= e!3321276 e!3321277)))

(declare-fun c!931366 () Bool)

(assert (=> b!5350059 (= c!931366 ((_ is Cons!61287) (exprs!4921 lt!2180825)))))

(declare-fun d!1715516 () Bool)

(declare-fun c!931367 () Bool)

(assert (=> d!1715516 (= c!931367 e!3321278)))

(declare-fun res!2269970 () Bool)

(assert (=> d!1715516 (=> (not res!2269970) (not e!3321278))))

(assert (=> d!1715516 (= res!2269970 ((_ is Cons!61287) (exprs!4921 lt!2180825)))))

(assert (=> d!1715516 (= (derivationStepZipperUp!409 lt!2180825 (h!67734 s!2326)) e!3321276)))

(declare-fun b!5350060 () Bool)

(assert (=> b!5350060 (= e!3321276 ((_ map or) call!382474 (derivationStepZipperUp!409 (Context!8843 (t!374628 (exprs!4921 lt!2180825))) (h!67734 s!2326))))))

(declare-fun b!5350061 () Bool)

(assert (=> b!5350061 (= e!3321277 call!382474)))

(declare-fun b!5350062 () Bool)

(assert (=> b!5350062 (= e!3321277 ((as const (Array Context!8842 Bool)) false))))

(assert (= (and d!1715516 res!2269970) b!5350058))

(assert (= (and d!1715516 c!931367) b!5350060))

(assert (= (and d!1715516 (not c!931367)) b!5350059))

(assert (= (and b!5350059 c!931366) b!5350061))

(assert (= (and b!5350059 (not c!931366)) b!5350062))

(assert (= (or b!5350060 b!5350061) bm!382469))

(declare-fun m!6381252 () Bool)

(assert (=> bm!382469 m!6381252))

(declare-fun m!6381254 () Bool)

(assert (=> b!5350058 m!6381254))

(declare-fun m!6381256 () Bool)

(assert (=> b!5350060 m!6381256))

(assert (=> b!5349597 d!1715516))

(declare-fun b!5350063 () Bool)

(declare-fun e!3321280 () (InoxSet Context!8842))

(declare-fun call!382479 () (InoxSet Context!8842))

(assert (=> b!5350063 (= e!3321280 call!382479)))

(declare-fun b!5350064 () Bool)

(declare-fun e!3321279 () (InoxSet Context!8842))

(assert (=> b!5350064 (= e!3321279 (store ((as const (Array Context!8842 Bool)) false) (Context!8843 lt!2180797) true))))

(declare-fun b!5350065 () Bool)

(declare-fun e!3321284 () (InoxSet Context!8842))

(assert (=> b!5350065 (= e!3321279 e!3321284)))

(declare-fun c!931369 () Bool)

(assert (=> b!5350065 (= c!931369 ((_ is Union!15037) (regOne!30586 (regOne!30586 r!7292))))))

(declare-fun b!5350066 () Bool)

(declare-fun e!3321283 () (InoxSet Context!8842))

(declare-fun call!382477 () (InoxSet Context!8842))

(declare-fun call!382480 () (InoxSet Context!8842))

(assert (=> b!5350066 (= e!3321283 ((_ map or) call!382477 call!382480))))

(declare-fun b!5350067 () Bool)

(declare-fun e!3321282 () (InoxSet Context!8842))

(assert (=> b!5350067 (= e!3321282 call!382479)))

(declare-fun bm!382470 () Bool)

(assert (=> bm!382470 (= call!382479 call!382480)))

(declare-fun bm!382471 () Bool)

(declare-fun call!382475 () (InoxSet Context!8842))

(assert (=> bm!382471 (= call!382480 call!382475)))

(declare-fun call!382478 () List!61411)

(declare-fun bm!382472 () Bool)

(assert (=> bm!382472 (= call!382477 (derivationStepZipperDown!485 (ite c!931369 (regOne!30587 (regOne!30586 (regOne!30586 r!7292))) (regOne!30586 (regOne!30586 (regOne!30586 r!7292)))) (ite c!931369 (Context!8843 lt!2180797) (Context!8843 call!382478)) (h!67734 s!2326)))))

(declare-fun bm!382473 () Bool)

(declare-fun call!382476 () List!61411)

(assert (=> bm!382473 (= call!382476 call!382478)))

(declare-fun bm!382474 () Bool)

(declare-fun c!931368 () Bool)

(declare-fun c!931372 () Bool)

(assert (=> bm!382474 (= call!382478 ($colon$colon!1428 (exprs!4921 (Context!8843 lt!2180797)) (ite (or c!931368 c!931372) (regTwo!30586 (regOne!30586 (regOne!30586 r!7292))) (regOne!30586 (regOne!30586 r!7292)))))))

(declare-fun b!5350068 () Bool)

(declare-fun c!931371 () Bool)

(assert (=> b!5350068 (= c!931371 ((_ is Star!15037) (regOne!30586 (regOne!30586 r!7292))))))

(assert (=> b!5350068 (= e!3321280 e!3321282)))

(declare-fun b!5350069 () Bool)

(assert (=> b!5350069 (= e!3321284 ((_ map or) call!382477 call!382475))))

(declare-fun d!1715520 () Bool)

(declare-fun c!931370 () Bool)

(assert (=> d!1715520 (= c!931370 (and ((_ is ElementMatch!15037) (regOne!30586 (regOne!30586 r!7292))) (= (c!931215 (regOne!30586 (regOne!30586 r!7292))) (h!67734 s!2326))))))

(assert (=> d!1715520 (= (derivationStepZipperDown!485 (regOne!30586 (regOne!30586 r!7292)) (Context!8843 lt!2180797) (h!67734 s!2326)) e!3321279)))

(declare-fun b!5350070 () Bool)

(assert (=> b!5350070 (= e!3321283 e!3321280)))

(assert (=> b!5350070 (= c!931372 ((_ is Concat!23882) (regOne!30586 (regOne!30586 r!7292))))))

(declare-fun b!5350071 () Bool)

(declare-fun e!3321281 () Bool)

(assert (=> b!5350071 (= e!3321281 (nullable!5206 (regOne!30586 (regOne!30586 (regOne!30586 r!7292)))))))

(declare-fun bm!382475 () Bool)

(assert (=> bm!382475 (= call!382475 (derivationStepZipperDown!485 (ite c!931369 (regTwo!30587 (regOne!30586 (regOne!30586 r!7292))) (ite c!931368 (regTwo!30586 (regOne!30586 (regOne!30586 r!7292))) (ite c!931372 (regOne!30586 (regOne!30586 (regOne!30586 r!7292))) (reg!15366 (regOne!30586 (regOne!30586 r!7292)))))) (ite (or c!931369 c!931368) (Context!8843 lt!2180797) (Context!8843 call!382476)) (h!67734 s!2326)))))

(declare-fun b!5350072 () Bool)

(assert (=> b!5350072 (= c!931368 e!3321281)))

(declare-fun res!2269971 () Bool)

(assert (=> b!5350072 (=> (not res!2269971) (not e!3321281))))

(assert (=> b!5350072 (= res!2269971 ((_ is Concat!23882) (regOne!30586 (regOne!30586 r!7292))))))

(assert (=> b!5350072 (= e!3321284 e!3321283)))

(declare-fun b!5350073 () Bool)

(assert (=> b!5350073 (= e!3321282 ((as const (Array Context!8842 Bool)) false))))

(assert (= (and d!1715520 c!931370) b!5350064))

(assert (= (and d!1715520 (not c!931370)) b!5350065))

(assert (= (and b!5350065 c!931369) b!5350069))

(assert (= (and b!5350065 (not c!931369)) b!5350072))

(assert (= (and b!5350072 res!2269971) b!5350071))

(assert (= (and b!5350072 c!931368) b!5350066))

(assert (= (and b!5350072 (not c!931368)) b!5350070))

(assert (= (and b!5350070 c!931372) b!5350063))

(assert (= (and b!5350070 (not c!931372)) b!5350068))

(assert (= (and b!5350068 c!931371) b!5350067))

(assert (= (and b!5350068 (not c!931371)) b!5350073))

(assert (= (or b!5350063 b!5350067) bm!382473))

(assert (= (or b!5350063 b!5350067) bm!382470))

(assert (= (or b!5350066 bm!382473) bm!382474))

(assert (= (or b!5350066 bm!382470) bm!382471))

(assert (= (or b!5350069 bm!382471) bm!382475))

(assert (= (or b!5350069 b!5350066) bm!382472))

(declare-fun m!6381264 () Bool)

(assert (=> bm!382472 m!6381264))

(declare-fun m!6381266 () Bool)

(assert (=> bm!382475 m!6381266))

(declare-fun m!6381268 () Bool)

(assert (=> b!5350064 m!6381268))

(declare-fun m!6381270 () Bool)

(assert (=> b!5350071 m!6381270))

(declare-fun m!6381272 () Bool)

(assert (=> bm!382474 m!6381272))

(assert (=> b!5349577 d!1715520))

(declare-fun d!1715524 () Bool)

(declare-fun lambda!274962 () Int)

(declare-fun forall!14464 (List!61411 Int) Bool)

(assert (=> d!1715524 (= (inv!80839 setElem!34555) (forall!14464 (exprs!4921 setElem!34555) lambda!274962))))

(declare-fun bs!1240277 () Bool)

(assert (= bs!1240277 d!1715524))

(declare-fun m!6381284 () Bool)

(assert (=> bs!1240277 m!6381284))

(assert (=> setNonEmpty!34555 d!1715524))

(declare-fun b!5350138 () Bool)

(declare-fun res!2270001 () Bool)

(declare-fun e!3321331 () Bool)

(assert (=> b!5350138 (=> res!2270001 e!3321331)))

(assert (=> b!5350138 (= res!2270001 (not ((_ is Concat!23882) lt!2180830)))))

(declare-fun e!3321327 () Bool)

(assert (=> b!5350138 (= e!3321327 e!3321331)))

(declare-fun b!5350139 () Bool)

(declare-fun e!3321326 () Bool)

(declare-fun e!3321332 () Bool)

(assert (=> b!5350139 (= e!3321326 e!3321332)))

(declare-fun c!931393 () Bool)

(assert (=> b!5350139 (= c!931393 ((_ is Star!15037) lt!2180830))))

(declare-fun b!5350140 () Bool)

(declare-fun e!3321330 () Bool)

(declare-fun call!382491 () Bool)

(assert (=> b!5350140 (= e!3321330 call!382491)))

(declare-fun b!5350141 () Bool)

(assert (=> b!5350141 (= e!3321332 e!3321327)))

(declare-fun c!931394 () Bool)

(assert (=> b!5350141 (= c!931394 ((_ is Union!15037) lt!2180830))))

(declare-fun b!5350142 () Bool)

(declare-fun e!3321329 () Bool)

(assert (=> b!5350142 (= e!3321332 e!3321329)))

(declare-fun res!2270000 () Bool)

(assert (=> b!5350142 (= res!2270000 (not (nullable!5206 (reg!15366 lt!2180830))))))

(assert (=> b!5350142 (=> (not res!2270000) (not e!3321329))))

(declare-fun bm!382485 () Bool)

(declare-fun call!382490 () Bool)

(assert (=> bm!382485 (= call!382490 (validRegex!6773 (ite c!931394 (regOne!30587 lt!2180830) (regOne!30586 lt!2180830))))))

(declare-fun d!1715532 () Bool)

(declare-fun res!2270002 () Bool)

(assert (=> d!1715532 (=> res!2270002 e!3321326)))

(assert (=> d!1715532 (= res!2270002 ((_ is ElementMatch!15037) lt!2180830))))

(assert (=> d!1715532 (= (validRegex!6773 lt!2180830) e!3321326)))

(declare-fun b!5350143 () Bool)

(declare-fun e!3321328 () Bool)

(assert (=> b!5350143 (= e!3321331 e!3321328)))

(declare-fun res!2269999 () Bool)

(assert (=> b!5350143 (=> (not res!2269999) (not e!3321328))))

(assert (=> b!5350143 (= res!2269999 call!382490)))

(declare-fun b!5350144 () Bool)

(declare-fun res!2269998 () Bool)

(assert (=> b!5350144 (=> (not res!2269998) (not e!3321330))))

(assert (=> b!5350144 (= res!2269998 call!382490)))

(assert (=> b!5350144 (= e!3321327 e!3321330)))

(declare-fun b!5350145 () Bool)

(declare-fun call!382492 () Bool)

(assert (=> b!5350145 (= e!3321329 call!382492)))

(declare-fun b!5350146 () Bool)

(assert (=> b!5350146 (= e!3321328 call!382491)))

(declare-fun bm!382486 () Bool)

(assert (=> bm!382486 (= call!382491 call!382492)))

(declare-fun bm!382487 () Bool)

(assert (=> bm!382487 (= call!382492 (validRegex!6773 (ite c!931393 (reg!15366 lt!2180830) (ite c!931394 (regTwo!30587 lt!2180830) (regTwo!30586 lt!2180830)))))))

(assert (= (and d!1715532 (not res!2270002)) b!5350139))

(assert (= (and b!5350139 c!931393) b!5350142))

(assert (= (and b!5350139 (not c!931393)) b!5350141))

(assert (= (and b!5350142 res!2270000) b!5350145))

(assert (= (and b!5350141 c!931394) b!5350144))

(assert (= (and b!5350141 (not c!931394)) b!5350138))

(assert (= (and b!5350144 res!2269998) b!5350140))

(assert (= (and b!5350138 (not res!2270001)) b!5350143))

(assert (= (and b!5350143 res!2269999) b!5350146))

(assert (= (or b!5350140 b!5350146) bm!382486))

(assert (= (or b!5350144 b!5350143) bm!382485))

(assert (= (or b!5350145 bm!382486) bm!382487))

(declare-fun m!6381328 () Bool)

(assert (=> b!5350142 m!6381328))

(declare-fun m!6381330 () Bool)

(assert (=> bm!382485 m!6381330))

(declare-fun m!6381332 () Bool)

(assert (=> bm!382487 m!6381332))

(assert (=> b!5349576 d!1715532))

(declare-fun b!5350212 () Bool)

(declare-fun res!2270034 () Bool)

(declare-fun e!3321370 () Bool)

(assert (=> b!5350212 (=> (not res!2270034) (not e!3321370))))

(declare-fun isEmpty!33266 (List!61410) Bool)

(declare-fun tail!10571 (List!61410) List!61410)

(assert (=> b!5350212 (= res!2270034 (isEmpty!33266 (tail!10571 s!2326)))))

(declare-fun b!5350213 () Bool)

(declare-fun e!3321368 () Bool)

(declare-fun lt!2180924 () Bool)

(assert (=> b!5350213 (= e!3321368 (not lt!2180924))))

(declare-fun b!5350214 () Bool)

(declare-fun e!3321373 () Bool)

(declare-fun e!3321369 () Bool)

(assert (=> b!5350214 (= e!3321373 e!3321369)))

(declare-fun res!2270035 () Bool)

(assert (=> b!5350214 (=> (not res!2270035) (not e!3321369))))

(assert (=> b!5350214 (= res!2270035 (not lt!2180924))))

(declare-fun d!1715548 () Bool)

(declare-fun e!3321372 () Bool)

(assert (=> d!1715548 e!3321372))

(declare-fun c!931415 () Bool)

(assert (=> d!1715548 (= c!931415 ((_ is EmptyExpr!15037) lt!2180830))))

(declare-fun e!3321374 () Bool)

(assert (=> d!1715548 (= lt!2180924 e!3321374)))

(declare-fun c!931414 () Bool)

(assert (=> d!1715548 (= c!931414 (isEmpty!33266 s!2326))))

(assert (=> d!1715548 (validRegex!6773 lt!2180830)))

(assert (=> d!1715548 (= (matchR!7222 lt!2180830 s!2326) lt!2180924)))

(declare-fun b!5350215 () Bool)

(declare-fun res!2270038 () Bool)

(declare-fun e!3321371 () Bool)

(assert (=> b!5350215 (=> res!2270038 e!3321371)))

(assert (=> b!5350215 (= res!2270038 (not (isEmpty!33266 (tail!10571 s!2326))))))

(declare-fun b!5350216 () Bool)

(declare-fun head!11474 (List!61410) C!30344)

(assert (=> b!5350216 (= e!3321370 (= (head!11474 s!2326) (c!931215 lt!2180830)))))

(declare-fun b!5350217 () Bool)

(declare-fun res!2270036 () Bool)

(assert (=> b!5350217 (=> res!2270036 e!3321373)))

(assert (=> b!5350217 (= res!2270036 (not ((_ is ElementMatch!15037) lt!2180830)))))

(assert (=> b!5350217 (= e!3321368 e!3321373)))

(declare-fun b!5350218 () Bool)

(assert (=> b!5350218 (= e!3321369 e!3321371)))

(declare-fun res!2270033 () Bool)

(assert (=> b!5350218 (=> res!2270033 e!3321371)))

(declare-fun call!382498 () Bool)

(assert (=> b!5350218 (= res!2270033 call!382498)))

(declare-fun b!5350219 () Bool)

(declare-fun res!2270037 () Bool)

(assert (=> b!5350219 (=> res!2270037 e!3321373)))

(assert (=> b!5350219 (= res!2270037 e!3321370)))

(declare-fun res!2270032 () Bool)

(assert (=> b!5350219 (=> (not res!2270032) (not e!3321370))))

(assert (=> b!5350219 (= res!2270032 lt!2180924)))

(declare-fun b!5350220 () Bool)

(declare-fun derivativeStep!4199 (Regex!15037 C!30344) Regex!15037)

(assert (=> b!5350220 (= e!3321374 (matchR!7222 (derivativeStep!4199 lt!2180830 (head!11474 s!2326)) (tail!10571 s!2326)))))

(declare-fun bm!382493 () Bool)

(assert (=> bm!382493 (= call!382498 (isEmpty!33266 s!2326))))

(declare-fun b!5350221 () Bool)

(assert (=> b!5350221 (= e!3321372 (= lt!2180924 call!382498))))

(declare-fun b!5350222 () Bool)

(assert (=> b!5350222 (= e!3321374 (nullable!5206 lt!2180830))))

(declare-fun b!5350223 () Bool)

(declare-fun res!2270039 () Bool)

(assert (=> b!5350223 (=> (not res!2270039) (not e!3321370))))

(assert (=> b!5350223 (= res!2270039 (not call!382498))))

(declare-fun b!5350224 () Bool)

(assert (=> b!5350224 (= e!3321372 e!3321368)))

(declare-fun c!931413 () Bool)

(assert (=> b!5350224 (= c!931413 ((_ is EmptyLang!15037) lt!2180830))))

(declare-fun b!5350225 () Bool)

(assert (=> b!5350225 (= e!3321371 (not (= (head!11474 s!2326) (c!931215 lt!2180830))))))

(assert (= (and d!1715548 c!931414) b!5350222))

(assert (= (and d!1715548 (not c!931414)) b!5350220))

(assert (= (and d!1715548 c!931415) b!5350221))

(assert (= (and d!1715548 (not c!931415)) b!5350224))

(assert (= (and b!5350224 c!931413) b!5350213))

(assert (= (and b!5350224 (not c!931413)) b!5350217))

(assert (= (and b!5350217 (not res!2270036)) b!5350219))

(assert (= (and b!5350219 res!2270032) b!5350223))

(assert (= (and b!5350223 res!2270039) b!5350212))

(assert (= (and b!5350212 res!2270034) b!5350216))

(assert (= (and b!5350219 (not res!2270037)) b!5350214))

(assert (= (and b!5350214 res!2270035) b!5350218))

(assert (= (and b!5350218 (not res!2270033)) b!5350215))

(assert (= (and b!5350215 (not res!2270038)) b!5350225))

(assert (= (or b!5350221 b!5350223 b!5350218) bm!382493))

(declare-fun m!6381392 () Bool)

(assert (=> b!5350212 m!6381392))

(assert (=> b!5350212 m!6381392))

(declare-fun m!6381394 () Bool)

(assert (=> b!5350212 m!6381394))

(declare-fun m!6381396 () Bool)

(assert (=> bm!382493 m!6381396))

(assert (=> b!5350215 m!6381392))

(assert (=> b!5350215 m!6381392))

(assert (=> b!5350215 m!6381394))

(declare-fun m!6381398 () Bool)

(assert (=> b!5350222 m!6381398))

(assert (=> d!1715548 m!6381396))

(assert (=> d!1715548 m!6380890))

(declare-fun m!6381400 () Bool)

(assert (=> b!5350220 m!6381400))

(assert (=> b!5350220 m!6381400))

(declare-fun m!6381402 () Bool)

(assert (=> b!5350220 m!6381402))

(assert (=> b!5350220 m!6381392))

(assert (=> b!5350220 m!6381402))

(assert (=> b!5350220 m!6381392))

(declare-fun m!6381404 () Bool)

(assert (=> b!5350220 m!6381404))

(assert (=> b!5350225 m!6381400))

(assert (=> b!5350216 m!6381400))

(assert (=> b!5349576 d!1715548))

(declare-fun d!1715570 () Bool)

(assert (=> d!1715570 (= (matchR!7222 (Concat!23882 (Concat!23882 (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) lt!2180800) s!2326) (matchR!7222 (Concat!23882 (regOne!30586 (regOne!30586 r!7292)) (Concat!23882 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800)) s!2326))))

(declare-fun lt!2180934 () Unit!153666)

(declare-fun choose!40137 (Regex!15037 Regex!15037 Regex!15037 List!61410) Unit!153666)

(assert (=> d!1715570 (= lt!2180934 (choose!40137 (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326))))

(declare-fun e!3321387 () Bool)

(assert (=> d!1715570 e!3321387))

(declare-fun res!2270054 () Bool)

(assert (=> d!1715570 (=> (not res!2270054) (not e!3321387))))

(assert (=> d!1715570 (= res!2270054 (validRegex!6773 (regOne!30586 (regOne!30586 r!7292))))))

(assert (=> d!1715570 (= (lemmaConcatAssociative!14 (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326) lt!2180934)))

(declare-fun b!5350248 () Bool)

(declare-fun res!2270055 () Bool)

(assert (=> b!5350248 (=> (not res!2270055) (not e!3321387))))

(assert (=> b!5350248 (= res!2270055 (validRegex!6773 (regTwo!30586 (regOne!30586 r!7292))))))

(declare-fun b!5350249 () Bool)

(assert (=> b!5350249 (= e!3321387 (validRegex!6773 lt!2180800))))

(assert (= (and d!1715570 res!2270054) b!5350248))

(assert (= (and b!5350248 res!2270055) b!5350249))

(declare-fun m!6381436 () Bool)

(assert (=> d!1715570 m!6381436))

(declare-fun m!6381438 () Bool)

(assert (=> d!1715570 m!6381438))

(declare-fun m!6381440 () Bool)

(assert (=> d!1715570 m!6381440))

(declare-fun m!6381442 () Bool)

(assert (=> d!1715570 m!6381442))

(declare-fun m!6381444 () Bool)

(assert (=> b!5350248 m!6381444))

(declare-fun m!6381446 () Bool)

(assert (=> b!5350249 m!6381446))

(assert (=> b!5349576 d!1715570))

(declare-fun d!1715576 () Bool)

(declare-fun lt!2180938 () Regex!15037)

(assert (=> d!1715576 (validRegex!6773 lt!2180938)))

(assert (=> d!1715576 (= lt!2180938 (generalisedUnion!966 (unfocusZipperList!479 zl!343)))))

(assert (=> d!1715576 (= (unfocusZipper!779 zl!343) lt!2180938)))

(declare-fun bs!1240378 () Bool)

(assert (= bs!1240378 d!1715576))

(declare-fun m!6381462 () Bool)

(assert (=> bs!1240378 m!6381462))

(assert (=> bs!1240378 m!6380824))

(assert (=> bs!1240378 m!6380824))

(assert (=> bs!1240378 m!6380826))

(assert (=> b!5349599 d!1715576))

(declare-fun b!5350262 () Bool)

(declare-fun res!2270061 () Bool)

(declare-fun e!3321400 () Bool)

(assert (=> b!5350262 (=> res!2270061 e!3321400)))

(assert (=> b!5350262 (= res!2270061 (not ((_ is Concat!23882) r!7292)))))

(declare-fun e!3321396 () Bool)

(assert (=> b!5350262 (= e!3321396 e!3321400)))

(declare-fun b!5350263 () Bool)

(declare-fun e!3321395 () Bool)

(declare-fun e!3321401 () Bool)

(assert (=> b!5350263 (= e!3321395 e!3321401)))

(declare-fun c!931425 () Bool)

(assert (=> b!5350263 (= c!931425 ((_ is Star!15037) r!7292))))

(declare-fun b!5350264 () Bool)

(declare-fun e!3321399 () Bool)

(declare-fun call!382500 () Bool)

(assert (=> b!5350264 (= e!3321399 call!382500)))

(declare-fun b!5350265 () Bool)

(assert (=> b!5350265 (= e!3321401 e!3321396)))

(declare-fun c!931426 () Bool)

(assert (=> b!5350265 (= c!931426 ((_ is Union!15037) r!7292))))

(declare-fun b!5350266 () Bool)

(declare-fun e!3321398 () Bool)

(assert (=> b!5350266 (= e!3321401 e!3321398)))

(declare-fun res!2270060 () Bool)

(assert (=> b!5350266 (= res!2270060 (not (nullable!5206 (reg!15366 r!7292))))))

(assert (=> b!5350266 (=> (not res!2270060) (not e!3321398))))

(declare-fun bm!382494 () Bool)

(declare-fun call!382499 () Bool)

(assert (=> bm!382494 (= call!382499 (validRegex!6773 (ite c!931426 (regOne!30587 r!7292) (regOne!30586 r!7292))))))

(declare-fun d!1715584 () Bool)

(declare-fun res!2270062 () Bool)

(assert (=> d!1715584 (=> res!2270062 e!3321395)))

(assert (=> d!1715584 (= res!2270062 ((_ is ElementMatch!15037) r!7292))))

(assert (=> d!1715584 (= (validRegex!6773 r!7292) e!3321395)))

(declare-fun b!5350267 () Bool)

(declare-fun e!3321397 () Bool)

(assert (=> b!5350267 (= e!3321400 e!3321397)))

(declare-fun res!2270059 () Bool)

(assert (=> b!5350267 (=> (not res!2270059) (not e!3321397))))

(assert (=> b!5350267 (= res!2270059 call!382499)))

(declare-fun b!5350268 () Bool)

(declare-fun res!2270058 () Bool)

(assert (=> b!5350268 (=> (not res!2270058) (not e!3321399))))

(assert (=> b!5350268 (= res!2270058 call!382499)))

(assert (=> b!5350268 (= e!3321396 e!3321399)))

(declare-fun b!5350269 () Bool)

(declare-fun call!382501 () Bool)

(assert (=> b!5350269 (= e!3321398 call!382501)))

(declare-fun b!5350270 () Bool)

(assert (=> b!5350270 (= e!3321397 call!382500)))

(declare-fun bm!382495 () Bool)

(assert (=> bm!382495 (= call!382500 call!382501)))

(declare-fun bm!382496 () Bool)

(assert (=> bm!382496 (= call!382501 (validRegex!6773 (ite c!931425 (reg!15366 r!7292) (ite c!931426 (regTwo!30587 r!7292) (regTwo!30586 r!7292)))))))

(assert (= (and d!1715584 (not res!2270062)) b!5350263))

(assert (= (and b!5350263 c!931425) b!5350266))

(assert (= (and b!5350263 (not c!931425)) b!5350265))

(assert (= (and b!5350266 res!2270060) b!5350269))

(assert (= (and b!5350265 c!931426) b!5350268))

(assert (= (and b!5350265 (not c!931426)) b!5350262))

(assert (= (and b!5350268 res!2270058) b!5350264))

(assert (= (and b!5350262 (not res!2270061)) b!5350267))

(assert (= (and b!5350267 res!2270059) b!5350270))

(assert (= (or b!5350264 b!5350270) bm!382495))

(assert (= (or b!5350268 b!5350267) bm!382494))

(assert (= (or b!5350269 bm!382495) bm!382496))

(declare-fun m!6381466 () Bool)

(assert (=> b!5350266 m!6381466))

(declare-fun m!6381472 () Bool)

(assert (=> bm!382494 m!6381472))

(declare-fun m!6381478 () Bool)

(assert (=> bm!382496 m!6381478))

(assert (=> start!563362 d!1715584))

(declare-fun b!5350271 () Bool)

(declare-fun res!2270065 () Bool)

(declare-fun e!3321404 () Bool)

(assert (=> b!5350271 (=> (not res!2270065) (not e!3321404))))

(assert (=> b!5350271 (= res!2270065 (isEmpty!33266 (tail!10571 s!2326)))))

(declare-fun b!5350272 () Bool)

(declare-fun e!3321402 () Bool)

(declare-fun lt!2180939 () Bool)

(assert (=> b!5350272 (= e!3321402 (not lt!2180939))))

(declare-fun b!5350273 () Bool)

(declare-fun e!3321407 () Bool)

(declare-fun e!3321403 () Bool)

(assert (=> b!5350273 (= e!3321407 e!3321403)))

(declare-fun res!2270066 () Bool)

(assert (=> b!5350273 (=> (not res!2270066) (not e!3321403))))

(assert (=> b!5350273 (= res!2270066 (not lt!2180939))))

(declare-fun d!1715586 () Bool)

(declare-fun e!3321406 () Bool)

(assert (=> d!1715586 e!3321406))

(declare-fun c!931429 () Bool)

(assert (=> d!1715586 (= c!931429 ((_ is EmptyExpr!15037) (Concat!23882 lt!2180794 (regTwo!30586 r!7292))))))

(declare-fun e!3321408 () Bool)

(assert (=> d!1715586 (= lt!2180939 e!3321408)))

(declare-fun c!931428 () Bool)

(assert (=> d!1715586 (= c!931428 (isEmpty!33266 s!2326))))

(assert (=> d!1715586 (validRegex!6773 (Concat!23882 lt!2180794 (regTwo!30586 r!7292)))))

(assert (=> d!1715586 (= (matchR!7222 (Concat!23882 lt!2180794 (regTwo!30586 r!7292)) s!2326) lt!2180939)))

(declare-fun b!5350274 () Bool)

(declare-fun res!2270069 () Bool)

(declare-fun e!3321405 () Bool)

(assert (=> b!5350274 (=> res!2270069 e!3321405)))

(assert (=> b!5350274 (= res!2270069 (not (isEmpty!33266 (tail!10571 s!2326))))))

(declare-fun b!5350275 () Bool)

(assert (=> b!5350275 (= e!3321404 (= (head!11474 s!2326) (c!931215 (Concat!23882 lt!2180794 (regTwo!30586 r!7292)))))))

(declare-fun b!5350276 () Bool)

(declare-fun res!2270067 () Bool)

(assert (=> b!5350276 (=> res!2270067 e!3321407)))

(assert (=> b!5350276 (= res!2270067 (not ((_ is ElementMatch!15037) (Concat!23882 lt!2180794 (regTwo!30586 r!7292)))))))

(assert (=> b!5350276 (= e!3321402 e!3321407)))

(declare-fun b!5350277 () Bool)

(assert (=> b!5350277 (= e!3321403 e!3321405)))

(declare-fun res!2270064 () Bool)

(assert (=> b!5350277 (=> res!2270064 e!3321405)))

(declare-fun call!382502 () Bool)

(assert (=> b!5350277 (= res!2270064 call!382502)))

(declare-fun b!5350278 () Bool)

(declare-fun res!2270068 () Bool)

(assert (=> b!5350278 (=> res!2270068 e!3321407)))

(assert (=> b!5350278 (= res!2270068 e!3321404)))

(declare-fun res!2270063 () Bool)

(assert (=> b!5350278 (=> (not res!2270063) (not e!3321404))))

(assert (=> b!5350278 (= res!2270063 lt!2180939)))

(declare-fun b!5350279 () Bool)

(assert (=> b!5350279 (= e!3321408 (matchR!7222 (derivativeStep!4199 (Concat!23882 lt!2180794 (regTwo!30586 r!7292)) (head!11474 s!2326)) (tail!10571 s!2326)))))

(declare-fun bm!382497 () Bool)

(assert (=> bm!382497 (= call!382502 (isEmpty!33266 s!2326))))

(declare-fun b!5350280 () Bool)

(assert (=> b!5350280 (= e!3321406 (= lt!2180939 call!382502))))

(declare-fun b!5350281 () Bool)

(assert (=> b!5350281 (= e!3321408 (nullable!5206 (Concat!23882 lt!2180794 (regTwo!30586 r!7292))))))

(declare-fun b!5350282 () Bool)

(declare-fun res!2270070 () Bool)

(assert (=> b!5350282 (=> (not res!2270070) (not e!3321404))))

(assert (=> b!5350282 (= res!2270070 (not call!382502))))

(declare-fun b!5350283 () Bool)

(assert (=> b!5350283 (= e!3321406 e!3321402)))

(declare-fun c!931427 () Bool)

(assert (=> b!5350283 (= c!931427 ((_ is EmptyLang!15037) (Concat!23882 lt!2180794 (regTwo!30586 r!7292))))))

(declare-fun b!5350284 () Bool)

(assert (=> b!5350284 (= e!3321405 (not (= (head!11474 s!2326) (c!931215 (Concat!23882 lt!2180794 (regTwo!30586 r!7292))))))))

(assert (= (and d!1715586 c!931428) b!5350281))

(assert (= (and d!1715586 (not c!931428)) b!5350279))

(assert (= (and d!1715586 c!931429) b!5350280))

(assert (= (and d!1715586 (not c!931429)) b!5350283))

(assert (= (and b!5350283 c!931427) b!5350272))

(assert (= (and b!5350283 (not c!931427)) b!5350276))

(assert (= (and b!5350276 (not res!2270067)) b!5350278))

(assert (= (and b!5350278 res!2270063) b!5350282))

(assert (= (and b!5350282 res!2270070) b!5350271))

(assert (= (and b!5350271 res!2270065) b!5350275))

(assert (= (and b!5350278 (not res!2270068)) b!5350273))

(assert (= (and b!5350273 res!2270066) b!5350277))

(assert (= (and b!5350277 (not res!2270064)) b!5350274))

(assert (= (and b!5350274 (not res!2270069)) b!5350284))

(assert (= (or b!5350280 b!5350282 b!5350277) bm!382497))

(assert (=> b!5350271 m!6381392))

(assert (=> b!5350271 m!6381392))

(assert (=> b!5350271 m!6381394))

(assert (=> bm!382497 m!6381396))

(assert (=> b!5350274 m!6381392))

(assert (=> b!5350274 m!6381392))

(assert (=> b!5350274 m!6381394))

(declare-fun m!6381496 () Bool)

(assert (=> b!5350281 m!6381496))

(assert (=> d!1715586 m!6381396))

(declare-fun m!6381498 () Bool)

(assert (=> d!1715586 m!6381498))

(assert (=> b!5350279 m!6381400))

(assert (=> b!5350279 m!6381400))

(declare-fun m!6381500 () Bool)

(assert (=> b!5350279 m!6381500))

(assert (=> b!5350279 m!6381392))

(assert (=> b!5350279 m!6381500))

(assert (=> b!5350279 m!6381392))

(declare-fun m!6381502 () Bool)

(assert (=> b!5350279 m!6381502))

(assert (=> b!5350284 m!6381400))

(assert (=> b!5350275 m!6381400))

(assert (=> b!5349578 d!1715586))

(declare-fun d!1715594 () Bool)

(declare-fun lt!2180942 () Int)

(assert (=> d!1715594 (>= lt!2180942 0)))

(declare-fun e!3321415 () Int)

(assert (=> d!1715594 (= lt!2180942 e!3321415)))

(declare-fun c!931434 () Bool)

(assert (=> d!1715594 (= c!931434 ((_ is Cons!61288) lt!2180801))))

(assert (=> d!1715594 (= (zipperDepthTotal!190 lt!2180801) lt!2180942)))

(declare-fun b!5350303 () Bool)

(assert (=> b!5350303 (= e!3321415 (+ (contextDepthTotal!170 (h!67736 lt!2180801)) (zipperDepthTotal!190 (t!374629 lt!2180801))))))

(declare-fun b!5350304 () Bool)

(assert (=> b!5350304 (= e!3321415 0)))

(assert (= (and d!1715594 c!931434) b!5350303))

(assert (= (and d!1715594 (not c!931434)) b!5350304))

(declare-fun m!6381512 () Bool)

(assert (=> b!5350303 m!6381512))

(declare-fun m!6381514 () Bool)

(assert (=> b!5350303 m!6381514))

(assert (=> b!5349573 d!1715594))

(declare-fun d!1715598 () Bool)

(declare-fun lt!2180943 () Int)

(assert (=> d!1715598 (>= lt!2180943 0)))

(declare-fun e!3321417 () Int)

(assert (=> d!1715598 (= lt!2180943 e!3321417)))

(declare-fun c!931435 () Bool)

(assert (=> d!1715598 (= c!931435 ((_ is Cons!61288) zl!343))))

(assert (=> d!1715598 (= (zipperDepthTotal!190 zl!343) lt!2180943)))

(declare-fun b!5350309 () Bool)

(assert (=> b!5350309 (= e!3321417 (+ (contextDepthTotal!170 (h!67736 zl!343)) (zipperDepthTotal!190 (t!374629 zl!343))))))

(declare-fun b!5350310 () Bool)

(assert (=> b!5350310 (= e!3321417 0)))

(assert (= (and d!1715598 c!931435) b!5350309))

(assert (= (and d!1715598 (not c!931435)) b!5350310))

(assert (=> b!5350309 m!6380898))

(declare-fun m!6381516 () Bool)

(assert (=> b!5350309 m!6381516))

(assert (=> b!5349573 d!1715598))

(declare-fun b!5350315 () Bool)

(declare-fun res!2270073 () Bool)

(declare-fun e!3321421 () Bool)

(assert (=> b!5350315 (=> (not res!2270073) (not e!3321421))))

(assert (=> b!5350315 (= res!2270073 (isEmpty!33266 (tail!10571 s!2326)))))

(declare-fun b!5350316 () Bool)

(declare-fun e!3321419 () Bool)

(declare-fun lt!2180944 () Bool)

(assert (=> b!5350316 (= e!3321419 (not lt!2180944))))

(declare-fun b!5350317 () Bool)

(declare-fun e!3321424 () Bool)

(declare-fun e!3321420 () Bool)

(assert (=> b!5350317 (= e!3321424 e!3321420)))

(declare-fun res!2270074 () Bool)

(assert (=> b!5350317 (=> (not res!2270074) (not e!3321420))))

(assert (=> b!5350317 (= res!2270074 (not lt!2180944))))

(declare-fun d!1715600 () Bool)

(declare-fun e!3321423 () Bool)

(assert (=> d!1715600 e!3321423))

(declare-fun c!931438 () Bool)

(assert (=> d!1715600 (= c!931438 ((_ is EmptyExpr!15037) (Concat!23882 lt!2180794 lt!2180800)))))

(declare-fun e!3321425 () Bool)

(assert (=> d!1715600 (= lt!2180944 e!3321425)))

(declare-fun c!931437 () Bool)

(assert (=> d!1715600 (= c!931437 (isEmpty!33266 s!2326))))

(assert (=> d!1715600 (validRegex!6773 (Concat!23882 lt!2180794 lt!2180800))))

(assert (=> d!1715600 (= (matchR!7222 (Concat!23882 lt!2180794 lt!2180800) s!2326) lt!2180944)))

(declare-fun b!5350318 () Bool)

(declare-fun res!2270077 () Bool)

(declare-fun e!3321422 () Bool)

(assert (=> b!5350318 (=> res!2270077 e!3321422)))

(assert (=> b!5350318 (= res!2270077 (not (isEmpty!33266 (tail!10571 s!2326))))))

(declare-fun b!5350319 () Bool)

(assert (=> b!5350319 (= e!3321421 (= (head!11474 s!2326) (c!931215 (Concat!23882 lt!2180794 lt!2180800))))))

(declare-fun b!5350320 () Bool)

(declare-fun res!2270075 () Bool)

(assert (=> b!5350320 (=> res!2270075 e!3321424)))

(assert (=> b!5350320 (= res!2270075 (not ((_ is ElementMatch!15037) (Concat!23882 lt!2180794 lt!2180800))))))

(assert (=> b!5350320 (= e!3321419 e!3321424)))

(declare-fun b!5350321 () Bool)

(assert (=> b!5350321 (= e!3321420 e!3321422)))

(declare-fun res!2270072 () Bool)

(assert (=> b!5350321 (=> res!2270072 e!3321422)))

(declare-fun call!382503 () Bool)

(assert (=> b!5350321 (= res!2270072 call!382503)))

(declare-fun b!5350322 () Bool)

(declare-fun res!2270076 () Bool)

(assert (=> b!5350322 (=> res!2270076 e!3321424)))

(assert (=> b!5350322 (= res!2270076 e!3321421)))

(declare-fun res!2270071 () Bool)

(assert (=> b!5350322 (=> (not res!2270071) (not e!3321421))))

(assert (=> b!5350322 (= res!2270071 lt!2180944)))

(declare-fun b!5350323 () Bool)

(assert (=> b!5350323 (= e!3321425 (matchR!7222 (derivativeStep!4199 (Concat!23882 lt!2180794 lt!2180800) (head!11474 s!2326)) (tail!10571 s!2326)))))

(declare-fun bm!382498 () Bool)

(assert (=> bm!382498 (= call!382503 (isEmpty!33266 s!2326))))

(declare-fun b!5350324 () Bool)

(assert (=> b!5350324 (= e!3321423 (= lt!2180944 call!382503))))

(declare-fun b!5350325 () Bool)

(assert (=> b!5350325 (= e!3321425 (nullable!5206 (Concat!23882 lt!2180794 lt!2180800)))))

(declare-fun b!5350326 () Bool)

(declare-fun res!2270078 () Bool)

(assert (=> b!5350326 (=> (not res!2270078) (not e!3321421))))

(assert (=> b!5350326 (= res!2270078 (not call!382503))))

(declare-fun b!5350327 () Bool)

(assert (=> b!5350327 (= e!3321423 e!3321419)))

(declare-fun c!931436 () Bool)

(assert (=> b!5350327 (= c!931436 ((_ is EmptyLang!15037) (Concat!23882 lt!2180794 lt!2180800)))))

(declare-fun b!5350328 () Bool)

(assert (=> b!5350328 (= e!3321422 (not (= (head!11474 s!2326) (c!931215 (Concat!23882 lt!2180794 lt!2180800)))))))

(assert (= (and d!1715600 c!931437) b!5350325))

(assert (= (and d!1715600 (not c!931437)) b!5350323))

(assert (= (and d!1715600 c!931438) b!5350324))

(assert (= (and d!1715600 (not c!931438)) b!5350327))

(assert (= (and b!5350327 c!931436) b!5350316))

(assert (= (and b!5350327 (not c!931436)) b!5350320))

(assert (= (and b!5350320 (not res!2270075)) b!5350322))

(assert (= (and b!5350322 res!2270071) b!5350326))

(assert (= (and b!5350326 res!2270078) b!5350315))

(assert (= (and b!5350315 res!2270073) b!5350319))

(assert (= (and b!5350322 (not res!2270076)) b!5350317))

(assert (= (and b!5350317 res!2270074) b!5350321))

(assert (= (and b!5350321 (not res!2270072)) b!5350318))

(assert (= (and b!5350318 (not res!2270077)) b!5350328))

(assert (= (or b!5350324 b!5350326 b!5350321) bm!382498))

(assert (=> b!5350315 m!6381392))

(assert (=> b!5350315 m!6381392))

(assert (=> b!5350315 m!6381394))

(assert (=> bm!382498 m!6381396))

(assert (=> b!5350318 m!6381392))

(assert (=> b!5350318 m!6381392))

(assert (=> b!5350318 m!6381394))

(declare-fun m!6381518 () Bool)

(assert (=> b!5350325 m!6381518))

(assert (=> d!1715600 m!6381396))

(declare-fun m!6381520 () Bool)

(assert (=> d!1715600 m!6381520))

(assert (=> b!5350323 m!6381400))

(assert (=> b!5350323 m!6381400))

(declare-fun m!6381522 () Bool)

(assert (=> b!5350323 m!6381522))

(assert (=> b!5350323 m!6381392))

(assert (=> b!5350323 m!6381522))

(assert (=> b!5350323 m!6381392))

(declare-fun m!6381524 () Bool)

(assert (=> b!5350323 m!6381524))

(assert (=> b!5350328 m!6381400))

(assert (=> b!5350319 m!6381400))

(assert (=> b!5349592 d!1715600))

(declare-fun b!5350371 () Bool)

(assert (=> b!5350371 true))

(declare-fun bs!1240392 () Bool)

(declare-fun b!5350373 () Bool)

(assert (= bs!1240392 (and b!5350373 b!5350371)))

(declare-fun lambda!274984 () Int)

(declare-fun lt!2180954 () Int)

(declare-fun lt!2180956 () Int)

(declare-fun lambda!274985 () Int)

(assert (=> bs!1240392 (= (= lt!2180956 lt!2180954) (= lambda!274985 lambda!274984))))

(assert (=> b!5350373 true))

(declare-fun d!1715602 () Bool)

(declare-fun e!3321449 () Bool)

(assert (=> d!1715602 e!3321449))

(declare-fun res!2270081 () Bool)

(assert (=> d!1715602 (=> (not res!2270081) (not e!3321449))))

(assert (=> d!1715602 (= res!2270081 (>= lt!2180956 0))))

(declare-fun e!3321450 () Int)

(assert (=> d!1715602 (= lt!2180956 e!3321450)))

(declare-fun c!931447 () Bool)

(assert (=> d!1715602 (= c!931447 ((_ is Cons!61288) lt!2180801))))

(assert (=> d!1715602 (= (zipperDepth!146 lt!2180801) lt!2180956)))

(assert (=> b!5350371 (= e!3321450 lt!2180954)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!84 (Context!8842) Int)

(assert (=> b!5350371 (= lt!2180954 (maxBigInt!0 (contextDepth!84 (h!67736 lt!2180801)) (zipperDepth!146 (t!374629 lt!2180801))))))

(declare-fun lambda!274983 () Int)

(declare-fun lt!2180955 () Unit!153666)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!78 (List!61412 Int Int Int) Unit!153666)

(assert (=> b!5350371 (= lt!2180955 (lemmaForallContextDepthBiggerThanTransitive!78 (t!374629 lt!2180801) lt!2180954 (zipperDepth!146 (t!374629 lt!2180801)) lambda!274983))))

(declare-fun forall!14465 (List!61412 Int) Bool)

(assert (=> b!5350371 (forall!14465 (t!374629 lt!2180801) lambda!274984)))

(declare-fun lt!2180953 () Unit!153666)

(assert (=> b!5350371 (= lt!2180953 lt!2180955)))

(declare-fun b!5350372 () Bool)

(assert (=> b!5350372 (= e!3321450 0)))

(assert (=> b!5350373 (= e!3321449 (forall!14465 lt!2180801 lambda!274985))))

(assert (= (and d!1715602 c!931447) b!5350371))

(assert (= (and d!1715602 (not c!931447)) b!5350372))

(assert (= (and d!1715602 res!2270081) b!5350373))

(declare-fun m!6381530 () Bool)

(assert (=> b!5350371 m!6381530))

(declare-fun m!6381532 () Bool)

(assert (=> b!5350371 m!6381532))

(declare-fun m!6381534 () Bool)

(assert (=> b!5350371 m!6381534))

(declare-fun m!6381536 () Bool)

(assert (=> b!5350371 m!6381536))

(assert (=> b!5350371 m!6381532))

(assert (=> b!5350371 m!6381530))

(assert (=> b!5350371 m!6381532))

(declare-fun m!6381538 () Bool)

(assert (=> b!5350371 m!6381538))

(declare-fun m!6381540 () Bool)

(assert (=> b!5350373 m!6381540))

(assert (=> b!5349574 d!1715602))

(declare-fun bs!1240393 () Bool)

(declare-fun b!5350376 () Bool)

(assert (= bs!1240393 (and b!5350376 b!5350371)))

(declare-fun lambda!274986 () Int)

(assert (=> bs!1240393 (= lambda!274986 lambda!274983)))

(declare-fun lt!2180958 () Int)

(declare-fun lambda!274987 () Int)

(assert (=> bs!1240393 (= (= lt!2180958 lt!2180954) (= lambda!274987 lambda!274984))))

(declare-fun bs!1240394 () Bool)

(assert (= bs!1240394 (and b!5350376 b!5350373)))

(assert (=> bs!1240394 (= (= lt!2180958 lt!2180956) (= lambda!274987 lambda!274985))))

(assert (=> b!5350376 true))

(declare-fun bs!1240395 () Bool)

(declare-fun b!5350378 () Bool)

(assert (= bs!1240395 (and b!5350378 b!5350371)))

(declare-fun lt!2180960 () Int)

(declare-fun lambda!274988 () Int)

(assert (=> bs!1240395 (= (= lt!2180960 lt!2180954) (= lambda!274988 lambda!274984))))

(declare-fun bs!1240396 () Bool)

(assert (= bs!1240396 (and b!5350378 b!5350373)))

(assert (=> bs!1240396 (= (= lt!2180960 lt!2180956) (= lambda!274988 lambda!274985))))

(declare-fun bs!1240397 () Bool)

(assert (= bs!1240397 (and b!5350378 b!5350376)))

(assert (=> bs!1240397 (= (= lt!2180960 lt!2180958) (= lambda!274988 lambda!274987))))

(assert (=> b!5350378 true))

(declare-fun d!1715608 () Bool)

(declare-fun e!3321451 () Bool)

(assert (=> d!1715608 e!3321451))

(declare-fun res!2270082 () Bool)

(assert (=> d!1715608 (=> (not res!2270082) (not e!3321451))))

(assert (=> d!1715608 (= res!2270082 (>= lt!2180960 0))))

(declare-fun e!3321452 () Int)

(assert (=> d!1715608 (= lt!2180960 e!3321452)))

(declare-fun c!931448 () Bool)

(assert (=> d!1715608 (= c!931448 ((_ is Cons!61288) zl!343))))

(assert (=> d!1715608 (= (zipperDepth!146 zl!343) lt!2180960)))

(assert (=> b!5350376 (= e!3321452 lt!2180958)))

(assert (=> b!5350376 (= lt!2180958 (maxBigInt!0 (contextDepth!84 (h!67736 zl!343)) (zipperDepth!146 (t!374629 zl!343))))))

(declare-fun lt!2180959 () Unit!153666)

(assert (=> b!5350376 (= lt!2180959 (lemmaForallContextDepthBiggerThanTransitive!78 (t!374629 zl!343) lt!2180958 (zipperDepth!146 (t!374629 zl!343)) lambda!274986))))

(assert (=> b!5350376 (forall!14465 (t!374629 zl!343) lambda!274987)))

(declare-fun lt!2180957 () Unit!153666)

(assert (=> b!5350376 (= lt!2180957 lt!2180959)))

(declare-fun b!5350377 () Bool)

(assert (=> b!5350377 (= e!3321452 0)))

(assert (=> b!5350378 (= e!3321451 (forall!14465 zl!343 lambda!274988))))

(assert (= (and d!1715608 c!931448) b!5350376))

(assert (= (and d!1715608 (not c!931448)) b!5350377))

(assert (= (and d!1715608 res!2270082) b!5350378))

(declare-fun m!6381542 () Bool)

(assert (=> b!5350376 m!6381542))

(declare-fun m!6381544 () Bool)

(assert (=> b!5350376 m!6381544))

(declare-fun m!6381546 () Bool)

(assert (=> b!5350376 m!6381546))

(declare-fun m!6381548 () Bool)

(assert (=> b!5350376 m!6381548))

(assert (=> b!5350376 m!6381544))

(assert (=> b!5350376 m!6381542))

(assert (=> b!5350376 m!6381544))

(declare-fun m!6381550 () Bool)

(assert (=> b!5350376 m!6381550))

(declare-fun m!6381552 () Bool)

(assert (=> b!5350378 m!6381552))

(assert (=> b!5349574 d!1715608))

(declare-fun bs!1240398 () Bool)

(declare-fun b!5350420 () Bool)

(assert (= bs!1240398 (and b!5350420 b!5349584)))

(declare-fun lambda!274993 () Int)

(assert (=> bs!1240398 (not (= lambda!274993 lambda!274917))))

(declare-fun bs!1240399 () Bool)

(assert (= bs!1240399 (and b!5350420 b!5349581)))

(assert (=> bs!1240399 (not (= lambda!274993 lambda!274912))))

(assert (=> bs!1240398 (not (= lambda!274993 lambda!274914))))

(assert (=> bs!1240398 (not (= lambda!274993 lambda!274916))))

(assert (=> bs!1240399 (not (= lambda!274993 lambda!274911))))

(assert (=> bs!1240398 (not (= lambda!274993 lambda!274915))))

(assert (=> b!5350420 true))

(assert (=> b!5350420 true))

(declare-fun bs!1240400 () Bool)

(declare-fun b!5350412 () Bool)

(assert (= bs!1240400 (and b!5350412 b!5349584)))

(declare-fun lambda!274994 () Int)

(assert (=> bs!1240400 (= (and (= (regOne!30586 r!7292) (regTwo!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180800)) (= lambda!274994 lambda!274917))))

(declare-fun bs!1240401 () Bool)

(assert (= bs!1240401 (and b!5350412 b!5349581)))

(assert (=> bs!1240401 (= lambda!274994 lambda!274912)))

(declare-fun bs!1240402 () Bool)

(assert (= bs!1240402 (and b!5350412 b!5350420)))

(assert (=> bs!1240402 (not (= lambda!274994 lambda!274993))))

(assert (=> bs!1240400 (not (= lambda!274994 lambda!274914))))

(assert (=> bs!1240400 (not (= lambda!274994 lambda!274916))))

(assert (=> bs!1240401 (not (= lambda!274994 lambda!274911))))

(assert (=> bs!1240400 (= (and (= (regOne!30586 r!7292) (regOne!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180826)) (= lambda!274994 lambda!274915))))

(assert (=> b!5350412 true))

(assert (=> b!5350412 true))

(declare-fun b!5350411 () Bool)

(declare-fun e!3321474 () Bool)

(declare-fun call!382509 () Bool)

(assert (=> b!5350411 (= e!3321474 call!382509)))

(declare-fun e!3321476 () Bool)

(declare-fun call!382508 () Bool)

(assert (=> b!5350412 (= e!3321476 call!382508)))

(declare-fun bm!382503 () Bool)

(assert (=> bm!382503 (= call!382509 (isEmpty!33266 s!2326))))

(declare-fun b!5350413 () Bool)

(declare-fun c!931457 () Bool)

(assert (=> b!5350413 (= c!931457 ((_ is ElementMatch!15037) r!7292))))

(declare-fun e!3321471 () Bool)

(declare-fun e!3321473 () Bool)

(assert (=> b!5350413 (= e!3321471 e!3321473)))

(declare-fun b!5350414 () Bool)

(declare-fun c!931458 () Bool)

(assert (=> b!5350414 (= c!931458 ((_ is Union!15037) r!7292))))

(declare-fun e!3321477 () Bool)

(assert (=> b!5350414 (= e!3321473 e!3321477)))

(declare-fun b!5350415 () Bool)

(declare-fun e!3321475 () Bool)

(assert (=> b!5350415 (= e!3321475 (matchRSpec!2140 (regTwo!30587 r!7292) s!2326))))

(declare-fun b!5350416 () Bool)

(assert (=> b!5350416 (= e!3321473 (= s!2326 (Cons!61286 (c!931215 r!7292) Nil!61286)))))

(declare-fun b!5350417 () Bool)

(assert (=> b!5350417 (= e!3321477 e!3321476)))

(declare-fun c!931460 () Bool)

(assert (=> b!5350417 (= c!931460 ((_ is Star!15037) r!7292))))

(declare-fun bm!382504 () Bool)

(assert (=> bm!382504 (= call!382508 (Exists!2218 (ite c!931460 lambda!274993 lambda!274994)))))

(declare-fun d!1715610 () Bool)

(declare-fun c!931459 () Bool)

(assert (=> d!1715610 (= c!931459 ((_ is EmptyExpr!15037) r!7292))))

(assert (=> d!1715610 (= (matchRSpec!2140 r!7292 s!2326) e!3321474)))

(declare-fun b!5350418 () Bool)

(assert (=> b!5350418 (= e!3321474 e!3321471)))

(declare-fun res!2270099 () Bool)

(assert (=> b!5350418 (= res!2270099 (not ((_ is EmptyLang!15037) r!7292)))))

(assert (=> b!5350418 (=> (not res!2270099) (not e!3321471))))

(declare-fun b!5350419 () Bool)

(declare-fun res!2270101 () Bool)

(declare-fun e!3321472 () Bool)

(assert (=> b!5350419 (=> res!2270101 e!3321472)))

(assert (=> b!5350419 (= res!2270101 call!382509)))

(assert (=> b!5350419 (= e!3321476 e!3321472)))

(assert (=> b!5350420 (= e!3321472 call!382508)))

(declare-fun b!5350421 () Bool)

(assert (=> b!5350421 (= e!3321477 e!3321475)))

(declare-fun res!2270100 () Bool)

(assert (=> b!5350421 (= res!2270100 (matchRSpec!2140 (regOne!30587 r!7292) s!2326))))

(assert (=> b!5350421 (=> res!2270100 e!3321475)))

(assert (= (and d!1715610 c!931459) b!5350411))

(assert (= (and d!1715610 (not c!931459)) b!5350418))

(assert (= (and b!5350418 res!2270099) b!5350413))

(assert (= (and b!5350413 c!931457) b!5350416))

(assert (= (and b!5350413 (not c!931457)) b!5350414))

(assert (= (and b!5350414 c!931458) b!5350421))

(assert (= (and b!5350414 (not c!931458)) b!5350417))

(assert (= (and b!5350421 (not res!2270100)) b!5350415))

(assert (= (and b!5350417 c!931460) b!5350419))

(assert (= (and b!5350417 (not c!931460)) b!5350412))

(assert (= (and b!5350419 (not res!2270101)) b!5350420))

(assert (= (or b!5350420 b!5350412) bm!382504))

(assert (= (or b!5350411 b!5350419) bm!382503))

(assert (=> bm!382503 m!6381396))

(declare-fun m!6381554 () Bool)

(assert (=> b!5350415 m!6381554))

(declare-fun m!6381556 () Bool)

(assert (=> bm!382504 m!6381556))

(declare-fun m!6381558 () Bool)

(assert (=> b!5350421 m!6381558))

(assert (=> b!5349591 d!1715610))

(declare-fun b!5350422 () Bool)

(declare-fun res!2270104 () Bool)

(declare-fun e!3321480 () Bool)

(assert (=> b!5350422 (=> (not res!2270104) (not e!3321480))))

(assert (=> b!5350422 (= res!2270104 (isEmpty!33266 (tail!10571 s!2326)))))

(declare-fun b!5350423 () Bool)

(declare-fun e!3321478 () Bool)

(declare-fun lt!2180961 () Bool)

(assert (=> b!5350423 (= e!3321478 (not lt!2180961))))

(declare-fun b!5350424 () Bool)

(declare-fun e!3321483 () Bool)

(declare-fun e!3321479 () Bool)

(assert (=> b!5350424 (= e!3321483 e!3321479)))

(declare-fun res!2270105 () Bool)

(assert (=> b!5350424 (=> (not res!2270105) (not e!3321479))))

(assert (=> b!5350424 (= res!2270105 (not lt!2180961))))

(declare-fun d!1715612 () Bool)

(declare-fun e!3321482 () Bool)

(assert (=> d!1715612 e!3321482))

(declare-fun c!931463 () Bool)

(assert (=> d!1715612 (= c!931463 ((_ is EmptyExpr!15037) r!7292))))

(declare-fun e!3321484 () Bool)

(assert (=> d!1715612 (= lt!2180961 e!3321484)))

(declare-fun c!931462 () Bool)

(assert (=> d!1715612 (= c!931462 (isEmpty!33266 s!2326))))

(assert (=> d!1715612 (validRegex!6773 r!7292)))

(assert (=> d!1715612 (= (matchR!7222 r!7292 s!2326) lt!2180961)))

(declare-fun b!5350425 () Bool)

(declare-fun res!2270108 () Bool)

(declare-fun e!3321481 () Bool)

(assert (=> b!5350425 (=> res!2270108 e!3321481)))

(assert (=> b!5350425 (= res!2270108 (not (isEmpty!33266 (tail!10571 s!2326))))))

(declare-fun b!5350426 () Bool)

(assert (=> b!5350426 (= e!3321480 (= (head!11474 s!2326) (c!931215 r!7292)))))

(declare-fun b!5350427 () Bool)

(declare-fun res!2270106 () Bool)

(assert (=> b!5350427 (=> res!2270106 e!3321483)))

(assert (=> b!5350427 (= res!2270106 (not ((_ is ElementMatch!15037) r!7292)))))

(assert (=> b!5350427 (= e!3321478 e!3321483)))

(declare-fun b!5350428 () Bool)

(assert (=> b!5350428 (= e!3321479 e!3321481)))

(declare-fun res!2270103 () Bool)

(assert (=> b!5350428 (=> res!2270103 e!3321481)))

(declare-fun call!382510 () Bool)

(assert (=> b!5350428 (= res!2270103 call!382510)))

(declare-fun b!5350429 () Bool)

(declare-fun res!2270107 () Bool)

(assert (=> b!5350429 (=> res!2270107 e!3321483)))

(assert (=> b!5350429 (= res!2270107 e!3321480)))

(declare-fun res!2270102 () Bool)

(assert (=> b!5350429 (=> (not res!2270102) (not e!3321480))))

(assert (=> b!5350429 (= res!2270102 lt!2180961)))

(declare-fun b!5350430 () Bool)

(assert (=> b!5350430 (= e!3321484 (matchR!7222 (derivativeStep!4199 r!7292 (head!11474 s!2326)) (tail!10571 s!2326)))))

(declare-fun bm!382505 () Bool)

(assert (=> bm!382505 (= call!382510 (isEmpty!33266 s!2326))))

(declare-fun b!5350431 () Bool)

(assert (=> b!5350431 (= e!3321482 (= lt!2180961 call!382510))))

(declare-fun b!5350432 () Bool)

(assert (=> b!5350432 (= e!3321484 (nullable!5206 r!7292))))

(declare-fun b!5350433 () Bool)

(declare-fun res!2270109 () Bool)

(assert (=> b!5350433 (=> (not res!2270109) (not e!3321480))))

(assert (=> b!5350433 (= res!2270109 (not call!382510))))

(declare-fun b!5350434 () Bool)

(assert (=> b!5350434 (= e!3321482 e!3321478)))

(declare-fun c!931461 () Bool)

(assert (=> b!5350434 (= c!931461 ((_ is EmptyLang!15037) r!7292))))

(declare-fun b!5350435 () Bool)

(assert (=> b!5350435 (= e!3321481 (not (= (head!11474 s!2326) (c!931215 r!7292))))))

(assert (= (and d!1715612 c!931462) b!5350432))

(assert (= (and d!1715612 (not c!931462)) b!5350430))

(assert (= (and d!1715612 c!931463) b!5350431))

(assert (= (and d!1715612 (not c!931463)) b!5350434))

(assert (= (and b!5350434 c!931461) b!5350423))

(assert (= (and b!5350434 (not c!931461)) b!5350427))

(assert (= (and b!5350427 (not res!2270106)) b!5350429))

(assert (= (and b!5350429 res!2270102) b!5350433))

(assert (= (and b!5350433 res!2270109) b!5350422))

(assert (= (and b!5350422 res!2270104) b!5350426))

(assert (= (and b!5350429 (not res!2270107)) b!5350424))

(assert (= (and b!5350424 res!2270105) b!5350428))

(assert (= (and b!5350428 (not res!2270103)) b!5350425))

(assert (= (and b!5350425 (not res!2270108)) b!5350435))

(assert (= (or b!5350431 b!5350433 b!5350428) bm!382505))

(assert (=> b!5350422 m!6381392))

(assert (=> b!5350422 m!6381392))

(assert (=> b!5350422 m!6381394))

(assert (=> bm!382505 m!6381396))

(assert (=> b!5350425 m!6381392))

(assert (=> b!5350425 m!6381392))

(assert (=> b!5350425 m!6381394))

(declare-fun m!6381560 () Bool)

(assert (=> b!5350432 m!6381560))

(assert (=> d!1715612 m!6381396))

(assert (=> d!1715612 m!6380934))

(assert (=> b!5350430 m!6381400))

(assert (=> b!5350430 m!6381400))

(declare-fun m!6381562 () Bool)

(assert (=> b!5350430 m!6381562))

(assert (=> b!5350430 m!6381392))

(assert (=> b!5350430 m!6381562))

(assert (=> b!5350430 m!6381392))

(declare-fun m!6381564 () Bool)

(assert (=> b!5350430 m!6381564))

(assert (=> b!5350435 m!6381400))

(assert (=> b!5350426 m!6381400))

(assert (=> b!5349591 d!1715612))

(declare-fun d!1715614 () Bool)

(assert (=> d!1715614 (= (matchR!7222 r!7292 s!2326) (matchRSpec!2140 r!7292 s!2326))))

(declare-fun lt!2180964 () Unit!153666)

(declare-fun choose!40142 (Regex!15037 List!61410) Unit!153666)

(assert (=> d!1715614 (= lt!2180964 (choose!40142 r!7292 s!2326))))

(assert (=> d!1715614 (validRegex!6773 r!7292)))

(assert (=> d!1715614 (= (mainMatchTheorem!2140 r!7292 s!2326) lt!2180964)))

(declare-fun bs!1240403 () Bool)

(assert (= bs!1240403 d!1715614))

(assert (=> bs!1240403 m!6380832))

(assert (=> bs!1240403 m!6380830))

(declare-fun m!6381566 () Bool)

(assert (=> bs!1240403 m!6381566))

(assert (=> bs!1240403 m!6380934))

(assert (=> b!5349591 d!1715614))

(declare-fun d!1715616 () Bool)

(declare-fun e!3321487 () Bool)

(assert (=> d!1715616 e!3321487))

(declare-fun res!2270112 () Bool)

(assert (=> d!1715616 (=> (not res!2270112) (not e!3321487))))

(declare-fun lt!2180967 () List!61412)

(declare-fun noDuplicate!1332 (List!61412) Bool)

(assert (=> d!1715616 (= res!2270112 (noDuplicate!1332 lt!2180967))))

(declare-fun choose!40143 ((InoxSet Context!8842)) List!61412)

(assert (=> d!1715616 (= lt!2180967 (choose!40143 z!1189))))

(assert (=> d!1715616 (= (toList!8821 z!1189) lt!2180967)))

(declare-fun b!5350438 () Bool)

(declare-fun content!10936 (List!61412) (InoxSet Context!8842))

(assert (=> b!5350438 (= e!3321487 (= (content!10936 lt!2180967) z!1189))))

(assert (= (and d!1715616 res!2270112) b!5350438))

(declare-fun m!6381568 () Bool)

(assert (=> d!1715616 m!6381568))

(declare-fun m!6381570 () Bool)

(assert (=> d!1715616 m!6381570))

(declare-fun m!6381572 () Bool)

(assert (=> b!5350438 m!6381572))

(assert (=> b!5349572 d!1715616))

(declare-fun bs!1240404 () Bool)

(declare-fun d!1715618 () Bool)

(assert (= bs!1240404 (and d!1715618 d!1715524)))

(declare-fun lambda!274997 () Int)

(assert (=> bs!1240404 (= lambda!274997 lambda!274962)))

(declare-fun b!5350459 () Bool)

(declare-fun e!3321504 () Bool)

(declare-fun e!3321502 () Bool)

(assert (=> b!5350459 (= e!3321504 e!3321502)))

(declare-fun c!931474 () Bool)

(declare-fun tail!10572 (List!61411) List!61411)

(assert (=> b!5350459 (= c!931474 (isEmpty!33264 (tail!10572 (unfocusZipperList!479 zl!343))))))

(declare-fun b!5350460 () Bool)

(declare-fun e!3321503 () Regex!15037)

(declare-fun e!3321505 () Regex!15037)

(assert (=> b!5350460 (= e!3321503 e!3321505)))

(declare-fun c!931472 () Bool)

(assert (=> b!5350460 (= c!931472 ((_ is Cons!61287) (unfocusZipperList!479 zl!343)))))

(declare-fun b!5350461 () Bool)

(assert (=> b!5350461 (= e!3321505 EmptyLang!15037)))

(declare-fun b!5350462 () Bool)

(declare-fun lt!2180970 () Regex!15037)

(declare-fun head!11475 (List!61411) Regex!15037)

(assert (=> b!5350462 (= e!3321502 (= lt!2180970 (head!11475 (unfocusZipperList!479 zl!343))))))

(declare-fun b!5350463 () Bool)

(declare-fun isUnion!353 (Regex!15037) Bool)

(assert (=> b!5350463 (= e!3321502 (isUnion!353 lt!2180970))))

(declare-fun b!5350464 () Bool)

(declare-fun isEmptyLang!921 (Regex!15037) Bool)

(assert (=> b!5350464 (= e!3321504 (isEmptyLang!921 lt!2180970))))

(declare-fun b!5350465 () Bool)

(declare-fun e!3321501 () Bool)

(assert (=> b!5350465 (= e!3321501 (isEmpty!33264 (t!374628 (unfocusZipperList!479 zl!343))))))

(declare-fun b!5350466 () Bool)

(declare-fun e!3321500 () Bool)

(assert (=> b!5350466 (= e!3321500 e!3321504)))

(declare-fun c!931473 () Bool)

(assert (=> b!5350466 (= c!931473 (isEmpty!33264 (unfocusZipperList!479 zl!343)))))

(declare-fun b!5350467 () Bool)

(assert (=> b!5350467 (= e!3321503 (h!67735 (unfocusZipperList!479 zl!343)))))

(declare-fun b!5350468 () Bool)

(assert (=> b!5350468 (= e!3321505 (Union!15037 (h!67735 (unfocusZipperList!479 zl!343)) (generalisedUnion!966 (t!374628 (unfocusZipperList!479 zl!343)))))))

(assert (=> d!1715618 e!3321500))

(declare-fun res!2270117 () Bool)

(assert (=> d!1715618 (=> (not res!2270117) (not e!3321500))))

(assert (=> d!1715618 (= res!2270117 (validRegex!6773 lt!2180970))))

(assert (=> d!1715618 (= lt!2180970 e!3321503)))

(declare-fun c!931475 () Bool)

(assert (=> d!1715618 (= c!931475 e!3321501)))

(declare-fun res!2270118 () Bool)

(assert (=> d!1715618 (=> (not res!2270118) (not e!3321501))))

(assert (=> d!1715618 (= res!2270118 ((_ is Cons!61287) (unfocusZipperList!479 zl!343)))))

(assert (=> d!1715618 (forall!14464 (unfocusZipperList!479 zl!343) lambda!274997)))

(assert (=> d!1715618 (= (generalisedUnion!966 (unfocusZipperList!479 zl!343)) lt!2180970)))

(assert (= (and d!1715618 res!2270118) b!5350465))

(assert (= (and d!1715618 c!931475) b!5350467))

(assert (= (and d!1715618 (not c!931475)) b!5350460))

(assert (= (and b!5350460 c!931472) b!5350468))

(assert (= (and b!5350460 (not c!931472)) b!5350461))

(assert (= (and d!1715618 res!2270117) b!5350466))

(assert (= (and b!5350466 c!931473) b!5350464))

(assert (= (and b!5350466 (not c!931473)) b!5350459))

(assert (= (and b!5350459 c!931474) b!5350462))

(assert (= (and b!5350459 (not c!931474)) b!5350463))

(declare-fun m!6381574 () Bool)

(assert (=> d!1715618 m!6381574))

(assert (=> d!1715618 m!6380824))

(declare-fun m!6381576 () Bool)

(assert (=> d!1715618 m!6381576))

(declare-fun m!6381578 () Bool)

(assert (=> b!5350465 m!6381578))

(declare-fun m!6381580 () Bool)

(assert (=> b!5350463 m!6381580))

(assert (=> b!5350462 m!6380824))

(declare-fun m!6381582 () Bool)

(assert (=> b!5350462 m!6381582))

(assert (=> b!5350466 m!6380824))

(declare-fun m!6381584 () Bool)

(assert (=> b!5350466 m!6381584))

(assert (=> b!5350459 m!6380824))

(declare-fun m!6381586 () Bool)

(assert (=> b!5350459 m!6381586))

(assert (=> b!5350459 m!6381586))

(declare-fun m!6381588 () Bool)

(assert (=> b!5350459 m!6381588))

(declare-fun m!6381590 () Bool)

(assert (=> b!5350468 m!6381590))

(declare-fun m!6381592 () Bool)

(assert (=> b!5350464 m!6381592))

(assert (=> b!5349575 d!1715618))

(declare-fun bs!1240405 () Bool)

(declare-fun d!1715620 () Bool)

(assert (= bs!1240405 (and d!1715620 d!1715524)))

(declare-fun lambda!275000 () Int)

(assert (=> bs!1240405 (= lambda!275000 lambda!274962)))

(declare-fun bs!1240406 () Bool)

(assert (= bs!1240406 (and d!1715620 d!1715618)))

(assert (=> bs!1240406 (= lambda!275000 lambda!274997)))

(declare-fun lt!2180973 () List!61411)

(assert (=> d!1715620 (forall!14464 lt!2180973 lambda!275000)))

(declare-fun e!3321508 () List!61411)

(assert (=> d!1715620 (= lt!2180973 e!3321508)))

(declare-fun c!931478 () Bool)

(assert (=> d!1715620 (= c!931478 ((_ is Cons!61288) zl!343))))

(assert (=> d!1715620 (= (unfocusZipperList!479 zl!343) lt!2180973)))

(declare-fun b!5350473 () Bool)

(assert (=> b!5350473 (= e!3321508 (Cons!61287 (generalisedConcat!706 (exprs!4921 (h!67736 zl!343))) (unfocusZipperList!479 (t!374629 zl!343))))))

(declare-fun b!5350474 () Bool)

(assert (=> b!5350474 (= e!3321508 Nil!61287)))

(assert (= (and d!1715620 c!931478) b!5350473))

(assert (= (and d!1715620 (not c!931478)) b!5350474))

(declare-fun m!6381594 () Bool)

(assert (=> d!1715620 m!6381594))

(assert (=> b!5350473 m!6380918))

(declare-fun m!6381596 () Bool)

(assert (=> b!5350473 m!6381596))

(assert (=> b!5349575 d!1715620))

(declare-fun b!5350475 () Bool)

(declare-fun res!2270121 () Bool)

(declare-fun e!3321511 () Bool)

(assert (=> b!5350475 (=> (not res!2270121) (not e!3321511))))

(assert (=> b!5350475 (= res!2270121 (isEmpty!33266 (tail!10571 s!2326)))))

(declare-fun b!5350476 () Bool)

(declare-fun e!3321509 () Bool)

(declare-fun lt!2180974 () Bool)

(assert (=> b!5350476 (= e!3321509 (not lt!2180974))))

(declare-fun b!5350477 () Bool)

(declare-fun e!3321514 () Bool)

(declare-fun e!3321510 () Bool)

(assert (=> b!5350477 (= e!3321514 e!3321510)))

(declare-fun res!2270122 () Bool)

(assert (=> b!5350477 (=> (not res!2270122) (not e!3321510))))

(assert (=> b!5350477 (= res!2270122 (not lt!2180974))))

(declare-fun d!1715622 () Bool)

(declare-fun e!3321513 () Bool)

(assert (=> d!1715622 e!3321513))

(declare-fun c!931481 () Bool)

(assert (=> d!1715622 (= c!931481 ((_ is EmptyExpr!15037) (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292))))))

(declare-fun e!3321515 () Bool)

(assert (=> d!1715622 (= lt!2180974 e!3321515)))

(declare-fun c!931480 () Bool)

(assert (=> d!1715622 (= c!931480 (isEmpty!33266 s!2326))))

(assert (=> d!1715622 (validRegex!6773 (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292)))))

(assert (=> d!1715622 (= (matchR!7222 (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292)) s!2326) lt!2180974)))

(declare-fun b!5350478 () Bool)

(declare-fun res!2270125 () Bool)

(declare-fun e!3321512 () Bool)

(assert (=> b!5350478 (=> res!2270125 e!3321512)))

(assert (=> b!5350478 (= res!2270125 (not (isEmpty!33266 (tail!10571 s!2326))))))

(declare-fun b!5350479 () Bool)

(assert (=> b!5350479 (= e!3321511 (= (head!11474 s!2326) (c!931215 (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292)))))))

(declare-fun b!5350480 () Bool)

(declare-fun res!2270123 () Bool)

(assert (=> b!5350480 (=> res!2270123 e!3321514)))

(assert (=> b!5350480 (= res!2270123 (not ((_ is ElementMatch!15037) (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292)))))))

(assert (=> b!5350480 (= e!3321509 e!3321514)))

(declare-fun b!5350481 () Bool)

(assert (=> b!5350481 (= e!3321510 e!3321512)))

(declare-fun res!2270120 () Bool)

(assert (=> b!5350481 (=> res!2270120 e!3321512)))

(declare-fun call!382511 () Bool)

(assert (=> b!5350481 (= res!2270120 call!382511)))

(declare-fun b!5350482 () Bool)

(declare-fun res!2270124 () Bool)

(assert (=> b!5350482 (=> res!2270124 e!3321514)))

(assert (=> b!5350482 (= res!2270124 e!3321511)))

(declare-fun res!2270119 () Bool)

(assert (=> b!5350482 (=> (not res!2270119) (not e!3321511))))

(assert (=> b!5350482 (= res!2270119 lt!2180974)))

(declare-fun b!5350483 () Bool)

(assert (=> b!5350483 (= e!3321515 (matchR!7222 (derivativeStep!4199 (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292)) (head!11474 s!2326)) (tail!10571 s!2326)))))

(declare-fun bm!382506 () Bool)

(assert (=> bm!382506 (= call!382511 (isEmpty!33266 s!2326))))

(declare-fun b!5350484 () Bool)

(assert (=> b!5350484 (= e!3321513 (= lt!2180974 call!382511))))

(declare-fun b!5350485 () Bool)

(assert (=> b!5350485 (= e!3321515 (nullable!5206 (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292))))))

(declare-fun b!5350486 () Bool)

(declare-fun res!2270126 () Bool)

(assert (=> b!5350486 (=> (not res!2270126) (not e!3321511))))

(assert (=> b!5350486 (= res!2270126 (not call!382511))))

(declare-fun b!5350487 () Bool)

(assert (=> b!5350487 (= e!3321513 e!3321509)))

(declare-fun c!931479 () Bool)

(assert (=> b!5350487 (= c!931479 ((_ is EmptyLang!15037) (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292))))))

(declare-fun b!5350488 () Bool)

(assert (=> b!5350488 (= e!3321512 (not (= (head!11474 s!2326) (c!931215 (Concat!23882 (regOne!30586 r!7292) (regTwo!30586 r!7292))))))))

(assert (= (and d!1715622 c!931480) b!5350485))

(assert (= (and d!1715622 (not c!931480)) b!5350483))

(assert (= (and d!1715622 c!931481) b!5350484))

(assert (= (and d!1715622 (not c!931481)) b!5350487))

(assert (= (and b!5350487 c!931479) b!5350476))

(assert (= (and b!5350487 (not c!931479)) b!5350480))

(assert (= (and b!5350480 (not res!2270123)) b!5350482))

(assert (= (and b!5350482 res!2270119) b!5350486))

(assert (= (and b!5350486 res!2270126) b!5350475))

(assert (= (and b!5350475 res!2270121) b!5350479))

(assert (= (and b!5350482 (not res!2270124)) b!5350477))

(assert (= (and b!5350477 res!2270122) b!5350481))

(assert (= (and b!5350481 (not res!2270120)) b!5350478))

(assert (= (and b!5350478 (not res!2270125)) b!5350488))

(assert (= (or b!5350484 b!5350486 b!5350481) bm!382506))

(assert (=> b!5350475 m!6381392))

(assert (=> b!5350475 m!6381392))

(assert (=> b!5350475 m!6381394))

(assert (=> bm!382506 m!6381396))

(assert (=> b!5350478 m!6381392))

(assert (=> b!5350478 m!6381392))

(assert (=> b!5350478 m!6381394))

(declare-fun m!6381598 () Bool)

(assert (=> b!5350485 m!6381598))

(assert (=> d!1715622 m!6381396))

(declare-fun m!6381600 () Bool)

(assert (=> d!1715622 m!6381600))

(assert (=> b!5350483 m!6381400))

(assert (=> b!5350483 m!6381400))

(declare-fun m!6381602 () Bool)

(assert (=> b!5350483 m!6381602))

(assert (=> b!5350483 m!6381392))

(assert (=> b!5350483 m!6381602))

(assert (=> b!5350483 m!6381392))

(declare-fun m!6381604 () Bool)

(assert (=> b!5350483 m!6381604))

(assert (=> b!5350488 m!6381400))

(assert (=> b!5350479 m!6381400))

(assert (=> b!5349568 d!1715622))

(declare-fun d!1715624 () Bool)

(assert (=> d!1715624 (= (nullable!5206 (regOne!30586 (regOne!30586 r!7292))) (nullableFct!1530 (regOne!30586 (regOne!30586 r!7292))))))

(declare-fun bs!1240407 () Bool)

(assert (= bs!1240407 d!1715624))

(declare-fun m!6381606 () Bool)

(assert (=> bs!1240407 m!6381606))

(assert (=> b!5349586 d!1715624))

(declare-fun d!1715626 () Bool)

(assert (=> d!1715626 (= (isEmpty!33264 (t!374628 (exprs!4921 (h!67736 zl!343)))) ((_ is Nil!61287) (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(assert (=> b!5349567 d!1715626))

(declare-fun bs!1240408 () Bool)

(declare-fun d!1715628 () Bool)

(assert (= bs!1240408 (and d!1715628 d!1715524)))

(declare-fun lambda!275001 () Int)

(assert (=> bs!1240408 (= lambda!275001 lambda!274962)))

(declare-fun bs!1240409 () Bool)

(assert (= bs!1240409 (and d!1715628 d!1715618)))

(assert (=> bs!1240409 (= lambda!275001 lambda!274997)))

(declare-fun bs!1240410 () Bool)

(assert (= bs!1240410 (and d!1715628 d!1715620)))

(assert (=> bs!1240410 (= lambda!275001 lambda!275000)))

(assert (=> d!1715628 (= (inv!80839 (h!67736 zl!343)) (forall!14464 (exprs!4921 (h!67736 zl!343)) lambda!275001))))

(declare-fun bs!1240411 () Bool)

(assert (= bs!1240411 d!1715628))

(declare-fun m!6381608 () Bool)

(assert (=> bs!1240411 m!6381608))

(assert (=> b!5349587 d!1715628))

(declare-fun bs!1240412 () Bool)

(declare-fun d!1715630 () Bool)

(assert (= bs!1240412 (and d!1715630 d!1715524)))

(declare-fun lambda!275004 () Int)

(assert (=> bs!1240412 (= lambda!275004 lambda!274962)))

(declare-fun bs!1240413 () Bool)

(assert (= bs!1240413 (and d!1715630 d!1715618)))

(assert (=> bs!1240413 (= lambda!275004 lambda!274997)))

(declare-fun bs!1240414 () Bool)

(assert (= bs!1240414 (and d!1715630 d!1715620)))

(assert (=> bs!1240414 (= lambda!275004 lambda!275000)))

(declare-fun bs!1240415 () Bool)

(assert (= bs!1240415 (and d!1715630 d!1715628)))

(assert (=> bs!1240415 (= lambda!275004 lambda!275001)))

(declare-fun b!5350509 () Bool)

(declare-fun e!3321532 () Bool)

(declare-fun lt!2180977 () Regex!15037)

(assert (=> b!5350509 (= e!3321532 (= lt!2180977 (head!11475 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350510 () Bool)

(declare-fun e!3321530 () Bool)

(declare-fun e!3321533 () Bool)

(assert (=> b!5350510 (= e!3321530 e!3321533)))

(declare-fun c!931493 () Bool)

(assert (=> b!5350510 (= c!931493 (isEmpty!33264 (exprs!4921 (h!67736 zl!343))))))

(declare-fun b!5350511 () Bool)

(declare-fun isConcat!436 (Regex!15037) Bool)

(assert (=> b!5350511 (= e!3321532 (isConcat!436 lt!2180977))))

(declare-fun b!5350512 () Bool)

(declare-fun e!3321529 () Bool)

(assert (=> b!5350512 (= e!3321529 (isEmpty!33264 (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350513 () Bool)

(declare-fun isEmptyExpr!913 (Regex!15037) Bool)

(assert (=> b!5350513 (= e!3321533 (isEmptyExpr!913 lt!2180977))))

(assert (=> d!1715630 e!3321530))

(declare-fun res!2270132 () Bool)

(assert (=> d!1715630 (=> (not res!2270132) (not e!3321530))))

(assert (=> d!1715630 (= res!2270132 (validRegex!6773 lt!2180977))))

(declare-fun e!3321528 () Regex!15037)

(assert (=> d!1715630 (= lt!2180977 e!3321528)))

(declare-fun c!931490 () Bool)

(assert (=> d!1715630 (= c!931490 e!3321529)))

(declare-fun res!2270131 () Bool)

(assert (=> d!1715630 (=> (not res!2270131) (not e!3321529))))

(assert (=> d!1715630 (= res!2270131 ((_ is Cons!61287) (exprs!4921 (h!67736 zl!343))))))

(assert (=> d!1715630 (forall!14464 (exprs!4921 (h!67736 zl!343)) lambda!275004)))

(assert (=> d!1715630 (= (generalisedConcat!706 (exprs!4921 (h!67736 zl!343))) lt!2180977)))

(declare-fun b!5350514 () Bool)

(assert (=> b!5350514 (= e!3321528 (h!67735 (exprs!4921 (h!67736 zl!343))))))

(declare-fun b!5350515 () Bool)

(declare-fun e!3321531 () Regex!15037)

(assert (=> b!5350515 (= e!3321531 (Concat!23882 (h!67735 (exprs!4921 (h!67736 zl!343))) (generalisedConcat!706 (t!374628 (exprs!4921 (h!67736 zl!343))))))))

(declare-fun b!5350516 () Bool)

(assert (=> b!5350516 (= e!3321533 e!3321532)))

(declare-fun c!931491 () Bool)

(assert (=> b!5350516 (= c!931491 (isEmpty!33264 (tail!10572 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350517 () Bool)

(assert (=> b!5350517 (= e!3321531 EmptyExpr!15037)))

(declare-fun b!5350518 () Bool)

(assert (=> b!5350518 (= e!3321528 e!3321531)))

(declare-fun c!931492 () Bool)

(assert (=> b!5350518 (= c!931492 ((_ is Cons!61287) (exprs!4921 (h!67736 zl!343))))))

(assert (= (and d!1715630 res!2270131) b!5350512))

(assert (= (and d!1715630 c!931490) b!5350514))

(assert (= (and d!1715630 (not c!931490)) b!5350518))

(assert (= (and b!5350518 c!931492) b!5350515))

(assert (= (and b!5350518 (not c!931492)) b!5350517))

(assert (= (and d!1715630 res!2270132) b!5350510))

(assert (= (and b!5350510 c!931493) b!5350513))

(assert (= (and b!5350510 (not c!931493)) b!5350516))

(assert (= (and b!5350516 c!931491) b!5350509))

(assert (= (and b!5350516 (not c!931491)) b!5350511))

(assert (=> b!5350512 m!6380816))

(declare-fun m!6381610 () Bool)

(assert (=> b!5350509 m!6381610))

(declare-fun m!6381612 () Bool)

(assert (=> b!5350513 m!6381612))

(assert (=> b!5350515 m!6380882))

(declare-fun m!6381614 () Bool)

(assert (=> b!5350510 m!6381614))

(declare-fun m!6381616 () Bool)

(assert (=> b!5350516 m!6381616))

(assert (=> b!5350516 m!6381616))

(declare-fun m!6381618 () Bool)

(assert (=> b!5350516 m!6381618))

(declare-fun m!6381620 () Bool)

(assert (=> d!1715630 m!6381620))

(declare-fun m!6381622 () Bool)

(assert (=> d!1715630 m!6381622))

(declare-fun m!6381624 () Bool)

(assert (=> b!5350511 m!6381624))

(assert (=> b!5349589 d!1715630))

(declare-fun d!1715632 () Bool)

(declare-fun lt!2180980 () Int)

(assert (=> d!1715632 (>= lt!2180980 0)))

(declare-fun e!3321536 () Int)

(assert (=> d!1715632 (= lt!2180980 e!3321536)))

(declare-fun c!931497 () Bool)

(assert (=> d!1715632 (= c!931497 ((_ is Cons!61287) (exprs!4921 lt!2180803)))))

(assert (=> d!1715632 (= (contextDepthTotal!170 lt!2180803) lt!2180980)))

(declare-fun b!5350523 () Bool)

(declare-fun regexDepthTotal!83 (Regex!15037) Int)

(assert (=> b!5350523 (= e!3321536 (+ (regexDepthTotal!83 (h!67735 (exprs!4921 lt!2180803))) (contextDepthTotal!170 (Context!8843 (t!374628 (exprs!4921 lt!2180803))))))))

(declare-fun b!5350524 () Bool)

(assert (=> b!5350524 (= e!3321536 1)))

(assert (= (and d!1715632 c!931497) b!5350523))

(assert (= (and d!1715632 (not c!931497)) b!5350524))

(declare-fun m!6381626 () Bool)

(assert (=> b!5350523 m!6381626))

(declare-fun m!6381628 () Bool)

(assert (=> b!5350523 m!6381628))

(assert (=> b!5349571 d!1715632))

(declare-fun d!1715634 () Bool)

(declare-fun lt!2180981 () Int)

(assert (=> d!1715634 (>= lt!2180981 0)))

(declare-fun e!3321537 () Int)

(assert (=> d!1715634 (= lt!2180981 e!3321537)))

(declare-fun c!931498 () Bool)

(assert (=> d!1715634 (= c!931498 ((_ is Cons!61287) (exprs!4921 (h!67736 zl!343))))))

(assert (=> d!1715634 (= (contextDepthTotal!170 (h!67736 zl!343)) lt!2180981)))

(declare-fun b!5350525 () Bool)

(assert (=> b!5350525 (= e!3321537 (+ (regexDepthTotal!83 (h!67735 (exprs!4921 (h!67736 zl!343)))) (contextDepthTotal!170 (Context!8843 (t!374628 (exprs!4921 (h!67736 zl!343)))))))))

(declare-fun b!5350526 () Bool)

(assert (=> b!5350526 (= e!3321537 1)))

(assert (= (and d!1715634 c!931498) b!5350525))

(assert (= (and d!1715634 (not c!931498)) b!5350526))

(declare-fun m!6381630 () Bool)

(assert (=> b!5350525 m!6381630))

(declare-fun m!6381632 () Bool)

(assert (=> b!5350525 m!6381632))

(assert (=> b!5349571 d!1715634))

(declare-fun d!1715636 () Bool)

(declare-fun c!931501 () Bool)

(assert (=> d!1715636 (= c!931501 (isEmpty!33266 (t!374627 s!2326)))))

(declare-fun e!3321540 () Bool)

(assert (=> d!1715636 (= (matchZipper!1281 lt!2180827 (t!374627 s!2326)) e!3321540)))

(declare-fun b!5350531 () Bool)

(declare-fun nullableZipper!1378 ((InoxSet Context!8842)) Bool)

(assert (=> b!5350531 (= e!3321540 (nullableZipper!1378 lt!2180827))))

(declare-fun b!5350532 () Bool)

(assert (=> b!5350532 (= e!3321540 (matchZipper!1281 (derivationStepZipper!1278 lt!2180827 (head!11474 (t!374627 s!2326))) (tail!10571 (t!374627 s!2326))))))

(assert (= (and d!1715636 c!931501) b!5350531))

(assert (= (and d!1715636 (not c!931501)) b!5350532))

(declare-fun m!6381634 () Bool)

(assert (=> d!1715636 m!6381634))

(declare-fun m!6381636 () Bool)

(assert (=> b!5350531 m!6381636))

(declare-fun m!6381638 () Bool)

(assert (=> b!5350532 m!6381638))

(assert (=> b!5350532 m!6381638))

(declare-fun m!6381640 () Bool)

(assert (=> b!5350532 m!6381640))

(declare-fun m!6381642 () Bool)

(assert (=> b!5350532 m!6381642))

(assert (=> b!5350532 m!6381640))

(assert (=> b!5350532 m!6381642))

(declare-fun m!6381644 () Bool)

(assert (=> b!5350532 m!6381644))

(assert (=> b!5349590 d!1715636))

(declare-fun d!1715638 () Bool)

(declare-fun e!3321543 () Bool)

(assert (=> d!1715638 (= (matchZipper!1281 ((_ map or) lt!2180824 lt!2180827) (t!374627 s!2326)) e!3321543)))

(declare-fun res!2270135 () Bool)

(assert (=> d!1715638 (=> res!2270135 e!3321543)))

(assert (=> d!1715638 (= res!2270135 (matchZipper!1281 lt!2180824 (t!374627 s!2326)))))

(declare-fun lt!2180984 () Unit!153666)

(declare-fun choose!40145 ((InoxSet Context!8842) (InoxSet Context!8842) List!61410) Unit!153666)

(assert (=> d!1715638 (= lt!2180984 (choose!40145 lt!2180824 lt!2180827 (t!374627 s!2326)))))

(assert (=> d!1715638 (= (lemmaZipperConcatMatchesSameAsBothZippers!274 lt!2180824 lt!2180827 (t!374627 s!2326)) lt!2180984)))

(declare-fun b!5350535 () Bool)

(assert (=> b!5350535 (= e!3321543 (matchZipper!1281 lt!2180827 (t!374627 s!2326)))))

(assert (= (and d!1715638 (not res!2270135)) b!5350535))

(assert (=> d!1715638 m!6380798))

(assert (=> d!1715638 m!6380796))

(declare-fun m!6381646 () Bool)

(assert (=> d!1715638 m!6381646))

(assert (=> b!5350535 m!6380822))

(assert (=> b!5349570 d!1715638))

(declare-fun d!1715640 () Bool)

(declare-fun c!931502 () Bool)

(assert (=> d!1715640 (= c!931502 (isEmpty!33266 (t!374627 s!2326)))))

(declare-fun e!3321544 () Bool)

(assert (=> d!1715640 (= (matchZipper!1281 lt!2180824 (t!374627 s!2326)) e!3321544)))

(declare-fun b!5350536 () Bool)

(assert (=> b!5350536 (= e!3321544 (nullableZipper!1378 lt!2180824))))

(declare-fun b!5350537 () Bool)

(assert (=> b!5350537 (= e!3321544 (matchZipper!1281 (derivationStepZipper!1278 lt!2180824 (head!11474 (t!374627 s!2326))) (tail!10571 (t!374627 s!2326))))))

(assert (= (and d!1715640 c!931502) b!5350536))

(assert (= (and d!1715640 (not c!931502)) b!5350537))

(assert (=> d!1715640 m!6381634))

(declare-fun m!6381648 () Bool)

(assert (=> b!5350536 m!6381648))

(assert (=> b!5350537 m!6381638))

(assert (=> b!5350537 m!6381638))

(declare-fun m!6381650 () Bool)

(assert (=> b!5350537 m!6381650))

(assert (=> b!5350537 m!6381642))

(assert (=> b!5350537 m!6381650))

(assert (=> b!5350537 m!6381642))

(declare-fun m!6381652 () Bool)

(assert (=> b!5350537 m!6381652))

(assert (=> b!5349570 d!1715640))

(declare-fun d!1715642 () Bool)

(declare-fun c!931503 () Bool)

(assert (=> d!1715642 (= c!931503 (isEmpty!33266 (t!374627 s!2326)))))

(declare-fun e!3321545 () Bool)

(assert (=> d!1715642 (= (matchZipper!1281 ((_ map or) lt!2180824 lt!2180827) (t!374627 s!2326)) e!3321545)))

(declare-fun b!5350538 () Bool)

(assert (=> b!5350538 (= e!3321545 (nullableZipper!1378 ((_ map or) lt!2180824 lt!2180827)))))

(declare-fun b!5350539 () Bool)

(assert (=> b!5350539 (= e!3321545 (matchZipper!1281 (derivationStepZipper!1278 ((_ map or) lt!2180824 lt!2180827) (head!11474 (t!374627 s!2326))) (tail!10571 (t!374627 s!2326))))))

(assert (= (and d!1715642 c!931503) b!5350538))

(assert (= (and d!1715642 (not c!931503)) b!5350539))

(assert (=> d!1715642 m!6381634))

(declare-fun m!6381654 () Bool)

(assert (=> b!5350538 m!6381654))

(assert (=> b!5350539 m!6381638))

(assert (=> b!5350539 m!6381638))

(declare-fun m!6381656 () Bool)

(assert (=> b!5350539 m!6381656))

(assert (=> b!5350539 m!6381642))

(assert (=> b!5350539 m!6381656))

(assert (=> b!5350539 m!6381642))

(declare-fun m!6381658 () Bool)

(assert (=> b!5350539 m!6381658))

(assert (=> b!5349570 d!1715642))

(declare-fun d!1715644 () Bool)

(assert (=> d!1715644 (= (flatMap!764 lt!2180808 lambda!274913) (choose!40136 lt!2180808 lambda!274913))))

(declare-fun bs!1240416 () Bool)

(assert (= bs!1240416 d!1715644))

(declare-fun m!6381660 () Bool)

(assert (=> bs!1240416 m!6381660))

(assert (=> b!5349582 d!1715644))

(declare-fun bm!382507 () Bool)

(declare-fun call!382512 () (InoxSet Context!8842))

(assert (=> bm!382507 (= call!382512 (derivationStepZipperDown!485 (h!67735 (exprs!4921 lt!2180803)) (Context!8843 (t!374628 (exprs!4921 lt!2180803))) (h!67734 s!2326)))))

(declare-fun b!5350540 () Bool)

(declare-fun e!3321548 () Bool)

(assert (=> b!5350540 (= e!3321548 (nullable!5206 (h!67735 (exprs!4921 lt!2180803))))))

(declare-fun b!5350541 () Bool)

(declare-fun e!3321546 () (InoxSet Context!8842))

(declare-fun e!3321547 () (InoxSet Context!8842))

(assert (=> b!5350541 (= e!3321546 e!3321547)))

(declare-fun c!931504 () Bool)

(assert (=> b!5350541 (= c!931504 ((_ is Cons!61287) (exprs!4921 lt!2180803)))))

(declare-fun d!1715646 () Bool)

(declare-fun c!931505 () Bool)

(assert (=> d!1715646 (= c!931505 e!3321548)))

(declare-fun res!2270136 () Bool)

(assert (=> d!1715646 (=> (not res!2270136) (not e!3321548))))

(assert (=> d!1715646 (= res!2270136 ((_ is Cons!61287) (exprs!4921 lt!2180803)))))

(assert (=> d!1715646 (= (derivationStepZipperUp!409 lt!2180803 (h!67734 s!2326)) e!3321546)))

(declare-fun b!5350542 () Bool)

(assert (=> b!5350542 (= e!3321546 ((_ map or) call!382512 (derivationStepZipperUp!409 (Context!8843 (t!374628 (exprs!4921 lt!2180803))) (h!67734 s!2326))))))

(declare-fun b!5350543 () Bool)

(assert (=> b!5350543 (= e!3321547 call!382512)))

(declare-fun b!5350544 () Bool)

(assert (=> b!5350544 (= e!3321547 ((as const (Array Context!8842 Bool)) false))))

(assert (= (and d!1715646 res!2270136) b!5350540))

(assert (= (and d!1715646 c!931505) b!5350542))

(assert (= (and d!1715646 (not c!931505)) b!5350541))

(assert (= (and b!5350541 c!931504) b!5350543))

(assert (= (and b!5350541 (not c!931504)) b!5350544))

(assert (= (or b!5350542 b!5350543) bm!382507))

(declare-fun m!6381662 () Bool)

(assert (=> bm!382507 m!6381662))

(declare-fun m!6381664 () Bool)

(assert (=> b!5350540 m!6381664))

(declare-fun m!6381666 () Bool)

(assert (=> b!5350542 m!6381666))

(assert (=> b!5349582 d!1715646))

(declare-fun d!1715648 () Bool)

(assert (=> d!1715648 (= (flatMap!764 lt!2180808 lambda!274913) (dynLambda!24227 lambda!274913 lt!2180803))))

(declare-fun lt!2180985 () Unit!153666)

(assert (=> d!1715648 (= lt!2180985 (choose!40135 lt!2180808 lt!2180803 lambda!274913))))

(assert (=> d!1715648 (= lt!2180808 (store ((as const (Array Context!8842 Bool)) false) lt!2180803 true))))

(assert (=> d!1715648 (= (lemmaFlatMapOnSingletonSet!296 lt!2180808 lt!2180803 lambda!274913) lt!2180985)))

(declare-fun b_lambda!205319 () Bool)

(assert (=> (not b_lambda!205319) (not d!1715648)))

(declare-fun bs!1240417 () Bool)

(assert (= bs!1240417 d!1715648))

(assert (=> bs!1240417 m!6380902))

(declare-fun m!6381668 () Bool)

(assert (=> bs!1240417 m!6381668))

(declare-fun m!6381670 () Bool)

(assert (=> bs!1240417 m!6381670))

(assert (=> bs!1240417 m!6380908))

(assert (=> b!5349582 d!1715648))

(declare-fun bs!1240418 () Bool)

(declare-fun d!1715650 () Bool)

(assert (= bs!1240418 (and d!1715650 b!5349597)))

(declare-fun lambda!275007 () Int)

(assert (=> bs!1240418 (= lambda!275007 lambda!274913)))

(assert (=> d!1715650 true))

(assert (=> d!1715650 (= (derivationStepZipper!1278 lt!2180808 (h!67734 s!2326)) (flatMap!764 lt!2180808 lambda!275007))))

(declare-fun bs!1240419 () Bool)

(assert (= bs!1240419 d!1715650))

(declare-fun m!6381672 () Bool)

(assert (=> bs!1240419 m!6381672))

(assert (=> b!5349582 d!1715650))

(declare-fun b!5350566 () Bool)

(declare-fun res!2270148 () Bool)

(declare-fun e!3321559 () Bool)

(assert (=> b!5350566 (=> (not res!2270148) (not e!3321559))))

(declare-fun lt!2180993 () Option!15148)

(declare-fun get!21082 (Option!15148) tuple2!64472)

(assert (=> b!5350566 (= res!2270148 (matchR!7222 (regTwo!30586 r!7292) (_2!35539 (get!21082 lt!2180993))))))

(declare-fun b!5350567 () Bool)

(declare-fun e!3321561 () Option!15148)

(declare-fun e!3321562 () Option!15148)

(assert (=> b!5350567 (= e!3321561 e!3321562)))

(declare-fun c!931513 () Bool)

(assert (=> b!5350567 (= c!931513 ((_ is Nil!61286) s!2326))))

(declare-fun b!5350568 () Bool)

(declare-fun lt!2180994 () Unit!153666)

(declare-fun lt!2180992 () Unit!153666)

(assert (=> b!5350568 (= lt!2180994 lt!2180992)))

(declare-fun ++!13358 (List!61410 List!61410) List!61410)

(assert (=> b!5350568 (= (++!13358 (++!13358 Nil!61286 (Cons!61286 (h!67734 s!2326) Nil!61286)) (t!374627 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1773 (List!61410 C!30344 List!61410 List!61410) Unit!153666)

(assert (=> b!5350568 (= lt!2180992 (lemmaMoveElementToOtherListKeepsConcatEq!1773 Nil!61286 (h!67734 s!2326) (t!374627 s!2326) s!2326))))

(assert (=> b!5350568 (= e!3321562 (findConcatSeparation!1562 (regOne!30586 r!7292) (regTwo!30586 r!7292) (++!13358 Nil!61286 (Cons!61286 (h!67734 s!2326) Nil!61286)) (t!374627 s!2326) s!2326))))

(declare-fun b!5350569 () Bool)

(declare-fun e!3321560 () Bool)

(assert (=> b!5350569 (= e!3321560 (matchR!7222 (regTwo!30586 r!7292) s!2326))))

(declare-fun d!1715652 () Bool)

(declare-fun e!3321563 () Bool)

(assert (=> d!1715652 e!3321563))

(declare-fun res!2270147 () Bool)

(assert (=> d!1715652 (=> res!2270147 e!3321563)))

(assert (=> d!1715652 (= res!2270147 e!3321559)))

(declare-fun res!2270151 () Bool)

(assert (=> d!1715652 (=> (not res!2270151) (not e!3321559))))

(assert (=> d!1715652 (= res!2270151 (isDefined!11851 lt!2180993))))

(assert (=> d!1715652 (= lt!2180993 e!3321561)))

(declare-fun c!931512 () Bool)

(assert (=> d!1715652 (= c!931512 e!3321560)))

(declare-fun res!2270150 () Bool)

(assert (=> d!1715652 (=> (not res!2270150) (not e!3321560))))

(assert (=> d!1715652 (= res!2270150 (matchR!7222 (regOne!30586 r!7292) Nil!61286))))

(assert (=> d!1715652 (validRegex!6773 (regOne!30586 r!7292))))

(assert (=> d!1715652 (= (findConcatSeparation!1562 (regOne!30586 r!7292) (regTwo!30586 r!7292) Nil!61286 s!2326 s!2326) lt!2180993)))

(declare-fun b!5350565 () Bool)

(assert (=> b!5350565 (= e!3321562 None!15147)))

(declare-fun b!5350570 () Bool)

(assert (=> b!5350570 (= e!3321563 (not (isDefined!11851 lt!2180993)))))

(declare-fun b!5350571 () Bool)

(declare-fun res!2270149 () Bool)

(assert (=> b!5350571 (=> (not res!2270149) (not e!3321559))))

(assert (=> b!5350571 (= res!2270149 (matchR!7222 (regOne!30586 r!7292) (_1!35539 (get!21082 lt!2180993))))))

(declare-fun b!5350572 () Bool)

(assert (=> b!5350572 (= e!3321561 (Some!15147 (tuple2!64473 Nil!61286 s!2326)))))

(declare-fun b!5350573 () Bool)

(assert (=> b!5350573 (= e!3321559 (= (++!13358 (_1!35539 (get!21082 lt!2180993)) (_2!35539 (get!21082 lt!2180993))) s!2326))))

(assert (= (and d!1715652 res!2270150) b!5350569))

(assert (= (and d!1715652 c!931512) b!5350572))

(assert (= (and d!1715652 (not c!931512)) b!5350567))

(assert (= (and b!5350567 c!931513) b!5350565))

(assert (= (and b!5350567 (not c!931513)) b!5350568))

(assert (= (and d!1715652 res!2270151) b!5350571))

(assert (= (and b!5350571 res!2270149) b!5350566))

(assert (= (and b!5350566 res!2270148) b!5350573))

(assert (= (and d!1715652 (not res!2270147)) b!5350570))

(declare-fun m!6381674 () Bool)

(assert (=> b!5350571 m!6381674))

(declare-fun m!6381676 () Bool)

(assert (=> b!5350571 m!6381676))

(assert (=> b!5350566 m!6381674))

(declare-fun m!6381678 () Bool)

(assert (=> b!5350566 m!6381678))

(declare-fun m!6381680 () Bool)

(assert (=> d!1715652 m!6381680))

(declare-fun m!6381682 () Bool)

(assert (=> d!1715652 m!6381682))

(declare-fun m!6381684 () Bool)

(assert (=> d!1715652 m!6381684))

(declare-fun m!6381686 () Bool)

(assert (=> b!5350569 m!6381686))

(declare-fun m!6381688 () Bool)

(assert (=> b!5350568 m!6381688))

(assert (=> b!5350568 m!6381688))

(declare-fun m!6381690 () Bool)

(assert (=> b!5350568 m!6381690))

(declare-fun m!6381692 () Bool)

(assert (=> b!5350568 m!6381692))

(assert (=> b!5350568 m!6381688))

(declare-fun m!6381694 () Bool)

(assert (=> b!5350568 m!6381694))

(assert (=> b!5350573 m!6381674))

(declare-fun m!6381696 () Bool)

(assert (=> b!5350573 m!6381696))

(assert (=> b!5350570 m!6381680))

(assert (=> b!5349581 d!1715652))

(declare-fun d!1715654 () Bool)

(declare-fun choose!40146 (Int) Bool)

(assert (=> d!1715654 (= (Exists!2218 lambda!274912) (choose!40146 lambda!274912))))

(declare-fun bs!1240420 () Bool)

(assert (= bs!1240420 d!1715654))

(declare-fun m!6381698 () Bool)

(assert (=> bs!1240420 m!6381698))

(assert (=> b!5349581 d!1715654))

(declare-fun d!1715656 () Bool)

(assert (=> d!1715656 (= (Exists!2218 lambda!274911) (choose!40146 lambda!274911))))

(declare-fun bs!1240421 () Bool)

(assert (= bs!1240421 d!1715656))

(declare-fun m!6381700 () Bool)

(assert (=> bs!1240421 m!6381700))

(assert (=> b!5349581 d!1715656))

(declare-fun bs!1240422 () Bool)

(declare-fun d!1715658 () Bool)

(assert (= bs!1240422 (and d!1715658 b!5350412)))

(declare-fun lambda!275010 () Int)

(assert (=> bs!1240422 (not (= lambda!275010 lambda!274994))))

(declare-fun bs!1240423 () Bool)

(assert (= bs!1240423 (and d!1715658 b!5349584)))

(assert (=> bs!1240423 (not (= lambda!275010 lambda!274917))))

(declare-fun bs!1240424 () Bool)

(assert (= bs!1240424 (and d!1715658 b!5349581)))

(assert (=> bs!1240424 (not (= lambda!275010 lambda!274912))))

(declare-fun bs!1240425 () Bool)

(assert (= bs!1240425 (and d!1715658 b!5350420)))

(assert (=> bs!1240425 (not (= lambda!275010 lambda!274993))))

(assert (=> bs!1240423 (= (and (= (regOne!30586 r!7292) (regOne!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180826)) (= lambda!275010 lambda!274914))))

(assert (=> bs!1240423 (= (and (= (regOne!30586 r!7292) (regTwo!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180800)) (= lambda!275010 lambda!274916))))

(assert (=> bs!1240424 (= lambda!275010 lambda!274911)))

(assert (=> bs!1240423 (not (= lambda!275010 lambda!274915))))

(assert (=> d!1715658 true))

(assert (=> d!1715658 true))

(assert (=> d!1715658 true))

(assert (=> d!1715658 (= (isDefined!11851 (findConcatSeparation!1562 (regOne!30586 r!7292) (regTwo!30586 r!7292) Nil!61286 s!2326 s!2326)) (Exists!2218 lambda!275010))))

(declare-fun lt!2180997 () Unit!153666)

(declare-fun choose!40147 (Regex!15037 Regex!15037 List!61410) Unit!153666)

(assert (=> d!1715658 (= lt!2180997 (choose!40147 (regOne!30586 r!7292) (regTwo!30586 r!7292) s!2326))))

(assert (=> d!1715658 (validRegex!6773 (regOne!30586 r!7292))))

(assert (=> d!1715658 (= (lemmaFindConcatSeparationEquivalentToExists!1326 (regOne!30586 r!7292) (regTwo!30586 r!7292) s!2326) lt!2180997)))

(declare-fun bs!1240426 () Bool)

(assert (= bs!1240426 d!1715658))

(declare-fun m!6381702 () Bool)

(assert (=> bs!1240426 m!6381702))

(assert (=> bs!1240426 m!6380924))

(assert (=> bs!1240426 m!6380926))

(assert (=> bs!1240426 m!6380924))

(assert (=> bs!1240426 m!6381684))

(declare-fun m!6381704 () Bool)

(assert (=> bs!1240426 m!6381704))

(assert (=> b!5349581 d!1715658))

(declare-fun bs!1240427 () Bool)

(declare-fun d!1715660 () Bool)

(assert (= bs!1240427 (and d!1715660 b!5350412)))

(declare-fun lambda!275015 () Int)

(assert (=> bs!1240427 (not (= lambda!275015 lambda!274994))))

(declare-fun bs!1240428 () Bool)

(assert (= bs!1240428 (and d!1715660 b!5349584)))

(assert (=> bs!1240428 (not (= lambda!275015 lambda!274917))))

(declare-fun bs!1240429 () Bool)

(assert (= bs!1240429 (and d!1715660 b!5349581)))

(assert (=> bs!1240429 (not (= lambda!275015 lambda!274912))))

(declare-fun bs!1240430 () Bool)

(assert (= bs!1240430 (and d!1715660 b!5350420)))

(assert (=> bs!1240430 (not (= lambda!275015 lambda!274993))))

(assert (=> bs!1240428 (= (and (= (regOne!30586 r!7292) (regOne!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180826)) (= lambda!275015 lambda!274914))))

(assert (=> bs!1240428 (= (and (= (regOne!30586 r!7292) (regTwo!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180800)) (= lambda!275015 lambda!274916))))

(declare-fun bs!1240431 () Bool)

(assert (= bs!1240431 (and d!1715660 d!1715658)))

(assert (=> bs!1240431 (= lambda!275015 lambda!275010)))

(assert (=> bs!1240429 (= lambda!275015 lambda!274911)))

(assert (=> bs!1240428 (not (= lambda!275015 lambda!274915))))

(assert (=> d!1715660 true))

(assert (=> d!1715660 true))

(assert (=> d!1715660 true))

(declare-fun lambda!275016 () Int)

(assert (=> bs!1240427 (= lambda!275016 lambda!274994)))

(assert (=> bs!1240428 (= (and (= (regOne!30586 r!7292) (regTwo!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180800)) (= lambda!275016 lambda!274917))))

(assert (=> bs!1240429 (= lambda!275016 lambda!274912)))

(assert (=> bs!1240430 (not (= lambda!275016 lambda!274993))))

(assert (=> bs!1240428 (not (= lambda!275016 lambda!274914))))

(assert (=> bs!1240428 (not (= lambda!275016 lambda!274916))))

(assert (=> bs!1240431 (not (= lambda!275016 lambda!275010))))

(assert (=> bs!1240429 (not (= lambda!275016 lambda!274911))))

(assert (=> bs!1240428 (= (and (= (regOne!30586 r!7292) (regOne!30586 (regOne!30586 r!7292))) (= (regTwo!30586 r!7292) lt!2180826)) (= lambda!275016 lambda!274915))))

(declare-fun bs!1240432 () Bool)

(assert (= bs!1240432 d!1715660))

(assert (=> bs!1240432 (not (= lambda!275016 lambda!275015))))

(assert (=> d!1715660 true))

(assert (=> d!1715660 true))

(assert (=> d!1715660 true))

(assert (=> d!1715660 (= (Exists!2218 lambda!275015) (Exists!2218 lambda!275016))))

(declare-fun lt!2181000 () Unit!153666)

(declare-fun choose!40148 (Regex!15037 Regex!15037 List!61410) Unit!153666)

(assert (=> d!1715660 (= lt!2181000 (choose!40148 (regOne!30586 r!7292) (regTwo!30586 r!7292) s!2326))))

(assert (=> d!1715660 (validRegex!6773 (regOne!30586 r!7292))))

(assert (=> d!1715660 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!872 (regOne!30586 r!7292) (regTwo!30586 r!7292) s!2326) lt!2181000)))

(declare-fun m!6381706 () Bool)

(assert (=> bs!1240432 m!6381706))

(declare-fun m!6381708 () Bool)

(assert (=> bs!1240432 m!6381708))

(declare-fun m!6381710 () Bool)

(assert (=> bs!1240432 m!6381710))

(assert (=> bs!1240432 m!6381684))

(assert (=> b!5349581 d!1715660))

(declare-fun d!1715662 () Bool)

(declare-fun isEmpty!33268 (Option!15148) Bool)

(assert (=> d!1715662 (= (isDefined!11851 (findConcatSeparation!1562 (regOne!30586 r!7292) (regTwo!30586 r!7292) Nil!61286 s!2326 s!2326)) (not (isEmpty!33268 (findConcatSeparation!1562 (regOne!30586 r!7292) (regTwo!30586 r!7292) Nil!61286 s!2326 s!2326))))))

(declare-fun bs!1240433 () Bool)

(assert (= bs!1240433 d!1715662))

(assert (=> bs!1240433 m!6380924))

(declare-fun m!6381712 () Bool)

(assert (=> bs!1240433 m!6381712))

(assert (=> b!5349581 d!1715662))

(declare-fun d!1715664 () Bool)

(declare-fun c!931514 () Bool)

(assert (=> d!1715664 (= c!931514 (isEmpty!33266 (t!374627 s!2326)))))

(declare-fun e!3321570 () Bool)

(assert (=> d!1715664 (= (matchZipper!1281 lt!2180811 (t!374627 s!2326)) e!3321570)))

(declare-fun b!5350586 () Bool)

(assert (=> b!5350586 (= e!3321570 (nullableZipper!1378 lt!2180811))))

(declare-fun b!5350587 () Bool)

(assert (=> b!5350587 (= e!3321570 (matchZipper!1281 (derivationStepZipper!1278 lt!2180811 (head!11474 (t!374627 s!2326))) (tail!10571 (t!374627 s!2326))))))

(assert (= (and d!1715664 c!931514) b!5350586))

(assert (= (and d!1715664 (not c!931514)) b!5350587))

(assert (=> d!1715664 m!6381634))

(declare-fun m!6381714 () Bool)

(assert (=> b!5350586 m!6381714))

(assert (=> b!5350587 m!6381638))

(assert (=> b!5350587 m!6381638))

(declare-fun m!6381716 () Bool)

(assert (=> b!5350587 m!6381716))

(assert (=> b!5350587 m!6381642))

(assert (=> b!5350587 m!6381716))

(assert (=> b!5350587 m!6381642))

(declare-fun m!6381718 () Bool)

(assert (=> b!5350587 m!6381718))

(assert (=> b!5349562 d!1715664))

(assert (=> b!5349562 d!1715640))

(declare-fun d!1715666 () Bool)

(declare-fun c!931515 () Bool)

(assert (=> d!1715666 (= c!931515 (isEmpty!33266 (t!374627 s!2326)))))

(declare-fun e!3321571 () Bool)

(assert (=> d!1715666 (= (matchZipper!1281 lt!2180798 (t!374627 s!2326)) e!3321571)))

(declare-fun b!5350588 () Bool)

(assert (=> b!5350588 (= e!3321571 (nullableZipper!1378 lt!2180798))))

(declare-fun b!5350589 () Bool)

(assert (=> b!5350589 (= e!3321571 (matchZipper!1281 (derivationStepZipper!1278 lt!2180798 (head!11474 (t!374627 s!2326))) (tail!10571 (t!374627 s!2326))))))

(assert (= (and d!1715666 c!931515) b!5350588))

(assert (= (and d!1715666 (not c!931515)) b!5350589))

(assert (=> d!1715666 m!6381634))

(declare-fun m!6381720 () Bool)

(assert (=> b!5350588 m!6381720))

(assert (=> b!5350589 m!6381638))

(assert (=> b!5350589 m!6381638))

(declare-fun m!6381722 () Bool)

(assert (=> b!5350589 m!6381722))

(assert (=> b!5350589 m!6381642))

(assert (=> b!5350589 m!6381722))

(assert (=> b!5350589 m!6381642))

(declare-fun m!6381724 () Bool)

(assert (=> b!5350589 m!6381724))

(assert (=> b!5349565 d!1715666))

(declare-fun b!5350591 () Bool)

(declare-fun res!2270165 () Bool)

(declare-fun e!3321572 () Bool)

(assert (=> b!5350591 (=> (not res!2270165) (not e!3321572))))

(declare-fun lt!2181002 () Option!15148)

(assert (=> b!5350591 (= res!2270165 (matchR!7222 lt!2180800 (_2!35539 (get!21082 lt!2181002))))))

(declare-fun b!5350592 () Bool)

(declare-fun e!3321574 () Option!15148)

(declare-fun e!3321575 () Option!15148)

(assert (=> b!5350592 (= e!3321574 e!3321575)))

(declare-fun c!931517 () Bool)

(assert (=> b!5350592 (= c!931517 ((_ is Nil!61286) s!2326))))

(declare-fun b!5350593 () Bool)

(declare-fun lt!2181003 () Unit!153666)

(declare-fun lt!2181001 () Unit!153666)

(assert (=> b!5350593 (= lt!2181003 lt!2181001)))

(assert (=> b!5350593 (= (++!13358 (++!13358 Nil!61286 (Cons!61286 (h!67734 s!2326) Nil!61286)) (t!374627 s!2326)) s!2326)))

(assert (=> b!5350593 (= lt!2181001 (lemmaMoveElementToOtherListKeepsConcatEq!1773 Nil!61286 (h!67734 s!2326) (t!374627 s!2326) s!2326))))

(assert (=> b!5350593 (= e!3321575 (findConcatSeparation!1562 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 (++!13358 Nil!61286 (Cons!61286 (h!67734 s!2326) Nil!61286)) (t!374627 s!2326) s!2326))))

(declare-fun b!5350594 () Bool)

(declare-fun e!3321573 () Bool)

(assert (=> b!5350594 (= e!3321573 (matchR!7222 lt!2180800 s!2326))))

(declare-fun d!1715668 () Bool)

(declare-fun e!3321576 () Bool)

(assert (=> d!1715668 e!3321576))

(declare-fun res!2270164 () Bool)

(assert (=> d!1715668 (=> res!2270164 e!3321576)))

(assert (=> d!1715668 (= res!2270164 e!3321572)))

(declare-fun res!2270168 () Bool)

(assert (=> d!1715668 (=> (not res!2270168) (not e!3321572))))

(assert (=> d!1715668 (= res!2270168 (isDefined!11851 lt!2181002))))

(assert (=> d!1715668 (= lt!2181002 e!3321574)))

(declare-fun c!931516 () Bool)

(assert (=> d!1715668 (= c!931516 e!3321573)))

(declare-fun res!2270167 () Bool)

(assert (=> d!1715668 (=> (not res!2270167) (not e!3321573))))

(assert (=> d!1715668 (= res!2270167 (matchR!7222 (regTwo!30586 (regOne!30586 r!7292)) Nil!61286))))

(assert (=> d!1715668 (validRegex!6773 (regTwo!30586 (regOne!30586 r!7292)))))

(assert (=> d!1715668 (= (findConcatSeparation!1562 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 Nil!61286 s!2326 s!2326) lt!2181002)))

(declare-fun b!5350590 () Bool)

(assert (=> b!5350590 (= e!3321575 None!15147)))

(declare-fun b!5350595 () Bool)

(assert (=> b!5350595 (= e!3321576 (not (isDefined!11851 lt!2181002)))))

(declare-fun b!5350596 () Bool)

(declare-fun res!2270166 () Bool)

(assert (=> b!5350596 (=> (not res!2270166) (not e!3321572))))

(assert (=> b!5350596 (= res!2270166 (matchR!7222 (regTwo!30586 (regOne!30586 r!7292)) (_1!35539 (get!21082 lt!2181002))))))

(declare-fun b!5350597 () Bool)

(assert (=> b!5350597 (= e!3321574 (Some!15147 (tuple2!64473 Nil!61286 s!2326)))))

(declare-fun b!5350598 () Bool)

(assert (=> b!5350598 (= e!3321572 (= (++!13358 (_1!35539 (get!21082 lt!2181002)) (_2!35539 (get!21082 lt!2181002))) s!2326))))

(assert (= (and d!1715668 res!2270167) b!5350594))

(assert (= (and d!1715668 c!931516) b!5350597))

(assert (= (and d!1715668 (not c!931516)) b!5350592))

(assert (= (and b!5350592 c!931517) b!5350590))

(assert (= (and b!5350592 (not c!931517)) b!5350593))

(assert (= (and d!1715668 res!2270168) b!5350596))

(assert (= (and b!5350596 res!2270166) b!5350591))

(assert (= (and b!5350591 res!2270165) b!5350598))

(assert (= (and d!1715668 (not res!2270164)) b!5350595))

(declare-fun m!6381726 () Bool)

(assert (=> b!5350596 m!6381726))

(declare-fun m!6381728 () Bool)

(assert (=> b!5350596 m!6381728))

(assert (=> b!5350591 m!6381726))

(declare-fun m!6381730 () Bool)

(assert (=> b!5350591 m!6381730))

(declare-fun m!6381732 () Bool)

(assert (=> d!1715668 m!6381732))

(declare-fun m!6381734 () Bool)

(assert (=> d!1715668 m!6381734))

(assert (=> d!1715668 m!6381444))

(declare-fun m!6381736 () Bool)

(assert (=> b!5350594 m!6381736))

(assert (=> b!5350593 m!6381688))

(assert (=> b!5350593 m!6381688))

(assert (=> b!5350593 m!6381690))

(assert (=> b!5350593 m!6381692))

(assert (=> b!5350593 m!6381688))

(declare-fun m!6381738 () Bool)

(assert (=> b!5350593 m!6381738))

(assert (=> b!5350598 m!6381726))

(declare-fun m!6381740 () Bool)

(assert (=> b!5350598 m!6381740))

(assert (=> b!5350595 m!6381732))

(assert (=> b!5349584 d!1715668))

(declare-fun bs!1240434 () Bool)

(declare-fun d!1715670 () Bool)

(assert (= bs!1240434 (and d!1715670 b!5350412)))

(declare-fun lambda!275017 () Int)

(assert (=> bs!1240434 (not (= lambda!275017 lambda!274994))))

(declare-fun bs!1240435 () Bool)

(assert (= bs!1240435 (and d!1715670 b!5349584)))

(assert (=> bs!1240435 (not (= lambda!275017 lambda!274917))))

(declare-fun bs!1240436 () Bool)

(assert (= bs!1240436 (and d!1715670 b!5349581)))

(assert (=> bs!1240436 (not (= lambda!275017 lambda!274912))))

(declare-fun bs!1240437 () Bool)

(assert (= bs!1240437 (and d!1715670 b!5350420)))

(assert (=> bs!1240437 (not (= lambda!275017 lambda!274993))))

(declare-fun bs!1240438 () Bool)

(assert (= bs!1240438 (and d!1715670 d!1715660)))

(assert (=> bs!1240438 (not (= lambda!275017 lambda!275016))))

(assert (=> bs!1240435 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 (regOne!30586 r!7292))) (= lt!2180800 lt!2180826)) (= lambda!275017 lambda!274914))))

(assert (=> bs!1240435 (= lambda!275017 lambda!274916)))

(declare-fun bs!1240439 () Bool)

(assert (= bs!1240439 (and d!1715670 d!1715658)))

(assert (=> bs!1240439 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275017 lambda!275010))))

(assert (=> bs!1240436 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275017 lambda!274911))))

(assert (=> bs!1240435 (not (= lambda!275017 lambda!274915))))

(assert (=> bs!1240438 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275017 lambda!275015))))

(assert (=> d!1715670 true))

(assert (=> d!1715670 true))

(assert (=> d!1715670 true))

(assert (=> d!1715670 (= (isDefined!11851 (findConcatSeparation!1562 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 Nil!61286 s!2326 s!2326)) (Exists!2218 lambda!275017))))

(declare-fun lt!2181004 () Unit!153666)

(assert (=> d!1715670 (= lt!2181004 (choose!40147 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326))))

(assert (=> d!1715670 (validRegex!6773 (regTwo!30586 (regOne!30586 r!7292)))))

(assert (=> d!1715670 (= (lemmaFindConcatSeparationEquivalentToExists!1326 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326) lt!2181004)))

(declare-fun bs!1240440 () Bool)

(assert (= bs!1240440 d!1715670))

(declare-fun m!6381742 () Bool)

(assert (=> bs!1240440 m!6381742))

(assert (=> bs!1240440 m!6380852))

(assert (=> bs!1240440 m!6380854))

(assert (=> bs!1240440 m!6380852))

(assert (=> bs!1240440 m!6381444))

(declare-fun m!6381744 () Bool)

(assert (=> bs!1240440 m!6381744))

(assert (=> b!5349584 d!1715670))

(declare-fun d!1715672 () Bool)

(assert (=> d!1715672 (= (Exists!2218 lambda!274915) (choose!40146 lambda!274915))))

(declare-fun bs!1240441 () Bool)

(assert (= bs!1240441 d!1715672))

(declare-fun m!6381746 () Bool)

(assert (=> bs!1240441 m!6381746))

(assert (=> b!5349584 d!1715672))

(declare-fun bs!1240442 () Bool)

(declare-fun b!5350608 () Bool)

(assert (= bs!1240442 (and b!5350608 b!5350412)))

(declare-fun lambda!275018 () Int)

(assert (=> bs!1240442 (not (= lambda!275018 lambda!274994))))

(declare-fun bs!1240443 () Bool)

(assert (= bs!1240443 (and b!5350608 b!5349584)))

(assert (=> bs!1240443 (not (= lambda!275018 lambda!274917))))

(declare-fun bs!1240444 () Bool)

(assert (= bs!1240444 (and b!5350608 b!5349581)))

(assert (=> bs!1240444 (not (= lambda!275018 lambda!274912))))

(declare-fun bs!1240445 () Bool)

(assert (= bs!1240445 (and b!5350608 b!5350420)))

(assert (=> bs!1240445 (= (and (= (reg!15366 lt!2180826) (reg!15366 r!7292)) (= lt!2180826 r!7292)) (= lambda!275018 lambda!274993))))

(declare-fun bs!1240446 () Bool)

(assert (= bs!1240446 (and b!5350608 d!1715660)))

(assert (=> bs!1240446 (not (= lambda!275018 lambda!275016))))

(assert (=> bs!1240443 (not (= lambda!275018 lambda!274914))))

(assert (=> bs!1240443 (not (= lambda!275018 lambda!274916))))

(declare-fun bs!1240447 () Bool)

(assert (= bs!1240447 (and b!5350608 d!1715658)))

(assert (=> bs!1240447 (not (= lambda!275018 lambda!275010))))

(assert (=> bs!1240444 (not (= lambda!275018 lambda!274911))))

(assert (=> bs!1240443 (not (= lambda!275018 lambda!274915))))

(assert (=> bs!1240446 (not (= lambda!275018 lambda!275015))))

(declare-fun bs!1240448 () Bool)

(assert (= bs!1240448 (and b!5350608 d!1715670)))

(assert (=> bs!1240448 (not (= lambda!275018 lambda!275017))))

(assert (=> b!5350608 true))

(assert (=> b!5350608 true))

(declare-fun bs!1240449 () Bool)

(declare-fun b!5350600 () Bool)

(assert (= bs!1240449 (and b!5350600 b!5350412)))

(declare-fun lambda!275019 () Int)

(assert (=> bs!1240449 (= (and (= (regOne!30586 lt!2180826) (regOne!30586 r!7292)) (= (regTwo!30586 lt!2180826) (regTwo!30586 r!7292))) (= lambda!275019 lambda!274994))))

(declare-fun bs!1240450 () Bool)

(assert (= bs!1240450 (and b!5350600 b!5350608)))

(assert (=> bs!1240450 (not (= lambda!275019 lambda!275018))))

(declare-fun bs!1240451 () Bool)

(assert (= bs!1240451 (and b!5350600 b!5349584)))

(assert (=> bs!1240451 (= (and (= (regOne!30586 lt!2180826) (regTwo!30586 (regOne!30586 r!7292))) (= (regTwo!30586 lt!2180826) lt!2180800)) (= lambda!275019 lambda!274917))))

(declare-fun bs!1240452 () Bool)

(assert (= bs!1240452 (and b!5350600 b!5349581)))

(assert (=> bs!1240452 (= (and (= (regOne!30586 lt!2180826) (regOne!30586 r!7292)) (= (regTwo!30586 lt!2180826) (regTwo!30586 r!7292))) (= lambda!275019 lambda!274912))))

(declare-fun bs!1240453 () Bool)

(assert (= bs!1240453 (and b!5350600 b!5350420)))

(assert (=> bs!1240453 (not (= lambda!275019 lambda!274993))))

(declare-fun bs!1240454 () Bool)

(assert (= bs!1240454 (and b!5350600 d!1715660)))

(assert (=> bs!1240454 (= (and (= (regOne!30586 lt!2180826) (regOne!30586 r!7292)) (= (regTwo!30586 lt!2180826) (regTwo!30586 r!7292))) (= lambda!275019 lambda!275016))))

(assert (=> bs!1240451 (not (= lambda!275019 lambda!274914))))

(assert (=> bs!1240451 (not (= lambda!275019 lambda!274916))))

(declare-fun bs!1240455 () Bool)

(assert (= bs!1240455 (and b!5350600 d!1715658)))

(assert (=> bs!1240455 (not (= lambda!275019 lambda!275010))))

(assert (=> bs!1240452 (not (= lambda!275019 lambda!274911))))

(assert (=> bs!1240451 (= (and (= (regOne!30586 lt!2180826) (regOne!30586 (regOne!30586 r!7292))) (= (regTwo!30586 lt!2180826) lt!2180826)) (= lambda!275019 lambda!274915))))

(assert (=> bs!1240454 (not (= lambda!275019 lambda!275015))))

(declare-fun bs!1240456 () Bool)

(assert (= bs!1240456 (and b!5350600 d!1715670)))

(assert (=> bs!1240456 (not (= lambda!275019 lambda!275017))))

(assert (=> b!5350600 true))

(assert (=> b!5350600 true))

(declare-fun b!5350599 () Bool)

(declare-fun e!3321580 () Bool)

(declare-fun call!382514 () Bool)

(assert (=> b!5350599 (= e!3321580 call!382514)))

(declare-fun e!3321582 () Bool)

(declare-fun call!382513 () Bool)

(assert (=> b!5350600 (= e!3321582 call!382513)))

(declare-fun bm!382508 () Bool)

(assert (=> bm!382508 (= call!382514 (isEmpty!33266 s!2326))))

(declare-fun b!5350601 () Bool)

(declare-fun c!931518 () Bool)

(assert (=> b!5350601 (= c!931518 ((_ is ElementMatch!15037) lt!2180826))))

(declare-fun e!3321577 () Bool)

(declare-fun e!3321579 () Bool)

(assert (=> b!5350601 (= e!3321577 e!3321579)))

(declare-fun b!5350602 () Bool)

(declare-fun c!931519 () Bool)

(assert (=> b!5350602 (= c!931519 ((_ is Union!15037) lt!2180826))))

(declare-fun e!3321583 () Bool)

(assert (=> b!5350602 (= e!3321579 e!3321583)))

(declare-fun b!5350603 () Bool)

(declare-fun e!3321581 () Bool)

(assert (=> b!5350603 (= e!3321581 (matchRSpec!2140 (regTwo!30587 lt!2180826) s!2326))))

(declare-fun b!5350604 () Bool)

(assert (=> b!5350604 (= e!3321579 (= s!2326 (Cons!61286 (c!931215 lt!2180826) Nil!61286)))))

(declare-fun b!5350605 () Bool)

(assert (=> b!5350605 (= e!3321583 e!3321582)))

(declare-fun c!931521 () Bool)

(assert (=> b!5350605 (= c!931521 ((_ is Star!15037) lt!2180826))))

(declare-fun bm!382509 () Bool)

(assert (=> bm!382509 (= call!382513 (Exists!2218 (ite c!931521 lambda!275018 lambda!275019)))))

(declare-fun d!1715674 () Bool)

(declare-fun c!931520 () Bool)

(assert (=> d!1715674 (= c!931520 ((_ is EmptyExpr!15037) lt!2180826))))

(assert (=> d!1715674 (= (matchRSpec!2140 lt!2180826 s!2326) e!3321580)))

(declare-fun b!5350606 () Bool)

(assert (=> b!5350606 (= e!3321580 e!3321577)))

(declare-fun res!2270169 () Bool)

(assert (=> b!5350606 (= res!2270169 (not ((_ is EmptyLang!15037) lt!2180826)))))

(assert (=> b!5350606 (=> (not res!2270169) (not e!3321577))))

(declare-fun b!5350607 () Bool)

(declare-fun res!2270171 () Bool)

(declare-fun e!3321578 () Bool)

(assert (=> b!5350607 (=> res!2270171 e!3321578)))

(assert (=> b!5350607 (= res!2270171 call!382514)))

(assert (=> b!5350607 (= e!3321582 e!3321578)))

(assert (=> b!5350608 (= e!3321578 call!382513)))

(declare-fun b!5350609 () Bool)

(assert (=> b!5350609 (= e!3321583 e!3321581)))

(declare-fun res!2270170 () Bool)

(assert (=> b!5350609 (= res!2270170 (matchRSpec!2140 (regOne!30587 lt!2180826) s!2326))))

(assert (=> b!5350609 (=> res!2270170 e!3321581)))

(assert (= (and d!1715674 c!931520) b!5350599))

(assert (= (and d!1715674 (not c!931520)) b!5350606))

(assert (= (and b!5350606 res!2270169) b!5350601))

(assert (= (and b!5350601 c!931518) b!5350604))

(assert (= (and b!5350601 (not c!931518)) b!5350602))

(assert (= (and b!5350602 c!931519) b!5350609))

(assert (= (and b!5350602 (not c!931519)) b!5350605))

(assert (= (and b!5350609 (not res!2270170)) b!5350603))

(assert (= (and b!5350605 c!931521) b!5350607))

(assert (= (and b!5350605 (not c!931521)) b!5350600))

(assert (= (and b!5350607 (not res!2270171)) b!5350608))

(assert (= (or b!5350608 b!5350600) bm!382509))

(assert (= (or b!5350599 b!5350607) bm!382508))

(assert (=> bm!382508 m!6381396))

(declare-fun m!6381748 () Bool)

(assert (=> b!5350603 m!6381748))

(declare-fun m!6381750 () Bool)

(assert (=> bm!382509 m!6381750))

(declare-fun m!6381752 () Bool)

(assert (=> b!5350609 m!6381752))

(assert (=> b!5349584 d!1715674))

(declare-fun d!1715676 () Bool)

(declare-fun c!931522 () Bool)

(assert (=> d!1715676 (= c!931522 (isEmpty!33266 s!2326))))

(declare-fun e!3321584 () Bool)

(assert (=> d!1715676 (= (matchZipper!1281 z!1189 s!2326) e!3321584)))

(declare-fun b!5350610 () Bool)

(assert (=> b!5350610 (= e!3321584 (nullableZipper!1378 z!1189))))

(declare-fun b!5350611 () Bool)

(assert (=> b!5350611 (= e!3321584 (matchZipper!1281 (derivationStepZipper!1278 z!1189 (head!11474 s!2326)) (tail!10571 s!2326)))))

(assert (= (and d!1715676 c!931522) b!5350610))

(assert (= (and d!1715676 (not c!931522)) b!5350611))

(assert (=> d!1715676 m!6381396))

(declare-fun m!6381754 () Bool)

(assert (=> b!5350610 m!6381754))

(assert (=> b!5350611 m!6381400))

(assert (=> b!5350611 m!6381400))

(declare-fun m!6381756 () Bool)

(assert (=> b!5350611 m!6381756))

(assert (=> b!5350611 m!6381392))

(assert (=> b!5350611 m!6381756))

(assert (=> b!5350611 m!6381392))

(declare-fun m!6381758 () Bool)

(assert (=> b!5350611 m!6381758))

(assert (=> b!5349584 d!1715676))

(declare-fun d!1715678 () Bool)

(assert (=> d!1715678 (= (matchR!7222 lt!2180802 s!2326) (matchZipper!1281 lt!2180808 s!2326))))

(declare-fun lt!2181007 () Unit!153666)

(declare-fun choose!40149 ((InoxSet Context!8842) List!61412 Regex!15037 List!61410) Unit!153666)

(assert (=> d!1715678 (= lt!2181007 (choose!40149 lt!2180808 lt!2180801 lt!2180802 s!2326))))

(assert (=> d!1715678 (validRegex!6773 lt!2180802)))

(assert (=> d!1715678 (= (theoremZipperRegexEquiv!435 lt!2180808 lt!2180801 lt!2180802 s!2326) lt!2181007)))

(declare-fun bs!1240457 () Bool)

(assert (= bs!1240457 d!1715678))

(assert (=> bs!1240457 m!6380872))

(assert (=> bs!1240457 m!6380848))

(declare-fun m!6381760 () Bool)

(assert (=> bs!1240457 m!6381760))

(declare-fun m!6381762 () Bool)

(assert (=> bs!1240457 m!6381762))

(assert (=> b!5349584 d!1715678))

(declare-fun d!1715680 () Bool)

(assert (=> d!1715680 (= (isDefined!11851 (findConcatSeparation!1562 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 Nil!61286 s!2326 s!2326)) (not (isEmpty!33268 (findConcatSeparation!1562 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 Nil!61286 s!2326 s!2326))))))

(declare-fun bs!1240458 () Bool)

(assert (= bs!1240458 d!1715680))

(assert (=> bs!1240458 m!6380856))

(declare-fun m!6381764 () Bool)

(assert (=> bs!1240458 m!6381764))

(assert (=> b!5349584 d!1715680))

(declare-fun bs!1240459 () Bool)

(declare-fun d!1715682 () Bool)

(assert (= bs!1240459 (and d!1715682 b!5350412)))

(declare-fun lambda!275020 () Int)

(assert (=> bs!1240459 (not (= lambda!275020 lambda!274994))))

(declare-fun bs!1240460 () Bool)

(assert (= bs!1240460 (and d!1715682 b!5350608)))

(assert (=> bs!1240460 (not (= lambda!275020 lambda!275018))))

(declare-fun bs!1240461 () Bool)

(assert (= bs!1240461 (and d!1715682 b!5349584)))

(assert (=> bs!1240461 (not (= lambda!275020 lambda!274917))))

(declare-fun bs!1240462 () Bool)

(assert (= bs!1240462 (and d!1715682 b!5349581)))

(assert (=> bs!1240462 (not (= lambda!275020 lambda!274912))))

(declare-fun bs!1240463 () Bool)

(assert (= bs!1240463 (and d!1715682 b!5350420)))

(assert (=> bs!1240463 (not (= lambda!275020 lambda!274993))))

(declare-fun bs!1240464 () Bool)

(assert (= bs!1240464 (and d!1715682 d!1715660)))

(assert (=> bs!1240464 (not (= lambda!275020 lambda!275016))))

(assert (=> bs!1240461 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 (regOne!30586 r!7292))) (= lt!2180800 lt!2180826)) (= lambda!275020 lambda!274914))))

(assert (=> bs!1240461 (= lambda!275020 lambda!274916)))

(declare-fun bs!1240465 () Bool)

(assert (= bs!1240465 (and d!1715682 d!1715658)))

(assert (=> bs!1240465 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275020 lambda!275010))))

(assert (=> bs!1240462 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275020 lambda!274911))))

(assert (=> bs!1240461 (not (= lambda!275020 lambda!274915))))

(assert (=> bs!1240464 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275020 lambda!275015))))

(declare-fun bs!1240466 () Bool)

(assert (= bs!1240466 (and d!1715682 b!5350600)))

(assert (=> bs!1240466 (not (= lambda!275020 lambda!275019))))

(declare-fun bs!1240467 () Bool)

(assert (= bs!1240467 (and d!1715682 d!1715670)))

(assert (=> bs!1240467 (= lambda!275020 lambda!275017)))

(assert (=> d!1715682 true))

(assert (=> d!1715682 true))

(assert (=> d!1715682 true))

(declare-fun lambda!275021 () Int)

(assert (=> bs!1240459 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275021 lambda!274994))))

(assert (=> bs!1240460 (not (= lambda!275021 lambda!275018))))

(declare-fun bs!1240468 () Bool)

(assert (= bs!1240468 d!1715682))

(assert (=> bs!1240468 (not (= lambda!275021 lambda!275020))))

(assert (=> bs!1240461 (= lambda!275021 lambda!274917)))

(assert (=> bs!1240462 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275021 lambda!274912))))

(assert (=> bs!1240463 (not (= lambda!275021 lambda!274993))))

(assert (=> bs!1240464 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180800 (regTwo!30586 r!7292))) (= lambda!275021 lambda!275016))))

(assert (=> bs!1240461 (not (= lambda!275021 lambda!274914))))

(assert (=> bs!1240461 (not (= lambda!275021 lambda!274916))))

(assert (=> bs!1240465 (not (= lambda!275021 lambda!275010))))

(assert (=> bs!1240462 (not (= lambda!275021 lambda!274911))))

(assert (=> bs!1240461 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 (regOne!30586 r!7292))) (= lt!2180800 lt!2180826)) (= lambda!275021 lambda!274915))))

(assert (=> bs!1240464 (not (= lambda!275021 lambda!275015))))

(assert (=> bs!1240466 (= (and (= (regTwo!30586 (regOne!30586 r!7292)) (regOne!30586 lt!2180826)) (= lt!2180800 (regTwo!30586 lt!2180826))) (= lambda!275021 lambda!275019))))

(assert (=> bs!1240467 (not (= lambda!275021 lambda!275017))))

(assert (=> d!1715682 true))

(assert (=> d!1715682 true))

(assert (=> d!1715682 true))

(assert (=> d!1715682 (= (Exists!2218 lambda!275020) (Exists!2218 lambda!275021))))

(declare-fun lt!2181008 () Unit!153666)

(assert (=> d!1715682 (= lt!2181008 (choose!40148 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326))))

(assert (=> d!1715682 (validRegex!6773 (regTwo!30586 (regOne!30586 r!7292)))))

(assert (=> d!1715682 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!872 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 s!2326) lt!2181008)))

(declare-fun m!6381766 () Bool)

(assert (=> bs!1240468 m!6381766))

(declare-fun m!6381768 () Bool)

(assert (=> bs!1240468 m!6381768))

(declare-fun m!6381770 () Bool)

(assert (=> bs!1240468 m!6381770))

(assert (=> bs!1240468 m!6381444))

(assert (=> b!5349584 d!1715682))

(declare-fun bs!1240469 () Bool)

(declare-fun d!1715684 () Bool)

(assert (= bs!1240469 (and d!1715684 b!5350608)))

(declare-fun lambda!275022 () Int)

(assert (=> bs!1240469 (not (= lambda!275022 lambda!275018))))

(declare-fun bs!1240470 () Bool)

(assert (= bs!1240470 (and d!1715684 d!1715682)))

(assert (=> bs!1240470 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275022 lambda!275020))))

(declare-fun bs!1240471 () Bool)

(assert (= bs!1240471 (and d!1715684 b!5349584)))

(assert (=> bs!1240471 (not (= lambda!275022 lambda!274917))))

(declare-fun bs!1240472 () Bool)

(assert (= bs!1240472 (and d!1715684 b!5349581)))

(assert (=> bs!1240472 (not (= lambda!275022 lambda!274912))))

(declare-fun bs!1240473 () Bool)

(assert (= bs!1240473 (and d!1715684 b!5350420)))

(assert (=> bs!1240473 (not (= lambda!275022 lambda!274993))))

(declare-fun bs!1240474 () Bool)

(assert (= bs!1240474 (and d!1715684 d!1715660)))

(assert (=> bs!1240474 (not (= lambda!275022 lambda!275016))))

(assert (=> bs!1240471 (= lambda!275022 lambda!274914)))

(assert (=> bs!1240471 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275022 lambda!274916))))

(declare-fun bs!1240475 () Bool)

(assert (= bs!1240475 (and d!1715684 d!1715658)))

(assert (=> bs!1240475 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275022 lambda!275010))))

(assert (=> bs!1240472 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275022 lambda!274911))))

(assert (=> bs!1240471 (not (= lambda!275022 lambda!274915))))

(assert (=> bs!1240474 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275022 lambda!275015))))

(declare-fun bs!1240476 () Bool)

(assert (= bs!1240476 (and d!1715684 b!5350412)))

(assert (=> bs!1240476 (not (= lambda!275022 lambda!274994))))

(assert (=> bs!1240470 (not (= lambda!275022 lambda!275021))))

(declare-fun bs!1240477 () Bool)

(assert (= bs!1240477 (and d!1715684 b!5350600)))

(assert (=> bs!1240477 (not (= lambda!275022 lambda!275019))))

(declare-fun bs!1240478 () Bool)

(assert (= bs!1240478 (and d!1715684 d!1715670)))

(assert (=> bs!1240478 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275022 lambda!275017))))

(assert (=> d!1715684 true))

(assert (=> d!1715684 true))

(assert (=> d!1715684 true))

(assert (=> d!1715684 (= (isDefined!11851 (findConcatSeparation!1562 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 Nil!61286 s!2326 s!2326)) (Exists!2218 lambda!275022))))

(declare-fun lt!2181009 () Unit!153666)

(assert (=> d!1715684 (= lt!2181009 (choose!40147 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 s!2326))))

(assert (=> d!1715684 (validRegex!6773 (regOne!30586 (regOne!30586 r!7292)))))

(assert (=> d!1715684 (= (lemmaFindConcatSeparationEquivalentToExists!1326 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 s!2326) lt!2181009)))

(declare-fun bs!1240479 () Bool)

(assert (= bs!1240479 d!1715684))

(declare-fun m!6381772 () Bool)

(assert (=> bs!1240479 m!6381772))

(assert (=> bs!1240479 m!6380856))

(assert (=> bs!1240479 m!6380858))

(assert (=> bs!1240479 m!6380856))

(assert (=> bs!1240479 m!6381442))

(declare-fun m!6381774 () Bool)

(assert (=> bs!1240479 m!6381774))

(assert (=> b!5349584 d!1715684))

(declare-fun d!1715686 () Bool)

(assert (=> d!1715686 (= (Exists!2218 lambda!274916) (choose!40146 lambda!274916))))

(declare-fun bs!1240480 () Bool)

(assert (= bs!1240480 d!1715686))

(declare-fun m!6381776 () Bool)

(assert (=> bs!1240480 m!6381776))

(assert (=> b!5349584 d!1715686))

(declare-fun b!5350613 () Bool)

(declare-fun res!2270173 () Bool)

(declare-fun e!3321585 () Bool)

(assert (=> b!5350613 (=> (not res!2270173) (not e!3321585))))

(declare-fun lt!2181011 () Option!15148)

(assert (=> b!5350613 (= res!2270173 (matchR!7222 lt!2180826 (_2!35539 (get!21082 lt!2181011))))))

(declare-fun b!5350614 () Bool)

(declare-fun e!3321587 () Option!15148)

(declare-fun e!3321588 () Option!15148)

(assert (=> b!5350614 (= e!3321587 e!3321588)))

(declare-fun c!931524 () Bool)

(assert (=> b!5350614 (= c!931524 ((_ is Nil!61286) s!2326))))

(declare-fun b!5350615 () Bool)

(declare-fun lt!2181012 () Unit!153666)

(declare-fun lt!2181010 () Unit!153666)

(assert (=> b!5350615 (= lt!2181012 lt!2181010)))

(assert (=> b!5350615 (= (++!13358 (++!13358 Nil!61286 (Cons!61286 (h!67734 s!2326) Nil!61286)) (t!374627 s!2326)) s!2326)))

(assert (=> b!5350615 (= lt!2181010 (lemmaMoveElementToOtherListKeepsConcatEq!1773 Nil!61286 (h!67734 s!2326) (t!374627 s!2326) s!2326))))

(assert (=> b!5350615 (= e!3321588 (findConcatSeparation!1562 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 (++!13358 Nil!61286 (Cons!61286 (h!67734 s!2326) Nil!61286)) (t!374627 s!2326) s!2326))))

(declare-fun b!5350616 () Bool)

(declare-fun e!3321586 () Bool)

(assert (=> b!5350616 (= e!3321586 (matchR!7222 lt!2180826 s!2326))))

(declare-fun d!1715688 () Bool)

(declare-fun e!3321589 () Bool)

(assert (=> d!1715688 e!3321589))

(declare-fun res!2270172 () Bool)

(assert (=> d!1715688 (=> res!2270172 e!3321589)))

(assert (=> d!1715688 (= res!2270172 e!3321585)))

(declare-fun res!2270176 () Bool)

(assert (=> d!1715688 (=> (not res!2270176) (not e!3321585))))

(assert (=> d!1715688 (= res!2270176 (isDefined!11851 lt!2181011))))

(assert (=> d!1715688 (= lt!2181011 e!3321587)))

(declare-fun c!931523 () Bool)

(assert (=> d!1715688 (= c!931523 e!3321586)))

(declare-fun res!2270175 () Bool)

(assert (=> d!1715688 (=> (not res!2270175) (not e!3321586))))

(assert (=> d!1715688 (= res!2270175 (matchR!7222 (regOne!30586 (regOne!30586 r!7292)) Nil!61286))))

(assert (=> d!1715688 (validRegex!6773 (regOne!30586 (regOne!30586 r!7292)))))

(assert (=> d!1715688 (= (findConcatSeparation!1562 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 Nil!61286 s!2326 s!2326) lt!2181011)))

(declare-fun b!5350612 () Bool)

(assert (=> b!5350612 (= e!3321588 None!15147)))

(declare-fun b!5350617 () Bool)

(assert (=> b!5350617 (= e!3321589 (not (isDefined!11851 lt!2181011)))))

(declare-fun b!5350618 () Bool)

(declare-fun res!2270174 () Bool)

(assert (=> b!5350618 (=> (not res!2270174) (not e!3321585))))

(assert (=> b!5350618 (= res!2270174 (matchR!7222 (regOne!30586 (regOne!30586 r!7292)) (_1!35539 (get!21082 lt!2181011))))))

(declare-fun b!5350619 () Bool)

(assert (=> b!5350619 (= e!3321587 (Some!15147 (tuple2!64473 Nil!61286 s!2326)))))

(declare-fun b!5350620 () Bool)

(assert (=> b!5350620 (= e!3321585 (= (++!13358 (_1!35539 (get!21082 lt!2181011)) (_2!35539 (get!21082 lt!2181011))) s!2326))))

(assert (= (and d!1715688 res!2270175) b!5350616))

(assert (= (and d!1715688 c!931523) b!5350619))

(assert (= (and d!1715688 (not c!931523)) b!5350614))

(assert (= (and b!5350614 c!931524) b!5350612))

(assert (= (and b!5350614 (not c!931524)) b!5350615))

(assert (= (and d!1715688 res!2270176) b!5350618))

(assert (= (and b!5350618 res!2270174) b!5350613))

(assert (= (and b!5350613 res!2270173) b!5350620))

(assert (= (and d!1715688 (not res!2270172)) b!5350617))

(declare-fun m!6381778 () Bool)

(assert (=> b!5350618 m!6381778))

(declare-fun m!6381780 () Bool)

(assert (=> b!5350618 m!6381780))

(assert (=> b!5350613 m!6381778))

(declare-fun m!6381782 () Bool)

(assert (=> b!5350613 m!6381782))

(declare-fun m!6381784 () Bool)

(assert (=> d!1715688 m!6381784))

(declare-fun m!6381786 () Bool)

(assert (=> d!1715688 m!6381786))

(assert (=> d!1715688 m!6381442))

(assert (=> b!5350616 m!6380842))

(assert (=> b!5350615 m!6381688))

(assert (=> b!5350615 m!6381688))

(assert (=> b!5350615 m!6381690))

(assert (=> b!5350615 m!6381692))

(assert (=> b!5350615 m!6381688))

(declare-fun m!6381788 () Bool)

(assert (=> b!5350615 m!6381788))

(assert (=> b!5350620 m!6381778))

(declare-fun m!6381790 () Bool)

(assert (=> b!5350620 m!6381790))

(assert (=> b!5350617 m!6381784))

(assert (=> b!5349584 d!1715688))

(declare-fun b!5350621 () Bool)

(declare-fun res!2270179 () Bool)

(declare-fun e!3321592 () Bool)

(assert (=> b!5350621 (=> (not res!2270179) (not e!3321592))))

(assert (=> b!5350621 (= res!2270179 (isEmpty!33266 (tail!10571 s!2326)))))

(declare-fun b!5350622 () Bool)

(declare-fun e!3321590 () Bool)

(declare-fun lt!2181013 () Bool)

(assert (=> b!5350622 (= e!3321590 (not lt!2181013))))

(declare-fun b!5350623 () Bool)

(declare-fun e!3321595 () Bool)

(declare-fun e!3321591 () Bool)

(assert (=> b!5350623 (= e!3321595 e!3321591)))

(declare-fun res!2270180 () Bool)

(assert (=> b!5350623 (=> (not res!2270180) (not e!3321591))))

(assert (=> b!5350623 (= res!2270180 (not lt!2181013))))

(declare-fun d!1715690 () Bool)

(declare-fun e!3321594 () Bool)

(assert (=> d!1715690 e!3321594))

(declare-fun c!931527 () Bool)

(assert (=> d!1715690 (= c!931527 ((_ is EmptyExpr!15037) lt!2180826))))

(declare-fun e!3321596 () Bool)

(assert (=> d!1715690 (= lt!2181013 e!3321596)))

(declare-fun c!931526 () Bool)

(assert (=> d!1715690 (= c!931526 (isEmpty!33266 s!2326))))

(assert (=> d!1715690 (validRegex!6773 lt!2180826)))

(assert (=> d!1715690 (= (matchR!7222 lt!2180826 s!2326) lt!2181013)))

(declare-fun b!5350624 () Bool)

(declare-fun res!2270183 () Bool)

(declare-fun e!3321593 () Bool)

(assert (=> b!5350624 (=> res!2270183 e!3321593)))

(assert (=> b!5350624 (= res!2270183 (not (isEmpty!33266 (tail!10571 s!2326))))))

(declare-fun b!5350625 () Bool)

(assert (=> b!5350625 (= e!3321592 (= (head!11474 s!2326) (c!931215 lt!2180826)))))

(declare-fun b!5350626 () Bool)

(declare-fun res!2270181 () Bool)

(assert (=> b!5350626 (=> res!2270181 e!3321595)))

(assert (=> b!5350626 (= res!2270181 (not ((_ is ElementMatch!15037) lt!2180826)))))

(assert (=> b!5350626 (= e!3321590 e!3321595)))

(declare-fun b!5350627 () Bool)

(assert (=> b!5350627 (= e!3321591 e!3321593)))

(declare-fun res!2270178 () Bool)

(assert (=> b!5350627 (=> res!2270178 e!3321593)))

(declare-fun call!382515 () Bool)

(assert (=> b!5350627 (= res!2270178 call!382515)))

(declare-fun b!5350628 () Bool)

(declare-fun res!2270182 () Bool)

(assert (=> b!5350628 (=> res!2270182 e!3321595)))

(assert (=> b!5350628 (= res!2270182 e!3321592)))

(declare-fun res!2270177 () Bool)

(assert (=> b!5350628 (=> (not res!2270177) (not e!3321592))))

(assert (=> b!5350628 (= res!2270177 lt!2181013)))

(declare-fun b!5350629 () Bool)

(assert (=> b!5350629 (= e!3321596 (matchR!7222 (derivativeStep!4199 lt!2180826 (head!11474 s!2326)) (tail!10571 s!2326)))))

(declare-fun bm!382510 () Bool)

(assert (=> bm!382510 (= call!382515 (isEmpty!33266 s!2326))))

(declare-fun b!5350630 () Bool)

(assert (=> b!5350630 (= e!3321594 (= lt!2181013 call!382515))))

(declare-fun b!5350631 () Bool)

(assert (=> b!5350631 (= e!3321596 (nullable!5206 lt!2180826))))

(declare-fun b!5350632 () Bool)

(declare-fun res!2270184 () Bool)

(assert (=> b!5350632 (=> (not res!2270184) (not e!3321592))))

(assert (=> b!5350632 (= res!2270184 (not call!382515))))

(declare-fun b!5350633 () Bool)

(assert (=> b!5350633 (= e!3321594 e!3321590)))

(declare-fun c!931525 () Bool)

(assert (=> b!5350633 (= c!931525 ((_ is EmptyLang!15037) lt!2180826))))

(declare-fun b!5350634 () Bool)

(assert (=> b!5350634 (= e!3321593 (not (= (head!11474 s!2326) (c!931215 lt!2180826))))))

(assert (= (and d!1715690 c!931526) b!5350631))

(assert (= (and d!1715690 (not c!931526)) b!5350629))

(assert (= (and d!1715690 c!931527) b!5350630))

(assert (= (and d!1715690 (not c!931527)) b!5350633))

(assert (= (and b!5350633 c!931525) b!5350622))

(assert (= (and b!5350633 (not c!931525)) b!5350626))

(assert (= (and b!5350626 (not res!2270181)) b!5350628))

(assert (= (and b!5350628 res!2270177) b!5350632))

(assert (= (and b!5350632 res!2270184) b!5350621))

(assert (= (and b!5350621 res!2270179) b!5350625))

(assert (= (and b!5350628 (not res!2270182)) b!5350623))

(assert (= (and b!5350623 res!2270180) b!5350627))

(assert (= (and b!5350627 (not res!2270178)) b!5350624))

(assert (= (and b!5350624 (not res!2270183)) b!5350634))

(assert (= (or b!5350630 b!5350632 b!5350627) bm!382510))

(assert (=> b!5350621 m!6381392))

(assert (=> b!5350621 m!6381392))

(assert (=> b!5350621 m!6381394))

(assert (=> bm!382510 m!6381396))

(assert (=> b!5350624 m!6381392))

(assert (=> b!5350624 m!6381392))

(assert (=> b!5350624 m!6381394))

(declare-fun m!6381792 () Bool)

(assert (=> b!5350631 m!6381792))

(assert (=> d!1715690 m!6381396))

(declare-fun m!6381794 () Bool)

(assert (=> d!1715690 m!6381794))

(assert (=> b!5350629 m!6381400))

(assert (=> b!5350629 m!6381400))

(declare-fun m!6381796 () Bool)

(assert (=> b!5350629 m!6381796))

(assert (=> b!5350629 m!6381392))

(assert (=> b!5350629 m!6381796))

(assert (=> b!5350629 m!6381392))

(declare-fun m!6381798 () Bool)

(assert (=> b!5350629 m!6381798))

(assert (=> b!5350634 m!6381400))

(assert (=> b!5350625 m!6381400))

(assert (=> b!5349584 d!1715690))

(declare-fun d!1715692 () Bool)

(declare-fun c!931528 () Bool)

(assert (=> d!1715692 (= c!931528 (isEmpty!33266 s!2326))))

(declare-fun e!3321597 () Bool)

(assert (=> d!1715692 (= (matchZipper!1281 lt!2180808 s!2326) e!3321597)))

(declare-fun b!5350635 () Bool)

(assert (=> b!5350635 (= e!3321597 (nullableZipper!1378 lt!2180808))))

(declare-fun b!5350636 () Bool)

(assert (=> b!5350636 (= e!3321597 (matchZipper!1281 (derivationStepZipper!1278 lt!2180808 (head!11474 s!2326)) (tail!10571 s!2326)))))

(assert (= (and d!1715692 c!931528) b!5350635))

(assert (= (and d!1715692 (not c!931528)) b!5350636))

(assert (=> d!1715692 m!6381396))

(declare-fun m!6381800 () Bool)

(assert (=> b!5350635 m!6381800))

(assert (=> b!5350636 m!6381400))

(assert (=> b!5350636 m!6381400))

(declare-fun m!6381802 () Bool)

(assert (=> b!5350636 m!6381802))

(assert (=> b!5350636 m!6381392))

(assert (=> b!5350636 m!6381802))

(assert (=> b!5350636 m!6381392))

(declare-fun m!6381804 () Bool)

(assert (=> b!5350636 m!6381804))

(assert (=> b!5349584 d!1715692))

(declare-fun d!1715694 () Bool)

(assert (=> d!1715694 (= (matchR!7222 lt!2180826 s!2326) (matchRSpec!2140 lt!2180826 s!2326))))

(declare-fun lt!2181014 () Unit!153666)

(assert (=> d!1715694 (= lt!2181014 (choose!40142 lt!2180826 s!2326))))

(assert (=> d!1715694 (validRegex!6773 lt!2180826)))

(assert (=> d!1715694 (= (mainMatchTheorem!2140 lt!2180826 s!2326) lt!2181014)))

(declare-fun bs!1240481 () Bool)

(assert (= bs!1240481 d!1715694))

(assert (=> bs!1240481 m!6380842))

(assert (=> bs!1240481 m!6380884))

(declare-fun m!6381806 () Bool)

(assert (=> bs!1240481 m!6381806))

(assert (=> bs!1240481 m!6381794))

(assert (=> b!5349584 d!1715694))

(declare-fun d!1715696 () Bool)

(assert (=> d!1715696 (= (Exists!2218 lambda!274917) (choose!40146 lambda!274917))))

(declare-fun bs!1240482 () Bool)

(assert (= bs!1240482 d!1715696))

(declare-fun m!6381808 () Bool)

(assert (=> bs!1240482 m!6381808))

(assert (=> b!5349584 d!1715696))

(declare-fun bs!1240483 () Bool)

(declare-fun d!1715698 () Bool)

(assert (= bs!1240483 (and d!1715698 d!1715630)))

(declare-fun lambda!275023 () Int)

(assert (=> bs!1240483 (= lambda!275023 lambda!275004)))

(declare-fun bs!1240484 () Bool)

(assert (= bs!1240484 (and d!1715698 d!1715620)))

(assert (=> bs!1240484 (= lambda!275023 lambda!275000)))

(declare-fun bs!1240485 () Bool)

(assert (= bs!1240485 (and d!1715698 d!1715524)))

(assert (=> bs!1240485 (= lambda!275023 lambda!274962)))

(declare-fun bs!1240486 () Bool)

(assert (= bs!1240486 (and d!1715698 d!1715618)))

(assert (=> bs!1240486 (= lambda!275023 lambda!274997)))

(declare-fun bs!1240487 () Bool)

(assert (= bs!1240487 (and d!1715698 d!1715628)))

(assert (=> bs!1240487 (= lambda!275023 lambda!275001)))

(declare-fun b!5350637 () Bool)

(declare-fun e!3321602 () Bool)

(declare-fun lt!2181015 () Regex!15037)

(assert (=> b!5350637 (= e!3321602 (= lt!2181015 (head!11475 (t!374628 (exprs!4921 (h!67736 zl!343))))))))

(declare-fun b!5350638 () Bool)

(declare-fun e!3321600 () Bool)

(declare-fun e!3321603 () Bool)

(assert (=> b!5350638 (= e!3321600 e!3321603)))

(declare-fun c!931532 () Bool)

(assert (=> b!5350638 (= c!931532 (isEmpty!33264 (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350639 () Bool)

(assert (=> b!5350639 (= e!3321602 (isConcat!436 lt!2181015))))

(declare-fun b!5350640 () Bool)

(declare-fun e!3321599 () Bool)

(assert (=> b!5350640 (= e!3321599 (isEmpty!33264 (t!374628 (t!374628 (exprs!4921 (h!67736 zl!343))))))))

(declare-fun b!5350641 () Bool)

(assert (=> b!5350641 (= e!3321603 (isEmptyExpr!913 lt!2181015))))

(assert (=> d!1715698 e!3321600))

(declare-fun res!2270186 () Bool)

(assert (=> d!1715698 (=> (not res!2270186) (not e!3321600))))

(assert (=> d!1715698 (= res!2270186 (validRegex!6773 lt!2181015))))

(declare-fun e!3321598 () Regex!15037)

(assert (=> d!1715698 (= lt!2181015 e!3321598)))

(declare-fun c!931529 () Bool)

(assert (=> d!1715698 (= c!931529 e!3321599)))

(declare-fun res!2270185 () Bool)

(assert (=> d!1715698 (=> (not res!2270185) (not e!3321599))))

(assert (=> d!1715698 (= res!2270185 ((_ is Cons!61287) (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(assert (=> d!1715698 (forall!14464 (t!374628 (exprs!4921 (h!67736 zl!343))) lambda!275023)))

(assert (=> d!1715698 (= (generalisedConcat!706 (t!374628 (exprs!4921 (h!67736 zl!343)))) lt!2181015)))

(declare-fun b!5350642 () Bool)

(assert (=> b!5350642 (= e!3321598 (h!67735 (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(declare-fun b!5350643 () Bool)

(declare-fun e!3321601 () Regex!15037)

(assert (=> b!5350643 (= e!3321601 (Concat!23882 (h!67735 (t!374628 (exprs!4921 (h!67736 zl!343)))) (generalisedConcat!706 (t!374628 (t!374628 (exprs!4921 (h!67736 zl!343)))))))))

(declare-fun b!5350644 () Bool)

(assert (=> b!5350644 (= e!3321603 e!3321602)))

(declare-fun c!931530 () Bool)

(assert (=> b!5350644 (= c!931530 (isEmpty!33264 (tail!10572 (t!374628 (exprs!4921 (h!67736 zl!343))))))))

(declare-fun b!5350645 () Bool)

(assert (=> b!5350645 (= e!3321601 EmptyExpr!15037)))

(declare-fun b!5350646 () Bool)

(assert (=> b!5350646 (= e!3321598 e!3321601)))

(declare-fun c!931531 () Bool)

(assert (=> b!5350646 (= c!931531 ((_ is Cons!61287) (t!374628 (exprs!4921 (h!67736 zl!343)))))))

(assert (= (and d!1715698 res!2270185) b!5350640))

(assert (= (and d!1715698 c!931529) b!5350642))

(assert (= (and d!1715698 (not c!931529)) b!5350646))

(assert (= (and b!5350646 c!931531) b!5350643))

(assert (= (and b!5350646 (not c!931531)) b!5350645))

(assert (= (and d!1715698 res!2270186) b!5350638))

(assert (= (and b!5350638 c!931532) b!5350641))

(assert (= (and b!5350638 (not c!931532)) b!5350644))

(assert (= (and b!5350644 c!931530) b!5350637))

(assert (= (and b!5350644 (not c!931530)) b!5350639))

(declare-fun m!6381810 () Bool)

(assert (=> b!5350640 m!6381810))

(declare-fun m!6381812 () Bool)

(assert (=> b!5350637 m!6381812))

(declare-fun m!6381814 () Bool)

(assert (=> b!5350641 m!6381814))

(declare-fun m!6381816 () Bool)

(assert (=> b!5350643 m!6381816))

(assert (=> b!5350638 m!6380816))

(declare-fun m!6381818 () Bool)

(assert (=> b!5350644 m!6381818))

(assert (=> b!5350644 m!6381818))

(declare-fun m!6381820 () Bool)

(assert (=> b!5350644 m!6381820))

(declare-fun m!6381822 () Bool)

(assert (=> d!1715698 m!6381822))

(declare-fun m!6381824 () Bool)

(assert (=> d!1715698 m!6381824))

(declare-fun m!6381826 () Bool)

(assert (=> b!5350639 m!6381826))

(assert (=> b!5349584 d!1715698))

(declare-fun d!1715700 () Bool)

(assert (=> d!1715700 (= (isDefined!11851 (findConcatSeparation!1562 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 Nil!61286 s!2326 s!2326)) (not (isEmpty!33268 (findConcatSeparation!1562 (regTwo!30586 (regOne!30586 r!7292)) lt!2180800 Nil!61286 s!2326 s!2326))))))

(declare-fun bs!1240488 () Bool)

(assert (= bs!1240488 d!1715700))

(assert (=> bs!1240488 m!6380852))

(declare-fun m!6381828 () Bool)

(assert (=> bs!1240488 m!6381828))

(assert (=> b!5349584 d!1715700))

(declare-fun bs!1240489 () Bool)

(declare-fun d!1715702 () Bool)

(assert (= bs!1240489 (and d!1715702 d!1715698)))

(declare-fun lambda!275024 () Int)

(assert (=> bs!1240489 (= lambda!275024 lambda!275023)))

(declare-fun bs!1240490 () Bool)

(assert (= bs!1240490 (and d!1715702 d!1715630)))

(assert (=> bs!1240490 (= lambda!275024 lambda!275004)))

(declare-fun bs!1240491 () Bool)

(assert (= bs!1240491 (and d!1715702 d!1715620)))

(assert (=> bs!1240491 (= lambda!275024 lambda!275000)))

(declare-fun bs!1240492 () Bool)

(assert (= bs!1240492 (and d!1715702 d!1715524)))

(assert (=> bs!1240492 (= lambda!275024 lambda!274962)))

(declare-fun bs!1240493 () Bool)

(assert (= bs!1240493 (and d!1715702 d!1715618)))

(assert (=> bs!1240493 (= lambda!275024 lambda!274997)))

(declare-fun bs!1240494 () Bool)

(assert (= bs!1240494 (and d!1715702 d!1715628)))

(assert (=> bs!1240494 (= lambda!275024 lambda!275001)))

(declare-fun b!5350647 () Bool)

(declare-fun e!3321608 () Bool)

(declare-fun lt!2181016 () Regex!15037)

(assert (=> b!5350647 (= e!3321608 (= lt!2181016 (head!11475 lt!2180797)))))

(declare-fun b!5350648 () Bool)

(declare-fun e!3321606 () Bool)

(declare-fun e!3321609 () Bool)

(assert (=> b!5350648 (= e!3321606 e!3321609)))

(declare-fun c!931536 () Bool)

(assert (=> b!5350648 (= c!931536 (isEmpty!33264 lt!2180797))))

(declare-fun b!5350649 () Bool)

(assert (=> b!5350649 (= e!3321608 (isConcat!436 lt!2181016))))

(declare-fun b!5350650 () Bool)

(declare-fun e!3321605 () Bool)

(assert (=> b!5350650 (= e!3321605 (isEmpty!33264 (t!374628 lt!2180797)))))

(declare-fun b!5350651 () Bool)

(assert (=> b!5350651 (= e!3321609 (isEmptyExpr!913 lt!2181016))))

(assert (=> d!1715702 e!3321606))

(declare-fun res!2270188 () Bool)

(assert (=> d!1715702 (=> (not res!2270188) (not e!3321606))))

(assert (=> d!1715702 (= res!2270188 (validRegex!6773 lt!2181016))))

(declare-fun e!3321604 () Regex!15037)

(assert (=> d!1715702 (= lt!2181016 e!3321604)))

(declare-fun c!931533 () Bool)

(assert (=> d!1715702 (= c!931533 e!3321605)))

(declare-fun res!2270187 () Bool)

(assert (=> d!1715702 (=> (not res!2270187) (not e!3321605))))

(assert (=> d!1715702 (= res!2270187 ((_ is Cons!61287) lt!2180797))))

(assert (=> d!1715702 (forall!14464 lt!2180797 lambda!275024)))

(assert (=> d!1715702 (= (generalisedConcat!706 lt!2180797) lt!2181016)))

(declare-fun b!5350652 () Bool)

(assert (=> b!5350652 (= e!3321604 (h!67735 lt!2180797))))

(declare-fun b!5350653 () Bool)

(declare-fun e!3321607 () Regex!15037)

(assert (=> b!5350653 (= e!3321607 (Concat!23882 (h!67735 lt!2180797) (generalisedConcat!706 (t!374628 lt!2180797))))))

(declare-fun b!5350654 () Bool)

(assert (=> b!5350654 (= e!3321609 e!3321608)))

(declare-fun c!931534 () Bool)

(assert (=> b!5350654 (= c!931534 (isEmpty!33264 (tail!10572 lt!2180797)))))

(declare-fun b!5350655 () Bool)

(assert (=> b!5350655 (= e!3321607 EmptyExpr!15037)))

(declare-fun b!5350656 () Bool)

(assert (=> b!5350656 (= e!3321604 e!3321607)))

(declare-fun c!931535 () Bool)

(assert (=> b!5350656 (= c!931535 ((_ is Cons!61287) lt!2180797))))

(assert (= (and d!1715702 res!2270187) b!5350650))

(assert (= (and d!1715702 c!931533) b!5350652))

(assert (= (and d!1715702 (not c!931533)) b!5350656))

(assert (= (and b!5350656 c!931535) b!5350653))

(assert (= (and b!5350656 (not c!931535)) b!5350655))

(assert (= (and d!1715702 res!2270188) b!5350648))

(assert (= (and b!5350648 c!931536) b!5350651))

(assert (= (and b!5350648 (not c!931536)) b!5350654))

(assert (= (and b!5350654 c!931534) b!5350647))

(assert (= (and b!5350654 (not c!931534)) b!5350649))

(declare-fun m!6381830 () Bool)

(assert (=> b!5350650 m!6381830))

(declare-fun m!6381832 () Bool)

(assert (=> b!5350647 m!6381832))

(declare-fun m!6381834 () Bool)

(assert (=> b!5350651 m!6381834))

(declare-fun m!6381836 () Bool)

(assert (=> b!5350653 m!6381836))

(declare-fun m!6381838 () Bool)

(assert (=> b!5350648 m!6381838))

(declare-fun m!6381840 () Bool)

(assert (=> b!5350654 m!6381840))

(assert (=> b!5350654 m!6381840))

(declare-fun m!6381842 () Bool)

(assert (=> b!5350654 m!6381842))

(declare-fun m!6381844 () Bool)

(assert (=> d!1715702 m!6381844))

(declare-fun m!6381846 () Bool)

(assert (=> d!1715702 m!6381846))

(declare-fun m!6381848 () Bool)

(assert (=> b!5350649 m!6381848))

(assert (=> b!5349584 d!1715702))

(declare-fun bs!1240495 () Bool)

(declare-fun d!1715704 () Bool)

(assert (= bs!1240495 (and d!1715704 b!5350608)))

(declare-fun lambda!275025 () Int)

(assert (=> bs!1240495 (not (= lambda!275025 lambda!275018))))

(declare-fun bs!1240496 () Bool)

(assert (= bs!1240496 (and d!1715704 d!1715682)))

(assert (=> bs!1240496 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275025 lambda!275020))))

(declare-fun bs!1240497 () Bool)

(assert (= bs!1240497 (and d!1715704 b!5349584)))

(assert (=> bs!1240497 (not (= lambda!275025 lambda!274917))))

(declare-fun bs!1240498 () Bool)

(assert (= bs!1240498 (and d!1715704 b!5349581)))

(assert (=> bs!1240498 (not (= lambda!275025 lambda!274912))))

(declare-fun bs!1240499 () Bool)

(assert (= bs!1240499 (and d!1715704 b!5350420)))

(assert (=> bs!1240499 (not (= lambda!275025 lambda!274993))))

(declare-fun bs!1240500 () Bool)

(assert (= bs!1240500 (and d!1715704 d!1715660)))

(assert (=> bs!1240500 (not (= lambda!275025 lambda!275016))))

(declare-fun bs!1240501 () Bool)

(assert (= bs!1240501 (and d!1715704 d!1715684)))

(assert (=> bs!1240501 (= lambda!275025 lambda!275022)))

(assert (=> bs!1240497 (= lambda!275025 lambda!274914)))

(assert (=> bs!1240497 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275025 lambda!274916))))

(declare-fun bs!1240502 () Bool)

(assert (= bs!1240502 (and d!1715704 d!1715658)))

(assert (=> bs!1240502 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275025 lambda!275010))))

(assert (=> bs!1240498 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275025 lambda!274911))))

(assert (=> bs!1240497 (not (= lambda!275025 lambda!274915))))

(assert (=> bs!1240500 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275025 lambda!275015))))

(declare-fun bs!1240503 () Bool)

(assert (= bs!1240503 (and d!1715704 b!5350412)))

(assert (=> bs!1240503 (not (= lambda!275025 lambda!274994))))

(assert (=> bs!1240496 (not (= lambda!275025 lambda!275021))))

(declare-fun bs!1240504 () Bool)

(assert (= bs!1240504 (and d!1715704 b!5350600)))

(assert (=> bs!1240504 (not (= lambda!275025 lambda!275019))))

(declare-fun bs!1240505 () Bool)

(assert (= bs!1240505 (and d!1715704 d!1715670)))

(assert (=> bs!1240505 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275025 lambda!275017))))

(assert (=> d!1715704 true))

(assert (=> d!1715704 true))

(assert (=> d!1715704 true))

(declare-fun lambda!275026 () Int)

(assert (=> bs!1240495 (not (= lambda!275026 lambda!275018))))

(assert (=> bs!1240496 (not (= lambda!275026 lambda!275020))))

(assert (=> bs!1240497 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275026 lambda!274917))))

(assert (=> bs!1240498 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275026 lambda!274912))))

(assert (=> bs!1240499 (not (= lambda!275026 lambda!274993))))

(assert (=> bs!1240500 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275026 lambda!275016))))

(assert (=> bs!1240501 (not (= lambda!275026 lambda!275022))))

(assert (=> bs!1240497 (not (= lambda!275026 lambda!274914))))

(assert (=> bs!1240497 (not (= lambda!275026 lambda!274916))))

(assert (=> bs!1240502 (not (= lambda!275026 lambda!275010))))

(assert (=> bs!1240498 (not (= lambda!275026 lambda!274911))))

(assert (=> bs!1240500 (not (= lambda!275026 lambda!275015))))

(assert (=> bs!1240503 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 r!7292)) (= lt!2180826 (regTwo!30586 r!7292))) (= lambda!275026 lambda!274994))))

(assert (=> bs!1240496 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regTwo!30586 (regOne!30586 r!7292))) (= lt!2180826 lt!2180800)) (= lambda!275026 lambda!275021))))

(assert (=> bs!1240497 (= lambda!275026 lambda!274915)))

(declare-fun bs!1240506 () Bool)

(assert (= bs!1240506 d!1715704))

(assert (=> bs!1240506 (not (= lambda!275026 lambda!275025))))

(assert (=> bs!1240504 (= (and (= (regOne!30586 (regOne!30586 r!7292)) (regOne!30586 lt!2180826)) (= lt!2180826 (regTwo!30586 lt!2180826))) (= lambda!275026 lambda!275019))))

(assert (=> bs!1240505 (not (= lambda!275026 lambda!275017))))

(assert (=> d!1715704 true))

(assert (=> d!1715704 true))

(assert (=> d!1715704 true))

(assert (=> d!1715704 (= (Exists!2218 lambda!275025) (Exists!2218 lambda!275026))))

(declare-fun lt!2181017 () Unit!153666)

(assert (=> d!1715704 (= lt!2181017 (choose!40148 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 s!2326))))

(assert (=> d!1715704 (validRegex!6773 (regOne!30586 (regOne!30586 r!7292)))))

(assert (=> d!1715704 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!872 (regOne!30586 (regOne!30586 r!7292)) lt!2180826 s!2326) lt!2181017)))

(declare-fun m!6381850 () Bool)

(assert (=> bs!1240506 m!6381850))

(declare-fun m!6381852 () Bool)

(assert (=> bs!1240506 m!6381852))

(declare-fun m!6381854 () Bool)

(assert (=> bs!1240506 m!6381854))

(assert (=> bs!1240506 m!6381442))

(assert (=> b!5349584 d!1715704))

(declare-fun b!5350657 () Bool)

(declare-fun res!2270191 () Bool)

(declare-fun e!3321612 () Bool)

(assert (=> b!5350657 (=> (not res!2270191) (not e!3321612))))

(assert (=> b!5350657 (= res!2270191 (isEmpty!33266 (tail!10571 s!2326)))))

(declare-fun b!5350658 () Bool)

(declare-fun e!3321610 () Bool)

(declare-fun lt!2181018 () Bool)

(assert (=> b!5350658 (= e!3321610 (not lt!2181018))))

(declare-fun b!5350659 () Bool)

(declare-fun e!3321615 () Bool)

(declare-fun e!3321611 () Bool)

(assert (=> b!5350659 (= e!3321615 e!3321611)))

(declare-fun res!2270192 () Bool)

(assert (=> b!5350659 (=> (not res!2270192) (not e!3321611))))

(assert (=> b!5350659 (= res!2270192 (not lt!2181018))))

(declare-fun d!1715706 () Bool)

(declare-fun e!3321614 () Bool)

(assert (=> d!1715706 e!3321614))

(declare-fun c!931539 () Bool)

(assert (=> d!1715706 (= c!931539 ((_ is EmptyExpr!15037) lt!2180802))))

(declare-fun e!3321616 () Bool)

(assert (=> d!1715706 (= lt!2181018 e!3321616)))

(declare-fun c!931538 () Bool)

(assert (=> d!1715706 (= c!931538 (isEmpty!33266 s!2326))))

(assert (=> d!1715706 (validRegex!6773 lt!2180802)))

(assert (=> d!1715706 (= (matchR!7222 lt!2180802 s!2326) lt!2181018)))

(declare-fun b!5350660 () Bool)

(declare-fun res!2270195 () Bool)

(declare-fun e!3321613 () Bool)

(assert (=> b!5350660 (=> res!2270195 e!3321613)))

(assert (=> b!5350660 (= res!2270195 (not (isEmpty!33266 (tail!10571 s!2326))))))

(declare-fun b!5350661 () Bool)

(assert (=> b!5350661 (= e!3321612 (= (head!11474 s!2326) (c!931215 lt!2180802)))))

(declare-fun b!5350662 () Bool)

(declare-fun res!2270193 () Bool)

(assert (=> b!5350662 (=> res!2270193 e!3321615)))

(assert (=> b!5350662 (= res!2270193 (not ((_ is ElementMatch!15037) lt!2180802)))))

(assert (=> b!5350662 (= e!3321610 e!3321615)))

(declare-fun b!5350663 () Bool)

(assert (=> b!5350663 (= e!3321611 e!3321613)))

(declare-fun res!2270190 () Bool)

(assert (=> b!5350663 (=> res!2270190 e!3321613)))

(declare-fun call!382516 () Bool)

(assert (=> b!5350663 (= res!2270190 call!382516)))

(declare-fun b!5350664 () Bool)

(declare-fun res!2270194 () Bool)

(assert (=> b!5350664 (=> res!2270194 e!3321615)))

(assert (=> b!5350664 (= res!2270194 e!3321612)))

(declare-fun res!2270189 () Bool)

(assert (=> b!5350664 (=> (not res!2270189) (not e!3321612))))

(assert (=> b!5350664 (= res!2270189 lt!2181018)))

(declare-fun b!5350665 () Bool)

(assert (=> b!5350665 (= e!3321616 (matchR!7222 (derivativeStep!4199 lt!2180802 (head!11474 s!2326)) (tail!10571 s!2326)))))

(declare-fun bm!382511 () Bool)

(assert (=> bm!382511 (= call!382516 (isEmpty!33266 s!2326))))

(declare-fun b!5350666 () Bool)

(assert (=> b!5350666 (= e!3321614 (= lt!2181018 call!382516))))

(declare-fun b!5350667 () Bool)

(assert (=> b!5350667 (= e!3321616 (nullable!5206 lt!2180802))))

(declare-fun b!5350668 () Bool)

(declare-fun res!2270196 () Bool)

(assert (=> b!5350668 (=> (not res!2270196) (not e!3321612))))

(assert (=> b!5350668 (= res!2270196 (not call!382516))))

(declare-fun b!5350669 () Bool)

(assert (=> b!5350669 (= e!3321614 e!3321610)))

(declare-fun c!931537 () Bool)

(assert (=> b!5350669 (= c!931537 ((_ is EmptyLang!15037) lt!2180802))))

(declare-fun b!5350670 () Bool)

(assert (=> b!5350670 (= e!3321613 (not (= (head!11474 s!2326) (c!931215 lt!2180802))))))

(assert (= (and d!1715706 c!931538) b!5350667))

(assert (= (and d!1715706 (not c!931538)) b!5350665))

(assert (= (and d!1715706 c!931539) b!5350666))

(assert (= (and d!1715706 (not c!931539)) b!5350669))

(assert (= (and b!5350669 c!931537) b!5350658))

(assert (= (and b!5350669 (not c!931537)) b!5350662))

(assert (= (and b!5350662 (not res!2270193)) b!5350664))

(assert (= (and b!5350664 res!2270189) b!5350668))

(assert (= (and b!5350668 res!2270196) b!5350657))

(assert (= (and b!5350657 res!2270191) b!5350661))

(assert (= (and b!5350664 (not res!2270194)) b!5350659))

(assert (= (and b!5350659 res!2270192) b!5350663))

(assert (= (and b!5350663 (not res!2270190)) b!5350660))

(assert (= (and b!5350660 (not res!2270195)) b!5350670))

(assert (= (or b!5350666 b!5350668 b!5350663) bm!382511))

(assert (=> b!5350657 m!6381392))

(assert (=> b!5350657 m!6381392))

(assert (=> b!5350657 m!6381394))

(assert (=> bm!382511 m!6381396))

(assert (=> b!5350660 m!6381392))

(assert (=> b!5350660 m!6381392))

(assert (=> b!5350660 m!6381394))

(declare-fun m!6381856 () Bool)

(assert (=> b!5350667 m!6381856))

(assert (=> d!1715706 m!6381396))

(assert (=> d!1715706 m!6381762))

(assert (=> b!5350665 m!6381400))

(assert (=> b!5350665 m!6381400))

(declare-fun m!6381858 () Bool)

(assert (=> b!5350665 m!6381858))

(assert (=> b!5350665 m!6381392))

(assert (=> b!5350665 m!6381858))

(assert (=> b!5350665 m!6381392))

(declare-fun m!6381860 () Bool)

(assert (=> b!5350665 m!6381860))

(assert (=> b!5350670 m!6381400))

(assert (=> b!5350661 m!6381400))

(assert (=> b!5349584 d!1715706))

(declare-fun d!1715708 () Bool)

(assert (=> d!1715708 (= (Exists!2218 lambda!274914) (choose!40146 lambda!274914))))

(declare-fun bs!1240507 () Bool)

(assert (= bs!1240507 d!1715708))

(declare-fun m!6381862 () Bool)

(assert (=> bs!1240507 m!6381862))

(assert (=> b!5349584 d!1715708))

(declare-fun bs!1240508 () Bool)

(declare-fun d!1715710 () Bool)

(assert (= bs!1240508 (and d!1715710 d!1715702)))

(declare-fun lambda!275027 () Int)

(assert (=> bs!1240508 (= lambda!275027 lambda!275024)))

(declare-fun bs!1240509 () Bool)

(assert (= bs!1240509 (and d!1715710 d!1715698)))

(assert (=> bs!1240509 (= lambda!275027 lambda!275023)))

(declare-fun bs!1240510 () Bool)

(assert (= bs!1240510 (and d!1715710 d!1715630)))

(assert (=> bs!1240510 (= lambda!275027 lambda!275004)))

(declare-fun bs!1240511 () Bool)

(assert (= bs!1240511 (and d!1715710 d!1715620)))

(assert (=> bs!1240511 (= lambda!275027 lambda!275000)))

(declare-fun bs!1240512 () Bool)

(assert (= bs!1240512 (and d!1715710 d!1715524)))

(assert (=> bs!1240512 (= lambda!275027 lambda!274962)))

(declare-fun bs!1240513 () Bool)

(assert (= bs!1240513 (and d!1715710 d!1715618)))

(assert (=> bs!1240513 (= lambda!275027 lambda!274997)))

(declare-fun bs!1240514 () Bool)

(assert (= bs!1240514 (and d!1715710 d!1715628)))

(assert (=> bs!1240514 (= lambda!275027 lambda!275001)))

(declare-fun b!5350671 () Bool)

(declare-fun e!3321621 () Bool)

(declare-fun lt!2181019 () Regex!15037)

(assert (=> b!5350671 (= e!3321621 (= lt!2181019 (head!11475 lt!2180814)))))

(declare-fun b!5350672 () Bool)

(declare-fun e!3321619 () Bool)

(declare-fun e!3321622 () Bool)

(assert (=> b!5350672 (= e!3321619 e!3321622)))

(declare-fun c!931543 () Bool)

(assert (=> b!5350672 (= c!931543 (isEmpty!33264 lt!2180814))))

(declare-fun b!5350673 () Bool)

(assert (=> b!5350673 (= e!3321621 (isConcat!436 lt!2181019))))

(declare-fun b!5350674 () Bool)

(declare-fun e!3321618 () Bool)

(assert (=> b!5350674 (= e!3321618 (isEmpty!33264 (t!374628 lt!2180814)))))

(declare-fun b!5350675 () Bool)

(assert (=> b!5350675 (= e!3321622 (isEmptyExpr!913 lt!2181019))))

(assert (=> d!1715710 e!3321619))

(declare-fun res!2270198 () Bool)

(assert (=> d!1715710 (=> (not res!2270198) (not e!3321619))))

(assert (=> d!1715710 (= res!2270198 (validRegex!6773 lt!2181019))))

(declare-fun e!3321617 () Regex!15037)

(assert (=> d!1715710 (= lt!2181019 e!3321617)))

(declare-fun c!931540 () Bool)

(assert (=> d!1715710 (= c!931540 e!3321618)))

(declare-fun res!2270197 () Bool)

(assert (=> d!1715710 (=> (not res!2270197) (not e!3321618))))

(assert (=> d!1715710 (= res!2270197 ((_ is Cons!61287) lt!2180814))))

(assert (=> d!1715710 (forall!14464 lt!2180814 lambda!275027)))

(assert (=> d!1715710 (= (generalisedConcat!706 lt!2180814) lt!2181019)))

(declare-fun b!5350676 () Bool)

(assert (=> b!5350676 (= e!3321617 (h!67735 lt!2180814))))

(declare-fun b!5350677 () Bool)

(declare-fun e!3321620 () Regex!15037)

(assert (=> b!5350677 (= e!3321620 (Concat!23882 (h!67735 lt!2180814) (generalisedConcat!706 (t!374628 lt!2180814))))))

(declare-fun b!5350678 () Bool)

(assert (=> b!5350678 (= e!3321622 e!3321621)))

(declare-fun c!931541 () Bool)

(assert (=> b!5350678 (= c!931541 (isEmpty!33264 (tail!10572 lt!2180814)))))

(declare-fun b!5350679 () Bool)

(assert (=> b!5350679 (= e!3321620 EmptyExpr!15037)))

(declare-fun b!5350680 () Bool)

(assert (=> b!5350680 (= e!3321617 e!3321620)))

(declare-fun c!931542 () Bool)

(assert (=> b!5350680 (= c!931542 ((_ is Cons!61287) lt!2180814))))

(assert (= (and d!1715710 res!2270197) b!5350674))

(assert (= (and d!1715710 c!931540) b!5350676))

(assert (= (and d!1715710 (not c!931540)) b!5350680))

(assert (= (and b!5350680 c!931542) b!5350677))

(assert (= (and b!5350680 (not c!931542)) b!5350679))

(assert (= (and d!1715710 res!2270198) b!5350672))

(assert (= (and b!5350672 c!931543) b!5350675))

(assert (= (and b!5350672 (not c!931543)) b!5350678))

(assert (= (and b!5350678 c!931541) b!5350671))

(assert (= (and b!5350678 (not c!931541)) b!5350673))

(declare-fun m!6381864 () Bool)

(assert (=> b!5350674 m!6381864))

(declare-fun m!6381866 () Bool)

(assert (=> b!5350671 m!6381866))

(declare-fun m!6381868 () Bool)

(assert (=> b!5350675 m!6381868))

(declare-fun m!6381870 () Bool)

(assert (=> b!5350677 m!6381870))

(declare-fun m!6381872 () Bool)

(assert (=> b!5350672 m!6381872))

(declare-fun m!6381874 () Bool)

(assert (=> b!5350678 m!6381874))

(assert (=> b!5350678 m!6381874))

(declare-fun m!6381876 () Bool)

(assert (=> b!5350678 m!6381876))

(declare-fun m!6381878 () Bool)

(assert (=> d!1715710 m!6381878))

(declare-fun m!6381880 () Bool)

(assert (=> d!1715710 m!6381880))

(declare-fun m!6381882 () Bool)

(assert (=> b!5350673 m!6381882))

(assert (=> b!5349584 d!1715710))

(declare-fun bs!1240515 () Bool)

(declare-fun b!5350690 () Bool)

(assert (= bs!1240515 (and b!5350690 b!5350608)))

(declare-fun lambda!275028 () Int)

(assert (=> bs!1240515 (= (and (= (reg!15366 lt!2180802) (reg!15366 lt!2180826)) (= lt!2180802 lt!2180826)) (= lambda!275028 lambda!275018))))

(declare-fun bs!1240516 () Bool)

(assert (= bs!1240516 (and b!5350690 d!1715682)))

(assert (=> bs!1240516 (not (= lambda!275028 lambda!275020))))

(declare-fun bs!1240517 () Bool)

(assert (= bs!1240517 (and b!5350690 b!5349584)))

(assert (=> bs!1240517 (not (= lambda!275028 lambda!274917))))

(declare-fun bs!1240518 () Bool)

(assert (= bs!1240518 (and b!5350690 b!5349581)))

(assert (=> bs!1240518 (not (= lambda!275028 lambda!274912))))

(declare-fun bs!1240519 () Bool)

(assert (= bs!1240519 (and b!5350690 b!5350420)))

(assert (=> bs!1240519 (= (and (= (reg!15366 lt!2180802) (reg!15366 r!7292)) (= lt!2180802 r!7292)) (= lambda!275028 lambda!274993))))

(declare-fun bs!1240520 () Bool)

(assert (= bs!1240520 (and b!5350690 d!1715704)))

(assert (=> bs!1240520 (not (= lambda!275028 lambda!275026))))

(declare-fun bs!1240521 () Bool)

(assert (= bs!1240521 (and b!5350690 d!1715660)))

(assert (=> bs!1240521 (not (= lambda!275028 lambda!275016))))

(declare-fun bs!1240522 () Bool)

(assert (= bs!1240522 (and b!5350690 d!1715684)))

(assert (=> bs!1240522 (not (= lambda!275028 lambda!275022))))

(assert (=> bs!1240517 (not (= lambda!275028 lambda!274914))))

(assert (=> bs!1240517 (not (= lambda!275028 lambda!274916))))

(declare-fun bs!1240523 () Bool)

(assert (= bs!1240523 (and b!5350690 d!1715658)))

(assert (=> bs!1240523 (not (= lambda!275028 lambda!275010))))

(assert (=> bs!1240518 (not (= lambda!275028 lambda!274911))))

(assert (=> bs!1240521 (not (= lambda!275028 lambda!275015))))

(declare-fun bs!1240524 () Bool)

(assert (= bs!1240524 (and b!5350690 b!5350412)))

(assert (=> bs!1240524 (not (= lambda!275028 lambda!274994))))

(assert (=> bs!1240516 (not (= lambda!275028 lambda!275021))))

(assert (=> bs!1240517 (not (= lambda!275028 lambda!274915))))

(assert (=> bs!1240520 (not (= lambda!275028 lambda!275025))))

(declare-fun bs!1240525 () Bool)

(assert (= bs!1240525 (and b!5350690 b!5350600)))

(assert (=> bs!1240525 (not (= lambda!275028 lambda!275019))))

(declare-fun bs!1240526 () Bool)

(assert (= bs!1240526 (and b!5350690 d!1715670)))

(assert (=> bs!1240526 (not (= lambda!275028 lambda!275017))))

(assert (=> b!5350690 true))

(assert (=> b!5350690 true))

(declare-fun bs!1240527 () Bool)

(declare-fun b!5350682 () Bool)

(assert (= bs!1240527 (and b!5350682 b!5350608)))

(declare-fun lambda!275029 () Int)

(assert (=> bs!1240527 (not (= lambda!275029 lambda!275018))))

(declare-fun bs!1240528 () Bool)

(assert (= bs!1240528 (and b!5350682 d!1715682)))

(assert (=> bs!1240528 (not (= lambda!275029 lambda!275020))))

(declare-fun bs!1240529 () Bool)

(assert (= bs!1240529 (and b!5350682 b!5349584)))

(assert (=> bs!1240529 (= (and (= (regOne!30586 lt!2180802) (regTwo!30586 (regOne!30586 r!7292))) (= (regTwo!30586 lt!2180802) lt!2180800)) (= lambda!275029 lambda!274917))))

(declare-fun bs!1240530 () Bool)

(assert (= bs!1240530 (and b!5350682 b!5349581)))

(assert (=> bs!1240530 (= (and (= (regOne!30586 lt!2180802) (regOne!30586 r!7292)) (= (regTwo!30586 lt!2180802) (regTwo!30586 r!7292))) (= lambda!275029 lambda!274912))))

(declare-fun bs!1240531 () Bool)

(assert (= bs!1240531 (and b!5350682 b!5350420)))

(assert (=> bs!1240531 (not (= lambda!275029 lambda!274993))))

(declare-fun bs!1240532 () Bool)

(assert (= bs!1240532 (and b!5350682 d!1715704)))

(assert (=> bs!1240532 (= (and (= (regOne!30586 lt!2180802) (regOne!30586 (regOne!30586 r!7292))) (= (regTwo!30586 lt!2180802) lt!2180826)) (= lambda!275029 lambda!275026))))

(declare-fun bs!1240533 () Bool)

(assert (= bs!1240533 (and b!5350682 d!1715660)))

(assert (=> bs!1240533 (= (and (= (regOne!30586 lt!2180802) (regOne!30586 r!7292)) (= (regTwo!30586 lt!2180802) (regTwo!30586 r!7292))) (= lambda!275029 lambda!275016))))

(declare-fun bs!1240534 () Bool)

(assert (= bs!1240534 (and b!5350682 d!1715684)))

(assert (=> bs!1240534 (not (= lambda!275029 lambda!275022))))

(assert (=> bs!1240529 (not (= lambda!275029 lambda!274914))))

(assert (=> bs!1240529 (not (= lambda!275029 lambda!274916))))

(declare-fun bs!1240535 () Bool)

(assert (= bs!1240535 (and b!5350682 d!1715658)))

(assert (=> bs!1240535 (not (= lambda!275029 lambda!275010))))

(assert (=> bs!1240530 (not (= lambda!275029 lambda!274911))))

(assert (=> bs!1240533 (not (= lambda!275029 lambda!275015))))

(declare-fun bs!1240536 () Bool)

(assert (= bs!1240536 (and b!5350682 b!5350412)))

(assert (=> bs!1240536 (= (and (= (regOne!30586 lt!2180802) (regOne!30586 r!7292)) (= (regTwo!30586 lt!2180802) (regTwo!30586 r!7292))) (= lambda!275029 lambda!274994))))

(assert (=> bs!1240528 (= (and (= (regOne!30586 lt!2180802) (regTwo!30586 (regOne!30586 r!7292))) (= (regTwo!30586 lt!2180802) lt!2180800)) (= lambda!275029 lambda!275021))))

(assert (=> bs!1240529 (= (and (= (regOne!30586 lt!2180802) (regOne!30586 (regOne!30586 r!7292))) (= (regTwo!30586 lt!2180802) lt!2180826)) (= lambda!275029 lambda!274915))))

(assert (=> bs!1240532 (not (= lambda!275029 lambda!275025))))

(declare-fun bs!1240537 () Bool)

(assert (= bs!1240537 (and b!5350682 b!5350690)))

(assert (=> bs!1240537 (not (= lambda!275029 lambda!275028))))

(declare-fun bs!1240538 () Bool)

(assert (= bs!1240538 (and b!5350682 b!5350600)))

(assert (=> bs!1240538 (= (and (= (regOne!30586 lt!2180802) (regOne!30586 lt!2180826)) (= (regTwo!30586 lt!2180802) (regTwo!30586 lt!2180826))) (= lambda!275029 lambda!275019))))

(declare-fun bs!1240539 () Bool)

(assert (= bs!1240539 (and b!5350682 d!1715670)))

(assert (=> bs!1240539 (not (= lambda!275029 lambda!275017))))

(assert (=> b!5350682 true))

(assert (=> b!5350682 true))

(declare-fun b!5350681 () Bool)

(declare-fun e!3321626 () Bool)

(declare-fun call!382518 () Bool)

(assert (=> b!5350681 (= e!3321626 call!382518)))

(declare-fun e!3321628 () Bool)

(declare-fun call!382517 () Bool)

(assert (=> b!5350682 (= e!3321628 call!382517)))

(declare-fun bm!382512 () Bool)

(assert (=> bm!382512 (= call!382518 (isEmpty!33266 s!2326))))

(declare-fun b!5350683 () Bool)

(declare-fun c!931544 () Bool)

(assert (=> b!5350683 (= c!931544 ((_ is ElementMatch!15037) lt!2180802))))

(declare-fun e!3321623 () Bool)

(declare-fun e!3321625 () Bool)

(assert (=> b!5350683 (= e!3321623 e!3321625)))

(declare-fun b!5350684 () Bool)

(declare-fun c!931545 () Bool)

(assert (=> b!5350684 (= c!931545 ((_ is Union!15037) lt!2180802))))

(declare-fun e!3321629 () Bool)

(assert (=> b!5350684 (= e!3321625 e!3321629)))

(declare-fun b!5350685 () Bool)

(declare-fun e!3321627 () Bool)

(assert (=> b!5350685 (= e!3321627 (matchRSpec!2140 (regTwo!30587 lt!2180802) s!2326))))

(declare-fun b!5350686 () Bool)

(assert (=> b!5350686 (= e!3321625 (= s!2326 (Cons!61286 (c!931215 lt!2180802) Nil!61286)))))

(declare-fun b!5350687 () Bool)

(assert (=> b!5350687 (= e!3321629 e!3321628)))

(declare-fun c!931547 () Bool)

(assert (=> b!5350687 (= c!931547 ((_ is Star!15037) lt!2180802))))

(declare-fun bm!382513 () Bool)

(assert (=> bm!382513 (= call!382517 (Exists!2218 (ite c!931547 lambda!275028 lambda!275029)))))

(declare-fun d!1715712 () Bool)

(declare-fun c!931546 () Bool)

(assert (=> d!1715712 (= c!931546 ((_ is EmptyExpr!15037) lt!2180802))))

(assert (=> d!1715712 (= (matchRSpec!2140 lt!2180802 s!2326) e!3321626)))

(declare-fun b!5350688 () Bool)

(assert (=> b!5350688 (= e!3321626 e!3321623)))

(declare-fun res!2270199 () Bool)

(assert (=> b!5350688 (= res!2270199 (not ((_ is EmptyLang!15037) lt!2180802)))))

(assert (=> b!5350688 (=> (not res!2270199) (not e!3321623))))

(declare-fun b!5350689 () Bool)

(declare-fun res!2270201 () Bool)

(declare-fun e!3321624 () Bool)

(assert (=> b!5350689 (=> res!2270201 e!3321624)))

(assert (=> b!5350689 (= res!2270201 call!382518)))

(assert (=> b!5350689 (= e!3321628 e!3321624)))

(assert (=> b!5350690 (= e!3321624 call!382517)))

(declare-fun b!5350691 () Bool)

(assert (=> b!5350691 (= e!3321629 e!3321627)))

(declare-fun res!2270200 () Bool)

(assert (=> b!5350691 (= res!2270200 (matchRSpec!2140 (regOne!30587 lt!2180802) s!2326))))

(assert (=> b!5350691 (=> res!2270200 e!3321627)))

(assert (= (and d!1715712 c!931546) b!5350681))

(assert (= (and d!1715712 (not c!931546)) b!5350688))

(assert (= (and b!5350688 res!2270199) b!5350683))

(assert (= (and b!5350683 c!931544) b!5350686))

(assert (= (and b!5350683 (not c!931544)) b!5350684))

(assert (= (and b!5350684 c!931545) b!5350691))

(assert (= (and b!5350684 (not c!931545)) b!5350687))

(assert (= (and b!5350691 (not res!2270200)) b!5350685))

(assert (= (and b!5350687 c!931547) b!5350689))

(assert (= (and b!5350687 (not c!931547)) b!5350682))

(assert (= (and b!5350689 (not res!2270201)) b!5350690))

(assert (= (or b!5350690 b!5350682) bm!382513))

(assert (= (or b!5350681 b!5350689) bm!382512))

(assert (=> bm!382512 m!6381396))

(declare-fun m!6381884 () Bool)

(assert (=> b!5350685 m!6381884))

(declare-fun m!6381886 () Bool)

(assert (=> bm!382513 m!6381886))

(declare-fun m!6381888 () Bool)

(assert (=> b!5350691 m!6381888))

(assert (=> b!5349584 d!1715712))

(declare-fun d!1715714 () Bool)

(assert (=> d!1715714 (= (matchR!7222 lt!2180802 s!2326) (matchRSpec!2140 lt!2180802 s!2326))))

(declare-fun lt!2181020 () Unit!153666)

(assert (=> d!1715714 (= lt!2181020 (choose!40142 lt!2180802 s!2326))))

(assert (=> d!1715714 (validRegex!6773 lt!2180802)))

(assert (=> d!1715714 (= (mainMatchTheorem!2140 lt!2180802 s!2326) lt!2181020)))

(declare-fun bs!1240540 () Bool)

(assert (= bs!1240540 d!1715714))

(assert (=> bs!1240540 m!6380872))

(assert (=> bs!1240540 m!6380880))

(declare-fun m!6381890 () Bool)

(assert (=> bs!1240540 m!6381890))

(assert (=> bs!1240540 m!6381762))

(assert (=> b!5349584 d!1715714))

(declare-fun d!1715716 () Bool)

(assert (=> d!1715716 (= (isEmpty!33263 (t!374629 zl!343)) ((_ is Nil!61288) (t!374629 zl!343)))))

(assert (=> b!5349564 d!1715716))

(declare-fun e!3321632 () Bool)

(assert (=> b!5349563 (= tp!1486219 e!3321632)))

(declare-fun b!5350703 () Bool)

(declare-fun tp!1486296 () Bool)

(declare-fun tp!1486297 () Bool)

(assert (=> b!5350703 (= e!3321632 (and tp!1486296 tp!1486297))))

(declare-fun b!5350702 () Bool)

(assert (=> b!5350702 (= e!3321632 tp_is_empty!39327)))

(declare-fun b!5350704 () Bool)

(declare-fun tp!1486298 () Bool)

(assert (=> b!5350704 (= e!3321632 tp!1486298)))

(declare-fun b!5350705 () Bool)

(declare-fun tp!1486294 () Bool)

(declare-fun tp!1486295 () Bool)

(assert (=> b!5350705 (= e!3321632 (and tp!1486294 tp!1486295))))

(assert (= (and b!5349563 ((_ is ElementMatch!15037) (regOne!30586 r!7292))) b!5350702))

(assert (= (and b!5349563 ((_ is Concat!23882) (regOne!30586 r!7292))) b!5350703))

(assert (= (and b!5349563 ((_ is Star!15037) (regOne!30586 r!7292))) b!5350704))

(assert (= (and b!5349563 ((_ is Union!15037) (regOne!30586 r!7292))) b!5350705))

(declare-fun e!3321633 () Bool)

(assert (=> b!5349563 (= tp!1486223 e!3321633)))

(declare-fun b!5350707 () Bool)

(declare-fun tp!1486301 () Bool)

(declare-fun tp!1486302 () Bool)

(assert (=> b!5350707 (= e!3321633 (and tp!1486301 tp!1486302))))

(declare-fun b!5350706 () Bool)

(assert (=> b!5350706 (= e!3321633 tp_is_empty!39327)))

(declare-fun b!5350708 () Bool)

(declare-fun tp!1486303 () Bool)

(assert (=> b!5350708 (= e!3321633 tp!1486303)))

(declare-fun b!5350709 () Bool)

(declare-fun tp!1486299 () Bool)

(declare-fun tp!1486300 () Bool)

(assert (=> b!5350709 (= e!3321633 (and tp!1486299 tp!1486300))))

(assert (= (and b!5349563 ((_ is ElementMatch!15037) (regTwo!30586 r!7292))) b!5350706))

(assert (= (and b!5349563 ((_ is Concat!23882) (regTwo!30586 r!7292))) b!5350707))

(assert (= (and b!5349563 ((_ is Star!15037) (regTwo!30586 r!7292))) b!5350708))

(assert (= (and b!5349563 ((_ is Union!15037) (regTwo!30586 r!7292))) b!5350709))

(declare-fun condSetEmpty!34561 () Bool)

(assert (=> setNonEmpty!34555 (= condSetEmpty!34561 (= setRest!34555 ((as const (Array Context!8842 Bool)) false)))))

(declare-fun setRes!34561 () Bool)

(assert (=> setNonEmpty!34555 (= tp!1486218 setRes!34561)))

(declare-fun setIsEmpty!34561 () Bool)

(assert (=> setIsEmpty!34561 setRes!34561))

(declare-fun setElem!34561 () Context!8842)

(declare-fun setNonEmpty!34561 () Bool)

(declare-fun tp!1486309 () Bool)

(declare-fun e!3321636 () Bool)

(assert (=> setNonEmpty!34561 (= setRes!34561 (and tp!1486309 (inv!80839 setElem!34561) e!3321636))))

(declare-fun setRest!34561 () (InoxSet Context!8842))

(assert (=> setNonEmpty!34561 (= setRest!34555 ((_ map or) (store ((as const (Array Context!8842 Bool)) false) setElem!34561 true) setRest!34561))))

(declare-fun b!5350714 () Bool)

(declare-fun tp!1486308 () Bool)

(assert (=> b!5350714 (= e!3321636 tp!1486308)))

(assert (= (and setNonEmpty!34555 condSetEmpty!34561) setIsEmpty!34561))

(assert (= (and setNonEmpty!34555 (not condSetEmpty!34561)) setNonEmpty!34561))

(assert (= setNonEmpty!34561 b!5350714))

(declare-fun m!6381892 () Bool)

(assert (=> setNonEmpty!34561 m!6381892))

(declare-fun b!5350719 () Bool)

(declare-fun e!3321639 () Bool)

(declare-fun tp!1486314 () Bool)

(declare-fun tp!1486315 () Bool)

(assert (=> b!5350719 (= e!3321639 (and tp!1486314 tp!1486315))))

(assert (=> b!5349588 (= tp!1486224 e!3321639)))

(assert (= (and b!5349588 ((_ is Cons!61287) (exprs!4921 (h!67736 zl!343)))) b!5350719))

(declare-fun b!5350724 () Bool)

(declare-fun e!3321642 () Bool)

(declare-fun tp!1486318 () Bool)

(assert (=> b!5350724 (= e!3321642 (and tp_is_empty!39327 tp!1486318))))

(assert (=> b!5349593 (= tp!1486225 e!3321642)))

(assert (= (and b!5349593 ((_ is Cons!61286) (t!374627 s!2326))) b!5350724))

(declare-fun b!5350732 () Bool)

(declare-fun e!3321648 () Bool)

(declare-fun tp!1486323 () Bool)

(assert (=> b!5350732 (= e!3321648 tp!1486323)))

(declare-fun e!3321647 () Bool)

(declare-fun tp!1486324 () Bool)

(declare-fun b!5350731 () Bool)

(assert (=> b!5350731 (= e!3321647 (and (inv!80839 (h!67736 (t!374629 zl!343))) e!3321648 tp!1486324))))

(assert (=> b!5349587 (= tp!1486217 e!3321647)))

(assert (= b!5350731 b!5350732))

(assert (= (and b!5349587 ((_ is Cons!61288) (t!374629 zl!343))) b!5350731))

(declare-fun m!6381894 () Bool)

(assert (=> b!5350731 m!6381894))

(declare-fun e!3321649 () Bool)

(assert (=> b!5349594 (= tp!1486216 e!3321649)))

(declare-fun b!5350734 () Bool)

(declare-fun tp!1486327 () Bool)

(declare-fun tp!1486328 () Bool)

(assert (=> b!5350734 (= e!3321649 (and tp!1486327 tp!1486328))))

(declare-fun b!5350733 () Bool)

(assert (=> b!5350733 (= e!3321649 tp_is_empty!39327)))

(declare-fun b!5350735 () Bool)

(declare-fun tp!1486329 () Bool)

(assert (=> b!5350735 (= e!3321649 tp!1486329)))

(declare-fun b!5350736 () Bool)

(declare-fun tp!1486325 () Bool)

(declare-fun tp!1486326 () Bool)

(assert (=> b!5350736 (= e!3321649 (and tp!1486325 tp!1486326))))

(assert (= (and b!5349594 ((_ is ElementMatch!15037) (reg!15366 r!7292))) b!5350733))

(assert (= (and b!5349594 ((_ is Concat!23882) (reg!15366 r!7292))) b!5350734))

(assert (= (and b!5349594 ((_ is Star!15037) (reg!15366 r!7292))) b!5350735))

(assert (= (and b!5349594 ((_ is Union!15037) (reg!15366 r!7292))) b!5350736))

(declare-fun b!5350737 () Bool)

(declare-fun e!3321650 () Bool)

(declare-fun tp!1486330 () Bool)

(declare-fun tp!1486331 () Bool)

(assert (=> b!5350737 (= e!3321650 (and tp!1486330 tp!1486331))))

(assert (=> b!5349580 (= tp!1486221 e!3321650)))

(assert (= (and b!5349580 ((_ is Cons!61287) (exprs!4921 setElem!34555))) b!5350737))

(declare-fun e!3321651 () Bool)

(assert (=> b!5349569 (= tp!1486222 e!3321651)))

(declare-fun b!5350739 () Bool)

(declare-fun tp!1486334 () Bool)

(declare-fun tp!1486335 () Bool)

(assert (=> b!5350739 (= e!3321651 (and tp!1486334 tp!1486335))))

(declare-fun b!5350738 () Bool)

(assert (=> b!5350738 (= e!3321651 tp_is_empty!39327)))

(declare-fun b!5350740 () Bool)

(declare-fun tp!1486336 () Bool)

(assert (=> b!5350740 (= e!3321651 tp!1486336)))

(declare-fun b!5350741 () Bool)

(declare-fun tp!1486332 () Bool)

(declare-fun tp!1486333 () Bool)

(assert (=> b!5350741 (= e!3321651 (and tp!1486332 tp!1486333))))

(assert (= (and b!5349569 ((_ is ElementMatch!15037) (regOne!30587 r!7292))) b!5350738))

(assert (= (and b!5349569 ((_ is Concat!23882) (regOne!30587 r!7292))) b!5350739))

(assert (= (and b!5349569 ((_ is Star!15037) (regOne!30587 r!7292))) b!5350740))

(assert (= (and b!5349569 ((_ is Union!15037) (regOne!30587 r!7292))) b!5350741))

(declare-fun e!3321652 () Bool)

(assert (=> b!5349569 (= tp!1486220 e!3321652)))

(declare-fun b!5350743 () Bool)

(declare-fun tp!1486339 () Bool)

(declare-fun tp!1486340 () Bool)

(assert (=> b!5350743 (= e!3321652 (and tp!1486339 tp!1486340))))

(declare-fun b!5350742 () Bool)

(assert (=> b!5350742 (= e!3321652 tp_is_empty!39327)))

(declare-fun b!5350744 () Bool)

(declare-fun tp!1486341 () Bool)

(assert (=> b!5350744 (= e!3321652 tp!1486341)))

(declare-fun b!5350745 () Bool)

(declare-fun tp!1486337 () Bool)

(declare-fun tp!1486338 () Bool)

(assert (=> b!5350745 (= e!3321652 (and tp!1486337 tp!1486338))))

(assert (= (and b!5349569 ((_ is ElementMatch!15037) (regTwo!30587 r!7292))) b!5350742))

(assert (= (and b!5349569 ((_ is Concat!23882) (regTwo!30587 r!7292))) b!5350743))

(assert (= (and b!5349569 ((_ is Star!15037) (regTwo!30587 r!7292))) b!5350744))

(assert (= (and b!5349569 ((_ is Union!15037) (regTwo!30587 r!7292))) b!5350745))

(declare-fun b_lambda!205321 () Bool)

(assert (= b_lambda!205313 (or b!5349597 b_lambda!205321)))

(declare-fun bs!1240541 () Bool)

(declare-fun d!1715718 () Bool)

(assert (= bs!1240541 (and d!1715718 b!5349597)))

(assert (=> bs!1240541 (= (dynLambda!24227 lambda!274913 (h!67736 zl!343)) (derivationStepZipperUp!409 (h!67736 zl!343) (h!67734 s!2326)))))

(assert (=> bs!1240541 m!6380804))

(assert (=> d!1715490 d!1715718))

(declare-fun b_lambda!205323 () Bool)

(assert (= b_lambda!205319 (or b!5349597 b_lambda!205323)))

(declare-fun bs!1240542 () Bool)

(declare-fun d!1715720 () Bool)

(assert (= bs!1240542 (and d!1715720 b!5349597)))

(assert (=> bs!1240542 (= (dynLambda!24227 lambda!274913 lt!2180803) (derivationStepZipperUp!409 lt!2180803 (h!67734 s!2326)))))

(assert (=> bs!1240542 m!6380906))

(assert (=> d!1715648 d!1715720))

(check-sat (not d!1715654) (not b!5350225) (not d!1715676) (not b!5350488) (not bs!1240542) (not d!1715704) (not b!5350660) (not d!1715570) (not b!5350741) (not b!5350634) (not b!5350568) (not bm!382504) (not b!5350621) (not b!5350318) (not b!5350510) (not b!5350421) (not b!5350593) (not b!5350142) (not b!5350274) (not b!5350707) (not d!1715664) (not b!5350613) (not b!5350222) (not b!5350736) (not b!5350466) (not b!5350709) (not b!5350047) (not b!5349968) (not b!5350422) (not b!5350705) (not bm!382503) (not b!5350468) (not b!5350566) (not b!5350731) (not b!5350415) (not bm!382475) (not d!1715700) (not b!5350648) (not b!5350058) (not d!1715690) (not b!5350538) (not b!5350516) (not d!1715612) (not setNonEmpty!34561) (not d!1715678) (not d!1715684) (not b!5350635) (not bs!1240541) (not b!5350714) (not b!5350704) (not bm!382497) (not bm!382468) (not b!5350675) (not d!1715680) (not d!1715672) (not d!1715670) (not b!5350647) (not b!5350744) (not d!1715710) (not b!5350672) (not b!5350657) (not b!5350485) (not b!5350654) (not b!5350638) (not b!5350743) (not b!5350611) (not b!5350740) (not b!5350745) (not d!1715660) (not b!5350284) (not b!5350595) (not b!5350732) (not b!5350328) (not b!5350249) (not d!1715662) (not bm!382498) (not b!5350734) (not b!5350432) (not b!5350371) (not b!5350303) (not b!5350512) (not b!5350737) (not bm!382467) tp_is_empty!39327 (not bm!382469) (not b!5350509) (not b!5350573) (not b!5350667) (not b!5350674) (not b!5350531) (not b!5350569) (not d!1715576) (not d!1715658) (not d!1715688) (not d!1715524) (not b!5350594) (not b!5350617) (not d!1715682) (not b_lambda!205321) (not d!1715698) (not b!5350651) (not d!1715640) (not b!5350615) (not b!5350691) (not b!5350542) (not b!5350425) (not b!5350275) (not b!5350739) (not d!1715686) (not b!5350271) (not bm!382487) (not b!5350536) (not bm!382494) (not b!5349970) (not b!5350511) (not b!5350670) (not b!5350589) (not bm!382474) (not b!5350637) (not b!5350641) (not b!5350609) (not b!5350266) (not b!5350532) (not bm!382509) (not b!5350640) (not b!5350279) (not bm!382505) (not b!5350535) (not d!1715620) (not b!5350588) (not d!1715666) (not d!1715642) (not d!1715510) (not bm!382513) (not b!5350319) (not bm!382512) (not b!5350000) (not bm!382496) (not b!5350618) (not b!5350616) (not bm!382493) (not bm!382511) (not bm!382506) (not b!5350735) (not b_lambda!205323) (not b!5350479) (not b!5350315) (not b!5350220) (not d!1715636) (not d!1715668) (not b!5350483) (not d!1715644) (not d!1715624) (not b!5350636) (not bm!382449) (not d!1715696) (not b!5350724) (not bm!382450) (not bm!382472) (not b!5350677) (not b!5350376) (not d!1715630) (not d!1715490) (not b!5350465) (not b!5350539) (not b!5350281) (not bm!382465) (not b!5350513) (not b!5350598) (not b!5350665) (not b!5350620) (not b!5350378) (not b!5350435) (not d!1715706) (not b!5350603) (not bm!382507) (not b!5350426) (not b!5350649) (not d!1715614) (not b!5350216) (not b!5350459) (not b!5350515) (not b!5350624) (not b!5350685) (not b!5350673) (not b!5350537) (not d!1715656) (not d!1715648) (not b!5350325) (not b!5350570) (not d!1715702) (not b!5350678) (not b!5350002) (not b!5350610) (not b!5350309) (not b!5350212) (not d!1715586) (not b!5350661) (not bm!382510) (not d!1715600) (not b!5350462) (not b!5350644) (not b!5350703) (not d!1715618) (not b!5350215) (not d!1715694) (not bm!382485) (not b!5350540) (not b!5350438) (not b!5350587) (not b!5350671) (not b!5350430) (not b!5350571) (not b!5350631) (not b!5350708) (not d!1715652) (not b!5350473) (not b!5350323) (not b!5350596) (not b!5350525) (not b!5350478) (not bm!382508) (not b!5350373) (not b!5350643) (not b!5350639) (not b!5350475) (not d!1715708) (not d!1715622) (not b!5350650) (not d!1715628) (not b!5350625) (not b!5350719) (not d!1715616) (not d!1715548) (not b!5350463) (not b!5350653) (not b!5350591) (not d!1715512) (not b!5350586) (not b!5350464) (not b!5350071) (not d!1715638) (not b!5350629) (not b!5350060) (not b!5350248) (not b!5350523) (not d!1715650) (not d!1715714) (not d!1715692))
(check-sat)
