; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87986 () Bool)

(assert start!87986)

(declare-fun b!1002548 () Bool)

(declare-fun e!642528 () Bool)

(declare-datatypes ((C!6132 0))(
  ( (C!6133 (val!3314 Int)) )
))
(declare-datatypes ((Regex!2781 0))(
  ( (ElementMatch!2781 (c!165144 C!6132)) (Concat!4614 (regOne!6074 Regex!2781) (regTwo!6074 Regex!2781)) (EmptyExpr!2781) (Star!2781 (reg!3110 Regex!2781)) (EmptyLang!2781) (Union!2781 (regOne!6075 Regex!2781) (regTwo!6075 Regex!2781)) )
))
(declare-fun r!15766 () Regex!2781)

(declare-fun validRegex!1250 (Regex!2781) Bool)

(assert (=> b!1002548 (= e!642528 (validRegex!1250 (Star!2781 (reg!3110 r!15766))))))

(declare-fun b!1002549 () Bool)

(declare-fun res!452579 () Bool)

(assert (=> b!1002549 (=> res!452579 e!642528)))

(assert (=> b!1002549 (= res!452579 (not (validRegex!1250 (reg!3110 r!15766))))))

(declare-fun b!1002550 () Bool)

(declare-fun e!642529 () Bool)

(declare-fun tp!305296 () Bool)

(declare-fun tp!305299 () Bool)

(assert (=> b!1002550 (= e!642529 (and tp!305296 tp!305299))))

(declare-fun b!1002551 () Bool)

(declare-fun e!642526 () Bool)

(declare-fun tp_is_empty!5205 () Bool)

(declare-fun tp!305297 () Bool)

(assert (=> b!1002551 (= e!642526 (and tp_is_empty!5205 tp!305297))))

(declare-fun b!1002552 () Bool)

(declare-fun tp!305300 () Bool)

(assert (=> b!1002552 (= e!642529 tp!305300)))

(declare-fun b!1002553 () Bool)

(assert (=> b!1002553 (= e!642529 tp_is_empty!5205)))

(declare-fun b!1002554 () Bool)

(declare-fun tp!305295 () Bool)

(declare-fun tp!305298 () Bool)

(assert (=> b!1002554 (= e!642529 (and tp!305295 tp!305298))))

(declare-fun res!452578 () Bool)

(declare-fun e!642527 () Bool)

(assert (=> start!87986 (=> (not res!452578) (not e!642527))))

(assert (=> start!87986 (= res!452578 (validRegex!1250 r!15766))))

(assert (=> start!87986 e!642527))

(assert (=> start!87986 e!642529))

(assert (=> start!87986 e!642526))

(declare-fun b!1002555 () Bool)

(assert (=> b!1002555 (= e!642527 (not e!642528))))

(declare-fun res!452580 () Bool)

(assert (=> b!1002555 (=> res!452580 e!642528)))

(declare-fun lt!352215 () Bool)

(get-info :version)

(assert (=> b!1002555 (= res!452580 (or (not lt!352215) (and ((_ is Concat!4614) r!15766) ((_ is EmptyExpr!2781) (regOne!6074 r!15766))) (and ((_ is Concat!4614) r!15766) ((_ is EmptyExpr!2781) (regTwo!6074 r!15766))) ((_ is Concat!4614) r!15766) ((_ is Union!2781) r!15766) (not ((_ is Star!2781) r!15766))))))

(declare-datatypes ((List!10011 0))(
  ( (Nil!9995) (Cons!9995 (h!15396 C!6132) (t!101057 List!10011)) )
))
(declare-fun s!10566 () List!10011)

(declare-fun matchRSpec!580 (Regex!2781 List!10011) Bool)

(assert (=> b!1002555 (= lt!352215 (matchRSpec!580 r!15766 s!10566))))

(declare-fun matchR!1317 (Regex!2781 List!10011) Bool)

(assert (=> b!1002555 (= lt!352215 (matchR!1317 r!15766 s!10566))))

(declare-datatypes ((Unit!15221 0))(
  ( (Unit!15222) )
))
(declare-fun lt!352214 () Unit!15221)

(declare-fun mainMatchTheorem!580 (Regex!2781 List!10011) Unit!15221)

(assert (=> b!1002555 (= lt!352214 (mainMatchTheorem!580 r!15766 s!10566))))

(assert (= (and start!87986 res!452578) b!1002555))

(assert (= (and b!1002555 (not res!452580)) b!1002549))

(assert (= (and b!1002549 (not res!452579)) b!1002548))

(assert (= (and start!87986 ((_ is ElementMatch!2781) r!15766)) b!1002553))

(assert (= (and start!87986 ((_ is Concat!4614) r!15766)) b!1002550))

(assert (= (and start!87986 ((_ is Star!2781) r!15766)) b!1002552))

(assert (= (and start!87986 ((_ is Union!2781) r!15766)) b!1002554))

(assert (= (and start!87986 ((_ is Cons!9995) s!10566)) b!1002551))

(declare-fun m!1190581 () Bool)

(assert (=> b!1002548 m!1190581))

(declare-fun m!1190583 () Bool)

(assert (=> b!1002549 m!1190583))

(declare-fun m!1190585 () Bool)

(assert (=> start!87986 m!1190585))

(declare-fun m!1190587 () Bool)

(assert (=> b!1002555 m!1190587))

(declare-fun m!1190589 () Bool)

(assert (=> b!1002555 m!1190589))

(declare-fun m!1190591 () Bool)

(assert (=> b!1002555 m!1190591))

(check-sat (not b!1002554) (not b!1002555) (not b!1002551) (not start!87986) (not b!1002548) (not b!1002552) tp_is_empty!5205 (not b!1002549) (not b!1002550))
(check-sat)
