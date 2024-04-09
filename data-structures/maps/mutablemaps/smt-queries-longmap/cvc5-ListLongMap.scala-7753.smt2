; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97298 () Bool)

(assert start!97298)

(declare-fun b_free!23233 () Bool)

(declare-fun b_next!23233 () Bool)

(assert (=> start!97298 (= b_free!23233 (not b_next!23233))))

(declare-fun tp!81999 () Bool)

(declare-fun b_and!37315 () Bool)

(assert (=> start!97298 (= tp!81999 b_and!37315)))

(declare-fun mapIsEmpty!43057 () Bool)

(declare-fun mapRes!43057 () Bool)

(assert (=> mapIsEmpty!43057 mapRes!43057))

(declare-fun b!1107145 () Bool)

(declare-fun res!738978 () Bool)

(declare-fun e!631748 () Bool)

(assert (=> b!1107145 (=> (not res!738978) (not e!631748))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71856 0))(
  ( (array!71857 (arr!34577 (Array (_ BitVec 32) (_ BitVec 64))) (size!35114 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71856)

(assert (=> b!1107145 (= res!738978 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35114 _keys!1208))))))

(declare-fun b!1107146 () Bool)

(declare-fun res!738977 () Bool)

(declare-fun e!631751 () Bool)

(assert (=> b!1107146 (=> (not res!738977) (not e!631751))))

(declare-fun lt!495564 () array!71856)

(declare-datatypes ((List!24236 0))(
  ( (Nil!24233) (Cons!24232 (h!25441 (_ BitVec 64)) (t!34522 List!24236)) )
))
(declare-fun arrayNoDuplicates!0 (array!71856 (_ BitVec 32) List!24236) Bool)

