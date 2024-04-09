; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97300 () Bool)

(assert start!97300)

(declare-fun b_free!23235 () Bool)

(declare-fun b_next!23235 () Bool)

(assert (=> start!97300 (= b_free!23235 (not b_next!23235))))

(declare-fun tp!82005 () Bool)

(declare-fun b_and!37319 () Bool)

(assert (=> start!97300 (= tp!82005 b_and!37319)))

(declare-fun b!1107195 () Bool)

(declare-fun e!631768 () Bool)

(declare-fun e!631772 () Bool)

(declare-fun mapRes!43060 () Bool)

(assert (=> b!1107195 (= e!631768 (and e!631772 mapRes!43060))))

(declare-fun condMapEmpty!43060 () Bool)

(declare-datatypes ((V!41787 0))(
  ( (V!41788 (val!13804 Int)) )
))
(declare-datatypes ((ValueCell!13038 0))(
  ( (ValueCellFull!13038 (v!16438 V!41787)) (EmptyCell!13038) )
))
(declare-datatypes ((array!71860 0))(
  ( (array!71861 (arr!34579 (Array (_ BitVec 32) ValueCell!13038)) (size!35116 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71860)

(declare-fun mapDefault!43060 () ValueCell!13038)

(assert (=> b!1107195 (= condMapEmpty!43060 (= (arr!34579 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13038)) mapDefault!43060)))))

(declare-fun mapNonEmpty!43060 () Bool)

(declare-fun tp!82004 () Bool)

(declare-fun e!631773 () Bool)

(assert (=> mapNonEmpty!43060 (= mapRes!43060 (and tp!82004 e!631773))))

(declare-fun mapRest!43060 () (Array (_ BitVec 32) ValueCell!13038))

(declare-fun mapKey!43060 () (_ BitVec 32))

(declare-fun mapValue!43060 () ValueCell!13038)

(assert (=> mapNonEmpty!43060 (= (arr!34579 _values!996) (store mapRest!43060 mapKey!43060 mapValue!43060))))

(declare-fun zeroValue!944 () V!41787)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!41787)

(declare-datatypes ((array!71862 0))(
  ( (array!71863 (arr!34580 (Array (_ BitVec 32) (_ BitVec 64))) (size!35117 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71862)

(declare-datatypes ((tuple2!17500 0))(
  ( (tuple2!17501 (_1!8760 (_ BitVec 64)) (_2!8760 V!41787)) )
))
(declare-datatypes ((List!24238 0))(
  ( (Nil!24235) (Cons!24234 (h!25443 tuple2!17500) (t!34526 List!24238)) )
))
(declare-datatypes ((ListLongMap!15481 0))(
  ( (ListLongMap!15482 (toList!7756 List!24238)) )
))
(declare-fun call!46402 () ListLongMap!15481)

(declare-fun bm!46399 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4225 (array!71862 array!71860 (_ BitVec 32) (_ BitVec 32) V!41787 V!41787 (_ BitVec 32) Int) ListLongMap!15481)

(assert (=> bm!46399 (= call!46402 (getCurrentListMapNoExtraKeys!4225 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107196 () Bool)

(declare-fun res!739008 () Bool)

(declare-fun e!631775 () Bool)

(assert (=> b!1107196 (=> (not res!739008) (not e!631775))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107196 (= res!739008 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35117 _keys!1208))))))

(declare-fun b!1107197 () Bool)

(declare-fun e!631770 () Bool)

(assert (=> b!1107197 (= e!631770 true)))

(declare-fun e!631769 () Bool)

(assert (=> b!1107197 e!631769))

(declare-fun c!108980 () Bool)

(assert (=> b!1107197 (= c!108980 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36275 0))(
  ( (Unit!36276) )
))
(declare-fun lt!495573 () Unit!36275)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!248 (array!71862 array!71860 (_ BitVec 32) (_ BitVec 32) V!41787 V!41787 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36275)

(assert (=> b!1107197 (= lt!495573 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!248 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107198 () Bool)

(declare-fun e!631774 () Bool)

(assert (=> b!1107198 (= e!631774 (not e!631770))))

(declare-fun res!739003 () Bool)

(assert (=> b!1107198 (=> res!739003 e!631770)))

(assert (=> b!1107198 (= res!739003 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35117 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107198 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495572 () Unit!36275)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71862 (_ BitVec 64) (_ BitVec 32)) Unit!36275)

(assert (=> b!1107198 (= lt!495572 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1107199 () Bool)

(declare-fun res!739001 () Bool)

(assert (=> b!1107199 (=> (not res!739001) (not e!631775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107199 (= res!739001 (validMask!0 mask!1564))))

(declare-fun call!46403 () ListLongMap!15481)

(declare-fun b!1107200 () Bool)

(declare-fun -!991 (ListLongMap!15481 (_ BitVec 64)) ListLongMap!15481)

(assert (=> b!1107200 (= e!631769 (= call!46403 (-!991 call!46402 k0!934)))))

(declare-fun b!1107202 () Bool)

(declare-fun res!739009 () Bool)

(assert (=> b!1107202 (=> (not res!739009) (not e!631775))))

(assert (=> b!1107202 (= res!739009 (and (= (size!35116 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35117 _keys!1208) (size!35116 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107203 () Bool)

(declare-fun res!739011 () Bool)

(assert (=> b!1107203 (=> (not res!739011) (not e!631774))))

(declare-fun lt!495571 () array!71862)

(declare-datatypes ((List!24239 0))(
  ( (Nil!24236) (Cons!24235 (h!25444 (_ BitVec 64)) (t!34527 List!24239)) )
))
(declare-fun arrayNoDuplicates!0 (array!71862 (_ BitVec 32) List!24239) Bool)

(assert (=> b!1107203 (= res!739011 (arrayNoDuplicates!0 lt!495571 #b00000000000000000000000000000000 Nil!24236))))

(declare-fun b!1107204 () Bool)

(assert (=> b!1107204 (= e!631775 e!631774)))

(declare-fun res!739002 () Bool)

(assert (=> b!1107204 (=> (not res!739002) (not e!631774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71862 (_ BitVec 32)) Bool)

(assert (=> b!1107204 (= res!739002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495571 mask!1564))))

(assert (=> b!1107204 (= lt!495571 (array!71863 (store (arr!34580 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35117 _keys!1208)))))

(declare-fun b!1107205 () Bool)

(declare-fun tp_is_empty!27495 () Bool)

(assert (=> b!1107205 (= e!631772 tp_is_empty!27495)))

(declare-fun bm!46400 () Bool)

(declare-fun dynLambda!2355 (Int (_ BitVec 64)) V!41787)

(assert (=> bm!46400 (= call!46403 (getCurrentListMapNoExtraKeys!4225 lt!495571 (array!71861 (store (arr!34579 _values!996) i!673 (ValueCellFull!13038 (dynLambda!2355 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35116 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107206 () Bool)

(declare-fun res!739006 () Bool)

(assert (=> b!1107206 (=> (not res!739006) (not e!631775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107206 (= res!739006 (validKeyInArray!0 k0!934))))

(declare-fun b!1107207 () Bool)

(declare-fun res!739007 () Bool)

(assert (=> b!1107207 (=> (not res!739007) (not e!631775))))

(assert (=> b!1107207 (= res!739007 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24236))))

(declare-fun mapIsEmpty!43060 () Bool)

(assert (=> mapIsEmpty!43060 mapRes!43060))

(declare-fun b!1107208 () Bool)

(declare-fun res!739010 () Bool)

(assert (=> b!1107208 (=> (not res!739010) (not e!631775))))

(assert (=> b!1107208 (= res!739010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!739005 () Bool)

(assert (=> start!97300 (=> (not res!739005) (not e!631775))))

(assert (=> start!97300 (= res!739005 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35117 _keys!1208))))))

(assert (=> start!97300 e!631775))

(assert (=> start!97300 tp_is_empty!27495))

(declare-fun array_inv!26476 (array!71862) Bool)

(assert (=> start!97300 (array_inv!26476 _keys!1208)))

(assert (=> start!97300 true))

(assert (=> start!97300 tp!82005))

(declare-fun array_inv!26477 (array!71860) Bool)

(assert (=> start!97300 (and (array_inv!26477 _values!996) e!631768)))

(declare-fun b!1107201 () Bool)

(declare-fun res!739004 () Bool)

(assert (=> b!1107201 (=> (not res!739004) (not e!631775))))

(assert (=> b!1107201 (= res!739004 (= (select (arr!34580 _keys!1208) i!673) k0!934))))

(declare-fun b!1107209 () Bool)

(assert (=> b!1107209 (= e!631769 (= call!46403 call!46402))))

(declare-fun b!1107210 () Bool)

(assert (=> b!1107210 (= e!631773 tp_is_empty!27495)))

(assert (= (and start!97300 res!739005) b!1107199))

(assert (= (and b!1107199 res!739001) b!1107202))

(assert (= (and b!1107202 res!739009) b!1107208))

(assert (= (and b!1107208 res!739010) b!1107207))

(assert (= (and b!1107207 res!739007) b!1107196))

(assert (= (and b!1107196 res!739008) b!1107206))

(assert (= (and b!1107206 res!739006) b!1107201))

(assert (= (and b!1107201 res!739004) b!1107204))

(assert (= (and b!1107204 res!739002) b!1107203))

(assert (= (and b!1107203 res!739011) b!1107198))

(assert (= (and b!1107198 (not res!739003)) b!1107197))

(assert (= (and b!1107197 c!108980) b!1107200))

(assert (= (and b!1107197 (not c!108980)) b!1107209))

(assert (= (or b!1107200 b!1107209) bm!46400))

(assert (= (or b!1107200 b!1107209) bm!46399))

(assert (= (and b!1107195 condMapEmpty!43060) mapIsEmpty!43060))

(assert (= (and b!1107195 (not condMapEmpty!43060)) mapNonEmpty!43060))

(get-info :version)

(assert (= (and mapNonEmpty!43060 ((_ is ValueCellFull!13038) mapValue!43060)) b!1107210))

(assert (= (and b!1107195 ((_ is ValueCellFull!13038) mapDefault!43060)) b!1107205))

(assert (= start!97300 b!1107195))

(declare-fun b_lambda!18283 () Bool)

(assert (=> (not b_lambda!18283) (not bm!46400)))

(declare-fun t!34525 () Bool)

(declare-fun tb!8109 () Bool)

(assert (=> (and start!97300 (= defaultEntry!1004 defaultEntry!1004) t!34525) tb!8109))

(declare-fun result!16771 () Bool)

(assert (=> tb!8109 (= result!16771 tp_is_empty!27495)))

(assert (=> bm!46400 t!34525))

(declare-fun b_and!37321 () Bool)

(assert (= b_and!37319 (and (=> t!34525 result!16771) b_and!37321)))

(declare-fun m!1026153 () Bool)

(assert (=> b!1107198 m!1026153))

(declare-fun m!1026155 () Bool)

(assert (=> b!1107198 m!1026155))

(declare-fun m!1026157 () Bool)

(assert (=> b!1107203 m!1026157))

(declare-fun m!1026159 () Bool)

(assert (=> b!1107206 m!1026159))

(declare-fun m!1026161 () Bool)

(assert (=> b!1107204 m!1026161))

(declare-fun m!1026163 () Bool)

(assert (=> b!1107204 m!1026163))

(declare-fun m!1026165 () Bool)

(assert (=> mapNonEmpty!43060 m!1026165))

(declare-fun m!1026167 () Bool)

(assert (=> b!1107201 m!1026167))

(declare-fun m!1026169 () Bool)

(assert (=> b!1107207 m!1026169))

(declare-fun m!1026171 () Bool)

(assert (=> b!1107199 m!1026171))

(declare-fun m!1026173 () Bool)

(assert (=> bm!46399 m!1026173))

(declare-fun m!1026175 () Bool)

(assert (=> b!1107200 m!1026175))

(declare-fun m!1026177 () Bool)

(assert (=> b!1107208 m!1026177))

(declare-fun m!1026179 () Bool)

(assert (=> b!1107197 m!1026179))

(declare-fun m!1026181 () Bool)

(assert (=> bm!46400 m!1026181))

(declare-fun m!1026183 () Bool)

(assert (=> bm!46400 m!1026183))

(declare-fun m!1026185 () Bool)

(assert (=> bm!46400 m!1026185))

(declare-fun m!1026187 () Bool)

(assert (=> start!97300 m!1026187))

(declare-fun m!1026189 () Bool)

(assert (=> start!97300 m!1026189))

(check-sat (not b!1107200) (not b_next!23235) tp_is_empty!27495 (not b!1107203) (not mapNonEmpty!43060) (not b!1107206) (not b!1107207) (not b!1107197) (not b!1107204) (not b!1107198) (not bm!46399) (not b!1107199) (not bm!46400) (not b!1107208) (not start!97300) b_and!37321 (not b_lambda!18283))
(check-sat b_and!37321 (not b_next!23235))
