; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667232 () Bool)

(assert start!667232)

(declare-fun b!6952020 () Bool)

(assert (=> b!6952020 true))

(assert (=> b!6952020 true))

(declare-fun bs!1857768 () Bool)

(declare-fun b!6952010 () Bool)

(assert (= bs!1857768 (and b!6952010 b!6952020)))

(declare-fun lambda!396508 () Int)

(declare-fun lambda!396507 () Int)

(assert (=> bs!1857768 (not (= lambda!396508 lambda!396507))))

(assert (=> b!6952010 true))

(assert (=> b!6952010 true))

(declare-fun res!2836399 () Bool)

(declare-fun e!4180939 () Bool)

(assert (=> start!667232 (=> (not res!2836399) (not e!4180939))))

(declare-datatypes ((C!34330 0))(
  ( (C!34331 (val!26867 Int)) )
))
(declare-datatypes ((Regex!17030 0))(
  ( (ElementMatch!17030 (c!1289432 C!34330)) (Concat!25875 (regOne!34572 Regex!17030) (regTwo!34572 Regex!17030)) (EmptyExpr!17030) (Star!17030 (reg!17359 Regex!17030)) (EmptyLang!17030) (Union!17030 (regOne!34573 Regex!17030) (regTwo!34573 Regex!17030)) )
))
(declare-fun rInner!765 () Regex!17030)

(declare-fun validRegex!8736 (Regex!17030) Bool)

(assert (=> start!667232 (= res!2836399 (validRegex!8736 rInner!765))))

(assert (=> start!667232 e!4180939))

(declare-fun e!4180941 () Bool)

(assert (=> start!667232 e!4180941))

(declare-fun e!4180940 () Bool)

(assert (=> start!667232 e!4180940))

(declare-fun e!4180938 () Bool)

(declare-fun e!4180937 () Bool)

(assert (=> start!667232 (and e!4180938 e!4180937)))

(declare-fun res!2836393 () Bool)

(assert (=> b!6952010 (=> (not res!2836393) (not e!4180939))))

(declare-fun Exists!4026 (Int) Bool)

(assert (=> b!6952010 (= res!2836393 (Exists!4026 lambda!396508))))

(declare-fun b!6952011 () Bool)

(declare-fun tp!1916467 () Bool)

(declare-fun tp!1916469 () Bool)

(assert (=> b!6952011 (= e!4180941 (and tp!1916467 tp!1916469))))

(declare-fun b!6952012 () Bool)

(declare-fun tp_is_empty!43285 () Bool)

(assert (=> b!6952012 (= e!4180941 tp_is_empty!43285)))

(declare-fun b!6952013 () Bool)

(declare-fun tp!1916466 () Bool)

(assert (=> b!6952013 (= e!4180940 (and tp_is_empty!43285 tp!1916466))))

(declare-fun b!6952014 () Bool)

(declare-fun res!2836394 () Bool)

(assert (=> b!6952014 (=> (not res!2836394) (not e!4180939))))

(assert (=> b!6952014 (= res!2836394 (not (Exists!4026 lambda!396507)))))

(declare-fun b!6952015 () Bool)

(declare-fun tp!1916463 () Bool)

(assert (=> b!6952015 (= e!4180941 tp!1916463)))

(declare-fun b!6952016 () Bool)

(declare-fun res!2836396 () Bool)

(declare-fun e!4180942 () Bool)

(assert (=> b!6952016 (=> res!2836396 e!4180942)))

(declare-fun lt!2478035 () Bool)

(declare-fun lt!2478034 () Bool)

(assert (=> b!6952016 (= res!2836396 (or (not lt!2478035) (not lt!2478034)))))

(declare-fun b!6952017 () Bool)

(declare-fun tp!1916464 () Bool)

(assert (=> b!6952017 (= e!4180937 (and tp_is_empty!43285 tp!1916464))))

(declare-fun b!6952018 () Bool)

(declare-fun tp!1916465 () Bool)

(declare-fun tp!1916468 () Bool)

(assert (=> b!6952018 (= e!4180941 (and tp!1916465 tp!1916468))))

(declare-fun b!6952019 () Bool)

(assert (=> b!6952019 (= e!4180939 (not e!4180942))))

(declare-fun res!2836398 () Bool)

(assert (=> b!6952019 (=> res!2836398 e!4180942)))

(declare-datatypes ((List!66783 0))(
  ( (Nil!66659) (Cons!66659 (h!73107 C!34330) (t!380526 List!66783)) )
))
(declare-datatypes ((tuple2!67766 0))(
  ( (tuple2!67767 (_1!37186 List!66783) (_2!37186 List!66783)) )
))
(declare-fun lt!2478031 () tuple2!67766)

(declare-fun s!10388 () List!66783)

(declare-fun ++!15061 (List!66783 List!66783) List!66783)

(assert (=> b!6952019 (= res!2836398 (not (= (++!15061 (_1!37186 lt!2478031) (_2!37186 lt!2478031)) s!10388)))))

(declare-fun lt!2478033 () Regex!17030)

(declare-fun matchRSpec!4063 (Regex!17030 List!66783) Bool)

(assert (=> b!6952019 (= lt!2478034 (matchRSpec!4063 lt!2478033 (_2!37186 lt!2478031)))))

