; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106246 () Bool)

(assert start!106246)

(declare-fun res!842125 () Bool)

(declare-fun e!720012 () Bool)

(assert (=> start!106246 (=> (not res!842125) (not e!720012))))

(declare-datatypes ((B!1904 0))(
  ( (B!1905 (val!16287 Int)) )
))
(declare-datatypes ((tuple2!21242 0))(
  ( (tuple2!21243 (_1!10631 (_ BitVec 64)) (_2!10631 B!1904)) )
))
(declare-datatypes ((List!28454 0))(
  ( (Nil!28451) (Cons!28450 (h!29659 tuple2!21242) (t!41982 List!28454)) )
))
(declare-datatypes ((ListLongMap!19127 0))(
  ( (ListLongMap!19128 (toList!9579 List!28454)) )
))
(declare-fun lm!212 () ListLongMap!19127)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7637 (ListLongMap!19127 (_ BitVec 64)) Bool)

(assert (=> start!106246 (= res!842125 (not (contains!7637 lm!212 a1!67)))))

(assert (=> start!106246 e!720012))

(declare-fun e!720013 () Bool)

(declare-fun inv!44064 (ListLongMap!19127) Bool)

(assert (=> start!106246 (and (inv!44064 lm!212) e!720013)))

(assert (=> start!106246 true))

(declare-fun b!1264387 () Bool)

(assert (=> b!1264387 (= e!720012 false)))

(declare-fun b!1264388 () Bool)

(declare-fun tp!96195 () Bool)

(assert (=> b!1264388 (= e!720013 tp!96195)))

(assert (= (and start!106246 res!842125) b!1264387))

(assert (= start!106246 b!1264388))

(declare-fun m!1165005 () Bool)

(assert (=> start!106246 m!1165005))

(declare-fun m!1165007 () Bool)

(assert (=> start!106246 m!1165007))

(push 1)

(assert (not start!106246))

(assert (not b!1264388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

