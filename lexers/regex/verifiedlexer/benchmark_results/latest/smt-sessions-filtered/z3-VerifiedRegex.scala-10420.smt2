; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538808 () Bool)

(assert start!538808)

(declare-fun b!5109693 () Bool)

(declare-fun e!3186907 () Bool)

(declare-fun tp_is_empty!37535 () Bool)

(declare-fun tp!1425535 () Bool)

(assert (=> b!5109693 (= e!3186907 (and tp_is_empty!37535 tp!1425535))))

(declare-fun setNonEmpty!29645 () Bool)

(declare-fun e!3186905 () Bool)

(declare-datatypes ((C!28528 0))(
  ( (C!28529 (val!23916 Int)) )
))
(declare-datatypes ((Regex!14131 0))(
  ( (ElementMatch!14131 (c!877819 C!28528)) (Concat!22976 (regOne!28774 Regex!14131) (regTwo!28774 Regex!14131)) (EmptyExpr!14131) (Star!14131 (reg!14460 Regex!14131)) (EmptyLang!14131) (Union!14131 (regOne!28775 Regex!14131) (regTwo!28775 Regex!14131)) )
))
(declare-datatypes ((List!59140 0))(
  ( (Nil!59016) (Cons!59016 (h!65464 Regex!14131) (t!372141 List!59140)) )
))
(declare-datatypes ((Context!7030 0))(
  ( (Context!7031 (exprs!4015 List!59140)) )
))
(declare-fun setElem!29646 () Context!7030)

(declare-fun tp!1425529 () Bool)

(declare-fun setRes!29645 () Bool)

(declare-fun inv!78508 (Context!7030) Bool)

(assert (=> setNonEmpty!29645 (= setRes!29645 (and tp!1425529 (inv!78508 setElem!29646) e!3186905))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7030))

(declare-fun setRest!29646 () (InoxSet Context!7030))

(assert (=> setNonEmpty!29645 (= z!4463 ((_ map or) (store ((as const (Array Context!7030 Bool)) false) setElem!29646 true) setRest!29646))))

(declare-fun b!5109694 () Bool)

(declare-fun e!3186910 () Bool)

(declare-fun tp!1425530 () Bool)

(assert (=> b!5109694 (= e!3186910 tp!1425530)))

(declare-fun b!5109695 () Bool)

(declare-fun e!3186904 () Bool)

(declare-fun e!3186911 () Bool)

(assert (=> b!5109695 (= e!3186904 (not e!3186911))))

(declare-fun res!2174893 () Bool)

(assert (=> b!5109695 (=> res!2174893 e!3186911)))

(declare-datatypes ((List!59141 0))(
  ( (Nil!59017) (Cons!59017 (h!65465 C!28528) (t!372142 List!59141)) )
))
(declare-fun testedP!265 () List!59141)

(declare-fun knownP!20 () List!59141)

(declare-fun matchZipper!799 ((InoxSet Context!7030) List!59141) Bool)

(declare-fun getSuffix!3210 (List!59141 List!59141) List!59141)

(assert (=> b!5109695 (= res!2174893 (not (matchZipper!799 z!4463 (getSuffix!3210 knownP!20 testedP!265))))))

(declare-fun isPrefix!5536 (List!59141 List!59141) Bool)

(assert (=> b!5109695 (isPrefix!5536 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59141)

(declare-datatypes ((Unit!150115 0))(
  ( (Unit!150116) )
))
(declare-fun lt!2104309 () Unit!150115)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!673 (List!59141 List!59141 List!59141) Unit!150115)

(assert (=> b!5109695 (= lt!2104309 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!673 knownP!20 testedP!265 input!5745))))

(declare-fun b!5109696 () Bool)

(declare-fun res!2174894 () Bool)

(assert (=> b!5109696 (=> res!2174894 e!3186911)))

(declare-fun lostCauseZipper!1017 ((InoxSet Context!7030)) Bool)

