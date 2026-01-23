; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81758 () Bool)

(assert start!81758)

(declare-fun b!909206 () Bool)

(assert (=> b!909206 true))

(assert (=> b!909206 true))

(declare-fun lambda!28876 () Int)

(declare-fun lambda!28875 () Int)

(assert (=> b!909206 (not (= lambda!28876 lambda!28875))))

(assert (=> b!909206 true))

(assert (=> b!909206 true))

(declare-fun b!909203 () Bool)

(declare-fun e!593358 () Bool)

(declare-fun tp!284487 () Bool)

(assert (=> b!909203 (= e!593358 tp!284487)))

(declare-fun b!909205 () Bool)

(declare-fun tp!284484 () Bool)

(declare-fun tp!284485 () Bool)

(assert (=> b!909205 (= e!593358 (and tp!284484 tp!284485))))

(declare-fun e!593357 () Bool)

(declare-fun e!593355 () Bool)

(assert (=> b!909206 (= e!593357 e!593355)))

(declare-fun res!413434 () Bool)

(assert (=> b!909206 (=> res!413434 e!593355)))

(declare-datatypes ((C!5408 0))(
  ( (C!5409 (val!2952 Int)) )
))
(declare-datatypes ((List!9649 0))(
  ( (Nil!9633) (Cons!9633 (h!15034 C!5408) (t!100695 List!9649)) )
))
(declare-fun s!10566 () List!9649)

(declare-fun isEmpty!5846 (List!9649) Bool)

(assert (=> b!909206 (= res!413434 (isEmpty!5846 s!10566))))

(declare-fun Exists!192 (Int) Bool)

(assert (=> b!909206 (= (Exists!192 lambda!28875) (Exists!192 lambda!28876))))

(declare-datatypes ((Unit!14457 0))(
  ( (Unit!14458) )
))
(declare-fun lt!336304 () Unit!14457)

(declare-datatypes ((Regex!2419 0))(
  ( (ElementMatch!2419 (c!147280 C!5408)) (Concat!4252 (regOne!5350 Regex!2419) (regTwo!5350 Regex!2419)) (EmptyExpr!2419) (Star!2419 (reg!2748 Regex!2419)) (EmptyLang!2419) (Union!2419 (regOne!5351 Regex!2419) (regTwo!5351 Regex!2419)) )
))
(declare-fun r!15766 () Regex!2419)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!106 (Regex!2419 Regex!2419 List!9649) Unit!14457)

(assert (=> b!909206 (= lt!336304 (lemmaExistCutMatchRandMatchRSpecEquivalent!106 (regOne!5350 r!15766) EmptyExpr!2419 s!10566))))

(declare-datatypes ((tuple2!10828 0))(
  ( (tuple2!10829 (_1!6240 List!9649) (_2!6240 List!9649)) )
))
(declare-datatypes ((Option!2056 0))(
  ( (None!2055) (Some!2055 (v!19472 tuple2!10828)) )
))
(declare-fun isDefined!1698 (Option!2056) Bool)

(declare-fun findConcatSeparation!162 (Regex!2419 Regex!2419 List!9649 List!9649 List!9649) Option!2056)

(assert (=> b!909206 (= (isDefined!1698 (findConcatSeparation!162 (regOne!5350 r!15766) EmptyExpr!2419 Nil!9633 s!10566 s!10566)) (Exists!192 lambda!28875))))

(declare-fun lt!336303 () Unit!14457)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!162 (Regex!2419 Regex!2419 List!9649) Unit!14457)

(assert (=> b!909206 (= lt!336303 (lemmaFindConcatSeparationEquivalentToExists!162 (regOne!5350 r!15766) EmptyExpr!2419 s!10566))))

(declare-fun b!909207 () Bool)

(assert (=> b!909207 (= e!593355 true)))

(declare-fun b!909208 () Bool)

(declare-fun res!413432 () Bool)

(assert (=> b!909208 (=> res!413432 e!593355)))

(declare-fun validRegex!888 (Regex!2419) Bool)

(assert (=> b!909208 (= res!413432 (not (validRegex!888 (regOne!5350 r!15766))))))

(declare-fun b!909209 () Bool)

(declare-fun tp!284488 () Bool)

