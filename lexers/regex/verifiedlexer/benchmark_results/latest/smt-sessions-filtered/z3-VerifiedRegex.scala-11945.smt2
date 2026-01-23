; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668754 () Bool)

(assert start!668754)

(declare-fun b!6976657 () Bool)

(declare-fun e!4192904 () Bool)

(declare-fun tp_is_empty!43499 () Bool)

(declare-fun tp!1927008 () Bool)

(assert (=> b!6976657 (= e!4192904 (and tp_is_empty!43499 tp!1927008))))

(declare-fun b!6976658 () Bool)

(declare-fun res!2844835 () Bool)

(declare-fun e!4192906 () Bool)

(assert (=> b!6976658 (=> (not res!2844835) (not e!4192906))))

(declare-datatypes ((C!34544 0))(
  ( (C!34545 (val!26974 Int)) )
))
(declare-datatypes ((List!66956 0))(
  ( (Nil!66832) (Cons!66832 (h!73280 C!34544) (t!380699 List!66956)) )
))
(declare-fun s!7408 () List!66956)

(get-info :version)

(assert (=> b!6976658 (= res!2844835 ((_ is Cons!66832) s!7408))))

(declare-fun b!6976659 () Bool)

(assert (=> b!6976659 (= e!4192906 false)))

(declare-fun lt!2479941 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17137 0))(
  ( (ElementMatch!17137 (c!1293105 C!34544)) (Concat!25982 (regOne!34786 Regex!17137) (regTwo!34786 Regex!17137)) (EmptyExpr!17137) (Star!17137 (reg!17466 Regex!17137)) (EmptyLang!17137) (Union!17137 (regOne!34787 Regex!17137) (regTwo!34787 Regex!17137)) )
))
(declare-datatypes ((List!66957 0))(
  ( (Nil!66833) (Cons!66833 (h!73281 Regex!17137) (t!380700 List!66957)) )
))
(declare-datatypes ((Context!12266 0))(
  ( (Context!12267 (exprs!6633 List!66957)) )
))
(declare-fun lt!2479940 () (InoxSet Context!12266))

(declare-fun matchZipper!2677 ((InoxSet Context!12266) List!66956) Bool)

(declare-datatypes ((List!66958 0))(
  ( (Nil!66834) (Cons!66834 (h!73282 Context!12266) (t!380701 List!66958)) )
))
(declare-fun content!13158 (List!66958) (InoxSet Context!12266))

(declare-fun toList!10497 ((InoxSet Context!12266)) List!66958)

(assert (=> b!6976659 (= lt!2479941 (matchZipper!2677 (content!13158 (toList!10497 lt!2479940)) s!7408))))

(declare-fun b!6976660 () Bool)

(declare-fun e!4192905 () Bool)

(declare-fun tp!1927009 () Bool)

(assert (=> b!6976660 (= e!4192905 tp!1927009)))

(declare-fun setRes!47309 () Bool)

(declare-fun tp!1927011 () Bool)

(declare-fun e!4192903 () Bool)

(declare-fun setElem!47309 () Context!12266)

(declare-fun setNonEmpty!47309 () Bool)

(declare-fun inv!85701 (Context!12266) Bool)

(assert (=> setNonEmpty!47309 (= setRes!47309 (and tp!1927011 (inv!85701 setElem!47309) e!4192903))))

(declare-fun z1!570 () (InoxSet Context!12266))

(declare-fun setRest!47309 () (InoxSet Context!12266))

(assert (=> setNonEmpty!47309 (= z1!570 ((_ map or) (store ((as const (Array Context!12266 Bool)) false) setElem!47309 true) setRest!47309))))

(declare-fun res!2844836 () Bool)

(assert (=> start!668754 (=> (not res!2844836) (not e!4192906))))

(assert (=> start!668754 (= res!2844836 (matchZipper!2677 lt!2479940 s!7408))))

(declare-fun ct2!306 () Context!12266)

(declare-fun appendTo!258 ((InoxSet Context!12266) Context!12266) (InoxSet Context!12266))

(assert (=> start!668754 (= lt!2479940 (appendTo!258 z1!570 ct2!306))))

(assert (=> start!668754 e!4192906))

(declare-fun condSetEmpty!47309 () Bool)

(assert (=> start!668754 (= condSetEmpty!47309 (= z1!570 ((as const (Array Context!12266 Bool)) false)))))

(assert (=> start!668754 setRes!47309))

(assert (=> start!668754 (and (inv!85701 ct2!306) e!4192905)))

(assert (=> start!668754 e!4192904))

(declare-fun setIsEmpty!47309 () Bool)

(assert (=> setIsEmpty!47309 setRes!47309))

(declare-fun b!6976661 () Bool)

(declare-fun tp!1927010 () Bool)

(assert (=> b!6976661 (= e!4192903 tp!1927010)))

(assert (= (and start!668754 res!2844836) b!6976658))

(assert (= (and b!6976658 res!2844835) b!6976659))

(assert (= (and start!668754 condSetEmpty!47309) setIsEmpty!47309))

(assert (= (and start!668754 (not condSetEmpty!47309)) setNonEmpty!47309))

(assert (= setNonEmpty!47309 b!6976661))

(assert (= start!668754 b!6976660))

(assert (= (and start!668754 ((_ is Cons!66832) s!7408)) b!6976657))

(declare-fun m!7661902 () Bool)

(assert (=> b!6976659 m!7661902))

(assert (=> b!6976659 m!7661902))

(declare-fun m!7661904 () Bool)

(assert (=> b!6976659 m!7661904))

(assert (=> b!6976659 m!7661904))

(declare-fun m!7661906 () Bool)

(assert (=> b!6976659 m!7661906))

(declare-fun m!7661908 () Bool)

(assert (=> setNonEmpty!47309 m!7661908))

(declare-fun m!7661910 () Bool)

(assert (=> start!668754 m!7661910))

(declare-fun m!7661912 () Bool)

(assert (=> start!668754 m!7661912))

(declare-fun m!7661914 () Bool)

(assert (=> start!668754 m!7661914))

(check-sat (not setNonEmpty!47309) tp_is_empty!43499 (not b!6976657) (not b!6976660) (not b!6976659) (not start!668754) (not b!6976661))
(check-sat)
