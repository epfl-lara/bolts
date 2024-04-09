; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99590 () Bool)

(assert start!99590)

(declare-fun b_free!25133 () Bool)

(declare-fun b_next!25133 () Bool)

(assert (=> start!99590 (= b_free!25133 (not b_next!25133))))

(declare-fun tp!88114 () Bool)

(declare-fun b_and!41147 () Bool)

(assert (=> start!99590 (= tp!88114 b_and!41147)))

(declare-fun b!1178101 () Bool)

(declare-fun e!669781 () Bool)

(assert (=> b!1178101 (= e!669781 true)))

(declare-fun e!669772 () Bool)

(assert (=> b!1178101 e!669772))

(declare-fun res!782698 () Bool)

(assert (=> b!1178101 (=> (not res!782698) (not e!669772))))

(declare-datatypes ((array!76098 0))(
  ( (array!76099 (arr!36695 (Array (_ BitVec 32) (_ BitVec 64))) (size!37232 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76098)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1178101 (= res!782698 (not (= (select (arr!36695 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38850 0))(
  ( (Unit!38851) )
))
(declare-fun lt!532112 () Unit!38850)

(declare-fun e!669778 () Unit!38850)

(assert (=> b!1178101 (= lt!532112 e!669778)))

(declare-fun c!116771 () Bool)

(assert (=> b!1178101 (= c!116771 (= (select (arr!36695 _keys!1208) from!1455) k!934))))

(declare-fun e!669777 () Bool)

(assert (=> b!1178101 e!669777))

(declare-fun res!782695 () Bool)

(assert (=> b!1178101 (=> (not res!782695) (not e!669777))))

(declare-datatypes ((V!44677 0))(
  ( (V!44678 (val!14888 Int)) )
))
(declare-datatypes ((tuple2!19172 0))(
  ( (tuple2!19173 (_1!9596 (_ BitVec 64)) (_2!9596 V!44677)) )
))
(declare-fun lt!532113 () tuple2!19172)

(declare-datatypes ((List!25936 0))(
  ( (Nil!25933) (Cons!25932 (h!27141 tuple2!19172) (t!38068 List!25936)) )
))
(declare-datatypes ((ListLongMap!17153 0))(
  ( (ListLongMap!17154 (toList!8592 List!25936)) )
))
(declare-fun lt!532114 () ListLongMap!17153)

(declare-fun lt!532106 () ListLongMap!17153)

(declare-fun +!3813 (ListLongMap!17153 tuple2!19172) ListLongMap!17153)

(assert (=> b!1178101 (= res!782695 (= lt!532114 (+!3813 lt!532106 lt!532113)))))

(declare-fun lt!532117 () V!44677)

(declare-datatypes ((ValueCell!14122 0))(
  ( (ValueCellFull!14122 (v!17527 V!44677)) (EmptyCell!14122) )
))
(declare-datatypes ((array!76100 0))(
  ( (array!76101 (arr!36696 (Array (_ BitVec 32) ValueCell!14122)) (size!37233 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76100)

(declare-fun get!18786 (ValueCell!14122 V!44677) V!44677)

(assert (=> b!1178101 (= lt!532113 (tuple2!19173 (select (arr!36695 _keys!1208) from!1455) (get!18786 (select (arr!36696 _values!996) from!1455) lt!532117)))))

(declare-fun b!1178102 () Bool)

(declare-fun e!669782 () Bool)

(assert (=> b!1178102 (= e!669782 e!669781)))

(declare-fun res!782706 () Bool)

(assert (=> b!1178102 (=> res!782706 e!669781)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178102 (= res!782706 (not (validKeyInArray!0 (select (arr!36695 _keys!1208) from!1455))))))

(declare-fun lt!532115 () ListLongMap!17153)

(assert (=> b!1178102 (= lt!532115 lt!532106)))

(declare-fun lt!532119 () ListLongMap!17153)

(declare-fun -!1591 (ListLongMap!17153 (_ BitVec 64)) ListLongMap!17153)

(assert (=> b!1178102 (= lt!532106 (-!1591 lt!532119 k!934))))

(declare-fun zeroValue!944 () V!44677)

(declare-fun lt!532105 () array!76098)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44677)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!532110 () array!76100)

(declare-fun getCurrentListMapNoExtraKeys!5022 (array!76098 array!76100 (_ BitVec 32) (_ BitVec 32) V!44677 V!44677 (_ BitVec 32) Int) ListLongMap!17153)

(assert (=> b!1178102 (= lt!532115 (getCurrentListMapNoExtraKeys!5022 lt!532105 lt!532110 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178102 (= lt!532119 (getCurrentListMapNoExtraKeys!5022 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!532107 () Unit!38850)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!815 (array!76098 array!76100 (_ BitVec 32) (_ BitVec 32) V!44677 V!44677 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38850)

(assert (=> b!1178102 (= lt!532107 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!815 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46322 () Bool)

(declare-fun mapRes!46322 () Bool)

(assert (=> mapIsEmpty!46322 mapRes!46322))

(declare-fun b!1178103 () Bool)

(declare-fun res!782709 () Bool)

(declare-fun e!669779 () Bool)

(assert (=> b!1178103 (=> (not res!782709) (not e!669779))))

(declare-datatypes ((List!25937 0))(
  ( (Nil!25934) (Cons!25933 (h!27142 (_ BitVec 64)) (t!38069 List!25937)) )
))
(declare-fun arrayNoDuplicates!0 (array!76098 (_ BitVec 32) List!25937) Bool)

(assert (=> b!1178103 (= res!782709 (arrayNoDuplicates!0 lt!532105 #b00000000000000000000000000000000 Nil!25934))))

(declare-fun b!1178104 () Bool)

(declare-fun res!782707 () Bool)

(declare-fun e!669775 () Bool)

(assert (=> b!1178104 (=> (not res!782707) (not e!669775))))

(assert (=> b!1178104 (= res!782707 (validKeyInArray!0 k!934))))

(declare-fun b!1178105 () Bool)

(declare-fun e!669776 () Bool)

(declare-fun tp_is_empty!29663 () Bool)

(assert (=> b!1178105 (= e!669776 tp_is_empty!29663)))

(declare-fun res!782696 () Bool)

(assert (=> start!99590 (=> (not res!782696) (not e!669775))))

(assert (=> start!99590 (= res!782696 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37232 _keys!1208))))))

(assert (=> start!99590 e!669775))

(assert (=> start!99590 tp_is_empty!29663))

(declare-fun array_inv!27910 (array!76098) Bool)

(assert (=> start!99590 (array_inv!27910 _keys!1208)))

(assert (=> start!99590 true))

(assert (=> start!99590 tp!88114))

(declare-fun e!669783 () Bool)

(declare-fun array_inv!27911 (array!76100) Bool)

(assert (=> start!99590 (and (array_inv!27911 _values!996) e!669783)))

(declare-fun b!1178106 () Bool)

(declare-fun Unit!38852 () Unit!38850)

(assert (=> b!1178106 (= e!669778 Unit!38852)))

(declare-fun lt!532108 () Unit!38850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76098 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38850)

(assert (=> b!1178106 (= lt!532108 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178106 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532116 () Unit!38850)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76098 (_ BitVec 32) (_ BitVec 32)) Unit!38850)

(assert (=> b!1178106 (= lt!532116 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1178106 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25934)))

(declare-fun lt!532118 () Unit!38850)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76098 (_ BitVec 64) (_ BitVec 32) List!25937) Unit!38850)

(assert (=> b!1178106 (= lt!532118 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25934))))

(assert (=> b!1178106 false))

(declare-fun b!1178107 () Bool)

(declare-fun res!782701 () Bool)

(assert (=> b!1178107 (=> (not res!782701) (not e!669775))))

(assert (=> b!1178107 (= res!782701 (and (= (size!37233 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37232 _keys!1208) (size!37233 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178108 () Bool)

(declare-fun res!782708 () Bool)

(assert (=> b!1178108 (=> (not res!782708) (not e!669775))))

(assert (=> b!1178108 (= res!782708 (= (select (arr!36695 _keys!1208) i!673) k!934))))

(declare-fun b!1178109 () Bool)

(assert (=> b!1178109 (= e!669783 (and e!669776 mapRes!46322))))

(declare-fun condMapEmpty!46322 () Bool)

(declare-fun mapDefault!46322 () ValueCell!14122)

