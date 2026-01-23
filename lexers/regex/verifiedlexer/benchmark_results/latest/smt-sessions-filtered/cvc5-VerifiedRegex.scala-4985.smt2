; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252590 () Bool)

(assert start!252590)

(declare-fun b_free!72953 () Bool)

(declare-fun b_next!73657 () Bool)

(assert (=> start!252590 (= b_free!72953 (not b_next!73657))))

(declare-fun tp!823732 () Bool)

(declare-fun b_and!190211 () Bool)

(assert (=> start!252590 (= tp!823732 b_and!190211)))

(declare-fun b!2599880 () Bool)

(declare-fun e!1641061 () Bool)

(declare-fun tp_is_empty!13639 () Bool)

(declare-fun tp!823731 () Bool)

(assert (=> b!2599880 (= e!1641061 (and tp_is_empty!13639 tp!823731))))

(declare-fun b!2599881 () Bool)

(declare-fun e!1641060 () Bool)

(declare-datatypes ((B!2359 0))(
  ( (B!2360 (val!9647 Int)) )
))
(declare-datatypes ((List!30080 0))(
  ( (Nil!29980) (Cons!29980 (h!35400 B!2359) (t!213097 List!30080)) )
))
(declare-fun l!3788 () List!30080)

(declare-fun p!2182 () Int)

(declare-fun forall!6161 (List!30080 Int) Bool)

(assert (=> b!2599881 (= e!1641060 (not (forall!6161 (t!213097 l!3788) p!2182)))))

(declare-fun b!2599882 () Bool)

(declare-fun res!1095031 () Bool)

(assert (=> b!2599882 (=> (not res!1095031) (not e!1641060))))

(assert (=> b!2599882 (= res!1095031 (forall!6161 l!3788 p!2182))))

(declare-fun b!2599883 () Bool)

(declare-fun res!1095029 () Bool)

(assert (=> b!2599883 (=> (not res!1095029) (not e!1641060))))

(declare-fun noDuplicate!528 (List!30080) Bool)

(assert (=> b!2599883 (= res!1095029 (noDuplicate!528 (t!213097 l!3788)))))

(declare-fun res!1095030 () Bool)

(assert (=> start!252590 (=> (not res!1095030) (not e!1641060))))

(assert (=> start!252590 (= res!1095030 (noDuplicate!528 l!3788))))

(assert (=> start!252590 e!1641060))

(assert (=> start!252590 e!1641061))

(assert (=> start!252590 tp!823732))

(declare-fun b!2599884 () Bool)

(declare-fun res!1095028 () Bool)

(assert (=> b!2599884 (=> (not res!1095028) (not e!1641060))))

(assert (=> b!2599884 (= res!1095028 (not (is-Nil!29980 l!3788)))))

(assert (= (and start!252590 res!1095030) b!2599882))

(assert (= (and b!2599882 res!1095031) b!2599884))

(assert (= (and b!2599884 res!1095028) b!2599883))

(assert (= (and b!2599883 res!1095029) b!2599881))

(assert (= (and start!252590 (is-Cons!29980 l!3788)) b!2599880))

(declare-fun m!2935477 () Bool)

(assert (=> b!2599881 m!2935477))

(declare-fun m!2935479 () Bool)

(assert (=> b!2599882 m!2935479))

(declare-fun m!2935481 () Bool)

(assert (=> b!2599883 m!2935481))

(declare-fun m!2935483 () Bool)

(assert (=> start!252590 m!2935483))

(push 1)

(assert (not b!2599881))

(assert (not b!2599883))

(assert (not b!2599880))

(assert b_and!190211)

(assert (not start!252590))

(assert tp_is_empty!13639)

(assert (not b!2599882))

(assert (not b_next!73657))

(check-sat)

(pop 1)

(push 1)

(assert b_and!190211)

(assert (not b_next!73657))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736594 () Bool)

(declare-fun res!1095048 () Bool)

(declare-fun e!1641072 () Bool)

