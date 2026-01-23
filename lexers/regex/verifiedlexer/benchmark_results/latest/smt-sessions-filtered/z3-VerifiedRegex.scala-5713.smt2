; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284204 () Bool)

(assert start!284204)

(declare-fun b!2917568 () Bool)

(assert (=> b!2917568 true))

(assert (=> b!2917568 true))

(declare-fun lambda!108544 () Int)

(declare-fun lambda!108543 () Int)

(assert (=> b!2917568 (not (= lambda!108544 lambda!108543))))

(assert (=> b!2917568 true))

(assert (=> b!2917568 true))

(declare-fun b!2917564 () Bool)

(declare-fun e!1840901 () Bool)

(assert (=> b!2917564 (= e!1840901 true)))

(declare-datatypes ((C!18140 0))(
  ( (C!18141 (val!11106 Int)) )
))
(declare-datatypes ((Regex!8977 0))(
  ( (ElementMatch!8977 (c!475939 C!18140)) (Concat!14298 (regOne!18466 Regex!8977) (regTwo!18466 Regex!8977)) (EmptyExpr!8977) (Star!8977 (reg!9306 Regex!8977)) (EmptyLang!8977) (Union!8977 (regOne!18467 Regex!8977) (regTwo!18467 Regex!8977)) )
))
(declare-fun r!17423 () Regex!8977)

(declare-datatypes ((List!34842 0))(
  ( (Nil!34718) (Cons!34718 (h!40138 C!18140) (t!233907 List!34842)) )
))
(declare-datatypes ((tuple2!33692 0))(
  ( (tuple2!33693 (_1!19978 List!34842) (_2!19978 List!34842)) )
))
(declare-fun lt!1025029 () tuple2!33692)

(declare-fun matchR!3859 (Regex!8977 List!34842) Bool)

(declare-fun simplify!14 (Regex!8977) Regex!8977)

(assert (=> b!2917564 (matchR!3859 (simplify!14 (regTwo!18466 r!17423)) (_2!19978 lt!1025029))))

(declare-datatypes ((Unit!48293 0))(
  ( (Unit!48294) )
))
(declare-fun lt!1025027 () Unit!48293)

(declare-fun lemmaSimplifySound!12 (Regex!8977 List!34842) Unit!48293)

(assert (=> b!2917564 (= lt!1025027 (lemmaSimplifySound!12 (regTwo!18466 r!17423) (_2!19978 lt!1025029)))))

(assert (=> b!2917564 (matchR!3859 (simplify!14 (regOne!18466 r!17423)) (_1!19978 lt!1025029))))

(declare-fun lt!1025026 () Unit!48293)

(assert (=> b!2917564 (= lt!1025026 (lemmaSimplifySound!12 (regOne!18466 r!17423) (_1!19978 lt!1025029)))))

(declare-fun b!2917565 () Bool)

(declare-fun e!1840905 () Bool)

(declare-fun tp_is_empty!15517 () Bool)

(assert (=> b!2917565 (= e!1840905 tp_is_empty!15517)))

(declare-fun b!2917566 () Bool)

(declare-fun tp!936600 () Bool)

(assert (=> b!2917566 (= e!1840905 tp!936600)))

(declare-fun b!2917567 () Bool)

(declare-fun e!1840904 () Bool)

(declare-fun tp!936601 () Bool)

(assert (=> b!2917567 (= e!1840904 (and tp_is_empty!15517 tp!936601))))

(declare-fun res!1204466 () Bool)

(declare-fun e!1840903 () Bool)

(assert (=> start!284204 (=> (not res!1204466) (not e!1840903))))

(declare-fun validRegex!3710 (Regex!8977) Bool)

(assert (=> start!284204 (= res!1204466 (validRegex!3710 r!17423))))

(assert (=> start!284204 e!1840903))

(assert (=> start!284204 e!1840905))

(assert (=> start!284204 e!1840904))

(declare-fun e!1840902 () Bool)

(assert (=> b!2917568 (= e!1840902 e!1840901)))

(declare-fun res!1204468 () Bool)

(assert (=> b!2917568 (=> res!1204468 e!1840901)))

(assert (=> b!2917568 (= res!1204468 (not (matchR!3859 (regOne!18466 r!17423) (_1!19978 lt!1025029))))))

(declare-datatypes ((Option!6578 0))(
  ( (None!6577) (Some!6577 (v!34711 tuple2!33692)) )
))
(declare-fun lt!1025031 () Option!6578)

(declare-fun get!10567 (Option!6578) tuple2!33692)

(assert (=> b!2917568 (= lt!1025029 (get!10567 lt!1025031))))

(declare-fun Exists!1357 (Int) Bool)

(assert (=> b!2917568 (= (Exists!1357 lambda!108543) (Exists!1357 lambda!108544))))

(declare-fun lt!1025032 () Unit!48293)

(declare-fun s!11993 () List!34842)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!498 (Regex!8977 Regex!8977 List!34842) Unit!48293)

(assert (=> b!2917568 (= lt!1025032 (lemmaExistCutMatchRandMatchRSpecEquivalent!498 (regOne!18466 r!17423) (regTwo!18466 r!17423) s!11993))))

(declare-fun isDefined!5129 (Option!6578) Bool)

(assert (=> b!2917568 (= (isDefined!5129 lt!1025031) (Exists!1357 lambda!108543))))

(declare-fun findConcatSeparation!972 (Regex!8977 Regex!8977 List!34842 List!34842 List!34842) Option!6578)

(assert (=> b!2917568 (= lt!1025031 (findConcatSeparation!972 (regOne!18466 r!17423) (regTwo!18466 r!17423) Nil!34718 s!11993 s!11993))))

