; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73594 () Bool)

(assert start!73594)

(declare-fun b!822294 () Bool)

(declare-fun e!543303 () Bool)

(declare-fun tp!256884 () Bool)

(declare-fun tp!256882 () Bool)

(assert (=> b!822294 (= e!543303 (and tp!256884 tp!256882))))

(declare-fun b!822295 () Bool)

(declare-fun tp!256881 () Bool)

(declare-fun tp!256880 () Bool)

(assert (=> b!822295 (= e!543303 (and tp!256881 tp!256880))))

(declare-fun b!822296 () Bool)

(declare-fun res!379411 () Bool)

(declare-fun e!543302 () Bool)

(assert (=> b!822296 (=> (not res!379411) (not e!543302))))

(declare-datatypes ((C!4632 0))(
  ( (C!4633 (val!2564 Int)) )
))
(declare-datatypes ((Regex!2031 0))(
  ( (ElementMatch!2031 (c!133308 C!4632)) (Concat!3762 (regOne!4574 Regex!2031) (regTwo!4574 Regex!2031)) (EmptyExpr!2031) (Star!2031 (reg!2360 Regex!2031)) (EmptyLang!2031) (Union!2031 (regOne!4575 Regex!2031) (regTwo!4575 Regex!2031)) )
))
(declare-fun r!27177 () Regex!2031)

(get-info :version)

(assert (=> b!822296 (= res!379411 (and (not ((_ is EmptyExpr!2031) r!27177)) (not ((_ is EmptyLang!2031) r!27177)) (not ((_ is ElementMatch!2031) r!27177)) ((_ is Star!2031) r!27177)))))

(declare-fun b!822297 () Bool)

(declare-fun res!379410 () Bool)

(assert (=> b!822297 (=> (not res!379410) (not e!543302))))

(declare-fun validRegex!584 (Regex!2031) Bool)

(assert (=> b!822297 (= res!379410 (validRegex!584 (reg!2360 r!27177)))))

(declare-fun b!822298 () Bool)

(assert (=> b!822298 (= e!543302 false)))

(declare-fun lt!317357 () Bool)

(declare-fun c!13916 () C!4632)

(declare-datatypes ((List!8857 0))(
  ( (Nil!8841) (Cons!8841 (h!14242 C!4632) (t!93149 List!8857)) )
))
(declare-fun contains!1622 (List!8857 C!4632) Bool)

(declare-fun firstChars!2 (Regex!2031) List!8857)

(assert (=> b!822298 (= lt!317357 (contains!1622 (firstChars!2 (reg!2360 r!27177)) c!13916))))

(declare-fun b!822299 () Bool)

(declare-fun res!379413 () Bool)

(assert (=> b!822299 (=> (not res!379413) (not e!543302))))

(assert (=> b!822299 (= res!379413 (contains!1622 (firstChars!2 r!27177) c!13916))))

(declare-fun res!379412 () Bool)

(assert (=> start!73594 (=> (not res!379412) (not e!543302))))

(assert (=> start!73594 (= res!379412 (validRegex!584 r!27177))))

(assert (=> start!73594 e!543302))

(assert (=> start!73594 e!543303))

(declare-fun tp_is_empty!3785 () Bool)

(assert (=> start!73594 tp_is_empty!3785))

(declare-fun b!822300 () Bool)

(declare-fun tp!256883 () Bool)

(assert (=> b!822300 (= e!543303 tp!256883)))

(declare-fun b!822301 () Bool)

(assert (=> b!822301 (= e!543303 tp_is_empty!3785)))

(assert (= (and start!73594 res!379412) b!822299))

(assert (= (and b!822299 res!379413) b!822296))

(assert (= (and b!822296 res!379411) b!822297))

(assert (= (and b!822297 res!379410) b!822298))

(assert (= (and start!73594 ((_ is ElementMatch!2031) r!27177)) b!822301))

(assert (= (and start!73594 ((_ is Concat!3762) r!27177)) b!822294))

(assert (= (and start!73594 ((_ is Star!2031) r!27177)) b!822300))

(assert (= (and start!73594 ((_ is Union!2031) r!27177)) b!822295))

(declare-fun m!1063541 () Bool)

(assert (=> b!822297 m!1063541))

(declare-fun m!1063543 () Bool)

(assert (=> b!822298 m!1063543))

(assert (=> b!822298 m!1063543))

(declare-fun m!1063545 () Bool)

(assert (=> b!822298 m!1063545))

(declare-fun m!1063547 () Bool)

(assert (=> b!822299 m!1063547))

(assert (=> b!822299 m!1063547))

(declare-fun m!1063549 () Bool)

(assert (=> b!822299 m!1063549))

(declare-fun m!1063551 () Bool)

(assert (=> start!73594 m!1063551))

(check-sat (not b!822294) (not b!822300) (not b!822295) (not start!73594) (not b!822297) tp_is_empty!3785 (not b!822299) (not b!822298))
(check-sat)