(declare-fun tp!284486 () Bool)

(assert (=> b!909209 (= e!593358 (and tp!284488 tp!284486))))

(declare-fun b!909210 () Bool)

(declare-fun tp_is_empty!4481 () Bool)

(assert (=> b!909210 (= e!593358 tp_is_empty!4481)))

(declare-fun b!909211 () Bool)

(declare-fun e!593359 () Bool)

(assert (=> b!909211 (= e!593359 (not e!593357))))

(declare-fun res!413431 () Bool)

(assert (=> b!909211 (=> res!413431 e!593357)))

(declare-fun lt!336305 () Bool)

(get-info :version)

(assert (=> b!909211 (= res!413431 (or lt!336305 (and ((_ is Concat!4252) r!15766) ((_ is EmptyExpr!2419) (regOne!5350 r!15766))) (not ((_ is Concat!4252) r!15766)) (not ((_ is EmptyExpr!2419) (regTwo!5350 r!15766)))))))

(declare-fun matchRSpec!220 (Regex!2419 List!9649) Bool)

(assert (=> b!909211 (= lt!336305 (matchRSpec!220 r!15766 s!10566))))

(declare-fun matchR!957 (Regex!2419 List!9649) Bool)

(assert (=> b!909211 (= lt!336305 (matchR!957 r!15766 s!10566))))

(declare-fun lt!336302 () Unit!14457)

(declare-fun mainMatchTheorem!220 (Regex!2419 List!9649) Unit!14457)

(assert (=> b!909211 (= lt!336302 (mainMatchTheorem!220 r!15766 s!10566))))

(declare-fun b!909204 () Bool)

(declare-fun e!593356 () Bool)

(declare-fun tp!284483 () Bool)

(assert (=> b!909204 (= e!593356 (and tp_is_empty!4481 tp!284483))))

(declare-fun res!413433 () Bool)

(assert (=> start!81758 (=> (not res!413433) (not e!593359))))

(assert (=> start!81758 (= res!413433 (validRegex!888 r!15766))))

(assert (=> start!81758 e!593359))

(assert (=> start!81758 e!593358))

(assert (=> start!81758 e!593356))

(assert (= (and start!81758 res!413433) b!909211))

(assert (= (and b!909211 (not res!413431)) b!909206))

(assert (= (and b!909206 (not res!413434)) b!909208))

(assert (= (and b!909208 (not res!413432)) b!909207))

(assert (= (and start!81758 ((_ is ElementMatch!2419) r!15766)) b!909210))

(assert (= (and start!81758 ((_ is Concat!4252) r!15766)) b!909205))

(assert (= (and start!81758 ((_ is Star!2419) r!15766)) b!909203))

(assert (= (and start!81758 ((_ is Union!2419) r!15766)) b!909209))

(assert (= (and start!81758 ((_ is Cons!9633) s!10566)) b!909204))

(declare-fun m!1142453 () Bool)

(assert (=> b!909206 m!1142453))

(declare-fun m!1142455 () Bool)

(assert (=> b!909206 m!1142455))

(declare-fun m!1142457 () Bool)

(assert (=> b!909206 m!1142457))

(declare-fun m!1142459 () Bool)

(assert (=> b!909206 m!1142459))

(declare-fun m!1142461 () Bool)

(assert (=> b!909206 m!1142461))

(assert (=> b!909206 m!1142455))

(assert (=> b!909206 m!1142459))

(declare-fun m!1142463 () Bool)

(assert (=> b!909206 m!1142463))

(declare-fun m!1142465 () Bool)

(assert (=> b!909206 m!1142465))

(declare-fun m!1142467 () Bool)

(assert (=> b!909208 m!1142467))

(declare-fun m!1142469 () Bool)

(assert (=> b!909211 m!1142469))

(declare-fun m!1142471 () Bool)

(assert (=> b!909211 m!1142471))

(declare-fun m!1142473 () Bool)

(assert (=> b!909211 m!1142473))

(declare-fun m!1142475 () Bool)

(assert (=> start!81758 m!1142475))

(check-sat tp_is_empty!4481 (not b!909204) (not b!909206) (not b!909203) (not b!909205) (not b!909211) (not b!909209) (not start!81758) (not b!909208))
(check-sat)
