; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!594148 () Bool)

(assert start!594148)

(declare-fun b!5792688 () Bool)

(assert (=> b!5792688 true))

(assert (=> b!5792688 true))

(declare-fun lambda!316004 () Int)

(declare-fun lambda!316003 () Int)

(assert (=> b!5792688 (not (= lambda!316004 lambda!316003))))

(assert (=> b!5792688 true))

(assert (=> b!5792688 true))

(declare-fun lambda!316005 () Int)

(assert (=> b!5792688 (not (= lambda!316005 lambda!316003))))

(assert (=> b!5792688 (not (= lambda!316005 lambda!316004))))

(assert (=> b!5792688 true))

(assert (=> b!5792688 true))

(declare-fun b!5792685 () Bool)

(assert (=> b!5792685 true))

(declare-datatypes ((C!31888 0))(
  ( (C!31889 (val!25646 Int)) )
))
(declare-datatypes ((Regex!15809 0))(
  ( (ElementMatch!15809 (c!1025723 C!31888)) (Concat!24654 (regOne!32130 Regex!15809) (regTwo!32130 Regex!15809)) (EmptyExpr!15809) (Star!15809 (reg!16138 Regex!15809)) (EmptyLang!15809) (Union!15809 (regOne!32131 Regex!15809) (regTwo!32131 Regex!15809)) )
))
(declare-datatypes ((List!63726 0))(
  ( (Nil!63602) (Cons!63602 (h!70050 Regex!15809) (t!377073 List!63726)) )
))
(declare-datatypes ((Context!10386 0))(
  ( (Context!10387 (exprs!5693 List!63726)) )
))
(declare-fun setElem!38956 () Context!10386)

(declare-fun setRes!38956 () Bool)

(declare-fun setNonEmpty!38956 () Bool)

(declare-fun e!3557259 () Bool)

(declare-fun tp!1598112 () Bool)

(declare-fun inv!82769 (Context!10386) Bool)

(assert (=> setNonEmpty!38956 (= setRes!38956 (and tp!1598112 (inv!82769 setElem!38956) e!3557259))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10386))

(declare-fun setRest!38956 () (InoxSet Context!10386))

(assert (=> setNonEmpty!38956 (= z!1189 ((_ map or) (store ((as const (Array Context!10386 Bool)) false) setElem!38956 true) setRest!38956))))

(declare-fun e!3557254 () Bool)

(declare-fun e!3557255 () Bool)

(assert (=> b!5792685 (= e!3557254 e!3557255)))

(declare-fun res!2444144 () Bool)

(assert (=> b!5792685 (=> res!2444144 e!3557255)))

(declare-fun lt!2297440 () (InoxSet Context!10386))

(declare-fun lt!2297432 () (InoxSet Context!10386))

(assert (=> b!5792685 (= res!2444144 (not (= lt!2297440 lt!2297432)))))

(declare-datatypes ((List!63727 0))(
  ( (Nil!63603) (Cons!63603 (h!70051 C!31888) (t!377074 List!63727)) )
))
(declare-fun s!2326 () List!63727)

(declare-datatypes ((List!63728 0))(
  ( (Nil!63604) (Cons!63604 (h!70052 Context!10386) (t!377075 List!63728)) )
))
(declare-fun zl!343 () List!63728)

(declare-fun lambda!316006 () Int)

(declare-fun flatMap!1416 ((InoxSet Context!10386) Int) (InoxSet Context!10386))

(declare-fun derivationStepZipperUp!1073 (Context!10386 C!31888) (InoxSet Context!10386))

(assert (=> b!5792685 (= (flatMap!1416 z!1189 lambda!316006) (derivationStepZipperUp!1073 (h!70052 zl!343) (h!70051 s!2326)))))

(declare-datatypes ((Unit!156878 0))(
  ( (Unit!156879) )
))
(declare-fun lt!2297435 () Unit!156878)

