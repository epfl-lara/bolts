; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285434 () Bool)

(assert start!285434)

(declare-fun b!2937758 () Bool)

(declare-fun e!1851737 () Bool)

(declare-fun e!1851734 () Bool)

(assert (=> b!2937758 (= e!1851737 (not e!1851734))))

(declare-fun res!1212704 () Bool)

(assert (=> b!2937758 (=> res!1212704 e!1851734)))

(declare-fun lt!1029449 () Bool)

(declare-datatypes ((C!18342 0))(
  ( (C!18343 (val!11207 Int)) )
))
(declare-datatypes ((Regex!9078 0))(
  ( (ElementMatch!9078 (c!480114 C!18342)) (Concat!14399 (regOne!18668 Regex!9078) (regTwo!18668 Regex!9078)) (EmptyExpr!9078) (Star!9078 (reg!9407 Regex!9078)) (EmptyLang!9078) (Union!9078 (regOne!18669 Regex!9078) (regTwo!18669 Regex!9078)) )
))
(declare-fun r!17423 () Regex!9078)

(assert (=> b!2937758 (= res!1212704 (or lt!1029449 (not (is-Concat!14399 r!17423))))))

(declare-datatypes ((List!34943 0))(
  ( (Nil!34819) (Cons!34819 (h!40239 C!18342) (t!234008 List!34943)) )
))
(declare-fun s!11993 () List!34943)

(declare-fun matchRSpec!1215 (Regex!9078 List!34943) Bool)

(assert (=> b!2937758 (= lt!1029449 (matchRSpec!1215 r!17423 s!11993))))

(declare-fun matchR!3960 (Regex!9078 List!34943) Bool)

(assert (=> b!2937758 (= lt!1029449 (matchR!3960 r!17423 s!11993))))

(declare-datatypes ((Unit!48535 0))(
  ( (Unit!48536) )
))
(declare-fun lt!1029448 () Unit!48535)

(declare-fun mainMatchTheorem!1215 (Regex!9078 List!34943) Unit!48535)

(assert (=> b!2937758 (= lt!1029448 (mainMatchTheorem!1215 r!17423 s!11993))))

(declare-fun b!2937759 () Bool)

(declare-fun res!1212703 () Bool)

(assert (=> b!2937759 (=> res!1212703 e!1851734)))

(declare-fun isEmpty!19080 (List!34943) Bool)

(assert (=> b!2937759 (= res!1212703 (isEmpty!19080 s!11993))))

(declare-fun b!2937760 () Bool)

(declare-fun e!1851736 () Bool)

(declare-fun tp_is_empty!15719 () Bool)

(assert (=> b!2937760 (= e!1851736 tp_is_empty!15719)))

(declare-fun b!2937761 () Bool)

(declare-fun tp!940551 () Bool)

(assert (=> b!2937761 (= e!1851736 tp!940551)))

(declare-fun b!2937762 () Bool)

(declare-fun tp!940550 () Bool)

(declare-fun tp!940547 () Bool)

(assert (=> b!2937762 (= e!1851736 (and tp!940550 tp!940547))))

(declare-fun b!2937763 () Bool)

(assert (=> b!2937763 (= e!1851734 true)))

(declare-fun lt!1029447 () Regex!9078)

(declare-fun simplify!83 (Regex!9078) Regex!9078)

(assert (=> b!2937763 (= lt!1029447 (simplify!83 (regTwo!18668 r!17423)))))

(declare-fun lt!1029446 () Regex!9078)

(assert (=> b!2937763 (= lt!1029446 (simplify!83 (regOne!18668 r!17423)))))

(declare-fun res!1212705 () Bool)

(assert (=> start!285434 (=> (not res!1212705) (not e!1851737))))

(declare-fun validRegex!3811 (Regex!9078) Bool)

(assert (=> start!285434 (= res!1212705 (validRegex!3811 r!17423))))

(assert (=> start!285434 e!1851737))

(assert (=> start!285434 e!1851736))

(declare-fun e!1851735 () Bool)

(assert (=> start!285434 e!1851735))

(declare-fun b!2937764 () Bool)

(declare-fun tp!940549 () Bool)

(assert (=> b!2937764 (= e!1851735 (and tp_is_empty!15719 tp!940549))))

(declare-fun b!2937765 () Bool)

(declare-fun tp!940548 () Bool)

(declare-fun tp!940546 () Bool)

(assert (=> b!2937765 (= e!1851736 (and tp!940548 tp!940546))))

(assert (= (and start!285434 res!1212705) b!2937758))

(assert (= (and b!2937758 (not res!1212704)) b!2937759))

(assert (= (and b!2937759 (not res!1212703)) b!2937763))

(assert (= (and start!285434 (is-ElementMatch!9078 r!17423)) b!2937760))

(assert (= (and start!285434 (is-Concat!14399 r!17423)) b!2937762))

(assert (= (and start!285434 (is-Star!9078 r!17423)) b!2937761))

(assert (= (and start!285434 (is-Union!9078 r!17423)) b!2937765))

(assert (= (and start!285434 (is-Cons!34819 s!11993)) b!2937764))

(declare-fun m!3324169 () Bool)

(assert (=> b!2937758 m!3324169))

(declare-fun m!3324171 () Bool)

(assert (=> b!2937758 m!3324171))

(declare-fun m!3324173 () Bool)

(assert (=> b!2937758 m!3324173))

(declare-fun m!3324175 () Bool)

(assert (=> b!2937759 m!3324175))

(declare-fun m!3324177 () Bool)

(assert (=> b!2937763 m!3324177))

(declare-fun m!3324179 () Bool)

(assert (=> b!2937763 m!3324179))

(declare-fun m!3324181 () Bool)

(assert (=> start!285434 m!3324181))

(push 1)

(assert (not b!2937762))

(assert (not b!2937764))

(assert (not b!2937761))

(assert (not b!2937763))

(assert (not b!2937758))

(assert (not b!2937765))

(assert tp_is_empty!15719)

(assert (not start!285434))

(assert (not b!2937759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

