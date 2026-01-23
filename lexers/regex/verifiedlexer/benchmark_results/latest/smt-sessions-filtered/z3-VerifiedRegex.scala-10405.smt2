; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538564 () Bool)

(assert start!538564)

(declare-fun setIsEmpty!29446 () Bool)

(declare-fun setRes!29446 () Bool)

(assert (=> setIsEmpty!29446 setRes!29446))

(declare-fun b!5107589 () Bool)

(declare-fun e!3185582 () Bool)

(declare-fun tp_is_empty!37475 () Bool)

(declare-fun tp!1424758 () Bool)

(assert (=> b!5107589 (= e!3185582 (and tp_is_empty!37475 tp!1424758))))

(declare-fun b!5107590 () Bool)

(declare-fun e!3185581 () Bool)

(declare-fun tp!1424760 () Bool)

(assert (=> b!5107590 (= e!3185581 (and tp_is_empty!37475 tp!1424760))))

(declare-fun b!5107591 () Bool)

(declare-fun e!3185580 () Bool)

(assert (=> b!5107591 (= e!3185580 false)))

(declare-fun lt!2102845 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28468 0))(
  ( (C!28469 (val!23886 Int)) )
))
(declare-datatypes ((Regex!14101 0))(
  ( (ElementMatch!14101 (c!877409 C!28468)) (Concat!22946 (regOne!28714 Regex!14101) (regTwo!28714 Regex!14101)) (EmptyExpr!14101) (Star!14101 (reg!14430 Regex!14101)) (EmptyLang!14101) (Union!14101 (regOne!28715 Regex!14101) (regTwo!28715 Regex!14101)) )
))
(declare-datatypes ((List!59072 0))(
  ( (Nil!58948) (Cons!58948 (h!65396 Regex!14101) (t!372073 List!59072)) )
))
(declare-datatypes ((Context!6970 0))(
  ( (Context!6971 (exprs!3985 List!59072)) )
))
(declare-fun baseZ!39 () (InoxSet Context!6970))

(declare-datatypes ((List!59073 0))(
  ( (Nil!58949) (Cons!58949 (h!65397 C!28468) (t!372074 List!59073)) )
))
(declare-fun bigger!41 () List!59073)

(declare-fun matchZipper!769 ((InoxSet Context!6970) List!59073) Bool)

(assert (=> b!5107591 (= lt!2102845 (matchZipper!769 baseZ!39 bigger!41))))

(declare-fun b!5107592 () Bool)

(declare-fun e!3185579 () Bool)

(declare-fun tp!1424757 () Bool)

(assert (=> b!5107592 (= e!3185579 (and tp_is_empty!37475 tp!1424757))))

(declare-fun b!5107593 () Bool)

(declare-fun res!2174011 () Bool)

(assert (=> b!5107593 (=> (not res!2174011) (not e!3185580))))

(declare-fun input!5723 () List!59073)

(declare-fun returnP!41 () List!59073)

(declare-datatypes ((tuple2!63588 0))(
  ( (tuple2!63589 (_1!35097 List!59073) (_2!35097 List!59073)) )
))
(declare-fun findLongestMatchInnerZipper!175 ((InoxSet Context!6970) List!59073 Int List!59073 List!59073 Int) tuple2!63588)

(declare-fun size!39407 (List!59073) Int)

(assert (=> b!5107593 (= res!2174011 (= (_1!35097 (findLongestMatchInnerZipper!175 baseZ!39 Nil!58949 (size!39407 Nil!58949) input!5723 input!5723 (size!39407 input!5723))) returnP!41))))

(declare-fun tp!1424761 () Bool)

(declare-fun setNonEmpty!29446 () Bool)

(declare-fun setElem!29446 () Context!6970)

(declare-fun e!3185578 () Bool)

(declare-fun inv!78433 (Context!6970) Bool)

(assert (=> setNonEmpty!29446 (= setRes!29446 (and tp!1424761 (inv!78433 setElem!29446) e!3185578))))

(declare-fun setRest!29446 () (InoxSet Context!6970))

(assert (=> setNonEmpty!29446 (= baseZ!39 ((_ map or) (store ((as const (Array Context!6970 Bool)) false) setElem!29446 true) setRest!29446))))