(assert (=> b!5109696 (= res!2174894 (lostCauseZipper!1017 z!4463))))

(declare-fun b!5109697 () Bool)

(declare-fun res!2174895 () Bool)

(declare-fun e!3186909 () Bool)

(assert (=> b!5109697 (=> (not res!2174895) (not e!3186909))))

(assert (=> b!5109697 (= res!2174895 (isPrefix!5536 knownP!20 input!5745))))

(declare-fun setIsEmpty!29646 () Bool)

(declare-fun setRes!29646 () Bool)

(assert (=> setIsEmpty!29646 setRes!29646))

(declare-fun b!5109698 () Bool)

(declare-fun res!2174891 () Bool)

(assert (=> b!5109698 (=> res!2174891 e!3186911)))

(declare-fun baseZ!46 () (InoxSet Context!7030))

(declare-fun derivationZipper!30 ((InoxSet Context!7030) List!59141) (InoxSet Context!7030))

(assert (=> b!5109698 (= res!2174891 (not (= (derivationZipper!30 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5109699 () Bool)

(declare-fun res!2174896 () Bool)

(assert (=> b!5109699 (=> (not res!2174896) (not e!3186904))))

(assert (=> b!5109699 (= res!2174896 (matchZipper!799 baseZ!46 knownP!20))))

(declare-fun b!5109700 () Bool)

(assert (=> b!5109700 (= e!3186909 e!3186904)))

(declare-fun res!2174897 () Bool)

(assert (=> b!5109700 (=> (not res!2174897) (not e!3186904))))

(declare-fun lt!2104307 () Int)

(declare-fun lt!2104310 () Int)

(assert (=> b!5109700 (= res!2174897 (>= lt!2104307 lt!2104310))))

(declare-fun size!39437 (List!59141) Int)

(assert (=> b!5109700 (= lt!2104310 (size!39437 testedP!265))))

(assert (=> b!5109700 (= lt!2104307 (size!39437 knownP!20))))

(declare-fun res!2174898 () Bool)

(assert (=> start!538808 (=> (not res!2174898) (not e!3186909))))

(assert (=> start!538808 (= res!2174898 (isPrefix!5536 testedP!265 input!5745))))

(assert (=> start!538808 e!3186909))

(declare-fun e!3186906 () Bool)

(assert (=> start!538808 e!3186906))

(declare-fun condSetEmpty!29645 () Bool)

(assert (=> start!538808 (= condSetEmpty!29645 (= z!4463 ((as const (Array Context!7030 Bool)) false)))))

(assert (=> start!538808 setRes!29645))

(assert (=> start!538808 e!3186907))

(declare-fun condSetEmpty!29646 () Bool)

(assert (=> start!538808 (= condSetEmpty!29646 (= baseZ!46 ((as const (Array Context!7030 Bool)) false)))))

(assert (=> start!538808 setRes!29646))

(declare-fun e!3186908 () Bool)

(assert (=> start!538808 e!3186908))

(declare-fun setIsEmpty!29645 () Bool)

(assert (=> setIsEmpty!29645 setRes!29645))

(declare-fun setNonEmpty!29646 () Bool)

(declare-fun setElem!29645 () Context!7030)

(declare-fun tp!1425532 () Bool)

(assert (=> setNonEmpty!29646 (= setRes!29646 (and tp!1425532 (inv!78508 setElem!29645) e!3186910))))

(declare-fun setRest!29645 () (InoxSet Context!7030))

(assert (=> setNonEmpty!29646 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7030 Bool)) false) setElem!29645 true) setRest!29645))))

(declare-fun b!5109701 () Bool)

(declare-fun res!2174892 () Bool)

(assert (=> b!5109701 (=> res!2174892 e!3186911)))

(assert (=> b!5109701 (= res!2174892 (= lt!2104310 lt!2104307))))

(declare-fun b!5109702 () Bool)

(declare-fun tp!1425533 () Bool)

