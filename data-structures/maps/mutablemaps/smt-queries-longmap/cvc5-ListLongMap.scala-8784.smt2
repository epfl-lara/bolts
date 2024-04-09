; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106902 () Bool)

(assert start!106902)

(declare-fun res!843990 () Bool)

(declare-fun e!722289 () Bool)

(assert (=> start!106902 (=> (not res!843990) (not e!722289))))

(declare-datatypes ((B!2096 0))(
  ( (B!2097 (val!16383 Int)) )
))
(declare-datatypes ((tuple2!21434 0))(
  ( (tuple2!21435 (_1!10727 (_ BitVec 64)) (_2!10727 B!2096)) )
))
(declare-datatypes ((List!28550 0))(
  ( (Nil!28547) (Cons!28546 (h!29755 tuple2!21434) (t!42086 List!28550)) )
))
(declare-fun l!874 () List!28550)

(declare-fun isStrictlySorted!828 (List!28550) Bool)

(assert (=> start!106902 (= res!843990 (isStrictlySorted!828 l!874))))

(assert (=> start!106902 e!722289))

(declare-fun e!722288 () Bool)

(assert (=> start!106902 e!722288))

(assert (=> start!106902 true))

(declare-fun b!1267763 () Bool)

(declare-fun res!843988 () Bool)

(assert (=> b!1267763 (=> (not res!843988) (not e!722289))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!689 (List!28550 (_ BitVec 64)) Bool)

(assert (=> b!1267763 (= res!843988 (not (containsKey!689 l!874 key!235)))))

(declare-fun b!1267765 () Bool)

(declare-fun removeStrictlySorted!171 (List!28550 (_ BitVec 64)) List!28550)

(assert (=> b!1267765 (= e!722289 (not (= (removeStrictlySorted!171 l!874 key!235) l!874)))))

(declare-fun b!1267764 () Bool)

(declare-fun res!843989 () Bool)

(assert (=> b!1267764 (=> (not res!843989) (not e!722289))))

(assert (=> b!1267764 (= res!843989 (not (is-Cons!28546 l!874)))))

(declare-fun b!1267766 () Bool)

(declare-fun tp_is_empty!32617 () Bool)

(declare-fun tp!96662 () Bool)

(assert (=> b!1267766 (= e!722288 (and tp_is_empty!32617 tp!96662))))

(assert (= (and start!106902 res!843990) b!1267763))

(assert (= (and b!1267763 res!843988) b!1267764))

(assert (= (and b!1267764 res!843989) b!1267765))

(assert (= (and start!106902 (is-Cons!28546 l!874)) b!1267766))

(declare-fun m!1166899 () Bool)

(assert (=> start!106902 m!1166899))

(declare-fun m!1166901 () Bool)

(assert (=> b!1267763 m!1166901))

(declare-fun m!1166903 () Bool)

(assert (=> b!1267765 m!1166903))

(push 1)

(assert (not start!106902))

(assert (not b!1267765))

(assert (not b!1267763))

(assert (not b!1267766))

(assert tp_is_empty!32617)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139531 () Bool)

(declare-fun res!844019 () Bool)

(declare-fun e!722312 () Bool)

(assert (=> d!139531 (=> res!844019 e!722312)))

(assert (=> d!139531 (= res!844019 (and (is-Cons!28546 l!874) (= (_1!10727 (h!29755 l!874)) key!235)))))

(assert (=> d!139531 (= (containsKey!689 l!874 key!235) e!722312)))

(declare-fun b!1267801 () Bool)

(declare-fun e!722313 () Bool)

(assert (=> b!1267801 (= e!722312 e!722313)))

(declare-fun res!844020 () Bool)

(assert (=> b!1267801 (=> (not res!844020) (not e!722313))))

(assert (=> b!1267801 (= res!844020 (and (or (not (is-Cons!28546 l!874)) (bvsle (_1!10727 (h!29755 l!874)) key!235)) (is-Cons!28546 l!874) (bvslt (_1!10727 (h!29755 l!874)) key!235)))))

(declare-fun b!1267802 () Bool)

(assert (=> b!1267802 (= e!722313 (containsKey!689 (t!42086 l!874) key!235))))

(assert (= (and d!139531 (not res!844019)) b!1267801))

(assert (= (and b!1267801 res!844020) b!1267802))

(declare-fun m!1166919 () Bool)

(assert (=> b!1267802 m!1166919))

(assert (=> b!1267763 d!139531))

