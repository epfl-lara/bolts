; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5944 () Bool)

(assert start!5944)

(declare-fun b_free!1417 () Bool)

(declare-fun b_next!1417 () Bool)

(assert (=> start!5944 (= b_free!1417 (not b_next!1417))))

(declare-fun tp!5813 () Bool)

(declare-fun b_and!2493 () Bool)

(assert (=> start!5944 (= tp!5813 b_and!2493)))

(declare-fun res!24827 () Bool)

(declare-fun e!26376 () Bool)

(assert (=> start!5944 (=> (not res!24827) (not e!26376))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5944 (= res!24827 (validMask!0 mask!853))))

(assert (=> start!5944 e!26376))

(assert (=> start!5944 true))

(assert (=> start!5944 tp!5813))

(declare-fun b!41715 () Bool)

(declare-fun e!26375 () Bool)

(assert (=> b!41715 (= e!26375 true)))

(declare-datatypes ((V!2169 0))(
  ( (V!2170 (val!942 Int)) )
))
(declare-fun lt!16772 () V!2169)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!656 0))(
  ( (ValueCellFull!656 (v!2025 V!2169)) (EmptyCell!656) )
))
(declare-datatypes ((array!2695 0))(
  ( (array!2696 (arr!1291 (Array (_ BitVec 32) ValueCell!656)) (size!1443 (_ BitVec 32))) )
))
(declare-fun lt!16771 () array!2695)

(declare-datatypes ((tuple2!1542 0))(
  ( (tuple2!1543 (_1!781 (_ BitVec 64)) (_2!781 V!2169)) )
))
(declare-datatypes ((List!1122 0))(
  ( (Nil!1119) (Cons!1118 (h!1695 tuple2!1542) (t!4043 List!1122)) )
))
(declare-datatypes ((ListLongMap!1123 0))(
  ( (ListLongMap!1124 (toList!577 List!1122)) )
))
(declare-fun lt!16767 () ListLongMap!1123)

(declare-datatypes ((array!2697 0))(
  ( (array!2698 (arr!1292 (Array (_ BitVec 32) (_ BitVec 64))) (size!1444 (_ BitVec 32))) )
))
(declare-fun lt!16773 () array!2697)

(declare-fun lt!16770 () Bool)

