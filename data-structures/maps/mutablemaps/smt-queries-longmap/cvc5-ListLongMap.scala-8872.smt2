; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107744 () Bool)

(assert start!107744)

(declare-datatypes ((B!2102 0))(
  ( (B!2103 (val!16647 Int)) )
))
(declare-datatypes ((tuple2!21522 0))(
  ( (tuple2!21523 (_1!10771 (_ BitVec 64)) (_2!10771 B!2102)) )
))
(declare-datatypes ((List!28731 0))(
  ( (Nil!28728) (Cons!28727 (h!29936 tuple2!21522) (t!42271 List!28731)) )
))
(declare-datatypes ((ListLongMap!19263 0))(
  ( (ListLongMap!19264 (toList!9647 List!28731)) )
))
(declare-fun thiss!217 () ListLongMap!19263)

(declare-fun isStrictlySorted!831 (List!28731) Bool)

(assert (=> start!107744 (not (isStrictlySorted!831 (toList!9647 thiss!217)))))

(declare-fun e!727185 () Bool)

(declare-fun inv!44691 (ListLongMap!19263) Bool)

(assert (=> start!107744 (and (inv!44691 thiss!217) e!727185)))

(declare-fun b!1274227 () Bool)

(declare-fun tp!97896 () Bool)

(assert (=> b!1274227 (= e!727185 tp!97896)))

(assert (= start!107744 b!1274227))

(declare-fun m!1171069 () Bool)

(assert (=> start!107744 m!1171069))

(declare-fun m!1171071 () Bool)

(assert (=> start!107744 m!1171071))

(push 1)

(assert (not start!107744))

(assert (not b!1274227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140035 () Bool)

(declare-fun res!847256 () Bool)

(declare-fun e!727204 () Bool)

(assert (=> d!140035 (=> res!847256 e!727204)))

(assert (=> d!140035 (= res!847256 (or (is-Nil!28728 (toList!9647 thiss!217)) (is-Nil!28728 (t!42271 (toList!9647 thiss!217)))))))

(assert (=> d!140035 (= (isStrictlySorted!831 (toList!9647 thiss!217)) e!727204)))

(declare-fun b!1274246 () Bool)

(declare-fun e!727205 () Bool)

(assert (=> b!1274246 (= e!727204 e!727205)))

(declare-fun res!847257 () Bool)

(assert (=> b!1274246 (=> (not res!847257) (not e!727205))))

(assert (=> b!1274246 (= res!847257 (bvslt (_1!10771 (h!29936 (toList!9647 thiss!217))) (_1!10771 (h!29936 (t!42271 (toList!9647 thiss!217))))))))

(declare-fun b!1274247 () Bool)

(assert (=> b!1274247 (= e!727205 (isStrictlySorted!831 (t!42271 (toList!9647 thiss!217))))))

(assert (= (and d!140035 (not res!847256)) b!1274246))

(assert (= (and b!1274246 res!847257) b!1274247))

(declare-fun m!1171081 () Bool)

(assert (=> b!1274247 m!1171081))

(assert (=> start!107744 d!140035))

(declare-fun d!140039 () Bool)

(assert (=> d!140039 (= (inv!44691 thiss!217) (isStrictlySorted!831 (toList!9647 thiss!217)))))

(declare-fun bs!36170 () Bool)

(assert (= bs!36170 d!140039))

(assert (=> bs!36170 m!1171069))

(assert (=> start!107744 d!140039))

(declare-fun b!1274264 () Bool)

(declare-fun e!727216 () Bool)

(declare-fun tp_is_empty!33145 () Bool)

(declare-fun tp!97907 () Bool)

(assert (=> b!1274264 (= e!727216 (and tp_is_empty!33145 tp!97907))))

(assert (=> b!1274227 (= tp!97896 e!727216)))

(assert (= (and b!1274227 (is-Cons!28727 (toList!9647 thiss!217))) b!1274264))

(push 1)

