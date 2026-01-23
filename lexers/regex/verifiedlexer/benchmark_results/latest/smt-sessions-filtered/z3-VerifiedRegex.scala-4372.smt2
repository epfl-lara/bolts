; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!232456 () Bool)

(assert start!232456)

(declare-fun b!2368596 () Bool)

(assert (=> b!2368596 true))

(assert (=> b!2368596 true))

(declare-fun lambda!87549 () Int)

(declare-fun lambda!87548 () Int)

(assert (=> b!2368596 (not (= lambda!87549 lambda!87548))))

(assert (=> b!2368596 true))

(assert (=> b!2368596 true))

(declare-fun b!2368585 () Bool)

(declare-fun e!1512010 () Bool)

(declare-fun e!1512005 () Bool)

(assert (=> b!2368585 (= e!1512010 e!1512005)))

(declare-fun res!1005257 () Bool)

(assert (=> b!2368585 (=> res!1005257 e!1512005)))

(declare-datatypes ((C!14032 0))(
  ( (C!14033 (val!8258 Int)) )
))
(declare-datatypes ((Regex!6937 0))(
  ( (ElementMatch!6937 (c!376469 C!14032)) (Concat!11573 (regOne!14386 Regex!6937) (regTwo!14386 Regex!6937)) (EmptyExpr!6937) (Star!6937 (reg!7266 Regex!6937)) (EmptyLang!6937) (Union!6937 (regOne!14387 Regex!6937) (regTwo!14387 Regex!6937)) )
))
(declare-fun lt!865579 () Regex!6937)

(declare-datatypes ((List!28112 0))(
  ( (Nil!28014) (Cons!28014 (h!33415 C!14032) (t!208089 List!28112)) )
))
(declare-fun s!9460 () List!28112)

(declare-fun matchR!3054 (Regex!6937 List!28112) Bool)

(assert (=> b!2368585 (= res!1005257 (not (matchR!3054 lt!865579 s!9460)))))

(declare-datatypes ((List!28113 0))(
  ( (Nil!28015) (Cons!28015 (h!33416 Regex!6937) (t!208090 List!28113)) )
))
(declare-fun l!9164 () List!28113)

(declare-fun head!5116 (List!28113) Regex!6937)

(assert (=> b!2368585 (= lt!865579 (head!5116 l!9164))))

(declare-fun res!1005264 () Bool)

(declare-fun e!1512006 () Bool)

(assert (=> start!232456 (=> (not res!1005264) (not e!1512006))))

(declare-fun lambda!87547 () Int)

(declare-fun forall!5571 (List!28113 Int) Bool)

(assert (=> start!232456 (= res!1005264 (forall!5571 l!9164 lambda!87547))))

(assert (=> start!232456 e!1512006))

(declare-fun e!1512008 () Bool)

(assert (=> start!232456 e!1512008))

(declare-fun e!1512009 () Bool)

(assert (=> start!232456 e!1512009))

(declare-fun e!1512007 () Bool)

(assert (=> start!232456 e!1512007))

(declare-fun b!2368586 () Bool)

(assert (=> b!2368586 (= e!1512005 true)))

(declare-fun lt!865580 () Bool)

(assert (=> b!2368586 (= lt!865580 (matchR!3054 EmptyExpr!6937 Nil!28014))))

(declare-fun b!2368587 () Bool)

(declare-fun tp!757327 () Bool)

(declare-fun tp!757326 () Bool)

(assert (=> b!2368587 (= e!1512009 (and tp!757327 tp!757326))))

(declare-fun b!2368588 () Bool)

(declare-fun tp_is_empty!11287 () Bool)

(assert (=> b!2368588 (= e!1512009 tp_is_empty!11287)))

(declare-fun b!2368589 () Bool)

(declare-fun res!1005261 () Bool)

(assert (=> b!2368589 (=> res!1005261 e!1512010)))

(declare-fun lt!865586 () List!28113)

(declare-fun generalisedConcat!38 (List!28113) Regex!6937)

(assert (=> b!2368589 (= res!1005261 (not (= (generalisedConcat!38 lt!865586) EmptyExpr!6937)))))

(declare-fun b!2368590 () Bool)

(declare-fun res!1005265 () Bool)

(assert (=> b!2368590 (=> res!1005265 e!1512005)))

(assert (=> b!2368590 (= res!1005265 false)))

(declare-fun b!2368591 () Bool)

(declare-fun e!1512003 () Bool)

