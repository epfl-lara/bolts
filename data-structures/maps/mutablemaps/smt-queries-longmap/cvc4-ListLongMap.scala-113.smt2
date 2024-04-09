; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1976 () Bool)

(assert start!1976)

(declare-fun b!13308 () Bool)

(assert (=> b!13308 true))

(declare-fun b!13302 () Bool)

(declare-fun e!7970 () Bool)

(declare-datatypes ((B!480 0))(
  ( (B!481 (val!338 Int)) )
))
(declare-datatypes ((tuple2!458 0))(
  ( (tuple2!459 (_1!229 (_ BitVec 64)) (_2!229 B!480)) )
))
(declare-datatypes ((List!388 0))(
  ( (Nil!385) (Cons!384 (h!950 tuple2!458) (t!2784 List!388)) )
))
(declare-fun l!522 () List!388)

(assert (=> b!13302 (= e!7970 (= l!522 Nil!385))))

(declare-fun b!13303 () Bool)

(declare-fun e!7971 () Bool)

(declare-fun tp_is_empty!659 () Bool)

(declare-fun tp!2165 () Bool)

(assert (=> b!13303 (= e!7971 (and tp_is_empty!659 tp!2165))))

(declare-fun b!13304 () Bool)

(declare-fun res!10493 () Bool)

(declare-fun e!7972 () Bool)

(assert (=> b!13304 (=> (not res!10493) (not e!7972))))

(declare-fun value!159 () B!480)

(assert (=> b!13304 (= res!10493 (and (is-Cons!384 l!522) (= (_2!229 (h!950 l!522)) value!159)))))

(declare-fun b!13305 () Bool)

(declare-fun res!10497 () Bool)

(assert (=> b!13305 (=> (not res!10497) (not e!7970))))

(declare-fun isEmpty!80 (List!388) Bool)

(assert (=> b!13305 (= res!10497 (not (isEmpty!80 l!522)))))

(declare-fun res!10494 () Bool)

(assert (=> start!1976 (=> (not res!10494) (not e!7972))))

(declare-fun isStrictlySorted!79 (List!388) Bool)

(assert (=> start!1976 (= res!10494 (isStrictlySorted!79 l!522))))

(assert (=> start!1976 e!7972))

(assert (=> start!1976 e!7971))

(assert (=> start!1976 tp_is_empty!659))

(declare-fun b!13306 () Bool)

(assert (=> b!13306 (= e!7972 e!7970)))

(declare-fun res!10496 () Bool)

(assert (=> b!13306 (=> (not res!10496) (not e!7970))))

(declare-fun lt!3507 () List!388)

(assert (=> b!13306 (= res!10496 (isStrictlySorted!79 lt!3507))))

(declare-fun $colon$colon!14 (List!388 tuple2!458) List!388)

(declare-fun filterByValue!6 (List!388 B!480) List!388)

(assert (=> b!13306 (= lt!3507 ($colon$colon!14 (filterByValue!6 (t!2784 l!522) value!159) (h!950 l!522)))))

(declare-fun b!13307 () Bool)

(declare-fun res!10498 () Bool)

(assert (=> b!13307 (=> (not res!10498) (not e!7970))))

(assert (=> b!13307 (= res!10498 (not (isEmpty!80 lt!3507)))))

(declare-fun res!10495 () Bool)

(assert (=> b!13308 (=> (not res!10495) (not e!7970))))

(declare-fun lambda!68 () Int)

(declare-fun forall!73 (List!388 Int) Bool)

(assert (=> b!13308 (= res!10495 (forall!73 lt!3507 lambda!68))))

(assert (= (and start!1976 res!10494) b!13304))

(assert (= (and b!13304 res!10493) b!13306))

(assert (= (and b!13306 res!10496) b!13308))

(assert (= (and b!13308 res!10495) b!13305))

(assert (= (and b!13305 res!10497) b!13307))

(assert (= (and b!13307 res!10498) b!13302))

(assert (= (and start!1976 (is-Cons!384 l!522)) b!13303))

(declare-fun m!9059 () Bool)

(assert (=> b!13306 m!9059))

(declare-fun m!9061 () Bool)

(assert (=> b!13306 m!9061))

(assert (=> b!13306 m!9061))

(declare-fun m!9063 () Bool)

(assert (=> b!13306 m!9063))

(declare-fun m!9065 () Bool)

(assert (=> b!13305 m!9065))

(declare-fun m!9067 () Bool)

(assert (=> b!13307 m!9067))

(declare-fun m!9069 () Bool)

(assert (=> start!1976 m!9069))

(declare-fun m!9071 () Bool)

(assert (=> b!13308 m!9071))

(push 1)

(assert (not b!13307))

(assert (not start!1976))

(assert (not b!13303))

(assert tp_is_empty!659)

(assert (not b!13305))

(assert (not b!13306))

