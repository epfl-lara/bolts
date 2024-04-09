; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106248 () Bool)

(assert start!106248)

(declare-fun res!842128 () Bool)

(declare-fun e!720018 () Bool)

(assert (=> start!106248 (=> (not res!842128) (not e!720018))))

(declare-datatypes ((B!1906 0))(
  ( (B!1907 (val!16288 Int)) )
))
(declare-datatypes ((tuple2!21244 0))(
  ( (tuple2!21245 (_1!10632 (_ BitVec 64)) (_2!10632 B!1906)) )
))
(declare-datatypes ((List!28455 0))(
  ( (Nil!28452) (Cons!28451 (h!29660 tuple2!21244) (t!41983 List!28455)) )
))
(declare-datatypes ((ListLongMap!19129 0))(
  ( (ListLongMap!19130 (toList!9580 List!28455)) )
))
(declare-fun lm!212 () ListLongMap!19129)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7638 (ListLongMap!19129 (_ BitVec 64)) Bool)

(assert (=> start!106248 (= res!842128 (not (contains!7638 lm!212 a1!67)))))

(assert (=> start!106248 e!720018))

(declare-fun e!720019 () Bool)

(declare-fun inv!44065 (ListLongMap!19129) Bool)

(assert (=> start!106248 (and (inv!44065 lm!212) e!720019)))

(assert (=> start!106248 true))

(declare-fun b!1264393 () Bool)

(assert (=> b!1264393 (= e!720018 false)))

(declare-fun b!1264394 () Bool)

(declare-fun tp!96198 () Bool)

(assert (=> b!1264394 (= e!720019 tp!96198)))

(assert (= (and start!106248 res!842128) b!1264393))

(assert (= start!106248 b!1264394))

(declare-fun m!1165009 () Bool)

(assert (=> start!106248 m!1165009))

(declare-fun m!1165011 () Bool)

(assert (=> start!106248 m!1165011))

(check-sat (not start!106248) (not b!1264394))
(check-sat)
