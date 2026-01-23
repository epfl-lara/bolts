; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239542 () Bool)

(assert start!239542)

(declare-fun b!2454374 () Bool)

(declare-fun res!1040751 () Bool)

(declare-fun e!1557458 () Bool)

(assert (=> b!2454374 (=> (not res!1040751) (not e!1557458))))

(declare-datatypes ((C!14596 0))(
  ( (C!14597 (val!8540 Int)) )
))
(declare-datatypes ((Regex!7219 0))(
  ( (ElementMatch!7219 (c!391681 C!14596)) (Concat!11855 (regOne!14950 Regex!7219) (regTwo!14950 Regex!7219)) (EmptyExpr!7219) (Star!7219 (reg!7548 Regex!7219)) (EmptyLang!7219) (Union!7219 (regOne!14951 Regex!7219) (regTwo!14951 Regex!7219)) )
))
(declare-fun r!13927 () Regex!7219)

(declare-datatypes ((List!28674 0))(
  ( (Nil!28576) (Cons!28576 (h!33977 Regex!7219) (t!208651 List!28674)) )
))
(declare-fun l!9164 () List!28674)

(declare-fun generalisedConcat!320 (List!28674) Regex!7219)

(assert (=> b!2454374 (= res!1040751 (= r!13927 (generalisedConcat!320 l!9164)))))

(declare-fun b!2454375 () Bool)

(declare-fun res!1040752 () Bool)

(declare-fun e!1557455 () Bool)

(assert (=> b!2454375 (=> res!1040752 e!1557455)))

(declare-fun lt!880105 () Regex!7219)

(declare-datatypes ((List!28675 0))(
  ( (Nil!28577) (Cons!28577 (h!33978 C!14596) (t!208652 List!28675)) )
))
(declare-fun s!9460 () List!28675)

(declare-datatypes ((tuple2!28166 0))(
  ( (tuple2!28167 (_1!16624 List!28675) (_2!16624 List!28675)) )
))
(declare-datatypes ((Option!5694 0))(
  ( (None!5693) (Some!5693 (v!31101 tuple2!28166)) )
))
(declare-fun isDefined!4520 (Option!5694) Bool)

(declare-fun findConcatSeparation!802 (Regex!7219 Regex!7219 List!28675 List!28675 List!28675) Option!5694)

(assert (=> b!2454375 (= res!1040752 (not (isDefined!4520 (findConcatSeparation!802 lt!880105 EmptyExpr!7219 Nil!28577 s!9460 s!9460))))))

(declare-fun b!2454376 () Bool)

(declare-fun e!1557456 () Bool)

(declare-fun tp_is_empty!11851 () Bool)

(assert (=> b!2454376 (= e!1557456 tp_is_empty!11851)))

(declare-fun b!2454377 () Bool)

(declare-fun res!1040749 () Bool)

(declare-fun e!1557460 () Bool)

(assert (=> b!2454377 (=> res!1040749 e!1557460)))

(declare-fun lt!880106 () List!28674)

(assert (=> b!2454377 (= res!1040749 (not (= (generalisedConcat!320 lt!880106) EmptyExpr!7219)))))

(declare-fun b!2454378 () Bool)

(declare-fun res!1040750 () Bool)

(declare-fun e!1557457 () Bool)

(assert (=> b!2454378 (=> res!1040750 e!1557457)))

(declare-fun isEmpty!16605 (List!28674) Bool)

(assert (=> b!2454378 (= res!1040750 (isEmpty!16605 l!9164))))

(declare-fun b!2454379 () Bool)

(declare-fun e!1557454 () Bool)

(declare-fun tp!780698 () Bool)

(declare-fun tp!780694 () Bool)

(assert (=> b!2454379 (= e!1557454 (and tp!780698 tp!780694))))

(declare-fun b!2454380 () Bool)

(assert (=> b!2454380 (= e!1557458 (not e!1557457))))

(declare-fun res!1040754 () Bool)

(assert (=> b!2454380 (=> res!1040754 e!1557457)))

(get-info :version)

(assert (=> b!2454380 (= res!1040754 (or ((_ is Concat!11855) r!13927) ((_ is EmptyExpr!7219) r!13927)))))

(declare-fun matchR!3334 (Regex!7219 List!28675) Bool)

(declare-fun matchRSpec!1066 (Regex!7219 List!28675) Bool)

(assert (=> b!2454380 (= (matchR!3334 r!13927 s!9460) (matchRSpec!1066 r!13927 s!9460))))

(declare-datatypes ((Unit!41893 0))(
  ( (Unit!41894) )
))
(declare-fun lt!880104 () Unit!41893)

(declare-fun mainMatchTheorem!1066 (Regex!7219 List!28675) Unit!41893)

(assert (=> b!2454380 (= lt!880104 (mainMatchTheorem!1066 r!13927 s!9460))))

(declare-fun b!2454381 () Bool)

(assert (=> b!2454381 (= e!1557460 e!1557455)))

(declare-fun res!1040746 () Bool)

(assert (=> b!2454381 (=> res!1040746 e!1557455)))

(assert (=> b!2454381 (= res!1040746 (matchR!3334 lt!880105 s!9460))))

(declare-fun head!5597 (List!28674) Regex!7219)

