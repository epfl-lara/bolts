; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284302 () Bool)

(assert start!284302)

(declare-fun b!2919138 () Bool)

(declare-fun e!1841744 () Bool)

(declare-fun e!1841741 () Bool)

(assert (=> b!2919138 (= e!1841744 (not e!1841741))))

(declare-fun res!1205149 () Bool)

(assert (=> b!2919138 (=> res!1205149 e!1841741)))

(declare-fun lt!1025364 () Bool)

(declare-datatypes ((C!18158 0))(
  ( (C!18159 (val!11115 Int)) )
))
(declare-datatypes ((Regex!8986 0))(
  ( (ElementMatch!8986 (c!476242 C!18158)) (Concat!14307 (regOne!18484 Regex!8986) (regTwo!18484 Regex!8986)) (EmptyExpr!8986) (Star!8986 (reg!9315 Regex!8986)) (EmptyLang!8986) (Union!8986 (regOne!18485 Regex!8986) (regTwo!18485 Regex!8986)) )
))
(declare-fun r!17423 () Regex!8986)

(assert (=> b!2919138 (= res!1205149 (or (not lt!1025364) (is-Concat!14307 r!17423) (not (is-Union!8986 r!17423))))))

(declare-datatypes ((List!34851 0))(
  ( (Nil!34727) (Cons!34727 (h!40147 C!18158) (t!233916 List!34851)) )
))
(declare-fun s!11993 () List!34851)

(declare-fun matchRSpec!1123 (Regex!8986 List!34851) Bool)

(assert (=> b!2919138 (= lt!1025364 (matchRSpec!1123 r!17423 s!11993))))

(declare-fun matchR!3868 (Regex!8986 List!34851) Bool)

(assert (=> b!2919138 (= lt!1025364 (matchR!3868 r!17423 s!11993))))

(declare-datatypes ((Unit!48311 0))(
  ( (Unit!48312) )
))
(declare-fun lt!1025362 () Unit!48311)

(declare-fun mainMatchTheorem!1123 (Regex!8986 List!34851) Unit!48311)

(assert (=> b!2919138 (= lt!1025362 (mainMatchTheorem!1123 r!17423 s!11993))))

(declare-fun b!2919139 () Bool)

(declare-fun e!1841743 () Bool)

(declare-fun tp!936915 () Bool)

(declare-fun tp!936918 () Bool)

(assert (=> b!2919139 (= e!1841743 (and tp!936915 tp!936918))))

(declare-fun b!2919140 () Bool)

(declare-fun tp_is_empty!15535 () Bool)

(assert (=> b!2919140 (= e!1841743 tp_is_empty!15535)))

(declare-fun b!2919141 () Bool)

(declare-fun e!1841742 () Bool)

(assert (=> b!2919141 (= e!1841742 (matchR!3868 (regTwo!18485 r!17423) s!11993))))

(declare-fun res!1205147 () Bool)

(assert (=> start!284302 (=> (not res!1205147) (not e!1841744))))

(declare-fun validRegex!3719 (Regex!8986) Bool)

(assert (=> start!284302 (= res!1205147 (validRegex!3719 r!17423))))

(assert (=> start!284302 e!1841744))

(assert (=> start!284302 e!1841743))

(declare-fun e!1841740 () Bool)

(assert (=> start!284302 e!1841740))

(declare-fun b!2919142 () Bool)

(assert (=> b!2919142 (= e!1841741 true)))

(assert (=> b!2919142 e!1841742))

(declare-fun res!1205148 () Bool)

(assert (=> b!2919142 (=> res!1205148 e!1841742)))

(assert (=> b!2919142 (= res!1205148 (matchR!3868 (regOne!18485 r!17423) s!11993))))

(declare-fun lt!1025363 () Unit!48311)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!235 (Regex!8986 Regex!8986 List!34851) Unit!48311)

(assert (=> b!2919142 (= lt!1025363 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!235 (regOne!18485 r!17423) (regTwo!18485 r!17423) s!11993))))

(declare-fun b!2919143 () Bool)

(declare-fun tp!936914 () Bool)

(assert (=> b!2919143 (= e!1841743 tp!936914)))

(declare-fun b!2919144 () Bool)

(declare-fun tp!936919 () Bool)

(declare-fun tp!936917 () Bool)

(assert (=> b!2919144 (= e!1841743 (and tp!936919 tp!936917))))

(declare-fun b!2919145 () Bool)

(declare-fun tp!936916 () Bool)

(assert (=> b!2919145 (= e!1841740 (and tp_is_empty!15535 tp!936916))))

(assert (= (and start!284302 res!1205147) b!2919138))

(assert (= (and b!2919138 (not res!1205149)) b!2919142))

(assert (= (and b!2919142 (not res!1205148)) b!2919141))

(assert (= (and start!284302 (is-ElementMatch!8986 r!17423)) b!2919140))

(assert (= (and start!284302 (is-Concat!14307 r!17423)) b!2919139))

(assert (= (and start!284302 (is-Star!8986 r!17423)) b!2919143))

(assert (= (and start!284302 (is-Union!8986 r!17423)) b!2919144))

(assert (= (and start!284302 (is-Cons!34727 s!11993)) b!2919145))

(declare-fun m!3316385 () Bool)

(assert (=> b!2919138 m!3316385))

(declare-fun m!3316387 () Bool)

(assert (=> b!2919138 m!3316387))

(declare-fun m!3316389 () Bool)

(assert (=> b!2919138 m!3316389))

(declare-fun m!3316391 () Bool)

(assert (=> b!2919141 m!3316391))

(declare-fun m!3316393 () Bool)

(assert (=> start!284302 m!3316393))

(declare-fun m!3316395 () Bool)

(assert (=> b!2919142 m!3316395))

(declare-fun m!3316397 () Bool)

(assert (=> b!2919142 m!3316397))

(push 1)

(assert (not b!2919143))

(assert (not b!2919138))

(assert (not b!2919141))

(assert (not b!2919142))

(assert (not b!2919145))

(assert (not b!2919144))

(assert tp_is_empty!15535)

(assert (not b!2919139))

(assert (not start!284302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

