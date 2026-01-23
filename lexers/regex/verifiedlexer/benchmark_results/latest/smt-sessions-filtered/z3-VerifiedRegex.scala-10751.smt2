; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549778 () Bool)

(assert start!549778)

(declare-fun b!5195275 () Bool)

(assert (=> b!5195275 true))

(assert (=> b!5195275 true))

(declare-fun lambda!259915 () Int)

(declare-fun lambda!259914 () Int)

(assert (=> b!5195275 (not (= lambda!259915 lambda!259914))))

(assert (=> b!5195275 true))

(assert (=> b!5195275 true))

(declare-fun e!3235706 () Bool)

(declare-fun tp!1457353 () Bool)

(declare-datatypes ((C!29768 0))(
  ( (C!29769 (val!24586 Int)) )
))
(declare-datatypes ((Regex!14749 0))(
  ( (ElementMatch!14749 (c!895514 C!29768)) (Concat!23594 (regOne!30010 Regex!14749) (regTwo!30010 Regex!14749)) (EmptyExpr!14749) (Star!14749 (reg!15078 Regex!14749)) (EmptyLang!14749) (Union!14749 (regOne!30011 Regex!14749) (regTwo!30011 Regex!14749)) )
))
(declare-datatypes ((List!60546 0))(
  ( (Nil!60422) (Cons!60422 (h!66870 Regex!14749) (t!373699 List!60546)) )
))
(declare-datatypes ((Context!8266 0))(
  ( (Context!8267 (exprs!4633 List!60546)) )
))
(declare-datatypes ((List!60547 0))(
  ( (Nil!60423) (Cons!60423 (h!66871 Context!8266) (t!373700 List!60547)) )
))
(declare-fun zl!343 () List!60547)

(declare-fun b!5195258 () Bool)

(declare-fun e!3235707 () Bool)

(declare-fun inv!80119 (Context!8266) Bool)

(assert (=> b!5195258 (= e!3235706 (and (inv!80119 (h!66871 zl!343)) e!3235707 tp!1457353))))

(declare-fun b!5195259 () Bool)

(declare-fun e!3235709 () Bool)

(declare-fun tp!1457359 () Bool)

(assert (=> b!5195259 (= e!3235709 tp!1457359)))

(declare-fun res!2206719 () Bool)

(declare-fun e!3235711 () Bool)

(assert (=> start!549778 (=> (not res!2206719) (not e!3235711))))

(declare-fun r!7292 () Regex!14749)

(declare-fun validRegex!6485 (Regex!14749) Bool)

(assert (=> start!549778 (= res!2206719 (validRegex!6485 r!7292))))

(assert (=> start!549778 e!3235711))

(assert (=> start!549778 e!3235709))

(declare-fun e!3235705 () Bool)

(assert (=> start!549778 e!3235705))

(declare-fun condSetEmpty!32860 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8266))

(assert (=> start!549778 (= condSetEmpty!32860 (= z!1189 ((as const (Array Context!8266 Bool)) false)))))

(declare-fun setRes!32860 () Bool)

(assert (=> start!549778 setRes!32860))

(assert (=> start!549778 e!3235706))

(declare-fun b!5195260 () Bool)

(declare-fun e!3235708 () Bool)

(assert (=> b!5195260 (= e!3235708 true)))

(declare-fun lt!2138660 () Regex!14749)

(declare-fun lt!2138663 () List!60547)

(declare-fun unfocusZipper!491 (List!60547) Regex!14749)

(assert (=> b!5195260 (= lt!2138660 (unfocusZipper!491 lt!2138663))))

(declare-fun b!5195261 () Bool)

(declare-fun tp_is_empty!38751 () Bool)

(declare-fun tp!1457352 () Bool)

(assert (=> b!5195261 (= e!3235705 (and tp_is_empty!38751 tp!1457352))))

(declare-fun b!5195262 () Bool)

(declare-fun tp!1457357 () Bool)

