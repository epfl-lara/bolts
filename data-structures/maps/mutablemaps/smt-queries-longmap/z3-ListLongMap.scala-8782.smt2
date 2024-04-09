; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106842 () Bool)

(assert start!106842)

(declare-fun res!843783 () Bool)

(declare-fun e!722064 () Bool)

(assert (=> start!106842 (=> (not res!843783) (not e!722064))))

(declare-datatypes ((B!2086 0))(
  ( (B!2087 (val!16378 Int)) )
))
(declare-datatypes ((tuple2!21424 0))(
  ( (tuple2!21425 (_1!10722 (_ BitVec 64)) (_2!10722 B!2086)) )
))
(declare-datatypes ((List!28545 0))(
  ( (Nil!28542) (Cons!28541 (h!29750 tuple2!21424) (t!42079 List!28545)) )
))
(declare-fun l!874 () List!28545)

(declare-fun isStrictlySorted!823 (List!28545) Bool)

(assert (=> start!106842 (= res!843783 (isStrictlySorted!823 l!874))))

(assert (=> start!106842 e!722064))

(declare-fun e!722065 () Bool)

(assert (=> start!106842 e!722065))

(assert (=> start!106842 true))

(declare-fun b!1267431 () Bool)

(declare-fun tp_is_empty!32607 () Bool)

(declare-fun tp!96627 () Bool)

(assert (=> b!1267431 (= e!722065 (and tp_is_empty!32607 tp!96627))))

(declare-fun b!1267432 () Bool)

(declare-fun res!843784 () Bool)

(assert (=> b!1267432 (=> (not res!843784) (not e!722064))))

(get-info :version)

(assert (=> b!1267432 (= res!843784 ((_ is Cons!28541) l!874))))

(declare-fun b!1267433 () Bool)

(declare-fun res!843786 () Bool)

