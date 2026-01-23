; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252250 () Bool)

(assert start!252250)

(declare-fun b!2598226 () Bool)

(declare-fun res!1093941 () Bool)

(declare-fun e!1639964 () Bool)

(assert (=> b!2598226 (=> (not res!1093941) (not e!1639964))))

(declare-datatypes ((B!2259 0))(
  ( (B!2260 (val!9597 Int)) )
))
(declare-datatypes ((List!30030 0))(
  ( (Nil!29930) (Cons!29930 (h!35350 B!2259) (t!213043 List!30030)) )
))
(declare-fun l!3796 () List!30030)

(declare-fun e!9468 () B!2259)

(declare-fun contains!5478 (List!30030 B!2259) Bool)

(assert (=> b!2598226 (= res!1093941 (contains!5478 l!3796 e!9468))))

(declare-fun b!2598227 () Bool)

(declare-fun res!1093943 () Bool)

(assert (=> b!2598227 (=> (not res!1093943) (not e!1639964))))

(assert (=> b!2598227 (= res!1093943 (and (is-Cons!29930 l!3796) (not (= (h!35350 l!3796) e!9468))))))

(declare-fun b!2598228 () Bool)

(assert (=> b!2598228 (= e!1639964 false)))

(declare-fun lt!914914 () Bool)

(assert (=> b!2598228 (= lt!914914 (contains!5478 (t!213043 l!3796) e!9468))))

(declare-fun b!2598229 () Bool)

(declare-fun e!1639965 () Bool)

(declare-fun tp_is_empty!13539 () Bool)

(declare-fun tp!823465 () Bool)

(assert (=> b!2598229 (= e!1639965 (and tp_is_empty!13539 tp!823465))))

(declare-fun b!2598230 () Bool)

(declare-fun res!1093940 () Bool)

(assert (=> b!2598230 (=> (not res!1093940) (not e!1639964))))

(declare-fun noDuplicate!478 (List!30030) Bool)

(assert (=> b!2598230 (= res!1093940 (noDuplicate!478 (t!213043 l!3796)))))

(declare-fun res!1093942 () Bool)

(assert (=> start!252250 (=> (not res!1093942) (not e!1639964))))

(assert (=> start!252250 (= res!1093942 (noDuplicate!478 l!3796))))

(assert (=> start!252250 e!1639964))

(assert (=> start!252250 e!1639965))

(assert (=> start!252250 tp_is_empty!13539))

(assert (= (and start!252250 res!1093942) b!2598226))

(assert (= (and b!2598226 res!1093941) b!2598227))

(assert (= (and b!2598227 res!1093943) b!2598230))

(assert (= (and b!2598230 res!1093940) b!2598228))

(assert (= (and start!252250 (is-Cons!29930 l!3796)) b!2598229))

(declare-fun m!2934381 () Bool)

(assert (=> b!2598226 m!2934381))

(declare-fun m!2934383 () Bool)

(assert (=> b!2598228 m!2934383))

(declare-fun m!2934385 () Bool)

(assert (=> b!2598230 m!2934385))

(declare-fun m!2934387 () Bool)

(assert (=> start!252250 m!2934387))

(push 1)

(assert (not b!2598229))

(assert (not b!2598230))

(assert (not b!2598228))

(assert (not start!252250))

(assert tp_is_empty!13539)

(assert (not b!2598226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

