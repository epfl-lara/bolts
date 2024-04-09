; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107748 () Bool)

(assert start!107748)

(declare-datatypes ((B!2106 0))(
  ( (B!2107 (val!16649 Int)) )
))
(declare-datatypes ((tuple2!21526 0))(
  ( (tuple2!21527 (_1!10773 (_ BitVec 64)) (_2!10773 B!2106)) )
))
(declare-datatypes ((List!28733 0))(
  ( (Nil!28730) (Cons!28729 (h!29938 tuple2!21526) (t!42273 List!28733)) )
))
(declare-datatypes ((ListLongMap!19267 0))(
  ( (ListLongMap!19268 (toList!9649 List!28733)) )
))
(declare-fun thiss!217 () ListLongMap!19267)

(declare-fun isStrictlySorted!833 (List!28733) Bool)

(assert (=> start!107748 (not (isStrictlySorted!833 (toList!9649 thiss!217)))))

(declare-fun e!727191 () Bool)

(declare-fun inv!44693 (ListLongMap!19267) Bool)

(assert (=> start!107748 (and (inv!44693 thiss!217) e!727191)))

(declare-fun b!1274233 () Bool)

(declare-fun tp!97902 () Bool)

(assert (=> b!1274233 (= e!727191 tp!97902)))

(assert (= start!107748 b!1274233))

(declare-fun m!1171077 () Bool)

(assert (=> start!107748 m!1171077))

(declare-fun m!1171079 () Bool)

(assert (=> start!107748 m!1171079))

(push 1)

(assert (not start!107748))

(assert (not b!1274233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140037 () Bool)

(declare-fun res!847260 () Bool)

(declare-fun e!727208 () Bool)

(assert (=> d!140037 (=> res!847260 e!727208)))

(assert (=> d!140037 (= res!847260 (or (is-Nil!28730 (toList!9649 thiss!217)) (is-Nil!28730 (t!42273 (toList!9649 thiss!217)))))))

(assert (=> d!140037 (= (isStrictlySorted!833 (toList!9649 thiss!217)) e!727208)))

(declare-fun b!1274250 () Bool)

(declare-fun e!727209 () Bool)

(assert (=> b!1274250 (= e!727208 e!727209)))

(declare-fun res!847261 () Bool)

(assert (=> b!1274250 (=> (not res!847261) (not e!727209))))

(assert (=> b!1274250 (= res!847261 (bvslt (_1!10773 (h!29938 (toList!9649 thiss!217))) (_1!10773 (h!29938 (t!42273 (toList!9649 thiss!217))))))))

(declare-fun b!1274251 () Bool)

(assert (=> b!1274251 (= e!727209 (isStrictlySorted!833 (t!42273 (toList!9649 thiss!217))))))

(assert (= (and d!140037 (not res!847260)) b!1274250))

(assert (= (and b!1274250 res!847261) b!1274251))

(declare-fun m!1171085 () Bool)

(assert (=> b!1274251 m!1171085))

(assert (=> start!107748 d!140037))

(declare-fun d!140043 () Bool)

(assert (=> d!140043 (= (inv!44693 thiss!217) (isStrictlySorted!833 (toList!9649 thiss!217)))))

(declare-fun bs!36172 () Bool)

