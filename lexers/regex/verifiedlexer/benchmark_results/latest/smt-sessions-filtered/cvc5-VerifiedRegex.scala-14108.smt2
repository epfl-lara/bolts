; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742528 () Bool)

(assert start!742528)

(declare-fun b!7839192 () Bool)

(declare-fun res!3117874 () Bool)

(declare-fun e!4635144 () Bool)

(assert (=> b!7839192 (=> (not res!3117874) (not e!4635144))))

(declare-datatypes ((C!42346 0))(
  ( (C!42347 (val!31613 Int)) )
))
(declare-datatypes ((List!73847 0))(
  ( (Nil!73723) (Cons!73723 (h!80171 C!42346) (t!388582 List!73847)) )
))
(declare-fun s2!2463 () List!73847)

(assert (=> b!7839192 (= res!3117874 (not (is-Nil!73723 s2!2463)))))

(declare-fun b!7839193 () Bool)

(declare-fun e!4635150 () Bool)

(declare-fun tp_is_empty!52375 () Bool)

(declare-fun tp!2319751 () Bool)

(assert (=> b!7839193 (= e!4635150 (and tp_is_empty!52375 tp!2319751))))

(declare-fun b!7839195 () Bool)

(declare-fun res!3117876 () Bool)

(assert (=> b!7839195 (=> (not res!3117876) (not e!4635144))))

(declare-datatypes ((Regex!21010 0))(
  ( (ElementMatch!21010 (c!1441391 C!42346)) (Concat!29855 (regOne!42532 Regex!21010) (regTwo!42532 Regex!21010)) (EmptyExpr!21010) (Star!21010 (reg!21339 Regex!21010)) (EmptyLang!21010) (Union!21010 (regOne!42533 Regex!21010) (regTwo!42533 Regex!21010)) )
))
(declare-fun r2!3226 () Regex!21010)

(declare-fun validRegex!11424 (Regex!21010) Bool)

(assert (=> b!7839195 (= res!3117876 (validRegex!11424 r2!3226))))

(declare-fun b!7839196 () Bool)

(declare-fun e!4635146 () Bool)

(declare-fun tp!2319754 () Bool)

(declare-fun tp!2319743 () Bool)

(assert (=> b!7839196 (= e!4635146 (and tp!2319754 tp!2319743))))

(declare-fun b!7839197 () Bool)

(declare-fun res!3117875 () Bool)

(assert (=> b!7839197 (=> (not res!3117875) (not e!4635144))))

(declare-fun s1!2717 () List!73847)

(declare-fun s!10212 () List!73847)

(declare-fun ++!18044 (List!73847 List!73847) List!73847)

(assert (=> b!7839197 (= res!3117875 (= (++!18044 s1!2717 s2!2463) s!10212))))

(declare-fun b!7839198 () Bool)

(declare-fun e!4635149 () Bool)

(declare-fun tp!2319749 () Bool)

(assert (=> b!7839198 (= e!4635149 (and tp_is_empty!52375 tp!2319749))))

(declare-fun b!7839199 () Bool)

(declare-fun e!4635148 () Bool)

(assert (=> b!7839199 (= e!4635148 tp_is_empty!52375)))

(declare-fun b!7839200 () Bool)

(declare-fun e!4635147 () Bool)

(declare-fun tp!2319748 () Bool)

(assert (=> b!7839200 (= e!4635147 (and tp_is_empty!52375 tp!2319748))))

(declare-fun b!7839201 () Bool)

(assert (=> b!7839201 (= e!4635144 (not true))))

(declare-fun r1!3326 () Regex!21010)

(declare-datatypes ((tuple2!70014 0))(
  ( (tuple2!70015 (_1!38310 List!73847) (_2!38310 List!73847)) )
))
(declare-datatypes ((Option!17801 0))(
  ( (None!17800) (Some!17800 (v!54935 tuple2!70014)) )
))
(declare-fun lt!2678295 () Option!17801)

(declare-fun lt!2678293 () List!73847)

(declare-fun findConcatSeparation!3823 (Regex!21010 Regex!21010 List!73847 List!73847 List!73847) Option!17801)

(assert (=> b!7839201 (= lt!2678295 (findConcatSeparation!3823 r1!3326 r2!3226 lt!2678293 (t!388582 s2!2463) s!10212))))

(assert (=> b!7839201 (= (++!18044 lt!2678293 (t!388582 s2!2463)) s!10212)))

(assert (=> b!7839201 (= lt!2678293 (++!18044 s1!2717 (Cons!73723 (h!80171 s2!2463) Nil!73723)))))

(declare-datatypes ((Unit!168818 0))(
  ( (Unit!168819) )
))
(declare-fun lt!2678294 () Unit!168818)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3455 (List!73847 C!42346 List!73847 List!73847) Unit!168818)

(assert (=> b!7839201 (= lt!2678294 (lemmaMoveElementToOtherListKeepsConcatEq!3455 s1!2717 (h!80171 s2!2463) (t!388582 s2!2463) s!10212))))

(declare-fun b!7839202 () Bool)

