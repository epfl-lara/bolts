; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5948 () Bool)

(assert start!5948)

(declare-fun b_free!1421 () Bool)

(declare-fun b_next!1421 () Bool)

(assert (=> start!5948 (= b_free!1421 (not b_next!1421))))

(declare-fun tp!5819 () Bool)

(declare-fun b_and!2501 () Bool)

(assert (=> start!5948 (= tp!5819 b_and!2501)))

(declare-fun b!41741 () Bool)

(declare-fun res!24850 () Bool)

(declare-fun e!26387 () Bool)

(assert (=> b!41741 (=> res!24850 e!26387)))

(declare-datatypes ((V!2173 0))(
  ( (V!2174 (val!944 Int)) )
))
(declare-datatypes ((tuple2!1546 0))(
  ( (tuple2!1547 (_1!783 (_ BitVec 64)) (_2!783 V!2173)) )
))
(declare-datatypes ((List!1126 0))(
  ( (Nil!1123) (Cons!1122 (h!1699 tuple2!1546) (t!4051 List!1126)) )
))
(declare-datatypes ((ListLongMap!1127 0))(
  ( (ListLongMap!1128 (toList!579 List!1126)) )
))
(declare-fun lt!16819 () ListLongMap!1127)

(declare-fun isEmpty!264 (List!1126) Bool)

(assert (=> b!41741 (= res!24850 (isEmpty!264 (toList!579 lt!16819)))))

(declare-fun b!41740 () Bool)

(declare-fun e!26388 () Bool)

(assert (=> b!41740 (= e!26388 (not e!26387))))

(declare-fun res!24853 () Bool)

(assert (=> b!41740 (=> res!24853 e!26387)))

(assert (=> b!41740 (= res!24853 (= lt!16819 (ListLongMap!1128 Nil!1123)))))

(declare-fun lt!16817 () V!2173)

(declare-datatypes ((array!2703 0))(
  ( (array!2704 (arr!1295 (Array (_ BitVec 32) (_ BitVec 64))) (size!1447 (_ BitVec 32))) )
))
(declare-fun lt!16818 () array!2703)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!658 0))(
  ( (ValueCellFull!658 (v!2027 V!2173)) (EmptyCell!658) )
))
(declare-datatypes ((array!2705 0))(
  ( (array!2706 (arr!1296 (Array (_ BitVec 32) ValueCell!658)) (size!1448 (_ BitVec 32))) )
))
(declare-fun lt!16820 () array!2705)

(declare-datatypes ((LongMapFixedSize!296 0))(
  ( (LongMapFixedSize!297 (defaultEntry!1838 Int) (mask!5253 (_ BitVec 32)) (extraKeys!1729 (_ BitVec 32)) (zeroValue!1756 V!2173) (minValue!1756 V!2173) (_size!197 (_ BitVec 32)) (_keys!3345 array!2703) (_values!1821 array!2705) (_vacant!197 (_ BitVec 32))) )
))
(declare-fun map!739 (LongMapFixedSize!296) ListLongMap!1127)