(declare-fun matchR!9147 (Regex!17030 List!66783) Bool)

(assert (=> b!6952019 (= lt!2478034 (matchR!9147 lt!2478033 (_2!37186 lt!2478031)))))

(declare-datatypes ((Unit!160748 0))(
  ( (Unit!160749) )
))
(declare-fun lt!2478036 () Unit!160748)

(declare-fun mainMatchTheorem!4059 (Regex!17030 List!66783) Unit!160748)

(assert (=> b!6952019 (= lt!2478036 (mainMatchTheorem!4059 lt!2478033 (_2!37186 lt!2478031)))))

(assert (=> b!6952019 (= lt!2478033 (Star!17030 rInner!765))))

(assert (=> b!6952019 (= lt!2478035 (matchRSpec!4063 rInner!765 (_1!37186 lt!2478031)))))

(assert (=> b!6952019 (= lt!2478035 (matchR!9147 rInner!765 (_1!37186 lt!2478031)))))

(declare-fun lt!2478030 () Unit!160748)

(assert (=> b!6952019 (= lt!2478030 (mainMatchTheorem!4059 rInner!765 (_1!37186 lt!2478031)))))

(declare-fun pickWitness!361 (Int) tuple2!67766)

(assert (=> b!6952019 (= lt!2478031 (pickWitness!361 lambda!396508))))

(declare-fun res!2836395 () Bool)

(assert (=> b!6952020 (=> (not res!2836395) (not e!4180939))))

(assert (=> b!6952020 (= res!2836395 (not (Exists!4026 lambda!396507)))))

(declare-fun b!6952021 () Bool)

(assert (=> b!6952021 (= e!4180942 true)))

(declare-fun lt!2478032 () List!66783)

(declare-fun cut!51 () tuple2!67766)

(assert (=> b!6952021 (= lt!2478032 (++!15061 (_1!37186 cut!51) (_2!37186 cut!51)))))

(declare-fun b!6952022 () Bool)

(declare-fun res!2836397 () Bool)

(assert (=> b!6952022 (=> (not res!2836397) (not e!4180939))))

(declare-fun nullable!6843 (Regex!17030) Bool)

(assert (=> b!6952022 (= res!2836397 (not (nullable!6843 rInner!765)))))

(declare-fun b!6952023 () Bool)

(declare-fun tp!1916462 () Bool)

(assert (=> b!6952023 (= e!4180938 (and tp_is_empty!43285 tp!1916462))))

(assert (= (and start!667232 res!2836399) b!6952022))

(assert (= (and b!6952022 res!2836397) b!6952020))

(assert (= (and b!6952020 res!2836395) b!6952014))

(assert (= (and b!6952014 res!2836394) b!6952010))

(assert (= (and b!6952010 res!2836393) b!6952019))

(assert (= (and b!6952019 (not res!2836398)) b!6952016))

(assert (= (and b!6952016 (not res!2836396)) b!6952021))

(assert (= (and start!667232 (is-ElementMatch!17030 rInner!765)) b!6952012))

(assert (= (and start!667232 (is-Concat!25875 rInner!765)) b!6952018))

(assert (= (and start!667232 (is-Star!17030 rInner!765)) b!6952015))

(assert (= (and start!667232 (is-Union!17030 rInner!765)) b!6952011))

(assert (= (and start!667232 (is-Cons!66659 s!10388)) b!6952013))

(assert (= (and start!667232 (is-Cons!66659 (_1!37186 cut!51))) b!6952023))

(assert (= (and start!667232 (is-Cons!66659 (_2!37186 cut!51))) b!6952017))

(declare-fun m!7652684 () Bool)

(assert (=> b!6952022 m!7652684))

(declare-fun m!7652686 () Bool)

(assert (=> b!6952021 m!7652686))

(declare-fun m!7652688 () Bool)

(assert (=> b!6952010 m!7652688))

(declare-fun m!7652690 () Bool)

(assert (=> b!6952019 m!7652690))

(declare-fun m!7652692 () Bool)

(assert (=> b!6952019 m!7652692))

(declare-fun m!7652694 () Bool)

(assert (=> b!6952019 m!7652694))

(declare-fun m!7652696 () Bool)

(assert (=> b!6952019 m!7652696))

(declare-fun m!7652698 () Bool)

(assert (=> b!6952019 m!7652698))

(declare-fun m!7652700 () Bool)

(assert (=> b!6952019 m!7652700))

(declare-fun m!7652702 () Bool)

(assert (=> b!6952019 m!7652702))

(declare-fun m!7652704 () Bool)

(assert (=> b!6952019 m!7652704))

(declare-fun m!7652706 () Bool)

(assert (=> b!6952020 m!7652706))

(assert (=> b!6952014 m!7652706))

(declare-fun m!7652708 () Bool)

(assert (=> start!667232 m!7652708))

(push 1)

(assert (not b!6952021))

(assert (not b!6952018))

(assert (not b!6952011))

(assert (not b!6952022))

(assert (not b!6952015))

(assert (not b!6952013))

(assert (not start!667232))

(assert (not b!6952010))

(assert (not b!6952020))

(assert (not b!6952014))

(assert tp_is_empty!43285)

(assert (not b!6952023))

(assert (not b!6952019))

(assert (not b!6952017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

