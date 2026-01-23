; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284734 () Bool)

(assert start!284734)

(declare-fun b!2927522 () Bool)

(assert (=> b!2927522 true))

(assert (=> b!2927522 true))

(assert (=> b!2927522 true))

(declare-fun b!2927520 () Bool)

(declare-fun e!1846432 () Bool)

(declare-fun tp!938549 () Bool)

(assert (=> b!2927520 (= e!1846432 tp!938549)))

(declare-fun b!2927521 () Bool)

(declare-fun e!1846433 () Bool)

(declare-fun tp_is_empty!15615 () Bool)

(declare-fun tp!938548 () Bool)

(assert (=> b!2927521 (= e!1846433 (and tp_is_empty!15615 tp!938548))))

(declare-fun e!1846435 () Bool)

(assert (=> b!2927522 (= e!1846435 true)))

(declare-datatypes ((C!18238 0))(
  ( (C!18239 (val!11155 Int)) )
))
(declare-datatypes ((Regex!9026 0))(
  ( (ElementMatch!9026 (c!478146 C!18238)) (Concat!14347 (regOne!18564 Regex!9026) (regTwo!18564 Regex!9026)) (EmptyExpr!9026) (Star!9026 (reg!9355 Regex!9026)) (EmptyLang!9026) (Union!9026 (regOne!18565 Regex!9026) (regTwo!18565 Regex!9026)) )
))
(declare-fun lt!1027062 () Regex!9026)

(declare-fun lambda!108765 () Int)

(declare-datatypes ((List!34891 0))(
  ( (Nil!34767) (Cons!34767 (h!40187 C!18238) (t!233956 List!34891)) )
))
(declare-fun s!11993 () List!34891)

(declare-fun r!17423 () Regex!9026)

(declare-datatypes ((tuple2!33702 0))(
  ( (tuple2!33703 (_1!19983 List!34891) (_2!19983 List!34891)) )
))
(declare-datatypes ((Option!6583 0))(
  ( (None!6582) (Some!6582 (v!34716 tuple2!33702)) )
))
(declare-fun isDefined!5134 (Option!6583) Bool)

(declare-fun findConcatSeparation!977 (Regex!9026 Regex!9026 List!34891 List!34891 List!34891) Option!6583)

(declare-fun Exists!1388 (Int) Bool)

(assert (=> b!2927522 (= (isDefined!5134 (findConcatSeparation!977 (reg!9355 r!17423) lt!1027062 Nil!34767 s!11993 s!11993)) (Exists!1388 lambda!108765))))

(declare-datatypes ((Unit!48391 0))(
  ( (Unit!48392) )
))
(declare-fun lt!1027060 () Unit!48391)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!759 (Regex!9026 Regex!9026 List!34891) Unit!48391)

(assert (=> b!2927522 (= lt!1027060 (lemmaFindConcatSeparationEquivalentToExists!759 (reg!9355 r!17423) lt!1027062 s!11993))))

(assert (=> b!2927522 (= lt!1027062 (Star!9026 (reg!9355 r!17423)))))

(declare-fun b!2927523 () Bool)

(assert (=> b!2927523 (= e!1846432 tp_is_empty!15615)))

(declare-fun b!2927524 () Bool)

(declare-fun tp!938547 () Bool)

(declare-fun tp!938550 () Bool)

(assert (=> b!2927524 (= e!1846432 (and tp!938547 tp!938550))))

(declare-fun res!1208267 () Bool)

(declare-fun e!1846434 () Bool)

(assert (=> start!284734 (=> (not res!1208267) (not e!1846434))))

(declare-fun validRegex!3759 (Regex!9026) Bool)

(assert (=> start!284734 (= res!1208267 (validRegex!3759 r!17423))))

(assert (=> start!284734 e!1846434))

(assert (=> start!284734 e!1846432))

(assert (=> start!284734 e!1846433))

(declare-fun b!2927525 () Bool)

(assert (=> b!2927525 (= e!1846434 (not e!1846435))))

(declare-fun res!1208266 () Bool)

(assert (=> b!2927525 (=> res!1208266 e!1846435)))

(declare-fun lt!1027063 () Bool)

(assert (=> b!2927525 (= res!1208266 (or (not lt!1027063) (is-Concat!14347 r!17423) (is-Union!9026 r!17423) (not (is-Star!9026 r!17423))))))

(declare-fun matchRSpec!1163 (Regex!9026 List!34891) Bool)

(assert (=> b!2927525 (= lt!1027063 (matchRSpec!1163 r!17423 s!11993))))

(declare-fun matchR!3908 (Regex!9026 List!34891) Bool)

(assert (=> b!2927525 (= lt!1027063 (matchR!3908 r!17423 s!11993))))

(declare-fun lt!1027061 () Unit!48391)

(declare-fun mainMatchTheorem!1163 (Regex!9026 List!34891) Unit!48391)

(assert (=> b!2927525 (= lt!1027061 (mainMatchTheorem!1163 r!17423 s!11993))))

(declare-fun b!2927526 () Bool)

(declare-fun tp!938546 () Bool)

(declare-fun tp!938551 () Bool)

(assert (=> b!2927526 (= e!1846432 (and tp!938546 tp!938551))))

(declare-fun b!2927527 () Bool)

(declare-fun res!1208265 () Bool)

(assert (=> b!2927527 (=> res!1208265 e!1846435)))

(declare-fun isEmpty!19008 (List!34891) Bool)

(assert (=> b!2927527 (= res!1208265 (isEmpty!19008 s!11993))))

(assert (= (and start!284734 res!1208267) b!2927525))

(assert (= (and b!2927525 (not res!1208266)) b!2927527))

(assert (= (and b!2927527 (not res!1208265)) b!2927522))

(assert (= (and start!284734 (is-ElementMatch!9026 r!17423)) b!2927523))

(assert (= (and start!284734 (is-Concat!14347 r!17423)) b!2927526))

(assert (= (and start!284734 (is-Star!9026 r!17423)) b!2927520))

(assert (= (and start!284734 (is-Union!9026 r!17423)) b!2927524))

(assert (= (and start!284734 (is-Cons!34767 s!11993)) b!2927521))

(declare-fun m!3319465 () Bool)

(assert (=> b!2927522 m!3319465))

(assert (=> b!2927522 m!3319465))

(declare-fun m!3319467 () Bool)

(assert (=> b!2927522 m!3319467))

(declare-fun m!3319469 () Bool)

(assert (=> b!2927522 m!3319469))

(declare-fun m!3319471 () Bool)

(assert (=> b!2927522 m!3319471))

(declare-fun m!3319473 () Bool)

(assert (=> start!284734 m!3319473))

(declare-fun m!3319475 () Bool)

(assert (=> b!2927525 m!3319475))

(declare-fun m!3319477 () Bool)

(assert (=> b!2927525 m!3319477))

(declare-fun m!3319479 () Bool)

(assert (=> b!2927525 m!3319479))

(declare-fun m!3319481 () Bool)

(assert (=> b!2927527 m!3319481))

(push 1)

(assert (not start!284734))

(assert (not b!2927527))

(assert (not b!2927525))

(assert (not b!2927521))

(assert (not b!2927524))

(assert (not b!2927526))

(assert (not b!2927522))

(assert (not b!2927520))

(assert tp_is_empty!15615)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