(declare-fun lemmaFlatMapOnSingletonSet!948 ((InoxSet Context!10386) Context!10386 Int) Unit!156878)

(assert (=> b!5792685 (= lt!2297435 (lemmaFlatMapOnSingletonSet!948 z!1189 (h!70052 zl!343) lambda!316006))))

(declare-fun b!5792686 () Bool)

(declare-fun res!2444143 () Bool)

(declare-fun e!3557260 () Bool)

(assert (=> b!5792686 (=> res!2444143 e!3557260)))

(declare-fun lt!2297438 () (InoxSet Context!10386))

(declare-fun matchZipper!1937 ((InoxSet Context!10386) List!63727) Bool)

(declare-fun derivationStepZipper!1878 ((InoxSet Context!10386) C!31888) (InoxSet Context!10386))

(assert (=> b!5792686 (= res!2444143 (not (= (matchZipper!1937 lt!2297438 s!2326) (matchZipper!1937 (derivationStepZipper!1878 lt!2297438 (h!70051 s!2326)) (t!377074 s!2326)))))))

(declare-fun b!5792687 () Bool)

(declare-fun e!3557251 () Bool)

(declare-fun tp_is_empty!40871 () Bool)

(declare-fun tp!1598106 () Bool)

(assert (=> b!5792687 (= e!3557251 (and tp_is_empty!40871 tp!1598106))))

(declare-fun e!3557257 () Bool)

(declare-fun e!3557252 () Bool)

(assert (=> b!5792688 (= e!3557257 e!3557252)))

(declare-fun res!2444151 () Bool)

(assert (=> b!5792688 (=> res!2444151 e!3557252)))

(declare-fun lt!2297428 () Bool)

(declare-fun e!3557256 () Bool)

(assert (=> b!5792688 (= res!2444151 (not (= lt!2297428 e!3557256)))))

(declare-fun res!2444154 () Bool)

(assert (=> b!5792688 (=> res!2444154 e!3557256)))

(declare-fun isEmpty!35507 (List!63727) Bool)

(assert (=> b!5792688 (= res!2444154 (isEmpty!35507 s!2326))))

(declare-fun Exists!2909 (Int) Bool)

(assert (=> b!5792688 (= (Exists!2909 lambda!316003) (Exists!2909 lambda!316005))))

(declare-fun lt!2297426 () Unit!156878)

(declare-fun r!7292 () Regex!15809)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1538 (Regex!15809 Regex!15809 List!63727) Unit!156878)

(assert (=> b!5792688 (= lt!2297426 (lemmaExistCutMatchRandMatchRSpecEquivalent!1538 (reg!16138 r!7292) r!7292 s!2326))))

(assert (=> b!5792688 (= (Exists!2909 lambda!316003) (Exists!2909 lambda!316004))))

(declare-fun lt!2297431 () Unit!156878)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!590 (Regex!15809 List!63727) Unit!156878)

(assert (=> b!5792688 (= lt!2297431 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!590 (reg!16138 r!7292) s!2326))))

(declare-fun lt!2297430 () Bool)

(assert (=> b!5792688 (= lt!2297430 (Exists!2909 lambda!316003))))

(declare-datatypes ((tuple2!65812 0))(
  ( (tuple2!65813 (_1!36209 List!63727) (_2!36209 List!63727)) )
))
(declare-datatypes ((Option!15818 0))(
  ( (None!15817) (Some!15817 (v!51877 tuple2!65812)) )
))
(declare-fun isDefined!12521 (Option!15818) Bool)

(declare-fun findConcatSeparation!2232 (Regex!15809 Regex!15809 List!63727 List!63727 List!63727) Option!15818)

(assert (=> b!5792688 (= lt!2297430 (isDefined!12521 (findConcatSeparation!2232 (reg!16138 r!7292) r!7292 Nil!63603 s!2326 s!2326)))))

(declare-fun lt!2297429 () Unit!156878)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1996 (Regex!15809 Regex!15809 List!63727) Unit!156878)