(declare-fun d!139535 () Bool)

(declare-fun res!844027 () Bool)

(declare-fun e!722324 () Bool)

(assert (=> d!139535 (=> res!844027 e!722324)))

(assert (=> d!139535 (= res!844027 (or (is-Nil!28547 l!874) (is-Nil!28547 (t!42086 l!874))))))

(assert (=> d!139535 (= (isStrictlySorted!828 l!874) e!722324)))

(declare-fun b!1267817 () Bool)

(declare-fun e!722325 () Bool)

(assert (=> b!1267817 (= e!722324 e!722325)))

(declare-fun res!844028 () Bool)

(assert (=> b!1267817 (=> (not res!844028) (not e!722325))))

(assert (=> b!1267817 (= res!844028 (bvslt (_1!10727 (h!29755 l!874)) (_1!10727 (h!29755 (t!42086 l!874)))))))

(declare-fun b!1267818 () Bool)

(assert (=> b!1267818 (= e!722325 (isStrictlySorted!828 (t!42086 l!874)))))

(assert (= (and d!139535 (not res!844027)) b!1267817))

(assert (= (and b!1267817 res!844028) b!1267818))

(declare-fun m!1166921 () Bool)

(assert (=> b!1267818 m!1166921))

(assert (=> start!106902 d!139535))

(declare-fun b!1267863 () Bool)

(declare-fun e!722360 () List!28550)

(assert (=> b!1267863 (= e!722360 (t!42086 l!874))))

(declare-fun d!139537 () Bool)

(declare-fun e!722359 () Bool)

(assert (=> d!139537 e!722359))

(declare-fun res!844049 () Bool)

(assert (=> d!139537 (=> (not res!844049) (not e!722359))))

(declare-fun lt!574318 () List!28550)

(assert (=> d!139537 (= res!844049 (isStrictlySorted!828 lt!574318))))

(assert (=> d!139537 (= lt!574318 e!722360)))

(declare-fun c!123563 () Bool)

(assert (=> d!139537 (= c!123563 (and (is-Cons!28546 l!874) (= (_1!10727 (h!29755 l!874)) key!235)))))

(assert (=> d!139537 (isStrictlySorted!828 l!874)))

(assert (=> d!139537 (= (removeStrictlySorted!171 l!874 key!235) lt!574318)))

(declare-fun b!1267864 () Bool)

(assert (=> b!1267864 (= e!722359 (not (containsKey!689 lt!574318 key!235)))))

(declare-fun b!1267865 () Bool)

(declare-fun e!722358 () List!28550)

(assert (=> b!1267865 (= e!722360 e!722358)))

(declare-fun c!123562 () Bool)

(assert (=> b!1267865 (= c!123562 (and (is-Cons!28546 l!874) (not (= (_1!10727 (h!29755 l!874)) key!235))))))

(declare-fun b!1267866 () Bool)

(declare-fun $colon$colon!656 (List!28550 tuple2!21434) List!28550)

(assert (=> b!1267866 (= e!722358 ($colon$colon!656 (removeStrictlySorted!171 (t!42086 l!874) key!235) (h!29755 l!874)))))

(declare-fun b!1267867 () Bool)

(assert (=> b!1267867 (= e!722358 Nil!28547)))

(assert (= (and d!139537 c!123563) b!1267863))

(assert (= (and d!139537 (not c!123563)) b!1267865))

(assert (= (and b!1267865 c!123562) b!1267866))

(assert (= (and b!1267865 (not c!123562)) b!1267867))

(assert (= (and d!139537 res!844049) b!1267864))

(declare-fun m!1166943 () Bool)

(assert (=> d!139537 m!1166943))

(assert (=> d!139537 m!1166899))

(declare-fun m!1166945 () Bool)

(assert (=> b!1267864 m!1166945))

(declare-fun m!1166947 () Bool)

(assert (=> b!1267866 m!1166947))

(assert (=> b!1267866 m!1166947))

(declare-fun m!1166951 () Bool)

(assert (=> b!1267866 m!1166951))

(assert (=> b!1267765 d!139537))

(declare-fun b!1267886 () Bool)

(declare-fun e!722373 () Bool)

(declare-fun tp!96677 () Bool)

(assert (=> b!1267886 (= e!722373 (and tp_is_empty!32617 tp!96677))))

(assert (=> b!1267766 (= tp!96662 e!722373)))

(assert (= (and b!1267766 (is-Cons!28546 (t!42086 l!874))) b!1267886))

(push 1)

