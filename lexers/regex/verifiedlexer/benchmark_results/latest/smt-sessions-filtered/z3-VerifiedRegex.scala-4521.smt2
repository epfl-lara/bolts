; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239814 () Bool)

(assert start!239814)

(declare-fun b!2460255 () Bool)

(declare-fun e!1560364 () Bool)

(declare-fun e!1560361 () Bool)

(assert (=> b!2460255 (= e!1560364 (not e!1560361))))

(declare-fun res!1042597 () Bool)

(assert (=> b!2460255 (=> res!1042597 e!1560361)))

(declare-datatypes ((C!14628 0))(
  ( (C!14629 (val!8556 Int)) )
))
(declare-datatypes ((Regex!7235 0))(
  ( (ElementMatch!7235 (c!392679 C!14628)) (Concat!11871 (regOne!14982 Regex!7235) (regTwo!14982 Regex!7235)) (EmptyExpr!7235) (Star!7235 (reg!7564 Regex!7235)) (EmptyLang!7235) (Union!7235 (regOne!14983 Regex!7235) (regTwo!14983 Regex!7235)) )
))
(declare-fun r!13927 () Regex!7235)

(get-info :version)

(assert (=> b!2460255 (= res!1042597 (or ((_ is Concat!11871) r!13927) ((_ is EmptyExpr!7235) r!13927)))))

(declare-fun lt!880892 () Bool)

(declare-datatypes ((List!28706 0))(
  ( (Nil!28608) (Cons!28608 (h!34009 C!14628) (t!208683 List!28706)) )
))
(declare-fun s!9460 () List!28706)

(declare-fun matchRSpec!1082 (Regex!7235 List!28706) Bool)

(assert (=> b!2460255 (= lt!880892 (matchRSpec!1082 r!13927 s!9460))))

(declare-fun matchR!3350 (Regex!7235 List!28706) Bool)

(assert (=> b!2460255 (= lt!880892 (matchR!3350 r!13927 s!9460))))

(declare-datatypes ((Unit!41953 0))(
  ( (Unit!41954) )
))
(declare-fun lt!880890 () Unit!41953)

(declare-fun mainMatchTheorem!1082 (Regex!7235 List!28706) Unit!41953)

(assert (=> b!2460255 (= lt!880890 (mainMatchTheorem!1082 r!13927 s!9460))))

(declare-fun b!2460256 () Bool)

(declare-fun e!1560374 () Bool)

(declare-fun tp!783252 () Bool)

(declare-fun tp!783253 () Bool)

(assert (=> b!2460256 (= e!1560374 (and tp!783252 tp!783253))))

(declare-fun b!2460257 () Bool)

(declare-fun res!1042595 () Bool)

(assert (=> b!2460257 (=> res!1042595 e!1560361)))

(declare-datatypes ((List!28707 0))(
  ( (Nil!28609) (Cons!28609 (h!34010 Regex!7235) (t!208684 List!28707)) )
))
(declare-fun l!9164 () List!28707)

(declare-fun isEmpty!16634 (List!28707) Bool)

(assert (=> b!2460257 (= res!1042595 (isEmpty!16634 l!9164))))

(declare-fun res!1042601 () Bool)

(assert (=> start!239814 (=> (not res!1042601) (not e!1560364))))

(declare-fun lambda!93119 () Int)

(declare-fun forall!5869 (List!28707 Int) Bool)

(assert (=> start!239814 (= res!1042601 (forall!5869 l!9164 lambda!93119))))

(assert (=> start!239814 e!1560364))

(declare-fun e!1560367 () Bool)

(assert (=> start!239814 e!1560367))

(assert (=> start!239814 e!1560374))

(declare-fun e!1560366 () Bool)

(assert (=> start!239814 e!1560366))

(declare-fun e!1560372 () Bool)

(declare-fun b!2460258 () Bool)

(declare-datatypes ((tuple2!28198 0))(
  ( (tuple2!28199 (_1!16640 List!28706) (_2!16640 List!28706)) )
))
(declare-datatypes ((Option!5710 0))(
  ( (None!5709) (Some!5709 (v!31117 tuple2!28198)) )
))
(declare-fun isDefined!4536 (Option!5710) Bool)

(declare-fun findConcatSeparation!818 (Regex!7235 Regex!7235 List!28706 List!28706 List!28706) Option!5710)

(declare-fun generalisedConcat!336 (List!28707) Regex!7235)

(assert (=> b!2460258 (= e!1560372 (not (= lt!880892 (isDefined!4536 (findConcatSeparation!818 (h!34010 l!9164) (generalisedConcat!336 (t!208684 l!9164)) Nil!28608 s!9460 s!9460)))))))

(declare-fun b!2460259 () Bool)

(declare-fun isEmpty!16635 (List!28706) Bool)

