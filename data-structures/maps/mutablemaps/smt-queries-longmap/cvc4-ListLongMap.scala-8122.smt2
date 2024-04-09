; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99638 () Bool)

(assert start!99638)

(declare-fun b_free!25181 () Bool)

(declare-fun b_next!25181 () Bool)

(assert (=> start!99638 (= b_free!25181 (not b_next!25181))))

(declare-fun tp!88258 () Bool)

(declare-fun b_and!41243 () Bool)

(assert (=> start!99638 (= tp!88258 b_and!41243)))

(declare-fun b!1179669 () Bool)

(declare-fun res!783868 () Bool)

(declare-fun e!670712 () Bool)

(assert (=> b!1179669 (=> (not res!783868) (not e!670712))))

(declare-datatypes ((array!76194 0))(
  ( (array!76195 (arr!36743 (Array (_ BitVec 32) (_ BitVec 64))) (size!37280 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76194)

(declare-datatypes ((List!25978 0))(
  ( (Nil!25975) (Cons!25974 (h!27183 (_ BitVec 64)) (t!38158 List!25978)) )
))
(declare-fun arrayNoDuplicates!0 (array!76194 (_ BitVec 32) List!25978) Bool)

(assert (=> b!1179669 (= res!783868 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25975))))

(declare-fun b!1179670 () Bool)

(declare-fun res!783869 () Bool)

(declare-fun e!670713 () Bool)

(assert (=> b!1179670 (=> (not res!783869) (not e!670713))))

(declare-fun lt!533187 () array!76194)

(assert (=> b!1179670 (= res!783869 (arrayNoDuplicates!0 lt!533187 #b00000000000000000000000000000000 Nil!25975))))

(declare-fun b!1179671 () Bool)

(declare-fun res!783859 () Bool)

(assert (=> b!1179671 (=> (not res!783859) (not e!670712))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179671 (= res!783859 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46394 () Bool)

(declare-fun mapRes!46394 () Bool)

(assert (=> mapIsEmpty!46394 mapRes!46394))

(declare-fun b!1179672 () Bool)

(declare-fun e!670720 () Bool)

(declare-fun tp_is_empty!29711 () Bool)

(assert (=> b!1179672 (= e!670720 tp_is_empty!29711)))

(declare-fun b!1179673 () Bool)

(declare-datatypes ((Unit!38919 0))(
  ( (Unit!38920) )
))
(declare-fun e!670716 () Unit!38919)

(declare-fun Unit!38921 () Unit!38919)

(assert (=> b!1179673 (= e!670716 Unit!38921)))

(declare-fun b!1179674 () Bool)

(assert (=> b!1179674 (= e!670712 e!670713)))

(declare-fun res!783864 () Bool)

(assert (=> b!1179674 (=> (not res!783864) (not e!670713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76194 (_ BitVec 32)) Bool)

(assert (=> b!1179674 (= res!783864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533187 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1179674 (= lt!533187 (array!76195 (store (arr!36743 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37280 _keys!1208)))))

(declare-fun b!1179675 () Bool)

(declare-fun e!670708 () Bool)

(assert (=> b!1179675 (= e!670713 (not e!670708))))

(declare-fun res!783871 () Bool)

(assert (=> b!1179675 (=> res!783871 e!670708)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179675 (= res!783871 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179675 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!533198 () Unit!38919)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76194 (_ BitVec 64) (_ BitVec 32)) Unit!38919)

(assert (=> b!1179675 (= lt!533198 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1179676 () Bool)

(declare-fun e!670718 () Bool)

(assert (=> b!1179676 (= e!670718 true)))

(declare-fun e!670709 () Bool)

(assert (=> b!1179676 e!670709))

(declare-fun res!783858 () Bool)

(assert (=> b!1179676 (=> (not res!783858) (not e!670709))))

(assert (=> b!1179676 (= res!783858 (not (= (select (arr!36743 _keys!1208) from!1455) k!934)))))

(declare-fun lt!533193 () Unit!38919)

(assert (=> b!1179676 (= lt!533193 e!670716)))

(declare-fun c!116843 () Bool)

(assert (=> b!1179676 (= c!116843 (= (select (arr!36743 _keys!1208) from!1455) k!934))))

(declare-fun e!670717 () Bool)

(assert (=> b!1179676 e!670717))

(declare-fun res!783867 () Bool)

(assert (=> b!1179676 (=> (not res!783867) (not e!670717))))

(declare-datatypes ((V!44741 0))(
  ( (V!44742 (val!14912 Int)) )
))
(declare-datatypes ((tuple2!19214 0))(
  ( (tuple2!19215 (_1!9617 (_ BitVec 64)) (_2!9617 V!44741)) )
))
(declare-datatypes ((List!25979 0))(
  ( (Nil!25976) (Cons!25975 (h!27184 tuple2!19214) (t!38159 List!25979)) )
))
(declare-datatypes ((ListLongMap!17195 0))(
  ( (ListLongMap!17196 (toList!8613 List!25979)) )
))
(declare-fun lt!533188 () ListLongMap!17195)

(declare-fun lt!533197 () tuple2!19214)

(declare-fun lt!533195 () ListLongMap!17195)

(declare-fun +!3833 (ListLongMap!17195 tuple2!19214) ListLongMap!17195)

(assert (=> b!1179676 (= res!783867 (= lt!533195 (+!3833 lt!533188 lt!533197)))))

(declare-fun lt!533190 () V!44741)

(declare-datatypes ((ValueCell!14146 0))(
  ( (ValueCellFull!14146 (v!17551 V!44741)) (EmptyCell!14146) )
))
(declare-datatypes ((array!76196 0))(
  ( (array!76197 (arr!36744 (Array (_ BitVec 32) ValueCell!14146)) (size!37281 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76196)

(declare-fun get!18818 (ValueCell!14146 V!44741) V!44741)

(assert (=> b!1179676 (= lt!533197 (tuple2!19215 (select (arr!36743 _keys!1208) from!1455) (get!18818 (select (arr!36744 _values!996) from!1455) lt!533190)))))

(declare-fun b!1179677 () Bool)

(declare-fun e!670714 () Bool)

(assert (=> b!1179677 (= e!670714 tp_is_empty!29711)))

(declare-fun b!1179678 () Bool)

(declare-fun lt!533185 () ListLongMap!17195)

(assert (=> b!1179678 (= e!670709 (= lt!533188 lt!533185))))

(declare-fun res!783865 () Bool)

(assert (=> start!99638 (=> (not res!783865) (not e!670712))))

(assert (=> start!99638 (= res!783865 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37280 _keys!1208))))))

(assert (=> start!99638 e!670712))

(assert (=> start!99638 tp_is_empty!29711))

(declare-fun array_inv!27940 (array!76194) Bool)

(assert (=> start!99638 (array_inv!27940 _keys!1208)))

(assert (=> start!99638 true))

(assert (=> start!99638 tp!88258))

(declare-fun e!670715 () Bool)

(declare-fun array_inv!27941 (array!76196) Bool)

(assert (=> start!99638 (and (array_inv!27941 _values!996) e!670715)))

(declare-fun b!1179679 () Bool)

(declare-fun e!670710 () Bool)

(assert (=> b!1179679 (= e!670710 e!670718)))

(declare-fun res!783866 () Bool)

(assert (=> b!1179679 (=> res!783866 e!670718)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179679 (= res!783866 (not (validKeyInArray!0 (select (arr!36743 _keys!1208) from!1455))))))

(assert (=> b!1179679 (= lt!533185 lt!533188)))

(declare-fun lt!533189 () ListLongMap!17195)

(declare-fun -!1607 (ListLongMap!17195 (_ BitVec 64)) ListLongMap!17195)

(assert (=> b!1179679 (= lt!533188 (-!1607 lt!533189 k!934))))

(declare-fun zeroValue!944 () V!44741)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!533192 () array!76196)

(declare-fun minValue!944 () V!44741)

(declare-fun getCurrentListMapNoExtraKeys!5041 (array!76194 array!76196 (_ BitVec 32) (_ BitVec 32) V!44741 V!44741 (_ BitVec 32) Int) ListLongMap!17195)

(assert (=> b!1179679 (= lt!533185 (getCurrentListMapNoExtraKeys!5041 lt!533187 lt!533192 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179679 (= lt!533189 (getCurrentListMapNoExtraKeys!5041 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533186 () Unit!38919)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!831 (array!76194 array!76196 (_ BitVec 32) (_ BitVec 32) V!44741 V!44741 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38919)

(assert (=> b!1179679 (= lt!533186 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!831 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179680 () Bool)

(declare-fun Unit!38922 () Unit!38919)

(assert (=> b!1179680 (= e!670716 Unit!38922)))

(declare-fun lt!533199 () Unit!38919)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76194 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38919)

(assert (=> b!1179680 (= lt!533199 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1179680 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533196 () Unit!38919)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76194 (_ BitVec 32) (_ BitVec 32)) Unit!38919)

(assert (=> b!1179680 (= lt!533196 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1179680 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25975)))

(declare-fun lt!533191 () Unit!38919)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76194 (_ BitVec 64) (_ BitVec 32) List!25978) Unit!38919)

(assert (=> b!1179680 (= lt!533191 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25975))))

(assert (=> b!1179680 false))

(declare-fun b!1179681 () Bool)

(declare-fun e!670719 () Bool)

(assert (=> b!1179681 (= e!670717 e!670719)))

(declare-fun res!783863 () Bool)

(assert (=> b!1179681 (=> res!783863 e!670719)))

(assert (=> b!1179681 (= res!783863 (not (= (select (arr!36743 _keys!1208) from!1455) k!934)))))

(declare-fun b!1179682 () Bool)

(assert (=> b!1179682 (= e!670715 (and e!670720 mapRes!46394))))

(declare-fun condMapEmpty!46394 () Bool)

(declare-fun mapDefault!46394 () ValueCell!14146)

