; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5936 () Bool)

(assert start!5936)

(declare-fun b_free!1409 () Bool)

(declare-fun b_next!1409 () Bool)

(assert (=> start!5936 (= b_free!1409 (not b_next!1409))))

(declare-fun tp!5801 () Bool)

(declare-fun b_and!2477 () Bool)

(assert (=> start!5936 (= tp!5801 b_and!2477)))

(declare-fun b!41658 () Bool)

(declare-fun res!24778 () Bool)

(declare-fun e!26351 () Bool)

(assert (=> b!41658 (=> res!24778 e!26351)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41658 (= res!24778 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41656 () Bool)

(declare-fun e!26352 () Bool)

(assert (=> b!41656 (= e!26352 (not e!26351))))

(declare-fun res!24779 () Bool)

(assert (=> b!41656 (=> res!24779 e!26351)))

(declare-datatypes ((V!2157 0))(
  ( (V!2158 (val!938 Int)) )
))
(declare-datatypes ((tuple2!1534 0))(
  ( (tuple2!1535 (_1!777 (_ BitVec 64)) (_2!777 V!2157)) )
))
(declare-datatypes ((List!1114 0))(
  ( (Nil!1111) (Cons!1110 (h!1687 tuple2!1534) (t!4027 List!1114)) )
))
(declare-datatypes ((ListLongMap!1115 0))(
  ( (ListLongMap!1116 (toList!573 List!1114)) )
))
(declare-fun lt!16675 () ListLongMap!1115)

(assert (=> b!41656 (= res!24779 (= lt!16675 (ListLongMap!1116 Nil!1111)))))

(declare-fun lt!16673 () V!2157)

(declare-datatypes ((array!2679 0))(
  ( (array!2680 (arr!1283 (Array (_ BitVec 32) (_ BitVec 64))) (size!1435 (_ BitVec 32))) )
))
(declare-fun lt!16672 () array!2679)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!652 0))(
  ( (ValueCellFull!652 (v!2021 V!2157)) (EmptyCell!652) )
))
(declare-datatypes ((array!2681 0))(
  ( (array!2682 (arr!1284 (Array (_ BitVec 32) ValueCell!652)) (size!1436 (_ BitVec 32))) )
))
(declare-fun lt!16674 () array!2681)

(declare-datatypes ((LongMapFixedSize!284 0))(
  ( (LongMapFixedSize!285 (defaultEntry!1832 Int) (mask!5243 (_ BitVec 32)) (extraKeys!1723 (_ BitVec 32)) (zeroValue!1750 V!2157) (minValue!1750 V!2157) (_size!191 (_ BitVec 32)) (_keys!3339 array!2679) (_values!1815 array!2681) (_vacant!191 (_ BitVec 32))) )
))
(declare-fun map!729 (LongMapFixedSize!284) ListLongMap!1115)