(assert (=> b!2454381 (= lt!880105 (head!5597 l!9164))))

(declare-fun res!1040748 () Bool)

(assert (=> start!239542 (=> (not res!1040748) (not e!1557458))))

(declare-fun lambda!92977 () Int)

(declare-fun forall!5853 (List!28674 Int) Bool)

(assert (=> start!239542 (= res!1040748 (forall!5853 l!9164 lambda!92977))))

(assert (=> start!239542 e!1557458))

(assert (=> start!239542 e!1557454))

(assert (=> start!239542 e!1557456))

(declare-fun e!1557459 () Bool)

(assert (=> start!239542 e!1557459))

(declare-fun b!2454382 () Bool)

(declare-fun tp!780696 () Bool)

(declare-fun tp!780692 () Bool)

(assert (=> b!2454382 (= e!1557456 (and tp!780696 tp!780692))))

(declare-fun b!2454383 () Bool)

(declare-fun tp!780695 () Bool)

(assert (=> b!2454383 (= e!1557459 (and tp_is_empty!11851 tp!780695))))

(declare-fun b!2454384 () Bool)

(declare-fun tp!780693 () Bool)

(assert (=> b!2454384 (= e!1557456 tp!780693)))

(declare-fun b!2454385 () Bool)

(declare-fun res!1040747 () Bool)

(assert (=> b!2454385 (=> res!1040747 e!1557455)))

(declare-fun validRegex!2911 (Regex!7219) Bool)

(assert (=> b!2454385 (= res!1040747 (not (validRegex!2911 lt!880105)))))

(declare-fun b!2454386 () Bool)

(assert (=> b!2454386 (= e!1557455 true)))

(declare-fun b!2454387 () Bool)

(assert (=> b!2454387 (= e!1557457 e!1557460)))

(declare-fun res!1040753 () Bool)

(assert (=> b!2454387 (=> res!1040753 e!1557460)))

(assert (=> b!2454387 (= res!1040753 (not (isEmpty!16605 lt!880106)))))

(declare-fun tail!3870 (List!28674) List!28674)

(assert (=> b!2454387 (= lt!880106 (tail!3870 l!9164))))

(declare-fun b!2454388 () Bool)

(declare-fun tp!780697 () Bool)

(declare-fun tp!780699 () Bool)

(assert (=> b!2454388 (= e!1557456 (and tp!780697 tp!780699))))

(assert (= (and start!239542 res!1040748) b!2454374))

(assert (= (and b!2454374 res!1040751) b!2454380))

(assert (= (and b!2454380 (not res!1040754)) b!2454378))

(assert (= (and b!2454378 (not res!1040750)) b!2454387))

(assert (= (and b!2454387 (not res!1040753)) b!2454377))

(assert (= (and b!2454377 (not res!1040749)) b!2454381))

(assert (= (and b!2454381 (not res!1040746)) b!2454375))

(assert (= (and b!2454375 (not res!1040752)) b!2454385))

(assert (= (and b!2454385 (not res!1040747)) b!2454386))

(assert (= (and start!239542 ((_ is Cons!28576) l!9164)) b!2454379))

(assert (= (and start!239542 ((_ is ElementMatch!7219) r!13927)) b!2454376))

(assert (= (and start!239542 ((_ is Concat!11855) r!13927)) b!2454388))

(assert (= (and start!239542 ((_ is Star!7219) r!13927)) b!2454384))

(assert (= (and start!239542 ((_ is Union!7219) r!13927)) b!2454382))

(assert (= (and start!239542 ((_ is Cons!28577) s!9460)) b!2454383))

(declare-fun m!2826311 () Bool)

(assert (=> b!2454377 m!2826311))

(declare-fun m!2826313 () Bool)

(assert (=> start!239542 m!2826313))

(declare-fun m!2826315 () Bool)

(assert (=> b!2454375 m!2826315))

(assert (=> b!2454375 m!2826315))

(declare-fun m!2826317 () Bool)

(assert (=> b!2454375 m!2826317))

(declare-fun m!2826319 () Bool)

(assert (=> b!2454387 m!2826319))

(declare-fun m!2826321 () Bool)

(assert (=> b!2454387 m!2826321))

(declare-fun m!2826323 () Bool)

(assert (=> b!2454385 m!2826323))

(declare-fun m!2826325 () Bool)

(assert (=> b!2454378 m!2826325))

(declare-fun m!2826327 () Bool)

(assert (=> b!2454380 m!2826327))

(declare-fun m!2826329 () Bool)

(assert (=> b!2454380 m!2826329))

(declare-fun m!2826331 () Bool)

(assert (=> b!2454380 m!2826331))

(declare-fun m!2826333 () Bool)

(assert (=> b!2454374 m!2826333))

(declare-fun m!2826335 () Bool)

(assert (=> b!2454381 m!2826335))

(declare-fun m!2826337 () Bool)

(assert (=> b!2454381 m!2826337))

(check-sat (not b!2454375) (not b!2454385) (not b!2454377) (not b!2454381) (not b!2454374) (not b!2454384) (not b!2454379) (not b!2454382) (not b!2454387) tp_is_empty!11851 (not start!239542) (not b!2454388) (not b!2454380) (not b!2454383) (not b!2454378))
(check-sat)
