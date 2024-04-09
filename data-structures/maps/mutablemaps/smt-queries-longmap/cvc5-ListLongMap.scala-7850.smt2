; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97880 () Bool)

(assert start!97880)

(declare-fun b_free!23545 () Bool)

(declare-fun b_next!23545 () Bool)

(assert (=> start!97880 (= b_free!23545 (not b_next!23545))))

(declare-fun tp!83339 () Bool)

(declare-fun b_and!37895 () Bool)

(assert (=> start!97880 (= tp!83339 b_and!37895)))

(declare-fun b!1119888 () Bool)

(declare-fun res!748170 () Bool)

(declare-fun e!637789 () Bool)

(assert (=> b!1119888 (=> (not res!748170) (not e!637789))))

(declare-datatypes ((array!72976 0))(
  ( (array!72977 (arr!35137 (Array (_ BitVec 32) (_ BitVec 64))) (size!35674 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72976)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72976 (_ BitVec 32)) Bool)

(assert (=> b!1119888 (= res!748170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119889 () Bool)

(declare-fun res!748168 () Bool)

(assert (=> b!1119889 (=> (not res!748168) (not e!637789))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42561 0))(
  ( (V!42562 (val!14094 Int)) )
))
(declare-datatypes ((ValueCell!13328 0))(
  ( (ValueCellFull!13328 (v!16728 V!42561)) (EmptyCell!13328) )
))
(declare-datatypes ((array!72978 0))(
  ( (array!72979 (arr!35138 (Array (_ BitVec 32) ValueCell!13328)) (size!35675 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72978)

(assert (=> b!1119889 (= res!748168 (and (= (size!35675 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35674 _keys!1208) (size!35675 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119890 () Bool)

(declare-fun e!637786 () Bool)

(declare-fun tp_is_empty!28075 () Bool)

(assert (=> b!1119890 (= e!637786 tp_is_empty!28075)))

(declare-fun res!748172 () Bool)

(assert (=> start!97880 (=> (not res!748172) (not e!637789))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97880 (= res!748172 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35674 _keys!1208))))))

(assert (=> start!97880 e!637789))

(assert (=> start!97880 tp_is_empty!28075))

(declare-fun array_inv!26856 (array!72976) Bool)

(assert (=> start!97880 (array_inv!26856 _keys!1208)))

(assert (=> start!97880 true))

(assert (=> start!97880 tp!83339))

(declare-fun e!637785 () Bool)

(declare-fun array_inv!26857 (array!72978) Bool)

(assert (=> start!97880 (and (array_inv!26857 _values!996) e!637785)))

(declare-fun b!1119891 () Bool)

(declare-fun e!637790 () Bool)

(assert (=> b!1119891 (= e!637789 e!637790)))

(declare-fun res!748173 () Bool)

(assert (=> b!1119891 (=> (not res!748173) (not e!637790))))

(declare-fun lt!497859 () array!72976)

(assert (=> b!1119891 (= res!748173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497859 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119891 (= lt!497859 (array!72977 (store (arr!35137 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35674 _keys!1208)))))

(declare-fun b!1119892 () Bool)

(declare-fun e!637784 () Bool)

(assert (=> b!1119892 (= e!637784 tp_is_empty!28075)))

(declare-fun b!1119893 () Bool)

(declare-fun res!748176 () Bool)

(assert (=> b!1119893 (=> (not res!748176) (not e!637789))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119893 (= res!748176 (validKeyInArray!0 k!934))))

(declare-fun b!1119894 () Bool)

(declare-fun res!748174 () Bool)

(assert (=> b!1119894 (=> (not res!748174) (not e!637789))))

(assert (=> b!1119894 (= res!748174 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35674 _keys!1208))))))

(declare-fun mapNonEmpty!43930 () Bool)

(declare-fun mapRes!43930 () Bool)

(declare-fun tp!83340 () Bool)

(assert (=> mapNonEmpty!43930 (= mapRes!43930 (and tp!83340 e!637786))))

(declare-fun mapValue!43930 () ValueCell!13328)

(declare-fun mapRest!43930 () (Array (_ BitVec 32) ValueCell!13328))

(declare-fun mapKey!43930 () (_ BitVec 32))

(assert (=> mapNonEmpty!43930 (= (arr!35138 _values!996) (store mapRest!43930 mapKey!43930 mapValue!43930))))

(declare-fun b!1119895 () Bool)

(declare-fun res!748166 () Bool)

(assert (=> b!1119895 (=> (not res!748166) (not e!637790))))

(declare-datatypes ((List!24577 0))(
  ( (Nil!24574) (Cons!24573 (h!25782 (_ BitVec 64)) (t!35121 List!24577)) )
))
(declare-fun arrayNoDuplicates!0 (array!72976 (_ BitVec 32) List!24577) Bool)

(assert (=> b!1119895 (= res!748166 (arrayNoDuplicates!0 lt!497859 #b00000000000000000000000000000000 Nil!24574))))

(declare-fun b!1119896 () Bool)

(declare-fun e!637788 () Bool)

(assert (=> b!1119896 (= e!637788 true)))

(declare-fun zeroValue!944 () V!42561)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17740 0))(
  ( (tuple2!17741 (_1!8880 (_ BitVec 64)) (_2!8880 V!42561)) )
))
(declare-datatypes ((List!24578 0))(
  ( (Nil!24575) (Cons!24574 (h!25783 tuple2!17740) (t!35122 List!24578)) )
))
(declare-datatypes ((ListLongMap!15721 0))(
  ( (ListLongMap!15722 (toList!7876 List!24578)) )
))
(declare-fun lt!497860 () ListLongMap!15721)

(declare-fun minValue!944 () V!42561)

(declare-fun getCurrentListMapNoExtraKeys!4337 (array!72976 array!72978 (_ BitVec 32) (_ BitVec 32) V!42561 V!42561 (_ BitVec 32) Int) ListLongMap!15721)

(declare-fun dynLambda!2439 (Int (_ BitVec 64)) V!42561)

(assert (=> b!1119896 (= lt!497860 (getCurrentListMapNoExtraKeys!4337 lt!497859 (array!72979 (store (arr!35138 _values!996) i!673 (ValueCellFull!13328 (dynLambda!2439 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35675 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497861 () ListLongMap!15721)

(assert (=> b!1119896 (= lt!497861 (getCurrentListMapNoExtraKeys!4337 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119897 () Bool)

(declare-fun res!748167 () Bool)

(assert (=> b!1119897 (=> (not res!748167) (not e!637789))))

(assert (=> b!1119897 (= res!748167 (= (select (arr!35137 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43930 () Bool)

(assert (=> mapIsEmpty!43930 mapRes!43930))

(declare-fun b!1119898 () Bool)

(declare-fun res!748169 () Bool)

(assert (=> b!1119898 (=> (not res!748169) (not e!637789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119898 (= res!748169 (validMask!0 mask!1564))))

(declare-fun b!1119899 () Bool)

(assert (=> b!1119899 (= e!637790 (not e!637788))))

(declare-fun res!748175 () Bool)

(assert (=> b!1119899 (=> res!748175 e!637788)))

(assert (=> b!1119899 (= res!748175 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119899 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36667 0))(
  ( (Unit!36668) )
))
(declare-fun lt!497862 () Unit!36667)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72976 (_ BitVec 64) (_ BitVec 32)) Unit!36667)

(assert (=> b!1119899 (= lt!497862 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119900 () Bool)

(assert (=> b!1119900 (= e!637785 (and e!637784 mapRes!43930))))

(declare-fun condMapEmpty!43930 () Bool)

(declare-fun mapDefault!43930 () ValueCell!13328)