(assert (=> b!5792688 (= lt!2297429 (lemmaFindConcatSeparationEquivalentToExists!1996 (reg!16138 r!7292) r!7292 s!2326))))

(declare-fun b!5792689 () Bool)

(declare-fun e!3557253 () Bool)

(assert (=> b!5792689 (= e!3557253 tp_is_empty!40871)))

(declare-fun b!5792690 () Bool)

(assert (=> b!5792690 (= e!3557252 e!3557254)))

(declare-fun res!2444145 () Bool)

(assert (=> b!5792690 (=> res!2444145 e!3557254)))

(declare-fun lt!2297439 () (InoxSet Context!10386))

(assert (=> b!5792690 (= res!2444145 (not (= lt!2297439 lt!2297432)))))

(declare-fun derivationStepZipperDown!1147 (Regex!15809 Context!10386 C!31888) (InoxSet Context!10386))

(assert (=> b!5792690 (= lt!2297432 (derivationStepZipperDown!1147 r!7292 (Context!10387 Nil!63602) (h!70051 s!2326)))))

(assert (=> b!5792690 (= lt!2297439 (derivationStepZipperUp!1073 (Context!10387 (Cons!63602 r!7292 Nil!63602)) (h!70051 s!2326)))))

(assert (=> b!5792690 (= lt!2297440 (derivationStepZipper!1878 z!1189 (h!70051 s!2326)))))

(declare-fun b!5792691 () Bool)

(declare-fun res!2444146 () Bool)

(assert (=> b!5792691 (=> res!2444146 e!3557257)))

(declare-fun generalisedUnion!1672 (List!63726) Regex!15809)

(declare-fun unfocusZipperList!1237 (List!63728) List!63726)

(assert (=> b!5792691 (= res!2444146 (not (= r!7292 (generalisedUnion!1672 (unfocusZipperList!1237 zl!343)))))))

(declare-fun b!5792692 () Bool)

(declare-fun res!2444150 () Bool)

(assert (=> b!5792692 (=> res!2444150 e!3557257)))

(declare-fun generalisedConcat!1424 (List!63726) Regex!15809)

(assert (=> b!5792692 (= res!2444150 (not (= r!7292 (generalisedConcat!1424 (exprs!5693 (h!70052 zl!343))))))))

(declare-fun b!5792693 () Bool)

(declare-fun res!2444140 () Bool)

(declare-fun e!3557262 () Bool)

(assert (=> b!5792693 (=> (not res!2444140) (not e!3557262))))

(declare-fun toList!9593 ((InoxSet Context!10386)) List!63728)

(assert (=> b!5792693 (= res!2444140 (= (toList!9593 z!1189) zl!343))))

(declare-fun b!5792694 () Bool)

(declare-fun res!2444147 () Bool)

(assert (=> b!5792694 (=> res!2444147 e!3557252)))

(get-info :version)

(assert (=> b!5792694 (= res!2444147 ((_ is Nil!63603) s!2326))))

(declare-fun b!5792695 () Bool)

(declare-fun res!2444148 () Bool)

(assert (=> b!5792695 (=> res!2444148 e!3557257)))

(assert (=> b!5792695 (= res!2444148 (or ((_ is EmptyExpr!15809) r!7292) ((_ is EmptyLang!15809) r!7292) ((_ is ElementMatch!15809) r!7292) ((_ is Union!15809) r!7292) ((_ is Concat!24654) r!7292)))))

(declare-fun b!5792697 () Bool)

(assert (=> b!5792697 (= e!3557255 e!3557260)))

(declare-fun res!2444149 () Bool)

(assert (=> b!5792697 (=> res!2444149 e!3557260)))

(declare-fun lt!2297437 () List!63726)

(assert (=> b!5792697 (= res!2444149 (not (= lt!2297440 (derivationStepZipperDown!1147 (reg!16138 r!7292) (Context!10387 lt!2297437) (h!70051 s!2326)))))))

