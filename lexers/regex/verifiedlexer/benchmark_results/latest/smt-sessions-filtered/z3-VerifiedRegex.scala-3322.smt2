; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189096 () Bool)

(assert start!189096)

(declare-fun res!843438 () Bool)

(declare-fun e!1205301 () Bool)

(assert (=> start!189096 (=> (not res!843438) (not e!1205301))))

(declare-datatypes ((B!1769 0))(
  ( (B!1770 (val!6170 Int)) )
))
(declare-datatypes ((List!21163 0))(
  ( (Nil!21081) (Cons!21081 (h!26482 B!1769) (t!175162 List!21163)) )
))
(declare-fun l1!1329 () List!21163)

(declare-fun l2!1298 () List!21163)

(declare-fun subseq!427 (List!21163 List!21163) Bool)

(assert (=> start!189096 (= res!843438 (subseq!427 l1!1329 l2!1298))))

(assert (=> start!189096 e!1205301))

(declare-fun e!1205303 () Bool)

(assert (=> start!189096 e!1205303))

(declare-fun e!1205304 () Bool)

(assert (=> start!189096 e!1205304))

(declare-fun e!1205302 () Bool)

(assert (=> start!189096 e!1205302))

(declare-fun b!1888637 () Bool)

(declare-fun res!843439 () Bool)

(assert (=> b!1888637 (=> (not res!843439) (not e!1205301))))

(assert (=> b!1888637 (= res!843439 (not (= (h!26482 l1!1329) (h!26482 l2!1298))))))

(declare-fun b!1888638 () Bool)

(declare-fun tp_is_empty!9025 () Bool)

(declare-fun tp!538428 () Bool)

(assert (=> b!1888638 (= e!1205304 (and tp_is_empty!9025 tp!538428))))

(declare-fun b!1888639 () Bool)

(declare-fun res!843436 () Bool)

(assert (=> b!1888639 (=> (not res!843436) (not e!1205301))))

(declare-fun l3!256 () List!21163)

(get-info :version)

(assert (=> b!1888639 (= res!843436 (and (or (not ((_ is Cons!21081) l1!1329)) (not ((_ is Cons!21081) l2!1298)) (not ((_ is Cons!21081) l3!256)) (= (h!26482 l2!1298) (h!26482 l3!256))) ((_ is Cons!21081) l1!1329) ((_ is Cons!21081) l2!1298) ((_ is Cons!21081) l3!256) (= (h!26482 l2!1298) (h!26482 l3!256))))))

(declare-fun b!1888640 () Bool)

(declare-fun tp!538427 () Bool)

(assert (=> b!1888640 (= e!1205302 (and tp_is_empty!9025 tp!538427))))

(declare-fun b!1888641 () Bool)

(assert (=> b!1888641 (= e!1205301 (not (subseq!427 l2!1298 (t!175162 l3!256))))))

(declare-fun b!1888642 () Bool)

(declare-fun tp!538426 () Bool)

(assert (=> b!1888642 (= e!1205303 (and tp_is_empty!9025 tp!538426))))

(declare-fun b!1888643 () Bool)

(declare-fun res!843437 () Bool)

(assert (=> b!1888643 (=> (not res!843437) (not e!1205301))))

(assert (=> b!1888643 (= res!843437 (subseq!427 l2!1298 l3!256))))

(declare-fun b!1888644 () Bool)

(declare-fun res!843440 () Bool)

(assert (=> b!1888644 (=> (not res!843440) (not e!1205301))))

(assert (=> b!1888644 (= res!843440 (not (subseq!427 (t!175162 l2!1298) (t!175162 l3!256))))))

(assert (= (and start!189096 res!843438) b!1888643))

(assert (= (and b!1888643 res!843437) b!1888639))

(assert (= (and b!1888639 res!843436) b!1888644))

(assert (= (and b!1888644 res!843440) b!1888637))

(assert (= (and b!1888637 res!843439) b!1888641))

(assert (= (and start!189096 ((_ is Cons!21081) l1!1329)) b!1888642))

(assert (= (and start!189096 ((_ is Cons!21081) l2!1298)) b!1888638))

(assert (= (and start!189096 ((_ is Cons!21081) l3!256)) b!1888640))

(declare-fun m!2319939 () Bool)

(assert (=> start!189096 m!2319939))

(declare-fun m!2319941 () Bool)

(assert (=> b!1888641 m!2319941))

(declare-fun m!2319943 () Bool)

(assert (=> b!1888643 m!2319943))

(declare-fun m!2319945 () Bool)

(assert (=> b!1888644 m!2319945))

(check-sat (not b!1888641) (not b!1888642) (not b!1888643) (not b!1888638) (not start!189096) (not b!1888640) tp_is_empty!9025 (not b!1888644))
(check-sat)
(get-model)

(declare-fun b!1888670 () Bool)

(declare-fun e!1205329 () Bool)

(declare-fun e!1205330 () Bool)

(assert (=> b!1888670 (= e!1205329 e!1205330)))

(declare-fun res!843467 () Bool)

(assert (=> b!1888670 (=> res!843467 e!1205330)))

(declare-fun e!1205332 () Bool)

