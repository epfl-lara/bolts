; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733772 () Bool)

(assert start!733772)

(declare-fun b!7617010 () Bool)

(assert (=> b!7617010 true))

(assert (=> b!7617010 true))

(declare-fun b!7617002 () Bool)

(declare-fun e!4529545 () Bool)

(declare-fun tp_is_empty!50921 () Bool)

(declare-fun tp!2224268 () Bool)

(assert (=> b!7617002 (= e!4529545 (and tp_is_empty!50921 tp!2224268))))

(declare-fun b!7617003 () Bool)

(declare-fun res!3049269 () Bool)

(declare-fun e!4529543 () Bool)

(assert (=> b!7617003 (=> res!3049269 e!4529543)))

(declare-datatypes ((C!40892 0))(
  ( (C!40893 (val!30886 Int)) )
))
(declare-datatypes ((Regex!20283 0))(
  ( (ElementMatch!20283 (c!1403948 C!40892)) (Concat!29128 (regOne!41078 Regex!20283) (regTwo!41078 Regex!20283)) (EmptyExpr!20283) (Star!20283 (reg!20612 Regex!20283)) (EmptyLang!20283) (Union!20283 (regOne!41079 Regex!20283) (regTwo!41079 Regex!20283)) )
))
(declare-fun r!14126 () Regex!20283)

(declare-fun validRegex!10703 (Regex!20283) Bool)

(assert (=> b!7617003 (= res!3049269 (not (validRegex!10703 (reg!20612 r!14126))))))

(declare-fun b!7617004 () Bool)

(declare-fun e!4529546 () Bool)

(declare-fun tp!2224270 () Bool)

(declare-fun tp!2224269 () Bool)

(assert (=> b!7617004 (= e!4529546 (and tp!2224270 tp!2224269))))

(declare-fun b!7617005 () Bool)

(assert (=> b!7617005 (= e!4529546 tp_is_empty!50921)))

(declare-fun b!7617006 () Bool)

(declare-fun tp!2224271 () Bool)

(assert (=> b!7617006 (= e!4529546 tp!2224271)))

(declare-fun b!7617007 () Bool)

(declare-fun res!3049270 () Bool)

(declare-fun e!4529544 () Bool)

(assert (=> b!7617007 (=> (not res!3049270) (not e!4529544))))

(declare-datatypes ((List!73136 0))(
  ( (Nil!73012) (Cons!73012 (h!79460 C!40892) (t!387871 List!73136)) )
))
(declare-fun s!9605 () List!73136)

(declare-fun isEmpty!41623 (List!73136) Bool)

(assert (=> b!7617007 (= res!3049270 (not (isEmpty!41623 s!9605)))))

(declare-fun b!7617008 () Bool)

(declare-fun res!3049266 () Bool)

(assert (=> b!7617008 (=> res!3049266 e!4529543)))

(assert (=> b!7617008 (= res!3049266 (not (validRegex!10703 r!14126)))))

(declare-fun res!3049268 () Bool)

(assert (=> start!733772 (=> (not res!3049268) (not e!4529544))))

(assert (=> start!733772 (= res!3049268 (validRegex!10703 r!14126))))

(assert (=> start!733772 e!4529544))

(assert (=> start!733772 e!4529546))

(assert (=> start!733772 e!4529545))

(declare-fun b!7617009 () Bool)

(assert (=> b!7617009 (= e!4529543 true)))

(declare-fun lt!2655605 () List!73136)

(declare-datatypes ((tuple2!69128 0))(
  ( (tuple2!69129 (_1!37867 List!73136) (_2!37867 List!73136)) )
))
(declare-fun lt!2655608 () tuple2!69128)

(declare-fun ++!17593 (List!73136 List!73136) List!73136)

(assert (=> b!7617009 (= lt!2655605 (++!17593 (_1!37867 lt!2655608) (_2!37867 lt!2655608)))))

(declare-fun e!4529547 () Bool)

(assert (=> b!7617010 (= e!4529544 (not e!4529547))))

(declare-fun res!3049267 () Bool)

(assert (=> b!7617010 (=> res!3049267 e!4529547)))

(declare-fun lt!2655607 () Bool)

(assert (=> b!7617010 (= res!3049267 (not lt!2655607))))

(declare-fun lambda!468183 () Int)

(declare-fun Exists!4439 (Int) Bool)

(assert (=> b!7617010 (= lt!2655607 (Exists!4439 lambda!468183))))

(declare-datatypes ((Option!17358 0))(
  ( (None!17357) (Some!17357 (v!54492 tuple2!69128)) )
))
(declare-fun lt!2655604 () Option!17358)

(declare-fun isDefined!13974 (Option!17358) Bool)

(assert (=> b!7617010 (= lt!2655607 (isDefined!13974 lt!2655604))))

(declare-fun findConcatSeparation!3388 (Regex!20283 Regex!20283 List!73136 List!73136 List!73136) Option!17358)

(assert (=> b!7617010 (= lt!2655604 (findConcatSeparation!3388 (reg!20612 r!14126) r!14126 Nil!73012 s!9605 s!9605))))

(declare-datatypes ((Unit!167398 0))(
  ( (Unit!167399) )
))
(declare-fun lt!2655602 () Unit!167398)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3146 (Regex!20283 Regex!20283 List!73136) Unit!167398)

