; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99632 () Bool)

(assert start!99632)

(declare-fun b_free!25175 () Bool)

(declare-fun b_next!25175 () Bool)

(assert (=> start!99632 (= b_free!25175 (not b_next!25175))))

(declare-fun tp!88239 () Bool)

(declare-fun b_and!41231 () Bool)

(assert (=> start!99632 (= tp!88239 b_and!41231)))

(declare-fun b!1179466 () Bool)

(declare-fun e!670601 () Bool)

(declare-fun e!670603 () Bool)

(assert (=> b!1179466 (= e!670601 e!670603)))

(declare-fun res!783710 () Bool)

(assert (=> b!1179466 (=> (not res!783710) (not e!670603))))

(declare-datatypes ((array!76182 0))(
  ( (array!76183 (arr!36737 (Array (_ BitVec 32) (_ BitVec 64))) (size!37274 (_ BitVec 32))) )
))
(declare-fun lt!533050 () array!76182)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76182 (_ BitVec 32)) Bool)

(assert (=> b!1179466 (= res!783710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533050 mask!1564))))

(declare-fun _keys!1208 () array!76182)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1179466 (= lt!533050 (array!76183 (store (arr!36737 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37274 _keys!1208)))))

(declare-fun b!1179467 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!670599 () Bool)

(declare-fun arrayContainsKey!0 (array!76182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179467 (= e!670599 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1179468 () Bool)

(declare-fun e!670602 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179468 (= e!670602 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37274 _keys!1208))))))

(declare-fun e!670592 () Bool)

(assert (=> b!1179468 e!670592))

(declare-fun res!783715 () Bool)

(assert (=> b!1179468 (=> (not res!783715) (not e!670592))))

