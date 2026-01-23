; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349750 () Bool)

(assert start!349750)

(declare-fun b!3709109 () Bool)

(declare-fun res!1508541 () Bool)

(declare-fun e!2297341 () Bool)

(assert (=> b!3709109 (=> (not res!1508541) (not e!2297341))))

(declare-datatypes ((C!21840 0))(
  ( (C!21841 (val!12968 Int)) )
))
(declare-datatypes ((List!39708 0))(
  ( (Nil!39584) (Cons!39584 (h!45004 C!21840) (t!302391 List!39708)) )
))
(declare-fun s!14932 () List!39708)

(declare-fun c!13437 () C!21840)

(declare-fun head!8005 (List!39708) C!21840)

(assert (=> b!3709109 (= res!1508541 (= (head!8005 s!14932) c!13437))))

(declare-fun b!3709110 () Bool)

(declare-fun res!1508542 () Bool)

(assert (=> b!3709110 (=> (not res!1508542) (not e!2297341))))

(declare-fun contains!7920 (List!39708 C!21840) Bool)

(assert (=> b!3709110 (= res!1508542 (contains!7920 s!14932 c!13437))))

(declare-fun b!3709111 () Bool)

(declare-fun e!2297342 () Bool)

(declare-fun tp_is_empty!18669 () Bool)

(declare-fun tp!1128636 () Bool)

(assert (=> b!3709111 (= e!2297342 (and tp_is_empty!18669 tp!1128636))))

(declare-fun b!3709112 () Bool)

(assert (=> b!3709112 (= e!2297341 false)))

(declare-fun lt!1296676 () Bool)

(declare-datatypes ((Regex!10827 0))(
  ( (ElementMatch!10827 (c!640683 C!21840)) (Concat!17098 (regOne!22166 Regex!10827) (regTwo!22166 Regex!10827)) (EmptyExpr!10827) (Star!10827 (reg!11156 Regex!10827)) (EmptyLang!10827) (Union!10827 (regOne!22167 Regex!10827) (regTwo!22167 Regex!10827)) )
))
(declare-fun r!26030 () Regex!10827)

(declare-fun usedCharacters!1090 (Regex!10827) List!39708)

(assert (=> b!3709112 (= lt!1296676 (contains!7920 (usedCharacters!1090 r!26030) c!13437))))

(declare-fun b!3709113 () Bool)

(declare-fun e!2297340 () Bool)

(declare-fun tp!1128635 () Bool)

(assert (=> b!3709113 (= e!2297340 tp!1128635)))

(declare-fun res!1508540 () Bool)

(assert (=> start!349750 (=> (not res!1508540) (not e!2297341))))

(declare-fun validRegex!4934 (Regex!10827) Bool)

(assert (=> start!349750 (= res!1508540 (validRegex!4934 r!26030))))

(assert (=> start!349750 e!2297341))

(assert (=> start!349750 e!2297340))

(assert (=> start!349750 e!2297342))

(assert (=> start!349750 tp_is_empty!18669))

(declare-fun b!3709114 () Bool)

(assert (=> b!3709114 (= e!2297340 tp_is_empty!18669)))

(declare-fun b!3709115 () Bool)

(declare-fun tp!1128637 () Bool)

(declare-fun tp!1128639 () Bool)

(assert (=> b!3709115 (= e!2297340 (and tp!1128637 tp!1128639))))

(declare-fun b!3709116 () Bool)

(declare-fun tp!1128640 () Bool)

(declare-fun tp!1128638 () Bool)

(assert (=> b!3709116 (= e!2297340 (and tp!1128640 tp!1128638))))

(assert (= (and start!349750 res!1508540) b!3709110))

(assert (= (and b!3709110 res!1508542) b!3709109))

(assert (= (and b!3709109 res!1508541) b!3709112))

(get-info :version)

(assert (= (and start!349750 ((_ is ElementMatch!10827) r!26030)) b!3709114))

(assert (= (and start!349750 ((_ is Concat!17098) r!26030)) b!3709116))

(assert (= (and start!349750 ((_ is Star!10827) r!26030)) b!3709113))

(assert (= (and start!349750 ((_ is Union!10827) r!26030)) b!3709115))

(assert (= (and start!349750 ((_ is Cons!39584) s!14932)) b!3709111))

(declare-fun m!4217543 () Bool)

(assert (=> b!3709109 m!4217543))

(declare-fun m!4217545 () Bool)

(assert (=> b!3709110 m!4217545))

(declare-fun m!4217547 () Bool)

(assert (=> b!3709112 m!4217547))

(assert (=> b!3709112 m!4217547))

(declare-fun m!4217549 () Bool)

(assert (=> b!3709112 m!4217549))

(declare-fun m!4217551 () Bool)

(assert (=> start!349750 m!4217551))

(check-sat (not b!3709116) (not b!3709111) (not start!349750) tp_is_empty!18669 (not b!3709110) (not b!3709109) (not b!3709112) (not b!3709113) (not b!3709115))
(check-sat)
