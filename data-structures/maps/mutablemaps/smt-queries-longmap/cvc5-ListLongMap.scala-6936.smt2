; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87352 () Bool)

(assert start!87352)

(declare-fun b!1011988 () Bool)

(assert (=> b!1011988 true))

(assert (=> b!1011988 true))

(declare-fun b!1011987 () Bool)

(declare-fun res!679902 () Bool)

(declare-fun e!569342 () Bool)

(assert (=> b!1011987 (=> (not res!679902) (not e!569342))))

(declare-datatypes ((B!1322 0))(
  ( (B!1323 (val!11745 Int)) )
))
(declare-datatypes ((tuple2!15126 0))(
  ( (tuple2!15127 (_1!7573 (_ BitVec 64)) (_2!7573 B!1322)) )
))
(declare-datatypes ((List!21454 0))(
  ( (Nil!21451) (Cons!21450 (h!22648 tuple2!15126) (t!30463 List!21454)) )
))
(declare-fun l!412 () List!21454)

(declare-fun isEmpty!782 (List!21454) Bool)

(assert (=> b!1011987 (= res!679902 (not (isEmpty!782 (t!30463 l!412))))))

(declare-fun res!679897 () Bool)

(assert (=> b!1011988 (=> (not res!679897) (not e!569342))))

(declare-datatypes ((List!21455 0))(
  ( (Nil!21452) (Cons!21451 (h!22649 (_ BitVec 64)) (t!30464 List!21455)) )
))
(declare-fun lt!447273 () List!21455)

(declare-fun lambda!274 () Int)

(declare-fun forall!206 (List!21455 Int) Bool)

(assert (=> b!1011988 (= res!679897 (forall!206 lt!447273 lambda!274))))

(declare-fun b!1011989 () Bool)

(declare-fun e!569341 () Bool)

(declare-fun tp_is_empty!23389 () Bool)

(declare-fun tp!70248 () Bool)

(assert (=> b!1011989 (= e!569341 (and tp_is_empty!23389 tp!70248))))

(declare-fun b!1011990 () Bool)

(declare-fun res!679901 () Bool)

(assert (=> b!1011990 (=> (not res!679901) (not e!569342))))

(declare-fun head!920 (List!21454) tuple2!15126)

(assert (=> b!1011990 (= res!679901 (bvslt (_1!7573 (h!22648 l!412)) (_1!7573 (head!920 (t!30463 l!412)))))))

(declare-fun b!1011991 () Bool)

(declare-fun res!679900 () Bool)

(assert (=> b!1011991 (=> (not res!679900) (not e!569342))))

(declare-fun isStrictlySorted!521 (List!21454) Bool)

(assert (=> b!1011991 (= res!679900 (isStrictlySorted!521 (t!30463 l!412)))))

(declare-fun b!1011992 () Bool)

(declare-fun e!569340 () Bool)

(assert (=> b!1011992 (= e!569340 e!569342)))

(declare-fun res!679899 () Bool)

(assert (=> b!1011992 (=> (not res!679899) (not e!569342))))

(declare-fun isEmpty!783 (List!21455) Bool)

(assert (=> b!1011992 (= res!679899 (not (isEmpty!783 lt!447273)))))

(declare-fun value!115 () B!1322)

(declare-fun getKeysOf!10 (List!21454 B!1322) List!21455)

(assert (=> b!1011992 (= lt!447273 (getKeysOf!10 (t!30463 l!412) value!115))))

(declare-fun b!1011994 () Bool)

(declare-fun res!679903 () Bool)

(assert (=> b!1011994 (=> (not res!679903) (not e!569340))))

(assert (=> b!1011994 (= res!679903 (and (is-Cons!21450 l!412) (= (_2!7573 (h!22648 l!412)) value!115)))))

(declare-fun b!1011993 () Bool)

(assert (=> b!1011993 (= e!569342 (not (forall!206 lt!447273 lambda!274)))))

(declare-fun res!679898 () Bool)

(assert (=> start!87352 (=> (not res!679898) (not e!569340))))

(assert (=> start!87352 (= res!679898 (isStrictlySorted!521 l!412))))

(assert (=> start!87352 e!569340))

(assert (=> start!87352 e!569341))

(assert (=> start!87352 tp_is_empty!23389))

(assert (= (and start!87352 res!679898) b!1011994))

(assert (= (and b!1011994 res!679903) b!1011992))

(assert (= (and b!1011992 res!679899) b!1011991))

(assert (= (and b!1011991 res!679900) b!1011987))

(assert (= (and b!1011987 res!679902) b!1011988))

(assert (= (and b!1011988 res!679897) b!1011990))

(assert (= (and b!1011990 res!679901) b!1011993))

(assert (= (and start!87352 (is-Cons!21450 l!412)) b!1011989))

(declare-fun m!935901 () Bool)

(assert (=> b!1011987 m!935901))

(declare-fun m!935903 () Bool)

(assert (=> b!1011992 m!935903))

(declare-fun m!935905 () Bool)

(assert (=> b!1011992 m!935905))

(declare-fun m!935907 () Bool)

(assert (=> start!87352 m!935907))

(declare-fun m!935909 () Bool)

(assert (=> b!1011988 m!935909))

(declare-fun m!935911 () Bool)

(assert (=> b!1011991 m!935911))

(assert (=> b!1011993 m!935909))

(declare-fun m!935913 () Bool)

(assert (=> b!1011990 m!935913))

(push 1)