(declare-fun contains!543 (ListLongMap!1123 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!335 (array!2697 array!2695 (_ BitVec 32) (_ BitVec 32) V!2169 V!2169 (_ BitVec 32) Int) ListLongMap!1123)

(declare-fun head!872 (List!1122) tuple2!1542)

(assert (=> b!41715 (= lt!16770 (contains!543 (getCurrentListMap!335 lt!16773 lt!16771 mask!853 #b00000000000000000000000000000000 lt!16772 lt!16772 #b00000000000000000000000000000000 defaultEntry!470) (_1!781 (head!872 (toList!577 lt!16767)))))))

(declare-fun b!41713 () Bool)

(declare-fun res!24829 () Bool)

(assert (=> b!41713 (=> res!24829 e!26375)))

(declare-fun isEmpty!262 (List!1122) Bool)

(assert (=> b!41713 (= res!24829 (isEmpty!262 (toList!577 lt!16767)))))

(declare-fun b!41712 () Bool)

(assert (=> b!41712 (= e!26376 (not e!26375))))

(declare-fun res!24826 () Bool)

(assert (=> b!41712 (=> res!24826 e!26375)))

(assert (=> b!41712 (= res!24826 (= lt!16767 (ListLongMap!1124 Nil!1119)))))

(declare-datatypes ((LongMapFixedSize!292 0))(
  ( (LongMapFixedSize!293 (defaultEntry!1836 Int) (mask!5251 (_ BitVec 32)) (extraKeys!1727 (_ BitVec 32)) (zeroValue!1754 V!2169) (minValue!1754 V!2169) (_size!195 (_ BitVec 32)) (_keys!3343 array!2697) (_values!1819 array!2695) (_vacant!195 (_ BitVec 32))) )
))
(declare-fun map!737 (LongMapFixedSize!292) ListLongMap!1123)

(assert (=> b!41712 (= lt!16767 (map!737 (LongMapFixedSize!293 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16772 lt!16772 #b00000000000000000000000000000000 lt!16773 lt!16771 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1123 0))(
  ( (Nil!1120) (Cons!1119 (h!1696 (_ BitVec 64)) (t!4044 List!1123)) )
))
(declare-fun arrayNoDuplicates!0 (array!2697 (_ BitVec 32) List!1123) Bool)

(assert (=> b!41712 (arrayNoDuplicates!0 lt!16773 #b00000000000000000000000000000000 Nil!1120)))

(declare-datatypes ((Unit!1049 0))(
  ( (Unit!1050) )
))
(declare-fun lt!16774 () Unit!1049)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2697 (_ BitVec 32) (_ BitVec 32) List!1123) Unit!1049)

(assert (=> b!41712 (= lt!16774 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16773 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2697 (_ BitVec 32)) Bool)

(assert (=> b!41712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16773 mask!853)))

(declare-fun lt!16769 () Unit!1049)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2697 (_ BitVec 32) (_ BitVec 32)) Unit!1049)

(assert (=> b!41712 (= lt!16769 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16773 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2697 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41712 (= (arrayCountValidKeys!0 lt!16773 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16768 () Unit!1049)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2697 (_ BitVec 32) (_ BitVec 32)) Unit!1049)

(assert (=> b!41712 (= lt!16768 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16773 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41712 (= lt!16771 (array!2696 ((as const (Array (_ BitVec 32) ValueCell!656)) EmptyCell!656) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41712 (= lt!16773 (array!2698 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!217 (Int (_ BitVec 64)) V!2169)

(assert (=> b!41712 (= lt!16772 (dynLambda!217 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41714 () Bool)

(declare-fun res!24828 () Bool)

(assert (=> b!41714 (=> res!24828 e!26375)))

(assert (=> b!41714 (= res!24828 (bvslt mask!853 #b00000000000000000000000000000000))))

(assert (= (and start!5944 res!24827) b!41712))

(assert (= (and b!41712 (not res!24826)) b!41713))

(assert (= (and b!41713 (not res!24829)) b!41714))

(assert (= (and b!41714 (not res!24828)) b!41715))

(declare-fun b_lambda!2161 () Bool)

(assert (=> (not b_lambda!2161) (not b!41712)))

(declare-fun t!4042 () Bool)

(declare-fun tb!907 () Bool)

(assert (=> (and start!5944 (= defaultEntry!470 defaultEntry!470) t!4042) tb!907))

(declare-fun result!1557 () Bool)

(declare-fun tp_is_empty!1807 () Bool)

(assert (=> tb!907 (= result!1557 tp_is_empty!1807)))

(assert (=> b!41712 t!4042))

(declare-fun b_and!2495 () Bool)

(assert (= b_and!2493 (and (=> t!4042 result!1557) b_and!2495)))

(declare-fun m!35189 () Bool)

(assert (=> start!5944 m!35189))

(declare-fun m!35191 () Bool)

(assert (=> b!41715 m!35191))

(declare-fun m!35193 () Bool)

(assert (=> b!41715 m!35193))

(assert (=> b!41715 m!35191))

(declare-fun m!35195 () Bool)

(assert (=> b!41715 m!35195))

(declare-fun m!35197 () Bool)

(assert (=> b!41713 m!35197))

(declare-fun m!35199 () Bool)

(assert (=> b!41712 m!35199))

(declare-fun m!35201 () Bool)

(assert (=> b!41712 m!35201))

(declare-fun m!35203 () Bool)

(assert (=> b!41712 m!35203))

(declare-fun m!35205 () Bool)

(assert (=> b!41712 m!35205))

(declare-fun m!35207 () Bool)

(assert (=> b!41712 m!35207))

(declare-fun m!35209 () Bool)

(assert (=> b!41712 m!35209))

(declare-fun m!35211 () Bool)

(assert (=> b!41712 m!35211))

(declare-fun m!35213 () Bool)

(assert (=> b!41712 m!35213))

(push 1)

(assert (not b!41713))

(assert (not b_lambda!2161))

(assert tp_is_empty!1807)

(assert (not b!41712))

(assert (not b!41715))

(assert (not start!5944))

(assert b_and!2495)

(assert (not b_next!1417))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2495)

(assert (not b_next!1417))

(check-sat)

(pop 1)