(assert (=> b!5109702 (= e!3186906 (and tp_is_empty!37535 tp!1425533))))

(declare-fun b!5109703 () Bool)

(declare-fun tp!1425531 () Bool)

(assert (=> b!5109703 (= e!3186908 (and tp_is_empty!37535 tp!1425531))))

(declare-fun b!5109704 () Bool)

(declare-fun lt!2104308 () Int)

(assert (=> b!5109704 (= e!3186911 (or (>= lt!2104310 lt!2104308) (>= lt!2104308 lt!2104310)))))

(assert (=> b!5109704 (= lt!2104308 (size!39437 input!5745))))

(declare-fun b!5109705 () Bool)

(declare-fun tp!1425534 () Bool)

(assert (=> b!5109705 (= e!3186905 tp!1425534)))

(assert (= (and start!538808 res!2174898) b!5109697))

(assert (= (and b!5109697 res!2174895) b!5109700))

(assert (= (and b!5109700 res!2174897) b!5109699))

(assert (= (and b!5109699 res!2174896) b!5109695))

(assert (= (and b!5109695 (not res!2174893)) b!5109698))

(assert (= (and b!5109698 (not res!2174891)) b!5109696))

(assert (= (and b!5109696 (not res!2174894)) b!5109701))

(assert (= (and b!5109701 (not res!2174892)) b!5109704))

(get-info :version)

(assert (= (and start!538808 ((_ is Cons!59017) input!5745)) b!5109702))

(assert (= (and start!538808 condSetEmpty!29645) setIsEmpty!29645))

(assert (= (and start!538808 (not condSetEmpty!29645)) setNonEmpty!29645))

(assert (= setNonEmpty!29645 b!5109705))

(assert (= (and start!538808 ((_ is Cons!59017) testedP!265)) b!5109693))

(assert (= (and start!538808 condSetEmpty!29646) setIsEmpty!29646))

(assert (= (and start!538808 (not condSetEmpty!29646)) setNonEmpty!29646))

(assert (= setNonEmpty!29646 b!5109694))

(assert (= (and start!538808 ((_ is Cons!59017) knownP!20)) b!5109703))

(declare-fun m!6166894 () Bool)

(assert (=> b!5109699 m!6166894))

(declare-fun m!6166896 () Bool)

(assert (=> b!5109697 m!6166896))

(declare-fun m!6166898 () Bool)

(assert (=> setNonEmpty!29645 m!6166898))

(declare-fun m!6166900 () Bool)

(assert (=> b!5109695 m!6166900))

(assert (=> b!5109695 m!6166900))

(declare-fun m!6166902 () Bool)

(assert (=> b!5109695 m!6166902))

(declare-fun m!6166904 () Bool)

(assert (=> b!5109695 m!6166904))

(declare-fun m!6166906 () Bool)

(assert (=> b!5109695 m!6166906))

(declare-fun m!6166908 () Bool)

(assert (=> b!5109700 m!6166908))

(declare-fun m!6166910 () Bool)

(assert (=> b!5109700 m!6166910))

(declare-fun m!6166912 () Bool)

(assert (=> setNonEmpty!29646 m!6166912))

(declare-fun m!6166914 () Bool)

(assert (=> start!538808 m!6166914))

(declare-fun m!6166916 () Bool)

(assert (=> b!5109696 m!6166916))

(declare-fun m!6166918 () Bool)

(assert (=> b!5109698 m!6166918))

(declare-fun m!6166920 () Bool)

(assert (=> b!5109704 m!6166920))

(check-sat (not b!5109695) (not b!5109697) (not b!5109702) (not b!5109696) (not b!5109704) (not setNonEmpty!29645) (not b!5109703) (not b!5109698) (not b!5109700) (not b!5109699) tp_is_empty!37535 (not setNonEmpty!29646) (not start!538808) (not b!5109705) (not b!5109694) (not b!5109693))
(check-sat)
