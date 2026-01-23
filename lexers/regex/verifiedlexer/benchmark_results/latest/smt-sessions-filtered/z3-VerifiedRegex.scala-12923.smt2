; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712626 () Bool)

(assert start!712626)

(declare-fun b_free!133993 () Bool)

(declare-fun b_next!134783 () Bool)

(assert (=> start!712626 (= b_free!133993 (not b_next!134783))))

(declare-fun tp!2075729 () Bool)

(declare-fun b_and!351373 () Bool)

(assert (=> start!712626 (= tp!2075729 b_and!351373)))

(declare-fun res!2955337 () Bool)

(declare-fun e!4378202 () Bool)

(assert (=> start!712626 (=> (not res!2955337) (not e!4378202))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!839 0))(
  ( (A!840 (val!29097 Int)) )
))
(declare-fun s!1437 () (InoxSet A!839))

(declare-fun elmt!118 () A!839)

(assert (=> start!712626 (= res!2955337 (= s!1437 (store ((as const (Array A!839 Bool)) false) elmt!118 true)))))

(assert (=> start!712626 e!4378202))

(declare-fun condSetEmpty!54137 () Bool)

(assert (=> start!712626 (= condSetEmpty!54137 (= s!1437 ((as const (Array A!839 Bool)) false)))))

(declare-fun setRes!54137 () Bool)

(assert (=> start!712626 setRes!54137))

(declare-fun tp_is_empty!47473 () Bool)

(assert (=> start!712626 tp_is_empty!47473))

(assert (=> start!712626 tp!2075729))

(declare-fun e!4378200 () Bool)

(assert (=> start!712626 e!4378200))

(declare-fun b!7314044 () Bool)

(declare-fun e!4378201 () Bool)

(assert (=> b!7314044 (= e!4378201 false)))

(declare-datatypes ((Unit!164533 0))(
  ( (Unit!164534) )
))
(declare-fun lt!2601397 () Unit!164533)

(declare-datatypes ((B!3541 0))(
  ( (B!3542 (val!29098 Int)) )
))
(declare-datatypes ((List!71179 0))(
  ( (Nil!71055) (Cons!71055 (h!77503 B!3541) (t!385384 List!71179)) )
))
(declare-fun lRes!18 () List!71179)

(declare-fun lt!2601396 () List!71179)

(declare-fun subseqTail!74 (List!71179 List!71179) Unit!164533)

(assert (=> b!7314044 (= lt!2601397 (subseqTail!74 lRes!18 lt!2601396))))

(declare-fun setNonEmpty!54137 () Bool)

(declare-fun tp!2075727 () Bool)

(assert (=> setNonEmpty!54137 (= setRes!54137 (and tp!2075727 tp_is_empty!47473))))

(declare-fun setElem!54137 () A!839)

(declare-fun setRest!54137 () (InoxSet A!839))

(assert (=> setNonEmpty!54137 (= s!1437 ((_ map or) (store ((as const (Array A!839 Bool)) false) setElem!54137 true) setRest!54137))))

(declare-fun b!7314045 () Bool)

(declare-fun res!2955338 () Bool)

(assert (=> b!7314045 (=> (not res!2955338) (not e!4378201))))

(get-info :version)

(assert (=> b!7314045 (= res!2955338 ((_ is Cons!71055) lRes!18))))

(declare-fun b!7314046 () Bool)

(declare-fun tp_is_empty!47475 () Bool)

(declare-fun tp!2075728 () Bool)

(assert (=> b!7314046 (= e!4378200 (and tp_is_empty!47475 tp!2075728))))

(declare-fun b!7314047 () Bool)

(assert (=> b!7314047 (= e!4378202 e!4378201)))

(declare-fun res!2955339 () Bool)

(assert (=> b!7314047 (=> (not res!2955339) (not e!4378201))))

(declare-fun subseq!831 (List!71179 List!71179) Bool)

(assert (=> b!7314047 (= res!2955339 (subseq!831 lRes!18 lt!2601396))))

(declare-fun f!883 () Int)

(declare-fun toList!11588 ((InoxSet B!3541)) List!71179)

(declare-fun flatMap!3030 ((InoxSet A!839) Int) (InoxSet B!3541))

(assert (=> b!7314047 (= lt!2601396 (toList!11588 (flatMap!3030 s!1437 f!883)))))

(declare-fun setIsEmpty!54137 () Bool)

(assert (=> setIsEmpty!54137 setRes!54137))

(assert (= (and start!712626 res!2955337) b!7314047))

(assert (= (and b!7314047 res!2955339) b!7314045))

(assert (= (and b!7314045 res!2955338) b!7314044))

(assert (= (and start!712626 condSetEmpty!54137) setIsEmpty!54137))

(assert (= (and start!712626 (not condSetEmpty!54137)) setNonEmpty!54137))

(assert (= (and start!712626 ((_ is Cons!71055) lRes!18)) b!7314046))

(declare-fun m!7978214 () Bool)

(assert (=> start!712626 m!7978214))

(declare-fun m!7978216 () Bool)

(assert (=> b!7314044 m!7978216))

(declare-fun m!7978218 () Bool)

(assert (=> b!7314047 m!7978218))

(declare-fun m!7978220 () Bool)

(assert (=> b!7314047 m!7978220))

(assert (=> b!7314047 m!7978220))

(declare-fun m!7978222 () Bool)

(assert (=> b!7314047 m!7978222))

(check-sat (not b_next!134783) (not b!7314044) (not setNonEmpty!54137) b_and!351373 (not b!7314046) tp_is_empty!47475 (not b!7314047) tp_is_empty!47473)
(check-sat b_and!351373 (not b_next!134783))
