; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97972 () Bool)

(assert start!97972)

(declare-fun b_free!23637 () Bool)

(declare-fun b_next!23637 () Bool)

(assert (=> start!97972 (= b_free!23637 (not b_next!23637))))

(declare-fun tp!83616 () Bool)

(declare-fun b_and!38079 () Bool)

(assert (=> start!97972 (= tp!83616 b_and!38079)))

(declare-fun b!1122211 () Bool)

(declare-fun e!638959 () Bool)

(declare-fun e!638961 () Bool)

(assert (=> b!1122211 (= e!638959 e!638961)))

(declare-fun res!749796 () Bool)

(assert (=> b!1122211 (=> (not res!749796) (not e!638961))))

(declare-datatypes ((array!73160 0))(
  ( (array!73161 (arr!35229 (Array (_ BitVec 32) (_ BitVec 64))) (size!35766 (_ BitVec 32))) )
))
(declare-fun lt!498620 () array!73160)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73160 (_ BitVec 32)) Bool)

(assert (=> b!1122211 (= res!749796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498620 mask!1564))))

(declare-fun _keys!1208 () array!73160)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122211 (= lt!498620 (array!73161 (store (arr!35229 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35766 _keys!1208)))))

(declare-fun e!638962 () Bool)

(declare-fun b!1122212 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((V!42683 0))(
  ( (V!42684 (val!14140 Int)) )
))
(declare-datatypes ((tuple2!17820 0))(
  ( (tuple2!17821 (_1!8920 (_ BitVec 64)) (_2!8920 V!42683)) )
))
(declare-datatypes ((List!24657 0))(
  ( (Nil!24654) (Cons!24653 (h!25862 tuple2!17820) (t!35293 List!24657)) )
))
(declare-datatypes ((ListLongMap!15801 0))(
  ( (ListLongMap!15802 (toList!7916 List!24657)) )
))
(declare-fun call!47195 () ListLongMap!15801)

(declare-fun call!47194 () ListLongMap!15801)

(declare-fun -!1079 (ListLongMap!15801 (_ BitVec 64)) ListLongMap!15801)

(assert (=> b!1122212 (= e!638962 (= call!47194 (-!1079 call!47195 k0!934)))))

(declare-fun zeroValue!944 () V!42683)

(declare-fun bm!47191 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42683)

