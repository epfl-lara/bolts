; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7464 () Bool)

(assert start!7464)

(declare-fun res!27852 () Bool)

(declare-fun e!30756 () Bool)

(assert (=> start!7464 (=> (not res!27852) (not e!30756))))

(declare-datatypes ((B!910 0))(
  ( (B!911 (val!1075 Int)) )
))
(declare-datatypes ((tuple2!1736 0))(
  ( (tuple2!1737 (_1!878 (_ BitVec 64)) (_2!878 B!910)) )
))
(declare-datatypes ((List!1291 0))(
  ( (Nil!1288) (Cons!1287 (h!1867 tuple2!1736) (t!4327 List!1291)) )
))
(declare-datatypes ((ListLongMap!1233 0))(
  ( (ListLongMap!1234 (toList!632 List!1291)) )
))
(declare-fun lm!267 () ListLongMap!1233)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!594 (ListLongMap!1233 (_ BitVec 64)) Bool)

(assert (=> start!7464 (= res!27852 (not (contains!594 lm!267 key!657)))))

(assert (=> start!7464 e!30756))

(declare-fun e!30757 () Bool)

(declare-fun inv!2213 (ListLongMap!1233) Bool)

(assert (=> start!7464 (and (inv!2213 lm!267) e!30757)))

(assert (=> start!7464 true))

(declare-fun b!47957 () Bool)

(assert (=> b!47957 (= e!30756 false)))

(declare-fun b!47958 () Bool)

(declare-fun tp!6305 () Bool)

(assert (=> b!47958 (= e!30757 tp!6305)))

(assert (= (and start!7464 res!27852) b!47957))

(assert (= start!7464 b!47958))

(declare-fun m!41995 () Bool)

(assert (=> start!7464 m!41995))

(declare-fun m!41997 () Bool)

(assert (=> start!7464 m!41997))

(check-sat (not start!7464) (not b!47958))
(check-sat)
