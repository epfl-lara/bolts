; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99712 () Bool)

(assert start!99712)

(declare-fun b_free!25255 () Bool)

(declare-fun b_next!25255 () Bool)

(assert (=> start!99712 (= b_free!25255 (not b_next!25255))))

(declare-fun tp!88479 () Bool)

(declare-fun b_and!41391 () Bool)

(assert (=> start!99712 (= tp!88479 b_and!41391)))

(declare-fun b!1182127 () Bool)

(declare-fun res!785691 () Bool)

(declare-fun e!672122 () Bool)

(assert (=> b!1182127 (=> (not res!785691) (not e!672122))))

(declare-datatypes ((array!76338 0))(
  ( (array!76339 (arr!36815 (Array (_ BitVec 32) (_ BitVec 64))) (size!37352 (_ BitVec 32))) )
))
(declare-fun lt!534970 () array!76338)

(declare-datatypes ((List!26036 0))(
  ( (Nil!26033) (Cons!26032 (h!27241 (_ BitVec 64)) (t!38290 List!26036)) )
))
(declare-fun arrayNoDuplicates!0 (array!76338 (_ BitVec 32) List!26036) Bool)

(assert (=> b!1182127 (= res!785691 (arrayNoDuplicates!0 lt!534970 #b00000000000000000000000000000000 Nil!26033))))

(declare-fun b!1182128 () Bool)

(declare-fun e!672129 () Bool)

(declare-fun e!672126 () Bool)

(assert (=> b!1182128 (= e!672129 e!672126)))

(declare-fun res!785694 () Bool)

(assert (=> b!1182128 (=> res!785694 e!672126)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182128 (= res!785694 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44841 0))(
  ( (V!44842 (val!14949 Int)) )
))
(declare-fun zeroValue!944 () V!44841)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44841)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14183 0))(
  ( (ValueCellFull!14183 (v!17588 V!44841)) (EmptyCell!14183) )
))
(declare-datatypes ((array!76340 0))(
  ( (array!76341 (arr!36816 (Array (_ BitVec 32) ValueCell!14183)) (size!37353 (_ BitVec 32))) )
))
(declare-fun lt!534978 () array!76340)

(declare-datatypes ((tuple2!19274 0))(
  ( (tuple2!19275 (_1!9647 (_ BitVec 64)) (_2!9647 V!44841)) )
))
(declare-datatypes ((List!26037 0))(
  ( (Nil!26034) (Cons!26033 (h!27242 tuple2!19274) (t!38291 List!26037)) )
))
(declare-datatypes ((ListLongMap!17255 0))(
  ( (ListLongMap!17256 (toList!8643 List!26037)) )
))
(declare-fun lt!534971 () ListLongMap!17255)

(declare-fun getCurrentListMapNoExtraKeys!5066 (array!76338 array!76340 (_ BitVec 32) (_ BitVec 32) V!44841 V!44841 (_ BitVec 32) Int) ListLongMap!17255)

