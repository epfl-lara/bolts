; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132456 () Bool)

(assert start!132456)

(declare-fun res!1063308 () Bool)

(declare-fun e!864905 () Bool)

(assert (=> start!132456 (=> (not res!1063308) (not e!864905))))

(declare-datatypes ((B!2206 0))(
  ( (B!2207 (val!19189 Int)) )
))
(declare-datatypes ((tuple2!24894 0))(
  ( (tuple2!24895 (_1!12457 (_ BitVec 64)) (_2!12457 B!2206)) )
))
(declare-datatypes ((List!36369 0))(
  ( (Nil!36366) (Cons!36365 (h!37812 tuple2!24894) (t!51097 List!36369)) )
))
(declare-datatypes ((ListLongMap!22515 0))(
  ( (ListLongMap!22516 (toList!11273 List!36369)) )
))
(declare-fun lm!249 () ListLongMap!22515)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10145 (ListLongMap!22515 (_ BitVec 64)) Bool)

(assert (=> start!132456 (= res!1063308 (contains!10145 lm!249 a0!49))))

(assert (=> start!132456 e!864905))

(declare-fun e!864906 () Bool)

(declare-fun inv!57296 (ListLongMap!22515) Bool)

(assert (=> start!132456 (and (inv!57296 lm!249) e!864906)))

(assert (=> start!132456 true))

(declare-fun b!1553400 () Bool)

(assert (=> b!1553400 (= e!864905 false)))

(declare-fun b!1553401 () Bool)

(declare-fun tp!112105 () Bool)

(assert (=> b!1553401 (= e!864906 tp!112105)))

(assert (= (and start!132456 res!1063308) b!1553400))

(assert (= start!132456 b!1553401))

(declare-fun m!1432099 () Bool)

(assert (=> start!132456 m!1432099))

(declare-fun m!1432101 () Bool)

(assert (=> start!132456 m!1432101))

(check-sat (not start!132456) (not b!1553401))
(check-sat)
