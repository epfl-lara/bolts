; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99996 () Bool)

(assert start!99996)

(declare-fun b_free!25539 () Bool)

(declare-fun b_next!25539 () Bool)

(assert (=> start!99996 (= b_free!25539 (not b_next!25539))))

(declare-fun tp!89331 () Bool)

(declare-fun b_and!41959 () Bool)

(assert (=> start!99996 (= tp!89331 b_and!41959)))

(declare-fun mapIsEmpty!46931 () Bool)

(declare-fun mapRes!46931 () Bool)

(assert (=> mapIsEmpty!46931 mapRes!46931))

(declare-fun b!1190276 () Bool)

(declare-fun res!791691 () Bool)

(declare-fun e!676711 () Bool)

(assert (=> b!1190276 (=> (not res!791691) (not e!676711))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76904 0))(
  ( (array!76905 (arr!37098 (Array (_ BitVec 32) (_ BitVec 64))) (size!37635 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76904)

(assert (=> b!1190276 (= res!791691 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37635 _keys!1208))))))

(declare-fun res!791686 () Bool)

(assert (=> start!99996 (=> (not res!791686) (not e!676711))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99996 (= res!791686 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37635 _keys!1208))))))

(assert (=> start!99996 e!676711))

(declare-fun tp_is_empty!30069 () Bool)

(assert (=> start!99996 tp_is_empty!30069))

(declare-fun array_inv!28188 (array!76904) Bool)

(assert (=> start!99996 (array_inv!28188 _keys!1208)))

(assert (=> start!99996 true))

(assert (=> start!99996 tp!89331))

