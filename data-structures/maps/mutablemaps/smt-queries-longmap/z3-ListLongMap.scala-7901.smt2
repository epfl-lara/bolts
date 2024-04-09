; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98188 () Bool)

(assert start!98188)

(declare-fun b_free!23853 () Bool)

(declare-fun b_next!23853 () Bool)

(assert (=> start!98188 (= b_free!23853 (not b_next!23853))))

(declare-fun tp!84264 () Bool)

(declare-fun b_and!38511 () Bool)

(assert (=> start!98188 (= tp!84264 b_and!38511)))

(declare-fun b!1128457 () Bool)

(declare-fun e!642293 () Bool)

(declare-fun e!642291 () Bool)

(assert (=> b!1128457 (= e!642293 e!642291)))

(declare-fun res!754213 () Bool)

(assert (=> b!1128457 (=> res!754213 e!642291)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128457 (= res!754213 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42971 0))(
  ( (V!42972 (val!14248 Int)) )
))
(declare-datatypes ((tuple2!18022 0))(
  ( (tuple2!18023 (_1!9021 (_ BitVec 64)) (_2!9021 V!42971)) )
))
(declare-datatypes ((List!24843 0))(
  ( (Nil!24840) (Cons!24839 (h!26048 tuple2!18022) (t!35695 List!24843)) )
))
(declare-datatypes ((ListLongMap!16003 0))(
  ( (ListLongMap!16004 (toList!8017 List!24843)) )
))
(declare-fun lt!500959 () ListLongMap!16003)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42971)

(declare-datatypes ((array!73586 0))(
  ( (array!73587 (arr!35442 (Array (_ BitVec 32) (_ BitVec 64))) (size!35979 (_ BitVec 32))) )
))
(declare-fun lt!500958 () array!73586)

(declare-datatypes ((ValueCell!13482 0))(
  ( (ValueCellFull!13482 (v!16882 V!42971)) (EmptyCell!13482) )
))
(declare-datatypes ((array!73588 0))(
  ( (array!73589 (arr!35443 (Array (_ BitVec 32) ValueCell!13482)) (size!35980 (_ BitVec 32))) )
))
(declare-fun lt!500960 () array!73588)

(declare-fun zeroValue!944 () V!42971)

(declare-fun getCurrentListMapNoExtraKeys!4472 (array!73586 array!73588 (_ BitVec 32) (_ BitVec 32) V!42971 V!42971 (_ BitVec 32) Int) ListLongMap!16003)