(declare-fun lt!2297436 () Context!10386)

(assert (=> b!5792697 (= (flatMap!1416 lt!2297438 lambda!316006) (derivationStepZipperUp!1073 lt!2297436 (h!70051 s!2326)))))

(declare-fun lt!2297434 () Unit!156878)

(assert (=> b!5792697 (= lt!2297434 (lemmaFlatMapOnSingletonSet!948 lt!2297438 lt!2297436 lambda!316006))))

(declare-fun lt!2297425 () (InoxSet Context!10386))

(assert (=> b!5792697 (= lt!2297425 (derivationStepZipperUp!1073 lt!2297436 (h!70051 s!2326)))))

(assert (=> b!5792697 (= lt!2297438 (store ((as const (Array Context!10386 Bool)) false) lt!2297436 true))))

(assert (=> b!5792697 (= lt!2297436 (Context!10387 (Cons!63602 (reg!16138 r!7292) lt!2297437)))))

(assert (=> b!5792697 (= lt!2297437 (Cons!63602 r!7292 Nil!63602))))

(declare-fun e!3557258 () Bool)

(declare-fun b!5792698 () Bool)

(declare-fun tp!1598111 () Bool)

(declare-fun e!3557263 () Bool)

(assert (=> b!5792698 (= e!3557263 (and (inv!82769 (h!70052 zl!343)) e!3557258 tp!1598111))))

(declare-fun b!5792699 () Bool)

(declare-fun tp!1598103 () Bool)

(assert (=> b!5792699 (= e!3557259 tp!1598103)))

(declare-fun b!5792700 () Bool)

(declare-fun e!3557261 () Bool)

(assert (=> b!5792700 (= e!3557262 e!3557261)))

(declare-fun res!2444153 () Bool)

(assert (=> b!5792700 (=> (not res!2444153) (not e!3557261))))

(declare-fun lt!2297427 () Regex!15809)

(assert (=> b!5792700 (= res!2444153 (= r!7292 lt!2297427))))

(declare-fun unfocusZipper!1551 (List!63728) Regex!15809)

(assert (=> b!5792700 (= lt!2297427 (unfocusZipper!1551 zl!343))))

(declare-fun b!5792701 () Bool)

(declare-fun tp!1598110 () Bool)

(assert (=> b!5792701 (= e!3557253 tp!1598110)))

(declare-fun b!5792702 () Bool)

(assert (=> b!5792702 (= e!3557261 (not e!3557257))))

(declare-fun res!2444142 () Bool)

(assert (=> b!5792702 (=> res!2444142 e!3557257)))

(assert (=> b!5792702 (= res!2444142 (not ((_ is Cons!63604) zl!343)))))

(declare-fun matchRSpec!2912 (Regex!15809 List!63727) Bool)

(assert (=> b!5792702 (= lt!2297428 (matchRSpec!2912 r!7292 s!2326))))

(declare-fun matchR!7994 (Regex!15809 List!63727) Bool)

(assert (=> b!5792702 (= lt!2297428 (matchR!7994 r!7292 s!2326))))

(declare-fun lt!2297433 () Unit!156878)

(declare-fun mainMatchTheorem!2912 (Regex!15809 List!63727) Unit!156878)

(assert (=> b!5792702 (= lt!2297433 (mainMatchTheorem!2912 r!7292 s!2326))))

(declare-fun setIsEmpty!38956 () Bool)

(assert (=> setIsEmpty!38956 setRes!38956))

(declare-fun b!5792703 () Bool)

(declare-fun tp!1598109 () Bool)

(assert (=> b!5792703 (= e!3557258 tp!1598109)))

(declare-fun b!5792704 () Bool)

(declare-fun tp!1598107 () Bool)

(declare-fun tp!1598105 () Bool)

(assert (=> b!5792704 (= e!3557253 (and tp!1598107 tp!1598105))))

(declare-fun b!5792705 () Bool)

