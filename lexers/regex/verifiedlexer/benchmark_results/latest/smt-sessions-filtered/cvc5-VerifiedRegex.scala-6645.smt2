; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349752 () Bool)

(assert start!349752)

(declare-fun b!3709135 () Bool)

(declare-fun e!2297351 () Bool)

(declare-fun tp_is_empty!18671 () Bool)

(assert (=> b!3709135 (= e!2297351 tp_is_empty!18671)))

(declare-fun b!3709136 () Bool)

(declare-fun res!1508554 () Bool)

(declare-fun e!2297350 () Bool)

(assert (=> b!3709136 (=> (not res!1508554) (not e!2297350))))

(declare-datatypes ((C!21842 0))(
  ( (C!21843 (val!12969 Int)) )
))
(declare-datatypes ((List!39709 0))(
  ( (Nil!39585) (Cons!39585 (h!45005 C!21842) (t!302392 List!39709)) )
))
(declare-fun s!14932 () List!39709)

(declare-fun c!13437 () C!21842)

(declare-fun head!8006 (List!39709) C!21842)

(assert (=> b!3709136 (= res!1508554 (= (head!8006 s!14932) c!13437))))

(declare-fun b!3709137 () Bool)

(declare-fun e!2297349 () Bool)

(declare-fun tp!1128658 () Bool)

(assert (=> b!3709137 (= e!2297349 (and tp_is_empty!18671 tp!1128658))))

(declare-fun b!3709138 () Bool)

(declare-fun tp!1128654 () Bool)

(declare-fun tp!1128653 () Bool)

(assert (=> b!3709138 (= e!2297351 (and tp!1128654 tp!1128653))))

(declare-fun b!3709139 () Bool)

(declare-fun tp!1128655 () Bool)

(assert (=> b!3709139 (= e!2297351 tp!1128655)))

(declare-fun b!3709140 () Bool)

(declare-fun res!1508552 () Bool)

(assert (=> b!3709140 (=> (not res!1508552) (not e!2297350))))

(declare-fun contains!7921 (List!39709 C!21842) Bool)

(assert (=> b!3709140 (= res!1508552 (contains!7921 s!14932 c!13437))))

(declare-fun b!3709141 () Bool)

(assert (=> b!3709141 (= e!2297350 false)))

(declare-fun lt!1296679 () Bool)

(declare-datatypes ((Regex!10828 0))(
  ( (ElementMatch!10828 (c!640684 C!21842)) (Concat!17099 (regOne!22168 Regex!10828) (regTwo!22168 Regex!10828)) (EmptyExpr!10828) (Star!10828 (reg!11157 Regex!10828)) (EmptyLang!10828) (Union!10828 (regOne!22169 Regex!10828) (regTwo!22169 Regex!10828)) )
))
(declare-fun r!26030 () Regex!10828)

(declare-fun matchR!5285 (Regex!10828 List!39709) Bool)

(assert (=> b!3709141 (= lt!1296679 (matchR!5285 r!26030 s!14932))))

(declare-fun res!1508551 () Bool)

(assert (=> start!349752 (=> (not res!1508551) (not e!2297350))))

(declare-fun validRegex!4935 (Regex!10828) Bool)

(assert (=> start!349752 (= res!1508551 (validRegex!4935 r!26030))))

(assert (=> start!349752 e!2297350))

(assert (=> start!349752 e!2297351))

(assert (=> start!349752 e!2297349))

(assert (=> start!349752 tp_is_empty!18671))

(declare-fun b!3709142 () Bool)

(declare-fun tp!1128656 () Bool)

(declare-fun tp!1128657 () Bool)

(assert (=> b!3709142 (= e!2297351 (and tp!1128656 tp!1128657))))

(declare-fun b!3709143 () Bool)

(declare-fun res!1508553 () Bool)

(assert (=> b!3709143 (=> (not res!1508553) (not e!2297350))))

(declare-fun usedCharacters!1091 (Regex!10828) List!39709)

(assert (=> b!3709143 (= res!1508553 (not (contains!7921 (usedCharacters!1091 r!26030) c!13437)))))

(assert (= (and start!349752 res!1508551) b!3709140))

(assert (= (and b!3709140 res!1508552) b!3709136))

(assert (= (and b!3709136 res!1508554) b!3709143))

(assert (= (and b!3709143 res!1508553) b!3709141))

(assert (= (and start!349752 (is-ElementMatch!10828 r!26030)) b!3709135))

(assert (= (and start!349752 (is-Concat!17099 r!26030)) b!3709142))

(assert (= (and start!349752 (is-Star!10828 r!26030)) b!3709139))

(assert (= (and start!349752 (is-Union!10828 r!26030)) b!3709138))

(assert (= (and start!349752 (is-Cons!39585 s!14932)) b!3709137))

(declare-fun m!4217553 () Bool)

(assert (=> b!3709141 m!4217553))

(declare-fun m!4217555 () Bool)

(assert (=> b!3709143 m!4217555))

(assert (=> b!3709143 m!4217555))

(declare-fun m!4217557 () Bool)

(assert (=> b!3709143 m!4217557))

(declare-fun m!4217559 () Bool)

(assert (=> b!3709140 m!4217559))

(declare-fun m!4217561 () Bool)

(assert (=> b!3709136 m!4217561))

(declare-fun m!4217563 () Bool)

(assert (=> start!349752 m!4217563))

(push 1)

(assert (not b!3709140))

(assert (not b!3709139))

(assert tp_is_empty!18671)

(assert (not b!3709141))

(assert (not b!3709143))

(assert (not b!3709138))

(assert (not b!3709137))

(assert (not b!3709136))

(assert (not b!3709142))

(assert (not start!349752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