(declare-fun lt!1025030 () Unit!48293)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!754 (Regex!8977 Regex!8977 List!34842) Unit!48293)

(assert (=> b!2917568 (= lt!1025030 (lemmaFindConcatSeparationEquivalentToExists!754 (regOne!18466 r!17423) (regTwo!18466 r!17423) s!11993))))

(declare-fun b!2917569 () Bool)

(declare-fun tp!936602 () Bool)

(declare-fun tp!936604 () Bool)

(assert (=> b!2917569 (= e!1840905 (and tp!936602 tp!936604))))

(declare-fun b!2917570 () Bool)

(assert (=> b!2917570 (= e!1840903 (not e!1840902))))

(declare-fun res!1204465 () Bool)

(assert (=> b!2917570 (=> res!1204465 e!1840902)))

(declare-fun lt!1025033 () Bool)

(get-info :version)

(assert (=> b!2917570 (= res!1204465 (or (not lt!1025033) (not ((_ is Concat!14298) r!17423))))))

(declare-fun matchRSpec!1114 (Regex!8977 List!34842) Bool)

(assert (=> b!2917570 (= lt!1025033 (matchRSpec!1114 r!17423 s!11993))))

(assert (=> b!2917570 (= lt!1025033 (matchR!3859 r!17423 s!11993))))

(declare-fun lt!1025028 () Unit!48293)

(declare-fun mainMatchTheorem!1114 (Regex!8977 List!34842) Unit!48293)

(assert (=> b!2917570 (= lt!1025028 (mainMatchTheorem!1114 r!17423 s!11993))))

(declare-fun b!2917571 () Bool)

(declare-fun res!1204464 () Bool)

(assert (=> b!2917571 (=> res!1204464 e!1840902)))

(declare-fun isEmpty!18975 (List!34842) Bool)

(assert (=> b!2917571 (= res!1204464 (isEmpty!18975 s!11993))))

(declare-fun b!2917572 () Bool)

(declare-fun res!1204467 () Bool)

(assert (=> b!2917572 (=> res!1204467 e!1840901)))

(assert (=> b!2917572 (= res!1204467 (not (matchR!3859 (regTwo!18466 r!17423) (_2!19978 lt!1025029))))))

(declare-fun b!2917573 () Bool)

(declare-fun tp!936603 () Bool)

(declare-fun tp!936605 () Bool)

(assert (=> b!2917573 (= e!1840905 (and tp!936603 tp!936605))))

(assert (= (and start!284204 res!1204466) b!2917570))

(assert (= (and b!2917570 (not res!1204465)) b!2917571))

(assert (= (and b!2917571 (not res!1204464)) b!2917568))

(assert (= (and b!2917568 (not res!1204468)) b!2917572))

(assert (= (and b!2917572 (not res!1204467)) b!2917564))

(assert (= (and start!284204 ((_ is ElementMatch!8977) r!17423)) b!2917565))

(assert (= (and start!284204 ((_ is Concat!14298) r!17423)) b!2917573))

(assert (= (and start!284204 ((_ is Star!8977) r!17423)) b!2917566))

(assert (= (and start!284204 ((_ is Union!8977) r!17423)) b!2917569))

(assert (= (and start!284204 ((_ is Cons!34718) s!11993)) b!2917567))

(declare-fun m!3315545 () Bool)

(assert (=> start!284204 m!3315545))

(declare-fun m!3315547 () Bool)

(assert (=> b!2917564 m!3315547))

(declare-fun m!3315549 () Bool)

(assert (=> b!2917564 m!3315549))

(declare-fun m!3315551 () Bool)

(assert (=> b!2917564 m!3315551))

(assert (=> b!2917564 m!3315547))

(declare-fun m!3315553 () Bool)

(assert (=> b!2917564 m!3315553))

(assert (=> b!2917564 m!3315553))

(declare-fun m!3315555 () Bool)

(assert (=> b!2917564 m!3315555))

(declare-fun m!3315557 () Bool)

(assert (=> b!2917564 m!3315557))

(declare-fun m!3315559 () Bool)

(assert (=> b!2917571 m!3315559))

(declare-fun m!3315561 () Bool)

(assert (=> b!2917570 m!3315561))

(declare-fun m!3315563 () Bool)

(assert (=> b!2917570 m!3315563))

(declare-fun m!3315565 () Bool)

(assert (=> b!2917570 m!3315565))

(declare-fun m!3315567 () Bool)

(assert (=> b!2917572 m!3315567))

(declare-fun m!3315569 () Bool)

(assert (=> b!2917568 m!3315569))

(declare-fun m!3315571 () Bool)

(assert (=> b!2917568 m!3315571))

(declare-fun m!3315573 () Bool)

(assert (=> b!2917568 m!3315573))

(declare-fun m!3315575 () Bool)

(assert (=> b!2917568 m!3315575))

(declare-fun m!3315577 () Bool)

(assert (=> b!2917568 m!3315577))

(declare-fun m!3315579 () Bool)

(assert (=> b!2917568 m!3315579))

(declare-fun m!3315581 () Bool)

(assert (=> b!2917568 m!3315581))

(assert (=> b!2917568 m!3315575))

(declare-fun m!3315583 () Bool)

(assert (=> b!2917568 m!3315583))

(check-sat (not b!2917566) (not b!2917568) (not b!2917572) (not b!2917570) (not b!2917573) (not b!2917571) (not start!284204) (not b!2917564) (not b!2917567) tp_is_empty!15517 (not b!2917569))
(check-sat)
