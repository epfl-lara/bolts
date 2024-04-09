; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97354 () Bool)

(assert start!97354)

(declare-fun b_free!23289 () Bool)

(declare-fun b_next!23289 () Bool)

(assert (=> start!97354 (= b_free!23289 (not b_next!23289))))

(declare-fun tp!82167 () Bool)

(declare-fun b_and!37431 () Bool)

(assert (=> start!97354 (= tp!82167 b_and!37431)))

(declare-fun b!1108569 () Bool)

(declare-fun res!739899 () Bool)

(declare-fun e!632435 () Bool)

(assert (=> b!1108569 (=> (not res!739899) (not e!632435))))

(declare-datatypes ((array!71966 0))(
  ( (array!71967 (arr!34632 (Array (_ BitVec 32) (_ BitVec 64))) (size!35169 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71966)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41859 0))(
  ( (V!41860 (val!13831 Int)) )
))
(declare-datatypes ((ValueCell!13065 0))(
  ( (ValueCellFull!13065 (v!16465 V!41859)) (EmptyCell!13065) )
))
(declare-datatypes ((array!71968 0))(
  ( (array!71969 (arr!34633 (Array (_ BitVec 32) ValueCell!13065)) (size!35170 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71968)

(assert (=> b!1108569 (= res!739899 (and (= (size!35170 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35169 _keys!1208) (size!35170 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108570 () Bool)

(declare-fun res!739893 () Bool)

(declare-fun e!632430 () Bool)

(assert (=> b!1108570 (=> (not res!739893) (not e!632430))))

(declare-fun lt!495816 () array!71966)

(declare-datatypes ((List!24282 0))(
  ( (Nil!24279) (Cons!24278 (h!25487 (_ BitVec 64)) (t!34624 List!24282)) )
))
(declare-fun arrayNoDuplicates!0 (array!71966 (_ BitVec 32) List!24282) Bool)

(assert (=> b!1108570 (= res!739893 (arrayNoDuplicates!0 lt!495816 #b00000000000000000000000000000000 Nil!24279))))

(declare-fun b!1108571 () Bool)

(declare-fun e!632428 () Bool)

(assert (=> b!1108571 (= e!632430 (not e!632428))))

(declare-fun res!739892 () Bool)

(assert (=> b!1108571 (=> res!739892 e!632428)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1108571 (= res!739892 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35169 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108571 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36309 0))(
  ( (Unit!36310) )
))
(declare-fun lt!495814 () Unit!36309)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71966 (_ BitVec 64) (_ BitVec 32)) Unit!36309)

(assert (=> b!1108571 (= lt!495814 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1108572 () Bool)

(declare-fun res!739894 () Bool)

(assert (=> b!1108572 (=> (not res!739894) (not e!632435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108572 (= res!739894 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43141 () Bool)

(declare-fun mapRes!43141 () Bool)

(assert (=> mapIsEmpty!43141 mapRes!43141))

(declare-fun zeroValue!944 () V!41859)

(declare-datatypes ((tuple2!17546 0))(
  ( (tuple2!17547 (_1!8783 (_ BitVec 64)) (_2!8783 V!41859)) )
))
(declare-datatypes ((List!24283 0))(
  ( (Nil!24280) (Cons!24279 (h!25488 tuple2!17546) (t!34625 List!24283)) )
))
(declare-datatypes ((ListLongMap!15527 0))(
  ( (ListLongMap!15528 (toList!7779 List!24283)) )
))
(declare-fun call!46565 () ListLongMap!15527)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46561 () Bool)

(declare-fun minValue!944 () V!41859)

(declare-fun getCurrentListMapNoExtraKeys!4246 (array!71966 array!71968 (_ BitVec 32) (_ BitVec 32) V!41859 V!41859 (_ BitVec 32) Int) ListLongMap!15527)

(assert (=> bm!46561 (= call!46565 (getCurrentListMapNoExtraKeys!4246 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108573 () Bool)

(declare-fun res!739900 () Bool)

(assert (=> b!1108573 (=> (not res!739900) (not e!632435))))

(assert (=> b!1108573 (= res!739900 (= (select (arr!34632 _keys!1208) i!673) k0!934))))

(declare-fun b!1108574 () Bool)

(declare-fun e!632433 () Bool)

(declare-fun tp_is_empty!27549 () Bool)

(assert (=> b!1108574 (= e!632433 tp_is_empty!27549)))

(declare-fun b!1108575 () Bool)

(declare-fun res!739898 () Bool)

(assert (=> b!1108575 (=> (not res!739898) (not e!632435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108575 (= res!739898 (validKeyInArray!0 k0!934))))

(declare-fun bm!46562 () Bool)

(declare-fun call!46564 () ListLongMap!15527)

(declare-fun dynLambda!2370 (Int (_ BitVec 64)) V!41859)

(assert (=> bm!46562 (= call!46564 (getCurrentListMapNoExtraKeys!4246 lt!495816 (array!71969 (store (arr!34633 _values!996) i!673 (ValueCellFull!13065 (dynLambda!2370 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35170 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108576 () Bool)

(declare-fun e!632429 () Bool)

(declare-fun -!1010 (ListLongMap!15527 (_ BitVec 64)) ListLongMap!15527)

(assert (=> b!1108576 (= e!632429 (= call!46564 (-!1010 call!46565 k0!934)))))

(declare-fun b!1108577 () Bool)

(declare-fun res!739897 () Bool)

(assert (=> b!1108577 (=> (not res!739897) (not e!632435))))

(assert (=> b!1108577 (= res!739897 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24279))))

(declare-fun b!1108578 () Bool)

(declare-fun res!739895 () Bool)

(assert (=> b!1108578 (=> (not res!739895) (not e!632435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71966 (_ BitVec 32)) Bool)

(assert (=> b!1108578 (= res!739895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1108579 () Bool)

(declare-fun e!632431 () Bool)

(assert (=> b!1108579 (= e!632431 tp_is_empty!27549)))

(declare-fun b!1108580 () Bool)

(assert (=> b!1108580 (= e!632429 (= call!46564 call!46565))))

(declare-fun b!1108581 () Bool)

(assert (=> b!1108581 (= e!632435 e!632430)))

(declare-fun res!739896 () Bool)

(assert (=> b!1108581 (=> (not res!739896) (not e!632430))))

(assert (=> b!1108581 (= res!739896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495816 mask!1564))))

(assert (=> b!1108581 (= lt!495816 (array!71967 (store (arr!34632 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35169 _keys!1208)))))

(declare-fun res!739902 () Bool)

(assert (=> start!97354 (=> (not res!739902) (not e!632435))))

(assert (=> start!97354 (= res!739902 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35169 _keys!1208))))))

(assert (=> start!97354 e!632435))

(assert (=> start!97354 tp_is_empty!27549))

(declare-fun array_inv!26516 (array!71966) Bool)

(assert (=> start!97354 (array_inv!26516 _keys!1208)))

(assert (=> start!97354 true))

(assert (=> start!97354 tp!82167))

(declare-fun e!632432 () Bool)

(declare-fun array_inv!26517 (array!71968) Bool)

(assert (=> start!97354 (and (array_inv!26517 _values!996) e!632432)))

(declare-fun mapNonEmpty!43141 () Bool)

(declare-fun tp!82166 () Bool)

(assert (=> mapNonEmpty!43141 (= mapRes!43141 (and tp!82166 e!632433))))

(declare-fun mapKey!43141 () (_ BitVec 32))

(declare-fun mapValue!43141 () ValueCell!13065)

(declare-fun mapRest!43141 () (Array (_ BitVec 32) ValueCell!13065))

(assert (=> mapNonEmpty!43141 (= (arr!34633 _values!996) (store mapRest!43141 mapKey!43141 mapValue!43141))))

(declare-fun b!1108582 () Bool)

(declare-fun res!739901 () Bool)

(assert (=> b!1108582 (=> (not res!739901) (not e!632435))))

(assert (=> b!1108582 (= res!739901 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35169 _keys!1208))))))

(declare-fun b!1108583 () Bool)

(assert (=> b!1108583 (= e!632428 true)))

(assert (=> b!1108583 e!632429))

(declare-fun c!109073 () Bool)

(assert (=> b!1108583 (= c!109073 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495815 () Unit!36309)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!263 (array!71966 array!71968 (_ BitVec 32) (_ BitVec 32) V!41859 V!41859 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36309)

(assert (=> b!1108583 (= lt!495815 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!263 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108584 () Bool)

(assert (=> b!1108584 (= e!632432 (and e!632431 mapRes!43141))))

(declare-fun condMapEmpty!43141 () Bool)

(declare-fun mapDefault!43141 () ValueCell!13065)

(assert (=> b!1108584 (= condMapEmpty!43141 (= (arr!34633 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13065)) mapDefault!43141)))))

(assert (= (and start!97354 res!739902) b!1108572))

(assert (= (and b!1108572 res!739894) b!1108569))

(assert (= (and b!1108569 res!739899) b!1108578))

(assert (= (and b!1108578 res!739895) b!1108577))

(assert (= (and b!1108577 res!739897) b!1108582))

(assert (= (and b!1108582 res!739901) b!1108575))

(assert (= (and b!1108575 res!739898) b!1108573))

(assert (= (and b!1108573 res!739900) b!1108581))

(assert (= (and b!1108581 res!739896) b!1108570))

(assert (= (and b!1108570 res!739893) b!1108571))

(assert (= (and b!1108571 (not res!739892)) b!1108583))

(assert (= (and b!1108583 c!109073) b!1108576))

(assert (= (and b!1108583 (not c!109073)) b!1108580))

(assert (= (or b!1108576 b!1108580) bm!46562))

(assert (= (or b!1108576 b!1108580) bm!46561))

(assert (= (and b!1108584 condMapEmpty!43141) mapIsEmpty!43141))

(assert (= (and b!1108584 (not condMapEmpty!43141)) mapNonEmpty!43141))

(get-info :version)

(assert (= (and mapNonEmpty!43141 ((_ is ValueCellFull!13065) mapValue!43141)) b!1108574))

(assert (= (and b!1108584 ((_ is ValueCellFull!13065) mapDefault!43141)) b!1108579))

(assert (= start!97354 b!1108584))

(declare-fun b_lambda!18341 () Bool)

(assert (=> (not b_lambda!18341) (not bm!46562)))

(declare-fun t!34623 () Bool)

(declare-fun tb!8163 () Bool)

(assert (=> (and start!97354 (= defaultEntry!1004 defaultEntry!1004) t!34623) tb!8163))

(declare-fun result!16879 () Bool)

(assert (=> tb!8163 (= result!16879 tp_is_empty!27549)))

(assert (=> bm!46562 t!34623))

(declare-fun b_and!37433 () Bool)

(assert (= b_and!37431 (and (=> t!34623 result!16879) b_and!37433)))

(declare-fun m!1027179 () Bool)

(assert (=> b!1108572 m!1027179))

(declare-fun m!1027181 () Bool)

(assert (=> b!1108583 m!1027181))

(declare-fun m!1027183 () Bool)

(assert (=> b!1108578 m!1027183))

(declare-fun m!1027185 () Bool)

(assert (=> b!1108581 m!1027185))

(declare-fun m!1027187 () Bool)

(assert (=> b!1108581 m!1027187))

(declare-fun m!1027189 () Bool)

(assert (=> b!1108573 m!1027189))

(declare-fun m!1027191 () Bool)

(assert (=> bm!46562 m!1027191))

(declare-fun m!1027193 () Bool)

(assert (=> bm!46562 m!1027193))

(declare-fun m!1027195 () Bool)

(assert (=> bm!46562 m!1027195))

(declare-fun m!1027197 () Bool)

(assert (=> b!1108576 m!1027197))

(declare-fun m!1027199 () Bool)

(assert (=> b!1108575 m!1027199))

(declare-fun m!1027201 () Bool)

(assert (=> mapNonEmpty!43141 m!1027201))

(declare-fun m!1027203 () Bool)

(assert (=> b!1108571 m!1027203))

(declare-fun m!1027205 () Bool)

(assert (=> b!1108571 m!1027205))

(declare-fun m!1027207 () Bool)

(assert (=> bm!46561 m!1027207))

(declare-fun m!1027209 () Bool)

(assert (=> b!1108570 m!1027209))

(declare-fun m!1027211 () Bool)

(assert (=> start!97354 m!1027211))

(declare-fun m!1027213 () Bool)

(assert (=> start!97354 m!1027213))

(declare-fun m!1027215 () Bool)

(assert (=> b!1108577 m!1027215))

(check-sat (not b!1108576) (not bm!46562) (not b!1108572) (not bm!46561) (not b!1108577) (not b!1108581) (not b_lambda!18341) (not mapNonEmpty!43141) (not b!1108571) tp_is_empty!27549 b_and!37433 (not b!1108583) (not start!97354) (not b!1108578) (not b!1108570) (not b_next!23289) (not b!1108575))
(check-sat b_and!37433 (not b_next!23289))