(declare-fun tp!1457355 () Bool)

(assert (=> b!5195262 (= e!3235709 (and tp!1457357 tp!1457355))))

(declare-fun b!5195263 () Bool)

(declare-fun e!3235710 () Bool)

(declare-fun tp!1457356 () Bool)

(assert (=> b!5195263 (= e!3235710 tp!1457356)))

(declare-fun b!5195264 () Bool)

(declare-fun res!2206724 () Bool)

(declare-fun e!3235703 () Bool)

(assert (=> b!5195264 (=> (not res!2206724) (not e!3235703))))

(assert (=> b!5195264 (= res!2206724 (= r!7292 (unfocusZipper!491 zl!343)))))

(declare-fun b!5195265 () Bool)

(assert (=> b!5195265 (= e!3235709 tp_is_empty!38751)))

(declare-fun b!5195266 () Bool)

(declare-fun e!3235704 () Bool)

(assert (=> b!5195266 (= e!3235703 (not e!3235704))))

(declare-fun res!2206720 () Bool)

(assert (=> b!5195266 (=> res!2206720 e!3235704)))

(get-info :version)

(assert (=> b!5195266 (= res!2206720 (not ((_ is Cons!60423) zl!343)))))

(declare-fun lt!2138659 () Bool)

(declare-datatypes ((List!60548 0))(
  ( (Nil!60424) (Cons!60424 (h!66872 C!29768) (t!373701 List!60548)) )
))
(declare-fun s!2326 () List!60548)

(declare-fun matchRSpec!1852 (Regex!14749 List!60548) Bool)

(assert (=> b!5195266 (= lt!2138659 (matchRSpec!1852 r!7292 s!2326))))

(declare-fun matchR!6934 (Regex!14749 List!60548) Bool)

(assert (=> b!5195266 (= lt!2138659 (matchR!6934 r!7292 s!2326))))

(declare-datatypes ((Unit!152332 0))(
  ( (Unit!152333) )
))
(declare-fun lt!2138662 () Unit!152332)

(declare-fun mainMatchTheorem!1852 (Regex!14749 List!60548) Unit!152332)

(assert (=> b!5195266 (= lt!2138662 (mainMatchTheorem!1852 r!7292 s!2326))))

(declare-fun b!5195267 () Bool)

(declare-fun res!2206727 () Bool)

(assert (=> b!5195267 (=> res!2206727 e!3235704)))

(declare-fun isEmpty!32355 (List!60547) Bool)

(assert (=> b!5195267 (= res!2206727 (not (isEmpty!32355 (t!373700 zl!343))))))

(declare-fun b!5195268 () Bool)

(declare-fun tp!1457354 () Bool)

(assert (=> b!5195268 (= e!3235707 tp!1457354)))

(declare-fun b!5195269 () Bool)

(declare-fun res!2206723 () Bool)

(assert (=> b!5195269 (=> res!2206723 e!3235704)))

(declare-fun generalisedUnion!678 (List!60546) Regex!14749)

(declare-fun unfocusZipperList!191 (List!60547) List!60546)

(assert (=> b!5195269 (= res!2206723 (not (= r!7292 (generalisedUnion!678 (unfocusZipperList!191 zl!343)))))))

(declare-fun setElem!32860 () Context!8266)

(declare-fun setNonEmpty!32860 () Bool)

(declare-fun tp!1457360 () Bool)

(assert (=> setNonEmpty!32860 (= setRes!32860 (and tp!1457360 (inv!80119 setElem!32860) e!3235710))))

(declare-fun setRest!32860 () (InoxSet Context!8266))

(assert (=> setNonEmpty!32860 (= z!1189 ((_ map or) (store ((as const (Array Context!8266 Bool)) false) setElem!32860 true) setRest!32860))))

(declare-fun b!5195270 () Bool)

(declare-fun res!2206721 () Bool)

(assert (=> b!5195270 (=> res!2206721 e!3235704)))

