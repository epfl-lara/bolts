; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667272 () Bool)

(assert start!667272)

(declare-fun b!6952719 () Bool)

(assert (=> b!6952719 true))

(assert (=> b!6952719 true))

(declare-fun bs!1857818 () Bool)

(declare-fun b!6952723 () Bool)

(assert (= bs!1857818 (and b!6952723 b!6952719)))

(declare-fun lambda!396566 () Int)

(declare-fun lambda!396565 () Int)

(assert (=> bs!1857818 (not (= lambda!396566 lambda!396565))))

(assert (=> b!6952723 true))

(assert (=> b!6952723 true))

(declare-fun bs!1857819 () Bool)

(declare-fun b!6952725 () Bool)

(assert (= bs!1857819 (and b!6952725 b!6952719)))

(declare-datatypes ((C!34338 0))(
  ( (C!34339 (val!26871 Int)) )
))
(declare-datatypes ((Regex!17034 0))(
  ( (ElementMatch!17034 (c!1289522 C!34338)) (Concat!25879 (regOne!34580 Regex!17034) (regTwo!34580 Regex!17034)) (EmptyExpr!17034) (Star!17034 (reg!17363 Regex!17034)) (EmptyLang!17034) (Union!17034 (regOne!34581 Regex!17034) (regTwo!34581 Regex!17034)) )
))
(declare-fun rInner!765 () Regex!17034)

(declare-fun lambda!396567 () Int)

(declare-fun lt!2478140 () Regex!17034)

(assert (=> bs!1857819 (= (= lt!2478140 (Star!17034 rInner!765)) (= lambda!396567 lambda!396565))))

(declare-fun bs!1857820 () Bool)

(assert (= bs!1857820 (and b!6952725 b!6952723)))

(assert (=> bs!1857820 (not (= lambda!396567 lambda!396566))))

(assert (=> b!6952725 true))

(assert (=> b!6952725 true))

(assert (=> b!6952725 true))

(declare-fun b!6952718 () Bool)

(declare-fun e!4181272 () Bool)

(declare-fun tp!1916639 () Bool)

(assert (=> b!6952718 (= e!4181272 tp!1916639)))

(declare-fun res!2836763 () Bool)

(declare-fun e!4181274 () Bool)

(assert (=> b!6952719 (=> (not res!2836763) (not e!4181274))))

(declare-fun Exists!4030 (Int) Bool)

(assert (=> b!6952719 (= res!2836763 (not (Exists!4030 lambda!396565)))))

(declare-fun b!6952720 () Bool)

(declare-fun e!4181271 () Bool)

(declare-fun tp_is_empty!43293 () Bool)

(declare-fun tp!1916636 () Bool)

(assert (=> b!6952720 (= e!4181271 (and tp_is_empty!43293 tp!1916636))))

(declare-fun b!6952721 () Bool)

(declare-fun res!2836764 () Bool)

(assert (=> b!6952721 (=> (not res!2836764) (not e!4181274))))

(assert (=> b!6952721 (= res!2836764 (not (Exists!4030 lambda!396565)))))

(declare-fun b!6952722 () Bool)

(declare-fun e!4181273 () Bool)

(assert (=> b!6952722 (= e!4181274 (not e!4181273))))

(declare-fun res!2836759 () Bool)

(assert (=> b!6952722 (=> res!2836759 e!4181273)))

(declare-datatypes ((List!66787 0))(
  ( (Nil!66663) (Cons!66663 (h!73111 C!34338) (t!380530 List!66787)) )
))
(declare-datatypes ((tuple2!67774 0))(
  ( (tuple2!67775 (_1!37190 List!66787) (_2!37190 List!66787)) )
))
(declare-fun lt!2478146 () tuple2!67774)

(declare-fun s!10388 () List!66787)

(declare-fun ++!15065 (List!66787 List!66787) List!66787)

(assert (=> b!6952722 (= res!2836759 (not (= (++!15065 (_1!37190 lt!2478146) (_2!37190 lt!2478146)) s!10388)))))

(declare-fun lt!2478144 () Bool)

(declare-fun matchRSpec!4067 (Regex!17034 List!66787) Bool)

(assert (=> b!6952722 (= lt!2478144 (matchRSpec!4067 lt!2478140 (_2!37190 lt!2478146)))))

(declare-fun matchR!9151 (Regex!17034 List!66787) Bool)

(assert (=> b!6952722 (= lt!2478144 (matchR!9151 lt!2478140 (_2!37190 lt!2478146)))))

(declare-datatypes ((Unit!160756 0))(
  ( (Unit!160757) )
))
(declare-fun lt!2478141 () Unit!160756)

(declare-fun mainMatchTheorem!4063 (Regex!17034 List!66787) Unit!160756)

(assert (=> b!6952722 (= lt!2478141 (mainMatchTheorem!4063 lt!2478140 (_2!37190 lt!2478146)))))

(assert (=> b!6952722 (= lt!2478140 (Star!17034 rInner!765))))

(declare-fun lt!2478143 () Bool)

(assert (=> b!6952722 (= lt!2478143 (matchRSpec!4067 rInner!765 (_1!37190 lt!2478146)))))

(assert (=> b!6952722 (= lt!2478143 (matchR!9151 rInner!765 (_1!37190 lt!2478146)))))

