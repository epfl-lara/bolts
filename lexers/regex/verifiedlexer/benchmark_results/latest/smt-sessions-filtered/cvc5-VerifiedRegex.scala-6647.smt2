; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349788 () Bool)

(assert start!349788)

(declare-fun b!3709563 () Bool)

(declare-fun e!2297549 () Bool)

(declare-fun tp!1128805 () Bool)

(declare-fun tp!1128806 () Bool)

(assert (=> b!3709563 (= e!2297549 (and tp!1128805 tp!1128806))))

(declare-fun b!3709564 () Bool)

(declare-fun tp!1128801 () Bool)

(declare-fun tp!1128803 () Bool)

(assert (=> b!3709564 (= e!2297549 (and tp!1128801 tp!1128803))))

(declare-fun b!3709565 () Bool)

(declare-fun e!2297551 () Bool)

(declare-fun tp_is_empty!18679 () Bool)

(declare-fun tp!1128804 () Bool)

(assert (=> b!3709565 (= e!2297551 (and tp_is_empty!18679 tp!1128804))))

(declare-fun b!3709566 () Bool)

(assert (=> b!3709566 (= e!2297549 tp_is_empty!18679)))

(declare-fun b!3709567 () Bool)

(declare-fun res!1508719 () Bool)

(declare-fun e!2297550 () Bool)

(assert (=> b!3709567 (=> (not res!1508719) (not e!2297550))))

(declare-datatypes ((C!21850 0))(
  ( (C!21851 (val!12973 Int)) )
))
(declare-datatypes ((Regex!10832 0))(
  ( (ElementMatch!10832 (c!640754 C!21850)) (Concat!17103 (regOne!22176 Regex!10832) (regTwo!22176 Regex!10832)) (EmptyExpr!10832) (Star!10832 (reg!11161 Regex!10832)) (EmptyLang!10832) (Union!10832 (regOne!22177 Regex!10832) (regTwo!22177 Regex!10832)) )
))
(declare-fun r!26030 () Regex!10832)

(declare-datatypes ((List!39713 0))(
  ( (Nil!39589) (Cons!39589 (h!45009 C!21850) (t!302396 List!39713)) )
))
(declare-fun s!14932 () List!39713)

(declare-fun matchR!5289 (Regex!10832 List!39713) Bool)

(assert (=> b!3709567 (= res!1508719 (matchR!5289 r!26030 s!14932))))

(declare-fun b!3709568 () Bool)

(declare-fun res!1508721 () Bool)

(assert (=> b!3709568 (=> (not res!1508721) (not e!2297550))))

(declare-fun c!13437 () C!21850)

(declare-fun contains!7925 (List!39713 C!21850) Bool)

(declare-fun usedCharacters!1095 (Regex!10832) List!39713)

(assert (=> b!3709568 (= res!1508721 (not (contains!7925 (usedCharacters!1095 r!26030) c!13437)))))

(declare-fun res!1508718 () Bool)

(assert (=> start!349788 (=> (not res!1508718) (not e!2297550))))

(declare-fun validRegex!4939 (Regex!10832) Bool)

(assert (=> start!349788 (= res!1508718 (validRegex!4939 r!26030))))

(assert (=> start!349788 e!2297550))

(assert (=> start!349788 e!2297549))

(assert (=> start!349788 e!2297551))

(assert (=> start!349788 tp_is_empty!18679))

(declare-fun b!3709569 () Bool)

(declare-fun tp!1128802 () Bool)

(assert (=> b!3709569 (= e!2297549 tp!1128802)))

(declare-fun b!3709570 () Bool)

(declare-fun res!1508717 () Bool)

(assert (=> b!3709570 (=> (not res!1508717) (not e!2297550))))

(assert (=> b!3709570 (= res!1508717 (contains!7925 s!14932 c!13437))))

(declare-fun b!3709571 () Bool)

(assert (=> b!3709571 (= e!2297550 (not true))))

