; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284730 () Bool)

(assert start!284730)

(declare-fun res!1208251 () Bool)

(declare-fun e!1846411 () Bool)

(assert (=> start!284730 (=> (not res!1208251) (not e!1846411))))

(declare-datatypes ((C!18234 0))(
  ( (C!18235 (val!11153 Int)) )
))
(declare-datatypes ((Regex!9024 0))(
  ( (ElementMatch!9024 (c!478144 C!18234)) (Concat!14345 (regOne!18560 Regex!9024) (regTwo!18560 Regex!9024)) (EmptyExpr!9024) (Star!9024 (reg!9353 Regex!9024)) (EmptyLang!9024) (Union!9024 (regOne!18561 Regex!9024) (regTwo!18561 Regex!9024)) )
))
(declare-fun r!17423 () Regex!9024)

(declare-fun validRegex!3757 (Regex!9024) Bool)

(assert (=> start!284730 (= res!1208251 (validRegex!3757 r!17423))))

(assert (=> start!284730 e!1846411))

(declare-fun e!1846410 () Bool)

(assert (=> start!284730 e!1846410))

(declare-fun e!1846412 () Bool)

(assert (=> start!284730 e!1846412))

(declare-fun b!2927476 () Bool)

(declare-fun tp!938512 () Bool)

(declare-fun tp!938513 () Bool)

(assert (=> b!2927476 (= e!1846410 (and tp!938512 tp!938513))))

(declare-fun b!2927477 () Bool)

(assert (=> b!2927477 (= e!1846411 (not true))))

(declare-datatypes ((List!34889 0))(
  ( (Nil!34765) (Cons!34765 (h!40185 C!18234) (t!233954 List!34889)) )
))
(declare-fun s!11993 () List!34889)

(declare-fun matchR!3906 (Regex!9024 List!34889) Bool)

(declare-fun matchRSpec!1161 (Regex!9024 List!34889) Bool)

(assert (=> b!2927477 (= (matchR!3906 r!17423 s!11993) (matchRSpec!1161 r!17423 s!11993))))

(declare-datatypes ((Unit!48387 0))(
  ( (Unit!48388) )
))
(declare-fun lt!1027048 () Unit!48387)

(declare-fun mainMatchTheorem!1161 (Regex!9024 List!34889) Unit!48387)

(assert (=> b!2927477 (= lt!1027048 (mainMatchTheorem!1161 r!17423 s!11993))))

(declare-fun b!2927478 () Bool)

(declare-fun tp!938515 () Bool)

(declare-fun tp!938511 () Bool)

(assert (=> b!2927478 (= e!1846410 (and tp!938515 tp!938511))))

(declare-fun b!2927479 () Bool)

(declare-fun tp_is_empty!15611 () Bool)

(assert (=> b!2927479 (= e!1846410 tp_is_empty!15611)))

(declare-fun b!2927480 () Bool)

(declare-fun tp!938514 () Bool)

(assert (=> b!2927480 (= e!1846410 tp!938514)))

(declare-fun b!2927481 () Bool)

(declare-fun tp!938510 () Bool)

(assert (=> b!2927481 (= e!1846412 (and tp_is_empty!15611 tp!938510))))

(assert (= (and start!284730 res!1208251) b!2927477))

(assert (= (and start!284730 (is-ElementMatch!9024 r!17423)) b!2927479))

(assert (= (and start!284730 (is-Concat!14345 r!17423)) b!2927478))

(assert (= (and start!284730 (is-Star!9024 r!17423)) b!2927480))

(assert (= (and start!284730 (is-Union!9024 r!17423)) b!2927476))

(assert (= (and start!284730 (is-Cons!34765 s!11993)) b!2927481))

(declare-fun m!3319449 () Bool)

(assert (=> start!284730 m!3319449))

(declare-fun m!3319451 () Bool)

(assert (=> b!2927477 m!3319451))

(declare-fun m!3319453 () Bool)

(assert (=> b!2927477 m!3319453))

(declare-fun m!3319455 () Bool)

(assert (=> b!2927477 m!3319455))

(push 1)

(assert (not b!2927478))

(assert (not b!2927480))

(assert (not b!2927476))

(assert (not start!284730))

(assert tp_is_empty!15611)

(assert (not b!2927481))

(assert (not b!2927477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

