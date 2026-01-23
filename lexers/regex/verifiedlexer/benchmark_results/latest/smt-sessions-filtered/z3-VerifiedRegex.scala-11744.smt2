; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663628 () Bool)

(assert start!663628)

(declare-fun b!6877002 () Bool)

(declare-fun e!4144730 () Bool)

(declare-fun lt!2459210 () Bool)

(assert (=> b!6877002 (= e!4144730 (not lt!2459210))))

(declare-fun b!6877003 () Bool)

(declare-fun res!2803966 () Bool)

(declare-fun e!4144734 () Bool)

(assert (=> b!6877003 (=> (not res!2803966) (not e!4144734))))

(declare-datatypes ((C!33740 0))(
  ( (C!33741 (val!26572 Int)) )
))
(declare-datatypes ((Regex!16735 0))(
  ( (ElementMatch!16735 (c!1279541 C!33740)) (Concat!25580 (regOne!33982 Regex!16735) (regTwo!33982 Regex!16735)) (EmptyExpr!16735) (Star!16735 (reg!17064 Regex!16735)) (EmptyLang!16735) (Union!16735 (regOne!33983 Regex!16735) (regTwo!33983 Regex!16735)) )
))
(declare-datatypes ((List!66481 0))(
  ( (Nil!66357) (Cons!66357 (h!72805 Regex!16735) (t!380224 List!66481)) )
))
(declare-datatypes ((Context!12238 0))(
  ( (Context!12239 (exprs!6619 List!66481)) )
))
(declare-datatypes ((List!66482 0))(
  ( (Nil!66358) (Cons!66358 (h!72806 Context!12238) (t!380225 List!66482)) )
))
(declare-fun zl!1632 () List!66482)

(get-info :version)

(assert (=> b!6877003 (= res!2803966 ((_ is Cons!66358) zl!1632))))

(declare-fun b!6877004 () Bool)

(declare-fun e!4144733 () Bool)

(declare-fun tp!1890015 () Bool)

(assert (=> b!6877004 (= e!4144733 tp!1890015)))

(declare-fun b!6877005 () Bool)

(assert (=> b!6877005 (= e!4144734 e!4144730)))

(declare-fun res!2803968 () Bool)

(assert (=> b!6877005 (=> (not res!2803968) (not e!4144730))))

(assert (=> b!6877005 (= res!2803968 lt!2459210)))

(declare-fun c!9978 () Context!12238)

(declare-fun contains!20391 (List!66482 Context!12238) Bool)

(assert (=> b!6877005 (= lt!2459210 (contains!20391 (t!380225 zl!1632) c!9978))))

(declare-fun res!2803969 () Bool)

(assert (=> start!663628 (=> (not res!2803969) (not e!4144734))))

(assert (=> start!663628 (= res!2803969 (contains!20391 zl!1632 c!9978))))

(assert (=> start!663628 e!4144734))

(declare-fun e!4144732 () Bool)

(assert (=> start!663628 e!4144732))

(declare-fun inv!85084 (Context!12238) Bool)

(assert (=> start!663628 (and (inv!85084 c!9978) e!4144733)))

(declare-fun b!6877006 () Bool)

(declare-fun res!2803967 () Bool)

(assert (=> b!6877006 (=> (not res!2803967) (not e!4144734))))

(declare-fun size!40725 (List!66482) Int)

(assert (=> b!6877006 (= res!2803967 (> (size!40725 zl!1632) 1))))

(declare-fun b!6877007 () Bool)

(declare-fun e!4144731 () Bool)

(declare-fun tp!1890016 () Bool)

(assert (=> b!6877007 (= e!4144731 tp!1890016)))

(declare-fun b!6877008 () Bool)

(declare-fun res!2803970 () Bool)

(assert (=> b!6877008 (=> (not res!2803970) (not e!4144730))))

(assert (=> b!6877008 (= res!2803970 (> (size!40725 (t!380225 zl!1632)) 1))))

(declare-fun tp!1890017 () Bool)

(declare-fun b!6877009 () Bool)

(assert (=> b!6877009 (= e!4144732 (and (inv!85084 (h!72806 zl!1632)) e!4144731 tp!1890017))))

(assert (= (and start!663628 res!2803969) b!6877006))

(assert (= (and b!6877006 res!2803967) b!6877003))

(assert (= (and b!6877003 res!2803966) b!6877005))

(assert (= (and b!6877005 res!2803968) b!6877008))

(assert (= (and b!6877008 res!2803970) b!6877002))

(assert (= b!6877009 b!6877007))

(assert (= (and start!663628 ((_ is Cons!66358) zl!1632)) b!6877009))

(assert (= start!663628 b!6877004))

(declare-fun m!7604700 () Bool)

(assert (=> b!6877005 m!7604700))

(declare-fun m!7604702 () Bool)

(assert (=> b!6877008 m!7604702))

(declare-fun m!7604704 () Bool)

(assert (=> b!6877009 m!7604704))

(declare-fun m!7604706 () Bool)

(assert (=> start!663628 m!7604706))

(declare-fun m!7604708 () Bool)

(assert (=> start!663628 m!7604708))

(declare-fun m!7604710 () Bool)

(assert (=> b!6877006 m!7604710))

(check-sat (not b!6877009) (not start!663628) (not b!6877004) (not b!6877006) (not b!6877008) (not b!6877007) (not b!6877005))
(check-sat)
