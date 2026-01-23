; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284446 () Bool)

(assert start!284446)

(declare-fun b!2921968 () Bool)

(declare-fun e!1843330 () Bool)

(declare-fun tp_is_empty!15563 () Bool)

(declare-fun tp!937472 () Bool)

(assert (=> b!2921968 (= e!1843330 (and tp_is_empty!15563 tp!937472))))

(declare-fun b!2921969 () Bool)

(declare-fun e!1843326 () Bool)

(declare-fun tp!937475 () Bool)

(declare-fun tp!937474 () Bool)

(assert (=> b!2921969 (= e!1843326 (and tp!937475 tp!937474))))

(declare-fun res!1206205 () Bool)

(declare-fun e!1843328 () Bool)

(assert (=> start!284446 (=> (not res!1206205) (not e!1843328))))

(declare-datatypes ((C!18186 0))(
  ( (C!18187 (val!11129 Int)) )
))
(declare-datatypes ((Regex!9000 0))(
  ( (ElementMatch!9000 (c!476882 C!18186)) (Concat!14321 (regOne!18512 Regex!9000) (regTwo!18512 Regex!9000)) (EmptyExpr!9000) (Star!9000 (reg!9329 Regex!9000)) (EmptyLang!9000) (Union!9000 (regOne!18513 Regex!9000) (regTwo!18513 Regex!9000)) )
))
(declare-fun r!17423 () Regex!9000)

(declare-fun validRegex!3733 (Regex!9000) Bool)

(assert (=> start!284446 (= res!1206205 (validRegex!3733 r!17423))))

(assert (=> start!284446 e!1843328))

(assert (=> start!284446 e!1843326))

(assert (=> start!284446 e!1843330))

(declare-fun b!2921970 () Bool)

(declare-fun e!1843329 () Bool)

(declare-datatypes ((List!34865 0))(
  ( (Nil!34741) (Cons!34741 (h!40161 C!18186) (t!233930 List!34865)) )
))
(declare-fun s!11993 () List!34865)

(declare-fun matchR!3882 (Regex!9000 List!34865) Bool)

(assert (=> b!2921970 (= e!1843329 (matchR!3882 (regTwo!18513 r!17423) s!11993))))

(declare-fun b!2921971 () Bool)

(assert (=> b!2921971 (= e!1843326 tp_is_empty!15563)))

(declare-fun b!2921972 () Bool)

(declare-fun e!1843327 () Bool)

(assert (=> b!2921972 (= e!1843327 true)))

(assert (=> b!2921972 e!1843329))

(declare-fun res!1206203 () Bool)

(assert (=> b!2921972 (=> res!1206203 e!1843329)))

(assert (=> b!2921972 (= res!1206203 (matchR!3882 (regOne!18513 r!17423) s!11993))))

(declare-datatypes ((Unit!48339 0))(
  ( (Unit!48340) )
))
(declare-fun lt!1025904 () Unit!48339)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!249 (Regex!9000 Regex!9000 List!34865) Unit!48339)

(assert (=> b!2921972 (= lt!1025904 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!249 (regOne!18513 r!17423) (regTwo!18513 r!17423) s!11993))))

(declare-fun b!2921973 () Bool)

(declare-fun tp!937473 () Bool)

(declare-fun tp!937471 () Bool)

(assert (=> b!2921973 (= e!1843326 (and tp!937473 tp!937471))))

(declare-fun b!2921974 () Bool)

(declare-fun tp!937470 () Bool)

(assert (=> b!2921974 (= e!1843326 tp!937470)))

(declare-fun b!2921975 () Bool)

(assert (=> b!2921975 (= e!1843328 (not e!1843327))))

(declare-fun res!1206204 () Bool)

(assert (=> b!2921975 (=> res!1206204 e!1843327)))

(declare-fun lt!1025906 () Bool)

(assert (=> b!2921975 (= res!1206204 (or (not lt!1025906) (is-Concat!14321 r!17423) (not (is-Union!9000 r!17423))))))

(declare-fun matchRSpec!1137 (Regex!9000 List!34865) Bool)

(assert (=> b!2921975 (= lt!1025906 (matchRSpec!1137 r!17423 s!11993))))

(assert (=> b!2921975 (= lt!1025906 (matchR!3882 r!17423 s!11993))))

(declare-fun lt!1025905 () Unit!48339)

(declare-fun mainMatchTheorem!1137 (Regex!9000 List!34865) Unit!48339)

(assert (=> b!2921975 (= lt!1025905 (mainMatchTheorem!1137 r!17423 s!11993))))

(assert (= (and start!284446 res!1206205) b!2921975))

(assert (= (and b!2921975 (not res!1206204)) b!2921972))

(assert (= (and b!2921972 (not res!1206203)) b!2921970))

(assert (= (and start!284446 (is-ElementMatch!9000 r!17423)) b!2921971))

(assert (= (and start!284446 (is-Concat!14321 r!17423)) b!2921969))

(assert (= (and start!284446 (is-Star!9000 r!17423)) b!2921974))

(assert (= (and start!284446 (is-Union!9000 r!17423)) b!2921973))

(assert (= (and start!284446 (is-Cons!34741 s!11993)) b!2921968))

(declare-fun m!3317441 () Bool)

(assert (=> start!284446 m!3317441))

(declare-fun m!3317443 () Bool)

(assert (=> b!2921970 m!3317443))

(declare-fun m!3317445 () Bool)

(assert (=> b!2921972 m!3317445))

(declare-fun m!3317447 () Bool)

(assert (=> b!2921972 m!3317447))

(declare-fun m!3317449 () Bool)

(assert (=> b!2921975 m!3317449))

(declare-fun m!3317451 () Bool)

(assert (=> b!2921975 m!3317451))

(declare-fun m!3317453 () Bool)

(assert (=> b!2921975 m!3317453))

(push 1)

(assert (not b!2921974))

(assert (not b!2921972))

(assert (not start!284446))

(assert (not b!2921975))

(assert (not b!2921969))

(assert (not b!2921973))

(assert (not b!2921970))

(assert tp_is_empty!15563)

(assert (not b!2921968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