(assert (=> b!41656 (= lt!16675 (map!729 (LongMapFixedSize!285 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16673 lt!16673 #b00000000000000000000000000000000 lt!16672 lt!16674 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1115 0))(
  ( (Nil!1112) (Cons!1111 (h!1688 (_ BitVec 64)) (t!4028 List!1115)) )
))
(declare-fun arrayNoDuplicates!0 (array!2679 (_ BitVec 32) List!1115) Bool)

(assert (=> b!41656 (arrayNoDuplicates!0 lt!16672 #b00000000000000000000000000000000 Nil!1112)))

(declare-datatypes ((Unit!1041 0))(
  ( (Unit!1042) )
))
(declare-fun lt!16677 () Unit!1041)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2679 (_ BitVec 32) (_ BitVec 32) List!1115) Unit!1041)

(assert (=> b!41656 (= lt!16677 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16672 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2679 (_ BitVec 32)) Bool)

(assert (=> b!41656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16672 mask!853)))

(declare-fun lt!16678 () Unit!1041)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2679 (_ BitVec 32) (_ BitVec 32)) Unit!1041)

(assert (=> b!41656 (= lt!16678 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16672 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2679 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41656 (= (arrayCountValidKeys!0 lt!16672 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16676 () Unit!1041)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2679 (_ BitVec 32) (_ BitVec 32)) Unit!1041)

(assert (=> b!41656 (= lt!16676 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16672 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41656 (= lt!16674 (array!2682 ((as const (Array (_ BitVec 32) ValueCell!652)) EmptyCell!652) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41656 (= lt!16672 (array!2680 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!213 (Int (_ BitVec 64)) V!2157)

(assert (=> b!41656 (= lt!16673 (dynLambda!213 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41657 () Bool)

(declare-fun res!24780 () Bool)

(assert (=> b!41657 (=> res!24780 e!26351)))

(declare-fun isEmpty!258 (List!1114) Bool)

(assert (=> b!41657 (= res!24780 (isEmpty!258 (toList!573 lt!16675)))))

(declare-fun b!41659 () Bool)

(assert (=> b!41659 (= e!26351 true)))

(declare-fun lt!16671 () Bool)

(declare-fun contains!539 (ListLongMap!1115 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!331 (array!2679 array!2681 (_ BitVec 32) (_ BitVec 32) V!2157 V!2157 (_ BitVec 32) Int) ListLongMap!1115)

(declare-fun head!868 (List!1114) tuple2!1534)

(assert (=> b!41659 (= lt!16671 (contains!539 (getCurrentListMap!331 lt!16672 lt!16674 mask!853 #b00000000000000000000000000000000 lt!16673 lt!16673 #b00000000000000000000000000000000 defaultEntry!470) (_1!777 (head!868 (toList!573 lt!16675)))))))

(declare-fun res!24781 () Bool)

(assert (=> start!5936 (=> (not res!24781) (not e!26352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5936 (= res!24781 (validMask!0 mask!853))))

(assert (=> start!5936 e!26352))

(assert (=> start!5936 true))

(assert (=> start!5936 tp!5801))

(assert (= (and start!5936 res!24781) b!41656))

(assert (= (and b!41656 (not res!24779)) b!41657))

(assert (= (and b!41657 (not res!24780)) b!41658))

(assert (= (and b!41658 (not res!24778)) b!41659))

(declare-fun b_lambda!2153 () Bool)

(assert (=> (not b_lambda!2153) (not b!41656)))

(declare-fun t!4026 () Bool)

(declare-fun tb!899 () Bool)

(assert (=> (and start!5936 (= defaultEntry!470 defaultEntry!470) t!4026) tb!899))

(declare-fun result!1541 () Bool)

(declare-fun tp_is_empty!1799 () Bool)

(assert (=> tb!899 (= result!1541 tp_is_empty!1799)))

(assert (=> b!41656 t!4026))

(declare-fun b_and!2479 () Bool)

(assert (= b_and!2477 (and (=> t!4026 result!1541) b_and!2479)))

(declare-fun m!35085 () Bool)

(assert (=> b!41656 m!35085))

(declare-fun m!35087 () Bool)

(assert (=> b!41656 m!35087))

(declare-fun m!35089 () Bool)

(assert (=> b!41656 m!35089))

(declare-fun m!35091 () Bool)

(assert (=> b!41656 m!35091))

(declare-fun m!35093 () Bool)

(assert (=> b!41656 m!35093))

(declare-fun m!35095 () Bool)

(assert (=> b!41656 m!35095))

(declare-fun m!35097 () Bool)

(assert (=> b!41656 m!35097))

(declare-fun m!35099 () Bool)

(assert (=> b!41656 m!35099))

(declare-fun m!35101 () Bool)

(assert (=> b!41657 m!35101))

(declare-fun m!35103 () Bool)

(assert (=> b!41659 m!35103))

(declare-fun m!35105 () Bool)

(assert (=> b!41659 m!35105))

(assert (=> b!41659 m!35103))

(declare-fun m!35107 () Bool)

(assert (=> b!41659 m!35107))

(declare-fun m!35109 () Bool)

(assert (=> start!5936 m!35109))

(push 1)

(assert (not b_lambda!2153))

(assert (not b_next!1409))

(assert (not b!41659))

(assert (not start!5936))

(assert (not b!41657))

(assert b_and!2479)

(assert tp_is_empty!1799)

(assert (not b!41656))

(check-sat)