(assert (=> b!2460259 (= e!1560372 (not (= lt!880892 (isEmpty!16635 s!9460))))))

(declare-fun b!2460260 () Bool)

(declare-fun e!1560365 () Bool)

(assert (=> b!2460260 (= e!1560365 false)))

(declare-fun lt!880886 () Regex!7235)

(declare-fun lt!880887 () Regex!7235)

(declare-fun c!392676 () Bool)

(declare-fun bm!151346 () Bool)

(declare-fun call!151356 () Bool)

(declare-fun call!151354 () List!28706)

(assert (=> bm!151346 (= call!151356 (matchR!3350 (ite c!392676 lt!880887 (Concat!11871 lt!880886 EmptyExpr!7235)) (ite c!392676 s!9460 call!151354)))))

(declare-fun b!2460261 () Bool)

(declare-fun e!1560363 () Bool)

(assert (=> b!2460261 (= e!1560361 e!1560363)))

(declare-fun res!1042598 () Bool)

(assert (=> b!2460261 (=> res!1042598 e!1560363)))

(declare-fun lt!880888 () List!28707)

(assert (=> b!2460261 (= res!1042598 (not (isEmpty!16634 lt!880888)))))

(declare-fun tail!3892 (List!28707) List!28707)

(assert (=> b!2460261 (= lt!880888 (tail!3892 l!9164))))

(declare-fun b!2460262 () Bool)

(assert (=> b!2460262 e!1560365))

(declare-fun res!1042596 () Bool)

(assert (=> b!2460262 (=> (not res!1042596) (not e!1560365))))

(assert (=> b!2460262 (= res!1042596 call!151356)))

(declare-fun lt!880885 () tuple2!28198)

(declare-fun lt!880891 () Unit!41953)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!108 (Regex!7235 Regex!7235 List!28706 List!28706 List!28706) Unit!41953)

(assert (=> b!2460262 (= lt!880891 (lemmaFindSeparationIsDefinedThenConcatMatches!108 lt!880886 EmptyExpr!7235 (_1!16640 lt!880885) (_2!16640 lt!880885) s!9460))))

(declare-fun lt!880882 () Option!5710)

(declare-fun get!8859 (Option!5710) tuple2!28198)

(assert (=> b!2460262 (= lt!880885 (get!8859 lt!880882))))

(declare-fun e!1560370 () Unit!41953)

(declare-fun Unit!41955 () Unit!41953)

(assert (=> b!2460262 (= e!1560370 Unit!41955)))

(declare-fun b!2460263 () Bool)

(declare-fun res!1042604 () Bool)

(assert (=> b!2460263 (=> (not res!1042604) (not e!1560364))))

(assert (=> b!2460263 (= res!1042604 (= r!13927 (generalisedConcat!336 l!9164)))))

(declare-fun bm!151347 () Bool)

(declare-fun call!151352 () Option!5710)

(assert (=> bm!151347 (= call!151352 (findConcatSeparation!818 lt!880886 EmptyExpr!7235 Nil!28608 s!9460 s!9460))))

(declare-fun call!151351 () Option!5710)

(declare-fun call!151355 () Bool)

(declare-fun bm!151348 () Bool)

(assert (=> bm!151348 (= call!151355 (isDefined!4536 (ite c!392676 call!151351 lt!880882)))))

(declare-fun b!2460264 () Bool)

(declare-fun tp!783259 () Bool)

(declare-fun tp!783257 () Bool)

(assert (=> b!2460264 (= e!1560374 (and tp!783259 tp!783257))))

(declare-fun b!2460265 () Bool)

(declare-fun e!1560371 () Bool)

(assert (=> b!2460265 (= e!1560371 call!151356)))

(declare-fun b!2460266 () Bool)

(declare-fun e!1560368 () Bool)

(declare-fun call!151353 () Bool)

(assert (=> b!2460266 (= e!1560368 (not call!151353))))

(declare-fun b!2460267 () Bool)

(declare-fun e!1560373 () Unit!41953)

(declare-fun Unit!41956 () Unit!41953)

(assert (=> b!2460267 (= e!1560373 Unit!41956)))

(assert (=> b!2460267 (= lt!880882 call!151352)))

(declare-fun lt!880878 () Bool)

(assert (=> b!2460267 (= lt!880878 call!151355)))

(declare-fun c!392677 () Bool)

(assert (=> b!2460267 (= c!392677 lt!880878)))

(declare-fun lt!880881 () Unit!41953)

(assert (=> b!2460267 (= lt!880881 e!1560370)))

(declare-fun res!1042599 () Bool)

(assert (=> b!2460267 (= res!1042599 (not lt!880878))))

(assert (=> b!2460267 (=> (not res!1042599) (not e!1560368))))

(assert (=> b!2460267 e!1560368))

