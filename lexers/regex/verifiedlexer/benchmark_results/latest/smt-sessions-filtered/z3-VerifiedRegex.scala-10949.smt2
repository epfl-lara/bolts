; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566698 () Bool)

(assert start!566698)

(declare-fun b!5393637 () Bool)

(assert (=> b!5393637 true))

(assert (=> b!5393637 true))

(declare-fun lambda!280324 () Int)

(declare-fun lambda!280323 () Int)

(assert (=> b!5393637 (not (= lambda!280324 lambda!280323))))

(assert (=> b!5393637 true))

(assert (=> b!5393637 true))

(declare-fun b!5393665 () Bool)

(assert (=> b!5393665 true))

(declare-fun b!5393643 () Bool)

(assert (=> b!5393643 true))

(declare-fun b!5393635 () Bool)

(declare-fun res!2292120 () Bool)

(declare-fun e!3344783 () Bool)

(assert (=> b!5393635 (=> res!2292120 e!3344783)))

(declare-datatypes ((C!30560 0))(
  ( (C!30561 (val!24982 Int)) )
))
(declare-datatypes ((Regex!15145 0))(
  ( (ElementMatch!15145 (c!939945 C!30560)) (Concat!23990 (regOne!30802 Regex!15145) (regTwo!30802 Regex!15145)) (EmptyExpr!15145) (Star!15145 (reg!15474 Regex!15145)) (EmptyLang!15145) (Union!15145 (regOne!30803 Regex!15145) (regTwo!30803 Regex!15145)) )
))
(declare-datatypes ((List!61734 0))(
  ( (Nil!61610) (Cons!61610 (h!68058 Regex!15145) (t!374957 List!61734)) )
))
(declare-datatypes ((Context!9058 0))(
  ( (Context!9059 (exprs!5029 List!61734)) )
))
(declare-datatypes ((List!61735 0))(
  ( (Nil!61611) (Cons!61611 (h!68059 Context!9058) (t!374958 List!61735)) )
))
(declare-fun zl!343 () List!61735)

(declare-fun isEmpty!33609 (List!61735) Bool)

(assert (=> b!5393635 (= res!2292120 (not (isEmpty!33609 (t!374958 zl!343))))))

(declare-fun b!5393636 () Bool)

(declare-fun res!2292100 () Bool)

(declare-fun e!3344777 () Bool)

(assert (=> b!5393636 (=> res!2292100 e!3344777)))

(declare-fun lt!2197731 () Regex!15145)

(declare-fun r!7292 () Regex!15145)

(assert (=> b!5393636 (= res!2292100 (not (= lt!2197731 r!7292)))))

(declare-fun e!3344772 () Bool)

(assert (=> b!5393637 (= e!3344783 e!3344772)))

(declare-fun res!2292115 () Bool)

(assert (=> b!5393637 (=> res!2292115 e!3344772)))

(declare-datatypes ((List!61736 0))(
  ( (Nil!61612) (Cons!61612 (h!68060 C!30560) (t!374959 List!61736)) )
))
(declare-fun s!2326 () List!61736)

(declare-fun lt!2197733 () Bool)

(declare-fun lt!2197707 () Bool)

(get-info :version)

(assert (=> b!5393637 (= res!2292115 (or (not (= lt!2197707 lt!2197733)) ((_ is Nil!61612) s!2326)))))

(declare-fun Exists!2326 (Int) Bool)

(assert (=> b!5393637 (= (Exists!2326 lambda!280323) (Exists!2326 lambda!280324))))

(declare-datatypes ((Unit!154102 0))(
  ( (Unit!154103) )
))
(declare-fun lt!2197702 () Unit!154102)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!980 (Regex!15145 Regex!15145 List!61736) Unit!154102)

(assert (=> b!5393637 (= lt!2197702 (lemmaExistCutMatchRandMatchRSpecEquivalent!980 (regOne!30802 r!7292) (regTwo!30802 r!7292) s!2326))))

(assert (=> b!5393637 (= lt!2197733 (Exists!2326 lambda!280323))))

(declare-datatypes ((tuple2!64688 0))(
  ( (tuple2!64689 (_1!35647 List!61736) (_2!35647 List!61736)) )
))
(declare-datatypes ((Option!15256 0))(
  ( (None!15255) (Some!15255 (v!51284 tuple2!64688)) )
))
(declare-fun isDefined!11959 (Option!15256) Bool)

(declare-fun findConcatSeparation!1670 (Regex!15145 Regex!15145 List!61736 List!61736 List!61736) Option!15256)

(assert (=> b!5393637 (= lt!2197733 (isDefined!11959 (findConcatSeparation!1670 (regOne!30802 r!7292) (regTwo!30802 r!7292) Nil!61612 s!2326 s!2326)))))

(declare-fun lt!2197699 () Unit!154102)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1434 (Regex!15145 Regex!15145 List!61736) Unit!154102)

(assert (=> b!5393637 (= lt!2197699 (lemmaFindConcatSeparationEquivalentToExists!1434 (regOne!30802 r!7292) (regTwo!30802 r!7292) s!2326))))

(declare-fun b!5393638 () Bool)

(declare-fun e!3344779 () Bool)

(declare-fun tp_is_empty!39543 () Bool)

(declare-fun tp!1493244 () Bool)

(assert (=> b!5393638 (= e!3344779 (and tp_is_empty!39543 tp!1493244))))

(declare-fun b!5393639 () Bool)

(declare-fun e!3344767 () Unit!154102)

(declare-fun Unit!154104 () Unit!154102)

(assert (=> b!5393639 (= e!3344767 Unit!154104)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2197712 () (InoxSet Context!9058))

(declare-fun lt!2197723 () Unit!154102)

(declare-fun lt!2197704 () (InoxSet Context!9058))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!382 ((InoxSet Context!9058) (InoxSet Context!9058) List!61736) Unit!154102)

(assert (=> b!5393639 (= lt!2197723 (lemmaZipperConcatMatchesSameAsBothZippers!382 lt!2197712 lt!2197704 (t!374959 s!2326)))))

(declare-fun res!2292126 () Bool)

(declare-fun matchZipper!1389 ((InoxSet Context!9058) List!61736) Bool)

(assert (=> b!5393639 (= res!2292126 (matchZipper!1389 lt!2197712 (t!374959 s!2326)))))

(declare-fun e!3344781 () Bool)

(assert (=> b!5393639 (=> res!2292126 e!3344781)))

(assert (=> b!5393639 (= (matchZipper!1389 ((_ map or) lt!2197712 lt!2197704) (t!374959 s!2326)) e!3344781)))

(declare-fun res!2292116 () Bool)

(declare-fun e!3344769 () Bool)

(assert (=> start!566698 (=> (not res!2292116) (not e!3344769))))

(declare-fun validRegex!6881 (Regex!15145) Bool)

(assert (=> start!566698 (= res!2292116 (validRegex!6881 r!7292))))

(assert (=> start!566698 e!3344769))

(declare-fun e!3344768 () Bool)

(assert (=> start!566698 e!3344768))

(declare-fun condSetEmpty!35057 () Bool)

(declare-fun z!1189 () (InoxSet Context!9058))

(assert (=> start!566698 (= condSetEmpty!35057 (= z!1189 ((as const (Array Context!9058 Bool)) false)))))

(declare-fun setRes!35057 () Bool)

(assert (=> start!566698 setRes!35057))

(declare-fun e!3344766 () Bool)

(assert (=> start!566698 e!3344766))

(assert (=> start!566698 e!3344779))

(declare-fun setIsEmpty!35057 () Bool)

(assert (=> setIsEmpty!35057 setRes!35057))

(declare-fun b!5393640 () Bool)

(declare-fun res!2292104 () Bool)

(assert (=> b!5393640 (=> res!2292104 e!3344783)))

(declare-fun generalisedConcat!814 (List!61734) Regex!15145)

(assert (=> b!5393640 (= res!2292104 (not (= r!7292 (generalisedConcat!814 (exprs!5029 (h!68059 zl!343))))))))

(declare-fun b!5393641 () Bool)

(declare-fun e!3344784 () Bool)

(declare-fun tp!1493246 () Bool)

(assert (=> b!5393641 (= e!3344784 tp!1493246)))

(declare-fun b!5393642 () Bool)

(declare-fun e!3344764 () Bool)

(assert (=> b!5393642 (= e!3344777 e!3344764)))

(declare-fun res!2292105 () Bool)

(assert (=> b!5393642 (=> res!2292105 e!3344764)))

(declare-fun lt!2197730 () Regex!15145)

(assert (=> b!5393642 (= res!2292105 (not (= r!7292 lt!2197730)))))

(declare-fun lt!2197727 () Regex!15145)

(assert (=> b!5393642 (= lt!2197730 (Concat!23990 lt!2197727 (regTwo!30802 r!7292)))))

(declare-fun e!3344778 () Bool)

(declare-fun e!3344765 () Bool)

(assert (=> b!5393643 (= e!3344778 e!3344765)))

(declare-fun res!2292119 () Bool)

(assert (=> b!5393643 (=> res!2292119 e!3344765)))

(declare-fun lt!2197722 () (InoxSet Context!9058))

(declare-fun lt!2197732 () (InoxSet Context!9058))

(declare-fun lt!2197703 () Context!9058)

(declare-fun appendTo!4 ((InoxSet Context!9058) Context!9058) (InoxSet Context!9058))

(assert (=> b!5393643 (= res!2292119 (not (= (appendTo!4 lt!2197722 lt!2197703) lt!2197732)))))

(declare-fun lt!2197725 () List!61734)

(declare-fun lambda!280326 () Int)

(declare-fun map!14102 ((InoxSet Context!9058) Int) (InoxSet Context!9058))

(declare-fun ++!13465 (List!61734 List!61734) List!61734)

(assert (=> b!5393643 (= (map!14102 lt!2197722 lambda!280326) (store ((as const (Array Context!9058 Bool)) false) (Context!9059 (++!13465 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610) lt!2197725)) true))))

(declare-fun lambda!280327 () Int)

(declare-fun lt!2197711 () Unit!154102)

(declare-fun lemmaConcatPreservesForall!170 (List!61734 List!61734 Int) Unit!154102)

(assert (=> b!5393643 (= lt!2197711 (lemmaConcatPreservesForall!170 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610) lt!2197725 lambda!280327))))

(declare-fun lt!2197700 () Context!9058)

(declare-fun lt!2197728 () Unit!154102)

(declare-fun lemmaMapOnSingletonSet!4 ((InoxSet Context!9058) Context!9058 Int) Unit!154102)

(assert (=> b!5393643 (= lt!2197728 (lemmaMapOnSingletonSet!4 lt!2197722 lt!2197700 lambda!280326))))

(declare-fun b!5393644 () Bool)

(declare-fun e!3344782 () Bool)

(declare-fun e!3344771 () Bool)

(assert (=> b!5393644 (= e!3344782 e!3344771)))

(declare-fun res!2292109 () Bool)

(assert (=> b!5393644 (=> res!2292109 e!3344771)))

(declare-fun unfocusZipper!887 (List!61735) Regex!15145)

(assert (=> b!5393644 (= res!2292109 (not (= (unfocusZipper!887 (Cons!61611 lt!2197700 Nil!61611)) (reg!15474 (regOne!30802 r!7292)))))))

(declare-fun lt!2197718 () (InoxSet Context!9058))

(declare-fun lambda!280325 () Int)

(declare-fun flatMap!872 ((InoxSet Context!9058) Int) (InoxSet Context!9058))

(declare-fun derivationStepZipperUp!517 (Context!9058 C!30560) (InoxSet Context!9058))

(assert (=> b!5393644 (= (flatMap!872 lt!2197718 lambda!280325) (derivationStepZipperUp!517 lt!2197703 (h!68060 s!2326)))))

(declare-fun lt!2197729 () Unit!154102)

(declare-fun lemmaFlatMapOnSingletonSet!404 ((InoxSet Context!9058) Context!9058 Int) Unit!154102)

(assert (=> b!5393644 (= lt!2197729 (lemmaFlatMapOnSingletonSet!404 lt!2197718 lt!2197703 lambda!280325))))

(assert (=> b!5393644 (= (flatMap!872 lt!2197722 lambda!280325) (derivationStepZipperUp!517 lt!2197700 (h!68060 s!2326)))))

(declare-fun lt!2197708 () Unit!154102)

(assert (=> b!5393644 (= lt!2197708 (lemmaFlatMapOnSingletonSet!404 lt!2197722 lt!2197700 lambda!280325))))

(declare-fun lt!2197706 () (InoxSet Context!9058))

(assert (=> b!5393644 (= lt!2197706 (derivationStepZipperUp!517 lt!2197703 (h!68060 s!2326)))))

(declare-fun lt!2197710 () (InoxSet Context!9058))

(assert (=> b!5393644 (= lt!2197710 (derivationStepZipperUp!517 lt!2197700 (h!68060 s!2326)))))

(assert (=> b!5393644 (= lt!2197718 (store ((as const (Array Context!9058 Bool)) false) lt!2197703 true))))

(assert (=> b!5393644 (= lt!2197722 (store ((as const (Array Context!9058 Bool)) false) lt!2197700 true))))

(assert (=> b!5393644 (= lt!2197700 (Context!9059 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610)))))

(declare-fun b!5393645 () Bool)

(declare-fun ++!13466 (List!61736 List!61736) List!61736)

(assert (=> b!5393645 (= e!3344765 (= (++!13466 Nil!61612 s!2326) s!2326))))

(declare-fun findConcatSeparationZippers!2 ((InoxSet Context!9058) (InoxSet Context!9058) List!61736 List!61736 List!61736) Option!15256)

(assert (=> b!5393645 (isDefined!11959 (findConcatSeparationZippers!2 lt!2197722 lt!2197718 Nil!61612 s!2326 s!2326))))

(declare-fun lt!2197719 () Unit!154102)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!2 ((InoxSet Context!9058) Context!9058 List!61736) Unit!154102)

(assert (=> b!5393645 (= lt!2197719 (lemmaConcatZipperMatchesStringThenFindConcatDefined!2 lt!2197722 lt!2197703 s!2326))))

(declare-fun b!5393646 () Bool)

(declare-fun e!3344776 () Bool)

(assert (=> b!5393646 (= e!3344769 e!3344776)))

(declare-fun res!2292129 () Bool)

(assert (=> b!5393646 (=> (not res!2292129) (not e!3344776))))

(assert (=> b!5393646 (= res!2292129 (= r!7292 lt!2197731))))

(assert (=> b!5393646 (= lt!2197731 (unfocusZipper!887 zl!343))))

(declare-fun b!5393647 () Bool)

(declare-fun res!2292099 () Bool)

(assert (=> b!5393647 (=> (not res!2292099) (not e!3344769))))

(declare-fun toList!8929 ((InoxSet Context!9058)) List!61735)

(assert (=> b!5393647 (= res!2292099 (= (toList!8929 z!1189) zl!343))))

(declare-fun b!5393648 () Bool)

(declare-fun tp!1493240 () Bool)

(declare-fun tp!1493243 () Bool)

(assert (=> b!5393648 (= e!3344768 (and tp!1493240 tp!1493243))))

(declare-fun b!5393649 () Bool)

(declare-fun res!2292118 () Bool)

(assert (=> b!5393649 (=> res!2292118 e!3344783)))

(declare-fun generalisedUnion!1074 (List!61734) Regex!15145)

(declare-fun unfocusZipperList!587 (List!61735) List!61734)

(assert (=> b!5393649 (= res!2292118 (not (= r!7292 (generalisedUnion!1074 (unfocusZipperList!587 zl!343)))))))

(declare-fun b!5393650 () Bool)

(declare-fun tp!1493245 () Bool)

(assert (=> b!5393650 (= e!3344768 tp!1493245)))

(declare-fun b!5393651 () Bool)

(declare-fun e!3344780 () Bool)

(declare-fun tp!1493242 () Bool)

(declare-fun inv!81109 (Context!9058) Bool)

(assert (=> b!5393651 (= e!3344766 (and (inv!81109 (h!68059 zl!343)) e!3344780 tp!1493242))))

(declare-fun b!5393652 () Bool)

(declare-fun res!2292103 () Bool)

(declare-fun e!3344773 () Bool)

(assert (=> b!5393652 (=> res!2292103 e!3344773)))

(assert (=> b!5393652 (= res!2292103 (not (matchZipper!1389 z!1189 s!2326)))))

(declare-fun b!5393653 () Bool)

(assert (=> b!5393653 (= e!3344773 e!3344778)))

(declare-fun res!2292122 () Bool)

(assert (=> b!5393653 (=> res!2292122 e!3344778)))

(declare-fun e!3344775 () Bool)

(assert (=> b!5393653 (= res!2292122 e!3344775)))

(declare-fun res!2292107 () Bool)

(assert (=> b!5393653 (=> (not res!2292107) (not e!3344775))))

(declare-fun lt!2197720 () Bool)

(assert (=> b!5393653 (= res!2292107 (not lt!2197720))))

(assert (=> b!5393653 (= lt!2197720 (matchZipper!1389 lt!2197712 (t!374959 s!2326)))))

(declare-fun b!5393654 () Bool)

(declare-fun res!2292121 () Bool)

(assert (=> b!5393654 (=> res!2292121 e!3344773)))

(declare-fun lt!2197709 () Bool)

(assert (=> b!5393654 (= res!2292121 (not lt!2197709))))

(declare-fun b!5393655 () Bool)

(declare-fun e!3344774 () Bool)

(declare-fun e!3344785 () Bool)

(assert (=> b!5393655 (= e!3344774 e!3344785)))

(declare-fun res!2292102 () Bool)

(assert (=> b!5393655 (=> res!2292102 e!3344785)))

(declare-fun lt!2197724 () (InoxSet Context!9058))

(assert (=> b!5393655 (= res!2292102 (not (= lt!2197712 lt!2197724)))))

(declare-fun derivationStepZipperDown!593 (Regex!15145 Context!9058 C!30560) (InoxSet Context!9058))

(assert (=> b!5393655 (= lt!2197724 (derivationStepZipperDown!593 (reg!15474 (regOne!30802 r!7292)) lt!2197703 (h!68060 s!2326)))))

(assert (=> b!5393655 (= lt!2197703 (Context!9059 lt!2197725))))

(assert (=> b!5393655 (= lt!2197725 (Cons!61610 lt!2197727 (t!374957 (exprs!5029 (h!68059 zl!343)))))))

(assert (=> b!5393655 (= lt!2197727 (Star!15145 (reg!15474 (regOne!30802 r!7292))))))

(declare-fun tp!1493249 () Bool)

(declare-fun setElem!35057 () Context!9058)

(declare-fun setNonEmpty!35057 () Bool)

(assert (=> setNonEmpty!35057 (= setRes!35057 (and tp!1493249 (inv!81109 setElem!35057) e!3344784))))

(declare-fun setRest!35057 () (InoxSet Context!9058))

(assert (=> setNonEmpty!35057 (= z!1189 ((_ map or) (store ((as const (Array Context!9058 Bool)) false) setElem!35057 true) setRest!35057))))

(declare-fun b!5393656 () Bool)

(declare-fun res!2292125 () Bool)

(assert (=> b!5393656 (=> res!2292125 e!3344774)))

(assert (=> b!5393656 (= res!2292125 (or ((_ is Concat!23990) (regOne!30802 r!7292)) (not ((_ is Star!15145) (regOne!30802 r!7292)))))))

(declare-fun b!5393657 () Bool)

(assert (=> b!5393657 (= e!3344768 tp_is_empty!39543)))

(declare-fun b!5393658 () Bool)

(declare-fun e!3344770 () Bool)

(assert (=> b!5393658 (= e!3344770 e!3344777)))

(declare-fun res!2292108 () Bool)

(assert (=> b!5393658 (=> res!2292108 e!3344777)))

(declare-fun lt!2197713 () (InoxSet Context!9058))

(declare-fun lt!2197716 () Bool)

(assert (=> b!5393658 (= res!2292108 (not (= lt!2197716 (matchZipper!1389 lt!2197713 (t!374959 s!2326)))))))

(assert (=> b!5393658 (= lt!2197716 (matchZipper!1389 lt!2197732 s!2326))))

(declare-fun b!5393659 () Bool)

(declare-fun res!2292127 () Bool)

(assert (=> b!5393659 (=> res!2292127 e!3344778)))

(assert (=> b!5393659 (= res!2292127 (or (not lt!2197720) (not lt!2197716)))))

(declare-fun b!5393660 () Bool)

(declare-fun res!2292101 () Bool)

(assert (=> b!5393660 (=> res!2292101 e!3344783)))

(assert (=> b!5393660 (= res!2292101 (or ((_ is EmptyExpr!15145) r!7292) ((_ is EmptyLang!15145) r!7292) ((_ is ElementMatch!15145) r!7292) ((_ is Union!15145) r!7292) (not ((_ is Concat!23990) r!7292))))))

(declare-fun b!5393661 () Bool)

(declare-fun res!2292110 () Bool)

(assert (=> b!5393661 (=> res!2292110 e!3344771)))

(assert (=> b!5393661 (= res!2292110 (not (= (unfocusZipper!887 (Cons!61611 lt!2197703 Nil!61611)) lt!2197730)))))

(declare-fun b!5393662 () Bool)

(assert (=> b!5393662 (= e!3344775 (not (matchZipper!1389 lt!2197704 (t!374959 s!2326))))))

(declare-fun b!5393663 () Bool)

(declare-fun Unit!154105 () Unit!154102)

(assert (=> b!5393663 (= e!3344767 Unit!154105)))

(declare-fun b!5393664 () Bool)

(assert (=> b!5393664 (= e!3344785 e!3344770)))

(declare-fun res!2292124 () Bool)

(assert (=> b!5393664 (=> res!2292124 e!3344770)))

(assert (=> b!5393664 (= res!2292124 (not (= lt!2197713 lt!2197724)))))

(declare-fun lt!2197715 () Context!9058)

(assert (=> b!5393664 (= (flatMap!872 lt!2197732 lambda!280325) (derivationStepZipperUp!517 lt!2197715 (h!68060 s!2326)))))

(declare-fun lt!2197701 () Unit!154102)

(assert (=> b!5393664 (= lt!2197701 (lemmaFlatMapOnSingletonSet!404 lt!2197732 lt!2197715 lambda!280325))))

(declare-fun lt!2197721 () (InoxSet Context!9058))

(assert (=> b!5393664 (= lt!2197721 (derivationStepZipperUp!517 lt!2197715 (h!68060 s!2326)))))

(declare-fun derivationStepZipper!1384 ((InoxSet Context!9058) C!30560) (InoxSet Context!9058))

(assert (=> b!5393664 (= lt!2197713 (derivationStepZipper!1384 lt!2197732 (h!68060 s!2326)))))

(assert (=> b!5393664 (= lt!2197732 (store ((as const (Array Context!9058 Bool)) false) lt!2197715 true))))

(assert (=> b!5393664 (= lt!2197715 (Context!9059 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) lt!2197725)))))

(assert (=> b!5393665 (= e!3344772 e!3344774)))

(declare-fun res!2292106 () Bool)

(assert (=> b!5393665 (=> res!2292106 e!3344774)))

(assert (=> b!5393665 (= res!2292106 (or (and ((_ is ElementMatch!15145) (regOne!30802 r!7292)) (= (c!939945 (regOne!30802 r!7292)) (h!68060 s!2326))) ((_ is Union!15145) (regOne!30802 r!7292))))))

(declare-fun lt!2197717 () Unit!154102)

(assert (=> b!5393665 (= lt!2197717 e!3344767)))

(declare-fun c!939944 () Bool)

(assert (=> b!5393665 (= c!939944 lt!2197709)))

(declare-fun nullable!5314 (Regex!15145) Bool)