(assert (=> b!1128457 (= lt!500959 (getCurrentListMapNoExtraKeys!4472 lt!500958 lt!500960 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73588)

(declare-fun dynLambda!2550 (Int (_ BitVec 64)) V!42971)

(assert (=> b!1128457 (= lt!500960 (array!73589 (store (arr!35443 _values!996) i!673 (ValueCellFull!13482 (dynLambda!2550 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35980 _values!996)))))

(declare-fun _keys!1208 () array!73586)

(declare-fun lt!500961 () ListLongMap!16003)

(assert (=> b!1128457 (= lt!500961 (getCurrentListMapNoExtraKeys!4472 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1128458 () Bool)

(declare-fun e!642287 () Bool)

(declare-fun call!47843 () ListLongMap!16003)

(declare-fun call!47842 () ListLongMap!16003)

(assert (=> b!1128458 (= e!642287 (= call!47843 call!47842))))

(declare-fun b!1128459 () Bool)

(declare-fun e!642289 () Bool)

(assert (=> b!1128459 (= e!642289 true)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!500955 () Bool)

(declare-fun contains!6513 (ListLongMap!16003 (_ BitVec 64)) Bool)

(assert (=> b!1128459 (= lt!500955 (contains!6513 (getCurrentListMapNoExtraKeys!4472 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun mapNonEmpty!44392 () Bool)

(declare-fun mapRes!44392 () Bool)

(declare-fun tp!84263 () Bool)

(declare-fun e!642285 () Bool)

(assert (=> mapNonEmpty!44392 (= mapRes!44392 (and tp!84263 e!642285))))

(declare-fun mapValue!44392 () ValueCell!13482)

(declare-fun mapRest!44392 () (Array (_ BitVec 32) ValueCell!13482))

(declare-fun mapKey!44392 () (_ BitVec 32))

(assert (=> mapNonEmpty!44392 (= (arr!35443 _values!996) (store mapRest!44392 mapKey!44392 mapValue!44392))))

(declare-fun b!1128460 () Bool)

(declare-fun e!642284 () Bool)

(declare-fun e!642290 () Bool)

(assert (=> b!1128460 (= e!642284 e!642290)))

(declare-fun res!754210 () Bool)

(assert (=> b!1128460 (=> (not res!754210) (not e!642290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73586 (_ BitVec 32)) Bool)

(assert (=> b!1128460 (= res!754210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500958 mask!1564))))

(assert (=> b!1128460 (= lt!500958 (array!73587 (store (arr!35442 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35979 _keys!1208)))))

(declare-fun mapIsEmpty!44392 () Bool)

(assert (=> mapIsEmpty!44392 mapRes!44392))

(declare-fun bm!47839 () Bool)

(assert (=> bm!47839 (= call!47842 (getCurrentListMapNoExtraKeys!4472 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128461 () Bool)

(declare-fun res!754211 () Bool)

(assert (=> b!1128461 (=> (not res!754211) (not e!642284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128461 (= res!754211 (validMask!0 mask!1564))))

(declare-fun b!1128462 () Bool)

(assert (=> b!1128462 (= e!642291 e!642289)))

(declare-fun res!754205 () Bool)

(assert (=> b!1128462 (=> res!754205 e!642289)))

(assert (=> b!1128462 (= res!754205 (not (= (select (arr!35442 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1128462 e!642287))

(declare-fun c!109730 () Bool)

(assert (=> b!1128462 (= c!109730 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36919 0))(
  ( (Unit!36920) )
))
(declare-fun lt!500956 () Unit!36919)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!405 (array!73586 array!73588 (_ BitVec 32) (_ BitVec 32) V!42971 V!42971 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36919)

(assert (=> b!1128462 (= lt!500956 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!405 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128463 () Bool)

(declare-fun res!754209 () Bool)

(assert (=> b!1128463 (=> (not res!754209) (not e!642284))))

(assert (=> b!1128463 (= res!754209 (= (select (arr!35442 _keys!1208) i!673) k0!934))))

(declare-fun b!1128464 () Bool)

(declare-fun e!642286 () Bool)

(declare-fun e!642292 () Bool)

(assert (=> b!1128464 (= e!642286 (and e!642292 mapRes!44392))))

(declare-fun condMapEmpty!44392 () Bool)

(declare-fun mapDefault!44392 () ValueCell!13482)

(assert (=> b!1128464 (= condMapEmpty!44392 (= (arr!35443 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13482)) mapDefault!44392)))))

(declare-fun b!1128465 () Bool)

(declare-fun tp_is_empty!28383 () Bool)

(assert (=> b!1128465 (= e!642285 tp_is_empty!28383)))

(declare-fun b!1128466 () Bool)

(declare-fun -!1152 (ListLongMap!16003 (_ BitVec 64)) ListLongMap!16003)

(assert (=> b!1128466 (= e!642287 (= call!47843 (-!1152 call!47842 k0!934)))))

(declare-fun res!754204 () Bool)

(assert (=> start!98188 (=> (not res!754204) (not e!642284))))

(assert (=> start!98188 (= res!754204 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35979 _keys!1208))))))

(assert (=> start!98188 e!642284))

(assert (=> start!98188 tp_is_empty!28383))

(declare-fun array_inv!27060 (array!73586) Bool)

(assert (=> start!98188 (array_inv!27060 _keys!1208)))

(assert (=> start!98188 true))

(assert (=> start!98188 tp!84264))

(declare-fun array_inv!27061 (array!73588) Bool)

(assert (=> start!98188 (and (array_inv!27061 _values!996) e!642286)))

(declare-fun b!1128467 () Bool)

(assert (=> b!1128467 (= e!642290 (not e!642293))))

(declare-fun res!754212 () Bool)

(assert (=> b!1128467 (=> res!754212 e!642293)))

(assert (=> b!1128467 (= res!754212 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128467 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500957 () Unit!36919)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73586 (_ BitVec 64) (_ BitVec 32)) Unit!36919)

(assert (=> b!1128467 (= lt!500957 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1128468 () Bool)

(assert (=> b!1128468 (= e!642292 tp_is_empty!28383)))

(declare-fun bm!47840 () Bool)

(assert (=> bm!47840 (= call!47843 (getCurrentListMapNoExtraKeys!4472 lt!500958 lt!500960 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128469 () Bool)

(declare-fun res!754206 () Bool)

(assert (=> b!1128469 (=> (not res!754206) (not e!642284))))

(assert (=> b!1128469 (= res!754206 (and (= (size!35980 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35979 _keys!1208) (size!35980 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128470 () Bool)

(declare-fun res!754207 () Bool)

(assert (=> b!1128470 (=> (not res!754207) (not e!642284))))

(declare-datatypes ((List!24844 0))(
  ( (Nil!24841) (Cons!24840 (h!26049 (_ BitVec 64)) (t!35696 List!24844)) )
))
(declare-fun arrayNoDuplicates!0 (array!73586 (_ BitVec 32) List!24844) Bool)

(assert (=> b!1128470 (= res!754207 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24841))))

(declare-fun b!1128471 () Bool)

(declare-fun res!754208 () Bool)

(assert (=> b!1128471 (=> (not res!754208) (not e!642284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128471 (= res!754208 (validKeyInArray!0 k0!934))))

(declare-fun b!1128472 () Bool)

(declare-fun res!754214 () Bool)

(assert (=> b!1128472 (=> (not res!754214) (not e!642284))))

(assert (=> b!1128472 (= res!754214 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35979 _keys!1208))))))

(declare-fun b!1128473 () Bool)

(declare-fun res!754203 () Bool)

(assert (=> b!1128473 (=> (not res!754203) (not e!642284))))

(assert (=> b!1128473 (= res!754203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128474 () Bool)

(declare-fun res!754215 () Bool)

(assert (=> b!1128474 (=> (not res!754215) (not e!642290))))

(assert (=> b!1128474 (= res!754215 (arrayNoDuplicates!0 lt!500958 #b00000000000000000000000000000000 Nil!24841))))

(assert (= (and start!98188 res!754204) b!1128461))

(assert (= (and b!1128461 res!754211) b!1128469))

(assert (= (and b!1128469 res!754206) b!1128473))

(assert (= (and b!1128473 res!754203) b!1128470))

(assert (= (and b!1128470 res!754207) b!1128472))

(assert (= (and b!1128472 res!754214) b!1128471))

(assert (= (and b!1128471 res!754208) b!1128463))

(assert (= (and b!1128463 res!754209) b!1128460))

(assert (= (and b!1128460 res!754210) b!1128474))

(assert (= (and b!1128474 res!754215) b!1128467))

(assert (= (and b!1128467 (not res!754212)) b!1128457))

(assert (= (and b!1128457 (not res!754213)) b!1128462))

(assert (= (and b!1128462 c!109730) b!1128466))

(assert (= (and b!1128462 (not c!109730)) b!1128458))

(assert (= (or b!1128466 b!1128458) bm!47840))

(assert (= (or b!1128466 b!1128458) bm!47839))

(assert (= (and b!1128462 (not res!754205)) b!1128459))

(assert (= (and b!1128464 condMapEmpty!44392) mapIsEmpty!44392))

(assert (= (and b!1128464 (not condMapEmpty!44392)) mapNonEmpty!44392))

(get-info :version)

(assert (= (and mapNonEmpty!44392 ((_ is ValueCellFull!13482) mapValue!44392)) b!1128465))

(assert (= (and b!1128464 ((_ is ValueCellFull!13482) mapDefault!44392)) b!1128468))

(assert (= start!98188 b!1128464))

(declare-fun b_lambda!18857 () Bool)

(assert (=> (not b_lambda!18857) (not b!1128457)))

(declare-fun t!35694 () Bool)

(declare-fun tb!8673 () Bool)

(assert (=> (and start!98188 (= defaultEntry!1004 defaultEntry!1004) t!35694) tb!8673))

(declare-fun result!17899 () Bool)

(assert (=> tb!8673 (= result!17899 tp_is_empty!28383)))

(assert (=> b!1128457 t!35694))

(declare-fun b_and!38513 () Bool)

(assert (= b_and!38511 (and (=> t!35694 result!17899) b_and!38513)))

(declare-fun m!1042169 () Bool)

(assert (=> mapNonEmpty!44392 m!1042169))

(declare-fun m!1042171 () Bool)

(assert (=> bm!47840 m!1042171))

(declare-fun m!1042173 () Bool)

(assert (=> b!1128467 m!1042173))

(declare-fun m!1042175 () Bool)

(assert (=> b!1128467 m!1042175))

(declare-fun m!1042177 () Bool)

(assert (=> b!1128457 m!1042177))

(declare-fun m!1042179 () Bool)

(assert (=> b!1128457 m!1042179))

(declare-fun m!1042181 () Bool)

(assert (=> b!1128457 m!1042181))

(declare-fun m!1042183 () Bool)

(assert (=> b!1128457 m!1042183))

(declare-fun m!1042185 () Bool)

(assert (=> bm!47839 m!1042185))

(declare-fun m!1042187 () Bool)

(assert (=> b!1128470 m!1042187))

(declare-fun m!1042189 () Bool)

(assert (=> b!1128461 m!1042189))

(assert (=> b!1128459 m!1042185))

(assert (=> b!1128459 m!1042185))

(declare-fun m!1042191 () Bool)

(assert (=> b!1128459 m!1042191))

(declare-fun m!1042193 () Bool)

(assert (=> b!1128462 m!1042193))

(declare-fun m!1042195 () Bool)

(assert (=> b!1128462 m!1042195))

(declare-fun m!1042197 () Bool)

(assert (=> b!1128460 m!1042197))

(declare-fun m!1042199 () Bool)

(assert (=> b!1128460 m!1042199))

(declare-fun m!1042201 () Bool)

(assert (=> b!1128474 m!1042201))

(declare-fun m!1042203 () Bool)

(assert (=> b!1128463 m!1042203))

(declare-fun m!1042205 () Bool)

(assert (=> start!98188 m!1042205))

(declare-fun m!1042207 () Bool)

(assert (=> start!98188 m!1042207))

(declare-fun m!1042209 () Bool)

(assert (=> b!1128466 m!1042209))

(declare-fun m!1042211 () Bool)

(assert (=> b!1128473 m!1042211))

(declare-fun m!1042213 () Bool)

(assert (=> b!1128471 m!1042213))

(check-sat (not b!1128466) (not b!1128470) (not b_lambda!18857) tp_is_empty!28383 (not b!1128473) (not mapNonEmpty!44392) (not start!98188) (not b!1128462) (not bm!47839) b_and!38513 (not b!1128471) (not b!1128474) (not b!1128461) (not b!1128457) (not b!1128460) (not b!1128467) (not b!1128459) (not b_next!23853) (not bm!47840))
(check-sat b_and!38513 (not b_next!23853))
