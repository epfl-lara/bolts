; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107746 () Bool)

(assert start!107746)

(declare-datatypes ((B!2104 0))(
  ( (B!2105 (val!16648 Int)) )
))
(declare-datatypes ((tuple2!21524 0))(
  ( (tuple2!21525 (_1!10772 (_ BitVec 64)) (_2!10772 B!2104)) )
))
(declare-datatypes ((List!28732 0))(
  ( (Nil!28729) (Cons!28728 (h!29937 tuple2!21524) (t!42272 List!28732)) )
))
(declare-datatypes ((ListLongMap!19265 0))(
  ( (ListLongMap!19266 (toList!9648 List!28732)) )
))
(declare-fun thiss!217 () ListLongMap!19265)

(declare-fun isStrictlySorted!832 (List!28732) Bool)

(assert (=> start!107746 (not (isStrictlySorted!832 (toList!9648 thiss!217)))))

(declare-fun e!727188 () Bool)

(declare-fun inv!44692 (ListLongMap!19265) Bool)

(assert (=> start!107746 (and (inv!44692 thiss!217) e!727188)))

(declare-fun b!1274230 () Bool)

(declare-fun tp!97899 () Bool)

(assert (=> b!1274230 (= e!727188 tp!97899)))

(assert (= start!107746 b!1274230))

(declare-fun m!1171073 () Bool)

(assert (=> start!107746 m!1171073))

(declare-fun m!1171075 () Bool)

(assert (=> start!107746 m!1171075))

(check-sat (not start!107746) (not b!1274230))
(check-sat)
(get-model)

(declare-fun d!140033 () Bool)

(declare-fun res!847258 () Bool)

(declare-fun e!727206 () Bool)

(assert (=> d!140033 (=> res!847258 e!727206)))

(get-info :version)

(assert (=> d!140033 (= res!847258 (or ((_ is Nil!28729) (toList!9648 thiss!217)) ((_ is Nil!28729) (t!42272 (toList!9648 thiss!217)))))))

(assert (=> d!140033 (= (isStrictlySorted!832 (toList!9648 thiss!217)) e!727206)))

(declare-fun b!1274248 () Bool)

(declare-fun e!727207 () Bool)

(assert (=> b!1274248 (= e!727206 e!727207)))

(declare-fun res!847259 () Bool)

(assert (=> b!1274248 (=> (not res!847259) (not e!727207))))

(assert (=> b!1274248 (= res!847259 (bvslt (_1!10772 (h!29937 (toList!9648 thiss!217))) (_1!10772 (h!29937 (t!42272 (toList!9648 thiss!217))))))))

(declare-fun b!1274249 () Bool)

(assert (=> b!1274249 (= e!727207 (isStrictlySorted!832 (t!42272 (toList!9648 thiss!217))))))

(assert (= (and d!140033 (not res!847258)) b!1274248))

(assert (= (and b!1274248 res!847259) b!1274249))

(declare-fun m!1171083 () Bool)

(assert (=> b!1274249 m!1171083))

(assert (=> start!107746 d!140033))

(declare-fun d!140041 () Bool)

(assert (=> d!140041 (= (inv!44692 thiss!217) (isStrictlySorted!832 (toList!9648 thiss!217)))))

(declare-fun bs!36171 () Bool)

(assert (= bs!36171 d!140041))

(assert (=> bs!36171 m!1171073))

(assert (=> start!107746 d!140041))

(declare-fun b!1274265 () Bool)

(declare-fun e!727217 () Bool)

(declare-fun tp_is_empty!33147 () Bool)

(declare-fun tp!97910 () Bool)

(assert (=> b!1274265 (= e!727217 (and tp_is_empty!33147 tp!97910))))

(assert (=> b!1274230 (= tp!97899 e!727217)))

(assert (= (and b!1274230 ((_ is Cons!28728) (toList!9648 thiss!217))) b!1274265))

(check-sat (not d!140041) (not b!1274249) (not b!1274265) tp_is_empty!33147)
(check-sat)