(assert (=> b!5393665 (= lt!2197709 (nullable!5314 (h!68058 (exprs!5029 (h!68059 zl!343)))))))

(assert (=> b!5393665 (= (flatMap!872 z!1189 lambda!280325) (derivationStepZipperUp!517 (h!68059 zl!343) (h!68060 s!2326)))))

(declare-fun lt!2197734 () Unit!154102)

(assert (=> b!5393665 (= lt!2197734 (lemmaFlatMapOnSingletonSet!404 z!1189 (h!68059 zl!343) lambda!280325))))

(declare-fun lt!2197714 () Context!9058)

(assert (=> b!5393665 (= lt!2197704 (derivationStepZipperUp!517 lt!2197714 (h!68060 s!2326)))))

(assert (=> b!5393665 (= lt!2197712 (derivationStepZipperDown!593 (h!68058 (exprs!5029 (h!68059 zl!343))) lt!2197714 (h!68060 s!2326)))))

(assert (=> b!5393665 (= lt!2197714 (Context!9059 (t!374957 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun lt!2197726 () (InoxSet Context!9058))

(assert (=> b!5393665 (= lt!2197726 (derivationStepZipperUp!517 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343))))) (h!68060 s!2326)))))

(declare-fun b!5393666 () Bool)

(declare-fun e!3344786 () Bool)

(assert (=> b!5393666 (= e!3344786 (nullable!5314 (regOne!30802 (regOne!30802 r!7292))))))

(declare-fun b!5393667 () Bool)

(declare-fun tp!1493247 () Bool)

(assert (=> b!5393667 (= e!3344780 tp!1493247)))

(declare-fun b!5393668 () Bool)

(declare-fun res!2292123 () Bool)

(assert (=> b!5393668 (=> res!2292123 e!3344783)))

(assert (=> b!5393668 (= res!2292123 (not ((_ is Cons!61610) (exprs!5029 (h!68059 zl!343)))))))

(declare-fun b!5393669 () Bool)

(assert (=> b!5393669 (= e!3344771 e!3344773)))

(declare-fun res!2292112 () Bool)

(assert (=> b!5393669 (=> res!2292112 e!3344773)))

(assert (=> b!5393669 (= res!2292112 lt!2197707)))

(declare-fun lt!2197705 () Regex!15145)

(declare-fun matchR!7330 (Regex!15145 List!61736) Bool)

(declare-fun matchRSpec!2248 (Regex!15145 List!61736) Bool)

(assert (=> b!5393669 (= (matchR!7330 lt!2197705 s!2326) (matchRSpec!2248 lt!2197705 s!2326))))

(declare-fun lt!2197697 () Unit!154102)

(declare-fun mainMatchTheorem!2248 (Regex!15145 List!61736) Unit!154102)

(assert (=> b!5393669 (= lt!2197697 (mainMatchTheorem!2248 lt!2197705 s!2326))))

(declare-fun b!5393670 () Bool)

(assert (=> b!5393670 (= e!3344781 (matchZipper!1389 lt!2197704 (t!374959 s!2326)))))

(declare-fun b!5393671 () Bool)

(declare-fun res!2292113 () Bool)

(assert (=> b!5393671 (=> res!2292113 e!3344772)))

(declare-fun isEmpty!33610 (List!61734) Bool)

