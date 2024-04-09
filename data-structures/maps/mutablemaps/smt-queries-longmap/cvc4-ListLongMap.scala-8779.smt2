; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106784 () Bool)

(assert start!106784)

(declare-fun res!843568 () Bool)

(declare-fun e!721855 () Bool)

(assert (=> start!106784 (=> (not res!843568) (not e!721855))))

(declare-datatypes ((B!2070 0))(
  ( (B!2071 (val!16370 Int)) )
))
(declare-datatypes ((tuple2!21408 0))(
  ( (tuple2!21409 (_1!10714 (_ BitVec 64)) (_2!10714 B!2070)) )
))
(declare-datatypes ((List!28537 0))(
  ( (Nil!28534) (Cons!28533 (h!29742 tuple2!21408) (t!42071 List!28537)) )
))
(declare-fun l!874 () List!28537)

(declare-fun isStrictlySorted!815 (List!28537) Bool)

(assert (=> start!106784 (= res!843568 (isStrictlySorted!815 l!874))))

(assert (=> start!106784 e!721855))

(declare-fun e!721854 () Bool)

(assert (=> start!106784 e!721854))

(assert (=> start!106784 true))

(declare-fun b!1267128 () Bool)

(declare-fun res!843567 () Bool)

(assert (=> b!1267128 (=> (not res!843567) (not e!721855))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!676 (List!28537 (_ BitVec 64)) Bool)

(assert (=> b!1267128 (= res!843567 (not (containsKey!676 l!874 key!235)))))

(declare-fun b!1267129 () Bool)

(declare-fun ListPrimitiveSize!159 (List!28537) Int)

(assert (=> b!1267129 (= e!721855 (< (ListPrimitiveSize!159 l!874) 0))))

(declare-fun b!1267130 () Bool)

(declare-fun tp_is_empty!32591 () Bool)

(declare-fun tp!96576 () Bool)

(assert (=> b!1267130 (= e!721854 (and tp_is_empty!32591 tp!96576))))

(assert (= (and start!106784 res!843568) b!1267128))

(assert (= (and b!1267128 res!843567) b!1267129))

(assert (= (and start!106784 (is-Cons!28533 l!874)) b!1267130))

(declare-fun m!1166613 () Bool)

(assert (=> start!106784 m!1166613))

(declare-fun m!1166615 () Bool)

(assert (=> b!1267128 m!1166615))

(declare-fun m!1166617 () Bool)

(assert (=> b!1267129 m!1166617))

(push 1)

(assert (not b!1267130))

(assert (not start!106784))

(assert (not b!1267128))

(assert tp_is_empty!32591)

(assert (not b!1267129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139343 () Bool)

(declare-fun res!843581 () Bool)

(declare-fun e!721868 () Bool)

(assert (=> d!139343 (=> res!843581 e!721868)))

(assert (=> d!139343 (= res!843581 (or (is-Nil!28534 l!874) (is-Nil!28534 (t!42071 l!874))))))

(assert (=> d!139343 (= (isStrictlySorted!815 l!874) e!721868)))

(declare-fun b!1267143 () Bool)

(declare-fun e!721869 () Bool)

(assert (=> b!1267143 (= e!721868 e!721869)))

(declare-fun res!843582 () Bool)

(assert (=> b!1267143 (=> (not res!843582) (not e!721869))))

(assert (=> b!1267143 (= res!843582 (bvslt (_1!10714 (h!29742 l!874)) (_1!10714 (h!29742 (t!42071 l!874)))))))

(declare-fun b!1267144 () Bool)

(assert (=> b!1267144 (= e!721869 (isStrictlySorted!815 (t!42071 l!874)))))

(assert (= (and d!139343 (not res!843581)) b!1267143))

(assert (= (and b!1267143 res!843582) b!1267144))

(declare-fun m!1166619 () Bool)

(assert (=> b!1267144 m!1166619))

(assert (=> start!106784 d!139343))

(declare-fun d!139345 () Bool)

(declare-fun res!843591 () Bool)

(declare-fun e!721884 () Bool)

(assert (=> d!139345 (=> res!843591 e!721884)))

(assert (=> d!139345 (= res!843591 (and (is-Cons!28533 l!874) (= (_1!10714 (h!29742 l!874)) key!235)))))

(assert (=> d!139345 (= (containsKey!676 l!874 key!235) e!721884)))

(declare-fun b!1267165 () Bool)

(declare-fun e!721885 () Bool)

(assert (=> b!1267165 (= e!721884 e!721885)))

(declare-fun res!843592 () Bool)

(assert (=> b!1267165 (=> (not res!843592) (not e!721885))))

(assert (=> b!1267165 (= res!843592 (and (or (not (is-Cons!28533 l!874)) (bvsle (_1!10714 (h!29742 l!874)) key!235)) (is-Cons!28533 l!874) (bvslt (_1!10714 (h!29742 l!874)) key!235)))))

(declare-fun b!1267166 () Bool)

(assert (=> b!1267166 (= e!721885 (containsKey!676 (t!42071 l!874) key!235))))

(assert (= (and d!139345 (not res!843591)) b!1267165))

(assert (= (and b!1267165 res!843592) b!1267166))

(declare-fun m!1166629 () Bool)

(assert (=> b!1267166 m!1166629))

(assert (=> b!1267128 d!139345))

(declare-fun d!139355 () Bool)

(declare-fun lt!574265 () Int)

(assert (=> d!139355 (>= lt!574265 0)))

(declare-fun e!721900 () Int)

(assert (=> d!139355 (= lt!574265 e!721900)))

(declare-fun c!123505 () Bool)

(assert (=> d!139355 (= c!123505 (is-Nil!28534 l!874))))

(assert (=> d!139355 (= (ListPrimitiveSize!159 l!874) lt!574265)))

(declare-fun b!1267185 () Bool)

(assert (=> b!1267185 (= e!721900 0)))

(declare-fun b!1267186 () Bool)

(assert (=> b!1267186 (= e!721900 (+ 1 (ListPrimitiveSize!159 (t!42071 l!874))))))

(assert (= (and d!139355 c!123505) b!1267185))

(assert (= (and d!139355 (not c!123505)) b!1267186))

(declare-fun m!1166635 () Bool)

(assert (=> b!1267186 m!1166635))

(assert (=> b!1267129 d!139355))

(declare-fun b!1267199 () Bool)

(declare-fun e!721909 () Bool)

(declare-fun tp!96585 () Bool)

(assert (=> b!1267199 (= e!721909 (and tp_is_empty!32591 tp!96585))))

(assert (=> b!1267130 (= tp!96576 e!721909)))

(assert (= (and b!1267130 (is-Cons!28533 (t!42071 l!874))) b!1267199))

(push 1)