(assert (=> b!2368591 (= e!1512006 (not e!1512003))))

(declare-fun res!1005266 () Bool)

(assert (=> b!2368591 (=> res!1005266 e!1512003)))

(declare-fun r!13927 () Regex!6937)

(get-info :version)

(assert (=> b!2368591 (= res!1005266 (not ((_ is Concat!11573) r!13927)))))

(declare-fun lt!865585 () Bool)

(declare-fun lt!865584 () Bool)

(assert (=> b!2368591 (= lt!865585 lt!865584)))

(declare-fun matchRSpec!786 (Regex!6937 List!28112) Bool)

(assert (=> b!2368591 (= lt!865584 (matchRSpec!786 r!13927 s!9460))))

(assert (=> b!2368591 (= lt!865585 (matchR!3054 r!13927 s!9460))))

(declare-datatypes ((Unit!40909 0))(
  ( (Unit!40910) )
))
(declare-fun lt!865581 () Unit!40909)

(declare-fun mainMatchTheorem!786 (Regex!6937 List!28112) Unit!40909)

(assert (=> b!2368591 (= lt!865581 (mainMatchTheorem!786 r!13927 s!9460))))

(declare-fun b!2368592 () Bool)

(declare-fun tp!757328 () Bool)

(declare-fun tp!757325 () Bool)

(assert (=> b!2368592 (= e!1512008 (and tp!757328 tp!757325))))

(declare-fun b!2368593 () Bool)

(declare-fun res!1005258 () Bool)

(declare-fun e!1512004 () Bool)

(assert (=> b!2368593 (=> res!1005258 e!1512004)))

(declare-fun isEmpty!15940 (List!28113) Bool)

(assert (=> b!2368593 (= res!1005258 (isEmpty!15940 l!9164))))

(declare-fun b!2368594 () Bool)

(declare-fun tp!757324 () Bool)

(assert (=> b!2368594 (= e!1512007 (and tp_is_empty!11287 tp!757324))))

(declare-fun b!2368595 () Bool)

(declare-fun res!1005259 () Bool)

(assert (=> b!2368595 (=> (not res!1005259) (not e!1512006))))

(assert (=> b!2368595 (= res!1005259 (= r!13927 (generalisedConcat!38 l!9164)))))

(assert (=> b!2368596 (= e!1512003 e!1512004)))

(declare-fun res!1005260 () Bool)

(assert (=> b!2368596 (=> res!1005260 e!1512004)))

(declare-fun lt!865583 () Bool)

(assert (=> b!2368596 (= res!1005260 (not (= lt!865584 lt!865583)))))

(declare-fun Exists!999 (Int) Bool)

(assert (=> b!2368596 (= (Exists!999 lambda!87548) (Exists!999 lambda!87549))))

(declare-fun lt!865578 () Unit!40909)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!338 (Regex!6937 Regex!6937 List!28112) Unit!40909)

(assert (=> b!2368596 (= lt!865578 (lemmaExistCutMatchRandMatchRSpecEquivalent!338 (regOne!14386 r!13927) (regTwo!14386 r!13927) s!9460))))

(assert (=> b!2368596 (= lt!865583 (Exists!999 lambda!87548))))

(declare-datatypes ((tuple2!27738 0))(
  ( (tuple2!27739 (_1!16410 List!28112) (_2!16410 List!28112)) )
))
(declare-datatypes ((Option!5480 0))(
  ( (None!5479) (Some!5479 (v!30887 tuple2!27738)) )
))
(declare-fun isDefined!4308 (Option!5480) Bool)

(declare-fun findConcatSeparation!588 (Regex!6937 Regex!6937 List!28112 List!28112 List!28112) Option!5480)

(assert (=> b!2368596 (= lt!865583 (isDefined!4308 (findConcatSeparation!588 (regOne!14386 r!13927) (regTwo!14386 r!13927) Nil!28014 s!9460 s!9460)))))

(declare-fun lt!865582 () Unit!40909)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!588 (Regex!6937 Regex!6937 List!28112) Unit!40909)

(assert (=> b!2368596 (= lt!865582 (lemmaFindConcatSeparationEquivalentToExists!588 (regOne!14386 r!13927) (regTwo!14386 r!13927) s!9460))))

(declare-fun b!2368597 () Bool)

(declare-fun tp!757322 () Bool)

(declare-fun tp!757329 () Bool)

(assert (=> b!2368597 (= e!1512009 (and tp!757322 tp!757329))))

