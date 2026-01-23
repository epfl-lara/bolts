; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91274 () Bool)

(assert start!91274)

(declare-fun b!1062744 () Bool)

(declare-fun e!674264 () Bool)

(declare-fun tp_is_empty!5497 () Bool)

(assert (=> b!1062744 (= e!674264 tp_is_empty!5497)))

(declare-fun b!1062746 () Bool)

(declare-fun e!674263 () Bool)

(declare-datatypes ((C!6424 0))(
  ( (C!6425 (val!3460 Int)) )
))
(declare-datatypes ((Regex!2927 0))(
  ( (ElementMatch!2927 (c!178172 C!6424)) (Concat!4760 (regOne!6366 Regex!2927) (regTwo!6366 Regex!2927)) (EmptyExpr!2927) (Star!2927 (reg!3256 Regex!2927)) (EmptyLang!2927) (Union!2927 (regOne!6367 Regex!2927) (regTwo!6367 Regex!2927)) )
))
(declare-fun r!15766 () Regex!2927)

(declare-fun validRegex!1396 (Regex!2927) Bool)

(assert (=> b!1062746 (= e!674263 (validRegex!1396 (Star!2927 (reg!3256 r!15766))))))

(declare-fun b!1062747 () Bool)

(declare-fun e!674265 () Bool)

(declare-fun tp!319156 () Bool)

(assert (=> b!1062747 (= e!674265 (and tp_is_empty!5497 tp!319156))))

(declare-fun b!1062745 () Bool)

(declare-fun tp!319155 () Bool)

(declare-fun tp!319158 () Bool)

(assert (=> b!1062745 (= e!674264 (and tp!319155 tp!319158))))

(declare-fun res!474804 () Bool)

(declare-fun e!674262 () Bool)

(assert (=> start!91274 (=> (not res!474804) (not e!674262))))

(assert (=> start!91274 (= res!474804 (validRegex!1396 r!15766))))

(assert (=> start!91274 e!674262))

(assert (=> start!91274 e!674264))

(assert (=> start!91274 e!674265))

(declare-fun b!1062748 () Bool)

(declare-fun res!474806 () Bool)

(assert (=> b!1062748 (=> res!474806 e!674263)))

(assert (=> b!1062748 (= res!474806 (not (validRegex!1396 (reg!3256 r!15766))))))

(declare-fun b!1062749 () Bool)

(declare-fun tp!319160 () Bool)

(declare-fun tp!319159 () Bool)

(assert (=> b!1062749 (= e!674264 (and tp!319160 tp!319159))))

(declare-fun b!1062750 () Bool)

(assert (=> b!1062750 (= e!674262 (not e!674263))))

(declare-fun res!474805 () Bool)

(assert (=> b!1062750 (=> res!474805 e!674263)))

(declare-fun lt!360031 () Bool)

(get-info :version)

(assert (=> b!1062750 (= res!474805 (or lt!360031 (and ((_ is Concat!4760) r!15766) ((_ is EmptyExpr!2927) (regOne!6366 r!15766))) (and ((_ is Concat!4760) r!15766) ((_ is EmptyExpr!2927) (regTwo!6366 r!15766))) ((_ is Concat!4760) r!15766) ((_ is Union!2927) r!15766) (not ((_ is Star!2927) r!15766))))))

(declare-datatypes ((List!10157 0))(
  ( (Nil!10141) (Cons!10141 (h!15542 C!6424) (t!101203 List!10157)) )
))
(declare-fun s!10566 () List!10157)

(declare-fun matchRSpec!726 (Regex!2927 List!10157) Bool)

(assert (=> b!1062750 (= lt!360031 (matchRSpec!726 r!15766 s!10566))))

(declare-fun matchR!1463 (Regex!2927 List!10157) Bool)

(assert (=> b!1062750 (= lt!360031 (matchR!1463 r!15766 s!10566))))

(declare-datatypes ((Unit!15529 0))(
  ( (Unit!15530) )
))
(declare-fun lt!360030 () Unit!15529)

(declare-fun mainMatchTheorem!726 (Regex!2927 List!10157) Unit!15529)

(assert (=> b!1062750 (= lt!360030 (mainMatchTheorem!726 r!15766 s!10566))))

(declare-fun b!1062751 () Bool)

(declare-fun tp!319157 () Bool)

(assert (=> b!1062751 (= e!674264 tp!319157)))

(assert (= (and start!91274 res!474804) b!1062750))

(assert (= (and b!1062750 (not res!474805)) b!1062748))

(assert (= (and b!1062748 (not res!474806)) b!1062746))

(assert (= (and start!91274 ((_ is ElementMatch!2927) r!15766)) b!1062744))

(assert (= (and start!91274 ((_ is Concat!4760) r!15766)) b!1062745))

(assert (= (and start!91274 ((_ is Star!2927) r!15766)) b!1062751))

(assert (= (and start!91274 ((_ is Union!2927) r!15766)) b!1062749))

(assert (= (and start!91274 ((_ is Cons!10141) s!10566)) b!1062747))

(declare-fun m!1221707 () Bool)

(assert (=> b!1062746 m!1221707))

(declare-fun m!1221709 () Bool)

(assert (=> start!91274 m!1221709))

(declare-fun m!1221711 () Bool)

(assert (=> b!1062748 m!1221711))

(declare-fun m!1221713 () Bool)

(assert (=> b!1062750 m!1221713))

(declare-fun m!1221715 () Bool)

(assert (=> b!1062750 m!1221715))

(declare-fun m!1221717 () Bool)

(assert (=> b!1062750 m!1221717))

(check-sat (not b!1062748) (not b!1062751) (not b!1062745) (not b!1062749) tp_is_empty!5497 (not b!1062750) (not b!1062746) (not start!91274) (not b!1062747))
(check-sat)
