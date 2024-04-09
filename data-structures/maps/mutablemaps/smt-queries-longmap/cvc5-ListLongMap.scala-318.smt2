; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5896 () Bool)

(assert start!5896)

(declare-fun b_free!1369 () Bool)

(declare-fun b_next!1369 () Bool)

(assert (=> start!5896 (= b_free!1369 (not b_next!1369))))

(declare-fun tp!5741 () Bool)

(declare-fun b_and!2397 () Bool)

(assert (=> start!5896 (= tp!5741 b_and!2397)))

(declare-fun res!24545 () Bool)

(declare-fun e!26231 () Bool)

(assert (=> start!5896 (=> (not res!24545) (not e!26231))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5896 (= res!24545 (validMask!0 mask!853))))

(assert (=> start!5896 e!26231))

(assert (=> start!5896 true))

(assert (=> start!5896 tp!5741))

(declare-fun b!41383 () Bool)

(declare-fun e!26232 () Bool)

(assert (=> b!41383 (= e!26231 (not e!26232))))

(declare-fun res!24547 () Bool)

(assert (=> b!41383 (=> res!24547 e!26232)))

(declare-datatypes ((V!2105 0))(
  ( (V!2106 (val!918 Int)) )
))
(declare-datatypes ((tuple2!1494 0))(
  ( (tuple2!1495 (_1!757 (_ BitVec 64)) (_2!757 V!2105)) )
))
(declare-datatypes ((List!1074 0))(
  ( (Nil!1071) (Cons!1070 (h!1647 tuple2!1494) (t!3947 List!1074)) )
))
(declare-datatypes ((ListLongMap!1075 0))(
  ( (ListLongMap!1076 (toList!553 List!1074)) )
))
(declare-fun lt!16206 () ListLongMap!1075)

(assert (=> b!41383 (= res!24547 (= lt!16206 (ListLongMap!1076 Nil!1071)))))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2599 0))(
  ( (array!2600 (arr!1243 (Array (_ BitVec 32) (_ BitVec 64))) (size!1395 (_ BitVec 32))) )
))
(declare-fun lt!16210 () array!2599)

(declare-fun lt!16207 () V!2105)

(declare-datatypes ((ValueCell!632 0))(
  ( (ValueCellFull!632 (v!2001 V!2105)) (EmptyCell!632) )
))
(declare-datatypes ((array!2601 0))(
  ( (array!2602 (arr!1244 (Array (_ BitVec 32) ValueCell!632)) (size!1396 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!244 0))(
  ( (LongMapFixedSize!245 (defaultEntry!1812 Int) (mask!5211 (_ BitVec 32)) (extraKeys!1703 (_ BitVec 32)) (zeroValue!1730 V!2105) (minValue!1730 V!2105) (_size!171 (_ BitVec 32)) (_keys!3319 array!2599) (_values!1795 array!2601) (_vacant!171 (_ BitVec 32))) )
))
(declare-fun map!697 (LongMapFixedSize!244) ListLongMap!1075)

(assert (=> b!41383 (= lt!16206 (map!697 (LongMapFixedSize!245 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16207 lt!16207 #b00000000000000000000000000000000 lt!16210 (array!2602 ((as const (Array (_ BitVec 32) ValueCell!632)) EmptyCell!632) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1075 0))(
  ( (Nil!1072) (Cons!1071 (h!1648 (_ BitVec 64)) (t!3948 List!1075)) )
))
(declare-fun arrayNoDuplicates!0 (array!2599 (_ BitVec 32) List!1075) Bool)

(assert (=> b!41383 (arrayNoDuplicates!0 lt!16210 #b00000000000000000000000000000000 Nil!1072)))

(declare-datatypes ((Unit!1001 0))(
  ( (Unit!1002) )
))
(declare-fun lt!16209 () Unit!1001)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2599 (_ BitVec 32) (_ BitVec 32) List!1075) Unit!1001)

(assert (=> b!41383 (= lt!16209 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16210 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2599 (_ BitVec 32)) Bool)

(assert (=> b!41383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16210 mask!853)))

(declare-fun lt!16205 () Unit!1001)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2599 (_ BitVec 32) (_ BitVec 32)) Unit!1001)

(assert (=> b!41383 (= lt!16205 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16210 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2599 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41383 (= (arrayCountValidKeys!0 lt!16210 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16208 () Unit!1001)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2599 (_ BitVec 32) (_ BitVec 32)) Unit!1001)

(assert (=> b!41383 (= lt!16208 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16210 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41383 (= lt!16210 (array!2600 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!193 (Int (_ BitVec 64)) V!2105)

(assert (=> b!41383 (= lt!16207 (dynLambda!193 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41384 () Bool)

(declare-fun res!24546 () Bool)

(assert (=> b!41384 (=> res!24546 e!26232)))

(declare-fun isEmpty!238 (List!1074) Bool)

(assert (=> b!41384 (= res!24546 (isEmpty!238 (toList!553 lt!16206)))))

(declare-fun b!41385 () Bool)

(assert (=> b!41385 (= e!26232 (not (= (toList!553 lt!16206) Nil!1071)))))

(assert (= (and start!5896 res!24545) b!41383))

(assert (= (and b!41383 (not res!24547)) b!41384))

(assert (= (and b!41384 (not res!24546)) b!41385))

(declare-fun b_lambda!2113 () Bool)

(assert (=> (not b_lambda!2113) (not b!41383)))

(declare-fun t!3946 () Bool)

(declare-fun tb!859 () Bool)

(assert (=> (and start!5896 (= defaultEntry!470 defaultEntry!470) t!3946) tb!859))

(declare-fun result!1461 () Bool)

(declare-fun tp_is_empty!1759 () Bool)

(assert (=> tb!859 (= result!1461 tp_is_empty!1759)))

(assert (=> b!41383 t!3946))

(declare-fun b_and!2399 () Bool)

(assert (= b_and!2397 (and (=> t!3946 result!1461) b_and!2399)))

(declare-fun m!34583 () Bool)

(assert (=> start!5896 m!34583))

(declare-fun m!34585 () Bool)

(assert (=> b!41383 m!34585))

(declare-fun m!34587 () Bool)

(assert (=> b!41383 m!34587))

(declare-fun m!34589 () Bool)

(assert (=> b!41383 m!34589))

(declare-fun m!34591 () Bool)

(assert (=> b!41383 m!34591))

(declare-fun m!34593 () Bool)

(assert (=> b!41383 m!34593))

(declare-fun m!34595 () Bool)

(assert (=> b!41383 m!34595))

(declare-fun m!34597 () Bool)

(assert (=> b!41383 m!34597))

(declare-fun m!34599 () Bool)

(assert (=> b!41383 m!34599))

(declare-fun m!34601 () Bool)

(assert (=> b!41384 m!34601))

(push 1)

(assert tp_is_empty!1759)

(assert (not b_lambda!2113))

(assert b_and!2399)

(assert (not b_next!1369))

