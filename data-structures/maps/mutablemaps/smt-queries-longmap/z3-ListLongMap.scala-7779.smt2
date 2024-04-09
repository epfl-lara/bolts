; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97456 () Bool)

(assert start!97456)

(declare-fun b_free!23391 () Bool)

(declare-fun b_next!23391 () Bool)

(assert (=> start!97456 (= b_free!23391 (not b_next!23391))))

(declare-fun tp!82472 () Bool)

(declare-fun b_and!37639 () Bool)

(assert (=> start!97456 (= tp!82472 b_and!37639)))

(declare-fun b!1111143 () Bool)

(declare-fun res!741584 () Bool)

(declare-fun e!633669 () Bool)

(assert (=> b!1111143 (=> (not res!741584) (not e!633669))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111143 (= res!741584 (validMask!0 mask!1564))))

(declare-datatypes ((V!41995 0))(
  ( (V!41996 (val!13882 Int)) )
))
(declare-fun zeroValue!944 () V!41995)

(declare-fun bm!46867 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!72166 0))(
  ( (array!72167 (arr!34732 (Array (_ BitVec 32) (_ BitVec 64))) (size!35269 (_ BitVec 32))) )
))
(declare-fun lt!496275 () array!72166)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!41995)

(declare-datatypes ((ValueCell!13116 0))(
  ( (ValueCellFull!13116 (v!16516 V!41995)) (EmptyCell!13116) )
))
(declare-datatypes ((array!72168 0))(
  ( (array!72169 (arr!34733 (Array (_ BitVec 32) ValueCell!13116)) (size!35270 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72168)

(declare-datatypes ((tuple2!17628 0))(
  ( (tuple2!17629 (_1!8824 (_ BitVec 64)) (_2!8824 V!41995)) )
))
(declare-datatypes ((List!24364 0))(
  ( (Nil!24361) (Cons!24360 (h!25569 tuple2!17628) (t!34808 List!24364)) )
))
(declare-datatypes ((ListLongMap!15609 0))(
  ( (ListLongMap!15610 (toList!7820 List!24364)) )
))
(declare-fun call!46870 () ListLongMap!15609)

(declare-fun getCurrentListMapNoExtraKeys!4282 (array!72166 array!72168 (_ BitVec 32) (_ BitVec 32) V!41995 V!41995 (_ BitVec 32) Int) ListLongMap!15609)

(declare-fun dynLambda!2404 (Int (_ BitVec 64)) V!41995)

(assert (=> bm!46867 (= call!46870 (getCurrentListMapNoExtraKeys!4282 lt!496275 (array!72169 (store (arr!34733 _values!996) i!673 (ValueCellFull!13116 (dynLambda!2404 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35270 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111144 () Bool)

(declare-fun e!633667 () Bool)

(assert (=> b!1111144 (= e!633669 e!633667)))

(declare-fun res!741581 () Bool)

(assert (=> b!1111144 (=> (not res!741581) (not e!633667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72166 (_ BitVec 32)) Bool)

(assert (=> b!1111144 (= res!741581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496275 mask!1564))))

(declare-fun _keys!1208 () array!72166)

(assert (=> b!1111144 (= lt!496275 (array!72167 (store (arr!34732 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35269 _keys!1208)))))

(declare-fun b!1111145 () Bool)

(declare-fun res!741582 () Bool)

(assert (=> b!1111145 (=> (not res!741582) (not e!633669))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1111145 (= res!741582 (= (select (arr!34732 _keys!1208) i!673) k0!934))))

(declare-fun b!1111147 () Bool)

(declare-fun e!633671 () Bool)

(assert (=> b!1111147 (= e!633671 true)))

(declare-fun e!633670 () Bool)

(assert (=> b!1111147 e!633670))

(declare-fun c!109238 () Bool)

(assert (=> b!1111147 (= c!109238 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36379 0))(
  ( (Unit!36380) )
))
(declare-fun lt!496273 () Unit!36379)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!296 (array!72166 array!72168 (_ BitVec 32) (_ BitVec 32) V!41995 V!41995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36379)

(assert (=> b!1111147 (= lt!496273 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!296 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111148 () Bool)

(declare-fun res!741576 () Bool)

(assert (=> b!1111148 (=> (not res!741576) (not e!633667))))

(declare-datatypes ((List!24365 0))(
  ( (Nil!24362) (Cons!24361 (h!25570 (_ BitVec 64)) (t!34809 List!24365)) )
))
(declare-fun arrayNoDuplicates!0 (array!72166 (_ BitVec 32) List!24365) Bool)

(assert (=> b!1111148 (= res!741576 (arrayNoDuplicates!0 lt!496275 #b00000000000000000000000000000000 Nil!24362))))

(declare-fun b!1111149 () Bool)

(declare-fun res!741577 () Bool)

(assert (=> b!1111149 (=> (not res!741577) (not e!633669))))

(assert (=> b!1111149 (= res!741577 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24362))))

(declare-fun b!1111150 () Bool)

(declare-fun e!633665 () Bool)

(declare-fun tp_is_empty!27651 () Bool)

(assert (=> b!1111150 (= e!633665 tp_is_empty!27651)))

(declare-fun b!1111151 () Bool)

(assert (=> b!1111151 (= e!633667 (not e!633671))))

(declare-fun res!741575 () Bool)

(assert (=> b!1111151 (=> res!741575 e!633671)))

(assert (=> b!1111151 (= res!741575 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35269 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111151 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496274 () Unit!36379)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72166 (_ BitVec 64) (_ BitVec 32)) Unit!36379)

(assert (=> b!1111151 (= lt!496274 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1111152 () Bool)

(declare-fun res!741578 () Bool)

(assert (=> b!1111152 (=> (not res!741578) (not e!633669))))

(assert (=> b!1111152 (= res!741578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111153 () Bool)

(declare-fun res!741585 () Bool)

(assert (=> b!1111153 (=> (not res!741585) (not e!633669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111153 (= res!741585 (validKeyInArray!0 k0!934))))

(declare-fun call!46871 () ListLongMap!15609)

(declare-fun b!1111154 () Bool)

(declare-fun -!1042 (ListLongMap!15609 (_ BitVec 64)) ListLongMap!15609)

(assert (=> b!1111154 (= e!633670 (= call!46870 (-!1042 call!46871 k0!934)))))

(declare-fun b!1111155 () Bool)

(assert (=> b!1111155 (= e!633670 (= call!46870 call!46871))))

(declare-fun b!1111146 () Bool)

(declare-fun e!633664 () Bool)

(assert (=> b!1111146 (= e!633664 tp_is_empty!27651)))

(declare-fun res!741580 () Bool)

(assert (=> start!97456 (=> (not res!741580) (not e!633669))))

(assert (=> start!97456 (= res!741580 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35269 _keys!1208))))))

(assert (=> start!97456 e!633669))

(assert (=> start!97456 tp_is_empty!27651))

(declare-fun array_inv!26586 (array!72166) Bool)

(assert (=> start!97456 (array_inv!26586 _keys!1208)))

(assert (=> start!97456 true))

(assert (=> start!97456 tp!82472))

(declare-fun e!633668 () Bool)

(declare-fun array_inv!26587 (array!72168) Bool)

(assert (=> start!97456 (and (array_inv!26587 _values!996) e!633668)))

(declare-fun b!1111156 () Bool)

(declare-fun res!741583 () Bool)

(assert (=> b!1111156 (=> (not res!741583) (not e!633669))))

(assert (=> b!1111156 (= res!741583 (and (= (size!35270 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35269 _keys!1208) (size!35270 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111157 () Bool)

(declare-fun mapRes!43294 () Bool)

(assert (=> b!1111157 (= e!633668 (and e!633665 mapRes!43294))))

(declare-fun condMapEmpty!43294 () Bool)

(declare-fun mapDefault!43294 () ValueCell!13116)

(assert (=> b!1111157 (= condMapEmpty!43294 (= (arr!34733 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13116)) mapDefault!43294)))))

(declare-fun mapIsEmpty!43294 () Bool)

(assert (=> mapIsEmpty!43294 mapRes!43294))

(declare-fun b!1111158 () Bool)

(declare-fun res!741579 () Bool)

(assert (=> b!1111158 (=> (not res!741579) (not e!633669))))

(assert (=> b!1111158 (= res!741579 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35269 _keys!1208))))))

(declare-fun mapNonEmpty!43294 () Bool)

(declare-fun tp!82473 () Bool)

(assert (=> mapNonEmpty!43294 (= mapRes!43294 (and tp!82473 e!633664))))

(declare-fun mapValue!43294 () ValueCell!13116)

(declare-fun mapRest!43294 () (Array (_ BitVec 32) ValueCell!13116))

(declare-fun mapKey!43294 () (_ BitVec 32))

(assert (=> mapNonEmpty!43294 (= (arr!34733 _values!996) (store mapRest!43294 mapKey!43294 mapValue!43294))))

(declare-fun bm!46868 () Bool)

(assert (=> bm!46868 (= call!46871 (getCurrentListMapNoExtraKeys!4282 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!97456 res!741580) b!1111143))

(assert (= (and b!1111143 res!741584) b!1111156))

(assert (= (and b!1111156 res!741583) b!1111152))

(assert (= (and b!1111152 res!741578) b!1111149))

(assert (= (and b!1111149 res!741577) b!1111158))

(assert (= (and b!1111158 res!741579) b!1111153))

(assert (= (and b!1111153 res!741585) b!1111145))

(assert (= (and b!1111145 res!741582) b!1111144))

(assert (= (and b!1111144 res!741581) b!1111148))

(assert (= (and b!1111148 res!741576) b!1111151))

(assert (= (and b!1111151 (not res!741575)) b!1111147))

(assert (= (and b!1111147 c!109238) b!1111154))

(assert (= (and b!1111147 (not c!109238)) b!1111155))

(assert (= (or b!1111154 b!1111155) bm!46867))

(assert (= (or b!1111154 b!1111155) bm!46868))

(assert (= (and b!1111157 condMapEmpty!43294) mapIsEmpty!43294))

(assert (= (and b!1111157 (not condMapEmpty!43294)) mapNonEmpty!43294))

(get-info :version)

(assert (= (and mapNonEmpty!43294 ((_ is ValueCellFull!13116) mapValue!43294)) b!1111146))

(assert (= (and b!1111157 ((_ is ValueCellFull!13116) mapDefault!43294)) b!1111150))

(assert (= start!97456 b!1111157))

(declare-fun b_lambda!18447 () Bool)

(assert (=> (not b_lambda!18447) (not bm!46867)))

(declare-fun t!34807 () Bool)

(declare-fun tb!8265 () Bool)

(assert (=> (and start!97456 (= defaultEntry!1004 defaultEntry!1004) t!34807) tb!8265))

(declare-fun result!17083 () Bool)

(assert (=> tb!8265 (= result!17083 tp_is_empty!27651)))

(assert (=> bm!46867 t!34807))

(declare-fun b_and!37641 () Bool)

(assert (= b_and!37639 (and (=> t!34807 result!17083) b_and!37641)))

(declare-fun m!1029117 () Bool)

(assert (=> b!1111147 m!1029117))

(declare-fun m!1029119 () Bool)

(assert (=> b!1111151 m!1029119))

(declare-fun m!1029121 () Bool)

(assert (=> b!1111151 m!1029121))

(declare-fun m!1029123 () Bool)

(assert (=> b!1111152 m!1029123))

(declare-fun m!1029125 () Bool)

(assert (=> bm!46867 m!1029125))

(declare-fun m!1029127 () Bool)

(assert (=> bm!46867 m!1029127))

(declare-fun m!1029129 () Bool)

(assert (=> bm!46867 m!1029129))

(declare-fun m!1029131 () Bool)

(assert (=> start!97456 m!1029131))

(declare-fun m!1029133 () Bool)

(assert (=> start!97456 m!1029133))

(declare-fun m!1029135 () Bool)

(assert (=> b!1111145 m!1029135))

(declare-fun m!1029137 () Bool)

(assert (=> b!1111153 m!1029137))

(declare-fun m!1029139 () Bool)

(assert (=> mapNonEmpty!43294 m!1029139))

(declare-fun m!1029141 () Bool)

(assert (=> b!1111148 m!1029141))

(declare-fun m!1029143 () Bool)

(assert (=> b!1111154 m!1029143))

(declare-fun m!1029145 () Bool)

(assert (=> b!1111144 m!1029145))

(declare-fun m!1029147 () Bool)

(assert (=> b!1111144 m!1029147))

(declare-fun m!1029149 () Bool)

(assert (=> bm!46868 m!1029149))

(declare-fun m!1029151 () Bool)

(assert (=> b!1111143 m!1029151))

(declare-fun m!1029153 () Bool)

(assert (=> b!1111149 m!1029153))

(check-sat tp_is_empty!27651 (not b!1111147) (not b_next!23391) (not bm!46867) (not b!1111148) (not b_lambda!18447) (not b!1111144) (not b!1111152) (not b!1111154) (not b!1111151) (not b!1111143) (not b!1111153) (not b!1111149) (not bm!46868) (not mapNonEmpty!43294) b_and!37641 (not start!97456))
(check-sat b_and!37641 (not b_next!23391))
