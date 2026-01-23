; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713978 () Bool)

(assert start!713978)

(declare-fun b_free!134133 () Bool)

(declare-fun b_next!134923 () Bool)

(assert (=> start!713978 (= b_free!134133 (not b_next!134923))))

(declare-fun tp!2078849 () Bool)

(declare-fun b_and!351541 () Bool)

(assert (=> start!713978 (= tp!2078849 b_and!351541)))

(declare-fun b!7319960 () Bool)

(assert (=> b!7319960 true))

(assert (=> b!7319960 true))

(declare-fun lambda!452962 () Int)

(declare-fun order!29153 () Int)

(declare-fun order!29155 () Int)

(declare-fun f!643 () Int)

(declare-fun dynLambda!29188 (Int Int) Int)

(declare-fun dynLambda!29189 (Int Int) Int)

(assert (=> b!7319960 (< (dynLambda!29188 order!29153 f!643) (dynLambda!29189 order!29155 lambda!452962))))

(declare-fun b!7319961 () Bool)

(declare-fun e!4382636 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!979 0))(
  ( (A!980 (val!29299 Int)) )
))
(declare-fun s1!434 () (InoxSet A!979))

(declare-fun exists!4619 ((InoxSet A!979) Int) Bool)

(assert (=> b!7319961 (= e!4382636 (exists!4619 s1!434 lambda!452962))))

(declare-fun setNonEmpty!55272 () Bool)

(declare-fun setRes!55272 () Bool)

(declare-fun tp!2078850 () Bool)

(declare-fun tp_is_empty!47849 () Bool)

(assert (=> setNonEmpty!55272 (= setRes!55272 (and tp!2078850 tp_is_empty!47849))))

(declare-fun setElem!55272 () A!979)

(declare-fun setRest!55272 () (InoxSet A!979))

(assert (=> setNonEmpty!55272 (= s1!434 ((_ map or) (store ((as const (Array A!979 Bool)) false) setElem!55272 true) setRest!55272))))

(declare-fun res!2958261 () Bool)

(declare-fun e!4382635 () Bool)

(assert (=> start!713978 (=> (not res!2958261) (not e!4382635))))

(declare-datatypes ((B!3681 0))(
  ( (B!3682 (val!29300 Int)) )
))
(declare-fun b!25336 () B!3681)

(declare-fun flatMap!3109 ((InoxSet A!979) Int) (InoxSet B!3681))

(assert (=> start!713978 (= res!2958261 (select (flatMap!3109 s1!434 f!643) b!25336))))

(assert (=> start!713978 e!4382635))

(declare-fun tp_is_empty!47851 () Bool)

(assert (=> start!713978 tp_is_empty!47851))

(declare-fun condSetEmpty!55272 () Bool)

(assert (=> start!713978 (= condSetEmpty!55272 (= s1!434 ((as const (Array A!979 Bool)) false)))))

(assert (=> start!713978 setRes!55272))

(assert (=> start!713978 tp!2078849))

(declare-fun setIsEmpty!55272 () Bool)

(assert (=> setIsEmpty!55272 setRes!55272))

(assert (=> b!7319960 (= e!4382635 (not e!4382636))))

(declare-fun res!2958260 () Bool)

(assert (=> b!7319960 (=> res!2958260 e!4382636)))

(assert (=> b!7319960 (= res!2958260 (not (exists!4619 s1!434 lambda!452962)))))

(declare-fun empty!3167 () A!979)

(declare-fun flatMapPost!112 ((InoxSet A!979) Int B!3681) A!979)

(assert (=> b!7319960 (= (flatMapPost!112 s1!434 f!643 b!25336) empty!3167)))

(assert (=> b!7319960 true))

(assert (=> b!7319960 tp_is_empty!47849))

(assert (= (and start!713978 res!2958261) b!7319960))

(assert (= (and b!7319960 (not res!2958260)) b!7319961))

(assert (= (and start!713978 condSetEmpty!55272) setIsEmpty!55272))

(assert (= (and start!713978 (not condSetEmpty!55272)) setNonEmpty!55272))

(declare-fun m!7984842 () Bool)

(assert (=> b!7319961 m!7984842))

(declare-fun m!7984844 () Bool)

(assert (=> start!713978 m!7984844))

(declare-fun m!7984846 () Bool)

(assert (=> start!713978 m!7984846))

(assert (=> b!7319960 m!7984842))

(declare-fun m!7984848 () Bool)

(assert (=> b!7319960 m!7984848))

(check-sat (not setNonEmpty!55272) (not start!713978) tp_is_empty!47851 (not b!7319961) (not b!7319960) (not b_next!134923) b_and!351541 tp_is_empty!47849)
(check-sat b_and!351541 (not b_next!134923))
