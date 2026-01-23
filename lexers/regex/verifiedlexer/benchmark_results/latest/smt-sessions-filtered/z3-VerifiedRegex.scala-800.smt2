; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45212 () Bool)

(assert start!45212)

(declare-fun b_free!13185 () Bool)

(declare-fun b_next!13185 () Bool)

(assert (=> start!45212 (= b_free!13185 (not b_next!13185))))

(declare-fun tp!130819 () Bool)

(declare-fun b_and!50507 () Bool)

(assert (=> start!45212 (= tp!130819 b_and!50507)))

(declare-fun b_free!13187 () Bool)

(declare-fun b_next!13187 () Bool)

(assert (=> start!45212 (= b_free!13187 (not b_next!13187))))

(declare-fun tp!130820 () Bool)

(declare-fun b_and!50509 () Bool)

(assert (=> start!45212 (= tp!130820 b_and!50509)))

(declare-fun b!472183 () Bool)

(assert (=> b!472183 true))

(declare-fun order!4235 () Int)

(declare-fun lambda!14032 () Int)

(declare-fun order!4233 () Int)

(declare-fun f!1019 () Int)

(declare-fun dynLambda!2885 (Int Int) Int)

(declare-fun dynLambda!2886 (Int Int) Int)

(assert (=> b!472183 (< (dynLambda!2885 order!4233 f!1019) (dynLambda!2886 order!4235 lambda!14032))))

(assert (=> b!472183 true))

(declare-fun order!4237 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2887 (Int Int) Int)

(assert (=> b!472183 (< (dynLambda!2887 order!4237 p!1765) (dynLambda!2886 order!4235 lambda!14032))))

(declare-fun bs!58466 () Bool)

(declare-fun b!472180 () Bool)

(assert (= bs!58466 (and b!472180 b!472183)))

(declare-fun lambda!14033 () Int)

(assert (=> bs!58466 (not (= lambda!14033 lambda!14032))))

(assert (=> b!472180 true))

(assert (=> b!472180 true))

(assert (=> b!472180 (< (dynLambda!2885 order!4233 f!1019) (dynLambda!2886 order!4235 lambda!14033))))

(declare-fun setIsEmpty!1982 () Bool)

(declare-fun setRes!1982 () Bool)

(assert (=> setIsEmpty!1982 setRes!1982))

(declare-fun e!288811 () Bool)

(declare-fun e!288812 () Bool)

(assert (=> b!472180 (= e!288811 (not e!288812))))

(declare-fun res!209482 () Bool)

(assert (=> b!472180 (=> res!209482 e!288812)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!387 0))(
  ( (A!388 (val!1525 Int)) )
))
(declare-fun s!1493 () (InoxSet A!387))

(declare-fun exists!55 ((InoxSet A!387) Int) Bool)

(assert (=> b!472180 (= res!209482 (not (exists!55 s!1493 lambda!14033)))))

(declare-fun empty!2619 () A!387)

(declare-datatypes ((B!949 0))(
  ( (B!950 (val!1526 Int)) )
))
(declare-fun elm!3 () B!949)

(declare-fun flatMapPost!22 ((InoxSet A!387) Int B!949) A!387)

(assert (=> b!472180 (= (flatMapPost!22 s!1493 f!1019 elm!3) empty!2619)))

(assert (=> b!472180 true))

(declare-fun tp_is_empty!2153 () Bool)

(assert (=> b!472180 tp_is_empty!2153))

(declare-fun b!472181 () Bool)

(declare-fun e!288810 () Bool)

(assert (=> b!472181 (= e!288812 e!288810)))

(declare-fun res!209484 () Bool)

(assert (=> b!472181 (=> res!209484 e!288810)))

(declare-datatypes ((List!4562 0))(
  ( (Nil!4552) (Cons!4552 (h!9949 A!387) (t!73004 List!4562)) )
))
(declare-fun lt!210269 () List!4562)

(declare-fun exists!56 (List!4562 Int) Bool)

(assert (=> b!472181 (= res!209484 (not (exists!56 lt!210269 lambda!14033)))))

(declare-fun toList!333 ((InoxSet A!387)) List!4562)

(assert (=> b!472181 (= lt!210269 (toList!333 s!1493))))

(declare-fun res!209483 () Bool)

(assert (=> start!45212 (=> (not res!209483) (not e!288811))))

(declare-fun flatMap!98 ((InoxSet A!387) Int) (InoxSet B!949))

(assert (=> start!45212 (= res!209483 (select (flatMap!98 s!1493 f!1019) elm!3))))

(assert (=> start!45212 e!288811))

(declare-fun tp_is_empty!2155 () Bool)

(assert (=> start!45212 tp_is_empty!2155))

(declare-fun condSetEmpty!1982 () Bool)

(assert (=> start!45212 (= condSetEmpty!1982 (= s!1493 ((as const (Array A!387 Bool)) false)))))

(assert (=> start!45212 setRes!1982))

(assert (=> start!45212 tp!130819))

(assert (=> start!45212 tp!130820))

(declare-fun setNonEmpty!1982 () Bool)

(declare-fun tp!130821 () Bool)

(assert (=> setNonEmpty!1982 (= setRes!1982 (and tp!130821 tp_is_empty!2153))))

(declare-fun setElem!1982 () A!387)

(declare-fun setRest!1982 () (InoxSet A!387))

(assert (=> setNonEmpty!1982 (= s!1493 ((_ map or) (store ((as const (Array A!387 Bool)) false) setElem!1982 true) setRest!1982))))

(declare-fun b!472182 () Bool)

(assert (=> b!472182 (= e!288810 (exists!56 lt!210269 lambda!14033))))

(declare-fun res!209481 () Bool)

(assert (=> b!472183 (=> (not res!209481) (not e!288811))))

(declare-fun Forall!248 (Int) Bool)

(assert (=> b!472183 (= res!209481 (Forall!248 lambda!14032))))

(assert (= (and start!45212 res!209483) b!472183))

(assert (= (and b!472183 res!209481) b!472180))

(assert (= (and b!472180 (not res!209482)) b!472181))

(assert (= (and b!472181 (not res!209484)) b!472182))

(assert (= (and start!45212 condSetEmpty!1982) setIsEmpty!1982))

(assert (= (and start!45212 (not condSetEmpty!1982)) setNonEmpty!1982))

(declare-fun m!745537 () Bool)

(assert (=> b!472182 m!745537))

(declare-fun m!745539 () Bool)

(assert (=> b!472180 m!745539))

(declare-fun m!745541 () Bool)

(assert (=> b!472180 m!745541))

(declare-fun m!745543 () Bool)

(assert (=> b!472183 m!745543))

(assert (=> b!472181 m!745537))

(declare-fun m!745545 () Bool)

(assert (=> b!472181 m!745545))

(declare-fun m!745547 () Bool)

(assert (=> start!45212 m!745547))

(declare-fun m!745549 () Bool)

(assert (=> start!45212 m!745549))

(check-sat (not start!45212) (not b_next!13187) (not setNonEmpty!1982) tp_is_empty!2153 (not b!472182) b_and!50509 (not b!472180) (not b!472183) b_and!50507 (not b!472181) tp_is_empty!2155 (not b_next!13185))
(check-sat b_and!50507 b_and!50509 (not b_next!13185) (not b_next!13187))