(assert (=> d!736594 (=> res!1095048 e!1641072)))

(assert (=> d!736594 (= res!1095048 (is-Nil!29980 l!3788))))

(assert (=> d!736594 (= (forall!6161 l!3788 p!2182) e!1641072)))

(declare-fun b!2599904 () Bool)

(declare-fun e!1641073 () Bool)

(assert (=> b!2599904 (= e!1641072 e!1641073)))

(declare-fun res!1095049 () Bool)

(assert (=> b!2599904 (=> (not res!1095049) (not e!1641073))))

(declare-fun dynLambda!12670 (Int B!2359) Bool)

(assert (=> b!2599904 (= res!1095049 (dynLambda!12670 p!2182 (h!35400 l!3788)))))

(declare-fun b!2599905 () Bool)

(assert (=> b!2599905 (= e!1641073 (forall!6161 (t!213097 l!3788) p!2182))))

(assert (= (and d!736594 (not res!1095048)) b!2599904))

(assert (= (and b!2599904 res!1095049) b!2599905))

(declare-fun b_lambda!77739 () Bool)

(assert (=> (not b_lambda!77739) (not b!2599904)))

(declare-fun t!213100 () Bool)

(declare-fun tb!141485 () Bool)

(assert (=> (and start!252590 (= p!2182 p!2182) t!213100) tb!141485))

(declare-fun result!175996 () Bool)

(assert (=> tb!141485 (= result!175996 true)))

(assert (=> b!2599904 t!213100))

(declare-fun b_and!190215 () Bool)

(assert (= b_and!190211 (and (=> t!213100 result!175996) b_and!190215)))

(declare-fun m!2935493 () Bool)

(assert (=> b!2599904 m!2935493))

(assert (=> b!2599905 m!2935477))

(assert (=> b!2599882 d!736594))

(declare-fun d!736596 () Bool)

(declare-fun res!1095054 () Bool)

(declare-fun e!1641078 () Bool)

(assert (=> d!736596 (=> res!1095054 e!1641078)))

(assert (=> d!736596 (= res!1095054 (is-Nil!29980 (t!213097 l!3788)))))

(assert (=> d!736596 (= (noDuplicate!528 (t!213097 l!3788)) e!1641078)))

(declare-fun b!2599910 () Bool)

(declare-fun e!1641079 () Bool)

(assert (=> b!2599910 (= e!1641078 e!1641079)))

(declare-fun res!1095055 () Bool)

(assert (=> b!2599910 (=> (not res!1095055) (not e!1641079))))

(declare-fun contains!5528 (List!30080 B!2359) Bool)

(assert (=> b!2599910 (= res!1095055 (not (contains!5528 (t!213097 (t!213097 l!3788)) (h!35400 (t!213097 l!3788)))))))

(declare-fun b!2599911 () Bool)

(assert (=> b!2599911 (= e!1641079 (noDuplicate!528 (t!213097 (t!213097 l!3788))))))

(assert (= (and d!736596 (not res!1095054)) b!2599910))

(assert (= (and b!2599910 res!1095055) b!2599911))

(declare-fun m!2935495 () Bool)

(assert (=> b!2599910 m!2935495))

(declare-fun m!2935497 () Bool)

(assert (=> b!2599911 m!2935497))

(assert (=> b!2599883 d!736596))

(declare-fun d!736598 () Bool)

(declare-fun res!1095056 () Bool)

(declare-fun e!1641080 () Bool)

(assert (=> d!736598 (=> res!1095056 e!1641080)))

(assert (=> d!736598 (= res!1095056 (is-Nil!29980 l!3788))))

(assert (=> d!736598 (= (noDuplicate!528 l!3788) e!1641080)))

(declare-fun b!2599912 () Bool)

(declare-fun e!1641081 () Bool)

(assert (=> b!2599912 (= e!1641080 e!1641081)))

(declare-fun res!1095057 () Bool)