(assert (=> b!41740 (= lt!16819 (map!739 (LongMapFixedSize!297 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16817 lt!16817 #b00000000000000000000000000000000 lt!16818 lt!16820 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1127 0))(
  ( (Nil!1124) (Cons!1123 (h!1700 (_ BitVec 64)) (t!4052 List!1127)) )
))
(declare-fun arrayNoDuplicates!0 (array!2703 (_ BitVec 32) List!1127) Bool)

(assert (=> b!41740 (arrayNoDuplicates!0 lt!16818 #b00000000000000000000000000000000 Nil!1124)))

(declare-datatypes ((Unit!1053 0))(
  ( (Unit!1054) )
))
(declare-fun lt!16816 () Unit!1053)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2703 (_ BitVec 32) (_ BitVec 32) List!1127) Unit!1053)

(assert (=> b!41740 (= lt!16816 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16818 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2703 (_ BitVec 32)) Bool)

(assert (=> b!41740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16818 mask!853)))

(declare-fun lt!16822 () Unit!1053)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2703 (_ BitVec 32) (_ BitVec 32)) Unit!1053)

(assert (=> b!41740 (= lt!16822 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16818 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2703 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41740 (= (arrayCountValidKeys!0 lt!16818 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16821 () Unit!1053)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2703 (_ BitVec 32) (_ BitVec 32)) Unit!1053)

(assert (=> b!41740 (= lt!16821 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16818 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41740 (= lt!16820 (array!2706 ((as const (Array (_ BitVec 32) ValueCell!658)) EmptyCell!658) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41740 (= lt!16818 (array!2704 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!219 (Int (_ BitVec 64)) V!2173)

(assert (=> b!41740 (= lt!16817 (dynLambda!219 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41743 () Bool)

(assert (=> b!41743 (= e!26387 true)))

(declare-fun lt!16815 () Bool)

(declare-fun contains!545 (ListLongMap!1127 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!337 (array!2703 array!2705 (_ BitVec 32) (_ BitVec 32) V!2173 V!2173 (_ BitVec 32) Int) ListLongMap!1127)

(declare-fun head!874 (List!1126) tuple2!1546)

(assert (=> b!41743 (= lt!16815 (contains!545 (getCurrentListMap!337 lt!16818 lt!16820 mask!853 #b00000000000000000000000000000000 lt!16817 lt!16817 #b00000000000000000000000000000000 defaultEntry!470) (_1!783 (head!874 (toList!579 lt!16819)))))))

(declare-fun res!24852 () Bool)

(assert (=> start!5948 (=> (not res!24852) (not e!26388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5948 (= res!24852 (validMask!0 mask!853))))

(assert (=> start!5948 e!26388))

(assert (=> start!5948 true))

(assert (=> start!5948 tp!5819))

(declare-fun b!41742 () Bool)

(declare-fun res!24851 () Bool)

(assert (=> b!41742 (=> res!24851 e!26387)))

(assert (=> b!41742 (= res!24851 (bvslt mask!853 #b00000000000000000000000000000000))))

(assert (= (and start!5948 res!24852) b!41740))

(assert (= (and b!41740 (not res!24853)) b!41741))

(assert (= (and b!41741 (not res!24850)) b!41742))

(assert (= (and b!41742 (not res!24851)) b!41743))

(declare-fun b_lambda!2165 () Bool)

(assert (=> (not b_lambda!2165) (not b!41740)))

(declare-fun t!4050 () Bool)

(declare-fun tb!911 () Bool)

(assert (=> (and start!5948 (= defaultEntry!470 defaultEntry!470) t!4050) tb!911))

(declare-fun result!1565 () Bool)

(declare-fun tp_is_empty!1811 () Bool)

(assert (=> tb!911 (= result!1565 tp_is_empty!1811)))

(assert (=> b!41740 t!4050))

(declare-fun b_and!2503 () Bool)

(assert (= b_and!2501 (and (=> t!4050 result!1565) b_and!2503)))

(declare-fun m!35241 () Bool)

(assert (=> b!41741 m!35241))

(declare-fun m!35243 () Bool)

(assert (=> b!41740 m!35243))

(declare-fun m!35245 () Bool)

(assert (=> b!41740 m!35245))

(declare-fun m!35247 () Bool)

(assert (=> b!41740 m!35247))

(declare-fun m!35249 () Bool)

(assert (=> b!41740 m!35249))

(declare-fun m!35251 () Bool)

(assert (=> b!41740 m!35251))

(declare-fun m!35253 () Bool)

(assert (=> b!41740 m!35253))

(declare-fun m!35255 () Bool)

(assert (=> b!41740 m!35255))

(declare-fun m!35257 () Bool)

(assert (=> b!41740 m!35257))

(declare-fun m!35259 () Bool)

(assert (=> b!41743 m!35259))

(declare-fun m!35261 () Bool)

(assert (=> b!41743 m!35261))

(assert (=> b!41743 m!35259))

(declare-fun m!35263 () Bool)

(assert (=> b!41743 m!35263))

(declare-fun m!35265 () Bool)

(assert (=> start!5948 m!35265))

(push 1)

(assert (not b!41743))

(assert (not b_lambda!2165))

(assert tp_is_empty!1811)

(assert (not b!41741))

(assert (not b!41740))

(assert (not start!5948))

(assert (not b_next!1421))

(assert b_and!2503)

(check-sat)

