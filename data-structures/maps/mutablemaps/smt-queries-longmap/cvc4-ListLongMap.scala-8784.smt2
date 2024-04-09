; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106906 () Bool)

(assert start!106906)

(declare-fun b!1267787 () Bool)

(declare-fun res!844007 () Bool)

(declare-fun e!722301 () Bool)

(assert (=> b!1267787 (=> (not res!844007) (not e!722301))))

(declare-datatypes ((B!2100 0))(
  ( (B!2101 (val!16385 Int)) )
))
(declare-datatypes ((tuple2!21438 0))(
  ( (tuple2!21439 (_1!10729 (_ BitVec 64)) (_2!10729 B!2100)) )
))
(declare-datatypes ((List!28552 0))(
  ( (Nil!28549) (Cons!28548 (h!29757 tuple2!21438) (t!42088 List!28552)) )
))
(declare-fun l!874 () List!28552)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!691 (List!28552 (_ BitVec 64)) Bool)

(assert (=> b!1267787 (= res!844007 (not (containsKey!691 l!874 key!235)))))

(declare-fun b!1267788 () Bool)

(declare-fun res!844006 () Bool)

(assert (=> b!1267788 (=> (not res!844006) (not e!722301))))

(assert (=> b!1267788 (= res!844006 (not (is-Cons!28548 l!874)))))

(declare-fun b!1267789 () Bool)

(declare-fun removeStrictlySorted!173 (List!28552 (_ BitVec 64)) List!28552)

(assert (=> b!1267789 (= e!722301 (not (= (removeStrictlySorted!173 l!874 key!235) l!874)))))

(declare-fun b!1267790 () Bool)

(declare-fun e!722300 () Bool)

(declare-fun tp_is_empty!32621 () Bool)

(declare-fun tp!96668 () Bool)

(assert (=> b!1267790 (= e!722300 (and tp_is_empty!32621 tp!96668))))

(declare-fun res!844008 () Bool)

(assert (=> start!106906 (=> (not res!844008) (not e!722301))))

(declare-fun isStrictlySorted!830 (List!28552) Bool)

(assert (=> start!106906 (= res!844008 (isStrictlySorted!830 l!874))))

(assert (=> start!106906 e!722301))

(assert (=> start!106906 e!722300))

(assert (=> start!106906 true))

(assert (= (and start!106906 res!844008) b!1267787))

(assert (= (and b!1267787 res!844007) b!1267788))

(assert (= (and b!1267788 res!844006) b!1267789))

(assert (= (and start!106906 (is-Cons!28548 l!874)) b!1267790))

(declare-fun m!1166911 () Bool)

(assert (=> b!1267787 m!1166911))

(declare-fun m!1166913 () Bool)

(assert (=> b!1267789 m!1166913))

(declare-fun m!1166915 () Bool)

(assert (=> start!106906 m!1166915))

(push 1)

(assert (not b!1267790))

(assert (not b!1267789))

(assert (not start!106906))

(assert tp_is_empty!32621)