(assert (=> b!5393671 (= res!2292113 (isEmpty!33610 (t!374957 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun b!5393672 () Bool)

(declare-fun res!2292111 () Bool)

(assert (=> b!5393672 (=> res!2292111 e!3344774)))

(assert (=> b!5393672 (= res!2292111 e!3344786)))

(declare-fun res!2292114 () Bool)

(assert (=> b!5393672 (=> (not res!2292114) (not e!3344786))))

(assert (=> b!5393672 (= res!2292114 ((_ is Concat!23990) (regOne!30802 r!7292)))))

(declare-fun b!5393673 () Bool)

(declare-fun tp!1493241 () Bool)

(declare-fun tp!1493248 () Bool)

(assert (=> b!5393673 (= e!3344768 (and tp!1493241 tp!1493248))))

(declare-fun b!5393674 () Bool)

(assert (=> b!5393674 (= e!3344776 (not e!3344783))))

(declare-fun res!2292117 () Bool)

(assert (=> b!5393674 (=> res!2292117 e!3344783)))

(assert (=> b!5393674 (= res!2292117 (not ((_ is Cons!61611) zl!343)))))

(assert (=> b!5393674 (= lt!2197707 (matchRSpec!2248 r!7292 s!2326))))

(assert (=> b!5393674 (= lt!2197707 (matchR!7330 r!7292 s!2326))))

(declare-fun lt!2197698 () Unit!154102)

(assert (=> b!5393674 (= lt!2197698 (mainMatchTheorem!2248 r!7292 s!2326))))

(declare-fun b!5393675 () Bool)

(assert (=> b!5393675 (= e!3344764 e!3344782)))

(declare-fun res!2292128 () Bool)

(assert (=> b!5393675 (=> res!2292128 e!3344782)))

(assert (=> b!5393675 (= res!2292128 (not (= (unfocusZipper!887 (Cons!61611 lt!2197715 Nil!61611)) lt!2197705)))))

(assert (=> b!5393675 (= lt!2197705 (Concat!23990 (reg!15474 (regOne!30802 r!7292)) lt!2197730))))

(assert (= (and start!566698 res!2292116) b!5393647))

(assert (= (and b!5393647 res!2292099) b!5393646))

(assert (= (and b!5393646 res!2292129) b!5393674))

(assert (= (and b!5393674 (not res!2292117)) b!5393635))

(assert (= (and b!5393635 (not res!2292120)) b!5393640))

(assert (= (and b!5393640 (not res!2292104)) b!5393668))

(assert (= (and b!5393668 (not res!2292123)) b!5393649))

(assert (= (and b!5393649 (not res!2292118)) b!5393660))

(assert (= (and b!5393660 (not res!2292101)) b!5393637))

(assert (= (and b!5393637 (not res!2292115)) b!5393671))

(assert (= (and b!5393671 (not res!2292113)) b!5393665))

(assert (= (and b!5393665 c!939944) b!5393639))

(assert (= (and b!5393665 (not c!939944)) b!5393663))

(assert (= (and b!5393639 (not res!2292126)) b!5393670))

(assert (= (and b!5393665 (not res!2292106)) b!5393672))

(assert (= (and b!5393672 res!2292114) b!5393666))

(assert (= (and b!5393672 (not res!2292111)) b!5393656))

(assert (= (and b!5393656 (not res!2292125)) b!5393655))

(assert (= (and b!5393655 (not res!2292102)) b!5393664))

(assert (= (and b!5393664 (not res!2292124)) b!5393658))

(assert (= (and b!5393658 (not res!2292108)) b!5393636))

(assert (= (and b!5393636 (not res!2292100)) b!5393642))

(assert (= (and b!5393642 (not res!2292105)) b!5393675))

(assert (= (and b!5393675 (not res!2292128)) b!5393644))

(assert (= (and b!5393644 (not res!2292109)) b!5393661))

(assert (= (and b!5393661 (not res!2292110)) b!5393669))

(assert (= (and b!5393669 (not res!2292112)) b!5393652))

(assert (= (and b!5393652 (not res!2292103)) b!5393654))

(assert (= (and b!5393654 (not res!2292121)) b!5393653))

(assert (= (and b!5393653 res!2292107) b!5393662))

(assert (= (and b!5393653 (not res!2292122)) b!5393659))

(assert (= (and b!5393659 (not res!2292127)) b!5393643))

(assert (= (and b!5393643 (not res!2292119)) b!5393645))

(assert (= (and start!566698 ((_ is ElementMatch!15145) r!7292)) b!5393657))

(assert (= (and start!566698 ((_ is Concat!23990) r!7292)) b!5393673))

(assert (= (and start!566698 ((_ is Star!15145) r!7292)) b!5393650))

(assert (= (and start!566698 ((_ is Union!15145) r!7292)) b!5393648))

(assert (= (and start!566698 condSetEmpty!35057) setIsEmpty!35057))

(assert (= (and start!566698 (not condSetEmpty!35057)) setNonEmpty!35057))

(assert (= setNonEmpty!35057 b!5393641))

(assert (= b!5393651 b!5393667))

(assert (= (and start!566698 ((_ is Cons!61611) zl!343)) b!5393651))

(assert (= (and start!566698 ((_ is Cons!61612) s!2326)) b!5393638))

(declare-fun m!6418868 () Bool)

(assert (=> b!5393649 m!6418868))

(assert (=> b!5393649 m!6418868))

(declare-fun m!6418870 () Bool)

(assert (=> b!5393649 m!6418870))

(declare-fun m!6418872 () Bool)

(assert (=> b!5393664 m!6418872))

(declare-fun m!6418874 () Bool)

(assert (=> b!5393664 m!6418874))

(declare-fun m!6418876 () Bool)

(assert (=> b!5393664 m!6418876))

(declare-fun m!6418878 () Bool)

(assert (=> b!5393664 m!6418878))

(declare-fun m!6418880 () Bool)

(assert (=> b!5393664 m!6418880))

(declare-fun m!6418882 () Bool)

(assert (=> b!5393652 m!6418882))

(declare-fun m!6418884 () Bool)

(assert (=> b!5393651 m!6418884))

(declare-fun m!6418886 () Bool)

(assert (=> b!5393658 m!6418886))

(declare-fun m!6418888 () Bool)

(assert (=> b!5393658 m!6418888))

(declare-fun m!6418890 () Bool)

(assert (=> b!5393662 m!6418890))

(declare-fun m!6418892 () Bool)

(assert (=> b!5393643 m!6418892))

(declare-fun m!6418894 () Bool)

(assert (=> b!5393643 m!6418894))

(declare-fun m!6418896 () Bool)

(assert (=> b!5393643 m!6418896))

(declare-fun m!6418898 () Bool)

(assert (=> b!5393643 m!6418898))

(declare-fun m!6418900 () Bool)

(assert (=> b!5393643 m!6418900))

(declare-fun m!6418902 () Bool)

(assert (=> b!5393643 m!6418902))

(declare-fun m!6418904 () Bool)

(assert (=> setNonEmpty!35057 m!6418904))

(declare-fun m!6418906 () Bool)

(assert (=> b!5393639 m!6418906))

(declare-fun m!6418908 () Bool)

(assert (=> b!5393639 m!6418908))

(declare-fun m!6418910 () Bool)

(assert (=> b!5393639 m!6418910))

(declare-fun m!6418912 () Bool)

(assert (=> b!5393655 m!6418912))

(declare-fun m!6418914 () Bool)

(assert (=> b!5393647 m!6418914))

(declare-fun m!6418916 () Bool)

(assert (=> b!5393644 m!6418916))

(declare-fun m!6418918 () Bool)

(assert (=> b!5393644 m!6418918))

(declare-fun m!6418920 () Bool)

(assert (=> b!5393644 m!6418920))

(declare-fun m!6418922 () Bool)

(assert (=> b!5393644 m!6418922))

(declare-fun m!6418924 () Bool)

(assert (=> b!5393644 m!6418924))

(declare-fun m!6418926 () Bool)

(assert (=> b!5393644 m!6418926))

(declare-fun m!6418928 () Bool)

(assert (=> b!5393644 m!6418928))

(declare-fun m!6418930 () Bool)

(assert (=> b!5393644 m!6418930))

(declare-fun m!6418932 () Bool)

(assert (=> b!5393644 m!6418932))

(declare-fun m!6418934 () Bool)

(assert (=> b!5393674 m!6418934))

(declare-fun m!6418936 () Bool)

(assert (=> b!5393674 m!6418936))

(declare-fun m!6418938 () Bool)

(assert (=> b!5393674 m!6418938))

(declare-fun m!6418940 () Bool)

(assert (=> start!566698 m!6418940))

(declare-fun m!6418942 () Bool)

(assert (=> b!5393635 m!6418942))

(declare-fun m!6418944 () Bool)

(assert (=> b!5393669 m!6418944))

(declare-fun m!6418946 () Bool)

(assert (=> b!5393669 m!6418946))

(declare-fun m!6418948 () Bool)

(assert (=> b!5393669 m!6418948))

(declare-fun m!6418950 () Bool)

(assert (=> b!5393661 m!6418950))

(assert (=> b!5393670 m!6418890))

(assert (=> b!5393653 m!6418908))

(declare-fun m!6418952 () Bool)

(assert (=> b!5393675 m!6418952))

(declare-fun m!6418954 () Bool)

(assert (=> b!5393637 m!6418954))

(declare-fun m!6418956 () Bool)

(assert (=> b!5393637 m!6418956))

(declare-fun m!6418958 () Bool)

(assert (=> b!5393637 m!6418958))

(declare-fun m!6418960 () Bool)

(assert (=> b!5393637 m!6418960))

(assert (=> b!5393637 m!6418956))

(declare-fun m!6418962 () Bool)

(assert (=> b!5393637 m!6418962))

(assert (=> b!5393637 m!6418958))

(declare-fun m!6418964 () Bool)

(assert (=> b!5393637 m!6418964))

(declare-fun m!6418966 () Bool)

(assert (=> b!5393666 m!6418966))

(declare-fun m!6418968 () Bool)

(assert (=> b!5393665 m!6418968))

(declare-fun m!6418970 () Bool)

(assert (=> b!5393665 m!6418970))

(declare-fun m!6418972 () Bool)

(assert (=> b!5393665 m!6418972))

(declare-fun m!6418974 () Bool)

(assert (=> b!5393665 m!6418974))

(declare-fun m!6418976 () Bool)

(assert (=> b!5393665 m!6418976))

(declare-fun m!6418978 () Bool)

(assert (=> b!5393665 m!6418978))

(declare-fun m!6418980 () Bool)

(assert (=> b!5393665 m!6418980))

(declare-fun m!6418982 () Bool)

(assert (=> b!5393640 m!6418982))

(declare-fun m!6418984 () Bool)

(assert (=> b!5393646 m!6418984))

(declare-fun m!6418986 () Bool)

(assert (=> b!5393671 m!6418986))

(declare-fun m!6418988 () Bool)

(assert (=> b!5393645 m!6418988))

(declare-fun m!6418990 () Bool)

(assert (=> b!5393645 m!6418990))

(assert (=> b!5393645 m!6418990))

(declare-fun m!6418992 () Bool)

(assert (=> b!5393645 m!6418992))

(declare-fun m!6418994 () Bool)

(assert (=> b!5393645 m!6418994))

(check-sat (not b!5393640) (not b!5393669) (not b!5393643) (not b!5393666) (not b!5393650) (not b!5393662) (not b!5393673) (not b!5393646) (not b!5393648) (not setNonEmpty!35057) (not b!5393653) (not b!5393635) (not b!5393647) (not b!5393658) (not b!5393645) (not b!5393641) (not b!5393671) (not b!5393675) (not b!5393661) (not b!5393665) (not b!5393638) (not b!5393655) (not b!5393670) (not b!5393637) (not b!5393644) (not b!5393639) (not b!5393667) (not b!5393649) (not b!5393651) (not b!5393674) tp_is_empty!39543 (not b!5393664) (not b!5393652) (not start!566698))
(check-sat)
(get-model)

(declare-fun d!1724004 () Bool)

(declare-fun c!940045 () Bool)

(declare-fun isEmpty!33613 (List!61736) Bool)

(assert (=> d!1724004 (= c!940045 (isEmpty!33613 s!2326))))

(declare-fun e!3344963 () Bool)

(assert (=> d!1724004 (= (matchZipper!1389 z!1189 s!2326) e!3344963)))

(declare-fun b!5393984 () Bool)

(declare-fun nullableZipper!1426 ((InoxSet Context!9058)) Bool)

(assert (=> b!5393984 (= e!3344963 (nullableZipper!1426 z!1189))))

(declare-fun b!5393985 () Bool)

(declare-fun head!11570 (List!61736) C!30560)

(declare-fun tail!10667 (List!61736) List!61736)

(assert (=> b!5393985 (= e!3344963 (matchZipper!1389 (derivationStepZipper!1384 z!1189 (head!11570 s!2326)) (tail!10667 s!2326)))))

(assert (= (and d!1724004 c!940045) b!5393984))

(assert (= (and d!1724004 (not c!940045)) b!5393985))

(declare-fun m!6419278 () Bool)

(assert (=> d!1724004 m!6419278))

(declare-fun m!6419280 () Bool)

(assert (=> b!5393984 m!6419280))

(declare-fun m!6419282 () Bool)

(assert (=> b!5393985 m!6419282))

(assert (=> b!5393985 m!6419282))

(declare-fun m!6419284 () Bool)

(assert (=> b!5393985 m!6419284))

(declare-fun m!6419286 () Bool)

(assert (=> b!5393985 m!6419286))

(assert (=> b!5393985 m!6419284))

(assert (=> b!5393985 m!6419286))

(declare-fun m!6419288 () Bool)

(assert (=> b!5393985 m!6419288))

(assert (=> b!5393652 d!1724004))

(declare-fun bs!1247660 () Bool)

(declare-fun d!1724006 () Bool)

(assert (= bs!1247660 (and d!1724006 b!5393643)))

(declare-fun lambda!280358 () Int)

(assert (=> bs!1247660 (= lambda!280358 lambda!280327)))

(declare-fun forall!14519 (List!61734 Int) Bool)

(assert (=> d!1724006 (= (inv!81109 (h!68059 zl!343)) (forall!14519 (exprs!5029 (h!68059 zl!343)) lambda!280358))))

(declare-fun bs!1247661 () Bool)

(assert (= bs!1247661 d!1724006))

(declare-fun m!6419290 () Bool)

(assert (=> bs!1247661 m!6419290))

(assert (=> b!5393651 d!1724006))

(declare-fun b!5394047 () Bool)

(declare-fun res!2292272 () Bool)

(declare-fun e!3345003 () Bool)

(assert (=> b!5394047 (=> res!2292272 e!3345003)))

(assert (=> b!5394047 (= res!2292272 (not ((_ is Concat!23990) r!7292)))))

(declare-fun e!3345002 () Bool)

(assert (=> b!5394047 (= e!3345002 e!3345003)))

(declare-fun b!5394048 () Bool)

(declare-fun e!3345001 () Bool)

(declare-fun call!386105 () Bool)

(assert (=> b!5394048 (= e!3345001 call!386105)))

(declare-fun d!1724008 () Bool)

(declare-fun res!2292273 () Bool)

(declare-fun e!3345007 () Bool)

(assert (=> d!1724008 (=> res!2292273 e!3345007)))

(assert (=> d!1724008 (= res!2292273 ((_ is ElementMatch!15145) r!7292))))

(assert (=> d!1724008 (= (validRegex!6881 r!7292) e!3345007)))

(declare-fun b!5394049 () Bool)

(declare-fun e!3345004 () Bool)

(assert (=> b!5394049 (= e!3345003 e!3345004)))

(declare-fun res!2292269 () Bool)

(assert (=> b!5394049 (=> (not res!2292269) (not e!3345004))))

(declare-fun call!386104 () Bool)

(assert (=> b!5394049 (= res!2292269 call!386104)))

(declare-fun bm!386099 () Bool)

(declare-fun c!940060 () Bool)

(assert (=> bm!386099 (= call!386104 (validRegex!6881 (ite c!940060 (regOne!30803 r!7292) (regOne!30802 r!7292))))))

(declare-fun b!5394050 () Bool)

(declare-fun e!3345005 () Bool)

(assert (=> b!5394050 (= e!3345007 e!3345005)))

(declare-fun c!940061 () Bool)

(assert (=> b!5394050 (= c!940061 ((_ is Star!15145) r!7292))))

(declare-fun b!5394051 () Bool)

(declare-fun e!3345006 () Bool)

(declare-fun call!386106 () Bool)

(assert (=> b!5394051 (= e!3345006 call!386106)))

(declare-fun bm!386100 () Bool)

(assert (=> bm!386100 (= call!386105 (validRegex!6881 (ite c!940061 (reg!15474 r!7292) (ite c!940060 (regTwo!30803 r!7292) (regTwo!30802 r!7292)))))))

(declare-fun bm!386101 () Bool)

(assert (=> bm!386101 (= call!386106 call!386105)))

(declare-fun b!5394052 () Bool)

(assert (=> b!5394052 (= e!3345004 call!386106)))

(declare-fun b!5394053 () Bool)

(assert (=> b!5394053 (= e!3345005 e!3345002)))

(assert (=> b!5394053 (= c!940060 ((_ is Union!15145) r!7292))))

(declare-fun b!5394054 () Bool)

(declare-fun res!2292271 () Bool)

(assert (=> b!5394054 (=> (not res!2292271) (not e!3345006))))

(assert (=> b!5394054 (= res!2292271 call!386104)))

(assert (=> b!5394054 (= e!3345002 e!3345006)))

(declare-fun b!5394055 () Bool)

(assert (=> b!5394055 (= e!3345005 e!3345001)))

(declare-fun res!2292270 () Bool)

(assert (=> b!5394055 (= res!2292270 (not (nullable!5314 (reg!15474 r!7292))))))

(assert (=> b!5394055 (=> (not res!2292270) (not e!3345001))))

(assert (= (and d!1724008 (not res!2292273)) b!5394050))

(assert (= (and b!5394050 c!940061) b!5394055))

(assert (= (and b!5394050 (not c!940061)) b!5394053))

(assert (= (and b!5394055 res!2292270) b!5394048))

(assert (= (and b!5394053 c!940060) b!5394054))

(assert (= (and b!5394053 (not c!940060)) b!5394047))

(assert (= (and b!5394054 res!2292271) b!5394051))

(assert (= (and b!5394047 (not res!2292272)) b!5394049))

(assert (= (and b!5394049 res!2292269) b!5394052))

(assert (= (or b!5394051 b!5394052) bm!386101))

(assert (= (or b!5394054 b!5394049) bm!386099))

(assert (= (or b!5394048 bm!386101) bm!386100))

(declare-fun m!6419298 () Bool)

(assert (=> bm!386099 m!6419298))

(declare-fun m!6419300 () Bool)

(assert (=> bm!386100 m!6419300))

(declare-fun m!6419302 () Bool)

(assert (=> b!5394055 m!6419302))

(assert (=> start!566698 d!1724008))

(declare-fun d!1724012 () Bool)

(assert (=> d!1724012 (= (isEmpty!33610 (t!374957 (exprs!5029 (h!68059 zl!343)))) ((_ is Nil!61610) (t!374957 (exprs!5029 (h!68059 zl!343)))))))

(assert (=> b!5393671 d!1724012))

(declare-fun d!1724014 () Bool)

(declare-fun c!940062 () Bool)

(assert (=> d!1724014 (= c!940062 (isEmpty!33613 (t!374959 s!2326)))))

(declare-fun e!3345008 () Bool)

(assert (=> d!1724014 (= (matchZipper!1389 lt!2197704 (t!374959 s!2326)) e!3345008)))

(declare-fun b!5394056 () Bool)

(assert (=> b!5394056 (= e!3345008 (nullableZipper!1426 lt!2197704))))

(declare-fun b!5394057 () Bool)

(assert (=> b!5394057 (= e!3345008 (matchZipper!1389 (derivationStepZipper!1384 lt!2197704 (head!11570 (t!374959 s!2326))) (tail!10667 (t!374959 s!2326))))))

(assert (= (and d!1724014 c!940062) b!5394056))

(assert (= (and d!1724014 (not c!940062)) b!5394057))

(declare-fun m!6419304 () Bool)

(assert (=> d!1724014 m!6419304))

(declare-fun m!6419306 () Bool)

(assert (=> b!5394056 m!6419306))

(declare-fun m!6419308 () Bool)

(assert (=> b!5394057 m!6419308))

(assert (=> b!5394057 m!6419308))

(declare-fun m!6419310 () Bool)

(assert (=> b!5394057 m!6419310))

(declare-fun m!6419312 () Bool)

(assert (=> b!5394057 m!6419312))

(assert (=> b!5394057 m!6419310))

(assert (=> b!5394057 m!6419312))

(declare-fun m!6419314 () Bool)

(assert (=> b!5394057 m!6419314))

(assert (=> b!5393670 d!1724014))

(declare-fun bs!1247672 () Bool)

(declare-fun d!1724016 () Bool)

(assert (= bs!1247672 (and d!1724016 b!5393643)))

(declare-fun lambda!280363 () Int)

(assert (=> bs!1247672 (= lambda!280363 lambda!280327)))

(declare-fun bs!1247673 () Bool)

(assert (= bs!1247673 (and d!1724016 d!1724006)))

(assert (=> bs!1247673 (= lambda!280363 lambda!280358)))

(declare-fun b!5394104 () Bool)

(declare-fun e!3345037 () Regex!15145)

(assert (=> b!5394104 (= e!3345037 EmptyLang!15145)))

(declare-fun b!5394105 () Bool)

(declare-fun e!3345036 () Bool)

(declare-fun lt!2197806 () Regex!15145)

(declare-fun isEmptyLang!969 (Regex!15145) Bool)

(assert (=> b!5394105 (= e!3345036 (isEmptyLang!969 lt!2197806))))

(declare-fun b!5394106 () Bool)

(assert (=> b!5394106 (= e!3345037 (Union!15145 (h!68058 (unfocusZipperList!587 zl!343)) (generalisedUnion!1074 (t!374957 (unfocusZipperList!587 zl!343)))))))

(declare-fun b!5394107 () Bool)

(declare-fun e!3345038 () Bool)

(assert (=> b!5394107 (= e!3345038 (isEmpty!33610 (t!374957 (unfocusZipperList!587 zl!343))))))

(declare-fun b!5394108 () Bool)

(declare-fun e!3345039 () Regex!15145)

(assert (=> b!5394108 (= e!3345039 e!3345037)))

(declare-fun c!940077 () Bool)

(assert (=> b!5394108 (= c!940077 ((_ is Cons!61610) (unfocusZipperList!587 zl!343)))))

(declare-fun b!5394109 () Bool)

(declare-fun e!3345034 () Bool)

(assert (=> b!5394109 (= e!3345034 e!3345036)))

(declare-fun c!940080 () Bool)

(assert (=> b!5394109 (= c!940080 (isEmpty!33610 (unfocusZipperList!587 zl!343)))))

(declare-fun b!5394110 () Bool)

(declare-fun e!3345035 () Bool)

(assert (=> b!5394110 (= e!3345036 e!3345035)))

(declare-fun c!940078 () Bool)

(declare-fun tail!10668 (List!61734) List!61734)

(assert (=> b!5394110 (= c!940078 (isEmpty!33610 (tail!10668 (unfocusZipperList!587 zl!343))))))

(declare-fun b!5394111 () Bool)

(assert (=> b!5394111 (= e!3345039 (h!68058 (unfocusZipperList!587 zl!343)))))

(assert (=> d!1724016 e!3345034))

(declare-fun res!2292293 () Bool)

(assert (=> d!1724016 (=> (not res!2292293) (not e!3345034))))

(assert (=> d!1724016 (= res!2292293 (validRegex!6881 lt!2197806))))

(assert (=> d!1724016 (= lt!2197806 e!3345039)))

(declare-fun c!940079 () Bool)

(assert (=> d!1724016 (= c!940079 e!3345038)))

(declare-fun res!2292292 () Bool)

(assert (=> d!1724016 (=> (not res!2292292) (not e!3345038))))

(assert (=> d!1724016 (= res!2292292 ((_ is Cons!61610) (unfocusZipperList!587 zl!343)))))

(assert (=> d!1724016 (forall!14519 (unfocusZipperList!587 zl!343) lambda!280363)))

(assert (=> d!1724016 (= (generalisedUnion!1074 (unfocusZipperList!587 zl!343)) lt!2197806)))

(declare-fun b!5394112 () Bool)

(declare-fun head!11571 (List!61734) Regex!15145)

(assert (=> b!5394112 (= e!3345035 (= lt!2197806 (head!11571 (unfocusZipperList!587 zl!343))))))

(declare-fun b!5394113 () Bool)

(declare-fun isUnion!401 (Regex!15145) Bool)

(assert (=> b!5394113 (= e!3345035 (isUnion!401 lt!2197806))))

(assert (= (and d!1724016 res!2292292) b!5394107))

(assert (= (and d!1724016 c!940079) b!5394111))

(assert (= (and d!1724016 (not c!940079)) b!5394108))

(assert (= (and b!5394108 c!940077) b!5394106))

(assert (= (and b!5394108 (not c!940077)) b!5394104))

(assert (= (and d!1724016 res!2292293) b!5394109))

(assert (= (and b!5394109 c!940080) b!5394105))

(assert (= (and b!5394109 (not c!940080)) b!5394110))

(assert (= (and b!5394110 c!940078) b!5394112))

(assert (= (and b!5394110 (not c!940078)) b!5394113))

(assert (=> b!5394109 m!6418868))

(declare-fun m!6419354 () Bool)

(assert (=> b!5394109 m!6419354))

(declare-fun m!6419356 () Bool)

(assert (=> b!5394113 m!6419356))

(declare-fun m!6419358 () Bool)

(assert (=> d!1724016 m!6419358))

(assert (=> d!1724016 m!6418868))

(declare-fun m!6419360 () Bool)

(assert (=> d!1724016 m!6419360))

(declare-fun m!6419362 () Bool)

(assert (=> b!5394106 m!6419362))

(assert (=> b!5394112 m!6418868))

(declare-fun m!6419364 () Bool)

(assert (=> b!5394112 m!6419364))

(assert (=> b!5394110 m!6418868))

(declare-fun m!6419366 () Bool)

(assert (=> b!5394110 m!6419366))

(assert (=> b!5394110 m!6419366))

(declare-fun m!6419368 () Bool)

(assert (=> b!5394110 m!6419368))

(declare-fun m!6419370 () Bool)

(assert (=> b!5394107 m!6419370))

(declare-fun m!6419372 () Bool)

(assert (=> b!5394105 m!6419372))

(assert (=> b!5393649 d!1724016))

(declare-fun bs!1247683 () Bool)

(declare-fun d!1724030 () Bool)

(assert (= bs!1247683 (and d!1724030 b!5393643)))

(declare-fun lambda!280372 () Int)

(assert (=> bs!1247683 (= lambda!280372 lambda!280327)))

(declare-fun bs!1247684 () Bool)

(assert (= bs!1247684 (and d!1724030 d!1724006)))

(assert (=> bs!1247684 (= lambda!280372 lambda!280358)))

(declare-fun bs!1247685 () Bool)

(assert (= bs!1247685 (and d!1724030 d!1724016)))

(assert (=> bs!1247685 (= lambda!280372 lambda!280363)))

(declare-fun lt!2197815 () List!61734)

(assert (=> d!1724030 (forall!14519 lt!2197815 lambda!280372)))

(declare-fun e!3345055 () List!61734)

(assert (=> d!1724030 (= lt!2197815 e!3345055)))

(declare-fun c!940092 () Bool)

(assert (=> d!1724030 (= c!940092 ((_ is Cons!61611) zl!343))))

(assert (=> d!1724030 (= (unfocusZipperList!587 zl!343) lt!2197815)))

(declare-fun b!5394145 () Bool)

(assert (=> b!5394145 (= e!3345055 (Cons!61610 (generalisedConcat!814 (exprs!5029 (h!68059 zl!343))) (unfocusZipperList!587 (t!374958 zl!343))))))

(declare-fun b!5394146 () Bool)

(assert (=> b!5394146 (= e!3345055 Nil!61610)))

(assert (= (and d!1724030 c!940092) b!5394145))

(assert (= (and d!1724030 (not c!940092)) b!5394146))

(declare-fun m!6419394 () Bool)

(assert (=> d!1724030 m!6419394))

(assert (=> b!5394145 m!6418982))

(declare-fun m!6419396 () Bool)

(assert (=> b!5394145 m!6419396))

(assert (=> b!5393649 d!1724030))

(declare-fun b!5394240 () Bool)

(declare-fun res!2292322 () Bool)

(declare-fun e!3345106 () Bool)

(assert (=> b!5394240 (=> res!2292322 e!3345106)))

(assert (=> b!5394240 (= res!2292322 (not (isEmpty!33613 (tail!10667 s!2326))))))

(declare-fun b!5394241 () Bool)

(declare-fun e!3345102 () Bool)

(assert (=> b!5394241 (= e!3345102 e!3345106)))

(declare-fun res!2292325 () Bool)

(assert (=> b!5394241 (=> res!2292325 e!3345106)))

(declare-fun call!386121 () Bool)

(assert (=> b!5394241 (= res!2292325 call!386121)))

(declare-fun b!5394242 () Bool)

(declare-fun e!3345103 () Bool)

(assert (=> b!5394242 (= e!3345103 e!3345102)))

(declare-fun res!2292329 () Bool)

(assert (=> b!5394242 (=> (not res!2292329) (not e!3345102))))

(declare-fun lt!2197820 () Bool)

(assert (=> b!5394242 (= res!2292329 (not lt!2197820))))

(declare-fun b!5394243 () Bool)

(declare-fun res!2292324 () Bool)

(declare-fun e!3345100 () Bool)

(assert (=> b!5394243 (=> (not res!2292324) (not e!3345100))))

(assert (=> b!5394243 (= res!2292324 (not call!386121))))

(declare-fun b!5394244 () Bool)

(declare-fun e!3345101 () Bool)

(assert (=> b!5394244 (= e!3345101 (nullable!5314 lt!2197705))))

(declare-fun b!5394245 () Bool)

(declare-fun res!2292326 () Bool)

(assert (=> b!5394245 (=> res!2292326 e!3345103)))

(assert (=> b!5394245 (= res!2292326 (not ((_ is ElementMatch!15145) lt!2197705)))))

(declare-fun e!3345105 () Bool)

(assert (=> b!5394245 (= e!3345105 e!3345103)))

(declare-fun b!5394246 () Bool)

(declare-fun derivativeStep!4246 (Regex!15145 C!30560) Regex!15145)

(assert (=> b!5394246 (= e!3345101 (matchR!7330 (derivativeStep!4246 lt!2197705 (head!11570 s!2326)) (tail!10667 s!2326)))))

(declare-fun b!5394247 () Bool)

(declare-fun e!3345104 () Bool)

(assert (=> b!5394247 (= e!3345104 (= lt!2197820 call!386121))))

(declare-fun b!5394248 () Bool)

(assert (=> b!5394248 (= e!3345104 e!3345105)))

(declare-fun c!940104 () Bool)

(assert (=> b!5394248 (= c!940104 ((_ is EmptyLang!15145) lt!2197705))))

(declare-fun b!5394249 () Bool)

(assert (=> b!5394249 (= e!3345100 (= (head!11570 s!2326) (c!939945 lt!2197705)))))

(declare-fun d!1724040 () Bool)

(assert (=> d!1724040 e!3345104))

(declare-fun c!940105 () Bool)

(assert (=> d!1724040 (= c!940105 ((_ is EmptyExpr!15145) lt!2197705))))

(assert (=> d!1724040 (= lt!2197820 e!3345101)))

(declare-fun c!940103 () Bool)

(assert (=> d!1724040 (= c!940103 (isEmpty!33613 s!2326))))

(assert (=> d!1724040 (validRegex!6881 lt!2197705)))

(assert (=> d!1724040 (= (matchR!7330 lt!2197705 s!2326) lt!2197820)))

(declare-fun bm!386116 () Bool)

(assert (=> bm!386116 (= call!386121 (isEmpty!33613 s!2326))))

(declare-fun b!5394250 () Bool)

(declare-fun res!2292327 () Bool)

(assert (=> b!5394250 (=> res!2292327 e!3345103)))

(assert (=> b!5394250 (= res!2292327 e!3345100)))

(declare-fun res!2292328 () Bool)

(assert (=> b!5394250 (=> (not res!2292328) (not e!3345100))))

(assert (=> b!5394250 (= res!2292328 lt!2197820)))

(declare-fun b!5394251 () Bool)

(assert (=> b!5394251 (= e!3345106 (not (= (head!11570 s!2326) (c!939945 lt!2197705))))))

(declare-fun b!5394252 () Bool)

(declare-fun res!2292323 () Bool)

(assert (=> b!5394252 (=> (not res!2292323) (not e!3345100))))

(assert (=> b!5394252 (= res!2292323 (isEmpty!33613 (tail!10667 s!2326)))))

(declare-fun b!5394253 () Bool)

(assert (=> b!5394253 (= e!3345105 (not lt!2197820))))

(assert (= (and d!1724040 c!940103) b!5394244))

(assert (= (and d!1724040 (not c!940103)) b!5394246))

(assert (= (and d!1724040 c!940105) b!5394247))

(assert (= (and d!1724040 (not c!940105)) b!5394248))

(assert (= (and b!5394248 c!940104) b!5394253))

(assert (= (and b!5394248 (not c!940104)) b!5394245))

(assert (= (and b!5394245 (not res!2292326)) b!5394250))

(assert (= (and b!5394250 res!2292328) b!5394243))

(assert (= (and b!5394243 res!2292324) b!5394252))

(assert (= (and b!5394252 res!2292323) b!5394249))

(assert (= (and b!5394250 (not res!2292327)) b!5394242))

(assert (= (and b!5394242 res!2292329) b!5394241))

(assert (= (and b!5394241 (not res!2292325)) b!5394240))

(assert (= (and b!5394240 (not res!2292322)) b!5394251))

(assert (= (or b!5394247 b!5394241 b!5394243) bm!386116))

(assert (=> b!5394252 m!6419286))

(assert (=> b!5394252 m!6419286))

(declare-fun m!6419414 () Bool)

(assert (=> b!5394252 m!6419414))

(assert (=> b!5394240 m!6419286))

(assert (=> b!5394240 m!6419286))

(assert (=> b!5394240 m!6419414))

(assert (=> d!1724040 m!6419278))

(declare-fun m!6419416 () Bool)

(assert (=> d!1724040 m!6419416))

(assert (=> bm!386116 m!6419278))

(assert (=> b!5394246 m!6419282))

(assert (=> b!5394246 m!6419282))

(declare-fun m!6419418 () Bool)

(assert (=> b!5394246 m!6419418))

(assert (=> b!5394246 m!6419286))

(assert (=> b!5394246 m!6419418))

(assert (=> b!5394246 m!6419286))

(declare-fun m!6419420 () Bool)

(assert (=> b!5394246 m!6419420))

(assert (=> b!5394249 m!6419282))

(declare-fun m!6419422 () Bool)

(assert (=> b!5394244 m!6419422))

(assert (=> b!5394251 m!6419282))

(assert (=> b!5393669 d!1724040))

(declare-fun bs!1247703 () Bool)

(declare-fun b!5394292 () Bool)

(assert (= bs!1247703 (and b!5394292 b!5393637)))

(declare-fun lambda!280379 () Int)

(assert (=> bs!1247703 (not (= lambda!280379 lambda!280323))))

(assert (=> bs!1247703 (not (= lambda!280379 lambda!280324))))

(assert (=> b!5394292 true))

(assert (=> b!5394292 true))

(declare-fun bs!1247704 () Bool)

(declare-fun b!5394289 () Bool)

(assert (= bs!1247704 (and b!5394289 b!5393637)))

(declare-fun lambda!280380 () Int)

(assert (=> bs!1247704 (not (= lambda!280380 lambda!280323))))

(assert (=> bs!1247704 (= (and (= (regOne!30802 lt!2197705) (regOne!30802 r!7292)) (= (regTwo!30802 lt!2197705) (regTwo!30802 r!7292))) (= lambda!280380 lambda!280324))))

(declare-fun bs!1247705 () Bool)

(assert (= bs!1247705 (and b!5394289 b!5394292)))

(assert (=> bs!1247705 (not (= lambda!280380 lambda!280379))))

(assert (=> b!5394289 true))

(assert (=> b!5394289 true))

(declare-fun b!5394286 () Bool)

(declare-fun c!940117 () Bool)

(assert (=> b!5394286 (= c!940117 ((_ is Union!15145) lt!2197705))))

(declare-fun e!3345126 () Bool)

(declare-fun e!3345127 () Bool)

(assert (=> b!5394286 (= e!3345126 e!3345127)))

(declare-fun b!5394287 () Bool)

(declare-fun e!3345130 () Bool)

(assert (=> b!5394287 (= e!3345127 e!3345130)))

(declare-fun c!940114 () Bool)

(assert (=> b!5394287 (= c!940114 ((_ is Star!15145) lt!2197705))))

(declare-fun b!5394288 () Bool)

(declare-fun e!3345125 () Bool)

(assert (=> b!5394288 (= e!3345127 e!3345125)))

(declare-fun res!2292348 () Bool)

(assert (=> b!5394288 (= res!2292348 (matchRSpec!2248 (regOne!30803 lt!2197705) s!2326))))

(assert (=> b!5394288 (=> res!2292348 e!3345125)))

(declare-fun call!386126 () Bool)

(declare-fun bm!386121 () Bool)

(assert (=> bm!386121 (= call!386126 (Exists!2326 (ite c!940114 lambda!280379 lambda!280380)))))

(assert (=> b!5394289 (= e!3345130 call!386126)))

(declare-fun b!5394290 () Bool)

(declare-fun c!940115 () Bool)

(assert (=> b!5394290 (= c!940115 ((_ is ElementMatch!15145) lt!2197705))))

(declare-fun e!3345131 () Bool)

(assert (=> b!5394290 (= e!3345131 e!3345126)))

(declare-fun d!1724054 () Bool)

(declare-fun c!940116 () Bool)

(assert (=> d!1724054 (= c!940116 ((_ is EmptyExpr!15145) lt!2197705))))

(declare-fun e!3345129 () Bool)

(assert (=> d!1724054 (= (matchRSpec!2248 lt!2197705 s!2326) e!3345129)))

(declare-fun b!5394291 () Bool)

(declare-fun call!386127 () Bool)

(assert (=> b!5394291 (= e!3345129 call!386127)))

(declare-fun e!3345128 () Bool)

(assert (=> b!5394292 (= e!3345128 call!386126)))

(declare-fun bm!386122 () Bool)

(assert (=> bm!386122 (= call!386127 (isEmpty!33613 s!2326))))

(declare-fun b!5394293 () Bool)

(assert (=> b!5394293 (= e!3345126 (= s!2326 (Cons!61612 (c!939945 lt!2197705) Nil!61612)))))

(declare-fun b!5394294 () Bool)

(assert (=> b!5394294 (= e!3345129 e!3345131)))

(declare-fun res!2292347 () Bool)

(assert (=> b!5394294 (= res!2292347 (not ((_ is EmptyLang!15145) lt!2197705)))))

(assert (=> b!5394294 (=> (not res!2292347) (not e!3345131))))

(declare-fun b!5394295 () Bool)

(assert (=> b!5394295 (= e!3345125 (matchRSpec!2248 (regTwo!30803 lt!2197705) s!2326))))

(declare-fun b!5394296 () Bool)

(declare-fun res!2292346 () Bool)

(assert (=> b!5394296 (=> res!2292346 e!3345128)))

(assert (=> b!5394296 (= res!2292346 call!386127)))

(assert (=> b!5394296 (= e!3345130 e!3345128)))

(assert (= (and d!1724054 c!940116) b!5394291))

(assert (= (and d!1724054 (not c!940116)) b!5394294))

(assert (= (and b!5394294 res!2292347) b!5394290))

(assert (= (and b!5394290 c!940115) b!5394293))

(assert (= (and b!5394290 (not c!940115)) b!5394286))

(assert (= (and b!5394286 c!940117) b!5394288))

(assert (= (and b!5394286 (not c!940117)) b!5394287))

(assert (= (and b!5394288 (not res!2292348)) b!5394295))

(assert (= (and b!5394287 c!940114) b!5394296))

(assert (= (and b!5394287 (not c!940114)) b!5394289))

(assert (= (and b!5394296 (not res!2292346)) b!5394292))

(assert (= (or b!5394292 b!5394289) bm!386121))

(assert (= (or b!5394291 b!5394296) bm!386122))

(declare-fun m!6419424 () Bool)

(assert (=> b!5394288 m!6419424))

(declare-fun m!6419426 () Bool)

(assert (=> bm!386121 m!6419426))

(assert (=> bm!386122 m!6419278))

(declare-fun m!6419428 () Bool)

(assert (=> b!5394295 m!6419428))

(assert (=> b!5393669 d!1724054))

(declare-fun d!1724056 () Bool)

(assert (=> d!1724056 (= (matchR!7330 lt!2197705 s!2326) (matchRSpec!2248 lt!2197705 s!2326))))

(declare-fun lt!2197823 () Unit!154102)

(declare-fun choose!40591 (Regex!15145 List!61736) Unit!154102)

(assert (=> d!1724056 (= lt!2197823 (choose!40591 lt!2197705 s!2326))))

(assert (=> d!1724056 (validRegex!6881 lt!2197705)))

(assert (=> d!1724056 (= (mainMatchTheorem!2248 lt!2197705 s!2326) lt!2197823)))

(declare-fun bs!1247706 () Bool)

(assert (= bs!1247706 d!1724056))

(assert (=> bs!1247706 m!6418944))

(assert (=> bs!1247706 m!6418946))

(declare-fun m!6419430 () Bool)

(assert (=> bs!1247706 m!6419430))

(assert (=> bs!1247706 m!6419416))

(assert (=> b!5393669 d!1724056))

(declare-fun d!1724058 () Bool)

(declare-fun e!3345134 () Bool)

(assert (=> d!1724058 e!3345134))

(declare-fun res!2292351 () Bool)

(assert (=> d!1724058 (=> (not res!2292351) (not e!3345134))))

(declare-fun lt!2197826 () List!61735)

(declare-fun noDuplicate!1378 (List!61735) Bool)

(assert (=> d!1724058 (= res!2292351 (noDuplicate!1378 lt!2197826))))

(declare-fun choose!40592 ((InoxSet Context!9058)) List!61735)

(assert (=> d!1724058 (= lt!2197826 (choose!40592 z!1189))))

(assert (=> d!1724058 (= (toList!8929 z!1189) lt!2197826)))

(declare-fun b!5394299 () Bool)

(declare-fun content!11028 (List!61735) (InoxSet Context!9058))

(assert (=> b!5394299 (= e!3345134 (= (content!11028 lt!2197826) z!1189))))

(assert (= (and d!1724058 res!2292351) b!5394299))

(declare-fun m!6419432 () Bool)

(assert (=> d!1724058 m!6419432))

(declare-fun m!6419434 () Bool)

(assert (=> d!1724058 m!6419434))

(declare-fun m!6419436 () Bool)

(assert (=> b!5394299 m!6419436))

(assert (=> b!5393647 d!1724058))

(declare-fun d!1724060 () Bool)

(declare-fun nullableFct!1578 (Regex!15145) Bool)

(assert (=> d!1724060 (= (nullable!5314 (regOne!30802 (regOne!30802 r!7292))) (nullableFct!1578 (regOne!30802 (regOne!30802 r!7292))))))

(declare-fun bs!1247707 () Bool)

(assert (= bs!1247707 d!1724060))

(declare-fun m!6419438 () Bool)

(assert (=> bs!1247707 m!6419438))

(assert (=> b!5393666 d!1724060))

(declare-fun d!1724062 () Bool)

(declare-fun lt!2197829 () Regex!15145)

(assert (=> d!1724062 (validRegex!6881 lt!2197829)))

(assert (=> d!1724062 (= lt!2197829 (generalisedUnion!1074 (unfocusZipperList!587 zl!343)))))

(assert (=> d!1724062 (= (unfocusZipper!887 zl!343) lt!2197829)))

(declare-fun bs!1247708 () Bool)

(assert (= bs!1247708 d!1724062))

(declare-fun m!6419440 () Bool)

(assert (=> bs!1247708 m!6419440))

(assert (=> bs!1247708 m!6418868))

(assert (=> bs!1247708 m!6418868))

(assert (=> bs!1247708 m!6418870))

(assert (=> b!5393646 d!1724062))

(declare-fun b!5394309 () Bool)

(declare-fun e!3345140 () List!61736)

(assert (=> b!5394309 (= e!3345140 (Cons!61612 (h!68060 Nil!61612) (++!13466 (t!374959 Nil!61612) s!2326)))))

(declare-fun b!5394308 () Bool)

(assert (=> b!5394308 (= e!3345140 s!2326)))

(declare-fun b!5394311 () Bool)

(declare-fun e!3345139 () Bool)

(declare-fun lt!2197832 () List!61736)

(assert (=> b!5394311 (= e!3345139 (or (not (= s!2326 Nil!61612)) (= lt!2197832 Nil!61612)))))

(declare-fun b!5394310 () Bool)

(declare-fun res!2292356 () Bool)

(assert (=> b!5394310 (=> (not res!2292356) (not e!3345139))))

(declare-fun size!39820 (List!61736) Int)

(assert (=> b!5394310 (= res!2292356 (= (size!39820 lt!2197832) (+ (size!39820 Nil!61612) (size!39820 s!2326))))))

(declare-fun d!1724064 () Bool)

(assert (=> d!1724064 e!3345139))

(declare-fun res!2292357 () Bool)

(assert (=> d!1724064 (=> (not res!2292357) (not e!3345139))))

(declare-fun content!11029 (List!61736) (InoxSet C!30560))

(assert (=> d!1724064 (= res!2292357 (= (content!11029 lt!2197832) ((_ map or) (content!11029 Nil!61612) (content!11029 s!2326))))))

(assert (=> d!1724064 (= lt!2197832 e!3345140)))

(declare-fun c!940120 () Bool)

(assert (=> d!1724064 (= c!940120 ((_ is Nil!61612) Nil!61612))))

(assert (=> d!1724064 (= (++!13466 Nil!61612 s!2326) lt!2197832)))

(assert (= (and d!1724064 c!940120) b!5394308))

(assert (= (and d!1724064 (not c!940120)) b!5394309))

(assert (= (and d!1724064 res!2292357) b!5394310))

(assert (= (and b!5394310 res!2292356) b!5394311))

(declare-fun m!6419442 () Bool)

(assert (=> b!5394309 m!6419442))

(declare-fun m!6419444 () Bool)

(assert (=> b!5394310 m!6419444))

(declare-fun m!6419446 () Bool)

(assert (=> b!5394310 m!6419446))

(declare-fun m!6419448 () Bool)

(assert (=> b!5394310 m!6419448))

(declare-fun m!6419450 () Bool)

(assert (=> d!1724064 m!6419450))

(declare-fun m!6419452 () Bool)

(assert (=> d!1724064 m!6419452))

(declare-fun m!6419454 () Bool)

(assert (=> d!1724064 m!6419454))

(assert (=> b!5393645 d!1724064))

(declare-fun d!1724066 () Bool)

(declare-fun isEmpty!33614 (Option!15256) Bool)

(assert (=> d!1724066 (= (isDefined!11959 (findConcatSeparationZippers!2 lt!2197722 lt!2197718 Nil!61612 s!2326 s!2326)) (not (isEmpty!33614 (findConcatSeparationZippers!2 lt!2197722 lt!2197718 Nil!61612 s!2326 s!2326))))))

(declare-fun bs!1247709 () Bool)

(assert (= bs!1247709 d!1724066))

(assert (=> bs!1247709 m!6418990))

(declare-fun m!6419456 () Bool)

(assert (=> bs!1247709 m!6419456))

(assert (=> b!5393645 d!1724066))

(declare-fun d!1724068 () Bool)

(declare-fun e!3345151 () Bool)

(assert (=> d!1724068 e!3345151))

(declare-fun res!2292369 () Bool)

(assert (=> d!1724068 (=> res!2292369 e!3345151)))

(declare-fun e!3345155 () Bool)

(assert (=> d!1724068 (= res!2292369 e!3345155)))

(declare-fun res!2292372 () Bool)

(assert (=> d!1724068 (=> (not res!2292372) (not e!3345155))))

(declare-fun lt!2197839 () Option!15256)

(assert (=> d!1724068 (= res!2292372 (isDefined!11959 lt!2197839))))

(declare-fun e!3345152 () Option!15256)

(assert (=> d!1724068 (= lt!2197839 e!3345152)))

(declare-fun c!940125 () Bool)

(declare-fun e!3345154 () Bool)

(assert (=> d!1724068 (= c!940125 e!3345154)))

(declare-fun res!2292368 () Bool)

(assert (=> d!1724068 (=> (not res!2292368) (not e!3345154))))

(assert (=> d!1724068 (= res!2292368 (matchZipper!1389 lt!2197722 Nil!61612))))

(assert (=> d!1724068 (= (++!13466 Nil!61612 s!2326) s!2326)))

(assert (=> d!1724068 (= (findConcatSeparationZippers!2 lt!2197722 lt!2197718 Nil!61612 s!2326 s!2326) lt!2197839)))

(declare-fun b!5394330 () Bool)

(declare-fun e!3345153 () Option!15256)

(assert (=> b!5394330 (= e!3345153 None!15255)))

(declare-fun b!5394331 () Bool)

(declare-fun res!2292371 () Bool)

(assert (=> b!5394331 (=> (not res!2292371) (not e!3345155))))

(declare-fun get!21222 (Option!15256) tuple2!64688)

(assert (=> b!5394331 (= res!2292371 (matchZipper!1389 lt!2197718 (_2!35647 (get!21222 lt!2197839))))))

(declare-fun b!5394332 () Bool)

(assert (=> b!5394332 (= e!3345152 (Some!15255 (tuple2!64689 Nil!61612 s!2326)))))

(declare-fun b!5394333 () Bool)

(assert (=> b!5394333 (= e!3345155 (= (++!13466 (_1!35647 (get!21222 lt!2197839)) (_2!35647 (get!21222 lt!2197839))) s!2326))))

(declare-fun b!5394334 () Bool)

(assert (=> b!5394334 (= e!3345151 (not (isDefined!11959 lt!2197839)))))

(declare-fun b!5394335 () Bool)

(declare-fun lt!2197841 () Unit!154102)

(declare-fun lt!2197840 () Unit!154102)

(assert (=> b!5394335 (= lt!2197841 lt!2197840)))

(assert (=> b!5394335 (= (++!13466 (++!13466 Nil!61612 (Cons!61612 (h!68060 s!2326) Nil!61612)) (t!374959 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1821 (List!61736 C!30560 List!61736 List!61736) Unit!154102)

(assert (=> b!5394335 (= lt!2197840 (lemmaMoveElementToOtherListKeepsConcatEq!1821 Nil!61612 (h!68060 s!2326) (t!374959 s!2326) s!2326))))

(assert (=> b!5394335 (= e!3345153 (findConcatSeparationZippers!2 lt!2197722 lt!2197718 (++!13466 Nil!61612 (Cons!61612 (h!68060 s!2326) Nil!61612)) (t!374959 s!2326) s!2326))))

(declare-fun b!5394336 () Bool)

(declare-fun res!2292370 () Bool)

(assert (=> b!5394336 (=> (not res!2292370) (not e!3345155))))

(assert (=> b!5394336 (= res!2292370 (matchZipper!1389 lt!2197722 (_1!35647 (get!21222 lt!2197839))))))

(declare-fun b!5394337 () Bool)

(assert (=> b!5394337 (= e!3345154 (matchZipper!1389 lt!2197718 s!2326))))

(declare-fun b!5394338 () Bool)

(assert (=> b!5394338 (= e!3345152 e!3345153)))

(declare-fun c!940126 () Bool)

(assert (=> b!5394338 (= c!940126 ((_ is Nil!61612) s!2326))))

(assert (= (and d!1724068 res!2292368) b!5394337))

(assert (= (and d!1724068 c!940125) b!5394332))

(assert (= (and d!1724068 (not c!940125)) b!5394338))

(assert (= (and b!5394338 c!940126) b!5394330))

(assert (= (and b!5394338 (not c!940126)) b!5394335))

(assert (= (and d!1724068 res!2292372) b!5394336))

(assert (= (and b!5394336 res!2292370) b!5394331))

(assert (= (and b!5394331 res!2292371) b!5394333))

(assert (= (and d!1724068 (not res!2292369)) b!5394334))

(declare-fun m!6419458 () Bool)

(assert (=> d!1724068 m!6419458))

(declare-fun m!6419460 () Bool)

(assert (=> d!1724068 m!6419460))

(assert (=> d!1724068 m!6418988))

(declare-fun m!6419462 () Bool)

(assert (=> b!5394331 m!6419462))

(declare-fun m!6419464 () Bool)

(assert (=> b!5394331 m!6419464))

(declare-fun m!6419466 () Bool)

(assert (=> b!5394337 m!6419466))

(assert (=> b!5394333 m!6419462))

(declare-fun m!6419468 () Bool)

(assert (=> b!5394333 m!6419468))

(assert (=> b!5394334 m!6419458))

(assert (=> b!5394336 m!6419462))

(declare-fun m!6419470 () Bool)

(assert (=> b!5394336 m!6419470))

(declare-fun m!6419472 () Bool)

(assert (=> b!5394335 m!6419472))

(assert (=> b!5394335 m!6419472))

(declare-fun m!6419474 () Bool)

(assert (=> b!5394335 m!6419474))

(declare-fun m!6419476 () Bool)

(assert (=> b!5394335 m!6419476))

(assert (=> b!5394335 m!6419472))

(declare-fun m!6419478 () Bool)

(assert (=> b!5394335 m!6419478))

(assert (=> b!5393645 d!1724068))

(declare-fun d!1724070 () Bool)

(assert (=> d!1724070 (isDefined!11959 (findConcatSeparationZippers!2 lt!2197722 (store ((as const (Array Context!9058 Bool)) false) lt!2197703 true) Nil!61612 s!2326 s!2326))))

(declare-fun lt!2197844 () Unit!154102)

(declare-fun choose!40596 ((InoxSet Context!9058) Context!9058 List!61736) Unit!154102)

(assert (=> d!1724070 (= lt!2197844 (choose!40596 lt!2197722 lt!2197703 s!2326))))

(assert (=> d!1724070 (matchZipper!1389 (appendTo!4 lt!2197722 lt!2197703) s!2326)))

(assert (=> d!1724070 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!2 lt!2197722 lt!2197703 s!2326) lt!2197844)))

(declare-fun bs!1247710 () Bool)

(assert (= bs!1247710 d!1724070))

(declare-fun m!6419480 () Bool)

(assert (=> bs!1247710 m!6419480))

(assert (=> bs!1247710 m!6418898))

(declare-fun m!6419482 () Bool)

(assert (=> bs!1247710 m!6419482))

(assert (=> bs!1247710 m!6418926))

(assert (=> bs!1247710 m!6418898))

(declare-fun m!6419484 () Bool)

(assert (=> bs!1247710 m!6419484))

(declare-fun m!6419486 () Bool)

(assert (=> bs!1247710 m!6419486))

(assert (=> bs!1247710 m!6418926))

(assert (=> bs!1247710 m!6419484))

(assert (=> b!5393645 d!1724070))

(declare-fun b!5394349 () Bool)

(declare-fun e!3345163 () (InoxSet Context!9058))

(assert (=> b!5394349 (= e!3345163 ((as const (Array Context!9058 Bool)) false))))

(declare-fun b!5394350 () Bool)

(declare-fun e!3345162 () Bool)

(assert (=> b!5394350 (= e!3345162 (nullable!5314 (h!68058 (exprs!5029 lt!2197714))))))

(declare-fun bm!386125 () Bool)

(declare-fun call!386130 () (InoxSet Context!9058))

(assert (=> bm!386125 (= call!386130 (derivationStepZipperDown!593 (h!68058 (exprs!5029 lt!2197714)) (Context!9059 (t!374957 (exprs!5029 lt!2197714))) (h!68060 s!2326)))))

(declare-fun b!5394351 () Bool)

(assert (=> b!5394351 (= e!3345163 call!386130)))

(declare-fun d!1724072 () Bool)

(declare-fun c!940132 () Bool)

(assert (=> d!1724072 (= c!940132 e!3345162)))

(declare-fun res!2292375 () Bool)

(assert (=> d!1724072 (=> (not res!2292375) (not e!3345162))))

(assert (=> d!1724072 (= res!2292375 ((_ is Cons!61610) (exprs!5029 lt!2197714)))))

(declare-fun e!3345164 () (InoxSet Context!9058))

(assert (=> d!1724072 (= (derivationStepZipperUp!517 lt!2197714 (h!68060 s!2326)) e!3345164)))

(declare-fun b!5394352 () Bool)

(assert (=> b!5394352 (= e!3345164 ((_ map or) call!386130 (derivationStepZipperUp!517 (Context!9059 (t!374957 (exprs!5029 lt!2197714))) (h!68060 s!2326))))))

(declare-fun b!5394353 () Bool)

(assert (=> b!5394353 (= e!3345164 e!3345163)))

(declare-fun c!940131 () Bool)

(assert (=> b!5394353 (= c!940131 ((_ is Cons!61610) (exprs!5029 lt!2197714)))))

(assert (= (and d!1724072 res!2292375) b!5394350))

(assert (= (and d!1724072 c!940132) b!5394352))

(assert (= (and d!1724072 (not c!940132)) b!5394353))

(assert (= (and b!5394353 c!940131) b!5394351))

(assert (= (and b!5394353 (not c!940131)) b!5394349))

(assert (= (or b!5394352 b!5394351) bm!386125))

(declare-fun m!6419488 () Bool)

(assert (=> b!5394350 m!6419488))

(declare-fun m!6419490 () Bool)

(assert (=> bm!386125 m!6419490))

(declare-fun m!6419492 () Bool)

(assert (=> b!5394352 m!6419492))

(assert (=> b!5393665 d!1724072))

(declare-fun d!1724074 () Bool)

(declare-fun dynLambda!24291 (Int Context!9058) (InoxSet Context!9058))

(assert (=> d!1724074 (= (flatMap!872 z!1189 lambda!280325) (dynLambda!24291 lambda!280325 (h!68059 zl!343)))))

(declare-fun lt!2197847 () Unit!154102)

(declare-fun choose!40597 ((InoxSet Context!9058) Context!9058 Int) Unit!154102)

(assert (=> d!1724074 (= lt!2197847 (choose!40597 z!1189 (h!68059 zl!343) lambda!280325))))

(assert (=> d!1724074 (= z!1189 (store ((as const (Array Context!9058 Bool)) false) (h!68059 zl!343) true))))

(assert (=> d!1724074 (= (lemmaFlatMapOnSingletonSet!404 z!1189 (h!68059 zl!343) lambda!280325) lt!2197847)))

(declare-fun b_lambda!206329 () Bool)

(assert (=> (not b_lambda!206329) (not d!1724074)))

(declare-fun bs!1247711 () Bool)

(assert (= bs!1247711 d!1724074))

(assert (=> bs!1247711 m!6418972))

(declare-fun m!6419494 () Bool)

(assert (=> bs!1247711 m!6419494))

(declare-fun m!6419496 () Bool)

(assert (=> bs!1247711 m!6419496))

(declare-fun m!6419498 () Bool)

(assert (=> bs!1247711 m!6419498))

(assert (=> b!5393665 d!1724074))

(declare-fun d!1724076 () Bool)

(assert (=> d!1724076 (= (nullable!5314 (h!68058 (exprs!5029 (h!68059 zl!343)))) (nullableFct!1578 (h!68058 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun bs!1247712 () Bool)

(assert (= bs!1247712 d!1724076))

(declare-fun m!6419500 () Bool)

(assert (=> bs!1247712 m!6419500))

(assert (=> b!5393665 d!1724076))

(declare-fun b!5394354 () Bool)

(declare-fun e!3345166 () (InoxSet Context!9058))

(assert (=> b!5394354 (= e!3345166 ((as const (Array Context!9058 Bool)) false))))

(declare-fun b!5394355 () Bool)

(declare-fun e!3345165 () Bool)

(assert (=> b!5394355 (= e!3345165 (nullable!5314 (h!68058 (exprs!5029 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343)))))))))))

(declare-fun bm!386126 () Bool)

(declare-fun call!386131 () (InoxSet Context!9058))

(assert (=> bm!386126 (= call!386131 (derivationStepZipperDown!593 (h!68058 (exprs!5029 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343))))))) (Context!9059 (t!374957 (exprs!5029 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343)))))))) (h!68060 s!2326)))))