(assert (=> b!1888670 (= res!843467 e!1205332)))

(declare-fun res!843465 () Bool)

(assert (=> b!1888670 (=> (not res!843465) (not e!1205332))))

(assert (=> b!1888670 (= res!843465 (= (h!26482 l2!1298) (h!26482 l3!256)))))

(declare-fun b!1888672 () Bool)

(assert (=> b!1888672 (= e!1205330 (subseq!427 l2!1298 (t!175162 l3!256)))))

(declare-fun b!1888669 () Bool)

(declare-fun e!1205331 () Bool)

(assert (=> b!1888669 (= e!1205331 e!1205329)))

(declare-fun res!843468 () Bool)

(assert (=> b!1888669 (=> (not res!843468) (not e!1205329))))

(assert (=> b!1888669 (= res!843468 ((_ is Cons!21081) l3!256))))

(declare-fun b!1888671 () Bool)

(assert (=> b!1888671 (= e!1205332 (subseq!427 (t!175162 l2!1298) (t!175162 l3!256)))))

(declare-fun d!578461 () Bool)

(declare-fun res!843466 () Bool)

(assert (=> d!578461 (=> res!843466 e!1205331)))

(assert (=> d!578461 (= res!843466 ((_ is Nil!21081) l2!1298))))

(assert (=> d!578461 (= (subseq!427 l2!1298 l3!256) e!1205331)))

(assert (= (and d!578461 (not res!843466)) b!1888669))

(assert (= (and b!1888669 res!843468) b!1888670))

(assert (= (and b!1888670 res!843465) b!1888671))

(assert (= (and b!1888670 (not res!843467)) b!1888672))

(assert (=> b!1888672 m!2319941))

(assert (=> b!1888671 m!2319945))

(assert (=> b!1888643 d!578461))

(declare-fun b!1888678 () Bool)

(declare-fun e!1205337 () Bool)

(declare-fun e!1205338 () Bool)

(assert (=> b!1888678 (= e!1205337 e!1205338)))

(declare-fun res!843475 () Bool)

(assert (=> b!1888678 (=> res!843475 e!1205338)))

(declare-fun e!1205340 () Bool)

(assert (=> b!1888678 (= res!843475 e!1205340)))

(declare-fun res!843473 () Bool)

(assert (=> b!1888678 (=> (not res!843473) (not e!1205340))))

(assert (=> b!1888678 (= res!843473 (= (h!26482 (t!175162 l2!1298)) (h!26482 (t!175162 l3!256))))))

(declare-fun b!1888680 () Bool)

(assert (=> b!1888680 (= e!1205338 (subseq!427 (t!175162 l2!1298) (t!175162 (t!175162 l3!256))))))

(declare-fun b!1888677 () Bool)

(declare-fun e!1205339 () Bool)

(assert (=> b!1888677 (= e!1205339 e!1205337)))

(declare-fun res!843476 () Bool)

(assert (=> b!1888677 (=> (not res!843476) (not e!1205337))))

(assert (=> b!1888677 (= res!843476 ((_ is Cons!21081) (t!175162 l3!256)))))

(declare-fun b!1888679 () Bool)

(assert (=> b!1888679 (= e!1205340 (subseq!427 (t!175162 (t!175162 l2!1298)) (t!175162 (t!175162 l3!256))))))

(declare-fun d!578467 () Bool)

(declare-fun res!843474 () Bool)

(assert (=> d!578467 (=> res!843474 e!1205339)))

(assert (=> d!578467 (= res!843474 ((_ is Nil!21081) (t!175162 l2!1298)))))

(assert (=> d!578467 (= (subseq!427 (t!175162 l2!1298) (t!175162 l3!256)) e!1205339)))

(assert (= (and d!578467 (not res!843474)) b!1888677))

(assert (= (and b!1888677 res!843476) b!1888678))

(assert (= (and b!1888678 res!843473) b!1888679))

(assert (= (and b!1888678 (not res!843475)) b!1888680))

(declare-fun m!2319953 () Bool)

(assert (=> b!1888680 m!2319953))

(declare-fun m!2319955 () Bool)

(assert (=> b!1888679 m!2319955))

(assert (=> b!1888644 d!578467))

(declare-fun b!1888686 () Bool)

(declare-fun e!1205345 () Bool)

(declare-fun e!1205346 () Bool)

(assert (=> b!1888686 (= e!1205345 e!1205346)))

(declare-fun res!843483 () Bool)

(assert (=> b!1888686 (=> res!843483 e!1205346)))

(declare-fun e!1205348 () Bool)

(assert (=> b!1888686 (= res!843483 e!1205348)))

(declare-fun res!843481 () Bool)

(assert (=> b!1888686 (=> (not res!843481) (not e!1205348))))

(assert (=> b!1888686 (= res!843481 (= (h!26482 l1!1329) (h!26482 l2!1298)))))

(declare-fun b!1888688 () Bool)

(assert (=> b!1888688 (= e!1205346 (subseq!427 l1!1329 (t!175162 l2!1298)))))

(declare-fun b!1888685 () Bool)

(declare-fun e!1205347 () Bool)

