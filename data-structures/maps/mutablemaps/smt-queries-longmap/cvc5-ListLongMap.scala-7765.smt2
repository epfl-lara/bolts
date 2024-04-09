; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97370 () Bool)

(assert start!97370)

(declare-fun b_free!23305 () Bool)

(declare-fun b_next!23305 () Bool)

(assert (=> start!97370 (= b_free!23305 (not b_next!23305))))

(declare-fun tp!82214 () Bool)

(declare-fun b_and!37463 () Bool)

(assert (=> start!97370 (= tp!82214 b_and!37463)))

(declare-fun b!1108969 () Bool)

(declare-fun e!632623 () Bool)

(declare-fun tp_is_empty!27565 () Bool)

(assert (=> b!1108969 (= e!632623 tp_is_empty!27565)))

(declare-fun b!1108970 () Bool)

(declare-fun res!740160 () Bool)

(declare-fun e!632625 () Bool)

(assert (=> b!1108970 (=> (not res!740160) (not e!632625))))

(declare-datatypes ((array!71998 0))(
  ( (array!71999 (arr!34648 (Array (_ BitVec 32) (_ BitVec 64))) (size!35185 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71998)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1108970 (= res!740160 (= (select (arr!34648 _keys!1208) i!673) k!934))))

(declare-fun b!1108971 () Bool)

(declare-fun e!632626 () Bool)

(assert (=> b!1108971 (= e!632626 true)))

(declare-fun e!632621 () Bool)

(assert (=> b!1108971 e!632621))

(declare-fun c!109097 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1108971 (= c!109097 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!41881 0))(
  ( (V!41882 (val!13839 Int)) )
))
(declare-fun zeroValue!944 () V!41881)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41881)

(declare-datatypes ((ValueCell!13073 0))(
  ( (ValueCellFull!13073 (v!16473 V!41881)) (EmptyCell!13073) )
))
(declare-datatypes ((array!72000 0))(
  ( (array!72001 (arr!34649 (Array (_ BitVec 32) ValueCell!13073)) (size!35186 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72000)

(declare-datatypes ((Unit!36321 0))(
  ( (Unit!36322) )
))
(declare-fun lt!495888 () Unit!36321)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!268 (array!71998 array!72000 (_ BitVec 32) (_ BitVec 32) V!41881 V!41881 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36321)

(assert (=> b!1108971 (= lt!495888 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!268 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43165 () Bool)

(declare-fun mapRes!43165 () Bool)

(assert (=> mapIsEmpty!43165 mapRes!43165))

(declare-fun mapNonEmpty!43165 () Bool)

(declare-fun tp!82215 () Bool)

(assert (=> mapNonEmpty!43165 (= mapRes!43165 (and tp!82215 e!632623))))

(declare-fun mapValue!43165 () ValueCell!13073)

(declare-fun mapKey!43165 () (_ BitVec 32))

(declare-fun mapRest!43165 () (Array (_ BitVec 32) ValueCell!13073))

(assert (=> mapNonEmpty!43165 (= (arr!34649 _values!996) (store mapRest!43165 mapKey!43165 mapValue!43165))))

(declare-fun b!1108972 () Bool)

(declare-fun e!632622 () Bool)

(assert (=> b!1108972 (= e!632625 e!632622)))

(declare-fun res!740159 () Bool)

(assert (=> b!1108972 (=> (not res!740159) (not e!632622))))

(declare-fun lt!495886 () array!71998)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71998 (_ BitVec 32)) Bool)

(assert (=> b!1108972 (= res!740159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495886 mask!1564))))

(assert (=> b!1108972 (= lt!495886 (array!71999 (store (arr!34648 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35185 _keys!1208)))))

(declare-fun b!1108973 () Bool)

(declare-fun res!740165 () Bool)

(assert (=> b!1108973 (=> (not res!740165) (not e!632625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108973 (= res!740165 (validKeyInArray!0 k!934))))

(declare-fun b!1108974 () Bool)

(declare-datatypes ((tuple2!17560 0))(
  ( (tuple2!17561 (_1!8790 (_ BitVec 64)) (_2!8790 V!41881)) )
))
(declare-datatypes ((List!24297 0))(
  ( (Nil!24294) (Cons!24293 (h!25502 tuple2!17560) (t!34655 List!24297)) )
))
(declare-datatypes ((ListLongMap!15541 0))(
  ( (ListLongMap!15542 (toList!7786 List!24297)) )
))
(declare-fun call!46612 () ListLongMap!15541)

(declare-fun call!46613 () ListLongMap!15541)

(assert (=> b!1108974 (= e!632621 (= call!46612 call!46613))))

(declare-fun res!740158 () Bool)

(assert (=> start!97370 (=> (not res!740158) (not e!632625))))

(assert (=> start!97370 (= res!740158 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35185 _keys!1208))))))

(assert (=> start!97370 e!632625))

(assert (=> start!97370 tp_is_empty!27565))

(declare-fun array_inv!26528 (array!71998) Bool)

(assert (=> start!97370 (array_inv!26528 _keys!1208)))

(assert (=> start!97370 true))

(assert (=> start!97370 tp!82214))

(declare-fun e!632627 () Bool)

(declare-fun array_inv!26529 (array!72000) Bool)

(assert (=> start!97370 (and (array_inv!26529 _values!996) e!632627)))

(declare-fun bm!46609 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4251 (array!71998 array!72000 (_ BitVec 32) (_ BitVec 32) V!41881 V!41881 (_ BitVec 32) Int) ListLongMap!15541)

(declare-fun dynLambda!2375 (Int (_ BitVec 64)) V!41881)

(assert (=> bm!46609 (= call!46612 (getCurrentListMapNoExtraKeys!4251 lt!495886 (array!72001 (store (arr!34649 _values!996) i!673 (ValueCellFull!13073 (dynLambda!2375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35186 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108975 () Bool)

(declare-fun res!740157 () Bool)

(assert (=> b!1108975 (=> (not res!740157) (not e!632625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108975 (= res!740157 (validMask!0 mask!1564))))

(declare-fun bm!46610 () Bool)

(assert (=> bm!46610 (= call!46613 (getCurrentListMapNoExtraKeys!4251 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108976 () Bool)

(declare-fun res!740164 () Bool)

(assert (=> b!1108976 (=> (not res!740164) (not e!632625))))

(declare-datatypes ((List!24298 0))(
  ( (Nil!24295) (Cons!24294 (h!25503 (_ BitVec 64)) (t!34656 List!24298)) )
))
(declare-fun arrayNoDuplicates!0 (array!71998 (_ BitVec 32) List!24298) Bool)

(assert (=> b!1108976 (= res!740164 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24295))))

(declare-fun b!1108977 () Bool)

(declare-fun e!632620 () Bool)

(assert (=> b!1108977 (= e!632627 (and e!632620 mapRes!43165))))

(declare-fun condMapEmpty!43165 () Bool)

(declare-fun mapDefault!43165 () ValueCell!13073)