(assert (=> b!7617010 (= lt!2655602 (lemmaFindConcatSeparationEquivalentToExists!3146 (reg!20612 r!14126) r!14126 s!9605))))

(declare-fun b!7617011 () Bool)

(assert (=> b!7617011 (= e!4529547 e!4529543)))

(declare-fun res!3049265 () Bool)

(assert (=> b!7617011 (=> res!3049265 e!4529543)))

(declare-fun matchR!9790 (Regex!20283 List!73136) Bool)

(assert (=> b!7617011 (= res!3049265 (matchR!9790 r!14126 s!9605))))

(declare-fun matchRSpec!4482 (Regex!20283 List!73136) Bool)

(assert (=> b!7617011 (= (matchR!9790 r!14126 (_2!37867 lt!2655608)) (matchRSpec!4482 r!14126 (_2!37867 lt!2655608)))))

(declare-fun lt!2655606 () Unit!167398)

(declare-fun mainMatchTheorem!4476 (Regex!20283 List!73136) Unit!167398)

(assert (=> b!7617011 (= lt!2655606 (mainMatchTheorem!4476 r!14126 (_2!37867 lt!2655608)))))

(assert (=> b!7617011 (= (matchR!9790 (reg!20612 r!14126) (_1!37867 lt!2655608)) (matchRSpec!4482 (reg!20612 r!14126) (_1!37867 lt!2655608)))))

(declare-fun lt!2655603 () Unit!167398)

(assert (=> b!7617011 (= lt!2655603 (mainMatchTheorem!4476 (reg!20612 r!14126) (_1!37867 lt!2655608)))))

(declare-fun get!25736 (Option!17358) tuple2!69128)

(assert (=> b!7617011 (= lt!2655608 (get!25736 lt!2655604))))

(declare-fun b!7617012 () Bool)

(declare-fun res!3049264 () Bool)

(assert (=> b!7617012 (=> (not res!3049264) (not e!4529544))))

(get-info :version)

(assert (=> b!7617012 (= res!3049264 (and (not ((_ is EmptyExpr!20283) r!14126)) (not ((_ is EmptyLang!20283) r!14126)) (not ((_ is ElementMatch!20283) r!14126)) (not ((_ is Union!20283) r!14126)) ((_ is Star!20283) r!14126)))))

(declare-fun b!7617013 () Bool)

(declare-fun tp!2224267 () Bool)

(declare-fun tp!2224266 () Bool)

(assert (=> b!7617013 (= e!4529546 (and tp!2224267 tp!2224266))))

(assert (= (and start!733772 res!3049268) b!7617012))

(assert (= (and b!7617012 res!3049264) b!7617007))

(assert (= (and b!7617007 res!3049270) b!7617010))

(assert (= (and b!7617010 (not res!3049267)) b!7617011))

(assert (= (and b!7617011 (not res!3049265)) b!7617003))

(assert (= (and b!7617003 (not res!3049269)) b!7617008))

(assert (= (and b!7617008 (not res!3049266)) b!7617009))

(assert (= (and start!733772 ((_ is ElementMatch!20283) r!14126)) b!7617005))

(assert (= (and start!733772 ((_ is Concat!29128) r!14126)) b!7617004))

(assert (= (and start!733772 ((_ is Star!20283) r!14126)) b!7617006))

(assert (= (and start!733772 ((_ is Union!20283) r!14126)) b!7617013))

(assert (= (and start!733772 ((_ is Cons!73012) s!9605)) b!7617002))

(declare-fun m!8150134 () Bool)

(assert (=> b!7617010 m!8150134))

(declare-fun m!8150136 () Bool)

(assert (=> b!7617010 m!8150136))

(declare-fun m!8150138 () Bool)

(assert (=> b!7617010 m!8150138))

(declare-fun m!8150140 () Bool)

(assert (=> b!7617010 m!8150140))

(declare-fun m!8150142 () Bool)

(assert (=> b!7617008 m!8150142))

(assert (=> start!733772 m!8150142))

(declare-fun m!8150144 () Bool)

(assert (=> b!7617003 m!8150144))

(declare-fun m!8150146 () Bool)

(assert (=> b!7617011 m!8150146))

(declare-fun m!8150148 () Bool)

(assert (=> b!7617011 m!8150148))

(declare-fun m!8150150 () Bool)

(assert (=> b!7617011 m!8150150))

(declare-fun m!8150152 () Bool)

(assert (=> b!7617011 m!8150152))

(declare-fun m!8150154 () Bool)

(assert (=> b!7617011 m!8150154))

(declare-fun m!8150156 () Bool)

(assert (=> b!7617011 m!8150156))

(declare-fun m!8150158 () Bool)

(assert (=> b!7617011 m!8150158))

(declare-fun m!8150160 () Bool)

(assert (=> b!7617011 m!8150160))

(declare-fun m!8150162 () Bool)

(assert (=> b!7617007 m!8150162))

(declare-fun m!8150164 () Bool)

(assert (=> b!7617009 m!8150164))

(check-sat (not b!7617006) (not b!7617009) (not b!7617010) tp_is_empty!50921 (not b!7617003) (not b!7617004) (not b!7617007) (not b!7617002) (not b!7617011) (not b!7617008) (not b!7617013) (not start!733772))
(check-sat)
