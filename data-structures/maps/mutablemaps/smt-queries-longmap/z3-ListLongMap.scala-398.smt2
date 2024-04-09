; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7458 () Bool)

(assert start!7458)

(declare-fun res!27843 () Bool)

(declare-fun e!30738 () Bool)

(assert (=> start!7458 (=> (not res!27843) (not e!30738))))

(declare-datatypes ((B!904 0))(
  ( (B!905 (val!1072 Int)) )
))
(declare-datatypes ((tuple2!1730 0))(
  ( (tuple2!1731 (_1!875 (_ BitVec 64)) (_2!875 B!904)) )
))
(declare-datatypes ((List!1288 0))(
  ( (Nil!1285) (Cons!1284 (h!1864 tuple2!1730) (t!4324 List!1288)) )
))
(declare-datatypes ((ListLongMap!1227 0))(
  ( (ListLongMap!1228 (toList!629 List!1288)) )
))
(declare-fun lm!267 () ListLongMap!1227)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!591 (ListLongMap!1227 (_ BitVec 64)) Bool)

(assert (=> start!7458 (= res!27843 (not (contains!591 lm!267 key!657)))))

(assert (=> start!7458 e!30738))

(declare-fun e!30739 () Bool)

(declare-fun inv!2205 (ListLongMap!1227) Bool)

(assert (=> start!7458 (and (inv!2205 lm!267) e!30739)))

(assert (=> start!7458 true))

(declare-fun b!47939 () Bool)

(assert (=> b!47939 (= e!30738 false)))

(declare-fun b!47940 () Bool)

(declare-fun tp!6296 () Bool)

(assert (=> b!47940 (= e!30739 tp!6296)))

(assert (= (and start!7458 res!27843) b!47939))

(assert (= start!7458 b!47940))

(declare-fun m!41983 () Bool)

(assert (=> start!7458 m!41983))

(declare-fun m!41985 () Bool)

(assert (=> start!7458 m!41985))

(check-sat (not start!7458) (not b!47940))
(check-sat)
