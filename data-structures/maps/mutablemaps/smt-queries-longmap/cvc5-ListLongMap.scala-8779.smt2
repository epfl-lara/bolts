; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106780 () Bool)

(assert start!106780)

(declare-fun res!843556 () Bool)

(declare-fun e!721843 () Bool)

(assert (=> start!106780 (=> (not res!843556) (not e!721843))))

(declare-datatypes ((B!2066 0))(
  ( (B!2067 (val!16368 Int)) )
))
(declare-datatypes ((tuple2!21404 0))(
  ( (tuple2!21405 (_1!10712 (_ BitVec 64)) (_2!10712 B!2066)) )
))
(declare-datatypes ((List!28535 0))(
  ( (Nil!28532) (Cons!28531 (h!29740 tuple2!21404) (t!42069 List!28535)) )
))
(declare-fun l!874 () List!28535)

(declare-fun isStrictlySorted!813 (List!28535) Bool)

(assert (=> start!106780 (= res!843556 (isStrictlySorted!813 l!874))))

(assert (=> start!106780 e!721843))

(declare-fun e!721842 () Bool)

(assert (=> start!106780 e!721842))

(assert (=> start!106780 true))

(declare-fun b!1267110 () Bool)

(declare-fun res!843555 () Bool)

(assert (=> b!1267110 (=> (not res!843555) (not e!721843))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!674 (List!28535 (_ BitVec 64)) Bool)

(assert (=> b!1267110 (= res!843555 (not (containsKey!674 l!874 key!235)))))

(declare-fun b!1267111 () Bool)

(declare-fun ListPrimitiveSize!157 (List!28535) Int)

(assert (=> b!1267111 (= e!721843 (< (ListPrimitiveSize!157 l!874) 0))))

(declare-fun b!1267112 () Bool)

(declare-fun tp_is_empty!32587 () Bool)

(declare-fun tp!96570 () Bool)

(assert (=> b!1267112 (= e!721842 (and tp_is_empty!32587 tp!96570))))

(assert (= (and start!106780 res!843556) b!1267110))

(assert (= (and b!1267110 res!843555) b!1267111))

(assert (= (and start!106780 (is-Cons!28531 l!874)) b!1267112))

(declare-fun m!1166601 () Bool)

(assert (=> start!106780 m!1166601))

(declare-fun m!1166603 () Bool)

(assert (=> b!1267110 m!1166603))

(declare-fun m!1166605 () Bool)

(assert (=> b!1267111 m!1166605))

(push 1)

(assert (not b!1267110))

(assert (not b!1267112))

(assert tp_is_empty!32587)

(assert (not b!1267111))

(assert (not start!106780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139341 () Bool)

(declare-fun res!843585 () Bool)

(declare-fun e!721872 () Bool)

(assert (=> d!139341 (=> res!843585 e!721872)))

(assert (=> d!139341 (= res!843585 (and (is-Cons!28531 l!874) (= (_1!10712 (h!29740 l!874)) key!235)))))

(assert (=> d!139341 (= (containsKey!674 l!874 key!235) e!721872)))

(declare-fun b!1267147 () Bool)

(declare-fun e!721873 () Bool)

(assert (=> b!1267147 (= e!721872 e!721873)))

(declare-fun res!843586 () Bool)

(assert (=> b!1267147 (=> (not res!843586) (not e!721873))))

(assert (=> b!1267147 (= res!843586 (and (or (not (is-Cons!28531 l!874)) (bvsle (_1!10712 (h!29740 l!874)) key!235)) (is-Cons!28531 l!874) (bvslt (_1!10712 (h!29740 l!874)) key!235)))))

(declare-fun b!1267148 () Bool)

(assert (=> b!1267148 (= e!721873 (containsKey!674 (t!42069 l!874) key!235))))

(assert (= (and d!139341 (not res!843585)) b!1267147))

(assert (= (and b!1267147 res!843586) b!1267148))

(declare-fun m!1166623 () Bool)

(assert (=> b!1267148 m!1166623))

(assert (=> b!1267110 d!139341))

(declare-fun d!139349 () Bool)

(declare-fun lt!574262 () Int)

(assert (=> d!139349 (>= lt!574262 0)))

(declare-fun e!721883 () Int)

(assert (=> d!139349 (= lt!574262 e!721883)))

(declare-fun c!123502 () Bool)

(assert (=> d!139349 (= c!123502 (is-Nil!28532 l!874))))

(assert (=> d!139349 (= (ListPrimitiveSize!157 l!874) lt!574262)))

(declare-fun b!1267163 () Bool)

(assert (=> b!1267163 (= e!721883 0)))

(declare-fun b!1267164 () Bool)

(assert (=> b!1267164 (= e!721883 (+ 1 (ListPrimitiveSize!157 (t!42069 l!874))))))

(assert (= (and d!139349 c!123502) b!1267163))

(assert (= (and d!139349 (not c!123502)) b!1267164))

(declare-fun m!1166627 () Bool)

(assert (=> b!1267164 m!1166627))

(assert (=> b!1267111 d!139349))

(declare-fun d!139353 () Bool)

(declare-fun res!843603 () Bool)

(declare-fun e!721898 () Bool)

(assert (=> d!139353 (=> res!843603 e!721898)))

(assert (=> d!139353 (= res!843603 (or (is-Nil!28532 l!874) (is-Nil!28532 (t!42069 l!874))))))

(assert (=> d!139353 (= (isStrictlySorted!813 l!874) e!721898)))

(declare-fun b!1267181 () Bool)

(declare-fun e!721899 () Bool)

(assert (=> b!1267181 (= e!721898 e!721899)))

(declare-fun res!843604 () Bool)

(assert (=> b!1267181 (=> (not res!843604) (not e!721899))))

(assert (=> b!1267181 (= res!843604 (bvslt (_1!10712 (h!29740 l!874)) (_1!10712 (h!29740 (t!42069 l!874)))))))

(declare-fun b!1267182 () Bool)

(assert (=> b!1267182 (= e!721899 (isStrictlySorted!813 (t!42069 l!874)))))

(assert (= (and d!139353 (not res!843603)) b!1267181))

(assert (= (and b!1267181 res!843604) b!1267182))

(declare-fun m!1166633 () Bool)

(assert (=> b!1267182 m!1166633))

(assert (=> start!106780 d!139353))

(declare-fun b!1267198 () Bool)

(declare-fun e!721908 () Bool)

(declare-fun tp!96584 () Bool)

(assert (=> b!1267198 (= e!721908 (and tp_is_empty!32587 tp!96584))))

(assert (=> b!1267112 (= tp!96570 e!721908)))

(assert (= (and b!1267112 (is-Cons!28531 (t!42069 l!874))) b!1267198))

(push 1)

(assert (not b!1267148))