(assert (=> b!1888685 (= e!1205347 e!1205345)))

(declare-fun res!843484 () Bool)

(assert (=> b!1888685 (=> (not res!843484) (not e!1205345))))

(assert (=> b!1888685 (= res!843484 ((_ is Cons!21081) l2!1298))))

(declare-fun b!1888687 () Bool)

(assert (=> b!1888687 (= e!1205348 (subseq!427 (t!175162 l1!1329) (t!175162 l2!1298)))))

(declare-fun d!578471 () Bool)

(declare-fun res!843482 () Bool)

(assert (=> d!578471 (=> res!843482 e!1205347)))

(assert (=> d!578471 (= res!843482 ((_ is Nil!21081) l1!1329))))

(assert (=> d!578471 (= (subseq!427 l1!1329 l2!1298) e!1205347)))

(assert (= (and d!578471 (not res!843482)) b!1888685))

(assert (= (and b!1888685 res!843484) b!1888686))

(assert (= (and b!1888686 res!843481) b!1888687))

(assert (= (and b!1888686 (not res!843483)) b!1888688))

(declare-fun m!2319961 () Bool)

(assert (=> b!1888688 m!2319961))

(declare-fun m!2319963 () Bool)

(assert (=> b!1888687 m!2319963))

(assert (=> start!189096 d!578471))

(declare-fun b!1888694 () Bool)

(declare-fun e!1205351 () Bool)

(declare-fun e!1205352 () Bool)

(assert (=> b!1888694 (= e!1205351 e!1205352)))

(declare-fun res!843487 () Bool)

(assert (=> b!1888694 (=> res!843487 e!1205352)))

(declare-fun e!1205354 () Bool)

(assert (=> b!1888694 (= res!843487 e!1205354)))

(declare-fun res!843485 () Bool)

(assert (=> b!1888694 (=> (not res!843485) (not e!1205354))))

(assert (=> b!1888694 (= res!843485 (= (h!26482 l2!1298) (h!26482 (t!175162 l3!256))))))

(declare-fun b!1888696 () Bool)

(assert (=> b!1888696 (= e!1205352 (subseq!427 l2!1298 (t!175162 (t!175162 l3!256))))))

(declare-fun b!1888693 () Bool)

(declare-fun e!1205353 () Bool)

(assert (=> b!1888693 (= e!1205353 e!1205351)))

(declare-fun res!843488 () Bool)

(assert (=> b!1888693 (=> (not res!843488) (not e!1205351))))

(assert (=> b!1888693 (= res!843488 ((_ is Cons!21081) (t!175162 l3!256)))))

(declare-fun b!1888695 () Bool)

(assert (=> b!1888695 (= e!1205354 (subseq!427 (t!175162 l2!1298) (t!175162 (t!175162 l3!256))))))

(declare-fun d!578473 () Bool)

(declare-fun res!843486 () Bool)

(assert (=> d!578473 (=> res!843486 e!1205353)))

(assert (=> d!578473 (= res!843486 ((_ is Nil!21081) l2!1298))))

(assert (=> d!578473 (= (subseq!427 l2!1298 (t!175162 l3!256)) e!1205353)))

(assert (= (and d!578473 (not res!843486)) b!1888693))

(assert (= (and b!1888693 res!843488) b!1888694))

(assert (= (and b!1888694 res!843485) b!1888695))

(assert (= (and b!1888694 (not res!843487)) b!1888696))

(declare-fun m!2319965 () Bool)

(assert (=> b!1888696 m!2319965))

(assert (=> b!1888695 m!2319953))

(assert (=> b!1888641 d!578473))

(declare-fun b!1888704 () Bool)

(declare-fun e!1205360 () Bool)

(declare-fun tp!538436 () Bool)

(assert (=> b!1888704 (= e!1205360 (and tp_is_empty!9025 tp!538436))))

(assert (=> b!1888638 (= tp!538428 e!1205360)))

(assert (= (and b!1888638 ((_ is Cons!21081) (t!175162 l2!1298))) b!1888704))

(declare-fun b!1888705 () Bool)

(declare-fun e!1205361 () Bool)

(declare-fun tp!538437 () Bool)

(assert (=> b!1888705 (= e!1205361 (and tp_is_empty!9025 tp!538437))))

(assert (=> b!1888642 (= tp!538426 e!1205361)))

(assert (= (and b!1888642 ((_ is Cons!21081) (t!175162 l1!1329))) b!1888705))

(declare-fun b!1888706 () Bool)

(declare-fun e!1205362 () Bool)

(declare-fun tp!538438 () Bool)

(assert (=> b!1888706 (= e!1205362 (and tp_is_empty!9025 tp!538438))))

(assert (=> b!1888640 (= tp!538427 e!1205362)))

(assert (= (and b!1888640 ((_ is Cons!21081) (t!175162 l3!256))) b!1888706))

(check-sat (not b!1888695) (not b!1888704) (not b!1888706) (not b!1888671) (not b!1888696) (not b!1888680) (not b!1888688) (not b!1888705) (not b!1888687) (not b!1888679) (not b!1888672) tp_is_empty!9025)
(check-sat)