(assert (=> b!1182128 (= lt!534971 (getCurrentListMapNoExtraKeys!5066 lt!534970 lt!534978 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534980 () V!44841)

(declare-fun _values!996 () array!76340)

(assert (=> b!1182128 (= lt!534978 (array!76341 (store (arr!36816 _values!996) i!673 (ValueCellFull!14183 lt!534980)) (size!37353 _values!996)))))

(declare-fun dynLambda!3034 (Int (_ BitVec 64)) V!44841)

(assert (=> b!1182128 (= lt!534980 (dynLambda!3034 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76338)

(declare-fun lt!534984 () ListLongMap!17255)

(assert (=> b!1182128 (= lt!534984 (getCurrentListMapNoExtraKeys!5066 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182129 () Bool)

(declare-datatypes ((Unit!39028 0))(
  ( (Unit!39029) )
))
(declare-fun e!672125 () Unit!39028)

(declare-fun Unit!39030 () Unit!39028)

(assert (=> b!1182129 (= e!672125 Unit!39030)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!534975 () Unit!39028)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76338 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39028)

(assert (=> b!1182129 (= lt!534975 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182129 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534966 () Unit!39028)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76338 (_ BitVec 32) (_ BitVec 32)) Unit!39028)

(assert (=> b!1182129 (= lt!534966 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182129 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26033)))

(declare-fun lt!534968 () Unit!39028)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76338 (_ BitVec 64) (_ BitVec 32) List!26036) Unit!39028)

(assert (=> b!1182129 (= lt!534968 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26033))))

(assert (=> b!1182129 false))

(declare-fun b!1182130 () Bool)

(declare-fun res!785686 () Bool)

(declare-fun e!672128 () Bool)

(assert (=> b!1182130 (=> (not res!785686) (not e!672128))))

(assert (=> b!1182130 (= res!785686 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37352 _keys!1208))))))

(declare-fun b!1182131 () Bool)

(declare-fun res!785685 () Bool)

(assert (=> b!1182131 (=> (not res!785685) (not e!672128))))

(assert (=> b!1182131 (= res!785685 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26033))))

(declare-fun res!785697 () Bool)

(assert (=> start!99712 (=> (not res!785697) (not e!672128))))

(assert (=> start!99712 (= res!785697 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37352 _keys!1208))))))

(assert (=> start!99712 e!672128))

(declare-fun tp_is_empty!29785 () Bool)

(assert (=> start!99712 tp_is_empty!29785))

(declare-fun array_inv!27986 (array!76338) Bool)

(assert (=> start!99712 (array_inv!27986 _keys!1208)))

(assert (=> start!99712 true))

(assert (=> start!99712 tp!88479))

(declare-fun e!672124 () Bool)

(declare-fun array_inv!27987 (array!76340) Bool)

(assert (=> start!99712 (and (array_inv!27987 _values!996) e!672124)))

(declare-fun b!1182132 () Bool)

(declare-fun e!672133 () Bool)

(assert (=> b!1182132 (= e!672133 tp_is_empty!29785)))

(declare-fun b!1182133 () Bool)

(assert (=> b!1182133 (= e!672122 (not e!672129))))

(declare-fun res!785690 () Bool)

(assert (=> b!1182133 (=> res!785690 e!672129)))

(assert (=> b!1182133 (= res!785690 (bvsgt from!1455 i!673))))

(assert (=> b!1182133 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!534974 () Unit!39028)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76338 (_ BitVec 64) (_ BitVec 32)) Unit!39028)