(declare-fun b!2460268 () Bool)

(declare-fun Unit!41957 () Unit!41953)

(assert (=> b!2460268 (= e!1560373 Unit!41957)))

(declare-fun lt!880880 () Unit!41953)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!138 (Regex!7235 Regex!7235 List!28706 List!28706) Unit!41953)

(assert (=> b!2460268 (= lt!880880 (lemmaTwoRegexMatchThenConcatMatchesConcatString!138 lt!880886 EmptyExpr!7235 s!9460 Nil!28608))))

(assert (=> b!2460268 (= lt!880887 (Concat!11871 lt!880886 EmptyExpr!7235))))

(declare-fun res!1042603 () Bool)

(assert (=> b!2460268 (= res!1042603 (matchR!3350 lt!880887 call!151354))))

(assert (=> b!2460268 (=> (not res!1042603) (not e!1560371))))

(assert (=> b!2460268 e!1560371))

(declare-fun lt!880884 () Unit!41953)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!100 (Regex!7235 Regex!7235 List!28706) Unit!41953)

(assert (=> b!2460268 (= lt!880884 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!100 lt!880886 EmptyExpr!7235 s!9460))))

(declare-fun res!1042602 () Bool)

(assert (=> b!2460268 (= res!1042602 call!151353)))

(declare-fun e!1560369 () Bool)

(assert (=> b!2460268 (=> (not res!1042602) (not e!1560369))))

(assert (=> b!2460268 e!1560369))

(declare-fun b!2460269 () Bool)

(declare-fun e!1560362 () Bool)

(assert (=> b!2460269 (= e!1560362 true)))

(declare-fun lt!880889 () Bool)

(assert (=> b!2460269 (= lt!880889 e!1560372)))

(declare-fun c!392678 () Bool)

(assert (=> b!2460269 (= c!392678 ((_ is Cons!28609) l!9164))))

(declare-fun lt!880883 () Unit!41953)

(assert (=> b!2460269 (= lt!880883 e!1560373)))

(assert (=> b!2460269 (= c!392676 (matchR!3350 lt!880886 s!9460))))

(declare-fun head!5619 (List!28707) Regex!7235)

(assert (=> b!2460269 (= lt!880886 (head!5619 l!9164))))

(declare-fun b!2460270 () Bool)

(declare-fun Unit!41958 () Unit!41953)

(assert (=> b!2460270 (= e!1560370 Unit!41958)))

(declare-fun b!2460271 () Bool)

(assert (=> b!2460271 (= e!1560363 e!1560362)))

(declare-fun res!1042600 () Bool)

(assert (=> b!2460271 (=> res!1042600 e!1560362)))

(declare-fun lt!880879 () Regex!7235)

(assert (=> b!2460271 (= res!1042600 (not (= lt!880879 EmptyExpr!7235)))))

(assert (=> b!2460271 (= lt!880879 (generalisedConcat!336 lt!880888))))

(declare-fun b!2460272 () Bool)

(declare-fun tp_is_empty!11883 () Bool)

(assert (=> b!2460272 (= e!1560374 tp_is_empty!11883)))

(declare-fun bm!151349 () Bool)

(declare-fun ++!7123 (List!28706 List!28706) List!28706)

(assert (=> bm!151349 (= call!151354 (++!7123 (ite c!392676 s!9460 (_1!16640 lt!880885)) (ite c!392676 Nil!28608 (_2!16640 lt!880885))))))

(declare-fun b!2460273 () Bool)

(declare-fun tp!783254 () Bool)

(assert (=> b!2460273 (= e!1560366 (and tp_is_empty!11883 tp!783254))))

(declare-fun bm!151350 () Bool)

(assert (=> bm!151350 (= call!151353 (isDefined!4536 (ite c!392676 call!151352 call!151351)))))

(declare-fun bm!151351 () Bool)

(assert (=> bm!151351 (= call!151351 (findConcatSeparation!818 lt!880886 lt!880879 Nil!28608 s!9460 s!9460))))

(declare-fun b!2460274 () Bool)

(declare-fun tp!783256 () Bool)

(assert (=> b!2460274 (= e!1560374 tp!783256)))

(declare-fun b!2460275 () Bool)

(assert (=> b!2460275 (= e!1560369 call!151355)))

(declare-fun b!2460276 () Bool)

(declare-fun tp!783258 () Bool)

(declare-fun tp!783255 () Bool)

(assert (=> b!2460276 (= e!1560367 (and tp!783258 tp!783255))))

(assert (= (and start!239814 res!1042601) b!2460263))

(assert (= (and b!2460263 res!1042604) b!2460255))

(assert (= (and b!2460255 (not res!1042597)) b!2460257))

(assert (= (and b!2460257 (not res!1042595)) b!2460261))

