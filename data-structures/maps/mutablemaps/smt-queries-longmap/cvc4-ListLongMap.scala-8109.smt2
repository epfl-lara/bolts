; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99560 () Bool)

(assert start!99560)

(declare-fun b_free!25103 () Bool)

(declare-fun b_next!25103 () Bool)

(assert (=> start!99560 (= b_free!25103 (not b_next!25103))))

(declare-fun tp!88024 () Bool)

(declare-fun b_and!41087 () Bool)

(assert (=> start!99560 (= tp!88024 b_and!41087)))

(declare-fun b!1177126 () Bool)

(declare-fun res!781980 () Bool)

(declare-fun e!669193 () Bool)

(assert (=> b!1177126 (=> (not res!781980) (not e!669193))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177126 (= res!781980 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46277 () Bool)

(declare-fun mapRes!46277 () Bool)

(declare-fun tp!88023 () Bool)

(declare-fun e!669187 () Bool)

(assert (=> mapNonEmpty!46277 (= mapRes!46277 (and tp!88023 e!669187))))

(declare-datatypes ((V!44637 0))(
  ( (V!44638 (val!14873 Int)) )
))
(declare-datatypes ((ValueCell!14107 0))(
  ( (ValueCellFull!14107 (v!17512 V!44637)) (EmptyCell!14107) )
))
(declare-fun mapValue!46277 () ValueCell!14107)

(declare-fun mapRest!46277 () (Array (_ BitVec 32) ValueCell!14107))

(declare-fun mapKey!46277 () (_ BitVec 32))

(declare-datatypes ((array!76042 0))(
  ( (array!76043 (arr!36667 (Array (_ BitVec 32) ValueCell!14107)) (size!37204 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76042)

(assert (=> mapNonEmpty!46277 (= (arr!36667 _values!996) (store mapRest!46277 mapKey!46277 mapValue!46277))))

(declare-fun res!781979 () Bool)

(assert (=> start!99560 (=> (not res!781979) (not e!669193))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76044 0))(
  ( (array!76045 (arr!36668 (Array (_ BitVec 32) (_ BitVec 64))) (size!37205 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76044)

(assert (=> start!99560 (= res!781979 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37205 _keys!1208))))))

(assert (=> start!99560 e!669193))

(declare-fun tp_is_empty!29633 () Bool)

(assert (=> start!99560 tp_is_empty!29633))

(declare-fun array_inv!27892 (array!76044) Bool)

(assert (=> start!99560 (array_inv!27892 _keys!1208)))

(assert (=> start!99560 true))

(assert (=> start!99560 tp!88024))

(declare-fun e!669189 () Bool)

(declare-fun array_inv!27893 (array!76042) Bool)

(assert (=> start!99560 (and (array_inv!27893 _values!996) e!669189)))

(declare-fun b!1177127 () Bool)

(declare-fun e!669191 () Bool)

(assert (=> b!1177127 (= e!669191 tp_is_empty!29633)))

(declare-fun b!1177128 () Bool)

(declare-fun e!669199 () Bool)

(declare-fun e!669190 () Bool)

(assert (=> b!1177128 (= e!669199 e!669190)))

(declare-fun res!781985 () Bool)

(assert (=> b!1177128 (=> res!781985 e!669190)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177128 (= res!781985 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44637)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!531439 () array!76044)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531430 () array!76042)

(declare-fun minValue!944 () V!44637)

(declare-datatypes ((tuple2!19144 0))(
  ( (tuple2!19145 (_1!9582 (_ BitVec 64)) (_2!9582 V!44637)) )
))
(declare-datatypes ((List!25911 0))(
  ( (Nil!25908) (Cons!25907 (h!27116 tuple2!19144) (t!38013 List!25911)) )
))
(declare-datatypes ((ListLongMap!17125 0))(
  ( (ListLongMap!17126 (toList!8578 List!25911)) )
))
(declare-fun lt!531438 () ListLongMap!17125)

(declare-fun getCurrentListMapNoExtraKeys!5009 (array!76044 array!76042 (_ BitVec 32) (_ BitVec 32) V!44637 V!44637 (_ BitVec 32) Int) ListLongMap!17125)

(assert (=> b!1177128 (= lt!531438 (getCurrentListMapNoExtraKeys!5009 lt!531439 lt!531430 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531431 () V!44637)

(assert (=> b!1177128 (= lt!531430 (array!76043 (store (arr!36667 _values!996) i!673 (ValueCellFull!14107 lt!531431)) (size!37204 _values!996)))))

(declare-fun dynLambda!2985 (Int (_ BitVec 64)) V!44637)

(assert (=> b!1177128 (= lt!531431 (dynLambda!2985 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531434 () ListLongMap!17125)

(assert (=> b!1177128 (= lt!531434 (getCurrentListMapNoExtraKeys!5009 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177129 () Bool)

(declare-fun res!781976 () Bool)

(assert (=> b!1177129 (=> (not res!781976) (not e!669193))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1177129 (= res!781976 (= (select (arr!36668 _keys!1208) i!673) k!934))))

(declare-fun e!669198 () Bool)

(declare-fun b!1177130 () Bool)

(declare-fun lt!531437 () tuple2!19144)

(declare-fun lt!531433 () ListLongMap!17125)

(declare-fun +!3801 (ListLongMap!17125 tuple2!19144) ListLongMap!17125)

(assert (=> b!1177130 (= e!669198 (= lt!531434 (+!3801 lt!531433 lt!531437)))))

(declare-fun b!1177131 () Bool)

(declare-fun e!669192 () Bool)

(assert (=> b!1177131 (= e!669192 true)))

(assert (=> b!1177131 e!669198))

(declare-fun res!781988 () Bool)

(assert (=> b!1177131 (=> (not res!781988) (not e!669198))))

(assert (=> b!1177131 (= res!781988 (not (= (select (arr!36668 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38806 0))(
  ( (Unit!38807) )
))
(declare-fun lt!531432 () Unit!38806)

(declare-fun e!669197 () Unit!38806)

(assert (=> b!1177131 (= lt!531432 e!669197)))

(declare-fun c!116726 () Bool)

(assert (=> b!1177131 (= c!116726 (= (select (arr!36668 _keys!1208) from!1455) k!934))))

(declare-fun e!669188 () Bool)

(assert (=> b!1177131 e!669188))

(declare-fun res!781986 () Bool)

(assert (=> b!1177131 (=> (not res!781986) (not e!669188))))

(declare-fun lt!531436 () ListLongMap!17125)

(assert (=> b!1177131 (= res!781986 (= lt!531438 (+!3801 lt!531436 lt!531437)))))

(declare-fun get!18767 (ValueCell!14107 V!44637) V!44637)

(assert (=> b!1177131 (= lt!531437 (tuple2!19145 (select (arr!36668 _keys!1208) from!1455) (get!18767 (select (arr!36667 _values!996) from!1455) lt!531431)))))

(declare-fun b!1177132 () Bool)

(declare-fun res!781977 () Bool)

(assert (=> b!1177132 (=> (not res!781977) (not e!669193))))

(assert (=> b!1177132 (= res!781977 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37205 _keys!1208))))))

(declare-fun b!1177133 () Bool)

(declare-fun e!669195 () Bool)

(assert (=> b!1177133 (= e!669193 e!669195)))

(declare-fun res!781990 () Bool)

(assert (=> b!1177133 (=> (not res!781990) (not e!669195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76044 (_ BitVec 32)) Bool)

(assert (=> b!1177133 (= res!781990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531439 mask!1564))))

(assert (=> b!1177133 (= lt!531439 (array!76045 (store (arr!36668 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37205 _keys!1208)))))

(declare-fun b!1177134 () Bool)

(declare-fun e!669194 () Bool)

(declare-fun arrayContainsKey!0 (array!76044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177134 (= e!669194 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177135 () Bool)

(declare-fun Unit!38808 () Unit!38806)

(assert (=> b!1177135 (= e!669197 Unit!38808)))

(declare-fun b!1177136 () Bool)

(assert (=> b!1177136 (= e!669187 tp_is_empty!29633)))

(declare-fun b!1177137 () Bool)

(declare-fun Unit!38809 () Unit!38806)

(assert (=> b!1177137 (= e!669197 Unit!38809)))

(declare-fun lt!531442 () Unit!38806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76044 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38806)

(assert (=> b!1177137 (= lt!531442 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177137 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531440 () Unit!38806)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76044 (_ BitVec 32) (_ BitVec 32)) Unit!38806)

(assert (=> b!1177137 (= lt!531440 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25912 0))(
  ( (Nil!25909) (Cons!25908 (h!27117 (_ BitVec 64)) (t!38014 List!25912)) )
))
(declare-fun arrayNoDuplicates!0 (array!76044 (_ BitVec 32) List!25912) Bool)

(assert (=> b!1177137 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25909)))

(declare-fun lt!531435 () Unit!38806)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76044 (_ BitVec 64) (_ BitVec 32) List!25912) Unit!38806)

(assert (=> b!1177137 (= lt!531435 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25909))))

(assert (=> b!1177137 false))

(declare-fun b!1177138 () Bool)

(assert (=> b!1177138 (= e!669195 (not e!669199))))

(declare-fun res!781975 () Bool)

(assert (=> b!1177138 (=> res!781975 e!669199)))

(assert (=> b!1177138 (= res!781975 (bvsgt from!1455 i!673))))

(assert (=> b!1177138 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!531443 () Unit!38806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76044 (_ BitVec 64) (_ BitVec 32)) Unit!38806)

(assert (=> b!1177138 (= lt!531443 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177139 () Bool)

(declare-fun res!781984 () Bool)

(assert (=> b!1177139 (=> (not res!781984) (not e!669193))))

(assert (=> b!1177139 (= res!781984 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25909))))

(declare-fun mapIsEmpty!46277 () Bool)

(assert (=> mapIsEmpty!46277 mapRes!46277))

(declare-fun b!1177140 () Bool)

(assert (=> b!1177140 (= e!669190 e!669192)))

(declare-fun res!781987 () Bool)

(assert (=> b!1177140 (=> res!781987 e!669192)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177140 (= res!781987 (not (validKeyInArray!0 (select (arr!36668 _keys!1208) from!1455))))))

(declare-fun lt!531441 () ListLongMap!17125)

(assert (=> b!1177140 (= lt!531441 lt!531436)))

(declare-fun -!1581 (ListLongMap!17125 (_ BitVec 64)) ListLongMap!17125)

(assert (=> b!1177140 (= lt!531436 (-!1581 lt!531433 k!934))))

(assert (=> b!1177140 (= lt!531441 (getCurrentListMapNoExtraKeys!5009 lt!531439 lt!531430 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177140 (= lt!531433 (getCurrentListMapNoExtraKeys!5009 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531444 () Unit!38806)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!805 (array!76044 array!76042 (_ BitVec 32) (_ BitVec 32) V!44637 V!44637 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38806)

(assert (=> b!1177140 (= lt!531444 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!805 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177141 () Bool)

(declare-fun res!781981 () Bool)

(assert (=> b!1177141 (=> (not res!781981) (not e!669195))))

(assert (=> b!1177141 (= res!781981 (arrayNoDuplicates!0 lt!531439 #b00000000000000000000000000000000 Nil!25909))))

(declare-fun b!1177142 () Bool)

(declare-fun res!781983 () Bool)

(assert (=> b!1177142 (=> (not res!781983) (not e!669193))))

(assert (=> b!1177142 (= res!781983 (validKeyInArray!0 k!934))))

(declare-fun b!1177143 () Bool)

(declare-fun res!781989 () Bool)

(assert (=> b!1177143 (=> (not res!781989) (not e!669193))))

(assert (=> b!1177143 (= res!781989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177144 () Bool)

(assert (=> b!1177144 (= e!669189 (and e!669191 mapRes!46277))))

(declare-fun condMapEmpty!46277 () Bool)

(declare-fun mapDefault!46277 () ValueCell!14107)

