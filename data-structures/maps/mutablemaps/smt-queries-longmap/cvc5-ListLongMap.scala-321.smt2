; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5914 () Bool)

(assert start!5914)

(declare-fun b_free!1387 () Bool)

(declare-fun b_next!1387 () Bool)

(assert (=> start!5914 (= b_free!1387 (not b_next!1387))))

(declare-fun tp!5768 () Bool)

(declare-fun b_and!2433 () Bool)

(assert (=> start!5914 (= tp!5768 b_and!2433)))

(declare-fun b!41504 () Bool)

(declare-fun res!24648 () Bool)

(declare-fun e!26286 () Bool)

(assert (=> b!41504 (=> res!24648 e!26286)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41504 (= res!24648 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41502 () Bool)

(declare-fun e!26285 () Bool)

(assert (=> b!41502 (= e!26285 (not e!26286))))

(declare-fun res!24646 () Bool)

(assert (=> b!41502 (=> res!24646 e!26286)))

(declare-datatypes ((V!2129 0))(
  ( (V!2130 (val!927 Int)) )
))
(declare-datatypes ((tuple2!1512 0))(
  ( (tuple2!1513 (_1!766 (_ BitVec 64)) (_2!766 V!2129)) )
))
(declare-datatypes ((List!1092 0))(
  ( (Nil!1089) (Cons!1088 (h!1665 tuple2!1512) (t!3983 List!1092)) )
))
(declare-datatypes ((ListLongMap!1093 0))(
  ( (ListLongMap!1094 (toList!562 List!1092)) )
))
(declare-fun lt!16408 () ListLongMap!1093)

(assert (=> b!41502 (= res!24646 (= lt!16408 (ListLongMap!1094 Nil!1089)))))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2635 0))(
  ( (array!2636 (arr!1261 (Array (_ BitVec 32) (_ BitVec 64))) (size!1413 (_ BitVec 32))) )
))
(declare-fun lt!16413 () array!2635)

(declare-datatypes ((ValueCell!641 0))(
  ( (ValueCellFull!641 (v!2010 V!2129)) (EmptyCell!641) )
))
(declare-datatypes ((array!2637 0))(
  ( (array!2638 (arr!1262 (Array (_ BitVec 32) ValueCell!641)) (size!1414 (_ BitVec 32))) )
))
(declare-fun lt!16407 () array!2637)

(declare-fun lt!16409 () V!2129)

(declare-datatypes ((LongMapFixedSize!262 0))(
  ( (LongMapFixedSize!263 (defaultEntry!1821 Int) (mask!5226 (_ BitVec 32)) (extraKeys!1712 (_ BitVec 32)) (zeroValue!1739 V!2129) (minValue!1739 V!2129) (_size!180 (_ BitVec 32)) (_keys!3328 array!2635) (_values!1804 array!2637) (_vacant!180 (_ BitVec 32))) )
))
(declare-fun map!712 (LongMapFixedSize!262) ListLongMap!1093)