(declare-datatypes ((V!45219 0))(
  ( (V!45220 (val!15091 Int)) )
))
(declare-datatypes ((ValueCell!14325 0))(
  ( (ValueCellFull!14325 (v!17730 V!45219)) (EmptyCell!14325) )
))
(declare-datatypes ((array!76906 0))(
  ( (array!76907 (arr!37099 (Array (_ BitVec 32) ValueCell!14325)) (size!37636 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76906)

(declare-fun e!676716 () Bool)

(declare-fun array_inv!28189 (array!76906) Bool)

(assert (=> start!99996 (and (array_inv!28189 _values!996) e!676716)))

(declare-fun b!1190277 () Bool)

(declare-fun res!791692 () Bool)

(assert (=> b!1190277 (=> (not res!791692) (not e!676711))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1190277 (= res!791692 (= (select (arr!37098 _keys!1208) i!673) k0!934))))

(declare-fun b!1190278 () Bool)

(declare-fun e!676717 () Bool)

(assert (=> b!1190278 (= e!676711 e!676717)))

(declare-fun res!791685 () Bool)

(assert (=> b!1190278 (=> (not res!791685) (not e!676717))))

(declare-fun lt!541358 () array!76904)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76904 (_ BitVec 32)) Bool)

(assert (=> b!1190278 (= res!791685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541358 mask!1564))))

(assert (=> b!1190278 (= lt!541358 (array!76905 (store (arr!37098 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37635 _keys!1208)))))

(declare-fun b!1190279 () Bool)

(declare-fun e!676714 () Bool)

(assert (=> b!1190279 (= e!676714 tp_is_empty!30069)))

(declare-fun b!1190280 () Bool)

(declare-fun res!791682 () Bool)

(assert (=> b!1190280 (=> (not res!791682) (not e!676711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190280 (= res!791682 (validKeyInArray!0 k0!934))))

(declare-fun b!1190281 () Bool)

(declare-fun e!676710 () Bool)

(assert (=> b!1190281 (= e!676710 true)))

(declare-fun zeroValue!944 () V!45219)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!541359 () array!76906)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45219)

(declare-datatypes ((tuple2!19524 0))(
  ( (tuple2!19525 (_1!9772 (_ BitVec 64)) (_2!9772 V!45219)) )
))
(declare-datatypes ((List!26284 0))(
  ( (Nil!26281) (Cons!26280 (h!27489 tuple2!19524) (t!38822 List!26284)) )
))
(declare-datatypes ((ListLongMap!17505 0))(
  ( (ListLongMap!17506 (toList!8768 List!26284)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5182 (array!76904 array!76906 (_ BitVec 32) (_ BitVec 32) V!45219 V!45219 (_ BitVec 32) Int) ListLongMap!17505)

(declare-fun -!1750 (ListLongMap!17505 (_ BitVec 64)) ListLongMap!17505)

(assert (=> b!1190281 (= (getCurrentListMapNoExtraKeys!5182 lt!541358 lt!541359 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1750 (getCurrentListMapNoExtraKeys!5182 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39428 0))(
  ( (Unit!39429) )
))
(declare-fun lt!541362 () Unit!39428)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!956 (array!76904 array!76906 (_ BitVec 32) (_ BitVec 32) V!45219 V!45219 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39428)

(assert (=> b!1190281 (= lt!541362 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!956 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!46931 () Bool)

(declare-fun tp!89332 () Bool)

(assert (=> mapNonEmpty!46931 (= mapRes!46931 (and tp!89332 e!676714))))

(declare-fun mapRest!46931 () (Array (_ BitVec 32) ValueCell!14325))

(declare-fun mapKey!46931 () (_ BitVec 32))

(declare-fun mapValue!46931 () ValueCell!14325)

(assert (=> mapNonEmpty!46931 (= (arr!37099 _values!996) (store mapRest!46931 mapKey!46931 mapValue!46931))))

(declare-fun b!1190282 () Bool)

(declare-fun res!791688 () Bool)

(assert (=> b!1190282 (=> (not res!791688) (not e!676711))))

(assert (=> b!1190282 (= res!791688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190283 () Bool)

(declare-fun e!676715 () Bool)

(assert (=> b!1190283 (= e!676715 e!676710)))

(declare-fun res!791690 () Bool)

(assert (=> b!1190283 (=> res!791690 e!676710)))

(assert (=> b!1190283 (= res!791690 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541360 () ListLongMap!17505)

(assert (=> b!1190283 (= lt!541360 (getCurrentListMapNoExtraKeys!5182 lt!541358 lt!541359 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3130 (Int (_ BitVec 64)) V!45219)

(assert (=> b!1190283 (= lt!541359 (array!76907 (store (arr!37099 _values!996) i!673 (ValueCellFull!14325 (dynLambda!3130 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37636 _values!996)))))

(declare-fun lt!541361 () ListLongMap!17505)

(assert (=> b!1190283 (= lt!541361 (getCurrentListMapNoExtraKeys!5182 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190284 () Bool)

(declare-fun res!791681 () Bool)

(assert (=> b!1190284 (=> (not res!791681) (not e!676711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190284 (= res!791681 (validMask!0 mask!1564))))

(declare-fun b!1190285 () Bool)

(declare-fun res!791684 () Bool)

(assert (=> b!1190285 (=> (not res!791684) (not e!676711))))

(declare-datatypes ((List!26285 0))(
  ( (Nil!26282) (Cons!26281 (h!27490 (_ BitVec 64)) (t!38823 List!26285)) )
))
(declare-fun arrayNoDuplicates!0 (array!76904 (_ BitVec 32) List!26285) Bool)

(assert (=> b!1190285 (= res!791684 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26282))))

(declare-fun b!1190286 () Bool)

(declare-fun e!676712 () Bool)

(assert (=> b!1190286 (= e!676716 (and e!676712 mapRes!46931))))

(declare-fun condMapEmpty!46931 () Bool)

(declare-fun mapDefault!46931 () ValueCell!14325)

(assert (=> b!1190286 (= condMapEmpty!46931 (= (arr!37099 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14325)) mapDefault!46931)))))

(declare-fun b!1190287 () Bool)

(declare-fun res!791689 () Bool)

(assert (=> b!1190287 (=> (not res!791689) (not e!676717))))

(assert (=> b!1190287 (= res!791689 (arrayNoDuplicates!0 lt!541358 #b00000000000000000000000000000000 Nil!26282))))

(declare-fun b!1190288 () Bool)

(assert (=> b!1190288 (= e!676717 (not e!676715))))

(declare-fun res!791683 () Bool)

(assert (=> b!1190288 (=> res!791683 e!676715)))

(assert (=> b!1190288 (= res!791683 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190288 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541357 () Unit!39428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76904 (_ BitVec 64) (_ BitVec 32)) Unit!39428)

(assert (=> b!1190288 (= lt!541357 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1190289 () Bool)

(declare-fun res!791687 () Bool)

(assert (=> b!1190289 (=> (not res!791687) (not e!676711))))

(assert (=> b!1190289 (= res!791687 (and (= (size!37636 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37635 _keys!1208) (size!37636 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190290 () Bool)

(assert (=> b!1190290 (= e!676712 tp_is_empty!30069)))

(assert (= (and start!99996 res!791686) b!1190284))

(assert (= (and b!1190284 res!791681) b!1190289))

(assert (= (and b!1190289 res!791687) b!1190282))

(assert (= (and b!1190282 res!791688) b!1190285))

(assert (= (and b!1190285 res!791684) b!1190276))

(assert (= (and b!1190276 res!791691) b!1190280))

(assert (= (and b!1190280 res!791682) b!1190277))

(assert (= (and b!1190277 res!791692) b!1190278))

(assert (= (and b!1190278 res!791685) b!1190287))

(assert (= (and b!1190287 res!791689) b!1190288))

(assert (= (and b!1190288 (not res!791683)) b!1190283))

(assert (= (and b!1190283 (not res!791690)) b!1190281))

(assert (= (and b!1190286 condMapEmpty!46931) mapIsEmpty!46931))

(assert (= (and b!1190286 (not condMapEmpty!46931)) mapNonEmpty!46931))

(get-info :version)

(assert (= (and mapNonEmpty!46931 ((_ is ValueCellFull!14325) mapValue!46931)) b!1190279))

(assert (= (and b!1190286 ((_ is ValueCellFull!14325) mapDefault!46931)) b!1190290))

(assert (= start!99996 b!1190286))

(declare-fun b_lambda!20701 () Bool)

(assert (=> (not b_lambda!20701) (not b!1190283)))

(declare-fun t!38821 () Bool)

(declare-fun tb!10359 () Bool)

(assert (=> (and start!99996 (= defaultEntry!1004 defaultEntry!1004) t!38821) tb!10359))

(declare-fun result!21277 () Bool)

(assert (=> tb!10359 (= result!21277 tp_is_empty!30069)))

(assert (=> b!1190283 t!38821))

(declare-fun b_and!41961 () Bool)

(assert (= b_and!41959 (and (=> t!38821 result!21277) b_and!41961)))

(declare-fun m!1098911 () Bool)

(assert (=> b!1190282 m!1098911))

(declare-fun m!1098913 () Bool)

(assert (=> b!1190284 m!1098913))

(declare-fun m!1098915 () Bool)

(assert (=> b!1190288 m!1098915))

(declare-fun m!1098917 () Bool)

(assert (=> b!1190288 m!1098917))

(declare-fun m!1098919 () Bool)

(assert (=> b!1190287 m!1098919))

(declare-fun m!1098921 () Bool)

(assert (=> b!1190278 m!1098921))

(declare-fun m!1098923 () Bool)

(assert (=> b!1190278 m!1098923))

(declare-fun m!1098925 () Bool)

(assert (=> b!1190285 m!1098925))

(declare-fun m!1098927 () Bool)

(assert (=> b!1190280 m!1098927))

(declare-fun m!1098929 () Bool)

(assert (=> b!1190281 m!1098929))

(declare-fun m!1098931 () Bool)

(assert (=> b!1190281 m!1098931))

(assert (=> b!1190281 m!1098931))

(declare-fun m!1098933 () Bool)

(assert (=> b!1190281 m!1098933))

(declare-fun m!1098935 () Bool)

(assert (=> b!1190281 m!1098935))

(declare-fun m!1098937 () Bool)

(assert (=> start!99996 m!1098937))

(declare-fun m!1098939 () Bool)

(assert (=> start!99996 m!1098939))

(declare-fun m!1098941 () Bool)

(assert (=> b!1190283 m!1098941))

(declare-fun m!1098943 () Bool)

(assert (=> b!1190283 m!1098943))

(declare-fun m!1098945 () Bool)

(assert (=> b!1190283 m!1098945))

(declare-fun m!1098947 () Bool)

(assert (=> b!1190283 m!1098947))

(declare-fun m!1098949 () Bool)

(assert (=> mapNonEmpty!46931 m!1098949))

(declare-fun m!1098951 () Bool)

(assert (=> b!1190277 m!1098951))

(check-sat (not b!1190283) (not b_lambda!20701) (not b!1190285) b_and!41961 (not start!99996) (not b!1190287) (not mapNonEmpty!46931) (not b!1190284) (not b!1190282) (not b!1190278) tp_is_empty!30069 (not b!1190280) (not b_next!25539) (not b!1190281) (not b!1190288))
(check-sat b_and!41961 (not b_next!25539))
