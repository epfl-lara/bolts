; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285742 () Bool)

(assert start!285742)

(declare-fun b!2943122 () Bool)

(declare-fun e!1854533 () Bool)

(declare-fun tp!941694 () Bool)

(declare-fun tp!941693 () Bool)

(assert (=> b!2943122 (= e!1854533 (and tp!941694 tp!941693))))

(declare-fun b!2943123 () Bool)

(declare-fun res!1214653 () Bool)

(declare-fun e!1854531 () Bool)

(assert (=> b!2943123 (=> res!1214653 e!1854531)))

(declare-datatypes ((C!18410 0))(
  ( (C!18411 (val!11241 Int)) )
))
(declare-datatypes ((List!34977 0))(
  ( (Nil!34853) (Cons!34853 (h!40273 C!18410) (t!234042 List!34977)) )
))
(declare-fun s!11993 () List!34977)

(declare-fun isEmpty!19114 (List!34977) Bool)

(assert (=> b!2943123 (= res!1214653 (isEmpty!19114 s!11993))))

(declare-fun b!2943124 () Bool)

(declare-fun e!1854530 () Bool)

(assert (=> b!2943124 (= e!1854530 (not e!1854531))))

(declare-fun res!1214651 () Bool)

(assert (=> b!2943124 (=> res!1214651 e!1854531)))

(declare-fun lt!1030557 () Bool)

(declare-datatypes ((Regex!9112 0))(
  ( (ElementMatch!9112 (c!481320 C!18410)) (Concat!14433 (regOne!18736 Regex!9112) (regTwo!18736 Regex!9112)) (EmptyExpr!9112) (Star!9112 (reg!9441 Regex!9112)) (EmptyLang!9112) (Union!9112 (regOne!18737 Regex!9112) (regTwo!18737 Regex!9112)) )
))
(declare-fun r!17423 () Regex!9112)

(assert (=> b!2943124 (= res!1214651 (or lt!1030557 (not (is-Concat!14433 r!17423))))))

(declare-fun matchRSpec!1249 (Regex!9112 List!34977) Bool)

(assert (=> b!2943124 (= lt!1030557 (matchRSpec!1249 r!17423 s!11993))))

(declare-fun matchR!3994 (Regex!9112 List!34977) Bool)

(assert (=> b!2943124 (= lt!1030557 (matchR!3994 r!17423 s!11993))))

(declare-datatypes ((Unit!48603 0))(
  ( (Unit!48604) )
))
(declare-fun lt!1030556 () Unit!48603)

(declare-fun mainMatchTheorem!1249 (Regex!9112 List!34977) Unit!48603)

(assert (=> b!2943124 (= lt!1030556 (mainMatchTheorem!1249 r!17423 s!11993))))

(declare-fun b!2943125 () Bool)

(declare-fun tp!941692 () Bool)

(declare-fun tp!941691 () Bool)

(assert (=> b!2943125 (= e!1854533 (and tp!941692 tp!941691))))

(declare-fun b!2943126 () Bool)

(declare-fun e!1854532 () Bool)

(declare-fun tp_is_empty!15787 () Bool)

(declare-fun tp!941695 () Bool)

(assert (=> b!2943126 (= e!1854532 (and tp_is_empty!15787 tp!941695))))

(declare-fun b!2943127 () Bool)

(assert (=> b!2943127 (= e!1854531 true)))

(declare-fun lt!1030555 () Regex!9112)

(declare-fun simplify!117 (Regex!9112) Regex!9112)

(assert (=> b!2943127 (= lt!1030555 (simplify!117 (regTwo!18736 r!17423)))))

(declare-fun lt!1030554 () Regex!9112)

(assert (=> b!2943127 (= lt!1030554 (simplify!117 (regOne!18736 r!17423)))))

(declare-fun b!2943128 () Bool)

(declare-fun tp!941690 () Bool)

(assert (=> b!2943128 (= e!1854533 tp!941690)))

(declare-fun res!1214652 () Bool)

(assert (=> start!285742 (=> (not res!1214652) (not e!1854530))))

(declare-fun validRegex!3845 (Regex!9112) Bool)

(assert (=> start!285742 (= res!1214652 (validRegex!3845 r!17423))))

(assert (=> start!285742 e!1854530))

(assert (=> start!285742 e!1854533))

(assert (=> start!285742 e!1854532))

(declare-fun b!2943129 () Bool)

(assert (=> b!2943129 (= e!1854533 tp_is_empty!15787)))

(assert (= (and start!285742 res!1214652) b!2943124))

(assert (= (and b!2943124 (not res!1214651)) b!2943123))

(assert (= (and b!2943123 (not res!1214653)) b!2943127))

(assert (= (and start!285742 (is-ElementMatch!9112 r!17423)) b!2943129))

(assert (= (and start!285742 (is-Concat!14433 r!17423)) b!2943125))

(assert (= (and start!285742 (is-Star!9112 r!17423)) b!2943128))

(assert (= (and start!285742 (is-Union!9112 r!17423)) b!2943122))

(assert (= (and start!285742 (is-Cons!34853 s!11993)) b!2943126))

(declare-fun m!3326409 () Bool)

(assert (=> b!2943123 m!3326409))

(declare-fun m!3326411 () Bool)

(assert (=> b!2943124 m!3326411))

(declare-fun m!3326413 () Bool)

(assert (=> b!2943124 m!3326413))

(declare-fun m!3326415 () Bool)

(assert (=> b!2943124 m!3326415))

(declare-fun m!3326417 () Bool)

(assert (=> b!2943127 m!3326417))

(declare-fun m!3326419 () Bool)

(assert (=> b!2943127 m!3326419))

(declare-fun m!3326421 () Bool)

(assert (=> start!285742 m!3326421))

(push 1)

(assert (not b!2943123))

(assert (not start!285742))

(assert (not b!2943124))

(assert (not b!2943125))

(assert (not b!2943126))

(assert (not b!2943127))

(assert (not b!2943122))

(assert tp_is_empty!15787)

(assert (not b!2943128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