(declare-fun b!5394356 () Bool)

(assert (=> b!5394356 (= e!3345166 call!386131)))

(declare-fun d!1724078 () Bool)

(declare-fun c!940134 () Bool)

(assert (=> d!1724078 (= c!940134 e!3345165)))

(declare-fun res!2292376 () Bool)

(assert (=> d!1724078 (=> (not res!2292376) (not e!3345165))))

(assert (=> d!1724078 (= res!2292376 ((_ is Cons!61610) (exprs!5029 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343))))))))))

(declare-fun e!3345167 () (InoxSet Context!9058))

(assert (=> d!1724078 (= (derivationStepZipperUp!517 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343))))) (h!68060 s!2326)) e!3345167)))

(declare-fun b!5394357 () Bool)

(assert (=> b!5394357 (= e!3345167 ((_ map or) call!386131 (derivationStepZipperUp!517 (Context!9059 (t!374957 (exprs!5029 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343)))))))) (h!68060 s!2326))))))

(declare-fun b!5394358 () Bool)

(assert (=> b!5394358 (= e!3345167 e!3345166)))

(declare-fun c!940133 () Bool)

(assert (=> b!5394358 (= c!940133 ((_ is Cons!61610) (exprs!5029 (Context!9059 (Cons!61610 (h!68058 (exprs!5029 (h!68059 zl!343))) (t!374957 (exprs!5029 (h!68059 zl!343))))))))))

(assert (= (and d!1724078 res!2292376) b!5394355))

(assert (= (and d!1724078 c!940134) b!5394357))

(assert (= (and d!1724078 (not c!940134)) b!5394358))

(assert (= (and b!5394358 c!940133) b!5394356))

(assert (= (and b!5394358 (not c!940133)) b!5394354))

(assert (= (or b!5394357 b!5394356) bm!386126))

(declare-fun m!6419502 () Bool)

(assert (=> b!5394355 m!6419502))

(declare-fun m!6419504 () Bool)

(assert (=> bm!386126 m!6419504))

(declare-fun m!6419506 () Bool)

(assert (=> b!5394357 m!6419506))

(assert (=> b!5393665 d!1724078))

(declare-fun d!1724080 () Bool)

(declare-fun choose!40598 ((InoxSet Context!9058) Int) (InoxSet Context!9058))

(assert (=> d!1724080 (= (flatMap!872 z!1189 lambda!280325) (choose!40598 z!1189 lambda!280325))))

(declare-fun bs!1247713 () Bool)

(assert (= bs!1247713 d!1724080))

(declare-fun m!6419508 () Bool)

(assert (=> bs!1247713 m!6419508))

(assert (=> b!5393665 d!1724080))

(declare-fun call!386146 () List!61734)

(declare-fun call!386145 () (InoxSet Context!9058))

(declare-fun bm!386139 () Bool)

(declare-fun c!940149 () Bool)

(assert (=> bm!386139 (= call!386145 (derivationStepZipperDown!593 (ite c!940149 (regOne!30803 (h!68058 (exprs!5029 (h!68059 zl!343)))) (regOne!30802 (h!68058 (exprs!5029 (h!68059 zl!343))))) (ite c!940149 lt!2197714 (Context!9059 call!386146)) (h!68060 s!2326)))))

(declare-fun bm!386140 () Bool)

(declare-fun call!386144 () (InoxSet Context!9058))

(declare-fun call!386147 () (InoxSet Context!9058))

(assert (=> bm!386140 (= call!386144 call!386147)))

(declare-fun b!5394381 () Bool)

(declare-fun e!3345183 () (InoxSet Context!9058))

(declare-fun e!3345182 () (InoxSet Context!9058))

(assert (=> b!5394381 (= e!3345183 e!3345182)))