(declare-datatypes ((ValueCell!13374 0))(
  ( (ValueCellFull!13374 (v!16774 V!42683)) (EmptyCell!13374) )
))
(declare-datatypes ((array!73162 0))(
  ( (array!73163 (arr!35230 (Array (_ BitVec 32) ValueCell!13374)) (size!35767 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73162)

(declare-fun getCurrentListMapNoExtraKeys!4377 (array!73160 array!73162 (_ BitVec 32) (_ BitVec 32) V!42683 V!42683 (_ BitVec 32) Int) ListLongMap!15801)

(assert (=> bm!47191 (= call!47195 (getCurrentListMapNoExtraKeys!4377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122213 () Bool)

(assert (=> b!1122213 (= e!638962 (= call!47194 call!47195))))

(declare-fun b!1122214 () Bool)

(declare-fun e!638957 () Bool)

(declare-fun tp_is_empty!28167 () Bool)

(assert (=> b!1122214 (= e!638957 tp_is_empty!28167)))

(declare-fun b!1122215 () Bool)

(declare-fun res!749794 () Bool)

(assert (=> b!1122215 (=> (not res!749794) (not e!638959))))

(assert (=> b!1122215 (= res!749794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122216 () Bool)

(declare-fun res!749797 () Bool)

(assert (=> b!1122216 (=> (not res!749797) (not e!638959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122216 (= res!749797 (validKeyInArray!0 k0!934))))

(declare-fun b!1122217 () Bool)

(declare-fun e!638956 () Bool)

(assert (=> b!1122217 (= e!638956 true)))

(declare-fun lt!498616 () Bool)

(declare-fun contains!6437 (ListLongMap!15801 (_ BitVec 64)) Bool)

(assert (=> b!1122217 (= lt!498616 (contains!6437 (getCurrentListMapNoExtraKeys!4377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun mapIsEmpty!44068 () Bool)

(declare-fun mapRes!44068 () Bool)

(assert (=> mapIsEmpty!44068 mapRes!44068))

(declare-fun b!1122218 () Bool)

(declare-fun e!638955 () Bool)

(assert (=> b!1122218 (= e!638955 e!638956)))

(declare-fun res!749793 () Bool)

(assert (=> b!1122218 (=> res!749793 e!638956)))

(assert (=> b!1122218 (= res!749793 (not (= (select (arr!35229 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1122218 e!638962))

(declare-fun c!109406 () Bool)

(assert (=> b!1122218 (= c!109406 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36741 0))(
  ( (Unit!36742) )
))
(declare-fun lt!498618 () Unit!36741)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!331 (array!73160 array!73162 (_ BitVec 32) (_ BitVec 32) V!42683 V!42683 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36741)

(assert (=> b!1122218 (= lt!498618 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122219 () Bool)

(declare-fun res!749802 () Bool)

(assert (=> b!1122219 (=> (not res!749802) (not e!638959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122219 (= res!749802 (validMask!0 mask!1564))))

(declare-fun b!1122220 () Bool)

(declare-fun res!749795 () Bool)

(assert (=> b!1122220 (=> (not res!749795) (not e!638959))))

(assert (=> b!1122220 (= res!749795 (and (= (size!35767 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35766 _keys!1208) (size!35767 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122221 () Bool)

(declare-fun res!749800 () Bool)

(assert (=> b!1122221 (=> (not res!749800) (not e!638959))))

(assert (=> b!1122221 (= res!749800 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35766 _keys!1208))))))

(declare-fun lt!498617 () array!73162)

(declare-fun bm!47192 () Bool)

(assert (=> bm!47192 (= call!47194 (getCurrentListMapNoExtraKeys!4377 lt!498620 lt!498617 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!749803 () Bool)

(assert (=> start!97972 (=> (not res!749803) (not e!638959))))

(assert (=> start!97972 (= res!749803 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35766 _keys!1208))))))

(assert (=> start!97972 e!638959))

(assert (=> start!97972 tp_is_empty!28167))

(declare-fun array_inv!26924 (array!73160) Bool)

(assert (=> start!97972 (array_inv!26924 _keys!1208)))

(assert (=> start!97972 true))

(assert (=> start!97972 tp!83616))

(declare-fun e!638954 () Bool)

(declare-fun array_inv!26925 (array!73162) Bool)

(assert (=> start!97972 (and (array_inv!26925 _values!996) e!638954)))

(declare-fun b!1122222 () Bool)

(declare-fun e!638958 () Bool)

(assert (=> b!1122222 (= e!638958 e!638955)))

(declare-fun res!749805 () Bool)

(assert (=> b!1122222 (=> res!749805 e!638955)))

(assert (=> b!1122222 (= res!749805 (not (= from!1455 i!673)))))

(declare-fun lt!498619 () ListLongMap!15801)

(assert (=> b!1122222 (= lt!498619 (getCurrentListMapNoExtraKeys!4377 lt!498620 lt!498617 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2474 (Int (_ BitVec 64)) V!42683)

(assert (=> b!1122222 (= lt!498617 (array!73163 (store (arr!35230 _values!996) i!673 (ValueCellFull!13374 (dynLambda!2474 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35767 _values!996)))))

(declare-fun lt!498621 () ListLongMap!15801)

(assert (=> b!1122222 (= lt!498621 (getCurrentListMapNoExtraKeys!4377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122223 () Bool)

(declare-fun res!749801 () Bool)

(assert (=> b!1122223 (=> (not res!749801) (not e!638961))))

(declare-datatypes ((List!24658 0))(
  ( (Nil!24655) (Cons!24654 (h!25863 (_ BitVec 64)) (t!35294 List!24658)) )
))
(declare-fun arrayNoDuplicates!0 (array!73160 (_ BitVec 32) List!24658) Bool)

(assert (=> b!1122223 (= res!749801 (arrayNoDuplicates!0 lt!498620 #b00000000000000000000000000000000 Nil!24655))))

(declare-fun b!1122224 () Bool)

(declare-fun res!749804 () Bool)

(assert (=> b!1122224 (=> (not res!749804) (not e!638959))))

(assert (=> b!1122224 (= res!749804 (= (select (arr!35229 _keys!1208) i!673) k0!934))))

(declare-fun b!1122225 () Bool)

(assert (=> b!1122225 (= e!638954 (and e!638957 mapRes!44068))))

(declare-fun condMapEmpty!44068 () Bool)

(declare-fun mapDefault!44068 () ValueCell!13374)

(assert (=> b!1122225 (= condMapEmpty!44068 (= (arr!35230 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13374)) mapDefault!44068)))))

(declare-fun b!1122226 () Bool)

(declare-fun res!749798 () Bool)

(assert (=> b!1122226 (=> (not res!749798) (not e!638959))))

(assert (=> b!1122226 (= res!749798 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24655))))

(declare-fun mapNonEmpty!44068 () Bool)

(declare-fun tp!83615 () Bool)

(declare-fun e!638960 () Bool)

(assert (=> mapNonEmpty!44068 (= mapRes!44068 (and tp!83615 e!638960))))

(declare-fun mapValue!44068 () ValueCell!13374)

(declare-fun mapRest!44068 () (Array (_ BitVec 32) ValueCell!13374))

(declare-fun mapKey!44068 () (_ BitVec 32))

(assert (=> mapNonEmpty!44068 (= (arr!35230 _values!996) (store mapRest!44068 mapKey!44068 mapValue!44068))))

(declare-fun b!1122227 () Bool)

(assert (=> b!1122227 (= e!638960 tp_is_empty!28167)))

(declare-fun b!1122228 () Bool)

(assert (=> b!1122228 (= e!638961 (not e!638958))))

(declare-fun res!749799 () Bool)

(assert (=> b!1122228 (=> res!749799 e!638958)))

(assert (=> b!1122228 (= res!749799 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122228 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498615 () Unit!36741)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73160 (_ BitVec 64) (_ BitVec 32)) Unit!36741)

(assert (=> b!1122228 (= lt!498615 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97972 res!749803) b!1122219))

(assert (= (and b!1122219 res!749802) b!1122220))

(assert (= (and b!1122220 res!749795) b!1122215))

(assert (= (and b!1122215 res!749794) b!1122226))

(assert (= (and b!1122226 res!749798) b!1122221))

(assert (= (and b!1122221 res!749800) b!1122216))

(assert (= (and b!1122216 res!749797) b!1122224))

(assert (= (and b!1122224 res!749804) b!1122211))

(assert (= (and b!1122211 res!749796) b!1122223))

(assert (= (and b!1122223 res!749801) b!1122228))

(assert (= (and b!1122228 (not res!749799)) b!1122222))

(assert (= (and b!1122222 (not res!749805)) b!1122218))

(assert (= (and b!1122218 c!109406) b!1122212))

(assert (= (and b!1122218 (not c!109406)) b!1122213))

(assert (= (or b!1122212 b!1122213) bm!47192))

(assert (= (or b!1122212 b!1122213) bm!47191))

(assert (= (and b!1122218 (not res!749793)) b!1122217))

(assert (= (and b!1122225 condMapEmpty!44068) mapIsEmpty!44068))

(assert (= (and b!1122225 (not condMapEmpty!44068)) mapNonEmpty!44068))

(get-info :version)

(assert (= (and mapNonEmpty!44068 ((_ is ValueCellFull!13374) mapValue!44068)) b!1122227))

(assert (= (and b!1122225 ((_ is ValueCellFull!13374) mapDefault!44068)) b!1122214))

(assert (= start!97972 b!1122225))

(declare-fun b_lambda!18641 () Bool)

(assert (=> (not b_lambda!18641) (not b!1122222)))

(declare-fun t!35292 () Bool)

(declare-fun tb!8457 () Bool)

(assert (=> (and start!97972 (= defaultEntry!1004 defaultEntry!1004) t!35292) tb!8457))

(declare-fun result!17467 () Bool)

(assert (=> tb!8457 (= result!17467 tp_is_empty!28167)))

(assert (=> b!1122222 t!35292))

(declare-fun b_and!38081 () Bool)

(assert (= b_and!38079 (and (=> t!35292 result!17467) b_and!38081)))

(declare-fun m!1037011 () Bool)

(assert (=> b!1122226 m!1037011))

(declare-fun m!1037013 () Bool)

(assert (=> b!1122216 m!1037013))

(declare-fun m!1037015 () Bool)

(assert (=> b!1122222 m!1037015))

(declare-fun m!1037017 () Bool)

(assert (=> b!1122222 m!1037017))

(declare-fun m!1037019 () Bool)

(assert (=> b!1122222 m!1037019))

(declare-fun m!1037021 () Bool)

(assert (=> b!1122222 m!1037021))

(declare-fun m!1037023 () Bool)

(assert (=> b!1122217 m!1037023))

(assert (=> b!1122217 m!1037023))

(declare-fun m!1037025 () Bool)

(assert (=> b!1122217 m!1037025))

(declare-fun m!1037027 () Bool)

(assert (=> b!1122219 m!1037027))

(declare-fun m!1037029 () Bool)

(assert (=> b!1122223 m!1037029))

(declare-fun m!1037031 () Bool)

(assert (=> mapNonEmpty!44068 m!1037031))

(declare-fun m!1037033 () Bool)

(assert (=> bm!47192 m!1037033))

(declare-fun m!1037035 () Bool)

(assert (=> b!1122212 m!1037035))

(declare-fun m!1037037 () Bool)

(assert (=> b!1122224 m!1037037))

(declare-fun m!1037039 () Bool)

(assert (=> b!1122211 m!1037039))

(declare-fun m!1037041 () Bool)

(assert (=> b!1122211 m!1037041))

(assert (=> bm!47191 m!1037023))

(declare-fun m!1037043 () Bool)

(assert (=> b!1122228 m!1037043))

(declare-fun m!1037045 () Bool)

(assert (=> b!1122228 m!1037045))

(declare-fun m!1037047 () Bool)

(assert (=> start!97972 m!1037047))

(declare-fun m!1037049 () Bool)

(assert (=> start!97972 m!1037049))

(declare-fun m!1037051 () Bool)

(assert (=> b!1122215 m!1037051))

(declare-fun m!1037053 () Bool)

(assert (=> b!1122218 m!1037053))

(declare-fun m!1037055 () Bool)

(assert (=> b!1122218 m!1037055))

(check-sat (not b!1122215) (not b_lambda!18641) (not b!1122212) (not b!1122222) (not bm!47191) (not b!1122218) (not b!1122211) (not b!1122216) (not b_next!23637) (not b!1122223) (not mapNonEmpty!44068) (not b!1122226) (not b!1122219) (not b!1122228) b_and!38081 (not bm!47192) (not b!1122217) (not start!97972) tp_is_empty!28167)
(check-sat b_and!38081 (not b_next!23637))
