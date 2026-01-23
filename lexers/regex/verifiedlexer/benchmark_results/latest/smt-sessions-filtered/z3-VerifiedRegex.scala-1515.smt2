; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80158 () Bool)

(assert start!80158)

(declare-fun b!887547 () Bool)

(declare-fun e!581834 () Bool)

(declare-fun tp_is_empty!4221 () Bool)

(declare-fun tp!279637 () Bool)

(assert (=> b!887547 (= e!581834 (and tp_is_empty!4221 tp!279637))))

(declare-fun b!887548 () Bool)

(declare-fun res!403699 () Bool)

(declare-fun e!581836 () Bool)

(assert (=> b!887548 (=> res!403699 e!581836)))

(declare-datatypes ((C!5148 0))(
  ( (C!5149 (val!2822 Int)) )
))
(declare-datatypes ((Regex!2289 0))(
  ( (ElementMatch!2289 (c!143536 C!5148)) (Concat!4122 (regOne!5090 Regex!2289) (regTwo!5090 Regex!2289)) (EmptyExpr!2289) (Star!2289 (reg!2618 Regex!2289)) (EmptyLang!2289) (Union!2289 (regOne!5091 Regex!2289) (regTwo!5091 Regex!2289)) )
))
(declare-fun r!15766 () Regex!2289)

(declare-fun validRegex!758 (Regex!2289) Bool)

(assert (=> b!887548 (= res!403699 (not (validRegex!758 (regTwo!5091 r!15766))))))

(declare-fun b!887549 () Bool)

(declare-fun res!403701 () Bool)

(assert (=> b!887549 (=> res!403701 e!581836)))

(assert (=> b!887549 (= res!403701 (not (validRegex!758 (regOne!5091 r!15766))))))

(declare-fun b!887550 () Bool)

(declare-fun e!581837 () Bool)

(declare-fun tp!279638 () Bool)

(declare-fun tp!279639 () Bool)

(assert (=> b!887550 (= e!581837 (and tp!279638 tp!279639))))

(declare-fun b!887551 () Bool)

(declare-fun tp!279640 () Bool)

(declare-fun tp!279635 () Bool)

(assert (=> b!887551 (= e!581837 (and tp!279640 tp!279635))))

(declare-fun b!887552 () Bool)

(assert (=> b!887552 (= e!581836 true)))

(declare-fun lt!331866 () Bool)

(declare-datatypes ((List!9519 0))(
  ( (Nil!9503) (Cons!9503 (h!14904 C!5148) (t!100565 List!9519)) )
))
(declare-fun s!10566 () List!9519)

(declare-fun matchR!827 (Regex!2289 List!9519) Bool)

(assert (=> b!887552 (= lt!331866 (matchR!827 (Union!2289 (regOne!5091 r!15766) (regTwo!5091 r!15766)) s!10566))))

(declare-fun b!887553 () Bool)

(assert (=> b!887553 (= e!581837 tp_is_empty!4221)))

(declare-fun res!403702 () Bool)

(declare-fun e!581835 () Bool)

(assert (=> start!80158 (=> (not res!403702) (not e!581835))))

(assert (=> start!80158 (= res!403702 (validRegex!758 r!15766))))

(assert (=> start!80158 e!581835))

(assert (=> start!80158 e!581837))

(assert (=> start!80158 e!581834))

(declare-fun b!887554 () Bool)

(declare-fun tp!279636 () Bool)

(assert (=> b!887554 (= e!581837 tp!279636)))

(declare-fun b!887555 () Bool)

(assert (=> b!887555 (= e!581835 (not e!581836))))

(declare-fun res!403700 () Bool)

(assert (=> b!887555 (=> res!403700 e!581836)))

(declare-fun lt!331867 () Bool)

(get-info :version)

(assert (=> b!887555 (= res!403700 (or (not lt!331867) (and ((_ is Concat!4122) r!15766) ((_ is EmptyExpr!2289) (regOne!5090 r!15766))) (and ((_ is Concat!4122) r!15766) ((_ is EmptyExpr!2289) (regTwo!5090 r!15766))) ((_ is Concat!4122) r!15766) (not ((_ is Union!2289) r!15766))))))

(declare-fun matchRSpec!90 (Regex!2289 List!9519) Bool)

(assert (=> b!887555 (= lt!331867 (matchRSpec!90 r!15766 s!10566))))

(assert (=> b!887555 (= lt!331867 (matchR!827 r!15766 s!10566))))

(declare-datatypes ((Unit!14157 0))(
  ( (Unit!14158) )
))
(declare-fun lt!331865 () Unit!14157)

(declare-fun mainMatchTheorem!90 (Regex!2289 List!9519) Unit!14157)

(assert (=> b!887555 (= lt!331865 (mainMatchTheorem!90 r!15766 s!10566))))

(assert (= (and start!80158 res!403702) b!887555))

(assert (= (and b!887555 (not res!403700)) b!887549))

(assert (= (and b!887549 (not res!403701)) b!887548))

(assert (= (and b!887548 (not res!403699)) b!887552))

(assert (= (and start!80158 ((_ is ElementMatch!2289) r!15766)) b!887553))

(assert (= (and start!80158 ((_ is Concat!4122) r!15766)) b!887551))

(assert (= (and start!80158 ((_ is Star!2289) r!15766)) b!887554))

(assert (= (and start!80158 ((_ is Union!2289) r!15766)) b!887550))

(assert (= (and start!80158 ((_ is Cons!9503) s!10566)) b!887547))

(declare-fun m!1132679 () Bool)

(assert (=> start!80158 m!1132679))

(declare-fun m!1132681 () Bool)

(assert (=> b!887548 m!1132681))

(declare-fun m!1132683 () Bool)

(assert (=> b!887555 m!1132683))

(declare-fun m!1132685 () Bool)

(assert (=> b!887555 m!1132685))

(declare-fun m!1132687 () Bool)

(assert (=> b!887555 m!1132687))

(declare-fun m!1132689 () Bool)

(assert (=> b!887552 m!1132689))

(declare-fun m!1132691 () Bool)

(assert (=> b!887549 m!1132691))

(check-sat (not b!887547) (not b!887550) (not b!887552) (not b!887551) (not b!887548) (not b!887549) (not b!887555) tp_is_empty!4221 (not b!887554) (not start!80158))
(check-sat)