(assert (=> b!41502 (= lt!16408 (map!712 (LongMapFixedSize!263 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16409 lt!16409 #b00000000000000000000000000000000 lt!16413 lt!16407 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1093 0))(
  ( (Nil!1090) (Cons!1089 (h!1666 (_ BitVec 64)) (t!3984 List!1093)) )
))
(declare-fun arrayNoDuplicates!0 (array!2635 (_ BitVec 32) List!1093) Bool)

(assert (=> b!41502 (arrayNoDuplicates!0 lt!16413 #b00000000000000000000000000000000 Nil!1090)))

(declare-datatypes ((Unit!1019 0))(
  ( (Unit!1020) )
))
(declare-fun lt!16412 () Unit!1019)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2635 (_ BitVec 32) (_ BitVec 32) List!1093) Unit!1019)

(assert (=> b!41502 (= lt!16412 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16413 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2635 (_ BitVec 32)) Bool)

(assert (=> b!41502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16413 mask!853)))

(declare-fun lt!16414 () Unit!1019)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2635 (_ BitVec 32) (_ BitVec 32)) Unit!1019)

(assert (=> b!41502 (= lt!16414 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16413 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2635 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41502 (= (arrayCountValidKeys!0 lt!16413 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16411 () Unit!1019)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2635 (_ BitVec 32) (_ BitVec 32)) Unit!1019)

(assert (=> b!41502 (= lt!16411 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16413 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41502 (= lt!16407 (array!2638 ((as const (Array (_ BitVec 32) ValueCell!641)) EmptyCell!641) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41502 (= lt!16413 (array!2636 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!202 (Int (_ BitVec 64)) V!2129)

(assert (=> b!41502 (= lt!16409 (dynLambda!202 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!24649 () Bool)

(assert (=> start!5914 (=> (not res!24649) (not e!26285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5914 (= res!24649 (validMask!0 mask!853))))

(assert (=> start!5914 e!26285))

(assert (=> start!5914 true))

(assert (=> start!5914 tp!5768))

(declare-fun b!41505 () Bool)

(assert (=> b!41505 (= e!26286 true)))

(declare-fun lt!16410 () Bool)

(declare-fun contains!528 (ListLongMap!1093 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!320 (array!2635 array!2637 (_ BitVec 32) (_ BitVec 32) V!2129 V!2129 (_ BitVec 32) Int) ListLongMap!1093)

(declare-fun head!857 (List!1092) tuple2!1512)

(assert (=> b!41505 (= lt!16410 (contains!528 (getCurrentListMap!320 lt!16413 lt!16407 mask!853 #b00000000000000000000000000000000 lt!16409 lt!16409 #b00000000000000000000000000000000 defaultEntry!470) (_1!766 (head!857 (toList!562 lt!16408)))))))

(declare-fun b!41503 () Bool)

(declare-fun res!24647 () Bool)

(assert (=> b!41503 (=> res!24647 e!26286)))

(declare-fun isEmpty!247 (List!1092) Bool)

(assert (=> b!41503 (= res!24647 (isEmpty!247 (toList!562 lt!16408)))))

(assert (= (and start!5914 res!24649) b!41502))

(assert (= (and b!41502 (not res!24646)) b!41503))

(assert (= (and b!41503 (not res!24647)) b!41504))

(assert (= (and b!41504 (not res!24648)) b!41505))

(declare-fun b_lambda!2131 () Bool)

(assert (=> (not b_lambda!2131) (not b!41502)))

(declare-fun t!3982 () Bool)

(declare-fun tb!877 () Bool)

(assert (=> (and start!5914 (= defaultEntry!470 defaultEntry!470) t!3982) tb!877))

(declare-fun result!1497 () Bool)

(declare-fun tp_is_empty!1777 () Bool)

(assert (=> tb!877 (= result!1497 tp_is_empty!1777)))

(assert (=> b!41502 t!3982))

(declare-fun b_and!2435 () Bool)

(assert (= b_and!2433 (and (=> t!3982 result!1497) b_and!2435)))

(declare-fun m!34799 () Bool)

(assert (=> b!41502 m!34799))

(declare-fun m!34801 () Bool)

(assert (=> b!41502 m!34801))

(declare-fun m!34803 () Bool)

(assert (=> b!41502 m!34803))

(declare-fun m!34805 () Bool)

(assert (=> b!41502 m!34805))

(declare-fun m!34807 () Bool)

(assert (=> b!41502 m!34807))

(declare-fun m!34809 () Bool)

(assert (=> b!41502 m!34809))

(declare-fun m!34811 () Bool)

(assert (=> b!41502 m!34811))

(declare-fun m!34813 () Bool)

(assert (=> b!41502 m!34813))

(declare-fun m!34815 () Bool)

(assert (=> start!5914 m!34815))

(declare-fun m!34817 () Bool)

(assert (=> b!41505 m!34817))

(declare-fun m!34819 () Bool)

(assert (=> b!41505 m!34819))

(assert (=> b!41505 m!34817))

(declare-fun m!34821 () Bool)

(assert (=> b!41505 m!34821))

(declare-fun m!34823 () Bool)

(assert (=> b!41503 m!34823))

(push 1)

(assert (not start!5914))

(assert b_and!2435)

(assert (not b_next!1387))

(assert (not b!41503))

(assert (not b!41502))

(assert (not b_lambda!2131))

(assert (not b!41505))

(assert tp_is_empty!1777)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2435)

(assert (not b_next!1387))

(check-sat)

(pop 1)

