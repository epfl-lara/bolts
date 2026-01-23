; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712090 () Bool)

(assert start!712090)

(declare-fun b_free!133917 () Bool)

(declare-fun b_next!134707 () Bool)

(assert (=> start!712090 (= b_free!133917 (not b_next!134707))))

(declare-fun tp!2075082 () Bool)

(declare-fun b_and!351205 () Bool)

(assert (=> start!712090 (= tp!2075082 b_and!351205)))

(declare-fun setIsEmpty!53843 () Bool)

(declare-fun setRes!53843 () Bool)

(assert (=> setIsEmpty!53843 setRes!53843))

(declare-fun b!7311231 () Bool)

(declare-fun e!4376066 () Bool)

(assert (=> b!7311231 (= e!4376066 false)))

(declare-datatypes ((Unit!164426 0))(
  ( (Unit!164427) )
))
(declare-fun lt!2600497 () Unit!164426)

(declare-datatypes ((B!3465 0))(
  ( (B!3466 (val!29021 Int)) )
))
(declare-datatypes ((List!71134 0))(
  ( (Nil!71010) (Cons!71010 (h!77458 B!3465) (t!385252 List!71134)) )
))
(declare-fun lRes!24 () List!71134)

(declare-fun lt!2600498 () List!71134)

(declare-fun subseqTail!44 (List!71134 List!71134) Unit!164426)

(assert (=> b!7311231 (= lt!2600497 (subseqTail!44 lRes!24 lt!2600498))))

(declare-fun b!7311232 () Bool)

(declare-fun e!4376068 () Bool)

(assert (=> b!7311232 (= e!4376068 e!4376066)))

(declare-fun res!2953547 () Bool)

(assert (=> b!7311232 (=> (not res!2953547) (not e!4376066))))

(declare-fun subseq!793 (List!71134 List!71134) Bool)

(assert (=> b!7311232 (= res!2953547 (subseq!793 lRes!24 lt!2600498))))

(declare-fun f!903 () Int)

(declare-datatypes ((A!763 0))(
  ( (A!764 (val!29022 Int)) )
))
(declare-fun elmt!124 () A!763)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!11543 ((InoxSet B!3465)) List!71134)

(declare-fun dynLambda!29050 (Int A!763) (InoxSet B!3465))

(assert (=> b!7311232 (= lt!2600498 (toList!11543 (dynLambda!29050 f!903 elmt!124)))))

(declare-fun setNonEmpty!53843 () Bool)

(declare-fun tp!2075083 () Bool)

(declare-fun tp_is_empty!47321 () Bool)

(assert (=> setNonEmpty!53843 (= setRes!53843 (and tp!2075083 tp_is_empty!47321))))

(declare-fun s!1445 () (InoxSet A!763))

(declare-fun setElem!53843 () A!763)

(declare-fun setRest!53843 () (InoxSet A!763))

(assert (=> setNonEmpty!53843 (= s!1445 ((_ map or) (store ((as const (Array A!763 Bool)) false) setElem!53843 true) setRest!53843))))

(declare-fun res!2953549 () Bool)

(assert (=> start!712090 (=> (not res!2953549) (not e!4376068))))

(assert (=> start!712090 (= res!2953549 (= s!1445 (store ((as const (Array A!763 Bool)) false) elmt!124 true)))))

(assert (=> start!712090 e!4376068))

(declare-fun condSetEmpty!53843 () Bool)

(assert (=> start!712090 (= condSetEmpty!53843 (= s!1445 ((as const (Array A!763 Bool)) false)))))

(assert (=> start!712090 setRes!53843))

(assert (=> start!712090 tp_is_empty!47321))

(assert (=> start!712090 tp!2075082))

(declare-fun e!4376067 () Bool)

(assert (=> start!712090 e!4376067))

(declare-fun b!7311233 () Bool)

(declare-fun tp_is_empty!47323 () Bool)

(declare-fun tp!2075081 () Bool)

(assert (=> b!7311233 (= e!4376067 (and tp_is_empty!47323 tp!2075081))))

(declare-fun b!7311234 () Bool)

(declare-fun res!2953548 () Bool)

(assert (=> b!7311234 (=> (not res!2953548) (not e!4376066))))

(get-info :version)

(assert (=> b!7311234 (= res!2953548 ((_ is Cons!71010) lRes!24))))

(assert (= (and start!712090 res!2953549) b!7311232))

(assert (= (and b!7311232 res!2953547) b!7311234))

(assert (= (and b!7311234 res!2953548) b!7311231))

(assert (= (and start!712090 condSetEmpty!53843) setIsEmpty!53843))

(assert (= (and start!712090 (not condSetEmpty!53843)) setNonEmpty!53843))

(assert (= (and start!712090 ((_ is Cons!71010) lRes!24)) b!7311233))

(declare-fun b_lambda!282083 () Bool)

(assert (=> (not b_lambda!282083) (not b!7311232)))

(declare-fun t!385251 () Bool)

(declare-fun tb!262155 () Bool)

(assert (=> (and start!712090 (= f!903 f!903) t!385251) tb!262155))

(assert (=> b!7311232 t!385251))

(declare-fun result!352706 () Bool)

(declare-fun b_and!351207 () Bool)

(assert (= b_and!351205 (and (=> t!385251 result!352706) b_and!351207)))

(declare-fun m!7975354 () Bool)

(assert (=> b!7311231 m!7975354))

(declare-fun m!7975356 () Bool)

(assert (=> b!7311232 m!7975356))

(declare-fun m!7975358 () Bool)

(assert (=> b!7311232 m!7975358))

(assert (=> b!7311232 m!7975358))

(declare-fun m!7975360 () Bool)

(assert (=> b!7311232 m!7975360))

(declare-fun m!7975362 () Bool)

(assert (=> start!712090 m!7975362))

(check-sat (not tb!262155) (not b_next!134707) (not setNonEmpty!53843) (not b!7311231) tp_is_empty!47323 (not b!7311233) tp_is_empty!47321 (not b!7311232) b_and!351207 (not b_lambda!282083))
(check-sat b_and!351207 (not b_next!134707))
