; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5900 () Bool)

(assert start!5900)

(declare-fun b_free!1373 () Bool)

(declare-fun b_next!1373 () Bool)

(assert (=> start!5900 (= b_free!1373 (not b_next!1373))))

(declare-fun tp!5747 () Bool)

(declare-fun b_and!2405 () Bool)

(assert (=> start!5900 (= tp!5747 b_and!2405)))

(declare-fun res!24565 () Bool)

(declare-fun e!26244 () Bool)

(assert (=> start!5900 (=> (not res!24565) (not e!26244))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5900 (= res!24565 (validMask!0 mask!853))))

(assert (=> start!5900 e!26244))

(assert (=> start!5900 true))

(assert (=> start!5900 tp!5747))

(declare-fun b!41405 () Bool)

(declare-fun e!26243 () Bool)

(assert (=> b!41405 (= e!26244 (not e!26243))))

(declare-fun res!24564 () Bool)

(assert (=> b!41405 (=> res!24564 e!26243)))

(declare-datatypes ((V!2109 0))(
  ( (V!2110 (val!920 Int)) )
))
(declare-datatypes ((tuple2!1498 0))(
  ( (tuple2!1499 (_1!759 (_ BitVec 64)) (_2!759 V!2109)) )
))
(declare-datatypes ((List!1078 0))(
  ( (Nil!1075) (Cons!1074 (h!1651 tuple2!1498) (t!3955 List!1078)) )
))
(declare-datatypes ((ListLongMap!1079 0))(
  ( (ListLongMap!1080 (toList!555 List!1078)) )
))
(declare-fun lt!16243 () ListLongMap!1079)

(assert (=> b!41405 (= res!24564 (= lt!16243 (ListLongMap!1080 Nil!1075)))))

(declare-fun lt!16242 () V!2109)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2607 0))(
  ( (array!2608 (arr!1247 (Array (_ BitVec 32) (_ BitVec 64))) (size!1399 (_ BitVec 32))) )
))
(declare-fun lt!16241 () array!2607)

(declare-datatypes ((ValueCell!634 0))(
  ( (ValueCellFull!634 (v!2003 V!2109)) (EmptyCell!634) )
))
(declare-datatypes ((array!2609 0))(
  ( (array!2610 (arr!1248 (Array (_ BitVec 32) ValueCell!634)) (size!1400 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!248 0))(
  ( (LongMapFixedSize!249 (defaultEntry!1814 Int) (mask!5213 (_ BitVec 32)) (extraKeys!1705 (_ BitVec 32)) (zeroValue!1732 V!2109) (minValue!1732 V!2109) (_size!173 (_ BitVec 32)) (_keys!3321 array!2607) (_values!1797 array!2609) (_vacant!173 (_ BitVec 32))) )
))
(declare-fun map!699 (LongMapFixedSize!248) ListLongMap!1079)

(assert (=> b!41405 (= lt!16243 (map!699 (LongMapFixedSize!249 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16242 lt!16242 #b00000000000000000000000000000000 lt!16241 (array!2610 ((as const (Array (_ BitVec 32) ValueCell!634)) EmptyCell!634) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1079 0))(
  ( (Nil!1076) (Cons!1075 (h!1652 (_ BitVec 64)) (t!3956 List!1079)) )
))
(declare-fun arrayNoDuplicates!0 (array!2607 (_ BitVec 32) List!1079) Bool)

(assert (=> b!41405 (arrayNoDuplicates!0 lt!16241 #b00000000000000000000000000000000 Nil!1076)))

(declare-datatypes ((Unit!1005 0))(
  ( (Unit!1006) )
))
(declare-fun lt!16244 () Unit!1005)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2607 (_ BitVec 32) (_ BitVec 32) List!1079) Unit!1005)

(assert (=> b!41405 (= lt!16244 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16241 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2607 (_ BitVec 32)) Bool)

(assert (=> b!41405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16241 mask!853)))

(declare-fun lt!16245 () Unit!1005)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2607 (_ BitVec 32) (_ BitVec 32)) Unit!1005)

(assert (=> b!41405 (= lt!16245 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16241 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2607 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41405 (= (arrayCountValidKeys!0 lt!16241 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16246 () Unit!1005)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2607 (_ BitVec 32) (_ BitVec 32)) Unit!1005)

(assert (=> b!41405 (= lt!16246 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16241 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41405 (= lt!16241 (array!2608 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!195 (Int (_ BitVec 64)) V!2109)

(assert (=> b!41405 (= lt!16242 (dynLambda!195 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41406 () Bool)

(declare-fun res!24563 () Bool)

(assert (=> b!41406 (=> res!24563 e!26243)))

(declare-fun isEmpty!240 (List!1078) Bool)

(assert (=> b!41406 (= res!24563 (isEmpty!240 (toList!555 lt!16243)))))

(declare-fun b!41407 () Bool)

(assert (=> b!41407 (= e!26243 (not (= (toList!555 lt!16243) Nil!1075)))))

(assert (= (and start!5900 res!24565) b!41405))

(assert (= (and b!41405 (not res!24564)) b!41406))

(assert (= (and b!41406 (not res!24563)) b!41407))

(declare-fun b_lambda!2117 () Bool)

(assert (=> (not b_lambda!2117) (not b!41405)))

(declare-fun t!3954 () Bool)

(declare-fun tb!863 () Bool)

(assert (=> (and start!5900 (= defaultEntry!470 defaultEntry!470) t!3954) tb!863))

(declare-fun result!1469 () Bool)

(declare-fun tp_is_empty!1763 () Bool)

(assert (=> tb!863 (= result!1469 tp_is_empty!1763)))

(assert (=> b!41405 t!3954))

(declare-fun b_and!2407 () Bool)

(assert (= b_and!2405 (and (=> t!3954 result!1469) b_and!2407)))

(declare-fun m!34623 () Bool)

(assert (=> start!5900 m!34623))

(declare-fun m!34625 () Bool)

(assert (=> b!41405 m!34625))

(declare-fun m!34627 () Bool)

(assert (=> b!41405 m!34627))

(declare-fun m!34629 () Bool)

(assert (=> b!41405 m!34629))

(declare-fun m!34631 () Bool)

(assert (=> b!41405 m!34631))

(declare-fun m!34633 () Bool)

(assert (=> b!41405 m!34633))

(declare-fun m!34635 () Bool)

(assert (=> b!41405 m!34635))

(declare-fun m!34637 () Bool)

(assert (=> b!41405 m!34637))

(declare-fun m!34639 () Bool)

(assert (=> b!41405 m!34639))

(declare-fun m!34641 () Bool)

(assert (=> b!41406 m!34641))

(push 1)

(assert b_and!2407)

(assert (not b_next!1373))

(assert (not b_lambda!2117))

(assert tp_is_empty!1763)

(assert (not start!5900))

(assert (not b!41405))

(assert (not b!41406))

