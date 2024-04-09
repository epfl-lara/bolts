; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106242 () Bool)

(assert start!106242)

(declare-fun res!842119 () Bool)

(declare-fun e!720000 () Bool)

(assert (=> start!106242 (=> (not res!842119) (not e!720000))))

(declare-datatypes ((B!1900 0))(
  ( (B!1901 (val!16285 Int)) )
))
(declare-datatypes ((tuple2!21238 0))(
  ( (tuple2!21239 (_1!10629 (_ BitVec 64)) (_2!10629 B!1900)) )
))
(declare-datatypes ((List!28452 0))(
  ( (Nil!28449) (Cons!28448 (h!29657 tuple2!21238) (t!41980 List!28452)) )
))
(declare-datatypes ((ListLongMap!19123 0))(
  ( (ListLongMap!19124 (toList!9577 List!28452)) )
))
(declare-fun lm!212 () ListLongMap!19123)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7635 (ListLongMap!19123 (_ BitVec 64)) Bool)

(assert (=> start!106242 (= res!842119 (not (contains!7635 lm!212 a1!67)))))

(assert (=> start!106242 e!720000))

(declare-fun e!720001 () Bool)

(declare-fun inv!44057 (ListLongMap!19123) Bool)

(assert (=> start!106242 (and (inv!44057 lm!212) e!720001)))

(assert (=> start!106242 true))

(declare-fun b!1264375 () Bool)

(assert (=> b!1264375 (= e!720000 false)))

(declare-fun b!1264376 () Bool)

(declare-fun tp!96189 () Bool)

(assert (=> b!1264376 (= e!720001 tp!96189)))

(assert (= (and start!106242 res!842119) b!1264375))

(assert (= start!106242 b!1264376))

(declare-fun m!1164997 () Bool)

(assert (=> start!106242 m!1164997))

(declare-fun m!1164999 () Bool)

(assert (=> start!106242 m!1164999))

(check-sat (not start!106242) (not b!1264376))
(check-sat)