(declare-fun lt!1296722 () Bool)

(declare-fun nullable!3759 (Regex!10832) Bool)

(declare-fun derivative!346 (Regex!10832 List!39713) Regex!10832)

(declare-fun derivativeStep!3301 (Regex!10832 C!21850) Regex!10832)

(declare-fun tail!5739 (List!39713) List!39713)

(assert (=> b!3709571 (= lt!1296722 (nullable!3759 (derivative!346 (derivativeStep!3301 r!26030 c!13437) (tail!5739 s!14932))))))

(assert (=> b!3709571 (matchR!5289 (derivative!346 r!26030 s!14932) Nil!39589)))

(declare-datatypes ((Unit!57474 0))(
  ( (Unit!57475) )
))
(declare-fun lt!1296721 () Unit!57474)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!235 (Regex!10832 List!39713) Unit!57474)

(assert (=> b!3709571 (= lt!1296721 (lemmaMatchRIsSameAsWholeDerivativeAndNil!235 r!26030 s!14932))))

(declare-fun b!3709572 () Bool)

(declare-fun res!1508720 () Bool)

(assert (=> b!3709572 (=> (not res!1508720) (not e!2297550))))

(declare-fun head!8010 (List!39713) C!21850)

(assert (=> b!3709572 (= res!1508720 (= (head!8010 s!14932) c!13437))))

(assert (= (and start!349788 res!1508718) b!3709570))

(assert (= (and b!3709570 res!1508717) b!3709572))

(assert (= (and b!3709572 res!1508720) b!3709568))

(assert (= (and b!3709568 res!1508721) b!3709567))

(assert (= (and b!3709567 res!1508719) b!3709571))

(assert (= (and start!349788 (is-ElementMatch!10832 r!26030)) b!3709566))

(assert (= (and start!349788 (is-Concat!17103 r!26030)) b!3709564))

(assert (= (and start!349788 (is-Star!10832 r!26030)) b!3709569))

(assert (= (and start!349788 (is-Union!10832 r!26030)) b!3709563))

(assert (= (and start!349788 (is-Cons!39589 s!14932)) b!3709565))

(declare-fun m!4217733 () Bool)

(assert (=> b!3709571 m!4217733))

(declare-fun m!4217735 () Bool)

(assert (=> b!3709571 m!4217735))

(declare-fun m!4217737 () Bool)

(assert (=> b!3709571 m!4217737))

(declare-fun m!4217739 () Bool)

(assert (=> b!3709571 m!4217739))

(declare-fun m!4217741 () Bool)

(assert (=> b!3709571 m!4217741))

(assert (=> b!3709571 m!4217737))

(declare-fun m!4217743 () Bool)

(assert (=> b!3709571 m!4217743))

(assert (=> b!3709571 m!4217733))

(assert (=> b!3709571 m!4217735))

(declare-fun m!4217745 () Bool)

(assert (=> b!3709571 m!4217745))

(assert (=> b!3709571 m!4217739))

(declare-fun m!4217747 () Bool)

(assert (=> start!349788 m!4217747))

(declare-fun m!4217749 () Bool)

(assert (=> b!3709572 m!4217749))

(declare-fun m!4217751 () Bool)

(assert (=> b!3709570 m!4217751))

(declare-fun m!4217753 () Bool)

(assert (=> b!3709567 m!4217753))

(declare-fun m!4217755 () Bool)

(assert (=> b!3709568 m!4217755))

(assert (=> b!3709568 m!4217755))

(declare-fun m!4217757 () Bool)

(assert (=> b!3709568 m!4217757))

(push 1)

(assert (not start!349788))

(assert (not b!3709568))

(assert (not b!3709567))

(assert tp_is_empty!18679)

(assert (not b!3709572))

(assert (not b!3709564))

(assert (not b!3709569))

(assert (not b!3709565))

(assert (not b!3709563))

(assert (not b!3709571))

(assert (not b!3709570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