(declare-fun res!2174010 () Bool)

(declare-fun e!3185583 () Bool)

(assert (=> start!538564 (=> (not res!2174010) (not e!3185583))))

(declare-fun isPrefix!5506 (List!59073 List!59073) Bool)

(assert (=> start!538564 (= res!2174010 (isPrefix!5506 returnP!41 input!5723))))

(assert (=> start!538564 e!3185583))

(assert (=> start!538564 e!3185579))

(assert (=> start!538564 e!3185582))

(assert (=> start!538564 e!3185581))

(declare-fun condSetEmpty!29446 () Bool)

(assert (=> start!538564 (= condSetEmpty!29446 (= baseZ!39 ((as const (Array Context!6970 Bool)) false)))))

(assert (=> start!538564 setRes!29446))

(declare-fun b!5107594 () Bool)

(declare-fun res!2174012 () Bool)

(assert (=> b!5107594 (=> (not res!2174012) (not e!3185580))))

(declare-fun lt!2102846 () Int)

(declare-fun lt!2102844 () Int)

(assert (=> b!5107594 (= res!2174012 (not (= lt!2102846 lt!2102844)))))

(declare-fun b!5107595 () Bool)

(declare-fun tp!1424759 () Bool)

(assert (=> b!5107595 (= e!3185578 tp!1424759)))

(declare-fun b!5107596 () Bool)

(declare-fun res!2174008 () Bool)

(assert (=> b!5107596 (=> (not res!2174008) (not e!3185583))))

(assert (=> b!5107596 (= res!2174008 (isPrefix!5506 bigger!41 input!5723))))

(declare-fun b!5107597 () Bool)

(assert (=> b!5107597 (= e!3185583 e!3185580)))

(declare-fun res!2174009 () Bool)

(assert (=> b!5107597 (=> (not res!2174009) (not e!3185580))))

(assert (=> b!5107597 (= res!2174009 (>= lt!2102846 lt!2102844))))

(assert (=> b!5107597 (= lt!2102844 (size!39407 returnP!41))))

(assert (=> b!5107597 (= lt!2102846 (size!39407 bigger!41))))

(assert (= (and start!538564 res!2174010) b!5107596))

(assert (= (and b!5107596 res!2174008) b!5107597))

(assert (= (and b!5107597 res!2174009) b!5107593))

(assert (= (and b!5107593 res!2174011) b!5107594))

(assert (= (and b!5107594 res!2174012) b!5107591))

(get-info :version)

(assert (= (and start!538564 ((_ is Cons!58949) returnP!41)) b!5107592))

(assert (= (and start!538564 ((_ is Cons!58949) input!5723)) b!5107589))

(assert (= (and start!538564 ((_ is Cons!58949) bigger!41)) b!5107590))

(assert (= (and start!538564 condSetEmpty!29446) setIsEmpty!29446))

(assert (= (and start!538564 (not condSetEmpty!29446)) setNonEmpty!29446))

(assert (= setNonEmpty!29446 b!5107595))

(declare-fun m!6164784 () Bool)

(assert (=> setNonEmpty!29446 m!6164784))

(declare-fun m!6164786 () Bool)

(assert (=> b!5107596 m!6164786))

(declare-fun m!6164788 () Bool)

(assert (=> b!5107597 m!6164788))

(declare-fun m!6164790 () Bool)

(assert (=> b!5107597 m!6164790))

(declare-fun m!6164792 () Bool)

(assert (=> b!5107591 m!6164792))

(declare-fun m!6164794 () Bool)

(assert (=> b!5107593 m!6164794))

(declare-fun m!6164796 () Bool)

(assert (=> b!5107593 m!6164796))

(assert (=> b!5107593 m!6164794))

(assert (=> b!5107593 m!6164796))

(declare-fun m!6164798 () Bool)

(assert (=> b!5107593 m!6164798))

(declare-fun m!6164800 () Bool)

(assert (=> start!538564 m!6164800))

(check-sat (not b!5107592) (not start!538564) (not b!5107589) (not b!5107591) (not b!5107596) (not b!5107593) (not b!5107597) tp_is_empty!37475 (not setNonEmpty!29446) (not b!5107595) (not b!5107590))
(check-sat)