(declare-fun b!2368598 () Bool)

(declare-fun tp!757323 () Bool)

(assert (=> b!2368598 (= e!1512009 tp!757323)))

(declare-fun b!2368599 () Bool)

(declare-fun res!1005262 () Bool)

(assert (=> b!2368599 (=> res!1005262 e!1512005)))

(declare-fun validRegex!2666 (Regex!6937) Bool)

(assert (=> b!2368599 (= res!1005262 (not (validRegex!2666 lt!865579)))))

(declare-fun b!2368600 () Bool)

(assert (=> b!2368600 (= e!1512004 e!1512010)))

(declare-fun res!1005263 () Bool)

(assert (=> b!2368600 (=> res!1005263 e!1512010)))

(assert (=> b!2368600 (= res!1005263 (not (isEmpty!15940 lt!865586)))))

(declare-fun tail!3386 (List!28113) List!28113)

(assert (=> b!2368600 (= lt!865586 (tail!3386 l!9164))))

(assert (= (and start!232456 res!1005264) b!2368595))

(assert (= (and b!2368595 res!1005259) b!2368591))

(assert (= (and b!2368591 (not res!1005266)) b!2368596))

(assert (= (and b!2368596 (not res!1005260)) b!2368593))

(assert (= (and b!2368593 (not res!1005258)) b!2368600))

(assert (= (and b!2368600 (not res!1005263)) b!2368589))

(assert (= (and b!2368589 (not res!1005261)) b!2368585))

(assert (= (and b!2368585 (not res!1005257)) b!2368599))

(assert (= (and b!2368599 (not res!1005262)) b!2368590))

(assert (= (and b!2368590 (not res!1005265)) b!2368586))

(assert (= (and start!232456 ((_ is Cons!28015) l!9164)) b!2368592))

(assert (= (and start!232456 ((_ is ElementMatch!6937) r!13927)) b!2368588))

(assert (= (and start!232456 ((_ is Concat!11573) r!13927)) b!2368597))

(assert (= (and start!232456 ((_ is Star!6937) r!13927)) b!2368598))

(assert (= (and start!232456 ((_ is Union!6937) r!13927)) b!2368587))

(assert (= (and start!232456 ((_ is Cons!28014) s!9460)) b!2368594))

(declare-fun m!2777353 () Bool)

(assert (=> start!232456 m!2777353))

(declare-fun m!2777355 () Bool)

(assert (=> b!2368595 m!2777355))

(declare-fun m!2777357 () Bool)

(assert (=> b!2368593 m!2777357))

(declare-fun m!2777359 () Bool)

(assert (=> b!2368589 m!2777359))

(declare-fun m!2777361 () Bool)

(assert (=> b!2368591 m!2777361))

(declare-fun m!2777363 () Bool)

(assert (=> b!2368591 m!2777363))

(declare-fun m!2777365 () Bool)

(assert (=> b!2368591 m!2777365))

(declare-fun m!2777367 () Bool)

(assert (=> b!2368600 m!2777367))

(declare-fun m!2777369 () Bool)

(assert (=> b!2368600 m!2777369))

(declare-fun m!2777371 () Bool)

(assert (=> b!2368599 m!2777371))

(declare-fun m!2777373 () Bool)

(assert (=> b!2368586 m!2777373))

(declare-fun m!2777375 () Bool)

(assert (=> b!2368585 m!2777375))

(declare-fun m!2777377 () Bool)

(assert (=> b!2368585 m!2777377))

(declare-fun m!2777379 () Bool)

(assert (=> b!2368596 m!2777379))

(declare-fun m!2777381 () Bool)

(assert (=> b!2368596 m!2777381))

(declare-fun m!2777383 () Bool)

(assert (=> b!2368596 m!2777383))

(declare-fun m!2777385 () Bool)

(assert (=> b!2368596 m!2777385))

(assert (=> b!2368596 m!2777379))

(assert (=> b!2368596 m!2777385))

(declare-fun m!2777387 () Bool)

(assert (=> b!2368596 m!2777387))

(declare-fun m!2777389 () Bool)

(assert (=> b!2368596 m!2777389))

(check-sat (not b!2368593) (not b!2368587) (not b!2368599) (not b!2368597) (not start!232456) (not b!2368594) (not b!2368595) (not b!2368598) (not b!2368589) (not b!2368591) (not b!2368596) (not b!2368585) tp_is_empty!11287 (not b!2368586) (not b!2368600) (not b!2368592))
(check-sat)