(assert (not b!1267787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1267827 () Bool)

(declare-fun e!722329 () List!28552)

(assert (=> b!1267827 (= e!722329 Nil!28549)))

(declare-fun b!1267828 () Bool)

(declare-fun e!722328 () List!28552)

(assert (=> b!1267828 (= e!722328 (t!42088 l!874))))

(declare-fun b!1267829 () Bool)

(declare-fun $colon$colon!654 (List!28552 tuple2!21438) List!28552)

(assert (=> b!1267829 (= e!722329 ($colon$colon!654 (removeStrictlySorted!173 (t!42088 l!874) key!235) (h!29757 l!874)))))

(declare-fun b!1267830 () Bool)

(assert (=> b!1267830 (= e!722328 e!722329)))

(declare-fun c!123554 () Bool)

(assert (=> b!1267830 (= c!123554 (and (is-Cons!28548 l!874) (not (= (_1!10729 (h!29757 l!874)) key!235))))))

(declare-fun b!1267831 () Bool)

(declare-fun e!722331 () Bool)

(declare-fun lt!574314 () List!28552)

(assert (=> b!1267831 (= e!722331 (not (containsKey!691 lt!574314 key!235)))))

(declare-fun d!139529 () Bool)

(assert (=> d!139529 e!722331))

(declare-fun res!844029 () Bool)

(assert (=> d!139529 (=> (not res!844029) (not e!722331))))

(assert (=> d!139529 (= res!844029 (isStrictlySorted!830 lt!574314))))

(assert (=> d!139529 (= lt!574314 e!722328)))

(declare-fun c!123552 () Bool)

(assert (=> d!139529 (= c!123552 (and (is-Cons!28548 l!874) (= (_1!10729 (h!29757 l!874)) key!235)))))

(assert (=> d!139529 (isStrictlySorted!830 l!874)))

(assert (=> d!139529 (= (removeStrictlySorted!173 l!874 key!235) lt!574314)))

(assert (= (and d!139529 c!123552) b!1267828))

(assert (= (and d!139529 (not c!123552)) b!1267830))

(assert (= (and b!1267830 c!123554) b!1267829))

(assert (= (and b!1267830 (not c!123554)) b!1267827))

(assert (= (and d!139529 res!844029) b!1267831))

(declare-fun m!1166923 () Bool)

(assert (=> b!1267829 m!1166923))

(assert (=> b!1267829 m!1166923))

(declare-fun m!1166925 () Bool)

(assert (=> b!1267829 m!1166925))

(declare-fun m!1166927 () Bool)

(assert (=> b!1267831 m!1166927))

(declare-fun m!1166929 () Bool)

(assert (=> d!139529 m!1166929))

(assert (=> d!139529 m!1166915))

(assert (=> b!1267789 d!139529))

(declare-fun d!139539 () Bool)

(declare-fun res!844037 () Bool)

(declare-fun e!722342 () Bool)

(assert (=> d!139539 (=> res!844037 e!722342)))

(assert (=> d!139539 (= res!844037 (or (is-Nil!28549 l!874) (is-Nil!28549 (t!42088 l!874))))))

(assert (=> d!139539 (= (isStrictlySorted!830 l!874) e!722342)))

(declare-fun b!1267843 () Bool)

(declare-fun e!722343 () Bool)

(assert (=> b!1267843 (= e!722342 e!722343)))

(declare-fun res!844038 () Bool)

(assert (=> b!1267843 (=> (not res!844038) (not e!722343))))

(assert (=> b!1267843 (= res!844038 (bvslt (_1!10729 (h!29757 l!874)) (_1!10729 (h!29757 (t!42088 l!874)))))))

(declare-fun b!1267844 () Bool)

(assert (=> b!1267844 (= e!722343 (isStrictlySorted!830 (t!42088 l!874)))))

(assert (= (and d!139539 (not res!844037)) b!1267843))

(assert (= (and b!1267843 res!844038) b!1267844))

(declare-fun m!1166939 () Bool)

(assert (=> b!1267844 m!1166939))

(assert (=> start!106906 d!139539))

(declare-fun d!139543 () Bool)

(declare-fun res!844052 () Bool)

(declare-fun e!722363 () Bool)

(assert (=> d!139543 (=> res!844052 e!722363)))

(assert (=> d!139543 (= res!844052 (and (is-Cons!28548 l!874) (= (_1!10729 (h!29757 l!874)) key!235)))))

(assert (=> d!139543 (= (containsKey!691 l!874 key!235) e!722363)))

(declare-fun b!1267870 () Bool)

(declare-fun e!722364 () Bool)

(assert (=> b!1267870 (= e!722363 e!722364)))

(declare-fun res!844053 () Bool)

(assert (=> b!1267870 (=> (not res!844053) (not e!722364))))

(assert (=> b!1267870 (= res!844053 (and (or (not (is-Cons!28548 l!874)) (bvsle (_1!10729 (h!29757 l!874)) key!235)) (is-Cons!28548 l!874) (bvslt (_1!10729 (h!29757 l!874)) key!235)))))

(declare-fun b!1267871 () Bool)

(assert (=> b!1267871 (= e!722364 (containsKey!691 (t!42088 l!874) key!235))))

(assert (= (and d!139543 (not res!844052)) b!1267870))

(assert (= (and b!1267870 res!844053) b!1267871))

(declare-fun m!1166949 () Bool)

(assert (=> b!1267871 m!1166949))

(assert (=> b!1267787 d!139543))

(declare-fun b!1267885 () Bool)

(declare-fun e!722372 () Bool)

(declare-fun tp!96676 () Bool)

(assert (=> b!1267885 (= e!722372 (and tp_is_empty!32621 tp!96676))))

(assert (=> b!1267790 (= tp!96668 e!722372)))

(assert (= (and b!1267790 (is-Cons!28548 (t!42088 l!874))) b!1267885))

(push 1)