(declare-fun tp!2319753 () Bool)

(declare-fun tp!2319746 () Bool)

(assert (=> b!7839202 (= e!4635148 (and tp!2319753 tp!2319746))))

(declare-fun b!7839203 () Bool)

(declare-fun tp!2319745 () Bool)

(declare-fun tp!2319750 () Bool)

(assert (=> b!7839203 (= e!4635148 (and tp!2319745 tp!2319750))))

(declare-fun b!7839204 () Bool)

(declare-fun tp!2319747 () Bool)

(assert (=> b!7839204 (= e!4635146 tp!2319747)))

(declare-fun b!7839205 () Bool)

(assert (=> b!7839205 (= e!4635146 tp_is_empty!52375)))

(declare-fun b!7839194 () Bool)

(declare-fun e!4635145 () Bool)

(declare-fun matchR!10466 (Regex!21010 List!73847) Bool)

(assert (=> b!7839194 (= e!4635145 (not (matchR!10466 r2!3226 s2!2463)))))

(declare-fun res!3117878 () Bool)

(assert (=> start!742528 (=> (not res!3117878) (not e!4635144))))

(assert (=> start!742528 (= res!3117878 (validRegex!11424 r1!3326))))

(assert (=> start!742528 e!4635144))

(assert (=> start!742528 e!4635149))

(assert (=> start!742528 e!4635146))

(assert (=> start!742528 e!4635147))

(assert (=> start!742528 e!4635148))

(assert (=> start!742528 e!4635150))

(declare-fun b!7839206 () Bool)

(declare-fun res!3117873 () Bool)

(assert (=> b!7839206 (=> (not res!3117873) (not e!4635144))))

(assert (=> b!7839206 (= res!3117873 e!4635145)))

(declare-fun res!3117877 () Bool)

(assert (=> b!7839206 (=> res!3117877 e!4635145)))

(assert (=> b!7839206 (= res!3117877 (not (matchR!10466 r1!3326 s1!2717)))))

(declare-fun b!7839207 () Bool)

(declare-fun tp!2319744 () Bool)

(assert (=> b!7839207 (= e!4635148 tp!2319744)))

(declare-fun b!7839208 () Bool)

(declare-fun tp!2319742 () Bool)

(declare-fun tp!2319752 () Bool)

(assert (=> b!7839208 (= e!4635146 (and tp!2319742 tp!2319752))))

(assert (= (and start!742528 res!3117878) b!7839195))

(assert (= (and b!7839195 res!3117876) b!7839197))

(assert (= (and b!7839197 res!3117875) b!7839206))

(assert (= (and b!7839206 (not res!3117877)) b!7839194))

(assert (= (and b!7839206 res!3117873) b!7839192))

(assert (= (and b!7839192 res!3117874) b!7839201))

(assert (= (and start!742528 (is-Cons!73723 s1!2717)) b!7839198))

(assert (= (and start!742528 (is-ElementMatch!21010 r1!3326)) b!7839205))

(assert (= (and start!742528 (is-Concat!29855 r1!3326)) b!7839196))

(assert (= (and start!742528 (is-Star!21010 r1!3326)) b!7839204))

(assert (= (and start!742528 (is-Union!21010 r1!3326)) b!7839208))

(assert (= (and start!742528 (is-Cons!73723 s!10212)) b!7839200))

(assert (= (and start!742528 (is-ElementMatch!21010 r2!3226)) b!7839199))

(assert (= (and start!742528 (is-Concat!29855 r2!3226)) b!7839202))

(assert (= (and start!742528 (is-Star!21010 r2!3226)) b!7839207))

(assert (= (and start!742528 (is-Union!21010 r2!3226)) b!7839203))

(assert (= (and start!742528 (is-Cons!73723 s2!2463)) b!7839193))

(declare-fun m!8252838 () Bool)

(assert (=> b!7839195 m!8252838))

(declare-fun m!8252840 () Bool)

(assert (=> b!7839197 m!8252840))

(declare-fun m!8252842 () Bool)

(assert (=> b!7839201 m!8252842))

(declare-fun m!8252844 () Bool)

(assert (=> b!7839201 m!8252844))

(declare-fun m!8252846 () Bool)

(assert (=> b!7839201 m!8252846))

(declare-fun m!8252848 () Bool)

(assert (=> b!7839201 m!8252848))

(declare-fun m!8252850 () Bool)

(assert (=> b!7839206 m!8252850))

(declare-fun m!8252852 () Bool)

(assert (=> start!742528 m!8252852))

(declare-fun m!8252854 () Bool)

(assert (=> b!7839194 m!8252854))

(push 1)

(assert (not b!7839200))

(assert (not b!7839206))

(assert (not b!7839203))

(assert (not b!7839207))

(assert (not b!7839197))

(assert (not b!7839204))

(assert (not b!7839202))

(assert (not b!7839201))

(assert (not b!7839196))

(assert tp_is_empty!52375)

(assert (not b!7839198))

(assert (not b!7839193))

(assert (not start!742528))

(assert (not b!7839194))

(assert (not b!7839195))

(assert (not b!7839208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