(assert (=> b!1267433 (=> (not res!843786) (not e!722064))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!684 (List!28545 (_ BitVec 64)) Bool)

(assert (=> b!1267433 (= res!843786 (not (containsKey!684 (t!42079 l!874) key!235)))))

(declare-fun b!1267434 () Bool)

(declare-fun res!843787 () Bool)

(assert (=> b!1267434 (=> (not res!843787) (not e!722064))))

(assert (=> b!1267434 (= res!843787 (isStrictlySorted!823 (t!42079 l!874)))))

(declare-fun b!1267435 () Bool)

(declare-fun ListPrimitiveSize!161 (List!28545) Int)

(assert (=> b!1267435 (= e!722064 (>= (ListPrimitiveSize!161 (t!42079 l!874)) (ListPrimitiveSize!161 l!874)))))

(declare-fun b!1267436 () Bool)

(declare-fun res!843785 () Bool)

(assert (=> b!1267436 (=> (not res!843785) (not e!722064))))

(assert (=> b!1267436 (= res!843785 (not (containsKey!684 l!874 key!235)))))

(assert (= (and start!106842 res!843783) b!1267436))

(assert (= (and b!1267436 res!843785) b!1267432))

(assert (= (and b!1267432 res!843784) b!1267434))

(assert (= (and b!1267434 res!843787) b!1267433))

(assert (= (and b!1267433 res!843786) b!1267435))

(assert (= (and start!106842 ((_ is Cons!28541) l!874)) b!1267431))

(declare-fun m!1166715 () Bool)

(assert (=> start!106842 m!1166715))

(declare-fun m!1166717 () Bool)

(assert (=> b!1267434 m!1166717))

(declare-fun m!1166719 () Bool)

(assert (=> b!1267436 m!1166719))

(declare-fun m!1166721 () Bool)

(assert (=> b!1267433 m!1166721))

(declare-fun m!1166723 () Bool)

(assert (=> b!1267435 m!1166723))

(declare-fun m!1166725 () Bool)

(assert (=> b!1267435 m!1166725))

(check-sat (not start!106842) tp_is_empty!32607 (not b!1267433) (not b!1267435) (not b!1267436) (not b!1267434) (not b!1267431))
(check-sat)
(get-model)

(declare-fun d!139405 () Bool)

(declare-fun res!843813 () Bool)

(declare-fun e!722082 () Bool)

(assert (=> d!139405 (=> res!843813 e!722082)))

(assert (=> d!139405 (= res!843813 (or ((_ is Nil!28542) (t!42079 l!874)) ((_ is Nil!28542) (t!42079 (t!42079 l!874)))))))

(assert (=> d!139405 (= (isStrictlySorted!823 (t!42079 l!874)) e!722082)))

(declare-fun b!1267461 () Bool)

(declare-fun e!722083 () Bool)

(assert (=> b!1267461 (= e!722082 e!722083)))

(declare-fun res!843814 () Bool)

(assert (=> b!1267461 (=> (not res!843814) (not e!722083))))

(assert (=> b!1267461 (= res!843814 (bvslt (_1!10722 (h!29750 (t!42079 l!874))) (_1!10722 (h!29750 (t!42079 (t!42079 l!874))))))))

(declare-fun b!1267462 () Bool)

(assert (=> b!1267462 (= e!722083 (isStrictlySorted!823 (t!42079 (t!42079 l!874))))))

(assert (= (and d!139405 (not res!843813)) b!1267461))

(assert (= (and b!1267461 res!843814) b!1267462))

(declare-fun m!1166739 () Bool)

(assert (=> b!1267462 m!1166739))

(assert (=> b!1267434 d!139405))

(declare-fun d!139411 () Bool)

(declare-fun res!843831 () Bool)

(declare-fun e!722102 () Bool)

(assert (=> d!139411 (=> res!843831 e!722102)))

(assert (=> d!139411 (= res!843831 (and ((_ is Cons!28541) (t!42079 l!874)) (= (_1!10722 (h!29750 (t!42079 l!874))) key!235)))))

(assert (=> d!139411 (= (containsKey!684 (t!42079 l!874) key!235) e!722102)))

(declare-fun b!1267487 () Bool)

(declare-fun e!722103 () Bool)

(assert (=> b!1267487 (= e!722102 e!722103)))

(declare-fun res!843832 () Bool)

(assert (=> b!1267487 (=> (not res!843832) (not e!722103))))

(assert (=> b!1267487 (= res!843832 (and (or (not ((_ is Cons!28541) (t!42079 l!874))) (bvsle (_1!10722 (h!29750 (t!42079 l!874))) key!235)) ((_ is Cons!28541) (t!42079 l!874)) (bvslt (_1!10722 (h!29750 (t!42079 l!874))) key!235)))))

(declare-fun b!1267488 () Bool)

(assert (=> b!1267488 (= e!722103 (containsKey!684 (t!42079 (t!42079 l!874)) key!235))))

(assert (= (and d!139411 (not res!843831)) b!1267487))

(assert (= (and b!1267487 res!843832) b!1267488))

(declare-fun m!1166743 () Bool)

(assert (=> b!1267488 m!1166743))

(assert (=> b!1267433 d!139411))

(declare-fun d!139419 () Bool)

(declare-fun res!843833 () Bool)

(declare-fun e!722104 () Bool)

(assert (=> d!139419 (=> res!843833 e!722104)))

(assert (=> d!139419 (= res!843833 (and ((_ is Cons!28541) l!874) (= (_1!10722 (h!29750 l!874)) key!235)))))

(assert (=> d!139419 (= (containsKey!684 l!874 key!235) e!722104)))

(declare-fun b!1267489 () Bool)

(declare-fun e!722105 () Bool)

(assert (=> b!1267489 (= e!722104 e!722105)))

(declare-fun res!843834 () Bool)

(assert (=> b!1267489 (=> (not res!843834) (not e!722105))))

(assert (=> b!1267489 (= res!843834 (and (or (not ((_ is Cons!28541) l!874)) (bvsle (_1!10722 (h!29750 l!874)) key!235)) ((_ is Cons!28541) l!874) (bvslt (_1!10722 (h!29750 l!874)) key!235)))))

(declare-fun b!1267490 () Bool)

(assert (=> b!1267490 (= e!722105 (containsKey!684 (t!42079 l!874) key!235))))

(assert (= (and d!139419 (not res!843833)) b!1267489))

(assert (= (and b!1267489 res!843834) b!1267490))

(assert (=> b!1267490 m!1166721))

(assert (=> b!1267436 d!139419))

(declare-fun d!139421 () Bool)

(declare-fun res!843835 () Bool)

(declare-fun e!722107 () Bool)

(assert (=> d!139421 (=> res!843835 e!722107)))

(assert (=> d!139421 (= res!843835 (or ((_ is Nil!28542) l!874) ((_ is Nil!28542) (t!42079 l!874))))))

(assert (=> d!139421 (= (isStrictlySorted!823 l!874) e!722107)))

(declare-fun b!1267493 () Bool)

(declare-fun e!722108 () Bool)

(assert (=> b!1267493 (= e!722107 e!722108)))

(declare-fun res!843836 () Bool)

(assert (=> b!1267493 (=> (not res!843836) (not e!722108))))

(assert (=> b!1267493 (= res!843836 (bvslt (_1!10722 (h!29750 l!874)) (_1!10722 (h!29750 (t!42079 l!874)))))))

(declare-fun b!1267494 () Bool)

(assert (=> b!1267494 (= e!722108 (isStrictlySorted!823 (t!42079 l!874)))))

(assert (= (and d!139421 (not res!843835)) b!1267493))

(assert (= (and b!1267493 res!843836) b!1267494))

(assert (=> b!1267494 m!1166717))

(assert (=> start!106842 d!139421))

(declare-fun d!139425 () Bool)

(declare-fun lt!574274 () Int)

(assert (=> d!139425 (>= lt!574274 0)))

(declare-fun e!722124 () Int)

(assert (=> d!139425 (= lt!574274 e!722124)))

(declare-fun c!123514 () Bool)

(assert (=> d!139425 (= c!123514 ((_ is Nil!28542) (t!42079 l!874)))))

(assert (=> d!139425 (= (ListPrimitiveSize!161 (t!42079 l!874)) lt!574274)))

(declare-fun b!1267515 () Bool)

(assert (=> b!1267515 (= e!722124 0)))

(declare-fun b!1267516 () Bool)

(assert (=> b!1267516 (= e!722124 (+ 1 (ListPrimitiveSize!161 (t!42079 (t!42079 l!874)))))))

(assert (= (and d!139425 c!123514) b!1267515))

(assert (= (and d!139425 (not c!123514)) b!1267516))

(declare-fun m!1166751 () Bool)

(assert (=> b!1267516 m!1166751))

(assert (=> b!1267435 d!139425))

(declare-fun d!139435 () Bool)

(declare-fun lt!574275 () Int)

(assert (=> d!139435 (>= lt!574275 0)))

(declare-fun e!722125 () Int)

(assert (=> d!139435 (= lt!574275 e!722125)))

(declare-fun c!123515 () Bool)

(assert (=> d!139435 (= c!123515 ((_ is Nil!28542) l!874))))

(assert (=> d!139435 (= (ListPrimitiveSize!161 l!874) lt!574275)))

(declare-fun b!1267517 () Bool)

(assert (=> b!1267517 (= e!722125 0)))

(declare-fun b!1267518 () Bool)

(assert (=> b!1267518 (= e!722125 (+ 1 (ListPrimitiveSize!161 (t!42079 l!874))))))

(assert (= (and d!139435 c!123515) b!1267517))

(assert (= (and d!139435 (not c!123515)) b!1267518))

(assert (=> b!1267518 m!1166723))

(assert (=> b!1267435 d!139435))

(declare-fun b!1267531 () Bool)

(declare-fun e!722134 () Bool)

(declare-fun tp!96633 () Bool)

(assert (=> b!1267531 (= e!722134 (and tp_is_empty!32607 tp!96633))))

(assert (=> b!1267431 (= tp!96627 e!722134)))

(assert (= (and b!1267431 ((_ is Cons!28541) (t!42079 l!874))) b!1267531))

(check-sat (not b!1267490) (not b!1267488) tp_is_empty!32607 (not b!1267462) (not b!1267518) (not b!1267494) (not b!1267516) (not b!1267531))
(check-sat)