(declare-fun tp!1598104 () Bool)

(declare-fun tp!1598108 () Bool)

(assert (=> b!5792705 (= e!3557253 (and tp!1598104 tp!1598108))))

(declare-fun b!5792706 () Bool)

(assert (=> b!5792706 (= e!3557256 lt!2297430)))

(declare-fun b!5792707 () Bool)

(assert (=> b!5792707 (= e!3557260 (or (not (= lt!2297427 r!7292)) (= r!7292 r!7292)))))

(declare-fun b!5792708 () Bool)

(declare-fun res!2444139 () Bool)

(assert (=> b!5792708 (=> res!2444139 e!3557257)))

(declare-fun isEmpty!35508 (List!63728) Bool)

(assert (=> b!5792708 (= res!2444139 (not (isEmpty!35508 (t!377075 zl!343))))))

(declare-fun res!2444141 () Bool)

(assert (=> start!594148 (=> (not res!2444141) (not e!3557262))))

(declare-fun validRegex!7545 (Regex!15809) Bool)

(assert (=> start!594148 (= res!2444141 (validRegex!7545 r!7292))))

(assert (=> start!594148 e!3557262))

(assert (=> start!594148 e!3557253))

(declare-fun condSetEmpty!38956 () Bool)

(assert (=> start!594148 (= condSetEmpty!38956 (= z!1189 ((as const (Array Context!10386 Bool)) false)))))

(assert (=> start!594148 setRes!38956))

(assert (=> start!594148 e!3557263))

(assert (=> start!594148 e!3557251))

(declare-fun b!5792696 () Bool)

(declare-fun res!2444152 () Bool)

(assert (=> b!5792696 (=> res!2444152 e!3557257)))

(assert (=> b!5792696 (= res!2444152 (not ((_ is Cons!63602) (exprs!5693 (h!70052 zl!343)))))))

(assert (= (and start!594148 res!2444141) b!5792693))

(assert (= (and b!5792693 res!2444140) b!5792700))

(assert (= (and b!5792700 res!2444153) b!5792702))

(assert (= (and b!5792702 (not res!2444142)) b!5792708))

(assert (= (and b!5792708 (not res!2444139)) b!5792692))

(assert (= (and b!5792692 (not res!2444150)) b!5792696))

(assert (= (and b!5792696 (not res!2444152)) b!5792691))

(assert (= (and b!5792691 (not res!2444146)) b!5792695))

(assert (= (and b!5792695 (not res!2444148)) b!5792688))

(assert (= (and b!5792688 (not res!2444154)) b!5792706))

(assert (= (and b!5792688 (not res!2444151)) b!5792694))

(assert (= (and b!5792694 (not res!2444147)) b!5792690))

(assert (= (and b!5792690 (not res!2444145)) b!5792685))

(assert (= (and b!5792685 (not res!2444144)) b!5792697))

(assert (= (and b!5792697 (not res!2444149)) b!5792686))

(assert (= (and b!5792686 (not res!2444143)) b!5792707))

(assert (= (and start!594148 ((_ is ElementMatch!15809) r!7292)) b!5792689))

(assert (= (and start!594148 ((_ is Concat!24654) r!7292)) b!5792704))

(assert (= (and start!594148 ((_ is Star!15809) r!7292)) b!5792701))

(assert (= (and start!594148 ((_ is Union!15809) r!7292)) b!5792705))

(assert (= (and start!594148 condSetEmpty!38956) setIsEmpty!38956))

(assert (= (and start!594148 (not condSetEmpty!38956)) setNonEmpty!38956))

(assert (= setNonEmpty!38956 b!5792699))

(assert (= b!5792698 b!5792703))

(assert (= (and start!594148 ((_ is Cons!63604) zl!343)) b!5792698))

(assert (= (and start!594148 ((_ is Cons!63603) s!2326)) b!5792687))

(declare-fun m!6735550 () Bool)

