; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712040 () Bool)

(assert start!712040)

(declare-fun b_free!133905 () Bool)

(declare-fun b_next!134695 () Bool)

(assert (=> start!712040 (= b_free!133905 (not b_next!134695))))

(declare-fun tp!2074992 () Bool)

(declare-fun b_and!351181 () Bool)

(assert (=> start!712040 (= tp!2074992 b_and!351181)))

(declare-fun res!2953414 () Bool)

(declare-fun e!4375899 () Bool)

(assert (=> start!712040 (=> (not res!2953414) (not e!4375899))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!751 0))(
  ( (A!752 (val!29009 Int)) )
))
(declare-fun s!1445 () (InoxSet A!751))

(declare-fun elmt!124 () A!751)

(assert (=> start!712040 (= res!2953414 (= s!1445 (store ((as const (Array A!751 Bool)) false) elmt!124 true)))))

(assert (=> start!712040 e!4375899))

(declare-fun condSetEmpty!53801 () Bool)

(assert (=> start!712040 (= condSetEmpty!53801 (= s!1445 ((as const (Array A!751 Bool)) false)))))

(declare-fun setRes!53801 () Bool)

(assert (=> start!712040 setRes!53801))

(declare-fun tp_is_empty!47297 () Bool)

(assert (=> start!712040 tp_is_empty!47297))

(assert (=> start!712040 tp!2074992))

(declare-fun e!4375898 () Bool)

(assert (=> start!712040 e!4375898))

(declare-fun setIsEmpty!53801 () Bool)

(assert (=> setIsEmpty!53801 setRes!53801))

(declare-fun b!7310992 () Bool)

(declare-fun tp_is_empty!47299 () Bool)

(declare-fun tp!2074991 () Bool)

(assert (=> b!7310992 (= e!4375898 (and tp_is_empty!47299 tp!2074991))))

(declare-fun setNonEmpty!53801 () Bool)

(declare-fun tp!2074993 () Bool)

(assert (=> setNonEmpty!53801 (= setRes!53801 (and tp!2074993 tp_is_empty!47297))))

(declare-fun setElem!53801 () A!751)

(declare-fun setRest!53801 () (InoxSet A!751))

(assert (=> setNonEmpty!53801 (= s!1445 ((_ map or) (store ((as const (Array A!751 Bool)) false) setElem!53801 true) setRest!53801))))

(declare-fun b!7310993 () Bool)

(declare-fun e!4375897 () Bool)

(assert (=> b!7310993 (= e!4375899 e!4375897)))

(declare-fun res!2953416 () Bool)

(assert (=> b!7310993 (=> (not res!2953416) (not e!4375897))))

(declare-datatypes ((B!3453 0))(
  ( (B!3454 (val!29010 Int)) )
))
(declare-datatypes ((List!71128 0))(
  ( (Nil!71004) (Cons!71004 (h!77452 B!3453) (t!385234 List!71128)) )
))
(declare-fun lRes!24 () List!71128)

(declare-fun lt!2600419 () List!71128)

(declare-fun subseq!787 (List!71128 List!71128) Bool)

(assert (=> b!7310993 (= res!2953416 (subseq!787 lRes!24 lt!2600419))))

(declare-fun f!903 () Int)

(declare-fun toList!11537 ((InoxSet B!3453)) List!71128)

(declare-fun dynLambda!29043 (Int A!751) (InoxSet B!3453))

(assert (=> b!7310993 (= lt!2600419 (toList!11537 (dynLambda!29043 f!903 elmt!124)))))

(declare-fun b!7310994 () Bool)

(assert (=> b!7310994 (= e!4375897 false)))

(declare-datatypes ((Unit!164416 0))(
  ( (Unit!164417) )
))
(declare-fun lt!2600418 () Unit!164416)

(declare-fun subseqTail!40 (List!71128 List!71128) Unit!164416)

(assert (=> b!7310994 (= lt!2600418 (subseqTail!40 lRes!24 lt!2600419))))

(declare-fun b!7310995 () Bool)

(declare-fun res!2953415 () Bool)

(assert (=> b!7310995 (=> (not res!2953415) (not e!4375897))))

(get-info :version)

(assert (=> b!7310995 (= res!2953415 ((_ is Cons!71004) lRes!24))))

(assert (= (and start!712040 res!2953414) b!7310993))

(assert (= (and b!7310993 res!2953416) b!7310995))

(assert (= (and b!7310995 res!2953415) b!7310994))

(assert (= (and start!712040 condSetEmpty!53801) setIsEmpty!53801))

(assert (= (and start!712040 (not condSetEmpty!53801)) setNonEmpty!53801))

(assert (= (and start!712040 ((_ is Cons!71004) lRes!24)) b!7310992))

(declare-fun b_lambda!282055 () Bool)

(assert (=> (not b_lambda!282055) (not b!7310993)))

(declare-fun t!385233 () Bool)

(declare-fun tb!262143 () Bool)

(assert (=> (and start!712040 (= f!903 f!903) t!385233) tb!262143))

(assert (=> b!7310993 t!385233))

(declare-fun result!352670 () Bool)

(declare-fun b_and!351183 () Bool)

(assert (= b_and!351181 (and (=> t!385233 result!352670) b_and!351183)))

(declare-fun m!7975174 () Bool)

(assert (=> start!712040 m!7975174))

(declare-fun m!7975176 () Bool)

(assert (=> b!7310993 m!7975176))

(declare-fun m!7975178 () Bool)

(assert (=> b!7310993 m!7975178))

(assert (=> b!7310993 m!7975178))

(declare-fun m!7975180 () Bool)

(assert (=> b!7310993 m!7975180))

(declare-fun m!7975182 () Bool)

(assert (=> b!7310994 m!7975182))

(check-sat (not b!7310994) (not b_next!134695) (not b!7310993) (not b!7310992) (not setNonEmpty!53801) (not b_lambda!282055) tp_is_empty!47299 b_and!351183 tp_is_empty!47297 (not tb!262143))
(check-sat b_and!351183 (not b_next!134695))
