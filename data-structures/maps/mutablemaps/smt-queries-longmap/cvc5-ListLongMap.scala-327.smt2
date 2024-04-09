; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5950 () Bool)

(assert start!5950)

(declare-fun b_free!1423 () Bool)

(declare-fun b_next!1423 () Bool)

(assert (=> start!5950 (= b_free!1423 (not b_next!1423))))

(declare-fun tp!5822 () Bool)

(declare-fun b_and!2505 () Bool)

(assert (=> start!5950 (= tp!5822 b_and!2505)))

(declare-fun b!41756 () Bool)

(declare-fun res!24864 () Bool)

(declare-fun e!26393 () Bool)

(assert (=> b!41756 (=> res!24864 e!26393)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41756 (= res!24864 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41755 () Bool)

(declare-fun res!24865 () Bool)

(assert (=> b!41755 (=> res!24865 e!26393)))

(declare-datatypes ((V!2177 0))(
  ( (V!2178 (val!945 Int)) )
))
(declare-datatypes ((tuple2!1548 0))(
  ( (tuple2!1549 (_1!784 (_ BitVec 64)) (_2!784 V!2177)) )
))
(declare-datatypes ((List!1128 0))(
  ( (Nil!1125) (Cons!1124 (h!1701 tuple2!1548) (t!4055 List!1128)) )
))
(declare-datatypes ((ListLongMap!1129 0))(
  ( (ListLongMap!1130 (toList!580 List!1128)) )
))
(declare-fun lt!16839 () ListLongMap!1129)

(declare-fun isEmpty!265 (List!1128) Bool)

(assert (=> b!41755 (= res!24865 (isEmpty!265 (toList!580 lt!16839)))))

(declare-fun res!24862 () Bool)

(declare-fun e!26394 () Bool)

(assert (=> start!5950 (=> (not res!24862) (not e!26394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5950 (= res!24862 (validMask!0 mask!853))))

(assert (=> start!5950 e!26394))

(assert (=> start!5950 true))

(assert (=> start!5950 tp!5822))

(declare-fun b!41757 () Bool)

(assert (=> b!41757 (= e!26393 true)))

(declare-fun lt!16844 () Bool)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2707 0))(
  ( (array!2708 (arr!1297 (Array (_ BitVec 32) (_ BitVec 64))) (size!1449 (_ BitVec 32))) )
))
(declare-fun lt!16841 () array!2707)

(declare-fun lt!16843 () V!2177)

(declare-datatypes ((ValueCell!659 0))(
  ( (ValueCellFull!659 (v!2028 V!2177)) (EmptyCell!659) )
))
(declare-datatypes ((array!2709 0))(
  ( (array!2710 (arr!1298 (Array (_ BitVec 32) ValueCell!659)) (size!1450 (_ BitVec 32))) )
))
(declare-fun lt!16842 () array!2709)

(declare-fun contains!546 (ListLongMap!1129 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!338 (array!2707 array!2709 (_ BitVec 32) (_ BitVec 32) V!2177 V!2177 (_ BitVec 32) Int) ListLongMap!1129)

(declare-fun head!875 (List!1128) tuple2!1548)

(assert (=> b!41757 (= lt!16844 (contains!546 (getCurrentListMap!338 lt!16841 lt!16842 mask!853 #b00000000000000000000000000000000 lt!16843 lt!16843 #b00000000000000000000000000000000 defaultEntry!470) (_1!784 (head!875 (toList!580 lt!16839)))))))

(declare-fun b!41754 () Bool)

(assert (=> b!41754 (= e!26394 (not e!26393))))

(declare-fun res!24863 () Bool)

(assert (=> b!41754 (=> res!24863 e!26393)))

(assert (=> b!41754 (= res!24863 (= lt!16839 (ListLongMap!1130 Nil!1125)))))

(declare-datatypes ((LongMapFixedSize!298 0))(
  ( (LongMapFixedSize!299 (defaultEntry!1839 Int) (mask!5256 (_ BitVec 32)) (extraKeys!1730 (_ BitVec 32)) (zeroValue!1757 V!2177) (minValue!1757 V!2177) (_size!198 (_ BitVec 32)) (_keys!3346 array!2707) (_values!1822 array!2709) (_vacant!198 (_ BitVec 32))) )
))
(declare-fun map!742 (LongMapFixedSize!298) ListLongMap!1129)

(assert (=> b!41754 (= lt!16839 (map!742 (LongMapFixedSize!299 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16843 lt!16843 #b00000000000000000000000000000000 lt!16841 lt!16842 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1129 0))(
  ( (Nil!1126) (Cons!1125 (h!1702 (_ BitVec 64)) (t!4056 List!1129)) )
))
(declare-fun arrayNoDuplicates!0 (array!2707 (_ BitVec 32) List!1129) Bool)

(assert (=> b!41754 (arrayNoDuplicates!0 lt!16841 #b00000000000000000000000000000000 Nil!1126)))

(declare-datatypes ((Unit!1055 0))(
  ( (Unit!1056) )
))
(declare-fun lt!16840 () Unit!1055)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2707 (_ BitVec 32) (_ BitVec 32) List!1129) Unit!1055)

(assert (=> b!41754 (= lt!16840 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16841 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2707 (_ BitVec 32)) Bool)

(assert (=> b!41754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16841 mask!853)))

(declare-fun lt!16845 () Unit!1055)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2707 (_ BitVec 32) (_ BitVec 32)) Unit!1055)

(assert (=> b!41754 (= lt!16845 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16841 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2707 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41754 (= (arrayCountValidKeys!0 lt!16841 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16846 () Unit!1055)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2707 (_ BitVec 32) (_ BitVec 32)) Unit!1055)

(assert (=> b!41754 (= lt!16846 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16841 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41754 (= lt!16842 (array!2710 ((as const (Array (_ BitVec 32) ValueCell!659)) EmptyCell!659) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41754 (= lt!16841 (array!2708 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!220 (Int (_ BitVec 64)) V!2177)

(assert (=> b!41754 (= lt!16843 (dynLambda!220 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5950 res!24862) b!41754))

(assert (= (and b!41754 (not res!24863)) b!41755))

(assert (= (and b!41755 (not res!24865)) b!41756))

(assert (= (and b!41756 (not res!24864)) b!41757))

(declare-fun b_lambda!2167 () Bool)

(assert (=> (not b_lambda!2167) (not b!41754)))

(declare-fun t!4054 () Bool)

(declare-fun tb!913 () Bool)

(assert (=> (and start!5950 (= defaultEntry!470 defaultEntry!470) t!4054) tb!913))

(declare-fun result!1569 () Bool)

(declare-fun tp_is_empty!1813 () Bool)

(assert (=> tb!913 (= result!1569 tp_is_empty!1813)))

(assert (=> b!41754 t!4054))

(declare-fun b_and!2507 () Bool)

(assert (= b_and!2505 (and (=> t!4054 result!1569) b_and!2507)))

(declare-fun m!35267 () Bool)

(assert (=> b!41755 m!35267))

(declare-fun m!35269 () Bool)

(assert (=> start!5950 m!35269))

(declare-fun m!35271 () Bool)

(assert (=> b!41757 m!35271))

(declare-fun m!35273 () Bool)

(assert (=> b!41757 m!35273))

(assert (=> b!41757 m!35271))

(declare-fun m!35275 () Bool)

(assert (=> b!41757 m!35275))

(declare-fun m!35277 () Bool)

(assert (=> b!41754 m!35277))

(declare-fun m!35279 () Bool)

(assert (=> b!41754 m!35279))

(declare-fun m!35281 () Bool)

(assert (=> b!41754 m!35281))

(declare-fun m!35283 () Bool)

(assert (=> b!41754 m!35283))

(declare-fun m!35285 () Bool)

(assert (=> b!41754 m!35285))

(declare-fun m!35287 () Bool)

(assert (=> b!41754 m!35287))

(declare-fun m!35289 () Bool)

(assert (=> b!41754 m!35289))

(declare-fun m!35291 () Bool)

(assert (=> b!41754 m!35291))

(push 1)

(assert (not b!41757))

(assert (not b_next!1423))

(assert (not b!41755))

(assert (not b_lambda!2167))

(assert (not start!5950))

(assert tp_is_empty!1813)

(assert (not b!41754))

(assert b_and!2507)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2507)

(assert (not b_next!1423))

(check-sat)

(pop 1)