(assert (=> setNonEmpty!38956 m!6735550))

(declare-fun m!6735552 () Bool)

(assert (=> b!5792698 m!6735552))

(declare-fun m!6735554 () Bool)

(assert (=> b!5792700 m!6735554))

(declare-fun m!6735556 () Bool)

(assert (=> b!5792693 m!6735556))

(declare-fun m!6735558 () Bool)

(assert (=> b!5792688 m!6735558))

(declare-fun m!6735560 () Bool)

(assert (=> b!5792688 m!6735560))

(declare-fun m!6735562 () Bool)

(assert (=> b!5792688 m!6735562))

(declare-fun m!6735564 () Bool)

(assert (=> b!5792688 m!6735564))

(declare-fun m!6735566 () Bool)

(assert (=> b!5792688 m!6735566))

(assert (=> b!5792688 m!6735562))

(assert (=> b!5792688 m!6735562))

(assert (=> b!5792688 m!6735566))

(declare-fun m!6735568 () Bool)

(assert (=> b!5792688 m!6735568))

(declare-fun m!6735570 () Bool)

(assert (=> b!5792688 m!6735570))

(declare-fun m!6735572 () Bool)

(assert (=> b!5792688 m!6735572))

(declare-fun m!6735574 () Bool)

(assert (=> b!5792688 m!6735574))

(declare-fun m!6735576 () Bool)

(assert (=> b!5792692 m!6735576))

(declare-fun m!6735578 () Bool)

(assert (=> start!594148 m!6735578))

(declare-fun m!6735580 () Bool)

(assert (=> b!5792708 m!6735580))

(declare-fun m!6735582 () Bool)

(assert (=> b!5792685 m!6735582))

(declare-fun m!6735584 () Bool)

(assert (=> b!5792685 m!6735584))

(declare-fun m!6735586 () Bool)

(assert (=> b!5792685 m!6735586))

(declare-fun m!6735588 () Bool)

(assert (=> b!5792691 m!6735588))

(assert (=> b!5792691 m!6735588))

(declare-fun m!6735590 () Bool)

(assert (=> b!5792691 m!6735590))

(declare-fun m!6735592 () Bool)

(assert (=> b!5792686 m!6735592))

(declare-fun m!6735594 () Bool)

(assert (=> b!5792686 m!6735594))

(assert (=> b!5792686 m!6735594))

(declare-fun m!6735596 () Bool)

(assert (=> b!5792686 m!6735596))

(declare-fun m!6735598 () Bool)

(assert (=> b!5792697 m!6735598))

(declare-fun m!6735600 () Bool)

(assert (=> b!5792697 m!6735600))

(declare-fun m!6735602 () Bool)

(assert (=> b!5792697 m!6735602))

(declare-fun m!6735604 () Bool)

(assert (=> b!5792697 m!6735604))

(declare-fun m!6735606 () Bool)

(assert (=> b!5792697 m!6735606))

(declare-fun m!6735608 () Bool)

(assert (=> b!5792690 m!6735608))

(declare-fun m!6735610 () Bool)

(assert (=> b!5792690 m!6735610))

(declare-fun m!6735612 () Bool)

(assert (=> b!5792690 m!6735612))

(declare-fun m!6735614 () Bool)

(assert (=> b!5792702 m!6735614))

(declare-fun m!6735616 () Bool)

(assert (=> b!5792702 m!6735616))

(declare-fun m!6735618 () Bool)

(assert (=> b!5792702 m!6735618))

(check-sat (not b!5792691) (not b!5792704) (not setNonEmpty!38956) (not b!5792690) (not b!5792692) (not b!5792697) (not b!5792687) (not b!5792700) (not b!5792686) (not b!5792708) (not b!5792699) (not b!5792701) (not b!5792685) (not b!5792703) (not b!5792688) (not b!5792705) (not start!594148) (not b!5792698) (not b!5792702) (not b!5792693) tp_is_empty!40871)
(check-sat)
