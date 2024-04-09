; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97804 () Bool)

(assert start!97804)

(declare-fun b_free!23469 () Bool)

(declare-fun b_next!23469 () Bool)

(assert (=> start!97804 (= b_free!23469 (not b_next!23469))))

(declare-fun tp!83111 () Bool)

(declare-fun b_and!37765 () Bool)

(assert (=> start!97804 (= tp!83111 b_and!37765)))

(declare-fun b!1118238 () Bool)

(declare-fun res!746915 () Bool)

(declare-fun e!636987 () Bool)

(assert (=> b!1118238 (=> (not res!746915) (not e!636987))))

(declare-datatypes ((array!72828 0))(
  ( (array!72829 (arr!35063 (Array (_ BitVec 32) (_ BitVec 64))) (size!35600 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72828)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42459 0))(
  ( (V!42460 (val!14056 Int)) )
))
(declare-datatypes ((ValueCell!13290 0))(
  ( (ValueCellFull!13290 (v!16690 V!42459)) (EmptyCell!13290) )
))
(declare-datatypes ((array!72830 0))(
  ( (array!72831 (arr!35064 (Array (_ BitVec 32) ValueCell!13290)) (size!35601 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72830)

(assert (=> b!1118238 (= res!746915 (and (= (size!35601 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35600 _keys!1208) (size!35601 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118239 () Bool)

(declare-fun e!636992 () Bool)

(declare-fun tp_is_empty!27999 () Bool)

(assert (=> b!1118239 (= e!636992 tp_is_empty!27999)))

(declare-fun b!1118240 () Bool)

(declare-fun e!636991 () Bool)

(assert (=> b!1118240 (= e!636991 true)))

(declare-fun zeroValue!944 () V!42459)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42459)

(declare-datatypes ((tuple2!17684 0))(
  ( (tuple2!17685 (_1!8852 (_ BitVec 64)) (_2!8852 V!42459)) )
))
(declare-datatypes ((List!24519 0))(
  ( (Nil!24516) (Cons!24515 (h!25724 tuple2!17684) (t!35007 List!24519)) )
))
(declare-datatypes ((ListLongMap!15665 0))(
  ( (ListLongMap!15666 (toList!7848 List!24519)) )
))
(declare-fun lt!497436 () ListLongMap!15665)

(declare-fun getCurrentListMapNoExtraKeys!4309 (array!72828 array!72830 (_ BitVec 32) (_ BitVec 32) V!42459 V!42459 (_ BitVec 32) Int) ListLongMap!15665)

(assert (=> b!1118240 (= lt!497436 (getCurrentListMapNoExtraKeys!4309 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118241 () Bool)

(declare-fun res!746920 () Bool)

(assert (=> b!1118241 (=> (not res!746920) (not e!636987))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118241 (= res!746920 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35600 _keys!1208))))))

(declare-fun b!1118242 () Bool)

(declare-fun e!636990 () Bool)

(assert (=> b!1118242 (= e!636987 e!636990)))

(declare-fun res!746919 () Bool)

(assert (=> b!1118242 (=> (not res!746919) (not e!636990))))

(declare-fun lt!497434 () array!72828)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72828 (_ BitVec 32)) Bool)

(assert (=> b!1118242 (= res!746919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497434 mask!1564))))

(assert (=> b!1118242 (= lt!497434 (array!72829 (store (arr!35063 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35600 _keys!1208)))))

(declare-fun b!1118243 () Bool)

(declare-fun res!746922 () Bool)

(assert (=> b!1118243 (=> (not res!746922) (not e!636987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118243 (= res!746922 (validMask!0 mask!1564))))

(declare-fun b!1118244 () Bool)

(declare-fun res!746912 () Bool)

(assert (=> b!1118244 (=> (not res!746912) (not e!636990))))

(declare-datatypes ((List!24520 0))(
  ( (Nil!24517) (Cons!24516 (h!25725 (_ BitVec 64)) (t!35008 List!24520)) )
))
(declare-fun arrayNoDuplicates!0 (array!72828 (_ BitVec 32) List!24520) Bool)

(assert (=> b!1118244 (= res!746912 (arrayNoDuplicates!0 lt!497434 #b00000000000000000000000000000000 Nil!24517))))

(declare-fun b!1118245 () Bool)

(declare-fun res!746917 () Bool)

(assert (=> b!1118245 (=> (not res!746917) (not e!636987))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1118245 (= res!746917 (= (select (arr!35063 _keys!1208) i!673) k0!934))))

(declare-fun res!746913 () Bool)

(assert (=> start!97804 (=> (not res!746913) (not e!636987))))

(assert (=> start!97804 (= res!746913 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35600 _keys!1208))))))

(assert (=> start!97804 e!636987))

(assert (=> start!97804 tp_is_empty!27999))

(declare-fun array_inv!26804 (array!72828) Bool)

(assert (=> start!97804 (array_inv!26804 _keys!1208)))

(assert (=> start!97804 true))

(assert (=> start!97804 tp!83111))

(declare-fun e!636988 () Bool)

(declare-fun array_inv!26805 (array!72830) Bool)

(assert (=> start!97804 (and (array_inv!26805 _values!996) e!636988)))

(declare-fun b!1118246 () Bool)

(declare-fun res!746914 () Bool)

(assert (=> b!1118246 (=> (not res!746914) (not e!636987))))

(assert (=> b!1118246 (= res!746914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118247 () Bool)

(declare-fun res!746921 () Bool)

(assert (=> b!1118247 (=> (not res!746921) (not e!636987))))

(assert (=> b!1118247 (= res!746921 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24517))))

(declare-fun b!1118248 () Bool)

(declare-fun res!746918 () Bool)

(assert (=> b!1118248 (=> (not res!746918) (not e!636987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118248 (= res!746918 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!43816 () Bool)

(declare-fun mapRes!43816 () Bool)

(assert (=> mapIsEmpty!43816 mapRes!43816))

(declare-fun b!1118249 () Bool)

(declare-fun e!636989 () Bool)

(assert (=> b!1118249 (= e!636988 (and e!636989 mapRes!43816))))

(declare-fun condMapEmpty!43816 () Bool)

(declare-fun mapDefault!43816 () ValueCell!13290)

(assert (=> b!1118249 (= condMapEmpty!43816 (= (arr!35064 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13290)) mapDefault!43816)))))

(declare-fun b!1118250 () Bool)

(assert (=> b!1118250 (= e!636990 (not e!636991))))

(declare-fun res!746916 () Bool)

(assert (=> b!1118250 (=> res!746916 e!636991)))

(assert (=> b!1118250 (= res!746916 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118250 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36611 0))(
  ( (Unit!36612) )
))
(declare-fun lt!497435 () Unit!36611)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72828 (_ BitVec 64) (_ BitVec 32)) Unit!36611)

(assert (=> b!1118250 (= lt!497435 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1118251 () Bool)

(assert (=> b!1118251 (= e!636989 tp_is_empty!27999)))

(declare-fun mapNonEmpty!43816 () Bool)

(declare-fun tp!83112 () Bool)

(assert (=> mapNonEmpty!43816 (= mapRes!43816 (and tp!83112 e!636992))))

(declare-fun mapKey!43816 () (_ BitVec 32))

(declare-fun mapValue!43816 () ValueCell!13290)

(declare-fun mapRest!43816 () (Array (_ BitVec 32) ValueCell!13290))

(assert (=> mapNonEmpty!43816 (= (arr!35064 _values!996) (store mapRest!43816 mapKey!43816 mapValue!43816))))

(assert (= (and start!97804 res!746913) b!1118243))

(assert (= (and b!1118243 res!746922) b!1118238))

(assert (= (and b!1118238 res!746915) b!1118246))

(assert (= (and b!1118246 res!746914) b!1118247))

(assert (= (and b!1118247 res!746921) b!1118241))

(assert (= (and b!1118241 res!746920) b!1118248))

(assert (= (and b!1118248 res!746918) b!1118245))

(assert (= (and b!1118245 res!746917) b!1118242))

(assert (= (and b!1118242 res!746919) b!1118244))

(assert (= (and b!1118244 res!746912) b!1118250))

(assert (= (and b!1118250 (not res!746916)) b!1118240))

(assert (= (and b!1118249 condMapEmpty!43816) mapIsEmpty!43816))

(assert (= (and b!1118249 (not condMapEmpty!43816)) mapNonEmpty!43816))

(get-info :version)

(assert (= (and mapNonEmpty!43816 ((_ is ValueCellFull!13290) mapValue!43816)) b!1118239))

(assert (= (and b!1118249 ((_ is ValueCellFull!13290) mapDefault!43816)) b!1118251))

(assert (= start!97804 b!1118249))

(declare-fun m!1033949 () Bool)

(assert (=> b!1118243 m!1033949))

(declare-fun m!1033951 () Bool)

(assert (=> b!1118247 m!1033951))

(declare-fun m!1033953 () Bool)

(assert (=> b!1118250 m!1033953))

(declare-fun m!1033955 () Bool)

(assert (=> b!1118250 m!1033955))

(declare-fun m!1033957 () Bool)

(assert (=> b!1118240 m!1033957))

(declare-fun m!1033959 () Bool)

(assert (=> b!1118246 m!1033959))

(declare-fun m!1033961 () Bool)

(assert (=> b!1118248 m!1033961))

(declare-fun m!1033963 () Bool)

(assert (=> b!1118242 m!1033963))

(declare-fun m!1033965 () Bool)

(assert (=> b!1118242 m!1033965))

(declare-fun m!1033967 () Bool)

(assert (=> start!97804 m!1033967))

(declare-fun m!1033969 () Bool)

(assert (=> start!97804 m!1033969))

(declare-fun m!1033971 () Bool)

(assert (=> b!1118245 m!1033971))

(declare-fun m!1033973 () Bool)

(assert (=> mapNonEmpty!43816 m!1033973))

(declare-fun m!1033975 () Bool)

(assert (=> b!1118244 m!1033975))

(check-sat (not b!1118243) (not b!1118246) (not b!1118247) (not b!1118240) tp_is_empty!27999 (not b!1118244) b_and!37765 (not b!1118248) (not b!1118250) (not start!97804) (not mapNonEmpty!43816) (not b!1118242) (not b_next!23469))
(check-sat b_and!37765 (not b_next!23469))