(assert (=> b!1182133 (= lt!534974 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182134 () Bool)

(declare-fun res!785684 () Bool)

(assert (=> b!1182134 (=> (not res!785684) (not e!672128))))

(assert (=> b!1182134 (= res!785684 (and (= (size!37353 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37352 _keys!1208) (size!37353 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182135 () Bool)

(declare-fun res!785689 () Bool)

(assert (=> b!1182135 (=> (not res!785689) (not e!672128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182135 (= res!785689 (validKeyInArray!0 k!934))))

(declare-fun b!1182136 () Bool)

(declare-fun e!672123 () Bool)

(assert (=> b!1182136 (= e!672123 true)))

(declare-fun lt!534972 () ListLongMap!17255)

(declare-fun lt!534977 () ListLongMap!17255)

(declare-fun -!1632 (ListLongMap!17255 (_ BitVec 64)) ListLongMap!17255)

(assert (=> b!1182136 (= (-!1632 lt!534972 k!934) lt!534977)))

(declare-fun lt!534969 () ListLongMap!17255)

(declare-fun lt!534981 () V!44841)

(declare-fun lt!534982 () Unit!39028)

(declare-fun addRemoveCommutativeForDiffKeys!151 (ListLongMap!17255 (_ BitVec 64) V!44841 (_ BitVec 64)) Unit!39028)

(assert (=> b!1182136 (= lt!534982 (addRemoveCommutativeForDiffKeys!151 lt!534969 (select (arr!36815 _keys!1208) from!1455) lt!534981 k!934))))

(declare-fun lt!534979 () ListLongMap!17255)

(declare-fun lt!534976 () ListLongMap!17255)

(assert (=> b!1182136 (and (= lt!534984 lt!534972) (= lt!534976 lt!534979))))

(declare-fun lt!534967 () tuple2!19274)

(declare-fun +!3861 (ListLongMap!17255 tuple2!19274) ListLongMap!17255)

(assert (=> b!1182136 (= lt!534972 (+!3861 lt!534969 lt!534967))))

(assert (=> b!1182136 (not (= (select (arr!36815 _keys!1208) from!1455) k!934))))

(declare-fun lt!534973 () Unit!39028)

(assert (=> b!1182136 (= lt!534973 e!672125)))

(declare-fun c!116954 () Bool)

(assert (=> b!1182136 (= c!116954 (= (select (arr!36815 _keys!1208) from!1455) k!934))))

(declare-fun e!672130 () Bool)

(assert (=> b!1182136 e!672130))

(declare-fun res!785695 () Bool)

(assert (=> b!1182136 (=> (not res!785695) (not e!672130))))

(assert (=> b!1182136 (= res!785695 (= lt!534971 lt!534977))))

(assert (=> b!1182136 (= lt!534977 (+!3861 lt!534976 lt!534967))))

(assert (=> b!1182136 (= lt!534967 (tuple2!19275 (select (arr!36815 _keys!1208) from!1455) lt!534981))))

(declare-fun get!18869 (ValueCell!14183 V!44841) V!44841)

(assert (=> b!1182136 (= lt!534981 (get!18869 (select (arr!36816 _values!996) from!1455) lt!534980))))

(declare-fun b!1182137 () Bool)

(declare-fun res!785687 () Bool)

(assert (=> b!1182137 (=> (not res!785687) (not e!672128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182137 (= res!785687 (validMask!0 mask!1564))))

(declare-fun b!1182138 () Bool)

(declare-fun Unit!39031 () Unit!39028)

(assert (=> b!1182138 (= e!672125 Unit!39031)))

(declare-fun mapIsEmpty!46505 () Bool)

(declare-fun mapRes!46505 () Bool)

(assert (=> mapIsEmpty!46505 mapRes!46505))

(declare-fun b!1182139 () Bool)

(assert (=> b!1182139 (= e!672126 e!672123)))

(declare-fun res!785692 () Bool)

(assert (=> b!1182139 (=> res!785692 e!672123)))

(assert (=> b!1182139 (= res!785692 (not (validKeyInArray!0 (select (arr!36815 _keys!1208) from!1455))))))

(assert (=> b!1182139 (= lt!534979 lt!534976)))

(assert (=> b!1182139 (= lt!534976 (-!1632 lt!534969 k!934))))

(assert (=> b!1182139 (= lt!534979 (getCurrentListMapNoExtraKeys!5066 lt!534970 lt!534978 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182139 (= lt!534969 (getCurrentListMapNoExtraKeys!5066 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534983 () Unit!39028)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!854 (array!76338 array!76340 (_ BitVec 32) (_ BitVec 32) V!44841 V!44841 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39028)

(assert (=> b!1182139 (= lt!534983 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!854 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182140 () Bool)

(declare-fun res!785688 () Bool)

(assert (=> b!1182140 (=> (not res!785688) (not e!672128))))

(assert (=> b!1182140 (= res!785688 (= (select (arr!36815 _keys!1208) i!673) k!934))))

(declare-fun b!1182141 () Bool)

(assert (=> b!1182141 (= e!672128 e!672122)))

(declare-fun res!785696 () Bool)

(assert (=> b!1182141 (=> (not res!785696) (not e!672122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76338 (_ BitVec 32)) Bool)

(assert (=> b!1182141 (= res!785696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534970 mask!1564))))

(assert (=> b!1182141 (= lt!534970 (array!76339 (store (arr!36815 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37352 _keys!1208)))))

(declare-fun b!1182142 () Bool)

(declare-fun e!672127 () Bool)

(assert (=> b!1182142 (= e!672124 (and e!672127 mapRes!46505))))

(declare-fun condMapEmpty!46505 () Bool)

(declare-fun mapDefault!46505 () ValueCell!14183)