(assert (=> b!1179468 (= res!783715 (not (= (select (arr!36737 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38911 0))(
  ( (Unit!38912) )
))
(declare-fun lt!533056 () Unit!38911)

(declare-fun e!670595 () Unit!38911)

(assert (=> b!1179468 (= lt!533056 e!670595)))

(declare-fun c!116834 () Bool)

(assert (=> b!1179468 (= c!116834 (= (select (arr!36737 _keys!1208) from!1455) k!934))))

(declare-fun e!670596 () Bool)

(assert (=> b!1179468 e!670596))

(declare-fun res!783712 () Bool)

(assert (=> b!1179468 (=> (not res!783712) (not e!670596))))

(declare-datatypes ((V!44733 0))(
  ( (V!44734 (val!14909 Int)) )
))
(declare-datatypes ((tuple2!19210 0))(
  ( (tuple2!19211 (_1!9615 (_ BitVec 64)) (_2!9615 V!44733)) )
))
(declare-fun lt!533059 () tuple2!19210)

(declare-datatypes ((List!25974 0))(
  ( (Nil!25971) (Cons!25970 (h!27179 tuple2!19210) (t!38148 List!25974)) )
))
(declare-datatypes ((ListLongMap!17191 0))(
  ( (ListLongMap!17192 (toList!8611 List!25974)) )
))
(declare-fun lt!533062 () ListLongMap!17191)

(declare-fun lt!533052 () ListLongMap!17191)

(declare-fun +!3831 (ListLongMap!17191 tuple2!19210) ListLongMap!17191)

(assert (=> b!1179468 (= res!783712 (= lt!533062 (+!3831 lt!533052 lt!533059)))))

(declare-datatypes ((ValueCell!14143 0))(
  ( (ValueCellFull!14143 (v!17548 V!44733)) (EmptyCell!14143) )
))
(declare-datatypes ((array!76184 0))(
  ( (array!76185 (arr!36738 (Array (_ BitVec 32) ValueCell!14143)) (size!37275 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76184)

(declare-fun lt!533060 () V!44733)

(declare-fun get!18814 (ValueCell!14143 V!44733) V!44733)

(assert (=> b!1179468 (= lt!533059 (tuple2!19211 (select (arr!36737 _keys!1208) from!1455) (get!18814 (select (arr!36738 _values!996) from!1455) lt!533060)))))

(declare-fun b!1179469 () Bool)

(declare-fun res!783718 () Bool)

(assert (=> b!1179469 (=> (not res!783718) (not e!670601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179469 (= res!783718 (validMask!0 mask!1564))))

(declare-fun b!1179470 () Bool)

(declare-fun e!670598 () Bool)

(declare-fun tp_is_empty!29705 () Bool)

(assert (=> b!1179470 (= e!670598 tp_is_empty!29705)))

(declare-fun b!1179471 () Bool)

(declare-fun e!670594 () Bool)

(assert (=> b!1179471 (= e!670594 e!670602)))

(declare-fun res!783707 () Bool)

(assert (=> b!1179471 (=> res!783707 e!670602)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179471 (= res!783707 (not (validKeyInArray!0 (select (arr!36737 _keys!1208) from!1455))))))

(declare-fun lt!533051 () ListLongMap!17191)

(assert (=> b!1179471 (= lt!533051 lt!533052)))

(declare-fun lt!533058 () ListLongMap!17191)

(declare-fun -!1605 (ListLongMap!17191 (_ BitVec 64)) ListLongMap!17191)

(assert (=> b!1179471 (= lt!533052 (-!1605 lt!533058 k!934))))

(declare-fun zeroValue!944 () V!44733)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!533055 () array!76184)

(declare-fun minValue!944 () V!44733)

(declare-fun getCurrentListMapNoExtraKeys!5039 (array!76182 array!76184 (_ BitVec 32) (_ BitVec 32) V!44733 V!44733 (_ BitVec 32) Int) ListLongMap!17191)

(assert (=> b!1179471 (= lt!533051 (getCurrentListMapNoExtraKeys!5039 lt!533050 lt!533055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179471 (= lt!533058 (getCurrentListMapNoExtraKeys!5039 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533057 () Unit!38911)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!829 (array!76182 array!76184 (_ BitVec 32) (_ BitVec 32) V!44733 V!44733 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38911)

(assert (=> b!1179471 (= lt!533057 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!829 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179472 () Bool)

(declare-fun res!783716 () Bool)

(assert (=> b!1179472 (=> (not res!783716) (not e!670603))))

(declare-datatypes ((List!25975 0))(
  ( (Nil!25972) (Cons!25971 (h!27180 (_ BitVec 64)) (t!38149 List!25975)) )
))
(declare-fun arrayNoDuplicates!0 (array!76182 (_ BitVec 32) List!25975) Bool)

(assert (=> b!1179472 (= res!783716 (arrayNoDuplicates!0 lt!533050 #b00000000000000000000000000000000 Nil!25972))))

(declare-fun b!1179473 () Bool)

(declare-fun res!783717 () Bool)

(assert (=> b!1179473 (=> (not res!783717) (not e!670601))))

(assert (=> b!1179473 (= res!783717 (and (= (size!37275 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37274 _keys!1208) (size!37275 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179474 () Bool)

(declare-fun Unit!38913 () Unit!38911)

(assert (=> b!1179474 (= e!670595 Unit!38913)))

(declare-fun lt!533063 () Unit!38911)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76182 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38911)

(assert (=> b!1179474 (= lt!533063 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1179474 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533061 () Unit!38911)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76182 (_ BitVec 32) (_ BitVec 32)) Unit!38911)

(assert (=> b!1179474 (= lt!533061 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1179474 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25972)))

(declare-fun lt!533054 () Unit!38911)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76182 (_ BitVec 64) (_ BitVec 32) List!25975) Unit!38911)

(assert (=> b!1179474 (= lt!533054 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25972))))

(assert (=> b!1179474 false))

(declare-fun b!1179475 () Bool)

(declare-fun res!783711 () Bool)

(assert (=> b!1179475 (=> (not res!783711) (not e!670601))))

(assert (=> b!1179475 (= res!783711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1179476 () Bool)

(declare-fun e!670591 () Bool)

(assert (=> b!1179476 (= e!670591 e!670594)))

(declare-fun res!783705 () Bool)

(assert (=> b!1179476 (=> res!783705 e!670594)))

(assert (=> b!1179476 (= res!783705 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1179476 (= lt!533062 (getCurrentListMapNoExtraKeys!5039 lt!533050 lt!533055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1179476 (= lt!533055 (array!76185 (store (arr!36738 _values!996) i!673 (ValueCellFull!14143 lt!533060)) (size!37275 _values!996)))))

(declare-fun dynLambda!3012 (Int (_ BitVec 64)) V!44733)

(assert (=> b!1179476 (= lt!533060 (dynLambda!3012 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!533064 () ListLongMap!17191)

(assert (=> b!1179476 (= lt!533064 (getCurrentListMapNoExtraKeys!5039 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179477 () Bool)

(declare-fun res!783706 () Bool)

(assert (=> b!1179477 (=> (not res!783706) (not e!670601))))

(assert (=> b!1179477 (= res!783706 (= (select (arr!36737 _keys!1208) i!673) k!934))))

(declare-fun b!1179478 () Bool)

(declare-fun res!783713 () Bool)

(assert (=> b!1179478 (=> (not res!783713) (not e!670601))))

(assert (=> b!1179478 (= res!783713 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37274 _keys!1208))))))

(declare-fun b!1179479 () Bool)

(declare-fun Unit!38914 () Unit!38911)

(assert (=> b!1179479 (= e!670595 Unit!38914)))

(declare-fun b!1179480 () Bool)

(declare-fun e!670593 () Bool)

(declare-fun e!670600 () Bool)

(declare-fun mapRes!46385 () Bool)

(assert (=> b!1179480 (= e!670593 (and e!670600 mapRes!46385))))

(declare-fun condMapEmpty!46385 () Bool)

(declare-fun mapDefault!46385 () ValueCell!14143)