(declare-fun lt!2478142 () Unit!160756)

(assert (=> b!6952722 (= lt!2478142 (mainMatchTheorem!4063 rInner!765 (_1!37190 lt!2478146)))))

(declare-fun pickWitness!365 (Int) tuple2!67774)

(assert (=> b!6952722 (= lt!2478146 (pickWitness!365 lambda!396566))))

(declare-fun b!6952724 () Bool)

(assert (=> b!6952724 (= e!4181272 tp_is_empty!43293)))

(assert (=> b!6952725 (= e!4181273 true)))

(declare-fun lt!2478145 () Unit!160756)

(declare-fun ExistsThe!23 (tuple2!67774 Int) Unit!160756)

(assert (=> b!6952725 (= lt!2478145 (ExistsThe!23 (tuple2!67775 (_1!37190 lt!2478146) (_2!37190 lt!2478146)) lambda!396567))))

(declare-fun res!2836760 () Bool)

(assert (=> b!6952723 (=> (not res!2836760) (not e!4181274))))

(assert (=> b!6952723 (= res!2836760 (Exists!4030 lambda!396566))))

(declare-fun res!2836765 () Bool)

(assert (=> start!667272 (=> (not res!2836765) (not e!4181274))))

(declare-fun validRegex!8740 (Regex!17034) Bool)

(assert (=> start!667272 (= res!2836765 (validRegex!8740 rInner!765))))

(assert (=> start!667272 e!4181274))

(assert (=> start!667272 e!4181272))

(assert (=> start!667272 e!4181271))

(declare-fun b!6952726 () Bool)

(declare-fun tp!1916638 () Bool)

(declare-fun tp!1916634 () Bool)

(assert (=> b!6952726 (= e!4181272 (and tp!1916638 tp!1916634))))

(declare-fun b!6952727 () Bool)

(declare-fun res!2836762 () Bool)

(assert (=> b!6952727 (=> res!2836762 e!4181273)))

(assert (=> b!6952727 (= res!2836762 (or (not lt!2478143) (not lt!2478144)))))

(declare-fun b!6952728 () Bool)

(declare-fun res!2836761 () Bool)

(assert (=> b!6952728 (=> (not res!2836761) (not e!4181274))))

(declare-fun nullable!6847 (Regex!17034) Bool)

(assert (=> b!6952728 (= res!2836761 (not (nullable!6847 rInner!765)))))

(declare-fun b!6952729 () Bool)

(declare-fun tp!1916637 () Bool)

(declare-fun tp!1916635 () Bool)

(assert (=> b!6952729 (= e!4181272 (and tp!1916637 tp!1916635))))

(assert (= (and start!667272 res!2836765) b!6952728))

(assert (= (and b!6952728 res!2836761) b!6952719))

(assert (= (and b!6952719 res!2836763) b!6952721))

(assert (= (and b!6952721 res!2836764) b!6952723))

(assert (= (and b!6952723 res!2836760) b!6952722))

(assert (= (and b!6952722 (not res!2836759)) b!6952727))

(assert (= (and b!6952727 (not res!2836762)) b!6952725))

(assert (= (and start!667272 (is-ElementMatch!17034 rInner!765)) b!6952724))

(assert (= (and start!667272 (is-Concat!25879 rInner!765)) b!6952729))

(assert (= (and start!667272 (is-Star!17034 rInner!765)) b!6952718))

(assert (= (and start!667272 (is-Union!17034 rInner!765)) b!6952726))

(assert (= (and start!667272 (is-Cons!66663 s!10388)) b!6952720))

(declare-fun m!7653020 () Bool)

(assert (=> start!667272 m!7653020))

(declare-fun m!7653022 () Bool)

(assert (=> b!6952722 m!7653022))

(declare-fun m!7653024 () Bool)

(assert (=> b!6952722 m!7653024))

(declare-fun m!7653026 () Bool)

(assert (=> b!6952722 m!7653026))

(declare-fun m!7653028 () Bool)

(assert (=> b!6952722 m!7653028))

(declare-fun m!7653030 () Bool)

(assert (=> b!6952722 m!7653030))

(declare-fun m!7653032 () Bool)

(assert (=> b!6952722 m!7653032))

(declare-fun m!7653034 () Bool)

(assert (=> b!6952722 m!7653034))

(declare-fun m!7653036 () Bool)

(assert (=> b!6952722 m!7653036))

(declare-fun m!7653038 () Bool)

(assert (=> b!6952721 m!7653038))

(declare-fun m!7653040 () Bool)

(assert (=> b!6952725 m!7653040))

(declare-fun m!7653042 () Bool)

(assert (=> b!6952723 m!7653042))

(declare-fun m!7653044 () Bool)

(assert (=> b!6952728 m!7653044))

(assert (=> b!6952719 m!7653038))

(push 1)

(assert (not b!6952722))

(assert (not b!6952725))

(assert (not start!667272))

(assert (not b!6952723))

(assert (not b!6952726))

(assert (not b!6952728))

(assert (not b!6952721))

(assert (not b!6952718))

(assert (not b!6952719))

(assert (not b!6952729))

(assert tp_is_empty!43293)

(assert (not b!6952720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