(declare-fun generalisedConcat!418 (List!60546) Regex!14749)

(assert (=> b!5195270 (= res!2206721 (not (= r!7292 (generalisedConcat!418 (exprs!4633 (h!66871 zl!343))))))))

(declare-fun b!5195271 () Bool)

(declare-fun res!2206726 () Bool)

(assert (=> b!5195271 (=> res!2206726 e!3235704)))

(assert (=> b!5195271 (= res!2206726 (or ((_ is EmptyExpr!14749) r!7292) ((_ is EmptyLang!14749) r!7292) ((_ is ElementMatch!14749) r!7292) ((_ is Union!14749) r!7292) (not ((_ is Concat!23594) r!7292))))))

(declare-fun b!5195272 () Bool)

(declare-fun tp!1457358 () Bool)

(declare-fun tp!1457361 () Bool)

(assert (=> b!5195272 (= e!3235709 (and tp!1457358 tp!1457361))))

(declare-fun b!5195273 () Bool)

(declare-fun res!2206722 () Bool)

(assert (=> b!5195273 (=> res!2206722 e!3235704)))

(assert (=> b!5195273 (= res!2206722 (not ((_ is Cons!60422) (exprs!4633 (h!66871 zl!343)))))))

(declare-fun b!5195274 () Bool)

(assert (=> b!5195274 (= e!3235711 e!3235703)))

(declare-fun res!2206728 () Bool)

(assert (=> b!5195274 (=> (not res!2206728) (not e!3235703))))

(assert (=> b!5195274 (= res!2206728 (= lt!2138663 zl!343))))

(declare-fun toList!8533 ((InoxSet Context!8266)) List!60547)

(assert (=> b!5195274 (= lt!2138663 (toList!8533 z!1189))))

(assert (=> b!5195275 (= e!3235704 e!3235708)))

(declare-fun res!2206725 () Bool)

(assert (=> b!5195275 (=> res!2206725 e!3235708)))

(declare-fun lt!2138661 () Bool)

(assert (=> b!5195275 (= res!2206725 (or (not (= lt!2138659 lt!2138661)) (not ((_ is Nil!60424) s!2326))))))

(declare-fun Exists!1930 (Int) Bool)

(assert (=> b!5195275 (= (Exists!1930 lambda!259914) (Exists!1930 lambda!259915))))

(declare-fun lt!2138664 () Unit!152332)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!584 (Regex!14749 Regex!14749 List!60548) Unit!152332)

(assert (=> b!5195275 (= lt!2138664 (lemmaExistCutMatchRandMatchRSpecEquivalent!584 (regOne!30010 r!7292) (regTwo!30010 r!7292) s!2326))))

(assert (=> b!5195275 (= lt!2138661 (Exists!1930 lambda!259914))))

(declare-datatypes ((tuple2!63896 0))(
  ( (tuple2!63897 (_1!35251 List!60548) (_2!35251 List!60548)) )
))
(declare-datatypes ((Option!14860 0))(
  ( (None!14859) (Some!14859 (v!50888 tuple2!63896)) )
))
(declare-fun isDefined!11563 (Option!14860) Bool)

(declare-fun findConcatSeparation!1274 (Regex!14749 Regex!14749 List!60548 List!60548 List!60548) Option!14860)

(assert (=> b!5195275 (= lt!2138661 (isDefined!11563 (findConcatSeparation!1274 (regOne!30010 r!7292) (regTwo!30010 r!7292) Nil!60424 s!2326 s!2326)))))

(declare-fun lt!2138665 () Unit!152332)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1038 (Regex!14749 Regex!14749 List!60548) Unit!152332)

(assert (=> b!5195275 (= lt!2138665 (lemmaFindConcatSeparationEquivalentToExists!1038 (regOne!30010 r!7292) (regTwo!30010 r!7292) s!2326))))

(declare-fun setIsEmpty!32860 () Bool)

(assert (=> setIsEmpty!32860 setRes!32860))