(assert (=> b!5394381 (= c!940149 ((_ is Union!15145) (h!68058 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun b!5394382 () Bool)

(declare-fun e!3345181 () (InoxSet Context!9058))

(assert (=> b!5394382 (= e!3345181 call!386144)))

(declare-fun b!5394383 () Bool)

(declare-fun call!386149 () (InoxSet Context!9058))

(assert (=> b!5394383 (= e!3345182 ((_ map or) call!386145 call!386149))))

(declare-fun d!1724082 () Bool)

(declare-fun c!940147 () Bool)

(assert (=> d!1724082 (= c!940147 (and ((_ is ElementMatch!15145) (h!68058 (exprs!5029 (h!68059 zl!343)))) (= (c!939945 (h!68058 (exprs!5029 (h!68059 zl!343)))) (h!68060 s!2326))))))

(assert (=> d!1724082 (= (derivationStepZipperDown!593 (h!68058 (exprs!5029 (h!68059 zl!343))) lt!2197714 (h!68060 s!2326)) e!3345183)))

(declare-fun b!5394384 () Bool)

(declare-fun e!3345184 () (InoxSet Context!9058))

(assert (=> b!5394384 (= e!3345184 call!386144)))

(declare-fun b!5394385 () Bool)

(declare-fun e!3345180 () (InoxSet Context!9058))

(assert (=> b!5394385 (= e!3345180 ((_ map or) call!386145 call!386147))))

(declare-fun bm!386141 () Bool)

(declare-fun call!386148 () List!61734)

(assert (=> bm!386141 (= call!386148 call!386146)))

(declare-fun b!5394386 () Bool)

(assert (=> b!5394386 (= e!3345181 ((as const (Array Context!9058 Bool)) false))))

(declare-fun c!940146 () Bool)

(declare-fun bm!386142 () Bool)

(declare-fun c!940148 () Bool)

(assert (=> bm!386142 (= call!386149 (derivationStepZipperDown!593 (ite c!940149 (regTwo!30803 (h!68058 (exprs!5029 (h!68059 zl!343)))) (ite c!940148 (regTwo!30802 (h!68058 (exprs!5029 (h!68059 zl!343)))) (ite c!940146 (regOne!30802 (h!68058 (exprs!5029 (h!68059 zl!343)))) (reg!15474 (h!68058 (exprs!5029 (h!68059 zl!343))))))) (ite (or c!940149 c!940148) lt!2197714 (Context!9059 call!386148)) (h!68060 s!2326)))))

(declare-fun b!5394387 () Bool)

(assert (=> b!5394387 (= e!3345180 e!3345184)))

(assert (=> b!5394387 (= c!940146 ((_ is Concat!23990) (h!68058 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun b!5394388 () Bool)

(declare-fun e!3345185 () Bool)

(assert (=> b!5394388 (= e!3345185 (nullable!5314 (regOne!30802 (h!68058 (exprs!5029 (h!68059 zl!343))))))))

(declare-fun bm!386143 () Bool)

(assert (=> bm!386143 (= call!386147 call!386149)))

(declare-fun b!5394389 () Bool)

(assert (=> b!5394389 (= e!3345183 (store ((as const (Array Context!9058 Bool)) false) lt!2197714 true))))

(declare-fun bm!386144 () Bool)

(declare-fun $colon$colon!1476 (List!61734 Regex!15145) List!61734)

(assert (=> bm!386144 (= call!386146 ($colon$colon!1476 (exprs!5029 lt!2197714) (ite (or c!940148 c!940146) (regTwo!30802 (h!68058 (exprs!5029 (h!68059 zl!343)))) (h!68058 (exprs!5029 (h!68059 zl!343))))))))

(declare-fun b!5394390 () Bool)

(declare-fun c!940145 () Bool)

(assert (=> b!5394390 (= c!940145 ((_ is Star!15145) (h!68058 (exprs!5029 (h!68059 zl!343)))))))

(assert (=> b!5394390 (= e!3345184 e!3345181)))

(declare-fun b!5394391 () Bool)

(assert (=> b!5394391 (= c!940148 e!3345185)))

(declare-fun res!2292379 () Bool)

(assert (=> b!5394391 (=> (not res!2292379) (not e!3345185))))

(assert (=> b!5394391 (= res!2292379 ((_ is Concat!23990) (h!68058 (exprs!5029 (h!68059 zl!343)))))))

(assert (=> b!5394391 (= e!3345182 e!3345180)))

(assert (= (and d!1724082 c!940147) b!5394389))

(assert (= (and d!1724082 (not c!940147)) b!5394381))

(assert (= (and b!5394381 c!940149) b!5394383))

(assert (= (and b!5394381 (not c!940149)) b!5394391))

(assert (= (and b!5394391 res!2292379) b!5394388))

(assert (= (and b!5394391 c!940148) b!5394385))

(assert (= (and b!5394391 (not c!940148)) b!5394387))

(assert (= (and b!5394387 c!940146) b!5394384))

(assert (= (and b!5394387 (not c!940146)) b!5394390))

(assert (= (and b!5394390 c!940145) b!5394382))

(assert (= (and b!5394390 (not c!940145)) b!5394386))

(assert (= (or b!5394384 b!5394382) bm!386141))

(assert (= (or b!5394384 b!5394382) bm!386140))

(assert (= (or b!5394385 bm!386141) bm!386144))

(assert (= (or b!5394385 bm!386140) bm!386143))

(assert (= (or b!5394383 bm!386143) bm!386142))

(assert (= (or b!5394383 b!5394385) bm!386139))

(declare-fun m!6419510 () Bool)

(assert (=> bm!386144 m!6419510))

(declare-fun m!6419512 () Bool)

(assert (=> b!5394389 m!6419512))

(declare-fun m!6419514 () Bool)

(assert (=> bm!386142 m!6419514))

(declare-fun m!6419516 () Bool)

(assert (=> b!5394388 m!6419516))

(declare-fun m!6419518 () Bool)

(assert (=> bm!386139 m!6419518))

(assert (=> b!5393665 d!1724082))

(declare-fun b!5394392 () Bool)

(declare-fun e!3345187 () (InoxSet Context!9058))

(assert (=> b!5394392 (= e!3345187 ((as const (Array Context!9058 Bool)) false))))

(declare-fun b!5394393 () Bool)

(declare-fun e!3345186 () Bool)

(assert (=> b!5394393 (= e!3345186 (nullable!5314 (h!68058 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun bm!386145 () Bool)

(declare-fun call!386150 () (InoxSet Context!9058))

(assert (=> bm!386145 (= call!386150 (derivationStepZipperDown!593 (h!68058 (exprs!5029 (h!68059 zl!343))) (Context!9059 (t!374957 (exprs!5029 (h!68059 zl!343)))) (h!68060 s!2326)))))

(declare-fun b!5394394 () Bool)

(assert (=> b!5394394 (= e!3345187 call!386150)))

(declare-fun d!1724084 () Bool)

(declare-fun c!940151 () Bool)

(assert (=> d!1724084 (= c!940151 e!3345186)))

(declare-fun res!2292380 () Bool)

(assert (=> d!1724084 (=> (not res!2292380) (not e!3345186))))

(assert (=> d!1724084 (= res!2292380 ((_ is Cons!61610) (exprs!5029 (h!68059 zl!343))))))

(declare-fun e!3345188 () (InoxSet Context!9058))

(assert (=> d!1724084 (= (derivationStepZipperUp!517 (h!68059 zl!343) (h!68060 s!2326)) e!3345188)))

(declare-fun b!5394395 () Bool)

(assert (=> b!5394395 (= e!3345188 ((_ map or) call!386150 (derivationStepZipperUp!517 (Context!9059 (t!374957 (exprs!5029 (h!68059 zl!343)))) (h!68060 s!2326))))))

(declare-fun b!5394396 () Bool)

(assert (=> b!5394396 (= e!3345188 e!3345187)))

(declare-fun c!940150 () Bool)

(assert (=> b!5394396 (= c!940150 ((_ is Cons!61610) (exprs!5029 (h!68059 zl!343))))))

(assert (= (and d!1724084 res!2292380) b!5394393))

(assert (= (and d!1724084 c!940151) b!5394395))

(assert (= (and d!1724084 (not c!940151)) b!5394396))

(assert (= (and b!5394396 c!940150) b!5394394))

(assert (= (and b!5394396 (not c!940150)) b!5394392))

(assert (= (or b!5394395 b!5394394) bm!386145))

(assert (=> b!5394393 m!6418978))

(declare-fun m!6419520 () Bool)

(assert (=> bm!386145 m!6419520))

(declare-fun m!6419522 () Bool)

(assert (=> b!5394395 m!6419522))

(assert (=> b!5393665 d!1724084))

(declare-fun d!1724086 () Bool)

(assert (=> d!1724086 (= (flatMap!872 lt!2197732 lambda!280325) (choose!40598 lt!2197732 lambda!280325))))

(declare-fun bs!1247714 () Bool)

(assert (= bs!1247714 d!1724086))

(declare-fun m!6419524 () Bool)

(assert (=> bs!1247714 m!6419524))

(assert (=> b!5393664 d!1724086))

(declare-fun b!5394397 () Bool)

(declare-fun e!3345190 () (InoxSet Context!9058))

(assert (=> b!5394397 (= e!3345190 ((as const (Array Context!9058 Bool)) false))))

(declare-fun b!5394398 () Bool)

(declare-fun e!3345189 () Bool)

(assert (=> b!5394398 (= e!3345189 (nullable!5314 (h!68058 (exprs!5029 lt!2197715))))))

(declare-fun bm!386146 () Bool)

(declare-fun call!386151 () (InoxSet Context!9058))

(assert (=> bm!386146 (= call!386151 (derivationStepZipperDown!593 (h!68058 (exprs!5029 lt!2197715)) (Context!9059 (t!374957 (exprs!5029 lt!2197715))) (h!68060 s!2326)))))

(declare-fun b!5394399 () Bool)

(assert (=> b!5394399 (= e!3345190 call!386151)))

(declare-fun d!1724088 () Bool)

(declare-fun c!940153 () Bool)

(assert (=> d!1724088 (= c!940153 e!3345189)))

(declare-fun res!2292381 () Bool)

(assert (=> d!1724088 (=> (not res!2292381) (not e!3345189))))

(assert (=> d!1724088 (= res!2292381 ((_ is Cons!61610) (exprs!5029 lt!2197715)))))

(declare-fun e!3345191 () (InoxSet Context!9058))

(assert (=> d!1724088 (= (derivationStepZipperUp!517 lt!2197715 (h!68060 s!2326)) e!3345191)))

(declare-fun b!5394400 () Bool)

(assert (=> b!5394400 (= e!3345191 ((_ map or) call!386151 (derivationStepZipperUp!517 (Context!9059 (t!374957 (exprs!5029 lt!2197715))) (h!68060 s!2326))))))

(declare-fun b!5394401 () Bool)

(assert (=> b!5394401 (= e!3345191 e!3345190)))

(declare-fun c!940152 () Bool)

(assert (=> b!5394401 (= c!940152 ((_ is Cons!61610) (exprs!5029 lt!2197715)))))

(assert (= (and d!1724088 res!2292381) b!5394398))

(assert (= (and d!1724088 c!940153) b!5394400))

(assert (= (and d!1724088 (not c!940153)) b!5394401))

(assert (= (and b!5394401 c!940152) b!5394399))

(assert (= (and b!5394401 (not c!940152)) b!5394397))

(assert (= (or b!5394400 b!5394399) bm!386146))

(declare-fun m!6419526 () Bool)

(assert (=> b!5394398 m!6419526))

(declare-fun m!6419528 () Bool)

(assert (=> bm!386146 m!6419528))

(declare-fun m!6419530 () Bool)

(assert (=> b!5394400 m!6419530))

(assert (=> b!5393664 d!1724088))

(declare-fun d!1724090 () Bool)

(assert (=> d!1724090 (= (flatMap!872 lt!2197732 lambda!280325) (dynLambda!24291 lambda!280325 lt!2197715))))

(declare-fun lt!2197848 () Unit!154102)

(assert (=> d!1724090 (= lt!2197848 (choose!40597 lt!2197732 lt!2197715 lambda!280325))))

(assert (=> d!1724090 (= lt!2197732 (store ((as const (Array Context!9058 Bool)) false) lt!2197715 true))))

(assert (=> d!1724090 (= (lemmaFlatMapOnSingletonSet!404 lt!2197732 lt!2197715 lambda!280325) lt!2197848)))

(declare-fun b_lambda!206331 () Bool)

(assert (=> (not b_lambda!206331) (not d!1724090)))

(declare-fun bs!1247715 () Bool)

(assert (= bs!1247715 d!1724090))

(assert (=> bs!1247715 m!6418876))

(declare-fun m!6419532 () Bool)

(assert (=> bs!1247715 m!6419532))

(declare-fun m!6419534 () Bool)

(assert (=> bs!1247715 m!6419534))

(assert (=> bs!1247715 m!6418872))

(assert (=> b!5393664 d!1724090))

(declare-fun bs!1247716 () Bool)

(declare-fun d!1724092 () Bool)

(assert (= bs!1247716 (and d!1724092 b!5393665)))

(declare-fun lambda!280383 () Int)

(assert (=> bs!1247716 (= lambda!280383 lambda!280325)))

(assert (=> d!1724092 true))

(assert (=> d!1724092 (= (derivationStepZipper!1384 lt!2197732 (h!68060 s!2326)) (flatMap!872 lt!2197732 lambda!280383))))

(declare-fun bs!1247717 () Bool)

(assert (= bs!1247717 d!1724092))

(declare-fun m!6419536 () Bool)

(assert (=> bs!1247717 m!6419536))

(assert (=> b!5393664 d!1724092))

(declare-fun d!1724094 () Bool)

(assert (=> d!1724094 (= (flatMap!872 lt!2197722 lambda!280325) (choose!40598 lt!2197722 lambda!280325))))

(declare-fun bs!1247718 () Bool)

(assert (= bs!1247718 d!1724094))

(declare-fun m!6419538 () Bool)

(assert (=> bs!1247718 m!6419538))

(assert (=> b!5393644 d!1724094))

(declare-fun b!5394404 () Bool)

(declare-fun e!3345193 () (InoxSet Context!9058))

(assert (=> b!5394404 (= e!3345193 ((as const (Array Context!9058 Bool)) false))))

(declare-fun b!5394405 () Bool)

(declare-fun e!3345192 () Bool)

(assert (=> b!5394405 (= e!3345192 (nullable!5314 (h!68058 (exprs!5029 lt!2197700))))))

(declare-fun bm!386147 () Bool)

(declare-fun call!386152 () (InoxSet Context!9058))

(assert (=> bm!386147 (= call!386152 (derivationStepZipperDown!593 (h!68058 (exprs!5029 lt!2197700)) (Context!9059 (t!374957 (exprs!5029 lt!2197700))) (h!68060 s!2326)))))

(declare-fun b!5394406 () Bool)

(assert (=> b!5394406 (= e!3345193 call!386152)))

(declare-fun d!1724096 () Bool)

(declare-fun c!940157 () Bool)

(assert (=> d!1724096 (= c!940157 e!3345192)))

(declare-fun res!2292382 () Bool)

(assert (=> d!1724096 (=> (not res!2292382) (not e!3345192))))

(assert (=> d!1724096 (= res!2292382 ((_ is Cons!61610) (exprs!5029 lt!2197700)))))

(declare-fun e!3345194 () (InoxSet Context!9058))

(assert (=> d!1724096 (= (derivationStepZipperUp!517 lt!2197700 (h!68060 s!2326)) e!3345194)))

(declare-fun b!5394407 () Bool)

(assert (=> b!5394407 (= e!3345194 ((_ map or) call!386152 (derivationStepZipperUp!517 (Context!9059 (t!374957 (exprs!5029 lt!2197700))) (h!68060 s!2326))))))

(declare-fun b!5394408 () Bool)

(assert (=> b!5394408 (= e!3345194 e!3345193)))

(declare-fun c!940156 () Bool)

(assert (=> b!5394408 (= c!940156 ((_ is Cons!61610) (exprs!5029 lt!2197700)))))

(assert (= (and d!1724096 res!2292382) b!5394405))

(assert (= (and d!1724096 c!940157) b!5394407))

(assert (= (and d!1724096 (not c!940157)) b!5394408))

(assert (= (and b!5394408 c!940156) b!5394406))

(assert (= (and b!5394408 (not c!940156)) b!5394404))

(assert (= (or b!5394407 b!5394406) bm!386147))

(declare-fun m!6419540 () Bool)

(assert (=> b!5394405 m!6419540))

(declare-fun m!6419542 () Bool)

(assert (=> bm!386147 m!6419542))

(declare-fun m!6419544 () Bool)

(assert (=> b!5394407 m!6419544))

(assert (=> b!5393644 d!1724096))

(declare-fun d!1724098 () Bool)

(declare-fun lt!2197849 () Regex!15145)

(assert (=> d!1724098 (validRegex!6881 lt!2197849)))

(assert (=> d!1724098 (= lt!2197849 (generalisedUnion!1074 (unfocusZipperList!587 (Cons!61611 lt!2197700 Nil!61611))))))

(assert (=> d!1724098 (= (unfocusZipper!887 (Cons!61611 lt!2197700 Nil!61611)) lt!2197849)))

(declare-fun bs!1247719 () Bool)

(assert (= bs!1247719 d!1724098))

(declare-fun m!6419546 () Bool)

(assert (=> bs!1247719 m!6419546))

(declare-fun m!6419548 () Bool)

(assert (=> bs!1247719 m!6419548))

(assert (=> bs!1247719 m!6419548))

(declare-fun m!6419550 () Bool)

(assert (=> bs!1247719 m!6419550))

(assert (=> b!5393644 d!1724098))

(declare-fun b!5394409 () Bool)

(declare-fun e!3345196 () (InoxSet Context!9058))

(assert (=> b!5394409 (= e!3345196 ((as const (Array Context!9058 Bool)) false))))

(declare-fun b!5394410 () Bool)

(declare-fun e!3345195 () Bool)

(assert (=> b!5394410 (= e!3345195 (nullable!5314 (h!68058 (exprs!5029 lt!2197703))))))

(declare-fun bm!386148 () Bool)

(declare-fun call!386153 () (InoxSet Context!9058))

(assert (=> bm!386148 (= call!386153 (derivationStepZipperDown!593 (h!68058 (exprs!5029 lt!2197703)) (Context!9059 (t!374957 (exprs!5029 lt!2197703))) (h!68060 s!2326)))))

(declare-fun b!5394411 () Bool)

(assert (=> b!5394411 (= e!3345196 call!386153)))

(declare-fun d!1724100 () Bool)

(declare-fun c!940159 () Bool)

(assert (=> d!1724100 (= c!940159 e!3345195)))

(declare-fun res!2292383 () Bool)

(assert (=> d!1724100 (=> (not res!2292383) (not e!3345195))))

(assert (=> d!1724100 (= res!2292383 ((_ is Cons!61610) (exprs!5029 lt!2197703)))))

(declare-fun e!3345197 () (InoxSet Context!9058))

(assert (=> d!1724100 (= (derivationStepZipperUp!517 lt!2197703 (h!68060 s!2326)) e!3345197)))

(declare-fun b!5394412 () Bool)

(assert (=> b!5394412 (= e!3345197 ((_ map or) call!386153 (derivationStepZipperUp!517 (Context!9059 (t!374957 (exprs!5029 lt!2197703))) (h!68060 s!2326))))))

(declare-fun b!5394413 () Bool)

(assert (=> b!5394413 (= e!3345197 e!3345196)))

(declare-fun c!940158 () Bool)

(assert (=> b!5394413 (= c!940158 ((_ is Cons!61610) (exprs!5029 lt!2197703)))))

(assert (= (and d!1724100 res!2292383) b!5394410))

(assert (= (and d!1724100 c!940159) b!5394412))

(assert (= (and d!1724100 (not c!940159)) b!5394413))

(assert (= (and b!5394413 c!940158) b!5394411))

(assert (= (and b!5394413 (not c!940158)) b!5394409))

(assert (= (or b!5394412 b!5394411) bm!386148))

(declare-fun m!6419552 () Bool)

(assert (=> b!5394410 m!6419552))

(declare-fun m!6419554 () Bool)

(assert (=> bm!386148 m!6419554))

(declare-fun m!6419556 () Bool)

(assert (=> b!5394412 m!6419556))

(assert (=> b!5393644 d!1724100))

(declare-fun d!1724102 () Bool)

(assert (=> d!1724102 (= (flatMap!872 lt!2197718 lambda!280325) (dynLambda!24291 lambda!280325 lt!2197703))))

(declare-fun lt!2197850 () Unit!154102)

(assert (=> d!1724102 (= lt!2197850 (choose!40597 lt!2197718 lt!2197703 lambda!280325))))

(assert (=> d!1724102 (= lt!2197718 (store ((as const (Array Context!9058 Bool)) false) lt!2197703 true))))

(assert (=> d!1724102 (= (lemmaFlatMapOnSingletonSet!404 lt!2197718 lt!2197703 lambda!280325) lt!2197850)))

(declare-fun b_lambda!206333 () Bool)

(assert (=> (not b_lambda!206333) (not d!1724102)))

(declare-fun bs!1247720 () Bool)

(assert (= bs!1247720 d!1724102))

(assert (=> bs!1247720 m!6418932))

(declare-fun m!6419558 () Bool)

(assert (=> bs!1247720 m!6419558))

(declare-fun m!6419560 () Bool)

(assert (=> bs!1247720 m!6419560))

(assert (=> bs!1247720 m!6418926))

(assert (=> b!5393644 d!1724102))

(declare-fun d!1724104 () Bool)

(assert (=> d!1724104 (= (flatMap!872 lt!2197722 lambda!280325) (dynLambda!24291 lambda!280325 lt!2197700))))

(declare-fun lt!2197851 () Unit!154102)

(assert (=> d!1724104 (= lt!2197851 (choose!40597 lt!2197722 lt!2197700 lambda!280325))))

(assert (=> d!1724104 (= lt!2197722 (store ((as const (Array Context!9058 Bool)) false) lt!2197700 true))))

(assert (=> d!1724104 (= (lemmaFlatMapOnSingletonSet!404 lt!2197722 lt!2197700 lambda!280325) lt!2197851)))

(declare-fun b_lambda!206335 () Bool)

(assert (=> (not b_lambda!206335) (not d!1724104)))

(declare-fun bs!1247721 () Bool)

(assert (= bs!1247721 d!1724104))

(assert (=> bs!1247721 m!6418918))

(declare-fun m!6419562 () Bool)

(assert (=> bs!1247721 m!6419562))

(declare-fun m!6419564 () Bool)

(assert (=> bs!1247721 m!6419564))

(assert (=> bs!1247721 m!6418930))

(assert (=> b!5393644 d!1724104))

(declare-fun d!1724106 () Bool)

(assert (=> d!1724106 (= (flatMap!872 lt!2197718 lambda!280325) (choose!40598 lt!2197718 lambda!280325))))

(declare-fun bs!1247722 () Bool)

(assert (= bs!1247722 d!1724106))

(declare-fun m!6419566 () Bool)

(assert (=> bs!1247722 m!6419566))

(assert (=> b!5393644 d!1724106))

(declare-fun bs!1247723 () Bool)

(declare-fun d!1724108 () Bool)

(assert (= bs!1247723 (and d!1724108 b!5393643)))

(declare-fun lambda!280388 () Int)

(assert (=> bs!1247723 (= (= (exprs!5029 lt!2197703) lt!2197725) (= lambda!280388 lambda!280326))))

(assert (=> d!1724108 true))

(assert (=> d!1724108 (= (appendTo!4 lt!2197722 lt!2197703) (map!14102 lt!2197722 lambda!280388))))

(declare-fun bs!1247724 () Bool)

(assert (= bs!1247724 d!1724108))

(declare-fun m!6419568 () Bool)

(assert (=> bs!1247724 m!6419568))

(assert (=> b!5393643 d!1724108))

(declare-fun d!1724110 () Bool)

(declare-fun choose!40599 ((InoxSet Context!9058) Int) (InoxSet Context!9058))

(assert (=> d!1724110 (= (map!14102 lt!2197722 lambda!280326) (choose!40599 lt!2197722 lambda!280326))))

(declare-fun bs!1247725 () Bool)

(assert (= bs!1247725 d!1724110))

(declare-fun m!6419570 () Bool)

(assert (=> bs!1247725 m!6419570))

(assert (=> b!5393643 d!1724110))

(declare-fun d!1724112 () Bool)

(assert (=> d!1724112 (forall!14519 (++!13465 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610) lt!2197725) lambda!280327)))

(declare-fun lt!2197856 () Unit!154102)

(declare-fun choose!40600 (List!61734 List!61734 Int) Unit!154102)

(assert (=> d!1724112 (= lt!2197856 (choose!40600 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610) lt!2197725 lambda!280327))))

(assert (=> d!1724112 (forall!14519 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610) lambda!280327)))

(assert (=> d!1724112 (= (lemmaConcatPreservesForall!170 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610) lt!2197725 lambda!280327) lt!2197856)))

(declare-fun bs!1247726 () Bool)

(assert (= bs!1247726 d!1724112))

(assert (=> bs!1247726 m!6418902))

(assert (=> bs!1247726 m!6418902))

(declare-fun m!6419572 () Bool)

(assert (=> bs!1247726 m!6419572))

(declare-fun m!6419574 () Bool)

(assert (=> bs!1247726 m!6419574))

(declare-fun m!6419576 () Bool)

(assert (=> bs!1247726 m!6419576))

(assert (=> b!5393643 d!1724112))

(declare-fun b!5394427 () Bool)

(declare-fun lt!2197859 () List!61734)

(declare-fun e!3345202 () Bool)

(assert (=> b!5394427 (= e!3345202 (or (not (= lt!2197725 Nil!61610)) (= lt!2197859 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610))))))

(declare-fun b!5394426 () Bool)

(declare-fun res!2292388 () Bool)

(assert (=> b!5394426 (=> (not res!2292388) (not e!3345202))))

(declare-fun size!39821 (List!61734) Int)

(assert (=> b!5394426 (= res!2292388 (= (size!39821 lt!2197859) (+ (size!39821 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610)) (size!39821 lt!2197725))))))

(declare-fun b!5394425 () Bool)

(declare-fun e!3345203 () List!61734)

(assert (=> b!5394425 (= e!3345203 (Cons!61610 (h!68058 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610)) (++!13465 (t!374957 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610)) lt!2197725)))))

(declare-fun d!1724114 () Bool)

(assert (=> d!1724114 e!3345202))

(declare-fun res!2292389 () Bool)

(assert (=> d!1724114 (=> (not res!2292389) (not e!3345202))))

(declare-fun content!11030 (List!61734) (InoxSet Regex!15145))

(assert (=> d!1724114 (= res!2292389 (= (content!11030 lt!2197859) ((_ map or) (content!11030 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610)) (content!11030 lt!2197725))))))

(assert (=> d!1724114 (= lt!2197859 e!3345203)))

(declare-fun c!940163 () Bool)

(assert (=> d!1724114 (= c!940163 ((_ is Nil!61610) (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610)))))

(assert (=> d!1724114 (= (++!13465 (Cons!61610 (reg!15474 (regOne!30802 r!7292)) Nil!61610) lt!2197725) lt!2197859)))

(declare-fun b!5394424 () Bool)

(assert (=> b!5394424 (= e!3345203 lt!2197725)))

(assert (= (and d!1724114 c!940163) b!5394424))

(assert (= (and d!1724114 (not c!940163)) b!5394425))

(assert (= (and d!1724114 res!2292389) b!5394426))

(assert (= (and b!5394426 res!2292388) b!5394427))

(declare-fun m!6419578 () Bool)

(assert (=> b!5394426 m!6419578))

(declare-fun m!6419580 () Bool)

(assert (=> b!5394426 m!6419580))

(declare-fun m!6419582 () Bool)

(assert (=> b!5394426 m!6419582))

(declare-fun m!6419584 () Bool)

(assert (=> b!5394425 m!6419584))

(declare-fun m!6419586 () Bool)

(assert (=> d!1724114 m!6419586))

(declare-fun m!6419588 () Bool)

(assert (=> d!1724114 m!6419588))

(declare-fun m!6419590 () Bool)

(assert (=> d!1724114 m!6419590))

(assert (=> b!5393643 d!1724114))

(declare-fun d!1724116 () Bool)

(declare-fun dynLambda!24292 (Int Context!9058) Context!9058)

(assert (=> d!1724116 (= (map!14102 lt!2197722 lambda!280326) (store ((as const (Array Context!9058 Bool)) false) (dynLambda!24292 lambda!280326 lt!2197700) true))))

(declare-fun lt!2197862 () Unit!154102)

(declare-fun choose!40601 ((InoxSet Context!9058) Context!9058 Int) Unit!154102)

(assert (=> d!1724116 (= lt!2197862 (choose!40601 lt!2197722 lt!2197700 lambda!280326))))

(assert (=> d!1724116 (= lt!2197722 (store ((as const (Array Context!9058 Bool)) false) lt!2197700 true))))

(assert (=> d!1724116 (= (lemmaMapOnSingletonSet!4 lt!2197722 lt!2197700 lambda!280326) lt!2197862)))

(declare-fun b_lambda!206337 () Bool)

(assert (=> (not b_lambda!206337) (not d!1724116)))

(declare-fun bs!1247727 () Bool)

(assert (= bs!1247727 d!1724116))

(declare-fun m!6419592 () Bool)

(assert (=> bs!1247727 m!6419592))

(declare-fun m!6419594 () Bool)

(assert (=> bs!1247727 m!6419594))

(assert (=> bs!1247727 m!6418930))

(assert (=> bs!1247727 m!6418892))

(assert (=> bs!1247727 m!6419594))

(declare-fun m!6419596 () Bool)

(assert (=> bs!1247727 m!6419596))

(assert (=> b!5393643 d!1724116))

(assert (=> b!5393662 d!1724014))

(declare-fun d!1724118 () Bool)

(declare-fun lt!2197863 () Regex!15145)

(assert (=> d!1724118 (validRegex!6881 lt!2197863)))

(assert (=> d!1724118 (= lt!2197863 (generalisedUnion!1074 (unfocusZipperList!587 (Cons!61611 lt!2197703 Nil!61611))))))

(assert (=> d!1724118 (= (unfocusZipper!887 (Cons!61611 lt!2197703 Nil!61611)) lt!2197863)))

(declare-fun bs!1247728 () Bool)

(assert (= bs!1247728 d!1724118))

(declare-fun m!6419598 () Bool)

(assert (=> bs!1247728 m!6419598))

(declare-fun m!6419600 () Bool)

(assert (=> bs!1247728 m!6419600))

(assert (=> bs!1247728 m!6419600))

(declare-fun m!6419602 () Bool)

(assert (=> bs!1247728 m!6419602))

(assert (=> b!5393661 d!1724118))

(declare-fun bs!1247729 () Bool)

(declare-fun d!1724120 () Bool)

(assert (= bs!1247729 (and d!1724120 b!5393643)))

(declare-fun lambda!280391 () Int)

(assert (=> bs!1247729 (= lambda!280391 lambda!280327)))

(declare-fun bs!1247730 () Bool)

(assert (= bs!1247730 (and d!1724120 d!1724006)))

(assert (=> bs!1247730 (= lambda!280391 lambda!280358)))

(declare-fun bs!1247731 () Bool)

(assert (= bs!1247731 (and d!1724120 d!1724016)))

(assert (=> bs!1247731 (= lambda!280391 lambda!280363)))

(declare-fun bs!1247732 () Bool)

(assert (= bs!1247732 (and d!1724120 d!1724030)))

(assert (=> bs!1247732 (= lambda!280391 lambda!280372)))

(declare-fun b!5394448 () Bool)

(declare-fun e!3345216 () Bool)

(declare-fun e!3345220 () Bool)

(assert (=> b!5394448 (= e!3345216 e!3345220)))

(declare-fun c!940175 () Bool)

(assert (=> b!5394448 (= c!940175 (isEmpty!33610 (exprs!5029 (h!68059 zl!343))))))

(declare-fun b!5394449 () Bool)

(declare-fun e!3345221 () Regex!15145)

(assert (=> b!5394449 (= e!3345221 (Concat!23990 (h!68058 (exprs!5029 (h!68059 zl!343))) (generalisedConcat!814 (t!374957 (exprs!5029 (h!68059 zl!343))))))))

(declare-fun b!5394450 () Bool)

(declare-fun lt!2197866 () Regex!15145)

(declare-fun isEmptyExpr!960 (Regex!15145) Bool)

(assert (=> b!5394450 (= e!3345220 (isEmptyExpr!960 lt!2197866))))

(declare-fun b!5394451 () Bool)

(declare-fun e!3345219 () Regex!15145)

(assert (=> b!5394451 (= e!3345219 e!3345221)))

(declare-fun c!940174 () Bool)

(assert (=> b!5394451 (= c!940174 ((_ is Cons!61610) (exprs!5029 (h!68059 zl!343))))))

(declare-fun b!5394452 () Bool)

(declare-fun e!3345218 () Bool)

(declare-fun isConcat!483 (Regex!15145) Bool)

(assert (=> b!5394452 (= e!3345218 (isConcat!483 lt!2197866))))

(assert (=> d!1724120 e!3345216))

(declare-fun res!2292395 () Bool)

(assert (=> d!1724120 (=> (not res!2292395) (not e!3345216))))

(assert (=> d!1724120 (= res!2292395 (validRegex!6881 lt!2197866))))

(assert (=> d!1724120 (= lt!2197866 e!3345219)))

(declare-fun c!940172 () Bool)

(declare-fun e!3345217 () Bool)

(assert (=> d!1724120 (= c!940172 e!3345217)))

(declare-fun res!2292394 () Bool)

(assert (=> d!1724120 (=> (not res!2292394) (not e!3345217))))

(assert (=> d!1724120 (= res!2292394 ((_ is Cons!61610) (exprs!5029 (h!68059 zl!343))))))

(assert (=> d!1724120 (forall!14519 (exprs!5029 (h!68059 zl!343)) lambda!280391)))

(assert (=> d!1724120 (= (generalisedConcat!814 (exprs!5029 (h!68059 zl!343))) lt!2197866)))

(declare-fun b!5394453 () Bool)

(assert (=> b!5394453 (= e!3345219 (h!68058 (exprs!5029 (h!68059 zl!343))))))

(declare-fun b!5394454 () Bool)

(assert (=> b!5394454 (= e!3345217 (isEmpty!33610 (t!374957 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun b!5394455 () Bool)

(assert (=> b!5394455 (= e!3345218 (= lt!2197866 (head!11571 (exprs!5029 (h!68059 zl!343)))))))

(declare-fun b!5394456 () Bool)

(assert (=> b!5394456 (= e!3345221 EmptyExpr!15145)))

(declare-fun b!5394457 () Bool)

(assert (=> b!5394457 (= e!3345220 e!3345218)))

(declare-fun c!940173 () Bool)

(assert (=> b!5394457 (= c!940173 (isEmpty!33610 (tail!10668 (exprs!5029 (h!68059 zl!343)))))))

(assert (= (and d!1724120 res!2292394) b!5394454))

(assert (= (and d!1724120 c!940172) b!5394453))

(assert (= (and d!1724120 (not c!940172)) b!5394451))

(assert (= (and b!5394451 c!940174) b!5394449))

(assert (= (and b!5394451 (not c!940174)) b!5394456))

(assert (= (and d!1724120 res!2292395) b!5394448))

(assert (= (and b!5394448 c!940175) b!5394450))

(assert (= (and b!5394448 (not c!940175)) b!5394457))

(assert (= (and b!5394457 c!940173) b!5394455))

(assert (= (and b!5394457 (not c!940173)) b!5394452))

(declare-fun m!6419604 () Bool)

(assert (=> b!5394448 m!6419604))

(declare-fun m!6419606 () Bool)

(assert (=> b!5394452 m!6419606))

(declare-fun m!6419608 () Bool)

(assert (=> b!5394449 m!6419608))

(declare-fun m!6419610 () Bool)

(assert (=> d!1724120 m!6419610))

(declare-fun m!6419612 () Bool)

(assert (=> d!1724120 m!6419612))

(assert (=> b!5394454 m!6418986))

(declare-fun m!6419614 () Bool)

(assert (=> b!5394455 m!6419614))

(declare-fun m!6419616 () Bool)

(assert (=> b!5394457 m!6419616))

(assert (=> b!5394457 m!6419616))

(declare-fun m!6419618 () Bool)

(assert (=> b!5394457 m!6419618))

(declare-fun m!6419620 () Bool)

(assert (=> b!5394450 m!6419620))

(assert (=> b!5393640 d!1724120))

(declare-fun d!1724122 () Bool)

(declare-fun c!940176 () Bool)

(assert (=> d!1724122 (= c!940176 (isEmpty!33613 (t!374959 s!2326)))))

(declare-fun e!3345222 () Bool)

(assert (=> d!1724122 (= (matchZipper!1389 lt!2197713 (t!374959 s!2326)) e!3345222)))

(declare-fun b!5394458 () Bool)

(assert (=> b!5394458 (= e!3345222 (nullableZipper!1426 lt!2197713))))

(declare-fun b!5394459 () Bool)

(assert (=> b!5394459 (= e!3345222 (matchZipper!1389 (derivationStepZipper!1384 lt!2197713 (head!11570 (t!374959 s!2326))) (tail!10667 (t!374959 s!2326))))))

(assert (= (and d!1724122 c!940176) b!5394458))

(assert (= (and d!1724122 (not c!940176)) b!5394459))

(assert (=> d!1724122 m!6419304))

(declare-fun m!6419622 () Bool)

(assert (=> b!5394458 m!6419622))

(assert (=> b!5394459 m!6419308))

(assert (=> b!5394459 m!6419308))

(declare-fun m!6419624 () Bool)

(assert (=> b!5394459 m!6419624))

(assert (=> b!5394459 m!6419312))

(assert (=> b!5394459 m!6419624))

(assert (=> b!5394459 m!6419312))

(declare-fun m!6419626 () Bool)

(assert (=> b!5394459 m!6419626))

(assert (=> b!5393658 d!1724122))

(declare-fun d!1724124 () Bool)

(declare-fun c!940177 () Bool)

(assert (=> d!1724124 (= c!940177 (isEmpty!33613 s!2326))))

(declare-fun e!3345223 () Bool)

(assert (=> d!1724124 (= (matchZipper!1389 lt!2197732 s!2326) e!3345223)))

(declare-fun b!5394460 () Bool)

(assert (=> b!5394460 (= e!3345223 (nullableZipper!1426 lt!2197732))))

(declare-fun b!5394461 () Bool)

(assert (=> b!5394461 (= e!3345223 (matchZipper!1389 (derivationStepZipper!1384 lt!2197732 (head!11570 s!2326)) (tail!10667 s!2326)))))

(assert (= (and d!1724124 c!940177) b!5394460))

(assert (= (and d!1724124 (not c!940177)) b!5394461))

(assert (=> d!1724124 m!6419278))

(declare-fun m!6419628 () Bool)

(assert (=> b!5394460 m!6419628))

(assert (=> b!5394461 m!6419282))

(assert (=> b!5394461 m!6419282))

(declare-fun m!6419630 () Bool)

(assert (=> b!5394461 m!6419630))

(assert (=> b!5394461 m!6419286))

(assert (=> b!5394461 m!6419630))

(assert (=> b!5394461 m!6419286))

(declare-fun m!6419632 () Bool)

(assert (=> b!5394461 m!6419632))

(assert (=> b!5393658 d!1724124))

(declare-fun e!3345226 () Bool)

(declare-fun d!1724126 () Bool)

(assert (=> d!1724126 (= (matchZipper!1389 ((_ map or) lt!2197712 lt!2197704) (t!374959 s!2326)) e!3345226)))

(declare-fun res!2292398 () Bool)

(assert (=> d!1724126 (=> res!2292398 e!3345226)))

(assert (=> d!1724126 (= res!2292398 (matchZipper!1389 lt!2197712 (t!374959 s!2326)))))

(declare-fun lt!2197869 () Unit!154102)

(declare-fun choose!40602 ((InoxSet Context!9058) (InoxSet Context!9058) List!61736) Unit!154102)

(assert (=> d!1724126 (= lt!2197869 (choose!40602 lt!2197712 lt!2197704 (t!374959 s!2326)))))

(assert (=> d!1724126 (= (lemmaZipperConcatMatchesSameAsBothZippers!382 lt!2197712 lt!2197704 (t!374959 s!2326)) lt!2197869)))

(declare-fun b!5394464 () Bool)

(assert (=> b!5394464 (= e!3345226 (matchZipper!1389 lt!2197704 (t!374959 s!2326)))))

(assert (= (and d!1724126 (not res!2292398)) b!5394464))

(assert (=> d!1724126 m!6418910))

(assert (=> d!1724126 m!6418908))

(declare-fun m!6419634 () Bool)

(assert (=> d!1724126 m!6419634))

(assert (=> b!5394464 m!6418890))

(assert (=> b!5393639 d!1724126))

(declare-fun d!1724128 () Bool)

(declare-fun c!940178 () Bool)

(assert (=> d!1724128 (= c!940178 (isEmpty!33613 (t!374959 s!2326)))))

(declare-fun e!3345227 () Bool)

(assert (=> d!1724128 (= (matchZipper!1389 lt!2197712 (t!374959 s!2326)) e!3345227)))

(declare-fun b!5394465 () Bool)

(assert (=> b!5394465 (= e!3345227 (nullableZipper!1426 lt!2197712))))

(declare-fun b!5394466 () Bool)

(assert (=> b!5394466 (= e!3345227 (matchZipper!1389 (derivationStepZipper!1384 lt!2197712 (head!11570 (t!374959 s!2326))) (tail!10667 (t!374959 s!2326))))))

(assert (= (and d!1724128 c!940178) b!5394465))

(assert (= (and d!1724128 (not c!940178)) b!5394466))

(assert (=> d!1724128 m!6419304))

(declare-fun m!6419636 () Bool)

(assert (=> b!5394465 m!6419636))

(assert (=> b!5394466 m!6419308))

(assert (=> b!5394466 m!6419308))

(declare-fun m!6419638 () Bool)

(assert (=> b!5394466 m!6419638))

(assert (=> b!5394466 m!6419312))

(assert (=> b!5394466 m!6419638))

(assert (=> b!5394466 m!6419312))

(declare-fun m!6419640 () Bool)

(assert (=> b!5394466 m!6419640))

(assert (=> b!5393639 d!1724128))

(declare-fun d!1724130 () Bool)

(declare-fun c!940179 () Bool)

(assert (=> d!1724130 (= c!940179 (isEmpty!33613 (t!374959 s!2326)))))

(declare-fun e!3345228 () Bool)

(assert (=> d!1724130 (= (matchZipper!1389 ((_ map or) lt!2197712 lt!2197704) (t!374959 s!2326)) e!3345228)))

(declare-fun b!5394467 () Bool)

(assert (=> b!5394467 (= e!3345228 (nullableZipper!1426 ((_ map or) lt!2197712 lt!2197704)))))

(declare-fun b!5394468 () Bool)

(assert (=> b!5394468 (= e!3345228 (matchZipper!1389 (derivationStepZipper!1384 ((_ map or) lt!2197712 lt!2197704) (head!11570 (t!374959 s!2326))) (tail!10667 (t!374959 s!2326))))))

(assert (= (and d!1724130 c!940179) b!5394467))

(assert (= (and d!1724130 (not c!940179)) b!5394468))

(assert (=> d!1724130 m!6419304))

(declare-fun m!6419642 () Bool)

(assert (=> b!5394467 m!6419642))

(assert (=> b!5394468 m!6419308))

(assert (=> b!5394468 m!6419308))

(declare-fun m!6419644 () Bool)

(assert (=> b!5394468 m!6419644))

(assert (=> b!5394468 m!6419312))

(assert (=> b!5394468 m!6419644))

(assert (=> b!5394468 m!6419312))

(declare-fun m!6419646 () Bool)

(assert (=> b!5394468 m!6419646))

(assert (=> b!5393639 d!1724130))

(declare-fun b!5394487 () Bool)

(declare-fun res!2292411 () Bool)

(declare-fun e!3345241 () Bool)

(assert (=> b!5394487 (=> (not res!2292411) (not e!3345241))))

(declare-fun lt!2197877 () Option!15256)

(assert (=> b!5394487 (= res!2292411 (matchR!7330 (regOne!30802 r!7292) (_1!35647 (get!21222 lt!2197877))))))

(declare-fun b!5394488 () Bool)

(assert (=> b!5394488 (= e!3345241 (= (++!13466 (_1!35647 (get!21222 lt!2197877)) (_2!35647 (get!21222 lt!2197877))) s!2326))))

(declare-fun d!1724132 () Bool)

(declare-fun e!3345240 () Bool)

(assert (=> d!1724132 e!3345240))

(declare-fun res!2292413 () Bool)

(assert (=> d!1724132 (=> res!2292413 e!3345240)))

(assert (=> d!1724132 (= res!2292413 e!3345241)))

(declare-fun res!2292412 () Bool)

(assert (=> d!1724132 (=> (not res!2292412) (not e!3345241))))

(assert (=> d!1724132 (= res!2292412 (isDefined!11959 lt!2197877))))

(declare-fun e!3345243 () Option!15256)

(assert (=> d!1724132 (= lt!2197877 e!3345243)))

(declare-fun c!940185 () Bool)

(declare-fun e!3345239 () Bool)

(assert (=> d!1724132 (= c!940185 e!3345239)))

(declare-fun res!2292410 () Bool)

(assert (=> d!1724132 (=> (not res!2292410) (not e!3345239))))

(assert (=> d!1724132 (= res!2292410 (matchR!7330 (regOne!30802 r!7292) Nil!61612))))

(assert (=> d!1724132 (validRegex!6881 (regOne!30802 r!7292))))

(assert (=> d!1724132 (= (findConcatSeparation!1670 (regOne!30802 r!7292) (regTwo!30802 r!7292) Nil!61612 s!2326 s!2326) lt!2197877)))

(declare-fun b!5394489 () Bool)

(declare-fun e!3345242 () Option!15256)

(assert (=> b!5394489 (= e!3345243 e!3345242)))

(declare-fun c!940184 () Bool)

(assert (=> b!5394489 (= c!940184 ((_ is Nil!61612) s!2326))))

(declare-fun b!5394490 () Bool)

(assert (=> b!5394490 (= e!3345242 None!15255)))

(declare-fun b!5394491 () Bool)

(assert (=> b!5394491 (= e!3345243 (Some!15255 (tuple2!64689 Nil!61612 s!2326)))))

(declare-fun b!5394492 () Bool)

(declare-fun lt!2197878 () Unit!154102)

(declare-fun lt!2197876 () Unit!154102)

(assert (=> b!5394492 (= lt!2197878 lt!2197876)))

(assert (=> b!5394492 (= (++!13466 (++!13466 Nil!61612 (Cons!61612 (h!68060 s!2326) Nil!61612)) (t!374959 s!2326)) s!2326)))

(assert (=> b!5394492 (= lt!2197876 (lemmaMoveElementToOtherListKeepsConcatEq!1821 Nil!61612 (h!68060 s!2326) (t!374959 s!2326) s!2326))))

(assert (=> b!5394492 (= e!3345242 (findConcatSeparation!1670 (regOne!30802 r!7292) (regTwo!30802 r!7292) (++!13466 Nil!61612 (Cons!61612 (h!68060 s!2326) Nil!61612)) (t!374959 s!2326) s!2326))))

(declare-fun b!5394493 () Bool)

(declare-fun res!2292409 () Bool)

(assert (=> b!5394493 (=> (not res!2292409) (not e!3345241))))

(assert (=> b!5394493 (= res!2292409 (matchR!7330 (regTwo!30802 r!7292) (_2!35647 (get!21222 lt!2197877))))))

(declare-fun b!5394494 () Bool)

(assert (=> b!5394494 (= e!3345240 (not (isDefined!11959 lt!2197877)))))

(declare-fun b!5394495 () Bool)

(assert (=> b!5394495 (= e!3345239 (matchR!7330 (regTwo!30802 r!7292) s!2326))))

(assert (= (and d!1724132 res!2292410) b!5394495))

(assert (= (and d!1724132 c!940185) b!5394491))

(assert (= (and d!1724132 (not c!940185)) b!5394489))

(assert (= (and b!5394489 c!940184) b!5394490))

(assert (= (and b!5394489 (not c!940184)) b!5394492))

(assert (= (and d!1724132 res!2292412) b!5394487))

(assert (= (and b!5394487 res!2292411) b!5394493))

(assert (= (and b!5394493 res!2292409) b!5394488))

(assert (= (and d!1724132 (not res!2292413)) b!5394494))

(declare-fun m!6419648 () Bool)

(assert (=> b!5394494 m!6419648))

(declare-fun m!6419650 () Bool)

(assert (=> b!5394487 m!6419650))

(declare-fun m!6419652 () Bool)

(assert (=> b!5394487 m!6419652))

(assert (=> b!5394492 m!6419472))

(assert (=> b!5394492 m!6419472))

(assert (=> b!5394492 m!6419474))

(assert (=> b!5394492 m!6419476))

(assert (=> b!5394492 m!6419472))

(declare-fun m!6419654 () Bool)

(assert (=> b!5394492 m!6419654))

(assert (=> b!5394488 m!6419650))

(declare-fun m!6419656 () Bool)

(assert (=> b!5394488 m!6419656))

(assert (=> d!1724132 m!6419648))

(declare-fun m!6419658 () Bool)

(assert (=> d!1724132 m!6419658))

(declare-fun m!6419660 () Bool)

(assert (=> d!1724132 m!6419660))

(declare-fun m!6419662 () Bool)

(assert (=> b!5394495 m!6419662))

(assert (=> b!5394493 m!6419650))

(declare-fun m!6419664 () Bool)

(assert (=> b!5394493 m!6419664))

(assert (=> b!5393637 d!1724132))

(declare-fun d!1724134 () Bool)

(declare-fun choose!40603 (Int) Bool)

(assert (=> d!1724134 (= (Exists!2326 lambda!280323) (choose!40603 lambda!280323))))

(declare-fun bs!1247733 () Bool)

(assert (= bs!1247733 d!1724134))

(declare-fun m!6419666 () Bool)

(assert (=> bs!1247733 m!6419666))

(assert (=> b!5393637 d!1724134))

(declare-fun d!1724136 () Bool)

(assert (=> d!1724136 (= (Exists!2326 lambda!280324) (choose!40603 lambda!280324))))

(declare-fun bs!1247734 () Bool)

(assert (= bs!1247734 d!1724136))

(declare-fun m!6419668 () Bool)

(assert (=> bs!1247734 m!6419668))

(assert (=> b!5393637 d!1724136))

(declare-fun bs!1247735 () Bool)

(declare-fun d!1724138 () Bool)

(assert (= bs!1247735 (and d!1724138 b!5393637)))

(declare-fun lambda!280394 () Int)

(assert (=> bs!1247735 (= lambda!280394 lambda!280323)))

(assert (=> bs!1247735 (not (= lambda!280394 lambda!280324))))

(declare-fun bs!1247736 () Bool)

(assert (= bs!1247736 (and d!1724138 b!5394292)))

(assert (=> bs!1247736 (not (= lambda!280394 lambda!280379))))

(declare-fun bs!1247737 () Bool)

(assert (= bs!1247737 (and d!1724138 b!5394289)))

(assert (=> bs!1247737 (not (= lambda!280394 lambda!280380))))

(assert (=> d!1724138 true))

(assert (=> d!1724138 true))

(assert (=> d!1724138 true))

(assert (=> d!1724138 (= (isDefined!11959 (findConcatSeparation!1670 (regOne!30802 r!7292) (regTwo!30802 r!7292) Nil!61612 s!2326 s!2326)) (Exists!2326 lambda!280394))))

(declare-fun lt!2197881 () Unit!154102)

(declare-fun choose!40604 (Regex!15145 Regex!15145 List!61736) Unit!154102)

(assert (=> d!1724138 (= lt!2197881 (choose!40604 (regOne!30802 r!7292) (regTwo!30802 r!7292) s!2326))))

(assert (=> d!1724138 (validRegex!6881 (regOne!30802 r!7292))))

(assert (=> d!1724138 (= (lemmaFindConcatSeparationEquivalentToExists!1434 (regOne!30802 r!7292) (regTwo!30802 r!7292) s!2326) lt!2197881)))

(declare-fun bs!1247738 () Bool)

(assert (= bs!1247738 d!1724138))

(assert (=> bs!1247738 m!6418958))

(declare-fun m!6419670 () Bool)

(assert (=> bs!1247738 m!6419670))

(assert (=> bs!1247738 m!6419660))

(assert (=> bs!1247738 m!6418958))

(assert (=> bs!1247738 m!6418960))

(declare-fun m!6419672 () Bool)

(assert (=> bs!1247738 m!6419672))

(assert (=> b!5393637 d!1724138))

(declare-fun bs!1247739 () Bool)

(declare-fun d!1724140 () Bool)

(assert (= bs!1247739 (and d!1724140 b!5394289)))

(declare-fun lambda!280399 () Int)

(assert (=> bs!1247739 (not (= lambda!280399 lambda!280380))))

(declare-fun bs!1247740 () Bool)

(assert (= bs!1247740 (and d!1724140 b!5394292)))

(assert (=> bs!1247740 (not (= lambda!280399 lambda!280379))))

(declare-fun bs!1247741 () Bool)

(assert (= bs!1247741 (and d!1724140 b!5393637)))

(assert (=> bs!1247741 (not (= lambda!280399 lambda!280324))))

(declare-fun bs!1247742 () Bool)

(assert (= bs!1247742 (and d!1724140 d!1724138)))

(assert (=> bs!1247742 (= lambda!280399 lambda!280394)))

(assert (=> bs!1247741 (= lambda!280399 lambda!280323)))

(assert (=> d!1724140 true))

(assert (=> d!1724140 true))

(assert (=> d!1724140 true))

(declare-fun lambda!280400 () Int)

(assert (=> bs!1247739 (= (and (= (regOne!30802 r!7292) (regOne!30802 lt!2197705)) (= (regTwo!30802 r!7292) (regTwo!30802 lt!2197705))) (= lambda!280400 lambda!280380))))

(assert (=> bs!1247740 (not (= lambda!280400 lambda!280379))))

(assert (=> bs!1247741 (= lambda!280400 lambda!280324)))

(assert (=> bs!1247742 (not (= lambda!280400 lambda!280394))))

(assert (=> bs!1247741 (not (= lambda!280400 lambda!280323))))

(declare-fun bs!1247743 () Bool)

(assert (= bs!1247743 d!1724140))

(assert (=> bs!1247743 (not (= lambda!280400 lambda!280399))))

(assert (=> d!1724140 true))

(assert (=> d!1724140 true))

(assert (=> d!1724140 true))

(assert (=> d!1724140 (= (Exists!2326 lambda!280399) (Exists!2326 lambda!280400))))

(declare-fun lt!2197884 () Unit!154102)

(declare-fun choose!40605 (Regex!15145 Regex!15145 List!61736) Unit!154102)

(assert (=> d!1724140 (= lt!2197884 (choose!40605 (regOne!30802 r!7292) (regTwo!30802 r!7292) s!2326))))

(assert (=> d!1724140 (validRegex!6881 (regOne!30802 r!7292))))

(assert (=> d!1724140 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!980 (regOne!30802 r!7292) (regTwo!30802 r!7292) s!2326) lt!2197884)))

(declare-fun m!6419674 () Bool)

(assert (=> bs!1247743 m!6419674))

(declare-fun m!6419676 () Bool)

(assert (=> bs!1247743 m!6419676))

(declare-fun m!6419678 () Bool)

(assert (=> bs!1247743 m!6419678))

(assert (=> bs!1247743 m!6419660))

(assert (=> b!5393637 d!1724140))

(declare-fun d!1724142 () Bool)

(assert (=> d!1724142 (= (isDefined!11959 (findConcatSeparation!1670 (regOne!30802 r!7292) (regTwo!30802 r!7292) Nil!61612 s!2326 s!2326)) (not (isEmpty!33614 (findConcatSeparation!1670 (regOne!30802 r!7292) (regTwo!30802 r!7292) Nil!61612 s!2326 s!2326))))))

(declare-fun bs!1247744 () Bool)

(assert (= bs!1247744 d!1724142))

(assert (=> bs!1247744 m!6418958))

(declare-fun m!6419680 () Bool)

(assert (=> bs!1247744 m!6419680))

(assert (=> b!5393637 d!1724142))

(declare-fun bs!1247745 () Bool)

(declare-fun d!1724144 () Bool)

(assert (= bs!1247745 (and d!1724144 b!5393643)))

(declare-fun lambda!280401 () Int)

(assert (=> bs!1247745 (= lambda!280401 lambda!280327)))

(declare-fun bs!1247746 () Bool)

(assert (= bs!1247746 (and d!1724144 d!1724016)))

(assert (=> bs!1247746 (= lambda!280401 lambda!280363)))

(declare-fun bs!1247747 () Bool)

(assert (= bs!1247747 (and d!1724144 d!1724006)))

(assert (=> bs!1247747 (= lambda!280401 lambda!280358)))

(declare-fun bs!1247748 () Bool)

(assert (= bs!1247748 (and d!1724144 d!1724030)))

(assert (=> bs!1247748 (= lambda!280401 lambda!280372)))

(declare-fun bs!1247749 () Bool)

(assert (= bs!1247749 (and d!1724144 d!1724120)))

(assert (=> bs!1247749 (= lambda!280401 lambda!280391)))

(assert (=> d!1724144 (= (inv!81109 setElem!35057) (forall!14519 (exprs!5029 setElem!35057) lambda!280401))))

(declare-fun bs!1247750 () Bool)

(assert (= bs!1247750 d!1724144))

(declare-fun m!6419682 () Bool)

(assert (=> bs!1247750 m!6419682))

(assert (=> setNonEmpty!35057 d!1724144))

(declare-fun call!386156 () List!61734)

(declare-fun bm!386149 () Bool)

(declare-fun c!940190 () Bool)

(declare-fun call!386155 () (InoxSet Context!9058))

(assert (=> bm!386149 (= call!386155 (derivationStepZipperDown!593 (ite c!940190 (regOne!30803 (reg!15474 (regOne!30802 r!7292))) (regOne!30802 (reg!15474 (regOne!30802 r!7292)))) (ite c!940190 lt!2197703 (Context!9059 call!386156)) (h!68060 s!2326)))))

(declare-fun bm!386150 () Bool)

(declare-fun call!386154 () (InoxSet Context!9058))

(declare-fun call!386157 () (InoxSet Context!9058))

(assert (=> bm!386150 (= call!386154 call!386157)))

(declare-fun b!5394508 () Bool)

(declare-fun e!3345253 () (InoxSet Context!9058))

(declare-fun e!3345252 () (InoxSet Context!9058))

(assert (=> b!5394508 (= e!3345253 e!3345252)))

(assert (=> b!5394508 (= c!940190 ((_ is Union!15145) (reg!15474 (regOne!30802 r!7292))))))

(declare-fun b!5394509 () Bool)

(declare-fun e!3345251 () (InoxSet Context!9058))

(assert (=> b!5394509 (= e!3345251 call!386154)))

(declare-fun b!5394510 () Bool)

(declare-fun call!386159 () (InoxSet Context!9058))

(assert (=> b!5394510 (= e!3345252 ((_ map or) call!386155 call!386159))))

(declare-fun d!1724146 () Bool)

(declare-fun c!940188 () Bool)

(assert (=> d!1724146 (= c!940188 (and ((_ is ElementMatch!15145) (reg!15474 (regOne!30802 r!7292))) (= (c!939945 (reg!15474 (regOne!30802 r!7292))) (h!68060 s!2326))))))

(assert (=> d!1724146 (= (derivationStepZipperDown!593 (reg!15474 (regOne!30802 r!7292)) lt!2197703 (h!68060 s!2326)) e!3345253)))

(declare-fun b!5394511 () Bool)

(declare-fun e!3345254 () (InoxSet Context!9058))

(assert (=> b!5394511 (= e!3345254 call!386154)))

(declare-fun b!5394512 () Bool)

(declare-fun e!3345250 () (InoxSet Context!9058))

(assert (=> b!5394512 (= e!3345250 ((_ map or) call!386155 call!386157))))

(declare-fun bm!386151 () Bool)

(declare-fun call!386158 () List!61734)

(assert (=> bm!386151 (= call!386158 call!386156)))

(declare-fun b!5394513 () Bool)

(assert (=> b!5394513 (= e!3345251 ((as const (Array Context!9058 Bool)) false))))

(declare-fun bm!386152 () Bool)

(declare-fun c!940189 () Bool)

(declare-fun c!940187 () Bool)

(assert (=> bm!386152 (= call!386159 (derivationStepZipperDown!593 (ite c!940190 (regTwo!30803 (reg!15474 (regOne!30802 r!7292))) (ite c!940189 (regTwo!30802 (reg!15474 (regOne!30802 r!7292))) (ite c!940187 (regOne!30802 (reg!15474 (regOne!30802 r!7292))) (reg!15474 (reg!15474 (regOne!30802 r!7292)))))) (ite (or c!940190 c!940189) lt!2197703 (Context!9059 call!386158)) (h!68060 s!2326)))))

(declare-fun b!5394514 () Bool)

(assert (=> b!5394514 (= e!3345250 e!3345254)))

(assert (=> b!5394514 (= c!940187 ((_ is Concat!23990) (reg!15474 (regOne!30802 r!7292))))))

(declare-fun b!5394515 () Bool)

(declare-fun e!3345255 () Bool)

(assert (=> b!5394515 (= e!3345255 (nullable!5314 (regOne!30802 (reg!15474 (regOne!30802 r!7292)))))))

(declare-fun bm!386153 () Bool)

(assert (=> bm!386153 (= call!386157 call!386159)))

(declare-fun b!5394516 () Bool)

(assert (=> b!5394516 (= e!3345253 (store ((as const (Array Context!9058 Bool)) false) lt!2197703 true))))

(declare-fun bm!386154 () Bool)

(assert (=> bm!386154 (= call!386156 ($colon$colon!1476 (exprs!5029 lt!2197703) (ite (or c!940189 c!940187) (regTwo!30802 (reg!15474 (regOne!30802 r!7292))) (reg!15474 (regOne!30802 r!7292)))))))

(declare-fun b!5394517 () Bool)

(declare-fun c!940186 () Bool)

(assert (=> b!5394517 (= c!940186 ((_ is Star!15145) (reg!15474 (regOne!30802 r!7292))))))

(assert (=> b!5394517 (= e!3345254 e!3345251)))

(declare-fun b!5394518 () Bool)

(assert (=> b!5394518 (= c!940189 e!3345255)))

(declare-fun res!2292426 () Bool)

(assert (=> b!5394518 (=> (not res!2292426) (not e!3345255))))

(assert (=> b!5394518 (= res!2292426 ((_ is Concat!23990) (reg!15474 (regOne!30802 r!7292))))))

(assert (=> b!5394518 (= e!3345252 e!3345250)))

(assert (= (and d!1724146 c!940188) b!5394516))

(assert (= (and d!1724146 (not c!940188)) b!5394508))

(assert (= (and b!5394508 c!940190) b!5394510))

(assert (= (and b!5394508 (not c!940190)) b!5394518))

(assert (= (and b!5394518 res!2292426) b!5394515))

(assert (= (and b!5394518 c!940189) b!5394512))

(assert (= (and b!5394518 (not c!940189)) b!5394514))

(assert (= (and b!5394514 c!940187) b!5394511))

(assert (= (and b!5394514 (not c!940187)) b!5394517))

(assert (= (and b!5394517 c!940186) b!5394509))

(assert (= (and b!5394517 (not c!940186)) b!5394513))

(assert (= (or b!5394511 b!5394509) bm!386151))

(assert (= (or b!5394511 b!5394509) bm!386150))

(assert (= (or b!5394512 bm!386151) bm!386154))

(assert (= (or b!5394512 bm!386150) bm!386153))

(assert (= (or b!5394510 bm!386153) bm!386152))

(assert (= (or b!5394510 b!5394512) bm!386149))

(declare-fun m!6419684 () Bool)

(assert (=> bm!386154 m!6419684))

(assert (=> b!5394516 m!6418926))

(declare-fun m!6419686 () Bool)

(assert (=> bm!386152 m!6419686))

(declare-fun m!6419688 () Bool)

(assert (=> b!5394515 m!6419688))

(declare-fun m!6419690 () Bool)

(assert (=> bm!386149 m!6419690))

(assert (=> b!5393655 d!1724146))

(declare-fun d!1724148 () Bool)

(assert (=> d!1724148 (= (isEmpty!33609 (t!374958 zl!343)) ((_ is Nil!61611) (t!374958 zl!343)))))

(assert (=> b!5393635 d!1724148))

(declare-fun d!1724150 () Bool)

(declare-fun lt!2197885 () Regex!15145)

(assert (=> d!1724150 (validRegex!6881 lt!2197885)))

(assert (=> d!1724150 (= lt!2197885 (generalisedUnion!1074 (unfocusZipperList!587 (Cons!61611 lt!2197715 Nil!61611))))))

(assert (=> d!1724150 (= (unfocusZipper!887 (Cons!61611 lt!2197715 Nil!61611)) lt!2197885)))

(declare-fun bs!1247751 () Bool)

(assert (= bs!1247751 d!1724150))

(declare-fun m!6419692 () Bool)

(assert (=> bs!1247751 m!6419692))

(declare-fun m!6419694 () Bool)

(assert (=> bs!1247751 m!6419694))

(assert (=> bs!1247751 m!6419694))

(declare-fun m!6419696 () Bool)

(assert (=> bs!1247751 m!6419696))

(assert (=> b!5393675 d!1724150))

(declare-fun bs!1247752 () Bool)

(declare-fun b!5394525 () Bool)

(assert (= bs!1247752 (and b!5394525 b!5394289)))

(declare-fun lambda!280402 () Int)

(assert (=> bs!1247752 (not (= lambda!280402 lambda!280380))))

(declare-fun bs!1247753 () Bool)

(assert (= bs!1247753 (and b!5394525 b!5394292)))

(assert (=> bs!1247753 (= (and (= (reg!15474 r!7292) (reg!15474 lt!2197705)) (= r!7292 lt!2197705)) (= lambda!280402 lambda!280379))))

(declare-fun bs!1247754 () Bool)

(assert (= bs!1247754 (and b!5394525 d!1724140)))

(assert (=> bs!1247754 (not (= lambda!280402 lambda!280400))))

(declare-fun bs!1247755 () Bool)

(assert (= bs!1247755 (and b!5394525 b!5393637)))

(assert (=> bs!1247755 (not (= lambda!280402 lambda!280324))))

(declare-fun bs!1247756 () Bool)

(assert (= bs!1247756 (and b!5394525 d!1724138)))

(assert (=> bs!1247756 (not (= lambda!280402 lambda!280394))))

(assert (=> bs!1247755 (not (= lambda!280402 lambda!280323))))

(assert (=> bs!1247754 (not (= lambda!280402 lambda!280399))))

(assert (=> b!5394525 true))

(assert (=> b!5394525 true))

(declare-fun bs!1247757 () Bool)

(declare-fun b!5394522 () Bool)

(assert (= bs!1247757 (and b!5394522 b!5394289)))

(declare-fun lambda!280403 () Int)

(assert (=> bs!1247757 (= (and (= (regOne!30802 r!7292) (regOne!30802 lt!2197705)) (= (regTwo!30802 r!7292) (regTwo!30802 lt!2197705))) (= lambda!280403 lambda!280380))))

(declare-fun bs!1247758 () Bool)

(assert (= bs!1247758 (and b!5394522 b!5394292)))

(assert (=> bs!1247758 (not (= lambda!280403 lambda!280379))))

(declare-fun bs!1247759 () Bool)

(assert (= bs!1247759 (and b!5394522 d!1724140)))

(assert (=> bs!1247759 (= lambda!280403 lambda!280400)))

(declare-fun bs!1247760 () Bool)

(assert (= bs!1247760 (and b!5394522 b!5393637)))

(assert (=> bs!1247760 (= lambda!280403 lambda!280324)))

(declare-fun bs!1247761 () Bool)

(assert (= bs!1247761 (and b!5394522 d!1724138)))

(assert (=> bs!1247761 (not (= lambda!280403 lambda!280394))))

(declare-fun bs!1247762 () Bool)

(assert (= bs!1247762 (and b!5394522 b!5394525)))

(assert (=> bs!1247762 (not (= lambda!280403 lambda!280402))))

(assert (=> bs!1247760 (not (= lambda!280403 lambda!280323))))

(assert (=> bs!1247759 (not (= lambda!280403 lambda!280399))))

(assert (=> b!5394522 true))

(assert (=> b!5394522 true))

(declare-fun b!5394519 () Bool)

(declare-fun c!940194 () Bool)

(assert (=> b!5394519 (= c!940194 ((_ is Union!15145) r!7292))))

(declare-fun e!3345257 () Bool)

(declare-fun e!3345258 () Bool)

(assert (=> b!5394519 (= e!3345257 e!3345258)))

(declare-fun b!5394520 () Bool)

(declare-fun e!3345261 () Bool)

(assert (=> b!5394520 (= e!3345258 e!3345261)))

(declare-fun c!940191 () Bool)

(assert (=> b!5394520 (= c!940191 ((_ is Star!15145) r!7292))))

(declare-fun b!5394521 () Bool)

(declare-fun e!3345256 () Bool)

(assert (=> b!5394521 (= e!3345258 e!3345256)))

(declare-fun res!2292429 () Bool)

(assert (=> b!5394521 (= res!2292429 (matchRSpec!2248 (regOne!30803 r!7292) s!2326))))

(assert (=> b!5394521 (=> res!2292429 e!3345256)))

(declare-fun call!386160 () Bool)

(declare-fun bm!386155 () Bool)

(assert (=> bm!386155 (= call!386160 (Exists!2326 (ite c!940191 lambda!280402 lambda!280403)))))

(assert (=> b!5394522 (= e!3345261 call!386160)))

(declare-fun b!5394523 () Bool)

(declare-fun c!940192 () Bool)

(assert (=> b!5394523 (= c!940192 ((_ is ElementMatch!15145) r!7292))))

(declare-fun e!3345262 () Bool)

(assert (=> b!5394523 (= e!3345262 e!3345257)))

(declare-fun d!1724152 () Bool)

(declare-fun c!940193 () Bool)

(assert (=> d!1724152 (= c!940193 ((_ is EmptyExpr!15145) r!7292))))

(declare-fun e!3345260 () Bool)

(assert (=> d!1724152 (= (matchRSpec!2248 r!7292 s!2326) e!3345260)))

(declare-fun b!5394524 () Bool)

(declare-fun call!386161 () Bool)

(assert (=> b!5394524 (= e!3345260 call!386161)))

(declare-fun e!3345259 () Bool)

(assert (=> b!5394525 (= e!3345259 call!386160)))

(declare-fun bm!386156 () Bool)

(assert (=> bm!386156 (= call!386161 (isEmpty!33613 s!2326))))

(declare-fun b!5394526 () Bool)

(assert (=> b!5394526 (= e!3345257 (= s!2326 (Cons!61612 (c!939945 r!7292) Nil!61612)))))

(declare-fun b!5394527 () Bool)

(assert (=> b!5394527 (= e!3345260 e!3345262)))

(declare-fun res!2292428 () Bool)

(assert (=> b!5394527 (= res!2292428 (not ((_ is EmptyLang!15145) r!7292)))))

(assert (=> b!5394527 (=> (not res!2292428) (not e!3345262))))

(declare-fun b!5394528 () Bool)

(assert (=> b!5394528 (= e!3345256 (matchRSpec!2248 (regTwo!30803 r!7292) s!2326))))

(declare-fun b!5394529 () Bool)

(declare-fun res!2292427 () Bool)

(assert (=> b!5394529 (=> res!2292427 e!3345259)))

(assert (=> b!5394529 (= res!2292427 call!386161)))

(assert (=> b!5394529 (= e!3345261 e!3345259)))

(assert (= (and d!1724152 c!940193) b!5394524))

(assert (= (and d!1724152 (not c!940193)) b!5394527))

(assert (= (and b!5394527 res!2292428) b!5394523))

(assert (= (and b!5394523 c!940192) b!5394526))

(assert (= (and b!5394523 (not c!940192)) b!5394519))

(assert (= (and b!5394519 c!940194) b!5394521))

(assert (= (and b!5394519 (not c!940194)) b!5394520))

(assert (= (and b!5394521 (not res!2292429)) b!5394528))

(assert (= (and b!5394520 c!940191) b!5394529))

(assert (= (and b!5394520 (not c!940191)) b!5394522))

(assert (= (and b!5394529 (not res!2292427)) b!5394525))

(assert (= (or b!5394525 b!5394522) bm!386155))

(assert (= (or b!5394524 b!5394529) bm!386156))

(declare-fun m!6419698 () Bool)

(assert (=> b!5394521 m!6419698))

(declare-fun m!6419700 () Bool)

(assert (=> bm!386155 m!6419700))

(assert (=> bm!386156 m!6419278))

(declare-fun m!6419702 () Bool)

(assert (=> b!5394528 m!6419702))

(assert (=> b!5393674 d!1724152))

(declare-fun b!5394530 () Bool)

(declare-fun res!2292430 () Bool)

(declare-fun e!3345269 () Bool)

(assert (=> b!5394530 (=> res!2292430 e!3345269)))

(assert (=> b!5394530 (= res!2292430 (not (isEmpty!33613 (tail!10667 s!2326))))))

(declare-fun b!5394531 () Bool)

(declare-fun e!3345265 () Bool)

(assert (=> b!5394531 (= e!3345265 e!3345269)))

(declare-fun res!2292433 () Bool)

(assert (=> b!5394531 (=> res!2292433 e!3345269)))

(declare-fun call!386162 () Bool)

(assert (=> b!5394531 (= res!2292433 call!386162)))

(declare-fun b!5394532 () Bool)

(declare-fun e!3345266 () Bool)

(assert (=> b!5394532 (= e!3345266 e!3345265)))

(declare-fun res!2292437 () Bool)

(assert (=> b!5394532 (=> (not res!2292437) (not e!3345265))))

(declare-fun lt!2197886 () Bool)

(assert (=> b!5394532 (= res!2292437 (not lt!2197886))))

(declare-fun b!5394533 () Bool)

(declare-fun res!2292432 () Bool)

(declare-fun e!3345263 () Bool)

(assert (=> b!5394533 (=> (not res!2292432) (not e!3345263))))

(assert (=> b!5394533 (= res!2292432 (not call!386162))))

(declare-fun b!5394534 () Bool)

(declare-fun e!3345264 () Bool)

(assert (=> b!5394534 (= e!3345264 (nullable!5314 r!7292))))

(declare-fun b!5394535 () Bool)

(declare-fun res!2292434 () Bool)

(assert (=> b!5394535 (=> res!2292434 e!3345266)))

(assert (=> b!5394535 (= res!2292434 (not ((_ is ElementMatch!15145) r!7292)))))

(declare-fun e!3345268 () Bool)

(assert (=> b!5394535 (= e!3345268 e!3345266)))

(declare-fun b!5394536 () Bool)

(assert (=> b!5394536 (= e!3345264 (matchR!7330 (derivativeStep!4246 r!7292 (head!11570 s!2326)) (tail!10667 s!2326)))))

(declare-fun b!5394537 () Bool)

(declare-fun e!3345267 () Bool)

(assert (=> b!5394537 (= e!3345267 (= lt!2197886 call!386162))))

(declare-fun b!5394538 () Bool)

(assert (=> b!5394538 (= e!3345267 e!3345268)))

(declare-fun c!940196 () Bool)

(assert (=> b!5394538 (= c!940196 ((_ is EmptyLang!15145) r!7292))))

(declare-fun b!5394539 () Bool)

(assert (=> b!5394539 (= e!3345263 (= (head!11570 s!2326) (c!939945 r!7292)))))

(declare-fun d!1724154 () Bool)

(assert (=> d!1724154 e!3345267))

(declare-fun c!940197 () Bool)

(assert (=> d!1724154 (= c!940197 ((_ is EmptyExpr!15145) r!7292))))

(assert (=> d!1724154 (= lt!2197886 e!3345264)))

(declare-fun c!940195 () Bool)

(assert (=> d!1724154 (= c!940195 (isEmpty!33613 s!2326))))

(assert (=> d!1724154 (validRegex!6881 r!7292)))

(assert (=> d!1724154 (= (matchR!7330 r!7292 s!2326) lt!2197886)))

(declare-fun bm!386157 () Bool)

(assert (=> bm!386157 (= call!386162 (isEmpty!33613 s!2326))))

(declare-fun b!5394540 () Bool)

(declare-fun res!2292435 () Bool)

(assert (=> b!5394540 (=> res!2292435 e!3345266)))

(assert (=> b!5394540 (= res!2292435 e!3345263)))

(declare-fun res!2292436 () Bool)

(assert (=> b!5394540 (=> (not res!2292436) (not e!3345263))))

(assert (=> b!5394540 (= res!2292436 lt!2197886)))

(declare-fun b!5394541 () Bool)

(assert (=> b!5394541 (= e!3345269 (not (= (head!11570 s!2326) (c!939945 r!7292))))))

(declare-fun b!5394542 () Bool)

(declare-fun res!2292431 () Bool)

(assert (=> b!5394542 (=> (not res!2292431) (not e!3345263))))

(assert (=> b!5394542 (= res!2292431 (isEmpty!33613 (tail!10667 s!2326)))))

(declare-fun b!5394543 () Bool)

(assert (=> b!5394543 (= e!3345268 (not lt!2197886))))

(assert (= (and d!1724154 c!940195) b!5394534))

(assert (= (and d!1724154 (not c!940195)) b!5394536))

(assert (= (and d!1724154 c!940197) b!5394537))

(assert (= (and d!1724154 (not c!940197)) b!5394538))

(assert (= (and b!5394538 c!940196) b!5394543))

(assert (= (and b!5394538 (not c!940196)) b!5394535))

(assert (= (and b!5394535 (not res!2292434)) b!5394540))

(assert (= (and b!5394540 res!2292436) b!5394533))

(assert (= (and b!5394533 res!2292432) b!5394542))

(assert (= (and b!5394542 res!2292431) b!5394539))

(assert (= (and b!5394540 (not res!2292435)) b!5394532))

(assert (= (and b!5394532 res!2292437) b!5394531))

(assert (= (and b!5394531 (not res!2292433)) b!5394530))

(assert (= (and b!5394530 (not res!2292430)) b!5394541))

(assert (= (or b!5394537 b!5394531 b!5394533) bm!386157))

(assert (=> b!5394542 m!6419286))

(assert (=> b!5394542 m!6419286))

(assert (=> b!5394542 m!6419414))

(assert (=> b!5394530 m!6419286))

(assert (=> b!5394530 m!6419286))

(assert (=> b!5394530 m!6419414))

(assert (=> d!1724154 m!6419278))

(assert (=> d!1724154 m!6418940))

(assert (=> bm!386157 m!6419278))

(assert (=> b!5394536 m!6419282))

(assert (=> b!5394536 m!6419282))

(declare-fun m!6419704 () Bool)

(assert (=> b!5394536 m!6419704))

(assert (=> b!5394536 m!6419286))

(assert (=> b!5394536 m!6419704))

(assert (=> b!5394536 m!6419286))

(declare-fun m!6419706 () Bool)

(assert (=> b!5394536 m!6419706))

(assert (=> b!5394539 m!6419282))

(declare-fun m!6419708 () Bool)

(assert (=> b!5394534 m!6419708))

(assert (=> b!5394541 m!6419282))

(assert (=> b!5393674 d!1724154))

(declare-fun d!1724156 () Bool)

(assert (=> d!1724156 (= (matchR!7330 r!7292 s!2326) (matchRSpec!2248 r!7292 s!2326))))

(declare-fun lt!2197887 () Unit!154102)

(assert (=> d!1724156 (= lt!2197887 (choose!40591 r!7292 s!2326))))

(assert (=> d!1724156 (validRegex!6881 r!7292)))

(assert (=> d!1724156 (= (mainMatchTheorem!2248 r!7292 s!2326) lt!2197887)))

(declare-fun bs!1247763 () Bool)

(assert (= bs!1247763 d!1724156))

(assert (=> bs!1247763 m!6418936))

(assert (=> bs!1247763 m!6418934))

(declare-fun m!6419710 () Bool)

(assert (=> bs!1247763 m!6419710))

(assert (=> bs!1247763 m!6418940))

(assert (=> b!5393674 d!1724156))

(assert (=> b!5393653 d!1724128))

(declare-fun b!5394554 () Bool)

(declare-fun e!3345272 () Bool)

(assert (=> b!5394554 (= e!3345272 tp_is_empty!39543)))

(declare-fun b!5394557 () Bool)

(declare-fun tp!1493321 () Bool)

(declare-fun tp!1493322 () Bool)

(assert (=> b!5394557 (= e!3345272 (and tp!1493321 tp!1493322))))

(declare-fun b!5394555 () Bool)

(declare-fun tp!1493320 () Bool)

(declare-fun tp!1493318 () Bool)

(assert (=> b!5394555 (= e!3345272 (and tp!1493320 tp!1493318))))

(declare-fun b!5394556 () Bool)

(declare-fun tp!1493319 () Bool)

(assert (=> b!5394556 (= e!3345272 tp!1493319)))

(assert (=> b!5393673 (= tp!1493241 e!3345272)))

(assert (= (and b!5393673 ((_ is ElementMatch!15145) (regOne!30802 r!7292))) b!5394554))

(assert (= (and b!5393673 ((_ is Concat!23990) (regOne!30802 r!7292))) b!5394555))

(assert (= (and b!5393673 ((_ is Star!15145) (regOne!30802 r!7292))) b!5394556))

(assert (= (and b!5393673 ((_ is Union!15145) (regOne!30802 r!7292))) b!5394557))

(declare-fun b!5394558 () Bool)

(declare-fun e!3345273 () Bool)

(assert (=> b!5394558 (= e!3345273 tp_is_empty!39543)))

(declare-fun b!5394561 () Bool)

(declare-fun tp!1493326 () Bool)

(declare-fun tp!1493327 () Bool)

(assert (=> b!5394561 (= e!3345273 (and tp!1493326 tp!1493327))))

(declare-fun b!5394559 () Bool)

(declare-fun tp!1493325 () Bool)

(declare-fun tp!1493323 () Bool)

(assert (=> b!5394559 (= e!3345273 (and tp!1493325 tp!1493323))))

(declare-fun b!5394560 () Bool)

(declare-fun tp!1493324 () Bool)

(assert (=> b!5394560 (= e!3345273 tp!1493324)))

(assert (=> b!5393673 (= tp!1493248 e!3345273)))

(assert (= (and b!5393673 ((_ is ElementMatch!15145) (regTwo!30802 r!7292))) b!5394558))

(assert (= (and b!5393673 ((_ is Concat!23990) (regTwo!30802 r!7292))) b!5394559))

(assert (= (and b!5393673 ((_ is Star!15145) (regTwo!30802 r!7292))) b!5394560))

(assert (= (and b!5393673 ((_ is Union!15145) (regTwo!30802 r!7292))) b!5394561))

(declare-fun b!5394566 () Bool)

(declare-fun e!3345276 () Bool)

(declare-fun tp!1493332 () Bool)

(declare-fun tp!1493333 () Bool)

(assert (=> b!5394566 (= e!3345276 (and tp!1493332 tp!1493333))))

(assert (=> b!5393641 (= tp!1493246 e!3345276)))

(assert (= (and b!5393641 ((_ is Cons!61610) (exprs!5029 setElem!35057))) b!5394566))

(declare-fun b!5394567 () Bool)

(declare-fun e!3345277 () Bool)

(declare-fun tp!1493334 () Bool)

(declare-fun tp!1493335 () Bool)

(assert (=> b!5394567 (= e!3345277 (and tp!1493334 tp!1493335))))

(assert (=> b!5393667 (= tp!1493247 e!3345277)))

(assert (= (and b!5393667 ((_ is Cons!61610) (exprs!5029 (h!68059 zl!343)))) b!5394567))

(declare-fun b!5394575 () Bool)

(declare-fun e!3345283 () Bool)

(declare-fun tp!1493340 () Bool)

(assert (=> b!5394575 (= e!3345283 tp!1493340)))

(declare-fun e!3345282 () Bool)

(declare-fun tp!1493341 () Bool)

(declare-fun b!5394574 () Bool)

(assert (=> b!5394574 (= e!3345282 (and (inv!81109 (h!68059 (t!374958 zl!343))) e!3345283 tp!1493341))))

(assert (=> b!5393651 (= tp!1493242 e!3345282)))

(assert (= b!5394574 b!5394575))

(assert (= (and b!5393651 ((_ is Cons!61611) (t!374958 zl!343))) b!5394574))

(declare-fun m!6419712 () Bool)

(assert (=> b!5394574 m!6419712))

(declare-fun condSetEmpty!35063 () Bool)

(assert (=> setNonEmpty!35057 (= condSetEmpty!35063 (= setRest!35057 ((as const (Array Context!9058 Bool)) false)))))

(declare-fun setRes!35063 () Bool)

(assert (=> setNonEmpty!35057 (= tp!1493249 setRes!35063)))

(declare-fun setIsEmpty!35063 () Bool)

(assert (=> setIsEmpty!35063 setRes!35063))

(declare-fun setNonEmpty!35063 () Bool)

(declare-fun e!3345286 () Bool)

(declare-fun setElem!35063 () Context!9058)

(declare-fun tp!1493347 () Bool)

(assert (=> setNonEmpty!35063 (= setRes!35063 (and tp!1493347 (inv!81109 setElem!35063) e!3345286))))

(declare-fun setRest!35063 () (InoxSet Context!9058))

(assert (=> setNonEmpty!35063 (= setRest!35057 ((_ map or) (store ((as const (Array Context!9058 Bool)) false) setElem!35063 true) setRest!35063))))

(declare-fun b!5394580 () Bool)

(declare-fun tp!1493346 () Bool)

(assert (=> b!5394580 (= e!3345286 tp!1493346)))

(assert (= (and setNonEmpty!35057 condSetEmpty!35063) setIsEmpty!35063))

(assert (= (and setNonEmpty!35057 (not condSetEmpty!35063)) setNonEmpty!35063))

(assert (= setNonEmpty!35063 b!5394580))

(declare-fun m!6419714 () Bool)

(assert (=> setNonEmpty!35063 m!6419714))

(declare-fun b!5394581 () Bool)

(declare-fun e!3345287 () Bool)

(assert (=> b!5394581 (= e!3345287 tp_is_empty!39543)))

(declare-fun b!5394584 () Bool)

(declare-fun tp!1493351 () Bool)

(declare-fun tp!1493352 () Bool)

(assert (=> b!5394584 (= e!3345287 (and tp!1493351 tp!1493352))))

(declare-fun b!5394582 () Bool)

(declare-fun tp!1493350 () Bool)

(declare-fun tp!1493348 () Bool)

(assert (=> b!5394582 (= e!3345287 (and tp!1493350 tp!1493348))))

(declare-fun b!5394583 () Bool)

(declare-fun tp!1493349 () Bool)

(assert (=> b!5394583 (= e!3345287 tp!1493349)))

(assert (=> b!5393650 (= tp!1493245 e!3345287)))

(assert (= (and b!5393650 ((_ is ElementMatch!15145) (reg!15474 r!7292))) b!5394581))

(assert (= (and b!5393650 ((_ is Concat!23990) (reg!15474 r!7292))) b!5394582))

(assert (= (and b!5393650 ((_ is Star!15145) (reg!15474 r!7292))) b!5394583))

(assert (= (and b!5393650 ((_ is Union!15145) (reg!15474 r!7292))) b!5394584))

(declare-fun b!5394589 () Bool)

(declare-fun e!3345290 () Bool)

(declare-fun tp!1493355 () Bool)

(assert (=> b!5394589 (= e!3345290 (and tp_is_empty!39543 tp!1493355))))

(assert (=> b!5393638 (= tp!1493244 e!3345290)))

(assert (= (and b!5393638 ((_ is Cons!61612) (t!374959 s!2326))) b!5394589))

(declare-fun b!5394590 () Bool)

(declare-fun e!3345291 () Bool)

(assert (=> b!5394590 (= e!3345291 tp_is_empty!39543)))

(declare-fun b!5394593 () Bool)

(declare-fun tp!1493359 () Bool)

(declare-fun tp!1493360 () Bool)

(assert (=> b!5394593 (= e!3345291 (and tp!1493359 tp!1493360))))

(declare-fun b!5394591 () Bool)

(declare-fun tp!1493358 () Bool)

(declare-fun tp!1493356 () Bool)

(assert (=> b!5394591 (= e!3345291 (and tp!1493358 tp!1493356))))

(declare-fun b!5394592 () Bool)

(declare-fun tp!1493357 () Bool)

(assert (=> b!5394592 (= e!3345291 tp!1493357)))

(assert (=> b!5393648 (= tp!1493240 e!3345291)))

(assert (= (and b!5393648 ((_ is ElementMatch!15145) (regOne!30803 r!7292))) b!5394590))

(assert (= (and b!5393648 ((_ is Concat!23990) (regOne!30803 r!7292))) b!5394591))

(assert (= (and b!5393648 ((_ is Star!15145) (regOne!30803 r!7292))) b!5394592))

(assert (= (and b!5393648 ((_ is Union!15145) (regOne!30803 r!7292))) b!5394593))

(declare-fun b!5394594 () Bool)

(declare-fun e!3345292 () Bool)

(assert (=> b!5394594 (= e!3345292 tp_is_empty!39543)))

(declare-fun b!5394597 () Bool)

(declare-fun tp!1493364 () Bool)

(declare-fun tp!1493365 () Bool)

(assert (=> b!5394597 (= e!3345292 (and tp!1493364 tp!1493365))))

(declare-fun b!5394595 () Bool)

(declare-fun tp!1493363 () Bool)

(declare-fun tp!1493361 () Bool)

(assert (=> b!5394595 (= e!3345292 (and tp!1493363 tp!1493361))))

(declare-fun b!5394596 () Bool)

(declare-fun tp!1493362 () Bool)

(assert (=> b!5394596 (= e!3345292 tp!1493362)))

(assert (=> b!5393648 (= tp!1493243 e!3345292)))

(assert (= (and b!5393648 ((_ is ElementMatch!15145) (regTwo!30803 r!7292))) b!5394594))

(assert (= (and b!5393648 ((_ is Concat!23990) (regTwo!30803 r!7292))) b!5394595))

(assert (= (and b!5393648 ((_ is Star!15145) (regTwo!30803 r!7292))) b!5394596))

(assert (= (and b!5393648 ((_ is Union!15145) (regTwo!30803 r!7292))) b!5394597))

(declare-fun b_lambda!206339 () Bool)

(assert (= b_lambda!206337 (or b!5393643 b_lambda!206339)))

(declare-fun bs!1247764 () Bool)

(declare-fun d!1724158 () Bool)

(assert (= bs!1247764 (and d!1724158 b!5393643)))

(declare-fun lt!2197888 () Unit!154102)

(assert (=> bs!1247764 (= lt!2197888 (lemmaConcatPreservesForall!170 (exprs!5029 lt!2197700) lt!2197725 lambda!280327))))

(assert (=> bs!1247764 (= (dynLambda!24292 lambda!280326 lt!2197700) (Context!9059 (++!13465 (exprs!5029 lt!2197700) lt!2197725)))))

(declare-fun m!6419716 () Bool)

(assert (=> bs!1247764 m!6419716))

(declare-fun m!6419718 () Bool)

(assert (=> bs!1247764 m!6419718))

(assert (=> d!1724116 d!1724158))

(declare-fun b_lambda!206341 () Bool)

(assert (= b_lambda!206329 (or b!5393665 b_lambda!206341)))

(declare-fun bs!1247765 () Bool)

(declare-fun d!1724160 () Bool)

(assert (= bs!1247765 (and d!1724160 b!5393665)))

(assert (=> bs!1247765 (= (dynLambda!24291 lambda!280325 (h!68059 zl!343)) (derivationStepZipperUp!517 (h!68059 zl!343) (h!68060 s!2326)))))

(assert (=> bs!1247765 m!6418976))

(assert (=> d!1724074 d!1724160))

(declare-fun b_lambda!206343 () Bool)

(assert (= b_lambda!206331 (or b!5393665 b_lambda!206343)))

(declare-fun bs!1247766 () Bool)

(declare-fun d!1724162 () Bool)

(assert (= bs!1247766 (and d!1724162 b!5393665)))

(assert (=> bs!1247766 (= (dynLambda!24291 lambda!280325 lt!2197715) (derivationStepZipperUp!517 lt!2197715 (h!68060 s!2326)))))

(assert (=> bs!1247766 m!6418878))

(assert (=> d!1724090 d!1724162))

(declare-fun b_lambda!206345 () Bool)

(assert (= b_lambda!206335 (or b!5393665 b_lambda!206345)))

(declare-fun bs!1247767 () Bool)

(declare-fun d!1724164 () Bool)

(assert (= bs!1247767 (and d!1724164 b!5393665)))

(assert (=> bs!1247767 (= (dynLambda!24291 lambda!280325 lt!2197700) (derivationStepZipperUp!517 lt!2197700 (h!68060 s!2326)))))

(assert (=> bs!1247767 m!6418916))

(assert (=> d!1724104 d!1724164))

(declare-fun b_lambda!206347 () Bool)

(assert (= b_lambda!206333 (or b!5393665 b_lambda!206347)))

(declare-fun bs!1247768 () Bool)

(declare-fun d!1724166 () Bool)

(assert (= bs!1247768 (and d!1724166 b!5393665)))

(assert (=> bs!1247768 (= (dynLambda!24291 lambda!280325 lt!2197703) (derivationStepZipperUp!517 lt!2197703 (h!68060 s!2326)))))

(assert (=> bs!1247768 m!6418922))

(assert (=> d!1724102 d!1724166))

(check-sat (not b!5394487) (not b!5394559) (not b!5394109) (not bm!386122) (not d!1724066) (not b!5394449) (not b!5394464) (not b!5394244) (not d!1724110) (not b!5394107) (not bm!386142) (not b!5394555) (not b!5394584) (not b!5394461) (not b!5394450) (not bs!1247766) (not b!5394457) (not d!1724140) (not d!1724016) (not d!1724074) (not b!5394561) (not bs!1247764) (not b!5394355) (not b!5394557) (not b!5394299) (not b!5394467) (not d!1724138) (not d!1724060) (not b!5394488) (not b!5394593) (not d!1724156) (not b!5394393) (not d!1724154) (not b!5394591) (not d!1724124) (not b!5394055) (not b!5394465) (not d!1724064) (not b!5394521) (not b!5394357) (not b!5394595) (not b!5394309) (not bm!386147) (not bm!386126) (not b!5394335) (not b!5393984) (not b!5394530) (not b!5394333) (not b!5394597) (not b!5393985) (not b!5394454) (not d!1724080) (not d!1724106) (not b!5394352) (not bm!386146) (not b!5394388) (not b!5394334) (not bm!386156) (not b!5394580) (not d!1724056) (not b!5394295) (not bm!386157) (not d!1724144) (not d!1724092) (not b!5394494) (not d!1724150) (not b!5394410) (not b!5394252) (not b!5394331) (not bm!386144) (not b!5394337) (not b_lambda!206345) (not b!5394495) (not bs!1247767) (not d!1724102) (not bm!386145) (not d!1724098) (not b!5394056) (not b!5394536) (not d!1724030) (not b!5394596) (not d!1724118) (not b!5394057) (not b!5394336) (not b!5394566) (not b!5394567) (not b!5394426) (not bm!386116) (not b!5394112) (not bm!386125) (not b!5394407) (not b!5394459) (not b!5394493) (not b!5394492) (not bm!386152) (not b!5394288) (not d!1724130) (not d!1724104) (not b!5394560) (not b!5394395) (not b!5394466) (not b!5394240) (not b!5394425) (not d!1724126) (not bm!386154) (not bs!1247768) (not b!5394246) (not d!1724090) (not b!5394515) (not d!1724120) (not b!5394528) (not d!1724062) tp_is_empty!39543 (not b_lambda!206341) (not b!5394145) (not b!5394251) (not d!1724112) (not b_lambda!206343) (not d!1724068) (not b!5394350) (not bm!386155) (not d!1724128) (not b!5394113) (not d!1724006) (not d!1724116) (not d!1724136) (not d!1724040) (not b!5394400) (not b!5394105) (not b!5394448) (not b!5394455) (not b!5394589) (not b!5394582) (not b!5394110) (not d!1724004) (not d!1724094) (not bm!386149) (not b!5394460) (not b_lambda!206347) (not d!1724142) (not d!1724132) (not d!1724014) (not d!1724076) (not b!5394398) (not d!1724108) (not bm!386139) (not b_lambda!206339) (not bm!386100) (not bm!386121) (not b!5394583) (not d!1724086) (not b!5394574) (not b!5394106) (not b!5394541) (not b!5394592) (not b!5394452) (not d!1724070) (not bm!386148) (not b!5394539) (not d!1724122) (not d!1724058) (not setNonEmpty!35063) (not b!5394310) (not b!5394249) (not b!5394468) (not bm!386099) (not d!1724114) (not b!5394412) (not b!5394575) (not b!5394542) (not b!5394556) (not d!1724134) (not b!5394405) (not b!5394534) (not b!5394458) (not bs!1247765))
(check-sat)
