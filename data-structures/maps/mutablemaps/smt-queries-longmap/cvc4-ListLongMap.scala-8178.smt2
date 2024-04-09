; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99974 () Bool)

(assert start!99974)

(declare-fun b_free!25517 () Bool)

(declare-fun b_next!25517 () Bool)

(assert (=> start!99974 (= b_free!25517 (not b_next!25517))))

(declare-fun tp!89265 () Bool)

(declare-fun b_and!41915 () Bool)

(assert (=> start!99974 (= tp!89265 b_and!41915)))

(declare-fun b!1189759 () Bool)

(declare-fun e!676448 () Bool)

(declare-fun tp_is_empty!30047 () Bool)

(assert (=> b!1189759 (= e!676448 tp_is_empty!30047)))

(declare-fun b!1189760 () Bool)

(declare-fun res!791294 () Bool)

(declare-fun e!676447 () Bool)

(assert (=> b!1189760 (=> (not res!791294) (not e!676447))))

(declare-datatypes ((array!76860 0))(
  ( (array!76861 (arr!37076 (Array (_ BitVec 32) (_ BitVec 64))) (size!37613 (_ BitVec 32))) )
))
(declare-fun lt!541159 () array!76860)

(declare-datatypes ((List!26263 0))(
  ( (Nil!26260) (Cons!26259 (h!27468 (_ BitVec 64)) (t!38779 List!26263)) )
))
(declare-fun arrayNoDuplicates!0 (array!76860 (_ BitVec 32) List!26263) Bool)

(assert (=> b!1189760 (= res!791294 (arrayNoDuplicates!0 lt!541159 #b00000000000000000000000000000000 Nil!26260))))

(declare-fun b!1189761 () Bool)

(declare-fun res!791292 () Bool)

(declare-fun e!676446 () Bool)

(assert (=> b!1189761 (=> (not res!791292) (not e!676446))))

(declare-fun _keys!1208 () array!76860)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45189 0))(
  ( (V!45190 (val!15080 Int)) )
))
(declare-datatypes ((ValueCell!14314 0))(
  ( (ValueCellFull!14314 (v!17719 V!45189)) (EmptyCell!14314) )
))
(declare-datatypes ((array!76862 0))(
  ( (array!76863 (arr!37077 (Array (_ BitVec 32) ValueCell!14314)) (size!37614 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76862)

(assert (=> b!1189761 (= res!791292 (and (= (size!37614 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37613 _keys!1208) (size!37614 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189762 () Bool)

(declare-fun res!791285 () Bool)

(assert (=> b!1189762 (=> (not res!791285) (not e!676446))))

(assert (=> b!1189762 (= res!791285 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26260))))

(declare-fun b!1189763 () Bool)

(declare-fun e!676453 () Bool)

(assert (=> b!1189763 (= e!676453 true)))

(declare-fun zeroValue!944 () V!45189)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45189)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541160 () array!76862)

(declare-datatypes ((tuple2!19504 0))(
  ( (tuple2!19505 (_1!9762 (_ BitVec 64)) (_2!9762 V!45189)) )
))
(declare-datatypes ((List!26264 0))(
  ( (Nil!26261) (Cons!26260 (h!27469 tuple2!19504) (t!38780 List!26264)) )
))
(declare-datatypes ((ListLongMap!17485 0))(
  ( (ListLongMap!17486 (toList!8758 List!26264)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5172 (array!76860 array!76862 (_ BitVec 32) (_ BitVec 32) V!45189 V!45189 (_ BitVec 32) Int) ListLongMap!17485)

(declare-fun -!1740 (ListLongMap!17485 (_ BitVec 64)) ListLongMap!17485)

(assert (=> b!1189763 (= (getCurrentListMapNoExtraKeys!5172 lt!541159 lt!541160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1740 (getCurrentListMapNoExtraKeys!5172 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39408 0))(
  ( (Unit!39409) )
))
(declare-fun lt!541162 () Unit!39408)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!946 (array!76860 array!76862 (_ BitVec 32) (_ BitVec 32) V!45189 V!45189 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39408)

(assert (=> b!1189763 (= lt!541162 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!946 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189764 () Bool)

(declare-fun e!676451 () Bool)

(assert (=> b!1189764 (= e!676447 (not e!676451))))

(declare-fun res!791295 () Bool)

(assert (=> b!1189764 (=> res!791295 e!676451)))

(assert (=> b!1189764 (= res!791295 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189764 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541164 () Unit!39408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76860 (_ BitVec 64) (_ BitVec 32)) Unit!39408)

(assert (=> b!1189764 (= lt!541164 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189765 () Bool)

(declare-fun res!791291 () Bool)

(assert (=> b!1189765 (=> (not res!791291) (not e!676446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76860 (_ BitVec 32)) Bool)

(assert (=> b!1189765 (= res!791291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189766 () Bool)

(assert (=> b!1189766 (= e!676451 e!676453)))

(declare-fun res!791289 () Bool)

(assert (=> b!1189766 (=> res!791289 e!676453)))

(assert (=> b!1189766 (= res!791289 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541163 () ListLongMap!17485)

(assert (=> b!1189766 (= lt!541163 (getCurrentListMapNoExtraKeys!5172 lt!541159 lt!541160 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3124 (Int (_ BitVec 64)) V!45189)

(assert (=> b!1189766 (= lt!541160 (array!76863 (store (arr!37077 _values!996) i!673 (ValueCellFull!14314 (dynLambda!3124 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37614 _values!996)))))

(declare-fun lt!541161 () ListLongMap!17485)

(assert (=> b!1189766 (= lt!541161 (getCurrentListMapNoExtraKeys!5172 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189767 () Bool)

(declare-fun res!791293 () Bool)

(assert (=> b!1189767 (=> (not res!791293) (not e!676446))))

(assert (=> b!1189767 (= res!791293 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37613 _keys!1208))))))

(declare-fun b!1189768 () Bool)

(declare-fun res!791288 () Bool)

(assert (=> b!1189768 (=> (not res!791288) (not e!676446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189768 (= res!791288 (validMask!0 mask!1564))))

(declare-fun b!1189769 () Bool)

(declare-fun res!791296 () Bool)

(assert (=> b!1189769 (=> (not res!791296) (not e!676446))))

(assert (=> b!1189769 (= res!791296 (= (select (arr!37076 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46898 () Bool)

(declare-fun mapRes!46898 () Bool)

(declare-fun tp!89266 () Bool)

(declare-fun e!676450 () Bool)

(assert (=> mapNonEmpty!46898 (= mapRes!46898 (and tp!89266 e!676450))))

(declare-fun mapValue!46898 () ValueCell!14314)

(declare-fun mapKey!46898 () (_ BitVec 32))

(declare-fun mapRest!46898 () (Array (_ BitVec 32) ValueCell!14314))

(assert (=> mapNonEmpty!46898 (= (arr!37077 _values!996) (store mapRest!46898 mapKey!46898 mapValue!46898))))

(declare-fun b!1189770 () Bool)

(declare-fun e!676449 () Bool)

(assert (=> b!1189770 (= e!676449 (and e!676448 mapRes!46898))))

(declare-fun condMapEmpty!46898 () Bool)

(declare-fun mapDefault!46898 () ValueCell!14314)

