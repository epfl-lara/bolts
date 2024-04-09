; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107952 () Bool)

(assert start!107952)

(declare-fun b!1275130 () Bool)

(declare-fun res!847689 () Bool)

(declare-fun e!727884 () Bool)

(assert (=> b!1275130 (=> (not res!847689) (not e!727884))))

(declare-datatypes ((B!2190 0))(
  ( (B!2191 (val!16691 Int)) )
))
(declare-datatypes ((tuple2!21610 0))(
  ( (tuple2!21611 (_1!10815 (_ BitVec 64)) (_2!10815 B!2190)) )
))
(declare-datatypes ((List!28775 0))(
  ( (Nil!28772) (Cons!28771 (h!29980 tuple2!21610) (t!42318 List!28775)) )
))
(declare-fun l!595 () List!28775)

(declare-fun key!173 () (_ BitVec 64))

(assert (=> b!1275130 (= res!847689 (and (or (not (is-Cons!28771 l!595)) (not (= (_1!10815 (h!29980 l!595)) key!173))) (or (not (is-Cons!28771 l!595)) (= (_1!10815 (h!29980 l!595)) key!173)) (not (is-Nil!28772 l!595))))))

(declare-fun b!1275131 () Bool)

(declare-fun e!727881 () Bool)

(declare-fun tp_is_empty!33233 () Bool)

(declare-fun tp!98120 () Bool)

(assert (=> b!1275131 (= e!727881 (and tp_is_empty!33233 tp!98120))))

(declare-fun b!1275132 () Bool)

(declare-fun e!727883 () Bool)

(declare-fun lt!575267 () List!28775)

(declare-fun containsKey!709 (List!28775 (_ BitVec 64)) Bool)

(assert (=> b!1275132 (= e!727883 (containsKey!709 lt!575267 key!173))))

(declare-fun b!1275133 () Bool)

(assert (=> b!1275133 (= e!727884 e!727883)))

(declare-fun res!847688 () Bool)

(assert (=> b!1275133 (=> res!847688 e!727883)))

(declare-fun isStrictlySorted!866 (List!28775) Bool)

(assert (=> b!1275133 (= res!847688 (not (isStrictlySorted!866 lt!575267)))))

(declare-fun err!134 () List!28775)

(assert (=> b!1275133 (= lt!575267 err!134)))

(assert (=> b!1275133 true))

(declare-fun e!727882 () Bool)

(assert (=> b!1275133 e!727882))

(declare-fun b!1275129 () Bool)

(declare-fun tp!98121 () Bool)

(assert (=> b!1275129 (= e!727882 (and tp_is_empty!33233 tp!98121))))

(declare-fun res!847690 () Bool)

(assert (=> start!107952 (=> (not res!847690) (not e!727884))))

(assert (=> start!107952 (= res!847690 (isStrictlySorted!866 l!595))))

(assert (=> start!107952 e!727884))

(assert (=> start!107952 e!727881))

(assert (=> start!107952 true))

(assert (= (and start!107952 res!847690) b!1275130))

(assert (= (and b!1275130 res!847689) b!1275133))

(assert (= (and b!1275133 (is-Cons!28771 err!134)) b!1275129))

(assert (= (and b!1275133 (not res!847688)) b!1275132))

(assert (= (and start!107952 (is-Cons!28771 l!595)) b!1275131))

(declare-fun m!1171507 () Bool)

(assert (=> b!1275132 m!1171507))

(declare-fun m!1171509 () Bool)

(assert (=> b!1275133 m!1171509))

(declare-fun m!1171511 () Bool)

(assert (=> start!107952 m!1171511))

(push 1)

