; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133026 () Bool)

(assert start!133026)

(declare-fun res!1065096 () Bool)

(declare-fun e!867290 () Bool)

(assert (=> start!133026 (=> (not res!1065096) (not e!867290))))

(declare-datatypes ((B!2362 0))(
  ( (B!2363 (val!19267 Int)) )
))
(declare-datatypes ((tuple2!25050 0))(
  ( (tuple2!25051 (_1!12535 (_ BitVec 64)) (_2!12535 B!2362)) )
))
(declare-datatypes ((List!36447 0))(
  ( (Nil!36444) (Cons!36443 (h!37890 tuple2!25050) (t!51181 List!36447)) )
))
(declare-datatypes ((ListLongMap!22563 0))(
  ( (ListLongMap!22564 (toList!11297 List!36447)) )
))
(declare-fun lm!250 () ListLongMap!22563)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10196 (ListLongMap!22563 (_ BitVec 64)) Bool)

(assert (=> start!133026 (= res!1065096 (contains!10196 lm!250 a0!50))))

(assert (=> start!133026 e!867290))

(declare-fun e!867291 () Bool)

(declare-fun inv!57450 (ListLongMap!22563) Bool)

(assert (=> start!133026 (and (inv!57450 lm!250) e!867291)))

(assert (=> start!133026 true))

(declare-fun b!1556976 () Bool)

(assert (=> b!1556976 (= e!867290 false)))

(declare-fun b!1556977 () Bool)

(declare-fun tp!112471 () Bool)

(assert (=> b!1556977 (= e!867291 tp!112471)))

(assert (= (and start!133026 res!1065096) b!1556976))

(assert (= start!133026 b!1556977))

(declare-fun m!1434277 () Bool)

(assert (=> start!133026 m!1434277))

(declare-fun m!1434279 () Bool)

(assert (=> start!133026 m!1434279))

(check-sat (not start!133026) (not b!1556977))
(check-sat)