(assert (= (and start!549778 res!2206719) b!5195274))

(assert (= (and b!5195274 res!2206728) b!5195264))

(assert (= (and b!5195264 res!2206724) b!5195266))

(assert (= (and b!5195266 (not res!2206720)) b!5195267))

(assert (= (and b!5195267 (not res!2206727)) b!5195270))

(assert (= (and b!5195270 (not res!2206721)) b!5195273))

(assert (= (and b!5195273 (not res!2206722)) b!5195269))

(assert (= (and b!5195269 (not res!2206723)) b!5195271))

(assert (= (and b!5195271 (not res!2206726)) b!5195275))

(assert (= (and b!5195275 (not res!2206725)) b!5195260))

(assert (= (and start!549778 ((_ is ElementMatch!14749) r!7292)) b!5195265))

(assert (= (and start!549778 ((_ is Concat!23594) r!7292)) b!5195272))

(assert (= (and start!549778 ((_ is Star!14749) r!7292)) b!5195259))

(assert (= (and start!549778 ((_ is Union!14749) r!7292)) b!5195262))

(assert (= (and start!549778 ((_ is Cons!60424) s!2326)) b!5195261))

(assert (= (and start!549778 condSetEmpty!32860) setIsEmpty!32860))

(assert (= (and start!549778 (not condSetEmpty!32860)) setNonEmpty!32860))

(assert (= setNonEmpty!32860 b!5195263))

(assert (= b!5195258 b!5195268))

(assert (= (and start!549778 ((_ is Cons!60423) zl!343)) b!5195258))

(declare-fun m!6249660 () Bool)

(assert (=> b!5195274 m!6249660))

(declare-fun m!6249662 () Bool)

(assert (=> b!5195270 m!6249662))

(declare-fun m!6249664 () Bool)

(assert (=> setNonEmpty!32860 m!6249664))

(declare-fun m!6249666 () Bool)

(assert (=> b!5195267 m!6249666))

(declare-fun m!6249668 () Bool)

(assert (=> b!5195275 m!6249668))

(declare-fun m!6249670 () Bool)

(assert (=> b!5195275 m!6249670))

(declare-fun m!6249672 () Bool)

(assert (=> b!5195275 m!6249672))

(declare-fun m!6249674 () Bool)

(assert (=> b!5195275 m!6249674))

(declare-fun m!6249676 () Bool)

(assert (=> b!5195275 m!6249676))

(assert (=> b!5195275 m!6249668))

(assert (=> b!5195275 m!6249672))

(declare-fun m!6249678 () Bool)

(assert (=> b!5195275 m!6249678))

(declare-fun m!6249680 () Bool)

(assert (=> b!5195258 m!6249680))

(declare-fun m!6249682 () Bool)

(assert (=> start!549778 m!6249682))

(declare-fun m!6249684 () Bool)

(assert (=> b!5195264 m!6249684))

(declare-fun m!6249686 () Bool)

(assert (=> b!5195260 m!6249686))

(declare-fun m!6249688 () Bool)

(assert (=> b!5195269 m!6249688))

(assert (=> b!5195269 m!6249688))

(declare-fun m!6249690 () Bool)

(assert (=> b!5195269 m!6249690))

(declare-fun m!6249692 () Bool)

(assert (=> b!5195266 m!6249692))

(declare-fun m!6249694 () Bool)

(assert (=> b!5195266 m!6249694))

(declare-fun m!6249696 () Bool)

(assert (=> b!5195266 m!6249696))

(check-sat (not b!5195268) (not b!5195261) (not b!5195258) (not setNonEmpty!32860) (not b!5195272) (not b!5195266) (not b!5195263) (not b!5195269) (not b!5195275) tp_is_empty!38751 (not b!5195260) (not b!5195264) (not start!549778) (not b!5195274) (not b!5195270) (not b!5195259) (not b!5195267) (not b!5195262))
(check-sat)