(assert (=> b!1107146 (= res!738977 (arrayNoDuplicates!0 lt!495564 #b00000000000000000000000000000000 Nil!24233))))

(declare-fun b!1107147 () Bool)

(declare-fun res!738973 () Bool)

(assert (=> b!1107147 (=> (not res!738973) (not e!631748))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1107147 (= res!738973 (= (select (arr!34577 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43057 () Bool)

(declare-fun tp!81998 () Bool)

(declare-fun e!631749 () Bool)

(assert (=> mapNonEmpty!43057 (= mapRes!43057 (and tp!81998 e!631749))))

(declare-datatypes ((V!41785 0))(
  ( (V!41786 (val!13803 Int)) )
))
(declare-datatypes ((ValueCell!13037 0))(
  ( (ValueCellFull!13037 (v!16437 V!41785)) (EmptyCell!13037) )
))
(declare-fun mapValue!43057 () ValueCell!13037)

(declare-datatypes ((array!71858 0))(
  ( (array!71859 (arr!34578 (Array (_ BitVec 32) ValueCell!13037)) (size!35115 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71858)

(declare-fun mapRest!43057 () (Array (_ BitVec 32) ValueCell!13037))

(declare-fun mapKey!43057 () (_ BitVec 32))

(assert (=> mapNonEmpty!43057 (= (arr!34578 _values!996) (store mapRest!43057 mapKey!43057 mapValue!43057))))

(declare-fun b!1107148 () Bool)

(declare-fun e!631744 () Bool)

(declare-fun tp_is_empty!27493 () Bool)

(assert (=> b!1107148 (= e!631744 tp_is_empty!27493)))

(declare-fun b!1107150 () Bool)

(declare-fun res!738976 () Bool)

(assert (=> b!1107150 (=> (not res!738976) (not e!631748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107150 (= res!738976 (validKeyInArray!0 k!934))))

(declare-fun b!1107151 () Bool)

(assert (=> b!1107151 (= e!631748 e!631751)))

(declare-fun res!738974 () Bool)

(assert (=> b!1107151 (=> (not res!738974) (not e!631751))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71856 (_ BitVec 32)) Bool)

(assert (=> b!1107151 (= res!738974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495564 mask!1564))))

(assert (=> b!1107151 (= lt!495564 (array!71857 (store (arr!34577 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35114 _keys!1208)))))

(declare-fun b!1107152 () Bool)

(declare-fun res!738969 () Bool)

(assert (=> b!1107152 (=> (not res!738969) (not e!631748))))

(assert (=> b!1107152 (= res!738969 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24233))))

(declare-fun b!1107153 () Bool)

(declare-fun res!738968 () Bool)

(assert (=> b!1107153 (=> (not res!738968) (not e!631748))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1107153 (= res!738968 (and (= (size!35115 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35114 _keys!1208) (size!35115 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107154 () Bool)

(declare-fun e!631746 () Bool)

(assert (=> b!1107154 (= e!631751 (not e!631746))))

(declare-fun res!738971 () Bool)

(assert (=> b!1107154 (=> res!738971 e!631746)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1107154 (= res!738971 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35114 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107154 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36273 0))(
  ( (Unit!36274) )
))
(declare-fun lt!495562 () Unit!36273)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71856 (_ BitVec 64) (_ BitVec 32)) Unit!36273)

(assert (=> b!1107154 (= lt!495562 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun zeroValue!944 () V!41785)

(declare-fun bm!46393 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17498 0))(
  ( (tuple2!17499 (_1!8759 (_ BitVec 64)) (_2!8759 V!41785)) )
))
(declare-datatypes ((List!24237 0))(
  ( (Nil!24234) (Cons!24233 (h!25442 tuple2!17498) (t!34523 List!24237)) )
))
(declare-datatypes ((ListLongMap!15479 0))(
  ( (ListLongMap!15480 (toList!7755 List!24237)) )
))
(declare-fun call!46397 () ListLongMap!15479)

(declare-fun minValue!944 () V!41785)

(declare-fun getCurrentListMapNoExtraKeys!4224 (array!71856 array!71858 (_ BitVec 32) (_ BitVec 32) V!41785 V!41785 (_ BitVec 32) Int) ListLongMap!15479)

(assert (=> bm!46393 (= call!46397 (getCurrentListMapNoExtraKeys!4224 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107155 () Bool)

(declare-fun res!738975 () Bool)

(assert (=> b!1107155 (=> (not res!738975) (not e!631748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107155 (= res!738975 (validMask!0 mask!1564))))

(declare-fun res!738972 () Bool)

(assert (=> start!97298 (=> (not res!738972) (not e!631748))))

(assert (=> start!97298 (= res!738972 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35114 _keys!1208))))))

(assert (=> start!97298 e!631748))

(assert (=> start!97298 tp_is_empty!27493))

(declare-fun array_inv!26474 (array!71856) Bool)

(assert (=> start!97298 (array_inv!26474 _keys!1208)))

(assert (=> start!97298 true))

(assert (=> start!97298 tp!81999))

(declare-fun e!631745 () Bool)

(declare-fun array_inv!26475 (array!71858) Bool)

(assert (=> start!97298 (and (array_inv!26475 _values!996) e!631745)))

(declare-fun b!1107149 () Bool)

(assert (=> b!1107149 (= e!631749 tp_is_empty!27493)))

(declare-fun b!1107156 () Bool)

(assert (=> b!1107156 (= e!631746 true)))

(declare-fun e!631750 () Bool)

(assert (=> b!1107156 e!631750))

(declare-fun c!108977 () Bool)

(assert (=> b!1107156 (= c!108977 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495563 () Unit!36273)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!247 (array!71856 array!71858 (_ BitVec 32) (_ BitVec 32) V!41785 V!41785 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36273)

(assert (=> b!1107156 (= lt!495563 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!247 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107157 () Bool)

(declare-fun call!46396 () ListLongMap!15479)

(assert (=> b!1107157 (= e!631750 (= call!46396 call!46397))))

(declare-fun bm!46394 () Bool)

(declare-fun dynLambda!2354 (Int (_ BitVec 64)) V!41785)

(assert (=> bm!46394 (= call!46396 (getCurrentListMapNoExtraKeys!4224 lt!495564 (array!71859 (store (arr!34578 _values!996) i!673 (ValueCellFull!13037 (dynLambda!2354 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35115 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107158 () Bool)

(assert (=> b!1107158 (= e!631745 (and e!631744 mapRes!43057))))

(declare-fun condMapEmpty!43057 () Bool)

(declare-fun mapDefault!43057 () ValueCell!13037)

