; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97928 () Bool)

(assert start!97928)

(declare-fun b_free!23593 () Bool)

(declare-fun b_next!23593 () Bool)

(assert (=> start!97928 (= b_free!23593 (not b_next!23593))))

(declare-fun tp!83484 () Bool)

(declare-fun b_and!37991 () Bool)

(assert (=> start!97928 (= tp!83484 b_and!37991)))

(declare-datatypes ((V!42625 0))(
  ( (V!42626 (val!14118 Int)) )
))
(declare-fun zeroValue!944 () V!42625)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17778 0))(
  ( (tuple2!17779 (_1!8899 (_ BitVec 64)) (_2!8899 V!42625)) )
))
(declare-datatypes ((List!24617 0))(
  ( (Nil!24614) (Cons!24613 (h!25822 tuple2!17778) (t!35209 List!24617)) )
))
(declare-datatypes ((ListLongMap!15759 0))(
  ( (ListLongMap!15760 (toList!7895 List!24617)) )
))
(declare-fun call!47063 () ListLongMap!15759)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!47059 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!73072 0))(
  ( (array!73073 (arr!35185 (Array (_ BitVec 32) (_ BitVec 64))) (size!35722 (_ BitVec 32))) )
))
(declare-fun lt!498206 () array!73072)

(declare-datatypes ((ValueCell!13352 0))(
  ( (ValueCellFull!13352 (v!16752 V!42625)) (EmptyCell!13352) )
))
(declare-datatypes ((array!73074 0))(
  ( (array!73075 (arr!35186 (Array (_ BitVec 32) ValueCell!13352)) (size!35723 (_ BitVec 32))) )
))
(declare-fun lt!498210 () array!73074)

(declare-fun minValue!944 () V!42625)

(declare-fun getCurrentListMapNoExtraKeys!4356 (array!73072 array!73074 (_ BitVec 32) (_ BitVec 32) V!42625 V!42625 (_ BitVec 32) Int) ListLongMap!15759)

(assert (=> bm!47059 (= call!47063 (getCurrentListMapNoExtraKeys!4356 lt!498206 lt!498210 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121031 () Bool)

(declare-fun res!748996 () Bool)

(declare-fun e!638347 () Bool)

(assert (=> b!1121031 (=> (not res!748996) (not e!638347))))

(declare-fun _keys!1208 () array!73072)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73072 (_ BitVec 32)) Bool)

(assert (=> b!1121031 (= res!748996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121032 () Bool)

(declare-fun res!748998 () Bool)

(assert (=> b!1121032 (=> (not res!748998) (not e!638347))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121032 (= res!748998 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35722 _keys!1208))))))

(declare-fun mapIsEmpty!44002 () Bool)

(declare-fun mapRes!44002 () Bool)

(assert (=> mapIsEmpty!44002 mapRes!44002))

(declare-fun mapNonEmpty!44002 () Bool)

(declare-fun tp!83483 () Bool)

(declare-fun e!638351 () Bool)

(assert (=> mapNonEmpty!44002 (= mapRes!44002 (and tp!83483 e!638351))))

(declare-fun mapKey!44002 () (_ BitVec 32))

(declare-fun mapRest!44002 () (Array (_ BitVec 32) ValueCell!13352))

(declare-fun _values!996 () array!73074)

(declare-fun mapValue!44002 () ValueCell!13352)

(assert (=> mapNonEmpty!44002 (= (arr!35186 _values!996) (store mapRest!44002 mapKey!44002 mapValue!44002))))

(declare-fun b!1121033 () Bool)

(declare-fun e!638354 () Bool)

(declare-fun e!638349 () Bool)

(assert (=> b!1121033 (= e!638354 (not e!638349))))

(declare-fun res!748991 () Bool)

(assert (=> b!1121033 (=> res!748991 e!638349)))

(assert (=> b!1121033 (= res!748991 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121033 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36705 0))(
  ( (Unit!36706) )
))
(declare-fun lt!498209 () Unit!36705)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73072 (_ BitVec 64) (_ BitVec 32)) Unit!36705)

(assert (=> b!1121033 (= lt!498209 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1121034 () Bool)

(declare-fun e!638350 () Bool)

(declare-fun tp_is_empty!28123 () Bool)

(assert (=> b!1121034 (= e!638350 tp_is_empty!28123)))

(declare-fun b!1121035 () Bool)

(declare-fun res!748993 () Bool)

(assert (=> b!1121035 (=> (not res!748993) (not e!638354))))

(declare-datatypes ((List!24618 0))(
  ( (Nil!24615) (Cons!24614 (h!25823 (_ BitVec 64)) (t!35210 List!24618)) )
))
(declare-fun arrayNoDuplicates!0 (array!73072 (_ BitVec 32) List!24618) Bool)

(assert (=> b!1121035 (= res!748993 (arrayNoDuplicates!0 lt!498206 #b00000000000000000000000000000000 Nil!24615))))

(declare-fun b!1121036 () Bool)

(declare-fun res!748989 () Bool)

(assert (=> b!1121036 (=> (not res!748989) (not e!638347))))

(assert (=> b!1121036 (= res!748989 (= (select (arr!35185 _keys!1208) i!673) k!934))))

(declare-fun b!1121037 () Bool)

(declare-fun res!748990 () Bool)

(assert (=> b!1121037 (=> (not res!748990) (not e!638347))))

(assert (=> b!1121037 (= res!748990 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24615))))

(declare-fun b!1121038 () Bool)

(assert (=> b!1121038 (= e!638347 e!638354)))

(declare-fun res!748992 () Bool)

(assert (=> b!1121038 (=> (not res!748992) (not e!638354))))

(assert (=> b!1121038 (= res!748992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498206 mask!1564))))

(assert (=> b!1121038 (= lt!498206 (array!73073 (store (arr!35185 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35722 _keys!1208)))))

(declare-fun res!748995 () Bool)

(assert (=> start!97928 (=> (not res!748995) (not e!638347))))

(assert (=> start!97928 (= res!748995 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35722 _keys!1208))))))

(assert (=> start!97928 e!638347))

(assert (=> start!97928 tp_is_empty!28123))

(declare-fun array_inv!26894 (array!73072) Bool)

(assert (=> start!97928 (array_inv!26894 _keys!1208)))

(assert (=> start!97928 true))

(assert (=> start!97928 tp!83484))

(declare-fun e!638353 () Bool)

(declare-fun array_inv!26895 (array!73074) Bool)

(assert (=> start!97928 (and (array_inv!26895 _values!996) e!638353)))

(declare-fun b!1121039 () Bool)

(declare-fun res!748997 () Bool)

(assert (=> b!1121039 (=> (not res!748997) (not e!638347))))

(assert (=> b!1121039 (= res!748997 (and (= (size!35723 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35722 _keys!1208) (size!35723 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121040 () Bool)

(assert (=> b!1121040 (= e!638353 (and e!638350 mapRes!44002))))

(declare-fun condMapEmpty!44002 () Bool)

(declare-fun mapDefault!44002 () ValueCell!13352)