(assert (=> b!2599912 (=> (not res!1095057) (not e!1641081))))

(assert (=> b!2599912 (= res!1095057 (not (contains!5528 (t!213097 l!3788) (h!35400 l!3788))))))

(declare-fun b!2599913 () Bool)

(assert (=> b!2599913 (= e!1641081 (noDuplicate!528 (t!213097 l!3788)))))

(assert (= (and d!736598 (not res!1095056)) b!2599912))

(assert (= (and b!2599912 res!1095057) b!2599913))

(declare-fun m!2935499 () Bool)

(assert (=> b!2599912 m!2935499))

(assert (=> b!2599913 m!2935481))

(assert (=> start!252590 d!736598))

(declare-fun d!736600 () Bool)

(declare-fun res!1095058 () Bool)

(declare-fun e!1641082 () Bool)

(assert (=> d!736600 (=> res!1095058 e!1641082)))

(assert (=> d!736600 (= res!1095058 (is-Nil!29980 (t!213097 l!3788)))))

(assert (=> d!736600 (= (forall!6161 (t!213097 l!3788) p!2182) e!1641082)))

(declare-fun b!2599914 () Bool)

(declare-fun e!1641083 () Bool)

(assert (=> b!2599914 (= e!1641082 e!1641083)))

(declare-fun res!1095059 () Bool)

(assert (=> b!2599914 (=> (not res!1095059) (not e!1641083))))

(assert (=> b!2599914 (= res!1095059 (dynLambda!12670 p!2182 (h!35400 (t!213097 l!3788))))))

(declare-fun b!2599915 () Bool)

(assert (=> b!2599915 (= e!1641083 (forall!6161 (t!213097 (t!213097 l!3788)) p!2182))))

(assert (= (and d!736600 (not res!1095058)) b!2599914))

(assert (= (and b!2599914 res!1095059) b!2599915))

(declare-fun b_lambda!77741 () Bool)

(assert (=> (not b_lambda!77741) (not b!2599914)))

(declare-fun t!213102 () Bool)

(declare-fun tb!141487 () Bool)

(assert (=> (and start!252590 (= p!2182 p!2182) t!213102) tb!141487))

(declare-fun result!175998 () Bool)

(assert (=> tb!141487 (= result!175998 true)))

(assert (=> b!2599914 t!213102))

(declare-fun b_and!190217 () Bool)

(assert (= b_and!190215 (and (=> t!213102 result!175998) b_and!190217)))

(declare-fun m!2935501 () Bool)

(assert (=> b!2599914 m!2935501))

(declare-fun m!2935503 () Bool)

(assert (=> b!2599915 m!2935503))

(assert (=> b!2599881 d!736600))

(declare-fun b!2599920 () Bool)

(declare-fun e!1641086 () Bool)

(declare-fun tp!823741 () Bool)

(assert (=> b!2599920 (= e!1641086 (and tp_is_empty!13639 tp!823741))))

(assert (=> b!2599880 (= tp!823731 e!1641086)))

(assert (= (and b!2599880 (is-Cons!29980 (t!213097 l!3788))) b!2599920))

(declare-fun b_lambda!77743 () Bool)

(assert (= b_lambda!77741 (or (and start!252590 b_free!72953) b_lambda!77743)))

(declare-fun b_lambda!77745 () Bool)

(assert (= b_lambda!77739 (or (and start!252590 b_free!72953) b_lambda!77745)))

(push 1)

(assert (not b!2599913))

(assert (not b_next!73657))

(assert (not b!2599915))

(assert (not b!2599920))

(assert b_and!190217)

(assert (not b!2599910))

(assert (not b!2599911))

(assert (not b!2599905))

(assert (not b_lambda!77745))

(assert tp_is_empty!13639)

(assert (not b!2599912))

(assert (not b_lambda!77743))

(check-sat)

(pop 1)

(push 1)

(assert b_and!190217)

(assert (not b_next!73657))

(check-sat)

(pop 1)