(assert (= (and b!2460261 (not res!1042598)) b!2460271))

(assert (= (and b!2460271 (not res!1042600)) b!2460269))

(assert (= (and b!2460269 c!392676) b!2460268))

(assert (= (and b!2460269 (not c!392676)) b!2460267))

(assert (= (and b!2460268 res!1042603) b!2460265))

(assert (= (and b!2460268 res!1042602) b!2460275))

(assert (= (and b!2460267 c!392677) b!2460262))

(assert (= (and b!2460267 (not c!392677)) b!2460270))

(assert (= (and b!2460262 res!1042596) b!2460260))

(assert (= (and b!2460267 res!1042599) b!2460266))

(assert (= (or b!2460268 b!2460262) bm!151349))

(assert (= (or b!2460275 b!2460266) bm!151351))

(assert (= (or b!2460268 b!2460267) bm!151347))

(assert (= (or b!2460275 b!2460267) bm!151348))

(assert (= (or b!2460265 b!2460262) bm!151346))

(assert (= (or b!2460268 b!2460266) bm!151350))

(assert (= (and b!2460269 c!392678) b!2460258))

(assert (= (and b!2460269 (not c!392678)) b!2460259))

(assert (= (and start!239814 ((_ is Cons!28609) l!9164)) b!2460276))

(assert (= (and start!239814 ((_ is ElementMatch!7235) r!13927)) b!2460272))

(assert (= (and start!239814 ((_ is Concat!11871) r!13927)) b!2460256))

(assert (= (and start!239814 ((_ is Star!7235) r!13927)) b!2460274))

(assert (= (and start!239814 ((_ is Union!7235) r!13927)) b!2460264))

(assert (= (and start!239814 ((_ is Cons!28608) s!9460)) b!2460273))

(declare-fun m!2829711 () Bool)

(assert (=> bm!151347 m!2829711))

(declare-fun m!2829713 () Bool)

(assert (=> b!2460257 m!2829713))

(declare-fun m!2829715 () Bool)

(assert (=> b!2460261 m!2829715))

(declare-fun m!2829717 () Bool)

(assert (=> b!2460261 m!2829717))

(declare-fun m!2829719 () Bool)

(assert (=> b!2460269 m!2829719))

(declare-fun m!2829721 () Bool)

(assert (=> b!2460269 m!2829721))

(declare-fun m!2829723 () Bool)

(assert (=> b!2460268 m!2829723))

(declare-fun m!2829725 () Bool)

(assert (=> b!2460268 m!2829725))

(declare-fun m!2829727 () Bool)

(assert (=> b!2460268 m!2829727))

(declare-fun m!2829729 () Bool)

(assert (=> b!2460263 m!2829729))

(declare-fun m!2829731 () Bool)

(assert (=> b!2460259 m!2829731))

(declare-fun m!2829733 () Bool)

(assert (=> bm!151346 m!2829733))

(declare-fun m!2829735 () Bool)

(assert (=> bm!151349 m!2829735))

(declare-fun m!2829737 () Bool)

(assert (=> bm!151350 m!2829737))

(declare-fun m!2829739 () Bool)

(assert (=> bm!151348 m!2829739))

(declare-fun m!2829741 () Bool)

(assert (=> b!2460271 m!2829741))

(declare-fun m!2829743 () Bool)

(assert (=> start!239814 m!2829743))

(declare-fun m!2829745 () Bool)

(assert (=> b!2460262 m!2829745))

(declare-fun m!2829747 () Bool)

(assert (=> b!2460262 m!2829747))

(declare-fun m!2829749 () Bool)

(assert (=> b!2460258 m!2829749))

(assert (=> b!2460258 m!2829749))

(declare-fun m!2829751 () Bool)

(assert (=> b!2460258 m!2829751))

(assert (=> b!2460258 m!2829751))

(declare-fun m!2829753 () Bool)

(assert (=> b!2460258 m!2829753))

(declare-fun m!2829755 () Bool)

(assert (=> b!2460255 m!2829755))

(declare-fun m!2829757 () Bool)

(assert (=> b!2460255 m!2829757))

(declare-fun m!2829759 () Bool)

(assert (=> b!2460255 m!2829759))

(declare-fun m!2829761 () Bool)

(assert (=> bm!151351 m!2829761))

(check-sat (not b!2460263) (not b!2460271) (not b!2460257) (not bm!151347) (not b!2460268) (not start!239814) (not bm!151346) (not bm!151349) (not b!2460276) (not b!2460256) (not b!2460259) (not bm!151351) (not b!2460269) (not b!2460255) (not b!2460262) tp_is_empty!11883 (not b!2460258) (not b!2460274) (not bm!151350) (not b!2460261) (not b!2460273) (not bm!151348) (not b!2460264))
(check-sat)
