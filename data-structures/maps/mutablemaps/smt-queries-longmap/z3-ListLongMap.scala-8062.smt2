; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99250 () Bool)

(assert start!99250)

(declare-fun b_free!24819 () Bool)

(declare-fun b_next!24819 () Bool)

(assert (=> start!99250 (= b_free!24819 (not b_next!24819))))

(declare-fun tp!87169 () Bool)

(declare-fun b_and!40501 () Bool)

(assert (=> start!99250 (= tp!87169 b_and!40501)))

(declare-fun res!775174 () Bool)

(declare-fun e!663998 () Bool)

(assert (=> start!99250 (=> (not res!775174) (not e!663998))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75472 0))(
  ( (array!75473 (arr!36383 (Array (_ BitVec 32) (_ BitVec 64))) (size!36920 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75472)

(assert (=> start!99250 (= res!775174 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36920 _keys!1208))))))

(assert (=> start!99250 e!663998))

(declare-fun tp_is_empty!29349 () Bool)

(assert (=> start!99250 tp_is_empty!29349))

(declare-fun array_inv!27690 (array!75472) Bool)

(assert (=> start!99250 (array_inv!27690 _keys!1208)))

(assert (=> start!99250 true))

(assert (=> start!99250 tp!87169))

(declare-datatypes ((V!44259 0))(
  ( (V!44260 (val!14731 Int)) )
))
(declare-datatypes ((ValueCell!13965 0))(
  ( (ValueCellFull!13965 (v!17369 V!44259)) (EmptyCell!13965) )
))
(declare-datatypes ((array!75474 0))(
  ( (array!75475 (arr!36384 (Array (_ BitVec 32) ValueCell!13965)) (size!36921 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75474)

(declare-fun e!664002 () Bool)

(declare-fun array_inv!27691 (array!75474) Bool)

(assert (=> start!99250 (and (array_inv!27691 _values!996) e!664002)))

(declare-fun b!1168241 () Bool)

(declare-fun e!663994 () Bool)

(declare-fun e!664001 () Bool)

(assert (=> b!1168241 (= e!663994 (not e!664001))))

(declare-fun res!775170 () Bool)

(assert (=> b!1168241 (=> res!775170 e!664001)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168241 (= res!775170 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168241 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38440 0))(
  ( (Unit!38441) )
))
(declare-fun lt!525910 () Unit!38440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75472 (_ BitVec 64) (_ BitVec 32)) Unit!38440)

(assert (=> b!1168241 (= lt!525910 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1168242 () Bool)

(declare-fun res!775166 () Bool)

(assert (=> b!1168242 (=> (not res!775166) (not e!663998))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168242 (= res!775166 (validMask!0 mask!1564))))

(declare-fun b!1168243 () Bool)

(declare-fun res!775178 () Bool)

(assert (=> b!1168243 (=> (not res!775178) (not e!663998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168243 (= res!775178 (validKeyInArray!0 k0!934))))

(declare-fun b!1168244 () Bool)

(declare-fun res!775177 () Bool)

(assert (=> b!1168244 (=> (not res!775177) (not e!663998))))

(assert (=> b!1168244 (= res!775177 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36920 _keys!1208))))))

(declare-fun b!1168245 () Bool)

(assert (=> b!1168245 (= e!663998 e!663994)))

(declare-fun res!775176 () Bool)

(assert (=> b!1168245 (=> (not res!775176) (not e!663994))))

(declare-fun lt!525915 () array!75472)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75472 (_ BitVec 32)) Bool)

(assert (=> b!1168245 (= res!775176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525915 mask!1564))))

(assert (=> b!1168245 (= lt!525915 (array!75473 (store (arr!36383 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36920 _keys!1208)))))

(declare-fun b!1168246 () Bool)

(declare-fun e!663999 () Bool)

(declare-fun e!664000 () Bool)

(assert (=> b!1168246 (= e!663999 e!664000)))

(declare-fun res!775175 () Bool)

(assert (=> b!1168246 (=> res!775175 e!664000)))

(assert (=> b!1168246 (= res!775175 (not (validKeyInArray!0 (select (arr!36383 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!44259)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44259)

(declare-fun lt!525911 () array!75474)

(declare-datatypes ((tuple2!18880 0))(
  ( (tuple2!18881 (_1!9450 (_ BitVec 64)) (_2!9450 V!44259)) )
))
(declare-datatypes ((List!25656 0))(
  ( (Nil!25653) (Cons!25652 (h!26861 tuple2!18880) (t!37474 List!25656)) )
))
(declare-datatypes ((ListLongMap!16861 0))(
  ( (ListLongMap!16862 (toList!8446 List!25656)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4879 (array!75472 array!75474 (_ BitVec 32) (_ BitVec 32) V!44259 V!44259 (_ BitVec 32) Int) ListLongMap!16861)

(declare-fun -!1475 (ListLongMap!16861 (_ BitVec 64)) ListLongMap!16861)

(assert (=> b!1168246 (= (getCurrentListMapNoExtraKeys!4879 lt!525915 lt!525911 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1475 (getCurrentListMapNoExtraKeys!4879 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!525912 () Unit!38440)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!699 (array!75472 array!75474 (_ BitVec 32) (_ BitVec 32) V!44259 V!44259 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38440)

(assert (=> b!1168246 (= lt!525912 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!699 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168247 () Bool)

(declare-fun res!775173 () Bool)

(assert (=> b!1168247 (=> (not res!775173) (not e!663998))))

(assert (=> b!1168247 (= res!775173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168248 () Bool)

(declare-fun res!775171 () Bool)

(assert (=> b!1168248 (=> (not res!775171) (not e!663994))))

(declare-datatypes ((List!25657 0))(
  ( (Nil!25654) (Cons!25653 (h!26862 (_ BitVec 64)) (t!37475 List!25657)) )
))
(declare-fun arrayNoDuplicates!0 (array!75472 (_ BitVec 32) List!25657) Bool)

(assert (=> b!1168248 (= res!775171 (arrayNoDuplicates!0 lt!525915 #b00000000000000000000000000000000 Nil!25654))))

(declare-fun mapNonEmpty!45848 () Bool)

(declare-fun mapRes!45848 () Bool)

(declare-fun tp!87168 () Bool)

(declare-fun e!663995 () Bool)

(assert (=> mapNonEmpty!45848 (= mapRes!45848 (and tp!87168 e!663995))))

(declare-fun mapKey!45848 () (_ BitVec 32))

(declare-fun mapValue!45848 () ValueCell!13965)

(declare-fun mapRest!45848 () (Array (_ BitVec 32) ValueCell!13965))

(assert (=> mapNonEmpty!45848 (= (arr!36384 _values!996) (store mapRest!45848 mapKey!45848 mapValue!45848))))

(declare-fun b!1168249 () Bool)

(assert (=> b!1168249 (= e!664001 e!663999)))

(declare-fun res!775168 () Bool)

(assert (=> b!1168249 (=> res!775168 e!663999)))

(assert (=> b!1168249 (= res!775168 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525914 () ListLongMap!16861)

(assert (=> b!1168249 (= lt!525914 (getCurrentListMapNoExtraKeys!4879 lt!525915 lt!525911 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2871 (Int (_ BitVec 64)) V!44259)

(assert (=> b!1168249 (= lt!525911 (array!75475 (store (arr!36384 _values!996) i!673 (ValueCellFull!13965 (dynLambda!2871 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36921 _values!996)))))

(declare-fun lt!525913 () ListLongMap!16861)

(assert (=> b!1168249 (= lt!525913 (getCurrentListMapNoExtraKeys!4879 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168250 () Bool)

(assert (=> b!1168250 (= e!664000 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36920 _keys!1208))))))

(declare-fun b!1168251 () Bool)

(declare-fun e!663996 () Bool)

(assert (=> b!1168251 (= e!663996 tp_is_empty!29349)))

(declare-fun b!1168252 () Bool)

(declare-fun res!775169 () Bool)

(assert (=> b!1168252 (=> (not res!775169) (not e!663998))))

(assert (=> b!1168252 (= res!775169 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25654))))

(declare-fun b!1168253 () Bool)

(declare-fun res!775167 () Bool)

(assert (=> b!1168253 (=> (not res!775167) (not e!663998))))

(assert (=> b!1168253 (= res!775167 (= (select (arr!36383 _keys!1208) i!673) k0!934))))

(declare-fun b!1168254 () Bool)

(assert (=> b!1168254 (= e!664002 (and e!663996 mapRes!45848))))

(declare-fun condMapEmpty!45848 () Bool)

(declare-fun mapDefault!45848 () ValueCell!13965)

(assert (=> b!1168254 (= condMapEmpty!45848 (= (arr!36384 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13965)) mapDefault!45848)))))

(declare-fun b!1168255 () Bool)

(assert (=> b!1168255 (= e!663995 tp_is_empty!29349)))

(declare-fun mapIsEmpty!45848 () Bool)

(assert (=> mapIsEmpty!45848 mapRes!45848))

(declare-fun b!1168256 () Bool)

(declare-fun res!775172 () Bool)

(assert (=> b!1168256 (=> (not res!775172) (not e!663998))))

(assert (=> b!1168256 (= res!775172 (and (= (size!36921 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36920 _keys!1208) (size!36921 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99250 res!775174) b!1168242))

(assert (= (and b!1168242 res!775166) b!1168256))

(assert (= (and b!1168256 res!775172) b!1168247))

(assert (= (and b!1168247 res!775173) b!1168252))

(assert (= (and b!1168252 res!775169) b!1168244))

(assert (= (and b!1168244 res!775177) b!1168243))

(assert (= (and b!1168243 res!775178) b!1168253))

(assert (= (and b!1168253 res!775167) b!1168245))

(assert (= (and b!1168245 res!775176) b!1168248))

(assert (= (and b!1168248 res!775171) b!1168241))

(assert (= (and b!1168241 (not res!775170)) b!1168249))

(assert (= (and b!1168249 (not res!775168)) b!1168246))

(assert (= (and b!1168246 (not res!775175)) b!1168250))

(assert (= (and b!1168254 condMapEmpty!45848) mapIsEmpty!45848))

(assert (= (and b!1168254 (not condMapEmpty!45848)) mapNonEmpty!45848))

(get-info :version)

(assert (= (and mapNonEmpty!45848 ((_ is ValueCellFull!13965) mapValue!45848)) b!1168255))

(assert (= (and b!1168254 ((_ is ValueCellFull!13965) mapDefault!45848)) b!1168251))

(assert (= start!99250 b!1168254))

(declare-fun b_lambda!19943 () Bool)

(assert (=> (not b_lambda!19943) (not b!1168249)))

(declare-fun t!37473 () Bool)

(declare-fun tb!9639 () Bool)

(assert (=> (and start!99250 (= defaultEntry!1004 defaultEntry!1004) t!37473) tb!9639))

(declare-fun result!19835 () Bool)

(assert (=> tb!9639 (= result!19835 tp_is_empty!29349)))

(assert (=> b!1168249 t!37473))

(declare-fun b_and!40503 () Bool)

(assert (= b_and!40501 (and (=> t!37473 result!19835) b_and!40503)))

(declare-fun m!1076135 () Bool)

(assert (=> b!1168253 m!1076135))

(declare-fun m!1076137 () Bool)

(assert (=> start!99250 m!1076137))

(declare-fun m!1076139 () Bool)

(assert (=> start!99250 m!1076139))

(declare-fun m!1076141 () Bool)

(assert (=> b!1168242 m!1076141))

(declare-fun m!1076143 () Bool)

(assert (=> b!1168243 m!1076143))

(declare-fun m!1076145 () Bool)

(assert (=> b!1168252 m!1076145))

(declare-fun m!1076147 () Bool)

(assert (=> b!1168248 m!1076147))

(declare-fun m!1076149 () Bool)

(assert (=> b!1168247 m!1076149))

(declare-fun m!1076151 () Bool)

(assert (=> b!1168245 m!1076151))

(declare-fun m!1076153 () Bool)

(assert (=> b!1168245 m!1076153))

(declare-fun m!1076155 () Bool)

(assert (=> b!1168249 m!1076155))

(declare-fun m!1076157 () Bool)

(assert (=> b!1168249 m!1076157))

(declare-fun m!1076159 () Bool)

(assert (=> b!1168249 m!1076159))

(declare-fun m!1076161 () Bool)

(assert (=> b!1168249 m!1076161))

(declare-fun m!1076163 () Bool)

(assert (=> b!1168246 m!1076163))

(declare-fun m!1076165 () Bool)

(assert (=> b!1168246 m!1076165))

(declare-fun m!1076167 () Bool)

(assert (=> b!1168246 m!1076167))

(assert (=> b!1168246 m!1076163))

(declare-fun m!1076169 () Bool)

(assert (=> b!1168246 m!1076169))

(declare-fun m!1076171 () Bool)

(assert (=> b!1168246 m!1076171))

(declare-fun m!1076173 () Bool)

(assert (=> b!1168246 m!1076173))

(assert (=> b!1168246 m!1076171))

(declare-fun m!1076175 () Bool)

(assert (=> mapNonEmpty!45848 m!1076175))

(declare-fun m!1076177 () Bool)

(assert (=> b!1168241 m!1076177))

(declare-fun m!1076179 () Bool)

(assert (=> b!1168241 m!1076179))

(check-sat (not start!99250) (not mapNonEmpty!45848) (not b!1168241) (not b_next!24819) (not b!1168243) (not b_lambda!19943) (not b!1168246) (not b!1168247) (not b!1168249) (not b!1168252) (not b!1168242) (not b!1168245) tp_is_empty!29349 (not b!1168248) b_and!40503)
(check-sat b_and!40503 (not b_next!24819))
